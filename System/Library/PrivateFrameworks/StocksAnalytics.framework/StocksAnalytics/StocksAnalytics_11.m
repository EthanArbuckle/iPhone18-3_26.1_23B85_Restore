uint64_t EOAFeedViewEvent.viewData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for EOAFeedViewEvent(0) + 24);
  sub_2203242A8(0, &qword_281266728, sub_2202020B8, sub_220202110);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t EOAFeedViewEvent.viewData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for EOAFeedViewEvent(0) + 24);
  sub_2203242A8(0, &qword_281266728, sub_2202020B8, sub_220202110);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t EOAFeedViewEvent.feedData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for EOAFeedViewEvent(0) + 28);
  sub_2203242A8(0, &qword_281266730, sub_2201FBCC4, sub_2201FBD1C);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t EOAFeedViewEvent.feedData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for EOAFeedViewEvent(0) + 28);
  sub_2203242A8(0, &qword_281266730, sub_2201FBCC4, sub_2201FBD1C);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t EOAFeedViewEvent.orientationData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for EOAFeedViewEvent(0) + 32);
  sub_2203242A8(0, &qword_2812667D8, sub_2201F8808, sub_2201F8860);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t EOAFeedViewEvent.orientationData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for EOAFeedViewEvent(0) + 32);
  sub_2203242A8(0, &qword_2812667D8, sub_2201F8808, sub_2201F8860);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t EOAFeedViewEvent.hostArticleViewData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for EOAFeedViewEvent(0) + 36);
  sub_2203242A8(0, &qword_2812667E8, sub_220250F44, sub_220250F98);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t EOAFeedViewEvent.hostArticleViewData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for EOAFeedViewEvent(0) + 36);
  sub_2203242A8(0, &qword_2812667E8, sub_220250F44, sub_220250F98);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t EOAFeedViewEvent.hostArticleNewsArticleData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for EOAFeedViewEvent(0) + 40);
  sub_2203242A8(0, &qword_2812667E0, sub_22022ED48, sub_22022EDA0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t EOAFeedViewEvent.hostArticleNewsArticleData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for EOAFeedViewEvent(0) + 40);
  sub_2203242A8(0, &qword_2812667E0, sub_22022ED48, sub_22022EDA0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t EOAFeedViewEvent.hostArticleChannelData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for EOAFeedViewEvent(0) + 44);
  sub_2203242A8(0, &qword_281266858, sub_220236A30, sub_220236A84);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

void sub_2203242A8(uint64_t a1, unint64_t *a2, void (*a3)(void), void (*a4)(void))
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

uint64_t EOAFeedViewEvent.hostArticleChannelData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for EOAFeedViewEvent(0) + 44);
  sub_2203242A8(0, &qword_281266858, sub_220236A30, sub_220236A84);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t EOAFeedViewEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CEACF8];
  sub_220230578();
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for EOAFeedViewEvent(0);
  v5 = v4[5];
  sub_220230718();
  (*(*(v6 - 8) + 104))(a1 + v5, v2, v6);
  v7 = v4[6];
  sub_2203242A8(0, &qword_281266728, sub_2202020B8, sub_220202110);
  (*(*(v8 - 8) + 104))(a1 + v7, v2, v8);
  v9 = v4[7];
  sub_2203242A8(0, &qword_281266730, sub_2201FBCC4, sub_2201FBD1C);
  (*(*(v10 - 8) + 104))(a1 + v9, v2, v10);
  v11 = v4[8];
  sub_2203242A8(0, &qword_2812667D8, sub_2201F8808, sub_2201F8860);
  (*(*(v12 - 8) + 104))(a1 + v11, v2, v12);
  v13 = v4[9];
  sub_2203242A8(0, &qword_2812667E8, sub_220250F44, sub_220250F98);
  (*(*(v14 - 8) + 104))(a1 + v13, v2, v14);
  v15 = v4[10];
  sub_2203242A8(0, &qword_2812667E0, sub_22022ED48, sub_22022EDA0);
  (*(*(v16 - 8) + 104))(a1 + v15, v2, v16);
  v17 = v4[11];
  sub_2203242A8(0, &qword_281266858, sub_220236A30, sub_220236A84);
  v19 = *(*(v18 - 8) + 104);

  return v19(a1 + v17, v2, v18);
}

uint64_t sub_2203247FC@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a1(0) + 20);
  v7 = a2(0);
  v8 = *(*(v7 - 8) + 16);

  return v8(a3, v3 + v6, v7);
}

uint64_t EOAFeedViewEvent.Model.viewData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for EOAFeedViewEvent.Model(0) + 24));
  v5 = *v3;
  v4 = v3[1];
  LOWORD(v3) = *(v3 + 8);
  *a1 = v5;
  *(a1 + 8) = v4;
  *(a1 + 16) = v3;
}

uint64_t EOAFeedViewEvent.Model.feedData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for EOAFeedViewEvent.Model(0) + 28);
  v5 = *(v3 + 8);
  v4 = *(v3 + 16);
  *a1 = *v3;
  *(a1 + 8) = v5;
  *(a1 + 16) = v4;
}

uint64_t EOAFeedViewEvent.Model.orientationData.getter@<X0>(_WORD *a1@<X8>)
{
  result = type metadata accessor for EOAFeedViewEvent.Model(0);
  *a1 = *(v1 + *(result + 32));
  return result;
}

uint64_t EOAFeedViewEvent.Model.hostArticleViewData.getter@<X0>(void *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for EOAFeedViewEvent.Model(0) + 36));
  v4 = v3[1];
  *a1 = *v3;
  a1[1] = v4;
}

uint64_t EOAFeedViewEvent.Model.hostArticleNewsArticleData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for EOAFeedViewEvent.Model(0) + 40);
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

uint64_t EOAFeedViewEvent.Model.hostArticleChannelData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for EOAFeedViewEvent.Model(0) + 44));
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

__n128 EOAFeedViewEvent.Model.init(eventData:timedData:viewData:feedData:orientationData:hostArticleViewData:hostArticleNewsArticleData:hostArticleChannelData:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, char *a4@<X3>, __int16 *a5@<X4>, uint64_t *a6@<X5>, uint64_t a7@<X6>, __n128 *a8@<X7>, uint64_t a9@<X8>)
{
  v13 = *a3;
  v14 = a3[1];
  v15 = *(a3 + 8);
  v16 = *(a4 + 1);
  v17 = *(a4 + 2);
  v30 = *a4;
  v31 = *a5;
  v32 = a6[1];
  v33 = *a6;
  v38 = *a8;
  v36 = a8[1].n128_u64[1];
  v37 = a8[1].n128_u64[0];
  v34 = a8[2].n128_u8[1];
  v35 = a8[2].n128_u8[0];
  v18 = sub_22036F388();
  (*(*(v18 - 8) + 32))(a9, a1, v18);
  v19 = type metadata accessor for EOAFeedViewEvent.Model(0);
  v20 = v19[5];
  v21 = sub_22036F3C8();
  (*(*(v21 - 8) + 32))(a9 + v20, a2, v21);
  v22 = a9 + v19[6];
  *v22 = v13;
  *(v22 + 8) = v14;
  *(v22 + 16) = v15;
  v23 = a9 + v19[7];
  *v23 = v30;
  *(v23 + 8) = v16;
  *(v23 + 16) = v17;
  *(a9 + v19[8]) = v31;
  v24 = (a9 + v19[9]);
  *v24 = v33;
  v24[1] = v32;
  v25 = a9 + v19[10];
  v26 = *(a7 + 48);
  *(v25 + 32) = *(a7 + 32);
  *(v25 + 48) = v26;
  *(v25 + 64) = *(a7 + 64);
  v27 = *(a7 + 16);
  *v25 = *a7;
  *(v25 + 16) = v27;
  v28 = (a9 + v19[11]);
  result = v38;
  *v28 = v38;
  v28[1].n128_u64[0] = v37;
  v28[1].n128_u64[1] = v36;
  v28[2].n128_u8[0] = v35;
  v28[2].n128_u8[1] = v34;
  return result;
}

unint64_t sub_220324C2C()
{
  v1 = *v0;
  if (v1 > 3)
  {
    v5 = 0xD000000000000016;
    if (v1 == 6)
    {
      v5 = 0xD00000000000001ALL;
    }

    v6 = 0x7461746E6569726FLL;
    if (v1 != 4)
    {
      v6 = 0xD000000000000013;
    }

    if (*v0 <= 5u)
    {
      return v6;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v2 = 0x746144746E657665;
    v3 = 0x6174614477656976;
    if (v1 != 2)
    {
      v3 = 0x6174614464656566;
    }

    if (*v0)
    {
      v2 = 0x74614464656D6974;
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
}

uint64_t sub_220324D40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_220326568(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_220324D68(uint64_t a1)
{
  v2 = sub_2203252DC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_220324DA4(uint64_t a1)
{
  v2 = sub_2203252DC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t EOAFeedViewEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  sub_220325B48(0, &qword_27CF28B90, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = &v33[-v9];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2203252DC();
  sub_220370168();
  LOBYTE(v48) = 0;
  sub_22036F388();
  sub_2202307E4(&qword_2812666A8, MEMORY[0x277CEAEB0]);
  sub_22036FFF8();
  if (!v2)
  {
    v12 = type metadata accessor for EOAFeedViewEvent.Model(0);
    v13 = v12[5];
    LOBYTE(v48) = 1;
    sub_22036F3C8();
    sub_2202307E4(&qword_281266690, MEMORY[0x277CEAED0]);
    sub_22036FFF8();
    v14 = (v3 + v12[6]);
    v15 = *v14;
    v16 = v14[1];
    LOWORD(v14) = *(v14 + 8);
    *&v48 = v15;
    *(&v48 + 1) = v16;
    LOWORD(v49) = v14;
    LOBYTE(v43) = 2;
    sub_220202110();

    sub_22036FFF8();

    v17 = v3 + v12[7];
    v18 = *(v17 + 8);
    v19 = *(v17 + 16);
    LOBYTE(v48) = *v17;
    *(&v48 + 1) = v18;
    *&v49 = v19;
    LOBYTE(v43) = 3;
    sub_2201FBD1C();

    sub_22036FFF8();

    LOWORD(v48) = *(v3 + v12[8]);
    LOBYTE(v43) = 4;
    sub_2201F8860();
    sub_22036FFF8();
    v21 = (v3 + v12[9]);
    v22 = v21[1];
    v54 = *v21;
    v55 = v22;
    v53 = 5;
    sub_220250F98();

    sub_22036FFF8();

    v23 = (v3 + v12[10]);
    v24 = v23[1];
    v25 = v23[3];
    v50 = v23[2];
    v51 = v25;
    v26 = v23[1];
    v48 = *v23;
    v49 = v26;
    v44 = v24;
    v45 = v50;
    v46 = v23[3];
    v52 = *(v23 + 16);
    v47 = *(v23 + 16);
    v43 = v48;
    v42 = 6;
    sub_22022ECDC(&v48, v40);
    sub_22022EDA0();
    sub_22036FFF8();
    v40[2] = v45;
    v40[3] = v46;
    v41 = v47;
    v40[0] = v43;
    v40[1] = v44;
    sub_22022ED14(v40);
    v27 = (v3 + v12[11]);
    v28 = *v27;
    v29 = v27[1];
    v30 = v27[2];
    v31 = v27[3];
    v32 = *(v27 + 32);
    LOBYTE(v27) = *(v27 + 33);
    v34 = v28;
    v35 = v29;
    v36 = v30;
    v37 = v31;
    v38 = v32;
    v39 = v27;
    v33[7] = 7;
    sub_220236A84();

    sub_22036FFF8();
  }

  return (*(v7 + 8))(v10, v6);
}

unint64_t sub_2203252DC()
{
  result = qword_27CF28B98;
  if (!qword_27CF28B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF28B98);
  }

  return result;
}

uint64_t EOAFeedViewEvent.Model.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v45 = a2;
  v3 = sub_22036F3C8();
  v4 = *(v3 - 8);
  v48 = v3;
  v49 = v4;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_22036F388();
  v46 = *(v8 - 8);
  v9 = *(v46 + 64);
  MEMORY[0x28223BE20](v8);
  v51 = &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_220325B48(0, &qword_27CF28BA0, MEMORY[0x277D844C8]);
  v50 = v11;
  v47 = *(v11 - 8);
  v12 = *(v47 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v45 - v13;
  v15 = type metadata accessor for EOAFeedViewEvent.Model(0);
  v16 = *(*(v15 - 1) + 64);
  MEMORY[0x28223BE20](v15);
  v18 = &v45 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2203252DC();
  v52 = v14;
  v20 = v53;
  sub_220370148();
  if (v20)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v21 = v7;
  v53 = a1;
  v23 = v48;
  v22 = v49;
  LOBYTE(v59) = 0;
  sub_2202307E4(&qword_2812666A0, MEMORY[0x277CEAEB0]);
  sub_22036FF28();
  v24 = *(v46 + 32);
  v25 = v51;
  v51 = v8;
  v24(v18, v25, v8);
  LOBYTE(v59) = 1;
  sub_2202307E4(&qword_281266688, MEMORY[0x277CEAED0]);
  sub_22036FF28();
  (*(v22 + 32))(&v18[v15[5]], v21, v23);
  LOBYTE(v54) = 2;
  sub_2202020B8();
  sub_22036FF28();
  v26 = *(&v59 + 1);
  v27 = v60;
  v28 = &v18[v15[6]];
  *v28 = v59;
  *(v28 + 1) = v26;
  *(v28 + 8) = v27;
  LOBYTE(v54) = 3;
  sub_2201FBCC4();
  sub_22036FF28();
  v29 = v53;
  v30 = v47;
  v31 = *(&v59 + 1);
  v32 = v60;
  v33 = &v18[v15[7]];
  *v33 = v59;
  *(v33 + 1) = v31;
  *(v33 + 2) = v32;
  LOBYTE(v54) = 4;
  sub_2201F8808();
  sub_22036FF28();
  *&v18[v15[8]] = v59;
  LOBYTE(v54) = 5;
  sub_220250F44();
  sub_22036FF28();
  v34 = *(&v59 + 1);
  v35 = &v18[v15[9]];
  *v35 = v59;
  *(v35 + 1) = v34;
  v65 = 6;
  sub_22022ED48();
  sub_22036FF28();
  v36 = &v18[v15[10]];
  v37 = v62;
  *(v36 + 2) = v61;
  *(v36 + 3) = v37;
  *(v36 + 16) = v63;
  v38 = v60;
  *v36 = v59;
  *(v36 + 1) = v38;
  v64 = 7;
  sub_220236A30();
  sub_22036FF28();
  (*(v30 + 8))(v52, v50);
  v39 = v55;
  v40 = v56;
  v41 = v57;
  v42 = v58;
  v43 = &v18[v15[11]];
  *v43 = v54;
  *(v43 + 2) = v39;
  *(v43 + 3) = v40;
  v43[32] = v41;
  v43[33] = v42;
  sub_220325BAC(v18, v45);
  __swift_destroy_boxed_opaque_existential_1(v29);
  return sub_220325C10(v18);
}

void sub_220325B48(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_2203252DC();
    v7 = a3(a1, &type metadata for EOAFeedViewEvent.Model.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_220325BAC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EOAFeedViewEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_220325C10(uint64_t a1)
{
  v2 = type metadata accessor for EOAFeedViewEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_220325D44@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *MEMORY[0x277CEACF8];
  sub_220230578();
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = a1[5];
  sub_220230718();
  (*(*(v7 - 8) + 104))(a2 + v6, v4, v7);
  v8 = a1[6];
  sub_2203242A8(0, &qword_281266728, sub_2202020B8, sub_220202110);
  (*(*(v9 - 8) + 104))(a2 + v8, v4, v9);
  v10 = a1[7];
  sub_2203242A8(0, &qword_281266730, sub_2201FBCC4, sub_2201FBD1C);
  (*(*(v11 - 8) + 104))(a2 + v10, v4, v11);
  v12 = a1[8];
  sub_2203242A8(0, &qword_2812667D8, sub_2201F8808, sub_2201F8860);
  (*(*(v13 - 8) + 104))(a2 + v12, v4, v13);
  v14 = a1[9];
  sub_2203242A8(0, &qword_2812667E8, sub_220250F44, sub_220250F98);
  (*(*(v15 - 8) + 104))(a2 + v14, v4, v15);
  v16 = a1[10];
  sub_2203242A8(0, &qword_2812667E0, sub_22022ED48, sub_22022EDA0);
  (*(*(v17 - 8) + 104))(a2 + v16, v4, v17);
  v18 = a1[11];
  sub_2203242A8(0, &qword_281266858, sub_220236A30, sub_220236A84);
  v20 = *(*(v19 - 8) + 104);

  return v20(a2 + v18, v4, v19);
}

void sub_2203260FC()
{
  sub_220230578();
  if (v0 <= 0x3F)
  {
    sub_220230718();
    if (v1 <= 0x3F)
    {
      sub_2203242A8(319, &qword_281266728, sub_2202020B8, sub_220202110);
      if (v2 <= 0x3F)
      {
        sub_2203242A8(319, &qword_281266730, sub_2201FBCC4, sub_2201FBD1C);
        if (v3 <= 0x3F)
        {
          sub_2203242A8(319, &qword_2812667D8, sub_2201F8808, sub_2201F8860);
          if (v4 <= 0x3F)
          {
            sub_2203242A8(319, &qword_2812667E8, sub_220250F44, sub_220250F98);
            if (v5 <= 0x3F)
            {
              sub_2203242A8(319, &qword_2812667E0, sub_22022ED48, sub_22022EDA0);
              if (v6 <= 0x3F)
              {
                sub_2203242A8(319, &qword_281266858, sub_220236A30, sub_220236A84);
                if (v7 <= 0x3F)
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

uint64_t sub_220326388()
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

unint64_t sub_220326464()
{
  result = qword_27CF28BB8;
  if (!qword_27CF28BB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF28BB8);
  }

  return result;
}

unint64_t sub_2203264BC()
{
  result = qword_27CF28BC0;
  if (!qword_27CF28BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF28BC0);
  }

  return result;
}

unint64_t sub_220326514()
{
  result = qword_27CF28BC8;
  if (!qword_27CF28BC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF28BC8);
  }

  return result;
}

uint64_t sub_220326568(uint64_t a1, uint64_t a2)
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

  else if (a1 == 0x6174614477656976 && a2 == 0xE800000000000000 || (sub_220370048() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6174614464656566 && a2 == 0xE800000000000000 || (sub_220370048() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x7461746E6569726FLL && a2 == 0xEF617461446E6F69 || (sub_220370048() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000013 && 0x8000000220390500 == a2 || (sub_220370048() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD00000000000001ALL && 0x8000000220390520 == a2 || (sub_220370048() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000016 && 0x8000000220390540 == a2)
  {

    return 7;
  }

  else
  {
    v6 = sub_220370048();

    if (v6)
    {
      return 7;
    }

    else
    {
      return 8;
    }
  }
}

StocksAnalytics::StartMethod_optional __swiftcall StartMethod.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_22036FE78();

  v5 = 10;
  if (v3 < 0xA)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t sub_220326880()
{
  result = qword_27CF28BD0;
  if (!qword_27CF28BD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF28BD0);
  }

  return result;
}

uint64_t sub_2203268D4()
{
  v1 = *v0;
  sub_220370108();
  sub_22032C99C();
  return sub_220370128();
}

uint64_t sub_220326924()
{
  v1 = *v0;
  sub_220370108();
  sub_22032C99C();
  return sub_220370128();
}

uint64_t sub_2203269E4()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v1 = v0[8];

  sub_220326AA8(v0 + OBJC_IVAR____TtC15StocksAnalytics37RollingTimestampConfigurationProvider_lastConfig);
  v2 = OBJC_IVAR____TtC15StocksAnalytics37RollingTimestampConfigurationProvider_lastConfigRollDate;
  v3 = sub_22036E5A8();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v4, v5);
}

uint64_t sub_220326AA8(uint64_t a1)
{
  sub_2201F57FC();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

StocksAnalytics::PaidSubscriptionStatus_optional __swiftcall PaidSubscriptionStatus.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_22036FE78();

  v5 = 5;
  if (v3 < 5)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t PaidSubscriptionStatus.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x6E776F6E6B6E75;
  v3 = 0x6269726373627573;
  v4 = 0xD000000000000012;
  if (v1 != 3)
  {
    v4 = 0x6373627553746F6ELL;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x6C61697274;
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

unint64_t sub_220326C1C()
{
  result = qword_27CF28BD8;
  if (!qword_27CF28BD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF28BD8);
  }

  return result;
}

uint64_t sub_220326C70()
{
  v1 = *v0;
  sub_220370108();
  sub_22036FB08();

  return sub_220370128();
}

uint64_t sub_220326D64()
{
  *v0;
  *v0;
  *v0;
  sub_22036FB08();
}

uint64_t sub_220326E44()
{
  v1 = *v0;
  sub_220370108();
  sub_22036FB08();

  return sub_220370128();
}

void sub_220326F40(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x6E776F6E6B6E75;
  v5 = 0xEA00000000006465;
  v6 = 0x6269726373627573;
  v7 = 0x800000022038FE10;
  v8 = 0xD000000000000012;
  if (v2 != 3)
  {
    v8 = 0x6373627553746F6ELL;
    v7 = 0xED00006465626972;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x6C61697274;
    v3 = 0xE500000000000000;
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

unint64_t sub_2203270B0()
{
  result = qword_281263630;
  if (!qword_281263630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281263630);
  }

  return result;
}

char *SessionObserver.__allocating_init(sessionManager:watchlistManager:cloudContext:userContext:client:kind:appConfigurationManager:appIntentExecutionTypeProvider:userEventHistoryStorage:)(uint64_t a1, uint64_t *a2, void *a3, void *a4, void *a5, unsigned __int8 *a6, uint64_t *a7, uint64_t a8, uint64_t a9)
{
  v10 = v9;
  v18 = objc_allocWithZone(v10);
  v41 = *a6;
  swift_unknownObjectWeakInit();
  sub_2201F5DF4(a2, &v18[OBJC_IVAR____TtC15StocksAnalytics15SessionObserver_watchlistManager]);
  *&v18[OBJC_IVAR____TtC15StocksAnalytics15SessionObserver_sessionManager] = a1;

  *&v18[OBJC_IVAR____TtC15StocksAnalytics15SessionObserver_tracker] = sub_22036EF08();
  *&v18[OBJC_IVAR____TtC15StocksAnalytics15SessionObserver_cloudContext] = a3;
  sub_2201F9BFC(a4, &v18[OBJC_IVAR____TtC15StocksAnalytics15SessionObserver_userContext]);
  *&v18[OBJC_IVAR____TtC15StocksAnalytics15SessionObserver_client] = a5;
  v18[OBJC_IVAR____TtC15StocksAnalytics15SessionObserver_kind] = v41;
  sub_2201F5DF4(a7, &v18[OBJC_IVAR____TtC15StocksAnalytics15SessionObserver_appConfigurationManager]);
  v45 = a8;
  sub_2201F5DF4(a8, &v18[OBJC_IVAR____TtC15StocksAnalytics15SessionObserver_appIntentExecutionTypeProvider]);
  *&v18[OBJC_IVAR____TtC15StocksAnalytics15SessionObserver_userEventHistoryStorage] = a9;
  v46.receiver = v18;
  v46.super_class = v10;
  v43 = a3;
  v42 = a5;
  swift_unknownObjectRetain();
  v19 = objc_msgSendSuper2(&v46, sel_init);
  sub_2201F7C9C();
  v20 = OBJC_IVAR____TtC15StocksAnalytics15SessionObserver_sessionManager;
  v21 = *&v19[OBJC_IVAR____TtC15StocksAnalytics15SessionObserver_sessionManager];
  sub_22036EF08();
  swift_allocObject();
  swift_unknownObjectWeakInit();

  sub_22036F318();

  v22 = [objc_opt_self() currentDevice];
  [v22 beginGeneratingDeviceOrientationNotifications];

  sub_2201F8378();
  v23 = objc_opt_self();
  v24 = [v23 defaultCenter];
  [v24 addObserver:v19 selector:sel_pushOrientationData name:*MEMORY[0x277D76878] object:0];

  sub_2201F8974();
  v25 = *&v19[v20];
  *(swift_allocObject() + 16) = v19;
  v26 = v19;
  sub_22036EE98();

  v27 = *&v19[v20];
  *(swift_allocObject() + 16) = v26;
  v28 = v26;
  sub_22036EE98();

  v29 = *&v19[v20];
  *(swift_allocObject() + 16) = v28;
  v30 = v28;
  sub_22036EE98();

  sub_2201F8378();
  v31 = [v23 defaultCenter];
  v32 = sub_22036FAC8();
  [v31 addObserver:v30 selector:sel_offerDidChange_ name:v32 object:0];

  v33 = a4[4];
  __swift_project_boxed_opaque_existential_1(a4, a4[3]);
  sub_2201F50E8(&unk_2812654F0, v34, type metadata accessor for SessionObserver);
  sub_22036E908();

  _s15StocksAnalytics15SessionObserverC21identificationService_15didChangeUserIDy0A4Core014IdentificationF4Type_p_SStF_0();
  v35 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_2201F50E8(&qword_281265500, v36, type metadata accessor for SessionObserver);
  sub_22036E888();

  if (v41)
  {

    swift_unknownObjectRelease();
  }

  else
  {
    v37 = *&v30[OBJC_IVAR____TtC15StocksAnalytics15SessionObserver_tracker];
    swift_allocObject();
    swift_unknownObjectUnownedInit();
    v38 = v30;

    sub_22036F318();

    sub_22036EF28();

    swift_unknownObjectRelease();
  }

  __swift_destroy_boxed_opaque_existential_1(v45);
  __swift_destroy_boxed_opaque_existential_1(a7);
  sub_2201F9480(a4);
  __swift_destroy_boxed_opaque_existential_1(a2);
  return v30;
}

uint64_t SessionObserverKind.hashValue.getter()
{
  v1 = *v0;
  sub_220370108();
  MEMORY[0x223D79F30](v1);
  return sub_220370128();
}

void sub_220327790(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  sub_2201F8378();
}

void (*SessionObserver.window.modify(uint64_t *a1))(uint64_t *a1, char a2)
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
  v5 = OBJC_IVAR____TtC15StocksAnalytics15SessionObserver_window;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_220327888;
}

void sub_220327888(uint64_t *a1, char a2)
{
  v3 = *a1;
  v4 = *(*a1 + 24);
  v5 = *(*a1 + 32) + *(*a1 + 40);
  swift_unknownObjectWeakAssign();
  if (a2)
  {

    swift_endAccess();
  }

  else
  {
    v6 = *(v3 + 32);
    swift_endAccess();

    sub_2201F8378();
  }

  free(v3);
}

char *SessionObserver.init(sessionManager:watchlistManager:cloudContext:userContext:client:kind:appConfigurationManager:appIntentExecutionTypeProvider:userEventHistoryStorage:)(uint64_t a1, uint64_t *a2, void *a3, void *a4, void *a5, unsigned __int8 *a6, uint64_t *a7, uint64_t a8, uint64_t a9)
{
  v10 = v9;
  ObjectType = swift_getObjectType();
  v40 = *a6;
  swift_unknownObjectWeakInit();
  sub_2201F5DF4(a2, &v10[OBJC_IVAR____TtC15StocksAnalytics15SessionObserver_watchlistManager]);
  *&v10[OBJC_IVAR____TtC15StocksAnalytics15SessionObserver_sessionManager] = a1;

  *&v10[OBJC_IVAR____TtC15StocksAnalytics15SessionObserver_tracker] = sub_22036EF08();
  *&v10[OBJC_IVAR____TtC15StocksAnalytics15SessionObserver_cloudContext] = a3;
  sub_2201F9BFC(a4, &v10[OBJC_IVAR____TtC15StocksAnalytics15SessionObserver_userContext]);
  *&v10[OBJC_IVAR____TtC15StocksAnalytics15SessionObserver_client] = a5;
  v10[OBJC_IVAR____TtC15StocksAnalytics15SessionObserver_kind] = v40;
  sub_2201F5DF4(a7, &v10[OBJC_IVAR____TtC15StocksAnalytics15SessionObserver_appConfigurationManager]);
  v44 = a8;
  sub_2201F5DF4(a8, &v10[OBJC_IVAR____TtC15StocksAnalytics15SessionObserver_appIntentExecutionTypeProvider]);
  *&v10[OBJC_IVAR____TtC15StocksAnalytics15SessionObserver_userEventHistoryStorage] = a9;
  v45.receiver = v10;
  v45.super_class = ObjectType;
  v42 = a3;
  v41 = a5;
  swift_unknownObjectRetain();
  v19 = objc_msgSendSuper2(&v45, sel_init);
  sub_2201F7C9C();
  v20 = OBJC_IVAR____TtC15StocksAnalytics15SessionObserver_sessionManager;
  v21 = *&v19[OBJC_IVAR____TtC15StocksAnalytics15SessionObserver_sessionManager];
  sub_22036EF08();
  swift_allocObject();
  swift_unknownObjectWeakInit();

  sub_22036F318();

  v22 = [objc_opt_self() currentDevice];
  [v22 beginGeneratingDeviceOrientationNotifications];

  sub_2201F8378();
  v23 = objc_opt_self();
  v24 = [v23 defaultCenter];
  [v24 addObserver:v19 selector:sel_pushOrientationData name:*MEMORY[0x277D76878] object:0];

  sub_2201F8974();
  v25 = *&v19[v20];
  *(swift_allocObject() + 16) = v19;
  v26 = v19;
  sub_22036EE98();

  v27 = *&v19[v20];
  *(swift_allocObject() + 16) = v26;
  v28 = v26;
  sub_22036EE98();

  v29 = *&v19[v20];
  *(swift_allocObject() + 16) = v28;
  v30 = v28;
  sub_22036EE98();

  sub_2201F8378();
  v31 = [v23 defaultCenter];
  v32 = sub_22036FAC8();
  [v31 addObserver:v30 selector:sel_offerDidChange_ name:v32 object:0];

  v33 = a4[4];
  __swift_project_boxed_opaque_existential_1(a4, a4[3]);
  sub_2201F50E8(&unk_2812654F0, v34, type metadata accessor for SessionObserver);
  sub_22036E908();

  _s15StocksAnalytics15SessionObserverC21identificationService_15didChangeUserIDy0A4Core014IdentificationF4Type_p_SStF_0();
  v35 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_2201F50E8(&qword_281265500, v36, type metadata accessor for SessionObserver);
  sub_22036E888();

  if (v40)
  {

    swift_unknownObjectRelease();
  }

  else
  {
    v37 = *&v30[OBJC_IVAR____TtC15StocksAnalytics15SessionObserver_tracker];
    swift_allocObject();
    swift_unknownObjectUnownedInit();
    v38 = v30;

    sub_22036F318();

    sub_22036EF28();

    swift_unknownObjectRelease();
  }

  __swift_destroy_boxed_opaque_existential_1(v44);
  __swift_destroy_boxed_opaque_existential_1(a7);
  sub_2201F9480(a4);
  __swift_destroy_boxed_opaque_existential_1(a2);
  return v30;
}

uint64_t sub_220327EC4(uint64_t result, uint64_t a2)
{
  v2 = result;
  if (a2 > 1)
  {
    if (a2 == 2)
    {
      Strong = swift_unknownObjectUnownedLoadStrong();
      sub_2202C74DC(&v10);
      sub_2201FB2BC(0, &qword_281261B50, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
      v5 = sub_22036EE48();
      v6 = *(v5 - 8);
      v7 = *(v6 + 72);
      v8 = (*(v6 + 80) + 32) & ~*(v6 + 80);
      v9 = swift_allocObject();
      *(v9 + 16) = xmmword_220371600;
      (*(v6 + 104))(v9 + v8, *MEMORY[0x277CEAD10], v5);
      sub_220329BE4();
      sub_22036EDA8();

      type metadata accessor for AppSessionEndEvent(0);
      sub_2201F50E8(qword_281264B50, 255, type metadata accessor for AppSessionEndEvent);
      v10 = 0u;
      v11 = 0u;
      sub_22036EDC8();
      return sub_220235924(&v10);
    }

    if (a2 != 3)
    {
      goto LABEL_9;
    }
  }

  else if (a2)
  {
    if (a2 == 1)
    {
      v3 = swift_unknownObjectUnownedLoadStrong();
      sub_220328230(v2);

      type metadata accessor for AppSessionStartEvent(0);
      sub_2201F50E8(qword_281264200, 255, type metadata accessor for AppSessionStartEvent);
      v10 = 0u;
      v11 = 0u;
      sub_22036EDC8();
      sub_220235924(&v10);
      type metadata accessor for AppSessionEndEvent(0);
      sub_2201F50E8(qword_281264B50, 255, type metadata accessor for AppSessionEndEvent);
      return sub_22036EDB8();
    }

LABEL_9:
    result = sub_22036FE08();
    __break(1u);
  }

  return result;
}

uint64_t sub_220328230(uint64_t a1)
{
  v59 = a1;
  sub_2201F8750(0, &qword_281266948, sub_220329B3C);
  v57 = *(v2 - 8);
  v58 = v2;
  v3 = *(v57 + 64);
  MEMORY[0x28223BE20](v2);
  v56 = &v49 - v4;
  sub_2201F8750(0, &unk_281266938, sub_220329B90);
  v54 = *(v5 - 8);
  v55 = v5;
  v6 = *(v54 + 64);
  MEMORY[0x28223BE20](v5);
  v52 = &v49 - v7;
  v8 = sub_22036EA88();
  v9 = *(v8 - 8);
  v10 = v9[8];
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v49 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v49 - v14;
  v53 = v1;
  v16 = (v1 + OBJC_IVAR____TtC15StocksAnalytics15SessionObserver_watchlistManager);
  v17 = *(v1 + OBJC_IVAR____TtC15StocksAnalytics15SessionObserver_watchlistManager + 32);
  __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC15StocksAnalytics15SessionObserver_watchlistManager), *(v1 + OBJC_IVAR____TtC15StocksAnalytics15SessionObserver_watchlistManager + 24));
  v18 = *(v17 + 8);
  sub_22036E938();
  v51 = sub_22036EA78();
  v19 = v9[1];
  v64 = v8;
  v62 = v19;
  *&v63 = v9 + 1;
  v19(v15, v8);
  v20 = v16[4];
  __swift_project_boxed_opaque_existential_1(v16, v16[3]);
  v21 = sub_22036E898();
  v22 = *(v21 + 16);
  if (v22)
  {
    v65 = MEMORY[0x277D84F90];
    sub_2202BC71C(0, v22, 0);
    v23 = v65;
    v25 = v9[2];
    v24 = v9 + 2;
    v26 = *(v24 + 64);
    v50 = v21;
    v27 = v21 + ((v26 + 32) & ~v26);
    v60 = v24[7];
    v61 = v25;
    do
    {
      v28 = v64;
      v29 = v24;
      v61(v13, v27, v64);
      v30 = sub_22036EA68();
      v31 = sub_22036EA78();
      v62(v13, v28);
      v65 = v23;
      v33 = *(v23 + 16);
      v32 = *(v23 + 24);
      if (v33 >= v32 >> 1)
      {
        sub_2202BC71C((v32 > 1), v33 + 1, 1);
        v23 = v65;
      }

      *(v23 + 16) = v33 + 1;
      v34 = v23 + 16 * v33;
      *(v34 + 32) = (v30 & 1) == 0;
      *(v34 + 40) = v31;
      v27 += v60;
      --v22;
      v24 = v29;
    }

    while (v22);
  }

  else
  {

    v23 = MEMORY[0x277D84F90];
  }

  v35 = v51;
  v65 = v51;
  sub_2201FB2BC(0, &qword_281261B50, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
  v62 = v36;
  v37 = sub_22036EE48();
  v38 = *(v37 - 8);
  v64 = *(v38 + 72);
  v39 = (*(v38 + 80) + 32) & ~*(v38 + 80);
  v40 = swift_allocObject();
  v63 = xmmword_220371600;
  *(v40 + 16) = xmmword_220371600;
  v41 = *MEMORY[0x277CEAD10];
  v50 = *(v38 + 104);
  LODWORD(v60) = v41;
  v61 = v37;
  v50(v40 + v39, v41, v37);
  v49 = "SessionObserver";
  sub_220329B90();
  sub_22036EDA8();

  v53 = *(v53 + OBJC_IVAR____TtC15StocksAnalytics15SessionObserver_sessionManager);
  v65 = v35;
  v42 = v52;
  sub_22036ECD8();
  v43 = swift_allocObject();
  *(v43 + 16) = v63;
  v44 = v37;
  v45 = v50;
  v50(v43 + v39, v41, v44);
  sub_22036EEB8();

  (*(v54 + 8))(v42, v55);
  v65 = v23;
  sub_220329B3C();
  sub_22036EDA8();
  v65 = v23;
  v46 = v56;
  sub_22036ECD8();
  v47 = swift_allocObject();
  *(v47 + 16) = v63;
  v45(v47 + v39, v60, v61);
  sub_22036EEB8();

  return (*(v57 + 8))(v46, v58);
}

id SessionObserver.__deallocating_deinit()
{
  ObjectType = swift_getObjectType();
  v2 = [objc_opt_self() currentDevice];
  [v2 endGeneratingDeviceOrientationNotifications];

  v4.receiver = v0;
  v4.super_class = ObjectType;
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

id SessionObserver.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t sub_220328B74()
{
  swift_getObjectType();

  return sub_22036EAC8();
}

uint64_t sub_220328BCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  ObjectType = swift_getObjectType();

  return MEMORY[0x2821D2870](a1, a2, a3, ObjectType, a7);
}

uint64_t sub_220328C3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  ObjectType = swift_getObjectType();

  return MEMORY[0x2821D2858](a1, a2, a3, a4, ObjectType, a8);
}

uint64_t SessionObserver.watchlistManagerWatchlistsDidChange(_:)()
{
  v1 = *&v0[OBJC_IVAR____TtC15StocksAnalytics15SessionObserver_tracker];
  *(swift_allocObject() + 16) = v0;
  v2 = v0;
  sub_22036F308();
}

uint64_t SessionObserver.watchlistManager(_:observedChanges:in:)()
{
  v1 = *&v0[OBJC_IVAR____TtC15StocksAnalytics15SessionObserver_tracker];
  *(swift_allocObject() + 16) = v0;
  v2 = v0;
  sub_22036F308();
}

uint64_t sub_220328DC4()
{
  v1 = *&v0[OBJC_IVAR____TtC15StocksAnalytics15SessionObserver_tracker];
  *(swift_allocObject() + 16) = v0;
  v2 = v0;
  sub_22036F308();
}

Swift::Void __swiftcall SessionObserver.sceneDidEnterBackground()()
{
  v1 = *(v0 + OBJC_IVAR____TtC15StocksAnalytics15SessionObserver_sessionManager);
  sub_22036EF08();
  sub_2201FB2BC(0, &qword_281261B50, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
  v2 = sub_22036EE48();
  v3 = *(v2 - 8);
  v4 = *(v3 + 72);
  v5 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_220371600;
  (*(v3 + 104))(v6 + v5, *MEMORY[0x277CEAD10], v2);
  sub_220329868();
  sub_22036F328();
}

uint64_t sub_220328FC0()
{
  ObjectType = swift_getObjectType();

  return MEMORY[0x2821D1DC8](ObjectType);
}

uint64_t sub_220328FFC(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();

  return MEMORY[0x2821D1DC0](a1, a2, ObjectType);
}

uint64_t sub_220329054()
{
  v1 = *(v0 + OBJC_IVAR____TtC15StocksAnalytics15SessionObserver_sessionManager);
  sub_22036EF08();
  sub_2201FB2BC(0, &qword_281261B50, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
  v2 = sub_22036EE48();
  v3 = *(v2 - 8);
  v4 = *(v3 + 72);
  v5 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_220371600;
  (*(v3 + 104))(v6 + v5, *MEMORY[0x277CEAD10], v2);
  sub_220329868();
  sub_22036F328();
}

uint64_t sub_2203291C8(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();

  return MEMORY[0x2821D1DD0](a1, a2, ObjectType);
}

uint64_t sub_220329220()
{
  ObjectType = swift_getObjectType();

  return MEMORY[0x2821D1DA8](ObjectType);
}

uint64_t SessionObserver.processURL(for:)(uint64_t a1)
{
  sub_2201FB2BC(0, &qword_281266650, MEMORY[0x277D6D3E0], MEMORY[0x277D6CC70]);
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  v8 = &v13 - v7;
  v9 = *&v1[OBJC_IVAR____TtC15StocksAnalytics15SessionObserver_sessionManager];
  (*(v5 + 16))(&v13 - v7, a1, v4);
  v10 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = v1;
  (*(v5 + 32))(v11 + v10, v8, v4);
  v1;
  sub_22036EE98();

  return sub_2202E5058();
}

uint64_t sub_2203293F0(uint64_t a1)
{
  sub_2201FB2BC(0, &qword_281266650, MEMORY[0x277D6D3E0], MEMORY[0x277D6CC70]);
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  v8 = &v14 - v7;
  v9 = *v1;
  v10 = *(*v1 + OBJC_IVAR____TtC15StocksAnalytics15SessionObserver_sessionManager);
  (*(v5 + 16))(&v14 - v7, a1, v4);
  v11 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = v9;
  (*(v5 + 32))(v12 + v11, v8, v4);
  v9;
  sub_22036EE98();

  return sub_2202E5058();
}

uint64_t _s15StocksAnalytics15SessionObserverC8patternsSay13TeaFoundation17URLHandlerPatternVGvg_0()
{
  v0 = MEMORY[0x277D84560];
  sub_2201FB2BC(0, &qword_281261B18, MEMORY[0x277D6CCC0], MEMORY[0x277D84560]);
  v1 = *(sub_22036F6C8() - 8);
  v2 = *(v1 + 72);
  v14 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_220371600;
  sub_2201FB2BC(0, &unk_281261B20, MEMORY[0x277D6CCA0], v0);
  v4 = sub_22036F6A8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 72);
  v7 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_22037EA40;
  v9 = (v8 + v7);
  *v9 = 0x6E676961706D6163;
  *(v9 + 1) = 0xEB0000000064695FLL;
  v10 = *(v5 + 104);
  (v10)(v9, *MEMORY[0x277D6CC80], v4);
  strcpy(&v9[v6], "campaign_type");
  *&v9[v6 + 14] = -4864;
  v10();
  v11 = &v9[2 * v6];
  *v11 = 0x6576697461657263;
  *(v11 + 1) = 0xEB0000000064695FLL;
  v10();
  v12 = &v9[3 * v6];
  *v12 = 0x695F656372756F73;
  *(v12 + 1) = 0xE900000000000064;
  v10();
  sub_2203042BC(MEMORY[0x277D84F90]);
  sub_22036F6B8();
  return v3;
}

unint64_t sub_220329868()
{
  result = qword_281265DF0;
  if (!qword_281265DF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281265DF0);
  }

  return result;
}

unint64_t sub_2203298C4()
{
  result = qword_27CF28C40;
  if (!qword_27CF28C40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF28C40);
  }

  return result;
}

uint64_t objectdestroy_36Tm()
{
  sub_2201FB2BC(0, &qword_281266650, MEMORY[0x277D6D3E0], MEMORY[0x277D6CC70]);
  v2 = v1;
  v3 = *(v1 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 24) & ~v4;
  v6 = *(v3 + 64);

  (*(v3 + 8))(v0 + v5, v2);

  return MEMORY[0x2821FE8E8](v0, v5 + v6, v4 | 7);
}

uint64_t sub_220329A98(uint64_t a1)
{
  sub_2201FB2BC(0, &qword_281266650, MEMORY[0x277D6D3E0], MEMORY[0x277D6CC70]);
  v4 = *(v1 + 16);
  v5 = v1 + ((*(*(v3 - 8) + 80) + 24) & ~*(*(v3 - 8) + 80));

  return sub_220234858(a1, v4, v5);
}

unint64_t sub_220329B3C()
{
  result = qword_281263B00;
  if (!qword_281263B00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281263B00);
  }

  return result;
}

unint64_t sub_220329B90()
{
  result = qword_281263880;
  if (!qword_281263880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281263880);
  }

  return result;
}

unint64_t sub_220329BE4()
{
  result = qword_281263B38;
  if (!qword_281263B38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281263B38);
  }

  return result;
}

StocksAnalytics::AppIntentType_optional __swiftcall AppIntentType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_22036FE78();

  v5 = 5;
  if (v3 < 5)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t AppIntentType.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x6E776F6E6B6E75;
  v3 = 0x637461576E65706FLL;
  v4 = 0xD000000000000010;
  if (v1 != 3)
  {
    v4 = 0x697472416E65706FLL;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x626D79536E65706FLL;
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

unint64_t sub_220329D78()
{
  result = qword_27CF28C48;
  if (!qword_27CF28C48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF28C48);
  }

  return result;
}

uint64_t sub_220329DCC()
{
  v1 = *v0;
  sub_220370108();
  sub_22036FB08();

  return sub_220370128();
}

uint64_t sub_220329ECC()
{
  *v0;
  *v0;
  *v0;
  sub_22036FB08();
}

uint64_t sub_220329FB8()
{
  v1 = *v0;
  sub_220370108();
  sub_22036FB08();

  return sub_220370128();
}

void sub_22032A0C0(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x6E776F6E6B6E75;
  v5 = 0xED00007473696C68;
  v6 = 0x637461576E65706FLL;
  v7 = 0x800000022038FE40;
  v8 = 0xD000000000000010;
  if (v2 != 3)
  {
    v8 = 0x697472416E65706FLL;
    v7 = 0xEB00000000656C63;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x626D79536E65706FLL;
    v3 = 0xEA00000000006C6FLL;
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

unint64_t sub_22032A23C()
{
  result = qword_27CF28C50;
  if (!qword_27CF28C50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF28C50);
  }

  return result;
}

uint64_t sub_22032A290()
{
  v0 = sub_22036ED68();
  __swift_allocate_value_buffer(v0, qword_27CF28C58);
  v1 = __swift_project_value_buffer(v0, qword_27CF28C58);
  *v1 = 0x7364612E6D6F63;
  *(v1 + 8) = 0xE700000000000000;
  *(v1 + 16) = 3;
  *(v1 + 24) = 0;
  v2 = *MEMORY[0x277CEACB0];
  v3 = *(*(v0 - 8) + 104);

  return v3();
}

uint64_t sub_22032A37C()
{
  v0 = sub_22036F048();
  __swift_allocate_value_buffer(v0, qword_27CF28C70);
  v1 = __swift_project_value_buffer(v0, qword_27CF28C70);
  v2 = *MEMORY[0x277CEADA8];
  v3 = *(*(v0 - 8) + 104);

  return v3(v1, v2, v0);
}

uint64_t sub_22032A43C()
{
  v0 = sub_22036F118();
  __swift_allocate_value_buffer(v0, qword_27CF28C88);
  __swift_project_value_buffer(v0, qword_27CF28C88);
  return sub_22036F108();
}

uint64_t InterstitialAdImpressionEvent.eventData.setter(uint64_t a1)
{
  sub_220230578();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t InterstitialAdImpressionEvent.timedData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for InterstitialAdImpressionEvent(0) + 20);
  sub_220230718();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t InterstitialAdImpressionEvent.adUserData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for InterstitialAdImpressionEvent(0) + 24);
  sub_22032AA84(0, &qword_281266880, sub_2201F93C8, sub_2201F9420);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t InterstitialAdImpressionEvent.adUserData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for InterstitialAdImpressionEvent(0) + 24);
  sub_22032AA84(0, &qword_281266880, sub_2201F93C8, sub_2201F9420);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t InterstitialAdImpressionEvent.adPlacementData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for InterstitialAdImpressionEvent(0) + 28);
  sub_22032AA84(0, &qword_2812667F0, sub_220242CD4, sub_220242D28);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t InterstitialAdImpressionEvent.adPlacementData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for InterstitialAdImpressionEvent(0) + 28);
  sub_22032AA84(0, &qword_2812667F0, sub_220242CD4, sub_220242D28);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t InterstitialAdImpressionEvent.adFeedData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for InterstitialAdImpressionEvent(0) + 32);
  sub_22032AA84(0, &qword_281266890, sub_220202B10, sub_220202B7C);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

void sub_22032AA84(uint64_t a1, unint64_t *a2, void (*a3)(void), void (*a4)(void))
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

uint64_t InterstitialAdImpressionEvent.adFeedData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for InterstitialAdImpressionEvent(0) + 32);
  sub_22032AA84(0, &qword_281266890, sub_220202B10, sub_220202B7C);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t InterstitialAdImpressionEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CEACF8];
  sub_220230578();
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for InterstitialAdImpressionEvent(0);
  v5 = v4[5];
  sub_220230718();
  (*(*(v6 - 8) + 104))(a1 + v5, v2, v6);
  v7 = v4[6];
  sub_22032AA84(0, &qword_281266880, sub_2201F93C8, sub_2201F9420);
  (*(*(v8 - 8) + 104))(a1 + v7, v2, v8);
  v9 = v4[7];
  sub_22032AA84(0, &qword_2812667F0, sub_220242CD4, sub_220242D28);
  (*(*(v10 - 8) + 104))(a1 + v9, v2, v10);
  v11 = v4[8];
  v12 = *MEMORY[0x277CEACF0];
  sub_22032AA84(0, &qword_281266890, sub_220202B10, sub_220202B7C);
  v14 = *(*(v13 - 8) + 104);

  return v14(a1 + v11, v12, v13);
}

uint64_t sub_22032AE7C@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a1(0) + 20);
  v7 = a2(0);
  v8 = *(*(v7 - 8) + 16);

  return v8(a3, v3 + v6, v7);
}

uint64_t InterstitialAdImpressionEvent.Model.adUserData.getter@<X0>(void *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for InterstitialAdImpressionEvent.Model(0) + 24));
  v4 = v3[1];
  *a1 = *v3;
  a1[1] = v4;
}

uint64_t InterstitialAdImpressionEvent.Model.adPlacementData.getter@<X0>(void *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for InterstitialAdImpressionEvent.Model(0) + 28));
  v4 = v3[1];
  *a1 = *v3;
  a1[1] = v4;
}

uint64_t InterstitialAdImpressionEvent.Model.adFeedData.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for InterstitialAdImpressionEvent.Model(0);
  *a1 = *(v1 + *(result + 32));
  return result;
}

uint64_t InterstitialAdImpressionEvent.Model.init(eventData:timedData:adUserData:adPlacementData:adFeedData:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, char *a5@<X4>, uint64_t a6@<X8>)
{
  v9 = *a3;
  v10 = a3[1];
  v11 = *a4;
  v12 = a4[1];
  v13 = *a5;
  v14 = sub_22036F388();
  (*(*(v14 - 8) + 32))(a6, a1, v14);
  v15 = type metadata accessor for InterstitialAdImpressionEvent.Model(0);
  v16 = v15[5];
  v17 = sub_22036F3C8();
  result = (*(*(v17 - 8) + 32))(a6 + v16, a2, v17);
  v19 = (a6 + v15[6]);
  *v19 = v9;
  v19[1] = v10;
  v20 = (a6 + v15[7]);
  *v20 = v11;
  v20[1] = v12;
  *(a6 + v15[8]) = v13;
  return result;
}

uint64_t sub_22032B0E8()
{
  v1 = *v0;
  v2 = 0x746144746E657665;
  v3 = 0x6144726573556461;
  v4 = 0x6D6563616C506461;
  if (v1 != 3)
  {
    v4 = 0x6144646565466461;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x74614464656D6974;
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

uint64_t sub_22032B198@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22032C390(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22032B1C0(uint64_t a1)
{
  v2 = sub_22032B554();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22032B1FC(uint64_t a1)
{
  v2 = sub_22032B554();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t InterstitialAdImpressionEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  sub_22032BB80(0, &qword_27CF28CA0, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = &v19 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22032B554();
  sub_220370168();
  LOBYTE(v21) = 0;
  sub_22036F388();
  sub_2202307E4(&qword_2812666A8, MEMORY[0x277CEAEB0]);
  sub_22036FFF8();
  if (!v2)
  {
    v12 = type metadata accessor for InterstitialAdImpressionEvent.Model(0);
    v13 = v12[5];
    LOBYTE(v21) = 1;
    sub_22036F3C8();
    sub_2202307E4(&qword_281266690, MEMORY[0x277CEAED0]);
    sub_22036FFF8();
    v14 = (v3 + v12[6]);
    v15 = v14[1];
    v21 = *v14;
    v22 = v15;
    v20 = 2;
    sub_2201F9420();

    sub_22036FFF8();

    v16 = (v3 + v12[7]);
    v17 = v16[1];
    v21 = *v16;
    v22 = v17;
    v20 = 3;
    sub_220242D28();

    sub_22036FFF8();

    LOBYTE(v21) = *(v3 + v12[8]);
    v20 = 4;
    sub_220202B7C();
    sub_22036FF88();
  }

  return (*(v7 + 8))(v10, v6);
}

unint64_t sub_22032B554()
{
  result = qword_27CF28CA8;
  if (!qword_27CF28CA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF28CA8);
  }

  return result;
}

uint64_t InterstitialAdImpressionEvent.Model.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v32 = a2;
  v3 = sub_22036F3C8();
  v35 = *(v3 - 8);
  v36 = v3;
  v4 = *(v35 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22036F388();
  v33 = *(v7 - 8);
  v8 = *(v33 + 64);
  MEMORY[0x28223BE20](v7);
  v37 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22032BB80(0, &qword_27CF28CB0, MEMORY[0x277D844C8]);
  v39 = v10;
  v34 = *(v10 - 8);
  v11 = *(v34 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v31 - v12;
  v14 = type metadata accessor for InterstitialAdImpressionEvent.Model(0);
  v15 = *(*(v14 - 1) + 64);
  MEMORY[0x28223BE20](v14);
  v17 = &v31 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22032B554();
  v38 = v13;
  v19 = v40;
  sub_220370148();
  if (v19)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v20 = v6;
  v40 = v17;
  v21 = v33;
  v22 = v35;
  v23 = v36;
  LOBYTE(v41) = 0;
  sub_2202307E4(&qword_2812666A0, MEMORY[0x277CEAEB0]);
  sub_22036FF28();
  (*(v21 + 32))(v40, v37, v7);
  LOBYTE(v41) = 1;
  sub_2202307E4(&qword_281266688, MEMORY[0x277CEAED0]);
  sub_22036FF28();
  (*(v22 + 32))(&v40[v14[5]], v20, v23);
  v43 = 2;
  sub_2201F93C8();
  sub_22036FF28();
  v24 = v42;
  v25 = &v40[v14[6]];
  *v25 = v41;
  *(v25 + 1) = v24;
  v43 = 3;
  sub_220242CD4();
  sub_22036FF28();
  v26 = v34;
  v27 = v42;
  v28 = &v40[v14[7]];
  *v28 = v41;
  *(v28 + 1) = v27;
  v43 = 4;
  sub_220202B10();
  sub_22036FEB8();
  (*(v26 + 8))(v38, v39);
  v29 = v40;
  v40[v14[8]] = v41;
  sub_22032BBE4(v29, v32);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_22032BC48(v29);
}

void sub_22032BB80(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_22032B554();
    v7 = a3(a1, &type metadata for InterstitialAdImpressionEvent.Model.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_22032BBE4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for InterstitialAdImpressionEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22032BC48(uint64_t a1)
{
  v2 = type metadata accessor for InterstitialAdImpressionEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22032BD7C@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *MEMORY[0x277CEACF8];
  sub_220230578();
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = a1[5];
  sub_220230718();
  (*(*(v7 - 8) + 104))(a2 + v6, v4, v7);
  v8 = a1[6];
  sub_22032AA84(0, &qword_281266880, sub_2201F93C8, sub_2201F9420);
  (*(*(v9 - 8) + 104))(a2 + v8, v4, v9);
  v10 = a1[7];
  sub_22032AA84(0, &qword_2812667F0, sub_220242CD4, sub_220242D28);
  (*(*(v11 - 8) + 104))(a2 + v10, v4, v11);
  v12 = a1[8];
  v13 = *MEMORY[0x277CEACF0];
  sub_22032AA84(0, &qword_281266890, sub_220202B10, sub_220202B7C);
  v15 = *(*(v14 - 8) + 104);

  return v15(a2 + v12, v13, v14);
}

void sub_22032BFD8()
{
  sub_220230578();
  if (v0 <= 0x3F)
  {
    sub_220230718();
    if (v1 <= 0x3F)
    {
      sub_22032AA84(319, &qword_281266880, sub_2201F93C8, sub_2201F9420);
      if (v2 <= 0x3F)
      {
        sub_22032AA84(319, &qword_2812667F0, sub_220242CD4, sub_220242D28);
        if (v3 <= 0x3F)
        {
          sub_22032AA84(319, &qword_281266890, sub_220202B10, sub_220202B7C);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_22032C174()
{
  sub_22036F388();
  if (v0 <= 0x3F)
  {
    sub_22036F3C8();
    if (v1 <= 0x3F)
    {
      sub_22032C228();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_22032C228()
{
  if (!qword_27CF26298)
  {
    v0 = sub_22036FCC8();
    if (!v1)
    {
      atomic_store(v0, &qword_27CF26298);
    }
  }
}

unint64_t sub_22032C28C()
{
  result = qword_27CF28CD8;
  if (!qword_27CF28CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF28CD8);
  }

  return result;
}

unint64_t sub_22032C2E4()
{
  result = qword_27CF28CE0;
  if (!qword_27CF28CE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF28CE0);
  }

  return result;
}

unint64_t sub_22032C33C()
{
  result = qword_27CF28CE8;
  if (!qword_27CF28CE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF28CE8);
  }

  return result;
}

uint64_t sub_22032C390(uint64_t a1, uint64_t a2)
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

  else if (a1 == 0x6144726573556461 && a2 == 0xEA00000000006174 || (sub_220370048() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6D6563616C506461 && a2 == 0xEF61746144746E65 || (sub_220370048() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6144646565466461 && a2 == 0xEA00000000006174)
  {

    return 4;
  }

  else
  {
    v6 = sub_220370048();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_22032C560()
{
  sub_22036FB08();
}

uint64_t sub_22032C6F4()
{
  sub_22036FB08();
}

uint64_t sub_22032C84C()
{
  sub_22036FB08();
}

uint64_t sub_22032C99C()
{
  sub_22036FB08();
}

uint64_t sub_22032CB38()
{
  sub_22036FB08();
}

uint64_t sub_22032CCB0()
{
  sub_22036FB08();
}

StocksAnalytics::MediaUserAction_optional __swiftcall MediaUserAction.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_22036FE78();

  v5 = 9;
  if (v3 < 9)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t MediaUserAction.rawValue.getter()
{
  v1 = *v0;
  if (v1 <= 3)
  {
    v6 = 0x6E776F6E6B6E75;
    v7 = 2036427888;
    if (v1 != 2)
    {
      v7 = 0x6573756170;
    }

    if (*v0)
    {
      v6 = 0x616C506F54706174;
    }

    if (*v0 <= 1u)
    {
      return v6;
    }

    else
    {
      return v7;
    }
  }

  else
  {
    v2 = 0x6168436465657073;
    v3 = 0x6B63614270696B73;
    if (v1 != 7)
    {
      v3 = 0x77726F4670696B73;
    }

    if (v1 != 6)
    {
      v2 = v3;
    }

    v4 = 0x656D75736572;
    if (v1 != 4)
    {
      v4 = 0x64656C696166;
    }

    if (*v0 <= 5u)
    {
      return v4;
    }

    else
    {
      return v2;
    }
  }
}

unint64_t sub_22032CF7C()
{
  result = qword_27CF28CF0;
  if (!qword_27CF28CF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF28CF0);
  }

  return result;
}

uint64_t sub_22032CFD0()
{
  v1 = *v0;
  sub_220370108();
  sub_22032C84C();
  return sub_220370128();
}

uint64_t sub_22032D020()
{
  v1 = *v0;
  sub_220370108();
  sub_22032C84C();
  return sub_220370128();
}

uint64_t sub_22032D070@<X0>(uint64_t *a1@<X8>)
{
  result = MediaUserAction.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_22032D158()
{
  result = qword_27CF28CF8;
  if (!qword_27CF28CF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF28CF8);
  }

  return result;
}

uint64_t sub_22032D1AC()
{
  v1 = v0;
  result = sub_22036E438();
  if (result)
  {
    v3 = result;
    v22 = 0xD000000000000012;
    v23 = 0x8000000220392670;
    sub_22036FD28();
    if (*(v3 + 16) && (v4 = sub_22030385C(v21), (v5 & 1) != 0))
    {
      sub_220304FA0(*(v3 + 56) + 32 * v4, &v22);
      sub_2203049D8(v21);
      v6 = swift_dynamicCast();
      if (v6)
      {
        v7 = v19;
      }

      else
      {
        v7 = 0;
      }

      if (v6)
      {
        v8 = v20;
      }

      else
      {
        v8 = 0;
      }
    }

    else
    {
      sub_2203049D8(v21);
      v7 = 0;
      v8 = 0;
    }

    v22 = 0x6E676961706D6163;
    v23 = 0xEA00000000004449;
    sub_22036FD28();
    if (*(v3 + 16) && (v9 = sub_22030385C(v21), (v10 & 1) != 0))
    {
      sub_220304FA0(*(v3 + 56) + 32 * v9, &v22);
      sub_2203049D8(v21);
      v11 = swift_dynamicCast();
      if (v11)
      {
        v12 = v19;
      }

      else
      {
        v12 = 0;
      }

      if (v11)
      {
        v13 = v20;
      }

      else
      {
        v13 = 0;
      }
    }

    else
    {
      sub_2203049D8(v21);
      v12 = 0;
      v13 = 0;
    }

    v14 = swift_allocObject();
    sub_22036FD28();
    if (*(v3 + 16) && (v15 = sub_22030385C(v21), (v16 & 1) != 0))
    {
      sub_220304FA0(*(v3 + 56) + 32 * v15, &v22);
      sub_2203049D8(v21);

      if (swift_dynamicCast())
      {
        goto LABEL_26;
      }
    }

    else
    {

      sub_2203049D8(v21);
    }

    *(v14 + 16) = 2;
LABEL_26:
    v17 = *(v1 + OBJC_IVAR____TtC15StocksAnalytics15SessionObserver_sessionManager);
    v18 = swift_allocObject();
    v18[2] = v7;
    v18[3] = v8;
    v18[4] = v12;
    v18[5] = v13;
    v18[6] = v14;

    sub_22036EE98();
  }

  return result;
}

uint64_t sub_22032D480(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_22032D7BC();
  v12 = v11;
  v13 = *(v11 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v11);
  v16 = v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v17 = *(a6 + 16);
  v24[0] = a2;
  v24[1] = a3;
  v24[2] = a4;
  v24[3] = a5;
  v25 = v17;
  sub_22032D818();

  sub_22036ECD8();
  sub_2201F8304();
  v18 = sub_22036EE48();
  v19 = *(v18 - 8);
  v20 = *(v19 + 72);
  v21 = (*(v19 + 80) + 32) & ~*(v19 + 80);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_220371600;
  (*(v19 + 104))(v22 + v21, *MEMORY[0x277CEAD10], v18);
  sub_22036F028();

  return (*(v13 + 8))(v16, v12);
}

void sub_22032D7BC()
{
  if (!qword_281266958)
  {
    sub_22032D818();
    v0 = sub_22036ECE8();
    if (!v1)
    {
      atomic_store(v0, &qword_281266958);
    }
  }
}

unint64_t sub_22032D818()
{
  result = qword_281264338;
  if (!qword_281264338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281264338);
  }

  return result;
}

StocksAnalytics::DeviceOrientation_optional __swiftcall DeviceOrientation.init(rawValue:)(Swift::String rawValue)
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

uint64_t DeviceOrientation.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x6E776F6E6B6E75;
  v3 = 0x705565636166;
  if (v1 != 5)
  {
    v3 = 0x6E776F4465636166;
  }

  if (*v0 <= 4u)
  {
    v3 = 0x70616373646E616CLL;
  }

  v4 = 0x7469617274726F70;
  if (v1 != 1)
  {
    v4 = 0xD000000000000012;
  }

  if (*v0)
  {
    v2 = v4;
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

unint64_t sub_22032D9CC()
{
  result = qword_27CF28D00;
  if (!qword_27CF28D00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF28D00);
  }

  return result;
}

uint64_t sub_22032DA2C()
{
  *v0;
  *v0;
  *v0;
  sub_22036FB08();
}

uint64_t HeartbeatData.userID.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t HeartbeatData.userID.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t HeartbeatData.timestamp.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for HeartbeatData() + 20);
  v4 = sub_22036E5A8();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t HeartbeatData.timestamp.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for HeartbeatData() + 20);
  v4 = sub_22036E5A8();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t HeartbeatData.eventID.getter()
{
  v1 = (v0 + *(type metadata accessor for HeartbeatData() + 24));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t HeartbeatData.eventID.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for HeartbeatData() + 24));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t HeartbeatData.osVersion.getter()
{
  v1 = (v0 + *(type metadata accessor for HeartbeatData() + 28));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t HeartbeatData.osVersion.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for HeartbeatData() + 28));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t HeartbeatData.osBundleVersion.getter()
{
  v1 = (v0 + *(type metadata accessor for HeartbeatData() + 32));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t HeartbeatData.osBundleVersion.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for HeartbeatData() + 32));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t HeartbeatData.init(userID:timestamp:eventID:osVersion:osBundleVersion:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>, uint64_t a10)
{
  *a9 = a1;
  *(a9 + 1) = a2;
  v17 = type metadata accessor for HeartbeatData();
  v18 = v17[5];
  v19 = sub_22036E5A8();
  result = (*(*(v19 - 8) + 32))(&a9[v18], a3, v19);
  v21 = &a9[v17[6]];
  *v21 = a4;
  *(v21 + 1) = a5;
  v22 = &a9[v17[7]];
  *v22 = a6;
  *(v22 + 1) = a7;
  v23 = &a9[v17[8]];
  *v23 = a8;
  *(v23 + 1) = a10;
  return result;
}

uint64_t sub_22032E0E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22032E7A4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22032E110(uint64_t a1)
{
  v2 = sub_2201FF0B4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22032E14C(uint64_t a1)
{
  v2 = sub_2201FF0B4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t HeartbeatData.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v32 = a2;
  v3 = sub_22036E5A8();
  v33 = *(v3 - 8);
  v4 = *(v33 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2201FEFD4(0, &qword_27CF28D08, MEMORY[0x277D844C8]);
  v36 = v7;
  v34 = *(v7 - 8);
  v8 = *(v34 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = v31 - v9;
  v11 = type metadata accessor for HeartbeatData();
  v12 = *(*(v11 - 1) + 64);
  MEMORY[0x28223BE20](v11);
  v14 = (v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2201FF0B4();
  v35 = v10;
  v16 = v37;
  sub_220370148();
  if (v16)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v17 = v33;
  v42 = 0;
  *v14 = sub_22036FEE8();
  v14[1] = v18;
  v37 = v18;
  v41 = 1;
  sub_2201FF630(&qword_27CF266C0, MEMORY[0x277CC9578]);
  sub_22036FF28();
  (*(v17 + 32))(v14 + v11[5], v6, v3);
  v40 = 2;
  v31[1] = 0;
  v19 = sub_22036FEE8();
  v20 = (v14 + v11[6]);
  *v20 = v19;
  v20[1] = v21;
  v39 = 3;
  v22 = sub_22036FEE8();
  v23 = (v14 + v11[7]);
  *v23 = v22;
  v23[1] = v24;
  v38 = 4;
  v25 = sub_22036FEE8();
  v31[0] = v26;
  v27 = v25;
  (*(v34 + 8))(v35, v36);
  v28 = (v14 + v11[8]);
  v29 = v31[0];
  *v28 = v27;
  v28[1] = v29;
  sub_2202B7964(v14, v32);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_22032E610(v14);
}

uint64_t sub_22032E610(uint64_t a1)
{
  v2 = type metadata accessor for HeartbeatData();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_22032E750()
{
  result = qword_27CF28D10;
  if (!qword_27CF28D10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF28D10);
  }

  return result;
}

uint64_t sub_22032E7A4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x444972657375 && a2 == 0xE600000000000000;
  if (v4 || (sub_220370048() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6D617473656D6974 && a2 == 0xE900000000000070 || (sub_220370048() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x4449746E657665 && a2 == 0xE700000000000000 || (sub_220370048() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6F6973726556736FLL && a2 == 0xE90000000000006ELL || (sub_220370048() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x656C646E7542736FLL && a2 == 0xEF6E6F6973726556)
  {

    return 4;
  }

  else
  {
    v6 = sub_220370048();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_22032EA2C()
{
  v0 = sub_22036F118();
  __swift_allocate_value_buffer(v0, qword_27CF28D48);
  __swift_project_value_buffer(v0, qword_27CF28D48);
  return sub_22036F108();
}

uint64_t AudioControlMenuEngagementEvent.eventData.setter(uint64_t a1)
{
  sub_220230578();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t AudioControlMenuEngagementEvent.newsArticleData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AudioControlMenuEngagementEvent(0) + 20);
  sub_22032F7F4(0, &qword_2812667E0, sub_22022ED48, sub_22022EDA0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t AudioControlMenuEngagementEvent.newsArticleData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AudioControlMenuEngagementEvent(0) + 20);
  sub_22032F7F4(0, &qword_2812667E0, sub_22022ED48, sub_22022EDA0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t AudioControlMenuEngagementEvent.channelData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AudioControlMenuEngagementEvent(0) + 24);
  sub_22032F7F4(0, &qword_281266858, sub_220236A30, sub_220236A84);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t AudioControlMenuEngagementEvent.channelData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AudioControlMenuEngagementEvent(0) + 24);
  sub_22032F7F4(0, &qword_281266858, sub_220236A30, sub_220236A84);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t AudioControlMenuEngagementEvent.groupData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AudioControlMenuEngagementEvent(0) + 28);
  sub_22032F7F4(0, &qword_281266718, sub_220236C88, sub_220236CDC);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t AudioControlMenuEngagementEvent.groupData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AudioControlMenuEngagementEvent(0) + 28);
  sub_22032F7F4(0, &qword_281266718, sub_220236C88, sub_220236CDC);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t AudioControlMenuEngagementEvent.feedData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AudioControlMenuEngagementEvent(0) + 32);
  sub_22032F7F4(0, &qword_281266730, sub_2201FBCC4, sub_2201FBD1C);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t AudioControlMenuEngagementEvent.feedData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AudioControlMenuEngagementEvent(0) + 32);
  sub_22032F7F4(0, &qword_281266730, sub_2201FBCC4, sub_2201FBD1C);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t AudioControlMenuEngagementEvent.trackData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AudioControlMenuEngagementEvent(0) + 36);
  sub_22032F7F4(0, &qword_27CF25F28, sub_220237090, sub_2202370E4);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t AudioControlMenuEngagementEvent.trackData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AudioControlMenuEngagementEvent(0) + 36);
  sub_22032F7F4(0, &qword_27CF25F28, sub_220237090, sub_2202370E4);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t AudioControlMenuEngagementEvent.audioControlMenuData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AudioControlMenuEngagementEvent(0) + 40);
  sub_22032F7F4(0, &qword_27CF28D60, sub_220314E28, sub_220314E80);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t AudioControlMenuEngagementEvent.audioControlMenuData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AudioControlMenuEngagementEvent(0) + 40);
  sub_22032F7F4(0, &qword_27CF28D60, sub_220314E28, sub_220314E80);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t AudioControlMenuEngagementEvent.viewData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AudioControlMenuEngagementEvent(0) + 44);
  sub_22032F7F4(0, &qword_281266728, sub_2202020B8, sub_220202110);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t AudioControlMenuEngagementEvent.viewData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AudioControlMenuEngagementEvent(0) + 44);
  sub_22032F7F4(0, &qword_281266728, sub_2202020B8, sub_220202110);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t AudioControlMenuEngagementEvent.articleScienceData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AudioControlMenuEngagementEvent(0) + 48);
  sub_22032F7F4(0, &qword_2812667A0, sub_22025E66C, sub_22025E6C0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

void sub_22032F7F4(uint64_t a1, unint64_t *a2, void (*a3)(void), void (*a4)(void))
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

uint64_t AudioControlMenuEngagementEvent.articleScienceData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AudioControlMenuEngagementEvent(0) + 48);
  sub_22032F7F4(0, &qword_2812667A0, sub_22025E66C, sub_22025E6C0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t AudioControlMenuEngagementEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CEACF8];
  sub_220230578();
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for AudioControlMenuEngagementEvent(0);
  v5 = v4[5];
  sub_22032F7F4(0, &qword_2812667E0, sub_22022ED48, sub_22022EDA0);
  (*(*(v6 - 8) + 104))(a1 + v5, v2, v6);
  v7 = v4[6];
  sub_22032F7F4(0, &qword_281266858, sub_220236A30, sub_220236A84);
  (*(*(v8 - 8) + 104))(a1 + v7, v2, v8);
  v9 = v4[7];
  v10 = *MEMORY[0x277CEACF0];
  sub_22032F7F4(0, &qword_281266718, sub_220236C88, sub_220236CDC);
  (*(*(v11 - 8) + 104))(a1 + v9, v10, v11);
  v12 = v4[8];
  sub_22032F7F4(0, &qword_281266730, sub_2201FBCC4, sub_2201FBD1C);
  (*(*(v13 - 8) + 104))(a1 + v12, v10, v13);
  v14 = v4[9];
  sub_22032F7F4(0, &qword_27CF25F28, sub_220237090, sub_2202370E4);
  (*(*(v15 - 8) + 104))(a1 + v14, v2, v15);
  v16 = v4[10];
  sub_22032F7F4(0, &qword_27CF28D60, sub_220314E28, sub_220314E80);
  (*(*(v17 - 8) + 104))(a1 + v16, v2, v17);
  v18 = v4[11];
  sub_22032F7F4(0, &qword_281266728, sub_2202020B8, sub_220202110);
  (*(*(v19 - 8) + 104))(a1 + v18, v2, v19);
  v20 = v4[12];
  sub_22032F7F4(0, &qword_2812667A0, sub_22025E66C, sub_22025E6C0);
  v22 = *(*(v21 - 8) + 104);

  return v22(a1 + v20, v2, v21);
}

uint64_t AudioControlMenuEngagementEvent.Model.newsArticleData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for AudioControlMenuEngagementEvent.Model(0) + 20);
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

uint64_t AudioControlMenuEngagementEvent.Model.channelData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for AudioControlMenuEngagementEvent.Model(0) + 24));
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

uint64_t AudioControlMenuEngagementEvent.Model.groupData.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for AudioControlMenuEngagementEvent.Model(0) + 28));
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

uint64_t AudioControlMenuEngagementEvent.Model.feedData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for AudioControlMenuEngagementEvent.Model(0) + 32);
  v4 = *(v3 + 16);
  *a1 = *v3;
  *(a1 + 16) = v4;
}

uint64_t AudioControlMenuEngagementEvent.Model.trackData.getter@<X0>(uint64_t a1@<X8>)
{
  result = type metadata accessor for AudioControlMenuEngagementEvent.Model(0);
  v4 = (v1 + *(result + 36));
  v5 = *v4;
  LOBYTE(v4) = *(v4 + 4);
  *a1 = v5;
  *(a1 + 4) = v4;
  return result;
}

uint64_t AudioControlMenuEngagementEvent.Model.audioControlMenuData.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for AudioControlMenuEngagementEvent.Model(0);
  *a1 = *(v1 + *(result + 40));
  return result;
}

uint64_t AudioControlMenuEngagementEvent.Model.viewData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for AudioControlMenuEngagementEvent.Model(0) + 44));
  v5 = *v3;
  v4 = v3[1];
  LOWORD(v3) = *(v3 + 8);
  *a1 = v5;
  *(a1 + 8) = v4;
  *(a1 + 16) = v3;
}

uint64_t AudioControlMenuEngagementEvent.Model.articleScienceData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for AudioControlMenuEngagementEvent.Model(0) + 48);
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
  return sub_220272A1C(v23, v22);
}

__n128 AudioControlMenuEngagementEvent.Model.init(eventData:newsArticleData:channelData:groupData:feedData:trackData:audioControlMenuData:viewData:articleScienceData:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __int128 *a3@<X2>, __int128 *a4@<X3>, __int128 *a5@<X4>, int *a6@<X5>, char *a7@<X6>, uint64_t *a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v38 = *a3;
  v14 = *(a3 + 2);
  v15 = *(a3 + 3);
  v16 = *(a3 + 32);
  v17 = *(a3 + 33);
  v18 = *(a4 + 5);
  v41 = *a5;
  v39 = *(a4 + 4);
  v40 = *(a5 + 2);
  v42 = *(a6 + 4);
  v43 = *a6;
  v44 = *a7;
  v47 = *a8;
  v46 = a8[1];
  v45 = *(a8 + 8);
  v19 = sub_22036F388();
  v36 = a4[1];
  v37 = *a4;
  (*(*(v19 - 8) + 32))(a9, a1, v19);
  v20 = type metadata accessor for AudioControlMenuEngagementEvent.Model(0);
  v21 = a9 + v20[5];
  v22 = *(a2 + 48);
  *(v21 + 32) = *(a2 + 32);
  *(v21 + 48) = v22;
  *(v21 + 64) = *(a2 + 64);
  v23 = *(a2 + 16);
  *v21 = *a2;
  *(v21 + 16) = v23;
  v24 = a9 + v20[6];
  *v24 = v38;
  *(v24 + 16) = v14;
  *(v24 + 24) = v15;
  *(v24 + 32) = v16;
  *(v24 + 33) = v17;
  v25 = a9 + v20[7];
  *v25 = v37;
  *(v25 + 16) = v36;
  *(v25 + 32) = v39;
  *(v25 + 40) = v18;
  v26 = a9 + v20[8];
  *v26 = v41;
  *(v26 + 16) = v40;
  v27 = a9 + v20[9];
  *v27 = v43;
  *(v27 + 4) = v42;
  *(a9 + v20[10]) = v44;
  v28 = a9 + v20[11];
  *v28 = v47;
  *(v28 + 8) = v46;
  *(v28 + 16) = v45;
  v29 = a9 + v20[12];
  v30 = *(a10 + 176);
  *(v29 + 160) = *(a10 + 160);
  *(v29 + 176) = v30;
  *(v29 + 192) = *(a10 + 192);
  v31 = *(a10 + 112);
  *(v29 + 96) = *(a10 + 96);
  *(v29 + 112) = v31;
  v32 = *(a10 + 144);
  *(v29 + 128) = *(a10 + 128);
  *(v29 + 144) = v32;
  v33 = *(a10 + 48);
  *(v29 + 32) = *(a10 + 32);
  *(v29 + 48) = v33;
  v34 = *(a10 + 80);
  *(v29 + 64) = *(a10 + 64);
  *(v29 + 80) = v34;
  result = *(a10 + 16);
  *v29 = *a10;
  *(v29 + 16) = result;
  return result;
}

unint64_t sub_2203302D8(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 0x746144746E657665;
    v6 = 0x446C656E6E616863;
    if (a1 != 2)
    {
      v6 = 0x74614470756F7267;
    }

    if (a1)
    {
      v5 = 0x697472417377656ELL;
    }

    if (a1 <= 1u)
    {
      return v5;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0xD000000000000014;
    v2 = 0x6174614477656976;
    if (a1 != 7)
    {
      v2 = 0xD000000000000012;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 0x6174614464656566;
    if (a1 != 4)
    {
      v3 = 0x7461446B63617274;
    }

    if (a1 <= 5u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_220330418@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_220331E54(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_220330440(uint64_t a1)
{
  v2 = sub_220330AAC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22033047C(uint64_t a1)
{
  v2 = sub_220330AAC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t AudioControlMenuEngagementEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  sub_2203312B0(0, &qword_27CF28D68, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = v51 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220330AAC();
  sub_220370168();
  v96 = 0;
  sub_22036F388();
  sub_2202366E0(&qword_2812666A8);
  sub_22036FFF8();
  if (!v2)
  {
    v12 = type metadata accessor for AudioControlMenuEngagementEvent.Model(0);
    v13 = v3 + v12[5];
    v14 = *(v13 + 16);
    v15 = *(v13 + 48);
    v90 = *(v13 + 32);
    v91 = v15;
    v16 = *(v13 + 16);
    v89[0] = *v13;
    v89[1] = v16;
    v17 = *(v13 + 48);
    v86 = v90;
    v87 = v17;
    v92 = *(v13 + 64);
    v88 = *(v13 + 64);
    v84 = v89[0];
    v85 = v14;
    v95 = 1;
    sub_22022ECDC(v89, &v66);
    sub_22022EDA0();
    sub_22036FFF8();
    v82[2] = v86;
    v82[3] = v87;
    v83 = v88;
    v82[0] = v84;
    v82[1] = v85;
    sub_22022ED14(v82);
    v18 = (v3 + v12[6]);
    v19 = *v18;
    v20 = v18[1];
    v21 = v18[2];
    v22 = v18[3];
    v23 = *(v18 + 32);
    LOBYTE(v18) = *(v18 + 33);
    *&v66 = v19;
    *(&v66 + 1) = v20;
    *&v67 = v21;
    *(&v67 + 1) = v22;
    LOBYTE(v68) = v23;
    BYTE1(v68) = v18;
    LOBYTE(v53) = 2;
    sub_220236A84();

    sub_22036FFF8();

    v24 = (v3 + v12[7]);
    v25 = v24[1];
    v26 = v24[2];
    v27 = v24[3];
    v28 = v24[4];
    v29 = v24[5];
    *&v66 = *v24;
    *(&v66 + 1) = v25;
    *&v67 = v26;
    *(&v67 + 1) = v27;
    *&v68 = v28;
    *(&v68 + 1) = v29;
    LOBYTE(v53) = 3;
    sub_22023846C(v66, v25, v26);
    sub_220236CDC();
    sub_22036FF88();
    sub_2202391D8(v66, *(&v66 + 1), v67);
    v30 = (v3 + v12[8]);
    v31 = *(v30 + 2);
    v66 = *v30;
    *&v67 = v31;
    LOBYTE(v53) = 4;
    sub_2201FBD1C();

    sub_22036FF88();

    v32 = (v3 + v12[9]);
    v33 = *v32;
    LOBYTE(v32) = *(v32 + 4);
    LODWORD(v66) = v33;
    BYTE4(v66) = v32;
    LOBYTE(v53) = 5;
    sub_2202370E4();
    sub_22036FFF8();
    LOBYTE(v66) = *(v3 + v12[10]);
    LOBYTE(v53) = 6;
    sub_220314E80();
    sub_22036FFF8();
    v34 = (v3 + v12[11]);
    v35 = *v34;
    v36 = v34[1];
    LOWORD(v34) = *(v34 + 8);
    v79 = v35;
    v80 = v36;
    v81 = v34;
    v94 = 7;
    sub_220202110();

    sub_22036FFF8();

    v37 = (v3 + v12[12]);
    v38 = v37[9];
    v39 = v37[11];
    v76 = v37[10];
    v77 = v39;
    v40 = v37[5];
    v41 = v37[7];
    v72 = v37[6];
    v73 = v41;
    v42 = v37[7];
    v43 = v37[9];
    v74 = v37[8];
    v75 = v43;
    v44 = v37[1];
    v45 = v37[3];
    v68 = v37[2];
    v69 = v45;
    v46 = v37[3];
    v47 = v37[5];
    v70 = v37[4];
    v71 = v47;
    v48 = v37[1];
    v66 = *v37;
    v67 = v48;
    v49 = v37[11];
    v63 = v76;
    v64 = v49;
    v59 = v72;
    v60 = v42;
    v61 = v74;
    v62 = v38;
    v55 = v68;
    v56 = v46;
    v57 = v70;
    v58 = v40;
    v78 = *(v37 + 24);
    v65 = *(v37 + 24);
    v53 = v66;
    v54 = v44;
    v93 = 8;
    sub_220272A1C(&v66, v51);
    sub_22025E6C0();
    sub_22036FFF8();
    v51[10] = v63;
    v51[11] = v64;
    v52 = v65;
    v51[6] = v59;
    v51[7] = v60;
    v51[8] = v61;
    v51[9] = v62;
    v51[2] = v55;
    v51[3] = v56;
    v51[4] = v57;
    v51[5] = v58;
    v51[0] = v53;
    v51[1] = v54;
    sub_22027391C(v51);
  }

  return (*(v7 + 8))(v10, v6);
}

unint64_t sub_220330AAC()
{
  result = qword_27CF28D70;
  if (!qword_27CF28D70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF28D70);
  }

  return result;
}

uint64_t AudioControlMenuEngagementEvent.Model.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v51 = a2;
  v3 = sub_22036F388();
  v52 = *(v3 - 8);
  v4 = *(v52 + 64);
  MEMORY[0x28223BE20](v3);
  v54 = &v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2203312B0(0, &qword_27CF28D78, MEMORY[0x277D844C8]);
  v55 = v6;
  v53 = *(v6 - 8);
  v7 = *(v53 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v49 - v8;
  v10 = type metadata accessor for AudioControlMenuEngagementEvent.Model(0);
  v11 = *(*(v10 - 1) + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v49 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220330AAC();
  v56 = v9;
  v15 = v77;
  sub_220370148();
  if (v15)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v16 = v53;
  v77 = a1;
  v50 = v13;
  LOBYTE(v57) = 0;
  sub_2202366E0(&qword_2812666A0);
  v18 = v54;
  v17 = v55;
  sub_22036FF28();
  v19 = v3;
  v20 = v50;
  (*(v52 + 32))(v50, v18, v19);
  v71 = 1;
  sub_22022ED48();
  sub_22036FF28();
  v54 = 0;
  v21 = &v20[v10[5]];
  v22 = v75;
  *(v21 + 2) = v74;
  *(v21 + 3) = v22;
  *(v21 + 16) = v76;
  v23 = v73;
  *v21 = v72;
  *(v21 + 1) = v23;
  v70 = 2;
  sub_220236A30();
  sub_22036FF28();
  v24 = v58;
  v25 = v59;
  v26 = BYTE1(v59);
  v27 = &v20[v10[6]];
  *v27 = v57;
  *(v27 + 1) = v24;
  v27[32] = v25;
  v27[33] = v26;
  v70 = 3;
  sub_220236C88();
  sub_22036FEB8();
  v28 = &v20[v10[7]];
  v29 = v58;
  *v28 = v57;
  *(v28 + 1) = v29;
  *(v28 + 2) = v59;
  v70 = 4;
  sub_2201FBCC4();
  sub_22036FEB8();
  v30 = v58;
  v31 = &v20[v10[8]];
  *v31 = v57;
  *(v31 + 2) = v30;
  v70 = 5;
  sub_220237090();
  sub_22036FF28();
  v32 = BYTE4(v57);
  v33 = &v20[v10[9]];
  *v33 = v57;
  v33[4] = v32;
  v70 = 6;
  sub_220314E28();
  sub_22036FF28();
  v49 = v10;
  v20[v10[10]] = v57;
  v70 = 7;
  sub_2202020B8();
  sub_22036FF28();
  v34 = *(&v57 + 1);
  v35 = v58;
  v36 = v49;
  v37 = &v50[v49[11]];
  *v37 = v57;
  *(v37 + 1) = v34;
  *(v37 + 8) = v35;
  v70 = 8;
  sub_22025E66C();
  sub_22036FF28();
  v38 = (v16 + 8);
  v39 = v77;
  (*v38)(v56, v17);
  v40 = v50;
  v41 = &v50[v36[12]];
  v42 = v68;
  *(v41 + 10) = v67;
  *(v41 + 11) = v42;
  *(v41 + 24) = v69;
  v43 = v64;
  *(v41 + 6) = v63;
  *(v41 + 7) = v43;
  v44 = v66;
  *(v41 + 8) = v65;
  *(v41 + 9) = v44;
  v45 = v60;
  *(v41 + 2) = v59;
  *(v41 + 3) = v45;
  v46 = v62;
  *(v41 + 4) = v61;
  *(v41 + 5) = v46;
  v47 = v58;
  *v41 = v57;
  *(v41 + 1) = v47;
  sub_220331314(v40, v51);
  __swift_destroy_boxed_opaque_existential_1(v39);
  return sub_220331378(v40);
}

void sub_2203312B0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_220330AAC();
    v7 = a3(a1, &type metadata for AudioControlMenuEngagementEvent.Model.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_220331314(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AudioControlMenuEngagementEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_220331378(uint64_t a1)
{
  v2 = type metadata accessor for AudioControlMenuEngagementEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2203314AC@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *MEMORY[0x277CEACF8];
  sub_220230578();
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = a1[5];
  sub_22032F7F4(0, &qword_2812667E0, sub_22022ED48, sub_22022EDA0);
  (*(*(v7 - 8) + 104))(a2 + v6, v4, v7);
  v8 = a1[6];
  sub_22032F7F4(0, &qword_281266858, sub_220236A30, sub_220236A84);
  (*(*(v9 - 8) + 104))(a2 + v8, v4, v9);
  v10 = a1[7];
  v11 = *MEMORY[0x277CEACF0];
  sub_22032F7F4(0, &qword_281266718, sub_220236C88, sub_220236CDC);
  (*(*(v12 - 8) + 104))(a2 + v10, v11, v12);
  v13 = a1[8];
  sub_22032F7F4(0, &qword_281266730, sub_2201FBCC4, sub_2201FBD1C);
  (*(*(v14 - 8) + 104))(a2 + v13, v11, v14);
  v15 = a1[9];
  sub_22032F7F4(0, &qword_27CF25F28, sub_220237090, sub_2202370E4);
  (*(*(v16 - 8) + 104))(a2 + v15, v4, v16);
  v17 = a1[10];
  sub_22032F7F4(0, &qword_27CF28D60, sub_220314E28, sub_220314E80);
  (*(*(v18 - 8) + 104))(a2 + v17, v4, v18);
  v19 = a1[11];
  sub_22032F7F4(0, &qword_281266728, sub_2202020B8, sub_220202110);
  (*(*(v20 - 8) + 104))(a2 + v19, v4, v20);
  v21 = a1[12];
  sub_22032F7F4(0, &qword_2812667A0, sub_22025E66C, sub_22025E6C0);
  v23 = *(*(v22 - 8) + 104);

  return v23(a2 + v21, v4, v22);
}

void sub_220331928()
{
  sub_220230578();
  if (v0 <= 0x3F)
  {
    sub_22032F7F4(319, &qword_2812667E0, sub_22022ED48, sub_22022EDA0);
    if (v1 <= 0x3F)
    {
      sub_22032F7F4(319, &qword_281266858, sub_220236A30, sub_220236A84);
      if (v2 <= 0x3F)
      {
        sub_22032F7F4(319, &qword_281266718, sub_220236C88, sub_220236CDC);
        if (v3 <= 0x3F)
        {
          sub_22032F7F4(319, &qword_281266730, sub_2201FBCC4, sub_2201FBD1C);
          if (v4 <= 0x3F)
          {
            sub_22032F7F4(319, &qword_27CF25F28, sub_220237090, sub_2202370E4);
            if (v5 <= 0x3F)
            {
              sub_22032F7F4(319, &qword_27CF28D60, sub_220314E28, sub_220314E80);
              if (v6 <= 0x3F)
              {
                sub_22032F7F4(319, &qword_281266728, sub_2202020B8, sub_220202110);
                if (v7 <= 0x3F)
                {
                  sub_22032F7F4(319, &qword_2812667A0, sub_22025E66C, sub_22025E6C0);
                  if (v8 <= 0x3F)
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

void sub_220331C3C()
{
  sub_22036F388();
  if (v0 <= 0x3F)
  {
    sub_22023A8F4(319, &qword_281262048);
    if (v1 <= 0x3F)
    {
      sub_22023A8F4(319, &qword_281262190);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_220331D50()
{
  result = qword_27CF28DA0;
  if (!qword_27CF28DA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF28DA0);
  }

  return result;
}

unint64_t sub_220331DA8()
{
  result = qword_27CF28DA8;
  if (!qword_27CF28DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF28DA8);
  }

  return result;
}

unint64_t sub_220331E00()
{
  result = qword_27CF28DB0;
  if (!qword_27CF28DB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF28DB0);
  }

  return result;
}

uint64_t sub_220331E54(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746144746E657665 && a2 == 0xE900000000000061;
  if (v4 || (sub_220370048() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x697472417377656ELL && a2 == 0xEF61746144656C63 || (sub_220370048() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x446C656E6E616863 && a2 == 0xEB00000000617461 || (sub_220370048() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x74614470756F7267 && a2 == 0xE900000000000061 || (sub_220370048() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6174614464656566 && a2 == 0xE800000000000000 || (sub_220370048() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x7461446B63617274 && a2 == 0xE900000000000061 || (sub_220370048() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000014 && 0x8000000220392740 == a2 || (sub_220370048() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x6174614477656976 && a2 == 0xE800000000000000 || (sub_220370048() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000012 && 0x8000000220390890 == a2)
  {

    return 8;
  }

  else
  {
    v6 = sub_220370048();

    if (v6)
    {
      return 8;
    }

    else
    {
      return 9;
    }
  }
}

double static ArticleScienceData.empty.getter@<D0>(uint64_t a1@<X8>)
{
  result = 0.0;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 80) = MEMORY[0x277D84F90];
  *(a1 + 148) = 0;
  *(a1 + 152) = 0;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  *(a1 + 136) = 0;
  *(a1 + 144) = 0;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0;
  return result;
}

uint64_t sub_220332194()
{
  sub_2201F8910(0, &qword_281261B50, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
  v0 = sub_22036EE48();
  v1 = *(v0 - 8);
  v2 = *(v1 + 72);
  v3 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_220371600;
  (*(v1 + 104))(v4 + v3, *MEMORY[0x277CEAD10], v0);
  sub_2201F8C48();
  sub_22036F028();
}

uint64_t sub_2203322F0()
{
  sub_2201F88B4();
  v1 = *(*(v0 - 8) + 80);

  return sub_220332194();
}

uint64_t sub_2203323C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6570795466726570 && a2 == 0xE800000000000000)
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

uint64_t sub_22033244C(uint64_t a1)
{
  v2 = sub_220332620();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_220332488(uint64_t a1)
{
  v2 = sub_220332620();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SymbolPerfData.encode(to:)(void *a1)
{
  sub_220332860(0, &qword_281261CA0, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  v8 = &v12 - v7;
  v9 = *v1;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220332620();
  sub_220370168();
  v13 = v9;
  sub_220332674();
  sub_22036FFF8();
  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_220332620()
{
  result = qword_281265830[0];
  if (!qword_281265830[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_281265830);
  }

  return result;
}

unint64_t sub_220332674()
{
  result = qword_281263628;
  if (!qword_281263628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281263628);
  }

  return result;
}

uint64_t SymbolPerfData.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  sub_220332860(0, &qword_27CF28DB8, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = &v13 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220332620();
  sub_220370148();
  if (!v2)
  {
    sub_2203328C4();
    sub_22036FF28();
    (*(v7 + 8))(v10, v6);
    *a2 = v14;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_220332860(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_220332620();
    v7 = a3(a1, &type metadata for SymbolPerfData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_2203328C4()
{
  result = qword_27CF28DC0;
  if (!qword_27CF28DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF28DC0);
  }

  return result;
}

unint64_t sub_22033295C()
{
  result = qword_27CF28DC8;
  if (!qword_27CF28DC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF28DC8);
  }

  return result;
}

unint64_t sub_2203329B4()
{
  result = qword_281265820;
  if (!qword_281265820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281265820);
  }

  return result;
}

unint64_t sub_220332A0C()
{
  result = qword_281265828;
  if (!qword_281265828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281265828);
  }

  return result;
}

uint64_t sub_220332B28()
{
  v0 = sub_22036F118();
  __swift_allocate_value_buffer(v0, qword_27CF28E00);
  __swift_project_value_buffer(v0, qword_27CF28E00);
  return sub_22036F108();
}

uint64_t TickerExposureEvent.eventData.setter(uint64_t a1)
{
  sub_220230578();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t TickerExposureEvent.timedData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for TickerExposureEvent(0) + 20);
  sub_220230718();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t TickerExposureEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CEACF8];
  sub_220230578();
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = *(type metadata accessor for TickerExposureEvent(0) + 20);
  sub_220230718();
  v6 = *(*(v5 - 8) + 104);

  return v6(a1 + v4, v2, v5);
}

uint64_t sub_220332E64@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a1(0) + 20);
  v7 = a2(0);
  v8 = *(*(v7 - 8) + 16);

  return v8(a3, v3 + v6, v7);
}

uint64_t TickerExposureEvent.Model.init(eventData:timedData:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_22036F388();
  (*(*(v6 - 8) + 32))(a3, a1, v6);
  v7 = *(type metadata accessor for TickerExposureEvent.Model(0) + 20);
  v8 = sub_22036F3C8();
  v9 = *(*(v8 - 8) + 32);

  return v9(a3 + v7, a2, v8);
}

uint64_t sub_220332FD0(uint64_t a1)
{
  v2 = sub_220333258();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22033300C(uint64_t a1)
{
  v2 = sub_220333258();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t TickerExposureEvent.Model.encode(to:)(void *a1)
{
  sub_2203336DC(0, &qword_27CF28E18, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  v8 = &v12[-v7];
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220333258();
  sub_220370168();
  v12[15] = 0;
  sub_22036F388();
  sub_2202307E4(&qword_2812666A8, MEMORY[0x277CEAEB0]);
  sub_22036FFF8();
  if (!v1)
  {
    v10 = *(type metadata accessor for TickerExposureEvent.Model(0) + 20);
    v12[14] = 1;
    sub_22036F3C8();
    sub_2202307E4(&qword_281266690, MEMORY[0x277CEAED0]);
    sub_22036FFF8();
  }

  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_220333258()
{
  result = qword_27CF28E20;
  if (!qword_27CF28E20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF28E20);
  }

  return result;
}

uint64_t TickerExposureEvent.Model.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v28 = a2;
  v30 = sub_22036F3C8();
  v27 = *(v30 - 8);
  v4 = *(v27 + 64);
  MEMORY[0x28223BE20](v30);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_22036F388();
  v29 = *(v33 - 8);
  v7 = *(v29 + 64);
  MEMORY[0x28223BE20](v33);
  v31 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2203336DC(0, &qword_27CF28E28, MEMORY[0x277D844C8]);
  v34 = v9;
  v32 = *(v9 - 8);
  v10 = *(v32 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v25 - v11;
  v13 = type metadata accessor for TickerExposureEvent.Model(0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220333258();
  sub_220370148();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v26 = v13;
  v18 = v16;
  v20 = v29;
  v19 = v30;
  v36 = 0;
  sub_2202307E4(&qword_2812666A0, MEMORY[0x277CEAEB0]);
  v21 = v31;
  sub_22036FF28();
  v22 = *(v20 + 32);
  v25 = v18;
  v22(v18, v21, v33);
  v35 = 1;
  sub_2202307E4(&qword_281266688, MEMORY[0x277CEAED0]);
  sub_22036FF28();
  (*(v32 + 8))(v12, v34);
  v23 = v25;
  (*(v27 + 32))(v25 + *(v26 + 20), v6, v19);
  sub_220333740(v23, v28);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_2203337A4(v23);
}

void sub_2203336DC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_220333258();
    v7 = a3(a1, &type metadata for TickerExposureEvent.Model.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_220333740(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TickerExposureEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2203337A4(uint64_t a1)
{
  v2 = type metadata accessor for TickerExposureEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_22033393C()
{
  result = qword_27CF28E50;
  if (!qword_27CF28E50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF28E50);
  }

  return result;
}

unint64_t sub_220333994()
{
  result = qword_27CF28E58;
  if (!qword_27CF28E58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF28E58);
  }

  return result;
}

unint64_t sub_2203339EC()
{
  result = qword_27CF28E60;
  if (!qword_27CF28E60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF28E60);
  }

  return result;
}

uint64_t sub_220333B08()
{
  v0 = sub_22036F118();
  __swift_allocate_value_buffer(v0, qword_27CF28E68);
  __swift_project_value_buffer(v0, qword_27CF28E68);
  return sub_22036F108();
}

uint64_t SymbolChartDisplayErrorEvent.eventData.setter(uint64_t a1)
{
  sub_220230578();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t SymbolChartDisplayErrorEvent.symbolChartDisplayErrorData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SymbolChartDisplayErrorEvent(0) + 20);
  sub_220333EB0(0, &qword_281266758, sub_220264EA8, sub_220264F00);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SymbolChartDisplayErrorEvent.symbolChartDisplayErrorData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SymbolChartDisplayErrorEvent(0) + 20);
  sub_220333EB0(0, &qword_281266758, sub_220264EA8, sub_220264F00);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t SymbolChartDisplayErrorEvent.symbolData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SymbolChartDisplayErrorEvent(0) + 24);
  sub_220333EB0(0, &qword_281266870, sub_220230BFC, sub_220230C50);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

void sub_220333EB0(uint64_t a1, unint64_t *a2, void (*a3)(void), void (*a4)(void))
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

uint64_t SymbolChartDisplayErrorEvent.symbolData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SymbolChartDisplayErrorEvent(0) + 24);
  sub_220333EB0(0, &qword_281266870, sub_220230BFC, sub_220230C50);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t SymbolChartDisplayErrorEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CEACF8];
  sub_220230578();
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for SymbolChartDisplayErrorEvent(0);
  v5 = *(v4 + 20);
  sub_220333EB0(0, &qword_281266758, sub_220264EA8, sub_220264F00);
  (*(*(v6 - 8) + 104))(a1 + v5, v2, v6);
  v7 = *(v4 + 24);
  sub_220333EB0(0, &qword_281266870, sub_220230BFC, sub_220230C50);
  v9 = *(*(v8 - 8) + 104);

  return v9(a1 + v7, v2, v8);
}

uint64_t SymbolChartDisplayErrorEvent.Model.symbolChartDisplayErrorData.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for SymbolChartDisplayErrorEvent.Model(0);
  *a1 = *(v1 + *(result + 20));
  return result;
}

uint64_t SymbolChartDisplayErrorEvent.Model.symbolData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for SymbolChartDisplayErrorEvent.Model(0) + 24);
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

uint64_t SymbolChartDisplayErrorEvent.Model.init(eventData:symbolChartDisplayErrorData:symbolData:)@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v6 = *a2;
  v7 = *a3;
  v8 = a3[1];
  v9 = *(a3 + 16);
  v10 = a3[3];
  v11 = a3[4];
  v12 = sub_22036F388();
  (*(*(v12 - 8) + 32))(a4, a1, v12);
  result = type metadata accessor for SymbolChartDisplayErrorEvent.Model(0);
  *(a4 + *(result + 20)) = v6;
  v14 = a4 + *(result + 24);
  *v14 = v7;
  *(v14 + 8) = v8;
  *(v14 + 16) = v9;
  *(v14 + 24) = v10;
  *(v14 + 32) = v11;
  return result;
}

uint64_t sub_220334318()
{
  v1 = 0xD00000000000001BLL;
  if (*v0 != 1)
  {
    v1 = 0x61446C6F626D7973;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x746144746E657665;
  }
}

uint64_t sub_220334380@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2203350DC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2203343A8(uint64_t a1)
{
  v2 = sub_220334670();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2203343E4(uint64_t a1)
{
  v2 = sub_220334670();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SymbolChartDisplayErrorEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  sub_220334A78(0, &qword_27CF28E80, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = v19 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220334670();
  sub_220370168();
  LOBYTE(v19[0]) = 0;
  sub_22036F388();
  sub_2202366E0(&qword_2812666A8);
  sub_22036FFF8();
  if (!v2)
  {
    v12 = type metadata accessor for SymbolChartDisplayErrorEvent.Model(0);
    LOBYTE(v19[0]) = *(v3 + *(v12 + 20));
    v23 = 1;
    sub_220264F00();
    sub_22036FFF8();
    v13 = v3 + *(v12 + 24);
    v14 = *(v13 + 8);
    v15 = *(v13 + 16);
    v16 = *(v13 + 24);
    v17 = *(v13 + 32);
    v19[0] = *v13;
    v19[1] = v14;
    v20 = v15;
    v21 = v16;
    v22 = v17;
    v23 = 2;
    sub_220230C50();

    sub_22036FFF8();
  }

  return (*(v7 + 8))(v10, v6);
}

unint64_t sub_220334670()
{
  result = qword_27CF28E88;
  if (!qword_27CF28E88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF28E88);
  }

  return result;
}

uint64_t SymbolChartDisplayErrorEvent.Model.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v30 = a2;
  v4 = sub_22036F388();
  v31 = *(v4 - 8);
  v32 = v4;
  v5 = *(v31 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_220334A78(0, &qword_27CF28E90, MEMORY[0x277D844C8]);
  v33 = *(v8 - 8);
  v34 = v8;
  v9 = *(v33 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v28 - v10;
  v12 = type metadata accessor for SymbolChartDisplayErrorEvent.Model(0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220334670();
  sub_220370148();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v29 = v12;
  v17 = v15;
  v18 = v31;
  LOBYTE(v35) = 0;
  sub_2202366E0(&qword_2812666A0);
  v19 = v32;
  v20 = v34;
  sub_22036FF28();
  (*(v18 + 32))(v17, v7, v19);
  v40 = 1;
  sub_220264EA8();
  sub_22036FF28();
  v21 = v29;
  *(v17 + *(v29 + 20)) = v35;
  v40 = 2;
  sub_220230BFC();
  sub_22036FF28();
  (*(v33 + 8))(v11, v20);
  v22 = v36;
  v23 = v37;
  v24 = v38;
  v25 = v39;
  v26 = v17 + *(v21 + 24);
  *v26 = v35;
  *(v26 + 8) = v22;
  *(v26 + 16) = v23;
  *(v26 + 24) = v24;
  *(v26 + 32) = v25;
  sub_220334ADC(v17, v30);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_220334B40(v17);
}

void sub_220334A78(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_220334670();
    v7 = a3(a1, &type metadata for SymbolChartDisplayErrorEvent.Model.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_220334ADC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SymbolChartDisplayErrorEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_220334B40(uint64_t a1)
{
  v2 = type metadata accessor for SymbolChartDisplayErrorEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_220334C74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *MEMORY[0x277CEACF8];
  sub_220230578();
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = *(a1 + 20);
  sub_220333EB0(0, &qword_281266758, sub_220264EA8, sub_220264F00);
  (*(*(v7 - 8) + 104))(a2 + v6, v4, v7);
  v8 = *(a1 + 24);
  sub_220333EB0(0, &qword_281266870, sub_220230BFC, sub_220230C50);
  v10 = *(*(v9 - 8) + 104);

  return v10(a2 + v8, v4, v9);
}

void sub_220334E0C()
{
  sub_220230578();
  if (v0 <= 0x3F)
  {
    sub_220333EB0(319, &qword_281266758, sub_220264EA8, sub_220264F00);
    if (v1 <= 0x3F)
    {
      sub_220333EB0(319, &qword_281266870, sub_220230BFC, sub_220230C50);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_220334F40()
{
  result = sub_22036F388();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_220334FD8()
{
  result = qword_27CF28EA8;
  if (!qword_27CF28EA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF28EA8);
  }

  return result;
}

unint64_t sub_220335030()
{
  result = qword_27CF28EB0;
  if (!qword_27CF28EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF28EB0);
  }

  return result;
}

unint64_t sub_220335088()
{
  result = qword_27CF28EB8;
  if (!qword_27CF28EB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF28EB8);
  }

  return result;
}

uint64_t sub_2203350DC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746144746E657665 && a2 == 0xE900000000000061;
  if (v4 || (sub_220370048() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD00000000000001BLL && 0x80000002203927D0 == a2 || (sub_220370048() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x61446C6F626D7973 && a2 == 0xEA00000000006174)
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

uint64_t StocksSession.sessionID.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t StocksSession.appSessionID.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t StocksSession.userData.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[3];
  v7[0] = v1[2];
  v7[1] = v2;
  v4 = v1[5];
  v8 = v1[4];
  v3 = v8;
  v9 = v4;
  *a1 = v7[0];
  a1[1] = v2;
  a1[2] = v3;
  a1[3] = v4;
  return sub_2202C6FD8(v7, &v6);
}

uint64_t type metadata accessor for StocksSession()
{
  result = qword_2812662A0;
  if (!qword_2812662A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t StocksSession.appData.getter@<X0>(void *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for StocksSession() + 32));
  v4 = v3[1];
  v5 = v3[2];
  v6 = v3[3];
  *a1 = *v3;
  a1[1] = v4;
  a1[2] = v5;
  a1[3] = v6;
}

uint64_t StocksSession.deviceData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for StocksSession() + 36);
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
  return sub_2202D6354(v10, v9);
}

uint64_t StocksSession.contentEnvironmentData.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for StocksSession();
  *a1 = *(v1 + *(result + 40));
  return result;
}

uint64_t StocksSession.userBundleSubscriptionContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for StocksSession() + 44);
  v4 = *v3;
  v5 = *(v3 + 8);
  v6 = *(v3 + 16);
  v7 = *(v3 + 24);
  v8 = *(v3 + 32);
  *a1 = *v3;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  *(a1 + 32) = v8;
  *(a1 + 40) = *(v3 + 40);

  return sub_220335498(v4, v5, v6);
}

uint64_t sub_220335498(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3 != 1)
  {
  }

  return result;
}

uint64_t StocksSession.debugData.getter@<X0>(void *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for StocksSession() + 48));
  v4 = v3[1];
  *a1 = *v3;
  a1[1] = v4;
}

uint64_t StocksSession.orientationData.getter@<X0>(_WORD *a1@<X8>)
{
  result = type metadata accessor for StocksSession();
  *a1 = *(v1 + *(result + 52));
  return result;
}

uint64_t StocksSession.watchedSymbolListData.getter@<X0>(void *a1@<X8>)
{
  *a1 = *(v1 + *(type metadata accessor for StocksSession() + 56));
}

uint64_t StocksSession.watchlistSummaryData.getter@<X0>(void *a1@<X8>)
{
  *a1 = *(v1 + *(type metadata accessor for StocksSession() + 60));
}

unint64_t sub_2203355E4(unsigned __int8 a1)
{
  if (a1 > 5u)
  {
    v6 = 0x7461746E6569726FLL;
    v7 = 0xD000000000000015;
    if (a1 != 10)
    {
      v7 = 0xD000000000000014;
    }

    if (a1 != 9)
    {
      v6 = v7;
    }

    v8 = 0xD000000000000016;
    v9 = 0xD000000000000021;
    if (a1 != 7)
    {
      v9 = 0x7461446775626564;
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
    v1 = 0x496E6F6973736573;
    v2 = 0x446E6F6973736573;
    v3 = 0x61746144707061;
    if (a1 != 4)
    {
      v3 = 0x6144656369766564;
    }

    if (a1 != 3)
    {
      v2 = v3;
    }

    v4 = 0x6973736553707061;
    if (a1 != 1)
    {
      v4 = 0x6174614472657375;
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

uint64_t sub_220335798@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_220336D64(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2203357C0(uint64_t a1)
{
  v2 = sub_220335E38();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2203357FC(uint64_t a1)
{
  v2 = sub_220335E38();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t StocksSession.encode(to:)(void *a1)
{
  v3 = v1;
  sub_2203368DC(0, &qword_27CF28EC0, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = &v41 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220335E38();
  sub_220370168();
  v12 = *v3;
  v13 = v3[1];
  LOBYTE(v54[0]) = 0;
  sub_22036FFB8();
  if (!v2)
  {
    v14 = v3[2];
    v15 = v3[3];
    v72 = 1;
    sub_22036FF68();
    v16 = *(v3 + 3);
    v67[0] = *(v3 + 2);
    v67[1] = v16;
    v17 = *(v3 + 5);
    v19 = *(v3 + 2);
    v18 = *(v3 + 3);
    v67[2] = *(v3 + 4);
    v67[3] = v17;
    v63 = v19;
    v64 = v18;
    v20 = *(v3 + 5);
    v65 = *(v3 + 4);
    v66 = v20;
    v71 = 2;
    sub_2202C6FD8(v67, v54);
    sub_2201FF268();
    sub_22036FFF8();
    v62[0] = v63;
    v62[1] = v64;
    v62[2] = v65;
    v62[3] = v66;
    sub_2202C7010(v62);
    v21 = type metadata accessor for StocksSession();
    v22 = v21[7];
    LOBYTE(v54[0]) = 3;
    type metadata accessor for SessionData();
    sub_22020192C(&qword_281265EE8);
    sub_22036FFF8();
    v23 = (v3 + v21[8]);
    v24 = v23[1];
    v25 = v23[2];
    v26 = v23[3];
    v58 = *v23;
    v59 = v24;
    v60 = v25;
    v61 = v26;
    v70 = 4;
    sub_2201FEB48();

    sub_22036FFF8();

    v27 = v3 + v21[9];
    v28 = *(v27 + 16);
    v29 = *(v27 + 48);
    v55 = *(v27 + 32);
    v56 = v29;
    v30 = *(v27 + 16);
    v54[0] = *v27;
    v54[1] = v30;
    v31 = *(v27 + 48);
    v51 = v55;
    v52 = v31;
    v57 = *(v27 + 64);
    v53 = *(v27 + 64);
    v49 = v54[0];
    v50 = v28;
    v69 = 5;
    sub_2202D6354(v54, v47);
    sub_2201FD0A8();
    sub_22036FFF8();
    v47[2] = v51;
    v47[3] = v52;
    v48 = v53;
    v47[0] = v49;
    v47[1] = v50;
    sub_2202D638C(v47);
    LOBYTE(v41) = *(v3 + v21[10]);
    v68 = 6;
    sub_2201FE330();
    sub_22036FFF8();
    v32 = v3 + v21[11];
    v33 = *(v32 + 8);
    v34 = *(v32 + 16);
    v35 = *(v32 + 24);
    v36 = *(v32 + 32);
    v37 = *(v32 + 40);
    v41 = *v32;
    v42 = v33;
    v43 = v34;
    v44 = v35;
    v45 = v36;
    v46 = v37;
    v68 = 7;
    sub_220335498(v41, v33, v34);
    sub_2201F8128();
    sub_22036FF88();
    sub_220335E8C(v41, v42, v43);
    v39 = (v3 + v21[12]);
    v40 = v39[1];
    v41 = *v39;
    v42 = v40;
    v68 = 8;
    sub_2201F8CF8();

    sub_22036FF88();

    LOWORD(v41) = *(v3 + v21[13]);
    v68 = 9;
    sub_2201F8860();
    sub_22036FF88();
    v41 = *(v3 + v21[14]);
    v68 = 10;
    sub_22023D96C();

    sub_22036FF88();

    v41 = *(v3 + v21[15]);
    v68 = 11;
    sub_2202AADBC();

    sub_22036FF88();
  }

  return (*(v7 + 8))(v10, v6);
}

unint64_t sub_220335E38()
{
  result = qword_2812662C8;
  if (!qword_2812662C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812662C8);
  }

  return result;
}

uint64_t sub_220335E8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3 != 1)
  {
  }

  return result;
}

uint64_t StocksSession.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v34 = a2;
  v3 = type metadata accessor for SessionData();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3);
  v6 = v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2203368DC(0, &qword_281261E28, MEMORY[0x277D844C8]);
  v36 = v7;
  v35 = *(v7 - 8);
  v8 = *(v35 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = v32 - v9;
  v11 = type metadata accessor for StocksSession();
  v12 = *(*(v11 - 1) + 64);
  MEMORY[0x28223BE20](v11);
  v14 = v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220335E38();
  v37 = v10;
  v16 = v38;
  sub_220370148();
  if (v16)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v33 = v3;
  v38 = a1;
  LOBYTE(v47) = 0;
  *v14 = sub_22036FEE8();
  *(v14 + 1) = v17;
  LOBYTE(v47) = 1;
  *(v14 + 2) = sub_22036FE98();
  *(v14 + 3) = v18;
  v54 = 2;
  sub_2201FF1BC();
  v32[1] = 0;
  sub_22036FF28();
  v19 = v44;
  *(v14 + 2) = v43;
  *(v14 + 3) = v19;
  v20 = v46;
  *(v14 + 4) = v45;
  *(v14 + 5) = v20;
  LOBYTE(v47) = 3;
  sub_22020192C(&qword_281265EE0);
  sub_22036FF28();
  v33 = v11;
  sub_220336940(v6, &v14[v11[7]]);
  LOBYTE(v39) = 4;
  sub_2201FEA24();
  sub_22036FF28();
  v21 = v48;
  v22 = v33;
  v23 = &v14[*(v33 + 32)];
  *v23 = v47;
  *(v23 + 1) = v21;
  v53 = 5;
  sub_2201FD00C();
  sub_22036FF28();
  v24 = &v14[*(v22 + 36)];
  v25 = v50;
  *(v24 + 2) = v49;
  *(v24 + 3) = v25;
  *(v24 + 8) = v51;
  v26 = v48;
  *v24 = v47;
  *(v24 + 1) = v26;
  v52 = 6;
  sub_2201FE144();
  sub_22036FF28();
  v14[*(v22 + 40)] = v39;
  v52 = 7;
  sub_2201F80D0();
  sub_22036FEB8();
  v27 = v41;
  v28 = v42;
  v29 = &v14[v11[11]];
  v30 = v40;
  *v29 = v39;
  *(v29 + 1) = v30;
  *(v29 + 4) = v27;
  v29[40] = v28;
  v52 = 8;
  sub_2201F8CA0();
  sub_22036FEB8();
  *&v14[v11[12]] = v39;
  v52 = 9;
  sub_2201F8808();
  sub_22036FEB8();
  *&v14[v11[13]] = v39;
  v52 = 10;
  sub_22023D918();
  sub_22036FEB8();
  *&v14[v11[14]] = v39;
  v52 = 11;
  sub_2202AAD64();
  sub_22036FEB8();
  (*(v35 + 8))(v37, v36);
  *&v14[v11[15]] = v39;
  sub_2203369A4(v14, v34, type metadata accessor for StocksSession);
  __swift_destroy_boxed_opaque_existential_1(v38);
  return sub_220336A0C(v14, type metadata accessor for StocksSession);
}

void sub_2203368DC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_220335E38();
    v7 = a3(a1, &type metadata for StocksSession.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_220336940(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SessionData();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2203369A4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_220336A0C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_220336AC4()
{
  sub_22023A8F4(319, &qword_281261F88);
  if (v0 <= 0x3F)
  {
    type metadata accessor for SessionData();
    if (v1 <= 0x3F)
    {
      sub_22023A8F4(319, &qword_281262830);
      if (v2 <= 0x3F)
      {
        sub_22023A8F4(319, &qword_281262090);
        if (v3 <= 0x3F)
        {
          sub_22023A8F4(319, &qword_281265508);
          if (v4 <= 0x3F)
          {
            sub_22023A8F4(319, &qword_281263868);
            if (v5 <= 0x3F)
            {
              sub_22023A8F4(319, &qword_281263AE8);
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

unint64_t sub_220336C60()
{
  result = qword_27CF28EC8;
  if (!qword_27CF28EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF28EC8);
  }

  return result;
}

unint64_t sub_220336CB8()
{
  result = qword_2812662B8;
  if (!qword_2812662B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812662B8);
  }

  return result;
}

unint64_t sub_220336D10()
{
  result = qword_2812662C0;
  if (!qword_2812662C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812662C0);
  }

  return result;
}

uint64_t sub_220336D64(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x496E6F6973736573 && a2 == 0xE900000000000044;
  if (v4 || (sub_220370048() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6973736553707061 && a2 == 0xEC00000044496E6FLL || (sub_220370048() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6174614472657375 && a2 == 0xE800000000000000 || (sub_220370048() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x446E6F6973736573 && a2 == 0xEB00000000617461 || (sub_220370048() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x61746144707061 && a2 == 0xE700000000000000 || (sub_220370048() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6144656369766564 && a2 == 0xEA00000000006174 || (sub_220370048() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000016 && 0x80000002203915F0 == a2 || (sub_220370048() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000021 && 0x8000000220390710 == a2 || (sub_220370048() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x7461446775626564 && a2 == 0xE900000000000061 || (sub_220370048() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x7461746E6569726FLL && a2 == 0xEF617461446E6F69 || (sub_220370048() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD000000000000015 && 0x80000002203903B0 == a2 || (sub_220370048() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0xD000000000000014 && 0x8000000220392020 == a2)
  {

    return 11;
  }

  else
  {
    v6 = sub_220370048();

    if (v6)
    {
      return 11;
    }

    else
    {
      return 12;
    }
  }
}

StocksAnalytics::ExternalAnalyticsEventType_optional __swiftcall ExternalAnalyticsEventType.init(rawValue:)(Swift::String rawValue)
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

uint64_t ExternalAnalyticsEventType.rawValue.getter()
{
  v1 = 0x6E776F6E6B6E75;
  v2 = 0x656956616964656DLL;
  if (*v0 != 2)
  {
    v2 = 0x6E65704F707061;
  }

  if (*v0)
  {
    v1 = 0x56656C6369747261;
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

unint64_t sub_220337258()
{
  result = qword_27CF28ED0;
  if (!qword_27CF28ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF28ED0);
  }

  return result;
}

uint64_t sub_2203372AC()
{
  v1 = *v0;
  sub_220370108();
  sub_22036FB08();

  return sub_220370128();
}

uint64_t sub_22033737C()
{
  *v0;
  *v0;
  *v0;
  sub_22036FB08();
}

uint64_t sub_220337438()
{
  v1 = *v0;
  sub_220370108();
  sub_22036FB08();

  return sub_220370128();
}

void sub_220337510(uint64_t *a1@<X8>)
{
  v2 = 0xE700000000000000;
  v3 = 0x6E776F6E6B6E75;
  v4 = 0xE900000000000077;
  v5 = 0x656956616964656DLL;
  if (*v1 != 2)
  {
    v5 = 0x6E65704F707061;
    v4 = 0xE700000000000000;
  }

  if (*v1)
  {
    v3 = 0x56656C6369747261;
    v2 = 0xEB00000000776569;
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

unint64_t sub_22033765C()
{
  result = qword_27CF28ED8;
  if (!qword_27CF28ED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF28ED8);
  }

  return result;
}

StocksAnalytics::ListeningSource_optional __swiftcall ListeningSource.init(rawValue:)(Swift::String rawValue)
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

uint64_t ListeningSource.rawValue.getter()
{
  v1 = 0x6E776F6E6B6E75;
  v2 = 0x6C616E7265747865;
  if (*v0 != 2)
  {
    v2 = 0x79616C50726163;
  }

  if (*v0)
  {
    v1 = 0x7070416E69;
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

unint64_t sub_220337794()
{
  result = qword_27CF28EE0;
  if (!qword_27CF28EE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF28EE0);
  }

  return result;
}

uint64_t sub_2203377E8()
{
  v1 = *v0;
  sub_220370108();
  sub_22036FB08();

  return sub_220370128();
}

uint64_t sub_2203378A8()
{
  *v0;
  *v0;
  *v0;
  sub_22036FB08();
}

uint64_t sub_220337954()
{
  v1 = *v0;
  sub_220370108();
  sub_22036FB08();

  return sub_220370128();
}

void sub_220337A1C(uint64_t *a1@<X8>)
{
  v2 = 0xE700000000000000;
  v3 = 0x6E776F6E6B6E75;
  v4 = 0xE800000000000000;
  v5 = 0x6C616E7265747865;
  if (*v1 != 2)
  {
    v5 = 0x79616C50726163;
    v4 = 0xE700000000000000;
  }

  if (*v1)
  {
    v3 = 0x7070416E69;
    v2 = 0xE500000000000000;
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

unint64_t sub_220337B58()
{
  result = qword_27CF28EE8;
  if (!qword_27CF28EE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF28EE8);
  }

  return result;
}

uint64_t sub_220337C74()
{
  v0 = sub_22036F118();
  __swift_allocate_value_buffer(v0, qword_27CF28F20);
  __swift_project_value_buffer(v0, qword_27CF28F20);
  return sub_22036F108();
}

uint64_t SymbolRepositionEvent.eventData.setter(uint64_t a1)
{
  sub_220230578();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t SymbolRepositionEvent.previousSymbolPositionData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SymbolRepositionEvent(0) + 20);
  sub_220337E34();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

void sub_220337E34()
{
  if (!qword_2812667C0)
  {
    sub_220276084();
    sub_2202760D8();
    v0 = sub_22036EE38();
    if (!v1)
    {
      atomic_store(v0, &qword_2812667C0);
    }
  }
}

uint64_t SymbolRepositionEvent.previousSymbolPositionData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SymbolRepositionEvent(0) + 20);
  sub_220337E34();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t SymbolRepositionEvent.newSymbolPositionData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SymbolRepositionEvent(0) + 24);
  sub_220337E34();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SymbolRepositionEvent.newSymbolPositionData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SymbolRepositionEvent(0) + 24);
  sub_220337E34();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t SymbolRepositionEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CEACF8];
  sub_220230578();
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for SymbolRepositionEvent(0);
  v5 = *(v4 + 20);
  sub_220337E34();
  v7 = v6;
  v10 = *(*(v6 - 8) + 104);
  (v10)((v6 - 8), a1 + v5, v2, v6);
  v8 = a1 + *(v4 + 24);

  return v10(v8, v2, v7);
}

uint64_t SymbolRepositionEvent.Model.previousSymbolPositionData.getter@<X0>(_DWORD *a1@<X8>)
{
  result = type metadata accessor for SymbolRepositionEvent.Model(0);
  *a1 = *(v1 + *(result + 20));
  return result;
}

uint64_t SymbolRepositionEvent.Model.newSymbolPositionData.getter@<X0>(_DWORD *a1@<X8>)
{
  result = type metadata accessor for SymbolRepositionEvent.Model(0);
  *a1 = *(v1 + *(result + 24));
  return result;
}

uint64_t SymbolRepositionEvent.Model.init(eventData:previousSymbolPositionData:newSymbolPositionData:)@<X0>(uint64_t a1@<X0>, int *a2@<X1>, int *a3@<X2>, uint64_t a4@<X8>)
{
  v6 = *a2;
  v7 = *a3;
  v8 = sub_22036F388();
  (*(*(v8 - 8) + 32))(a4, a1, v8);
  result = type metadata accessor for SymbolRepositionEvent.Model(0);
  *(a4 + *(result + 20)) = v6;
  *(a4 + *(result + 24)) = v7;
  return result;
}

uint64_t sub_2203382CC()
{
  v1 = 0xD00000000000001ALL;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000015;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x746144746E657665;
  }
}

uint64_t sub_220338338@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_220338F38(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_220338360(uint64_t a1)
{
  v2 = sub_2203385EC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22033839C(uint64_t a1)
{
  v2 = sub_2203385EC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SymbolRepositionEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  sub_2203389D8(0, &qword_27CF28F38, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = &v14[-v9];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2203385EC();
  sub_220370168();
  v18 = 0;
  sub_22036F388();
  sub_2202366E0(&qword_2812666A8);
  sub_22036FFF8();
  if (!v2)
  {
    v12 = type metadata accessor for SymbolRepositionEvent.Model(0);
    v17 = *(v3 + *(v12 + 20));
    v16 = 1;
    sub_2202760D8();
    sub_22036FFF8();
    v15 = *(v3 + *(v12 + 24));
    v14[15] = 2;
    sub_22036FFF8();
  }

  return (*(v7 + 8))(v10, v6);
}

unint64_t sub_2203385EC()
{
  result = qword_27CF28F40;
  if (!qword_27CF28F40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF28F40);
  }

  return result;
}

uint64_t SymbolRepositionEvent.Model.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a2;
  v4 = sub_22036F388();
  v26 = *(v4 - 8);
  v5 = *(v26 + 64);
  MEMORY[0x28223BE20](v4);
  v27 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2203389D8(0, &qword_27CF28F48, MEMORY[0x277D844C8]);
  v28 = v7;
  v25 = *(v7 - 8);
  v8 = *(v25 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v22 - v9;
  v11 = type metadata accessor for SymbolRepositionEvent.Model(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2203385EC();
  sub_220370148();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v22 = v11;
  v23 = v14;
  v17 = v25;
  v16 = v26;
  v33 = 0;
  sub_2202366E0(&qword_2812666A0);
  v19 = v27;
  v18 = v28;
  sub_22036FF28();
  (*(v16 + 32))(v23, v19, v4);
  v32 = 1;
  sub_220276084();
  sub_22036FF28();
  *&v23[*(v22 + 20)] = v30;
  v31 = 2;
  sub_22036FF28();
  (*(v17 + 8))(v10, v18);
  v20 = v23;
  *&v23[*(v22 + 24)] = v29;
  sub_220338A3C(v20, v24);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_220338AA0(v20);
}

void sub_2203389D8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_2203385EC();
    v7 = a3(a1, &type metadata for SymbolRepositionEvent.Model.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_220338A3C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SymbolRepositionEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_220338AA0(uint64_t a1)
{
  v2 = type metadata accessor for SymbolRepositionEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_220338BD4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *MEMORY[0x277CEACF8];
  sub_220230578();
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = *(a1 + 20);
  sub_220337E34();
  v8 = v7;
  v11 = *(*(v7 - 8) + 104);
  (v11)((v7 - 8), a2 + v6, v4, v7);
  v9 = a2 + *(a1 + 24);

  return v11(v9, v4, v8);
}

void sub_220338CF8()
{
  sub_220230578();
  if (v0 <= 0x3F)
  {
    sub_220337E34();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_220338DA4()
{
  result = sub_22036F388();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_220338E34()
{
  result = qword_27CF28F70;
  if (!qword_27CF28F70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF28F70);
  }

  return result;
}

unint64_t sub_220338E8C()
{
  result = qword_27CF28F78;
  if (!qword_27CF28F78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF28F78);
  }

  return result;
}

unint64_t sub_220338EE4()
{
  result = qword_27CF28F80;
  if (!qword_27CF28F80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF28F80);
  }

  return result;
}

uint64_t sub_220338F38(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746144746E657665 && a2 == 0xE900000000000061;
  if (v4 || (sub_220370048() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD00000000000001ALL && 0x80000002203927F0 == a2 || (sub_220370048() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000015 && 0x8000000220392810 == a2)
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

uint64_t AdState.init(bannerState:)@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v4 = sub_22036F8E8();
  v5 = *(v4 - 8);
  result = (*(v5 + 88))(a1, v4);
  if (result == *MEMORY[0x277D2D190])
  {
    (*(v5 + 96))(a1, v4);
    result = __swift_destroy_boxed_opaque_existential_1(a1);
    v7 = 3;
  }

  else
  {
    if (result != *MEMORY[0x277D2D178])
    {
      if (result != *MEMORY[0x277D2D180])
      {
        if (result == *MEMORY[0x277D2D188])
        {
          v7 = 1;
          goto LABEL_10;
        }

        result = (*(v5 + 8))(a1, v4);
      }

      v7 = 0;
      goto LABEL_10;
    }

    (*(v5 + 96))(a1, v4);
    v8 = sub_22036F8D8();
    result = (*(*(v8 - 8) + 8))(a1, v8);
    v7 = 2;
  }

LABEL_10:
  *a2 = v7;
  return result;
}

BOOL BannerAdState.instrumentationAllowed.getter()
{
  v1 = v0;
  v2 = sub_22036F8E8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = (&v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v3 + 16))(v6, v1, v2);
  v7 = (*(v3 + 88))(v6, v2);
  v8 = v7;
  v9 = *MEMORY[0x277D2D190];
  if (v7 == *MEMORY[0x277D2D190])
  {
    (*(v3 + 96))(v6, v2);
    __swift_destroy_boxed_opaque_existential_1(v6);
  }

  else if (v7 == *MEMORY[0x277D2D178])
  {
    (*(v3 + 96))(v6, v2);
    v10 = sub_22036F8D8();
    (*(*(v10 - 8) + 8))(v6, v10);
  }

  else if (v7 != *MEMORY[0x277D2D180] && v7 != *MEMORY[0x277D2D188])
  {
    (*(v3 + 8))(v6, v2);
  }

  return v8 == v9;
}

uint64_t UserSegmentationSegmentSetData.setIDs.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t sub_220339438@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x734449746573 && a2 == 0xE600000000000000)
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

uint64_t sub_2203394BC(uint64_t a1)
{
  v2 = sub_2203396D0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2203394F8(uint64_t a1)
{
  v2 = sub_2203396D0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t UserSegmentationSegmentSetData.encode(to:)(void *a1)
{
  sub_220339938(0, &qword_281261BC8, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  v8 = v12 - v7;
  v9 = *v1;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2203396D0();

  sub_220370168();
  v12[1] = v9;
  sub_220339724();
  sub_220205850(&qword_281261EB8);
  sub_22036FFF8();

  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_2203396D0()
{
  result = qword_2812628D0;
  if (!qword_2812628D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812628D0);
  }

  return result;
}

void sub_220339724()
{
  if (!qword_281261EC0)
  {
    v0 = sub_22036FB88();
    if (!v1)
    {
      atomic_store(v0, &qword_281261EC0);
    }
  }
}

uint64_t UserSegmentationSegmentSetData.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  sub_220339938(0, &qword_27CF28F88, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = v13 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2203396D0();
  sub_220370148();
  if (!v2)
  {
    sub_220339724();
    sub_220205850(&qword_281261EB0);
    sub_22036FF28();
    (*(v7 + 8))(v10, v6);
    *a2 = v13[1];
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_220339938(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_2203396D0();
    v7 = a3(a1, &type metadata for UserSegmentationSegmentSetData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_2203399F8()
{
  result = qword_27CF28F90;
  if (!qword_27CF28F90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF28F90);
  }

  return result;
}

unint64_t sub_220339A50()
{
  result = qword_2812628C0;
  if (!qword_2812628C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812628C0);
  }

  return result;
}

unint64_t sub_220339AA8()
{
  result = qword_2812628C8;
  if (!qword_2812628C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812628C8);
  }

  return result;
}

uint64_t sub_220339BC4()
{
  v0 = sub_22036F118();
  __swift_allocate_value_buffer(v0, qword_27CF28FC8);
  __swift_project_value_buffer(v0, qword_27CF28FC8);
  return sub_22036F108();
}

uint64_t PersonalizedAdsEngagementEvent.eventData.setter(uint64_t a1)
{
  sub_220230578();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t PersonalizedAdsEngagementEvent.timedData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for PersonalizedAdsEngagementEvent(0) + 20);
  sub_220230718();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t PersonalizedAdsEngagementEvent.userSelectionData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PersonalizedAdsEngagementEvent(0) + 24);
  sub_220339E74();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

void sub_220339E74()
{
  if (!qword_27CF28FE0)
  {
    sub_220280500();
    sub_220280558();
    v0 = sub_22036EE38();
    if (!v1)
    {
      atomic_store(v0, &qword_27CF28FE0);
    }
  }
}

uint64_t PersonalizedAdsEngagementEvent.userSelectionData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for PersonalizedAdsEngagementEvent(0) + 24);
  sub_220339E74();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t PersonalizedAdsEngagementEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CEACF8];
  sub_220230578();
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for PersonalizedAdsEngagementEvent(0);
  v5 = *(v4 + 20);
  sub_220230718();
  (*(*(v6 - 8) + 104))(a1 + v5, v2, v6);
  v7 = *(v4 + 24);
  sub_220339E74();
  v9 = *(*(v8 - 8) + 104);

  return v9(a1 + v7, v2, v8);
}

uint64_t sub_22033A0EC@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a1(0) + 20);
  v7 = a2(0);
  v8 = *(*(v7 - 8) + 16);

  return v8(a3, v3 + v6, v7);
}

uint64_t PersonalizedAdsEngagementEvent.Model.userSelectionData.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for PersonalizedAdsEngagementEvent.Model(0);
  *a1 = *(v1 + *(result + 24));
  return result;
}

uint64_t PersonalizedAdsEngagementEvent.Model.init(eventData:timedData:userSelectionData:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X8>)
{
  v7 = *a3;
  v8 = sub_22036F388();
  (*(*(v8 - 8) + 32))(a4, a1, v8);
  v9 = type metadata accessor for PersonalizedAdsEngagementEvent.Model(0);
  v10 = *(v9 + 20);
  v11 = sub_22036F3C8();
  result = (*(*(v11 - 8) + 32))(a4 + v10, a2, v11);
  *(a4 + *(v9 + 24)) = v7;
  return result;
}

uint64_t sub_22033A298()
{
  v1 = 0x74614464656D6974;
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
    return 0x746144746E657665;
  }
}

uint64_t sub_22033A2F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22033B09C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22033A320(uint64_t a1)
{
  v2 = sub_22033A5F0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22033A35C(uint64_t a1)
{
  v2 = sub_22033A5F0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t PersonalizedAdsEngagementEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  sub_22033AB10(0, &qword_27CF28FE8, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = &v15[-v9];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22033A5F0();
  sub_220370168();
  v15[15] = 0;
  sub_22036F388();
  sub_2202307E4(&qword_2812666A8, MEMORY[0x277CEAEB0]);
  sub_22036FFF8();
  if (!v2)
  {
    v12 = type metadata accessor for PersonalizedAdsEngagementEvent.Model(0);
    v13 = *(v12 + 20);
    v15[14] = 1;
    sub_22036F3C8();
    sub_2202307E4(&qword_281266690, MEMORY[0x277CEAED0]);
    sub_22036FFF8();
    v15[13] = *(v3 + *(v12 + 24));
    v15[12] = 2;
    sub_220280558();
    sub_22036FFF8();
  }

  return (*(v7 + 8))(v10, v6);
}

unint64_t sub_22033A5F0()
{
  result = qword_27CF28FF0;
  if (!qword_27CF28FF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF28FF0);
  }

  return result;
}

uint64_t PersonalizedAdsEngagementEvent.Model.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  v4 = sub_22036F3C8();
  v30 = *(v4 - 8);
  v31 = v4;
  v5 = *(v30 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_22036F388();
  v28 = *(v34 - 8);
  v8 = *(v28 + 64);
  MEMORY[0x28223BE20](v34);
  v32 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22033AB10(0, &qword_27CF28FF8, MEMORY[0x277D844C8]);
  v33 = v10;
  v29 = *(v10 - 8);
  v11 = *(v29 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v25 - v12;
  v14 = type metadata accessor for PersonalizedAdsEngagementEvent.Model(0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14);
  v17 = &v25 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22033A5F0();
  sub_220370148();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v25 = v14;
  v26 = a1;
  v19 = v17;
  v21 = v29;
  v20 = v30;
  v22 = v31;
  v38 = 0;
  sub_2202307E4(&qword_2812666A0, MEMORY[0x277CEAEB0]);
  sub_22036FF28();
  (*(v28 + 32))(v19, v32, v34);
  v37 = 1;
  sub_2202307E4(&qword_281266688, MEMORY[0x277CEAED0]);
  sub_22036FF28();
  (*(v20 + 32))(v19 + *(v25 + 20), v7, v22);
  v35 = 2;
  sub_220280500();
  sub_22036FF28();
  v23 = v26;
  (*(v21 + 8))(v13, v33);
  *(v19 + *(v25 + 24)) = v36;
  sub_22033AB74(v19, v27);
  __swift_destroy_boxed_opaque_existential_1(v23);
  return sub_22033ABD8(v19);
}

void sub_22033AB10(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_22033A5F0();
    v7 = a3(a1, &type metadata for PersonalizedAdsEngagementEvent.Model.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_22033AB74(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PersonalizedAdsEngagementEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22033ABD8(uint64_t a1)
{
  v2 = type metadata accessor for PersonalizedAdsEngagementEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22033AD0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *MEMORY[0x277CEACF8];
  sub_220230578();
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = *(a1 + 20);
  sub_220230718();
  (*(*(v7 - 8) + 104))(a2 + v6, v4, v7);
  v8 = *(a1 + 24);
  sub_220339E74();
  v10 = *(*(v9 - 8) + 104);

  return v10(a2 + v8, v4, v9);
}

void sub_22033AE34()
{
  sub_220230578();
  if (v0 <= 0x3F)
  {
    sub_220230718();
    if (v1 <= 0x3F)
    {
      sub_220339E74();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_22033AEF8()
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

unint64_t sub_22033AF98()
{
  result = qword_27CF29020;
  if (!qword_27CF29020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF29020);
  }

  return result;
}

unint64_t sub_22033AFF0()
{
  result = qword_27CF29028;
  if (!qword_27CF29028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF29028);
  }

  return result;
}

unint64_t sub_22033B048()
{
  result = qword_27CF29030;
  if (!qword_27CF29030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF29030);
  }

  return result;
}

uint64_t sub_22033B09C(uint64_t a1, uint64_t a2)
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

  else if (a1 == 0xD000000000000011 && 0x8000000220392830 == a2)
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

StocksAnalytics::PersonalizedAdsUserSelectionType_optional __swiftcall PersonalizedAdsUserSelectionType.init(rawValue:)(Swift::String rawValue)
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

uint64_t PersonalizedAdsUserSelectionType.rawValue.getter()
{
  v1 = 0x6E49646574706FLL;
  if (*v0 != 1)
  {
    v1 = 0x74754F646574706FLL;
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

uint64_t sub_22033B284(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE700000000000000;
  v4 = 0xE700000000000000;
  v5 = 0x6E49646574706FLL;
  if (v2 != 1)
  {
    v5 = 0x74754F646574706FLL;
    v4 = 0xE800000000000000;
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

  v8 = 0x6E49646574706FLL;
  if (*a2 != 1)
  {
    v8 = 0x74754F646574706FLL;
    v3 = 0xE800000000000000;
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

unint64_t sub_22033B388()
{
  result = qword_27CF29038;
  if (!qword_27CF29038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF29038);
  }

  return result;
}

uint64_t sub_22033B3DC()
{
  v1 = *v0;
  sub_220370108();
  sub_22036FB08();

  return sub_220370128();
}

uint64_t sub_22033B480()
{
  *v0;
  *v0;
  sub_22036FB08();
}

uint64_t sub_22033B510()
{
  v1 = *v0;
  sub_220370108();
  sub_22036FB08();

  return sub_220370128();
}

void sub_22033B5BC(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0xE700000000000000;
  v5 = 0x6E49646574706FLL;
  if (v2 != 1)
  {
    v5 = 0x74754F646574706FLL;
    v4 = 0xE800000000000000;
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

unint64_t sub_22033B6DC()
{
  result = qword_27CF29040;
  if (!qword_27CF29040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF29040);
  }

  return result;
}

uint64_t sub_22033B7F8()
{
  v0 = sub_22036F118();
  __swift_allocate_value_buffer(v0, qword_27CF29078);
  __swift_project_value_buffer(v0, qword_27CF29078);
  return sub_22036F108();
}

uint64_t MediaEngageCompleteEvent.eventData.setter(uint64_t a1)
{
  sub_220230578();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t MediaEngageCompleteEvent.newsArticleData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for MediaEngageCompleteEvent(0) + 20);
  sub_22033C920(0, &qword_2812667E0, sub_22022ED48, sub_22022EDA0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t MediaEngageCompleteEvent.newsArticleData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for MediaEngageCompleteEvent(0) + 20);
  sub_22033C920(0, &qword_2812667E0, sub_22022ED48, sub_22022EDA0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t MediaEngageCompleteEvent.groupData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for MediaEngageCompleteEvent(0) + 24);
  sub_22033C920(0, &qword_281266718, sub_220236C88, sub_220236CDC);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t MediaEngageCompleteEvent.groupData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for MediaEngageCompleteEvent(0) + 24);
  sub_22033C920(0, &qword_281266718, sub_220236C88, sub_220236CDC);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t MediaEngageCompleteEvent.feedData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for MediaEngageCompleteEvent(0) + 28);
  sub_22033C920(0, &qword_281266730, sub_2201FBCC4, sub_2201FBD1C);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t MediaEngageCompleteEvent.feedData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for MediaEngageCompleteEvent(0) + 28);
  sub_22033C920(0, &qword_281266730, sub_2201FBCC4, sub_2201FBD1C);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t MediaEngageCompleteEvent.mediaData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for MediaEngageCompleteEvent(0) + 32);
  sub_22033C920(0, &qword_281266708, sub_22027B158, sub_22027B1AC);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t MediaEngageCompleteEvent.mediaData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for MediaEngageCompleteEvent(0) + 32);
  sub_22033C920(0, &qword_281266708, sub_22027B158, sub_22027B1AC);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t MediaEngageCompleteEvent.viewData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for MediaEngageCompleteEvent(0) + 36);
  sub_22033C920(0, &qword_281266728, sub_2202020B8, sub_220202110);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t MediaEngageCompleteEvent.viewData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for MediaEngageCompleteEvent(0) + 36);
  sub_22033C920(0, &qword_281266728, sub_2202020B8, sub_220202110);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t MediaEngageCompleteEvent.anfComponentData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for MediaEngageCompleteEvent(0) + 40);
  sub_22033C920(0, &qword_2812667C8, sub_22024ED64, sub_22024EDBC);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t MediaEngageCompleteEvent.anfComponentData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for MediaEngageCompleteEvent(0) + 40);
  sub_22033C920(0, &qword_2812667C8, sub_22024ED64, sub_22024EDBC);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t MediaEngageCompleteEvent.mediaEngagementCompletedData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for MediaEngageCompleteEvent(0) + 44);
  sub_22033C920(0, &qword_281266750, sub_2202A063C, sub_2202A0694);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t MediaEngageCompleteEvent.mediaEngagementCompletedData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for MediaEngageCompleteEvent(0) + 44);
  sub_22033C920(0, &qword_281266750, sub_2202A063C, sub_2202A0694);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t MediaEngageCompleteEvent.issueData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for MediaEngageCompleteEvent(0) + 48);
  sub_22033C920(0, &qword_281266710, sub_2202376F0, sub_220237744);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t MediaEngageCompleteEvent.issueData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for MediaEngageCompleteEvent(0) + 48);
  sub_22033C920(0, &qword_281266710, sub_2202376F0, sub_220237744);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t MediaEngageCompleteEvent.channelData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for MediaEngageCompleteEvent(0) + 52);
  sub_22033C920(0, &qword_281266858, sub_220236A30, sub_220236A84);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t MediaEngageCompleteEvent.channelData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for MediaEngageCompleteEvent(0) + 52);
  sub_22033C920(0, &qword_281266858, sub_220236A30, sub_220236A84);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t MediaEngageCompleteEvent.activeWatchlistData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for MediaEngageCompleteEvent(0) + 56);
  sub_22033C920(0, &qword_281266810, sub_220237C1C, sub_220237C70);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

void sub_22033C920(uint64_t a1, unint64_t *a2, void (*a3)(void), void (*a4)(void))
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

uint64_t MediaEngageCompleteEvent.activeWatchlistData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for MediaEngageCompleteEvent(0) + 56);
  sub_22033C920(0, &qword_281266810, sub_220237C1C, sub_220237C70);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t MediaEngageCompleteEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CEACF8];
  sub_220230578();
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for MediaEngageCompleteEvent(0);
  v5 = v4[5];
  sub_22033C920(0, &qword_2812667E0, sub_22022ED48, sub_22022EDA0);
  (*(*(v6 - 8) + 104))(a1 + v5, v2, v6);
  v7 = v4[6];
  v8 = *MEMORY[0x277CEACF0];
  sub_22033C920(0, &qword_281266718, sub_220236C88, sub_220236CDC);
  (*(*(v9 - 8) + 104))(a1 + v7, v8, v9);
  v10 = v4[7];
  sub_22033C920(0, &qword_281266730, sub_2201FBCC4, sub_2201FBD1C);
  (*(*(v11 - 8) + 104))(a1 + v10, v8, v11);
  v12 = v4[8];
  sub_22033C920(0, &qword_281266708, sub_22027B158, sub_22027B1AC);
  (*(*(v13 - 8) + 104))(a1 + v12, v2, v13);
  v14 = v4[9];
  sub_22033C920(0, &qword_281266728, sub_2202020B8, sub_220202110);
  (*(*(v15 - 8) + 104))(a1 + v14, v2, v15);
  v16 = v4[10];
  sub_22033C920(0, &qword_2812667C8, sub_22024ED64, sub_22024EDBC);
  (*(*(v17 - 8) + 104))(a1 + v16, v8, v17);
  v18 = v4[11];
  sub_22033C920(0, &qword_281266750, sub_2202A063C, sub_2202A0694);
  (*(*(v19 - 8) + 104))(a1 + v18, v2, v19);
  v20 = v4[12];
  sub_22033C920(0, &qword_281266710, sub_2202376F0, sub_220237744);
  (*(*(v21 - 8) + 104))(a1 + v20, v8, v21);
  v22 = v4[13];
  sub_22033C920(0, &qword_281266858, sub_220236A30, sub_220236A84);
  (*(*(v23 - 8) + 104))(a1 + v22, v2, v23);
  v24 = v4[14];
  sub_22033C920(0, &qword_281266810, sub_220237C1C, sub_220237C70);
  v26 = *(*(v25 - 8) + 104);

  return v26(a1 + v24, v8, v25);
}

uint64_t MediaEngageCompleteEvent.Model.newsArticleData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for MediaEngageCompleteEvent.Model(0) + 20);
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

uint64_t MediaEngageCompleteEvent.Model.groupData.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for MediaEngageCompleteEvent.Model(0) + 24));
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

uint64_t MediaEngageCompleteEvent.Model.feedData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for MediaEngageCompleteEvent.Model(0) + 28);
  v4 = *(v3 + 16);
  *a1 = *v3;
  *(a1 + 16) = v4;
}

uint64_t MediaEngageCompleteEvent.Model.mediaData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for MediaEngageCompleteEvent.Model(0) + 32));
  v4 = *v3;
  v6 = *(v3 + 1);
  v5 = *(v3 + 2);
  v7 = *(v3 + 6);
  LOBYTE(v3) = v3[28];
  *a1 = v4;
  *(a1 + 8) = v6;
  *(a1 + 16) = v5;
  *(a1 + 24) = v7;
  *(a1 + 28) = v3;
}

uint64_t MediaEngageCompleteEvent.Model.viewData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for MediaEngageCompleteEvent.Model(0) + 36));
  v5 = *v3;
  v4 = v3[1];
  LOWORD(v3) = *(v3 + 8);
  *a1 = v5;
  *(a1 + 8) = v4;
  *(a1 + 16) = v3;
}

uint64_t MediaEngageCompleteEvent.Model.anfComponentData.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for MediaEngageCompleteEvent.Model(0) + 40));
  v4 = *v3;
  v5 = v3[1];
  *a1 = *v3;
  a1[1] = v5;

  return sub_22027C714(v4, v5);
}

uint64_t MediaEngageCompleteEvent.Model.mediaEngagementCompletedData.getter@<X0>(void *a1@<X8>)
{
  result = type metadata accessor for MediaEngageCompleteEvent.Model(0);
  *a1 = *(v1 + *(result + 44));
  return result;
}

uint64_t MediaEngageCompleteEvent.Model.issueData.getter@<X0>(void *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for MediaEngageCompleteEvent.Model(0) + 48));
  v4 = v3[1];
  *a1 = *v3;
  a1[1] = v4;
}

uint64_t MediaEngageCompleteEvent.Model.channelData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for MediaEngageCompleteEvent.Model(0) + 52));
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

uint64_t MediaEngageCompleteEvent.Model.activeWatchlistData.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for MediaEngageCompleteEvent.Model(0);
  *a1 = *(v1 + *(result + 56));
  return result;
}

__n128 MediaEngageCompleteEvent.Model.init(eventData:newsArticleData:groupData:feedData:mediaData:viewData:anfComponentData:mediaEngagementCompletedData:issueData:channelData:activeWatchlistData:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __int128 *a3@<X2>, __int128 *a4@<X3>, char *a5@<X4>, uint64_t *a6@<X5>, uint64_t *a7@<X6>, uint64_t *a8@<X7>, uint64_t a9@<X8>, uint64_t *a10, __n128 *a11, char *a12)
{
  v16 = *(a3 + 4);
  v17 = *(a3 + 5);
  v37 = *a4;
  v18 = *(a4 + 2);
  v39 = *a5;
  v19 = *(a5 + 1);
  v20 = *(a5 + 2);
  v38 = *(a5 + 6);
  v21 = a5[28];
  v42 = *a6;
  v41 = a6[1];
  v40 = *(a6 + 8);
  v44 = *a7;
  v43 = a7[1];
  v45 = *a8;
  v46 = a10[1];
  v47 = *a10;
  v52 = *a11;
  v51 = a11[1].n128_u64[0];
  v50 = a11[1].n128_u64[1];
  v48 = a11[2].n128_u8[1];
  v49 = a11[2].n128_u8[0];
  v53 = *a12;
  v22 = sub_22036F388();
  v35 = a3[1];
  v36 = *a3;
  (*(*(v22 - 8) + 32))(a9, a1, v22);
  v23 = type metadata accessor for MediaEngageCompleteEvent.Model(0);
  v24 = a9 + v23[5];
  v25 = *(a2 + 48);
  *(v24 + 32) = *(a2 + 32);
  *(v24 + 48) = v25;
  *(v24 + 64) = *(a2 + 64);
  v26 = *(a2 + 16);
  *v24 = *a2;
  *(v24 + 16) = v26;
  v27 = a9 + v23[6];
  *v27 = v36;
  *(v27 + 16) = v35;
  *(v27 + 32) = v16;
  *(v27 + 40) = v17;
  v28 = a9 + v23[7];
  *v28 = v37;
  *(v28 + 16) = v18;
  v29 = a9 + v23[8];
  *v29 = v39;
  *(v29 + 8) = v19;
  *(v29 + 16) = v20;
  *(v29 + 24) = v38;
  *(v29 + 28) = v21;
  v30 = a9 + v23[9];
  *v30 = v42;
  *(v30 + 8) = v41;
  *(v30 + 16) = v40;
  v31 = (a9 + v23[10]);
  *v31 = v44;
  v31[1] = v43;
  *(a9 + v23[11]) = v45;
  v32 = (a9 + v23[12]);
  *v32 = v47;
  v32[1] = v46;
  v33 = (a9 + v23[13]);
  result = v52;
  *v33 = v52;
  v33[1].n128_u64[0] = v51;
  v33[1].n128_u64[1] = v50;
  v33[2].n128_u8[0] = v49;
  v33[2].n128_u8[1] = v48;
  *(a9 + v23[14]) = v53;
  return result;
}

uint64_t sub_22033D548(unsigned __int8 a1)
{
  if (a1 <= 4u)
  {
    v6 = 0x746144746E657665;
    v7 = 0x74614470756F7267;
    v8 = 0x6174614464656566;
    if (a1 != 3)
    {
      v8 = 0x746144616964656DLL;
    }

    if (a1 != 2)
    {
      v7 = v8;
    }

    if (a1)
    {
      v6 = 0x697472417377656ELL;
    }

    if (a1 <= 1u)
    {
      return v6;
    }

    else
    {
      return v7;
    }
  }

  else
  {
    v1 = 0x7461446575737369;
    v2 = 0x446C656E6E616863;
    if (a1 != 9)
    {
      v2 = 0xD000000000000013;
    }

    if (a1 != 8)
    {
      v1 = v2;
    }

    v3 = 0x6174614477656976;
    v4 = 0xD000000000000010;
    if (a1 != 6)
    {
      v4 = 0xD00000000000001CLL;
    }

    if (a1 != 5)
    {
      v3 = v4;
    }

    if (a1 <= 7u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_22033D6C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22033F548(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22033D6EC(uint64_t a1)
{
  v2 = sub_22033DD74();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22033D728(uint64_t a1)
{
  v2 = sub_22033DD74();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MediaEngageCompleteEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  sub_22033E7B0(0, &qword_27CF29090, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = &v45 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22033DD74();
  sub_220370168();
  v64 = 0;
  sub_22036F388();
  sub_2202366E0(&qword_2812666A8);
  sub_22036FFF8();
  if (!v2)
  {
    v12 = type metadata accessor for MediaEngageCompleteEvent.Model(0);
    v13 = v3 + v12[5];
    v14 = *(v13 + 16);
    v15 = *(v13 + 48);
    v61 = *(v13 + 32);
    v62 = v15;
    v16 = *(v13 + 16);
    v60[0] = *v13;
    v60[1] = v16;
    v17 = *(v13 + 48);
    v57 = v61;
    v58 = v17;
    v63 = *(v13 + 64);
    v59 = *(v13 + 64);
    v55 = v60[0];
    v56 = v14;
    v54 = 1;
    sub_22022ECDC(v60, v52);
    sub_22022EDA0();
    sub_22036FFF8();
    v52[2] = v57;
    v52[3] = v58;
    v53 = v59;
    v52[0] = v55;
    v52[1] = v56;
    sub_22022ED14(v52);
    v18 = (v3 + v12[6]);
    v19 = v18[1];
    v20 = v18[2];
    v21 = v18[3];
    v22 = v18[4];
    v23 = v18[5];
    *&v47 = *v18;
    *(&v47 + 1) = v19;
    v48 = v20;
    v49 = v21;
    v50 = v22;
    v51 = v23;
    v46 = 2;
    sub_22023846C(v47, v19, v20);
    sub_220236CDC();
    sub_22036FF88();
    sub_2202391D8(v47, *(&v47 + 1), v48);
    v24 = (v3 + v12[7]);
    v25 = *(v24 + 2);
    v47 = *v24;
    v48 = v25;
    v46 = 3;
    sub_2201FBD1C();

    sub_22036FF88();

    v26 = (v3 + v12[8]);
    v27 = *v26;
    v28 = *(v26 + 1);
    v29 = *(v26 + 2);
    v30 = *(v26 + 6);
    LOBYTE(v26) = v26[28];
    LOBYTE(v47) = v27;
    *(&v47 + 1) = v28;
    v48 = v29;
    LODWORD(v49) = v30;
    BYTE4(v49) = v26;
    v46 = 4;
    sub_22027B1AC();

    sub_22036FFF8();

    v32 = (v3 + v12[9]);
    v33 = *v32;
    v34 = v32[1];
    LOWORD(v32) = *(v32 + 8);
    *&v47 = v33;
    *(&v47 + 1) = v34;
    LOWORD(v48) = v32;
    v46 = 5;
    sub_220202110();

    sub_22036FFF8();

    v35 = (v3 + v12[10]);
    v36 = v35[1];
    *&v47 = *v35;
    *(&v47 + 1) = v36;
    v46 = 6;
    sub_22027C714(v47, v36);
    sub_22024EDBC();
    sub_22036FF88();
    sub_22027D3B4(v47, *(&v47 + 1));
    *&v47 = *(v3 + v12[11]);
    v46 = 7;
    sub_2202A0694();
    sub_22036FFF8();
    v37 = (v3 + v12[12]);
    v38 = v37[1];
    *&v47 = *v37;
    *(&v47 + 1) = v38;
    v46 = 8;
    sub_220237744();

    sub_22036FF88();

    v39 = (v3 + v12[13]);
    v40 = *v39;
    v41 = v39[1];
    v42 = v39[2];
    v43 = v39[3];
    v44 = *(v39 + 32);
    LOBYTE(v39) = *(v39 + 33);
    *&v47 = v40;
    *(&v47 + 1) = v41;
    v48 = v42;
    v49 = v43;
    LOBYTE(v50) = v44;
    BYTE1(v50) = v39;
    v46 = 9;
    sub_220236A84();

    sub_22036FFF8();

    LOBYTE(v47) = *(v3 + v12[14]);
    v46 = 10;
    sub_220237C70();
    sub_22036FF88();
  }

  return (*(v7 + 8))(v10, v6);
}

unint64_t sub_22033DD74()
{
  result = qword_27CF29098;
  if (!qword_27CF29098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF29098);
  }

  return result;
}

uint64_t MediaEngageCompleteEvent.Model.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v44 = a2;
  v4 = sub_22036F388();
  v45 = *(v4 - 8);
  v5 = *(v45 + 64);
  MEMORY[0x28223BE20](v4);
  v47 = v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22033E7B0(0, &qword_27CF290A0, MEMORY[0x277D844C8]);
  v48 = v7;
  v46 = *(v7 - 8);
  v8 = *(v46 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = v41 - v9;
  v11 = type metadata accessor for MediaEngageCompleteEvent.Model(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v14 = v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22033DD74();
  v59 = v10;
  sub_220370148();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v16 = v46;
  v42 = v11;
  v43 = v14;
  LOBYTE(v54) = 0;
  sub_2202366E0(&qword_2812666A0);
  v17 = v47;
  sub_22036FF28();
  v18 = v43;
  (*(v45 + 32))(v43, v17, v4);
  v53 = 1;
  sub_22022ED48();
  sub_22036FF28();
  v41[1] = v4;
  v47 = 0;
  v19 = v42;
  v20 = &v18[v42[5]];
  v21 = v57;
  *(v20 + 2) = v56;
  *(v20 + 3) = v21;
  *(v20 + 16) = v58;
  v22 = v55;
  *v20 = v54;
  *(v20 + 1) = v22;
  v49 = 2;
  sub_220236C88();
  sub_22036FEB8();
  v23 = &v18[v19[6]];
  v24 = v51;
  *v23 = v50;
  *(v23 + 1) = v24;
  *(v23 + 2) = v52;
  v49 = 3;
  sub_2201FBCC4();
  sub_22036FEB8();
  v25 = v51;
  v26 = &v18[v19[7]];
  *v26 = v50;
  *(v26 + 2) = v25;
  v49 = 4;
  sub_22027B158();
  sub_22036FF28();
  v27 = *(&v50 + 1);
  v28 = v51;
  v29 = DWORD2(v51);
  v30 = BYTE12(v51);
  v31 = &v18[v19[8]];
  *v31 = v50;
  *(v31 + 1) = v27;
  *(v31 + 2) = v28;
  *(v31 + 6) = v29;
  v31[28] = v30;
  v49 = 5;
  sub_2202020B8();
  sub_22036FF28();
  v32 = *(&v50 + 1);
  v33 = v51;
  v34 = &v18[v19[9]];
  *v34 = v50;
  *(v34 + 1) = v32;
  *(v34 + 8) = v33;
  v49 = 6;
  sub_22024ED64();
  sub_22036FEB8();
  *&v18[v19[10]] = v50;
  v49 = 7;
  sub_2202A063C();
  sub_22036FF28();
  *&v43[v42[11]] = v50;
  v49 = 8;
  sub_2202376F0();
  sub_22036FEB8();
  *&v43[v42[12]] = v50;
  v49 = 9;
  sub_220236A30();
  sub_22036FF28();
  v35 = v51;
  v36 = v52;
  v37 = BYTE1(v52);
  v38 = &v43[v42[13]];
  *v38 = v50;
  *(v38 + 1) = v35;
  v38[32] = v36;
  v38[33] = v37;
  v49 = 10;
  sub_220237C1C();
  sub_22036FEB8();
  (*(v16 + 8))(v59, v48);
  v39 = v43;
  v43[v42[14]] = v50;
  sub_22033E814(v39, v44);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_22033E878(v39);
}

void sub_22033E7B0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_22033DD74();
    v7 = a3(a1, &type metadata for MediaEngageCompleteEvent.Model.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_22033E814(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MediaEngageCompleteEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22033E878(uint64_t a1)
{
  v2 = type metadata accessor for MediaEngageCompleteEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22033E9AC@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *MEMORY[0x277CEACF8];
  sub_220230578();
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = a1[5];
  sub_22033C920(0, &qword_2812667E0, sub_22022ED48, sub_22022EDA0);
  (*(*(v7 - 8) + 104))(a2 + v6, v4, v7);
  v8 = a1[6];
  v9 = *MEMORY[0x277CEACF0];
  sub_22033C920(0, &qword_281266718, sub_220236C88, sub_220236CDC);
  (*(*(v10 - 8) + 104))(a2 + v8, v9, v10);
  v11 = a1[7];
  sub_22033C920(0, &qword_281266730, sub_2201FBCC4, sub_2201FBD1C);
  (*(*(v12 - 8) + 104))(a2 + v11, v9, v12);
  v13 = a1[8];
  sub_22033C920(0, &qword_281266708, sub_22027B158, sub_22027B1AC);
  (*(*(v14 - 8) + 104))(a2 + v13, v4, v14);
  v15 = a1[9];
  sub_22033C920(0, &qword_281266728, sub_2202020B8, sub_220202110);
  (*(*(v16 - 8) + 104))(a2 + v15, v4, v16);
  v17 = a1[10];
  sub_22033C920(0, &qword_2812667C8, sub_22024ED64, sub_22024EDBC);
  (*(*(v18 - 8) + 104))(a2 + v17, v9, v18);
  v19 = a1[11];
  sub_22033C920(0, &qword_281266750, sub_2202A063C, sub_2202A0694);
  (*(*(v20 - 8) + 104))(a2 + v19, v4, v20);
  v21 = a1[12];
  sub_22033C920(0, &qword_281266710, sub_2202376F0, sub_220237744);
  (*(*(v22 - 8) + 104))(a2 + v21, v9, v22);
  v23 = a1[13];
  sub_22033C920(0, &qword_281266858, sub_220236A30, sub_220236A84);
  (*(*(v24 - 8) + 104))(a2 + v23, v4, v24);
  v25 = a1[14];
  sub_22033C920(0, &qword_281266810, sub_220237C1C, sub_220237C70);
  v27 = *(*(v26 - 8) + 104);

  return v27(a2 + v25, v9, v26);
}

void sub_22033EF18()
{
  sub_220230578();
  if (v0 <= 0x3F)
  {
    sub_22033C920(319, &qword_2812667E0, sub_22022ED48, sub_22022EDA0);
    if (v1 <= 0x3F)
    {
      sub_22033C920(319, &qword_281266718, sub_220236C88, sub_220236CDC);
      if (v2 <= 0x3F)
      {
        sub_22033C920(319, &qword_281266730, sub_2201FBCC4, sub_2201FBD1C);
        if (v3 <= 0x3F)
        {
          sub_22033C920(319, &qword_281266708, sub_22027B158, sub_22027B1AC);
          if (v4 <= 0x3F)
          {
            sub_22033C920(319, &qword_281266728, sub_2202020B8, sub_220202110);
            if (v5 <= 0x3F)
            {
              sub_22033C920(319, &qword_2812667C8, sub_22024ED64, sub_22024EDBC);
              if (v6 <= 0x3F)
              {
                sub_22033C920(319, &qword_281266750, sub_2202A063C, sub_2202A0694);
                if (v7 <= 0x3F)
                {
                  sub_22033C920(319, &qword_281266710, sub_2202376F0, sub_220237744);
                  if (v8 <= 0x3F)
                  {
                    sub_22033C920(319, &qword_281266858, sub_220236A30, sub_220236A84);
                    if (v9 <= 0x3F)
                    {
                      sub_22033C920(319, &qword_281266810, sub_220237C1C, sub_220237C70);
                      if (v10 <= 0x3F)
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
  }
}

void sub_22033F2CC()
{
  sub_22036F388();
  if (v0 <= 0x3F)
  {
    sub_22023A8F4(319, &qword_281262048);
    if (v1 <= 0x3F)
    {
      sub_22023A8F4(319, &qword_281262190);
      if (v2 <= 0x3F)
      {
        sub_22023A8F4(319, &qword_27CF26C70);
        if (v3 <= 0x3F)
        {
          sub_22023A8F4(319, &qword_281262008);
          if (v4 <= 0x3F)
          {
            sub_22023A8F4(319, &qword_281265970);
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

unint64_t sub_22033F444()
{
  result = qword_27CF290A8;
  if (!qword_27CF290A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF290A8);
  }

  return result;
}

unint64_t sub_22033F49C()
{
  result = qword_27CF290B0;
  if (!qword_27CF290B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF290B0);
  }

  return result;
}

unint64_t sub_22033F4F4()
{
  result = qword_27CF290B8;
  if (!qword_27CF290B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF290B8);
  }

  return result;
}

uint64_t sub_22033F548(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746144746E657665 && a2 == 0xE900000000000061;
  if (v4 || (sub_220370048() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x697472417377656ELL && a2 == 0xEF61746144656C63 || (sub_220370048() & 1) != 0)
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

  else if (a1 == 0x746144616964656DLL && a2 == 0xE900000000000061 || (sub_220370048() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6174614477656976 && a2 == 0xE800000000000000 || (sub_220370048() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000220390B70 == a2 || (sub_220370048() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD00000000000001CLL && 0x8000000220392850 == a2 || (sub_220370048() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x7461446575737369 && a2 == 0xE900000000000061 || (sub_220370048() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x446C656E6E616863 && a2 == 0xEB00000000617461 || (sub_220370048() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD000000000000013 && 0x8000000220390390 == a2)
  {

    return 10;
  }

  else
  {
    v6 = sub_220370048();

    if (v6)
    {
      return 10;
    }

    else
    {
      return 11;
    }
  }
}

uint64_t MediaEngagementData.init(mediaTimePlayed:mediaUserAction:position:mediaPlayMethod:)@<X0>(uint64_t result@<X0>, char *a2@<X1>, int a3@<W2>, char *a4@<X3>, uint64_t a5@<X8>)
{
  v5 = *a2;
  v6 = *a4;
  *a5 = result;
  *(a5 + 8) = v5;
  *(a5 + 12) = a3;
  *(a5 + 16) = v6;
  return result;
}

uint64_t sub_22033F9E0()
{
  v1 = 0x6D6954616964656DLL;
  v2 = 0x6E6F697469736F70;
  if (*v0 != 2)
  {
    v2 = 0x616C50616964656DLL;
  }

  if (*v0)
  {
    v1 = 0x657355616964656DLL;
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

uint64_t sub_22033FA80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_220340224(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22033FAA8(uint64_t a1)
{
  v2 = sub_22033FD30();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22033FAE4(uint64_t a1)
{
  v2 = sub_22033FD30();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MediaEngagementData.encode(to:)(void *a1)
{
  sub_22033FFC8(0, &qword_27CF290C0, MEMORY[0x277D84538]);
  v5 = v4;
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  v9 = &v15 - v8;
  v10 = *v1;
  v11 = *(v1 + 8);
  v16 = *(v1 + 3);
  v17 = v11;
  HIDWORD(v15) = *(v1 + 16);
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22033FD30();
  sub_220370168();
  v23 = 0;
  sub_220370018();
  if (!v2)
  {
    v13 = BYTE4(v15);
    v22 = v17;
    v21 = 1;
    sub_22024C0DC();
    sub_22036FFF8();
    v20 = 2;
    sub_220370008();
    v19 = v13;
    v18 = 3;
    sub_22024C130();
    sub_22036FF88();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_22033FD30()
{
  result = qword_27CF290C8;
  if (!qword_27CF290C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF290C8);
  }

  return result;
}

uint64_t MediaEngagementData.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_22033FFC8(0, &qword_27CF290D0, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = &v16 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22033FD30();
  sub_220370148();
  if (!v2)
  {
    v23 = 0;
    v12 = sub_22036FF48();
    v21 = 1;
    sub_22024C5BC();
    sub_22036FF28();
    v13 = v22;
    v20 = 2;
    v17 = sub_22036FF38();
    v18 = 3;
    sub_22024C610();
    sub_22036FEB8();
    (*(v7 + 8))(v10, v6);
    v15 = v19;
    *a2 = v12;
    *(a2 + 8) = v13;
    *(a2 + 12) = v17;
    *(a2 + 16) = v15;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_22033FFC8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_22033FD30();
    v7 = a3(a1, &type metadata for MediaEngagementData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t getEnumTagSinglePayload for MediaEngagementData(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 17))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 16);
  if (v3 <= 3)
  {
    v4 = 3;
  }

  else
  {
    v4 = *(a1 + 16);
  }

  v5 = v4 - 4;
  if (v3 < 3)
  {
    v6 = -1;
  }

  else
  {
    v6 = v5;
  }

  return (v6 + 1);
}

uint64_t storeEnumTagSinglePayload for MediaEngagementData(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 16) = 0;
    *result = a2 - 253;
    *(result + 8) = 0;
    if (a3 >= 0xFD)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2 + 3;
    }
  }

  return result;
}

unint64_t sub_220340120()
{
  result = qword_27CF290D8;
  if (!qword_27CF290D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF290D8);
  }

  return result;
}

unint64_t sub_220340178()
{
  result = qword_27CF290E0;
  if (!qword_27CF290E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF290E0);
  }

  return result;
}

unint64_t sub_2203401D0()
{
  result = qword_27CF290E8;
  if (!qword_27CF290E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF290E8);
  }

  return result;
}

uint64_t sub_220340224(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6D6954616964656DLL && a2 == 0xEF646579616C5065;
  if (v4 || (sub_220370048() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x657355616964656DLL && a2 == 0xEF6E6F6974634172 || (sub_220370048() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6E6F697469736F70 && a2 == 0xE800000000000000 || (sub_220370048() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x616C50616964656DLL && a2 == 0xEF646F6874654D79)
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

uint64_t ActionMethod.init(_:)@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  sub_220340598();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_22036F8A8();
  v9 = *(v8 - 8);
  if ((*(v9 + 48))(a1, 1, v8) != 1)
  {
    sub_22034064C(a1, v7);
    v10 = (*(v9 + 88))(v7, v8);
    if (v10 != *MEMORY[0x277D6E120])
    {
      if (v10 == *MEMORY[0x277D6E0E0])
      {
        v11 = 3;
        goto LABEL_4;
      }

      if (v10 == *MEMORY[0x277D6E0D8])
      {
        v11 = 2;
        goto LABEL_4;
      }

      if (v10 == *MEMORY[0x277D6E108] || v10 == *MEMORY[0x277D6E118] || v10 == *MEMORY[0x277D6E110])
      {
        v11 = 1;
        goto LABEL_4;
      }

      if (v10 != *MEMORY[0x277D6E0F8] && v10 != *MEMORY[0x277D6E100] && v10 != *MEMORY[0x277D6E0D0] && v10 != *MEMORY[0x277D6E0F0])
      {
        (*(v9 + 8))(v7, v8);
      }
    }
  }

  v11 = 0;
LABEL_4:
  result = sub_2203405F0(a1);
  *a2 = v11;
  return result;
}

void sub_220340598()
{
  if (!qword_27CF290F0)
  {
    sub_22036F8A8();
    v0 = sub_22036FCC8();
    if (!v1)
    {
      atomic_store(v0, &qword_27CF290F0);
    }
  }
}

uint64_t sub_2203405F0(uint64_t a1)
{
  sub_220340598();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22034064C(uint64_t a1, uint64_t a2)
{
  sub_220340598();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2203406FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000012 && 0x8000000220392870 == a2)
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

uint64_t sub_220340790(uint64_t a1)
{
  v2 = sub_220204800();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2203407CC(uint64_t a1)
{
  v2 = sub_220204800();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ContentEnvironmentData.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  sub_220204784(0, &qword_281261D88, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = &v13 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220204800();
  sub_220370148();
  if (!v2)
  {
    sub_2203409A0();
    sub_22036FF28();
    (*(v7 + 8))(v10, v6);
    *a2 = v14;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_2203409A0()
{
  result = qword_281264A60;
  if (!qword_281264A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281264A60);
  }

  return result;
}

unint64_t sub_220340A30()
{
  result = qword_27CF290F8;
  if (!qword_27CF290F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF290F8);
  }

  return result;
}

StocksAnalytics::AudioEngagementOrigin_optional __swiftcall AudioEngagementOrigin.init(rawValue:)(Swift::String rawValue)
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

uint64_t AudioEngagementOrigin.rawValue.getter()
{
  v1 = 0x656C6369747261;
  if (*v0 != 1)
  {
    v1 = 1684366694;
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

uint64_t sub_220340B34(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE700000000000000;
  v4 = 0xE700000000000000;
  v5 = 0x656C6369747261;
  if (v2 != 1)
  {
    v5 = 1684366694;
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

  v8 = 0x656C6369747261;
  if (*a2 != 1)
  {
    v8 = 1684366694;
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

unint64_t sub_220340C28()
{
  result = qword_27CF29100;
  if (!qword_27CF29100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF29100);
  }

  return result;
}

uint64_t sub_220340C7C()
{
  v1 = *v0;
  sub_220370108();
  sub_22036FB08();

  return sub_220370128();
}

uint64_t sub_220340D18()
{
  *v0;
  *v0;
  sub_22036FB08();
}

uint64_t sub_220340DA0()
{
  v1 = *v0;
  sub_220370108();
  sub_22036FB08();

  return sub_220370128();
}

void sub_220340E44(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0xE700000000000000;
  v5 = 0x656C6369747261;
  if (v2 != 1)
  {
    v5 = 1684366694;
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

unint64_t sub_220340F5C()
{
  result = qword_27CF29108;
  if (!qword_27CF29108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF29108);
  }

  return result;
}

uint64_t sub_220341078()
{
  v0 = sub_22036F118();
  __swift_allocate_value_buffer(v0, qword_27CF29140);
  __swift_project_value_buffer(v0, qword_27CF29140);
  return sub_22036F108();
}

uint64_t ConsentScreenViewEvent.eventData.setter(uint64_t a1)
{
  sub_220230578();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t ConsentScreenViewEvent.consentScreenActionData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ConsentScreenViewEvent(0) + 20);
  sub_220341238();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

void sub_220341238()
{
  if (!qword_27CF29158)
  {
    sub_22025D378();
    sub_22025D3D0();
    v0 = sub_22036EE38();
    if (!v1)
    {
      atomic_store(v0, &qword_27CF29158);
    }
  }
}

uint64_t ConsentScreenViewEvent.consentScreenActionData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ConsentScreenViewEvent(0) + 20);
  sub_220341238();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ConsentScreenViewEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CEACF8];
  sub_220230578();
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = *(type metadata accessor for ConsentScreenViewEvent(0) + 20);
  sub_220341238();
  v6 = *(*(v5 - 8) + 104);

  return v6(a1 + v4, v2, v5);
}

uint64_t ConsentScreenViewEvent.Model.consentScreenActionData.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for ConsentScreenViewEvent.Model(0);
  *a1 = *(v1 + *(result + 20));
  return result;
}

uint64_t ConsentScreenViewEvent.Model.init(eventData:consentScreenActionData:)@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a2;
  v6 = sub_22036F388();
  (*(*(v6 - 8) + 32))(a3, a1, v6);
  result = type metadata accessor for ConsentScreenViewEvent.Model(0);
  *(a3 + *(result + 20)) = v5;
  return result;
}

unint64_t sub_220341510()
{
  if (*v0)
  {
    result = 0xD000000000000017;
  }

  else
  {
    result = 0x746144746E657665;
  }

  *v0;
  return result;
}

uint64_t sub_220341554@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x746144746E657665 && a2 == 0xE900000000000061;
  if (v6 || (sub_220370048() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000017 && 0x8000000220392890 == a2)
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

uint64_t sub_220341640(uint64_t a1)
{
  v2 = sub_220341884();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22034167C(uint64_t a1)
{
  v2 = sub_220341884();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ConsentScreenViewEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  sub_220341C30(0, &qword_27CF29160, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = &v13[-v9];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220341884();
  sub_220370168();
  v13[15] = 0;
  sub_22036F388();
  sub_2202366E0(&qword_2812666A8);
  sub_22036FFF8();
  if (!v2)
  {
    v13[14] = *(v3 + *(type metadata accessor for ConsentScreenViewEvent.Model(0) + 20));
    v13[13] = 1;
    sub_22025D3D0();
    sub_22036FFF8();
  }

  return (*(v7 + 8))(v10, v6);
}

unint64_t sub_220341884()
{
  result = qword_27CF29168;
  if (!qword_27CF29168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF29168);
  }

  return result;
}

uint64_t ConsentScreenViewEvent.Model.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a2;
  v29 = sub_22036F388();
  v26 = *(v29 - 8);
  v4 = *(v26 + 64);
  MEMORY[0x28223BE20](v29);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_220341C30(0, &qword_27CF29170, MEMORY[0x277D844C8]);
  v8 = *(v7 - 8);
  v27 = v7;
  v28 = v8;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v22 - v10;
  v12 = type metadata accessor for ConsentScreenViewEvent.Model(0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220341884();
  sub_220370148();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v23 = v12;
  v24 = v15;
  v17 = v26;
  v32 = 0;
  sub_2202366E0(&qword_2812666A0);
  v18 = v29;
  v19 = v27;
  sub_22036FF28();
  v20 = v24;
  (*(v17 + 32))(v24, v6, v18);
  v30 = 1;
  sub_22025D378();
  sub_22036FF28();
  (*(v28 + 8))(v11, v19);
  *(v20 + *(v23 + 20)) = v31;
  sub_220341C94(v20, v25);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_220341CF8(v20);
}

void sub_220341C30(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_220341884();
    v7 = a3(a1, &type metadata for ConsentScreenViewEvent.Model.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_220341C94(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ConsentScreenViewEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_220341CF8(uint64_t a1)
{
  v2 = type metadata accessor for ConsentScreenViewEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_220341E2C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *MEMORY[0x277CEACF8];
  sub_220230578();
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = *(a1 + 20);
  sub_220341238();
  v8 = *(*(v7 - 8) + 104);

  return v8(a2 + v6, v4, v7);
}

void sub_220341F14()
{
  sub_220230578();
  if (v0 <= 0x3F)
  {
    sub_220341238();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_220341FC0()
{
  result = sub_22036F388();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_220342048()
{
  result = qword_27CF29198;
  if (!qword_27CF29198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF29198);
  }

  return result;
}

unint64_t sub_2203420A0()
{
  result = qword_27CF291A0;
  if (!qword_27CF291A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF291A0);
  }

  return result;
}

unint64_t sub_2203420F8()
{
  result = qword_27CF291A8;
  if (!qword_27CF291A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF291A8);
  }

  return result;
}

StocksAnalytics::Milestone_optional __swiftcall Milestone.init(rawValue:)(Swift::String rawValue)
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

uint64_t Milestone.rawValue.getter()
{
  v1 = *v0;
  v2 = 1869768058;
  v3 = 0x7974666966;
  v4 = 0x4679746E65766573;
  if (v1 != 4)
  {
    v4 = 0x72646E7548656E6FLL;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 7234932;
  if (v1 != 1)
  {
    v5 = 0x694679746E657774;
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

unint64_t sub_22034226C()
{
  result = qword_27CF291B0;
  if (!qword_27CF291B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF291B0);
  }

  return result;
}

uint64_t sub_2203422C8()
{
  *v0;
  *v0;
  *v0;
  sub_22036FB08();
}

void sub_2203423C4(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 1869768058;
  v5 = 0xE500000000000000;
  v6 = 0x7974666966;
  v7 = 0xEB00000000657669;
  v8 = 0x4679746E65766573;
  if (v2 != 4)
  {
    v8 = 0x72646E7548656E6FLL;
    v7 = 0xEA00000000006465;
  }

  if (v2 != 3)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE300000000000000;
  v10 = 7234932;
  if (v2 != 1)
  {
    v10 = 0x694679746E657774;
    v9 = 0xEA00000000006576;
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

unint64_t sub_22034253C()
{
  result = qword_27CF291B8;
  if (!qword_27CF291B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF291B8);
  }

  return result;
}

uint64_t SearchData.searchString.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t SearchData.searchString.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t sub_220342648@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x7453686372616573 && a2 == 0xEC000000676E6972)
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

uint64_t sub_2203426D4(uint64_t a1)
{
  v2 = sub_220342898();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_220342710(uint64_t a1)
{
  v2 = sub_220342898();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SearchData.encode(to:)(void *a1)
{
  sub_220342A70(0, &qword_281261D20, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  v8 = &v13 - v7;
  v9 = *v1;
  v10 = v1[1];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220342898();
  sub_220370168();
  sub_22036FFB8();
  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_220342898()
{
  result = qword_281266130;
  if (!qword_281266130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281266130);
  }

  return result;
}

uint64_t SearchData.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_220342A70(0, &qword_27CF291C0, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = &v16 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220342898();
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

void sub_220342A70(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_220342898();
    v7 = a3(a1, &type metadata for SearchData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_220342AF4(void *a1)
{
  sub_220342A70(0, &qword_281261D20, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  v8 = &v13 - v7;
  v9 = *v1;
  v10 = v1[1];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220342898();
  sub_220370168();
  sub_22036FFB8();
  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_220342C64()
{
  result = qword_27CF291C8;
  if (!qword_27CF291C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF291C8);
  }

  return result;
}

unint64_t sub_220342CBC()
{
  result = qword_281266120;
  if (!qword_281266120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281266120);
  }

  return result;
}

unint64_t sub_220342D14()
{
  result = qword_281266128;
  if (!qword_281266128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281266128);
  }

  return result;
}

uint64_t UserSegmentationTreatmentData.treatmentIDs.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t sub_220342DEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6E656D7461657274 && a2 == 0xEC00000073444974)
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

uint64_t sub_220342E78(uint64_t a1)
{
  v2 = sub_22034308C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_220342EB4(uint64_t a1)
{
  v2 = sub_22034308C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t UserSegmentationTreatmentData.encode(to:)(void *a1)
{
  sub_2203432F4(0, &qword_281261BD0, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  v8 = v12 - v7;
  v9 = *v1;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22034308C();

  sub_220370168();
  v12[1] = v9;
  sub_2203430E0();
  sub_22020576C(&qword_281261EA0);
  sub_22036FFF8();

  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_22034308C()
{
  result = qword_281262900;
  if (!qword_281262900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281262900);
  }

  return result;
}

void sub_2203430E0()
{
  if (!qword_281261EA8)
  {
    v0 = sub_22036FB88();
    if (!v1)
    {
      atomic_store(v0, &qword_281261EA8);
    }
  }
}

uint64_t UserSegmentationTreatmentData.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  sub_2203432F4(0, &qword_27CF291D0, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = v13 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22034308C();
  sub_220370148();
  if (!v2)
  {
    sub_2203430E0();
    sub_22020576C(&qword_281261E98);
    sub_22036FF28();
    (*(v7 + 8))(v10, v6);
    *a2 = v13[1];
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_2203432F4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_22034308C();
    v7 = a3(a1, &type metadata for UserSegmentationTreatmentData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_2203433B4()
{
  result = qword_27CF291D8;
  if (!qword_27CF291D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF291D8);
  }

  return result;
}

unint64_t sub_22034340C()
{
  result = qword_2812628F0;
  if (!qword_2812628F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812628F0);
  }

  return result;
}

unint64_t sub_220343464()
{
  result = qword_2812628F8;
  if (!qword_2812628F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812628F8);
  }

  return result;
}

uint64_t WebSubscriptionData.webSubscriptionChannelIDs.setter(uint64_t a1)
{
  v3 = *(v1 + 8);

  *(v1 + 8) = a1;
  return result;
}

unint64_t sub_22034355C()
{
  if (*v0)
  {
    result = 0xD000000000000019;
  }

  else
  {
    result = 0xD000000000000015;
  }

  *v0;
  return result;
}

uint64_t sub_220343598@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000015 && 0x80000002203928B0 == a2 || (sub_220370048() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0xD000000000000019 && 0x80000002203928D0 == a2)
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

uint64_t sub_22034367C(uint64_t a1)
{
  v2 = sub_2203438D0();

  return MEMORY[0x2821FE718](a1, v2);
}