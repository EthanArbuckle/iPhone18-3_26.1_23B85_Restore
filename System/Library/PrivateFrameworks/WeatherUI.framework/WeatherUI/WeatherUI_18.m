uint64_t sub_1BCAC1FE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08A20);
  MEMORY[0x1EEE9AC00](v8);
  v10 = (&v25 - v9);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08A00);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v25 - v12;
  if (a3)
  {
    *v10 = a1;
    swift_storeEnumTagMultiPayload();
    sub_1BCAC3980();

    return sub_1BCE1BF60();
  }

  else
  {
    v29 = a1;
    v30 = a2;
    sub_1BC970820();

    v26 = sub_1BCE1C6A0();
    v27 = v15;
    v17 = v16;
    v19 = v18;
    v20 = *(v11 + 36);
    v28 = a4;
    v21 = &v13[v20];
    v22 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08A08) + 28);
    v23 = *MEMORY[0x1E6980FD8];
    v24 = sub_1BCE1C600();
    (*(*(v24 - 8) + 104))(v21 + v22, v23, v24);
    __swift_storeEnumTagSinglePayload(v21 + v22, 0, 1, v24);
    *v21 = swift_getKeyPath();
    *v13 = v26;
    *(v13 + 1) = v17;
    v13[16] = v19 & 1;
    *(v13 + 3) = v27;
    sub_1BC9660CC(v13, v10, &qword_1EBD08A00);
    swift_storeEnumTagMultiPayload();
    sub_1BCAC3980();
    sub_1BCE1BF60();
    return sub_1BC94C05C(v13, &qword_1EBD08A00);
  }
}

uint64_t sub_1BCAC2278()
{
  v0 = sub_1BCE1C100();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08990);
  MEMORY[0x1EEE9AC00](v4);
  v6 = (&v10 - v5);
  *v6 = sub_1BCE1CEE0();
  v6[1] = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08998);
  sub_1BCAC2430(v6 + *(v8 + 44));
  sub_1BCE1C0D0();
  sub_1BC957184(&qword_1EDA1B4E8, &qword_1EBD08990);
  sub_1BCE1C930();
  (*(v1 + 8))(v3, v0);
  return sub_1BC94C05C(v6, &qword_1EBD08990);
}

uint64_t sub_1BCAC2430@<X0>(char *a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD089A0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v19 - v6;
  v8 = sub_1BCE1D090();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v19 - v13;
  sub_1BCE1D080();
  sub_1BCAC2664();
  v15 = *(v9 + 16);
  v15(v11, v14, v8);
  sub_1BC9660CC(v7, v4, &qword_1EBD089A0);
  v15(a1, v11, v8);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD089A8);
  sub_1BC9660CC(v4, &a1[*(v16 + 48)], &qword_1EBD089A0);
  sub_1BC94C05C(v7, &qword_1EBD089A0);
  v17 = *(v9 + 8);
  v17(v14, v8);
  sub_1BC94C05C(v4, &qword_1EBD089A0);
  return (v17)(v11, v8);
}

uint64_t sub_1BCAC2664()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD089B0);
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v20 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD089B8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v20 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD089C0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v20 - v8;
  v10 = *(v0 + 56);
  v11 = sub_1BCE1BDF0();
  if (v10)
  {
    *v9 = v11;
    *(v9 + 1) = 0xC008000000000000;
    v9[16] = 0;
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD089D8);
    sub_1BCAC2958(v0, &v9[*(v12 + 44)]);
    sub_1BCE1CFC0();
    v13 = &v9[*(v7 + 36)];
    *v13 = vdupq_n_s64(0x3FEB333333333333uLL);
    v13[1].i64[0] = v14;
    v13[1].i64[1] = v15;
    sub_1BC9660CC(v9, v6, &qword_1EBD089C0);
    swift_storeEnumTagMultiPayload();
    sub_1BCAC36CC();
    sub_1BC957184(&qword_1EDA1B548, &qword_1EBD089B0);
    sub_1BCE1BF60();
    v16 = v9;
    v17 = &qword_1EBD089C0;
  }

  else
  {
    *v3 = v11;
    *(v3 + 1) = 0;
    v3[16] = 0;
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD089C8);
    sub_1BCAC3050(v0, &v3[*(v18 + 44)]);
    sub_1BC9660CC(v3, v6, &qword_1EBD089B0);
    swift_storeEnumTagMultiPayload();
    sub_1BCAC36CC();
    sub_1BC957184(&qword_1EDA1B548, &qword_1EBD089B0);
    sub_1BCE1BF60();
    v16 = v3;
    v17 = &qword_1EBD089B0;
  }

  return sub_1BC94C05C(v16, v17);
}

uint64_t sub_1BCAC2958@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v73 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08780);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v64 - v4;
  v6 = sub_1BCE1C490();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v64 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD089E0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v64 - v11;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD089E8);
  v71 = *(v72 - 8);
  MEMORY[0x1EEE9AC00](v72);
  v76 = &v64 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v64 - v15;
  sub_1BCAC1FE0(*a1, *(a1 + 8), *(a1 + 16), v12);
  v17 = sub_1BCE1C440();
  KeyPath = swift_getKeyPath();
  v19 = &v12[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD089F0) + 36)];
  *v19 = KeyPath;
  v19[1] = v17;
  if (qword_1EDA1B668 != -1)
  {
    swift_once();
  }

  v20 = qword_1EDA2EFA0;
  v21 = swift_getKeyPath();
  v22 = &v12[*(v10 + 36)];
  *v22 = v21;
  v22[1] = v20;
  sub_1BCAC3784();

  sub_1BCE1C750();
  sub_1BC94C05C(v12, &qword_1EBD089E0);
  v23 = *(a1 + 32);
  v82 = *(a1 + 24);
  v83 = v23;
  v69 = sub_1BC970820();

  v24 = sub_1BCE1C6A0();
  v67 = a1;
  v25 = v24;
  v27 = v26;
  v70 = v16;
  v29 = v28;
  (*(v7 + 104))(v9, *MEMORY[0x1E6980EF8], v6);
  sub_1BCE1C3A0();
  v30 = *MEMORY[0x1E6980E20];
  v31 = v6;
  v32 = sub_1BCE1C350();
  (*(*(v32 - 8) + 104))(v5, v30, v32);
  __swift_storeEnumTagSinglePayload(v5, 0, 1, v32);
  sub_1BCE1C3F0();
  sub_1BC94C05C(v5, &qword_1EBD08780);
  (*(v7 + 8))(v9, v31);
  v33 = sub_1BCE1C610();
  v74 = v34;
  v68 = v35;
  v75 = v36;

  sub_1BC998CF4(v25, v27, v29 & 1);

  v37 = *(v67 + 48);
  v82 = *(v67 + 40);
  v83 = v37;

  v38 = sub_1BCE1C6A0();
  v40 = v39;
  v42 = v41;
  sub_1BCE1C440();
  v67 = sub_1BCE1C610();
  v66 = v43;
  v45 = v44;
  v69 = v46;

  sub_1BC998CF4(v38, v40, v42 & 1);

  v47 = swift_getKeyPath();
  v45 &= 1u;
  LOBYTE(v82) = v45;
  v48 = v71;
  v49 = *(v71 + 16);
  v50 = v76;
  v51 = v70;
  v52 = v72;
  v49(v76, v70, v72);
  v53 = v73;
  v49(v73, v50, v52);
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08A10);
  v55 = v53 + *(v54 + 48);
  v65 = v33;
  v56 = v74;
  *v55 = v33;
  *(v55 + 8) = v56;
  LOBYTE(v49) = v68 & 1;
  *(v55 + 16) = v68 & 1;
  *(v55 + 24) = v75;
  v57 = v53 + *(v54 + 64);
  v58 = v67;
  v59 = v66;
  *&v78 = v67;
  *(&v78 + 1) = v66;
  LOBYTE(v79) = v45;
  *(&v79 + 1) = v77[0];
  DWORD1(v79) = *(v77 + 3);
  v60 = v69;
  *(&v79 + 1) = v69;
  *&v80 = v47;
  *(&v80 + 1) = 0x3FE3333333333333;
  v81 = 1;
  v61 = v79;
  *v57 = v78;
  *(v57 + 16) = v61;
  *(v57 + 32) = v80;
  *(v57 + 48) = 1;
  sub_1BCA81D10(v33, v56, v49);

  sub_1BC9660CC(&v78, &v82, &qword_1EBD08A18);
  v62 = *(v48 + 8);
  v62(v51, v52);
  v82 = v58;
  v83 = v59;
  v84 = v45;
  *v85 = v77[0];
  *&v85[3] = *(v77 + 3);
  v86 = v60;
  v87 = v47;
  v88 = 0x3FE3333333333333;
  v89 = 1;
  sub_1BC94C05C(&v82, &qword_1EBD08A18);
  sub_1BC998CF4(v65, v74, v49);

  return (v62)(v76, v52);
}

uint64_t sub_1BCAC3050@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v73 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08780);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v64[-v4];
  v71 = sub_1BCE1C490();
  v6 = *(v71 - 8);
  MEMORY[0x1EEE9AC00](v71);
  v8 = &v64[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD089E0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v64[-v10];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08A30);
  MEMORY[0x1EEE9AC00](v12);
  v72 = &v64[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v64[-v15];
  sub_1BCAC1FE0(*a1, *(a1 + 8), *(a1 + 16), v11);
  v17 = sub_1BCE1C440();
  KeyPath = swift_getKeyPath();
  v19 = &v11[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD089F0) + 36)];
  *v19 = KeyPath;
  v19[1] = v17;
  if (qword_1EDA1B668 != -1)
  {
    swift_once();
  }

  v20 = qword_1EDA2EFA0;
  v21 = swift_getKeyPath();
  v22 = &v11[*(v9 + 36)];
  *v22 = v21;
  v22[1] = v20;
  sub_1BCAC3784();

  sub_1BCE1C750();
  sub_1BC94C05C(v11, &qword_1EBD089E0);
  *&v16[*(v12 + 36)] = xmmword_1BCE3A870;
  v23 = *(a1 + 32);
  v74 = *(a1 + 24);
  v75 = v23;
  v69 = sub_1BC970820();

  v24 = sub_1BCE1C6A0();
  v26 = v25;
  v28 = v27;
  v29 = v71;
  (*(v6 + 104))(v8, *MEMORY[0x1E6980EF8], v71);
  sub_1BCE1C3C0();
  v68 = a1;
  v30 = *MEMORY[0x1E6980E20];
  v31 = sub_1BCE1C350();
  v70 = v16;
  v32 = v31;
  (*(*(v31 - 8) + 104))(v5, v30, v31);
  __swift_storeEnumTagSinglePayload(v5, 0, 1, v32);
  sub_1BCE1C3F0();
  sub_1BC94C05C(v5, &qword_1EBD08780);
  (*(v6 + 8))(v8, v29);
  v33 = sub_1BCE1C610();
  v35 = v34;
  v37 = v36;

  sub_1BC998CF4(v24, v26, v28 & 1);

  sub_1BCE1C3C0();
  v66 = sub_1BCE1C530();
  v67 = v38;
  v65 = v39;
  v71 = v40;
  sub_1BC998CF4(v33, v35, v37 & 1);

  v41 = *(v68 + 48);
  v74 = *(v68 + 40);
  v75 = v41;

  v42 = sub_1BCE1C6A0();
  v44 = v43;
  v46 = v45;
  sub_1BCE1C440();
  v47 = sub_1BCE1C610();
  v49 = v48;
  v51 = v50;
  v53 = v52;

  sub_1BC998CF4(v42, v44, v46 & 1);

  v54 = v70;
  v55 = v72;
  sub_1BC9660CC(v70, v72, &qword_1EBD08A30);
  LOBYTE(v32) = v65 & 1;
  LOBYTE(v74) = v65 & 1;
  v56 = v73;
  sub_1BC9660CC(v55, v73, &qword_1EBD08A30);
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08A38);
  v58 = v56 + *(v57 + 48);
  v60 = v66;
  v59 = v67;
  *v58 = v66;
  *(v58 + 8) = v59;
  *(v58 + 16) = v32;
  *(v58 + 24) = v71;
  v61 = v56 + *(v57 + 64);
  *v61 = v47;
  *(v61 + 8) = v49;
  LOBYTE(v56) = v51 & 1;
  *(v61 + 16) = v51 & 1;
  *(v61 + 24) = v53;
  *(v61 + 32) = xmmword_1BCE3A8A0;
  v62 = v59;
  sub_1BCA81D10(v60, v59, v32);

  sub_1BCA81D10(v47, v49, v56);

  sub_1BC94C05C(v54, &qword_1EBD08A30);
  sub_1BC998CF4(v47, v49, v56);

  sub_1BC998CF4(v60, v62, v74);

  return sub_1BC94C05C(v55, &qword_1EBD08A30);
}

unint64_t sub_1BCAC36CC()
{
  result = qword_1EDA1B9A0;
  if (!qword_1EDA1B9A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD089C0);
    sub_1BC957184(&qword_1EDA1B550, &qword_1EBD089D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA1B9A0);
  }

  return result;
}

unint64_t sub_1BCAC3784()
{
  result = qword_1EDA1B958;
  if (!qword_1EDA1B958)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD089E0);
    sub_1BCAC383C();
    sub_1BC957184(&qword_1EDA1B6A0, &qword_1EBD07AA8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA1B958);
  }

  return result;
}

unint64_t sub_1BCAC383C()
{
  result = qword_1EDA1BB60;
  if (!qword_1EDA1BB60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD089F0);
    sub_1BCAC38F4();
    sub_1BC957184(&qword_1EDA1B6B0, &qword_1EBD08400);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA1BB60);
  }

  return result;
}

unint64_t sub_1BCAC38F4()
{
  result = qword_1EDA1B838;
  if (!qword_1EDA1B838)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD089F8);
    sub_1BCAC3980();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA1B838);
  }

  return result;
}

unint64_t sub_1BCAC3980()
{
  result = qword_1EDA1BAF0;
  if (!qword_1EDA1BAF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD08A00);
    sub_1BC957184(&qword_1EDA1B6A8, &qword_1EBD08A08);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA1BAF0);
  }

  return result;
}

uint64_t sub_1BCAC3A5C(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08A28);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v2);
  sub_1BC9660CC(a1, &v5 - v3, &qword_1EBD08A28);
  return sub_1BCE1BB80();
}

uint64_t sub_1BCAC3B00@<X0>(void *a1@<X8>)
{
  result = sub_1BCE1BA60();
  *a1 = v3;
  return result;
}

uint64_t sub_1BCAC3B54(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_4();
  v4 = OUTLINED_FUNCTION_10_1();
  v5(v4);
  return a2;
}

uint64_t sub_1BCAC3BB0(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_4();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1BCAC3C08(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 17))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 16);
      if (v3 <= 1)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1BCAC3C48(uint64_t result, unsigned int a2, unsigned int a3)
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

void sub_1BCAC3CA8(uint64_t a1@<X8>)
{
  v2 = a1 + 1436;
  sub_1BCAC4470();
  v4 = v3;
  sub_1BCAC4470();
  *a1 = 0x4006666666666666;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0x3FF0000000000000;
  *(a1 + 24) = 48;
  *(a1 + 32) = xmmword_1BCE3BED0;
  *(a1 + 48) = xmmword_1BCE3BED0;
  *(a1 + 64) = 0x42C8000042480000;
  *(a1 + 72) = 0xC422800000000000;
  *(a1 + 80) = xmmword_1BCE3E630;
  *(a1 + 96) = xmmword_1BCE49420;
  *(a1 + 112) = 0x3E99999A3E6B851FLL;
  *(a1 + 128) = xmmword_1BCE42AF0;
  *(a1 + 144) = xmmword_1BCE3E660;
  *(a1 + 160) = xmmword_1BCE42B00;
  *(a1 + 176) = 1161527296;
  *(a1 + 184) = 0x3E3851EB3E051EB8;
  *(a1 + 192) = xmmword_1BCE40310;
  *(a1 + 208) = xmmword_1BCE42B10;
  *(a1 + 224) = xmmword_1BCE42B20;
  *(a1 + 240) = 0x4140000040A00000;
  *(a1 + 248) = 1132068864;
  *(a1 + 256) = 0x3E4CCCCD3DE147AELL;
  *(a1 + 264) = 0x40A0000041700000;
  *(a1 + 272) = 1101004800;
  __asm { FMOV            V0.4S, #1.0 }

  *(a1 + 288) = xmmword_1BCE3C7C0;
  *(a1 + 304) = _Q0;
  *(a1 + 320) = 0x4348000040C00000;
  *(a1 + 328) = 0x3E99999A3E19999ALL;
  *(a1 + 336) = 0x3F00000040A00000;
  *(a1 + 352) = xmmword_1BCE3C7C0;
  *(a1 + 368) = xmmword_1BCE3C700;
  *(a1 + 384) = 0;
  *(a1 + 388) = 0x3CA3D70A3F800000;
  *(a1 + 400) = xmmword_1BCE3BF20;
  *(a1 + 416) = 0x3F0000003F000000;
  *(a1 + 424) = 10;
  *(a1 + 432) = xmmword_1BCE3BF30;
  *(a1 + 448) = 0x3E4CCCCD3DCCCCCDLL;
  *(a1 + 464) = _Q0;
  *(a1 + 480) = xmmword_1BCE3D870;
  *(a1 + 496) = 0x43FA000040400000;
  *(a1 + 504) = 1116471296;
  *(a1 + 512) = 0x3E8000003DF5C28FLL;
  *(a1 + 528) = _Q0;
  *(a1 + 544) = _Q0;
  *(a1 + 560) = 0x4248000044BB8000;
  *(a1 + 568) = 0x3E4CCCCD3DA3D70ALL;
  *(a1 + 576) = xmmword_1BCE3C700;
  *(a1 + 592) = xmmword_1BCE3D880;
  *(a1 + 608) = 0x4100000040A00000;
  *(a1 + 624) = xmmword_1BCE3C700;
  *(a1 + 640) = xmmword_1BCE3D880;
  *(a1 + 656) = 0x4220000041200000;
  *(a1 + 664) = 0x3FC000003E99999ALL;
  *(a1 + 672) = 0x40A000003F800000;
  *(a1 + 688) = _Q0;
  *(a1 + 704) = 1065353216;
  *(a1 + 712) = 0x3FE666673F666667;
  *(a1 + 720) = 0x4181999A41580000;
  *(a1 + 728) = 1100009060;
  *(a1 + 736) = 1;
  *(a1 + 744) = 4;
  *(a1 + 752) = xmmword_1BCE3BF40;
  *(a1 + 768) = 0xD000000000000010;
  *(a1 + 776) = 0x80000001BCE79860;
  *(a1 + 784) = 0xD000000000000014;
  *(a1 + 792) = 0x80000001BCE79880;
  *(a1 + 800) = 10;
  *(a1 + 816) = _Q0;
  *(a1 + 832) = 1065353216;
  *(a1 + 840) = 0x4019999A3F99999ALL;
  *(a1 + 848) = 0x4160000041200000;
  *(a1 + 856) = 1082365648;
  *(a1 + 864) = 1;
  *(a1 + 872) = 4;
  *(a1 + 880) = xmmword_1BCE3E0B0;
  *(a1 + 896) = 0xD000000000000010;
  *(a1 + 904) = 0x80000001BCE7A1D0;
  *(a1 + 912) = 0xD000000000000014;
  *(a1 + 920) = 0x80000001BCE7A1F0;
  *(a1 + 928) = 10;
  *(a1 + 944) = _Q0;
  *(a1 + 960) = 1065353216;
  *(a1 + 968) = 0x3FC000003F19999ALL;
  *(a1 + 976) = 0x4100000040E00000;
  *(a1 + 984) = 1083405352;
  *(a1 + 992) = 1;
  *(a1 + 1000) = 4;
  *(a1 + 1008) = xmmword_1BCE3C6F0;
  *(a1 + 1024) = 0x2073756C756D7543;
  *(a1 + 1032) = 0xEB000000004D202DLL;
  *(a1 + 1040) = 0x5F73756C756D7543;
  *(a1 + 1048) = 0xEF4D656C676E6953;
  *(a1 + 1056) = 15;
  *(a1 + 1072) = _Q0;
  *(a1 + 1088) = 1065353216;
  *(a1 + 1096) = 0;
  __asm { FMOV            V3.2S, #3.25 }

  *(a1 + 1104) = _D3;
  *(a1 + 1112) = 0x42820000C0D00000;
  *(a1 + 1120) = 0;
  *(a1 + 1128) = 2;
  *(a1 + 1136) = xmmword_1BCE3C710;
  *(a1 + 1152) = 0x7970736957;
  *(a1 + 1160) = 0xE500000000000000;
  strcpy((a1 + 1168), "Wispy_Single");
  *(a1 + 1181) = 0;
  *(a1 + 1182) = -5120;
  *(a1 + 1184) = 6;
  *(a1 + 1200) = _Q0;
  *(a1 + 1216) = xmmword_1BCE4B5C0;
  *(a1 + 1232) = 0;
  *(a1 + 1236) = 1;
  *(a1 + 1240) = 0x73757461727453;
  *(a1 + 1248) = 0xE700000000000000;
  *(a1 + 1256) = 0x5F73757461727453;
  *(a1 + 1264) = 0xEF74656B6E616C42;
  *(a1 + 1272) = 8;
  *(a1 + 1280) = 0;
  *(a1 + 1288) = 0x3FAA3D703F88F5C2;
  *(a1 + 1296) = 0x41A0000042B40000;
  *(a1 + 1304) = 0;
  *(a1 + 1312) = _Q0;
  *(a1 + 1328) = _Q0;
  *(a1 + 1344) = 0;
  *(a1 + 1352) = 0x40000000;
  *(a1 + 1360) = 0;
  *(a1 + 1368) = 2;
  *(a1 + 1408) = 0u;
  *(a1 + 1392) = 0u;
  *(a1 + 1376) = 0u;
  *(a1 + 1424) = 0x3F99999A3ECCCCCDLL;
  *(a1 + 1432) = 1;
  *v2 = xmmword_1BCE3BFC0;
  *(a1 + 1456) = 0x42DC000042B40000;
  *(a1 + 1472) = _Q0;
  *(a1 + 1488) = _Q0;
  *(a1 + 1504) = 1097859072;
  *(a1 + 1512) = 0x736168506E6F6F6DLL;
  *(a1 + 1520) = 0xEA00000000003065;
  *(a1 + 1528) = 1112014848;
  *(a1 + 1536) = _Q0;
  *(a1 + 1552) = xmmword_1BCE3F4F0;
  *(a1 + 1568) = 0x4248000042200000;
  *(a1 + 1584) = 0u;
  *(a1 + 1600) = xmmword_1BCE3D880;
  __asm { FMOV            V1.2S, #-30.0 }

  *(a1 + 1616) = -_D1;
  *(a1 + 1624) = 0x40000000;
  *(a1 + 1628) = 256;
  *(a1 + 1636) = 0;
  *(a1 + 1630) = 0;
  *(v2 + 208) = 0x101000101010001;
  *(a1 + 1652) = 1;
  *(a1 + 1656) = 0;
  *(a1 + 1657) = v13;
  *(a1 + 1659) = v14;
  *(a1 + 1660) = 1066611507;
  *(a1 + 1664) = 0x40C0000040A00000;
  *(a1 + 1672) = 3;
  *(a1 + 1680) = xmmword_1BCE3C000;
  *(a1 + 1696) = xmmword_1BCE3C010;
  *(a1 + 1712) = xmmword_1BCE3C020;
  *(a1 + 1728) = 0x3F0000003EB33333;
  *(a1 + 1736) = 0x3E800000453B8000;
  *(a1 + 1744) = 0u;
  *(a1 + 1760) = 9;
  *(a1 + 1776) = xmmword_1BCE3D8B0;
  *(a1 + 1792) = xmmword_1BCE3D8C0;
  *(a1 + 1808) = xmmword_1BCE3C7A0;
  *(a1 + 1824) = 1;
  *(a1 + 1828) = xmmword_1BCE3C060;
  *(a1 + 1844) = 1052770304;
  *(a1 + 1848) = 0x4100000041700000;
  *(a1 + 1856) = 3;
  *(a1 + 1864) = 0x40000000;
  *(a1 + 1872) = 0x408000003F400000;
  *(a1 + 1880) = 1109393408;
  *(a1 + 1888) = _Q0;
  *(a1 + 1904) = 0x3E99999A00000000;
  *(a1 + 1912) = 1101004800;
  *(a1 + 1920) = 0;
  *(a1 + 1928) = 1106247680;
  *(a1 + 1936) = _Q0;
  *(a1 + 1952) = 1077936128;
  *(a1 + 1960) = 0x420C000041C80000;
  *(a1 + 1968) = xmmword_1BCE3E700;
  *(a1 + 1984) = 0x3F80000000000000;
  *(a1 + 1992) = 1061158912;
  *(a1 + 2000) = 0x3F4CCCCD3E4CCCCDLL;
  *(a1 + 2008) = 0x3F6666663F333333;
  *(a1 + 2016) = xmmword_1BCE3C7E0;
  *(a1 + 2096) = 0u;
  *(a1 + 2080) = 0u;
  *(a1 + 2064) = 0u;
  *(a1 + 2048) = 0u;
  *(a1 + 2032) = 0u;
  *(a1 + 2112) = 1056964608;
  *(a1 + 2120) = 0x3E28F5C33D851EB8;
  *(a1 + 2128) = 0x3FE666663F800000;
  *(a1 + 2136) = 0x4080000040600000;
  *(a1 + 2144) = -1046478848;
  *(a1 + 2160) = _Q0;
  *(a1 + 2176) = _Q0;
  *(a1 + 2192) = 1041865114;
  *(a1 + 2200) = 20;
  *(a1 + 2208) = 0x41A000003F800000;
  *(a1 + 2224) = xmmword_1BCE42410;
  *(a1 + 2240) = xmmword_1BCE42B40;
  *(a1 + 2256) = _Q0;
  *(a1 + 2288) = 0u;
  *(a1 + 2272) = 0u;
  *(a1 + 2304) = 3;
  *(a1 + 2312) = v4;
  *(a1 + 2320) = v12;
}

double sub_1BCAC4470()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD07858);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1BCE3EBD0;
  *(v0 + 48) = xmmword_1BCE3F6C0;
  *(v0 + 64) = 0x4120000043480000;
  *(v0 + 80) = xmmword_1BCE3E140;
  *(v0 + 96) = xmmword_1BCE3E150;
  *(v0 + 112) = xmmword_1BCE3F6D0;
  *(v0 + 128) = xmmword_1BCE3F550;
  *(v0 + 2224) = xmmword_1BCE42C10;
  *(v0 + 2256) = xmmword_1BCE42C20;
  *(v0 + 2944) = xmmword_1BCE42C60;
  *(v0 + 2960) = xmmword_1BCE42C70;
  *(v0 + 2976) = xmmword_1BCE42C80;
  *(v0 + 3040) = xmmword_1BCE42CB0;
  *(v0 + 3440) = xmmword_1BCE42CC0;
  *(v0 + 3472) = xmmword_1BCE42CC0;
  *(v0 + 3488) = xmmword_1BCE3DA70;
  *(v0 + 4912) = xmmword_1BCE3CE40;
  *(v0 + 6128) = xmmword_1BCE3CE40;
  *(v0 + 4928) = 1149861888;
  *(v0 + 6144) = 1149861888;
  *(v0 + 4944) = xmmword_1BCE42DB0;
  *(v0 + 6160) = xmmword_1BCE42DB0;
  *(v0 + 4976) = xmmword_1BCE42DC0;
  *(v0 + 6192) = xmmword_1BCE42DC0;
  *(v0 + 4992) = xmmword_1BCE42DD0;
  *(v0 + 6208) = xmmword_1BCE42DD0;
  *(v0 + 5008) = xmmword_1BCE3EEF0;
  *(v0 + 6224) = xmmword_1BCE3EEF0;
  *(v0 + 5024) = xmmword_1BCE3EF00;
  *(v0 + 6240) = xmmword_1BCE3EF00;
  *(v0 + 5040) = xmmword_1BCE42DE0;
  *(v0 + 6256) = xmmword_1BCE42DE0;
  *(v0 + 5056) = xmmword_1BCE42DF0;
  *(v0 + 6272) = xmmword_1BCE42DF0;
  *(v0 + 5104) = xmmword_1BCE42E00;
  *(v0 + 6320) = xmmword_1BCE42E00;
  *(v0 + 5120) = xmmword_1BCE42E10;
  *(v0 + 6336) = xmmword_1BCE42E10;
  *(v0 + 5168) = xmmword_1BCE42E20;
  *(v0 + 6384) = xmmword_1BCE42E20;
  *(v0 + 5184) = xmmword_1BCE42E30;
  *(v0 + 6400) = xmmword_1BCE42E30;
  *(v0 + 5200) = xmmword_1BCE401B0;
  *(v0 + 6416) = xmmword_1BCE401B0;
  *(v0 + 5264) = xmmword_1BCE3E9D0;
  *(v0 + 6480) = xmmword_1BCE3E9D0;
  *(v0 + 5360) = xmmword_1BCE42E40;
  *(v0 + 6576) = xmmword_1BCE42E40;
  *(v0 + 5376) = xmmword_1BCE42E50;
  *(v0 + 6592) = xmmword_1BCE42E50;
  *(v0 + 5392) = xmmword_1BCE42E60;
  *(v0 + 6608) = xmmword_1BCE42E60;
  *(v0 + 5408) = xmmword_1BCE42E70;
  *(v0 + 6624) = xmmword_1BCE42E70;
  *(v0 + 5424) = xmmword_1BCE42E80;
  *(v0 + 6640) = xmmword_1BCE42E80;
  *(v0 + 5440) = xmmword_1BCE42E90;
  *(v0 + 6656) = xmmword_1BCE42E90;
  *(v0 + 5456) = xmmword_1BCE42EA0;
  *(v0 + 6672) = xmmword_1BCE42EA0;
  *(v0 + 5472) = xmmword_1BCE42EB0;
  *(v0 + 6688) = xmmword_1BCE42EB0;
  *(v0 + 5872) = xmmword_1BCE42EC0;
  *(v0 + 7088) = xmmword_1BCE42EC0;
  *(v0 + 5888) = xmmword_1BCE42ED0;
  *(v0 + 7104) = xmmword_1BCE42ED0;
  *(v0 + 5904) = xmmword_1BCE42EE0;
  *(v0 + 7120) = xmmword_1BCE42EE0;
  *(v0 + 3696) = xmmword_1BCE3EE30;
  *(v0 + 7344) = xmmword_1BCE3EE30;
  *(v0 + 3712) = 1145569280;
  *(v0 + 7360) = 1145569280;
  *(v0 + 3760) = xmmword_1BCE3F920;
  *(v0 + 7408) = xmmword_1BCE3F920;
  *(v0 + 3776) = xmmword_1BCE3F930;
  *(v0 + 7424) = xmmword_1BCE3F930;
  *(v0 + 3824) = xmmword_1BCE42CD0;
  *(v0 + 7472) = xmmword_1BCE42CD0;
  *(v0 + 3840) = xmmword_1BCE40770;
  *(v0 + 7488) = xmmword_1BCE40770;
  *(v0 + 3888) = xmmword_1BCE42CE0;
  *(v0 + 7536) = xmmword_1BCE42CE0;
  *(v0 + 3952) = xmmword_1BCE3F970;
  *(v0 + 7600) = xmmword_1BCE3F970;
  *(v0 + 3968) = xmmword_1BCE3F980;
  *(v0 + 7616) = xmmword_1BCE3F980;
  *(v0 + 3984) = xmmword_1BCE3F990;
  *(v0 + 7632) = xmmword_1BCE3F990;
  *(v0 + 4000) = xmmword_1BCE3C9D0;
  *(v0 + 5216) = xmmword_1BCE3C9D0;
  *(v0 + 6432) = xmmword_1BCE3C9D0;
  *(v0 + 7648) = xmmword_1BCE3C9D0;
  *(v0 + 4016) = xmmword_1BCE3FD30;
  *(v0 + 5232) = xmmword_1BCE3FD30;
  *(v0 + 6448) = xmmword_1BCE3FD30;
  *(v0 + 7664) = xmmword_1BCE3FD30;
  *(v0 + 4032) = 1063675494;
  *(v0 + 5248) = 1063675494;
  *(v0 + 6464) = 1063675494;
  *(v0 + 7680) = 1063675494;
  *(v0 + 4048) = xmmword_1BCE3CDC0;
  *(v0 + 7696) = xmmword_1BCE3CDC0;
  *(v0 + 4144) = xmmword_1BCE42CF0;
  *(v0 + 7792) = xmmword_1BCE42CF0;
  *(v0 + 4160) = xmmword_1BCE42D00;
  *(v0 + 7808) = xmmword_1BCE42D00;
  *(v0 + 4176) = xmmword_1BCE42D10;
  *(v0 + 7824) = xmmword_1BCE42D10;
  *(v0 + 4192) = xmmword_1BCE42D20;
  *(v0 + 7840) = xmmword_1BCE42D20;
  *(v0 + 4208) = xmmword_1BCE42D30;
  *(v0 + 7856) = xmmword_1BCE42D30;
  *(v0 + 4224) = xmmword_1BCE42D40;
  *(v0 + 7872) = xmmword_1BCE42D40;
  *(v0 + 4240) = xmmword_1BCE42D50;
  *(v0 + 7888) = xmmword_1BCE42D50;
  *(v0 + 4256) = xmmword_1BCE42D60;
  *(v0 + 7904) = xmmword_1BCE42D60;
  *(v0 + 4656) = xmmword_1BCE42D70;
  *(v0 + 8304) = xmmword_1BCE42D70;
  *(v0 + 4672) = xmmword_1BCE42D80;
  *(v0 + 8320) = xmmword_1BCE42D80;
  *(v0 + 4688) = xmmword_1BCE42D90;
  *(v0 + 8336) = xmmword_1BCE42D90;
  *(v0 + 4704) = xmmword_1BCE42DA0;
  *(v0 + 5920) = xmmword_1BCE42DA0;
  *(v0 + 7136) = xmmword_1BCE42DA0;
  *(v0 + 8352) = xmmword_1BCE42DA0;
  *(v0 + 2480) = xmmword_1BCE3F7B0;
  *(v0 + 8560) = xmmword_1BCE3F7B0;
  *(v0 + 2496) = 1137180672;
  *(v0 + 8576) = 1137180672;
  *(v0 + 2512) = xmmword_1BCE3F7C0;
  *(v0 + 8592) = xmmword_1BCE3F7C0;
  *(v0 + 2528) = xmmword_1BCE3F7D0;
  *(v0 + 8608) = xmmword_1BCE3F7D0;
  *(v0 + 2544) = xmmword_1BCE3F7E0;
  *(v0 + 8624) = xmmword_1BCE3F7E0;
  *(v0 + 2560) = xmmword_1BCE3F7F0;
  *(v0 + 8640) = xmmword_1BCE3F7F0;
  *(v0 + 2576) = xmmword_1BCE3E180;
  *(v0 + 3792) = xmmword_1BCE3E180;
  *(v0 + 7440) = xmmword_1BCE3E180;
  *(v0 + 8656) = xmmword_1BCE3E180;
  *(v0 + 2592) = xmmword_1BCE3CB90;
  *(v0 + 3808) = xmmword_1BCE3CB90;
  *(v0 + 7456) = xmmword_1BCE3CB90;
  *(v0 + 8672) = xmmword_1BCE3CB90;
  *(v0 + 2608) = xmmword_1BCE42C30;
  *(v0 + 8688) = xmmword_1BCE42C30;
  __asm { FMOV            V7.2D, #0.5 }

  *(v0 + 2624) = _Q7;
  *(v0 + 8704) = _Q7;
  *(v0 + 2672) = xmmword_1BCE400E0;
  *(v0 + 8752) = xmmword_1BCE400E0;
  *(v0 + 2688) = xmmword_1BCE3F830;
  *(v0 + 8768) = xmmword_1BCE3F830;
  *(v0 + 2736) = xmmword_1BCE3F840;
  *(v0 + 8816) = xmmword_1BCE3F840;
  *(v0 + 2752) = xmmword_1BCE3F850;
  *(v0 + 8832) = xmmword_1BCE3F850;
  *(v0 + 2768) = xmmword_1BCE3F860;
  *(v0 + 8848) = xmmword_1BCE3F860;
  *(v0 + 2784) = xmmword_1BCE3F870;
  *(v0 + 8864) = xmmword_1BCE3F870;
  *(v0 + 2800) = xmmword_1BCE42C40;
  *(v0 + 8880) = xmmword_1BCE42C40;
  *&_Q7 = vdup_n_s32(0x3F4CCCCDu);
  *(v0 + 2816) = _Q7;
  *(v0 + 8896) = _Q7;
  *(v0 + 2928) = xmmword_1BCE42C50;
  *(v0 + 9008) = xmmword_1BCE42C50;
  *(v0 + 9024) = xmmword_1BCE3D910;
  *(v0 + 2992) = xmmword_1BCE42C90;
  *(v0 + 9072) = xmmword_1BCE42C90;
  *(v0 + 3008) = xmmword_1BCE42CA0;
  *(v0 + 9088) = xmmword_1BCE42CA0;
  *(v0 + 9120) = xmmword_1BCE42F00;
  *(v0 + 9520) = xmmword_1BCE42F10;
  *(v0 + 9536) = xmmword_1BCE42F20;
  *(v0 + 9552) = xmmword_1BCE42F30;
  *(v0 + 9056) = xmmword_1BCE42EF0;
  *(v0 + 9568) = xmmword_1BCE42EF0;
  *(v0 + 9904) = xmmword_1BCE42F40;
  *(v0 + 9920) = xmmword_1BCE42F50;
  *(v0 + 10224) = xmmword_1BCE42F60;
  *(v0 + 10240) = xmmword_1BCE42F70;
  *(v0 + 10256) = xmmword_1BCE42F80;
  *(v0 + 10272) = xmmword_1BCE3DCB0;
  *(v0 + 10304) = xmmword_1BCE42F90;
  *(v0 + 10336) = xmmword_1BCE414B0;
  *(v0 + 10736) = xmmword_1BCE42FA0;
  *(v0 + 10752) = xmmword_1BCE42FB0;
  *(v0 + 10768) = xmmword_1BCE42FC0;
  *(v0 + 10784) = xmmword_1BCE42FD0;
  *(v0 + 144) = xmmword_1BCE3F6E0;
  *(v0 + 160) = xmmword_1BCE3ED00;
  *(v0 + 1264) = xmmword_1BCE3F6C0;
  *(v0 + 9776) = xmmword_1BCE3F6C0;
  *(v0 + 10992) = xmmword_1BCE3F6C0;
  *(v0 + 1280) = 0x4120000043480000;
  *(v0 + 9792) = 0x4120000043480000;
  *(v0 + 11008) = 0x4120000043480000;
  *(v0 + 176) = xmmword_1BCE42B50;
  *(v0 + 192) = xmmword_1BCE42B60;
  *(v0 + 1296) = xmmword_1BCE3E140;
  *(v0 + 3728) = xmmword_1BCE3E140;
  *(v0 + 7376) = xmmword_1BCE3E140;
  *(v0 + 9808) = xmmword_1BCE3E140;
  *(v0 + 11024) = xmmword_1BCE3E140;
  __asm { FMOV            V4.2D, #1.0 }

  *(v0 + 1312) = xmmword_1BCE3E150;
  *(v0 + 3744) = xmmword_1BCE3E150;
  *(v0 + 7392) = xmmword_1BCE3E150;
  *(v0 + 9824) = xmmword_1BCE3E150;
  *(v0 + 11040) = xmmword_1BCE3E150;
  *(v0 + 240) = xmmword_1BCE3F710;
  *(v0 + 1328) = xmmword_1BCE3F6D0;
  *(v0 + 9840) = xmmword_1BCE3F6D0;
  *(v0 + 11056) = xmmword_1BCE3F6D0;
  *(v0 + 1344) = xmmword_1BCE3F550;
  *(v0 + 9856) = xmmword_1BCE3F550;
  *(v0 + 11072) = xmmword_1BCE3F550;
  *(v0 + 272) = xmmword_1BCE3F720;
  *(v0 + 288) = xmmword_1BCE3F730;
  *(v0 + 1360) = xmmword_1BCE3F6E0;
  *(v0 + 9872) = xmmword_1BCE3F6E0;
  *(v0 + 11088) = xmmword_1BCE3F6E0;
  *(v0 + 1376) = xmmword_1BCE3ED00;
  *(v0 + 9888) = xmmword_1BCE3ED00;
  *(v0 + 11104) = xmmword_1BCE3ED00;
  *(v0 + 304) = xmmword_1BCE3F5B0;
  *(v0 + 320) = xmmword_1BCE3F5C0;
  *(v0 + 1392) = xmmword_1BCE42B50;
  *(v0 + 11120) = xmmword_1BCE42B50;
  *(v0 + 1408) = xmmword_1BCE42B60;
  *(v0 + 11136) = xmmword_1BCE42B60;
  *(v0 + 336) = xmmword_1BCE3F740;
  *(v0 + 352) = xmmword_1BCE3F5E0;
  *(v0 + 1456) = xmmword_1BCE3F710;
  *(v0 + 9968) = xmmword_1BCE3F710;
  *(v0 + 11184) = xmmword_1BCE3F710;
  *(v0 + 368) = xmmword_1BCE3FC10;
  *(v0 + 1488) = xmmword_1BCE3F720;
  *(v0 + 10000) = xmmword_1BCE3F720;
  *(v0 + 11216) = xmmword_1BCE3F720;
  result = 1.0;
  *(v0 + 1504) = xmmword_1BCE3F730;
  *(v0 + 10016) = xmmword_1BCE3F730;
  *(v0 + 11232) = xmmword_1BCE3F730;
  *(v0 + 1520) = xmmword_1BCE3F5B0;
  *(v0 + 8368) = _Q4;
  *(v0 + 10032) = xmmword_1BCE3F5B0;
  *(v0 + 11248) = xmmword_1BCE3F5B0;
  *(v0 + 1536) = xmmword_1BCE3F5C0;
  *(v0 + 8288) = xmmword_1BCE3DAE0;
  *(v0 + 0x2000) = _Q4;
  *(v0 + 8208) = _Q4;
  *(v0 + 8224) = _Q4;
  *(v0 + 8240) = _Q4;
  *(v0 + 8256) = xmmword_1BCE3C8C0;
  *(v0 + 8272) = _Q4;
  *(v0 + 8128) = _Q4;
  *(v0 + 8144) = _Q4;
  *(v0 + 8160) = _Q4;
  *(v0 + 8176) = _Q4;
  *(v0 + 10048) = xmmword_1BCE3F5C0;
  *(v0 + 11264) = xmmword_1BCE3F5C0;
  *(v0 + 8048) = _Q4;
  *(v0 + 8064) = _Q4;
  *(v0 + 8080) = _Q4;
  *(v0 + 8096) = xmmword_1BCE3DD90;
  *(v0 + 8112) = _Q4;
  *(v0 + 1552) = xmmword_1BCE3F740;
  *(v0 + 7968) = _Q4;
  *(v0 + 7984) = _Q4;
  *(v0 + 8000) = xmmword_1BCE3A880;
  *(v0 + 8016) = _Q4;
  *(v0 + 8032) = xmmword_1BCE3C8C0;
  *(v0 + 10064) = xmmword_1BCE3F740;
  *(v0 + 11280) = xmmword_1BCE3F740;
  *(v0 + 7920) = _Q4;
  *(v0 + 7936) = xmmword_1BCE3A880;
  *(v0 + 7952) = _Q4;
  *(v0 + 384) = 0x3F8000003F4CCCCDLL;
  *(v0 + 1568) = xmmword_1BCE3F5E0;
  *(v0 + 10080) = xmmword_1BCE3F5E0;
  *(v0 + 11296) = xmmword_1BCE3F5E0;
  *(v0 + 432) = 0u;
  *(v0 + 448) = 0u;
  *(v0 + 7728) = 0u;
  *(v0 + 7760) = _Q4;
  *(v0 + 7776) = xmmword_1BCE3DAE0;
  *(v0 + 1584) = xmmword_1BCE3FC10;
  *(v0 + 7688) = 0x3FEF0AE2E0000000;
  *(v0 + 7712) = 0x3FF0000000000000;
  *(v0 + 7720) = 0;
  *(v0 + 7744) = 0u;
  *(v0 + 10096) = xmmword_1BCE3FC10;
  *(v0 + 11312) = xmmword_1BCE3FC10;
  *(v0 + 1600) = 0x3F8000003F4CCCCDLL;
  *(v0 + 7520) = _Q4;
  *(v0 + 7552) = _Q4;
  *(v0 + 7568) = _Q4;
  *(v0 + 7584) = _Q4;
  *(v0 + 10112) = 0x3F8000003F4CCCCDLL;
  *(v0 + 11328) = 0x3F8000003F4CCCCDLL;
  *(v0 + 1664) = 0u;
  *(v0 + 1648) = 0u;
  *(v0 + 2880) = 0u;
  *(v0 + 7504) = _Q4;
  *(v0 + 2864) = 0u;
  *(v0 + 7337) = *v13;
  *(v0 + 4096) = 0u;
  *(v0 + 4080) = 0u;
  *(v0 + 5312) = 0u;
  *(v0 + 5296) = 0u;
  *(v0 + 6528) = 0u;
  *(v0 + 6512) = 0u;
  *(v0 + 7328) = 0x4040800000000000;
  *(v0 + 7336) = 1;
  *(v0 + 7340) = *&v13[3];
  *(v0 + 7368) = 1058642330;
  *(v0 + 6896) = _Q4;
  *(v0 + 7256) = 0x3FF0000000000000;
  *(v0 + 7264) = _Q4;
  *(v0 + 7280) = _Q4;
  *(v0 + 7296) = _Q4;
  *(v0 + 7312) = 0x3FF0000000000000;
  *(v0 + 7168) = xmmword_1BCE3C8C0;
  *(v0 + 7184) = _Q4;
  *(v0 + 7200) = xmmword_1BCE3DAE0;
  *(v0 + 7216) = _Q4;
  *(v0 + 7232) = _Q4;
  *(v0 + 7248) = 0x4170000042480000;
  *(v0 + 6912) = _Q4;
  *(v0 + 6928) = _Q4;
  *(v0 + 6944) = _Q4;
  *(v0 + 6960) = _Q4;
  *(v0 + 7072) = xmmword_1BCE3DAE0;
  *(v0 + 7152) = _Q4;
  *(v0 + 6976) = _Q4;
  *(v0 + 6992) = _Q4;
  *(v0 + 7008) = _Q4;
  *(v0 + 7024) = _Q4;
  *(v0 + 7040) = xmmword_1BCE3C8C0;
  *(v0 + 7056) = _Q4;
  *(v0 + 8960) = 0u;
  *(v0 + 8944) = 0u;
  *(v0 + 10176) = 0u;
  *(v0 + 10160) = 0u;
  *(v0 + 11392) = 0u;
  *(v0 + 11376) = 0u;
  *(v0 + 6816) = xmmword_1BCE3C8C0;
  *(v0 + 6832) = _Q4;
  *(v0 + 6848) = _Q4;
  *(v0 + 6864) = _Q4;
  *(v0 + 6880) = xmmword_1BCE3DD90;
  *(v0 + 1712) = xmmword_1BCE42B70;
  *(v0 + 6752) = _Q4;
  *(v0 + 6768) = _Q4;
  *(v0 + 6784) = xmmword_1BCE3A880;
  *(v0 + 6800) = _Q4;
  *(v0 + 11440) = xmmword_1BCE42B70;
  *(v0 + 496) = xmmword_1BCE42B70;
  *(v0 + 512) = xmmword_1BCE42B80;
  *(v0 + 6704) = _Q4;
  *(v0 + 6720) = xmmword_1BCE3A880;
  *(v0 + 6736) = _Q4;
  *(v0 + 1728) = xmmword_1BCE42B80;
  *(v0 + 11456) = xmmword_1BCE42B80;
  *(v0 + 528) = xmmword_1BCE42B90;
  *(v0 + 544) = xmmword_1BCE42BA0;
  *(v0 + 1744) = xmmword_1BCE42B90;
  *(v0 + 6544) = _Q4;
  *(v0 + 6560) = xmmword_1BCE3DAE0;
  *(v0 + 11472) = xmmword_1BCE42B90;
  *(v0 + 1760) = xmmword_1BCE42BA0;
  *(v0 + 6496) = 0x3FF0000000000000;
  *(v0 + 6504) = 0;
  *(v0 + 11488) = xmmword_1BCE42BA0;
  *(v0 + 560) = xmmword_1BCE42BB0;
  *(v0 + 576) = xmmword_1BCE42BC0;
  *(v0 + 1776) = xmmword_1BCE42BB0;
  *(v0 + 6472) = 0x3FF0000000000000;
  *(v0 + 10288) = xmmword_1BCE42BB0;
  *(v0 + 11504) = xmmword_1BCE42BB0;
  *(v0 + 1792) = xmmword_1BCE42BC0;
  *(v0 + 6368) = _Q4;
  *(v0 + 11520) = xmmword_1BCE42BC0;
  *(v0 + 1808) = xmmword_1BCE3F8A0;
  *(v0 + 6288) = _Q4;
  *(v0 + 6304) = _Q4;
  *(v0 + 6352) = _Q4;
  *(v0 + 3024) = xmmword_1BCE3F8A0;
  *(v0 + 9040) = xmmword_1BCE3F8A0;
  *(v0 + 9104) = xmmword_1BCE3F8A0;
  *(v0 + 10320) = xmmword_1BCE3F8A0;
  *(v0 + 11536) = xmmword_1BCE3F8A0;
  *(v0 + 592) = xmmword_1BCE3F8A0;
  *(v0 + 608) = xmmword_1BCE42BD0;
  *(v0 + 1824) = xmmword_1BCE42BD0;
  *(v0 + 11552) = xmmword_1BCE42BD0;
  *(v0 + 6176) = _Q4;
  *(v0 + 6064) = _Q4;
  *(v0 + 6121) = *v12;
  *(v0 + 6152) = 1062836634;
  *(v0 + 6080) = _Q4;
  *(v0 + 6096) = 0x3FF0000000000000;
  *(v0 + 6112) = 0x404E000000000000;
  *(v0 + 6120) = 1;
  *(v0 + 6124) = *&v12[3];
  *(v0 + 5984) = xmmword_1BCE3DAE0;
  *(v0 + 6000) = _Q4;
  *(v0 + 6016) = _Q4;
  *(v0 + 6032) = 0x4170000042480000;
  *(v0 + 6040) = 0x3FF0000000000000;
  *(v0 + 6048) = _Q4;
  *(v0 + 640) = xmmword_1BCE3A880;
  *(v0 + 704) = xmmword_1BCE3A880;
  *(v0 + 800) = xmmword_1BCE3DD90;
  *(v0 + 5936) = _Q4;
  *(v0 + 5952) = xmmword_1BCE3C8C0;
  *(v0 + 5968) = _Q4;
  *(v0 + 5792) = _Q4;
  *(v0 + 5808) = _Q4;
  *(v0 + 5824) = xmmword_1BCE3C8C0;
  *(v0 + 5840) = _Q4;
  *(v0 + 5856) = xmmword_1BCE3DAE0;
  *(v0 + 5696) = _Q4;
  *(v0 + 5712) = _Q4;
  *(v0 + 5728) = _Q4;
  *(v0 + 5744) = _Q4;
  *(v0 + 5760) = _Q4;
  *(v0 + 5776) = _Q4;
  *(v0 + 5600) = xmmword_1BCE3C8C0;
  *(v0 + 5616) = _Q4;
  *(v0 + 5632) = _Q4;
  *(v0 + 5648) = _Q4;
  *(v0 + 5664) = xmmword_1BCE3DD90;
  *(v0 + 5680) = _Q4;
  *(v0 + 5504) = xmmword_1BCE3A880;
  *(v0 + 5520) = _Q4;
  *(v0 + 5536) = _Q4;
  *(v0 + 5552) = _Q4;
  *(v0 + 5568) = xmmword_1BCE3A880;
  *(v0 + 5584) = _Q4;
  *(v0 + 1856) = xmmword_1BCE3A880;
  *(v0 + 1920) = xmmword_1BCE3A880;
  *(v0 + 3072) = xmmword_1BCE3A880;
  *(v0 + 3136) = xmmword_1BCE3A880;
  *(v0 + 4288) = xmmword_1BCE3A880;
  *(v0 + 5488) = _Q4;
  *(v0 + 4352) = xmmword_1BCE3A880;
  *(v0 + 5256) = 0x3FF0000000000000;
  *(v0 + 5280) = 0x3FF0000000000000;
  *(v0 + 5288) = 0;
  *(v0 + 5328) = _Q4;
  *(v0 + 5344) = xmmword_1BCE3DAE0;
  *(v0 + 9152) = xmmword_1BCE3A880;
  *(v0 + 9216) = xmmword_1BCE3A880;
  *(v0 + 10368) = xmmword_1BCE3A880;
  *(v0 + 10432) = xmmword_1BCE3A880;
  *(v0 + 11584) = xmmword_1BCE3A880;
  *(v0 + 11648) = xmmword_1BCE3A880;
  *(v0 + 2016) = xmmword_1BCE3DD90;
  *(v0 + 3232) = xmmword_1BCE3DD90;
  *(v0 + 4448) = xmmword_1BCE3DD90;
  *(v0 + 9312) = xmmword_1BCE3DD90;
  *(v0 + 10528) = xmmword_1BCE3DD90;
  *(v0 + 11744) = xmmword_1BCE3DD90;
  *(v0 + 5136) = _Q4;
  *(v0 + 5152) = _Q4;
  *(v0 + 11952) = xmmword_1BCE42BE0;
  *(v0 + 1008) = xmmword_1BCE42BE0;
  *(v0 + 1024) = xmmword_1BCE42BF0;
  *(v0 + 2240) = xmmword_1BCE42BF0;
  *(v0 + 5072) = _Q4;
  *(v0 + 5088) = _Q4;
  *(v0 + 3456) = xmmword_1BCE42BF0;
  *(v0 + 11968) = xmmword_1BCE42BF0;
  *(v0 + 1040) = xmmword_1BCE42C00;
  *(v0 + 11984) = xmmword_1BCE42C00;
  *(v0 + 1056) = xmmword_1BCE40080;
  *(v0 + 2272) = xmmword_1BCE40080;
  *(v0 + 12000) = xmmword_1BCE40080;
  *(v0 + 4905) = *v11;
  *(v0 + 4908) = *&v11[3];
  *(v0 + 4936) = 1062836634;
  *(v0 + 4960) = _Q4;
  *(v0 + 4832) = _Q4;
  *(v0 + 4848) = _Q4;
  *(v0 + 4864) = _Q4;
  *(v0 + 4880) = 0x3FF0000000000000;
  *(v0 + 4896) = 0x404E000000000000;
  *(v0 + 4904) = 0;
  *(v0 + 4752) = _Q4;
  *(v0 + 4768) = xmmword_1BCE3DAE0;
  *(v0 + 4784) = _Q4;
  *(v0 + 4800) = _Q4;
  *(v0 + 4816) = 0x4170000042480000;
  *(v0 + 4824) = 0x3FF0000000000000;
  *(v0 + 736) = xmmword_1BCE3C8C0;
  *(v0 + 960) = xmmword_1BCE3C8C0;
  *(v0 + 1088) = xmmword_1BCE3C8C0;
  *(v0 + 1952) = xmmword_1BCE3C8C0;
  *(v0 + 4720) = _Q4;
  *(v0 + 4736) = xmmword_1BCE3C8C0;
  *(v0 + 4560) = _Q4;
  *(v0 + 4576) = _Q4;
  *(v0 + 4592) = _Q4;
  *(v0 + 4608) = xmmword_1BCE3C8C0;
  *(v0 + 4624) = _Q4;
  *(v0 + 4640) = xmmword_1BCE3DAE0;
  *(v0 + 4464) = _Q4;
  *(v0 + 4480) = _Q4;
  *(v0 + 4496) = _Q4;
  *(v0 + 4512) = _Q4;
  *(v0 + 4528) = _Q4;
  *(v0 + 4544) = _Q4;
  *(v0 + 2176) = xmmword_1BCE3C8C0;
  *(v0 + 4368) = _Q4;
  *(v0 + 4384) = xmmword_1BCE3C8C0;
  *(v0 + 4400) = _Q4;
  *(v0 + 4416) = _Q4;
  *(v0 + 4432) = _Q4;
  *(v0 + 2304) = xmmword_1BCE3C8C0;
  *(v0 + 3168) = xmmword_1BCE3C8C0;
  *(v0 + 4272) = _Q4;
  *(v0 + 4304) = _Q4;
  *(v0 + 4320) = _Q4;
  *(v0 + 4336) = _Q4;
  *(v0 + 3392) = xmmword_1BCE3C8C0;
  *(v0 + 3520) = xmmword_1BCE3C8C0;
  *(v0 + 4112) = _Q4;
  *(v0 + 4128) = xmmword_1BCE3DAE0;
  *(v0 + 8384) = xmmword_1BCE3C8C0;
  *(v0 + 9248) = xmmword_1BCE3C8C0;
  *(v0 + 9472) = xmmword_1BCE3C8C0;
  *(v0 + 9600) = xmmword_1BCE3C8C0;
  *(v0 + 10464) = xmmword_1BCE3C8C0;
  *(v0 + 10688) = xmmword_1BCE3C8C0;
  *(v0 + 10816) = xmmword_1BCE3C8C0;
  *(v0 + 11680) = xmmword_1BCE3C8C0;
  *(v0 + 11904) = xmmword_1BCE3C8C0;
  *(v0 + 12032) = xmmword_1BCE3C8C0;
  *(v0 + 480) = xmmword_1BCE3DAE0;
  *(v0 + 4040) = 0x3FEF0AE2E0000000;
  *(v0 + 4064) = 0x3FF0000000000000;
  *(v0 + 4072) = 0;
  *(v0 + 992) = xmmword_1BCE3DAE0;
  *(v0 + 1120) = xmmword_1BCE3DAE0;
  *(v0 + 1696) = xmmword_1BCE3DAE0;
  *(v0 + 2208) = xmmword_1BCE3DAE0;
  *(v0 + 3920) = _Q4;
  *(v0 + 3936) = _Q4;
  *(v0 + 2336) = xmmword_1BCE3DAE0;
  *(v0 + 2912) = xmmword_1BCE3DAE0;
  *(v0 + 3424) = xmmword_1BCE3DAE0;
  *(v0 + 3856) = _Q4;
  *(v0 + 3872) = _Q4;
  *(v0 + 3904) = _Q4;
  *(v0 + 3552) = xmmword_1BCE3DAE0;
  *(v0 + 3568) = _Q4;
  *(v0 + 3584) = _Q4;
  *(v0 + 3600) = 0x4170000042480000;
  *(v0 + 3608) = 0x3FF0000000000000;
  *(v0 + 3616) = _Q4;
  *(v0 + 3632) = _Q4;
  *(v0 + 3648) = _Q4;
  *(v0 + 3664) = 0x3FF0000000000000;
  *(v0 + 3680) = 0x4040800000000000;
  *(v0 + 3688) = 0;
  *(v0 + 3720) = 1058642330;
  *(v0 + 3689) = *v10;
  *(v0 + 3692) = *&v10[3];
  *(v0 + 8416) = xmmword_1BCE3DAE0;
  *(v0 + 8992) = xmmword_1BCE3DAE0;
  *(v0 + 9504) = xmmword_1BCE3DAE0;
  *(v0 + 9632) = xmmword_1BCE3DAE0;
  *(v0 + 10208) = xmmword_1BCE3DAE0;
  *(v0 + 10720) = xmmword_1BCE3DAE0;
  *(v0 + 10848) = xmmword_1BCE3DAE0;
  *(v0 + 11424) = xmmword_1BCE3DAE0;
  *(v0 + 11936) = xmmword_1BCE3DAE0;
  *(v0 + 12064) = xmmword_1BCE3DAE0;
  *(v0 + 1168) = 0x4170000042480000;
  *(v0 + 3504) = _Q4;
  *(v0 + 3536) = _Q4;
  *(v0 + 2384) = 0x4170000042480000;
  *(v0 + 3280) = _Q4;
  *(v0 + 3296) = _Q4;
  *(v0 + 3312) = _Q4;
  *(v0 + 3376) = _Q4;
  *(v0 + 3408) = _Q4;
  *(v0 + 3328) = _Q4;
  *(v0 + 3344) = _Q4;
  *(v0 + 3360) = _Q4;
  *(v0 + 8464) = 0x4170000042480000;
  *(v0 + 9680) = 0x4170000042480000;
  *(v0 + 10896) = 0x4170000042480000;
  *(v0 + 12112) = 0x4170000042480000;
  *(v0 + 3184) = _Q4;
  *(v0 + 3200) = _Q4;
  *(v0 + 3216) = _Q4;
  *(v0 + 3248) = _Q4;
  *(v0 + 3264) = _Q4;
  *(v0 + 464) = _Q4;
  *(v0 + 624) = _Q4;
  *(v0 + 3088) = _Q4;
  *(v0 + 3104) = _Q4;
  *(v0 + 3120) = _Q4;
  *(v0 + 3152) = _Q4;
  *(v0 + 672) = _Q4;
  *(v0 + 688) = _Q4;
  *(v0 + 720) = _Q4;
  *(v0 + 768) = _Q4;
  *(v0 + 784) = _Q4;
  *(v0 + 944) = _Q4;
  *(v0 + 976) = _Q4;
  *(v0 + 3056) = _Q4;
  *(v0 + 208) = _Q4;
  *(v0 + 224) = _Q4;
  *(v0 + 256) = _Q4;
  *(v0 + 400) = _Q4;
  *(v0 + 2896) = _Q4;
  *(v0 + 424) = 0;
  *(v0 + 2824) = 0x3FF0000000000000;
  *(v0 + 2832) = _Q4;
  *(v0 + 2848) = 0x3FF0000000000000;
  *(v0 + 2856) = 0;
  *(v0 + 656) = _Q4;
  *(v0 + 752) = _Q4;
  *(v0 + 816) = _Q4;
  *(v0 + 832) = _Q4;
  *(v0 + 848) = _Q4;
  *(v0 + 864) = _Q4;
  *(v0 + 2640) = _Q4;
  *(v0 + 2656) = _Q4;
  *(v0 + 2704) = _Q4;
  *(v0 + 2720) = _Q4;
  *(v0 + 880) = _Q4;
  *(v0 + 896) = _Q4;
  *(v0 + 912) = _Q4;
  *(v0 + 928) = _Q4;
  *(v0 + 1072) = _Q4;
  *(v0 + 1104) = _Q4;
  *(v0 + 1136) = _Q4;
  *(v0 + 1152) = _Q4;
  *(v0 + 1176) = 0x3FF0000000000000;
  *(v0 + 1184) = _Q4;
  *(v0 + 1200) = _Q4;
  *(v0 + 1216) = _Q4;
  *(v0 + 2473) = *v9;
  *(v0 + 2476) = *&v9[3];
  *(v0 + 2504) = 1053609165;
  *(v0 + 2416) = _Q4;
  *(v0 + 2432) = _Q4;
  *(v0 + 2448) = 0x3FF0000000000000;
  *(v0 + 2464) = 0xC018000000000000;
  *(v0 + 2472) = 0;
  *(v0 + 1232) = 0x3FF0000000000000;
  *(v0 + 1248) = 0xC031FFFFFFFFFFFFLL;
  *(v0 + 2368) = _Q4;
  *(v0 + 2392) = 0x3FF0000000000000;
  *(v0 + 2400) = _Q4;
  *(v0 + 1256) = 0;
  *(v0 + 1257) = *v8;
  *(v0 + 2320) = _Q4;
  *(v0 + 2352) = _Q4;
  *(v0 + 1260) = *&v8[3];
  *(v0 + 1288) = 1036831949;
  *(v0 + 1424) = _Q4;
  *(v0 + 1440) = _Q4;
  *(v0 + 2288) = _Q4;
  *(v0 + 1472) = _Q4;
  *(v0 + 1608) = 0x3FF0000000000000;
  *(v0 + 2128) = _Q4;
  *(v0 + 2144) = _Q4;
  *(v0 + 2160) = _Q4;
  *(v0 + 2192) = _Q4;
  *(v0 + 2032) = _Q4;
  *(v0 + 2048) = _Q4;
  *(v0 + 2064) = _Q4;
  *(v0 + 2080) = _Q4;
  *(v0 + 2096) = _Q4;
  *(v0 + 2112) = _Q4;
  *(v0 + 1616) = _Q4;
  *(v0 + 1632) = 0x3FF0000000000000;
  *(v0 + 1936) = _Q4;
  *(v0 + 1968) = _Q4;
  *(v0 + 1984) = _Q4;
  *(v0 + 2000) = _Q4;
  *(v0 + 1640) = 0;
  *(v0 + 1680) = _Q4;
  *(v0 + 1840) = _Q4;
  *(v0 + 1872) = _Q4;
  *(v0 + 1888) = _Q4;
  *(v0 + 1904) = _Q4;
  *(v0 + 8400) = _Q4;
  *(v0 + 8432) = _Q4;
  *(v0 + 8448) = _Q4;
  *(v0 + 8480) = _Q4;
  *(v0 + 8496) = _Q4;
  *(v0 + 8512) = _Q4;
  *(v0 + 8720) = _Q4;
  *(v0 + 8736) = _Q4;
  *(v0 + 8784) = _Q4;
  *(v0 + 8800) = _Q4;
  *(v0 + 8912) = _Q4;
  *(v0 + 8976) = _Q4;
  *(v0 + 9136) = _Q4;
  *(v0 + 9168) = _Q4;
  *(v0 + 9184) = _Q4;
  *(v0 + 9200) = _Q4;
  *(v0 + 9232) = _Q4;
  *(v0 + 9264) = _Q4;
  *(v0 + 9280) = _Q4;
  *(v0 + 9296) = _Q4;
  *(v0 + 9328) = _Q4;
  *(v0 + 9344) = _Q4;
  *(v0 + 9360) = _Q4;
  *(v0 + 9376) = _Q4;
  *(v0 + 9392) = _Q4;
  *(v0 + 9408) = _Q4;
  *(v0 + 9424) = _Q4;
  *(v0 + 9440) = _Q4;
  *(v0 + 9456) = _Q4;
  *(v0 + 9488) = _Q4;
  *(v0 + 9584) = _Q4;
  *(v0 + 9616) = _Q4;
  *(v0 + 9648) = _Q4;
  *(v0 + 9664) = _Q4;
  *(v0 + 9696) = _Q4;
  *(v0 + 9712) = _Q4;
  *(v0 + 9728) = _Q4;
  *(v0 + 9936) = _Q4;
  *(v0 + 9952) = _Q4;
  *(v0 + 9984) = _Q4;
  *(v0 + 10128) = _Q4;
  *(v0 + 10192) = _Q4;
  *(v0 + 10352) = _Q4;
  *(v0 + 10384) = _Q4;
  *(v0 + 10400) = _Q4;
  *(v0 + 10416) = _Q4;
  *(v0 + 10448) = _Q4;
  *(v0 + 10480) = _Q4;
  *(v0 + 10496) = _Q4;
  *(v0 + 10512) = _Q4;
  *(v0 + 10544) = _Q4;
  *(v0 + 10560) = _Q4;
  *(v0 + 10576) = _Q4;
  *(v0 + 10592) = _Q4;
  *(v0 + 10608) = _Q4;
  *(v0 + 10624) = _Q4;
  *(v0 + 10640) = _Q4;
  *(v0 + 10656) = _Q4;
  *(v0 + 10672) = _Q4;
  *(v0 + 10704) = _Q4;
  *(v0 + 10800) = _Q4;
  *(v0 + 10832) = _Q4;
  *(v0 + 10864) = _Q4;
  *(v0 + 10880) = _Q4;
  *(v0 + 10912) = _Q4;
  *(v0 + 10928) = _Q4;
  *(v0 + 10944) = _Q4;
  *(v0 + 11152) = _Q4;
  *(v0 + 11168) = _Q4;
  *(v0 + 11200) = _Q4;
  *(v0 + 11344) = _Q4;
  *(v0 + 11408) = _Q4;
  *(v0 + 11568) = _Q4;
  *(v0 + 11600) = _Q4;
  *(v0 + 11616) = _Q4;
  *(v0 + 11632) = _Q4;
  *(v0 + 11664) = _Q4;
  *(v0 + 11696) = _Q4;
  *(v0 + 11712) = _Q4;
  *(v0 + 11728) = _Q4;
  *(v0 + 11760) = _Q4;
  *(v0 + 11776) = _Q4;
  *(v0 + 11792) = _Q4;
  *(v0 + 11808) = _Q4;
  *(v0 + 11824) = _Q4;
  *(v0 + 11840) = _Q4;
  *(v0 + 11856) = _Q4;
  *(v0 + 11872) = _Q4;
  *(v0 + 11888) = _Q4;
  *(v0 + 11920) = _Q4;
  *(v0 + 12016) = _Q4;
  *(v0 + 12048) = _Q4;
  *(v0 + 12080) = _Q4;
  *(v0 + 12096) = _Q4;
  *(v0 + 12128) = _Q4;
  *(v0 + 12144) = _Q4;
  *(v0 + 12160) = _Q4;
  *(v0 + 392) = 0x3FF0000000000000;
  *(v0 + 416) = 0x3FF0000000000000;
  *(v0 + 32) = 0xC056800000000000;
  *(v0 + 40) = 0;
  *(v0 + 72) = 1036831949;
  *(v0 + 8472) = 0x3FF0000000000000;
  *(v0 + 8528) = 0x3FF0000000000000;
  *(v0 + 8544) = 0xC018000000000000;
  *(v0 + 8552) = 1;
  *(v0 + 8553) = *v14;
  *(v0 + 8556) = *&v14[3];
  *(v0 + 8584) = 1053609165;
  *(v0 + 8904) = 0x3FF0000000000000;
  *(v0 + 8928) = 0x3FF0000000000000;
  *(v0 + 8936) = 0;
  *(v0 + 9688) = 0x3FF0000000000000;
  *(v0 + 9744) = 0x3FF0000000000000;
  *(v0 + 9760) = 0xC031FFFFFFFFFFFFLL;
  *(v0 + 9769) = *v15;
  *(v0 + 9768) = 1;
  *(v0 + 9772) = *&v15[3];
  *(v0 + 9800) = 1036831949;
  *(v0 + 10120) = 0x3FF0000000000000;
  *(v0 + 10144) = 0x3FF0000000000000;
  *(v0 + 10152) = 0;
  *(v0 + 10904) = 0x3FF0000000000000;
  *(v0 + 10960) = 0x3FF0000000000000;
  *(v0 + 10976) = 0xC056800000000000;
  *(v0 + 10984) = 1;
  *(v0 + 10985) = *v16;
  *(v0 + 10988) = *&v16[3];
  *(v0 + 11016) = 1036831949;
  *(v0 + 11336) = 0x3FF0000000000000;
  *(v0 + 11360) = 0x3FF0000000000000;
  *(v0 + 11368) = 0;
  *(v0 + 12120) = 0x3FF0000000000000;
  *(v0 + 12176) = 0x3FF0000000000000;
  return result;
}

uint64_t SunCircularContentView.init(status:)@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_1BCE19280();
  OUTLINED_FUNCTION_2();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_2_0();
  v8 = v7 - v6;
  *a1 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08428);
  swift_storeEnumTagMultiPayload();
  v9 = type metadata accessor for SunCircularContentView();
  v10 = *(v9 + 24);
  type metadata accessor for WidgetDateFormatter();
  *(a1 + v10) = WidgetDateFormatter.__allocating_init()();
  sub_1BCE191B0();
  if (qword_1EDA16948 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (byte_1EDA16950 == 1)
  {
    (*(v4 + 8))(v8, v2);
    v11 = 0;
  }

  else
  {
    v12 = sub_1BCE19140();
    v13 = [v12 positionOfDayPeriodInFormattedTime];

    (*(v4 + 8))(v8, v2);
    v11 = v13 == 1;
  }

  *(a1 + *(v9 + 28)) = v11;
  OUTLINED_FUNCTION_5_20();
  return sub_1BCAC8B38();
}

uint64_t SunCircularContentView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v120 = a1;
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08A40);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v2);
  v4 = (v99 - v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08A48);
  OUTLINED_FUNCTION_2();
  v111 = v6;
  v112 = v5;
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_10_16();
  v109 = v8;
  v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08A50);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_10_16();
  v114 = v10;
  v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08A58);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_10_16();
  v118 = v12;
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08A60);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_10_16();
  v110 = v14;
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08A68);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_10_16();
  v113 = v16;
  v17 = type metadata accessor for SunriseSunsetEvent();
  MEMORY[0x1EEE9AC00](v17 - 8);
  OUTLINED_FUNCTION_2_0();
  v104 = v19 - v18;
  v115 = sub_1BCE1C100();
  OUTLINED_FUNCTION_2();
  v21 = v20;
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_2_0();
  v25 = v24 - v23;
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08A70);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v26);
  v28 = (v99 - v27);
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08A78);
  OUTLINED_FUNCTION_2();
  v101 = v29;
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v30);
  v32 = v99 - v31;
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08A80);
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v33);
  v102 = v99 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v35);
  v105 = v99 - v36;
  v37 = type metadata accessor for SunComplicationViewModel();
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_2_0();
  v41 = v40 - v39;
  v42 = type metadata accessor for SunComplicationDataStatus();
  MEMORY[0x1EEE9AC00](v42 - 8);
  OUTLINED_FUNCTION_2_0();
  v45 = v44 - v43;
  type metadata accessor for SunCircularContentView();
  OUTLINED_FUNCTION_5_20();
  sub_1BCAC8B90();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v45, 2, v37);
  if (EnumTagSinglePayload)
  {
    if (EnumTagSinglePayload == 1)
    {
      *v4 = sub_1BCE1CEE0();
      v4[1] = v47;
      v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08A88);
      sub_1BCAC6BE4(v4 + *(v48 + 44));
      sub_1BCE1C0D0();
      OUTLINED_FUNCTION_3_24();
      OUTLINED_FUNCTION_14_12();
      v51 = sub_1BCA5B4A0(v49, v50);
      v52 = v109;
      v53 = v107;
      sub_1BCE1C930();
      v54 = OUTLINED_FUNCTION_9_16();
      v55(v54);
      OUTLINED_FUNCTION_14_12();
      sub_1BCA5B44C(v56, v57);
      OUTLINED_FUNCTION_20_7();
      OUTLINED_FUNCTION_17_10();
      if (qword_1EDA1EFB0 != -1)
      {
        OUTLINED_FUNCTION_0();
      }

      OUTLINED_FUNCTION_19_8();
      v58 = qword_1EDA1EFB8;
      OUTLINED_FUNCTION_6_19();
      OUTLINED_FUNCTION_12_16();
      v121 = v53;
      v122 = v51;
      OUTLINED_FUNCTION_2_19();
      v59 = v114;
      OUTLINED_FUNCTION_11_17();
      sub_1BCE1C8D0();
      sub_1BC998CF4(v21, v25, &unk_1BCE4B618 & 1);

      (*(v111 + 8))(v52, v51);
      sub_1BC95DCE8();
      swift_storeEnumTagMultiPayload();
      sub_1BCAC8714();
      sub_1BCAC8810();
      v60 = v113;
      sub_1BCE1BF60();
      sub_1BC95DCE8();
      swift_storeEnumTagMultiPayload();
      sub_1BCAC86E4();
      sub_1BCE1BF60();
      sub_1BCA5B44C(v60, &qword_1EBD08A68);
      v61 = v59;
    }

    else
    {
      *v4 = sub_1BCE1CEE0();
      v4[1] = v86;
      v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08A88);
      sub_1BCAC6BE4(v4 + *(v87 + 44));
      sub_1BCE1C0D0();
      OUTLINED_FUNCTION_3_24();
      OUTLINED_FUNCTION_14_12();
      v90 = sub_1BCA5B4A0(v88, v89);
      v91 = v109;
      v92 = v107;
      sub_1BCE1C930();
      v93 = OUTLINED_FUNCTION_9_16();
      v94(v93);
      OUTLINED_FUNCTION_14_12();
      sub_1BCA5B44C(v95, v96);
      OUTLINED_FUNCTION_20_7();
      OUTLINED_FUNCTION_17_10();
      if (qword_1EDA1EFB0 != -1)
      {
        OUTLINED_FUNCTION_0();
      }

      OUTLINED_FUNCTION_19_8();
      v97 = qword_1EDA1EFB8;
      OUTLINED_FUNCTION_6_19();
      OUTLINED_FUNCTION_12_16();
      v121 = v92;
      v122 = v90;
      OUTLINED_FUNCTION_2_19();
      v98 = v114;
      OUTLINED_FUNCTION_11_17();
      sub_1BCE1C8D0();
      sub_1BC998CF4(v21, v25, &unk_1BCE4B618 & 1);

      (*(v111 + 8))(v91, v90);
      sub_1BC95DCE8();
      swift_storeEnumTagMultiPayload();
      sub_1BCAC86E4();
      sub_1BCAC8810();
      sub_1BCE1BF60();
      v61 = v98;
    }

    return sub_1BCA5B44C(v61, &qword_1EBD08A50);
  }

  else
  {
    sub_1BCAC8B38();
    v99[1] = v1;
    v62 = sub_1BCAC6414();
    v114 = v62;
    v64 = v63;
    v109 = v63;
    v66 = v65;
    v111 = v67;
    v112 = v65;
    v68 = v67;
    *v28 = sub_1BCE1CEE0();
    v28[1] = v69;
    v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08A90);
    sub_1BCAC725C(v62, v64, v66, v68, v41, v28 + *(v70 + 44));
    sub_1BCE1C0D0();
    OUTLINED_FUNCTION_3_24();
    v72 = sub_1BCA5B4A0(v71, &qword_1EBD08A70);
    v73 = v100;
    sub_1BCE1C930();
    v74 = OUTLINED_FUNCTION_9_16();
    v75(v74);
    sub_1BCA5B44C(v28, &qword_1EBD08A70);
    v76 = v104;
    SunComplicationViewModel.sunriseSunsetEvent.getter(v104);
    v77 = SunriseSunsetEvent.headerDescription.getter();
    v79 = v78;
    sub_1BCAC890C(v76, type metadata accessor for SunriseSunsetEvent);
    v123 = v77;
    v124 = v79;
    v121 = v73;
    v122 = v72;
    OUTLINED_FUNCTION_2_19();
    sub_1BC970820();
    v80 = v102;
    v81 = v103;
    sub_1BCE1C8E0();

    (*(v101 + 8))(v32, v81);
    v123 = sub_1BCAC7FC4(v41, v114, v109, v112, v111);
    v124 = v82;
    v83 = v105;
    sub_1BCE1B880();

    sub_1BCA5B44C(v80, &qword_1EBD08A80);

    sub_1BC95DCE8();
    swift_storeEnumTagMultiPayload();
    sub_1BCAC8714();
    sub_1BCAC8810();
    v84 = v113;
    sub_1BCE1BF60();
    sub_1BC95DCE8();
    swift_storeEnumTagMultiPayload();
    sub_1BCAC86E4();
    sub_1BCE1BF60();
    sub_1BCA5B44C(v84, &qword_1EBD08A68);
    sub_1BCA5B44C(v83, &qword_1EBD08A80);
    return sub_1BCAC890C(v41, type metadata accessor for SunComplicationViewModel);
  }
}

uint64_t sub_1BCAC6414()
{
  v0 = sub_1BCE19280();
  MEMORY[0x1EEE9AC00](v0 - 8);
  v47 = &v43 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_1BCE1D230();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v3 = sub_1BCE19060();
  v44 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v43 = &v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v43 - v6;
  v8 = sub_1BCE19470();
  v45 = *(v8 - 8);
  v46 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for SunriseSunsetEvent();
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v43 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v43 - v18;
  v20 = type metadata accessor for SunComplicationViewModel();
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v43 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BCAC8B90();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_1BCE1D220();
      if (qword_1EDA1EFB0 != -1)
      {
        goto LABEL_15;
      }

      goto LABEL_10;
    case 2u:
      sub_1BCE1D220();
      if (qword_1EDA1EFB0 != -1)
      {
LABEL_15:
        swift_once();
      }

LABEL_10:
      swift_beginAccess();
      v32 = qword_1EDA1EFB8;
      sub_1BCE191B0();
      sub_1BCE1D2C0();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD07880);
      v33 = swift_allocObject();
      *(v33 + 16) = xmmword_1BCE3E050;
      SunComplicationViewModel.duration.getter();
      v34 = MEMORY[0x1E69E65A8];
      *(v33 + 56) = MEMORY[0x1E69E6530];
      *(v33 + 64) = v34;
      *(v33 + 32) = v35;
      v36 = sub_1BCE1D250();
      v38 = v37;

      v25 = sub_1BCAC8084(v36, v38);

      v31 = type metadata accessor for SunriseSunsetEvent;
      goto LABEL_11;
    case 3u:
      if (qword_1EDA1EFB0 != -1)
      {
        swift_once();
      }

      swift_beginAccess();
      v27 = qword_1EDA1EFB8;
      v28 = sub_1BCE18B60();
      v30 = v29;

      v25 = sub_1BCAC8084(v28, v30);

      v31 = type metadata accessor for SunComplicationViewModel;
LABEL_11:
      v39 = v31;
      v40 = v22;
      goto LABEL_12;
    default:
      v23 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08AA0) + 48);
      sub_1BCAC8B38();
      (*(v45 + 32))(v10, &v22[v23], v46);
      type metadata accessor for SunCircularContentView();
      sub_1BCAC8B90();
      v24 = v44;
      v48 = *(v44 + 32);
      v48(v7, v16, v3);
      v25 = sub_1BCB69308();
      v26 = *(v24 + 8);
      v26(v7, v3);
      if (static Date.uses24HourTime()())
      {
        (*(v45 + 8))(v10, v46);
        sub_1BCAC890C(v19, type metadata accessor for SunriseSunsetEvent);
      }

      else
      {
        sub_1BCAC8B90();
        v42 = v43;
        v48(v43, v13, v3);
        Date.ampmSymbol(timeZone:)();
        v26(v42, v3);
        (*(v45 + 8))(v10, v46);
        v39 = type metadata accessor for SunriseSunsetEvent;
        v40 = v19;
LABEL_12:
        sub_1BCAC890C(v40, v39);
      }

      return v25;
  }
}

uint64_t sub_1BCAC6BE4@<X0>(_BYTE *a1@<X8>)
{
  v2 = sub_1BCE1D090();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v15[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v15[-v7];
  sub_1BCE1D080();
  v9 = sub_1BCE1BDF0();
  v16 = 0;
  sub_1BCAC6E54(__src);
  memcpy(v17, __src, sizeof(v17));
  memcpy(v18, __src, sizeof(v18));
  sub_1BC95DCE8();
  sub_1BCA5B44C(v18, &unk_1EBD08AD0);
  memcpy(&v15[7], v17, 0x78uLL);
  v10 = v16;
  v11 = *(v3 + 16);
  v11(v5, v8, v2);
  v11(a1, v5, v2);
  v12 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08AD8) + 48);
  v19[0] = v9;
  v19[1] = 0;
  LOBYTE(v19[2]) = v10;
  memcpy(&v19[2] + 1, v15, 0x7FuLL);
  memcpy(&a1[v12], v19, 0x90uLL);
  sub_1BC95DCE8();
  v13 = *(v3 + 8);
  v13(v8, v2);
  __src[0] = v9;
  __src[1] = 0;
  LOBYTE(__src[2]) = v10;
  memcpy(&__src[2] + 1, v15, 0x7FuLL);
  sub_1BCA5B44C(__src, &unk_1EBD08AE0);
  return (v13)(v5, v2);
}

uint64_t sub_1BCAC6E54@<X0>(uint64_t a1@<X8>)
{
  v42 = sub_1BCE1CBA0();
  v36 = objc_opt_self();
  v2 = [v36 systemFontOfSize_];
  v39 = sub_1BCE1C4A0();
  KeyPath = swift_getKeyPath();
  sub_1BC970820();
  v3 = sub_1BCE1C6A0();
  v5 = v4;
  v7 = v6;
  sub_1BCE1C320();
  sub_1BCE1C3C0();
  sub_1BCE1C400();

  v37 = sub_1BCE1C610();
  v38 = v8;
  v41 = v9;
  v11 = v10;

  sub_1BC998CF4(v3, v5, v7 & 1);

  if (qword_1EDA16948 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (byte_1EDA16950)
  {
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v16 = 1;
  }

  else
  {
    if (qword_1EDA16958 != -1)
    {
      swift_once();
    }

    v17 = [qword_1EDA16960 PMSymbol];
    if (v17)
    {
      v18 = v17;
      sub_1BCE1D280();

      v19 = sub_1BCE1C6A0();
      v21 = v20;
      v23 = v22;
      v24 = [v36 systemFontOfSize:11.0 weight:*MEMORY[0x1E69DB970]];
      sub_1BCE1C4A0();
      v12 = sub_1BCE1C610();
      v26 = v25;
      v28 = v27;
      v30 = v29;

      sub_1BC998CF4(v19, v21, v23 & 1);

      v14 = v28 & 1;
      sub_1BCA81D10(v12, v26, v14);

      v16 = v30;
      v13 = v26;
      v15 = 0xBFE0000000000000;
    }

    else
    {
      v12 = 0;
      v13 = 0;
      v14 = 0;
      v16 = 0;
      v15 = 0;
    }
  }

  v31 = v11 & 1;
  *a1 = v42;
  *(a1 + 8) = KeyPath;
  *(a1 + 16) = v39;
  *(a1 + 24) = xmmword_1BCE3A8A0;
  *(a1 + 40) = v37;
  *(a1 + 48) = v41;
  *(a1 + 56) = v11 & 1;
  *(a1 + 64) = v38;
  *(a1 + 72) = v12;
  *(a1 + 80) = v13;
  *(a1 + 88) = v14;
  *(a1 + 96) = v16;
  *(a1 + 104) = 0;
  *(a1 + 112) = v15;
  v32 = v12;
  v33 = v13;
  v34 = v16;

  sub_1BCA81D10(v37, v41, v31);

  sub_1BCAC8FA8(v32, v33, v14, v34);
  sub_1BCAC8FB8(v32, v33, v14, v34);
  sub_1BCAC8FB8(v32, v33, v14, v34);
  sub_1BC998CF4(v37, v41, v31);
}

uint64_t sub_1BCAC725C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X5>, char *a6@<X8>)
{
  v24[1] = a5;
  v26 = a6;
  v10 = sub_1BCE1D090();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = v24 - v15;
  sub_1BCE1D080();
  v25 = sub_1BCE1BDF0();
  v28 = 0;
  sub_1BCAC74F8(a1, a2, a3, a4, __src);
  memcpy(v29, __src, sizeof(v29));
  memcpy(v30, __src, 0x79uLL);
  sub_1BC95DCE8();
  sub_1BCA5B44C(v30, &unk_1EBD08AA8);
  memcpy(&v27[7], v29, 0x79uLL);
  v17 = v28;
  v18 = *(v11 + 16);
  v18(v13, v16, v10);
  v19 = v26;
  v18(v26, v13, v10);
  v20 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08AB0) + 48);
  v21 = v25;
  v31[0] = v25;
  v31[1] = 0;
  LOBYTE(v31[2]) = v17;
  memcpy(&v31[2] + 1, v27, 0x80uLL);
  memcpy(&v19[v20], v31, 0x91uLL);
  sub_1BC95DCE8();
  v22 = *(v11 + 8);
  v22(v16, v10);
  __src[0] = v21;
  __src[1] = 0;
  LOBYTE(__src[2]) = v17;
  memcpy(&__src[2] + 1, v27, 0x80uLL);
  sub_1BCA5B44C(__src, &unk_1EBD08AB8);
  return (v22)(v13, v10);
}

void *sub_1BCAC74F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v86 = a5;
  v9 = type metadata accessor for SunriseSunsetEvent();
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v84 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a4 && (sub_1BCAC7E60() & 1) != 0)
  {
    __dst[0] = a3;
    __dst[1] = a4;
    v95 = sub_1BC970820();

    v12 = sub_1BCE1C6A0();
    v14 = v13;
    v90 = a1;
    v16 = v15;
    v92 = objc_opt_self();
    v17 = [v92 systemFontOfSize:11.0 weight:*MEMORY[0x1E69DB970]];
    sub_1BCE1C4A0();
    v96 = sub_1BCE1C610();
    v93 = v18;
    v94 = v19;
    v21 = v20;

    sub_1BC998CF4(v12, v14, v16 & 1);

    __dst[0] = v90;
    __dst[1] = a2;

    v22 = sub_1BCE1C6A0();
    v24 = v23;
    LOBYTE(v12) = v25;
    sub_1BCE1C320();
    sub_1BCE1C3C0();
    sub_1BCE1C400();

    v26 = sub_1BCE1C610();
    v88 = v27;
    v89 = v26;
    LODWORD(v87) = v28;
    v90 = v29;

    sub_1BC998CF4(v22, v24, v12 & 1);

    SunComplicationViewModel.sunriseSunsetEvent.getter(v11);
    SunriseSunsetEvent.symbolIconName.getter();
    sub_1BCAC890C(v11, type metadata accessor for SunriseSunsetEvent);
    v95 = sub_1BCE1CBA0();
    v30 = [v92 systemFontOfSize_];
    v85 = sub_1BCE1C4A0();
    KeyPath = swift_getKeyPath();
    v91 = v21 & 1;
    v92 = KeyPath;
    LODWORD(v24) = v87 & 1;
    LOBYTE(v98[0]) = v87 & 1;
    v32 = v96;
    v33 = v93;
    LOBYTE(v12) = v21 & 1;
    sub_1BCA81D10(v96, v93, v21 & 1);
    v34 = v94;

    v35 = v88;
    sub_1BCA81D10(v26, v88, v24);
    v36 = v90;

    sub_1BCA81D20(v32, v33, v12, v34);
    v37 = v89;
    v38 = v35;
    LOBYTE(v14) = v24;
    sub_1BCA81D10(v89, v35, v24);

    v39 = v37;
    LODWORD(v87) = v24;
    sub_1BC998CF4(v37, v38, v24);

    v40 = v96;
    v41 = v91;
    sub_1BCA81D64(v96, v33, v91, v34);
    *&v99[0] = v40;
    *(&v99[0] + 1) = v33;
    *&v99[1] = v41;
    *(&v99[1] + 1) = v34;
    v99[2] = xmmword_1BCE4B5D0;
    *&v99[3] = v39;
    *(&v99[3] + 1) = v38;
    LOBYTE(v99[4]) = v14;
    *(&v99[4] + 1) = v36;
    *&v99[5] = v95;
    *(&v99[5] + 1) = v92;
    *&v99[6] = v85;
    *(&v99[6] + 8) = xmmword_1BCE3A8A0;
    sub_1BCAC8B30(v99);
    memcpy(__dst, v99, 0x79uLL);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08AC0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08AC8);
    sub_1BCA5B4A0(&qword_1EDA1B490, &qword_1EBD08AC0);
    sub_1BCA5B4A0(&qword_1EDA1B480, &qword_1EBD08AC8);
    sub_1BCE1BF60();

    sub_1BC998CF4(v89, v38, v87);

    sub_1BC998CF4(v96, v93, v91);
  }

  else
  {
    v92 = a3;
    SunComplicationViewModel.sunriseSunsetEvent.getter(v11);
    SunriseSunsetEvent.symbolIconName.getter();
    sub_1BCAC890C(v11, type metadata accessor for SunriseSunsetEvent);
    v96 = sub_1BCE1CBA0();
    v89 = objc_opt_self();
    v42 = [v89 systemFontOfSize_];
    v95 = sub_1BCE1C4A0();
    v91 = swift_getKeyPath();
    __dst[0] = a1;
    __dst[1] = a2;
    sub_1BC970820();

    v43 = sub_1BCE1C6A0();
    v45 = v44;
    v47 = v46;
    sub_1BCE1C320();
    sub_1BCE1C3C0();
    sub_1BCE1C400();

    v48 = sub_1BCE1C610();
    v93 = v49;
    v94 = v48;
    v51 = v50;
    v90 = v52;

    sub_1BC998CF4(v43, v45, v47 & 1);

    if (a4)
    {
      __dst[0] = v92;
      __dst[1] = a4;

      v53 = sub_1BCE1C6A0();
      v55 = v54;
      v57 = v56;
      v58 = [v89 systemFontOfSize:11.0 weight:*MEMORY[0x1E69DB970]];
      sub_1BCE1C4A0();
      a4 = sub_1BCE1C610();
      v60 = v59;
      v62 = v61;
      v92 = v63;

      sub_1BC998CF4(v53, v55, v57 & 1);

      v64 = v62 & 1;
      v65 = 0xBFE0000000000000;
    }

    else
    {
      v60 = 0;
      v64 = 0;
      v92 = 0;
      v65 = 0;
    }

    v66 = v51 & 1;
    v97[128] = v51 & 1;

    v67 = v91;

    LODWORD(v89) = v51 & 1;
    sub_1BCA81D10(v94, v93, v51 & 1);
    v68 = v90;

    v88 = a4;
    v69 = a4;
    v84 = v60;
    v70 = v64;
    v71 = v64;
    v72 = v92;
    sub_1BCA81D20(v69, v60, v71, v92);

    v73 = v67;

    v75 = v93;
    v74 = v94;
    sub_1BCA81D10(v94, v93, v66);

    v76 = v88;
    v85 = v70;
    v87 = v65;
    sub_1BCA81D20(v88, v60, v70, v72);
    sub_1BCA81D64(v76, v60, v70, v72);
    v77 = v74;
    v78 = v74;
    v79 = v75;
    LOBYTE(v74) = v89;
    sub_1BC998CF4(v77, v75, v89);
    v80 = v95;

    v81 = v96;

    *&v99[0] = v81;
    *(&v99[0] + 1) = v73;
    *(&v99[1] + 8) = xmmword_1BCE3A8A0;
    *&v99[1] = v80;
    *(&v99[2] + 1) = v78;
    *&v99[3] = v79;
    BYTE8(v99[3]) = v74;
    *(&v99[3] + 9) = v98[0];
    HIDWORD(v99[3]) = *(v98 + 3);
    v82 = v88;
    *&v99[4] = v68;
    *(&v99[4] + 1) = v88;
    LOBYTE(v80) = v85;
    *&v99[5] = v60;
    *(&v99[5] + 1) = v85;
    v99[6] = v72;
    *&v99[7] = v87;
    sub_1BCAC8B24(v99);
    memcpy(__dst, v99, 0x79uLL);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08AC0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08AC8);
    sub_1BCA5B4A0(&qword_1EDA1B490, &qword_1EBD08AC0);
    sub_1BCA5B4A0(&qword_1EDA1B480, &qword_1EBD08AC8);
    sub_1BCE1BF60();
    sub_1BCA81D64(v82, v84, v80, v92);
    sub_1BC998CF4(v94, v93, v89);
  }

  memcpy(__dst, v97, 0x79uLL);
  return memcpy(v86, __dst, 0x79uLL);
}

uint64_t sub_1BCAC7E60()
{
  v1 = type metadata accessor for SunComplicationViewModel();
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BCAC8B90();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v5 = type metadata accessor for SunriseSunsetEvent;
  if ((EnumCaseMultiPayload - 1) >= 2)
  {
    if (EnumCaseMultiPayload)
    {
      v6 = 0;
      v5 = type metadata accessor for SunComplicationViewModel;
    }

    else
    {
      v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08AA0) + 48);
      v6 = *(v0 + *(type metadata accessor for SunCircularContentView() + 28));
      v8 = sub_1BCE19470();
      (*(*(v8 - 8) + 8))(&v3[v7], v8);
      v5 = type metadata accessor for SunriseSunsetEvent;
    }
  }

  else
  {
    v6 = 0;
  }

  sub_1BCAC890C(v3, v5);
  return v6;
}

uint64_t sub_1BCAC7FC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a5)
  {
    if (sub_1BCAC7E60())
    {
      v12 = a4;

      MEMORY[0x1BFB2FB00](32, 0xE100000000000000);
      v9 = a2;
      v10 = a3;
    }

    else
    {
      v12 = a2;

      MEMORY[0x1BFB2FB00](32, 0xE100000000000000);
      v9 = a4;
      v10 = a5;
    }

    MEMORY[0x1BFB2FB00](v9, v10);
    return v12;
  }

  else
  {
  }

  return a2;
}

uint64_t sub_1BCAC8084(uint64_t a1, unint64_t a2)
{

  v4 = sub_1BCAC81F4(0x7FFFFFFFFFFFFFFFLL, 1u, a1, a2);
  v5 = v4;
  v6 = v4[2];
  if (v6 != 2)
  {
    if (v6 == 1)
    {
      v7 = v4[4];
      v8 = v4[5];
      v9 = v4[6];
      v10 = v4[7];

      v11 = MEMORY[0x1BFB2FA90](v7, v8, v9, v10);
    }

    else
    {

      return 11565;
    }

    return v11;
  }

  v12 = v4[4];
  v13 = v4[5];
  v14 = v4[6];
  v15 = v4[7];

  v11 = MEMORY[0x1BFB2FA90](v12, v13, v14, v15);

  if (v5[2] >= 2uLL)
  {
    v17 = v5[8];
    v18 = v5[9];
    v19 = v5[10];
    v20 = v5[11];

    MEMORY[0x1BFB2FA90](v17, v18, v19, v20);

    return v11;
  }

  __break(1u);
  return result;
}

unint64_t sub_1BCAC81F4(uint64_t a1, unsigned __int8 a2, uint64_t a3, unint64_t a4)
{
  if (a1 < 0)
  {
    __break(1u);
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  v6 = a4;
  v7 = a3;
  v10 = HIBYTE(a4) & 0xF;
  if (a1)
  {
    v11 = (a4 & 0x2000000000000000) != 0 ? HIBYTE(a4) & 0xF : a3 & 0xFFFFFFFFFFFFLL;
    if (v11)
    {
      v12 = 4 * v11;
      v46 = MEMORY[0x1E69E7CC0];
      v13 = 15;
      v5 = 4294959064;
LABEL_8:
      for (i = v13; ; i = sub_1BCE1D390())
      {
        v9 = i >> 14;
        if (i >> 14 == v12)
        {
          break;
        }

        v15 = sub_1BCE1D470();
        v8 = v16;
        result = sub_1BCAC8BE8(v15, v16);
        if ((result & 0x100000000) != 0)
        {
          __break(1u);
          return result;
        }

        v18 = result;

        v19 = (v18 - 14) <= 0xFFFFFFFB && (v18 - 8232) >= 2;
        if (!v19 || v18 == 133)
        {
          v4 = (v13 >> 14 == v9) & a2;
          if (v4 != 1)
          {
            if (v9 < v13 >> 14)
            {
              goto LABEL_45;
            }

            v20 = sub_1BCE1D4A0();
            v42 = v22;
            v43 = v21;
            v44 = v23;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              sub_1BCB659F4();
              v46 = v25;
            }

            v8 = *(v46 + 16);
            v9 = v8 + 1;
            if (v8 >= *(v46 + 24) >> 1)
            {
              sub_1BCB659F4();
              v46 = v26;
            }

            *(v46 + 16) = v9;
            v24 = (v46 + 32 * v8);
            v24[4] = v20;
            v24[5] = v44;
            v24[6] = v43;
            v24[7] = v42;
          }

          v13 = sub_1BCE1D390();
          if ((v4 & 1) != 0 || *(v46 + 16) != a1)
          {
            goto LABEL_8;
          }

          break;
        }
      }

      if (v13 >> 14 == v12 && (a2 & 1) != 0)
      {

        return v46;
      }

      if (v12 < v13 >> 14)
      {
        __break(1u);
      }

      else
      {
        v7 = sub_1BCE1D4A0();
        v8 = v33;
        v9 = v34;
        v12 = v35;

        v27 = v46;
        if (swift_isUniquelyReferenced_nonNull_native())
        {
LABEL_40:
          v36 = *(v27 + 16);
          if (v36 >= *(v27 + 24) >> 1)
          {
            sub_1BCB659F4();
            v27 = v40;
          }

          *(v27 + 16) = v36 + 1;
          v37 = (v27 + 32 * v36);
          v37[4] = v7;
          v37[5] = v8;
          v37[6] = v9;
          v37[7] = v12;
          return v27;
        }
      }

      sub_1BCB659F4();
      v27 = v39;
      goto LABEL_40;
    }
  }

  if ((a4 & 0x2000000000000000) == 0)
  {
    v10 = a3 & 0xFFFFFFFFFFFFLL;
  }

  if (v10 || (a2 & 1) == 0)
  {
    v4 = sub_1BCE1D4A0();
    v7 = v28;
    v8 = v29;
    v9 = v30;

    sub_1BCB659F4();
    v27 = v31;
    v5 = *(v31 + 16);
    v6 = v5 + 1;
    if (v5 < *(v31 + 24) >> 1)
    {
LABEL_37:
      *(v27 + 16) = v6;
      v32 = (v27 + 32 * v5);
      v32[4] = v4;
      v32[5] = v7;
      v32[6] = v8;
      v32[7] = v9;
      return v27;
    }

LABEL_46:
    sub_1BCB659F4();
    v27 = v38;
    goto LABEL_37;
  }

  return MEMORY[0x1E69E7CC0];
}

uint64_t sub_1BCAC85E4(uint64_t a1)
{
  sub_1BCE1B850();
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_2_0();
  (*(v5 + 16))(v4 - v3, a1);
  return sub_1BCE1BA10();
}

uint64_t type metadata accessor for SunCircularContentView()
{
  result = qword_1EDA19AB8;
  if (!qword_1EDA19AB8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1BCAC8714()
{
  result = qword_1EDA1BA38;
  if (!qword_1EDA1BA38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD08A80);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD08A70);
    sub_1BCA5B4A0(&qword_1EDA1B4E0, &qword_1EBD08A70);
    swift_getOpaqueTypeConformance2();
    sub_1BC99B7FC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA1BA38);
  }

  return result;
}

unint64_t sub_1BCAC8810()
{
  result = qword_1EDA1BA30;
  if (!qword_1EDA1BA30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD08A50);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD08A40);
    sub_1BCA5B4A0(&qword_1EDA1B4D8, &qword_1EBD08A40);
    swift_getOpaqueTypeConformance2();
    sub_1BC99B7FC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA1BA30);
  }

  return result;
}

uint64_t sub_1BCAC890C(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_4();
  (*(v3 + 8))(a1);
  return a1;
}

void sub_1BCAC89A8()
{
  sub_1BCAC8A4C();
  if (v0 <= 0x3F)
  {
    type metadata accessor for SunComplicationDataStatus();
    if (v1 <= 0x3F)
    {
      type metadata accessor for WidgetDateFormatter();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1BCAC8A4C()
{
  if (!qword_1EDA1BC08)
  {
    sub_1BCE1B850();
    v0 = sub_1BCE1B4F0();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDA1BC08);
    }
  }
}

uint64_t sub_1BCAC8AA4(unint64_t *a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    v7 = OUTLINED_FUNCTION_14_2(0, a2);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v7);
    a4();
    sub_1BCAC8810();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1BCAC8B38()
{
  OUTLINED_FUNCTION_9();
  v1(0);
  OUTLINED_FUNCTION_4();
  v2 = OUTLINED_FUNCTION_10_1();
  v3(v2);
  return v0;
}

uint64_t sub_1BCAC8B90()
{
  OUTLINED_FUNCTION_9();
  v1(0);
  OUTLINED_FUNCTION_4();
  v2 = OUTLINED_FUNCTION_10_1();
  v3(v2);
  return v0;
}

unint64_t sub_1BCAC8BE8(unint64_t a1, unint64_t a2)
{
  if ((a2 & 0x2000000000000000) != 0)
  {
    v2 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v2)
  {
    v5 = sub_1BCAC8D7C(0xFuLL, a1, a2);
    if ((a2 & 0x1000000000000000) != 0)
    {
      v10 = sub_1BCE1DD40();
    }

    else
    {
      v6 = v5 >> 16;
      if ((a2 & 0x2000000000000000) != 0)
      {
        v17[0] = a1;
        v17[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        v8 = v17 + v6;
        v10 = *(v17 + v6);
        if (*(v17 + v6) < 0)
        {
          switch(__clz(v10 ^ 0xFF))
          {
            case 0x1Au:
LABEL_14:
              v10 = v8[1] & 0x3F | ((v10 & 0x1F) << 6);
              break;
            case 0x1Bu:
LABEL_15:
              v11 = v8[1];
              v12 = v8[2];
              v13 = ((v10 & 0xF) << 12) | ((v11 & 0x3F) << 6);
              goto LABEL_17;
            case 0x1Cu:
LABEL_16:
              v14 = v8[1];
              v15 = v8[2];
              v12 = v8[3];
              v13 = ((v10 & 0xF) << 18) | ((v14 & 0x3F) << 12) | ((v15 & 0x3F) << 6);
LABEL_17:
              v10 = v13 & 0xFFFFFFC0 | v12 & 0x3F;
              break;
            default:
              break;
          }
        }
      }

      else
      {
        if ((a1 & 0x1000000000000000) != 0)
        {
          v7 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
        }

        else
        {
          v7 = sub_1BCE1DDA0();
        }

        v8 = (v7 + v6);
        v9 = *(v7 + v6);
        v10 = *(v7 + v6);
        if (v9 < 0)
        {
          switch(__clz(v10 ^ 0xFF))
          {
            case 0x1Au:
              goto LABEL_14;
            case 0x1Bu:
              goto LABEL_15;
            case 0x1Cu:
              goto LABEL_16;
            default:
              break;
          }
        }
      }
    }
  }

  else
  {
    v10 = 0;
  }

  LOBYTE(v17[0]) = v2 == 0;
  return v10 | ((v2 == 0) << 32);
}

unint64_t sub_1BCAC8D7C(unint64_t result, unint64_t a2, unint64_t a3)
{
  v5 = (a2 >> 59) & 1;
  if ((a3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v5) = 1;
  }

  if ((result & 1) == 0 || (result & 0xC) == 4 << v5)
  {
    goto LABEL_9;
  }

  v6 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v6 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v6 <= result >> 16)
  {
    __break(1u);
LABEL_9:
    result = sub_1BCAC8E1C(result, a2, a3);
    if ((result & 1) == 0)
    {
      return result & 0xC | sub_1BCAC8E8C(result, a2, a3) & 0xFFFFFFFFFFFFFFF3 | 1;
    }
  }

  return result;
}

unint64_t sub_1BCAC8E1C(unint64_t result, unint64_t a2, unint64_t a3)
{
  v5 = (a2 >> 59) & 1;
  if ((a3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v5) = 1;
  }

  if ((result & 0xC) == 4 << v5)
  {
    result = sub_1BCBD94EC(result, a2, a3);
  }

  v6 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v6 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v6 <= result >> 16)
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_1BCAC8E8C(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0xC000) != 0 || result < 0x10000)
  {
    result &= 0xFFFFFFFFFFFF0000;
  }

  else
  {
    v5 = result >> 16;
    if ((a3 & 0x1000000000000000) == 0)
    {
      v13[2] = v3;
      v13[3] = v4;
      if ((a3 & 0x2000000000000000) != 0)
      {
        v13[0] = a2;
        v13[1] = a3 & 0xFFFFFFFFFFFFFFLL;
        if (v5 != (HIBYTE(a3) & 0xF) && (*(v13 + v5) & 0xC0) == 0x80)
        {
          do
          {
            v8 = v5 - 1;
            v11 = *(&v12 + v5-- + 7) & 0xC0;
          }

          while (v11 == 128);
          return v8 << 16;
        }
      }

      else
      {
        if ((a2 & 0x1000000000000000) != 0)
        {
          v6 = (a3 & 0xFFFFFFFFFFFFFFFLL) + 32;
          v7 = a2 & 0xFFFFFFFFFFFFLL;
        }

        else
        {
          v12 = result >> 16;
          v6 = sub_1BCE1DDA0();
          v5 = v12;
        }

        if (v5 != v7 && (*(v6 + v5) & 0xC0) == 0x80)
        {
          do
          {
            v8 = v5 - 1;
            v9 = *(v6 - 1 + v5--) & 0xC0;
          }

          while (v9 == 128);
          return v8 << 16;
        }
      }

      v8 = v5;
      return v8 << 16;
    }

    v10 = HIBYTE(a3) & 0xF;
    if ((a3 & 0x2000000000000000) == 0)
    {
      v10 = a2 & 0xFFFFFFFFFFFFLL;
    }

    if (v5 != v10)
    {

      return MEMORY[0x1EEE6A340]();
    }
  }

  return result;
}

uint64_t sub_1BCAC8FA8(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4 != 1)
  {
    return sub_1BCA81D20(result, a2, a3, a4);
  }

  return result;
}

uint64_t sub_1BCAC8FB8(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4 != 1)
  {
    return sub_1BCA81D64(result, a2, a3, a4);
  }

  return result;
}

double sub_1BCAC8FC8@<D0>(uint64_t a1@<X8>)
{
  v2 = (a1 + 1436);
  sub_1BCA836C8();
  v4 = v3;
  sub_1BCA836C8();
  *a1 = 0x4006666666666666;
  *(a1 + 8) = 5;
  *(a1 + 16) = 0x3FF0000000000000;
  *(a1 + 24) = 48;
  *(a1 + 32) = xmmword_1BCE3BED0;
  *(a1 + 48) = xmmword_1BCE3BED0;
  *(a1 + 64) = 0x42DC000042480000;
  *(a1 + 72) = 0xC42F000000000000;
  *(a1 + 80) = xmmword_1BCE3E630;
  *(a1 + 96) = xmmword_1BCE4B770;
  *(a1 + 112) = 0x3F4CCCCD3F19999ALL;
  *(a1 + 128) = xmmword_1BCE3C7C0;
  *(a1 + 144) = xmmword_1BCE3F430;
  *(a1 + 160) = xmmword_1BCE40300;
  *(a1 + 176) = 1156005888;
  *(a1 + 184) = 0x3F19999A3E99999ALL;
  *(a1 + 192) = xmmword_1BCE465E0;
  *(a1 + 208) = xmmword_1BCE40320;
  *(a1 + 224) = xmmword_1BCE3C660;
  *(a1 + 240) = 0x4140000040A00000;
  *(a1 + 248) = 1132068864;
  *(a1 + 256) = 0x3E4CCCCD3DE147AELL;
  *(a1 + 264) = 0x40A0000041700000;
  *(a1 + 272) = 1101004800;
  __asm { FMOV            V1.4S, #1.0 }

  *(a1 + 288) = xmmword_1BCE3C7C0;
  *(a1 + 304) = _Q1;
  *(a1 + 320) = 0x4348000040C00000;
  *(a1 + 328) = 0x3E99999A3E19999ALL;
  *(a1 + 336) = 0x3F00000040A00000;
  *(a1 + 352) = xmmword_1BCE3C7C0;
  *(a1 + 368) = xmmword_1BCE3C700;
  *(a1 + 384) = 0;
  *(a1 + 388) = 0x3CA3D70A3F800000;
  *(a1 + 400) = xmmword_1BCE3BF20;
  *(a1 + 416) = 0x3F0000003F000000;
  *(a1 + 424) = 10;
  *(a1 + 432) = xmmword_1BCE3BF30;
  *(a1 + 448) = 0x3E4CCCCD3DCCCCCDLL;
  *(a1 + 464) = _Q1;
  *(a1 + 480) = xmmword_1BCE3D870;
  *(a1 + 496) = 0x43FA000040400000;
  *(a1 + 504) = 1116471296;
  *(a1 + 512) = 0x3E8000003DF5C28FLL;
  *(a1 + 528) = _Q1;
  *(a1 + 544) = _Q1;
  *(a1 + 560) = 0x4248000044BB8000;
  *(a1 + 568) = 0x3E4CCCCD3DA3D70ALL;
  *(a1 + 576) = xmmword_1BCE3C700;
  *(a1 + 592) = xmmword_1BCE3D880;
  *(a1 + 608) = 0x40E0000040C00000;
  *(a1 + 624) = xmmword_1BCE3C700;
  *(a1 + 640) = xmmword_1BCE3D880;
  *(a1 + 656) = 0x4220000041200000;
  *(a1 + 664) = 0x3FC000003E99999ALL;
  *(a1 + 672) = 0x40C0000040400000;
  *(a1 + 688) = _Q1;
  *(a1 + 704) = 1065353216;
  *(a1 + 712) = 0x3F0000003E99999ALL;
  *(a1 + 720) = 0x41963C6A413D851FLL;
  *(a1 + 728) = 3189390797;
  *(a1 + 736) = 1;
  *(a1 + 744) = 4;
  *(a1 + 752) = xmmword_1BCE3E0A0;
  *(a1 + 768) = 0x617274736F746C41;
  *(a1 + 776) = 0xEF4C202D20737574;
  *(a1 + 784) = 0xD000000000000013;
  *(a1 + 792) = 0x80000001BCE798E0;
  *(a1 + 800) = 6;
  *(a1 + 816) = _Q1;
  *(a1 + 832) = 1065353216;
  *(a1 + 840) = 0x3F19999A3ECCCCCDLL;
  *(a1 + 848) = 0x4180CCCD41380000;
  *(a1 + 856) = 1081738482;
  *(a1 + 864) = 1;
  *(a1 + 872) = 4;
  *(a1 + 880) = xmmword_1BCE3E0B0;
  *(a1 + 896) = 0x2073756C756D7543;
  *(a1 + 904) = 0xEB000000004C202DLL;
  *(a1 + 912) = 0x5F73756C756D7543;
  *(a1 + 920) = 0xEF4C656C676E6953;
  *(a1 + 928) = 5;
  *(a1 + 944) = _Q1;
  *(a1 + 960) = 1065353216;
  *(a1 + 968) = 0x3F8000003F4CCCCDLL;
  *(a1 + 976) = 0x411333334100CCCDLL;
  *(a1 + 984) = 3220386611;
  *(a1 + 992) = 1;
  *(a1 + 1000) = 4;
  *(a1 + 1008) = xmmword_1BCE3C6F0;
  *(a1 + 1024) = 0x2073756C756D7543;
  *(a1 + 1032) = 0xEB0000000053202DLL;
  *(a1 + 1040) = 0x5F73756C756D7543;
  *(a1 + 1048) = 0xEF53656C676E6953;
  *(a1 + 1056) = 5;
  *(a1 + 1072) = _Q1;
  *(a1 + 1088) = 1065353216;
  *(a1 + 1096) = 0x3FC000003F000000;
  *(a1 + 1104) = 0x40B8000040933333;
  *(a1 + 1112) = 1089281721;
  *(a1 + 1120) = 0;
  *(a1 + 1128) = 4;
  *(a1 + 1136) = xmmword_1BCE3D8A0;
  *(a1 + 1152) = 0x7970736957;
  *(a1 + 1160) = 0xE500000000000000;
  strcpy((a1 + 1168), "Wispy_Single");
  *(a1 + 1181) = 0;
  *(a1 + 1182) = -5120;
  *(a1 + 1184) = 6;
  *(a1 + 1200) = xmmword_1BCE465F0;
  *(a1 + 1216) = xmmword_1BCE4B780;
  *(a1 + 1232) = 0;
  *(a1 + 1236) = 1;
  *(a1 + 1240) = 0xD000000000000010;
  *(a1 + 1248) = 0x80000001BCE798A0;
  *(a1 + 1256) = 0xD000000000000015;
  *(a1 + 1264) = 0x80000001BCE798C0;
  *(a1 + 1272) = 6;
  *(a1 + 1280) = 0;
  *(a1 + 1288) = 0x3FAA3D703F88F5C2;
  *(a1 + 1296) = 0x41A0000042B40000;
  *(a1 + 1304) = 0;
  *(a1 + 1312) = _Q1;
  *(a1 + 1328) = _Q1;
  *(a1 + 1344) = 0;
  *(a1 + 1352) = 0x40000000;
  *(a1 + 1360) = 0;
  *(a1 + 1368) = 2;
  *(a1 + 1408) = 0u;
  *(a1 + 1392) = 0u;
  *(a1 + 1376) = 0u;
  *(a1 + 1424) = 0x3F99999A3ECCCCCDLL;
  *(a1 + 1432) = 1;
  *v2 = xmmword_1BCE3BFC0;
  *(a1 + 1456) = 0x42DC000042B40000;
  *(a1 + 1472) = _Q1;
  *(a1 + 1488) = _Q1;
  *(a1 + 1504) = 1097859072;
  *(a1 + 1512) = 0x736168506E6F6F6DLL;
  *(a1 + 1520) = 0xEA00000000003065;
  *(a1 + 1528) = 1112014848;
  *(a1 + 1536) = _Q1;
  *(a1 + 1552) = xmmword_1BCE3F4F0;
  *(a1 + 1568) = 0x4248000042200000;
  *(a1 + 1584) = 0u;
  *(a1 + 1600) = xmmword_1BCE3D880;
  __asm { FMOV            V2.2S, #-30.0 }

  *(a1 + 1616) = -_D2;
  *(a1 + 1624) = 0x40000000;
  *(a1 + 1632) = 257;
  *(a1 + 1642) = 0;
  *(a1 + 1634) = 0;
  *(a1 + 1644) = 16842753;
  *(a1 + 1656) = 0;
  *(a1 + 1648) = 0;
  *(a1 + 1652) = 0;
  *(a1 + 1657) = v13;
  *(a1 + 1659) = v14;
  *(a1 + 1660) = 1061980996;
  *(a1 + 1664) = 0x4160000041200000;
  *(a1 + 1672) = 3;
  *(a1 + 1680) = xmmword_1BCE46610;
  *(a1 + 1696) = xmmword_1BCE46620;
  *(a1 + 1712) = xmmword_1BCE46CB0;
  *(a1 + 1728) = 0x3F0000003EB33333;
  *(a1 + 1736) = 0x3ECCCCCD47FDE800;
  *(a1 + 1744) = 0u;
  *(a1 + 1760) = 10;
  *(a1 + 1776) = xmmword_1BCE3D8B0;
  *(a1 + 1792) = xmmword_1BCE3D8C0;
  *(a1 + 1808) = xmmword_1BCE3C7A0;
  *(a1 + 1824) = 1;
  *(a1 + 1828) = xmmword_1BCE3C060;
  *(a1 + 1844) = 1040187392;
  *(a1 + 1848) = 0x4100000041700000;
  *(a1 + 1856) = 3;
  *(a1 + 1864) = 0x40000000;
  *(a1 + 1872) = 0x408000003F400000;
  *(a1 + 1880) = 1109393408;
  *(a1 + 1888) = _Q1;
  *(a1 + 1904) = 0x3DCCCCCD00000000;
  *(a1 + 1912) = 1101004800;
  *(a1 + 1920) = 0;
  *(a1 + 1928) = 1107820544;
  *(a1 + 1936) = _Q1;
  *(a1 + 1952) = 1077936128;
  *(a1 + 1960) = 0x420C000041C80000;
  *(a1 + 1968) = xmmword_1BCE46640;
  *(a1 + 1984) = 0x3F80000000000000;
  *(a1 + 1992) = 1061158912;
  *(a1 + 2000) = 0x407333333FB33333;
  *(a1 + 2008) = 0x408000004019999ALL;
  *(a1 + 2016) = xmmword_1BCE3C7E0;
  *(a1 + 2096) = 0u;
  *(a1 + 2080) = 0u;
  *(a1 + 2064) = 0u;
  *(a1 + 2048) = 0u;
  *(a1 + 2032) = 0u;
  *(a1 + 2112) = 1056964608;
  *(a1 + 2120) = 0x3F19999A3E99999ALL;
  *(a1 + 2128) = 0x3F8CCCCD3F400000;
  *(a1 + 2136) = 0x4160000041200000;
  *(a1 + 2144) = -1038575712;
  *(a1 + 2160) = _Q1;
  *(a1 + 2176) = _Q1;
  *(a1 + 2192) = 1056284935;
  *(a1 + 2200) = 8;
  *(a1 + 2208) = 0x417000003F666666;
  *(a1 + 2224) = xmmword_1BCE4AA50;
  result = 2.00000047;
  *(a1 + 2240) = xmmword_1BCE4B790;
  *(a1 + 2256) = _Q1;
  *(a1 + 2304) = 0;
  *(a1 + 2288) = 0u;
  *(a1 + 2272) = 0u;
  *(a1 + 2312) = v4;
  *(a1 + 2320) = v12;
  return result;
}

void sub_1BCAC9780(uint64_t a1@<X8>)
{
  v2 = a1 + 1436;
  sub_1BCA1298C();
  v4 = v3;
  sub_1BCA1298C();
  *a1 = 0x4006666666666666;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0x3FF0000000000000;
  *(a1 + 24) = 30;
  *(a1 + 32) = xmmword_1BCE3BED0;
  *(a1 + 48) = xmmword_1BCE3BED0;
  *(a1 + 64) = 0x42DC000042480000;
  *(a1 + 72) = 0xC416000000000000;
  *(a1 + 80) = xmmword_1BCE43900;
  *(a1 + 96) = xmmword_1BCE3BEF0;
  *(a1 + 112) = 0x3E8000003DF5C28FLL;
  __asm { FMOV            V0.4S, #1.0 }

  *(a1 + 128) = _Q0;
  *(a1 + 144) = _Q0;
  *(a1 + 160) = xmmword_1BCE3BF00;
  *(a1 + 176) = 1153138688;
  *(a1 + 184) = 0x3E4CCCCD3DA3D70ALL;
  *(a1 + 192) = _Q0;
  *(a1 + 208) = _Q0;
  *(a1 + 224) = xmmword_1BCE3C660;
  *(a1 + 240) = 0x4140000040A00000;
  *(a1 + 248) = 1132068864;
  *(a1 + 256) = 0x3E4CCCCD3DE147AELL;
  *(a1 + 264) = 0x40A0000041700000;
  *(a1 + 272) = 1101004800;
  *(a1 + 288) = _Q0;
  *(a1 + 304) = _Q0;
  *(a1 + 320) = 0x4348000040C00000;
  *(a1 + 328) = 0x3E99999A3E19999ALL;
  *(a1 + 336) = 0x3F00000040A00000;
  *(a1 + 352) = _Q0;
  *(a1 + 368) = _Q0;
  *(a1 + 384) = 0;
  *(a1 + 388) = 0x3CA3D70A3EC1C9A8;
  *(a1 + 400) = xmmword_1BCE3BF20;
  *(a1 + 416) = 0x3F0000003F000000;
  *(a1 + 424) = 10;
  *(a1 + 432) = xmmword_1BCE3BF30;
  *(a1 + 448) = 0x3E4CCCCD3DCCCCCDLL;
  *(a1 + 464) = _Q0;
  *(a1 + 480) = _Q0;
  *(a1 + 496) = 0x43FA000040400000;
  *(a1 + 504) = 1116471296;
  *(a1 + 512) = 0x3E8000003DF5C28FLL;
  *(a1 + 528) = _Q0;
  *(a1 + 544) = _Q0;
  *(a1 + 560) = 0x4248000044BB8000;
  *(a1 + 568) = 0x3E4CCCCD3DA3D70ALL;
  *(a1 + 576) = _Q0;
  *(a1 + 592) = _Q0;
  *(a1 + 608) = 0x4100000040A00000;
  *(a1 + 624) = _Q0;
  *(a1 + 640) = _Q0;
  *(a1 + 656) = 0x4220000041200000;
  *(a1 + 664) = 0x3FC000003E99999ALL;
  *(a1 + 672) = 0x40A000003F800000;
  *(a1 + 688) = _Q0;
  *(a1 + 704) = 1065353216;
  *(a1 + 712) = 0x3F8000003F000000;
  *(a1 + 720) = 0x400000003FC00000;
  *(a1 + 728) = 0;
  *(a1 + 736) = 1;
  *(a1 + 744) = 4;
  *(a1 + 752) = xmmword_1BCE3BF40;
  *(a1 + 768) = 0x617274736F746C41;
  *(a1 + 776) = 0xEF53202D20737574;
  *(a1 + 784) = 0xD000000000000013;
  *(a1 + 792) = 0x80000001BCE792E0;
  *(a1 + 800) = 6;
  *(a1 + 816) = xmmword_1BCE3F000;
  *(a1 + 832) = 1077936128;
  *(a1 + 840) = vdup_n_s32(0x3F333333u);
  *(a1 + 848) = 0x41E0000041D00000;
  *(a1 + 856) = 3227099184;
  *(a1 + 864) = 0;
  *(a1 + 872) = 4;
  *(a1 + 880) = xmmword_1BCE48800;
  *(a1 + 896) = 0x7970736957;
  *(a1 + 904) = 0xE500000000000000;
  strcpy((a1 + 912), "Wispy_Single");
  *(a1 + 925) = 0;
  *(a1 + 926) = -5120;
  *(a1 + 928) = 6;
  *(a1 + 944) = xmmword_1BCE3F010;
  *(a1 + 960) = 1077936128;
  *(a1 + 968) = vdup_n_s32(0x3F666666u);
  *(a1 + 976) = 0x4170000041500000;
  *(a1 + 984) = 3229822808;
  *(a1 + 992) = 0;
  *(a1 + 1000) = 4;
  *(a1 + 1008) = xmmword_1BCE48810;
  *(a1 + 1024) = 0x7970736957;
  *(a1 + 1032) = 0xE500000000000000;
  strcpy((a1 + 1040), "Wispy_Single");
  *(a1 + 1053) = 0;
  *(a1 + 1054) = -5120;
  *(a1 + 1056) = 6;
  *(a1 + 1072) = xmmword_1BCE3F030;
  *(a1 + 1088) = 1077936128;
  *(a1 + 1096) = vdup_n_s32(0x3F933333u);
  __asm { FMOV            V2.2S, #6.0 }

  *(a1 + 1104) = _D2;
  *(a1 + 1112) = 1063800384;
  *(a1 + 1120) = 0;
  *(a1 + 1128) = 3;
  *(a1 + 1136) = xmmword_1BCE48820;
  *(a1 + 1152) = 0x7970736957;
  *(a1 + 1160) = 0xE500000000000000;
  strcpy((a1 + 1168), "Wispy_Single");
  *(a1 + 1181) = 0;
  *(a1 + 1182) = -5120;
  *(a1 + 1184) = 6;
  *(a1 + 1200) = _Q0;
  *(a1 + 1216) = xmmword_1BCE3BFA0;
  *(a1 + 1232) = 0;
  *(a1 + 1236) = 1;
  *(a1 + 1240) = 0x617274736F746C41;
  *(a1 + 1248) = 0xEB00000000737574;
  *(a1 + 1256) = 0xD000000000000013;
  *(a1 + 1264) = 0x80000001BCE79300;
  *(a1 + 1272) = 8;
  *(a1 + 1280) = 0;
  *(a1 + 1288) = 0x400000003F800000;
  *(a1 + 1296) = 0x41C8000042C80000;
  *(a1 + 1304) = 0;
  *(a1 + 1312) = _Q0;
  *(a1 + 1328) = _Q0;
  *(a1 + 1344) = 0;
  *(a1 + 1352) = 0x40000000;
  *(a1 + 1360) = 0;
  *(a1 + 1368) = 1;
  *(a1 + 1376) = _Q0;
  *(a1 + 1392) = xmmword_1BCE3BFB0;
  *(a1 + 1408) = _Q0;
  *(a1 + 1424) = 0x3F99999A3ECCCCCDLL;
  *(a1 + 1432) = 1;
  *v2 = xmmword_1BCE3BFC0;
  *(a1 + 1456) = 0x42DC000042B40000;
  *(a1 + 1472) = _Q0;
  *(a1 + 1488) = _Q0;
  *(a1 + 1504) = 1097859072;
  *(a1 + 1512) = 0x736168506E6F6F6DLL;
  *(a1 + 1520) = 0xEA00000000003065;
  *(a1 + 1528) = 1112014848;
  *(a1 + 1536) = _Q0;
  *(a1 + 1552) = xmmword_1BCE3BFD0;
  *(a1 + 1568) = 0x42B5FAE142458F5CLL;
  *(a1 + 1584) = xmmword_1BCE3BFE0;
  *(a1 + 1600) = xmmword_1BCE3BFF0;
  __asm { FMOV            V3.2S, #-15.0 }

  *(a1 + 1616) = -_D3;
  *(a1 + 1624) = 0x40000000;
  *(a1 + 1636) = 256;
  *(a1 + 1628) = 0;
  *(v2 + 202) = 0;
  *(v2 + 210) = 16777217;
  *(a1 + 1650) = 257;
  *(a1 + 1652) = 0;
  *(a1 + 1656) = 0;
  *(a1 + 1657) = v13;
  *(a1 + 1659) = v14;
  *(a1 + 1660) = 1066611507;
  *(a1 + 1664) = 0x40C0000040A00000;
  *(a1 + 1672) = 3;
  *(a1 + 1680) = xmmword_1BCE3C000;
  *(a1 + 1696) = xmmword_1BCE3C010;
  *(a1 + 1712) = xmmword_1BCE3C020;
  *(a1 + 1728) = 0x3F0000003EB33333;
  *(a1 + 1736) = 0x3E800000453B8000;
  *(a1 + 1744) = 0u;
  *(a1 + 1760) = 4;
  *(a1 + 1776) = xmmword_1BCE3C030;
  *(a1 + 1792) = xmmword_1BCE3F050;
  *(a1 + 1808) = xmmword_1BCE3F060;
  *(a1 + 1824) = 1;
  *(a1 + 1828) = xmmword_1BCE3F070;
  *(a1 + 1844) = 1040187392;
  *(a1 + 1848) = 0x41C8000041700000;
  *(a1 + 1856) = 3;
  *(a1 + 1864) = 0x40000000;
  *(a1 + 1872) = 0x408000003F400000;
  *(a1 + 1880) = 1104388555;
  *(a1 + 1888) = xmmword_1BCE3F080;
  *(a1 + 1904) = 0x3DCCCCCD00000000;
  *(a1 + 1912) = 1101004800;
  *(a1 + 1920) = 1;
  *(a1 + 1928) = 1106247680;
  *(a1 + 1936) = xmmword_1BCE3F090;
  *(a1 + 1952) = 1077936128;
  *(a1 + 1960) = 0x420C000041C80000;
  *(a1 + 1968) = xmmword_1BCE3E700;
  *(a1 + 1984) = 0x3F80000000000000;
  *(a1 + 1992) = 1061158912;
  *(a1 + 2000) = 0x3F4CCCCD3E4CCCCDLL;
  *(a1 + 2008) = 0x3F6666663F333333;
  *(a1 + 2016) = xmmword_1BCE3C7E0;
  *(a1 + 2096) = 0u;
  *(a1 + 2080) = 0u;
  *(a1 + 2064) = 0u;
  *(a1 + 2048) = 0u;
  *(a1 + 2032) = 0u;
  *(a1 + 2112) = 1056964608;
  *(a1 + 2120) = 0x3E4CCCCD3DCCCCCDLL;
  *(a1 + 2128) = 0x400000003F800000;
  *(a1 + 2136) = 0x4040000040000000;
  *(a1 + 2144) = -1046478848;
  *(a1 + 2160) = _Q0;
  *(a1 + 2176) = _Q0;
  *(a1 + 2192) = 1061997773;
  *(a1 + 2200) = 10;
  *(a1 + 2208) = 0x40A000003FC00000;
  *(a1 + 2224) = xmmword_1BCE3C090;
  *(a1 + 2240) = xmmword_1BCE3C0A0;
  *(a1 + 2256) = _Q0;
  *(a1 + 2304) = 0;
  *(a1 + 2288) = 0u;
  *(a1 + 2272) = 0u;
  *(a1 + 2312) = v4;
  *(a1 + 2320) = v12;
}

void sub_1BCAC9EBC(uint64_t a1@<X8>)
{
  v2 = (a1 + 1436);
  sub_1BCA9872C();
  v4 = v3;
  sub_1BCA9872C();
  *a1 = 0x4006666666666666;
  *(a1 + 8) = 1;
  *(a1 + 16) = 0x3FF0000000000000;
  *(a1 + 24) = 30;
  *(a1 + 32) = xmmword_1BCE3BED0;
  *(a1 + 48) = xmmword_1BCE3BED0;
  *(a1 + 64) = 0x42DC000042480000;
  *(a1 + 72) = 0xC3A5000000000000;
  *(a1 + 80) = xmmword_1BCE4B020;
  *(a1 + 96) = xmmword_1BCE3BEF0;
  *(a1 + 112) = 0x3E8000003DF5C28FLL;
  *(a1 + 128) = xmmword_1BCE3C7C0;
  *(a1 + 144) = xmmword_1BCE3D840;
  *(a1 + 160) = xmmword_1BCE3BF00;
  *(a1 + 176) = 1153138688;
  *(a1 + 184) = 0x3E4CCCCD3DA3D70ALL;
  *(a1 + 192) = xmmword_1BCE3C7C0;
  *(a1 + 208) = xmmword_1BCE3C700;
  *(a1 + 224) = xmmword_1BCE3C660;
  *(a1 + 240) = 0x4140000040A00000;
  *(a1 + 248) = 1132068864;
  *(a1 + 256) = 0x3E4CCCCD3DE147AELL;
  *(a1 + 264) = 0x40A0000041700000;
  *(a1 + 272) = 1101004800;
  __asm { FMOV            V0.4S, #1.0 }

  *(a1 + 288) = xmmword_1BCE3C7C0;
  *(a1 + 304) = _Q0;
  *(a1 + 320) = 0x4348000040C00000;
  *(a1 + 328) = 0x3E99999A3E19999ALL;
  *(a1 + 336) = 0x3F00000040A00000;
  *(a1 + 352) = xmmword_1BCE3C7C0;
  *(a1 + 368) = xmmword_1BCE3C700;
  *(a1 + 384) = 0;
  *(a1 + 388) = 0x3B449BA63F800000;
  *(a1 + 400) = xmmword_1BCE3C670;
  *(a1 + 416) = 0x3F0000003F000000;
  *(a1 + 424) = 30;
  *(a1 + 432) = xmmword_1BCE3EB70;
  *(a1 + 448) = 0x3E4CCCCD3DCCCCCDLL;
  *(a1 + 464) = _Q0;
  *(a1 + 480) = xmmword_1BCE3D870;
  *(a1 + 496) = 0x43FA000040400000;
  *(a1 + 504) = 1116471296;
  *(a1 + 512) = 0x3E8000003DF5C28FLL;
  *(a1 + 528) = _Q0;
  *(a1 + 544) = _Q0;
  *(a1 + 560) = 0x4248000044BB8000;
  *(a1 + 568) = 0x3E4CCCCD3DA3D70ALL;
  *(a1 + 576) = xmmword_1BCE3C700;
  *(a1 + 592) = xmmword_1BCE3D880;
  *(a1 + 608) = 0x4100000040A00000;
  *(a1 + 624) = xmmword_1BCE3C700;
  *(a1 + 640) = xmmword_1BCE3D880;
  *(a1 + 656) = 0x4220000041200000;
  *(a1 + 664) = 0x3FC000003E99999ALL;
  *(a1 + 672) = 0x40A000003F800000;
  *(a1 + 688) = _Q0;
  *(a1 + 704) = 1065353216;
  *(a1 + 712) = 0x3F59999A3E99999ALL;
  *(a1 + 720) = 0x418151EC41580000;
  *(a1 + 728) = 1066369312;
  *(a1 + 736) = 1;
  *(a1 + 744) = 4;
  *(a1 + 752) = xmmword_1BCE4B7B0;
  *(a1 + 768) = 0x617274736F746C41;
  *(a1 + 776) = 0xEF4C202D20737574;
  *(a1 + 784) = 0xD000000000000013;
  *(a1 + 792) = 0x80000001BCE798E0;
  *(a1 + 800) = 9;
  *(a1 + 816) = _Q0;
  *(a1 + 832) = 1065353216;
  *(a1 + 840) = 0x3F19999A3E4CCCCDLL;
  *(a1 + 848) = 0x418C000041380000;
  *(a1 + 856) = 1092107296;
  *(a1 + 864) = 1;
  *(a1 + 872) = 6;
  *(a1 + 880) = xmmword_1BCE4B7C0;
  *(a1 + 896) = 0x2073756C756D7543;
  *(a1 + 904) = 0xEB000000004C202DLL;
  *(a1 + 912) = 0x5F73756C756D7543;
  *(a1 + 920) = 0xEF4C656C676E6953;
  *(a1 + 928) = 10;
  *(a1 + 944) = _Q0;
  *(a1 + 960) = 1065353216;
  *(a1 + 968) = 0x3F4CCCCD3E4CCCCDLL;
  *(a1 + 976) = 0x411C000040F80000;
  *(a1 + 984) = 1083393800;
  *(a1 + 992) = 1;
  *(a1 + 1000) = 4;
  *(a1 + 1008) = xmmword_1BCE3EBA0;
  *(a1 + 1024) = 0x2073756C756D7543;
  *(a1 + 1032) = 0xEB000000004D202DLL;
  *(a1 + 1040) = 0x5F73756C756D7543;
  *(a1 + 1048) = 0xEF4D656C676E6953;
  *(a1 + 1056) = 15;
  *(a1 + 1072) = _Q0;
  *(a1 + 1088) = 1065353216;
  *(a1 + 1096) = 0x3F8000003F000000;
  *(a1 + 1104) = 0x4078000040380000;
  *(a1 + 1112) = 1085783552;
  *(a1 + 1120) = 0;
  *(a1 + 1128) = 6;
  *(a1 + 1136) = xmmword_1BCE4B7D0;
  *(a1 + 1152) = 0x7970736957;
  *(a1 + 1160) = 0xE500000000000000;
  strcpy((a1 + 1168), "Wispy_Single");
  *(a1 + 1181) = 0;
  *(a1 + 1182) = -5120;
  *(a1 + 1184) = 6;
  *(a1 + 1200) = _Q0;
  *(a1 + 1216) = xmmword_1BCE4B7E0;
  *(a1 + 1232) = 0;
  *(a1 + 1236) = 1;
  *(a1 + 1240) = 0x73757461727453;
  *(a1 + 1248) = 0xE700000000000000;
  *(a1 + 1256) = 0x5F73757461727453;
  *(a1 + 1264) = 0xEF74656B6E616C42;
  *(a1 + 1272) = 8;
  *(a1 + 1280) = 0;
  *(a1 + 1288) = 0x400000003F800000;
  *(a1 + 1296) = 0x41C8000042C80000;
  *(a1 + 1304) = 0;
  *(a1 + 1312) = _Q0;
  *(a1 + 1328) = _Q0;
  *(a1 + 1344) = 0;
  *(a1 + 1352) = 0x40000000;
  *(a1 + 1360) = 0;
  *(a1 + 1368) = 1;
  *(a1 + 1408) = 0u;
  *(a1 + 1392) = 0u;
  *(a1 + 1376) = 0u;
  *(a1 + 1424) = 0x3F99999A3ECCCCCDLL;
  *(a1 + 1432) = 1;
  *v2 = xmmword_1BCE3BFC0;
  *(a1 + 1456) = 0x42DC000042B40000;
  *(a1 + 1472) = _Q0;
  *(a1 + 1488) = _Q0;
  *(a1 + 1504) = 1097859072;
  *(a1 + 1512) = 0x736168506E6F6F6DLL;
  *(a1 + 1520) = 0xEA00000000003065;
  *(a1 + 1528) = 1112014848;
  *(a1 + 1536) = _Q0;
  *(a1 + 1552) = xmmword_1BCE3C770;
  *(a1 + 1568) = 0x4248000042200000;
  *(a1 + 1584) = 0u;
  *(a1 + 1600) = xmmword_1BCE3D880;
  __asm { FMOV            V2.2S, #-30.0 }

  *(a1 + 1616) = -_D2;
  *(a1 + 1624) = 0x40000000;
  *(a1 + 1628) = 0u;
  *(a1 + 1644) = 1;
  *(a1 + 1646) = 16843009;
  *(a1 + 1650) = 257;
  *(a1 + 1652) = 0;
  *(a1 + 1656) = 0;
  *(a1 + 1657) = v12;
  *(a1 + 1659) = v13;
  *(a1 + 1660) = 1066611507;
  *(a1 + 1664) = 0x40C0000040A00000;
  *(a1 + 1672) = 3;
  *(a1 + 1680) = xmmword_1BCE3C000;
  *(a1 + 1696) = xmmword_1BCE3C010;
  *(a1 + 1712) = xmmword_1BCE3C020;
  *(a1 + 1728) = 0x3F0000003EB33333;
  *(a1 + 1736) = 0x3E800000453B8000;
  *(a1 + 1744) = 0u;
  *(a1 + 1760) = 6;
  *(a1 + 1776) = xmmword_1BCE3D8B0;
  *(a1 + 1792) = xmmword_1BCE3D8C0;
  *(a1 + 1808) = xmmword_1BCE3C7A0;
  *(a1 + 1824) = 1;
  *(a1 + 1828) = xmmword_1BCE3EBB0;
  *(a1 + 1844) = 1036831949;
  *(a1 + 1848) = 0x4100000041200000;
  *(a1 + 1856) = 3;
  *(a1 + 1864) = 1056964608;
  *(a1 + 1872) = 0x400AE1483F970A3DLL;
  *(a1 + 1880) = 1110704128;
  *(a1 + 1888) = _Q0;
  *(a1 + 1904) = 0x3E4CCCCD40A00000;
  *(a1 + 1912) = 1101004800;
  *(a1 + 1920) = 0;
  *(a1 + 1928) = 1106247680;
  *(a1 + 1936) = _Q0;
  *(a1 + 1952) = 1077936128;
  *(a1 + 1960) = 0x420C000041C80000;
  *(a1 + 1968) = xmmword_1BCE3EBC0;
  *(a1 + 1984) = 0x3F80000000000000;
  *(a1 + 1992) = 1061158912;
  *(a1 + 2000) = 0x3F6666663E4CCCCDLL;
  *(a1 + 2008) = 0x3F6666663F333333;
  *(a1 + 2016) = xmmword_1BCE3F500;
  *(a1 + 2096) = 0u;
  *(a1 + 2080) = 0u;
  *(a1 + 2064) = 0u;
  *(a1 + 2048) = 0u;
  *(a1 + 2032) = 0u;
  *(a1 + 2112) = 1056964608;
  *(a1 + 2120) = 0x3E4CCCCD3DCCCCCDLL;
  *(a1 + 2128) = 0x400000003F800000;
  *(a1 + 2136) = 0x4040000040000000;
  *(a1 + 2144) = -1046478848;
  *(a1 + 2160) = _Q0;
  *(a1 + 2176) = _Q0;
  *(a1 + 2192) = 1061997773;
  *(a1 + 2200) = 10;
  *(a1 + 2208) = 0x417000003F4CCCCDLL;
  *(a1 + 2224) = xmmword_1BCE4B7F0;
  *(a1 + 2240) = xmmword_1BCE44880;
  *(a1 + 2256) = _Q0;
  *(a1 + 2304) = 0;
  *(a1 + 2288) = 0u;
  *(a1 + 2272) = 0u;
  *(a1 + 2312) = v4;
  *(a1 + 2320) = v11;
}

void static WeatherFormatStyle<>.weather(_:usage:scaling:trimLeadingZeroes:sign:locale:)()
{
  OUTLINED_FUNCTION_20_0();
  v58 = v1;
  v56 = v2;
  v4 = v3;
  v6 = v5;
  v54 = v8;
  v55 = v7;
  sub_1BCE19260();
  OUTLINED_FUNCTION_2();
  v49 = v10;
  v50 = v9;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_2_0();
  v48 = v12 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08B18);
  OUTLINED_FUNCTION_14(v13);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_10_16();
  v51 = v15;
  OUTLINED_FUNCTION_13();
  sub_1BCE19280();
  OUTLINED_FUNCTION_2();
  v52 = v16;
  v53 = v17;
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_2_0();
  v20 = v19 - v18;
  v21 = sub_1BCE18D50();
  OUTLINED_FUNCTION_2();
  v23 = v22;
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_2_0();
  v27 = v26 - v25;
  v28 = OUTLINED_FUNCTION_87();
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(v28);
  v30 = OUTLINED_FUNCTION_14(v29);
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_3();
  v33 = v31 - v32;
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_23_0();
  LOBYTE(v6) = *v6;
  LOBYTE(v4) = *v4;
  sub_1BC95DCE8();
  v57 = v27;
  (*(v23 + 16))(v27, v58, v21);
  *v54 = v55;
  *(v54 + 8) = v6;
  *(v54 + 9) = v4;
  sub_1BC95DCE8();
  OUTLINED_FUNCTION_29_0(v33, 1, v52);
  if (v43)
  {
    v36 = v53;
    v35 = qword_1EDA1F658;

    if (v35 != -1)
    {
      OUTLINED_FUNCTION_1_0();
    }

    sub_1BCE1A9F0();

    OUTLINED_FUNCTION_29_0(v33, 1, v52);
    if (!v43)
    {
      sub_1BC94C05C(v33, &qword_1EBD07890);
    }
  }

  else
  {
    v36 = v53;
    (*(v53 + 32))(v20, v33, v52);
  }

  v37 = type metadata accessor for NSUnitLength.BaseWeatherFormatStyle(0);
  v39 = *(v36 + 32);
  v38 = v36 + 32;
  v39(v54 + v37[8], v20, v52);
  v40 = v56;
  if (v56 == 2)
  {
    sub_1BCE19270();
    sub_1BCE19250();
    (*(v49 + 8))(v48, v50);
    v41 = sub_1BCE190D0();
    OUTLINED_FUNCTION_6(v51);
    if (v43)
    {
      sub_1BC94C05C(v51, &qword_1EBD08B18);
    }

    else
    {
      sub_1BCE190B0();
      OUTLINED_FUNCTION_84_0();
      (*(v42 + 8))(v51, v41);
      v43 = v38 == 28261 && v51 == 0xE200000000000000;
      if (v43)
      {
      }

      else
      {
        v44 = OUTLINED_FUNCTION_92();

        if ((v44 & 1) == 0)
        {
          goto LABEL_24;
        }
      }

      v45 = sub_1BCE190E0();
      if (v46)
      {
        if (v45 == 46 && v46 == 0xE100000000000000)
        {

          v40 = 1;
        }

        else
        {
          v40 = OUTLINED_FUNCTION_118();
        }

        goto LABEL_25;
      }
    }

LABEL_24:
    v40 = 0;
  }

LABEL_25:
  sub_1BC94C05C(v0, &qword_1EBD07890);
  *(v54 + 10) = v40 & 1;
  *(v54 + v37[9]) = 0;
  (*(v23 + 32))(v54 + v37[10], v57, v21);
  OUTLINED_FUNCTION_21();
}

void static Set<>.full(width:)(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08B00);
  OUTLINED_FUNCTION_13_14();
  v3 = *(v2 + 72);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1BCE3E030;
  v7 = v6 + v5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08B08);
  OUTLINED_FUNCTION_19_0();
  __swift_storeEnumTagSinglePayload(v9, v10, v11, v8);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08B10);
  OUTLINED_FUNCTION_4();
  (*(v13 + 16))(v7 + v3, a1, v12);
  OUTLINED_FUNCTION_60();
  __swift_storeEnumTagSinglePayload(v14, v15, v16, v12);
  OUTLINED_FUNCTION_60();
  __swift_storeEnumTagSinglePayload(v17, v18, v19, v8);

  sub_1BC98427C();
}

{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD09BC8);
  OUTLINED_FUNCTION_2_103();
  v3 = *(v2 + 72);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1BCE3E030;
  v7 = v6 + v5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08BD8);
  OUTLINED_FUNCTION_19_0();
  __swift_storeEnumTagSinglePayload(v9, v10, v11, v8);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08BB8);
  OUTLINED_FUNCTION_4();
  (*(v13 + 16))(v7 + v3, a1, v12);
  OUTLINED_FUNCTION_60();
  __swift_storeEnumTagSinglePayload(v14, v15, v16, v12);
  OUTLINED_FUNCTION_60();
  __swift_storeEnumTagSinglePayload(v17, v18, v19, v8);

  sub_1BC98926C();
}

{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD078A8);
  OUTLINED_FUNCTION_12_55();
  v3 = *(v2 + 72);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1BCE3E030;
  v7 = v6 + v5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD078B0);
  OUTLINED_FUNCTION_19_0();
  __swift_storeEnumTagSinglePayload(v9, v10, v11, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08270);
  OUTLINED_FUNCTION_4();
  (*(v12 + 16))(v7 + v3, a1);
  OUTLINED_FUNCTION_60();
  __swift_storeEnumTagSinglePayload(v13, v14, v15, v8);

  sub_1BC9795A8();
}

void static Set<>.unit(width:)(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08B00);
  OUTLINED_FUNCTION_13_14();
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1BCE3E050;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08B10);
  OUTLINED_FUNCTION_4();
  (*(v6 + 16))(v4 + v3, a1, v5);
  OUTLINED_FUNCTION_60();
  __swift_storeEnumTagSinglePayload(v7, v8, v9, v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08B08);
  OUTLINED_FUNCTION_60();
  __swift_storeEnumTagSinglePayload(v10, v11, v12, v13);

  sub_1BC98427C();
}

{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD09BC8);
  OUTLINED_FUNCTION_2_103();
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1BCE3E050;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08BB8);
  OUTLINED_FUNCTION_4();
  (*(v6 + 16))(v4 + v3, a1, v5);
  OUTLINED_FUNCTION_60();
  __swift_storeEnumTagSinglePayload(v7, v8, v9, v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08BD8);
  OUTLINED_FUNCTION_60();
  __swift_storeEnumTagSinglePayload(v10, v11, v12, v13);

  sub_1BC98926C();
}

{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD078A8);
  OUTLINED_FUNCTION_12_55();
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1BCE3E050;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08270);
  OUTLINED_FUNCTION_4();
  (*(v5 + 16))(v4 + v3, a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD078B0);
  OUTLINED_FUNCTION_60();
  __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);

  sub_1BC9795A8();
}

uint64_t NSUnitLength.WeatherFormatUsage.hashValue.getter()
{
  v1 = *v0;
  sub_1BCE1E100();
  MEMORY[0x1BFB30850](v1);
  return sub_1BCE1E150();
}

void static NSUnitLength.WeatherFormatComponent.== infix(_:_:)()
{
  OUTLINED_FUNCTION_20_0();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08B10);
  OUTLINED_FUNCTION_2();
  v32 = v4;
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_10_16();
  v31 = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08B20);
  OUTLINED_FUNCTION_14(v7);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_4_9();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08B28);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_77();
  v11 = type metadata accessor for NSUnitLength.WeatherFormatComponent(0);
  v12 = OUTLINED_FUNCTION_14(v11);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_85();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08B30);
  OUTLINED_FUNCTION_14(v13);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v31 - v15;
  v18 = *(v17 + 56);
  sub_1BC96DDD0();
  sub_1BC96DDD0();
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08B08);
  OUTLINED_FUNCTION_29_0(v16, 1, v19);
  if (v20)
  {
    OUTLINED_FUNCTION_29_0(&v16[v18], 1, v19);
    if (v20)
    {
      goto LABEL_19;
    }
  }

  else
  {
    OUTLINED_FUNCTION_5_21();
    sub_1BC96DDD0();
    OUTLINED_FUNCTION_29_0(&v16[v18], 1, v19);
    if (!v20)
    {
      v21 = *(v9 + 48);
      sub_1BC9849E8();
      sub_1BC9849E8();
      OUTLINED_FUNCTION_8_0(v0);
      if (v22)
      {
        OUTLINED_FUNCTION_8_0(v0 + v21);
        if (v20)
        {
          sub_1BC94C05C(v0, &qword_1EBD08B20);
LABEL_19:
          OUTLINED_FUNCTION_0_27();
          sub_1BC96DF88(v16, v24);
          goto LABEL_20;
        }
      }

      else
      {
        sub_1BC95DCE8();
        OUTLINED_FUNCTION_8_0(v0 + v21);
        if (!v23)
        {
          v25 = v32;
          v26 = v0 + v21;
          v27 = v31;
          (*(v32 + 32))(v31, v26, v3);
          OUTLINED_FUNCTION_7_26();
          sub_1BC957184(v28, v29);
          sub_1BCE1D210();
          v30 = *(v25 + 8);
          v30(v27, v3);
          v30(v1, v3);
          sub_1BC94C05C(v0, &qword_1EBD08B20);
          goto LABEL_19;
        }

        (*(v32 + 8))(v1, v3);
      }

      sub_1BC94C05C(v0, &qword_1EBD08B28);
      goto LABEL_19;
    }

    sub_1BC94C05C(v2, &qword_1EBD08B20);
  }

  sub_1BC94C05C(v16, &qword_1EBD08B30);
LABEL_20:
  OUTLINED_FUNCTION_21();
}

uint64_t NSUnitLength.BaseWeatherFormatStyle.format(_:placeholder:unitManager:)()
{
  OUTLINED_FUNCTION_101_0();
  swift_getObjectType();
  v0 = OUTLINED_FUNCTION_69();

  return sub_1BC985944(v0, v1, v2, v3, v4, v5);
}

void sub_1BCACB49C(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    OUTLINED_FUNCTION_66_0();
    if (*(v4 + 16) == *(v5 + 16))
    {
      v6 = 0;
      v7 = 1 << *(v3 + 32);
      if (v7 < 64)
      {
        v8 = ~(-1 << v7);
      }

      else
      {
        v8 = -1;
      }

      v9 = v8 & *(v3 + 56);
      v10 = (v7 + 63) >> 6;
LABEL_7:
      if (v9)
      {
        v11 = __clz(__rbit64(v9));
        v9 &= v9 - 1;
LABEL_14:
        v15 = *(*(v3 + 48) + (v11 | (v6 << 6)));
        sub_1BCE1E100();
        MEMORY[0x1BFB30850](0);
        MEMORY[0x1BFB30850](v15);
        v16 = sub_1BCE1E150();
        v17 = ~(-1 << *(v2 + 32));
        while (1)
        {
          v18 = v16 & v17;
          if (((*(v2 + 56 + (((v16 & v17) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v16 & v17)) & 1) == 0)
          {
            break;
          }

          v16 = v18 + 1;
          if (*(*(v2 + 48) + v18) == v15)
          {
            goto LABEL_7;
          }
        }
      }

      else
      {
        v12 = v6;
        while (1)
        {
          v6 = v12 + 1;
          if (__OFADD__(v12, 1))
          {
            break;
          }

          if (v6 >= v10)
          {
            return;
          }

          ++v12;
          if (*(v3 + 56 + 8 * v6))
          {
            OUTLINED_FUNCTION_30();
            v9 = v14 & v13;
            goto LABEL_14;
          }
        }

        __break(1u);
      }
    }
  }
}

void sub_1BCACB5F8(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    OUTLINED_FUNCTION_66_0();
    if (*(v4 + 16) == *(v5 + 16))
    {
      v6 = 0;
      v7 = 1 << *(v3 + 32);
      if (v7 < 64)
      {
        v8 = ~(-1 << v7);
      }

      else
      {
        v8 = -1;
      }

      v9 = v8 & *(v3 + 56);
      v10 = (v7 + 63) >> 6;
      v11 = v2 + 56;
LABEL_7:
      if (v9)
      {
        v12 = __clz(__rbit64(v9));
        v9 &= v9 - 1;
LABEL_14:
        v16 = *(*(v3 + 48) + (v12 | (v6 << 6)));
        sub_1BCE1E100();
        MEMORY[0x1BFB30850](v16 >> 7);
        MEMORY[0x1BFB30850](v16 & 0x7F);
        v17 = sub_1BCE1E150();
        v18 = -1 << *(v2 + 32);
        v19 = v17 & ~v18;
        if ((*(v11 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19))
        {
          v20 = ~v18;
          v21 = *(v2 + 48);
          do
          {
            v22 = *(v21 + v19);
            if (*(v21 + v19) < 0)
            {
              if ((v16 & 0x80) != 0 && ((v22 ^ v16) & 0x7F) == 0)
              {
                goto LABEL_7;
              }
            }

            else if (v22 == v16)
            {
              goto LABEL_7;
            }

            v19 = (v19 + 1) & v20;
          }

          while (((*(v11 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) != 0);
        }
      }

      else
      {
        v13 = v6;
        while (1)
        {
          v6 = v13 + 1;
          if (__OFADD__(v13, 1))
          {
            break;
          }

          if (v6 >= v10)
          {
            return;
          }

          ++v13;
          if (*(v3 + 56 + 8 * v6))
          {
            OUTLINED_FUNCTION_30();
            v9 = v15 & v14;
            goto LABEL_14;
          }
        }

        __break(1u);
      }
    }
  }
}

BOOL sub_1BCACB784(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  sub_1BCE1E100();
  sub_1BCE1D370();
  sub_1BCE1E150();
  OUTLINED_FUNCTION_26_4();
  v8 = ~v7;
  do
  {
    v9 = v6 & v8;
    v10 = (1 << (v6 & v8)) & *(a3 + 56 + (((v6 & v8) >> 3) & 0xFFFFFFFFFFFFFF8));
    v11 = v10 != 0;
    if (!v10)
    {
      break;
    }

    v12 = (*(a3 + 48) + 16 * v9);
    if (*v12 == a1 && v12[1] == a2)
    {
      break;
    }

    v14 = sub_1BCE1E090();
    v6 = v9 + 1;
  }

  while ((v14 & 1) == 0);
  return v11;
}

void sub_1BCACB868()
{
  OUTLINED_FUNCTION_20_0();
  OUTLINED_FUNCTION_66_0();
  v1 = sub_1BCE1E210();
  OUTLINED_FUNCTION_2();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_2_0();
  v7 = v6 - v5;
  if (*(v0 + 16))
  {
    OUTLINED_FUNCTION_45();
    sub_1BC94FFF4(v8, v9);
    sub_1BCE1D180();
    v10 = v0 + 56;
    v17 = v0;
    OUTLINED_FUNCTION_26_4();
    v13 = ~v12;
    do
    {
      v14 = v11 & v13;
      if (((1 << (v11 & v13)) & *(v10 + (((v11 & v13) >> 3) & 0xFFFFFFFFFFFFFF8))) == 0)
      {
        break;
      }

      (*(v3 + 16))(v7, *(v17 + 48) + *(v3 + 72) * v14, v1);
      OUTLINED_FUNCTION_45();
      sub_1BC94FFF4(&qword_1EBD08C00, v15);
      v16 = sub_1BCE1D210();
      (*(v3 + 8))(v7, v1);
      v11 = v14 + 1;
    }

    while ((v16 & 1) == 0);
  }

  OUTLINED_FUNCTION_21();
}

uint64_t sub_1BCACBA1C(uint64_t a1)
{
  if (!*(a1 + 16))
  {
    return 0;
  }

  sub_1BCE1E100();
  sub_1BCE1D370();
  sub_1BCE1E150();
  OUTLINED_FUNCTION_26_4();
  return (*(a1 + (((v2 & ~v3) >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> (v2 & ~v3)) & 1;
}

uint64_t NSUnitLength.BaseWeatherFormatStyle.attributed.getter()
{
  OUTLINED_FUNCTION_20_0();
  v2 = v1;
  v3 = *v0;
  v4 = *(v0 + 4);
  v5 = *(v0 + 10);
  v6 = type metadata accessor for NSUnitLength.BaseWeatherFormatStyle(0);
  v7 = *(v6 + 32);
  v8 = type metadata accessor for NSUnitLength.AttributedWeatherFormatStyle(0);
  v9 = *(v8 + 32);
  sub_1BCE19280();
  OUTLINED_FUNCTION_4();
  (*(v10 + 16))(v2 + v9, v0 + v7);
  v11 = *(v6 + 40);
  v12 = *(v8 + 36);
  sub_1BCE18D50();
  OUTLINED_FUNCTION_4();
  (*(v13 + 16))(v2 + v12, v0 + v11);
  *v2 = v3;
  *(v2 + 8) = v4;
  *(v2 + 10) = v5;
  OUTLINED_FUNCTION_21();
}

void NSUnitLength.AttributedWeatherFormatStyle.format(_:placeholder:unitManager:)()
{
  OUTLINED_FUNCTION_20_0();
  v3 = v0;
  v126 = v4;
  v103 = v5;
  v7 = v6;
  v109 = v8;
  v123 = v9;
  v10 = OUTLINED_FUNCTION_13_14();
  v122 = v11;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_2_0();
  v121 = v13 - v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08B48);
  OUTLINED_FUNCTION_2();
  v119 = v15;
  v120 = v14;
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_10_16();
  v118 = v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08B50);
  OUTLINED_FUNCTION_14(v18);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_10_16();
  OUTLINED_FUNCTION_114_0(v20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08B58);
  OUTLINED_FUNCTION_2();
  v112 = v22;
  v113 = v21;
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_10_16();
  v110 = v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08B20);
  OUTLINED_FUNCTION_14(v25);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_10_16();
  v124 = v27;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08B10);
  OUTLINED_FUNCTION_2();
  v107 = v29;
  v108 = v28;
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_10_16();
  v105 = v31;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08B60);
  OUTLINED_FUNCTION_2();
  v116 = v33;
  v117 = v32;
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_3();
  v104 = v34 - v35;
  OUTLINED_FUNCTION_15();
  MEMORY[0x1EEE9AC00](v36);
  v115 = &v99 - v37;
  OUTLINED_FUNCTION_13();
  v101 = sub_1BCE19260();
  OUTLINED_FUNCTION_2();
  v100 = v38;
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_85();
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08B18);
  OUTLINED_FUNCTION_14(v40);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v41);
  v43 = &v99 - v42;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD07890);
  OUTLINED_FUNCTION_14(v44);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v45);
  OUTLINED_FUNCTION_4_9();
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08B68);
  OUTLINED_FUNCTION_2();
  v111 = v47;
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v48);
  v50 = &v99 - v49;
  v106 = *v7;
  v128 = v3[8];
  v127 = v3[9];
  v102 = type metadata accessor for NSUnitLength.AttributedWeatherFormatStyle(0);
  v51 = *(v102 + 32);
  v52 = sub_1BCE19280();
  OUTLINED_FUNCTION_4();
  v54 = *(v53 + 16);
  v125 = v51;
  v54(v1, v51 + v3, v52);
  OUTLINED_FUNCTION_60();
  __swift_storeEnumTagSinglePayload(v55, v56, v57, v52);
  sub_1BC986808(&v128, &v127, v1, v103, v126, v58, v59, v60, v99, v100, v101, v102);
  sub_1BC94C05C(v1, &qword_1EBD07890);
  v61 = v3[8];
  v126 = v46;
  v109 = v50;
  v62 = sub_1BCE185C0();
  if (v61 >= 2)
  {
    v63 = sub_1BCE1D890();
  }

  else
  {
    v63 = sub_1BCE1D8A0();
  }

  v64 = v63;

  v65 = v105;
  v66 = v124;
  if (v3[10] == 2)
  {
    sub_1BCE19270();
    sub_1BCE19250();
    (*(v100 + 8))(v2, v101);
    v67 = sub_1BCE190D0();
    OUTLINED_FUNCTION_29_0(v43, 1, v67);
    if (!v74)
    {
      v71 = sub_1BCE190B0();
      v73 = v72;
      (*(*(v67 - 8) + 8))(v43, v67);
      v74 = v71 == 28261 && v73 == 0xE200000000000000;
      v69 = v107;
      if (!v74)
      {
        OUTLINED_FUNCTION_92();
      }

      v68 = v108;
      v66 = v124;
      if ((v64 & 1) == 0)
      {
        goto LABEL_16;
      }

LABEL_9:
      v70 = 0;
      goto LABEL_17;
    }

    sub_1BC94C05C(v43, &qword_1EBD08B18);
  }

  v69 = v107;
  v68 = v108;
  if (v64)
  {
    goto LABEL_9;
  }

LABEL_16:
  v70 = v3[8] < 2u;
LABEL_17:
  sub_1BC987308();
  OUTLINED_FUNCTION_29_0(v66, 1, v68);
  if (v74)
  {
    sub_1BC947608(0, qword_1EDA16AF0);
    if (v70)
    {
      sub_1BCE18660();
    }

    else
    {
      sub_1BCE18630();
    }

    OUTLINED_FUNCTION_29_0(v66, 1, v68);
    if (!v74)
    {
      sub_1BC94C05C(v66, &qword_1EBD08B20);
    }
  }

  else
  {
    (*(v69 + 32))(v65, v66, v68);
  }

  sub_1BC947608(0, qword_1EDA16AF0);
  v75 = v110;
  sub_1BCE18CF0();
  v76 = v114;
  sub_1BC9874E4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08288);
  OUTLINED_FUNCTION_60();
  __swift_storeEnumTagSinglePayload(v77, v78, v79, v80);
  v81 = v104;
  sub_1BCE18510();
  sub_1BC94C05C(v76, &qword_1EBD08B50);
  (*(v112 + 8))(v75, v113);
  (*(v69 + 8))(v65, v68);
  v82 = v115;
  v83 = v117;
  sub_1BCE18620();
  v125 = *(v116 + 8);
  v125(v81, v83);
  v84 = v118;
  sub_1BCE18600();
  sub_1BC957184(&qword_1EBD08B70, &qword_1EBD08B48);
  v85 = v120;
  v86 = v109;
  sub_1BCE186A0();
  (*(v119 + 8))(v84, v85);
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08B08);
  v88 = v121;
  OUTLINED_FUNCTION_19_0();
  __swift_storeEnumTagSinglePayload(v89, v90, v91, v87);
  sub_1BC987820();
  LOBYTE(v76) = v92;
  OUTLINED_FUNCTION_0_27();
  sub_1BC96DF88(v88, v93);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08B00);
  *(swift_allocObject() + 16) = xmmword_1BCE3E050;
  OUTLINED_FUNCTION_19_0();
  __swift_storeEnumTagSinglePayload(v94, v95, v96, v87);
  sub_1BC98427C();
  sub_1BC986D6C();
  v98 = v97;

  sub_1BCCFFF44(v76 & 1, v98 & 1, qword_1BCE4BB60[v106], qword_1BCE4BB80[v106]);

  v125(v82, v83);
  (*(v111 + 8))(v86, v126);
  OUTLINED_FUNCTION_21();
}

uint64_t static NSUnitLength.AttributedWeatherFormatStyle.== infix(_:_:)()
{
  OUTLINED_FUNCTION_9();
  sub_1BC986D6C();
  if ((v2 & 1) != 0 && v1[8] == v0[8] && v1[9] == v0[9])
  {
    v3 = v1[10];
    v4 = v0[10];
    if (v3 == 2)
    {
      if (v4 != 2)
      {
        return 0;
      }
    }

    else if (v4 == 2 || ((v4 ^ v3) & 1) != 0)
    {
      return 0;
    }

    v5 = type metadata accessor for NSUnitLength.AttributedWeatherFormatStyle(0);
    v6 = OUTLINED_FUNCTION_104(*(v5 + 32));
    if (MEMORY[0x1BFB2B8A0](v6))
    {
      OUTLINED_FUNCTION_104(*(v5 + 36));

      JUMPOUT(0x1BFB2B460);
    }
  }

  return 0;
}

uint64_t NSUnitLength.AttributedWeatherFormatStyle.hash(into:)(const void *a1)
{
  sub_1BC985454(a1, *v1);
  MEMORY[0x1BFB30850](*(v1 + 8));
  MEMORY[0x1BFB30850](*(v1 + 9));
  if (*(v1 + 10) != 2)
  {
    sub_1BCE1E120();
  }

  sub_1BCE1E120();
  type metadata accessor for NSUnitLength.AttributedWeatherFormatStyle(0);
  sub_1BCE19280();
  OUTLINED_FUNCTION_42();
  sub_1BC94FFF4(v2, v3);
  OUTLINED_FUNCTION_58();
  sub_1BCE1D190();
  sub_1BCE18D50();
  OUTLINED_FUNCTION_41_1();
  sub_1BC94FFF4(v4, v5);
  OUTLINED_FUNCTION_58();
  return sub_1BCE1D190();
}

uint64_t sub_1BCACC7B8(void (*a1)(_BYTE *))
{
  sub_1BCE1E100();
  a1(v3);
  return sub_1BCE1E150();
}

uint64_t sub_1BCACC824(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *))
{
  sub_1BCE1E100();
  a4(v6);
  return sub_1BCE1E150();
}

uint64_t sub_1BCACC86C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08B68);
  OUTLINED_FUNCTION_2();
  v2 = v1;
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_37();
  v4 = sub_1BCE19260();
  OUTLINED_FUNCTION_2();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_85();
  v8 = sub_1BCE185C0();
  v9 = sub_1BCE1D8A0();

  v10 = (v2 + 8);
  if (v9)
  {
    sub_1BCE19270();
    v11 = sub_1BCE191C0();
    (*(v6 + 8))(v0, v4);
    v12 = objc_opt_self();
    if (v11)
    {
      v13 = OUTLINED_FUNCTION_122();
      OUTLINED_FUNCTION_38_4();
      sub_1BCE18680();

      OUTLINED_FUNCTION_12_15();
      v14 = OUTLINED_FUNCTION_63();
      v15(v14);
    }

    else
    {
      v19 = [v12 centimeters];
      OUTLINED_FUNCTION_38_4();
      sub_1BCE18680();

      OUTLINED_FUNCTION_12_15();
      v21 = v20;
      v22 = *v10;
      v23 = OUTLINED_FUNCTION_63();
      v22(v23);
      if (v21 < 10.0 || v21 >= 20.0 && v21 >= 50.0)
      {
        v26 = OUTLINED_FUNCTION_122();
        OUTLINED_FUNCTION_38_4();
        sub_1BCE18680();

        OUTLINED_FUNCTION_12_15();
        v27 = OUTLINED_FUNCTION_63();
        v22(v27);
      }
    }
  }

  else
  {
    v16 = [objc_opt_self() inches];
    OUTLINED_FUNCTION_38_4();
    sub_1BCE18680();

    OUTLINED_FUNCTION_12_15();
    v17 = OUTLINED_FUNCTION_63();
    v18(v17);
  }

  v24 = OUTLINED_FUNCTION_122();
  sub_1BC947608(0, qword_1EDA16AF0);
  return sub_1BCE185D0();
}

uint64_t Measurement<>.converted(usage:scaling:)(_BYTE *a1, char *a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD07890);
  OUTLINED_FUNCTION_14(v5);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_36_1();
  v7 = *a2;
  HIBYTE(v18[0]) = *a1;
  BYTE6(v18[0]) = v7;
  sub_1BCE19280();
  OUTLINED_FUNCTION_19_0();
  __swift_storeEnumTagSinglePayload(v8, v9, v10, v11);
  sub_1BCE1A3E0();
  v12 = sub_1BCE1A3A0();
  sub_1BC986808(v18 + 7, v18 + 6, v2, v12, MEMORY[0x1E69E1768], v13, v14, v15, v17, v18[0], v18[1], v18[2]);

  return sub_1BC94C05C(v2, &qword_1EBD07890);
}

uint64_t sub_1BCACCD38()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08B68);
  __swift_allocate_value_buffer(v0, qword_1EBD08AE8);
  __swift_project_value_buffer(v0, qword_1EBD08AE8);
  v1 = [objc_opt_self() meters];
  sub_1BC947608(0, qword_1EDA16AF0);
  return sub_1BCE185D0();
}

void Optional<A>.formatted<A>(_:placeholder:)()
{
  OUTLINED_FUNCTION_20_0();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08B68);
  OUTLINED_FUNCTION_2();
  v6 = v5;
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_4_9();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08B78);
  OUTLINED_FUNCTION_14(v8);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_37();
  v10 = *v3;
  sub_1BC95DCE8();
  OUTLINED_FUNCTION_5_16(v1);
  if (v11)
  {
    if (v10)
    {
      if (qword_1EBD07058 != -1)
      {
        OUTLINED_FUNCTION_53();
      }
    }

    else if (qword_1EBD07058 != -1)
    {
      OUTLINED_FUNCTION_53();
    }

    __swift_project_value_buffer(v4, qword_1EBD08AE8);
    sub_1BC947608(0, qword_1EDA16AF0);
    sub_1BCACA648();
    Measurement.formatted<A>(_:placeholder:unitManager:)();
    swift_unknownObjectRelease();
  }

  else
  {
    (*(v6 + 32))(v0, v1, v4);
    sub_1BC947608(0, qword_1EDA16AF0);
    sub_1BCACA648();
    Measurement.formatted<A>(_:placeholder:unitManager:)();
    swift_unknownObjectRelease();
    (*(v6 + 8))(v0, v4);
  }

  OUTLINED_FUNCTION_21();
}

{
  OUTLINED_FUNCTION_20_0();
  v2 = v1;
  v13 = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD07CA8);
  OUTLINED_FUNCTION_2();
  v6 = v5;
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v14[-v8 - 3];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08690);
  OUTLINED_FUNCTION_14(v10);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_36_0();
  v12 = *v2;
  sub_1BCBDA45C();
  if (__swift_getEnumTagSinglePayload(v0, 1, v4) == 1)
  {
    if (v12)
    {
      if (qword_1EBD07260 != -1)
      {
        OUTLINED_FUNCTION_17_21();
      }

      __swift_project_value_buffer(v4, qword_1EBD0B900);
      v14[2] = v12;
      sub_1BC947608(0, qword_1EDA1EFC0);
      sub_1BCACA648();
    }

    else
    {
      if (qword_1EBD07260 != -1)
      {
        OUTLINED_FUNCTION_17_21();
      }

      __swift_project_value_buffer(v4, qword_1EBD0B900);
      v14[1] = 3;
      sub_1BC947608(0, qword_1EDA1EFC0);
      sub_1BCACA648();
    }

    Measurement.formatted<A>(_:placeholder:unitManager:)();
    swift_unknownObjectRelease();
  }

  else
  {
    (*(v6 + 32))(v9, v0, v4);
    sub_1BC947608(0, qword_1EDA1EFC0);
    sub_1BC95D408(v14);
    sub_1BCACA648();
    Measurement.formatted<A>(_:placeholder:unitManager:)();
    swift_unknownObjectRelease();
    (*(v6 + 8))(v9, v4);
  }

  OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_21();
}

{
  OUTLINED_FUNCTION_20_0();
  v2 = v1;
  v16 = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD09BF0);
  OUTLINED_FUNCTION_2();
  v6 = v5;
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_4_9();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0E2D8);
  OUTLINED_FUNCTION_14(v8);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v17[-v10 - 3];
  v12 = *v2;
  v13 = OUTLINED_FUNCTION_18_1();
  sub_1BC952ABC(v13, v14, &qword_1EBD0E2D8);
  OUTLINED_FUNCTION_29_0(v11, 1, v4);
  if (v15)
  {
    if (v12)
    {
      if (qword_1EBD07380 != -1)
      {
        OUTLINED_FUNCTION_13_45();
      }

      __swift_project_value_buffer(v4, qword_1EBD0E2B8);
      v17[2] = v12;
      sub_1BC98B698();
      OUTLINED_FUNCTION_76();
      sub_1BCACA648();
    }

    else
    {
      if (qword_1EBD07380 != -1)
      {
        OUTLINED_FUNCTION_13_45();
      }

      __swift_project_value_buffer(v4, qword_1EBD0E2B8);
      v17[1] = 3;
      sub_1BC98B698();
      OUTLINED_FUNCTION_76();
      sub_1BCACA648();
    }

    Measurement.formatted<A>(_:placeholder:unitManager:)();
    swift_unknownObjectRelease();
  }

  else
  {
    (*(v6 + 32))(v0, v11, v4);
    sub_1BC98B698();
    sub_1BC95D408(v17);
    sub_1BCACA648();
    Measurement.formatted<A>(_:placeholder:unitManager:)();
    swift_unknownObjectRelease();
    (*(v6 + 8))(v0, v4);
  }

  OUTLINED_FUNCTION_21();
}

{
  OUTLINED_FUNCTION_20_0();
  v2 = v1;
  v17 = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD07860);
  OUTLINED_FUNCTION_2();
  v6 = v5;
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v17 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD07898);
  OUTLINED_FUNCTION_14(v10);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_37();
  v12 = *v2;
  sub_1BC95DCE8();
  v13 = OUTLINED_FUNCTION_15_35();
  OUTLINED_FUNCTION_29_0(v13, v14, v4);
  if (v15)
  {
    if (v12)
    {
      if (qword_1EBD073B0 != -1)
      {
        OUTLINED_FUNCTION_40_12();
      }

      __swift_project_value_buffer(v4, qword_1EBD0E748);
      v19 = v12;
      sub_1BC947608(0, &qword_1EDA1F1C8);
      sub_1BCACA648();
    }

    else
    {
      if (qword_1EBD073B0 != -1)
      {
        OUTLINED_FUNCTION_40_12();
      }

      __swift_project_value_buffer(v4, qword_1EBD0E748);
      v18 = 3;
      sub_1BC947608(0, &qword_1EDA1F1C8);
      sub_1BCACA648();
    }

    Measurement.formatted<A>(_:placeholder:unitManager:)();
    swift_unknownObjectRelease();
  }

  else
  {
    (*(v6 + 32))(v9, v0, v4);
    sub_1BC947608(0, &qword_1EDA1F1C8);
    OUTLINED_FUNCTION_15_5();
    sub_1BC95D408(v16);
    OUTLINED_FUNCTION_15_5();
    sub_1BCACA648();
    Measurement.formatted<A>(_:placeholder:unitManager:)();
    swift_unknownObjectRelease();
    (*(v6 + 8))(v9, v4);
  }

  OUTLINED_FUNCTION_21();
}

uint64_t sub_1BCACD0A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08B68);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v18 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08B78);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v18 - v12;
  sub_1BC95DCE8();
  if (__swift_getEnumTagSinglePayload(v13, 1, v4) != 1)
  {
    return (*(v5 + 32))(a2, v13, v4);
  }

  sub_1BC94C05C(v13, &qword_1EBD08B78);
  v14 = objc_opt_self();
  v15 = [v14 kilometers];
  sub_1BCE18680();

  sub_1BCE185E0();
  (*(v5 + 8))(v7, v4);
  v16 = [v14 kilometers];
  sub_1BC947608(0, qword_1EDA16AF0);
  sub_1BCE185D0();
  (*(v5 + 16))(v10, a2, v4);
  __swift_storeEnumTagSinglePayload(v10, 0, 1, v4);
  swift_beginAccess();
  return sub_1BCACD8DC(v10, a1);
}

void sub_1BCACD358(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8)
{
  OUTLINED_FUNCTION_91(a1, a2, a3, a4, a5, a6, a7, a8, v18, v19, v20, v21, v22, v23, v24, v25, v26, v27);
  sub_1BCE1E150();
  v10 = 0;
  v11 = 0;
  OUTLINED_FUNCTION_9_17();
  v14 = v13 & v12;
  OUTLINED_FUNCTION_112();
  for (; v14; v10 ^= sub_1BCE1E150())
  {
    v15 = v11;
LABEL_7:
    v16 = __clz(__rbit64(v14));
    v14 &= v14 - 1;
    v17 = *(*(v8 + 48) + (v16 | (v15 << 6)));
    sub_1BCE1E100();
    MEMORY[0x1BFB30850](0);
    MEMORY[0x1BFB30850](v17);
  }

  while (1)
  {
    v15 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v15 >= v9)
    {
      MEMORY[0x1BFB30850](v10);
      return;
    }

    v14 = *(v8 + 56 + 8 * v15);
    ++v11;
    if (v14)
    {
      v11 = v15;
      goto LABEL_7;
    }
  }

  __break(1u);
}

void sub_1BCACD45C(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8)
{
  OUTLINED_FUNCTION_91(a1, a2, a3, a4, a5, a6, a7, a8, v19, v20, v21, v22, v23, v24, v25, v26, v27, v28);
  sub_1BCE1E150();
  v9 = 0;
  v10 = 0;
  OUTLINED_FUNCTION_9_17();
  v13 = v12 & v11;
  v15 = (v14 + 63) >> 6;
  if ((v12 & v11) != 0)
  {
    do
    {
      v16 = v10;
LABEL_7:
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
      v18 = *(*(v8 + 48) + (v17 | (v16 << 6)));
      sub_1BCE1E100();
      MEMORY[0x1BFB30850](v18 >> 7);
      MEMORY[0x1BFB30850](v18 & 0x7F);
      v9 ^= sub_1BCE1E150();
    }

    while (v13);
  }

  while (1)
  {
    v16 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v16 >= v15)
    {
      MEMORY[0x1BFB30850](v9);
      return;
    }

    v13 = *(v8 + 56 + 8 * v16);
    ++v10;
    if (v13)
    {
      v10 = v16;
      goto LABEL_7;
    }
  }

  __break(1u);
}

unint64_t sub_1BCACD588()
{
  result = qword_1EBD08B80;
  if (!qword_1EBD08B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD08B80);
  }

  return result;
}

uint64_t sub_1BCACD5DC(uint64_t a1)
{
  result = sub_1BC94FFF4(&qword_1EBD08B88, type metadata accessor for NSUnitLength.AttributedWeatherFormatStyle);
  *(a1 + 8) = result;
  return result;
}

_BYTE *_s18WeatherFormatUsageOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

void sub_1BCACD7C0()
{
  sub_1BC984B98();
  if (v0 <= 0x3F)
  {
    sub_1BCACD88C();
    if (v1 <= 0x3F)
    {
      sub_1BCE19280();
      if (v2 <= 0x3F)
      {
        sub_1BCE18D50();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1BCACD88C()
{
  if (!qword_1EBD08BA8)
  {
    v0 = sub_1BCE1DB10();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBD08BA8);
    }
  }
}

uint64_t sub_1BCACD8DC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08B78);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t OUTLINED_FUNCTION_53()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_93()
{

  return sub_1BCE18680();
}

uint64_t OUTLINED_FUNCTION_118()
{

  return sub_1BCE1E090();
}

uint64_t OUTLINED_FUNCTION_119()
{

  return sub_1BC95DCE8();
}

uint64_t OUTLINED_FUNCTION_121()
{

  return sub_1BCE1DAC0();
}

id OUTLINED_FUNCTION_122()
{
  v3 = *v1;

  return [v0 v3];
}

uint64_t RectangularWidgetBackground.init(model:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD07A80);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v14[-v5];
  v7 = type metadata accessor for WeatherConditionGradientModel();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v14[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1BCA2FC44(a1, v6);
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    sub_1BCA30000(v6);
    if (qword_1EDA19CB0 != -1)
    {
      swift_once();
    }

    memcpy(__dst, &xmmword_1EDA19CB8, sizeof(__dst));
    v10 = SkyBackgroundGradient.gradient()();
    result = sub_1BCA30000(a1);
    v12 = 1;
  }

  else
  {
    sub_1BCACDD54(v6, v9);
    type metadata accessor for WeatherConditionGradientManager();
    *(swift_initStackObject() + 16) = MEMORY[0x1E69E7CC8];
    WeatherConditionGradientManager.load(for:)(v9, __dst);
    v10 = SkyBackgroundGradient.gradient()();
    swift_setDeallocating();

    sub_1BCA30000(a1);
    v13 = *&v9[*(v7 + 20)];
    result = sub_1BCA69CDC(v9);
    v12 = v13 > 0.0;
  }

  *a2 = v10;
  *(a2 + 8) = v12;
  return result;
}

double RectangularWidgetBackground.body.getter@<D0>(uint64_t a1@<X8>)
{
  if (*(v1 + 8) == 1)
  {

    sub_1BCE1CF90();
    sub_1BCE1CFB0();
    OUTLINED_FUNCTION_0_28();
    sub_1BCE1CA90();
    sub_1BCE1CAE0();

    v3 = sub_1BCE1C250();
    HIBYTE(v19) = 0;
  }

  else
  {

    sub_1BCE1CF90();
    sub_1BCE1CFB0();
    v3 = OUTLINED_FUNCTION_0_28();
    HIBYTE(v19) = 1;
  }

  OUTLINED_FUNCTION_1_21(v3, v4, v5, v6, v7, v8, v9, v10, v12, v13, v14, v15, v16, v17, v18, v19, v20, v21, v22, v23);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08C08);
  sub_1BCACDDB8();
  sub_1BCACDE44();
  sub_1BCE1BF60();
  *a1 = v24;
  *(a1 + 16) = v25;
  result = *&v26;
  *(a1 + 32) = v26;
  *(a1 + 48) = v27;
  return result;
}

uint64_t sub_1BCACDD54(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WeatherConditionGradientModel();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1BCACDDB8()
{
  result = qword_1EBD08C10;
  if (!qword_1EBD08C10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD08C08);
    sub_1BCACDE44();
    sub_1BCACDE98();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD08C10);
  }

  return result;
}

unint64_t sub_1BCACDE44()
{
  result = qword_1EBD08C18;
  if (!qword_1EBD08C18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD08C18);
  }

  return result;
}

unint64_t sub_1BCACDE98()
{
  result = qword_1EBD08C20;
  if (!qword_1EBD08C20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD08C28);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD08C20);
  }

  return result;
}

uint64_t sub_1BCACDF18(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 9))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1BCACDF58(uint64_t result, int a2, int a3)
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

unint64_t sub_1BCACDFA8()
{
  result = qword_1EBD08C30;
  if (!qword_1EBD08C30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD08C38);
    sub_1BCACDDB8();
    sub_1BCACDE44();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD08C30);
  }

  return result;
}

uint64_t sub_1BCACE034@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_1BCE1BC20();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08438);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v14 - v9;
  sub_1BC952ABC(v2, &v14 - v9, &qword_1EBD08438);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_1BCE1D0D0();
    return (*(*(v11 - 8) + 32))(a1, v10, v11);
  }

  else
  {
    sub_1BCE1D8C0();
    v13 = sub_1BCE1C1F0();
    sub_1BCE1AC20();

    sub_1BCE1BC10();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t WeatherDayVarianceView.temperatureGradient.getter()
{
  type metadata accessor for WeatherDayVarianceView();
}

uint64_t sub_1BCACE3A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v38 = a2;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08C78);
  MEMORY[0x1EEE9AC00](v34);
  v4 = &v33 - v3;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08C80);
  MEMORY[0x1EEE9AC00](v35);
  v6 = &v33 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08C88);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v37 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v36 = &v33 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08C90);
  MEMORY[0x1EEE9AC00](v11);
  v33 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v33 - v14;
  v16 = *MEMORY[0x1E697F468];
  v17 = sub_1BCE1BD60();
  v18 = *(*(v17 - 8) + 104);
  v18(v15, v16, v17);
  sub_1BC99BA18();
  sub_1BCE1CF90();
  sub_1BCE1CFB0();
  sub_1BCE1B730();
  v19 = &v15[*(v11 + 52)];
  v20 = v40;
  *v19 = v39;
  *(v19 + 1) = v20;
  *(v19 + 4) = v41;
  *&v15[*(v11 + 56)] = 256;
  v21 = (a1 + *(type metadata accessor for WeatherDayVarianceView() + 20));
  if (*(v21 + 8) == 1)
  {
    v18(v6, v16, v17);

    sub_1BCE1CFD0();
    sub_1BCE1CFE0();
    sub_1BCE1B730();
    v22 = &v6[*(v11 + 52)];
    v23 = v43;
    *v22 = v42;
    *(v22 + 1) = v23;
    *(v22 + 4) = v44;
    *&v6[*(v11 + 56)] = 256;
    v6[*(v35 + 36)] = 1;
    sub_1BC952ABC(v6, v4, &qword_1EBD08C80);
    swift_storeEnumTagMultiPayload();
    sub_1BC997830();
    sub_1BCACEEE0();
    v24 = v36;
    sub_1BCE1BF60();
    sub_1BC94C05C(v6, &qword_1EBD08C80);
  }

  else
  {
    v25 = *v21;
    v26 = v21[8];

    v27 = sub_1BCE1CAB0();
    *v4 = v25;
    v4[8] = 0;
    *(v4 + 2) = v27;
    *(v4 + 3) = v26;
    v4[32] = 0;
    swift_storeEnumTagMultiPayload();
    sub_1BC997830();
    sub_1BCACEEE0();
    v24 = v36;
    sub_1BCE1BF60();
  }

  v28 = v33;
  sub_1BC952ABC(v15, v33, &qword_1EBD08C90);
  v29 = v37;
  sub_1BC952ABC(v24, v37, &qword_1EBD08C88);
  v30 = v38;
  sub_1BC952ABC(v28, v38, &qword_1EBD08C90);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08C98);
  sub_1BC952ABC(v29, v30 + *(v31 + 48), &qword_1EBD08C88);
  sub_1BC94C05C(v24, &qword_1EBD08C88);
  sub_1BC94C05C(v15, &qword_1EBD08C90);
  sub_1BC94C05C(v29, &qword_1EBD08C88);
  return sub_1BC94C05C(v28, &qword_1EBD08C90);
}

double sub_1BCACE888(uint64_t a1, char a2)
{
  result = *&a1;
  if (a2)
  {
    return 10.0;
  }

  return result;
}

uint64_t sub_1BCACE8A8(uint64_t a1, char a2, uint64_t a3, char a4)
{
  v6 = sub_1BCE1B690();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v15[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v15[-v11];
  sub_1BCE1B720();
  sub_1BCE1B720();
  sub_1BCE1CF70();
  v15[24] = a2 & 1;
  v15[16] = a4 & 1;
  sub_1BCE1B680();
  sub_1BCE1CF70();
  v15[8] = 0;
  v15[0] = 0;
  sub_1BCE1B680();
  v13 = *(v7 + 8);
  v13(v9, v6);
  return (v13)(v12, v6);
}

void (*sub_1BCACEB18(void *a1))(void *a1)
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  v2[4] = sub_1BCE1B480();
  return sub_1BCA286DC;
}

unint64_t sub_1BCACEBE8()
{
  result = qword_1EDA1EA20;
  if (!qword_1EDA1EA20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD08C40);
    sub_1BC957184(&qword_1EDA1EA30, &qword_1EBD08C60);
    sub_1BC957184(&unk_1EDA1E918, &qword_1EBD08C68);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA1EA20);
  }

  return result;
}

unint64_t sub_1BCACECF4()
{
  result = qword_1EDA1E9C0;
  if (!qword_1EDA1E9C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD08C70);
    sub_1BC997830();
    swift_getOpaqueTypeConformance2();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD08C40);
    sub_1BCACEBE8();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA1E9C0);
  }

  return result;
}

uint64_t sub_1BCACEDE4(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 73))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 64);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1BCACEE24(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 72) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 73) = 1;
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
      *(result + 64) = (a2 - 1);
      return result;
    }

    *(result + 73) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1BCACEE8C()
{
  result = qword_1EDA1E7A8[0];
  if (!qword_1EDA1E7A8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDA1E7A8);
  }

  return result;
}

unint64_t sub_1BCACEEE0()
{
  result = qword_1EDA1E9F8;
  if (!qword_1EDA1E9F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD08C80);
    sub_1BC957184(&unk_1EDA1EA58, &qword_1EBD08C90);
    sub_1BC99C898();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA1E9F8);
  }

  return result;
}

uint64_t SunriseSunsetDescriptionContext.init(sunrise:sunset:nextSunrise:nextSunset:timeZone:currentWeather:dailyForecast:isDayTime:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char a8@<W7>, uint64_t a9@<X8>)
{
  sub_1BCACF0E8(a1, a9);
  v17 = type metadata accessor for SunriseSunsetDescriptionContext();
  sub_1BCACF0E8(a2, a9 + v17[5]);
  sub_1BCACF0E8(a3, a9 + v17[6]);
  sub_1BCACF0E8(a4, a9 + v17[7]);
  v18 = v17[8];
  sub_1BCE19470();
  OUTLINED_FUNCTION_0_3();
  (*(v19 + 32))(a9 + v18, a5);
  v20 = v17[9];
  sub_1BCE196E0();
  OUTLINED_FUNCTION_0_3();
  (*(v21 + 32))(a9 + v20, a6);
  v22 = v17[10];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD085A8);
  OUTLINED_FUNCTION_0_3();
  result = (*(v23 + 32))(a9 + v22, a7);
  *(a9 + v17[11]) = a8;
  return result;
}

uint64_t sub_1BCACF0E8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD07868);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1BCACF180(uint64_t a1@<X8>)
{
  v2 = a1 + 1436;
  sub_1BCACF938();
  v4 = v3;
  sub_1BCACF938();
  *a1 = 0x4006666666666666;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0x3FF0000000000000;
  *(a1 + 24) = 48;
  *(a1 + 32) = xmmword_1BCE3BED0;
  *(a1 + 48) = xmmword_1BCE3BED0;
  *(a1 + 64) = 0x42C8000042480000;
  *(a1 + 72) = 0xC409800000000000;
  *(a1 + 80) = xmmword_1BCE3E630;
  *(a1 + 96) = xmmword_1BCE4A9E0;
  *(a1 + 112) = 0x3E851EB83E4CCCCCLL;
  *(a1 + 128) = xmmword_1BCE4A9F0;
  *(a1 + 144) = xmmword_1BCE4AA00;
  *(a1 + 160) = xmmword_1BCE4AA10;
  *(a1 + 176) = 1147207680;
  *(a1 + 184) = 0x3E4CCCCC3DF5C28FLL;
  *(a1 + 192) = xmmword_1BCE4AA20;
  *(a1 + 208) = xmmword_1BCE4AA30;
  *(a1 + 224) = xmmword_1BCE3C660;
  *(a1 + 240) = 0x4140000040A00000;
  *(a1 + 248) = 1132068864;
  *(a1 + 256) = 0x3E4CCCCD3DE147AELL;
  *(a1 + 264) = 0x40A0000041700000;
  *(a1 + 272) = 1101004800;
  __asm { FMOV            V0.4S, #1.0 }

  *(a1 + 288) = xmmword_1BCE3C7C0;
  *(a1 + 304) = _Q0;
  *(a1 + 320) = 0x4348000040C00000;
  *(a1 + 328) = 0x3E99999A3E19999ALL;
  *(a1 + 336) = 0x3F00000040A00000;
  *(a1 + 352) = xmmword_1BCE3C7C0;
  *(a1 + 368) = xmmword_1BCE3C700;
  *(a1 + 384) = 0;
  *(a1 + 388) = 0x3CA3D70A3F800000;
  *(a1 + 400) = xmmword_1BCE3BF20;
  *(a1 + 416) = 0x3F0000003F000000;
  *(a1 + 424) = 10;
  *(a1 + 432) = xmmword_1BCE3BF30;
  *(a1 + 448) = 0x3E4CCCCD3DCCCCCDLL;
  *(a1 + 464) = _Q0;
  *(a1 + 480) = xmmword_1BCE3D870;
  *(a1 + 496) = 0x43FA000040400000;
  *(a1 + 504) = 1116471296;
  *(a1 + 512) = 0x3E8000003DF5C28FLL;
  *(a1 + 528) = _Q0;
  *(a1 + 544) = _Q0;
  *(a1 + 560) = 0x4248000044BB8000;
  *(a1 + 568) = 0x3E4CCCCD3DA3D70ALL;
  *(a1 + 576) = xmmword_1BCE3C700;
  *(a1 + 592) = xmmword_1BCE3D880;
  *(a1 + 608) = 0x4100000040A00000;
  *(a1 + 624) = xmmword_1BCE3C700;
  *(a1 + 640) = xmmword_1BCE3D880;
  *(a1 + 656) = 0x4220000041200000;
  *(a1 + 664) = 0x3FC000003E99999ALL;
  *(a1 + 672) = 0x40A000003F800000;
  *(a1 + 688) = _Q0;
  *(a1 + 704) = 1065353216;
  *(a1 + 712) = 0x3F8000003F000000;
  *(a1 + 720) = 0x41860000415DEB85;
  *(a1 + 728) = 1100009177;
  *(a1 + 736) = 1;
  *(a1 + 744) = 4;
  *(a1 + 752) = xmmword_1BCE4AA40;
  *(a1 + 768) = 0xD000000000000010;
  *(a1 + 776) = 0x80000001BCE79860;
  *(a1 + 784) = 0xD000000000000014;
  *(a1 + 792) = 0x80000001BCE79880;
  *(a1 + 800) = 10;
  *(a1 + 816) = _Q0;
  *(a1 + 832) = 1065353216;
  *(a1 + 840) = 0x3F4CCCCD3ECCCCCDLL;
  *(a1 + 848) = 0x4160000041200000;
  *(a1 + 856) = 1082365648;
  *(a1 + 864) = 1;
  *(a1 + 872) = 4;
  *(a1 + 880) = xmmword_1BCE3E0B0;
  *(a1 + 896) = 0x2073756C756D7543;
  *(a1 + 904) = 0xEB000000004C202DLL;
  *(a1 + 912) = 0x5F73756C756D7543;
  *(a1 + 920) = 0xEF4C656C676E6953;
  *(a1 + 928) = 5;
  *(a1 + 944) = _Q0;
  *(a1 + 960) = 1065353216;
  *(a1 + 968) = 0x3F4CCCCD3E4CCCCDLL;
  *(a1 + 976) = 0x4100000040E00000;
  *(a1 + 984) = 1082130432;
  *(a1 + 992) = 1;
  *(a1 + 1000) = 6;
  *(a1 + 1008) = xmmword_1BCE4AA50;
  *(a1 + 1024) = 0x2073756C756D7543;
  *(a1 + 1032) = 0xEB000000004D202DLL;
  *(a1 + 1040) = 0x5F73756C756D7543;
  *(a1 + 1048) = 0xEF4D656C676E6953;
  *(a1 + 1056) = 15;
  *(a1 + 1072) = _Q0;
  *(a1 + 1088) = 1065353216;
  *(a1 + 1096) = 0x3F3333333EE66666;
  *(a1 + 1104) = 0x406000004009999ALL;
  *(a1 + 1112) = 1087630472;
  *(a1 + 1120) = 0;
  *(a1 + 1128) = 4;
  *(a1 + 1136) = xmmword_1BCE3D8A0;
  *(a1 + 1152) = 0x7970736957;
  *(a1 + 1160) = 0xE500000000000000;
  strcpy((a1 + 1168), "Wispy_Single");
  *(a1 + 1181) = 0;
  *(a1 + 1182) = -5120;
  *(a1 + 1184) = 6;
  *(a1 + 1200) = _Q0;
  *(a1 + 1216) = xmmword_1BCE4BED0;
  *(a1 + 1232) = 0;
  *(a1 + 1236) = 1;
  *(a1 + 1240) = 0x73757461727453;
  *(a1 + 1248) = 0xE700000000000000;
  *(a1 + 1256) = 0x5F73757461727453;
  *(a1 + 1264) = 0xEF74656B6E616C42;
  *(a1 + 1272) = 8;
  *(a1 + 1280) = 0;
  *(a1 + 1288) = 0x3FAA3D703F88F5C2;
  *(a1 + 1296) = 0x41A0000042B40000;
  *(a1 + 1304) = 0;
  *(a1 + 1312) = _Q0;
  *(a1 + 1328) = _Q0;
  *(a1 + 1344) = 0;
  *(a1 + 1352) = 0x40000000;
  *(a1 + 1360) = 0;
  *(a1 + 1368) = 2;
  *(a1 + 1408) = 0u;
  *(a1 + 1392) = 0u;
  *(a1 + 1376) = 0u;
  *(a1 + 1424) = 0x3F99999A3ECCCCCDLL;
  *(a1 + 1432) = 1;
  *v2 = xmmword_1BCE3BFC0;
  *(a1 + 1456) = 0x42DC000042B40000;
  *(a1 + 1472) = _Q0;
  *(a1 + 1488) = _Q0;
  *(a1 + 1504) = 1097859072;
  *(a1 + 1512) = 0x736168506E6F6F6DLL;
  *(a1 + 1520) = 0xEA00000000003065;
  *(a1 + 1528) = 1112014848;
  *(a1 + 1536) = _Q0;
  *(a1 + 1552) = xmmword_1BCE3F4F0;
  *(a1 + 1568) = 0x4248000042200000;
  *(a1 + 1584) = 0u;
  *(a1 + 1600) = xmmword_1BCE3D880;
  __asm { FMOV            V2.2S, #-30.0 }

  *(a1 + 1616) = -_D2;
  *(a1 + 1624) = 0x40000000;
  *(a1 + 1628) = 256;
  *(a1 + 1630) = 0u;
  *(v2 + 210) = 65793;
  *(a1 + 1650) = 257;
  *(a1 + 1652) = 1;
  *(a1 + 1656) = 0;
  *(a1 + 1657) = v12;
  *(a1 + 1659) = v13;
  *(a1 + 1660) = 1064397920;
  *(a1 + 1664) = 0x40C0000040A00000;
  *(a1 + 1672) = 3;
  *(a1 + 1680) = xmmword_1BCE499B0;
  *(a1 + 1696) = xmmword_1BCE4AA70;
  *(a1 + 1712) = xmmword_1BCE4AA80;
  *(a1 + 1728) = 0x3F0000003EB33333;
  *(a1 + 1736) = 0x3E800000453B8000;
  *(a1 + 1744) = 0u;
  *(a1 + 1760) = 9;
  *(a1 + 1776) = xmmword_1BCE3D8B0;
  *(a1 + 1792) = xmmword_1BCE3D8C0;
  *(a1 + 1808) = xmmword_1BCE3C7A0;
  *(a1 + 1824) = 1;
  *(a1 + 1828) = xmmword_1BCE3C060;
  *(a1 + 1844) = 1040187392;
  *(a1 + 1848) = 0x4100000041700000;
  *(a1 + 1856) = 3;
  *(a1 + 1864) = 0x40000000;
  *(a1 + 1872) = 0x408000003F400000;
  *(a1 + 1880) = 1109393408;
  *(a1 + 1888) = _Q0;
  *(a1 + 1904) = 0x3DCCCCCD00000000;
  *(a1 + 1912) = 1101004800;
  *(a1 + 1920) = 0;
  *(a1 + 1928) = 1106247680;
  *(a1 + 1936) = _Q0;
  *(a1 + 1952) = 1077936128;
  *(a1 + 1960) = 0x420C000041C80000;
  *(a1 + 1968) = xmmword_1BCE3E700;
  *(a1 + 1984) = 0x3F80000000000000;
  *(a1 + 1992) = 1061158912;
  *(a1 + 2000) = 0x3F4CCCCD3E4CCCCDLL;
  *(a1 + 2008) = 0x3F6666663F333333;
  *(a1 + 2016) = xmmword_1BCE3C7E0;
  *(a1 + 2096) = 0u;
  *(a1 + 2080) = 0u;
  *(a1 + 2064) = 0u;
  *(a1 + 2048) = 0u;
  *(a1 + 2032) = 0u;
  *(a1 + 2112) = 1056964608;
  *(a1 + 2120) = 0x3E2E147B3D8F5C29;
  *(a1 + 2128) = 0x400000003F800000;
  *(a1 + 2136) = 0x4080000040600000;
  *(a1 + 2144) = -1046478848;
  *(a1 + 2160) = _Q0;
  *(a1 + 2176) = _Q0;
  *(a1 + 2192) = 1041865114;
  *(a1 + 2200) = 10;
  *(a1 + 2208) = 0x40A000003FC00000;
  *(a1 + 2224) = xmmword_1BCE3C090;
  *(a1 + 2240) = xmmword_1BCE3C0A0;
  *(a1 + 2256) = _Q0;
  *(a1 + 2304) = 0;
  *(a1 + 2288) = 0u;
  *(a1 + 2272) = 0u;
  *(a1 + 2312) = v4;
  *(a1 + 2320) = v11;
}

double sub_1BCACF938()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD07858);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1BCE3EBD0;
  *(v0 + 48) = xmmword_1BCE3F510;
  *(v0 + 64) = 0x420C000043480000;
  *(v0 + 80) = xmmword_1BCE3F520;
  *(v0 + 96) = xmmword_1BCE3F530;
  *(v0 + 112) = xmmword_1BCE3F540;
  *(v0 + 128) = xmmword_1BCE3F550;
  *(v0 + 4176) = xmmword_1BCE4AC80;
  *(v0 + 4240) = xmmword_1BCE4ACC0;
  *(v0 + 4912) = xmmword_1BCE3CE40;
  *(v0 + 6128) = xmmword_1BCE3CE40;
  *(v0 + 4928) = 1149861888;
  *(v0 + 6144) = 1149861888;
  *(v0 + 4944) = xmmword_1BCE42DB0;
  *(v0 + 6160) = xmmword_1BCE42DB0;
  *(v0 + 4976) = xmmword_1BCE42DC0;
  *(v0 + 6192) = xmmword_1BCE42DC0;
  *(v0 + 4992) = xmmword_1BCE42DD0;
  *(v0 + 6208) = xmmword_1BCE42DD0;
  *(v0 + 5008) = xmmword_1BCE3EEF0;
  *(v0 + 6224) = xmmword_1BCE3EEF0;
  *(v0 + 5024) = xmmword_1BCE3EF00;
  *(v0 + 6240) = xmmword_1BCE3EF00;
  *(v0 + 5072) = xmmword_1BCE40190;
  *(v0 + 6288) = xmmword_1BCE40190;
  *(v0 + 5088) = xmmword_1BCE401A0;
  *(v0 + 6304) = xmmword_1BCE401A0;
  *(v0 + 5104) = xmmword_1BCE42E00;
  *(v0 + 6320) = xmmword_1BCE42E00;
  *(v0 + 5120) = xmmword_1BCE42E10;
  *(v0 + 6336) = xmmword_1BCE42E10;
  *(v0 + 5168) = xmmword_1BCE42E20;
  *(v0 + 6384) = xmmword_1BCE42E20;
  *(v0 + 5184) = xmmword_1BCE42E30;
  *(v0 + 6400) = xmmword_1BCE42E30;
  *(v0 + 5200) = xmmword_1BCE401B0;
  *(v0 + 6416) = xmmword_1BCE401B0;
  *(v0 + 5232) = xmmword_1BCE4BEF0;
  *(v0 + 6448) = xmmword_1BCE4BEF0;
  *(v0 + 5264) = xmmword_1BCE3E9D0;
  *(v0 + 6480) = xmmword_1BCE3E9D0;
  *(v0 + 5360) = xmmword_1BCE4AD00;
  *(v0 + 6576) = xmmword_1BCE4AD00;
  *(v0 + 5376) = xmmword_1BCE4AD10;
  *(v0 + 6592) = xmmword_1BCE4AD10;
  *(v0 + 5392) = xmmword_1BCE4AD20;
  *(v0 + 6608) = xmmword_1BCE4AD20;
  *(v0 + 5408) = xmmword_1BCE40180;
  *(v0 + 6624) = xmmword_1BCE40180;
  *(v0 + 5424) = xmmword_1BCE4AD30;
  *(v0 + 6640) = xmmword_1BCE4AD30;
  *(v0 + 5440) = xmmword_1BCE3F690;
  *(v0 + 6656) = xmmword_1BCE3F690;
  *(v0 + 5456) = xmmword_1BCE401C0;
  *(v0 + 6672) = xmmword_1BCE401C0;
  *(v0 + 5872) = xmmword_1BCE4AD40;
  *(v0 + 7088) = xmmword_1BCE4AD40;
  *(v0 + 5888) = xmmword_1BCE4AD50;
  *(v0 + 7104) = xmmword_1BCE4AD50;
  *(v0 + 5904) = xmmword_1BCE4AD60;
  *(v0 + 7120) = xmmword_1BCE4AD60;
  *(v0 + 3696) = xmmword_1BCE3EE30;
  *(v0 + 7344) = xmmword_1BCE3EE30;
  *(v0 + 3712) = 1145569280;
  *(v0 + 7360) = 1145569280;
  *(v0 + 3728) = xmmword_1BCE3E140;
  *(v0 + 7376) = xmmword_1BCE3E140;
  *(v0 + 3744) = xmmword_1BCE3E150;
  *(v0 + 7392) = xmmword_1BCE3E150;
  *(v0 + 3760) = xmmword_1BCE3F920;
  *(v0 + 7408) = xmmword_1BCE3F920;
  *(v0 + 3776) = xmmword_1BCE3F930;
  *(v0 + 7424) = xmmword_1BCE3F930;
  *(v0 + 3872) = xmmword_1BCE3F950;
  *(v0 + 7520) = xmmword_1BCE3F950;
  *(v0 + 3888) = xmmword_1BCE42CE0;
  *(v0 + 7536) = xmmword_1BCE42CE0;
  *(v0 + 3952) = xmmword_1BCE3F970;
  *(v0 + 7600) = xmmword_1BCE3F970;
  *(v0 + 3968) = xmmword_1BCE3F980;
  *(v0 + 7616) = xmmword_1BCE3F980;
  *(v0 + 3984) = xmmword_1BCE3F990;
  *(v0 + 7632) = xmmword_1BCE3F990;
  *(v0 + 4016) = xmmword_1BCE49480;
  *(v0 + 7664) = xmmword_1BCE49480;
  *(v0 + 4032) = 1063675494;
  *(v0 + 5248) = 1063675494;
  *(v0 + 6464) = 1063675494;
  *(v0 + 7680) = 1063675494;
  *(v0 + 4048) = xmmword_1BCE3CDC0;
  *(v0 + 7696) = xmmword_1BCE3CDC0;
  *(v0 + 4144) = xmmword_1BCE4AC60;
  *(v0 + 7792) = xmmword_1BCE4AC60;
  *(v0 + 4160) = xmmword_1BCE4AC70;
  *(v0 + 7808) = xmmword_1BCE4AC70;
  *(v0 + 7824) = xmmword_1BCE4AD70;
  *(v0 + 4192) = xmmword_1BCE4AC90;
  *(v0 + 7840) = xmmword_1BCE4AC90;
  *(v0 + 4208) = xmmword_1BCE4ACA0;
  *(v0 + 7856) = xmmword_1BCE4ACA0;
  *(v0 + 4224) = xmmword_1BCE4ACB0;
  *(v0 + 7872) = xmmword_1BCE4ACB0;
  *(v0 + 7888) = xmmword_1BCE4AD80;
  *(v0 + 4256) = xmmword_1BCE3E220;
  *(v0 + 5472) = xmmword_1BCE3E220;
  *(v0 + 6688) = xmmword_1BCE3E220;
  *(v0 + 7904) = xmmword_1BCE3E220;
  *(v0 + 4672) = xmmword_1BCE4ACE0;
  *(v0 + 8320) = xmmword_1BCE4ACE0;
  *(v0 + 4656) = xmmword_1BCE4ACD0;
  *(v0 + 4688) = xmmword_1BCE4ACD0;
  *(v0 + 8304) = xmmword_1BCE4ACD0;
  *(v0 + 8336) = xmmword_1BCE4ACD0;
  *(v0 + 4704) = xmmword_1BCE3DA70;
  *(v0 + 5920) = xmmword_1BCE3DA70;
  *(v0 + 7136) = xmmword_1BCE3DA70;
  *(v0 + 8352) = xmmword_1BCE3DA70;
  *(v0 + 2480) = xmmword_1BCE3F7B0;
  *(v0 + 8560) = xmmword_1BCE3F7B0;
  *(v0 + 2496) = 1137180672;
  *(v0 + 8576) = 1137180672;
  *(v0 + 2512) = xmmword_1BCE3F7C0;
  *(v0 + 8592) = xmmword_1BCE3F7C0;
  *(v0 + 2528) = xmmword_1BCE3F7D0;
  *(v0 + 8608) = xmmword_1BCE3F7D0;
  *(v0 + 2544) = xmmword_1BCE3F7E0;
  *(v0 + 8624) = xmmword_1BCE3F7E0;
  *(v0 + 2560) = xmmword_1BCE3F7F0;
  *(v0 + 8640) = xmmword_1BCE3F7F0;
  *(v0 + 2576) = xmmword_1BCE3E180;
  *(v0 + 3792) = xmmword_1BCE3E180;
  *(v0 + 7440) = xmmword_1BCE3E180;
  *(v0 + 8656) = xmmword_1BCE3E180;
  *(v0 + 2592) = xmmword_1BCE3CB90;
  *(v0 + 3808) = xmmword_1BCE3CB90;
  *(v0 + 7456) = xmmword_1BCE3CB90;
  *(v0 + 8672) = xmmword_1BCE3CB90;
  *(v0 + 2640) = xmmword_1BCE3F940;
  *(v0 + 3856) = xmmword_1BCE3F940;
  *(v0 + 7504) = xmmword_1BCE3F940;
  *(v0 + 8720) = xmmword_1BCE3F940;
  *(v0 + 2656) = xmmword_1BCE49460;
  *(v0 + 8736) = xmmword_1BCE49460;
  *(v0 + 2672) = xmmword_1BCE400E0;
  *(v0 + 8752) = xmmword_1BCE400E0;
  *(v0 + 2688) = xmmword_1BCE3F830;
  *(v0 + 8768) = xmmword_1BCE3F830;
  *(v0 + 2736) = xmmword_1BCE3F840;
  *(v0 + 8816) = xmmword_1BCE3F840;
  *(v0 + 2752) = xmmword_1BCE3F850;
  *(v0 + 8832) = xmmword_1BCE3F850;
  *(v0 + 2768) = xmmword_1BCE3F860;
  *(v0 + 8848) = xmmword_1BCE3F860;
  *(v0 + 2784) = xmmword_1BCE3F870;
  *(v0 + 8864) = xmmword_1BCE3F870;
  *(v0 + 2800) = xmmword_1BCE47B90;
  *(v0 + 8880) = xmmword_1BCE47B90;
  v1 = vdup_n_s32(0x3F4CCCCDu);
  *(v0 + 2816) = v1;
  *(v0 + 8896) = v1;
  *(v0 + 2928) = xmmword_1BCE4ABA0;
  *(v0 + 9008) = xmmword_1BCE4ABA0;
  *(v0 + 2944) = xmmword_1BCE4ABB0;
  *(v0 + 9024) = xmmword_1BCE4ABB0;
  *(v0 + 2960) = xmmword_1BCE4ABC0;
  *(v0 + 9040) = xmmword_1BCE4ABC0;
  *(v0 + 2976) = xmmword_1BCE4ABD0;
  *(v0 + 9056) = xmmword_1BCE4ABD0;
  *(v0 + 2992) = xmmword_1BCE4ABE0;
  *(v0 + 9072) = xmmword_1BCE4ABE0;
  *(v0 + 3008) = xmmword_1BCE4ABF0;
  *(v0 + 9088) = xmmword_1BCE4ABF0;
  *(v0 + 3024) = xmmword_1BCE4AC00;
  *(v0 + 9104) = xmmword_1BCE4AC00;
  *(v0 + 3040) = xmmword_1BCE4AC10;
  *(v0 + 9120) = xmmword_1BCE4AC10;
  *(v0 + 3440) = xmmword_1BCE4AC20;
  *(v0 + 9520) = xmmword_1BCE4AC20;
  *(v0 + 3456) = xmmword_1BCE42BF0;
  *(v0 + 9536) = xmmword_1BCE42BF0;
  *(v0 + 3472) = xmmword_1BCE4AC30;
  *(v0 + 9552) = xmmword_1BCE4AC30;
  *(v0 + 3488) = xmmword_1BCE4AC40;
  *(v0 + 9568) = xmmword_1BCE4AC40;
  *(v0 + 1712) = xmmword_1BCE4AB50;
  *(v0 + 10224) = xmmword_1BCE4AB50;
  *(v0 + 1728) = xmmword_1BCE4AB60;
  *(v0 + 10240) = xmmword_1BCE4AB60;
  *(v0 + 1744) = xmmword_1BCE4AB70;
  *(v0 + 10256) = xmmword_1BCE4AB70;
  *(v0 + 1808) = xmmword_1BCE4AB80;
  *(v0 + 10320) = xmmword_1BCE4AB80;
  *(v0 + 144) = xmmword_1BCE3F560;
  *(v0 + 160) = xmmword_1BCE3F570;
  *(v0 + 1264) = xmmword_1BCE3F510;
  *(v0 + 9776) = xmmword_1BCE3F510;
  *(v0 + 10992) = xmmword_1BCE3F510;
  __asm { FMOV            V6.2D, #1.0 }

  *(v0 + 1280) = 0x420C000043480000;
  *(v0 + 9792) = 0x420C000043480000;
  *(v0 + 11008) = 0x420C000043480000;
  *(v0 + 1296) = xmmword_1BCE3F520;
  *(v0 + 9808) = xmmword_1BCE3F520;
  *(v0 + 11024) = xmmword_1BCE3F520;
  *(v0 + 208) = xmmword_1BCE4AA90;
  *(v0 + 224) = xmmword_1BCE4AAA0;
  *(v0 + 1312) = xmmword_1BCE3F530;
  *(v0 + 9824) = xmmword_1BCE3F530;
  *(v0 + 11040) = xmmword_1BCE3F530;
  *(v0 + 240) = xmmword_1BCE3F590;
  *(v0 + 1328) = xmmword_1BCE3F540;
  *(v0 + 9840) = xmmword_1BCE3F540;
  *(v0 + 11056) = xmmword_1BCE3F540;
  *(v0 + 1344) = xmmword_1BCE3F550;
  *(v0 + 9856) = xmmword_1BCE3F550;
  *(v0 + 11072) = xmmword_1BCE3F550;
  *(v0 + 272) = xmmword_1BCE3F5A0;
  *(v0 + 288) = xmmword_1BCE3C9D0;
  *(v0 + 1360) = xmmword_1BCE3F560;
  *(v0 + 9872) = xmmword_1BCE3F560;
  *(v0 + 11088) = xmmword_1BCE3F560;
  *(v0 + 1376) = xmmword_1BCE3F570;
  *(v0 + 9888) = xmmword_1BCE3F570;
  *(v0 + 11104) = xmmword_1BCE3F570;
  *(v0 + 304) = xmmword_1BCE3F5B0;
  *(v0 + 320) = xmmword_1BCE3F5C0;
  *(v0 + 1424) = xmmword_1BCE4AA90;
  *(v0 + 9936) = xmmword_1BCE4AA90;
  *(v0 + 11152) = xmmword_1BCE4AA90;
  *(v0 + 1440) = xmmword_1BCE4AAA0;
  *(v0 + 9952) = xmmword_1BCE4AAA0;
  *(v0 + 11168) = xmmword_1BCE4AAA0;
  *(v0 + 336) = xmmword_1BCE3F5D0;
  *(v0 + 352) = xmmword_1BCE3F5E0;
  *(v0 + 1456) = xmmword_1BCE3F590;
  *(v0 + 9968) = xmmword_1BCE3F590;
  *(v0 + 11184) = xmmword_1BCE3F590;
  *(v0 + 368) = xmmword_1BCE4BEE0;
  *(v0 + 1488) = xmmword_1BCE3F5A0;
  *(v0 + 10000) = xmmword_1BCE3F5A0;
  *(v0 + 11216) = xmmword_1BCE3F5A0;
  result = 1.0;
  *(v0 + 1504) = xmmword_1BCE3C9D0;
  *(v0 + 4000) = xmmword_1BCE3C9D0;
  *(v0 + 5216) = xmmword_1BCE3C9D0;
  *(v0 + 6432) = xmmword_1BCE3C9D0;
  *(v0 + 7648) = xmmword_1BCE3C9D0;
  *(v0 + 10016) = xmmword_1BCE3C9D0;
  *(v0 + 11232) = xmmword_1BCE3C9D0;
  *(v0 + 1520) = xmmword_1BCE3F5B0;
  *(v0 + 8368) = _Q6;
  *(v0 + 10032) = xmmword_1BCE3F5B0;
  *(v0 + 11248) = xmmword_1BCE3F5B0;
  *(v0 + 1536) = xmmword_1BCE3F5C0;
  *(v0 + 8288) = xmmword_1BCE3DAE0;
  *(v0 + 0x2000) = _Q6;
  *(v0 + 8208) = _Q6;
  *(v0 + 8224) = _Q6;
  *(v0 + 8240) = _Q6;
  *(v0 + 8256) = xmmword_1BCE3C8C0;
  *(v0 + 8272) = _Q6;
  *(v0 + 8128) = _Q6;
  *(v0 + 8144) = _Q6;
  *(v0 + 8160) = _Q6;
  *(v0 + 8176) = _Q6;
  *(v0 + 10048) = xmmword_1BCE3F5C0;
  *(v0 + 11264) = xmmword_1BCE3F5C0;
  *(v0 + 8048) = _Q6;
  *(v0 + 8064) = _Q6;
  *(v0 + 8080) = _Q6;
  *(v0 + 8096) = xmmword_1BCE3DD90;
  *(v0 + 8112) = _Q6;
  *(v0 + 1552) = xmmword_1BCE3F5D0;
  *(v0 + 7968) = _Q6;
  *(v0 + 7984) = _Q6;
  *(v0 + 8000) = xmmword_1BCE3A880;
  *(v0 + 8016) = _Q6;
  *(v0 + 8032) = xmmword_1BCE3C8C0;
  *(v0 + 10064) = xmmword_1BCE3F5D0;
  *(v0 + 11280) = xmmword_1BCE3F5D0;
  *(v0 + 7920) = _Q6;
  *(v0 + 7936) = xmmword_1BCE3A880;
  *(v0 + 7952) = _Q6;
  *(v0 + 384) = 0x3F8000003F4CCCCDLL;
  *(v0 + 1568) = xmmword_1BCE3F5E0;
  *(v0 + 10080) = xmmword_1BCE3F5E0;
  *(v0 + 11296) = xmmword_1BCE3F5E0;
  *(v0 + 432) = 0u;
  *(v0 + 448) = 0u;
  *(v0 + 7728) = 0u;
  *(v0 + 7760) = _Q6;
  *(v0 + 7776) = xmmword_1BCE3DAE0;
  *(v0 + 1584) = xmmword_1BCE4BEE0;
  *(v0 + 7688) = 0x3FEF0AE2E0000000;
  *(v0 + 7712) = 0x3FF0000000000000;
  *(v0 + 7720) = 0;
  *(v0 + 7744) = 0u;
  *(v0 + 10096) = xmmword_1BCE4BEE0;
  *(v0 + 11312) = xmmword_1BCE4BEE0;
  *(v0 + 1600) = 0x3F8000003F4CCCCDLL;
  *(v0 + 10112) = 0x3F8000003F4CCCCDLL;
  *(v0 + 11328) = 0x3F8000003F4CCCCDLL;
  *(v0 + 7552) = _Q6;
  *(v0 + 7568) = _Q6;
  *(v0 + 7584) = _Q6;
  *(v0 + 1664) = 0u;
  *(v0 + 1648) = 0u;
  *(v0 + 2880) = 0u;
  *(v0 + 7472) = _Q6;
  *(v0 + 7488) = _Q6;
  *(v0 + 2864) = 0u;
  *(v0 + 7337) = *v13;
  *(v0 + 4096) = 0u;
  *(v0 + 4080) = 0u;
  *(v0 + 5312) = 0u;
  *(v0 + 5296) = 0u;
  *(v0 + 6528) = 0u;
  *(v0 + 6512) = 0u;
  *(v0 + 7328) = 0x4040800000000000;
  *(v0 + 7336) = 1;
  *(v0 + 7340) = *&v13[3];
  *(v0 + 7368) = 1058642330;
  *(v0 + 6992) = _Q6;
  *(v0 + 7256) = 0x3FF0000000000000;
  *(v0 + 7264) = _Q6;
  *(v0 + 7280) = _Q6;
  *(v0 + 7296) = _Q6;
  *(v0 + 7312) = 0x3FF0000000000000;
  *(v0 + 7168) = xmmword_1BCE3C8C0;
  *(v0 + 7184) = _Q6;
  *(v0 + 7200) = xmmword_1BCE3DAE0;
  *(v0 + 7216) = _Q6;
  *(v0 + 7232) = _Q6;
  *(v0 + 7248) = 0x4170000042480000;
  *(v0 + 7008) = _Q6;
  *(v0 + 7024) = _Q6;
  *(v0 + 7040) = xmmword_1BCE3C8C0;
  *(v0 + 7056) = _Q6;
  *(v0 + 7072) = xmmword_1BCE3DAE0;
  *(v0 + 7152) = _Q6;
  *(v0 + 8960) = 0u;
  *(v0 + 8944) = 0u;
  *(v0 + 10176) = 0u;
  *(v0 + 10160) = 0u;
  *(v0 + 11392) = 0u;
  *(v0 + 11376) = 0u;
  *(v0 + 6832) = _Q6;
  *(v0 + 6928) = _Q6;
  *(v0 + 6944) = _Q6;
  *(v0 + 6960) = _Q6;
  *(v0 + 6976) = _Q6;
  *(v0 + 6848) = _Q6;
  *(v0 + 6864) = _Q6;
  *(v0 + 6880) = xmmword_1BCE3DD90;
  *(v0 + 6896) = _Q6;
  *(v0 + 6912) = _Q6;
  *(v0 + 496) = xmmword_1BCE4AAC0;
  *(v0 + 512) = xmmword_1BCE4AAD0;
  *(v0 + 6752) = _Q6;
  *(v0 + 6768) = _Q6;
  *(v0 + 6784) = xmmword_1BCE3A880;
  *(v0 + 6800) = _Q6;
  *(v0 + 6816) = xmmword_1BCE3C8C0;
  *(v0 + 11440) = xmmword_1BCE4AAC0;
  *(v0 + 6704) = _Q6;
  *(v0 + 6720) = xmmword_1BCE3A880;
  *(v0 + 6736) = _Q6;
  *(v0 + 11456) = xmmword_1BCE4AAD0;
  *(v0 + 528) = xmmword_1BCE4AAE0;
  *(v0 + 544) = xmmword_1BCE4AAF0;
  *(v0 + 11472) = xmmword_1BCE4AAE0;
  *(v0 + 1760) = xmmword_1BCE4AAF0;
  *(v0 + 10272) = xmmword_1BCE4AAF0;
  *(v0 + 11488) = xmmword_1BCE4AAF0;
  *(v0 + 6496) = 0x3FF0000000000000;
  *(v0 + 6504) = 0;
  *(v0 + 6544) = _Q6;
  *(v0 + 6560) = xmmword_1BCE3DAE0;
  *(v0 + 560) = xmmword_1BCE3F630;
  *(v0 + 576) = xmmword_1BCE4AB00;
  *(v0 + 1776) = xmmword_1BCE3F630;
  *(v0 + 6472) = 0x3FF0000000000000;
  *(v0 + 10288) = xmmword_1BCE3F630;
  *(v0 + 11504) = xmmword_1BCE3F630;
  *(v0 + 1792) = xmmword_1BCE4AB00;
  *(v0 + 10304) = xmmword_1BCE4AB00;
  *(v0 + 11520) = xmmword_1BCE4AB00;
  *(v0 + 11536) = xmmword_1BCE4AB10;
  *(v0 + 592) = xmmword_1BCE4AB10;
  *(v0 + 608) = xmmword_1BCE4AB20;
  *(v0 + 1824) = xmmword_1BCE4AB20;
  *(v0 + 6352) = _Q6;
  *(v0 + 6368) = _Q6;
  *(v0 + 10336) = xmmword_1BCE4AB20;
  *(v0 + 11552) = xmmword_1BCE4AB20;
  *(v0 + 640) = xmmword_1BCE3A880;
  *(v0 + 704) = xmmword_1BCE3A880;
  *(v0 + 6256) = _Q6;
  *(v0 + 6272) = _Q6;
  *(v0 + 1856) = xmmword_1BCE3A880;
  *(v0 + 1920) = xmmword_1BCE3A880;
  *(v0 + 3072) = xmmword_1BCE3A880;
  *(v0 + 6176) = _Q6;
  *(v0 + 6064) = _Q6;
  *(v0 + 6121) = *v12;
  *(v0 + 6152) = 1062836634;
  *(v0 + 6080) = _Q6;
  *(v0 + 6096) = 0x3FF0000000000000;
  *(v0 + 6112) = 0x404E000000000000;
  *(v0 + 6120) = 1;
  *(v0 + 6124) = *&v12[3];
  *(v0 + 5984) = xmmword_1BCE3DAE0;
  *(v0 + 6000) = _Q6;
  *(v0 + 6016) = _Q6;
  *(v0 + 6032) = 0x4170000042480000;
  *(v0 + 6040) = 0x3FF0000000000000;
  *(v0 + 6048) = _Q6;
  *(v0 + 3136) = xmmword_1BCE3A880;
  *(v0 + 4288) = xmmword_1BCE3A880;
  *(v0 + 4352) = xmmword_1BCE3A880;
  *(v0 + 5936) = _Q6;
  *(v0 + 5952) = xmmword_1BCE3C8C0;
  *(v0 + 5968) = _Q6;
  *(v0 + 5504) = xmmword_1BCE3A880;
  *(v0 + 5792) = _Q6;
  *(v0 + 5808) = _Q6;
  *(v0 + 5824) = xmmword_1BCE3C8C0;
  *(v0 + 5840) = _Q6;
  *(v0 + 5856) = xmmword_1BCE3DAE0;
  *(v0 + 5696) = _Q6;
  *(v0 + 5712) = _Q6;
  *(v0 + 5728) = _Q6;
  *(v0 + 5744) = _Q6;
  *(v0 + 5760) = _Q6;
  *(v0 + 5776) = _Q6;
  *(v0 + 5600) = xmmword_1BCE3C8C0;
  *(v0 + 5616) = _Q6;
  *(v0 + 5632) = _Q6;
  *(v0 + 5648) = _Q6;
  *(v0 + 5664) = xmmword_1BCE3DD90;
  *(v0 + 5680) = _Q6;
  *(v0 + 5520) = _Q6;
  *(v0 + 5536) = _Q6;
  *(v0 + 5552) = _Q6;
  *(v0 + 5568) = xmmword_1BCE3A880;
  *(v0 + 5584) = _Q6;
  *(v0 + 9152) = xmmword_1BCE3A880;
  *(v0 + 9216) = xmmword_1BCE3A880;
  *(v0 + 10368) = xmmword_1BCE3A880;
  *(v0 + 10432) = xmmword_1BCE3A880;
  *(v0 + 11584) = xmmword_1BCE3A880;
  *(v0 + 11648) = xmmword_1BCE3A880;
  *(v0 + 5488) = _Q6;
  *(v0 + 800) = xmmword_1BCE3DD90;
  *(v0 + 2016) = xmmword_1BCE3DD90;
  *(v0 + 5328) = _Q6;
  *(v0 + 5344) = xmmword_1BCE3DAE0;
  *(v0 + 3232) = xmmword_1BCE3DD90;
  *(v0 + 4448) = xmmword_1BCE3DD90;
  *(v0 + 5280) = 0x3FF0000000000000;
  *(v0 + 5288) = 0;
  *(v0 + 9312) = xmmword_1BCE3DD90;
  *(v0 + 10528) = xmmword_1BCE3DD90;
  *(v0 + 11744) = xmmword_1BCE3DD90;
  *(v0 + 1024) = xmmword_1BCE4AB30;
  *(v0 + 2240) = xmmword_1BCE4AB30;
  *(v0 + 5256) = 0x3FF0000000000000;
  *(v0 + 10752) = xmmword_1BCE4AB30;
  *(v0 + 11968) = xmmword_1BCE4AB30;
  *(v0 + 1008) = xmmword_1BCE42D70;
  *(v0 + 1040) = xmmword_1BCE42D70;
  *(v0 + 5136) = _Q6;
  *(v0 + 5152) = _Q6;
  *(v0 + 2224) = xmmword_1BCE42D70;
  *(v0 + 2256) = xmmword_1BCE42D70;
  *(v0 + 5056) = _Q6;
  *(v0 + 10736) = xmmword_1BCE42D70;
  *(v0 + 10768) = xmmword_1BCE42D70;
  *(v0 + 11952) = xmmword_1BCE42D70;
  *(v0 + 11984) = xmmword_1BCE42D70;
  *(v0 + 1056) = xmmword_1BCE4AB40;
  *(v0 + 4960) = _Q6;
  *(v0 + 5040) = _Q6;
  *(v0 + 2272) = xmmword_1BCE4AB40;
  *(v0 + 10784) = xmmword_1BCE4AB40;
  *(v0 + 12000) = xmmword_1BCE4AB40;
  *(v0 + 4896) = 0x404E000000000000;
  *(v0 + 4904) = 0;
  *(v0 + 4905) = *v11;
  *(v0 + 4908) = *&v11[3];
  *(v0 + 4936) = 1062836634;
  *(v0 + 4816) = 0x4170000042480000;
  *(v0 + 4824) = 0x3FF0000000000000;
  *(v0 + 4832) = _Q6;
  *(v0 + 4848) = _Q6;
  *(v0 + 4864) = _Q6;
  *(v0 + 4880) = 0x3FF0000000000000;
  *(v0 + 4720) = _Q6;
  *(v0 + 4736) = xmmword_1BCE3C8C0;
  *(v0 + 4752) = _Q6;
  *(v0 + 4768) = xmmword_1BCE3DAE0;
  *(v0 + 4784) = _Q6;
  *(v0 + 4800) = _Q6;
  *(v0 + 736) = xmmword_1BCE3C8C0;
  *(v0 + 960) = xmmword_1BCE3C8C0;
  *(v0 + 1088) = xmmword_1BCE3C8C0;
  *(v0 + 1952) = xmmword_1BCE3C8C0;
  *(v0 + 4624) = _Q6;
  *(v0 + 4640) = xmmword_1BCE3DAE0;
  *(v0 + 4528) = _Q6;
  *(v0 + 4544) = _Q6;
  *(v0 + 4560) = _Q6;
  *(v0 + 4576) = _Q6;
  *(v0 + 4592) = _Q6;
  *(v0 + 4608) = xmmword_1BCE3C8C0;
  *(v0 + 2176) = xmmword_1BCE3C8C0;
  *(v0 + 4432) = _Q6;
  *(v0 + 4464) = _Q6;
  *(v0 + 4480) = _Q6;
  *(v0 + 4496) = _Q6;
  *(v0 + 4512) = _Q6;
  *(v0 + 2304) = xmmword_1BCE3C8C0;
  *(v0 + 4336) = _Q6;
  *(v0 + 4368) = _Q6;
  *(v0 + 4384) = xmmword_1BCE3C8C0;
  *(v0 + 4400) = _Q6;
  *(v0 + 4416) = _Q6;
  *(v0 + 3168) = xmmword_1BCE3C8C0;
  *(v0 + 3392) = xmmword_1BCE3C8C0;
  *(v0 + 3520) = xmmword_1BCE3C8C0;
  *(v0 + 4272) = _Q6;
  *(v0 + 4304) = _Q6;
  *(v0 + 4320) = _Q6;
  *(v0 + 4064) = 0x3FF0000000000000;
  *(v0 + 4072) = 0;
  *(v0 + 4112) = _Q6;
  *(v0 + 4128) = xmmword_1BCE3DAE0;
  *(v0 + 8384) = xmmword_1BCE3C8C0;
  *(v0 + 9248) = xmmword_1BCE3C8C0;
  *(v0 + 9472) = xmmword_1BCE3C8C0;
  *(v0 + 9600) = xmmword_1BCE3C8C0;
  *(v0 + 10464) = xmmword_1BCE3C8C0;
  *(v0 + 10688) = xmmword_1BCE3C8C0;
  *(v0 + 10816) = xmmword_1BCE3C8C0;
  *(v0 + 11680) = xmmword_1BCE3C8C0;
  *(v0 + 11904) = xmmword_1BCE3C8C0;
  *(v0 + 12032) = xmmword_1BCE3C8C0;
  *(v0 + 480) = xmmword_1BCE3DAE0;
  *(v0 + 992) = xmmword_1BCE3DAE0;
  *(v0 + 1120) = xmmword_1BCE3DAE0;
  *(v0 + 4040) = 0x3FEF0AE2E0000000;
  *(v0 + 1696) = xmmword_1BCE3DAE0;
  *(v0 + 2208) = xmmword_1BCE3DAE0;
  *(v0 + 2336) = xmmword_1BCE3DAE0;
  *(v0 + 3904) = _Q6;
  *(v0 + 3920) = _Q6;
  *(v0 + 3936) = _Q6;
  *(v0 + 2912) = xmmword_1BCE3DAE0;
  *(v0 + 3424) = xmmword_1BCE3DAE0;
  *(v0 + 3536) = _Q6;
  *(v0 + 3552) = xmmword_1BCE3DAE0;
  *(v0 + 3824) = _Q6;
  *(v0 + 3840) = _Q6;
  *(v0 + 3568) = _Q6;
  *(v0 + 3584) = _Q6;
  *(v0 + 3600) = 0x4170000042480000;
  *(v0 + 3608) = 0x3FF0000000000000;
  *(v0 + 3616) = _Q6;
  *(v0 + 3632) = _Q6;
  *(v0 + 3689) = *v10;
  *(v0 + 3692) = *&v10[3];
  *(v0 + 3720) = 1058642330;
  *(v0 + 3648) = _Q6;
  *(v0 + 3664) = 0x3FF0000000000000;
  *(v0 + 3680) = 0x4040800000000000;
  *(v0 + 3688) = 0;
  *(v0 + 8416) = xmmword_1BCE3DAE0;
  *(v0 + 8992) = xmmword_1BCE3DAE0;
  *(v0 + 9504) = xmmword_1BCE3DAE0;
  *(v0 + 9632) = xmmword_1BCE3DAE0;
  *(v0 + 10208) = xmmword_1BCE3DAE0;
  *(v0 + 10720) = xmmword_1BCE3DAE0;
  *(v0 + 10848) = xmmword_1BCE3DAE0;
  *(v0 + 11424) = xmmword_1BCE3DAE0;
  *(v0 + 11936) = xmmword_1BCE3DAE0;
  *(v0 + 12064) = xmmword_1BCE3DAE0;
  *(v0 + 1168) = 0x4170000042480000;
  *(v0 + 2384) = 0x4170000042480000;
  *(v0 + 3248) = _Q6;
  *(v0 + 3504) = _Q6;
  *(v0 + 3264) = _Q6;
  *(v0 + 3280) = _Q6;
  *(v0 + 3344) = _Q6;
  *(v0 + 3360) = _Q6;
  *(v0 + 3376) = _Q6;
  *(v0 + 3408) = _Q6;
  *(v0 + 3296) = _Q6;
  *(v0 + 3312) = _Q6;
  *(v0 + 3328) = _Q6;
  *(v0 + 8464) = 0x4170000042480000;
  *(v0 + 9680) = 0x4170000042480000;
  *(v0 + 10896) = 0x4170000042480000;
  *(v0 + 12112) = 0x4170000042480000;
  *(v0 + 464) = _Q6;
  *(v0 + 3152) = _Q6;
  *(v0 + 3184) = _Q6;
  *(v0 + 3200) = _Q6;
  *(v0 + 3216) = _Q6;
  *(v0 + 624) = _Q6;
  *(v0 + 672) = _Q6;
  *(v0 + 688) = _Q6;
  *(v0 + 3056) = _Q6;
  *(v0 + 3088) = _Q6;
  *(v0 + 3104) = _Q6;
  *(v0 + 3120) = _Q6;
  *(v0 + 720) = _Q6;
  *(v0 + 768) = _Q6;
  *(v0 + 784) = _Q6;
  *(v0 + 944) = _Q6;
  *(v0 + 976) = _Q6;
  *(v0 + 176) = _Q6;
  *(v0 + 192) = _Q6;
  *(v0 + 256) = _Q6;
  *(v0 + 400) = _Q6;
  *(v0 + 656) = _Q6;
  *(v0 + 2896) = _Q6;
  *(v0 + 752) = _Q6;
  *(v0 + 2824) = 0x3FF0000000000000;
  *(v0 + 2832) = _Q6;
  *(v0 + 2848) = 0x3FF0000000000000;
  *(v0 + 2856) = 0;
  *(v0 + 816) = _Q6;
  *(v0 + 832) = _Q6;
  *(v0 + 848) = _Q6;
  *(v0 + 864) = _Q6;
  *(v0 + 2704) = _Q6;
  *(v0 + 2720) = _Q6;
  *(v0 + 880) = _Q6;
  *(v0 + 896) = _Q6;
  *(v0 + 912) = _Q6;
  *(v0 + 928) = _Q6;
  *(v0 + 2608) = _Q6;
  *(v0 + 2624) = _Q6;
  *(v0 + 1072) = _Q6;
  *(v0 + 1104) = _Q6;
  *(v0 + 1136) = _Q6;
  *(v0 + 1152) = _Q6;
  *(v0 + 1176) = 0x3FF0000000000000;
  *(v0 + 1184) = _Q6;
  *(v0 + 1200) = _Q6;
  *(v0 + 1216) = _Q6;
  *(v0 + 2464) = 0xC018000000000000;
  *(v0 + 2472) = 0;
  *(v0 + 2473) = *v9;
  *(v0 + 2476) = *&v9[3];
  *(v0 + 2504) = 1053609165;
  *(v0 + 1232) = 0x3FF0000000000000;
  *(v0 + 2392) = 0x3FF0000000000000;
  *(v0 + 2400) = _Q6;
  *(v0 + 2416) = _Q6;
  *(v0 + 2432) = _Q6;
  *(v0 + 2448) = 0x3FF0000000000000;
  *(v0 + 1248) = 0xC031FFFFFFFFFFFFLL;
  *(v0 + 1256) = 0;
  *(v0 + 2368) = _Q6;
  *(v0 + 1257) = *v8;
  *(v0 + 1260) = *&v8[3];
  *(v0 + 2288) = _Q6;
  *(v0 + 2320) = _Q6;
  *(v0 + 2352) = _Q6;
  *(v0 + 1288) = 1036831949;
  *(v0 + 1392) = _Q6;
  *(v0 + 1408) = _Q6;
  *(v0 + 1472) = _Q6;
  *(v0 + 1608) = 0x3FF0000000000000;
  *(v0 + 2192) = _Q6;
  *(v0 + 1616) = _Q6;
  *(v0 + 2096) = _Q6;
  *(v0 + 2112) = _Q6;
  *(v0 + 2128) = _Q6;
  *(v0 + 2144) = _Q6;
  *(v0 + 2160) = _Q6;
  *(v0 + 1632) = 0x3FF0000000000000;
  *(v0 + 2000) = _Q6;
  *(v0 + 2032) = _Q6;
  *(v0 + 2048) = _Q6;
  *(v0 + 2064) = _Q6;
  *(v0 + 2080) = _Q6;
  *(v0 + 1640) = 0;
  *(v0 + 1680) = _Q6;
  *(v0 + 1904) = _Q6;
  *(v0 + 1936) = _Q6;
  *(v0 + 1968) = _Q6;
  *(v0 + 1984) = _Q6;
  *(v0 + 1840) = _Q6;
  *(v0 + 1872) = _Q6;
  *(v0 + 1888) = _Q6;
  *(v0 + 8400) = _Q6;
  *(v0 + 8432) = _Q6;
  *(v0 + 8448) = _Q6;
  *(v0 + 8480) = _Q6;
  *(v0 + 8496) = _Q6;
  *(v0 + 8512) = _Q6;
  *(v0 + 8688) = _Q6;
  *(v0 + 8704) = _Q6;
  *(v0 + 8784) = _Q6;
  *(v0 + 8800) = _Q6;
  *(v0 + 8912) = _Q6;
  *(v0 + 8976) = _Q6;
  *(v0 + 9136) = _Q6;
  *(v0 + 9168) = _Q6;
  *(v0 + 9184) = _Q6;
  *(v0 + 9200) = _Q6;
  *(v0 + 9232) = _Q6;
  *(v0 + 9264) = _Q6;
  *(v0 + 9280) = _Q6;
  *(v0 + 9296) = _Q6;
  *(v0 + 9328) = _Q6;
  *(v0 + 9344) = _Q6;
  *(v0 + 9360) = _Q6;
  *(v0 + 9376) = _Q6;
  *(v0 + 9392) = _Q6;
  *(v0 + 9408) = _Q6;
  *(v0 + 9424) = _Q6;
  *(v0 + 9440) = _Q6;
  *(v0 + 9456) = _Q6;
  *(v0 + 9488) = _Q6;
  *(v0 + 9584) = _Q6;
  *(v0 + 9616) = _Q6;
  *(v0 + 9648) = _Q6;
  *(v0 + 9664) = _Q6;
  *(v0 + 9696) = _Q6;
  *(v0 + 9712) = _Q6;
  *(v0 + 9728) = _Q6;
  *(v0 + 9904) = _Q6;
  *(v0 + 9920) = _Q6;
  *(v0 + 9984) = _Q6;
  *(v0 + 10128) = _Q6;
  *(v0 + 10192) = _Q6;
  *(v0 + 10352) = _Q6;
  *(v0 + 10384) = _Q6;
  *(v0 + 10400) = _Q6;
  *(v0 + 10416) = _Q6;
  *(v0 + 10448) = _Q6;
  *(v0 + 10480) = _Q6;
  *(v0 + 10496) = _Q6;
  *(v0 + 10512) = _Q6;
  *(v0 + 10544) = _Q6;
  *(v0 + 10560) = _Q6;
  *(v0 + 10576) = _Q6;
  *(v0 + 10592) = _Q6;
  *(v0 + 10608) = _Q6;
  *(v0 + 10624) = _Q6;
  *(v0 + 10640) = _Q6;
  *(v0 + 10656) = _Q6;
  *(v0 + 10672) = _Q6;
  *(v0 + 10704) = _Q6;
  *(v0 + 10800) = _Q6;
  *(v0 + 10832) = _Q6;
  *(v0 + 10864) = _Q6;
  *(v0 + 10880) = _Q6;
  *(v0 + 10912) = _Q6;
  *(v0 + 10928) = _Q6;
  *(v0 + 10944) = _Q6;
  *(v0 + 11120) = _Q6;
  *(v0 + 11136) = _Q6;
  *(v0 + 11200) = _Q6;
  *(v0 + 11344) = _Q6;
  *(v0 + 11408) = _Q6;
  *(v0 + 11568) = _Q6;
  *(v0 + 11600) = _Q6;
  *(v0 + 11616) = _Q6;
  *(v0 + 11632) = _Q6;
  *(v0 + 11664) = _Q6;
  *(v0 + 11696) = _Q6;
  *(v0 + 11712) = _Q6;
  *(v0 + 11728) = _Q6;
  *(v0 + 11760) = _Q6;
  *(v0 + 11776) = _Q6;
  *(v0 + 11792) = _Q6;
  *(v0 + 11808) = _Q6;
  *(v0 + 11824) = _Q6;
  *(v0 + 11840) = _Q6;
  *(v0 + 11856) = _Q6;
  *(v0 + 11872) = _Q6;
  *(v0 + 11888) = _Q6;
  *(v0 + 11920) = _Q6;
  *(v0 + 12016) = _Q6;
  *(v0 + 12048) = _Q6;
  *(v0 + 12080) = _Q6;
  *(v0 + 12096) = _Q6;
  *(v0 + 12128) = _Q6;
  *(v0 + 12144) = _Q6;
  *(v0 + 12160) = _Q6;
  *(v0 + 416) = 0x3FF0000000000000;
  *(v0 + 424) = 0;
  *(v0 + 32) = 0xC056800000000000;
  *(v0 + 392) = 0x3FF0000000000000;
  *(v0 + 40) = 0;
  *(v0 + 72) = 1036831949;
  *(v0 + 8472) = 0x3FF0000000000000;
  *(v0 + 8553) = *v14;
  *(v0 + 8528) = 0x3FF0000000000000;
  *(v0 + 8544) = 0xC017FFFFFFFFFFE8;
  *(v0 + 8552) = 1;
  *(v0 + 8556) = *&v14[3];
  *(v0 + 8584) = 1053609165;
  *(v0 + 8904) = 0x3FF0000000000000;
  *(v0 + 8928) = 0x3FF0000000000000;
  *(v0 + 8936) = 0;
  *(v0 + 9688) = 0x3FF0000000000000;
  *(v0 + 9744) = 0x3FF0000000000000;
  *(v0 + 9760) = 0xC032000000000004;
  *(v0 + 9769) = *v15;
  *(v0 + 9768) = 1;
  *(v0 + 9772) = *&v15[3];
  *(v0 + 9800) = 1036831949;
  *(v0 + 10120) = 0x3FF0000000000000;
  *(v0 + 10144) = 0x3FF0000000000000;
  *(v0 + 10152) = 0;
  *(v0 + 10904) = 0x3FF0000000000000;
  *(v0 + 10960) = 0x3FF0000000000000;
  *(v0 + 10976) = 0xC056800000000000;
  *(v0 + 10984) = 1;
  *(v0 + 10985) = *v16;
  *(v0 + 10988) = *&v16[3];
  *(v0 + 11016) = 1036831949;
  *(v0 + 11336) = 0x3FF0000000000000;
  *(v0 + 11360) = 0x3FF0000000000000;
  *(v0 + 11368) = 0;
  *(v0 + 12120) = 0x3FF0000000000000;
  *(v0 + 12176) = 0x3FF0000000000000;
  return result;
}

uint64_t sub_1BCAD0ADC(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD085A8);
  v4 = MEMORY[0x1EEE9AC00](v3);
  (*(v6 + 16))(&v9 - v5, a1, v3, v4);
  sub_1BC957184(&qword_1EDA1EF18, &qword_1EBD085A8);
  v10 = sub_1BCE1D4D0();
  sub_1BCAD267C(&v10);
  v7 = v10;
  if (v1)
  {
  }

  return v7;
}

void sub_1BCAD0C20()
{
  OUTLINED_FUNCTION_18_0();
  v35 = v0;
  v3 = v2;
  v32 = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08CB8);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v31 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08CC0);
  OUTLINED_FUNCTION_14(v9);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v31 - v11;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08CC8);
  OUTLINED_FUNCTION_2();
  v14 = v13;
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v31 - v16;
  v33 = &v31 - v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08CD0);
  OUTLINED_FUNCTION_2();
  v36 = v18;
  OUTLINED_FUNCTION_7_0();
  v20 = MEMORY[0x1EEE9AC00](v19);
  (*(v14 + 16))(v17, v35, v34, v20);
  sub_1BC957184(&qword_1EDA1EC18, &qword_1EBD08CC8);
  sub_1BCE1D4B0();
  sub_1BC957184(&qword_1EDA1EC20, &qword_1EBD08CD0);
  while (1)
  {
    sub_1BCE1DB30();
    if (__swift_getEnumTagSinglePayload(v12, 1, v5) == 1)
    {
      v22 = OUTLINED_FUNCTION_10_17();
      v23(v22);
      goto LABEL_9;
    }

    sub_1BCAD27E0(v12, v8);
    v21 = v3(v8);
    if (v1)
    {
      sub_1BC94C05C(v8, &qword_1EBD08CB8);
      v24 = OUTLINED_FUNCTION_10_17();
      v25(v24);
      goto LABEL_10;
    }

    if (v21)
    {
      break;
    }

    sub_1BC94C05C(v8, &qword_1EBD08CB8);
  }

  v26 = OUTLINED_FUNCTION_10_17();
  v27(v26);
  sub_1BCAD27E0(v8, v32);
LABEL_9:
  v28 = OUTLINED_FUNCTION_28_1();
  __swift_storeEnumTagSinglePayload(v28, v29, v30, v5);
LABEL_10:
  OUTLINED_FUNCTION_20_9();
  OUTLINED_FUNCTION_17_1();
}

void sub_1BCAD0F84()
{
  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_26_5(v1, v2, v3);
  v4 = sub_1BCE195D0();
  OUTLINED_FUNCTION_2();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_3_0();
  v41 = v8;
  OUTLINED_FUNCTION_15();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_25_4(v10, v11, v12, v13, v14, v15, v16, v17, v36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD085A0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_16_17();
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08CB0) - 8;
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v20);
  v21 = OUTLINED_FUNCTION_12_17();
  v22(v21);
  v23 = v4;
  OUTLINED_FUNCTION_3_29();
  v24 = &off_1BCE48AE0;
  sub_1BC957184(v25, &qword_1EBD085A0);
  sub_1BCE1D4B0();
  v26 = *(v19 + 44);
  OUTLINED_FUNCTION_2_21();
  sub_1BC957184(v27, &qword_1EBD085A0);
  OUTLINED_FUNCTION_21_9();
  while (1)
  {
    OUTLINED_FUNCTION_29_2();
    sub_1BCE1D750();
    if (*&v0[v26] == v40)
    {
      sub_1BC94C05C(v0, &qword_1EBD08CB0);
      v34 = 1;
      v24 = v37;
      goto LABEL_9;
    }

    OUTLINED_FUNCTION_23_7();
    v28 = OUTLINED_FUNCTION_19_10();
    v29(v28);
    (v0)(&v40, 0);
    OUTLINED_FUNCTION_30_0();
    v30 = OUTLINED_FUNCTION_11_18();
    v23(v30);
    v31 = v38(v0);
    if (v39)
    {
      MEMORY[0xC00059ABA](v41, v6);
      sub_1BC94C05C(v0, &qword_1EBD08CB0);
      goto LABEL_10;
    }

    if (v31)
    {
      break;
    }

    v32 = OUTLINED_FUNCTION_18_11();
    v33(v32);
  }

  sub_1BC94C05C(v0, &qword_1EBD08CB0);
  v35 = OUTLINED_FUNCTION_17_11();
  v23(v35);
  v23 = v6;
  v34 = 0;
LABEL_9:
  __swift_storeEnumTagSinglePayload(v24, v34, 1, v23);
LABEL_10:
  OUTLINED_FUNCTION_17_1();
}

void sub_1BCAD12A0()
{
  OUTLINED_FUNCTION_18_0();
  v2 = v1;
  v20 = v4;
  v21 = v3;
  v6 = v5(0);
  OUTLINED_FUNCTION_2();
  v8 = v7;
  OUTLINED_FUNCTION_7_0();
  v10 = MEMORY[0x1EEE9AC00](v9);
  v12 = &v20 - v11;
  v13 = 0;
  v14 = *(v2 + 16);
  v15 = (v8 + 8);
  while (v14 != v13)
  {
    (*(v8 + 16))(v12, v2 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v13, v6, v10);
    v16 = v21(v12);
    if (v0)
    {
      (*v15)(v12, v6);
      goto LABEL_10;
    }

    if (v16)
    {
      (*(v8 + 32))(v20, v12, v6);
      break;
    }

    (*v15)(v12, v6);
    ++v13;
  }

  v17 = OUTLINED_FUNCTION_28_1();
  __swift_storeEnumTagSinglePayload(v17, v18, v19, v6);
LABEL_10:
  OUTLINED_FUNCTION_20_9();
  OUTLINED_FUNCTION_17_1();
}

void sub_1BCAD1474()
{
  OUTLINED_FUNCTION_18_0();
  v2 = v1;
  v4 = v3;
  v23 = v5;
  v21 = v7;
  v22 = v6;
  v8 = sub_1BCE19540();
  OUTLINED_FUNCTION_2();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_2_0();
  v14 = v13 - v12;
  v15 = v2 >> 1;
  v16 = (v10 + 8);
  while (1)
  {
    if (v15 == v4)
    {
      goto LABEL_10;
    }

    if (v4 >= v15)
    {
      break;
    }

    (*(v10 + 16))(v14, v23 + *(v10 + 72) * v4, v8);
    v17 = v22(v14);
    if (v0)
    {
      (*v16)(v14, v8);
      goto LABEL_11;
    }

    if (v17)
    {
      (*(v10 + 32))(v21, v14, v8);
LABEL_10:
      v18 = OUTLINED_FUNCTION_28_1();
      __swift_storeEnumTagSinglePayload(v18, v19, v20, v8);
LABEL_11:
      OUTLINED_FUNCTION_20_9();
      OUTLINED_FUNCTION_17_1();
      return;
    }

    (*v16)(v14, v8);
    ++v4;
  }

  __break(1u);
}

void sub_1BCAD1600(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_18_0();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  v26 = v25;
  v27 = sub_1BC94791C(v23);
  for (i = 0; ; ++i)
  {
    if (v27 == i)
    {
      goto LABEL_13;
    }

    if ((v24 & 0xC000000000000001) != 0)
    {
      v29 = MEMORY[0x1BFB304A0](i, v24);
    }

    else
    {
      if (i >= *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_15;
      }

      v29 = *(v24 + 8 * i + 32);
    }

    if (__OFADD__(i, 1))
    {
      break;
    }

    a10 = v29;
    v30 = v26(&a10);
    if (v20)
    {

LABEL_13:
      OUTLINED_FUNCTION_17_1();
      return;
    }

    if (v30)
    {
      goto LABEL_13;
    }
  }

  __break(1u);
LABEL_15:
  __break(1u);
}

BOOL SunriseSunsetPolarRule.isSatisfied(for:data:)(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD07868);
  v4 = OUTLINED_FUNCTION_14(v3);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v15 - v8;
  sub_1BC952ABC(a2, &v15 - v8, &qword_1EBD07868);
  v10 = sub_1BCE19060();
  v11 = 1;
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v9, 1, v10);
  sub_1BC94C05C(v9, &qword_1EBD07868);
  if (EnumTagSinglePayload != 1)
  {
    v13 = type metadata accessor for SunriseSunsetDescriptionContext();
    sub_1BC952ABC(a2 + *(v13 + 20), v6, &qword_1EBD07868);
    v11 = __swift_getEnumTagSinglePayload(v6, 1, v10) == 1;
    sub_1BC94C05C(v6, &qword_1EBD07868);
  }

  return v11;
}

uint64_t SunriseSunsetPolarRule.description(for:data:)(uint64_t a1, uint64_t a2)
{
  v86 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD07868);
  OUTLINED_FUNCTION_14(v3);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v4);
  v94 = &v78 - v5;
  v93 = sub_1BCE1A170();
  OUTLINED_FUNCTION_2();
  v89 = v6;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_2_0();
  v92 = v9 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD085A8);
  OUTLINED_FUNCTION_2();
  v12 = v11;
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_16_17();
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08CA0);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v78 - v15;
  v95 = sub_1BCE19060();
  OUTLINED_FUNCTION_2();
  v18 = v17;
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_2_0();
  v85 = v21 - v20;
  v22 = sub_1BCE19540();
  OUTLINED_FUNCTION_2();
  v24 = v23;
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_3_0();
  v83 = v26;
  OUTLINED_FUNCTION_15();
  MEMORY[0x1EEE9AC00](v27);
  v81 = &v78 - v28;
  OUTLINED_FUNCTION_15();
  MEMORY[0x1EEE9AC00](v29);
  v91 = &v78 - v30;
  OUTLINED_FUNCTION_15();
  MEMORY[0x1EEE9AC00](v31);
  v88 = (&v78 - v32);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08CA8);
  v34 = OUTLINED_FUNCTION_14(v33);
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_3_0();
  v82 = v35;
  OUTLINED_FUNCTION_15();
  MEMORY[0x1EEE9AC00](v36);
  v38 = &v78 - v37;
  MEMORY[0x1EEE9AC00](v39);
  v41 = &v78 - v40;
  MEMORY[0x1EEE9AC00](v42);
  v44 = &v78 - v43;
  v45 = type metadata accessor for SunriseSunsetDescriptionContext();
  v46 = *(v45 + 40);
  v47 = *(v45 + 44);
  v84 = v45;
  if (*(v86 + v47) == 1)
  {
    v48 = v24;
    v49 = sub_1BCAD0ADC(v86 + v46);
    MEMORY[0x1EEE9AC00](v49);
    sub_1BCAD12A0();

    sub_1BC952ABC(v44, v41, &qword_1EBD08CA8);
    if (__swift_getEnumTagSinglePayload(v41, 1, v22) == 1)
    {
      sub_1BC94C05C(v41, &qword_1EBD08CA8);
      if (qword_1EDA1EFB0 == -1)
      {
        goto LABEL_18;
      }

      goto LABEL_25;
    }

    v80 = v18;
    v62 = *(v24 + 32);
    v63 = v88;
    v94 = v22;
    v62(v88, v41, v22);
    if (qword_1EDA1EFB0 != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    OUTLINED_FUNCTION_7_27();
    v64 = qword_1EDA1EFB8;
    OUTLINED_FUNCTION_24_6();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD07880);
    v65 = swift_allocObject();
    *(v65 + 16) = xmmword_1BCE3E050;
    v66 = v85;
    sub_1BCE194F0();
    if (qword_1EDA1BF18 != -1)
    {
      OUTLINED_FUNCTION_9_18();
    }

    sub_1BC9600B0();
    (*(v80 + 8))(v66, v95);
    *(v65 + 56) = MEMORY[0x1E69E6158];
    v67 = sub_1BC9804E0();
    v68 = OUTLINED_FUNCTION_22_6(v67);

    (*(v48 + 8))(v63, v94);
  }

  else
  {
    v80 = v18;
    v79 = v38;
    (*(v12 + 16))(v2, v86 + v46, v10);
    OUTLINED_FUNCTION_3_29();
    sub_1BC957184(v50, &qword_1EBD085A8);
    sub_1BCE1D4B0();
    v51 = *(v90 + 36);
    OUTLINED_FUNCTION_2_21();
    sub_1BC957184(v52, &qword_1EBD085A8);
    v87 = v89 + 1;
    v88 = (v24 + 16);
    v89 = (v24 + 8);
    v90 = v24 + 32;
    for (i = v81; ; i = v59)
    {
      sub_1BCE1D750();
      if (*&v16[v51] == v96[0])
      {
        sub_1BC94C05C(v16, &qword_1EBD08CA0);
        v61 = 1;
        v44 = v79;
        goto LABEL_16;
      }

      v54 = sub_1BCE1D780();
      v55 = v91;
      (*v88)(v91);
      v54(v96, 0);
      v56 = v10;
      sub_1BCE1D760();
      v57 = *v90;
      (*v90)(i, v55, v22);
      v58 = v92;
      sub_1BCE194E0();
      v59 = i;
      v60 = v94;
      sub_1BCE1A160();
      (*v87)(v58, v93);
      LODWORD(v54) = __swift_getEnumTagSinglePayload(v60, 1, v95);
      sub_1BC94C05C(v60, &qword_1EBD07868);
      if (v54 != 1)
      {
        break;
      }

      (*v89)(v59, v22);
      v10 = v56;
    }

    sub_1BC94C05C(v16, &qword_1EBD08CA0);
    v44 = v79;
    v57();
    v61 = 0;
LABEL_16:
    __swift_storeEnumTagSinglePayload(v44, v61, 1, v22);
    v69 = v82;
    sub_1BC952ABC(v44, v82, &qword_1EBD08CA8);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v69, 1, v22);
    v71 = v83;
    if (EnumTagSinglePayload == 1)
    {
      sub_1BC94C05C(v69, &qword_1EBD08CA8);
      if (qword_1EDA1EFB0 == -1)
      {
LABEL_18:
        OUTLINED_FUNCTION_7_27();
        v72 = qword_1EDA1EFB8;
        v68 = sub_1BCE18B60();

        goto LABEL_24;
      }

LABEL_25:
      OUTLINED_FUNCTION_0();
      goto LABEL_18;
    }

    (*v90)(v83, v69, v22);
    if (qword_1EDA1EFB0 != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    OUTLINED_FUNCTION_7_27();
    v73 = qword_1EDA1EFB8;
    OUTLINED_FUNCTION_24_6();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD07880);
    v74 = swift_allocObject();
    *(v74 + 16) = xmmword_1BCE3E050;
    v75 = v85;
    sub_1BCE194F0();
    if (qword_1EDA1BF18 != -1)
    {
      OUTLINED_FUNCTION_9_18();
    }

    sub_1BC9600B0();
    (*(v80 + 8))(v75, v95);
    *(v74 + 56) = MEMORY[0x1E69E6158];
    v76 = sub_1BC9804E0();
    v68 = OUTLINED_FUNCTION_22_6(v76);

    (*v89)(v71, v22);
  }

LABEL_24:
  sub_1BC94C05C(v44, &qword_1EBD08CA8);
  return v68;
}

uint64_t sub_1BCAD23C0(uint64_t a1, uint64_t a2)
{
  v18[1] = a2;
  v2 = sub_1BCE19060();
  v18[0] = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v4 = v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = v18 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD07868);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v18 - v9;
  v11 = sub_1BCE1A170();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BCE194E0();
  sub_1BCE1A150();
  (*(v12 + 8))(v14, v11);
  LODWORD(v11) = __swift_getEnumTagSinglePayload(v10, 1, v2);
  sub_1BC94C05C(v10, &qword_1EBD07868);
  if (v11 == 1)
  {
    v15 = 0;
  }

  else
  {
    sub_1BCE194F0();
    type metadata accessor for SunriseSunsetDescriptionContext();
    sub_1BCE196A0();
    v15 = sub_1BCE18FC0();
    v16 = *(v18[0] + 8);
    v16(v4, v2);
    v16(v7, v2);
  }

  return v15 & 1;
}

void sub_1BCAD267C(uint64_t *a1)
{
  v2 = *(sub_1BCE19540() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1BCBED1DC();
    v3 = v4;
  }

  v5 = *(v3 + 16);
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v5;
  sub_1BCAD2850(v6);
  *a1 = v3;
}

_BYTE *storeEnumTagSinglePayload for SunriseSunsetPolarRule(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

uint64_t sub_1BCAD27E0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08CB8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1BCAD2850(unint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_1BCE1E040();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        sub_1BCE19540();
        v6 = sub_1BCE1D5A0();
        *(v6 + 16) = v5;
      }

      v7 = *(sub_1BCE19540() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_1BCAD2D18(v8, v9, a1, v4);
      *(v6 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_1BCAD2980(0, v2, 1, a1);
  }
}

void sub_1BCAD2980(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v60 = sub_1BCE19060();
  v8 = *(v60 - 8);
  MEMORY[0x1EEE9AC00](v60);
  v59 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v58 = &v41 - v11;
  v12 = sub_1BCE19540();
  MEMORY[0x1EEE9AC00](v12);
  v51 = &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v57 = &v41 - v15;
  v18 = MEMORY[0x1EEE9AC00](v16);
  v56 = &v41 - v19;
  v43 = a2;
  if (a3 != a2)
  {
    v20 = *a4;
    v22 = *(v17 + 16);
    v21 = v17 + 16;
    v23 = *(v21 + 56);
    v53 = (v8 + 8);
    v54 = v22;
    v52 = (v21 - 8);
    v55 = v21;
    v24 = (v20 + v23 * (a3 - 1));
    v48 = -v23;
    v49 = (v21 + 16);
    v25 = a1 - a3;
    v50 = v20;
    v42 = v23;
    v26 = v20 + v23 * a3;
    v27 = v58;
    while (2)
    {
      v46 = v24;
      v47 = a3;
      v44 = v26;
      v45 = v25;
      v61 = v25;
      do
      {
        v28 = v56;
        v29 = v54;
        (v54)(v56, v26, v12, v18);
        v30 = v12;
        v31 = v57;
        v29(v57, v24, v30);
        sub_1BCE194F0();
        v32 = v59;
        sub_1BCE194F0();
        v62 = sub_1BCE18FD0();
        v33 = *v53;
        v34 = v32;
        v35 = v60;
        (*v53)(v34, v60);
        v33(v27, v35);
        v36 = *v52;
        v37 = v31;
        v12 = v30;
        (*v52)(v37, v30);
        v36(v28, v30);
        if ((v62 & 1) == 0)
        {
          break;
        }

        if (!v50)
        {
          __break(1u);
          return;
        }

        v38 = *v49;
        v39 = v51;
        (*v49)(v51, v26, v30);
        swift_arrayInitWithTakeFrontToBack();
        v38(v24, v39, v30);
        v24 += v48;
        v26 += v48;
      }

      while (!__CFADD__(v61++, 1));
      a3 = v47 + 1;
      v24 = &v46[v42];
      v25 = v45 - 1;
      v26 = v44 + v42;
      if (v47 + 1 != v43)
      {
        continue;
      }

      break;
    }
  }
}

void sub_1BCAD2D18(unint64_t *a1, uint64_t a2, unint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v139 = a1;
  v163 = sub_1BCE19060();
  v8 = *(v163 - 8);
  MEMORY[0x1EEE9AC00](v163);
  v162 = &v136 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v161 = &v136 - v11;
  v12 = sub_1BCE19540();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v142 = &v136 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v153 = &v136 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v160 = &v136 - v18;
  v20 = MEMORY[0x1EEE9AC00](v19);
  v164 = &v136 - v21;
  v148 = a3;
  v22 = a3[1];
  v143 = v13;
  if (v22 < 1)
  {
    v24 = MEMORY[0x1E69E7CC0];
LABEL_101:
    v165 = *v139;
    if (!v165)
    {
      goto LABEL_142;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_103:
      v128 = v24 + 16;
      v129 = *(v24 + 2);
      while (v129 >= 2)
      {
        if (!*v148)
        {
          goto LABEL_139;
        }

        v130 = v24;
        v131 = &v24[16 * v129];
        v132 = *v131;
        v133 = &v128[2 * v129];
        v134 = *(v133 + 1);
        sub_1BCAD3904(*v148 + *(v143 + 9) * *v131, *v148 + *(v143 + 9) * *v133, *v148 + *(v143 + 9) * v134, v165);
        if (v5)
        {
          break;
        }

        if (v134 < v132)
        {
          goto LABEL_127;
        }

        if (v129 - 2 >= *v128)
        {
          goto LABEL_128;
        }

        *v131 = v132;
        *(v131 + 1) = v134;
        v135 = *v128 - v129;
        if (*v128 < v129)
        {
          goto LABEL_129;
        }

        v129 = *v128 - 1;
        sub_1BCBECE14(v133 + 16, v135, v133);
        *v128 = v129;
        v24 = v130;
      }

LABEL_111:

      return;
    }

LABEL_136:
    v24 = sub_1BCBECBBC();
    goto LABEL_103;
  }

  v137 = a4;
  v23 = 0;
  v157 = (v8 + 8);
  v158 = v13 + 16;
  v155 = (v13 + 32);
  v156 = (v13 + 8);
  v24 = MEMORY[0x1E69E7CC0];
  v159 = v12;
  while (1)
  {
    v25 = v23;
    v26 = v23 + 1;
    if (v23 + 1 < v22)
    {
      v138 = v24;
      v27 = v23;
      v140 = v23;
      v149 = v5;
      v150 = v23 + 1;
      v28 = *v148;
      v165 = v28;
      v29 = v13;
      v30 = *(v13 + 9);
      v151 = v22;
      v152 = v30;
      v31 = v28 + v30 * v26;
      v32 = v12;
      v33 = *(v29 + 2);
      v33(v164, v31, v12, v20);
      v34 = v160;
      v146 = v33;
      (v33)(v160, v28 + v30 * v27, v32);
      v5 = v161;
      v35 = v164;
      sub_1BCE194F0();
      v36 = v162;
      sub_1BCE194F0();
      LODWORD(v147) = sub_1BCE18FD0();
      v37 = *v157;
      v38 = v163;
      (*v157)(v36, v163);
      v145 = v37;
      (v37)(v5, v38);
      v39 = *(v143 + 1);
      v39(v34, v32);
      v144 = v39;
      v39(v35, v32);
      v40 = v151;
      v41 = v140 + 2;
      v42 = v165 + v152 * (v140 + 2);
      while (1)
      {
        v43 = v41;
        if (++v150 >= v40)
        {
          break;
        }

        v5 = v164;
        v44 = v159;
        v45 = v146;
        v165 = v41;
        (v146)(v164, v42, v159);
        v46 = v160;
        v45(v160, v31, v44);
        v47 = v161;
        sub_1BCE194F0();
        v48 = v162;
        sub_1BCE194F0();
        LOBYTE(v154) = sub_1BCE18FD0() & 1;
        LODWORD(v154) = v154;
        v49 = v48;
        v50 = v163;
        v51 = v145;
        (v145)(v49, v163);
        v51(v47, v50);
        v52 = v144;
        v144(v46, v44);
        v52(v5, v44);
        v43 = v165;
        v40 = v151;
        v42 += v152;
        v31 += v152;
        v41 = v165 + 1;
        if ((v147 & 1) != v154)
        {
          goto LABEL_9;
        }
      }

      v150 = v40;
LABEL_9:
      if (v147)
      {
        v26 = v150;
        v25 = v140;
        v12 = v159;
        if (v150 < v140)
        {
          goto LABEL_133;
        }

        if (v140 >= v150)
        {
          v5 = v149;
          v13 = v143;
          v24 = v138;
          goto LABEL_32;
        }

        if (v40 >= v43)
        {
          v53 = v43;
        }

        else
        {
          v53 = v40;
        }

        v54 = v152 * (v53 - 1);
        v55 = v152 * v53;
        v56 = v140;
        v57 = v140 * v152;
        v5 = v149;
        v13 = v143;
        do
        {
          if (v56 != --v26)
          {
            v58 = v5;
            v59 = *v148;
            if (!*v148)
            {
              goto LABEL_140;
            }

            v165 = *v155;
            (v165)(v142, v59 + v57, v12);
            v60 = v57 < v54 || v59 + v57 >= v59 + v55;
            if (v60)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v57 != v54)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            (v165)(v59 + v54, v142, v12);
            v5 = v58;
            v13 = v143;
          }

          ++v56;
          v54 -= v152;
          v55 -= v152;
          v57 += v152;
        }

        while (v56 < v26);
        v24 = v138;
      }

      else
      {
        v5 = v149;
        v13 = v143;
        v24 = v138;
        v12 = v159;
      }

      v26 = v150;
      v25 = v140;
    }

LABEL_32:
    v61 = v148[1];
    if (v26 < v61)
    {
      if (__OFSUB__(v26, v25))
      {
        goto LABEL_132;
      }

      if (v26 - v25 < v137)
      {
        break;
      }
    }

LABEL_48:
    if (v26 < v25)
    {
      goto LABEL_131;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1BCB65134(0, *(v24 + 2) + 1, 1, v24);
      v24 = v126;
    }

    v82 = *(v24 + 2);
    v81 = *(v24 + 3);
    v83 = v82 + 1;
    if (v82 >= v81 >> 1)
    {
      sub_1BCB65134(v81 > 1, v82 + 1, 1, v24);
      v24 = v127;
    }

    *(v24 + 2) = v83;
    v84 = v24 + 32;
    v85 = &v24[16 * v82 + 32];
    *v85 = v25;
    *(v85 + 1) = v26;
    v165 = *v139;
    if (!v165)
    {
      goto LABEL_141;
    }

    v150 = v26;
    if (v82)
    {
      v154 = v24 + 32;
      while (1)
      {
        v86 = v83 - 1;
        v87 = &v84[16 * v83 - 16];
        v88 = &v24[16 * v83];
        if (v83 >= 4)
        {
          break;
        }

        if (v83 == 3)
        {
          v89 = *(v24 + 4);
          v90 = *(v24 + 5);
          v99 = __OFSUB__(v90, v89);
          v91 = v90 - v89;
          v92 = v99;
LABEL_69:
          if (v92)
          {
            goto LABEL_118;
          }

          v104 = *v88;
          v103 = *(v88 + 1);
          v105 = __OFSUB__(v103, v104);
          v106 = v103 - v104;
          v107 = v105;
          if (v105)
          {
            goto LABEL_121;
          }

          v108 = *(v87 + 1);
          v109 = v108 - *v87;
          if (__OFSUB__(v108, *v87))
          {
            goto LABEL_124;
          }

          if (__OFADD__(v106, v109))
          {
            goto LABEL_126;
          }

          if (v106 + v109 >= v91)
          {
            if (v91 < v109)
            {
              v86 = v83 - 2;
            }

            goto LABEL_91;
          }

          goto LABEL_84;
        }

        if (v83 < 2)
        {
          goto LABEL_120;
        }

        v111 = *v88;
        v110 = *(v88 + 1);
        v99 = __OFSUB__(v110, v111);
        v106 = v110 - v111;
        v107 = v99;
LABEL_84:
        if (v107)
        {
          goto LABEL_123;
        }

        v113 = *v87;
        v112 = *(v87 + 1);
        v99 = __OFSUB__(v112, v113);
        v114 = v112 - v113;
        if (v99)
        {
          goto LABEL_125;
        }

        if (v114 < v106)
        {
          goto LABEL_98;
        }

LABEL_91:
        if (v86 - 1 >= v83)
        {
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
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
          goto LABEL_135;
        }

        if (!*v148)
        {
          goto LABEL_138;
        }

        v118 = &v84[16 * v86 - 16];
        v119 = *v118;
        v120 = v86;
        v121 = &v84[16 * v86];
        v122 = *(v121 + 1);
        sub_1BCAD3904(*v148 + *(v13 + 9) * *v118, *v148 + *(v13 + 9) * *v121, *v148 + *(v13 + 9) * v122, v165);
        if (v5)
        {
          goto LABEL_111;
        }

        if (v122 < v119)
        {
          goto LABEL_113;
        }

        v149 = 0;
        v5 = v13;
        v123 = v24;
        v124 = *(v24 + 2);
        if (v120 > v124)
        {
          goto LABEL_114;
        }

        *v118 = v119;
        *(v118 + 1) = v122;
        if (v120 >= v124)
        {
          goto LABEL_115;
        }

        v83 = v124 - 1;
        sub_1BCBECE14(v121 + 16, v124 - 1 - v120, v121);
        *(v123 + 2) = v124 - 1;
        v125 = v124 > 2;
        v24 = v123;
        v13 = v5;
        v5 = v149;
        v84 = v154;
        if (!v125)
        {
          goto LABEL_98;
        }
      }

      v93 = &v84[16 * v83];
      v94 = *(v93 - 8);
      v95 = *(v93 - 7);
      v99 = __OFSUB__(v95, v94);
      v96 = v95 - v94;
      if (v99)
      {
        goto LABEL_116;
      }

      v98 = *(v93 - 6);
      v97 = *(v93 - 5);
      v99 = __OFSUB__(v97, v98);
      v91 = v97 - v98;
      v92 = v99;
      if (v99)
      {
        goto LABEL_117;
      }

      v100 = *(v88 + 1);
      v101 = v100 - *v88;
      if (__OFSUB__(v100, *v88))
      {
        goto LABEL_119;
      }

      v99 = __OFADD__(v91, v101);
      v102 = v91 + v101;
      if (v99)
      {
        goto LABEL_122;
      }

      if (v102 >= v96)
      {
        v116 = *v87;
        v115 = *(v87 + 1);
        v99 = __OFSUB__(v115, v116);
        v117 = v115 - v116;
        if (v99)
        {
          goto LABEL_130;
        }

        if (v91 < v117)
        {
          v86 = v83 - 2;
        }

        goto LABEL_91;
      }

      goto LABEL_69;
    }

LABEL_98:
    v22 = v148[1];
    v23 = v150;
    if (v150 >= v22)
    {
      goto LABEL_101;
    }
  }

  v62 = (v25 + v137);
  if (__OFADD__(v25, v137))
  {
    goto LABEL_134;
  }

  if (v62 >= v61)
  {
    v62 = v148[1];
  }

  if (v62 < v25)
  {
LABEL_135:
    __break(1u);
    goto LABEL_136;
  }

  if (v26 == v62)
  {
    goto LABEL_48;
  }

  v138 = v24;
  v149 = v5;
  v63 = *v148;
  v64 = *(v13 + 9);
  v154 = *(v13 + 2);
  v65 = v63 + v64 * (v26 - 1);
  v151 = -v64;
  v140 = v25;
  v66 = (v25 - v26);
  v152 = v63;
  v141 = v64;
  v67 = (v63 + v26 * v64);
  v144 = v62;
LABEL_41:
  v150 = v26;
  v145 = v67;
  v146 = v66;
  v147 = v65;
  v68 = v65;
  while (1)
  {
    v69 = v164;
    v70 = v154;
    (v154)(v164, v67, v12);
    v71 = v160;
    (v70)(v160, v68, v12);
    v72 = v161;
    sub_1BCE194F0();
    v73 = v162;
    sub_1BCE194F0();
    LODWORD(v165) = sub_1BCE18FD0();
    v74 = *v157;
    v75 = v73;
    v76 = v163;
    (*v157)(v75, v163);
    v77 = v72;
    v12 = v159;
    v74(v77, v76);
    v78 = *v156;
    (*v156)(v71, v12);
    v78(v69, v12);
    if ((v165 & 1) == 0)
    {
LABEL_46:
      v26 = v150 + 1;
      v65 = v147 + v141;
      v66 = v146 - 1;
      v67 = &v145[v141];
      if ((v150 + 1) == v144)
      {
        v26 = v144;
        v5 = v149;
        v13 = v143;
        v24 = v138;
        v25 = v140;
        goto LABEL_48;
      }

      goto LABEL_41;
    }

    if (!v152)
    {
      break;
    }

    v79 = *v155;
    v80 = v153;
    (*v155)(v153, v67, v12);
    swift_arrayInitWithTakeFrontToBack();
    v79(v68, v80, v12);
    v68 += v151;
    v67 += v151;
    v60 = __CFADD__(v66++, 1);
    if (v60)
    {
      goto LABEL_46;
    }
  }

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
}

void sub_1BCAD3904(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v83 = a4;
  v78 = sub_1BCE19060();
  v7 = *(v78 - 8);
  MEMORY[0x1EEE9AC00](v78);
  v77 = &v66 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v76 = &v66 - v10;
  v82 = sub_1BCE19540();
  MEMORY[0x1EEE9AC00](v82);
  v75 = &v66 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v80 = &v66 - v14;
  v16 = *(v15 + 72);
  if (!v16)
  {
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
    return;
  }

  v17 = a2 - a1 == 0x8000000000000000 && v16 == -1;
  if (v17)
  {
    goto LABEL_60;
  }

  v18 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v16 == -1)
  {
    goto LABEL_61;
  }

  v20 = (a2 - a1) / v16;
  v86 = a1;
  v85 = v83;
  v73 = (v7 + 8);
  v74 = (v13 + 16);
  v72 = (v13 + 8);
  v21 = v18 / v16;
  if (v20 >= v18 / v16)
  {
    v41 = v83;
    sub_1BCA14E20(a2, v18 / v16, v83);
    v42 = v41 + v21 * v16;
    v43 = -v16;
    v44 = v42;
    v81 = a1;
    v68 = v43;
LABEL_36:
    v45 = a2 + v43;
    v46 = a3;
    v66 = v44;
    v47 = v44;
    v69 = a2 + v43;
    v70 = a2;
    while (1)
    {
      if (v42 <= v83)
      {
        v86 = a2;
        v84 = v47;
        goto LABEL_58;
      }

      if (a2 <= a1)
      {
        break;
      }

      v67 = v47;
      v79 = v46 + v43;
      v48 = v42 + v43;
      v49 = v42;
      v50 = *v74;
      v51 = v45;
      v52 = v82;
      v53 = v46;
      (*v74)(v80, v42 + v43, v82);
      v54 = v75;
      v50(v75, v51, v52);
      v55 = v76;
      sub_1BCE194F0();
      v56 = v77;
      sub_1BCE194F0();
      LODWORD(v71) = sub_1BCE18FD0();
      v57 = *v73;
      v58 = v56;
      v59 = v78;
      (*v73)(v58, v78);
      v57(v55, v59);
      v60 = *v72;
      (*v72)(v54, v52);
      v60(v80, v52);
      if (v71)
      {
        v42 = v49;
        a3 = v79;
        if (v53 < v70 || v79 >= v70)
        {
          a2 = v69;
          swift_arrayInitWithTakeFrontToBack();
          v44 = v67;
          v43 = v68;
          a1 = v81;
        }

        else
        {
          v64 = v67;
          v43 = v68;
          v44 = v67;
          v17 = v53 == v70;
          v65 = v69;
          a2 = v69;
          a1 = v81;
          if (!v17)
          {
            swift_arrayInitWithTakeBackToFront();
            a2 = v65;
            v44 = v64;
          }
        }

        goto LABEL_36;
      }

      v61 = v79;
      if (v53 < v49 || v79 >= v49)
      {
        swift_arrayInitWithTakeFrontToBack();
        v46 = v61;
        v42 = v48;
        v47 = v48;
        v45 = v69;
        a2 = v70;
        a1 = v81;
        v43 = v68;
      }

      else
      {
        v47 = v48;
        v17 = v49 == v53;
        v46 = v79;
        v42 = v48;
        v45 = v69;
        a2 = v70;
        a1 = v81;
        v43 = v68;
        if (!v17)
        {
          swift_arrayInitWithTakeBackToFront();
          v46 = v61;
          v42 = v48;
          v47 = v48;
        }
      }
    }

    v86 = a2;
    v84 = v66;
  }

  else
  {
    v22 = v83;
    sub_1BCA14E20(a1, (a2 - a1) / v16, v83);
    v70 = v16;
    v71 = v22 + v20 * v16;
    v84 = v71;
    v79 = a3;
    while (v83 < v71 && a2 < a3)
    {
      v81 = a1;
      v24 = *v74;
      v25 = v80;
      v26 = v82;
      (*v74)(v80, a2, v82);
      v27 = v75;
      v24(v75, v83, v26);
      v28 = v76;
      sub_1BCE194F0();
      v29 = v77;
      sub_1BCE194F0();
      v30 = sub_1BCE18FD0();
      v31 = a2;
      v32 = *v73;
      v33 = v29;
      v34 = v78;
      (*v73)(v33, v78);
      v32(v28, v34);
      v35 = *v72;
      (*v72)(v27, v26);
      v35(v25, v26);
      if (v30)
      {
        v36 = v70;
        a2 = v31 + v70;
        v37 = v81;
        if (v81 < v31 || v81 >= a2)
        {
          swift_arrayInitWithTakeFrontToBack();
          a3 = v79;
        }

        else
        {
          a3 = v79;
          if (v81 != v31)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }
      }

      else
      {
        v36 = v70;
        v39 = v83 + v70;
        v37 = v81;
        if (v81 < v83 || v81 >= v39)
        {
          swift_arrayInitWithTakeFrontToBack();
          a3 = v79;
          a2 = v31;
        }

        else
        {
          a3 = v79;
          a2 = v31;
          if (v81 != v83)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v85 = v39;
        v83 = v39;
      }

      a1 = v37 + v36;
      v86 = a1;
    }
  }

LABEL_58:
  sub_1BCBECBD4(&v86, &v85, &v84);
}

__n128 sub_1BCAD3F70@<Q0>(uint64_t a1@<X8>)
{
  v2 = (a1 + 1436);
  sub_1BCAD466C();
  v4 = v3;
  sub_1BCAD6678();
  *a1 = 0x4006666666666666;
  *(a1 + 8) = 5;
  *(a1 + 16) = 0x3FF0000000000000;
  *(a1 + 24) = 25;
  *(a1 + 32) = xmmword_1BCE3BED0;
  *(a1 + 48) = xmmword_1BCE3BED0;
  *(a1 + 64) = 0x42D2000042480000;
  *(a1 + 72) = 0xC409800000000000;
  *(a1 + 80) = xmmword_1BCE3E530;
  *(a1 + 96) = xmmword_1BCE3BEF0;
  *(a1 + 112) = 0x3E8000003DF5C28FLL;
  *(a1 + 128) = xmmword_1BCE3C7C0;
  *(a1 + 144) = xmmword_1BCE3D840;
  *(a1 + 160) = xmmword_1BCE3BF00;
  *(a1 + 176) = 1153138688;
  *(a1 + 184) = 0x3E4CCCCD3DA3D70ALL;
  *(a1 + 192) = xmmword_1BCE3C7C0;
  *(a1 + 208) = xmmword_1BCE3C700;
  *(a1 + 224) = xmmword_1BCE3C660;
  *(a1 + 240) = 0x4140000040A00000;
  *(a1 + 248) = 1132068864;
  *(a1 + 256) = 0x3E4CCCCD3DE147AELL;
  *(a1 + 264) = 0x40A0000041700000;
  *(a1 + 272) = 1101004800;
  __asm { FMOV            V0.4S, #1.0 }

  *(a1 + 288) = xmmword_1BCE3C7C0;
  *(a1 + 304) = result;
  *(a1 + 320) = 0x4348000040C00000;
  *(a1 + 328) = 0x3E99999A3E19999ALL;
  *(a1 + 336) = 0x3F00000040A00000;
  *(a1 + 352) = xmmword_1BCE3C7C0;
  *(a1 + 368) = xmmword_1BCE3C700;
  *(a1 + 384) = 0;
  *(a1 + 388) = 0x3B03126F3F800000;
  *(a1 + 400) = xmmword_1BCE4BF80;
  *(a1 + 416) = 0x3F0000003F000000;
  *(a1 + 424) = 15;
  *(a1 + 432) = xmmword_1BCE3D860;
  *(a1 + 448) = 0x3E4CCCCD3DCCCCCDLL;
  *(a1 + 464) = result;
  *(a1 + 480) = xmmword_1BCE3D870;
  *(a1 + 496) = 0x43FA000040400000;
  *(a1 + 504) = 1116471296;
  *(a1 + 512) = 0x3E8000003DF5C28FLL;
  *(a1 + 528) = result;
  *(a1 + 544) = result;
  *(a1 + 560) = 0x4248000044BB8000;
  *(a1 + 568) = 0x3E4CCCCD3DA3D70ALL;
  *(a1 + 576) = xmmword_1BCE3C700;
  *(a1 + 592) = xmmword_1BCE3D880;
  *(a1 + 608) = 0x40E0000040C00000;
  *(a1 + 624) = xmmword_1BCE3C700;
  *(a1 + 640) = xmmword_1BCE3D880;
  *(a1 + 656) = 0x419DAE1441200000;
  *(a1 + 664) = 0x402000003E99999ALL;
  *(a1 + 672) = 0x40C0000040400000;
  *(a1 + 688) = result;
  *(a1 + 704) = 1065353216;
  *(a1 + 712) = 0x3F8000003F000000;
  *(a1 + 720) = 0x400000003FC00000;
  *(a1 + 728) = 0;
  *(a1 + 736) = 1;
  *(a1 + 744) = 4;
  *(a1 + 752) = xmmword_1BCE3BF40;
  *(a1 + 768) = 0x617274736F746C41;
  *(a1 + 776) = 0xEF53202D20737574;
  *(a1 + 784) = 0xD000000000000013;
  *(a1 + 792) = 0x80000001BCE792E0;
  *(a1 + 800) = 6;
  *(a1 + 816) = result;
  *(a1 + 832) = 1065353216;
  *(a1 + 840) = 0x3F8000003F000000;
  *(a1 + 848) = 0x400000003FC00000;
  *(a1 + 856) = 0;
  *(a1 + 864) = 1;
  *(a1 + 872) = 4;
  *(a1 + 880) = xmmword_1BCE3D890;
  *(a1 + 896) = 0x617274736F746C41;
  *(a1 + 904) = 0xEF53202D20737574;
  *(a1 + 912) = 0xD000000000000013;
  *(a1 + 920) = 0x80000001BCE792E0;
  *(a1 + 928) = 6;
  *(a1 + 944) = result;
  *(a1 + 960) = 1065353216;
  *(a1 + 968) = 0x3F8000003F000000;
  *(a1 + 976) = 0x411970A44106E147;
  *(a1 + 984) = 1083022496;
  *(a1 + 992) = 1;
  *(a1 + 1000) = 4;
  *(a1 + 1008) = xmmword_1BCE3C6F0;
  *(a1 + 1024) = 0x2073756C756D7543;
  *(a1 + 1032) = 0xEB000000004D202DLL;
  *(a1 + 1040) = 0x5F73756C756D7543;
  *(a1 + 1048) = 0xEF4D656C676E6953;
  *(a1 + 1056) = 10;
  *(a1 + 1072) = result;
  *(a1 + 1088) = 1065353216;
  *(a1 + 1096) = 0x3F8000003F000000;
  *(a1 + 1104) = 0x400000003FC00000;
  *(a1 + 1112) = 0;
  *(a1 + 1120) = 1;
  *(a1 + 1128) = 4;
  *(a1 + 1136) = xmmword_1BCE3D8A0;
  *(a1 + 1152) = 0x617274736F746C41;
  *(a1 + 1160) = 0xEF53202D20737574;
  *(a1 + 1168) = 0xD000000000000013;
  *(a1 + 1176) = 0x80000001BCE792E0;
  *(a1 + 1184) = 6;
  *(a1 + 1200) = result;
  *(a1 + 1216) = xmmword_1BCE3BFA0;
  *(a1 + 1232) = 0;
  *(a1 + 1236) = 1;
  *(a1 + 1240) = 0x617274736F746C41;
  *(a1 + 1248) = 0xEB00000000737574;
  *(a1 + 1256) = 0xD000000000000013;
  *(a1 + 1264) = 0x80000001BCE79300;
  *(a1 + 1272) = 8;
  *(a1 + 1280) = 0;
  *(a1 + 1288) = 0x400000003F800000;
  *(a1 + 1296) = 0x41C8000042C80000;
  *(a1 + 1304) = 0;
  *(a1 + 1312) = result;
  *(a1 + 1328) = result;
  *(a1 + 1344) = 0;
  *(a1 + 1352) = 0x40000000;
  *(a1 + 1360) = 0;
  *(a1 + 1368) = 1;
  *(a1 + 1408) = 0u;
  *(a1 + 1392) = 0u;
  *(a1 + 1376) = 0u;
  *(a1 + 1424) = 0x3F99999A3ECCCCCDLL;
  *(a1 + 1432) = 1;
  *v2 = xmmword_1BCE3BFC0;
  *(a1 + 1456) = 0x42DC000042B40000;
  *(a1 + 1472) = result;
  *(a1 + 1488) = result;
  *(a1 + 1504) = 1097859072;
  *(a1 + 1512) = 0x736168506E6F6F6DLL;
  *(a1 + 1520) = 0xEA00000000003065;
  *(a1 + 1528) = 1112014848;
  *(a1 + 1536) = result;
  *(a1 + 1552) = xmmword_1BCE3C770;
  *(a1 + 1568) = 0x4248000042200000;
  *(a1 + 1584) = 0u;
  *(a1 + 1600) = xmmword_1BCE3D880;
  __asm { FMOV            V3.2S, #-30.0 }

  *(a1 + 1616) = -_D3;
  *(a1 + 1624) = 0x40000000;
  *(a1 + 1632) = 0;
  *(a1 + 1628) = 0;
  *(a1 + 1634) = 16843009;
  *(a1 + 1638) = 257;
  *(a1 + 1656) = 0;
  *(a1 + 1640) = 0;
  *(a1 + 1645) = 0;
  *(a1 + 1657) = v12;
  *(a1 + 1659) = v13;
  *(a1 + 1660) = 1066611507;
  *(a1 + 1664) = 0x40C0000040A00000;
  *(a1 + 1672) = 3;
  *(a1 + 1680) = xmmword_1BCE3C000;
  *(a1 + 1696) = xmmword_1BCE3C010;
  *(a1 + 1712) = xmmword_1BCE3C020;
  *(a1 + 1728) = 0x3F0000003EB33333;
  *(a1 + 1736) = 0x3E800000453B8000;
  *(a1 + 1760) = 0;
  *(a1 + 1744) = 0u;
  *(a1 + 1776) = xmmword_1BCE3D8B0;
  *(a1 + 1792) = xmmword_1BCE3D8C0;
  *(a1 + 1808) = xmmword_1BCE3C7A0;
  *(a1 + 1824) = 1;
  *(a1 + 1828) = xmmword_1BCE42400;
  *(a1 + 1844) = 1036831949;
  *(a1 + 1848) = 0x4100000041200000;
  *(a1 + 1856) = 3;
  *(a1 + 1864) = 1041865114;
  *(a1 + 1872) = 0x400AE1483F970A3DLL;
  *(a1 + 1880) = 1109917696;
  *(a1 + 1888) = result;
  *(a1 + 1904) = 0x3E4CCCCD40A00000;
  *(a1 + 1912) = 1101004800;
  *(a1 + 1920) = 0;
  *(a1 + 1928) = 1107820544;
  *(a1 + 1936) = result;
  *(a1 + 1952) = 1065353216;
  *(a1 + 1960) = 0x420C000041C80000;
  *(a1 + 1968) = xmmword_1BCE4BF90;
  *(a1 + 1984) = 0x3F80000000000000;
  *(a1 + 1992) = 1061158912;
  *(a1 + 2000) = 0x4019999A3FB33333;
  *(a1 + 2008) = 0x404000004019999ALL;
  *(a1 + 2016) = xmmword_1BCE3C7E0;
  *(a1 + 2096) = 0u;
  *(a1 + 2080) = 0u;
  *(a1 + 2064) = 0u;
  *(a1 + 2048) = 0u;
  *(a1 + 2032) = 0u;
  *(a1 + 2112) = 1056964608;
  *(a1 + 2120) = 0x3E4CCCCD3DCCCCCDLL;
  *(a1 + 2128) = 0x400000003F800000;
  *(a1 + 2136) = 0x4040000040000000;
  *(a1 + 2144) = -1046478848;
  *(a1 + 2160) = result;
  *(a1 + 2176) = result;
  *(a1 + 2192) = 1061997773;
  *(a1 + 2200) = 6;
  *(a1 + 2208) = 0x419000003F333333;
  *(a1 + 2224) = xmmword_1BCE4BFA0;
  *(a1 + 2240) = xmmword_1BCE47E40;
  *(a1 + 2256) = result;
  *(a1 + 2304) = 0;
  *(a1 + 2288) = 0u;
  *(a1 + 2272) = 0u;
  *(a1 + 2312) = v4;
  *(a1 + 2320) = v11;
  return result;
}

__n128 sub_1BCAD466C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD07858);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1BCE3C820;
  *(v0 + 32) = 0xC056800000000000;
  *(v0 + 40) = 0;
  *(v0 + 48) = xmmword_1BCE3C830;
  *(v0 + 64) = 0x432A000043480000;
  *(v0 + 72) = 1040242952;
  *(v0 + 80) = xmmword_1BCE3C840;
  *(v0 + 96) = xmmword_1BCE3C850;
  *(v0 + 112) = xmmword_1BCE3C860;
  *(v0 + 128) = xmmword_1BCE3C870;
  *(v0 + 144) = xmmword_1BCE3C880;
  *(v0 + 160) = xmmword_1BCE3C890;
  *(v0 + 176) = 0u;
  *(v0 + 192) = 0u;
  __asm { FMOV            V2.2D, #0.5 }

  *(v0 + 208) = _Q2;
  *(v0 + 224) = xmmword_1BCE3D910;
  __asm { FMOV            V0.2D, #1.0 }

  *(v0 + 240) = result;
  *(v0 + 256) = result;
  *(v0 + 272) = result;
  *(v0 + 288) = result;
  *(v0 + 304) = result;
  *(v0 + 320) = result;
  *(v0 + 336) = xmmword_1BCE3C8F0;
  *(v0 + 352) = result;
  *(v0 + 368) = xmmword_1BCE3D920;
  *(v0 + 384) = 0x3F4CCCCD3F800000;
  *(v0 + 392) = 0x3FF0000000000000;
  *(v0 + 400) = result;
  *(v0 + 416) = 0;
  *(v0 + 424) = 1065353216;
  *(v0 + 432) = result;
  *(v0 + 448) = result;
  *(v0 + 464) = result;
  *(v0 + 480) = result;
  *(v0 + 496) = result;
  *(v0 + 512) = result;
  *(v0 + 528) = result;
  *(v0 + 544) = result;
  *(v0 + 560) = result;
  *(v0 + 576) = result;
  *(v0 + 592) = result;
  *(v0 + 608) = result;
  *(v0 + 624) = result;
  *(v0 + 640) = result;
  *(v0 + 656) = result;
  *(v0 + 672) = result;
  *(v0 + 688) = result;
  *(v0 + 704) = result;
  *(v0 + 720) = result;
  *(v0 + 736) = result;
  *(v0 + 752) = result;
  *(v0 + 768) = result;
  *(v0 + 784) = result;
  *(v0 + 800) = result;
  *(v0 + 816) = result;
  *(v0 + 832) = result;
  *(v0 + 848) = result;
  *(v0 + 864) = result;
  *(v0 + 880) = result;
  *(v0 + 896) = result;
  *(v0 + 912) = result;
  *(v0 + 928) = result;
  *(v0 + 944) = result;
  *(v0 + 960) = result;
  *(v0 + 976) = result;
  *(v0 + 992) = result;
  *(v0 + 1008) = result;
  *(v0 + 1024) = result;
  *(v0 + 1040) = result;
  *(v0 + 1056) = result;
  *(v0 + 1072) = vdupq_n_s64(0x3FCF82F740000000uLL);
  *(v0 + 1088) = xmmword_1BCE3C910;
  *(v0 + 1104) = xmmword_1BCE3C920;
  *(v0 + 1120) = xmmword_1BCE3C930;
  *(v0 + 1136) = result;
  *(v0 + 1152) = result;
  *(v0 + 1168) = 0x4170000042480000;
  *(v0 + 1176) = 0x3FF0000000000000;
  *(v0 + 1184) = result;
  *(v0 + 1200) = result;
  *(v0 + 1216) = result;
  *(v0 + 1232) = 0x3FF0000000000000;
  *(v0 + 1248) = 0xC04E000000000000;
  *(v0 + 1256) = 0;
  *(v0 + 1257) = *v11;
  *(v0 + 1260) = *&v11[3];
  *(v0 + 1264) = xmmword_1BCE3C830;
  *(v0 + 1280) = 0x432A000043480000;
  *(v0 + 1288) = 1040242952;
  *(v0 + 1296) = xmmword_1BCE3C840;
  *(v0 + 1312) = xmmword_1BCE3C850;
  *(v0 + 1328) = xmmword_1BCE3C860;
  *(v0 + 1344) = xmmword_1BCE3C870;
  *(v0 + 1360) = xmmword_1BCE3C880;
  *(v0 + 1376) = xmmword_1BCE3C890;
  *(v0 + 1392) = 0u;
  *(v0 + 1408) = 0u;
  *(v0 + 1424) = _Q2;
  *(v0 + 1440) = xmmword_1BCE3D910;
  *(v0 + 1456) = result;
  *(v0 + 1472) = result;
  *(v0 + 1488) = result;
  *(v0 + 1504) = result;
  *(v0 + 1520) = result;
  *(v0 + 1536) = result;
  *(v0 + 1552) = xmmword_1BCE3C8F0;
  *(v0 + 1568) = result;
  *(v0 + 1584) = xmmword_1BCE3D920;
  *(v0 + 1600) = 0x3F4CCCCD3F800000;
  *(v0 + 1608) = 0x3FF0000000000000;
  *(v0 + 1616) = result;
  *(v0 + 1632) = 0;
  *(v0 + 1640) = 1065353216;
  *(v0 + 1648) = result;
  *(v0 + 1664) = result;
  *(v0 + 1680) = result;
  *(v0 + 1696) = result;
  *(v0 + 1712) = result;
  *(v0 + 1728) = result;
  *(v0 + 1744) = result;
  *(v0 + 1760) = result;
  *(v0 + 1776) = result;
  *(v0 + 1792) = result;
  *(v0 + 1808) = result;
  *(v0 + 1824) = result;
  *(v0 + 1840) = result;
  *(v0 + 1856) = result;
  *(v0 + 1872) = result;
  *(v0 + 1888) = result;
  *(v0 + 1904) = result;
  *(v0 + 1920) = result;
  *(v0 + 1936) = result;
  *(v0 + 1952) = result;
  *(v0 + 1968) = result;
  *(v0 + 1984) = result;
  *(v0 + 2000) = result;
  *(v0 + 2016) = result;
  *(v0 + 2032) = result;
  *(v0 + 2048) = result;
  *(v0 + 2064) = result;
  *(v0 + 2080) = result;
  *(v0 + 2096) = result;
  *(v0 + 2112) = result;
  *(v0 + 2128) = result;
  *(v0 + 2144) = result;
  *(v0 + 2160) = result;
  *(v0 + 2176) = result;
  *(v0 + 2192) = result;
  *(v0 + 2208) = result;
  *(v0 + 2224) = result;
  *(v0 + 2240) = result;
  *(v0 + 2256) = result;
  *(v0 + 2272) = result;
  *(v0 + 2288) = vdupq_n_s64(0x3FCF6CD7E0000000uLL);
  *(v0 + 2304) = xmmword_1BCE3C940;
  *(v0 + 2320) = xmmword_1BCE3C950;
  *(v0 + 2336) = xmmword_1BCE3C960;
  *(v0 + 2352) = result;
  *(v0 + 2368) = result;
  *(v0 + 2384) = 0x4170000042480000;
  *(v0 + 2392) = 0x3FF0000000000000;
  *(v0 + 2400) = result;
  *(v0 + 2416) = result;
  *(v0 + 2432) = result;
  *(v0 + 2448) = 0x3FF0000000000000;
  *(v0 + 2464) = 0xC028000000000000;
  *(v0 + 2472) = 0;
  *(v0 + 2473) = *v12;
  *(v0 + 2476) = *&v12[3];
  *(v0 + 2480) = xmmword_1BCE3CB30;
  *(v0 + 2496) = 0x447A000044160000;
  *(v0 + 2504) = 1061997773;
  *(v0 + 2512) = xmmword_1BCE3CA60;
  *(v0 + 2528) = result;
  *(v0 + 2544) = xmmword_1BCE3D930;
  *(v0 + 2560) = xmmword_1BCE3CA80;
  *(v0 + 2576) = xmmword_1BCE3D940;
  *(v0 + 2592) = xmmword_1BCE3D950;
  *(v0 + 2608) = 0u;
  *(v0 + 2624) = 0u;
  *(v0 + 2640) = vdupq_n_s64(0x3FE88B6D00000000uLL);
  *(v0 + 2656) = xmmword_1BCE3D960;
  *(v0 + 2672) = result;
  *(v0 + 2688) = result;
  *(v0 + 2704) = result;
  *(v0 + 2720) = result;
  *(v0 + 2736) = result;
  *(v0 + 2752) = xmmword_1BCE3C8C0;
  *(v0 + 2768) = xmmword_1BCE3CAD0;
  *(v0 + 2784) = xmmword_1BCE3CA00;
  v7 = vdupq_n_s32(0x3F59999Au);
  *(v0 + 2800) = v7;
  *(v0 + 2816) = 0x3F4CCCCD3F59999ALL;
  *(v0 + 2824) = 0x3FF0000000000000;
  *(v0 + 2832) = result;
  *(v0 + 2848) = 0;
  *(v0 + 2856) = 1065353216;
  *(v0 + 2864) = result;
  *(v0 + 2880) = result;
  *(v0 + 2896) = result;
  *(v0 + 2912) = result;
  *(v0 + 2928) = result;
  *(v0 + 2944) = result;
  *(v0 + 2960) = result;
  *(v0 + 2976) = result;
  *(v0 + 2992) = result;
  *(v0 + 3008) = result;
  *(v0 + 3024) = result;
  *(v0 + 3040) = result;
  *(v0 + 3056) = result;
  *(v0 + 3072) = result;
  *(v0 + 3088) = result;
  *(v0 + 3104) = result;
  *(v0 + 3120) = result;
  *(v0 + 3136) = result;
  *(v0 + 3152) = result;
  *(v0 + 3168) = result;
  *(v0 + 3184) = result;
  *(v0 + 3200) = result;
  *(v0 + 3216) = result;
  *(v0 + 3232) = result;
  *(v0 + 3248) = result;
  *(v0 + 3264) = result;
  *(v0 + 3280) = result;
  *(v0 + 3296) = result;
  *(v0 + 3312) = result;
  *(v0 + 3328) = result;
  *(v0 + 3344) = result;
  *(v0 + 3360) = result;
  *(v0 + 3376) = result;
  *(v0 + 3392) = result;
  *(v0 + 3408) = result;
  *(v0 + 3424) = result;
  *(v0 + 3440) = result;
  *(v0 + 3456) = result;
  *(v0 + 3472) = result;
  *(v0 + 3488) = result;
  *(v0 + 3504) = vdupq_n_s64(0x3FCF992720000000uLL);
  *(v0 + 3520) = xmmword_1BCE3CA20;
  *(v0 + 3536) = xmmword_1BCE3CA30;
  *(v0 + 3552) = xmmword_1BCE3CA40;
  *(v0 + 3568) = result;
  *(v0 + 3584) = result;
  *(v0 + 3600) = 0x4170000042480000;
  *(v0 + 3608) = 0x3FF0000000000000;
  *(v0 + 3616) = result;
  *(v0 + 3632) = result;
  *(v0 + 3648) = result;
  *(v0 + 3664) = 0x3FF0000000000000;
  *(v0 + 3680) = 0xC018000000000000;
  *(v0 + 3688) = 0;
  *(v0 + 3689) = *v13;
  *(v0 + 3692) = *&v13[3];
  *(v0 + 4656) = result;
  *(v0 + 4672) = result;
  *(v0 + 4688) = result;
  *(v0 + 4704) = result;
  *(v0 + 4720) = xmmword_1BCE3CB00;
  *(v0 + 4736) = xmmword_1BCE3CB10;
  *(v0 + 4560) = result;
  *(v0 + 4576) = result;
  *(v0 + 4592) = result;
  *(v0 + 4608) = result;
  *(v0 + 4624) = result;
  *(v0 + 4640) = result;
  *(v0 + 4464) = result;
  *(v0 + 4480) = result;
  *(v0 + 4496) = result;
  *(v0 + 4512) = result;
  *(v0 + 4528) = result;
  *(v0 + 4544) = result;
  *(v0 + 4368) = result;
  *(v0 + 4384) = result;
  *(v0 + 4400) = result;
  *(v0 + 4416) = result;
  *(v0 + 4432) = result;
  *(v0 + 4448) = result;
  *(v0 + 4272) = result;
  *(v0 + 4288) = result;
  *(v0 + 4304) = result;
  *(v0 + 4320) = result;
  *(v0 + 4336) = result;
  *(v0 + 4352) = result;
  *(v0 + 4176) = result;
  *(v0 + 4192) = result;
  *(v0 + 4208) = result;
  *(v0 + 4224) = result;
  *(v0 + 4240) = result;
  *(v0 + 4256) = result;
  *(v0 + 3696) = xmmword_1BCE3CB30;
  *(v0 + 4096) = result;
  *(v0 + 4112) = result;
  *(v0 + 4128) = result;
  *(v0 + 4144) = result;
  *(v0 + 4160) = result;
  *(v0 + 4048) = result;
  *(v0 + 4064) = 0x3FE5555540000000;
  *(v0 + 4072) = 1065353216;
  *(v0 + 4080) = result;
  *(v0 + 4040) = 0x3FF0000000000000;
  *(v0 + 4016) = vdupq_n_s32(0x3F5DDDDEu);
  *(v0 + 4032) = 0x3DCCCCCD3F5DDDDELL;
  *(v0 + 3968) = xmmword_1BCE3D9F0;
  *(v0 + 3984) = xmmword_1BCE3DA00;
  *(v0 + 4000) = xmmword_1BCE3CA00;
  *(v0 + 3920) = result;
  *(v0 + 3936) = result;
  *(v0 + 3952) = xmmword_1BCE3D9E0;
  *(v0 + 3856) = vdupq_n_s64(0x3FEB079E00000000uLL);
  *(v0 + 3872) = xmmword_1BCE3D9D0;
  *(v0 + 3888) = result;
  *(v0 + 3904) = result;
  *(v0 + 3712) = 0x4496000044160000;
  *(v0 + 3720) = 1061997773;
  *(v0 + 3824) = 0u;
  *(v0 + 3840) = 0u;
  *(v0 + 3792) = xmmword_1BCE3D9B0;
  *(v0 + 3808) = xmmword_1BCE3D9C0;
  *(v0 + 3760) = xmmword_1BCE3D990;
  *(v0 + 3776) = xmmword_1BCE3D9A0;
  *(v0 + 3728) = xmmword_1BCE3D970;
  *(v0 + 3744) = xmmword_1BCE3D980;
  *(v0 + 4752) = xmmword_1BCE3CB20;
  *(v0 + 4768) = xmmword_1BCE3CB10;
  *(v0 + 4784) = result;
  *(v0 + 4800) = result;
  *(v0 + 4816) = 0x4170000042480000;
  *(v0 + 4824) = 0x3FF0000000000000;
  *(v0 + 4832) = result;
  *(v0 + 4848) = result;
  *(v0 + 4905) = *v14;
  *(v0 + 4864) = result;
  *(v0 + 4880) = 0x3FF0000000000000;
  *(v0 + 4896) = 0;
  *(v0 + 4904) = 0;
  *(v0 + 4908) = *&v14[3];
  *(v0 + 4912) = xmmword_1BCE3CB30;
  *(v0 + 4928) = 0x44C8000044160000;
  *(v0 + 4936) = 1061997773;
  *(v0 + 4944) = xmmword_1BCE3DA10;
  *(v0 + 4960) = xmmword_1BCE3DA20;
  *(v0 + 4976) = xmmword_1BCE3CB60;
  *(v0 + 4992) = xmmword_1BCE3CB70;
  *(v0 + 5008) = xmmword_1BCE3DA30;
  *(v0 + 5024) = xmmword_1BCE3DA40;
  *(v0 + 5040) = xmmword_1BCE4BFB0;
  *(v0 + 5056) = xmmword_1BCE4BFC0;
  *(v0 + 5072) = result;
  *(v0 + 5088) = xmmword_1BCE3DA70;
  *(v0 + 5104) = result;
  *(v0 + 5120) = result;
  *(v0 + 5136) = result;
  *(v0 + 5152) = result;
  *(v0 + 5168) = xmmword_1BCE3DA80;
  *(v0 + 5184) = xmmword_1BCE3CBE0;
  *(v0 + 5200) = xmmword_1BCE3CBF0;
  *(v0 + 5216) = xmmword_1BCE3CA00;
  v8 = vdupq_n_s32(0x3F666666u);
  *(v0 + 5232) = v8;
  *(v0 + 5248) = 1063675494;
  *(v0 + 5256) = 0x3FF0000000000000;
  *(v0 + 5264) = result;
  *(v0 + 5280) = 0;
  *(v0 + 5288) = 0;
  *(v0 + 5296) = result;
  *(v0 + 5312) = result;
  *(v0 + 5328) = result;
  *(v0 + 5344) = result;
  *(v0 + 5360) = result;
  *(v0 + 5376) = result;
  *(v0 + 5392) = result;
  *(v0 + 5408) = result;
  *(v0 + 5424) = result;
  *(v0 + 5440) = result;
  *(v0 + 5456) = result;
  *(v0 + 5472) = result;
  *(v0 + 5488) = result;
  *(v0 + 5504) = result;
  *(v0 + 5520) = result;
  *(v0 + 5536) = result;
  *(v0 + 5552) = result;
  *(v0 + 5568) = result;
  *(v0 + 5584) = result;
  *(v0 + 5600) = result;
  *(v0 + 5616) = result;
  *(v0 + 5632) = result;
  *(v0 + 5648) = result;
  *(v0 + 5664) = result;
  *(v0 + 5680) = result;
  *(v0 + 5696) = result;
  *(v0 + 5712) = result;
  *(v0 + 5728) = result;
  *(v0 + 5744) = result;
  *(v0 + 5760) = result;
  *(v0 + 5776) = result;
  *(v0 + 5792) = result;
  *(v0 + 5808) = result;
  *(v0 + 5824) = result;
  *(v0 + 5840) = result;
  *(v0 + 5856) = result;
  *(v0 + 5872) = result;
  *(v0 + 5888) = result;
  *(v0 + 5904) = result;
  *(v0 + 5920) = result;
  *(v0 + 5936) = xmmword_1BCE3CC10;
  *(v0 + 5952) = xmmword_1BCE3CC20;
  *(v0 + 5968) = xmmword_1BCE3CC30;
  *(v0 + 5984) = xmmword_1BCE3CC20;
  *(v0 + 6000) = result;
  *(v0 + 6016) = result;
  *(v0 + 6032) = 0x4170000042480000;
  *(v0 + 6040) = 0x3FF0000000000000;
  *(v0 + 6048) = result;
  *(v0 + 6064) = result;
  *(v0 + 6080) = result;
  *(v0 + 6096) = 0x3FF0000000000000;
  *(v0 + 6112) = 0x4017FFFFFFFFFFFALL;
  *(v0 + 6120) = 0;
  *(v0 + 6121) = *v15;
  *(v0 + 6124) = *&v15[3];
  *(v0 + 6128) = xmmword_1BCE3CC40;
  *(v0 + 6144) = 0x44480000443B8000;
  *(v0 + 6152) = 1060739482;
  *(v0 + 6160) = xmmword_1BCE3DA90;
  *(v0 + 6176) = xmmword_1BCE3DAA0;
  *(v0 + 6192) = xmmword_1BCE3DAB0;
  *(v0 + 6208) = xmmword_1BCE3CC80;
  *(v0 + 6224) = xmmword_1BCE3CC90;
  *(v0 + 6240) = xmmword_1BCE3CCA0;
  *(v0 + 6256) = xmmword_1BCE4BFD0;
  *(v0 + 6272) = xmmword_1BCE4BFE0;
  *(v0 + 6288) = result;
  *(v0 + 6384) = xmmword_1BCE3DAF0;
  *(v0 + 6400) = xmmword_1BCE3DB00;
  *(v0 + 6416) = xmmword_1BCE3CCD0;
  *(v0 + 6432) = xmmword_1BCE3CCE0;
  *(v0 + 6480) = xmmword_1BCE3CD00;
  *(v0 + 7152) = xmmword_1BCE3CD10;
  *(v0 + 7184) = xmmword_1BCE3CD30;
  *(v0 + 7168) = xmmword_1BCE3CD20;
  *(v0 + 7200) = xmmword_1BCE3CD20;
  *(v0 + 7344) = xmmword_1BCE3CD40;
  *(v0 + 7408) = xmmword_1BCE3DB20;
  *(v0 + 7424) = xmmword_1BCE3C9D0;
  *(v0 + 7552) = result;
  *(v0 + 7632) = xmmword_1BCE3CD90;
  *(v0 + 7648) = xmmword_1BCE3CDA0;
  *(v0 + 7696) = xmmword_1BCE3CDC0;
  *(v0 + 8368) = xmmword_1BCE3CDD0;
  *(v0 + 8400) = xmmword_1BCE3CDE0;
  *(v0 + 8560) = xmmword_1BCE3CDF0;
  *(v0 + 8624) = xmmword_1BCE3CE00;
  *(v0 + 8848) = xmmword_1BCE3DB40;
  *(v0 + 9616) = xmmword_1BCE47D00;
  *(v0 + 9584) = xmmword_1BCE3CE20;
  *(v0 + 10800) = xmmword_1BCE3CE20;
  *(v0 + 10832) = xmmword_1BCE3CEA0;
  *(v0 + 9776) = xmmword_1BCE3CE40;
  *(v0 + 10992) = xmmword_1BCE3CE40;
  *(v0 + 9792) = 1151500288;
  *(v0 + 11008) = 1151500288;
  *(v0 + 7376) = xmmword_1BCE3DB10;
  *(v0 + 9808) = xmmword_1BCE3DB10;
  *(v0 + 11024) = xmmword_1BCE3DB10;
  *(v0 + 9840) = xmmword_1BCE3CE50;
  *(v0 + 11056) = xmmword_1BCE3CE50;
  *(v0 + 9856) = xmmword_1BCE3CE60;
  *(v0 + 11072) = xmmword_1BCE3CE60;
  *(v0 + 9872) = xmmword_1BCE3CE70;
  *(v0 + 11088) = xmmword_1BCE3CE70;
  *(v0 + 9888) = xmmword_1BCE3CE80;
  *(v0 + 11104) = xmmword_1BCE3CE80;
  *(v0 + 10816) = xmmword_1BCE3CE90;
  *(v0 + 12032) = xmmword_1BCE3CE90;
  *(v0 + 12048) = xmmword_1BCE3CE30;
  *(v0 + 12208) = xmmword_1BCE3CEC0;
  *(v0 + 8576) = 0x41A0000044A8C000;
  *(v0 + 12224) = 0x41A0000044A8C000;
  *(v0 + 8592) = xmmword_1BCE3DB30;
  *(v0 + 12240) = xmmword_1BCE3DB30;
  *(v0 + 7392) = xmmword_1BCE3CD50;
  *(v0 + 8608) = xmmword_1BCE3CD50;
  *(v0 + 9824) = xmmword_1BCE3CD50;
  *(v0 + 11040) = xmmword_1BCE3CD50;
  *(v0 + 12256) = xmmword_1BCE3CD50;
  *(v0 + 12272) = xmmword_1BCE3CED0;
  *(v0 + 8912) = xmmword_1BCE3CE10;
  *(v0 + 10128) = xmmword_1BCE3CE10;
  *(v0 + 11344) = xmmword_1BCE3CE10;
  *(v0 + 12560) = xmmword_1BCE3CE10;
  *(v0 + 9600) = xmmword_1BCE3D4B0;
  *(v0 + 13248) = xmmword_1BCE3D4B0;
  *(v0 + 13264) = xmmword_1BCE47D10;
  *(v0 + 13424) = xmmword_1BCE3CF00;
  *(v0 + 7360) = 1147207680;
  *(v0 + 13440) = 1147207680;
  *(v0 + 13456) = xmmword_1BCE3DB50;
  *(v0 + 13472) = xmmword_1BCE3CF10;
  *(v0 + 13488) = xmmword_1BCE3DB60;
  *(v0 + 13504) = xmmword_1BCE3CF30;
  *(v0 + 7440) = xmmword_1BCE3CD70;
  *(v0 + 13520) = xmmword_1BCE3CD70;
  *(v0 + 7456) = xmmword_1BCE3CD80;
  *(v0 + 13536) = xmmword_1BCE3CD80;
  *(v0 + 13712) = xmmword_1BCE3CF60;
  *(v0 + 13776) = xmmword_1BCE3CF80;
  *(v0 + 12016) = xmmword_1BCE3CEB0;
  *(v0 + 13232) = xmmword_1BCE3CEB0;
  *(v0 + 14448) = xmmword_1BCE3CEB0;
  *(v0 + 8384) = xmmword_1BCE3CBB0;
  *(v0 + 14464) = xmmword_1BCE3CBB0;
  *(v0 + 14480) = xmmword_1BCE3CF90;
  *(v0 + 14640) = xmmword_1BCE3CFA0;
  *(v0 + 6304) = xmmword_1BCE3DAE0;
  *(v0 + 6320) = result;
  *(v0 + 6336) = result;
  *(v0 + 6352) = result;
  *(v0 + 6368) = result;
  *(v0 + 6448) = v8;
  *(v0 + 6464) = 1063675494;
  *(v0 + 6472) = 0x3FEF857180000000;
  *(v0 + 6496) = 0x3FE0000000000000;
  *(v0 + 6504) = 0;
  *(v0 + 6512) = result;
  *(v0 + 6528) = result;
  *(v0 + 6544) = result;
  *(v0 + 6560) = result;
  *(v0 + 6576) = result;
  *(v0 + 6592) = result;
  *(v0 + 6608) = result;
  *(v0 + 6624) = result;
  *(v0 + 6640) = result;
  *(v0 + 6656) = result;
  *(v0 + 6672) = result;
  *(v0 + 6688) = result;
  *(v0 + 6704) = result;
  *(v0 + 6720) = result;
  *(v0 + 6736) = result;
  *(v0 + 6752) = result;
  *(v0 + 6768) = result;
  *(v0 + 6784) = result;
  *(v0 + 6800) = result;
  *(v0 + 6816) = result;
  *(v0 + 6832) = result;
  *(v0 + 6848) = result;
  *(v0 + 6864) = result;
  *(v0 + 6880) = result;
  *(v0 + 6896) = result;
  *(v0 + 6912) = result;
  *(v0 + 6928) = result;
  *(v0 + 6944) = result;
  *(v0 + 6960) = result;
  *(v0 + 6976) = result;
  *(v0 + 6992) = result;
  *(v0 + 7008) = result;
  *(v0 + 7024) = result;
  *(v0 + 7040) = result;
  *(v0 + 7056) = result;
  *(v0 + 7072) = result;
  *(v0 + 7088) = result;
  *(v0 + 7104) = result;
  *(v0 + 7120) = result;
  *(v0 + 7136) = result;
  *(v0 + 7216) = result;
  *(v0 + 7232) = result;
  *(v0 + 7248) = 0x4170000042480000;
  *(v0 + 7256) = 0x3FF0000000000000;
  *(v0 + 7264) = result;
  *(v0 + 7280) = result;
  *(v0 + 7296) = result;
  *(v0 + 7312) = 0x3FF0000000000000;
  *(v0 + 7328) = 0x4027FFFFFFFFFFFALL;
  *(v0 + 7336) = 0;
  *(v0 + 7337) = *v16;
  *(v0 + 7340) = *&v16[3];
  *(v0 + 7368) = 1059481190;
  *(v0 + 7472) = 0u;
  *(v0 + 7488) = 0u;
  *(v0 + 7504) = result;
  *(v0 + 7520) = xmmword_1BCE3DAE0;
  *(v0 + 7536) = result;
  *(v0 + 14656) = 0x44480000443B8000;
  *(v0 + 14672) = xmmword_1BCE3DB70;
  *(v0 + 14688) = xmmword_1BCE3CFC0;
  *(v0 + 14704) = xmmword_1BCE3DB80;
  *(v0 + 14720) = xmmword_1BCE3DB90;
  *(v0 + 14736) = xmmword_1BCE3DBA0;
  *(v0 + 14752) = xmmword_1BCE3DBB0;
  *(v0 + 8736) = xmmword_1BCE3DAE0;
  *(v0 + 12384) = xmmword_1BCE3DAE0;
  *(v0 + 13600) = xmmword_1BCE3DAE0;
  *(v0 + 14816) = xmmword_1BCE3DAE0;
  *(v0 + 14864) = xmmword_1BCE3D010;
  *(v0 + 14880) = xmmword_1BCE3DBE0;
  *(v0 + 14928) = xmmword_1BCE3D040;
  *(v0 + 14992) = xmmword_1BCE3D060;
  *(v0 + 15664) = xmmword_1BCE3D070;
  *(v0 + 15680) = xmmword_1BCE3D080;
  *(v0 + 15696) = xmmword_1BCE3D090;
  *(v0 + 15712) = xmmword_1BCE3D0A0;
  *(v0 + 15856) = xmmword_1BCE3D0B0;
  *(v0 + 15872) = 0x44C8000044160000;
  *(v0 + 15888) = xmmword_1BCE3D0C0;
  *(v0 + 15904) = xmmword_1BCE3D0D0;
  *(v0 + 15920) = xmmword_1BCE3DBF0;
  *(v0 + 15936) = xmmword_1BCE3DC00;
  *(v0 + 15952) = xmmword_1BCE3DC10;
  *(v0 + 15968) = xmmword_1BCE3DC20;
  *(v0 + 15984) = xmmword_1BCE4BFF0;
  *(v0 + 16000) = xmmword_1BCE4C000;
  *(v0 + 9952) = xmmword_1BCE3DA70;
  *(v0 + 11168) = xmmword_1BCE3DA70;
  *(v0 + 16032) = xmmword_1BCE3DA70;
  *(v0 + 10032) = xmmword_1BCE3CCB0;
  *(v0 + 10064) = xmmword_1BCE3CCB0;
  *(v0 + 11248) = xmmword_1BCE3CCB0;
  *(v0 + 11280) = xmmword_1BCE3CCB0;
  *(v0 + 16080) = xmmword_1BCE3CCB0;
  *(v0 + 16096) = xmmword_1BCE3DC50;
  *(v0 + 16144) = xmmword_1BCE3CBF0;
  *(v0 + 7664) = v8;
  *(v0 + 8880) = v8;
  *(v0 + 10096) = v8;
  *(v0 + 11312) = v8;
  *(v0 + 12528) = v8;
  *(v0 + 13744) = v8;
  *(v0 + 14960) = v8;
  *(v0 + 16176) = v8;
  *(v0 + 7680) = 1063675494;
  *(v0 + 8896) = 1063675494;
  *(v0 + 10112) = 1063675494;
  *(v0 + 11328) = 1063675494;
  *(v0 + 12544) = 1063675494;
  *(v0 + 13760) = 1063675494;
  *(v0 + 14976) = 1063675494;
  *(v0 + 16192) = 1063675494;
  *(v0 + 16208) = xmmword_1BCE3D150;
  *(v0 + 16880) = xmmword_1BCE3D160;
  *(v0 + 16896) = xmmword_1BCE3D170;
  *(v0 + 16912) = xmmword_1BCE3D180;
  *(v0 + 16928) = xmmword_1BCE3D190;
  *(v0 + 17072) = xmmword_1BCE3CB30;
  *(v0 + 17088) = 0x4483CC9D445C8321;
  *(v0 + 17104) = xmmword_1BCE3D1A0;
  *(v0 + 17120) = xmmword_1BCE3D1B0;
  *(v0 + 17136) = xmmword_1BCE3D1C0;
  *(v0 + 17152) = xmmword_1BCE3D1D0;
  *(v0 + 17168) = xmmword_1BCE3D1E0;
  *(v0 + 17184) = xmmword_1BCE3D1F0;
  *(v0 + 17200) = xmmword_1BCE4C010;
  *(v0 + 17216) = xmmword_1BCE4C020;
  *(v0 + 17232) = vdupq_n_s64(0x3FE8F90420000000uLL);
  *(v0 + 17248) = xmmword_1BCE3DC60;
  *(v0 + 17312) = xmmword_1BCE3DC70;
  *(v0 + 7616) = xmmword_1BCE3C8C0;
  *(v0 + 8832) = xmmword_1BCE3C8C0;
  *(v0 + 10048) = xmmword_1BCE3C8C0;
  *(v0 + 11264) = xmmword_1BCE3C8C0;
  *(v0 + 12480) = xmmword_1BCE3C8C0;
  *(v0 + 13696) = xmmword_1BCE3C8C0;
  *(v0 + 14912) = xmmword_1BCE3C8C0;
  *(v0 + 16128) = xmmword_1BCE3C8C0;
  *(v0 + 17344) = xmmword_1BCE3C8C0;
  *(v0 + 17360) = xmmword_1BCE3CAD0;
  *(v0 + 13728) = xmmword_1BCE3CA00;
  *(v0 + 14944) = xmmword_1BCE3CA00;
  *(v0 + 16160) = xmmword_1BCE3CA00;
  *(v0 + 17376) = xmmword_1BCE3CA00;
  *(v0 + 8416) = xmmword_1BCE3CBC0;
  *(v0 + 9632) = xmmword_1BCE3CBC0;
  *(v0 + 10848) = xmmword_1BCE3CBC0;
  *(v0 + 12064) = xmmword_1BCE3CBC0;
  *(v0 + 13280) = xmmword_1BCE3CBC0;
  *(v0 + 14496) = xmmword_1BCE3CBC0;
  *(v0 + 17392) = v7;
  *(v0 + 17408) = 0x3DCCCCCD3F59999ALL;
  *(v0 + 17424) = xmmword_1BCE3DC80;
  *(v0 + 18096) = xmmword_1BCE3D230;
  *(v0 + 18112) = xmmword_1BCE3D240;
  *(v0 + 18128) = xmmword_1BCE3D250;
  *(v0 + 18144) = xmmword_1BCE3D260;
  *(v0 + 18288) = xmmword_1BCE3DC90;
  *(v0 + 18304) = 0x4396000042C80000;
  *(v0 + 18320) = xmmword_1BCE3C970;
  *(v0 + 18352) = xmmword_1BCE3DCA0;
  *(v0 + 18368) = xmmword_1BCE3D290;
  *(v0 + 18384) = xmmword_1BCE3C9A0;
  *(v0 + 18464) = xmmword_1BCE3DCB0;
  *(v0 + 18512) = xmmword_1BCE3D3C0;
  *(v0 + 18528) = xmmword_1BCE3D3D0;
  *(v0 + 18544) = xmmword_1BCE3DCC0;
  *(v0 + 18560) = xmmword_1BCE3CBC0;
  *(v0 + 18576) = xmmword_1BCE3C9F0;
  v9 = vdupq_n_s32(0x3F4CCCCDu);
  *(v0 + 18592) = xmmword_1BCE3DCD0;
  *(v0 + 18608) = v9;
  *(v0 + 18624) = v9.i64[0];
  *(v0 + 19312) = xmmword_1BCE3D2E0;
  *(v0 + 19344) = xmmword_1BCE3D2F0;
  *(v0 + 19328) = xmmword_1BCE3E580;
  *(v0 + 19360) = xmmword_1BCE3E580;
  __asm { FMOV            V25.2D, #0.25 }

  *(v0 + 20528) = _Q25;
  *(v0 + 20560) = xmmword_1BCE3D300;
  *(v0 + 19504) = xmmword_1BCE3C830;
  *(v0 + 20720) = xmmword_1BCE3C830;
  *(v0 + 19520) = 0x432A000043480000;
  *(v0 + 20736) = 0x432A000043480000;
  *(v0 + 19536) = xmmword_1BCE3C840;
  *(v0 + 20752) = xmmword_1BCE3C840;
  *(v0 + 19552) = xmmword_1BCE3C850;
  *(v0 + 20768) = xmmword_1BCE3C850;
  *(v0 + 19568) = xmmword_1BCE3C860;
  *(v0 + 20784) = xmmword_1BCE3C860;
  *(v0 + 19584) = xmmword_1BCE3C870;
  *(v0 + 20800) = xmmword_1BCE3C870;
  *(v0 + 19600) = xmmword_1BCE3C880;
  *(v0 + 20816) = xmmword_1BCE3C880;
  *(v0 + 19616) = xmmword_1BCE3C890;
  *(v0 + 20832) = xmmword_1BCE3C890;
  *(v0 + 8688) = 0u;
  *(v0 + 8704) = 0u;
  *(v0 + 9904) = 0u;
  *(v0 + 9920) = 0u;
  *(v0 + 11120) = 0u;
  *(v0 + 11136) = 0u;
  *(v0 + 12336) = 0u;
  *(v0 + 12352) = 0u;
  *(v0 + 13552) = 0u;
  *(v0 + 13568) = 0u;
  *(v0 + 14768) = 0u;
  *(v0 + 14784) = 0u;
  *(v0 + 18416) = 0u;
  *(v0 + 18432) = 0u;
  *(v0 + 19632) = 0u;
  *(v0 + 19648) = 0u;
  *(v0 + 20848) = 0u;
  *(v0 + 20864) = 0u;
  *(v0 + 18448) = _Q2;
  *(v0 + 19664) = _Q2;
  *(v0 + 20880) = _Q2;
  *(v0 + 19680) = xmmword_1BCE3D910;
  *(v0 + 20896) = xmmword_1BCE3D910;
  *(v0 + 19792) = xmmword_1BCE3C8F0;
  *(v0 + 21008) = xmmword_1BCE3C8F0;
  *(v0 + 19824) = xmmword_1BCE3D920;
  *(v0 + 21040) = xmmword_1BCE3D920;
  *(v0 + 19840) = 0x3F4CCCCD3F800000;
  *(v0 + 21056) = 0x3F4CCCCD3F800000;
  *(v0 + 21744) = vdupq_n_s64(0x3FCFEB6B80000000uLL);
  *(v0 + 20544) = xmmword_1BCE3C910;
  *(v0 + 20576) = xmmword_1BCE3C910;
  *(v0 + 21760) = xmmword_1BCE3C910;
  *(v0 + 21776) = xmmword_1BCE3D310;
  *(v0 + 21792) = xmmword_1BCE3D320;
  *(v0 + 8464) = 0x4170000042480000;
  *(v0 + 9680) = 0x4170000042480000;
  *(v0 + 10896) = 0x4170000042480000;
  *(v0 + 12112) = 0x4170000042480000;
  *(v0 + 13328) = 0x4170000042480000;
  *(v0 + 14544) = 0x4170000042480000;
  *(v0 + 15760) = 0x4170000042480000;
  *(v0 + 16976) = 0x4170000042480000;
  *(v0 + 18192) = 0x4170000042480000;
  *(v0 + 19408) = 0x4170000042480000;
  *(v0 + 20624) = 0x4170000042480000;
  *(v0 + 21840) = 0x4170000042480000;
  *(v0 + 7568) = result;
  *(v0 + 7584) = result;
  *(v0 + 7600) = result;
  *(v0 + 18080) = result;
  *(v0 + 17984) = result;
  *(v0 + 18000) = result;
  *(v0 + 18016) = result;
  *(v0 + 18032) = result;
  *(v0 + 18048) = result;
  *(v0 + 18064) = result;
  *(v0 + 17888) = result;
  *(v0 + 17904) = result;
  *(v0 + 17920) = result;
  *(v0 + 17936) = result;
  *(v0 + 17952) = result;
  *(v0 + 17968) = result;
  *(v0 + 17792) = result;
  *(v0 + 17808) = result;
  *(v0 + 17824) = result;
  *(v0 + 17840) = result;
  *(v0 + 17856) = result;
  *(v0 + 17872) = result;
  *(v0 + 17696) = result;
  *(v0 + 17712) = result;
  *(v0 + 17728) = result;
  *(v0 + 17744) = result;
  *(v0 + 17760) = result;
  *(v0 + 17776) = result;
  *(v0 + 17600) = result;
  *(v0 + 17616) = result;
  *(v0 + 17632) = result;
  *(v0 + 17648) = result;
  *(v0 + 17664) = result;
  *(v0 + 17680) = result;
  *(v0 + 7728) = result;
  *(v0 + 17520) = result;
  *(v0 + 17536) = result;
  *(v0 + 17552) = result;
  *(v0 + 17568) = result;
  *(v0 + 17584) = result;
  *(v0 + 7744) = result;
  *(v0 + 17448) = 1065353216;
  *(v0 + 17456) = result;
  *(v0 + 17472) = result;
  *(v0 + 17488) = result;
  *(v0 + 17504) = result;
  *(v0 + 7760) = result;
  *(v0 + 7776) = result;
  *(v0 + 7792) = result;
  *(v0 + 17416) = 0x3FEF1F1F40000000;
  *(v0 + 17440) = 0;
  *(v0 + 7808) = result;
  *(v0 + 7824) = result;
  *(v0 + 7840) = result;
  *(v0 + 17280) = result;
  *(v0 + 17296) = result;
  *(v0 + 17328) = result;
  *(v0 + 7856) = result;
  *(v0 + 7872) = result;
  *(v0 + 7888) = result;
  *(v0 + 7904) = result;
  *(v0 + 7920) = result;
  *(v0 + 17264) = result;
  *(v0 + 7936) = result;
  *(v0 + 7952) = result;
  *(v0 + 7968) = result;
  *(v0 + 7984) = result;
  *(v0 + 8000) = result;
  *(v0 + 8016) = result;
  *(v0 + 8032) = result;
  *(v0 + 16984) = 0x3FF0000000000000;
  *(v0 + 17064) = 1;
  *(v0 + 17065) = *v24;
  *(v0 + 17068) = *&v24[3];
  *(v0 + 17096) = 1050388079;
  *(v0 + 16992) = result;
  *(v0 + 17008) = result;
  *(v0 + 17024) = result;
  *(v0 + 17040) = 0x3FF0000000000000;
  *(v0 + 17056) = 0xC017FFFFFFFFFFE8;
  *(v0 + 8048) = result;
  *(v0 + 8064) = result;
  *(v0 + 8080) = result;
  *(v0 + 8096) = result;
  *(v0 + 16944) = result;
  *(v0 + 16960) = result;
  *(v0 + 8112) = result;
  *(v0 + 16800) = result;
  *(v0 + 16816) = result;
  *(v0 + 16832) = result;
  *(v0 + 16848) = result;
  *(v0 + 16864) = result;
  *(v0 + 16704) = result;
  *(v0 + 16720) = result;
  *(v0 + 16736) = result;
  *(v0 + 16752) = result;
  *(v0 + 16768) = result;
  *(v0 + 16784) = result;
  *(v0 + 16608) = result;
  *(v0 + 16624) = result;
  *(v0 + 16640) = result;
  *(v0 + 16656) = result;
  *(v0 + 16672) = result;
  *(v0 + 16688) = result;
  *(v0 + 16512) = result;
  *(v0 + 16528) = result;
  *(v0 + 16544) = result;
  *(v0 + 16560) = result;
  *(v0 + 16576) = result;
  *(v0 + 16592) = result;
  *(v0 + 16416) = result;
  *(v0 + 16432) = result;
  *(v0 + 16448) = result;
  *(v0 + 16464) = result;
  *(v0 + 16480) = result;
  *(v0 + 16496) = result;
  *(v0 + 16320) = result;
  *(v0 + 16336) = result;
  *(v0 + 16352) = result;
  *(v0 + 16368) = result;
  *(v0 + 0x4000) = result;
  *(v0 + 16400) = result;
  *(v0 + 8128) = result;
  *(v0 + 16240) = result;
  *(v0 + 16256) = result;
  *(v0 + 16272) = result;
  *(v0 + 16288) = result;
  *(v0 + 16304) = result;
  *(v0 + 8144) = result;
  *(v0 + 8160) = result;
  *(v0 + 16200) = 0x3FEE6AC340000000;
  *(v0 + 16224) = 0;
  *(v0 + 16232) = 0;
  *(v0 + 8176) = result;
  *(v0 + 0x2000) = result;
  *(v0 + 8208) = result;
  *(v0 + 8224) = result;
  *(v0 + 8240) = result;
  *(v0 + 16112) = result;
  *(v0 + 8256) = result;
  *(v0 + 8272) = result;
  *(v0 + 8288) = result;
  *(v0 + 16016) = result;
  *(v0 + 16048) = result;
  *(v0 + 16064) = result;
  *(v0 + 8304) = result;
  *(v0 + 8320) = result;
  *(v0 + 8336) = result;
  *(v0 + 8352) = result;
  *(v0 + 8432) = result;
  *(v0 + 8448) = result;
  *(v0 + 8472) = 0x3FF0000000000000;
  *(v0 + 15849) = *v23;
  *(v0 + 15880) = 1061997773;
  *(v0 + 8480) = result;
  *(v0 + 15824) = 0x3FF0000000000000;
  *(v0 + 15840) = 0;
  *(v0 + 15848) = 1;
  *(v0 + 15852) = *&v23[3];
  *(v0 + 8496) = result;
  *(v0 + 8512) = result;
  *(v0 + 15768) = 0x3FF0000000000000;
  *(v0 + 15776) = result;
  *(v0 + 15792) = result;
  *(v0 + 15808) = result;
  *(v0 + 8528) = 0x3FF0000000000000;
  *(v0 + 8544) = 0x4032000000000001;
  *(v0 + 15728) = result;
  *(v0 + 15744) = result;
  *(v0 + 8553) = *v17;
  *(v0 + 15616) = result;
  *(v0 + 15632) = result;
  *(v0 + 15648) = result;
  *(v0 + 15520) = result;
  *(v0 + 15536) = result;
  *(v0 + 15552) = result;
  *(v0 + 15568) = result;
  *(v0 + 15584) = result;
  *(v0 + 15600) = result;
  *(v0 + 15424) = result;
  *(v0 + 15440) = result;
  *(v0 + 15456) = result;
  *(v0 + 15472) = result;
  *(v0 + 15488) = result;
  *(v0 + 15504) = result;
  *(v0 + 15328) = result;
  *(v0 + 15344) = result;
  *(v0 + 15360) = result;
  *(v0 + 15376) = result;
  *(v0 + 15392) = result;
  *(v0 + 15408) = result;
  *(v0 + 15232) = result;
  *(v0 + 15248) = result;
  *(v0 + 15264) = result;
  *(v0 + 15280) = result;
  *(v0 + 15296) = result;
  *(v0 + 15312) = result;
  *(v0 + 15136) = result;
  *(v0 + 15152) = result;
  *(v0 + 15168) = result;
  *(v0 + 15184) = result;
  *(v0 + 15200) = result;
  *(v0 + 15216) = result;
  *(v0 + 8552) = 0;
  *(v0 + 15072) = result;
  *(v0 + 15088) = result;
  *(v0 + 15104) = result;
  *(v0 + 15120) = result;
  *(v0 + 8556) = *&v17[3];
  *(v0 + 15016) = 0;
  *(v0 + 15024) = result;
  *(v0 + 15040) = result;
  *(v0 + 15056) = result;
  *(v0 + 8584) = 1061158912;
  *(v0 + 8640) = result;
  *(v0 + 8656) = result;
  *(v0 + 14984) = 0x3FEDEF5480000000;
  *(v0 + 15008) = 0x3FE0000000000000;
  *(v0 + 8672) = result;
  *(v0 + 8720) = result;
  *(v0 + 8752) = result;
  *(v0 + 8768) = result;
  *(v0 + 14848) = result;
  *(v0 + 14896) = result;
  *(v0 + 8784) = result;
  *(v0 + 8800) = result;
  *(v0 + 8816) = result;
  *(v0 + 8864) = result;
  *(v0 + 14800) = result;
  *(v0 + 14832) = result;
  *(v0 + 8904) = 0x3FEB9B9BC0000000;
  *(v0 + 8928) = 0x3FF0000000000000;
  *(v0 + 8936) = 0;
  *(v0 + 8944) = result;
  *(v0 + 8960) = result;
  *(v0 + 8976) = result;
  *(v0 + 14633) = *v22;
  *(v0 + 14664) = 1061158912;
  *(v0 + 14608) = 0x3FF0000000000000;
  *(v0 + 14624) = 0x4018000000000010;
  *(v0 + 14632) = 1;
  *(v0 + 14636) = *&v22[3];
  *(v0 + 8992) = result;
  *(v0 + 14528) = result;
  *(v0 + 14552) = 0x3FF0000000000000;
  *(v0 + 14560) = result;
  *(v0 + 14576) = result;
  *(v0 + 14592) = result;
  *(v0 + 9008) = result;
  *(v0 + 9024) = result;
  *(v0 + 9040) = result;
  *(v0 + 9056) = result;
  *(v0 + 14432) = result;
  *(v0 + 14512) = result;
  *(v0 + 14336) = result;
  *(v0 + 14352) = result;
  *(v0 + 14368) = result;
  *(v0 + 14384) = result;
  *(v0 + 14400) = result;
  *(v0 + 14416) = result;
  *(v0 + 14240) = result;
  *(v0 + 14256) = result;
  *(v0 + 14272) = result;
  *(v0 + 14288) = result;
  *(v0 + 14304) = result;
  *(v0 + 14320) = result;
  *(v0 + 14144) = result;
  *(v0 + 14160) = result;
  *(v0 + 14176) = result;
  *(v0 + 14192) = result;
  *(v0 + 14208) = result;
  *(v0 + 14224) = result;
  *(v0 + 14048) = result;
  *(v0 + 14064) = result;
  *(v0 + 14080) = result;
  *(v0 + 14096) = result;
  *(v0 + 14112) = result;
  *(v0 + 14128) = result;
  *(v0 + 13952) = result;
  *(v0 + 13968) = result;
  *(v0 + 13984) = result;
  *(v0 + 14000) = result;
  *(v0 + 14016) = result;
  *(v0 + 14032) = result;
  *(v0 + 13856) = result;
  *(v0 + 13872) = result;
  *(v0 + 13888) = result;
  *(v0 + 13904) = result;
  *(v0 + 13920) = result;
  *(v0 + 13936) = result;
  *(v0 + 9072) = result;
  *(v0 + 13792) = 0x3FF0000000000000;
  *(v0 + 13800) = 0;
  *(v0 + 13808) = result;
  *(v0 + 13824) = result;
  *(v0 + 13840) = result;
  *(v0 + 9088) = result;
  *(v0 + 9104) = result;
  *(v0 + 9120) = result;
  *(v0 + 9136) = result;
  *(v0 + 13768) = 0x3FED73E5C0000000;
  *(v0 + 9152) = result;
  *(v0 + 13616) = result;
  *(v0 + 13632) = result;
  *(v0 + 13648) = result;
  *(v0 + 13664) = result;
  *(v0 + 13680) = result;
  *(v0 + 9168) = result;
  *(v0 + 9184) = result;
  *(v0 + 9200) = result;
  *(v0 + 9216) = result;
  *(v0 + 9232) = result;
  *(v0 + 13584) = result;
  *(v0 + 9248) = result;
  *(v0 + 9264) = result;
  *(v0 + 9280) = result;
  *(v0 + 9296) = result;
  *(v0 + 9312) = result;
  *(v0 + 9328) = result;
  *(v0 + 9344) = result;
  *(v0 + 13408) = 0x4028000000000010;
  *(v0 + 13416) = 1;
  *(v0 + 13417) = *v21;
  *(v0 + 13420) = *&v21[3];
  *(v0 + 13448) = 1060320051;
  *(v0 + 9360) = result;
  *(v0 + 13336) = 0x3FF0000000000000;
  *(v0 + 13344) = result;
  *(v0 + 13360) = result;
  *(v0 + 13376) = result;
  *(v0 + 13392) = 0x3FF0000000000000;
  *(v0 + 9376) = result;
  *(v0 + 9392) = result;
  *(v0 + 9408) = result;
  *(v0 + 9424) = result;
  *(v0 + 13296) = result;
  *(v0 + 13312) = result;
  *(v0 + 13136) = result;
  *(v0 + 13152) = result;
  *(v0 + 13168) = result;
  *(v0 + 13184) = result;
  *(v0 + 13200) = result;
  *(v0 + 13216) = result;
  *(v0 + 13040) = result;
  *(v0 + 13056) = result;
  *(v0 + 13072) = result;
  *(v0 + 13088) = result;
  *(v0 + 13104) = result;
  *(v0 + 13120) = result;
  *(v0 + 12944) = result;
  *(v0 + 12960) = result;
  *(v0 + 12976) = result;
  *(v0 + 12992) = result;
  *(v0 + 13008) = result;
  *(v0 + 13024) = result;
  *(v0 + 12848) = result;
  *(v0 + 12864) = result;
  *(v0 + 12880) = result;
  *(v0 + 12896) = result;
  *(v0 + 12912) = result;
  *(v0 + 12928) = result;
  *(v0 + 12752) = result;
  *(v0 + 12768) = result;
  *(v0 + 12784) = result;
  *(v0 + 12800) = result;
  *(v0 + 12816) = result;
  *(v0 + 12832) = result;
  *(v0 + 12656) = result;
  *(v0 + 12672) = result;
  *(v0 + 12688) = result;
  *(v0 + 12704) = result;
  *(v0 + 12720) = result;
  *(v0 + 12736) = result;
  *(v0 + 12576) = 0x3FF0000000000000;
  *(v0 + 12584) = 0;
  *(v0 + 12592) = result;
  *(v0 + 12608) = result;
  *(v0 + 12624) = result;
  *(v0 + 12640) = result;
  *(v0 + 9440) = result;
  *(v0 + 9456) = result;
  *(v0 + 9472) = result;
  *(v0 + 12496) = result;
  *(v0 + 12512) = result;
  *(v0 + 12552) = 0x3FEB9B9BC0000000;
  *(v0 + 9488) = result;
  *(v0 + 12400) = result;
  *(v0 + 12416) = result;
  *(v0 + 12432) = result;
  *(v0 + 12448) = result;
  *(v0 + 12464) = result;
  *(v0 + 9504) = result;
  *(v0 + 9520) = result;
  *(v0 + 9536) = result;
  *(v0 + 12304) = result;
  *(v0 + 12320) = result;
  *(v0 + 12368) = result;
  *(v0 + 9552) = result;
  *(v0 + 9568) = result;
  *(v0 + 9648) = result;
  *(v0 + 9664) = result;
  *(v0 + 9688) = 0x3FF0000000000000;
  *(v0 + 12288) = result;
  *(v0 + 12160) = result;
  *(v0 + 12201) = *v20;
  *(v0 + 12232) = 1061158912;
  *(v0 + 12176) = 0x3FF0000000000000;
  *(v0 + 12192) = 0x4031FFFFFFFFFFF6;
  *(v0 + 12200) = 1;
  *(v0 + 12204) = *&v20[3];
  *(v0 + 9696) = result;
  *(v0 + 9712) = result;
  *(v0 + 12096) = result;
  *(v0 + 12120) = 0x3FF0000000000000;
  *(v0 + 12128) = result;
  *(v0 + 12144) = result;
  *(v0 + 9728) = result;
  *(v0 + 9744) = 0x3FF0000000000000;
  *(v0 + 9760) = 0x403DFFFFFFFFFFFELL;
  *(v0 + 12000) = result;
  *(v0 + 12080) = result;
  *(v0 + 11904) = result;
  *(v0 + 11920) = result;
  *(v0 + 11936) = result;
  *(v0 + 11952) = result;
  *(v0 + 11968) = result;
  *(v0 + 11984) = result;
  *(v0 + 11808) = result;
  *(v0 + 11824) = result;
  *(v0 + 11840) = result;
  *(v0 + 11856) = result;
  *(v0 + 11872) = result;
  *(v0 + 11888) = result;
  *(v0 + 11712) = result;
  *(v0 + 11728) = result;
  *(v0 + 11744) = result;
  *(v0 + 11760) = result;
  *(v0 + 11776) = result;
  *(v0 + 11792) = result;
  *(v0 + 11616) = result;
  *(v0 + 11632) = result;
  *(v0 + 11648) = result;
  *(v0 + 11664) = result;
  *(v0 + 11680) = result;
  *(v0 + 11696) = result;
  *(v0 + 11520) = result;
  *(v0 + 11536) = result;
  *(v0 + 11552) = result;
  *(v0 + 11568) = result;
  *(v0 + 11584) = result;
  *(v0 + 11600) = result;
  *(v0 + 11424) = result;
  *(v0 + 11440) = result;
  *(v0 + 11456) = result;
  *(v0 + 11472) = result;
  *(v0 + 11488) = result;
  *(v0 + 11504) = result;
  *(v0 + 9768) = 0;
  *(v0 + 11376) = result;
  *(v0 + 11392) = result;
  *(v0 + 11408) = result;
  *(v0 + 9769) = *v18;
  *(v0 + 11336) = 0x3FEB9B9BC0000000;
  *(v0 + 11360) = 0x3FF0000000000000;
  *(v0 + 11368) = 0;
  *(v0 + 9772) = *&v18[3];
  *(v0 + 9800) = 1061997773;
  *(v0 + 9936) = result;
  *(v0 + 9968) = result;
  *(v0 + 9984) = result;
  *(v0 + 11296) = result;
  *(v0 + 10000) = result;
  *(v0 + 11152) = result;
  *(v0 + 11184) = result;
  *(v0 + 11200) = result;
  *(v0 + 11216) = result;
  *(v0 + 11232) = result;
  *(v0 + 10016) = result;
  *(v0 + 10080) = result;
  *(v0 + 10120) = 0x3FEB9B9BC0000000;
  *(v0 + 10144) = 0x3FF0000000000000;
  *(v0 + 10152) = 0;
  *(v0 + 10160) = result;
  *(v0 + 10176) = result;
  *(v0 + 10192) = result;
  *(v0 + 10208) = result;
  *(v0 + 10224) = result;
  *(v0 + 10984) = 1;
  *(v0 + 10985) = *v19;
  *(v0 + 10988) = *&v19[3];
  *(v0 + 11016) = 1061997773;
  *(v0 + 10904) = 0x3FF0000000000000;
  *(v0 + 10912) = result;
  *(v0 + 10928) = result;
  *(v0 + 10944) = result;
  *(v0 + 10960) = 0x3FF0000000000000;
  *(v0 + 10976) = 0x403DFFFFFFFFFFFELL;
  *(v0 + 10240) = result;
  *(v0 + 10256) = result;
  *(v0 + 10272) = result;
  *(v0 + 10288) = result;
  *(v0 + 10864) = result;
  *(v0 + 10880) = result;
  *(v0 + 10304) = result;
  *(v0 + 10720) = result;
  *(v0 + 10736) = result;
  *(v0 + 10752) = result;
  *(v0 + 10768) = result;
  *(v0 + 10784) = result;
  *(v0 + 10624) = result;
  *(v0 + 10640) = result;
  *(v0 + 10656) = result;
  *(v0 + 10672) = result;
  *(v0 + 10688) = result;
  *(v0 + 10704) = result;
  *(v0 + 10528) = result;
  *(v0 + 10544) = result;
  *(v0 + 10560) = result;
  *(v0 + 10576) = result;
  *(v0 + 10592) = result;
  *(v0 + 10608) = result;
  *(v0 + 10432) = result;
  *(v0 + 10448) = result;
  *(v0 + 10464) = result;
  *(v0 + 10480) = result;
  *(v0 + 10496) = result;
  *(v0 + 10512) = result;
  *(v0 + 10336) = result;
  *(v0 + 10352) = result;
  *(v0 + 10368) = result;
  *(v0 + 10384) = result;
  *(v0 + 10400) = result;
  *(v0 + 10416) = result;
  *(v0 + 10320) = result;
  *(v0 + 18160) = result;
  *(v0 + 18176) = result;
  *(v0 + 18208) = result;
  *(v0 + 18224) = result;
  *(v0 + 18240) = result;
  *(v0 + 18336) = result;
  *(v0 + 18400) = result;
  *(v0 + 18480) = result;
  *(v0 + 18496) = result;
  *(v0 + 18640) = result;
  *(v0 + 18672) = result;
  *(v0 + 18688) = result;
  *(v0 + 18704) = result;
  *(v0 + 18720) = result;
  *(v0 + 18736) = result;
  *(v0 + 18752) = result;
  *(v0 + 18768) = result;
  *(v0 + 18784) = result;
  *(v0 + 18800) = result;
  *(v0 + 18816) = result;
  *(v0 + 18832) = result;
  *(v0 + 18848) = result;
  *(v0 + 18864) = result;
  *(v0 + 18880) = result;
  *(v0 + 18896) = result;
  *(v0 + 18912) = result;
  *(v0 + 18928) = result;
  *(v0 + 18944) = result;
  *(v0 + 18960) = result;
  *(v0 + 18976) = result;
  *(v0 + 18992) = result;
  *(v0 + 19008) = result;
  *(v0 + 19024) = result;
  *(v0 + 19040) = result;
  *(v0 + 19056) = result;
  *(v0 + 19072) = result;
  *(v0 + 19088) = result;
  *(v0 + 19104) = result;
  *(v0 + 19120) = result;
  *(v0 + 19136) = result;
  *(v0 + 19152) = result;
  *(v0 + 19168) = result;
  *(v0 + 19184) = result;
  *(v0 + 19200) = result;
  *(v0 + 19216) = result;
  *(v0 + 19232) = result;
  *(v0 + 19248) = result;
  *(v0 + 19264) = result;
  *(v0 + 19280) = result;
  *(v0 + 19296) = result;
  *(v0 + 19376) = result;
  *(v0 + 19392) = result;
  *(v0 + 19424) = result;
  *(v0 + 19440) = result;
  *(v0 + 19456) = result;
  *(v0 + 19696) = result;
  *(v0 + 19712) = result;
  *(v0 + 19728) = result;
  *(v0 + 19744) = result;
  *(v0 + 19760) = result;
  *(v0 + 19776) = result;
  *(v0 + 19808) = result;
  *(v0 + 19856) = result;
  *(v0 + 19888) = result;
  *(v0 + 19904) = result;
  *(v0 + 19920) = result;
  *(v0 + 19936) = result;
  *(v0 + 19952) = result;
  *(v0 + 19968) = result;
  *(v0 + 19984) = result;
  *(v0 + 20000) = result;
  *(v0 + 20016) = result;
  *(v0 + 20032) = result;
  *(v0 + 20048) = result;
  *(v0 + 20064) = result;
  *(v0 + 20080) = result;
  *(v0 + 20096) = result;
  *(v0 + 20112) = result;
  *(v0 + 20128) = result;
  *(v0 + 20144) = result;
  *(v0 + 20160) = result;
  *(v0 + 20176) = result;
  *(v0 + 20192) = result;
  *(v0 + 20208) = result;
  *(v0 + 20224) = result;
  *(v0 + 20240) = result;
  *(v0 + 20256) = result;
  *(v0 + 20272) = result;
  *(v0 + 20288) = result;
  *(v0 + 20304) = result;
  *(v0 + 20320) = result;
  *(v0 + 20336) = result;
  *(v0 + 20352) = result;
  *(v0 + 20368) = result;
  *(v0 + 20384) = result;
  *(v0 + 20400) = result;
  *(v0 + 20416) = result;
  *(v0 + 20432) = result;
  *(v0 + 20448) = result;
  *(v0 + 20464) = result;
  *(v0 + 20480) = result;
  *(v0 + 20496) = result;
  *(v0 + 20512) = result;
  *(v0 + 20592) = result;
  *(v0 + 20608) = result;
  *(v0 + 20640) = result;
  *(v0 + 20656) = result;
  *(v0 + 20672) = result;
  *(v0 + 20912) = result;
  *(v0 + 20928) = result;
  *(v0 + 20944) = result;
  *(v0 + 20960) = result;
  *(v0 + 20976) = result;
  *(v0 + 20992) = result;
  *(v0 + 21024) = result;
  *(v0 + 21072) = result;
  *(v0 + 21104) = result;
  *(v0 + 21120) = result;
  *(v0 + 21136) = result;
  *(v0 + 21152) = result;
  *(v0 + 21168) = result;
  *(v0 + 21184) = result;
  *(v0 + 21200) = result;
  *(v0 + 21216) = result;
  *(v0 + 21232) = result;
  *(v0 + 21248) = result;
  *(v0 + 21264) = result;
  *(v0 + 21280) = result;
  *(v0 + 21296) = result;
  *(v0 + 21312) = result;
  *(v0 + 21328) = result;
  *(v0 + 21344) = result;
  *(v0 + 21360) = result;
  *(v0 + 21376) = result;
  *(v0 + 21392) = result;
  *(v0 + 21408) = result;
  *(v0 + 21424) = result;
  *(v0 + 21440) = result;
  *(v0 + 21456) = result;
  *(v0 + 21472) = result;
  *(v0 + 21488) = result;
  *(v0 + 21504) = result;
  *(v0 + 21520) = result;
  *(v0 + 21536) = result;
  *(v0 + 21552) = result;
  *(v0 + 21568) = result;
  *(v0 + 21584) = result;
  *(v0 + 21600) = result;
  *(v0 + 21616) = result;
  *(v0 + 21632) = result;
  *(v0 + 21648) = result;
  *(v0 + 21664) = result;
  *(v0 + 21680) = result;
  *(v0 + 21696) = result;
  *(v0 + 21712) = result;
  *(v0 + 21728) = result;
  *(v0 + 21808) = result;
  *(v0 + 21824) = result;
  *(v0 + 21856) = result;
  *(v0 + 21872) = result;
  *(v0 + 21888) = result;
  *(v0 + 7688) = 0x3FEF0AE2E0000000;
  *(v0 + 7712) = 0x3FF0000000000000;
  *(v0 + 7720) = 0;
  *(v0 + 18200) = 0x3FF0000000000000;
  *(v0 + 18256) = 0x3FF0000000000000;
  *(v0 + 18272) = 0xC028000000000015;
  *(v0 + 18280) = 1;
  *(v0 + 18281) = *v25;
  *(v0 + 18284) = *&v25[3];
  *(v0 + 18312) = 1036831948;
  *(v0 + 18632) = 0x3FF0000000000000;
  *(v0 + 18656) = 0;
  *(v0 + 18664) = 1065353216;
  *(v0 + 19416) = 0x3FF0000000000000;
  *(v0 + 19472) = 0x3FF0000000000000;
  *(v0 + 19488) = 0xC04E000000000002;
  *(v0 + 19496) = 1;
  *(v0 + 19497) = *v26;
  *(v0 + 19500) = *&v26[3];
  *(v0 + 19528) = 1040242952;
  *(v0 + 19848) = 0x3FF0000000000000;
  *(v0 + 19872) = 0;
  *(v0 + 19880) = 1065353216;
  *(v0 + 20632) = 0x3FF0000000000000;
  *(v0 + 20688) = 0x3FF0000000000000;
  *(v0 + 20704) = 0xC056800000000000;
  *(v0 + 20712) = 1;
  *(v0 + 20713) = *v27;
  *(v0 + 20716) = *&v27[3];
  *(v0 + 20744) = 1040242952;
  *(v0 + 21064) = 0x3FF0000000000000;
  *(v0 + 21088) = 0;
  *(v0 + 21096) = 1065353216;
  *(v0 + 21848) = 0x3FF0000000000000;
  *(v0 + 21904) = 0x3FF0000000000000;
  return result;
}