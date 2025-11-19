double sub_1A4959CA4()
{
  v1 = v0;
  v2 = sub_1A5242D14();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = v13 - v7;
  type metadata accessor for LabelPill();
  sub_1A3D61808(v8);
  (*(v3 + 104))(v5, *MEMORY[0x1E69C21F0], v2);
  v9 = sub_1A5242D04();
  v10 = *(v3 + 8);
  v10(v5, v2);
  v10(v8, v2);
  if ((v9 & 1) == 0)
  {
    return 4.0;
  }

  v15 = *v1;
  v14 = 2;
  sub_1A40A51C0();
  sub_1A524C9C4();
  sub_1A524C9C4();
  if (v13[3] == v13[1] && v13[4] == v13[2])
  {

    return 8.0;
  }

  v12 = sub_1A524EAB4();

  result = 8.0;
  if ((v12 & 1) == 0)
  {
    return 4.0;
  }

  return result;
}

uint64_t sub_1A4959EA4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v46 = a2;
  sub_1A3EE213C();
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v7 = (&v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1A4958458(0, &qword_1EB145B50, sub_1A3EE213C, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v48 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v45 - v11;
  v13 = *(a1 + 1);
  v47 = &v45 - v11;
  if (v13)
  {
    v14 = sub_1A524B574();
    v15 = (v7 + *(v4 + 36));
    sub_1A4958458(0, &qword_1EB1277D8, MEMORY[0x1E69816E8], MEMORY[0x1E6980A08]);
    sub_1A495A398(v15 + *(v16 + 28));
    *v15 = swift_getKeyPath();
    *v7 = v14;
    sub_1A495C6CC(v7, v12, sub_1A3EE213C);
    (*(v5 + 56))(v12, 0, 1, v4);
  }

  else
  {
    (*(v5 + 56))(&v45 - v11, 1, 1, v4);
  }

  if (v13 == 2)
  {
    v17 = 0x676E6F4C5FLL;
  }

  else
  {
    v17 = 0x74726F68535FLL;
  }

  if (v13 == 2)
  {
    v18 = 0xE500000000000000;
  }

  else
  {
    v18 = 0xE600000000000000;
  }

  v65 = 0xD000000000000027;
  v66 = 0x80000001A53F41C0;
  MEMORY[0x1A5907B60](v17, v18);

  v19 = sub_1A524C634();

  v20 = PXMemoryCreationLocalizedString(v19);

  v21 = sub_1A524C674();
  v23 = v22;

  v65 = v21;
  v66 = v23;
  sub_1A3D5F9DC();
  v45 = sub_1A524A464();
  v25 = v24;
  v27 = v26;
  v29 = v28;
  sub_1A524BC84();
  sub_1A5248AD4();
  LOBYTE(v20) = v27 & 1;
  v76 = v27 & 1;
  v30 = MEMORY[0x1E69E6720];
  v32 = v47;
  v31 = v48;
  sub_1A495CE8C(v47, v48, &qword_1EB145B50, sub_1A3EE213C, MEMORY[0x1E69E6720]);
  v33 = v46;
  sub_1A495CE8C(v31, v46, &qword_1EB145B50, sub_1A3EE213C, v30);
  sub_1A495BDB0();
  v35 = (v33 + *(v34 + 48));
  v36 = v45;
  *&v56 = v45;
  *(&v56 + 1) = v25;
  LOBYTE(v57) = v27 & 1;
  *(&v57 + 1) = v29;
  v62 = v53;
  v63 = v54;
  v64 = v55;
  v60 = v51;
  v61 = v52;
  v37 = v49;
  v58 = v49;
  v59 = v50;
  v38 = v57;
  *v35 = v56;
  v35[1] = v38;
  v39 = v59;
  v40 = v60;
  v35[2] = v37;
  v35[3] = v39;
  v41 = v64;
  v35[7] = v63;
  v35[8] = v41;
  v42 = v62;
  v35[5] = v61;
  v35[6] = v42;
  v35[4] = v40;
  v43 = MEMORY[0x1E697EC00];
  sub_1A495CEFC(&v56, &v65, &unk_1EB124040, MEMORY[0x1E697EC00]);
  sub_1A495CF84(v32);
  v65 = v36;
  v66 = v25;
  v67 = v20;
  v68 = v29;
  v73 = v53;
  v74 = v54;
  v75 = v55;
  v69 = v49;
  v70 = v50;
  v71 = v51;
  v72 = v52;
  sub_1A495D010(&v65, &unk_1EB124040, v43);
  return sub_1A495CF84(v31);
}

uint64_t sub_1A495A398@<X0>(uint64_t a1@<X8>)
{
  v33 = a1;
  sub_1A495CD54();
  v31 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1A5249234();
  v29 = *(v5 - 8);
  v30 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1E69C2218];
  v9 = MEMORY[0x1E697DCB8];
  sub_1A4958458(0, &qword_1EB128AA0, MEMORY[0x1E69C2218], MEMORY[0x1E697DCB8]);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v28 - v11;
  v13 = sub_1A5242D14();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(type metadata accessor for LabelPill() + 24);
  v32 = v1;
  sub_1A495CE8C(&v1[v17], v12, &qword_1EB128AA0, v8, v9);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v18 = *(v14 + 32);
    v18(v16, v12, v13);
  }

  else
  {
    sub_1A524D254();
    v19 = sub_1A524A014();
    sub_1A5246DF4();

    sub_1A5249224();
    swift_getAtKeyPath();

    (*(v29 + 8))(v7, v30);
    v18 = *(v14 + 32);
  }

  v20 = *v32;
  v21 = *(v31 + 48);
  v18(v4, v16, v13);
  v4[v21] = v20;
  if (!v20)
  {
    (*(v14 + 8))(v4, v13);
    goto LABEL_9;
  }

  if (v20 != 1)
  {
    if ((*(v14 + 88))(v4, v13) != *MEMORY[0x1E69C21F0])
    {
      v22 = MEMORY[0x1E69816C0];
      goto LABEL_11;
    }

LABEL_9:
    v23 = *MEMORY[0x1E69816E0];
    v24 = sub_1A524B5B4();
    return (*(*(v24 - 8) + 104))(v33, v23, v24);
  }

  v22 = MEMORY[0x1E69816C8];
LABEL_11:
  v26 = *v22;
  v27 = sub_1A524B5B4();
  (*(*(v27 - 8) + 104))(v33, v26, v27);
  return (*(v14 + 8))(v4, v13);
}

uint64_t sub_1A495A7C0()
{
  v1 = v0;
  v2 = sub_1A5242D14();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v16[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v16[-v7];
  type metadata accessor for LabelPill();
  sub_1A3D61808(v8);
  v9 = *(v3 + 104);
  v9(v5, *MEMORY[0x1E69C21F0], v2);
  v10 = sub_1A5242D04();
  v11 = *(v3 + 8);
  v11(v5, v2);
  v11(v8, v2);
  if (v10)
  {
    v18 = v9;
    v19 = v1;
    v25 = *v1;
    v24 = 2;
    sub_1A40A51C0();
    sub_1A524C9C4();
    sub_1A524C9C4();
    if (v22 == v20 && v23 == v21)
    {

      sub_1A524A1E4();
LABEL_14:
      sub_1A524A184();
      v14 = sub_1A524A1F4();

      return v14;
    }

    v17 = sub_1A524EAB4();

    v9 = v18;
    v1 = v19;
    if (v17)
    {
      sub_1A524A1E4();
      goto LABEL_14;
    }
  }

  sub_1A3D61808(v8);
  v9(v5, *MEMORY[0x1E69C2210], v2);
  v12 = sub_1A5242D04();
  v11(v5, v2);
  v11(v8, v2);
  if ((v12 & 1) == 0)
  {
    goto LABEL_13;
  }

  v25 = *v1;
  v24 = 2;
  sub_1A40A51C0();
  sub_1A524C9C4();
  sub_1A524C9C4();
  if (v22 != v20 || v23 != v21)
  {
    v13 = sub_1A524EAB4();

    if (v13)
    {
      return sub_1A524A0F4();
    }

LABEL_13:
    sub_1A524A254();
    goto LABEL_14;
  }

  return sub_1A524A0F4();
}

uint64_t sub_1A495AB08()
{
  sub_1A495CD54();
  v25 = v1;
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v23 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1A5249234();
  v23 = *(v4 - 8);
  v24 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1E69C2218];
  v8 = MEMORY[0x1E697DCB8];
  sub_1A4958458(0, &qword_1EB128AA0, MEMORY[0x1E69C2218], MEMORY[0x1E697DCB8]);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v23 - v10;
  v12 = sub_1A5242D14();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(type metadata accessor for LabelPill() + 24);
  v26 = v0;
  sub_1A495CE8C(&v0[v16], v11, &qword_1EB128AA0, v7, v8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v17 = *(v13 + 32);
    v17(v15, v11, v12);
  }

  else
  {
    sub_1A524D254();
    v18 = sub_1A524A014();
    sub_1A5246DF4();

    sub_1A5249224();
    swift_getAtKeyPath();

    (*(v23 + 8))(v6, v24);
    v17 = *(v13 + 32);
  }

  v19 = *v26;
  v20 = *(v25 + 48);
  v17(v3, v15, v12);
  v3[v20] = v19;
  if (v19 < 2)
  {
    return (*(v13 + 8))(v3, v12, v21);
  }

  result = (*(v13 + 88))(v3, v12);
  v21.n128_u64[0] = 10.0;
  if (result != *MEMORY[0x1E69C21F0])
  {
    return (*(v13 + 8))(v3, v12, v21);
  }

  return result;
}

double sub_1A495AE90()
{
  sub_1A495CD54();
  v26 = v1;
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1A5249234();
  v24 = *(v4 - 8);
  v25 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1E69C2218];
  v8 = MEMORY[0x1E697DCB8];
  sub_1A4958458(0, &qword_1EB128AA0, MEMORY[0x1E69C2218], MEMORY[0x1E697DCB8]);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v24 - v10;
  v12 = sub_1A5242D14();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(type metadata accessor for LabelPill() + 24);
  v27 = v0;
  sub_1A495CE8C(&v0[v16], v11, &qword_1EB128AA0, v7, v8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v17 = *(v13 + 32);
    v17(v15, v11, v12);
  }

  else
  {
    sub_1A524D254();
    v18 = sub_1A524A014();
    sub_1A5246DF4();

    sub_1A5249224();
    swift_getAtKeyPath();

    (*(v24 + 8))(v6, v25);
    v17 = *(v13 + 32);
  }

  v19 = *v27;
  v20 = *(v26 + 48);
  v17(v3, v15, v12);
  v3[v20] = v19;
  if (!v19)
  {
    goto LABEL_8;
  }

  v21 = 6.0;
  if (v19 == 1)
  {
LABEL_9:
    (*(v13 + 8))(v3, v12);
    return v21;
  }

  v22 = (*(v13 + 88))(v3, v12);
  v21 = 10.0;
  if (v22 != *MEMORY[0x1E69C21F0])
  {
    v21 = 14.0;
    if (v22 != *MEMORY[0x1E69C2210])
    {
LABEL_8:
      v21 = 8.0;
      goto LABEL_9;
    }
  }

  return v21;
}

uint64_t sub_1A495B22C@<X0>(uint64_t *a1@<X8>)
{
  sub_1A5248694();
  sub_1A524A044();
  sub_1A495D240();
  a1[3] = v2;
  a1[4] = sub_1A495BC54(&qword_1EB145CD8, sub_1A495D240);
  __swift_allocate_boxed_opaque_existential_1(a1);
  sub_1A495D2D4();
  sub_1A495BC54(&qword_1EB145CD0, sub_1A495D2D4);
  sub_1A5247D14();
}

void sub_1A495B340(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v26 = a3;
  sub_1A495D694();
  v29 = v5;
  v27 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v28 = v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v8 = sub_1A52486A4();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v12 = *(v9 + 16);
  v12(v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v8, v11);
  v31 = sub_1A524C714();
  v32 = v13;
  sub_1A3D5F9DC();
  v24 = sub_1A524A464();
  v23 = v14;
  v16 = v15;
  v25 = v17;
  sub_1A524BC74();
  sub_1A52481F4();
  v22 = v16 & 1;
  *&v30 = a2;
  v21[2] = swift_getKeyPath();
  (v12)(v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v8);
  v18 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v19 = swift_allocObject();
  (*(v9 + 32))(v19 + v18, v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v8);
  v20 = MEMORY[0x1E69E62F8];
  sub_1A495D958(0, &qword_1EB120CD0, &type metadata for LemonadeShelvesLayoutStyle, MEMORY[0x1E69E62F8]);
  sub_1A495D780();
  sub_1A495DAB4(&qword_1EB120CC8, &qword_1EB120CD0, v20);
  sub_1A4168520();
  sub_1A495D848();
  sub_1A495CAC4(&qword_1EB145C88, sub_1A495D848, sub_1A495D9A8, sub_1A440C518);
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A495B928(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 33))
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

uint64_t sub_1A495B970(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

void sub_1A495B9D8()
{
  if (!qword_1EB145B20)
  {
    sub_1A4958458(255, &qword_1EB145AE8, sub_1A495835C, MEMORY[0x1E6981F40]);
    sub_1A495BA6C();
    v0 = sub_1A524B894();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB145B20);
    }
  }
}

unint64_t sub_1A495BA6C()
{
  result = qword_1EB145B28;
  if (!qword_1EB145B28)
  {
    sub_1A4958458(255, &qword_1EB145AE8, sub_1A495835C, MEMORY[0x1E6981F40]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB145B28);
  }

  return result;
}

void sub_1A495BB1C()
{
  sub_1A4958458(319, &qword_1EB124870, MEMORY[0x1E69C2218], MEMORY[0x1E697DCC0]);
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

unint64_t sub_1A495BBE4()
{
  result = qword_1EB1E20D0[0];
  if (!qword_1EB1E20D0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB1E20D0);
  }

  return result;
}

uint64_t sub_1A495BC54(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1A495BC9C()
{
  if (!qword_1EB145B30)
  {
    sub_1A495BD1C();
    sub_1A495BF04(255, &qword_1EB127820, &qword_1EB1276A0, MEMORY[0x1E6980F50]);
    v0 = sub_1A5248804();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB145B30);
    }
  }
}

void sub_1A495BD1C()
{
  if (!qword_1EB145B38)
  {
    sub_1A4958458(255, &qword_1EB145B40, sub_1A495BDB0, MEMORY[0x1E6981F40]);
    sub_1A495BE7C();
    v0 = sub_1A524B784();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB145B38);
    }
  }
}

void sub_1A495BDB0()
{
  if (!qword_1EB145B48)
  {
    sub_1A4958458(255, &qword_1EB145B50, sub_1A3EE213C, MEMORY[0x1E69E6720]);
    sub_1A439F1C4(255, &unk_1EB124040, MEMORY[0x1E6981148], MEMORY[0x1E697EC00], MEMORY[0x1E697E830]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB145B48);
    }
  }
}

unint64_t sub_1A495BE7C()
{
  result = qword_1EB145B58;
  if (!qword_1EB145B58)
  {
    sub_1A4958458(255, &qword_1EB145B40, sub_1A495BDB0, MEMORY[0x1E6981F40]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB145B58);
  }

  return result;
}

void sub_1A495BF04(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  if (!*a2)
  {
    sub_1A495D958(255, a3, a4, MEMORY[0x1E69E6720]);
    v5 = sub_1A5249F44();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1A495BF70()
{
  if (!qword_1EB145B60)
  {
    sub_1A495BC9C();
    sub_1A439F1C4(255, &qword_1EB127AD0, MEMORY[0x1E69815C0], MEMORY[0x1E6981568], MEMORY[0x1E6980480]);
    v0 = sub_1A5248804();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB145B60);
    }
  }
}

void sub_1A495C004()
{
  if (!qword_1EB145B70)
  {
    sub_1A495C190(255, &qword_1EB145B68, sub_1A495BF70, MEMORY[0x1E697EBC8]);
    sub_1A495BF04(255, &qword_1EB127790, &qword_1EB126D60, MEMORY[0x1E69E6530]);
    v0 = sub_1A5248804();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB145B70);
    }
  }
}

void sub_1A495C104(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1A5248804();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1A495C190(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), void (*a4)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    a4(255);
    v6 = sub_1A5248804();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_1A495C204()
{
  if (!qword_1EB122070)
  {
    sub_1A524BBF4();
    sub_1A524B984();
    sub_1A495BC54(&qword_1EB1214C0, MEMORY[0x1E6981998]);
    v0 = sub_1A5249FC4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB122070);
    }
  }
}

void sub_1A495C2C0()
{
  if (!qword_1EB145B98)
  {
    sub_1A495C190(255, &qword_1EB145B90, sub_1A495C168, sub_1A495C204);
    v0 = sub_1A5248804();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB145B98);
    }
  }
}

void sub_1A495C378()
{
  if (!qword_1EB145BA8)
  {
    sub_1A495C350(255);
    sub_1A4958458(255, &qword_1EB127890, MEMORY[0x1E697DBD0], MEMORY[0x1E6980A08]);
    v0 = sub_1A5248804();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB145BA8);
    }
  }
}

void sub_1A495C410(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  if (!*a2)
  {
    sub_1A4958458(255, a3, a4, MEMORY[0x1E6981F40]);
    v5 = sub_1A52483B4();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

__n128 sub_1A495C48C@<Q0>(uint64_t a1@<X8>)
{
  v2 = sub_1A524BC74();
  v4 = v3;
  v5 = sub_1A524B3D4();
  KeyPath = swift_getKeyPath();
  v7 = swift_getKeyPath();

  sub_1A3D35B8C(KeyPath, 0);
  sub_1A3D35B8C(v7, 0);
  sub_1A3C53AEC(KeyPath, 0);
  sub_1A3C53AEC(v7, 0);

  sub_1A3D35B8C(KeyPath, 0);
  sub_1A3D35B8C(v7, 0);

  sub_1A3C53AEC(KeyPath, 0);
  sub_1A3C53AEC(v7, 0);
  sub_1A524BC74();
  sub_1A52481F4();
  *&v20[7] = v21;
  *&v20[23] = v22;
  *&v20[39] = v23;
  sub_1A495C190(0, &qword_1EB145CF8, sub_1A495E178, sub_1A3E42C88);
  v9 = (a1 + *(v8 + 36));
  v10 = *(sub_1A5248A14() + 20);
  v11 = *MEMORY[0x1E697F468];
  v12 = sub_1A52494A4();
  (*(*(v12 - 8) + 104))(&v9[v10], v11, v12);
  __asm { FMOV            V0.2D, #15.0 }

  *v9 = _Q0;
  sub_1A3E42C88();
  *&v9[*(v18 + 36)] = 256;
  *(a1 + 57) = *v20;
  *a1 = v2;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = 0;
  *(a1 + 32) = KeyPath;
  *(a1 + 40) = 0;
  *(a1 + 48) = v7;
  *(a1 + 56) = 0;
  *(a1 + 73) = *&v20[16];
  result = *&v20[32];
  *(a1 + 89) = *&v20[32];
  *(a1 + 104) = *(&v23 + 1);
  return result;
}

uint64_t sub_1A495C6CC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A495C734(uint64_t a1, uint64_t a2, unint64_t *a3, void (*a4)(uint64_t), void (*a5)(uint64_t))
{
  sub_1A495C190(0, a3, a4, a5);
  (*(*(v7 - 8) + 32))(a2, a1, v7);
  return a2;
}

unint64_t sub_1A495C838()
{
  result = qword_1EB145BD0;
  if (!qword_1EB145BD0)
  {
    sub_1A495C190(255, &qword_1EB145B90, sub_1A495C168, sub_1A495C204);
    sub_1A495C97C(&qword_1EB145BD8, sub_1A495C168, sub_1A495C948);
    sub_1A495BC54(&qword_1EB122078, sub_1A495C204);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB145BD0);
  }

  return result;
}

uint64_t sub_1A495C97C(unint64_t *a1, void (*a2)(uint64_t), void (*a3)(void))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    a3();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1A495CA00()
{
  result = qword_1EB145BE8;
  if (!qword_1EB145BE8)
  {
    sub_1A495C0B4(255);
    sub_1A495CAC4(&qword_1EB145BF0, sub_1A495C004, sub_1A495CB50, sub_1A400FBC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB145BE8);
  }

  return result;
}

uint64_t sub_1A495CAC4(unint64_t *a1, void (*a2)(uint64_t), void (*a3)(void), void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    a3();
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1A495CB50()
{
  result = qword_1EB145BF8;
  if (!qword_1EB145BF8)
  {
    sub_1A495C190(255, &qword_1EB145B68, sub_1A495BF70, MEMORY[0x1E697EBC8]);
    sub_1A495CAC4(&qword_1EB145C00, sub_1A495BF70, sub_1A495CC44, sub_1A3F33024);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB145BF8);
  }

  return result;
}

unint64_t sub_1A495CC44()
{
  result = qword_1EB145C08;
  if (!qword_1EB145C08)
  {
    sub_1A495BC9C();
    sub_1A495BC54(&qword_1EB145C10, sub_1A495BD1C);
    sub_1A3F96350();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB145C08);
  }

  return result;
}

uint64_t sub_1A495CCF4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1A495CD54()
{
  if (!qword_1EB145C18)
  {
    sub_1A5242D14();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB145C18);
    }
  }
}

uint64_t sub_1A495CDBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(char *))
{
  v8 = a5(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v13 - v9;
  (*(v11 + 16))(&v13 - v9, a1);
  return a6(v10);
}

uint64_t sub_1A495CE8C(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t, uint64_t))
{
  sub_1A4958458(0, a3, a4, a5);
  (*(*(v7 - 8) + 16))(a2, a1, v7);
  return a2;
}

uint64_t sub_1A495CEFC(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4)
{
  sub_1A439F1C4(0, a3, MEMORY[0x1E6981148], a4, MEMORY[0x1E697E830]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1A495CF84(uint64_t a1)
{
  sub_1A4958458(0, &qword_1EB145B50, sub_1A3EE213C, MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1A495D010(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  sub_1A439F1C4(0, a2, MEMORY[0x1E6981148], a3, MEMORY[0x1E697E830]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_1A495D08C(uint64_t a1@<X8>)
{
  v3 = *(v1 + 24);
  *a1 = sub_1A524BC74();
  *(a1 + 8) = v4;
  *(a1 + 16) = 0;
  *(a1 + 24) = 1;
  *(a1 + 32) = 0;
  *(a1 + 40) = 1;
  sub_1A495DCBC();
  swift_getKeyPath();
  *(swift_allocObject() + 16) = v3;
  sub_1A4958458(0, &qword_1EB145C38, MEMORY[0x1E697E730], MEMORY[0x1E69E62F8]);
  sub_1A495D43C();
  sub_1A495DB8C();
  sub_1A495BC54(&qword_1EB145CB8, MEMORY[0x1E697E730]);
  sub_1A495BC54(&qword_1EB145CC8, sub_1A495D43C);
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

void sub_1A495D240()
{
  if (!qword_1EB145C20)
  {
    sub_1A495D2D4();
    sub_1A495BC54(&qword_1EB145CD0, sub_1A495D2D4);
    v0 = sub_1A5247D04();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB145C20);
    }
  }
}

void sub_1A495D2D4()
{
  if (!qword_1EB145C28)
  {
    sub_1A495D338();
    sub_1A495DC14();
    v0 = sub_1A524A2B4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB145C28);
    }
  }
}

void sub_1A495D338()
{
  if (!qword_1EB145C30)
  {
    sub_1A4958458(255, &qword_1EB145C38, MEMORY[0x1E697E730], MEMORY[0x1E69E62F8]);
    sub_1A52486A4();
    sub_1A495D43C();
    sub_1A495DB8C();
    sub_1A495BC54(&qword_1EB145CB8, MEMORY[0x1E697E730]);
    v0 = sub_1A524B9D4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB145C30);
    }
  }
}

void sub_1A495D43C()
{
  if (!qword_1EB145C40)
  {
    sub_1A495D4D0();
    sub_1A495BC54(&qword_1EB145CA8, sub_1A495D4D0);
    v0 = sub_1A524BA04();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB145C40);
    }
  }
}

void sub_1A495D4D0()
{
  if (!qword_1EB145C48)
  {
    sub_1A495D564();
    sub_1A495BC54(&qword_1EB145CA0, sub_1A495D564);
    v0 = sub_1A5247D04();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB145C48);
    }
  }
}

void sub_1A495D564()
{
  if (!qword_1EB145C50)
  {
    sub_1A4958458(255, &qword_1EB145C58, sub_1A495D5F8, MEMORY[0x1E6981F40]);
    sub_1A495DB04();
    v0 = sub_1A524B784();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB145C50);
    }
  }
}

void sub_1A495D5F8()
{
  if (!qword_1EB145C60)
  {
    sub_1A439F1C4(255, &qword_1EB140F90, MEMORY[0x1E6981148], MEMORY[0x1E697E048], MEMORY[0x1E697E830]);
    sub_1A495D694();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB145C60);
    }
  }
}

void sub_1A495D694()
{
  if (!qword_1EB145C68)
  {
    v0 = MEMORY[0x1E69E62F8];
    sub_1A495D958(255, &qword_1EB120CD0, &type metadata for LemonadeShelvesLayoutStyle, MEMORY[0x1E69E62F8]);
    sub_1A495D780();
    sub_1A495DAB4(&qword_1EB120CC8, &qword_1EB120CD0, v0);
    sub_1A4168520();
    v1 = sub_1A524B9D4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB145C68);
    }
  }
}

void sub_1A495D780()
{
  if (!qword_1EB145C70)
  {
    sub_1A495D848();
    sub_1A495CAC4(&qword_1EB145C88, sub_1A495D848, sub_1A495D9A8, sub_1A440C518);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB145C70);
    }
  }
}

void sub_1A495D848()
{
  if (!qword_1EB145C78)
  {
    sub_1A495D8D4();
    sub_1A495D958(255, &qword_1EB1277C8, MEMORY[0x1E69E6370], MEMORY[0x1E6980A08]);
    v0 = sub_1A5248804();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB145C78);
    }
  }
}

void sub_1A495D8D4()
{
  if (!qword_1EB145C80)
  {
    sub_1A495D958(255, &qword_1EB122138, &type metadata for LemonadeShelvesLayoutStyle, MEMORY[0x1E6980A08]);
    v0 = sub_1A5248804();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB145C80);
    }
  }
}

void sub_1A495D958(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_1A495D9A8()
{
  result = qword_1EB145C90;
  if (!qword_1EB145C90)
  {
    sub_1A495D8D4();
    sub_1A495DA60();
    sub_1A495DAB4(&qword_1EB122140, &qword_1EB122138, MEMORY[0x1E6980A08]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB145C90);
  }

  return result;
}

unint64_t sub_1A495DA60()
{
  result = qword_1EB1E2280[0];
  if (!qword_1EB1E2280[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB1E2280);
  }

  return result;
}

uint64_t sub_1A495DAB4(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(void, uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_1A495D958(255, a2, &type metadata for LemonadeShelvesLayoutStyle, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1A495DB04()
{
  result = qword_1EB145C98;
  if (!qword_1EB145C98)
  {
    sub_1A4958458(255, &qword_1EB145C58, sub_1A495D5F8, MEMORY[0x1E6981F40]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB145C98);
  }

  return result;
}

unint64_t sub_1A495DB8C()
{
  result = qword_1EB145CB0;
  if (!qword_1EB145CB0)
  {
    sub_1A4958458(255, &qword_1EB145C38, MEMORY[0x1E697E730], MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB145CB0);
  }

  return result;
}

unint64_t sub_1A495DC14()
{
  result = qword_1EB145CC0;
  if (!qword_1EB145CC0)
  {
    sub_1A495D338();
    sub_1A495BC54(&qword_1EB145CC8, sub_1A495D43C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB145CC0);
  }

  return result;
}

void sub_1A495DCBC()
{
  if (!qword_1EB145CE0)
  {
    sub_1A495D338();
    sub_1A40F0930();
    v0 = sub_1A52483B4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB145CE0);
    }
  }
}

uint64_t sub_1A495DD28@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 1;
  sub_1A495D43C();
  sub_1A524A024();
  sub_1A495D564();
  sub_1A495BC54(&qword_1EB145CA0, sub_1A495D564);
  return sub_1A5247D14();
}

void sub_1A495DDFC(uint64_t a1@<X8>)
{
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);
  *a1 = sub_1A5249314();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  sub_1A495C410(0, &qword_1EB145CE8, &qword_1EB145C58, sub_1A495D5F8);
  sub_1A495B340(v4, v3, a1 + *(v5 + 44));
}

uint64_t sub_1A495DE78()
{
  sub_1A52486A4();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1A40A51C0();
  sub_1A524C9C4();
  sub_1A524C9C4();
  if (v1 != v3 || v2 != v4)
  {
    sub_1A524EAB4();
  }

  sub_1A495D848();
  sub_1A495CAC4(&qword_1EB145C88, sub_1A495D848, sub_1A495D9A8, sub_1A440C518);
  sub_1A524AB74();
}

void sub_1A495E048()
{
  if (!qword_1EB145CF0)
  {
    sub_1A4958458(255, &qword_1EB145B00, sub_1A49584BC, MEMORY[0x1E6981F40]);
    sub_1A449A6BC();
    v0 = sub_1A52483B4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB145CF0);
    }
  }
}

uint64_t sub_1A495E0E4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_1A495E1A0()
{
  if (!qword_1EB145D08)
  {
    sub_1A4958458(255, &qword_1EB145D10, sub_1A495E234, MEMORY[0x1E6981F40]);
    sub_1A495E294();
    v0 = sub_1A524B8B4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB145D08);
    }
  }
}

void sub_1A495E234()
{
  if (!qword_1EB145D18)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB145D18);
    }
  }
}

unint64_t sub_1A495E294()
{
  result = qword_1EB145D20;
  if (!qword_1EB145D20)
  {
    sub_1A4958458(255, &qword_1EB145D10, sub_1A495E234, MEMORY[0x1E6981F40]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB145D20);
  }

  return result;
}

unint64_t sub_1A495E31C()
{
  result = qword_1EB145D28;
  if (!qword_1EB145D28)
  {
    sub_1A495C190(255, &qword_1EB145CF8, sub_1A495E178, sub_1A3E42C88);
    sub_1A495E3FC();
    sub_1A495BC54(&qword_1EB128A00, sub_1A3E42C88);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB145D28);
  }

  return result;
}

unint64_t sub_1A495E3FC()
{
  result = qword_1EB145D30;
  if (!qword_1EB145D30)
  {
    sub_1A495E178(255);
    sub_1A495BC54(&qword_1EB145D38, sub_1A495E1A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB145D30);
  }

  return result;
}

uint64_t sub_1A495E4AC()
{
  v0 = swift_allocObject();
  *(v0 + 16) = sub_1A495EEB8();
  return v0;
}

uint64_t sub_1A495E540()
{
  v4 = (*(*v0 + 144) + **(*v0 + 144));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1A495E650;

  return v4();
}

uint64_t sub_1A495E650(uint64_t a1)
{
  *(*v1 + 24) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1A495E750, 0, 0);
}

uint64_t sub_1A495E7E8()
{
  v1 = (*(**(v0 + 16) + 136))();
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1A495E8AC()
{
  v1 = (*(**(v0 + 16) + 152))();
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1A495E980()
{
  v4 = (*(**v0 + 144) + **(**v0 + 144));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1A3E64928;

  return v4();
}

uint64_t sub_1A495EAD8()
{
  v4 = (*(**v0 + 128) + **(**v0 + 128));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1A3E91FC0;

  return v4();
}

uint64_t sub_1A495EC30()
{
  v4 = (*(**v0 + 160) + **(**v0 + 160));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1A3E91FC0;

  return v4();
}

uint64_t sub_1A495EE14(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = (*(**a1 + 88))();
  v4 = (*(*v2 + 88))();
  v5 = sub_1A3C9DF9C(v3, v4);

  return v5 & 1;
}

uint64_t sub_1A495EEB8()
{
  v0 = type metadata accessor for LemonadeBookmark.CollectionIdentifier(0);
  MEMORY[0x1EEE9AC00](v0);
  v2 = (&v33 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1A495F8DC();
  v3 = *(type metadata accessor for LemonadeBookmark(0) - 8);
  v4 = *(v3 + 72);
  v5 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1A5347440;
  *v2 = 0x6D75626C41;
  v2[1] = 0xE500000000000000;
  v2[2] = 0x3FB999999999999ALL;
  v7 = swift_storeEnumTagMultiPayload();
  v8 = sub_1A3FA19AC(v7);
  sub_1A3F9DA60(v8, v9, 0, v2, v6 + v5);
  *v2 = 1885958740;
  v2[1] = 0xE400000000000000;
  v2[2] = 0x3FC999999999999ALL;
  v10 = swift_storeEnumTagMultiPayload();
  v11 = sub_1A3FA19AC(v10);
  sub_1A3F9DA60(v11, v12, 1, v2, v6 + v5 + v4);
  *v2 = 0x79726F6D654DLL;
  v2[1] = 0xE600000000000000;
  v2[2] = 0x3FD3333333333333;
  v13 = swift_storeEnumTagMultiPayload();
  v14 = sub_1A3FA19AC(v13);
  sub_1A3F9DA60(v14, v15, 2, v2, v6 + v5 + 2 * v4);
  *v2 = 0x795420616964654DLL;
  v2[1] = 0xEA00000000006570;
  v2[2] = 0x3FD999999999999ALL;
  v16 = swift_storeEnumTagMultiPayload();
  v17 = sub_1A3FA19AC(v16);
  sub_1A3F9DA60(v17, v18, 6, v2, v6 + v5 + 3 * v4);
  *v2 = 0x746E657645;
  v2[1] = 0xE500000000000000;
  v2[2] = 0x3FE0000000000000;
  v19 = swift_storeEnumTagMultiPayload();
  v20 = sub_1A3FA19AC(v19);
  sub_1A3F9DA60(v20, v21, 3, v2, v6 + v5 + 4 * v4);
  *v2 = 0x6E6F73726550;
  v2[1] = 0xE600000000000000;
  v2[2] = 0x3FE3333333333333;
  v22 = swift_storeEnumTagMultiPayload();
  v23 = sub_1A3FA19AC(v22);
  sub_1A3F9DA60(v23, v24, 4, v2, v6 + v5 + 5 * v4);
  *v2 = 0x72476C6169636F53;
  v2[1] = 0xEB0000000070756FLL;
  v2[2] = 0x3FE6666666666666;
  v25 = swift_storeEnumTagMultiPayload();
  v26 = sub_1A3FA19AC(v25);
  sub_1A3F9DA60(v26, v27, 5, v2, v6 + v5 + 6 * v4);
  v34 = v6;
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_1A52F8E10;
  *v2 = 7364941;
  v2[1] = 0xE300000000000000;
  v2[2] = 0x3FE999999999999ALL;
  v29 = swift_storeEnumTagMultiPayload();
  v30 = sub_1A3FA19AC(v29);
  sub_1A3F9DA60(v30, v31, 10, v2, v28 + v5);
  sub_1A43154FC(v28);
  return v34;
}

void sub_1A495F250(uint64_t a1)
{
  v2 = type metadata accessor for LemonadeBookmark.CollectionIdentifier(0);
  MEMORY[0x1EEE9AC00](v2);
  v4 = (v5 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5[1] = a1;
  sub_1A495F8DC();
  type metadata accessor for LemonadeBookmark(0);
  *(swift_allocObject() + 16) = xmmword_1A52FF950;
  *v4 = 0x736569666C6553;
  v4[1] = 0xE700000000000000;
  v4[2] = 0x3FD5C28F5C28F5C3;
  swift_storeEnumTagMultiPayload();
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A495F46C(uint64_t a1, uint64_t a2)
{
  result = sub_1A495F894(&qword_1EB145D40, a2, type metadata accessor for LemonadeMockBookmarksDataSource);
  *(a1 + 8) = result;
  return result;
}

uint64_t dispatch thunk of LemonadeBookmarksDataSource.defaultBookmarks.getter(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 16) + **(a2 + 16));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1A3E64928;

  return v7(a1, a2);
}

uint64_t dispatch thunk of LemonadeBookmarksDataSource.suggestedBookmarks.getter(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 32) + **(a2 + 32));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1A3E91FC0;

  return v7(a1, a2);
}

uint64_t dispatch thunk of LemonadeBookmarksDataSource.bookmarks.getter(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 48) + **(a2 + 48));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1A3E91FC0;

  return v7(a1, a2);
}

uint64_t sub_1A495F894(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1A495F8DC()
{
  if (!qword_1EB126280)
  {
    type metadata accessor for LemonadeBookmark(255);
    v0 = sub_1A524EA54();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB126280);
    }
  }
}

uint64_t sub_1A495F934()
{
  v0 = sub_1A5240BA4();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1A5241284();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v5 = sub_1A524C624();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v6 = sub_1A5240BB4();
  __swift_allocate_value_buffer(v6, qword_1EB1E2428);
  __swift_project_value_buffer(v6, qword_1EB1E2428);
  sub_1A524C5B4();
  sub_1A5241244();
  (*(v1 + 104))(v3, *MEMORY[0x1E6968DF0], v0);
  return sub_1A5240BC4();
}

uint64_t (*static DuplicateAssetsIntent.title.modify())()
{
  if (qword_1EB1E2420 != -1)
  {
    swift_once();
  }

  v0 = sub_1A5240BB4();
  __swift_project_value_buffer(v0, qword_1EB1E2428);
  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_1A495FC24@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EB1E2420 != -1)
  {
    swift_once();
  }

  v2 = sub_1A5240BB4();
  v3 = __swift_project_value_buffer(v2, qword_1EB1E2428);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t sub_1A495FCE4(uint64_t a1)
{
  if (qword_1EB1E2420 != -1)
  {
    swift_once();
  }

  v2 = sub_1A5240BB4();
  v3 = __swift_project_value_buffer(v2, qword_1EB1E2428);
  swift_beginAccess();
  (*(*(v2 - 8) + 24))(v3, a1, v2);
  return swift_endAccess();
}

uint64_t static DuplicateAssetsIntent.parameterSummary.getter()
{
  sub_1A496421C(0, &qword_1EB145D48, MEMORY[0x1E695A4A8]);
  MEMORY[0x1EEE9AC00](v0 - 8);
  sub_1A496421C(0, &qword_1EB145D58, MEMORY[0x1E695A4A0]);
  MEMORY[0x1EEE9AC00](v1);
  sub_1A495FF70();
  sub_1A5240314();
  sub_1A5240304();
  swift_getKeyPath();
  sub_1A495FFE8();
  sub_1A52402F4();

  sub_1A5240304();
  sub_1A5240324();
  return sub_1A52402E4();
}

unint64_t sub_1A495FF70()
{
  result = qword_1EB145D50;
  if (!qword_1EB145D50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB145D50);
  }

  return result;
}

void sub_1A495FFE8()
{
  if (!qword_1EB145D60)
  {
    sub_1A3F57E84();
    v0 = sub_1A524ED44();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB145D60);
    }
  }
}

uint64_t DuplicateAssetsIntent.init()@<X0>(uint64_t *a1@<X8>)
{
  v26 = a1;
  v1 = sub_1A5240334();
  v24 = *(v1 - 8);
  v25 = v1;
  MEMORY[0x1EEE9AC00](v1);
  v23 = v20 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1A5240184();
  MEMORY[0x1EEE9AC00](v3 - 8);
  v22 = v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4964280(0, &qword_1EB12B008, MEMORY[0x1E6968E10], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v21 = v20 - v6;
  v7 = sub_1A5240BA4();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1A5241284();
  MEMORY[0x1EEE9AC00](v11 - 8);
  v12 = sub_1A524C624();
  MEMORY[0x1EEE9AC00](v12 - 8);
  v20[0] = sub_1A5240BB4();
  v13 = *(v20[0] - 8);
  MEMORY[0x1EEE9AC00](v20[0]);
  sub_1A3F57E84();
  v20[1] = v14;
  sub_1A524C5B4();
  sub_1A5241244();
  v15 = *MEMORY[0x1E6968DF0];
  v16 = *(v8 + 104);
  v16(v10, v15, v7);
  sub_1A5240BC4();
  sub_1A524C5B4();
  sub_1A5241244();
  v16(v10, v15, v7);
  v17 = v21;
  sub_1A5240BC4();
  (*(v13 + 56))(v17, 0, 1, v20[0]);
  v27 = 0;
  sub_1A5240174();
  (*(v24 + 104))(v23, *MEMORY[0x1E695A500], v25);
  sub_1A3F587A8();
  sub_1A3F58824();
  result = sub_1A5240034();
  v19 = v26;
  *v26 = result;
  *(v19 + 8) = 0;
  return result;
}

uint64_t DuplicateAssetsIntent.perform()(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 40) = a1;
  *(v2 + 48) = v3;
  *(v2 + 25) = *(v1 + 8);
  sub_1A524CC54();
  *(v2 + 56) = sub_1A524CC44();
  v5 = sub_1A524CBC4();
  *(v2 + 64) = v5;
  *(v2 + 72) = v4;

  return MEMORY[0x1EEE6DFA0](sub_1A496058C, v5, v4);
}

uint64_t sub_1A496058C()
{
  v1 = *(v0 + 25);
  v2 = *(v0 + 48);
  *(v0 + 16) = v2;
  *(v0 + 24) = v1;
  sub_1A523FF44();
  v3 = *(*(v0 + 32) + 16);

  v4 = swift_task_alloc();
  *(v0 + 80) = v4;
  *(v4 + 16) = v2;
  *(v4 + 24) = v1;
  v5 = swift_task_alloc();
  *(v0 + 88) = v5;
  sub_1A495FF70();
  *v5 = v0;
  v5[1] = sub_1A47D2970;
  v6 = *(v0 + 40);

  return AppIntent.px_performWithLoggingAndAnalytics(intentName:category:count:_:)(v6, 0, 0, 0, 0, v3, 0, &unk_1A5376C68);
}

uint64_t sub_1A49606F4(uint64_t a1, uint64_t a2, char a3)
{
  *(v3 + 57) = a3;
  *(v3 + 96) = a1;
  *(v3 + 104) = a2;
  sub_1A524CC54();
  *(v3 + 112) = sub_1A524CC44();
  v5 = sub_1A524CBC4();
  *(v3 + 120) = v5;
  *(v3 + 128) = v4;

  return MEMORY[0x1EEE6DFA0](sub_1A4960790, v5, v4);
}

uint64_t sub_1A4960790()
{
  v1 = *(v0 + 57);
  v2 = *(v0 + 104);
  IsLaunchedToExecuteTests = PFProcessIsLaunchedToExecuteTests();
  sub_1A523FF44();
  v4 = *(v0 + 80);
  *(v0 + 136) = v4;
  *(v0 + 48) = v2;
  *(v0 + 56) = v1;
  sub_1A49642E4();
  v5 = sub_1A5240344();
  *(v0 + 144) = v5;
  *(v0 + 64) = v2;
  *(v0 + 72) = v1;
  sub_1A495FF70();
  v6 = AppIntent.px_intentName.getter();
  v8 = v7;
  *(v0 + 152) = v7;
  v9 = swift_task_alloc();
  *(v0 + 160) = v9;
  *v9 = v0;
  v9[1] = sub_1A49608E4;
  v10 = *(v0 + 57);
  v11 = *(v0 + 104);

  return sub_1A4960C64(v0 + 16, v4, v5, IsLaunchedToExecuteTests & v1, v6, v8, v11, v10);
}

uint64_t sub_1A49608E4(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 168) = v1;

  if (v1)
  {
    v5 = *(v4 + 144);

    v6 = *(v4 + 120);
    v7 = *(v4 + 128);
    v8 = sub_1A4960B50;
  }

  else
  {

    *(v4 + 176) = a1;
    v6 = *(v4 + 120);
    v7 = *(v4 + 128);
    v8 = sub_1A4960A3C;
  }

  return MEMORY[0x1EEE6DFA0](v8, v6, v7);
}

uint64_t sub_1A4960A3C()
{
  v1 = v0[22];

  v2 = v0[2];
  v3 = v0[3];
  v0[11] = v1;
  v0[4] = v2;
  v0[5] = v3;
  sub_1A3C2DF58(0, &qword_1EB12EEB8, &type metadata for AssetEntity, MEMORY[0x1E69E62F8]);
  sub_1A3F57F0C();
  sub_1A454AE30();
  sub_1A523FDC4();

  v4 = v0[1];

  return v4();
}

uint64_t sub_1A4960B50()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A4960BB4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1A3D60150;

  return sub_1A49606F4(a1, v4, v5);
}

uint64_t sub_1A4960C64(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  *(v8 + 209) = a8;
  *(v8 + 48) = a6;
  *(v8 + 56) = a7;
  *(v8 + 208) = a4;
  *(v8 + 32) = a3;
  *(v8 + 40) = a5;
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  v9 = sub_1A5246F24();
  *(v8 + 64) = v9;
  *(v8 + 72) = *(v9 - 8);
  *(v8 + 80) = swift_task_alloc();
  *(v8 + 88) = swift_task_alloc();
  *(v8 + 96) = swift_task_alloc();
  sub_1A524CC54();
  *(v8 + 104) = sub_1A524CC44();
  v11 = sub_1A524CBC4();
  *(v8 + 112) = v11;
  *(v8 + 120) = v10;

  return MEMORY[0x1EEE6DFA0](sub_1A4960D80, v11, v10);
}

void sub_1A4960D80()
{
  if (!(PXAppIntentsAssets(for:)(*(v0 + 24)) >> 62))
  {
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  sub_1A3C52C70(0, &qword_1EB1265D0);
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A49611DC(char a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 210) = a1;
  *(v4 + 184) = v1;

  v5 = *(v3 + 120);
  v6 = *(v3 + 112);
  if (v1)
  {
    v7 = sub_1A496191C;
  }

  else
  {
    v7 = sub_1A496173C;
  }

  return MEMORY[0x1EEE6DFA0](v7, v6, v5);
}

uint64_t sub_1A4961324()
{
  v2 = *v1;
  *(*v1 + 200) = v0;

  if (v0)
  {
    v3 = *(v2 + 112);
    v4 = *(v2 + 120);
    v5 = sub_1A49616A4;
  }

  else
  {

    v3 = *(v2 + 112);
    v4 = *(v2 + 120);
    v5 = sub_1A4961440;
  }

  return MEMORY[0x1EEE6DFA0](v5, v3, v4);
}

void sub_1A4961440()
{
  v1 = v0[21];

  v2 = [v1 createdAssets];
  if (v2)
  {
    v3 = v2;
    v4 = v0[17];
    v5 = v0[16];
    v6 = v0[11];
    v7 = v0[8];
    v8._rawValue = v0[3];
    static AssetEntity.entities(for:)(v2);
    PXAppIntentsDebugDescription(for:)(v8);
    v4(v6, v5, v7);
    v9 = sub_1A5246F04();
    v10 = sub_1A524D264();
    v11 = os_log_type_enabled(v9, v10);
    v12 = v0[19];
    v13 = v0[11];
    v15 = v0[8];
    if (v11)
    {
      v14 = swift_slowAlloc();
      swift_slowAlloc();
      *v14 = 136446210;
      sub_1A3C2EF94();
    }

    v12(v13, v15);
  }

  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A49616A4()
{
  v1 = v0[20];
  v2 = v0[21];

  v3 = v0[1];

  return v3();
}

uint64_t sub_1A496173C()
{
  (*(v0 + 136))(*(v0 + 80), *(v0 + 128), *(v0 + 64));
  v1 = sub_1A5246F04();
  v2 = sub_1A524D264();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = *(v0 + 210);
    v4 = swift_slowAlloc();
    *v4 = 67109120;
    *(v4 + 4) = v3;
    _os_log_impl(&dword_1A3C1C000, v1, v2, "Choice: { duplicate as live photos as stills: %{BOOL}d }", v4, 8u);
    MEMORY[0x1A590EEC0](v4, -1, -1);
  }

  v5 = *(v0 + 210);
  v6 = *(v0 + 168);
  v7 = *(v0 + 152);
  v8 = *(v0 + 80);
  v9 = *(v0 + 64);

  v7(v8, v9);
  [v6 setDuplicatesAsStill_];
  v10 = [*(v0 + 168) actionProgress];
  if (v10)
  {
    v11 = v10;
    [*(v0 + 32) addChild:v10 withPendingUnitCount:{objc_msgSend(*(v0 + 32), sel_totalUnitCount)}];
  }

  v12 = *(v0 + 168);
  v13 = v12;
  v14 = swift_task_alloc();
  *(v0 + 192) = v14;
  *v14 = v0;
  v14[1] = sub_1A4961324;
  v15 = *(v0 + 40);
  v16 = *(v0 + 48);

  return sub_1A4899AD4(v12, v15, v16);
}

uint64_t sub_1A496191C()
{
  v1 = v0[20];
  v2 = v0[21];

  v3 = v0[1];

  return v3();
}

uint64_t sub_1A49619B0(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v9 + 64) = a8;
  *(v9 + 72) = v8;
  *(v9 + 48) = a6;
  *(v9 + 56) = a7;
  *(v9 + 224) = a4;
  *(v9 + 32) = a3;
  *(v9 + 40) = a5;
  *(v9 + 16) = a1;
  *(v9 + 24) = a2;
  v10 = sub_1A5246F24();
  *(v9 + 80) = v10;
  *(v9 + 88) = *(v10 - 8);
  *(v9 + 96) = swift_task_alloc();
  *(v9 + 104) = swift_task_alloc();
  *(v9 + 112) = swift_task_alloc();
  sub_1A524CC54();
  *(v9 + 120) = sub_1A524CC44();
  v12 = sub_1A524CBC4();
  *(v9 + 128) = v12;
  *(v9 + 136) = v11;

  return MEMORY[0x1EEE6DFA0](sub_1A4961ACC, v12, v11);
}

void sub_1A4961ACC()
{
  if (!(PXAppIntentsAssets(for:)(*(v0 + 24)) >> 62))
  {
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  sub_1A3C52C70(0, &qword_1EB1265D0);
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A4961F28(char a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 225) = a1;
  *(v4 + 200) = v1;

  v5 = *(v3 + 136);
  v6 = *(v3 + 128);
  if (v1)
  {
    v7 = sub_1A49625D0;
  }

  else
  {
    v7 = sub_1A4962070;
  }

  return MEMORY[0x1EEE6DFA0](v7, v6, v5);
}

uint64_t sub_1A4962070()
{
  (*(v0 + 152))(*(v0 + 104), *(v0 + 144), *(v0 + 80));
  v1 = sub_1A5246F04();
  v2 = sub_1A524D264();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = *(v0 + 225);
    v4 = swift_slowAlloc();
    *v4 = 67109120;
    *(v4 + 4) = v3;
    _os_log_impl(&dword_1A3C1C000, v1, v2, "Choice: { duplicate as live photos as stills: %{BOOL}d }", v4, 8u);
    MEMORY[0x1A590EEC0](v4, -1, -1);
  }

  v5 = *(v0 + 225);
  v6 = *(v0 + 184);
  v7 = *(v0 + 168);
  v8 = *(v0 + 104);
  v9 = *(v0 + 80);

  v7(v8, v9);
  [v6 setDuplicatesAsStill_];
  v10 = [*(v0 + 184) actionProgress];
  if (v10)
  {
    v11 = v10;
    [*(v0 + 32) addChild:v10 withPendingUnitCount:{objc_msgSend(*(v0 + 32), sel_totalUnitCount)}];
  }

  v12 = *(v0 + 184);
  v13 = v12;
  v14 = swift_task_alloc();
  *(v0 + 208) = v14;
  *v14 = v0;
  v14[1] = sub_1A4962250;
  v15 = *(v0 + 40);
  v16 = *(v0 + 48);

  return sub_1A4899AD4(v12, v15, v16);
}

uint64_t sub_1A4962250()
{
  v2 = *v1;
  *(*v1 + 216) = v0;

  if (v0)
  {
    v3 = *(v2 + 128);
    v4 = *(v2 + 136);
    v5 = sub_1A4962664;
  }

  else
  {

    v3 = *(v2 + 128);
    v4 = *(v2 + 136);
    v5 = sub_1A496236C;
  }

  return MEMORY[0x1EEE6DFA0](v5, v3, v4);
}

void sub_1A496236C()
{
  v1 = v0[23];

  v2 = [v1 createdAssets];
  if (v2)
  {
    v3 = v2;
    v4 = v0[19];
    v5 = v0[18];
    v6 = v0[12];
    v7 = v0[10];
    v8._rawValue = v0[3];
    static AssetEntity.entities(for:)(v2);
    PXAppIntentsDebugDescription(for:)(v8);
    v4(v6, v5, v7);
    v9 = sub_1A5246F04();
    v10 = sub_1A524D264();
    v11 = os_log_type_enabled(v9, v10);
    v12 = v0[21];
    v13 = v0[12];
    v15 = v0[10];
    if (v11)
    {
      v14 = swift_slowAlloc();
      swift_slowAlloc();
      *v14 = 136446210;
      sub_1A3C2EF94();
    }

    v12(v13, v15);
  }

  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A49625D0()
{
  v1 = v0[22];
  v2 = v0[23];

  v3 = v0[1];

  return v3();
}

uint64_t sub_1A4962664()
{
  v1 = v0[22];
  v2 = v0[23];

  v3 = v0[1];

  return v3();
}

void (*DuplicateAssetsIntent.assets.modify(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_1A523FF34();
  return sub_1A3DB3FF0;
}

uint64_t sub_1A49627D4()
{
  sub_1A496421C(0, &qword_1EB145D48, MEMORY[0x1E695A4A8]);
  MEMORY[0x1EEE9AC00](v0 - 8);
  sub_1A496421C(0, &qword_1EB145D58, MEMORY[0x1E695A4A0]);
  MEMORY[0x1EEE9AC00](v1);
  sub_1A5240314();
  sub_1A5240304();
  swift_getKeyPath();
  sub_1A495FFE8();
  sub_1A52402F4();

  sub_1A5240304();
  sub_1A5240324();
  return sub_1A52402E4();
}

uint64_t sub_1A4962990(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1A3D60150;

  return DuplicateAssetsIntent.perform()(a1);
}

uint64_t sub_1A4962A2C(uint64_t a1)
{
  v2 = sub_1A495FF70();

  return MEMORY[0x1EEDB2D90](a1, v2);
}

void sub_1A4962A68(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (!sub_1A524E2B4())
  {
    goto LABEL_9;
  }

LABEL_3:
  if ((a1 & 0xC000000000000001) != 0)
  {
LABEL_10:
    v2 = MEMORY[0x1A59097F0](0, a1);
    goto LABEL_6;
  }

  if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
    goto LABEL_12;
  }

  v2 = *(a1 + 32);
LABEL_6:
  v3 = v2;
  v4 = [v2 photoLibrary];

  if (v4)
  {
    sub_1A4440428(a1);

    sub_1A524C674();
    v5 = objc_allocWithZone(MEMORY[0x1E69788E0]);
    v6 = v4;
    v7 = sub_1A524CA14();

    v8 = sub_1A524C634();

    v9 = [v5 initWithObjects:v7 photoLibrary:v6 fetchType:v8 fetchPropertySets:0 identifier:0 registerIfNeeded:0];

    v10 = [objc_allocWithZone(PXPhotosDataSourceConfiguration) initWithAssetFetchResult:v9 options:0];
    v11 = [objc_allocWithZone(PXPhotosDataSource) initWithPhotosDataSourceConfiguration_];
    v12 = [objc_allocWithZone(PXPhotoKitAssetsDataSourceManager) initWithPhotosDataSource_];
    v13 = [v12 dataSource];
    v14 = objc_allocWithZone(swift_getObjCClassFromMetadata());
    v15 = [v13 allItemIndexPaths];
    [v14 initWithDataSource:v13 selectedIndexPaths:v15];

    return;
  }

LABEL_12:
  __break(1u);
}

uint64_t sub_1A4962CBC(uint64_t a1, uint64_t a2, char a3)
{
  *(v3 + 32) = a1;
  sub_1A4964280(0, &qword_1EB1260E8, MEMORY[0x1E6959F70], MEMORY[0x1E69E6720]);
  *(v3 + 40) = swift_task_alloc();
  sub_1A52400D4();
  *(v3 + 48) = swift_task_alloc();
  sub_1A5240BB4();
  *(v3 + 56) = swift_task_alloc();
  v6 = sub_1A5240104();
  *(v3 + 64) = v6;
  *(v3 + 72) = *(v6 - 8);
  *(v3 + 80) = swift_task_alloc();
  *(v3 + 88) = swift_task_alloc();
  *(v3 + 96) = swift_task_alloc();
  *(v3 + 104) = swift_task_alloc();
  *(v3 + 16) = a2;
  *(v3 + 24) = a3;
  sub_1A524CC54();
  *(v3 + 112) = sub_1A524CC44();
  v8 = sub_1A524CBC4();
  *(v3 + 120) = v8;
  *(v3 + 128) = v7;

  return MEMORY[0x1EEE6DFA0](sub_1A4962EA0, v8, v7);
}

void sub_1A4962EA0()
{
  v1 = v0[4];
  v2 = [v1 extractStillConfirmationAlertTitle];
  sub_1A524C674();
  v4 = v3;

  v0[17] = v4;
  v5 = [v1 extractStillConfirmationAlertAsLiveButtonTitle];
  sub_1A524C674();
  v7 = v6;

  v0[18] = v7;
  v8 = [v1 extractStillConfirmationAlertAsStillButtonTitle];
  sub_1A524C674();
  v10 = v9;

  v0[19] = v10;
  sub_1A52400F4();
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A49631B4()
{
  v2 = *v1;
  v3 = *(*v1 + 40);
  *(*v1 + 176) = v0;

  sub_1A3F5CBFC(v3);

  if (v0)
  {

    v4 = *(v2 + 120);
    v5 = *(v2 + 128);
    v6 = sub_1A496355C;
  }

  else
  {
    v4 = *(v2 + 120);
    v5 = *(v2 + 128);
    v6 = sub_1A4963330;
  }

  return MEMORY[0x1EEE6DFA0](v6, v4, v5);
}

uint64_t sub_1A4963330()
{
  sub_1A4964134(&qword_1EB12EF00, MEMORY[0x1E695A268]);
  v1 = sub_1A524C594();
  if ((v1 & 1) == 0 && (sub_1A524C594() & 1) == 0)
  {
    return sub_1A524E6E4();
  }

  v2 = v0[13];
  v4 = v0[11];
  v3 = v0[12];
  v11 = v1;
  v5 = v0[9];
  v6 = v0[10];
  v7 = v0[8];

  v8 = *(v5 + 8);
  v8(v6, v7);
  v8(v4, v7);
  v8(v3, v7);
  v8(v2, v7);

  v9 = v0[1];

  return v9((v11 & 1) == 0);
}

uint64_t sub_1A496355C()
{
  v1 = v0[13];
  v3 = v0[11];
  v2 = v0[12];
  v4 = v0[9];
  v5 = v0[8];

  v6 = *(v4 + 8);
  v6(v3, v5);
  v6(v2, v5);
  v6(v1, v5);

  v7 = v0[1];

  return v7(0);
}

uint64_t sub_1A4963670(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  sub_1A4964280(0, &qword_1EB1260E8, MEMORY[0x1E6959F70], MEMORY[0x1E69E6720]);
  v4[6] = swift_task_alloc();
  sub_1A52400D4();
  v4[7] = swift_task_alloc();
  sub_1A5240BB4();
  v4[8] = swift_task_alloc();
  v5 = sub_1A5240104();
  v4[9] = v5;
  v4[10] = *(v5 - 8);
  v4[11] = swift_task_alloc();
  v4[12] = swift_task_alloc();
  v4[13] = swift_task_alloc();
  v4[14] = swift_task_alloc();
  sub_1A524CC54();
  v4[15] = sub_1A524CC44();
  v7 = sub_1A524CBC4();
  v4[16] = v7;
  v4[17] = v6;

  return MEMORY[0x1EEE6DFA0](sub_1A4963840, v7, v6);
}

void sub_1A4963840()
{
  v1 = v0[2];
  v2 = [v1 extractStillConfirmationAlertTitle];
  sub_1A524C674();
  v4 = v3;

  v0[18] = v4;
  v5 = [v1 extractStillConfirmationAlertAsLiveButtonTitle];
  sub_1A524C674();
  v7 = v6;

  v0[19] = v7;
  v8 = [v1 extractStillConfirmationAlertAsStillButtonTitle];
  sub_1A524C674();
  v10 = v9;

  v0[20] = v10;
  sub_1A52400F4();
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A4963B54()
{
  v2 = *v1;
  v3 = *(*v1 + 48);
  *(*v1 + 184) = v0;

  sub_1A3F5CBFC(v3);

  if (v0)
  {

    v4 = *(v2 + 128);
    v5 = *(v2 + 136);
    v6 = sub_1A4963EFC;
  }

  else
  {
    v4 = *(v2 + 128);
    v5 = *(v2 + 136);
    v6 = sub_1A4963CD0;
  }

  return MEMORY[0x1EEE6DFA0](v6, v4, v5);
}

uint64_t sub_1A4963CD0()
{
  sub_1A4964134(&qword_1EB12EF00, MEMORY[0x1E695A268]);
  v1 = sub_1A524C594();
  if ((v1 & 1) == 0 && (sub_1A524C594() & 1) == 0)
  {
    return sub_1A524E6E4();
  }

  v2 = v0[14];
  v4 = v0[12];
  v3 = v0[13];
  v11 = v1;
  v5 = v0[10];
  v6 = v0[11];
  v7 = v0[9];

  v8 = *(v5 + 8);
  v8(v6, v7);
  v8(v4, v7);
  v8(v3, v7);
  v8(v2, v7);

  v9 = v0[1];

  return v9((v11 & 1) == 0);
}

uint64_t sub_1A4963EFC()
{
  v1 = v0[14];
  v3 = v0[12];
  v2 = v0[13];
  v4 = v0[10];
  v5 = v0[9];

  v6 = *(v4 + 8);
  v6(v3, v5);
  v6(v2, v5);
  v6(v1, v5);

  v7 = v0[1];

  return v7(0);
}

unint64_t sub_1A4964010(uint64_t a1)
{
  result = sub_1A495FF70();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1A4964040()
{
  result = qword_1EB145D70;
  if (!qword_1EB145D70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB145D70);
  }

  return result;
}

unint64_t sub_1A4964098()
{
  result = qword_1EB145D78;
  if (!qword_1EB145D78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB145D78);
  }

  return result;
}

uint64_t sub_1A4964134(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1A49641A8()
{
  result = qword_1EB145D80;
  if (!qword_1EB145D80)
  {
    sub_1A496421C(255, &qword_1EB145D88, MEMORY[0x1E695A488]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB145D80);
  }

  return result;
}

void sub_1A496421C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1A495FF70();
    v7 = a3(a1, &type metadata for DuplicateAssetsIntent, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

void sub_1A4964280(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

unint64_t sub_1A49642E4()
{
  result = qword_1EB145D90;
  if (!qword_1EB145D90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB145D90);
  }

  return result;
}

uint64_t LRUCache.__allocating_init(countLimit:)(uint64_t a1, char a2)
{
  v4 = swift_allocObject();
  LRUCache.init(countLimit:)(a1, a2 & 1);
  return v4;
}

uint64_t *LRUCache.init(countLimit:)(uint64_t a1, int a2)
{
  v12 = a2;
  v13 = a1;
  v11 = *v2;
  v3 = sub_1A524D464();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1A524D414();
  MEMORY[0x1EEE9AC00](v7);
  v8 = sub_1A524BF64();
  MEMORY[0x1EEE9AC00](v8 - 8);
  sub_1A3C29A58();
  sub_1A524BF14();
  v14 = MEMORY[0x1E69E7CC0];
  sub_1A444B674(&qword_1EB126AD0, MEMORY[0x1E69E8030]);
  sub_1A421EB84(0);
  sub_1A444B674(&qword_1EB126E30, sub_1A421EB84);
  sub_1A524E224();
  (*(v4 + 104))(v6, *MEMORY[0x1E69E8090], v3);
  v2[3] = sub_1A524D4B4();
  swift_getTupleTypeMetadata2();
  v2[4] = sub_1A524C384();
  v9 = 8;
  if ((v12 & 1) == 0)
  {
    v9 = v13;
  }

  v2[2] = v9;
  return v2;
}

uint64_t sub_1A4964654@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v44 = a2;
  v45 = a3;
  v37 = a4;
  v42 = *v4;
  v6 = *(v42 + 80);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v10 = &v36 - v9;
  v12 = *(v11 + 88);
  v13 = sub_1A524DF24();
  v40 = *(v13 - 8);
  v41 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v39 = &v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v15);
  v18 = &v36 - v17;
  v38 = *(v12 - 8);
  (*(v38 + 56))(&v36 - v17, 1, 1, v12, v16);
  v43 = v4[3];
  (*(v7 + 16))(v10, a1, v6);
  v19 = (*(v7 + 80) + 48) & ~*(v7 + 80);
  v20 = (v8 + v19 + 7) & 0xFFFFFFFFFFFFFFF8;
  v21 = swift_allocObject();
  v22 = v42;
  v21[2] = v6;
  v21[3] = v12;
  v42 = v12;
  v21[4] = *(v22 + 96);
  v21[5] = v4;
  v23 = v21 + v19;
  v24 = v18;
  (*(v7 + 32))(v23, v10, v6);
  *(v21 + v20) = v18;
  v25 = (v21 + ((v20 + 15) & 0xFFFFFFFFFFFFFFF8));
  v26 = v45;
  *v25 = v44;
  v25[1] = v26;
  v27 = swift_allocObject();
  *(v27 + 16) = sub_1A4965268;
  *(v27 + 24) = v21;
  aBlock[4] = sub_1A3C7146C;
  aBlock[5] = v27;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1A3C71444;
  aBlock[3] = &block_descriptor_309;
  v28 = _Block_copy(aBlock);

  dispatch_sync(v43, v28);
  _Block_release(v28);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    v32 = v39;
    v31 = v40;
    v33 = v41;
    (*(v40 + 16))(v39, v24, v41);
    v34 = v38;
    v35 = v42;
    result = (*(v38 + 48))(v32, 1, v42);
    if (result != 1)
    {
      (*(v34 + 32))(v37, v32, v35);
      (*(v31 + 8))(v24, v33);
    }
  }

  __break(1u);
  return result;
}

void sub_1A4964A6C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v21 = a5;
  v22 = a4;
  v27 = a3;
  v7 = *a1;
  v8 = *(*a1 + 80);
  v26 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v25 = v18 - v9;
  v19 = sub_1A52414C4();
  v18[1] = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v18[0] = v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v7 + 88);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v20 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  MEMORY[0x1EEE9AC00](v13);
  v14 = sub_1A524DF24();
  v15 = *(v14 - 8);
  v28 = v14;
  v29 = v15;
  MEMORY[0x1EEE9AC00](v14);
  v23 = v18 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  swift_beginAccess();
  v34 = a1[4];
  v30 = v8;
  v31 = v11;
  v32 = *(v7 + 96);
  v33 = a2;
  v24 = a2;
  sub_1A524CB74();
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

void sub_1A4965268()
{
  v1 = (*(*(*(v0 + 16) - 8) + 80) + 48) & ~*(*(*(v0 + 16) - 8) + 80);
  v2 = (*(*(*(v0 + 16) - 8) + 64) + v1 + 7) & 0xFFFFFFFFFFFFFFF8;
  sub_1A4964A6C(*(v0 + 40), v0 + v1, *(v0 + v2), *(v0 + ((v2 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v0 + ((v2 + 15) & 0xFFFFFFFFFFFFFFF8) + 8));
}

uint64_t LRUCache.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

void sub_1A4965458()
{
  if (!qword_1EB145D98)
  {
    type metadata accessor for GenerativeStoryEventSuggestion();
    v0 = type metadata accessor for SendableTransfer();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB145D98);
    }
  }
}

uint64_t sub_1A49654B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for GenerativeStoryEventSuggestion();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4965564(a1, v6, type metadata accessor for GenerativeStoryEventSuggestion);
  SendableTransfer.init(wrappedValue:)(v6, v4, a2);
  return sub_1A49655CC(a1);
}

uint64_t sub_1A4965564(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A49655CC(uint64_t a1)
{
  v2 = type metadata accessor for GenerativeStoryEventSuggestion();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1A4965628@<X0>(uint64_t *a1@<X8>)
{
  sub_1A4965458();
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4965564(v1, v5, sub_1A4965458);
  a1[3] = type metadata accessor for GenerativeStoryEventSuggestion();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a1);
  return sub_1A49656D8(v5, boxed_opaque_existential_1);
}

uint64_t sub_1A49656D8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GenerativeStoryEventSuggestion();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1A4965740()
{
  sub_1A4965458();
  MEMORY[0x1EEE9AC00](v1 - 8);
  sub_1A4965564(v0, &v3 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0), sub_1A4965458);
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t type metadata accessor for LemonadeGenerativeMemoriesEventDisambiguationItem()
{
  result = qword_1EB1E29D0;
  if (!qword_1EB1E29D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1A49658D0()
{
  sub_1A4965458();
  MEMORY[0x1EEE9AC00](v1 - 8);
  sub_1A4965564(v0, &v3 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0), sub_1A4965458);
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

void sub_1A4965978()
{
  sub_1A4965AF4(&qword_1EB130328);

    ;
  }
}

void sub_1A49659D0()
{
  sub_1A4965AF4(&qword_1EB130328);

    ;
  }
}

void sub_1A4965A88()
{
  sub_1A4965458();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_1A4965AF4(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for LemonadeGenerativeMemoriesEventDisambiguationItem();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1A4965B64(void *a1@<X0>, void *a2@<X1>, char a3@<W2>, char a4@<W3>, char a5@<W4>, uint64_t a6@<X8>)
{
  *a6 = a1;
  *(a6 + 8) = a3;
  *(a6 + 9) = a4;
  *(a6 + 16) = a2;
  v10 = *(type metadata accessor for LemonadeSocialGroupSectionProvider(0) + 32);
  v12 = a2;
  v11 = a1;
  sub_1A4965BFC(a2, a5, a6 + v10);
}

uint64_t sub_1A4965BFC@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for LemonadeItemsLayoutSpec.Style(0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v21[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (a1)
  {
    v9 = sub_1A437C79C();
    return sub_1A4967D90(v9, a3, type metadata accessor for LemonadeFeedBodyStyle);
  }

  else
  {
    sub_1A3C36888();
    v11 = sub_1A414CFC0(0);
    v12 = sub_1A3C47918();
    v14 = v13;
    v15 = sub_1A3C52D68();
    v17 = v16;
    v19 = v18;
    v20 = sub_1A3C4ED50();
    v21[8] = 0;
    *v8 = sub_1A4965D6C;
    *(v8 + 1) = 0;
    v8[16] = 2;
    *(v8 + 3) = v11;
    v8[32] = 0;
    *(v8 + 5) = 0;
    *(v8 + 6) = 0;
    *(v8 + 7) = v12;
    *(v8 + 8) = v14;
    *(v8 + 9) = v15;
    *(v8 + 10) = v17;
    v8[88] = v19;
    v8[89] = v20;
    swift_storeEnumTagMultiPayload();
    return sub_1A437C3B8(v8, 1, a2 & 1, (a2 & 1) == 0, a3);
  }
}

uint64_t sub_1A4965D6C(uint64_t a1)
{
  v2 = sub_1A5242D14();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, a1, v2, v4);
  v7 = (*(v3 + 88))(v6, v2);
  if (v7 != *MEMORY[0x1E69C21F0])
  {
    if (v7 == *MEMORY[0x1E69C2210])
    {
      return 2;
    }

    (*(v3 + 8))(v6, v2);
  }

  return 41;
}

uint64_t sub_1A4965F1C(uint64_t a1)
{
  v3 = type metadata accessor for LemonadeSocialGroupSectionProvider.PhotosSocialGroupView(0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A496789C(0, &qword_1EB145DC0, sub_1A49662A0, type metadata accessor for LemonadeSocialGroupSectionProvider.PhotosSocialGroupView, MEMORY[0x1E697F948]);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v19 - v7;
  sub_1A49662A0();
  v10 = v9;
  v11 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v1 + 16);
  if (v14)
  {
    v15 = v14;
    sub_1A4966538(a1, v15);
    (*(v11 + 16))(v8, v13, v10);
    swift_storeEnumTagMultiPayload();
    sub_1A4967F1C(&qword_1EB145DF8, sub_1A49662A0);
    sub_1A4966C74();
    sub_1A5249744();

    return (*(v11 + 8))(v13, v10);
  }

  else
  {
    v17 = *(v1 + 8);
    *v5 = a1;
    v5[8] = v17;
    v18 = *(v3 + 24);
    *&v5[v18] = swift_getKeyPath();
    sub_1A4966C10(0, &qword_1EB128A90, MEMORY[0x1E69C2948], MEMORY[0x1E697DCB8]);
    swift_storeEnumTagMultiPayload();
    sub_1A4967D90(v5, v8, type metadata accessor for LemonadeSocialGroupSectionProvider.PhotosSocialGroupView);
    swift_storeEnumTagMultiPayload();
    sub_1A4967F1C(&qword_1EB145DF8, sub_1A49662A0);
    sub_1A4966C74();

    sub_1A5249744();
    return sub_1A4966CCC(v5);
  }
}

void sub_1A49662A0()
{
  if (!qword_1EB145DC8)
  {
    sub_1A4966388();
    sub_1A49664B8();
    sub_1A4967F1C(&qword_1EB145DF0, sub_1A4966388);
    sub_1A3C36888();
    swift_getOpaqueTypeConformance2();
    v0 = sub_1A5242A94();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB145DC8);
    }
  }
}

void sub_1A4966388()
{
  if (!qword_1EB145DD0)
  {
    sub_1A4253C40(255, &qword_1EB125C68, &qword_1EB126C28, 0x1E6978AD8, type metadata accessor for PhotoKitItem);
    sub_1A4967D38(&qword_1EB145DD8, &qword_1EB125C68, type metadata accessor for PhotoKitItem);
    sub_1A4967D38(&qword_1EB145DE0, &qword_1EB125C68, type metadata accessor for PhotoKitItem);
    sub_1A4967D38(&qword_1EB1365F0, &qword_1EB125C68, type metadata accessor for PhotoKitItem);
    v0 = sub_1A5243034();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB145DD0);
    }
  }
}

void sub_1A49664B8()
{
  if (!qword_1EB145DE8)
  {
    sub_1A3C36888();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB145DE8);
    }
  }
}

uint64_t sub_1A4966538(uint64_t a1, void *a2)
{
  v4 = sub_1A5243284();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A5243014();
  if (PhotoKitItem.expectsKeyAssets.getter())
  {
    v8 = PhotoKitItem.keyAssets.getter();
    if (!v8)
    {
      v9 = 1;
      goto LABEL_5;
    }
  }

  v9 = 0;
LABEL_5:
  (*((*MEMORY[0x1E69E7D40] & *a2) + 0x540))();
  v13[3] = a1;

  sub_1A5243024();
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = v9;
  (*(v5 + 104))(v7, *MEMORY[0x1E69C23E0], v4);

  sub_1A3D6CB10(MEMORY[0x1E69E7CC0]);
  sub_1A4966388();
  sub_1A49664B8();
  sub_1A4967F1C(&qword_1EB145DF0, sub_1A4966388);
  v11 = sub_1A3C36888();
  v13[1] = &type metadata for LemonadePeopleShelfProvider;
  v13[2] = v11;
  swift_getOpaqueTypeConformance2();
  sub_1A5242AA4();
}

void sub_1A49667D4(uint64_t a1@<X8>)
{
  v16 = a1;
  sub_1A5243014();
  v1 = sub_1A3D61684(0, v17[3].Kind);
  v2 = 0;
  if (v1)
  {
    v3 = PhotoKitItem.keyAsset.getter();
    if (v3)
    {

      v2 = 0;
    }

    else
    {
      v2 = 1;
    }
  }

  v15 = v2;
  v4 = PhotoKitItem.expectsKeyAssets.getter();
  if (v4)
  {
    v4 = PhotoKitItem.keyAssets.getter();
    if (v4)
    {
    }
  }

  v14[1] = v14;
  MEMORY[0x1EEE9AC00](v4);
  sub_1A4966388();
  sub_1A49664B8();
  sub_1A4967F1C(&qword_1EB145E30, sub_1A4966388);
  sub_1A4967F1C(&qword_1EB145E38, sub_1A4966388);
  sub_1A4967F1C(&qword_1EB145DF0, sub_1A4966388);
  v5 = sub_1A3C36888();

  v17 = &type metadata for LemonadePeopleShelfProvider;
  v18 = v5;
  swift_getOpaqueTypeConformance2();
  v6 = v16;
  sub_1A5242874();
  v7 = sub_1A524BC74();
  v9 = v8;
  sub_1A496789C(0, &qword_1EB145E40, sub_1A4967AD4, sub_1A4967C1C, MEMORY[0x1E697E830]);
  v11 = v6 + *(v10 + 36);
  sub_1A4966A68();

  sub_1A4967C1C();
  v13 = (v11 + *(v12 + 36));
  *v13 = v7;
  v13[1] = v9;
}

uint64_t sub_1A4966A68()
{
  v0 = sub_1A5244084();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = v11 - v5;
  v7 = [objc_opt_self() systemBackgroundColor];
  sub_1A524B284();
  v8 = sub_1A524B474();

  v11[1] = v8;
  type metadata accessor for LemonadeSocialGroupSectionProvider.PhotosSocialGroupView(0);
  sub_1A3F75AC0(v6);
  sub_1A5243F24();
  v9 = *(v1 + 8);
  v9(v6, v0);
  sub_1A524A784();
  v9(v3, v0);
}

void sub_1A4966C10(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

unint64_t sub_1A4966C74()
{
  result = qword_1EB1E29E8[0];
  if (!qword_1EB1E29E8[0])
  {
    type metadata accessor for LemonadeSocialGroupSectionProvider.PhotosSocialGroupView(255);
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB1E29E8);
  }

  return result;
}

uint64_t sub_1A4966CCC(uint64_t a1)
{
  v2 = type metadata accessor for LemonadeSocialGroupSectionProvider.PhotosSocialGroupView(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1A4966D28()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_1A3C36888();

  return sub_1A414D430(v1, v2, 0);
}

uint64_t sub_1A4966D8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v7 = *(a2 + 40);
  if (v7)
  {
    v8 = (*((*MEMORY[0x1E69E7D40] & *v7) + 0x2D0))();
  }

  else
  {
    v8 = 0;
  }

  if (MEMORY[0x1A590D320]())
  {
    v9 = *(a1 + 16);

    sub_1A4270930(v9);
  }

  else
  {
    v10 = v7 != 0;
    v11 = type metadata accessor for LemonadeSocialGroupSectionProvider(0);
    v12 = sub_1A4967F1C(&qword_1EB145E00, type metadata accessor for LemonadeSocialGroupSectionProvider);
    v13 = sub_1A3C66934(v4, v11, v12);
    v18 = a1;
    sub_1A4253C40(0, &qword_1EB129FC0, &qword_1EB126C28, 0x1E6978AD8, type metadata accessor for PhotoKitItemListManager);
    sub_1A4253C40(0, &qword_1EB125C68, &qword_1EB126C28, 0x1E6978AD8, type metadata accessor for PhotoKitItem);
    v15 = v14;
    v16 = sub_1A4967D38(&qword_1EB1365F8, &qword_1EB129FC0, type metadata accessor for PhotoKitItemListManager);

    sub_1A426FECC(v13, &v18, v10, v8, v15, v16, a3);
  }

  type metadata accessor for LemonadeNavigationDestination();
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1A4966FD8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(v2 + 8);
  *a2 = a1;
  *(a2 + 8) = v4;
  v5 = *(type metadata accessor for LemonadeSocialGroupSectionProvider.PhotosSocialGroupView(0) + 24);
  *(a2 + v5) = swift_getKeyPath();
  sub_1A4966C10(0, &qword_1EB128A90, MEMORY[0x1E69C2948], MEMORY[0x1E697DCB8]);
  swift_storeEnumTagMultiPayload();
}

uint64_t sub_1A4967108()
{
  if (*(v0 + 8))
  {
    return 0;
  }

  else
  {
    return (*(v0 + 9) ^ 1) & 1;
  }
}

uint64_t *sub_1A4967128@<X0>(uint64_t *result@<X0>, void *a2@<X8>)
{
  if (*(v2 + 9) == 1)
  {
    v4 = *result;
    sub_1A4253C40(0, &qword_1EB125C68, &qword_1EB126C28, 0x1E6978AD8, type metadata accessor for PhotoKitItem);
    v6 = v5;
    v7 = sub_1A4967D38(&qword_1EB145DE0, &qword_1EB125C68, type metadata accessor for PhotoKitItem);
  }

  else
  {
    v6 = 0;
    v7 = 0;
    v4 = 0;
    a2[1] = 0;
    a2[2] = 0;
  }

  a2[3] = v6;
  a2[4] = v7;
  *a2 = v4;
  return result;
}

uint64_t sub_1A4967218()
{
  result = sub_1A5243024();
  if (!v1)
  {
    return sub_1A3C38BD4();
  }

  return result;
}

uint64_t sub_1A496725C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1A4967D38(&qword_1EB145E60, &qword_1EB125C68, type metadata accessor for PhotoKitItem);

  return sub_1A4201830(a1, a2, a3, v6);
}

uint64_t sub_1A49672E8()
{
  sub_1A4967F1C(&qword_1EB13A240, type metadata accessor for LemonadeSocialGroupSectionProvider);

  return sub_1A3C47918();
}

uint64_t sub_1A4967354(uint64_t a1)
{
  *(a1 + 8) = sub_1A4967F1C(&qword_1EB13A240, type metadata accessor for LemonadeSocialGroupSectionProvider);
  result = sub_1A4967F1C(&qword_1EB145E08, type metadata accessor for LemonadeSocialGroupSectionProvider);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1A496759C(uint64_t a1)
{
  result = sub_1A4967F1C(&qword_1EB145E00, type metadata accessor for LemonadeSocialGroupSectionProvider);
  *(a1 + 8) = result;
  return result;
}

void sub_1A49676BC()
{
  sub_1A3C52C70(319, &qword_1EB126BF0);
  if (v0 <= 0x3F)
  {
    sub_1A4966C10(319, &qword_1EB125A20, type metadata accessor for PickerConfiguration, MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      type metadata accessor for LemonadeFeedBodyStyle(319);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_1A49677A8()
{
  result = qword_1EB145E20;
  if (!qword_1EB145E20)
  {
    sub_1A496789C(255, &qword_1EB145E28, sub_1A49662A0, type metadata accessor for LemonadeSocialGroupSectionProvider.PhotosSocialGroupView, MEMORY[0x1E697F960]);
    sub_1A4967F1C(&qword_1EB145DF8, sub_1A49662A0);
    sub_1A4966C74();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB145E20);
  }

  return result;
}

void sub_1A496789C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a4(255);
    v11 = a5(a1, v9, v10);
    if (!v12)
    {
      atomic_store(v11, a2);
    }
  }
}

void sub_1A4967948()
{
  sub_1A4966388();
  if (v0 <= 0x3F)
  {
    sub_1A4966C10(319, &qword_1EB124840, MEMORY[0x1E69C2948], MEMORY[0x1E697DCC0]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1A4967A20()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_1A3C52C70(0, &qword_1EB126A10);
  v3 = [swift_getObjCClassFromMetadata() sharedInstance];
  v4 = [v3 enableInlinePlaybackSocialGroupFeed];

  v5 = *v1;
  sub_1A3C36888();

  return sub_1A414D430(v5, v2, v4);
}

void sub_1A4967AD4()
{
  if (!qword_1EB145E48)
  {
    sub_1A4966388();
    sub_1A49664B8();
    sub_1A4967F1C(&qword_1EB145E30, sub_1A4966388);
    sub_1A4967F1C(&qword_1EB145E38, sub_1A4966388);
    sub_1A4967F1C(&qword_1EB145DF0, sub_1A4966388);
    sub_1A3C36888();
    swift_getOpaqueTypeConformance2();
    v0 = sub_1A5242864();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB145E48);
    }
  }
}

void sub_1A4967C1C()
{
  if (!qword_1EB145E50)
  {
    sub_1A4967CB8();
    swift_getOpaqueTypeConformance2();
    v0 = sub_1A5248AE4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB145E50);
    }
  }
}

void sub_1A4967CB8()
{
  if (!qword_1EB145E58)
  {
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB145E58);
    }
  }
}

uint64_t sub_1A4967D38(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_1A4253C40(255, a2, &qword_1EB126C28, 0x1E6978AD8, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1A4967D90(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_1A4967DF8()
{
  result = qword_1EB145E68;
  if (!qword_1EB145E68)
  {
    sub_1A496789C(255, &qword_1EB145E40, sub_1A4967AD4, sub_1A4967C1C, MEMORY[0x1E697E830]);
    sub_1A4967F1C(&qword_1EB145E70, sub_1A4967AD4);
    sub_1A4967F1C(&qword_1EB145E78, sub_1A4967C1C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB145E68);
  }

  return result;
}

uint64_t sub_1A4967F1C(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1A4967F68()
{
  swift_getKeyPath();
  (*(*v0 + 288))();

  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A4967FDC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 136))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_1A4968040(uint64_t a1, uint64_t a2)
{
  v5 = v2[2] == a1 && v2[3] == a2;
  if (v5 || (sub_1A524EAB4() & 1) != 0)
  {
    v2[2] = a1;
    v2[3] = a2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v8 = MEMORY[0x1EEE9AC00](KeyPath);
    v9 = v2;
    v10 = a1;
    v11 = a2;
    (*(*v2 + 296))(v8);
  }
}

void sub_1A4968198()
{
  swift_getKeyPath();
  (*(*v0 + 288))();

  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A496820C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 184))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_1A49682B8(uint64_t a1, uint64_t a2)
{
  v5 = v2[4] == a1 && v2[5] == a2;
  if (v5 || (sub_1A524EAB4() & 1) != 0)
  {
    v2[4] = a1;
    v2[5] = a2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v8 = MEMORY[0x1EEE9AC00](KeyPath);
    v9 = v2;
    v10 = a1;
    v11 = a2;
    (*(*v2 + 296))(v8);
  }
}

void sub_1A4968410(uint64_t a1)
{
  v2 = swift_allocObject();
  v2[2] = 0;
  v2[3] = 0xE000000000000000;
  v2[4] = 0;
  v2[5] = 0xE000000000000000;
  sub_1A5241604();
  sub_1A4150524(a1, v2 + OBJC_IVAR____TtC12PhotosUICore39LemonadeAssetsRecoveryNotificationModel__item);
  sub_1A49685E0(a1);
}

uint64_t sub_1A4968488(uint64_t a1)
{
  swift_getKeyPath();
  v4 = v1;
  v5 = a1;
  (*(*v1 + 296))();

  return sub_1A415065C(a1);
}

uint64_t sub_1A4968530()
{
  v1 = type metadata accessor for AssetsRecoveryNotificationItem();
  v2 = MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(*v0 + 256))(v2);
  sub_1A4425024();
  return sub_1A415065C(v4);
}

void sub_1A49685E0(uint64_t a1)
{
  v2 = (a1 + *(type metadata accessor for AssetsRecoveryNotificationItem() + 24));
  v4 = *v2;
  v3 = v2[1];
  v5 = *(v1 + 16) == *v2 && *(v1 + 24) == v3;
  if (!v5 && (sub_1A524EAB4() & 1) == 0)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    v7 = v1;
    v8 = v4;
    v9 = v3;
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  *(v1 + 16) = v4;
  *(v1 + 24) = v3;
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

void (*sub_1A4968840(uint64_t *a1))(uint64_t *a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 24) = v1;
  v6 = *(*(type metadata accessor for AssetsRecoveryNotificationItem() - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  *(v5 + 32) = v7;
  swift_beginAccess();
  return sub_1A4968900;
}

void sub_1A4968900(uint64_t *a1, char a2)
{
  v3 = *a1;
  v4 = swift_endAccess();
  v5 = *(v3 + 32);
  if ((a2 & 1) == 0)
  {
    (*(**(v3 + 24) + 256))(v4);
    sub_1A49685E0(v5);
  }

  free(v5);

  free(v3);
}

uint64_t sub_1A496899C@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  (*(*v1 + 288))();

  v3 = OBJC_IVAR____TtC12PhotosUICore39LemonadeAssetsRecoveryNotificationModel__item;
  swift_beginAccess();
  return sub_1A4150524(v1 + v3, a1);
}

uint64_t sub_1A4968A84(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AssetsRecoveryNotificationItem();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4150524(a1, v6);
  return (*(**a2 + 264))(v6);
}

void sub_1A4968B44(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AssetsRecoveryNotificationItem();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v12 - v8;
  sub_1A4150524(a2, &v12 - v8);
  v10 = OBJC_IVAR____TtC12PhotosUICore39LemonadeAssetsRecoveryNotificationModel__item;
  swift_beginAccess();
  sub_1A496952C(v9, a1 + v10);
  v11 = swift_endAccess();
  (*(*a1 + 256))(v11);
  sub_1A49685E0(v6);
}

void (*sub_1A4968C98(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 288))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore39LemonadeAssetsRecoveryNotificationModel___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A49693AC(&qword_1EB145E80, type metadata accessor for LemonadeAssetsRecoveryNotificationModel);
  sub_1A52415F4();

  v4[7] = sub_1A4968840(v4);
  return sub_1A4968DE8;
}

void sub_1A4968DE8(void *a1)
{
  v1 = *a1;
  (*(*a1 + 56))(*a1, 0);
  *v1 = v1[4];
  swift_getKeyPath();
  sub_1A52415E4();

  free(v1);
}

uint64_t type metadata accessor for LemonadeAssetsRecoveryNotificationModel()
{
  result = qword_1EB1E2F30;
  if (!qword_1EB1E2F30)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1A4968EC8()
{
  v1 = type metadata accessor for AssetsRecoveryNotificationItem();
  v2 = MEMORY[0x1EEE9AC00](v1 - 8);
  (*(*v0 + 256))(v2);
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A49690CC()
{

  sub_1A415065C(v0 + OBJC_IVAR____TtC12PhotosUICore39LemonadeAssetsRecoveryNotificationModel__item);
  v1 = OBJC_IVAR____TtC12PhotosUICore39LemonadeAssetsRecoveryNotificationModel___observationRegistrar;
  v2 = sub_1A5241614();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

void (*sub_1A49692CC(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  *(v3 + 32) = (*(*v1 + 272))();
  return sub_1A3D3D728;
}

uint64_t sub_1A49693AC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1A49693F8@<X0>(uint64_t *a1@<X8>)
{
  result = (*(**v1 + 280))();
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1A4969454()
{
  result = type metadata accessor for AssetsRecoveryNotificationItem();
  if (v1 <= 0x3F)
  {
    result = sub_1A5241614();
    if (v2 <= 0x3F)
    {
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_1A496952C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AssetsRecoveryNotificationItem();
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A49695C4@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v19[1] = a2;
  sub_1A4972FC4(0, &qword_1EB145E98, type metadata accessor for LemonadeSharedLibraryInvitationsCell, &type metadata for LemonadeSharedAlbumInvitationsCell, MEMORY[0x1E697F948]);
  MEMORY[0x1EEE9AC00](v3);
  v5 = v19 - v4;
  v6 = type metadata accessor for LemonadeSharedLibraryInvitationsCell();
  MEMORY[0x1EEE9AC00](v6);
  v8 = (v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = type metadata accessor for InvitationsItem.InvitationType(0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for InvitationsItem(0);
  v13 = v12 - 8;
  MEMORY[0x1EEE9AC00](v12);
  v15 = v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);

  sub_1A4604CB0(v15);
  sub_1A4975708(&v15[*(v13 + 36)], v11, type metadata accessor for InvitationsItem.InvitationType);
  sub_1A4972D94(v15, type metadata accessor for InvitationsItem);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    *v8 = swift_getKeyPath();
    sub_1A4973574(0, &qword_1EB128A80, sub_1A3D63A58, MEMORY[0x1E697DCB8]);
    swift_storeEnumTagMultiPayload();
    v16 = (v8 + *(v6 + 24));
    *v16 = sub_1A3C38BD4();
    v16[1] = v17;
    *(v8 + *(v6 + 20)) = a1;
    sub_1A4975708(v8, v5, type metadata accessor for LemonadeSharedLibraryInvitationsCell);
    swift_storeEnumTagMultiPayload();
    sub_1A49730AC(&qword_1EB145EA0, type metadata accessor for LemonadeSharedLibraryInvitationsCell);
    sub_1A40AED88();
    sub_1A5249744();
    sub_1A4972D94(v8, type metadata accessor for LemonadeSharedLibraryInvitationsCell);
  }

  else
  {
    sub_1A4972A74(a1, 0, v20);
    memcpy(v5, v20, 0x118uLL);
    swift_storeEnumTagMultiPayload();
    sub_1A49730AC(&qword_1EB145EA0, type metadata accessor for LemonadeSharedLibraryInvitationsCell);
    sub_1A40AED88();
    sub_1A5249744();
  }

  return sub_1A4972D94(v11, type metadata accessor for InvitationsItem.InvitationType);
}

uint64_t type metadata accessor for LemonadeSharedLibraryInvitationsCell()
{
  result = qword_1EB1E31D0;
  if (!qword_1EB1E31D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1A4969A48@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1A5246F24();
  v46 = *(v2 - 8);
  v47 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v45 = v35 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1A52408C4();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v37 = v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1A5240744();
  v42 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v41 = v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = sub_1A5240754();
  v38 = *(v40 - 8);
  MEMORY[0x1EEE9AC00](v40);
  v39 = v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1A5240774();
  MEMORY[0x1EEE9AC00](v9 - 8);
  sub_1A4973574(0, &unk_1EB12B250, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v10 - 8);
  sub_1A3F31320(0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v49 = v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v36 = v35 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v48 = v35 - v16;
  MEMORY[0x1EEE9AC00](v17);
  MEMORY[0x1EEE9AC00](v18);
  v20 = v35 - v19;
  v21 = sub_1A52407E4();
  v22 = *(v21 - 8);
  v43 = *(v22 + 56);
  v44 = v22 + 56;
  v43(v20, 1, 1, v21);
  type metadata accessor for LemonadeSharedLibraryInvitationsCell();
  v23 = sub_1A4605538();
  v25 = HIBYTE(v24) & 0xF;
  v50 = v24;
  if ((v24 & 0x2000000000000000) == 0)
  {
    v25 = v23 & 0xFFFFFFFFFFFFLL;
  }

  if (v25)
  {
    v26 = v23;
    v35[1] = a1;
    sub_1A3C38BD4();
    v35[0] = v6;
    sub_1A4973574(0, &qword_1EB12B110, sub_1A3D78B5C, MEMORY[0x1E69E6F90]);
    v27 = swift_allocObject();
    *(v27 + 16) = xmmword_1A52F8E10;
    *(v27 + 56) = MEMORY[0x1E69E6158];
    *(v27 + 64) = sub_1A3D710E8();
    v28 = v50;
    *(v27 + 32) = v26;
    *(v27 + 40) = v28;
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  v29 = v48;
  sub_1A4975708(v20, v48, sub_1A3F31320);
  v30 = *(v22 + 48);
  v31 = v30(v29, 1, v21);
  sub_1A4972D94(v29, sub_1A3F31320);
  if (v31 == 1)
  {
    sub_1A3C38BD4();
    sub_1A52408B4();
    v32 = v36;
    sub_1A52407F4();
    sub_1A4972D94(v20, sub_1A3F31320);
    v43(v32, 0, 1, v21);
    sub_1A49756A0(v32, v20, sub_1A3F31320);
  }

  v33 = v49;
  sub_1A4975708(v20, v49, sub_1A3F31320);
  result = v30(v33, 1, v21);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    sub_1A4972D94(v20, sub_1A3F31320);

    return (*(v22 + 32))(a1, v33, v21);
  }

  return result;
}

uint64_t sub_1A496A30C@<X0>(uint64_t a1@<X8>)
{
  v54 = a1;
  v2 = type metadata accessor for LemonadeSharedLibraryInvitationsCell();
  v3 = v2 - 8;
  v56 = *(v2 - 8);
  v59 = *(v56 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v55 = &v45 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4972DF4();
  v6 = *(v5 - 8);
  v52 = v5;
  v53 = v6;
  MEMORY[0x1EEE9AC00](v5);
  v51 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1A5243934();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v47 = (&v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v45 - v12;
  v48 = &v45 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v45 - v15;
  v17 = *(v1 + *(v3 + 28));
  v58 = v1;
  v18 = v17 + OBJC_IVAR____TtC12PhotosUICore23LemonadeInvitationModel_cellSpecs;
  v63[0] = *v18;
  v19 = *(v18 + 64);
  v21 = *(v18 + 16);
  v20 = *(v18 + 32);
  v63[3] = *(v18 + 48);
  v63[4] = v19;
  v63[1] = v21;
  v63[2] = v20;
  v23 = *(v18 + 96);
  v22 = *(v18 + 112);
  v24 = *(v18 + 80);
  v66 = *(v18 + 128);
  v64 = v23;
  v65 = v22;
  v63[5] = v24;
  sub_1A460525C(v63, v62);
  v50 = v16;
  sub_1A5243914();
  v25 = v64;
  v26 = v65;
  v27 = v66;
  v28 = *(v9 + 16);
  v60 = v8;
  v28(v13, v16, v8);
  v28(&v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v16, v8);
  v57 = type metadata accessor for LemonadeSharedLibraryInvitationsCell;
  sub_1A4975708(v1, v55, type metadata accessor for LemonadeSharedLibraryInvitationsCell);
  v29 = *(v9 + 80);
  v49 = v9;
  v30 = (v29 + 16) & ~v29;
  v31 = *(v56 + 80);
  v32 = (v10 + v31 + v30) & ~v31;
  v56 = v31 | 7;
  v46 = (v59 + v32 + 7) & 0xFFFFFFFFFFFFFFF8;
  v33 = (v46 + 15) & 0xFFFFFFFFFFFFFFF8;
  v34 = (v33 + 15) & 0xFFFFFFFFFFFFFFF8;
  v35 = (v34 + 15) & 0xFFFFFFFFFFFFFFF8;
  v36 = swift_allocObject();
  (*(v9 + 32))(v36 + v30, v47, v60);
  v37 = v36 + v32;
  v38 = v55;
  v47 = type metadata accessor for LemonadeSharedLibraryInvitationsCell;
  sub_1A49756A0(v55, v37, type metadata accessor for LemonadeSharedLibraryInvitationsCell);
  *(v36 + v46) = v25;
  *(v36 + v33) = v26;
  *(v36 + v34) = *(&v26 + 1);
  *(v36 + v35) = *(&v25 + 1);
  *(v36 + ((v35 + 15) & 0xFFFFFFFFFFFFFFF8)) = v27;
  sub_1A4975708(v58, v38, v57);
  v39 = (v31 + 16) & ~v31;
  v40 = swift_allocObject();
  sub_1A49756A0(v38, v40 + v39, type metadata accessor for LemonadeSharedLibraryInvitationsCell);
  v61 = 1;
  sub_1A524B954();
  v45 = v62[1];
  v46 = v62[0];
  sub_1A4972EF4();
  sub_1A5243544();
  sub_1A49730AC(&qword_1EB145ED0, sub_1A4972EF4);
  sub_1A49730AC(&qword_1EB12EAA8, MEMORY[0x1E69C2510]);
  v41 = v51;
  sub_1A5242914();
  sub_1A4975708(v58, v38, v57);
  v42 = swift_allocObject();
  sub_1A49756A0(v38, v42 + v39, v47);
  sub_1A49730AC(&qword_1EB145ED8, sub_1A4972DF4);
  v43 = v52;
  sub_1A524AA84();

  sub_1A4605B8C(v63);
  (*(v53 + 8))(v41, v43);
  return (*(v49 + 8))(v50, v60);
}

uint64_t sub_1A496A924@<X0>(uint64_t *a1@<X8>, double a2@<D0>, double a3@<D1>, double a4@<D4>)
{
  sub_1A3F2ED84(0);
  v9 = v8 - 8;
  MEMORY[0x1EEE9AC00](v8);
  v11 = v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = (v38 - v13);
  v15 = type metadata accessor for LemonadeSharedLibraryAvatarInvitationView();
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = v38 - v19;
  *a1 = sub_1A524BC34();
  a1[1] = v21;
  sub_1A4975020(0, &qword_1EB146130, sub_1A4972F88);
  v23 = a1 + *(v22 + 44);
  sub_1A52438F4();
  v25 = v24;
  type metadata accessor for LemonadeSharedLibraryInvitationsCell();

  sub_1A4726B58(v26, v20, v25);
  *v14 = sub_1A524BC74();
  v14[1] = v27;
  sub_1A4975020(0, &qword_1EB12EAC8, sub_1A3F2EF64);
  sub_1A496ACA4(v14 + *(v28 + 44), a2, a3);
  sub_1A524BC74();
  sub_1A52481F4();
  sub_1A3F2EE38();
  v30 = (v14 + *(v29 + 36));
  v31 = v38[1];
  *v30 = v38[0];
  v30[1] = v31;
  v30[2] = v38[2];
  sub_1A3F2EDAC(0);
  v33 = (v14 + *(v32 + 36));
  *v33 = a4;
  v33[1] = a4;
  v34 = sub_1A524A064();
  v35 = v14 + *(v9 + 44);
  *v35 = v34;
  *(v35 + 1) = 0;
  *(v35 + 2) = 0;
  *(v35 + 3) = -a3;
  *(v35 + 4) = -a3;
  v35[40] = 0;
  sub_1A4975708(v20, v17, type metadata accessor for LemonadeSharedLibraryAvatarInvitationView);
  sub_1A4975708(v14, v11, sub_1A3F2ED84);
  sub_1A4975708(v17, v23, type metadata accessor for LemonadeSharedLibraryAvatarInvitationView);
  sub_1A4973030(0, &qword_1EB145EC0, type metadata accessor for LemonadeSharedLibraryAvatarInvitationView, sub_1A3F2ED84);
  sub_1A4975708(v11, v23 + *(v36 + 48), sub_1A3F2ED84);
  sub_1A4972D94(v14, sub_1A3F2ED84);
  sub_1A4972D94(v20, type metadata accessor for LemonadeSharedLibraryAvatarInvitationView);
  sub_1A4972D94(v11, sub_1A3F2ED84);
  return sub_1A4972D94(v17, type metadata accessor for LemonadeSharedLibraryAvatarInvitationView);
}

uint64_t sub_1A496ACA4@<X0>(uint64_t a1@<X8>, double a2@<D0>, double a3@<D1>)
{
  v36 = a1;
  v5 = sub_1A524B554();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1A5242264();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3F2F01C();
  v14 = v13 - 8;
  MEMORY[0x1EEE9AC00](v13);
  v35 = &v34 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = (&v34 - v17);
  v19 = *(sub_1A5248A14() + 20);
  v20 = *MEMORY[0x1E697F468];
  v21 = sub_1A52494A4();
  (*(*(v21 - 8) + 104))(v18 + v19, v20, v21);
  *v18 = a2;
  v18[1] = a2;
  *(v18 + *(sub_1A5248A04() + 20)) = a3;
  *(v18 + *(v14 + 60)) = sub_1A524B3C4();
  *(v18 + *(v14 + 64)) = 256;
  strcpy(v12, "person.2.fill");
  *(v12 + 7) = -4864;
  (*(v10 + 104))(v12, *MEMORY[0x1E69C1D38], v9);
  sub_1A5242B94();
  (*(v10 + 8))(v12, v9);
  (*(v6 + 104))(v8, *MEMORY[0x1E6981630], v5);
  v22 = sub_1A524B5C4();

  (*(v6 + 8))(v8, v5);
  v23 = sub_1A524B434();
  KeyPath = swift_getKeyPath();
  sub_1A524BC74();
  sub_1A52481F4();
  v25 = v35;
  sub_1A4975708(v18, v35, sub_1A3F2F01C);
  v26 = v36;
  sub_1A4975708(v25, v36, sub_1A3F2F01C);
  sub_1A4973030(0, &qword_1EB12EA70, sub_1A3F2F01C, sub_1A3F2F0CC);
  v28 = v26 + *(v27 + 48);
  v42[0] = v22;
  v42[1] = 0;
  LOWORD(v43) = 257;
  *(&v43 + 2) = v40;
  WORD3(v43) = v41;
  *(&v43 + 1) = KeyPath;
  *v44 = v23;
  *&v44[8] = v37;
  *&v44[24] = v38;
  *&v44[40] = v39;
  v29 = v43;
  *v28 = v22;
  *(v28 + 16) = v29;
  v30 = *v44;
  v31 = *&v44[16];
  v32 = *&v44[32];
  *(v28 + 80) = *&v44[48];
  *(v28 + 48) = v31;
  *(v28 + 64) = v32;
  *(v28 + 32) = v30;
  sub_1A4975708(v42, v45, sub_1A3F2F0CC);
  sub_1A4972D94(v18, sub_1A3F2F01C);
  v45[0] = v22;
  v45[1] = 0;
  v46 = 257;
  v47 = v40;
  v48 = v41;
  v49 = KeyPath;
  v50 = v23;
  v51 = v37;
  v52 = v38;
  v53 = v39;
  sub_1A4972D94(v45, sub_1A3F2F0CC);
  return sub_1A4972D94(v25, sub_1A3F2F01C);
}

void sub_1A496B1DC(uint64_t a1@<X8>)
{
  v10[1] = a1;
  v1 = type metadata accessor for InvitationsItem(0);
  MEMORY[0x1EEE9AC00](v1);
  v2 = sub_1A52407E4();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v3 = sub_1A5243C24();
  v10[0] = v3;
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v10 - v8;
  sub_1A5243C14();
  (*(v4 + 16))(v6, v9, v3);
  type metadata accessor for LemonadeSharedLibraryInvitationsCell();
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A496B410()
{
  sub_1A3D63A58(0);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v11 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for InvitationsItem(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for LemonadeSharedLibraryInvitationsCell();
  sub_1A4604CB0(v5);
  v6 = *(v5 + 1);
  swift_unknownObjectRetain();
  result = sub_1A4972D94(v5, type metadata accessor for InvitationsItem);
  if (v6)
  {
    v8 = sub_1A4605AC4();
    if (v8)
    {
      v9 = v8;
      sub_1A3FF29A0(v2);
      sub_1A3C4B840(0, &qword_1EB128E00, &qword_1EB126B10, 0x1E69DD258, off_1E7721050);
      if ((*(*(v10 - 8) + 48))(v2, 1, v10) != 1)
      {
        sub_1A5245C94();
      }

      swift_unknownObjectRelease();
      return sub_1A4972D94(v2, sub_1A3D63A58);
    }

    else
    {
      return swift_unknownObjectRelease();
    }
  }

  else
  {
    __break(1u);
    __break(1u);
  }

  return result;
}

uint64_t sub_1A496B68C@<X0>(uint64_t a1@<X8>)
{
  v56 = a1;
  sub_1A49732F0(0);
  v51 = v1;
  MEMORY[0x1EEE9AC00](v1);
  v57 = v44 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A49744F8();
  v54 = *(v3 - 8);
  v55 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v50 = v44 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1A5243934();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v44 - v9;
  v49 = v44 - v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = v44 - v12;
  sub_1A5243914();
  v14 = *(v6 + 16);
  v46 = v14;
  v58 = v5;
  v14(v10, v13, v5);
  v14(v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v13, v5);
  v15 = *(v6 + 80);
  v16 = (v15 + 16) & ~v15;
  v17 = (v7 + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
  v18 = swift_allocObject();
  v53 = v6;
  v45 = *(v6 + 32);
  v19 = v18 + v16;
  v20 = v18;
  v48 = v18;
  v21 = v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = v58;
  v45(v19, v21, v58);
  v23 = (v20 + v17);
  v24 = v47;
  memcpy(v23, v47, 0x118uLL);
  v25 = swift_allocObject();
  memcpy((v25 + 16), v24, 0x118uLL);
  v52 = v13;
  v46(v21, v13, v22);
  v26 = swift_allocObject();
  memcpy((v26 + 16), v24, 0x118uLL);
  v45(v26 + ((v15 + 296) & ~v15), v21, v22);
  LOBYTE(v61) = 1;
  sub_1A40AD710(v24, &v63);
  sub_1A40AD710(v24, &v63);
  v27 = v24;
  sub_1A40AD710(v24, &v63);
  sub_1A524B954();
  v45 = *(&v63 + 1);
  v46 = v63;
  v44[3] = v64;
  type metadata accessor for LemonadeSharedAlbumsAvatarView();
  sub_1A5243544();
  sub_1A4972FC4(0, &qword_1EB145EF0, sub_1A4973470, MEMORY[0x1E6981E70], MEMORY[0x1E697F960]);
  sub_1A49730AC(&qword_1EB134E00, type metadata accessor for LemonadeSharedAlbumsAvatarView);
  sub_1A49730AC(&qword_1EB12EAA8, MEMORY[0x1E69C2510]);
  sub_1A4974390();
  v28 = v57;
  sub_1A5242914();
  v63 = *(v27 + 88);
  sub_1A49754F8(0, &qword_1EB1274B0, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);
  sub_1A524B6A4();
  v28[*(v51 + 36)] = v61;
  v61 = sub_1A496CEF8();
  v62 = v29;
  v60 = v27[2];
  sub_1A524B6C4();
  v59 = v27;
  sub_1A49745E8(0);
  sub_1A4974650();
  sub_1A3D5F9DC();
  sub_1A4974734(&qword_1EB146080, sub_1A49745E8, sub_1A4974700);
  v30 = v50;
  v31 = v57;
  sub_1A524AFC4();

  sub_1A497508C(v31, sub_1A49732F0);
  if (*(v27 + 24))
  {
    v32 = *(*(v27 + 2) + OBJC_IVAR____TtC12PhotosUICore23LemonadeInvitationModel_cellSpecs);
    v33 = v52;
  }

  else
  {
    v34 = v52;
    sub_1A52438C4();
    v32 = v35;
    v33 = v34;
  }

  (*(v53 + 8))(v33, v58);
  sub_1A4974908(0, &qword_1EB146090, sub_1A49744F8, sub_1A3E42C88, MEMORY[0x1E697E830]);
  v37 = v56;
  v38 = (v56 + *(v36 + 36));
  v39 = *(sub_1A5248A14() + 20);
  v40 = *MEMORY[0x1E697F468];
  v41 = sub_1A52494A4();
  (*(*(v41 - 8) + 104))(&v38[v39], v40, v41);
  *v38 = v32;
  *(v38 + 1) = v32;
  sub_1A3E42C88();
  *&v38[*(v42 + 36)] = 256;
  return (*(v54 + 32))(v37, v30, v55);
}

uint64_t sub_1A496BDD8@<X0>(uint64_t a1@<X8>)
{
  sub_1A4973574(0, &qword_1EB146128, type metadata accessor for ShareParticipantImageConfiguration, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = v12 - v3;
  sub_1A52438F4();
  v6 = v5;
  sub_1A4973574(0, &qword_1EB13B1F0, type metadata accessor for ShareParticipantImageConfiguration, MEMORY[0x1E69E6F90]);
  v7 = type metadata accessor for ShareParticipantImageConfiguration(0);
  v8 = *(v7 - 8);
  v9 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1A52F8E10;
  sub_1A46056CC(v4);
  result = (*(v8 + 48))(v4, 1, v7);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    sub_1A49756A0(v4, v10 + v9, type metadata accessor for ShareParticipantImageConfiguration);
    sub_1A493BE2C(v12);
    return sub_1A493BE50(v10, v12, a1, v6);
  }

  return result;
}

void sub_1A496BFBC(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v38 = a2;
  v37 = type metadata accessor for InvitationsItem(0);
  MEMORY[0x1EEE9AC00](v37);
  v35 = v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1A5243C24();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v32 = v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_1A52407E4();
  v34 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36);
  v30 = v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v31 = v28 - v8;
  sub_1A44E4F68(0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1A524C634();
  v29 = PXLemonadeLocalizedAttributedString(v12);

  v13 = sub_1A5241284();
  v14 = *(v13 - 8);
  (*(v14 + 56))(v11, 1, 1, v13);
  sub_1A4973574(0, &qword_1EB12B110, sub_1A3D78B5C, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1A52FC9F0;
  v33 = a1;
  v16 = sub_1A4605538();
  v18 = v17;
  v19 = MEMORY[0x1E69E6158];
  *(inited + 56) = MEMORY[0x1E69E6158];
  v20 = sub_1A3D710E8();
  *(inited + 64) = v20;
  *(inited + 32) = v16;
  *(inited + 40) = v18;
  v21 = sub_1A4605458();
  *(inited + 96) = v19;
  *(inited + 104) = v20;
  *(inited + 72) = v21;
  *(inited + 80) = v22;
  v23 = sub_1A524EF04();
  swift_setDeallocating();
  sub_1A3D78B5C();
  swift_arrayDestroy();
  LODWORD(v20) = (*(v14 + 48))(v11, 1, v13);
  v24 = v29;
  v25 = 0;
  if (v20 != 1)
  {
    v25 = sub_1A5241224();
    (*(v14 + 8))(v11, v13);
  }

  v26 = [objc_allocWithZone(MEMORY[0x1E696AAB0]) initWithFormat:v24 options:0 locale:v25 arguments:v23];

  v27 = v31;
  v29 = v26;
  sub_1A5242FC4();
  v28[1] = v24;
  sub_1A5243C14();
  sub_1A524B334();
  sub_1A5243BF4();
  (*(v34 + 16))(v30, v27, v36);
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A496C4D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v41 = a3;
  sub_1A49755C8(0, &qword_1EB146108, sub_1A3EE43D8);
  v39 = *(v5 - 8);
  v40 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v38 - v6;
  sub_1A49755C8(0, &qword_1EB146110, sub_1A3EE4384);
  v9 = v8;
  v10 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v38 - v11;
  v13 = sub_1A52408C4();
  v42 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v38 - v18;
  if (a1 == 0x4E72657469766E69 && a2 == v17 || (sub_1A524EAB4() & 1) != 0)
  {
    sub_1A52408B4();
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    *(&v38 - 2) = v21;
    swift_getKeyPath();
    sub_1A3EE4384();
    sub_1A5240884();

    v22 = *(v42 + 8);
    v22(v15, v13);
    v43 = sub_1A524B484();
    sub_1A5240894();

    (*(v10 + 8))(v12, v9);
    v23 = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](v23);
    *(&v38 - 2) = v24;
    swift_getKeyPath();
    sub_1A3EE43D8();
    sub_1A5240884();

    v22(v19, v13);
    sub_1A524A0E4();
    v25 = sub_1A524A104();

    v43 = v25;
    v27 = v40;
    v26 = v41;
    sub_1A5240894();

    (*(v39 + 8))(v7, v27);
    return (*(v42 + 56))(v26, 0, 1, v13);
  }

  else if (a1 == 0x6D614E6D75626C61 && a2 == 0xE900000000000065 || (sub_1A524EAB4() & 1) != 0)
  {
    sub_1A52408B4();
    v29 = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](v29);
    *(&v38 - 2) = v30;
    swift_getKeyPath();
    sub_1A3EE4384();
    sub_1A5240884();

    v31 = *(v42 + 8);
    v31(v15, v13);
    v43 = sub_1A524B484();
    sub_1A5240894();

    (*(v10 + 8))(v12, v9);
    v32 = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](v32);
    *(&v38 - 2) = v33;
    swift_getKeyPath();
    sub_1A3EE43D8();
    sub_1A5240884();

    v31(v19, v13);
    v43 = sub_1A524A0E4();
    v35 = v40;
    v34 = v41;
    sub_1A5240894();

    (*(v39 + 8))(v7, v35);
    return (*(v42 + 56))(v34, 0, 1, v13);
  }

  else
  {
    v36 = v41;
    v37 = *(v42 + 56);

    return v37(v36, 1, 1, v13);
  }
}

void sub_1A496CB48()
{
  sub_1A3EE4384();
  sub_1A5240B64();
  __break(1u);
}

void sub_1A496CC60()
{
  sub_1A3EE43D8();
  sub_1A5240B64();
  __break(1u);
}

uint64_t sub_1A496CCA4(uint64_t a1)
{
  sub_1A4972FC4(0, &qword_1EB1460D8, sub_1A4973470, MEMORY[0x1E6981E70], MEMORY[0x1E697F948]);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v17 - v3;
  sub_1A4973470(0);
  v6 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + 24))
  {
    *v8 = sub_1A5249584();
    *(v8 + 1) = 0;
    v8[16] = 0;
    sub_1A4975020(0, &qword_1EB1460E0, sub_1A4973540);
    sub_1A496DE48(a1, &v8[*(v9 + 44)]);
    v10 = sub_1A524A094();
    sub_1A52438F4();
    sub_1A52438E4();
    sub_1A5247BC4();
    v11 = &v8[*(v6 + 36)];
    *v11 = v10;
    *(v11 + 1) = v12;
    *(v11 + 2) = v13;
    *(v11 + 3) = v14;
    *(v11 + 4) = v15;
    v11[40] = 0;
    sub_1A49750EC(v8, v4, sub_1A4973470);
    swift_storeEnumTagMultiPayload();
    sub_1A4974448();
    sub_1A5249744();
    return sub_1A497508C(v8, sub_1A4973470);
  }

  else
  {
    swift_storeEnumTagMultiPayload();
    sub_1A4974448();
    return sub_1A5249744();
  }
}

uint64_t sub_1A496CEF8()
{
  sub_1A44E4F68(0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(v0 + 48);
  sub_1A49754F8(0, &qword_1EB146098, &type metadata for LemonadeSharedAlbumInvitationsCell.SharedAlbumActiveAlert, MEMORY[0x1E6981790]);
  sub_1A524B6A4();
  if (v15)
  {
    if (v15 != 1)
    {
      _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
    }

    v16 = *(v0 + 64);
    v17 = *(v0 + 80);
    sub_1A49754F8(0, &unk_1EB13A670, MEMORY[0x1E69E6158], MEMORY[0x1E6981790]);
    sub_1A524B6A4();
    return v15;
  }

  else
  {
    v5 = sub_1A5241284();
    (*(*(v5 - 8) + 56))(v3, 1, 1, v5);
    sub_1A4973574(0, &qword_1EB12B110, sub_1A3D78B5C, MEMORY[0x1E69E6F90]);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_1A52FC9F0;
    v7 = sub_1A4605538();
    v9 = v8;
    v10 = MEMORY[0x1E69E6158];
    *(v6 + 56) = MEMORY[0x1E69E6158];
    v11 = sub_1A3D710E8();
    *(v6 + 64) = v11;
    *(v6 + 32) = v7;
    *(v6 + 40) = v9;
    v12 = sub_1A4605458();
    *(v6 + 96) = v10;
    *(v6 + 104) = v11;
    *(v6 + 72) = v12;
    *(v6 + 80) = v13;
    v4 = sub_1A524C6A4();

    sub_1A4972D94(v3, sub_1A44E4F68);
  }

  return v4;
}

uint64_t sub_1A496D148@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v66 = a2;
  sub_1A3FF7760(0);
  v64 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v57 = &v55 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4974908(0, &qword_1EB1460C8, sub_1A4974630, sub_1A3FF7760, MEMORY[0x1E697F948]);
  v61 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v65 = &v55 - v6;
  sub_1A4974EEC(0, &qword_1EB1460D0, MEMORY[0x1E697F948]);
  v58 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v55 - v8;
  sub_1A4974630(0);
  v62 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v59 = &v55 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4973574(0, &qword_1EB1249B0, MEMORY[0x1E697BDB0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v55 - v13;
  sub_1A4973A98(0, &qword_1EB127480, MEMORY[0x1E6981148], MEMORY[0x1E6981138], MEMORY[0x1E697D670]);
  v16 = v15;
  v63 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v55 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v55 - v20;
  MEMORY[0x1EEE9AC00](v22);
  v60 = &v55 - v23;
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v55 - v25;
  v67 = a1[3];
  sub_1A49754F8(0, &qword_1EB146098, &type metadata for LemonadeSharedAlbumInvitationsCell.SharedAlbumActiveAlert, MEMORY[0x1E6981790]);
  v27 = sub_1A524B6A4();
  if (v68)
  {
    if (v68 == 1)
    {
      *&v67 = sub_1A3C38BD4();
      *(&v67 + 1) = v28;
      sub_1A5247B34();
      v29 = sub_1A5247B54();
      (*(*(v29 - 8) + 56))(v14, 0, 1, v29);
      sub_1A3D5F9DC();
      sub_1A524B734();
      v30 = v63;
      (*(v63 + 16))(v9, v26, v16);
      swift_storeEnumTagMultiPayload();
      sub_1A3D6E520();
      sub_1A49730AC(&qword_1EB121040, sub_1A3FF7760);
      v31 = v59;
      sub_1A5249744();
      sub_1A4975708(v31, v65, sub_1A4974630);
      swift_storeEnumTagMultiPayload();
      sub_1A4974700();
      sub_1A5249744();
      sub_1A4972D94(v31, sub_1A4974630);
      return (*(v30 + 8))(v26, v16);
    }

    else
    {
      sub_1A5247B14();
      v43 = sub_1A5247B54();
      v44 = *(v43 - 8);
      v58 = *(v44 + 56);
      v59 = (v44 + 56);
      v58(v14, 0, 1, v43);
      v45 = swift_allocObject();
      v46 = memcpy((v45 + 16), a1, 0x118uLL);
      v55 = &v55;
      MEMORY[0x1EEE9AC00](v46);
      *(&v55 - 2) = a1;
      sub_1A40AD710(a1, &v67);
      v47 = v26;
      v56 = v26;
      sub_1A524B6F4();
      *&v67 = sub_1A3C38BD4();
      *(&v67 + 1) = v48;
      sub_1A5247B34();
      v58(v14, 0, 1, v43);
      sub_1A3D5F9DC();
      v49 = v60;
      sub_1A524B734();
      v50 = v63;
      v51 = *(v63 + 16);
      v51(v21, v47, v16);
      v51(v18, v49, v16);
      v52 = v57;
      v51(v57, v21, v16);
      sub_1A3FF7794();
      v51((v52 + *(v53 + 48)), v18, v16);
      v54 = *(v50 + 8);
      v54(v18, v16);
      v54(v21, v16);
      sub_1A4975708(v52, v65, sub_1A3FF7760);
      swift_storeEnumTagMultiPayload();
      sub_1A4974700();
      sub_1A49730AC(&qword_1EB121040, sub_1A3FF7760);
      sub_1A5249744();
      sub_1A4972D94(v52, sub_1A3FF7760);
      v54(v49, v16);
      return (v54)(v56, v16);
    }
  }

  else
  {
    MEMORY[0x1EEE9AC00](v27);
    *(&v55 - 2) = a1;
    sub_1A524B704();
    *&v67 = sub_1A3C38BD4();
    *(&v67 + 1) = v33;
    sub_1A5247B34();
    v34 = sub_1A5247B54();
    (*(*(v34 - 8) + 56))(v14, 0, 1, v34);
    sub_1A3D5F9DC();
    v35 = v60;
    sub_1A524B734();
    v36 = v26;
    v56 = v26;
    v37 = v57;
    v38 = v63;
    v39 = *(v63 + 16);
    v39(v21, v36, v16);
    v39(v18, v35, v16);
    v39(v37, v21, v16);
    sub_1A3FF7794();
    v39((v37 + *(v40 + 48)), v18, v16);
    v41 = *(v38 + 8);
    v41(v18, v16);
    v41(v21, v16);
    sub_1A4975708(v37, v9, sub_1A3FF7760);
    swift_storeEnumTagMultiPayload();
    sub_1A3D6E520();
    sub_1A49730AC(&qword_1EB121040, sub_1A3FF7760);
    v42 = v59;
    sub_1A5249744();
    sub_1A4975708(v42, v65, sub_1A4974630);
    swift_storeEnumTagMultiPayload();
    sub_1A4974700();
    sub_1A5249744();
    sub_1A4972D94(v42, sub_1A4974630);
    sub_1A4972D94(v37, sub_1A3FF7760);
    v41(v60, v16);
    return (v41)(v56, v16);
  }
}

void sub_1A496DCD0(void *a1)
{
  v10 = *(v1 + 88);
  v15 = 0;
  sub_1A49754F8(0, &qword_1EB1274B0, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);
  sub_1A524B6B4();
  v3 = [a1 photoLibrary];
  if (v3)
  {
    v4 = v3;
    v5 = objc_opt_self();
    v6 = [v5 sharedAlbumsEnabledForPhotoLibrary_];

    if (v6)
    {
      v7 = swift_allocObject();
      *(v7 + 16) = a1;
      v13 = sub_1A497498C;
      v14 = v7;
      *&v10 = MEMORY[0x1E69E9820];
      *(&v10 + 1) = 1107296256;
      v11 = sub_1A3D6084C;
      v12 = &block_descriptor_310;
      v8 = _Block_copy(&v10);
      v9 = a1;

      [v5 markInvitationToSharedAlbumAsSpam:v9 completionHandler:v8];
      _Block_release(v8);
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1A496DE48@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1A4973DDC();
  v5 = v4 - 8;
  MEMORY[0x1EEE9AC00](v4);
  v51 = &v38[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v38[-v8];
  sub_1A4973690();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v38[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v38[-v14];
  v16 = *(a1 + 16) + OBJC_IVAR____TtC12PhotosUICore23LemonadeInvitationModel_cellSpecs;
  v17 = *(v16 + 112);
  v64[6] = *(v16 + 96);
  v64[7] = v17;
  v65 = *(v16 + 128);
  v18 = *(v16 + 48);
  v64[2] = *(v16 + 32);
  v64[3] = v18;
  v19 = *(v16 + 80);
  v64[4] = *(v16 + 64);
  v64[5] = v19;
  v20 = *(v16 + 16);
  v64[0] = *v16;
  v64[1] = v20;
  sub_1A524BC74();
  sub_1A52481F4();
  v49 = v54;
  v50 = v52;
  v47 = v57;
  v48 = v56;
  v68 = 1;
  v67 = v53;
  v66 = v55;
  *v15 = sub_1A5249314();
  *(v15 + 1) = 0;
  v15[16] = 0;
  sub_1A4975020(0, &qword_1EB1460E8, sub_1A4973724);
  v22 = &v15[*(v21 + 44)];
  v42 = v15;
  sub_1A496E264(a1, v64, v22);
  sub_1A524BC74();
  sub_1A52481F4();
  v45 = v60;
  v46 = v58;
  v43 = v63;
  v44 = v62;
  v71 = 1;
  v70 = v59;
  v69 = v61;
  *v9 = sub_1A5249574();
  *(v9 + 1) = 0;
  v9[16] = 0;
  sub_1A4975020(0, &qword_1EB1460F0, sub_1A4973EF0);
  sub_1A497055C(v64, a1, &v9[*(v23 + 44)]);
  v24 = sub_1A524A244();
  KeyPath = swift_getKeyPath();
  v26 = &v9[*(v5 + 44)];
  *v26 = KeyPath;
  v26[1] = v24;
  v27 = v68;
  v28 = v67;
  v29 = v66;
  sub_1A49750EC(v15, v12, sub_1A4973690);
  v39 = v71;
  v40 = v70;
  v41 = v69;
  v30 = v51;
  sub_1A4975708(v9, v51, sub_1A4973DDC);
  *a2 = 0;
  *(a2 + 8) = v27;
  v31 = v49;
  *(a2 + 16) = v50;
  *(a2 + 24) = v28;
  *(a2 + 32) = v31;
  *(a2 + 40) = v29;
  v32 = v47;
  *(a2 + 48) = v48;
  *(a2 + 56) = v32;
  sub_1A49735D8();
  v34 = v33;
  sub_1A49750EC(v12, a2 + *(v33 + 48), sub_1A4973690);
  v35 = a2 + *(v34 + 64);
  *v35 = 0;
  *(v35 + 8) = v39;
  *(v35 + 16) = v46;
  *(v35 + 24) = v40;
  *(v35 + 32) = v45;
  *(v35 + 40) = v41;
  v36 = v43;
  *(v35 + 48) = v44;
  *(v35 + 56) = v36;
  sub_1A4975708(v30, a2 + *(v34 + 80), sub_1A4973DDC);
  sub_1A4972D94(v9, sub_1A4973DDC);
  sub_1A497508C(v42, sub_1A4973690);
  sub_1A4972D94(v30, sub_1A4973DDC);
  return sub_1A497508C(v12, sub_1A4973690);
}

uint64_t sub_1A496E264@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v149 = a2;
  v181 = a3;
  sub_1A4973B80();
  v5 = *(v4 - 8);
  v189 = v4;
  v190 = v5;
  MEMORY[0x1EEE9AC00](v4);
  v180 = (&v148 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1A41C369C();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v182 = &v148 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v148 - v11;
  sub_1A49739DC(0);
  v14 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v174 = &v148 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v148 - v17;
  sub_1A4973958();
  v187 = v19;
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v171 = &v148 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v172 = &v148 - v23;
  sub_1A49738C4();
  v186 = v24;
  MEMORY[0x1EEE9AC00](v24);
  v170 = &v148 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v148 - v27;
  sub_1A4973C80(0, &qword_1EB145F40, sub_1A49738C4);
  v185 = v29;
  MEMORY[0x1EEE9AC00](v29);
  v169 = &v148 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31);
  v33 = &v148 - v32;
  sub_1A4973840();
  v183 = v34;
  MEMORY[0x1EEE9AC00](v34);
  v176 = &v148 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v36);
  v155 = &v148 - v37;
  sub_1A49737F8(0);
  v184 = v38;
  MEMORY[0x1EEE9AC00](v38);
  v179 = &v148 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v40);
  v178 = &v148 - v41;
  MEMORY[0x1EEE9AC00](v42);
  v173 = &v148 - v43;
  MEMORY[0x1EEE9AC00](v44);
  v177 = &v148 - v45;
  MEMORY[0x1EEE9AC00](v46);
  v154 = &v148 - v47;
  MEMORY[0x1EEE9AC00](v48);
  v188 = &v148 - v49;
  v211 = *(a1 + 152);
  v197 = *(a1 + 152);
  v50 = swift_allocObject();
  memcpy((v50 + 16), a1, 0x118uLL);
  sub_1A3F30668(&v211, v196);
  v167 = a1;
  sub_1A40AD710(a1, v196);
  v166 = sub_1A3D5F9DC();
  sub_1A524B754();
  v51 = sub_1A524A0C4();
  v52 = v149;
  sub_1A5247BC4();
  v168 = v8;
  v53 = &v12[*(v8 + 36)];
  *v53 = v51;
  *(v53 + 1) = v54;
  *(v53 + 2) = v55;
  *(v53 + 3) = v56;
  *(v53 + 4) = v57;
  v53[40] = 0;
  v58 = v52[7];
  sub_1A524BC74();
  v165 = v58;
  sub_1A5248AD4();
  sub_1A49756A0(v12, v18, sub_1A41C369C);
  v59 = &v18[*(v14 + 36)];
  v60 = v202;
  *(v59 + 4) = v201;
  *(v59 + 5) = v60;
  *(v59 + 6) = v203;
  v61 = v198;
  *v59 = v197;
  *(v59 + 1) = v61;
  v62 = v200;
  *(v59 + 2) = v199;
  *(v59 + 3) = v62;
  sub_1A524A1A4();
  v63 = sub_1A4973A18();
  v64 = v172;
  v175 = v14;
  v164 = v63;
  sub_1A524A8F4();
  sub_1A4972D94(v18, sub_1A49739DC);
  v65 = v52;
  v66 = v52[3];
  LOBYTE(v12) = sub_1A524A064();
  v67 = *(v20 + 32);
  v172 = (v20 + 32);
  v163 = v67;
  v67(v28, v64, v187);
  v68 = &v28[*(v186 + 36)];
  *v68 = v66;
  v68[8] = v12;
  v69 = v52[4];
  KeyPath = swift_getKeyPath();
  sub_1A49753C4(v28, v33, sub_1A49738C4);
  v71 = &v33[*(v185 + 36)];
  *v71 = KeyPath;
  v71[1] = v69;
  v72 = v52[1];
  v73 = v155;
  v74 = &v155[*(v183 + 36)];
  v162 = sub_1A5248A14();
  v75 = *(v162 + 20);
  v76 = *MEMORY[0x1E697F468];
  v77 = sub_1A52494A4();
  v78 = *(v77 - 8);
  v79 = *(v78 + 104);
  v161 = v76;
  v159 = v79;
  v160 = v77;
  v158 = v78 + 104;
  (v79)(&v74[v75], v76);
  *v74 = v72;
  *(v74 + 1) = v72;
  sub_1A3E42C88();
  v157 = v80;
  *&v74[*(v80 + 36)] = 256;
  sub_1A3D2D5C4(v33, v73);

  v81 = sub_1A524BC74();
  v83 = v82;
  v84 = v154;
  v85 = &v154[*(v184 + 36)];
  v86 = v167;
  v196[0] = *(v167 + 104);
  sub_1A49754F8(0, &qword_1EB1274B0, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);
  v156 = v87;
  sub_1A524B6A4();
  v88 = 1;
  if (v204 == 1)
  {
    v89 = sub_1A524BC74();
    v90 = v180;
    *v180 = v89;
    *(v90 + 8) = v91;
    sub_1A4975020(0, &qword_1EB146100, sub_1A4973C14);
    sub_1A49701B0(v65, v90 + *(v92 + 44));
    sub_1A49756A0(v90, v85, sub_1A4973B80);
    v88 = 0;
  }

  v93 = *(v190 + 56);
  v190 += 56;
  v151 = v93;
  v93(v85, v88, 1, v189);
  sub_1A4973AEC();
  v150 = v94;
  v95 = (v85 + *(v94 + 36));
  *v95 = v81;
  v95[1] = v83;
  sub_1A49753C4(v73, v84, sub_1A4973840);
  sub_1A49753C4(v84, v188, sub_1A49737F8);
  sub_1A524BC74();
  sub_1A52481F4();
  v154 = v206;
  v155 = v204;
  v152 = v209;
  v153 = v208;
  v195 = 1;
  v194 = v205;
  v193 = v207;
  v210 = *(v86 + 168);
  v192 = *(v86 + 168);
  v96 = swift_allocObject();
  memcpy((v96 + 16), v86, 0x118uLL);
  sub_1A40AD710(v86, v196);
  sub_1A3F30668(&v210, v196);
  v97 = v182;
  sub_1A524B754();
  v98 = sub_1A524A0C4();
  sub_1A5247BC4();
  v99 = &v97[*(v168 + 36)];
  *v99 = v98;
  *(v99 + 1) = v100;
  *(v99 + 2) = v101;
  *(v99 + 3) = v102;
  *(v99 + 4) = v103;
  v99[40] = 0;
  sub_1A524BC74();
  v104 = 1;
  sub_1A5248AD4();
  v105 = v97;
  v106 = v174;
  sub_1A49756A0(v105, v174, sub_1A41C369C);
  v107 = (v106 + *(v175 + 36));
  v108 = v196[5];
  v109 = v196[6];
  v107[4] = v196[4];
  v107[5] = v108;
  v107[6] = v109;
  v110 = v196[1];
  *v107 = v196[0];
  v107[1] = v110;
  v111 = v196[3];
  v107[2] = v196[2];
  v107[3] = v111;
  sub_1A524A194();
  v112 = v171;
  sub_1A524A8F4();
  sub_1A4972D94(v106, sub_1A49739DC);
  v113 = *(v65 + 40);
  v114 = v65;
  v115 = sub_1A524A064();
  v116 = v170;
  v163(v170, v112, v187);
  v117 = &v116[*(v186 + 36)];
  *v117 = v113;
  v117[8] = v115;
  v118 = *(v65 + 48);
  v119 = swift_getKeyPath();
  v120 = v116;
  v121 = v169;
  sub_1A49753C4(v120, v169, sub_1A49738C4);
  v122 = (v121 + *(v185 + 36));
  *v122 = v119;
  v122[1] = v118;
  v123 = v176;
  v124 = &v176[*(v183 + 36)];
  v159(&v124[*(v162 + 20)], v161, v160);
  *v124 = v72;
  *(v124 + 1) = v72;
  *&v124[*(v157 + 36)] = 256;
  sub_1A3D2D5C4(v121, v123);

  v125 = sub_1A524BC74();
  v127 = v126;
  v128 = v173;
  v129 = &v173[*(v184 + 36)];
  v192 = *(v86 + 120);
  sub_1A524B6A4();
  if (v191 == 1)
  {
    v130 = sub_1A524BC74();
    v131 = v180;
    *v180 = v130;
    *(v131 + 8) = v132;
    sub_1A4975020(0, &qword_1EB146100, sub_1A4973C14);
    sub_1A49701B0(v114, v131 + *(v133 + 44));
    sub_1A49756A0(v131, v129, sub_1A4973B80);
    v104 = 0;
  }

  v151(v129, v104, 1, v189);
  v134 = (v129 + *(v150 + 36));
  *v134 = v125;
  v134[1] = v127;
  sub_1A49753C4(v123, v128, sub_1A4973840);
  v135 = v177;
  sub_1A49753C4(v128, v177, sub_1A49737F8);
  v136 = v188;
  v137 = v178;
  sub_1A49750EC(v188, v178, sub_1A49737F8);
  v138 = v195;
  v139 = v194;
  v140 = v193;
  v141 = v179;
  sub_1A49750EC(v135, v179, sub_1A49737F8);
  v142 = v181;
  sub_1A49750EC(v137, v181, sub_1A49737F8);
  sub_1A4973758();
  v144 = v142 + *(v143 + 48);
  *v144 = 0;
  *(v144 + 8) = v138;
  v145 = v154;
  *(v144 + 16) = v155;
  *(v144 + 24) = v139;
  *(v144 + 32) = v145;
  *(v144 + 40) = v140;
  v146 = v152;
  *(v144 + 48) = v153;
  *(v144 + 56) = v146;
  sub_1A49750EC(v141, v142 + *(v143 + 64), sub_1A49737F8);
  sub_1A497508C(v135, sub_1A49737F8);
  sub_1A497508C(v136, sub_1A49737F8);
  sub_1A497508C(v141, sub_1A49737F8);
  return sub_1A497508C(v137, sub_1A49737F8);
}

uint64_t sub_1A496F128(uint64_t a1)
{
  v2 = sub_1A5246F24();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v13[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = sub_1A46052B8();
  if (v6)
  {
    v7 = v6;
    sub_1A496F34C(1, v6);
    v15 = *(a1 + 104);
    LOBYTE(v14) = 1;
    sub_1A49754F8(0, &qword_1EB1274B0, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);
    sub_1A524B6B4();
    v14 = *(a1 + 88);
    v15 = v14;
    v13[15] = 0;
    v16 = *(&v14 + 1);
    sub_1A4975708(&v16, v13, sub_1A445E630);
    sub_1A524B6B4();

    return sub_1A4975548(&v15);
  }

  else
  {
    v9 = sub_1A3C56D80();
    (*(v3 + 16))(v5, v9, v2);
    v10 = sub_1A5246F04();
    v11 = sub_1A524D244();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_1A3C1C000, v10, v11, "Shared Album no longer available to accept. Ignoring.", v12, 2u);
      MEMORY[0x1A590EEC0](v12, -1, -1);
    }

    return (*(v3 + 8))(v5, v2);
  }
}

void sub_1A496F34C(int a1, void *a2)
{
  v3 = v2;
  LODWORD(v66) = a1;
  v5 = sub_1A5246F24();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v63 = v58 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v58 - v9;
  v11 = sub_1A3C56D80();
  v59 = *(v6 + 16);
  v60 = v11;
  v59(v10);
  v12 = a2;
  v13 = sub_1A5246F04();
  v14 = sub_1A524D264();

  v15 = os_log_type_enabled(v13, v14);
  v65 = v12;
  if (v15)
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v62 = v3;
    v58[1] = v17;
    *&v67 = v17;
    *v16 = 136315650;
    v18 = [v12 title];
    v64 = v6;
    v19 = v18;
    sub_1A524C674();
    v61 = v5;

    sub_1A3C2EF94();
  }

  v20 = *(v6 + 8);
  v20(v10, v5);
  if ((v66 & 1) == 0)
  {
    v67 = *(v3 + 88);
    LOBYTE(aBlock) = 0;
    sub_1A49754F8(0, &qword_1EB1274B0, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);
    sub_1A524B6B4();
    [objc_opt_self() declineInvitationToSharedAlbum:v65 completionHandler:0];
    goto LABEL_13;
  }

  sub_1A3C52C70(0, &qword_1EB126910);
  v21 = [swift_getObjCClassFromMetadata() sharedInstance];
  v22 = [v21 simulatedSubscriptionError];

  if (v22 > 1)
  {
    if (v22 == 2)
    {
      v44 = *(v3 + 264);
      v43 = *(v3 + 272);
      v67 = *(v3 + 48);
      LOBYTE(aBlock) = 1;
      v45 = MEMORY[0x1E6981790];
      sub_1A49754F8(0, &qword_1EB146098, &type metadata for LemonadeSharedAlbumInvitationsCell.SharedAlbumActiveAlert, MEMORY[0x1E6981790]);
      sub_1A524B6B4();
      v67 = *(v3 + 64);
      v68 = *(v3 + 80);
      aBlock = v44;
      v70 = v43;
      sub_1A49754F8(0, &unk_1EB13A670, MEMORY[0x1E69E6158], v45);
      _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
    }

    if (v22 != 3)
    {
      goto LABEL_28;
    }

    v67 = *(v3 + 48);
    LOBYTE(aBlock) = 0;
    v46 = MEMORY[0x1E6981790];
    sub_1A49754F8(0, &qword_1EB146098, &type metadata for LemonadeSharedAlbumInvitationsCell.SharedAlbumActiveAlert, MEMORY[0x1E6981790]);
    sub_1A524B6B4();
    v67 = *(v3 + 64);
    v68 = *(v3 + 80);
    aBlock = 0;
    v70 = 0xE000000000000000;
    sub_1A49754F8(0, &unk_1EB13A670, MEMORY[0x1E69E6158], v46);
    sub_1A524B6B4();
    v67 = *(v3 + 32);
    LOBYTE(aBlock) = 1;
LABEL_20:
    sub_1A49754F8(0, &qword_1EB1274B0, MEMORY[0x1E69E6370], v46);
    sub_1A524B6B4();
    return;
  }

  if (!v22)
  {
    v64 = v6;
    v23 = v5;
    v24 = [v65 photoLibrary];
    if (v24)
    {
      v25 = v24;
      v26 = objc_opt_self();
      v27 = [v26 sharedAlbumsEnabledForPhotoLibrary_];

      if (!v27)
      {
        v67 = *(v3 + 48);
        LOBYTE(aBlock) = 0;
        v47 = MEMORY[0x1E6981790];
        sub_1A49754F8(0, &qword_1EB146098, &type metadata for LemonadeSharedAlbumInvitationsCell.SharedAlbumActiveAlert, MEMORY[0x1E6981790]);
        sub_1A524B6B4();
        v67 = *(v3 + 64);
        v68 = *(v3 + 80);
        aBlock = 0;
        v70 = 0xE000000000000000;
        sub_1A49754F8(0, &unk_1EB13A670, MEMORY[0x1E69E6158], v47);
        sub_1A524B6B4();
        v67 = *(v3 + 32);
        LOBYTE(aBlock) = 1;
        sub_1A49754F8(0, &qword_1EB1274B0, MEMORY[0x1E69E6370], v47);
        sub_1A524B6B4();
        goto LABEL_13;
      }

      v67 = *(v3 + 88);
      LOBYTE(aBlock) = 0;
      sub_1A49754F8(0, &qword_1EB1274B0, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);
      v22 = &v67;
      sub_1A524B6B4();
      v28 = [v65 photoLibrary];
      if (v28)
      {
        v29 = v28;
        v30 = [v26 hasReachedLimitOfAcceptedSharedAlbumsInPhotoLibrary_];

        v31 = v63;
        if (v30)
        {
          v32 = v23;
          (v59)(v63, v60, v23);
          v33 = v65;
          v34 = sub_1A5246F04();
          v35 = sub_1A524D244();

          if (os_log_type_enabled(v34, v35))
          {
            v36 = swift_slowAlloc();
            v37 = swift_slowAlloc();
            v62 = v3;
            v66 = v37;
            *&v67 = v37;
            *v36 = 136446210;
            v38 = [v33 uuid];
            v61 = v32;
            v39 = v38;
            sub_1A524C674();

            sub_1A3C2EF94();
          }

          v20(v31, v23);
          v22 = objc_opt_self();
          v52 = [v33 localizedTitle];
          v53 = [v22 errorForReachingMaxSubscriptionLimitWithAlbumTitle_];

          if (v53)
          {
            swift_getErrorValue();
            v54 = sub_1A524EBE4();
            v56 = v55;
            v67 = *(v3 + 48);
            LOBYTE(aBlock) = 1;
            v57 = MEMORY[0x1E6981790];
            sub_1A49754F8(0, &qword_1EB146098, &type metadata for LemonadeSharedAlbumInvitationsCell.SharedAlbumActiveAlert, MEMORY[0x1E6981790]);
            sub_1A524B6B4();
            v67 = *(v3 + 64);
            v68 = *(v3 + 80);
            aBlock = v54;
            v70 = v56;
            sub_1A49754F8(0, &unk_1EB13A670, MEMORY[0x1E69E6158], v57);
            _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
          }

          goto LABEL_27;
        }

        v48 = swift_allocObject();
        v49 = v65;
        *(v48 + 16) = v65;
        memcpy((v48 + 24), v3, 0x118uLL);
        v73 = sub_1A49749C0;
        v74 = v48;
        aBlock = MEMORY[0x1E69E9820];
        v70 = 1107296256;
        v71 = sub_1A3D6084C;
        v72 = &block_descriptor_26_5;
        v50 = _Block_copy(&aBlock);
        v51 = v49;
        sub_1A40AD710(v3, &v67);

        [v26 acceptInvitationToSharedAlbum:v51 completionHandler:v50];
        _Block_release(v50);
LABEL_13:
        v40 = objc_opt_self();
        v41 = sub_1A524C634();

        sub_1A3E75770(MEMORY[0x1E69E7CC0]);
        sub_1A3C52C70(0, &qword_1EB12B160);
        v42 = sub_1A524C3D4();

        [v40 sendEvent:v41 withPayload:v42];

        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  if (v22 == 1)
  {
    v67 = *(v3 + 48);
    LOBYTE(aBlock) = 1;
    v46 = MEMORY[0x1E6981790];
    sub_1A49754F8(0, &qword_1EB146098, &type metadata for LemonadeSharedAlbumInvitationsCell.SharedAlbumActiveAlert, MEMORY[0x1E6981790]);
    sub_1A524B6B4();
    v67 = *(v3 + 64);
    v68 = *(v3 + 80);
    aBlock = 0xD00000000000001ALL;
    v70 = 0x80000001A53F4430;
    sub_1A49754F8(0, &unk_1EB13A670, MEMORY[0x1E69E6158], v46);
    sub_1A524B6B4();
    v67 = *(v3 + 32);
    LOBYTE(aBlock) = 1;
    goto LABEL_20;
  }

LABEL_28:
  type metadata accessor for PXSharedAlbumsSettingsLemonadeSimulatedSubscriptionError(0);
  *&v67 = v22;
  sub_1A524EB44();
  __break(1u);
}

uint64_t sub_1A496FF8C(uint64_t a1)
{
  v2 = sub_1A5246F24();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v13[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = sub_1A46052B8();
  if (v6)
  {
    v7 = v6;
    sub_1A496F34C(0, v6);
    v15 = *(a1 + 120);
    LOBYTE(v14) = 1;
    sub_1A49754F8(0, &qword_1EB1274B0, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);
    sub_1A524B6B4();
    v14 = *(a1 + 88);
    v15 = v14;
    v13[15] = 0;
    v16 = *(&v14 + 1);
    sub_1A4975708(&v16, v13, sub_1A445E630);
    sub_1A524B6B4();

    return sub_1A4975548(&v15);
  }

  else
  {
    v9 = sub_1A3C56D80();
    (*(v3 + 16))(v5, v9, v2);
    v10 = sub_1A5246F04();
    v11 = sub_1A524D244();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_1A3C1C000, v10, v11, "Shared Album no longer available to decline. Ignoring.", v12, 2u);
      MEMORY[0x1A590EEC0](v12, -1, -1);
    }

    return (*(v3 + 8))(v5, v2);
  }
}

uint64_t sub_1A49701B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v37 = a2;
  sub_1A4973C50(0);
  v4 = v3 - 8;
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v36 - v8;
  v10 = sub_1A524B394();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3E42C60(0);
  v15 = v14 - 8;
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v18);
  v21 = (&v36 - v20);
  (*(v11 + 104))(v13, *MEMORY[0x1E69814D8], v10, v19);
  v22 = sub_1A524B4C4();
  v23 = *(a1 + 8);
  v24 = v21 + *(v15 + 44);
  v25 = *(sub_1A5248A14() + 20);
  v26 = *MEMORY[0x1E697F468];
  v27 = sub_1A52494A4();
  (*(*(v27 - 8) + 104))(&v24[v25], v26, v27);
  *v24 = v23;
  *(v24 + 1) = v23;
  sub_1A3E42C88();
  *&v24[*(v28 + 36)] = 256;
  *v21 = v22;
  sub_1A5248074();
  v29 = sub_1A524B434();
  KeyPath = swift_getKeyPath();
  sub_1A4973C80(0, &qword_1EB145F98, sub_1A411848C);
  v32 = &v9[*(v31 + 36)];
  *v32 = KeyPath;
  v32[1] = v29;
  *&v9[*(v4 + 44)] = 0x3FF0000000000000;
  sub_1A4975708(v21, v17, sub_1A3E42C60);
  sub_1A4975708(v9, v6, sub_1A4973C50);
  v33 = v37;
  sub_1A4975708(v17, v37, sub_1A3E42C60);
  sub_1A4973030(0, &qword_1EB145F88, sub_1A3E42C60, sub_1A4973C50);
  sub_1A4975708(v6, v33 + *(v34 + 48), sub_1A4973C50);
  sub_1A4972D94(v9, sub_1A4973C50);
  sub_1A4972D94(v21, sub_1A3E42C60);
  sub_1A4972D94(v6, sub_1A4973C50);
  return sub_1A4972D94(v17, sub_1A3E42C60);
}

id sub_1A497055C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v76 = a2;
  v78 = a3;
  sub_1A4974108();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v79 = &v67[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v6);
  v77 = &v67[-v7];
  sub_1A3DF1428();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v67[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1A4972FC4(0, &qword_1EB145FE8, sub_1A3DF1428, MEMORY[0x1E697EC00], MEMORY[0x1E697E830]);
  v70 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v73 = &v67[-v13];
  sub_1A4973FD8();
  v72 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v75 = &v67[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v16);
  v71 = &v67[-v17];
  MEMORY[0x1EEE9AC00](v18);
  v74 = &v67[-v19];
  result = [objc_opt_self() sharingDisplayNameIncludingEmail:1 allowsEmail:1];
  if (result)
  {
    v21 = result;
    v22 = sub_1A524C674();
    v24 = v23;

    *&v83 = v22;
    *(&v83 + 1) = v24;
    v25 = MEMORY[0x1E69E6158];
    v26 = sub_1A524C8D4();
    v28 = v27;
    sub_1A3C38BD4();
    sub_1A4973574(0, &qword_1EB12B110, sub_1A3D78B5C, MEMORY[0x1E69E6F90]);
    v29 = swift_allocObject();
    *(v29 + 16) = xmmword_1A52F8E10;
    *(v29 + 56) = v25;
    *(v29 + 64) = sub_1A3D710E8();
    *(v29 + 32) = v26;
    *(v29 + 40) = v28;
    v30 = sub_1A524C6C4();
    v32 = v31;

    *&v83 = v30;
    *(&v83 + 1) = v32;
    sub_1A3D5F9DC();
    v33 = sub_1A524A464();
    v35 = v34;
    LOBYTE(v29) = v36;
    v38 = v37;
    v39 = *(a1 + 64);
    v68 = *(a1 + 72);
    KeyPath = swift_getKeyPath();
    v41 = *(v9 + 36);
    v69 = a1;
    v42 = &v11[v41];
    sub_1A4973574(0, &qword_1EB12C9D0, MEMORY[0x1E6980FB8], MEMORY[0x1E6980A08]);
    v44 = *(v43 + 28);
    v45 = *MEMORY[0x1E6980FA8];
    v46 = sub_1A524A354();
    (*(*(v46 - 8) + 104))(v42 + v44, v45, v46);
    *v42 = swift_getKeyPath();
    *v11 = v33;
    *(v11 + 1) = v35;
    v11[16] = v29 & 1;
    *(v11 + 3) = v38;
    *(v11 + 4) = KeyPath;
    *(v11 + 5) = v39;
    v11[48] = v68;
    sub_1A524BC84();
    sub_1A5248AD4();
    v47 = v73;
    sub_1A49756A0(v11, v73, sub_1A3DF1428);
    v48 = &v47[*(v70 + 36)];
    v49 = v88;
    v48[4] = v87;
    v48[5] = v49;
    v48[6] = v89;
    v50 = v84;
    *v48 = v83;
    v48[1] = v50;
    v51 = v86;
    v48[2] = v85;
    v48[3] = v51;
    v52 = swift_getKeyPath();
    v53 = v47;
    v54 = v71;
    sub_1A4975154(v53, v71);
    v55 = &v54[*(v72 + 36)];
    *v55 = v52;
    v55[8] = 0;
    v56 = v74;
    sub_1A49756A0(v54, v74, sub_1A4973FD8);
    sub_1A524BC74();
    sub_1A52481F4();
    v73 = v90;
    v72 = v92;
    v71 = v94;
    v70 = v95;
    v82 = 1;
    v81 = v91;
    v80 = v93;
    v57 = sub_1A5249314();
    v58 = v77;
    *v77 = v57;
    *(v58 + 8) = 0;
    *(v58 + 16) = 0;
    sub_1A4975020(0, &qword_1EB1460F8, sub_1A497419C);
    sub_1A4970CF4(v76, v69, v58 + *(v59 + 44));
    v60 = v75;
    sub_1A4975708(v56, v75, sub_1A4973FD8);
    LOBYTE(v42) = v82;
    LOBYTE(v39) = v81;
    v61 = v80;
    v62 = v79;
    sub_1A4975708(v58, v79, sub_1A4974108);
    v63 = v78;
    sub_1A4975708(v60, v78, sub_1A4973FD8);
    sub_1A4973F24();
    v65 = v63 + *(v64 + 48);
    *v65 = 0;
    *(v65 + 8) = v42;
    *(v65 + 16) = v73;
    *(v65 + 24) = v39;
    *(v65 + 32) = v72;
    *(v65 + 40) = v61;
    v66 = v70;
    *(v65 + 48) = v71;
    *(v65 + 56) = v66;
    sub_1A4975708(v62, v63 + *(v64 + 64), sub_1A4974108);
    sub_1A4972D94(v58, sub_1A4974108);
    sub_1A4972D94(v56, sub_1A4973FD8);
    sub_1A4972D94(v62, sub_1A4974108);
    return sub_1A4972D94(v60, sub_1A4973FD8);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1A4970CF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v95 = a2;
  v102 = a3;
  sub_1A4973A98(0, &qword_1EB127480, MEMORY[0x1E6981148], MEMORY[0x1E6981138], MEMORY[0x1E697D670]);
  v99 = v4;
  v97 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v83 = &v82 - v5;
  v6 = type metadata accessor for InvitationsItem(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v98 = &v82 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A41C3F80();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v101 = &v82 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v90 = &v82 - v11;
  sub_1A4973C80(0, &qword_1EB146020, sub_1A3DF1428);
  v88 = v12 - 8;
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v82 - v13;
  sub_1A4974328(0, &qword_1EB146018, &qword_1EB146020, sub_1A3DF1428);
  v92 = v15 - 8;
  MEMORY[0x1EEE9AC00](v15 - 8);
  v89 = &v82 - v16;
  sub_1A4974270();
  v94 = v17 - 8;
  MEMORY[0x1EEE9AC00](v17 - 8);
  v93 = &v82 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4974234(0);
  v96 = v19 - 8;
  MEMORY[0x1EEE9AC00](v19 - 8);
  v100 = &v82 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v91 = &v82 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v86 = &v82 - v24;
  sub_1A3C38BD4();
  sub_1A4973574(0, &qword_1EB12B110, sub_1A3D78B5C, MEMORY[0x1E69E6F90]);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_1A52F8E10;
  v84 = a1;
  v87 = *(a1 + 16);
  v26 = sub_1A46056B4();
  v28 = v27;
  *(v25 + 56) = MEMORY[0x1E69E6158];
  *(v25 + 64) = sub_1A3D710E8();
  *(v25 + 32) = v26;
  *(v25 + 40) = v28;
  v29 = sub_1A524C6C4();
  v31 = v30;

  v103[0] = v29;
  v103[1] = v31;
  v82 = sub_1A3D5F9DC();
  v32 = sub_1A524A464();
  v34 = v33;
  LOBYTE(v29) = v35;
  v37 = v36;
  v85 = *(v95 + 80);
  LODWORD(v95) = *(v95 + 88);
  KeyPath = swift_getKeyPath();
  sub_1A3DF1428();
  v40 = &v14[*(v39 + 36)];
  sub_1A4973574(0, &qword_1EB12C9D0, MEMORY[0x1E6980FB8], MEMORY[0x1E6980A08]);
  v42 = *(v41 + 28);
  v43 = *MEMORY[0x1E6980FA8];
  v44 = sub_1A524A354();
  (*(*(v44 - 8) + 104))(v40 + v42, v43, v44);
  *v40 = swift_getKeyPath();
  *v14 = v32;
  *(v14 + 1) = v34;
  v45 = v97;
  v14[16] = v29 & 1;
  *(v14 + 3) = v37;
  *(v14 + 4) = KeyPath;
  v46 = v86;
  v47 = v90;
  *(v14 + 5) = v85;
  v14[48] = v95;
  v48 = sub_1A524B334();
  v49 = swift_getKeyPath();
  v50 = &v14[*(v88 + 44)];
  *v50 = v49;
  v50[1] = v48;
  sub_1A524BC84();
  v51 = 1;
  sub_1A5248AD4();
  v52 = v89;
  sub_1A49751F0(v14, v89);
  v53 = (v52 + *(v92 + 44));
  v54 = v110;
  v53[4] = v109;
  v53[5] = v54;
  v53[6] = v111;
  v55 = v106;
  *v53 = v105;
  v53[1] = v55;
  v56 = v108;
  v53[2] = v107;
  v53[3] = v56;
  v57 = swift_getKeyPath();
  v58 = v52;
  v59 = v93;
  sub_1A4975270(v58, v93);
  v60 = v59 + *(v94 + 44);
  *v60 = v57;
  *(v60 + 8) = 0;
  LOBYTE(v57) = sub_1A524A0B4();
  sub_1A5247BC4();
  v62 = v61;
  v64 = v63;
  v66 = v65;
  v68 = v67;
  v69 = v59;
  v70 = v91;
  sub_1A49756A0(v69, v91, sub_1A4974270);
  v71 = v70 + *(v96 + 44);
  *v71 = v57;
  v72 = v99;
  *(v71 + 8) = v62;
  *(v71 + 16) = v64;
  *(v71 + 24) = v66;
  *(v71 + 32) = v68;
  *(v71 + 40) = 0;
  sub_1A49756A0(v70, v46, sub_1A4974234);
  v73 = v98;
  sub_1A4604CB0(v98);
  LOBYTE(v70) = sub_1A3F64938();
  sub_1A4972D94(v73, type metadata accessor for InvitationsItem);
  if ((v70 & 1) == 0)
  {
    v74 = v84;
    v112 = *(v84 + 184);
    v104 = *(v84 + 184);
    v75 = swift_allocObject();
    memcpy((v75 + 16), v74, 0x118uLL);
    sub_1A3F30668(&v112, v103);
    sub_1A40AD710(v74, v103);
    v76 = v83;
    sub_1A524B754();
    (*(v45 + 32))(v47, v76, v72);
    v51 = 0;
  }

  (*(v45 + 56))(v47, v51, 1, v72);
  v77 = v100;
  sub_1A4975708(v46, v100, sub_1A4974234);
  v78 = v101;
  sub_1A4975708(v47, v101, sub_1A41C3F80);
  v79 = v102;
  sub_1A4975708(v77, v102, sub_1A4974234);
  sub_1A4973030(0, &qword_1EB146000, sub_1A4974234, sub_1A41C3F80);
  sub_1A4975708(v78, v79 + *(v80 + 48), sub_1A41C3F80);
  sub_1A4972D94(v47, sub_1A41C3F80);
  sub_1A4972D94(v46, sub_1A4974234);
  sub_1A4972D94(v78, sub_1A41C3F80);
  return sub_1A4972D94(v77, sub_1A4974234);
}

void sub_1A49715B0(void *a1, void *a2)
{
  v4 = sub_1A5246F24();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v8 = a1;
    v9 = sub_1A3C56D80();
    (*(v5 + 16))(v7, v9, v4);
    v10 = a1;
    v11 = a2;
    v12 = sub_1A5246F04();
    v13 = sub_1A524D244();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v18 = v13;
      v15 = v14;
      v17 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v20 = v19;
      *v15 = 136315650;
      v16 = [v11 title];
      sub_1A524C674();

      sub_1A3C2EF94();
    }

    (*(v5 + 8))(v7, v4);
  }
}

uint64_t sub_1A4971894(void *a1, void *a2, void *a3)
{
  v67 = a2;
  v68 = a3;
  v4 = sub_1A524BEE4();
  v65 = *(v4 - 8);
  v66 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v64 = v57 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1A524BF64();
  v63 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = v57 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1A524BFC4();
  v62 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v57 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = v57 - v13;
  v15 = sub_1A5246F24();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = v57 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v69 = v57 - v20;
  if (a1)
  {
    v21 = a1;
    v22 = sub_1A3C56D80();
    v23 = v16;
    (*(v16 + 16))(v69, v22, v15);
    v24 = a1;
    v25 = v67;
    v26 = sub_1A5246F04();
    v27 = sub_1A524D244();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v66 = swift_slowAlloc();
      v67 = swift_slowAlloc();
      *&v70 = v67;
      *v28 = 136446466;
      v29 = [v25 uuid];
      sub_1A524C674();

      sub_1A3C2EF94();
    }

    (*(v23 + 8))(v69, v15);
    v30 = v68;
    v32 = v68[33];
    v31 = v68[34];
    v70 = *(v68 + 3);
    LOBYTE(aBlock) = 1;
    v33 = MEMORY[0x1E6981790];
    sub_1A49754F8(0, &qword_1EB146098, &type metadata for LemonadeSharedAlbumInvitationsCell.SharedAlbumActiveAlert, MEMORY[0x1E6981790]);
    sub_1A524B6B4();
    v70 = *(v30 + 4);
    v71 = v30[10];
    aBlock = v32;
    v73 = v31;
    sub_1A49754F8(0, &unk_1EB13A670, MEMORY[0x1E69E6158], v33);
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  v58 = v14;
  v59 = v11;
  v60 = v8;
  v61 = v9;
  v69 = v6;
  v34 = sub_1A3C56D80();
  v35 = v18;
  (*(v16 + 16))(v18, v34, v15);
  v36 = v67;
  v37 = sub_1A5246F04();
  v38 = sub_1A524D264();

  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    v57[3] = v38;
    v67 = v16;
    v40 = v39;
    *&v70 = swift_slowAlloc();
    *v40 = 136446210;
    v41 = [v36 uuid];
    sub_1A524C674();

    sub_1A3C2EF94();
  }

  (*(v16 + 8))(v35, v15);
  v43 = v63;
  v42 = v64;
  v44 = v61;
  v45 = v62;
  v47 = v58;
  v46 = v59;
  sub_1A3C52C70(0, &qword_1EB12B180);
  v64 = sub_1A524D474();
  sub_1A524BFA4();
  sub_1A524C014();
  v67 = *(v45 + 8);
  (v67)(v46, v44);
  v48 = swift_allocObject();
  v49 = v68;
  memcpy((v48 + 16), v68, 0x118uLL);
  *(v48 + 296) = v36;
  v76 = sub_1A4974EE0;
  v77 = v48;
  aBlock = MEMORY[0x1E69E9820];
  v73 = 1107296256;
  v74 = sub_1A3C2E0D0;
  v75 = &block_descriptor_48_3;
  v50 = _Block_copy(&aBlock);
  v51 = v36;
  sub_1A40AD710(v49, &v70);

  v52 = v60;
  sub_1A524BF14();
  *&v70 = MEMORY[0x1E69E7CC0];
  sub_1A49730AC(&qword_1EB12B1E0, MEMORY[0x1E69E7F60]);
  sub_1A3C38394();
  sub_1A49730AC(&qword_1EB12B1B0, sub_1A3C38394);
  v53 = v47;
  v54 = v66;
  sub_1A524E224();
  v55 = v64;
  MEMORY[0x1A5908790](v53, v52, v42, v50);
  _Block_release(v50);

  (*(v65 + 8))(v42, v54);
  (*(v43 + 8))(v52, v69);
  return (v67)(v53, v61);
}

void sub_1A497215C(uint64_t a1, void *a2)
{
  sub_1A3EC2B6C(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v66 = &v62 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = type metadata accessor for LemonadeNavigationDestination();
  MEMORY[0x1EEE9AC00](v69);
  v70 = &v62 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1A5246F24();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v65 = &v62 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v67 = &v62 - v11;
  v12 = sub_1A5249234();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v62 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = *(a1 + 8);
  v76 = *a1;
  v16 = v76;
  LODWORD(a1) = v77;

  v17 = v16;
  v68 = a1;
  if ((a1 & 1) == 0)
  {
    sub_1A524D254();
    v18 = sub_1A524A014();
    sub_1A5246DF4();

    sub_1A5249224();
    swift_getAtKeyPath();
    sub_1A4972D94(&v76, sub_1A429658C);
    (*(v13 + 8))(v15, v12);
    v17 = *&v74[0];
  }

  v71 = v15;
  v63 = v13;
  v64 = v12;
  v73 = v7;
  if (v17)
  {
    v19 = *(v17 + OBJC_IVAR____TtC12PhotosUICore25LemonadeNavigationContext_photoLibraryContext);

    v20 = *(v19 + 16);

    v21 = [v20 px_standardLibrarySpecificFetchOptions];

    v22 = objc_opt_self();
    sub_1A49754F8(0, &qword_1EB12B260, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_1A52F8E10;
    v24 = a2;
    v25 = [a2 uuid];
    v26 = sub_1A524C674();
    v28 = v27;

    *(v23 + 32) = v26;
    *(v23 + 40) = v28;
    v29 = sub_1A524CA14();

    v72 = v21;
    v30 = [v22 fetchAssetCollectionsWithLocalIdentifiers:v29 options:v21];

    v31 = [v30 firstObject];
    if (v31)
    {
      v32 = v31;
      v33 = sub_1A3C56D80();
      v34 = v8;
      v35 = *(v8 + 16);
      v36 = v67;
      v37 = v73;
      v35(v67, v33, v73);
      v38 = v24;
      v39 = sub_1A5246F04();
      v40 = sub_1A524D264();

      if (os_log_type_enabled(v39, v40))
      {
        v41 = swift_slowAlloc();
        v42 = swift_slowAlloc();
        v65 = v32;
        *&v74[0] = v42;
        *v41 = 136446210;
        v43 = [v38 uuid];
        sub_1A524C674();

        sub_1A3C2EF94();
      }

      (*(v34 + 8))(v36, v37);
      v54 = v71;
      v75 = 0;
      memset(v74, 0, sizeof(v74));
      v55 = v32;
      v56 = v70;
      sub_1A47A9538(v55, 0, 0, 0, v74, 0, 0, v70);
      swift_storeEnumTagMultiPayload();

      if ((v68 & 1) == 0)
      {
        sub_1A524D254();
        v57 = sub_1A524A014();
        sub_1A5246DF4();

        sub_1A5249224();
        swift_getAtKeyPath();
        sub_1A4972D94(&v76, sub_1A429658C);
        (*(v63 + 8))(v54, v64);
        v16 = *&v74[0];
      }

      if (v16)
      {
        v58 = sub_1A52434D4();
        v59 = v66;
        (*(*(v58 - 8) + 56))(v66, 1, 1, v58);
        v60 = sub_1A3C30368();
        v61 = sub_1A4657324(v56, 0, v60 & 1, 0, 0, v59, 0, 0);

        sub_1A3E00630(v61);

        sub_1A4972D94(v59, sub_1A3EC2B6C);
        sub_1A4972D94(v56, type metadata accessor for LemonadeNavigationDestination);
      }

      else
      {
        sub_1A4972D94(v56, type metadata accessor for LemonadeNavigationDestination);
      }
    }

    else
    {
      v44 = sub_1A3C56D80();
      v45 = v8;
      v46 = *(v8 + 16);
      v47 = v65;
      v48 = v73;
      v46(v65, v44, v73);
      v49 = v24;
      v50 = sub_1A5246F04();
      v51 = sub_1A524D244();

      if (os_log_type_enabled(v50, v51))
      {
        v52 = swift_slowAlloc();
        *&v74[0] = swift_slowAlloc();
        *v52 = 136446210;
        v53 = [v49 uuid];
        sub_1A524C674();

        sub_1A3C2EF94();
      }

      (*(v45 + 8))(v47, v48);
    }
  }

  else
  {
    __break(1u);
  }
}

__n128 sub_1A4972A74@<Q0>(unint64_t a1@<X0>, unsigned __int8 a2@<W1>, __n128 *a3@<X8>)
{
  KeyPath = swift_getKeyPath();
  sub_1A524B694();
  sub_1A524B694();
  sub_1A524B694();
  sub_1A524B694();
  sub_1A524B694();
  sub_1A524B694();
  v4 = sub_1A3C38BD4();
  v33 = v5;
  v34 = v4;
  v6 = sub_1A3C38BD4();
  v31 = v7;
  v32 = v6;
  v8 = sub_1A3C38BD4();
  v29 = v9;
  v30 = v8;
  v10 = sub_1A3C38BD4();
  v27 = v11;
  v28 = v10;
  v12 = sub_1A3C38BD4();
  v14 = v13;
  v15 = sub_1A3C38BD4();
  v17 = v16;
  v18 = sub_1A3C38BD4();
  v20 = v19;
  v21 = sub_1A3C38BD4();
  v23 = v22;
  v24 = sub_1A3C38BD4();
  a3->n128_u64[0] = KeyPath;
  a3[1].n128_u64[0] = a1;
  a3->n128_u8[8] = 0;
  a3[1].n128_u8[8] = a2;
  a3[2].n128_u8[0] = v38.n128_u8[0];
  a3[2].n128_u64[1] = v38.n128_u64[1];
  a3[3].n128_u8[0] = v38.n128_u8[0];
  a3[3].n128_u64[1] = v38.n128_u64[1];
  result = v38;
  a3[4] = v38;
  a3[5].n128_u64[0] = v39;
  a3[5].n128_u8[8] = v38.n128_u8[0];
  a3[6].n128_u64[0] = v38.n128_u64[1];
  a3[6].n128_u8[8] = v38.n128_u8[0];
  a3[7].n128_u64[0] = v38.n128_u64[1];
  a3[7].n128_u8[8] = v38.n128_u8[0];
  a3[8].n128_u64[0] = v38.n128_u64[1];
  a3[8].n128_u64[1] = v34;
  a3[9].n128_u64[0] = v33;
  a3[9].n128_u64[1] = v32;
  a3[10].n128_u64[0] = v31;
  a3[10].n128_u64[1] = v30;
  a3[11].n128_u64[0] = v29;
  a3[11].n128_u64[1] = v28;
  a3[12].n128_u64[0] = v27;
  a3[12].n128_u64[1] = v12;
  a3[13].n128_u64[0] = v14;
  a3[13].n128_u64[1] = v15;
  a3[14].n128_u64[0] = v17;
  a3[14].n128_u64[1] = v18;
  a3[15].n128_u64[0] = v20;
  a3[15].n128_u64[1] = v21;
  a3[16].n128_u64[0] = v23;
  a3[16].n128_u64[1] = v24;
  a3[17].n128_u64[0] = v26;
  return result;
}

uint64_t sub_1A4972D94(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1A4972DF4()
{
  if (!qword_1EB145EA8)
  {
    sub_1A4972EF4();
    sub_1A5243544();
    sub_1A49730AC(&qword_1EB145ED0, sub_1A4972EF4);
    sub_1A49730AC(&qword_1EB12EAA8, MEMORY[0x1E69C2510]);
    v0 = sub_1A5242904();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB145EA8);
    }
  }
}

void sub_1A4972EF4()
{
  if (!qword_1EB145EB0)
  {
    sub_1A4972F88(255);
    sub_1A49730AC(&qword_1EB145EC8, sub_1A4972F88);
    v0 = sub_1A524B8B4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB145EB0);
    }
  }
}

void sub_1A4972FC4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a5(a1, v9, a4);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

void sub_1A4973030(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), void (*a4)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    a4(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v7)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

uint64_t sub_1A49730AC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1A49730F4@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(sub_1A5243934() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(type metadata accessor for LemonadeSharedLibraryInvitationsCell() - 8);
  v7 = (*(v6 + 64) + ((v4 + v5 + *(v6 + 80)) & ~*(v6 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v1 + v7);
  v10 = *(v1 + v8);
  v11 = *(v1 + ((((((v8 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8));

  return sub_1A496A924(a1, v9, v10, v11);
}

void sub_1A4973224(uint64_t a1@<X8>)
{
  type metadata accessor for LemonadeSharedLibraryInvitationsCell();

  sub_1A496B1DC(a1);
}

void sub_1A497332C()
{
  if (!qword_1EB145EE8)
  {
    type metadata accessor for LemonadeSharedAlbumsAvatarView();
    sub_1A5243544();
    sub_1A4972FC4(255, &qword_1EB145EF0, sub_1A4973470, MEMORY[0x1E6981E70], MEMORY[0x1E697F960]);
    sub_1A49730AC(&qword_1EB134E00, type metadata accessor for LemonadeSharedAlbumsAvatarView);
    sub_1A49730AC(&qword_1EB12EAA8, MEMORY[0x1E69C2510]);
    sub_1A4974390();
    v0 = sub_1A5242904();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB145EE8);
    }
  }
}

void sub_1A49734AC()
{
  if (!qword_1EB145F00)
  {
    sub_1A4973540(255);
    sub_1A49730AC(&qword_1EB146038, sub_1A4973540);
    v0 = sub_1A524B894();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB145F00);
    }
  }
}

void sub_1A4973574(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_1A49735D8()
{
  if (!qword_1EB145F10)
  {
    sub_1A4973A98(255, &qword_1EB1284E0, MEMORY[0x1E6981840], MEMORY[0x1E697E048], MEMORY[0x1E697E830]);
    sub_1A4973690();
    sub_1A4973DDC();
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata, &qword_1EB145F10);
    }
  }
}

void sub_1A4973690()
{
  if (!qword_1EB145F18)
  {
    sub_1A4973724(255);
    sub_1A49730AC(&qword_1EB145FB8, sub_1A4973724);
    v0 = sub_1A524B784();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB145F18);
    }
  }
}

void sub_1A4973758()
{
  if (!qword_1EB145F28)
  {
    sub_1A49737F8(255);
    sub_1A4973A98(255, &qword_1EB1284E0, MEMORY[0x1E6981840], MEMORY[0x1E697E048], MEMORY[0x1E697E830]);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_1EB145F28);
    }
  }
}

void sub_1A4973840()
{
  if (!qword_1EB145F38)
  {
    sub_1A4973C80(255, &qword_1EB145F40, sub_1A49738C4);
    sub_1A3E42C88();
    v0 = sub_1A5248804();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB145F38);
    }
  }
}

void sub_1A49738C4()
{
  if (!qword_1EB145F48)
  {
    sub_1A4973958();
    sub_1A4973A98(255, &qword_1EB127B10, MEMORY[0x1E69815C0], MEMORY[0x1E6981568], MEMORY[0x1E6980460]);
    v0 = sub_1A5248804();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB145F48);
    }
  }
}

void sub_1A4973958()
{
  if (!qword_1EB145F50)
  {
    sub_1A49739DC(255);
    sub_1A4973A18();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB145F50);
    }
  }
}

unint64_t sub_1A4973A18()
{
  result = qword_1EB145F60;
  if (!qword_1EB145F60)
  {
    sub_1A49739DC(255);
    sub_1A41C3C14();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB145F60);
  }

  return result;
}

void sub_1A4973A98(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = a5(0, a3, a4);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_1A4973AEC()
{
  if (!qword_1EB145F68)
  {
    sub_1A4973574(255, &qword_1EB145F70, sub_1A4973B80, MEMORY[0x1E69E6720]);
    sub_1A4973D04();
    v0 = sub_1A5248AE4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB145F68);
    }
  }
}

void sub_1A4973B80()
{
  if (!qword_1EB145F78)
  {
    sub_1A4973C14(255);
    sub_1A49730AC(&qword_1EB145FA0, sub_1A4973C14);
    v0 = sub_1A524B8B4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB145F78);
    }
  }
}

void sub_1A4973C80(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    sub_1A497409C(255, &qword_1EB1277F0, &qword_1EB127560, MEMORY[0x1E69815C0]);
    v4 = sub_1A5248804();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_1A4973D04()
{
  result = qword_1EB145FA8;
  if (!qword_1EB145FA8)
  {
    sub_1A4973574(255, &qword_1EB145F70, sub_1A4973B80, MEMORY[0x1E69E6720]);
    sub_1A49730AC(&qword_1EB145FB0, sub_1A4973B80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB145FA8);
  }

  return result;
}

void sub_1A4973DDC()
{
  if (!qword_1EB145FC0)
  {
    sub_1A4973E5C();
    sub_1A497409C(255, &qword_1EB127820, &qword_1EB1276A0, MEMORY[0x1E6980F50]);
    v0 = sub_1A5248804();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB145FC0);
    }
  }
}

void sub_1A4973E5C()
{
  if (!qword_1EB145FC8)
  {
    sub_1A4973EF0(255);
    sub_1A49730AC(&qword_1EB146030, sub_1A4973EF0);
    v0 = sub_1A524B894();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB145FC8);
    }
  }
}

void sub_1A4973F24()
{
  if (!qword_1EB145FD8)
  {
    sub_1A4973FD8();
    sub_1A4973A98(255, &qword_1EB1284E0, MEMORY[0x1E6981840], MEMORY[0x1E697E048], MEMORY[0x1E697E830]);
    sub_1A4974108();
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_1EB145FD8);
    }
  }
}

void sub_1A4973FD8()
{
  if (!qword_1EB145FE0)
  {
    sub_1A4972FC4(255, &qword_1EB145FE8, sub_1A3DF1428, MEMORY[0x1E697EC00], MEMORY[0x1E697E830]);
    sub_1A49754F8(255, &unk_1EB127840, MEMORY[0x1E697E1E0], MEMORY[0x1E6980A08]);
    v0 = sub_1A5248804();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB145FE0);
    }
  }
}

void sub_1A497409C(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  if (!*a2)
  {
    sub_1A49754F8(255, a3, a4, MEMORY[0x1E69E6720]);
    v5 = sub_1A5249F44();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1A4974108()
{
  if (!qword_1EB145FF0)
  {
    sub_1A497419C(255);
    sub_1A49730AC(&qword_1EB146028, sub_1A497419C);
    v0 = sub_1A524B784();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB145FF0);
    }
  }
}

void sub_1A49741D8(uint64_t a1, unint64_t *a2, unint64_t *a3, void (*a4)(uint64_t), void (*a5)(uint64_t))
{
  if (!*a2)
  {
    sub_1A4973030(255, a3, a4, a5);
    v6 = sub_1A524BE24();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_1A4974270()
{
  if (!qword_1EB146010)
  {
    sub_1A4974328(255, &qword_1EB146018, &qword_1EB146020, sub_1A3DF1428);
    sub_1A49754F8(255, &unk_1EB127840, MEMORY[0x1E697E1E0], MEMORY[0x1E6980A08]);
    v0 = sub_1A5248804();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB146010);
    }
  }
}

void sub_1A4974328(uint64_t a1, unint64_t *a2, unint64_t *a3, void (*a4)(uint64_t))
{
  if (!*a2)
  {
    sub_1A4973C80(255, a3, a4);
    v5 = sub_1A5248804();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

unint64_t sub_1A4974390()
{
  result = qword_1EB146040;
  if (!qword_1EB146040)
  {
    sub_1A4972FC4(255, &qword_1EB145EF0, sub_1A4973470, MEMORY[0x1E6981E70], MEMORY[0x1E697F960]);
    sub_1A4974448();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB146040);
  }

  return result;
}

unint64_t sub_1A4974448()
{
  result = qword_1EB146048;
  if (!qword_1EB146048)
  {
    sub_1A4973470(255);
    sub_1A49730AC(&qword_1EB146050, sub_1A49734AC);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB146048);
  }

  return result;
}

void sub_1A49744F8()
{
  if (!qword_1EB146058)
  {
    sub_1A49732F0(255);
    sub_1A49745E8(255);
    sub_1A4974650();
    sub_1A3D5F9DC();
    sub_1A4974734(&qword_1EB146080, sub_1A49745E8, sub_1A4974700);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB146058);
    }
  }
}

unint64_t sub_1A4974650()
{
  result = qword_1EB146070;
  if (!qword_1EB146070)
  {
    sub_1A49732F0(255);
    sub_1A49730AC(&qword_1EB146078, sub_1A497332C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB146070);
  }

  return result;
}

uint64_t sub_1A4974734(unint64_t *a1, void (*a2)(uint64_t), void (*a3)(void))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    a3();
    sub_1A49730AC(&qword_1EB121040, sub_1A3FF7760);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1A49747E8@<X0>(uint64_t a1@<X8>)
{
  sub_1A5243934();

  return sub_1A496BDD8(a1);
}

uint64_t sub_1A497488C()
{
  sub_1A5243934();

  return sub_1A496CCA4(v0 + 16);
}

void sub_1A4974908(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a4(255);
    v11 = a5(a1, v9, v10);
    if (!v12)
    {
      atomic_store(v11, a2);
    }
  }
}

unint64_t sub_1A4974A0C()
{
  result = qword_1EB1460A0;
  if (!qword_1EB1460A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1460A0);
  }

  return result;
}

void sub_1A4974AB4()
{
  sub_1A4973574(319, &qword_1EB124740, sub_1A3D63A58, MEMORY[0x1E697DCC0]);
  if (v0 <= 0x3F)
  {
    type metadata accessor for LemonadeInvitationModel();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1A4974B78(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 280))
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

uint64_t sub_1A4974BC0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 280) = 1;
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

    *(result + 280) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1A4974C68()
{
  result = qword_1EB1460A8;
  if (!qword_1EB1460A8)
  {
    sub_1A4972FC4(255, &qword_1EB1460B0, type metadata accessor for LemonadeSharedLibraryInvitationsCell, &type metadata for LemonadeSharedAlbumInvitationsCell, MEMORY[0x1E697F960]);
    sub_1A49730AC(&qword_1EB145EA0, type metadata accessor for LemonadeSharedLibraryInvitationsCell);
    sub_1A40AED88();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1460A8);
  }

  return result;
}

unint64_t sub_1A4974D50()
{
  result = qword_1EB1460B8;
  if (!qword_1EB1460B8)
  {
    sub_1A4974908(255, &qword_1EB146090, sub_1A49744F8, sub_1A3E42C88, MEMORY[0x1E697E830]);
    sub_1A49732F0(255);
    sub_1A49745E8(255);
    sub_1A4974650();
    sub_1A3D5F9DC();
    sub_1A4974734(&qword_1EB146080, sub_1A49745E8, sub_1A4974700);
    swift_getOpaqueTypeConformance2();
    sub_1A49730AC(&qword_1EB128A00, sub_1A3E42C88);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1460B8);
  }

  return result;
}

void sub_1A4974EEC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    sub_1A4973A98(255, &qword_1EB127480, MEMORY[0x1E6981148], MEMORY[0x1E6981138], MEMORY[0x1E697D670]);
    v7 = v6;
    sub_1A3FF7760(255);
    v9 = a3(a1, v7, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_1A4974F88()
{
  v0 = sub_1A46052B8();
  if (v0)
  {
    v1 = v0;
    sub_1A496DCD0(v0);
  }

  else
  {
    __break(1u);
  }
}

void sub_1A4974FE0(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v2 + 256);
  *a1 = *(v2 + 248);
  *(a1 + 8) = v3;
  *(a1 + 16) = 0;
  *(a1 + 24) = MEMORY[0x1E69E7CC0];
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

void sub_1A4975000(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v2 + 224);
  *a1 = *(v2 + 216);
  *(a1 + 8) = v3;
  *(a1 + 16) = 0;
  *(a1 + 24) = MEMORY[0x1E69E7CC0];
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

void sub_1A4975020(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1A52483B4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1A497508C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1A49750EC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A4975154(uint64_t a1, uint64_t a2)
{
  sub_1A4972FC4(0, &qword_1EB145FE8, sub_1A3DF1428, MEMORY[0x1E697EC00], MEMORY[0x1E697E830]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A49751F0(uint64_t a1, uint64_t a2)
{
  sub_1A4973C80(0, &qword_1EB146020, sub_1A3DF1428);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A4975270(uint64_t a1, uint64_t a2)
{
  sub_1A4974328(0, &qword_1EB146018, &qword_1EB146020, sub_1A3DF1428);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A4975300()
{
  v0 = MEMORY[0x1E6981790];
  sub_1A49754F8(0, &qword_1EB146098, &type metadata for LemonadeSharedAlbumInvitationsCell.SharedAlbumActiveAlert, MEMORY[0x1E6981790]);
  sub_1A524B6B4();
  sub_1A49754F8(0, &qword_1EB1274B0, MEMORY[0x1E69E6370], v0);
  return sub_1A524B6B4();
}

uint64_t sub_1A49753C4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t objectdestroy_13Tm_0()
{
  j__swift_release(*(v0 + 16), *(v0 + 24));

  return swift_deallocObject();
}

void sub_1A49754F8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_1A4975548(uint64_t a1)
{
  sub_1A49754F8(0, &qword_1EB1274B0, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1A49755C8(uint64_t a1, unint64_t *a2, void (*a3)(void))
{
  if (!*a2)
  {
    a3();
    v4 = sub_1A52408A4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1A49756A0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A4975708(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A4975780()
{
  sub_1A3C52C70(0, &qword_1EB12B140);
  result = sub_1A524DEE4();
  qword_1EB16B728 = result;
  return result;
}

id SharedCollectionsLog.getter()
{
  if (qword_1EB1E32A0 != -1)
  {
    swift_once();
  }

  v1 = qword_1EB16B728;

  return v1;
}

uint64_t SharedCollectionsLogger.getter()
{
  if (qword_1EB1E32A0 != -1)
  {
    swift_once();
  }

  v0 = qword_1EB16B728;

  return sub_1A5246F34();
}

Swift::String __swiftcall SharedCollectionsTitle(for:in:)(Swift::OpaquePointer a1, PHAssetCollection_optional *in)
{
  v135 = sub_1A52413D4();
  v134 = *(v135 - 8);
  MEMORY[0x1EEE9AC00](v135);
  v133 = &v126 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1A5240664();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v126 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v132 = sub_1A5241284();
  v131 = *(v132 - 8);
  MEMORY[0x1EEE9AC00](v132);
  v130 = &v126 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1A5241144();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v137 = &v126 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v138 = &v126 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v148 = &v126 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v159 = &v126 - v18;
  sub_1A3C7D2BC(0, &qword_1EB12AFE0, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v136 = &v126 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v139 = &v126 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v141 = &v126 - v24;
  MEMORY[0x1EEE9AC00](v25);
  v155 = &v126 - v26;
  MEMORY[0x1EEE9AC00](v27);
  v142 = &v126 - v28;
  MEMORY[0x1EEE9AC00](v29);
  v147 = &v126 - v30;
  MEMORY[0x1EEE9AC00](v31);
  v150 = &v126 - v32;
  v34 = MEMORY[0x1EEE9AC00](v33);
  v160 = &v126 - v35;
  if (in)
  {
    v36 = in;
    v37 = PHCollection.title.getter();
    if (v38)
    {
      v39 = v37;
      v40 = v38;
      v41 = HIBYTE(v38) & 0xF;
      if ((v38 & 0x2000000000000000) == 0)
      {
        v41 = v37 & 0xFFFFFFFFFFFFLL;
      }

      if (v41)
      {
        v42 = [(PHAssetCollection_optional *)v36 assetCollectionType];
        if (v42 <= 7 && ((1 << v42) & 0xD2) != 0 || (v107 = [(PHAssetCollection_optional *)v36 assetCollectionSubtype], (v107 - 1000000301) < 4) || v107 == 2 || v107 == 101)
        {

LABEL_48:
          v59 = v39;
          v60 = v40;
          goto LABEL_59;
        }
      }

      else
      {
      }
    }

    else
    {
    }
  }

  v43 = *(v11 + 56);
  v43(v160, 1, 1, v10, v34);
  v151 = v43;
  v152 = v11 + 56;
  (v43)(v150, 1, 1, v10);
  v140 = v11;
  v128 = v5;
  v127 = v6;
  v129 = v8;
  if (a1._rawValue >> 62)
  {
LABEL_56:
    v44 = sub_1A524E2B4();
  }

  else
  {
    v44 = *((a1._rawValue & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v154 = v10;
  v45 = v159;
  if (!v44)
  {
LABEL_35:
    v69 = v139;
    sub_1A3C5DC24(v160, v139, &qword_1EB12AFE0, MEMORY[0x1E6969530]);
    v70 = v140;
    v71 = *(v140 + 48);
    if (v71(v69, 1, v10) != 1)
    {
      v72 = *(v70 + 32);
      v73 = v138;
      v72(v138, v69, v10);
      v69 = v136;
      sub_1A3C5DC24(v150, v136, &qword_1EB12AFE0, MEMORY[0x1E6969530]);
      if (v71(v69, 1, v10) != 1)
      {
        v72(v137, v69, v10);
        v80 = [objc_allocWithZone(MEMORY[0x1E696AB78]) init];
        [v80 setDateStyle_];
        [v80 setTimeStyle_];
        v81 = v130;
        sub_1A5241244();
        v82 = sub_1A5241224();
        (*(v131 + 8))(v81, v132);
        [v80 setLocale_];

        v83 = v133;
        sub_1A5241394();
        sub_1A3C7D2BC(0, &qword_1EB1385B0, MEMORY[0x1E6969AD0], MEMORY[0x1E69E6F90]);
        v84 = sub_1A52413B4();
        v85 = *(v84 - 8);
        v86 = *(v85 + 72);
        v87 = (*(v85 + 80) + 32) & ~*(v85 + 80);
        v88 = swift_allocObject();
        *(v88 + 16) = xmmword_1A52FF950;
        v89 = v88 + v87;
        v90 = *(v85 + 104);
        v90(v89, *MEMORY[0x1E6969A48], v84);
        v90(v89 + v86, *MEMORY[0x1E6969A78], v84);
        v90(v89 + 2 * v86, *MEMORY[0x1E6969A68], v84);
        v91 = v138;
        sub_1A441F9F4(v88);
        swift_setDeallocating();
        swift_arrayDestroy();
        swift_deallocClassInstance();
        v92 = v129;
        sub_1A5241304();

        (*(v134 + 8))(v83, v135);
        v93 = sub_1A5240624();
        if (v94 & 1) != 0 || (v95 = v93, v96 = sub_1A5240644(), (v97) || (v98 = v96, v99 = sub_1A5240634(), (v100) || v95 <= 0 && v98 <= 0 && v99 < 1)
        {
          v101 = sub_1A5241074();
          v102 = [v80 stringFromDate_];

          v39 = sub_1A524C674();
          v40 = v103;

          (*(v127 + 8))(v92, v128);
          v104 = *(v140 + 8);
          v105 = v154;
          v104(v137, v154);
          v106 = v91;
        }

        else
        {
          v108 = sub_1A524C634();
          v109 = PXLocalizedSharedCollectionsString(v108);

          sub_1A524C674();
          v110 = sub_1A5241074();
          v111 = [v80 stringFromDate_];

          v112 = sub_1A524C674();
          v114 = v113;

          v115 = v137;
          v116 = sub_1A5241074();
          v117 = [v80 stringFromDate_];

          v118 = sub_1A524C674();
          v120 = v119;

          sub_1A3C712BC(0, &qword_1EB12B110, &qword_1EB12B100, MEMORY[0x1E69E7740], sub_1A3C34400);
          v121 = swift_allocObject();
          *(v121 + 16) = xmmword_1A52FC9F0;
          v122 = MEMORY[0x1E69E6158];
          *(v121 + 56) = MEMORY[0x1E69E6158];
          v123 = sub_1A3D710E8();
          *(v121 + 32) = v112;
          *(v121 + 40) = v114;
          *(v121 + 96) = v122;
          *(v121 + 104) = v123;
          *(v121 + 64) = v123;
          *(v121 + 72) = v118;
          *(v121 + 80) = v120;
          v39 = sub_1A524C6C4();
          v40 = v124;

          (*(v127 + 8))(v129, v128);
          v104 = *(v140 + 8);
          v105 = v154;
          v104(v115, v154);
          v106 = v138;
        }

        v104(v106, v105);
        v74 = MEMORY[0x1E6969530];
        v78 = v150;
        v79 = MEMORY[0x1E6969530];
        goto LABEL_47;
      }

      (*(v70 + 8))(v73, v10);
    }

    v74 = MEMORY[0x1E6969530];
    sub_1A3C42F30(v69, &qword_1EB12AFE0, MEMORY[0x1E6969530]);
    v75 = sub_1A524C634();
    v76 = PXLocalizedSharedCollectionsString(v75);

    v39 = sub_1A524C674();
    v40 = v77;

    v78 = v150;
    v79 = v74;
LABEL_47:
    sub_1A3C42F30(v78, &qword_1EB12AFE0, v79);
    sub_1A3C42F30(v160, &qword_1EB12AFE0, v74);
    goto LABEL_48;
  }

  v46 = 0;
  v153 = a1._rawValue & 0xC000000000000001;
  v157 = (v140 + 32);
  v47 = (v140 + 48);
  v149 = (v140 + 8);
  v143 = a1._rawValue & 0xFFFFFFFFFFFFFF8;
  v144 = (v140 + 16);
  v145 = v44;
  rawValue = a1._rawValue;
  while (1)
  {
    if (v153)
    {
      v48 = MEMORY[0x1A59097F0](v46, a1._rawValue);
      v49 = v155;
      v50 = v46 + 1;
      if (__OFADD__(v46, 1))
      {
        goto LABEL_54;
      }
    }

    else
    {
      v49 = v155;
      if (v46 >= *(v143 + 16))
      {
        goto LABEL_55;
      }

      v48 = *(a1._rawValue + v46 + 4);
      v50 = v46 + 1;
      if (__OFADD__(v46, 1))
      {
LABEL_54:
        __break(1u);
LABEL_55:
        __break(1u);
        goto LABEL_56;
      }
    }

    v51 = [v48 creationDate];
    if (v51)
    {
      break;
    }

    v10 = v154;
LABEL_16:
    ++v46;
    if (v50 == v44)
    {
      goto LABEL_35;
    }
  }

  v52 = v51;
  v158 = v48;
  v53 = v148;
  sub_1A52410F4();

  v10 = v154;
  v156 = *v157;
  v156(v45, v53, v154);
  v54 = MEMORY[0x1E6969530];
  v55 = v147;
  sub_1A3C5DC24(v160, v147, &qword_1EB12AFE0, MEMORY[0x1E6969530]);
  v56 = *v47;
  v57 = (*v47)(v55, 1, v10);
  sub_1A3C42F30(v55, &qword_1EB12AFE0, v54);
  if (v57 == 1)
  {
LABEL_27:
    v62 = v160;
    sub_1A3C42F30(v160, &qword_1EB12AFE0, MEMORY[0x1E6969530]);
    (*v144)(v62, v159, v10);
    (v151)(v62, 0, 1, v10);
LABEL_28:
    v63 = v150;
    sub_1A3C5DC24(v150, v49, &qword_1EB12AFE0, MEMORY[0x1E6969530]);
    if (v56(v49, 1, v10) == 1)
    {

      sub_1A3C42F30(v49, &qword_1EB12AFE0, MEMORY[0x1E6969530]);
      v45 = v159;
    }

    else
    {
      v64 = MEMORY[0x1E6969530];
      sub_1A3C42F30(v49, &qword_1EB12AFE0, MEMORY[0x1E6969530]);
      v65 = v64;
      v66 = v141;
      sub_1A3C5DC24(v63, v141, &qword_1EB12AFE0, v65);
      v59 = v56(v66, 1, v10);
      if (v59 == 1)
      {
        goto LABEL_58;
      }

      v45 = v159;
      v67 = sub_1A5241084();

      v68 = *v149;
      (*v149)(v66, v10);
      if ((v67 & 1) == 0)
      {
        v68(v45, v10);
        goto LABEL_34;
      }
    }

    sub_1A3C42F30(v63, &qword_1EB12AFE0, MEMORY[0x1E6969530]);
    v156(v63, v45, v10);
    (v151)(v63, 0, 1, v10);
LABEL_34:
    v44 = v145;
    a1._rawValue = rawValue;
    goto LABEL_16;
  }

  v58 = v142;
  sub_1A3C5DC24(v160, v142, &qword_1EB12AFE0, MEMORY[0x1E6969530]);
  v59 = v56(v58, 1, v10);
  if (v59 != 1)
  {
    v61 = sub_1A5241094();
    (*v149)(v58, v10);
    if ((v61 & 1) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_27;
  }

  __break(1u);
LABEL_58:
  __break(1u);
LABEL_59:
  result._object = v60;
  result._countAndFlagsBits = v59;
  return result;
}

id static PXSharedCollectionsUtilities.fetchParticipants(in:)(void *a1)
{
  v2 = swift_dynamicCastObjCProtocolConditional();
  if (v2)
  {
    v3 = v2;
    v4 = a1;
    result = [v4 photoLibrary];
    if (result)
    {
      v6 = result;
      v7 = [result px_standardLibrarySpecificFetchOptions];

      v8 = [objc_opt_self() fetchParticipantsInShare:v3 options:v7];
LABEL_6:

      return v8;
    }

    __break(1u);
  }

  else
  {
    result = [a1 photoLibrary];
    if (result)
    {
      v7 = result;
      v8 = [objc_opt_self() emptyFetchResultWithPhotoLibrary:result fetchType:*MEMORY[0x1E6978DD0]];
      goto LABEL_6;
    }
  }

  __break(1u);
  return result;
}

id SharedCollectionsFetchParticipants(in:)(void *a1)
{
  v2 = swift_dynamicCastObjCProtocolConditional();
  if (v2)
  {
    v3 = v2;
    v4 = a1;
    result = [v4 photoLibrary];
    if (result)
    {
      v6 = result;
      v7 = [result px_standardLibrarySpecificFetchOptions];

      v8 = [objc_opt_self() fetchParticipantsInShare:v3 options:v7];
LABEL_6:

      return v8;
    }

    __break(1u);
  }

  else
  {
    result = [a1 photoLibrary];
    if (result)
    {
      v7 = result;
      v8 = [objc_opt_self() emptyFetchResultWithPhotoLibrary:result fetchType:*MEMORY[0x1E6978DD0]];
      goto LABEL_6;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1A4976C7C(unint64_t a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x1E6978690]) init];
  v3 = [objc_allocWithZone(MEMORY[0x1E6978678]) init];
  [v2 setAdjustmentBakeInOptions_];

  v4 = [objc_allocWithZone(MEMORY[0x1E6978688]) init];
  v36 = v2;
  [v2 setMetadataCopyOptions_];

  if (a1 >> 62)
  {
LABEL_28:
    v5 = sub_1A524E2B4();
    if (v5)
    {
      goto LABEL_3;
    }

LABEL_29:
    v7 = MEMORY[0x1E69E7CC8];
LABEL_30:

    return v7;
  }

  v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v5)
  {
    goto LABEL_29;
  }

LABEL_3:
  v6 = 0;
  v34 = a1 & 0xFFFFFFFFFFFFFF8;
  v35 = a1 & 0xC000000000000001;
  v7 = MEMORY[0x1E69E7CC8];
  v33 = a1;
  while (1)
  {
    if (v35)
    {
      v10 = MEMORY[0x1A59097F0](v6, a1);
      v11 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        goto LABEL_24;
      }
    }

    else
    {
      if (v6 >= *(v34 + 16))
      {
        goto LABEL_25;
      }

      v10 = *(a1 + 8 * v6 + 32);
      v11 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
LABEL_24:
        __break(1u);
LABEL_25:
        __break(1u);
LABEL_26:
        __break(1u);
LABEL_27:
        __break(1u);
        goto LABEL_28;
      }
    }

    v37 = v11;
    v12 = v5;
    v13 = v10;
    v14 = [v10 uuid];
    if (!v14)
    {
      break;
    }

    v15 = v14;
    v16 = sub_1A524C674();
    v18 = v17;

    [v36 copy];
    sub_1A524E0B4();
    swift_unknownObjectRelease();
    sub_1A3C52C70(0, &qword_1EB12B618);
    swift_dynamicCast();
    a1 = v38;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v21 = sub_1A3C5DCA4(v16, v18);
    v22 = v7[2];
    v23 = (v20 & 1) == 0;
    v24 = v22 + v23;
    if (__OFADD__(v22, v23))
    {
      goto LABEL_26;
    }

    v25 = v20;
    if (v7[3] >= v24)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        if (v20)
        {
          goto LABEL_4;
        }
      }

      else
      {
        sub_1A4980660();
        if (v25)
        {
          goto LABEL_4;
        }
      }
    }

    else
    {
      sub_1A49803C8(v24, isUniquelyReferenced_nonNull_native);
      v26 = sub_1A3C5DCA4(v16, v18);
      if ((v25 & 1) != (v27 & 1))
      {
        goto LABEL_32;
      }

      v21 = v26;
      if (v25)
      {
LABEL_4:

        v8 = v7[7];
        v9 = *(v8 + 8 * v21);
        *(v8 + 8 * v21) = v38;

        goto LABEL_5;
      }
    }

    v7[(v21 >> 6) + 8] |= 1 << v21;
    v28 = (v7[6] + 16 * v21);
    *v28 = v16;
    v28[1] = v18;
    *(v7[7] + 8 * v21) = v38;

    v29 = v7[2];
    v30 = __OFADD__(v29, 1);
    v31 = v29 + 1;
    if (v30)
    {
      goto LABEL_27;
    }

    v7[2] = v31;
LABEL_5:
    ++v6;
    v5 = v12;
    a1 = v33;
    if (v37 == v12)
    {
      goto LABEL_30;
    }
  }

  __break(1u);
LABEL_32:
  result = sub_1A524EB84();
  __break(1u);
  return result;
}

void SharedCollectionsCreateAlbum(albumName:assets:photoLibrary:completionHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11[3] = a5;
  v11[4] = a6;
  v11[5] = a4;
  v11[6] = a3;
  v14 = sub_1A5246E54();
  v12 = *(v14 - 8);
  v6 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v11[2] = v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v13 = v11 - v8;
  v9 = sub_1A5246F24();
  MEMORY[0x1EEE9AC00](v9);
  if (qword_1EB1E32A0 != -1)
  {
    swift_once();
  }

  v10 = qword_1EB16B728;
  sub_1A5246F34();
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

void SharedCollectionsDeleteAlbums(sharedAlbums:completionHandler:)(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v24 = a2;
  v25 = a3;
  v4 = sub_1A5246F24();
  v5 = *(v4 - 8);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_19;
  }

  v10 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (1)
  {
    v26 = v9;
    v28 = v5;
    v29 = isUniquelyReferenced_nonNull_native;
    v30 = a1;
    if (!v10)
    {
LABEL_16:
      v22 = sub_1A3C56D80();
      (*(v28 + 16))(v26, v22, v29);
      _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
    }

    v11 = 0;
    v12 = a1 & 0xC000000000000001;
    v5 = a1 & 0xFFFFFFFFFFFFFF8;
    v13 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      if (v12)
      {
        isUniquelyReferenced_nonNull_native = MEMORY[0x1A59097F0](v11, a1, v7);
      }

      else
      {
        if (v11 >= *(v5 + 16))
        {
          goto LABEL_18;
        }

        isUniquelyReferenced_nonNull_native = *(a1 + 8 * v11 + 32);
      }

      v9 = isUniquelyReferenced_nonNull_native;
      v14 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      v15 = [isUniquelyReferenced_nonNull_native uuid];
      v16 = sub_1A524C674();
      v18 = v17;

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        isUniquelyReferenced_nonNull_native = sub_1A3D3D914(0, *(v13 + 16) + 1, 1, v13);
        v13 = isUniquelyReferenced_nonNull_native;
      }

      v20 = *(v13 + 16);
      v19 = *(v13 + 24);
      v9 = (v20 + 1);
      if (v20 >= v19 >> 1)
      {
        isUniquelyReferenced_nonNull_native = sub_1A3D3D914((v19 > 1), v20 + 1, 1, v13);
        v13 = isUniquelyReferenced_nonNull_native;
      }

      *(v13 + 16) = v9;
      v21 = v13 + 16 * v20;
      *(v21 + 32) = v16;
      *(v21 + 40) = v18;
      ++v11;
      a1 = v30;
      if (v14 == v10)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    v23 = isUniquelyReferenced_nonNull_native;
    v10 = sub_1A524E2B4();
    isUniquelyReferenced_nonNull_native = v23;
  }
}

void static PXSharedCollectionsUtilities.addAssets(to:assets:comment:completionHandler:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void, id))
{
  if ([a1 px_isCloudKitSharedAlbum])
  {

    SharedCollectionsAddAssetsToSharedCollection(sharedCollection:assets:completionHandler:)(a1);
  }

  sub_1A3C712BC(0, &qword_1EB1261F0, &qword_1EB126F70, MEMORY[0x1E69E7CA0] + 8, sub_1A4980D64);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1A52F8E10;
  *(inited + 32) = sub_1A524C674();
  *(inited + 72) = MEMORY[0x1E69E6158];
  *(inited + 40) = v8;
  *(inited + 48) = 0xD00000000000002CLL;
  *(inited + 56) = 0x80000001A53F46C0;
  sub_1A3C5D7A8(inited);
  swift_setDeallocating();
  sub_1A498087C(inited + 32, &qword_1EB126F70);
  v9 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
  v10 = sub_1A524C634();
  v11 = sub_1A524C3D4();

  v12 = [v9 initWithDomain:v10 code:0 userInfo:v11];

  v13 = v12;
  a5(0, v12);
}

void SharedCollectionsAddAssetsToSharedCollection(sharedCollection:assets:completionHandler:)(void *a1)
{
  v2 = sub_1A5246E54();
  MEMORY[0x1EEE9AC00](v2);
  MEMORY[0x1EEE9AC00](v3);
  v4 = sub_1A5246F24();
  v5 = [a1 uuid];
  sub_1A524C674();

  if (qword_1EB1E32A0 != -1)
  {
    swift_once();
  }

  qword_1EB16B728;
  sub_1A5246F34();
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t SharedCollectionsCKShare(from:error:)(void *a1, uint64_t a2)
{
  v4 = sub_1A5241C44();
  v26 = v4;
  v27 = sub_1A4981CAC(&qword_1EB1292F0, MEMORY[0x1E69BDD60]);
  v5 = __swift_allocate_boxed_opaque_existential_1(&v24);
  (*(*(v4 - 8) + 104))(v5, *MEMORY[0x1E69BDD20], v4);
  LOBYTE(v4) = sub_1A5241704();
  __swift_destroy_boxed_opaque_existential_0(&v24);
  if ((v4 & 1) != 0 && [a1 px_isCloudKitSharedAlbum])
  {
    objc_opt_self();
    v6 = swift_dynamicCastObjCClass();
    if (v6)
    {
      v7 = v6;
      v8 = a1;
      v9 = [v7 ckShareData];
      if (v9)
      {
        v10 = v9;
        v11 = sub_1A5240EA4();
        v13 = v12;

        sub_1A3C52C70(0, &qword_1EB139B30);
        sub_1A3C52C70(0, &qword_1EB146138);
        v22 = sub_1A524D3B4();
        sub_1A3C59280(v11, v13);

        return v22;
      }
    }

    if (a2)
    {
      sub_1A3C712BC(0, &qword_1EB120280, &qword_1EB120D48, MEMORY[0x1E69E6158], sub_1A4980D64);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1A52F8E10;
      *(inited + 32) = sub_1A524C674();
      *(inited + 40) = v15;
      v24 = 0;
      v25 = 0xE000000000000000;
      sub_1A524E404();
      MEMORY[0x1A5907B60](0x4465726168534B43, 0xEF20666F20617461);
      v16 = [a1 description];
      v17 = sub_1A524C674();
      v19 = v18;

      MEMORY[0x1A5907B60](v17, v19);

      MEMORY[0x1A5907B60](0xD000000000000038, 0x80000001A53F4730);
      v20 = v25;
      *(inited + 48) = v24;
      *(inited + 56) = v20;
      v21 = sub_1A3DAF1D4(inited);
      swift_setDeallocating();
      sub_1A498087C(inited + 32, &qword_1EB120D48);
      sub_1A497FB20(v21);
    }
  }

  return 0;
}

id static PXSharedCollectionsUtilities.allowedSharingOptionsForSharing()()
{
  v0 = [objc_opt_self() standardOptions];
  [v0 setSupportAllowingAddedParticipantsToInviteOthers_];
  [v0 setSupportAllowingAccessRequests_];
  return v0;
}

CKAllowedSharingOptions __swiftcall SharedCollectionsAllowedSharingOptionsForSharing()()
{
  v0 = [objc_opt_self() standardOptions];
  [v0 setSupportAllowingAddedParticipantsToInviteOthers_];
  [v0 setSupportAllowingAccessRequests_];
  return v0;
}

uint64_t static PXSharedCollectionsUtilities.makeItemProvider(from:)()
{
  v0 = sub_1A5241C44();
  v10[3] = v0;
  v10[4] = sub_1A4981CAC(&qword_1EB1292F0, MEMORY[0x1E69BDD60]);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v10);
  (*(*(v0 - 8) + 104))(boxed_opaque_existential_1, *MEMORY[0x1E69BDD20], v0);
  LOBYTE(v0) = sub_1A5241704();
  result = __swift_destroy_boxed_opaque_existential_0(v10);
  if (v0)
  {
    v3 = [objc_allocWithZone(MEMORY[0x1E696ACA0]) init];
    v4 = objc_allocWithZone(MEMORY[0x1E695B8A0]);
    v5 = sub_1A524C634();
    v6 = [v4 initWithContainerIdentifier:v5 environment:1];

    v7 = [objc_allocWithZone(MEMORY[0x1E695B8B0]) init];
    [v7 setUseZoneWidePCS_];
    [v7 setMmcsEncryptionSupport_];
    v8 = [objc_allocWithZone(MEMORY[0x1E695B888]) initWithContainerID:v6 options:v7];

    v9 = [objc_opt_self() standardOptions];
    [v9 setSupportAllowingAddedParticipantsToInviteOthers_];
    [v9 setSupportAllowingAccessRequests_];
    sub_1A524D294();

    return v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

NSItemProvider_optional __swiftcall SharedCollectionsMakeItemProvider(from:)(CKShare from)
{
  v1 = sub_1A5241C44();
  v13[3] = v1;
  v13[4] = sub_1A4981CAC(&qword_1EB1292F0, MEMORY[0x1E69BDD60]);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v13);
  (*(*(v1 - 8) + 104))(boxed_opaque_existential_1, *MEMORY[0x1E69BDD20], v1);
  v3 = sub_1A5241704();
  __swift_destroy_boxed_opaque_existential_0(v13);
  v5 = 0;
  if (v3)
  {
    v5 = [objc_allocWithZone(MEMORY[0x1E696ACA0]) init];
    v6 = objc_allocWithZone(MEMORY[0x1E695B8A0]);
    v7 = sub_1A524C634();
    v8 = [v6 initWithContainerIdentifier:v7 environment:1];

    v9 = [objc_allocWithZone(MEMORY[0x1E695B8B0]) init];
    [v9 setUseZoneWidePCS_];
    [v9 setMmcsEncryptionSupport_];
    v10 = [objc_allocWithZone(MEMORY[0x1E695B888]) initWithContainerID:v8 options:v9];

    v11 = [objc_opt_self() standardOptions];
    [v11 setSupportAllowingAddedParticipantsToInviteOthers_];
    [v11 setSupportAllowingAccessRequests_];
    sub_1A524D294();
  }

  v12 = v5;
  result.value.super.isa = v12;
  result.is_nil = v4;
  return result;
}

uint64_t static PXSharedCollectionsUtilities.fetchSharedCollection(withShareURL:inPhotoLibrary:acceptIfPending:completionHandler:)(uint64_t a1, void *a2, int a3, uint64_t a4, uint64_t a5)
{
  v23 = a4;
  v22 = a3;
  v8 = sub_1A5240E64();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  sub_1A3C7D2BC(0, &qword_1EB12B270, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v21[-v12];
  sub_1A524CC74();
  v14 = sub_1A524CCB4();
  (*(*(v14 - 8) + 56))(v13, 0, 1, v14);
  (*(v9 + 16))(&v21[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)], a1, v8);
  v15 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = 0;
  *(v16 + 24) = 0;
  (*(v9 + 32))(v16 + v15, &v21[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)], v8);
  v17 = v16 + ((v15 + v10 + 7) & 0xFFFFFFFFFFFFFFF8);
  *v17 = a2;
  *(v17 + 8) = v22;
  v18 = (v16 + ((v15 + v10 + 23) & 0xFFFFFFFFFFFFFFF8));
  *v18 = v23;
  v18[1] = a5;
  v19 = a2;

  sub_1A3D4D930(0, 0, v13, &unk_1A5377950, v16);
}

uint64_t sub_1A4979470(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8)
{
  v8[16] = a7;
  v8[17] = a8;
  v12 = sub_1A524BEE4();
  v8[18] = v12;
  v8[19] = *(v12 - 8);
  v8[20] = swift_task_alloc();
  v13 = sub_1A524BF64();
  v8[21] = v13;
  v8[22] = *(v13 - 8);
  v8[23] = swift_task_alloc();
  v14 = swift_task_alloc();
  v8[24] = v14;
  *v14 = v8;
  v14[1] = sub_1A49795D8;

  return SharedCollectionsFetchSharedCollection(withShareURL:inPhotoLibrary:acceptIfPending:)(a4, a5, a6);
}

uint64_t sub_1A49795D8(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 200) = v1;

  if (v1)
  {
    v5 = sub_1A4979968;
  }

  else
  {
    *(v4 + 208) = a1;
    v5 = sub_1A4979700;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1A4979700()
{
  v1 = v0[26];
  v2 = v0[23];
  v3 = v0[20];
  v14 = v0[22];
  v15 = v0[21];
  v4 = v0[18];
  v5 = v0[19];
  v6 = v0[16];
  v7 = v0[17];
  sub_1A3C52C70(0, &qword_1EB12B180);
  v13 = sub_1A524D474();
  v8 = swift_allocObject();
  v8[2] = v6;
  v8[3] = v7;
  v8[4] = v1;
  v0[12] = sub_1A49813B4;
  v0[13] = v8;
  v0[8] = MEMORY[0x1E69E9820];
  v0[9] = 1107296256;
  v0[10] = sub_1A3C2E0D0;
  v0[11] = &block_descriptor_58_4;
  v9 = _Block_copy(v0 + 8);
  v10 = v1;

  sub_1A524BF14();
  v0[15] = MEMORY[0x1E69E7CC0];
  sub_1A4981CAC(&qword_1EB12B1E0, MEMORY[0x1E69E7F60]);
  sub_1A3C7D2BC(0, &qword_1EB12B1C0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
  sub_1A3C5DE88();
  sub_1A524E224();
  MEMORY[0x1A5908800](0, v2, v3, v9);
  _Block_release(v9);

  (*(v5 + 8))(v3, v4);
  (*(v14 + 8))(v2, v15);

  v11 = v0[1];

  return v11();
}

uint64_t sub_1A4979968()
{
  v1 = v0[25];
  v2 = v0[23];
  v3 = v0[20];
  v14 = v0[22];
  v15 = v0[21];
  v4 = v0[18];
  v5 = v0[19];
  v6 = v0[16];
  v7 = v0[17];
  sub_1A3C52C70(0, &qword_1EB12B180);
  v13 = sub_1A524D474();
  v8 = swift_allocObject();
  v8[2] = v6;
  v8[3] = v7;
  v8[4] = v1;
  v0[6] = sub_1A4981380;
  v0[7] = v8;
  v0[2] = MEMORY[0x1E69E9820];
  v0[3] = 1107296256;
  v0[4] = sub_1A3C2E0D0;
  v0[5] = &block_descriptor_51_3;
  v9 = _Block_copy(v0 + 2);

  v10 = v1;
  sub_1A524BF14();
  v0[14] = MEMORY[0x1E69E7CC0];
  sub_1A4981CAC(&qword_1EB12B1E0, MEMORY[0x1E69E7F60]);
  sub_1A3C7D2BC(0, &qword_1EB12B1C0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
  sub_1A3C5DE88();
  sub_1A524E224();
  MEMORY[0x1A5908800](0, v2, v3, v9);
  _Block_release(v9);

  (*(v5 + 8))(v3, v4);
  (*(v14 + 8))(v2, v15);

  v11 = v0[1];

  return v11();
}

uint64_t SharedCollectionsFetchSharedCollection(withShareURL:inPhotoLibrary:acceptIfPending:)(uint64_t a1, uint64_t a2, char a3)
{
  *(v3 + 619) = a3;
  *(v3 + 320) = a1;
  *(v3 + 328) = a2;
  v4 = sub_1A5240E64();
  *(v3 + 336) = v4;
  *(v3 + 344) = *(v4 - 8);
  *(v3 + 352) = swift_task_alloc();
  *(v3 + 360) = swift_task_alloc();
  *(v3 + 368) = swift_task_alloc();
  v5 = sub_1A5246F24();
  *(v3 + 376) = v5;
  *(v3 + 384) = *(v5 - 8);
  *(v3 + 392) = swift_task_alloc();
  *(v3 + 400) = swift_task_alloc();
  *(v3 + 408) = swift_task_alloc();
  *(v3 + 416) = swift_task_alloc();
  *(v3 + 424) = swift_task_alloc();
  *(v3 + 432) = swift_task_alloc();
  *(v3 + 440) = swift_task_alloc();
  v6 = sub_1A5241144();
  *(v3 + 448) = v6;
  *(v3 + 456) = *(v6 - 8);
  *(v3 + 464) = swift_task_alloc();
  v7 = sub_1A5246E54();
  *(v3 + 472) = v7;
  *(v3 + 480) = *(v7 - 8);
  *(v3 + 488) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A4979E0C, 0, 0);
}

uint64_t sub_1A4979E0C()
{
  v1 = sub_1A5241C44();
  v0[37] = v1;
  v0[38] = sub_1A4981CAC(&qword_1EB1292F0, MEMORY[0x1E69BDD60]);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 34);
  (*(*(v1 - 8) + 104))(boxed_opaque_existential_1, *MEMORY[0x1E69BDD20], v1);
  LOBYTE(v1) = sub_1A5241704();
  __swift_destroy_boxed_opaque_existential_0((v0 + 34));
  v3 = 0;
  if (v1)
  {
    if (SharedCollectionsIsSharedCollectionURL(_:)())
    {
      if (qword_1EB1E32A0 != -1)
      {
        swift_once();
      }

      v4 = v0[41];
      v5 = qword_1EB16B728;
      v0[62] = qword_1EB16B728;
      v6 = v5;
      sub_1A5246E24();
      sub_1A524D654();
      sub_1A5246E04();
      sub_1A5241104();
      v7 = objc_opt_self();
      v8 = sub_1A5240D44();
      v0[63] = v8;
      v0[2] = v0;
      v0[7] = v0 + 39;
      v0[3] = sub_1A497A188;
      v9 = swift_continuation_init();
      sub_1A4981078();
      v0[25] = v10;
      v0[18] = MEMORY[0x1E69E9820];
      v0[19] = 1107296256;
      v0[20] = sub_1A49802EC;
      v0[21] = &block_descriptor_311;
      v0[22] = v9;
      [v7 fetchCollectionShareFromShareURL:v8 ignoreExistingShare:0 photoLibrary:v4 completionHandler:v0 + 18];

      return MEMORY[0x1EEE6DEC8](v0 + 2);
    }

    v3 = 2;
  }

  sub_1A43BDEA0();
  swift_allocError();
  *v11 = v3;
  *(v11 + 8) = 1;
  swift_willThrow();

  v12 = v0[1];

  return v12();
}

uint64_t sub_1A497A188()
{
  v1 = *(*v0 + 48);
  *(*v0 + 512) = v1;
  if (v1)
  {
    v2 = sub_1A497AF98;
  }

  else
  {
    v2 = sub_1A497A298;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1A497A298()
{
  v1 = *(v0 + 504);
  v2 = *(v0 + 440);
  v3 = *(v0 + 384);
  v4 = *(v0 + 368);
  v5 = *(v0 + 336);
  v6 = *(v0 + 344);
  v7 = *(v0 + 312);
  v8 = *(v0 + 320);
  *(v0 + 520) = v7;
  v9 = v7;

  v10 = sub_1A3C56D80();
  v11 = *(v3 + 16);
  *(v0 + 528) = v10;
  *(v0 + 536) = v11;
  *(v0 + 544) = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v50 = v11;
  v51 = v10;
  (v11)(v2);
  v12 = *(v6 + 16);
  *(v0 + 552) = v12;
  *(v0 + 560) = (v6 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v13 = v4;
  v14 = v9;
  v12(v13, v8, v5);
  v15 = sub_1A5246F04();
  LOBYTE(v2) = sub_1A524D264();

  v16 = os_log_type_enabled(v15, v2);
  v17 = *(v0 + 384);
  v48 = *(v0 + 376);
  v49 = *(v0 + 440);
  v18 = *(v0 + 368);
  v19 = *(v0 + 336);
  v20 = *(v0 + 344);
  if (v16)
  {
    v21 = swift_slowAlloc();
    swift_slowAlloc();
    *v21 = 136446466;
    v22 = [v14 uuid];
    sub_1A524C674();

    sub_1A3C2EF94();
  }

  v23 = *(v20 + 8);
  v23(v18, v19);
  v24 = v14;
  v25 = *(v17 + 8);
  v25(v49, v48);
  *(v0 + 576) = v25;
  *(v0 + 568) = v23;
  v50(*(v0 + 432), v51, *(v0 + 376));
  v26 = v24;
  v27 = sub_1A5246F04();
  v28 = sub_1A524D264();

  v29 = os_log_type_enabled(v27, v28);
  v30 = *(v0 + 432);
  v31 = *(v0 + 376);
  if (v29)
  {
    v32 = swift_slowAlloc();
    swift_slowAlloc();
    *v32 = 136446466;
    v33 = [v26 uuid];
    sub_1A524C674();

    sub_1A3C2EF94();
  }

  v25(v30, v31);
  v34 = *(v0 + 619);
  v35 = [v26 status];

  if (v35 == 2 && v34)
  {
    v36 = [v26 uuid];
    if (!v36)
    {
      sub_1A524C674();
      v36 = sub_1A524C634();
    }

    *(v0 + 584) = v36;
    v37 = *(v0 + 424);
    v38 = *(v0 + 376);
    *(v0 + 592) = sub_1A524C674();
    *(v0 + 600) = v39;
    v50(v37, v51, v38);
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  v52 = *(v0 + 520);
  v40 = *(v0 + 480);
  v41 = *(v0 + 488);
  v43 = *(v0 + 464);
  v42 = *(v0 + 472);
  v45 = *(v0 + 448);
  v44 = *(v0 + 456);
  sub_1A497FD88(v41, v43, *(v0 + 320));
  (*(v44 + 8))(v43, v45);
  (*(v40 + 8))(v41, v42);

  v46 = *(v0 + 8);

  return v46(v52);
}

uint64_t sub_1A497AAFC()
{
  v1 = *(*v0 + 112);
  *(*v0 + 608) = v1;
  if (v1)
  {
    v2 = sub_1A497B358;
  }

  else
  {
    v2 = sub_1A497AC0C;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

void sub_1A497AC0C()
{
  v1 = *(v0 + 618);

  v2 = *(v0 + 536);
  v3 = *(v0 + 528);
  v4 = *(v0 + 376);
  if (v1 == 1)
  {
    v2(*(v0 + 416), v3, v4);
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  v2(*(v0 + 408), v3, v4);
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A497AF98()
{
  v2 = v0[63];
  v1 = v0[64];
  v3 = v0[50];
  v4 = v0[47];
  v5 = v0[48];
  v31 = v0[45];
  v7 = v0[42];
  v6 = v0[43];
  v8 = v0[40];
  swift_willThrow();

  v9 = sub_1A3C56D80();
  (*(v5 + 16))(v3, v9, v4);
  (*(v6 + 16))(v31, v8, v7);
  v10 = v1;
  v11 = sub_1A5246F04();
  LOBYTE(v6) = sub_1A524D264();

  if (os_log_type_enabled(v11, v6))
  {
    v12 = v0[45];
    v13 = v0[42];
    v14 = v0[43];
    v15 = swift_slowAlloc();
    swift_slowAlloc();
    swift_slowAlloc();
    *v15 = 136315394;
    sub_1A4981CAC(&qword_1EB12B000, MEMORY[0x1E6968FB0]);
    sub_1A524EA44();
    (*(v14 + 8))(v12, v13);
    sub_1A3C2EF94();
  }

  v16 = v0[50];
  v17 = v0[47];
  v18 = v0[48];
  v19 = v0[45];
  v20 = v0[42];
  v21 = v0[43];

  (*(v21 + 8))(v19, v20);
  (*(v18 + 8))(v16, v17);
  v23 = v0[60];
  v22 = v0[61];
  v25 = v0[58];
  v24 = v0[59];
  v26 = v0[56];
  v27 = v0[57];
  v28 = v0[40];
  swift_willThrow();
  sub_1A497FD88(v22, v25, v28);
  (*(v27 + 8))(v25, v26);
  (*(v23 + 8))(v22, v24);

  v29 = v0[1];

  return v29();
}

void sub_1A497B358()
{
  v1 = v0[73];
  v9 = v0[69];
  v2 = v0[67];
  v3 = v0[66];
  v4 = v0[49];
  v5 = v0[47];
  v6 = v0[44];
  v7 = v0[42];
  v8 = v0[40];
  swift_willThrow();

  v2(v4, v3, v5);
  v9(v6, v8, v7);
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

PXSharedCollectionsUtilities __swiftcall PXSharedCollectionsUtilities.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

uint64_t sub_1A497BAD8()
{
  sub_1A3C52C70(0, &qword_1EB12B140);
  result = sub_1A524DEE4();
  qword_1EB1EC158 = result;
  return result;
}

uint64_t *sub_1A497BB3C()
{
  if (qword_1EB16E410 != -1)
  {
    swift_once();
  }

  return &qword_1EB1EC158;
}

void sub_1A497BB8C(char a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v24[8] = a7;
  v24[9] = a8;
  v24[14] = a9;
  v24[15] = a10;
  v14 = sub_1A5246E54();
  v24[10] = *(v14 - 8);
  v24[11] = v14;
  MEMORY[0x1EEE9AC00](v14);
  v24[12] = v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_1A5246F24();
  v24[13] = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  MEMORY[0x1EEE9AC00](v16);
  MEMORY[0x1EEE9AC00](v17);
  *&v19 = MEMORY[0x1EEE9AC00](v18).n128_u64[0];
  if (a1)
  {
    v24[6] = a5;
    v24[5] = a3;
    v20 = [a3 librarySpecificFetchOptions];
    objc_opt_self();
    sub_1A4981860(0, &qword_1EB12B260, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_1A52F8E10;
    swift_beginAccess();
    v22 = *(a4 + 24);
    *(v21 + 32) = *(a4 + 16);
    *(v21 + 40) = v22;
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  if (qword_1EB1E32A0 != -1)
  {
    swift_once();
  }

  v23 = qword_1EB16B728;
  sub_1A5246F34();
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

void sub_1A497C6F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v32 = a8;
  v33 = a7;
  v34 = a5;
  v35 = a3;
  v39 = a9;
  v31 = sub_1A524BEE4();
  v30 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v28 = v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_1A524BF64();
  v27 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v26 = v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_1A524BEF4();
  v24[1] = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v37 = sub_1A5246F24();
  v43 = *(v37 - 8);
  MEMORY[0x1EEE9AC00](v37);
  MEMORY[0x1EEE9AC00](v15);
  v24[0] = v24 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v42 = sub_1A5246E54();
  v41 = *(v42 - 8);
  MEMORY[0x1EEE9AC00](v42);
  v19 = v24 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EB1E32A0 != -1)
  {
    swift_once();
  }

  v36 = a12;
  v38 = a10;
  v20 = qword_1EB16B728;
  sub_1A5246E24();
  sub_1A524D644();
  v40 = v19;
  sub_1A5246E04();
  v21 = sub_1A5240E64();
  v22 = (*(*(v21 - 8) + 48))(a1, 1, v21);
  v23 = v20;
  if (v22 == 1)
  {
    sub_1A5246F34();
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  sub_1A5246F34();
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

void sub_1A497D59C(char a1, uint64_t a2, void *a3)
{
  v5 = sub_1A5246F24();
  MEMORY[0x1EEE9AC00](v5);
  *&v7 = MEMORY[0x1EEE9AC00](v6).n128_u64[0];
  if (a1)
  {
    v8 = [a3 uuid];
    sub_1A524C674();

    if (qword_1EB1E32A0 != -1)
    {
      swift_once();
    }

    v9 = qword_1EB16B728;
    sub_1A5246F34();
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  if (qword_1EB1E32A0 != -1)
  {
    swift_once();
  }

  v10 = qword_1EB16B728;
  sub_1A5246F34();
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

void sub_1A497D9EC(char a1)
{
  v2 = sub_1A5246F24();
  MEMORY[0x1EEE9AC00](v2);
  MEMORY[0x1EEE9AC00](v3);
  if (a1)
  {
    if (qword_1EB1E32A0 != -1)
    {
      swift_once();
    }

    v4 = qword_1EB16B728;
    sub_1A5246F34();
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  if (qword_1EB1E32A0 != -1)
  {
    swift_once();
  }

  v5 = qword_1EB16B728;
  sub_1A5246F34();
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

void sub_1A497DDC8(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1A5246F24();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v30 = v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 >> 62)
  {
    v10 = sub_1A524E2B4();
    if (!v10)
    {
      return;
    }
  }

  else
  {
    v10 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v10)
    {
      return;
    }
  }

  if ((a1 & 0xC000000000000001) != 0)
  {
    v11 = MEMORY[0x1A59097F0](0, a1, v8);
  }

  else
  {
    if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      __break(1u);
LABEL_27:
      __break(1u);
      return;
    }

    v11 = *(a1 + 32);
  }

  v12 = v11;
  v13 = [v11 photoLibrary];

  if (v13)
  {
    v28 = v6;
    v31 = v10;
    v27[2] = v13;
    v27[3] = a2;
    if (a1 >> 62)
    {
      v14 = sub_1A524E2B4();
    }

    else
    {
      v14 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v27[4] = a3;
    v29 = v7;
    if (!v14)
    {
      v16 = MEMORY[0x1E69E7CC0];
      goto LABEL_21;
    }

    aBlock = MEMORY[0x1E69E7CC0];
    sub_1A3C57108(0, v14 & ~(v14 >> 63), 0);
    if ((v14 & 0x8000000000000000) == 0)
    {
      v15 = 0;
      v16 = aBlock;
      do
      {
        if ((a1 & 0xC000000000000001) != 0)
        {
          v17 = MEMORY[0x1A59097F0](v15, a1);
        }

        else
        {
          v17 = *(a1 + 8 * v15 + 32);
        }

        v18 = v17;
        v19 = [v17 uuid];
        v20 = sub_1A524C674();
        v22 = v21;

        aBlock = v16;
        v24 = *(v16 + 16);
        v23 = *(v16 + 24);
        if (v24 >= v23 >> 1)
        {
          sub_1A3C57108((v23 > 1), v24 + 1, 1);
          v16 = aBlock;
        }

        ++v15;
        *(v16 + 16) = v24 + 1;
        v25 = v16 + 16 * v24;
        *(v25 + 32) = v20;
        *(v25 + 40) = v22;
      }

      while (v14 != v15);
      v7 = v29;
LABEL_21:
      aBlock = v16;
      sub_1A4981860(0, &qword_1EB126ED0, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
      sub_1A3CAD85C();
      sub_1A524C514();

      v26 = sub_1A3C56D80();
      (*(v7 + 16))(v30, v26, v28);
      _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
    }

    goto LABEL_27;
  }
}

uint64_t sub_1A497E4A8(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_1A524BEE4();
  v22 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_1A524BF64();
  v12 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A524D644();
  if (qword_1EB1E32A0 != -1)
  {
    swift_once();
  }

  sub_1A5246E04();
  sub_1A3C52C70(0, &qword_1EB12B180);
  v15 = sub_1A524D474();
  v16 = swift_allocObject();
  v16[2] = a4;
  v16[3] = a5;
  v16[4] = a1;
  v16[5] = a2;
  aBlock[4] = sub_1A4981C04;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1A3C2E0D0;
  aBlock[3] = &block_descriptor_145;
  v17 = _Block_copy(aBlock);

  v18 = a1;
  v19 = a2;

  sub_1A524BF14();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1A4981CAC(&qword_1EB12B1E0, MEMORY[0x1E69E7F60]);
  sub_1A3C7D2BC(0, &qword_1EB12B1C0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
  sub_1A3C5DE88();
  sub_1A524E224();
  MEMORY[0x1A5908800](0, v14, v11, v17);
  _Block_release(v17);

  (*(v22 + 8))(v11, v9);
  return (*(v12 + 8))(v14, v21);
}

void sub_1A497E820(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v16[4] = a3;
  v16[5] = a5;
  v7 = sub_1A5246F24();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v16 - v12;
  v14 = sub_1A3C56D80();
  v15 = *(v8 + 16);
  if (a1)
  {
    v16[2] = a2;
    v15(v13, v14, v7);
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  v17 = a1;
  v15(v10, v14, v7);
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

void sub_1A497EC68(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v24 = a5;
  v26 = sub_1A524BEE4();
  MEMORY[0x1EEE9AC00](v26);
  v9 = v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_1A524BF64();
  v25 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v22 = v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1A5246F24();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = v20 - v16;
  v18 = sub_1A3C56D80();
  v20[3] = v12;
  v19 = *(v12 + 16);
  v21 = a1;
  if (a1)
  {
    v20[2] = a4;
    v20[0] = a2;
    v19(v17, v18, v11);
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  v20[0] = v9;
  v19(v14, v18, v11);
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

void sub_1A497F354(char a1, uint64_t a2, void *a3)
{
  v5 = sub_1A5246F24();
  MEMORY[0x1EEE9AC00](v5);
  v7 = [a3 uuid];
  sub_1A524C674();

  if (a1)
  {
    if (qword_1EB1E32A0 != -1)
    {
      swift_once();
    }

    v8 = qword_1EB16B728;
    sub_1A5246F34();
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  if (qword_1EB1E32A0 != -1)
  {
    swift_once();
  }

  v9 = qword_1EB16B728;
  sub_1A5246F34();
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A497F7A4(char a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v20 = a4;
  v8 = sub_1A524BEE4();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_1A524BF64();
  v12 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v14 = &v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A524D644();
  if (qword_1EB1E32A0 != -1)
  {
    swift_once();
  }

  sub_1A5246E04();
  sub_1A3C52C70(0, &qword_1EB12B180);
  v15 = sub_1A524D474();
  v16 = swift_allocObject();
  *(v16 + 16) = v20;
  *(v16 + 24) = a5;
  *(v16 + 32) = a1 & 1;
  *(v16 + 40) = a2;
  aBlock[4] = sub_1A4981520;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1A3C2E0D0;
  aBlock[3] = &block_descriptor_76_3;
  v17 = _Block_copy(aBlock);

  v18 = a2;

  sub_1A524BF14();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1A4981CAC(&qword_1EB12B1E0, MEMORY[0x1E69E7F60]);
  sub_1A3C7D2BC(0, &qword_1EB12B1C0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
  sub_1A3C5DE88();
  sub_1A524E224();
  MEMORY[0x1A5908800](0, v14, v11, v17);
  _Block_release(v17);

  (*(v9 + 8))(v11, v8);
  return (*(v12 + 8))(v14, v21);
}

void sub_1A497FB20(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_1A3D75C90(0, &qword_1EB126420);
    sub_1A524E794();
  }

  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A497FD88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v31 = a3;
  v33 = sub_1A5240E64();
  v4 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v32 = v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1A5241144();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = v28 - v11;
  v13 = sub_1A5246F24();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A524D644();
  if (qword_1EB1E32A0 != -1)
  {
    v30 = v13;
    swift_once();
    v13 = v30;
  }

  sub_1A5246E04();
  v17 = sub_1A3C56D80();
  (*(v14 + 16))(v16, v17, v13);
  (*(v7 + 16))(v12, a2, v6);
  (*(v4 + 16))(v32, v31, v33);
  v18 = sub_1A5246F04();
  LODWORD(v31) = sub_1A524D264();
  v19 = v14;
  if (os_log_type_enabled(v18, v31))
  {
    v20 = swift_slowAlloc();
    v30 = v13;
    v21 = v20;
    v29 = swift_slowAlloc();
    v34 = v29;
    *v21 = 136315394;
    sub_1A3C712BC(0, &qword_1EB12B110, &qword_1EB12B100, MEMORY[0x1E69E7740], sub_1A3C34400);
    v22 = swift_allocObject();
    *(v22 + 16) = xmmword_1A52F8E10;
    sub_1A5241104();
    v28[0] = v18;
    sub_1A5241054();
    v24 = v23;
    v28[1] = v19;
    v25 = *(v7 + 8);
    v25(v9, v6);
    v26 = MEMORY[0x1E69E6438];
    *(v22 + 56) = MEMORY[0x1E69E63B0];
    *(v22 + 64) = v26;
    *(v22 + 32) = v24;
    sub_1A524C6C4();
    v25(v12, v6);
    sub_1A3C2EF94();
  }

  (*(v4 + 8))(v32, v33);
  (*(v7 + 8))(v12, v6);
  return (*(v14 + 8))(v16, v13);
}

uint64_t sub_1A49802EC(uint64_t a1, void *a2, void *a3)
{
  v5 = __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  v6 = *v5;
  if (a3)
  {
    sub_1A3C34400(0, &qword_1EB126160);
    v7 = swift_allocError();
    *v8 = a3;
    v9 = a3;

    return MEMORY[0x1EEE6DEE8](v6, v7);
  }

  else
  {
    if (a2)
    {
      **(v6[8] + 40) = a2;
      v10 = a2;
      v5 = v6;
    }

    else
    {
      __break(1u);
    }

    return MEMORY[0x1EEE6DEE0](v5);
  }
}

uint64_t sub_1A49803C8(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_1A4981C34();
  v34 = a2;
  result = sub_1A524E774();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v34 & 1) == 0)
      {
        _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
      }

      sub_1A524EC94();
      sub_1A524C794();
      result = sub_1A524ECE4();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v33;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

void *sub_1A4980660()
{
  v1 = v0;
  sub_1A4981C34();
  v2 = *v0;
  v3 = sub_1A524E764();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      v13 = __clz(__rbit64(v11 & v10));
      goto LABEL_17;
    }

    v14 = 0;
    while (1)
    {
      v8 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v8 >= v12)
      {
        goto LABEL_18;
      }

      v15 = *(v2 + 64 + 8 * v8);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
LABEL_17:
        v16 = v13 | (v8 << 6);
        v17 = (*(v2 + 48) + 16 * v16);
        v18 = v17[1];
        v19 = *(*(v2 + 56) + 8 * v16);
        v20 = (*(v4 + 48) + 16 * v16);
        *v20 = *v17;
        v20[1] = v18;
        *(*(v4 + 56) + 8 * v16) = v19;
        _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
      }
    }

    __break(1u);
  }

  else
  {
LABEL_18:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_1A49807C0(void *a1, void *a2)
{
  v5 = *(sub_1A5246E54() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = *v7;
  v9 = v7[1];

  return sub_1A497E4A8(a1, a2, v2 + v6, v8, v9);
}

uint64_t sub_1A498087C(uint64_t a1, unint64_t *a2)
{
  sub_1A4980D64(0, a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t objectdestroyTm_87()
{
  v1 = sub_1A5246E54();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_1A4980978(char a1, void *a2)
{
  v5 = *(sub_1A5246E54() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = *v7;
  v9 = v7[1];

  return sub_1A497F7A4(a1, a2, v2 + v6, v8, v9);
}