uint64_t sub_26AFBDA3C()
{
  result = sub_26B079230();
  qword_2803DDD40 = result;
  return result;
}

uint64_t sub_26AFBDA5C()
{
  v1 = *sub_26AFBC5A0();

  return v1;
}

uint64_t sub_26AFBDA8C()
{
  result = sub_26B079220();
  qword_2803DDD48 = result;
  return result;
}

uint64_t *sub_26AFBDAAC()
{
  if (qword_2803DB478 != -1)
  {
    swift_once();
  }

  return &qword_2803DDD48;
}

uint64_t sub_26AFBDB0C()
{
  v1 = *sub_26AFBDAAC();

  return v1;
}

uint64_t sub_26AFBDB3C()
{
  result = sub_26B079200();
  qword_2803DDD50 = result;
  return result;
}

uint64_t *sub_26AFBDB5C()
{
  if (qword_2803DB480 != -1)
  {
    swift_once();
  }

  return &qword_2803DDD50;
}

uint64_t sub_26AFBDBBC()
{
  v1 = *sub_26AFBDB5C();

  return v1;
}

id sub_26AFBDC5C(uint64_t a1, unint64_t a2)
{
  v4 = sub_26B0781C0();
  v7 = [v3 initWithData_];
  MEMORY[0x277D82BD8](v4);
  sub_26AE96418(a1, a2);
  return v7;
}

uint64_t sub_26AFBDCC8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v6 = a2;
  v4 = a1;
  v11 = sub_26B078D30();
  v9 = *(v11 - 8);
  v10 = v11 - 8;
  v5 = (*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x28223BE20](v11);
  v8 = &v4 - v5;
  (*(v9 + 16))(&v4 - v5, v2);
  v7 = v12;
  sub_26AFE66BC(v12);
  memcpy(v6, v7, 0x110uLL);
  return (*(v9 + 8))(v8, v11);
}

uint64_t sub_26AFBDDF8(void *a1)
{
  sub_26AFC4948(a1, v2);
  memcpy(__dst, v2, sizeof(__dst));
  return sub_26AFE67BC(__dst);
}

uint64_t sub_26AFBDE64(uint64_t *a1, uint64_t a2)
{
  v5 = *a1;

  *a2 = v5;
  v6 = a1[1];
  v7 = *(a1 + 16);

  *(a2 + 8) = v6;
  *(a2 + 16) = v7 & 1;
  v8 = a1[3];
  v9 = a1[4];
  v10 = a1[5];
  v11 = a1[6];
  v12 = *(a1 + 56);
  sub_26AFB9610(v8, v9, v10, v11, v12 & 1);
  *(a2 + 24) = v8;
  *(a2 + 32) = v9;
  *(a2 + 40) = v10;
  *(a2 + 48) = v11;
  *(a2 + 56) = v12 & 1;
  *(a2 + 64) = a1[8];
  v13 = a1[9];

  *(a2 + 72) = v13;
  *(a2 + 80) = a1[10];
  v16 = a1[11];

  *(a2 + 88) = v16;
  if (a1[13])
  {
    v3 = a1[12];

    *(a2 + 96) = v3;
    v4 = a1[13];

    *(a2 + 104) = v4;
  }

  else
  {
    *(a2 + 96) = *(a1 + 6);
  }

  *(a2 + 112) = *(a1 + 112);
  return a2;
}

uint64_t sub_26AFBE008(uint64_t a1)
{

  sub_26AFB9674(*(a1 + 24), *(a1 + 32), *(a1 + 40), *(a1 + 48), *(a1 + 56) & 1);

  if (*(a1 + 104))
  {
  }

  return a1;
}

unint64_t sub_26AFBE0AC()
{
  v2 = qword_2803DDD98;
  if (!qword_2803DDD98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DDD90);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DDD98);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_26AFBE134()
{
  v2 = qword_2803DDDA0;
  if (!qword_2803DDDA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DDD70);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DDDA0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_26AFBE1BC(uint64_t a1)
{
  v23 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDDA8) + 44);
  v24 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDDB0) + 44);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDDB8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDDD0);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDDE0);
    }

    else
    {
      v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDDD8);
    }

    (*(*(v2 - 8) + 8))(a1 + v23 + v24);
    v16 = a1 + v23 + v24;
    v15 = v16 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDDE8) + 36);
    v17 = sub_26B079100();
    v18 = *(*(v17 - 8) + 8);
    v18(v15);
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDDF0);
    (v18)(v16 + *(v3 + 36), v17);
  }

  else
  {
    v20 = a1 + v23 + v24;

    v19 = v20 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDDC0) + 36);
    v21 = sub_26B079100();
    v22 = *(*(v21 - 8) + 8);
    v22(v19);
    v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDDC8);
    (v22)(v20 + *(v1 + 36), v21);
  }

  v9 = a1 + v23 + v24 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDDF8) + 48);
  v11 = v9 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DDE00) + 44);
  sub_26AE95AFC(*v11, *(v11 + 8), *(v11 + 16) & 1);

  v10 = v11 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DB598) + 36);
  v4 = sub_26B079100();
  (*(*(v4 - 8) + 8))(v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDE10);

  v12 = v11 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDE18) + 48);
  sub_26AFBE774(*v12, *(v12 + 8), *(v12 + 16), *(v12 + 24), *(v12 + 32), *(v12 + 40) & 1);

  v13 = v12 + *(type metadata accessor for UpdateStatusView() + 24);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDE20);
  (*(*(v5 - 8) + 8))(v13);
  v14 = a1 + v23 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DDE28) + 48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DCCE0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_26B078E40();
    (*(*(v6 - 8) + 8))(v14);
  }

  else
  {
  }

  v8 = type metadata accessor for ReleaseNotesSummaryView();

  if (*(v14 + *(v8 + 24) + 8))
  {
  }

  return a1;
}

uint64_t sub_26AFBE774(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a6)
  {
  }
}

unint64_t sub_26AFBE7E4()
{
  v2 = qword_2803DDE38;
  if (!qword_2803DDE38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DDD78);
    sub_26AFBE134();
    sub_26AFBE88C();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DDE38);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_26AFBE88C()
{
  v2 = qword_2803DDE40;
  if (!qword_2803DDE40)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DDE40);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_26AFBE904(uint64_t a1)
{
  v23 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDDA8) + 44);
  v24 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDDB0) + 44);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDDB8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDDD0);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDDE0);
    }

    else
    {
      v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDDD8);
    }

    (*(*(v2 - 8) + 8))(a1 + v23 + v24);
    v16 = a1 + v23 + v24;
    v15 = v16 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDDE8) + 36);
    v17 = sub_26B079100();
    v18 = *(*(v17 - 8) + 8);
    v18(v15);
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDDF0);
    (v18)(v16 + *(v3 + 36), v17);
  }

  else
  {
    v20 = a1 + v23 + v24;

    v19 = v20 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDDC0) + 36);
    v21 = sub_26B079100();
    v22 = *(*(v21 - 8) + 8);
    v22(v19);
    v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDDC8);
    (v22)(v20 + *(v1 + 36), v21);
  }

  v9 = a1 + v23 + v24 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDDF8) + 48);
  v11 = v9 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DDE00) + 44);
  sub_26AE95AFC(*v11, *(v11 + 8), *(v11 + 16) & 1);

  v10 = v11 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DB598) + 36);
  v4 = sub_26B079100();
  (*(*(v4 - 8) + 8))(v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDE10);

  v12 = v11 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDE18) + 48);
  sub_26AFBE774(*v12, *(v12 + 8), *(v12 + 16), *(v12 + 24), *(v12 + 32), *(v12 + 40) & 1);

  v13 = v12 + *(type metadata accessor for UpdateStatusView() + 24);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDE20);
  (*(*(v5 - 8) + 8))(v13);
  v14 = a1 + v23 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DDE28) + 48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DCCE0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_26B078E40();
    (*(*(v6 - 8) + 8))(v14);
  }

  else
  {
  }

  v8 = type metadata accessor for ReleaseNotesSummaryView();

  if (*(v14 + *(v8 + 24) + 8))
  {
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDD78);

  swift_unknownObjectRelease();
  return a1;
}

unint64_t sub_26AFBEEF4()
{
  v2 = qword_2803DDE48;
  if (!qword_2803DDE48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DDD80);
    sub_26AFBE7E4();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DDE48);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_26AFBEF98(uint64_t a1)
{
  v23 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDDA8) + 44);
  v24 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDDB0) + 44);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDDB8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDDD0);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDDE0);
    }

    else
    {
      v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDDD8);
    }

    (*(*(v2 - 8) + 8))(a1 + v23 + v24);
    v16 = a1 + v23 + v24;
    v15 = v16 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDDE8) + 36);
    v17 = sub_26B079100();
    v18 = *(*(v17 - 8) + 8);
    v18(v15);
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDDF0);
    (v18)(v16 + *(v3 + 36), v17);
  }

  else
  {
    v20 = a1 + v23 + v24;

    v19 = v20 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDDC0) + 36);
    v21 = sub_26B079100();
    v22 = *(*(v21 - 8) + 8);
    v22(v19);
    v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDDC8);
    (v22)(v20 + *(v1 + 36), v21);
  }

  v9 = a1 + v23 + v24 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDDF8) + 48);
  v11 = v9 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DDE00) + 44);
  sub_26AE95AFC(*v11, *(v11 + 8), *(v11 + 16) & 1);

  v10 = v11 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DB598) + 36);
  v4 = sub_26B079100();
  (*(*(v4 - 8) + 8))(v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDE10);

  v12 = v11 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDE18) + 48);
  sub_26AFBE774(*v12, *(v12 + 8), *(v12 + 16), *(v12 + 24), *(v12 + 32), *(v12 + 40) & 1);

  v13 = v12 + *(type metadata accessor for UpdateStatusView() + 24);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDE20);
  (*(*(v5 - 8) + 8))(v13);
  v14 = a1 + v23 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DDE28) + 48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DCCE0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_26B078E40();
    (*(*(v6 - 8) + 8))(v14);
  }

  else
  {
  }

  v8 = type metadata accessor for ReleaseNotesSummaryView();

  if (*(v14 + *(v8 + 24) + 8))
  {
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDD78);

  swift_unknownObjectRelease();
  return a1;
}

unint64_t sub_26AFBF588()
{
  v2 = qword_2803DDE50;
  if (!qword_2803DDE50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DDD88);
    sub_26AFBEEF4();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DDE50);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_26AFBF62C(uint64_t a1)
{
  v23 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDDA8) + 44);
  v24 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDDB0) + 44);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDDB8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDDD0);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDDE0);
    }

    else
    {
      v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDDD8);
    }

    (*(*(v2 - 8) + 8))(a1 + v23 + v24);
    v16 = a1 + v23 + v24;
    v15 = v16 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDDE8) + 36);
    v17 = sub_26B079100();
    v18 = *(*(v17 - 8) + 8);
    v18(v15);
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDDF0);
    (v18)(v16 + *(v3 + 36), v17);
  }

  else
  {
    v20 = a1 + v23 + v24;

    v19 = v20 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDDC0) + 36);
    v21 = sub_26B079100();
    v22 = *(*(v21 - 8) + 8);
    v22(v19);
    v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDDC8);
    (v22)(v20 + *(v1 + 36), v21);
  }

  v9 = a1 + v23 + v24 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDDF8) + 48);
  v11 = v9 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DDE00) + 44);
  sub_26AE95AFC(*v11, *(v11 + 8), *(v11 + 16) & 1);

  v10 = v11 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DB598) + 36);
  v4 = sub_26B079100();
  (*(*(v4 - 8) + 8))(v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDE10);

  v12 = v11 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDE18) + 48);
  sub_26AFBE774(*v12, *(v12 + 8), *(v12 + 16), *(v12 + 24), *(v12 + 32), *(v12 + 40) & 1);

  v13 = v12 + *(type metadata accessor for UpdateStatusView() + 24);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDE20);
  (*(*(v5 - 8) + 8))(v13);
  v14 = a1 + v23 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DDE28) + 48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DCCE0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_26B078E40();
    (*(*(v6 - 8) + 8))(v14);
  }

  else
  {
  }

  v8 = type metadata accessor for ReleaseNotesSummaryView();

  if (*(v14 + *(v8 + 24) + 8))
  {
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDD78);

  swift_unknownObjectRelease();
  return a1;
}

uint64_t sub_26AFBFC1C(uint64_t a1, uint64_t a2)
{
  *a2 = *a1;
  *(a2 + 16) = *(a1 + 16);
  v83 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDDA8) + 44);
  v2 = a2 + v83;
  *v2 = *(a1 + v83);
  *(v2 + 16) = *(a1 + v83 + 16);
  v84 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDDB0) + 44);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDDB8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDDD0);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDDE0);
    }

    else
    {
      v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDDD8);
    }

    (*(*(v6 - 8) + 16))();
    swift_storeEnumTagMultiPayload();
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDDE8);
    v73 = a2 + v83 + v84;
    v69 = v73 + *(v7 + 36);
    v70 = a1 + v83 + v84;
    v68 = v70 + *(v7 + 36);
    v71 = sub_26B079100();
    v72 = *(*(v71 - 8) + 16);
    v72(v69, v68);
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDDF0);
    (v72)(v73 + *(v8 + 36), v70 + *(v8 + 36), v71);
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    v79 = (a1 + v83 + v84);
    v74 = *v79;

    v80 = (a2 + v83 + v84);
    *v80 = v74;
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDDC0);
    v76 = v80 + *(v3 + 36);
    v75 = v79 + *(v3 + 36);
    v77 = sub_26B079100();
    v78 = *(*(v77 - 8) + 16);
    v78(v76, v75);
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDDC8);
    (v78)(v80 + *(v4 + 36), v79 + *(v4 + 36), v77);
    v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDE58);
    memcpy(v80 + *(v5 + 36), v79 + *(v5 + 36), 0x30uLL);
    swift_storeEnumTagMultiPayload();
  }

  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDDF8);
  v64 = a2 + v83 + v84 + *(v9 + 48);
  v65 = a1 + v83 + v84 + *(v9 + 48);
  *v64 = *v65;
  *(v64 + 16) = *(v65 + 16);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DDE00);
  v61 = v64 + *(v10 + 44);
  v62 = v65 + *(v10 + 44);
  v40 = *v62;
  v41 = *(v62 + 8);
  v42 = *(v62 + 16);
  sub_26AE95D28(*v62, v41, v42 & 1);
  *v61 = v40;
  *(v61 + 8) = v41;
  *(v61 + 16) = v42 & 1;
  v43 = *(v62 + 24);
  sub_26B078640();
  *(v61 + 24) = v43;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DB598);
  v45 = v61 + *(v11 + 36);
  v44 = v62 + *(v11 + 36);
  v12 = sub_26B079100();
  (*(*(v12 - 8) + 16))(v45, v44);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDE10);
  v48 = v61 + *(v13 + 36);
  v47 = (v62 + *(v13 + 36));
  v46 = *v47;

  *v48 = v46;
  *(v48 + 8) = v47[1];
  *(v48 + 16) = *(v47 + 16);
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDE18);
  v57 = v61 + *(v63 + 48);
  v58 = v62 + *(v63 + 48);
  v49 = *v58;
  v50 = *(v58 + 8);
  v51 = *(v58 + 16);
  v52 = *(v58 + 24);
  v53 = *(v58 + 32);
  v54 = *(v58 + 40);
  sub_26AFC0708(*v58, v50, v51, v52, v53, v54 & 1);
  *v57 = v49;
  *(v57 + 8) = v50;
  *(v57 + 16) = v51;
  *(v57 + 24) = v52;
  *(v57 + 32) = v53;
  *(v57 + 40) = v54 & 1;
  v55 = *(v58 + 48);
  v56 = *(v58 + 56);

  *(v57 + 48) = v55;
  *(v57 + 56) = v56 & 1;
  updated = type metadata accessor for UpdateStatusView();
  v60 = v57 + *(updated + 24);
  v59 = v58 + *(updated + 24);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDE20);
  (*(*(v15 - 8) + 16))(v60, v59);
  v16 = v61 + *(v63 + 64);
  v17 = v62 + *(v63 + 64);
  *v16 = *v17;
  *(v16 + 8) = *(v17 + 8);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDE60);
  memcpy((v64 + *(v18 + 36)), (v65 + *(v18 + 36)), 0x70uLL);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DDE28);
  v66 = (a2 + v83 + *(v19 + 48));
  v67 = (a1 + v83 + *(v19 + 48));
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DCCE0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v20 = sub_26B078E40();
    (*(*(v20 - 8) + 16))(v66, v67);
  }

  else
  {
    v39 = *v67;

    *v66 = v39;
  }

  swift_storeEnumTagMultiPayload();
  v34 = type metadata accessor for ReleaseNotesSummaryView();
  v35 = v66 + v34[5];
  v21 = v67 + v34[5];
  *v35 = *v21;
  v36 = *(v21 + 1);

  *(v35 + 1) = v36;
  v37 = v66 + v34[6];
  v38 = v67 + v34[6];
  if (*(v38 + 1))
  {
    v32 = *v38;

    *v37 = v32;
    v33 = *(v38 + 1);

    *(v37 + 1) = v33;
  }

  else
  {
    *v37 = *v38;
  }

  v37[16] = v38[16];
  v26 = v34[7];
  v27 = *(v67 + v26);

  *(v66 + v26) = v27;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDD78);
  v30 = (a2 + *(v22 + 36));
  v29 = (a1 + *(v22 + 36));
  v28 = *v29;

  *v30 = v28;
  v31 = v29[1];
  swift_unknownObjectRetain();
  v30[1] = v31;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDD80);
  memcpy((a2 + *(v23 + 36)), (a1 + *(v23 + 36)), 0x29uLL);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDD88);
  memcpy((a2 + *(v24 + 36)), (a1 + *(v24 + 36)), 0x29uLL);
  return a2;
}

uint64_t sub_26AFC0708(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a6)
  {
  }
}

unint64_t sub_26AFC0780()
{
  v2 = qword_2803DDE78;
  if (!qword_2803DDE78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DDE70);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DDE78);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_26AFC0808()
{
  v2 = qword_2803DDE80;
  if (!qword_2803DDE80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DDE68);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DDE80);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_26AFC0890(uint64_t a1)
{
  v18 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDDB0) + 44);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDDB8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDDD0);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDDE0);
    }

    else
    {
      v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDDD8);
    }

    (*(*(v2 - 8) + 8))(a1 + v18);
    v12 = a1 + v18 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDDE8) + 36);
    v13 = sub_26B079100();
    v14 = *(*(v13 - 8) + 8);
    v14(v12);
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDDF0);
    (v14)(a1 + v18 + *(v3 + 36), v13);
  }

  else
  {

    v15 = a1 + v18 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDDC0) + 36);
    v16 = sub_26B079100();
    v17 = *(*(v16 - 8) + 8);
    v17(v15);
    v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDDC8);
    (v17)(a1 + v18 + *(v1 + 36), v16);
  }

  v7 = a1 + v18 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDDF8) + 48);
  v9 = v7 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DDE00) + 44);
  sub_26AE95AFC(*v9, *(v9 + 8), *(v9 + 16) & 1);

  v8 = v9 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DB598) + 36);
  v4 = sub_26B079100();
  (*(*(v4 - 8) + 8))(v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDE10);

  v10 = v9 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDE18) + 48);
  sub_26AFBE774(*v10, *(v10 + 8), *(v10 + 16), *(v10 + 24), *(v10 + 32), *(v10 + 40) & 1);

  v11 = v10 + *(type metadata accessor for UpdateStatusView() + 24);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDE20);
  (*(*(v5 - 8) + 8))(v11);
  return a1;
}

uint64_t sub_26AFC0CE4(uint64_t a1, uint64_t a2)
{
  *a2 = *a1;
  *(a2 + 16) = *(a1 + 16);
  v55 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDDB0) + 44);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDDB8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDDD0);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDDE0);
    }

    else
    {
      v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDDD8);
    }

    (*(*(v5 - 8) + 16))();
    swift_storeEnumTagMultiPayload();
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDDE8);
    v46 = a2 + v55 + *(v6 + 36);
    v45 = a1 + v55 + *(v6 + 36);
    v47 = sub_26B079100();
    v48 = *(*(v47 - 8) + 16);
    v48(v46, v45);
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDDF0);
    (v48)(a2 + v55 + *(v7 + 36), a1 + v55 + *(v7 + 36), v47);
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    v49 = *(a1 + v55);

    *(a2 + v55) = v49;
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDDC0);
    v51 = a2 + v55 + *(v2 + 36);
    v50 = a1 + v55 + *(v2 + 36);
    v52 = sub_26B079100();
    v53 = *(*(v52 - 8) + 16);
    v53(v51, v50);
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDDC8);
    (v53)(a2 + v55 + *(v3 + 36), a1 + v55 + *(v3 + 36), v52);
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDE58);
    memcpy((a2 + v55 + *(v4 + 36)), (a1 + v55 + *(v4 + 36)), 0x30uLL);
    swift_storeEnumTagMultiPayload();
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDDF8);
  v43 = a2 + v55 + *(v8 + 48);
  v44 = a1 + v55 + *(v8 + 48);
  *v43 = *v44;
  *(v43 + 16) = *(v44 + 16);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DDE00);
  v40 = v43 + *(v9 + 44);
  v41 = v44 + *(v9 + 44);
  v19 = *v41;
  v20 = *(v41 + 8);
  v21 = *(v41 + 16);
  sub_26AE95D28(*v41, v20, v21 & 1);
  *v40 = v19;
  *(v40 + 8) = v20;
  *(v40 + 16) = v21 & 1;
  v22 = *(v41 + 24);
  sub_26B078640();
  *(v40 + 24) = v22;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DB598);
  v24 = v40 + *(v10 + 36);
  v23 = v41 + *(v10 + 36);
  v11 = sub_26B079100();
  (*(*(v11 - 8) + 16))(v24, v23);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDE10);
  v27 = v40 + *(v12 + 36);
  v26 = (v41 + *(v12 + 36));
  v25 = *v26;

  *v27 = v25;
  *(v27 + 8) = v26[1];
  *(v27 + 16) = *(v26 + 16);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDE18);
  v36 = v40 + *(v42 + 48);
  v37 = v41 + *(v42 + 48);
  v28 = *v37;
  v29 = *(v37 + 8);
  v30 = *(v37 + 16);
  v31 = *(v37 + 24);
  v32 = *(v37 + 32);
  v33 = *(v37 + 40);
  sub_26AFC0708(*v37, v29, v30, v31, v32, v33 & 1);
  *v36 = v28;
  *(v36 + 8) = v29;
  *(v36 + 16) = v30;
  *(v36 + 24) = v31;
  *(v36 + 32) = v32;
  *(v36 + 40) = v33 & 1;
  v34 = *(v37 + 48);
  v35 = *(v37 + 56);

  *(v36 + 48) = v34;
  *(v36 + 56) = v35 & 1;
  updated = type metadata accessor for UpdateStatusView();
  v39 = v36 + *(updated + 24);
  v38 = v37 + *(updated + 24);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDE20);
  (*(*(v14 - 8) + 16))(v39, v38);
  v15 = v40 + *(v42 + 64);
  v16 = v41 + *(v42 + 64);
  *v15 = *v16;
  *(v15 + 8) = *(v16 + 8);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDE60);
  memcpy((v43 + *(v17 + 36)), (v44 + *(v17 + 36)), 0x70uLL);
  return a2;
}

unint64_t sub_26AFC1454()
{
  v2 = qword_2803DDEA0;
  if (!qword_2803DDEA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DDE98);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DDEA0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_26AFC14DC()
{
  v2 = qword_2803DDEB0;
  if (!qword_2803DDEB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DDEA8);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DDEB0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_26AFC1564(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDDD0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDDE0);
  }

  else
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDDD8);
  }

  (*(*(v2 - 8) + 32))(a2, a1);
  swift_storeEnumTagMultiPayload();
  return a2;
}

uint64_t sub_26AFC1674(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDDD0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDDE0);
  }

  else
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDDD8);
  }

  (*(*(v2 - 8) + 16))(a2, a1);
  swift_storeEnumTagMultiPayload();
  return a2;
}

unint64_t sub_26AFC1784()
{
  v2 = qword_2803DDEB8;
  if (!qword_2803DDEB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_2803DDE88);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DDEA8);
    sub_26AFC14DC();
    swift_getOpaqueTypeConformance2();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DDE98);
    sub_26AFC1454();
    swift_getOpaqueTypeConformance2();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DDEB8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_26AFC18B8(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDDD0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDDE0);
  }

  else
  {
    v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDDD8);
  }

  (*(*(v1 - 8) + 8))(a1);
  return a1;
}

unint64_t sub_26AFC19A0()
{
  v2 = qword_2803DDEC8;
  if (!qword_2803DDEC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DDEC0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DDEC8);
    return WitnessTable;
  }

  return v2;
}

void *sub_26AFC1A28(void *a1)
{

  if (a1[7])
  {
  }

  if (a1[9])
  {
  }

  if (a1[19])
  {
  }

  if (a1[21])
  {
  }

  return a1;
}

unint64_t sub_26AFC1B00()
{
  v2 = qword_2803DDED8;
  if (!qword_2803DDED8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DDED0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DDED8);
    return WitnessTable;
  }

  return v2;
}

void __spoils<X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> sub_26AFC1B88()
{
}

uint64_t sub_26AFC1C48(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 113))
    {
      v4 = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v3 = -1;
      if (!HIDWORD(*a1))
      {
        v3 = *a1;
      }

      v4 = v3;
    }
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_26AFC1D60(uint64_t result, int a2, int a3)
{
  v3 = (result + 113);
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 80) = 0;
    *(result + 72) = 0;
    *(result + 64) = 0;
    *(result + 104) = 0;
    *(result + 96) = 0;
    *(result + 56) = 0;
    *(result + 48) = 0;
    *(result + 40) = 0;
    *(result + 32) = 0;
    *(result + 24) = 0;
    *(result + 16) = 0;
    *(result + 8) = 0;
    *result = a2 + 0x80000000;
    *(result + 112) = 0;
    if (a3 < 0)
    {
      *v3 = 1;
    }
  }

  else
  {
    if (a3 < 0)
    {
      *v3 = 0;
    }

    if (a2)
    {
      *result = (a2 - 1);
    }
  }

  return result;
}

uint64_t sub_26AFC1FB8()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DDEA8);
  sub_26AFC14DC();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_26AFC2028()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DDE98);
  sub_26AFC1454();
  return swift_getOpaqueTypeConformance2();
}

void *sub_26AFC2098(uint64_t *a1, void *a2)
{
  v4 = *a1;

  result = a2;
  *a2 = v4;
  return result;
}

uint64_t sub_26AFC20D0()
{

  sub_26AFB9674(*(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72) & 1);

  if (*(v0 + 120))
  {
  }

  return swift_deallocObject();
}

unint64_t sub_26AFC2174()
{
  v2 = qword_2803DDEE8;
  if (!qword_2803DDEE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DDEE0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DDEE8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_26AFC2240()
{
  v2 = qword_2803DDEF8;
  if (!qword_2803DDEF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DDEF0);
    sub_26AFC2174();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DDEF8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_26AFC22E4(uint64_t a1)
{

  if (*(a1 + 32))
  {
  }

  if (*(a1 + 48))
  {
  }

  return a1;
}

uint64_t sub_26AFC2350()
{

  sub_26AFB9674(*(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72) & 1);

  if (*(v0 + 120))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_26AFC23F4(uint64_t *a1, uint64_t a2)
{
  v8 = *a1;

  *a2 = v8;
  *(a2 + 8) = *(a1 + 1);
  *(a2 + 24) = a1[3];
  if (a1[4])
  {
    v5 = a1[4];
    v6 = a1[5];

    *(a2 + 32) = v5;
    *(a2 + 40) = v6;
  }

  else
  {
    *(a2 + 32) = *(a1 + 2);
  }

  if (a1[6])
  {
    v3 = a1[6];
    v4 = a1[7];

    *(a2 + 48) = v3;
    *(a2 + 56) = v4;
  }

  else
  {
    *(a2 + 48) = *(a1 + 3);
  }

  return a2;
}

__n128 sub_26AFC24EC(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;

  *a2 = v4;
  result = *(a1 + 1);
  *(a2 + 8) = result;
  *(a2 + 24) = a1[3];
  return result;
}

unint64_t sub_26AFC25A4()
{
  v2 = qword_2803DDF10;
  if (!qword_2803DDF10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DDDE8);
    sub_26AFC1784();
    sub_26AE95850();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DDF10);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_26AFC264C(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDDD0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDDE0);
  }

  else
  {
    v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDDD8);
  }

  (*(*(v1 - 8) + 8))(a1);
  v4 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDDE8) + 36);
  v2 = sub_26B079100();
  (*(*(v2 - 8) + 8))(v4);
  return a1;
}

unint64_t sub_26AFC2788()
{
  v2 = qword_2803DDF20;
  if (!qword_2803DDF20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DDDF0);
    sub_26AFC25A4();
    sub_26AE95850();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DDF20);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_26AFC2830(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDDD0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDDE0);
  }

  else
  {
    v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDDD8);
  }

  (*(*(v1 - 8) + 8))(a1);
  v4 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDDE8) + 36);
  v5 = sub_26B079100();
  v6 = *(*(v5 - 8) + 8);
  v6(v4);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDDF0);
  (v6)(a1 + *(v2 + 36), v5);
  return a1;
}

uint64_t sub_26AFC29B0(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDDD0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDDE0);
  }

  else
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDDD8);
  }

  (*(*(v2 - 8) + 16))(a2, a1);
  swift_storeEnumTagMultiPayload();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDDE8);
  v7 = a2 + *(v3 + 36);
  v6 = a1 + *(v3 + 36);
  v8 = sub_26B079100();
  v9 = *(*(v8 - 8) + 16);
  v9(v7, v6);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDDF0);
  (v9)(a2 + *(v4 + 36), a1 + *(v4 + 36), v8);
  return a2;
}

unint64_t sub_26AFC2B84()
{
  v2 = qword_2803DDF28;
  if (!qword_2803DDF28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DDE58);
    sub_26AFC2C28();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DDF28);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_26AFC2C28()
{
  v2 = qword_2803DDF30;
  if (!qword_2803DDF30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DDDC8);
    sub_26AFC2CD0();
    sub_26AE95850();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DDF30);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_26AFC2CD0()
{
  v2 = qword_2803DDF38;
  if (!qword_2803DDF38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DDDC0);
    sub_26AE95850();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DDF38);
    return WitnessTable;
  }

  return v2;
}

void *sub_26AFC2D74(void *a1, void *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDDB8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDDD0);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDDE0);
    }

    else
    {
      v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDDD8);
    }

    (*(*(v5 - 8) + 32))(a2, a1);
    swift_storeEnumTagMultiPayload();
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDDE8);
    v10 = a2 + *(v6 + 36);
    v9 = a1 + *(v6 + 36);
    v11 = sub_26B079100();
    v12 = *(*(v11 - 8) + 32);
    v12(v10, v9);
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDDF0);
    (v12)(a2 + *(v7 + 36), a1 + *(v7 + 36), v11);
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    *a2 = *a1;
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDDC0);
    v14 = a2 + *(v2 + 36);
    v13 = a1 + *(v2 + 36);
    v15 = sub_26B079100();
    v16 = *(*(v15 - 8) + 32);
    v16(v14, v13);
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDDC8);
    (v16)(a2 + *(v3 + 36), a1 + *(v3 + 36), v15);
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDE58);
    memcpy(a2 + *(v4 + 36), a1 + *(v4 + 36), 0x30uLL);
    swift_storeEnumTagMultiPayload();
  }

  return a2;
}

unint64_t sub_26AFC30B8()
{
  v2 = qword_2803DDF48;
  if (!qword_2803DDF48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DDF40);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DDF48);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_26AFC3140()
{
  v2 = qword_2803DDF50;
  if (!qword_2803DDF50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DDF00);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DDF50);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_26AFC31C8(uint64_t a1)
{
  v5 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DDE00) + 44);
  sub_26AE95AFC(*v5, *(v5 + 8), *(v5 + 16) & 1);

  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DB598) + 36);
  v1 = sub_26B079100();
  (*(*(v1 - 8) + 8))(v5 + v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDE10);

  v6 = v5 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDE18) + 48);
  sub_26AFBE774(*v6, *(v6 + 8), *(v6 + 16), *(v6 + 24), *(v6 + 32), *(v6 + 40) & 1);

  v7 = *(type metadata accessor for UpdateStatusView() + 24);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDE20);
  (*(*(v2 - 8) + 8))(v6 + v7);
  return a1;
}

unint64_t sub_26AFC3364()
{
  v2 = qword_2803DDF58;
  if (!qword_2803DDF58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DDE60);
    sub_26AFC3140();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DDF58);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_26AFC3408(uint64_t a1)
{
  v5 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DDE00) + 44);
  sub_26AE95AFC(*v5, *(v5 + 8), *(v5 + 16) & 1);

  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DB598) + 36);
  v1 = sub_26B079100();
  (*(*(v1 - 8) + 8))(v5 + v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDE10);

  v6 = v5 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDE18) + 48);
  sub_26AFBE774(*v6, *(v6 + 8), *(v6 + 16), *(v6 + 24), *(v6 + 32), *(v6 + 40) & 1);

  v7 = *(type metadata accessor for UpdateStatusView() + 24);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDE20);
  (*(*(v2 - 8) + 8))(v6 + v7);
  return a1;
}

void *sub_26AFC35A4(uint64_t *a1, void *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDDB8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDDD0);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDDE0);
    }

    else
    {
      v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDDD8);
    }

    (*(*(v5 - 8) + 16))(a2, a1);
    swift_storeEnumTagMultiPayload();
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDDE8);
    v10 = a2 + *(v6 + 36);
    v9 = a1 + *(v6 + 36);
    v11 = sub_26B079100();
    v12 = *(*(v11 - 8) + 16);
    v12(v10, v9);
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDDF0);
    (v12)(a2 + *(v7 + 36), a1 + *(v7 + 36), v11);
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    v13 = *a1;

    *a2 = v13;
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDDC0);
    v15 = a2 + *(v2 + 36);
    v14 = a1 + *(v2 + 36);
    v16 = sub_26B079100();
    v17 = *(*(v16 - 8) + 16);
    v17(v15, v14);
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDDC8);
    (v17)(a2 + *(v3 + 36), a1 + *(v3 + 36), v16);
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDE58);
    memcpy(a2 + *(v4 + 36), a1 + *(v4 + 36), 0x30uLL);
    swift_storeEnumTagMultiPayload();
  }

  return a2;
}

uint64_t sub_26AFC38EC(uint64_t a1, uint64_t a2)
{
  *a2 = *a1;
  *(a2 + 16) = *(a1 + 16);
  v9 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DDE00) + 44);
  v10 = *(a1 + v9);
  v11 = *(a1 + v9 + 8);
  v12 = *(a1 + v9 + 16);
  sub_26AE95D28(v10, v11, v12 & 1);
  v30 = a2 + v9;
  *v30 = v10;
  *(v30 + 8) = v11;
  *(v30 + 16) = v12 & 1;
  v13 = *(a1 + v9 + 24);
  sub_26B078640();
  *(v30 + 24) = v13;
  v14 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DB598) + 36);
  v2 = sub_26B079100();
  (*(*(v2 - 8) + 16))(a2 + v9 + v14, a1 + v9 + v14);
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDE10) + 36);
  v17 = (a1 + v9 + v15);
  v16 = *v17;

  v3 = a2 + v9 + v15;
  *v3 = v16;
  *(v3 + 8) = v17[1];
  *(v3 + 16) = *(v17 + 16);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDE18);
  v18 = *(v31 + 48);
  v29 = a1 + v9 + v18;
  v19 = *v29;
  v20 = *(v29 + 8);
  v21 = *(v29 + 16);
  v22 = *(v29 + 24);
  v23 = *(v29 + 32);
  v24 = *(v29 + 40);
  sub_26AFC0708(*v29, v20, v21, v22, v23, v24 & 1);
  v27 = a2 + v9 + v18;
  *v27 = v19;
  *(v27 + 8) = v20;
  *(v27 + 16) = v21;
  *(v27 + 24) = v22;
  *(v27 + 32) = v23;
  *(v27 + 40) = v24 & 1;
  v25 = *(v29 + 48);
  v26 = *(v29 + 56);

  *(v27 + 48) = v25;
  *(v27 + 56) = v26 & 1;
  v28 = *(type metadata accessor for UpdateStatusView() + 24);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDE20);
  (*(*(v4 - 8) + 16))(v27 + v28, v29 + v28);
  v5 = *(v31 + 64);
  v6 = a2 + v9 + v5;
  *v6 = *(a1 + v9 + v5);
  *(v6 + 8) = *(a1 + v9 + v5 + 8);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDE60);
  memcpy((a2 + *(v7 + 36)), (a1 + *(v7 + 36)), 0x70uLL);
  return a2;
}

unint64_t sub_26AFC3C68()
{
  v2 = qword_2803DDF60;
  if (!qword_2803DDF60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DDF08);
    sub_26AFC2B84();
    sub_26AFC2788();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DDF60);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_26AFC3D10(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDDB8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDDD0);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDDE0);
    }

    else
    {
      v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDDD8);
    }

    (*(*(v2 - 8) + 8))(a1);
    v5 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDDE8) + 36);
    v6 = sub_26B079100();
    v7 = *(*(v6 - 8) + 8);
    v7(v5);
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDDF0);
    (v7)(a1 + *(v3 + 36), v6);
  }

  else
  {

    v8 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDDC0) + 36);
    v9 = sub_26B079100();
    v10 = *(*(v9 - 8) + 8);
    v10(v8);
    v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDDC8);
    (v10)(a1 + *(v1 + 36), v9);
  }

  return a1;
}

uint64_t sub_26AFC3F70(uint64_t a1)
{

  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDDC0) + 36);
  v1 = sub_26B079100();
  (*(*(v1 - 8) + 8))(a1 + v3);
  return a1;
}

uint64_t sub_26AFC3FF8(uint64_t a1)
{

  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDDC0) + 36);
  v4 = sub_26B079100();
  v5 = *(*(v4 - 8) + 8);
  v5(a1 + v3);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDDC8);
  (v5)(a1 + *(v1 + 36), v4);
  return a1;
}

uint64_t sub_26AFC40C8(uint64_t a1)
{

  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDDC0) + 36);
  v4 = sub_26B079100();
  v5 = *(*(v4 - 8) + 8);
  v5(a1 + v3);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDDC8);
  (v5)(a1 + *(v1 + 36), v4);
  return a1;
}

char *sub_26AFC4198(char *a1, char *a2)
{
  v5 = *a1;

  *a2 = v5;
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDDC0) + 36);
  v7 = sub_26B079100();
  v8 = *(*(v7 - 8) + 16);
  v8(&a2[v6], &a1[v6]);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDDC8);
  (v8)(&a2[*(v2 + 36)], &a1[*(v2 + 36)], v7);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDE58);
  memcpy(&a2[*(v3 + 36)], &a1[*(v3 + 36)], 0x30uLL);
  return a2;
}

unint64_t sub_26AFC42EC()
{
  v2 = qword_2803DDF70;
  if (!qword_2803DDF70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DDE10);
    sub_26AE958D0();
    sub_26AFC4394();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DDF70);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_26AFC4394()
{
  v2 = qword_2803DE660;
  if (!qword_2803DE660)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DDF80);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DE660);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_26AFC441C(uint64_t a1)
{
  sub_26AE95AFC(*a1, *(a1 + 8), *(a1 + 16) & 1);

  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DB598) + 36);
  v1 = sub_26B079100();
  (*(*(v1 - 8) + 8))(a1 + v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDE10);

  return a1;
}

unint64_t sub_26AFC44E8()
{
  v2 = qword_2803DDF88;
  if (!qword_2803DDF88)
  {
    type metadata accessor for UpdateStatusView();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DDF88);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_26AFC4568(uint64_t a1)
{
  sub_26AFBE774(*a1, *(a1 + 8), *(a1 + 16), *(a1 + 24), *(a1 + 32), *(a1 + 40) & 1);

  v3 = *(type metadata accessor for UpdateStatusView() + 24);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDE20);
  (*(*(v1 - 8) + 8))(a1 + v3);
  return a1;
}

uint64_t sub_26AFC4618(uint64_t a1, uint64_t a2)
{
  v5 = *a1;
  v6 = *(a1 + 8);
  v7 = *(a1 + 16);
  sub_26AE95D28(*a1, v6, v7 & 1);
  *a2 = v5;
  *(a2 + 8) = v6;
  *(a2 + 16) = v7 & 1;
  v8 = *(a1 + 24);
  sub_26B078640();
  *(a2 + 24) = v8;
  v9 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DB598) + 36);
  v2 = sub_26B079100();
  (*(*(v2 - 8) + 16))(a2 + v9, a1 + v9);
  v12 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDE10) + 36);
  v13 = *(a1 + v12);

  result = a2;
  v4 = a2 + v12;
  *v4 = v13;
  *(v4 + 8) = *(a1 + v12 + 8);
  *(v4 + 16) = *(a1 + v12 + 16);
  return result;
}

uint64_t sub_26AFC4778(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  v7 = *(a1 + 24);
  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  sub_26AFC0708(*a1, v5, v6, v7, v8, v9 & 1);
  *a2 = v4;
  *(a2 + 8) = v5;
  *(a2 + 16) = v6;
  *(a2 + 24) = v7;
  *(a2 + 32) = v8;
  *(a2 + 40) = v9 & 1;
  v10 = *(a1 + 48);
  v11 = *(a1 + 56);

  *(a2 + 48) = v10;
  *(a2 + 56) = v11 & 1;
  v12 = *(type metadata accessor for UpdateStatusView() + 24);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDE20);
  (*(*(v2 - 8) + 16))(a2 + v12, a1 + v12);
  return a2;
}

unint64_t sub_26AFC48C8()
{
  v2 = qword_2803DDF90;
  if (!qword_2803DDF90)
  {
    type metadata accessor for ReleaseNotesSummaryView();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DDF90);
    return WitnessTable;
  }

  return v2;
}

void *sub_26AFC4948(void *a1, void *a2)
{
  *a2 = *a1;
  a2[1] = a1[1];
  a2[2] = a1[2];
  v3 = a1[3];
  sub_26B078640();
  a2[3] = v3;
  a2[4] = a1[4];
  v4 = a1[5];
  sub_26B078640();
  a2[5] = v4;
  a2[6] = a1[6];
  v5 = a1[7];

  a2[7] = v5;
  v6 = a1[8];

  a2[8] = v6;
  v7 = a1[9];

  a2[9] = v7;
  v8 = a1[10];

  a2[10] = v8;
  a2[11] = a1[11];
  a2[12] = a1[12];
  a2[13] = a1[13];
  v9 = a1[14];
  sub_26B078640();
  a2[14] = v9;
  a2[15] = a1[15];
  v10 = a1[16];
  sub_26B078640();
  a2[16] = v10;
  a2[17] = a1[17];
  v11 = a1[18];

  a2[18] = v11;
  v12 = a1[19];

  a2[19] = v12;
  v13 = a1[20];

  a2[20] = v13;
  v14 = a1[21];

  a2[21] = v14;
  v15 = a1[22];
  MEMORY[0x277D82BE0](v15);
  a2[22] = v15;
  v16 = a1[23];
  MEMORY[0x277D82BE0](v16);
  a2[23] = v16;
  a2[24] = a1[24];
  v17 = a1[25];

  a2[25] = v17;
  v18 = a1[26];

  a2[26] = v18;
  v19 = a1[27];

  a2[27] = v19;
  v20 = a1[28];

  a2[28] = v20;
  v21 = a1[29];

  a2[29] = v21;
  v22 = a1[30];

  a2[30] = v22;
  v23 = a1[31];

  a2[31] = v23;
  v25 = a1[32];

  a2[32] = v25;
  v27 = a1[33];

  result = a2;
  a2[33] = v27;
  return result;
}

uint64_t sub_26AFC4C54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v69 = a3;
  v87 = a1;
  v86 = a2;
  v70 = sub_26AFC59B0;
  v71 = sub_26AFC7A50;
  v72 = sub_26AFC5A04;
  v73 = sub_26AFC7B50;
  v74 = sub_26AFC5AA8;
  v75 = sub_26AFC7C50;
  v76 = sub_26AFC79D4;
  v77 = sub_26AFC7A08;
  v78 = sub_26AFC7A9C;
  v79 = sub_26AFC7AD4;
  v80 = sub_26AFC7B08;
  v81 = sub_26AFC7B9C;
  v82 = sub_26AFC7BD4;
  v83 = sub_26AFC7C08;
  v84 = sub_26AFC7C9C;
  v103 = 0;
  v101 = 0;
  v102 = 0;
  v85 = 0;
  v94 = 0;
  v88 = sub_26B078580();
  v89 = *(v88 - 8);
  v90 = v88 - 8;
  v91 = (*(v89 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v92 = v37 - v91;
  v101 = MEMORY[0x28223BE20](v87);
  v102 = v3;
  sub_26AFE4FD8(v101, v3);
  v93 = v100;
  if (v100 == 2)
  {
    sub_26B078550();
    sub_26B078640();
    v50 = 32;
    v51 = 7;
    v5 = swift_allocObject();
    v6 = v86;
    v52 = v5;
    *(v5 + 16) = v87;
    *(v5 + 24) = v6;
    v66 = sub_26B078570();
    v67 = sub_26B07A2C0();
    v48 = 17;
    v54 = swift_allocObject();
    v47 = 32;
    *(v54 + 16) = 32;
    v55 = swift_allocObject();
    v49 = 8;
    *(v55 + 16) = 8;
    v7 = swift_allocObject();
    v45 = v7;
    *(v7 + 16) = v70;
    *(v7 + 24) = 0;
    v8 = swift_allocObject();
    v9 = v45;
    v56 = v8;
    *(v8 + 16) = v71;
    *(v8 + 24) = v9;
    v57 = swift_allocObject();
    *(v57 + 16) = v47;
    v58 = swift_allocObject();
    *(v58 + 16) = v49;
    v10 = swift_allocObject();
    v46 = v10;
    *(v10 + 16) = v72;
    *(v10 + 24) = 0;
    v11 = swift_allocObject();
    v12 = v46;
    v59 = v11;
    *(v11 + 16) = v73;
    *(v11 + 24) = v12;
    v60 = swift_allocObject();
    *(v60 + 16) = v47;
    v61 = swift_allocObject();
    *(v61 + 16) = v49;
    v13 = swift_allocObject();
    v14 = v52;
    v53 = v13;
    *(v13 + 16) = v74;
    *(v13 + 24) = v14;
    v15 = swift_allocObject();
    v16 = v53;
    v63 = v15;
    *(v15 + 16) = v75;
    *(v15 + 24) = v16;
    v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DBB00);
    v62 = sub_26B07A760();
    v64 = v17;

    v18 = v54;
    v19 = v64;
    *v64 = v76;
    v19[1] = v18;

    v20 = v55;
    v21 = v64;
    v64[2] = v77;
    v21[3] = v20;

    v22 = v56;
    v23 = v64;
    v64[4] = v78;
    v23[5] = v22;

    v24 = v57;
    v25 = v64;
    v64[6] = v79;
    v25[7] = v24;

    v26 = v58;
    v27 = v64;
    v64[8] = v80;
    v27[9] = v26;

    v28 = v59;
    v29 = v64;
    v64[10] = v81;
    v29[11] = v28;

    v30 = v60;
    v31 = v64;
    v64[12] = v82;
    v31[13] = v30;

    v32 = v61;
    v33 = v64;
    v64[14] = v83;
    v33[15] = v32;

    v34 = v63;
    v35 = v64;
    v64[16] = v84;
    v35[17] = v34;
    sub_26AEA3B2C();

    if (os_log_type_enabled(v66, v67))
    {
      v36 = v85;
      v38 = sub_26B07A420();
      v37[8] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DCED0);
      v39 = sub_26AEA3B70(0);
      v40 = sub_26AEA3B70(3);
      v41 = &v99;
      v99 = v38;
      v42 = &v98;
      v98 = v39;
      v43 = &v97;
      v97 = v40;
      sub_26AEA3BC4(2, &v99);
      sub_26AEA3BC4(3, v41);
      v95 = v76;
      v96 = v54;
      sub_26AEA3BD8(&v95, v41, v42, v43);
      v44 = v36;
      if (v36)
      {

        __break(1u);
      }

      else
      {
        v95 = v77;
        v96 = v55;
        sub_26AEA3BD8(&v95, &v99, &v98, &v97);
        v37[6] = 0;
        v95 = v78;
        v96 = v56;
        sub_26AEA3BD8(&v95, &v99, &v98, &v97);
        v37[5] = 0;
        v95 = v79;
        v96 = v57;
        sub_26AEA3BD8(&v95, &v99, &v98, &v97);
        v37[4] = 0;
        v95 = v80;
        v96 = v58;
        sub_26AEA3BD8(&v95, &v99, &v98, &v97);
        v37[3] = 0;
        v95 = v81;
        v96 = v59;
        sub_26AEA3BD8(&v95, &v99, &v98, &v97);
        v37[2] = 0;
        v95 = v82;
        v96 = v60;
        sub_26AEA3BD8(&v95, &v99, &v98, &v97);
        v37[1] = 0;
        v95 = v83;
        v96 = v61;
        sub_26AEA3BD8(&v95, &v99, &v98, &v97);
        v37[0] = 0;
        v95 = v84;
        v96 = v63;
        sub_26AEA3BD8(&v95, &v99, &v98, &v97);
        _os_log_impl(&dword_26AE88000, v66, v67, "%s.%s: Unable to resolve action %s", v38, 0x20u);
        sub_26AEA3C24(v39);
        sub_26AEA3C24(v40);
        sub_26B07A400();
      }
    }

    else
    {
    }

    MEMORY[0x277D82BD8](v66);
    (*(v89 + 8))(v92, v88);

    *v69 = 2;
  }

  else
  {
    v68 = v93;
    v94 = v93 & 1;
    v103 = v93 & 1;
    *v69 = v93 & 1;
  }

  return result;
}

uint64_t sub_26AFC5AA8()
{
  result = *(v0 + 16);
  sub_26AFC5A34();
  return result;
}

uint64_t UpdateActionDeepLinkCommand.execute(with:)(uint64_t a1, uint64_t a2)
{
  *(v3 + 72) = a2;
  *(v3 + 64) = a1;
  *(v3 + 16) = v3;
  *(v3 + 24) = 0;
  *(v3 + 128) = 0;
  *(v3 + 32) = 0;
  v4 = sub_26B078580();
  *(v3 + 80) = v4;
  *(v3 + 88) = *(v4 - 8);
  *(v3 + 96) = swift_task_alloc();
  *(v3 + 104) = swift_task_alloc();
  *(v3 + 24) = a2;
  v5 = *v2;
  *(v3 + 130) = *v2 & 1;
  *(v3 + 128) = v5 & 1;
  *(v3 + 129) = v5;
  v6 = swift_task_alloc();
  *(v8 + 112) = v6;
  *v6 = *(v8 + 16);
  v6[1] = sub_26AFC5C54;

  return sub_26AED72E4(a2, &type metadata for UpdateActionDeepLinkCommand, &protocol witness table for UpdateActionDeepLinkCommand);
}

uint64_t sub_26AFC5C54(uint64_t a1, char a2)
{
  v4 = *v2;
  *(v4 + 16) = *v2;
  *(v4 + 120) = a1;
  *(v4 + 131) = a2;

  return MEMORY[0x2822009F8](sub_26AFC5D74, 0, 0);
}

uint64_t sub_26AFC5D74()
{
  v79 = v0;
  v1 = *(v0 + 131);
  *(v0 + 16) = v0;
  if (v1)
  {
    v15 = *(v68 + 130);
    sub_26B078550();
    v16 = swift_allocObject();
    *(v16 + 16) = v15;
    v20 = swift_allocObject();
    *(v20 + 16) = v15;
    log = sub_26B078570();
    v33 = sub_26B07A2C0();
    v22 = swift_allocObject();
    *(v22 + 16) = 32;
    v23 = swift_allocObject();
    *(v23 + 16) = 8;
    v17 = swift_allocObject();
    *(v17 + 16) = sub_26AFC7CD4;
    *(v17 + 24) = v16;
    v18 = swift_allocObject();
    *(v18 + 16) = sub_26AFC7DC0;
    *(v18 + 24) = v17;
    v24 = swift_allocObject();
    *(v24 + 16) = sub_26AFC7E0C;
    *(v24 + 24) = v18;
    v25 = swift_allocObject();
    *(v25 + 16) = 32;
    v26 = swift_allocObject();
    *(v26 + 16) = 8;
    v19 = swift_allocObject();
    *(v19 + 16) = sub_26AFC76FC;
    *(v19 + 24) = 0;
    v27 = swift_allocObject();
    *(v27 + 16) = sub_26AFC7F0C;
    *(v27 + 24) = v19;
    v28 = swift_allocObject();
    *(v28 + 16) = 32;
    v29 = swift_allocObject();
    *(v29 + 16) = 8;
    v21 = swift_allocObject();
    *(v21 + 16) = sub_26AFC7D0C;
    *(v21 + 24) = v20;
    v30 = swift_allocObject();
    *(v30 + 16) = sub_26AFC800C;
    *(v30 + 24) = v21;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DBB00);
    sub_26B07A760();
    v31 = v4;

    *v31 = sub_26AFC7D44;
    v31[1] = v22;

    v31[2] = sub_26AFC7D78;
    v31[3] = v23;

    v31[4] = sub_26AFC7E58;
    v31[5] = v24;

    v31[6] = sub_26AFC7E90;
    v31[7] = v25;

    v31[8] = sub_26AFC7EC4;
    v31[9] = v26;

    v31[10] = sub_26AFC7F58;
    v31[11] = v27;

    v31[12] = sub_26AFC7F90;
    v31[13] = v28;

    v31[14] = sub_26AFC7FC4;
    v31[15] = v29;

    v31[16] = sub_26AFC8058;
    v31[17] = v30;
    sub_26AEA3B2C();

    if (os_log_type_enabled(log, v33))
    {
      v12 = sub_26B07A420();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DCED0);
      v13 = sub_26AEA3B70(0);
      v14 = sub_26AEA3B70(3);
      v69 = v12;
      v70 = v13;
      v71 = v14;
      sub_26AEA3BC4(2, &v69);
      sub_26AEA3BC4(3, &v69);
      v72 = sub_26AFC7D44;
      v73 = v22;
      sub_26AEA3BD8(&v72, &v69, &v70, &v71);
      v72 = sub_26AFC7D78;
      v73 = v23;
      sub_26AEA3BD8(&v72, &v69, &v70, &v71);
      v72 = sub_26AFC7E58;
      v73 = v24;
      sub_26AEA3BD8(&v72, &v69, &v70, &v71);
      v72 = sub_26AFC7E90;
      v73 = v25;
      sub_26AEA3BD8(&v72, &v69, &v70, &v71);
      v72 = sub_26AFC7EC4;
      v73 = v26;
      sub_26AEA3BD8(&v72, &v69, &v70, &v71);
      v72 = sub_26AFC7F58;
      v73 = v27;
      sub_26AEA3BD8(&v72, &v69, &v70, &v71);
      v72 = sub_26AFC7F90;
      v73 = v28;
      sub_26AEA3BD8(&v72, &v69, &v70, &v71);
      v72 = sub_26AFC7FC4;
      v73 = v29;
      sub_26AEA3BD8(&v72, &v69, &v70, &v71);
      v72 = sub_26AFC8058;
      v73 = v30;
      sub_26AEA3BD8(&v72, &v69, &v70, &v71);
      _os_log_impl(&dword_26AE88000, log, v33, "%s.%s: timed out waiting for state change, ignoring the action %s", v12, 0x20u);
      sub_26AEA3C24(v13);
      sub_26AEA3C24(v14);
      sub_26B07A400();
    }

    else
    {
    }

    v10 = *(v68 + 96);
    v11 = *(v68 + 80);
    v9 = *(v68 + 88);
    v5 = MEMORY[0x277D82BD8](log);
    (*(v9 + 8))(v10, v11, v5);
    goto LABEL_16;
  }

  v67 = *(v68 + 120);
  *(v68 + 32) = v67;
  type metadata accessor for SUUIStatefulUIState();
  *(v68 + 40) = v67;
  *(v68 + 48) = 4;
  sub_26AEB6FE0();
  if ((sub_26B079D40() & 1) == 0)
  {
    v40 = *(v68 + 130);
    sub_26B078550();
    v41 = swift_allocObject();
    *(v41 + 16) = v40;
    v45 = swift_allocObject();
    *(v45 + 16) = v40;
    oslog = sub_26B078570();
    v58 = sub_26B07A2A0();
    v47 = swift_allocObject();
    *(v47 + 16) = 32;
    v48 = swift_allocObject();
    *(v48 + 16) = 8;
    v42 = swift_allocObject();
    *(v42 + 16) = sub_26AFC8090;
    *(v42 + 24) = v41;
    v43 = swift_allocObject();
    *(v43 + 16) = sub_26AFC817C;
    *(v43 + 24) = v42;
    v49 = swift_allocObject();
    *(v49 + 16) = sub_26AFC81C8;
    *(v49 + 24) = v43;
    v50 = swift_allocObject();
    *(v50 + 16) = 32;
    v51 = swift_allocObject();
    *(v51 + 16) = 8;
    v44 = swift_allocObject();
    *(v44 + 16) = sub_26AFC7688;
    *(v44 + 24) = 0;
    v52 = swift_allocObject();
    *(v52 + 16) = sub_26AFC82C8;
    *(v52 + 24) = v44;
    v53 = swift_allocObject();
    *(v53 + 16) = 32;
    v54 = swift_allocObject();
    *(v54 + 16) = 8;
    v46 = swift_allocObject();
    *(v46 + 16) = sub_26AFC80C8;
    *(v46 + 24) = v45;
    v55 = swift_allocObject();
    *(v55 + 16) = sub_26AFC83C8;
    *(v55 + 24) = v46;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DBB00);
    sub_26B07A760();
    v56 = v2;

    *v56 = sub_26AFC8100;
    v56[1] = v47;

    v56[2] = sub_26AFC8134;
    v56[3] = v48;

    v56[4] = sub_26AFC8214;
    v56[5] = v49;

    v56[6] = sub_26AFC824C;
    v56[7] = v50;

    v56[8] = sub_26AFC8280;
    v56[9] = v51;

    v56[10] = sub_26AFC8314;
    v56[11] = v52;

    v56[12] = sub_26AFC834C;
    v56[13] = v53;

    v56[14] = sub_26AFC8380;
    v56[15] = v54;

    v56[16] = sub_26AFC8414;
    v56[17] = v55;
    sub_26AEA3B2C();

    if (os_log_type_enabled(oslog, v58))
    {
      buf = sub_26B07A420();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DCED0);
      v38 = sub_26AEA3B70(0);
      v39 = sub_26AEA3B70(3);
      v74 = buf;
      v75 = v38;
      v76 = v39;
      sub_26AEA3BC4(2, &v74);
      sub_26AEA3BC4(3, &v74);
      v77 = sub_26AFC8100;
      v78 = v47;
      sub_26AEA3BD8(&v77, &v74, &v75, &v76);
      v77 = sub_26AFC8134;
      v78 = v48;
      sub_26AEA3BD8(&v77, &v74, &v75, &v76);
      v77 = sub_26AFC8214;
      v78 = v49;
      sub_26AEA3BD8(&v77, &v74, &v75, &v76);
      v77 = sub_26AFC824C;
      v78 = v50;
      sub_26AEA3BD8(&v77, &v74, &v75, &v76);
      v77 = sub_26AFC8280;
      v78 = v51;
      sub_26AEA3BD8(&v77, &v74, &v75, &v76);
      v77 = sub_26AFC8314;
      v78 = v52;
      sub_26AEA3BD8(&v77, &v74, &v75, &v76);
      v77 = sub_26AFC834C;
      v78 = v53;
      sub_26AEA3BD8(&v77, &v74, &v75, &v76);
      v77 = sub_26AFC8380;
      v78 = v54;
      sub_26AEA3BD8(&v77, &v74, &v75, &v76);
      v77 = sub_26AFC8414;
      v78 = v55;
      sub_26AEA3BD8(&v77, &v74, &v75, &v76);
      _os_log_impl(&dword_26AE88000, oslog, v58, "%s.%s: no updates available, ignoring the action %s", buf, 0x20u);
      sub_26AEA3C24(v38);
      sub_26AEA3C24(v39);
      sub_26B07A400();
    }

    else
    {
    }

    v35 = *(v68 + 104);
    v36 = *(v68 + 80);
    v34 = *(v68 + 88);
    v3 = MEMORY[0x277D82BD8](oslog);
    (*(v34 + 8))(v35, v36, v3);
    goto LABEL_16;
  }

  v66 = ReactiveUIManager.preferredDescriptor.getter();

  *(v68 + 56) = v66;
  if (!*(v68 + 56))
  {
    sub_26AF7E684();
LABEL_16:
    v6 = *(v68 + 64);
    *v6 = 0x7FFFFFEFCLL;
    v6[1] = 0;
    goto LABEL_17;
  }

  sub_26AF7E684();

  updated = ReactiveUIManager.isPreferredUpdatePromotedAsAlternate()();

  if (updated)
  {
    v62 = *(v68 + 130);
    v63 = *(v68 + 72);
    v64 = *(v68 + 64);

    *v64 = ((v62 & 1) << 8) | 2;
    v64[1] = v63 | 0x8000000000000000;
  }

  else
  {
    v59 = *(v68 + 130);
    v60 = *(v68 + 72);
    v61 = *(v68 + 64);

    *v61 = v59 & 1;
    v61[1] = v60 | 0x4000000000000000;
  }

LABEL_17:

  v7 = *(*(v68 + 16) + 8);

  return v7();
}

uint64_t sub_26AFC7760(uint64_t a1, uint64_t a2)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = sub_26AFC781C;

  return UpdateActionDeepLinkCommand.execute(with:)(a1, a2);
}

uint64_t sub_26AFC781C()
{
  v2 = *v1;
  *(v2 + 16) = *v1;
  v5 = v2 + 16;

  if (v0)
  {
    v3 = *(*v5 + 8);
  }

  else
  {
    v3 = *(*v5 + 8);
  }

  return v3();
}

uint64_t getEnumTagSinglePayload for UpdateActionDeepLinkCommand(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 <= 0xFE)
    {
      goto LABEL_15;
    }

    v7 = ((a2 + 1) >> 8) + 1;
    v8 = 1;
    if (v7 >= 0x100)
    {
      if (v7 >= 0x10000)
      {
        v2 = 4;
      }

      else
      {
        v2 = 2;
      }

      v8 = v2;
    }

    if (v8 == 1)
    {
      v6 = a1[1];
    }

    else
    {
      v6 = v8 == 2 ? *(a1 + 1) : *(a1 + 1);
    }

    if (v6)
    {
      v5 = (*a1 | ((v6 - 1) << 8)) + 254;
    }

    else
    {
LABEL_15:
      v3 = *a1 - 2;
      if (v3 < 0)
      {
        v3 = -1;
      }

      v5 = v3;
    }
  }

  else
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for UpdateActionDeepLinkCommand(_BYTE *result, unsigned int a2, unsigned int a3)
{
  v7 = 0;
  if (a3 > 0xFE)
  {
    v5 = ((a3 + 1) >> 8) + 1;
    v6 = 1;
    if (v5 >= 0x100)
    {
      if (v5 >= 0x10000)
      {
        v3 = 4;
      }

      else
      {
        v3 = 2;
      }

      v6 = v3;
    }

    v7 = v6;
  }

  if (a2 > 0xFE)
  {
    v4 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    if (v7)
    {
      if (v7 == 1)
      {
        result[1] = v4;
      }

      else if (v7 == 2)
      {
        *(result + 1) = v4;
      }

      else
      {
        *(result + 1) = v4;
      }
    }
  }

  else
  {
    if (v7)
    {
      if (v7 == 1)
      {
        result[1] = 0;
      }

      else if (v7 == 2)
      {
        *(result + 1) = 0;
      }

      else
      {
        *(result + 1) = 0;
      }
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_26AFC8798(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7[1] = a3;
  v7[0] = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD848);
  return sub_26AFD231C(v7, a1, a3, v3);
}

uint64_t ReactiveTermsAndConditionsService.manager.getter()
{
  v2 = *(v0 + 16);

  return v2;
}

uint64_t ReactiveTermsAndConditionsService.init(manager:)(uint64_t a1)
{

  *(v1 + 16) = a1;

  return v4;
}

uint64_t sub_26AFC8930(uint64_t a1)
{
  v2[46] = v1;
  v2[45] = a1;
  v2[36] = v2;
  v2[37] = 0;
  v2[38] = 0;
  v2[39] = 0;
  v2[41] = 0;
  v2[34] = 0;
  v2[35] = 0;
  v2[42] = 0;
  v2[44] = 0;
  v3 = sub_26B078580();
  v2[47] = v3;
  v2[48] = *(v3 - 8);
  v2[49] = swift_task_alloc();
  v2[50] = swift_task_alloc();
  v2[37] = a1;
  v2[38] = v1;
  sub_26B07A130();
  v2[51] = sub_26B07A120();
  v7 = sub_26B07A0C0();
  v2[52] = v7;
  v2[53] = v4;

  return MEMORY[0x2822009F8](sub_26AFC8AB4, v7, v4);
}

uint64_t sub_26AFC8AB4()
{
  *(v0 + 288) = v0;
  sub_26AFCBC90();
  v3 = sub_26AFCBCF4();
  *(v0 + 432) = v3;
  *(v0 + 312) = v3;
  *(v0 + 16) = *(v0 + 288);
  *(v0 + 56) = v0 + 320;
  *(v0 + 24) = sub_26AFC8C0C;
  v2 = swift_continuation_init();
  *(v0 + 200) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DDFB8);
  *(v0 + 176) = v2;
  *(v0 + 144) = MEMORY[0x277D85DD0];
  *(v0 + 152) = 1107296256;
  *(v0 + 156) = 0;
  *(v0 + 160) = sub_26AFCBD24;
  *(v0 + 168) = &block_descriptor_2;
  [v3 aa_primaryAppleAccountWithCompletion_];

  return MEMORY[0x282200938](v0 + 16);
}

uint64_t sub_26AFC8C0C()
{
  v7 = *v0;
  v8 = *v0;
  v6 = *v0 + 16;
  *(v8 + 288) = *v0;
  v1 = *(v7 + 48);
  *(v8 + 440) = v1;
  if (v1)
  {
    v2 = *(v6 + 408);
    v3 = *(v6 + 400);
    v4 = sub_26AFCA8A0;
  }

  else
  {
    v2 = *(v6 + 408);
    v3 = *(v6 + 400);
    v4 = sub_26AFC8D84;
  }

  return MEMORY[0x2822009F8](v4, v3, v2);
}

uint64_t sub_26AFC8D84()
{
  v52 = v0;
  v0[36] = v0;
  v46 = v0[40];
  v0[56] = v46;
  if (!v46)
  {
    v7 = swift_task_alloc();
    *(v45 + 536) = v7;
    *v7 = *(v45 + 288);
    v7[1] = sub_26AFCA538;
    v6 = *(v45 + 360);

    return sub_26AFCC088(v6);
  }

  *(v45 + 328) = v46;
  v44 = [v46 aa_personID];
  if (v44)
  {
    v40 = sub_26B079E00();
    v41 = v1;
    MEMORY[0x277D82BD8](v44);
    v42 = v40;
    v43 = v41;
  }

  else
  {
    v42 = 0;
    v43 = 0;
  }

  *(v45 + 456) = v43;
  *(v45 + 272) = v42;
  *(v45 + 280) = v43;
  sub_26B078640();
  if (v43)
  {
    v37 = sub_26B079F00();

    v38 = v37;
    v39 = 0;
  }

  else
  {
    v38 = 0;
    v39 = 1;
  }

  if ((v39 & 1) != 0 || (*(v45 + 336) = v38, v38 <= 0))
  {
    v5 = swift_task_alloc();
    *(v45 + 512) = v5;
    *v5 = *(v45 + 288);
    v5[1] = sub_26AFCA284;
    v6 = *(v45 + 360);

    return sub_26AFCC088(v6);
  }

  v19 = *(v45 + 368);
  sub_26B078540();

  sub_26B078640();
  v23 = swift_allocObject();
  *(v23 + 16) = v42;
  *(v23 + 24) = v43;
  oslog = sub_26B078570();
  v36 = sub_26B07A2A0();
  v25 = swift_allocObject();
  *(v25 + 16) = 32;
  v26 = swift_allocObject();
  *(v26 + 16) = 8;
  v20 = swift_allocObject();
  *(v20 + 16) = sub_26AFD2098;
  *(v20 + 24) = v19;
  v21 = swift_allocObject();
  *(v21 + 16) = sub_26AFD2454;
  *(v21 + 24) = v20;
  v27 = swift_allocObject();
  *(v27 + 16) = sub_26AFD24A0;
  *(v27 + 24) = v21;
  v28 = swift_allocObject();
  *(v28 + 16) = 32;
  v29 = swift_allocObject();
  *(v29 + 16) = 8;
  v22 = swift_allocObject();
  *(v22 + 16) = sub_26AFCBEA4;
  *(v22 + 24) = 0;
  v30 = swift_allocObject();
  *(v30 + 16) = sub_26AFD25A0;
  *(v30 + 24) = v22;
  v31 = swift_allocObject();
  *(v31 + 16) = 32;
  v32 = swift_allocObject();
  *(v32 + 16) = 8;
  v24 = swift_allocObject();
  *(v24 + 16) = sub_26AFD20E0;
  *(v24 + 24) = v23;
  v33 = swift_allocObject();
  *(v33 + 16) = sub_26AFD26A0;
  *(v33 + 24) = v24;
  *(v45 + 464) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DBB00);
  sub_26B07A760();
  v34 = v2;

  *v34 = sub_26AFD23D8;
  v34[1] = v25;

  v34[2] = sub_26AFD240C;
  v34[3] = v26;

  v34[4] = sub_26AFD24EC;
  v34[5] = v27;

  v34[6] = sub_26AFD2524;
  v34[7] = v28;

  v34[8] = sub_26AFD2558;
  v34[9] = v29;

  v34[10] = sub_26AFD25EC;
  v34[11] = v30;

  v34[12] = sub_26AFD2624;
  v34[13] = v31;

  v34[14] = sub_26AFD2658;
  v34[15] = v32;

  v34[16] = sub_26AFD26EC;
  v34[17] = v33;
  sub_26AEA3B2C();

  if (os_log_type_enabled(oslog, v36))
  {
    buf = sub_26B07A420();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DCED0);
    v17 = sub_26AEA3B70(0);
    v18 = sub_26AEA3B70(3);
    v47 = buf;
    v48 = v17;
    v49 = v18;
    sub_26AEA3BC4(2, &v47);
    sub_26AEA3BC4(3, &v47);
    v50 = sub_26AFD23D8;
    v51 = v25;
    sub_26AEA3BD8(&v50, &v47, &v48, &v49);
    v50 = sub_26AFD240C;
    v51 = v26;
    sub_26AEA3BD8(&v50, &v47, &v48, &v49);
    v50 = sub_26AFD24EC;
    v51 = v27;
    sub_26AEA3BD8(&v50, &v47, &v48, &v49);
    v50 = sub_26AFD2524;
    v51 = v28;
    sub_26AEA3BD8(&v50, &v47, &v48, &v49);
    v50 = sub_26AFD2558;
    v51 = v29;
    sub_26AEA3BD8(&v50, &v47, &v48, &v49);
    v50 = sub_26AFD25EC;
    v51 = v30;
    sub_26AEA3BD8(&v50, &v47, &v48, &v49);
    v50 = sub_26AFD2624;
    v51 = v31;
    sub_26AEA3BD8(&v50, &v47, &v48, &v49);
    v50 = sub_26AFD2658;
    v51 = v32;
    sub_26AEA3BD8(&v50, &v47, &v48, &v49);
    v50 = sub_26AFD26EC;
    v51 = v33;
    sub_26AEA3BD8(&v50, &v47, &v48, &v49);
    _os_log_impl(&dword_26AE88000, oslog, v36, "%s.%s: Presenting Apple Account Terms and Conditions for %s", buf, 0x20u);
    sub_26AEA3C24(v17);
    sub_26AEA3C24(v18);
    sub_26B07A400();
  }

  else
  {
  }

  v12 = *(v45 + 400);
  v13 = *(v45 + 376);
  v11 = *(v45 + 384);
  v3 = MEMORY[0x277D82BD8](oslog);
  v4 = *(v11 + 8);
  *(v45 + 472) = v4;
  *(v45 + 480) = (v11 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v4(v12, v13, v3);
  v14 = [objc_opt_self() sharedInstance];
  *(v45 + 488) = v14;

  v15 = ReactiveUIManager.presentingViewController.getter();
  *(v45 + 496) = v15;

  if (!v15)
  {
    return sub_26B07A650();
  }

  v10 = *(v45 + 360);
  *(v45 + 80) = *(v45 + 288);
  *(v45 + 120) = v45 + 344;
  *(v45 + 88) = sub_26AFC9FBC;
  v9 = swift_continuation_init();
  *(v45 + 264) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDFC8);
  *(v45 + 240) = v9;
  *(v45 + 208) = MEMORY[0x277D85DD0];
  *(v45 + 216) = 1107296256;
  *(v45 + 220) = 0;
  *(v45 + 224) = sub_26AFCBF38;
  *(v45 + 232) = &block_descriptor_54;
  [v14 presentUpdateTermsAndConditions:v10 forAccount:v46 presentedBy:v15 completionHandler:?];

  return MEMORY[0x282200938](v45 + 80);
}

uint64_t sub_26AFC9FBC()
{
  v7 = *v0;
  v8 = *v0;
  v6 = *v0 + 16;
  *(v8 + 288) = *v0;
  v1 = *(v7 + 112);
  *(v8 + 504) = v1;
  if (v1)
  {
    v2 = *(v6 + 408);
    v3 = *(v6 + 400);
    v4 = sub_26AFCAAB0;
  }

  else
  {
    v2 = *(v6 + 408);
    v3 = *(v6 + 400);
    v4 = sub_26AFCA134;
  }

  return MEMORY[0x2822009F8](v4, v3, v2);
}

uint64_t sub_26AFCA134()
{
  v4 = v0[62];
  v1 = v0[61];
  v5 = v0[56];
  v6 = v0[54];
  v0[36] = v0;
  v7 = v0[43];
  MEMORY[0x277D82BD8](v1);
  MEMORY[0x277D82BD8](v4);

  MEMORY[0x277D82BD8](v5);
  MEMORY[0x277D82BD8](v6);

  v2 = *(v0[36] + 8);

  return v2(v7);
}

uint64_t sub_26AFCA284(uint64_t a1)
{
  v8 = *v2;
  v7 = *v2 + 16;
  v8[36] = *v2;
  v8[65] = a1;
  v8[66] = v1;

  if (v1)
  {
    v3 = *(v7 + 408);
    v4 = *(v7 + 400);
    v5 = sub_26AFCA99C;
  }

  else
  {
    v3 = *(v7 + 408);
    v4 = *(v7 + 400);
    v5 = sub_26AFCA408;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_26AFCA408()
{
  v1 = v0[65];
  v4 = v0[56];
  v5 = v0[54];
  v0[36] = v0;
  v6 = sub_26AFD0088(v1);

  MEMORY[0x277D82BD8](v4);
  MEMORY[0x277D82BD8](v5);

  v2 = *(v0[36] + 8);

  return v2(v6);
}

uint64_t sub_26AFCA538(uint64_t a1)
{
  v8 = *v2;
  v7 = *v2 + 16;
  v8[36] = *v2;
  v8[68] = a1;
  v8[69] = v1;

  if (v1)
  {
    v3 = *(v7 + 408);
    v4 = *(v7 + 400);
    v5 = sub_26AFCA7BC;
  }

  else
  {
    v3 = *(v7 + 408);
    v4 = *(v7 + 400);
    v5 = sub_26AFCA6BC;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_26AFCA6BC()
{
  v1 = v0[68];
  v4 = v0[54];
  v0[36] = v0;
  v5 = sub_26AFD0088(v1);
  MEMORY[0x277D82BD8](v4);

  v2 = *(v0[36] + 8);

  return v2(v5);
}

uint64_t sub_26AFCA7BC()
{
  v1 = *(v0 + 432);
  *(v0 + 288) = v0;
  MEMORY[0x277D82BD8](v1);

  v2 = *(*(v0 + 288) + 8);

  return v2();
}

uint64_t sub_26AFCA8A0()
{
  v3 = *(v0 + 432);
  *(v0 + 288) = v0;
  swift_willThrow();
  MEMORY[0x277D82BD8](v3);

  v1 = *(*(v0 + 288) + 8);

  return v1();
}

uint64_t sub_26AFCA99C()
{
  v3 = v0[56];
  v4 = v0[54];
  v0[36] = v0;

  MEMORY[0x277D82BD8](v3);
  MEMORY[0x277D82BD8](v4);

  v1 = *(v0[36] + 8);

  return v1();
}

uint64_t sub_26AFCAAB0()
{
  v41 = v0;
  v16 = v0[63];
  v15 = v0[62];
  v14 = v0[61];
  v17 = v0[46];
  v0[36] = v0;
  swift_willThrow();
  MEMORY[0x277D82BD8](v14);
  v1 = MEMORY[0x277D82BD8](v15);
  MEMORY[0x26D66E1D0](v16, v1);
  v0[44] = v16;
  sub_26B078540();

  MEMORY[0x26D66E1D0](v16);
  v21 = swift_allocObject();
  *(v21 + 16) = v16;
  sub_26AED0174();

  v34 = sub_26B078570();
  v35 = sub_26B07A2C0();
  v24 = swift_allocObject();
  *(v24 + 16) = 32;
  v25 = swift_allocObject();
  *(v25 + 16) = 8;
  v18 = swift_allocObject();
  *(v18 + 16) = sub_26AFD2738;
  *(v18 + 24) = v17;
  v19 = swift_allocObject();
  *(v19 + 16) = sub_26AFD2830;
  *(v19 + 24) = v18;
  v26 = swift_allocObject();
  *(v26 + 16) = sub_26AFD287C;
  *(v26 + 24) = v19;
  v27 = swift_allocObject();
  *(v27 + 16) = 32;
  v28 = swift_allocObject();
  *(v28 + 16) = 8;
  v20 = swift_allocObject();
  *(v20 + 16) = sub_26AFCC030;
  *(v20 + 24) = 0;
  v29 = swift_allocObject();
  *(v29 + 16) = sub_26AFD297C;
  *(v29 + 24) = v20;
  v30 = swift_allocObject();
  *(v30 + 16) = 64;
  v31 = swift_allocObject();
  *(v31 + 16) = 8;
  v22 = swift_allocObject();
  *(v22 + 16) = sub_26AFD2780;
  *(v22 + 24) = v21;
  v23 = swift_allocObject();
  *(v23 + 16) = sub_26AFD2A7C;
  *(v23 + 24) = v22;
  v32 = swift_allocObject();
  *(v32 + 16) = sub_26AFD2AC8;
  *(v32 + 24) = v23;
  sub_26B07A760();
  v33 = v2;

  *v33 = sub_26AFD27B4;
  v33[1] = v24;

  v33[2] = sub_26AFD27E8;
  v33[3] = v25;

  v33[4] = sub_26AFD28C8;
  v33[5] = v26;

  v33[6] = sub_26AFD2900;
  v33[7] = v27;

  v33[8] = sub_26AFD2934;
  v33[9] = v28;

  v33[10] = sub_26AFD29C8;
  v33[11] = v29;

  v33[12] = sub_26AFD2A00;
  v33[13] = v30;

  v33[14] = sub_26AFD2A34;
  v33[15] = v31;

  v33[16] = sub_26AFD2B14;
  v33[17] = v32;
  sub_26AEA3B2C();

  if (os_log_type_enabled(v34, v35))
  {
    buf = sub_26B07A420();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DCED0);
    v11 = sub_26AEA3B70(1);
    v12 = sub_26AEA3B70(2);
    v36 = buf;
    v37 = v11;
    v38 = v12;
    sub_26AEA3BC4(2, &v36);
    sub_26AEA3BC4(3, &v36);
    v39 = sub_26AFD27B4;
    v40 = v24;
    sub_26AEA3BD8(&v39, &v36, &v37, &v38);
    v39 = sub_26AFD27E8;
    v40 = v25;
    sub_26AEA3BD8(&v39, &v36, &v37, &v38);
    v39 = sub_26AFD28C8;
    v40 = v26;
    sub_26AEA3BD8(&v39, &v36, &v37, &v38);
    v39 = sub_26AFD2900;
    v40 = v27;
    sub_26AEA3BD8(&v39, &v36, &v37, &v38);
    v39 = sub_26AFD2934;
    v40 = v28;
    sub_26AEA3BD8(&v39, &v36, &v37, &v38);
    v39 = sub_26AFD29C8;
    v40 = v29;
    sub_26AEA3BD8(&v39, &v36, &v37, &v38);
    v39 = sub_26AFD2A00;
    v40 = v30;
    sub_26AEA3BD8(&v39, &v36, &v37, &v38);
    v39 = sub_26AFD2A34;
    v40 = v31;
    sub_26AEA3BD8(&v39, &v36, &v37, &v38);
    v39 = sub_26AFD2B14;
    v40 = v32;
    sub_26AEA3BD8(&v39, &v36, &v37, &v38);
    _os_log_impl(&dword_26AE88000, v34, v35, "%s.%s: Failed to present Apple Account Terms and Conditions: %@. Falling back to local terms.", buf, 0x20u);
    sub_26AEA3C24(v11);
    sub_26AEA3C24(v12);
    sub_26B07A400();
  }

  else
  {
  }

  v9 = v13[59];
  v7 = v13[49];
  v8 = v13[47];
  v3 = MEMORY[0x277D82BD8](v34);
  v9(v7, v8, v3);
  v4 = swift_task_alloc();
  v13[70] = v4;
  *v4 = v13[36];
  v4[1] = sub_26AFCB884;
  v5 = v13[45];

  return sub_26AFCC088(v5);
}

uint64_t sub_26AFCB884(uint64_t a1)
{
  v8 = *v2;
  v7 = *v2 + 16;
  v8[36] = *v2;
  v8[71] = a1;
  v8[72] = v1;

  if (v1)
  {
    v3 = *(v7 + 408);
    v4 = *(v7 + 400);
    v5 = sub_26AFCBB58;
  }

  else
  {
    v3 = *(v7 + 408);
    v4 = *(v7 + 400);
    v5 = sub_26AFCBA08;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_26AFCBA08()
{
  v1 = v0[71];
  v4 = v0[63];
  v5 = v0[56];
  v6 = v0[54];
  v0[36] = v0;
  v7 = sub_26AFD0088(v1);

  MEMORY[0x277D82BD8](v5);
  MEMORY[0x277D82BD8](v6);

  v2 = *(v0[36] + 8);

  return v2(v7);
}

uint64_t sub_26AFCBB58()
{
  v3 = v0[63];
  v4 = v0[56];
  v5 = v0[54];
  v0[36] = v0;

  MEMORY[0x277D82BD8](v4);
  MEMORY[0x277D82BD8](v5);

  v1 = *(v0[36] + 8);

  return v1();
}

unint64_t sub_26AFCBC90()
{
  v2 = qword_2803DDFB0;
  if (!qword_2803DDFB0)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_2803DDFB0);
    return ObjCClassMetadata;
  }

  return v2;
}

double sub_26AFCBD24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  MEMORY[0x277D82BE0](a2);
  MEMORY[0x277D82BE0](a3);
  v9 = *__swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  if (a3)
  {
    MEMORY[0x26D66E1D0]();
    v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDFE8);
    sub_26AFC8798(v9, a3, v5);
  }

  else
  {
    MEMORY[0x277D82BE0](a2);
    v10 = a2;
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDFE8);
    sub_26AFC87FC(v9, &v10, v3);
  }

  MEMORY[0x277D82BD8](a3);
  *&result = MEMORY[0x277D82BD8](a2).n128_u64[0];
  return result;
}

uint64_t sub_26AFCBED4()
{
  sub_26B078640();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DC400);
  return sub_26B079E60();
}

double sub_26AFCBF38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  MEMORY[0x277D82BE0](a3);
  v9 = *__swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  if (a3)
  {
    MEMORY[0x26D66E1D0]();
    v5 = type metadata accessor for SUUIUserInteractionResponse();
    sub_26AFC8798(v9, a3, v5);
  }

  else
  {
    v10 = a2;
    v3 = type metadata accessor for SUUIUserInteractionResponse();
    sub_26AFC87FC(v9, &v10, v3);
  }

  *&result = MEMORY[0x277D82BD8](a3).n128_u64[0];
  return result;
}

uint64_t sub_26AFCC088(uint64_t a1)
{
  v2[12] = v1;
  v2[11] = a1;
  v2[6] = v2;
  v2[7] = 0;
  v2[8] = 0;
  v2[9] = 0;
  v2[2] = 0;
  v2[3] = 0;
  v3 = sub_26B078580();
  v2[13] = v3;
  v2[14] = *(v3 - 8);
  v2[15] = swift_task_alloc();
  v2[16] = swift_task_alloc();
  v2[17] = swift_task_alloc();
  v2[7] = a1;
  v2[8] = v1;
  v2[18] = sub_26B07A130();
  v2[19] = sub_26B07A120();
  v7 = sub_26B07A0C0();
  v2[20] = v7;
  v2[21] = v4;

  return MEMORY[0x2822009F8](sub_26AFCC21C, v7, v4);
}

uint64_t sub_26AFCC21C()
{
  v118 = v0;
  v100 = MEMORY[0x277D85700];
  v101 = v0[11];
  v0[6] = v0;
  swift_getObjectType();
  swift_unknownObjectRetain();
  v102 = [v101 documentation];
  v0[22] = v102;
  if (!v102)
  {
    v20 = v99[12];
    v19 = v99[11];
    swift_unknownObjectRelease();
    sub_26B078540();

    swift_unknownObjectRetain();
    v24 = swift_allocObject();
    *(v24 + 16) = v19;
    v36 = sub_26B078570();
    v37 = sub_26B07A2D0();
    v26 = swift_allocObject();
    *(v26 + 16) = 32;
    v27 = swift_allocObject();
    *(v27 + 16) = 8;
    v21 = swift_allocObject();
    *(v21 + 16) = sub_26AFD2B20;
    *(v21 + 24) = v20;
    v22 = swift_allocObject();
    *(v22 + 16) = sub_26AFD2C18;
    *(v22 + 24) = v21;
    v28 = swift_allocObject();
    *(v28 + 16) = sub_26AFD2C64;
    *(v28 + 24) = v22;
    v29 = swift_allocObject();
    *(v29 + 16) = 32;
    v30 = swift_allocObject();
    *(v30 + 16) = 8;
    v23 = swift_allocObject();
    *(v23 + 16) = sub_26AFCEA88;
    *(v23 + 24) = 0;
    v31 = swift_allocObject();
    *(v31 + 16) = sub_26AFD2D64;
    *(v31 + 24) = v23;
    v32 = swift_allocObject();
    *(v32 + 16) = 32;
    v33 = swift_allocObject();
    *(v33 + 16) = 8;
    v25 = swift_allocObject();
    *(v25 + 16) = sub_26AFD2B68;
    *(v25 + 24) = v24;
    v34 = swift_allocObject();
    *(v34 + 16) = sub_26AFD2E64;
    *(v34 + 24) = v25;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DBB00);
    sub_26B07A760();
    v35 = v9;

    *v35 = sub_26AFD2B9C;
    v35[1] = v26;

    v35[2] = sub_26AFD2BD0;
    v35[3] = v27;

    v35[4] = sub_26AFD2CB0;
    v35[5] = v28;

    v35[6] = sub_26AFD2CE8;
    v35[7] = v29;

    v35[8] = sub_26AFD2D1C;
    v35[9] = v30;

    v35[10] = sub_26AFD2DB0;
    v35[11] = v31;

    v35[12] = sub_26AFD2DE8;
    v35[13] = v32;

    v35[14] = sub_26AFD2E1C;
    v35[15] = v33;

    v35[16] = sub_26AFD2EB0;
    v35[17] = v34;
    sub_26AEA3B2C();

    if (os_log_type_enabled(v36, v37))
    {
      v16 = sub_26B07A420();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DCED0);
      v17 = sub_26AEA3B70(0);
      v18 = sub_26AEA3B70(3);
      v103 = v16;
      v104 = v17;
      v105 = v18;
      sub_26AEA3BC4(2, &v103);
      sub_26AEA3BC4(3, &v103);
      v106 = sub_26AFD2B9C;
      v107 = v26;
      sub_26AEA3BD8(&v106, &v103, &v104, &v105);
      v106 = sub_26AFD2BD0;
      v107 = v27;
      sub_26AEA3BD8(&v106, &v103, &v104, &v105);
      v106 = sub_26AFD2CB0;
      v107 = v28;
      sub_26AEA3BD8(&v106, &v103, &v104, &v105);
      v106 = sub_26AFD2CE8;
      v107 = v29;
      sub_26AEA3BD8(&v106, &v103, &v104, &v105);
      v106 = sub_26AFD2D1C;
      v107 = v30;
      sub_26AEA3BD8(&v106, &v103, &v104, &v105);
      v106 = sub_26AFD2DB0;
      v107 = v31;
      sub_26AEA3BD8(&v106, &v103, &v104, &v105);
      v106 = sub_26AFD2DE8;
      v107 = v32;
      sub_26AEA3BD8(&v106, &v103, &v104, &v105);
      v106 = sub_26AFD2E1C;
      v107 = v33;
      sub_26AEA3BD8(&v106, &v103, &v104, &v105);
      v106 = sub_26AFD2EB0;
      v107 = v34;
      sub_26AEA3BD8(&v106, &v103, &v104, &v105);
      _os_log_impl(&dword_26AE88000, v36, v37, "%s.%s: No documentation found for %s", v16, 0x20u);
      sub_26AEA3C24(v17);
      sub_26AEA3C24(v18);
      sub_26B07A400();
    }

    else
    {
    }

    v14 = v99[15];
    v15 = v99[13];
    v13 = v99[14];
    v10 = MEMORY[0x277D82BD8](v36);
    (*(v13 + 8))(v14, v15, v10);
    goto LABEL_23;
  }

  v99[9] = v102;
  swift_unknownObjectRelease();
  swift_getObjectType();
  swift_unknownObjectRetain();
  v98 = [v102 licenseAgreement];
  if (v98)
  {
    v94 = sub_26B0781D0();
    v95 = v1;
    MEMORY[0x277D82BD8](v98);
    v96 = v94;
    v97 = v95;
  }

  else
  {
    v96 = 0;
    v97 = 0xF000000000000000;
  }

  v99[24] = v97;
  v99[23] = v96;
  if ((v97 & 0xF000000000000000) == 0xF000000000000000)
  {
    swift_unknownObjectRelease();
LABEL_15:
    v45 = v99[12];
    v44 = v99[11];
    sub_26B078540();

    swift_unknownObjectRetain();
    v49 = swift_allocObject();
    *(v49 + 16) = v44;
    log = sub_26B078570();
    v62 = sub_26B07A2D0();
    v51 = swift_allocObject();
    *(v51 + 16) = 32;
    v52 = swift_allocObject();
    *(v52 + 16) = 8;
    v46 = swift_allocObject();
    *(v46 + 16) = sub_26AFD2EBC;
    *(v46 + 24) = v45;
    v47 = swift_allocObject();
    *(v47 + 16) = sub_26AFD2FB4;
    *(v47 + 24) = v46;
    v53 = swift_allocObject();
    *(v53 + 16) = sub_26AFD3000;
    *(v53 + 24) = v47;
    v54 = swift_allocObject();
    *(v54 + 16) = 32;
    v55 = swift_allocObject();
    *(v55 + 16) = 8;
    v48 = swift_allocObject();
    *(v48 + 16) = sub_26AFCEB5C;
    *(v48 + 24) = 0;
    v56 = swift_allocObject();
    *(v56 + 16) = sub_26AFD3100;
    *(v56 + 24) = v48;
    v57 = swift_allocObject();
    *(v57 + 16) = 32;
    v58 = swift_allocObject();
    *(v58 + 16) = 8;
    v50 = swift_allocObject();
    *(v50 + 16) = sub_26AFD2F04;
    *(v50 + 24) = v49;
    v59 = swift_allocObject();
    *(v59 + 16) = sub_26AFD3200;
    *(v59 + 24) = v50;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DBB00);
    sub_26B07A760();
    v60 = v7;

    *v60 = sub_26AFD2F38;
    v60[1] = v51;

    v60[2] = sub_26AFD2F6C;
    v60[3] = v52;

    v60[4] = sub_26AFD304C;
    v60[5] = v53;

    v60[6] = sub_26AFD3084;
    v60[7] = v54;

    v60[8] = sub_26AFD30B8;
    v60[9] = v55;

    v60[10] = sub_26AFD314C;
    v60[11] = v56;

    v60[12] = sub_26AFD3184;
    v60[13] = v57;

    v60[14] = sub_26AFD31B8;
    v60[15] = v58;

    v60[16] = sub_26AFD324C;
    v60[17] = v59;
    sub_26AEA3B2C();

    if (os_log_type_enabled(log, v62))
    {
      v41 = sub_26B07A420();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DCED0);
      v42 = sub_26AEA3B70(0);
      v43 = sub_26AEA3B70(3);
      v108 = v41;
      v109 = v42;
      v110 = v43;
      sub_26AEA3BC4(2, &v108);
      sub_26AEA3BC4(3, &v108);
      v111 = sub_26AFD2F38;
      v112 = v51;
      sub_26AEA3BD8(&v111, &v108, &v109, &v110);
      v111 = sub_26AFD2F6C;
      v112 = v52;
      sub_26AEA3BD8(&v111, &v108, &v109, &v110);
      v111 = sub_26AFD304C;
      v112 = v53;
      sub_26AEA3BD8(&v111, &v108, &v109, &v110);
      v111 = sub_26AFD3084;
      v112 = v54;
      sub_26AEA3BD8(&v111, &v108, &v109, &v110);
      v111 = sub_26AFD30B8;
      v112 = v55;
      sub_26AEA3BD8(&v111, &v108, &v109, &v110);
      v111 = sub_26AFD314C;
      v112 = v56;
      sub_26AEA3BD8(&v111, &v108, &v109, &v110);
      v111 = sub_26AFD3184;
      v112 = v57;
      sub_26AEA3BD8(&v111, &v108, &v109, &v110);
      v111 = sub_26AFD31B8;
      v112 = v58;
      sub_26AEA3BD8(&v111, &v108, &v109, &v110);
      v111 = sub_26AFD324C;
      v112 = v59;
      sub_26AEA3BD8(&v111, &v108, &v109, &v110);
      _os_log_impl(&dword_26AE88000, log, v62, "%s.%s: No license agreement found for %s", v41, 0x20u);
      sub_26AEA3C24(v42);
      sub_26AEA3C24(v43);
      sub_26B07A400();
    }

    else
    {
    }

    v39 = v99[16];
    v40 = v99[13];
    v38 = v99[14];
    v8 = MEMORY[0x277D82BD8](log);
    (*(v38 + 8))(v39, v40, v8);
    swift_unknownObjectRelease();
LABEL_23:

    v11 = *(v99[6] + 8);

    return v11(0);
  }

  v99[2] = v96;
  v99[3] = v97;
  swift_unknownObjectRelease();
  v99[4] = v96;
  v99[5] = v97;
  sub_26AEF51A4();
  if (sub_26B07A250())
  {
    sub_26AE96418(v96, v97);
    goto LABEL_15;
  }

  v76 = v99[12];
  v75 = v99[11];
  sub_26B078540();

  swift_unknownObjectRetain();
  v80 = swift_allocObject();
  *(v80 + 16) = v75;
  oslog = sub_26B078570();
  v93 = sub_26B07A2A0();
  v82 = swift_allocObject();
  *(v82 + 16) = 32;
  v83 = swift_allocObject();
  *(v83 + 16) = 8;
  v77 = swift_allocObject();
  *(v77 + 16) = sub_26AFD3258;
  *(v77 + 24) = v76;
  v78 = swift_allocObject();
  *(v78 + 16) = sub_26AFD3350;
  *(v78 + 24) = v77;
  v84 = swift_allocObject();
  *(v84 + 16) = sub_26AFD339C;
  *(v84 + 24) = v78;
  v85 = swift_allocObject();
  *(v85 + 16) = 32;
  v86 = swift_allocObject();
  *(v86 + 16) = 8;
  v79 = swift_allocObject();
  *(v79 + 16) = sub_26AFCEC30;
  *(v79 + 24) = 0;
  v87 = swift_allocObject();
  *(v87 + 16) = sub_26AFD349C;
  *(v87 + 24) = v79;
  v88 = swift_allocObject();
  *(v88 + 16) = 32;
  v89 = swift_allocObject();
  *(v89 + 16) = 8;
  v81 = swift_allocObject();
  *(v81 + 16) = sub_26AFD32A0;
  *(v81 + 24) = v80;
  v90 = swift_allocObject();
  *(v90 + 16) = sub_26AFD359C;
  *(v90 + 24) = v81;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DBB00);
  sub_26B07A760();
  v91 = v2;

  *v91 = sub_26AFD32D4;
  v91[1] = v82;

  v91[2] = sub_26AFD3308;
  v91[3] = v83;

  v91[4] = sub_26AFD33E8;
  v91[5] = v84;

  v91[6] = sub_26AFD3420;
  v91[7] = v85;

  v91[8] = sub_26AFD3454;
  v91[9] = v86;

  v91[10] = sub_26AFD34E8;
  v91[11] = v87;

  v91[12] = sub_26AFD3520;
  v91[13] = v88;

  v91[14] = sub_26AFD3554;
  v91[15] = v89;

  v91[16] = sub_26AFD35E8;
  v91[17] = v90;
  sub_26AEA3B2C();

  if (os_log_type_enabled(oslog, v93))
  {
    buf = sub_26B07A420();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DCED0);
    v73 = sub_26AEA3B70(0);
    v74 = sub_26AEA3B70(3);
    v113 = buf;
    v114 = v73;
    v115 = v74;
    sub_26AEA3BC4(2, &v113);
    sub_26AEA3BC4(3, &v113);
    v116 = sub_26AFD32D4;
    v117 = v82;
    sub_26AEA3BD8(&v116, &v113, &v114, &v115);
    v116 = sub_26AFD3308;
    v117 = v83;
    sub_26AEA3BD8(&v116, &v113, &v114, &v115);
    v116 = sub_26AFD33E8;
    v117 = v84;
    sub_26AEA3BD8(&v116, &v113, &v114, &v115);
    v116 = sub_26AFD3420;
    v117 = v85;
    sub_26AEA3BD8(&v116, &v113, &v114, &v115);
    v116 = sub_26AFD3454;
    v117 = v86;
    sub_26AEA3BD8(&v116, &v113, &v114, &v115);
    v116 = sub_26AFD34E8;
    v117 = v87;
    sub_26AEA3BD8(&v116, &v113, &v114, &v115);
    v116 = sub_26AFD3520;
    v117 = v88;
    sub_26AEA3BD8(&v116, &v113, &v114, &v115);
    v116 = sub_26AFD3554;
    v117 = v89;
    sub_26AEA3BD8(&v116, &v113, &v114, &v115);
    v116 = sub_26AFD35E8;
    v117 = v90;
    sub_26AEA3BD8(&v116, &v113, &v114, &v115);
    _os_log_impl(&dword_26AE88000, oslog, v93, "%s.%s: Presenting update Terms and Conditions sheet for %s locally", buf, 0x20u);
    sub_26AEA3C24(v73);
    sub_26AEA3C24(v74);
    sub_26B07A400();
  }

  else
  {
  }

  v64 = v99[17];
  v65 = v99[13];
  v66 = v99[12];
  v67 = v99[11];
  v63 = v99[14];
  v3 = MEMORY[0x277D82BD8](oslog);
  (*(v63 + 8))(v64, v65, v3);
  v71 = sub_26B07A120();
  v99[25] = v71;
  v68 = sub_26B079D00();
  v69 = v4;
  v99[26] = v4;

  swift_unknownObjectRetain();
  v70 = swift_task_alloc();
  v99[27] = v70;
  *(v70 + 16) = v66;
  *(v70 + 24) = v67;
  v5 = swift_task_alloc();
  v99[28] = v5;
  v6 = type metadata accessor for SUUIUserInteractionResponse();
  *v5 = v99[6];
  v5[1] = sub_26AFCE778;

  return MEMORY[0x2822007B8](v99 + 10, v71, v100, v68, v69, sub_26AFD35F4, v70, v6);
}

uint64_t sub_26AFCE778()
{
  v4 = *v0;
  *(*v0 + 48) = *v0;

  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  v1 = *(v4 + 168);
  v2 = *(v4 + 160);

  return MEMORY[0x2822009F8](sub_26AFCE958, v2, v1);
}

uint64_t sub_26AFCE958()
{
  v1 = v0[24];
  v2 = v0[23];
  v0[6] = v0;
  v5 = v0[10];
  sub_26AE96418(v2, v1);
  swift_unknownObjectRelease();

  v3 = *(v0[6] + 8);

  return v3(v5);
}

uint64_t sub_26AFCEAB8(void *a1)
{
  swift_getObjectType();
  swift_unknownObjectRetain();
  v3 = [a1 description];
  v4 = sub_26B079E00();
  swift_unknownObjectRelease();
  MEMORY[0x277D82BD8](v3);
  return v4;
}

uint64_t sub_26AFCEB8C(void *a1)
{
  swift_getObjectType();
  swift_unknownObjectRetain();
  v3 = [a1 description];
  v4 = sub_26B079E00();
  swift_unknownObjectRelease();
  MEMORY[0x277D82BD8](v3);
  return v4;
}

uint64_t sub_26AFCEC60(void *a1)
{
  swift_getObjectType();
  swift_unknownObjectRetain();
  v3 = [a1 description];
  v4 = sub_26B079E00();
  swift_unknownObjectRelease();
  MEMORY[0x277D82BD8](v3);
  return v4;
}

uint64_t sub_26AFCECD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v15 = a1;
  v18 = a2;
  *&v25 = a3;
  *(&v25 + 1) = sub_26AFD43CC;
  v34 = 0;
  v33 = 0;
  v32 = 0;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDFE0);
  v19 = *(v23 - 8);
  v20 = v23 - 8;
  v16 = v19;
  v17 = *(v19 + 64);
  v14 = (v17 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v15);
  v22 = &v13 - v14;
  v34 = v3;
  v33 = v4;
  v32 = v5;
  v26 = *(v4 + 16);

  swift_unknownObjectRetain();

  swift_unknownObjectRetain();
  (*(v19 + 16))(v22, v15, v23);
  v21 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v6 = swift_allocObject();
  v7 = v19;
  v8 = v21;
  v9 = v22;
  v10 = v23;
  v11 = v25;
  v24 = v6;
  *(v6 + 16) = v18;
  *(v6 + 24) = v11;
  (*(v7 + 32))(v6 + v8, v9, v10);
  v27 = v25;
  v28 = v24;
  v29 = 0;
  v30 = 0;
  v31 = 2;
  ReactiveUIManager.presentedDialog.setter(&v27);
}

uint64_t sub_26AFCEEFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v72 = a1;
  v76 = a2;
  v70 = a3;
  v64 = a4;
  v73 = sub_26AFD44D4;
  v75 = sub_26AFD4458;
  v77 = sub_26AFD4620;
  v79 = sub_26AFD466C;
  v81 = sub_26AFCFFD8;
  v82 = sub_26AFD476C;
  v84 = sub_26AFD44A0;
  v86 = sub_26AFD486C;
  v91 = sub_26AFD451C;
  v95 = sub_26AFD496C;
  v97 = sub_26AFD45A4;
  v99 = sub_26AFD45D8;
  v101 = sub_26AFD46B8;
  v103 = sub_26AFD46F0;
  v105 = sub_26AFD4724;
  v107 = sub_26AFD47B8;
  v109 = sub_26AFD47F0;
  v111 = sub_26AFD4824;
  v113 = sub_26AFD48B8;
  v115 = sub_26AFD48F0;
  v117 = sub_26AFD4924;
  v120 = sub_26AFD49B8;
  v135 = 0;
  v134 = 0;
  v133 = 0;
  v132 = 0;
  v63 = 0;
  v65 = sub_26B078580();
  v66 = *(v65 - 8);
  v67 = v65 - 8;
  v68 = (*(v66 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v72);
  v69 = v55 - v68;
  v135 = v4;
  v134 = v5;
  v133 = v6;
  v132 = v7;
  sub_26B078540();

  swift_unknownObjectRetain();
  v71 = 24;
  v93 = 7;
  v85 = swift_allocObject();
  *(v85 + 16) = v70;
  v74 = swift_allocObject();
  *(v74 + 16) = v72;

  v92 = 32;
  v8 = swift_allocObject();
  v9 = v74;
  v94 = v8;
  *(v8 + 16) = v73;
  *(v8 + 24) = v9;

  v124 = sub_26B078570();
  v125 = sub_26B07A2A0();
  v89 = 17;
  v98 = swift_allocObject();
  v88 = 32;
  *(v98 + 16) = 32;
  v100 = swift_allocObject();
  v90 = 8;
  *(v100 + 16) = 8;
  v10 = swift_allocObject();
  v11 = v76;
  v78 = v10;
  *(v10 + 16) = v75;
  *(v10 + 24) = v11;
  v12 = swift_allocObject();
  v13 = v78;
  v80 = v12;
  *(v12 + 16) = v77;
  *(v12 + 24) = v13;
  v14 = swift_allocObject();
  v15 = v80;
  v102 = v14;
  *(v14 + 16) = v79;
  *(v14 + 24) = v15;
  v104 = swift_allocObject();
  *(v104 + 16) = v88;
  v106 = swift_allocObject();
  *(v106 + 16) = v90;
  v16 = swift_allocObject();
  v83 = v16;
  *(v16 + 16) = v81;
  *(v16 + 24) = 0;
  v17 = swift_allocObject();
  v18 = v83;
  v108 = v17;
  *(v17 + 16) = v82;
  *(v17 + 24) = v18;
  v110 = swift_allocObject();
  *(v110 + 16) = v88;
  v112 = swift_allocObject();
  *(v112 + 16) = v90;
  v19 = swift_allocObject();
  v20 = v85;
  v87 = v19;
  *(v19 + 16) = v84;
  *(v19 + 24) = v20;
  v21 = swift_allocObject();
  v22 = v87;
  v114 = v21;
  *(v21 + 16) = v86;
  *(v21 + 24) = v22;
  v116 = swift_allocObject();
  *(v116 + 16) = v88;
  v118 = swift_allocObject();
  *(v118 + 16) = v90;
  v23 = swift_allocObject();
  v24 = v94;
  v96 = v23;
  *(v23 + 16) = v91;
  *(v23 + 24) = v24;
  v25 = swift_allocObject();
  v26 = v96;
  v121 = v25;
  *(v25 + 16) = v95;
  *(v25 + 24) = v26;
  v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DBB00);
  v119 = sub_26B07A760();
  v122 = v27;

  v28 = v98;
  v29 = v122;
  *v122 = v97;
  v29[1] = v28;

  v30 = v100;
  v31 = v122;
  v122[2] = v99;
  v31[3] = v30;

  v32 = v102;
  v33 = v122;
  v122[4] = v101;
  v33[5] = v32;

  v34 = v104;
  v35 = v122;
  v122[6] = v103;
  v35[7] = v34;

  v36 = v106;
  v37 = v122;
  v122[8] = v105;
  v37[9] = v36;

  v38 = v108;
  v39 = v122;
  v122[10] = v107;
  v39[11] = v38;

  v40 = v110;
  v41 = v122;
  v122[12] = v109;
  v41[13] = v40;

  v42 = v112;
  v43 = v122;
  v122[14] = v111;
  v43[15] = v42;

  v44 = v114;
  v45 = v122;
  v122[16] = v113;
  v45[17] = v44;

  v46 = v116;
  v47 = v122;
  v122[18] = v115;
  v47[19] = v46;

  v48 = v118;
  v49 = v122;
  v122[20] = v117;
  v49[21] = v48;

  v50 = v121;
  v51 = v122;
  v122[22] = v120;
  v51[23] = v50;
  sub_26AEA3B2C();

  if (os_log_type_enabled(v124, v125))
  {
    v52 = v63;
    v56 = sub_26B07A420();
    v55[13] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DCED0);
    v57 = sub_26AEA3B70(0);
    v58 = sub_26AEA3B70(4);
    v59 = &v130;
    v130 = v56;
    v60 = &v129;
    v129 = v57;
    v61 = &v128;
    v128 = v58;
    sub_26AEA3BC4(2, &v130);
    sub_26AEA3BC4(4, v59);
    v126 = v97;
    v127 = v98;
    sub_26AEA3BD8(&v126, v59, v60, v61);
    v62 = v52;
    if (v52)
    {

      __break(1u);
    }

    else
    {
      v126 = v99;
      v127 = v100;
      sub_26AEA3BD8(&v126, &v130, &v129, &v128);
      v55[11] = 0;
      v126 = v101;
      v127 = v102;
      sub_26AEA3BD8(&v126, &v130, &v129, &v128);
      v55[10] = 0;
      v126 = v103;
      v127 = v104;
      sub_26AEA3BD8(&v126, &v130, &v129, &v128);
      v55[9] = 0;
      v126 = v105;
      v127 = v106;
      sub_26AEA3BD8(&v126, &v130, &v129, &v128);
      v55[8] = 0;
      v126 = v107;
      v127 = v108;
      sub_26AEA3BD8(&v126, &v130, &v129, &v128);
      v55[7] = 0;
      v126 = v109;
      v127 = v110;
      sub_26AEA3BD8(&v126, &v130, &v129, &v128);
      v55[6] = 0;
      v126 = v111;
      v127 = v112;
      sub_26AEA3BD8(&v126, &v130, &v129, &v128);
      v55[5] = 0;
      v126 = v113;
      v127 = v114;
      sub_26AEA3BD8(&v126, &v130, &v129, &v128);
      v55[4] = 0;
      v126 = v115;
      v127 = v116;
      sub_26AEA3BD8(&v126, &v130, &v129, &v128);
      v55[3] = 0;
      v126 = v117;
      v127 = v118;
      sub_26AEA3BD8(&v126, &v130, &v129, &v128);
      v55[2] = 0;
      v126 = v120;
      v127 = v121;
      sub_26AEA3BD8(&v126, &v130, &v129, &v128);
      _os_log_impl(&dword_26AE88000, v124, v125, "%s.%s: Terms and Conditions sheet dismissed for %s with response %s", v56, 0x2Au);
      sub_26AEA3C24(v57);
      sub_26AEA3C24(v58);
      sub_26B07A400();
    }
  }

  else
  {
  }

  v53 = MEMORY[0x277D82BD8](v124);
  (*(v66 + 8))(v69, v65, v53);
  v55[1] = &v131;
  v131 = v72;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDFE0);
  return sub_26B07A0E0();
}

uint64_t sub_26AFD0008(void *a1)
{
  swift_getObjectType();
  swift_unknownObjectRetain();
  v3 = [a1 description];
  v4 = sub_26B079E00();
  swift_unknownObjectRelease();
  MEMORY[0x277D82BD8](v3);
  return v4;
}

uint64_t sub_26AFD0088(uint64_t a1)
{
  v228 = a1;
  v192 = sub_26AFD3680;
  v193 = sub_26AFD3730;
  v194 = sub_26AFD377C;
  v195 = sub_26AFD21D0;
  v196 = sub_26AFD387C;
  v197 = sub_26AFD36B4;
  v198 = sub_26AFD36E8;
  v199 = sub_26AFD37C8;
  v200 = sub_26AFD3800;
  v201 = sub_26AFD3834;
  v202 = sub_26AFD38C8;
  v203 = sub_26AFD38D4;
  v204 = sub_26AFD3984;
  v205 = sub_26AFD39D0;
  v206 = sub_26AFD2174;
  v207 = sub_26AFD3AD0;
  v208 = sub_26AFD3908;
  v209 = sub_26AFD393C;
  v210 = sub_26AFD3A1C;
  v211 = sub_26AFD3A54;
  v212 = sub_26AFD3A88;
  v213 = sub_26AFD3B1C;
  v214 = sub_26AFD3B28;
  v215 = sub_26AFD3BD8;
  v216 = sub_26AFD3C24;
  v217 = sub_26AFD2118;
  v218 = sub_26AFD3D24;
  v219 = sub_26AFD3B5C;
  v220 = sub_26AFD3B90;
  v221 = sub_26AFD3C70;
  v222 = sub_26AFD3CA8;
  v223 = sub_26AFD3CDC;
  v224 = sub_26AFD3D70;
  v225 = "Fatal error";
  v226 = "SoftwareUpdateUIKit/ReactiveTermsAndConditionsService.swift";
  v257 = 0;
  v256 = 0;
  v227 = 0;
  v229 = sub_26B078580();
  v230 = *(v229 - 8);
  v231 = v229 - 8;
  v232 = (*(v230 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v228);
  v233 = v86 - v232;
  v234 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v3);
  v235 = v86 - v234;
  v236 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v5);
  v237 = v86 - v236;
  v257 = v6;
  v256 = v1;
  if (v6)
  {
    if (v228 == 1)
    {
      sub_26B078540();

      v156 = sub_26B078570();
      v157 = sub_26B07A2A0();
      v142 = 17;
      v145 = 7;
      v147 = swift_allocObject();
      v141 = 32;
      *(v147 + 16) = 32;
      v148 = swift_allocObject();
      v143 = 8;
      *(v148 + 16) = 8;
      v144 = 32;
      v31 = swift_allocObject();
      v32 = v191;
      v139 = v31;
      *(v31 + 16) = v203;
      *(v31 + 24) = v32;
      v33 = swift_allocObject();
      v34 = v139;
      v140 = v33;
      *(v33 + 16) = v204;
      *(v33 + 24) = v34;
      v35 = swift_allocObject();
      v36 = v140;
      v149 = v35;
      *(v35 + 16) = v205;
      *(v35 + 24) = v36;
      v150 = swift_allocObject();
      *(v150 + 16) = v141;
      v151 = swift_allocObject();
      *(v151 + 16) = v143;
      v37 = swift_allocObject();
      v146 = v37;
      *(v37 + 16) = v206;
      *(v37 + 24) = 0;
      v38 = swift_allocObject();
      v39 = v146;
      v153 = v38;
      *(v38 + 16) = v207;
      *(v38 + 24) = v39;
      v155 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DBB00);
      v152 = sub_26B07A760();
      v154 = v40;

      v41 = v147;
      v42 = v154;
      *v154 = v208;
      v42[1] = v41;

      v43 = v148;
      v44 = v154;
      v154[2] = v209;
      v44[3] = v43;

      v45 = v149;
      v46 = v154;
      v154[4] = v210;
      v46[5] = v45;

      v47 = v150;
      v48 = v154;
      v154[6] = v211;
      v48[7] = v47;

      v49 = v151;
      v50 = v154;
      v154[8] = v212;
      v50[9] = v49;

      v51 = v153;
      v52 = v154;
      v154[10] = v213;
      v52[11] = v51;
      sub_26AEA3B2C();

      if (os_log_type_enabled(v156, v157))
      {
        v53 = v227;
        v131 = sub_26B07A420();
        v130 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DCED0);
        v132 = sub_26AEA3B70(0);
        v133 = sub_26AEA3B70(2);
        v135 = &v247;
        v247 = v131;
        v136 = &v246;
        v246 = v132;
        v137 = &v245;
        v245 = v133;
        v134 = 2;
        sub_26AEA3BC4(2, &v247);
        sub_26AEA3BC4(v134, v135);
        v243 = v208;
        v244 = v147;
        sub_26AEA3BD8(&v243, v135, v136, v137);
        v138 = v53;
        if (v53)
        {

          __break(1u);
        }

        else
        {
          v243 = v209;
          v244 = v148;
          sub_26AEA3BD8(&v243, &v247, &v246, &v245);
          v129 = 0;
          v243 = v210;
          v244 = v149;
          sub_26AEA3BD8(&v243, &v247, &v246, &v245);
          v128 = 0;
          v243 = v211;
          v244 = v150;
          sub_26AEA3BD8(&v243, &v247, &v246, &v245);
          v127 = 0;
          v243 = v212;
          v244 = v151;
          sub_26AEA3BD8(&v243, &v247, &v246, &v245);
          v126 = 0;
          v243 = v213;
          v244 = v153;
          sub_26AEA3BD8(&v243, &v247, &v246, &v245);
          _os_log_impl(&dword_26AE88000, v156, v157, "%s.%s: User disagreed to terms and conditions", v131, 0x16u);
          sub_26AEA3C24(v132);
          sub_26AEA3C24(v133);
          sub_26B07A400();
        }
      }

      else
      {
      }

      v54 = MEMORY[0x277D82BD8](v156);
      (*(v230 + 8))(v235, v229, v54);
      v125 = [objc_opt_self() sharedInstance];
      [v125 reportUserAction_];
      MEMORY[0x277D82BD8](v125);
    }

    else if (v228 == 2)
    {
      sub_26B078540();

      v123 = sub_26B078570();
      v124 = sub_26B07A2A0();
      v109 = 17;
      v112 = 7;
      v114 = swift_allocObject();
      v108 = 32;
      *(v114 + 16) = 32;
      v115 = swift_allocObject();
      v110 = 8;
      *(v115 + 16) = 8;
      v111 = 32;
      v55 = swift_allocObject();
      v56 = v191;
      v106 = v55;
      *(v55 + 16) = v192;
      *(v55 + 24) = v56;
      v57 = swift_allocObject();
      v58 = v106;
      v107 = v57;
      *(v57 + 16) = v193;
      *(v57 + 24) = v58;
      v59 = swift_allocObject();
      v60 = v107;
      v116 = v59;
      *(v59 + 16) = v194;
      *(v59 + 24) = v60;
      v117 = swift_allocObject();
      *(v117 + 16) = v108;
      v118 = swift_allocObject();
      *(v118 + 16) = v110;
      v61 = swift_allocObject();
      v113 = v61;
      *(v61 + 16) = v195;
      *(v61 + 24) = 0;
      v62 = swift_allocObject();
      v63 = v113;
      v120 = v62;
      *(v62 + 16) = v196;
      *(v62 + 24) = v63;
      v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DBB00);
      v119 = sub_26B07A760();
      v121 = v64;

      v65 = v114;
      v66 = v121;
      *v121 = v197;
      v66[1] = v65;

      v67 = v115;
      v68 = v121;
      v121[2] = v198;
      v68[3] = v67;

      v69 = v116;
      v70 = v121;
      v121[4] = v199;
      v70[5] = v69;

      v71 = v117;
      v72 = v121;
      v121[6] = v200;
      v72[7] = v71;

      v73 = v118;
      v74 = v121;
      v121[8] = v201;
      v74[9] = v73;

      v75 = v120;
      v76 = v121;
      v121[10] = v202;
      v76[11] = v75;
      sub_26AEA3B2C();

      if (os_log_type_enabled(v123, v124))
      {
        v77 = v227;
        v98 = sub_26B07A420();
        v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DCED0);
        v99 = sub_26AEA3B70(0);
        v100 = sub_26AEA3B70(2);
        v102 = &v252;
        v252 = v98;
        v103 = &v251;
        v251 = v99;
        v104 = &v250;
        v250 = v100;
        v101 = 2;
        sub_26AEA3BC4(2, &v252);
        sub_26AEA3BC4(v101, v102);
        v248 = v197;
        v249 = v114;
        sub_26AEA3BD8(&v248, v102, v103, v104);
        v105 = v77;
        if (v77)
        {

          __break(1u);
        }

        else
        {
          v248 = v198;
          v249 = v115;
          sub_26AEA3BD8(&v248, &v252, &v251, &v250);
          v96 = 0;
          v248 = v199;
          v249 = v116;
          sub_26AEA3BD8(&v248, &v252, &v251, &v250);
          v95 = 0;
          v248 = v200;
          v249 = v117;
          sub_26AEA3BD8(&v248, &v252, &v251, &v250);
          v94 = 0;
          v248 = v201;
          v249 = v118;
          sub_26AEA3BD8(&v248, &v252, &v251, &v250);
          v93 = 0;
          v248 = v202;
          v249 = v120;
          sub_26AEA3BD8(&v248, &v252, &v251, &v250);
          _os_log_impl(&dword_26AE88000, v123, v124, "%s.%s: User canceled the terms and conditions", v98, 0x16u);
          sub_26AEA3C24(v99);
          sub_26AEA3C24(v100);
          sub_26B07A400();
        }
      }

      else
      {
      }

      v78 = MEMORY[0x277D82BD8](v123);
      (*(v230 + 8))(v233, v229, v78);
      v92 = [objc_opt_self() sharedInstance];
      [v92 reportUserAction_];
      MEMORY[0x277D82BD8](v92);
    }

    else
    {
      v86[1] = 37;
      v79 = sub_26B07A740();
      v89 = &v254;
      v254 = v79;
      v255 = v80;
      v87 = 1;
      v81 = sub_26B079D00();
      v86[2] = v82;
      MEMORY[0x26D66D910](v81);

      v86[4] = &v253;
      v253 = v228;
      v86[5] = 0;
      v86[3] = type metadata accessor for SUUIUserInteractionResponse();
      sub_26AFD3600();
      sub_26B07A710();
      v83 = sub_26B079D00();
      v88 = v84;
      MEMORY[0x26D66D910](v83);

      v91 = v254;
      v90 = v255;
      sub_26B078640();
      sub_26AEB9F6C();
      sub_26B079EB0();
      sub_26B07A660();
      __break(1u);
    }
  }

  else
  {
    sub_26B078540();

    v189 = sub_26B078570();
    v190 = sub_26B07A2A0();
    v175 = 17;
    v178 = 7;
    v180 = swift_allocObject();
    v174 = 32;
    *(v180 + 16) = 32;
    v181 = swift_allocObject();
    v176 = 8;
    *(v181 + 16) = 8;
    v177 = 32;
    v7 = swift_allocObject();
    v8 = v191;
    v172 = v7;
    *(v7 + 16) = v214;
    *(v7 + 24) = v8;
    v9 = swift_allocObject();
    v10 = v172;
    v173 = v9;
    *(v9 + 16) = v215;
    *(v9 + 24) = v10;
    v11 = swift_allocObject();
    v12 = v173;
    v182 = v11;
    *(v11 + 16) = v216;
    *(v11 + 24) = v12;
    v183 = swift_allocObject();
    *(v183 + 16) = v174;
    v184 = swift_allocObject();
    *(v184 + 16) = v176;
    v13 = swift_allocObject();
    v179 = v13;
    *(v13 + 16) = v217;
    *(v13 + 24) = 0;
    v14 = swift_allocObject();
    v15 = v179;
    v186 = v14;
    *(v14 + 16) = v218;
    *(v14 + 24) = v15;
    v188 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DBB00);
    v185 = sub_26B07A760();
    v187 = v16;

    v17 = v180;
    v18 = v187;
    *v187 = v219;
    v18[1] = v17;

    v19 = v181;
    v20 = v187;
    v187[2] = v220;
    v20[3] = v19;

    v21 = v182;
    v22 = v187;
    v187[4] = v221;
    v22[5] = v21;

    v23 = v183;
    v24 = v187;
    v187[6] = v222;
    v24[7] = v23;

    v25 = v184;
    v26 = v187;
    v187[8] = v223;
    v26[9] = v25;

    v27 = v186;
    v28 = v187;
    v187[10] = v224;
    v28[11] = v27;
    sub_26AEA3B2C();

    if (os_log_type_enabled(v189, v190))
    {
      v29 = v227;
      v164 = sub_26B07A420();
      v163 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DCED0);
      v165 = sub_26AEA3B70(0);
      v166 = sub_26AEA3B70(2);
      v168 = &v242;
      v242 = v164;
      v169 = &v241;
      v241 = v165;
      v170 = &v240;
      v240 = v166;
      v167 = 2;
      sub_26AEA3BC4(2, &v242);
      sub_26AEA3BC4(v167, v168);
      v238 = v219;
      v239 = v180;
      sub_26AEA3BD8(&v238, v168, v169, v170);
      v171 = v29;
      if (v29)
      {

        __break(1u);
      }

      else
      {
        v238 = v220;
        v239 = v181;
        sub_26AEA3BD8(&v238, &v242, &v241, &v240);
        v162 = 0;
        v238 = v221;
        v239 = v182;
        sub_26AEA3BD8(&v238, &v242, &v241, &v240);
        v161 = 0;
        v238 = v222;
        v239 = v183;
        sub_26AEA3BD8(&v238, &v242, &v241, &v240);
        v160 = 0;
        v238 = v223;
        v239 = v184;
        sub_26AEA3BD8(&v238, &v242, &v241, &v240);
        v159 = 0;
        v238 = v224;
        v239 = v186;
        sub_26AEA3BD8(&v238, &v242, &v241, &v240);
        _os_log_impl(&dword_26AE88000, v189, v190, "%s.%s: User agreed to terms and conditions", v164, 0x16u);
        sub_26AEA3C24(v165);
        sub_26AEA3C24(v166);
        sub_26B07A400();
      }
    }

    else
    {
    }

    v30 = MEMORY[0x277D82BD8](v189);
    (*(v230 + 8))(v237, v229, v30);
    v158 = [objc_opt_self() sharedInstance];
    [v158 reportUserAction_];
    MEMORY[0x277D82BD8](v158);
  }

  return v228;
}

uint64_t sub_26AFD231C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_allocError();
  (*(*(a4 - 8) + 32))(v4, a1);
  return swift_continuation_throwingResumeWithError();
}

uint64_t sub_26AFD2780()
{
  result = *(v0 + 16);
  sub_26AFCC060();
  return result;
}

unint64_t sub_26AFD3600()
{
  v2 = qword_2803DDFD0;
  if (!qword_2803DDFD0)
  {
    type metadata accessor for SUUIUserInteractionResponse();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DDFD0);
    return WitnessTable;
  }

  return v2;
}

uint64_t dispatch thunk of ReactiveTermsAndConditionsService.presentTermsAndConditionsSheet(for:)(uint64_t a1)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v6 = (*(*v1 + 96) + **(*v1 + 96));
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = sub_26AFD3F34;

  return v6(a1);
}

uint64_t sub_26AFD3F34(uint64_t a1)
{
  v4 = *v1;
  *(v4 + 16) = *v1;

  v2 = *(*(v4 + 16) + 8);

  return v2(a1);
}

uint64_t dispatch thunk of ReactiveTermsAndConditionsService.presentTermsLocally(for:)(uint64_t a1)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v6 = (*(*v1 + 104) + **(*v1 + 104));
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = sub_26AFD41A0;

  return v6(a1);
}

uint64_t sub_26AFD41A0(uint64_t a1)
{
  v4 = *v1;
  *(v4 + 16) = *v1;

  v2 = *(*(v4 + 16) + 8);

  return v2(a1);
}

uint64_t sub_26AFD42D0()
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDFE0);
  v2 = *(v4 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);

  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v3, v4);
  return swift_deallocObject();
}

uint64_t sub_26AFD43CC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDFE0);
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = v1 + ((*(*(v2 - 8) + 80) + 32) & ~*(*(v2 - 8) + 80));

  return sub_26AFCEEFC(a1, v3, v4, v5);
}

uint64_t sub_26AFD451C()
{
  v5 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = type metadata accessor for SUUIUserInteractionResponse();
  v1 = sub_26AFD3600();

  return sub_26AEB6A60(v5, v3, v4, v1);
}

uint64_t *sub_26AFD49C4@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v24 = a3;
  v25 = a2;
  v26 = a1;
  v27 = a4;
  v28 = a3 & 0xFFFFFFFFFFFFFFFELL;
  if (a2 == 1)
  {
    TupleTypeMetadata = *(v24 & 0xFFFFFFFFFFFFFFFELL);
    v23 = 0;
  }

  else
  {
    v19 = &v9;
    MEMORY[0x28223BE20](&v9);
    v20 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
    for (i = 0; ; i = v5 + 1)
    {
      v18 = i;
      if (i >= v25)
      {
        break;
      }

      v5 = v18;
      *&v20[8 * v18] = *((v24 & 0xFFFFFFFFFFFFFFFELL) + 8 * v18);
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
    v23 = v6;
  }

  v14 = TupleTypeMetadata;
  v16 = *(*(TupleTypeMetadata - 8) + 64);
  v15 = &v9;
  MEMORY[0x28223BE20](&v9);
  v17 = &v9 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v7)
  {
    for (j = 0; ; j = v9)
    {
      v11 = j;
      v12 = *((v24 & 0xFFFFFFFFFFFFFFFELL) + 8 * j);
      v10 = v25 == 1 ? 0 : *(v14 + 16 * v11 + 32);
      (*(*(v12 - 8) + 16))(&v17[v10], *(v26 + 8 * v11));
      v9 = v11 + 1;
      if (v11 + 1 == v25)
      {
        break;
      }
    }
  }

  sub_26B079BC0();
  return v15;
}

uint64_t UpdateOptionsView.presentedDescriptor.getter()
{
  v11 = 0;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDE20);
  v5 = *(v8 - 8);
  v6 = v8 - 8;
  v4 = (*(v5 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v0 = MEMORY[0x28223BE20](v8);
  v7 = &v3 - v4;
  v11 = v1;
  (*(v5 + 16))(&v3 - v4, v0);
  sub_26B079AD0();
  v9 = v10;
  (*(v5 + 8))(v7, v8);
  return v9;
}

uint64_t sub_26AFD4DA4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v8 = a2;
  v6 = a1;
  v7 = (*(*(type metadata accessor for UpdateOptionsView() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v6);
  v9 = &v6 - v7;
  sub_26AFDD854(v2, &v6 - v7);
  updated = UpdateOptionsView.presentedDescriptor.getter();
  v4 = v9;
  *v8 = updated;
  return sub_26AFDDE44(v4);
}

uint64_t UpdateOptionsView.presentedDescriptor.setter()
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDE20);
  sub_26B079AE0();
}

void (*UpdateOptionsView.presentedDescriptor.modify(void *a1))(void **a1)
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDE20);
  v2[4] = sub_26B079AC0();
  return sub_26AFD4F98;
}

void sub_26AFD4F98(void **a1)
{
  v1 = *a1;
  v1[4](v1, 0);
  free(v1);
}

uint64_t UpdateOptionsView.$presentedDescriptor.getter@<X0>(uint64_t a1@<X8>)
{
  v6 = a1;
  v11 = 0;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDE20);
  v7 = *(v10 - 8);
  v8 = v10 - 8;
  v5 = (*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v1 = MEMORY[0x28223BE20](v10);
  v9 = &v4 - v5;
  v11 = v2;
  (*(v7 + 16))(&v4 - v5, v1);
  sub_26B079AF0();
  return (*(v7 + 8))(v9, v10);
}

uint64_t sub_26AFD5198(uint64_t a1)
{
  v12 = a1;
  v14 = 0;
  v13 = 0;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDE20);
  v9 = *(v11 - 8);
  v10 = v11 - 8;
  v6 = (*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x28223BE20](v11);
  v7 = &v5 - v6;
  v14 = v3;
  v13 = v1;
  (*(v9 + 16))(v2);
  (*(v9 + 40))(v8, v7, v11);
  return (*(v9 + 8))(v12, v11);
}

uint64_t sub_26AFD52CC()
{
  type metadata accessor for UpdateOptionsView();

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DB510);
  sub_26B078A10();

  return v1;
}

uint64_t type metadata accessor for UpdateOptionsView()
{
  v1 = qword_2803DE1C0;
  if (!qword_2803DE1C0)
  {
    return swift_getSingletonMetadata();
  }

  return v1;
}

uint64_t sub_26AFD53DC()
{
  v2 = *(v0 + *(type metadata accessor for UpdateOptionsView() + 20));

  return v2;
}

uint64_t sub_26AFD5430(uint64_t a1, char a2)
{

  v3 = v2 + *(type metadata accessor for UpdateOptionsView() + 20);
  *v3 = a1;
  *(v3 + 8) = a2 & 1;
}

void *sub_26AFD54BC@<X0>(void *a1@<X8>)
{
  v8 = 0;
  updated = type metadata accessor for UpdateOptionsView();
  memcpy(__dst, (v1 + *(updated + 24)), 0x111uLL);
  sub_26AFD5588(__dst, v7);
  memcpy(v6, __dst, sizeof(v6));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDFF0);
  sub_26B078A10();
  memcpy(v10, v5, sizeof(v10));
  sub_26AFD5AA8(__dst);
  return memcpy(a1, v10, 0x110uLL);
}

uint64_t sub_26AFD5588(uint64_t a1, uint64_t a2)
{
  v13 = *a1;
  v32 = *(a1 + 8);
  v33 = *(a1 + 16);
  v34 = *(a1 + 24);
  v35 = *(a1 + 32);
  v36 = *(a1 + 40);
  v37 = *(a1 + 48);
  v31 = *(a1 + 56);
  v2 = *(a1 + 64);
  v3 = *(a1 + 72);
  v4 = *(a1 + 80);
  v5 = *(a1 + 88);
  v6 = *(a1 + 96);
  v7 = *(a1 + 104);
  v8 = *(a1 + 112);
  v9 = *(a1 + 120);
  v10 = *(a1 + 128);
  v11 = *(a1 + 136);
  v14 = *(a1 + 144);
  v15 = *(a1 + 152);
  v16 = *(a1 + 160);
  v17 = *(a1 + 168);
  v18 = *(a1 + 176);
  v19 = *(a1 + 184);
  v20 = *(a1 + 192);
  v21 = *(a1 + 200);
  v22 = *(a1 + 208);
  v23 = *(a1 + 216);
  v24 = *(a1 + 224);
  v25 = *(a1 + 232);
  v26 = *(a1 + 240);
  v27 = *(a1 + 248);
  v28 = *(a1 + 256);
  v29 = *(a1 + 264);
  v38 = *(a1 + 272);
  sub_26AFD5850(*a1, v32, v33, v34, v35, v36, v37, v31, v2, v3, v4, v5, v6, v7, v8, v9, v10, v11, v14, v15, v16, v17, v18, v19, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29, v38);
  result = a2;
  *a2 = v13;
  *(a2 + 8) = v32;
  *(a2 + 16) = v33;
  *(a2 + 24) = v34;
  *(a2 + 32) = v35;
  *(a2 + 40) = v36;
  *(a2 + 48) = v37;
  *(a2 + 56) = v31;
  *(a2 + 64) = v2;
  *(a2 + 72) = v3;
  *(a2 + 80) = v4;
  *(a2 + 88) = v5;
  *(a2 + 96) = v6;
  *(a2 + 104) = v7;
  *(a2 + 112) = v8;
  *(a2 + 120) = v9;
  *(a2 + 128) = v10;
  *(a2 + 136) = v11;
  *(a2 + 144) = v14;
  *(a2 + 152) = v15;
  *(a2 + 160) = v16;
  *(a2 + 168) = v17;
  *(a2 + 176) = v18;
  *(a2 + 184) = v19;
  *(a2 + 192) = v20;
  *(a2 + 200) = v21;
  *(a2 + 208) = v22;
  *(a2 + 216) = v23;
  *(a2 + 224) = v24;
  *(a2 + 232) = v25;
  *(a2 + 240) = v26;
  *(a2 + 248) = v27;
  *(a2 + 256) = v28;
  *(a2 + 264) = v29;
  *(a2 + 272) = v38 & 1;
  return result;
}

uint64_t sub_26AFD5850(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35)
{
  if (a35)
  {
    sub_26B078640();
    sub_26B078640();

    sub_26B078640();
    sub_26B078640();

    MEMORY[0x277D82BE0](a23);
    MEMORY[0x277D82BE0](a24);
  }
}

uint64_t sub_26AFD5C30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35)
{
  if (a35)
  {

    MEMORY[0x277D82BD8](a23);
    MEMORY[0x277D82BD8](a24);
  }
}

uint64_t *sub_26AFD5EC8(uint64_t *a1)
{
  v6 = 0;
  v7 = a1;
  sub_26AFD5588(a1, v5);
  updated = type metadata accessor for UpdateOptionsView();
  sub_26AFD5F30(a1, v1 + *(updated + 24));
  result = a1;
  sub_26AFD5AA8(a1);
  return result;
}

uint64_t sub_26AFD5F30(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v31 = a1[1];
  v32 = a1[2];
  v33 = a1[3];
  v34 = a1[4];
  v35 = a1[5];
  v36 = a1[6];
  v37 = a1[7];
  v38 = a1[8];
  v39 = a1[9];
  v40 = a1[10];
  v41 = a1[11];
  v42 = a1[12];
  v43 = a1[13];
  v44 = a1[14];
  v45 = a1[15];
  v46 = a1[16];
  v47 = a1[17];
  v48 = a1[18];
  v49 = a1[19];
  v50 = a1[20];
  v51 = a1[21];
  v52 = a1[22];
  v53 = a1[23];
  v54 = a1[24];
  v55 = a1[25];
  v56 = a1[26];
  v57 = a1[27];
  v58 = a1[28];
  v59 = a1[29];
  v60 = a1[30];
  v61 = a1[31];
  v62 = a1[32];
  v63 = a1[33];
  v3 = *(a1 + 272);
  v4 = *a2;
  v65 = *(a2 + 8);
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  v7 = *(a2 + 32);
  v8 = *(a2 + 40);
  v9 = *(a2 + 48);
  v10 = *(a2 + 56);
  v64 = *(a2 + 64);
  v66 = *(a2 + 72);
  v67 = *(a2 + 80);
  v68 = *(a2 + 88);
  v69 = *(a2 + 96);
  v70 = *(a2 + 104);
  v71 = *(a2 + 112);
  v11 = *(a2 + 120);
  v12 = *(a2 + 128);
  v13 = *(a2 + 136);
  v14 = *(a2 + 144);
  v15 = *(a2 + 152);
  v16 = *(a2 + 160);
  v17 = *(a2 + 168);
  v18 = *(a2 + 176);
  v19 = *(a2 + 184);
  v20 = *(a2 + 192);
  v21 = *(a2 + 200);
  v22 = *(a2 + 208);
  v23 = *(a2 + 216);
  v24 = *(a2 + 224);
  v25 = *(a2 + 232);
  v26 = *(a2 + 240);
  v27 = *(a2 + 248);
  v28 = *(a2 + 256);
  v29 = *(a2 + 264);
  v72 = *(a2 + 272);
  *a2 = v2;
  *(a2 + 8) = v31;
  *(a2 + 16) = v32;
  *(a2 + 24) = v33;
  *(a2 + 32) = v34;
  *(a2 + 40) = v35;
  *(a2 + 48) = v36;
  *(a2 + 56) = v37;
  *(a2 + 64) = v38;
  *(a2 + 72) = v39;
  *(a2 + 80) = v40;
  *(a2 + 88) = v41;
  *(a2 + 96) = v42;
  *(a2 + 104) = v43;
  *(a2 + 112) = v44;
  *(a2 + 120) = v45;
  *(a2 + 128) = v46;
  *(a2 + 136) = v47;
  *(a2 + 144) = v48;
  *(a2 + 152) = v49;
  *(a2 + 160) = v50;
  *(a2 + 168) = v51;
  *(a2 + 176) = v52;
  *(a2 + 184) = v53;
  *(a2 + 192) = v54;
  *(a2 + 200) = v55;
  *(a2 + 208) = v56;
  *(a2 + 216) = v57;
  *(a2 + 224) = v58;
  *(a2 + 232) = v59;
  *(a2 + 240) = v60;
  *(a2 + 248) = v61;
  *(a2 + 256) = v62;
  *(a2 + 264) = v63;
  *(a2 + 272) = v3 & 1;
  sub_26AFD5C30(v4, v65, v5, v6, v7, v8, v9, v10, v64, v66, v67, v68, v69, v70, v71, v11, v12, v13, v14, v15, v16, v17, v18, v19, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29, v72);
  return a2;
}

uint64_t sub_26AFD6378()
{
  v2 = *(v0 + *(type metadata accessor for UpdateOptionsView() + 28));

  return v2;
}

void *sub_26AFD63C8@<X0>(void *a1@<X8>)
{
  v8 = 0;
  updated = type metadata accessor for UpdateOptionsView();
  memcpy(__dst, (v1 + *(updated + 32)), 0x59uLL);
  sub_26AFD6494(__dst, v7);
  memcpy(v6, __dst, sizeof(v6));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDFF8);
  sub_26B078A10();
  memcpy(v10, v5, sizeof(v10));
  sub_26AFD6644(__dst);
  return memcpy(a1, v10, 0x58uLL);
}

uint64_t sub_26AFD6494(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v9 = *(a1 + 48);
  v10 = *(a1 + 56);
  v11 = *(a1 + 64);
  v12 = *(a1 + 72);
  v13 = *(a1 + 80);
  v14 = *(a1 + 88);
  sub_26AFD659C(*a1, v4, v5, v6, v7, v8, v9, v10, v11, v12, v13, v14);
  result = a2;
  *a2 = v3;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5;
  *(a2 + 24) = v6;
  *(a2 + 32) = v7;
  *(a2 + 40) = v8;
  *(a2 + 48) = v9;
  *(a2 + 56) = v10;
  *(a2 + 64) = v11;
  *(a2 + 72) = v12;
  *(a2 + 80) = v13;
  *(a2 + 88) = v14 & 1;
  return result;
}

uint64_t sub_26AFD659C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12)
{
  if (a12)
  {
    sub_26B078640();
    sub_26B078640();
  }
}

uint64_t sub_26AFD66B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12)
{
  if (a12)
  {
  }
}

uint64_t *sub_26AFD679C(uint64_t *a1)
{
  v6 = 0;
  v7 = a1;
  sub_26AFD6494(a1, v5);
  updated = type metadata accessor for UpdateOptionsView();
  sub_26AFD67FC(a1, v1 + *(updated + 32));
  result = a1;
  sub_26AFD6644(a1);
  return result;
}

uint64_t sub_26AFD67FC(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = a1[2];
  v6 = a1[3];
  v7 = a1[4];
  v8 = a1[5];
  v9 = a1[6];
  v10 = a1[7];
  v11 = a1[8];
  v12 = a1[9];
  v13 = a1[10];
  v14 = *(a1 + 88);
  v15 = *a2;
  v16 = *(a2 + 8);
  v17 = *(a2 + 16);
  v18 = *(a2 + 24);
  v19 = *(a2 + 32);
  v20 = *(a2 + 40);
  v21 = *(a2 + 48);
  v22 = *(a2 + 56);
  v23 = *(a2 + 64);
  v24 = *(a2 + 72);
  v25 = *(a2 + 80);
  v26 = *(a2 + 88);
  *a2 = v3;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5;
  *(a2 + 24) = v6;
  *(a2 + 32) = v7;
  *(a2 + 40) = v8;
  *(a2 + 48) = v9;
  *(a2 + 56) = v10;
  *(a2 + 64) = v11;
  *(a2 + 72) = v12;
  *(a2 + 80) = v13;
  *(a2 + 88) = v14 & 1;
  sub_26AFD66B4(v15, v16, v17, v18, v19, v20, v21, v22, v23, v24, v25, v26);
  return a2;
}

void *sub_26AFD68F4@<X0>(void *a1@<X8>)
{
  v8 = 0;
  updated = type metadata accessor for UpdateOptionsView();
  memcpy(__dst, (v1 + *(updated + 36)), 0x59uLL);
  sub_26AFD6494(__dst, v7);
  memcpy(v6, __dst, sizeof(v6));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDFF8);
  sub_26B078A10();
  memcpy(v10, v5, sizeof(v10));
  sub_26AFD6644(__dst);
  return memcpy(a1, v10, 0x58uLL);
}

uint64_t *sub_26AFD6A00(uint64_t *a1)
{
  v6 = 0;
  v7 = a1;
  sub_26AFD6494(a1, v5);
  updated = type metadata accessor for UpdateOptionsView();
  sub_26AFD67FC(a1, v1 + *(updated + 36));
  result = a1;
  sub_26AFD6644(a1);
  return result;
}

uint64_t UpdateOptionsView.init(representing:action:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v31 = a4;
  v28 = a1;
  v30 = a2;
  v32 = a3;
  v41 = 0;
  v40 = 0;
  v38 = 0;
  v39 = 0;
  updated = type metadata accessor for UpdateOptionsView();
  v15 = (*(*(updated - 1) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](updated);
  v33 = &v15 - v15;
  v41 = &v15 - v15;
  v40 = v28;
  v38 = v4;
  v39 = v5;
  v16 = *(v6 + 20);
  swift_getKeyPath();
  sub_26B078A30();
  v7 = updated;
  v8 = v37;
  v9 = v33 + v16;
  *v9 = v36[35];
  *(v9 + 8) = v8 & 1;
  v18 = v7[6];
  swift_getKeyPath();
  v17 = v36;
  sub_26B078A30();
  v19 = v42;
  v20 = 273;
  memcpy(v42, v17, 0x111uLL);
  memcpy((v33 + v18), v42, 0x111uLL);
  v22 = updated[8];
  swift_getKeyPath();
  v21 = &v35;
  sub_26B078A30();
  v23 = __dst;
  v27 = 89;
  memcpy(__dst, v21, 0x59uLL);
  memcpy((v33 + v22), __dst, 0x59uLL);
  v25 = updated[9];
  swift_getKeyPath();
  v24 = &v34;
  sub_26B078A30();
  v26 = v44;
  memcpy(v44, v24, v27);
  memcpy((v33 + v25), v26, v27);
  sub_26AFD4C20();

  v10 = v33;
  v11 = v31;
  v12 = v32;
  v13 = (v33 + updated[7]);
  *v13 = v30;
  v13[1] = v12;
  sub_26AFDD854(v10, v11);

  return sub_26AFDDE44(v33);
}

uint64_t UpdateOptionsView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v16 = a1;
  v35 = sub_26AFDE104;
  v17 = MEMORY[0x277CDE8F8];
  v45 = 0;
  v44 = 0;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DE000);
  v19 = (*(*(v18 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v18);
  v32 = v5 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DE008);
  v21 = (*(*(v20 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v20);
  v22 = v5 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DE010);
  v24 = *(v23 - 8);
  v25 = v23 - 8;
  v26 = (*(v24 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v23);
  v27 = v5 - v26;
  v28 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v5 - v26);
  v29 = v5 - v28;
  v30 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v5 - v28);
  v31 = v5 - v30;
  v45 = v5 - v30;
  v44 = v1;
  v33 = &v38;
  v39 = v1;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DE018);
  sub_26AFDE10C();
  sub_26B079800();
  v36 = sub_26AFD52CC();
  v37 = ReactiveUIManager.isBusy.getter();

  if (v37)
  {
    v15 = 1;
  }

  else
  {
    updated = UpdateOptionsView.presentedDescriptor.getter();
    v11 = ReactiveDescriptor.currentState.getter();

    v14 = &v43;
    v43 = v11;
    v12 = &v42;
    v42 = 5;
    v13 = type metadata accessor for SUUIStatefulDescriptorState();
    sub_26AE9B8C0();
    v15 = sub_26B07A790();
  }

  v5[1] = v15;
  sub_26AFDE194();
  sub_26B0796A0();
  sub_26AFDE22C(v32);
  v6 = sub_26AFDE468();
  sub_26AFD7CE4();
  sub_26B079510();
  sub_26AFDE510(v22);
  v40 = v20;
  v41 = v6;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_26AE9463C(v29, v23, v31);
  v9 = *(v24 + 8);
  v8 = v24 + 8;
  v9(v29, v23);
  (*(v24 + 16))(v27, v31, v23);
  sub_26AE94B4C(v27, v23, v16);
  v9(v27, v23);
  return (v9)(v31, v23);
}

uint64_t sub_26AFD71BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v9 = a2;
  v15 = 0;
  v14 = 0;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DE018);
  v7 = *(*(v10 - 8) + 64);
  v6 = (v7 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v10);
  v12 = &v6 - v6;
  v8 = v6;
  MEMORY[0x28223BE20](v3);
  v13 = &v6 - v8;
  v15 = &v6 - v8;
  v14 = a1;
  sub_26AFD72F4(v4);
  v11 = sub_26AFDE10C();
  sub_26AE9463C(v12, v10, v13);
  sub_26AFE49A8(v12);
  sub_26AFE4BE4(v13, v12);
  sub_26AE94B4C(v12, v10, v9);
  sub_26AFE49A8(v12);
  return sub_26AFE49A8(v13);
}

uint64_t sub_26AFD72F4@<X0>(uint64_t a1@<X8>)
{
  v23 = a1;
  v72 = 0;
  v71 = 0;
  v70 = 0;
  v69 = 0;
  v58 = 0;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DE068);
  v25 = (*(*(v24 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v24 - 8);
  v26 = &v10 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DE070);
  v28 = (*(*(v27 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v27 - 8);
  v29 = &v10 - v28;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DE058);
  v31 = *(v30 - 8);
  v32 = v31;
  v34 = *(v31 + 64);
  MEMORY[0x28223BE20](v30 - 8);
  v36 = (v34 + 15) & 0xFFFFFFFFFFFFFFF0;
  v33 = &v10 - v36;
  MEMORY[0x28223BE20](&v10 - v36);
  v35 = &v10 - v36;
  MEMORY[0x28223BE20](v2);
  v37 = &v10 - v36;
  v72 = &v10 - v36;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DE078);
  v40 = *(*(v38 - 8) + 64);
  MEMORY[0x28223BE20](v38 - 8);
  v42 = (v40 + 15) & 0xFFFFFFFFFFFFFFF0;
  v39 = &v10 - v42;
  MEMORY[0x28223BE20](&v10 - v42);
  v41 = &v10 - v42;
  MEMORY[0x28223BE20](v3);
  v43 = &v10 - v42;
  v71 = &v10 - v42;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DE040);
  v44 = (*(*(v50 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v50 - 8);
  v51 = &v10 - v44;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DE048);
  v45 = v53;
  v46 = *(*(v53 - 8) + 64);
  MEMORY[0x28223BE20](v53 - 8);
  v48 = (v46 + 15) & 0xFFFFFFFFFFFFFFF0;
  v55 = &v10 - v48;
  v47 = &v10 - v48;
  MEMORY[0x28223BE20](v4);
  v52 = &v10 - v48;
  v49 = &v10 - v48;
  v70 = &v10 - v48;
  v69 = v1;
  sub_26AFD7D08(v5);
  v68 = 10;
  sub_26AFDE784();
  View.suuiIdentifiable(_:)();
  sub_26AFDE9D4(v51);
  v54 = sub_26AFDEAF0();
  sub_26AE9463C(v55, v53, v52);
  sub_26AFDEB98(v55);
  updated = UpdateOptionsView.presentedDescriptor.getter();
  v57 = ReactiveDescriptor.shouldOfferInstallTonight.getter();

  if (v57)
  {
    sub_26AFD8118(v26);
    v63 = 11;
    sub_26AFDEDB8();
    View.suuiIdentifiable(_:)();
    sub_26AFDF76C(v26);
    v16 = &v10;
    MEMORY[0x28223BE20](&v10);
    v15 = &v10 - 4;
    *(&v10 - 2) = v6;
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DE0A8);
    v18 = sub_26AFDED10();
    v19 = sub_26AFDEF80();
    sub_26B079410();
    sub_26AFDF890(v29);
    v59 = v27;
    v60 = v17;
    v61 = v18;
    v62 = v19;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    sub_26AE9463C(v35, v30, v37);
    v21 = *(v32 + 8);
    v22 = (v32 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v21(v35, v30);
    v58 = v35;
    v14 = *(v32 + 16);
    v13 = v32 + 16;
    v14(v33, v37, v30);
    sub_26AE94B4C(v33, v30, v35);
    v21(v33, v30);
    v14(v39, v35, v30);
    (*(v32 + 56))(v39, 0, 1, v30);
    sub_26AF09CCC(v39, v30, v41);
    sub_26AFDF0A0(v39);
    sub_26AFDF154(v41, v43);
    v21(v35, v30);
    v21(v37, v30);
  }

  else
  {
    v7 = *(v32 + 56);
    v12 = 1;
    v7(v39, 1, 1, v30);
    v10 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DE0A8);
    v11 = sub_26AFDED10();
    v8 = sub_26AFDEF80();
    v67[2] = v27;
    v67[3] = v10;
    v67[4] = v11;
    v67[5] = v8;
    swift_getOpaqueTypeConformance2();
    sub_26AF09CCC(v39, v30, v41);
    sub_26AFDF0A0(v39);
    sub_26AFDF154(v41, v43);
  }

  sub_26AFDF288(v49, v47);
  v67[0] = v47;
  sub_26AFDF520(v43, v41);
  v67[1] = v41;
  v66[0] = v45;
  v66[1] = v38;
  v64 = v54;
  v65 = sub_26AFDF654();
  sub_26AFD49C4(v67, 2uLL, v66, v23);
  sub_26AFDF0A0(v41);
  sub_26AFDEB98(v47);
  sub_26AFDF0A0(v43);
  return sub_26AFDEB98(v49);
}

uint64_t sub_26AFD7D08@<X0>(uint64_t a1@<X8>)
{
  v31 = a1;
  v20 = sub_26AFDFE7C;
  v18 = sub_26AFDFEE0;
  v40 = 0;
  v39 = 0;
  updated = type metadata accessor for UpdateOptionsView();
  v7 = *(updated - 8);
  v13 = v7;
  v14 = *(v7 + 64);
  v8 = (v14 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](updated);
  v16 = &v7 - v8;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DE030);
  v24 = *(v26 - 8);
  v25 = v26 - 8;
  v9 = (*(v24 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v26);
  v27 = &v7 - v9;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DE038);
  v10 = (*(*(v28 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v28);
  v30 = &v7 - v10;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DE040);
  v11 = (*(*(v32 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v32);
  v34 = &v7 - v11;
  v12 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v7 - v11);
  v35 = &v7 - v12;
  v40 = &v7 - v12;
  v39 = v1;
  sub_26AFDD854(v1, v4);
  v15 = (*(v13 + 80) + 16) & ~*(v13 + 80);
  v17 = swift_allocObject();
  sub_26AFDFD48(v16, v17 + v15);
  v19 = &v36;
  v37 = v1;
  sub_26AFDFEE8();
  sub_26B079900();
  v21 = v41;
  sub_26AFD63C8(v41);
  v22 = v42;
  sub_26AEFE298(v21, v42);
  v23 = v38;
  memcpy(v38, v22, 0x61uLL);
  v5 = sub_26AFDE8D4();
  MEMORY[0x26D66C890](v23, v26, &unk_287B944B0, v5);
  sub_26AEFF178(v23);
  (*(v24 + 8))(v27, v26);
  v29 = sub_26AFDA518();
  sub_26AFDE82C();
  View.analyticsForButtonTap(_:)(v29, v28);
  sub_26AFDFF64(v30);
  v33 = sub_26AFDE784();
  sub_26AE9463C(v34, v32, v35);
  sub_26AFDE9D4(v34);
  sub_26AFE004C(v35, v34);
  sub_26AE94B4C(v34, v32, v31);
  sub_26AFDE9D4(v34);
  return sub_26AFDE9D4(v35);
}

uint64_t sub_26AFD8118@<X0>(uint64_t a1@<X8>)
{
  v31 = a1;
  v20 = sub_26AFE05B4;
  v18 = sub_26AFE0618;
  v40 = 0;
  v39 = 0;
  updated = type metadata accessor for UpdateOptionsView();
  v7 = *(updated - 8);
  v13 = v7;
  v14 = *(v7 + 64);
  v8 = (v14 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](updated);
  v16 = &v7 - v8;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DE030);
  v24 = *(v26 - 8);
  v25 = v26 - 8;
  v9 = (*(v24 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v26);
  v27 = &v7 - v9;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DE0C8);
  v10 = (*(*(v28 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v28);
  v30 = &v7 - v10;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DE068);
  v11 = (*(*(v32 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v32);
  v34 = &v7 - v11;
  v12 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v7 - v11);
  v35 = &v7 - v12;
  v40 = &v7 - v12;
  v39 = v1;
  sub_26AFDD854(v1, v4);
  v15 = (*(v13 + 80) + 16) & ~*(v13 + 80);
  v17 = swift_allocObject();
  sub_26AFDFD48(v16, v17 + v15);
  v19 = &v36;
  v37 = v1;
  sub_26AFDFEE8();
  sub_26B079900();
  v21 = v41;
  sub_26AFD68F4(v41);
  v22 = v42;
  sub_26AEF7B1C(v21, v42);
  v23 = v38;
  memcpy(v38, v22, 0x61uLL);
  v5 = sub_26AFDE8D4();
  MEMORY[0x26D66C890](v23, v26, &unk_287B942C0, v5);
  sub_26AEF87E8(v23);
  (*(v24 + 8))(v27, v26);
  v29 = sub_26AFDB604();
  sub_26AFDEE60();
  View.analyticsForButtonTap(_:)(v29, v28);
  sub_26AFE0620(v30);
  v33 = sub_26AFDEDB8();
  sub_26AE9463C(v34, v32, v35);
  sub_26AFDF76C(v34);
  sub_26AFE0708(v35, v34);
  sub_26AE94B4C(v34, v32, v31);
  sub_26AFDF76C(v34);
  return sub_26AFDF76C(v35);
}

uint64_t sub_26AFD8528@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v9 = a2;
  v15 = 0;
  v14 = 0;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DE0A8);
  v7 = *(*(v10 - 8) + 64);
  v6 = (v7 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v10);
  v12 = &v6 - v6;
  v8 = v6;
  MEMORY[0x28223BE20](v3);
  v13 = &v6 - v8;
  v15 = &v6 - v8;
  v14 = a1;
  sub_26AFD8660(v4);
  v11 = sub_26AFDEF80();
  sub_26AE9463C(v12, v10, v13);
  sub_26AFE0930(v12);
  sub_26AFE0C98(v13, v12);
  sub_26AE94B4C(v12, v10, v9);
  sub_26AFE0930(v12);
  return sub_26AFE0930(v13);
}

uint64_t sub_26AFD8660@<X0>(uint64_t a1@<X8>)
{
  v43 = a1;
  v49 = 0;
  v93 = 0;
  v92 = 0;
  v91 = 0;
  v90 = 0;
  v89 = 0;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DE0E8);
  v45 = *(v44 - 8);
  v46 = v45;
  v47 = (*(v45 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0);
  v48 = &v10 - v47;
  v93 = &v10 - v47;
  v50 = sub_26B079040();
  v51 = *(v50 - 8);
  v52 = v51;
  MEMORY[0x28223BE20](v49);
  v53 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  updated = type metadata accessor for UpdateOptionsView();
  v54 = *(updated - 8);
  v55 = v54;
  v56 = *(v54 + 64);
  MEMORY[0x28223BE20](updated - 8);
  v57 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DE100);
  v59 = *(v58 - 8);
  v60 = v59;
  v61 = (*(v59 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v58 - 8);
  v62 = &v10 - v61;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DE108);
  v64 = *(v63 - 8);
  v65 = v64;
  v66 = *(v64 + 64);
  MEMORY[0x28223BE20](v63 - 8);
  v68 = (v66 + 15) & 0xFFFFFFFFFFFFFFF0;
  v67 = &v10 - v68;
  MEMORY[0x28223BE20](&v10 - v68);
  v69 = &v10 - v68;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DE110);
  v75 = *(*(v70 - 8) + 64);
  MEMORY[0x28223BE20](v70 - 8);
  v77 = (v75 + 15) & 0xFFFFFFFFFFFFFFF0;
  v71 = &v10 - v77;
  MEMORY[0x28223BE20](v5);
  v72 = &v10 - v77;
  MEMORY[0x28223BE20](v6);
  v73 = &v10 - v77;
  MEMORY[0x28223BE20](&v10 - v77);
  v74 = &v10 - v77;
  v92 = &v10 - v77;
  MEMORY[0x28223BE20](&v10 - v77);
  v76 = &v10 - v77;
  MEMORY[0x28223BE20](&v10 - v77);
  v78 = &v10 - v77;
  v91 = &v10 - v77;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DE0A8);
  v81 = *(*(v79 - 8) + 64);
  MEMORY[0x28223BE20](v79 - 8);
  v83 = (v81 + 15) & 0xFFFFFFFFFFFFFFF0;
  v80 = &v10 - v83;
  MEMORY[0x28223BE20](&v10 - v83);
  v82 = &v10 - v83;
  MEMORY[0x28223BE20](&v10 - v83);
  v84 = &v10 - v83;
  v90 = &v10 - v83;
  v89 = v1;
  if (sub_26AFDB7DC())
  {
    sub_26AFDD854(v42, v57);
    v22 = *(v55 + 80);
    v23 = (v22 + 16) & ~v22;
    v25 = swift_allocObject();
    sub_26AFDFD48(v57, v25 + v23);
    v29 = &v10;
    MEMORY[0x28223BE20](&v10);
    v26 = &v10 - 4;
    *(&v10 - 2) = v7;
    v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DBFC8);
    v24 = v27;
    v28 = sub_26AEB3370();
    sub_26B079900();
    sub_26AFDC050();
    v31 = sub_26AFE12C0();
    v30 = v31;
    v32 = sub_26AFE1348();
    sub_26B0793E0();
    v33 = *(v52 + 8);
    v34 = (v52 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v33(v53, v50);
    v35 = *(v60 + 8);
    v36 = (v60 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v35(v62, v58);
    v37 = UpdateOptionsView.presentedDescriptor.getter();
    v38 = ReactiveDescriptor.role.getter();

    v88[9] = v38;
    v88[8] = 0;
    v40 = type metadata accessor for SUUIStatefulDescriptorRole();
    v39 = v40;
    v41 = sub_26AF2D17C();
    if (sub_26B07A790())
    {
      v21 = 13;
    }

    else
    {
      v21 = 20;
    }

    v11 = v21;
    v88[4] = v58;
    v88[5] = v50;
    v88[6] = v30;
    v88[7] = v32;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    View.analyticsForButtonTap(_:)(v11, v63);
    v13 = *(v65 + 8);
    v14 = (v65 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v13(v69, v63);
    v15 = sub_26AFE13C8();
    sub_26AE9463C(v76, v70, v78);
    sub_26AFE14E8(v76);
    sub_26AFDD854(v42, v57);
    v16 = (v22 + 16) & ~v22;
    v17 = swift_allocObject();
    sub_26AFDFD48(v57, v17 + v16);
    v18 = &v10;
    MEMORY[0x28223BE20](&v10);
    *(&v10 - 2) = v8;
    sub_26B079900();
    sub_26AFDC050();
    sub_26B0793E0();
    v33(v53, v50);
    v35(v62, v58);
    v19 = UpdateOptionsView.presentedDescriptor.getter();
    v20 = ReactiveDescriptor.role.getter();

    v88[3] = v20;
    v88[2] = 0;
    if (sub_26B07A790())
    {
      v10 = 12;
    }

    else
    {
      v10 = 19;
    }

    View.analyticsForButtonTap(_:)(v10, v63);
    v13(v67, v63);
    sub_26AE9463C(v73, v70, v74);
    sub_26AFE14E8(v73);
    sub_26AFE1930(v78, v72);
    v88[0] = v72;
    sub_26AFE1930(v74, v71);
    v88[1] = v71;
    v87[0] = v70;
    v87[1] = v70;
    v85 = v15;
    v86 = v15;
    sub_26AFD49C4(v88, 2uLL, v87, v48);
    sub_26AFE14E8(v71);
    sub_26AFE14E8(v72);
    sub_26AFE1A10(v48, v80);
    (*(v46 + 56))(v80, 0, 1, v44);
    sub_26AFDF018();
    sub_26AF09CCC(v80, v44, v82);
    sub_26AFE0930(v80);
    sub_26AFE0A88(v82, v84);
    sub_26AFE1BB4(v48);
    sub_26AFE14E8(v74);
    sub_26AFE14E8(v78);
  }

  else
  {
    (*(v46 + 56))(v80, 1, 1, v44);
    sub_26AFDF018();
    sub_26AF09CCC(v80, v44, v82);
    sub_26AFE0930(v80);
    sub_26AFE0A88(v82, v84);
  }

  sub_26AFE0C98(v84, v82);
  sub_26AFDEF80();
  sub_26AE94B4C(v82, v79, v43);
  sub_26AFE0930(v82);
  return sub_26AFE0930(v84);
}

uint64_t sub_26AFD9498(uint64_t a1)
{
  v44 = a1;
  v45 = sub_26AFE489C;
  v46 = sub_26AFE4950;
  v47 = sub_26AFE48D4;
  v48 = sub_26AFE4908;
  v49 = sub_26AFE499C;
  v71 = 0;
  v67 = 0;
  v68 = 0;
  v50 = 0;
  v58 = 0;
  v51 = sub_26B078580();
  v52 = *(v51 - 8);
  v53 = v51 - 8;
  v54 = (*(v52 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v51);
  v55 = v19 - v54;
  v71 = a1;
  updated = UpdateOptionsView.presentedDescriptor.getter();
  v57 = ReactiveDescriptor.currentState.getter();

  v61 = &v70;
  v70 = v57;
  v59 = &v69;
  v69 = 4;
  v60 = type metadata accessor for SUUIStatefulDescriptorState();
  sub_26AE9B8C0();
  sub_26B07A790();
  v42 = sub_26B079D00();
  v43 = v2;
  v28 = v2;
  v27 = v42;
  v67 = v42;
  v68 = v2;
  sub_26B078550();
  sub_26B078640();
  v30 = 32;
  v31 = 7;
  v3 = swift_allocObject();
  v4 = v28;
  v32 = v3;
  *(v3 + 16) = v27;
  *(v3 + 24) = v4;
  v40 = sub_26B078570();
  v41 = sub_26B07A2A0();
  v29 = 17;
  v34 = swift_allocObject();
  *(v34 + 16) = 32;
  v35 = swift_allocObject();
  *(v35 + 16) = 8;
  v5 = swift_allocObject();
  v6 = v32;
  v33 = v5;
  *(v5 + 16) = v45;
  *(v5 + 24) = v6;
  v7 = swift_allocObject();
  v8 = v33;
  v37 = v7;
  *(v7 + 16) = v46;
  *(v7 + 24) = v8;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DBB00);
  v36 = sub_26B07A760();
  v38 = v9;

  v10 = v34;
  v11 = v38;
  *v38 = v47;
  v11[1] = v10;

  v12 = v35;
  v13 = v38;
  v38[2] = v48;
  v13[3] = v12;

  v14 = v37;
  v15 = v38;
  v38[4] = v49;
  v15[5] = v14;
  sub_26AEA3B2C();

  if (os_log_type_enabled(v40, v41))
  {
    v16 = v50;
    v20 = sub_26B07A420();
    v19[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DCED0);
    v21 = sub_26AEA3B70(0);
    v22 = sub_26AEA3B70(1);
    v23 = &v66;
    v66 = v20;
    v24 = &v65;
    v65 = v21;
    v25 = &v64;
    v64 = v22;
    sub_26AEA3BC4(2, &v66);
    sub_26AEA3BC4(1, v23);
    v62 = v47;
    v63 = v34;
    sub_26AEA3BD8(&v62, v23, v24, v25);
    v26 = v16;
    if (v16)
    {

      __break(1u);
    }

    else
    {
      v62 = v48;
      v63 = v35;
      sub_26AEA3BD8(&v62, &v66, &v65, &v64);
      v19[1] = 0;
      v62 = v49;
      v63 = v37;
      sub_26AEA3BD8(&v62, &v66, &v65, &v64);
      _os_log_impl(&dword_26AE88000, v40, v41, "User Action: Clicked %s Action in primaryUpdateButton in UpdateOptionsView", v20, 0xCu);
      sub_26AEA3C24(v21);
      sub_26AEA3C24(v22);
      sub_26B07A400();
    }
  }

  else
  {
  }

  v17 = MEMORY[0x277D82BD8](v40);
  (*(v52 + 8))(v55, v51, v17);
  sub_26AFD9C38();
}

uint64_t sub_26AFD9C38()
{
  v8 = 0;
  v3 = *(v0 + *(type metadata accessor for UpdateOptionsView() + 28));

  UpdateOptionsView.presentedDescriptor.getter();
  v4 = ReactiveDescriptor.currentState.getter();

  v7 = v4;
  v6 = 4;
  type metadata accessor for SUUIStatefulDescriptorState();
  sub_26AE9B8C0();
  if (sub_26B07A790())
  {
    v2 = 4;
  }

  else
  {
    v2 = 1;
  }

  v5 = v2;
  v3(&v5);
}

uint64_t sub_26AFD9D3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  memset(__b, 0, 0x79uLL);
  v25 = a1;
  sub_26AFD54BC(v26);
  memcpy(__dst, v26, sizeof(__dst));
  sub_26AEF7684(__dst, v23);
  sub_26AFE456C(v26);
  v19 = sub_26AFD9EF8();
  v20 = v3;
  v21 = v4;
  v22 = v5;
  v8 = v3;
  v9 = v4;
  v10 = v5;
  v6 = sub_26AFDA2C0();
  v15 = v19;
  v16 = v8;
  v17 = v9 & 1;
  v18 = v10;
  sub_26AFDA42C(__dst, v19, v8, v9 & 1, v10, v6 & 1, v27);
  memcpy(v14, v27, 0x79uLL);
  sub_26AFDFEE8();
  sub_26AE9463C(v14, &unk_287B9B860, __b);
  sub_26AFE2064(v14);
  memcpy(v29, __b, 0x79uLL);
  sub_26AFE1E74(v29, v13);
  memcpy(v12, v29, 0x79uLL);
  sub_26AE94B4C(v12, &unk_287B9B860, a2);
  sub_26AFE2064(v12);
  return sub_26AFE2064(__b);
}

uint64_t sub_26AFD9EF8()
{
  UpdateOptionsView.presentedDescriptor.getter();
  ReactiveDescriptor.currentState.getter();

  type metadata accessor for SUUIStatefulDescriptorState();
  sub_26AE9B8C0();
  if ((sub_26B07A790() & 1) == 0)
  {
    UpdateOptionsView.presentedDescriptor.getter();
    ReactiveDescriptor.currentState.getter();

    sub_26B07A790();
  }

  sub_26B079D00();
  sub_26B078E10();
  v0 = sub_26B02D0D0();
  MEMORY[0x277D82BE0](*v0);
  return sub_26B0792C0();
}

uint64_t sub_26AFDA2C0()
{
  v12 = v0;
  sub_26AFD52CC();
  ReactiveUIManager.currentInitiatedAction.getter(&v11);
  v5 = v11;

  v10 = v5;
  v9 = 1;
  if (static UpdateAction.== infix(_:_:)(&v10, &v9))
  {
    v4 = 1;
  }

  else
  {
    sub_26AFD52CC();
    ReactiveUIManager.currentInitiatedAction.getter(&v8);
    v3 = v8;

    v7 = v3;
    v6 = 4;
    v4 = static UpdateAction.== infix(_:_:)(&v7, &v6);
  }

  if (v4)
  {
    v2 = 1;
  }

  else
  {
    UpdateOptionsView.presentedDescriptor.getter();
    ReactiveDescriptor.currentState.getter();

    type metadata accessor for SUUIStatefulDescriptorState();
    sub_26AE9B8C0();
    v2 = sub_26B07A790();
  }

  return v2 & 1;
}

void *sub_26AFDA42C@<X0>(const void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, char a6@<W5>, void *a7@<X8>)
{
  v16[16] = a2;
  v16[17] = a3;
  v17 = a4;
  v18 = a5;
  memcpy(__dst, a1, sizeof(__dst));
  memcpy(v15, __dst, sizeof(v15));
  memcpy(v16, v15, 0x58uLL);
  v16[11] = a2;
  v16[12] = a3;
  LOBYTE(v16[13]) = a4 & 1;
  v16[14] = a5;
  LOBYTE(v16[15]) = a6;
  return memcpy(a7, v16, 0x79uLL);
}

uint64_t sub_26AFDA518()
{
  UpdateOptionsView.presentedDescriptor.getter();
  ReactiveDescriptor.role.getter();

  type metadata accessor for SUUIStatefulDescriptorRole();
  sub_26AF2D17C();
  if (sub_26B07A790())
  {
    type metadata accessor for SUUIStatefulDescriptorState();
    UpdateOptionsView.presentedDescriptor.getter();
    ReactiveDescriptor.currentState.getter();

    sub_26AFE1CC0();
    if (sub_26B079D40())
    {
      return 15;
    }

    else
    {
      return 14;
    }
  }

  else
  {
    type metadata accessor for SUUIStatefulDescriptorState();
    UpdateOptionsView.presentedDescriptor.getter();
    ReactiveDescriptor.currentState.getter();

    sub_26AFE1CC0();
    if (sub_26B079D40())
    {
      return 22;
    }

    else
    {
      return 21;
    }
  }
}

uint64_t sub_26AFDA6F0(uint64_t a1)
{
  v47 = a1;
  v48 = sub_26AFE4750;
  v49 = sub_26AFE4804;
  v50 = sub_26AFE4788;
  v51 = sub_26AFE47BC;
  v52 = sub_26AFE4850;
  v77 = 0;
  v71 = 0;
  v72 = 0;
  v53 = 0;
  v61 = 0;
  v54 = sub_26B078580();
  v55 = *(v54 - 8);
  v56 = v54 - 8;
  v57 = (*(v55 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v54);
  v58 = v19 - v57;
  v77 = a1;
  updated = UpdateOptionsView.presentedDescriptor.getter();
  v60 = ReactiveDescriptor.currentState.getter();

  v64 = &v76;
  v76 = v60;
  v62 = &v75;
  v75 = 4;
  v63 = type metadata accessor for SUUIStatefulDescriptorState();
  v65 = sub_26AE9B8C0();
  if (sub_26B07A790())
  {
    v46 = 1;
  }

  else
  {
    v44 = UpdateOptionsView.presentedDescriptor.getter();
    v45 = ReactiveDescriptor.currentState.getter();

    v74 = v45;
    v73 = 5;
    v46 = sub_26B07A790();
  }

  v42 = sub_26B079D00();
  v43 = v2;
  v28 = v2;
  v27 = v42;
  v71 = v42;
  v72 = v2;
  sub_26B078550();
  sub_26B078640();
  v30 = 32;
  v31 = 7;
  v3 = swift_allocObject();
  v4 = v28;
  v32 = v3;
  *(v3 + 16) = v27;
  *(v3 + 24) = v4;
  v40 = sub_26B078570();
  v41 = sub_26B07A2A0();
  v29 = 17;
  v34 = swift_allocObject();
  *(v34 + 16) = 32;
  v35 = swift_allocObject();
  *(v35 + 16) = 8;
  v5 = swift_allocObject();
  v6 = v32;
  v33 = v5;
  *(v5 + 16) = v48;
  *(v5 + 24) = v6;
  v7 = swift_allocObject();
  v8 = v33;
  v37 = v7;
  *(v7 + 16) = v49;
  *(v7 + 24) = v8;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DBB00);
  v36 = sub_26B07A760();
  v38 = v9;

  v10 = v34;
  v11 = v38;
  *v38 = v50;
  v11[1] = v10;

  v12 = v35;
  v13 = v38;
  v38[2] = v51;
  v13[3] = v12;

  v14 = v37;
  v15 = v38;
  v38[4] = v52;
  v15[5] = v14;
  sub_26AEA3B2C();

  if (os_log_type_enabled(v40, v41))
  {
    v16 = v53;
    v20 = sub_26B07A420();
    v19[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DCED0);
    v21 = sub_26AEA3B70(0);
    v22 = sub_26AEA3B70(1);
    v23 = &v70;
    v70 = v20;
    v24 = &v69;
    v69 = v21;
    v25 = &v68;
    v68 = v22;
    sub_26AEA3BC4(2, &v70);
    sub_26AEA3BC4(1, v23);
    v66 = v50;
    v67 = v34;
    sub_26AEA3BD8(&v66, v23, v24, v25);
    v26 = v16;
    if (v16)
    {

      __break(1u);
    }

    else
    {
      v66 = v51;
      v67 = v35;
      sub_26AEA3BD8(&v66, &v70, &v69, &v68);
      v19[1] = 0;
      v66 = v52;
      v67 = v37;
      sub_26AEA3BD8(&v66, &v70, &v69, &v68);
      _os_log_impl(&dword_26AE88000, v40, v41, "User Action: Clicked %s Action in secondaryUpdateButton in UpdateOptionsView", v20, 0xCu);
      sub_26AEA3C24(v21);
      sub_26AEA3C24(v22);
      sub_26B07A400();
    }
  }

  else
  {
  }

  v17 = MEMORY[0x277D82BD8](v40);
  (*(v55 + 8))(v58, v54, v17);
  sub_26AFDAF3C();
}

uint64_t sub_26AFDAF3C()
{
  v8 = 0;
  v3 = *(v0 + *(type metadata accessor for UpdateOptionsView() + 28));

  UpdateOptionsView.presentedDescriptor.getter();
  v4 = ReactiveDescriptor.currentState.getter();

  v7 = v4;
  v6 = 4;
  type metadata accessor for SUUIStatefulDescriptorState();
  sub_26AE9B8C0();
  if (sub_26B07A790())
  {
    v2 = 5;
  }

  else
  {
    v2 = 2;
  }

  v5 = v2;
  v3(&v5);
}

uint64_t sub_26AFDB040@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  memset(__b, 0, 0x79uLL);
  v25 = a1;
  sub_26AFD54BC(v26);
  memcpy(__dst, v27, sizeof(__dst));
  sub_26AEF7684(__dst, v23);
  sub_26AFE456C(v26);
  v19 = sub_26AFDB200();
  v20 = v3;
  v21 = v4;
  v22 = v5;
  v8 = v3;
  v9 = v4;
  v10 = v5;
  v6 = sub_26AFDB504();
  v15 = v19;
  v16 = v8;
  v17 = v9 & 1;
  v18 = v10;
  sub_26AFDA42C(__dst, v19, v8, v9 & 1, v10, v6 & 1, v28);
  memcpy(v14, v28, 0x79uLL);
  sub_26AFDFEE8();
  sub_26AE9463C(v14, &unk_287B9B860, __b);
  sub_26AFE2064(v14);
  memcpy(v30, __b, 0x79uLL);
  sub_26AFE1E74(v30, v13);
  memcpy(v12, v30, 0x79uLL);
  sub_26AE94B4C(v12, &unk_287B9B860, a2);
  sub_26AFE2064(v12);
  return sub_26AFE2064(__b);
}

uint64_t sub_26AFDB200()
{
  UpdateOptionsView.presentedDescriptor.getter();
  ReactiveDescriptor.currentState.getter();

  type metadata accessor for SUUIStatefulDescriptorState();
  sub_26AE9B8C0();
  if ((sub_26B07A790() & 1) == 0)
  {
    UpdateOptionsView.presentedDescriptor.getter();
    ReactiveDescriptor.currentState.getter();

    sub_26B07A790();
  }

  sub_26B079D00();
  sub_26B078E10();
  v0 = sub_26B02D0D0();
  MEMORY[0x277D82BE0](*v0);
  return sub_26B0792C0();
}

uint64_t sub_26AFDB504()
{
  v7 = v0;
  v1 = sub_26B07A760();
  *v2 = 5;
  v2[1] = 2;
  v2[2] = 3;
  sub_26AEA3B2C();
  v6 = v1;
  sub_26AFD52CC();
  ReactiveUIManager.currentInitiatedAction.getter(&v5);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DE140);
  sub_26AFE1D40();
  sub_26AEB0008();
  v4 = sub_26B07A010();
  sub_26AFE1DC8();
  return v4 & 1;
}

uint64_t sub_26AFDB604()
{
  UpdateOptionsView.presentedDescriptor.getter();
  ReactiveDescriptor.role.getter();

  type metadata accessor for SUUIStatefulDescriptorRole();
  sub_26AF2D17C();
  if (sub_26B07A790())
  {
    type metadata accessor for SUUIStatefulDescriptorState();
    UpdateOptionsView.presentedDescriptor.getter();
    ReactiveDescriptor.currentState.getter();

    sub_26AFE1CC0();
    if (sub_26B079D40())
    {
      return 16;
    }

    else
    {
      return 13;
    }
  }

  else
  {
    type metadata accessor for SUUIStatefulDescriptorState();
    UpdateOptionsView.presentedDescriptor.getter();
    ReactiveDescriptor.currentState.getter();

    sub_26AFE1CC0();
    if (sub_26B079D40())
    {
      return 23;
    }

    else
    {
      return 20;
    }
  }
}

uint64_t sub_26AFDB7DC()
{
  UpdateOptionsView.presentedDescriptor.getter();
  ReactiveDescriptor.currentState.getter();

  type metadata accessor for SUUIStatefulDescriptorState();
  sub_26AFE1DF4();
  if (sub_26B079D70())
  {
    LOBYTE(v1) = 0;
  }

  else
  {
    UpdateOptionsView.presentedDescriptor.getter();
    ReactiveDescriptor.currentState.getter();

    v1 = sub_26B079D70() ^ 1;
  }

  return v1 & 1;
}

uint64_t sub_26AFDB8F0(uint64_t a1)
{
  v23 = a1;
  v30 = 0;
  v39 = 0;
  v22 = 0;
  v24 = sub_26B078580();
  v25 = *(v24 - 8);
  v26 = v25;
  MEMORY[0x28223BE20](v23);
  v27 = v7 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = v2;
  sub_26B078550();
  v32 = sub_26B078570();
  v28 = v32;
  v31 = sub_26B07A2A0();
  v29 = v31;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DBB00);
  v33 = sub_26B07A760();
  if (os_log_type_enabled(v32, v31))
  {
    v3 = v22;
    v13 = sub_26B07A420();
    v9 = v13;
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DCED0);
    v11 = 0;
    v14 = sub_26AEA3B70(0);
    v12 = v14;
    v15 = sub_26AEA3B70(v11);
    v37 = v13;
    v36 = v14;
    v35 = v15;
    v16 = 0;
    v17 = &v37;
    sub_26AEA3BC4(0, &v37);
    sub_26AEA3BC4(v16, v17);
    v34 = v33;
    v18 = v7;
    MEMORY[0x28223BE20](v7);
    v19 = &v7[-6];
    v7[-4] = v4;
    v7[-3] = &v36;
    v7[-2] = &v35;
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DBB10);
    sub_26AE9CC18();
    sub_26B079FF0();
    v21 = v3;
    if (v3)
    {
      __break(1u);
    }

    else
    {
      _os_log_impl(&dword_26AE88000, v28, v29, "User Action: Clicked 'Update Tonight' Action in secondaryAction in UpdateOptionsView", v9, 2u);
      v7[2] = 0;
      sub_26AEA3C24(v12);
      sub_26AEA3C24(v15);
      sub_26B07A400();

      v8 = v21;
    }
  }

  else
  {

    v8 = v22;
  }

  (*(v26 + 8))(v27, v24);
  v5 = (v23 + *(type metadata accessor for UpdateOptionsView() + 28));
  v7[0] = *v5;
  v7[1] = v5[1];

  v38 = 2;
  (v7[0])(&v38);
}

uint64_t sub_26AFDBCCC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a2;
  v36 = 0;
  v35 = 0;
  v14 = 0;
  v8 = (*(*(sub_26B078300() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0);
  v16 = &v8 - v8;
  v3 = sub_26B079DE0();
  v9 = (*(*(v3 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v3);
  v13 = &v8 - v9;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DBFC8);
  v22 = *(v28 - 8);
  v23 = v28 - 8;
  v10 = (*(v22 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v28);
  v26 = &v8 - v10;
  v11 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v8 - v10);
  v27 = &v8 - v11;
  v36 = &v8 - v11;
  v35 = a1;
  v12 = 1;
  sub_26B079D00();
  sub_26B079D80();
  v15 = *sub_26B02D0D0();
  MEMORY[0x277D82BE0](v15);
  sub_26AEFB5C4();
  v32[2] = 0;
  v32[3] = 0;
  v33 = 0;
  v34 = v12 & 1;
  v5 = sub_26B079E40();
  v21 = v32;
  v32[0] = v5;
  v32[1] = v6;
  v17 = v37;
  sub_26AFD54BC(v37);
  v18 = __dst;
  memcpy(__dst, v17 + 88, sizeof(__dst));
  sub_26AEF7684(__dst, v31);
  sub_26AFE456C(v17);
  v19 = __dst[4];
  v20 = __dst[5];
  sub_26B078640();
  sub_26AEF788C();
  sub_26AE95974();
  sub_26B079890();
  v25 = sub_26AEB3370();
  sub_26AE9463C(v26, v28, v27);
  v30 = *(v22 + 8);
  v29 = v22 + 8;
  v30(v26, v28);
  (*(v22 + 16))(v26, v27, v28);
  sub_26AE94B4C(v26, v28, v24);
  v30(v26, v28);
  return (v30)(v27, v28);
}

uint64_t sub_26AFDC068(uint64_t a1)
{
  v23 = a1;
  v30 = 0;
  v39 = 0;
  v22 = 0;
  v24 = sub_26B078580();
  v25 = *(v24 - 8);
  v26 = v25;
  MEMORY[0x28223BE20](v23);
  v27 = v7 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = v2;
  sub_26B078550();
  v32 = sub_26B078570();
  v28 = v32;
  v31 = sub_26B07A2A0();
  v29 = v31;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DBB00);
  v33 = sub_26B07A760();
  if (os_log_type_enabled(v32, v31))
  {
    v3 = v22;
    v13 = sub_26B07A420();
    v9 = v13;
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DCED0);
    v11 = 0;
    v14 = sub_26AEA3B70(0);
    v12 = v14;
    v15 = sub_26AEA3B70(v11);
    v37 = v13;
    v36 = v14;
    v35 = v15;
    v16 = 0;
    v17 = &v37;
    sub_26AEA3BC4(0, &v37);
    sub_26AEA3BC4(v16, v17);
    v34 = v33;
    v18 = v7;
    MEMORY[0x28223BE20](v7);
    v19 = &v7[-6];
    v7[-4] = v4;
    v7[-3] = &v36;
    v7[-2] = &v35;
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DBB10);
    sub_26AE9CC18();
    sub_26B079FF0();
    v21 = v3;
    if (v3)
    {
      __break(1u);
    }

    else
    {
      _os_log_impl(&dword_26AE88000, v28, v29, "User Action: Clicked 'Download Only' Action in secondaryAction in UpdateOptionsView", v9, 2u);
      v7[2] = 0;
      sub_26AEA3C24(v12);
      sub_26AEA3C24(v15);
      sub_26B07A400();

      v8 = v21;
    }
  }

  else
  {

    v8 = v22;
  }

  (*(v26 + 8))(v27, v24);
  v5 = (v23 + *(type metadata accessor for UpdateOptionsView() + 28));
  v7[0] = *v5;
  v7[1] = v5[1];

  v38 = 3;
  (v7[0])(&v38);
}

uint64_t sub_26AFDC444@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a2;
  v36 = 0;
  v35 = 0;
  v14 = 0;
  v8 = (*(*(sub_26B078300() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0);
  v16 = &v8 - v8;
  v3 = sub_26B079DE0();
  v9 = (*(*(v3 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v3);
  v13 = &v8 - v9;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DBFC8);
  v22 = *(v28 - 8);
  v23 = v28 - 8;
  v10 = (*(v22 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v28);
  v26 = &v8 - v10;
  v11 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v8 - v10);
  v27 = &v8 - v11;
  v36 = &v8 - v11;
  v35 = a1;
  v12 = 1;
  sub_26B079D00();
  sub_26B079D80();
  v15 = *sub_26B02D0D0();
  MEMORY[0x277D82BE0](v15);
  sub_26AEFB5C4();
  v32[2] = 0;
  v32[3] = 0;
  v33 = 0;
  v34 = v12 & 1;
  v5 = sub_26B079E40();
  v21 = v32;
  v32[0] = v5;
  v32[1] = v6;
  v17 = v37;
  sub_26AFD54BC(v37);
  v18 = __dst;
  memcpy(__dst, v17 + 88, sizeof(__dst));
  sub_26AEF7684(__dst, v31);
  sub_26AFE456C(v17);
  v19 = __dst[2];
  v20 = __dst[3];
  sub_26B078640();
  sub_26AEF788C();
  sub_26AE95974();
  sub_26B079890();
  v25 = sub_26AEB3370();
  sub_26AE9463C(v26, v28, v27);
  v30 = *(v22 + 8);
  v29 = v22 + 8;
  v30(v26, v28);
  (*(v22 + 16))(v26, v27, v28);
  sub_26AE94B4C(v26, v28, v24);
  v30(v26, v28);
  return (v30)(v27, v28);
}

uint64_t sub_26AFDC84C()
{
  v2 = *(v0 + 88);
  sub_26AE95D28(v2, *(v0 + 96), *(v0 + 104) & 1);
  sub_26B078640();
  return v2;
}

uint64_t sub_26AFDC8DC@<X0>(uint64_t a1@<X8>)
{
  v12 = a1;
  v7 = sub_26AFE1FD4;
  v20 = 0;
  __src[0] = v21;
  __src[1] = 121;
  memcpy(v21, v1, 0x79uLL);
  memcpy(__dst, v21, sizeof(__dst));
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DE158);
  v5 = (*(*(v13 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v13);
  v15 = (__src - v5);
  v6 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](__src - v5);
  v16 = (__src - v6);
  v20 = __src - v6;
  sub_26AFE1E74(v1, &v19);
  v8 = &v17;
  v18 = v1;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DE160);
  v10 = sub_26AFE1FDC();
  sub_26AF5C6C0();
  sub_26B0799A0();
  sub_26AFE2064(v11);
  v14 = sub_26AFE20F0();
  sub_26AE9463C(v15, v13, v16);
  sub_26AFE2178(v15);
  sub_26AFE238C(v16, v15);
  sub_26AE94B4C(v15, v13, v12);
  sub_26AFE2178(v15);
  return sub_26AFE2178(v16);
}

uint64_t sub_26AFDCAA4@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v25 = &v65;
  v44 = &v59;
  v49 = a1;
  v26 = a2;
  v41 = 0;
  v64 = 0;
  v63 = 0;
  v62 = 0;
  memset(v61, 0, sizeof(v61));
  v51 = 0;
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v68 = a1[3];
  v67 = v4;
  v66 = v3;
  v65 = v2;
  v5 = a1[4];
  v6 = a1[5];
  v7 = a1[6];
  *&v71[9] = *(a1 + 105);
  *v71 = v7;
  v70 = v6;
  v69 = v5;
  v76 = v68;
  v75 = v67;
  v74 = v66;
  v73 = v65;
  *(v79 + 9) = *&v71[9];
  v79[0] = v7;
  v78 = v6;
  v77 = v5;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DE188);
  v28 = *(v27 - 8);
  v29 = v28;
  v31 = *(v28 + 64);
  MEMORY[0x28223BE20](v27 - 8);
  v33 = (v31 + 15) & 0xFFFFFFFFFFFFFFF0;
  v30 = &v18 - v33;
  MEMORY[0x28223BE20](&v18 - v33);
  v32 = &v18 - v33;
  MEMORY[0x28223BE20](v8);
  v34 = &v18 - v33;
  v64 = &v18 - v33;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DE1B8);
  v37 = *(*(v35 - 8) + 64);
  MEMORY[0x28223BE20](v49);
  v39 = (v37 + 15) & 0xFFFFFFFFFFFFFFF0;
  v36 = &v18 - v39;
  MEMORY[0x28223BE20](v9);
  v38 = &v18 - v39;
  MEMORY[0x28223BE20](v10);
  v40 = &v18 - v39;
  v63 = &v18 - v39;
  sub_26AFE1E74(v11, &v58);
  v50 = v49;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DE1E0);
  v43 = sub_26AFE31A0();
  sub_26B005488();
  sub_26B079940();
  sub_26AFE2064(v49);
  v12 = *v44;
  v81 = v44[1];
  v80 = v12;
  v13 = v44[2];
  v14 = v44[3];
  v15 = v44[4];
  v85 = v60;
  v84 = v15;
  v83 = v14;
  v82 = v13;
  v56[1] = v81;
  v56[0] = v80;
  v57 = v60;
  v56[4] = v15;
  v56[3] = v14;
  v56[2] = v13;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DE1F0);
  v45 = v46;
  v47 = sub_26AFE3228();
  v48 = v56;
  sub_26AE9463C(v56, v46, v61);
  sub_26AFE32B0(v48);
  v72 = *(v49 + 120);
  if (v72 == 1)
  {
    sub_26AFE1E74(v49, v52);
    v23 = &v18;
    MEMORY[0x28223BE20](&v18);
    v20 = (&v18 - 4);
    *(&v18 - 2) = v16;
    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DE210);
    v22 = sub_26AFE3BF8();
    sub_26B005488();
    sub_26B079940();
    sub_26AFE2064(v49);
    v24 = sub_26AFE32F8();
    sub_26AE9463C(v32, v27, v34);
    sub_26AFE3C80(v32);
    v51 = v32;
    sub_26AFE3DBC(v34, v30);
    sub_26AE94B4C(v30, v27, v32);
    sub_26AFE3C80(v30);
    sub_26AFE3DBC(v32, v36);
    (*(v29 + 56))(v36, 0, 1, v27);
    sub_26AF09CCC(v36, v27, v38);
    sub_26AFE3380(v36);
    sub_26AFE350C(v38, v40);
    sub_26AFE3C80(v32);
    sub_26AFE3C80(v34);
  }

  else
  {
    (*(v29 + 56))(v36, 1, 1, v27);
    sub_26AFE32F8();
    sub_26AF09CCC(v36, v27, v38);
    sub_26AFE3380(v36);
    sub_26AFE350C(v38, v40);
  }

  v19 = v61;
  v18 = v54;
  sub_26AFE37CC(v61, v54);
  v55[0] = v18;
  sub_26AFE3888(v40, v38);
  v55[1] = v38;
  v53[0] = v45;
  v53[1] = v35;
  v52[16] = v47;
  v52[17] = sub_26AFE3B58();
  sub_26AFD49C4(v55, 2uLL, v53, v26);
  sub_26AFE3380(v38);
  sub_26AFE32B0(v18);
  sub_26AFE3380(v40);
  return sub_26AFE32B0(v19);
}

uint64_t sub_26AFDD0D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v25 = 0;
  v26 = 0;
  memset(v22, 0, 32);
  v18 = 0;
  v19 = 0;
  v27 = a1;
  v23 = sub_26B079970();
  v24 = v2 & 1;
  v7 = MEMORY[0x277CE1180];
  sub_26AE9463C(&v23, MEMORY[0x277CE1180], &v25);
  v28 = *(a1 + 88);
  v29 = *(a1 + 104);
  sub_26AFE44E4(&v28, v21);
  v20[0] = v28;
  v20[1] = v29;
  v6 = MEMORY[0x277CE0BD8];
  sub_26AE9463C(v20, MEMORY[0x277CE0BD8], v22);
  sub_26AE95B40(v20);
  v16 = sub_26B079970();
  v17 = v3 & 1;
  sub_26AE9463C(&v16, v7, &v18);
  v13 = v25;
  v14 = v26;
  v15[0] = &v13;
  sub_26AFE44E4(v22, v12);
  v15[1] = v12;
  v10 = v18;
  v11 = v19;
  v15[2] = &v10;
  v9[0] = v7;
  v9[1] = v6;
  v9[2] = v7;
  sub_26AFD49C4(v15, 3uLL, v9, a2);
  sub_26AE95B40(v12);
  return sub_26AE95B40(v22);
}

uint64_t sub_26AFDD2EC@<X0>(const void *a1@<X0>, uint64_t a2@<X8>)
{
  v32 = a2;
  v22 = a1;
  v48 = 0;
  v47 = 0;
  v13 = &v45;
  v45 = 0;
  v46 = 0;
  v9 = 0;
  v17 = sub_26B078A00();
  v14 = *(v17 - 8);
  v15 = v17 - 8;
  v6 = (*(v14 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v17);
  v16 = &v6 - v6;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DE1A0);
  v18 = *(v21 - 8);
  v19 = v21 - 8;
  v7 = (*(v18 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v21);
  v20 = &v6 - v7;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DE1A8);
  v8 = (*(*(v25 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v25);
  v27 = &v6 - v8;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DE1B0);
  v11 = *(*(v29 - 8) + 64);
  v10 = (v11 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v9);
  v34 = &v6 - v10;
  v12 = (v11 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v2);
  v35 = &v6 - v12;
  v48 = &v6 - v12;
  v47 = v3;
  v43 = sub_26B079970();
  v44 = v4 & 1;
  v28 = MEMORY[0x277CE1180];
  v30 = MEMORY[0x277CE1170];
  sub_26AE9463C(&v43, MEMORY[0x277CE1180], v13);
  sub_26B078A60();
  (*(v14 + 104))(v16, *MEMORY[0x277CDF440], v17);
  sub_26AFE3FB8();
  sub_26B079420();
  (*(v14 + 8))(v16, v17);
  (*(v18 + 8))(v20, v21);
  v26 = sub_26B079160();
  v23 = __dst;
  memcpy(__dst, v22, sizeof(__dst));
  sub_26AEF7684(__dst, v42);
  v24 = __dst[6];
  sub_26AEF788C();
  sub_26AFE4040();
  sub_26B079680();
  sub_26AFE40E8(v27);
  v31 = sub_26AFE41DC();
  sub_26AE9463C(v34, v29, v35);
  sub_26AFE4280(v34);
  v39 = v45;
  v40 = v46;
  v33 = v41;
  v41[0] = &v39;
  sub_26AFE4374(v35, v34);
  v41[1] = v34;
  v38[0] = v28;
  v38[1] = v29;
  v36 = v30;
  v37 = v31;
  sub_26AFD49C4(v33, 2uLL, v38, v32);
  sub_26AFE4280(v34);
  return sub_26AFE4280(v35);
}

uint64_t sub_26AFDD854(uint64_t a1, uint64_t a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDE20);
  (*(*(v2 - 8) + 16))(a2, a1);
  updated = type metadata accessor for UpdateOptionsView();
  v19 = updated[5];
  v20 = *(a1 + v19);
  v21 = *(a1 + v19 + 8);

  v3 = a2 + v19;
  *v3 = v20;
  *(v3 + 8) = v21 & 1;
  v22 = updated[6];
  v40 = *(a1 + v22);
  v41 = *(a1 + v22 + 8);
  v42 = *(a1 + v22 + 16);
  v43 = *(a1 + v22 + 24);
  v44 = *(a1 + v22 + 32);
  v45 = *(a1 + v22 + 40);
  v46 = *(a1 + v22 + 48);
  v23 = *(a1 + v22 + 56);
  v24 = *(a1 + v22 + 64);
  v47 = *(a1 + v22 + 72);
  v39 = *(a1 + v22 + 80);
  v4 = *(a1 + v22 + 88);
  v5 = *(a1 + v22 + 96);
  v6 = *(a1 + v22 + 104);
  v7 = *(a1 + v22 + 112);
  v8 = *(a1 + v22 + 120);
  v9 = *(a1 + v22 + 128);
  v10 = *(a1 + v22 + 136);
  v11 = *(a1 + v22 + 144);
  v12 = *(a1 + v22 + 152);
  v13 = *(a1 + v22 + 160);
  v25 = *(a1 + v22 + 168);
  v26 = *(a1 + v22 + 176);
  v27 = *(a1 + v22 + 184);
  v28 = *(a1 + v22 + 192);
  v29 = *(a1 + v22 + 200);
  v30 = *(a1 + v22 + 208);
  v31 = *(a1 + v22 + 216);
  v32 = *(a1 + v22 + 224);
  v33 = *(a1 + v22 + 232);
  v34 = *(a1 + v22 + 240);
  v35 = *(a1 + v22 + 248);
  v36 = *(a1 + v22 + 256);
  v37 = *(a1 + v22 + 264);
  v38 = *(a1 + v22 + 272);
  sub_26AFD5850(v40, v41, v42, v43, v44, v45, v46, v23, v24, v47, v39, v4, v5, v6, v7, v8, v9, v10, v11, v12, v13, v25, v26, v27, v28, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38);
  v14 = a2 + v22;
  *v14 = v40;
  *(v14 + 8) = v41;
  *(v14 + 16) = v42;
  *(v14 + 24) = v43;
  *(v14 + 32) = v44;
  *(v14 + 40) = v45;
  *(v14 + 48) = v46;
  *(v14 + 56) = v23;
  *(v14 + 64) = v24;
  *(v14 + 72) = v47;
  *(v14 + 80) = v39;
  *(v14 + 88) = v4;
  *(v14 + 96) = v5;
  *(v14 + 104) = v6;
  *(v14 + 112) = v7;
  *(v14 + 120) = v8;
  *(v14 + 128) = v9;
  *(v14 + 136) = v10;
  *(v14 + 144) = v11;
  *(v14 + 152) = v12;
  *(v14 + 160) = v13;
  *(v14 + 168) = v25;
  *(v14 + 176) = v26;
  *(v14 + 184) = v27;
  *(v14 + 192) = v28;
  *(v14 + 200) = v29;
  *(v14 + 208) = v30;
  *(v14 + 216) = v31;
  *(v14 + 224) = v32;
  *(v14 + 232) = v33;
  *(v14 + 240) = v34;
  *(v14 + 248) = v35;
  *(v14 + 256) = v36;
  *(v14 + 264) = v37;
  *(v14 + 272) = v38 & 1;
  v48 = updated[7];
  v49 = *(a1 + v48);
  v50 = *(a1 + v48 + 8);

  v15 = (a2 + v48);
  *v15 = v49;
  v15[1] = v50;
  v51 = updated[8];
  v52 = *(a1 + v51);
  v53 = *(a1 + v51 + 8);
  v54 = *(a1 + v51 + 16);
  v55 = *(a1 + v51 + 24);
  v56 = *(a1 + v51 + 32);
  v57 = *(a1 + v51 + 40);
  v58 = *(a1 + v51 + 48);
  v59 = *(a1 + v51 + 56);
  v60 = *(a1 + v51 + 64);
  v61 = *(a1 + v51 + 72);
  v62 = *(a1 + v51 + 80);
  v63 = *(a1 + v51 + 88);
  sub_26AFD659C(v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63);
  v16 = a2 + v51;
  *v16 = v52;
  *(v16 + 8) = v53;
  *(v16 + 16) = v54;
  *(v16 + 24) = v55;
  *(v16 + 32) = v56;
  *(v16 + 40) = v57;
  *(v16 + 48) = v58;
  *(v16 + 56) = v59;
  *(v16 + 64) = v60;
  *(v16 + 72) = v61;
  *(v16 + 80) = v62;
  *(v16 + 88) = v63 & 1;
  v66 = updated[9];
  v67 = *(a1 + v66);
  v68 = *(a1 + v66 + 8);
  v69 = *(a1 + v66 + 16);
  v70 = *(a1 + v66 + 24);
  v71 = *(a1 + v66 + 32);
  v72 = *(a1 + v66 + 40);
  v73 = *(a1 + v66 + 48);
  v74 = *(a1 + v66 + 56);
  v75 = *(a1 + v66 + 64);
  v76 = *(a1 + v66 + 72);
  v77 = *(a1 + v66 + 80);
  v78 = *(a1 + v66 + 88);
  sub_26AFD659C(v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78);
  result = a2;
  v18 = a2 + v66;
  *v18 = v67;
  *(v18 + 8) = v68;
  *(v18 + 16) = v69;
  *(v18 + 24) = v70;
  *(v18 + 32) = v71;
  *(v18 + 40) = v72;
  *(v18 + 48) = v73;
  *(v18 + 56) = v74;
  *(v18 + 64) = v75;
  *(v18 + 72) = v76;
  *(v18 + 80) = v77;
  *(v18 + 88) = v78 & 1;
  return result;
}

uint64_t sub_26AFDDE44(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDE20);
  (*(*(v1 - 8) + 8))(a1);
  updated = type metadata accessor for UpdateOptionsView();

  v2 = a1 + updated[6];
  sub_26AFD5C30(*v2, *(v2 + 8), *(v2 + 16), *(v2 + 24), *(v2 + 32), *(v2 + 40), *(v2 + 48), *(v2 + 56), *(v2 + 64), *(v2 + 72), *(v2 + 80), *(v2 + 88), *(v2 + 96), *(v2 + 104), *(v2 + 112), *(v2 + 120), *(v2 + 128), *(v2 + 136), *(v2 + 144), *(v2 + 152), *(v2 + 160), *(v2 + 168), *(v2 + 176), *(v2 + 184), *(v2 + 192), *(v2 + 200), *(v2 + 208), *(v2 + 216), *(v2 + 224), *(v2 + 232), *(v2 + 240), *(v2 + 248), *(v2 + 256), *(v2 + 264), *(v2 + 272));

  v3 = a1 + updated[8];
  sub_26AFD66B4(*v3, *(v3 + 8), *(v3 + 16), *(v3 + 24), *(v3 + 32), *(v3 + 40), *(v3 + 48), *(v3 + 56), *(v3 + 64), *(v3 + 72), *(v3 + 80), *(v3 + 88));
  v4 = a1 + updated[9];
  sub_26AFD66B4(*v4, *(v4 + 8), *(v4 + 16), *(v4 + 24), *(v4 + 32), *(v4 + 40), *(v4 + 48), *(v4 + 56), *(v4 + 64), *(v4 + 72), *(v4 + 80), *(v4 + 88));
  return a1;
}

unint64_t sub_26AFDE10C()
{
  v2 = qword_2803DE020;
  if (!qword_2803DE020)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DE018);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DE020);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_26AFDE194()
{
  v2 = qword_2803DE028;
  if (!qword_2803DE028)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DE000);
    sub_26AFDE10C();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DE028);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_26AFDE22C(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DE030);
  (*(*(v1 - 8) + 8))(a1);
  v4 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DE038) + 36);

  sub_26AEF7A44(*(v4 + 88), *(v4 + 96) & 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DE040);
  sub_26AF072D8();
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DE048) + 36);
  v2 = sub_26B079100();
  (*(*(v2 - 8) + 8))(a1 + v5);
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DE050) + 48);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DE058);
  v9 = *(v8 - 8);
  if (!(*(v9 + 48))(a1 + v6, 1))
  {
    (*(v9 + 8))(a1 + v6, v8);
  }

  return a1;
}

unint64_t sub_26AFDE468()
{
  v2 = qword_2803DE060;
  if (!qword_2803DE060)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DE008);
    sub_26AFDE194();
    sub_26AE9C354();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DE060);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_26AFDE510(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DE030);
  (*(*(v1 - 8) + 8))(a1);
  v4 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DE038) + 36);

  sub_26AEF7A44(*(v4 + 88), *(v4 + 96) & 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DE040);
  sub_26AF072D8();
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DE048) + 36);
  v2 = sub_26B079100();
  (*(*(v2 - 8) + 8))(a1 + v5);
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DE050) + 48);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DE058);
  v9 = *(v8 - 8);
  if (!(*(v9 + 48))(a1 + v6, 1))
  {
    (*(v9 + 8))(a1 + v6, v8);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DE008);

  return a1;
}

unint64_t sub_26AFDE784()
{
  v2 = qword_2803DE080;
  if (!qword_2803DE080)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DE040);
    sub_26AFDE82C();
    sub_26AF2C5CC();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DE080);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_26AFDE82C()
{
  v2 = qword_2803DE088;
  if (!qword_2803DE088)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DE038);
    sub_26AFDE8D4();
    sub_26AFDE95C();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DE088);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_26AFDE8D4()
{
  v2 = qword_2803DE090;
  if (!qword_2803DE090)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DE030);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DE090);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_26AFDE95C()
{
  v2 = qword_2803DE098;
  if (!qword_2803DE098)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DE098);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_26AFDE9D4(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DE030);
  (*(*(v1 - 8) + 8))(a1);
  v3 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DE038) + 36);

  sub_26AEF7A44(*(v3 + 88), *(v3 + 96) & 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DE040);
  sub_26AF072D8();
  return a1;
}

unint64_t sub_26AFDEAF0()
{
  v2 = qword_2803DE0A0;
  if (!qword_2803DE0A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DE048);
    sub_26AFDE784();
    sub_26AE95850();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DE0A0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_26AFDEB98(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DE030);
  (*(*(v1 - 8) + 8))(a1);
  v4 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DE038) + 36);

  sub_26AEF7A44(*(v4 + 88), *(v4 + 96) & 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DE040);
  sub_26AF072D8();
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DE048) + 36);
  v2 = sub_26B079100();
  (*(*(v2 - 8) + 8))(a1 + v5);
  return a1;
}

unint64_t sub_26AFDED10()
{
  v2 = qword_2803DE0B0;
  if (!qword_2803DE0B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DE070);
    sub_26AFDEDB8();
    sub_26AE95850();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DE0B0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_26AFDEDB8()
{
  v2 = qword_2803DE0B8;
  if (!qword_2803DE0B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DE068);
    sub_26AFDEE60();
    sub_26AF2C5CC();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DE0B8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_26AFDEE60()
{
  v2 = qword_2803DE0C0;
  if (!qword_2803DE0C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DE0C8);
    sub_26AFDE8D4();
    sub_26AFDEF08();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DE0C0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_26AFDEF08()
{
  v2 = qword_2803DE0D0;
  if (!qword_2803DE0D0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DE0D0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_26AFDEF80()
{
  v2 = qword_2803DE0D8;
  if (!qword_2803DE0D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DE0A8);
    sub_26AFDF018();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DE0D8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_26AFDF018()
{
  v2 = qword_2803DE0E0;
  if (!qword_2803DE0E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DE0E8);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DE0E0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_26AFDF0A0(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DE058);
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1))
  {
    (*(v4 + 8))(a1, v3);
  }

  return a1;
}

void *sub_26AFDF154(const void *a1, void *a2)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DE058);
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a1, 1))
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DE078);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v7 + 32))(a2, a1, v6);
    (*(v7 + 56))(a2, 0, 1, v6);
  }

  return a2;
}

uint64_t sub_26AFDF288(uint64_t a1, uint64_t a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DE030);
  (*(*(v2 - 8) + 16))(a2, a1);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DE038);
  v14 = a1 + *(v3 + 36);
  v17 = a2 + *(v3 + 36);
  *v17 = *v14;
  *(v17 + 8) = *(v14 + 8);
  *(v17 + 16) = *(v14 + 16);
  v8 = *(v14 + 24);
  sub_26B078640();
  *(v17 + 24) = v8;
  *(v17 + 32) = *(v14 + 32);
  v9 = *(v14 + 40);
  sub_26B078640();
  *(v17 + 40) = v9;
  *(v17 + 48) = *(v14 + 48);
  v10 = *(v14 + 56);

  *(v17 + 56) = v10;
  v11 = *(v14 + 64);

  *(v17 + 64) = v11;
  v12 = *(v14 + 72);

  *(v17 + 72) = v12;
  v13 = *(v14 + 80);

  *(v17 + 80) = v13;
  v15 = *(v14 + 88);
  v16 = *(v14 + 96);
  sub_26AEF79D8(v15, v16 & 1);
  *(v17 + 88) = v15;
  *(v17 + 96) = v16 & 1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DE040);
  v5 = a1 + *(v4 + 36);
  v20 = a2 + *(v4 + 36);
  *v20 = *v5;
  v18 = *(v5 + 8);
  v19 = *(v5 + 16);
  sub_26AF07734();
  *(v20 + 8) = v18;
  *(v20 + 16) = v19 & 1;
  v21 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DE048) + 36);
  v6 = sub_26B079100();
  (*(*(v6 - 8) + 16))(a2 + v21, a1 + v21);
  return a2;
}

void *sub_26AFDF520(const void *a1, void *a2)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DE058);
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a1, 1))
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DE078);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v7 + 16))(a2, a1, v6);
    (*(v7 + 56))(a2, 0, 1, v6);
  }

  return a2;
}

unint64_t sub_26AFDF654()
{
  v2 = qword_2803DE0F0;
  if (!qword_2803DE0F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DE078);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DE070);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DE0A8);
    sub_26AFDED10();
    sub_26AFDEF80();
    swift_getOpaqueTypeConformance2();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DE0F0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_26AFDF76C(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DE030);
  (*(*(v1 - 8) + 8))(a1);
  v3 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DE0C8) + 36);

  sub_26AEF7A44(*(v3 + 88), *(v3 + 96) & 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DE068);
  sub_26AF072D8();
  return a1;
}

uint64_t sub_26AFDF890(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DE030);
  (*(*(v1 - 8) + 8))(a1);
  v4 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DE0C8) + 36);

  sub_26AEF7A44(*(v4 + 88), *(v4 + 96) & 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DE068);
  sub_26AF072D8();
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DE070) + 36);
  v2 = sub_26B079100();
  (*(*(v2 - 8) + 8))(a1 + v5);
  return a1;
}

uint64_t sub_26AFDFA08()
{
  updated = type metadata accessor for UpdateOptionsView();
  v1 = *(*(updated - 1) + 80);
  v7 = (v1 + 16) & ~v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDE20);
  (*(*(v2 - 8) + 8))();

  v3 = v0 + v7 + updated[6];
  sub_26AFD5C30(*v3, *(v3 + 8), *(v3 + 16), *(v3 + 24), *(v3 + 32), *(v3 + 40), *(v3 + 48), *(v3 + 56), *(v3 + 64), *(v3 + 72), *(v3 + 80), *(v3 + 88), *(v3 + 96), *(v3 + 104), *(v3 + 112), *(v3 + 120), *(v3 + 128), *(v3 + 136), *(v3 + 144), *(v3 + 152), *(v3 + 160), *(v3 + 168), *(v3 + 176), *(v3 + 184), *(v3 + 192), *(v3 + 200), *(v3 + 208), *(v3 + 216), *(v3 + 224), *(v3 + 232), *(v3 + 240), *(v3 + 248), *(v3 + 256), *(v3 + 264), *(v3 + 272));

  v4 = v0 + v7 + updated[8];
  sub_26AFD66B4(*v4, *(v4 + 8), *(v4 + 16), *(v4 + 24), *(v4 + 32), *(v4 + 40), *(v4 + 48), *(v4 + 56), *(v4 + 64), *(v4 + 72), *(v4 + 80), *(v4 + 88));
  v5 = v0 + v7 + updated[9];
  sub_26AFD66B4(*v5, *(v5 + 8), *(v5 + 16), *(v5 + 24), *(v5 + 32), *(v5 + 40), *(v5 + 48), *(v5 + 56), *(v5 + 64), *(v5 + 72), *(v5 + 80), *(v5 + 88));
  return swift_deallocObject();
}

uint64_t sub_26AFDFD48(uint64_t a1, uint64_t a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDE20);
  (*(*(v2 - 8) + 32))(a2, a1);
  updated = type metadata accessor for UpdateOptionsView();
  v3 = a1 + updated[5];
  v4 = a2 + updated[5];
  *v4 = *v3;
  *(v4 + 8) = *(v3 + 8);
  memcpy((a2 + updated[6]), (a1 + updated[6]), 0x111uLL);
  v5 = (a1 + updated[7]);
  v6 = *v5;
  v7 = v5[1];
  v8 = (a2 + updated[7]);
  *v8 = v6;
  v8[1] = v7;
  memcpy((a2 + updated[8]), (a1 + updated[8]), 0x59uLL);
  memcpy((a2 + updated[9]), (a1 + updated[9]), 0x59uLL);
  return a2;
}

uint64_t sub_26AFDFE7C()
{
  v1 = *(type metadata accessor for UpdateOptionsView() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_26AFD9498(v2);
}

unint64_t sub_26AFDFEE8()
{
  v2 = qword_2803DE0F8;
  if (!qword_2803DE0F8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DE0F8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_26AFDFF64(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DE030);
  (*(*(v1 - 8) + 8))(a1);
  v3 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DE038) + 36);

  sub_26AEF7A44(*(v3 + 88), *(v3 + 96) & 1);
  return a1;
}

uint64_t sub_26AFE004C(uint64_t a1, uint64_t a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DE030);
  (*(*(v2 - 8) + 16))(a2, a1);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DE038);
  v13 = a1 + *(v3 + 36);
  v16 = a2 + *(v3 + 36);
  *v16 = *v13;
  *(v16 + 8) = *(v13 + 8);
  *(v16 + 16) = *(v13 + 16);
  v7 = *(v13 + 24);
  sub_26B078640();
  *(v16 + 24) = v7;
  *(v16 + 32) = *(v13 + 32);
  v8 = *(v13 + 40);
  sub_26B078640();
  *(v16 + 40) = v8;
  *(v16 + 48) = *(v13 + 48);
  v9 = *(v13 + 56);

  *(v16 + 56) = v9;
  v10 = *(v13 + 64);

  *(v16 + 64) = v10;
  v11 = *(v13 + 72);

  *(v16 + 72) = v11;
  v12 = *(v13 + 80);

  *(v16 + 80) = v12;
  v14 = *(v13 + 88);
  v15 = *(v13 + 96);
  sub_26AEF79D8(v14, v15 & 1);
  *(v16 + 88) = v14;
  *(v16 + 96) = v15 & 1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DE040);
  v5 = a1 + *(v4 + 36);
  v20 = a2 + *(v4 + 36);
  *v20 = *v5;
  v18 = *(v5 + 8);
  v19 = *(v5 + 16);
  sub_26AF07734();
  result = a2;
  *(v20 + 8) = v18;
  *(v20 + 16) = v19 & 1;
  return result;
}

uint64_t sub_26AFE0274()
{
  updated = type metadata accessor for UpdateOptionsView();
  v1 = *(*(updated - 1) + 80);
  v7 = (v1 + 16) & ~v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDE20);
  (*(*(v2 - 8) + 8))();

  v3 = v0 + v7 + updated[6];
  sub_26AFD5C30(*v3, *(v3 + 8), *(v3 + 16), *(v3 + 24), *(v3 + 32), *(v3 + 40), *(v3 + 48), *(v3 + 56), *(v3 + 64), *(v3 + 72), *(v3 + 80), *(v3 + 88), *(v3 + 96), *(v3 + 104), *(v3 + 112), *(v3 + 120), *(v3 + 128), *(v3 + 136), *(v3 + 144), *(v3 + 152), *(v3 + 160), *(v3 + 168), *(v3 + 176), *(v3 + 184), *(v3 + 192), *(v3 + 200), *(v3 + 208), *(v3 + 216), *(v3 + 224), *(v3 + 232), *(v3 + 240), *(v3 + 248), *(v3 + 256), *(v3 + 264), *(v3 + 272));

  v4 = v0 + v7 + updated[8];
  sub_26AFD66B4(*v4, *(v4 + 8), *(v4 + 16), *(v4 + 24), *(v4 + 32), *(v4 + 40), *(v4 + 48), *(v4 + 56), *(v4 + 64), *(v4 + 72), *(v4 + 80), *(v4 + 88));
  v5 = v0 + v7 + updated[9];
  sub_26AFD66B4(*v5, *(v5 + 8), *(v5 + 16), *(v5 + 24), *(v5 + 32), *(v5 + 40), *(v5 + 48), *(v5 + 56), *(v5 + 64), *(v5 + 72), *(v5 + 80), *(v5 + 88));
  return swift_deallocObject();
}

uint64_t sub_26AFE05B4()
{
  v1 = *(type metadata accessor for UpdateOptionsView() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_26AFDA6F0(v2);
}

uint64_t sub_26AFE0620(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DE030);
  (*(*(v1 - 8) + 8))(a1);
  v3 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DE0C8) + 36);

  sub_26AEF7A44(*(v3 + 88), *(v3 + 96) & 1);
  return a1;
}

uint64_t sub_26AFE0708(uint64_t a1, uint64_t a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DE030);
  (*(*(v2 - 8) + 16))(a2, a1);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DE0C8);
  v13 = a1 + *(v3 + 36);
  v16 = a2 + *(v3 + 36);
  *v16 = *v13;
  *(v16 + 8) = *(v13 + 8);
  *(v16 + 16) = *(v13 + 16);
  v7 = *(v13 + 24);
  sub_26B078640();
  *(v16 + 24) = v7;
  *(v16 + 32) = *(v13 + 32);
  v8 = *(v13 + 40);
  sub_26B078640();
  *(v16 + 40) = v8;
  *(v16 + 48) = *(v13 + 48);
  v9 = *(v13 + 56);

  *(v16 + 56) = v9;
  v10 = *(v13 + 64);

  *(v16 + 64) = v10;
  v11 = *(v13 + 72);

  *(v16 + 72) = v11;
  v12 = *(v13 + 80);

  *(v16 + 80) = v12;
  v14 = *(v13 + 88);
  v15 = *(v13 + 96);
  sub_26AEF79D8(v14, v15 & 1);
  *(v16 + 88) = v14;
  *(v16 + 96) = v15 & 1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DE068);
  v5 = a1 + *(v4 + 36);
  v20 = a2 + *(v4 + 36);
  *v20 = *v5;
  v18 = *(v5 + 8);
  v19 = *(v5 + 16);
  sub_26AF07734();
  result = a2;
  *(v20 + 8) = v18;
  *(v20 + 16) = v19 & 1;
  return result;
}

uint64_t sub_26AFE0930(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DE0E8);
  if (!(*(*(v1 - 8) + 48))(a1, 1))
  {
    v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DE108) - 8) + 8);
    (v3)(a1);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DE110);
    sub_26AF072D8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DE118);
    v3();
    sub_26AF072D8();
  }

  return a1;
}

char *sub_26AFE0A88(char *a1, char *a2)
{
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DE0E8);
  v16 = *(v15 - 8);
  if ((*(v16 + 48))(a1, 1))
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DE0A8);
    memcpy(a2, a1, *(*(v7 - 8) + 64));
  }

  else
  {
    v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DE108) - 8) + 32);
    (v9)(a2, a1);
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DE110);
    v2 = &a2[*(v11 + 36)];
    v3 = &a1[*(v11 + 36)];
    *v2 = *v3;
    v2[16] = v3[16];
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DE118);
    v10 = &a2[*(v4 + 48)];
    v12 = &a1[*(v4 + 48)];
    v9();
    v5 = &v10[*(v11 + 36)];
    v6 = &v12[*(v11 + 36)];
    *v5 = *v6;
    v5[16] = v6[16];
    (*(v16 + 56))(a2, 0, 1, v15);
  }

  return a2;
}

char *sub_26AFE0C98(char *a1, char *a2)
{
  v19 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DE0E8) - 8);
  if ((*(v19 + 48))(a1, 1))
  {
    v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DE0A8);
    memcpy(a2, a1, *(*(v5 - 8) + 64));
  }

  else
  {
    v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DE108) - 8) + 16);
    (v10)(a2, a1);
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DE110);
    v9 = &a2[*(v13 + 36)];
    v2 = &a1[*(v13 + 36)];
    *v9 = *v2;
    v7 = *(v2 + 1);
    v8 = v2[16];
    sub_26AF07734();
    *(v9 + 1) = v7;
    v9[16] = v8 & 1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DE118);
    v11 = &a2[*(v3 + 48)];
    v12 = &a1[*(v3 + 48)];
    v10();
    v16 = &v11[*(v13 + 36)];
    v4 = &v12[*(v13 + 36)];
    *v16 = *v4;
    v14 = *(v4 + 1);
    v15 = v4[16];
    sub_26AF07734();
    *(v16 + 1) = v14;
    v16[16] = v15 & 1;
    (*(v19 + 56))(a2, 0);
  }

  return a2;
}

uint64_t sub_26AFE0F14()
{
  updated = type metadata accessor for UpdateOptionsView();
  v1 = *(*(updated - 1) + 80);
  v7 = (v1 + 16) & ~v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDE20);
  (*(*(v2 - 8) + 8))();

  v3 = v0 + v7 + updated[6];
  sub_26AFD5C30(*v3, *(v3 + 8), *(v3 + 16), *(v3 + 24), *(v3 + 32), *(v3 + 40), *(v3 + 48), *(v3 + 56), *(v3 + 64), *(v3 + 72), *(v3 + 80), *(v3 + 88), *(v3 + 96), *(v3 + 104), *(v3 + 112), *(v3 + 120), *(v3 + 128), *(v3 + 136), *(v3 + 144), *(v3 + 152), *(v3 + 160), *(v3 + 168), *(v3 + 176), *(v3 + 184), *(v3 + 192), *(v3 + 200), *(v3 + 208), *(v3 + 216), *(v3 + 224), *(v3 + 232), *(v3 + 240), *(v3 + 248), *(v3 + 256), *(v3 + 264), *(v3 + 272));

  v4 = v0 + v7 + updated[8];
  sub_26AFD66B4(*v4, *(v4 + 8), *(v4 + 16), *(v4 + 24), *(v4 + 32), *(v4 + 40), *(v4 + 48), *(v4 + 56), *(v4 + 64), *(v4 + 72), *(v4 + 80), *(v4 + 88));
  v5 = v0 + v7 + updated[9];
  sub_26AFD66B4(*v5, *(v5 + 8), *(v5 + 16), *(v5 + 24), *(v5 + 32), *(v5 + 40), *(v5 + 48), *(v5 + 56), *(v5 + 64), *(v5 + 72), *(v5 + 80), *(v5 + 88));
  return swift_deallocObject();
}

uint64_t sub_26AFE1254()
{
  v1 = *(type metadata accessor for UpdateOptionsView() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_26AFDB8F0(v2);
}

unint64_t sub_26AFE12C0()
{
  v2 = qword_2803DE120;
  if (!qword_2803DE120)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DE100);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DE120);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_26AFE1348()
{
  v2 = qword_2803DE128;
  if (!qword_2803DE128)
  {
    sub_26B079040();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DE128);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_26AFE13C8()
{
  v2 = qword_2803DE130;
  if (!qword_2803DE130)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DE110);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DE100);
    sub_26B079040();
    sub_26AFE12C0();
    sub_26AFE1348();
    swift_getOpaqueTypeConformance2();
    sub_26AF2C5CC();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DE130);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_26AFE14E8(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DE108);
  (*(*(v1 - 8) + 8))(a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DE110);
  sub_26AF072D8();
  return a1;
}

uint64_t sub_26AFE1584()
{
  updated = type metadata accessor for UpdateOptionsView();
  v1 = *(*(updated - 1) + 80);
  v7 = (v1 + 16) & ~v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDE20);
  (*(*(v2 - 8) + 8))();

  v3 = v0 + v7 + updated[6];
  sub_26AFD5C30(*v3, *(v3 + 8), *(v3 + 16), *(v3 + 24), *(v3 + 32), *(v3 + 40), *(v3 + 48), *(v3 + 56), *(v3 + 64), *(v3 + 72), *(v3 + 80), *(v3 + 88), *(v3 + 96), *(v3 + 104), *(v3 + 112), *(v3 + 120), *(v3 + 128), *(v3 + 136), *(v3 + 144), *(v3 + 152), *(v3 + 160), *(v3 + 168), *(v3 + 176), *(v3 + 184), *(v3 + 192), *(v3 + 200), *(v3 + 208), *(v3 + 216), *(v3 + 224), *(v3 + 232), *(v3 + 240), *(v3 + 248), *(v3 + 256), *(v3 + 264), *(v3 + 272));

  v4 = v0 + v7 + updated[8];
  sub_26AFD66B4(*v4, *(v4 + 8), *(v4 + 16), *(v4 + 24), *(v4 + 32), *(v4 + 40), *(v4 + 48), *(v4 + 56), *(v4 + 64), *(v4 + 72), *(v4 + 80), *(v4 + 88));
  v5 = v0 + v7 + updated[9];
  sub_26AFD66B4(*v5, *(v5 + 8), *(v5 + 16), *(v5 + 24), *(v5 + 32), *(v5 + 40), *(v5 + 48), *(v5 + 56), *(v5 + 64), *(v5 + 72), *(v5 + 80), *(v5 + 88));
  return swift_deallocObject();
}

uint64_t sub_26AFE18C4()
{
  v1 = *(type metadata accessor for UpdateOptionsView() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_26AFDC068(v2);
}

uint64_t sub_26AFE1930(uint64_t a1, uint64_t a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DE108);
  (*(*(v2 - 8) + 16))(a2, a1);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DE110);
  v4 = a1 + *(v3 + 36);
  v9 = a2 + *(v3 + 36);
  *v9 = *v4;
  v7 = *(v4 + 8);
  v8 = *(v4 + 16);
  sub_26AF07734();
  result = a2;
  *(v9 + 8) = v7;
  *(v9 + 16) = v8 & 1;
  return result;
}

uint64_t sub_26AFE1A10(uint64_t a1, uint64_t a2)
{
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DE108) - 8) + 16);
  (v10)(a2, a1);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DE110);
  v2 = a1 + *(v13 + 36);
  v8 = a2 + *(v13 + 36);
  *v8 = *v2;
  v6 = *(v2 + 8);
  v7 = *(v2 + 16);
  sub_26AF07734();
  *(v8 + 8) = v6;
  *(v8 + 16) = v7 & 1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DE118);
  v12 = a2 + *(v3 + 48);
  v11 = a1 + *(v3 + 48);
  v10();
  v4 = *(v13 + 36);
  v16 = v12 + v4;
  *(v12 + v4) = *(v11 + v4);
  v14 = *(v11 + v4 + 8);
  v15 = *(v11 + v4 + 16);
  sub_26AF07734();
  result = a2;
  *(v16 + 8) = v14;
  *(v16 + 16) = v15 & 1;
  return result;
}

uint64_t sub_26AFE1BB4(uint64_t a1)
{
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DE108) - 8) + 8);
  (v2)(a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DE110);
  sub_26AF072D8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DE118);
  v2();
  sub_26AF072D8();
  return a1;
}

unint64_t sub_26AFE1CC0()
{
  v2 = qword_2803DE138;
  if (!qword_2803DE138)
  {
    type metadata accessor for SUUIStatefulDescriptorState();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DE138);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_26AFE1D40()
{
  v2 = qword_2803DE148;
  if (!qword_2803DE148)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DE140);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DE148);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_26AFE1DF4()
{
  v2 = qword_2803DE150;
  if (!qword_2803DE150)
  {
    type metadata accessor for SUUIStatefulDescriptorState();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DE150);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_26AFE1E74(uint64_t a1, uint64_t a2)
{
  *a2 = *a1;
  *(a2 + 8) = *(a1 + 8);
  *(a2 + 16) = *(a1 + 16);
  v3 = *(a1 + 24);
  sub_26B078640();
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  v4 = *(a1 + 40);
  sub_26B078640();
  *(a2 + 40) = v4;
  *(a2 + 48) = *(a1 + 48);
  v5 = *(a1 + 56);

  *(a2 + 56) = v5;
  v6 = *(a1 + 64);

  *(a2 + 64) = v6;
  v7 = *(a1 + 72);

  *(a2 + 72) = v7;
  v8 = *(a1 + 80);

  *(a2 + 80) = v8;
  v9 = *(a1 + 88);
  v10 = *(a1 + 96);
  v11 = *(a1 + 104);
  sub_26AE95D28(v9, v10, v11 & 1);
  *(a2 + 88) = v9;
  *(a2 + 96) = v10;
  *(a2 + 104) = v11 & 1;
  v13 = *(a1 + 112);
  sub_26B078640();
  result = a2;
  *(a2 + 112) = v13;
  *(a2 + 120) = *(a1 + 120);
  return result;
}

unint64_t sub_26AFE1FDC()
{
  v2 = qword_2803DE168;
  if (!qword_2803DE168)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DE160);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DE168);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_26AFE2064(uint64_t a1)
{

  sub_26AE95AFC(*(a1 + 88), *(a1 + 96), *(a1 + 104) & 1);

  return a1;
}

unint64_t sub_26AFE20F0()
{
  v2 = qword_2803DE170;
  if (!qword_2803DE170)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DE158);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DE170);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_26AFE2178(uint64_t a1)
{
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DE178) + 44);
  sub_26AE95AFC(*(a1 + v10 + 40), *(a1 + v10 + 48), *(a1 + v10 + 56) & 1);

  v11 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DE180) + 48);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DE188);
  if (!(*(*(v1 - 8) + 48))(a1 + v10 + v11, 1))
  {
    v5 = a1 + v10 + v11 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DE190) + 44);
    v6 = v5 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DE198) + 48);
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DE1A0);
    (*(*(v2 - 8) + 8))(v6);
    v7 = v6 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DE1A8) + 36);

    v8 = v7 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DC700) + 28);
    v3 = sub_26B078A00();
    (*(*(v3 - 8) + 8))(v8);
  }

  return a1;
}

_OWORD *sub_26AFE238C(_OWORD *a1, _OWORD *a2)
{
  *a2 = *a1;
  v24 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DE178) + 44);
  v29 = a2 + v24;
  *v29 = *(a1 + v24);
  v29[16] = *(a1 + v24 + 16);
  *(v29 + 3) = *(a1 + v24 + 24);
  v29[32] = *(a1 + v24 + 32);
  v25 = *(a1 + v24 + 40);
  v26 = *(a1 + v24 + 48);
  v27 = *(a1 + v24 + 56);
  sub_26AE95D28(v25, v26, v27 & 1);
  *(v29 + 5) = v25;
  *(v29 + 6) = v26;
  v29[56] = v27 & 1;
  v28 = *(a1 + v24 + 64);
  sub_26B078640();
  *(v29 + 8) = v28;
  *(v29 + 9) = *(a1 + v24 + 72);
  v29[80] = *(a1 + v24 + 80);
  v30 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DE180) + 48);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DE188);
  v32 = *(v31 - 8);
  if ((*(v32 + 48))(a1 + v24 + v30, 1))
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DE1B8);
    memcpy(a2 + v24 + v30, a1 + v24 + v30, *(*(v9 - 8) + 64));
  }

  else
  {
    v11 = a1 + v24 + v30;
    v21 = a2 + v24 + v30;
    *v21 = *v11;
    v21[16] = v11[16];
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DE190);
    v12 = &v21[*(v2 + 44)];
    v13 = &v11[*(v2 + 44)];
    *v12 = *v13;
    v12[8] = v13[8];
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DE198);
    v19 = &v12[*(v3 + 48)];
    v20 = &v13[*(v3 + 48)];
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DE1A0);
    (*(*(v4 - 8) + 16))(v19, v20);
    v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DE1A8);
    v15 = &v19[*(v5 + 36)];
    v16 = &v20[*(v5 + 36)];
    v14 = *v16;

    *v15 = v14;
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DC700);
    v18 = &v15[*(v6 + 28)];
    v17 = v16 + *(v6 + 28);
    v7 = sub_26B078A00();
    (*(*(v7 - 8) + 16))(v18, v17);
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DE1B0);
    memcpy(&v19[*(v8 + 36)], &v20[*(v8 + 36)], 0x29uLL);
    (*(v32 + 56))(v21, 0, 1, v31);
  }

  return a2;
}

uint64_t sub_26AFE2840(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDE20);
  if (a2 == *(*(v9 - 8) + 84))
  {
    return (*(*(v9 - 8) + 48))(a1, a2, v9);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v4 = -1;
    if (*(a1 + *(a3 + 28)) < 0x100000000uLL)
    {
      v4 = *(a1 + *(a3 + 28));
    }

    return (v4 + 1);
  }

  else
  {
    __break(1u);
  }

  return v5;
}

uint64_t sub_26AFE298C(uint64_t a1, unsigned int a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDE20);
  if (a3 == *(*(result - 8) + 84))
  {
    return (*(*(result - 8) + 56))(a1, a2, a2, result);
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 28)) = a2 - 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_26AFE2A88()
{
  v6 = sub_26AFA65BC();
  if (v0 <= 0x3F)
  {
    v6 = sub_26AE96B4C();
    if (v1 <= 0x3F)
    {
      v6 = sub_26AFE2C00();
      if (v2 <= 0x3F)
      {
        v6 = sub_26AE96D98();
        if (v3 <= 0x3F)
        {
          v6 = sub_26AFE2C94();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
            return 0;
          }
        }
      }
    }
  }

  return v6;
}

uint64_t sub_26AFE2C00()
{
  v4 = qword_2803DE1D0;
  if (!qword_2803DE1D0)
  {
    v3 = sub_26B078A20();
    v4 = v3;
    if (!v0)
    {
      v1 = v3;
      atomic_store(v3, &qword_2803DE1D0);
      return v1;
    }
  }

  return v4;
}

uint64_t sub_26AFE2C94()
{
  v4 = qword_2803DE1D8;
  if (!qword_2803DE1D8)
  {
    v3 = sub_26B078A20();
    v4 = v3;
    if (!v0)
    {
      v1 = v3;
      atomic_store(v3, &qword_2803DE1D8);
      return v1;
    }
  }

  return v4;
}

uint64_t sub_26AFE2D64(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 121))
    {
      v4 = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v3 = -1;
      if (!HIDWORD(*(a1 + 24)))
      {
        v3 = *(a1 + 24);
      }

      v4 = v3;
    }
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_26AFE2E7C(uint64_t result, int a2, int a3)
{
  v3 = (result + 121);
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 80) = 0;
    *(result + 72) = 0;
    *(result + 64) = 0;
    *(result + 104) = 0;
    *(result + 96) = 0;
    *(result + 112) = 0;
    *(result + 120) = 0;
    *(result + 56) = 0;
    *(result + 48) = 0;
    *(result + 40) = 0;
    *(result + 32) = 0;
    *(result + 24) = 0;
    *(result + 16) = 0;
    *(result + 8) = 0;
    *result = a2 + 0x80000000;
    if (a3 < 0)
    {
      *v3 = 1;
    }
  }

  else
  {
    if (a3 < 0)
    {
      *v3 = 0;
    }

    if (a2)
    {
      *(result + 24) = (a2 - 1);
    }
  }

  return result;
}

uint64_t sub_26AFE307C()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DE008);
  sub_26AFDE468();
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_26AFE31A0()
{
  v2 = qword_2803DE1E8;
  if (!qword_2803DE1E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DE1E0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DE1E8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_26AFE3228()
{
  v2 = qword_2803DE1F8;
  if (!qword_2803DE1F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DE1F0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DE1F8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_26AFE32B0(uint64_t a1)
{
  sub_26AE95AFC(*(a1 + 40), *(a1 + 48), *(a1 + 56) & 1);

  return a1;
}

unint64_t sub_26AFE32F8()
{
  v2 = qword_2803DE200;
  if (!qword_2803DE200)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DE188);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DE200);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_26AFE3380(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DE188);
  if (!(*(*(v1 - 8) + 48))(a1, 1))
  {
    v5 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DE190) + 44);
    v6 = v5 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DE198) + 48);
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DE1A0);
    (*(*(v2 - 8) + 8))(v6);
    v7 = v6 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DE1A8) + 36);

    v8 = v7 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DC700) + 28);
    v3 = sub_26B078A00();
    (*(*(v3 - 8) + 8))(v8);
  }

  return a1;
}

_BYTE *sub_26AFE350C(_BYTE *a1, _BYTE *a2)
{
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DE188);
  v22 = *(v21 - 8);
  if ((*(v22 + 48))(a1, 1))
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DE1B8);
    memcpy(a2, a1, *(*(v9 - 8) + 64));
  }

  else
  {
    *a2 = *a1;
    a2[16] = a1[16];
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DE190);
    v11 = &a2[*(v2 + 44)];
    v12 = &a1[*(v2 + 44)];
    *v11 = *v12;
    v11[8] = v12[8];
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DE198);
    v17 = &v11[*(v3 + 48)];
    v18 = &v12[*(v3 + 48)];
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DE1A0);
    (*(*(v4 - 8) + 32))(v17, v18);
    v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DE1A8);
    v13 = &v17[*(v5 + 36)];
    v14 = &v18[*(v5 + 36)];
    *v13 = *v14;
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DC700);
    v16 = v13 + *(v6 + 28);
    v15 = v14 + *(v6 + 28);
    v7 = sub_26B078A00();
    (*(*(v7 - 8) + 32))(v16, v15);
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DE1B0);
    memcpy(&v17[*(v8 + 36)], &v18[*(v8 + 36)], 0x29uLL);
    (*(v22 + 56))(a2, 0, 1, v21);
  }

  return a2;
}

uint64_t sub_26AFE37CC(uint64_t a1, uint64_t a2)
{
  *a2 = *a1;
  *(a2 + 16) = *(a1 + 16);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 32) = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);
  sub_26AE95D28(v3, v4, v5 & 1);
  *(a2 + 40) = v3;
  *(a2 + 48) = v4;
  *(a2 + 56) = v5 & 1;
  v7 = *(a1 + 64);
  sub_26B078640();
  result = a2;
  *(a2 + 64) = v7;
  *(a2 + 72) = *(a1 + 72);
  *(a2 + 80) = *(a1 + 80);
  return result;
}

_BYTE *sub_26AFE3888(_BYTE *a1, _BYTE *a2)
{
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DE188);
  v23 = *(v22 - 8);
  if ((*(v23 + 48))(a1, 1))
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DE1B8);
    memcpy(a2, a1, *(*(v9 - 8) + 64));
  }

  else
  {
    *a2 = *a1;
    a2[16] = a1[16];
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DE190);
    v11 = &a2[*(v2 + 44)];
    v12 = &a1[*(v2 + 44)];
    *v11 = *v12;
    v11[8] = v12[8];
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DE198);
    v18 = &v11[*(v3 + 48)];
    v19 = &v12[*(v3 + 48)];
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DE1A0);
    (*(*(v4 - 8) + 16))(v18, v19);
    v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DE1A8);
    v14 = &v18[*(v5 + 36)];
    v15 = &v19[*(v5 + 36)];
    v13 = *v15;

    *v14 = v13;
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DC700);
    v17 = v14 + *(v6 + 28);
    v16 = v15 + *(v6 + 28);
    v7 = sub_26B078A00();
    (*(*(v7 - 8) + 16))(v17, v16);
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DE1B0);
    memcpy(&v18[*(v8 + 36)], &v19[*(v8 + 36)], 0x29uLL);
    (*(v23 + 56))(a2, 0, 1, v22);
  }

  return a2;
}

unint64_t sub_26AFE3B58()
{
  v2 = qword_2803DE208;
  if (!qword_2803DE208)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DE1B8);
    sub_26AFE32F8();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DE208);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_26AFE3BF8()
{
  v2 = qword_2803DE218;
  if (!qword_2803DE218)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DE210);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DE218);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_26AFE3C80(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DE190) + 44);
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DE198) + 48);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DE1A0);
  (*(*(v1 - 8) + 8))();
  v6 = a1 + v4 + v5 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DE1A8) + 36);

  v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DC700) + 28);
  v2 = sub_26B078A00();
  (*(*(v2 - 8) + 8))(v6 + v7);
  return a1;
}

uint64_t sub_26AFE3DBC(uint64_t a1, uint64_t a2)
{
  *a2 = *a1;
  *(a2 + 16) = *(a1 + 16);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DE190);
  v10 = a1 + *(v2 + 44);
  v8 = a2 + *(v2 + 44);
  *v8 = *v10;
  *(v8 + 8) = *(v10 + 8);
  v9 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DE198) + 48);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DE1A0);
  (*(*(v3 - 8) + 16))();
  v11 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DE1A8) + 36);
  v14 = (v10 + v9 + v11);
  v12 = *v14;

  *(v8 + v9 + v11) = v12;
  v13 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DC700) + 28);
  v4 = sub_26B078A00();
  (*(*(v4 - 8) + 16))(v8 + v9 + v11 + v13, &v14[v13]);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DE1B0);
  memcpy((v8 + v9 + *(v5 + 36)), (v10 + v9 + *(v5 + 36)), 0x29uLL);
  return a2;
}

unint64_t sub_26AFE3FB8()
{
  v2 = qword_2803DE680;
  if (!qword_2803DE680)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DE1A0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DE680);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_26AFE4040()
{
  v2 = qword_2803DE220;
  if (!qword_2803DE220)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DE1A8);
    sub_26AFE3FB8();
    sub_26AEF8994();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DE220);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_26AFE40E8(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DE1A0);
  (*(*(v1 - 8) + 8))(a1);
  v4 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DE1A8) + 36);

  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DC700) + 28);
  v2 = sub_26B078A00();
  (*(*(v2 - 8) + 8))(v4 + v5);
  return a1;
}

unint64_t sub_26AFE41DC()
{
  v2 = qword_2803DE228;
  if (!qword_2803DE228)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DE1B0);
    sub_26AFE4040();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DE228);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_26AFE4280(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DE1A0);
  (*(*(v1 - 8) + 8))(a1);
  v4 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DE1A8) + 36);

  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DC700) + 28);
  v2 = sub_26B078A00();
  (*(*(v2 - 8) + 8))(v4 + v5);
  return a1;
}

uint64_t sub_26AFE4374(uint64_t a1, uint64_t a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DE1A0);
  (*(*(v2 - 8) + 16))(a2, a1);
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DE1A8) + 36);
  v7 = *(a1 + v6);

  *(a2 + v6) = v7;
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DC700) + 28);
  v3 = sub_26B078A00();
  (*(*(v3 - 8) + 16))(a2 + v6 + v8, a1 + v6 + v8);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DE1B0);
  memcpy((a2 + *(v4 + 36)), (a1 + *(v4 + 36)), 0x29uLL);
  return a2;
}

uint64_t sub_26AFE44E4(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  sub_26AE95D28(*a1, v4, v5 & 1);
  *a2 = v3;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5 & 1;
  v8 = *(a1 + 24);
  sub_26B078640();
  result = a2;
  *(a2 + 24) = v8;
  return result;
}

uint64_t sub_26AFE456C(uint64_t a1)
{

  MEMORY[0x277D82BD8](*(a1 + 176));
  MEMORY[0x277D82BD8](*(a1 + 184));

  return a1;
}

uint64_t sub_26AFE4750()
{
  result = *(v0 + 16);
  sub_26AFDAF08();
  return result;
}

uint64_t sub_26AFE489C()
{
  result = *(v0 + 16);
  sub_26AFD9C04();
  return result;
}

uint64_t sub_26AFE49A8(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DE030);
  (*(*(v1 - 8) + 8))(a1);
  v4 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DE038) + 36);

  sub_26AEF7A44(*(v4 + 88), *(v4 + 96) & 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DE040);
  sub_26AF072D8();
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DE048) + 36);
  v2 = sub_26B079100();
  (*(*(v2 - 8) + 8))(a1 + v5);
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DE050) + 48);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DE058);
  v9 = *(v8 - 8);
  if (!(*(v9 + 48))(a1 + v6, 1))
  {
    (*(v9 + 8))(a1 + v6, v8);
  }

  return a1;
}

uint64_t sub_26AFE4BE4(uint64_t a1, uint64_t a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DE030);
  (*(*(v2 - 8) + 16))(a2, a1);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DE038);
  v15 = a1 + *(v3 + 36);
  v18 = a2 + *(v3 + 36);
  *v18 = *v15;
  *(v18 + 8) = *(v15 + 8);
  *(v18 + 16) = *(v15 + 16);
  v9 = *(v15 + 24);
  sub_26B078640();
  *(v18 + 24) = v9;
  *(v18 + 32) = *(v15 + 32);
  v10 = *(v15 + 40);
  sub_26B078640();
  *(v18 + 40) = v10;
  *(v18 + 48) = *(v15 + 48);
  v11 = *(v15 + 56);

  *(v18 + 56) = v11;
  v12 = *(v15 + 64);

  *(v18 + 64) = v12;
  v13 = *(v15 + 72);

  *(v18 + 72) = v13;
  v14 = *(v15 + 80);

  *(v18 + 80) = v14;
  v16 = *(v15 + 88);
  v17 = *(v15 + 96);
  sub_26AEF79D8(v16, v17 & 1);
  *(v18 + 88) = v16;
  *(v18 + 96) = v17 & 1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DE040);
  v5 = a1 + *(v4 + 36);
  v21 = a2 + *(v4 + 36);
  *v21 = *v5;
  v19 = *(v5 + 8);
  v20 = *(v5 + 16);
  sub_26AF07734();
  *(v21 + 8) = v19;
  *(v21 + 16) = v20 & 1;
  v22 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DE048) + 36);
  v6 = sub_26B079100();
  (*(*(v6 - 8) + 16))(a2 + v22, a1 + v22);
  v24 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DE050) + 48);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DE058);
  v27 = *(v26 - 8);
  if ((*(v27 + 48))(a1 + v24, 1))
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DE078);
    memcpy((a2 + v24), (a1 + v24), *(*(v7 - 8) + 64));
  }

  else
  {
    (*(v27 + 16))();
    (*(v27 + 56))(a2 + v24, 0, 1, v26);
  }

  return a2;
}

SoftwareUpdateUIKit::DeepLinkAction_optional sub_26AFE4FD8(uint64_t a1, void *a2)
{
  sub_26B078640();
  v2._countAndFlagsBits = a1;
  v2._object = a2;
  return DeepLinkAction.init(rawValue:)(v2);
}

SoftwareUpdateUIKit::DeepLinkAction_optional __swiftcall DeepLinkAction.init(rawValue:)(Swift::String rawValue)
{
  v4 = v1;
  sub_26B07A760();
  *v2 = "SUSUIUpdateNowAction";
  *(v2 + 8) = 20;
  *(v2 + 16) = 2;
  *(v2 + 24) = "SUSUIUpdateTonightAction";
  *(v2 + 32) = 24;
  *(v2 + 40) = 2;
  sub_26AEA3B2C();
  v5 = sub_26B07A6B0();

  if (v5)
  {
    if (v5 != 1)
    {

      *v4 = 2;
      return result;
    }

    v6 = 1;
  }

  else
  {
    v6 = 0;
  }

  *v4 = v6;
}

uint64_t sub_26AFE5324@<X0>(uint64_t *a1@<X8>)
{
  result = DeepLinkAction.rawValue.getter();
  *a1 = result;
  a1[1] = v2;
  return result;
}

unint64_t sub_26AFE536C()
{
  v2 = qword_2803DE230;
  if (!qword_2803DE230)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DE230);
    return WitnessTable;
  }

  return v2;
}

uint64_t getEnumTagSinglePayload for DeepLinkAction(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 <= 0xFE)
    {
      goto LABEL_15;
    }

    v7 = ((a2 + 1) >> 8) + 1;
    v8 = 1;
    if (v7 >= 0x100)
    {
      if (v7 >= 0x10000)
      {
        v2 = 4;
      }

      else
      {
        v2 = 2;
      }

      v8 = v2;
    }

    if (v8 == 1)
    {
      v6 = a1[1];
    }

    else
    {
      v6 = v8 == 2 ? *(a1 + 1) : *(a1 + 1);
    }

    if (v6)
    {
      v5 = (*a1 | ((v6 - 1) << 8)) + 254;
    }

    else
    {
LABEL_15:
      v3 = *a1 - 2;
      if (v3 < 0)
      {
        v3 = -1;
      }

      v5 = v3;
    }
  }

  else
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for DeepLinkAction(_BYTE *result, unsigned int a2, unsigned int a3)
{
  v7 = 0;
  if (a3 > 0xFE)
  {
    v5 = ((a3 + 1) >> 8) + 1;
    v6 = 1;
    if (v5 >= 0x100)
    {
      if (v5 >= 0x10000)
      {
        v3 = 4;
      }

      else
      {
        v3 = 2;
      }

      v6 = v3;
    }

    v7 = v6;
  }

  if (a2 > 0xFE)
  {
    v4 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    if (v7)
    {
      if (v7 == 1)
      {
        result[1] = v4;
      }

      else if (v7 == 2)
      {
        *(result + 1) = v4;
      }

      else
      {
        *(result + 1) = v4;
      }
    }
  }

  else
  {
    if (v7)
    {
      if (v7 == 1)
      {
        result[1] = 0;
      }

      else if (v7 == 2)
      {
        *(result + 1) = 0;
      }

      else
      {
        *(result + 1) = 0;
      }
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

unint64_t sub_26AFE57CC()
{
  v2 = qword_2803DE238;
  if (!qword_2803DE238)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DE238);
    return WitnessTable;
  }

  return v2;
}

uint64_t EnvironmentValues.platform.setter(void *a1)
{
  v6 = a1;
  v5 = v1;
  sub_26AF9F28C(a1, v4);
  sub_26AFE57CC();
  sub_26B078D50();
  return sub_26AF9DC30(a1);
}

uint64_t EnvironmentValues.reactivePlatform.getter()
{
  sub_26AFE5900();
  sub_26B078D40();
  return v1;
}

unint64_t sub_26AFE5900()
{
  v2 = qword_2803DE240;
  if (!qword_2803DE240)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DE240);
    return WitnessTable;
  }

  return v2;
}

uint64_t EnvironmentValues.reactivePlatform.setter()
{

  sub_26AFE5900();
  sub_26B078D50();
}

uint64_t EnvironmentValues.reactiveManager.getter()
{
  sub_26AFE5A38();
  sub_26B078D40();
  return v1;
}

unint64_t sub_26AFE5A38()
{
  v2 = qword_2803DE248;
  if (!qword_2803DE248)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DE248);
    return WitnessTable;
  }

  return v2;
}

uint64_t EnvironmentValues.reactiveManager.setter()
{

  sub_26AFE5A38();
  sub_26B078D50();
}

uint64_t EnvironmentValues.reactiveAnalytics.getter()
{
  sub_26AFE5B70();
  sub_26B078D40();
  return v1;
}

unint64_t sub_26AFE5B70()
{
  v2 = qword_2803DE250;
  if (!qword_2803DE250)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DE250);
    return WitnessTable;
  }

  return v2;
}

uint64_t EnvironmentValues.reactiveAnalytics.setter()
{

  sub_26AFE5B70();
  sub_26B078D50();
}

uint64_t sub_26AFE5C64@<X0>(uint64_t *a1@<X8>)
{
  result = sub_26AFE5C5C();
  *a1 = result;
  return result;
}

uint64_t (*EnvironmentValues.reactiveAnalytics.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  a1[1] = v1;
  *a1 = EnvironmentValues.reactiveAnalytics.getter();
  return sub_26AFE5D08;
}

uint64_t sub_26AFE5D08(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    return EnvironmentValues.reactiveAnalytics.setter();
  }

  EnvironmentValues.reactiveAnalytics.setter();
  result = a1;
  sub_26AF3ED48();
  return result;
}

void sub_26AFE5D74(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  a1[3] = 0;
  a1[4] = 0;
}

void (*EnvironmentValues.platform.modify(void *a1))(void **a1, char a2)
{
  v4 = __swift_coroFrameAllocStub(0x58uLL);
  *a1 = v4;
  v4[10] = v1;
  EnvironmentValues.platform.getter();
  return sub_26AFE5E40;
}

void sub_26AFE5E40(void **a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    sub_26AF9F28C(v2, v2 + 5);
    EnvironmentValues.platform.setter(v2 + 5);
    sub_26AF9DC30(v2);
  }

  else
  {
    EnvironmentValues.platform.setter(v2);
  }

  free(v2);
}

uint64_t sub_26AFE5EC0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_26AFE5EB8();
  *a1 = result;
  return result;
}

uint64_t (*EnvironmentValues.reactivePlatform.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  a1[1] = v1;
  *a1 = EnvironmentValues.reactivePlatform.getter();
  return sub_26AFE5F64;
}

uint64_t sub_26AFE5F64(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    return EnvironmentValues.reactivePlatform.setter();
  }

  EnvironmentValues.reactivePlatform.setter();
  result = a1;
  sub_26AF9DEAC();
  return result;
}

uint64_t sub_26AFE5FD8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_26AFE5FD0();
  *a1 = result;
  return result;
}

uint64_t (*EnvironmentValues.reactiveManager.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  a1[1] = v1;
  *a1 = EnvironmentValues.reactiveManager.getter();
  return sub_26AFE607C;
}

uint64_t sub_26AFE607C(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    return EnvironmentValues.reactiveManager.setter();
  }

  EnvironmentValues.reactiveManager.setter();
  result = a1;
  sub_26AEECDD4();
  return result;
}

uint64_t sub_26AFE60F0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_26AFE60E8();
  *a1 = result;
  return result;
}

uint64_t EnvironmentValues.deepLinkRequest.getter()
{
  sub_26AFE61B4();
  sub_26B078D40();
  return v1;
}

unint64_t sub_26AFE61B4()
{
  v2 = qword_2803DE258;
  if (!qword_2803DE258)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DE258);
    return WitnessTable;
  }

  return v2;
}

uint64_t EnvironmentValues.deepLinkRequest.setter()
{

  sub_26AFE61B4();
  sub_26B078D50();
}

uint64_t (*EnvironmentValues.deepLinkRequest.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  a1[1] = v1;
  *a1 = EnvironmentValues.deepLinkRequest.getter();
  return sub_26AFE62FC;
}

uint64_t sub_26AFE62FC(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    return EnvironmentValues.deepLinkRequest.setter();
  }

  EnvironmentValues.deepLinkRequest.setter();
  result = a1;
  sub_26AEBB6D0();
  return result;
}

unint64_t sub_26AFE642C()
{
  v2 = qword_2803DE260;
  if (!qword_2803DE260)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DE260);
    return WitnessTable;
  }

  return v2;
}