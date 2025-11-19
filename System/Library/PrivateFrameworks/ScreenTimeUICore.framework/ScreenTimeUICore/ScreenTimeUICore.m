double sub_264D7F1D8@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = sub_264E24768();
  *(a2 + 8) = 0x4028000000000000;
  *(a2 + 16) = 0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1738, &qword_264E260B8);
  sub_264D7F26C(a1, (a2 + *(v4 + 44)));
  LOBYTE(a1) = sub_264E24998();
  v5 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1708, &qword_264E26038) + 36);
  *v5 = a1;
  result = 0.0;
  *(v5 + 8) = 0u;
  *(v5 + 24) = 0u;
  *(v5 + 40) = 1;
  return result;
}

uint64_t sub_264D7F26C@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1740, &qword_264E260C0);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v19[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v6);
  v10 = &v19[-v9];
  v11 = sub_264E24818();
  v20 = 1;
  sub_264D7F510(&v32);
  v25 = *&v33[48];
  v26 = *&v33[64];
  v27 = v33[80];
  v21 = v32;
  v22 = *v33;
  v23 = *&v33[16];
  v24 = *&v33[32];
  v28[0] = v32;
  v28[1] = *v33;
  v28[2] = *&v33[16];
  v28[3] = *&v33[32];
  v28[4] = *&v33[48];
  v28[5] = *&v33[64];
  v29 = v33[80];
  sub_264D81744(&v21, &v30, &qword_27FFB1748, &qword_264E260C8);
  sub_264D817BC(v28, &qword_27FFB1748, &qword_264E260C8);
  *&v19[55] = v24;
  *&v19[71] = v25;
  *&v19[87] = v26;
  *&v19[7] = v21;
  *&v19[23] = v22;
  v19[103] = v27;
  *&v19[39] = v23;
  v12 = v20;
  *v10 = sub_264E24828();
  *(v10 + 1) = 0;
  v10[16] = 1;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1750, &qword_264E260D0);
  sub_264D7F740(a1, &v10[*(v13 + 44)]);
  sub_264D814EC(v10, v8);
  *(&v31[5] + 1) = *&v19[80];
  *(&v31[4] + 1) = *&v19[64];
  *(&v31[3] + 1) = *&v19[48];
  *(&v31[1] + 1) = *&v19[16];
  v30 = v11;
  LOBYTE(v31[0]) = v12;
  *(&v31[6] + 1) = *&v19[96];
  *(v31 + 1) = *v19;
  *(&v31[2] + 1) = *&v19[32];
  v14 = v31[4];
  a2[4] = v31[3];
  a2[5] = v14;
  a2[6] = v31[5];
  *(a2 + 105) = *(&v31[5] + 9);
  v15 = v31[0];
  *a2 = v30;
  a2[1] = v15;
  v16 = v31[2];
  a2[2] = v31[1];
  a2[3] = v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1758, &qword_264E260D8);
  sub_264D814EC(v8, a2 + *(v17 + 48));
  sub_264D81744(&v30, &v32, &qword_27FFB1760, &unk_264E260E0);
  sub_264D8155C(v10);
  sub_264D8155C(v8);
  *&v33[49] = *&v19[48];
  *&v33[65] = *&v19[64];
  v34 = *&v19[80];
  *&v33[1] = *v19;
  *&v33[17] = *&v19[16];
  v32 = v11;
  v33[0] = v12;
  v35 = *&v19[96];
  *&v33[33] = *&v19[32];
  return sub_264D817BC(&v32, &qword_27FFB1760, &unk_264E260E0);
}

void sub_264D7F510(uint64_t a1@<X8>)
{
  v2 = sub_264E24D28();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20]();
  v6 = &v22[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = [objc_opt_self() bundle];
  v8 = sub_264E250E8();
  v9 = [objc_opt_self() imageNamed:v8 inBundle:v7 withConfiguration:0];

  if (v9)
  {
    sub_264E24D08();
    (*(v3 + 104))(v6, *MEMORY[0x277CE0FE0], v2);
    v10 = sub_264E24D48();

    (*(v3 + 8))(v6, v2);
    sub_264E24F58();
    sub_264E244B8();
    v11 = v23;
    v12 = v24;
    v13 = v25;
    v14 = v26;
    v15 = v27;
    v16 = v28;
    v17 = sub_264E249A8();
    sub_264E243D8();
    v22[24] = v12;
    v22[16] = v14;
    v22[8] = 0;
    *a1 = v10;
    *(a1 + 8) = v11;
    *(a1 + 16) = v12;
    *(a1 + 24) = v13;
    *(a1 + 32) = v14;
    *(a1 + 40) = v15;
    *(a1 + 48) = v16;
    *(a1 + 56) = v17;
    *(a1 + 64) = v18;
    *(a1 + 72) = v19;
    *(a1 + 80) = v20;
    *(a1 + 88) = v21;
    *(a1 + 96) = 0;
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_264D7F740@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v72 = a2;
  v71 = sub_264E248A8();
  v66 = *(v71 - 1);
  v3 = *(v66 + 64);
  MEMORY[0x28223BE20](v71);
  v5 = &v56 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for CommunicationSafetyAnalyticsTipView();
  v67 = *(v6 - 8);
  v7 = *(v67 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1768, &unk_264E298C0);
  v70 = *(v68 - 8);
  v8 = *(v70 + 64);
  MEMORY[0x28223BE20](v68);
  v10 = &v56 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1770, &qword_264E260F0);
  v76 = *(v11 - 8);
  v77 = v11;
  v12 = v76[8];
  v13 = MEMORY[0x28223BE20](v11);
  v69 = &v56 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v74 = &v56 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1778, &qword_264E260F8);
  v17 = v16 - 8;
  v18 = *(*(v16 - 8) + 64);
  v19 = MEMORY[0x28223BE20](v16);
  v75 = &v56 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v22 = &v56 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1780, &qword_264E26100);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v73 = &v56 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v56 - v27;
  *v28 = sub_264E24768();
  *(v28 + 1) = 0;
  v28[16] = 1;
  v29 = &v28[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1788, &qword_264E26108) + 44)];
  v58 = v28;
  sub_264D7FED0(a1, v29);
  v65 = sub_264E24778();
  sub_264D805B4(v78);
  v62 = v78[0];
  v61 = v78[1];
  v59 = v79;
  v63 = v80;
  v64 = v81;
  v60 = v82;
  LOBYTE(v78[0]) = 1;
  v84 = v79;
  v83 = v82;
  sub_264E24EA8();
  v30 = sub_264E249B8();
  sub_264E243D8();
  v31 = &v22[*(v17 + 44)];
  v57 = v22;
  *v31 = v30;
  *(v31 + 1) = v32;
  *(v31 + 2) = v33;
  *(v31 + 3) = v34;
  *(v31 + 4) = v35;
  v31[40] = 0;
  sub_264D815C4(a1, &v56 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v36 = (*(v67 + 80) + 16) & ~*(v67 + 80);
  v37 = swift_allocObject();
  sub_264D8162C(&v56 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v37 + v36);
  sub_264E24DD8();
  sub_264E24898();
  sub_264D81DCC(&qword_27FFB1798, &qword_27FFB1768, &unk_264E298C0);
  sub_264D816FC(&qword_27FFB17A0, MEMORY[0x277CDE0B8]);
  v38 = v74;
  v39 = v68;
  v40 = v71;
  sub_264E24BB8();
  (*(v66 + 8))(v5, v40);
  (*(v70 + 8))(v10, v39);
  v41 = v73;
  sub_264D81744(v28, v73, &qword_27FFB1780, &qword_264E26100);
  v42 = v22;
  v43 = v75;
  sub_264D81744(v42, v75, &qword_27FFB1778, &qword_264E260F8);
  v71 = v76[2];
  v44 = v69;
  (v71)(v69, v38, v77);
  v45 = v72;
  sub_264D81744(v41, v72, &qword_27FFB1780, &qword_264E26100);
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB17A8, &qword_264E26118);
  v47 = v45 + v46[12];
  *v47 = 0x4014000000000000;
  *(v47 + 8) = 0;
  v48 = v45 + v46[16];
  *v48 = v65;
  *(v48 + 8) = 0;
  *(v48 + 16) = 1;
  v49 = v62;
  v50 = v61;
  *(v48 + 24) = v62;
  *(v48 + 32) = v50;
  v51 = v59;
  *(v48 + 40) = v59;
  v52 = v64;
  *(v48 + 48) = v63;
  *(v48 + 56) = v52;
  *(v48 + 64) = v60;
  sub_264D81744(v43, v45 + v46[20], &qword_27FFB1778, &qword_264E260F8);
  v53 = v77;
  (v71)(v45 + v46[24], v44, v77);
  sub_264D80F20(v49, v50, v51);
  v54 = v76[1];

  v54(v74, v53);
  sub_264D817BC(v57, &qword_27FFB1778, &qword_264E260F8);
  sub_264D817BC(v58, &qword_27FFB1780, &qword_264E26100);
  v54(v44, v53);
  sub_264D817BC(v75, &qword_27FFB1778, &qword_264E260F8);
  sub_264D817AC(v49, v50, v51);

  return sub_264D817BC(v73, &qword_27FFB1780, &qword_264E26100);
}

uint64_t sub_264D7FED0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v49 = a1;
  v45 = a2;
  v48 = *(type metadata accessor for CommunicationSafetyAnalyticsTipView() - 8);
  v47 = *(v48 + 64);
  (MEMORY[0x28223BE20])();
  v46 = &v43[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB17B0, &unk_264E26120);
  v51 = *(v3 - 8);
  v52 = v3;
  v4 = *(v51 + 64);
  v5 = (MEMORY[0x28223BE20])();
  v50 = &v43[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v5);
  v53 = &v43[-v7];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB17B8, &qword_264E279E0);
  v9 = (*(*(v8 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v43[-v10];
  v12 = sub_264E24A88();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v43[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_264E247D8();
  v17 = [objc_opt_self() bundle];
  v18 = sub_264E24AE8();
  v20 = v19;
  v22 = v21;
  (*(v13 + 104))(v16, *MEMORY[0x277CE0A68], v12);
  v23 = sub_264E249F8();
  (*(*(v23 - 8) + 56))(v11, 1, 1, v23);
  sub_264E24A48();
  sub_264D817BC(v11, &qword_27FFB17B8, &qword_264E279E0);
  (*(v13 + 8))(v16, v12);
  sub_264E24A18();
  sub_264E24A58();

  v24 = sub_264E24AD8();
  v26 = v25;
  v44 = v27;
  v29 = v28;

  sub_264D817AC(v18, v20, v22 & 1);

  v30 = v46;
  sub_264D815C4(v49, v46);
  v31 = (*(v48 + 80) + 16) & ~*(v48 + 80);
  v32 = swift_allocObject();
  sub_264D8162C(v30, v32 + v31);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB17C0, &qword_264E26130);
  sub_264D819BC();
  v33 = v53;
  sub_264E24DD8();
  v35 = v50;
  v34 = v51;
  v36 = *(v51 + 16);
  v37 = v52;
  v36(v50, v33, v52);
  v38 = v45;
  *v45 = v24;
  v38[1] = v26;
  LOBYTE(v13) = v44 & 1;
  *(v38 + 16) = v44 & 1;
  v38[3] = v29;
  v38[4] = 0;
  *(v38 + 40) = 1;
  v39 = v38;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1810, &qword_264E26158);
  v36(v39 + *(v40 + 64), v35, v37);
  sub_264D80F20(v24, v26, v13);
  v41 = *(v34 + 8);

  v41(v53, v37);
  v41(v35, v37);
  sub_264D817AC(v24, v26, v13);
}

uint64_t sub_264D80430@<X0>(uint64_t a1@<X8>)
{
  v2 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB17B8, &qword_264E279E0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v4 = &v17 - v3;
  v5 = sub_264E24D18();
  v6 = sub_264E249F8();
  (*(*(v6 - 8) + 56))(v4, 1, 1, v6);
  sub_264E24A38();
  sub_264D817BC(v4, &qword_27FFB17B8, &qword_264E279E0);
  sub_264E24A08();
  v7 = sub_264E24A58();

  KeyPath = swift_getKeyPath();
  v9 = sub_264E24C68();
  v10 = swift_getKeyPath();
  v11 = sub_264E249A8();
  result = sub_264E243D8();
  *a1 = v5;
  *(a1 + 8) = KeyPath;
  *(a1 + 16) = v7;
  *(a1 + 24) = v10;
  *(a1 + 32) = v9;
  *(a1 + 40) = v11;
  *(a1 + 48) = v13;
  *(a1 + 56) = v14;
  *(a1 + 64) = v15;
  *(a1 + 72) = v16;
  *(a1 + 80) = 0;
  return result;
}

uint64_t sub_264D805B4@<X0>(uint64_t a1@<X8>)
{
  sub_264E247D8();
  v2 = [objc_opt_self() bundle];
  v3 = sub_264E24AE8();
  v5 = v4;
  v7 = v6;
  sub_264E24A78();
  v8 = sub_264E24AD8();
  v10 = v9;
  v12 = v11;

  sub_264D817AC(v3, v5, v7 & 1);

  sub_264E24C68();
  v13 = sub_264E24AB8();
  v15 = v14;
  v17 = v16;
  v19 = v18;

  sub_264D817AC(v8, v10, v12 & 1);

  *a1 = v13;
  *(a1 + 8) = v15;
  *(a1 + 16) = v17 & 1;
  *(a1 + 24) = v19;
  *(a1 + 32) = 0x403E000000000000;
  *(a1 + 40) = 0;
  sub_264D80F20(v13, v15, v17 & 1);

  sub_264D817AC(v13, v15, v17 & 1);
}

uint64_t sub_264D80774@<X0>(uint64_t a1@<X8>)
{
  sub_264E247D8();
  v2 = [objc_opt_self() bundle];
  result = sub_264E24AE8();
  *a1 = result;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5 & 1;
  *(a1 + 24) = v6;
  return result;
}

uint64_t sub_264D80864@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1708, &qword_264E26038);
  sub_264D813DC();
  sub_264E24F38();
  KeyPath = swift_getKeyPath();
  v3 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1728, &qword_264E26078) + 36);
  *v3 = KeyPath;
  *(v3 + 8) = 0;
  *(v3 + 16) = 1;
  v4 = swift_getKeyPath();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1730, &qword_264E260B0);
  v6 = a1 + *(result + 36);
  *v6 = v4;
  *(v6 + 8) = 0;
  return result;
}

uint64_t sub_264D80948@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  *a7 = a3;
  *(a7 + 8) = a4;
  *(a7 + 16) = a5 & 1;
  *(a7 + 24) = a6;
  *(a7 + 32) = a1;
  *(a7 + 40) = a2;
  sub_264D80F20(a3, a4, a5 & 1);
}

uint64_t sub_264D809A0(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = a1[3];
  if (__isPlatformVersionAtLeast(2, 26, 0, 0))
  {
    sub_264E24938();

    return sub_264E24508();
  }

  else
  {
    sub_264E24578();
    swift_getWitnessTable();
    sub_264E248B8();
    sub_264E24508();
    sub_264E25318();
    swift_getWitnessTable();
    sub_264E24578();
    swift_getWitnessTable();
    sub_264E248B8();
    return sub_264E24508();
  }
}

uint64_t sub_264D80B04(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  v3 = a1[3];
  if (__isPlatformVersionAtLeast(2, 26, 0, 0))
  {
    sub_264E24938();
    sub_264E24508();
  }

  else
  {
    sub_264E24578();
    swift_getWitnessTable();
    sub_264E248B8();
    sub_264E24508();
    sub_264E25318();
    swift_getWitnessTable();
    sub_264E24578();
    swift_getWitnessTable();
    sub_264E248B8();
    sub_264E24508();
    swift_getWitnessTable();
    swift_getWitnessTable();
  }

  swift_getWitnessTable();
  return swift_getWitnessTable();
}

void *sub_264D80D04@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_264D80D20(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = sub_264E25108();
  v6 = v5;
  if (v4 == sub_264E25108() && v6 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_264E25478();
  }

  return v9 & 1;
}

BOOL sub_264D80DC4(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

uint64_t sub_264D80E1C()
{
  v1 = *v0;
  sub_264E254A8();
  MEMORY[0x26674F610](v1);
  return sub_264E254C8();
}

uint64_t sub_264D80E90()
{
  v1 = *v0;
  sub_264E254A8();
  MEMORY[0x26674F610](v1);
  return sub_264E254C8();
}

uint64_t sub_264D80ED4@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = sub_264E25108();
  *a1 = result;
  a1[1] = v5;
  return result;
}

uint64_t sub_264D80F20(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_264D80FA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB16D8, &unk_264E25F90);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_264D810C4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB16D8, &unk_264E25F90);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t type metadata accessor for CommunicationSafetyAnalyticsTipView()
{
  result = qword_27FFB16E0;
  if (!qword_27FFB16E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_264D811D4()
{
  sub_264D81258();
  if (v0 <= 0x3F)
  {
    sub_264D812B0();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_264D81258()
{
  if (!qword_27FFB16F0)
  {
    sub_264E24808();
    v0 = sub_264E24438();
    if (!v1)
    {
      atomic_store(v0, &qword_27FFB16F0);
    }
  }
}

unint64_t sub_264D812B0()
{
  result = qword_27FFB16F8;
  if (!qword_27FFB16F8)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_27FFB16F8);
  }

  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_264D81310(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_264D81330(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 16) = v3;
  return result;
}

void sub_264D8136C(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

unint64_t sub_264D813DC()
{
  result = qword_27FFB1710;
  if (!qword_27FFB1710)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FFB1708, &qword_264E26038);
    sub_264D81DCC(&qword_27FFB1718, &qword_27FFB1720, &qword_264E26040);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFB1710);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_264D814EC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1740, &qword_264E260C0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_264D8155C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1740, &qword_264E260C0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_264D815C4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CommunicationSafetyAnalyticsTipView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_264D8162C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CommunicationSafetyAnalyticsTipView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_264D81690()
{
  v1 = type metadata accessor for CommunicationSafetyAnalyticsTipView();
  v2 = v0 + *(v1 + 20) + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));
  v3 = *(v2 + 8);
  return (*v2)();
}

uint64_t sub_264D816FC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_264D81744(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_264D817AC(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_264D817BC(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t objectdestroyTm()
{
  v1 = type metadata accessor for CommunicationSafetyAnalyticsTipView();
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = (v0 + v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1790, &qword_264E26110);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_264E24808();
    (*(*(v6 - 8) + 8))(v0 + v3, v6);
  }

  else
  {
    v7 = *v5;
  }

  v8 = *(v5 + *(v1 + 20) + 8);

  v9 = *(v5 + *(v1 + 24) + 8);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_264D81950()
{
  v1 = type metadata accessor for CommunicationSafetyAnalyticsTipView();
  v2 = v0 + *(v1 + 24) + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));
  v3 = *(v2 + 8);
  return (*v2)();
}

unint64_t sub_264D819BC()
{
  result = qword_27FFB17C8;
  if (!qword_27FFB17C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FFB17C0, &qword_264E26130);
    sub_264D81A48();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFB17C8);
  }

  return result;
}

unint64_t sub_264D81A48()
{
  result = qword_27FFB17D0;
  if (!qword_27FFB17D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FFB17D8, &qword_264E26138);
    sub_264D81B00();
    sub_264D81DCC(&qword_27FFB1800, &qword_27FFB1808, &qword_264E26150);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFB17D0);
  }

  return result;
}

unint64_t sub_264D81B00()
{
  result = qword_27FFB17E0;
  if (!qword_27FFB17E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FFB17E8, &unk_264E26140);
    sub_264D81DCC(&qword_27FFB17F0, &qword_27FFB17F8, &qword_264E28590);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFB17E0);
  }

  return result;
}

unint64_t sub_264D81BCC()
{
  result = qword_27FFB1818;
  if (!qword_27FFB1818)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FFB1730, &qword_264E260B0);
    sub_264D81C84();
    sub_264D81DCC(&qword_27FFB1848, &qword_27FFB1850, &unk_264E261D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFB1818);
  }

  return result;
}

unint64_t sub_264D81C84()
{
  result = qword_27FFB1820;
  if (!qword_27FFB1820)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FFB1728, &qword_264E26078);
    sub_264D81D3C();
    sub_264D81DCC(&qword_27FFB1838, &qword_27FFB1840, &qword_264E280A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFB1820);
  }

  return result;
}

unint64_t sub_264D81D3C()
{
  result = qword_27FFB1828;
  if (!qword_27FFB1828)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FFB1830, &unk_264E261C0);
    sub_264D813DC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFB1828);
  }

  return result;
}

uint64_t sub_264D81DCC(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t static UsageOverviewChart.Day.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (sub_264E23A78())
  {
    v4 = type metadata accessor for UsageOverviewChart.Day(0);
    if (*(a1 + *(v4 + 20)) == *(a2 + *(v4 + 20)))
    {
      v5 = v4;
      if (sub_264D81ED4(*(a1 + *(v4 + 24)), *(a2 + *(v4 + 24))))
      {
        v6 = *(v5 + 28);

        JUMPOUT(0x26674DD10);
      }
    }
  }

  return 0;
}

uint64_t sub_264D81ED4(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_13:
    v12 = v9 | (v4 << 6);
    v13 = (*(v3 + 48) + 16 * v12);
    v14 = *v13;
    v15 = v13[1];
    v16 = *(*(v3 + 56) + 8 * v12);

    v17 = sub_264D9D57C(v14, v15);
    v19 = v18;

    if ((v19 & 1) == 0 || *(*(a2 + 56) + 8 * v17) != v16)
    {
      return 0;
    }
  }

  v10 = v4;
  while (1)
  {
    v4 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v11 = *(v3 + 64 + 8 * v4);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v7 = (v11 - 1) & v11;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_264D82010(uint64_t a1, uint64_t a2, int *a3)
{
  if (sub_264E23A78() & 1) != 0 && *(a1 + a3[5]) == *(a2 + a3[5]) && (sub_264D81ED4(*(a1 + a3[6]), *(a2 + a3[6])))
  {
    v6 = a3[7];

    JUMPOUT(0x26674DD10);
  }

  return 0;
}

uint64_t sub_264D820A4(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  if (*(a1 + 8) == *(a2 + 8) && *(a1 + 16) == *(a2 + 16))
  {
    return 1;
  }

  else
  {
    return sub_264E25478();
  }
}

uint64_t _s16ScreenTimeUICore18UsageOverviewChartV3DayV2id10Foundation4DateVvg_0@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_264E23AA8();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t UsageOverviewChart.Model.init(startOfWeek:usage:calendar:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for UsageOverviewChart.Model(0);
  *(a4 + v8[7]) = 3;
  v9 = sub_264E23AA8();
  (*(*(v9 - 8) + 32))(a4, a1, v9);
  *(a4 + v8[5]) = a2;
  v10 = v8[6];
  v11 = sub_264E23C38();
  v12 = *(*(v11 - 8) + 32);

  return v12(a4 + v10, a3, v11);
}

uint64_t UsageOverviewChart.Model.contains(date:)(uint64_t a1)
{
  v2 = v1;
  v31 = a1;
  v3 = sub_264E23AA8();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v30 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1858, &unk_264E26200);
  v8 = v7 - 8;
  v9 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v29 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1860, &qword_264E267E0);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12 - 8);
  v32 = &v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v29 - v17;
  MEMORY[0x28223BE20](v16);
  v20 = &v29 - v19;
  v21 = v1 + *(type metadata accessor for UsageOverviewChart.Model(0) + 24);
  Calendar.startOfWeek(containing:)(v31, v20);
  (*(v4 + 16))(v18, v2, v3);
  (*(v4 + 56))(v18, 0, 1, v3);
  v22 = *(v8 + 56);
  sub_264D81744(v20, v11, &qword_27FFB1860, &qword_264E267E0);
  sub_264D81744(v18, &v11[v22], &qword_27FFB1860, &qword_264E267E0);
  v23 = *(v4 + 48);
  if (v23(v11, 1, v3) != 1)
  {
    sub_264D81744(v11, v32, &qword_27FFB1860, &qword_264E267E0);
    if (v23(&v11[v22], 1, v3) != 1)
    {
      v25 = v30;
      (*(v4 + 32))(v30, &v11[v22], v3);
      sub_264D89FD8(&qword_27FFB1868, MEMORY[0x277CC9578]);
      v26 = v32;
      v24 = sub_264E25068();
      v27 = *(v4 + 8);
      v27(v25, v3);
      sub_264D817BC(v18, &qword_27FFB1860, &qword_264E267E0);
      sub_264D817BC(v20, &qword_27FFB1860, &qword_264E267E0);
      v27(v26, v3);
      sub_264D817BC(v11, &qword_27FFB1860, &qword_264E267E0);
      return v24 & 1;
    }

    sub_264D817BC(v18, &qword_27FFB1860, &qword_264E267E0);
    sub_264D817BC(v20, &qword_27FFB1860, &qword_264E267E0);
    (*(v4 + 8))(v32, v3);
    goto LABEL_6;
  }

  sub_264D817BC(v18, &qword_27FFB1860, &qword_264E267E0);
  sub_264D817BC(v20, &qword_27FFB1860, &qword_264E267E0);
  if (v23(&v11[v22], 1, v3) != 1)
  {
LABEL_6:
    sub_264D817BC(v11, &qword_27FFB1858, &unk_264E26200);
    v24 = 0;
    return v24 & 1;
  }

  sub_264D817BC(v11, &qword_27FFB1860, &qword_264E267E0);
  v24 = 1;
  return v24 & 1;
}

uint64_t sub_264D826BC(uint64_t (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v7 = type metadata accessor for UsageOverviewChart.Day(0);
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
      sub_264D8EFDC(a3 + v16 + v17 * v14, v13, type metadata accessor for UsageOverviewChart.Day);
      v18 = a1(v13);
      if (v3)
      {
        sub_264D902E4(v13, type metadata accessor for UsageOverviewChart.Day);

        goto LABEL_15;
      }

      if (v18)
      {
        sub_264D89F10(v13, v25, type metadata accessor for UsageOverviewChart.Day);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v27 = v15;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_264D8D090(0, *(v15 + 16) + 1, 1);
          v15 = v27;
        }

        v21 = *(v15 + 16);
        v20 = *(v15 + 24);
        if (v21 >= v20 >> 1)
        {
          sub_264D8D090(v20 > 1, v21 + 1, 1);
          v15 = v27;
        }

        *(v15 + 16) = v21 + 1;
        result = sub_264D89F10(v25, v15 + v16 + v21 * v17, type metadata accessor for UsageOverviewChart.Day);
        a3 = v23;
        a1 = v22[0];
      }

      else
      {
        result = sub_264D902E4(v13, type metadata accessor for UsageOverviewChart.Day);
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

void sub_264D82948(uint64_t (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v7 = type metadata accessor for OverviewChart.Day(0);
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
      sub_264D8EFDC(a3 + v15 + v16 * v13, v12, type metadata accessor for OverviewChart.Day);
      v17 = a1(v12);
      if (v3)
      {
        sub_264D902E4(v12, type metadata accessor for OverviewChart.Day);

        goto LABEL_15;
      }

      if (v17)
      {
        sub_264D89F10(v12, v24, type metadata accessor for OverviewChart.Day);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v26 = v14;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_264D8D218(0, *(v14 + 16) + 1, 1);
          v14 = v26;
        }

        v20 = *(v14 + 16);
        v19 = *(v14 + 24);
        if (v20 >= v19 >> 1)
        {
          sub_264D8D218(v19 > 1, v20 + 1, 1);
          v14 = v26;
        }

        *(v14 + 16) = v20 + 1;
        sub_264D89F10(v24, v14 + v15 + v20 * v16, type metadata accessor for OverviewChart.Day);
        a3 = v22;
        a1 = v21[0];
      }

      else
      {
        sub_264D902E4(v12, type metadata accessor for OverviewChart.Day);
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

void sub_264D82BD4(uint64_t (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v7 = type metadata accessor for DetailChart.Hour(0);
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
      sub_264D8EFDC(a3 + v15 + v16 * v13, v12, type metadata accessor for DetailChart.Hour);
      v17 = a1(v12);
      if (v3)
      {
        sub_264D902E4(v12, type metadata accessor for DetailChart.Hour);

        goto LABEL_15;
      }

      if (v17)
      {
        sub_264D89F10(v12, v24, type metadata accessor for DetailChart.Hour);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v26 = v14;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_264D8D25C(0, *(v14 + 16) + 1, 1);
          v14 = v26;
        }

        v20 = *(v14 + 16);
        v19 = *(v14 + 24);
        if (v20 >= v19 >> 1)
        {
          sub_264D8D25C(v19 > 1, v20 + 1, 1);
          v14 = v26;
        }

        *(v14 + 16) = v20 + 1;
        sub_264D89F10(v24, v14 + v15 + v20 * v16, type metadata accessor for DetailChart.Hour);
        a3 = v22;
        a1 = v21[0];
      }

      else
      {
        sub_264D902E4(v12, type metadata accessor for DetailChart.Hour);
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

void sub_264D82E60(uint64_t (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v7 = type metadata accessor for UsageDetailChart.HourlyUsage(0);
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
      sub_264D8EFDC(a3 + v15 + v16 * v13, v12, type metadata accessor for UsageDetailChart.HourlyUsage);
      v17 = a1(v12);
      if (v3)
      {
        sub_264D902E4(v12, type metadata accessor for UsageDetailChart.HourlyUsage);

        goto LABEL_15;
      }

      if (v17)
      {
        sub_264D89F10(v12, v24, type metadata accessor for UsageDetailChart.HourlyUsage);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v26 = v14;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_264D8D470(0, *(v14 + 16) + 1, 1);
          v14 = v26;
        }

        v20 = *(v14 + 16);
        v19 = *(v14 + 24);
        if (v20 >= v19 >> 1)
        {
          sub_264D8D470(v19 > 1, v20 + 1, 1);
          v14 = v26;
        }

        *(v14 + 16) = v20 + 1;
        sub_264D89F10(v24, v14 + v15 + v20 * v16, type metadata accessor for UsageDetailChart.HourlyUsage);
        a3 = v22;
        a1 = v21[0];
      }

      else
      {
        sub_264D902E4(v12, type metadata accessor for UsageDetailChart.HourlyUsage);
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

uint64_t sub_264D830EC()
{
  v1 = type metadata accessor for UsageOverviewChart.Day(0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v71 = &v62 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_264DEB098(MEMORY[0x277D84F90]);
  v64 = type metadata accessor for UsageOverviewChart.Model(0);
  v65 = v0;
  v6 = *(v0 + *(v64 + 20));
  v75 = v0;

  v7 = v6;
  v8 = 0;
  v9 = sub_264D826BC(sub_264D91648, v74, v7);
  v63 = 0;
  v70 = *(v9 + 16);
  if (!v70)
  {

    v10 = 0;
    goto LABEL_28;
  }

  v10 = 0;
  v11 = 0;
  v12 = *(v1 + 24);
  v68 = v9 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v69 = v12;
  v66 = v9;
  v67 = v2;
  while (2)
  {
    if (v11 >= *(v9 + 16))
    {
      goto LABEL_51;
    }

    v13 = v71;
    sub_264D8EFDC(v68 + *(v2 + 72) * v11, v71, type metadata accessor for UsageOverviewChart.Day);
    v72 = v11 + 1;
    v14 = *(v13 + v69);

    sub_264D902E4(v13, type metadata accessor for UsageOverviewChart.Day);
    v15 = 0;
    v17 = v14 + 64;
    v16 = *(v14 + 64);
    v73 = v14;
    v18 = 1 << *(v14 + 32);
    if (v18 < 64)
    {
      v19 = ~(-1 << v18);
    }

    else
    {
      v19 = -1;
    }

    v20 = v19 & v16;
    v8 = (v18 + 63) >> 6;
    while (v20)
    {
LABEL_16:
      v24 = __clz(__rbit64(v20)) | (v15 << 6);
      v25 = (*(v73 + 6) + 16 * v24);
      v26 = *v25;
      v27 = v25[1];
      v28 = *(*(v73 + 7) + 8 * v24);

      sub_264D91628(v10);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v76 = v5;
      v22 = sub_264D9D57C(v26, v27);
      v31 = v5[2];
      v32 = (v30 & 1) == 0;
      v33 = __OFADD__(v31, v32);
      v34 = v31 + v32;
      if (v33)
      {
LABEL_48:
        __break(1u);
LABEL_49:
        __break(1u);
        goto LABEL_50;
      }

      v35 = v30;
      if (v5[3] < v34)
      {
        sub_264D9E134(v34, isUniquelyReferenced_nonNull_native);
        v22 = sub_264D9D57C(v26, v27);
        if ((v35 & 1) != (v36 & 1))
        {
          goto LABEL_55;
        }

LABEL_21:
        v5 = v76;
        if (v35)
        {
          goto LABEL_9;
        }

        goto LABEL_22;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_21;
      }

      v40 = v22;
      sub_264DA0FDC();
      v22 = v40;
      v5 = v76;
      if (v35)
      {
LABEL_9:
        v21 = v22;

        v22 = v21;
        goto LABEL_10;
      }

LABEL_22:
      v5[(v22 >> 6) + 8] |= 1 << v22;
      v37 = (v5[6] + 16 * v22);
      *v37 = v26;
      v37[1] = v27;
      *(v5[7] + 8 * v22) = 0;
      v38 = v5[2];
      v33 = __OFADD__(v38, 1);
      v39 = v38 + 1;
      if (v33)
      {
        goto LABEL_49;
      }

      v5[2] = v39;
LABEL_10:
      v20 &= v20 - 1;
      *(v5[7] + 8 * v22) = v28 + *(v5[7] + 8 * v22);
      v10 = sub_264D80DA8;
    }

    while (1)
    {
      v23 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_48;
      }

      if (v23 >= v8)
      {
        break;
      }

      v20 = *(v17 + 8 * v23);
      ++v15;
      if (v20)
      {
        v15 = v23;
        goto LABEL_16;
      }
    }

    v11 = v72;
    v9 = v66;
    v2 = v67;
    if (v72 != v70)
    {
      continue;
    }

    break;
  }

LABEL_28:
  v73 = v10;
  v41 = v5[2];
  v42 = MEMORY[0x277D84F90];
  if (!v41)
  {
    v44 = MEMORY[0x277D84F90];
LABEL_32:
    v76 = v44;
    v8 = v63;
    sub_264D8C4F4(&v76);
    if (v8)
    {
      goto LABEL_56;
    }

    v45 = sub_264DFF6A4(*(v65 + *(v64 + 28)), v76);
    v8 = v48 >> 1;
    v49 = (v48 >> 1) - v47;
    if (__OFSUB__(v48 >> 1, v47))
    {
LABEL_52:
      __break(1u);
      goto LABEL_53;
    }

    v50 = v45;
    if (!v49)
    {

      swift_unknownObjectRelease();
      sub_264D91628(v73);
      return MEMORY[0x277D84F90];
    }

    v51 = v46;
    v52 = v47;
    v76 = v42;
    sub_264D8D0D4(0, v49 & ~(v49 >> 63), 0);
    if (v49 < 0)
    {
      goto LABEL_54;
    }

    v72 = v50;
    v53 = v76;
    if (v52 <= v8)
    {
      v54 = v8;
    }

    else
    {
      v54 = v52;
    }

    v55 = v54 - v52;
    v56 = (v51 + 24 * v52 + 8);
    while (v55)
    {
      v58 = *(v56 - 1);
      v57 = *v56;
      v76 = v53;
      v8 = v53[2];
      v59 = v53[3];

      if (v8 >= v59 >> 1)
      {
        sub_264D8D0D4((v59 > 1), v8 + 1, 1);
        v53 = v76;
      }

      v53[2] = v8 + 1;
      v60 = &v53[2 * v8];
      v60[4] = v58;
      v60[5] = v57;
      --v55;
      v56 += 3;
      if (!--v49)
      {

        swift_unknownObjectRelease();
        sub_264D91628(v73);
        return v53;
      }
    }

LABEL_50:
    __break(1u);
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  v43 = MEMORY[0x277D84F90];
  v44 = sub_264D8C20C(v5[2], 0);
  v8 = sub_264D8E104(&v76, v44 + 4, v41, v5);

  sub_264D8F07C();
  if (v8 == v41)
  {
    v42 = v43;
    goto LABEL_32;
  }

LABEL_53:
  __break(1u);
LABEL_54:
  __break(1u);
LABEL_55:
  sub_264E25498();
  __break(1u);
LABEL_56:

  __break(1u);
  return result;
}

uint64_t sub_264D83684(uint64_t a1, uint64_t a2)
{
  v5 = 0;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1C18, &qword_264E26690);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v74 = &v69 - v8;
  v75 = type metadata accessor for UsageOverviewChart.Day(0);
  v9 = *(v75 - 1);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v75);
  v13 = &v69 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v76 = &v69 - v14;
  result = type metadata accessor for UsageOverviewChart.Model(0);
  v16 = *(v2 + *(result + 28));
  if (!a2 || !*(a2 + 16))
  {
    v19 = sub_264D830EC();
    sub_264D8EFDC(a1, v76, type metadata accessor for UsageOverviewChart.Day);

    v25 = v16 + 1;
    if (!__OFADD__(v16, 1))
    {
      goto LABEL_7;
    }

LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  v17 = *(a2 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + v75[6]);
  v18 = *(v17 + 16);
  if (v18)
  {
    v70 = v9;
    v73 = 0;
    v19 = sub_264D8C29C(v18, 0);
    v20 = sub_264D8E260(v77, v19 + 4, v18, v17);
    v71 = v77[4];
    v72 = v20;

    result = sub_264D8F07C();
    if (v72 != v18)
    {
LABEL_62:
      __break(1u);
      goto LABEL_63;
    }

    v5 = v73;
    v21 = v13;
    v9 = v70;
  }

  else
  {
    v19 = MEMORY[0x277D84F90];
    v21 = v13;
  }

  v16 = v19[2];
  MEMORY[0x28223BE20](result);
  *(&v69 - 2) = a1;

  v52 = v74;
  sub_264D93B30(sub_264D915F8, a2, v74);
  v53 = *(v9 + 48);
  v9 += 48;
  v13 = v53;
  if (v53(v52, 1, v75) == 1)
  {
    v54 = sub_264E23AA8();
    (*(*(v54 - 8) + 16))(v21, a1, v54);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1B80, &unk_264E27060);
    result = swift_initStackObject();
    *(result + 16) = xmmword_264E261E0;
    if (!v19[2])
    {
LABEL_63:
      __break(1u);
      return result;
    }

    v55 = v19[5];
    *(result + 32) = v19[4];
    v56 = result + 32;
    *(result + 40) = v55;
    *(result + 48) = 0;
    v57 = result;

    v58 = sub_264DEB098(v57);
    swift_setDeallocating();
    sub_264D817BC(v56, &qword_27FFB1B88, &qword_264E26610);
    v9 = v75;
    v59 = v21 + v75[7];
    sub_264E23BF8();
    v60 = *(v9 + 24);
    sub_264DEB098(MEMORY[0x277D84F90]);

    *(v21 + *(v9 + 20)) = 0;
    *(v21 + v60) = v58;
    if ((v13)(v74, 1, v9) != 1)
    {
      sub_264D817BC(v74, &qword_27FFB1C18, &qword_264E26690);
    }
  }

  else
  {
    sub_264D89F10(v74, v21, type metadata accessor for UsageOverviewChart.Day);
  }

  sub_264D89F10(v21, v76, type metadata accessor for UsageOverviewChart.Day);
  v25 = v16 + 1;
  if (__OFADD__(v16, 1))
  {
    goto LABEL_43;
  }

LABEL_7:
  v9 = sub_264E17410(0x65646E69616D6572, 0xE900000000000072, v25, 0.0);
  v26 = v19[2];
  v74 = v16;
  if (v26)
  {
    v73 = v5;
    v27 = a1;
    v28 = 0;
    v29 = *(v76 + v75[6]);
    v30 = v19 + 5;
    v31 = v26 - 1;
    v32 = 0.0;
    do
    {
      if (*(v29 + 16) && (v34 = *(v30 - 1), v33 = *v30, , v35 = sub_264D9D57C(v34, v33), LOBYTE(v34) = v36, , (v34 & 1) != 0))
      {
        v32 = v32 + *(*(v29 + 56) + 8 * v35);
        if (v31 == v28)
        {
          goto LABEL_16;
        }
      }

      else
      {
        v32 = v32 + 0.0;
        if (v31 == v28)
        {
          goto LABEL_16;
        }
      }

      ++v28;
      v30 += 2;
    }

    while (v28 < v19[2]);
    __break(1u);
LABEL_16:

    v37 = v75[5];
    if (v32 > *(v27 + v37))
    {
      v38 = v32;
    }

    else
    {
      v38 = *(v27 + v37);
    }
  }

  else
  {

    v38 = *(a1 + v75[5]);
    if (v38 < 0.0)
    {
LABEL_34:

      goto LABEL_56;
    }
  }

  if (v38 <= 0.0)
  {
    goto LABEL_34;
  }

  v39 = v19[2];
  if (!v39)
  {
LABEL_31:
    v22 = *(v9 + 16);
    v23 = 0.0;
    v24 = 0.0;
    v13 = v74;
    if (!v22)
    {
LABEL_49:
      v68 = round((1.0 - v24) * 100.0) / 100.0;
      if (v68 > 0.0)
      {
        v38 = v68;
      }

      else
      {
        v38 = v23;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        goto LABEL_59;
      }

      goto LABEL_53;
    }

    if (v22 == 1)
    {
      v51 = 0;
LABEL_47:
      v65 = v22 - v51;
      v66 = (v9 + 24 * v51 + 32);
      do
      {
        v67 = *v66;
        v66 += 3;
        v24 = v24 + v67;
        --v65;
      }

      while (v65);
      goto LABEL_49;
    }

LABEL_44:
    v51 = v22 & 0x7FFFFFFFFFFFFFFELL;
    v61 = (v9 + 56);
    v62 = v22 & 0x7FFFFFFFFFFFFFFELL;
    do
    {
      v63 = *(v61 - 3);
      v64 = *v61;
      v61 += 6;
      v24 = v24 + v63 + v64;
      v62 -= 2;
    }

    while (v62);
    if (v22 == v51)
    {
      goto LABEL_49;
    }

    goto LABEL_47;
  }

  v40 = 0;
  v41 = 0;
  v13 = (v19 + 5);
  while (v41 < v19[2])
  {
    v43 = *(v13 - 8);
    v42 = *v13;
    v44 = *(v76 + v75[6]);
    v45 = *(v44 + 16);

    if (v45)
    {
      v46 = sub_264D9D57C(v43, v42);
      if (v47)
      {
        v48 = *(*(v44 + 56) + 8 * v46);
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          goto LABEL_29;
        }

LABEL_27:
        v9 = sub_264E15D44(v9);
        goto LABEL_29;
      }
    }

    v48 = 0.0;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      goto LABEL_27;
    }

LABEL_29:
    if (v41 >= *(v9 + 16))
    {
      goto LABEL_58;
    }

    v49 = v9 + v40;
    *(v49 + 32) = round(v48 * 100.0 / v38) / 100.0;
    v50 = *(v9 + v40 + 48);
    ++v41;
    *(v49 + 40) = v43;
    *(v49 + 48) = v42;

    v40 += 24;
    v13 += 16;
    if (v39 == v41)
    {
      goto LABEL_31;
    }
  }

  __break(1u);
LABEL_58:
  __break(1u);
LABEL_59:
  v9 = sub_264E15D44(v9);
LABEL_53:

  if ((v13 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_61;
  }

  if (v13 >= *(v9 + 16))
  {
LABEL_61:
    __break(1u);
    goto LABEL_62;
  }

  *(v9 + 24 * v13 + 32) = v38;
LABEL_56:
  sub_264D902E4(v76, type metadata accessor for UsageOverviewChart.Day);
  return v9;
}

uint64_t sub_264D83DB4@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for UsageOverviewChart.Day(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v23[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v23[-v10];
  MEMORY[0x28223BE20](v9);
  v13 = &v23[-v12];
  v14 = *(v1 + *(type metadata accessor for UsageOverviewChart.Model(0) + 20));
  v24 = v1;

  result = sub_264D826BC(sub_264D91648, v23, v14);
  v16 = result;
  v17 = *(result + 16);
  while (1)
  {
    if (!v17)
    {

      v22 = sub_264E23AA8();
      return (*(*(v22 - 8) + 56))(a1, 1, 1, v22);
    }

    if (v17 > *(v16 + 16))
    {
      break;
    }

    --v17;
    v18 = v16 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v17;
    sub_264D8EFDC(v18, v8, type metadata accessor for UsageOverviewChart.Day);
    v19 = *&v8[*(v3 + 20)];
    result = sub_264D902E4(v8, type metadata accessor for UsageOverviewChart.Day);
    if (v19 > 0.0)
    {
      sub_264D8EFDC(v18, v11, type metadata accessor for UsageOverviewChart.Day);

      sub_264D89F10(v11, v13, type metadata accessor for UsageOverviewChart.Day);
      v20 = sub_264E23AA8();
      v21 = *(v20 - 8);
      (*(v21 + 16))(a1, v13, v20);
      sub_264D902E4(v13, type metadata accessor for UsageOverviewChart.Day);
      return (*(v21 + 56))(a1, 0, 1, v20);
    }
  }

  __break(1u);
  return result;
}

BOOL static UsageOverviewChart.Model.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (sub_264E23A78() & 1) != 0 && (v4 = type metadata accessor for UsageOverviewChart.Model(0), (sub_264D84650(*(a1 + v4[5]), *(a2 + v4[5]))) && (MEMORY[0x26674DD10](a1 + v4[6], a2 + v4[6]))
  {
    return *(a1 + v4[7]) == *(a2 + v4[7]);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_264D84128(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OverviewChart.Day(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = &v21 - v10;
  v12 = *(a1 + 16);
  if (v12 != *(a2 + 16))
  {
    return 0;
  }

  if (!v12 || a1 == a2)
  {
    return 1;
  }

  v13 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v14 = a1 + v13;
  v15 = a2 + v13;
  v16 = *(v9 + 72);
  while (1)
  {
    result = sub_264D8EFDC(v14, v11, type metadata accessor for OverviewChart.Day);
    if (!v12)
    {
      break;
    }

    sub_264D8EFDC(v15, v7, type metadata accessor for OverviewChart.Day);
    if ((sub_264E23A78() & 1) == 0 || (sub_264E23A78() & 1) == 0)
    {
      sub_264D902E4(v7, type metadata accessor for OverviewChart.Day);
      sub_264D902E4(v11, type metadata accessor for OverviewChart.Day);
      return 0;
    }

    v18 = *&v11[*(v4 + 20)];
    sub_264D902E4(v11, type metadata accessor for OverviewChart.Day);
    v19 = *&v7[*(v4 + 20)];
    sub_264D902E4(v7, type metadata accessor for OverviewChart.Day);
    result = v18 == v19;
    v20 = v18 != v19 || v12-- == 1;
    v15 += v16;
    v14 += v16;
    if (v20)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_264D84338(uint64_t a1, uint64_t a2)
{
  v35 = sub_264E23AA8();
  v4 = *(v35 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v35);
  v34 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v32 - v8;
  v33 = type metadata accessor for DetailChart.Hour(0);
  v10 = *(*(v33 - 8) + 64);
  MEMORY[0x28223BE20](v33);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v16 = &v32 - v15;
  v17 = *(a1 + 16);
  if (v17 != *(a2 + 16))
  {
    return 0;
  }

  if (!v17 || a1 == a2)
  {
    return 1;
  }

  v18 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v19 = a1 + v18;
  v20 = a2 + v18;
  v21 = (v4 + 8);
  v32 = *(v14 + 72);
  while (1)
  {
    result = sub_264D8EFDC(v19, v16, type metadata accessor for DetailChart.Hour);
    if (!v17)
    {
      break;
    }

    sub_264D8EFDC(v20, v12, type metadata accessor for DetailChart.Hour);
    _s16ScreenTimeUICore11DetailChartV4HourV2id10Foundation4DateVvg_0();
    v23 = v34;
    _s16ScreenTimeUICore11DetailChartV4HourV2id10Foundation4DateVvg_0();
    v24 = sub_264E23A78();
    v25 = *v21;
    v26 = v23;
    v27 = v35;
    (*v21)(v26, v35);
    v25(v9, v27);
    if ((v24 & 1) == 0 || (sub_264E23878() & 1) == 0)
    {
      sub_264D902E4(v12, type metadata accessor for DetailChart.Hour);
      sub_264D902E4(v16, type metadata accessor for DetailChart.Hour);
      return 0;
    }

    v28 = v33;
    v29 = *&v16[*(v33 + 20)];
    sub_264D902E4(v16, type metadata accessor for DetailChart.Hour);
    v30 = *&v12[*(v28 + 20)];
    sub_264D902E4(v12, type metadata accessor for DetailChart.Hour);
    result = v29 == v30;
    v31 = v29 != v30 || v17-- == 1;
    v20 += v32;
    v19 += v32;
    if (v31)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_264D84650(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UsageOverviewChart.Day(0);
  v5 = *(*(v4 - 1) + 64);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v11 = &v19 - v10;
  v12 = *(a1 + 16);
  if (v12 != *(a2 + 16))
  {
LABEL_13:
    v17 = 0;
    return v17 & 1;
  }

  if (v12 && a1 != a2)
  {
    v13 = (*(v9 + 80) + 32) & ~*(v9 + 80);
    v14 = a1 + v13;
    v15 = a2 + v13;
    v16 = *(v9 + 72);
    while (1)
    {
      sub_264D8EFDC(v14, v11, type metadata accessor for UsageOverviewChart.Day);
      sub_264D8EFDC(v15, v8, type metadata accessor for UsageOverviewChart.Day);
      if ((sub_264E23A78() & 1) == 0 || *&v11[v4[5]] != *&v8[v4[5]] || (sub_264D81ED4(*&v11[v4[6]], *&v8[v4[6]]) & 1) == 0)
      {
        break;
      }

      v17 = MEMORY[0x26674DD10](&v11[v4[7]], &v8[v4[7]]);
      sub_264D902E4(v8, type metadata accessor for UsageOverviewChart.Day);
      sub_264D902E4(v11, type metadata accessor for UsageOverviewChart.Day);
      if (v17)
      {
        v15 += v16;
        v14 += v16;
        if (--v12)
        {
          continue;
        }
      }

      return v17 & 1;
    }

    sub_264D902E4(v8, type metadata accessor for UsageOverviewChart.Day);
    sub_264D902E4(v11, type metadata accessor for UsageOverviewChart.Day);
    goto LABEL_13;
  }

  v17 = 1;
  return v17 & 1;
}

uint64_t sub_264D84880(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UsageDetailChart.HourlyUsage(0);
  v5 = *(*(v4 - 1) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = &v19 - v10;
  v12 = *(a1 + 16);
  if (v12 != *(a2 + 16))
  {
LABEL_13:
    v17 = 0;
    return v17 & 1;
  }

  if (v12 && a1 != a2)
  {
    v13 = (*(v9 + 80) + 32) & ~*(v9 + 80);
    v14 = a1 + v13;
    v15 = a2 + v13;
    v16 = *(v9 + 72);
    while (1)
    {
      sub_264D8EFDC(v14, v11, type metadata accessor for UsageDetailChart.HourlyUsage);
      sub_264D8EFDC(v15, v7, type metadata accessor for UsageDetailChart.HourlyUsage);
      if ((sub_264E23878() & 1) == 0 || *&v11[v4[5]] != *&v7[v4[5]] || (sub_264D81ED4(*&v11[v4[6]], *&v7[v4[6]]) & 1) == 0)
      {
        break;
      }

      v17 = sub_264D81ED4(*&v11[v4[7]], *&v7[v4[7]]);
      sub_264D902E4(v7, type metadata accessor for UsageDetailChart.HourlyUsage);
      sub_264D902E4(v11, type metadata accessor for UsageDetailChart.HourlyUsage);
      if (v17)
      {
        v15 += v16;
        v14 += v16;
        if (--v12)
        {
          continue;
        }
      }

      return v17 & 1;
    }

    sub_264D902E4(v7, type metadata accessor for UsageDetailChart.HourlyUsage);
    sub_264D902E4(v11, type metadata accessor for UsageDetailChart.HourlyUsage);
    goto LABEL_13;
  }

  v17 = 1;
  return v17 & 1;
}

uint64_t UsageOverviewChart.init(model:calendar:selectedDay:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v23 = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1860, &qword_264E267E0);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v23 - v12;
  v14 = type metadata accessor for UsageOverviewChart(0);
  v15 = v14[6];
  v16 = sub_264E23AA8();
  (*(*(v16 - 8) + 56))(v13, 1, 1, v16);
  sub_264D81744(v13, v11, &qword_27FFB1860, &qword_264E267E0);
  sub_264E24D78();
  sub_264D817BC(v13, &qword_27FFB1860, &qword_264E267E0);
  *(a4 + v14[8]) = 0;
  v17 = (a4 + v14[9]);
  v24 = 0x40BC200000000000;
  sub_264E24D78();
  v18 = v26;
  *v17 = v25;
  v17[1] = v18;
  v19 = (a4 + v14[10]);
  v24 = 0;
  sub_264E24D78();
  v20 = v26;
  *v19 = v25;
  v19[1] = v20;
  sub_264D89F10(a1, a4 + v14[5], type metadata accessor for UsageOverviewChart.Model);
  v21 = sub_264E23C38();
  (*(*(v21 - 8) + 32))(a4, a2, v21);
  return sub_264D90E64(v23, a4 + v14[7], &qword_27FFB1870, &unk_264E26210);
}

uint64_t sub_264D84D94(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t UsageOverviewChart.body.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v136 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1878, &unk_264E27650);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v126 = &v109 - v5;
  v6 = sub_264E23C18();
  v142 = *(v6 - 8);
  v143 = v6;
  v7 = *(v142 + 64);
  MEMORY[0x28223BE20](v6);
  *&v141 = &v109 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1880, &qword_264E26220);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v139 = &v109 - v11;
  v138 = sub_264E238E8();
  v140 = *(v138 - 8);
  v12 = *(v140 + 64);
  MEMORY[0x28223BE20](v138);
  v111 = &v109 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for UsageOverviewChart(0);
  v137 = *(v14 - 8);
  v15 = *(v137 + 64);
  MEMORY[0x28223BE20](v14);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1888, &qword_264E26228);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = &v109 - v19;
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1890, &qword_264E26230);
  v113 = *(v114 - 8);
  v21 = *(v113 + 64);
  MEMORY[0x28223BE20](v114);
  v23 = &v109 - v22;
  v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1898, &qword_264E26238);
  v116 = *(v119 - 8);
  v24 = *(v116 + 64);
  MEMORY[0x28223BE20](v119);
  v115 = &v109 - v25;
  v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB18A0, &qword_264E26240);
  v122 = *(v123 - 8);
  v26 = *(v122 + 64);
  MEMORY[0x28223BE20](v123);
  v120 = &v109 - v27;
  v129 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB18A8, &qword_264E26248);
  v125 = *(v129 - 8);
  v28 = *(v125 + 64);
  MEMORY[0x28223BE20](v129);
  v124 = &v109 - v29;
  v135 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB18B0, &qword_264E26250);
  v134 = *(v135 - 8);
  v30 = *(v134 + 64);
  MEMORY[0x28223BE20](v135);
  v131 = &v109 - v31;
  v133 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB18B8, &qword_264E26258);
  v132 = *(v133 - 8);
  v32 = *(v132 + 64);
  MEMORY[0x28223BE20](v133);
  v130 = &v109 - v33;
  v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB18C0, &qword_264E26260);
  v34 = *(*(v128 - 8) + 64);
  MEMORY[0x28223BE20](v128);
  v127 = &v109 - v35;
  v146 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB18C8, &qword_264E26268);
  sub_264D89A08();
  sub_264E241C8();
  v144 = v14;
  v145 = v2;
  v36 = v2 + *(v14 + 20);
  sub_264D8EFDC(v2, &v109 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for UsageOverviewChart);
  v37 = (*(v137 + 80) + 16) & ~*(v137 + 80);
  v118 = *(v137 + 80);
  v117 = v37 + v15;
  v38 = swift_allocObject();
  v121 = v37;
  v39 = v38 + v37;
  v40 = v138;
  v137 = &v109 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = v16;
  sub_264D89F10(v137, v39, type metadata accessor for UsageOverviewChart);
  v42 = type metadata accessor for UsageOverviewChart.Model(0);
  v43 = sub_264D81DCC(&qword_27FFB1950, &qword_27FFB1888, &qword_264E26228);
  v44 = sub_264D89FD8(&qword_27FFB1958, type metadata accessor for UsageOverviewChart.Model);
  v112 = v23;
  v45 = v140;
  v110 = v43;
  v109 = v44;
  sub_264E24C28();

  (*(v17 + 8))(v20, v41);
  v46 = *(v42 + 24);
  v48 = v142;
  v47 = v143;
  v49 = v141;
  (*(v142 + 104))(v141, *MEMORY[0x277CC9940], v143);
  v50 = v139;
  sub_264E23B08();
  v51 = v50;
  (*(v48 + 8))(v49, v47);
  result = (*(v45 + 48))(v50, 1, v40);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v53 = v111;
    (*(v45 + 32))(v111, v51, v40);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1960, &unk_264E262C0);
    v54 = *(sub_264E23AA8() - 8);
    v55 = *(v54 + 72);
    v56 = (*(v54 + 80) + 32) & ~*(v54 + 80);
    v57 = swift_allocObject();
    v141 = xmmword_264E261F0;
    *(v57 + 16) = xmmword_264E261F0;
    _s16ScreenTimeUICore11DetailChartV4HourV2id10Foundation4DateVvg_0();
    sub_264E23888();
    (*(v45 + 8))(v53, v40);
    v153 = v57;
    v58 = sub_264E242D8();
    v140 = *(*(v58 - 8) + 56);
    v59 = v126;
    (v140)(v126, 1, 1, v58);
    v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1968, &unk_264E27700);
    v149 = v41;
    v150 = v42;
    v151 = v110;
    v152 = v109;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v62 = sub_264D8A020(&qword_27FFB1970, &qword_27FFB1968, &unk_264E27700);
    v63 = v115;
    v64 = v114;
    v65 = v112;
    sub_264E24B38();
    sub_264D817BC(v59, &qword_27FFB1878, &unk_264E27650);

    (*(v113 + 8))(v65, v64);
    v66 = (v145 + *(v144 + 9));
    v67 = *v66;
    v143 = v66[1];
    v149 = v67;
    v150 = v143;
    v142 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1978, &unk_264E262D0);
    sub_264E24D88();
    v68 = v148;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1980, &unk_264E27710);
    v69 = swift_allocObject();
    *(v69 + 16) = v141;
    *(v69 + 32) = 0;
    *(v69 + 40) = v68;
    v148 = v69;
    (v140)(v59, 1, 1, v58);
    v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1988, &unk_264E262E0);
    v149 = v64;
    v150 = v60;
    v151 = OpaqueTypeConformance2;
    v152 = v62;
    v71 = swift_getOpaqueTypeConformance2();
    v72 = sub_264D8A020(&qword_27FFB1990, &qword_27FFB1988, &unk_264E262E0);
    v73 = v120;
    v74 = v119;
    sub_264E24B48();
    sub_264D817BC(v59, &qword_27FFB1878, &unk_264E27650);

    (*(v116 + 8))(v63, v74);
    v140 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1998, &unk_264E27720);
    v149 = v74;
    v150 = v70;
    v151 = v71;
    v152 = v72;
    v75 = swift_getOpaqueTypeConformance2();
    *&v141 = MEMORY[0x277CBB460];
    v76 = sub_264D81DCC(&qword_27FFB19A0, &qword_27FFB1998, &unk_264E27720);
    v77 = v124;
    v78 = v123;
    sub_264E24B08();
    (*(v122 + 8))(v73, v78);
    v149 = v67;
    v79 = v143;
    v150 = v143;
    sub_264E24D88();
    _s16ScreenTimeUICore18UsageOverviewChartV5ModelV7yStride8forLastYSaySdGSd_tFZ_0(v147);
    v81 = v80;
    v149 = v67;
    v150 = v79;
    sub_264E24D88();
    v82 = v147;
    v83 = v145;
    v84 = (v145 + *(v144 + 10));
    v85 = *v84;
    v86 = v84[1];
    v149 = v85;
    v150 = v86;
    v87 = sub_264E24D88();
    v144 = &v109;
    MEMORY[0x28223BE20](v87);
    *(&v109 - 6) = v81;
    *(&v109 - 5) = v88;
    *(&v109 - 32) = 0;
    *(&v109 - 3) = v82;
    *(&v109 - 16) = 0;
    *(&v109 - 1) = v77;
    v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB19A8, &unk_264E262F0);
    v149 = v78;
    v150 = v140;
    v151 = v75;
    v152 = v76;
    v90 = swift_getOpaqueTypeConformance2();
    v91 = sub_264D81DCC(&qword_27FFB19B0, &qword_27FFB19A8, &unk_264E262F0);
    v92 = v131;
    v93 = v129;
    sub_264E24B18();

    (*(v125 + 8))(v77, v93);
    v94 = v137;
    sub_264D8EFDC(v83, v137, type metadata accessor for UsageOverviewChart);
    v95 = swift_allocObject();
    sub_264D89F10(v94, v95 + v121, type metadata accessor for UsageOverviewChart);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB19B8, &qword_264E27730);
    v149 = v93;
    v150 = v89;
    v151 = v90;
    v152 = v91;
    swift_getOpaqueTypeConformance2();
    sub_264D81DCC(&qword_27FFB19C0, &qword_27FFB19B8, &qword_264E27730);
    v96 = v130;
    v97 = v135;
    sub_264E24B58();

    (*(v134 + 8))(v92, v97);
    LOBYTE(v90) = sub_264E249A8();
    sub_264E243D8();
    v99 = v98;
    v101 = v100;
    v103 = v102;
    v105 = v104;
    v106 = v127;
    (*(v132 + 32))(v127, v96, v133);
    v107 = v106 + *(v128 + 36);
    *v107 = v90;
    *(v107 + 8) = v99;
    *(v107 + 16) = v101;
    *(v107 + 24) = v103;
    *(v107 + 32) = v105;
    *(v107 + 40) = 0;
    v108 = v136;
    sub_264D8EF1C(v106, v136);
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB19C8, &qword_264E26300);
    *(v108 + *(result + 36)) = 0;
  }

  return result;
}

uint64_t sub_264D85F1C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v54 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1C20, &qword_264E26698);
  v4 = *(v3 - 8);
  v53 = v3 - 8;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v52 = &v47 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1C28, &qword_264E266A0);
  v50 = *(v7 - 8);
  v51 = v7;
  v8 = *(v50 + 64);
  v9 = MEMORY[0x28223BE20](v7);
  v58 = &v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v56 = &v47 - v11;
  v12 = type metadata accessor for UsageOverviewChart(0);
  v13 = v12 - 8;
  v14 = *(v12 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v12);
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB18E0, &qword_264E26270);
  v57 = *(v49 - 8);
  v16 = *(v57 + 64);
  v17 = MEMORY[0x28223BE20](v49);
  v55 = &v47 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v20 = &v47 - v19;
  v21 = a1 + *(v13 + 28);
  v22 = *(v21 + *(type metadata accessor for UsageOverviewChart.Model(0) + 20));
  v60 = v21;

  v64 = sub_264D826BC(sub_264D91648, v59, v22);
  sub_264D8EFDC(a1, &v47 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for UsageOverviewChart);
  v23 = (*(v14 + 80) + 16) & ~*(v14 + 80);
  v24 = swift_allocObject();
  sub_264D89F10(&v47 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), v24 + v23, type metadata accessor for UsageOverviewChart);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1A00, "ک");
  sub_264E23AA8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB18F0, &qword_264E26278);
  sub_264D81DCC(&qword_27FFB1C30, &qword_27FFB1A00, "ک");
  sub_264D89BDC();
  sub_264D89FD8(&qword_27FFB1C38, type metadata accessor for UsageOverviewChart.Day);
  v48 = v20;
  sub_264E24EC8();
  v25 = (a1 + *(v13 + 48));
  v26 = *v25;
  v27 = v25[1];
  v62 = v26;
  v63 = v27;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1978, &unk_264E262D0);
  sub_264E24D88();
  v28 = v56;
  sub_264DC71D4(v56, v61);
  v29 = *(v57 + 16);
  v30 = v55;
  v31 = v49;
  v29(v55, v20, v49);
  v32 = v50;
  v33 = *(v50 + 16);
  v34 = v58;
  v35 = v28;
  v36 = v51;
  v33(v58, v35, v51);
  sub_264D89D1C(&qword_27FFB18D8, &qword_27FFB18E0, &qword_264E26270, sub_264D89BDC);
  v37 = v52;
  v38 = v30;
  v39 = v31;
  v29(v52, v38, v31);
  sub_264E24288();
  v40 = v53;
  v41 = *(v53 + 56);
  v33(&v37[v41], v34, v36);
  v42 = v57;
  v43 = v54;
  (*(v57 + 32))(v54, v37, v39);
  (*(v32 + 32))(v43 + *(v40 + 56), &v37[v41], v36);
  v44 = *(v32 + 8);
  v44(v56, v36);
  v45 = *(v42 + 8);
  v45(v48, v39);
  v44(v58, v36);
  return (v45)(v55, v39);
}

uint64_t sub_264D864DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v83 = a1;
  v99 = a2;
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1C40, &qword_264E266A8);
  v2 = *(*(v98 - 8) + 64);
  MEMORY[0x28223BE20](v98);
  v97 = &v75 - v3;
  v4 = type metadata accessor for UsageOverviewChart.Day(0);
  v5 = *(v4 - 8);
  v78 = v4 - 8;
  v90 = v5;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v91 = v7;
  v93 = (&v75 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v84 = type metadata accessor for UsageOverviewChart(0);
  v87 = *(v84 - 8);
  v8 = *(v87 + 64);
  MEMORY[0x28223BE20](v84);
  v88 = v9;
  v89 = &v75 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1908, &qword_264E26288);
  v95 = *(v10 - 8);
  v96 = v10;
  v11 = *(v95 + 64);
  v12 = MEMORY[0x28223BE20](v10);
  v94 = &v75 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v102 = &v75 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1C48, &unk_264E266B0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v77 = &v75 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1C50, &unk_264E267D0);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v21 = &v75 - v20;
  v22 = sub_264E23C18();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v22);
  v26 = &v75 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1C58, &qword_264E266C0);
  v28 = *(*(v27 - 8) + 64);
  MEMORY[0x28223BE20](v27 - 8);
  v75 = &v75 - v29;
  v79 = sub_264E241F8();
  v80 = *(v79 - 8);
  v30 = *(v80 + 64);
  MEMORY[0x28223BE20](v79);
  v32 = &v75 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB18F8, &qword_264E26280);
  v81 = *(v82 - 8);
  v33 = *(v81 + 64);
  MEMORY[0x28223BE20](v82);
  v76 = &v75 - v34;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1C60, &qword_264E266C8);
  v85 = *(v35 - 8);
  v86 = v35;
  v36 = *(v85 + 64);
  v37 = MEMORY[0x28223BE20](v35);
  v101 = &v75 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v37);
  v100 = &v75 - v39;
  sub_264E247D8();
  (*(v23 + 104))(v26, *MEMORY[0x277CC99B8], v22);
  v40 = sub_264E23C38();
  (*(*(v40 - 8) + 56))(v21, 1, 1, v40);
  v41 = v83;
  sub_264E240E8();

  sub_264D817BC(v21, &qword_27FFB1C50, &unk_264E267D0);
  (*(v23 + 8))(v26, v22);
  sub_264E247D8();
  v103 = *(v41 + *(v78 + 28));
  sub_264E240F8();

  v42 = [objc_opt_self() currentDevice];
  v43 = [v42 model];

  sub_264E25108();
  sub_264E251A8();

  sub_264E23AA8();
  v44 = v76;
  sub_264E241E8();
  v45 = MEMORY[0x277CBB400];
  v46 = v79;
  sub_264E24058();
  (*(v80 + 8))(v32, v46);
  if (qword_27FFB16A0 != -1)
  {
    swift_once();
  }

  v104 = v45;
  v105 = qword_27FFB6C48;
  v103 = v46;
  swift_getOpaqueTypeConformance2();
  v47 = v100;
  v48 = v82;
  sub_264E24038();
  (*(v81 + 8))(v44, v48);
  v49 = v92;
  v50 = v92 + *(v84 + 20);
  v51 = sub_264D83684(v41, *(v92 + *(v84 + 32)));
  v52 = sub_264DFE4A4(v51);

  v103 = v52;
  swift_getKeyPath();
  v53 = v89;
  sub_264D8EFDC(v49, v89, type metadata accessor for UsageOverviewChart);
  v54 = v93;
  sub_264D8EFDC(v41, v93, type metadata accessor for UsageOverviewChart.Day);
  v55 = (*(v87 + 80) + 16) & ~*(v87 + 80);
  v56 = (v88 + *(v90 + 80) + v55) & ~*(v90 + 80);
  v57 = swift_allocObject();
  sub_264D89F10(v53, v57 + v55, type metadata accessor for UsageOverviewChart);
  sub_264D89F10(v54, v57 + v56, type metadata accessor for UsageOverviewChart.Day);
  v58 = swift_allocObject();
  *(v58 + 16) = sub_264D9147C;
  *(v58 + 24) = v57;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1C68, &qword_264E266F0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1918, &unk_264E26290);
  sub_264D81DCC(&qword_27FFB1C70, &qword_27FFB1C68, &qword_264E266F0);
  sub_264D89D98();
  v59 = v102;
  sub_264E24ED8();
  v60 = v85;
  v61 = v86;
  v62 = *(v85 + 16);
  v63 = v101;
  v62(v101, v47, v86);
  v64 = v94;
  v65 = v95;
  v93 = *(v95 + 16);
  v66 = v59;
  v67 = v96;
  (v93)(v94, v66, v96);
  v68 = v97;
  v62(v97, v63, v61);
  sub_264D89D1C(&qword_27FFB1900, &qword_27FFB1908, &qword_264E26288, sub_264D89D98);
  v69 = v98;
  v70 = *(v98 + 48);
  (v93)(&v68[v70], v64, v67);
  v71 = v99;
  (*(v60 + 32))(v99, v68, v61);
  (*(v65 + 32))(v71 + *(v69 + 48), &v68[v70], v67);
  v72 = *(v65 + 8);
  v72(v102, v67);
  v73 = *(v60 + 8);
  v73(v100, v61);
  v72(v64, v67);
  return (v73)(v101, v61);
}

uint64_t sub_264D870F4()
{
  if (qword_27FFB1698 != -1)
  {
    swift_once();
  }

  v0 = sub_264E24F88();
  MEMORY[0x28223BE20](v0);
  sub_264E244E8();
}

uint64_t sub_264D871BC(uint64_t a1)
{
  v2 = sub_264E23AA8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for UsageOverviewChart(0);
  v8 = v7[5];
  v9 = UsageOverviewChart.Model.maxUsage.getter();
  v10 = (a1 + v7[9]);
  v11 = *v10;
  v12 = ceil(v9 / 7200.0) * 7200.0;
  if (v12 <= 7200.0)
  {
    v12 = 7200.0;
  }

  v22 = v10[1];
  v20 = v12;
  v21 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1978, &unk_264E262D0);
  sub_264E24D98();
  sub_264E23A98();
  UsageOverviewChart.Model.averageUsage(currentDate:)(v6);
  v14 = v13;
  (*(v3 + 8))(v6, v2);
  v15 = (a1 + v7[10]);
  v16 = *v15;
  v17 = v15[1];
  v20 = v14;
  v21 = v16;
  v22 = v17;
  return sub_264E24D98();
}

double UsageOverviewChart.Model.lastY.getter()
{
  result = ceil(UsageOverviewChart.Model.maxUsage.getter() / 7200.0) * 7200.0;
  if (result <= 7200.0)
  {
    return 7200.0;
  }

  return result;
}

void UsageOverviewChart.Model.averageUsage(currentDate:)(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1860, &qword_264E267E0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v41 - v6;
  v8 = type metadata accessor for UsageOverviewChart.Day(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for UsageOverviewChart.Model(0);
  v14 = *(v1 + *(v13 + 20));
  v48 = v2;

  v15 = sub_264D826BC(sub_264D8EF8C, v47, v14);
  v46 = a1;
  v16 = sub_264D826BC(sub_264D8EFBC, v45, v15);
  v17 = *(v16 + 16);
  if (v17)
  {
    v42 = v13;
    v43 = a1;
    v44 = v2;
    v49 = MEMORY[0x277D84F90];
    sub_264D8D0F4(0, v17, 0);
    v18 = v49;
    v19 = v16 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
    v20 = *(v9 + 72);
    do
    {
      sub_264D8EFDC(v19, v12, type metadata accessor for UsageOverviewChart.Day);
      v21 = *&v12[*(v8 + 20)];
      sub_264D902E4(v12, type metadata accessor for UsageOverviewChart.Day);
      v49 = v18;
      v23 = *(v18 + 16);
      v22 = *(v18 + 24);
      if (v23 >= v22 >> 1)
      {
        sub_264D8D0F4((v22 > 1), v23 + 1, 1);
        v18 = v49;
      }

      *(v18 + 16) = v23 + 1;
      *(v18 + 8 * v23 + 32) = v21;
      v19 += v20;
      --v17;
    }

    while (v17);

    a1 = v43;
    v2 = v44;
    v13 = v42;
    v24 = *(v18 + 16);
    if (!v24)
    {
      goto LABEL_16;
    }
  }

  else
  {

    v18 = MEMORY[0x277D84F90];
    v24 = *(MEMORY[0x277D84F90] + 16);
    if (!v24)
    {
      goto LABEL_16;
    }
  }

  if (v24 <= 3)
  {
    v25 = 0;
    v26 = 0.0;
LABEL_14:
    v30 = v24 - v25;
    v31 = (v18 + 8 * v25 + 32);
    do
    {
      v32 = *v31++;
      v26 = v26 + v32;
      --v30;
    }

    while (v30);
    goto LABEL_16;
  }

  v25 = v24 & 0x7FFFFFFFFFFFFFFCLL;
  v27 = (v18 + 48);
  v26 = 0.0;
  v28 = v24 & 0x7FFFFFFFFFFFFFFCLL;
  do
  {
    v29 = *v27;
    v26 = v26 + *(v27 - 2) + *(v27 - 1) + *v27 + v27[1];
    v27 += 4;
    v28 -= 4;
  }

  while (v28);
  if (v24 != v25)
  {
    goto LABEL_14;
  }

LABEL_16:

  v33 = *(v13 + 24);
  v34 = sub_264E23AA8();
  v35 = *(v34 - 8);
  (*(v35 + 16))(v7, a1, v34);
  (*(v35 + 56))(v7, 0, 1, v34);
  Calendar.numberOfDaysElapsedInWeek(containing:endDate:)(v2, v7);
  LOBYTE(v34) = v36;
  sub_264D817BC(v7, &qword_27FFB1860, &qword_264E267E0);
  if (v34)
  {
    if (qword_27FFB1690 != -1)
    {
      swift_once();
    }

    v37 = sub_264E23FC8();
    __swift_project_value_buffer(v37, qword_27FFB6C08);
    v38 = sub_264E23FA8();
    v39 = sub_264E252A8();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      *v40 = 0;
      _os_log_impl(&dword_264D7D000, v38, v39, "Failed to calculate numberOfDays; returning average = total", v40, 2u);
      MEMORY[0x26674FCD0](v40, -1, -1);
    }
  }
}

uint64_t UsageOverviewChart.Model.xAxisScale.getter()
{
  v0 = sub_264E23C18();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1880, &qword_264E26220);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v20 - v7;
  v9 = sub_264E238E8();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(type metadata accessor for UsageOverviewChart.Model(0) + 24);
  (*(v1 + 104))(v4, *MEMORY[0x277CC9940], v0);
  sub_264E23B08();
  (*(v1 + 8))(v4, v0);
  result = (*(v10 + 48))(v8, 1, v9);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v10 + 32))(v13, v8, v9);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1960, &unk_264E262C0);
    v16 = *(sub_264E23AA8() - 8);
    v17 = *(v16 + 72);
    v18 = (*(v16 + 80) + 32) & ~*(v16 + 80);
    v19 = swift_allocObject();
    *(v19 + 16) = xmmword_264E261F0;
    _s16ScreenTimeUICore11DetailChartV4HourV2id10Foundation4DateVvg_0();
    sub_264E23888();
    (*(v10 + 8))(v13, v9);
    return v19;
  }

  return result;
}

double static UsageOverviewChart.Model.yAxisScale(forLastY:)(double a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1980, &unk_264E27710);
  v2 = swift_allocObject();
  *&result = 2;
  *(v2 + 16) = xmmword_264E261F0;
  *(v2 + 32) = 0;
  *(v2 + 40) = a1;
  return result;
}

uint64_t sub_264D87B64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v25 = a1;
  v26 = a3;
  v24 = sub_264E23FE8();
  v4 = *(v24 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v24);
  v6 = type metadata accessor for UsageOverviewChart(0);
  v22 = *(v6 - 8);
  v7 = *(v22 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = sub_264E24868();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v23 = sub_264E24428();
  v10 = *(v23 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v23);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_264E248E8();
  sub_264E24408();
  sub_264D8EFDC(a2, &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for UsageOverviewChart);
  v14 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = v24;
  (*(v4 + 16))(v14, v25, v24);
  v16 = (*(v22 + 80) + 16) & ~*(v22 + 80);
  v17 = (v7 + *(v4 + 80) + v16) & ~*(v4 + 80);
  v18 = swift_allocObject();
  sub_264D89F10(&v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v18 + v16, type metadata accessor for UsageOverviewChart);
  (*(v4 + 32))(v18 + v17, v14, v15);
  sub_264D89FD8(&qword_27FFB1C00, MEMORY[0x277CDD730]);
  v19 = v23;
  sub_264E24F08();

  return (*(v10 + 8))(v13, v19);
}

uint64_t sub_264D87EC0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1C08, &qword_264E26680);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v11 - v2;
  v4 = sub_264E23AA8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_264E24418();
  sub_264E23FD8();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1C10, &qword_264E26688);
  if ((*(*(v9 - 8) + 48))(v3, 1, v9) == 1)
  {
    return sub_264D817BC(v3, &qword_27FFB1C08, &qword_264E26680);
  }

  (*(v5 + 32))(v8, v3, v4);
  sub_264D880A4(v8);
  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_264D880A4(uint64_t a1)
{
  v50 = a1;
  v2 = sub_264E23AA8();
  v55 = *(v2 - 8);
  v3 = *(v55 + 64);
  MEMORY[0x28223BE20](v2);
  v47 = &v47 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1858, &unk_264E26200);
  v5 = *(*(v51 - 8) + 64);
  MEMORY[0x28223BE20](v51);
  v7 = &v47 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1C18, &qword_264E26690);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v47 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1860, &qword_264E267E0);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12 - 8);
  v48 = &v47 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v49 = &v47 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v53 = &v47 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v22 = &v47 - v21;
  v23 = MEMORY[0x28223BE20](v20);
  v25 = &v47 - v24;
  MEMORY[0x28223BE20](v23);
  v27 = &v47 - v26;
  v28 = type metadata accessor for UsageOverviewChart(0);
  v29 = *(v28 + 28);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1870, &unk_264E26210);
  v56 = v27;
  MEMORY[0x26674EFA0]();
  v52 = v29;
  v31 = v50;
  v54 = v30;
  MEMORY[0x26674EFA0](v30);
  v32 = v1 + *(v28 + 20);
  v33 = *(v32 + *(type metadata accessor for UsageOverviewChart.Model(0) + 20));
  v57 = v1;
  v58 = v31;
  sub_264D93B30(sub_264D90E44, v33, v11);
  v34 = type metadata accessor for UsageOverviewChart.Day(0);
  v35 = (*(*(v34 - 8) + 48))(v11, 1, v34);
  v36 = v11;
  v37 = v55;
  sub_264D817BC(v36, &qword_27FFB1C18, &qword_264E26690);
  if (v35 != 1)
  {
    sub_264E23AF8();
    sub_264D817BC(v25, &qword_27FFB1860, &qword_264E267E0);
    (*(v37 + 56))(v22, 0, 1, v2);
    sub_264D90E64(v22, v25, &qword_27FFB1860, &qword_264E267E0);
  }

  v38 = *(v51 + 48);
  sub_264D81744(v56, v7, &qword_27FFB1860, &qword_264E267E0);
  sub_264D81744(v25, &v7[v38], &qword_27FFB1860, &qword_264E267E0);
  v39 = *(v37 + 48);
  if (v39(v7, 1, v2) == 1)
  {
    if (v39(&v7[v38], 1, v2) == 1)
    {
      v51 = v32;
      sub_264D817BC(v7, &qword_27FFB1860, &qword_264E267E0);
      v40 = v53;
      goto LABEL_11;
    }

    goto LABEL_8;
  }

  v41 = v49;
  sub_264D81744(v7, v49, &qword_27FFB1860, &qword_264E267E0);
  if (v39(&v7[v38], 1, v2) == 1)
  {
    (*(v55 + 8))(v41, v2);
LABEL_8:
    sub_264D817BC(v7, &qword_27FFB1858, &unk_264E26200);
    v40 = v53;
LABEL_9:
    sub_264D81744(v25, v40, &qword_27FFB1860, &qword_264E267E0);
    goto LABEL_14;
  }

  v51 = v32;
  v42 = v47;
  (*(v55 + 32))(v47, &v7[v38], v2);
  sub_264D89FD8(&qword_27FFB1868, MEMORY[0x277CC9578]);
  LODWORD(v50) = sub_264E25068();
  v43 = *(v55 + 8);
  v43(v42, v2);
  v43(v49, v2);
  sub_264D817BC(v7, &qword_27FFB1860, &qword_264E267E0);
  v40 = v53;
  if ((v50 & 1) == 0)
  {
    goto LABEL_9;
  }

LABEL_11:
  v44 = v48;
  MEMORY[0x26674EFA0](v54);
  v45 = v39(v44, 1, v2);
  sub_264D817BC(v44, &qword_27FFB1860, &qword_264E267E0);
  if (v45 == 1)
  {
    sub_264D83DB4(v40);
  }

  else
  {
    (*(v55 + 56))(v40, 1, 1, v2);
  }

LABEL_14:
  sub_264D81744(v40, v22, &qword_27FFB1860, &qword_264E267E0);
  sub_264E24E58();
  sub_264D817BC(v40, &qword_27FFB1860, &qword_264E267E0);
  sub_264D817BC(v25, &qword_27FFB1860, &qword_264E267E0);
  return sub_264D817BC(v56, &qword_27FFB1860, &qword_264E267E0);
}

uint64_t sub_264D8876C()
{
  v0 = sub_264E23AA8();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_264E23AF8();
  v5 = sub_264E23A78();
  (*(v1 + 8))(v4, v0);
  return v5 & 1;
}

uint64_t sub_264D8886C@<X0>(unint64_t a1@<X0>, double a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>, double a7@<D0>)
{
  v74 = a5;
  v63 = a2;
  v64 = a3;
  v62 = a1;
  v72 = a6;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1920, &unk_264E276D0);
  v70 = *(v9 - 8);
  v71 = v9;
  v10 = *(v70 + 64);
  MEMORY[0x28223BE20](v9);
  v67 = &v55[-v11];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1C78, &qword_264E266F8);
  v68 = *(v12 - 8);
  v69 = v12;
  v13 = *(v68 + 64);
  MEMORY[0x28223BE20](v12);
  v66 = &v55[-v14];
  v15 = sub_264E23AA8();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v57 = &v55[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1858, &unk_264E26200);
  v20 = v19 - 8;
  v21 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19);
  v23 = &v55[-v22];
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1860, &qword_264E267E0);
  v25 = *(*(v24 - 8) + 64);
  v26 = MEMORY[0x28223BE20](v24 - 8);
  v60 = &v55[-((v27 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v28 = MEMORY[0x28223BE20](v26);
  v73 = &v55[-v29];
  v30 = MEMORY[0x28223BE20](v28);
  v32 = &v55[-v31];
  MEMORY[0x28223BE20](v30);
  v34 = &v55[-v33];
  v61 = type metadata accessor for UsageOverviewChart(0);
  v35 = v61[7];
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1870, &unk_264E26210);
  v65 = a4;
  v59 = v35;
  v58 = v36;
  MEMORY[0x26674EFA0]();
  (*(v16 + 16))(v32, v74, v15);
  (*(v16 + 56))(v32, 0, 1, v15);
  v37 = *(v20 + 56);
  sub_264D81744(v34, v23, &qword_27FFB1860, &qword_264E267E0);
  sub_264D81744(v32, &v23[v37], &qword_27FFB1860, &qword_264E267E0);
  v38 = *(v16 + 48);
  if (v38(v23, 1, v15) == 1)
  {
    sub_264D817BC(v32, &qword_27FFB1860, &qword_264E267E0);
    sub_264D817BC(v34, &qword_27FFB1860, &qword_264E267E0);
    if (v38(&v23[v37], 1, v15) == 1)
    {
      sub_264D817BC(v23, &qword_27FFB1860, &qword_264E267E0);
      v40 = v65;
      v39 = v66;
LABEL_12:
      v49 = v67;
      sub_264D89098(v74, v63, v64, v67, a7);
      v50 = v40 + v61[5];
      v79 = UsageOverviewChart.Model.orderedStackedBarColors(index:selectedItem:)(v62, *(v40 + v61[8]));
      v51 = sub_264E241F8();
      v52 = sub_264D89EB8();
      v75 = v51;
      v76 = MEMORY[0x277D837D0];
      v77 = MEMORY[0x277CBB400];
      v78 = v52;
      swift_getOpaqueTypeConformance2();
      v53 = v71;
      sub_264E24038();

      (*(v70 + 8))(v49, v53);
      goto LABEL_13;
    }

    goto LABEL_6;
  }

  sub_264D81744(v23, v73, &qword_27FFB1860, &qword_264E267E0);
  if (v38(&v23[v37], 1, v15) == 1)
  {
    sub_264D817BC(v32, &qword_27FFB1860, &qword_264E267E0);
    sub_264D817BC(v34, &qword_27FFB1860, &qword_264E267E0);
    (*(v16 + 8))(v73, v15);
LABEL_6:
    sub_264D817BC(v23, &qword_27FFB1858, &unk_264E26200);
    v40 = v65;
    v39 = v66;
    goto LABEL_7;
  }

  v47 = v57;
  (*(v16 + 32))(v57, &v23[v37], v15);
  sub_264D89FD8(&qword_27FFB1868, MEMORY[0x277CC9578]);
  v56 = sub_264E25068();
  v48 = *(v16 + 8);
  v48(v47, v15);
  sub_264D817BC(v32, &qword_27FFB1860, &qword_264E267E0);
  sub_264D817BC(v34, &qword_27FFB1860, &qword_264E267E0);
  v48(v73, v15);
  sub_264D817BC(v23, &qword_27FFB1860, &qword_264E267E0);
  v40 = v65;
  v39 = v66;
  if (v56)
  {
    goto LABEL_12;
  }

LABEL_7:
  v41 = v60;
  MEMORY[0x26674EFA0](v58);
  v42 = v38(v41, 1, v15);
  sub_264D817BC(v41, &qword_27FFB1860, &qword_264E267E0);
  if (v42 == 1)
  {
    goto LABEL_12;
  }

  v43 = v67;
  sub_264D89098(v74, v63, v64, v67, a7);
  if (qword_27FFB16A0 != -1)
  {
    swift_once();
  }

  v79 = qword_27FFB6C48;
  v44 = sub_264E241F8();
  v45 = sub_264D89EB8();
  v75 = v44;
  v76 = MEMORY[0x277D837D0];
  v77 = MEMORY[0x277CBB400];
  v78 = v45;
  swift_getOpaqueTypeConformance2();
  v46 = v71;
  sub_264E24038();
  (*(v70 + 8))(v43, v46);
LABEL_13:
  (*(v68 + 32))(v72, v39, v69);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1C80, &unk_264E26700);
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_264D89098@<X0>(uint64_t a1@<X0>, double a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, double a5@<D0>)
{
  v37 = a2;
  v38 = a3;
  v33 = a1;
  v39 = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1C48, &unk_264E266B0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v34 = &v32 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1C50, &unk_264E267D0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v32 - v11;
  v13 = sub_264E23C18();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v32 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1C58, &qword_264E266C0);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v32 = &v32 - v20;
  v21 = sub_264E241F8();
  v22 = *(v21 - 8);
  v35 = v21;
  v36 = v22;
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v21);
  v25 = &v32 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_264E247D8();
  (*(v14 + 104))(v17, *MEMORY[0x277CC99B8], v13);
  v26 = sub_264E23C38();
  (*(*(v26 - 8) + 56))(v12, 1, 1, v26);
  v27 = v33;
  sub_264E240E8();

  sub_264D817BC(v12, &qword_27FFB1C50, &unk_264E267D0);
  (*(v14 + 8))(v17, v13);
  sub_264E247D8();
  v40 = *(v27 + *(type metadata accessor for UsageOverviewChart.Day(0) + 20)) * a5;
  sub_264E240F8();

  v28 = [objc_opt_self() currentDevice];
  v29 = [v28 model];

  sub_264E25108();
  sub_264E251A8();

  sub_264E23AA8();
  sub_264E241E8();
  v40 = v37;
  v41 = v38;
  sub_264D89EB8();
  v30 = v35;
  sub_264E24048();
  return (*(v36 + 8))(v25, v30);
}

void *UsageOverviewChart.Model.orderedStackedBarColors(index:selectedItem:)(unint64_t a1, uint64_t a2)
{
  v5 = *(v2 + *(type metadata accessor for UsageOverviewChart.Model(0) + 28));
  if (a2 && *(a2 + 16))
  {
    v6 = type metadata accessor for UsageOverviewChart.Day(0);
    v7 = *(a2 + ((*(*(v6 - 8) + 80) + 32) & ~*(*(v6 - 8) + 80)) + *(v6 + 24));
    v8 = *(v7 + 16);
    if (v8)
    {
      v9 = sub_264D8C29C(*(v7 + 16), 0);
      v10 = sub_264D8E260(&v13, v9 + 4, v8, v7);

      sub_264D8F07C();
      if (v10 == v8)
      {
LABEL_7:
        v5 = v9[2];

        goto LABEL_8;
      }

      __break(1u);
    }

    v9 = MEMORY[0x277D84F90];
    goto LABEL_7;
  }

LABEL_8:
  result = (v5 + 1);
  if (__OFADD__(v5, 1))
  {
    __break(1u);
    goto LABEL_13;
  }

  result = sub_264E17574(result, 1);
  if ((a1 & 0x8000000000000000) != 0)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (result[2] > a1)
  {
    v12 = result[a1 + 4];

    return v12;
  }

LABEL_14:
  __break(1u);
  return result;
}

double UsageOverviewChart.Model.maxUsage.getter()
{
  v1 = type metadata accessor for UsageOverviewChart.Day(0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v22[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = *(v0 + *(type metadata accessor for UsageOverviewChart.Model(0) + 20));
  v23 = v0;

  v7 = sub_264D826BC(sub_264D91648, v22, v6);
  v8 = *(v7 + 16);
  if (v8)
  {
    v24 = MEMORY[0x277D84F90];
    sub_264D8D0F4(0, v8, 0);
    v9 = v24;
    v10 = v7 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
    v11 = *(v2 + 72);
    do
    {
      sub_264D8EFDC(v10, v5, type metadata accessor for UsageOverviewChart.Day);
      v12 = *&v5[*(v1 + 20)];
      sub_264D902E4(v5, type metadata accessor for UsageOverviewChart.Day);
      v24 = v9;
      v14 = *(v9 + 16);
      v13 = *(v9 + 24);
      if (v14 >= v13 >> 1)
      {
        sub_264D8D0F4((v13 > 1), v14 + 1, 1);
        v9 = v24;
      }

      *(v9 + 16) = v14 + 1;
      *(v9 + 8 * v14 + 32) = v12;
      v10 += v11;
      --v8;
    }

    while (v8);

    v15 = *(v9 + 16);
    if (v15)
    {
      goto LABEL_7;
    }

LABEL_14:
    v16 = 0.0;
    goto LABEL_15;
  }

  v9 = MEMORY[0x277D84F90];
  v15 = *(MEMORY[0x277D84F90] + 16);
  if (!v15)
  {
    goto LABEL_14;
  }

LABEL_7:
  v16 = *(v9 + 32);
  v17 = v15 - 1;
  if (v17)
  {
    v18 = (v9 + 40);
    do
    {
      v19 = *v18++;
      v20 = v19;
      if (v16 < v19)
      {
        v16 = v20;
      }

      --v17;
    }

    while (v17);
  }

LABEL_15:

  return v16;
}

uint64_t sub_264D89928(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = *(a1 + 32);
  v3 = v1 - 1;
  if (v1 != 1)
  {
    v4 = (a1 + 40);
    do
    {
      v5 = *v4++;
      v6 = v5;
      if (v2 < v5)
      {
        v2 = v6;
      }

      --v3;
    }

    while (v3);
  }

  return *&v2;
}

BOOL sub_264D8996C()
{
  sub_264E23AA8();
  sub_264D89FD8(&qword_27FFB1BF0, MEMORY[0x277CC9578]);
  return (sub_264E25048() & 1) == 0;
}

unint64_t sub_264D89A08()
{
  result = qword_27FFB18D0;
  if (!qword_27FFB18D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FFB18C8, &qword_264E26268);
    sub_264D89D1C(&qword_27FFB18D8, &qword_27FFB18E0, &qword_264E26270, sub_264D89BDC);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FFB1930, &unk_264E262A0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FFB1938, &unk_264E276E0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FFB1940, &unk_264E262B0);
    sub_264E24288();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFB18D0);
  }

  return result;
}

unint64_t sub_264D89BDC()
{
  result = qword_27FFB18E8;
  if (!qword_27FFB18E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FFB18F0, &qword_264E26278);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FFB18F8, &qword_264E26280);
    sub_264E241F8();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_264D89D1C(&qword_27FFB1900, &qword_27FFB1908, &qword_264E26288, sub_264D89D98);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFB18E8);
  }

  return result;
}

uint64_t sub_264D89D1C(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
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

unint64_t sub_264D89D98()
{
  result = qword_27FFB1910;
  if (!qword_27FFB1910)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FFB1918, &unk_264E26290);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FFB1920, &unk_264E276D0);
    sub_264E241F8();
    sub_264D89EB8();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFB1910);
  }

  return result;
}

unint64_t sub_264D89EB8()
{
  result = qword_27FFB1928;
  if (!qword_27FFB1928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFB1928);
  }

  return result;
}

uint64_t sub_264D89F10(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_264D89F78()
{
  v0 = *(*(type metadata accessor for UsageOverviewChart(0) - 8) + 80);

  return sub_264D870F4();
}

uint64_t sub_264D89FD8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_264D8A020(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_264D8A16C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, int a4@<W3>, uint64_t a5@<X4>, uint64_t *a6@<X5>, uint64_t *a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, double a10@<D0>, uint64_t a11)
{
  v30 = a8;
  v31 = a4;
  v32 = a9;
  v33 = a11;
  v18 = sub_264E24118();
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = sub_264E24098();
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20 - 8);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(a6, a7);
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v22);
  v26 = &v30 - v25;
  (*(v23 + 16))(&v30 - v25, a5, v22);
  v27 = (*(v23 + 80) + 49) & ~*(v23 + 80);
  v28 = swift_allocObject();
  *(v28 + 16) = a2;
  *(v28 + 24) = a3 & 1;
  *(v28 + 32) = a1;
  *(v28 + 40) = a10;
  *(v28 + 48) = v31 & 1;
  (*(v23 + 32))(v28 + v27, v26, v22);
  swift_bridgeObjectRetain_n();
  sub_264E24088();
  sub_264E24108();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1A90, &qword_264E26510);
  sub_264D903E0();
  return sub_264E242A8();
}

uint64_t sub_264D8A3D8@<X0>(double a1@<X1>, int a2@<W2>, uint64_t a3@<X3>, int a4@<W4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X8>, double a8@<D0>)
{
  v69 = a6;
  v68 = a5;
  v67 = a4;
  v62 = a3;
  v76 = a2;
  v63 = a1;
  v75 = a7;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1AC0, &qword_264E26528);
  v9 = *(*(v74 - 8) + 64);
  MEMORY[0x28223BE20](v74);
  v73 = &v62 - v10;
  v11 = sub_264E24168();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v66 = &v62 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_264E241B8();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v65 = &v62 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1AB8, &qword_264E26520);
  v17 = *(v71 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v71);
  v64 = &v62 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1AA8, &qword_264E26518);
  v21 = *(*(v20 - 8) + 64);
  v22 = MEMORY[0x28223BE20](v20 - 8);
  v72 = &v62 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v25 = &v62 - v24;
  v26 = sub_264E24008();
  v27 = *(v26 - 8);
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v26);
  v30 = &v62 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1AC8, &qword_264E26530);
  v31 = *(v70 - 8);
  v32 = *(v31 + 64);
  v33 = MEMORY[0x28223BE20](v70);
  v35 = &v62 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v33);
  v37 = &v62 - v36;
  sub_264E242C8();
  if (BYTE8(v81))
  {
    v38 = 0.0;
  }

  else
  {
    v38 = *&v81;
  }

  sub_264E24478();
  v81 = v78;
  v82 = v79;
  v83 = v80;
  sub_264E23FF8();
  if (qword_27FFB16B0 != -1)
  {
    swift_once();
  }

  v77 = qword_27FFB6C60;
  v39 = v37;
  sub_264E24208();
  result = (*(v27 + 8))(v30, v26);
  if (v76)
  {
    goto LABEL_13;
  }

  v41 = a8 / (*(v62 + 16) - 1) * 0.5;
  if (v63 - v41 <= v41 + v63)
  {
    if (v63 - v41 <= v38 && v38 <= v41 + v63)
    {
      (*(v17 + 56))(v25, 1, 1, v71);
LABEL_14:
      v45 = v31;
      v46 = *(v31 + 16);
      v47 = v39;
      v48 = v39;
      v49 = v70;
      v46(v35, v48, v70);
      v50 = v72;
      sub_264D81744(v25, v72, &qword_27FFB1AA8, &qword_264E26518);
      v51 = v73;
      v46(v73, v35, v49);
      sub_264D904B8();
      v52 = v74;
      v53 = *(v74 + 48);
      sub_264D81744(v50, &v51[v53], &qword_27FFB1AA8, &qword_264E26518);
      v54 = v75;
      (*(v45 + 32))(v75, v51, v49);
      sub_264D90E64(&v51[v53], v54 + *(v52 + 48), &qword_27FFB1AA8, &qword_264E26518);
      sub_264D817BC(v25, &qword_27FFB1AA8, &qword_264E26518);
      v55 = *(v45 + 8);
      v55(v47, v49);
      sub_264D817BC(v50, &qword_27FFB1AA8, &qword_264E26518);
      return (v55)(v35, v49);
    }

LABEL_13:
    MEMORY[0x28223BE20](result);
    sub_264E241A8();
    sub_264E24158();
    v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1AD0, &qword_264E26538);
    v61 = sub_264D90568();
    v59 = &v56;
    v58 = v69;
    v57 = 1;
    v56 = 0;
    v43 = v64;
    sub_264E240D8();
    v44 = v71;
    (*(v17 + 32))(v25, v43, v71);
    (*(v17 + 56))(v25, 0, 1, v44);
    goto LABEL_14;
  }

  __break(1u);
  return result;
}

uint64_t sub_264D8AB40@<X0>(double a1@<X1>, char a2@<W2>, uint64_t a3@<X3>, int a4@<W4>, char *a5@<X5>, uint64_t a6@<X8>, double a7@<D0>)
{
  v63 = a5;
  v62 = a4;
  v58 = a3;
  v59 = a1;
  v68 = a6;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1AC0, &qword_264E26528);
  v9 = *(*(v67 - 8) + 64);
  MEMORY[0x28223BE20](v67);
  v66 = &v58 - v10;
  v11 = sub_264E24168();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v61 = &v58 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_264E241B8();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v60 = &v58 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1AA8, &qword_264E26518);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v20 = &v58 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v23 = &v58 - v22;
  v24 = sub_264E24008();
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v24);
  v28 = &v58 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1AC8, &qword_264E26530);
  v64 = *(v29 - 8);
  v30 = *(v64 + 64);
  MEMORY[0x28223BE20](v29);
  v32 = &v58 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v33);
  v35 = &v58 - v34;
  sub_264E242C8();
  if (BYTE8(v73))
  {
    v36 = 0.0;
  }

  else
  {
    v36 = *&v73;
  }

  sub_264E24478();
  v73 = v70;
  v74 = v71;
  v75 = v72;
  sub_264E23FF8();
  if (qword_27FFB16B0 != -1)
  {
    swift_once();
  }

  v69 = qword_27FFB6C60;
  v65 = v35;
  sub_264E24208();
  result = (*(v25 + 8))(v28, v24);
  if (a2)
  {
    goto LABEL_13;
  }

  v38 = a7 / (*(v58 + 16) - 1) * 0.5;
  if (v59 - v38 <= v38 + v59)
  {
    if (v59 - v38 <= v36 && v36 <= v38 + v59)
    {
      v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1AB8, &qword_264E26520);
      (*(*(v41 - 8) + 56))(v23, 1, 1, v41);
LABEL_14:
      v43 = v64;
      v42 = v65;
      v44 = *(v64 + 16);
      v44(v32, v65, v29);
      sub_264D81744(v23, v20, &qword_27FFB1AA8, &qword_264E26518);
      v45 = v66;
      v44(v66, v32, v29);
      sub_264D904B8();
      v63 = v32;
      v46 = v23;
      v47 = v20;
      v48 = v67;
      v49 = *(v67 + 48);
      sub_264D81744(v47, &v45[v49], &qword_27FFB1AA8, &qword_264E26518);
      v50 = v68;
      (*(v43 + 32))(v68, v45, v29);
      sub_264D90E64(&v45[v49], v50 + *(v48 + 48), &qword_27FFB1AA8, &qword_264E26518);
      sub_264D817BC(v46, &qword_27FFB1AA8, &qword_264E26518);
      v51 = *(v43 + 8);
      v51(v42, v29);
      sub_264D817BC(v47, &qword_27FFB1AA8, &qword_264E26518);
      return (v51)(v63, v29);
    }

LABEL_13:
    MEMORY[0x28223BE20](result);
    sub_264E241A8();
    sub_264E24158();
    v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1AD0, &qword_264E26538);
    v57 = sub_264D90568();
    v54 = sub_264D90A00;
    v55 = &v52;
    v53 = 1;
    v52 = 0;
    sub_264E240D8();
    v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1AB8, &qword_264E26520);
    (*(*(v40 - 8) + 56))(v23, 0, 1, v40);
    goto LABEL_14;
  }

  __break(1u);
  return result;
}

uint64_t sub_264D8B214@<X0>(double a1@<X1>, int a2@<W2>, uint64_t a3@<X3>, int a4@<W4>, uint64_t a5@<X5>, uint64_t a6@<X8>, double a7@<D0>)
{
  v62 = a5;
  v61 = a4;
  v57 = a3;
  LODWORD(v67) = a2;
  v58 = a1;
  v66 = a6;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1AC0, &qword_264E26528);
  v8 = *(*(v65 - 8) + 64);
  MEMORY[0x28223BE20](v65);
  v64 = &v57 - v9;
  v10 = sub_264E24168();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v60 = &v57 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_264E241B8();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v59 = &v57 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1AA8, &qword_264E26518);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v19 = &v57 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v22 = &v57 - v21;
  v23 = sub_264E24008();
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v23);
  v27 = &v57 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1AC8, &qword_264E26530);
  v29 = *(v28 - 8);
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v28);
  v32 = &v57 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v33);
  v35 = &v57 - v34;
  sub_264E242C8();
  if (BYTE8(v72))
  {
    v36 = 0.0;
  }

  else
  {
    v36 = *&v72;
  }

  sub_264E24478();
  v72 = v69;
  v73 = v70;
  v74 = v71;
  sub_264E23FF8();
  if (qword_27FFB16B0 != -1)
  {
    swift_once();
  }

  v68 = qword_27FFB6C60;
  v63 = v35;
  sub_264E24208();
  result = (*(v24 + 8))(v27, v23);
  if (v67)
  {
    goto LABEL_13;
  }

  v38 = a7 / (*(v57 + 16) - 1) * 0.5;
  if (v58 - v38 <= v38 + v58)
  {
    if (v58 - v38 <= v36 && v36 <= v38 + v58)
    {
      v40 = 1;
LABEL_14:
      v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1AB8, &qword_264E26520);
      (*(*(v41 - 8) + 56))(v22, v40, 1, v41);
      v42 = *(v29 + 16);
      v43 = v63;
      v42(v32, v63, v28);
      sub_264D81744(v22, v19, &qword_27FFB1AA8, &qword_264E26518);
      v44 = v64;
      v42(v64, v32, v28);
      sub_264D904B8();
      v67 = v32;
      v45 = v22;
      v46 = v19;
      v47 = v65;
      v48 = *(v65 + 48);
      sub_264D81744(v46, &v44[v48], &qword_27FFB1AA8, &qword_264E26518);
      v49 = v66;
      (*(v29 + 32))(v66, v44, v28);
      sub_264D90E64(&v44[v48], v49 + *(v47 + 48), &qword_27FFB1AA8, &qword_264E26518);
      sub_264D817BC(v45, &qword_27FFB1AA8, &qword_264E26518);
      v50 = *(v29 + 8);
      v50(v43, v28);
      sub_264D817BC(v46, &qword_27FFB1AA8, &qword_264E26518);
      return (v50)(v67, v28);
    }

LABEL_13:
    MEMORY[0x28223BE20](result);
    sub_264E241A8();
    sub_264E24158();
    v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1AD0, &qword_264E26538);
    v56 = sub_264D90568();
    v53 = sub_264D91668;
    v54 = &v51;
    v52 = 1;
    v51 = 0;
    sub_264E240D8();
    v40 = 0;
    goto LABEL_14;
  }

  __break(1u);
  return result;
}

uint64_t sub_264D8B8A8@<X0>(char a1@<W0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1AF8, &qword_264E26548);
  v9 = *(*(v8 - 8) + 64);
  result = MEMORY[0x28223BE20](v8 - 8);
  if (a4 == 3600.0 && (a1 & 1) == 0)
  {
    v13 = 64;
  }

  else
  {
    v13 = 96;
  }

  v14 = a4 * 0.5;
  v49 = &v48 - v11;
  if (a3 == a4 || v14 == a3)
  {
    if ((a1 & 1) == 0)
    {
      v18 = [objc_allocWithZone(MEMORY[0x277CCA958]) init];
      [v18 setAllowedUnits_];
      [v18 setUnitsStyle_];
      [v18 setZeroFormattingBehavior_];
      v19 = [v18 stringFromTimeInterval_];
      if (v19)
      {
        v20 = v19;
        v15 = sub_264E25108();
        v22 = v21;

        v16 = v22;
        goto LABEL_17;
      }

      goto LABEL_9;
    }

    if ((*&a3 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (a3 > -9.22337204e18)
    {
      if (a3 < 9.22337204e18)
      {
        *&v55 = a3;
        sub_264D908C4();
        v15 = sub_264E25348();
        v16 = v17;
        goto LABEL_17;
      }

LABEL_33:
      __break(1u);
      return result;
    }

    __break(1u);
    goto LABEL_33;
  }

LABEL_9:
  v15 = 0;
  v16 = 0xE000000000000000;
LABEL_17:
  v48 = a2;
  if (a3 == 0.0)
  {

    v16 = 0xE100000000000000;
    v15 = 48;
  }

  *&v55 = v15;
  *(&v55 + 1) = v16;
  sub_264D89EB8();
  v23 = sub_264E24AF8();
  v25 = v24;
  v27 = v26;
  sub_264E24A78();
  v28 = sub_264E24AD8();
  v30 = v29;
  v32 = v31;

  sub_264D817AC(v23, v25, v27 & 1);

  if (qword_27FFB16B8 != -1)
  {
    swift_once();
  }

  *&v55 = qword_27FFB6C68;

  v33 = sub_264E24AC8();
  v35 = v34;
  v37 = v36;
  v39 = v38;
  sub_264D817AC(v28, v30, v32 & 1);

  sub_264E24F68();
  sub_264E244B8();
  v61 = v37 & 1;
  *&v55 = v33;
  *(&v55 + 1) = v35;
  LOBYTE(v56) = v37 & 1;
  *(&v56 + 1) = *v60;
  DWORD1(v56) = *&v60[3];
  *(&v56 + 1) = v39;
  if (v14 == a3)
  {
    v40 = 65;
  }

  else
  {
    v40 = 66;
  }

  if (a3 == a4)
  {
    v40 = 64;
  }

  if (a3 == 0.0)
  {
    v41 = 63;
  }

  else
  {
    v41 = v40;
  }

  v52 = v57;
  v53 = v58;
  v54 = v59;
  v51 = v56;
  v50 = v55;
  sub_264DFBB3C(v41);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1B08, &qword_264E26550);
  sub_264D90794();
  v42 = v49;
  sub_264E24C08();
  sub_264D817BC(&v55, &qword_27FFB1B08, &qword_264E26550);

  KeyPath = swift_getKeyPath();
  v44 = v48;
  sub_264D90E64(v42, v48, &qword_27FFB1AF8, &qword_264E26548);
  v45 = v44 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1AE8, &qword_264E26540) + 36);
  *v45 = KeyPath;
  *(v45 + 8) = 1;
  v46 = swift_getKeyPath();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1AD0, &qword_264E26538);
  v47 = (v44 + *(result + 36));
  *v47 = v46;
  v47[1] = 0x3FE0000000000000;
  return result;
}

uint64_t sub_264D8BD88@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>)
{
  if ((result & 1) == 0 && a4 == 3600.0)
  {
    v8 = 64;
  }

  else
  {
    v8 = 96;
  }

  v9 = a4 * 0.5;
  if (a3 != a4 && v9 != a3)
  {
    goto LABEL_20;
  }

  if (result)
  {
    if ((*&a3 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (a3 > -9.22337204e18)
    {
      if (a3 < 9.22337204e18)
      {
        v42 = a3;
        sub_264D908C4();
        v11 = sub_264E25348();
        v13 = v12;
        goto LABEL_21;
      }

LABEL_36:
      __break(1u);
      return result;
    }

    __break(1u);
    goto LABEL_36;
  }

  v14 = [objc_allocWithZone(MEMORY[0x277CCA958]) init];
  [v14 setAllowedUnits_];
  [v14 setUnitsStyle_];
  [v14 setZeroFormattingBehavior_];
  v15 = [v14 stringFromTimeInterval_];
  if (!v15)
  {

LABEL_20:
    v11 = 0;
    v13 = 0xE000000000000000;
    goto LABEL_21;
  }

  v16 = v15;
  v11 = sub_264E25108();
  v18 = v17;

  v13 = v18;
LABEL_21:
  if (a3 == 0.0)
  {

    v13 = 0xE100000000000000;
    v11 = 48;
  }

  v42 = v11;
  v43 = v13;
  sub_264D89EB8();
  v19 = sub_264E24AF8();
  v21 = v20;
  v23 = v22;
  sub_264E24A78();
  v24 = sub_264E24AD8();
  v26 = v25;
  v28 = v27;

  sub_264D817AC(v19, v21, v23 & 1);

  if (qword_27FFB16B8 != -1)
  {
    swift_once();
  }

  v29 = sub_264E24AC8();
  v31 = v30;
  v33 = v32;
  v35 = v34;
  sub_264D817AC(v24, v26, v28 & 1);

  sub_264E24F68();
  sub_264E244B8();
  v48 = v33 & 1;
  v42 = v29;
  v43 = v31;
  v44 = v33 & 1;
  *v45 = *v47;
  *&v45[3] = *&v47[3];
  v46 = v35;
  if (v9 == a3)
  {
    v36 = 65;
  }

  else
  {
    v36 = 66;
  }

  if (a3 == a4)
  {
    v36 = 64;
  }

  if (a3 == 0.0)
  {
    v37 = 63;
  }

  else
  {
    v37 = v36;
  }

  sub_264DFBB3C(v37);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1B08, &qword_264E26550);
  sub_264D90794();
  sub_264E24C08();
  sub_264D817BC(&v42, &qword_27FFB1B08, &qword_264E26550);

  KeyPath = swift_getKeyPath();
  v39 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1AE8, &qword_264E26540) + 36);
  *v39 = KeyPath;
  *(v39 + 8) = 1;
  v40 = swift_getKeyPath();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1AD0, &qword_264E26538);
  v41 = (a2 + *(result + 36));
  *v41 = v40;
  v41[1] = 0x3FE0000000000000;
  return result;
}

uint64_t sub_264D8C1C0(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

void *sub_264D8C20C(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1B48, &unk_264E265D0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v7 = ((v5 - 32) * 0x2AAAAAAAAAAAAAABLL) >> 64;
  v4[2] = a1;
  v4[3] = 2 * ((v7 >> 2) + (v7 >> 63));
  return result;
}

void *sub_264D8C29C(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1B40, &qword_264E265C8);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 17;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 4);
  return result;
}

void *sub_264D8C35C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  if (a2 <= a1)
  {
    v4 = a1;
  }

  else
  {
    v4 = a2;
  }

  if (!v4)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v6 = swift_allocObject();
  v7 = _swift_stdlib_malloc_size(v6);
  result = v6;
  v9 = ((v7 - 32) * 0x4924924924924925) >> 64;
  v6[2] = a1;
  v6[3] = 2 * ((v9 >> 4) + (v9 >> 63));
  return result;
}

size_t sub_264D8C3EC(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1BB0, &qword_264E26638);
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1BB8, &unk_264E26640) - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v7);
  if (v5)
  {
    if (result - v6 != 0x8000000000000000 || v5 != -1)
    {
      v7[2] = a1;
      v7[3] = 2 * ((result - v6) / v5);
      return v7;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_264D8C4F4(void **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_264DA4924(v2);
  }

  v3 = v2[2];
  v5[0] = (v2 + 4);
  v5[1] = v3;
  result = sub_264D8C560(v5);
  *a1 = v2;
  return result;
}

uint64_t sub_264D8C560(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_264E25458();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x277D84F90];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1B50, &unk_264E2A660);
        v5 = sub_264E251E8();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_264D8C768(v7, v8, a1, v4);
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
    return sub_264D8C668(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_264D8C668(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 24 * a3 - 24;
    v8 = result - a3;
LABEL_5:
    v9 = v6 + 24 * v4;
    result = *v9;
    v10 = *(v9 + 8);
    v11 = *(v9 + 16);
    v12 = v8;
    v13 = v7;
    while (1)
    {
      v14 = *(v13 + 16);
      if (v11 == v14)
      {
        v15 = result == *v13 && v10 == *(v13 + 8);
        if (v15 || (result = sub_264E25478(), (result & 1) == 0))
        {
LABEL_4:
          ++v4;
          v7 += 24;
          --v8;
          if (v4 == a2)
          {
            return result;
          }

          goto LABEL_5;
        }
      }

      else if (v14 >= v11)
      {
        goto LABEL_4;
      }

      if (!v6)
      {
        break;
      }

      result = *(v13 + 24);
      v10 = *(v13 + 32);
      v11 = *(v13 + 40);
      v16 = *(v13 + 16);
      *(v13 + 24) = *v13;
      *(v13 + 40) = v16;
      *v13 = result;
      *(v13 + 8) = v10;
      *(v13 + 16) = v11;
      v13 -= 24;
      if (__CFADD__(v12++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_264D8C768(uint64_t result, uint64_t a2, void *a3, uint64_t a4)
{
  v99 = result;
  v5 = a3;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x277D84F90];
LABEL_112:
    v9 = *v99;
    if (!*v99)
    {
      goto LABEL_150;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_144:
      result = sub_264D9E01C(v8);
      v8 = result;
    }

    v92 = *(v8 + 2);
    if (v92 >= 2)
    {
      while (*v5)
      {
        v93 = *&v8[16 * v92];
        v94 = *&v8[16 * v92 + 24];
        sub_264D8CDC8((*v5 + 24 * v93), (*v5 + 24 * *&v8[16 * v92 + 16]), *v5 + 24 * v94, v9);
        if (v4)
        {
        }

        if (v94 < v93)
        {
          goto LABEL_137;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_264D9E01C(v8);
        }

        if (v92 - 2 >= *(v8 + 2))
        {
          goto LABEL_138;
        }

        v95 = &v8[16 * v92];
        *v95 = v93;
        *(v95 + 1) = v94;
        result = sub_264D9DF90(v92 - 1);
        v92 = *(v8 + 2);
        if (v92 <= 1)
        {
        }
      }

      goto LABEL_148;
    }
  }

  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = *v5;
      v11 = *v5 + 24 * v7;
      v12 = *(v11 + 16);
      v13 = *v5 + 24 * v9;
      v14 = *(v13 + 16);
      if (v12 == v14)
      {
        result = *v11;
        if (*v11 == *v13 && *(v11 + 8) == *(v13 + 8))
        {
          v16 = 0;
        }

        else
        {
          result = sub_264E25478();
          v16 = result;
        }
      }

      else
      {
        v16 = v14 < v12;
      }

      v7 = v9 + 2;
      if (v9 + 2 < v6)
      {
        v17 = v10 + 24 * v9 + 32;
        do
        {
          v18 = *(v17 + 32);
          v19 = *(v17 + 8);
          if (v18 == v19)
          {
            result = *(v17 + 16);
            if (result == *(v17 - 8) && *(v17 + 24) == *v17)
            {
              if (v16)
              {
                goto LABEL_28;
              }
            }

            else
            {
              result = sub_264E25478();
              if ((v16 ^ result))
              {
                goto LABEL_25;
              }
            }
          }

          else
          {
            result = v19 < v18;
            if ((v16 ^ result))
            {
              goto LABEL_25;
            }
          }

          ++v7;
          v17 += 24;
        }

        while (v6 != v7);
        v7 = v6;
        if (!v16)
        {
          goto LABEL_36;
        }

LABEL_28:
        if (v7 < v9)
        {
          goto LABEL_141;
        }

        if (v9 < v7)
        {
          v21 = 24 * v7 - 8;
          v22 = 24 * v9;
          v23 = v7;
          v24 = v9;
          do
          {
            if (v24 != --v23)
            {
              v31 = *v5;
              if (!*v5)
              {
                goto LABEL_147;
              }

              v25 = (v31 + v22);
              v26 = (v31 + v21);
              v27 = *v25;
              v28 = v25[1];
              v29 = v25[2];
              v30 = *v26;
              *v25 = *(v26 - 1);
              v25[2] = v30;
              *(v26 - 2) = v27;
              *(v26 - 1) = v28;
              *v26 = v29;
            }

            v24 = (v24 + 1);
            v21 -= 24;
            v22 += 24;
          }

          while (v24 < v23);
        }

        goto LABEL_36;
      }

LABEL_25:
      if (v16)
      {
        goto LABEL_28;
      }
    }

LABEL_36:
    v32 = v5[1];
    if (v7 < v32)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_140;
      }

      if (v7 - v9 < a4)
      {
        if (__OFADD__(v9, a4))
        {
          goto LABEL_142;
        }

        if (v9 + a4 >= v32)
        {
          v33 = v5[1];
        }

        else
        {
          v33 = (v9 + a4);
        }

        if (v33 < v9)
        {
LABEL_143:
          __break(1u);
          goto LABEL_144;
        }

        if (v7 != v33)
        {
          break;
        }
      }
    }

LABEL_61:
    if (v7 < v9)
    {
      goto LABEL_139;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_264D9E030(0, *(v8 + 2) + 1, 1, v8);
      v8 = result;
    }

    v47 = *(v8 + 2);
    v46 = *(v8 + 3);
    v48 = v47 + 1;
    if (v47 >= v46 >> 1)
    {
      result = sub_264D9E030((v46 > 1), v47 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 2) = v48;
    v49 = &v8[16 * v47];
    *(v49 + 4) = v9;
    *(v49 + 5) = v7;
    v50 = *v99;
    if (!*v99)
    {
      goto LABEL_149;
    }

    if (v47)
    {
      while (1)
      {
        v51 = v48 - 1;
        if (v48 >= 4)
        {
          break;
        }

        if (v48 == 3)
        {
          v52 = *(v8 + 4);
          v53 = *(v8 + 5);
          v62 = __OFSUB__(v53, v52);
          v54 = v53 - v52;
          v55 = v62;
LABEL_81:
          if (v55)
          {
            goto LABEL_128;
          }

          v68 = &v8[16 * v48];
          v70 = *v68;
          v69 = *(v68 + 1);
          v71 = __OFSUB__(v69, v70);
          v72 = v69 - v70;
          v73 = v71;
          if (v71)
          {
            goto LABEL_131;
          }

          v74 = &v8[16 * v51 + 32];
          v76 = *v74;
          v75 = *(v74 + 1);
          v62 = __OFSUB__(v75, v76);
          v77 = v75 - v76;
          if (v62)
          {
            goto LABEL_134;
          }

          if (__OFADD__(v72, v77))
          {
            goto LABEL_135;
          }

          if (v72 + v77 >= v54)
          {
            if (v54 < v77)
            {
              v51 = v48 - 2;
            }

            goto LABEL_102;
          }

          goto LABEL_95;
        }

        v78 = &v8[16 * v48];
        v80 = *v78;
        v79 = *(v78 + 1);
        v62 = __OFSUB__(v79, v80);
        v72 = v79 - v80;
        v73 = v62;
LABEL_95:
        if (v73)
        {
          goto LABEL_130;
        }

        v81 = &v8[16 * v51];
        v83 = *(v81 + 4);
        v82 = *(v81 + 5);
        v62 = __OFSUB__(v82, v83);
        v84 = v82 - v83;
        if (v62)
        {
          goto LABEL_133;
        }

        if (v84 < v72)
        {
          goto LABEL_3;
        }

LABEL_102:
        v89 = v51 - 1;
        if (v51 - 1 >= v48)
        {
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
          goto LABEL_143;
        }

        if (!*v5)
        {
          goto LABEL_146;
        }

        v9 = *&v8[16 * v89 + 32];
        v90 = *&v8[16 * v51 + 40];
        sub_264D8CDC8((*v5 + 24 * v9), (*v5 + 24 * *&v8[16 * v51 + 32]), *v5 + 24 * v90, v50);
        if (v4)
        {
        }

        if (v90 < v9)
        {
          goto LABEL_124;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_264D9E01C(v8);
        }

        if (v89 >= *(v8 + 2))
        {
          goto LABEL_125;
        }

        v91 = &v8[16 * v89];
        *(v91 + 4) = v9;
        *(v91 + 5) = v90;
        result = sub_264D9DF90(v51);
        v48 = *(v8 + 2);
        if (v48 <= 1)
        {
          goto LABEL_3;
        }
      }

      v56 = &v8[16 * v48 + 32];
      v57 = *(v56 - 64);
      v58 = *(v56 - 56);
      v62 = __OFSUB__(v58, v57);
      v59 = v58 - v57;
      if (v62)
      {
        goto LABEL_126;
      }

      v61 = *(v56 - 48);
      v60 = *(v56 - 40);
      v62 = __OFSUB__(v60, v61);
      v54 = v60 - v61;
      v55 = v62;
      if (v62)
      {
        goto LABEL_127;
      }

      v63 = &v8[16 * v48];
      v65 = *v63;
      v64 = *(v63 + 1);
      v62 = __OFSUB__(v64, v65);
      v66 = v64 - v65;
      if (v62)
      {
        goto LABEL_129;
      }

      v62 = __OFADD__(v54, v66);
      v67 = v54 + v66;
      if (v62)
      {
        goto LABEL_132;
      }

      if (v67 >= v59)
      {
        v85 = &v8[16 * v51 + 32];
        v87 = *v85;
        v86 = *(v85 + 1);
        v62 = __OFSUB__(v86, v87);
        v88 = v86 - v87;
        if (v62)
        {
          goto LABEL_136;
        }

        if (v54 < v88)
        {
          v51 = v48 - 2;
        }

        goto LABEL_102;
      }

      goto LABEL_81;
    }

LABEL_3:
    v6 = v5[1];
    if (v7 >= v6)
    {
      goto LABEL_112;
    }
  }

  v96 = v9;
  v97 = v5;
  v34 = *v5;
  v35 = *v5 + 24 * v7 - 24;
  v36 = (v9 - v7);
LABEL_47:
  v37 = v34 + 24 * v7;
  result = *v37;
  v38 = *(v37 + 8);
  v39 = *(v37 + 16);
  v40 = v36;
  v41 = v35;
  while (1)
  {
    v42 = *(v41 + 16);
    if (v39 == v42)
    {
      v43 = result == *v41 && v38 == *(v41 + 8);
      if (v43 || (result = sub_264E25478(), (result & 1) == 0))
      {
LABEL_46:
        ++v7;
        v35 += 24;
        --v36;
        if (v7 != v33)
        {
          goto LABEL_47;
        }

        v7 = v33;
        v9 = v96;
        v5 = v97;
        goto LABEL_61;
      }
    }

    else if (v42 >= v39)
    {
      goto LABEL_46;
    }

    if (!v34)
    {
      break;
    }

    result = *(v41 + 24);
    v38 = *(v41 + 32);
    v39 = *(v41 + 40);
    v44 = *(v41 + 16);
    *(v41 + 24) = *v41;
    *(v41 + 40) = v44;
    *v41 = result;
    *(v41 + 8) = v38;
    *(v41 + 16) = v39;
    v41 -= 24;
    if (__CFADD__(v40++, 1))
    {
      goto LABEL_46;
    }
  }

  __break(1u);
LABEL_146:
  __break(1u);
LABEL_147:
  __break(1u);
LABEL_148:
  __break(1u);
LABEL_149:
  __break(1u);
LABEL_150:
  __break(1u);
  return result;
}

uint64_t sub_264D8CDC8(char *__dst, double *__src, unint64_t a3, double *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = (__src - __dst) / 24;
  v10 = a3 - __src;
  v11 = (a3 - __src) / 24;
  if (v9 >= v11)
  {
    if (a4 != __src || &__src[3 * v11] <= a4)
    {
      memmove(a4, __src, 24 * v11);
    }

    v12 = &v4[3 * v11];
    if (v10 < 24 || v6 <= v7)
    {
      v20 = v6;
    }

    else
    {
LABEL_27:
      v18 = 0;
      v19 = v12;
      v20 = v6 - 24;
      do
      {
        v21 = &v19[v18];
        v22 = *&v19[v18 - 8];
        v23 = *(v6 - 1);
        if (v22 == v23)
        {
          v24 = *&v19[v18 - 24] == *(v6 - 3) && *(v21 - 2) == *(v6 - 2);
          if (!v24 && (sub_264E25478() & 1) != 0)
          {
LABEL_39:
            v27 = (v5 + v18);
            v5 = v5 + v18 - 24;
            if (v27 != v6)
            {
              v28 = *v20;
              *(v5 + 16) = *(v6 - 1);
              *v5 = v28;
            }

            v12 = &v19[v18];
            if (&v19[v18] <= v4 || (v6 -= 24, v20 <= v7))
            {
              v12 = &v19[v18];
              goto LABEL_47;
            }

            goto LABEL_27;
          }
        }

        else if (v23 < v22)
        {
          goto LABEL_39;
        }

        if ((v5 + v18) != v21)
        {
          v25 = v5 + v18 - 24;
          v26 = *&v19[v18 - 24];
          *(v25 + 16) = *&v19[v18 - 8];
          *v25 = v26;
        }

        v18 -= 24;
        v12 = &v19[v18];
      }

      while (&v19[v18] > v4);
      v20 = v6;
    }
  }

  else
  {
    if (a4 != __dst || &__dst[24 * v9] <= a4)
    {
      memmove(a4, __dst, 24 * v9);
    }

    v12 = &v4[3 * v9];
    if (v8 >= 24 && v6 < v5)
    {
      do
      {
        v13 = *(v6 + 2);
        v14 = v4[2];
        if (v13 == v14)
        {
          v15 = *v6 == *v4 && *(v6 + 1) == *(v4 + 1);
          if (v15 || (sub_264E25478() & 1) == 0)
          {
LABEL_13:
            v16 = v4;
            v15 = v7 == v4;
            v4 += 3;
            if (v15)
            {
              goto LABEL_15;
            }

LABEL_14:
            v17 = *v16;
            *(v7 + 2) = v16[2];
            *v7 = v17;
            goto LABEL_15;
          }
        }

        else if (v14 >= v13)
        {
          goto LABEL_13;
        }

        v16 = v6;
        v15 = v7 == v6;
        v6 += 24;
        if (!v15)
        {
          goto LABEL_14;
        }

LABEL_15:
        v7 += 24;
      }

      while (v4 < v12 && v6 < v5);
    }

    v20 = v7;
  }

LABEL_47:
  v29 = (v12 - v4) / 24;
  if (v20 != v4 || v20 >= &v4[3 * v29])
  {
    memmove(v20, v4, 24 * v29);
  }

  return 1;
}

size_t sub_264D8D090(size_t a1, int64_t a2, char a3)
{
  result = sub_264D8D75C(a1, a2, a3, *v3, &qword_27FFB1BF8, &qword_264E27100, type metadata accessor for UsageOverviewChart.Day);
  *v3 = result;
  return result;
}

char *sub_264D8D0D4(char *a1, int64_t a2, char a3)
{
  result = sub_264D8D50C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_264D8D0F4(char *a1, int64_t a2, char a3)
{
  result = sub_264D8D63C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_264D8D114(char *a1, int64_t a2, char a3)
{
  result = sub_264D8DEC0(a1, a2, a3, *v3, &qword_27FFB1A60, &qword_264E264E0);
  *v3 = result;
  return result;
}

size_t sub_264D8D14C(size_t a1, int64_t a2, char a3)
{
  result = sub_264D8D75C(a1, a2, a3, *v3, &qword_27FFB1BE8, &unk_264E26670, type metadata accessor for NotificationsDetailChart.Model);
  *v3 = result;
  return result;
}

size_t sub_264D8D190(size_t a1, int64_t a2, char a3)
{
  result = sub_264D8D75C(a1, a2, a3, *v3, &qword_27FFB1B98, &qword_264E26620, MEMORY[0x277CC88A8]);
  *v3 = result;
  return result;
}

size_t sub_264D8D1D4(size_t a1, int64_t a2, char a3)
{
  result = sub_264D8D75C(a1, a2, a3, *v3, &qword_27FFB1BE0, &unk_264E270D0, type metadata accessor for PickupsDetailChart.Model);
  *v3 = result;
  return result;
}

size_t sub_264D8D218(size_t a1, int64_t a2, char a3)
{
  result = sub_264D8D75C(a1, a2, a3, *v3, &qword_27FFB1BD0, &unk_264E27090, type metadata accessor for OverviewChart.Day);
  *v3 = result;
  return result;
}

size_t sub_264D8D25C(size_t a1, int64_t a2, char a3)
{
  result = sub_264D8D75C(a1, a2, a3, *v3, &qword_27FFB1BC8, &unk_264E26650, type metadata accessor for DetailChart.Hour);
  *v3 = result;
  return result;
}

size_t sub_264D8D2A0(size_t a1, int64_t a2, char a3)
{
  result = sub_264D8D75C(a1, a2, a3, *v3, &qword_27FFB1BA8, &qword_264E26630, type metadata accessor for NotificationsOverviewChart.Model);
  *v3 = result;
  return result;
}

char *sub_264D8D2E4(char *a1, int64_t a2, char a3)
{
  result = sub_264D8DB44(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_264D8D304(size_t a1, int64_t a2, char a3)
{
  result = sub_264D8D75C(a1, a2, a3, *v3, &qword_27FFB1BA0, &qword_264E26628, type metadata accessor for PickupsOverviewChart.Model);
  *v3 = result;
  return result;
}

void *sub_264D8D348(void *a1, int64_t a2, char a3)
{
  result = sub_264D8DD5C(a1, a2, a3, *v3, &qword_27FFB1B80, &unk_264E27060, &qword_27FFB1B88, &qword_264E26610);
  *v3 = result;
  return result;
}

char *sub_264D8D388(char *a1, int64_t a2, char a3)
{
  result = sub_264D8DC50(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_264D8D3A8(void *a1, int64_t a2, char a3)
{
  result = sub_264D8DD5C(a1, a2, a3, *v3, &qword_27FFB1B70, &qword_264E265F8, &qword_27FFB1B78, &unk_264E26600);
  *v3 = result;
  return result;
}

size_t sub_264D8D3E8(size_t a1, int64_t a2, char a3)
{
  result = sub_264D8D75C(a1, a2, a3, *v3, &qword_27FFB1B68, &qword_264E265F0, type metadata accessor for UsageOverviewChart.Model);
  *v3 = result;
  return result;
}

size_t sub_264D8D42C(size_t a1, int64_t a2, char a3)
{
  result = sub_264D8D75C(a1, a2, a3, *v3, &qword_27FFB1B60, &qword_264E265E8, type metadata accessor for UsageDetailChart.Model);
  *v3 = result;
  return result;
}

size_t sub_264D8D470(size_t a1, int64_t a2, char a3)
{
  result = sub_264D8D75C(a1, a2, a3, *v3, &qword_27FFB1B58, &qword_264E265E0, type metadata accessor for UsageDetailChart.HourlyUsage);
  *v3 = result;
  return result;
}

char *sub_264D8D4B4(char *a1, int64_t a2, char a3)
{
  result = sub_264D8DEC0(a1, a2, a3, *v3, &qword_27FFB1A68, &qword_264E264E8);
  *v3 = result;
  return result;
}

char *sub_264D8D4EC(char *a1, int64_t a2, char a3)
{
  result = sub_264D8DFE4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_264D8D50C(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1B40, &qword_264E265C8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_264D8D63C(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1980, &unk_264E27710);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

size_t sub_264D8D75C(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v16 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

size_t sub_264D8D954(size_t result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1BB0, &qword_264E26638);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1BB8, &unk_264E26640) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1BB8, &unk_264E26640) - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

char *sub_264D8DB44(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1C88, qword_264E27110);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_264D8DC50(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1B90, &qword_264E26618);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_264D8DD5C(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v16 = swift_allocObject();
    v17 = _swift_stdlib_malloc_size(v16);
    v16[2] = v14;
    v16[3] = 2 * ((v17 - 32) / 24);
  }

  else
  {
    v16 = MEMORY[0x277D84F90];
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[3 * v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 24 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

char *sub_264D8DEC0(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * ((v13 - 32) / 56);
  }

  else
  {
    v12 = MEMORY[0x277D84F90];
  }

  v14 = v12 + 32;
  v15 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v14 >= &v15[56 * v10])
    {
      memmove(v14, v15, 56 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v12;
}

char *sub_264D8DFE4(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1A80, &unk_264E26500);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_264D8E104(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9)) | (v12 << 6);
      v18 = (*(a4 + 48) + 16 * v17);
      v19 = v18[1];
      v20 = *(*(a4 + 56) + 8 * v17);
      v9 &= v9 - 1;
      *v11 = *v18;
      v11[1] = v19;
      v11[2] = v20;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 3;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v22 = v12 + 1;
    }

    else
    {
      v22 = (63 - v7) >> 6;
    }

    v12 = v22 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

void *sub_264D8E260(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = (*(a4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
      v18 = v17[1];
      v9 &= v9 - 1;
      *v11 = *v17;
      v11[1] = v18;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 2;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

void *sub_264D8E3BC(void *result, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v4 = result;
  v5 = a4 + 64;
  v6 = -1 << *(a4 + 32);
  if (-v6 < 64)
  {
    v7 = ~(-1 << -v6);
  }

  else
  {
    v7 = -1;
  }

  v8 = v7 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v10 = 0;
    a3 = 0;
LABEL_24:
    *v4 = a4;
    v4[1] = v5;
    v4[2] = ~v6;
    v4[3] = v10;
    v4[4] = v8;
    return a3;
  }

  if (!a3)
  {
    v10 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v9 = a2;
    v24 = -1 << *(a4 + 32);
    v25 = a3;
    result = 0;
    v10 = 0;
    v11 = (63 - v6) >> 6;
    v12 = 1;
    while (v8)
    {
LABEL_14:
      v15 = a4;
      v16 = *(a4 + 56) + 56 * (__clz(__rbit64(v8)) | (v10 << 6));
      v17 = *(v16 + 8);
      v8 &= v8 - 1;
      v19 = *(v16 + 32);
      v18 = *(v16 + 40);
      v20 = *(v16 + 48);
      v21 = *(v16 + 16);
      *v9 = *v16;
      *(v9 + 8) = v17;
      *(v9 + 16) = v21;
      *(v9 + 32) = v19;
      *(v9 + 40) = v18;
      *(v9 + 48) = v20;
      if (v12 == v25)
      {

        a4 = v15;
        v6 = v24;
        a3 = v25;
        goto LABEL_24;
      }

      v9 += 56;

      result = v12;
      v22 = __OFADD__(v12++, 1);
      a4 = v15;
      if (v22)
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v13 = v10;
    while (1)
    {
      v14 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v14 >= v11)
      {
        break;
      }

      v8 = *(v5 + 8 * v14);
      ++v13;
      if (v8)
      {
        v10 = v14;
        goto LABEL_14;
      }
    }

    v8 = 0;
    if (v11 <= v10 + 1)
    {
      v23 = v10 + 1;
    }

    else
    {
      v23 = v11;
    }

    v10 = v23 - 1;
    a3 = result;
    v6 = v24;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

void sub_264D8E568(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1BB8, &unk_264E26640);
  v38 = *(v41 - 8);
  v8 = *(v38 + 64);
  MEMORY[0x28223BE20](v41);
  v40 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v39 = (&v35 - v11);
  v42 = a4;
  v14 = *(a4 + 64);
  v13 = a4 + 64;
  v12 = v14;
  v15 = -1 << *(v13 - 32);
  if (-v15 < 64)
  {
    v16 = ~(-1 << -v15);
  }

  else
  {
    v16 = -1;
  }

  v17 = v16 & v12;
  if (!a2)
  {
LABEL_18:
    v24 = 0;
LABEL_25:
    *a1 = v42;
    a1[1] = v13;
    a1[2] = ~v15;
    a1[3] = v24;
    a1[4] = v17;
    return;
  }

  if (!a3)
  {
    v24 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v36 = -1 << *(v13 - 32);
    v37 = a1;
    v18 = 0;
    v19 = (63 - v15) >> 6;
    v20 = 1;
    while (v17)
    {
LABEL_14:
      v23 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
      v24 = v18;
      v25 = v23 | (v18 << 6);
      v26 = v42;
      v27 = *(v42 + 48);
      v28 = sub_264E23AA8();
      v29 = *(v28 - 8);
      v30 = v27 + *(v29 + 72) * v25;
      v31 = v40;
      (*(v29 + 16))(v40, v30, v28);
      *&v31[*(v41 + 48)] = *(*(v26 + 56) + 8 * v25);
      v32 = v31;
      a1 = v39;
      sub_264D90E64(v32, v39, &qword_27FFB1BB8, &unk_264E26640);
      sub_264D90E64(a1, a2, &qword_27FFB1BB8, &unk_264E26640);
      if (v20 == a3)
      {
        goto LABEL_23;
      }

      a2 += *(v38 + 72);
      v33 = __OFADD__(v20++, 1);
      v18 = v24;
      if (v33)
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v21 = v18;
    while (1)
    {
      v22 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v22 >= v19)
      {
        break;
      }

      v17 = *(v13 + 8 * v22);
      ++v21;
      if (v17)
      {
        v18 = v22;
        goto LABEL_14;
      }
    }

    v17 = 0;
    if (v19 <= v18 + 1)
    {
      v34 = v18 + 1;
    }

    else
    {
      v34 = v19;
    }

    v24 = v34 - 1;
LABEL_23:
    v15 = v36;
    a1 = v37;
    goto LABEL_25;
  }

LABEL_27:
  __break(1u);
}

void *sub_264D8E80C(void *result, char *__dst, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!__dst)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = __dst;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v18 = (*(a4 + 56) + 56 * (v17 | (v12 << 6)));
      v20 = *(v18 + 1);
      v19 = *(v18 + 2);
      v21 = *v18;
      *&v26[15] = *(v18 + 47);
      v25[1] = v20;
      *v26 = v19;
      v25[0] = v21;
      memmove(v11, v18, 0x33uLL);
      if (v14 == v10)
      {
        sub_264D90348(v25, v24);
        goto LABEL_24;
      }

      v11 += 56;
      sub_264D90348(v25, v24);
      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v23 = v12 + 1;
    }

    else
    {
      v23 = (63 - v7) >> 6;
    }

    v12 = v23 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

void _s16ScreenTimeUICore18UsageOverviewChartV5ModelV7yStride8forLastYSaySdGSd_tFZ_0(double a1)
{
  v1 = a1 * 0.25;
  if (a1 * 0.25 == 0.0)
  {
    goto LABEL_34;
  }

  v2 = a1 + 60.0;
  v3 = a1 + 60.0 >= 0.0;
  if (v1 > 0.0)
  {
    v3 = a1 + 60.0 <= 0.0;
  }

  if (!v3)
  {
    v5 = 0;
    while (1)
    {
      v4 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        goto LABEL_32;
      }

      v6 = v4 * v1 + 0.0;
      v7 = v6 <= v2;
      if (v1 > 0.0)
      {
        v7 = v2 <= v6;
      }

      ++v5;
      if (v7)
      {
        goto LABEL_11;
      }
    }
  }

  v4 = 0;
LABEL_11:
  v19 = MEMORY[0x277D84F90];
  sub_264D8D0F4(0, v4, 0);
  v8 = v19;
  if (v4)
  {
    v9 = 1;
    v10 = 0.0;
    while (1)
    {
      v11 = v10 <= v2;
      if (v1 > 0.0)
      {
        v11 = v2 <= v10;
      }

      if (v11)
      {
        break;
      }

      v20 = v8;
      v13 = *(v8 + 16);
      v12 = *(v8 + 24);
      if (v13 >= v12 >> 1)
      {
        sub_264D8D0F4((v12 > 1), v13 + 1, 1);
        v8 = v20;
      }

      v14 = v9 * v1 + 0.0;
      *(v8 + 16) = v13 + 1;
      *(v8 + 8 * v13 + 32) = v10;
      ++v9;
      v10 = v14;
      if (v9 - v4 == 1)
      {
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
    return;
  }

  v14 = 0.0;
LABEL_21:
  v15 = v14 <= v2;
  if (v1 > 0.0)
  {
    v15 = v2 <= v14;
  }

  if (!v15)
  {
    while (!__OFADD__(v4, 1))
    {
      v21 = v8;
      v17 = *(v8 + 16);
      v16 = *(v8 + 24);
      if (v17 >= v16 >> 1)
      {
        sub_264D8D0F4((v16 > 1), v17 + 1, 1);
        v8 = v21;
      }

      *(v8 + 8 * v17 + 32) = v14;
      v14 = (v4 + 1) * v1 + 0.0;
      *(v8 + 16) = v17 + 1;
      v18 = v14 <= v2;
      if (v1 > 0.0)
      {
        v18 = v2 <= v14;
      }

      ++v4;
      if (v18)
      {
        return;
      }
    }

    goto LABEL_33;
  }
}

uint64_t objectdestroyTm_0()
{
  v1 = type metadata accessor for UsageOverviewChart(0);
  v24 = *(*(v1 - 1) + 80);
  v22 = *(*(v1 - 1) + 64);
  v23 = (v24 + 16) & ~v24;
  v2 = v0 + v23;
  v3 = sub_264E23C38();
  v4 = *(*(v3 - 8) + 8);
  v4(v0 + v23, v3);
  v5 = v0 + v23 + v1[5];
  v6 = sub_264E23AA8();
  v7 = *(v6 - 8);
  v21 = *(v7 + 8);
  v21(v5, v6);
  v8 = type metadata accessor for UsageOverviewChart.Model(0);
  v9 = *(v5 + *(v8 + 20));

  v4(v5 + *(v8 + 24), v3);
  v10 = v0 + v23 + v1[6];
  v11 = *(v7 + 48);
  if (!v11(v10, 1, v6))
  {
    v21(v10, v6);
  }

  v12 = *(v10 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1948, &unk_264E276F0) + 28));

  v13 = (v2 + v1[7]);
  v14 = *v13;

  v15 = v13[1];

  v16 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1870, &unk_264E26210) + 32);
  if (!v11(v13 + v16, 1, v6))
  {
    v21(v13 + v16, v6);
  }

  v17 = *(v2 + v1[8]);

  v18 = *(v2 + v1[9] + 8);

  v19 = *(v2 + v1[10] + 8);

  return MEMORY[0x2821FE8E8](v0, v23 + v22, v24 | 7);
}

uint64_t sub_264D8EE9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for UsageOverviewChart(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_264D87B64(a1, v6, a2);
}

uint64_t sub_264D8EF1C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB18C0, &qword_264E26260);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_264D8EFDC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_264D8F0FC(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_264E23C38();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_10:

    return v9(v10, a2, v8);
  }

  v11 = type metadata accessor for UsageOverviewChart.Model(0);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_9:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_10;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1948, &unk_264E276F0);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_9;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1870, &unk_264E26210);
  if (*(*(v15 - 8) + 84) == a2)
  {
    v8 = v15;
    v12 = *(v15 - 8);
    v13 = a3[7];
    goto LABEL_9;
  }

  v17 = *(a1 + a3[8]);
  if (v17 >= 0xFFFFFFFF)
  {
    LODWORD(v17) = -1;
  }

  v18 = v17 - 1;
  if (v18 < 0)
  {
    v18 = -1;
  }

  return (v18 + 1);
}

uint64_t sub_264D8F2D0(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_264E23C38();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    v13 = type metadata accessor for UsageOverviewChart.Model(0);
    if (*(*(v13 - 8) + 84) == a3)
    {
      v10 = v13;
      v14 = *(v13 - 8);
      v15 = a4[5];
    }

    else
    {
      v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1948, &unk_264E276F0);
      if (*(*(v16 - 8) + 84) == a3)
      {
        v10 = v16;
        v14 = *(v16 - 8);
        v15 = a4[6];
      }

      else
      {
        result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1870, &unk_264E26210);
        if (*(*(result - 8) + 84) != a3)
        {
          *(a1 + a4[8]) = a2;
          return result;
        }

        v10 = result;
        v14 = *(result - 8);
        v15 = a4[7];
      }
    }

    v11 = *(v14 + 56);
    v12 = a1 + v15;
  }

  return v11(v12, a2, a2, v10);
}

void sub_264D8F480()
{
  sub_264E23C38();
  if (v0 <= 0x3F)
  {
    type metadata accessor for UsageOverviewChart.Model(319);
    if (v1 <= 0x3F)
    {
      sub_264D8F5E8(319, &qword_27FFB19E8, &qword_27FFB1860, &qword_264E267E0, MEMORY[0x277CE10B8]);
      if (v2 <= 0x3F)
      {
        sub_264D8F5E8(319, &qword_27FFB19F0, &qword_27FFB1860, &qword_264E267E0, MEMORY[0x277CE11F8]);
        if (v3 <= 0x3F)
        {
          sub_264D8F5E8(319, &qword_27FFB19F8, &qword_27FFB1A00, "ک", MEMORY[0x277D83D88]);
          if (v4 <= 0x3F)
          {
            sub_264D8F64C();
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

void sub_264D8F5E8(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_264D8F64C()
{
  if (!qword_27FFB1A08)
  {
    v0 = sub_264E24DB8();
    if (!v1)
    {
      atomic_store(v0, &qword_27FFB1A08);
    }
  }
}

uint64_t sub_264D8F6B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_264E23AA8();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 24));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = sub_264E23C38();
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 28);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_264D8F7E8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_264E23AA8();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }

  else
  {
    v11 = sub_264E23C38();
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 28);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

void sub_264D8F90C()
{
  sub_264E23AA8();
  if (v0 <= 0x3F)
  {
    sub_264D8F9B0();
    if (v1 <= 0x3F)
    {
      sub_264E23C38();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_264D8F9B0()
{
  if (!qword_27FFB1A20)
  {
    v0 = sub_264E25028();
    if (!v1)
    {
      atomic_store(v0, &qword_27FFB1A20);
    }
  }
}

uint64_t sub_264D8FA24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_264E23AA8();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = sub_264E23C38();
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 24);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_264D8FB5C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_264E23AA8();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  else
  {
    v11 = sub_264E23C38();
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 24);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

void sub_264D8FC80()
{
  sub_264E23AA8();
  if (v0 <= 0x3F)
  {
    sub_264D8FD24();
    if (v1 <= 0x3F)
    {
      sub_264E23C38();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_264D8FD24()
{
  if (!qword_27FFB1A38)
  {
    type metadata accessor for UsageOverviewChart.Day(255);
    v0 = sub_264E251F8();
    if (!v1)
    {
      atomic_store(v0, &qword_27FFB1A38);
    }
  }
}

unint64_t sub_264D8FD80()
{
  result = qword_27FFB1A40;
  if (!qword_27FFB1A40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FFB19C8, &qword_264E26300);
    sub_264D8FE38();
    sub_264D81DCC(&qword_27FFB1A50, &qword_27FFB1A58, &qword_264E26470);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFB1A40);
  }

  return result;
}

unint64_t sub_264D8FE38()
{
  result = qword_27FFB1A48;
  if (!qword_27FFB1A48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FFB18C0, &qword_264E26260);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FFB18B0, &qword_264E26250);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FFB19B8, &qword_264E27730);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FFB18A8, &qword_264E26248);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FFB19A8, &unk_264E262F0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FFB18A0, &qword_264E26240);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FFB1998, &unk_264E27720);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FFB1898, &qword_264E26238);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FFB1988, &unk_264E262E0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FFB1890, &qword_264E26230);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FFB1968, &unk_264E27700);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FFB1888, &qword_264E26228);
    type metadata accessor for UsageOverviewChart.Model(255);
    sub_264D81DCC(&qword_27FFB1950, &qword_27FFB1888, &qword_264E26228);
    sub_264D89FD8(&qword_27FFB1958, type metadata accessor for UsageOverviewChart.Model);
    swift_getOpaqueTypeConformance2();
    sub_264D8A020(&qword_27FFB1970, &qword_27FFB1968, &unk_264E27700);
    swift_getOpaqueTypeConformance2();
    sub_264D8A020(&qword_27FFB1990, &qword_27FFB1988, &unk_264E262E0);
    swift_getOpaqueTypeConformance2();
    sub_264D81DCC(&qword_27FFB19A0, &qword_27FFB1998, &unk_264E27720);
    swift_getOpaqueTypeConformance2();
    sub_264D81DCC(&qword_27FFB19B0, &qword_27FFB19A8, &unk_264E262F0);
    swift_getOpaqueTypeConformance2();
    sub_264D81DCC(&qword_27FFB19C0, &qword_27FFB19B8, &qword_264E27730);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFB1A48);
  }

  return result;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_264D9024C(uint64_t a1, int a2)
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

uint64_t sub_264D90294(uint64_t result, int a2, int a3)
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

uint64_t sub_264D902E4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_264D903E0()
{
  result = qword_27FFB1A98;
  if (!qword_27FFB1A98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FFB1A90, &qword_264E26510);
    sub_264E24008();
    swift_getOpaqueTypeConformance2();
    sub_264D904B8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFB1A98);
  }

  return result;
}

unint64_t sub_264D904B8()
{
  result = qword_27FFB1AA0;
  if (!qword_27FFB1AA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FFB1AA8, &qword_264E26518);
    sub_264D81DCC(&qword_27FFB1AB0, &qword_27FFB1AB8, &qword_264E26520);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFB1AA0);
  }

  return result;
}

unint64_t sub_264D90568()
{
  result = qword_27FFB1AD8;
  if (!qword_27FFB1AD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FFB1AD0, &qword_264E26538);
    sub_264D90620();
    sub_264D81DCC(&qword_27FFB1B28, &qword_27FFB1B30, &qword_264E26560);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFB1AD8);
  }

  return result;
}

unint64_t sub_264D90620()
{
  result = qword_27FFB1AE0;
  if (!qword_27FFB1AE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FFB1AE8, &qword_264E26540);
    sub_264D906D8();
    sub_264D81DCC(&qword_27FFB1B18, &qword_27FFB1B20, &qword_264E26558);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFB1AE0);
  }

  return result;
}

unint64_t sub_264D906D8()
{
  result = qword_27FFB1AF0;
  if (!qword_27FFB1AF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FFB1AF8, &qword_264E26548);
    sub_264D90794();
    sub_264D89FD8(&qword_27FFB1B10, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFB1AF0);
  }

  return result;
}

unint64_t sub_264D90794()
{
  result = qword_27FFB1B00;
  if (!qword_27FFB1B00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FFB1B08, &qword_264E26550);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFB1B00);
  }

  return result;
}

uint64_t sub_264D90818@<X0>(_BYTE *a1@<X8>)
{
  result = sub_264E24658();
  *a1 = result & 1;
  return result;
}

uint64_t sub_264D90870@<X0>(void *a1@<X8>)
{
  result = sub_264E246B8();
  *a1 = v3;
  return result;
}

unint64_t sub_264D908C4()
{
  result = qword_27FFB1B38;
  if (!qword_27FFB1B38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFB1B38);
  }

  return result;
}

uint64_t sub_264D90954(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, __n128))
{
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a2, a3) - 8);
  v7 = *(v4 + 16);
  v8 = *(v4 + 24);
  v9 = *(v4 + 32);
  v10.n128_u64[0] = *(v4 + 40);
  v11 = *(v4 + 48);
  v12 = v4 + ((*(v6 + 80) + 49) & ~*(v6 + 80));

  return a4(a1, v7, v8, v9, v11, v12, v10);
}

uint64_t sub_264D90A54()
{
  v1 = type metadata accessor for UsageOverviewChart(0);
  v27 = *(*(v1 - 1) + 80);
  v25 = *(*(v1 - 1) + 64);
  v2 = sub_264E23FE8();
  v29 = *(v2 - 8);
  v30 = v2;
  v24 = *(v29 + 80);
  v28 = *(v29 + 64);
  v31 = v0;
  v26 = (v27 + 16) & ~v27;
  v3 = v0 + v26;
  v4 = sub_264E23C38();
  v5 = *(*(v4 - 8) + 8);
  v5(v0 + v26, v4);
  v6 = v0 + v26 + v1[5];
  v7 = sub_264E23AA8();
  v8 = *(v7 - 8);
  v23 = *(v8 + 8);
  v23(v6, v7);
  v9 = type metadata accessor for UsageOverviewChart.Model(0);
  v10 = *(v6 + *(v9 + 20));

  v5(v6 + *(v9 + 24), v4);
  v11 = v3 + v1[6];
  v12 = *(v8 + 48);
  if (!v12(v11, 1, v7))
  {
    v23(v11, v7);
  }

  v13 = *(v11 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1948, &unk_264E276F0) + 28));

  v14 = (v3 + v1[7]);
  v15 = *v14;

  v16 = v14[1];

  v17 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1870, &unk_264E26210) + 32);
  if (!v12(v14 + v17, 1, v7))
  {
    v23(v14 + v17, v7);
  }

  v18 = (v26 + v25 + v24) & ~v24;
  v19 = *(v3 + v1[8]);

  v20 = *(v3 + v1[9] + 8);

  v21 = *(v3 + v1[10] + 8);

  (*(v29 + 8))(v31 + v18, v30);

  return MEMORY[0x2821FE8E8](v31, v18 + v28, v27 | v24 | 7);
}

uint64_t sub_264D90D70()
{
  v1 = *(type metadata accessor for UsageOverviewChart(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(sub_264E23FE8() - 8);
  v5 = v0 + ((v2 + v3 + *(v4 + 80)) & ~*(v4 + 80));

  return sub_264D87EC0();
}

uint64_t sub_264D90E44()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_264D8876C() & 1;
}

uint64_t sub_264D90E64(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t objectdestroy_43Tm(uint64_t *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 49) & ~v5;
  v7 = *(v4 + 64);
  v8 = *(v2 + 32);

  (*(v4 + 8))(v2 + v6, v3);

  return MEMORY[0x2821FE8E8](v2, v6 + v7, v5 | 7);
}

uint64_t sub_264D910BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for UsageOverviewChart(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));
  return sub_264D864DC(a1, a2);
}

uint64_t sub_264D91130()
{
  v23 = type metadata accessor for UsageOverviewChart(0);
  v27 = *(*(v23 - 1) + 80);
  v25 = *(*(v23 - 1) + 64);
  v30 = type metadata accessor for UsageOverviewChart.Day(0);
  v24 = *(*(v30 - 8) + 80);
  v29 = *(*(v30 - 8) + 64);
  v31 = v0;
  v26 = (v27 + 16) & ~v27;
  v1 = v0 + v26;
  v2 = sub_264E23C38();
  v3 = *(*(v2 - 8) + 8);
  v3(v1, v2);
  v4 = v1 + v23[5];
  v5 = sub_264E23AA8();
  v6 = *(v5 - 8);
  v7 = *(v6 + 8);
  v7(v4, v5);
  v8 = type metadata accessor for UsageOverviewChart.Model(0);
  v9 = *(v4 + *(v8 + 20));

  v28 = v3;
  v3(v4 + *(v8 + 24), v2);
  v10 = v1 + v23[6];
  v11 = *(v6 + 48);
  if (!v11(v10, 1, v5))
  {
    v7(v10, v5);
  }

  v12 = *(v10 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1948, &unk_264E276F0) + 28));

  v13 = (v1 + v23[7]);
  v14 = *v13;

  v15 = v13[1];

  v16 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1870, &unk_264E26210) + 32);
  if (!v11(v13 + v16, 1, v5))
  {
    v7(v13 + v16, v5);
  }

  v17 = (v26 + v25 + v24) & ~v24;
  v18 = *(v1 + v23[8]);

  v19 = *(v1 + v23[9] + 8);

  v20 = *(v1 + v23[10] + 8);

  v7(v31 + v17, v5);
  v21 = *(v31 + v17 + *(v30 + 24));

  v28(v31 + v17 + *(v30 + 28), v2);

  return MEMORY[0x2821FE8E8](v31, v17 + v29, v27 | v24 | 7);
}

uint64_t sub_264D9147C@<X0>(unint64_t a1@<X0>, double a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, double a5@<D0>)
{
  v11 = *(type metadata accessor for UsageOverviewChart(0) - 8);
  v12 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v13 = *(v11 + 64);
  v14 = *(type metadata accessor for UsageOverviewChart.Day(0) - 8);
  v15 = v5 + ((v12 + v13 + *(v14 + 80)) & ~*(v14 + 80));

  return sub_264D8886C(a1, a2, a3, v5 + v12, v15, a4, a5);
}

uint64_t sub_264D91588()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_264D915C0(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(*a1, *(a1 + 16), *(a1 + 24), *(a1 + 8));
}

uint64_t sub_264D91628(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_264D91674()
{
  v0 = sub_264E23FC8();
  __swift_allocate_value_buffer(v0, qword_27FFB1C90);
  v1 = __swift_project_value_buffer(v0, qword_27FFB1C90);
  if (qword_27FFB1690 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_27FFB6C08);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_264D9173C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_264E238E8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v57 = &v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_264E23AA8();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v48 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v48 - v16;
  MEMORY[0x28223BE20](v18);
  v20 = &v48 - v19;
  v58 = a2;
  sub_264D91CFC(a1, &v48 - v19);
  sub_264D93AE8(&qword_27FFB1868, MEMORY[0x277CC9578]);
  if (sub_264E25068())
  {
    (*(v11 + 8))(a1, v10);
  }

  else
  {
    v55 = a3;
    v56 = v6;
    if (qword_27FFB1680 != -1)
    {
      swift_once();
    }

    v21 = sub_264E23FC8();
    __swift_project_value_buffer(v21, qword_27FFB1C90);
    v22 = *(v11 + 16);
    v54 = a1;
    v22(v17, a1, v10);
    v22(v14, v20, v10);
    v23 = v57;
    v6 = v56;
    (*(v7 + 16))(v57, v58, v56);
    v24 = sub_264E23FA8();
    v25 = sub_264E25288();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v52 = v24;
      v27 = v26;
      v53 = swift_slowAlloc();
      v59 = v53;
      *v27 = 136315650;
      v48 = sub_264D93AE8(&qword_27FFB1CC8, MEMORY[0x277CC9578]);
      v51 = v25;
      v28 = sub_264E25468();
      v30 = v29;
      v49 = v7;
      v31 = *(v11 + 8);
      v31(v17, v10);
      v50 = v11 + 8;
      v32 = sub_264DEA000(v28, v30, &v59);

      *(v27 + 4) = v32;
      *(v27 + 12) = 2080;
      v33 = sub_264E25468();
      v35 = v34;
      v31(v14, v10);
      v36 = v31;
      v37 = sub_264DEA000(v33, v35, &v59);

      *(v27 + 14) = v37;
      *(v27 + 22) = 2080;
      v6 = v56;
      sub_264D93AE8(&qword_27FFB1CD0, MEMORY[0x277CC88A8]);
      v38 = v57;
      v39 = sub_264E25468();
      v41 = v40;
      v7 = v49;
      (*(v49 + 8))(v38, v6);
      v42 = sub_264DEA000(v39, v41, &v59);

      *(v27 + 24) = v42;
      v43 = v52;
      _os_log_impl(&dword_264D7D000, v52, v51, "ActivityNavigationState interiorDate %s is changed to %s, to be within bounds %s.", v27, 0x20u);
      v44 = v53;
      swift_arrayDestroy();
      MEMORY[0x26674FCD0](v44, -1, -1);
      MEMORY[0x26674FCD0](v27, -1, -1);

      v36(v54, v10);
    }

    else
    {

      v45 = *(v11 + 8);
      v45(v54, v10);
      (*(v7 + 8))(v23, v6);
      v45(v14, v10);
      v45(v17, v10);
    }

    a3 = v55;
  }

  (*(v11 + 32))(a3, v20, v10);
  v46 = type metadata accessor for ActivityNavigationState.DateAndBounds(0);
  return (*(v7 + 32))(a3 + *(v46 + 20), v58, v6);
}

uint64_t sub_264D91CFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_264E23AA8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s16ScreenTimeUICore11DetailChartV4HourV2id10Foundation4DateVvg_0();
  v9 = sub_264E23A58();
  v10 = *(v5 + 8);
  v10(v8, v4);
  if (v9)
  {
    return _s16ScreenTimeUICore11DetailChartV4HourV2id10Foundation4DateVvg_0();
  }

  sub_264E23888();
  sub_264D93AE8(&qword_27FFB1BF0, MEMORY[0x277CC9578]);
  v12 = sub_264E25048();
  v10(v8, v4);
  if (v12)
  {
    return (*(v5 + 16))(a2, a1, v4);
  }

  sub_264E23888();
  sub_264E23A28();
  return (v10)(v8, v4);
}

uint64_t sub_264D91ED0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((sub_264E23A78() & 1) == 0)
  {
    return 0;
  }

  v4 = *(a3 + 20);

  return sub_264E23878();
}

uint64_t sub_264D91F38@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_264E23AA8();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = sub_264E23C18();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1880, &qword_264E26220);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = v25 - v12;
  v14 = *v1;
  if (*v1)
  {
    if (v14 == 1)
    {

      return sub_264D922CC(a1);
    }

    else
    {
      type metadata accessor for STActivityMode(0);
      v25[1] = v14;
      result = sub_264E25488();
      __break(1u);
    }
  }

  else
  {
    v15 = type metadata accessor for ActivityNavigationState(0);
    v16 = *(v15 + 24);
    (*(v6 + 104))(v9, *MEMORY[0x277CC9968], v5);
    v17 = *(v15 + 20);
    sub_264E23B08();
    (*(v6 + 8))(v9, v5);
    v18 = sub_264E238E8();
    v19 = *(v18 - 8);
    if ((*(v19 + 48))(v13, 1, v18) == 1)
    {
      sub_264D817BC(v13, &qword_27FFB1880, &qword_264E26220);
      if (qword_27FFB1680 != -1)
      {
        swift_once();
      }

      v20 = sub_264E23FC8();
      __swift_project_value_buffer(v20, qword_27FFB1C90);
      v21 = sub_264E23FA8();
      v22 = sub_264E252B8();
      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        *v23 = 0;
        _os_log_impl(&dword_264D7D000, v21, v22, "Unable to calculate day interval around interiorDate. Assuming 24-hour day.", v23, 2u);
        MEMORY[0x26674FCD0](v23, -1, -1);
      }

      sub_264E23AF8();
      return sub_264E238A8();
    }

    else
    {
      return (*(v19 + 32))(a1, v13, v18);
    }
  }

  return result;
}

uint64_t sub_264D922CC@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_264E23AA8();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = sub_264E23C18();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1880, &qword_264E26220);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v23 - v11;
  v13 = type metadata accessor for ActivityNavigationState(0);
  v14 = *(v13 + 24);
  (*(v5 + 104))(v8, *MEMORY[0x277CC9940], v4);
  v15 = *(v13 + 20);
  sub_264E23B08();
  (*(v5 + 8))(v8, v4);
  v16 = sub_264E238E8();
  v17 = *(v16 - 8);
  if ((*(v17 + 48))(v12, 1, v16) != 1)
  {
    return (*(v17 + 32))(a1, v12, v16);
  }

  sub_264D817BC(v12, &qword_27FFB1880, &qword_264E26220);
  if (qword_27FFB1680 != -1)
  {
    swift_once();
  }

  v18 = sub_264E23FC8();
  __swift_project_value_buffer(v18, qword_27FFB1C90);
  v19 = sub_264E23FA8();
  v20 = sub_264E252B8();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 0;
    _os_log_impl(&dword_264D7D000, v19, v20, "Unable to calculate week interval around interiorDate. Assuming 7 days in week, 24-hour days, from start of day containing interiorDate.", v21, 2u);
    MEMORY[0x26674FCD0](v21, -1, -1);
  }

  sub_264E23AF8();
  return sub_264E238A8();
}

uint64_t sub_264D925F4@<X0>(uint64_t a1@<X8>)
{
  if (*v1 == 1)
  {
    v3 = 1;
  }

  else
  {
    if (*v1)
    {
      v10 = *v1;
      type metadata accessor for STActivityMode(0);
      result = sub_264E25488();
      __break(1u);
      return result;
    }

    v4 = type metadata accessor for ActivityNavigationState(0);
    v5 = *(v4 + 20);
    v6 = v1 + *(v4 + 24);
    sub_264E23AF8();
    v3 = 0;
  }

  v7 = sub_264E23AA8();
  v8 = *(*(v7 - 8) + 56);

  return v8(a1, v3, 1, v7);
}

uint64_t sub_264D926C4(uint64_t a1)
{
  v3 = sub_264E238E8();
  v33 = *(v3 - 8);
  v34 = v3;
  v4 = *(v33 + 64);
  MEMORY[0x28223BE20](v3);
  v32 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = type metadata accessor for ActivityNavigationState.DateAndBounds(0);
  v6 = *(*(v31 - 8) + 64);
  MEMORY[0x28223BE20](v31);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1860, &qword_264E267E0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v31 - v11;
  v13 = sub_264E23AA8();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v31 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v31 - v19;
  MEMORY[0x28223BE20](v21);
  v23 = &v31 - v22;
  v24 = a1;
  sub_264D93A14(a1, v12);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_264D817BC(a1, &qword_27FFB1860, &qword_264E267E0);
    result = sub_264D817BC(v12, &qword_27FFB1860, &qword_264E267E0);
    v26 = 1;
  }

  else
  {
    (*(v14 + 32))(v23, v12, v13);
    v27 = *(v14 + 16);
    v27(v20, v23, v13);
    v27(v17, v20, v13);
    v28 = v1 + *(type metadata accessor for ActivityNavigationState(0) + 20);
    v29 = v32;
    (*(v33 + 16))(v32, v28 + *(v31 + 20), v34);
    sub_264D9173C(v17, v29, v8);
    sub_264D817BC(v24, &qword_27FFB1860, &qword_264E267E0);
    v30 = *(v14 + 8);
    v30(v20, v13);
    v30(v23, v13);
    result = sub_264D93A84(v8, v28);
    v26 = 0;
  }

  *v1 = v26;
  return result;
}

uint64_t sub_264D92A3C()
{
  v1 = type metadata accessor for ActivityNavigationState(0);
  v2 = *(v1 + 20);
  v3 = v0 + *(v1 + 24);
  return sub_264E23AF8();
}

uint64_t sub_264D92A78()
{
  v0 = sub_264E238E8();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_264D922CC(v4);
  _s16ScreenTimeUICore11DetailChartV4HourV2id10Foundation4DateVvg_0();
  return (*(v1 + 8))(v4, v0);
}

uint64_t sub_264D92B58(uint64_t a1)
{
  v69 = a1;
  v70 = type metadata accessor for ActivityNavigationState.DateAndBounds(0);
  v2 = *(*(v70 - 8) + 64);
  MEMORY[0x28223BE20](v70);
  v4 = &v63 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_264E238E8();
  v72 = *(v5 - 8);
  v73 = v5;
  v6 = *(v72 + 64);
  MEMORY[0x28223BE20](v5);
  v67 = &v63 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v63 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1860, &qword_264E267E0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v63 - v13;
  v15 = sub_264E23AA8();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v66 = &v63 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v21 = &v63 - v20;
  MEMORY[0x28223BE20](v22);
  v24 = &v63 - v23;
  v25 = sub_264E23C18();
  v74 = *(v25 - 8);
  v75 = v25;
  v26 = *(v74 + 64);
  MEMORY[0x28223BE20](v25);
  v28 = &v63 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = *v1;
  type metadata accessor for STActivityMode(0);
  v68 = v21;
  if (v29 == 1)
  {
    v30 = MEMORY[0x277CC9940];
  }

  else
  {
    if (v29)
    {
      v76 = v29;
      result = sub_264E25488();
      __break(1u);
      return result;
    }

    v30 = MEMORY[0x277CC9968];
  }

  (*(v74 + 104))(v28, *v30, v75);
  v31 = type metadata accessor for ActivityNavigationState(0);
  v32 = v1 + *(v31 + 20);
  v33 = v1 + *(v31 + 24);
  sub_264E23BC8();
  v34 = (*(v16 + 48))(v14, 1, v15);
  v71 = v28;
  if (v34 == 1)
  {
    sub_264D817BC(v14, &qword_27FFB1860, &qword_264E267E0);
    if (qword_27FFB1680 != -1)
    {
      swift_once();
    }

    v69 = v4;
    v35 = sub_264E23FC8();
    __swift_project_value_buffer(v35, qword_27FFB1C90);
    v36 = sub_264E23FA8();
    v37 = sub_264E252B8();
    v38 = os_log_type_enabled(v36, v37);
    v39 = v72;
    if (v38)
    {
      v40 = swift_slowAlloc();
      *v40 = 0;
      _os_log_impl(&dword_264D7D000, v36, v37, "Unable to calculate interval away from interior date using calendar. Assuming 7 days a week and 24-hour days for calculation.", v40, 2u);
      MEMORY[0x26674FCD0](v40, -1, -1);
    }

    v41 = *(v16 + 16);
    v42 = v68;
    v41(v68, v32, v15);
    v43 = (v16 + 8);
    v44 = (v74 + 8);
    sub_264E23A18();
    v51 = v66;
    v41(v66, v42, v15);
    v52 = v67;
    (*(v39 + 16))(v67, &v32[*(v70 + 20)], v73);
    v53 = v69;
    sub_264D9173C(v51, v52, v69);
    (*v43)(v42, v15);
    (*v44)(v71, v75);
    v54 = v53;
    v55 = v32;
    return sub_264D93A84(v54, v55);
  }

  (*(v16 + 32))(v24, v14, v15);
  v45 = *(v70 + 20);
  v46 = v72;
  v47 = v73;
  v48 = *(v72 + 16);
  v70 = v32;
  v64 = v45;
  v65 = v48;
  v48(v10, &v32[v45], v73);
  if (sub_264E238C8())
  {
    v69 = v4;
    v49 = v68;
    sub_264E23888();
    sub_264D93AE8(&qword_27FFB1868, MEMORY[0x277CC9578]);
    v50 = sub_264E25068();
    v63 = *(v16 + 8);
    v63(v49, v15);
    (*(v46 + 8))(v10, v47);
    if ((v50 & 1) == 0)
    {
      v57 = v69;
      v58 = *(v16 + 16);
      v58(v49, v24, v15);
      v59 = v66;
      v58(v66, v49, v15);
      v60 = v70;
      v61 = v67;
      v65(v67, v70 + v64, v73);
      sub_264D9173C(v59, v61, v57);
      v62 = v63;
      v63(v49, v15);
      v62(v24, v15);
      (*(v74 + 8))(v71, v75);
      v54 = v57;
      v55 = v60;
      return sub_264D93A84(v54, v55);
    }

    v63(v24, v15);
  }

  else
  {
    (*(v46 + 8))(v10, v47);
    (*(v16 + 8))(v24, v15);
  }

  return (*(v74 + 8))(v71, v75);
}

uint64_t static ActivityNavigationState.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 == *a2)
  {
    v2 = type metadata accessor for ActivityNavigationState(0);
    v3 = *(v2 + 20);
    if (sub_264E23A78())
    {
      v4 = *(type metadata accessor for ActivityNavigationState.DateAndBounds(0) + 20);
      if (sub_264E23878())
      {
        v5 = *(v2 + 24);

        JUMPOUT(0x26674DD10);
      }
    }
  }

  return 0;
}

uint64_t sub_264D9336C(void *a1, void *a2, uint64_t a3)
{
  if (*a1 == *a2)
  {
    v4 = *(a3 + 20);
    if (sub_264E23A78())
    {
      v5 = *(type metadata accessor for ActivityNavigationState.DateAndBounds(0) + 20);
      if (sub_264E23878())
      {
        v6 = *(a3 + 24);

        JUMPOUT(0x26674DD10);
      }
    }
  }

  return 0;
}

uint64_t sub_264D93474(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for ActivityNavigationState.DateAndBounds(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = sub_264E23C38();
    v13 = *(*(v12 - 8) + 48);
    v14 = a1 + *(a3 + 24);

    return v13(v14, a2, v12);
  }
}

uint64_t sub_264D9357C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for ActivityNavigationState.DateAndBounds(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    v14 = sub_264E23C38();
    v15 = *(*(v14 - 8) + 56);
    v16 = a1 + *(a4 + 24);

    return v15(v16, a2, a2, v14);
  }
}

void sub_264D9367C()
{
  type metadata accessor for STActivityMode(319);
  if (v0 <= 0x3F)
  {
    type metadata accessor for ActivityNavigationState.DateAndBounds(319);
    if (v1 <= 0x3F)
    {
      sub_264E23C38();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_264D9372C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_264E23AA8();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_264E238E8();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_264D93830(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_264E23AA8();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_264E238E8();
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_264D9392C()
{
  result = sub_264E23AA8();
  if (v1 <= 0x3F)
  {
    result = sub_264E238E8();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

uint64_t sub_264D93A14(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1860, &qword_264E267E0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_264D93A84(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ActivityNavigationState.DateAndBounds(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_264D93AE8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_264D93F40@<X0>(uint64_t (*a1)(char *)@<X0>, uint64_t a2@<X2>, uint64_t (*a3)(void)@<X3>, uint64_t (*a4)(void)@<X4>, uint64_t (*a5)(void)@<X5>, uint64_t (*a6)(void)@<X6>, uint64_t a7@<X8>)
{
  v29 = a6;
  v13 = a3(0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v18 = &v25 - v17;
  v19 = *(a2 + 16);
  if (v19)
  {
    v27 = v15;
    v28 = a7;
    v20 = a2 + ((*(v16 + 80) + 32) & ~*(v16 + 80));
    v26 = v16;
    v21 = *(v16 + 72);
    while (1)
    {
      sub_264D95F54(v20, v18, a4);
      v22 = a1(v18);
      if (v7)
      {
        return sub_264D95FBC(v18, a5);
      }

      if (v22)
      {
        break;
      }

      sub_264D95FBC(v18, a5);
      v20 += v21;
      if (!--v19)
      {
        v23 = 1;
        a7 = v28;
        goto LABEL_10;
      }
    }

    a7 = v28;
    sub_264D9827C(v18, v28, v29);
    v23 = 0;
LABEL_10:
    v16 = v26;
    v15 = v27;
  }

  else
  {
    v23 = 1;
  }

  return (*(v16 + 56))(a7, v23, 1, v15);
}

double ScreenTimeUsageAppIntentView.Model.weeklyChange.getter()
{
  v1 = v0 + *(type metadata accessor for ScreenTimeUsageAppIntentView.Model(0) + 36);

  return sub_264D94138(1, v1);
}

double sub_264D94138(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v51 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1880, &qword_264E26220);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v42 - v7;
  v50 = sub_264E238E8();
  v9 = *(v50 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v50);
  v49 = &v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1860, &qword_264E267E0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v48 = &v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v42 - v16;
  v18 = sub_264E23AA8();
  v19 = *(v18 - 8);
  v20 = v19[8];
  MEMORY[0x28223BE20](v18);
  v22 = &v42 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v25 = &v42 - v24;
  MEMORY[0x28223BE20](v26);
  v28 = &v42 - v27;
  v29 = 0.0;
  if (a1 == 1)
  {
    v46 = v9;
    _s16ScreenTimeUICore11DetailChartV4HourV2id10Foundation4DateVvg_0();
    v47 = v3;
    Calendar.startOfWeek(containing:)(v25, v17);
    v30 = v19[1];
    v30(v25, v18);
    v44 = v19[6];
    if (v44(v17, 1, v18) == 1)
    {
      v31 = &qword_27FFB1860;
      v32 = &qword_264E267E0;
      v33 = v17;
LABEL_9:
      sub_264D817BC(v33, v31, v32);
      return v29;
    }

    v43 = v19[4];
    v43(v28, v17, v18);
    v45 = v30;
    _s16ScreenTimeUICore11DetailChartV4HourV2id10Foundation4DateVvg_0();
    Calendar.weeksPreceding(date:weekCount:)(v25, 2, v8);
    v34 = v45;
    v45(v25, v18);
    v35 = v46;
    if ((*(v46 + 48))(v8, 1, v50) == 1)
    {
      v34(v28, v18);
      v31 = &qword_27FFB1880;
      v32 = &qword_264E26220;
LABEL_8:
      v33 = v8;
      goto LABEL_9;
    }

    (*(v35 + 32))();
    _s16ScreenTimeUICore11DetailChartV4HourV2id10Foundation4DateVvg_0();
    v8 = v48;
    Calendar.startOfWeek(containing:)(v25, v48);
    v36 = v45;
    v45(v25, v18);
    if (v44(v8, 1, v18) == 1)
    {
      (*(v35 + 8))(v49, v50);
      v36(v28, v18);
      v31 = &qword_27FFB1860;
      v32 = &qword_264E267E0;
      goto LABEL_8;
    }

    v43(v22, v8, v18);
    sub_264D979A4(v28, 0);
    v39 = v38;
    sub_264D979A4(v22, 0);
    v41 = v40;
    v36(v22, v18);
    (*(v35 + 8))(v49, v50);
    v36(v28, v18);
    if (v41 > 0.0)
    {
      return (v39 - v41) / v41;
    }
  }

  return v29;
}

uint64_t ScreenTimeUsageAppIntentView.Model.totalUsage.getter()
{
  v1 = v0 + *(type metadata accessor for ScreenTimeUsageAppIntentView.Model(0) + 36);

  return sub_264D94654(0, v1, 0);
}

uint64_t sub_264D94654(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v36 = a1;
  v37 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1860, &qword_264E267E0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v33 - v7;
  v35 = sub_264E238E8();
  v9 = *(v35 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v35);
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = sub_264E23AA8();
  v13 = *(v38 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v38);
  v16 = &v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v34 = &v33 - v18;
  MEMORY[0x28223BE20](v19);
  v21 = &v33 - v20;
  if (a3)
  {
    v22 = a3;
  }

  else
  {
    v22 = *(v3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1D90, &unk_264E268E0) + 36));
  }

  if (v36 == 1)
  {

    _s16ScreenTimeUICore11DetailChartV4HourV2id10Foundation4DateVvg_0();
    Calendar.startOfWeek(containing:)(v16, v8);
    v23 = *(v13 + 8);
    v24 = v38;
    v23(v16, v38);
    if ((*(v13 + 48))(v8, 1, v24) == 1)
    {
      return sub_264D817BC(v8, &qword_27FFB1860, &qword_264E267E0);
    }

    else
    {
      v30 = v34;
      (*(v13 + 32))(v34, v8, v24);
      v31 = a3;
      if (!a3)
      {
        v31 = *(v3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1D90, &unk_264E268E0) + 36));
      }

      v32 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1D90, &unk_264E268E0) + 44);

      sub_264DD26C0(v31, v30, v3, v3 + v32);

      return (v23)(v30, v24);
    }
  }

  else if (v36)
  {
    result = sub_264E253E8();
    __break(1u);
  }

  else
  {

    sub_264E23858();
    _s16ScreenTimeUICore11DetailChartV4HourV2id10Foundation4DateVvg_0();
    (*(v9 + 8))(v12, v35);
    if (*(v22 + 16))
    {
      v26 = sub_264D9D5F4(v21);
      v27 = v38;
      if (v28)
      {
        v29 = *(*(v22 + 56) + 8 * v26);
        (*(v13 + 8))(v21, v38);
      }

      else
      {

        return (*(v13 + 8))(v21, v27);
      }
    }

    else
    {

      return (*(v13 + 8))(v21, v38);
    }
  }

  return result;
}

uint64_t ScreenTimeUsageAppIntentView.Model.init(allActivityModel:interval:selectedDay:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v128 = a3;
  v135 = a2;
  v131 = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1CD8, &unk_264E267C0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v129 = &v128 - v7;
  v8 = type metadata accessor for UsageDetailChart.Model(0);
  v168 = *(v8 - 8);
  v169 = v8;
  v9 = *(v168 + 64);
  MEMORY[0x28223BE20](v8);
  v133 = &v128 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v130 = &v128 - v12;
  v166 = sub_264E23B98();
  v13 = *(v166 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v166);
  v165 = &v128 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v164 = sub_264E23B78();
  v187 = *(v164 - 8);
  v16 = *(v187 + 8);
  MEMORY[0x28223BE20](v164);
  v163 = &v128 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v162 = sub_264E23B38();
  v18 = *(v162 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v162);
  v161 = &v128 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1CE0, &unk_264E26AE0);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21 - 8);
  v160 = &v128 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1C50, &unk_264E267D0);
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x28223BE20](v24 - 8);
  v159 = &v128 - v26;
  v158 = sub_264E23928();
  v27 = *(v158 - 8);
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v158);
  v157 = &v128 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v175 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1858, &unk_264E26200);
  v30 = *(*(v175 - 8) + 64);
  MEMORY[0x28223BE20](v175);
  v32 = &v128 - v31;
  v144 = sub_264E23C18();
  v33 = *(v144 - 8);
  v34 = *(v33 + 64);
  MEMORY[0x28223BE20](v144);
  v143 = &v128 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1860, &qword_264E267E0);
  v37 = *(*(v36 - 8) + 64);
  MEMORY[0x28223BE20](v36 - 8);
  v174 = &v128 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v39);
  v185 = &v128 - v40;
  MEMORY[0x28223BE20](v41);
  v188 = &v128 - v42;
  v43 = sub_264E23AA8();
  v134 = *(v43 - 8);
  v44 = *(v134 + 64);
  MEMORY[0x28223BE20](v43);
  v167 = &v128 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v46);
  v186 = &v128 - v47;
  MEMORY[0x28223BE20](v48);
  v50 = &v128 - v49;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1CE8, &unk_264E267E8);
  v52 = *(*(v51 - 8) + 64);
  MEMORY[0x28223BE20](v51 - 8);
  v132 = &v128 - v53;
  v54 = type metadata accessor for UsageOverviewChart.Model(0);
  v55 = *(v54 - 8);
  v177 = v54;
  v178 = v55;
  v56 = *(v55 + 64);
  MEMORY[0x28223BE20](v54);
  v58 = &v128 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v59);
  v137 = &v128 - v60;
  result = type metadata accessor for AllActivityView.Model(0);
  v136 = result;
  v62 = *(result + 32);
  v138 = a1;
  v176 = *(a1 + v62);
  v173 = *(v176 + 16);
  if (v173)
  {
    v63 = 0;
    v172 = v176 + ((*(v178 + 80) + 32) & ~*(v178 + 80));
    v184 = (v134 + 8);
    v142 = (v33 + 104);
    v141 = (v33 + 8);
    v154 = (v18 + 104);
    v140 = *MEMORY[0x277CC99B8];
    v153 = (v187 + 104);
    v152 = (v13 + 104);
    v151 = *MEMORY[0x277CC9878];
    v150 = (v13 + 8);
    v149 = (v187 + 8);
    v148 = *MEMORY[0x277CC98F0];
    v147 = (v18 + 8);
    v146 = (v27 + 8);
    v145 = *MEMORY[0x277CC9900];
    v64 = (v134 + 16);
    v179 = (v134 + 56);
    v170 = (v134 + 48);
    v139 = (v134 + 32);
    v180 = v50;
    v187 = v58;
    v156 = v32;
    v155 = v43;
    v171 = (v134 + 16);
    while (1)
    {
      if (v63 >= *(v176 + 16))
      {
        __break(1u);
        goto LABEL_30;
      }

      v68 = *(v178 + 72);
      v183 = v63;
      sub_264D95F54(v172 + v68 * v63, v58, type metadata accessor for UsageOverviewChart.Model);
      sub_264E23A98();
      v69 = v177[6];
      v70 = v186;
      sub_264E23AF8();
      v71 = sub_264E23A78();
      v182 = *v184;
      v182(v70, v43);
      v181 = v64 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
      if ((v71 & 1) == 0)
      {
        goto LABEL_10;
      }

      v72 = v143;
      v73 = v144;
      (*v142)(v143, v140, v144);
      v74 = sub_264E23C28();
      v75 = v72;
      v58 = v187;
      (*v141)(v75, v73);
      if (v74 == sub_264E23B18())
      {
        v64 = v171;
        v76 = *v171;
        v77 = v188;
        (*v171)(v188, v50, v43);
        (*v179)(v77, 0, 1, v43);
      }

      else
      {
LABEL_10:
        v78 = sub_264E23C38();
        (*(*(v78 - 8) + 56))(v159, 1, 1, v78);
        v79 = sub_264E23C48();
        (*(*(v79 - 8) + 56))(v160, 1, 1, v79);
        sub_264E23B18();
        v80 = v157;
        sub_264E23918();
        v81 = v161;
        v82 = v162;
        (*v154)(v161, v151, v162);
        v83 = v163;
        v84 = v164;
        (*v153)(v163, v148, v164);
        v85 = v165;
        v86 = v166;
        (*v152)(v165, v145, v166);
        sub_264E23C08();
        (*v150)(v85, v86);
        v87 = v83;
        v58 = v187;
        (*v149)(v87, v84);
        v88 = v81;
        v43 = v155;
        v89 = v82;
        v32 = v156;
        (*v147)(v88, v89);
        (*v146)(v80, v158);
        v64 = v171;
        v76 = *v171;
      }

      v90 = v185;
      v76(v185, v58, v43);
      (*v179)(v90, 0, 1, v43);
      v91 = *(v175 + 48);
      sub_264D81744(v188, v32, &qword_27FFB1860, &qword_264E267E0);
      sub_264D81744(v90, &v32[v91], &qword_27FFB1860, &qword_264E267E0);
      v92 = *v170;
      if ((*v170)(v32, 1, v43) == 1)
      {
        break;
      }

      sub_264D81744(v32, v174, &qword_27FFB1860, &qword_264E267E0);
      if (v92(&v32[v91], 1, v43) == 1)
      {
        sub_264D817BC(v185, &qword_27FFB1860, &qword_264E267E0);
        sub_264D817BC(v188, &qword_27FFB1860, &qword_264E267E0);
        v50 = v180;
        v93 = v182;
        v182(v180, v43);
        v93(v174, v43);
        v67 = v183;
LABEL_4:
        sub_264D817BC(v32, &qword_27FFB1858, &unk_264E26200);
        goto LABEL_5;
      }

      v94 = v186;
      (*v139)(v186, &v32[v91], v43);
      sub_264D98234(&qword_27FFB1868, MEMORY[0x277CC9578]);
      v95 = v174;
      v96 = sub_264E25068();
      v97 = v182;
      v182(v94, v43);
      sub_264D817BC(v185, &qword_27FFB1860, &qword_264E267E0);
      sub_264D817BC(v188, &qword_27FFB1860, &qword_264E267E0);
      v50 = v180;
      v97(v180, v43);
      v97(v95, v43);
      sub_264D817BC(v32, &qword_27FFB1860, &qword_264E267E0);
      v67 = v183;
      if (v96)
      {
        goto LABEL_19;
      }

LABEL_5:
      v63 = v67 + 1;
      result = sub_264D95FBC(v58, type metadata accessor for UsageOverviewChart.Model);
      if (v173 == v63)
      {
        goto LABEL_16;
      }
    }

    sub_264D817BC(v185, &qword_27FFB1860, &qword_264E267E0);
    sub_264D817BC(v188, &qword_27FFB1860, &qword_264E267E0);
    v65 = v180;
    v182(v180, v43);
    v66 = v92(&v32[v91], 1, v43);
    v50 = v65;
    v67 = v183;
    if (v66 == 1)
    {
      sub_264D817BC(v32, &qword_27FFB1860, &qword_264E267E0);
LABEL_19:
      v103 = v132;
      sub_264D9827C(v58, v132, type metadata accessor for UsageOverviewChart.Model);
      (*(v178 + 56))(v103, 0, 1, v177);
      result = sub_264D9827C(v103, v137, type metadata accessor for UsageOverviewChart.Model);
      goto LABEL_20;
    }

    goto LABEL_4;
  }

LABEL_16:
  v98 = v177;
  v99 = v178;
  v100 = v132;
  (*(v178 + 56))(v132, 1, 1, v177);
  v101 = v137;
  _s16ScreenTimeUICore11DetailChartV4HourV2id10Foundation4DateVvg_0();
  v102 = v101 + v98[6];
  sub_264E23BF8();
  *(v101 + v98[7]) = 3;
  *(v101 + v98[5]) = MEMORY[0x277D84F90];
  result = (*(v99 + 48))(v100, 1, v98);
  if (result != 1)
  {
    result = sub_264D817BC(v100, &qword_27FFB1CE8, &unk_264E267E8);
  }

LABEL_20:
  v104 = *(v138 + *(v136 + 36));
  v105 = *(v104 + 16);
  v106 = v133;
  if (v105)
  {
    v107 = 0;
    v108 = (v134 + 8);
    v109 = v186;
    v110 = v167;
    while (v107 < *(v104 + 16))
    {
      sub_264D95F54(v104 + ((*(v168 + 80) + 32) & ~*(v168 + 80)) + *(v168 + 72) * v107, v106, type metadata accessor for UsageDetailChart.Model);
      sub_264E23A98();
      v111 = v106 + v169[6];
      sub_264E23AF8();
      v112 = sub_264E23A78();
      v113 = *v108;
      (*v108)(v110, v43);
      v113(v109, v43);
      if (v112)
      {
        sub_264D817BC(v128, &qword_27FFB1870, &unk_264E26210);
        v120 = v129;
        sub_264D9827C(v106, v129, type metadata accessor for UsageDetailChart.Model);
        (*(v168 + 56))(v120, 0, 1, v169);
        v117 = v130;
        sub_264D9827C(v120, v130, type metadata accessor for UsageDetailChart.Model);
        v118 = v135;
        goto LABEL_28;
      }

      ++v107;
      result = sub_264D95FBC(v106, type metadata accessor for UsageDetailChart.Model);
      if (v105 == v107)
      {
        goto LABEL_25;
      }
    }

LABEL_30:
    __break(1u);
  }

  else
  {
LABEL_25:
    v114 = v168;
    v115 = v169;
    v116 = v129;
    (*(v168 + 56))(v129, 1, 1, v169);
    v117 = v130;
    v118 = v135;
    _s16ScreenTimeUICore11DetailChartV4HourV2id10Foundation4DateVvg_0();
    v119 = v117 + v115[6];
    sub_264E23BF8();
    sub_264D817BC(v128, &qword_27FFB1870, &unk_264E26210);
    *(v117 + v115[7]) = 0x40BC200000000000;
    *(v117 + v115[8]) = 3;
    *(v117 + v115[5]) = MEMORY[0x277D84F90];
    if ((*(v114 + 48))(v116, 1, v115) != 1)
    {
      sub_264D817BC(v116, &qword_27FFB1CD8, &unk_264E267C0);
    }

LABEL_28:
    v121 = v136;
    v122 = v138;
    v123 = v131;
    sub_264D95F54(v138 + *(v136 + 28), v131, type metadata accessor for UsageHeaderView.Model);
    v124 = *(v121 + 40);
    v125 = type metadata accessor for ScreenTimeUsageAppIntentView.Model(0);
    sub_264D95F54(v122 + v124, v123 + v125[7], type metadata accessor for CategoriesLegendView.Model);
    sub_264D95F54(v122 + *(v121 + 44), v123 + v125[8], type metadata accessor for UsageChartFooterView.Model);
    sub_264D95FBC(v122, type metadata accessor for AllActivityView.Model);
    sub_264D9827C(v137, v123 + v125[5], type metadata accessor for UsageOverviewChart.Model);
    sub_264D9827C(v117, v123 + v125[6], type metadata accessor for UsageDetailChart.Model);
    v126 = v125[9];
    v127 = sub_264E238E8();
    return (*(*(v127 - 8) + 32))(v123 + v126, v118, v127);
  }

  return result;
}

uint64_t sub_264D95F54(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_264D95FBC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t ScreenTimeUsageAppIntentView.init(model:mode:selectedDay:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for ScreenTimeUsageAppIntentView.Model(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = v18 - v13;
  sub_264D95F54(a1, v18 - v13, type metadata accessor for ScreenTimeUsageAppIntentView.Model);
  sub_264D95F54(v14, v11, type metadata accessor for ScreenTimeUsageAppIntentView.Model);
  sub_264E24D78();
  sub_264D95FBC(v14, type metadata accessor for ScreenTimeUsageAppIntentView.Model);
  v15 = type metadata accessor for ScreenTimeUsageAppIntentView(0);
  v16 = *(v15 + 20);
  v18[1] = a2;
  type metadata accessor for STActivityMode(0);
  sub_264E24D78();
  sub_264D95FBC(a1, type metadata accessor for ScreenTimeUsageAppIntentView.Model);
  *(a4 + v16) = v19;
  return sub_264D90E64(a3, a4 + *(v15 + 24), &qword_27FFB1870, &unk_264E26210);
}

uint64_t ScreenTimeUsageAppIntentView.body.getter@<X0>(uint64_t a1@<X8>)
{
  *a1 = sub_264E24828();
  *(a1 + 8) = 0x4024000000000000;
  *(a1 + 16) = 0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1CF0, &qword_264E267F8);
  return sub_264D9620C(v1, a1 + *(v3 + 44));
}

uint64_t sub_264D9620C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v122 = a2;
  v120 = type metadata accessor for CategoriesLegendView(0);
  v3 = *(*(v120 - 8) + 64);
  MEMORY[0x28223BE20](v120);
  v123 = &v95 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v121 = &v95 - v6;
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1860, &qword_264E267E0);
  v7 = *(*(v102 - 8) + 64);
  MEMORY[0x28223BE20](v102);
  v101 = &v95 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v100 = &v95 - v10;
  v103 = type metadata accessor for UsageOverviewChart(0);
  v11 = *(*(v103 - 8) + 64);
  MEMORY[0x28223BE20](v103);
  v104 = &v95 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1D40, &qword_264E268B0);
  v13 = *(*(v118 - 8) + 64);
  MEMORY[0x28223BE20](v118);
  v105 = &v95 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v106 = &v95 - v16;
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1D48, &qword_264E268B8);
  v17 = *(*(v114 - 8) + 64);
  MEMORY[0x28223BE20](v114);
  v115 = &v95 - v18;
  v96 = type metadata accessor for UsageDetailChart(0);
  v19 = *(*(v96 - 8) + 64);
  MEMORY[0x28223BE20](v96);
  v97 = &v95 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1D50, &qword_264E268C0);
  v21 = *(*(v113 - 8) + 64);
  MEMORY[0x28223BE20](v113);
  v98 = &v95 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v99 = &v95 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1D58, &qword_264E268C8);
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x28223BE20](v25 - 8);
  v119 = &v95 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v126 = &v95 - v29;
  v30 = type metadata accessor for ScreenTimeUsageAppIntentView.Model(0);
  v31 = *(*(v30 - 8) + 64);
  MEMORY[0x28223BE20](v30);
  v33 = &v95 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v34);
  v36 = &v95 - v35;
  v37 = type metadata accessor for UsageHeaderView(0);
  v38 = (v37 - 8);
  v39 = *(*(v37 - 8) + 64);
  MEMORY[0x28223BE20](v37);
  v117 = &v95 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v41);
  v43 = (&v95 - v42);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1CF8, qword_264E26858);
  sub_264E24D88();
  sub_264D95F54(v36, v43, type metadata accessor for UsageHeaderView.Model);
  v116 = type metadata accessor for ScreenTimeUsageAppIntentView.Model;
  sub_264D95FBC(v36, type metadata accessor for ScreenTimeUsageAppIntentView.Model);
  v45 = (a1 + *(type metadata accessor for ScreenTimeUsageAppIntentView(0) + 20));
  v46 = a1;
  v47 = v45[1];
  v111 = *v45;
  *&v128 = v111;
  *(&v128 + 1) = v47;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1D60, &qword_264E268D0);
  sub_264E24D88();
  v107 = v127;
  sub_264E24D88();
  v124 = v30;
  v48 = *(v30 + 36);
  v49 = v38[8];
  v50 = sub_264E238E8();
  v51 = *(v50 - 8);
  v52 = *(v51 + 16);
  v110 = v50;
  v109 = v52;
  v108 = v51 + 16;
  (v52)(v43 + v49, &v33[v48]);
  v112 = v33;
  sub_264D95FBC(v33, v116);
  *(v43 + v38[7]) = v107;
  v53 = v38[9];
  v116 = v43;
  *(v43 + v53) = 0;
  *&v128 = v111;
  *(&v128 + 1) = v47;
  sub_264E24D88();
  v54 = v127;
  v125 = v36;
  v111 = v44;
  v107 = v46;
  sub_264E24D88();
  if (v54)
  {
    v55 = v125;
    v56 = v103;
    v57 = v104;
    sub_264D95F54(&v125[*(v124 + 20)], &v104[*(v103 + 20)], type metadata accessor for UsageOverviewChart.Model);
    sub_264D95FBC(v55, type metadata accessor for ScreenTimeUsageAppIntentView.Model);
    v58 = sub_264E23AA8();
    v59 = *(*(v58 - 8) + 56);
    v60 = v100;
    v59(v100, 1, 1, v58);
    v61 = v57 + v56[7];
    sub_264E24E88();
    sub_264D817BC(v60, &qword_27FFB1860, &qword_264E267E0);
    sub_264E23BF8();
    v62 = v56[6];
    v59(v60, 1, 1, v58);
    sub_264D81744(v60, v101, &qword_27FFB1860, &qword_264E267E0);
    sub_264E24D78();
    sub_264D817BC(v60, &qword_27FFB1860, &qword_264E267E0);
    *(v57 + v56[8]) = 0;
    v63 = (v57 + v56[9]);
    v127 = 0x40BC200000000000;
    sub_264E24D78();
    v64 = *(&v128 + 1);
    *v63 = v128;
    v63[1] = v64;
    v65 = (v57 + v56[10]);
    v127 = 0;
    sub_264E24D78();
    v66 = *(&v128 + 1);
    *v65 = v128;
    v65[1] = v66;
    sub_264E24F58();
    sub_264E24588();
    v67 = v105;
    sub_264D9827C(v57, v105, type metadata accessor for UsageOverviewChart);
    v68 = (v67 + *(v118 + 36));
    v69 = v133;
    v68[4] = v132;
    v68[5] = v69;
    v68[6] = v134;
    v70 = v129;
    *v68 = v128;
    v68[1] = v70;
    v71 = v131;
    v68[2] = v130;
    v68[3] = v71;
    v72 = &qword_27FFB1D40;
    v73 = &qword_264E268B0;
    v74 = v106;
    sub_264D90E64(v67, v106, &qword_27FFB1D40, &qword_264E268B0);
    sub_264D81744(v74, v115, &qword_27FFB1D40, &qword_264E268B0);
    swift_storeEnumTagMultiPayload();
    sub_264D980BC();
    sub_264D98178();
    v75 = v126;
    v76 = v124;
  }

  else
  {
    v76 = v124;
    v77 = v125;
    v78 = v97;
    sub_264D95F54(&v125[*(v124 + 24)], v97, type metadata accessor for UsageDetailChart.Model);
    sub_264D95FBC(v77, type metadata accessor for ScreenTimeUsageAppIntentView.Model);
    *(v78 + *(v96 + 20)) = 0;
    sub_264E24F58();
    sub_264E24588();
    v79 = v98;
    sub_264D9827C(v78, v98, type metadata accessor for UsageDetailChart);
    v80 = (v79 + *(v113 + 36));
    v81 = v133;
    v80[4] = v132;
    v80[5] = v81;
    v80[6] = v134;
    v82 = v129;
    *v80 = v128;
    v80[1] = v82;
    v83 = v131;
    v80[2] = v130;
    v80[3] = v83;
    v72 = &qword_27FFB1D50;
    v73 = &qword_264E268C0;
    v74 = v99;
    sub_264D90E64(v79, v99, &qword_27FFB1D50, &qword_264E268C0);
    sub_264D81744(v74, v115, &qword_27FFB1D50, &qword_264E268C0);
    swift_storeEnumTagMultiPayload();
    sub_264D980BC();
    sub_264D98178();
    v75 = v126;
  }

  sub_264E24858();
  sub_264D817BC(v74, v72, v73);
  v84 = v125;
  sub_264E24D88();
  v85 = v121;
  sub_264D95F54(v84 + *(v76 + 28), v121, type metadata accessor for CategoriesLegendView.Model);
  sub_264D95FBC(v84, type metadata accessor for ScreenTimeUsageAppIntentView.Model);
  v86 = v112;
  sub_264E24D88();
  v109(v85 + *(v120 + 20), v86 + *(v76 + 36), v110);
  sub_264D95FBC(v86, type metadata accessor for ScreenTimeUsageAppIntentView.Model);
  v87 = v116;
  v88 = v117;
  sub_264D95F54(v116, v117, type metadata accessor for UsageHeaderView);
  v89 = v75;
  v90 = v119;
  sub_264D81744(v89, v119, &qword_27FFB1D58, &qword_264E268C8);
  v91 = v123;
  sub_264D95F54(v85, v123, type metadata accessor for CategoriesLegendView);
  v92 = v122;
  sub_264D95F54(v88, v122, type metadata accessor for UsageHeaderView);
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1D88, &qword_264E268D8);
  sub_264D81744(v90, v92 + *(v93 + 48), &qword_27FFB1D58, &qword_264E268C8);
  sub_264D95F54(v91, v92 + *(v93 + 64), type metadata accessor for CategoriesLegendView);
  sub_264D95FBC(v85, type metadata accessor for CategoriesLegendView);
  sub_264D817BC(v126, &qword_27FFB1D58, &qword_264E268C8);
  sub_264D95FBC(v87, type metadata accessor for UsageHeaderView);
  sub_264D95FBC(v91, type metadata accessor for CategoriesLegendView);
  sub_264D817BC(v90, &qword_27FFB1D58, &qword_264E268C8);
  return sub_264D95FBC(v88, type metadata accessor for UsageHeaderView);
}

uint64_t sub_264D96F60@<X0>(uint64_t a1@<X8>)
{
  *a1 = sub_264E24828();
  *(a1 + 8) = 0x4024000000000000;
  *(a1 + 16) = 0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1CF0, &qword_264E267F8);
  return sub_264D9620C(v1, a1 + *(v3 + 44));
}

uint64_t sub_264D96FC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1CF8, qword_264E26858);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 2147483646)
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1870, &unk_264E26210);
    v13 = *(*(v12 - 8) + 48);
    v14 = a1 + *(a3 + 24);

    return v13(v14, a2, v12);
  }
}