uint64_t sub_21C80B7A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v34 = a2;
  v37 = a3;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB1E8, &qword_21CBA13A0);
  v4 = *(*(v35 - 8) + 64);
  MEMORY[0x28223BE20](v35);
  v6 = &v34 - v5;
  v7 = type metadata accessor for PMAccount(0);
  v8 = v7 - 8;
  v9 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v34 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB790, &qword_21CBA2528);
  v36 = *(v14 - 8);
  v15 = *(v36 + 64);
  MEMORY[0x28223BE20](v14);
  v17 = &v34 - v16;
  v18 = type metadata accessor for PMAccount.Storage(0);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18);
  v21 = (&v34 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_21C80CB60(a1 + *(v8 + 32), v21, type metadata accessor for PMAccount.Storage);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_21C80CD5C(v21, type metadata accessor for PMAccount.Storage);
  }

  else
  {
    v22 = *v21;
    v23 = [v22 credentialTypes];

    if (v23 > 3)
    {
      v32 = 1;
      v31 = v37;
      return (*(v36 + 56))(v31, v32, 1, v14);
    }
  }

  sub_21C80CB60(a1, v13, type metadata accessor for PMAccount);
  v24 = *(v34 + 36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC7B0, &unk_21CBC1F80);
  sub_21CB84D74();
  v25 = sub_21C80CB60(a1, v10, type metadata accessor for PMAccount);
  MEMORY[0x28223BE20](v25);
  sub_21C80CDBC(v10, &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PMAccount);
  swift_getKeyPath();
  sub_21CB84F44();

  sub_21C6EA794(v6, &qword_27CDEB1E8, &qword_21CBA13A0);
  v26 = v38;
  v27 = v39;
  v28 = v40;
  sub_21C80CB60(v13, v17, type metadata accessor for PMAccount);
  v29 = &v17[*(v14 + 36)];
  *v29 = v26;
  *(v29 + 1) = v27;
  v29[16] = v28;
  v30 = &v17[*(v14 + 40)];
  sub_21CB84C84();
  sub_21C80CD5C(v13, type metadata accessor for PMAccount);
  v31 = v37;
  sub_21C716934(v17, v37, &qword_27CDEB790, &qword_21CBA2528);
  v32 = 0;
  return (*(v36 + 56))(v31, v32, 1, v14);
}

uint64_t sub_21C80BBE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v22[1] = a5;
  v9 = type metadata accessor for PMAccountsContextMenu();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v22 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBE38, &unk_21CBA3770);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = v22 - v16;
  sub_21CB81ED4();
  v18 = sub_21CB81F14();
  (*(*(v18 - 8) + 56))(v17, 0, 1, v18);
  (*(v10 + 16))(v13, a1, v9);
  v19 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = a3;
  *(v20 + 24) = a4;
  (*(v10 + 32))(v20 + v19, v13, v9);
  *(v20 + ((v11 + v19 + 7) & 0xFFFFFFFFFFFFFFF8)) = a2;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEA4E8, &unk_21CBA28F0);
  sub_21C6EADEC(&qword_27CDEC0A0, &qword_27CDEA4E8, &unk_21CBA28F0);
  return sub_21CB84D94();
}

uint64_t sub_21C80BE54(uint64_t *a1, uint64_t a2)
{

  sub_21C87E898(a2);
  v5 = *a1;
  v6 = a1[1];
  v7 = *(a1 + 1);
  v8 = a1[4];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC918, &unk_21CBA4BF0);
  return sub_21CB84F34();
}

uint64_t sub_21C80BEF8()
{
  v0 = sub_21CB81024();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21CB81014();
  v5 = sub_21CB81004();
  v7 = v6;
  (*(v1 + 8))(v4, v0);
  v9[0] = v5;
  v9[1] = v7;
  sub_21C71F3FC();
  return sub_21CB84CB4();
}

BOOL sub_21C80C028(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for PMAccount(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v26 = (&v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAC50, &unk_21CBA00A0);
  v9 = v8 - 8;
  v10 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v25 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDEBE60, &unk_21CB9FF40);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v17 = (&v25 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v15);
  v19 = &v25 - v18;
  sub_21C80CB60(a1, &v25 - v18, type metadata accessor for PMAccount);
  (*(v5 + 56))(v19, 0, 1, v4);
  v20 = *(v9 + 56);
  sub_21C6EDBAC(v2, v12, &unk_27CDEBE60, &unk_21CB9FF40);
  sub_21C6EDBAC(v19, &v12[v20], &unk_27CDEBE60, &unk_21CB9FF40);
  v21 = *(v5 + 48);
  if (v21(v12, 1, v4) != 1)
  {
    sub_21C6EDBAC(v12, v17, &unk_27CDEBE60, &unk_21CB9FF40);
    if (v21(&v12[v20], 1, v4) != 1)
    {
      v23 = v26;
      sub_21C80CDBC(&v12[v20], v26, type metadata accessor for PMAccount);
      v22 = _s17PasswordManagerUI9PMAccountV2eeoiySbAC_ACtFZ_0(v17, v23);
      sub_21C80CD5C(v23, type metadata accessor for PMAccount);
      sub_21C6EA794(v19, &unk_27CDEBE60, &unk_21CB9FF40);
      sub_21C80CD5C(v17, type metadata accessor for PMAccount);
      sub_21C6EA794(v12, &unk_27CDEBE60, &unk_21CB9FF40);
      return v22;
    }

    sub_21C6EA794(v19, &unk_27CDEBE60, &unk_21CB9FF40);
    sub_21C80CD5C(v17, type metadata accessor for PMAccount);
    goto LABEL_6;
  }

  sub_21C6EA794(v19, &unk_27CDEBE60, &unk_21CB9FF40);
  if (v21(&v12[v20], 1, v4) != 1)
  {
LABEL_6:
    sub_21C6EA794(v12, &qword_27CDEAC50, &unk_21CBA00A0);
    return 0;
  }

  sub_21C6EA794(v12, &unk_27CDEBE60, &unk_21CB9FF40);
  return 1;
}

uint64_t sub_21C80C3C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v34[1] = a3;
  v7 = *(a2 + 16);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](a1);
  v34[0] = v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v35 = *(TupleTypeMetadata2 - 8);
  v12 = *(v35 + 64);
  MEMORY[0x28223BE20](TupleTypeMetadata2);
  v14 = v34 - v13;
  v15 = *(a2 - 8);
  v16 = v15[8];
  MEMORY[0x28223BE20](v17);
  v38 = v34 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v19);
  v22 = v34 - v21;
  (*(v8 + 16))(v34 - v21, a1, v7, v20);
  (*(v8 + 56))(v22, 0, 1, v7);
  v36 = TupleTypeMetadata2;
  v23 = *(TupleTypeMetadata2 + 48);
  v24 = v15[2];
  v24(v14, v4, a2);
  v24(&v14[v23], v22, a2);
  v37 = v8;
  v25 = *(v8 + 48);
  if (v25(v14, 1, v7) != 1)
  {
    v24(v38, v14, a2);
    if (v25(&v14[v23], 1, v7) != 1)
    {
      v28 = v37;
      v29 = v34[0];
      (*(v37 + 32))(v34[0], &v14[v23], v7);
      v30 = v38;
      v27 = sub_21CB85574();
      v31 = *(v28 + 8);
      v31(v29, v7);
      v32 = v15[1];
      v32(v22, a2);
      v31(v30, v7);
      v32(v14, a2);
      return v27 & 1;
    }

    (v15[1])(v22, a2);
    (*(v37 + 8))(v38, v7);
    goto LABEL_6;
  }

  v26 = v15[1];
  v26(v22, a2);
  if (v25(&v14[v23], 1, v7) != 1)
  {
LABEL_6:
    (*(v35 + 8))(v14, v36);
    v27 = 0;
    return v27 & 1;
  }

  v26(v14, a2);
  v27 = 1;
  return v27 & 1;
}

uint64_t sub_21C80C7CC(_BYTE *a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for PMAccount(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21C6EA794(a2, &unk_27CDEBE60, &unk_21CB9FF40);
  sub_21C80CB60(a3, v10, type metadata accessor for PMAccount);
  if (*a1 == 1)
  {
    sub_21C80CDBC(v10, a2, type metadata accessor for PMAccount);
    v11 = 0;
  }

  else
  {
    sub_21C80CD5C(v10, type metadata accessor for PMAccount);
    v11 = 1;
  }

  return (*(v7 + 56))(a2, v11, 1, v6);
}

uint64_t sub_21C80C928@<X0>(uint64_t a1@<X8>)
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

uint64_t sub_21C80CAC4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  v7 = *(type metadata accessor for PMAccountsContextMenu() - 8);
  v8 = v2 + ((*(v7 + 80) + 32) & ~*(v7 + 80));

  return sub_21C808ACC(a1, v8, a2);
}

uint64_t sub_21C80CB60(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_21C80CBC8()
{
  result = qword_27CDEC8C0;
  if (!qword_27CDEC8C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEC8A8, &unk_21CBACF50);
    sub_21C80CC4C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEC8C0);
  }

  return result;
}

unint64_t sub_21C80CC4C()
{
  result = qword_27CDEC8C8;
  if (!qword_27CDEC8C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEC8D0, &unk_21CBA4AF0);
    sub_21C6EADEC(&unk_27CDEC1A0, &qword_27CDEB8D0, &unk_21CBA3D40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEC8C8);
  }

  return result;
}

uint64_t sub_21C80CD14(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_21C80CD5C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_21C80CDBC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_21C80CE30()
{
  v1 = *(type metadata accessor for PMAccount(0) - 8);
  v2 = *(v0 + 24);
  v3 = (v0 + ((*(v1 + 80) + 32) & ~*(v1 + 80)));
  return (*(v0 + 16))(*v3, v3[1]);
}

uint64_t sub_21C80CEA8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(type metadata accessor for PMAccountsContextMenu() - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = *(v0 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_21C80BE54((v0 + v4), v5);
}

void sub_21C80CF64()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = *(type metadata accessor for PMAccountsContextMenu() - 8);
  v4 = v0[4];
  v5 = v0 + ((*(v3 + 80) + 40) & ~*(v3 + 80));

  sub_21C80A050(v4, v5);
}

uint64_t sub_21C80CFF4(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_21C80D03C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_21C80D080()
{
  result = qword_27CDEC920;
  if (!qword_27CDEC920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEC920);
  }

  return result;
}

uint64_t sub_21C80D0D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *(a1 + 8);
  v6 = *(a1 + 32);
  v8[0] = *a1;
  v8[1] = v5;
  v9 = *(a1 + 16);
  v10 = v6;
  v11 = a2;
  v12 = a3;
  return MEMORY[0x21CF14400](v8, a4, &type metadata for PMAccountsDeleteConfirmationDialog, a5);
}

uint64_t sub_21C80D124(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = a2[1];
  v5 = a2[2];
  if ((sub_21C714F88(*a1, *a2) & 1) == 0 || (sub_21C967788(v2, v4) & 1) == 0)
  {
    return 0;
  }

  sub_21C7EBFE0();
  return sub_21CB85DD4() & 1;
}

uint64_t sub_21C80D1A0()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  sub_21CB86484();
  sub_21C80E7B4(v5, v1);
  sub_21C80E6C4(v5, v2);
  sub_21CB85DE4();
  return sub_21CB864D4();
}

uint64_t sub_21C80D208(uint64_t a1)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  sub_21C80E7B4(a1, v3);
  sub_21C80E6C4(a1, v4);
  return sub_21CB85DE4();
}

uint64_t sub_21C80D250()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  sub_21CB86484();
  sub_21C80E7B4(v5, v1);
  sub_21C80E6C4(v5, v2);
  sub_21CB85DE4();
  return sub_21CB864D4();
}

uint64_t sub_21C80D2B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v47 = a1;
  v48 = a2;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC928, &qword_21CBA4DA8);
  v4 = *(*(v45 - 8) + 64);
  MEMORY[0x28223BE20](v45);
  v46 = &v39 - v5;
  v6 = *v2;
  v7 = v2[1];
  v57 = *v2;
  v58 = v7;
  v59 = *(v2 + 1);
  v60 = v2[4];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC918, &unk_21CBA4BF0);
  MEMORY[0x21CF14A20](&v54);
  if (!v54)
  {
    goto LABEL_5;
  }

  v9 = v55;
  v10 = [v55 title];
  if (!v10)
  {

LABEL_5:
    v44 = 0xE100000000000000;
    v43 = 63;
    goto LABEL_6;
  }

  v11 = v10;
  v43 = sub_21CB855C4();
  v44 = v12;

LABEL_6:
  v57 = v6;
  v58 = v7;
  v59 = *(v2 + 1);
  v60 = v2[4];
  sub_21CB84F54();
  *&v39 = *(&v54 + 1);
  v13 = v54;
  v14 = v55;
  v40 = v6;
  v15 = v56;
  v57 = v6;
  v58 = v7;
  v59 = *(v2 + 1);
  v60 = v2[4];
  v16 = MEMORY[0x21CF14A20](&v54, v8);
  *(&v39 - 2) = MEMORY[0x28223BE20](v16);
  *(&v39 - 2) = v17;
  swift_getKeyPath();
  v18 = v8;
  v19 = v7;
  v57 = v13;
  v58 = v39;
  v59 = v14;
  v60 = v15;
  sub_21CB84F44();

  v20 = v51;
  v42 = v52;
  v41 = v53;

  sub_21C713140(v14, *(&v14 + 1), v15);
  v21 = v40;
  *&v54 = v40;
  *(&v54 + 1) = v19;
  v55 = *(v2 + 1);
  v56 = v2[4];
  MEMORY[0x21CF14A20](&v49, v18);
  v39 = v49;
  v22 = v50;
  *&v49 = v21;
  v54 = *(v2 + 1);
  *&v55 = v2[4];
  v23 = v2[6];
  v24 = swift_allocObject();
  v25 = *(v3 + 1);
  *(v24 + 16) = *v3;
  *(v24 + 32) = v25;
  *(v24 + 48) = *(v3 + 2);
  *(v24 + 64) = v3[6];
  KeyPath = swift_getKeyPath();
  v27 = v46;
  v28 = &v46[*(v45 + 36)];
  *v28 = KeyPath;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC000, &qword_21CBA27F0);
  swift_storeEnumTagMultiPayload();
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC930, &qword_21CBA4E18);
  v30 = v28 + v29[18];
  *v30 = v39;
  *(v30 + 2) = v22;
  v31 = (v28 + v29[15]);
  v32 = v44;
  *v31 = v43;
  v31[1] = v32;
  v33 = v28 + v29[16];
  v34 = v42;
  *v33 = v20;
  *(v33 + 1) = v34;
  v33[16] = v41;
  *(v28 + v29[17]) = 0;
  *(v28 + v29[19]) = 2;
  v35 = (v28 + v29[20]);
  *v35 = sub_21C80ECCC;
  v35[1] = v24;
  v36 = (v28 + v29[21]);
  *v36 = sub_21C80E354;
  v36[1] = 0;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC938, &qword_21CBA4E20);
  (*(*(v37 - 8) + 16))(v27, v47, v37);
  sub_21C80ECFC(v27, v48);
  sub_21C74C770(&v49, &v57);

  sub_21C6EDBAC(&v54, &v57, &qword_27CDEAEF8, &unk_21CBA0740);
}

uint64_t sub_21C80D738(uint64_t *a1, uint64_t *a2)
{
  v4 = *a2;
  v5 = *a1;
  if (v4)
  {
    if (v5)
    {
      v7 = a2[1];
      v6 = a2[2];
      v9 = a1[1];
      v8 = a1[2];
      if (sub_21C714F88(v4, v5) & 1) != 0 && (sub_21C967788(v7, v9))
      {
        sub_21C7EBFE0();
        if (sub_21CB85DD4())
        {
          return 1;
        }
      }
    }
  }

  else if (!v5)
  {
    return 1;
  }

  return 0;
}

uint64_t sub_21C80D7C4(__int128 *a1)
{
  v2 = *a1;
  v3 = *(a1 + 2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAEF8, &unk_21CBA0740);
  sub_21C80EF08();
  return sub_21CB85E64();
}

uint64_t sub_21C80D824@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, _BYTE *a3@<X8>)
{
  v5 = *a2;
  if (v5)
  {
    v6 = *a1 == 0;
  }

  else
  {
    v6 = 1;
  }

  if (!v6 && (v8 = a2[1], v7 = a2[2], v10 = a1[1], v9 = a1[2], (sub_21C714F88(*a1, v5) & 1) != 0) && (sub_21C967788(v10, v8) & 1) != 0)
  {
    sub_21C7EBFE0();
    result = sub_21CB85DD4();
  }

  else
  {
    result = 0;
  }

  *a3 = result & 1;
  return result;
}

void sub_21C80D8BC(char *a1, uint64_t *a2, uint64_t a3)
{
  v4 = *a3;
  v5 = *(a3 + 8);
  v6 = *(a3 + 16);
  v7 = *a1;
  v8 = *a2;
  v9 = a2[1];
  v10 = a2[2];
  sub_21C7FB8AC(*a3, v5, v6);
  sub_21C713140(v8, v9, v10);
  if ((v7 & 1) == 0)
  {
    sub_21C713140(v4, v5, v6);
    v4 = 0;
    v5 = 0;
    v6 = 0;
  }

  *a2 = v4;
  a2[1] = v5;
  a2[2] = v6;
}

uint64_t sub_21C80D950@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v92 = a3;
  v76 = a2;
  v79 = a1;
  v90 = a4;
  v75 = sub_21CB81024();
  v74 = *(v75 - 8);
  v6 = *(v74 + 64);
  MEMORY[0x28223BE20](v75);
  v73 = &v71 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC940, &qword_21CBA4E28);
  v8 = *(*(v85 - 8) + 64);
  MEMORY[0x28223BE20](v85);
  v87 = &v71 - v9;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC948, &qword_21CBA4E30);
  v10 = *(*(v86 - 8) + 64);
  MEMORY[0x28223BE20](v86);
  v80 = &v71 - v11;
  v12 = sub_21CB81F14();
  v13 = *(v12 - 8);
  v14 = v13[8];
  MEMORY[0x28223BE20](v12);
  v91 = &v71 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC950, &qword_21CBA4E38);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v89 = &v71 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v88 = &v71 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBE38, &unk_21CBA3770);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21 - 8);
  v81 = &v71 - v23;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBE40, &unk_21CBA8200);
  v83 = *(v84 - 8);
  v24 = v83[8];
  MEMORY[0x28223BE20](v84);
  v82 = &v71 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v93 = &v71 - v27;
  v29 = *v4;
  v28 = v4[1];
  v101 = *(v4 + 1);
  v102 = v4[4];
  v77 = v29;
  *&v98 = v29;
  *(&v98 + 1) = v28;
  v78 = v28;
  v99 = *(v4 + 1);
  v100 = v4[4];
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC918, &unk_21CBA4BF0);
  MEMORY[0x21CF14A20](&v96, v30);
  if (v96)
  {
    v31 = v97;
    v32 = [v97 cancelButtonTitle];
    v33 = sub_21CB855C4();
    v35 = v34;
  }

  else
  {
    v35 = 0xE600000000000000;
    v33 = 0x6C65636E6143;
  }

  *&v98 = v33;
  *(&v98 + 1) = v35;
  v36 = v81;
  sub_21CB81EF4();
  v37 = v13[7];
  v37(v36, 0, 1, v12);
  sub_21C71F3FC();
  sub_21CB84DC4();
  v38 = [v92 buttonTitle];
  if (v38)
  {
    v72 = v13;
    v39 = v38;
    v40 = sub_21CB855C4();
    v42 = v41;

    v43 = v91;
    sub_21CB81ED4();
    v94 = v40;
    v95 = v42;
    v44 = v13[2];
    v71 = v12;
    v44(v36, v43, v12);
    v37(v36, 0, 1, v12);
    v103 = v77;
    v98 = v101;
    *&v99 = v102;
    v45 = v5[6];
    v46 = swift_allocObject();
    v47 = *(v5 + 1);
    *(v46 + 16) = *v5;
    *(v46 + 32) = v47;
    *(v46 + 48) = *(v5 + 2);
    v48 = v5[6];
    v49 = v79;
    *(v46 + 64) = v48;
    *(v46 + 72) = v49;
    v50 = v92;
    *(v46 + 80) = v76;
    *(v46 + 88) = v50;
    sub_21C74C770(&v103, &v96);

    sub_21C6EDBAC(&v98, &v96, &qword_27CDEAEF8, &unk_21CBA0740);

    v51 = v50;
    v52 = v82;
    sub_21CB84DC4();
    sub_21C6EADEC(&qword_27CDEBE50, &qword_27CDEBE40, &unk_21CBA8200);
    v53 = v80;
    v54 = v84;
    sub_21CB845C4();
    v55 = v83;
    v56 = v83[1];
    v81 = ((v83 + 1) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000);
    v92 = v56;
    (v56)(v52, v54);
    sub_21C6EDBAC(v53, v87, &qword_27CDEC948, &qword_21CBA4E30);
    swift_storeEnumTagMultiPayload();
    sub_21C80ED6C();
    v57 = v88;
    sub_21CB83494();
    sub_21C6EA794(v53, &qword_27CDEC948, &qword_21CBA4E30);
    (v72[1])(v91, v71);
    v58 = v55[2];
  }

  else
  {
    v59 = v73;
    sub_21CB81014();
    v60 = sub_21CB81004();
    v62 = v61;
    (*(v74 + 8))(v59, v75);
    *&v98 = v60;
    *(&v98 + 1) = v62;
    sub_21CB81EF4();
    v37(v36, 0, 1, v12);
    v52 = v82;
    sub_21CB84DC4();
    v63 = v83;
    v58 = v83[2];
    v54 = v84;
    v58(v87, v52, v84);
    swift_storeEnumTagMultiPayload();
    sub_21C80ED6C();
    sub_21C6EADEC(&qword_27CDEBE50, &qword_27CDEBE40, &unk_21CBA8200);
    v57 = v88;
    sub_21CB83494();
    v64 = v63[1];
    v81 = ((v63 + 1) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000);
    v92 = v64;
    (v64)(v52, v54);
  }

  v65 = v93;
  v58(v52, v93, v54);
  v66 = v89;
  sub_21C6EDBAC(v57, v89, &qword_27CDEC950, &qword_21CBA4E38);
  v67 = v90;
  v58(v90, v52, v54);
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC960, &unk_21CBA4E40);
  sub_21C6EDBAC(v66, v67 + *(v68 + 48), &qword_27CDEC950, &qword_21CBA4E38);
  sub_21C6EA794(v57, &qword_27CDEC950, &qword_21CBA4E38);
  v69 = v92;
  (v92)(v65, v54);
  sub_21C6EA794(v66, &qword_27CDEC950, &qword_21CBA4E38);
  return v69(v52, v54);
}

id sub_21C80E354@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = [*(a1 + 16) subtitle];
  if (result)
  {
    v4 = result;
    sub_21CB855C4();

    sub_21C71F3FC();
    result = sub_21CB84054();
    v8 = v7 & 1;
  }

  else
  {
    v5 = 0;
    v8 = 0;
    v6 = 0;
  }

  *a2 = result;
  a2[1] = v5;
  a2[2] = v8;
  a2[3] = v6;
  return result;
}

uint64_t sub_21C80E3EC(uint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1D50, &qword_21CBA0C00);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v23[-v10 - 8];
  v12 = sub_21CB858E4();
  (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
  v13 = *a1;
  v14 = a1[1];
  v24 = *(a1 + 1);
  v25 = a1[4];
  v26 = v13;
  v15 = a1[6];
  sub_21CB858B4();
  sub_21C74C770(&v26, v23);

  sub_21C6EDBAC(&v24, v23, &qword_27CDEAEF8, &unk_21CBA0740);

  v16 = a4;
  v17 = sub_21CB858A4();
  v18 = swift_allocObject();
  v19 = MEMORY[0x277D85700];
  *(v18 + 16) = v17;
  *(v18 + 24) = v19;
  v20 = *(a1 + 1);
  *(v18 + 32) = *a1;
  *(v18 + 48) = v20;
  *(v18 + 64) = *(a1 + 2);
  *(v18 + 80) = a1[6];
  *(v18 + 88) = a2;
  *(v18 + 96) = a3;
  *(v18 + 104) = v16;
  sub_21C98B308(0, 0, v11, &unk_21CBA4E58, v18);
}

uint64_t sub_21C80E5AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = sub_21CB858B4();
  v5[3] = sub_21CB858A4();
  v8 = *(a4 + 48);
  v12 = (*(a4 + 40) + **(a4 + 40));
  v9 = *(*(a4 + 40) + 4);
  v10 = swift_task_alloc();
  v5[4] = v10;
  *v10 = v5;
  v10[1] = sub_21C74FDC4;

  return v12(a5);
}

void sub_21C80E6C4(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62)
  {
    v8 = sub_21CB85FA4();
    MEMORY[0x21CF15F90](v8);
    v3 = sub_21CB85FA4();
    if (!v3)
    {
      return;
    }
  }

  else
  {
    MEMORY[0x21CF15F90](*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10));
    v3 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v3)
    {
      return;
    }
  }

  if (v3 < 1)
  {
    __break(1u);
  }

  else if ((a2 & 0xC000000000000001) != 0)
  {
    for (i = 0; i != v3; ++i)
    {
      MEMORY[0x21CF15BD0](i, a2);
      sub_21CB85DE4();
      swift_unknownObjectRelease();
    }
  }

  else
  {
    v5 = (a2 + 32);
    do
    {
      v6 = *v5++;
      v7 = v6;
      sub_21CB85DE4();

      --v3;
    }

    while (v3);
  }
}

uint64_t sub_21C80E7B4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PMAccount.MockData(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v31 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = type metadata accessor for PMAccount.Storage(0);
  v7 = *(*(v35 - 8) + 64);
  MEMORY[0x28223BE20](v35);
  v9 = (&v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = type metadata accessor for PMAccount(0);
  v11 = *(v10 - 1);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = (&v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = *(a2 + 16);
  result = MEMORY[0x21CF15F90](v16, v13);
  if (v16)
  {
    v18 = v10[5];
    v33 = v10[6];
    v34 = v18;
    v19 = v15 + v10[7];
    v20 = a2 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
    v32 = *(v11 + 72);
    do
    {
      sub_21C80EABC(v20, v15, type metadata accessor for PMAccount);
      v26 = *v15;
      v27 = v15[1];
      sub_21CB854C4();
      sub_21C7CECE4();
      sub_21C80EABC(v15 + v33, v9, type metadata accessor for PMAccount.Storage);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v28 = v31;
        sub_21C80EB24(v9, v31);
        MEMORY[0x21CF15F90](1);
        PMAccount.MockData.hash(into:)();
        sub_21C80EB88(v28, type metadata accessor for PMAccount.MockData);
        if (!*(v19 + 1))
        {
          goto LABEL_9;
        }
      }

      else
      {
        v29 = *v9;
        MEMORY[0x21CF15F90](0);
        sub_21CB85DE4();

        if (!*(v19 + 1))
        {
LABEL_9:
          sub_21CB864A4();
          goto LABEL_4;
        }
      }

      v21 = *(v19 + 3);
      v22 = a1;
      v23 = v9;
      v24 = v19[16];
      v25 = *v19;
      sub_21CB864A4();
      sub_21CB854C4();
      v9 = v23;
      a1 = v22;
      sub_21CB864A4();
      sub_21CB85DE4();
LABEL_4:
      result = sub_21C80EB88(v15, type metadata accessor for PMAccount);
      v20 += v32;
      --v16;
    }

    while (v16);
  }

  return result;
}

uint64_t sub_21C80EABC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21C80EB24(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PMAccount.MockData(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21C80EB88(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t get_enum_tag_for_layout_string_17PasswordManagerUI34PMDeleteAccountsAlertConfigurationVSg(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy56_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_21C80EC1C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_21C80EC64(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_21C80ECFC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC928, &qword_21CBA4DA8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_21C80ED6C()
{
  result = qword_27CDEC958;
  if (!qword_27CDEC958)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEC948, &qword_21CBA4E30);
    sub_21C6EADEC(&qword_27CDEBE50, &qword_27CDEBE40, &unk_21CBA8200);
    sub_21C735F84();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEC958);
  }

  return result;
}

uint64_t sub_21C80EE34(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[11];
  v7 = v1[12];
  v8 = v1[13];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_21C702EFC;

  return sub_21C80E5AC(a1, v4, v5, (v1 + 4), v6);
}

unint64_t sub_21C80EF08()
{
  result = qword_27CDEC968;
  if (!qword_27CDEC968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEC968);
  }

  return result;
}

unint64_t sub_21C80EF5C()
{
  result = qword_27CDEC970;
  if (!qword_27CDEC970)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEC928, &qword_21CBA4DA8);
    sub_21C6EADEC(&qword_27CDEC978, &qword_27CDEC938, &qword_21CBA4E20);
    sub_21C6EADEC(&qword_27CDEC980, &qword_27CDEC930, &qword_21CBA4E18);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEC970);
  }

  return result;
}

uint64_t sub_21C80F040(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_21C80F088(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_21C80F0F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  if (a1)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    swift_retain_n();
    sub_21CB81DB4();

    v8 = *(*&v14[0] + 16);

    if (v8)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      sub_21CB81DB4();

      v9 = *(*&v14[0] + 16);

      if (v9)
      {
        swift_getKeyPath();
        swift_getKeyPath();
        sub_21CB81DB4();

        v10 = swift_allocObject();
        v10[2] = a1;
        v10[3] = a2;
        v10[4] = a3;
        type metadata accessor for PMAccountsListModel(0);
        sub_21C713418(&qword_27CDEC988, type metadata accessor for PMAccountsListModel);

        sub_21CB82B84();
        type metadata accessor for PMAccountDetailsSheetController();
        sub_21C713418(qword_27CDEB428, type metadata accessor for PMAccountDetailsSheetController);
        sub_21CB82B84();
      }

      else
      {
      }
    }

    else
    {

      sub_21C80F670(a1, v14);
      sub_21CB84B34();
      swift_getKeyPath();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC990, &unk_21CBA4F40);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC998, &unk_21CBC1840);
    sub_21C80FA90();
    sub_21C80FB40();
    result = sub_21CB83494();
    v12 = v15[0];
    a4[2] = v14[2];
    a4[3] = v12;
    *(a4 + 57) = *(v15 + 9);
    v13 = v14[1];
    *a4 = v14[0];
    a4[1] = v13;
  }

  else
  {
    type metadata accessor for PMAccountsListModel(0);
    sub_21C713418(&qword_27CDEC988, type metadata accessor for PMAccountsListModel);
    result = sub_21CB82B64();
    __break(1u);
  }

  return result;
}

uint64_t sub_21C80F4B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = type metadata accessor for PMAccount(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21C7D4990(a1, v9);
  if (a2)
  {
    swift_getKeyPath();
    swift_getKeyPath();

    sub_21CB81DB4();

    v10 = v16[0];
    v11 = v16[1];
    type metadata accessor for PMAccountDetailsSheetController();
    sub_21C713418(qword_27CDEB428, type metadata accessor for PMAccountDetailsSheetController);
    *a3 = sub_21CB82B84();
    a3[1] = v12;
    v13 = type metadata accessor for PMAccountsViewAccountCell();
    result = sub_21C7D4AC0(v9, a3 + *(v13 + 20));
    v15 = (a3 + *(v13 + 24));
    *v15 = v10;
    v15[1] = v11;
  }

  else
  {
    type metadata accessor for PMAccountsListModel(0);
    sub_21C713418(&qword_27CDEC988, type metadata accessor for PMAccountsListModel);
    result = sub_21CB82B64();
    __break(1u);
  }

  return result;
}

uint64_t sub_21C80F670@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_21CB81024();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    swift_getKeyPath();
    swift_getKeyPath();

    sub_21CB81DB4();

    v9 = v33;

    v10 = HIBYTE(*(&v9 + 1)) & 0xFLL;
    if ((*(&v9 + 1) & 0x2000000000000000) == 0)
    {
      v10 = v9 & 0xFFFFFFFFFFFFLL;
    }

    v11 = (v5 + 8);
    if (v10)
    {
      sub_21CB81014();
      v12 = sub_21CB81004();
      v14 = v13;
      (*v11)(v8, v4);
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
      (*v11)(v8, v4);
      *&v33 = v18;
      *(&v33 + 1) = v20;
      sub_21C71F3FC();
      v28 = sub_21CB84054();
      v29 = v21;
      v30 = v22 & 1;
      v31 = v23;
      v32 = 0;
    }

    result = sub_21CB83494();
    v25 = v34;
    v26 = v35;
    *a2 = v33;
    *(a2 + 16) = v25;
    *(a2 + 32) = v26;
  }

  else
  {
    type metadata accessor for PMAccountsListModel(0);
    sub_21C713418(&qword_27CDEC988, type metadata accessor for PMAccountsListModel);
    result = sub_21CB82B64();
    __break(1u);
  }

  return result;
}

__n128 sub_21C80F938@<Q0>(uint64_t a1@<X8>)
{
  sub_21C80F0F4(*v1, v1[1], v1[2], v5);
  v3 = v6[0];
  *(a1 + 32) = v5[2];
  *(a1 + 48) = v3;
  *(a1 + 57) = *(v6 + 9);
  result = v5[1];
  *a1 = v5[0];
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_21C80F988@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21CB81DB4();

  *a2 = v5;
  return result;
}

uint64_t sub_21C80FA08(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_21CB81DC4();
}

uint64_t sub_21C80FA84@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = v2[3];
  v4 = v2[4];
  return sub_21C80F4B4(a1, v2[2], a2);
}

unint64_t sub_21C80FA90()
{
  result = qword_27CDEC9A0;
  if (!qword_27CDEC9A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEC990, &unk_21CBA4F40);
    sub_21C6EADEC(&qword_27CDEC9A8, &qword_27CDEC9B0, &qword_21CBA4F50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEC9A0);
  }

  return result;
}

unint64_t sub_21C80FB40()
{
  result = qword_27CDEC9B8;
  if (!qword_27CDEC9B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEC998, &unk_21CBC1840);
    sub_21C80FC24(&qword_27CDEC9C0, &qword_27CDEC9C8, &qword_21CBA4F58, sub_21C7FC578);
    sub_21C6EADEC(&unk_27CDEC1B0, &qword_27CDEB968, &qword_21CBA26F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEC9B8);
  }

  return result;
}

uint64_t sub_21C80FC24(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
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

uint64_t sub_21C80FCA0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_21CB82CA4();
  *a1 = result;
  return result;
}

uint64_t sub_21C80FCCC(uint64_t *a1)
{
  v1 = *a1;

  return sub_21CB82CB4();
}

unint64_t sub_21C80FCF8()
{
  result = qword_27CDEC9E0;
  if (!qword_27CDEC9E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27CDEC9E8, &unk_21CBA4FF0);
    sub_21C80FA90();
    sub_21C80FB40();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEC9E0);
  }

  return result;
}

uint64_t sub_21C80FDE0(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](a1);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v5 + 24);
  sub_21C72BE10(v1, v2, v8);
  sub_21C72BE10(v7, v2, v8);
  return (*(v3 + 8))(v7, v2);
}

uint64_t type metadata accessor for PMAccountRowLabelStyle()
{
  result = qword_27CDECA70;
  if (!qword_27CDECA70)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21C80FF40()
{
  sub_21C72C81C();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_21C80FFD0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v32 = a2;
  v3 = sub_21CB82834();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = v30 - v9;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDECA80, &qword_21CBA50E0);
  v11 = *(*(v31 - 8) + 64);
  MEMORY[0x28223BE20](v31);
  v13 = v30 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDECA88, &qword_21CBA50E8);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14);
  v17 = v30 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDECA90, &qword_21CBA50F0);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18);
  v21 = v30 - v20;
  if ([objc_opt_self() isPasswordsAppInstalled])
  {
    sub_21C8103C8(v21);
    v22 = &qword_27CDECA90;
    v23 = &qword_21CBA50F0;
    sub_21C6EDBAC(v21, v17, &qword_27CDECA90, &qword_21CBA50F0);
    swift_storeEnumTagMultiPayload();
    sub_21C810B14(&qword_27CDECAA8, &qword_27CDECA90, &qword_21CBA50F0);
    sub_21C810B14(&qword_27CDECAB0, &qword_27CDECA80, &qword_21CBA50E0);
    sub_21CB83494();
    v24 = v21;
  }

  else
  {
    v30[1] = v14;
    v30[2] = a1;
    sub_21C7448E0(v10);
    (*(v4 + 104))(v7, *MEMORY[0x277CDF998], v3);
    sub_21C810ABC();
    v25 = sub_21CB85514();
    v26 = *(v4 + 8);
    v26(v7, v3);
    v26(v10, v3);
    if (v25)
    {
      v27 = sub_21CB83034();
    }

    else
    {
      v27 = sub_21CB83054();
    }

    *v13 = v27;
    *(v13 + 1) = 0;
    v13[16] = 1;
    v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDECAA0, &qword_21CBA50F8);
    sub_21C8105DC(&v13[*(v28 + 44)]);
    v22 = &qword_27CDECA80;
    v23 = &qword_21CBA50E0;
    sub_21C6EDBAC(v13, v17, &qword_27CDECA80, &qword_21CBA50E0);
    swift_storeEnumTagMultiPayload();
    sub_21C810B14(&qword_27CDECAA8, &qword_27CDECA90, &qword_21CBA50F0);
    sub_21C810B14(&qword_27CDECAB0, &qword_27CDECA80, &qword_21CBA50E0);
    sub_21CB83494();
    v24 = v13;
  }

  return sub_21C6EA794(v24, v22, v23);
}

uint64_t sub_21C8103C8@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_21CB82834();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v18 - v9;
  v11 = *(v1 + *(type metadata accessor for PMAccountRowLabelStyle() + 20));
  sub_21CB83054();
  if (sub_21CB83044() & 1) != 0 || (sub_21C7448E0(v10), v12 = sub_21CB82824(), (*(v4 + 8))(v10, v3), (v12))
  {
    sub_21C7448E0(v10);
    (*(v4 + 104))(v7, *MEMORY[0x277CDF998], v3);
    sub_21C810ABC();
    v13 = sub_21CB85514();
    v14 = *(v4 + 8);
    v14(v7, v3);
    v14(v10, v3);
    if (v13)
    {
      v15 = sub_21CB83034();
    }

    else
    {
      v15 = sub_21CB83054();
    }
  }

  else
  {
    v15 = sub_21CB83074();
  }

  *a1 = v15;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDECAB8, &qword_21CBA5100);
  return sub_21C810850(a1 + *(v16 + 44));
}

uint64_t sub_21C8105DC@<X0>(uint64_t a1@<X8>)
{
  v31 = a1;
  v1 = sub_21CB838A4();
  v29 = *(v1 - 8);
  v2 = v29;
  v3 = *(v29 + 64);
  MEMORY[0x28223BE20](v1);
  v30 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v28 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDECAC8, &qword_21CBA5110);
  v9 = v8 - 8;
  v10 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v28 - v14;
  sub_21CB83894();
  v16 = sub_21CB83D34();
  sub_21CB81F24();
  v17 = &v15[*(v9 + 44)];
  *v17 = v16;
  *(v17 + 1) = v18;
  *(v17 + 2) = v19;
  *(v17 + 3) = v20;
  *(v17 + 4) = v21;
  v17[40] = 0;
  sub_21CB838B4();
  sub_21C6EDBAC(v15, v12, &qword_27CDECAC8, &qword_21CBA5110);
  v22 = *(v2 + 16);
  v23 = v30;
  v22(v30, v7, v1);
  v24 = v31;
  sub_21C6EDBAC(v12, v31, &qword_27CDECAC8, &qword_21CBA5110);
  v25 = v24 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDECAD8, &qword_21CBA5120) + 48);
  v22(v25, v23, v1);
  v26 = *(v29 + 8);
  v26(v7, v1);
  sub_21C6EA794(v15, &qword_27CDECAC8, &qword_21CBA5110);
  v26(v23, v1);
  return sub_21C6EA794(v12, &qword_27CDECAC8, &qword_21CBA5110);
}

uint64_t sub_21C810850@<X0>(uint64_t a1@<X8>)
{
  v33 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDECAC0, &qword_21CBA5108);
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v32 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDECAC8, &qword_21CBA5110);
  v10 = v9 - 8;
  v11 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v32 - v15;
  sub_21CB83894();
  v17 = sub_21CB83D34();
  sub_21CB81F24();
  v18 = &v16[*(v10 + 44)];
  *v18 = v17;
  *(v18 + 1) = v19;
  *(v18 + 2) = v20;
  *(v18 + 3) = v21;
  *(v18 + 4) = v22;
  v18[40] = 0;
  sub_21CB838B4();
  v23 = sub_21CB83CF4();
  sub_21CB81F24();
  v24 = &v8[*(v2 + 44)];
  *v24 = v23;
  *(v24 + 1) = v25;
  *(v24 + 2) = v26;
  *(v24 + 3) = v27;
  *(v24 + 4) = v28;
  v24[40] = 0;
  sub_21C6EDBAC(v16, v13, &qword_27CDECAC8, &qword_21CBA5110);
  sub_21C6EDBAC(v8, v5, &qword_27CDECAC0, &qword_21CBA5108);
  v29 = v33;
  sub_21C6EDBAC(v13, v33, &qword_27CDECAC8, &qword_21CBA5110);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDECAD0, &qword_21CBA5118);
  sub_21C6EDBAC(v5, v29 + *(v30 + 48), &qword_27CDECAC0, &qword_21CBA5108);
  sub_21C6EA794(v8, &qword_27CDECAC0, &qword_21CBA5108);
  sub_21C6EA794(v16, &qword_27CDECAC8, &qword_21CBA5110);
  sub_21C6EA794(v5, &qword_27CDECAC0, &qword_21CBA5108);
  return sub_21C6EA794(v13, &qword_27CDECAC8, &qword_21CBA5110);
}

unint64_t sub_21C810ABC()
{
  result = qword_27CDECA98;
  if (!qword_27CDECA98)
  {
    sub_21CB82834();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDECA98);
  }

  return result;
}

uint64_t sub_21C810B14(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

unint64_t sub_21C810B68()
{
  result = qword_27CDECAE0;
  if (!qword_27CDECAE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDECAE8, &qword_21CBA5128);
    sub_21C810B14(&qword_27CDECAA8, &qword_27CDECA90, &qword_21CBA50F0);
    sub_21C810B14(&qword_27CDECAB0, &qword_27CDECA80, &qword_21CBA50E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDECAE0);
  }

  return result;
}

__n128 __swift_memcpy96_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = result;
  *(a1 + 48) = v4;
  return result;
}

uint64_t sub_21C810C40(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 96))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 56);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_21C810C88(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 96) = 1;
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
      *(result + 56) = (a2 - 1);
      return result;
    }

    *(result + 96) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_21C810D0C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v51 = a1;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDECAF0, &qword_21CBA51E8);
  v3 = *(*(v44 - 8) + 64);
  MEMORY[0x28223BE20](v44);
  v5 = &v40 - v4;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDECAF8, &qword_21CBA51F0);
  v46 = *(v45 - 8);
  v6 = *(v46 + 64);
  MEMORY[0x28223BE20](v45);
  v52 = &v40 - v7;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDECB00, &qword_21CBA51F8);
  v48 = *(v47 - 8);
  v8 = *(v48 + 64);
  MEMORY[0x28223BE20](v47);
  v53 = &v40 - v9;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDECB08, &qword_21CBA5200);
  v50 = *(v49 - 8);
  v10 = *(v50 + 64);
  MEMORY[0x28223BE20](v49);
  v54 = &v40 - v11;
  sub_21C81155C(v5);
  v63 = *(v1 + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDECB10, &qword_21CBA5208);
  sub_21CB84D74();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBDA8, &qword_21CBA36B0);
  v13 = type metadata accessor for PMAddAccountView();
  v42 = sub_21C815478();
  OpaqueTypeConformance2 = sub_21C6EADEC(&qword_27CDEBDC0, &qword_27CDEBDA8, &qword_21CBA36B0);
  v14 = sub_21C815A24(&qword_27CDEBDC8, type metadata accessor for PMAddAccountView);
  v15 = v44;
  sub_21CB847C4();

  sub_21C6EA794(v5, &qword_27CDECAF0, &qword_21CBA51E8);
  v16 = *(v1 + 16);
  v17 = *(v1 + 24);
  type metadata accessor for PMPasswordManagerState();
  sub_21C815A24(&qword_27CDED2D0, type metadata accessor for PMPasswordManagerState);
  v18 = sub_21CB82B54();
  swift_getKeyPath();
  sub_21CB82B74();

  v19 = v64;
  v61 = v63;
  v62 = v64;
  v41 = type metadata accessor for PMNewGroupFlow(0);
  v55 = v15;
  v56 = v12;
  v57 = v13;
  v58 = v42;
  v59 = OpaqueTypeConformance2;
  v60 = v14;
  v44 = MEMORY[0x277CDEE40];
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v20 = sub_21C722D3C();
  v21 = sub_21C815A24(&qword_27CDEB770, type metadata accessor for PMNewGroupFlow);
  v22 = v45;
  v23 = v52;
  sub_21CB847C4();

  sub_21C72A584(v19);
  (*(v46 + 8))(v23, v22);
  v63 = v2[4];
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF40F0, &qword_21CBA2500);
  sub_21CB84D74();
  LODWORD(v46) = v57;
  v24 = swift_allocObject();
  v25 = v2[3];
  v24[3] = v2[2];
  v24[4] = v25;
  v26 = v2[5];
  v24[5] = v2[4];
  v24[6] = v26;
  v27 = v2[1];
  v24[1] = *v2;
  v24[2] = v27;
  sub_21C8155F0(v2, &v55);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDECB58, &qword_21CBA5250);
  v55 = v22;
  v56 = &type metadata for PMNewGroupContext;
  v57 = v41;
  v58 = OpaqueTypeConformance2;
  v59 = v20;
  v60 = v21;
  v29 = swift_getOpaqueTypeConformance2();
  v30 = sub_21C6EADEC(&qword_27CDECB60, &qword_27CDECB58, &qword_21CBA5250);
  v31 = v53;
  v32 = v47;
  sub_21CB847B4();

  (*(v48 + 8))(v31, v32);
  v63 = v2[5];
  sub_21CB84D74();
  v33 = swift_allocObject();
  v34 = v2[3];
  v33[3] = v2[2];
  v33[4] = v34;
  v35 = v2[5];
  v33[5] = v2[4];
  v33[6] = v35;
  v36 = v2[1];
  v33[1] = *v2;
  v33[2] = v36;
  sub_21C8155F0(v2, &v55);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDECB68, &qword_21CBA5258);
  v55 = v32;
  v56 = v28;
  v57 = v29;
  v58 = v30;
  swift_getOpaqueTypeConformance2();
  sub_21C81564C();
  v37 = v49;
  v38 = v54;
  sub_21CB847B4();

  return (*(v50 + 8))(v38, v37);
}

uint64_t sub_21C81155C@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDECB38, &qword_21CBA5210);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3);
  v6 = v22 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDECC00, &qword_21CBA53E8);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = v22 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDECB28, &qword_21CBAF7B0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = v22 - v14;
  v16 = [objc_opt_self() isOngoingCredentialSharingEnabled];
  if (v16)
  {
    v22[1] = a1;
    MEMORY[0x28223BE20](v16);
    v22[-2] = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDECC08, &qword_21CBA53F0);
    sub_21C6EADEC(&qword_27CDECC10, &qword_27CDECC08, &qword_21CBA53F0);
    sub_21CB83F54();
    *&v6[*(v3 + 36)] = 257;
    sub_21C6EDBAC(v6, v10, &qword_27CDECB38, &qword_21CBA5210);
    swift_storeEnumTagMultiPayload();
    sub_21C6EADEC(&qword_27CDECB20, &qword_27CDECB28, &qword_21CBAF7B0);
    sub_21C815530();
    sub_21CB83494();
    return sub_21C6EA794(v6, &qword_27CDECB38, &qword_21CBA5210);
  }

  else
  {
    v18 = swift_allocObject();
    v19 = v1[3];
    v18[3] = v1[2];
    v18[4] = v19;
    v20 = v1[5];
    v18[5] = v1[4];
    v18[6] = v20;
    v21 = v1[1];
    v18[1] = *v1;
    v18[2] = v21;
    sub_21C8155F0(v1, v23);
    sub_21CB84DA4();
    (*(v12 + 16))(v10, v15, v11);
    swift_storeEnumTagMultiPayload();
    sub_21C6EADEC(&qword_27CDECB20, &qword_27CDECB28, &qword_21CBAF7B0);
    sub_21C815530();
    sub_21CB83494();
    return (*(v12 + 8))(v15, v11);
  }
}

uint64_t sub_21C811978@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  type metadata accessor for PMAddAccountModel(0);
  sub_21C815A24(&qword_27CDEBEB8, type metadata accessor for PMAddAccountModel);

  *a2 = sub_21CB82674();
  a2[1] = v4;
  a2[2] = 0x4079000000000000;
  v5 = type metadata accessor for PMAddAccountView();
  v6 = v5[6];
  *(a2 + v6) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE480, &qword_21CBA13D0);
  swift_storeEnumTagMultiPayload();
  v7 = v5[7];
  sub_21C721B58();
  sub_21CB81FA4();
  v8 = v5[8];
  KeyPath = swift_getKeyPath();
  if (qword_27CDEA4C0 != -1)
  {
    swift_once();
  }

  v10 = (a2 + v8);
  sub_21CB86544();
  sub_21C7073E8(KeyPath, v16);

  type metadata accessor for PMGroupsStore();
  sub_21C815A24(&qword_27CDEB7C8, type metadata accessor for PMGroupsStore);
  v11 = sub_21CB82674();
  v13 = v12;

  *v10 = v11;
  v10[1] = v13;
  v14 = a2 + v5[9];
  result = swift_getKeyPath();
  *v14 = result;
  v14[8] = 0;
  return result;
}

uint64_t sub_21C811B6C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21CB81DB4();

  *a2 = v5;
  return result;
}

uint64_t sub_21C811BEC(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21C72A574(v2);
  v4 = v3;
  return sub_21CB81DC4();
}

uint64_t sub_21C811C64@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDECBD8, &unk_21CBA5300);
  v4 = *(*(v50 - 8) + 64);
  MEMORY[0x28223BE20](v50);
  v49 = v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v48 = v47 - v7;
  v8 = sub_21CB82644();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = v47 - v14;
  v16 = *a1;
  v17 = type metadata accessor for PMAccount(0);
  (*(*(v17 - 8) + 56))(a2, 1, 1, v17);
  v18 = type metadata accessor for PMNewGroupFlow(0);
  v19 = a2 + v18[6];
  *(v19 + 24) = &type metadata for PMIMessageAvailabilityProviderMain;
  *(v19 + 32) = &off_282E572E8;
  *(a2 + v18[5]) = v16;
  v47[1] = v18[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDECBE0, &unk_21CBAE540);
  v20 = *(type metadata accessor for PMNewGroupFlow.Step(0) - 8);
  v21 = *(v20 + 72);
  v22 = (*(v20 + 80) + 32) & ~*(v20 + 80);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_21CBA0690;
  swift_storeEnumTagMultiPayload();
  v52 = v23;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDECBE8, &qword_21CBA5310);
  sub_21C6EADEC(&qword_27CDECBF0, &qword_27CDECBE8, &qword_21CBA5310);
  sub_21C815A24(&qword_27CDECBF8, type metadata accessor for PMNewGroupFlow.Step);
  sub_21CB82654();
  (*(v9 + 16))(v12, v15, v8);
  sub_21CB84D44();
  (*(v9 + 8))(v15, v8);
  v24 = a2 + v18[8];
  v51 = 0;
  sub_21CB84D44();
  v25 = v53;
  *v24 = v52;
  *(v24 + 8) = v25;
  v26 = v18[9];
  v27 = type metadata accessor for MoveAccountFailureAlertData(0);
  v28 = v48;
  (*(*(v27 - 8) + 56))(v48, 1, 1, v27);
  sub_21C6EDBAC(v28, v49, &qword_27CDECBD8, &unk_21CBA5300);
  sub_21CB84D44();
  sub_21C6EA794(v28, &qword_27CDECBD8, &unk_21CBA5300);
  v29 = v18[10];
  *(a2 + v29) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE480, &qword_21CBA13D0);
  swift_storeEnumTagMultiPayload();
  v30 = v18[11];
  KeyPath = swift_getKeyPath();
  if (qword_27CDEA4C0 != -1)
  {
    swift_once();
  }

  v32 = (a2 + v30);
  sub_21CB86544();
  sub_21C7072A8(KeyPath, v52);

  type metadata accessor for PMAccountsState();
  sub_21C815A24(&qword_27CDEAE08, type metadata accessor for PMAccountsState);
  v33 = sub_21CB82674();
  v35 = v34;

  *v32 = v33;
  v32[1] = v35;
  v36 = (a2 + v18[12]);
  type metadata accessor for PMPasswordManagerState();
  sub_21C815A24(&qword_27CDED2D0, type metadata accessor for PMPasswordManagerState);
  *v36 = sub_21CB82B84();
  v36[1] = v37;
  v38 = (a2 + v18[13]);
  v39 = swift_getKeyPath();
  sub_21CB86544();
  sub_21C7073E8(v39, v52);

  type metadata accessor for PMGroupsStore();
  sub_21C815A24(&qword_27CDEB7C8, type metadata accessor for PMGroupsStore);
  v40 = sub_21CB82674();
  v42 = v41;

  *v38 = v40;
  v38[1] = v42;
  v43 = a2 + v18[14];
  *v43 = swift_getKeyPath();
  *(v43 + 8) = 0;
  v44 = v18[15];
  *(a2 + v44) = swift_getKeyPath();
  v45 = v18[16];
  result = swift_getKeyPath();
  *(a2 + v45) = result;
  return result;
}

uint64_t sub_21C8122E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v84 = a2;
  v85 = type metadata accessor for PMMoveAccountsList();
  v87 = *(v85 - 8);
  v3 = *(v87 + 64);
  MEMORY[0x28223BE20](v85);
  v80 = &v74 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7670, &unk_21CBAA8F0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v74 - v7;
  v78 = type metadata accessor for PMSharingGroup();
  v77 = *(v78 - 8);
  v9 = *(v77 + 64);
  MEMORY[0x28223BE20](v78);
  v76 = &v74 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for PMAccountsListModel.Configuration(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v74 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v74 - v16;
  v18 = sub_21CB85C44();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  v22 = &v74 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDECBC0, &qword_21CBA52E8);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x28223BE20](v23 - 8);
  v26 = &v74 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v82 = &v74 - v28;
  MEMORY[0x28223BE20](v29);
  v81 = &v74 - v30;
  MEMORY[0x28223BE20](v31);
  v86 = &v74 - v32;
  v33 = *a1;
  if (*a1)
  {
    sub_21C815844(v33 + OBJC_IVAR____TtC17PasswordManagerUI19PMAccountsListModel_configuration, v17, type metadata accessor for PMAccountsListModel.Configuration);
    v79 = *(v19 + 48);
    v34 = v79(v17, 2, v18);
    v83 = v26;
    if (v34)
    {
      v35 = v80;

      sub_21C815900(v17, type metadata accessor for PMAccountsListModel.Configuration);
      v36 = 1;
    }

    else
    {
      (*(v19 + 32))(v22, v17, v18);
      v37 = *(a1 + 56);

      sub_21CA1D444(v22, v8);
      v38 = v77;
      v39 = v78;
      if ((*(v77 + 48))(v8, 1, v78) == 1)
      {
        v35 = v80;
        (*(v19 + 8))(v22, v18);
        sub_21C6EA794(v8, &qword_27CDF7670, &unk_21CBAA8F0);
        v36 = 1;
      }

      else
      {
        v40 = v8;
        v41 = v76;
        sub_21C8159BC(v40, v76, type metadata accessor for PMSharingGroup);
        v75 = type metadata accessor for PMSharingGroup;
        v42 = v41;
        v43 = v80;
        sub_21C815844(v42, v80, type metadata accessor for PMSharingGroup);
        (*(v38 + 56))(v43, 0, 1, v39);
        v44 = swift_allocObject();
        v45 = *(a1 + 48);
        *(v44 + 3) = *(a1 + 32);
        *(v44 + 4) = v45;
        v46 = *(a1 + 80);
        *(v44 + 5) = *(a1 + 64);
        *(v44 + 6) = v46;
        v47 = *(a1 + 16);
        *(v44 + 1) = *a1;
        *(v44 + 2) = v47;
        v48 = v85;
        *(v43 + *(v85 + 20)) = 1;
        v49 = (v43 + *(v48 + 24));
        *v49 = sub_21C815E10;
        v49[1] = v44;
        v50 = (v43 + *(v48 + 28));
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDECBD0, &unk_21CBB9040);
        v51 = swift_allocObject();
        *(v51 + 16) = 0;
        v90 = v51;
        sub_21C8155F0(a1, &v88);
        sub_21CB84D44();
        sub_21C815900(v76, v75);
        (*(v19 + 8))(v22, v18);
        v52 = v89;
        *v50 = v88;
        v50[1] = v52;
        v35 = v43;
        sub_21C8159BC(v43, v86, type metadata accessor for PMMoveAccountsList);
        v36 = 0;
      }
    }

    v53 = *(v87 + 56);
    v54 = 1;
    v55 = v85;
    v87 += 56;
    v53(v86, v36, 1, v85);
    sub_21C815844(v33 + OBJC_IVAR____TtC17PasswordManagerUI19PMAccountsListModel_configuration, v14, type metadata accessor for PMAccountsListModel.Configuration);

    v56 = v79(v14, 2, v18);
    sub_21C815900(v14, type metadata accessor for PMAccountsListModel.Configuration);
    v57 = v56 == 2;
    v58 = v81;
    if (v57)
    {
      (*(v77 + 56))(v35, 1, 1, v78);
      v59 = swift_allocObject();
      v60 = *(a1 + 48);
      *(v59 + 3) = *(a1 + 32);
      *(v59 + 4) = v60;
      v61 = *(a1 + 80);
      *(v59 + 5) = *(a1 + 64);
      *(v59 + 6) = v61;
      v62 = *(a1 + 16);
      *(v59 + 1) = *a1;
      *(v59 + 2) = v62;
      *(v35 + v55[5]) = 1;
      v63 = (v35 + v55[6]);
      *v63 = sub_21C8159B4;
      v63[1] = v59;
      v64 = (v35 + v55[7]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDECBD0, &unk_21CBB9040);
      v65 = swift_allocObject();
      *(v65 + 16) = 0;
      v90 = v65;
      sub_21C8155F0(a1, &v88);
      sub_21CB84D44();
      v66 = v89;
      *v64 = v88;
      v64[1] = v66;
      sub_21C8159BC(v35, v58, type metadata accessor for PMMoveAccountsList);
      v54 = 0;
    }

    v53(v58, v54, 1, v55);
    v67 = v86;
    v68 = v82;
    sub_21C6EDBAC(v86, v82, &qword_27CDECBC0, &qword_21CBA52E8);
    v69 = v83;
    sub_21C6EDBAC(v58, v83, &qword_27CDECBC0, &qword_21CBA52E8);
    v70 = v84;
    sub_21C6EDBAC(v68, v84, &qword_27CDECBC0, &qword_21CBA52E8);
    v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDECBC8, &unk_21CBA52F0);
    sub_21C6EDBAC(v69, v70 + *(v71 + 48), &qword_27CDECBC0, &qword_21CBA52E8);
    sub_21C6EA794(v58, &qword_27CDECBC0, &qword_21CBA52E8);
    sub_21C6EA794(v67, &qword_27CDECBC0, &qword_21CBA52E8);
    sub_21C6EA794(v69, &qword_27CDECBC0, &qword_21CBA52E8);
    return sub_21C6EA794(v68, &qword_27CDECBC0, &qword_21CBA52E8);
  }

  else
  {
    v73 = *(a1 + 8);
    type metadata accessor for PMAccountsListModel(0);
    sub_21C815A24(&qword_27CDEC988, type metadata accessor for PMAccountsListModel);
    result = sub_21CB82B64();
    __break(1u);
  }

  return result;
}

uint64_t sub_21C812BAC@<X0>(uint64_t a1@<X8>)
{
  v75 = a1;
  v68 = sub_21CB82644();
  v67 = *(v68 - 8);
  v2 = *(v67 + 64);
  MEMORY[0x28223BE20](v68);
  v66 = &v61 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v65 = &v61 - v5;
  v64 = type metadata accessor for PMEditGroupFlow();
  v6 = *(*(v64 - 8) + 64);
  MEMORY[0x28223BE20](v64);
  v72 = &v61 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDECB90, &qword_21CBA5268);
  v8 = *(*(v69 - 8) + 64);
  MEMORY[0x28223BE20](v69);
  v73 = &v61 - v9;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDECB80, &qword_21CBA5260);
  v10 = *(v74 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v74);
  v71 = &v61 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v70 = &v61 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7670, &unk_21CBAA8F0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v18 = &v61 - v17;
  v19 = type metadata accessor for PMSharingGroup();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  v23 = &v61 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for PMAccountsListModel.Configuration(0);
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x28223BE20](v24 - 8);
  v27 = &v61 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_21CB85C44();
  v29 = *(v28 - 8);
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v28);
  v32 = &v61 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*v1)
  {
    sub_21C815844(*v1 + OBJC_IVAR____TtC17PasswordManagerUI19PMAccountsListModel_configuration, v27, type metadata accessor for PMAccountsListModel.Configuration);
    if ((*(v29 + 48))(v27, 2, v28))
    {
      sub_21C815900(v27, type metadata accessor for PMAccountsListModel.Configuration);
    }

    else
    {
      (*(v29 + 32))(v32, v27, v28);
      v33 = v1[7];
      sub_21CA1D444(v32, v18);
      if ((*(v20 + 48))(v18, 1, v19) != 1)
      {
        sub_21C8159BC(v18, v23, type metadata accessor for PMSharingGroup);
        v62 = type metadata accessor for PMSharingGroup;
        v38 = v72;
        sub_21C815844(v23, v72, type metadata accessor for PMSharingGroup);
        v63 = v10;
        v39 = v64;
        v40 = v38 + *(v64 + 24);
        *(v40 + 24) = &type metadata for PMIMessageAvailabilityProviderMain;
        *(v40 + 32) = &off_282E572E8;
        v41 = (v38 + v39[5]);
        *v41 = nullsub_1;
        v41[1] = 0;
        v61 = v39[7];
        *&v76 = &unk_282E48BB0;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDECBA0, &qword_21CBA5280);
        sub_21C6EADEC(&qword_27CDECBA8, &qword_27CDECBA0, &qword_21CBA5280);
        sub_21C8158AC();
        v42 = v65;
        sub_21CB82654();
        v43 = v67;
        v44 = v68;
        (*(v67 + 16))(v66, v42, v68);
        sub_21CB84D44();
        (*(v43 + 8))(v42, v44);
        v45 = v39[8];
        v10 = v63;
        *(v38 + v45) = swift_getKeyPath();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE480, &qword_21CBA13D0);
        swift_storeEnumTagMultiPayload();
        sub_21CB85214();
        sub_21CB82AC4();
        sub_21C815900(v23, v62);
        (*(v29 + 8))(v32, v28);
        v46 = v38;
        v47 = v73;
        sub_21C8159BC(v46, v73, type metadata accessor for PMEditGroupFlow);
        v48 = (v47 + *(v69 + 36));
        v49 = v81;
        v48[4] = v80;
        v48[5] = v49;
        v48[6] = v82;
        v50 = v77;
        *v48 = v76;
        v48[1] = v50;
        v51 = v79;
        v48[2] = v78;
        v48[3] = v51;
        KeyPath = swift_getKeyPath();
        v53 = v71;
        sub_21C716934(v47, v71, &qword_27CDECB90, &qword_21CBA5268);
        v54 = v74;
        v55 = v53 + *(v74 + 36);
        *v55 = KeyPath;
        *(v55 + 8) = 1;
        v56 = v53;
        v57 = v70;
        sub_21C716934(v56, v70, &qword_27CDECB80, &qword_21CBA5260);
        v58 = v57;
        v59 = v75;
        sub_21C716934(v58, v75, &qword_27CDECB80, &qword_21CBA5260);
        v36 = v54;
        v35 = v59;
        v34 = 0;
        return (*(v10 + 56))(v35, v34, 1, v36);
      }

      (*(v29 + 8))(v32, v28);
      sub_21C6EA794(v18, &qword_27CDF7670, &unk_21CBAA8F0);
    }

    v34 = 1;
    v36 = v74;
    v35 = v75;
    return (*(v10 + 56))(v35, v34, 1, v36);
  }

  v60 = v1[1];
  type metadata accessor for PMAccountsListModel(0);
  sub_21C815A24(&qword_27CDEC988, type metadata accessor for PMAccountsListModel);
  result = sub_21CB82B64();
  __break(1u);
  return result;
}

uint64_t sub_21C813424()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF20B0, &unk_21CBA0090);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v33 - v4;
  v6 = type metadata accessor for PMAddAccountModel.Configuration(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for PMAccountsListModel.Configuration(0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_21CB85C44();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v33 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*v1)
  {
    sub_21C815844(*v1 + OBJC_IVAR____TtC17PasswordManagerUI19PMAccountsListModel_configuration, v13, type metadata accessor for PMAccountsListModel.Configuration);
    if ((*(v15 + 48))(v13, 2, v14))
    {
      sub_21C815900(v13, type metadata accessor for PMAccountsListModel.Configuration);
      (*(v15 + 56))(&v9[*(v6 + 24)], 1, 1, v14);
      v19 = &v9[*(v6 + 28)];
      *v19 = 0;
      *(v19 + 1) = 0;
      *v9 = 0;
      *(v9 + 1) = 0xE000000000000000;
      *(v9 + 2) = 0;
      *(v9 + 3) = 0xE000000000000000;
      v20 = type metadata accessor for PMAddAccountModel(0);
      v21 = *(v20 + 48);
      v22 = *(v20 + 52);
      swift_allocObject();
      v23 = sub_21C848014(v9, nullsub_1, 0);
      v35 = *(v1 + 32);
      v34 = v23;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDECB10, &qword_21CBA5208);
      return sub_21CB84D64();
    }

    else
    {
      (*(v15 + 32))(v18, v13, v14);
      (*(v15 + 16))(v5, v18, v14);
      v25 = *(v15 + 56);
      v25(v5, 0, 1, v14);
      v26 = *(v6 + 24);
      v25(&v9[v26], 1, 1, v14);
      v27 = &v9[*(v6 + 28)];
      *v27 = 0;
      *(v27 + 1) = 0;
      *v9 = 0;
      *(v9 + 1) = 0xE000000000000000;
      *(v9 + 2) = 0;
      *(v9 + 3) = 0xE000000000000000;
      sub_21C815B54(v5, &v9[v26]);
      v28 = type metadata accessor for PMAddAccountModel(0);
      v29 = *(v28 + 48);
      v30 = *(v28 + 52);
      swift_allocObject();
      v31 = sub_21C848014(v9, nullsub_1, 0);
      v35 = *(v1 + 32);
      v34 = v31;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDECB10, &qword_21CBA5208);
      sub_21CB84D64();
      return (*(v15 + 8))(v18, v14);
    }
  }

  else
  {
    v32 = *(v1 + 8);
    type metadata accessor for PMAccountsListModel(0);
    sub_21C815A24(&qword_27CDEC988, type metadata accessor for PMAccountsListModel);
    result = sub_21CB82B64();
    __break(1u);
  }

  return result;
}

uint64_t sub_21C813868@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v158 = a2;
  v156 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDECC18, &qword_21CBA53F8);
  v155 = *(v156 - 8);
  v3 = *(v155 + 64);
  MEMORY[0x28223BE20](v156);
  v139 = &v136 - v4;
  v138 = sub_21CB84FB4();
  v137 = *(v138 - 8);
  v5 = *(v137 + 64);
  MEMORY[0x28223BE20](v138);
  v141 = &v136 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v142 = &v136 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7670, &unk_21CBAA8F0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v146 = &v136 - v11;
  v145 = type metadata accessor for PMSharingGroup();
  v144 = *(v145 - 8);
  v12 = *(v144 + 64);
  MEMORY[0x28223BE20](v145);
  v143 = &v136 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_21CB85C44();
  v161 = *(v14 - 8);
  v15 = *(v161 + 64);
  MEMORY[0x28223BE20](v14);
  v147 = &v136 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDECC20, &qword_21CBA5400);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v157 = &v136 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v166 = &v136 - v21;
  v22 = type metadata accessor for PMAccountsListModel.Configuration(0);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22 - 8);
  v152 = &v136 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v151 = &v136 - v26;
  MEMORY[0x28223BE20](v27);
  v29 = &v136 - v28;
  MEMORY[0x28223BE20](v30);
  v32 = &v136 - v31;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDECC28, &qword_21CBA5408);
  v34 = *(*(v33 - 8) + 64);
  MEMORY[0x28223BE20](v33 - 8);
  v154 = &v136 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v36);
  v165 = &v136 - v37;
  MEMORY[0x28223BE20](v38);
  v153 = &v136 - v39;
  MEMORY[0x28223BE20](v40);
  v167 = &v136 - v41;
  MEMORY[0x28223BE20](v42);
  v170 = &v136 - v43;
  MEMORY[0x28223BE20](v44);
  v168 = &v136 - v45;
  v163 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDECC30, &qword_21CBA5410);
  v171 = *(v163 - 8);
  v46 = *(v171 + 64);
  MEMORY[0x28223BE20](v163);
  v140 = &v136 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v48);
  v172 = &v136 - v49;
  MEMORY[0x28223BE20](v50);
  v52 = &v136 - v51;
  v53 = swift_allocObject();
  v54 = a1[3];
  v53[3] = a1[2];
  v53[4] = v54;
  v55 = a1[5];
  v53[5] = a1[4];
  v53[6] = v55;
  v56 = a1[1];
  v53[1] = *a1;
  v53[2] = v56;
  sub_21C8155F0(a1, &v174);
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDECC38, &qword_21CBA5418);
  v58 = sub_21C6EADEC(&qword_27CDECC40, &qword_27CDECC38, &qword_21CBA5418);
  v164 = v52;
  v160 = v57;
  v159 = v58;
  sub_21CB84DA4();
  v162 = a1;
  v59 = *a1;
  if (*a1)
  {
    sub_21C815844(v59 + OBJC_IVAR____TtC17PasswordManagerUI19PMAccountsListModel_configuration, v32, type metadata accessor for PMAccountsListModel.Configuration);
    v60 = *(v161 + 48);
    v169 = v14;
    v61 = v60;
    v150 = v161 + 48;
    v62 = v60(v32, 2, v14);
    swift_retain_n();
    sub_21C815900(v32, type metadata accessor for PMAccountsListModel.Configuration);
    if (v62 == 1)
    {
      v63 = swift_allocObject();
      v64 = v162;
      v65 = v162[3];
      v63[3] = v162[2];
      v63[4] = v65;
      v66 = v64[5];
      v63[5] = v64[4];
      v63[6] = v66;
      v67 = v64[1];
      v63[1] = *v64;
      v63[2] = v67;
      sub_21C8155F0(v64, &v174);
      v68 = v172;
      sub_21CB84DA4();
      v69 = v171;
      v70 = v168;
      v71 = v163;
      (*(v171 + 32))(v168, v68, v163);
      v72 = 0;
    }

    else
    {
      v72 = 1;
      v71 = v163;
      v69 = v171;
      v70 = v168;
    }

    v73 = *(v69 + 56);
    v74 = 1;
    v73(v70, v72, 1, v71);
    v148 = OBJC_IVAR____TtC17PasswordManagerUI19PMAccountsListModel_configuration;
    sub_21C815844(v59 + OBJC_IVAR____TtC17PasswordManagerUI19PMAccountsListModel_configuration, v29, type metadata accessor for PMAccountsListModel.Configuration);

    v75 = v61;
    v76 = v61(v29, 2, v169);
    sub_21C815900(v29, type metadata accessor for PMAccountsListModel.Configuration);
    if (!v76)
    {
      v77 = swift_allocObject();
      v78 = v162;
      v79 = v162[3];
      v77[3] = v162[2];
      v77[4] = v79;
      v80 = v78[5];
      v77[5] = v78[4];
      v77[6] = v80;
      v81 = v78[1];
      v77[1] = *v78;
      v77[2] = v81;
      sub_21C8155F0(v78, &v174);
      v82 = v172;
      sub_21CB84DA4();
      (*(v171 + 32))(v170, v82, v71);
      v74 = 0;
    }

    v83 = 1;
    v149 = v73;
    v73(v170, v74, 1, v71);
    v84 = v148;
    v85 = v151;
    sub_21C815844(v59 + v148, v151, type metadata accessor for PMAccountsListModel.Configuration);

    v86 = v75(v85, 2, v169);
    sub_21C815900(v85, type metadata accessor for PMAccountsListModel.Configuration);
    v87 = v86 == 2;
    v88 = v71;
    v89 = v171;
    v90 = v167;
    if (v87)
    {
      v91 = swift_allocObject();
      v92 = v162;
      v93 = v162[3];
      v91[3] = v162[2];
      v91[4] = v93;
      v94 = v92[5];
      v91[5] = v92[4];
      v91[6] = v94;
      v95 = v92[1];
      v91[1] = *v92;
      v91[2] = v95;
      sub_21C8155F0(v92, &v174);
      v96 = v172;
      sub_21CB84DA4();
      (*(v89 + 32))(v90, v96, v88);
      v83 = 0;
    }

    v149(v90, v83, 1, v88);
    v97 = v152;
    sub_21C815844(v59 + v84, v152, type metadata accessor for PMAccountsListModel.Configuration);

    v98 = v169;
    if (v75(v97, 2, v169))
    {
      sub_21C815900(v97, type metadata accessor for PMAccountsListModel.Configuration);
    }

    else
    {
      v99 = v161;
      v100 = v147;
      (*(v161 + 32))(v147, v97, v98);
      v101 = *(v162 + 7);
      v102 = v146;
      sub_21CA1D444(v100, v146);
      if ((*(v144 + 48))(v102, 1, v145) == 1)
      {
        (*(v99 + 8))(v100, v98);
        sub_21C6EA794(v102, &qword_27CDF7670, &unk_21CBAA8F0);
      }

      else
      {
        v103 = v102;
        v104 = v143;
        sub_21C8159BC(v103, v143, type metadata accessor for PMSharingGroup);
        sub_21CB25D9C(&v174);
        if (v175)
        {
          v105 = v176;
          sub_21C6EA794(&v174, &qword_27CDECC50, &unk_21CBB52A0);
          if (v105)
          {
            sub_21CB84FA4();
            v106 = swift_allocObject();
            v107 = v162;
            v108 = v162[3];
            v106[3] = v162[2];
            v106[4] = v108;
            v109 = v107[5];
            v106[5] = v107[4];
            v106[6] = v109;
            v110 = v107[1];
            v106[1] = *v107;
            v106[2] = v110;
            sub_21C8155F0(v107, v173);
            v111 = v172;
            sub_21CB84DA4();
            v112 = v137;
            v113 = *(v137 + 16);
            v114 = v141;
            v115 = v138;
            v113(v141, v142, v138);
            v116 = *(v89 + 16);
            v116(v140, v111, v88);
            v117 = v116;
            v118 = v139;
            v113(v139, v114, v115);
            v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDECC58, &unk_21CBA5430);
            v120 = v140;
            v117(v118 + *(v119 + 48), v140, v88);
            v121 = *(v171 + 8);
            v121(v172, v88);
            v122 = *(v112 + 8);
            v122(v142, v115);
            sub_21C815900(v143, type metadata accessor for PMSharingGroup);
            (*(v161 + 8))(v147, v169);
            v121(v120, v88);
            v122(v141, v115);
            v90 = v167;
            v123 = v166;
            sub_21C716934(v118, v166, &qword_27CDECC18, &qword_21CBA53F8);
            (*(v155 + 56))(v123, 0, 1, v156);
            v124 = v157;
LABEL_19:
            v125 = v172;
            v117(v172, v164, v88);
            v126 = v153;
            sub_21C6EDBAC(v168, v153, &qword_27CDECC28, &qword_21CBA5408);
            sub_21C6EDBAC(v170, v165, &qword_27CDECC28, &qword_21CBA5408);
            v127 = v90;
            v128 = v154;
            sub_21C6EDBAC(v127, v154, &qword_27CDECC28, &qword_21CBA5408);
            sub_21C6EDBAC(v123, v124, &qword_27CDECC20, &qword_21CBA5400);
            v129 = v158;
            v117(v158, v125, v88);
            v130 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDECC48, &unk_21CBA5420);
            sub_21C6EDBAC(v126, v129 + v130[12], &qword_27CDECC28, &qword_21CBA5408);
            v131 = v165;
            sub_21C6EDBAC(v165, v129 + v130[16], &qword_27CDECC28, &qword_21CBA5408);
            sub_21C6EDBAC(v128, v129 + v130[20], &qword_27CDECC28, &qword_21CBA5408);
            sub_21C6EDBAC(v124, v129 + v130[24], &qword_27CDECC20, &qword_21CBA5400);
            sub_21C6EA794(v166, &qword_27CDECC20, &qword_21CBA5400);
            sub_21C6EA794(v167, &qword_27CDECC28, &qword_21CBA5408);
            sub_21C6EA794(v170, &qword_27CDECC28, &qword_21CBA5408);
            sub_21C6EA794(v168, &qword_27CDECC28, &qword_21CBA5408);
            v132 = *(v171 + 8);
            v133 = v163;
            v132(v164, v163);
            sub_21C6EA794(v124, &qword_27CDECC20, &qword_21CBA5400);
            sub_21C6EA794(v128, &qword_27CDECC28, &qword_21CBA5408);
            sub_21C6EA794(v131, &qword_27CDECC28, &qword_21CBA5408);
            sub_21C6EA794(v126, &qword_27CDECC28, &qword_21CBA5408);
            return (v132)(v172, v133);
          }
        }

        sub_21C815900(v104, type metadata accessor for PMSharingGroup);
        (*(v99 + 8))(v147, v98);
      }
    }

    v124 = v157;
    v123 = v166;
    (*(v155 + 56))(v166, 1, 1, v156);
    v117 = *(v89 + 16);
    goto LABEL_19;
  }

  v135 = *(v162 + 1);
  type metadata accessor for PMAccountsListModel(0);
  sub_21C815A24(&qword_27CDEC988, type metadata accessor for PMAccountsListModel);
  result = sub_21CB82B64();
  __break(1u);
  return result;
}

uint64_t sub_21C814AC4@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_21CB81024();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21CB81014();
  v7 = sub_21CB81004();
  v9 = v8;
  (*(v3 + 8))(v6, v2);
  v18[0] = v7;
  v18[1] = v9;
  sub_21C71F3FC();
  v10 = sub_21CB84054();
  v12 = v11;
  LOBYTE(v7) = v13;
  v15 = v14;
  v16 = sub_21CB84BB4();
  *a1 = v10;
  *(a1 + 8) = v12;
  LOBYTE(v7) = v7 & 1;
  *(a1 + 16) = v7;
  *(a1 + 24) = v15;
  *(a1 + 32) = v16;
  sub_21C79B058(v10, v12, v7);

  sub_21C74A72C(v10, v12, v7);
}

uint64_t sub_21C814C44(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v2 = v1;
    return sub_21CB81DC4();
  }

  else
  {
    v4 = *(a1 + 24);
    type metadata accessor for PMPasswordManagerState();
    sub_21C815A24(&qword_27CDED2D0, type metadata accessor for PMPasswordManagerState);
    result = sub_21CB82B64();
    __break(1u);
  }

  return result;
}

uint64_t sub_21C814D10@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_21CB81024();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = v22 - v8;
  sub_21CB81014();
  sub_21CB81014();
  v10 = sub_21CB80FF4();
  v12 = v11;
  v13 = *(v3 + 8);
  v13(v6, v2);
  v13(v9, v2);
  v22[0] = v10;
  v22[1] = v12;
  sub_21C71F3FC();
  v14 = sub_21CB84054();
  v16 = v15;
  LOBYTE(v9) = v17;
  v19 = v18;
  v20 = sub_21CB84BB4();
  *a1 = v14;
  *(a1 + 8) = v16;
  LOBYTE(v9) = v9 & 1;
  *(a1 + 16) = v9;
  *(a1 + 24) = v19;
  *(a1 + 32) = v20;
  sub_21C79B058(v14, v16, v9);

  sub_21C74A72C(v14, v16, v9);
}

uint64_t sub_21C814EF8@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_21CB81024();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21CB81014();
  v7 = sub_21CB81004();
  v9 = v8;
  (*(v3 + 8))(v6, v2);
  v18[0] = v7;
  v18[1] = v9;
  sub_21C71F3FC();
  v10 = sub_21CB84054();
  v12 = v11;
  LOBYTE(v7) = v13;
  v15 = v14;
  v16 = sub_21CB84BB4();
  *a1 = v10;
  *(a1 + 8) = v12;
  LOBYTE(v7) = v7 & 1;
  *(a1 + 16) = v7;
  *(a1 + 24) = v15;
  *(a1 + 32) = v16;
  sub_21C79B058(v10, v12, v7);

  sub_21C74A72C(v10, v12, v7);
}

uint64_t sub_21C815084@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_21CB81024();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21CB81014();
  v7 = sub_21CB81004();
  v9 = v8;
  (*(v3 + 8))(v6, v2);
  v18[0] = v7;
  v18[1] = v9;
  sub_21C71F3FC();
  v10 = sub_21CB84054();
  v12 = v11;
  LOBYTE(v7) = v13;
  v15 = v14;
  v16 = sub_21CB84BB4();
  *a1 = v10;
  *(a1 + 8) = v12;
  LOBYTE(v7) = v7 & 1;
  *(a1 + 16) = v7;
  *(a1 + 24) = v15;
  *(a1 + 32) = v16;
  sub_21C79B058(v10, v12, v7);

  sub_21C74A72C(v10, v12, v7);
}

uint64_t sub_21C815210@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_21CB81024();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21CB81014();
  v7 = sub_21CB81004();
  v9 = v8;
  (*(v3 + 8))(v6, v2);
  v18[0] = v7;
  v18[1] = v9;
  sub_21C71F3FC();
  v10 = sub_21CB84054();
  v12 = v11;
  LOBYTE(v7) = v13;
  v15 = v14;
  v16 = sub_21CB84BB4();
  *a1 = v10;
  *(a1 + 8) = v12;
  LOBYTE(v7) = v7 & 1;
  *(a1 + 16) = v7;
  *(a1 + 24) = v15;
  *(a1 + 32) = v16;
  sub_21C79B058(v10, v12, v7);

  sub_21C74A72C(v10, v12, v7);
}

uint64_t sub_21C815398@<X0>(_BYTE *a1@<X8>)
{
  sub_21C815960();
  result = sub_21CB82F94();
  *a1 = v3;
  return result;
}

uint64_t sub_21C8153E8(char *a1)
{
  v2 = *a1;
  sub_21C815960();
  return sub_21CB82FA4();
}

uint64_t sub_21C815434@<X0>(uint64_t a1@<X8>)
{
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[4];
  v8 = v1[5];
  v3 = *v1;
  v4 = v1[1];
  return sub_21C810D0C(a1);
}

unint64_t sub_21C815478()
{
  result = qword_27CDECB18;
  if (!qword_27CDECB18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDECAF0, &qword_21CBA51E8);
    sub_21C6EADEC(&qword_27CDECB20, &qword_27CDECB28, &qword_21CBAF7B0);
    sub_21C815530();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDECB18);
  }

  return result;
}

unint64_t sub_21C815530()
{
  result = qword_27CDECB30;
  if (!qword_27CDECB30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDECB38, &qword_21CBA5210);
    sub_21C6EADEC(&qword_27CDECB40, &qword_27CDECB48, &qword_21CBA5218);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDECB30);
  }

  return result;
}

unint64_t sub_21C81564C()
{
  result = qword_27CDECB70;
  if (!qword_27CDECB70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDECB68, &qword_21CBA5258);
    sub_21C8156D0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDECB70);
  }

  return result;
}

unint64_t sub_21C8156D0()
{
  result = qword_27CDECB78;
  if (!qword_27CDECB78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDECB80, &qword_21CBA5260);
    sub_21C815788();
    sub_21C6EADEC(&unk_27CDEBFE0, &qword_27CDEB1E0, &unk_21CBA5270);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDECB78);
  }

  return result;
}

unint64_t sub_21C815788()
{
  result = qword_27CDECB88;
  if (!qword_27CDECB88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDECB90, &qword_21CBA5268);
    sub_21C815A24(&qword_27CDECB98, type metadata accessor for PMEditGroupFlow);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDECB88);
  }

  return result;
}

uint64_t sub_21C815844(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_21C8158AC()
{
  result = qword_27CDECBB0;
  if (!qword_27CDECBB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDECBB0);
  }

  return result;
}

uint64_t sub_21C815900(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_21C815960()
{
  result = qword_27CDECBB8;
  if (!qword_27CDECBB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDECBB8);
  }

  return result;
}

uint64_t sub_21C8159BC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_21C815A24(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_21C815A98()
{
  v2 = *(v0 + 96);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF40F0, &qword_21CBA2500);
  return sub_21CB84D64();
}

uint64_t sub_21C815AF8()
{
  v2 = *(v0 + 80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF40F0, &qword_21CBA2500);
  return sub_21CB84D64();
}

uint64_t sub_21C815B54(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF20B0, &unk_21CBA0090);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_21C815BC4@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for PMAccountsListModel(0);
  sub_21C815A24(&qword_27CDEC988, type metadata accessor for PMAccountsListModel);
  v2 = sub_21CB82B84();
  v12 = v3;
  v13 = v2;
  type metadata accessor for PMPasswordManagerState();
  sub_21C815A24(&qword_27CDED2D0, type metadata accessor for PMPasswordManagerState);
  v4 = sub_21CB82B84();
  v6 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBEB0, &unk_21CBA5440);
  sub_21CB84D44();
  KeyPath = swift_getKeyPath();
  if (qword_27CDEA4C0 != -1)
  {
    swift_once();
  }

  sub_21CB86544();
  sub_21C7073E8(KeyPath, v14);

  type metadata accessor for PMGroupsStore();
  sub_21C815A24(&qword_27CDEB7C8, type metadata accessor for PMGroupsStore);
  v8 = sub_21CB82674();
  v10 = v9;

  sub_21CB84D44();
  result = sub_21CB84D44();
  *a1 = v13;
  *(a1 + 8) = v12;
  *(a1 + 16) = v4;
  *(a1 + 24) = v6;
  *(a1 + 32) = v14;
  *(a1 + 40) = v15;
  *(a1 + 48) = v8;
  *(a1 + 56) = v10;
  *(a1 + 64) = v14;
  *(a1 + 72) = v15;
  *(a1 + 80) = v14;
  *(a1 + 88) = v15;
  return result;
}

id sub_21C815E1C()
{
  swift_getKeyPath();
  sub_21C816EC0(&qword_27CDECCA8, _s5ModelCMa);
  sub_21CB810D4();

  v1 = *(v0 + 16);

  return v1;
}

id sub_21C815ECC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21C816EC0(&qword_27CDECCA8, _s5ModelCMa);
  sub_21CB810D4();

  v4 = *(v3 + 16);
  *a2 = v4;

  return v4;
}

void sub_21C815F84(void *a1)
{
  v2 = v1;
  v4 = *(v1 + 16);
  sub_21CB85DB4();
  v5 = v4;
  v6 = sub_21CB85DD4();

  if (v6)
  {
    v7 = *(v2 + 16);
    *(v2 + 16) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_21C816EC0(&qword_27CDECCA8, _s5ModelCMa);
    sub_21CB810C4();
  }
}

uint64_t sub_21C8160E0()
{
  v1 = OBJC_IVAR____TtCE17PasswordManagerUICSo29PMCredentialRequestPaneHeader5Model___observationRegistrar;
  v2 = sub_21CB81114();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 12);
  v4 = *(*v0 + 26);

  return swift_deallocClassInstance();
}

id PMCredentialRequestPaneHeader.init(headerConfiguration:)(void *a1)
{
  return sub_21C81641C(a1, &selRef_initWithHeaderConfiguration_);
}

{
  v2 = v1;
  v4 = _s5ModelCMa();
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  v7 = swift_allocObject();
  v8 = a1;
  sub_21CB81104();
  *(v7 + 16) = v8;
  *&v2[OBJC_IVAR___PMCredentialRequestPaneHeader_model] = v7;
  v17 = v7;
  v9 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDECC70, &qword_21CBA5450));

  v10 = sub_21CB827D4();
  [v10 setTranslatesAutoresizingMaskIntoConstraints_];
  type metadata accessor for UILayoutPriority(0);
  v16 = 1144750080;
  v15 = 1065353216;
  sub_21C816EC0(&qword_27CDECC78, type metadata accessor for UILayoutPriority);
  sub_21CB81CA4();
  LODWORD(v11) = v17;
  [v10 setContentCompressionResistancePriority:1 forAxis:v11];
  v14.receiver = v2;
  v14.super_class = PMCredentialRequestPaneHeader;
  v12 = objc_msgSendSuper2(&v14, sel_initWithView_, v10);

  return v12;
}

uint64_t _s5ModelCMa()
{
  result = qword_27CDECC80;
  if (!qword_27CDECC80)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_21C81641C(void *a1, SEL *a2)
{
  v3 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) *a2];

  return v3;
}

uint64_t sub_21C8164A4()
{
  result = sub_21CB81114();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

unint64_t type metadata accessor for PMCredentialRequestPaneHeader()
{
  result = qword_27CDECC90;
  if (!qword_27CDECC90)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27CDECC90);
  }

  return result;
}

__n128 sub_21C8165FC@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v71 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF2CA0, &unk_21CBA5520);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v63 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDECC98, &unk_21CBCB9B0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v63 - v9;
  v11 = type metadata accessor for PMOsloHeaderContentView(0);
  v12 = *(*(v11 - 1) + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v63 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF2CB0, &qword_21CBA5530);
  v15 = *(*(v66 - 8) + 64);
  MEMORY[0x28223BE20](v66);
  v68 = &v63 - v16;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDECCA0, &qword_21CBA5538);
  v17 = *(*(v67 - 8) + 64);
  MEMORY[0x28223BE20](v67);
  v70 = &v63 - v18;
  swift_getKeyPath();
  *&v72 = a1;
  sub_21C816EC0(&qword_27CDECCA8, _s5ModelCMa);
  sub_21CB810D4();

  v19 = *(a1 + 16);
  v65 = v10;
  sub_21CB85DA4();

  v20 = type metadata accessor for PMOsloBadge(0);
  v21 = *(*(v20 - 8) + 56);
  v69 = v6;
  v64 = v21;
  v21(v6, 1, 1, v20);
  swift_getKeyPath();
  *&v72 = a1;
  sub_21CB810D4();

  v22 = [*(a1 + 16) title];
  if (v22)
  {
    v23 = v22;
    v63 = sub_21CB855C4();
    v25 = v24;
  }

  else
  {
    v63 = 0;
    v25 = 0;
  }

  swift_getKeyPath();
  *&v72 = a1;
  sub_21CB810D4();

  v26 = [*(a1 + 16) subtitle];
  if (v26)
  {
    v27 = v26;
    v28 = sub_21CB855C4();
    v30 = v29;
  }

  else
  {
    v28 = 0;
    v30 = 0;
  }

  v31 = sub_21CB813C4();
  (*(*(v31 - 8) + 56))(v14, 1, 1, v31);
  v32 = v11[5];
  v64(&v14[v32], 1, 1, v20);
  v33 = &v14[v11[6]];
  v34 = &v14[v11[7]];
  sub_21C7D3344(v65, v14, &qword_27CDECC98, &unk_21CBCB9B0);
  sub_21C7D3344(v69, &v14[v32], &unk_27CDF2CA0, &unk_21CBA5520);
  *v33 = v63;
  v33[1] = v25;
  *v34 = v28;
  v34[1] = v30;
  v35 = sub_21CB83CF4();
  sub_21CB81F24();
  v37 = v36;
  v39 = v38;
  v41 = v40;
  v43 = v42;
  v44 = v68;
  sub_21C816BF4(v14, v68);
  v45 = v44 + *(v66 + 36);
  *v45 = v35;
  *(v45 + 8) = v37;
  *(v45 + 16) = v39;
  *(v45 + 24) = v41;
  *(v45 + 32) = v43;
  *(v45 + 40) = 0;
  sub_21C816C58(v14);
  v46 = sub_21CB83D04();
  sub_21CB81F24();
  v48 = v47;
  v50 = v49;
  v52 = v51;
  v54 = v53;
  v55 = v44;
  v56 = v70;
  sub_21C716934(v55, v70, &qword_27CDF2CB0, &qword_21CBA5530);
  v57 = v56 + *(v67 + 36);
  *v57 = v46;
  *(v57 + 8) = v48;
  *(v57 + 16) = v50;
  *(v57 + 24) = v52;
  *(v57 + 32) = v54;
  *(v57 + 40) = 0;
  sub_21CB85204();
  sub_21CB82AC4();
  v58 = v71;
  sub_21C716934(v56, v71, &qword_27CDECCA0, &qword_21CBA5538);
  v59 = v58 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDECCB0, &qword_21CBA5568) + 36);
  v60 = v77;
  *(v59 + 64) = v76;
  *(v59 + 80) = v60;
  *(v59 + 96) = v78;
  v61 = v73;
  *v59 = v72;
  *(v59 + 16) = v61;
  result = v75;
  *(v59 + 32) = v74;
  *(v59 + 48) = result;
  return result;
}

uint64_t sub_21C816BF4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PMOsloHeaderContentView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21C816C58(uint64_t a1)
{
  v2 = type metadata accessor for PMOsloHeaderContentView(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_21C816CB4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + 16);
  *(v1 + 16) = v2;
  v4 = v2;
}

unint64_t sub_21C816CEC()
{
  result = qword_27CDECCB8;
  if (!qword_27CDECCB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDECCB0, &qword_21CBA5568);
    sub_21C816D78();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDECCB8);
  }

  return result;
}

unint64_t sub_21C816D78()
{
  result = qword_27CDECCC0;
  if (!qword_27CDECCC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDECCA0, &qword_21CBA5538);
    sub_21C816E04();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDECCC0);
  }

  return result;
}

unint64_t sub_21C816E04()
{
  result = qword_27CDECCC8;
  if (!qword_27CDECCC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF2CB0, &qword_21CBA5530);
    sub_21C816EC0(&qword_27CDF2CF0, type metadata accessor for PMOsloHeaderContentView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDECCC8);
  }

  return result;
}

uint64_t sub_21C816EC0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_21C816F1C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21CB81DB4();

  return v1;
}

uint64_t sub_21C816F90()
{
  v1 = v0;
  v2 = sub_21CB85C44();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for PMAccountsListModel.Configuration(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21CB86484();
  sub_21C81A618(v1, v10, type metadata accessor for PMAccountsListModel.Configuration);
  v11 = (*(v3 + 48))(v10, 2, v2);
  if (v11)
  {
    MEMORY[0x21CF15F90](v11 != 1);
  }

  else
  {
    (*(v3 + 32))(v6, v10, v2);
    MEMORY[0x21CF15F90](2);
    sub_21C81A024(&qword_27CDF8950, MEMORY[0x277D49978]);
    sub_21CB85494();
    (*(v3 + 8))(v6, v2);
  }

  return sub_21CB864D4();
}

uint64_t sub_21C81718C(uint64_t a1, uint64_t a2)
{
  v4 = sub_21CB85C44();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(*(a2 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21C81A618(v2, v12, type metadata accessor for PMAccountsListModel.Configuration);
  v13 = (*(v5 + 48))(v12, 2, v4);
  if (v13)
  {
    return MEMORY[0x21CF15F90](v13 != 1);
  }

  (*(v5 + 32))(v8, v12, v4);
  MEMORY[0x21CF15F90](2);
  sub_21C81A024(&qword_27CDF8950, MEMORY[0x277D49978]);
  sub_21CB85494();
  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_21C817364(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v5 = sub_21CB85C44();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*(a2 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v13 = &v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21CB86484();
  sub_21C81A618(v4, v13, type metadata accessor for PMAccountsListModel.Configuration);
  v14 = (*(v6 + 48))(v13, 2, v5);
  if (v14)
  {
    MEMORY[0x21CF15F90](v14 != 1);
  }

  else
  {
    (*(v6 + 32))(v9, v13, v5);
    MEMORY[0x21CF15F90](2);
    sub_21C81A024(&qword_27CDF8950, MEMORY[0x277D49978]);
    sub_21CB85494();
    (*(v6 + 8))(v9, v5);
  }

  return sub_21CB864D4();
}

uint64_t sub_21C817568(uint64_t a1)
{
  v54 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAF30, &unk_21CBA07B0);
  v52 = *(v2 - 8);
  v53 = v2;
  v3 = *(v52 + 64);
  MEMORY[0x28223BE20](v2);
  v51 = &v40 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDECD60, &unk_21CBC7DB0);
  v49 = *(v5 - 8);
  v50 = v5;
  v6 = *(v49 + 64);
  MEMORY[0x28223BE20](v5);
  v48 = &v40 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDECD68, &qword_21CBA56A0);
  v46 = *(v8 - 8);
  v47 = v8;
  v9 = *(v46 + 64);
  MEMORY[0x28223BE20](v8);
  v45 = &v40 - v10;
  v11 = sub_21CB85114();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v11);
  v44 = &v40 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v43 = &v40 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAF20, &qword_21CBA07A0);
  v41 = *(v17 - 8);
  v42 = v17;
  v18 = *(v41 + 64);
  MEMORY[0x28223BE20](v17);
  v20 = &v40 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAC00, &qword_21CB9FF10);
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v21);
  v25 = &v40 - v24;
  v26 = OBJC_IVAR____TtC17PasswordManagerUI19PMAccountsListModel__accountsState;
  *(v1 + v26) = swift_getKeyPath();
  *(v1 + OBJC_IVAR____TtC17PasswordManagerUI19PMAccountsListModel_subscriptions) = MEMORY[0x277D84FA0];
  v27 = OBJC_IVAR____TtC17PasswordManagerUI19PMAccountsListModel__accounts;
  v55 = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAED8, &unk_21CBA0730);
  sub_21CB81D74();
  v28 = *(v22 + 32);
  v28(v1 + v27, v25, v21);
  v29 = OBJC_IVAR____TtC17PasswordManagerUI19PMAccountsListModel__primaryListAccounts;
  v55 = MEMORY[0x277D84F90];
  sub_21CB81D74();
  v28(v1 + v29, v25, v21);
  v30 = OBJC_IVAR____TtC17PasswordManagerUI19PMAccountsListModel__searchText;
  v55 = 0;
  v56 = 0xE000000000000000;
  sub_21CB81D74();
  (*(v41 + 32))(v1 + v30, v20, v42);
  v31 = OBJC_IVAR____TtC17PasswordManagerUI19PMAccountsListModel__editMode;
  v32 = v43;
  (*(v12 + 104))(v43, *MEMORY[0x277CDF0D8], v11);
  (*(v12 + 16))(v44, v32, v11);
  v33 = v45;
  sub_21CB81D74();
  (*(v12 + 8))(v32, v11);
  (*(v46 + 32))(v1 + v31, v33, v47);
  v34 = OBJC_IVAR____TtC17PasswordManagerUI19PMAccountsListModel__selectedAccountIDs;
  v55 = MEMORY[0x277D84FA0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDECD30, &unk_21CBA5590);
  v35 = v48;
  sub_21CB81D74();
  (*(v49 + 32))(v1 + v34, v35, v50);
  v36 = OBJC_IVAR____TtC17PasswordManagerUI19PMAccountsListModel__deleteAccountAlertConfiguration;
  v55 = 0;
  v56 = 0;
  v57 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAEF8, &unk_21CBA0740);
  v37 = v51;
  sub_21CB81D74();
  (*(v52 + 32))(v1 + v36, v37, v53);
  v38 = v54;
  sub_21C81A618(v54, v1 + OBJC_IVAR____TtC17PasswordManagerUI19PMAccountsListModel_configuration, type metadata accessor for PMAccountsListModel.Configuration);
  sub_21C817B60();
  sub_21C8182F8();
  sub_21C81A680(v38, type metadata accessor for PMAccountsListModel.Configuration);
  return v1;
}

uint64_t sub_21C817B60()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDECD70, &unk_21CBA5720);
  v33 = *(v1 - 8);
  v2 = *(v33 + 64);
  MEMORY[0x28223BE20](v1);
  v4 = &v31 - v3;
  v5 = sub_21CB85C44();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v9 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v35 = &v31 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEABF8, &unk_21CBAB590);
  v34 = *(v11 - 8);
  v12 = *(v34 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v31 - v13;
  v15 = type metadata accessor for PMAccountsListModel.Configuration(0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v18 = &v31 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21C81A618(v0 + OBJC_IVAR____TtC17PasswordManagerUI19PMAccountsListModel_configuration, v18, type metadata accessor for PMAccountsListModel.Configuration);
  v19 = (*(v6 + 48))(v18, 2, v5);
  if (v19)
  {
    v20 = v11;
    if (v19 == 1)
    {
      v21 = *(v0 + OBJC_IVAR____TtC17PasswordManagerUI19PMAccountsListModel__accountsState);
      v22 = qword_27CDEA4C0;

      if (v22 == -1)
      {
        goto LABEL_9;
      }
    }

    else
    {
      v21 = *(v0 + OBJC_IVAR____TtC17PasswordManagerUI19PMAccountsListModel__accountsState);
      v30 = qword_27CDEA4C0;

      if (v30 == -1)
      {
LABEL_9:
        sub_21CB86544();
        sub_21C7072A8(v21, v36);

        swift_beginAccess();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAC00, &qword_21CB9FF10);
        sub_21CB81D84();
        swift_endAccess();

        swift_allocObject();
        swift_weakInit();
        sub_21C6EADEC(&qword_27CDEAC08, &qword_27CDEABF8, &unk_21CBAB590);
        sub_21CB81E04();

        (*(v34 + 8))(v14, v20);
        swift_beginAccess();
        sub_21CB81CB4();
        swift_endAccess();
      }
    }

    swift_once();
    goto LABEL_9;
  }

  v34 = v1;
  v32 = *(v6 + 32);
  v32(v35, v18, v5);
  v23 = *(v0 + OBJC_IVAR____TtC17PasswordManagerUI19PMAccountsListModel__accountsState);
  v24 = qword_27CDEA4C0;

  if (v24 != -1)
  {
    swift_once();
  }

  sub_21CB86544();
  sub_21C7072A8(v23, v36);

  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDECD78, &qword_21CBA5730);
  sub_21CB81D84();
  swift_endAccess();

  v25 = swift_allocObject();
  swift_weakInit();
  (*(v6 + 16))(v9, v35, v5);
  v26 = (*(v6 + 80) + 24) & ~*(v6 + 80);
  v27 = swift_allocObject();
  *(v27 + 16) = v25;
  v32((v27 + v26), v9, v5);
  sub_21C6EADEC(&qword_27CDECD80, &qword_27CDECD70, &unk_21CBA5720);
  v28 = v34;
  sub_21CB81E04();

  (*(v33 + 8))(v4, v28);
  swift_beginAccess();
  sub_21CB81CB4();
  swift_endAccess();

  return (*(v6 + 8))(v35, v5);
}

uint64_t sub_21C8182F8()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC17PasswordManagerUI19PMAccountsListModel__accountsState;
  v3 = *(v0 + OBJC_IVAR____TtC17PasswordManagerUI19PMAccountsListModel__accountsState);
  v4 = qword_27CDEA4C0;

  if (v4 != -1)
  {
    swift_once();
  }

  sub_21CB86544();
  v5 = sub_21C7072A8(v3, v13);

  v6 = *(v5 + 32);

  v14 = v6;
  swift_allocObject();
  swift_weakInit();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAF80, &unk_21CBA0A30);
  sub_21C6EADEC(&qword_27CDEAF88, &qword_27CDEAF80, &unk_21CBA0A30);
  sub_21CB81E04();

  swift_beginAccess();
  sub_21CB81CB4();
  swift_endAccess();

  v7 = *(v1 + v2);

  sub_21CB86544();
  v8 = sub_21C7072A8(v7, v14);

  v9 = *(v8 + 40);

  v10 = swift_allocObject();
  swift_weakInit();
  v11 = swift_allocObject();
  *(v11 + 16) = sub_21C81A52C;
  *(v11 + 24) = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAF90, &qword_21CBA77E0);
  sub_21C6EADEC(&qword_27CDEAF98, &qword_27CDEAF90, &qword_21CBA77E0);
  sub_21CB81E04();

  swift_beginAccess();
  sub_21CB81CB4();
  swift_endAccess();
}

uint64_t sub_21C8185F8()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21CB81DB4();

  v1 = HIBYTE(v11) & 0xF;
  if ((v11 & 0x2000000000000000) == 0)
  {
    v1 = v10 & 0xFFFFFFFFFFFFLL;
  }

  if (v1)
  {
    v2 = *(v0 + OBJC_IVAR____TtC17PasswordManagerUI19PMAccountsListModel__accountsState);
    v3 = qword_27CDEA4C0;

    if (v3 != -1)
    {
      swift_once();
    }

    sub_21CB86544();
    v4 = sub_21C7072A8(v2, v10);

    swift_getKeyPath();
    swift_getKeyPath();
    sub_21CB81DB4();

    swift_getKeyPath();
    swift_getKeyPath();
    sub_21CB81DB4();

    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v6 = *(v4 + 24);
      ObjectType = swift_getObjectType();
      v8 = (*(v6 + 48))(ObjectType, v6);
      swift_unknownObjectRelease();
      Strong = [v8 associatedDomainsManager];
    }

    _s17PasswordManagerUI15PMAccountsStateC6filter8accounts10searchText017associatedDomainsB0SayAA9PMAccountVGAE_SDySS10SafariCore26WBSSavedAccountSearchMatchCG0H7ResultstAJ_SSSo021WBSAutoFillAssociatedkB0CSgtFZ_0(v10, v10, v11, Strong);

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

uint64_t sub_21C818908()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21CB81DB4();
}

uint64_t sub_21C818994()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21CB81DB4();

  return v1;
}

uint64_t sub_21C818A20(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_21CB81DC4();
}

uint64_t sub_21C818A9C(uint64_t a1)
{
  v2 = type metadata accessor for PMAccount(0);
  v31 = *(v2 - 8);
  v3 = *(v31 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v27 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = (&v26 - v6);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21CB81DB4();

  result = v32;
  v30 = *(v32 + 16);
  if (v30)
  {
    v9 = 0;
    v10 = a1 + 56;
    v28 = MEMORY[0x277D84F90];
    v29 = v32;
    while (v9 < *(result + 16))
    {
      v11 = (*(v31 + 80) + 32) & ~*(v31 + 80);
      v12 = *(v31 + 72);
      sub_21C81A618(result + v11 + v12 * v9, v7, type metadata accessor for PMAccount);
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

        sub_21C7D4AC0(v7, v27);
        v22 = v28;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v33 = v22;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_21C7B0C4C(0, *(v22 + 16) + 1, 1);
          v22 = v33;
        }

        v25 = *(v22 + 16);
        v24 = *(v22 + 24);
        if (v25 >= v24 >> 1)
        {
          sub_21C7B0C4C(v24 > 1, v25 + 1, 1);
          v22 = v33;
        }

        *(v22 + 16) = v25 + 1;
        v28 = v22;
        sub_21C7D4AC0(v27, v22 + v11 + v25 * v12);
      }

      else
      {
LABEL_3:
        sub_21C81A680(v7, type metadata accessor for PMAccount);
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

uint64_t sub_21C818D98(uint64_t a1)
{
  v2[9] = a1;
  v2[10] = v1;
  v3 = *(type metadata accessor for PMAccount(0) - 8);
  v2[11] = v3;
  v4 = *(v3 + 64) + 15;
  v2[12] = swift_task_alloc();
  v2[13] = sub_21CB858B4();
  v2[14] = sub_21CB858A4();
  v6 = sub_21CB85874();
  v2[15] = v6;
  v2[16] = v5;

  return MEMORY[0x2822009F8](sub_21C818E8C, v6, v5);
}

uint64_t sub_21C818E8C()
{
  v1 = *(v0 + 80);
  v2 = OBJC_IVAR____TtC17PasswordManagerUI19PMAccountsListModel__accountsState;
  *(v0 + 136) = OBJC_IVAR____TtC17PasswordManagerUI19PMAccountsListModel__accountsState;
  v3 = *(v1 + v2);
  v4 = qword_27CDEA4C0;

  if (v4 != -1)
  {
    swift_once();
  }

  *(v0 + 144) = qword_27CE18778;
  sub_21CB86544();
  v5 = sub_21C7072A8(v3, *(v0 + 48));

  if (swift_unknownObjectWeakLoadStrong())
  {
    v6 = *(v5 + 24);

    ObjectType = swift_getObjectType();
    (*(v6 + 64))(ObjectType, v6);
    swift_unknownObjectRelease();
  }

  else
  {
  }

  v8 = *(v0 + 72);
  v9 = *(v8 + 16);
  *(v0 + 152) = v9;
  if (v9)
  {
    v11 = *(v0 + 80);
    v10 = *(v0 + 88);
    v12 = *(v10 + 80);
    *(v0 + 224) = v12;
    *(v0 + 160) = *(v10 + 72);
    *(v0 + 168) = 0;
    v14 = *(v0 + 136);
    v13 = *(v0 + 144);
    v15 = *(v0 + 104);
    sub_21C81A618(v8 + ((v12 + 32) & ~v12), *(v0 + 96), type metadata accessor for PMAccount);
    v16 = *(v11 + v14);

    sub_21CB86544();
    *(v0 + 176) = sub_21C7072A8(v16, *(v0 + 56));

    *(v0 + 184) = sub_21CB858A4();
    v18 = sub_21CB85874();
    *(v0 + 192) = v18;
    *(v0 + 200) = v17;

    return MEMORY[0x2822009F8](sub_21C819144, v18, v17);
  }

  else
  {
    v19 = *(v0 + 136);
    v20 = *(v0 + 144);
    v21 = *(v0 + 112);
    v22 = *(v0 + 80);

    v23 = *(v22 + v19);

    sub_21CB86544();
    v24 = sub_21C7072A8(v23, *(v0 + 64));

    if (swift_unknownObjectWeakLoadStrong())
    {
      v25 = *(v24 + 24);
      v26 = swift_getObjectType();
      (*(v25 + 72))(v26, v25);
      swift_unknownObjectRelease();
    }

    v27 = *(v0 + 96);

    v28 = *(v0 + 8);

    return v28();
  }
}

uint64_t sub_21C819144()
{
  v1 = v0[22];
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[26] = Strong;
  if (Strong)
  {
    v3 = *(v0[22] + 24);
    ObjectType = swift_getObjectType();
    v5 = *(v3 + 96);
    v14 = (v5 + *v5);
    v6 = v5[1];
    v7 = swift_task_alloc();
    v0[27] = v7;
    *v7 = v0;
    v7[1] = sub_21C8192CC;
    v8 = v0[12];

    return v14(3, v8, ObjectType, v3);
  }

  else
  {
    v10 = v0[22];
    v11 = v0[23];

    v12 = v0[15];
    v13 = v0[16];

    return MEMORY[0x2822009F8](sub_21C81947C, v12, v13);
  }
}

uint64_t sub_21C8192CC()
{
  v1 = *v0;
  v2 = *(*v0 + 216);
  v3 = *(*v0 + 208);
  v7 = *v0;

  swift_unknownObjectRelease();
  v4 = *(v1 + 200);
  v5 = *(v1 + 192);

  return MEMORY[0x2822009F8](sub_21C819410, v5, v4);
}

uint64_t sub_21C819410()
{
  v1 = v0[22];
  v2 = v0[23];

  v3 = v0[15];
  v4 = v0[16];

  return MEMORY[0x2822009F8](sub_21C81947C, v3, v4);
}

uint64_t sub_21C81947C()
{
  v27 = *(v0 + 152);
  v1 = *(v0 + 96);
  v2 = *(v0 + 80);
  v3 = *(v0 + 168) + 1;
  v4 = *v1;
  v5 = v1[1];
  swift_getKeyPath();
  swift_getKeyPath();
  v6 = sub_21CB81DA4();
  sub_21CB4BAE4(v4, v5);

  v6(v0 + 16, 0);

  sub_21C81A680(v1, type metadata accessor for PMAccount);
  if (v3 == v27)
  {
    v7 = *(v0 + 136);
    v8 = *(v0 + 144);
    v9 = *(v0 + 112);
    v10 = *(v0 + 80);

    v11 = *(v10 + v7);

    sub_21CB86544();
    v12 = sub_21C7072A8(v11, *(v0 + 64));

    if (swift_unknownObjectWeakLoadStrong())
    {
      v13 = *(v12 + 24);
      ObjectType = swift_getObjectType();
      (*(v13 + 72))(ObjectType, v13);
      swift_unknownObjectRelease();
    }

    v15 = *(v0 + 96);

    v16 = *(v0 + 8);

    return v16();
  }

  else
  {
    v18 = *(v0 + 160);
    v19 = *(v0 + 168) + 1;
    *(v0 + 168) = v19;
    v21 = *(v0 + 136);
    v20 = *(v0 + 144);
    v22 = *(v0 + 104);
    v23 = *(v0 + 80);
    sub_21C81A618(*(v0 + 72) + ((*(v0 + 224) + 32) & ~*(v0 + 224)) + v18 * v19, *(v0 + 96), type metadata accessor for PMAccount);
    v24 = *(v23 + v21);

    sub_21CB86544();
    *(v0 + 176) = sub_21C7072A8(v24, *(v0 + 56));

    *(v0 + 184) = sub_21CB858A4();
    v26 = sub_21CB85874();
    *(v0 + 192) = v26;
    *(v0 + 200) = v25;

    return MEMORY[0x2822009F8](sub_21C819144, v26, v25);
  }
}

uint64_t sub_21C819730()
{
  v0 = type metadata accessor for PMAccount(0);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v4 = (&v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21CB81DB4();

  v5 = *(v10 + 16);

  result = 0;
  if (v5 == 1)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_21CB81DB4();

    if (*(v10 + 16))
    {
      sub_21C81A618(v10 + ((*(v1 + 80) + 32) & ~*(v1 + 80)), v4, type metadata accessor for PMAccount);

      v8 = *v4;
      v7 = v4[1];

      sub_21C81A680(v4, type metadata accessor for PMAccount);
      return v8;
    }

    else
    {

      return 0;
    }
  }

  return result;
}

uint64_t sub_21C8198F4(uint64_t *a1)
{
  v1 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    swift_getKeyPath();
    swift_getKeyPath();

    sub_21CB81DC4();
    sub_21C8185F8();
  }

  return result;
}

uint64_t sub_21C8199A0(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v4 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if (*(v4 + 16))
    {
      v6 = sub_21CB10A54(a3);
      if (v7)
      {
        v8 = *(*(v4 + 56) + 8 * v6);
      }
    }

    swift_getKeyPath();
    swift_getKeyPath();

    sub_21CB81DC4();
    sub_21C8185F8();
  }

  return result;
}

uint64_t sub_21C819A7C(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAFA8, &unk_21CBA0C70);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_21CBA0690;
    *(inited + 32) = v2;
    *(inited + 40) = v1;

    sub_21C8D7470(inited);
    swift_setDeallocating();
    sub_21C81A534(inited + 32);
    swift_getKeyPath();
    swift_getKeyPath();
    return sub_21CB81DC4();
  }

  return result;
}

uint64_t sub_21C819B6C(uint64_t *a1, uint64_t *a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_21CB81DB4();

    v6 = *a1;
    v5 = a1[1];
    v7 = sub_21C8FFAE0(v6, v5, v13[0]);

    if (v7)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      v8 = sub_21CB81DA4();
      sub_21CB4BAE4(v6, v5);

      v8(v13, 0);

      v9 = *a2;
      v10 = a2[1];
      swift_getKeyPath();
      swift_getKeyPath();

      v11 = sub_21CB81DA4();
      sub_21CA94078(&v12, v9, v10);

      v11(v13, 0);
    }
  }

  return result;
}

uint64_t sub_21C819D60()
{
  sub_21C81A680(v0 + OBJC_IVAR____TtC17PasswordManagerUI19PMAccountsListModel_configuration, type metadata accessor for PMAccountsListModel.Configuration);
  v1 = *(v0 + OBJC_IVAR____TtC17PasswordManagerUI19PMAccountsListModel__accountsState);

  v2 = *(v0 + OBJC_IVAR____TtC17PasswordManagerUI19PMAccountsListModel_subscriptions);

  v3 = OBJC_IVAR____TtC17PasswordManagerUI19PMAccountsListModel__accounts;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAC00, &qword_21CB9FF10);
  v5 = *(*(v4 - 8) + 8);
  v5(v0 + v3, v4);
  v5(v0 + OBJC_IVAR____TtC17PasswordManagerUI19PMAccountsListModel__primaryListAccounts, v4);
  v6 = OBJC_IVAR____TtC17PasswordManagerUI19PMAccountsListModel__searchText;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAF20, &qword_21CBA07A0);
  (*(*(v7 - 8) + 8))(v0 + v6, v7);
  v8 = OBJC_IVAR____TtC17PasswordManagerUI19PMAccountsListModel__editMode;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDECD68, &qword_21CBA56A0);
  (*(*(v9 - 8) + 8))(v0 + v8, v9);
  v10 = OBJC_IVAR____TtC17PasswordManagerUI19PMAccountsListModel__selectedAccountIDs;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDECD60, &unk_21CBC7DB0);
  (*(*(v11 - 8) + 8))(v0 + v10, v11);
  v12 = OBJC_IVAR____TtC17PasswordManagerUI19PMAccountsListModel__deleteAccountAlertConfiguration;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAF30, &unk_21CBA07B0);
  (*(*(v13 - 8) + 8))(v0 + v12, v13);
  v14 = *(*v0 + 48);
  v15 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_21C81A024(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_21C81A06C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  sub_21CB81DC4();
  return sub_21C8185F8();
}

uint64_t sub_21C81A0EC(uint64_t a1, uint64_t a2)
{
  v4 = sub_21CB85C44();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for PMAccountsListModel.Configuration(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDECD50, &qword_21CBA5650);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = v25 - v15;
  v18 = *(v17 + 56);
  sub_21C81A618(a1, v25 - v15, type metadata accessor for PMAccountsListModel.Configuration);
  sub_21C81A618(a2, &v16[v18], type metadata accessor for PMAccountsListModel.Configuration);
  v19 = *(v5 + 48);
  v20 = v19(v16, 2, v4);
  if (v20)
  {
    if (v20 == 1)
    {
      if (v19(&v16[v18], 2, v4) == 1)
      {
        goto LABEL_14;
      }

      goto LABEL_8;
    }

    if (v19(&v16[v18], 2, v4) != 2)
    {
LABEL_8:
      sub_21C81A4BC(v16);
      return 0;
    }
  }

  else
  {
    sub_21C81A618(v16, v12, type metadata accessor for PMAccountsListModel.Configuration);
    if (v19(&v16[v18], 2, v4))
    {
      (*(v5 + 8))(v12, v4);
      goto LABEL_8;
    }

    (*(v5 + 32))(v8, &v16[v18], v4);
    sub_21C81A024(&qword_27CDECD58, MEMORY[0x277D49978]);
    sub_21CB857F4();
    sub_21CB857F4();
    if (v25[2] == v25[0] && v25[3] == v25[1])
    {
      v22 = *(v5 + 8);
      v22(v8, v4);

      v22(v12, v4);
    }

    else
    {
      v23 = sub_21CB86344();
      v24 = *(v5 + 8);
      v24(v8, v4);

      v24(v12, v4);
      if ((v23 & 1) == 0)
      {
        sub_21C81A680(v16, type metadata accessor for PMAccountsListModel.Configuration);
        return 0;
      }
    }
  }

LABEL_14:
  sub_21C81A680(v16, type metadata accessor for PMAccountsListModel.Configuration);
  return 1;
}

uint64_t sub_21C81A4BC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDECD50, &qword_21CBA5650);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21C81A588(uint64_t *a1)
{
  v3 = *(sub_21CB85C44() - 8);
  v4 = *(v1 + 16);
  v5 = v1 + ((*(v3 + 80) + 24) & ~*(v3 + 80));

  return sub_21C8199A0(a1, v4, v5);
}

uint64_t sub_21C81A618(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21C81A680(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_21C81A708(uint64_t a1)
{
  v2 = sub_21CB82484();
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2);
  (*(v6 + 16))(&v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v4);
  return sub_21CB82ED4();
}

uint64_t sub_21C81A7D0()
{
  swift_getKeyPath();
  sub_21C81C608(&qword_27CDECDA0, type metadata accessor for PMPasswordOptionsDefaultAppsProvider);
  sub_21CB810D4();

  swift_beginAccess();
  v1 = *(v0 + 24);
}

uint64_t sub_21C81A888@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21C81C608(&qword_27CDECDA0, type metadata accessor for PMPasswordOptionsDefaultAppsProvider);
  sub_21CB810D4();

  swift_beginAccess();
  *a2 = *(v3 + 24);
}

uint64_t sub_21C81A948(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 24);

  v5 = sub_21C7A230C(v4, a1);

  if (v5)
  {
    v6 = *(v1 + 24);
    *(v1 + 24) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_21C81C608(&qword_27CDECDA0, type metadata accessor for PMPasswordOptionsDefaultAppsProvider);
    sub_21CB810C4();
  }
}

uint64_t sub_21C81AA90(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v4 = *(a1 + 24);
  *(a1 + 24) = a2;
}

uint64_t PMPasswordOptionsDefaultAppsProvider.__allocating_init()()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  PMPasswordOptionsDefaultAppsProvider.init()();
  return v3;
}

void *PMPasswordOptionsDefaultAppsProvider.init()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDECD88, &qword_21CBA5860);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v20 - v5;
  v7 = sub_21CB81024();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  KeyPath = swift_getKeyPath();
  v1[3] = MEMORY[0x277D84FA0];
  v1[2] = KeyPath;
  v1[4] = 0xD000000000000022;
  v1[5] = 0x800000021CB8FFA0;
  sub_21CB81014();
  v13 = sub_21CB81004();
  v15 = v14;
  (*(v8 + 8))(v11, v7);
  v1[6] = v13;
  v1[7] = v15;
  v1[8] = 0;
  v1[9] = 0;
  sub_21CB81104();
  v16 = v1[2];
  v17 = qword_27CDEA4C0;

  if (v17 != -1)
  {
    swift_once();
  }

  sub_21CB86544();
  v18 = sub_21C704E64(v16, v21, type metadata accessor for PMCredentialProviderExtensionManager);

  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF2220, &qword_21CBA5890);
  sub_21CB81D84();
  swift_endAccess();

  swift_allocObject();
  swift_weakInit();
  sub_21C81C3BC();
  sub_21CB81E04();

  (*(v3 + 8))(v6, v2);
  swift_getKeyPath();
  v21 = v1;
  sub_21C81C608(&qword_27CDECDA0, type metadata accessor for PMPasswordOptionsDefaultAppsProvider);
  sub_21CB810D4();

  v21 = v1;
  swift_getKeyPath();
  sub_21CB810F4();

  swift_beginAccess();
  sub_21CB81CB4();
  swift_endAccess();

  v21 = v1;
  swift_getKeyPath();
  sub_21CB810E4();

  return v1;
}

uint64_t PMPasswordOptionsDefaultAppsProvider.localizedTitle.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 48) == a1 && *(v2 + 56) == a2;
  if (v5 || (v6 = *(v2 + 56), (sub_21CB86344() & 1) != 0))
  {
    *(v2 + 48) = a1;
    *(v2 + 56) = a2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_21C81C608(&qword_27CDECDA0, type metadata accessor for PMPasswordOptionsDefaultAppsProvider);
    sub_21CB810C4();
  }
}

uint64_t sub_21C81B0A4(uint64_t a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      v4 = sub_21C81B168(v1, v2);
      v6 = v5;
    }

    else
    {
      v4 = 0;
      v6 = 0;
    }

    PMPasswordOptionsDefaultAppsProvider.localizedDetail.setter(v4, v6);
  }

  return result;
}

uint64_t sub_21C81B168(uint64_t a1, char a2)
{
  v5 = sub_21CB81024();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = &v30 - v12;
  if (a2)
  {
    return 0;
  }

  if (a1 == 1)
  {
    v18 = v11;
    v19 = *(v2 + 16);
    v20 = qword_27CDEA4C0;

    if (v20 != -1)
    {
      swift_once();
    }

    sub_21CB86544();
    v21 = sub_21C704E64(v19, v31, type metadata accessor for PMCredentialProviderExtensionManager);

    sub_21C953EA0();
    v23 = v22;

    if (*(v23 + 16))
    {
      v24 = *(v23 + 32);

      v25 = [objc_opt_self() sharedManager];
      v26 = [v25 displayNameForExtension_];

      v27 = sub_21CB855C4();
    }

    else
    {

      v28 = (v6 + 8);
      [objc_opt_self() isPasswordsAppInstalled];
      sub_21CB81014();
      sub_21CB81014();
      v27 = sub_21CB80FF4();
      v29 = *(v6 + 8);
      (*v28)(v9, v18);
      v29(v13, v18);
    }

    return v27;
  }

  else if (a1)
  {
    v31 = a1;
    return sub_21CB862F4();
  }

  else
  {
    v15 = v11;
    sub_21CB81014();
    sub_21CB81014();
    v16 = sub_21CB80FF4();
    v17 = *(v6 + 8);
    v17(v9, v15);
    v17(v13, v15);
    return v16;
  }
}

uint64_t PMPasswordOptionsDefaultAppsProvider.localizedDetail.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 72);
  if (v5)
  {
    if (a2)
    {
      if (*(v2 + 64) == a1 && v5 == a2)
      {
        goto LABEL_8;
      }

      v7 = *(v2 + 72);
      if (sub_21CB86344())
      {
        goto LABEL_8;
      }
    }
  }

  else if (!a2)
  {
LABEL_8:
    *(v2 + 64) = a1;
    *(v2 + 72) = a2;
  }

  KeyPath = swift_getKeyPath();
  MEMORY[0x28223BE20](KeyPath);
  sub_21C81C608(&qword_27CDECDA0, type metadata accessor for PMPasswordOptionsDefaultAppsProvider);
  sub_21CB810C4();
}

uint64_t PMPasswordOptionsDefaultAppsProvider.id.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

uint64_t PMPasswordOptionsDefaultAppsProvider.localizedTitle.getter()
{
  swift_getKeyPath();
  v4 = v0;
  sub_21C81C608(&qword_27CDECDA0, type metadata accessor for PMPasswordOptionsDefaultAppsProvider);
  sub_21CB810D4();

  swift_beginAccess();
  v2 = *(v0 + 48);
  v1 = *(v4 + 56);

  return v2;
}

uint64_t sub_21C81B764@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21C81C608(&qword_27CDECDA0, type metadata accessor for PMPasswordOptionsDefaultAppsProvider);
  sub_21CB810D4();

  swift_beginAccess();
  v4 = *(v3 + 56);
  *a2 = *(v3 + 48);
  a2[1] = v4;
}

uint64_t sub_21C81B824(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;

  return PMPasswordOptionsDefaultAppsProvider.localizedTitle.setter(v2, v3);
}

uint64_t sub_21C81B864(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  v6 = *(a1 + 56);
  *(a1 + 48) = a2;
  *(a1 + 56) = a3;
}

void (*PMPasswordOptionsDefaultAppsProvider.localizedTitle.modify(uint64_t *a1))(void **a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  swift_getKeyPath();
  v4[4] = OBJC_IVAR____TtC17PasswordManagerUI36PMPasswordOptionsDefaultAppsProvider___observationRegistrar;
  *v4 = v1;
  v4[5] = sub_21C81C608(&qword_27CDECDA0, type metadata accessor for PMPasswordOptionsDefaultAppsProvider);
  sub_21CB810D4();

  *v4 = v1;
  swift_getKeyPath();
  sub_21CB810F4();

  swift_beginAccess();
  return sub_21C81BA10;
}

uint64_t PMPasswordOptionsDefaultAppsProvider.localizedDetail.getter()
{
  swift_getKeyPath();
  v4 = v0;
  sub_21C81C608(&qword_27CDECDA0, type metadata accessor for PMPasswordOptionsDefaultAppsProvider);
  sub_21CB810D4();

  swift_beginAccess();
  v2 = *(v0 + 64);
  v1 = *(v4 + 72);

  return v2;
}

uint64_t sub_21C81BAE0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21C81C608(&qword_27CDECDA0, type metadata accessor for PMPasswordOptionsDefaultAppsProvider);
  sub_21CB810D4();

  swift_beginAccess();
  v4 = *(v3 + 72);
  *a2 = *(v3 + 64);
  a2[1] = v4;
}

uint64_t sub_21C81BBA0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;

  return PMPasswordOptionsDefaultAppsProvider.localizedDetail.setter(v2, v3);
}

uint64_t sub_21C81BBE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  v6 = *(a1 + 72);
  *(a1 + 64) = a2;
  *(a1 + 72) = a3;
}

void (*PMPasswordOptionsDefaultAppsProvider.localizedDetail.modify(uint64_t *a1))(void **a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  swift_getKeyPath();
  v4[4] = OBJC_IVAR____TtC17PasswordManagerUI36PMPasswordOptionsDefaultAppsProvider___observationRegistrar;
  *v4 = v1;
  v4[5] = sub_21C81C608(&qword_27CDECDA0, type metadata accessor for PMPasswordOptionsDefaultAppsProvider);
  sub_21CB810D4();

  *v4 = v1;
  swift_getKeyPath();
  sub_21CB810F4();

  swift_beginAccess();
  return sub_21C81BD8C;
}

void sub_21C81BD98(void **a1)
{
  v1 = *a1;
  swift_endAccess();
  v2 = v1[4];
  v3 = v1[5];
  *v1 = v1[3];
  swift_getKeyPath();
  sub_21CB810E4();

  free(v1);
}

uint64_t PMPasswordOptionsDefaultAppsProvider.content.getter@<X0>(uint64_t a1@<X8>)
{
  *a1 = sub_21CACCB64;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = sub_21C95FA68;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDECDA8, &qword_21CBA5910);
  sub_21CB84D44();
  *(a1 + 48) = v7;
  v2 = type metadata accessor for PMPasswordOptionsDefaultAppsView();
  v3 = *(v2 + 28);
  *(a1 + v3) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBDA0, &qword_21CBA0550);
  swift_storeEnumTagMultiPayload();
  v4 = *(v2 + 32);
  v5 = [objc_opt_self() pm_defaults];
  result = sub_21CB81E74();
  *(a1 + v4) = result;
  return result;
}

char *PMPasswordOptionsDefaultAppsProvider.deinit()
{
  v1 = *(v0 + 2);

  v2 = *(v0 + 3);

  v3 = *(v0 + 5);

  v4 = *(v0 + 7);

  v5 = *(v0 + 9);

  v6 = OBJC_IVAR____TtC17PasswordManagerUI36PMPasswordOptionsDefaultAppsProvider___observationRegistrar;
  v7 = sub_21CB81114();
  (*(*(v7 - 8) + 8))(&v0[v6], v7);
  return v0;
}

uint64_t PMPasswordOptionsDefaultAppsProvider.__deallocating_deinit()
{
  v1 = *(v0 + 2);

  v2 = *(v0 + 3);

  v3 = *(v0 + 5);

  v4 = *(v0 + 7);

  v5 = *(v0 + 9);

  v6 = OBJC_IVAR____TtC17PasswordManagerUI36PMPasswordOptionsDefaultAppsProvider___observationRegistrar;
  v7 = sub_21CB81114();
  (*(*(v7 - 8) + 8))(&v0[v6], v7);
  v8 = *(*v0 + 48);
  v9 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_21C81C088()
{
  v1 = *(*v0 + 32);
  v2 = *(*v0 + 40);

  return v1;
}

uint64_t sub_21C81C0C0()
{
  v1 = *v0;
  swift_getKeyPath();
  sub_21C81C608(&qword_27CDECDA0, type metadata accessor for PMPasswordOptionsDefaultAppsProvider);
  sub_21CB810D4();

  swift_beginAccess();
  v2 = *(v1 + 48);
  v3 = *(v1 + 56);

  return v2;
}

uint64_t sub_21C81C184()
{
  v1 = *v0;
  swift_getKeyPath();
  sub_21C81C608(&qword_27CDECDA0, type metadata accessor for PMPasswordOptionsDefaultAppsProvider);
  sub_21CB810D4();

  swift_beginAccess();
  v2 = *(v1 + 64);
  v3 = *(v1 + 72);

  return v2;
}

void *sub_21C81C264@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  v5 = swift_allocObject();
  result = PMPasswordOptionsDefaultAppsProvider.init()();
  *a1 = v5;
  return result;
}

uint64_t sub_21C81C2A8@<X0>(void *a1@<X8>)
{
  v2 = *(*v1 + 40);
  *a1 = *(*v1 + 32);
  a1[1] = v2;
}

id sub_21C81C340@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  result = sub_21C95C934();
  *a2 = result;
  return result;
}

void sub_21C81C36C(void **a1, uint64_t a2)
{
  v2 = *a1;
  v4 = *(*a2 + 32);
  *(*a2 + 32) = *a1;
  v3 = v2;
}

unint64_t sub_21C81C3BC()
{
  result = qword_27CDECD98;
  if (!qword_27CDECD98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDECD88, &qword_21CBA5860);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDECD98);
  }

  return result;
}

uint64_t type metadata accessor for PMPasswordOptionsDefaultAppsProvider()
{
  result = qword_27CDECDB8;
  if (!qword_27CDECDB8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21C81C518()
{
  result = sub_21CB81114();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_21C81C608(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_21C81C670(uint64_t a1)
{
  v1 = *(a1 + 88);
  result = sub_21CB85E54();
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

uint64_t sub_21C81C704()
{
  v1 = *(*v0 + 104);
  v2 = *(*v0 + 88);
  v3 = sub_21CB85E54();
  (*(*(v3 - 8) + 8))(v0 + v1, v3);
  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_21C81C7DC()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  (*(*(*(*v3 + 88) - 8) + 56))(v3 + *(*v3 + 104), 1, 1);
  return v3;
}

unint64_t sub_21C81C870()
{
  result = type metadata accessor for PMAccountsListModel.Configuration(319);
  if (v1 <= 0x3F)
  {
    result = sub_21C7226D8();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_21C81C93C(uint64_t a1)
{
  result = type metadata accessor for PMAccountsListModel.Configuration(319);
  if (v3 <= 0x3F)
  {
    result = sub_21C7226D8();
    if (v4 <= 0x3F)
    {
      v5 = *(a1 + 16);
      type metadata accessor for PMAccountsListModel(255);
      v6 = *(a1 + 24);
      type metadata accessor for _PMAccountsListModelView.Storage();
      result = sub_21CB84D84();
      if (v7 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for PMAccountsListModel.Configuration(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 36));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t __swift_store_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for PMAccountsListModel.Configuration(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 36)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_21C81CBF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for _PMAccountsListModelView();
  v9 = (a4 + *(v8 + 40));
  type metadata accessor for PMAccountsListModel(255);
  type metadata accessor for _PMAccountsListModelView.Storage();
  v10 = *sub_21C81C7DC();
  sub_21CB84D44();
  *v9 = v13;
  v9[1] = v14;
  result = sub_21C81D4F0(a1, a4);
  v12 = (a4 + *(v8 + 36));
  *v12 = a2;
  v12[1] = a3;
  return result;
}

uint64_t sub_21C81CCE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v25[1] = a2;
  v4 = *(a1 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](a1);
  v8 = v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDED1C0, &qword_21CBA5BF8);
  v9 = sub_21CB828F4();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v14);
  v17 = v25 - v16;
  v18 = v2 + *(a1 + 36);
  v19 = *(v18 + 8);
  (*v18)(v15);
  sub_21C81CF80(a1);
  type metadata accessor for PMAccountsListModel(0);
  v20 = *(a1 + 24);
  sub_21C81D554(&qword_27CDEC988, type metadata accessor for PMAccountsListModel);
  sub_21CB84384();

  (*(v5 + 8))(v8, v4);
  v21 = sub_21C81D59C();
  v25[2] = v20;
  v25[3] = v21;
  WitnessTable = swift_getWitnessTable();
  sub_21C72BE10(v13, v9, WitnessTable);
  v23 = *(v10 + 8);
  v23(v13, v9);
  sub_21C72BE10(v17, v9, WitnessTable);
  return (v23)(v17, v9);
}

uint64_t sub_21C81CF80(uint64_t a1)
{
  v2 = v1;
  v4 = (v1 + *(a1 + 40));
  v10 = *v4;
  v11 = v4[1];
  v5 = *(a1 + 16);
  type metadata accessor for PMAccountsListModel(255);
  v6 = *(a1 + 24);
  type metadata accessor for _PMAccountsListModelView.Storage();
  sub_21CB84D84();
  sub_21CB84D54();
  v7 = *(v9 + 16);

  result = v7;
  if (!v7)
  {
    return sub_21C81D02C(v2, a1);
  }

  return result;
}

uint64_t sub_21C81D02C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for PMAccountsListModel.Configuration(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21C81D48C(a1, v9);
  v10 = type metadata accessor for PMAccountsListModel(0);
  v11 = *(v10 + 48);
  v12 = *(v10 + 52);
  swift_allocObject();
  v13 = sub_21C817568(v9);
  v14 = (v3 + *(a2 + 40));
  v16 = *v14;
  v15 = v14[1];
  v23 = v16;
  v24 = v15;
  v17 = *(a2 + 16);
  v18 = *(a2 + 24);
  type metadata accessor for _PMAccountsListModelView.Storage();
  sub_21CB84D84();
  sub_21CB84D54();
  v19 = *(v22 + 16);
  *(v22 + 16) = v13;

  return v13;
}

uint64_t sub_21C81D18C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v35 = a2;
  v4 = type metadata accessor for PMAccountsListModel.Configuration(0);
  v31 = v4;
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 16);
  v32 = *(a1 + 24);
  v33 = v8;
  v9 = type metadata accessor for _PMAccountsListModelView();
  v34 = *(v9 - 8);
  v10 = *(v34 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v28 - v11;
  WitnessTable = swift_getWitnessTable();
  v30 = WitnessTable;
  v29 = sub_21C81D554(&qword_27CDECF58, type metadata accessor for PMAccountsListModel.Configuration);
  v36 = v9;
  v37 = v4;
  v38 = WitnessTable;
  v39 = v29;
  v14 = sub_21CB84E24();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v28 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v21 = &v28 - v20;
  sub_21C81D48C(v2, v7);
  v22 = (v2 + *(a1 + 36));
  v24 = *v22;
  v23 = v22[1];

  sub_21C81CBF4(v7, v24, v23, v12);
  sub_21CB84694();
  (*(v34 + 8))(v12, v9);
  v25 = swift_getWitnessTable();
  sub_21C72BE10(v18, v14, v25);
  v26 = *(v15 + 8);
  v26(v18, v14);
  sub_21C72BE10(v21, v14, v25);
  return (v26)(v21, v14);
}

uint64_t sub_21C81D48C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PMAccountsListModel.Configuration(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21C81D4F0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PMAccountsListModel.Configuration(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21C81D554(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_21C81D59C()
{
  result = qword_27CDECF60;
  if (!qword_27CDECF60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDED1C0, &qword_21CBA5BF8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDECF60);
  }

  return result;
}

uint64_t sub_21C81D60C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 9))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_21C81D654(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_21C81D6C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v55 = a4;
  v60 = type metadata accessor for PMAppSourceListRowLabelStyle();
  v7 = *(*(v60 - 8) + 64);
  MEMORY[0x28223BE20](v60);
  v9 = (&v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = sub_21CB838C4();
  v50 = *(v10 - 8);
  v11 = *(v50 + 64);
  MEMORY[0x28223BE20](v10);
  v49 = &v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDECF68, &qword_21CBA5CD0);
  v52 = *(v58 - 8);
  v13 = *(v52 + 64);
  MEMORY[0x28223BE20](v58);
  v51 = &v47 - v14;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDECF70, &qword_21CBA5CD8);
  v54 = *(v59 - 8);
  v15 = *(v54 + 64);
  MEMORY[0x28223BE20](v59);
  v53 = &v47 - v16;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDECF78, &qword_21CBA5CE0);
  v17 = *(*(v56 - 8) + 64);
  MEMORY[0x28223BE20](v56);
  v19 = &v47 - v18;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDECF80, &qword_21CBA5CE8);
  v20 = *(*(v57 - 8) + 64);
  MEMORY[0x28223BE20](v57);
  v22 = &v47 - v21;
  v23 = sub_21CB82F84();
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  v26 = MEMORY[0x28223BE20](v23);
  v28 = &v47 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a3)
  {
    if ((a2 & 1) == 0)
    {
LABEL_3:
      *v22 = sub_21CB83074();
      *(v22 + 1) = 0;
      v22[16] = 1;
      v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDECFA0, &qword_21CBA5D58);
      sub_21C81DDC4(&v22[*(v29 + 44)]);
      sub_21C6EDBAC(v22, v19, &qword_27CDECF80, &qword_21CBA5CE8);
      swift_storeEnumTagMultiPayload();
      sub_21C6EADEC(&qword_27CDECF98, &qword_27CDECF80, &qword_21CBA5CE8);
      v30 = sub_21C6EADEC(&qword_27CDECF88, &qword_27CDECF68, &qword_21CBA5CD0);
      v31 = sub_21C81E10C();
      v61 = v58;
      v62 = v60;
      v63 = v30;
      v64 = v31;
      swift_getOpaqueTypeConformance2();
      sub_21CB83494();
      return sub_21C6EA794(v22, &qword_27CDECF80, &qword_21CBA5CE8);
    }
  }

  else
  {

    sub_21CB85B04();
    v33 = sub_21CB83C94();
    v48 = v9;
    v34 = v19;
    v35 = v10;
    v36 = a1;
    v37 = v33;
    sub_21CB81C14();

    a1 = v36;
    v10 = v35;
    v19 = v34;
    v9 = v48;
    sub_21CB82F74();
    swift_getAtKeyPath();
    sub_21C7025C4(a2, 0);
    (*(v24 + 8))(v28, v23);
    if ((v61 & 1) == 0)
    {
      goto LABEL_3;
    }
  }

  (*(v50 + 16))(v49, a1, v10, v26);
  v38 = v51;
  sub_21CB84C94();
  *v9 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBC90, &qword_21CBA5D20);
  swift_storeEnumTagMultiPayload();
  v39 = v60;
  v40 = v9 + *(v60 + 20);
  *v40 = swift_getKeyPath();
  v40[8] = 0;
  *(v9 + *(v39 + 24)) = 1;
  v41 = sub_21C6EADEC(&qword_27CDECF88, &qword_27CDECF68, &qword_21CBA5CD0);
  v42 = sub_21C81E10C();
  v43 = v53;
  v44 = v58;
  sub_21CB840E4();
  sub_21C81E164(v9);
  (*(v52 + 8))(v38, v44);
  v45 = v54;
  v46 = v59;
  (*(v54 + 16))(v19, v43, v59);
  swift_storeEnumTagMultiPayload();
  sub_21C6EADEC(&qword_27CDECF98, &qword_27CDECF80, &qword_21CBA5CE8);
  v61 = v44;
  v62 = v39;
  v63 = v41;
  v64 = v42;
  swift_getOpaqueTypeConformance2();
  sub_21CB83494();
  return (*(v45 + 8))(v43, v46);
}

uint64_t sub_21C81DDC4@<X0>(uint64_t a1@<X8>)
{
  v36 = a1;
  v1 = sub_21CB838A4();
  v35 = *(v1 - 8);
  v2 = v35;
  v3 = *(v35 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v35 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDECFA8, &qword_21CBA5D60);
  v10 = v9 - 8;
  v11 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v35 - v15;
  sub_21CB83894();
  v17 = sub_21CB83E44();
  KeyPath = swift_getKeyPath();
  v19 = &v16[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDECFB0, &qword_21CBA5D98) + 36)];
  *v19 = KeyPath;
  v19[1] = v17;
  v20 = sub_21CB84A34();
  v21 = swift_getKeyPath();
  v22 = &v16[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDECFB8, &qword_21CBA5DD0) + 36)];
  *v22 = v21;
  v22[1] = v20;
  sub_21CB85214();
  sub_21CB82374();
  v23 = &v16[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDECFC0, &qword_21CBA5DD8) + 36)];
  v24 = v38;
  *v23 = v37;
  *(v23 + 1) = v24;
  *(v23 + 2) = v39;
  LOBYTE(v20) = sub_21CB83D34();
  sub_21CB81F24();
  v25 = &v16[*(v10 + 44)];
  *v25 = v20;
  *(v25 + 1) = v26;
  *(v25 + 2) = v27;
  *(v25 + 3) = v28;
  *(v25 + 4) = v29;
  v25[40] = 0;
  sub_21CB838B4();
  sub_21C6EDBAC(v16, v13, &qword_27CDECFA8, &qword_21CBA5D60);
  v30 = *(v2 + 16);
  v30(v5, v8, v1);
  v31 = v36;
  sub_21C6EDBAC(v13, v36, &qword_27CDECFA8, &qword_21CBA5D60);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDECFC8, &qword_21CBA5DE0);
  v30((v31 + *(v32 + 48)), v5, v1);
  v33 = *(v35 + 8);
  v33(v8, v1);
  sub_21C6EA794(v16, &qword_27CDECFA8, &qword_21CBA5D60);
  v33(v5, v1);
  return sub_21C6EA794(v13, &qword_27CDECFA8, &qword_21CBA5D60);
}

unint64_t sub_21C81E10C()
{
  result = qword_27CDECF90;
  if (!qword_27CDECF90)
  {
    type metadata accessor for PMAppSourceListRowLabelStyle();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDECF90);
  }

  return result;
}

uint64_t sub_21C81E164(uint64_t a1)
{
  v2 = type metadata accessor for PMAppSourceListRowLabelStyle();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_21C81E1C0()
{
  result = qword_27CDECFD0;
  if (!qword_27CDECFD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDECFD8, &qword_21CBA5DE8);
    sub_21C6EADEC(&qword_27CDECF98, &qword_27CDECF80, &qword_21CBA5CE8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDECF68, &qword_21CBA5CD0);
    type metadata accessor for PMAppSourceListRowLabelStyle();
    sub_21C6EADEC(&qword_27CDECF88, &qword_27CDECF68, &qword_21CBA5CD0);
    sub_21C81E10C();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDECFD0);
  }

  return result;
}

uint64_t sub_21C81E308(uint64_t a1)
{
  v2 = *(a1 + 32);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21CB81DB4();

  if (v6 == 1)
  {
    v4 = *(a1 + 40);
    sub_21CB81E94();
    result = sub_21C74C3BC();
    if (((v5 ^ (result != 0)) & 1) == 0)
    {
      sub_21C74C3BC();
      return sub_21CB81EA4();
    }
  }

  return result;
}

uint64_t sub_21C81E3E8()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21CB81DB4();

  if (v2)
  {
    if (sub_21C74C3BC())
    {
      return sub_21CB83DD4();
    }
  }

  else
  {
    sub_21CB81E94();
    if ((v1 & 1) == 0)
    {
      return sub_21CB83DD4();
    }
  }

  return sub_21CB83E04();
}

uint64_t type metadata accessor for PMAccountsListOverflowButton()
{
  result = qword_27CDED040;
  if (!qword_27CDED040)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21C81E564()
{
  sub_21C713510();
  if (v0 <= 0x3F)
  {
    sub_21C707F4C();
    if (v1 <= 0x3F)
    {
      sub_21C7210DC();
      if (v2 <= 0x3F)
      {
        sub_21C81E618();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_21C81E618()
{
  if (!qword_27CDED060)
  {
    sub_21CB85114();
    v0 = sub_21CB84F94();
    if (!v1)
    {
      atomic_store(v0, &qword_27CDED060);
    }
  }
}

uint64_t sub_21C81E68C@<X0>(uint64_t a1@<X8>)
{
  v22[1] = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDED088, &qword_21CBA6090);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  v5 = v22 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDED0A0, &qword_21CBA60F8);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = v22 - v8;
  v10 = sub_21CB81F44();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = [objc_opt_self() sharedStore];
  v16 = [v15 allUnexpiredGeneratedPasswords];

  sub_21C81F95C();
  v17 = sub_21CB85824();

  if (v17 >> 62)
  {
    v21 = sub_21CB85FA4();

    if (v21)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v18 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);

    if (v18)
    {
LABEL_3:
      MEMORY[0x28223BE20](v19);
      v22[-2] = v1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDED0A8, &qword_21CBA6100);
      sub_21C6EADEC(&qword_27CDED0B0, &qword_27CDED0A8, &qword_21CBA6100);
      sub_21CB83F54();
      *&v5[*(v2 + 36)] = 257;
      sub_21C81F9B0(v5, v9);
      swift_storeEnumTagMultiPayload();
      sub_21C713460(&qword_27CDED078, MEMORY[0x277CDD680]);
      sub_21C81F8A4();
      sub_21CB83494();
      return sub_21C6EA794(v5, &qword_27CDED088, &qword_21CBA6090);
    }
  }

  sub_21CB81F34();
  (*(v11 + 16))(v9, v14, v10);
  swift_storeEnumTagMultiPayload();
  sub_21C713460(&qword_27CDED078, MEMORY[0x277CDD680]);
  sub_21C81F8A4();
  sub_21CB83494();
  return (*(v11 + 8))(v14, v10);
}

uint64_t sub_21C81EA9C@<X0>(uint64_t a1@<X8>)
{
  swift_unknownObjectWeakInit();
  v2 = type metadata accessor for PMGeneratedPasswordsLogView();
  v3 = v2[5];
  *(a1 + v3) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE480, &qword_21CBA13D0);
  swift_storeEnumTagMultiPayload();
  v4 = v2[6];
  KeyPath = swift_getKeyPath();
  if (qword_27CDEA4C0 != -1)
  {
    swift_once();
  }

  v6 = (a1 + v4);
  sub_21CB86544();
  sub_21C7073D0(KeyPath, v14);

  type metadata accessor for PMGeneratedPasswordStore();
  sub_21C713460(&qword_27CDEBEA0, type metadata accessor for PMGeneratedPasswordStore);
  v7 = sub_21CB82674();
  v9 = v8;

  *v6 = v7;
  v6[1] = v9;
  v10 = (a1 + v2[8]);
  sub_21CB84D44();
  v11 = (a1 + v2[9]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBEA8, &unk_21CBA38A0);
  sub_21CB84D44();
  *v11 = v14;
  v12 = v2[10];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBEB0, &unk_21CBA5440);
  sub_21CB84D44();
  *(a1 + v12) = v14;
  swift_unknownObjectWeakAssign();

  *(a1 + v2[7]) = 0;
  *v10 = 0;
  v10[1] = 0xE000000000000000;
  v10[2] = 0;
  return result;
}

uint64_t sub_21C81ECCC@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v31 = a1;
  v35 = a2;
  v3 = type metadata accessor for PMAccountsListOverflowButton();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v30 = v6;
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDED0B8, &qword_21CBA6108);
  v9 = *(v8 - 8);
  v10 = v9[8];
  MEMORY[0x28223BE20](v8);
  v34 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v33 = &v30 - v13;
  MEMORY[0x28223BE20](v14);
  v32 = &v30 - v15;
  MEMORY[0x28223BE20](v16);
  v18 = &v30 - v17;
  sub_21C81FA20(a1, v7);
  v19 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v20 = swift_allocObject();
  sub_21C81FA84(v7, v20 + v19);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDED0C0, &qword_21CBA6110);
  sub_21C6EADEC(&qword_27CDED0C8, &qword_27CDED0C0, &qword_21CBA6110);
  sub_21CB84DA4();
  sub_21C81FA20(v31, v7);
  v21 = swift_allocObject();
  sub_21C81FA84(v7, v21 + v19);
  v22 = v32;
  sub_21CB84DA4();
  v23 = v9[2];
  v24 = v33;
  v23(v33, v18, v8);
  v25 = v34;
  v23(v34, v22, v8);
  v26 = v35;
  v23(v35, v24, v8);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDED0D0, &qword_21CBA6118);
  v23(&v26[*(v27 + 48)], v25, v8);
  v28 = v9[1];
  v28(v22, v8);
  v28(v18, v8);
  v28(v25, v8);
  return (v28)(v24, v8);
}

uint64_t sub_21C81F0A4()
{
  v0 = sub_21CB85114();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v5);
  v8 = &v11 - v7;
  (*(v1 + 104))(&v11 - v7, *MEMORY[0x277CDF0D0], v0, v6);
  v9 = *(type metadata accessor for PMAccountsListOverflowButton() + 28);
  (*(v1 + 16))(v4, v8, v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDED038, &unk_21CBA6000);
  sub_21CB84F34();
  return (*(v1 + 8))(v8, v0);
}

uint64_t sub_21C81F200@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_21CB81024();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_21CB84BB4();
  sub_21CB81014();
  v8 = sub_21CB81004();
  v10 = v9;
  (*(v3 + 8))(v6, v2);
  v17[0] = v8;
  v17[1] = v10;
  sub_21C71F3FC();
  v11 = sub_21CB84054();
  v13 = v12;
  *a1 = v7;
  *(a1 + 8) = v11;
  *(a1 + 16) = v12;
  LOBYTE(v10) = v14 & 1;
  *(a1 + 24) = v14 & 1;
  *(a1 + 32) = v15;

  sub_21C79B058(v11, v13, v10);

  sub_21C74A72C(v11, v13, v10);
}

uint64_t sub_21C81F3A4(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF40F0, &qword_21CBA2500);
  return sub_21CB84D64();
}

uint64_t sub_21C81F404@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_21CB81024();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = v21 - v8;
  v10 = sub_21CB84BB4();
  sub_21CB81014();
  sub_21CB81014();
  v11 = sub_21CB80FF4();
  v13 = v12;
  v14 = *(v3 + 8);
  v14(v6, v2);
  v14(v9, v2);
  v21[0] = v11;
  v21[1] = v13;
  sub_21C71F3FC();
  v15 = sub_21CB84054();
  v17 = v16;
  *a1 = v10;
  *(a1 + 8) = v15;
  *(a1 + 16) = v16;
  LOBYTE(v11) = v18 & 1;
  *(a1 + 24) = v18 & 1;
  *(a1 + 32) = v19;

  sub_21C79B058(v15, v17, v11);

  sub_21C74A72C(v15, v17, v11);
}

uint64_t sub_21C81F608@<X0>(uint64_t *a1@<X8>)
{
  result = sub_21CB84BB4();
  *a1 = result;
  return result;
}

uint64_t sub_21C81F650()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDED068, &unk_21CBA6080);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1);
  v4 = &v7[-v3];
  sub_21C81E68C(&v7[-v3]);
  v5 = *(v0 + 40);
  v7[32] = *(v0 + 32);
  v8 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF40F0, &qword_21CBA2500);
  sub_21CB84D74();
  type metadata accessor for PMGeneratedPasswordsLogView();
  sub_21C81F7E8();
  sub_21C713460(&qword_27CDEBDD8, type metadata accessor for PMGeneratedPasswordsLogView);
  sub_21CB847B4();

  return sub_21C6EA794(v4, &qword_27CDED068, &unk_21CBA6080);
}

unint64_t sub_21C81F7E8()
{
  result = qword_27CDED070;
  if (!qword_27CDED070)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDED068, &unk_21CBA6080);
    sub_21C713460(&qword_27CDED078, MEMORY[0x277CDD680]);
    sub_21C81F8A4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDED070);
  }

  return result;
}

unint64_t sub_21C81F8A4()
{
  result = qword_27CDED080;
  if (!qword_27CDED080)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDED088, &qword_21CBA6090);
    sub_21C6EADEC(&qword_27CDED090, &qword_27CDED098, &qword_21CBA6098);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDED080);
  }

  return result;
}

unint64_t sub_21C81F95C()
{
  result = qword_27CDEAFA0;
  if (!qword_27CDEAFA0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27CDEAFA0);
  }

  return result;
}

uint64_t sub_21C81F9B0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDED088, &qword_21CBA6090);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21C81FA20(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PMAccountsListOverflowButton();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21C81FA84(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PMAccountsListOverflowButton();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21C81FB18(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for PMAccountsListOverflowButton() - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t sub_21C81FB8C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21CB81DB4();

  return v1;
}

void sub_21C81FC00(uint64_t a1)
{
  v66 = a1;
  v1 = type metadata accessor for PMAppAccountsListModel.Configuration(0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v64[0] = v64 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_21CB820E4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = v64 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v65 = v64 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDED220, &qword_21CBA6458);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = v64 - v14;
  type metadata accessor for PMPasswordManagerMock();
  v16 = swift_allocObject();
  *(v16 + 16) = 0;
  *(v16 + 24) = 0;
  if (qword_27CDEA3C8 != -1)
  {
    swift_once();
  }

  v17 = qword_27CE184E8;
  swift_beginAccess();
  v18 = v17[9];
  v17[9] = v16;
  v17[10] = &off_282E4C138;
  swift_retain_n();
  swift_unknownObjectRelease();
  v76[3] = &type metadata for PMTipsProviderMock;
  v76[4] = sub_21C826104();
  v19 = type metadata accessor for PMTipsStore();
  v20 = *(v19 + 48);
  v21 = *(v19 + 52);
  v22 = swift_allocObject();
  v23 = OBJC_IVAR____TtC17PasswordManagerUI11PMTipsStore__tip;
  v75 = 0;
  v73 = 0u;
  v74 = 0u;
  v71 = 0u;
  v72 = 0u;
  v70 = 0u;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDED230, &unk_21CBA6460);
  sub_21CB81D74();
  (*(v12 + 32))(v22 + v23, v15, v11);
  *(v22 + OBJC_IVAR____TtC17PasswordManagerUI11PMTipsStore_observeTipsHandle) = 0;
  sub_21C6E9A08(v76, v22 + OBJC_IVAR____TtC17PasswordManagerUI11PMTipsStore_provider);
  sub_21C826394();
  __swift_destroy_boxed_opaque_existential_0(v76);
  swift_beginAccess();
  v24 = v17[11];
  v17[11] = v22;

  v25 = type metadata accessor for PMGroupsStore();
  v26 = *(v25 + 48);
  v27 = *(v25 + 52);
  v28 = swift_allocObject();
  v29 = sub_21CA1EA94(v28);
  swift_beginAccess();
  v30 = v17[7];
  v17[7] = v29;

  v31 = type metadata accessor for PMGeneratedPasswordStore();
  v32 = *(v31 + 48);
  v33 = *(v31 + 52);
  v34 = swift_allocObject();
  v35 = MEMORY[0x277D84F90];
  v69 = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBEA8, &unk_21CBA38A0);
  sub_21CB81D74();
  *(v34 + 16) = v35;
  *(v34 + 24) = 1;
  swift_beginAccess();
  v36 = v17[5];
  v17[5] = v34;

  v37 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v38 = sub_21CB85584();
  v39 = [v37 initWithSuiteName_];

  if (!v39)
  {
    v39 = [objc_opt_self() standardUserDefaults];
  }

  v40 = sub_21CB85584();
  [v39 removePersistentDomainForName_];

  swift_beginAccess();
  v41 = v17[12];
  v17[12] = v39;
  v42 = v39;

  sub_21C82939C();
  v43 = v65;
  (*(v5 + 16))(v65, v66, v4);
  sub_21CB820B4();
  sub_21C7094C0(&unk_27CDED240, MEMORY[0x277CDD778]);
  LOBYTE(v41) = sub_21CB85574();
  v44 = *(v5 + 8);
  v44(v9, v4);
  if (v41)
  {
    v44(v43, v4);
    v45 = [objc_allocWithZone(type metadata accessor for PMPasswordManagerState()) init];
    swift_getKeyPath();
    swift_getKeyPath();
    v67 = v45;
    v68 = 0;

    v46 = v45;
    sub_21CB81DC4();
LABEL_13:

    goto LABEL_14;
  }

  sub_21CB820B4();
  v47 = sub_21CB85574();
  v44(v9, v4);
  if ((v47 & 1) == 0)
  {
    sub_21CB820B4();
    v56 = sub_21CB85574();
    v44(v9, v4);
    if (v56 & 1) != 0 || (sub_21CB820B4(), v57 = sub_21CB85574(), v44(v9, v4), (v57))
    {
      v44(v43, v4);
    }

    else
    {
      sub_21CB820B4();
      v63 = sub_21CB85574();
      v44(v9, v4);
      v44(v43, v4);
      if ((v63 & 1) == 0)
      {
        goto LABEL_14;
      }
    }

    v58 = [objc_allocWithZone(type metadata accessor for PMPasswordManagerState()) init];
    v59 = type metadata accessor for PMAppRootNavigationModel();
    v60 = *(v59 + 48);
    v61 = *(v59 + 52);
    swift_allocObject();
    v62 = sub_21C70EA40() | 0x8000000000000000;
    swift_getKeyPath();
    swift_getKeyPath();
    v67 = v58;
    v68 = v62;

    v46 = v58;

    sub_21CB81DC4();

    goto LABEL_13;
  }

  v44(v43, v4);
  v48 = [objc_allocWithZone(type metadata accessor for PMPasswordManagerState()) init];
  v49 = sub_21CB85C44();
  v50 = v64[0];
  (*(*(v49 - 8) + 56))(v64[0], 1, 4, v49);
  v51 = type metadata accessor for PMAppAccountsListModel(0);
  v52 = *(v51 + 48);
  v53 = *(v51 + 52);
  swift_allocObject();
  v54 = sub_21C70FDD0(v50) | 0x4000000000000000;
  swift_getKeyPath();
  swift_getKeyPath();
  v67 = v48;
  v68 = v54;

  v55 = v48;

  sub_21CB81DC4();

LABEL_14:
}

uint64_t sub_21C820550()
{
  v1 = OBJC_IVAR____TtC17PasswordManagerUIP33_05895019A422AE69CA35C95F8231EA7C29PMAccountsListScrollTestModel__state;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDED3B8, &qword_21CBA6780);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_21C820600(uint64_t a1, void *a2, uint64_t a3, void *a4, int a5)
{
  v53 = a5;
  v56 = a4;
  v54 = a3;
  v7 = sub_21CB82124();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1D50, &qword_21CBA0C00);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v55 = v46 - v13;
  v14 = type metadata accessor for PMAccount(0);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v18 = (v46 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_getKeyPath();
  v57 = a2;
  sub_21C7094C0(&qword_27CDEABF0, type metadata accessor for PMAppRootNavigationModel);
  sub_21CB810D4();

  v19 = *(a2 + OBJC_IVAR____TtC17PasswordManagerUI24PMAppRootNavigationModel__contentState);
  if (v19 >> 61)
  {
    return sub_21CB82104();
  }

  v51 = a1;
  KeyPath = swift_getKeyPath();
  v21 = qword_27CDEA4C0;
  v50 = v19;

  if (v21 != -1)
  {
    swift_once();
  }

  sub_21CB86544();
  v49 = KeyPath;
  sub_21C7072A8(KeyPath, v57);

  swift_getKeyPath();
  swift_getKeyPath();
  sub_21CB81DB4();

  sub_21C826158(&v57);

  v22 = v57;
  v23 = v57[2];
  v52 = v7;
  if (v23)
  {
    v46[1] = v9;
    v47 = v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
    v48 = v8;
    v57 = MEMORY[0x277D84F90];
    sub_21C7B0C0C(0, v23, 0);
    v24 = v57;
    v25 = *(v15 + 80);
    v46[0] = v22;
    v26 = v22 + ((v25 + 32) & ~v25);
    v27 = *(v15 + 72);
    do
    {
      sub_21C82A938(v26, v18, type metadata accessor for PMAccount);
      v29 = *v18;
      v28 = v18[1];

      sub_21C82A9A0(v18, type metadata accessor for PMAccount);
      v57 = v24;
      v31 = v24[2];
      v30 = v24[3];
      if (v31 >= v30 >> 1)
      {
        sub_21C7B0C0C((v30 > 1), v31 + 1, 1);
        v24 = v57;
      }

      v24[2] = v31 + 1;
      v32 = &v24[2 * v31];
      v32[4] = v29;
      v32[5] = v28;
      v26 += v27;
      --v23;
    }

    while (v23);

    v7 = v52;
    v34 = v56;
    v10 = v47;
    v8 = v48;
  }

  else
  {

    v24 = MEMORY[0x277D84F90];
    v34 = v56;
  }

  v35 = v51;
  if (v24[2] <= 9uLL)
  {
    sub_21CB82104();
  }

  else
  {
    v56 = v24 + 4;
    v36 = sub_21CB858E4();
    (*(*(v36 - 8) + 56))(v55, 1, 1, v36);
    (*(v8 + 16))(v10, v35, v7);
    sub_21CB858B4();
    v37 = v50;

    v38 = v53 & 1;
    v39 = v54;
    sub_21C70C78C();

    v40 = sub_21CB858A4();
    v41 = v10;
    v42 = (*(v8 + 80) + 96) & ~*(v8 + 80);
    v43 = swift_allocObject();
    v44 = MEMORY[0x277D85700];
    *(v43 + 16) = v40;
    *(v43 + 24) = v44;
    *(v43 + 32) = v39;
    *(v43 + 40) = v34;
    *(v43 + 48) = v38;
    v45 = v56;
    *(v43 + 56) = v24;
    *(v43 + 64) = v45;
    *(v43 + 72) = xmmword_21CBA6130;
    *(v43 + 88) = v37;
    (*(v8 + 32))(v43 + v42, v41, v52);
    sub_21C822EE8(0, 0, v55, &unk_21CBA6680, v43);
  }
}

uint64_t sub_21C820C10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_21CB82124();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1D50, &qword_21CBA0C00);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v22 - v13;
  v15 = sub_21CB858E4();
  (*(*(v15 - 8) + 56))(v14, 1, 1, v15);
  (*(v8 + 16))(v10, a1, v7);
  sub_21CB858B4();

  v16 = sub_21CB858A4();
  v17 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v18 = (v9 + v17 + 7) & 0xFFFFFFFFFFFFFFF8;
  v19 = swift_allocObject();
  v20 = MEMORY[0x277D85700];
  *(v19 + 16) = v16;
  *(v19 + 24) = v20;
  (*(v8 + 32))(v19 + v17, v10, v7);
  *(v19 + v18) = a5;
  sub_21C822EE8(0, 0, v14, &unk_21CBA6618, v19);
}

uint64_t sub_21C820E2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_21CB82124();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1D50, &qword_21CBA0C00);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v22 - v13;
  v15 = sub_21CB858E4();
  (*(*(v15 - 8) + 56))(v14, 1, 1, v15);
  (*(v8 + 16))(v10, a1, v7);
  sub_21CB858B4();

  v16 = sub_21CB858A4();
  v17 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v18 = (v9 + v17 + 7) & 0xFFFFFFFFFFFFFFF8;
  v19 = swift_allocObject();
  v20 = MEMORY[0x277D85700];
  *(v19 + 16) = v16;
  *(v19 + 24) = v20;
  (*(v8 + 32))(v19 + v17, v10, v7);
  *(v19 + v18) = a5;
  sub_21C98B308(0, 0, v14, &unk_21CBA6608, v19);
}

uint64_t sub_21C82103C()
{
  v0 = sub_21CB820E4();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for PMAccountsListScrollTestModel();
  sub_21C7094C0(&qword_27CDED218, type metadata accessor for PMAccountsListScrollTestModel);
  sub_21CB82134();
  sub_21CB820B4();
  sub_21C81FC00(v4);

  return (*(v1 + 8))(v4, v0);
}

uint64_t sub_21C82119C()
{
  v0 = sub_21CB820E4();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for PMAccountsListScrollTestModel();
  sub_21C7094C0(&qword_27CDED218, type metadata accessor for PMAccountsListScrollTestModel);
  sub_21CB82134();
  sub_21CB820B4();
  sub_21C81FC00(v4);

  return (*(v1 + 8))(v4, v0);
}

uint64_t sub_21C8212FC()
{
  v0 = sub_21CB820E4();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for PMAccountsListScrollTestModel();
  sub_21C7094C0(&qword_27CDED218, type metadata accessor for PMAccountsListScrollTestModel);
  sub_21CB82134();
  sub_21CB820B4();
  sub_21C81FC00(v4);

  return (*(v1 + 8))(v4, v0);
}

uint64_t sub_21C82145C()
{
  v0 = sub_21CB820E4();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for PMAccountsListScrollTestModel();
  sub_21C7094C0(&qword_27CDED218, type metadata accessor for PMAccountsListScrollTestModel);
  sub_21CB82134();
  sub_21CB820B4();
  sub_21C81FC00(v4);

  return (*(v1 + 8))(v4, v0);
}

uint64_t sub_21C8215BC()
{
  v0 = sub_21CB820E4();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for PMAccountsListScrollTestModel();
  sub_21C7094C0(&qword_27CDED218, type metadata accessor for PMAccountsListScrollTestModel);
  sub_21CB82134();
  sub_21CB820B4();
  sub_21C81FC00(v4);

  return (*(v1 + 8))(v4, v0);
}

uint64_t sub_21C82171C(uint64_t a1, void *a2)
{
  v3 = sub_21CB826C4();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDED2E0, &qword_21CBA65F0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v19 - v10;

  sub_21C867804(v11);
  type metadata accessor for PMPasswordManagerState();
  sub_21C7094C0(&qword_27CDED2D0, type metadata accessor for PMPasswordManagerState);
  v12 = sub_21CB81CE4();
  v13 = &v11[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDED2F8, &qword_21CBA65F8) + 36)];
  *v13 = v12;
  v13[1] = a2;
  v14 = a2;
  v15 = sub_21CACB1D0();
  type metadata accessor for PMAccountsListModel(0);
  sub_21C7094C0(&qword_27CDEC988, type metadata accessor for PMAccountsListModel);
  v16 = sub_21CB81CE4();
  v17 = &v11[*(v8 + 36)];
  *v17 = v16;
  v17[1] = v15;
  sub_21CB826B4();
  sub_21C7092A8(&qword_27CDED2E8, &qword_27CDED2E0, &qword_21CBA65F0, sub_21C82A3E0);
  sub_21CB849F4();
  (*(v4 + 8))(v7, v3);
  return sub_21C6EA794(v11, &qword_27CDED2E0, &qword_21CBA65F0);
}

uint64_t sub_21C8219A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 184) = v21;
  *(v8 + 192) = v22;
  *(v8 + 168) = v20;
  *(v8 + 152) = a7;
  *(v8 + 160) = a8;
  v9 = sub_21CB86184();
  *(v8 + 200) = v9;
  v10 = *(v9 - 8);
  *(v8 + 208) = v10;
  v11 = *(v10 + 64) + 15;
  *(v8 + 216) = swift_task_alloc();
  *(v8 + 224) = swift_task_alloc();
  v12 = sub_21CB86194();
  *(v8 + 232) = v12;
  v13 = *(v12 - 8);
  *(v8 + 240) = v13;
  v14 = *(v13 + 64) + 15;
  *(v8 + 248) = swift_task_alloc();
  *(v8 + 256) = swift_task_alloc();
  v15 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDED340, &qword_21CBA6688) - 8) + 64) + 15;
  *(v8 + 264) = swift_task_alloc();
  *(v8 + 272) = sub_21CB858B4();
  *(v8 + 280) = sub_21CB858A4();
  v17 = sub_21CB85874();
  *(v8 + 288) = v17;
  *(v8 + 296) = v16;

  return MEMORY[0x2822009F8](sub_21C821B58, v17, v16);
}

uint64_t sub_21C821B58()
{
  v1 = v0[21];
  v2 = v0[22];
  v0[38] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAFA8, &unk_21CBA0C70);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21CBA0690;
  if (v2 >= 2 && v1 <= 0)
  {
    v8 = v0[33];
    v7 = v0[34];
    v9 = v0[20];
    v11 = *v9;
    v10 = v9[1];
    *(inited + 32) = v11;
    v12 = inited + 32;
    *(inited + 40) = v10;
    v13 = inited;

    v0[39] = sub_21C8D7470(v13);
    swift_setDeallocating();
    sub_21C81A534(v12);
    v14 = sub_21CB82124();
    v0[40] = v14;
    v15 = *(v14 - 8);
    v0[41] = v15;
    v16 = *(v15 + 56);
    v0[42] = v16;
    v0[43] = (v15 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
    v16(v8, 1, 1, v14);
    v0[44] = sub_21CB858A4();
    v17 = sub_21CB85874();
    v5 = v18;
    v0[45] = v17;
    v0[46] = v18;
    inited = sub_21C821CCC;
    v4 = v17;
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x2822009F8](inited, v4, v5);
}

uint64_t sub_21C821CCC()
{
  v1 = v0[39];
  v3 = v0[33];
  v2 = v0[34];
  v4 = v0[23];
  v0[47] = sub_21CB858A4();
  v5 = swift_task_alloc();
  v0[48] = v5;
  v5[2] = v3;
  v5[3] = v4;
  v5[4] = v1;
  v6 = *(MEMORY[0x277D859E0] + 4);
  v7 = swift_task_alloc();
  v0[49] = v7;
  *v7 = v0;
  v7[1] = sub_21C821DE4;

  return MEMORY[0x2822007B8]();
}

uint64_t sub_21C821DE4()
{
  v1 = *v0;
  v2 = *(*v0 + 392);
  v3 = *(*v0 + 384);
  v4 = *(*v0 + 376);
  v5 = *(*v0 + 312);
  v9 = *v0;

  v6 = *(v1 + 368);
  v7 = *(v1 + 360);

  return MEMORY[0x2822009F8](sub_21C821F68, v7, v6);
}

uint64_t sub_21C821F68()
{
  v1 = v0[44];
  v2 = v0[33];

  sub_21C6EA794(v2, &qword_27CDED340, &qword_21CBA6688);
  v3 = v0[36];
  v4 = v0[37];

  return MEMORY[0x2822009F8](sub_21C821FE8, v3, v4);
}

uint64_t sub_21C821FE8()
{
  v1 = *(v0 + 256);
  sub_21CB863E4();
  v2 = swift_task_alloc();
  *(v0 + 400) = v2;
  *v2 = v0;
  v2[1] = sub_21C8220B4;
  v3 = *(v0 + 256);

  return sub_21C827284(1000000000000000000, 0, 0, 0, 1);
}

uint64_t sub_21C8220B4()
{
  v2 = *v1;
  v3 = *(*v1 + 400);
  v4 = *(*v1 + 256);
  v5 = *(*v1 + 240);
  v6 = *(*v1 + 232);
  v7 = *v1;
  v2[51] = v0;

  v8 = *(v5 + 8);
  v2[52] = v8;
  v2[53] = (v5 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v8(v4, v6);
  v9 = v2[37];
  v10 = v2[36];
  if (v0)
  {
    v11 = sub_21C82248C;
  }

  else
  {
    v11 = sub_21C822260;
  }

  return MEMORY[0x2822009F8](v11, v10, v9);
}

uint64_t sub_21C822260()
{
  v1 = v0[24];
  v2 = v0[21];
  v3 = v0[22] >> 1;
  v4 = sub_21CB82114();
  if (__OFSUB__(v3, v2))
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v8 = v0[21];
  v7 = v0[22];
  v9 = v7 >> 1;
  if (v7 >> 1 == v8)
  {
    v10 = v7 >> 1;
  }

  else
  {
    v10 = v8 + 1;
  }

  if (v9 < v10)
  {
    goto LABEL_15;
  }

  if (v10 != v9)
  {
    v20 = v0[41];
    v21 = v0[19];
    v0[54] = v10;
    v4 = swift_unknownObjectRetain();
    if (v10 < v9)
    {
      v33 = v0[42];
      v34 = v0[43];
      v22 = v0[40];
      v23 = v0[38];
      v25 = v0[33];
      v24 = v0[34];
      v26 = v0[24];
      v27 = (v0[20] + 16 * v10);
      v29 = *v27;
      v28 = v27[1];
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_21CBA0690;
      *(inited + 32) = v29;
      *(inited + 40) = v28;

      v0[55] = sub_21C8D7470(inited);
      swift_setDeallocating();
      sub_21C81A534(inited + 32);
      (*(v20 + 16))(v25, v26, v22);
      v33(v25, 0, 1, v22);
      v0[56] = sub_21CB858A4();
      v31 = sub_21CB85874();
      v6 = v32;
      v0[57] = v31;
      v0[58] = v32;
      v4 = sub_21C822534;
      v5 = v31;

      return MEMORY[0x2822009F8](v4, v5, v6);
    }

LABEL_16:
    __break(1u);
    return MEMORY[0x2822009F8](v4, v5, v6);
  }

  v11 = v0[35];
  v13 = v0[32];
  v12 = v0[33];
  v14 = v0[31];
  v16 = v0[27];
  v15 = v0[28];
  v17 = v0[24];

  sub_21CB82094();

  v18 = v0[1];

  return v18();
}

uint64_t sub_21C82248C()
{
  v1 = v0[51];
  v2 = v0[35];
  v4 = v0[32];
  v3 = v0[33];
  v5 = v0[31];
  v7 = v0[27];
  v6 = v0[28];

  v8 = v0[1];

  return v8();
}

uint64_t sub_21C822534()
{
  v1 = v0[55];
  v3 = v0[33];
  v2 = v0[34];
  v4 = v0[23];
  v0[59] = sub_21CB858A4();
  v5 = swift_task_alloc();
  v0[60] = v5;
  v5[2] = v3;
  v5[3] = v4;
  v5[4] = v1;
  v6 = *(MEMORY[0x277D859E0] + 4);
  v7 = swift_task_alloc();
  v0[61] = v7;
  *v7 = v0;
  v7[1] = sub_21C82264C;

  return MEMORY[0x2822007B8]();
}

uint64_t sub_21C82264C()
{
  v1 = *v0;
  v2 = *(*v0 + 488);
  v3 = *(*v0 + 480);
  v4 = *(*v0 + 472);
  v5 = *(*v0 + 440);
  v9 = *v0;

  v6 = *(v1 + 464);
  v7 = *(v1 + 456);

  return MEMORY[0x2822009F8](sub_21C8227D0, v7, v6);
}

uint64_t sub_21C8227D0()
{
  v1 = v0[56];
  v2 = v0[33];

  sub_21C6EA794(v2, &qword_27CDED340, &qword_21CBA6688);
  v3 = v0[36];
  v4 = v0[37];

  return MEMORY[0x2822009F8](sub_21C822850, v3, v4);
}

uint64_t sub_21C822850()
{
  v1 = *(v0 + 248);
  sub_21CB863E4();
  *(v0 + 136) = xmmword_21CBA6140;
  *(v0 + 112) = 0;
  *(v0 + 120) = 0;
  *(v0 + 128) = 1;

  return MEMORY[0x2822009F8](sub_21C8228D0, 0, 0);
}

uint64_t sub_21C8228D0()
{
  v1 = v0[31];
  v3 = v0[28];
  v2 = v0[29];
  v5 = v0[26];
  v4 = v0[27];
  v6 = v0[25];
  v7 = sub_21C7094C0(&qword_27CDED328, MEMORY[0x277D85928]);
  sub_21CB863C4();
  sub_21C7094C0(&unk_27CDED330, MEMORY[0x277D858F8]);
  sub_21CB861A4();
  v8 = *(v5 + 8);
  v0[62] = v8;
  v0[63] = (v5 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v8(v4, v6);
  v9 = *(MEMORY[0x277D85A58] + 4);
  v10 = swift_task_alloc();
  v0[64] = v10;
  *v10 = v0;
  v10[1] = sub_21C822A54;
  v11 = v0[31];
  v13 = v0[28];
  v12 = v0[29];

  return MEMORY[0x2822008C8](v13, v0 + 14, v12, v7);
}

uint64_t sub_21C822A54()
{
  v2 = *v1;
  v3 = *(*v1 + 512);
  v13 = *v1;
  *(*v1 + 520) = v0;

  v4 = *(v2 + 504);
  if (v0)
  {
    (*(v2 + 496))(*(v2 + 224), *(v2 + 200));
    v5 = sub_21C822DB0;
    v6 = 0;
    v7 = 0;
  }

  else
  {
    v9 = *(v2 + 416);
    v8 = *(v2 + 424);
    v10 = *(v2 + 248);
    v11 = *(v2 + 232);
    (*(v2 + 496))(*(v2 + 224), *(v2 + 200));
    v9(v10, v11);
    v6 = *(v2 + 288);
    v7 = *(v2 + 296);
    v5 = sub_21C822BB4;
  }

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_21C822BB4(uint64_t (*a1)(), uint64_t a2, uint64_t a3)
{
  v4 = v3[54] + 1;
  v5 = v3[22] >> 1;
  if (v4 == v5)
  {
    v6 = v3[19];
    swift_unknownObjectRelease();
    v7 = v3[35];
    v9 = v3[32];
    v8 = v3[33];
    v10 = v3[31];
    v12 = v3[27];
    v11 = v3[28];
    v13 = v3[24];

    sub_21CB82094();

    v14 = v3[1];

    return v14();
  }

  else
  {
    v3[54] = v4;
    if (v4 < v5)
    {
      v28 = v3[42];
      v29 = v3[43];
      v16 = v3[40];
      v17 = v3[41];
      v18 = v3[38];
      v20 = v3[33];
      v19 = v3[34];
      v21 = v3[24];
      v22 = (v3[20] + 16 * v4);
      v24 = *v22;
      v23 = v22[1];
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_21CBA0690;
      *(inited + 32) = v24;
      *(inited + 40) = v23;

      v3[55] = sub_21C8D7470(inited);
      swift_setDeallocating();
      sub_21C81A534(inited + 32);
      (*(v17 + 16))(v20, v21, v16);
      v28(v20, 0, 1, v16);
      v3[56] = sub_21CB858A4();
      v26 = sub_21CB85874();
      a3 = v27;
      v3[57] = v26;
      v3[58] = v27;
      a1 = sub_21C822534;
      a2 = v26;
    }

    else
    {
      __break(1u);
    }

    return MEMORY[0x2822009F8](a1, a2, a3);
  }
}

uint64_t sub_21C822DB0()
{
  v1 = *(v0 + 424);
  (*(v0 + 416))(*(v0 + 248), *(v0 + 232));
  v2 = *(v0 + 288);
  v3 = *(v0 + 296);

  return MEMORY[0x2822009F8](sub_21C822E1C, v2, v3);
}

uint64_t sub_21C822E1C()
{
  v1 = v0[19];
  swift_unknownObjectRelease();
  v2 = v0[65];
  v3 = v0[35];
  v5 = v0[32];
  v4 = v0[33];
  v6 = v0[31];
  v8 = v0[27];
  v7 = v0[28];

  v9 = v0[1];

  return v9();
}

uint64_t sub_21C822EE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1D50, &qword_21CBA0C00);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = v24 - v10;
  sub_21C6EDBAC(a3, v24 - v10, &qword_27CDF1D50, &qword_21CBA0C00);
  v12 = sub_21CB858E4();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_21C6EA794(v11, &qword_27CDF1D50, &qword_21CBA0C00);
  }

  else
  {
    sub_21CB858D4();
    (*(v13 + 8))(v11, v12);
  }

  v16 = *(a5 + 16);
  v15 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_21CB85874();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v24[0] = a2;
      v20 = sub_21CB85644() + 32;

      if (v19 | v17)
      {
        v25[0] = 0;
        v25[1] = 0;
        v21 = v25;
        v25[2] = v17;
        v25[3] = v19;
      }

      else
      {
        v21 = 0;
      }

      v24[1] = 7;
      v24[2] = v21;
      v24[3] = v20;
      v22 = swift_task_create();

      sub_21C6EA794(a3, &qword_27CDF1D50, &qword_21CBA0C00);

      return v22;
    }
  }

  else
  {
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_21C6EA794(a3, &qword_27CDF1D50, &qword_21CBA0C00);
  if (v19 | v17)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v17;
    v25[7] = v19;
  }

  return swift_task_create();
}

uint64_t sub_21C823194(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1D50, &qword_21CBA0C00);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = v24 - v10;
  sub_21C6EDBAC(a3, v24 - v10, &qword_27CDF1D50, &qword_21CBA0C00);
  v12 = sub_21CB858E4();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_21C6EA794(v11, &qword_27CDF1D50, &qword_21CBA0C00);
  }

  else
  {
    sub_21CB858D4();
    (*(v13 + 8))(v11, v12);
  }

  v16 = *(a5 + 16);
  v15 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_21CB85874();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = sub_21CB85644() + 32;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDED3B0, &qword_21CBA6778);
      v21 = (v19 | v17);
      if (v19 | v17)
      {
        v25[0] = 0;
        v25[1] = 0;
        v21 = v25;
        v25[2] = v17;
        v25[3] = v19;
      }

      v24[1] = 7;
      v24[2] = v21;
      v24[3] = v20;
      v22 = swift_task_create();

      sub_21C6EA794(a3, &qword_27CDF1D50, &qword_21CBA0C00);

      return v22;
    }
  }

  else
  {
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_21C6EA794(a3, &qword_27CDF1D50, &qword_21CBA0C00);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDED3B0, &qword_21CBA6778);
  if (v19 | v17)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v17;
    v25[7] = v19;
  }

  return swift_task_create();
}

uint64_t sub_21C823450(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v42 = a4;
  v43 = a3;
  v46 = a1;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDED348, &qword_21CBA6690);
  v44 = *(v48 - 8);
  v47 = *(v44 + 64);
  MEMORY[0x28223BE20](v48);
  v45 = &v37 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDED340, &qword_21CBA6688);
  v41 = *(v6 - 8);
  v7 = *(v41 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = v8;
  MEMORY[0x28223BE20](v10);
  v12 = &v37 - v11;
  v13 = sub_21CB820A4();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v37 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v37 - v18;
  sub_21CB820B4();
  v20 = a2;
  sub_21C6EDBAC(a2, v12, &qword_27CDED340, &qword_21CBA6688);
  v21 = sub_21CB82124();
  v22 = *(v21 - 8);
  if ((*(v22 + 48))(v12, 1, v21) == 1)
  {
    sub_21C6EA794(v12, &qword_27CDED340, &qword_21CBA6688);
  }

  else
  {
    sub_21CB820C4();
    (*(v22 + 8))(v12, v21);
  }

  sub_21C880484(v23);
  sub_21C6EDBAC(v20, v9, &qword_27CDED340, &qword_21CBA6688);
  v24 = *(v14 + 16);
  v38 = v13;
  v39 = v19;
  v24(v16, v19, v13);
  v26 = v44;
  v25 = v45;
  v27 = v48;
  (*(v44 + 16))(v45, v46, v48);
  v28 = (*(v41 + 80) + 16) & ~*(v41 + 80);
  v29 = (v40 + *(v14 + 80) + v28) & ~*(v14 + 80);
  v30 = (v15 + *(v26 + 80) + v29) & ~*(v26 + 80);
  v31 = swift_allocObject();
  sub_21C82AB48(v9, v31 + v28);
  v32 = v38;
  (*(v14 + 32))(v31 + v29, v16, v38);
  (*(v26 + 32))(v31 + v30, v25, v27);
  aBlock[4] = sub_21C82ABB8;
  aBlock[5] = v31;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_21C823A8C;
  aBlock[3] = &block_descriptor_106;
  v33 = _Block_copy(aBlock);

  v34 = CFRunLoopObserverCreateWithHandler(0, 0x20uLL, 0, 0, v33);
  _Block_release(v33);
  v35 = CFRunLoopGetMain();
  CFRunLoopAddObserver(v35, v34, *MEMORY[0x277CBF048]);

  return (*(v14 + 8))(v39, v32);
}

uint64_t sub_21C82392C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDED340, &qword_21CBA6688);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v11 - v6;
  sub_21C6EDBAC(a3, &v11 - v6, &qword_27CDED340, &qword_21CBA6688);
  v8 = sub_21CB82124();
  v9 = *(v8 - 8);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_21C6EA794(v7, &qword_27CDED340, &qword_21CBA6688);
  }

  else
  {
    sub_21CB820D4();
    (*(v9 + 8))(v7, v8);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDED348, &qword_21CBA6690);
  return sub_21CB85884();
}

void sub_21C823A8C(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v7 = a2;
  v6(a2, a3);
}

uint64_t sub_21C823B04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[23] = a4;
  v5[24] = a5;
  v6 = type metadata accessor for PMAppSourceListModel.Source(0);
  v5[25] = v6;
  v7 = *(v6 - 8);
  v5[26] = v7;
  v8 = *(v7 + 64) + 15;
  v5[27] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDED310, &unk_21CBA0150);
  v5[28] = v9;
  v10 = *(*(v9 - 8) + 64) + 15;
  v5[29] = swift_task_alloc();
  v5[30] = swift_task_alloc();
  v11 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAC20, &qword_21CBAD710) - 8) + 64) + 15;
  v5[31] = swift_task_alloc();
  v5[32] = swift_task_alloc();
  v5[33] = swift_task_alloc();
  v5[34] = swift_task_alloc();
  v5[35] = swift_task_alloc();
  v5[36] = swift_task_alloc();
  v5[37] = swift_task_alloc();
  v5[38] = swift_task_alloc();
  v12 = sub_21CB86184();
  v5[39] = v12;
  v13 = *(v12 - 8);
  v5[40] = v13;
  v14 = *(v13 + 64) + 15;
  v5[41] = swift_task_alloc();
  v5[42] = swift_task_alloc();
  v5[43] = swift_task_alloc();
  v15 = sub_21CB86194();
  v5[44] = v15;
  v16 = *(v15 - 8);
  v5[45] = v16;
  v17 = *(v16 + 64) + 15;
  v5[46] = swift_task_alloc();
  v5[47] = swift_task_alloc();
  sub_21CB858B4();
  v5[48] = sub_21CB858A4();
  v19 = sub_21CB85874();
  v5[49] = v19;
  v5[50] = v18;

  return MEMORY[0x2822009F8](sub_21C823DA8, v19, v18);
}

uint64_t sub_21C823DA8()
{
  v1 = *(v0 + 184);
  sub_21CB82114();
  *(v0 + 408) = 0;
  v3 = *(v0 + 296);
  v2 = *(v0 + 304);
  v4 = *(v0 + 240);
  v27 = *(v0 + 224);
  v5 = *(v0 + 200);
  v6 = *(v0 + 208);
  v7 = *(*(v0 + 192) + 64);
  *(v0 + 448) = v7;
  swift_storeEnumTagMultiPayload();
  v8 = *(v6 + 56);
  *(v0 + 456) = v8;
  *(v0 + 464) = (v6 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v8(v2, 0, 1, v5);
  v9 = OBJC_IVAR____TtC17PasswordManagerUI20PMAppSourceListModel__selectedSource;
  *(v0 + 472) = OBJC_IVAR____TtC17PasswordManagerUI20PMAppSourceListModel__selectedSource;
  swift_beginAccess();
  v28 = v7;
  v26 = v9;
  sub_21C6EDBAC(v7 + v9, v3, &qword_27CDEAC20, &qword_21CBAD710);
  v10 = *(v27 + 48);
  sub_21C6EDBAC(v3, v4, &qword_27CDEAC20, &qword_21CBAD710);
  sub_21C6EDBAC(v2, v4 + v10, &qword_27CDEAC20, &qword_21CBAD710);
  v11 = *(v6 + 48);
  *(v0 + 480) = v11;
  *(v0 + 488) = (v6 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v11(v4, 1, v5) != 1)
  {
    v13 = *(v0 + 200);
    sub_21C6EDBAC(*(v0 + 240), *(v0 + 288), &qword_27CDEAC20, &qword_21CBAD710);
    v14 = v11(v4 + v10, 1, v13);
    v15 = *(v0 + 288);
    v16 = *(v0 + 296);
    if (v14 != 1)
    {
      v19 = *(v0 + 240);
      v20 = *(v0 + 216);
      sub_21C82A8D0(v4 + v10, v20, type metadata accessor for PMAppSourceListModel.Source);
      v21 = sub_21C918FE4(v15, v20);
      sub_21C82A9A0(v20, type metadata accessor for PMAppSourceListModel.Source);
      sub_21C6EA794(v16, &qword_27CDEAC20, &qword_21CBAD710);
      sub_21C82A9A0(v15, type metadata accessor for PMAppSourceListModel.Source);
      sub_21C6EA794(v19, &qword_27CDEAC20, &qword_21CBAD710);
      if (v21)
      {
        goto LABEL_9;
      }

LABEL_7:
      v17 = *(v0 + 304);
      swift_getKeyPath();
      v18 = swift_task_alloc();
      *(v18 + 16) = v28;
      *(v18 + 24) = v17;
      *(v0 + 168) = v28;
      sub_21C7094C0(&qword_27CDED320, type metadata accessor for PMAppSourceListModel);
      sub_21CB810C4();

      goto LABEL_10;
    }

    sub_21C6EA794(*(v0 + 296), &qword_27CDEAC20, &qword_21CBAD710);
    sub_21C82A9A0(v15, type metadata accessor for PMAppSourceListModel.Source);
LABEL_6:
    sub_21C6EA794(*(v0 + 240), &unk_27CDED310, &unk_21CBA0150);
    goto LABEL_7;
  }

  v12 = *(v0 + 200);
  sub_21C6EA794(*(v0 + 296), &qword_27CDEAC20, &qword_21CBAD710);
  if (v11(v4 + v10, 1, v12) != 1)
  {
    goto LABEL_6;
  }

  sub_21C6EA794(*(v0 + 240), &qword_27CDEAC20, &qword_21CBAD710);
LABEL_9:
  v23 = *(v0 + 272);
  v22 = *(v0 + 280);
  sub_21C6EDBAC(*(v0 + 304), v22, &qword_27CDEAC20, &qword_21CBAD710);
  sub_21C6EDBAC(v7 + v26, v23, &qword_27CDEAC20, &qword_21CBAD710);
  swift_beginAccess();
  sub_21C743188(v22, v7 + v26);
  swift_endAccess();
  sub_21C7431F8(v23);
  sub_21C6EA794(v23, &qword_27CDEAC20, &qword_21CBAD710);
  sub_21C6EA794(v22, &qword_27CDEAC20, &qword_21CBAD710);
LABEL_10:
  v24 = *(v0 + 368);
  sub_21C6EA794(*(v0 + 304), &qword_27CDEAC20, &qword_21CBAD710);
  sub_21CB863E4();
  *(v0 + 136) = xmmword_21CBA6140;
  *(v0 + 88) = 0;
  *(v0 + 96) = 0;
  *(v0 + 104) = 1;

  return MEMORY[0x2822009F8](sub_21C824B7C, 0, 0);
}

uint64_t sub_21C824248()
{
  v1 = v0[47];
  v3 = v0[43];
  v2 = v0[44];
  v4 = v0[42];
  v5 = v0[39];
  v6 = v0[40];
  v7 = sub_21C7094C0(&qword_27CDED328, MEMORY[0x277D85928]);
  sub_21CB863C4();
  sub_21C7094C0(&unk_27CDED330, MEMORY[0x277D858F8]);
  sub_21CB861A4();
  v8 = *(v6 + 8);
  v0[52] = v8;
  v0[53] = (v6 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v8(v4, v5);
  v9 = *(MEMORY[0x277D85A58] + 4);
  v10 = swift_task_alloc();
  v0[54] = v10;
  *v10 = v0;
  v10[1] = sub_21C8243CC;
  v11 = v0[47];
  v13 = v0[43];
  v12 = v0[44];

  return MEMORY[0x2822008C8](v13, v0 + 14, v12, v7);
}

uint64_t sub_21C8243CC()
{
  v2 = *v1;
  v3 = *(*v1 + 432);
  v12 = *v1;
  *(*v1 + 440) = v0;

  v4 = *(v2 + 424);
  if (v0)
  {
    (*(v2 + 416))(*(v2 + 344), *(v2 + 312));
    v5 = sub_21C8249C8;
    v6 = 0;
    v7 = 0;
  }

  else
  {
    v8 = *(v2 + 376);
    v9 = *(v2 + 352);
    v10 = *(v2 + 360);
    (*(v2 + 416))(*(v2 + 344), *(v2 + 312));
    (*(v10 + 8))(v8, v9);
    v6 = *(v2 + 392);
    v7 = *(v2 + 400);
    v5 = sub_21C824530;
  }

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_21C824530()
{
  v2 = *(v0 + 296);
  v1 = *(v0 + 304);
  v3 = *(v0 + 240);
  v26 = *(v0 + 440);
  v27 = *(v0 + 224);
  v5 = *(v0 + 200);
  v4 = *(v0 + 208);
  v6 = *(*(v0 + 192) + 64);
  *(v0 + 448) = v6;
  swift_storeEnumTagMultiPayload();
  v7 = *(v4 + 56);
  *(v0 + 456) = v7;
  *(v0 + 464) = (v4 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v7(v1, 0, 1, v5);
  v8 = OBJC_IVAR____TtC17PasswordManagerUI20PMAppSourceListModel__selectedSource;
  *(v0 + 472) = OBJC_IVAR____TtC17PasswordManagerUI20PMAppSourceListModel__selectedSource;
  swift_beginAccess();
  v28 = v6;
  v25 = v8;
  sub_21C6EDBAC(v6 + v8, v2, &qword_27CDEAC20, &qword_21CBAD710);
  v9 = *(v27 + 48);
  sub_21C6EDBAC(v2, v3, &qword_27CDEAC20, &qword_21CBAD710);
  sub_21C6EDBAC(v1, v3 + v9, &qword_27CDEAC20, &qword_21CBAD710);
  v10 = *(v4 + 48);
  *(v0 + 480) = v10;
  *(v0 + 488) = (v4 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v10(v3, 1, v5) != 1)
  {
    v12 = *(v0 + 200);
    sub_21C6EDBAC(*(v0 + 240), *(v0 + 288), &qword_27CDEAC20, &qword_21CBAD710);
    v13 = v10(v3 + v9, 1, v12);
    v14 = *(v0 + 288);
    v15 = *(v0 + 296);
    if (v13 != 1)
    {
      v18 = *(v0 + 240);
      v19 = *(v0 + 216);
      sub_21C82A8D0(v3 + v9, v19, type metadata accessor for PMAppSourceListModel.Source);
      v20 = sub_21C918FE4(v14, v19);
      sub_21C82A9A0(v19, type metadata accessor for PMAppSourceListModel.Source);
      sub_21C6EA794(v15, &qword_27CDEAC20, &qword_21CBAD710);
      sub_21C82A9A0(v14, type metadata accessor for PMAppSourceListModel.Source);
      sub_21C6EA794(v18, &qword_27CDEAC20, &qword_21CBAD710);
      if (v20)
      {
        goto LABEL_9;
      }

LABEL_7:
      v16 = *(v0 + 304);
      swift_getKeyPath();
      v17 = swift_task_alloc();
      *(v17 + 16) = v28;
      *(v17 + 24) = v16;
      *(v0 + 168) = v28;
      sub_21C7094C0(&qword_27CDED320, type metadata accessor for PMAppSourceListModel);
      sub_21CB810C4();

      goto LABEL_10;
    }

    sub_21C6EA794(*(v0 + 296), &qword_27CDEAC20, &qword_21CBAD710);
    sub_21C82A9A0(v14, type metadata accessor for PMAppSourceListModel.Source);
LABEL_6:
    sub_21C6EA794(*(v0 + 240), &unk_27CDED310, &unk_21CBA0150);
    goto LABEL_7;
  }

  v11 = *(v0 + 200);
  sub_21C6EA794(*(v0 + 296), &qword_27CDEAC20, &qword_21CBAD710);
  if (v10(v3 + v9, 1, v11) != 1)
  {
    goto LABEL_6;
  }

  sub_21C6EA794(*(v0 + 240), &qword_27CDEAC20, &qword_21CBAD710);
LABEL_9:
  v22 = *(v0 + 272);
  v21 = *(v0 + 280);
  sub_21C6EDBAC(*(v0 + 304), v21, &qword_27CDEAC20, &qword_21CBAD710);
  sub_21C6EDBAC(v6 + v25, v22, &qword_27CDEAC20, &qword_21CBAD710);
  swift_beginAccess();
  sub_21C743188(v21, v6 + v25);
  swift_endAccess();
  sub_21C7431F8(v22);
  sub_21C6EA794(v22, &qword_27CDEAC20, &qword_21CBAD710);
  sub_21C6EA794(v21, &qword_27CDEAC20, &qword_21CBAD710);
LABEL_10:
  v23 = *(v0 + 368);
  sub_21C6EA794(*(v0 + 304), &qword_27CDEAC20, &qword_21CBAD710);
  sub_21CB863E4();
  *(v0 + 136) = xmmword_21CBA6140;
  *(v0 + 88) = 0;
  *(v0 + 96) = 0;
  *(v0 + 104) = 1;

  return MEMORY[0x2822009F8](sub_21C824B7C, 0, 0);
}

uint64_t sub_21C8249C8()
{
  (*(v0[45] + 8))(v0[47], v0[44]);
  v1 = v0[49];
  v2 = v0[50];

  return MEMORY[0x2822009F8](sub_21C824A3C, v1, v2);
}

uint64_t sub_21C824A3C()
{
  v20 = v0[55];
  v2 = v0[47];
  v1 = v0[48];
  v3 = v0[46];
  v5 = v0[42];
  v4 = v0[43];
  v6 = v0[41];
  v8 = v0[37];
  v7 = v0[38];
  v10 = v0[35];
  v9 = v0[36];
  v13 = v0[34];
  v14 = v0[33];
  v15 = v0[32];
  v16 = v0[31];
  v17 = v0[30];
  v18 = v0[29];
  v19 = v0[27];

  v11 = v0[1];

  return v11();
}

uint64_t sub_21C824B7C()
{
  v1 = v0[46];
  v2 = v0[44];
  v4 = v0[41];
  v3 = v0[42];
  v5 = v0[39];
  v6 = v0[40];
  v7 = sub_21C7094C0(&qword_27CDED328, MEMORY[0x277D85928]);
  sub_21CB863C4();
  sub_21C7094C0(&unk_27CDED330, MEMORY[0x277D858F8]);
  sub_21CB861A4();
  v8 = *(v6 + 8);
  v0[62] = v8;
  v0[63] = (v6 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v8(v3, v5);
  v9 = *(MEMORY[0x277D85A58] + 4);
  v10 = swift_task_alloc();
  v0[64] = v10;
  *v10 = v0;
  v10[1] = sub_21C824D04;
  v11 = v0[46];
  v12 = v0[44];
  v13 = v0[41];

  return MEMORY[0x2822008C8](v13, v0 + 11, v12, v7);
}

uint64_t sub_21C824D04()
{
  v2 = *v1;
  v3 = *(*v1 + 512);
  v12 = *v1;
  *(*v1 + 520) = v0;

  v4 = *(v2 + 504);
  if (v0)
  {
    (*(v2 + 496))(*(v2 + 328), *(v2 + 312));
    v5 = sub_21C82539C;
    v6 = 0;
    v7 = 0;
  }

  else
  {
    v9 = *(v2 + 360);
    v8 = *(v2 + 368);
    v10 = *(v2 + 352);
    (*(v2 + 496))(*(v2 + 328), *(v2 + 312));
    (*(v9 + 8))(v8, v10);
    v6 = *(v2 + 392);
    v7 = *(v2 + 400);
    v5 = sub_21C824E68;
  }

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_21C824E68()
{
  v49 = *(v0 + 480);
  v51 = *(v0 + 488);
  v1 = *(v0 + 464);
  v2 = *(v0 + 472);
  v3 = *(v0 + 448);
  v5 = *(v0 + 256);
  v4 = *(v0 + 264);
  v7 = *(v0 + 224);
  v6 = *(v0 + 232);
  v8 = *(v0 + 200);
  (*(v0 + 456))(v4, 1, 1, v8);
  sub_21C6EDBAC(v3 + v2, v5, &qword_27CDEAC20, &qword_21CBAD710);
  v9 = *(v7 + 48);
  sub_21C6EDBAC(v5, v6, &qword_27CDEAC20, &qword_21CBAD710);
  sub_21C6EDBAC(v4, v6 + v9, &qword_27CDEAC20, &qword_21CBAD710);
  v10 = v49(v6, 1, v8);
  v12 = *(v0 + 480);
  v11 = *(v0 + 488);
  if (v10 != 1)
  {
    v14 = *(v0 + 200);
    sub_21C6EDBAC(*(v0 + 232), *(v0 + 248), &qword_27CDEAC20, &qword_21CBAD710);
    v15 = v12(v6 + v9, 1, v14);
    v16 = *(v0 + 248);
    v17 = *(v0 + 256);
    if (v15 != 1)
    {
      v22 = *(v0 + 232);
      v23 = *(v0 + 216);
      sub_21C82A8D0(v6 + v9, v23, type metadata accessor for PMAppSourceListModel.Source);
      v24 = sub_21C918FE4(v16, v23);
      sub_21C82A9A0(v23, type metadata accessor for PMAppSourceListModel.Source);
      sub_21C6EA794(v17, &qword_27CDEAC20, &qword_21CBAD710);
      sub_21C82A9A0(v16, type metadata accessor for PMAppSourceListModel.Source);
      sub_21C6EA794(v22, &qword_27CDEAC20, &qword_21CBAD710);
      if (v24)
      {
        goto LABEL_9;
      }

LABEL_7:
      v18 = *(v0 + 520);
      v19 = *(v0 + 448);
      v20 = *(v0 + 264);
      swift_getKeyPath();
      v21 = swift_task_alloc();
      *(v21 + 16) = v19;
      *(v21 + 24) = v20;
      *(v0 + 176) = v19;
      sub_21C7094C0(&qword_27CDED320, type metadata accessor for PMAppSourceListModel);
      sub_21CB810C4();

      goto LABEL_10;
    }

    sub_21C6EA794(*(v0 + 256), &qword_27CDEAC20, &qword_21CBAD710);
    sub_21C82A9A0(v16, type metadata accessor for PMAppSourceListModel.Source);
LABEL_6:
    sub_21C6EA794(*(v0 + 232), &unk_27CDED310, &unk_21CBA0150);
    goto LABEL_7;
  }

  v13 = *(v0 + 200);
  sub_21C6EA794(*(v0 + 256), &qword_27CDEAC20, &qword_21CBAD710);
  if (v12(v6 + v9, 1, v13) != 1)
  {
    goto LABEL_6;
  }

  sub_21C6EA794(*(v0 + 232), &qword_27CDEAC20, &qword_21CBAD710);
LABEL_9:
  v25 = *(v0 + 472);
  v26 = *(v0 + 448);
  v28 = *(v0 + 272);
  v27 = *(v0 + 280);
  sub_21C6EDBAC(*(v0 + 264), v27, &qword_27CDEAC20, &qword_21CBAD710);
  sub_21C6EDBAC(v26 + v25, v28, &qword_27CDEAC20, &qword_21CBAD710);
  swift_beginAccess();
  sub_21C743188(v27, v26 + v25);
  swift_endAccess();
  sub_21C7431F8(v28);
  sub_21C6EA794(v28, &qword_27CDEAC20, &qword_21CBAD710);
  sub_21C6EA794(v27, &qword_27CDEAC20, &qword_21CBAD710);
LABEL_10:
  v29 = *(v0 + 408);
  sub_21C6EA794(*(v0 + 264), &qword_27CDEAC20, &qword_21CBAD710);
  if (v29 == 2)
  {
    v31 = *(v0 + 376);
    v30 = *(v0 + 384);
    v32 = *(v0 + 368);
    v33 = *(v0 + 336);
    v34 = *(v0 + 344);
    v35 = *(v0 + 328);
    v37 = *(v0 + 296);
    v36 = *(v0 + 304);
    v38 = *(v0 + 288);
    v43 = *(v0 + 280);
    v44 = *(v0 + 272);
    v45 = *(v0 + 264);
    v46 = *(v0 + 256);
    v47 = *(v0 + 248);
    v48 = *(v0 + 240);
    v50 = *(v0 + 232);
    v52 = *(v0 + 216);
    v39 = *(v0 + 184);

    sub_21CB82094();

    v40 = *(v0 + 8);

    return v40();
  }

  else
  {
    ++*(v0 + 408);
    v42 = *(v0 + 376);
    sub_21CB863E4();
    *(v0 + 152) = xmmword_21CBA6140;
    *(v0 + 112) = 0;
    *(v0 + 120) = 0;
    *(v0 + 128) = 1;

    return MEMORY[0x2822009F8](sub_21C824248, 0, 0);
  }
}

uint64_t sub_21C82539C()
{
  (*(v0[45] + 8))(v0[46], v0[44]);
  v1 = v0[49];
  v2 = v0[50];

  return MEMORY[0x2822009F8](sub_21C825410, v1, v2);
}

uint64_t sub_21C825410()
{
  v20 = v0[65];
  v2 = v0[47];
  v1 = v0[48];
  v3 = v0[46];
  v5 = v0[42];
  v4 = v0[43];
  v6 = v0[41];
  v8 = v0[37];
  v7 = v0[38];
  v10 = v0[35];
  v9 = v0[36];
  v13 = v0[34];
  v14 = v0[33];
  v15 = v0[32];
  v16 = v0[31];
  v17 = v0[30];
  v18 = v0[29];
  v19 = v0[27];

  v11 = v0[1];

  return v11();
}

uint64_t sub_21C825550(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[8] = a4;
  v5[9] = a5;
  v6 = sub_21CB82124();
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v5[12] = *(v7 + 64);
  v5[13] = swift_task_alloc();
  sub_21CB858B4();
  v5[14] = sub_21CB858A4();
  v9 = sub_21CB85874();

  return MEMORY[0x2822009F8](sub_21C82564C, v9, v8);
}

uint64_t sub_21C82564C()
{
  v2 = v0[13];
  v1 = v0[14];
  v3 = v0[11];
  v4 = v0[12];
  v6 = v0[9];
  v5 = v0[10];
  v7 = v0[8];

  sub_21CB82114();
  sub_21C8C7F84();
  sub_21C87FF18(102, 0xE100000000000000);

  v8 = objc_opt_self();
  (*(v3 + 16))(v2, v7, v5);
  v9 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v10 = swift_allocObject();
  (*(v3 + 32))(v10 + v9, v2, v5);
  v0[6] = sub_21C82A660;
  v0[7] = v10;
  v0[2] = MEMORY[0x277D85DD0];
  v0[3] = 1107296256;
  v0[4] = sub_21C6ECBD4;
  v0[5] = &block_descriptor_3;
  v11 = _Block_copy(v0 + 2);
  v12 = v0[7];

  [v8 addCommitHandler:v11 forPhase:2];
  _Block_release(v11);

  v13 = v0[1];

  return v13();
}

char *sub_21C8257FC()
{
  if (*(v0 + 16))
  {
    v1 = *(v0 + 16);
  }

  else
  {
    v2 = v0;
    v3 = type metadata accessor for PMAccountsState();
    v4 = *(v3 + 48);
    v5 = *(v3 + 52);
    swift_allocObject();
    v1 = sub_21C6EB34C();
    swift_getKeyPath();
    swift_getKeyPath();

    sub_21CB81DC4();
    swift_getKeyPath();
    swift_getKeyPath();

    sub_21CB81DC4();
    *(v1 + 3) = &off_282E4C138;
    swift_unknownObjectWeakAssign();
    v6 = *(v2 + 16);
    *(v2 + 16) = v1;
  }

  return v1;
}

id sub_21C825920()
{
  v1 = *(v0 + 24);
  if (v1)
  {
    v2 = *(v0 + 24);
  }

  else
  {
    v3 = [objc_allocWithZone(MEMORY[0x277D499D8]) initForTesting_];
    v4 = *(v0 + 24);
    *(v0 + 24) = v3;
    v2 = v3;

    v1 = 0;
  }

  v5 = v1;
  return v2;
}

uint64_t sub_21C825990()
{
  v1 = *(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_21C8259F4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x3FFD && *(a1 + 16))
  {
    return (*a1 + 16381);
  }

  v3 = (((*(a1 + 8) >> 50) >> 12) | (4 * ((*(a1 + 8) >> 50) & 0xC00 | ((*(a1 + 8) & 7) << 7) | (*a1 >> 57) & 0x78 | *a1 & 7))) ^ 0x3FFF;
  if (v3 >> 2 >= 0xFFF)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_21C825A6C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x3FFC)
  {
    *result = a2 - 16381;
    *(result + 8) = 0;
    if (a3 >= 0x3FFD)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x3FFD)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 2) & 0xFFF | ((-a2 & 0x3FFF) << 12);
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
      *(result + 8) = ((v3 >> 7) | (v3 << 50)) & 0xF000000000000007;
    }
  }

  return result;
}

void *sub_21C825AE8(void *result, uint64_t a2)
{
  if (a2 < 3)
  {
    v2 = result[1] & 0xFFFFFFFFFFFFFF8 | (a2 << 62);
    *result &= 0xFFFFFFFFFFFFFF8uLL;
    result[1] = v2;
  }

  else
  {
    *result = 8 * (a2 - 3);
    result[1] = 0xC000000000000000;
  }

  return result;
}

uint64_t sub_21C825B18(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 17))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_21C825B60(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_21C825BA8()
{
  sub_21CB858B4();
  *(v0 + 16) = sub_21CB858A4();
  v2 = sub_21CB85874();

  return MEMORY[0x2822009F8](sub_21C825C3C, v2, v1);
}

uint64_t sub_21C825C3C()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_21C825CA0@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for PMAccount(0);
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

uint64_t sub_21C825D0C()
{
  sub_21CB858B4();
  *(v0 + 16) = sub_21CB858A4();
  v2 = sub_21CB85874();

  return MEMORY[0x2822009F8](sub_21C82AFB8, v2, v1);
}

uint64_t sub_21C825E84()
{
  sub_21CB858B4();
  *(v0 + 16) = sub_21CB858A4();
  v2 = sub_21CB85874();

  return MEMORY[0x2822009F8](sub_21C825F18, v2, v1);
}

uint64_t sub_21C825F18()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_21C825F7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for PMBulkOperationProgress();
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  swift_allocObject();

  sub_21C71DD5C(a3);
  v10 = sub_21C94C1A0(1, a1, a3, a4);
  swift_getKeyPath();
  swift_getKeyPath();

  sub_21CB81DC4();
  v11 = *(v10 + OBJC_IVAR____TtC17PasswordManagerUI23PMBulkOperationProgress_onCompletion);
  if (v11)
  {
    v12 = *(v10 + OBJC_IVAR____TtC17PasswordManagerUI23PMBulkOperationProgress_onCompletion + 8);
    v11(0, 255);
  }

  return v10;
}

uint64_t sub_21C826078()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  return sub_21C82103C();
}

uint64_t sub_21C826084()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  return sub_21C82119C();
}

uint64_t sub_21C826090()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  return sub_21C8212FC();
}

uint64_t sub_21C82609C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  return sub_21C82145C();
}

uint64_t sub_21C8260A8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  return sub_21C8215BC();
}

unint64_t sub_21C826104()
{
  result = qword_27CDED228;
  if (!qword_27CDED228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDED228);
  }

  return result;
}

uint64_t sub_21C826158(void **a1)
{
  v2 = *(type metadata accessor for PMAccount(0) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_21C715B40(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_21C82773C(v6);
  *a1 = v3;
  return result;
}

__n128 sub_21C826200@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21CB81DB4();

  result = v6;
  *(a2 + 32) = v7;
  *(a2 + 48) = v8;
  *(a2 + 64) = v9;
  *(a2 + 80) = v10;
  *a2 = v5;
  *(a2 + 16) = v6;
  return result;
}

uint64_t sub_21C8262BC(__int128 *a1, uint64_t *a2)
{
  v3 = a1[3];
  v17[2] = a1[2];
  v17[3] = v3;
  v17[4] = a1[4];
  v18 = *(a1 + 10);
  v4 = a1[1];
  v17[0] = *a1;
  v17[1] = v4;
  v5 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v6 = a1[2];
  v7 = a1[4];
  v14 = a1[3];
  v15 = v7;
  v16 = *(a1 + 10);
  v8 = a1[1];
  v11 = *a1;
  v12 = v8;
  v13 = v6;

  sub_21C6EDBAC(v17, v10, &unk_27CDED230, &unk_21CBA6460);
  return sub_21CB81DC4();
}

uint64_t sub_21C826394()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1D50, &qword_21CBA0C00);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v14 - v4;
  v6 = sub_21CB858E4();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  v7 = swift_allocObject();
  swift_weakInit();
  sub_21CB858B4();

  v8 = sub_21CB858A4();
  v9 = swift_allocObject();
  v10 = MEMORY[0x277D85700];
  v9[2] = v8;
  v9[3] = v10;
  v9[4] = v7;

  v11 = sub_21C98B308(0, 0, v5, &unk_21CBA6548, v9);
  v12 = *(v1 + OBJC_IVAR____TtC17PasswordManagerUI11PMTipsStore_observeTipsHandle);
  *(v1 + OBJC_IVAR____TtC17PasswordManagerUI11PMTipsStore_observeTipsHandle) = v11;
}

uint64_t sub_21C826504()
{
  v22 = v0;
  v1 = sub_21CB86314();
  if (!v1)
  {
    v1 = swift_allocError();
  }

  v2 = v1;
  (*(*(v0 + 432) + 8))(*(v0 + 440), *(v0 + 424));
  *(v0 + 376) = v2;
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDED298, &qword_21CBA6570);
  sub_21C82A2F0();
  result = swift_dynamicCast();
  if (result)
  {
    v5 = *(v0 + 456);

    v6 = *(v0 + 384);
    if (qword_27CDEA470 != -1)
    {
      swift_once();
    }

    v7 = sub_21CB81C84();
    __swift_project_value_buffer(v7, qword_27CE186E0);
    v8 = v6;
    v9 = sub_21CB81C64();
    v10 = sub_21CB85AF4();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v21 = v12;
      *v11 = 136446210;
      v13 = [v8 safari_privacyPreservingDescription];
      v14 = sub_21CB855C4();
      v16 = v15;

      v17 = sub_21C98E004(v14, v16, &v21);

      *(v11 + 4) = v17;
      _os_log_impl(&dword_21C6E5000, v9, v10, "Tips stream failed with error: %{public}s", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v12);
      MEMORY[0x21CF16D90](v12, -1, -1);
      MEMORY[0x21CF16D90](v11, -1, -1);
    }

    else
    {
    }

    v18 = *(v0 + 440);
    v19 = *(v0 + 416);

    v20 = *(v0 + 8);

    return v20();
  }

  return result;
}

uint64_t sub_21C8267B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[49] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDED270, &qword_21CBA6558);
  v4[50] = v5;
  v6 = *(v5 - 8);
  v4[51] = v6;
  v7 = *(v6 + 64) + 15;
  v4[52] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDED278, &qword_21CBA6560);
  v4[53] = v8;
  v9 = *(*(v8 - 8) + 64) + 15;
  v4[54] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDED280, &qword_21CBA6568);
  v4[55] = v10;
  v11 = *(v10 - 8);
  v4[56] = v11;
  v12 = *(v11 + 64) + 15;
  v4[57] = swift_task_alloc();
  v4[58] = sub_21CB858B4();
  v4[59] = sub_21CB858A4();
  v14 = sub_21CB85874();
  v4[60] = v14;
  v4[61] = v13;

  return MEMORY[0x2822009F8](sub_21C82695C, v14, v13);
}

uint64_t sub_21C82695C()
{
  v1 = v0[57];
  v3 = v0[53];
  v2 = v0[54];
  v5 = v0[51];
  v4 = v0[52];
  v7 = v0[49];
  v6 = v0[50];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDED230, &unk_21CBA6460);
  (*(v5 + 104))(v4, *MEMORY[0x277D85778], v6);
  sub_21CB85924();
  sub_21C6EADEC(&qword_27CDED288, &qword_27CDED278, &qword_21CBA6560);
  sub_21CB85964();
  swift_beginAccess();
  v8 = v0[58];
  v9 = sub_21CB858A4();
  v0[62] = v9;
  sub_21C6EADEC(&qword_27CDED290, &qword_27CDED280, &qword_21CBA6568);
  v10 = *(MEMORY[0x277D856D8] + 4);
  v11 = swift_task_alloc();
  v0[63] = v11;
  *v11 = v0;
  v11[1] = sub_21C826B38;
  v12 = v0[57];
  v13 = v0[55];
  v14 = MEMORY[0x277D85700];

  return MEMORY[0x282200310](v0 + 2, v9, v14);
}

uint64_t sub_21C826B38()
{
  v2 = *v1;
  v3 = *(*v1 + 504);
  v9 = *v1;

  v4 = v2[62];

  v5 = v2[60];
  v6 = v2[61];
  if (v0)
  {
    v7 = sub_21C826E98;
  }

  else
  {
    v7 = sub_21C826C58;
  }

  return MEMORY[0x2822009F8](v7, v5, v6);
}

uint64_t sub_21C826C58()
{
  v1 = *(v0 + 32);
  *(v0 + 104) = *(v0 + 16);
  v2 = *(v0 + 48);
  v3 = *(v0 + 64);
  *(v0 + 136) = v2;
  *(v0 + 152) = v3;
  v4 = *(v0 + 80);
  *(v0 + 168) = v4;
  v5 = *(v0 + 96);
  v6 = *(v0 + 104);
  *(v0 + 184) = v5;
  *(v0 + 120) = v1;
  v7 = *(v0 + 112);
  *(v0 + 344) = v5;
  *(v0 + 312) = v3;
  *(v0 + 328) = v4;
  *(v0 + 280) = v1;
  *(v0 + 296) = v2;
  if (v7 == 1)
  {
    v8 = *(v0 + 472);
    (*(*(v0 + 448) + 8))(*(v0 + 456), *(v0 + 440));

    v9 = *(v0 + 456);
    v10 = *(v0 + 432);
    v11 = *(v0 + 416);

    v12 = *(v0 + 8);

    return v12();
  }

  else
  {
    v14 = *(v0 + 392);
    if (swift_weakLoadStrong())
    {
      swift_getKeyPath();
      swift_getKeyPath();
      *(v0 + 192) = v6;
      *(v0 + 200) = v7;
      v15 = *(v0 + 328);
      *(v0 + 240) = *(v0 + 312);
      *(v0 + 256) = v15;
      *(v0 + 272) = *(v0 + 344);
      v16 = *(v0 + 296);
      *(v0 + 208) = *(v0 + 280);
      *(v0 + 224) = v16;
      sub_21CB81DC4();
    }

    else
    {
      sub_21C6EA794(v0 + 104, &qword_27CDED2A8, &qword_21CBA65C0);
    }

    v17 = *(v0 + 464);
    v18 = sub_21CB858A4();
    *(v0 + 496) = v18;
    sub_21C6EADEC(&qword_27CDED290, &qword_27CDED280, &qword_21CBA6568);
    v19 = *(MEMORY[0x277D856D8] + 4);
    v20 = swift_task_alloc();
    *(v0 + 504) = v20;
    *v20 = v0;
    v20[1] = sub_21C826B38;
    v21 = *(v0 + 456);
    v22 = *(v0 + 440);
    v23 = MEMORY[0x277D85700];

    return MEMORY[0x282200310](v0 + 16, v18, v23);
  }
}

uint64_t sub_21C826E98()
{
  v23 = v0;
  v1 = sub_21CB86314();
  if (!v1)
  {
    v1 = swift_allocError();
  }

  v2 = v1;
  (*(*(v0 + 448) + 8))(*(v0 + 456), *(v0 + 440));
  *(v0 + 376) = v2;
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDED298, &qword_21CBA6570);
  sub_21C82A2F0();
  result = swift_dynamicCast();
  if (result)
  {
    v5 = *(v0 + 472);

    v6 = *(v0 + 384);
    if (qword_27CDEA470 != -1)
    {
      swift_once();
    }

    v7 = sub_21CB81C84();
    __swift_project_value_buffer(v7, qword_27CE186E0);
    v8 = v6;
    v9 = sub_21CB81C64();
    v10 = sub_21CB85AF4();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v22 = v12;
      *v11 = 136446210;
      v13 = [v8 safari_privacyPreservingDescription];
      v14 = sub_21CB855C4();
      v16 = v15;

      v17 = sub_21C98E004(v14, v16, &v22);

      *(v11 + 4) = v17;
      _os_log_impl(&dword_21C6E5000, v9, v10, "Tips stream failed with error: %{public}s", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v12);
      MEMORY[0x21CF16D90](v12, -1, -1);
      MEMORY[0x21CF16D90](v11, -1, -1);
    }

    else
    {
    }

    v18 = *(v0 + 456);
    v19 = *(v0 + 432);
    v20 = *(v0 + 416);

    v21 = *(v0 + 8);

    return v21();
  }

  return result;
}

double sub_21C827154@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21CB81DB4();

  result = *&v5;
  *a2 = v5;
  return result;
}

uint64_t sub_21C8271D4(uint64_t a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  sub_21C82A1B0(v2, v3);
  return sub_21CB81DC4();
}

uint64_t sub_21C827284(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 56) = v5;
  v12 = sub_21CB86184();
  *(v6 + 64) = v12;
  v13 = *(v12 - 8);
  *(v6 + 72) = v13;
  v14 = *(v13 + 64) + 15;
  *(v6 + 80) = swift_task_alloc();
  *(v6 + 88) = swift_task_alloc();
  *(v6 + 40) = a1;
  *(v6 + 48) = a2;
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;
  *(v6 + 32) = a5 & 1;

  return MEMORY[0x2822009F8](sub_21C827384, 0, 0);
}

uint64_t sub_21C827384()
{
  v1 = v0[10];
  v2 = v0[11];
  v3 = v0[8];
  v4 = v0[9];
  v5 = v0[7];
  v6 = sub_21CB86194();
  v7 = sub_21C7094C0(&qword_27CDED328, MEMORY[0x277D85928]);
  sub_21CB863C4();
  sub_21C7094C0(&unk_27CDED330, MEMORY[0x277D858F8]);
  sub_21CB861A4();
  v8 = *(v4 + 8);
  v0[12] = v8;
  v0[13] = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v8(v1, v3);
  v9 = *(MEMORY[0x277D85A58] + 4);
  v10 = swift_task_alloc();
  v0[14] = v10;
  *v10 = v0;
  v10[1] = sub_21C827514;
  v11 = v0[11];
  v12 = v0[7];

  return MEMORY[0x2822008C8](v11, v0 + 2, v6, v7);
}

uint64_t sub_21C827514()
{
  v2 = *(*v1 + 112);
  v3 = *(*v1 + 104);
  v4 = *(*v1 + 96);
  v5 = *(*v1 + 88);
  v6 = *(*v1 + 64);
  v7 = *v1;
  v7[15] = v0;

  v4(v5, v6);
  if (v0)
  {

    return MEMORY[0x2822009F8](sub_21C8276D0, 0, 0);
  }

  else
  {
    v9 = v7[10];
    v8 = v7[11];

    v10 = v7[1];

    return v10();
  }
}

uint64_t sub_21C8276D0()
{
  v2 = v0[10];
  v1 = v0[11];

  v3 = v0[1];
  v4 = v0[15];

  return v3();
}

uint64_t sub_21C82773C(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_21CB862E4();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        type metadata accessor for PMAccount(0);
        v6 = sub_21CB85844();
        *(v6 + 16) = v5;
      }

      v7 = *(type metadata accessor for PMAccount(0) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_21C827C48(v8, v9, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_21C827868(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_21C827868(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v52 = type metadata accessor for PMAccount.Storage(0);
  v8 = *(*(v52 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v52);
  v51 = (&v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v9);
  v12 = (&v40 - v11);
  v13 = type metadata accessor for PMAccount(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v40 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v40 - v19;
  result = MEMORY[0x28223BE20](v18);
  v24 = &v40 - v23;
  v42 = a2;
  if (a3 != a2)
  {
    v25 = result;
    v26 = *a4;
    v27 = *(v22 + 72);
    v28 = *a4 + v27 * (a3 - 1);
    v49 = -v27;
    v50 = v26;
    v29 = a1 - a3;
    v41 = v27;
    v30 = v26 + v27 * a3;
    v48 = v12;
LABEL_5:
    v45 = v28;
    v46 = a3;
    v43 = v30;
    v44 = v29;
    v31 = v28;
    while (1)
    {
      sub_21C82A938(v30, v24, type metadata accessor for PMAccount);
      sub_21C82A938(v31, v20, type metadata accessor for PMAccount);
      sub_21C82A938(&v24[*(v25 + 24)], v12, type metadata accessor for PMAccount.Storage);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v33 = v12;
      if (EnumCaseMultiPayload == 1)
      {
        goto LABEL_9;
      }

      v34 = *v12;
      v35 = v20;
      sub_21C82A938(&v20[*(v25 + 24)], v51, type metadata accessor for PMAccount.Storage);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        break;
      }

      v36 = v17;
      v37 = v25;
      v38 = *v51;
      v47 = [v34 compare_];

      v25 = v37;
      v17 = v36;

      sub_21C82A9A0(v35, type metadata accessor for PMAccount);
      result = sub_21C82A9A0(v24, type metadata accessor for PMAccount);
      v20 = v35;
      v12 = v48;
      if (v47 != -1)
      {
        goto LABEL_4;
      }

LABEL_11:
      if (!v50)
      {
        __break(1u);
        return result;
      }

      sub_21C82A8D0(v30, v17, type metadata accessor for PMAccount);
      swift_arrayInitWithTakeFrontToBack();
      result = sub_21C82A8D0(v17, v31, type metadata accessor for PMAccount);
      v31 += v49;
      v30 += v49;
      if (__CFADD__(v29++, 1))
      {
LABEL_4:
        a3 = v46 + 1;
        v28 = v45 + v41;
        v29 = v44 - 1;
        v30 = v43 + v41;
        if (v46 + 1 == v42)
        {
          return result;
        }

        goto LABEL_5;
      }
    }

    v33 = v51;
    v12 = v48;
LABEL_9:
    sub_21C82A9A0(v33, type metadata accessor for PMAccount.Storage);
    sub_21C82A9A0(v20, type metadata accessor for PMAccount);
    result = sub_21C82A9A0(v24, type metadata accessor for PMAccount);
    goto LABEL_11;
  }

  return result;
}

uint64_t sub_21C827C48(int64_t *a1, uint64_t a2, int64_t a3, int64_t a4)
{
  v158 = a1;
  v6 = type metadata accessor for PMAccount.Storage(0);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = (&v151 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = MEMORY[0x28223BE20](v8);
  v13 = (&v151 - v12);
  v14 = MEMORY[0x28223BE20](v11);
  v162 = (&v151 - v15);
  v16 = MEMORY[0x28223BE20](v14);
  v164 = (&v151 - v17);
  v18 = MEMORY[0x28223BE20](v16);
  v152 = (&v151 - v19);
  MEMORY[0x28223BE20](v18);
  v154 = (&v151 - v20);
  v176 = type metadata accessor for PMAccount(0);
  v167 = *(v176 - 8);
  v21 = *(v167 + 64);
  v22 = MEMORY[0x28223BE20](v176);
  v163 = &v151 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v22);
  v180 = &v151 - v25;
  v26 = MEMORY[0x28223BE20](v24);
  v28 = &v151 - v27;
  v29 = MEMORY[0x28223BE20](v26);
  v31 = &v151 - v30;
  v32 = MEMORY[0x28223BE20](v29);
  v33 = MEMORY[0x28223BE20](v32);
  v171 = &v151 - v34;
  v35 = MEMORY[0x28223BE20](v33);
  v153 = &v151 - v36;
  result = MEMORY[0x28223BE20](v35);
  v156 = &v151 - v39;
  v40 = *(a3 + 8);
  if (v40 < 1)
  {
    v42 = MEMORY[0x277D84F90];
LABEL_112:
    a4 = *v158;
    if (!*v158)
    {
      goto LABEL_152;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    v44 = v172;
    if (result)
    {
      v147 = v42;
LABEL_115:
      v42 = v44;
      v182 = v147;
      v44 = *(v147 + 2);
      if (v44 >= 2)
      {
        while (*a3)
        {
          v148 = *&v147[16 * v44];
          v149 = *&v147[16 * v44 + 24];
          sub_21C828B10(*a3 + *(v167 + 72) * v148, *a3 + *(v167 + 72) * *&v147[16 * v44 + 16], *a3 + *(v167 + 72) * v149, a4);
          if (v42)
          {
          }

          if (v149 < v148)
          {
            goto LABEL_139;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v147 = sub_21C864538(v147);
          }

          if (v44 - 2 >= *(v147 + 2))
          {
            goto LABEL_140;
          }

          v150 = &v147[16 * v44];
          *v150 = v148;
          *(v150 + 1) = v149;
          v182 = v147;
          result = sub_21C8644AC(v44 - 1);
          v147 = v182;
          v44 = *(v182 + 2);
          if (v44 <= 1)
          {
          }
        }

        goto LABEL_150;
      }
    }

LABEL_146:
    result = sub_21C864538(v42);
    v147 = result;
    goto LABEL_115;
  }

  v170 = v38;
  v41 = 0;
  v42 = MEMORY[0x277D84F90];
  v168 = a3;
  v157 = a4;
  v174 = v10;
  v175 = v6;
  v181 = v28;
  v177 = v31;
  while (2)
  {
    v43 = a3;
    v44 = v41;
    a3 = (v41 + 1);
    v159 = v41;
    if ((v41 + 1) >= v40)
    {
      goto LABEL_38;
    }

    v165 = v40;
    v45 = *v43;
    v46 = *(v167 + 72);
    v173 = (v41 + 1);
    v47 = v45 + v46 * a3;
    v48 = v156;
    sub_21C82A938(v47, v156, type metadata accessor for PMAccount);
    v169 = v46;
    v49 = v45 + v46 * v44;
    v50 = v45;
    v51 = v153;
    sub_21C82A938(v49, v153, type metadata accessor for PMAccount);
    v52 = v176;
    v53 = v154;
    sub_21C82A938(v48 + *(v176 + 24), v154, type metadata accessor for PMAccount.Storage);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v54 = v53;
    }

    else
    {
      v55 = *v53;
      v56 = v51 + *(v52 + 24);
      v57 = v152;
      sub_21C82A938(v56, v152, type metadata accessor for PMAccount.Storage);
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        v59 = *v57;
        v60 = [v55 compare_];

        v61 = v60 + 1 == 0;
        v28 = v181;
        v58 = v61;
        goto LABEL_13;
      }

      v54 = v57;
    }

    sub_21C82A9A0(v54, type metadata accessor for PMAccount.Storage);
    v58 = 1;
LABEL_13:
    LODWORD(v166) = v58;
    v155 = v42;
    sub_21C82A9A0(v51, type metadata accessor for PMAccount);
    result = sub_21C82A9A0(v156, type metadata accessor for PMAccount);
    v62 = v159 + 2;
    v63 = v169 * (v159 + 2);
    v64 = v50 + v63;
    v65 = v173;
    v66 = (v169 * v173);
    v67 = v50 + v169 * v173;
    do
    {
      v69 = v62;
      v70 = v65;
      v42 = v66;
      a3 = v63;
      v178 = v62;
      if (v62 >= v165)
      {
        break;
      }

      v179 = v65;
      v71 = v171;
      sub_21C82A938(v64, v171, type metadata accessor for PMAccount);
      v72 = v170;
      sub_21C82A938(v67, v170, type metadata accessor for PMAccount);
      v73 = v176;
      v74 = v164;
      sub_21C82A938(v71 + *(v176 + 24), v164, type metadata accessor for PMAccount.Storage);
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        v173 = *v74;
        v74 = v162;
        sub_21C82A938(v72 + *(v73 + 24), v162, type metadata accessor for PMAccount.Storage);
        if (swift_getEnumCaseMultiPayload() != 1)
        {
          v75 = *v74;
          v76 = v173;
          v77 = [v173 compare_];

          v68 = v77 == -1;
          goto LABEL_16;
        }
      }

      sub_21C82A9A0(v74, type metadata accessor for PMAccount.Storage);
      v68 = 1;
LABEL_16:
      v31 = v177;
      v69 = v178;
      sub_21C82A9A0(v170, type metadata accessor for PMAccount);
      result = sub_21C82A9A0(v171, type metadata accessor for PMAccount);
      v62 = v69 + 1;
      v64 += v169;
      v67 += v169;
      v70 = v179;
      v65 = v179 + 1;
      v66 = &v42[v169];
      v63 = a3 + v169;
      v28 = v181;
    }

    while (v166 == v68);
    if (!v166)
    {
      a3 = v69;
      v43 = v168;
      a4 = v157;
      v6 = v175;
      v42 = v155;
      goto LABEL_37;
    }

    v44 = v159;
    a4 = v157;
    if (v69 < v159)
    {
      goto LABEL_143;
    }

    if (v159 >= v69)
    {
      a3 = v69;
      v43 = v168;
      v6 = v175;
      v42 = v155;
    }

    else
    {
      v78 = v159;
      v79 = (v159 * v169);
      v6 = v175;
      do
      {
        if (v78 != v70)
        {
          v179 = v70;
          v81 = v6;
          v82 = *v168;
          if (!*v168)
          {
            goto LABEL_149;
          }

          sub_21C82A8D0(&v79[v82], v163, type metadata accessor for PMAccount);
          if (v79 < v42 || &v79[v82] >= v82 + a3)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v79 != v42)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          result = sub_21C82A8D0(v163, &v42[v82], type metadata accessor for PMAccount);
          v6 = v81;
          v69 = v178;
          v70 = v179;
        }

        ++v78;
        v42 -= v169;
        a3 -= v169;
        v79 += v169;
      }

      while (v78 < v70--);
      a3 = v69;
      v43 = v168;
      a4 = v157;
      v42 = v155;
      v31 = v177;
LABEL_37:
      v44 = v159;
    }

LABEL_38:
    v83 = v43[1];
    if (a3 >= v83)
    {
      goto LABEL_59;
    }

    if (__OFSUB__(a3, v44))
    {
      goto LABEL_142;
    }

    if ((a3 - v44) >= a4)
    {
      goto LABEL_59;
    }

    v84 = (v44 + a4);
    if (__OFADD__(v44, a4))
    {
      goto LABEL_144;
    }

    if (v84 >= v83)
    {
      v84 = v83;
    }

    if (v84 < v44)
    {
LABEL_145:
      __break(1u);
      goto LABEL_146;
    }

    if (a3 == v84)
    {
LABEL_59:
      if (a3 < v44)
      {
        goto LABEL_141;
      }

      v173 = a3;
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_21C86467C(0, *(v42 + 2) + 1, 1, v42);
        v42 = result;
      }

      v103 = *(v42 + 2);
      v102 = *(v42 + 3);
      v44 = v103 + 1;
      v41 = v173;
      if (v103 >= v102 >> 1)
      {
        result = sub_21C86467C((v102 > 1), v103 + 1, 1, v42);
        v41 = v173;
        v42 = result;
      }

      *(v42 + 2) = v44;
      v104 = &v42[16 * v103];
      *(v104 + 4) = v159;
      *(v104 + 5) = v41;
      if (!*v158)
      {
        goto LABEL_151;
      }

      if (!v103)
      {
LABEL_3:
        a3 = v168;
        v40 = v168[1];
        a4 = v157;
        if (v41 >= v40)
        {
          goto LABEL_112;
        }

        continue;
      }

      a3 = *v158;
      while (1)
      {
        a4 = v44 - 1;
        if (v44 >= 4)
        {
          break;
        }

        if (v44 == 3)
        {
          v105 = *(v42 + 4);
          v106 = *(v42 + 5);
          v115 = __OFSUB__(v106, v105);
          v107 = v106 - v105;
          v108 = v115;
LABEL_80:
          if (v108)
          {
            goto LABEL_130;
          }

          v121 = &v42[16 * v44];
          v123 = *v121;
          v122 = *(v121 + 1);
          v124 = __OFSUB__(v122, v123);
          v125 = v122 - v123;
          v126 = v124;
          if (v124)
          {
            goto LABEL_133;
          }

          v127 = &v42[16 * a4 + 32];
          v129 = *v127;
          v128 = *(v127 + 1);
          v115 = __OFSUB__(v128, v129);
          v130 = v128 - v129;
          if (v115)
          {
            goto LABEL_136;
          }

          if (__OFADD__(v125, v130))
          {
            goto LABEL_137;
          }

          if (v125 + v130 >= v107)
          {
            if (v107 < v130)
            {
              a4 = v44 - 2;
            }

            goto LABEL_101;
          }

          goto LABEL_94;
        }

        v131 = &v42[16 * v44];
        v133 = *v131;
        v132 = *(v131 + 1);
        v115 = __OFSUB__(v132, v133);
        v125 = v132 - v133;
        v126 = v115;
LABEL_94:
        if (v126)
        {
          goto LABEL_132;
        }

        v134 = &v42[16 * a4];
        v136 = *(v134 + 4);
        v135 = *(v134 + 5);
        v115 = __OFSUB__(v135, v136);
        v137 = v135 - v136;
        if (v115)
        {
          goto LABEL_135;
        }

        if (v137 < v125)
        {
          goto LABEL_3;
        }

LABEL_101:
        v142 = a4 - 1;
        if (a4 - 1 >= v44)
        {
          __break(1u);
LABEL_126:
          __break(1u);
LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
LABEL_136:
          __break(1u);
LABEL_137:
          __break(1u);
LABEL_138:
          __break(1u);
LABEL_139:
          __break(1u);
LABEL_140:
          __break(1u);
LABEL_141:
          __break(1u);
LABEL_142:
          __break(1u);
LABEL_143:
          __break(1u);
LABEL_144:
          __break(1u);
          goto LABEL_145;
        }

        if (!*v168)
        {
          goto LABEL_148;
        }

        v143 = v6;
        v44 = *&v42[16 * v142 + 32];
        v144 = *&v42[16 * a4 + 40];
        v145 = v172;
        sub_21C828B10(*v168 + *(v167 + 72) * v44, *v168 + *(v167 + 72) * *&v42[16 * a4 + 32], *v168 + *(v167 + 72) * v144, a3);
        v172 = v145;
        if (v145)
        {
        }

        if (v144 < v44)
        {
          goto LABEL_126;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v42 = sub_21C864538(v42);
        }

        if (v142 >= *(v42 + 2))
        {
          goto LABEL_127;
        }

        v146 = &v42[16 * v142];
        *(v146 + 4) = v44;
        *(v146 + 5) = v144;
        v182 = v42;
        result = sub_21C8644AC(a4);
        v42 = v182;
        v44 = *(v182 + 2);
        v31 = v177;
        v6 = v143;
        v41 = v173;
        if (v44 <= 1)
        {
          goto LABEL_3;
        }
      }

      v109 = &v42[16 * v44 + 32];
      v110 = *(v109 - 64);
      v111 = *(v109 - 56);
      v115 = __OFSUB__(v111, v110);
      v112 = v111 - v110;
      if (v115)
      {
        goto LABEL_128;
      }

      v114 = *(v109 - 48);
      v113 = *(v109 - 40);
      v115 = __OFSUB__(v113, v114);
      v107 = v113 - v114;
      v108 = v115;
      if (v115)
      {
        goto LABEL_129;
      }

      v116 = &v42[16 * v44];
      v118 = *v116;
      v117 = *(v116 + 1);
      v115 = __OFSUB__(v117, v118);
      v119 = v117 - v118;
      if (v115)
      {
        goto LABEL_131;
      }

      v115 = __OFADD__(v107, v119);
      v120 = v107 + v119;
      if (v115)
      {
        goto LABEL_134;
      }

      if (v120 >= v112)
      {
        v138 = &v42[16 * a4 + 32];
        v140 = *v138;
        v139 = *(v138 + 1);
        v115 = __OFSUB__(v139, v140);
        v141 = v139 - v140;
        if (v115)
        {
          goto LABEL_138;
        }

        if (v107 < v141)
        {
          a4 = v44 - 2;
        }

        goto LABEL_101;
      }

      goto LABEL_80;
    }

    break;
  }

  v155 = v42;
  v85 = *v168;
  v86 = *(v167 + 72);
  v87 = *v168 + v86 * (a3 - 1);
  v178 = -v86;
  v179 = v85;
  v88 = v44 - a3;
  v160 = v86;
  a4 = &v85[a3 * v86];
  v161 = v84;
LABEL_48:
  v173 = a3;
  v165 = a4;
  v166 = v88;
  v169 = v87;
  v89 = v87;
  v90 = v176;
  while (1)
  {
    sub_21C82A938(a4, v31, type metadata accessor for PMAccount);
    sub_21C82A938(v89, v28, type metadata accessor for PMAccount);
    sub_21C82A938(&v31[*(v90 + 24)], v13, type metadata accessor for PMAccount.Storage);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v92 = v13;
    v93 = v90;
    if (EnumCaseMultiPayload == 1)
    {
      goto LABEL_52;
    }

    v94 = v13;
    v95 = *v13;
    v96 = v174;
    sub_21C82A938(&v28[*(v90 + 24)], v174, type metadata accessor for PMAccount.Storage);
    if (swift_getEnumCaseMultiPayload() == 1)
    {

      v92 = v96;
      v93 = v176;
      v13 = v94;
      v6 = v175;
      v31 = v177;
LABEL_52:
      sub_21C82A9A0(v92, type metadata accessor for PMAccount.Storage);
      sub_21C82A9A0(v28, type metadata accessor for PMAccount);
      result = sub_21C82A9A0(v31, type metadata accessor for PMAccount);
      goto LABEL_54;
    }

    v97 = *v96;
    v98 = [v95 compare_];

    sub_21C82A9A0(v28, type metadata accessor for PMAccount);
    v31 = v177;
    result = sub_21C82A9A0(v177, type metadata accessor for PMAccount);
    v93 = v176;
    v13 = v94;
    v6 = v175;
    if (v98 != -1)
    {
      goto LABEL_47;
    }

LABEL_54:
    if (!v179)
    {
      break;
    }

    v99 = v180;
    sub_21C82A8D0(a4, v180, type metadata accessor for PMAccount);
    swift_arrayInitWithTakeFrontToBack();
    v100 = v99;
    v28 = v181;
    sub_21C82A8D0(v100, v89, type metadata accessor for PMAccount);
    v89 += v178;
    a4 += v178;
    v101 = __CFADD__(v88++, 1);
    v90 = v93;
    if (v101)
    {
LABEL_47:
      a3 = v173 + 1;
      v87 = v169 + v160;
      v88 = v166 - 1;
      a4 = v165 + v160;
      if ((v173 + 1) == v161)
      {
        a3 = v161;
        v42 = v155;
        v44 = v159;
        goto LABEL_59;
      }

      goto LABEL_48;
    }
  }

  __break(1u);
LABEL_148:
  __break(1u);
LABEL_149:
  __break(1u);
LABEL_150:
  __break(1u);
LABEL_151:
  __break(1u);
LABEL_152:
  __break(1u);
  return result;
}