uint64_t IssueData.issueID.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t IssueData.issueID.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t sub_22029B578@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x44496575737369 && a2 == 0xE700000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_220370048();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_22029B600(uint64_t a1)
{
  v2 = sub_22029B7C4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22029B63C(uint64_t a1)
{
  v2 = sub_22029B7C4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t IssueData.encode(to:)(void *a1)
{
  sub_22029B99C(0, &qword_281261B78, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  v8 = &v13 - v7;
  v9 = *v1;
  v10 = v1[1];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22029B7C4();
  sub_220370168();
  sub_22036FFB8();
  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_22029B7C4()
{
  result = qword_281262030;
  if (!qword_281262030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281262030);
  }

  return result;
}

uint64_t IssueData.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_22029B99C(0, &qword_27CF273D0, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = &v16 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22029B7C4();
  sub_220370148();
  if (!v2)
  {
    v12 = sub_22036FEE8();
    v14 = v13;
    (*(v7 + 8))(v10, v6);
    *a2 = v12;
    a2[1] = v14;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_22029B99C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_22029B7C4();
    v7 = a3(a1, &type metadata for IssueData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_22029BA20(void *a1)
{
  sub_22029B99C(0, &qword_281261B78, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  v8 = &v13 - v7;
  v9 = *v1;
  v10 = v1[1];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22029B7C4();
  sub_220370168();
  sub_22036FFB8();
  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_22029BB90()
{
  result = qword_27CF273D8;
  if (!qword_27CF273D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF273D8);
  }

  return result;
}

unint64_t sub_22029BBE8()
{
  result = qword_281262020;
  if (!qword_281262020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281262020);
  }

  return result;
}

unint64_t sub_22029BC40()
{
  result = qword_281262028;
  if (!qword_281262028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281262028);
  }

  return result;
}

uint64_t UserBundleSubscriptionContextData.bundleSubscriptionPurchaseID.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return v1;
}

uint64_t UserBundleSubscriptionContextData.bundleSubscriptionPurchaseID.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16);

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

uint64_t UserBundleSubscriptionContextData.sBundlePurchaseID.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  return v1;
}

uint64_t UserBundleSubscriptionContextData.sBundlePurchaseID.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 32);

  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return result;
}

unint64_t sub_22029BE94()
{
  v1 = *v0;
  v2 = 0x66696C706D417369;
  v3 = 0xD00000000000001CLL;
  v4 = 0xD00000000000001CLL;
  if (v1 == 4)
  {
    v4 = 0xD000000000000011;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  if (v1 == 1)
  {
    v2 = 0xD000000000000011;
  }

  if (!*v0)
  {
    v2 = 0xD000000000000018;
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

uint64_t sub_22029BF6C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22029C9A4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22029BF94(uint64_t a1)
{
  v2 = sub_22029C248();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22029BFD0(uint64_t a1)
{
  v2 = sub_22029C248();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t UserBundleSubscriptionContextData.encode(to:)(void *a1)
{
  sub_22029C670(0, &qword_281261BB8, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  v8 = v17 - v7;
  v9 = *v1;
  v10 = v1[1];
  v18 = v1[2];
  v19 = v10;
  v11 = *(v1 + 1);
  v17[2] = *(v1 + 2);
  v17[3] = v11;
  v12 = *(v1 + 3);
  v17[0] = *(v1 + 4);
  v17[1] = v12;
  v13 = v1[40];
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22029C248();
  sub_220370168();
  v27 = v9;
  v26 = 0;
  sub_22029C29C();
  v15 = v20;
  sub_22036FFF8();
  if (!v15)
  {
    LODWORD(v20) = v13;
    v25 = 1;
    sub_22036FFC8();
    v24 = 2;
    sub_22036FFC8();
    v23 = 3;
    sub_22036FF68();
    v22 = 4;
    sub_22036FF68();
    v21 = 5;
    sub_22036FFC8();
  }

  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_22029C248()
{
  result = qword_281262860;
  if (!qword_281262860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281262860);
  }

  return result;
}

unint64_t sub_22029C29C()
{
  result = qword_281263290;
  if (!qword_281263290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281263290);
  }

  return result;
}

uint64_t UserBundleSubscriptionContextData.init(from:)@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_22029C670(0, &qword_281261D68, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = &v27 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22029C248();
  sub_220370148();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    LOBYTE(v34) = 0;
    sub_22029C6D4();
    sub_22036FF28();
    v12 = v36[0];
    v36[0] = 1;
    v33 = sub_22036FEF8();
    v36[0] = 2;
    v32 = sub_22036FEF8();
    v36[0] = 3;
    v13 = sub_22036FE98();
    v15 = v14;
    v30 = v12;
    v31 = v13;
    v36[0] = 4;
    v16 = sub_22036FE98();
    v18 = v17;
    v29 = v16;
    v44 = 5;
    v19 = sub_22036FEF8();
    v28 = v33 & 1;
    v33 = v32 & 1;
    (*(v7 + 8))(v10, v6);
    v32 = v19 & 1;
    v20 = v30;
    LOBYTE(v34) = v30;
    v21 = v28;
    BYTE1(v34) = v28;
    BYTE2(v34) = v33;
    *(&v34 + 3) = v45;
    BYTE7(v34) = v46;
    v22 = v31;
    *(&v34 + 1) = v31;
    *v35 = v15;
    v23 = v29;
    *&v35[8] = v29;
    *&v35[16] = v18;
    v35[24] = v32;
    v24 = *&v35[9];
    v25 = *v35;
    *a2 = v34;
    a2[1] = v25;
    *(a2 + 25) = v24;
    sub_22029C728(&v34, v36);
    __swift_destroy_boxed_opaque_existential_1(a1);
    v36[0] = v20;
    v36[1] = v21;
    v36[2] = v33;
    v37 = v45;
    v38 = v46;
    v39 = v22;
    v40 = v15;
    v41 = v23;
    v42 = v18;
    v43 = v32;
    return sub_22029C760(v36);
  }
}

void sub_22029C670(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_22029C248();
    v7 = a3(a1, &type metadata for UserBundleSubscriptionContextData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_22029C6D4()
{
  result = qword_281263280;
  if (!qword_281263280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281263280);
  }

  return result;
}

uint64_t sub_22029C7C0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 41))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 16);
  if (v3 >= 0xFFFFFFFF)
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

uint64_t sub_22029C81C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

unint64_t sub_22029C8A0()
{
  result = qword_27CF273E0;
  if (!qword_27CF273E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF273E0);
  }

  return result;
}

unint64_t sub_22029C8F8()
{
  result = qword_281262850;
  if (!qword_281262850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281262850);
  }

  return result;
}

unint64_t sub_22029C950()
{
  result = qword_281262858;
  if (!qword_281262858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281262858);
  }

  return result;
}

uint64_t sub_22029C9A4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0xD000000000000018 && 0x8000000220390E00 == a2;
  if (v4 || (sub_220370048() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000220390E20 == a2 || (sub_220370048() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x66696C706D417369 && a2 == 0xED00007265735579 || (sub_220370048() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD00000000000001CLL && 0x8000000220390E40 == a2 || (sub_220370048() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000220390E60 == a2 || (sub_220370048() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD00000000000001CLL && 0x8000000220390E80 == a2)
  {

    return 5;
  }

  else
  {
    v6 = sub_220370048();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

uint64_t SearchSelectionData.selectedResult.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t SearchSelectionData.selectedResult.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

unint64_t sub_22029CC88()
{
  if (*v0)
  {
    result = 0xD000000000000018;
  }

  else
  {
    result = 0x64657463656C6573;
  }

  *v0;
  return result;
}

uint64_t sub_22029CCD4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x64657463656C6573 && a2 == 0xEE00746C75736552;
  if (v6 || (sub_220370048() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000018 && 0x8000000220390EA0 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_220370048();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_22029CDC0(uint64_t a1)
{
  v2 = sub_22029CFD8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22029CDFC(uint64_t a1)
{
  v2 = sub_22029CFD8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SearchSelectionData.encode(to:)(void *a1)
{
  sub_22029D284(0, &qword_27CF273E8, MEMORY[0x277D84538]);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v17 - v7;
  v9 = *v1;
  v10 = v1[1];
  v18 = *(v1 + 16);
  v11 = a1[3];
  v12 = a1[4];
  v13 = a1;
  v15 = v14;
  __swift_project_boxed_opaque_existential_1(v13, v11);
  sub_22029CFD8();
  sub_220370168();
  v21 = 0;
  sub_22036FFB8();
  if (!v2)
  {
    v20 = v18;
    v19 = 1;
    sub_22029D02C();
    sub_22036FFF8();
  }

  return (*(v5 + 8))(v8, v15);
}

unint64_t sub_22029CFD8()
{
  result = qword_27CF273F0;
  if (!qword_27CF273F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF273F0);
  }

  return result;
}

unint64_t sub_22029D02C()
{
  result = qword_27CF273F8;
  if (!qword_27CF273F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF273F8);
  }

  return result;
}

uint64_t SearchSelectionData.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_22029D284(0, &qword_27CF27400, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = &v18 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22029CFD8();
  sub_220370148();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v21 = 0;
  v12 = sub_22036FEE8();
  v14 = v13;
  v15 = v12;
  v19 = 1;
  sub_22029D2E8();
  sub_22036FF28();
  (*(v7 + 8))(v10, v6);
  v16 = v20;
  *a2 = v15;
  *(a2 + 8) = v14;
  *(a2 + 16) = v16;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_22029D284(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_22029CFD8();
    v7 = a3(a1, &type metadata for SearchSelectionData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_22029D2E8()
{
  result = qword_27CF27408;
  if (!qword_27CF27408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF27408);
  }

  return result;
}

unint64_t sub_22029D398()
{
  result = qword_27CF27410;
  if (!qword_27CF27410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF27410);
  }

  return result;
}

unint64_t sub_22029D3F0()
{
  result = qword_27CF27418;
  if (!qword_27CF27418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF27418);
  }

  return result;
}

unint64_t sub_22029D448()
{
  result = qword_27CF27420;
  if (!qword_27CF27420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF27420);
  }

  return result;
}

StocksAnalytics::ArticleSource_optional __swiftcall ArticleSource.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_22036FE78();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t ArticleSource.rawValue.getter()
{
  v1 = 0x656C707061;
  if (*v0 != 1)
  {
    v1 = 0x6F6F686179;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6E776F6E6B6E75;
  }
}

uint64_t sub_22029D54C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x656C707061;
  if (v2 != 1)
  {
    v3 = 0x6F6F686179;
  }

  if (*a1)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0x6E776F6E6B6E75;
  }

  if (v2)
  {
    v5 = 0xE500000000000000;
  }

  else
  {
    v5 = 0xE700000000000000;
  }

  v6 = 0x656C707061;
  if (*a2 != 1)
  {
    v6 = 0x6F6F686179;
  }

  if (*a2)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0x6E776F6E6B6E75;
  }

  if (*a2)
  {
    v8 = 0xE500000000000000;
  }

  else
  {
    v8 = 0xE700000000000000;
  }

  if (v4 == v7 && v5 == v8)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_220370048();
  }

  return v9 & 1;
}

unint64_t sub_22029D644()
{
  result = qword_27CF27428;
  if (!qword_27CF27428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF27428);
  }

  return result;
}

uint64_t sub_22029D698()
{
  v1 = *v0;
  sub_220370108();
  sub_22036FB08();

  return sub_220370128();
}

uint64_t sub_22029D734()
{
  *v0;
  *v0;
  sub_22036FB08();
}

uint64_t sub_22029D7BC()
{
  v1 = *v0;
  sub_220370108();
  sub_22036FB08();

  return sub_220370128();
}

void sub_22029D860(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x656C707061;
  if (v2 != 1)
  {
    v4 = 0x6F6F686179;
  }

  v5 = v2 == 0;
  if (*v1)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0x6E776F6E6B6E75;
  }

  if (!v5)
  {
    v3 = 0xE500000000000000;
  }

  *a1 = v6;
  a1[1] = v3;
}

unint64_t sub_22029D978()
{
  result = qword_27CF27430;
  if (!qword_27CF27430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF27430);
  }

  return result;
}

uint64_t sub_22029DA94()
{
  v0 = sub_22036F118();
  __swift_allocate_value_buffer(v0, qword_27CF27468);
  __swift_project_value_buffer(v0, qword_27CF27468);
  return sub_22036F108();
}

uint64_t WatchSymbolEvent.eventData.setter(uint64_t a1)
{
  sub_220230578();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t WatchSymbolEvent.symbolData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for WatchSymbolEvent(0) + 20);
  sub_22023F868(0, &qword_281266870, sub_220230BFC, sub_220230C50);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t WatchSymbolEvent.symbolData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for WatchSymbolEvent(0) + 20);
  sub_22023F868(0, &qword_281266870, sub_220230BFC, sub_220230C50);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t WatchSymbolEvent.watchedSymbolListData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for WatchSymbolEvent(0) + 24);
  sub_22023F868(0, &qword_281266770, sub_22023D918, sub_22023D96C);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t WatchSymbolEvent.watchedSymbolListData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for WatchSymbolEvent(0) + 24);
  sub_22023F868(0, &qword_281266770, sub_22023D918, sub_22023D96C);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t WatchSymbolEvent.watchlistData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for WatchSymbolEvent(0) + 28);
  sub_22023F868(0, &qword_281266810, sub_220237C1C, sub_220237C70);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t WatchSymbolEvent.watchlistData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for WatchSymbolEvent(0) + 28);
  sub_22023F868(0, &qword_281266810, sub_220237C1C, sub_220237C70);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t WatchSymbolEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CEACF8];
  sub_220230578();
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for WatchSymbolEvent(0);
  v5 = v4[5];
  sub_22023F868(0, &qword_281266870, sub_220230BFC, sub_220230C50);
  (*(*(v6 - 8) + 104))(a1 + v5, v2, v6);
  v7 = v4[6];
  sub_22023F868(0, &qword_281266770, sub_22023D918, sub_22023D96C);
  (*(*(v8 - 8) + 104))(a1 + v7, v2, v8);
  v9 = v4[7];
  sub_22023F868(0, &qword_281266810, sub_220237C1C, sub_220237C70);
  v11 = *(*(v10 - 8) + 104);

  return v11(a1 + v9, v2, v10);
}

uint64_t WatchSymbolEvent.Model.symbolData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for WatchSymbolEvent.Model(0) + 20);
  v4 = *(v3 + 8);
  v5 = *(v3 + 16);
  v6 = *(v3 + 24);
  v7 = *(v3 + 32);
  *a1 = *v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  *(a1 + 32) = v7;
}

uint64_t WatchSymbolEvent.Model.watchedSymbolListData.getter@<X0>(void *a1@<X8>)
{
  *a1 = *(v1 + *(type metadata accessor for WatchSymbolEvent.Model(0) + 24));
}

uint64_t WatchSymbolEvent.Model.watchlistData.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for WatchSymbolEvent.Model(0);
  *a1 = *(v1 + *(result + 28));
  return result;
}

int *WatchSymbolEvent.Model.init(eventData:symbolData:watchedSymbolListData:watchlistData:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, char *a4@<X3>, uint64_t a5@<X8>)
{
  v7 = *a2;
  v8 = a2[1];
  v9 = *(a2 + 16);
  v10 = a2[3];
  v11 = a2[4];
  v12 = *a3;
  v13 = *a4;
  v14 = sub_22036F388();
  (*(*(v14 - 8) + 32))(a5, a1, v14);
  result = type metadata accessor for WatchSymbolEvent.Model(0);
  v16 = a5 + result[5];
  *v16 = v7;
  *(v16 + 8) = v8;
  *(v16 + 16) = v9;
  *(v16 + 24) = v10;
  *(v16 + 32) = v11;
  *(a5 + result[6]) = v12;
  *(a5 + result[7]) = v13;
  return result;
}

uint64_t sub_22029E488(uint64_t a1)
{
  v2 = sub_22029E7CC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22029E4C4(uint64_t a1)
{
  v2 = sub_22029E7CC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t WatchSymbolEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  sub_22029EC98(0, &qword_27CF27480, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = &v19 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22029E7CC();
  sub_220370168();
  LOBYTE(v20) = 0;
  sub_22036F388();
  sub_2202366E0(&qword_2812666A8);
  sub_22036FFF8();
  if (!v2)
  {
    v12 = type metadata accessor for WatchSymbolEvent.Model(0);
    v13 = (v3 + v12[5]);
    v14 = v13[1];
    v15 = *(v13 + 16);
    v16 = v13[3];
    v17 = v13[4];
    v20 = *v13;
    v21 = v14;
    v22 = v15;
    v23 = v16;
    v24 = v17;
    HIBYTE(v19) = 1;
    sub_220230C50();

    sub_22036FFF8();

    v20 = *(v3 + v12[6]);
    HIBYTE(v19) = 2;
    sub_22023D96C();

    sub_22036FFF8();

    LOBYTE(v20) = *(v3 + v12[7]);
    HIBYTE(v19) = 3;
    sub_220237C70();
    sub_22036FFF8();
  }

  return (*(v7 + 8))(v10, v6);
}

unint64_t sub_22029E7CC()
{
  result = qword_27CF27488;
  if (!qword_27CF27488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF27488);
  }

  return result;
}

uint64_t WatchSymbolEvent.Model.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v28 = a2;
  v4 = sub_22036F388();
  v29 = *(v4 - 8);
  v5 = *(v29 + 64);
  MEMORY[0x28223BE20](v4);
  v30 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22029EC98(0, &qword_27CF27490, MEMORY[0x277D844C8]);
  v8 = *(v7 - 8);
  v31 = v7;
  v32 = v8;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v27 - v10;
  v12 = type metadata accessor for WatchSymbolEvent.Model(0);
  v13 = *(*(v12 - 1) + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22029E7CC();
  v33 = v11;
  sub_220370148();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v27 = a1;
  v17 = v15;
  v18 = v29;
  LOBYTE(v34) = 0;
  sub_2202366E0(&qword_2812666A0);
  v19 = v30;
  v20 = v31;
  sub_22036FF28();
  (*(v18 + 32))(v17, v19, v4);
  v39 = 1;
  sub_220230BFC();
  sub_22036FF28();
  v21 = v35;
  v22 = v36;
  v23 = v37;
  v24 = v38;
  v25 = v17 + v12[5];
  *v25 = v34;
  *(v25 + 8) = v21;
  *(v25 + 16) = v22;
  *(v25 + 24) = v23;
  *(v25 + 32) = v24;
  v39 = 2;
  sub_22023D918();
  sub_22036FF28();
  *(v17 + v12[6]) = v34;
  v39 = 3;
  sub_220237C1C();
  sub_22036FF28();
  (*(v32 + 8))(v33, v20);
  *(v17 + v12[7]) = v34;
  sub_22029ECFC(v17, v28);
  __swift_destroy_boxed_opaque_existential_1(v27);
  return sub_22029ED60(v17);
}

void sub_22029EC98(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_22029E7CC();
    v7 = a3(a1, &type metadata for WatchSymbolEvent.Model.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_22029ECFC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WatchSymbolEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22029ED60(uint64_t a1)
{
  v2 = type metadata accessor for WatchSymbolEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_22029EEF8()
{
  result = qword_27CF27498;
  if (!qword_27CF27498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF27498);
  }

  return result;
}

unint64_t sub_22029EF50()
{
  result = qword_27CF274A0;
  if (!qword_27CF274A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF274A0);
  }

  return result;
}

unint64_t sub_22029EFA8()
{
  result = qword_27CF274A8;
  if (!qword_27CF274A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF274A8);
  }

  return result;
}

uint64_t sub_22029F064@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x7954746C75736572 && a2 == 0xEA00000000006570)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_220370048();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_22029F0F4(uint64_t a1)
{
  v2 = sub_22029F2C8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22029F130(uint64_t a1)
{
  v2 = sub_22029F2C8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SubscriptionResultData.encode(to:)(void *a1)
{
  sub_22029F508(0, &qword_27CF274B0, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  v8 = &v12 - v7;
  v9 = *v1;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22029F2C8();
  sub_220370168();
  v13 = v9;
  sub_22029F31C();
  sub_22036FFF8();
  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_22029F2C8()
{
  result = qword_27CF274B8;
  if (!qword_27CF274B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF274B8);
  }

  return result;
}

unint64_t sub_22029F31C()
{
  result = qword_27CF274C0;
  if (!qword_27CF274C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF274C0);
  }

  return result;
}

uint64_t SubscriptionResultData.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  sub_22029F508(0, &qword_27CF274C8, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = &v13 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22029F2C8();
  sub_220370148();
  if (!v2)
  {
    sub_22029F56C();
    sub_22036FF28();
    (*(v7 + 8))(v10, v6);
    *a2 = v14;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_22029F508(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_22029F2C8();
    v7 = a3(a1, &type metadata for SubscriptionResultData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_22029F56C()
{
  result = qword_27CF274D0;
  if (!qword_27CF274D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF274D0);
  }

  return result;
}

unint64_t sub_22029F5C4()
{
  result = qword_27CF274D8;
  if (!qword_27CF274D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF274D8);
  }

  return result;
}

unint64_t sub_22029F61C()
{
  result = qword_27CF274E0;
  if (!qword_27CF274E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF274E0);
  }

  return result;
}

unint64_t sub_22029F6C4()
{
  result = qword_27CF274E8;
  if (!qword_27CF274E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF274E8);
  }

  return result;
}

unint64_t sub_22029F71C()
{
  result = qword_27CF274F0;
  if (!qword_27CF274F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF274F0);
  }

  return result;
}

unint64_t sub_22029F774()
{
  result = qword_27CF274F8;
  if (!qword_27CF274F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF274F8);
  }

  return result;
}

uint64_t VideoAdLoadData.init(duration:loadState:)@<X0>(uint64_t result@<X0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a2;
  *a3 = result;
  *(a3 + 8) = v3;
  return result;
}

uint64_t sub_22029F848()
{
  if (*v0)
  {
    result = 0x7461745364616F6CLL;
  }

  else
  {
    result = 0x6E6F697461727564;
  }

  *v0;
  return result;
}

uint64_t sub_22029F888@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6E6F697461727564 && a2 == 0xE800000000000000;
  if (v6 || (sub_220370048() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x7461745364616F6CLL && a2 == 0xE900000000000065)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_220370048();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_22029F96C(uint64_t a1)
{
  v2 = sub_22029FB7C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22029F9A8(uint64_t a1)
{
  v2 = sub_22029FB7C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t VideoAdLoadData.encode(to:)(void *a1)
{
  sub_22029FDF0(0, &qword_27CF27500, MEMORY[0x277D84538]);
  v5 = v4;
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  v9 = &v13 - v8;
  v10 = *v1;
  v14 = *(v1 + 8);
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22029FB7C();
  sub_220370168();
  v17 = 0;
  sub_220370018();
  if (!v2)
  {
    v16 = v14;
    v15 = 1;
    sub_22029FBD0();
    sub_22036FFF8();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_22029FB7C()
{
  result = qword_27CF27508;
  if (!qword_27CF27508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF27508);
  }

  return result;
}

unint64_t sub_22029FBD0()
{
  result = qword_27CF27510;
  if (!qword_27CF27510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF27510);
  }

  return result;
}

uint64_t VideoAdLoadData.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_22029FDF0(0, &qword_27CF27518, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = &v15 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22029FB7C();
  sub_220370148();
  if (!v2)
  {
    v18 = 0;
    v12 = sub_22036FF48();
    v16 = 1;
    sub_22029FE54();
    sub_22036FF28();
    (*(v7 + 8))(v10, v6);
    v14 = v17;
    *a2 = v12;
    *(a2 + 8) = v14;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_22029FDF0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_22029FB7C();
    v7 = a3(a1, &type metadata for VideoAdLoadData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_22029FE54()
{
  result = qword_27CF27520;
  if (!qword_27CF27520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF27520);
  }

  return result;
}

unint64_t sub_22029FEAC()
{
  result = qword_27CF27528;
  if (!qword_27CF27528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF27528);
  }

  return result;
}

unint64_t sub_22029FF04()
{
  result = qword_27CF27530;
  if (!qword_27CF27530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF27530);
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

uint64_t getEnumTagSinglePayload for VideoAdLoadData(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFB && *(a1 + 9))
  {
    return (*a1 + 251);
  }

  v3 = *(a1 + 8);
  v4 = v3 >= 6;
  v5 = v3 - 6;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for VideoAdLoadData(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFA)
  {
    *(result + 8) = 0;
    *result = a2 - 251;
    if (a3 >= 0xFB)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFB)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 5;
    }
  }

  return result;
}

unint64_t sub_2202A0048()
{
  result = qword_27CF27538;
  if (!qword_27CF27538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF27538);
  }

  return result;
}

unint64_t sub_2202A00A0()
{
  result = qword_27CF27540;
  if (!qword_27CF27540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF27540);
  }

  return result;
}

unint64_t sub_2202A00F8()
{
  result = qword_27CF27548;
  if (!qword_27CF27548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF27548);
  }

  return result;
}

uint64_t sub_2202A01B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6D6954616964656DLL && a2 == 0xEF646579616C5065)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_220370048();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_2202A0240(uint64_t a1)
{
  v2 = sub_2202A0400();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2202A027C(uint64_t a1)
{
  v2 = sub_2202A0400();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MediaEngagementCompletedData.encode(to:)(void *a1)
{
  sub_2202A05D4(0, &qword_27CF27550, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  v8 = &v12 - v7;
  v9 = *v1;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2202A0400();
  sub_220370168();
  sub_220370018();
  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_2202A0400()
{
  result = qword_27CF27558;
  if (!qword_27CF27558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF27558);
  }

  return result;
}

uint64_t MediaEngagementCompletedData.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_2202A05D4(0, &qword_27CF27560, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = &v14 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2202A0400();
  sub_220370148();
  if (!v2)
  {
    v12 = sub_22036FF48();
    (*(v7 + 8))(v10, v6);
    *a2 = v12;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_2202A05D4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_2202A0400();
    v7 = a3(a1, &type metadata for MediaEngagementCompletedData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_2202A063C()
{
  result = qword_281262A08;
  if (!qword_281262A08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281262A08);
  }

  return result;
}

unint64_t sub_2202A0694()
{
  result = qword_281262A10;
  if (!qword_281262A10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281262A10);
  }

  return result;
}

uint64_t sub_2202A0700(void *a1)
{
  sub_2202A05D4(0, &qword_27CF27550, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  v8 = &v12 - v7;
  v9 = *v1;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2202A0400();
  sub_220370168();
  sub_220370018();
  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_2202A086C()
{
  result = qword_27CF27568;
  if (!qword_27CF27568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF27568);
  }

  return result;
}

unint64_t sub_2202A08C4()
{
  result = qword_27CF27570;
  if (!qword_27CF27570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF27570);
  }

  return result;
}

unint64_t sub_2202A091C()
{
  result = qword_27CF27578;
  if (!qword_27CF27578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF27578);
  }

  return result;
}

uint64_t sub_2202A0970(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x6E776F6E6B6E75;
  v3 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v5 = 0x676E696B61657262;
    }

    else
    {
      v5 = 0x6E776F6E6B6E75;
    }

    if (v3)
    {
      v4 = 0xE800000000000000;
    }

    else
    {
      v4 = 0xE700000000000000;
    }
  }

  else if (a1 == 2)
  {
    v5 = 0x69706F6C65766564;
    v4 = 0xEA0000000000676ELL;
  }

  else if (a1 == 3)
  {
    v4 = 0xE700000000000000;
    v5 = 0x64657461647075;
  }

  else
  {
    v5 = 0x6C65527373657270;
    v4 = 0xEC00000065736165;
  }

  if (a2 <= 1u)
  {
    v6 = 0xE700000000000000;
    v7 = 0xE800000000000000;
    v8 = 0x676E696B61657262;
    v9 = a2 == 0;
  }

  else
  {
    v2 = 0x69706F6C65766564;
    v6 = 0xEA0000000000676ELL;
    v7 = 0xE700000000000000;
    v8 = 0x64657461647075;
    if (a2 != 3)
    {
      v8 = 0x6C65527373657270;
      v7 = 0xEC00000065736165;
    }

    v9 = a2 == 2;
  }

  if (v9)
  {
    v10 = v2;
  }

  else
  {
    v10 = v8;
  }

  if (v9)
  {
    v11 = v6;
  }

  else
  {
    v11 = v7;
  }

  if (v5 == v10 && v4 == v11)
  {
    v12 = 1;
  }

  else
  {
    v12 = sub_220370048();
  }

  return v12 & 1;
}

uint64_t sub_2202A0B04(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE400000000000000;
  v4 = 0xE500000000000000;
  v5 = 0x7974666966;
  v6 = 0x4679746E65766573;
  v7 = 0xEB00000000657669;
  if (a1 != 4)
  {
    v6 = 0x72646E7548656E6FLL;
    v7 = 0xEA00000000006465;
  }

  if (a1 != 3)
  {
    v5 = v6;
    v4 = v7;
  }

  v8 = 0xE300000000000000;
  v9 = 7234932;
  if (a1 != 1)
  {
    v9 = 0x694679746E657774;
    v8 = 0xEA00000000006576;
  }

  if (a1)
  {
    v3 = v8;
  }

  else
  {
    v9 = 1869768058;
  }

  if (a1 <= 2u)
  {
    v10 = v9;
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
      v12 = 0xE500000000000000;
      if (v10 != 0x7974666966)
      {
        goto LABEL_34;
      }
    }

    else if (a2 == 4)
    {
      v12 = 0xEB00000000657669;
      if (v10 != 0x4679746E65766573)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v12 = 0xEA00000000006465;
      if (v10 != 0x72646E7548656E6FLL)
      {
LABEL_34:
        v13 = sub_220370048();
        goto LABEL_35;
      }
    }
  }

  else if (a2)
  {
    if (a2 == 1)
    {
      v12 = 0xE300000000000000;
      if (v10 != 7234932)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v12 = 0xEA00000000006576;
      if (v10 != 0x694679746E657774)
      {
        goto LABEL_34;
      }
    }
  }

  else
  {
    v12 = 0xE400000000000000;
    if (v10 != 1869768058)
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

uint64_t sub_2202A0CEC(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE700000000000000;
  v4 = 0xE700000000000000;
  v5 = 0x646574616C6572;
  if (a1 != 5)
  {
    v5 = 25697;
    v4 = 0xE200000000000000;
  }

  v6 = 0xE600000000000000;
  v7 = 0x6C6F626D7973;
  if (a1 != 3)
  {
    v7 = 0x6D6F724665726F6DLL;
    v6 = 0xE800000000000000;
  }

  if (a1 <= 4u)
  {
    v5 = v7;
    v4 = v6;
  }

  v8 = 0xE700000000000000;
  v9 = 0x64657461727563;
  if (a1 != 1)
  {
    v9 = 0x69726F7453706F74;
    v8 = 0xEA00000000007365;
  }

  if (a1)
  {
    v3 = v8;
  }

  else
  {
    v9 = 0x6E776F6E6B6E75;
  }

  if (a1 <= 2u)
  {
    v10 = v9;
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

  if (a2 <= 2u)
  {
    if (!a2)
    {
      v12 = 0xE700000000000000;
      if (v10 != 0x6E776F6E6B6E75)
      {
        goto LABEL_39;
      }

      goto LABEL_37;
    }

    if (a2 != 1)
    {
      v12 = 0xEA00000000007365;
      if (v10 != 0x69726F7453706F74)
      {
        goto LABEL_39;
      }

      goto LABEL_37;
    }

    v12 = 0xE700000000000000;
    v13 = 1634891107;
    goto LABEL_28;
  }

  if (a2 <= 4u)
  {
    if (a2 == 3)
    {
      v12 = 0xE600000000000000;
      if (v10 != 0x6C6F626D7973)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v12 = 0xE800000000000000;
      if (v10 != 0x6D6F724665726F6DLL)
      {
        goto LABEL_39;
      }
    }

    goto LABEL_37;
  }

  if (a2 == 5)
  {
    v12 = 0xE700000000000000;
    v13 = 1634493810;
LABEL_28:
    if (v10 != (v13 | 0x64657400000000))
    {
      goto LABEL_39;
    }

    goto LABEL_37;
  }

  v12 = 0xE200000000000000;
  if (v10 != 25697)
  {
LABEL_39:
    v14 = sub_220370048();
    goto LABEL_40;
  }

LABEL_37:
  if (v11 != v12)
  {
    goto LABEL_39;
  }

  v14 = 1;
LABEL_40:

  return v14 & 1;
}

uint64_t sub_2202A0EF4(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v4 = 0x676B636142707061;
    }

    else
    {
      v4 = 0x6E776F6E6B6E75;
    }

    if (v2)
    {
      v3 = 0xED0000646E756F72;
    }

    else
    {
      v3 = 0xE700000000000000;
    }
  }

  else if (a1 == 2)
  {
    v4 = 0x6976614E72657375;
    v3 = 0xEE006E6F69746167;
  }

  else if (a1 == 3)
  {
    v3 = 0xE500000000000000;
    v4 = 0x6873617263;
  }

  else
  {
    v4 = 0x6975516563726F66;
    v3 = 0xE900000000000074;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v9 = 0x676B636142707061;
    }

    else
    {
      v9 = 0x6E776F6E6B6E75;
    }

    if (a2)
    {
      v8 = 0xED0000646E756F72;
    }

    else
    {
      v8 = 0xE700000000000000;
    }

    if (v4 != v9)
    {
      goto LABEL_33;
    }
  }

  else
  {
    v5 = 0xE500000000000000;
    v6 = 0x6873617263;
    if (a2 != 3)
    {
      v6 = 0x6975516563726F66;
      v5 = 0xE900000000000074;
    }

    if (a2 == 2)
    {
      v7 = 0x6976614E72657375;
    }

    else
    {
      v7 = v6;
    }

    if (a2 == 2)
    {
      v8 = 0xEE006E6F69746167;
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
    v10 = sub_220370048();
    goto LABEL_34;
  }

  v10 = 1;
LABEL_34:

  return v10 & 1;
}

uint64_t sub_2202A10B0(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x6E776F6E6B6E75;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0xD000000000000012;
    }

    else
    {
      v4 = 0x79726F7473;
    }

    if (v3 == 2)
    {
      v5 = 0x800000022038F550;
    }

    else
    {
      v5 = 0xE500000000000000;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 1701736302;
    }

    else
    {
      v4 = 0x6E776F6E6B6E75;
    }

    if (v3)
    {
      v5 = 0xE400000000000000;
    }

    else
    {
      v5 = 0xE700000000000000;
    }
  }

  v6 = 0xE700000000000000;
  v7 = 0xD000000000000012;
  v8 = 0x800000022038F550;
  if (a2 != 2)
  {
    v7 = 0x79726F7473;
    v8 = 0xE500000000000000;
  }

  if (a2)
  {
    v2 = 1701736302;
    v6 = 0xE400000000000000;
  }

  if (a2 <= 1u)
  {
    v9 = v2;
  }

  else
  {
    v9 = v7;
  }

  if (a2 <= 1u)
  {
    v10 = v6;
  }

  else
  {
    v10 = v8;
  }

  if (v4 == v9 && v5 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_220370048();
  }

  return v11 & 1;
}

uint64_t sub_2202A11DC(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x6E776F6E6B6E75;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0x756F59726F66;
    }

    else
    {
      v4 = 6385509;
    }

    if (v3 == 2)
    {
      v5 = 0xE600000000000000;
    }

    else
    {
      v5 = 0xE300000000000000;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0x6C6F626D7973;
    }

    else
    {
      v4 = 0x6E776F6E6B6E75;
    }

    if (v3)
    {
      v5 = 0xE600000000000000;
    }

    else
    {
      v5 = 0xE700000000000000;
    }
  }

  v6 = 0xE700000000000000;
  v7 = 0xE600000000000000;
  v8 = 0x756F59726F66;
  if (a2 != 2)
  {
    v8 = 6385509;
    v7 = 0xE300000000000000;
  }

  if (a2)
  {
    v2 = 0x6C6F626D7973;
    v6 = 0xE600000000000000;
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
    v11 = sub_220370048();
  }

  return v11 & 1;
}

uint64_t sub_2202A1300(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x6C616974696E69;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0x64656C696166;
    }

    else
    {
      v4 = 0x656C6C69666C7566;
    }

    if (v3 == 2)
    {
      v5 = 0xE600000000000000;
    }

    else
    {
      v5 = 0xE900000000000064;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0x676E69646E6570;
    }

    else
    {
      v4 = 0x6C616974696E69;
    }

    v5 = 0xE700000000000000;
  }

  v6 = 0xE600000000000000;
  v7 = 0x64656C696166;
  if (a2 != 2)
  {
    v7 = 0x656C6C69666C7566;
    v6 = 0xE900000000000064;
  }

  if (a2)
  {
    v2 = 0x676E69646E6570;
  }

  if (a2 <= 1u)
  {
    v8 = v2;
  }

  else
  {
    v8 = v7;
  }

  if (a2 <= 1u)
  {
    v9 = 0xE700000000000000;
  }

  else
  {
    v9 = v6;
  }

  if (v4 == v8 && v5 == v9)
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_220370048();
  }

  return v10 & 1;
}

uint64_t sub_2202A1444(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE700000000000000;
  v4 = 0xEC000000646C6F53;
  v5 = 0x6573756F68;
  if (a1 == 2)
  {
    v5 = 0x72656C6C65736572;
  }

  else
  {
    v4 = 0xE500000000000000;
  }

  v6 = 0xD000000000000013;
  if (a1)
  {
    v3 = 0x800000022038FAB0;
  }

  else
  {
    v6 = 0x6E776F6E6B6E75;
  }

  if (a1 <= 1u)
  {
    v7 = v6;
  }

  else
  {
    v7 = v5;
  }

  if (v2 <= 1)
  {
    v8 = v3;
  }

  else
  {
    v8 = v4;
  }

  if (a2 > 1u)
  {
    if (a2 == 2)
    {
      v11 = 0x72656C6C65736572;
    }

    else
    {
      v11 = 0x6573756F68;
    }

    if (a2 == 2)
    {
      v10 = 0xEC000000646C6F53;
    }

    else
    {
      v10 = 0xE500000000000000;
    }

    if (v7 != v11)
    {
      goto LABEL_31;
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
      v9 = 0x6E776F6E6B6E75;
    }

    if (a2)
    {
      v10 = 0x800000022038FAB0;
    }

    else
    {
      v10 = 0xE700000000000000;
    }

    if (v7 != v9)
    {
      goto LABEL_31;
    }
  }

  if (v8 != v10)
  {
LABEL_31:
    v12 = sub_220370048();
    goto LABEL_32;
  }

  v12 = 1;
LABEL_32:

  return v12 & 1;
}

uint64_t sub_2202A1594(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x6E776F6E6B6E75;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0x65726F7453707061;
    }

    else
    {
      v4 = 0x6973626557627570;
    }

    if (v3 == 2)
    {
      v5 = 0xE800000000000000;
    }

    else
    {
      v5 = 0xEA00000000006574;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0x7070417377656ELL;
    }

    else
    {
      v4 = 0x6E776F6E6B6E75;
    }

    v5 = 0xE700000000000000;
  }

  v6 = 0xE800000000000000;
  v7 = 0x65726F7453707061;
  if (a2 != 2)
  {
    v7 = 0x6973626557627570;
    v6 = 0xEA00000000006574;
  }

  if (a2)
  {
    v2 = 0x7070417377656ELL;
  }

  if (a2 <= 1u)
  {
    v8 = v2;
  }

  else
  {
    v8 = v7;
  }

  if (a2 <= 1u)
  {
    v9 = 0xE700000000000000;
  }

  else
  {
    v9 = v6;
  }

  if (v4 == v8 && v5 == v9)
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_220370048();
  }

  return v10 & 1;
}

uint64_t sub_2202A16E0(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x6E776F6E6B6E75;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0x6C61697274;
    }

    else
    {
      v4 = 1684627824;
    }

    if (v3 == 2)
    {
      v5 = 0xE500000000000000;
    }

    else
    {
      v5 = 0xE400000000000000;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 1701147238;
    }

    else
    {
      v4 = 0x6E776F6E6B6E75;
    }

    if (v3)
    {
      v5 = 0xE400000000000000;
    }

    else
    {
      v5 = 0xE700000000000000;
    }
  }

  v6 = 0xE700000000000000;
  v7 = 0xE500000000000000;
  v8 = 0x6C61697274;
  if (a2 != 2)
  {
    v8 = 1684627824;
    v7 = 0xE400000000000000;
  }

  if (a2)
  {
    v2 = 1701147238;
    v6 = 0xE400000000000000;
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
    v11 = sub_220370048();
  }

  return v11 & 1;
}

uint64_t sub_2202A17F8(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v4 = 1768319351;
    }

    else
    {
      v4 = 0x6E776F6E6B6E75;
    }

    if (v2)
    {
      v3 = 0xE400000000000000;
    }

    else
    {
      v3 = 0xE700000000000000;
    }
  }

  else if (a1 == 2)
  {
    v3 = 0xE400000000000000;
    v4 = 1851881335;
  }

  else if (a1 == 3)
  {
    v3 = 0xE600000000000000;
    v4 = 0x67356E617777;
  }

  else
  {
    v4 = 0x6863616552746F6ELL;
    v3 = 0xEC000000656C6261;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v9 = 1768319351;
    }

    else
    {
      v9 = 0x6E776F6E6B6E75;
    }

    if (a2)
    {
      v8 = 0xE400000000000000;
    }

    else
    {
      v8 = 0xE700000000000000;
    }

    if (v4 != v9)
    {
      goto LABEL_33;
    }
  }

  else
  {
    v5 = 0xE600000000000000;
    v6 = 0x67356E617777;
    if (a2 != 3)
    {
      v6 = 0x6863616552746F6ELL;
      v5 = 0xEC000000656C6261;
    }

    if (a2 == 2)
    {
      v7 = 1851881335;
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
    v10 = sub_220370048();
    goto LABEL_34;
  }

  v10 = 1;
LABEL_34:

  return v10 & 1;
}

uint64_t sub_2202A196C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE700000000000000;
  v4 = 0xEB00000000726F72;
  v5 = 0x617461446F6ELL;
  if (a1 == 2)
  {
    v5 = 0x7245726576726573;
  }

  else
  {
    v4 = 0xE600000000000000;
  }

  v6 = 0xD000000000000012;
  if (a1)
  {
    v3 = 0x800000022038FF90;
  }

  else
  {
    v6 = 0x6E776F6E6B6E75;
  }

  if (a1 <= 1u)
  {
    v7 = v6;
  }

  else
  {
    v7 = v5;
  }

  if (v2 <= 1)
  {
    v8 = v3;
  }

  else
  {
    v8 = v4;
  }

  if (a2 > 1u)
  {
    if (a2 == 2)
    {
      v11 = 0x7245726576726573;
    }

    else
    {
      v11 = 0x617461446F6ELL;
    }

    if (a2 == 2)
    {
      v10 = 0xEB00000000726F72;
    }

    else
    {
      v10 = 0xE600000000000000;
    }

    if (v7 != v11)
    {
      goto LABEL_31;
    }
  }

  else
  {
    if (a2)
    {
      v9 = 0xD000000000000012;
    }

    else
    {
      v9 = 0x6E776F6E6B6E75;
    }

    if (a2)
    {
      v10 = 0x800000022038FF90;
    }

    else
    {
      v10 = 0xE700000000000000;
    }

    if (v7 != v9)
    {
      goto LABEL_31;
    }
  }

  if (v8 != v10)
  {
LABEL_31:
    v12 = sub_220370048();
    goto LABEL_32;
  }

  v12 = 1;
LABEL_32:

  return v12 & 1;
}

uint64_t sub_2202A1ABC(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v4 = 0x6573616863727570;
    }

    else
    {
      v4 = 0x6E776F6E6B6E75;
    }

    if (v2)
    {
      v3 = 0xED00007465656853;
    }

    else
    {
      v3 = 0xE700000000000000;
    }
  }

  else if (a1 == 2)
  {
    v4 = 0x50676E69646E616CLL;
    v3 = 0xEB00000000656761;
  }

  else if (a1 == 3)
  {
    v3 = 0xE400000000000000;
    v4 = 1802398060;
  }

  else
  {
    v3 = 0xE700000000000000;
    v4 = 0x65676150706D61;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v9 = 0x6573616863727570;
    }

    else
    {
      v9 = 0x6E776F6E6B6E75;
    }

    if (a2)
    {
      v8 = 0xED00007465656853;
    }

    else
    {
      v8 = 0xE700000000000000;
    }

    if (v4 != v9)
    {
      goto LABEL_33;
    }
  }

  else
  {
    v5 = 0xE400000000000000;
    v6 = 1802398060;
    if (a2 != 3)
    {
      v6 = 0x65676150706D61;
      v5 = 0xE700000000000000;
    }

    if (a2 == 2)
    {
      v7 = 0x50676E69646E616CLL;
    }

    else
    {
      v7 = v6;
    }

    if (a2 == 2)
    {
      v8 = 0xEB00000000656761;
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
    v10 = sub_220370048();
    goto LABEL_34;
  }

  v10 = 1;
LABEL_34:

  return v10 & 1;
}

uint64_t sub_2202A1C60(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x6E776F6E6B6E75;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0x68637461776E75;
    }

    else
    {
      v4 = 0x626D795377656976;
    }

    if (v3 == 2)
    {
      v5 = 0xE700000000000000;
    }

    else
    {
      v5 = 0xEE00646565466C6FLL;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0x6863746177;
    }

    else
    {
      v4 = 0x6E776F6E6B6E75;
    }

    if (v3)
    {
      v5 = 0xE500000000000000;
    }

    else
    {
      v5 = 0xE700000000000000;
    }
  }

  v6 = 0xE700000000000000;
  v7 = 0xE700000000000000;
  v8 = 0x68637461776E75;
  if (a2 != 2)
  {
    v8 = 0x626D795377656976;
    v7 = 0xEE00646565466C6FLL;
  }

  if (a2)
  {
    v2 = 0x6863746177;
    v6 = 0xE500000000000000;
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
    v11 = sub_220370048();
  }

  return v11 & 1;
}

uint64_t sub_2202A1DB4(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x6E776F6E6B6E75;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0x6269726373627573;
    }

    else
    {
      v4 = 0x6373627553746F6ELL;
    }

    if (v3 == 2)
    {
      v5 = 0xEA00000000006465;
    }

    else
    {
      v5 = 0xED00006465626972;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0x6C61697274;
    }

    else
    {
      v4 = 0x6E776F6E6B6E75;
    }

    if (v3)
    {
      v5 = 0xE500000000000000;
    }

    else
    {
      v5 = 0xE700000000000000;
    }
  }

  v6 = 0xE700000000000000;
  v7 = 0x6269726373627573;
  v8 = 0xEA00000000006465;
  if (a2 != 2)
  {
    v7 = 0x6373627553746F6ELL;
    v8 = 0xED00006465626972;
  }

  if (a2)
  {
    v2 = 0x6C61697274;
    v6 = 0xE500000000000000;
  }

  if (a2 <= 1u)
  {
    v9 = v2;
  }

  else
  {
    v9 = v7;
  }

  if (a2 <= 1u)
  {
    v10 = v6;
  }

  else
  {
    v10 = v8;
  }

  if (v4 == v9 && v5 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_220370048();
  }

  return v11 & 1;
}

uint64_t sub_2202A1F10(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x6E776F6E6B6E75;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 1684366694;
    }

    else
    {
      v4 = 0x50676E69646E616CLL;
    }

    if (v3 == 2)
    {
      v5 = 0xE400000000000000;
    }

    else
    {
      v5 = 0xEB00000000656761;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0x656C6369747261;
    }

    else
    {
      v4 = 0x6E776F6E6B6E75;
    }

    v5 = 0xE700000000000000;
  }

  v6 = 0xE400000000000000;
  v7 = 1684366694;
  if (a2 != 2)
  {
    v7 = 0x50676E69646E616CLL;
    v6 = 0xEB00000000656761;
  }

  if (a2)
  {
    v2 = 0x656C6369747261;
  }

  if (a2 <= 1u)
  {
    v8 = v2;
  }

  else
  {
    v8 = v7;
  }

  if (a2 <= 1u)
  {
    v9 = 0xE700000000000000;
  }

  else
  {
    v9 = v6;
  }

  if (v4 == v8 && v5 == v9)
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_220370048();
  }

  return v10 & 1;
}

uint64_t sub_2202A2054(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v5 = 0x73736563637573;
    }

    else
    {
      v5 = 0x6E776F6E6B6E75;
    }

    v6 = 0xE700000000000000;
  }

  else
  {
    v3 = 0xE600000000000000;
    v4 = 0x6C65636E6163;
    if (a1 != 3)
    {
      v4 = 0xD000000000000015;
      v3 = 0x800000022038FCE0;
    }

    if (a1 == 2)
    {
      v5 = 1818845542;
    }

    else
    {
      v5 = v4;
    }

    if (v2 == 2)
    {
      v6 = 0xE400000000000000;
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
      v11 = 0x73736563637573;
    }

    else
    {
      v11 = 0x6E776F6E6B6E75;
    }

    v10 = 0xE700000000000000;
    if (v5 != v11)
    {
      goto LABEL_32;
    }
  }

  else
  {
    v7 = 0x6C65636E6163;
    v8 = 0x800000022038FCE0;
    if (a2 == 3)
    {
      v8 = 0xE600000000000000;
    }

    else
    {
      v7 = 0xD000000000000015;
    }

    if (a2 == 2)
    {
      v9 = 1818845542;
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
      goto LABEL_32;
    }
  }

  if (v6 != v10)
  {
LABEL_32:
    v12 = sub_220370048();
    goto LABEL_33;
  }

  v12 = 1;
LABEL_33:

  return v12 & 1;
}

uint64_t sub_2202A21C8(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x6E776F6E6B6E75;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0x614374656B72616DLL;
    }

    else
    {
      v4 = 0x61746E6563726570;
    }

    if (v3 == 2)
    {
      v5 = 0xE900000000000070;
    }

    else
    {
      v5 = 0xEA00000000006567;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0x6563697270;
    }

    else
    {
      v4 = 0x6E776F6E6B6E75;
    }

    if (v3)
    {
      v5 = 0xE500000000000000;
    }

    else
    {
      v5 = 0xE700000000000000;
    }
  }

  v6 = 0xE700000000000000;
  v7 = 0x614374656B72616DLL;
  v8 = 0xE900000000000070;
  if (a2 != 2)
  {
    v7 = 0x61746E6563726570;
    v8 = 0xEA00000000006567;
  }

  if (a2)
  {
    v2 = 0x6563697270;
    v6 = 0xE500000000000000;
  }

  if (a2 <= 1u)
  {
    v9 = v2;
  }

  else
  {
    v9 = v7;
  }

  if (a2 <= 1u)
  {
    v10 = v6;
  }

  else
  {
    v10 = v8;
  }

  if (v4 == v9 && v5 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_220370048();
  }

  return v11 & 1;
}

uint64_t sub_2202A2314(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v3 = 0x6C61697274;
    }

    else
    {
      v3 = 0x6E776F6E6B6E75;
    }

    if (v2)
    {
      v4 = 0xE500000000000000;
    }

    else
    {
      v4 = 0xE700000000000000;
    }
  }

  else if (a1 == 2)
  {
    v3 = 0x6269726373627573;
    v4 = 0xEA00000000006465;
  }

  else if (a1 == 3)
  {
    v3 = 0xD000000000000012;
    v4 = 0x800000022038FE10;
  }

  else
  {
    v3 = 0x6373627553746F6ELL;
    v4 = 0xED00006465626972;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v6 = 0x6C61697274;
    }

    else
    {
      v6 = 0x6E776F6E6B6E75;
    }

    if (a2)
    {
      v5 = 0xE500000000000000;
    }

    else
    {
      v5 = 0xE700000000000000;
    }

    if (v3 != v6)
    {
      goto LABEL_31;
    }
  }

  else if (a2 == 2)
  {
    v5 = 0xEA00000000006465;
    if (v3 != 0x6269726373627573)
    {
      goto LABEL_31;
    }
  }

  else if (a2 == 3)
  {
    v5 = 0x800000022038FE10;
    if (v3 != 0xD000000000000012)
    {
      goto LABEL_31;
    }
  }

  else
  {
    v5 = 0xED00006465626972;
    if (v3 != 0x6373627553746F6ELL)
    {
LABEL_31:
      v7 = sub_220370048();
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

uint64_t sub_2202A24D0(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE400000000000000;
  v4 = 0x6D6F436863746177;
  v5 = 0xED00006574656C70;
  v6 = 0xE400000000000000;
  v7 = 1885956979;
  if (a1 != 4)
  {
    v7 = 0x726F4D6E7261656CLL;
    v6 = 0xE900000000000065;
  }

  if (a1 != 3)
  {
    v4 = v7;
    v5 = v6;
  }

  v8 = 0xE500000000000000;
  v9 = 0x6573756170;
  if (a1 != 1)
  {
    v9 = 0x656D75736572;
    v8 = 0xE600000000000000;
  }

  if (a1)
  {
    v3 = v8;
  }

  else
  {
    v9 = 2036427888;
  }

  if (a1 <= 2u)
  {
    v10 = v9;
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

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v12 = 0xED00006574656C70;
      if (v10 != 0x6D6F436863746177)
      {
        goto LABEL_34;
      }
    }

    else if (a2 == 4)
    {
      v12 = 0xE400000000000000;
      if (v10 != 1885956979)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v12 = 0xE900000000000065;
      if (v10 != 0x726F4D6E7261656CLL)
      {
LABEL_34:
        v13 = sub_220370048();
        goto LABEL_35;
      }
    }
  }

  else if (a2)
  {
    if (a2 == 1)
    {
      v12 = 0xE500000000000000;
      if (v10 != 0x6573756170)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v12 = 0xE600000000000000;
      if (v10 != 0x656D75736572)
      {
        goto LABEL_34;
      }
    }
  }

  else
  {
    v12 = 0xE400000000000000;
    if (v10 != 2036427888)
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

uint64_t sub_2202A26B0(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 4u)
  {
    v13 = 0xE700000000000000;
    v14 = 0xE700000000000000;
    v15 = 0x6B656557656E6FLL;
    v16 = 0xE800000000000000;
    v17 = 0x68746E6F4D656E6FLL;
    if (a1 != 3)
    {
      v17 = 0x6E6F4D6565726874;
      v16 = 0xEB00000000736874;
    }

    if (a1 != 2)
    {
      v15 = v17;
      v14 = v16;
    }

    v18 = 0x796144656E6FLL;
    if (a1)
    {
      v13 = 0xE600000000000000;
    }

    else
    {
      v18 = 0x6E776F6E6B6E75;
    }

    if (a1 <= 1u)
    {
      v11 = v18;
    }

    else
    {
      v11 = v15;
    }

    if (v2 <= 1)
    {
      v12 = v13;
    }

    else
    {
      v12 = v14;
    }
  }

  else
  {
    v3 = 0x7261655965766966;
    v4 = 0xE900000000000073;
    v5 = 0xE800000000000000;
    v6 = 0x73726165596E6574;
    if (a1 != 9)
    {
      v6 = 7889261;
      v5 = 0xE300000000000000;
    }

    if (a1 != 8)
    {
      v3 = v6;
      v4 = v5;
    }

    v7 = 0x68746E6F4D786973;
    v8 = 0xE900000000000073;
    v9 = 0xE700000000000000;
    v10 = 0x72616559656E6FLL;
    if (a1 != 6)
    {
      v10 = 0x73726165596F7774;
      v9 = 0xE800000000000000;
    }

    if (a1 != 5)
    {
      v7 = v10;
      v8 = v9;
    }

    if (a1 <= 7u)
    {
      v11 = v7;
    }

    else
    {
      v11 = v3;
    }

    if (v2 <= 7)
    {
      v12 = v8;
    }

    else
    {
      v12 = v4;
    }
  }

  if (a2 <= 4u)
  {
    if (a2 <= 1u)
    {
      if (a2)
      {
        v19 = 0xE600000000000000;
        if (v11 != 0x796144656E6FLL)
        {
          goto LABEL_62;
        }
      }

      else
      {
        v19 = 0xE700000000000000;
        if (v11 != 0x6E776F6E6B6E75)
        {
          goto LABEL_62;
        }
      }
    }

    else if (a2 == 2)
    {
      v19 = 0xE700000000000000;
      if (v11 != 0x6B656557656E6FLL)
      {
        goto LABEL_62;
      }
    }

    else if (a2 == 3)
    {
      v19 = 0xE800000000000000;
      if (v11 != 0x68746E6F4D656E6FLL)
      {
        goto LABEL_62;
      }
    }

    else
    {
      v19 = 0xEB00000000736874;
      if (v11 != 0x6E6F4D6565726874)
      {
        goto LABEL_62;
      }
    }

    goto LABEL_60;
  }

  if (a2 <= 7u)
  {
    if (a2 != 5)
    {
      if (a2 == 6)
      {
        v19 = 0xE700000000000000;
        if (v11 != 0x72616559656E6FLL)
        {
          goto LABEL_62;
        }

        goto LABEL_60;
      }

      v19 = 0xE800000000000000;
      v20 = 1500477300;
LABEL_57:
      if (v11 != (v20 | 0x7372616500000000))
      {
        goto LABEL_62;
      }

      goto LABEL_60;
    }

    v21 = 0x68746E6F4D786973;
LABEL_50:
    v19 = 0xE900000000000073;
    if (v11 != v21)
    {
      goto LABEL_62;
    }

    goto LABEL_60;
  }

  if (a2 == 8)
  {
    v21 = 0x7261655965766966;
    goto LABEL_50;
  }

  if (a2 == 9)
  {
    v19 = 0xE800000000000000;
    v20 = 1500407156;
    goto LABEL_57;
  }

  v19 = 0xE300000000000000;
  if (v11 != 7889261)
  {
LABEL_62:
    v22 = sub_220370048();
    goto LABEL_63;
  }

LABEL_60:
  if (v12 != v19)
  {
    goto LABEL_62;
  }

  v22 = 1;
LABEL_63:

  return v22 & 1;
}

uint64_t sub_2202A29E8(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v3 = 0x7469617274726F70;
    }

    else
    {
      v3 = 0x6E776F6E6B6E75;
    }

    if (v2)
    {
      v4 = 0xE800000000000000;
    }

    else
    {
      v4 = 0xE700000000000000;
    }
  }

  else if (a1 == 2)
  {
    v3 = 0xD000000000000012;
    v4 = 0x800000022038FB40;
  }

  else
  {
    v3 = 0x70616373646E616CLL;
    if (v2 == 3)
    {
      v4 = 0xED00007466654C65;
    }

    else
    {
      v4 = 0xEE00746867695265;
    }
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v8 = 0x7469617274726F70;
    }

    else
    {
      v8 = 0x6E776F6E6B6E75;
    }

    if (a2)
    {
      v7 = 0xE800000000000000;
    }

    else
    {
      v7 = 0xE700000000000000;
    }

    if (v3 != v8)
    {
      goto LABEL_33;
    }
  }

  else
  {
    v5 = 0xED00007466654C65;
    if (a2 != 3)
    {
      v5 = 0xEE00746867695265;
    }

    if (a2 == 2)
    {
      v6 = 0xD000000000000012;
    }

    else
    {
      v6 = 0x70616373646E616CLL;
    }

    if (a2 == 2)
    {
      v7 = 0x800000022038FB40;
    }

    else
    {
      v7 = v5;
    }

    if (v3 != v6)
    {
      goto LABEL_33;
    }
  }

  if (v4 != v7)
  {
LABEL_33:
    v9 = sub_220370048();
    goto LABEL_34;
  }

  v9 = 1;
LABEL_34:

  return v9 & 1;
}

uint64_t sub_2202A2B9C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x64657461657263;
  v3 = a1;
  v4 = 0xE700000000000000;
  v5 = 0x6564726163736964;
  v6 = 0x656C6C69666C7566;
  if (a1 != 4)
  {
    v6 = 0x65746E6573657270;
  }

  if (a1 != 3)
  {
    v5 = v6;
  }

  v7 = 0xE600000000000000;
  v8 = 0x64656C696166;
  if (a1 != 1)
  {
    v8 = 0x676E69646E6570;
    v7 = 0xE700000000000000;
  }

  if (a1)
  {
    v4 = v7;
  }

  else
  {
    v8 = 0x64657461657263;
  }

  if (a1 <= 2u)
  {
    v9 = v8;
  }

  else
  {
    v9 = v5;
  }

  if (v3 <= 2)
  {
    v10 = v4;
  }

  else
  {
    v10 = 0xE900000000000064;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v2 = 0x6564726163736964;
    }

    else if (a2 == 4)
    {
      v2 = 0x656C6C69666C7566;
    }

    else
    {
      v2 = 0x65746E6573657270;
    }

    v11 = 0xE900000000000064;
  }

  else if (a2)
  {
    if (a2 == 1)
    {
      v11 = 0xE600000000000000;
      v2 = 0x64656C696166;
    }

    else
    {
      v11 = 0xE700000000000000;
      v2 = 0x676E69646E6570;
    }
  }

  else
  {
    v11 = 0xE700000000000000;
  }

  if (v9 == v2 && v10 == v11)
  {
    v12 = 1;
  }

  else
  {
    v12 = sub_220370048();
  }

  return v12 & 1;
}

uint64_t sub_2202A2D5C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xED000064656C6961;
  v4 = 0x726568746FLL;
  if (a1 == 2)
  {
    v4 = 0x4674736575716572;
  }

  else
  {
    v3 = 0xE500000000000000;
  }

  v5 = 0xD000000000000015;
  v6 = 0x800000022038F510;
  if (a1)
  {
    v5 = 0x6F5464656C696166;
    v6 = 0xEE007265646E6552;
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
      v11 = 0x4674736575716572;
    }

    else
    {
      v11 = 0x726568746FLL;
    }

    if (a2 == 2)
    {
      v10 = 0xED000064656C6961;
    }

    else
    {
      v10 = 0xE500000000000000;
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
      v9 = 0x6F5464656C696166;
    }

    else
    {
      v9 = 0xD000000000000015;
    }

    if (a2)
    {
      v10 = 0xEE007265646E6552;
    }

    else
    {
      v10 = 0x800000022038F510;
    }

    if (v7 != v9)
    {
      goto LABEL_30;
    }
  }

  if (v8 != v10)
  {
LABEL_30:
    v12 = sub_220370048();
    goto LABEL_31;
  }

  v12 = 1;
LABEL_31:

  return v12 & 1;
}

uint64_t sub_2202A2EBC(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x6E776F6E6B6E75;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0x676E6967617473;
    }

    else
    {
      v4 = 1685025392;
    }

    if (v3 == 2)
    {
      v5 = 0xE700000000000000;
    }

    else
    {
      v5 = 0xE400000000000000;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 24945;
    }

    else
    {
      v4 = 0x6E776F6E6B6E75;
    }

    if (v3)
    {
      v5 = 0xE200000000000000;
    }

    else
    {
      v5 = 0xE700000000000000;
    }
  }

  v6 = 0xE700000000000000;
  v7 = 0xE700000000000000;
  v8 = 0x676E6967617473;
  if (a2 != 2)
  {
    v8 = 1685025392;
    v7 = 0xE400000000000000;
  }

  if (a2)
  {
    v2 = 24945;
    v6 = 0xE200000000000000;
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
    v11 = sub_220370048();
  }

  return v11 & 1;
}

uint64_t sub_2202A2FD8(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x6C65636E6163;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 1818845542;
    }

    else
    {
      v4 = 0xD000000000000010;
    }

    if (v3 == 2)
    {
      v5 = 0xE400000000000000;
    }

    else
    {
      v5 = 0x800000022038F8E0;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0x73736563637573;
    }

    else
    {
      v4 = 0x6C65636E6163;
    }

    if (v3)
    {
      v5 = 0xE700000000000000;
    }

    else
    {
      v5 = 0xE600000000000000;
    }
  }

  v6 = 0xE600000000000000;
  v7 = 1818845542;
  v8 = 0x800000022038F8E0;
  if (a2 == 2)
  {
    v8 = 0xE400000000000000;
  }

  else
  {
    v7 = 0xD000000000000010;
  }

  if (a2)
  {
    v2 = 0x73736563637573;
    v6 = 0xE700000000000000;
  }

  if (a2 <= 1u)
  {
    v9 = v2;
  }

  else
  {
    v9 = v7;
  }

  if (a2 <= 1u)
  {
    v10 = v6;
  }

  else
  {
    v10 = v8;
  }

  if (v4 == v9 && v5 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_220370048();
  }

  return v11 & 1;
}

uint64_t sub_2202A3108(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x6E776F6E6B6E75;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0x6C616974726170;
    }

    else
    {
      v4 = 0x657370616C6C6F63;
    }

    if (v3 == 2)
    {
      v5 = 0xE700000000000000;
    }

    else
    {
      v5 = 0xE900000000000064;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0x6465646E61707865;
    }

    else
    {
      v4 = 0x6E776F6E6B6E75;
    }

    if (v3)
    {
      v5 = 0xE800000000000000;
    }

    else
    {
      v5 = 0xE700000000000000;
    }
  }

  v6 = 0xE700000000000000;
  v7 = 0xE700000000000000;
  v8 = 0x6C616974726170;
  if (a2 != 2)
  {
    v8 = 0x657370616C6C6F63;
    v7 = 0xE900000000000064;
  }

  if (a2)
  {
    v2 = 0x6465646E61707865;
    v6 = 0xE800000000000000;
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
    v11 = sub_220370048();
  }

  return v11 & 1;
}

uint64_t sub_2202A3254(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE700000000000000;
  v4 = 0xE600000000000000;
  v5 = 0x705565636166;
  if (a1 != 5)
  {
    v5 = 0x6E776F4465636166;
    v4 = 0xE800000000000000;
  }

  v6 = 0xED00007466654C65;
  if (a1 != 3)
  {
    v6 = 0xEE00746867695265;
  }

  if (a1 > 4u)
  {
    v7 = v4;
  }

  else
  {
    v5 = 0x70616373646E616CLL;
    v7 = v6;
  }

  v8 = 0xE800000000000000;
  v9 = 0x7469617274726F70;
  if (a1 != 1)
  {
    v9 = 0xD000000000000012;
    v8 = 0x800000022038FB40;
  }

  if (a1)
  {
    v3 = v8;
  }

  else
  {
    v9 = 0x6E776F6E6B6E75;
  }

  if (a1 <= 2u)
  {
    v10 = v9;
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
    v11 = v7;
  }

  if (a2 <= 2u)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v12 = 0xE800000000000000;
        if (v10 != 0x7469617274726F70)
        {
          goto LABEL_40;
        }
      }

      else
      {
        v12 = 0x800000022038FB40;
        if (v10 != 0xD000000000000012)
        {
          goto LABEL_40;
        }
      }
    }

    else
    {
      v12 = 0xE700000000000000;
      if (v10 != 0x6E776F6E6B6E75)
      {
        goto LABEL_40;
      }
    }
  }

  else if (a2 > 4u)
  {
    if (a2 == 5)
    {
      v12 = 0xE600000000000000;
      if (v10 != 0x705565636166)
      {
        goto LABEL_40;
      }
    }

    else
    {
      v12 = 0xE800000000000000;
      if (v10 != 0x6E776F4465636166)
      {
LABEL_40:
        v13 = sub_220370048();
        goto LABEL_41;
      }
    }
  }

  else if (a2 == 3)
  {
    v12 = 0xED00007466654C65;
    if (v10 != 0x70616373646E616CLL)
    {
      goto LABEL_40;
    }
  }

  else
  {
    v12 = 0xEE00746867695265;
    if (v10 != 0x70616373646E616CLL)
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

uint64_t sub_2202A3498(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE700000000000000;
  v4 = 0xD000000000000012;
  v5 = 0x800000022038F600;
  v6 = 0x54676E6964616F6CLL;
  v7 = 0xEE0074756F656D69;
  if (a1 != 4)
  {
    v6 = 0x64656C696166;
    v7 = 0xE600000000000000;
  }

  if (a1 != 3)
  {
    v4 = v6;
    v5 = v7;
  }

  v8 = 0x6572676F72506E69;
  v9 = 0xEA00000000007373;
  if (a1 != 1)
  {
    v8 = 0x506F547964616572;
    v9 = 0xEB0000000079616CLL;
  }

  if (a1)
  {
    v3 = v9;
  }

  else
  {
    v8 = 0x6E776F6E6B6E75;
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

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v12 = 0x800000022038F600;
      if (v10 != 0xD000000000000012)
      {
        goto LABEL_34;
      }
    }

    else if (a2 == 4)
    {
      v12 = 0xEE0074756F656D69;
      if (v10 != 0x54676E6964616F6CLL)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v12 = 0xE600000000000000;
      if (v10 != 0x64656C696166)
      {
LABEL_34:
        v13 = sub_220370048();
        goto LABEL_35;
      }
    }
  }

  else if (a2)
  {
    if (a2 == 1)
    {
      v12 = 0xEA00000000007373;
      if (v10 != 0x6572676F72506E69)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v12 = 0xEB0000000079616CLL;
      if (v10 != 0x506F547964616572)
      {
        goto LABEL_34;
      }
    }
  }

  else
  {
    v12 = 0xE700000000000000;
    if (v10 != 0x6E776F6E6B6E75)
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

uint64_t sub_2202A36A4(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 > 3u)
  {
    v9 = 0x696B536F65646976;
    v10 = 0xE900000000000070;
    if (a1 != 6)
    {
      v9 = 0x6974737265746E69;
      v10 = 0xEF7061546C616974;
    }

    v11 = 0x7365526F65646976;
    v12 = 0xEB00000000656D75;
    if (a1 != 4)
    {
      v11 = 0xD000000000000012;
      v12 = 0x800000022038F5B0;
    }

    if (a1 <= 5u)
    {
      v7 = v11;
    }

    else
    {
      v7 = v9;
    }

    if (v2 <= 5)
    {
      v8 = v12;
    }

    else
    {
      v8 = v10;
    }
  }

  else
  {
    v3 = 0xE700000000000000;
    v4 = 0x616C506F65646976;
    v5 = 0xE900000000000079;
    if (a1 != 2)
    {
      v4 = 0x7561506F65646976;
      v5 = 0xEA00000000006573;
    }

    v6 = 0x615472656E6E6162;
    if (a1)
    {
      v3 = 0xE900000000000070;
    }

    else
    {
      v6 = 0x6E776F6E6B6E75;
    }

    if (a1 <= 1u)
    {
      v7 = v6;
    }

    else
    {
      v7 = v4;
    }

    if (v2 <= 1)
    {
      v8 = v3;
    }

    else
    {
      v8 = v5;
    }
  }

  if (a2 <= 3u)
  {
    if (a2 > 1u)
    {
      if (a2 == 2)
      {
        v13 = 0xE900000000000079;
        if (v7 != 0x616C506F65646976)
        {
          goto LABEL_47;
        }
      }

      else
      {
        v13 = 0xEA00000000006573;
        if (v7 != 0x7561506F65646976)
        {
          goto LABEL_47;
        }
      }

      goto LABEL_45;
    }

    if (!a2)
    {
      v13 = 0xE700000000000000;
      if (v7 != 0x6E776F6E6B6E75)
      {
        goto LABEL_47;
      }

      goto LABEL_45;
    }

    v14 = 0x615472656E6E6162;
LABEL_38:
    v13 = 0xE900000000000070;
    if (v7 != v14)
    {
      goto LABEL_47;
    }

    goto LABEL_45;
  }

  if (a2 <= 5u)
  {
    if (a2 == 4)
    {
      v13 = 0xEB00000000656D75;
      if (v7 != 0x7365526F65646976)
      {
        goto LABEL_47;
      }
    }

    else
    {
      v13 = 0x800000022038F5B0;
      if (v7 != 0xD000000000000012)
      {
        goto LABEL_47;
      }
    }

    goto LABEL_45;
  }

  if (a2 == 6)
  {
    v14 = 0x696B536F65646976;
    goto LABEL_38;
  }

  v13 = 0xEF7061546C616974;
  if (v7 != 0x6974737265746E69)
  {
LABEL_47:
    v15 = sub_220370048();
    goto LABEL_48;
  }

LABEL_45:
  if (v8 != v13)
  {
    goto LABEL_47;
  }

  v15 = 1;
LABEL_48:

  return v15 & 1;
}

uint64_t sub_2202A396C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 3u)
  {
    v10 = 0xE700000000000000;
    v11 = 0xE400000000000000;
    v12 = 2036427888;
    if (a1 != 2)
    {
      v12 = 0x6573756170;
      v11 = 0xE500000000000000;
    }

    v13 = 0x616C506F54706174;
    if (a1)
    {
      v10 = 0xE900000000000079;
    }

    else
    {
      v13 = 0x6E776F6E6B6E75;
    }

    if (a1 <= 1u)
    {
      v8 = v13;
    }

    else
    {
      v8 = v12;
    }

    if (v2 <= 1)
    {
      v9 = v10;
    }

    else
    {
      v9 = v11;
    }
  }

  else
  {
    v3 = 0x6168436465657073;
    v4 = 0xEB0000000065676ELL;
    v5 = 0xE800000000000000;
    v6 = 0x6B63614270696B73;
    if (a1 != 7)
    {
      v6 = 0x77726F4670696B73;
      v5 = 0xEB00000000647261;
    }

    if (a1 != 6)
    {
      v3 = v6;
      v4 = v5;
    }

    v7 = 0x656D75736572;
    if (a1 != 4)
    {
      v7 = 0x64656C696166;
    }

    if (a1 <= 5u)
    {
      v8 = v7;
    }

    else
    {
      v8 = v3;
    }

    if (v2 <= 5)
    {
      v9 = 0xE600000000000000;
    }

    else
    {
      v9 = v4;
    }
  }

  if (a2 <= 3u)
  {
    if (a2 > 1u)
    {
      if (a2 == 2)
      {
        v14 = 0xE400000000000000;
        if (v8 != 2036427888)
        {
          goto LABEL_52;
        }
      }

      else
      {
        v14 = 0xE500000000000000;
        if (v8 != 0x6573756170)
        {
          goto LABEL_52;
        }
      }
    }

    else if (a2)
    {
      v14 = 0xE900000000000079;
      if (v8 != 0x616C506F54706174)
      {
        goto LABEL_52;
      }
    }

    else
    {
      v14 = 0xE700000000000000;
      if (v8 != 0x6E776F6E6B6E75)
      {
        goto LABEL_52;
      }
    }

    goto LABEL_50;
  }

  if (a2 > 5u)
  {
    if (a2 == 6)
    {
      v15 = 0x6168436465657073;
      v16 = 6645614;
    }

    else
    {
      if (a2 == 7)
      {
        v14 = 0xE800000000000000;
        if (v8 != 0x6B63614270696B73)
        {
          goto LABEL_52;
        }

        goto LABEL_50;
      }

      v15 = 0x77726F4670696B73;
      v16 = 6582881;
    }

    v14 = v16 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;
    if (v8 != v15)
    {
      goto LABEL_52;
    }

    goto LABEL_50;
  }

  v14 = 0xE600000000000000;
  if (a2 == 4)
  {
    if (v8 != 0x656D75736572)
    {
      goto LABEL_52;
    }
  }

  else if (v8 != 0x64656C696166)
  {
LABEL_52:
    v17 = sub_220370048();
    goto LABEL_53;
  }

LABEL_50:
  if (v9 != v14)
  {
    goto LABEL_52;
  }

  v17 = 1;
LABEL_53:

  return v17 & 1;
}

uint64_t sub_2202A3C1C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x6E776F6E6B6E75;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0x6C616E7265747865;
    }

    else
    {
      v4 = 0x79616C50726163;
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
      v4 = 0x7070416E69;
    }

    else
    {
      v4 = 0x6E776F6E6B6E75;
    }

    if (v3)
    {
      v5 = 0xE500000000000000;
    }

    else
    {
      v5 = 0xE700000000000000;
    }
  }

  v6 = 0xE700000000000000;
  v7 = 0xE800000000000000;
  v8 = 0x6C616E7265747865;
  if (a2 != 2)
  {
    v8 = 0x79616C50726163;
    v7 = 0xE700000000000000;
  }

  if (a2)
  {
    v2 = 0x7070416E69;
    v6 = 0xE500000000000000;
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
    v11 = sub_220370048();
  }

  return v11 & 1;
}

uint64_t sub_2202A3D58(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x6E776F6E6B6E75;
  v3 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v5 = 0x72656E6E6162;
    }

    else
    {
      v5 = 0x6E776F6E6B6E75;
    }

    if (v3)
    {
      v4 = 0xE600000000000000;
    }

    else
    {
      v4 = 0xE700000000000000;
    }
  }

  else
  {
    if (a1 == 2)
    {
      v5 = 0x566C6C6F52657270;
      v6 = 1868915817;
    }

    else
    {
      if (a1 == 3)
      {
        v4 = 0xE800000000000000;
        v5 = 0x644165766974616ELL;
        goto LABEL_14;
      }

      v5 = 0x6974737265746E69;
      v6 = 1818323316;
    }

    v4 = v6 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
  }

LABEL_14:
  if (a2 <= 1u)
  {
    v7 = 0xE700000000000000;
    v8 = 0xE600000000000000;
    v9 = 0x72656E6E6162;
    v10 = a2 == 0;
  }

  else
  {
    v2 = 0x566C6C6F52657270;
    v7 = 0xEC0000006F656469;
    v8 = 0xE800000000000000;
    v9 = 0x644165766974616ELL;
    if (a2 != 3)
    {
      v9 = 0x6974737265746E69;
      v8 = 0xEC0000006C616974;
    }

    v10 = a2 == 2;
  }

  if (v10)
  {
    v11 = v2;
  }

  else
  {
    v11 = v9;
  }

  if (v10)
  {
    v12 = v7;
  }

  else
  {
    v12 = v8;
  }

  if (v5 == v11 && v4 == v12)
  {
    v13 = 1;
  }

  else
  {
    v13 = sub_220370048();
  }

  return v13 & 1;
}

uint64_t sub_2202A3EE8(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v3 = 0x626D79536E65706FLL;
    }

    else
    {
      v3 = 0x6E776F6E6B6E75;
    }

    if (v2)
    {
      v4 = 0xEA00000000006C6FLL;
    }

    else
    {
      v4 = 0xE700000000000000;
    }
  }

  else if (a1 == 2)
  {
    v3 = 0x637461576E65706FLL;
    v4 = 0xED00007473696C68;
  }

  else if (a1 == 3)
  {
    v3 = 0xD000000000000010;
    v4 = 0x800000022038FE40;
  }

  else
  {
    v3 = 0x697472416E65706FLL;
    v4 = 0xEB00000000656C63;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v6 = 0x626D79536E65706FLL;
    }

    else
    {
      v6 = 0x6E776F6E6B6E75;
    }

    if (a2)
    {
      v5 = 0xEA00000000006C6FLL;
    }

    else
    {
      v5 = 0xE700000000000000;
    }

    if (v3 != v6)
    {
      goto LABEL_31;
    }
  }

  else if (a2 == 2)
  {
    v5 = 0xED00007473696C68;
    if (v3 != 0x637461576E65706FLL)
    {
      goto LABEL_31;
    }
  }

  else if (a2 == 3)
  {
    v5 = 0x800000022038FE40;
    if (v3 != 0xD000000000000010)
    {
      goto LABEL_31;
    }
  }

  else
  {
    v5 = 0xEB00000000656C63;
    if (v3 != 0x697472416E65706FLL)
    {
LABEL_31:
      v7 = sub_220370048();
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

uint64_t sub_2202A40BC(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE700000000000000;
  v4 = 0x7748656C646E7562;
  v5 = 0xE900000000000064;
  if (a1 != 5)
  {
    v4 = 0x72756769666E6F63;
    v5 = 0xEC000000656C6261;
  }

  v6 = 0xE700000000000000;
  v7 = 0x656C646E754273;
  if (a1 != 3)
  {
    v7 = 0x43656C646E754273;
    v6 = 0xEE00726569727261;
  }

  if (a1 <= 4u)
  {
    v4 = v7;
    v5 = v6;
  }

  v8 = 0xE800000000000000;
  v9 = 0x6574726143616C61;
  if (a1 != 1)
  {
    v9 = 0x656C646E7562;
    v8 = 0xE600000000000000;
  }

  if (a1)
  {
    v3 = v8;
  }

  else
  {
    v9 = 0x6E776F6E6B6E75;
  }

  if (a1 <= 2u)
  {
    v10 = v9;
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
        v12 = 0xE800000000000000;
        if (v10 != 0x6574726143616C61)
        {
          goto LABEL_39;
        }
      }

      else
      {
        v12 = 0xE600000000000000;
        if (v10 != 0x656C646E7562)
        {
          goto LABEL_39;
        }
      }
    }

    else
    {
      v12 = 0xE700000000000000;
      if (v10 != 0x6E776F6E6B6E75)
      {
        goto LABEL_39;
      }
    }
  }

  else if (a2 > 4u)
  {
    if (a2 == 5)
    {
      v12 = 0xE900000000000064;
      if (v10 != 0x7748656C646E7562)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v12 = 0xEC000000656C6261;
      if (v10 != 0x72756769666E6F63)
      {
LABEL_39:
        v13 = sub_220370048();
        goto LABEL_40;
      }
    }
  }

  else if (a2 == 3)
  {
    v12 = 0xE700000000000000;
    if (v10 != 0x656C646E754273)
    {
      goto LABEL_39;
    }
  }

  else
  {
    v12 = 0xEE00726569727261;
    if (v10 != 0x43656C646E754273)
    {
      goto LABEL_39;
    }
  }

  if (v11 != v12)
  {
    goto LABEL_39;
  }

  v13 = 1;
LABEL_40:

  return v13 & 1;
}

uint64_t sub_2202A4314(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x6E776F6E6B6E75;
  if (a1 > 1u)
  {
    v5 = a1 == 2;
    v3 = 0xEB00000000756E65;
    v4 = 0xE500000000000000;
    if (a1 == 2)
    {
      v6 = 0x4D747865746E6F63;
    }

    else
    {
      v6 = 0x6570697773;
    }
  }

  else
  {
    v3 = 0xE700000000000000;
    v4 = 0xE700000000000000;
    v5 = a1 == 0;
    if (a1)
    {
      v6 = 0x776F7272616873;
    }

    else
    {
      v6 = 0x6E776F6E6B6E75;
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

  v8 = 0x4D747865746E6F63;
  v9 = 0xEB00000000756E65;
  if (a2 != 2)
  {
    v8 = 0x6570697773;
    v9 = 0xE500000000000000;
  }

  if (a2)
  {
    v2 = 0x776F7272616873;
  }

  if (a2 <= 1u)
  {
    v10 = v2;
  }

  else
  {
    v10 = v8;
  }

  if (a2 <= 1u)
  {
    v11 = 0xE700000000000000;
  }

  else
  {
    v11 = v9;
  }

  if (v6 == v10 && v7 == v11)
  {
    v12 = 1;
  }

  else
  {
    v12 = sub_220370048();
  }

  return v12 & 1;
}

uint64_t sub_2202A445C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 > 4u)
  {
    v11 = 0x6867696C746F7073;
    v12 = 0xE900000000000074;
    v13 = 0xE700000000000000;
    v14 = 0x66666F646E6168;
    if (a1 != 8)
    {
      v14 = 0x6E65746E49707061;
      v13 = 0xE900000000000074;
    }

    if (a1 != 7)
    {
      v11 = v14;
      v12 = v13;
    }

    v15 = 0xD000000000000011;
    v16 = 0x800000022038FDB0;
    if (a1 != 5)
    {
      v15 = 0xD000000000000020;
      v16 = 0x800000022038FDD0;
    }

    if (a1 <= 6u)
    {
      v9 = v15;
    }

    else
    {
      v9 = v11;
    }

    if (v2 <= 6)
    {
      v10 = v16;
    }

    else
    {
      v10 = v12;
    }
  }

  else
  {
    v3 = 0xE700000000000000;
    v4 = 0x6C616E7265747865;
    v5 = 0xEC0000006B6E694CLL;
    v6 = 0xD000000000000011;
    v7 = 0x800000022038FD80;
    if (a1 != 3)
    {
      v6 = 0x6465725069726973;
      v7 = 0xEE006E6F69746369;
    }

    if (a1 != 2)
    {
      v4 = v6;
      v5 = v7;
    }

    v8 = 0x6469577961646F74;
    if (a1)
    {
      v3 = 0xEB00000000746567;
    }

    else
    {
      v8 = 0x6E776F6E6B6E75;
    }

    if (a1 <= 1u)
    {
      v9 = v8;
    }

    else
    {
      v9 = v4;
    }

    if (v2 <= 1)
    {
      v10 = v3;
    }

    else
    {
      v10 = v5;
    }
  }

  if (a2 > 4u)
  {
    if (a2 > 6u)
    {
      if (a2 == 7)
      {
        v19 = 0x6867696C746F7073;
      }

      else
      {
        if (a2 == 8)
        {
          v18 = 0xE700000000000000;
          if (v9 != 0x66666F646E6168)
          {
            goto LABEL_57;
          }

          goto LABEL_55;
        }

        v19 = 0x6E65746E49707061;
      }

      v18 = 0xE900000000000074;
      if (v9 != v19)
      {
        goto LABEL_57;
      }

      goto LABEL_55;
    }

    if (a2 == 5)
    {
      v17 = "siriVoiceShortcut";
LABEL_42:
      v18 = (v17 - 32) | 0x8000000000000000;
      if (v9 != 0xD000000000000011)
      {
        goto LABEL_57;
      }

      goto LABEL_55;
    }

    v18 = 0x800000022038FDD0;
    if (v9 != 0xD000000000000020)
    {
LABEL_57:
      v20 = sub_220370048();
      goto LABEL_58;
    }
  }

  else
  {
    if (a2 > 1u)
    {
      if (a2 == 2)
      {
        v18 = 0xEC0000006B6E694CLL;
        if (v9 != 0x6C616E7265747865)
        {
          goto LABEL_57;
        }

        goto LABEL_55;
      }

      if (a2 != 3)
      {
        v18 = 0xEE006E6F69746369;
        if (v9 != 0x6465725069726973)
        {
          goto LABEL_57;
        }

        goto LABEL_55;
      }

      v17 = "homeScreenIconTap";
      goto LABEL_42;
    }

    if (a2)
    {
      v18 = 0xEB00000000746567;
      if (v9 != 0x6469577961646F74)
      {
        goto LABEL_57;
      }
    }

    else
    {
      v18 = 0xE700000000000000;
      if (v9 != 0x6E776F6E6B6E75)
      {
        goto LABEL_57;
      }
    }
  }

LABEL_55:
  if (v10 != v18)
  {
    goto LABEL_57;
  }

  v20 = 1;
LABEL_58:

  return v20 & 1;
}

uint64_t sub_2202A47A4(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 3u)
  {
    v11 = 0xE700000000000000;
    v12 = 0xE500000000000000;
    v13 = 0x6570697773;
    if (a1 != 2)
    {
      v13 = 0x656E696C64616568;
      v12 = 0xEB00000000706154;
    }

    v14 = 0x636E75614C707061;
    if (a1)
    {
      v11 = 0xE900000000000068;
    }

    else
    {
      v14 = 0x6E776F6E6B6E75;
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
    v3 = 0xD000000000000011;
    v4 = 0x800000022038FCA0;
    v5 = 0x6976614E72657375;
    v6 = 0xEE006E6F69746167;
    if (a1 != 7)
    {
      v5 = 0xD000000000000011;
      v6 = 0x800000022038FCC0;
    }

    if (a1 != 6)
    {
      v3 = v5;
      v4 = v6;
    }

    v7 = 0xE800000000000000;
    v8 = 0x6B6E696C70656564;
    if (a1 != 4)
    {
      v8 = 0x6E6164726F666661;
      v7 = 0xED00007061546563;
    }

    if (a1 <= 5u)
    {
      v9 = v8;
    }

    else
    {
      v9 = v3;
    }

    if (v2 <= 5)
    {
      v10 = v7;
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
        v15 = 0xE500000000000000;
        if (v9 != 0x6570697773)
        {
          goto LABEL_52;
        }
      }

      else
      {
        v15 = 0xEB00000000706154;
        if (v9 != 0x656E696C64616568)
        {
          goto LABEL_52;
        }
      }
    }

    else if (a2)
    {
      v15 = 0xE900000000000068;
      if (v9 != 0x636E75614C707061)
      {
        goto LABEL_52;
      }
    }

    else
    {
      v15 = 0xE700000000000000;
      if (v9 != 0x6E776F6E6B6E75)
      {
        goto LABEL_52;
      }
    }

    goto LABEL_50;
  }

  if (a2 > 5u)
  {
    if (a2 == 6)
    {
      v16 = "returnFromArticle";
    }

    else
    {
      if (a2 == 7)
      {
        v15 = 0xEE006E6F69746167;
        if (v9 != 0x6976614E72657375)
        {
          goto LABEL_52;
        }

        goto LABEL_50;
      }

      v16 = "widgetHeadlineTap";
    }

    v15 = (v16 - 32) | 0x8000000000000000;
    if (v9 != 0xD000000000000011)
    {
      goto LABEL_52;
    }

    goto LABEL_50;
  }

  if (a2 == 4)
  {
    v15 = 0xE800000000000000;
    if (v9 != 0x6B6E696C70656564)
    {
      goto LABEL_52;
    }
  }

  else
  {
    v15 = 0xED00007061546563;
    if (v9 != 0x6E6164726F666661)
    {
LABEL_52:
      v17 = sub_220370048();
      goto LABEL_53;
    }
  }

LABEL_50:
  if (v10 != v15)
  {
    goto LABEL_52;
  }

  v17 = 1;
LABEL_53:

  return v17 & 1;
}

uint64_t sub_2202A4AA4(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 > 3u)
  {
    v9 = 0xE800000000000000;
    v10 = 0x79636E6572727563;
    if (a1 != 6)
    {
      v10 = 0x73657275747566;
      v9 = 0xE700000000000000;
    }

    v11 = 0xD000000000000012;
    v12 = 0x800000022038F9E0;
    if (a1 != 4)
    {
      v11 = 0x75636F7470797263;
      v12 = 0xEE0079636E657272;
    }

    if (a1 <= 5u)
    {
      v7 = v11;
    }

    else
    {
      v7 = v10;
    }

    if (v2 <= 5)
    {
      v8 = v12;
    }

    else
    {
      v8 = v9;
    }
  }

  else
  {
    v3 = 0xE700000000000000;
    v4 = 0x6E75467865646E69;
    v5 = 0xE900000000000064;
    if (a1 != 2)
    {
      v4 = 0x75466C617574756DLL;
      v5 = 0xEA0000000000646ELL;
    }

    v6 = 0x797469757165;
    if (a1)
    {
      v3 = 0xE600000000000000;
    }

    else
    {
      v6 = 0x6E776F6E6B6E75;
    }

    if (a1 <= 1u)
    {
      v7 = v6;
    }

    else
    {
      v7 = v4;
    }

    if (v2 <= 1)
    {
      v8 = v3;
    }

    else
    {
      v8 = v5;
    }
  }

  if (a2 > 3u)
  {
    if (a2 > 5u)
    {
      if (a2 == 6)
      {
        v13 = 0xE800000000000000;
        if (v7 != 0x79636E6572727563)
        {
          goto LABEL_47;
        }
      }

      else
      {
        v13 = 0xE700000000000000;
        if (v7 != 0x73657275747566)
        {
LABEL_47:
          v14 = sub_220370048();
          goto LABEL_48;
        }
      }
    }

    else if (a2 == 4)
    {
      v13 = 0x800000022038F9E0;
      if (v7 != 0xD000000000000012)
      {
        goto LABEL_47;
      }
    }

    else
    {
      v13 = 0xEE0079636E657272;
      if (v7 != 0x75636F7470797263)
      {
        goto LABEL_47;
      }
    }
  }

  else if (a2 > 1u)
  {
    if (a2 == 2)
    {
      v13 = 0xE900000000000064;
      if (v7 != 0x6E75467865646E69)
      {
        goto LABEL_47;
      }
    }

    else
    {
      v13 = 0xEA0000000000646ELL;
      if (v7 != 0x75466C617574756DLL)
      {
        goto LABEL_47;
      }
    }
  }

  else if (a2)
  {
    v13 = 0xE600000000000000;
    if (v7 != 0x797469757165)
    {
      goto LABEL_47;
    }
  }

  else
  {
    v13 = 0xE700000000000000;
    if (v7 != 0x6E776F6E6B6E75)
    {
      goto LABEL_47;
    }
  }

  if (v8 != v13)
  {
    goto LABEL_47;
  }

  v14 = 1;
LABEL_48:

  return v14 & 1;
}

uint64_t sub_2202A4D44(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x6E776F6E6B6E75;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0x656956616964656DLL;
    }

    else
    {
      v4 = 0x6E65704F707061;
    }

    if (v3 == 2)
    {
      v5 = 0xE900000000000077;
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
      v4 = 0x56656C6369747261;
    }

    else
    {
      v4 = 0x6E776F6E6B6E75;
    }

    if (v3)
    {
      v5 = 0xEB00000000776569;
    }

    else
    {
      v5 = 0xE700000000000000;
    }
  }

  v6 = 0xE700000000000000;
  v7 = 0x656956616964656DLL;
  v8 = 0xE900000000000077;
  if (a2 != 2)
  {
    v7 = 0x6E65704F707061;
    v8 = 0xE700000000000000;
  }

  if (a2)
  {
    v2 = 0x56656C6369747261;
    v6 = 0xEB00000000776569;
  }

  if (a2 <= 1u)
  {
    v9 = v2;
  }

  else
  {
    v9 = v7;
  }

  if (a2 <= 1u)
  {
    v10 = v6;
  }

  else
  {
    v10 = v8;
  }

  if (v4 == v9 && v5 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_220370048();
  }

  return v11 & 1;
}

uint64_t sub_2202A4EA0(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE700000000000000;
  v4 = 0xE700000000000000;
  v5 = 0x7972656C6C6167;
  v6 = 0xE500000000000000;
  v7 = 0x6F69647561;
  if (a1 != 4)
  {
    v7 = 7364973;
    v6 = 0xE300000000000000;
  }

  if (a1 != 3)
  {
    v5 = v7;
    v4 = v6;
  }

  v8 = 0x6F65646976;
  if (a1 != 1)
  {
    v8 = 0x6567616D69;
  }

  if (a1)
  {
    v3 = 0xE500000000000000;
  }

  else
  {
    v8 = 0x6E776F6E6B6E75;
  }

  if (a1 <= 2u)
  {
    v9 = v8;
  }

  else
  {
    v9 = v5;
  }

  if (v2 <= 2)
  {
    v10 = v3;
  }

  else
  {
    v10 = v4;
  }

  if (a2 <= 2u)
  {
    if (!a2)
    {
      v11 = 0xE700000000000000;
      if (v9 != 0x6E776F6E6B6E75)
      {
        goto LABEL_34;
      }

      goto LABEL_32;
    }

    v11 = 0xE500000000000000;
    if (a2 != 1)
    {
      if (v9 != 0x6567616D69)
      {
        goto LABEL_34;
      }

      goto LABEL_32;
    }

    v12 = 1701079414;
    goto LABEL_23;
  }

  if (a2 == 3)
  {
    v11 = 0xE700000000000000;
    if (v9 != 0x7972656C6C6167)
    {
      goto LABEL_34;
    }

    goto LABEL_32;
  }

  if (a2 == 4)
  {
    v11 = 0xE500000000000000;
    v12 = 1768191329;
LABEL_23:
    if (v9 != (v12 & 0xFFFF0000FFFFFFFFLL | 0x6F00000000))
    {
      goto LABEL_34;
    }

    goto LABEL_32;
  }

  v11 = 0xE300000000000000;
  if (v9 != 7364973)
  {
LABEL_34:
    v13 = sub_220370048();
    goto LABEL_35;
  }

LABEL_32:
  if (v10 != v11)
  {
    goto LABEL_34;
  }

  v13 = 1;
LABEL_35:

  return v13 & 1;
}

double sub_2202A5050@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, _OWORD *a6@<X8>)
{
  v87 = a4;
  v88 = a5;
  v92 = a2;
  v93 = a3;
  v94 = a6;
  v7 = sub_22036E5D8();
  v90 = *(v7 - 8);
  v91 = v7;
  v8 = *(v90 + 64);
  MEMORY[0x28223BE20](v7);
  v89 = &v78[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_22036E468();
  v97 = *(v10 - 8);
  v98 = v10;
  v11 = *(v97 + 64);
  v12 = MEMORY[0x28223BE20](v10);
  v95 = &v78[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v12);
  v96 = &v78[-v14];
  v99 = type metadata accessor for MediaEngageCompleteEvent.Model(0);
  v15 = *(*(v99 - 8) + 64);
  MEMORY[0x28223BE20](v99);
  v100 = &v78[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_2202A642C();
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v20 = &v78[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v21 = sub_22036ED58();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v21);
  v25 = &v78[-v24];
  sub_2202A6484();
  v27 = v26;
  v28 = *(v26 - 8);
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v26);
  v31 = &v78[-((v30 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v22 + 16))(v25, a1, v21);
  v32 = swift_dynamicCast();
  v33 = *(v28 + 56);
  if (!v32)
  {
    v33(v20, 1, 1, v27);
    sub_2202A65B4(v20, sub_2202A642C);
    sub_220287CC4();
    swift_allocError();
    swift_willThrow();
    return result;
  }

  v33(v20, 0, 1, v27);
  (*(v28 + 32))(v31, v20, v27);
  v34 = sub_22036ED28();
  v35 = v101;
  v36 = sub_22036F1F8();
  if (v35)
  {
    (*(v28 + 8))(v31, v27);

    return result;
  }

  v85 = 0;
  v86 = v28;
  v101 = v31;
  v39 = v37;
  v40 = v36;

  v41 = sub_22036E3C8();
  v42 = *(v41 + 48);
  v43 = *(v41 + 52);
  swift_allocObject();
  sub_22036E3B8();
  sub_2202A6518(&qword_27CF27588, type metadata accessor for MediaEngageCompleteEvent.Model);
  v45 = v99;
  v44 = v100;
  v46 = v85;
  sub_22036E3A8();
  if (v46)
  {
    (*(v86 + 8))(v101, v27);

    sub_2202A6560(v40, v39);
    return result;
  }

  v83 = v40;
  v84 = v39;

  v47 = &v44[*(v45 + 20)];
  v48 = *(v47 + 3);
  v113 = *(v47 + 2);
  v114 = v48;
  v115 = *(v47 + 16);
  v49 = *(v47 + 1);
  v112[0] = *v47;
  v112[1] = v49;
  v111 = v115;
  v109 = v113;
  v110 = v48;
  v107 = v112[0];
  v108 = v49;
  v50 = &v44[*(v45 + 32)];
  v51 = *v50;
  v52 = *(v50 + 1);
  v81 = *(v50 + 2);
  v82 = v52;
  v80 = *(v50 + 6);
  v79 = v50[28];
  LODWORD(v85) = v51;
  if (v51 > 2)
  {
    v53 = v101;
    v54 = v86;
    if (v51 == 4)
    {
      sub_22022ECDC(v112, &v102);
LABEL_13:

      goto LABEL_15;
    }
  }

  else
  {
    v53 = v101;
    v54 = v86;
  }

  v55 = sub_220370048();
  sub_22022ECDC(v112, &v102);

  if ((v55 & 1) == 0)
  {
    if (v85 == 1)
    {
      goto LABEL_13;
    }

    v56 = sub_220370048();

    if ((v56 & 1) == 0)
    {
      (*(v54 + 8))(v53, v27);
      sub_2202A6560(v83, v84);
      sub_22022ED14(v112);
      sub_2202A65B4(v100, type metadata accessor for MediaEngageCompleteEvent.Model);
      result = 0.0;
      v77 = v94;
      *v94 = 0u;
      v77[1] = 0u;
      v77[2] = 0u;
      v77[3] = 0u;
      v77[4] = 0u;
      v77[5] = 0u;
      v77[6] = 0u;
      *(v77 + 14) = 0;
      return result;
    }
  }

LABEL_15:
  v57 = v96;
  sub_22036E458();
  (*(v97 + 16))(v95, v57, v98);
  v58 = sub_220287E28(0, 1, 1, MEMORY[0x277D84F90]);
  v60 = v58[2];
  v59 = v58[3];
  if (v60 >= v59 >> 1)
  {
    v58 = sub_220287E28(v59 > 1, v60 + 1, 1, v58);
  }

  v62 = v94;
  v61 = v95;
  v58[2] = v60 + 1;
  v63 = v97;
  v64 = v58 + ((*(v63 + 80) + 32) & ~*(v63 + 80)) + *(v63 + 72) * v60;
  v65 = v98;
  (*(v97 + 32))(v64, v61, v98);
  v118 = v58;
  v66 = &v100[*(v99 + 52)];
  v67 = *(v66 + 1);
  v116[0] = *v66;
  v116[1] = v67;
  v117 = *(v66 + 16);
  v68 = sub_2202A59D8(v112, v116, v87, v88);
  sub_2202A5E38(v68);
  LOBYTE(v102) = v79;
  v69 = sub_2202A5F68(v85);
  sub_2202A5E38(v69);
  v70 = sub_2202A6234();
  sub_2202A5E38(v70);
  v71 = v89;
  sub_22036E5C8();
  v101 = sub_22036E5B8();
  v99 = v72;
  sub_2202A6560(v83, v84);
  (*(v90 + 8))(v71, v91);
  (*(v63 + 8))(v96, v65);
  (*(v54 + 8))(v53, v27);
  v104 = v109;
  v105 = v110;
  LODWORD(v106) = v111;
  v102 = v107;
  v103 = v108;
  v73 = v93;

  sub_2202A65B4(v100, type metadata accessor for MediaEngageCompleteEvent.Model);
  v74 = v102;
  *(v62 + 24) = v103;
  result = *&v104;
  v75 = v105;
  *(v62 + 40) = v104;
  *(v62 + 56) = v75;
  *v62 = v118;
  *(v62 + 9) = v106;
  *(v62 + 8) = v74;
  *(v62 + 80) = 2;
  *(v62 + 11) = v92;
  *(v62 + 12) = v73;
  v76 = v99;
  *(v62 + 13) = v101;
  *(v62 + 14) = v76;
  return result;
}

char *sub_2202A59D8(void *a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_22036E468();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v43 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v50 = &v43 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v49 = &v43 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v19 = (&v43 - v18);
  MEMORY[0x28223BE20](v17);
  v21 = &v43 - v20;
  v23 = *a1;
  v22 = a1[1];
  v45 = a1;
  v51 = v23;
  v52 = v22;

  MEMORY[0x223D79930](a3, a4);
  sub_22036FAE8();

  sub_22036E458();

  v24 = *(v9 + 16);
  v46 = v19;
  v48 = v24;
  v24(v19, v21, v8);
  v25 = sub_220287E28(0, 1, 1, MEMORY[0x277D84F90]);
  v27 = *(v25 + 2);
  v26 = *(v25 + 3);
  if (v27 >= v26 >> 1)
  {
    v25 = sub_220287E28(v26 > 1, v27 + 1, 1, v25);
  }

  v29 = *a2;
  v28 = a2[1];
  *(v25 + 2) = v27 + 1;
  v47 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v44 = *(v9 + 72);
  v30 = *(v9 + 32);
  v30(&v25[v47 + v44 * v27], v46, v8);
  v31 = v49;
  sub_22036E458();
  v46 = *(v9 + 8);
  v46(v21, v8);
  v30(v21, v31, v8);
  v48(v50, v21, v8);
  v33 = *(v25 + 2);
  v32 = *(v25 + 3);
  if (v33 >= v32 >> 1)
  {
    v25 = sub_220287E28(v32 > 1, v33 + 1, 1, v25);
  }

  v34 = v44;
  v35 = *(v45 + 64);
  *(v25 + 2) = v33 + 1;
  v36 = &v25[v47 + v33 * v34];
  v37 = v34;
  v30(v36, v50, v8);
  if (v35 == 1)
  {
    v38 = v49;
    sub_22036E458();
    v46(v21, v8);
    v30(v21, v38, v8);
    v39 = v43;
    v48(v43, v21, v8);
    v41 = *(v25 + 2);
    v40 = *(v25 + 3);
    if (v41 >= v40 >> 1)
    {
      v25 = sub_220287E28(v40 > 1, v41 + 1, 1, v25);
    }

    v46(v21, v8);
    *(v25 + 2) = v41 + 1;
    v30(&v25[v47 + v41 * v37], v39, v8);
  }

  else
  {
    v46(v21, v8);
  }

  return v25;
}

uint64_t sub_2202A5E38(uint64_t result)
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
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= v3[3] >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v16 = v4 + v2;
  }

  else
  {
    v16 = v4;
  }

  v3 = sub_220287E28(isUniquelyReferenced_nonNull_native, v16, 1, v3);
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
  v9 = (v3[3] >> 1) - v3[2];
  result = sub_22036E468();
  v10 = *(result - 8);
  if (v9 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v11 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v12 = *(v10 + 72);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v13 = v3[2];
  v14 = __OFADD__(v13, v2);
  v15 = v13 + v2;
  if (!v14)
  {
    v3[2] = v15;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_2202A5F68(unsigned __int8 a1)
{
  v2 = sub_22036E468();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v23 - v9;
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v23 - v12;
  MEMORY[0x28223BE20](v11);
  v15 = &v23 - v14;
  v16 = a1;
  v17 = MEMORY[0x277D84F90];
  if (((1 << v16) & 0x2D) == 0)
  {
    if (v16 == 1)
    {
      sub_22036E458();
      (*(v3 + 16))(v7, v10, v2);
      v17 = sub_220287E28(0, 1, 1, MEMORY[0x277D84F90]);
      v19 = v17[2];
      v18 = v17[3];
      v20 = v19 + 1;
      if (v19 >= v18 >> 1)
      {
        v17 = sub_220287E28(v18 > 1, v19 + 1, 1, v17);
      }

      v15 = v10;
      v13 = v7;
    }

    else
    {
      sub_22036E458();
      (*(v3 + 16))(v13, v15, v2);
      v17 = sub_220287E28(0, 1, 1, MEMORY[0x277D84F90]);
      v19 = v17[2];
      v21 = v17[3];
      v20 = v19 + 1;
      if (v19 >= v21 >> 1)
      {
        v17 = sub_220287E28(v21 > 1, v19 + 1, 1, v17);
      }
    }

    (*(v3 + 8))(v15, v2);
    v17[2] = v20;
    (*(v3 + 32))(v17 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v19, v13, v2);
  }

  return v17;
}

void *sub_2202A6234()
{
  v0 = sub_22036E468();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = MEMORY[0x28223BE20](v0);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v12 - v6;
  sub_22036E458();
  (*(v1 + 16))(v5, v7, v0);
  v8 = sub_220287E28(0, 1, 1, MEMORY[0x277D84F90]);
  v10 = v8[2];
  v9 = v8[3];
  if (v10 >= v9 >> 1)
  {
    v8 = sub_220287E28(v9 > 1, v10 + 1, 1, v8);
  }

  (*(v1 + 8))(v7, v0);
  v8[2] = v10 + 1;
  (*(v1 + 32))(v8 + ((*(v1 + 80) + 32) & ~*(v1 + 80)) + *(v1 + 72) * v10, v5, v0);
  return v8;
}

void sub_2202A642C()
{
  if (!qword_27CF27580)
  {
    sub_2202A6484();
    v0 = sub_22036FCC8();
    if (!v1)
    {
      atomic_store(v0, &qword_27CF27580);
    }
  }
}

void sub_2202A6484()
{
  if (!qword_2812668C0)
  {
    type metadata accessor for MediaEngageCompleteEvent(255);
    sub_2202A6518(qword_281263168, type metadata accessor for MediaEngageCompleteEvent);
    v0 = sub_22036ED58();
    if (!v1)
    {
      atomic_store(v0, &qword_2812668C0);
    }
  }
}

uint64_t sub_2202A6518(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2202A6560(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_2202A65B4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

double URLHandlerContext<A>.urlReferralData()@<D0>(uint64_t *a1@<X8>)
{
  v89 = a1;
  *&v96 = sub_22036F758();
  v95 = *(v96 - 8);
  v2 = *(v95 + 64);
  MEMORY[0x28223BE20](v96);
  v94 = &v82 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v104 = sub_22036E508();
  v107 = *(v104 - 8);
  v4 = *(v107 + 64);
  v5 = MEMORY[0x28223BE20](v104);
  v7 = &v82 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v103 = &v82 - v8;
  v9 = sub_22036F578();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v93 = &v82 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v91 = &v82 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v90 = &v82 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v87 = &v82 - v19;
  MEMORY[0x28223BE20](v18);
  v21 = &v82 - v20;
  v22 = sub_22036F5A8();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  v25 = MEMORY[0x28223BE20](v22);
  v92 = &v82 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x28223BE20](v25);
  v88 = &v82 - v28;
  v29 = MEMORY[0x28223BE20](v27);
  v86 = &v82 - v30;
  v31 = MEMORY[0x28223BE20](v29);
  v33 = &v82 - v32;
  v34 = MEMORY[0x28223BE20](v31);
  v36 = &v82 - v35;
  MEMORY[0x28223BE20](v34);
  v38 = &v82 - v37;
  sub_2202A724C();
  v106 = v39;
  v108 = v1;
  sub_22036F678();
  sub_22036F598();
  v40 = *(v23 + 8);
  v100 = v23 + 8;
  v101 = v22;
  v99 = v40;
  v40(v38, v22);
  v41 = sub_22036F588();
  v43 = v42;
  v97 = *(v10 + 8);
  *&v98 = v9;
  v102 = v10 + 8;
  v97(v21, v9);
  if (v43)
  {
    if (v41 == 0x746567646977 && v43 == 0xE600000000000000)
    {

LABEL_6:
      v105 = 0x80000002203902C0;
      v82 = 0xD000000000000017;
      goto LABEL_8;
    }

    v44 = sub_220370048();

    if (v44)
    {
      goto LABEL_6;
    }
  }

  v82 = 0;
  v105 = 0xE000000000000000;
LABEL_8:
  sub_22036F678();
  sub_22036F568();
  v45 = v36;
  v46 = v101;
  v47 = v99;
  v99(v45, v101);
  sub_22036E4C8();
  v48 = *(v107 + 8);
  v107 += 8;
  v85 = v48;
  v48(v7, v104);
  sub_22036F678();
  v49 = v87;
  sub_22036F598();
  v47(v33, v46);
  v84 = sub_22036F588();
  v83 = v50;
  v51 = v49;
  v52 = v97;
  v53 = v98;
  v97(v51, v98);
  v54 = v86;
  sub_22036F678();
  v55 = v90;
  sub_22036F598();
  v47(v54, v46);
  v87 = sub_22036F588();
  v86 = v56;
  v52(v55, v53);
  v57 = v88;
  sub_22036F678();
  v58 = v91;
  sub_22036F598();
  v47(v57, v46);
  v90 = sub_22036F588();
  v88 = v59;
  v52(v58, v53);
  v60 = v94;
  sub_22036F668();
  v61 = sub_22036F748();
  v63 = v62;
  (*(v95 + 8))(v60, v96);
  v64 = v98;
  if (v63)
  {

    v105 = v63;
  }

  else
  {
    v61 = v82;
  }

  v65 = v103;
  v66 = sub_22036E4D8();
  v68 = v67;
  sub_2202A6EC8(v108, v109);
  v69 = v110;
  v70 = v111;
  v98 = v109[0];
  v96 = v109[1];
  v71 = v92;
  sub_22036F678();
  v72 = v93;
  sub_22036F598();
  v99(v71, v101);
  v73 = sub_22036F588();
  v75 = v74;
  v97(v72, v64);
  v85(v65, v104);
  if (v75)
  {
    v76 = v73;
  }

  else
  {
    v76 = 0;
  }

  v77 = v89;
  v78 = v83;
  *v89 = v84;
  v77[1] = v78;
  if (v75 <= 1)
  {
    v79 = 1;
  }

  else
  {
    v79 = v75;
  }

  v77[2] = v87;
  v77[3] = v86;
  v77[4] = v90;
  v77[5] = v88;
  v77[6] = v61;
  v77[7] = v105;
  v77[8] = v66;
  v77[9] = v68;
  v80 = v96;
  result = *&v98;
  *(v77 + 5) = v98;
  *(v77 + 6) = v80;
  v77[14] = v69;
  v77[15] = v70;
  v77[16] = v76;
  v77[17] = v79;
  return result;
}

uint64_t sub_2202A6EC8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v54 = a2;
  v3 = sub_22036F578();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3);
  v50 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v48 = &v43 - v9;
  MEMORY[0x28223BE20](v8);
  v11 = &v43 - v10;
  v12 = sub_22036F5A8();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v12);
  v47 = &v43 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v43 - v18;
  MEMORY[0x28223BE20](v17);
  v21 = &v43 - v20;
  sub_2202A724C();
  v51 = a1;
  sub_22036F678();
  sub_22036F598();
  v22 = *(v13 + 8);
  v49 = v12;
  v22(v21, v12);
  v46 = sub_22036F588();
  v24 = v23;
  v25 = *(v4 + 8);
  v52 = v4 + 8;
  v53 = v3;
  result = v25(v11, v3);
  if (v24)
  {
    sub_22036F678();
    v27 = v48;
    sub_22036F598();
    v45 = v24;
    v28 = v49;
    v22(v19, v49);
    v29 = sub_22036F588();
    v43 = v30;
    v44 = v29;
    v31 = v27;
    v32 = v53;
    v25(v31, v53);
    v33 = v47;
    sub_22036F678();
    v34 = v50;
    sub_22036F598();
    v35 = v28;
    v24 = v45;
    v22(v33, v35);
    v36 = sub_22036F588();
    v38 = v37;
    result = v25(v34, v32);
    v40 = v43;
    v39 = v44;
    v41 = v46;
  }

  else
  {
    v41 = 0;
    v39 = 0;
    v40 = 0;
    v36 = 0;
    v38 = 0;
  }

  v42 = v54;
  *v54 = v41;
  v42[1] = v24;
  v42[2] = v39;
  v42[3] = v40;
  v42[4] = v36;
  v42[5] = v38;
  return result;
}

void sub_2202A724C()
{
  if (!qword_281266650)
  {
    sub_22036F878();
    v0 = sub_22036F688();
    if (!v1)
    {
      atomic_store(v0, &qword_281266650);
    }
  }
}

StocksAnalytics::AdType_optional __swiftcall AdType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_22036FE78();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t AdType.rawValue.getter()
{
  v1 = 0x6E776F6E6B6E75;
  v2 = 0x72656C6C65736572;
  if (*v0 != 2)
  {
    v2 = 0x6573756F68;
  }

  if (*v0)
  {
    v1 = 0xD000000000000013;
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

unint64_t sub_2202A7394()
{
  result = qword_27CF27590;
  if (!qword_27CF27590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF27590);
  }

  return result;
}

uint64_t sub_2202A73E8()
{
  v1 = *v0;
  sub_220370108();
  sub_22036FB08();

  return sub_220370128();
}

uint64_t sub_2202A74B4()
{
  *v0;
  *v0;
  *v0;
  sub_22036FB08();
}

uint64_t sub_2202A756C()
{
  v1 = *v0;
  sub_220370108();
  sub_22036FB08();

  return sub_220370128();
}

void sub_2202A7640(unint64_t *a1@<X8>)
{
  v2 = 0xE700000000000000;
  v3 = 0x6E776F6E6B6E75;
  v4 = 0xEC000000646C6F53;
  v5 = 0x72656C6C65736572;
  if (*v1 != 2)
  {
    v5 = 0x6573756F68;
    v4 = 0xE500000000000000;
  }

  if (*v1)
  {
    v3 = 0xD000000000000013;
    v2 = 0x800000022038FAB0;
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

unint64_t sub_2202A7788()
{
  result = qword_27CF27598;
  if (!qword_27CF27598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF27598);
  }

  return result;
}

uint64_t sub_2202A78A4()
{
  v0 = sub_22036F118();
  __swift_allocate_value_buffer(v0, qword_27CF275D0);
  __swift_project_value_buffer(v0, qword_27CF275D0);
  return sub_22036F108();
}

uint64_t NonNewsArticleViewResumeEvent.eventData.setter(uint64_t a1)
{
  sub_220230578();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t NonNewsArticleViewResumeEvent.viewData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for NonNewsArticleViewResumeEvent(0) + 20);
  sub_2202A7DFC(0, &qword_281266728, sub_2202020B8, sub_220202110);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t NonNewsArticleViewResumeEvent.viewData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for NonNewsArticleViewResumeEvent(0) + 20);
  sub_2202A7DFC(0, &qword_281266728, sub_2202020B8, sub_220202110);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t NonNewsArticleViewResumeEvent.nonNewsArticleData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for NonNewsArticleViewResumeEvent(0) + 24);
  sub_2202A7DFC(0, &qword_27CF26BA0, sub_22026C224, sub_22026C27C);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t NonNewsArticleViewResumeEvent.nonNewsArticleData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for NonNewsArticleViewResumeEvent(0) + 24);
  sub_2202A7DFC(0, &qword_27CF26BA0, sub_22026C224, sub_22026C27C);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t NonNewsArticleViewResumeEvent.orientationData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for NonNewsArticleViewResumeEvent(0) + 28);
  sub_2202A7DFC(0, &qword_2812667D8, sub_2201F8808, sub_2201F8860);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

void sub_2202A7DFC(uint64_t a1, unint64_t *a2, void (*a3)(void), void (*a4)(void))
{
  if (!*a2)
  {
    a3();
    a4();
    v6 = sub_22036EE38();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t NonNewsArticleViewResumeEvent.orientationData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for NonNewsArticleViewResumeEvent(0) + 28);
  sub_2202A7DFC(0, &qword_2812667D8, sub_2201F8808, sub_2201F8860);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t NonNewsArticleViewResumeEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CEACF8];
  sub_220230578();
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for NonNewsArticleViewResumeEvent(0);
  v5 = v4[5];
  sub_2202A7DFC(0, &qword_281266728, sub_2202020B8, sub_220202110);
  (*(*(v6 - 8) + 104))(a1 + v5, v2, v6);
  v7 = v4[6];
  sub_2202A7DFC(0, &qword_27CF26BA0, sub_22026C224, sub_22026C27C);
  (*(*(v8 - 8) + 104))(a1 + v7, v2, v8);
  v9 = v4[7];
  sub_2202A7DFC(0, &qword_2812667D8, sub_2201F8808, sub_2201F8860);
  v11 = *(*(v10 - 8) + 104);

  return v11(a1 + v9, v2, v10);
}

uint64_t NonNewsArticleViewResumeEvent.Model.viewData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for NonNewsArticleViewResumeEvent.Model(0) + 20));
  v5 = *v3;
  v4 = v3[1];
  LOWORD(v3) = *(v3 + 8);
  *a1 = v5;
  *(a1 + 8) = v4;
  *(a1 + 16) = v3;
}

uint64_t NonNewsArticleViewResumeEvent.Model.nonNewsArticleData.getter@<X0>(void *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for NonNewsArticleViewResumeEvent.Model(0) + 24));
  v4 = v3[1];
  v5 = v3[2];
  v6 = v3[3];
  v7 = v3[4];
  v8 = v3[5];
  *a1 = *v3;
  a1[1] = v4;
  a1[2] = v5;
  a1[3] = v6;
  a1[4] = v7;
  a1[5] = v8;
}

uint64_t NonNewsArticleViewResumeEvent.Model.orientationData.getter@<X0>(_WORD *a1@<X8>)
{
  result = type metadata accessor for NonNewsArticleViewResumeEvent.Model(0);
  *a1 = *(v1 + *(result + 28));
  return result;
}

__n128 NonNewsArticleViewResumeEvent.Model.init(eventData:viewData:nonNewsArticleData:orientationData:)@<Q0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, __int128 *a3@<X2>, __int16 *a4@<X3>, uint64_t a5@<X8>)
{
  v7 = *a2;
  v8 = a2[1];
  v9 = *(a2 + 8);
  v18 = a3[1];
  v19 = *a3;
  v10 = *(a3 + 4);
  v11 = *(a3 + 5);
  v12 = *a4;
  v13 = sub_22036F388();
  (*(*(v13 - 8) + 32))(a5, a1, v13);
  v14 = type metadata accessor for NonNewsArticleViewResumeEvent.Model(0);
  v15 = a5 + v14[5];
  *v15 = v7;
  *(v15 + 8) = v8;
  *(v15 + 16) = v9;
  v16 = a5 + v14[6];
  result = v18;
  *v16 = v19;
  *(v16 + 16) = v18;
  *(v16 + 32) = v10;
  *(v16 + 40) = v11;
  *(a5 + v14[7]) = v12;
  return result;
}

unint64_t sub_2202A835C()
{
  v1 = 0x746144746E657665;
  v2 = 0xD000000000000012;
  if (*v0 != 2)
  {
    v2 = 0x7461746E6569726FLL;
  }

  if (*v0)
  {
    v1 = 0x6174614477656976;
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

uint64_t sub_2202A83EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2202A9398(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2202A8414(uint64_t a1)
{
  v2 = sub_2202A878C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2202A8450(uint64_t a1)
{
  v2 = sub_2202A878C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t NonNewsArticleViewResumeEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  sub_2202A8C68(0, &qword_27CF275E8, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = &v23 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2202A878C();
  sub_220370168();
  LOBYTE(v23) = 0;
  sub_22036F388();
  sub_2202366E0(&qword_2812666A8);
  sub_22036FFF8();
  if (!v2)
  {
    v12 = type metadata accessor for NonNewsArticleViewResumeEvent.Model(0);
    v13 = (v3 + v12[5]);
    v14 = *v13;
    v15 = v13[1];
    LOWORD(v13) = *(v13 + 8);
    v23 = v14;
    v24 = v15;
    LOWORD(v25) = v13;
    v29 = 1;
    sub_220202110();

    sub_22036FFF8();

    v16 = (v3 + v12[6]);
    v17 = v16[1];
    v18 = v16[2];
    v19 = v16[3];
    v20 = v16[4];
    v21 = v16[5];
    v23 = *v16;
    v24 = v17;
    v25 = v18;
    v26 = v19;
    v27 = v20;
    v28 = v21;
    v29 = 2;
    sub_22026C27C();

    sub_22036FFF8();

    LOWORD(v23) = *(v3 + v12[7]);
    v29 = 3;
    sub_2201F8860();
    sub_22036FFF8();
  }

  return (*(v7 + 8))(v10, v6);
}

unint64_t sub_2202A878C()
{
  result = qword_27CF275F0;
  if (!qword_27CF275F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF275F0);
  }

  return result;
}

uint64_t NonNewsArticleViewResumeEvent.Model.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a2;
  v4 = sub_22036F388();
  v27 = *(v4 - 8);
  v5 = *(v27 + 64);
  MEMORY[0x28223BE20](v4);
  v28 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2202A8C68(0, &qword_27CF275F8, MEMORY[0x277D844C8]);
  v29 = *(v7 - 8);
  v30 = v7;
  v8 = *(v29 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v26 - v9;
  v11 = type metadata accessor for NonNewsArticleViewResumeEvent.Model(0);
  v12 = *(*(v11 - 1) + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2202A878C();
  v31 = v10;
  sub_220370148();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v16 = v27;
  LOBYTE(v32) = 0;
  sub_2202366E0(&qword_2812666A0);
  v17 = v28;
  sub_22036FF28();
  (*(v16 + 32))(v14, v17, v4);
  v36 = 1;
  sub_2202020B8();
  sub_22036FF28();
  v18 = *(&v32 + 1);
  v19 = v33;
  v20 = &v14[v11[5]];
  *v20 = v32;
  *(v20 + 1) = v18;
  *(v20 + 8) = v19;
  v36 = 2;
  sub_22026C224();
  sub_22036FF28();
  v21 = v33;
  v22 = v34;
  v23 = v35;
  v24 = &v14[v11[6]];
  *v24 = v32;
  *(v24 + 1) = v21;
  *(v24 + 4) = v22;
  *(v24 + 5) = v23;
  v36 = 3;
  sub_2201F8808();
  sub_22036FF28();
  (*(v29 + 8))(v31, v30);
  *&v14[v11[7]] = v32;
  sub_2202A8CCC(v14, v26);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_2202A8D30(v14);
}

void sub_2202A8C68(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_2202A878C();
    v7 = a3(a1, &type metadata for NonNewsArticleViewResumeEvent.Model.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_2202A8CCC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NonNewsArticleViewResumeEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2202A8D30(uint64_t a1)
{
  v2 = type metadata accessor for NonNewsArticleViewResumeEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2202A8E64@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *MEMORY[0x277CEACF8];
  sub_220230578();
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = a1[5];
  sub_2202A7DFC(0, &qword_281266728, sub_2202020B8, sub_220202110);
  (*(*(v7 - 8) + 104))(a2 + v6, v4, v7);
  v8 = a1[6];
  sub_2202A7DFC(0, &qword_27CF26BA0, sub_22026C224, sub_22026C27C);
  (*(*(v9 - 8) + 104))(a2 + v8, v4, v9);
  v10 = a1[7];
  sub_2202A7DFC(0, &qword_2812667D8, sub_2201F8808, sub_2201F8860);
  v12 = *(*(v11 - 8) + 104);

  return v12(a2 + v10, v4, v11);
}

void sub_2202A9074()
{
  sub_220230578();
  if (v0 <= 0x3F)
  {
    sub_2202A7DFC(319, &qword_281266728, sub_2202020B8, sub_220202110);
    if (v1 <= 0x3F)
    {
      sub_2202A7DFC(319, &qword_27CF26BA0, sub_22026C224, sub_22026C27C);
      if (v2 <= 0x3F)
      {
        sub_2202A7DFC(319, &qword_2812667D8, sub_2201F8808, sub_2201F8860);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_2202A91F8()
{
  result = sub_22036F388();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_2202A9294()
{
  result = qword_27CF27620;
  if (!qword_27CF27620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF27620);
  }

  return result;
}

unint64_t sub_2202A92EC()
{
  result = qword_27CF27628;
  if (!qword_27CF27628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF27628);
  }

  return result;
}

unint64_t sub_2202A9344()
{
  result = qword_27CF27630;
  if (!qword_27CF27630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF27630);
  }

  return result;
}

uint64_t sub_2202A9398(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746144746E657665 && a2 == 0xE900000000000061;
  if (v4 || (sub_220370048() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6174614477656976 && a2 == 0xE800000000000000 || (sub_220370048() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000012 && 0x8000000220390A60 == a2 || (sub_220370048() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x7461746E6569726FLL && a2 == 0xEF617461446E6F69)
  {

    return 3;
  }

  else
  {
    v6 = sub_220370048();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_2202A95DC()
{
  v0 = sub_22036F118();
  __swift_allocate_value_buffer(v0, qword_27CF27638);
  __swift_project_value_buffer(v0, qword_27CF27638);
  return sub_22036F108();
}

uint64_t SearchEvent.eventData.setter(uint64_t a1)
{
  sub_220230578();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t SearchEvent.searchData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SearchEvent(0) + 20);
  sub_2202A979C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

void sub_2202A979C()
{
  if (!qword_281266878)
  {
    sub_220247C08();
    sub_220247C5C();
    v0 = sub_22036EE38();
    if (!v1)
    {
      atomic_store(v0, &qword_281266878);
    }
  }
}

uint64_t SearchEvent.searchData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SearchEvent(0) + 20);
  sub_2202A979C();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t SearchEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CEACF8];
  sub_220230578();
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = *(type metadata accessor for SearchEvent(0) + 20);
  sub_2202A979C();
  v6 = *(*(v5 - 8) + 104);

  return v6(a1 + v4, v2, v5);
}

uint64_t SearchEvent.Model.searchData.getter@<X0>(void *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for SearchEvent.Model(0) + 20));
  v4 = v3[1];
  *a1 = *v3;
  a1[1] = v4;
}

uint64_t SearchEvent.Model.init(eventData:searchData:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a2;
  v6 = a2[1];
  v7 = sub_22036F388();
  (*(*(v7 - 8) + 32))(a3, a1, v7);
  result = type metadata accessor for SearchEvent.Model(0);
  v9 = (a3 + *(result + 20));
  *v9 = v5;
  v9[1] = v6;
  return result;
}

uint64_t sub_2202A9A8C()
{
  if (*v0)
  {
    result = 0x6144686372616573;
  }

  else
  {
    result = 0x746144746E657665;
  }

  *v0;
  return result;
}

uint64_t sub_2202A9AD0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x746144746E657665 && a2 == 0xE900000000000061;
  if (v6 || (sub_220370048() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6144686372616573 && a2 == 0xEA00000000006174)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_220370048();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_2202A9BBC(uint64_t a1)
{
  v2 = sub_2202A9E18();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2202A9BF8(uint64_t a1)
{
  v2 = sub_2202A9E18();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SearchEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  sub_2202AA1CC(0, &qword_27CF27650, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = &v15[-v9];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2202A9E18();
  sub_220370168();
  LOBYTE(v16) = 0;
  sub_22036F388();
  sub_2202366E0(&qword_2812666A8);
  sub_22036FFF8();
  if (!v2)
  {
    v12 = (v3 + *(type metadata accessor for SearchEvent.Model(0) + 20));
    v13 = v12[1];
    v16 = *v12;
    v17 = v13;
    v15[15] = 1;
    sub_220247C5C();

    sub_22036FFF8();
  }

  return (*(v7 + 8))(v10, v6);
}

unint64_t sub_2202A9E18()
{
  result = qword_27CF27658;
  if (!qword_27CF27658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF27658);
  }

  return result;
}

uint64_t SearchEvent.Model.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v29 = a2;
  v33 = sub_22036F388();
  v30 = *(v33 - 8);
  v4 = *(v30 + 64);
  MEMORY[0x28223BE20](v33);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2202AA1CC(0, &qword_27CF27660, MEMORY[0x277D844C8]);
  v8 = *(v7 - 8);
  v31 = v7;
  v32 = v8;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v26 - v10;
  v12 = type metadata accessor for SearchEvent.Model(0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2202A9E18();
  sub_220370148();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v28 = v12;
  v17 = v15;
  v18 = v30;
  LOBYTE(v34) = 0;
  sub_2202366E0(&qword_2812666A0);
  v19 = v33;
  v20 = v31;
  sub_22036FF28();
  v21 = *(v18 + 32);
  v27 = v17;
  v21(v17, v6, v19);
  v36 = 1;
  sub_220247C08();
  sub_22036FF28();
  (*(v32 + 8))(v11, v20);
  v22 = v35;
  v23 = v27;
  v24 = (v27 + *(v28 + 20));
  *v24 = v34;
  v24[1] = v22;
  sub_2202AA230(v23, v29);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_2202AA294(v23);
}

void sub_2202AA1CC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_2202A9E18();
    v7 = a3(a1, &type metadata for SearchEvent.Model.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_2202AA230(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SearchEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2202AA294(uint64_t a1)
{
  v2 = type metadata accessor for SearchEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2202AA3C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *MEMORY[0x277CEACF8];
  sub_220230578();
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = *(a1 + 20);
  sub_2202A979C();
  v8 = *(*(v7 - 8) + 104);

  return v8(a2 + v6, v4, v7);
}

void sub_2202AA4B0()
{
  sub_220230578();
  if (v0 <= 0x3F)
  {
    sub_2202A979C();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_2202AA55C()
{
  result = sub_22036F388();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_2202AA5E4()
{
  result = qword_27CF27678;
  if (!qword_27CF27678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF27678);
  }

  return result;
}

unint64_t sub_2202AA63C()
{
  result = qword_27CF27680;
  if (!qword_27CF27680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF27680);
  }

  return result;
}

unint64_t sub_2202AA694()
{
  result = qword_27CF27688;
  if (!qword_27CF27688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF27688);
  }

  return result;
}

uint64_t WatchlistSummaryData.watchlistSummary.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t sub_2202AA768@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000010 && 0x8000000220390F30 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = sub_220370048();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_2202AA7FC(uint64_t a1)
{
  v2 = sub_2202AAA1C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2202AA838(uint64_t a1)
{
  v2 = sub_2202AAA1C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t WatchlistSummaryData.encode(to:)(void *a1)
{
  sub_2202AAC90(0, &qword_281261C08, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  v8 = v12 - v7;
  v9 = *v1;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2202AAA1C();

  sub_220370168();
  v12[1] = v9;
  sub_2202AAA70();
  sub_2202AACF4(&qword_281261F30, sub_22026A0E0);
  sub_22036FFF8();

  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_2202AAA1C()
{
  result = qword_281263B18;
  if (!qword_281263B18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281263B18);
  }

  return result;
}

void sub_2202AAA70()
{
  if (!qword_281261F38)
  {
    v0 = sub_22036FB88();
    if (!v1)
    {
      atomic_store(v0, &qword_281261F38);
    }
  }
}

uint64_t WatchlistSummaryData.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  sub_2202AAC90(0, &qword_281261DA0, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = v13 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2202AAA1C();
  sub_220370148();
  if (!v2)
  {
    sub_2202AAA70();
    sub_2202AACF4(&qword_281261F28, sub_22026A088);
    sub_22036FF28();
    (*(v7 + 8))(v10, v6);
    *a2 = v13[1];
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_2202AAC90(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_2202AAA1C();
    v7 = a3(a1, &type metadata for WatchlistSummaryData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_2202AACF4(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    sub_2202AAA70();
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2202AAD64()
{
  result = qword_281263AF0;
  if (!qword_281263AF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281263AF0);
  }

  return result;
}

unint64_t sub_2202AADBC()
{
  result = qword_281263AF8;
  if (!qword_281263AF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281263AF8);
  }

  return result;
}

unint64_t sub_2202AAE64()
{
  result = qword_27CF27690;
  if (!qword_27CF27690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF27690);
  }

  return result;
}

unint64_t sub_2202AAEBC()
{
  result = qword_281263B08;
  if (!qword_281263B08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281263B08);
  }

  return result;
}

unint64_t sub_2202AAF14()
{
  result = qword_281263B10;
  if (!qword_281263B10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281263B10);
  }

  return result;
}

StocksAnalytics::PaidSubscriberToSourceChannelType_optional __swiftcall PaidSubscriberToSourceChannelType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_22036FE78();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t PaidSubscriberToSourceChannelType.rawValue.getter()
{
  v1 = 0x6E776F6E6B6E75;
  v2 = 0x6C61697274;
  if (*v0 != 2)
  {
    v2 = 1684627824;
  }

  if (*v0)
  {
    v1 = 1701147238;
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

unint64_t sub_2202AB038()
{
  result = qword_27CF27698;
  if (!qword_27CF27698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF27698);
  }

  return result;
}

uint64_t sub_2202AB08C()
{
  v1 = *v0;
  sub_220370108();
  sub_22036FB08();

  return sub_220370128();
}

uint64_t sub_2202AB138()
{
  *v0;
  *v0;
  *v0;
  sub_22036FB08();
}

uint64_t sub_2202AB1D0()
{
  v1 = *v0;
  sub_220370108();
  sub_22036FB08();

  return sub_220370128();
}

void sub_2202AB284(uint64_t *a1@<X8>)
{
  v2 = 0xE700000000000000;
  v3 = 0x6E776F6E6B6E75;
  v4 = 0xE500000000000000;
  v5 = 0x6C61697274;
  if (*v1 != 2)
  {
    v5 = 1684627824;
    v4 = 0xE400000000000000;
  }

  if (*v1)
  {
    v3 = 1701147238;
    v2 = 0xE400000000000000;
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

unint64_t sub_2202AB3AC()
{
  result = qword_281262870;
  if (!qword_281262870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281262870);
  }

  return result;
}

double sub_2202AB400@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, _OWORD *a6@<X8>)
{
  v91 = a4;
  v92 = a5;
  v96 = a2;
  v97 = a3;
  v102 = a6;
  v7 = sub_22036E5D8();
  v94 = *(v7 - 8);
  v95 = v7;
  v8 = *(v94 + 64);
  MEMORY[0x28223BE20](v7);
  v93 = &v82 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_22036E468();
  v100 = *(v10 - 8);
  v101 = v10;
  v11 = *(v100 + 64);
  v12 = MEMORY[0x28223BE20](v10);
  v98 = &v82 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v99 = &v82 - v14;
  v103 = type metadata accessor for MediaEngageEvent.Model(0);
  v15 = *(*(v103 - 8) + 64);
  MEMORY[0x28223BE20](v103);
  v104 = &v82 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2202AC2B4();
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v20 = &v82 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_22036ED58();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v21);
  v25 = &v82 - v24;
  sub_2202AC30C();
  v27 = v26;
  v28 = *(v26 - 8);
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v26);
  v31 = &v82 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v22 + 16))(v25, a1, v21);
  v32 = swift_dynamicCast();
  v33 = *(v28 + 56);
  if (!v32)
  {
    v33(v20, 1, 1, v27);
    sub_2202AC3E8(v20, sub_2202AC2B4);
    sub_220287CC4();
    swift_allocError();
    swift_willThrow();
    return result;
  }

  v33(v20, 0, 1, v27);
  (*(v28 + 32))(v31, v20, v27);
  v34 = sub_22036ED28();
  v35 = v105;
  v36 = sub_22036F1F8();
  if (v35)
  {
    (*(v28 + 8))(v31, v27);

    return result;
  }

  v39 = v37;
  v40 = v36;

  v41 = sub_22036E3C8();
  v42 = *(v41 + 48);
  v43 = *(v41 + 52);
  swift_allocObject();
  sub_22036E3B8();
  sub_2202AC3A0(&qword_27CF276A8, type metadata accessor for MediaEngageEvent.Model);
  v44 = v103;
  v45 = v104;
  sub_22036E3A8();
  v105 = 0;
  v89 = v40;
  v90 = v39;

  v46 = v45 + v44[6];
  v47 = *(v46 + 48);
  v117 = *(v46 + 32);
  v118 = v47;
  v119 = *(v46 + 64);
  v48 = *(v46 + 16);
  v116[0] = *v46;
  v116[1] = v48;
  v115 = v119;
  v113 = v117;
  v114 = v47;
  v111 = v116[0];
  v112 = v48;
  v49 = (v45 + v44[9]);
  v50 = *v49;
  v51 = *(v49 + 1);
  v52 = *(v49 + 2);
  v53 = *(v49 + 6);
  v54 = v49[28];
  v55 = v45 + v44[10];
  v56 = *v55;
  v57 = *(v55 + 8);
  v58 = *(v55 + 12);
  v59 = *(v55 + 16);
  if (((1 << v50) & 0x2D) != 0)
  {
    sub_22022ECDC(v116, &v106);
LABEL_7:
    (*(v28 + 8))(v31, v27);
    sub_2202A6560(v89, v90);
    sub_22022ED14(v116);
    sub_2202AC3E8(v45, type metadata accessor for MediaEngageEvent.Model);
    result = 0.0;
    v60 = v102;
    *v102 = 0u;
    v60[1] = 0u;
    v60[2] = 0u;
    v60[3] = 0u;
    v60[4] = 0u;
    v60[5] = 0u;
    v60[6] = 0u;
    *(v60 + 14) = 0;
    return result;
  }

  if (*(v55 + 8) <= 3u)
  {
    if (*(v55 + 8) > 1u)
    {
      v84 = *v55;
      v87 = v52;
      v88 = v51;
      v86 = v53;
      v85 = v54;
      v83 = v59;
      v82 = v58;
    }

    else
    {
      if (*(v55 + 8))
      {
        sub_22022ECDC(v116, &v106);

        goto LABEL_7;
      }

      v82 = *(v55 + 12);
      v83 = v59;
      v84 = v56;
      v85 = v54;
      v86 = v53;
      v87 = v52;
      v88 = v51;
    }
  }

  else
  {
    v87 = v52;
    v88 = v51;
    v86 = v53;
    v85 = v54;
    v84 = v56;
    v83 = v59;
    v82 = v58;
  }

  v61 = sub_220370048();
  sub_22022ECDC(v116, &v106);

  if (v61)
  {
    goto LABEL_7;
  }

  v62 = v99;
  sub_22036E458();
  (*(v100 + 16))(v98, v62, v101);
  v63 = sub_220287E28(0, 1, 1, MEMORY[0x277D84F90]);
  v65 = v63[2];
  v64 = v63[3];
  if (v65 >= v64 >> 1)
  {
    v63 = sub_220287E28(v64 > 1, v65 + 1, 1, v63);
  }

  v63[2] = v65 + 1;
  v66 = v100;
  v67 = v63 + ((*(v66 + 80) + 32) & ~*(v66 + 80)) + *(v66 + 72) * v65;
  v68 = v101;
  (*(v100 + 32))(v67, v98, v101);
  v122 = v63;
  v69 = v104 + *(v103 + 56);
  v70 = *(v69 + 16);
  v120[0] = *v69;
  v120[1] = v70;
  v121 = *(v69 + 32);
  v71 = sub_2202A6614(v116, v120, v91, v92);
  sub_2202A5E38(v71);
  v72 = sub_2202ABDA4(v84, v57);
  sub_2202A5E38(v72);
  LOBYTE(v106) = v85;
  v73 = sub_2202A5F64(v50, v88, v87, v86 | (v85 << 32));
  sub_2202A5E38(v73);
  v74 = v93;
  sub_22036E5C8();
  v75 = sub_22036E5B8();
  v77 = v76;
  sub_2202A6560(v89, v90);
  (*(v94 + 8))(v74, v95);
  (*(v66 + 8))(v99, v68);
  (*(v28 + 8))(v31, v27);
  v108 = v113;
  v109 = v114;
  LODWORD(v110) = v115;
  v106 = v111;
  v107 = v112;
  v78 = v97;

  sub_2202AC3E8(v104, type metadata accessor for MediaEngageEvent.Model);
  v79 = v106;
  v80 = v102;
  *(v102 + 24) = v107;
  result = *&v108;
  v81 = v109;
  *(v80 + 40) = v108;
  *(v80 + 56) = v81;
  *v80 = v122;
  *(v80 + 9) = v110;
  *(v80 + 8) = v79;
  *(v80 + 80) = 2;
  *(v80 + 11) = v96;
  *(v80 + 12) = v78;
  *(v80 + 13) = v75;
  *(v80 + 14) = v77;
  return result;
}

void *sub_2202ABDA4(uint64_t a1, unsigned __int8 a2)
{
  v3 = sub_22036E468();
  v43 = *(v3 - 8);
  v4 = *(v43 + 64);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v42 - v9;
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v42 - v12;
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v42 - v15;
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v42 - v18;
  v20 = MEMORY[0x28223BE20](v17);
  v22 = &v42 - v21;
  v23 = MEMORY[0x28223BE20](v20);
  v25 = &v42 - v24;
  MEMORY[0x28223BE20](v23);
  v27 = &v42 - v26;
  v28 = a2;
  v29 = MEMORY[0x277D84F90];
  if (v28 > 2)
  {
    if ((v28 - 5) >= 4)
    {
      v42 = v3;
      if (v28 == 3)
      {
        sub_22036E458();
        (*(v43 + 16))(v7, v10, v3);
        v29 = sub_220287E28(0, 1, 1, MEMORY[0x277D84F90]);
        v33 = v29[2];
        v35 = v29[3];
        v34 = v33 + 1;
        if (v33 >= v35 >> 1)
        {
          v29 = sub_220287E28(v35 > 1, v33 + 1, 1, v29);
        }

        v27 = v10;
        v25 = v7;
        v30 = v43;
      }

      else
      {
        sub_22036E458();
        v30 = v43;
        (*(v43 + 16))(v13, v16, v3);
        v38 = sub_220287E28(0, 1, 1, MEMORY[0x277D84F90]);
        v29 = v38;
        v33 = v38[2];
        v39 = v38[3];
        if (v33 >= v39 >> 1)
        {
          v29 = sub_220287E28(v39 > 1, v33 + 1, 1, v38);
        }

        v27 = v16;
        v25 = v13;
        v34 = v33 + 1;
      }

      goto LABEL_18;
    }
  }

  else
  {
    if (!v28)
    {
      sub_22036E458();
      v30 = v43;
      v36 = *(v43 + 16);
      v42 = v3;
      v36(v25, v27, v3);
      v29 = sub_220287E28(0, 1, 1, MEMORY[0x277D84F90]);
      v33 = v29[2];
      v37 = v29[3];
      v34 = v33 + 1;
      if (v33 >= v37 >> 1)
      {
        v29 = sub_220287E28(v37 > 1, v33 + 1, 1, v29);
      }

      goto LABEL_18;
    }

    if (v28 != 1)
    {
      sub_22036E458();
      v30 = v43;
      v31 = *(v43 + 16);
      v42 = v3;
      v31(v19, v22, v3);
      v29 = sub_220287E28(0, 1, 1, MEMORY[0x277D84F90]);
      v33 = v29[2];
      v32 = v29[3];
      v34 = v33 + 1;
      if (v33 >= v32 >> 1)
      {
        v29 = sub_220287E28(v32 > 1, v33 + 1, 1, v29);
      }

      v27 = v22;
      v25 = v19;
LABEL_18:
      v40 = v42;
      (*(v30 + 8))(v27, v42);
      v29[2] = v34;
      (*(v30 + 32))(v29 + ((*(v30 + 80) + 32) & ~*(v30 + 80)) + *(v30 + 72) * v33, v25, v40);
    }
  }

  return v29;
}

void sub_2202AC2B4()
{
  if (!qword_27CF276A0)
  {
    sub_2202AC30C();
    v0 = sub_22036FCC8();
    if (!v1)
    {
      atomic_store(v0, &qword_27CF276A0);
    }
  }
}

void sub_2202AC30C()
{
  if (!qword_2812668D0)
  {
    type metadata accessor for MediaEngageEvent(255);
    sub_2202AC3A0(&qword_2812652B0, type metadata accessor for MediaEngageEvent);
    v0 = sub_22036ED58();
    if (!v1)
    {
      atomic_store(v0, &qword_2812668D0);
    }
  }
}

uint64_t sub_2202AC3A0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2202AC3E8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t ExternalAnalyticsData.externalAnalyticsID.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return v1;
}

uint64_t ExternalAnalyticsData.externalAnalyticsID.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16);

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

uint64_t ExternalAnalyticsData.externalAnalyticsEventUUID.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  return v1;
}

uint64_t ExternalAnalyticsData.externalAnalyticsEventUUID.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 32);

  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return result;
}

unint64_t sub_2202AC5AC()
{
  v1 = 0xD000000000000013;
  if (*v0 != 1)
  {
    v1 = 0xD00000000000001ALL;
  }

  if (*v0)
  {
    result = v1;
  }

  else
  {
    result = 0xD00000000000001ALL;
  }

  *v0;
  return result;
}

uint64_t sub_2202AC600@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2202ACEAC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2202AC628(uint64_t a1)
{
  v2 = sub_2202AC860();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2202AC664(uint64_t a1)
{
  v2 = sub_2202AC860();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ExternalAnalyticsData.encode(to:)(void *a1)
{
  sub_2202ACB5C(0, &qword_27CF276B0, MEMORY[0x277D84538]);
  v5 = v4;
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  v9 = v15 - v8;
  v10 = *v1;
  v11 = *(v1 + 1);
  v15[2] = *(v1 + 2);
  v15[3] = v11;
  v12 = *(v1 + 3);
  v15[0] = *(v1 + 4);
  v15[1] = v12;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2202AC860();
  sub_220370168();
  v19 = v10;
  v18 = 0;
  sub_2202AC8B4();
  sub_22036FFF8();
  if (!v2)
  {
    v17 = 1;
    sub_22036FFB8();
    v16 = 2;
    sub_22036FFB8();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_2202AC860()
{
  result = qword_27CF276B8;
  if (!qword_27CF276B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF276B8);
  }

  return result;
}

unint64_t sub_2202AC8B4()
{
  result = qword_27CF276C0;
  if (!qword_27CF276C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF276C0);
  }

  return result;
}