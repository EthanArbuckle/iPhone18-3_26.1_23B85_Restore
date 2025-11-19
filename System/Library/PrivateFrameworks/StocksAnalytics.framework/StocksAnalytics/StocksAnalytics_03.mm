uint64_t ReferralData.originatingCampaignID.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t ReferralData.originatingCampaignID.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t ReferralData.originatingCampaignType.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t ReferralData.originatingCampaignType.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t ReferralData.originatingCreativeID.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

uint64_t ReferralData.originatingCreativeID.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

uint64_t ReferralData.referringApplication.getter()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return v1;
}

uint64_t ReferralData.referringApplication.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 56);

  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
  return result;
}

uint64_t ReferralData.referringInboundUrl.getter()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);

  return v1;
}

uint64_t ReferralData.referringInboundUrl.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 72);

  *(v2 + 64) = a1;
  *(v2 + 72) = a2;
  return result;
}

unint64_t sub_220246D1C()
{
  v1 = 0xD000000000000015;
  v2 = *v0;
  v3 = 0xD000000000000014;
  if (v2 != 3)
  {
    v3 = 0xD000000000000013;
  }

  if (v2 == 2)
  {
    v3 = 0xD000000000000015;
  }

  if (*v0)
  {
    v1 = 0xD000000000000017;
  }

  if (*v0 <= 1u)
  {
    result = v1;
  }

  else
  {
    result = v3;
  }

  *v0;
  return result;
}

uint64_t sub_220246DA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_220247790(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_220246DDC(uint64_t a1)
{
  v2 = sub_220247064();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_220246E18(uint64_t a1)
{
  v2 = sub_220247064();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ReferralData.encode(to:)(void *a1)
{
  sub_22024746C(0, &qword_281261CD0, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  v8 = v18 - v7;
  v9 = *v1;
  v10 = v1[1];
  v11 = v1[2];
  v18[7] = v1[3];
  v18[8] = v11;
  v12 = v1[4];
  v18[5] = v1[5];
  v18[6] = v12;
  v13 = v1[6];
  v18[3] = v1[7];
  v18[4] = v13;
  v14 = v1[8];
  v18[1] = v1[9];
  v18[2] = v14;
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220247064();
  sub_220370168();
  v23 = 0;
  v16 = v18[9];
  sub_22036FF68();
  if (!v16)
  {
    v22 = 1;
    sub_22036FF68();
    v21 = 2;
    sub_22036FF68();
    v20 = 3;
    sub_22036FFB8();
    v19 = 4;
    sub_22036FFB8();
  }

  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_220247064()
{
  result = qword_281265D38;
  if (!qword_281265D38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281265D38);
  }

  return result;
}

uint64_t ReferralData.init(from:)@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_22024746C(0, &qword_27CF262C8, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = &v33 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220247064();
  sub_220370148();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    LOBYTE(v45[0]) = 0;
    v12 = sub_22036FE98();
    v14 = v13;
    v15 = v12;
    LOBYTE(v45[0]) = 1;
    v16 = sub_22036FE98();
    v18 = v17;
    v37 = v16;
    v38 = v15;
    LOBYTE(v45[0]) = 2;
    v19 = sub_22036FE98();
    v21 = v20;
    v36 = v19;
    LOBYTE(v45[0]) = 3;
    v35 = sub_22036FEE8();
    v39 = v22;
    v46 = 4;
    v23 = sub_22036FEE8();
    v24 = *(v7 + 8);
    v34 = v23;
    v25 = v10;
    v27 = v26;
    v24(v25, v6);
    *&v40 = v38;
    *(&v40 + 1) = v14;
    v28 = v37;
    *&v41 = v37;
    *(&v41 + 1) = v18;
    *&v42 = v36;
    *(&v42 + 1) = v21;
    v29 = v39;
    *&v43 = v35;
    *(&v43 + 1) = v39;
    *&v44 = v34;
    *(&v44 + 1) = v27;
    v30 = v43;
    a2[2] = v42;
    a2[3] = v30;
    a2[4] = v44;
    v31 = v41;
    *a2 = v40;
    a2[1] = v31;
    sub_220235490(&v40, v45);
    __swift_destroy_boxed_opaque_existential_1(a1);
    v45[0] = v38;
    v45[1] = v14;
    v45[2] = v28;
    v45[3] = v18;
    v45[4] = v36;
    v45[5] = v21;
    v45[6] = v35;
    v45[7] = v29;
    v45[8] = v34;
    v45[9] = v27;
    return sub_22023538C(v45);
  }
}

void sub_22024746C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_220247064();
    v7 = a3(a1, &type metadata for ReferralData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_2202474D4()
{
  result = qword_281265D10;
  if (!qword_281265D10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281265D10);
  }

  return result;
}

unint64_t sub_22024752C()
{
  result = qword_281265D18;
  if (!qword_281265D18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281265D18);
  }

  return result;
}

__n128 __swift_memcpy80_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = result;
  *(a1 + 32) = v3;
  return result;
}

uint64_t sub_2202475CC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
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

uint64_t sub_220247614(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_22024768C()
{
  result = qword_27CF262D0;
  if (!qword_27CF262D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF262D0);
  }

  return result;
}

unint64_t sub_2202476E4()
{
  result = qword_281265D28;
  if (!qword_281265D28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281265D28);
  }

  return result;
}

unint64_t sub_22024773C()
{
  result = qword_281265D30;
  if (!qword_281265D30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281265D30);
  }

  return result;
}

uint64_t sub_220247790(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000015 && 0x80000002203903D0 == a2 || (sub_220370048() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000017 && 0x80000002203903F0 == a2 || (sub_220370048() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000015 && 0x8000000220390410 == a2 || (sub_220370048() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000014 && 0x8000000220390430 == a2 || (sub_220370048() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000013 && 0x8000000220390450 == a2)
  {

    return 4;
  }

  else
  {
    v5 = sub_220370048();

    if (v5)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_220247A10()
{
  v0 = sub_22036F118();
  __swift_allocate_value_buffer(v0, qword_27CF26308);
  __swift_project_value_buffer(v0, qword_27CF26308);
  return sub_22036F108();
}

uint64_t SearchResultSelectEvent.eventData.setter(uint64_t a1)
{
  sub_220230578();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t SearchResultSelectEvent.searchData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SearchResultSelectEvent(0) + 20);
  sub_2202480B8(0, &qword_281266878, sub_220247C08, sub_220247C5C);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

unint64_t sub_220247C08()
{
  result = qword_281266110;
  if (!qword_281266110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281266110);
  }

  return result;
}

unint64_t sub_220247C5C()
{
  result = qword_281266118;
  if (!qword_281266118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281266118);
  }

  return result;
}

uint64_t SearchResultSelectEvent.searchData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SearchResultSelectEvent(0) + 20);
  sub_2202480B8(0, &qword_281266878, sub_220247C08, sub_220247C5C);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t SearchResultSelectEvent.searchSelectionData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SearchResultSelectEvent(0) + 24);
  sub_2202480B8(0, &qword_27CF26320, sub_220247E60, sub_220247EB4);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

unint64_t sub_220247E60()
{
  result = qword_27CF26328;
  if (!qword_27CF26328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF26328);
  }

  return result;
}

unint64_t sub_220247EB4()
{
  result = qword_27CF26330;
  if (!qword_27CF26330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF26330);
  }

  return result;
}

uint64_t SearchResultSelectEvent.searchSelectionData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SearchResultSelectEvent(0) + 24);
  sub_2202480B8(0, &qword_27CF26320, sub_220247E60, sub_220247EB4);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t SearchResultSelectEvent.searchResultsData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SearchResultSelectEvent(0) + 28);
  sub_2202480B8(0, &qword_2812667B0, sub_220248134, sub_220248188);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

void sub_2202480B8(uint64_t a1, unint64_t *a2, void (*a3)(void), void (*a4)(void))
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

unint64_t sub_220248134()
{
  result = qword_281264D68;
  if (!qword_281264D68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281264D68);
  }

  return result;
}

unint64_t sub_220248188()
{
  result = qword_281264D70;
  if (!qword_281264D70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281264D70);
  }

  return result;
}

uint64_t SearchResultSelectEvent.searchResultsData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SearchResultSelectEvent(0) + 28);
  sub_2202480B8(0, &qword_2812667B0, sub_220248134, sub_220248188);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t SearchResultSelectEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CEACF8];
  sub_220230578();
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for SearchResultSelectEvent(0);
  v5 = v4[5];
  sub_2202480B8(0, &qword_281266878, sub_220247C08, sub_220247C5C);
  (*(*(v6 - 8) + 104))(a1 + v5, v2, v6);
  v7 = v4[6];
  sub_2202480B8(0, &qword_27CF26320, sub_220247E60, sub_220247EB4);
  (*(*(v8 - 8) + 104))(a1 + v7, v2, v8);
  v9 = v4[7];
  sub_2202480B8(0, &qword_2812667B0, sub_220248134, sub_220248188);
  v11 = *(*(v10 - 8) + 104);

  return v11(a1 + v9, v2, v10);
}

uint64_t SearchResultSelectEvent.Model.searchData.getter@<X0>(void *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for SearchResultSelectEvent.Model(0) + 20));
  v4 = v3[1];
  *a1 = *v3;
  a1[1] = v4;
}

uint64_t SearchResultSelectEvent.Model.searchSelectionData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for SearchResultSelectEvent.Model(0) + 24));
  v5 = *v3;
  v4 = v3[1];
  LOBYTE(v3) = *(v3 + 16);
  *a1 = v5;
  *(a1 + 8) = v4;
  *(a1 + 16) = v3;
}

uint64_t SearchResultSelectEvent.Model.searchResultsData.getter@<X0>(void *a1@<X8>)
{
  *a1 = *(v1 + *(type metadata accessor for SearchResultSelectEvent.Model(0) + 28));
}

int *SearchResultSelectEvent.Model.init(eventData:searchData:searchSelectionData:searchResultsData:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X8>)
{
  v7 = *a2;
  v8 = a2[1];
  v9 = *a3;
  v10 = a3[1];
  v11 = *(a3 + 16);
  v12 = *a4;
  v13 = sub_22036F388();
  (*(*(v13 - 8) + 32))(a5, a1, v13);
  result = type metadata accessor for SearchResultSelectEvent.Model(0);
  v15 = (a5 + result[5]);
  *v15 = v7;
  v15[1] = v8;
  v16 = a5 + result[6];
  *v16 = v9;
  *(v16 + 8) = v10;
  *(v16 + 16) = v11;
  *(a5 + result[7]) = v12;
  return result;
}

unint64_t sub_220248690()
{
  v1 = 0x746144746E657665;
  v2 = 0xD000000000000013;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000011;
  }

  if (*v0)
  {
    v1 = 0x6144686372616573;
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

uint64_t sub_220248720@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_220249658(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_220248748(uint64_t a1)
{
  v2 = sub_220248A6C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_220248784(uint64_t a1)
{
  v2 = sub_220248A6C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SearchResultSelectEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  sub_220248F28(0, &qword_27CF26338, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = &v19 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220248A6C();
  sub_220370168();
  LOBYTE(v20) = 0;
  sub_22036F388();
  sub_2202366E0(&qword_2812666A8);
  sub_22036FFF8();
  if (!v2)
  {
    v12 = type metadata accessor for SearchResultSelectEvent.Model(0);
    v13 = (v3 + v12[5]);
    v14 = v13[1];
    v20 = *v13;
    v21 = v14;
    v23 = 1;
    sub_220247C5C();

    sub_22036FFF8();

    v15 = (v3 + v12[6]);
    v16 = *v15;
    v17 = v15[1];
    LOBYTE(v15) = *(v15 + 16);
    v20 = v16;
    v21 = v17;
    v22 = v15;
    v23 = 2;
    sub_220247EB4();

    sub_22036FFF8();

    v20 = *(v3 + v12[7]);
    v23 = 3;
    sub_220248188();

    sub_22036FFF8();
  }

  return (*(v7 + 8))(v10, v6);
}

unint64_t sub_220248A6C()
{
  result = qword_27CF26340;
  if (!qword_27CF26340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF26340);
  }

  return result;
}

uint64_t SearchResultSelectEvent.Model.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a2;
  v4 = sub_22036F388();
  v26 = *(v4 - 8);
  v5 = *(v26 + 64);
  MEMORY[0x28223BE20](v4);
  v27 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_220248F28(0, &qword_27CF26348, MEMORY[0x277D844C8]);
  v28 = *(v7 - 8);
  v29 = v7;
  v8 = *(v28 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v24 - v9;
  v11 = type metadata accessor for SearchResultSelectEvent.Model(0);
  v12 = *(*(v11 - 1) + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220248A6C();
  v30 = v10;
  sub_220370148();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v16 = v26;
  LOBYTE(v31) = 0;
  sub_2202366E0(&qword_2812666A0);
  v17 = v27;
  sub_22036FF28();
  (*(v16 + 32))(v14, v17, v4);
  v34 = 1;
  sub_220247C08();
  sub_22036FF28();
  v18 = v32;
  v19 = &v14[v11[5]];
  *v19 = v31;
  *(v19 + 1) = v18;
  v34 = 2;
  sub_220247E60();
  sub_22036FF28();
  v20 = v32;
  v21 = v33;
  v22 = &v14[v11[6]];
  *v22 = v31;
  *(v22 + 1) = v20;
  v22[16] = v21;
  v34 = 3;
  sub_220248134();
  sub_22036FF28();
  (*(v28 + 8))(v30, v29);
  *&v14[v11[7]] = v31;
  sub_220248F8C(v14, v25);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_220248FF0(v14);
}

void sub_220248F28(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_220248A6C();
    v7 = a3(a1, &type metadata for SearchResultSelectEvent.Model.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_220248F8C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SearchResultSelectEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_220248FF0(uint64_t a1)
{
  v2 = type metadata accessor for SearchResultSelectEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_220249124@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *MEMORY[0x277CEACF8];
  sub_220230578();
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = a1[5];
  sub_2202480B8(0, &qword_281266878, sub_220247C08, sub_220247C5C);
  (*(*(v7 - 8) + 104))(a2 + v6, v4, v7);
  v8 = a1[6];
  sub_2202480B8(0, &qword_27CF26320, sub_220247E60, sub_220247EB4);
  (*(*(v9 - 8) + 104))(a2 + v8, v4, v9);
  v10 = a1[7];
  sub_2202480B8(0, &qword_2812667B0, sub_220248134, sub_220248188);
  v12 = *(*(v11 - 8) + 104);

  return v12(a2 + v10, v4, v11);
}

void sub_220249334()
{
  sub_220230578();
  if (v0 <= 0x3F)
  {
    sub_2202480B8(319, &qword_281266878, sub_220247C08, sub_220247C5C);
    if (v1 <= 0x3F)
    {
      sub_2202480B8(319, &qword_27CF26320, sub_220247E60, sub_220247EB4);
      if (v2 <= 0x3F)
      {
        sub_2202480B8(319, &qword_2812667B0, sub_220248134, sub_220248188);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_2202494B8()
{
  result = sub_22036F388();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_220249554()
{
  result = qword_27CF26370;
  if (!qword_27CF26370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF26370);
  }

  return result;
}

unint64_t sub_2202495AC()
{
  result = qword_27CF26378;
  if (!qword_27CF26378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF26378);
  }

  return result;
}

unint64_t sub_220249604()
{
  result = qword_27CF26380;
  if (!qword_27CF26380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF26380);
  }

  return result;
}

uint64_t sub_220249658(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746144746E657665 && a2 == 0xE900000000000061;
  if (v4 || (sub_220370048() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6144686372616573 && a2 == 0xEA00000000006174 || (sub_220370048() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000013 && 0x8000000220390470 == a2 || (sub_220370048() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000220390490 == a2)
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

StocksAnalytics::ResultType_optional __swiftcall ResultType.init(rawValue:)(Swift::String rawValue)
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

uint64_t ResultType.rawValue.getter()
{
  v1 = 0x73736563637573;
  if (*v0 != 1)
  {
    v1 = 1818845542;
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

uint64_t sub_22024988C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE700000000000000;
  v4 = 0xE700000000000000;
  v5 = 0x73736563637573;
  if (v2 != 1)
  {
    v5 = 1818845542;
    v4 = 0xE400000000000000;
  }

  if (*a1)
  {
    v6 = v5;
  }

  else
  {
    v6 = 0x6E776F6E6B6E75;
  }

  if (v2)
  {
    v7 = v4;
  }

  else
  {
    v7 = 0xE700000000000000;
  }

  v8 = 0x73736563637573;
  if (*a2 != 1)
  {
    v8 = 1818845542;
    v3 = 0xE400000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x6E776F6E6B6E75;
  }

  if (*a2)
  {
    v10 = v3;
  }

  else
  {
    v10 = 0xE700000000000000;
  }

  if (v6 == v9 && v7 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_220370048();
  }

  return v11 & 1;
}

unint64_t sub_220249980()
{
  result = qword_27CF26388;
  if (!qword_27CF26388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF26388);
  }

  return result;
}

uint64_t sub_2202499D4()
{
  v1 = *v0;
  sub_220370108();
  sub_22036FB08();

  return sub_220370128();
}

uint64_t sub_220249A70()
{
  *v0;
  *v0;
  sub_22036FB08();
}

uint64_t sub_220249AF8()
{
  v1 = *v0;
  sub_220370108();
  sub_22036FB08();

  return sub_220370128();
}

void sub_220249B9C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0xE700000000000000;
  v5 = 0x73736563637573;
  if (v2 != 1)
  {
    v5 = 1818845542;
    v4 = 0xE400000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x6E776F6E6B6E75;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

unint64_t sub_220249CB4()
{
  result = qword_27CF26390;
  if (!qword_27CF26390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF26390);
  }

  return result;
}

uint64_t sub_220249DD0()
{
  v0 = sub_22036F118();
  __swift_allocate_value_buffer(v0, qword_27CF263C8);
  __swift_project_value_buffer(v0, qword_27CF263C8);
  return sub_22036F108();
}

uint64_t ViewCalendarEvent.eventData.setter(uint64_t a1)
{
  sub_220230578();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t ViewCalendarEvent.feedData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ViewCalendarEvent(0) + 20);
  sub_22024A328(0, &qword_281266730, sub_2201FBCC4, sub_2201FBD1C);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ViewCalendarEvent.feedData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ViewCalendarEvent(0) + 20);
  sub_22024A328(0, &qword_281266730, sub_2201FBCC4, sub_2201FBD1C);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ViewCalendarEvent.viewData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ViewCalendarEvent(0) + 24);
  sub_22024A328(0, &qword_281266728, sub_2202020B8, sub_220202110);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ViewCalendarEvent.viewData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ViewCalendarEvent(0) + 24);
  sub_22024A328(0, &qword_281266728, sub_2202020B8, sub_220202110);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ViewCalendarEvent.symbolData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ViewCalendarEvent(0) + 28);
  sub_22024A328(0, &qword_281266870, sub_220230BFC, sub_220230C50);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

void sub_22024A328(uint64_t a1, unint64_t *a2, void (*a3)(void), void (*a4)(void))
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

uint64_t ViewCalendarEvent.symbolData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ViewCalendarEvent(0) + 28);
  sub_22024A328(0, &qword_281266870, sub_220230BFC, sub_220230C50);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ViewCalendarEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CEACF8];
  sub_220230578();
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for ViewCalendarEvent(0);
  v5 = v4[5];
  sub_22024A328(0, &qword_281266730, sub_2201FBCC4, sub_2201FBD1C);
  (*(*(v6 - 8) + 104))(a1 + v5, v2, v6);
  v7 = v4[6];
  sub_22024A328(0, &qword_281266728, sub_2202020B8, sub_220202110);
  (*(*(v8 - 8) + 104))(a1 + v7, v2, v8);
  v9 = v4[7];
  sub_22024A328(0, &qword_281266870, sub_220230BFC, sub_220230C50);
  v11 = *(*(v10 - 8) + 104);

  return v11(a1 + v9, v2, v10);
}

uint64_t ViewCalendarEvent.Model.feedData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for ViewCalendarEvent.Model(0) + 20);
  v5 = *(v3 + 8);
  v4 = *(v3 + 16);
  *a1 = *v3;
  *(a1 + 8) = v5;
  *(a1 + 16) = v4;
}

uint64_t ViewCalendarEvent.Model.viewData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for ViewCalendarEvent.Model(0) + 24));
  v5 = *v3;
  v4 = v3[1];
  LOWORD(v3) = *(v3 + 8);
  *a1 = v5;
  *(a1 + 8) = v4;
  *(a1 + 16) = v3;
}

uint64_t ViewCalendarEvent.Model.symbolData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for ViewCalendarEvent.Model(0) + 28);
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

int *ViewCalendarEvent.Model.init(eventData:feedData:viewData:symbolData:)@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X8>)
{
  v7 = *a2;
  v8 = *(a2 + 1);
  v9 = *(a2 + 2);
  v10 = *a3;
  v11 = a3[1];
  v12 = *(a3 + 8);
  v13 = *a4;
  v14 = a4[1];
  v22 = *(a4 + 16);
  v20 = a4[4];
  v21 = a4[3];
  v15 = sub_22036F388();
  (*(*(v15 - 8) + 32))(a5, a1, v15);
  result = type metadata accessor for ViewCalendarEvent.Model(0);
  v17 = a5 + result[5];
  *v17 = v7;
  *(v17 + 8) = v8;
  *(v17 + 16) = v9;
  v18 = a5 + result[6];
  *v18 = v10;
  *(v18 + 8) = v11;
  *(v18 + 16) = v12;
  v19 = a5 + result[7];
  *v19 = v13;
  *(v19 + 8) = v14;
  *(v19 + 16) = v22;
  *(v19 + 24) = v21;
  *(v19 + 32) = v20;
  return result;
}

uint64_t sub_22024A8B8()
{
  v1 = 0x746144746E657665;
  v2 = 0x6174614477656976;
  if (*v0 != 2)
  {
    v2 = 0x61446C6F626D7973;
  }

  if (*v0)
  {
    v1 = 0x6174614464656566;
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

uint64_t sub_22024A93C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22024B8C8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22024A964(uint64_t a1)
{
  v2 = sub_22024ACC0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22024A9A0(uint64_t a1)
{
  v2 = sub_22024ACC0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ViewCalendarEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  sub_22024B198(0, &qword_27CF263E0, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = &v25 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22024ACC0();
  sub_220370168();
  LOBYTE(v25) = 0;
  sub_22036F388();
  sub_2202366E0(&qword_2812666A8);
  sub_22036FFF8();
  if (!v2)
  {
    v12 = type metadata accessor for ViewCalendarEvent.Model(0);
    v13 = v3 + v12[5];
    v14 = *(v13 + 8);
    v15 = *(v13 + 16);
    LOBYTE(v25) = *v13;
    v26 = v14;
    v27 = v15;
    v30 = 1;
    sub_2201FBD1C();

    sub_22036FFF8();

    v16 = (v3 + v12[6]);
    v17 = *v16;
    v18 = v16[1];
    LOWORD(v16) = *(v16 + 8);
    v25 = v17;
    v26 = v18;
    LOWORD(v27) = v16;
    v30 = 2;
    sub_220202110();

    sub_22036FFF8();

    v19 = (v3 + v12[7]);
    v20 = v19[1];
    v21 = *(v19 + 16);
    v22 = v19[3];
    v23 = v19[4];
    v25 = *v19;
    v26 = v20;
    LOBYTE(v27) = v21;
    v28 = v22;
    v29 = v23;
    v30 = 3;
    sub_220230C50();

    sub_22036FFF8();
  }

  return (*(v7 + 8))(v10, v6);
}

unint64_t sub_22024ACC0()
{
  result = qword_27CF263E8;
  if (!qword_27CF263E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF263E8);
  }

  return result;
}

uint64_t ViewCalendarEvent.Model.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v31 = a2;
  v4 = sub_22036F388();
  v32 = *(v4 - 8);
  v5 = *(v32 + 64);
  MEMORY[0x28223BE20](v4);
  v33 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22024B198(0, &qword_27CF263F0, MEMORY[0x277D844C8]);
  v34 = *(v7 - 8);
  v35 = v7;
  v8 = *(v34 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v30 - v9;
  v11 = type metadata accessor for ViewCalendarEvent.Model(0);
  v12 = *(*(v11 - 1) + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22024ACC0();
  v36 = v10;
  sub_220370148();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v16 = v32;
  LOBYTE(v37) = 0;
  sub_2202366E0(&qword_2812666A0);
  v17 = v33;
  sub_22036FF28();
  (*(v16 + 32))(v14, v17, v4);
  v42 = 1;
  sub_2201FBCC4();
  sub_22036FF28();
  v18 = v38;
  v19 = v39;
  v20 = &v14[v11[5]];
  *v20 = v37;
  *(v20 + 1) = v18;
  *(v20 + 2) = v19;
  v42 = 2;
  sub_2202020B8();
  sub_22036FF28();
  v21 = v38;
  v22 = v39;
  v23 = &v14[v11[6]];
  *v23 = v37;
  *(v23 + 1) = v21;
  *(v23 + 8) = v22;
  v42 = 3;
  sub_220230BFC();
  sub_22036FF28();
  (*(v34 + 8))(v36, v35);
  v24 = v38;
  v25 = v39;
  v26 = v40;
  v27 = v41;
  v28 = &v14[v11[7]];
  *v28 = v37;
  *(v28 + 1) = v24;
  v28[16] = v25;
  *(v28 + 3) = v26;
  *(v28 + 4) = v27;
  sub_22024B1FC(v14, v31);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_22024B260(v14);
}

void sub_22024B198(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_22024ACC0();
    v7 = a3(a1, &type metadata for ViewCalendarEvent.Model.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_22024B1FC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ViewCalendarEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22024B260(uint64_t a1)
{
  v2 = type metadata accessor for ViewCalendarEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22024B394@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *MEMORY[0x277CEACF8];
  sub_220230578();
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = a1[5];
  sub_22024A328(0, &qword_281266730, sub_2201FBCC4, sub_2201FBD1C);
  (*(*(v7 - 8) + 104))(a2 + v6, v4, v7);
  v8 = a1[6];
  sub_22024A328(0, &qword_281266728, sub_2202020B8, sub_220202110);
  (*(*(v9 - 8) + 104))(a2 + v8, v4, v9);
  v10 = a1[7];
  sub_22024A328(0, &qword_281266870, sub_220230BFC, sub_220230C50);
  v12 = *(*(v11 - 8) + 104);

  return v12(a2 + v10, v4, v11);
}

void sub_22024B5A4()
{
  sub_220230578();
  if (v0 <= 0x3F)
  {
    sub_22024A328(319, &qword_281266730, sub_2201FBCC4, sub_2201FBD1C);
    if (v1 <= 0x3F)
    {
      sub_22024A328(319, &qword_281266728, sub_2202020B8, sub_220202110);
      if (v2 <= 0x3F)
      {
        sub_22024A328(319, &qword_281266870, sub_220230BFC, sub_220230C50);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_22024B728()
{
  result = sub_22036F388();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_22024B7C4()
{
  result = qword_27CF26418;
  if (!qword_27CF26418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF26418);
  }

  return result;
}

unint64_t sub_22024B81C()
{
  result = qword_27CF26420;
  if (!qword_27CF26420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF26420);
  }

  return result;
}

unint64_t sub_22024B874()
{
  result = qword_27CF26428;
  if (!qword_27CF26428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF26428);
  }

  return result;
}

uint64_t sub_22024B8C8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746144746E657665 && a2 == 0xE900000000000061;
  if (v4 || (sub_220370048() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6174614464656566 && a2 == 0xE800000000000000 || (sub_220370048() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6174614477656976 && a2 == 0xE800000000000000 || (sub_220370048() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x61446C6F626D7973 && a2 == 0xEA00000000006174)
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

uint64_t AudioEngagementData.engagementID.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  return v1;
}

uint64_t AudioEngagementData.engagementID.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 32);

  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return result;
}

uint64_t AudioEngagementData.init(timePlayed:deltaTimePlayed:userAction:position:engagementID:playMethod:listeningSource:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char *a3@<X2>, int a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char *a7@<X6>, char *a8@<X7>, uint64_t a9@<X8>)
{
  v9 = *a3;
  v10 = *a7;
  v11 = *a8;
  *a9 = result;
  *(a9 + 8) = a2;
  *(a9 + 16) = v9;
  *(a9 + 20) = a4;
  *(a9 + 24) = a5;
  *(a9 + 32) = a6;
  *(a9 + 40) = v10;
  *(a9 + 41) = v11;
  return result;
}

uint64_t sub_22024BC2C()
{
  v1 = *v0;
  v2 = 0x79616C50656D6974;
  v3 = 0x6874654D79616C70;
  if (v1 != 5)
  {
    v3 = 0x6E696E657473696CLL;
  }

  v4 = 0x6E6F697469736F70;
  if (v1 != 3)
  {
    v4 = 0x656D656761676E65;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x6D695461746C6564;
  if (v1 != 1)
  {
    v5 = 0x6974634172657375;
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

uint64_t sub_22024BD2C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22024CA00(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22024BD60(uint64_t a1)
{
  v2 = sub_22024C088();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22024BD9C(uint64_t a1)
{
  v2 = sub_22024C088();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t AudioEngagementData.encode(to:)(void *a1)
{
  sub_22024C558(0, &qword_27CF26430, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  v8 = &v17 - v7;
  v9 = *v1;
  v23 = v1[1];
  v10 = *(v1 + 16);
  v21 = *(v1 + 5);
  v22 = v10;
  v11 = v1[3];
  v19 = v1[4];
  v20 = v11;
  v18 = *(v1 + 40);
  v12 = *(v1 + 41);
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22024C088();
  sub_220370168();
  v34 = 0;
  v14 = v24;
  sub_220370018();
  if (!v14)
  {
    v15 = v22;
    LODWORD(v24) = v12;
    v33 = 1;
    sub_220370018();
    v32 = v15;
    v31 = 2;
    sub_22024C0DC();
    sub_22036FFF8();
    v30 = 3;
    sub_220370008();
    v29 = 4;
    sub_22036FFB8();
    v28 = v18;
    v27 = 5;
    sub_22024C130();
    sub_22036FF88();
    v26 = v24;
    v25 = 6;
    sub_22024C184();
    sub_22036FFF8();
  }

  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_22024C088()
{
  result = qword_27CF26438;
  if (!qword_27CF26438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF26438);
  }

  return result;
}

unint64_t sub_22024C0DC()
{
  result = qword_27CF26440;
  if (!qword_27CF26440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF26440);
  }

  return result;
}

unint64_t sub_22024C130()
{
  result = qword_27CF26448;
  if (!qword_27CF26448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF26448);
  }

  return result;
}

unint64_t sub_22024C184()
{
  result = qword_27CF26450;
  if (!qword_27CF26450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF26450);
  }

  return result;
}

uint64_t AudioEngagementData.init(from:)@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_22024C558(0, &qword_27CF26458, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = &v25 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22024C088();
  sub_220370148();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v35[0]) = 0;
  v12 = sub_22036FF48();
  LOBYTE(v35[0]) = 1;
  v32 = sub_22036FF48();
  LOBYTE(v33) = 2;
  sub_22024C5BC();
  sub_22036FF28();
  v13 = LOBYTE(v35[0]);
  LOBYTE(v35[0]) = 3;
  v14 = sub_22036FF38();
  v30 = v13;
  v31 = v14;
  LOBYTE(v35[0]) = 4;
  v28 = sub_22036FEE8();
  v29 = v15;
  LOBYTE(v33) = 5;
  sub_22024C610();
  sub_22036FEB8();
  v16 = LOBYTE(v35[0]);
  v44 = 6;
  sub_22024C664();
  sub_22036FF28();
  (*(v7 + 8))(v10, v6);
  v26 = v16;
  v27 = v45;
  v17 = v16;
  v18 = v32;
  *&v33 = v12;
  *(&v33 + 1) = v32;
  v19 = v30;
  v20 = v31;
  v34[0] = v30;
  *&v34[1] = v46;
  v34[3] = v47;
  *&v34[4] = v31;
  v21 = v28;
  v22 = v29;
  *&v34[8] = v28;
  *&v34[16] = v29;
  v34[24] = v17;
  v34[25] = v45;
  v23 = *v34;
  *a2 = v33;
  a2[1] = v23;
  *(a2 + 26) = *&v34[10];
  sub_2202385EC(&v33, v35);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v35[0] = v12;
  v35[1] = v18;
  v36 = v19;
  v37 = v46;
  v38 = v47;
  v39 = v20;
  v40 = v21;
  v41 = v22;
  v42 = v26;
  v43 = v27;
  return sub_22023921C(v35);
}

void sub_22024C558(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_22024C088();
    v7 = a3(a1, &type metadata for AudioEngagementData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_22024C5BC()
{
  result = qword_27CF26460;
  if (!qword_27CF26460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF26460);
  }

  return result;
}

unint64_t sub_22024C610()
{
  result = qword_27CF26468;
  if (!qword_27CF26468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF26468);
  }

  return result;
}

unint64_t sub_22024C664()
{
  result = qword_27CF26470;
  if (!qword_27CF26470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF26470);
  }

  return result;
}

__n128 __swift_memcpy42_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 26) = *(a2 + 26);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_22024C704(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 42))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_22024C74C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 42) = 1;
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
      *(result + 32) = (a2 - 1);
      return result;
    }

    *(result + 42) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DeviceOrientation(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for DeviceOrientation(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_22024C8FC()
{
  result = qword_27CF26478;
  if (!qword_27CF26478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF26478);
  }

  return result;
}

unint64_t sub_22024C954()
{
  result = qword_27CF26480;
  if (!qword_27CF26480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF26480);
  }

  return result;
}

unint64_t sub_22024C9AC()
{
  result = qword_27CF26488;
  if (!qword_27CF26488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF26488);
  }

  return result;
}

uint64_t sub_22024CA00(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x79616C50656D6974 && a2 == 0xEA00000000006465;
  if (v4 || (sub_220370048() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6D695461746C6564 && a2 == 0xEF646579616C5065 || (sub_220370048() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6974634172657375 && a2 == 0xEA00000000006E6FLL || (sub_220370048() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6E6F697469736F70 && a2 == 0xE800000000000000 || (sub_220370048() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x656D656761676E65 && a2 == 0xEC0000004449746ELL || (sub_220370048() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6874654D79616C70 && a2 == 0xEA0000000000646FLL || (sub_220370048() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6E696E657473696CLL && a2 == 0xEF656372756F5367)
  {

    return 6;
  }

  else
  {
    v6 = sub_220370048();

    if (v6)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

StocksAnalytics::AdEngagementType_optional __swiftcall AdEngagementType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_22036FE78();

  v5 = 8;
  if (v3 < 8)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t AdEngagementType.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x6E776F6E6B6E75;
  v3 = 0x696B536F65646976;
  if (v1 != 6)
  {
    v3 = 0x6974737265746E69;
  }

  v4 = 0x7365526F65646976;
  if (v1 != 4)
  {
    v4 = 0xD000000000000012;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0x616C506F65646976;
  if (v1 != 2)
  {
    v5 = 0x7561506F65646976;
  }

  if (*v0)
  {
    v2 = 0x615472656E6E6162;
  }

  if (*v0 > 1u)
  {
    v2 = v5;
  }

  if (*v0 <= 3u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_22024CDF4()
{
  result = qword_27CF26490;
  if (!qword_27CF26490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF26490);
  }

  return result;
}

unint64_t sub_22024CE70@<X0>(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x6E776F6E6B6E75;
  v5 = 0x696B536F65646976;
  v6 = 0xEF7061546C616974;
  if (v2 == 6)
  {
    v6 = 0xE900000000000070;
  }

  else
  {
    v5 = 0x6974737265746E69;
  }

  v7 = 0xEB00000000656D75;
  v8 = 0x7365526F65646976;
  result = 0xD000000000000012;
  if (v2 != 4)
  {
    v8 = 0xD000000000000012;
    v7 = 0x800000022038F5B0;
  }

  if (*v1 <= 5u)
  {
    v5 = v8;
    v6 = v7;
  }

  v10 = 0xE900000000000079;
  v11 = 0x616C506F65646976;
  if (v2 != 2)
  {
    v11 = 0x7561506F65646976;
    v10 = 0xEA00000000006573;
  }

  if (*v1)
  {
    v4 = 0x615472656E6E6162;
    v3 = 0xE900000000000070;
  }

  if (*v1 > 1u)
  {
    v4 = v11;
    v3 = v10;
  }

  if (*v1 <= 3u)
  {
    v12 = v4;
  }

  else
  {
    v12 = v5;
  }

  if (*v1 > 3u)
  {
    v3 = v6;
  }

  *a1 = v12;
  a1[1] = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for SymbolType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF9)
  {
    goto LABEL_17;
  }

  if (a2 + 7 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 7) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 7;
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

      return (*a1 | (v4 << 8)) - 7;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 7;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v8 = v6 - 8;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SymbolType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF9)
  {
    v4 = 0;
  }

  if (a2 > 0xF8)
  {
    v5 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
    *result = a2 + 7;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_22024D198()
{
  result = qword_27CF26498;
  if (!qword_27CF26498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF26498);
  }

  return result;
}

uint64_t AdSizeData.init(width:height:)@<X0>(uint64_t result@<X0>, int a2@<W1>, _DWORD *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t sub_22024D274()
{
  if (*v0)
  {
    result = 0x746867696568;
  }

  else
  {
    result = 0x6874646977;
  }

  *v0;
  return result;
}

uint64_t sub_22024D2A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6874646977 && a2 == 0xE500000000000000;
  if (v6 || (sub_220370048() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x746867696568 && a2 == 0xE600000000000000)
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

uint64_t sub_22024D388(uint64_t a1)
{
  v2 = sub_22024D574();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22024D3C4(uint64_t a1)
{
  v2 = sub_22024D574();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t AdSizeData.encode(to:)(void *a1)
{
  sub_22024D778(0, &qword_281261D38, MEMORY[0x277D84538]);
  v5 = v4;
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  v9 = &v13 - v8;
  v10 = *v1;
  v14 = v1[1];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22024D574();
  sub_220370168();
  v16 = 0;
  sub_220370008();
  if (!v2)
  {
    v15 = 1;
    sub_220370008();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_22024D574()
{
  result = qword_2812661C8;
  if (!qword_2812661C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812661C8);
  }

  return result;
}

uint64_t AdSizeData.init(from:)@<X0>(uint64_t *a1@<X0>, _DWORD *a2@<X8>)
{
  sub_22024D778(0, &qword_27CF264A0, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = &v15 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22024D574();
  sub_220370148();
  if (!v2)
  {
    v17 = 0;
    v12 = sub_22036FF38();
    v16 = 1;
    v14 = sub_22036FF38();
    (*(v7 + 8))(v10, v6);
    *a2 = v12;
    a2[1] = v14;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_22024D778(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_22024D574();
    v7 = a3(a1, &type metadata for AdSizeData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t getEnumTagSinglePayload for AdSizeData(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for AdSizeData(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 8) = v3;
  return result;
}

unint64_t sub_22024D88C()
{
  result = qword_27CF264A8;
  if (!qword_27CF264A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF264A8);
  }

  return result;
}

unint64_t sub_22024D8E4()
{
  result = qword_2812661B8;
  if (!qword_2812661B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812661B8);
  }

  return result;
}

unint64_t sub_22024D93C()
{
  result = qword_2812661C0;
  if (!qword_2812661C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812661C0);
  }

  return result;
}

StocksAnalytics::VideoAdLoadState_optional __swiftcall VideoAdLoadState.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_22036FE78();

  v5 = 6;
  if (v3 < 6)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t VideoAdLoadState.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x6E776F6E6B6E75;
  v3 = 0xD000000000000012;
  v4 = 0x54676E6964616F6CLL;
  if (v1 != 4)
  {
    v4 = 0x64656C696166;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x6572676F72506E69;
  if (v1 != 1)
  {
    v5 = 0x506F547964616572;
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

unint64_t sub_22024DAD0()
{
  result = qword_27CF264B0;
  if (!qword_27CF264B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF264B0);
  }

  return result;
}

uint64_t sub_22024DB2C()
{
  *v0;
  *v0;
  *v0;
  sub_22036FB08();
}

void sub_22024DC48(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x6E776F6E6B6E75;
  v5 = 0x800000022038F600;
  v6 = 0xD000000000000012;
  v7 = 0xEE0074756F656D69;
  v8 = 0x54676E6964616F6CLL;
  if (v2 != 4)
  {
    v8 = 0x64656C696166;
    v7 = 0xE600000000000000;
  }

  if (v2 != 3)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xEA00000000007373;
  v10 = 0x6572676F72506E69;
  if (v2 != 1)
  {
    v10 = 0x506F547964616572;
    v9 = 0xEB0000000079616CLL;
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

unint64_t sub_22024DDE0()
{
  result = qword_27CF264B8;
  if (!qword_27CF264B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF264B8);
  }

  return result;
}

uint64_t FeedData.feedID.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return v1;
}

uint64_t FeedData.feedID.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16);

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

uint64_t sub_22024DF0C()
{
  if (*v0)
  {
    result = 0x444964656566;
  }

  else
  {
    result = 0x6570795464656566;
  }

  *v0;
  return result;
}

uint64_t sub_22024DF44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6570795464656566 && a2 == 0xE800000000000000;
  if (v6 || (sub_220370048() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x444964656566 && a2 == 0xE600000000000000)
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

uint64_t sub_22024E01C(uint64_t a1)
{
  v2 = sub_22024E224();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22024E058(uint64_t a1)
{
  v2 = sub_22024E224();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t FeedData.encode(to:)(void *a1)
{
  sub_22024E49C(0, &qword_281261BA0, MEMORY[0x277D84538]);
  v5 = v4;
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  v9 = v14 - v8;
  v10 = *v1;
  v11 = *(v1 + 1);
  v14[0] = *(v1 + 2);
  v14[1] = v11;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22024E224();
  sub_220370168();
  v17 = v10;
  v16 = 0;
  sub_22024E278();
  sub_22036FFF8();
  if (!v2)
  {
    v15 = 1;
    sub_22036FFB8();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_22024E224()
{
  result = qword_2812621B8[0];
  if (!qword_2812621B8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2812621B8);
  }

  return result;
}

unint64_t sub_22024E278()
{
  result = qword_281262188;
  if (!qword_281262188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281262188);
  }

  return result;
}

uint64_t FeedData.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_22024E49C(0, &qword_281261D58, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = &v17 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22024E224();
  sub_220370148();
  if (!v2)
  {
    v19 = 0;
    sub_22024E500();
    sub_22036FF28();
    v12 = v20;
    v18 = 1;
    v14 = sub_22036FEE8();
    v16 = v15;
    (*(v7 + 8))(v10, v6);
    *a2 = v12;
    *(a2 + 8) = v14;
    *(a2 + 16) = v16;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_22024E49C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_22024E224();
    v7 = a3(a1, &type metadata for FeedData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_22024E500()
{
  result = qword_281262178;
  if (!qword_281262178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281262178);
  }

  return result;
}

uint64_t sub_22024E584(uint64_t a1, int a2)
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

uint64_t sub_22024E5CC(uint64_t result, int a2, int a3)
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

unint64_t sub_22024E630()
{
  result = qword_27CF264C0;
  if (!qword_27CF264C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF264C0);
  }

  return result;
}

unint64_t sub_22024E688()
{
  result = qword_2812621A8;
  if (!qword_2812621A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812621A8);
  }

  return result;
}

unint64_t sub_22024E6E0()
{
  result = qword_2812621B0;
  if (!qword_2812621B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812621B0);
  }

  return result;
}

unint64_t sub_22024E79C()
{
  result = qword_27CF264C8;
  if (!qword_27CF264C8)
  {
    type metadata accessor for TimestampJitterFactory();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF264C8);
  }

  return result;
}

uint64_t ANFComponentData.metadata.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t ANFComponentData.metadata.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

StocksAnalytics::ANFComponentData __swiftcall ANFComponentData.init(metadata:)(Swift::String_optional metadata)
{
  object = metadata.value._object;
  countAndFlagsBits = metadata.value._countAndFlagsBits;
  v4 = v1;

  *v4 = countAndFlagsBits;
  v4[1] = object;
  result.metadata.value._object = v6;
  result.metadata.value._countAndFlagsBits = v5;
  return result;
}

uint64_t sub_22024E8D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x617461646174656DLL && a2 == 0xE800000000000000)
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

uint64_t sub_22024E960(uint64_t a1)
{
  v2 = sub_22024EB24();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22024E99C(uint64_t a1)
{
  v2 = sub_22024EB24();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ANFComponentData.encode(to:)(void *a1)
{
  sub_22024ECFC(0, &qword_27CF264D0, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  v8 = &v13 - v7;
  v9 = *v1;
  v10 = v1[1];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22024EB24();
  sub_220370168();
  sub_22036FF68();
  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_22024EB24()
{
  result = qword_27CF264D8;
  if (!qword_27CF264D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF264D8);
  }

  return result;
}

uint64_t ANFComponentData.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_22024ECFC(0, &qword_27CF264E0, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = &v16 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22024EB24();
  sub_220370148();
  if (!v2)
  {
    v12 = sub_22036FE98();
    v14 = v13;
    (*(v7 + 8))(v10, v6);
    *a2 = v12;
    a2[1] = v14;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_22024ECFC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_22024EB24();
    v7 = a3(a1, &type metadata for ANFComponentData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_22024ED64()
{
  result = qword_2812653E8;
  if (!qword_2812653E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812653E8);
  }

  return result;
}

unint64_t sub_22024EDBC()
{
  result = qword_2812653F0;
  if (!qword_2812653F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812653F0);
  }

  return result;
}

uint64_t sub_22024EE28(void *a1)
{
  sub_22024ECFC(0, &qword_27CF264D0, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  v8 = &v13 - v7;
  v9 = *v1;
  v10 = v1[1];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22024EB24();
  sub_220370168();
  sub_22036FF68();
  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_22024EF74(uint64_t a1, unsigned int a2)
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

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_22024EFD0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
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

unint64_t sub_22024F044()
{
  result = qword_27CF264E8;
  if (!qword_27CF264E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF264E8);
  }

  return result;
}

unint64_t sub_22024F09C()
{
  result = qword_27CF264F0;
  if (!qword_27CF264F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF264F0);
  }

  return result;
}

unint64_t sub_22024F0F4()
{
  result = qword_27CF264F8;
  if (!qword_27CF264F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF264F8);
  }

  return result;
}

StocksAnalytics::AudioControlType_optional __swiftcall AudioControlType.init(rawValue:)(Swift::String rawValue)
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

uint64_t AudioControlType.rawValue.getter()
{
  v1 = 0x6574614C79616C70;
  if (*v0 != 1)
  {
    v1 = 0x7478654E79616C70;
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

uint64_t sub_22024F218(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x6574614C79616C70;
  v4 = 0xEF7377654E6E4972;
  if (v2 != 1)
  {
    v3 = 0x7478654E79616C70;
    v4 = 0xEE007377654E6E49;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x6E776F6E6B6E75;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xE700000000000000;
  }

  v7 = 0x6574614C79616C70;
  v8 = 0xEF7377654E6E4972;
  if (*a2 != 1)
  {
    v7 = 0x7478654E79616C70;
    v8 = 0xEE007377654E6E49;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0x6E776F6E6B6E75;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xE700000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_220370048();
  }

  return v11 & 1;
}

unint64_t sub_22024F350()
{
  result = qword_27CF26500;
  if (!qword_27CF26500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF26500);
  }

  return result;
}

uint64_t sub_22024F3A4()
{
  v1 = *v0;
  sub_220370108();
  sub_22036FB08();

  return sub_220370128();
}

uint64_t sub_22024F460()
{
  *v0;
  *v0;
  sub_22036FB08();
}

uint64_t sub_22024F508()
{
  v1 = *v0;
  sub_220370108();
  sub_22036FB08();

  return sub_220370128();
}

void sub_22024F5CC(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0xEF7377654E6E4972;
  v5 = 0x6574614C79616C70;
  if (v2 != 1)
  {
    v5 = 0x7478654E79616C70;
    v4 = 0xEE007377654E6E49;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x6E776F6E6B6E75;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

unint64_t sub_22024F704()
{
  result = qword_27CF26508;
  if (!qword_27CF26508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF26508);
  }

  return result;
}

StocksAnalytics::ICloudAccountState_optional __swiftcall ICloudAccountState.init(rawValue:)(Swift::String rawValue)
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

uint64_t ICloudAccountState.rawValue.getter()
{
  v1 = 0x6E49646567676F6CLL;
  if (*v0 != 1)
  {
    v1 = 0x754F646567676F6CLL;
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

uint64_t sub_22024F814(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE800000000000000;
  v4 = 0x6E49646567676F6CLL;
  if (v2 != 1)
  {
    v4 = 0x754F646567676F6CLL;
    v3 = 0xE900000000000074;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x6E776F6E6B6E75;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE700000000000000;
  }

  v7 = 0xE800000000000000;
  v8 = 0x6E49646567676F6CLL;
  if (*a2 != 1)
  {
    v8 = 0x754F646567676F6CLL;
    v7 = 0xE900000000000074;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x6E776F6E6B6E75;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE700000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_220370048();
  }

  return v11 & 1;
}

unint64_t sub_22024F924()
{
  result = qword_27CF26510;
  if (!qword_27CF26510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF26510);
  }

  return result;
}

uint64_t sub_22024F978()
{
  v1 = *v0;
  sub_220370108();
  sub_22036FB08();

  return sub_220370128();
}

uint64_t sub_22024FA20()
{
  *v0;
  *v0;
  sub_22036FB08();
}

uint64_t sub_22024FAB4()
{
  v1 = *v0;
  sub_220370108();
  sub_22036FB08();

  return sub_220370128();
}

uint64_t sub_22024FC9C()
{
  v0 = sub_22036F118();
  __swift_allocate_value_buffer(v0, qword_27CF26548);
  __swift_project_value_buffer(v0, qword_27CF26548);
  return sub_22036F108();
}

uint64_t ResetUserIDEvent.eventData.setter(uint64_t a1)
{
  sub_220230578();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t ResetUserIDEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CEACF8];
  sub_220230578();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t ResetUserIDEvent.Model.init(eventData:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_22036F388();
  v5 = *(*(v4 - 8) + 32);

  return v5(a2, a1, v4);
}

uint64_t sub_22024FEB8(uint64_t a1)
{
  v2 = sub_2202500A4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22024FEF4(uint64_t a1)
{
  v2 = sub_2202500A4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ResetUserIDEvent.Model.encode(to:)(void *a1)
{
  sub_220250390(0, &qword_27CF26560, MEMORY[0x277D84538]);
  v3 = v2;
  v4 = *(v2 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v2);
  v7 = &v10 - v6;
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2202500A4();
  sub_220370168();
  sub_22036F388();
  sub_2202366E0(&qword_2812666A8);
  sub_22036FFF8();
  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_2202500A4()
{
  result = qword_27CF26568;
  if (!qword_27CF26568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF26568);
  }

  return result;
}

uint64_t ResetUserIDEvent.Model.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v21 = a2;
  v4 = sub_22036F388();
  v23 = *(v4 - 8);
  v5 = *(v23 + 64);
  MEMORY[0x28223BE20](v4);
  v24 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_220250390(0, &qword_27CF26570, MEMORY[0x277D844C8]);
  v8 = v7;
  v22 = *(v7 - 8);
  v9 = *(v22 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v20 - v10;
  v12 = type metadata accessor for ResetUserIDEvent.Model(0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2202500A4();
  sub_220370148();
  if (!v2)
  {
    v17 = v22;
    v18 = v23;
    sub_2202366E0(&qword_2812666A0);
    sub_22036FF28();
    (*(v17 + 8))(v11, v8);
    (*(v18 + 32))(v15, v24, v4);
    sub_220250414(v15, v21);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_220250390(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_2202500A4();
    v7 = a3(a1, &type metadata for ResetUserIDEvent.Model.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_220250414(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ResetUserIDEvent.Model(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_220250490(void *a1)
{
  sub_220250390(0, &qword_27CF26560, MEMORY[0x277D84538]);
  v3 = v2;
  v4 = *(v2 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v2);
  v7 = &v10 - v6;
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2202500A4();
  sub_220370168();
  sub_22036F388();
  sub_2202366E0(&qword_2812666A8);
  sub_22036FFF8();
  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_220250730()
{
  result = qword_27CF26598;
  if (!qword_27CF26598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF26598);
  }

  return result;
}

unint64_t sub_220250788()
{
  result = qword_27CF265A0;
  if (!qword_27CF265A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF265A0);
  }

  return result;
}

unint64_t sub_2202507E0()
{
  result = qword_27CF265A8;
  if (!qword_27CF265A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF265A8);
  }

  return result;
}

uint64_t sub_2202508FC()
{
  v0 = sub_22036F118();
  __swift_allocate_value_buffer(v0, qword_27CF265E0);
  __swift_project_value_buffer(v0, qword_27CF265E0);
  return sub_22036F108();
}

uint64_t EOAGroupExposureEvent.eventData.setter(uint64_t a1)
{
  sub_220230578();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t EOAGroupExposureEvent.timedData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for EOAGroupExposureEvent(0) + 20);
  sub_220230718();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t EOAGroupExposureEvent.groupData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for EOAGroupExposureEvent(0) + 24);
  sub_22025134C(0, &qword_281266718, sub_220236C88, sub_220236CDC);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t EOAGroupExposureEvent.groupData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for EOAGroupExposureEvent(0) + 24);
  sub_22025134C(0, &qword_281266718, sub_220236C88, sub_220236CDC);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t EOAGroupExposureEvent.feedData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for EOAGroupExposureEvent(0) + 28);
  sub_22025134C(0, &qword_281266730, sub_2201FBCC4, sub_2201FBD1C);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t EOAGroupExposureEvent.feedData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for EOAGroupExposureEvent(0) + 28);
  sub_22025134C(0, &qword_281266730, sub_2201FBCC4, sub_2201FBD1C);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t EOAGroupExposureEvent.hostArticleViewData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for EOAGroupExposureEvent(0) + 32);
  sub_22025134C(0, &qword_2812667E8, sub_220250F44, sub_220250F98);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

unint64_t sub_220250F44()
{
  result = qword_2812656B0;
  if (!qword_2812656B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812656B0);
  }

  return result;
}

unint64_t sub_220250F98()
{
  result = qword_2812656B8;
  if (!qword_2812656B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812656B8);
  }

  return result;
}

uint64_t EOAGroupExposureEvent.hostArticleViewData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for EOAGroupExposureEvent(0) + 32);
  sub_22025134C(0, &qword_2812667E8, sub_220250F44, sub_220250F98);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t EOAGroupExposureEvent.hostArticleNewsArticleData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for EOAGroupExposureEvent(0) + 36);
  sub_22025134C(0, &qword_2812667E0, sub_22022ED48, sub_22022EDA0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t EOAGroupExposureEvent.hostArticleNewsArticleData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for EOAGroupExposureEvent(0) + 36);
  sub_22025134C(0, &qword_2812667E0, sub_22022ED48, sub_22022EDA0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t EOAGroupExposureEvent.hostArticleChannelData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for EOAGroupExposureEvent(0) + 40);
  sub_22025134C(0, &qword_281266858, sub_220236A30, sub_220236A84);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

void sub_22025134C(uint64_t a1, unint64_t *a2, void (*a3)(void), void (*a4)(void))
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

uint64_t EOAGroupExposureEvent.hostArticleChannelData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for EOAGroupExposureEvent(0) + 40);
  sub_22025134C(0, &qword_281266858, sub_220236A30, sub_220236A84);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t EOAGroupExposureEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CEACF8];
  sub_220230578();
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for EOAGroupExposureEvent(0);
  v5 = v4[5];
  sub_220230718();
  (*(*(v6 - 8) + 104))(a1 + v5, v2, v6);
  v7 = v4[6];
  sub_22025134C(0, &qword_281266718, sub_220236C88, sub_220236CDC);
  (*(*(v8 - 8) + 104))(a1 + v7, v2, v8);
  v9 = v4[7];
  sub_22025134C(0, &qword_281266730, sub_2201FBCC4, sub_2201FBD1C);
  (*(*(v10 - 8) + 104))(a1 + v9, v2, v10);
  v11 = v4[8];
  sub_22025134C(0, &qword_2812667E8, sub_220250F44, sub_220250F98);
  (*(*(v12 - 8) + 104))(a1 + v11, v2, v12);
  v13 = v4[9];
  sub_22025134C(0, &qword_2812667E0, sub_22022ED48, sub_22022EDA0);
  (*(*(v14 - 8) + 104))(a1 + v13, v2, v14);
  v15 = v4[10];
  sub_22025134C(0, &qword_281266858, sub_220236A30, sub_220236A84);
  v17 = *(*(v16 - 8) + 104);

  return v17(a1 + v15, v2, v16);
}

uint64_t sub_220251828@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a1(0) + 20);
  v7 = a2(0);
  v8 = *(*(v7 - 8) + 16);

  return v8(a3, v3 + v6, v7);
}

uint64_t EOAGroupExposureEvent.Model.groupData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for EOAGroupExposureEvent.Model(0) + 24);
  v4 = *(v3 + 8);
  v5 = *(v3 + 16);
  v7 = *(v3 + 32);
  v6 = *(v3 + 40);
  *a1 = *v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = *(v3 + 24);
  *(a1 + 32) = v7;
  *(a1 + 40) = v6;
}

uint64_t EOAGroupExposureEvent.Model.feedData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for EOAGroupExposureEvent.Model(0) + 28);
  v5 = *(v3 + 8);
  v4 = *(v3 + 16);
  *a1 = *v3;
  *(a1 + 8) = v5;
  *(a1 + 16) = v4;
}

uint64_t EOAGroupExposureEvent.Model.hostArticleViewData.getter@<X0>(void *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for EOAGroupExposureEvent.Model(0) + 32));
  v4 = v3[1];
  *a1 = *v3;
  a1[1] = v4;
}

uint64_t EOAGroupExposureEvent.Model.hostArticleNewsArticleData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for EOAGroupExposureEvent.Model(0) + 36);
  v4 = *(v3 + 48);
  v11 = *(v3 + 32);
  v12 = v4;
  v13 = *(v3 + 64);
  v5 = v13;
  v6 = *(v3 + 16);
  v10[0] = *v3;
  v7 = v10[0];
  v10[1] = v6;
  *(a1 + 32) = v11;
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *a1 = v7;
  *(a1 + 16) = v6;
  return sub_22022ECDC(v10, v9);
}

uint64_t EOAGroupExposureEvent.Model.hostArticleChannelData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for EOAGroupExposureEvent.Model(0) + 40));
  v5 = *v3;
  v4 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  v8 = *(v3 + 32);
  LOBYTE(v3) = *(v3 + 33);
  *a1 = v5;
  *(a1 + 8) = v4;
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  *(a1 + 32) = v8;
  *(a1 + 33) = v3;
}

__n128 EOAGroupExposureEvent.Model.init(eventData:timedData:groupData:feedData:hostArticleViewData:hostArticleNewsArticleData:hostArticleChannelData:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, char *a4@<X3>, uint64_t *a5@<X4>, uint64_t a6@<X5>, __n128 *a7@<X6>, uint64_t a8@<X8>)
{
  v13 = *a3;
  v14 = *(a3 + 1);
  v15 = *(a3 + 2);
  v16 = *(a3 + 4);
  v17 = *(a3 + 5);
  v33 = *a4;
  v31 = *(a4 + 2);
  v32 = *(a4 + 1);
  v34 = a5[1];
  v35 = *a5;
  v40 = *a7;
  v38 = a7[1].n128_u64[1];
  v39 = a7[1].n128_u64[0];
  v36 = a7[2].n128_u8[1];
  v37 = a7[2].n128_u8[0];
  v18 = sub_22036F388();
  v19 = *(a3 + 3);
  (*(*(v18 - 8) + 32))(a8, a1, v18);
  v20 = type metadata accessor for EOAGroupExposureEvent.Model(0);
  v21 = v20[5];
  v22 = sub_22036F3C8();
  (*(*(v22 - 8) + 32))(a8 + v21, a2, v22);
  v23 = a8 + v20[6];
  *v23 = v13;
  *(v23 + 8) = v14;
  *(v23 + 16) = v15;
  *(v23 + 24) = v19;
  *(v23 + 32) = v16;
  *(v23 + 40) = v17;
  v24 = a8 + v20[7];
  *v24 = v33;
  *(v24 + 8) = v32;
  *(v24 + 16) = v31;
  v25 = (a8 + v20[8]);
  *v25 = v35;
  v25[1] = v34;
  v26 = a8 + v20[9];
  v27 = *(a6 + 48);
  *(v26 + 32) = *(a6 + 32);
  *(v26 + 48) = v27;
  *(v26 + 64) = *(a6 + 64);
  v28 = *(a6 + 16);
  *v26 = *a6;
  *(v26 + 16) = v28;
  v29 = (a8 + v20[10]);
  result = v40;
  *v29 = v40;
  v29[1].n128_u64[0] = v39;
  v29[1].n128_u64[1] = v38;
  v29[2].n128_u8[0] = v37;
  v29[2].n128_u8[1] = v36;
  return result;
}

uint64_t sub_220251C54()
{
  v1 = *v0;
  if (v1 <= 2)
  {
    v5 = 0x74614464656D6974;
    if (v1 != 1)
    {
      v5 = 0x74614470756F7267;
    }

    if (*v0)
    {
      return v5;
    }

    else
    {
      return 0x746144746E657665;
    }
  }

  else
  {
    v2 = 0xD000000000000016;
    if (v1 == 5)
    {
      v2 = 0xD00000000000001ALL;
    }

    v3 = 0x6174614464656566;
    if (v1 != 3)
    {
      v3 = 0xD000000000000013;
    }

    if (*v0 <= 4u)
    {
      return v3;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_220251D34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_220253408(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_220251D5C(uint64_t a1)
{
  v2 = sub_2202522C4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_220251D98(uint64_t a1)
{
  v2 = sub_2202522C4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t EOAGroupExposureEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  sub_220252AC0(0, &qword_27CF265F8, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = &v35[-v9];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2202522C4();
  sub_220370168();
  LOBYTE(v50) = 0;
  sub_22036F388();
  sub_2202307E4(&qword_2812666A8, MEMORY[0x277CEAEB0]);
  sub_22036FFF8();
  if (!v2)
  {
    v12 = type metadata accessor for EOAGroupExposureEvent.Model(0);
    v13 = v12[5];
    LOBYTE(v50) = 1;
    sub_22036F3C8();
    sub_2202307E4(&qword_281266690, MEMORY[0x277CEAED0]);
    sub_22036FFF8();
    v14 = v3 + v12[6];
    v15 = *(v14 + 8);
    v16 = *(v14 + 16);
    v17 = *(v14 + 32);
    v18 = *(v14 + 40);
    LOBYTE(v50) = *v14;
    *(&v50 + 1) = v15;
    *&v51 = v16;
    *(&v51 + 1) = *(v14 + 24);
    *&v52 = v17;
    *(&v52 + 1) = v18;
    LOBYTE(v45) = 2;
    sub_220236CDC();

    sub_22036FFF8();

    v19 = v3 + v12[7];
    v20 = *(v19 + 8);
    v21 = *(v19 + 16);
    LOBYTE(v50) = *v19;
    *(&v50 + 1) = v20;
    *&v51 = v21;
    LOBYTE(v45) = 3;
    sub_2201FBD1C();

    sub_22036FFF8();

    v22 = (v3 + v12[8]);
    v23 = v22[1];
    v56 = *v22;
    v57 = v23;
    v55 = 4;
    sub_220250F98();

    sub_22036FFF8();

    v24 = (v3 + v12[9]);
    v25 = v24[1];
    v26 = v24[3];
    v52 = v24[2];
    v53 = v26;
    v27 = v24[1];
    v50 = *v24;
    v51 = v27;
    v46 = v25;
    v47 = v52;
    v48 = v24[3];
    v54 = *(v24 + 16);
    v49 = *(v24 + 16);
    v45 = v50;
    v44 = 5;
    sub_22022ECDC(&v50, v42);
    sub_22022EDA0();
    sub_22036FFF8();
    v42[2] = v47;
    v42[3] = v48;
    v43 = v49;
    v42[0] = v45;
    v42[1] = v46;
    sub_22022ED14(v42);
    v29 = (v3 + v12[10]);
    v30 = *v29;
    v31 = v29[1];
    v32 = v29[2];
    v33 = v29[3];
    v34 = *(v29 + 32);
    LOBYTE(v29) = *(v29 + 33);
    v36 = v30;
    v37 = v31;
    v38 = v32;
    v39 = v33;
    v40 = v34;
    v41 = v29;
    v35[7] = 6;
    sub_220236A84();

    sub_22036FFF8();
  }

  return (*(v7 + 8))(v10, v6);
}

unint64_t sub_2202522C4()
{
  result = qword_27CF26600;
  if (!qword_27CF26600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF26600);
  }

  return result;
}

uint64_t EOAGroupExposureEvent.Model.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v47 = a2;
  v49 = sub_22036F3C8();
  v51 = *(v49 - 8);
  v3 = *(v51 + 64);
  MEMORY[0x28223BE20](v49);
  v5 = v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_22036F388();
  v48 = *(v6 - 8);
  v7 = *(v48 + 64);
  MEMORY[0x28223BE20](v6);
  v52 = v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_220252AC0(0, &qword_27CF26608, MEMORY[0x277D844C8]);
  v54 = v9;
  v50 = *(v9 - 8);
  v10 = *(v50 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v46 - v11;
  v13 = type metadata accessor for EOAGroupExposureEvent.Model(0);
  v14 = *(*(v13 - 1) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = v46 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2202522C4();
  v53 = v12;
  v18 = v55;
  sub_220370148();
  if (v18)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v19 = v5;
  v55 = a1;
  v20 = v48;
  v21 = v16;
  v22 = v51;
  v23 = v49;
  LOBYTE(v61) = 0;
  sub_2202307E4(&qword_2812666A0, MEMORY[0x277CEAEB0]);
  sub_22036FF28();
  v24 = *(v20 + 32);
  v25 = v52;
  v52 = v6;
  v24(v21, v25);
  LOBYTE(v61) = 1;
  sub_2202307E4(&qword_281266688, MEMORY[0x277CEAED0]);
  sub_22036FF28();
  v46[1] = 0;
  (*(v22 + 32))(&v21[v13[5]], v19, v23);
  LOBYTE(v56) = 2;
  sub_220236C88();
  sub_22036FF28();
  v26 = v21;
  v27 = v50;
  v28 = *(&v61 + 1);
  v29 = v62;
  v30 = v26 + v13[6];
  *v30 = v61;
  *(v30 + 8) = v28;
  *(v30 + 16) = __PAIR128__(*(&v62 + 1), v29);
  *(v30 + 32) = v63;
  LOBYTE(v56) = 3;
  sub_2201FBCC4();
  sub_22036FF28();
  v31 = v55;
  v32 = *(&v61 + 1);
  v33 = v62;
  v34 = v26 + v13[7];
  *v34 = v61;
  *(v34 + 8) = v32;
  *(v34 + 16) = v33;
  LOBYTE(v56) = 4;
  sub_220250F44();
  sub_22036FF28();
  v35 = *(&v61 + 1);
  v36 = (v26 + v13[8]);
  *v36 = v61;
  v36[1] = v35;
  v67 = 5;
  sub_22022ED48();
  sub_22036FF28();
  v37 = v26 + v13[9];
  v38 = v64;
  *(v37 + 32) = v63;
  *(v37 + 48) = v38;
  *(v37 + 64) = v65;
  v39 = v62;
  *v37 = v61;
  *(v37 + 16) = v39;
  v66 = 6;
  sub_220236A30();
  sub_22036FF28();
  (*(v27 + 8))(v53, v54);
  v40 = v57;
  v41 = v58;
  v42 = v59;
  v43 = v60;
  v44 = v26 + v13[10];
  *v44 = v56;
  *(v44 + 16) = v40;
  *(v44 + 24) = v41;
  *(v44 + 32) = v42;
  *(v44 + 33) = v43;
  sub_220252B24(v26, v47);
  __swift_destroy_boxed_opaque_existential_1(v31);
  return sub_220252B88(v26);
}

void sub_220252AC0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_2202522C4();
    v7 = a3(a1, &type metadata for EOAGroupExposureEvent.Model.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_220252B24(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EOAGroupExposureEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_220252B88(uint64_t a1)
{
  v2 = type metadata accessor for EOAGroupExposureEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_220252CBC@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *MEMORY[0x277CEACF8];
  sub_220230578();
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = a1[5];
  sub_220230718();
  (*(*(v7 - 8) + 104))(a2 + v6, v4, v7);
  v8 = a1[6];
  sub_22025134C(0, &qword_281266718, sub_220236C88, sub_220236CDC);
  (*(*(v9 - 8) + 104))(a2 + v8, v4, v9);
  v10 = a1[7];
  sub_22025134C(0, &qword_281266730, sub_2201FBCC4, sub_2201FBD1C);
  (*(*(v11 - 8) + 104))(a2 + v10, v4, v11);
  v12 = a1[8];
  sub_22025134C(0, &qword_2812667E8, sub_220250F44, sub_220250F98);
  (*(*(v13 - 8) + 104))(a2 + v12, v4, v13);
  v14 = a1[9];
  sub_22025134C(0, &qword_2812667E0, sub_22022ED48, sub_22022EDA0);
  (*(*(v15 - 8) + 104))(a2 + v14, v4, v15);
  v16 = a1[10];
  sub_22025134C(0, &qword_281266858, sub_220236A30, sub_220236A84);
  v18 = *(*(v17 - 8) + 104);

  return v18(a2 + v16, v4, v17);
}

void sub_220252FFC()
{
  sub_220230578();
  if (v0 <= 0x3F)
  {
    sub_220230718();
    if (v1 <= 0x3F)
    {
      sub_22025134C(319, &qword_281266718, sub_220236C88, sub_220236CDC);
      if (v2 <= 0x3F)
      {
        sub_22025134C(319, &qword_281266730, sub_2201FBCC4, sub_2201FBD1C);
        if (v3 <= 0x3F)
        {
          sub_22025134C(319, &qword_2812667E8, sub_220250F44, sub_220250F98);
          if (v4 <= 0x3F)
          {
            sub_22025134C(319, &qword_2812667E0, sub_22022ED48, sub_22022EDA0);
            if (v5 <= 0x3F)
            {
              sub_22025134C(319, &qword_281266858, sub_220236A30, sub_220236A84);
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

uint64_t sub_220253238()
{
  result = sub_22036F388();
  if (v1 <= 0x3F)
  {
    result = sub_22036F3C8();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_220253304()
{
  result = qword_27CF26630;
  if (!qword_27CF26630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF26630);
  }

  return result;
}

unint64_t sub_22025335C()
{
  result = qword_27CF26638;
  if (!qword_27CF26638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF26638);
  }

  return result;
}

unint64_t sub_2202533B4()
{
  result = qword_27CF26640;
  if (!qword_27CF26640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF26640);
  }

  return result;
}

uint64_t sub_220253408(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746144746E657665 && a2 == 0xE900000000000061;
  if (v4 || (sub_220370048() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x74614464656D6974 && a2 == 0xE900000000000061 || (sub_220370048() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x74614470756F7267 && a2 == 0xE900000000000061 || (sub_220370048() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6174614464656566 && a2 == 0xE800000000000000 || (sub_220370048() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000013 && 0x8000000220390500 == a2 || (sub_220370048() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD00000000000001ALL && 0x8000000220390520 == a2 || (sub_220370048() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000016 && 0x8000000220390540 == a2)
  {

    return 6;
  }

  else
  {
    v6 = sub_220370048();

    if (v6)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

uint64_t DismissalData.dismissingIdentifier.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t DismissalData.dismissingIdentifier.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

StocksAnalytics::DismissalData __swiftcall DismissalData.init(dismissingIdentifier:isDismissed:)(StocksAnalytics::DismissalData dismissingIdentifier, Swift::Bool isDismissed)
{
  *v2 = dismissingIdentifier.dismissingIdentifier;
  *(v2 + 16) = isDismissed;
  dismissingIdentifier.isDismissed = isDismissed;
  return dismissingIdentifier;
}

unint64_t sub_22025372C()
{
  if (*v0)
  {
    result = 0x73696D7369447369;
  }

  else
  {
    result = 0xD000000000000014;
  }

  *v0;
  return result;
}

uint64_t sub_220253774@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000014 && 0x8000000220390560 == a2 || (sub_220370048() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x73696D7369447369 && a2 == 0xEB00000000646573)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_220370048();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
  return result;
}

uint64_t sub_220253860(uint64_t a1)
{
  v2 = sub_220253A58();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22025389C(uint64_t a1)
{
  v2 = sub_220253A58();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t DismissalData.encode(to:)(void *a1)
{
  sub_220253C9C(0, &qword_27CF26648, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  v8 = v14 - v7;
  v9 = *v1;
  v10 = v1[1];
  v15 = *(v1 + 16);
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220253A58();
  sub_220370168();
  v17 = 0;
  v12 = v14[1];
  sub_22036FFB8();
  if (!v12)
  {
    v16 = 1;
    sub_22036FFC8();
  }

  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_220253A58()
{
  result = qword_27CF26650;
  if (!qword_27CF26650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF26650);
  }

  return result;
}

uint64_t DismissalData.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_220253C9C(0, &qword_27CF26658, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = &v18 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220253A58();
  sub_220370148();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v20 = 0;
  v12 = sub_22036FEE8();
  v14 = v13;
  v15 = v12;
  v19 = 1;
  v16 = sub_22036FEF8();
  (*(v7 + 8))(v10, v6);
  *a2 = v15;
  *(a2 + 8) = v14;
  *(a2 + 16) = v16 & 1;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_220253C9C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_220253A58();
    v7 = a3(a1, &type metadata for DismissalData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_220253D04()
{
  result = qword_281265C38;
  if (!qword_281265C38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281265C38);
  }

  return result;
}

unint64_t sub_220253D5C()
{
  result = qword_281265C40;
  if (!qword_281265C40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281265C40);
  }

  return result;
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_220253DF4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 17))
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

uint64_t sub_220253E3C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 17) = 1;
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

    *(result + 17) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_220253EA0()
{
  result = qword_27CF26660;
  if (!qword_27CF26660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF26660);
  }

  return result;
}

unint64_t sub_220253EF8()
{
  result = qword_27CF26668;
  if (!qword_27CF26668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF26668);
  }

  return result;
}

unint64_t sub_220253F50()
{
  result = qword_27CF26670;
  if (!qword_27CF26670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF26670);
  }

  return result;
}

uint64_t GalleryData.galleryID.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return v1;
}

uint64_t GalleryData.galleryID.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16);

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

_BYTE *GalleryData.init(galleryType:galleryID:galleryImageCount:)@<X0>(_BYTE *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X8>)
{
  *a5 = *result;
  *(a5 + 8) = a2;
  *(a5 + 16) = a3;
  *(a5 + 24) = a4;
  return result;
}

uint64_t sub_2202540B0()
{
  v1 = 0x497972656C6C6167;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000011;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x547972656C6C6167;
  }
}

uint64_t sub_22025411C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2202549B8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_220254144(uint64_t a1)
{
  v2 = sub_220254378();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_220254180(uint64_t a1)
{
  v2 = sub_220254378();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t GalleryData.encode(to:)(void *a1)
{
  sub_220254658(0, &qword_27CF26678, MEMORY[0x277D84538]);
  v5 = v4;
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  v9 = v14 - v8;
  v10 = *v1;
  v11 = *(v1 + 1);
  v14[0] = *(v1 + 2);
  v14[1] = v11;
  v15 = *(v1 + 6);
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220254378();
  sub_220370168();
  v19 = v10;
  v18 = 0;
  sub_2202543CC();
  sub_22036FFF8();
  if (!v2)
  {
    v17 = 1;
    sub_22036FFB8();
    v16 = 2;
    sub_220370008();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_220254378()
{
  result = qword_27CF26680;
  if (!qword_27CF26680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF26680);
  }

  return result;
}

unint64_t sub_2202543CC()
{
  result = qword_27CF26688;
  if (!qword_27CF26688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF26688);
  }

  return result;
}

uint64_t GalleryData.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_220254658(0, &qword_27CF26690, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = &v18 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220254378();
  sub_220370148();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v22 = 0;
  sub_2202546BC();
  sub_22036FF28();
  v12 = v23;
  v21 = 1;
  v13 = sub_22036FEE8();
  v15 = v14;
  v19 = v13;
  v20 = 2;
  v16 = sub_22036FF38();
  (*(v7 + 8))(v10, v6);
  *a2 = v12;
  *(a2 + 8) = v19;
  *(a2 + 16) = v15;
  *(a2 + 24) = v16;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_220254658(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_220254378();
    v7 = a3(a1, &type metadata for GalleryData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_2202546BC()
{
  result = qword_27CF26698;
  if (!qword_27CF26698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF26698);
  }

  return result;
}

unint64_t sub_220254714()
{
  result = qword_281266038;
  if (!qword_281266038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281266038);
  }

  return result;
}

unint64_t sub_22025476C()
{
  result = qword_281266040;
  if (!qword_281266040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281266040);
  }

  return result;
}

__n128 __swift_memcpy28_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 12) = *(a2 + 12);
  *a1 = result;
  return result;
}

uint64_t sub_220254804(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 28))
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

uint64_t sub_22025484C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 28) = 1;
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

    *(result + 28) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_2202548B4()
{
  result = qword_27CF266A0;
  if (!qword_27CF266A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF266A0);
  }

  return result;
}

unint64_t sub_22025490C()
{
  result = qword_27CF266A8;
  if (!qword_27CF266A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF266A8);
  }

  return result;
}

unint64_t sub_220254964()
{
  result = qword_27CF266B0;
  if (!qword_27CF266B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF266B0);
  }

  return result;
}

uint64_t sub_2202549B8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x547972656C6C6167 && a2 == 0xEB00000000657079;
  if (v4 || (sub_220370048() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x497972656C6C6167 && a2 == 0xE900000000000044 || (sub_220370048() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000220390580 == a2)
  {

    return 2;
  }

  else
  {
    v6 = sub_220370048();

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

uint64_t NetworkEventData.startTime.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_22036E5A8();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t NetworkEventData.startTime.setter(uint64_t a1)
{
  v3 = sub_22036E5A8();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t NetworkEventData.cacheState.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for NetworkEventData();
  *a1 = *(v1 + *(result + 20));
  return result;
}

uint64_t type metadata accessor for NetworkEventData()
{
  result = qword_2812651B8;
  if (!qword_2812651B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t NetworkEventData.cacheState.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for NetworkEventData();
  *(v1 + *(result + 20)) = v2;
  return result;
}

uint64_t NetworkEventData.dnsDuration.setter(uint64_t a1)
{
  result = type metadata accessor for NetworkEventData();
  *(v1 + *(result + 24)) = a1;
  return result;
}

uint64_t NetworkEventData.connectDuration.setter(uint64_t a1)
{
  result = type metadata accessor for NetworkEventData();
  *(v1 + *(result + 28)) = a1;
  return result;
}

uint64_t NetworkEventData.requestDuration.setter(uint64_t a1)
{
  result = type metadata accessor for NetworkEventData();
  *(v1 + *(result + 32)) = a1;
  return result;
}

uint64_t NetworkEventData.responseDuration.setter(uint64_t a1)
{
  result = type metadata accessor for NetworkEventData();
  *(v1 + *(result + 36)) = a1;
  return result;
}

uint64_t NetworkEventData.taskDuration.getter()
{
  v1 = (v0 + *(type metadata accessor for NetworkEventData() + 40));
  result = *v1;
  v3 = *(v1 + 8);
  return result;
}

uint64_t NetworkEventData.taskDuration.setter(uint64_t a1, char a2)
{
  result = type metadata accessor for NetworkEventData();
  v6 = v2 + *(result + 40);
  *v6 = a1;
  *(v6 + 8) = a2 & 1;
  return result;
}

uint64_t NetworkEventData.responseSize.setter(uint64_t a1)
{
  result = type metadata accessor for NetworkEventData();
  *(v1 + *(result + 44)) = a1;
  return result;
}

uint64_t NetworkEventData.statusCode.setter(uint64_t a1)
{
  result = type metadata accessor for NetworkEventData();
  *(v1 + *(result + 48)) = a1;
  return result;
}

uint64_t NetworkEventData.errorCode.setter(uint64_t a1)
{
  result = type metadata accessor for NetworkEventData();
  *(v1 + *(result + 52)) = a1;
  return result;
}

uint64_t NetworkEventData.eventType.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for NetworkEventData();
  *a1 = *(v1 + *(result + 56));
  return result;
}

uint64_t NetworkEventData.eventType.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for NetworkEventData();
  *(v1 + *(result + 56)) = v2;
  return result;
}

uint64_t NetworkEventData.cellularRadioAccessTechnology.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for NetworkEventData();
  *a1 = *(v1 + *(result + 60));
  return result;
}

uint64_t NetworkEventData.cellularRadioAccessTechnology.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for NetworkEventData();
  *(v1 + *(result + 60)) = v2;
  return result;
}

uint64_t NetworkEventData.dataSource.getter()
{
  v1 = (v0 + *(type metadata accessor for NetworkEventData() + 64));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t NetworkEventData.dataSource.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for NetworkEventData() + 64));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t NetworkEventData.requestedItemCount.getter()
{
  v1 = (v0 + *(type metadata accessor for NetworkEventData() + 68));
  result = *v1;
  v3 = *(v1 + 8);
  return result;
}

uint64_t NetworkEventData.requestedItemCount.setter(uint64_t a1, char a2)
{
  result = type metadata accessor for NetworkEventData();
  v6 = v2 + *(result + 68);
  *v6 = a1;
  *(v6 + 8) = a2 & 1;
  return result;
}

uint64_t NetworkEventData.returnedItemCount.getter()
{
  v1 = (v0 + *(type metadata accessor for NetworkEventData() + 72));
  result = *v1;
  v3 = *(v1 + 8);
  return result;
}

uint64_t NetworkEventData.returnedItemCount.setter(uint64_t a1, char a2)
{
  result = type metadata accessor for NetworkEventData();
  v6 = v2 + *(result + 72);
  *v6 = a1;
  *(v6 + 8) = a2 & 1;
  return result;
}

uint64_t NetworkEventData.missingItemIDs.getter()
{
  v1 = *(v0 + *(type metadata accessor for NetworkEventData() + 76));
}

uint64_t NetworkEventData.missingItemIDs.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for NetworkEventData() + 76);
  v4 = *(v1 + v3);

  *(v1 + v3) = a1;
  return result;
}

uint64_t NetworkEventData.invalidItemIDs.getter()
{
  v1 = *(v0 + *(type metadata accessor for NetworkEventData() + 80));
}

uint64_t NetworkEventData.invalidItemIDs.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for NetworkEventData() + 80);
  v4 = *(v1 + v3);

  *(v1 + v3) = a1;
  return result;
}

uint64_t NetworkEventData.respondingPop.getter()
{
  v1 = (v0 + *(type metadata accessor for NetworkEventData() + 84));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t NetworkEventData.respondingPop.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for NetworkEventData() + 84));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t NetworkEventData.isProxyConnection.setter(char a1)
{
  result = type metadata accessor for NetworkEventData();
  *(v1 + *(result + 88)) = a1;
  return result;
}

uint64_t NetworkEventData.init(startTime:cacheState:dnsDuration:connectDuration:requestDuration:responseDuration:taskDuration:responseSize:statusCode:errorCode:eventType:cellularRadioAccessTechnology:dataSource:requestedItemCount:returnedItemCount:missingItemIDs:invalidItemIDs:respondingPop:isProxyConnection:)@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char a8@<W7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, char *a13, char *a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25)
{
  v26 = *a2;
  v38 = *a13;
  v39 = *a14;
  v27 = type metadata accessor for NetworkEventData();
  v28 = a9 + v27[10];
  v29 = (a9 + v27[16]);
  v30 = a9 + v27[17];
  v31 = v27[19];
  v32 = a9 + v27[18];
  v33 = v27[20];
  v34 = (a9 + v27[21]);
  v35 = sub_22036E5A8();
  result = (*(*(v35 - 8) + 32))(a9, a1, v35);
  *(a9 + v27[5]) = v26;
  *(a9 + v27[6]) = a3;
  *(a9 + v27[7]) = a4;
  *(a9 + v27[8]) = a5;
  *(a9 + v27[9]) = a6;
  *v28 = a7;
  *(v28 + 8) = a8 & 1;
  *(a9 + v27[11]) = a10;
  *(a9 + v27[12]) = a11;
  *(a9 + v27[13]) = a12;
  *(a9 + v27[14]) = v38;
  *(a9 + v27[15]) = v39;
  *v29 = a15;
  v29[1] = a16;
  *v30 = a17;
  *(v30 + 8) = a18 & 1;
  *v32 = a19;
  *(v32 + 8) = a20 & 1;
  *(a9 + v31) = a21;
  *(a9 + v33) = a22;
  *v34 = a23;
  v34[1] = a24;
  *(a9 + v27[22]) = a25;
  return result;
}

uint64_t sub_220255A74(char a1)
{
  result = 0x6D69547472617473;
  switch(a1)
  {
    case 1:
      result = 0x6174536568636163;
      break;
    case 2:
      result = 0x7461727544736E64;
      break;
    case 3:
      v3 = 0x63656E6E6F63;
      goto LABEL_13;
    case 4:
      v3 = 0x736575716572;
LABEL_13:
      result = v3 & 0xFFFFFFFFFFFFLL | 0x4474000000000000;
      break;
    case 5:
      result = 0xD000000000000010;
      break;
    case 6:
      result = 0x617275446B736174;
      break;
    case 7:
      result = 0x65736E6F70736572;
      break;
    case 8:
      result = 0x6F43737574617473;
      break;
    case 9:
      result = 0x646F43726F727265;
      break;
    case 10:
      result = 0x707954746E657665;
      break;
    case 11:
      result = 0xD00000000000001DLL;
      break;
    case 12:
      result = 0x72756F5361746164;
      break;
    case 13:
      result = 0xD000000000000012;
      break;
    case 14:
      result = 0xD000000000000011;
      break;
    case 15:
      result = 0x49676E697373696DLL;
      break;
    case 16:
      result = 0x4964696C61766E69;
      break;
    case 17:
      result = 0x69646E6F70736572;
      break;
    case 18:
      result = 0xD000000000000011;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_220255CC0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2202574D4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_220255CF4(uint64_t a1)
{
  v2 = sub_220256310();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_220255D30(uint64_t a1)
{
  v2 = sub_220256310();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t NetworkEventData.encode(to:)(void *a1)
{
  v3 = v1;
  sub_220256CCC(0, &qword_281261C68, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = &v37 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220256310();
  sub_220370168();
  LOBYTE(v38) = 0;
  sub_22036E5A8();
  sub_2201FF5E8(&qword_281266AD0, MEMORY[0x277CC9578]);
  sub_22036FFF8();
  if (!v2)
  {
    v12 = type metadata accessor for NetworkEventData();
    LOBYTE(v38) = *(v3 + v12[5]);
    v39 = 1;
    sub_220256364();
    sub_22036FFF8();
    v13 = *(v3 + v12[6]);
    LOBYTE(v38) = 2;
    sub_220370018();
    v14 = *(v3 + v12[7]);
    LOBYTE(v38) = 3;
    sub_220370018();
    v15 = *(v3 + v12[8]);
    LOBYTE(v38) = 4;
    sub_220370018();
    v16 = *(v3 + v12[9]);
    LOBYTE(v38) = 5;
    sub_220370018();
    v17 = (v3 + v12[10]);
    v18 = *v17;
    v19 = *(v17 + 8);
    LOBYTE(v38) = 6;
    sub_22036FFA8();
    v20 = *(v3 + v12[11]);
    LOBYTE(v38) = 7;
    sub_220370018();
    v21 = *(v3 + v12[12]);
    LOBYTE(v38) = 8;
    sub_220370018();
    v22 = *(v3 + v12[13]);
    LOBYTE(v38) = 9;
    sub_220370018();
    LOBYTE(v38) = *(v3 + v12[14]);
    v39 = 10;
    sub_2202563B8();
    sub_22036FFF8();
    LOBYTE(v38) = *(v3 + v12[15]);
    v39 = 11;
    sub_22025640C();
    sub_22036FFF8();
    v23 = (v3 + v12[16]);
    v24 = *v23;
    v25 = v23[1];
    LOBYTE(v38) = 12;
    sub_22036FF68();
    v26 = (v3 + v12[17]);
    v27 = *v26;
    v28 = *(v26 + 8);
    LOBYTE(v38) = 13;
    sub_22036FFA8();
    v29 = (v3 + v12[18]);
    v30 = *v29;
    v31 = *(v29 + 8);
    LOBYTE(v38) = 14;
    sub_22036FFA8();
    v38 = *(v3 + v12[19]);
    v39 = 15;
    sub_2202571B0(0, &qword_281261EF8, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
    sub_220256E2C(&qword_281261EF0);
    sub_22036FF88();
    v38 = *(v3 + v12[20]);
    v39 = 16;
    sub_22036FF88();
    v32 = (v3 + v12[21]);
    v33 = *v32;
    v34 = v32[1];
    LOBYTE(v38) = 17;
    sub_22036FF68();
    v35 = *(v3 + v12[22]);
    LOBYTE(v38) = 18;
    sub_22036FFC8();
  }

  return (*(v7 + 8))(v10, v6);
}

unint64_t sub_220256310()
{
  result = qword_2812651F0[0];
  if (!qword_2812651F0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2812651F0);
  }

  return result;
}

unint64_t sub_220256364()
{
  result = qword_281266170;
  if (!qword_281266170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281266170);
  }

  return result;
}

unint64_t sub_2202563B8()
{
  result = qword_2812650E8[0];
  if (!qword_2812650E8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2812650E8);
  }

  return result;
}

unint64_t sub_22025640C()
{
  result = qword_281262910[0];
  if (!qword_281262910[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_281262910);
  }

  return result;
}

uint64_t NetworkEventData.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v40 = a2;
  v4 = sub_22036E5A8();
  v41 = *(v4 - 8);
  v5 = *(v41 + 64);
  MEMORY[0x28223BE20](v4);
  v42 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_220256CCC(0, &qword_27CF266B8, MEMORY[0x277D844C8]);
  v45 = v7;
  v43 = *(v7 - 8);
  v8 = *(v43 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v37 - v9;
  v11 = type metadata accessor for NetworkEventData();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220256310();
  v44 = v10;
  sub_220370148();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    v37 = v11;
    v38 = v14;
    v39 = a1;
    LOBYTE(v46) = 0;
    sub_2201FF5E8(&qword_27CF266C0, MEMORY[0x277CC9578]);
    v16 = v42;
    sub_22036FF28();
    v17 = v38;
    (*(v41 + 32))(v38, v16, v4);
    v47 = 1;
    sub_220256D30();
    sub_22036FF28();
    v18 = v37;
    v17[v37[5]] = v46;
    LOBYTE(v46) = 2;
    *&v17[v18[6]] = sub_22036FF48();
    LOBYTE(v46) = 3;
    *&v17[v18[7]] = sub_22036FF48();
    LOBYTE(v46) = 4;
    *&v17[v18[8]] = sub_22036FF48();
    LOBYTE(v46) = 5;
    *&v17[v18[9]] = sub_22036FF48();
    LOBYTE(v46) = 6;
    v19 = sub_22036FED8();
    v20 = &v17[v18[10]];
    *v20 = v19;
    v20[8] = v21 & 1;
    LOBYTE(v46) = 7;
    *&v17[v18[11]] = sub_22036FF48();
    LOBYTE(v46) = 8;
    *&v17[v18[12]] = sub_22036FF48();
    LOBYTE(v46) = 9;
    *&v38[v37[13]] = sub_22036FF48();
    v47 = 10;
    sub_220256D84();
    sub_22036FF28();
    v38[v37[14]] = v46;
    v47 = 11;
    sub_220256DD8();
    sub_22036FF28();
    v38[v37[15]] = v46;
    LOBYTE(v46) = 12;
    v22 = sub_22036FE98();
    v23 = &v38[v37[16]];
    *v23 = v22;
    v23[1] = v24;
    LOBYTE(v46) = 13;
    v25 = sub_22036FED8();
    v26 = &v38[v37[17]];
    *v26 = v25;
    v26[8] = v27 & 1;
    LOBYTE(v46) = 14;
    v28 = sub_22036FED8();
    v29 = &v38[v37[18]];
    *v29 = v28;
    v29[8] = v30 & 1;
    sub_2202571B0(0, &qword_281261EF8, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
    v47 = 15;
    sub_220256E2C(&qword_281261EE0);
    sub_22036FEB8();
    *&v38[v37[19]] = v46;
    v47 = 16;
    sub_22036FEB8();
    *&v38[v37[20]] = v46;
    LOBYTE(v46) = 17;
    v31 = sub_22036FE98();
    v32 = &v38[v37[21]];
    *v32 = v31;
    v32[1] = v33;
    LOBYTE(v46) = 18;
    v34 = sub_22036FEF8();
    (*(v43 + 8))(v44, v45);
    v35 = v38;
    v38[v37[22]] = v34 & 1;
    sub_220256EB0(v35, v40);
    __swift_destroy_boxed_opaque_existential_1(v39);
    return sub_220256F14(v35);
  }
}

void sub_220256CCC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_220256310();
    v7 = a3(a1, &type metadata for NetworkEventData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_220256D30()
{
  result = qword_27CF266C8;
  if (!qword_27CF266C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF266C8);
  }

  return result;
}

unint64_t sub_220256D84()
{
  result = qword_27CF266D0;
  if (!qword_27CF266D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF266D0);
  }

  return result;
}

unint64_t sub_220256DD8()
{
  result = qword_27CF266D8;
  if (!qword_27CF266D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF266D8);
  }

  return result;
}

uint64_t sub_220256E2C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_2202571B0(255, &qword_281261EF8, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_220256EB0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NetworkEventData();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_220256F14(uint64_t a1)
{
  v2 = type metadata accessor for NetworkEventData();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_220257058()
{
  sub_22036E5A8();
  if (v0 <= 0x3F)
  {
    sub_2202571B0(319, &qword_281261AE8, MEMORY[0x277D84A28], MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      sub_2202571B0(319, &qword_281261F88, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        sub_220257200();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_2202571B0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_220257200()
{
  if (!qword_281261ED8)
  {
    sub_2202571B0(255, &qword_281261EF8, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
    v0 = sub_22036FCC8();
    if (!v1)
    {
      atomic_store(v0, &qword_281261ED8);
    }
  }
}

uint64_t getEnumTagSinglePayload for NetworkEventData.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xEE)
  {
    goto LABEL_17;
  }

  if (a2 + 18 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 18) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 18;
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

      return (*a1 | (v4 << 8)) - 18;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 18;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x13;
  v8 = v6 - 19;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for NetworkEventData.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 18 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 18) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xEE)
  {
    v4 = 0;
  }

  if (a2 > 0xED)
  {
    v5 = ((a2 - 238) >> 8) + 1;
    *result = a2 + 18;
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
    *result = a2 + 18;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_2202573D0()
{
  result = qword_27CF266E0;
  if (!qword_27CF266E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF266E0);
  }

  return result;
}

unint64_t sub_220257428()
{
  result = qword_2812651E0;
  if (!qword_2812651E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812651E0);
  }

  return result;
}

unint64_t sub_220257480()
{
  result = qword_2812651E8;
  if (!qword_2812651E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812651E8);
  }

  return result;
}

uint64_t sub_2202574D4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6D69547472617473 && a2 == 0xE900000000000065;
  if (v4 || (sub_220370048() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6174536568636163 && a2 == 0xEA00000000006574 || (sub_220370048() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7461727544736E64 && a2 == 0xEB000000006E6F69 || (sub_220370048() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x447463656E6E6F63 && a2 == 0xEF6E6F6974617275 || (sub_220370048() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x4474736575716572 && a2 == 0xEF6E6F6974617275 || (sub_220370048() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000010 && 0x80000002203905A0 == a2 || (sub_220370048() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x617275446B736174 && a2 == 0xEC0000006E6F6974 || (sub_220370048() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x65736E6F70736572 && a2 == 0xEC000000657A6953 || (sub_220370048() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x6F43737574617473 && a2 == 0xEA00000000006564 || (sub_220370048() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x646F43726F727265 && a2 == 0xE900000000000065 || (sub_220370048() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x707954746E657665 && a2 == 0xE900000000000065 || (sub_220370048() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0xD00000000000001DLL && 0x80000002203905C0 == a2 || (sub_220370048() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0x72756F5361746164 && a2 == 0xEA00000000006563 || (sub_220370048() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0xD000000000000012 && 0x80000002203905E0 == a2 || (sub_220370048() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000220390600 == a2 || (sub_220370048() & 1) != 0)
  {

    return 14;
  }

  else if (a1 == 0x49676E697373696DLL && a2 == 0xEE007344496D6574 || (sub_220370048() & 1) != 0)
  {

    return 15;
  }

  else if (a1 == 0x4964696C61766E69 && a2 == 0xEE007344496D6574 || (sub_220370048() & 1) != 0)
  {

    return 16;
  }

  else if (a1 == 0x69646E6F70736572 && a2 == 0xED0000706F50676ELL || (sub_220370048() & 1) != 0)
  {

    return 17;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000220390620 == a2)
  {

    return 18;
  }

  else
  {
    v6 = sub_220370048();

    if (v6)
    {
      return 18;
    }

    else
    {
      return 19;
    }
  }
}

uint64_t AdUserData.userID.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t AdUserData.userID.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t sub_220257B98@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x444972657375 && a2 == 0xE600000000000000)
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

uint64_t sub_220257C1C(uint64_t a1)
{
  v2 = sub_220257DE0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_220257C58(uint64_t a1)
{
  v2 = sub_220257DE0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t AdUserData.encode(to:)(void *a1)
{
  sub_220257FB8(0, &qword_281261D30, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  v8 = &v13 - v7;
  v9 = *v1;
  v10 = v1[1];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220257DE0();
  sub_220370168();
  sub_22036FFB8();
  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_220257DE0()
{
  result = qword_2812661A0;
  if (!qword_2812661A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812661A0);
  }

  return result;
}

uint64_t AdUserData.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_220257FB8(0, &qword_27CF266E8, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = &v16 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220257DE0();
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

void sub_220257FB8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_220257DE0();
    v7 = a3(a1, &type metadata for AdUserData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_220258034(void *a1)
{
  sub_220257FB8(0, &qword_281261D30, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  v8 = &v13 - v7;
  v9 = *v1;
  v10 = v1[1];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220257DE0();
  sub_220370168();
  sub_22036FFB8();
  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_220258180(uint64_t a1, int a2)
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

uint64_t sub_2202581C8(uint64_t result, int a2, int a3)
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

unint64_t sub_220258228()
{
  result = qword_27CF266F0;
  if (!qword_27CF266F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF266F0);
  }

  return result;
}

unint64_t sub_220258280()
{
  result = qword_281266190;
  if (!qword_281266190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281266190);
  }

  return result;
}

unint64_t sub_2202582D8()
{
  result = qword_281266198;
  if (!qword_281266198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281266198);
  }

  return result;
}

uint64_t SymbolPriceChangeData.currency.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t SymbolPriceChangeData.currency.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

StocksAnalytics::SymbolPriceChangeData __swiftcall SymbolPriceChangeData.init(currentPrice:priceChange:currency:)(Swift::Double currentPrice, Swift::Double priceChange, Swift::String currency)
{
  *v3 = currentPrice;
  *(v3 + 8) = priceChange;
  *(v3 + 16) = currency;
  result.currency = currency;
  result.priceChange = priceChange;
  result.currentPrice = currentPrice;
  return result;
}

uint64_t sub_220258428()
{
  v1 = 0x6168436563697270;
  if (*v0 != 1)
  {
    v1 = 0x79636E6572727563;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x50746E6572727563;
  }
}

uint64_t sub_220258494@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_220258B60(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2202584BC(uint64_t a1)
{
  v2 = sub_2202586D8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2202584F8(uint64_t a1)
{
  v2 = sub_2202586D8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SymbolPriceChangeData.encode(to:)(void *a1)
{
  sub_220258914(0, &qword_27CF266F8, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  v8 = v16 - v7;
  v10 = *v1;
  v9 = v1[1];
  v11 = v1[2];
  v12 = v1[3];
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2202586D8();
  sub_220370168();
  v19 = 0;
  v14 = v16[1];
  sub_22036FFD8();
  if (!v14)
  {
    v18 = 1;
    sub_22036FFD8();
    v17 = 2;
    sub_22036FFB8();
  }

  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_2202586D8()
{
  result = qword_27CF26700;
  if (!qword_27CF26700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF26700);
  }

  return result;
}

uint64_t SymbolPriceChangeData.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  sub_220258914(0, &qword_27CF26708, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = &v20 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2202586D8();
  sub_220370148();
  if (!v2)
  {
    v23 = 0;
    sub_22036FF08();
    v13 = v12;
    v22 = 1;
    sub_22036FF08();
    v15 = v14;
    v21 = 2;
    v17 = sub_22036FEE8();
    v19 = v18;
    (*(v7 + 8))(v10, v6);
    *a2 = v13;
    a2[1] = v15;
    a2[2] = v17;
    a2[3] = v19;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_220258914(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_2202586D8();
    v7 = a3(a1, &type metadata for SymbolPriceChangeData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_2202589B0(uint64_t a1, int a2)
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

uint64_t sub_2202589F8(uint64_t result, int a2, int a3)
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

unint64_t sub_220258A5C()
{
  result = qword_27CF26710;
  if (!qword_27CF26710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF26710);
  }

  return result;
}

unint64_t sub_220258AB4()
{
  result = qword_27CF26718;
  if (!qword_27CF26718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF26718);
  }

  return result;
}

unint64_t sub_220258B0C()
{
  result = qword_27CF26720;
  if (!qword_27CF26720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF26720);
  }

  return result;
}

uint64_t sub_220258B60(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x50746E6572727563 && a2 == 0xEC00000065636972;
  if (v4 || (sub_220370048() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6168436563697270 && a2 == 0xEB0000000065676ELL || (sub_220370048() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x79636E6572727563 && a2 == 0xE800000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_220370048();

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

StocksAnalytics::BannerAdData __swiftcall BannerAdData.init(isInteractive:isDownloadable:isVideo:)(Swift::Bool isInteractive, Swift::Bool isDownloadable, Swift::Bool isVideo)
{
  *v3 = isInteractive;
  v3[1] = isDownloadable;
  v3[2] = isVideo;
  result.isInteractive = isInteractive;
  return result;
}

uint64_t sub_220258DA8()
{
  v1 = 0x6F6C6E776F447369;
  if (*v0 != 1)
  {
    v1 = 0x6F656469567369;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x617265746E497369;
  }
}

uint64_t sub_220258E1C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_220259588(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_220258E44(uint64_t a1)
{
  v2 = sub_22025905C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_220258E80(uint64_t a1)
{
  v2 = sub_22025905C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t BannerAdData.encode(to:)(void *a1)
{
  sub_2202592A4(0, &qword_281261CE8, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  v8 = v14 - v7;
  v9 = *v1;
  v15 = v1[1];
  v10 = v1[2];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22025905C();
  sub_220370168();
  v18 = 0;
  v12 = v14[1];
  sub_22036FFC8();
  if (!v12)
  {
    v17 = 1;
    sub_22036FFC8();
    v16 = 2;
    sub_22036FFC8();
  }

  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_22025905C()
{
  result = qword_281265DD8;
  if (!qword_281265DD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281265DD8);
  }

  return result;
}

uint64_t BannerAdData.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  sub_2202592A4(0, &qword_27CF26790, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = &v15 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22025905C();
  sub_220370148();
  if (!v2)
  {
    v18 = 0;
    v20 = sub_22036FEF8() & 1;
    v17 = 1;
    v19 = sub_22036FEF8() & 1;
    v16 = 2;
    v13 = sub_22036FEF8();
    (*(v7 + 8))(v10, v6);
    v14 = v19;
    *a2 = v20;
    a2[1] = v14;
    a2[2] = v13 & 1;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_2202592A4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_22025905C();
    v7 = a3(a1, &type metadata for BannerAdData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t __swift_memcpy3_1(uint64_t result, __int16 *a2)
{
  v2 = *a2;
  *(result + 2) = *(a2 + 2);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for BannerAdData(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF)
  {
    if ((a2 + 33554177) >> 24)
    {
      v2 = *(a1 + 3);
      if (*(a1 + 3))
      {
        return (*a1 | (*(a1 + 2) << 16) | (v2 << 24)) - 16776961;
      }
    }

    else
    {
      v2 = *(a1 + 3);
      if (*(a1 + 3))
      {
        return (*a1 | (*(a1 + 2) << 16) | (v2 << 24)) - 16776961;
      }
    }
  }

  v4 = *a1;
  v5 = v4 >= 2;
  v6 = (v4 + 2147483646) & 0x7FFFFFFF;
  if (!v5)
  {
    v6 = -1;
  }

  return (v6 + 1);
}

uint64_t storeEnumTagSinglePayload for BannerAdData(uint64_t result, unsigned int a2, unsigned int a3)
{
  if ((a3 + 33554177) >> 24)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  if (a3 <= 0xFE)
  {
    v3 = 0;
  }

  if (a2 > 0xFE)
  {
    *result = a2 - 255;
    *(result + 2) = (a2 - 255) >> 16;
    if (v3)
    {
      v4 = ((a2 - 255) >> 24) + 1;
      if (v3 == 2)
      {
        *(result + 3) = v4;
      }

      else
      {
        *(result + 3) = v4;
      }
    }
  }

  else
  {
    if (!v3)
    {
      goto LABEL_10;
    }

    if (v3 == 2)
    {
      *(result + 3) = 0;
LABEL_10:
      if (!a2)
      {
        return result;
      }

LABEL_16:
      *result = a2 + 1;
      return result;
    }

    *(result + 3) = 0;
    if (a2)
    {
      goto LABEL_16;
    }
  }

  return result;
}

unint64_t sub_220259484()
{
  result = qword_27CF26798;
  if (!qword_27CF26798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF26798);
  }

  return result;
}

unint64_t sub_2202594DC()
{
  result = qword_281265DC8;
  if (!qword_281265DC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281265DC8);
  }

  return result;
}

unint64_t sub_220259534()
{
  result = qword_281265DD0;
  if (!qword_281265DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281265DD0);
  }

  return result;
}

uint64_t sub_220259588(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x617265746E497369 && a2 == 0xED00006576697463;
  if (v4 || (sub_220370048() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6F6C6E776F447369 && a2 == 0xEE00656C62616461 || (sub_220370048() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6F656469567369 && a2 == 0xE700000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_220370048();

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

StocksAnalytics::PurchaseType_optional __swiftcall PurchaseType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_22036FE78();

  v5 = 7;
  if (v3 < 7)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t PurchaseType.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x6E776F6E6B6E75;
  v3 = 0x7748656C646E7562;
  if (v1 != 5)
  {
    v3 = 0x72756769666E6F63;
  }

  v4 = 0x656C646E754273;
  if (v1 != 3)
  {
    v4 = 0x43656C646E754273;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x6574726143616C61;
  if (v1 != 1)
  {
    v5 = 0x656C646E7562;
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

unint64_t sub_22025980C()
{
  result = qword_27CF267A0;
  if (!qword_27CF267A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF267A0);
  }

  return result;
}

uint64_t sub_22025986C()
{
  *v0;
  *v0;
  *v0;
  sub_22036FB08();
}

void sub_2202599A4(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x6E776F6E6B6E75;
  v5 = 0xE900000000000064;
  v6 = 0x7748656C646E7562;
  if (v2 != 5)
  {
    v6 = 0x72756769666E6F63;
    v5 = 0xEC000000656C6261;
  }

  v7 = 0xE700000000000000;
  v8 = 0x656C646E754273;
  if (v2 != 3)
  {
    v8 = 0x43656C646E754273;
    v7 = 0xEE00726569727261;
  }

  if (*v1 <= 4u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE800000000000000;
  v10 = 0x6574726143616C61;
  if (v2 != 1)
  {
    v10 = 0x656C646E7562;
    v9 = 0xE600000000000000;
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

unint64_t sub_220259B58()
{
  result = qword_281265D40;
  if (!qword_281265D40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281265D40);
  }

  return result;
}

uint64_t AdGroupData.init(groupData:)@<X0>(char *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = *(a1 + 2);
  v5 = *(a1 + 5);

  *a2 = v3;
  return result;
}

StocksAnalytics::StoreKitError_optional __swiftcall StoreKitError.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_220370078();

  v5 = 0;
  v6 = 3;
  switch(v3)
  {
    case 0:
      goto LABEL_11;
    case 1:
      v5 = 1;
      goto LABEL_11;
    case 2:
      v5 = 2;
LABEL_11:
      v6 = v5;
      break;
    case 3:
      break;
    case 4:
      v6 = 4;
      break;
    case 5:
      v6 = 5;
      break;
    case 6:
      v6 = 6;
      break;
    case 7:
      v6 = 7;
      break;
    case 8:
      v6 = 8;
      break;
    case 9:
      v6 = 9;
      break;
    case 10:
      v6 = 10;
      break;
    case 11:
      v6 = 11;
      break;
    case 12:
      v6 = 12;
      break;
    case 13:
      v6 = 13;
      break;
    case 14:
      v6 = 14;
      break;
    case 15:
      v6 = 15;
      break;
    case 16:
      v6 = 16;
      break;
    case 17:
      v6 = 17;
      break;
    case 18:
      v6 = 18;
      break;
    case 19:
      v6 = 19;
      break;
    case 20:
      v6 = 20;
      break;
    default:
      v6 = 21;
      break;
  }

  *v2 = v6;
  return result;
}

unint64_t StoreKitError.rawValue.getter()
{
  result = 0x6E776F6E6B6E75;
  switch(*v0)
  {
    case 1:
      result = 0x6E49746E65696C63;
      break;
    case 2:
      result = 0xD000000000000010;
      break;
    case 3:
      result = 0x49746E656D796170;
      break;
    case 4:
    case 0xC:
      result = 0xD000000000000011;
      break;
    case 5:
      result = 0xD000000000000018;
      break;
    case 6:
      result = 0xD00000000000001CLL;
      break;
    case 7:
      result = 0xD000000000000023;
      break;
    case 8:
    case 0x13:
      result = 0xD000000000000013;
      break;
    case 9:
      result = 0xD00000000000001ELL;
      break;
    case 0xA:
      result = 0xD000000000000017;
      break;
    case 0xB:
      result = 0xD000000000000016;
      break;
    case 0xD:
      result = 0xD000000000000010;
      break;
    case 0xE:
    case 0xF:
      result = 0xD000000000000012;
      break;
    case 0x10:
      result = 0xD000000000000010;
      break;
    case 0x11:
      result = 0xD00000000000001BLL;
      break;
    case 0x12:
      result = 0x5479616C7265766FLL;
      break;
    case 0x14:
      result = 0x5264696C61766E69;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_220259F94(char *a1, char *a2)
{
  v10 = *a1;
  v9 = *a2;
  v2 = StoreKitError.rawValue.getter();
  v4 = v3;
  if (v2 == StoreKitError.rawValue.getter() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_220370048();
  }

  return v7 & 1;
}

unint64_t sub_22025A034()
{
  result = qword_27CF267A8;
  if (!qword_27CF267A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF267A8);
  }

  return result;
}

uint64_t sub_22025A088()
{
  v1 = *v0;
  sub_220370108();
  StoreKitError.rawValue.getter();
  sub_22036FB08();

  return sub_220370128();
}

uint64_t sub_22025A0F0()
{
  v2 = *v0;
  StoreKitError.rawValue.getter();
  sub_22036FB08();
}

uint64_t sub_22025A154()
{
  v1 = *v0;
  sub_220370108();
  StoreKitError.rawValue.getter();
  sub_22036FB08();

  return sub_220370128();
}

unint64_t sub_22025A1C4@<X0>(unint64_t *a1@<X8>)
{
  result = StoreKitError.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for StoreKitError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xEC)
  {
    goto LABEL_17;
  }

  if (a2 + 20 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 20) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 20;
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

      return (*a1 | (v4 << 8)) - 20;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 20;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x15;
  v8 = v6 - 21;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for StoreKitError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 20 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 20) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xEC)
  {
    v4 = 0;
  }

  if (a2 > 0xEB)
  {
    v5 = ((a2 - 236) >> 8) + 1;
    *result = a2 + 20;
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
    *result = a2 + 20;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_22025A3EC()
{
  result = qword_27CF267B0;
  if (!qword_27CF267B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF267B0);
  }

  return result;
}

uint64_t sub_22025A508()
{
  v0 = sub_22036F118();
  __swift_allocate_value_buffer(v0, qword_281264710);
  __swift_project_value_buffer(v0, qword_281264710);
  return sub_22036F108();
}

uint64_t WatchListViewEvent.eventData.setter(uint64_t a1)
{
  sub_220230578();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t WatchListViewEvent.timedData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for WatchListViewEvent(0) + 20);
  sub_220230718();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t WatchListViewEvent.watchedSymbolListData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for WatchListViewEvent(0) + 24);
  sub_22025AEB0(0, &qword_281266770, sub_22023D918, sub_22023D96C);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t WatchListViewEvent.watchedSymbolListData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for WatchListViewEvent(0) + 24);
  sub_22025AEB0(0, &qword_281266770, sub_22023D918, sub_22023D96C);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t WatchListViewEvent.symbolPerfData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for WatchListViewEvent(0) + 28);
  sub_22025AEB0(0, &qword_2812667F8, sub_22020218C, sub_2202021E4);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t WatchListViewEvent.symbolPerfData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for WatchListViewEvent(0) + 28);
  sub_22025AEB0(0, &qword_2812667F8, sub_22020218C, sub_2202021E4);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t WatchListViewEvent.viewEndData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for WatchListViewEvent(0) + 32);
  sub_22025AEB0(0, &qword_281266840, sub_220231080, sub_2202310D4);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t WatchListViewEvent.viewEndData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for WatchListViewEvent(0) + 32);
  sub_22025AEB0(0, &qword_281266840, sub_220231080, sub_2202310D4);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t WatchListViewEvent.watchlistData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for WatchListViewEvent(0) + 36);
  sub_22025AEB0(0, &qword_281266810, sub_220237C1C, sub_220237C70);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t WatchListViewEvent.watchlistData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for WatchListViewEvent(0) + 36);
  sub_22025AEB0(0, &qword_281266810, sub_220237C1C, sub_220237C70);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t WatchListViewEvent.watchlistAgeData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for WatchListViewEvent(0) + 40);
  sub_22025AEB0(0, &qword_2812667B8, sub_22025AF2C, sub_22025AF80);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

void sub_22025AEB0(uint64_t a1, unint64_t *a2, void (*a3)(void), void (*a4)(void))
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

unint64_t sub_22025AF2C()
{
  result = qword_281264E60;
  if (!qword_281264E60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281264E60);
  }

  return result;
}

unint64_t sub_22025AF80()
{
  result = qword_281264E68;
  if (!qword_281264E68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281264E68);
  }

  return result;
}

uint64_t WatchListViewEvent.watchlistAgeData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for WatchListViewEvent(0) + 40);
  sub_22025AEB0(0, &qword_2812667B8, sub_22025AF2C, sub_22025AF80);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t WatchListViewEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CEACF8];
  sub_220230578();
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for WatchListViewEvent(0);
  v5 = v4[5];
  sub_220230718();
  (*(*(v6 - 8) + 104))(a1 + v5, v2, v6);
  v7 = v4[6];
  sub_22025AEB0(0, &qword_281266770, sub_22023D918, sub_22023D96C);
  (*(*(v8 - 8) + 104))(a1 + v7, v2, v8);
  v9 = v4[7];
  sub_22025AEB0(0, &qword_2812667F8, sub_22020218C, sub_2202021E4);
  (*(*(v10 - 8) + 104))(a1 + v9, v2, v10);
  v11 = v4[8];
  sub_22025AEB0(0, &qword_281266840, sub_220231080, sub_2202310D4);
  (*(*(v12 - 8) + 104))(a1 + v11, v2, v12);
  v13 = v4[9];
  sub_22025AEB0(0, &qword_281266810, sub_220237C1C, sub_220237C70);
  (*(*(v14 - 8) + 104))(a1 + v13, v2, v14);
  v15 = v4[10];
  sub_22025AEB0(0, &qword_2812667B8, sub_22025AF2C, sub_22025AF80);
  v17 = *(*(v16 - 8) + 104);

  return v17(a1 + v15, v2, v16);
}

uint64_t sub_22025B434@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a1(0) + 20);
  v7 = a2(0);
  v8 = *(*(v7 - 8) + 16);

  return v8(a3, v3 + v6, v7);
}

uint64_t WatchListViewEvent.Model.watchedSymbolListData.getter@<X0>(void *a1@<X8>)
{
  *a1 = *(v1 + *(type metadata accessor for WatchListViewEvent.Model(0) + 24));
}

uint64_t WatchListViewEvent.Model.symbolPerfData.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for WatchListViewEvent.Model(0);
  *a1 = *(v1 + *(result + 28));
  return result;
}

uint64_t WatchListViewEvent.Model.viewEndData.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for WatchListViewEvent.Model(0);
  *a1 = *(v1 + *(result + 32));
  return result;
}

uint64_t WatchListViewEvent.Model.watchlistData.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for WatchListViewEvent.Model(0);
  *a1 = *(v1 + *(result + 36));
  return result;
}

double WatchListViewEvent.Model.watchlistAgeData.getter@<D0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for WatchListViewEvent.Model(0) + 40);
  *a1 = *v3;
  result = *(v3 + 16);
  *(a1 + 16) = result;
  return result;
}

__n128 WatchListViewEvent.Model.init(eventData:timedData:watchedSymbolListData:symbolPerfData:viewEndData:watchlistData:watchlistAgeData:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, char *a4@<X3>, char *a5@<X4>, char *a6@<X5>, __n128 *a7@<X6>, uint64_t a8@<X8>)
{
  v12 = *a3;
  v13 = *a4;
  v14 = *a5;
  v15 = *a6;
  v16 = sub_22036F388();
  v23 = *a7;
  v17 = a7[1].n128_u64[0];
  (*(*(v16 - 8) + 32))(a8, a1, v16);
  v18 = type metadata accessor for WatchListViewEvent.Model(0);
  v19 = v18[5];
  v20 = sub_22036F3C8();
  (*(*(v20 - 8) + 32))(a8 + v19, a2, v20);
  *(a8 + v18[6]) = v12;
  *(a8 + v18[7]) = v13;
  *(a8 + v18[8]) = v14;
  *(a8 + v18[9]) = v15;
  v21 = (a8 + v18[10]);
  result = v23;
  *v21 = v23;
  v21[1].n128_u64[0] = v17;
  return result;
}

unint64_t sub_22025B72C()
{
  v1 = *v0;
  v2 = 0x746144746E657665;
  v3 = 0x73696C6863746177;
  if (v1 != 5)
  {
    v3 = 0xD000000000000010;
  }

  v4 = 0x65506C6F626D7973;
  if (v1 != 3)
  {
    v4 = 0x44646E4577656976;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0xD000000000000015;
  if (v1 == 1)
  {
    v5 = 0x74614464656D6974;
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

uint64_t sub_22025B830@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22025CC10(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22025B858(uint64_t a1)
{
  v2 = sub_22025BC64();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22025B894(uint64_t a1)
{
  v2 = sub_22025BC64();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t WatchListViewEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  sub_22025C2C8(0, &qword_27CF267B8, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = &v16 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22025BC64();
  sub_220370168();
  LOBYTE(v16) = 0;
  sub_22036F388();
  sub_2202307E4(&qword_2812666A8, MEMORY[0x277CEAEB0]);
  sub_22036FFF8();
  if (!v2)
  {
    v12 = type metadata accessor for WatchListViewEvent.Model(0);
    v13 = v12[5];
    LOBYTE(v16) = 1;
    sub_22036F3C8();
    sub_2202307E4(&qword_281266690, MEMORY[0x277CEAED0]);
    sub_22036FFF8();
    *&v16 = *(v3 + v12[6]);
    v18 = 2;
    sub_22023D96C();

    sub_22036FFF8();

    LOBYTE(v16) = *(v3 + v12[7]);
    v18 = 3;
    sub_2202021E4();
    sub_22036FFF8();
    LOBYTE(v16) = *(v3 + v12[8]);
    v18 = 4;
    sub_2202310D4();
    sub_22036FFF8();
    LOBYTE(v16) = *(v3 + v12[9]);
    v18 = 5;
    sub_220237C70();
    sub_22036FFF8();
    v14 = (v3 + v12[10]);
    v16 = *v14;
    v17 = *(v14 + 2);
    v18 = 6;
    sub_22025AF80();
    sub_22036FFF8();
  }

  return (*(v7 + 8))(v10, v6);
}

unint64_t sub_22025BC64()
{
  result = qword_27CF267C0;
  if (!qword_27CF267C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF267C0);
  }

  return result;
}

uint64_t WatchListViewEvent.Model.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v32 = a2;
  v3 = sub_22036F3C8();
  v35 = *(v3 - 8);
  v36 = v3;
  v4 = *(v35 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22036F388();
  v34 = *(v7 - 8);
  v8 = *(v34 + 64);
  MEMORY[0x28223BE20](v7);
  v37 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22025C2C8(0, &qword_27CF267C8, MEMORY[0x277D844C8]);
  v39 = v10;
  v33 = *(v10 - 8);
  v11 = *(v33 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v31 - v12;
  v14 = type metadata accessor for WatchListViewEvent.Model(0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14);
  v17 = &v31 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22025BC64();
  v38 = v13;
  v19 = v40;
  sub_220370148();
  if (v19)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v20 = v6;
  v31 = v14;
  v22 = v33;
  v21 = v34;
  v40 = a1;
  v23 = v35;
  v24 = v36;
  LOBYTE(v41) = 0;
  sub_2202307E4(&qword_2812666A0, MEMORY[0x277CEAEB0]);
  sub_22036FF28();
  v25 = *(v21 + 32);
  v26 = v17;
  v27 = v37;
  v37 = v7;
  v25(v17, v27);
  LOBYTE(v41) = 1;
  sub_2202307E4(&qword_281266688, MEMORY[0x277CEAED0]);
  sub_22036FF28();
  v28 = v31;
  (*(v23 + 32))(v26 + v31[5], v20, v24);
  v43 = 2;
  sub_22023D918();
  sub_22036FF28();
  *(v26 + v28[6]) = v41;
  v43 = 3;
  sub_22020218C();
  sub_22036FF28();
  *(v26 + v28[7]) = v41;
  v43 = 4;
  sub_220231080();
  sub_22036FF28();
  *(v26 + v28[8]) = v41;
  v43 = 5;
  sub_220237C1C();
  sub_22036FF28();
  *(v26 + v28[9]) = v41;
  v43 = 6;
  sub_22025AF2C();
  sub_22036FF28();
  (*(v22 + 8))(v38, v39);
  v29 = v26 + v28[10];
  *v29 = v41;
  *(v29 + 16) = v42;
  sub_22025C32C(v26, v32);
  __swift_destroy_boxed_opaque_existential_1(v40);
  return sub_22025C390(v26);
}

void sub_22025C2C8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_22025BC64();
    v7 = a3(a1, &type metadata for WatchListViewEvent.Model.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_22025C32C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WatchListViewEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22025C390(uint64_t a1)
{
  v2 = type metadata accessor for WatchListViewEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22025C4C4@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *MEMORY[0x277CEACF8];
  sub_220230578();
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = a1[5];
  sub_220230718();
  (*(*(v7 - 8) + 104))(a2 + v6, v4, v7);
  v8 = a1[6];
  sub_22025AEB0(0, &qword_281266770, sub_22023D918, sub_22023D96C);
  (*(*(v9 - 8) + 104))(a2 + v8, v4, v9);
  v10 = a1[7];
  sub_22025AEB0(0, &qword_2812667F8, sub_22020218C, sub_2202021E4);
  (*(*(v11 - 8) + 104))(a2 + v10, v4, v11);
  v12 = a1[8];
  sub_22025AEB0(0, &qword_281266840, sub_220231080, sub_2202310D4);
  (*(*(v13 - 8) + 104))(a2 + v12, v4, v13);
  v14 = a1[9];
  sub_22025AEB0(0, &qword_281266810, sub_220237C1C, sub_220237C70);
  (*(*(v15 - 8) + 104))(a2 + v14, v4, v15);
  v16 = a1[10];
  sub_22025AEB0(0, &qword_2812667B8, sub_22025AF2C, sub_22025AF80);
  v18 = *(*(v17 - 8) + 104);

  return v18(a2 + v16, v4, v17);
}

void sub_22025C804()
{
  sub_220230578();
  if (v0 <= 0x3F)
  {
    sub_220230718();
    if (v1 <= 0x3F)
    {
      sub_22025AEB0(319, &qword_281266770, sub_22023D918, sub_22023D96C);
      if (v2 <= 0x3F)
      {
        sub_22025AEB0(319, &qword_2812667F8, sub_22020218C, sub_2202021E4);
        if (v3 <= 0x3F)
        {
          sub_22025AEB0(319, &qword_281266840, sub_220231080, sub_2202310D4);
          if (v4 <= 0x3F)
          {
            sub_22025AEB0(319, &qword_281266810, sub_220237C1C, sub_220237C70);
            if (v5 <= 0x3F)
            {
              sub_22025AEB0(319, &qword_2812667B8, sub_22025AF2C, sub_22025AF80);
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

uint64_t sub_22025CA40()
{
  result = sub_22036F388();
  if (v1 <= 0x3F)
  {
    result = sub_22036F3C8();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_22025CB0C()
{
  result = qword_27CF267E0;
  if (!qword_27CF267E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF267E0);
  }

  return result;
}

unint64_t sub_22025CB64()
{
  result = qword_27CF267E8;
  if (!qword_27CF267E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF267E8);
  }

  return result;
}

unint64_t sub_22025CBBC()
{
  result = qword_27CF267F0;
  if (!qword_27CF267F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF267F0);
  }

  return result;
}

uint64_t sub_22025CC10(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746144746E657665 && a2 == 0xE900000000000061;
  if (v4 || (sub_220370048() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x74614464656D6974 && a2 == 0xE900000000000061 || (sub_220370048() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000015 && 0x80000002203903B0 == a2 || (sub_220370048() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x65506C6F626D7973 && a2 == 0xEE00617461446672 || (sub_220370048() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x44646E4577656976 && a2 == 0xEB00000000617461 || (sub_220370048() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x73696C6863746177 && a2 == 0xED00006174614474 || (sub_220370048() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000010 && 0x80000002203907E0 == a2)
  {

    return 6;
  }

  else
  {
    v6 = sub_220370048();

    if (v6)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

uint64_t sub_22025CEE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000016 && 0x8000000220390870 == a2)
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

uint64_t sub_22025CF78(uint64_t a1)
{
  v2 = sub_22025D138();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22025CFB4(uint64_t a1)
{
  v2 = sub_22025D138();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ConsentScreenActionData.encode(to:)(void *a1)
{
  sub_22025D310(0, &qword_27CF267F8, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  v8 = &v12 - v7;
  v9 = *v1;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22025D138();
  sub_220370168();
  sub_22036FFC8();
  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_22025D138()
{
  result = qword_27CF26800;
  if (!qword_27CF26800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF26800);
  }

  return result;
}

uint64_t ConsentScreenActionData.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  sub_22025D310(0, &qword_27CF26808, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = &v14 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22025D138();
  sub_220370148();
  if (!v2)
  {
    v12 = sub_22036FEF8();
    (*(v7 + 8))(v10, v6);
    *a2 = v12 & 1;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_22025D310(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_22025D138();
    v7 = a3(a1, &type metadata for ConsentScreenActionData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_22025D378()
{
  result = qword_27CF26810;
  if (!qword_27CF26810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF26810);
  }

  return result;
}

unint64_t sub_22025D3D0()
{
  result = qword_27CF26818;
  if (!qword_27CF26818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF26818);
  }

  return result;
}

uint64_t sub_22025D43C(void *a1)
{
  sub_22025D310(0, &qword_27CF267F8, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  v8 = &v12 - v7;
  v9 = *v1;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22025D138();
  sub_220370168();
  sub_22036FFC8();
  return (*(v5 + 8))(v8, v4);
}

uint64_t getEnumTagSinglePayload for ConsentScreenActionData(unsigned __int8 *a1, unsigned int a2)
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
  v8 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

unint64_t sub_22025D648()
{
  result = qword_27CF26820;
  if (!qword_27CF26820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF26820);
  }

  return result;
}

unint64_t sub_22025D6A0()
{
  result = qword_27CF26828;
  if (!qword_27CF26828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF26828);
  }

  return result;
}

unint64_t sub_22025D6F8()
{
  result = qword_27CF26830;
  if (!qword_27CF26830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF26830);
  }

  return result;
}

uint64_t sub_22025D814()
{
  v0 = sub_22036F118();
  __swift_allocate_value_buffer(v0, qword_27CF26868);
  __swift_project_value_buffer(v0, qword_27CF26868);
  return sub_22036F108();
}

uint64_t ArticleScrollEvent.eventData.setter(uint64_t a1)
{
  sub_220230578();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t ArticleScrollEvent.timedData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ArticleScrollEvent(0) + 20);
  sub_220230718();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ArticleScrollEvent.newsArticleData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ArticleScrollEvent(0) + 24);
  sub_22025ECCC(0, &qword_2812667E0, sub_22022ED48, sub_22022EDA0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ArticleScrollEvent.newsArticleData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ArticleScrollEvent(0) + 24);
  sub_22025ECCC(0, &qword_2812667E0, sub_22022ED48, sub_22022EDA0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ArticleScrollEvent.feedData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ArticleScrollEvent(0) + 28);
  sub_22025ECCC(0, &qword_281266730, sub_2201FBCC4, sub_2201FBD1C);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ArticleScrollEvent.feedData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ArticleScrollEvent(0) + 28);
  sub_22025ECCC(0, &qword_281266730, sub_2201FBCC4, sub_2201FBD1C);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ArticleScrollEvent.groupData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ArticleScrollEvent(0) + 32);
  sub_22025ECCC(0, &qword_281266718, sub_220236C88, sub_220236CDC);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ArticleScrollEvent.groupData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ArticleScrollEvent(0) + 32);
  sub_22025ECCC(0, &qword_281266718, sub_220236C88, sub_220236CDC);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ArticleScrollEvent.viewData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ArticleScrollEvent(0) + 36);
  sub_22025ECCC(0, &qword_281266728, sub_2202020B8, sub_220202110);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ArticleScrollEvent.viewData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ArticleScrollEvent(0) + 36);
  sub_22025ECCC(0, &qword_281266728, sub_2202020B8, sub_220202110);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ArticleScrollEvent.scrollStartData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ArticleScrollEvent(0) + 40);
  sub_22025ECCC(0, &qword_281266B00, sub_22025E1BC, sub_22025E210);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

unint64_t sub_22025E1BC()
{
  result = qword_281266B08;
  if (!qword_281266B08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281266B08);
  }

  return result;
}

unint64_t sub_22025E210()
{
  result = qword_281266B10;
  if (!qword_281266B10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281266B10);
  }

  return result;
}

uint64_t ArticleScrollEvent.scrollStartData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ArticleScrollEvent(0) + 40);
  sub_22025ECCC(0, &qword_281266B00, sub_22025E1BC, sub_22025E210);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ArticleScrollEvent.scrollEndData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ArticleScrollEvent(0) + 44);
  sub_22025ECCC(0, &qword_281266B18, sub_22025E414, sub_22025E468);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

unint64_t sub_22025E414()
{
  result = qword_281266B20;
  if (!qword_281266B20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281266B20);
  }

  return result;
}

unint64_t sub_22025E468()
{
  result = qword_281266B28[0];
  if (!qword_281266B28[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_281266B28);
  }

  return result;
}

uint64_t ArticleScrollEvent.scrollEndData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ArticleScrollEvent(0) + 44);
  sub_22025ECCC(0, &qword_281266B18, sub_22025E414, sub_22025E468);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ArticleScrollEvent.articleScienceData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ArticleScrollEvent(0) + 48);
  sub_22025ECCC(0, &qword_2812667A0, sub_22025E66C, sub_22025E6C0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

unint64_t sub_22025E66C()
{
  result = qword_281264A78;
  if (!qword_281264A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281264A78);
  }

  return result;
}

unint64_t sub_22025E6C0()
{
  result = qword_281264A80;
  if (!qword_281264A80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281264A80);
  }

  return result;
}

uint64_t ArticleScrollEvent.articleScienceData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ArticleScrollEvent(0) + 48);
  sub_22025ECCC(0, &qword_2812667A0, sub_22025E66C, sub_22025E6C0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ArticleScrollEvent.userArticleContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ArticleScrollEvent(0) + 52);
  sub_22025ECCC(0, &qword_281266760, sub_22025E8C4, sub_22025E918);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

unint64_t sub_22025E8C4()
{
  result = qword_281263540;
  if (!qword_281263540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281263540);
  }

  return result;
}

unint64_t sub_22025E918()
{
  result = qword_281263548;
  if (!qword_281263548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281263548);
  }

  return result;
}

uint64_t ArticleScrollEvent.userArticleContextData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ArticleScrollEvent(0) + 52);
  sub_22025ECCC(0, &qword_281266760, sub_22025E8C4, sub_22025E918);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ArticleScrollEvent.issueData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ArticleScrollEvent(0) + 56);
  sub_22025ECCC(0, &qword_281266710, sub_2202376F0, sub_220237744);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ArticleScrollEvent.issueData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ArticleScrollEvent(0) + 56);
  sub_22025ECCC(0, &qword_281266710, sub_2202376F0, sub_220237744);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ArticleScrollEvent.channelData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ArticleScrollEvent(0) + 60);
  sub_22025ECCC(0, &qword_281266858, sub_220236A30, sub_220236A84);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

void sub_22025ECCC(uint64_t a1, unint64_t *a2, void (*a3)(void), void (*a4)(void))
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

uint64_t ArticleScrollEvent.channelData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ArticleScrollEvent(0) + 60);
  sub_22025ECCC(0, &qword_281266858, sub_220236A30, sub_220236A84);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ArticleScrollEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CEACF8];
  sub_220230578();
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for ArticleScrollEvent(0);
  v5 = v4[5];
  sub_220230718();
  (*(*(v6 - 8) + 104))(a1 + v5, v2, v6);
  v7 = v4[6];
  sub_22025ECCC(0, &qword_2812667E0, sub_22022ED48, sub_22022EDA0);
  (*(*(v8 - 8) + 104))(a1 + v7, v2, v8);
  v9 = v4[7];
  v10 = *MEMORY[0x277CEACF0];
  sub_22025ECCC(0, &qword_281266730, sub_2201FBCC4, sub_2201FBD1C);
  (*(*(v11 - 8) + 104))(a1 + v9, v10, v11);
  v12 = v4[8];
  sub_22025ECCC(0, &qword_281266718, sub_220236C88, sub_220236CDC);
  (*(*(v13 - 8) + 104))(a1 + v12, v10, v13);
  v14 = v4[9];
  sub_22025ECCC(0, &qword_281266728, sub_2202020B8, sub_220202110);
  (*(*(v15 - 8) + 104))(a1 + v14, v2, v15);
  v16 = v4[10];
  sub_22025ECCC(0, &qword_281266B00, sub_22025E1BC, sub_22025E210);
  (*(*(v17 - 8) + 104))(a1 + v16, v2, v17);
  v18 = v4[11];
  sub_22025ECCC(0, &qword_281266B18, sub_22025E414, sub_22025E468);
  (*(*(v19 - 8) + 104))(a1 + v18, v2, v19);
  v20 = v4[12];
  sub_22025ECCC(0, &qword_2812667A0, sub_22025E66C, sub_22025E6C0);
  (*(*(v21 - 8) + 104))(a1 + v20, v10, v21);
  v22 = v4[13];
  sub_22025ECCC(0, &qword_281266760, sub_22025E8C4, sub_22025E918);
  (*(*(v23 - 8) + 104))(a1 + v22, v2, v23);
  v24 = v4[14];
  sub_22025ECCC(0, &qword_281266710, sub_2202376F0, sub_220237744);
  (*(*(v25 - 8) + 104))(a1 + v24, v10, v25);
  v26 = v4[15];
  sub_22025ECCC(0, &qword_281266858, sub_220236A30, sub_220236A84);
  v28 = *(*(v27 - 8) + 104);

  return v28(a1 + v26, v2, v27);
}

uint64_t sub_22025F414@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a1(0) + 20);
  v7 = a2(0);
  v8 = *(*(v7 - 8) + 16);

  return v8(a3, v3 + v6, v7);
}

uint64_t ArticleScrollEvent.Model.newsArticleData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for ArticleScrollEvent.Model(0) + 24);
  v4 = *(v3 + 48);
  v11 = *(v3 + 32);
  v12 = v4;
  v13 = *(v3 + 64);
  v5 = v13;
  v6 = *(v3 + 16);
  v10[0] = *v3;
  v7 = v10[0];
  v10[1] = v6;
  *(a1 + 32) = v11;
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *a1 = v7;
  *(a1 + 16) = v6;
  return sub_22022ECDC(v10, v9);
}

uint64_t ArticleScrollEvent.Model.feedData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for ArticleScrollEvent.Model(0) + 28);
  v4 = *(v3 + 16);
  *a1 = *v3;
  *(a1 + 16) = v4;
}

uint64_t ArticleScrollEvent.Model.groupData.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for ArticleScrollEvent.Model(0) + 32));
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  v8 = v3[4];
  v9 = v3[5];
  *a1 = *v3;
  a1[1] = v5;
  a1[2] = v6;
  a1[3] = v7;
  a1[4] = v8;
  a1[5] = v9;

  return sub_22023846C(v4, v5, v6);
}

uint64_t ArticleScrollEvent.Model.viewData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for ArticleScrollEvent.Model(0) + 36));
  v5 = *v3;
  v4 = v3[1];
  LOWORD(v3) = *(v3 + 8);
  *a1 = v5;
  *(a1 + 8) = v4;
  *(a1 + 16) = v3;
}

float ArticleScrollEvent.Model.scrollStartData.getter@<S0>(float *a1@<X8>)
{
  result = *(v1 + *(type metadata accessor for ArticleScrollEvent.Model(0) + 40));
  *a1 = result;
  return result;
}

double ArticleScrollEvent.Model.scrollEndData.getter@<D0>(double *a1@<X8>)
{
  result = *(v1 + *(type metadata accessor for ArticleScrollEvent.Model(0) + 44));
  *a1 = result;
  return result;
}

uint64_t ArticleScrollEvent.Model.articleScienceData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for ArticleScrollEvent.Model(0) + 48);
  v4 = *(v3 + 144);
  v5 = *(v3 + 176);
  v32 = *(v3 + 160);
  v33 = v5;
  v6 = *(v3 + 80);
  v7 = *(v3 + 112);
  v28 = *(v3 + 96);
  v8 = v28;
  v29 = v7;
  v9 = *(v3 + 112);
  v10 = *(v3 + 144);
  v30 = *(v3 + 128);
  v11 = v30;
  v31 = v10;
  v12 = *(v3 + 48);
  v13 = *(v3 + 80);
  v26 = *(v3 + 64);
  v14 = v26;
  v27 = v13;
  v15 = *(v3 + 16);
  v16 = *(v3 + 48);
  v24 = *(v3 + 32);
  v17 = v24;
  v25 = v16;
  v18 = *(v3 + 16);
  v23[0] = *v3;
  v19 = v23[0];
  v23[1] = v18;
  v20 = *(v3 + 176);
  *(a1 + 160) = v32;
  *(a1 + 176) = v20;
  *(a1 + 96) = v8;
  *(a1 + 112) = v9;
  *(a1 + 128) = v11;
  *(a1 + 144) = v4;
  *(a1 + 32) = v17;
  *(a1 + 48) = v12;
  *(a1 + 64) = v14;
  *(a1 + 80) = v6;
  v34 = *(v3 + 192);
  *(a1 + 192) = *(v3 + 192);
  *a1 = v19;
  *(a1 + 16) = v15;
  return sub_22025F74C(v23, v22);
}

uint64_t sub_22025F74C(uint64_t a1, uint64_t a2)
{
  sub_22023A8F4(0, &qword_27CF26880);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t ArticleScrollEvent.Model.userArticleContextData.getter@<X0>(_WORD *a1@<X8>)
{
  result = type metadata accessor for ArticleScrollEvent.Model(0);
  *a1 = *(v1 + *(result + 52));
  return result;
}

uint64_t ArticleScrollEvent.Model.issueData.getter@<X0>(void *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for ArticleScrollEvent.Model(0) + 56));
  v4 = v3[1];
  *a1 = *v3;
  a1[1] = v4;
}

uint64_t ArticleScrollEvent.Model.channelData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for ArticleScrollEvent.Model(0) + 60));
  v5 = *v3;
  v4 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  v8 = *(v3 + 32);
  LOBYTE(v3) = *(v3 + 33);
  *a1 = v5;
  *(a1 + 8) = v4;
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  *(a1 + 32) = v8;
  *(a1 + 33) = v3;
}

__n128 ArticleScrollEvent.Model.init(eventData:timedData:newsArticleData:feedData:groupData:viewData:scrollStartData:scrollEndData:articleScienceData:userArticleContextData:issueData:channelData:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, __int128 *a4@<X3>, __int128 *a5@<X4>, uint64_t *a6@<X5>, int *a7@<X6>, uint64_t *a8@<X7>, uint64_t a9@<X8>, uint64_t a10, __int16 *a11, uint64_t *a12, __n128 *a13)
{
  v46 = *a4;
  v19 = *(a4 + 2);
  v20 = *(a5 + 4);
  v21 = *(a5 + 5);
  v49 = *a6;
  v48 = a6[1];
  v47 = *(a6 + 8);
  v22 = *a7;
  v50 = *a11;
  v51 = a12[1];
  v52 = *a12;
  v57 = *a13;
  v55 = a13[1].n128_u64[1];
  v56 = a13[1].n128_u64[0];
  v53 = a13[2].n128_u8[1];
  v54 = a13[2].n128_u8[0];
  v23 = sub_22036F388();
  v24 = *a8;
  v44 = a5[1];
  v45 = *a5;
  (*(*(v23 - 8) + 32))(a9, a1, v23);
  v25 = type metadata accessor for ArticleScrollEvent.Model(0);
  v26 = v25[5];
  v27 = sub_22036F3C8();
  (*(*(v27 - 8) + 32))(a9 + v26, a2, v27);
  v28 = a9 + v25[6];
  v29 = *(a3 + 48);
  *(v28 + 32) = *(a3 + 32);
  *(v28 + 48) = v29;
  *(v28 + 64) = *(a3 + 64);
  v30 = *(a3 + 16);
  *v28 = *a3;
  *(v28 + 16) = v30;
  v31 = a9 + v25[7];
  *v31 = v46;
  *(v31 + 16) = v19;
  v32 = a9 + v25[8];
  *v32 = v45;
  *(v32 + 16) = v44;
  *(v32 + 32) = v20;
  *(v32 + 40) = v21;
  v33 = a9 + v25[9];
  *v33 = v49;
  *(v33 + 8) = v48;
  *(v33 + 16) = v47;
  *(a9 + v25[10]) = v22;
  *(a9 + v25[11]) = v24;
  v34 = a9 + v25[12];
  v35 = *(a10 + 176);
  *(v34 + 160) = *(a10 + 160);
  *(v34 + 176) = v35;
  *(v34 + 192) = *(a10 + 192);
  v36 = *(a10 + 112);
  *(v34 + 96) = *(a10 + 96);
  *(v34 + 112) = v36;
  v37 = *(a10 + 144);
  *(v34 + 128) = *(a10 + 128);
  *(v34 + 144) = v37;
  v38 = *(a10 + 48);
  *(v34 + 32) = *(a10 + 32);
  *(v34 + 48) = v38;
  v39 = *(a10 + 80);
  *(v34 + 64) = *(a10 + 64);
  *(v34 + 80) = v39;
  v40 = *(a10 + 16);
  *v34 = *a10;
  *(v34 + 16) = v40;
  *(a9 + v25[13]) = v50;
  v41 = (a9 + v25[14]);
  *v41 = v52;
  v41[1] = v51;
  v42 = (a9 + v25[15]);
  result = v57;
  *v42 = v57;
  v42[1].n128_u64[0] = v56;
  v42[1].n128_u64[1] = v55;
  v42[2].n128_u8[0] = v54;
  v42[2].n128_u8[1] = v53;
  return result;
}

unint64_t sub_22025FAEC(unsigned __int8 a1)
{
  if (a1 > 5u)
  {
    v6 = 0xD000000000000016;
    v7 = 0x7461446575737369;
    if (a1 != 10)
    {
      v7 = 0x446C656E6E616863;
    }

    if (a1 != 9)
    {
      v6 = v7;
    }

    v8 = 0x74536C6C6F726373;
    v9 = 0x6E456C6C6F726373;
    if (a1 != 7)
    {
      v9 = 0xD000000000000012;
    }

    if (a1 != 6)
    {
      v8 = v9;
    }

    if (a1 <= 8u)
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
    v1 = 0x746144746E657665;
    v2 = 0x6174614464656566;
    v3 = 0x74614470756F7267;
    if (a1 != 4)
    {
      v3 = 0x6174614477656976;
    }

    if (a1 != 3)
    {
      v2 = v3;
    }

    v4 = 0x74614464656D6974;
    if (a1 != 1)
    {
      v4 = 0x697472417377656ELL;
    }

    if (a1)
    {
      v1 = v4;
    }

    if (a1 <= 2u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_22025FCA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_220261EE8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22025FCD4(uint64_t a1)
{
  v2 = sub_220260488();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22025FD10(uint64_t a1)
{
  v2 = sub_220260488();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ArticleScrollEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  sub_220260FC4(0, &qword_27CF26888, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = &v52 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220260488();
  sub_220370168();
  LOBYTE(v76) = 0;
  sub_22036F388();
  sub_2202307E4(&qword_2812666A8, MEMORY[0x277CEAEB0]);
  sub_22036FFF8();
  if (!v2)
  {
    v12 = type metadata accessor for ArticleScrollEvent.Model(0);
    v13 = v12[5];
    v103 = 1;
    sub_22036F3C8();
    sub_2202307E4(&qword_281266690, MEMORY[0x277CEAED0]);
    sub_22036FFF8();
    v14 = v3 + v12[6];
    v15 = *(v14 + 16);
    v16 = *(v14 + 48);
    v100 = *(v14 + 32);
    v101 = v16;
    v17 = *(v14 + 16);
    v99[0] = *v14;
    v99[1] = v17;
    v18 = *(v14 + 48);
    v96 = v100;
    v97 = v18;
    v102 = *(v14 + 64);
    v98 = *(v14 + 64);
    v94 = v99[0];
    v95 = v15;
    v93 = 2;
    sub_22022ECDC(v99, &v76);
    sub_22022EDA0();
    sub_22036FFF8();
    v91[2] = v96;
    v91[3] = v97;
    v92 = v98;
    v91[0] = v94;
    v91[1] = v95;
    sub_22022ED14(v91);
    v19 = (v3 + v12[7]);
    v20 = *(v19 + 2);
    v76 = *v19;
    *&v77 = v20;
    LOBYTE(v63) = 3;
    sub_2201FBD1C();

    sub_22036FF88();

    v21 = (v3 + v12[8]);
    v22 = v21[1];
    v23 = v21[2];
    v24 = v21[3];
    v25 = v21[4];
    v26 = v21[5];
    *&v76 = *v21;
    *(&v76 + 1) = v22;
    *&v77 = v23;
    *(&v77 + 1) = v24;
    *&v78 = v25;
    *(&v78 + 1) = v26;
    LOBYTE(v63) = 4;
    sub_22023846C(v76, v22, v23);
    sub_220236CDC();
    sub_22036FF88();
    sub_2202391D8(v76, *(&v76 + 1), v77);
    v28 = (v3 + v12[9]);
    v29 = *v28;
    v30 = v28[1];
    LOWORD(v28) = *(v28 + 8);
    *&v76 = v29;
    *(&v76 + 1) = v30;
    LOWORD(v77) = v28;
    LOBYTE(v63) = 5;
    sub_220202110();

    sub_22036FFF8();

    LODWORD(v76) = *(v3 + v12[10]);
    LOBYTE(v63) = 6;
    sub_22025E210();
    sub_22036FFF8();
    v90 = *(v3 + v12[11]);
    v89 = 7;
    sub_22025E468();
    sub_22036FFF8();
    v31 = (v3 + v12[12]);
    v32 = v31[9];
    v33 = v31[11];
    v86 = v31[10];
    v87 = v33;
    v34 = v31[5];
    v35 = v31[7];
    v82 = v31[6];
    v83 = v35;
    v36 = v31[7];
    v37 = v31[9];
    v84 = v31[8];
    v85 = v37;
    v38 = v31[1];
    v39 = v31[3];
    v78 = v31[2];
    v79 = v39;
    v40 = v31[3];
    v41 = v31[5];
    v80 = v31[4];
    v81 = v41;
    v42 = v31[1];
    v76 = *v31;
    v77 = v42;
    v43 = v31[11];
    v73 = v86;
    v74 = v43;
    v69 = v82;
    v70 = v36;
    v71 = v84;
    v72 = v32;
    v65 = v78;
    v66 = v40;
    v67 = v80;
    v68 = v34;
    v88 = *(v31 + 24);
    v75 = *(v31 + 24);
    v63 = v76;
    v64 = v38;
    v62 = 8;
    sub_22025F74C(&v76, v60);
    sub_22025E6C0();
    sub_22036FF88();
    v60[10] = v73;
    v60[11] = v74;
    v61 = v75;
    v60[6] = v69;
    v60[7] = v70;
    v60[8] = v71;
    v60[9] = v72;
    v60[2] = v65;
    v60[3] = v66;
    v60[4] = v67;
    v60[5] = v68;
    v60[0] = v63;
    v60[1] = v64;
    sub_2202604DC(v60);
    LOWORD(v53) = *(v3 + v12[13]);
    v59 = 9;
    sub_22025E918();
    sub_22036FFF8();
    v44 = (v3 + v12[14]);
    v45 = v44[1];
    v53 = *v44;
    v54 = v45;
    v59 = 10;
    sub_220237744();

    sub_22036FF88();

    v46 = (v3 + v12[15]);
    v47 = *v46;
    v48 = v46[1];
    v49 = v46[2];
    v50 = v46[3];
    v51 = *(v46 + 32);
    LOBYTE(v46) = *(v46 + 33);
    v53 = v47;
    v54 = v48;
    v55 = v49;
    v56 = v50;
    v57 = v51;
    v58 = v46;
    v59 = 11;
    sub_220236A84();

    sub_22036FFF8();
  }

  return (*(v7 + 8))(v10, v6);
}