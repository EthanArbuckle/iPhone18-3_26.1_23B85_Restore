uint64_t sub_25E190954@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (*(a3 + 16) && (v6 = sub_25E191AA0(a1, a2), (v7 & 1) != 0))
  {
    v8 = v6;
    v9 = *(a3 + 56);
    v10 = type metadata accessor for KeyPathView();
    v17 = *(v10 - 8);
    sub_25E1907C0(v9 + *(v17 + 72) * v8, a4);
    v11 = *(v17 + 56);
    v12 = a4;
    v13 = 0;
    v14 = v10;
  }

  else
  {
    v15 = type metadata accessor for KeyPathView();
    v11 = *(*(v15 - 8) + 56);
    v14 = v15;
    v12 = a4;
    v13 = 1;
  }

  return v11(v12, v13, 1, v14);
}

uint64_t PlaceholderActionItem.init(viewTag:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = swift_getKeyPath();
  *a3 = result;
  *(a3 + 8) = 0;
  *(a3 + 16) = a1;
  *(a3 + 24) = a2;
  return result;
}

uint64_t PlaceholderActionItem.viewTag.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t PlaceholderActionItem.viewTag.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t PlaceholderActionItem.body.getter@<X0>(uint64_t a1@<X8>)
{
  v75 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCDD288, &qword_25E1A7A38);
  v3 = *(*(v2 - 1) + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v67 - v4;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCDD290, &unk_25E1A7A40);
  v6 = *(*(v72 - 8) + 64);
  MEMORY[0x28223BE20](v72);
  v74 = &v67 - v7;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCDD260, &qword_25E1A79B8);
  v8 = *(*(v73 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v73);
  v70 = &v67 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v71 = &v67 - v12;
  MEMORY[0x28223BE20](v11);
  v14 = &v67 - v13;
  v15 = sub_25E1A4F8C();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v67 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *v1;
  v22 = *(v1 + 8);
  v23 = *(v1 + 24);
  v76 = *(v1 + 16);
  v68 = v18;
  v69 = v16;
  if (v22 == 1)
  {

    v24 = v21;
  }

  else
  {

    sub_25E1A588C();
    v25 = sub_25E1A525C();
    LODWORD(v67) = v22;
    v26 = v15;
    v27 = v25;
    sub_25E1A4C0C();

    sub_25E1A4F7C();
    swift_getAtKeyPath();
    sub_25E1908F4(v21, 0);
    v28 = v26;
    v22 = v67;
    (*(v16 + 8))(v20, v28);
    v24 = v78;
  }

  v29 = *(v24 + 16);
  v30 = v23;

  if (v29 && (v31 = sub_25E191AA0(v76, v23), (v32 & 1) != 0))
  {
    v33 = v31;

    v34 = *(v24 + 56);
    v35 = type metadata accessor for KeyPathView();
    v36 = *(v35 - 8);
    v67 = *(v36 + 72);
    v37 = v34 + v67 * v33;
    v38 = v36;
    sub_25E1907C0(v37, v14);

    v39 = *(v38 + 56);
    v39(v14, 0, 1, v35);
    sub_25E1819EC(v14, &qword_27FCDD260, &qword_25E1A79B8);
    if (v22)
    {
    }

    else
    {

      sub_25E1A588C();
      v59 = v39;
      v60 = sub_25E1A525C();
      sub_25E1A4C0C();

      v39 = v59;
      sub_25E1A4F7C();
      swift_getAtKeyPath();
      sub_25E1908F4(v21, 0);
      (*(v69 + 8))(v20, v68);
      v21 = v78;
    }

    v61 = v70;
    if (*(v21 + 16) && (v62 = sub_25E191AA0(v76, v30), (v63 & 1) != 0))
    {
      sub_25E1907C0(*(v21 + 56) + v62 * v67, v61);
      v64 = 0;
    }

    else
    {
      v64 = 1;
    }

    v39(v61, v64, 1, v35);
    v65 = v71;
    sub_25E191B18(v61, v71);
    v56 = &qword_27FCDD260;
    v57 = &qword_25E1A79B8;
    sub_25E1817AC(v65, v74, &qword_27FCDD260, &qword_25E1A79B8);
    swift_storeEnumTagMultiPayload();
    sub_25E190668();
    sub_25E17F9C0(&qword_27FCDD2A8, &qword_27FCDD288, &qword_25E1A7A38);
    sub_25E1A515C();
    v58 = v65;
  }

  else
  {

    v40 = type metadata accessor for KeyPathView();
    (*(*(v40 - 8) + 56))(v14, 1, 1, v40);
    sub_25E1819EC(v14, &qword_27FCDD260, &qword_25E1A79B8);
    v41 = &v5[v2[29]];
    v77 = 0;
    sub_25E1A55DC();
    v42 = v79;
    *v41 = v78;
    v41[1] = v42;
    v43 = &v5[v2[30]];
    *v43 = swift_getKeyPath();
    v43[8] = 0;
    v44 = &v5[v2[31]];
    *v44 = swift_getKeyPath();
    v44[8] = 0;
    v45 = v2[32];
    *&v5[v45] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCDD298, &qword_25E1A7AD0);
    swift_storeEnumTagMultiPayload();
    *&v5[v2[33]] = 0x4052800000000000;
    *&v5[v2[34]] = 0x402C000000000000;
    *&v5[v2[35]] = 0x4044000000000000;
    sub_25E1A4FDC();
    *v5 = sub_25E1A53AC();
    *(v5 + 1) = v46;
    v5[16] = v47 & 1;
    *(v5 + 3) = v48;
    v78 = v76;
    v79 = v23;
    sub_25E180F4C();
    *(v5 + 4) = sub_25E1A53CC();
    *(v5 + 5) = v50;
    *(v5 + 6) = v49 & 1;
    *(v5 + 7) = v51;
    v52 = v2[23];
    v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCDD2A0, &unk_25E1A7AD8);
    (*(*(v53 - 8) + 56))(&v5[v52], 1, 6, v53);
    v5[v2[24]] = 1;
    v5[v2[25]] = 0;
    v5[v2[26]] = 0;
    v54 = &v5[v2[27]];
    *v54 = 0;
    *(v54 + 1) = 0;
    v55 = &v5[v2[28]];
    *v55 = 0;
    *(v55 + 1) = 0;
    v56 = &qword_27FCDD288;
    v57 = &qword_25E1A7A38;
    sub_25E1817AC(v5, v74, &qword_27FCDD288, &qword_25E1A7A38);
    swift_storeEnumTagMultiPayload();
    sub_25E190668();
    sub_25E17F9C0(&qword_27FCDD2A8, &qword_27FCDD288, &qword_25E1A7A38);
    sub_25E1A515C();
    v58 = v5;
  }

  return sub_25E1819EC(v58, v56, v57);
}

uint64_t static PlaceholderActionItem_Previews.previews.getter@<X0>(uint64_t a1@<X8>)
{
  v15[0] = &unk_286FDC878;
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCDD2B0, &unk_25E1A7B00);
  sub_25E17F9C0(&qword_27FCDD2B8, &qword_27FCDD2B0, &unk_25E1A7B00);
  sub_25E191B88();
  sub_25E1A56DC();
  KeyPath = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCDD188, &unk_25E1A77A0);
  v3 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCDD190, &qword_25E1A7B10) - 8);
  v4 = *(*v3 + 72);
  v5 = (*(*v3 + 80) + 32) & ~*(*v3 + 80);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_25E1A7750;
  v7 = (v6 + v5);
  v8 = v7 + v3[14];
  *v7 = 0x4977656976657270;
  v7[1] = 0xEB000000006D6574;
  v9 = swift_getKeyPath();
  v15[3] = &type metadata for PreviewItem;
  memset(v14, 0, sizeof(v14));
  *v8 = swift_getKeyPath();
  v8[8] = 0;
  *(v8 + 3) = 0u;
  *(v8 + 2) = 0u;
  *(v8 + 88) = 0u;
  *(v8 + 72) = 0u;
  *(v8 + 2) = v9;
  *(v8 + 3) = 0;

  sub_25E18D370(v15, (v8 + 32));
  v8[64] = 0;
  sub_25E18D370(v14, (v8 + 72));
  v10 = &v8[*(type metadata accessor for KeyPathView() + 40)];
  sub_25E1A4BEC();

  sub_25E1819EC(v14, &qword_27FCDD180, &qword_25E1A7B40);
  sub_25E1819EC(v15, &qword_27FCDD180, &qword_25E1A7B40);
  v11 = sub_25E18FF10(v6);
  swift_setDeallocating();
  sub_25E1819EC(v7, &qword_27FCDD190, &qword_25E1A7B10);
  swift_deallocClassInstance();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCDD2C8, &qword_25E1A7B48);
  v13 = (a1 + *(result + 36));
  *v13 = KeyPath;
  v13[1] = v11;
  return result;
}

uint64_t sub_25E191638@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  *a2 = swift_getKeyPath();
  *(a2 + 8) = 0;
  *(a2 + 16) = v4;
  *(a2 + 24) = v3;
}

uint64_t PreviewItem.asAnyView.getter()
{
  sub_25E191C94();

  return sub_25E1A567C();
}

uint64_t sub_25E1916C8(uint64_t a1)
{
  v2 = sub_25E19204C();

  return MEMORY[0x28212D8F0](a1, v2);
}

uint64_t sub_25E191714(uint64_t a1)
{
  v2 = sub_25E19204C();

  return MEMORY[0x28212D8E0](a1, v2);
}

uint64_t PreviewItem.body.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCDD288, &qword_25E1A7A38);
  v3 = (a1 + v2[29]);
  sub_25E1A55DC();
  *v3 = v18;
  v3[1] = v19;
  v4 = a1 + v2[30];
  *v4 = swift_getKeyPath();
  *(v4 + 8) = 0;
  v5 = a1 + v2[31];
  *v5 = swift_getKeyPath();
  *(v5 + 8) = 0;
  v6 = v2[32];
  *(a1 + v6) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCDD298, &qword_25E1A7AD0);
  swift_storeEnumTagMultiPayload();
  *(a1 + v2[33]) = 0x4052800000000000;
  *(a1 + v2[34]) = 0x402C000000000000;
  *(a1 + v2[35]) = 0x4044000000000000;
  sub_25E1A4FDC();
  *a1 = sub_25E1A53AC();
  *(a1 + 8) = v7;
  *(a1 + 16) = v8 & 1;
  *(a1 + 24) = v9;
  sub_25E1A4FDC();
  *(a1 + 32) = sub_25E1A53AC();
  *(a1 + 40) = v11;
  *(a1 + 48) = v10 & 1;
  *(a1 + 56) = v12;
  v13 = v2[23];
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCDD2A0, &unk_25E1A7AD8);
  result = (*(*(v14 - 8) + 56))(a1 + v13, 1, 6, v14);
  *(a1 + v2[24]) = 1;
  *(a1 + v2[25]) = 0;
  *(a1 + v2[26]) = 0;
  v16 = (a1 + v2[27]);
  *v16 = 0;
  v16[1] = 0;
  v17 = (a1 + v2[28]);
  *v17 = 0;
  v17[1] = 0;
  return result;
}

uint64_t sub_25E1919D8(uint64_t a1)
{
  v2 = sub_25E1A4D0C();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_25E1A4E7C();
}

unint64_t sub_25E191AA0(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_25E1A59BC();
  sub_25E1A581C();
  v6 = sub_25E1A59DC();

  return sub_25E191BDC(a1, a2, v6);
}

uint64_t sub_25E191B18(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCDD260, &qword_25E1A79B8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_25E191B88()
{
  result = qword_27FCDD2C0;
  if (!qword_27FCDD2C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FCDD2C0);
  }

  return result;
}

unint64_t sub_25E191BDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_25E1A599C())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_25E191C94()
{
  result = qword_27FCDD2D0;
  if (!qword_27FCDD2D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FCDD2D0);
  }

  return result;
}

unint64_t sub_25E191D08()
{
  result = qword_27FCDD2D8;
  if (!qword_27FCDD2D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FCDD2D8);
  }

  return result;
}

uint64_t sub_25E191DA0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_25E191DE8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_25E191E58()
{
  result = qword_27FCDD2E0;
  if (!qword_27FCDD2E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FCDD2E8, "H>");
    sub_25E190668();
    sub_25E17F9C0(&qword_27FCDD2A8, &qword_27FCDD288, &qword_25E1A7A38);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FCDD2E0);
  }

  return result;
}

unint64_t sub_25E191F10()
{
  result = qword_27FCDD2F0;
  if (!qword_27FCDD2F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FCDD2C8, &qword_25E1A7B48);
    sub_25E191FC8();
    sub_25E17F9C0(&qword_27FCDD240, &qword_27FCDD248, &qword_25E1A7970);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FCDD2F0);
  }

  return result;
}

unint64_t sub_25E191FC8()
{
  result = qword_27FCDD2F8;
  if (!qword_27FCDD2F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FCDD300, &qword_25E1A7D48);
    sub_25E191B88();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FCDD2F8);
  }

  return result;
}

unint64_t sub_25E19204C()
{
  result = qword_27FCDD308;
  if (!qword_27FCDD308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FCDD308);
  }

  return result;
}

uint64_t PaymentDetailSheet.hashValue.getter()
{
  v1 = *v0;
  sub_25E1A59BC();
  MEMORY[0x25F8AD450](v1);
  return sub_25E1A59DC();
}

unint64_t sub_25E19215C()
{
  result = qword_27FCDD310;
  if (!qword_27FCDD310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FCDD310);
  }

  return result;
}

unint64_t sub_25E1921B4()
{
  result = qword_27FCDD318;
  if (!qword_27FCDD318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FCDD318);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PaymentDetailSheet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF4)
  {
    goto LABEL_17;
  }

  if (a2 + 12 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 12) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 12;
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

      return (*a1 | (v4 << 8)) - 12;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 12;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xD;
  v8 = v6 - 13;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for PaymentDetailSheet(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 12 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 12) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF4)
  {
    v4 = 0;
  }

  if (a2 > 0xF3)
  {
    v5 = ((a2 - 244) >> 8) + 1;
    *result = a2 + 12;
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
    *result = a2 + 12;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t AccessoryView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v68 = a1;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCDD320, &qword_25E1A7E50);
  v56 = *(v60 - 8);
  v2 = *(v56 + 64);
  MEMORY[0x28223BE20](v60);
  v4 = &v56 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCDD328, &qword_25E1A7E58);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v57 = &v56 - v7;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCDD330, &qword_25E1A7E60);
  v8 = *(*(v63 - 8) + 64);
  MEMORY[0x28223BE20](v63);
  v59 = &v56 - v9;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCDD338, &qword_25E1A7E68);
  v10 = *(v58 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v58);
  v13 = &v56 - v12;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCDD340, &qword_25E1A7E70);
  v14 = *(*(v65 - 8) + 64);
  MEMORY[0x28223BE20](v65);
  v67 = &v56 - v15;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCDD348, &qword_25E1A7E78);
  v16 = *(*(v62 - 8) + 64);
  MEMORY[0x28223BE20](v62);
  v61 = &v56 - v17;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCDD350, &unk_25E1A7E80);
  v18 = *(*(v66 - 8) + 64);
  MEMORY[0x28223BE20](v66);
  v64 = &v56 - v19;
  v20 = type metadata accessor for AccessoryViewStyle(0);
  v21 = *(*(v20 - 8) + 64);
  v22 = MEMORY[0x28223BE20](v20 - 8);
  v24 = &v56 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v26 = &v56 - v25;
  sub_25E1937A8(v1, &v56 - v25);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCDD2A0, &unk_25E1A7AD8);
  v28 = *(*(v27 - 8) + 48);
  v29 = v28(v26, 6, v27);
  if (v29 <= 1)
  {
    if (v29)
    {
      swift_storeEnumTagMultiPayload();
      sub_25E19380C();
      return sub_25E1A515C();
    }

    v32 = *(v26 + 1);

    v33 = *(v27 + 48);
    v34 = sub_25E1A536C();
    (*(*(v34 - 8) + 8))(&v26[v33], v34);
    LOBYTE(v75) = 1;
    goto LABEL_9;
  }

  if ((v29 - 2) >= 3)
  {
    if (v29 != 5)
    {
      sub_25E192DDC(v13);
      v47 = v58;
      (*(v10 + 16))(v57, v13, v58);
      swift_storeEnumTagMultiPayload();
      v48 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FCDD378, &qword_25E1A7E98);
      v49 = sub_25E193A64();
      v69 = v48;
      v70 = v49;
      swift_getOpaqueTypeConformance2();
      v50 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FCDD3B8, &qword_25E1A7EC8);
      v51 = sub_25E193C10();
      v69 = &type metadata for ChevronView;
      v70 = v51;
      OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
      v69 = &type metadata for ChevronView;
      v70 = MEMORY[0x277CE1350];
      v71 = v50;
      v72 = v51;
      v73 = MEMORY[0x277CE1340];
      v74 = OpaqueTypeConformance2;
      swift_getOpaqueTypeConformance2();
      v53 = v59;
      sub_25E1A515C();
      sub_25E1817AC(v53, v61, &qword_27FCDD330, &qword_25E1A7E60);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCDD368, &qword_25E1A7E90);
      sub_25E193898();
      sub_25E193914();
      v54 = v64;
      sub_25E1A515C();
      sub_25E1819EC(v53, &qword_27FCDD330, &qword_25E1A7E60);
      sub_25E1817AC(v54, v67, &qword_27FCDD350, &unk_25E1A7E80);
      swift_storeEnumTagMultiPayload();
      sub_25E19380C();
      sub_25E1A515C();
      sub_25E1819EC(v54, &qword_27FCDD350, &unk_25E1A7E80);
      return (*(v10 + 8))(v13, v47);
    }

    LOBYTE(v75) = 0;
LABEL_9:
    sub_25E1A515C();
    *v61 = v69;
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCDD368, &qword_25E1A7E90);
    sub_25E193898();
    sub_25E193914();
    v35 = v64;
    sub_25E1A515C();
    sub_25E1817AC(v35, v67, &qword_27FCDD350, &unk_25E1A7E80);
    swift_storeEnumTagMultiPayload();
    sub_25E19380C();
    sub_25E1A515C();
    return sub_25E1819EC(v35, &qword_27FCDD350, &unk_25E1A7E80);
  }

  sub_25E1937A8(v1, v24);
  v30 = v28(v24, 6, v27) - 2;
  if (v30 >= 3)
  {
    sub_25E193C64(v24);
    v31 = 0;
  }

  else
  {
    v31 = v30 + 1;
  }

  KeyPath = swift_getKeyPath();
  LOBYTE(v69) = v31;
  v70 = KeyPath;
  LOBYTE(v71) = 0;
  sub_25E1A570C();
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCDD3B8, &qword_25E1A7EC8);
  v39 = sub_25E193C10();
  v75 = &type metadata for ChevronView;
  v76 = v39;
  v55 = swift_getOpaqueTypeConformance2();
  v40 = v4;
  sub_25E1A550C();
  sub_25E1832F0(v70, v71);
  v41 = v56;
  v42 = v60;
  (*(v56 + 16))(v57, v40, v60);
  swift_storeEnumTagMultiPayload();
  v43 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FCDD378, &qword_25E1A7E98);
  v44 = sub_25E193A64();
  v69 = v43;
  v70 = v44;
  swift_getOpaqueTypeConformance2();
  v69 = &type metadata for ChevronView;
  v70 = MEMORY[0x277CE1350];
  v71 = v38;
  v72 = v39;
  v73 = MEMORY[0x277CE1340];
  v74 = v55;
  swift_getOpaqueTypeConformance2();
  v45 = v59;
  sub_25E1A515C();
  sub_25E1817AC(v45, v61, &qword_27FCDD330, &qword_25E1A7E60);
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCDD368, &qword_25E1A7E90);
  sub_25E193898();
  sub_25E193914();
  v46 = v64;
  sub_25E1A515C();
  sub_25E1819EC(v45, &qword_27FCDD330, &qword_25E1A7E60);
  sub_25E1817AC(v46, v67, &qword_27FCDD350, &unk_25E1A7E80);
  swift_storeEnumTagMultiPayload();
  sub_25E19380C();
  sub_25E1A515C();
  sub_25E1819EC(v46, &qword_27FCDD350, &unk_25E1A7E80);
  return (*(v41 + 8))(v40, v42);
}

uint64_t sub_25E192DDC@<X0>(uint64_t a1@<X8>)
{
  v27 = a1;
  v26 = sub_25E1A4DBC();
  v1 = *(v26 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v26);
  v4 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCDD378, &qword_25E1A7E98);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v25 - v7;
  v9 = sub_25E1A55BC();
  v10 = sub_25E1A52EC();
  KeyPath = swift_getKeyPath();
  v28 = v9;
  v29 = KeyPath;
  v30 = v10;
  sub_25E1A530C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCDD098, &unk_25E1A8170);
  sub_25E189B38();
  sub_25E1A540C();

  v12 = &v8[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCDD390, &unk_25E1A7EA0) + 36)];
  v13 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCDD3A0, &qword_25E1A7EB8) + 28);
  sub_25E1A504C();
  v14 = sub_25E1A505C();
  (*(*(v14 - 8) + 56))(v12 + v13, 0, 1, v14);
  *v12 = swift_getKeyPath();
  v15 = objc_opt_self();
  v16 = [v15 secondaryLabelColor];
  v17 = sub_25E1A552C();
  v18 = [v15 systemFillColor];
  v19 = sub_25E1A552C();
  v20 = &v8[*(v5 + 36)];
  *v20 = v17;
  v20[1] = v19;
  v21 = sub_25E1A56FC();
  v22 = MEMORY[0x277CDF9D8];
  if ((v21 & 1) == 0)
  {
    v22 = MEMORY[0x277CDFA10];
  }

  v23 = v26;
  (*(v1 + 104))(v4, *v22, v26);
  sub_25E193A64();
  sub_25E1A544C();
  (*(v1 + 8))(v4, v23);
  return sub_25E1819EC(v8, &qword_27FCDD378, &qword_25E1A7E98);
}

uint64_t sub_25E1930F4(uint64_t a1)
{
  v2 = sub_25E1A4DBC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v10[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = *(a1 + 8);
  v8 = *(a1 + 16);
  v10[8] = *a1;
  v11 = v7;
  v12 = v8;
  (*(v3 + 104))(v6, *MEMORY[0x277CDFA10], v2);
  sub_25E193C10();
  sub_25E1A544C();
  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_25E193224(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCDD400, &qword_25E1A8028);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  sub_25E193F40(a1, &v6 - v4);
  return sub_25E1A4F2C();
}

uint64_t _s13PaymentUIBase18AccessoryViewStyleO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_25E1A536C();
  v5 = *(v4 - 8);
  v6 = v5[8];
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v38 - v10;
  v12 = type metadata accessor for AccessoryViewStyle(0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCDD408, &unk_25E1A8030);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16 - 8);
  v20 = &v38 - v19;
  v21 = &v38 + *(v18 + 56) - v19;
  sub_25E1937A8(a1, &v38 - v19);
  sub_25E1937A8(a2, v21);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCDD2A0, &unk_25E1A7AD8);
  v23 = *(*(v22 - 8) + 48);
  v24 = v23(v20, 6, v22);
  if (v24 <= 2)
  {
    if (v24)
    {
      if (v24 == 1)
      {
        if (v23(v21, 6, v22) != 1)
        {
          goto LABEL_20;
        }

        goto LABEL_16;
      }

      if (v23(v21, 6, v22) == 2)
      {
        goto LABEL_16;
      }
    }

    else
    {
      sub_25E1937A8(v20, v15);
      v25 = *v15;
      v43 = *(v15 + 1);
      v26 = *(v22 + 48);
      v41 = v25;
      v42 = v26;
      if (!v23(v21, 6, v22))
      {
        v29 = *v21;
        v39 = *(v21 + 1);
        v40 = v29;
        v30 = v5[4];
        v31 = v42;
        v30(v11, &v15[v42], v4);
        v32 = &v21[v31];
        v33 = v39;
        v30(v9, v32, v4);
        if (v41 == v40 && v43 == v33)
        {
        }

        else
        {
          v35 = sub_25E1A599C();

          if ((v35 & 1) == 0)
          {
            v36 = v5[1];
            v36(v9, v4);
            v36(v11, v4);
            sub_25E193C64(v20);
            goto LABEL_21;
          }
        }

        v27 = MEMORY[0x25F8ACDE0](v11, v9);
        v37 = v5[1];
        v37(v9, v4);
        v37(v11, v4);
        sub_25E193C64(v20);
        return v27 & 1;
      }

      (v5[1])(&v15[v42], v4);
    }

LABEL_20:
    sub_25E193FB0(v20);
LABEL_21:
    v27 = 0;
    return v27 & 1;
  }

  if (v24 > 4)
  {
    if (v24 == 5)
    {
      if (v23(v21, 6, v22) != 5)
      {
        goto LABEL_20;
      }

      goto LABEL_16;
    }

    if (v23(v21, 6, v22) == 6)
    {
      goto LABEL_16;
    }

    goto LABEL_20;
  }

  if (v24 == 3)
  {
    if (v23(v21, 6, v22) != 3)
    {
      goto LABEL_20;
    }
  }

  else if (v23(v21, 6, v22) != 4)
  {
    goto LABEL_20;
  }

LABEL_16:
  sub_25E193C64(v20);
  v27 = 1;
  return v27 & 1;
}

uint64_t sub_25E193724(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AccessoryViewStyle(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_25E1937A8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AccessoryViewStyle(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_25E19380C()
{
  result = qword_27FCDD358;
  if (!qword_27FCDD358)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FCDD350, &unk_25E1A7E80);
    sub_25E193898();
    sub_25E193914();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FCDD358);
  }

  return result;
}

unint64_t sub_25E193898()
{
  result = qword_27FCDD360;
  if (!qword_27FCDD360)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FCDD368, &qword_25E1A7E90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FCDD360);
  }

  return result;
}

unint64_t sub_25E193914()
{
  result = qword_27FCDD370;
  if (!qword_27FCDD370)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FCDD330, &qword_25E1A7E60);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FCDD378, &qword_25E1A7E98);
    sub_25E193A64();
    swift_getOpaqueTypeConformance2();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FCDD3B8, &qword_25E1A7EC8);
    sub_25E193C10();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FCDD370);
  }

  return result;
}

unint64_t sub_25E193A64()
{
  result = qword_27FCDD380;
  if (!qword_27FCDD380)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FCDD378, &qword_25E1A7E98);
    sub_25E193B1C();
    sub_25E17F9C0(&qword_27FCDD3A8, &qword_27FCDD3B0, &qword_25E1A7EC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FCDD380);
  }

  return result;
}

unint64_t sub_25E193B1C()
{
  result = qword_27FCDD388;
  if (!qword_27FCDD388)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FCDD390, &unk_25E1A7EA0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FCDD098, &unk_25E1A8170);
    sub_25E189B38();
    swift_getOpaqueTypeConformance2();
    sub_25E17F9C0(&qword_27FCDD398, &qword_27FCDD3A0, &qword_25E1A7EB8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FCDD388);
  }

  return result;
}

unint64_t sub_25E193C10()
{
  result = qword_27FCDD3C0;
  if (!qword_27FCDD3C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FCDD3C0);
  }

  return result;
}

uint64_t sub_25E193C64(uint64_t a1)
{
  v2 = type metadata accessor for AccessoryViewStyle(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_25E193D04()
{
  sub_25E193D5C();
  v1 = v0;
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v1;
}

void sub_25E193D5C()
{
  if (!qword_27FCDD3D8)
  {
    sub_25E1A536C();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27FCDD3D8);
    }
  }
}

uint64_t sub_25E193E10(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_25E193E48()
{
  result = type metadata accessor for AccessoryViewStyle(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_25E193EB4()
{
  result = qword_27FCDD3F0;
  if (!qword_27FCDD3F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FCDD3F8, &qword_25E1A7FC0);
    sub_25E19380C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FCDD3F0);
  }

  return result;
}

uint64_t sub_25E193F40(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCDD400, &qword_25E1A8028);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_25E193FB0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCDD408, &unk_25E1A8030);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_25E194018()
{
  result = sub_25E1A52CC();
  qword_27FCDD410 = result;
  return result;
}

uint64_t sub_25E19405C()
{
  result = sub_25E1A52CC();
  qword_27FCDD418 = result;
  return result;
}

uint64_t sub_25E1940A0()
{
  result = sub_25E1A52CC();
  qword_27FCDD420 = result;
  return result;
}

uint64_t sub_25E1940E4()
{
  result = sub_25E1A52CC();
  qword_27FCDD428 = result;
  return result;
}

uint64_t sub_25E194128()
{
  sub_25E1A52DC();
  sub_25E1A531C();
  v0 = sub_25E1A534C();

  qword_27FCDD430 = v0;
  return result;
}

uint64_t CheckmarkStyle.hashValue.getter()
{
  v1 = *v0;
  sub_25E1A59BC();
  MEMORY[0x25F8AD450](v1);
  return sub_25E1A59DC();
}

uint64_t MenuContainerView.init(limitWidth:selection:icon:content:)@<X0>(char a1@<W0>, char *a2@<X1>, uint64_t (*a3)(int *, uint64_t, uint64_t, uint64_t)@<X2>, uint64_t (*a4)(uint64_t)@<X4>, uint64_t a5@<X8>)
{
  v9 = *a2;
  if (a1)
  {
    v10 = 0x4069000000000000;
  }

  else
  {
    v10 = 0;
  }

  v11 = type metadata accessor for MenuContainerView();
  v12 = a5 + v11[15];
  *v12 = v10;
  *(v12 + 8) = (a1 & 1) == 0;
  v16 = a3(v11, v13, v14, v15);
  v17 = a5 + v11[13];
  result = a4(v16);
  *(a5 + v11[14]) = v9;
  return result;
}

uint64_t MenuContainerView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v47 = a2;
  v3 = sub_25E1A51AC();
  v45 = *(v3 - 8);
  v46 = v3;
  v4 = *(v45 + 64);
  MEMORY[0x28223BE20](v3);
  v44 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FCDD438, &qword_25E1A8040);
  v42 = (a1 + 40);
  v48 = *(a1 + 16);
  sub_25E1A4DDC();
  v41 = *(a1 + 32);
  v58 = v41;
  v59 = MEMORY[0x277CDF678];
  swift_getWitnessTable();
  sub_25E1A566C();
  swift_getTupleTypeMetadata3();
  v37 = sub_25E1A574C();
  WitnessTable = swift_getWitnessTable();
  v6 = sub_25E1A564C();
  v38 = *(v6 - 8);
  v7 = *(v38 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v32 - v8;
  v10 = sub_25E1A4DDC();
  v40 = *(v10 - 8);
  v11 = *(v40 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v32 - v12;
  v14 = sub_25E1A4DDC();
  v39 = *(v14 - 8);
  v15 = *(v39 + 64);
  MEMORY[0x28223BE20](v14);
  v17 = &v32 - v16;
  v32 = swift_getWitnessTable();
  v56 = v32;
  v57 = MEMORY[0x277CDF918];
  v33 = swift_getWitnessTable();
  v54 = v33;
  v55 = MEMORY[0x277CDFC60];
  v34 = swift_getWitnessTable();
  v52 = v14;
  v53 = v34;
  v35 = MEMORY[0x277CDEAE8];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v19 = *(OpaqueTypeMetadata2 - 8);
  v20 = *(v19 + 64);
  v21 = MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v23 = &v32 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v25 = &v32 - v24;
  *&v26 = v41;
  *(&v26 + 1) = *v42;
  v49 = v48;
  v50 = v26;
  v51 = v43;
  sub_25E1A4FCC();
  sub_25E1A563C();
  sub_25E1A527C();
  sub_25E1A54DC();
  (*(v38 + 8))(v9, v6);
  sub_25E1A573C();
  sub_25E1A54BC();
  (*(v40 + 8))(v13, v10);
  v27 = v44;
  sub_25E1A519C();
  v28 = v34;
  sub_25E1A546C();
  (*(v45 + 8))(v27, v46);
  (*(v39 + 8))(v17, v14);
  v52 = v14;
  v53 = v28;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_25E181B2C(v23, OpaqueTypeMetadata2, OpaqueTypeConformance2);
  v30 = *(v19 + 8);
  v30(v23, OpaqueTypeMetadata2);
  sub_25E181B2C(v25, OpaqueTypeMetadata2, OpaqueTypeConformance2);
  return (v30)(v25, OpaqueTypeMetadata2);
}

uint64_t sub_25E194958@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, char *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v53 = a6;
  v51 = sub_25E1A4DDC();
  v69 = a4;
  v70 = MEMORY[0x277CDF678];
  WitnessTable = swift_getWitnessTable();
  v11 = sub_25E1A566C();
  v52 = *(v11 - 8);
  v12 = *(v52 + 64);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v13);
  v47 = &v42 - v17;
  v49 = *(a3 - 1);
  v18 = *(v49 + 64);
  v19 = MEMORY[0x28223BE20](v16);
  v55 = &v42 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v45 = &v42 - v21;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCDD438, &qword_25E1A8040);
  v22 = *(*(v48 - 8) + 64);
  v23 = MEMORY[0x28223BE20](v48);
  v54 = &v42 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v26 = &v42 - v25;
  v65 = a2;
  v66 = a3;
  v67 = a4;
  v68 = a5;
  v27 = type metadata accessor for MenuContainerView();
  v44 = v26;
  sub_25E194E14(v27, v26);
  v43 = a3;
  v46 = a5;
  sub_25E181B2C(a1, a3, a5);
  sub_25E1A503C();
  v56 = a2;
  v57 = a3;
  v58 = a4;
  v59 = a5;
  v60 = a1;
  v28 = v15;
  sub_25E1A565C();
  v29 = swift_getWitnessTable();
  v30 = v47;
  sub_25E181B2C(v15, v11, v29);
  v31 = v52;
  v51 = *(v52 + 8);
  v51(v15, v11);
  v32 = v26;
  v33 = v54;
  sub_25E195A78(v32, v54);
  v65 = v33;
  v34 = v49;
  v35 = v55;
  v36 = v45;
  v37 = v43;
  (*(v49 + 16))(v55, v45, v43);
  v66 = v35;
  (*(v31 + 16))(v28, v30, v11);
  v67 = v28;
  v38 = v28;
  v64[0] = v48;
  v64[1] = v37;
  v64[2] = v11;
  v61 = sub_25E195AE8();
  v62 = v46;
  v63 = v29;
  sub_25E198E40(&v65, 3uLL, v64);
  v39 = v51;
  v51(v30, v11);
  v40 = *(v34 + 8);
  v40(v36, v37);
  sub_25E195C84(v44);
  v39(v38, v11);
  v40(v55, v37);
  return sub_25E195C84(v54);
}

uint64_t sub_25E194E14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v43 = sub_25E1A501C();
  v5 = *(v43 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v43);
  v8 = v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCDD4E8, &unk_25E1A8160);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v36 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCDD4D8, &qword_25E1A8158);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v21 = *(a1 + 56);
  if (*(v2 + v21))
  {
    v40 = v18;
    v41 = v36 - v20;
    v42 = v19;
    v38 = v21;
    v22 = sub_25E1A55BC();
    v36[1] = v22;
    sub_25E1A52DC();
    sub_25E1A531C();
    v23 = sub_25E1A534C();
    v39 = a2;
    v24 = v23;
    v36[0] = v23;

    KeyPath = swift_getKeyPath();
    v37 = v2;
    v26 = KeyPath;
    v27 = sub_25E1A553C();
    v28 = swift_getKeyPath();
    v44 = v22;
    v45 = v26;
    v46 = v24;
    v47 = v28;
    v48 = v27;
    sub_25E1A500C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCDD088, &qword_25E1A73D8);
    sub_25E189A80();
    sub_25E1A547C();
    (*(v5 + 8))(v8, v43);

    if (*(v37 + v38) == 2)
    {
      v29 = 1.0;
    }

    else
    {
      v29 = 0.0;
    }

    sub_25E181A90(v12, v17, &qword_27FCDD4E8, &unk_25E1A8160);
    v30 = v40;
    v31 = v41;
    *&v17[*(v40 + 36)] = v29;
    sub_25E181A90(v17, v31, &qword_27FCDD4D8, &qword_25E1A8158);
    v32 = v31;
    v33 = v39;
    sub_25E181A90(v32, v39, &qword_27FCDD4D8, &qword_25E1A8158);
    return (*(v42 + 56))(v33, 0, 1, v30);
  }

  else
  {
    v35 = *(v19 + 56);

    return v35(a2, 1, 1);
  }
}

uint64_t sub_25E1951D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v27[1] = a6;
  v11 = sub_25E1A4DDC();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = v27 - v17;
  v27[4] = a2;
  v27[5] = a3;
  v27[6] = a4;
  v27[7] = a5;
  v19 = type metadata accessor for MenuContainerView();
  v20 = *(v19 + 52);
  v21 = (a1 + *(v19 + 60));
  v22 = *v21;
  v23 = *(v21 + 8);
  sub_25E1A572C();
  sub_25E1A54AC();
  v27[2] = a4;
  v27[3] = MEMORY[0x277CDF678];
  WitnessTable = swift_getWitnessTable();
  sub_25E181B2C(v16, v11, WitnessTable);
  v25 = *(v12 + 8);
  v25(v16, v11);
  sub_25E181B2C(v18, v11, WitnessTable);
  return (v25)(v18, v11);
}

uint64_t MenuContainerView<>.init(limitWidth:selection:content:)@<X0>(char a1@<W0>, char *a2@<X1>, void (*a3)(void)@<X2>, uint64_t a4@<X8>)
{
  v6 = *a2;
  a3();
  result = type metadata accessor for MenuContainerView();
  *(a4 + *(result + 56)) = v6;
  v8 = 0x4069000000000000;
  if ((a1 & 1) == 0)
  {
    v8 = 0;
  }

  v9 = a4 + *(result + 60);
  *v9 = v8;
  *(v9 + 8) = (a1 & 1) == 0;
  return result;
}

unint64_t sub_25E195458()
{
  result = qword_27FCDD440[0];
  if (!qword_27FCDD440[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FCDD440);
  }

  return result;
}

uint64_t sub_25E1954AC(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  return swift_getOpaqueTypeConformance2();
}

void sub_25E195508(uint64_t a1)
{
  v2 = *(a1 + 24);
  swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    v4 = *(a1 + 16);
    swift_checkMetadataState();
    if (v5 <= 0x3F)
    {
      sub_25E1959F8();
      if (v6 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_25E1955B4(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 24) - 8);
  v5 = *(v4 + 84);
  v6 = *(a3 + 16);
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  v9 = *(v7 + 80);
  v10 = *(v7 + 64);
  if (v8 <= v5)
  {
    v11 = *(v4 + 84);
  }

  else
  {
    v11 = *(v7 + 84);
  }

  if (v11 <= 0xFD)
  {
    v11 = 253;
  }

  if (!a2)
  {
    return 0;
  }

  v12 = *(*(*(a3 + 24) - 8) + 64) + v9;
  if (v11 >= a2)
  {
    goto LABEL_30;
  }

  v13 = (((v12 & ~v9) + v10) & 0xFFFFFFFFFFFFFFF8) + 17;
  v14 = (a2 - v11 + 255) >> 8;
  if (v13 <= 3)
  {
    v15 = v14 + 1;
  }

  else
  {
    v15 = 2;
  }

  if (v15 >= 0x10000)
  {
    v16 = 4;
  }

  else
  {
    v16 = 2;
  }

  if (v15 < 0x100)
  {
    v16 = 1;
  }

  if (v15 >= 2)
  {
    v17 = v16;
  }

  else
  {
    v17 = 0;
  }

  if (v17 > 1)
  {
    if (v17 == 2)
    {
      v18 = *&a1[v13];
      if (*&a1[v13])
      {
        goto LABEL_26;
      }
    }

    else
    {
      v18 = *&a1[v13];
      if (v18)
      {
        goto LABEL_26;
      }
    }

LABEL_30:
    if (v5 == v11)
    {
      return (*(v4 + 48))();
    }

    v22 = &a1[v12] & ~v9;
    if (v8 == v11)
    {
      return (*(v7 + 48))(v22, v8, v6);
    }

    v23 = *(v22 + v10);
    if (v23 >= 3)
    {
      return v23 - 2;
    }

    else
    {
      return 0;
    }
  }

  if (!v17)
  {
    goto LABEL_30;
  }

  v18 = a1[v13];
  if (!a1[v13])
  {
    goto LABEL_30;
  }

LABEL_26:
  v20 = (v18 - 1) << (8 * v13);
  if (v13 <= 3)
  {
    v21 = *a1;
  }

  else
  {
    v20 = 0;
    v21 = *a1;
  }

  return v11 + (v21 | v20) + 1;
}

void sub_25E195784(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 24) - 8);
  v7 = *(v6 + 84);
  v8 = *(*(a4 + 16) - 8);
  v9 = *(v8 + 84);
  v10 = *(v6 + 64);
  v11 = *(v8 + 80);
  v12 = *(v8 + 64);
  if (v9 <= v7)
  {
    v13 = *(v6 + 84);
  }

  else
  {
    v13 = *(v8 + 84);
  }

  if (v13 <= 0xFD)
  {
    v13 = 253;
  }

  v14 = v10 + v11;
  v15 = ((((v10 + v11) & ~v11) + v12) & 0xFFFFFFFFFFFFFFF8) + 17;
  if (v13 >= a3)
  {
    v19 = 0;
    if (v13 >= a2)
    {
      goto LABEL_19;
    }
  }

  else
  {
    v16 = (a3 - v13 + 255) >> 8;
    if (v15 <= 3)
    {
      v17 = v16 + 1;
    }

    else
    {
      v17 = 2;
    }

    if (v17 >= 0x10000)
    {
      v18 = 4;
    }

    else
    {
      v18 = 2;
    }

    if (v17 < 0x100)
    {
      v18 = 1;
    }

    if (v17 >= 2)
    {
      v19 = v18;
    }

    else
    {
      v19 = 0;
    }

    if (v13 >= a2)
    {
LABEL_19:
      if (v19 > 1)
      {
        if (v19 != 2)
        {
          *&a1[v15] = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_34;
        }

        *&a1[v15] = 0;
      }

      else if (v19)
      {
        a1[v15] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_34;
      }

      if (!a2)
      {
        return;
      }

LABEL_34:
      if (v7 == v13)
      {
        v22 = *(v6 + 56);

        v22();
      }

      else
      {
        v23 = &a1[v14] & ~v11;
        if (v9 == v13)
        {
          v24 = *(v8 + 56);

          v24(v23);
        }

        else
        {
          *(v23 + v12) = a2 + 2;
        }
      }

      return;
    }
  }

  v20 = ~v13 + a2;
  bzero(a1, v15);
  if (v15 <= 3)
  {
    v21 = (v20 >> 8) + 1;
  }

  else
  {
    v21 = 1;
  }

  if (v15 <= 3)
  {
    *a1 = v20;
    if (v19 > 1)
    {
LABEL_29:
      if (v19 == 2)
      {
        *&a1[v15] = v21;
      }

      else
      {
        *&a1[v15] = v21;
      }

      return;
    }
  }

  else
  {
    *a1 = v20;
    if (v19 > 1)
    {
      goto LABEL_29;
    }
  }

  if (v19)
  {
    a1[v15] = v21;
  }
}

void sub_25E1959F8()
{
  if (!qword_27FCDCD60)
  {
    v0 = sub_25E1A58CC();
    if (!v1)
    {
      atomic_store(v0, &qword_27FCDCD60);
    }
  }
}

uint64_t sub_25E195A78(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCDD438, &qword_25E1A8040);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_25E195AE8()
{
  result = qword_27FCDD4C8;
  if (!qword_27FCDD4C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FCDD438, &qword_25E1A8040);
    sub_25E195B6C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FCDD4C8);
  }

  return result;
}

unint64_t sub_25E195B6C()
{
  result = qword_27FCDD4D0;
  if (!qword_27FCDD4D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FCDD4D8, &qword_25E1A8158);
    sub_25E195BF8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FCDD4D0);
  }

  return result;
}

unint64_t sub_25E195BF8()
{
  result = qword_27FCDD4E0;
  if (!qword_27FCDD4E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FCDD4E8, &unk_25E1A8160);
    sub_25E189A80();
    sub_25E180EF4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FCDD4E0);
  }

  return result;
}

uint64_t sub_25E195C84(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCDD438, &qword_25E1A8040);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_25E195D60(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 8))
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

uint64_t sub_25E195DA8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t View.paymentItemBackground<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_25E1A58CC();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v18 - v10;
  v12 = type metadata accessor for PaymentItemViewBackgroundModifier();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v18 - v15;
  (*(v8 + 16))(v11, a1, v7);
  (*(v8 + 32))(v16, v11, v7);
  MEMORY[0x25F8ACF70](v16, a2, v12, a4);
  return (*(v13 + 8))(v16, v12);
}

uint64_t PaymentItemBackground.body.getter@<X0>(void *a1@<X8>)
{
  if (qword_28155F9B0 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  *a1 = qword_28155F9B8;
}

uint64_t sub_25E196044@<X0>(void *a1@<X8>)
{
  if (qword_28155F9B0 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  *a1 = qword_28155F9B8;
}

uint64_t sub_25E1960B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (qword_28155F9B0 != -1)
  {
    swift_once();
  }

  v4 = qword_28155F9B8;
  v5 = sub_25E1A527C();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCDD578, &qword_25E1A8428);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  v7 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCDD580, &qword_25E1A8430) + 36);
  *v7 = v4;
  *(v7 + 8) = v5;
}

uint64_t sub_25E1961A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v62 = a1;
  v65 = a3;
  swift_getWitnessTable();
  v4 = sub_25E1A517C();
  v5 = sub_25E1A4DDC();
  v60 = *(v5 - 8);
  v6 = *(v60 + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v59 = &v54 - v10;
  v11 = *(a2 + 16);
  v56 = *(a2 + 24);
  v67 = sub_25E1A513C();
  v68 = v4;
  v12 = sub_25E1A4DDC();
  v58 = *(v12 - 8);
  v13 = *(v58 + 64);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v54 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v57 = &v54 - v17;
  v18 = sub_25E1A58CC();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  v21 = MEMORY[0x28223BE20](v18);
  v23 = &v54 - v22;
  v24 = *(v11 - 8);
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v21);
  v27 = &v54 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_25E1A516C();
  v63 = *(v28 - 8);
  v64 = v28;
  v29 = *(v63 + 64);
  MEMORY[0x28223BE20](v28);
  v66 = &v54 - v30;
  (*(v19 + 16))(v23, v61, v18);
  if ((*(v24 + 48))(v23, 1, v11) == 1)
  {
    (*(v19 + 8))(v23, v18);
    v31 = v68;
    WitnessTable = swift_getWitnessTable();
    MEMORY[0x25F8ACF70](WitnessTable, v31, &type metadata for PaymentItemDefaultBackgroundModifier, WitnessTable);
    v33 = sub_25E19694C();
    v81 = WitnessTable;
    v82 = v33;
    v34 = swift_getWitnessTable();
    v35 = v59;
    sub_25E181B2C(v9, v5, v34);
    v36 = *(v60 + 8);
    v36(v9, v5);
    sub_25E181B2C(v35, v5, v34);
    v37 = swift_getWitnessTable();
    v79 = WitnessTable;
    v80 = v37;
    swift_getWitnessTable();
    sub_25E199108(v9, v12, v5);
    v36(v9, v5);
    v36(v35, v5);
  }

  else
  {
    v38 = *(v24 + 32);
    v55 = v27;
    v38(v27, v23, v11);
    sub_25E1A572C();
    v39 = swift_getWitnessTable();
    sub_25E1A53FC();
    v40 = swift_getWitnessTable();
    v71 = v39;
    v72 = v40;
    v62 = MEMORY[0x277CDFAD8];
    v41 = swift_getWitnessTable();
    v42 = v57;
    sub_25E181B2C(v16, v12, v41);
    v43 = *(v58 + 8);
    v43(v16, v12);
    sub_25E181B2C(v42, v12, v41);
    v44 = sub_25E19694C();
    v69 = v39;
    v70 = v44;
    swift_getWitnessTable();
    sub_25E199010(v16, v12);
    v43(v16, v12);
    v43(v42, v12);
    (*(v24 + 8))(v55, v11);
  }

  v45 = swift_getWitnessTable();
  v46 = swift_getWitnessTable();
  v77 = v45;
  v78 = v46;
  v47 = swift_getWitnessTable();
  v48 = sub_25E19694C();
  v75 = v45;
  v76 = v48;
  v49 = swift_getWitnessTable();
  v73 = v47;
  v74 = v49;
  v50 = v64;
  v51 = swift_getWitnessTable();
  v52 = v66;
  sub_25E181B2C(v66, v50, v51);
  return (*(v63 + 8))(v52, v50);
}

unint64_t sub_25E19694C()
{
  result = qword_27FCDD4F0[0];
  if (!qword_27FCDD4F0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FCDD4F0);
  }

  return result;
}

uint64_t sub_25E1969B8(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = sub_25E1A58CC();
  if (v3 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_25E196A28(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = v5 - 1;
  if (!v5)
  {
    v6 = 0;
  }

  v7 = *(*(*(a3 + 16) - 8) + 64);
  if (!v5)
  {
    ++v7;
  }

  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v6;
  if (a2 > v6)
  {
    v9 = 8 * v7;
    if (v7 > 3)
    {
      goto LABEL_8;
    }

    v11 = ((v8 + ~(-1 << v9)) >> v9) + 1;
    if (HIWORD(v11))
    {
      v10 = *(a1 + v7);
      if (v10)
      {
        goto LABEL_15;
      }
    }

    else
    {
      if (v11 <= 0xFF)
      {
        if (v11 < 2)
        {
          goto LABEL_28;
        }

LABEL_8:
        v10 = *(a1 + v7);
        if (!*(a1 + v7))
        {
          goto LABEL_28;
        }

LABEL_15:
        v12 = (v10 - 1) << v9;
        if (v7 > 3)
        {
          v12 = 0;
        }

        if (v7)
        {
          if (v7 <= 3)
          {
            v13 = v7;
          }

          else
          {
            v13 = 4;
          }

          if (v13 > 2)
          {
            if (v13 == 3)
            {
              v14 = *a1 | (*(a1 + 2) << 16);
            }

            else
            {
              v14 = *a1;
            }
          }

          else if (v13 == 1)
          {
            v14 = *a1;
          }

          else
          {
            v14 = *a1;
          }
        }

        else
        {
          v14 = 0;
        }

        return v6 + (v14 | v12) + 1;
      }

      v10 = *(a1 + v7);
      if (*(a1 + v7))
      {
        goto LABEL_15;
      }
    }
  }

LABEL_28:
  if (v5 < 2)
  {
    return 0;
  }

  v16 = (*(v4 + 48))(a1, v5);
  if (v16 >= 2)
  {
    return v16 - 1;
  }

  else
  {
    return 0;
  }
}

char *sub_25E196BA8(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = 0;
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  v8 = v7 - 1;
  if (v7)
  {
    v9 = *(*(*(a4 + 16) - 8) + 64);
  }

  else
  {
    v8 = 0;
    v9 = *(*(*(a4 + 16) - 8) + 64) + 1;
  }

  v10 = a3 >= v8;
  v11 = a3 - v8;
  if (v11 == 0 || !v10)
  {
    goto LABEL_16;
  }

  if (v9 > 3)
  {
    v5 = 1;
    if (v8 < a2)
    {
      goto LABEL_17;
    }

    goto LABEL_26;
  }

  v12 = ((v11 + ~(-1 << (8 * v9))) >> (8 * v9)) + 1;
  if (!HIWORD(v12))
  {
    if (v12 < 0x100)
    {
      v13 = 1;
    }

    else
    {
      v13 = 2;
    }

    if (v12 >= 2)
    {
      v5 = v13;
    }

    else
    {
      v5 = 0;
    }

LABEL_16:
    if (v8 < a2)
    {
      goto LABEL_17;
    }

    goto LABEL_26;
  }

  v5 = 4;
  if (v8 < a2)
  {
LABEL_17:
    v14 = ~v8 + a2;
    if (v9 < 4)
    {
      v16 = (v14 >> (8 * v9)) + 1;
      if (v9)
      {
        v17 = v14 & ~(-1 << (8 * v9));
        v18 = result;
        bzero(result, v9);
        result = v18;
        if (v9 != 3)
        {
          if (v9 == 2)
          {
            *v18 = v17;
            if (v5 > 1)
            {
LABEL_44:
              if (v5 == 2)
              {
                *&result[v9] = v16;
              }

              else
              {
                *&result[v9] = v16;
              }

              return result;
            }
          }

          else
          {
            *v18 = v14;
            if (v5 > 1)
            {
              goto LABEL_44;
            }
          }

          goto LABEL_41;
        }

        *v18 = v17;
        v18[2] = BYTE2(v17);
      }

      if (v5 > 1)
      {
        goto LABEL_44;
      }
    }

    else
    {
      v15 = result;
      bzero(result, v9);
      result = v15;
      *v15 = v14;
      v16 = 1;
      if (v5 > 1)
      {
        goto LABEL_44;
      }
    }

LABEL_41:
    if (v5)
    {
      result[v9] = v16;
    }

    return result;
  }

LABEL_26:
  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *&result[v9] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_33;
    }

    *&result[v9] = 0;
  }

  else if (v5)
  {
    result[v9] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_33;
  }

  if (!a2)
  {
    return result;
  }

LABEL_33:
  if (v7 >= 2)
  {
    v19 = *(v6 + 56);

    return v19();
  }

  return result;
}

unint64_t sub_25E196E34()
{
  result = qword_27FCDD588;
  if (!qword_27FCDD588)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FCDD580, &qword_25E1A8430);
    sub_25E17F9C0(&qword_27FCDD590, &qword_27FCDD578, &qword_25E1A8428);
    sub_25E17F9C0(&qword_28155F9F0, &qword_27FCDD0A0, &unk_25E1A73E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FCDD588);
  }

  return result;
}

void *BaseAuthenticatorModel.PasscodeEntry.init(view:completion:viewPresented:)@<X0>(void *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  *a6 = *result;
  a6[1] = a2;
  a6[2] = a3;
  a6[3] = a4;
  a6[4] = a5;
  return result;
}

id BaseAuthenticatorModel.PasscodeEntry.view.getter@<X0>(void **a1@<X8>)
{
  v2 = *v1;
  *a1 = *v1;
  return v2;
}

uint64_t BaseAuthenticatorModel.PasscodeEntry.completion.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return v1;
}

uint64_t BaseAuthenticatorModel.PasscodeEntry.viewPresented.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  sub_25E17FA64(v1);
  return v1;
}

unint64_t sub_25E196FE0()
{
  result = qword_27FCDD598;
  if (!qword_27FCDD598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FCDD598);
  }

  return result;
}

uint64_t sub_25E197084(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_25E197250();

  return MEMORY[0x28212EF70](a1, a2, a3, v6);
}

uint64_t sub_25E1970E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_25E197250();

  return MEMORY[0x28212EF38](a1, a2, a3, v6);
}

void sub_25E19714C()
{
  sub_25E197250();
  sub_25E1A521C();
  __break(1u);
}

uint64_t get_enum_tag_for_layout_string_Ieg_Sg(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
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

uint64_t sub_25E1971A0(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_25E1971E8(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

unint64_t sub_25E197250()
{
  result = qword_27FCDD5A0;
  if (!qword_27FCDD5A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FCDD5A0);
  }

  return result;
}

uint64_t PaymentUIBaseLocalizedString(for:table:bundle:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = sub_25E1A57EC();
  v6 = sub_25E1A57EC();
  v7 = sub_25E1A57EC();
  v8 = [a4 localizedStringForKey:v5 value:v6 table:v7];

  v9 = sub_25E1A580C();
  return v9;
}

id static NSBundle.PaymentUIBaseBundle.getter()
{
  if (qword_27FCDCAF0 != -1)
  {
    swift_once();
  }

  v1 = qword_27FCDD5A8;

  return v1;
}

uint64_t PaymentUIBaseLocalizedString(for:table:bundle:localization:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = sub_25E1A57EC();
  v6 = sub_25E1A57EC();
  v7 = sub_25E1A57EC();
  v8 = sub_25E1A57EC();
  v9 = [a4 localizedStringForKey:v5 value:v6 table:v7 localization:v8];

  v10 = sub_25E1A580C();
  return v10;
}

void sub_25E1974A4()
{
  v0 = sub_25E1A57EC();
  v1 = [objc_opt_self() bundleWithIdentifier_];

  if (v1)
  {
    qword_27FCDD5A8 = v1;
  }

  else
  {
    __break(1u);
  }
}

uint64_t PaymentUIBaseLocalizedString(formatKey:table:_:)()
{
  if (qword_27FCDCAF0 != -1)
  {
    swift_once();
  }

  v0 = qword_27FCDD5A8;
  v1 = sub_25E1A57EC();
  v2 = sub_25E1A57EC();
  v3 = sub_25E1A57EC();
  v4 = [v0 localizedStringForKey:v1 value:v2 table:v3];

  sub_25E1A580C();
  v5 = sub_25E1A57FC();

  return v5;
}

uint64_t LocalizedStringTable.init(rawValue:)@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_25E1A598C();

  *a1 = v2 != 0;
  return result;
}

unint64_t sub_25E1976A4()
{
  result = qword_27FCDD5B0;
  if (!qword_27FCDD5B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FCDD5B0);
  }

  return result;
}

uint64_t sub_25E1976F8()
{
  sub_25E1A59BC();
  sub_25E1A581C();
  return sub_25E1A59DC();
}

uint64_t sub_25E19776C()
{
  sub_25E1A59BC();
  sub_25E1A581C();
  return sub_25E1A59DC();
}

uint64_t sub_25E1977C0@<X0>(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_25E1A598C();

  *a2 = v5 != 0;
  return result;
}

PaymentUIBase::UserInterfaceType __swiftcall userInterface()()
{
  v1 = v0;
  v2 = [objc_opt_self() currentDevice];
  v3 = [v2 userInterfaceIdiom];

  v5 = 0x10000020403uLL >> (8 * v3);
  if (v3 >= 6)
  {
    LOBYTE(v5) = 0;
  }

  *v1 = v5;
  return result;
}

uint64_t EnvironmentValues.userInterfaceType.getter()
{
  sub_25E1832FC();

  return sub_25E1A4F9C();
}

uint64_t EnvironmentValues.userInterfaceType.setter(char *a1)
{
  v2 = *a1;
  sub_25E1832FC();
  return sub_25E1A4FAC();
}

uint64_t EnvironmentValues.shouldUseAccessibleLayout.getter()
{
  v0 = sub_25E1A518C();
  v33 = *(v0 - 8);
  v1 = *(v33 + 64);
  MEMORY[0x28223BE20](v0);
  v31 = &v31 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCDD5D8, &qword_25E1A86A0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v31 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCDD5E0, &qword_25E1A86A8);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7 - 8);
  v32 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v31 - v12;
  MEMORY[0x28223BE20](v11);
  v15 = &v31 - v14;
  v16 = sub_25E1A4DBC();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = &v31 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25E18B73C();
  sub_25E1A4F9C();
  v21 = v34;
  if (v34 == 2)
  {
    sub_25E1A4E9C();
    v22 = sub_25E1A4DAC();
    (*(v17 + 8))(v20, v16);
    if ((v22 & 1) == 0)
    {
      v21 = 0;
      return v21 & 1;
    }

    sub_25E1A4F0C();
    v23 = v33;
    (*(v33 + 104))(v13, *MEMORY[0x277CE0558], v0);
    (*(v23 + 56))(v13, 0, 1, v0);
    v24 = *(v3 + 48);
    sub_25E197F6C(v15, v6);
    sub_25E197F6C(v13, &v6[v24]);
    v25 = *(v23 + 48);
    if (v25(v6, 1, v0) == 1)
    {
      sub_25E1819EC(v13, &qword_27FCDD5E0, &qword_25E1A86A8);
      sub_25E1819EC(v15, &qword_27FCDD5E0, &qword_25E1A86A8);
      if (v25(&v6[v24], 1, v0) == 1)
      {
        sub_25E1819EC(v6, &qword_27FCDD5E0, &qword_25E1A86A8);
        v21 = 1;
        return v21 & 1;
      }
    }

    else
    {
      v26 = v32;
      sub_25E197F6C(v6, v32);
      if (v25(&v6[v24], 1, v0) != 1)
      {
        v27 = v31;
        (*(v23 + 32))(v31, &v6[v24], v0);
        sub_25E197FDC();
        v28 = v26;
        v21 = sub_25E1A57DC();
        v29 = *(v23 + 8);
        v29(v27, v0);
        sub_25E1819EC(v13, &qword_27FCDD5E0, &qword_25E1A86A8);
        sub_25E1819EC(v15, &qword_27FCDD5E0, &qword_25E1A86A8);
        v29(v28, v0);
        sub_25E1819EC(v6, &qword_27FCDD5E0, &qword_25E1A86A8);
        return v21 & 1;
      }

      sub_25E1819EC(v13, &qword_27FCDD5E0, &qword_25E1A86A8);
      sub_25E1819EC(v15, &qword_27FCDD5E0, &qword_25E1A86A8);
      (*(v23 + 8))(v26, v0);
    }

    sub_25E1819EC(v6, &qword_27FCDD5D8, &qword_25E1A86A0);
    v21 = 0;
  }

  return v21 & 1;
}

uint64_t EnvironmentValues.availableSheetItems.getter()
{
  sub_25E190900();
  sub_25E1A4F9C();
  return v1;
}

PaymentUIBase::UserInterfaceType_optional __swiftcall UserInterfaceType.init(rawValue:)(Swift::UInt rawValue)
{
  v2 = 7;
  if (rawValue < 7)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t sub_25E197F6C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCDD5E0, &qword_25E1A86A8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_25E197FDC()
{
  result = qword_27FCDD5E8;
  if (!qword_27FCDD5E8)
  {
    sub_25E1A518C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FCDD5E8);
  }

  return result;
}

uint64_t sub_25E198040@<X0>(_BYTE *a1@<X8>)
{
  if (qword_2815603D0 != -1)
  {
    v1 = a1;
    result = swift_once();
    a1 = v1;
  }

  *a1 = byte_2815603D8;
  return result;
}

uint64_t sub_25E1980A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_25E198A34();

  return MEMORY[0x282130D40](a1, a2, a3, a4, v8);
}

void sub_25E198110()
{
  v0 = [objc_opt_self() currentDevice];
  v1 = [v0 userInterfaceIdiom];

  byte_27FCDD5B9 = v1 == 1;
}

void sub_25E198198()
{
  v0 = objc_opt_self();
  v1 = [v0 currentDevice];
  v2 = [v1 userInterfaceIdiom];

  if (v2 == 1)
  {
    v3 = 1;
  }

  else
  {
    v4 = [v0 currentDevice];
    v5 = [v4 userInterfaceIdiom];

    v3 = v5 == 5;
  }

  byte_27FCDD5BA = v3;
}

uint64_t (*EnvironmentValues.userInterfaceType.modify(void *a1))(uint64_t *a1)
{
  *a1 = v1;
  a1[1] = sub_25E1832FC();
  sub_25E1A4F9C();
  return sub_25E1982CC;
}

uint64_t sub_25E1982CC(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  *(a1 + 17) = *(a1 + 16);
  return sub_25E1A4FAC();
}

unint64_t sub_25E198324()
{
  result = qword_281560410;
  if (!qword_281560410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281560410);
  }

  return result;
}

uint64_t (*EnvironmentValues.isPadIdiom.modify(uint64_t a1))(uint64_t *a1)
{
  *a1 = v1;
  *(a1 + 8) = sub_25E198324();
  sub_25E1A4F9C();
  *(a1 + 16) = *(a1 + 17);
  return sub_25E198400;
}

uint64_t sub_25E19842C(void (*a1)(void))
{
  a1();
  sub_25E1A4F9C();
  return v2;
}

unint64_t sub_25E198474()
{
  result = qword_281560420;
  if (!qword_281560420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281560420);
  }

  return result;
}

uint64_t (*EnvironmentValues.isLargeUI.modify(uint64_t a1))(uint64_t *a1)
{
  *a1 = v1;
  *(a1 + 8) = sub_25E198474();
  sub_25E1A4F9C();
  *(a1 + 16) = *(a1 + 17);
  return sub_25E198598;
}

uint64_t sub_25E1985B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_25E198CE4();

  return MEMORY[0x282130D40](a1, a2, a3, a4, v8);
}

uint64_t (*EnvironmentValues.shouldUseAccessibleLayout.modify(uint64_t a1))(uint64_t *a1)
{
  *a1 = v1;
  *(a1 + 8) = EnvironmentValues.shouldUseAccessibleLayout.getter() & 1;
  return sub_25E198660;
}

uint64_t sub_25E198660(uint64_t *a1)
{
  v1 = *a1;
  *(a1 + 9) = *(a1 + 8);
  sub_25E18B73C();
  return sub_25E1A4FAC();
}

uint64_t sub_25E1986A8()
{
  v0 = [objc_opt_self() mainScreen];
  v1 = [v0 fixedCoordinateSpace];

  [v1 bounds];
  v3 = v2;
  result = swift_unknownObjectRelease();
  qword_27FCDD5C0 = v3;
  return result;
}

uint64_t sub_25E198730()
{
  if (qword_281560258 != -1)
  {
    result = swift_once();
  }

  byte_27FCDD5C8 = *&qword_27FCDD5C0 <= 320.0;
  return result;
}

uint64_t sub_25E1987BC@<X0>(void *a1@<X2>, _BYTE *a2@<X3>, _BYTE *a3@<X8>)
{
  if (*a1 != -1)
  {
    v3 = a2;
    v4 = a3;
    result = swift_once();
    a3 = v4;
    a2 = v3;
  }

  *a3 = *a2;
  return result;
}

uint64_t (*EnvironmentValues.isCompactLayout.modify(uint64_t a1))(uint64_t *a1)
{
  *a1 = v1;
  *(a1 + 8) = sub_25E18B790();
  sub_25E1A4F9C();
  *(a1 + 16) = *(a1 + 17);
  return sub_25E198878;
}

uint64_t sub_25E198884(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  *(a1 + 17) = *(a1 + 16);
  return sub_25E1A4FAC();
}

uint64_t sub_25E1988C8@<X0>(void *a1@<X8>)
{
  if (qword_27FCDCAF8 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  *a1 = qword_27FCDD5D0;
}

uint64_t (*EnvironmentValues.availableSheetItems.modify(uint64_t a1))(void *a1, char a2)
{
  *(a1 + 16) = v1;
  *(a1 + 24) = sub_25E190900();
  sub_25E1A4F9C();
  return sub_25E19899C;
}

uint64_t sub_25E19899C(void *a1, char a2)
{
  a1[1] = *a1;
  v3 = a1[2];
  v4 = a1[3];
  if (a2)
  {

    sub_25E1A4FAC();
    v5 = *a1;
  }

  else
  {
    v7 = a1[3];
    return sub_25E1A4FAC();
  }
}

unint64_t sub_25E198A34()
{
  result = qword_27FCDD5F0;
  if (!qword_27FCDD5F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FCDD5F0);
  }

  return result;
}

uint64_t keypath_get_4Tm@<X0>(void (*a1)(void)@<X3>, _BYTE *a2@<X8>)
{
  a1();
  result = sub_25E1A4F9C();
  *a2 = v4;
  return result;
}

uint64_t keypath_set_5Tm(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void))
{
  v6 = *a1;
  a5();
  return sub_25E1A4FAC();
}

uint64_t getEnumTagSinglePayload for UserInterfaceType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

  if (a2 + 6 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 6) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 6;
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

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for UserInterfaceType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_25E198CE4()
{
  result = qword_27FCDD5F8;
  if (!qword_27FCDD5F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FCDCC28, &qword_25E1A6800);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FCDD5F8);
  }

  return result;
}

uint64_t sub_25E198E40(uint64_t TupleTypeMetadata, unint64_t a2, uint64_t a3)
{
  v5 = TupleTypeMetadata;
  if (a2 == 1)
  {
    v6 = *(a3 & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    MEMORY[0x28223BE20](TupleTypeMetadata);
    v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (a2)
    {
      v9 = 0;
      v10 = a3 & 0xFFFFFFFFFFFFFFFELL;
      if (a2 < 4)
      {
        goto LABEL_9;
      }

      if (&v8[-v10] < 0x20)
      {
        goto LABEL_9;
      }

      v9 = a2 & 0xFFFFFFFFFFFFFFFCLL;
      v11 = (v10 + 16);
      v12 = v8 + 16;
      v13 = a2 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v14 = *v11;
        *(v12 - 1) = *(v11 - 1);
        *v12 = v14;
        v11 += 2;
        v12 += 2;
        v13 -= 4;
      }

      while (v13);
      if (v9 != a2)
      {
LABEL_9:
        v15 = a2 - v9;
        v16 = 8 * v9;
        v17 = &v8[8 * v9];
        v18 = (v10 + v16);
        do
        {
          v19 = *v18++;
          *v17 = v19;
          v17 += 8;
          --v15;
        }

        while (v15);
      }
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
    v6 = TupleTypeMetadata;
  }

  v20 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](TupleTypeMetadata);
  v22 = &v31 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v23 = (a3 & 0xFFFFFFFFFFFFFFFELL);
    v24 = (v6 + 32);
    v25 = a2;
    do
    {
      if (a2 == 1)
      {
        v26 = 0;
      }

      else
      {
        v26 = *v24;
      }

      v28 = *v23++;
      v27 = v28;
      v29 = *v5++;
      (*(*(v27 - 8) + 16))(&v22[v26], v29);
      v24 += 4;
      --v25;
    }

    while (v25);
  }

  return sub_25E1A575C();
}

uint64_t sub_25E199010(uint64_t a1, uint64_t a2)
{
  v4 = sub_25E1A514C();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  (*(*(a2 - 8) + 16))(&v8 - v6, a1, a2);
  swift_storeEnumTagMultiPayload();
  return sub_25E1A515C();
}

uint64_t sub_25E199108(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_25E1A514C();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  (*(*(a3 - 8) + 16))(&v9 - v7, a1, a3);
  swift_storeEnumTagMultiPayload();
  return sub_25E1A515C();
}

uint64_t PaymentItem<>.init(icon:primaryLabel:secondaryLabel:chevronStyle:)@<X0>(uint64_t (*a1)(uint64_t)@<X0>, uint64_t (*a2)(uint64_t)@<X2>, void (*a3)(uint64_t)@<X4>, unsigned __int8 *a4@<X6>, uint64_t a5@<X7>, uint64_t a6@<X8>, uint64_t a7)
{
  v10 = *a4;
  v9 = 0;
  *&v8 = a5;
  *(&v8 + 1) = a7;
  return PaymentItem.init(icon:primaryLabel:secondaryLabel:chevronStyle:secondaryContent:secondaryContentStyle:alwaysCenterIconVertically:mainContentAction:silentAction:)(a1, a2, a3, &v10, sub_25E1A2510, a6, 0, &v9, 0, 0, 0, 0, 0, v8);
}

double sub_25E199288(uint64_t a1)
{
  v2 = (v1 + *(a1 + 116));
  v5 = *v2;
  v6 = v2[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCDD6F8, &qword_25E1A8B88);
  sub_25E1A55EC();
  return v4;
}

uint64_t sub_25E1992E8(uint64_t a1)
{
  v2 = (v1 + *(a1 + 116));
  v4 = *v2;
  v5 = v2[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCDD6F8, &qword_25E1A8B88);
  return sub_25E1A55FC();
}

uint64_t sub_25E199348(uint64_t a1)
{
  v3 = sub_25E1A4F8C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v12[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = v1 + *(a1 + 120);
  v9 = *v8;
  if (*(v8 + 8) != 1)
  {

    sub_25E1A588C();
    v10 = sub_25E1A525C();
    sub_25E1A4C0C();

    sub_25E1A4F7C();
    swift_getAtKeyPath();
    sub_25E1832F0(v9, 0);
    (*(v4 + 8))(v7, v3);
    LOBYTE(v9) = v12[15];
  }

  return v9 & 1;
}

uint64_t sub_25E19949C(uint64_t a1)
{
  v3 = sub_25E1A4F8C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v12[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = v1 + *(a1 + 124);
  v9 = *v8;
  if (*(v8 + 8) != 1)
  {

    sub_25E1A588C();
    v10 = sub_25E1A525C();
    sub_25E1A4C0C();

    sub_25E1A4F7C();
    swift_getAtKeyPath();
    sub_25E1832F0(v9, 0);
    (*(v4 + 8))(v7, v3);
    LOBYTE(v9) = v12[15];
  }

  return v9 & 1;
}

uint64_t PaymentItem.init(icon:primaryLabel:secondaryLabel:chevronStyle:secondaryContent:secondaryContentStyle:alwaysCenterIconVertically:mainContentAction:silentAction:)@<X0>(uint64_t (*a1)(uint64_t)@<X0>, uint64_t (*a2)(uint64_t)@<X2>, void (*a3)(uint64_t)@<X4>, unsigned __int8 *a4@<X6>, uint64_t (*a5)(uint64_t)@<X7>, uint64_t a6@<X8>, uint64_t a7, char *a8, char a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, __int128 a14)
{
  v18 = *a4;
  v36 = *a8;
  v19 = type metadata accessor for PaymentItem();
  v20 = (a6 + v19[29]);
  sub_25E1A55DC();
  *v20 = a14;
  v21 = a6 + v19[30];
  *v21 = swift_getKeyPath();
  *(v21 + 8) = 0;
  v22 = a6 + v19[31];
  *v22 = swift_getKeyPath();
  *(v22 + 8) = 0;
  v23 = v19[32];
  *(a6 + v23) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCDD298, &qword_25E1A7AD0);
  v24 = swift_storeEnumTagMultiPayload();
  *(a6 + v19[33]) = 0x4052800000000000;
  *(a6 + v19[34]) = 0x402C000000000000;
  *(a6 + v19[35]) = 0x4044000000000000;
  v25 = a1(v24);
  v26 = a6 + v19[21];
  v27 = a2(v25);
  v28 = a6 + v19[22];
  a3(v27);
  v29 = v19[23];
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCDD2A0, &unk_25E1A7AD8);
  v31 = (*(*(v30 - 8) + 56))(a6 + v29, (v18 + 1), 6, v30);
  v32 = a6 + v19[24];
  result = a5(v31);
  *(a6 + v19[25]) = v36;
  *(a6 + v19[26]) = a9;
  v34 = (a6 + v19[27]);
  *v34 = a10;
  v34[1] = a11;
  v35 = (a6 + v19[28]);
  *v35 = a12;
  v35[1] = a13;
  return result;
}

uint64_t PaymentItem.init(icon:primaryLabel:secondaryLabel:accessoryViewStyle:secondaryContent:secondaryContentStyle:alwaysCenterIconVertically:mainContentAction:silentAction:)@<X0>(uint64_t (*a1)(uint64_t)@<X0>, uint64_t (*a2)(uint64_t)@<X2>, void (*a3)(uint64_t)@<X4>, uint64_t a4@<X6>, void (*a5)(uint64_t)@<X7>, uint64_t a6@<X8>, uint64_t a7, char *a8, char a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, __int128 a14)
{
  v34 = *a8;
  v18 = type metadata accessor for PaymentItem();
  v19 = (a6 + v18[29]);
  sub_25E1A55DC();
  *v19 = a14;
  v20 = a6 + v18[30];
  *v20 = swift_getKeyPath();
  *(v20 + 8) = 0;
  v21 = a6 + v18[31];
  *v21 = swift_getKeyPath();
  *(v21 + 8) = 0;
  v22 = v18[32];
  *(a6 + v22) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCDD298, &qword_25E1A7AD0);
  v23 = swift_storeEnumTagMultiPayload();
  *(a6 + v18[33]) = 0x4052800000000000;
  *(a6 + v18[34]) = 0x402C000000000000;
  *(a6 + v18[35]) = 0x4044000000000000;
  v24 = a1(v23);
  v25 = a6 + v18[21];
  v26 = a2(v24);
  v27 = a6 + v18[22];
  a3(v26);
  v28 = sub_25E1A2400(a4, a6 + v18[23], type metadata accessor for AccessoryViewStyle);
  v29 = a6 + v18[24];
  a5(v28);
  result = sub_25E1A24B0(a4, type metadata accessor for AccessoryViewStyle);
  *(a6 + v18[25]) = v34;
  *(a6 + v18[26]) = a9;
  v31 = (a6 + v18[27]);
  *v31 = a10;
  v31[1] = a11;
  v32 = (a6 + v18[28]);
  *v32 = a12;
  v32[1] = a13;
  return result;
}

uint64_t sub_25E199AAC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v107 = a2;
  v97 = a1[2];
  v3 = sub_25E1A4DDC();
  v96 = a1[6];
  v137 = v96;
  v138 = MEMORY[0x277CDF678];
  v135 = v3;
  WitnessTable = swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_25E1A524C();
  sub_25E1A4DDC();
  v95 = a1[3];
  sub_25E1A4DDC();
  swift_getTupleTypeMetadata2();
  sub_25E1A574C();
  swift_getWitnessTable();
  sub_25E1A564C();
  v94 = a1[4];
  sub_25E1A58CC();
  type metadata accessor for AccessoryView(255);
  swift_getTupleTypeMetadata2();
  sub_25E1A574C();
  swift_getWitnessTable();
  sub_25E1A564C();
  sub_25E1A58CC();
  swift_getTupleTypeMetadata2();
  sub_25E1A574C();
  swift_getWitnessTable();
  sub_25E1A564C();
  sub_25E1A4DDC();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FCDD600, &qword_25E1A8A40);
  v103 = a1;
  v93 = a1[5];
  sub_25E1A4DDC();
  sub_25E1A4DDC();
  sub_25E1A4DDC();
  sub_25E1A4DDC();
  v92 = a1[9];
  v133 = v92;
  v134 = MEMORY[0x277CDFC60];
  v4 = swift_getWitnessTable();
  v5 = MEMORY[0x277CDF918];
  v131 = v4;
  v132 = MEMORY[0x277CDF918];
  v129 = swift_getWitnessTable();
  v130 = v5;
  v127 = swift_getWitnessTable();
  v128 = v5;
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_25E1A4DDC();
  swift_getTupleTypeMetadata2();
  sub_25E1A574C();
  sub_25E1A58CC();
  swift_getTupleTypeMetadata2();
  sub_25E1A574C();
  swift_getWitnessTable();
  v6 = sub_25E1A566C();
  v7 = swift_getWitnessTable();
  v135 = v6;
  WitnessTable = v7;
  swift_getOpaqueTypeMetadata2();
  sub_25E1A4DDC();
  sub_25E1A4DDC();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FCDD608, &qword_25E1A8A48);
  sub_25E1A4DDC();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FCDD050, &qword_25E1A8A50);
  v8 = sub_25E1A4DDC();
  v98 = *(v8 - 8);
  v9 = *(v98 + 64);
  v10 = MEMORY[0x28223BE20](v8);
  v90 = &v86 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v89 = &v86 - v12;
  v135 = v6;
  WitnessTable = v7;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v14 = sub_25E1A2468(&qword_27FCDCCB8, MEMORY[0x277CDE470]);
  v125 = OpaqueTypeConformance2;
  v126 = v14;
  v123 = swift_getWitnessTable();
  v124 = MEMORY[0x277CDFC60];
  v15 = swift_getWitnessTable();
  v16 = sub_25E17F9C0(&qword_27FCDD610, &qword_27FCDD608, &qword_25E1A8A48);
  v121 = v15;
  v122 = v16;
  v17 = swift_getWitnessTable();
  v18 = sub_25E17F9C0(&qword_27FCDD0A8, &qword_27FCDD050, &qword_25E1A8A50);
  v119 = v17;
  v120 = v18;
  v19 = swift_getWitnessTable();
  v135 = v8;
  WitnessTable = v19;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v88 = *(OpaqueTypeMetadata2 - 8);
  v21 = *(v88 + 64);
  v22 = MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v24 = &v86 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v26 = &v86 - v25;
  v108 = v19;
  v27 = sub_25E1A562C();
  v101 = OpaqueTypeMetadata2;
  v28 = sub_25E1A516C();
  v100 = *(v28 - 8);
  v29 = *(v100 + 64);
  v30 = MEMORY[0x28223BE20](v28);
  v99 = &v86 - v31;
  v91 = *(v27 - 8);
  v32 = *(v91 + 64);
  v33 = MEMORY[0x28223BE20](v30);
  v35 = &v86 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v33);
  v37 = &v86 - v36;
  v102 = v8;
  v38 = sub_25E1A516C();
  v39 = v106;
  v40 = v38;
  v105 = *(v38 - 8);
  v41 = *(v105 + 64);
  v42 = MEMORY[0x28223BE20](v103);
  v44 = &v86 - v43;
  v45 = (v39 + *(v42 + 108));
  v46 = *v45;
  v104 = v44;
  if (v46)
  {
    v98 = v40;
    v89 = v45[1];
    v47 = MEMORY[0x28223BE20](v42);
    v90 = v28;
    *&v48 = v97;
    *(&v48 + 1) = v95;
    *&v49 = v94;
    *(&v49 + 1) = v93;
    *(&v86 - 5) = v48;
    *(&v86 - 4) = v49;
    *(&v86 - 6) = v96;
    *(&v86 - 5) = *(v47 + 56);
    *(&v86 - 3) = v92;
    *(&v86 - 2) = v39;
    sub_25E17FA64(v46);

    v50 = v102;
    sub_25E1A560C();
    v51 = swift_getWitnessTable();
    sub_25E181B2C(v35, v27, v51);
    v52 = *(v91 + 8);
    v52(v35, v27);
    sub_25E181B2C(v37, v27, v51);
    v135 = v50;
    WitnessTable = v108;
    v53 = swift_getOpaqueTypeConformance2();
    v54 = v99;
    sub_25E199010(v35, v27);
    v109 = v51;
    v110 = v53;
    v55 = v90;
    swift_getWitnessTable();
    v56 = v104;
    sub_25E199010(v54, v55);
    sub_25E1A19BC(v46);
    (*(v100 + 8))(v54, v55);
    v52(v35, v27);
    v52(v37, v27);
    v40 = v98;
    v57 = v50;
  }

  else
  {
    v87 = v26;
    v58 = v89;
    v97 = v27;
    v59 = v102;
    v60 = (v39 + *(v42 + 112));
    v61 = *v60;
    if (*v60)
    {
      v62 = v24;
      v63 = v60[1];
      v64 = v42;

      v65 = v58;
      sub_25E19B1EC(v64, v58);
      v66 = swift_allocObject();
      *(v66 + 16) = v61;
      *(v66 + 24) = v63;
      v96 = v63;

      v57 = v59;
      v106 = v61;
      v67 = v108;
      sub_25E1A542C();

      (*(v98 + 8))(v65, v57);
      v135 = v57;
      WitnessTable = v67;
      v68 = swift_getOpaqueTypeConformance2();
      v69 = v87;
      v70 = v101;
      sub_25E181B2C(v62, v101, v68);
      v98 = v40;
      v71 = *(v88 + 8);
      v71(v62, v70);
      sub_25E181B2C(v69, v70, v68);
      v72 = v97;
      v73 = swift_getWitnessTable();
      v74 = v99;
      sub_25E199108(v62, v72, v70);
      v111 = v73;
      v112 = v68;
      swift_getWitnessTable();
      v56 = v104;
      sub_25E199010(v74, v28);
      sub_25E1A19BC(v106);
      (*(v100 + 8))(v74, v28);
      v71(v62, v70);
      v71(v87, v70);
      v40 = v98;
    }

    else
    {
      v75 = v90;
      sub_25E19B1EC(v42, v90);
      v76 = v108;
      sub_25E181B2C(v75, v59, v108);
      v77 = *(v98 + 8);
      v77(v75, v59);
      sub_25E181B2C(v58, v59, v76);
      v78 = swift_getWitnessTable();
      v135 = v59;
      WitnessTable = v76;
      v79 = swift_getOpaqueTypeConformance2();
      v117 = v78;
      v118 = v79;
      swift_getWitnessTable();
      v80 = v104;
      sub_25E199108(v75, v28, v59);
      v77(v75, v59);
      v77(v58, v59);
      v57 = v59;
      v56 = v80;
    }
  }

  v81 = swift_getWitnessTable();
  v82 = v108;
  v135 = v57;
  WitnessTable = v108;
  v83 = swift_getOpaqueTypeConformance2();
  v115 = v81;
  v116 = v83;
  v113 = swift_getWitnessTable();
  v114 = v82;
  v84 = swift_getWitnessTable();
  sub_25E181B2C(v56, v40, v84);
  return (*(v105 + 8))(v56, v40);
}

uint64_t sub_25E19AAAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v41 = a8;
  v40 = a7;
  v38 = a6;
  v35 = a5;
  v36 = a4;
  v37 = a3;
  v39 = a2;
  v42 = a1;
  v43 = a9;
  v34[2] = a10;
  sub_25E1A4DDC();
  v68 = a6;
  v69 = MEMORY[0x277CDF678];
  v11 = MEMORY[0x277CDFAD8];
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_25E1A524C();
  sub_25E1A4DDC();
  sub_25E1A4DDC();
  swift_getTupleTypeMetadata2();
  sub_25E1A574C();
  swift_getWitnessTable();
  sub_25E1A564C();
  sub_25E1A58CC();
  type metadata accessor for AccessoryView(255);
  swift_getTupleTypeMetadata2();
  sub_25E1A574C();
  swift_getWitnessTable();
  sub_25E1A564C();
  sub_25E1A58CC();
  swift_getTupleTypeMetadata2();
  sub_25E1A574C();
  swift_getWitnessTable();
  sub_25E1A564C();
  sub_25E1A4DDC();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FCDD600, &qword_25E1A8A40);
  sub_25E1A4DDC();
  sub_25E1A4DDC();
  sub_25E1A4DDC();
  sub_25E1A4DDC();
  v66 = a10;
  v67 = MEMORY[0x277CDFC60];
  WitnessTable = swift_getWitnessTable();
  v13 = MEMORY[0x277CDF918];
  v64 = WitnessTable;
  v65 = MEMORY[0x277CDF918];
  v34[3] = v11;
  v62 = swift_getWitnessTable();
  v63 = v13;
  v60 = swift_getWitnessTable();
  v61 = v13;
  swift_getWitnessTable();
  v34[1] = MEMORY[0x277CDEAE8];
  swift_getOpaqueTypeMetadata2();
  sub_25E1A4DDC();
  swift_getTupleTypeMetadata2();
  sub_25E1A574C();
  sub_25E1A58CC();
  swift_getTupleTypeMetadata2();
  sub_25E1A574C();
  swift_getWitnessTable();
  v14 = sub_25E1A566C();
  v15 = swift_getWitnessTable();
  v52 = v14;
  v53 = v15;
  swift_getOpaqueTypeMetadata2();
  sub_25E1A4DDC();
  sub_25E1A4DDC();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FCDD608, &qword_25E1A8A48);
  sub_25E1A4DDC();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FCDD050, &qword_25E1A8A50);
  v16 = sub_25E1A4DDC();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v19 = MEMORY[0x28223BE20](v16);
  v21 = v34 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v23 = v34 - v22;
  v52 = v39;
  v53 = v37;
  v54 = v36;
  v55 = v35;
  v56 = v38;
  v57 = v40;
  v58 = v41;
  v59 = a10;
  v24 = type metadata accessor for PaymentItem();
  sub_25E19B1EC(v24, v21);
  v52 = v14;
  v53 = v15;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v26 = sub_25E1A2468(&qword_27FCDCCB8, MEMORY[0x277CDE470]);
  v50 = OpaqueTypeConformance2;
  v51 = v26;
  v48 = swift_getWitnessTable();
  v49 = MEMORY[0x277CDFC60];
  v27 = swift_getWitnessTable();
  v28 = sub_25E17F9C0(&qword_27FCDD610, &qword_27FCDD608, &qword_25E1A8A48);
  v46 = v27;
  v47 = v28;
  v29 = swift_getWitnessTable();
  v30 = sub_25E17F9C0(&qword_27FCDD0A8, &qword_27FCDD050, &qword_25E1A8A50);
  v44 = v29;
  v45 = v30;
  v31 = swift_getWitnessTable();
  sub_25E181B2C(v21, v16, v31);
  v32 = *(v17 + 8);
  v32(v21, v16);
  sub_25E181B2C(v23, v16, v31);
  return (v32)(v23, v16);
}

uint64_t sub_25E19B1EC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v96 = a2;
  v95 = sub_25E1A4E3C();
  v3 = *(*(v95 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v95);
  v94 = (v70 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v92 = *(a1 - 1);
  v93 = *(v92 + 64);
  MEMORY[0x28223BE20](v4);
  v91 = v70 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_25E1A51AC();
  v89 = *(v7 - 8);
  v90 = v7;
  v8 = *(v89 + 64);
  MEMORY[0x28223BE20](v7);
  v88 = v70 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87.i64[0] = a1[2];
  v10 = sub_25E1A4DDC();
  v102 = a1[6];
  v126 = v102;
  v127 = MEMORY[0x277CDF678];
  v11 = MEMORY[0x277CDFAD8];
  WitnessTable = swift_getWitnessTable();
  v124 = v10;
  v125 = WitnessTable;
  swift_getOpaqueTypeMetadata2();
  v98 = sub_25E1A524C();
  sub_25E1A4DDC();
  *&v86 = a1[3];
  sub_25E1A4DDC();
  swift_getTupleTypeMetadata2();
  sub_25E1A574C();
  swift_getWitnessTable();
  sub_25E1A564C();
  v85.i64[0] = a1[4];
  sub_25E1A58CC();
  type metadata accessor for AccessoryView(255);
  swift_getTupleTypeMetadata2();
  sub_25E1A574C();
  swift_getWitnessTable();
  sub_25E1A564C();
  sub_25E1A58CC();
  swift_getTupleTypeMetadata2();
  sub_25E1A574C();
  swift_getWitnessTable();
  sub_25E1A564C();
  sub_25E1A4DDC();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FCDD600, &qword_25E1A8A40);
  v97 = a1;
  v79 = a1[5];
  sub_25E1A4DDC();
  sub_25E1A4DDC();
  sub_25E1A4DDC();
  v13 = sub_25E1A4DDC();
  v100 = a1[9];
  v122 = v100;
  v123 = MEMORY[0x277CDFC60];
  v14 = swift_getWitnessTable();
  v15 = MEMORY[0x277CDF918];
  v120 = v14;
  v121 = MEMORY[0x277CDF918];
  v99 = v11;
  v118 = swift_getWitnessTable();
  v119 = v15;
  v116 = swift_getWitnessTable();
  v117 = v15;
  v16 = swift_getWitnessTable();
  v124 = v13;
  v125 = v16;
  v70[1] = MEMORY[0x277CDEAE8];
  swift_getOpaqueTypeMetadata2();
  sub_25E1A4DDC();
  swift_getTupleTypeMetadata2();
  sub_25E1A574C();
  sub_25E1A58CC();
  swift_getTupleTypeMetadata2();
  sub_25E1A574C();
  v72 = swift_getWitnessTable();
  v17 = sub_25E1A566C();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  v21 = v70 - v20;
  v22 = swift_getWitnessTable();
  v124 = v17;
  v125 = v22;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v73 = *(OpaqueTypeMetadata2 - 8);
  v24 = *(v73 + 64);
  MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v26 = v70 - v25;
  v71 = sub_25E1A4DDC();
  v74 = *(v71 - 8);
  v27 = *(v74 + 64);
  MEMORY[0x28223BE20](v71);
  v70[0] = v70 - v28;
  v76 = sub_25E1A4DDC();
  v80 = *(v76 - 8);
  v29 = *(v80 + 64);
  MEMORY[0x28223BE20](v76);
  v98 = v70 - v30;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FCDD608, &qword_25E1A8A48);
  v78 = sub_25E1A4DDC();
  v83 = *(v78 - 8);
  v31 = *(v83 + 64);
  MEMORY[0x28223BE20](v78);
  v75 = v70 - v32;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FCDD050, &qword_25E1A8A50);
  v82 = sub_25E1A4DDC();
  v84 = *(v82 - 8);
  v33 = *(v84 + 64);
  v34 = MEMORY[0x28223BE20](v82);
  v77 = v70 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v34);
  v81 = v70 - v36;
  sub_25E1A503C();
  v37.i64[0] = v87.i64[0];
  v37.i64[1] = v86;
  *&v38 = v85.i64[0];
  *(&v38 + 1) = v79;
  v86 = v38;
  v87 = v37;
  v103 = v37;
  v104 = v38;
  v37.i64[0] = v102;
  v39 = v101;
  v107 = v101;
  v40 = v97;
  v85 = *(v97 + 7);
  *&v38 = vdupq_laneq_s64(v85, 1).u64[0];
  *(&v38 + 1) = v100;
  v105 = vzip1q_s64(v37, v85);
  v106 = v38;
  sub_25E1A565C();
  v41 = v88;
  sub_25E1A519C();
  sub_25E1A546C();
  (*(v89 + 8))(v41, v90);
  (*(v18 + 8))(v21, v17);
  v124 = v17;
  v125 = v22;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v43 = v70[0];
  sub_25E1A548C();
  (*(v73 + 8))(v26, OpaqueTypeMetadata2);
  v44 = v40;
  v45 = *(v39 + *(v40 + 33));
  sub_25E1A572C();
  v46 = sub_25E1A2468(&qword_27FCDCCB8, MEMORY[0x277CDE470]);
  v114 = OpaqueTypeConformance2;
  v115 = v46;
  v68 = v71;
  v69 = swift_getWitnessTable();
  sub_25E1A54BC();
  (*(v74 + 8))(v43, v68);
  v48 = v91;
  v47 = v92;
  (*(v92 + 16))(v91, v39, v40);
  v49 = v47;
  v50 = (*(v47 + 80) + 80) & ~*(v47 + 80);
  v51 = swift_allocObject();
  v52 = v86;
  *(v51 + 16) = v87;
  *(v51 + 32) = v52;
  *(v51 + 48) = v102;
  *(v51 + 56) = v85;
  *(v51 + 72) = v100;
  (*(v49 + 32))(v51 + v50, v48, v44);
  v124 = sub_25E1A19FC;
  v125 = v51;
  sub_25E1A572C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCDD6C8, &qword_25E1A8B78);
  v112 = v69;
  v113 = MEMORY[0x277CDFC60];
  v53 = v76;
  v54 = swift_getWitnessTable();
  sub_25E17F9C0(&qword_27FCDD6D0, &qword_27FCDD6C8, &qword_25E1A8B78);
  v55 = v75;
  v56 = v98;
  sub_25E1A53FC();

  (*(v80 + 8))(v56, v53);
  v57 = v94;
  sub_25E19EE24(v94);
  v58 = sub_25E17F9C0(&qword_27FCDD610, &qword_27FCDD608, &qword_25E1A8A48);
  v110 = v54;
  v111 = v58;
  v59 = v78;
  v60 = swift_getWitnessTable();
  sub_25E1A2468(&qword_27FCDD6D8, MEMORY[0x277CDFC08]);
  v61 = v77;
  sub_25E1A551C();
  sub_25E1A24B0(v57, MEMORY[0x277CDFC08]);
  (*(v83 + 8))(v55, v59);
  v62 = sub_25E17F9C0(&qword_27FCDD0A8, &qword_27FCDD050, &qword_25E1A8A50);
  v108 = v60;
  v109 = v62;
  v63 = v82;
  v64 = swift_getWitnessTable();
  v65 = v81;
  sub_25E181B2C(v61, v63, v64);
  v66 = *(v84 + 8);
  v66(v61, v63);
  sub_25E181B2C(v65, v63, v64);
  return (v66)(v65, v63);
}

uint64_t sub_25E19BF78@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, void (*a3)(void, void, void)@<X2>, uint64_t a4@<X3>, void *a5@<X4>, uint64_t a6@<X5>, void (*a7)(void, void)@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v189 = a8;
  v190 = a7;
  v194 = a6;
  v195 = a3;
  v196 = a5;
  v187 = a4;
  v193 = a2;
  v173 = a1;
  v183 = a9;
  v185 = a10;
  v10 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FCDD600, &qword_25E1A8A40);
  sub_25E1A4DDC();
  sub_25E1A4DDC();
  sub_25E1A4DDC();
  v11 = sub_25E1A4DDC();
  v231 = a10;
  v232 = MEMORY[0x277CDFC60];
  v12 = MEMORY[0x277CDFAD8];
  WitnessTable = swift_getWitnessTable();
  v229 = WitnessTable;
  v230 = MEMORY[0x277CDF918];
  v13 = MEMORY[0x277CDF918];
  v160 = swift_getWitnessTable();
  v227 = v160;
  v228 = v13;
  v161 = swift_getWitnessTable();
  v225 = v161;
  v226 = v13;
  v176 = v12;
  v213 = v11;
  v162 = swift_getWitnessTable();
  v214 = v162;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v188 = sub_25E1A524C();
  v15 = sub_25E1A4DDC();
  swift_getTupleTypeMetadata2();
  v16 = sub_25E1A574C();
  v181 = *(v16 - 8);
  v17 = *(v181 + 64);
  MEMORY[0x28223BE20](v16);
  v164 = &v135 - v18;
  v19 = sub_25E1A51AC();
  v157 = *(v19 - 8);
  v158 = v19;
  v20 = *(v157 + 64);
  MEMORY[0x28223BE20](v19);
  v155 = &v135 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v149 = swift_checkMetadataState();
  v145 = *(v149 - 8);
  v22 = *(v145 + 64);
  MEMORY[0x28223BE20](v149);
  v140 = &v135 - v23;
  v147 = swift_checkMetadataState();
  v143 = *(v147 - 8);
  v24 = *(v143 + 64);
  MEMORY[0x28223BE20](v147);
  v139 = &v135 - v25;
  v146 = swift_checkMetadataState();
  v141 = *(v146 - 8);
  v26 = *(v141 + 64);
  MEMORY[0x28223BE20](v146);
  v137 = &v135 - v27;
  v148 = swift_checkMetadataState();
  v142 = *(v148 - 8);
  v28 = *(v142 + 64);
  v29 = MEMORY[0x28223BE20](v148);
  v138 = &v135 - v30;
  v163 = OpaqueTypeMetadata2;
  v150 = *(OpaqueTypeMetadata2 - 8);
  v31 = *(v150 + 64);
  v32 = MEMORY[0x28223BE20](v29);
  v144 = &v135 - v33;
  v165 = v15;
  v153 = *(v15 - 8);
  v34 = *(v153 + 64);
  v35 = MEMORY[0x28223BE20](v32);
  v151 = &v135 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v35);
  v156 = &v135 - v37;
  v178 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCDD700, &qword_25E1A8B90);
  v38 = *(*(v178 - 8) + 64);
  v39 = MEMORY[0x28223BE20](v178);
  v136 = &v135 - v40;
  v166 = v10;
  v152 = *(v10 - 8);
  v41 = *(v152 + 64);
  v42 = MEMORY[0x28223BE20](v39);
  v154 = &v135 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v42);
  v186 = &v135 - v44;
  v45 = v196;
  v167 = sub_25E1A58CC();
  v169 = *(v167 - 8);
  v46 = *(v169 + 64);
  v47 = MEMORY[0x28223BE20](v167);
  v168 = &v135 - v48;
  v184 = *(v45 - 1);
  v49 = *(v184 + 64);
  MEMORY[0x28223BE20](v47);
  v177 = &v135 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  v182 = v16;
  v51 = sub_25E1A58CC();
  v179 = *(v51 - 8);
  v180 = v51;
  v52 = *(v179 + 64);
  v53 = MEMORY[0x28223BE20](v51);
  v192 = &v135 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v53);
  v191 = &v135 - v55;
  v56 = sub_25E1A4DDC();
  v223 = v194;
  v224 = MEMORY[0x277CDF678];
  v57 = swift_getWitnessTable();
  v213 = v56;
  v214 = v57;
  swift_getOpaqueTypeMetadata2();
  sub_25E1A4DDC();
  sub_25E1A4DDC();
  swift_getTupleTypeMetadata2();
  sub_25E1A574C();
  swift_getWitnessTable();
  sub_25E1A564C();
  v58 = v187;
  sub_25E1A58CC();
  type metadata accessor for AccessoryView(255);
  swift_getTupleTypeMetadata2();
  sub_25E1A574C();
  swift_getWitnessTable();
  sub_25E1A564C();
  sub_25E1A58CC();
  swift_getTupleTypeMetadata2();
  sub_25E1A574C();
  v175 = swift_getWitnessTable();
  v59 = sub_25E1A564C();
  v60 = *(v59 - 8);
  v61 = *(v60 + 64);
  MEMORY[0x28223BE20](v59);
  v63 = &v135 - v62;
  v64 = sub_25E1A4DDC();
  v188 = *(v64 - 8);
  v65 = *(v188 + 64);
  v66 = MEMORY[0x28223BE20](v64);
  v68 = &v135 - ((v67 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v66);
  v70 = &v135 - v69;
  v197 = v193;
  v198 = v195;
  v199 = v58;
  v200 = v196;
  v201 = v194;
  v202 = v190;
  v203 = v189;
  v71 = v185;
  v204 = v185;
  v72 = v173;
  v205 = v173;
  sub_25E1A4FCC();
  sub_25E1A563C();
  v73 = swift_getWitnessTable();
  sub_25E1A54CC();
  (*(v60 + 8))(v63, v59);
  v74 = v167;
  v221 = v73;
  v222 = MEMORY[0x277CDF918];
  v75 = swift_getWitnessTable();
  v174 = v70;
  v76 = v169;
  v170 = v75;
  sub_25E181B2C(v68, v64, v75);
  v77 = *(v188 + 8);
  v175 = v68;
  v176 = v64;
  v78 = v68;
  v79 = v168;
  v171 = v77;
  v172 = v188 + 8;
  v77(v78, v64);
  v213 = v193;
  v80 = v196;
  v214 = v195;
  v215 = v187;
  v216 = v196;
  v217 = v194;
  v218 = v190;
  v219 = v189;
  v220 = v71;
  v81 = type metadata accessor for PaymentItem();
  (*(v76 + 16))(v79, v72 + *(v81 + 96), v74);
  v82 = v184;
  if ((*(v184 + 48))(v79, 1, v80) == 1)
  {
    (*(v76 + 8))(v79, v74);
    v83 = v192;
    (*(v181 + 56))(v192, 1, 1, v182);
  }

  else
  {
    (*(v82 + 32))(v177, v79, v80);
    v84 = *(v72 + *(v81 + 100));
    v85 = qword_25E1A8BA8[v84];
    v86 = ((v84 - 1) & 0xFE) == 0;
    v87 = 0x4028000000000000;
    if (v86)
    {
      v87 = 0;
    }

    v190 = v87;
    v88 = v136;
    sub_25E1A56BC();
    v89 = sub_25E1A529C();
    sub_25E1A4CFC();
    v90 = v88 + *(v178 + 36);
    *v90 = v89;
    *(v90 + 8) = v91;
    *(v90 + 16) = v92;
    *(v90 + 24) = v93;
    *(v90 + 32) = v94;
    *(v90 + 40) = 0;
    v95 = sub_25E1A570C();
    MEMORY[0x28223BE20](v95);
    v194 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCDD708, &unk_25E1A8B98);
    v193 = sub_25E1A2170();
    v195 = sub_25E1A222C();
    sub_25E1A550C();
    sub_25E1A22B8(v88);
    sub_25E1A573C();
    v96 = v140;
    sub_25E1A54BC();
    sub_25E1A52BC();
    v97 = v139;
    v98 = v149;
    sub_25E1A54DC();
    (*(v145 + 8))(v96, v98);
    sub_25E1A529C();
    v99 = v137;
    v100 = v147;
    sub_25E1A54DC();
    (*(v143 + 8))(v97, v100);
    sub_25E1A52AC();
    v101 = v138;
    v102 = v146;
    sub_25E1A54DC();
    (*(v141 + 8))(v99, v102);
    v103 = v155;
    sub_25E1A519C();
    v104 = v144;
    v105 = v148;
    v106 = v162;
    sub_25E1A546C();
    (*(v157 + 8))(v103, v158);
    (*(v142 + 8))(v101, v105);
    v213 = v105;
    v214 = v106;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v108 = v151;
    v109 = v163;
    sub_25E1A548C();
    (*(v150 + 8))(v104, v109);
    v110 = sub_25E1A2468(&qword_27FCDCCB8, MEMORY[0x277CDE470]);
    v206 = OpaqueTypeConformance2;
    v207 = v110;
    v111 = v165;
    v112 = swift_getWitnessTable();
    v113 = v156;
    sub_25E181B2C(v108, v111, v112);
    v114 = v153;
    v190 = *(v153 + 8);
    v190(v108, v111);
    v115 = v152;
    v116 = v154;
    v117 = v166;
    (*(v152 + 16))(v154, v186, v166);
    v211 = v116;
    (*(v114 + 16))(v108, v113, v111);
    v212 = v108;
    v209 = v117;
    v210 = v111;
    v213 = v178;
    v214 = MEMORY[0x277CE1350];
    v215 = v194;
    v216 = v193;
    v217 = MEMORY[0x277CE1340];
    v218 = v195;
    v213 = swift_getOpaqueTypeConformance2();
    v214 = v112;
    v118 = v164;
    sub_25E198E40(&v211, 2uLL, &v209);
    v119 = v113;
    v120 = v190;
    v190(v119, v111);
    v121 = *(v115 + 8);
    v121(v186, v117);
    (*(v184 + 8))(v177, v196);
    v120(v108, v111);
    v121(v116, v117);
    v122 = v181;
    v123 = v182;
    v83 = v192;
    (*(v181 + 32))(v192, v118, v182);
    (*(v122 + 56))(v83, 0, 1, v123);
  }

  swift_getWitnessTable();
  v124 = v179;
  v125 = v180;
  v195 = *(v179 + 16);
  v195(v191, v83, v180);
  v196 = *(v124 + 8);
  (v196)(v83, v125);
  v127 = v174;
  v126 = v175;
  v128 = v176;
  (*(v188 + 16))(v175, v174, v176);
  v213 = v126;
  v130 = v191;
  v129 = v192;
  v195(v192, v191, v125);
  v214 = v129;
  v211 = v128;
  v212 = v125;
  v209 = v170;
  v208 = swift_getWitnessTable();
  v210 = swift_getWitnessTable();
  sub_25E198E40(&v213, 2uLL, &v211);
  v131 = v130;
  v132 = v196;
  (v196)(v131, v125);
  v133 = v171;
  v171(v127, v128);
  v132(v129, v125);
  return v133(v126, v128);
}

uint64_t sub_25E19D34C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v105 = a7;
  v106 = a8;
  v104 = a5;
  v87 = a1;
  v97 = a9;
  v103 = a10;
  v14 = sub_25E1A58CC();
  type metadata accessor for AccessoryView(255);
  swift_getTupleTypeMetadata2();
  v82 = sub_25E1A574C();
  WitnessTable = swift_getWitnessTable();
  v15 = sub_25E1A564C();
  v94 = *(v15 - 8);
  v16 = *(v94 + 64);
  v17 = MEMORY[0x28223BE20](v15);
  v83 = &v78 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v81 = &v78 - v19;
  v20 = type metadata accessor for AccessoryViewStyle(0);
  v21 = *(*(v20 - 8) + 64);
  v22 = MEMORY[0x28223BE20](v20 - 8);
  v79 = &v78 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = v14;
  v88 = *(v14 - 8);
  v24 = *(v88 + 64);
  MEMORY[0x28223BE20](v22);
  v26 = &v78 - v25;
  v92 = v15;
  v93 = sub_25E1A58CC();
  v96 = *(v93 - 8);
  v27 = *(v96 + 64);
  v28 = MEMORY[0x28223BE20](v93);
  v89 = &v78 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v95 = &v78 - v30;
  v31 = sub_25E1A4DDC();
  v120 = a6;
  v121 = MEMORY[0x277CDF678];
  v32 = swift_getWitnessTable();
  v112 = v31;
  v113 = v32;
  swift_getOpaqueTypeMetadata2();
  sub_25E1A524C();
  sub_25E1A4DDC();
  sub_25E1A4DDC();
  swift_getTupleTypeMetadata2();
  sub_25E1A574C();
  swift_getWitnessTable();
  v33 = sub_25E1A564C();
  v102 = *(v33 - 8);
  v34 = *(v102 + 64);
  v35 = MEMORY[0x28223BE20](v33);
  v91 = &v78 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = MEMORY[0x28223BE20](v35);
  v39 = &v78 - v38;
  MEMORY[0x28223BE20](v37);
  v107 = &v78 - v40;
  v98 = a2;
  v112 = a2;
  v113 = a3;
  v99 = a3;
  v100 = a4;
  v114 = a4;
  v115 = v104;
  v101 = a6;
  v116 = a6;
  v117 = v105;
  v118 = v106;
  v119 = v103;
  v41 = type metadata accessor for PaymentItem();
  v42 = v87;
  if (sub_25E199288(v41) <= 74.0 || *(v42 + v41[26]) == 1)
  {
    v43 = sub_25E1A4FCC();
  }

  else
  {
    v43 = sub_25E1A4FBC();
  }

  v44 = *(v42 + v41[34]);
  MEMORY[0x28223BE20](v43);
  v45 = v99;
  *(&v78 - 10) = v98;
  *(&v78 - 9) = v45;
  v46 = v100;
  v47 = v104;
  *(&v78 - 8) = v100;
  *(&v78 - 7) = v47;
  v49 = v105;
  v48 = v106;
  *(&v78 - 6) = v101;
  *(&v78 - 5) = v49;
  *(&v78 - 4) = v48;
  *(&v78 - 3) = v103;
  *(&v78 - 2) = v42;
  v50 = v42;
  sub_25E1A563C();
  v84 = swift_getWitnessTable();
  sub_25E181B2C(v39, v33, v84);
  v51 = *(v102 + 8);
  v86 = v102 + 8;
  v85 = v51;
  v51(v39, v33);
  v52 = v88;
  v53 = v90;
  (*(v88 + 16))(v26, v50 + v41[22], v90);
  v54 = (*(*(v46 - 8) + 48))(v26, 1, v46);
  v55 = (*(v52 + 8))(v26, v53);
  if (v54 == 1 && (v56 = v41[23], v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCDD2A0, &unk_25E1A7AD8), v58 = v79, (*(*(v57 - 8) + 56))(v79, 1, 6, v57), LOBYTE(v56) = _s13PaymentUIBase18AccessoryViewStyleO2eeoiySbAC_ACtFZ_0(v50 + v56, v58), v55 = sub_25E1A24B0(v58, type metadata accessor for AccessoryViewStyle), (v56 & 1) != 0))
  {
    v59 = v89;
    (*(v94 + 56))(v89, 1, 1, v92);
    swift_getWitnessTable();
  }

  else
  {
    MEMORY[0x28223BE20](v55);
    v60 = v99;
    *(&v78 - 10) = v98;
    *(&v78 - 9) = v60;
    v61 = v104;
    *(&v78 - 8) = v100;
    *(&v78 - 7) = v61;
    v63 = v105;
    v62 = v106;
    *(&v78 - 6) = v101;
    *(&v78 - 5) = v63;
    *(&v78 - 4) = v62;
    *(&v78 - 3) = v103;
    *(&v78 - 2) = v50;
    sub_25E1A4FCC();
    v64 = v83;
    sub_25E1A563C();
    v65 = v92;
    v66 = swift_getWitnessTable();
    v67 = v81;
    sub_25E181B2C(v64, v65, v66);
    v68 = v94;
    v69 = *(v94 + 8);
    v69(v64, v65);
    sub_25E181B2C(v67, v65, v66);
    v69(v67, v65);
    v59 = v89;
    (*(v68 + 32))(v89, v64, v65);
    (*(v68 + 56))(v59, 0, 1, v65);
  }

  v70 = v96;
  v71 = *(v96 + 16);
  v72 = v95;
  v73 = v93;
  v71(v95, v59, v93);
  v74 = *(v70 + 8);
  v74(v59, v73);
  v75 = v91;
  (*(v102 + 16))(v91, v107, v33);
  v112 = v75;
  v71(v59, v72, v73);
  v113 = v59;
  v111[0] = v33;
  v111[1] = v73;
  v109 = v84;
  v108 = swift_getWitnessTable();
  v110 = swift_getWitnessTable();
  sub_25E198E40(&v112, 2uLL, v111);
  v74(v72, v73);
  v76 = v85;
  v85(v107, v33);
  v74(v59, v73);
  return v76(v75, v33);
}

uint64_t sub_25E19DDE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void (*a4)(void, void)@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v65 = a8;
  v74 = a7;
  v58 = a5;
  v64 = a4;
  v72 = a1;
  v71 = a9;
  v63 = a10;
  v59 = a3;
  v69 = sub_25E1A4DDC();
  v70 = *(v69 - 8);
  v13 = *(v70 + 64);
  v14 = MEMORY[0x28223BE20](v69);
  v67 = &v53 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v68 = &v53 - v16;
  v62 = sub_25E1A4DBC();
  v61 = *(v62 - 8);
  v17 = *(v61 + 64);
  MEMORY[0x28223BE20](v62);
  v57 = &v53 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_25E1A4DDC();
  v60 = *(v19 - 8);
  v20 = *(v60 + 64);
  MEMORY[0x28223BE20](v19);
  v22 = &v53 - v21;
  v87 = a6;
  v88 = MEMORY[0x277CDF678];
  v66 = MEMORY[0x277CDFAD8];
  WitnessTable = swift_getWitnessTable();
  v79 = v19;
  v80 = WitnessTable;
  v55 = MEMORY[0x277CE0CF8];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v56 = *(OpaqueTypeMetadata2 - 8);
  v25 = *(v56 + 64);
  MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v27 = &v53 - v26;
  sub_25E1A524C();
  v28 = sub_25E1A4DDC();
  v75 = *(v28 - 8);
  v29 = *(v75 + 64);
  v30 = MEMORY[0x28223BE20](v28);
  v54 = &v53 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v73 = &v53 - v32;
  v79 = a2;
  v80 = a3;
  v81 = v64;
  v82 = v58;
  v83 = a6;
  v84 = v74;
  v85 = v65;
  v86 = v63;
  v65 = type metadata accessor for PaymentItem();
  v33 = *(v72 + *(v65 + 140));
  sub_25E1A572C();
  sub_25E1A54AC();
  v34 = v61;
  v35 = v57;
  v36 = v62;
  (*(v61 + 104))(v57, *MEMORY[0x277CDF9D8], v62);
  sub_25E1A544C();
  (*(v34 + 8))(v35, v36);
  (*(v60 + 8))(v22, v19);
  v79 = v19;
  v80 = WitnessTable;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v38 = v54;
  sub_25E1A548C();
  (*(v56 + 8))(v27, OpaqueTypeMetadata2);
  v39 = sub_25E1A2468(&qword_27FCDCCB8, MEMORY[0x277CDE470]);
  v78[4] = OpaqueTypeConformance2;
  v78[5] = v39;
  v53 = v28;
  v63 = swift_getWitnessTable();
  sub_25E181B2C(v38, v28, v63);
  v40 = *(v75 + 8);
  v62 = v75 + 8;
  v64 = v40;
  v40(v38, v28);
  v41 = *(v65 + 84);
  sub_25E1A573C();
  v42 = v74;
  v43 = v67;
  sub_25E1A54BC();
  v78[2] = v42;
  v78[3] = MEMORY[0x277CDFC60];
  v44 = v69;
  v45 = swift_getWitnessTable();
  v46 = v68;
  sub_25E181B2C(v43, v44, v45);
  v47 = v70;
  v48 = *(v70 + 8);
  v48(v43, v44);
  v49 = v73;
  v50 = v53;
  (*(v75 + 16))(v38, v73, v53);
  v79 = v38;
  (*(v47 + 16))(v43, v46, v44);
  v80 = v43;
  v78[0] = v50;
  v78[1] = v44;
  v76 = v63;
  v77 = v45;
  sub_25E198E40(&v79, 2uLL, v78);
  v48(v46, v44);
  v51 = v64;
  v64(v49, v50);
  v48(v43, v44);
  return v51(v38, v50);
}

uint64_t sub_25E19E5B0@<X0>(uint64_t a1@<X0>, char *a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v37 = a6;
  v38 = a7;
  v39 = a1;
  v41 = a9;
  v35 = a10;
  v36 = a5;
  v40 = type metadata accessor for AccessoryView(0);
  v14 = *(*(v40 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v40);
  v17 = &v34 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v34 - v18;
  v20 = sub_25E1A58CC();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  v23 = MEMORY[0x28223BE20](v20);
  v25 = &v34 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v27 = &v34 - v26;
  v45 = a2;
  v46 = a3;
  v47 = a4;
  v48 = v36;
  v49 = v37;
  v50 = v38;
  v51 = a8;
  v52 = v35;
  v28 = type metadata accessor for PaymentItem();
  v29 = *(v28 + 88);
  v44[2] = a8;
  WitnessTable = swift_getWitnessTable();
  v31 = v39;
  sub_25E181B2C(v39 + v29, v20, WitnessTable);
  sub_25E1A2400(v31 + *(v28 + 92), v19, type metadata accessor for AccessoryViewStyle);
  (*(v21 + 16))(v25, v27, v20);
  v45 = v25;
  sub_25E1A2400(v19, v17, type metadata accessor for AccessoryView);
  v46 = v17;
  v44[0] = v20;
  v44[1] = v40;
  v42 = WitnessTable;
  v43 = sub_25E1A2468(&qword_27FCDD720, type metadata accessor for AccessoryView);
  sub_25E198E40(&v45, 2uLL, v44);
  sub_25E1A24B0(v19, type metadata accessor for AccessoryView);
  v32 = *(v21 + 8);
  v32(v27, v20);
  sub_25E1A24B0(v17, type metadata accessor for AccessoryView);
  return (v32)(v25, v20);
}

uint64_t sub_25E19E8B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_25E1A52AC();
  sub_25E1A4CFC();
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  sub_25E1A2320(a1, a2);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCDD708, &unk_25E1A8B98);
  v14 = a2 + *(result + 36);
  *v14 = v4;
  *(v14 + 8) = v6;
  *(v14 + 16) = v8;
  *(v14 + 24) = v10;
  *(v14 + 32) = v12;
  *(v14 + 40) = 0;
  return result;
}

uint64_t sub_25E19E948@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t (*a4)()@<X3>, void *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  v49 = a2;
  v50 = a8;
  v57 = a6;
  v58 = a7;
  v51 = a1;
  v52 = a3;
  v47 = a9;
  v55 = a11;
  v56 = a5;
  v53 = a10;
  v54 = a4;
  v46 = sub_25E1A4D7C();
  v17 = *(v46 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v46);
  v48 = v42 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = a3;
  v61 = a4;
  v62 = a5;
  v63 = a6;
  v64 = a7;
  v65 = a8;
  v66 = a10;
  v67 = a11;
  v19 = type metadata accessor for PaymentItem();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  v23 = v42 - v22;
  v24 = v49;
  sub_25E19ED14(&v60);
  v44 = v60;
  v45 = *(v20 + 16);
  v45(v23, v24, v19);
  v25 = v46;
  (*(v17 + 16))(v48, v51, v46);
  v26 = *(v20 + 80);
  v43 = ((v26 + 80) & ~v26) + v21;
  v27 = (v26 + 80) & ~v26;
  v42[1] = v26 | 7;
  v28 = (v43 + *(v17 + 80)) & ~*(v17 + 80);
  v29 = swift_allocObject();
  v30 = v54;
  *(v29 + 2) = v52;
  *(v29 + 3) = v30;
  v31 = v57;
  *(v29 + 4) = v56;
  *(v29 + 5) = v31;
  v32 = v50;
  *(v29 + 6) = v58;
  *(v29 + 7) = v32;
  v33 = v55;
  *(v29 + 8) = v53;
  *(v29 + 9) = v33;
  v34 = *(v20 + 32);
  v34(&v29[v27], v23, v19);
  (*(v17 + 32))(&v29[v28], v48, v25);
  v60 = v44;
  v61 = sub_25E1A1AD0;
  v62 = v29;
  v63 = 0;
  v64 = 0;
  sub_25E1A4D6C();
  v59 = v35;
  v45(v23, v49, v19);
  v36 = swift_allocObject();
  v37 = v54;
  *(v36 + 2) = v52;
  *(v36 + 3) = v37;
  v38 = v57;
  *(v36 + 4) = v56;
  *(v36 + 5) = v38;
  v39 = v50;
  *(v36 + 6) = v58;
  *(v36 + 7) = v39;
  v40 = v55;
  *(v36 + 8) = v53;
  *(v36 + 9) = v40;
  v34(&v36[v27], v23, v19);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCDD6E0, &qword_25E1A8B80);
  sub_25E1A2078();
  sub_25E1A20FC();
  sub_25E1A54FC();
}

uint64_t sub_25E19ED14@<X0>(void *a1@<X8>)
{
  if (qword_28155F9B0 != -1)
  {
    v2 = a1;
    swift_once();
    a1 = v2;
  }

  *a1 = qword_28155F9B8;
}

uint64_t sub_25E19ED84()
{
  sub_25E1A4D6C();
  v0 = type metadata accessor for PaymentItem();
  return sub_25E1992E8(v0);
}

uint64_t sub_25E19EE24@<X0>(double *a1@<X8>)
{
  if (sub_25E1A56FC())
  {
    v2 = 26.0;
  }

  else
  {
    v2 = 12.0;
  }

  v3 = *(sub_25E1A4E3C() + 20);
  v4 = *MEMORY[0x277CE0118];
  v5 = sub_25E1A4FEC();
  result = (*(*(v5 - 8) + 104))(a1 + v3, v4, v5);
  *a1 = v2;
  a1[1] = v2;
  return result;
}

uint64_t PaymentItem.body.getter@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v71 = a2;
  v60 = a1[2];
  v3 = sub_25E1A4DDC();
  v59 = a1[6];
  v107 = v59;
  v108 = MEMORY[0x277CDF678];
  v105 = v3;
  WitnessTable = swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  v74 = sub_25E1A524C();
  sub_25E1A4DDC();
  v58 = a1[3];
  sub_25E1A4DDC();
  swift_getTupleTypeMetadata2();
  sub_25E1A574C();
  v4 = MEMORY[0x277CE14C0];
  swift_getWitnessTable();
  sub_25E1A564C();
  v57 = a1[4];
  sub_25E1A58CC();
  type metadata accessor for AccessoryView(255);
  swift_getTupleTypeMetadata2();
  sub_25E1A574C();
  swift_getWitnessTable();
  sub_25E1A564C();
  sub_25E1A58CC();
  swift_getTupleTypeMetadata2();
  sub_25E1A574C();
  v67 = v4;
  swift_getWitnessTable();
  sub_25E1A564C();
  sub_25E1A4DDC();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FCDD600, &qword_25E1A8A40);
  v68 = a1;
  v56 = a1[5];
  sub_25E1A4DDC();
  sub_25E1A4DDC();
  sub_25E1A4DDC();
  sub_25E1A4DDC();
  v55 = a1[9];
  v103 = v55;
  v104 = MEMORY[0x277CDFC60];
  v5 = swift_getWitnessTable();
  v6 = MEMORY[0x277CDF918];
  v101 = v5;
  v102 = MEMORY[0x277CDF918];
  v99 = swift_getWitnessTable();
  v100 = v6;
  v97 = swift_getWitnessTable();
  v98 = v6;
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_25E1A4DDC();
  swift_getTupleTypeMetadata2();
  sub_25E1A574C();
  sub_25E1A58CC();
  swift_getTupleTypeMetadata2();
  sub_25E1A574C();
  swift_getWitnessTable();
  sub_25E1A566C();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_25E1A4DDC();
  sub_25E1A4DDC();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FCDD608, &qword_25E1A8A48);
  sub_25E1A4DDC();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FCDD050, &qword_25E1A8A50);
  v7 = sub_25E1A4DDC();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v96 = sub_25E1A2468(&qword_27FCDCCB8, MEMORY[0x277CDE470]);
  v93 = swift_getWitnessTable();
  v94 = MEMORY[0x277CDFC60];
  v91 = swift_getWitnessTable();
  v92 = sub_25E17F9C0(&qword_27FCDD610, &qword_27FCDD608, &qword_25E1A8A48);
  v89 = swift_getWitnessTable();
  v90 = sub_25E17F9C0(&qword_27FCDD0A8, &qword_27FCDD050, &qword_25E1A8A50);
  v8 = swift_getWitnessTable();
  v9 = sub_25E1A562C();
  v105 = v7;
  WitnessTable = v8;
  v69 = v8;
  swift_getOpaqueTypeMetadata2();
  v73 = v9;
  v72 = sub_25E1A516C();
  v74 = v7;
  v10 = sub_25E1A516C();
  v62 = *(v10 - 8);
  v11 = *(v62 + 64);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v54 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v61 = &v54 - v15;
  sub_25E1A56CC();
  swift_getTupleTypeMetadata2();
  sub_25E1A574C();
  v54 = swift_getWitnessTable();
  v16 = sub_25E1A566C();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v19 = MEMORY[0x28223BE20](v16);
  v21 = &v54 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v63 = &v54 - v23;
  v64 = v22;
  v24 = sub_25E1A516C();
  v66 = *(v24 - 8);
  v67 = v24;
  v25 = *(v66 + 64);
  MEMORY[0x28223BE20](v24);
  v65 = &v54 - v26;
  v27 = v68;
  v28 = v70;
  if ((sub_25E199348(v68) & 1) != 0 || (sub_25E19949C(v27)) && (v29 = sub_25E1A56FC(), (v29 & 1) == 0))
  {
    MEMORY[0x28223BE20](v29);
    *&v38 = v60;
    *(&v38 + 1) = v58;
    *&v39 = v57;
    *(&v39 + 1) = v56;
    *(&v54 - 5) = v38;
    *(&v54 - 4) = v39;
    *(&v54 - 6) = v59;
    *(&v54 - 5) = *(v27 + 56);
    *(&v54 - 3) = v55;
    *(&v54 - 2) = v28;
    sub_25E1A502C();
    sub_25E1A565C();
    v40 = v64;
    v41 = swift_getWitnessTable();
    v42 = v63;
    sub_25E181B2C(v21, v40, v41);
    v70 = *(v17 + 8);
    v70(v21, v40);
    sub_25E181B2C(v42, v40, v41);
    v43 = swift_getWitnessTable();
    v44 = v69;
    v105 = v74;
    WitnessTable = v69;
    v45 = swift_getOpaqueTypeConformance2();
    v77 = v43;
    v78 = v45;
    v75 = swift_getWitnessTable();
    v76 = v44;
    swift_getWitnessTable();
    v37 = v65;
    sub_25E199010(v21, v40);
    v46 = v70;
    v70(v21, v40);
    v46(v63, v40);
    v31 = v44;
  }

  else
  {
    sub_25E199AAC(v27, v14);
    v30 = swift_getWitnessTable();
    v31 = v69;
    v105 = v74;
    WitnessTable = v69;
    v32 = swift_getOpaqueTypeConformance2();
    v87 = v30;
    v88 = v32;
    v85 = swift_getWitnessTable();
    v86 = v31;
    v33 = swift_getWitnessTable();
    v34 = v61;
    sub_25E181B2C(v14, v10, v33);
    v35 = *(v62 + 8);
    v35(v14, v10);
    sub_25E181B2C(v34, v10, v33);
    v36 = v64;
    swift_getWitnessTable();
    v37 = v65;
    sub_25E199108(v14, v36, v10);
    v35(v14, v10);
    v35(v34, v10);
  }

  v47 = swift_getWitnessTable();
  v48 = swift_getWitnessTable();
  v105 = v74;
  WitnessTable = v31;
  v49 = swift_getOpaqueTypeConformance2();
  v83 = v48;
  v84 = v49;
  v81 = swift_getWitnessTable();
  v82 = v31;
  v50 = swift_getWitnessTable();
  v79 = v47;
  v80 = v50;
  v51 = v67;
  v52 = swift_getWitnessTable();
  sub_25E181B2C(v37, v51, v52);
  return (*(v66 + 8))(v37, v51);
}

uint64_t sub_25E19FAFC@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v60 = a7;
  v61 = a8;
  v57 = a3;
  v58 = a6;
  v55 = a5;
  v56 = a4;
  v59 = a2;
  v62 = a1;
  v66 = a9;
  v67 = a10;
  v11 = sub_25E1A56CC();
  v64 = *(v11 - 8);
  v65 = v11;
  v12 = *(v64 + 64);
  v13 = MEMORY[0x28223BE20](v11);
  v68 = &v52 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v63 = &v52 - v15;
  v16 = sub_25E1A4DDC();
  v96 = a6;
  v97 = MEMORY[0x277CDF678];
  WitnessTable = swift_getWitnessTable();
  v72 = v16;
  v73 = WitnessTable;
  swift_getOpaqueTypeMetadata2();
  sub_25E1A524C();
  sub_25E1A4DDC();
  sub_25E1A4DDC();
  swift_getTupleTypeMetadata2();
  sub_25E1A574C();
  swift_getWitnessTable();
  sub_25E1A564C();
  sub_25E1A58CC();
  type metadata accessor for AccessoryView(255);
  swift_getTupleTypeMetadata2();
  sub_25E1A574C();
  swift_getWitnessTable();
  sub_25E1A564C();
  sub_25E1A58CC();
  swift_getTupleTypeMetadata2();
  sub_25E1A574C();
  swift_getWitnessTable();
  sub_25E1A564C();
  sub_25E1A4DDC();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FCDD600, &qword_25E1A8A40);
  sub_25E1A4DDC();
  sub_25E1A4DDC();
  sub_25E1A4DDC();
  v18 = sub_25E1A4DDC();
  v94 = v67;
  v95 = MEMORY[0x277CDFC60];
  v19 = swift_getWitnessTable();
  v20 = MEMORY[0x277CDF918];
  v92 = v19;
  v93 = MEMORY[0x277CDF918];
  v90 = swift_getWitnessTable();
  v91 = v20;
  v88 = swift_getWitnessTable();
  v89 = v20;
  v21 = swift_getWitnessTable();
  v72 = v18;
  v73 = v21;
  swift_getOpaqueTypeMetadata2();
  sub_25E1A4DDC();
  swift_getTupleTypeMetadata2();
  sub_25E1A574C();
  sub_25E1A58CC();
  swift_getTupleTypeMetadata2();
  sub_25E1A574C();
  swift_getWitnessTable();
  v22 = sub_25E1A566C();
  v23 = swift_getWitnessTable();
  v72 = v22;
  v73 = v23;
  swift_getOpaqueTypeMetadata2();
  sub_25E1A4DDC();
  sub_25E1A4DDC();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FCDD608, &qword_25E1A8A48);
  sub_25E1A4DDC();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FCDD050, &qword_25E1A8A50);
  v24 = sub_25E1A4DDC();
  v72 = v22;
  v73 = v23;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v26 = sub_25E1A2468(&qword_27FCDCCB8, MEMORY[0x277CDE470]);
  v86 = OpaqueTypeConformance2;
  v87 = v26;
  v84 = swift_getWitnessTable();
  v85 = MEMORY[0x277CDFC60];
  v27 = swift_getWitnessTable();
  v28 = sub_25E17F9C0(&qword_27FCDD610, &qword_27FCDD608, &qword_25E1A8A48);
  v82 = v27;
  v83 = v28;
  v29 = swift_getWitnessTable();
  v30 = sub_25E17F9C0(&qword_27FCDD0A8, &qword_27FCDD050, &qword_25E1A8A50);
  v80 = v29;
  v81 = v30;
  v31 = swift_getWitnessTable();
  sub_25E1A562C();
  v72 = v24;
  v73 = v31;
  v54 = MEMORY[0x277CE0CA8];
  swift_getOpaqueTypeMetadata2();
  sub_25E1A516C();
  v32 = sub_25E1A516C();
  v33 = *(v32 - 8);
  v34 = *(v33 + 64);
  v35 = MEMORY[0x28223BE20](v32);
  v37 = &v52 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v35);
  v39 = &v52 - v38;
  v72 = v59;
  v73 = v57;
  v74 = v56;
  v75 = v55;
  v76 = v58;
  v77 = v60;
  v78 = v61;
  v79 = v67;
  v40 = type metadata accessor for PaymentItem();
  sub_25E199AAC(v40, v37);
  v41 = swift_getWitnessTable();
  v72 = v24;
  v73 = v31;
  v42 = swift_getOpaqueTypeConformance2();
  v71[4] = v41;
  v71[5] = v42;
  v71[2] = swift_getWitnessTable();
  v71[3] = v31;
  v43 = swift_getWitnessTable();
  v44 = v39;
  v53 = v39;
  sub_25E181B2C(v37, v32, v43);
  v45 = *(v33 + 8);
  v45(v37, v32);
  v46 = v63;
  sub_25E1A56BC();
  (*(v33 + 16))(v37, v44, v32);
  v72 = v37;
  v48 = v64;
  v47 = v65;
  v49 = v68;
  (*(v64 + 16))(v68, v46, v65);
  v73 = v49;
  v71[0] = v32;
  v71[1] = v47;
  v69 = v43;
  v70 = sub_25E1A2468(&qword_27FCDD0F8, MEMORY[0x277CDF088]);
  sub_25E198E40(&v72, 2uLL, v71);
  v50 = *(v48 + 8);
  v50(v46, v47);
  v45(v53, v32);
  v50(v68, v47);
  return (v45)(v37, v32);
}

uint64_t PaymentItemContentStyle.hashValue.getter()
{
  v1 = *v0;
  sub_25E1A59BC();
  MEMORY[0x25F8AD450](v1);
  return sub_25E1A59DC();
}

uint64_t PaymentItem<>.init(icon:primaryLabel:secondaryLabel:accessoryViewStyle:)@<X0>(uint64_t (*a1)(uint64_t)@<X0>, uint64_t (*a2)(uint64_t)@<X2>, uint64_t a3@<X3>, void (*a4)(uint64_t)@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>, uint64_t a9, uint64_t a10, __int128 a11)
{
  v24 = a4;
  v25 = a5;
  v23 = a3;
  v22 = a11;
  v16 = type metadata accessor for AccessoryViewStyle(0);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v19 = &v22 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25E1A2400(a6, v19, type metadata accessor for AccessoryViewStyle);
  v26 = 0;
  *&v21 = a7;
  *(&v21 + 1) = a9;
  PaymentItem.init(icon:primaryLabel:secondaryLabel:accessoryViewStyle:secondaryContent:secondaryContentStyle:alwaysCenterIconVertically:mainContentAction:silentAction:)(a1, a2, v24, v19, sub_25E1A2510, a8, 0, &v26, 0, 0, 0, 0, 0, v21);
  return sub_25E1A24B0(a6, type metadata accessor for AccessoryViewStyle);
}

uint64_t PaymentItem<>.init(icon:primaryLabel:chevronStyle:)@<X0>(uint64_t (*a1)(uint64_t)@<X0>, uint64_t (*a2)(uint64_t)@<X2>, unsigned __int8 *a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X6>, uint64_t a6@<X8>)
{
  v9 = *a3;
  v8 = 0;
  *&v7 = a4;
  *(&v7 + 1) = a5;
  return PaymentItem.init(icon:primaryLabel:secondaryLabel:chevronStyle:secondaryContent:secondaryContentStyle:alwaysCenterIconVertically:mainContentAction:silentAction:)(a1, a2, sub_25E1A2510, &v9, sub_25E1A2510, a6, 0, &v8, 0, 0, 0, 0, 0, v7);
}

uint64_t PaymentItem<>.init(icon:primaryLabel:accessoryStyle:)@<X0>(uint64_t (*a1)(uint64_t)@<X0>, uint64_t (*a2)(uint64_t)@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X8>)
{
  v19 = a3;
  v13 = type metadata accessor for AccessoryViewStyle(0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &v19 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25E1A2400(a4, v16, type metadata accessor for AccessoryViewStyle);
  v20 = 0;
  *&v18 = a5;
  *(&v18 + 1) = a6;
  PaymentItem.init(icon:primaryLabel:secondaryLabel:accessoryViewStyle:secondaryContent:secondaryContentStyle:alwaysCenterIconVertically:mainContentAction:silentAction:)(a1, a2, sub_25E1A2510, v16, sub_25E1A2510, a7, 0, &v20, 0, 0, 0, 0, 0, v18);
  return sub_25E1A24B0(a4, type metadata accessor for AccessoryViewStyle);
}

uint64_t PaymentItem<>.init(icon:primaryLabel:accessoryViewStyle:secondaryContent:secondaryContentStyle:alwaysCenterIconVertically:)@<X0>(uint64_t (*a1)(uint64_t)@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(uint64_t)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void (*a6)(uint64_t)@<X5>, uint64_t a7@<X6>, _BYTE *a8@<X7>, uint64_t a9@<X8>, char a10, __int128 a11, __int128 a12)
{
  v22 = a7;
  v23 = a2;
  v25 = a4;
  v26 = a6;
  v24 = a3;
  v21 = a12;
  v16 = type metadata accessor for AccessoryViewStyle(0);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v19 = &v21 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(a8) = *a8;
  sub_25E1A2400(a5, v19, type metadata accessor for AccessoryViewStyle);
  v27 = a8;
  PaymentItem.init(icon:primaryLabel:secondaryLabel:accessoryViewStyle:secondaryContent:secondaryContentStyle:alwaysCenterIconVertically:mainContentAction:silentAction:)(a1, v24, sub_25E1A2510, v19, v26, a9, v22, &v27, a10, 0, 0, 0, 0, a11);
  return sub_25E1A24B0(a5, type metadata accessor for AccessoryViewStyle);
}

uint64_t PaymentItem<>.init(icon:primaryLabel:chevronStyle:secondaryContent:secondaryContentStyle:)@<X0>(uint64_t (*a1)(uint64_t)@<X0>, uint64_t (*a2)(uint64_t)@<X2>, unsigned __int8 *a3@<X4>, uint64_t (*a4)(uint64_t)@<X5>, uint64_t a5@<X6>, char *a6@<X7>, uint64_t a7@<X8>, __int128 a8)
{
  v8 = *a6;
  v11 = *a3;
  v10 = v8;
  return PaymentItem.init(icon:primaryLabel:secondaryLabel:chevronStyle:secondaryContent:secondaryContentStyle:alwaysCenterIconVertically:mainContentAction:silentAction:)(a1, a2, sub_25E1A2510, &v11, a4, a7, a5, &v10, 0, 0, 0, 0, 0, a8);
}

uint64_t sub_25E1A0A6C(uint64_t a1, _OWORD *a2)
{
  v3 = a2[1];
  v4 = a2[2];
  v5 = a2[3];
  v6 = a2[4];
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_25E1A0ABC()
{
  result = qword_27FCDD618[0];
  if (!qword_27FCDD618[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FCDD618);
  }

  return result;
}

void sub_25E1A0B18(void *a1)
{
  v2 = a1[2];
  swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    v4 = a1[3];
    swift_checkMetadataState();
    if (v5 <= 0x3F)
    {
      v6 = a1[4];
      sub_25E1A58CC();
      if (v7 <= 0x3F)
      {
        type metadata accessor for AccessoryViewStyle(319);
        if (v8 <= 0x3F)
        {
          v9 = a1[5];
          sub_25E1A58CC();
          if (v10 <= 0x3F)
          {
            sub_25E1A18A0();
            if (v11 <= 0x3F)
            {
              sub_25E1A1904(319, &qword_27FCDD6B0, MEMORY[0x277D85048], MEMORY[0x277CE10B8]);
              if (v12 <= 0x3F)
              {
                sub_25E1A1904(319, &qword_27FCDD6B8, MEMORY[0x277D839B0], MEMORY[0x277CDF468]);
                if (v13 <= 0x3F)
                {
                  sub_25E1A1954();
                  if (v14 <= 0x3F)
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
  }
}

uint64_t sub_25E1A0CBC(_DWORD *a1, unsigned int a2, void *a3)
{
  v59 = *(a3[2] - 8);
  v4 = *(v59 + 84);
  v58 = *(a3[3] - 8);
  v53 = v4;
  v52 = *(v58 + 84);
  if (v52 > v4)
  {
    v4 = *(v58 + 84);
  }

  v49 = a3[4];
  v57 = *(v49 - 8);
  v5 = *(v57 + 84);
  v6 = v5 - 1;
  if (!v5)
  {
    v6 = 0;
  }

  v51 = v6;
  if (v6 <= v4)
  {
    v7 = v4;
  }

  else
  {
    v7 = v6;
  }

  v56 = *(sub_25E1A536C() - 8);
  v48 = *(v56 + 84);
  if (v48 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v56 + 84);
  }

  v9 = v8 - 6;
  v50 = v9;
  if (v9 <= v7)
  {
    v9 = v7;
  }

  v46 = a3[5];
  v10 = *(v46 - 8);
  v11 = *(v10 + 84);
  v12 = v11 - 1;
  if (!v11)
  {
    v12 = 0;
  }

  v47 = v12;
  if (v12 > v9)
  {
    v9 = v12;
  }

  if (v9 <= 0x7FFFFFFE)
  {
    v9 = 2147483646;
  }

  v54 = v9;
  v13 = *(sub_25E1A4D0C() - 8);
  if (*(v13 + 64) <= 8uLL)
  {
    v14 = 8;
  }

  else
  {
    v14 = *(v13 + 64);
  }

  if (v5)
  {
    v15 = *(v57 + 64);
  }

  else
  {
    v15 = *(v57 + 64) + 1;
  }

  v16 = *(v58 + 80);
  v17 = *(v58 + 64);
  v18 = *(v57 + 80);
  v19 = *(v56 + 80);
  v20 = *(v10 + 80);
  if (v11)
  {
    v21 = *(v10 + 64);
  }

  else
  {
    v21 = *(v10 + 64) + 1;
  }

  if (!a2)
  {
    return 0;
  }

  v22 = *(v59 + 64) + v16;
  v23 = v19 | 7;
  v24 = ((v19 + 16) & ~v19) + *(v56 + 64) + v20;
  v25 = v21 + 9;
  v26 = a1;
  if (v54 < a2)
  {
    v27 = *(v13 + 80) & 0xF8 | 7;
    v28 = ((((((v14 + ((v27 + ((((((((v25 + ((v24 + ((v23 + v15 + ((v17 + v18 + (v22 & ~v16)) & ~v18)) & ~v23)) & ~v20)) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 9) & ~v27) + 8) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8;
    v29 = v28 & 0xFFFFFFF8;
    if ((v28 & 0xFFFFFFF8) != 0)
    {
      v30 = 2;
    }

    else
    {
      v30 = a2 - v54 + 1;
    }

    if (v30 >= 0x10000)
    {
      v31 = 4;
    }

    else
    {
      v31 = 2;
    }

    if (v30 < 0x100)
    {
      v31 = 1;
    }

    if (v30 >= 2)
    {
      v32 = v31;
    }

    else
    {
      v32 = 0;
    }

    if (v32 > 1)
    {
      if (v32 == 2)
      {
        v33 = *(a1 + v28);
        if (v33)
        {
          goto LABEL_44;
        }
      }

      else
      {
        v33 = *(a1 + v28);
        if (v33)
        {
          goto LABEL_44;
        }
      }
    }

    else if (v32)
    {
      v33 = *(a1 + v28);
      if (v33)
      {
LABEL_44:
        v34 = v33 - 1;
        if (v29)
        {
          v34 = 0;
          LODWORD(v29) = *a1;
        }

        return v54 + (v29 | v34) + 1;
      }
    }
  }

  if (v53 == v54)
  {
    v36 = *(v59 + 48);
LABEL_55:

    return v36(v26);
  }

  v26 = ((a1 + v22) & ~v16);
  if (v52 == v54)
  {
    v36 = *(v58 + 48);
    goto LABEL_55;
  }

  v37 = (v26 + v17 + v18) & ~v18;
  if (v51 == v54)
  {
    if (v5 < 2)
    {
      return 0;
    }

    v41 = (*(v57 + 48))(v37, v5, v49);
    goto LABEL_67;
  }

  v38 = (v37 + v15 + v23) & ~v23;
  if (v50 == v54)
  {
    if ((v48 & 0x80000000) != 0)
    {
      v40 = (*(v56 + 48))((v19 + 16 + v38) & ~v19);
    }

    else
    {
      v39 = *(((v37 + v15 + v23) & ~v23) + 8);
      if (v39 >= 0xFFFFFFFF)
      {
        LODWORD(v39) = -1;
      }

      v40 = v39 + 1;
    }

    v42 = v40 - 6;
    v43 = v40 >= 7;
    goto LABEL_78;
  }

  v44 = (v24 + v38) & ~v20;
  if (v47 == v54)
  {
    if (v11 < 2)
    {
      return 0;
    }

    v41 = (*(v10 + 48))(v44, v11, v46);
LABEL_67:
    v42 = v41 - 1;
    v43 = v41 >= 2;
LABEL_78:
    if (v43)
    {
      return v42;
    }

    else
    {
      return 0;
    }
  }

  v45 = *((v25 + v44) & 0xFFFFFFFFFFFFFFF8);
  if (v45 >= 0xFFFFFFFF)
  {
    LODWORD(v45) = -1;
  }

  if ((v45 + 1) >= 2)
  {
    return v45;
  }

  else
  {
    return 0;
  }
}

void sub_25E1A122C(_DWORD *a1, unsigned int a2, unsigned int a3, void *a4)
{
  v51 = *(a4[2] - 8);
  v5 = *(v51 + 84);
  v50 = *(a4[3] - 8);
  v48 = v5;
  v47 = *(v50 + 84);
  if (v47 > v5)
  {
    v5 = *(v50 + 84);
  }

  v6 = *(a4[4] - 8);
  v7 = *(v6 + 84);
  v8 = v7 - 1;
  if (!v7)
  {
    v8 = 0;
  }

  v46 = v8;
  if (v8 <= v5)
  {
    v9 = v5;
  }

  else
  {
    v9 = v8;
  }

  v10 = *(sub_25E1A536C() - 8);
  v42 = *(v10 + 84);
  if (v42 <= 0x7FFFFFFF)
  {
    v11 = 0x7FFFFFFF;
  }

  else
  {
    v11 = *(v10 + 84);
  }

  v44 = v11;
  v12 = v11 - 6;
  v45 = v12;
  if (v12 <= v9)
  {
    v12 = v9;
  }

  v13 = *(a4[5] - 8);
  v14 = *(v13 + 84);
  v15 = v14 - 1;
  if (!v14)
  {
    v15 = 0;
  }

  v43 = v15;
  if (v15 > v12)
  {
    v12 = v15;
  }

  if (v12 <= 0x7FFFFFFE)
  {
    v12 = 2147483646;
  }

  v49 = v12;
  v55 = 0;
  v16 = *(sub_25E1A4D0C() - 8);
  if (*(v16 + 64) <= 8uLL)
  {
    v17 = 8;
  }

  else
  {
    v17 = *(v16 + 64);
  }

  v18 = *(v6 + 64);
  if (!v7)
  {
    ++v18;
  }

  v19 = *(v50 + 80);
  v20 = *(v51 + 64) + v19;
  v21 = *(v50 + 64);
  v22 = *(v6 + 80);
  v23 = *(v10 + 80);
  v24 = ((v23 + 16) & ~v23) + *(v10 + 64);
  v25 = *(v13 + 80);
  if (v14)
  {
    v26 = *(v13 + 64);
  }

  else
  {
    v26 = *(v13 + 64) + 1;
  }

  v27 = v26 + 9;
  v28 = *(v16 + 80) & 0xF8 | 7;
  v29 = ((((((v17 + ((v28 + ((((((((v27 + ((v24 + v25 + (((v23 | 7) + v18 + ((v21 + v22 + (v20 & ~v19)) & ~v22)) & ~(v23 | 7))) & ~v25)) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 9) & ~v28) + 8) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v49 < a3)
  {
    if (((((((v17 + ((v28 + ((((((((v27 + ((v24 + v25 + (((v23 | 7) + v18 + ((v21 + v22 + (v20 & ~v19)) & ~v22)) & ~(v23 | 7))) & ~v25)) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 39) & 0xFFFFFFF8) + 9) & ~v28) + 8) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v30 = a3 - v49 + 1;
    }

    else
    {
      v30 = 2;
    }

    if (v30 >= 0x10000)
    {
      v31 = 4;
    }

    else
    {
      v31 = 2;
    }

    if (v30 < 0x100)
    {
      v31 = 1;
    }

    if (v30 >= 2)
    {
      v32 = v31;
    }

    else
    {
      v32 = 0;
    }

    v55 = v32;
  }

  if (a2 > v49)
  {
    if (v29)
    {
      v33 = 1;
    }

    else
    {
      v33 = a2 - v49;
    }

    if (v29)
    {
      bzero(a1, v29);
      *a1 = ~v49 + a2;
    }

    if (v55 > 1)
    {
      if (v55 == 2)
      {
        *(a1 + v29) = v33;
      }

      else
      {
        *(a1 + v29) = v33;
      }
    }

    else if (v55)
    {
      *(a1 + v29) = v33;
    }

    return;
  }

  v34 = a1;
  if (v55 <= 1)
  {
    if (v55)
    {
      *(a1 + v29) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_58;
    }

    goto LABEL_57;
  }

  if (v55 == 2)
  {
    *(a1 + v29) = 0;
LABEL_57:
    if (!a2)
    {
      return;
    }

    goto LABEL_58;
  }

  *(a1 + v29) = 0;
  if (!a2)
  {
    return;
  }

LABEL_58:
  if (v48 == v49)
  {
    v35 = *(v51 + 56);
    v36 = a2;
    goto LABEL_67;
  }

  v34 = (a1 + v20) & ~v19;
  if (v47 == v49)
  {
    v35 = *(v50 + 56);
    v36 = a2;
    goto LABEL_67;
  }

  v34 = (v34 + v21 + v22) & ~v22;
  if (v46 == v49)
  {
    v35 = *(v6 + 56);
    v36 = a2 + 1;
LABEL_67:

    goto LABEL_69;
  }

  v37 = ((v34 + v18 + (v23 | 7)) & ~(v23 | 7));
  if (v45 != v49)
  {
    v34 = &v37[v24 + v25] & ~v25;
    if (v43 != v49)
    {
      v41 = ((v27 + v34) & 0xFFFFFFFFFFFFFFF8);
      if (a2 > 0x7FFFFFFE)
      {
        *v41 = 0;
        v41[1] = 0;
        *v41 = a2 - 0x7FFFFFFF;
      }

      else
      {
        *v41 = a2;
      }

      return;
    }

    v35 = *(v13 + 56);
    v36 = a2 + 1;
    goto LABEL_67;
  }

  if (a2 + 6 <= v44)
  {
    if ((v42 & 0x80000000) == 0)
    {
      if (((a2 + 6) & 0x80000000) != 0)
      {
        *v37 = a2 - 2147483642;
        *(((v34 + v18 + (v23 | 7)) & ~(v23 | 7)) + 8) = 0;
      }

      else
      {
        *(((v34 + v18 + (v23 | 7)) & ~(v23 | 7)) + 8) = a2 + 5;
      }

      return;
    }

    v35 = *(v10 + 56);
    v34 = &v37[v23 + 16] & ~v23;
    v36 = a2 + 6;

LABEL_69:
    v35(v34, v36);
    return;
  }

  if (v24 <= 3)
  {
    v38 = ~(-1 << (8 * v24));
  }

  else
  {
    v38 = -1;
  }

  if (v24)
  {
    v39 = v38 & (a2 - v44 + 5);
    if (v24 <= 3)
    {
      v40 = v24;
    }

    else
    {
      v40 = 4;
    }

    bzero(v37, v24);
    if (v40 > 2)
    {
      if (v40 == 3)
      {
        *v37 = v39;
        v37[2] = BYTE2(v39);
      }

      else
      {
        *v37 = v39;
      }
    }

    else if (v40 == 1)
    {
      *v37 = v39;
    }

    else
    {
      *v37 = v39;
    }
  }
}

void sub_25E1A18A0()
{
  if (!qword_27FCDD6A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FCDD6A8, qword_25E1A8B30);
    v0 = sub_25E1A58CC();
    if (!v1)
    {
      atomic_store(v0, &qword_27FCDD6A0);
    }
  }
}

void sub_25E1A1904(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_25E1A1954()
{
  if (!qword_27FCDD6C0)
  {
    sub_25E1A4D0C();
    v0 = sub_25E1A4D1C();
    if (!v1)
    {
      atomic_store(v0, &qword_27FCDD6C0);
    }
  }
}

uint64_t sub_25E1A19BC(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_25E1A19FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = v2[2];
  v5 = v2[3];
  v6 = v2[4];
  v7 = v2[5];
  v8 = v2[6];
  v9 = v2[7];
  v11 = v2[8];
  v10 = v2[9];
  v12 = *(type metadata accessor for PaymentItem() - 8);
  return sub_25E19E948(a1, v2 + ((*(v12 + 80) + 80) & ~*(v12 + 80)), v4, v5, v6, v7, v8, v9, a2, v11, v10);
}

uint64_t sub_25E1A1AD0()
{
  v8 = v0[2];
  v1 = v0[8];
  v2 = v0[9];
  v9 = v0[3];
  v10 = v0[4];
  v11 = v0[5];
  v12 = v0[6];
  v13 = v0[7];
  v3 = *(type metadata accessor for PaymentItem() - 8);
  v4 = (*(v3 + 80) + 80) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(*(sub_25E1A4D7C() - 8) + 80);
  return sub_25E19ED84();
}

uint64_t objectdestroy_18Tm()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  v26 = *(v0 + 40);
  v27 = *(v0 + 56);
  v28 = *(v0 + 72);
  v4 = type metadata accessor for PaymentItem();
  v5 = *(v4 - 1);
  v6 = *(v5 + 64);
  v7 = v0 + ((*(v5 + 80) + 80) & ~*(v5 + 80));
  (*(*(v1 - 8) + 8))(v7, v1);
  (*(*(v2 - 8) + 8))(v7 + v4[21], v2);
  v8 = v4[22];
  v9 = *(v3 - 8);
  if (!(*(v9 + 48))(v7 + v8, 1, v3))
  {
    (*(v9 + 8))(v7 + v8, v3);
  }

  v10 = v7 + v4[23];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCDD2A0, &unk_25E1A7AD8);
  if (!(*(*(v11 - 8) + 48))(v10, 6, v11))
  {
    v12 = *(v10 + 8);

    v13 = *(v11 + 48);
    v14 = sub_25E1A536C();
    (*(*(v14 - 8) + 8))(v10 + v13, v14);
  }

  v15 = v4[24];
  v16 = *(v26 - 8);
  if (!(*(v16 + 48))(v7 + v15, 1, v26))
  {
    (*(v16 + 8))(v7 + v15, v26);
  }

  v17 = (v7 + v4[27]);
  if (*v17)
  {
    v18 = v17[1];
  }

  v19 = (v7 + v4[28]);
  if (*v19)
  {
    v20 = v19[1];
  }

  v21 = *(v7 + v4[29] + 8);

  sub_25E1832F0(*(v7 + v4[30]), *(v7 + v4[30] + 8));
  sub_25E1832F0(*(v7 + v4[31]), *(v7 + v4[31] + 8));
  v22 = v4[32];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCDD298, &qword_25E1A7AD0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v23 = sub_25E1A4D0C();
    (*(*(v23 - 8) + 8))(v7 + v22, v23);
  }

  else
  {
    v24 = *(v7 + v22);
  }

  return swift_deallocObject();
}

uint64_t sub_25E1A1FA0(uint64_t a1, uint64_t *a2)
{
  v4 = v2[2];
  v5 = v2[3];
  v6 = v2[4];
  v7 = v2[5];
  v8 = v2[6];
  v9 = v2[7];
  v10 = v2[8];
  v11 = v2[9];
  v12 = *(type metadata accessor for PaymentItem() - 8);
  v13 = *a2;
  v14 = (*(v12 + 80) + 80) & ~*(v12 + 80);
  v15 = type metadata accessor for PaymentItem();
  return sub_25E1992E8(v15);
}

unint64_t sub_25E1A2078()
{
  result = qword_27FCDD6E8;
  if (!qword_27FCDD6E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FCDD6E0, &qword_25E1A8B80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FCDD6E8);
  }

  return result;
}

unint64_t sub_25E1A20FC()
{
  result = qword_27FCDD6F0;
  if (!qword_27FCDD6F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FCDD6F0);
  }

  return result;
}

unint64_t sub_25E1A2170()
{
  result = qword_27FCDD710;
  if (!qword_27FCDD710)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FCDD700, &qword_25E1A8B90);
    sub_25E1A2468(&qword_27FCDD0F8, MEMORY[0x277CDF088]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FCDD710);
  }

  return result;
}

unint64_t sub_25E1A222C()
{
  result = qword_27FCDD718;
  if (!qword_27FCDD718)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FCDD708, &unk_25E1A8B98);
    sub_25E1A2170();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FCDD718);
  }

  return result;
}

uint64_t sub_25E1A22B8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCDD700, &qword_25E1A8B90);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_25E1A2320(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCDD700, &qword_25E1A8B90);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_25E1A2400(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_25E1A2468(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_25E1A24B0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

PaymentUIBase::AuthenticationEvent_optional __swiftcall AuthenticationEvent.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_25E1A598C();

  v5 = 12;
  if (v3 < 0xC)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t AuthenticationEvent.rawValue.getter()
{
  v1 = *v0;
  if (v1 > 5)
  {
    v6 = 0xD000000000000014;
    if (v1 == 10)
    {
      v6 = 0x4370556570697773;
    }

    if (v1 == 9)
    {
      v6 = 0xD000000000000011;
    }

    v7 = 0xD000000000000010;
    v8 = 0xD000000000000014;
    if (v1 != 7)
    {
      v8 = 0xD000000000000016;
    }

    if (v1 != 6)
    {
      v7 = v8;
    }

    if (*v0 <= 8u)
    {
      return v7;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v2 = 0x6E776F6E6B6E75;
    v3 = 0xD000000000000017;
    v4 = 0x64726F7773736170;
    if (v1 == 4)
    {
      v4 = 0xD000000000000017;
    }

    if (v1 != 3)
    {
      v3 = v4;
    }

    if (*v0)
    {
      v2 = 0xD000000000000010;
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
}

uint64_t sub_25E1A271C(char *a1, char *a2)
{
  v10 = *a1;
  v9 = *a2;
  v2 = AuthenticationEvent.rawValue.getter();
  v4 = v3;
  if (v2 == AuthenticationEvent.rawValue.getter() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_25E1A599C();
  }

  return v7 & 1;
}

unint64_t sub_25E1A27BC()
{
  result = qword_281560248;
  if (!qword_281560248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281560248);
  }

  return result;
}

uint64_t sub_25E1A2810()
{
  v1 = *v0;
  sub_25E1A59BC();
  AuthenticationEvent.rawValue.getter();
  sub_25E1A581C();

  return sub_25E1A59DC();
}

uint64_t sub_25E1A2878()
{
  v2 = *v0;
  AuthenticationEvent.rawValue.getter();
  sub_25E1A581C();
}

uint64_t sub_25E1A28DC()
{
  v1 = *v0;
  sub_25E1A59BC();
  AuthenticationEvent.rawValue.getter();
  sub_25E1A581C();

  return sub_25E1A59DC();
}

unint64_t sub_25E1A294C@<X0>(unint64_t *a1@<X8>)
{
  result = AuthenticationEvent.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for AuthenticationEvent(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF5)
  {
    goto LABEL_17;
  }

  if (a2 + 11 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 11) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 11;
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

      return (*a1 | (v4 << 8)) - 11;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 11;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xC;
  v8 = v6 - 12;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AuthenticationEvent(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 11 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 11) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF5)
  {
    v4 = 0;
  }

  if (a2 > 0xF4)
  {
    v5 = ((a2 - 245) >> 8) + 1;
    *result = a2 + 11;
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
    *result = a2 + 11;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

void AppleIDSignInView.init(inAppContext:delegate:)(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = [objc_allocWithZone(MEMORY[0x277CF03A8]) init];
  *a3 = v5;
  v6 = v5;
  [a1 setPresentingViewController_];
  [v6 setContext_];
  [v6 setDelegate_];

  swift_unknownObjectRelease();
}

void AppleIDSignInView.updateUIViewController(_:context:)(void *a1)
{
  v1 = [a1 view];
  if (v1)
  {
    v2 = v1;
    v3 = [objc_opt_self() clearColor];
    [v2 setBackgroundColor_];
  }

  else
  {
    __break(1u);
  }
}

void AppleIDSignInView.sizeThatFits(_:uiViewController:context:)(uint64_t a1, char a2, uint64_t a3, char a4, id a5)
{
  v9 = [a5 view];
  if (!v9)
  {
    goto LABEL_16;
  }

  v10 = v9;
  v11 = [v9 subviews];

  sub_25E1A2D88();
  v12 = sub_25E1A584C();
  v13 = v12;
  if (!(v12 >> 62))
  {
    if (*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_4;
    }

LABEL_13:

    __break(1u);
    goto LABEL_14;
  }

  if (!sub_25E1A594C())
  {
    goto LABEL_13;
  }

LABEL_4:

  if ((v13 & 0xC000000000000001) != 0)
  {
LABEL_14:
    v14 = MEMORY[0x25F8AD3A0](0, v13);
    goto LABEL_7;
  }

  if (!*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    return;
  }

  v14 = *(v13 + 32);
LABEL_7:
  v15 = v14;

  v17 = *&a1;
  v18 = 10.0;
  if (a2)
  {
    v17 = 10.0;
  }

  HIDWORD(v19) = HIDWORD(a3);
  if ((a4 & 1) == 0)
  {
    v18 = *&a3;
  }

  LODWORD(v19) = 1148846080;
  LODWORD(v16) = 1112014848;
  [v15 systemLayoutSizeFittingSize:v17 withHorizontalFittingPriority:v18 verticalFittingPriority:{v19, v16}];
}

unint64_t sub_25E1A2D88()
{
  result = qword_27FCDD728;
  if (!qword_27FCDD728)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27FCDD728);
  }

  return result;
}

unint64_t sub_25E1A2DD8()
{
  result = qword_27FCDD730;
  if (!qword_27FCDD730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FCDD730);
  }

  return result;
}

void sub_25E1A2E2C(void *a1)
{
  v1 = [a1 view];
  if (v1)
  {
    v2 = v1;
    v3 = [objc_opt_self() clearColor];
    [v2 setBackgroundColor_];
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_25E1A2EF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_25E1A2FF4();

  return MEMORY[0x28212EF70](a1, a2, a3, v6);
}

uint64_t sub_25E1A2F58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_25E1A2FF4();

  return MEMORY[0x28212EF38](a1, a2, a3, v6);
}

void sub_25E1A2FBC()
{
  sub_25E1A2FF4();
  sub_25E1A521C();
  __break(1u);
}

unint64_t sub_25E1A2FF4()
{
  result = qword_27FCDD738;
  if (!qword_27FCDD738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FCDD738);
  }

  return result;
}

uint64_t AuthorizationModel.__allocating_init()()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  AuthorizationModel.init()();
  return v3;
}

uint64_t AuthorizationModel.init()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCDCBD8, &qword_25E1A8DF0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v15[-v4 - 8];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCDD740, &qword_25E1A8DF8);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v15[-v9 - 8];
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  v11 = OBJC_IVAR____TtC13PaymentUIBase18AuthorizationModel__authorizationError;
  v17 = 0;
  memset(v16, 0, sizeof(v16));
  sub_25E1A326C(v16, v15);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCDD128, &qword_25E1A8E00);
  sub_25E1A4C6C();
  sub_25E1A32DC(v16);
  (*(v7 + 32))(v0 + v11, v10, v6);
  v12 = OBJC_IVAR____TtC13PaymentUIBase18AuthorizationModel__canShowDetailSheet;
  LOBYTE(v16[0]) = 1;
  sub_25E1A4C6C();
  (*(v2 + 32))(v0 + v12, v5, v1);
  return v0;
}

uint64_t sub_25E1A326C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCDD128, &qword_25E1A8E00);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_25E1A32DC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCDD128, &qword_25E1A8E00);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t AuthorizationModel.__allocating_init(headerTitle:)(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  v7 = swift_allocObject();
  AuthorizationModel.init(headerTitle:)(a1, a2);
  return v7;
}

uint64_t AuthorizationModel.init(headerTitle:)(uint64_t a1, uint64_t a2)
{
  v18 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCDCBD8, &qword_25E1A8DF0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v19[-v7 - 8];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCDD740, &qword_25E1A8DF8);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v19[-v12 - 8];
  *(v2 + 24) = 0;
  *(v2 + 16) = 0;
  v14 = OBJC_IVAR____TtC13PaymentUIBase18AuthorizationModel__authorizationError;
  v21 = 0;
  memset(v20, 0, sizeof(v20));
  sub_25E1A326C(v20, v19);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCDD128, &qword_25E1A8E00);
  sub_25E1A4C6C();
  sub_25E1A32DC(v20);
  (*(v10 + 32))(v2 + v14, v13, v9);
  v15 = OBJC_IVAR____TtC13PaymentUIBase18AuthorizationModel__canShowDetailSheet;
  LOBYTE(v20[0]) = 1;
  sub_25E1A4C6C();
  (*(v5 + 32))(v2 + v15, v8, v4);
  swift_beginAccess();
  v16 = *(v2 + 24);
  *(v2 + 16) = a1;
  *(v2 + 24) = v18;

  return v2;
}

uint64_t sub_25E1A35C0(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *a2;
  swift_beginAccess();
  v5 = *(v4 + 24);
  *(v4 + 16) = v3;
  *(v4 + 24) = v2;
}

uint64_t sub_25E1A3620()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t sub_25E1A366C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 24);
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
}

uint64_t sub_25E1A3710(uint64_t *a1)
{
  v1 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_25E1A4CAC();
}

uint64_t sub_25E1A378C(uint64_t a1, uint64_t *a2)
{
  sub_25E1A326C(a1, v6);
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_25E1A326C(v6, &v5);

  sub_25E1A4CBC();
  return sub_25E1A32DC(v6);
}

uint64_t sub_25E1A3818()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_25E1A4CAC();
}

uint64_t sub_25E1A3890(uint64_t a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_25E1A326C(a1, v3);

  sub_25E1A4CBC();
  return sub_25E1A32DC(a1);
}

uint64_t (*sub_25E1A3910(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_25E1A4C9C();
  return sub_25E179C6C;
}

uint64_t sub_25E1A39B4(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCDD748, &qword_25E1A8E50);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v15 - v10;
  v12 = *(v5 + 16);
  v12(&v15 - v10, a1, v4);
  v13 = *a2;
  v12(v9, v11, v4);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCDD740, &qword_25E1A8DF8);
  sub_25E1A4C8C();
  swift_endAccess();
  return (*(v5 + 8))(v11, v4);
}

uint64_t sub_25E1A3B54(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCDD748, &qword_25E1A8E50);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCDD740, &qword_25E1A8DF8);
  sub_25E1A4C8C();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_25E1A3C8C(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCDD748, &qword_25E1A8E50);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC13PaymentUIBase18AuthorizationModel__authorizationError;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCDD740, &qword_25E1A8DF8);
  sub_25E1A4C7C();
  swift_endAccess();
  return sub_25E179E08;
}

uint64_t sub_25E1A3DFC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_25E1A4CAC();

  *a2 = v5;
  return result;
}

uint64_t sub_25E1A3E7C(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_25E1A4CBC();
}

uint64_t sub_25E1A3EF0()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_25E1A4CAC();

  return v1;
}

uint64_t sub_25E1A3F64()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_25E1A4CBC();
}

uint64_t (*sub_25E1A3FD4(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_25E1A4C9C();
  return sub_25E17FA78;
}

uint64_t sub_25E1A4078(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCDCE80, &qword_25E1A6450);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v15 - v10;
  v12 = *(v5 + 16);
  v12(&v15 - v10, a1, v4);
  v13 = *a2;
  v12(v9, v11, v4);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCDCBD8, &qword_25E1A8DF0);
  sub_25E1A4C8C();
  swift_endAccess();
  return (*(v5 + 8))(v11, v4);
}

uint64_t sub_25E1A4218(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCDCE80, &qword_25E1A6450);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCDCBD8, &qword_25E1A8DF0);
  sub_25E1A4C8C();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_25E1A4350(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCDCE80, &qword_25E1A6450);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC13PaymentUIBase18AuthorizationModel__canShowDetailSheet;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCDCBD8, &qword_25E1A8DF0);
  sub_25E1A4C7C();
  swift_endAccess();
  return sub_25E17FA7C;
}

uint64_t AuthorizationModel.deinit()
{
  v1 = *(v0 + 24);

  v2 = OBJC_IVAR____TtC13PaymentUIBase18AuthorizationModel__authorizationError;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCDD740, &qword_25E1A8DF8);
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  v4 = OBJC_IVAR____TtC13PaymentUIBase18AuthorizationModel__canShowDetailSheet;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCDCBD8, &qword_25E1A8DF0);
  (*(*(v5 - 8) + 8))(v0 + v4, v5);
  return v0;
}

uint64_t AuthorizationModel.__deallocating_deinit()
{
  v1 = *(v0 + 3);

  v2 = OBJC_IVAR____TtC13PaymentUIBase18AuthorizationModel__authorizationError;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCDD740, &qword_25E1A8DF8);
  (*(*(v3 - 8) + 8))(&v0[v2], v3);
  v4 = OBJC_IVAR____TtC13PaymentUIBase18AuthorizationModel__canShowDetailSheet;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCDCBD8, &qword_25E1A8DF0);
  (*(*(v5 - 8) + 8))(&v0[v4], v5);
  v6 = *(*v0 + 48);
  v7 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_25E1A467C@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for AuthorizationModel();
  result = sub_25E1A4C5C();
  *a1 = result;
  return result;
}

uint64_t type metadata accessor for AuthorizationModel()
{
  result = qword_2815603A8;
  if (!qword_2815603A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_25E1A4710()
{
  sub_25E1A4A8C();
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_25E188D6C();
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void sub_25E1A4A8C()
{
  if (!qword_28155FA58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FCDD128, &qword_25E1A8E00);
    v0 = sub_25E1A4CCC();
    if (!v1)
    {
      atomic_store(v0, &qword_28155FA58);
    }
  }
}