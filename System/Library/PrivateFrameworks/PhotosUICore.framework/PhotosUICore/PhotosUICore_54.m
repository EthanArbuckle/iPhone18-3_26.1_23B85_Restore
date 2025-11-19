uint64_t sub_1A42FA630(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1A42FA678()
{
  if (!qword_1EB121870)
  {
    sub_1A42FA70C(255);
    sub_1A42FA630(&qword_1EB120EF0, sub_1A42FA70C);
    v0 = sub_1A524B784();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB121870);
    }
  }
}

void sub_1A42FA740()
{
  if (!qword_1EB121698)
  {
    sub_1A42FA7A8();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB121698);
    }
  }
}

void sub_1A42FA7A8()
{
  if (!qword_1EB1216A0)
  {
    sub_1A42FA83C(255);
    sub_1A42FA630(&qword_1EB120FD0, sub_1A42FA83C);
    v0 = sub_1A524B894();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB1216A0);
    }
  }
}

void sub_1A42FA878()
{
  if (!qword_1EB1218E0)
  {
    sub_1A42FA90C(255);
    sub_1A42FA630(&qword_1EB1210A0, sub_1A42FA90C);
    v0 = sub_1A524B784();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB1218E0);
    }
  }
}

void sub_1A42FA948(uint64_t a1, unint64_t *a2, unint64_t *a3, void (*a4)(uint64_t), void (*a5)(uint64_t))
{
  if (!*a2)
  {
    sub_1A42FA9A4(255, a3, a4, a5);
    v6 = sub_1A524BE24();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_1A42FA9A4(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), void (*a4)(uint64_t))
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

void sub_1A42FAA20()
{
  if (!qword_1EB122750)
  {
    sub_1A42FAB04(255, &qword_1EB122758, sub_1A42FAABC, sub_1A42FAF28, MEMORY[0x1E697F960]);
    v0 = sub_1A524DF24();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB122750);
    }
  }
}

void sub_1A42FAB04(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

void sub_1A42FAC10()
{
  if (!qword_1EB121E60)
  {
    sub_1A42FACE4();
    sub_1A3EE1D04();
    sub_1A42FADF4();
    sub_1A42FA630(&unk_1EB1263B0, sub_1A3EE1D04);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB121E60);
    }
  }
}

void sub_1A42FACE4()
{
  if (!qword_1EB123D08)
  {
    sub_1A42FDE94(255, &qword_1EB121CD8, MEMORY[0x1E6981148], MEMORY[0x1E69815F8]);
    sub_1A42FAD88(255, &qword_1EB1277F0, &qword_1EB127560, MEMORY[0x1E69815C0]);
    v0 = sub_1A5248804();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB123D08);
    }
  }
}

void sub_1A42FAD88(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  if (!*a2)
  {
    sub_1A42FDE94(255, a3, a4, MEMORY[0x1E69E6720]);
    v5 = sub_1A5249F44();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

unint64_t sub_1A42FADF4()
{
  result = qword_1EB1285D8;
  if (!qword_1EB1285D8)
  {
    sub_1A42FACE4();
    sub_1A42FAE94();
    sub_1A42FE1E8(&qword_1EB127800, &qword_1EB1277F0, &qword_1EB127560, MEMORY[0x1E69815C0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1285D8);
  }

  return result;
}

unint64_t sub_1A42FAE94()
{
  result = qword_1EB127520;
  if (!qword_1EB127520)
  {
    sub_1A42FDE94(255, &qword_1EB121CD8, MEMORY[0x1E6981148], MEMORY[0x1E69815F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB127520);
  }

  return result;
}

void sub_1A42FAF90(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    sub_1A42FAD88(255, &qword_1EB127790, &qword_1EB126D60, MEMORY[0x1E69E6530]);
    v4 = sub_1A5248804();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1A42FB034(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

void sub_1A42FB090()
{
  if (!qword_1EB121E30)
  {
    sub_1A3EE1D04();
    sub_1A42FA630(&unk_1EB1263B0, sub_1A3EE1D04);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB121E30);
    }
  }
}

void sub_1A42FB158()
{
  if (!qword_1EB124190)
  {
    sub_1A42FDE94(255, &qword_1EB124FE0, &type metadata for BadgeView, MEMORY[0x1E69E6720]);
    sub_1A5249F54();
    v0 = sub_1A5248804();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB124190);
    }
  }
}

void sub_1A42FB1E4()
{
  if (!qword_1EB123830)
  {
    sub_1A42FAB04(255, &qword_1EB123838, sub_1A3DF14C0, MEMORY[0x1E697CBE8], MEMORY[0x1E697E830]);
    v0 = sub_1A524DF24();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB123830);
    }
  }
}

uint64_t sub_1A42FB280@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v67 = a4;
  sub_1A42FA678();
  v66 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v68 = &v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v64 = (&v54 - v10);
  sub_1A3EE1D04();
  v12 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v56 = &v54 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1A524DF24();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v54 - v16;
  sub_1A5249F54();
  v18 = sub_1A5248804();
  v55 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v57 = &v54 - v19;
  v20 = sub_1A42FA630(&qword_1EB127710, MEMORY[0x1E697CBE8]);
  v69 = a3;
  v77 = a3;
  v78 = v20;
  WitnessTable = swift_getWitnessTable();
  v22 = sub_1A42FA630(&unk_1EB1263B0, sub_1A3EE1D04);
  v73 = v18;
  v74 = v12;
  v62 = v12;
  v59 = WitnessTable;
  v75 = WitnessTable;
  v76 = v22;
  v58 = v22;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v24 = sub_1A524DF24();
  v25 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v61 = &v54 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v54 - v28;
  v31 = MEMORY[0x1EEE9AC00](v30);
  v60 = &v54 - v32;
  v33 = *(v15 + 16);
  v63 = a1;
  v33(v17, a1, v14, v31);
  v34 = *(a2 - 8);
  v35 = (*(v34 + 48))(v17, 1, a2);
  v65 = a2;
  if (v35 == 1)
  {
    (*(v15 + 8))(v17, v14);
    v36 = 1;
    v37 = v62;
    v38 = v59;
    v39 = v58;
LABEL_5:
    (*(*(OpaqueTypeMetadata2 - 8) + 56))(v29, v36, 1, OpaqueTypeMetadata2);
    v73 = v18;
    v74 = v37;
    v75 = v38;
    v76 = v39;
    v72[2] = swift_getOpaqueTypeConformance2();
    v45 = swift_getWitnessTable();
    v46 = *(v25 + 16);
    v47 = v60;
    v46(v60, v29, v24);
    v48 = *(v25 + 8);
    v48(v29, v24);
    v49 = sub_1A52492E4();
    v50 = v64;
    *v64 = v49;
    *(v50 + 8) = 0x4000000000000000;
    *(v50 + 16) = 0;
    sub_1A42FE04C(0, &qword_1EB1244E0, sub_1A42FA70C);
    sub_1A42FBA74(v63, v65, v50 + *(v51 + 44));
    v52 = v61;
    v46(v61, v47, v24);
    v73 = v52;
    v53 = v68;
    sub_1A42FE0B8(v50, v68, sub_1A42FA678);
    v74 = v53;
    v72[0] = v24;
    v72[1] = v66;
    v70 = v45;
    v71 = sub_1A42FA630(&qword_1EB121878, sub_1A42FA678);
    sub_1A3DF4988(&v73, 2uLL, v72);
    sub_1A42FE120(v50, sub_1A42FA678);
    v48(v47, v24);
    sub_1A42FE120(v53, sub_1A42FA678);
    return (v48)(v52, v24);
  }

  sub_1A524AA94();
  (*(v34 + 8))(v17, a2);
  v40 = *MEMORY[0x1E697E728];
  v41 = sub_1A52486A4();
  v42 = v56;
  (*(*(v41 - 8) + 104))(v56, v40, v41);
  sub_1A42FA630(&unk_1EB1288C0, MEMORY[0x1E697E730]);
  result = sub_1A524C594();
  if (result)
  {
    v37 = v62;
    v38 = v59;
    v39 = v58;
    v44 = v57;
    sub_1A524AB84();
    sub_1A42FD6F0(v42, sub_1A3EE1D04);
    (*(v55 + 8))(v44, v18);
    v36 = 0;
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

uint64_t sub_1A42FBA74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_1A42FA7A8();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v16 - v10;
  *v11 = sub_1A5249584();
  *(v11 + 1) = 0;
  v11[16] = 0;
  sub_1A42FE04C(0, &qword_1EB124478, sub_1A42FA83C);
  sub_1A42FBBEC(a1, a2, &v11[*(v12 + 44)]);
  sub_1A42FE0B8(v11, v8, sub_1A42FA7A8);
  sub_1A42FE0B8(v8, a3, sub_1A42FA7A8);
  sub_1A42FA740();
  v14 = a3 + *(v13 + 48);
  *v14 = 0;
  *(v14 + 8) = 1;
  sub_1A42FE120(v11, sub_1A42FA7A8);
  return sub_1A42FE120(v8, sub_1A42FA7A8);
}

uint64_t sub_1A42FBBEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v55 = a3;
  sub_1A42FAB04(0, &qword_1EB123838, sub_1A3DF14C0, MEMORY[0x1E697CBE8], MEMORY[0x1E697E830]);
  v52 = *(v5 - 8);
  v53 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v50 = &v45 - v6;
  sub_1A3F31320(0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1A52407E4();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v51 = &v45 - v15;
  sub_1A42FB1E4();
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v45 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v45 - v20;
  sub_1A42FA878();
  MEMORY[0x1EEE9AC00](v22 - 8);
  v54 = &v45 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v45 - v25;
  *v26 = sub_1A5249314();
  *(v26 + 1) = 0x4020000000000000;
  v26[16] = 0;
  sub_1A42FE04C(0, &qword_1EB1244F8, sub_1A42FA90C);
  sub_1A42FC1C4(a1, a2, &v26[*(v27 + 44)]);
  v28 = type metadata accessor for PhotosDetailsDiscoverableView();
  sub_1A42FE180(a1 + *(v28 + 40), v9, sub_1A3F31320);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_1A42FD6F0(v9, sub_1A3F31320);
    v29 = 1;
  }

  else
  {
    v30 = *(v11 + 32);
    v31 = v51;
    v48 = v10;
    v30(v51, v9, v10);
    (*(v11 + 16))(v13, v31, v10);
    v32 = sub_1A524A454();
    v46 = v32;
    v47 = v33;
    v35 = v34;
    v37 = v36;
    v38 = v33;
    KeyPath = swift_getKeyPath();
    v49 = v21;
    v56 = v32;
    v57 = v35;
    v58 = v37 & 1;
    v59 = v38;
    v60 = KeyPath;
    v61 = 1;
    v62 = 0;
    sub_1A3DF14C0();
    sub_1A405D614();
    v40 = v50;
    sub_1A524AA94();
    sub_1A3E04DF4(v46, v35, v37 & 1);
    v21 = v49;

    (*(v11 + 8))(v51, v48);
    sub_1A42FE238(v40, v21);
    v29 = 0;
  }

  (*(v52 + 56))(v21, v29, 1, v53);
  v41 = v54;
  sub_1A42FE0B8(v26, v54, sub_1A42FA878);
  sub_1A42FE180(v21, v18, sub_1A42FB1E4);
  v42 = v55;
  sub_1A42FE0B8(v41, v55, sub_1A42FA878);
  sub_1A42FA9A4(0, &qword_1EB1218D8, sub_1A42FA878, sub_1A42FB1E4);
  sub_1A42FE180(v18, v42 + *(v43 + 48), sub_1A42FB1E4);
  sub_1A42FD6F0(v21, sub_1A42FB1E4);
  sub_1A42FE120(v26, sub_1A42FA878);
  sub_1A42FD6F0(v18, sub_1A42FB1E4);
  return sub_1A42FE120(v41, sub_1A42FA878);
}

uint64_t sub_1A42FC1C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v134 = a2;
  v132 = a3;
  sub_1A42FB158();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v133 = &v110 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v131 = &v110 - v7;
  sub_1A42FAF70(0);
  v116 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v115 = &v110 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A42FAF28(0);
  v128 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v117 = (&v110 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1A42FAB04(0, &qword_1EB122C08, sub_1A42FAABC, sub_1A42FAF28, MEMORY[0x1E697F948]);
  v126 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v127 = &v110 - v13;
  sub_1A3EE1D04();
  v123 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v129 = &v110 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1A5249424();
  MEMORY[0x1EEE9AC00](v16 - 8);
  v122 = &v110 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A42FAB88(0);
  v119 = v18;
  MEMORY[0x1EEE9AC00](v18);
  v118 = &v110 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A42FAABC(0);
  v125 = v20;
  MEMORY[0x1EEE9AC00](v20);
  v120 = &v110 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A42FAB04(0, &qword_1EB122758, sub_1A42FAABC, sub_1A42FAF28, MEMORY[0x1E697F960]);
  v23 = v22;
  v24 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v124 = &v110 - v25;
  sub_1A3F31320(0);
  MEMORY[0x1EEE9AC00](v26 - 8);
  v28 = &v110 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_1A52407E4();
  v30 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v121 = &v110 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32);
  v34 = &v110 - v33;
  MEMORY[0x1EEE9AC00](v35);
  v37 = &v110 - v36;
  sub_1A42FAA20();
  MEMORY[0x1EEE9AC00](v38 - 8);
  v130 = &v110 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v40);
  v42 = &v110 - v41;
  v43 = type metadata accessor for PhotosDetailsDiscoverableView();
  sub_1A42FE180(a1 + v43[9], v28, sub_1A3F31320);
  if (v30[6](v28, 1, v29) == 1)
  {
    sub_1A42FD6F0(v28, sub_1A3F31320);
    (*(v24 + 56))(v42, 1, 1, v23);
LABEL_9:
    v101 = v132;
    v102 = (a1 + v43[11]);
    v104 = v102[1];
    v105 = v102[2];
    v135 = *v102;
    v103 = v135;
    v136 = v104;
    v137 = v105;
    sub_1A42F9724(v135, v104);
    sub_1A42FDE94(0, &qword_1EB124FE0, &type metadata for BadgeView, MEMORY[0x1E69E6720]);
    sub_1A42FE2E0();
    v106 = v131;
    sub_1A524AA94();
    sub_1A3D37A58(v103, v104);
    v107 = v130;
    sub_1A42FE0B8(v42, v130, sub_1A42FAA20);
    v108 = v133;
    sub_1A42FE180(v106, v133, sub_1A42FB158);
    sub_1A42FE0B8(v107, v101, sub_1A42FAA20);
    sub_1A42FA9A4(0, &qword_1EB122748, sub_1A42FAA20, sub_1A42FB158);
    sub_1A42FE180(v108, v101 + *(v109 + 48), sub_1A42FB158);
    sub_1A42FD6F0(v106, sub_1A42FB158);
    sub_1A42FE120(v42, sub_1A42FAA20);
    sub_1A42FD6F0(v108, sub_1A42FB158);
    return sub_1A42FE120(v107, sub_1A42FAA20);
  }

  v111 = v24;
  v112 = v23;
  v113 = v42;
  v30[4](v37, v28, v29);
  v110 = v43;
  v44 = v43[13];
  v114 = a1;
  v45 = *(a1 + v44);
  v134 = v29;
  if (v45)
  {
    sub_1A524B544();
    v46 = sub_1A524A474();
    v47 = v37;
    v49 = v48;
    v51 = v50;
    sub_1A5249414();
    sub_1A5249404();
    v52 = v121;
    sub_1A5240714();
    v116 = v47;
    sub_1A5240724();
    v117 = v30;
    v53 = v30[1];
    v54 = v52;
    v55 = v134;
    (v53)(v54, v134);
    sub_1A52493C4();
    (v53)(v34, v55);
    sub_1A5249404();
    sub_1A52493D4();
    sub_1A5249404();
    sub_1A5249444();
    v56 = sub_1A524A444();
    v58 = v57;
    v60 = v59;
    v62 = v61;
    sub_1A3E04DF4(v46, v49, v51 & 1);

    v63 = [objc_opt_self() tertiaryLabelColor];
    v64 = sub_1A524B284();
    KeyPath = swift_getKeyPath();
    v135 = v56;
    v136 = v58;
    v122 = v58;
    v66 = v60 & 1;
    LOBYTE(v137) = v60 & 1;
    v138 = v62;
    v139 = KeyPath;
    v140 = v64;
    v67 = *MEMORY[0x1E697E728];
    v68 = sub_1A52486A4();
    v69 = v129;
    (*(*(v68 - 8) + 104))(v129, v67, v68);
    sub_1A42FA630(&unk_1EB1288C0, MEMORY[0x1E697E730]);
    result = sub_1A524C594();
    if (result)
    {
      sub_1A42FACE4();
      sub_1A42FADF4();
      sub_1A42FA630(&unk_1EB1263B0, sub_1A3EE1D04);
      v71 = v118;
      sub_1A524AB84();
      sub_1A42FD6F0(v69, sub_1A3EE1D04);
      sub_1A3E04DF4(v56, v122, v66);

      sub_1A42FABF0(0);
      *(v71 + *(v72 + 36)) = 256;
      v43 = v110;
      a1 = v114;
      v73 = *(v114 + v110[14]);
      v74 = swift_getKeyPath();
      sub_1A42FABD0(0);
      v76 = v71 + *(v75 + 36);
      *v76 = v74;
      *(v76 + 8) = v73;
      *(v76 + 16) = 0;
      v77 = (v71 + *(v119 + 36));
      sub_1A3F32A14(0);
      v79 = *(v78 + 28);
      v80 = *MEMORY[0x1E69816C8];
      v81 = sub_1A524B5B4();
      (*(*(v81 - 8) + 104))(v77 + v79, v80, v81);
      *v77 = swift_getKeyPath();
      sub_1A42FE618();
      v82 = v120;
      sub_1A524AA94();
      sub_1A42FE120(v71, sub_1A42FAB88);
      sub_1A42FE0B8(v82, v127, sub_1A42FAABC);
      swift_storeEnumTagMultiPayload();
      sub_1A42FE568();
      sub_1A42FE7F8();
      v83 = v124;
      sub_1A5249744();
      sub_1A42FE120(v82, sub_1A42FAABC);
      v42 = v113;
      v84 = v112;
      v85 = v111;
      v30 = v117;
      v37 = v116;
LABEL_8:
      sub_1A3CF04F4(v83, v42);
      (*(v85 + 56))(v42, 0, 1, v84);
      (v30[1])(v37, v134);
      goto LABEL_9;
    }

    __break(1u);
  }

  else
  {
    v30[2](v34, v37, v134);
    v86 = sub_1A524A454();
    v88 = v87;
    v135 = v86;
    v136 = v87;
    v90 = v89 & 1;
    LOBYTE(v137) = v89 & 1;
    v138 = v91;
    v92 = *MEMORY[0x1E697E728];
    v93 = sub_1A52486A4();
    v94 = v129;
    (*(*(v93 - 8) + 104))(v129, v92, v93);
    sub_1A42FA630(&unk_1EB1288C0, MEMORY[0x1E697E730]);
    result = sub_1A524C594();
    if (result)
    {
      sub_1A42FA630(&unk_1EB1263B0, sub_1A3EE1D04);
      v95 = v115;
      sub_1A524AB84();
      sub_1A42FD6F0(v94, sub_1A3EE1D04);
      sub_1A3E04DF4(v86, v88, v90);

      sub_1A42FB014(0);
      *(v95 + *(v96 + 36)) = 256;
      v43 = v110;
      a1 = v114;
      v97 = *(v114 + v110[14]);
      v98 = swift_getKeyPath();
      v99 = v95 + *(v116 + 9);
      *v99 = v98;
      *(v99 + 8) = v97;
      *(v99 + 16) = 0;
      sub_1A42FE3D0(&qword_1EB1237B8, sub_1A42FAF70, sub_1A42FE474);
      v100 = v117;
      sub_1A524AA94();
      sub_1A42FE120(v95, sub_1A42FAF70);
      sub_1A42FE0B8(v100, v127, sub_1A42FAF28);
      swift_storeEnumTagMultiPayload();
      sub_1A42FE568();
      sub_1A42FE7F8();
      v83 = v124;
      sub_1A5249744();
      sub_1A42FE120(v100, sub_1A42FAF28);
      v42 = v113;
      v84 = v112;
      v85 = v111;
      goto LABEL_8;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1A42FD19C()
{
  v1 = type metadata accessor for PhotosDetailsDiscoverableView();
  v3 = *(v1 - 8);
  result = v1 - 8;
  v4 = (v0 + *(result + 60) + ((*(v3 + 80) + 32) & ~*(v3 + 80)));
  if (*v4)
  {
    return (*v4)();
  }

  return result;
}

uint64_t sub_1A42FD218@<X0>(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  v44 = a2;
  sub_1A42FD4E8(0);
  v4 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = sub_1A524C734();
  v46 = v7;
  sub_1A3D5F9DC();
  v8 = sub_1A524A464();
  v10 = v9;
  v12 = v11;
  sub_1A524A164();
  v13 = sub_1A3FE1A88();
  sub_1A3FE1A98(v13);

  v14 = sub_1A524A3C4();
  v42 = v15;
  v43 = v14;
  v17 = v16;
  v41 = v18;

  sub_1A3E04DF4(v8, v10, v12 & 1);

  KeyPath = swift_getKeyPath();
  v20 = v17 & 1;
  v47 = v17 & 1;

  LOBYTE(v10) = sub_1A524A064();
  LOBYTE(v45) = 0;
  v21 = &v6[*(v4 + 36)];
  v22 = *(sub_1A5248A14() + 20);
  v23 = *MEMORY[0x1E697F468];
  v24 = sub_1A52494A4();
  (*(*(v24 - 8) + 104))(&v21[v22], v23, v24);
  __asm { FMOV            V0.2D, #2.0 }

  *v21 = _Q0;
  v30 = sub_1A524B474();
  v31 = swift_getKeyPath();
  sub_1A42FD530(0, &qword_1EB128738, MEMORY[0x1E697EAF0]);
  v33 = &v21[*(v32 + 36)];
  *v33 = v31;
  v33[1] = v30;
  v34 = sub_1A524BC74();
  v36 = v35;
  sub_1A3E33BA0(0);
  v38 = &v21[*(v37 + 36)];
  *v38 = v34;
  v38[1] = v36;
  v39 = v42;
  *v6 = v43;
  *(v6 + 1) = v39;
  v6[16] = v20;
  *(v6 + 3) = v41;
  *(v6 + 16) = 257;
  *(v6 + 5) = KeyPath;
  *(v6 + 6) = a1;
  v6[56] = v10;
  *(v6 + 4) = xmmword_1A532EEE0;
  *(v6 + 5) = xmmword_1A532EEE0;
  v6[96] = 0;
  sub_1A42FD5C0();
  sub_1A524AA94();
  return sub_1A42FD6F0(v6, sub_1A42FD4E8);
}

void sub_1A42FD530(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    sub_1A42FAD88(255, &qword_1EB1277F0, &qword_1EB127560, MEMORY[0x1E69815C0]);
    v4 = sub_1A5248804();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_1A42FD5C0()
{
  result = qword_1EB137BD0;
  if (!qword_1EB137BD0)
  {
    sub_1A42FD4E8(255);
    sub_1A42FD670();
    sub_1A42FA630(&qword_1EB127FC8, sub_1A3E33BA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB137BD0);
  }

  return result;
}

unint64_t sub_1A42FD670()
{
  result = qword_1EB128258;
  if (!qword_1EB128258)
  {
    sub_1A3E355F0(255);
    sub_1A3E35988();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB128258);
  }

  return result;
}

uint64_t sub_1A42FD6F0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1A42FD7B0()
{
  sub_1A524DF24();
  if (v0 <= 0x3F)
  {
    sub_1A3F31320(319);
    if (v1 <= 0x3F)
    {
      sub_1A42FDE94(319, &qword_1EB124FE0, &type metadata for BadgeView, MEMORY[0x1E69E6720]);
      if (v2 <= 0x3F)
      {
        sub_1A42FDE94(319, &qword_1EB126FA0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
        if (v3 <= 0x3F)
        {
          sub_1A42FDEE4(319, &qword_1EB1201F0, sub_1A3C3637C, MEMORY[0x1E69E6720]);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_1A42FD900(int *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  if (v7)
  {
    v8 = v7 - 1;
  }

  else
  {
    v8 = 0;
  }

  v9 = sub_1A52407E4();
  v10 = *(v9 - 8);
  v11 = *(v10 + 84);
  if (v11)
  {
    v12 = v11 - 1;
  }

  else
  {
    v12 = 0;
  }

  if (v12 <= v8)
  {
    v13 = v8;
  }

  else
  {
    v13 = v12;
  }

  if (v13 <= 0x7FFFFFFE)
  {
    v13 = 2147483646;
  }

  if (v7)
  {
    v14 = *(v6 + 64);
  }

  else
  {
    v14 = *(v6 + 64) + 1;
  }

  v15 = *(v10 + 80);
  v16 = *(*(v9 - 8) + 64);
  if (!v11)
  {
    ++v16;
  }

  if (!a2)
  {
    return 0;
  }

  v17 = v14 + v15;
  v18 = v16 + v15;
  v19 = v16 + 7;
  if (v13 < a2)
  {
    v20 = ((((((((v19 + ((v18 + (v17 & ~v15)) & ~v15)) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8;
    v21 = v20 & 0xFFFFFFF8;
    if ((v20 & 0xFFFFFFF8) != 0)
    {
      v22 = 2;
    }

    else
    {
      v22 = a2 - v13 + 1;
    }

    if (v22 >= 0x10000)
    {
      v23 = 4;
    }

    else
    {
      v23 = 2;
    }

    if (v22 < 0x100)
    {
      v23 = 1;
    }

    if (v22 >= 2)
    {
      v24 = v23;
    }

    else
    {
      v24 = 0;
    }

    if (v24 > 1)
    {
      if (v24 == 2)
      {
        v25 = *(a1 + v20);
        if (v25)
        {
          goto LABEL_33;
        }
      }

      else
      {
        v25 = *(a1 + v20);
        if (v25)
        {
          goto LABEL_33;
        }
      }
    }

    else if (v24)
    {
      v25 = *(a1 + v20);
      if (v25)
      {
LABEL_33:
        v26 = v25 - 1;
        if (v21)
        {
          v26 = 0;
          v27 = *a1;
        }

        else
        {
          v27 = 0;
        }

        return v13 + (v27 | v26) + 1;
      }
    }
  }

  if (v8 == v13)
  {
    if (v7 >= 2)
    {
      v28 = (*(v6 + 48))(a1, v7, v5);
      goto LABEL_51;
    }

    return 0;
  }

  v29 = ~v15;
  v30 = (a1 + v17) & v29;
  if (v12 == v13)
  {
    if (v11 >= 2)
    {
      v28 = (*(v10 + 48))(v30);
LABEL_51:
      if (v28 >= 2)
      {
        return v28 - 1;
      }

      else
      {
        return 0;
      }
    }

    return 0;
  }

  v32 = *(((v19 + ((v18 + v30) & v29)) & 0xFFFFFFFFFFFFFFF8) + 8);
  if (v32 >= 0xFFFFFFFF)
  {
    LODWORD(v32) = -1;
  }

  if ((v32 + 1) >= 2)
  {
    return v32;
  }

  else
  {
    return 0;
  }
}

void sub_1A42FDB84(unsigned int *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v34 = v8;
  v9 = *(v8 + 84);
  if (v9)
  {
    v10 = v9 - 1;
  }

  else
  {
    v10 = 0;
  }

  v11 = 0;
  v12 = *(sub_1A52407E4() - 8);
  v13 = *(v12 + 84);
  v14 = *(v8 + 64);
  v15 = v13 - 1;
  if (!v13)
  {
    v15 = 0;
  }

  v16 = *(v12 + 80);
  v17 = *(v12 + 64);
  if (v15 <= v10)
  {
    v18 = v10;
  }

  else
  {
    v18 = v15;
  }

  if (v18 <= 0x7FFFFFFE)
  {
    v18 = 2147483646;
  }

  if (!v9)
  {
    ++v14;
  }

  v19 = v14 + v16;
  v20 = (v14 + v16) & ~v16;
  if (!v13)
  {
    ++v17;
  }

  v21 = v17 + v16;
  v22 = (v17 + v16 + v20) & ~v16;
  v23 = v17 + 7;
  v24 = ((((((((v23 + v22) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v18 < a3)
  {
    if (((((((((v23 + v22) & 0xFFFFFFF8) + 31) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v25 = a3 - v18 + 1;
    }

    else
    {
      v25 = 2;
    }

    if (v25 >= 0x10000)
    {
      v26 = 4;
    }

    else
    {
      v26 = 2;
    }

    if (v25 < 0x100)
    {
      v26 = 1;
    }

    if (v25 >= 2)
    {
      v11 = v26;
    }

    else
    {
      v11 = 0;
    }
  }

  if (a2 > v18)
  {
    if (v24)
    {
      v27 = 1;
    }

    else
    {
      v27 = a2 - v18;
    }

    if (v24)
    {
      v28 = ~v18 + a2;
      bzero(a1, v24);
      *a1 = v28;
    }

    if (v11 > 1)
    {
      if (v11 == 2)
      {
        *(a1 + v24) = v27;
      }

      else
      {
        *(a1 + v24) = v27;
      }
    }

    else if (v11)
    {
      *(a1 + v24) = v27;
    }

    return;
  }

  if (v11 > 1)
  {
    if (v11 != 2)
    {
      *(a1 + v24) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_45;
    }

    *(a1 + v24) = 0;
  }

  else if (v11)
  {
    *(a1 + v24) = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_45;
  }

  if (!a2)
  {
    return;
  }

LABEL_45:
  if (v10 == v18)
  {
    v29 = *(v34 + 56);

    v29(a1, a2 + 1, v9, v7);
  }

  else
  {
    v30 = ~v16;
    v31 = (a1 + v19) & v30;
    if (v15 == v18)
    {
      v32 = *(v12 + 56);

      v32(v31, a2 + 1);
    }

    else
    {
      v33 = ((v23 + ((v21 + v31) & v30)) & 0xFFFFFFFFFFFFFFF8);
      if (a2 > 0x7FFFFFFE)
      {
        *v33 = 0;
        v33[1] = 0;
        v33[2] = 0;
        *v33 = a2 - 0x7FFFFFFF;
      }

      else
      {
        v33[1] = a2;
      }
    }
  }
}

void sub_1A42FDE94(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_1A42FDEE4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_1A42FDF58()
{
  result = qword_1EB137BD8;
  if (!qword_1EB137BD8)
  {
    sub_1A42FAB04(255, &qword_1EB137BE0, sub_1A42FD4E8, MEMORY[0x1E697CBE8], MEMORY[0x1E697E830]);
    sub_1A42FD5C0();
    sub_1A42FA630(&qword_1EB127710, MEMORY[0x1E697CBE8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB137BD8);
  }

  return result;
}

void sub_1A42FE04C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

uint64_t sub_1A42FE0B8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A42FE120(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1A42FE180(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A42FE1E8(unint64_t *a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_1A42FAD88(255, a2, a3, a4);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1A42FE238(uint64_t a1, uint64_t a2)
{
  sub_1A42FAB04(0, &qword_1EB123838, sub_1A3DF14C0, MEMORY[0x1E697CBE8], MEMORY[0x1E697E830]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1A42FE2E0()
{
  result = qword_1EB1292F8;
  if (!qword_1EB1292F8)
  {
    sub_1A42FDE94(255, &qword_1EB124FE0, &type metadata for BadgeView, MEMORY[0x1E69E6720]);
    sub_1A42FE37C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1292F8);
  }

  return result;
}

unint64_t sub_1A42FE37C()
{
  result = qword_1EB129300;
  if (!qword_1EB129300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB129300);
  }

  return result;
}

uint64_t sub_1A42FE3D0(unint64_t *a1, void (*a2)(uint64_t), void (*a3)(void))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    a3();
    sub_1A42FE1E8(&qword_1EB1277A0, &qword_1EB127790, &qword_1EB126D60, MEMORY[0x1E69E6530]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1A42FE474()
{
  result = qword_1EB123EF0;
  if (!qword_1EB123EF0)
  {
    sub_1A42FB014(255);
    sub_1A3EE1D04();
    sub_1A42FA630(&unk_1EB1263B0, sub_1A3EE1D04);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB123EF0);
  }

  return result;
}

unint64_t sub_1A42FE568()
{
  result = qword_1EB128130;
  if (!qword_1EB128130)
  {
    sub_1A42FAABC(255);
    sub_1A42FE618();
    sub_1A42FA630(&qword_1EB127710, MEMORY[0x1E697CBE8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB128130);
  }

  return result;
}

unint64_t sub_1A42FE618()
{
  result = qword_1EB1281F8;
  if (!qword_1EB1281F8)
  {
    sub_1A42FAB88(255);
    sub_1A42FE3D0(&qword_1EB128360, sub_1A42FABD0, sub_1A42FE6F8);
    sub_1A42FA630(&unk_1EB1277E0, sub_1A3F32A14);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1281F8);
  }

  return result;
}

unint64_t sub_1A42FE6F8()
{
  result = qword_1EB128678;
  if (!qword_1EB128678)
  {
    sub_1A42FABF0(255);
    sub_1A42FACE4();
    sub_1A3EE1D04();
    sub_1A42FADF4();
    sub_1A42FA630(&unk_1EB1263B0, sub_1A3EE1D04);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB128678);
  }

  return result;
}

unint64_t sub_1A42FE7F8()
{
  result = qword_1EB1233B0;
  if (!qword_1EB1233B0)
  {
    sub_1A42FAF28(255);
    sub_1A42FE3D0(&qword_1EB1237B8, sub_1A42FAF70, sub_1A42FE474);
    sub_1A42FA630(&qword_1EB127710, MEMORY[0x1E697CBE8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1233B0);
  }

  return result;
}

uint64_t sub_1A42FE8D8()
{
  v0 = sub_1A5246F24();
  __swift_allocate_value_buffer(v0, qword_1EB1B6DB8);
  __swift_project_value_buffer(v0, qword_1EB1B6DB8);
  return sub_1A5246F14();
}

uint64_t sub_1A42FE95C()
{
  v0 = sub_1A5246F24();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1A5246E94();
  __swift_allocate_value_buffer(v4, qword_1EB170758);
  __swift_project_value_buffer(v4, qword_1EB170758);
  if (qword_1EB1B6DB0 != -1)
  {
    swift_once();
  }

  v5 = __swift_project_value_buffer(v0, qword_1EB1B6DB8);
  (*(v1 + 16))(v3, v5, v0);
  return sub_1A5246E64();
}

uint64_t PICompositionController.squareThumbnails(for:scaledToFill:reusingRenderContext:)(uint64_t a1, uint64_t a2, double a3, double a4)
{
  *(v5 + 48) = a2;
  *(v5 + 56) = v4;
  *(v5 + 32) = a3;
  *(v5 + 40) = a4;
  *(v5 + 24) = a1;
  *(v5 + 64) = sub_1A524CC54();
  *(v5 + 72) = sub_1A524CC44();
  v7 = sub_1A524CBC4();
  *(v5 + 80) = v7;
  *(v5 + 88) = v6;

  return MEMORY[0x1EEE6DFA0](sub_1A42FEB3C, v7, v6);
}

uint64_t sub_1A42FEB3C()
{
  v1 = v0[7];
  v2 = v0[6];
  v4 = v0[4];
  v3 = v0[5];
  v5 = v0[3];
  v6 = sub_1A524CC44();
  v0[12] = v6;
  v7 = swift_task_alloc();
  v0[13] = v7;
  v7[2] = v1;
  v7[3] = v5;
  v7[4] = v4;
  v7[5] = v3;
  v7[6] = v2;
  v8 = swift_task_alloc();
  v0[14] = v8;
  sub_1A42FEFD8();
  *v8 = v0;
  v8[1] = sub_1A42FEC6C;
  v10 = MEMORY[0x1E69E85E0];

  return MEMORY[0x1EEE6DE38](v0 + 2, v6, v10, 0xD000000000000038, 0x80000001A53D1D60, sub_1A42FEFC8, v7, v9);
}

uint64_t sub_1A42FEC6C()
{
  v2 = *v1;
  *(*v1 + 120) = v0;

  if (v0)
  {
    v3 = *(v2 + 80);
    v4 = *(v2 + 88);
    v5 = sub_1A42FEDF8;
  }

  else
  {

    v3 = *(v2 + 80);
    v4 = *(v2 + 88);
    v5 = sub_1A42FED90;
  }

  return MEMORY[0x1EEE6DFA0](v5, v3, v4);
}

uint64_t sub_1A42FED90()
{

  v1 = *(v0 + 16);
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1A42FEDF8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A42FEE70(uint64_t a1, double a2, double a3, uint64_t a4, unint64_t a5, unint64_t a6)
{
  sub_1A4300298();
  v12 = v11;
  v13 = *(v11 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x1EEE9AC00](v11);
  (*(v13 + 16))(&v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v12, v15);
  v16 = (*(v13 + 80) + 16) & ~*(v13 + 80);
  v17 = swift_allocObject();
  (*(v13 + 32))(v17 + v16, &v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v12);
  sub_1A42FF058(a5, a6, v17, a2, a3);
}

void sub_1A42FEFD8()
{
  if (!qword_1EB137BE8)
  {
    type metadata accessor for CGImage(255);
    v0 = sub_1A524CB74();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB137BE8);
    }
  }
}

uint64_t sub_1A42FF058(unint64_t a1, unint64_t a2, uint64_t a3, double a4, double a5)
{
  v72 = a3;
  ObjectType = swift_getObjectType();
  v9 = sub_1A5246E54();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v62 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v62 - v14;
  if (qword_1EB170750 != -1)
  {
LABEL_40:
    swift_once();
  }

  v16 = sub_1A5246E94();
  __swift_project_value_buffer(v16, qword_1EB170758);
  sub_1A5246E84();
  sub_1A5246E24();
  v17 = sub_1A5246E84();
  v18 = sub_1A524D654();
  v19 = sub_1A524DEC4();
  v71 = a1;
  if (v19)
  {
    v20 = swift_slowAlloc();
    *v20 = 0;
    v21 = sub_1A5246E34();
    _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v17, v18, v21, "Generate Style Thumbnails", "", v20, 2u);
    v22 = v20;
    a1 = v71;
    MEMORY[0x1A590EEC0](v22, -1, -1);
  }

  v10[2](v12, v15, v9);
  sub_1A5246ED4();
  swift_allocObject();
  v12 = sub_1A5246EC4();
  if (qword_1EB1B6DB0 != -1)
  {
    swift_once();
  }

  v23 = sub_1A5246F24();
  __swift_project_value_buffer(v23, qword_1EB1B6DB8);
  v24 = sub_1A5246F04();
  v25 = sub_1A524D264();
  v26 = os_log_type_enabled(v24, v25);
  v63 = v12;
  v64 = v15;
  if (v26)
  {
    v27 = swift_slowAlloc();
    *&aBlock = swift_slowAlloc();
    *v27 = 136315138;
    sub_1A524E444();
    sub_1A3C2EF94();
  }

  if (a2)
  {
    v70 = a2;
    if (!(a1 >> 62))
    {
      goto LABEL_10;
    }

LABEL_24:
    v28 = sub_1A524E2B4();
    v65 = v10;
    v66 = v9;
    if (v28)
    {
      goto LABEL_11;
    }

LABEL_25:
    v44 = a2;
    v45 = MEMORY[0x1E69E7CC0];
    v41 = MEMORY[0x1E69E7CC0];
    goto LABEL_29;
  }

  v70 = [objc_allocWithZone(MEMORY[0x1E69B3C18]) initWithPurpose_];
  if (a1 >> 62)
  {
    goto LABEL_24;
  }

LABEL_10:
  v28 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v65 = v10;
  v66 = v9;
  if (!v28)
  {
    goto LABEL_25;
  }

LABEL_11:
  v78 = MEMORY[0x1E69E7CC0];
  v29 = a2;
  result = sub_1A524E554();
  if (v28 < 0)
  {
    goto LABEL_43;
  }

  a2 = 0;
  v9 = a1 & 0xC000000000000001;
  v67 = a1 & 0xFFFFFFFFFFFFFF8;
  v31 = *MEMORY[0x1E69BE060];
  do
  {
    v10 = (a2 + 1);
    if (__OFADD__(a2, 1))
    {
      __break(1u);
LABEL_39:
      __break(1u);
      goto LABEL_40;
    }

    if (v9)
    {
      v32 = MEMORY[0x1A59097F0](a2, a1);
    }

    else
    {
      if (a2 >= *(v67 + 16))
      {
        goto LABEL_39;
      }

      v32 = *(a1 + 8 * a2 + 32);
    }

    v33 = v32;
    [v69 copyWithZone_];
    sub_1A524E0B4();
    swift_unknownObjectRelease();
    swift_dynamicCast();
    v34 = v79;
    sub_1A410FB94(v33);
    [v34 removeAdjustmentWithKey_];
    v35 = objc_opt_self();
    v36 = [v34 composition];
    v37 = [v35 imageRenderRequestWithComposition:v36 fillInSize:1 wideGamut:{a4, a5}];

    *&aBlock = 0;
    *(&aBlock + 1) = 0xE000000000000000;
    v38 = v37;
    sub_1A524E404();

    strcpy(&aBlock, "thumbnail for ");
    HIBYTE(aBlock) = -18;
    v39 = PhotoStyleElement.name.getter();
    MEMORY[0x1A5907B60](v39);

    v15 = sub_1A524C634();

    [v38 setName_];

    [v38 setRenderContext_];
    v40 = [objc_allocWithZone(MEMORY[0x1E69B3C00]) initWithLevel_];
    [v38 setPriority_];

    sub_1A524E514();
    v12 = *(v78 + 16);
    sub_1A524E564();
    sub_1A524E574();
    sub_1A524E524();
    ++a2;
    a1 = v71;
  }

  while (v10 != v28);
  v41 = v78;
  *&aBlock = MEMORY[0x1E69E7CC0];
  sub_1A524E554();
  if (v9)
  {
    v42 = 0;
    do
    {
      v43 = v42 + 1;
      MEMORY[0x1A59097F0]();
      swift_unknownObjectRelease();
      sub_1A524E514();
      sub_1A524E564();
      sub_1A524E574();
      sub_1A524E524();
      v42 = v43;
    }

    while (v28 != v43);
  }

  else
  {
    sub_1A524E514();
    sub_1A524E524();
    do
    {
      sub_1A524E514();
      sub_1A524E564();
      sub_1A524E574();
      sub_1A524E524();
      --v28;
    }

    while (v28);
  }

  v45 = aBlock;
LABEL_29:
  v46 = swift_allocObject();
  *(v46 + 16) = v45;
  v47 = objc_opt_self();
  [v47 begin];
  v48 = swift_allocObject();
  *(v48 + 16) = 0;
  v69 = v47;
  if (v41 >> 62)
  {
    result = sub_1A524E2B4();
    v71 = result;
    if ((result & 0x8000000000000000) == 0)
    {
      goto LABEL_31;
    }

    __break(1u);
LABEL_43:
    __break(1u);
    return result;
  }

  v71 = *((v41 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_31:
  if (v71)
  {
    v49 = 0;
    v50 = v41 & 0xC000000000000001;
    v51 = v41;
    do
    {
      if (v50)
      {
        v52 = MEMORY[0x1A59097F0](v49, v41);
      }

      else
      {
        v52 = *(v41 + 8 * v49 + 32);
      }

      v53 = v52;
      v54 = v49 + 1;
      v55 = swift_allocObject();
      *(v55 + 16) = v48;
      *(v55 + 24) = v46;
      *(v55 + 32) = v49;
      *(v55 + 40) = "Generate Style Thumbnails";
      *(v55 + 48) = 25;
      *(v55 + 56) = 2;
      v56 = v72;
      *(v55 + 64) = sub_1A4300308;
      *(v55 + 72) = v56;
      v76 = sub_1A43009AC;
      v77 = v55;
      *&aBlock = MEMORY[0x1E69E9820];
      *(&aBlock + 1) = 1107296256;
      v74 = sub_1A3D7692C;
      v75 = &block_descriptor_15_3;
      v57 = _Block_copy(&aBlock);

      [v53 submit_];
      _Block_release(v57);

      v49 = v54;
      v41 = v51;
    }

    while (v71 != v54);
  }

  sub_1A3C52C70(0, &qword_1EB12B180);
  v58 = sub_1A524D474();
  v59 = swift_allocObject();
  *(v59 + 16) = v48;
  *(v59 + 24) = "Generate Style Thumbnails";
  *(v59 + 32) = 25;
  *(v59 + 40) = 2;
  *(v59 + 48) = v63;
  *(v59 + 56) = v46;
  v60 = v72;
  *(v59 + 64) = sub_1A4300308;
  *(v59 + 72) = v60;
  v76 = sub_1A4300CF8;
  v77 = v59;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  v74 = sub_1A3C2E0D0;
  v75 = &block_descriptor_21_5;
  v61 = _Block_copy(&aBlock);

  [v69 commitAndNotifyOnQueue:v58 withBlock:v61];

  _Block_release(v61);

  (v65[1])(v64, v66);
}

uint64_t PICompositionController.unstyledSquareThumbnail(scaledToFill:reusingRenderContext:)(uint64_t a1, double a2, double a3)
{
  *(v4 + 168) = a1;
  *(v4 + 176) = v3;
  *(v4 + 152) = a2;
  *(v4 + 160) = a3;
  *(v4 + 184) = swift_getObjectType();
  sub_1A524CC54();
  *(v4 + 192) = sub_1A524CC44();
  v5 = sub_1A524CBC4();
  *(v4 + 200) = v5;
  *(v4 + 208) = v6;

  return MEMORY[0x1EEE6DFA0](sub_1A42FFB50, v5, v6);
}

uint64_t sub_1A42FFB50()
{
  v1 = *(v0 + 168);
  v3 = *(v0 + 152);
  v2 = *(v0 + 160);
  [*(v0 + 176) copyWithZone_];
  sub_1A524E0B4();
  swift_unknownObjectRelease();
  swift_dynamicCast();
  v4 = *(v0 + 144);
  *(v0 + 216) = v4;
  [v4 removeAdjustmentWithKey_];
  [v4 removeAdjustmentWithKey_];
  v5 = objc_opt_self();
  v6 = [v4 composition];
  v7 = [v5 imageRenderRequestWithComposition:v6 fillInSize:1 wideGamut:{v3, v2}];
  *(v0 + 224) = v7;

  v8 = v7;
  v9 = sub_1A524C634();
  [v8 setName_];

  v10 = *(v0 + 168);
  if (v1)
  {
    v11 = *(v0 + 168);
  }

  else
  {
    v11 = [objc_allocWithZone(MEMORY[0x1E69B3C18]) initWithPurpose_];
  }

  v12 = v10;
  [v8 setRenderContext_];

  v13 = [objc_allocWithZone(MEMORY[0x1E69B3C00]) initWithLevel_];
  [v8 setPriority_];

  *(v0 + 16) = v0;
  *(v0 + 56) = v0 + 144;
  *(v0 + 24) = sub_1A42FFE50;
  v14 = swift_continuation_init();
  sub_1A4300130();
  *(v0 + 136) = v15;
  *(v0 + 80) = MEMORY[0x1E69E9820];
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = sub_1A43001A8;
  *(v0 + 104) = &block_descriptor_157;
  *(v0 + 112) = v14;
  [v8 submit_];

  return MEMORY[0x1EEE6DEC8](v0 + 16);
}

uint64_t sub_1A42FFE50()
{
  v1 = *(*v0 + 208);
  v2 = *(*v0 + 200);

  return MEMORY[0x1EEE6DFA0](sub_1A42FFF84, v2, v1);
}

uint64_t sub_1A42FFF84()
{

  v0[10] = 0;
  v1 = v0[18];
  v2 = [v1 result_];
  v3 = v0[10];
  v5 = v0[27];
  v4 = v0[28];
  if (v2)
  {
    v6 = v2;
    v7 = v3;
    v8 = [v6 buffer];
    swift_unknownObjectRelease();
    v9 = sub_1A430020C();

    swift_unknownObjectRelease();
    v10 = v0[1];

    return v10(v9);
  }

  else
  {
    v12 = v3;
    sub_1A5240B84();

    swift_willThrow();
    v13 = v0[1];

    return v13();
  }
}

void sub_1A4300130()
{
  if (!qword_1EB139BC0)
  {
    sub_1A3C52C70(255, &qword_1EB137BF0);
    v0 = sub_1A524CDF4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB139BC0);
    }
  }
}

uint64_t sub_1A43001A8(uint64_t a1, void *a2)
{
  v3 = __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  v4 = *v3;
  **(*(*v3 + 64) + 40) = a2;
  v5 = a2;

  return MEMORY[0x1EEE6DED8](v4);
}

CGImageRef sub_1A430020C()
{
  v3[1] = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  v1 = [v0 CVPixelBuffer];
  VTCreateCGImageFromCVPixelBuffer(v1, 0, v3);

  result = v3[0];
  if (!v3[0])
  {
    __break(1u);
  }

  return result;
}

void sub_1A4300298()
{
  if (!qword_1EB137C00)
  {
    sub_1A42FEFD8();
    sub_1A3DBD9A0();
    v0 = sub_1A524CBF4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB137C00);
    }
  }
}

uint64_t sub_1A4300308(uint64_t a1, void *a2)
{
  sub_1A4300298();
  if (a2)
  {
    v4 = a2;
    return sub_1A524CBD4();
  }

  else
  {
    if (a1)
    {
      _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
    }

    if (qword_1EB1B6DB0 != -1)
    {
      swift_once();
    }

    v6 = sub_1A5246F24();
    __swift_project_value_buffer(v6, qword_1EB1B6DB8);
    v7 = sub_1A5246F04();
    v8 = sub_1A524D244();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_1A3C1C000, v7, v8, "Reached an unexpected state. squareThumbnails has no images and nor errors to pass back to caller.", v9, 2u);
      MEMORY[0x1A590EEC0](v9, -1, -1);
    }

    result = sub_1A524E6E4();
    __break(1u);
  }

  return result;
}

uint64_t sub_1A43004B0(uint64_t a1, const char *a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, void (*a7)(void, void), uint64_t a8)
{
  v37 = a8;
  v38 = a7;
  v36 = a3;
  v39 = a2;
  v11 = sub_1A5246EA4();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1A5246E54();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v32 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = swift_beginAccess();
  if (*(a1 + 16))
  {
    return result;
  }

  v35 = a4;
  v34 = a6;
  if (qword_1EB170750 != -1)
  {
    swift_once();
  }

  v20 = sub_1A5246E94();
  __swift_project_value_buffer(v20, qword_1EB170758);
  v21 = sub_1A5246E84();
  sub_1A5246EB4();
  v22 = sub_1A524D644();
  result = sub_1A524DEC4();
  if (result)
  {
    if ((v35 & 1) == 0)
    {
      v23 = v39;
      if (v39)
      {
LABEL_12:
        v33 = v23;

        sub_1A5246EE4();

        if ((*(v12 + 88))(v14, v11) == *MEMORY[0x1E69E93E8])
        {
          v24 = "[Error] Interval already ended";
        }

        else
        {
          (*(v12 + 8))(v14, v11);
          v24 = "";
        }

        v25 = swift_slowAlloc();
        *v25 = 0;
        v26 = sub_1A5246E34();
        _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v21, v22, v26, v33, v24, v25, 2u);
        MEMORY[0x1A590EEC0](v25, -1, -1);
        goto LABEL_16;
      }

      __break(1u);
    }

    if (v39 >> 32)
    {
      __break(1u);
    }

    else
    {
      if ((v39 & 0xFFFFF800) == 0xD800)
      {
LABEL_26:
        __break(1u);
        __break(1u);
        return result;
      }

      if (v39 >> 16 <= 0x10)
      {
        v23 = &v40;
        goto LABEL_12;
      }
    }

    __break(1u);
    goto LABEL_26;
  }

LABEL_16:

  (*(v16 + 8))(v18, v15);
  if (qword_1EB1B6DB0 != -1)
  {
    swift_once();
  }

  v27 = sub_1A5246F24();
  __swift_project_value_buffer(v27, qword_1EB1B6DB8);
  v28 = sub_1A5246F04();
  v29 = sub_1A524D264();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    *v30 = 136315138;
    sub_1A524E444();
    sub_1A3C2EF94();
  }

  v31 = v34;
  swift_beginAccess();
  if (*(*(v31 + 16) + 16))
  {
    v41 = MEMORY[0x1E69E7CC0];
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  v38(MEMORY[0x1E69E7CC0], 0);
}

void sub_1A43009AC(void *a1)
{
  v4 = v1[2];
  v3 = v1[3];
  v5 = v1[4];
  v6 = v1[8];
  swift_beginAccess();
  if (*(v4 + 16))
  {
    return;
  }

  v24[0] = 0;
  v7 = [a1 result_];
  if (v7)
  {
    v8 = v7;
    v9 = v24[0];
    v10 = [v8 buffer];
    swift_unknownObjectRelease();
    v11 = sub_1A430020C();
    swift_unknownObjectRelease();
    swift_beginAccess();
    v12 = v3[2];
    v13 = v11;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v3[2] = v12;
    if (isUniquelyReferenced_nonNull_native)
    {
      if ((v5 & 0x8000000000000000) == 0)
      {
        goto LABEL_5;
      }
    }

    else
    {
      v12 = sub_1A4300D10();
      v3[2] = v12;
      if ((v5 & 0x8000000000000000) == 0)
      {
LABEL_5:
        if (*(v12 + 16) > v5)
        {
          v15 = v12 + 8 * v5;
          v16 = *(v15 + 32);
          *(v15 + 32) = v13;
          v3[2] = v12;
          swift_endAccess();

          return;
        }

        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v17 = v24[0];
  v3 = sub_1A5240B84();

  swift_willThrow();
  swift_beginAccess();
  *(v4 + 16) = 1;
  if (qword_1EB1B6DB0 != -1)
  {
LABEL_15:
    swift_once();
  }

  v18 = sub_1A5246F24();
  __swift_project_value_buffer(v18, qword_1EB1B6DB8);
  v19 = v3;
  v20 = sub_1A5246F04();
  v21 = sub_1A524D244();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    swift_slowAlloc();
    swift_slowAlloc();
    *v22 = 136315394;
    sub_1A524E444();
    sub_1A3C2EF94();
  }

  v23 = v3;
  v6(0, v3);
}

uint64_t block_copy_helper_13_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1A4300D2C()
{
  swift_getKeyPath();
  (*(*v0 + 408))();
}

uint64_t sub_1A4300DA0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 160))();
  *a2 = result;
  return result;
}

uint64_t sub_1A4300E18(uint64_t a1)
{
  if (v1[3])
  {
    if (a1)
    {
      sub_1A5246BC4();
      sub_1A4308ABC(&qword_1EB137C08, MEMORY[0x1E69C1BF0]);
      swift_retain_n();
      v3 = sub_1A524C594();

      if (v3)
      {
        goto LABEL_7;
      }
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    v5 = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v1 + 416))(v5);
  }

  if (a1)
  {
    goto LABEL_6;
  }

LABEL_7:
  v1[3] = a1;
}

void *sub_1A4300FB4()
{
  swift_getKeyPath();
  (*(*v0 + 408))();

  v1 = v0[4];
  v2 = v1;
  return v1;
}

uint64_t sub_1A4301020@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 208))();
  *a2 = result;
  return result;
}

void sub_1A430106C(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_1A430109C(v1);
}

void sub_1A430109C(void *a1)
{
  v3 = v1[4];
  if (!v3)
  {
    if (!a1)
    {
      v7 = 0;
      goto LABEL_8;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    v9 = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v1 + 416))(v9);

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  sub_1A3C52C70(0, &qword_1EB126630);
  v4 = v3;
  v5 = a1;
  v6 = sub_1A524DBF4();

  if ((v6 & 1) == 0)
  {
    goto LABEL_6;
  }

  v7 = v1[4];
LABEL_8:
  v1[4] = a1;
}

void sub_1A4301214()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + 32);
  *(v1 + 32) = v2;
  v4 = v2;
}

float sub_1A430124C()
{
  swift_getKeyPath();
  (*(*v0 + 408))();

  return v0[10];
}

void sub_1A430132C(float a1)
{
  if (v1[10] == a1)
  {
    v1[10] = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v3 = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v1 + 416))(v3);
  }
}

float sub_1A430141C()
{
  result = *(v0 + 24);
  *(*(v0 + 16) + 40) = result;
  return result;
}

uint64_t sub_1A430142C()
{
  swift_getKeyPath();
  (*(*v0 + 408))();
}

uint64_t sub_1A43014A0@<X0>(void **a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  (*(*v3 + 408))();

  *a2 = v3[6];
}

uint64_t sub_1A4301528(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  KeyPath = swift_getKeyPath();
  v6[2] = v3;
  v6[3] = v2;
  (*(*v3 + 416))(KeyPath, sub_1A4308BF8, v6, MEMORY[0x1E69E7CA8] + 8);
}

uint64_t sub_1A43015D8(void *a1)
{
  swift_allocObject();
  v2 = sub_1A43080B8(a1);

  return v2;
}

void sub_1A4301620()
{
  v1 = [objc_opt_self() defaultManager];
  v2 = [objc_allocWithZone(MEMORY[0x1E6978868]) init];
  [v2 setDeliveryMode_];
  v3 = *(v0 + 16);
  v4 = MEMORY[0x1A590D300]([v3 aspectRatio]);
  v6 = v5;
  [v3 size];
  if (v4 >= v7)
  {
    v4 = v7;
  }

  [v3 size];
  if (v6 >= v8)
  {
    v6 = v8;
  }

  v9 = swift_allocObject();
  swift_weakInit();
  v12[4] = sub_1A4308A4C;
  v12[5] = v9;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 1107296256;
  v12[2] = sub_1A3DD5B38;
  v12[3] = &block_descriptor_158;
  v10 = _Block_copy(v12);
  v11 = v2;

  [v1 requestImageForAsset:v3 targetSize:1 contentMode:v11 options:v10 resultHandler:{v4, v6}];
  _Block_release(v10);
}

void sub_1A43017DC(void *a1)
{
  v2 = sub_1A524BEE4();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &aBlock[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1A524BF64();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &aBlock[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v17 = v8;
    sub_1A3C52C70(0, &qword_1EB12B180);
    v11 = a1;
    v12 = sub_1A524D474();
    v13 = swift_allocObject();
    swift_beginAccess();
    swift_weakLoadStrong();
    swift_weakInit();

    v14 = swift_allocObject();
    *(v14 + 16) = v13;
    *(v14 + 24) = v11;
    aBlock[4] = sub_1A4308A54;
    aBlock[5] = v14;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1A3C2E0D0;
    aBlock[3] = &block_descriptor_123;
    v15 = _Block_copy(aBlock);
    v16 = v11;

    sub_1A524BF14();
    aBlock[0] = MEMORY[0x1E69E7CC0];
    sub_1A4308ABC(&qword_1EB12B1E0, MEMORY[0x1E69E7F60]);
    sub_1A3C56640(0, &qword_1EB12B1C0, 255, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
    sub_1A3C5DE88();
    sub_1A524E224();
    MEMORY[0x1A5908800](0, v10, v5, v15);
    _Block_release(v15);

    (*(v3 + 8))(v5, v2);
    (*(v7 + 8))(v10, v17);
  }
}

uint64_t sub_1A4301B30()
{
  if (qword_1EB1B6DD0 != -1)
  {
    swift_once();
  }

  v1 = v0[2];
  v2 = swift_allocObject();
  swift_weakInit();
  v3 = swift_allocObject();
  swift_weakInit();

  sub_1A43026A4(v1, sub_1A4308140, v2, sub_1A4308148, v3);

  KeyPath = swift_getKeyPath();
  v5 = MEMORY[0x1EEE9AC00](KeyPath);
  (*(*v0 + 416))(v5);
}

void sub_1A4301CF4(uint64_t a1)
{
  v2 = sub_1A52450F4();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = (&v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    (*(v3 + 16))(v5, a1, v2);
    v8 = (*(v3 + 88))(v5, v2);
    if (v8 == *MEMORY[0x1E69C13F8])
    {
      (*(v3 + 96))(v5, v2);
      if (v7[10] == *v5)
      {
        v7[10] = *v5;
LABEL_11:

        return;
      }

      goto LABEL_19;
    }

    if (v8 == *MEMORY[0x1E69C1400])
    {
      if (v7[10] == 0.0)
      {
        v7[10] = 0.0;
        goto LABEL_11;
      }

      goto LABEL_19;
    }

    if (v8 == *MEMORY[0x1E69C13F0])
    {
      if (v7[10] == 1.0)
      {
        v7[10] = 1.0;
        goto LABEL_11;
      }

LABEL_19:
      KeyPath = swift_getKeyPath();
      v14 = MEMORY[0x1EEE9AC00](KeyPath);
      (*(*v7 + 416))(v14);

      return;
    }

    if (v8 == *MEMORY[0x1E69C13E8])
    {
      if (qword_1EB1B6E00 != -1)
      {
        swift_once();
      }

      v9 = sub_1A5246F24();
      __swift_project_value_buffer(v9, qword_1EB1B6E08);
      v10 = sub_1A5246F04();
      v11 = sub_1A524D244();
      if (os_log_type_enabled(v10, v11))
      {
        v12 = swift_slowAlloc();
        *v12 = 0;
        _os_log_impl(&dword_1A3C1C000, v10, v11, "Error occurred when generating scene in AlchemistService.", v12, 2u);
        MEMORY[0x1A590EEC0](v12, -1, -1);
      }
    }

    else
    {
      sub_1A524E6E4();
      __break(1u);
    }
  }
}

uint64_t sub_1A4302198()
{
  v0 = sub_1A5244304();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v5 = result;

    sub_1A4300E18(v6);
    KeyPath = swift_getKeyPath();
    v8 = MEMORY[0x1EEE9AC00](KeyPath);
    *(&v9 - 2) = v5;
    *(&v9 - 1) = 0;
    (*(*v5 + 416))(v8);

    sub_1A5244384();
    sub_1A5244374();
    (*(v1 + 104))(v3, *MEMORY[0x1E69C2E40], v0);
    sub_1A5244364();
  }

  return result;
}

uint64_t sub_1A4302378()
{
  sub_1A3C56640(0, &qword_1EB12B270, 255, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v13[-v2];
  KeyPath = swift_getKeyPath();
  (*(*v0 + 408))(KeyPath);

  v6 = v0[6];
  if (v6)
  {
    v7 = qword_1EB1B6DD0;

    if (v7 != -1)
    {
      swift_once();
    }

    v8 = qword_1EB1B6DD8;
    v9 = sub_1A524CCB4();
    (*(*(v9 - 8) + 56))(v3, 1, 1, v9);
    v10 = swift_allocObject();
    v10[2] = 0;
    v10[3] = 0;
    v10[4] = v8;
    v10[5] = v6;

    sub_1A3D4D930(0, 0, v3, &unk_1A532F168, v10);

    v11 = swift_getKeyPath();
    v12 = MEMORY[0x1EEE9AC00](v11);
    *&v13[-16] = v0;
    *&v13[-8] = 0;
    (*(*v0 + 416))(v12);
  }

  return result;
}

unint64_t sub_1A43025FC()
{
  type metadata accessor for PhotoKitSpatialPhotoPresentationContentSource.RequestManager();
  v0 = swift_allocObject();
  swift_defaultActor_initialize();
  v1 = MEMORY[0x1E69E7CC0];
  v0[14] = MEMORY[0x1E69E7CC0];
  v0[15] = sub_1A4307EE0(v1);
  result = sub_1A4307FCC(v1);
  v0[16] = result;
  qword_1EB1B6DD8 = v0;
  return result;
}

uint64_t sub_1A430265C()
{

  return swift_deallocClassInstance();
}

void *sub_1A43026A4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  type metadata accessor for PhotoKitSpatialPhotoPresentationContentSource.RequestManager.Request();
  v12 = swift_allocObject();
  v12[2] = a1;
  v12[3] = a2;
  v12[4] = a3;
  v12[5] = a4;
  v12[6] = a5;
  v13 = qword_1EB1B6DE0;
  v14 = a1;

  if (v13 != -1)
  {
    swift_once();
  }

  v15 = qword_1EB1B6DE8;
  v16 = swift_allocObject();
  *(v16 + 16) = v6;
  *(v16 + 24) = v12;
  v17 = *(v15 + 16);
  MEMORY[0x1EEE9AC00](v16);

  os_unfair_lock_lock((v17 + 24));
  sub_1A4308C10((v17 + 16), &v19);
  os_unfair_lock_unlock((v17 + 24));

  return v12;
}

uint64_t sub_1A4302810(uint64_t a1, uint64_t a2)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1A3D60150;

  return sub_1A430297C(a2);
}

uint64_t sub_1A43028AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return MEMORY[0x1EEE6DFA0](sub_1A43028CC, a4, 0);
}

uint64_t sub_1A43028CC()
{
  sub_1A4305624(*(v0 + 24));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A430297C(uint64_t a1)
{
  v2[11] = a1;
  v2[12] = v1;
  sub_1A3C56640(0, &qword_1EB12B270, 255, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  v2[13] = swift_task_alloc();
  v3 = sub_1A52450C4();
  v2[14] = v3;
  v2[15] = *(v3 - 8);
  v2[16] = swift_task_alloc();
  v4 = sub_1A5245104();
  v2[17] = v4;
  v2[18] = *(v4 - 8);
  v2[19] = swift_task_alloc();
  v5 = sub_1A5246E54();
  v2[20] = v5;
  v2[21] = *(v5 - 8);
  v2[22] = swift_task_alloc();
  v2[23] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A4302B60, v1, 0);
}

uint64_t sub_1A4302B60()
{
  if (qword_1EB1B6E20 != -1)
  {
    swift_once();
  }

  v1 = sub_1A5246E94();
  __swift_project_value_buffer(v1, qword_1EB1B6E28);
  sub_1A5246E44();
  v2 = sub_1A5246E84();
  v3 = sub_1A524D654();
  if (sub_1A524DEC4())
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    v5 = sub_1A5246E34();
    _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v2, v3, v5, "Latency", "", v4, 2u);
    MEMORY[0x1A590EEC0](v4, -1, -1);
  }

  v6 = v0[22];
  v7 = v0[23];
  v8 = v0[20];
  v9 = v0[21];
  v11 = v0[15];
  v10 = v0[16];
  v12 = v0[14];
  v13 = v0[11];

  (*(v9 + 16))(v6, v7, v8);
  sub_1A5246ED4();
  swift_allocObject();
  v0[24] = sub_1A5246EC4();
  (*(v9 + 8))(v7, v8);
  v14 = *(v13 + 16);
  v0[25] = v14;
  (*(v11 + 104))(v10, *MEMORY[0x1E69C13D8], v12);
  sub_1A52450E4();
  v15 = swift_task_alloc();
  v0[26] = v15;
  *v15 = v0;
  v15[1] = sub_1A4302DB0;

  return MEMORY[0x1EEE2A2A8](v14, 0, 0);
}

uint64_t sub_1A4302DB0(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 216) = a1;
  *(v4 + 224) = v1;

  v5 = *(v3 + 96);
  if (v1)
  {

    v6 = sub_1A43037DC;
  }

  else
  {
    v6 = sub_1A4302EF0;
  }

  return MEMORY[0x1EEE6DFA0](v6, v5, 0);
}

void sub_1A4302EF0()
{
  v73 = v0;
  v1 = *(v0 + 216);
  if (v1)
  {
    if (qword_1EB1B6E00 != -1)
    {
      swift_once();
    }

    v2 = *(v0 + 200);
    v3 = sub_1A5246F24();
    __swift_project_value_buffer(v3, qword_1EB1B6E08);
    v4 = v2;
    v5 = sub_1A5246F04();
    v6 = sub_1A524D264();
    v7 = os_log_type_enabled(v5, v6);
    v8 = *(v0 + 200);
    if (v7)
    {
      v9 = swift_slowAlloc();
      v72 = swift_slowAlloc();
      *v9 = 136446210;
      v10 = [v8 uuid];

      if (v10)
      {
        sub_1A524C674();

        sub_1A3C2EF94();
      }

      goto LABEL_39;
    }

    v26 = *(v0 + 144);
    v25 = *(v0 + 152);
    v27 = *(v0 + 136);
    v28 = *(v0 + 104);
    v29 = *(v0 + 88);
    sub_1A5246BC4();
    swift_allocObject();
    v30 = v1;
    v31 = sub_1A5246BA4();
    v32 = sub_1A524CCB4();
    (*(*(v32 - 8) + 56))(v28, 1, 1, v32);
    sub_1A524CC54();

    v33 = sub_1A524CC44();
    v34 = swift_allocObject();
    v35 = MEMORY[0x1E69E85E0];
    v34[2] = v33;
    v34[3] = v35;
    v34[4] = v29;
    v34[5] = v31;
    sub_1A3D4D930(0, 0, v28, &unk_1A532F308, v34);

    (*(v26 + 8))(v25, v27);
    v36 = 0;
    goto LABEL_14;
  }

  v11 = *(v0 + 224);
  v12 = *(v0 + 200);
  v13 = *(v0 + 96);
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v72 = *(v13 + 120);
  v15 = v72;
  *(v13 + 120) = 0x8000000000000000;
  v16 = sub_1A4307020(v12);
  v18 = v15[2];
  v19 = (v17 & 1) == 0;
  v20 = __OFADD__(v18, v19);
  v21 = v18 + v19;
  if (!v20)
  {
    v22 = v17;
    if (v15[3] >= v21)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v70 = v16;
        sub_1A4307A50();
        v16 = v70;
        v15 = v72;
        *(v13 + 120) = v72;
        if (v22)
        {
          goto LABEL_21;
        }

        goto LABEL_19;
      }
    }

    else
    {
      v23 = *(v0 + 200);
      sub_1A430739C(v21, isUniquelyReferenced_nonNull_native);
      v15 = v72;
      v16 = sub_1A4307020(v23);
      if ((v22 & 1) != (v24 & 1))
      {
        sub_1A3C52C70(0, &qword_1EB126660);

        sub_1A524EB84();
        return;
      }
    }

    *(v13 + 120) = v15;
    if (v22)
    {
      goto LABEL_21;
    }

LABEL_19:
    v38 = *(v0 + 200);
    v15[(v16 >> 6) + 8] |= 1 << v16;
    *(v15[6] + 8 * v16) = v38;
    *(v15[7] + 8 * v16) = MEMORY[0x1E69E7CC0];
    v39 = v15[2];
    v20 = __OFADD__(v39, 1);
    v40 = v39 + 1;
    if (v20)
    {
      __break(1u);
LABEL_39:
      __break(1u);
LABEL_40:
      __break(1u);
      return;
    }

    v41 = v16;
    v42 = *(v0 + 200);
    v15[2] = v40;
    v43 = v42;
    v16 = v41;
LABEL_21:
    v44 = (v15[7] + 8 * v16);

    MEMORY[0x1A5907D70](v45);
    if (*((*v44 & 0xFFFFFFFFFFFFFF8) + 0x10) < *((*v44 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      goto LABEL_22;
    }

    goto LABEL_34;
  }

  __break(1u);
LABEL_34:
  sub_1A524CA74();
LABEL_22:
  v46 = *(v0 + 96);
  sub_1A524CAE4();
  swift_endAccess();
  swift_beginAccess();
  if (*(*(v46 + 128) + 16))
  {
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  if (qword_1EB1B6E00 != -1)
  {
    swift_once();
  }

  v47 = *(v0 + 200);
  v48 = sub_1A5246F24();
  __swift_project_value_buffer(v48, qword_1EB1B6E08);
  v49 = v47;
  v50 = sub_1A5246F04();
  v51 = sub_1A524D264();
  v52 = os_log_type_enabled(v50, v51);
  v53 = *(v0 + 200);
  if (v52)
  {
    v54 = swift_slowAlloc();
    v72 = swift_slowAlloc();
    *v54 = 136446210;
    v55 = [v53 uuid];

    if (v55)
    {
      sub_1A524C674();

      sub_1A3C2EF94();
    }

    goto LABEL_40;
  }

  v56 = qword_1EB1B6DF0;
  v57 = *(v0 + 200);
  if (v56 == -1)
  {
    v58 = v57;
  }

  else
  {
    swift_once();
    v58 = *(v0 + 200);
  }

  v59 = qword_1EB1B6DF8;
  v60 = swift_allocObject();
  swift_weakInit();
  v61 = swift_allocObject();
  *(v61 + 16) = v60;
  *(v61 + 24) = v58;
  v62 = *(v59 + 16);
  v63 = swift_task_alloc();
  *(v63 + 16) = &unk_1A532F2F8;
  *(v63 + 24) = v61;
  v64 = v58;

  os_unfair_lock_lock((v62 + 24));
  sub_1A4308764((v62 + 16), &v72);
  os_unfair_lock_unlock((v62 + 24));
  if (!v11)
  {
    v65 = *(v0 + 200);
    v66 = *(v0 + 144);
    v71 = *(v0 + 152);
    v67 = *(v0 + 136);

    v68 = v72;

    swift_beginAccess();
    v69 = swift_isUniquelyReferenced_nonNull_native();
    v72 = *(v46 + 128);
    *(v46 + 128) = 0x8000000000000000;
    sub_1A4307600(v68, v65, v69);

    *(v46 + 128) = v72;
    swift_endAccess();
    (*(v66 + 8))(v71, v67);
    v36 = sub_1A3EBB02C;
LABEL_14:
    sub_1A4303E44();

    sub_1A3C33378(v36);

    v37 = *(v0 + 8);

    v37();
  }
}

void sub_1A43037DC()
{
  v50 = v0;
  v1 = *(v0 + 200);
  v2 = *(v0 + 96);
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v49 = *(v2 + 120);
  v4 = v49;
  *(v2 + 120) = 0x8000000000000000;
  v5 = sub_1A4307020(v1);
  v7 = v4[2];
  v8 = (v6 & 1) == 0;
  v9 = __OFADD__(v7, v8);
  v10 = v7 + v8;
  if (!v9)
  {
    v11 = v6;
    if (v4[3] >= v10)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v47 = v5;
        sub_1A4307A50();
        v5 = v47;
        v4 = v49;
        *(v2 + 120) = v49;
        if (v11)
        {
          goto LABEL_11;
        }

        goto LABEL_9;
      }
    }

    else
    {
      v12 = *(v0 + 200);
      sub_1A430739C(v10, isUniquelyReferenced_nonNull_native);
      v4 = v49;
      v5 = sub_1A4307020(v12);
      if ((v11 & 1) != (v13 & 1))
      {
        sub_1A3C52C70(0, &qword_1EB126660);

        sub_1A524EB84();
        return;
      }
    }

    *(v2 + 120) = v4;
    if (v11)
    {
      goto LABEL_11;
    }

LABEL_9:
    v14 = *(v0 + 200);
    v4[(v5 >> 6) + 8] |= 1 << v5;
    *(v4[6] + 8 * v5) = v14;
    *(v4[7] + 8 * v5) = MEMORY[0x1E69E7CC0];
    v15 = v4[2];
    v9 = __OFADD__(v15, 1);
    v16 = v15 + 1;
    if (v9)
    {
      __break(1u);
LABEL_30:
      __break(1u);
      return;
    }

    v17 = *(v0 + 200);
    v4[2] = v16;
    v18 = v5;
    v19 = v17;
    v5 = v18;
LABEL_11:
    v20 = (v4[7] + 8 * v5);

    MEMORY[0x1A5907D70](v21);
    if (*((*v20 & 0xFFFFFFFFFFFFFF8) + 0x10) < *((*v20 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      goto LABEL_12;
    }

    goto LABEL_25;
  }

  __break(1u);
LABEL_25:
  sub_1A524CA74();
LABEL_12:
  v22 = *(v0 + 96);
  sub_1A524CAE4();
  swift_endAccess();
  swift_beginAccess();
  if (*(*(v22 + 128) + 16))
  {
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  if (qword_1EB1B6E00 != -1)
  {
    swift_once();
  }

  v23 = *(v0 + 200);
  v24 = sub_1A5246F24();
  __swift_project_value_buffer(v24, qword_1EB1B6E08);
  v25 = v23;
  v26 = sub_1A5246F04();
  v27 = sub_1A524D264();
  v28 = os_log_type_enabled(v26, v27);
  v29 = *(v0 + 200);
  if (v28)
  {
    v30 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    *v30 = 136446210;
    v31 = [v29 uuid];

    if (v31)
    {
      sub_1A524C674();

      sub_1A3C2EF94();
    }

    goto LABEL_30;
  }

  v32 = qword_1EB1B6DF0;
  v33 = *(v0 + 200);
  if (v32 == -1)
  {
    v34 = v33;
  }

  else
  {
    swift_once();
    v34 = *(v0 + 200);
  }

  v35 = qword_1EB1B6DF8;
  v36 = swift_allocObject();
  swift_weakInit();
  v37 = swift_allocObject();
  *(v37 + 16) = v36;
  *(v37 + 24) = v34;
  v38 = *(v35 + 16);
  v39 = swift_task_alloc();
  *(v39 + 16) = &unk_1A532F2F8;
  *(v39 + 24) = v37;
  v40 = v34;

  os_unfair_lock_lock((v38 + 24));
  sub_1A4308764((v38 + 16), &v49);
  os_unfair_lock_unlock((v38 + 24));
  v41 = *(v0 + 200);
  v42 = *(v0 + 144);
  v48 = *(v0 + 152);
  v43 = *(v0 + 136);

  v44 = v49;

  swift_beginAccess();
  v45 = swift_isUniquelyReferenced_nonNull_native();
  v49 = *(v22 + 128);
  *(v22 + 128) = 0x8000000000000000;
  sub_1A4307600(v44, v41, v45);

  *(v22 + 128) = v49;
  swift_endAccess();
  (*(v42 + 8))(v48, v43);
  sub_1A4303E44();

  sub_1A3C33378(sub_1A3EBB02C);

  v46 = *(v0 + 8);

  v46();
}

uint64_t sub_1A4303E44()
{
  v0 = sub_1A5246EA4();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1A5246E54();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EB1B6E20 != -1)
  {
    swift_once();
  }

  v8 = sub_1A5246E94();
  __swift_project_value_buffer(v8, qword_1EB1B6E28);
  v9 = sub_1A5246E84();
  sub_1A5246EB4();
  v10 = sub_1A524D644();
  if (sub_1A524DEC4())
  {

    sub_1A5246EE4();

    if ((*(v1 + 88))(v3, v0) == *MEMORY[0x1E69E93E8])
    {
      v11 = "[Error] Interval already ended";
    }

    else
    {
      (*(v1 + 8))(v3, v0);
      v11 = "";
    }

    v12 = swift_slowAlloc();
    *v12 = 0;
    v13 = sub_1A5246E34();
    _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v9, v10, v13, "Latency", v11, v12, 2u);
    MEMORY[0x1A590EEC0](v12, -1, -1);
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_1A43040D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  sub_1A524CC54();
  v5[4] = sub_1A524CC44();
  v7 = sub_1A524CBC4();

  return MEMORY[0x1EEE6DFA0](sub_1A4304168, v7, v6);
}

uint64_t sub_1A4304168()
{
  v1 = v0[3];
  v2 = v0[2];

  (*(v2 + 40))(v1);
  v3 = v0[1];

  return v3();
}

uint64_t sub_1A43041DC(uint64_t a1, uint64_t a2)
{
  v2[6] = a1;
  v2[7] = a2;
  v3 = sub_1A524CC04();
  v2[8] = v3;
  v2[9] = *(v3 - 8);
  v2[10] = swift_task_alloc();
  sub_1A3C56640(0, &qword_1EB12B270, 255, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  v2[11] = swift_task_alloc();
  v4 = sub_1A52450C4();
  v2[12] = v4;
  v2[13] = *(v4 - 8);
  v2[14] = swift_task_alloc();
  v5 = sub_1A5245104();
  v2[15] = v5;
  v2[16] = *(v5 - 8);
  v2[17] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A43043B4, 0, 0);
}

uint64_t sub_1A43043B4()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[18] = Strong;
  if (Strong)
  {
    if ((sub_1A524CDC4() & 1) == 0)
    {
      if (qword_1EB1B6E00 != -1)
      {
        swift_once();
      }

      v17 = v0[7];
      v18 = sub_1A5246F24();
      v0[19] = __swift_project_value_buffer(v18, qword_1EB1B6E08);
      v19 = v17;
      v20 = sub_1A5246F04();
      v21 = sub_1A524D264();
      v22 = os_log_type_enabled(v20, v21);
      v23 = v0[7];
      if (!v22)
      {

        v26 = v0[7];
        (*(v0[13] + 104))(v0[14], *MEMORY[0x1E69C13D8], v0[12]);
        sub_1A52450E4();
        v27 = swift_allocObject();
        v0[20] = v27;
        swift_weakInit();
        v28 = swift_allocObject();
        v0[21] = v28;
        *(v28 + 16) = v27;
        *(v28 + 24) = v26;
        v29 = v26;

        v30 = swift_task_alloc();
        v0[22] = v30;
        *v30 = v0;
        v30[1] = sub_1A4304884;
        v12 = sub_1A4308918;
        v11 = v0[7];
        v13 = v28;
        v14 = 1;

        return MEMORY[0x1EEE2A288](v11, v12, v13, v14);
      }

      v24 = swift_slowAlloc();
      swift_slowAlloc();
      *v24 = 136446210;
      v25 = [v23 uuid];

      if (v25)
      {
        sub_1A524C674();

        sub_1A3C2EF94();
      }

LABEL_21:
      __break(1u);
      return MEMORY[0x1EEE2A288](v11, v12, v13, v14);
    }
  }

  if (qword_1EB1B6E00 != -1)
  {
    swift_once();
  }

  v2 = v0[7];
  v3 = sub_1A5246F24();
  __swift_project_value_buffer(v3, qword_1EB1B6E08);
  v4 = v2;
  v5 = sub_1A5246F04();
  v6 = sub_1A524D264();
  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[7];
  if (v7)
  {
    v9 = swift_slowAlloc();
    swift_slowAlloc();
    *v9 = 136446210;
    v10 = [v8 uuid];

    if (v10)
    {
      sub_1A524C674();

      sub_1A3C2EF94();
    }

    __break(1u);
    goto LABEL_21;
  }

  v15 = v0[1];

  return v15();
}

uint64_t sub_1A4304884(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 184) = a1;
  *(v3 + 192) = v1;

  if (v1)
  {
    v4 = sub_1A4304CB8;
  }

  else
  {

    v4 = sub_1A43049D0;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

void sub_1A43049D0()
{
  v1 = *(v0 + 56);
  v2 = sub_1A5246F04();
  v3 = sub_1A524D264();
  v4 = os_log_type_enabled(v2, v3);
  v5 = *(v0 + 56);
  if (v4)
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 136446210;
    v8 = [v5 uuid];

    if (v8)
    {
      sub_1A524C674();

      sub_1A3C2EF94();
    }

    __break(1u);
  }

  else
  {

    v9 = *(v0 + 184);
    v10 = *(v0 + 136);
    v11 = *(v0 + 144);
    v12 = *(v0 + 120);
    v13 = *(v0 + 128);
    v14 = *(v0 + 88);
    v15 = *(v0 + 56);
    sub_1A5246BC4();
    swift_allocObject();
    v16 = v9;
    v17 = sub_1A5246BA4();
    v18 = sub_1A524CCB4();
    (*(*(v18 - 8) + 56))(v14, 1, 1, v18);
    sub_1A524CC54();
    swift_retain_n();
    v19 = v15;

    v20 = sub_1A524CC44();
    v21 = swift_allocObject();
    v22 = MEMORY[0x1E69E85E0];
    v21[2] = v20;
    v21[3] = v22;
    v21[4] = v11;
    v21[5] = v19;
    v21[6] = v17;
    sub_1A3D4D930(0, 0, v14, &unk_1A532F328, v21);

    (*(v13 + 8))(v10, v12);

    v23 = *(v0 + 8);

    v23();
  }
}

void sub_1A4304CB8()
{
  v2 = *(v0 + 192);
  (*(*(v0 + 128) + 8))(*(v0 + 136), *(v0 + 120));

  *(v0 + 40) = v2;
  v3 = v2;
  sub_1A3DBD9A0();
  v4 = swift_dynamicCast();
  v5 = *(v0 + 192);
  v6 = *(v0 + 56);
  if (v4)
  {

    v7 = v6;
    v8 = sub_1A5246F04();
    v9 = sub_1A524D264();
    v10 = os_log_type_enabled(v8, v9);
    v11 = *(v0 + 56);
    if (v10)
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      *v12 = 136446210;
      v14 = [v11 uuid];

      if (v14)
      {
        sub_1A524C674();

        sub_1A3C2EF94();
      }

      __break(1u);
LABEL_14:

      __break(1u);
      return;
    }

    v24 = *(v0 + 144);
    v25 = *(v0 + 80);
    v26 = *(v0 + 88);
    v27 = *(v0 + 64);
    v28 = *(v0 + 72);
    v29 = *(v0 + 56);
    v30 = sub_1A524CCB4();
    (*(*(v30 - 8) + 56))(v26, 1, 1, v30);
    sub_1A524CC54();
    v31 = v29;

    v32 = sub_1A524CC44();
    v33 = swift_allocObject();
    v34 = MEMORY[0x1E69E85E0];
    v33[2] = v32;
    v33[3] = v34;
    v33[4] = v24;
    v33[5] = v31;
    v33[6] = 0;
    sub_1A3D4D930(0, 0, v26, &unk_1A532F320, v33);

    (*(v28 + 8))(v25, v27);
    v35 = *(v0 + 40);
  }

  else
  {

    v15 = v6;
    v16 = v5;
    v17 = sub_1A5246F04();
    v18 = sub_1A524D244();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = *(v0 + 56);
      v20 = swift_slowAlloc();
      swift_slowAlloc();
      v21 = swift_slowAlloc();
      *v20 = 136446466;
      v22 = [v19 uuid];
      v14 = *(v0 + 192);
      v1 = *(v0 + 56);
      if (v22)
      {
        v23 = v22;

        sub_1A524C674();
        sub_1A3C2EF94();
      }

      goto LABEL_14;
    }

    v36 = *(v0 + 192);
    v37 = *(v0 + 56);

    v38 = *(v0 + 192);
    v39 = *(v0 + 56);
    v40 = sub_1A5240B74();
    v41 = v40;
    sub_1A4305FA4(v40, v39);

    v35 = v38;
  }

  v42 = *(v0 + 8);

  v42();
}

uint64_t sub_1A43051B0(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = sub_1A52450F4();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3C56640(0, &qword_1EB12B270, 255, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v20 - v10;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v13 = result;
    v14 = sub_1A524CCB4();
    (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
    (*(v6 + 16))(&v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v5);
    sub_1A524CC54();

    v15 = a3;
    v16 = sub_1A524CC44();
    v17 = (*(v6 + 80) + 48) & ~*(v6 + 80);
    v18 = swift_allocObject();
    v19 = MEMORY[0x1E69E85E0];
    *(v18 + 2) = v16;
    *(v18 + 3) = v19;
    *(v18 + 4) = v13;
    *(v18 + 5) = v15;
    (*(v6 + 32))(&v18[v17], v8, v5);
    sub_1A3D4D930(0, 0, v11, &unk_1A532F338, v18);
  }

  return result;
}

void sub_1A430541C(uint64_t a1, void *a2)
{
  v3 = v2;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v2;
    sub_1A4307600(a1, a2, isUniquelyReferenced_nonNull_native);

    *v2 = v12;
  }

  else
  {
    v6 = sub_1A4307020(a2);
    if (v7)
    {
      v8 = v6;
      v9 = swift_isUniquelyReferenced_nonNull_native();
      v10 = *v2;
      v13 = *v3;
      if (!v9)
      {
        sub_1A43078F8();
        v10 = v13;
      }

      sub_1A3FB731C(v8, v10);

      *v3 = v10;
    }

    else
    {
    }
  }
}

void sub_1A4305520(uint64_t a1, void *a2)
{
  v3 = v2;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v2;
    sub_1A430777C(a1, a2, isUniquelyReferenced_nonNull_native);

    *v2 = v12;
  }

  else
  {
    v6 = sub_1A4307020(a2);
    if (v7)
    {
      v8 = v6;
      v9 = swift_isUniquelyReferenced_nonNull_native();
      v10 = *v2;
      v13 = *v3;
      if (!v9)
      {
        sub_1A4307A50();
        v10 = v13;
      }

      sub_1A3FB731C(v8, v10);

      *v3 = v10;
    }

    else
    {
    }
  }
}

uint64_t sub_1A4305624(uint64_t a1)
{
  v3 = *(a1 + 16);
  v4 = sub_1A430292C();
  v6 = sub_1A430586C(v10, v3);
  if (*v7)
  {
    sub_1A3C56640(0, &qword_1EB137C28, v5, type metadata accessor for PhotoKitSpatialPhotoPresentationContentSource.RequestManager.Request, MEMORY[0x1E69E62F8]);
    Array.remove(where:)(sub_1A4059F98, a1, v8);
  }

  (v6)(v10, 0);
  (v4)(v11, 0);
  swift_beginAccess();
  if (*(*(v1 + 120) + 16))
  {
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  result = swift_beginAccess();
  if (*(*(v1 + 128) + 16))
  {
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  return result;
}

void (*sub_1A430586C(uint64_t **a1, uint64_t a2))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  *a1 = v4;
  v4[4] = sub_1A4307BA8(v4, a2);
  return sub_1A3DB3FF0;
}

uint64_t sub_1A43058E4()
{
  swift_beginAccess();
  if (*(*(v0 + 120) + 16))
  {
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  return MEMORY[0x1E69E7CC0];
}

uint64_t sub_1A43059E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[5] = a4;
  v6[8] = sub_1A524CC54();
  v6[9] = sub_1A524CC44();

  return MEMORY[0x1EEE6DFA0](sub_1A4305A64, a4, 0);
}

void sub_1A4305A64()
{
  v1 = *(v0 + 40);
  swift_beginAccess();
  *(v0 + 80) = *(v1 + 120);
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A4305B0C()
{
  v1 = v0[10];

  if (*(v1 + 16))
  {
    sub_1A4307020(v0[6]);
    if (v2)
    {
      _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
    }
  }

  v3 = v0[1];

  return v3();
}

uint64_t sub_1A4305C70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  v8 = sub_1A52450F4();
  v6[5] = v8;
  v6[6] = *(v8 - 8);
  v6[7] = swift_task_alloc();
  v6[8] = sub_1A524CC54();
  v6[9] = sub_1A524CC44();

  return MEMORY[0x1EEE6DFA0](sub_1A4305D50, a4, 0);
}

uint64_t sub_1A4305D50()
{
  *(v0 + 80) = sub_1A43058E4();
  v2 = sub_1A524CBC4();

  return MEMORY[0x1EEE6DFA0](sub_1A4305DE4, v2, v1);
}

uint64_t sub_1A4305DE4()
{
  v1 = v0[10];

  if (v1 >> 62)
  {
    result = sub_1A524E2B4();
    v3 = result;
    if (!result)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v3 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v3)
    {
      goto LABEL_10;
    }
  }

  if (v3 < 1)
  {
    __break(1u);
    return result;
  }

  v4 = 0;
  v5 = v0[6];
  v17 = v1 & 0xC000000000000001;
  v14 = v0[10] + 32;
  v16 = *MEMORY[0x1E69C13F0];
  v15 = (v5 + 104);
  v6 = (v5 + 8);
  do
  {
    if (v17)
    {
      v7 = MEMORY[0x1A59097F0](v4, v0[10]);
    }

    else
    {
      v7 = *(v14 + 8 * v4);
    }

    v8 = v0[7];
    v9 = v0[4];
    v10 = v0[5];
    ++v4;
    v11 = *(v7 + 40);

    v11(v9);

    v12 = *(v7 + 24);
    (*v15)(v8, v16, v10);
    v12(v8);
    (*v6)(v8, v10);
  }

  while (v3 != v4);
LABEL_10:

  v13 = v0[1];

  return v13();
}

uint64_t sub_1A4305FA4(void *a1, void *a2)
{
  sub_1A3C56640(0, &qword_1EB12B270, 255, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v19 - v6;
  v8 = sub_1A524CCB4();
  v9 = *(*(v8 - 8) + 56);
  v9(v7, 1, 1, v8);
  sub_1A524CC54();

  v10 = a2;
  v11 = sub_1A524CC44();
  v12 = swift_allocObject();
  v13 = MEMORY[0x1E69E85E0];
  v12[2] = v11;
  v12[3] = v13;
  v12[4] = v2;
  v12[5] = v10;
  v12[6] = 0;
  sub_1A3D4D930(0, 0, v7, &unk_1A532F2D8, v12);

  v9(v7, 1, 1, v8);
  v14 = a1;
  v15 = v10;
  v16 = sub_1A524CC44();
  v17 = swift_allocObject();
  v17[2] = v16;
  v17[3] = v13;
  v17[4] = v15;
  v17[5] = a1;
  sub_1A3D4D930(0, 0, v7, &unk_1A532F2E8, v17);
}

uint64_t sub_1A4306198(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = sub_1A5244304();
  v5[4] = v6;
  v5[5] = *(v6 - 8);
  v5[6] = swift_task_alloc();
  sub_1A524CC54();
  v5[7] = sub_1A524CC44();
  v8 = sub_1A524CBC4();

  return MEMORY[0x1EEE6DFA0](sub_1A430628C, v8, v7);
}

uint64_t sub_1A430628C()
{
  v1 = v0[2];

  v2 = [v1 uuid];
  if (v2)
  {
    v3 = v2;
    v4 = [objc_opt_self() defaultManager];
    v5 = [v4 willBeginLoadOperationWithItemIdentifier_];

    v6 = v5;
    v7 = v5;
    if (!v5)
    {
      sub_1A524C674();
      v7 = sub_1A524C634();

      sub_1A524C674();
      v6 = sub_1A524C634();
    }

    v8 = v0[3];
    v9 = v5;
    [v4 didUpdateLoadOperationWithTrackingID:v7 withProgress:0.0];

    if (v8)
    {
      v10 = sub_1A5240B74();
    }

    else
    {
      v10 = 0;
    }

    [v4 didCompleteLoadOperationWithTrackingID:v6 withSuccess:0 error:v10 isFromExplicitUserAction:1];

    sub_1A5244384();
    sub_1A5244374();
    v11 = sub_1A5244334();

    if (v11)
    {
      v13 = v0[5];
      v12 = v0[6];
      v14 = v0[4];
      sub_1A5244374();
      (*(v13 + 104))(v12, *MEMORY[0x1E69C2E48], v14);
      sub_1A5244364();
    }
  }

  v15 = v0[1];

  return v15();
}

uint64_t sub_1A43064A4(uint64_t a1, uint64_t *a2)
{
  type metadata accessor for PhotoKitSpatialPhotoPresentationContentSource.SerialTaskQueue();
  v3 = swift_allocObject();
  sub_1A40C78AC();
  result = swift_allocObject();
  *(result + 24) = 0;
  *(result + 16) = 0;
  *(v3 + 16) = result;
  *a2 = v3;
  return result;
}

uint64_t sub_1A43064FC()
{

  swift_defaultActor_destroy();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t sub_1A4306550@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  sub_1A3C56640(0, &qword_1EB12B270, 255, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v16 - v9;
  v11 = *a1;
  sub_1A524CC74();
  v12 = sub_1A524CCB4();
  (*(*(v12 - 8) + 56))(v10, 0, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = v11;
  v13[5] = a2;
  v13[6] = a3;

  v14 = sub_1A3D4D930(0, 0, v10, &unk_1A532F318, v13);
  *a1 = v14;
  *a4 = v14;
}

uint64_t sub_1A43066B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int *a5, uint64_t a6)
{
  v6[2] = a5;
  v6[3] = a6;
  if (a4)
  {
    v8 = swift_task_alloc();
    v6[4] = v8;
    *v8 = v6;
    v8[1] = sub_1A430683C;
    v9 = MEMORY[0x1E69E73E0];
    v10 = MEMORY[0x1E69E7410];
    v11 = MEMORY[0x1E69E7CA8] + 8;

    return MEMORY[0x1EEE6DA20](v6 + 6, a4, v11, v9, v10);
  }

  else
  {
    v14 = (a5 + *a5);
    v12 = swift_task_alloc();
    v6[5] = v12;
    *v12 = v6;
    v12[1] = sub_1A4306A24;

    return v14();
  }
}

uint64_t sub_1A430683C()
{

  return MEMORY[0x1EEE6DFA0](sub_1A4306938, 0, 0);
}

uint64_t sub_1A4306938()
{
  v3 = (*(v0 + 16) + **(v0 + 16));
  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  *v1 = v0;
  v1[1] = sub_1A4306A24;

  return v3();
}

uint64_t sub_1A4306A24()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1A4306C58()
{

  v1 = OBJC_IVAR____TtC12PhotosUICore45PhotoKitSpatialPhotoPresentationContentSource___observationRegistrar;
  v2 = sub_1A5241614();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

void sub_1A4306E80()
{
  v0 = sub_1A5246F24();
  __swift_allocate_value_buffer(v0, qword_1EB1B6E08);
  __swift_project_value_buffer(v0, qword_1EB1B6E08);
  sub_1A5246EF4();
}

uint64_t sub_1A4306EE4()
{
  v0 = sub_1A5246F24();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1A5246E94();
  __swift_allocate_value_buffer(v4, qword_1EB1B6E28);
  __swift_project_value_buffer(v4, qword_1EB1B6E28);
  if (qword_1EB1B6E00 != -1)
  {
    swift_once();
  }

  v5 = __swift_project_value_buffer(v0, qword_1EB1B6E08);
  (*(v1 + 16))(v3, v5, v0);
  return sub_1A5246E64();
}

unint64_t sub_1A4307020(uint64_t a1)
{
  v2 = sub_1A524DBE4();

  return sub_1A4307064(a1, v2);
}

unint64_t sub_1A4307064(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    sub_1A3C52C70(0, &qword_1EB126660);
    do
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_1A524DBF4();

      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

uint64_t sub_1A4307138(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_1A430851C();
  result = sub_1A524E774();
  v7 = result;
  if (*(v5 + 16))
  {
    v31 = v2;
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
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((a2 & 1) == 0)
      {
        v22 = v20;
      }

      result = sub_1A524DBE4();
      v23 = -1 << *(v7 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v14 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v14 + 8 * v25);
          if (v29 != -1)
          {
            v15 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v24) & ~*(v14 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((a2 & 1) == 0)
    {

      v3 = v31;
      goto LABEL_33;
    }

    v30 = 1 << *(v5 + 32);
    v3 = v31;
    if (v30 >= 64)
    {
      bzero((v5 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v30;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_1A430739C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_1A4308610();
  result = sub_1A524E774();
  v7 = result;
  if (*(v5 + 16))
  {
    v31 = v2;
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
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((a2 & 1) == 0)
      {
        v22 = v20;
        _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
      }

      result = sub_1A524DBE4();
      v23 = -1 << *(v7 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v14 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v14 + 8 * v25);
          if (v29 != -1)
          {
            v15 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v24) & ~*(v14 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((a2 & 1) == 0)
    {

      v3 = v31;
      goto LABEL_33;
    }

    v30 = 1 << *(v5 + 32);
    v3 = v31;
    if (v30 >= 64)
    {
      bzero((v5 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v30;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

id sub_1A4307600(uint64_t a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_1A4307020(a2);
  v10 = *(v7 + 16);
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_17;
  }

  v14 = v9;
  v15 = *(v7 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 < v13 || (a3 & 1) != 0)
    {
      sub_1A4307138(v13, a3 & 1);
      v8 = sub_1A4307020(a2);
      if ((v14 & 1) != (v17 & 1))
      {
LABEL_18:
        sub_1A3C52C70(0, &qword_1EB126660);
        result = sub_1A524EB84();
        __break(1u);
        return result;
      }
    }

    else
    {
      v16 = v8;
      sub_1A43078F8();
      v8 = v16;
    }
  }

  v18 = *v4;
  if (v14)
  {
    *(v18[7] + 8 * v8) = a1;
  }

  v18[(v8 >> 6) + 8] |= 1 << v8;
  *(v18[6] + 8 * v8) = a2;
  *(v18[7] + 8 * v8) = a1;
  v20 = v18[2];
  v12 = __OFADD__(v20, 1);
  v21 = v20 + 1;
  if (v12)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v18[2] = v21;

  return a2;
}

id sub_1A430777C(uint64_t a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_1A4307020(a2);
  v10 = *(v7 + 16);
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_17;
  }

  v14 = v9;
  v15 = *(v7 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 < v13 || (a3 & 1) != 0)
    {
      sub_1A430739C(v13, a3 & 1);
      v8 = sub_1A4307020(a2);
      if ((v14 & 1) != (v17 & 1))
      {
LABEL_18:
        sub_1A3C52C70(0, &qword_1EB126660);
        result = sub_1A524EB84();
        __break(1u);
        return result;
      }
    }

    else
    {
      v16 = v8;
      sub_1A4307A50();
      v8 = v16;
    }
  }

  v18 = *v4;
  if (v14)
  {
    *(v18[7] + 8 * v8) = a1;
  }

  v18[(v8 >> 6) + 8] |= 1 << v8;
  *(v18[6] + 8 * v8) = a2;
  *(v18[7] + 8 * v8) = a1;
  v20 = v18[2];
  v12 = __OFADD__(v20, 1);
  v21 = v20 + 1;
  if (v12)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v18[2] = v21;

  return a2;
}

void *sub_1A43078F8()
{
  v1 = v0;
  sub_1A430851C();
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

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        v19 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        *(*(v4 + 56) + 8 * v17) = v19;
        v20 = v18;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_1A4307A50()
{
  v1 = v0;
  sub_1A4308610();
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
        v17 = *(*(v2 + 48) + 8 * v16);
        v18 = *(*(v2 + 56) + 8 * v16);
        *(*(v4 + 48) + 8 * v16) = v17;
        *(*(v4 + 56) + 8 * v16) = v18;
        v19 = v17;
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

void (*sub_1A4307BA8(uint64_t *a1, uint64_t a2))(uint64_t a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x50uLL);
  }

  v5 = v4;
  *a1 = v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5[8] = sub_1A3DD766C(v5);
  v5[9] = sub_1A4307C4C(v5 + 4, a2, isUniquelyReferenced_nonNull_native);
  return sub_1A3DD735C;
}

uint64_t **(*sub_1A4307C4C(uint64_t *a1, uint64_t a2, char a3))(uint64_t **result, char a2)
{
  v4 = v3;
  if (MEMORY[0x1E69E7D08])
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(0x28uLL);
  }

  v9 = v8;
  *a1 = v8;
  *(v8 + 8) = a2;
  *(v8 + 16) = v3;
  v10 = *v3;
  v11 = sub_1A4307020(a2);
  *(v9 + 32) = v12 & 1;
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a3 & 1) == 0)
  {
    if (v18 >= v16 && (a3 & 1) == 0)
    {
      v19 = v11;
      sub_1A4307A50();
      v11 = v19;
      goto LABEL_11;
    }

    sub_1A430739C(v16, a3 & 1);
    v11 = sub_1A4307020(a2);
    if ((v17 & 1) == (v20 & 1))
    {
      goto LABEL_11;
    }

LABEL_16:
    sub_1A3C52C70(0, &qword_1EB126660);
    result = sub_1A524EB84();
    __break(1u);
    return result;
  }

LABEL_11:
  *(v9 + 24) = v11;
  if (v17)
  {
    v21 = *(*(*v4 + 56) + 8 * v11);
  }

  else
  {
    v21 = 0;
  }

  *v9 = v21;
  return sub_1A4307DA4;
}

uint64_t **sub_1A4307DA4(uint64_t **result, char a2)
{
  v2 = *result;
  v3 = **result;
  LOBYTE(v4) = *(*result + 32);
  if (a2)
  {
    if (!v3)
    {
      goto LABEL_10;
    }

    v5 = v2[3];
    v6 = *v2[2];
    if ((*result)[4])
    {
LABEL_9:
      *(v6[7] + 8 * v5) = v3;
      goto LABEL_14;
    }

    v7 = v2[1];
    v6[(v5 >> 6) + 8] |= 1 << v5;
    *(v6[6] + 8 * v5) = v7;
    *(v6[7] + 8 * v5) = v3;
    v8 = v6[2];
    v9 = __OFADD__(v8, 1);
    v4 = v8 + 1;
    if (!v9)
    {
      goto LABEL_13;
    }

    __break(1u);
  }

  if (!v3)
  {
LABEL_10:
    if (v4)
    {
      v10 = v2[3];
      v11 = *v2[2];

      sub_1A3FB731C(v10, v11);
    }

LABEL_14:
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  v5 = v2[3];
  v6 = *v2[2];
  if (v4)
  {
    goto LABEL_9;
  }

  v12 = v2[1];
  v6[(v5 >> 6) + 8] |= 1 << v5;
  *(v6[6] + 8 * v5) = v12;
  *(v6[7] + 8 * v5) = v3;
  v13 = v6[2];
  v9 = __OFADD__(v13, 1);
  v4 = v13 + 1;
  if (!v9)
  {
LABEL_13:
    v14 = v2[1];
    v6[2] = v4;
    v15 = v14;
    goto LABEL_14;
  }

  __break(1u);
  return result;
}

uint64_t sub_1A4307EE0(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_1A4308610();
    sub_1A524E794();

    v2 = *(a1 + 32);
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  return MEMORY[0x1E69E7CC8];
}

unint64_t sub_1A4307FCC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1A430851C();
    v3 = sub_1A524E794();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);

      result = sub_1A4307020(v6);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v5;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

uint64_t sub_1A43080B8(void *a1)
{
  *(v1 + 48) = 0;
  *(v1 + 56) = 0;
  *(v1 + 24) = 0;
  *(v1 + 32) = 0;
  *(v1 + 40) = 0;
  sub_1A5241604();
  *(v1 + 16) = a1;
  v3 = a1;
  sub_1A4301620();
  (*(*v1 + 392))();
  return v1;
}

uint64_t sub_1A4308168()
{
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1A3CA8098;

  return sub_1A43028AC(v4, v5, v6, v2, v3);
}

uint64_t type metadata accessor for PhotoKitSpatialPhotoPresentationContentSource()
{
  result = qword_1EB1B6F70;
  if (!qword_1EB1B6F70)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1A430824C(uint64_t a1)
{
  result = sub_1A4308ABC(&qword_1EB137C10, type metadata accessor for PhotoKitSpatialPhotoPresentationContentSource);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1A43082AC()
{
  result = sub_1A5241614();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1A43083DC()
{
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[6];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1A3CA8098;

  return sub_1A4305C70(v5, v6, v7, v2, v3, v4);
}

uint64_t sub_1A4308484()
{
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1A3CA8098;

  return sub_1A4306198(v4, v5, v6, v2, v3);
}

void sub_1A430851C()
{
  if (!qword_1EB137C18)
  {
    sub_1A3C52C70(255, &qword_1EB126660);
    sub_1A3CB59B4();
    sub_1A43085A8();
    v0 = sub_1A524E7A4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB137C18);
    }
  }
}

unint64_t sub_1A43085A8()
{
  result = qword_1EB1205D0;
  if (!qword_1EB1205D0)
  {
    sub_1A3C52C70(255, &qword_1EB126660);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1205D0);
  }

  return result;
}

void sub_1A4308610()
{
  if (!qword_1EB137C20)
  {
    sub_1A3C52C70(255, &qword_1EB126660);
    sub_1A3C56640(255, &qword_1EB137C28, v0, type metadata accessor for PhotoKitSpatialPhotoPresentationContentSource.RequestManager.Request, MEMORY[0x1E69E62F8]);
    sub_1A43085A8();
    v1 = sub_1A524E7A4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB137C20);
    }
  }
}

uint64_t sub_1A43086CC()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1A3CA8098;

  return sub_1A43041DC(v2, v3);
}

uint64_t objectdestroy_9Tm_1()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1A43087D8()
{
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1A3CA8098;

  return sub_1A43040D0(v4, v5, v6, v2, v3);
}

uint64_t sub_1A4308870()
{
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[6];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1A3CA8098;

  return sub_1A43066B8(v5, v6, v7, v2, v3, v4);
}

uint64_t objectdestroy_72Tm()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1A4308970()
{
  v2 = *(sub_1A52450F4() - 8);
  v3 = (*(v2 + 80) + 48) & ~*(v2 + 80);
  v4 = *(v0 + 32);
  v5 = *(v0 + 40);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_1A3CA8098;

  return sub_1A43059E0(v6, v7, v8, v4, v5, v0 + v3);
}

uint64_t sub_1A4308A54()
{
  v1 = *(v0 + 24);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v3 = v1;
    sub_1A430109C(v1);
  }

  return result;
}

uint64_t sub_1A4308ABC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1A4308B04()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1A3D60150;

  return sub_1A4302810(v2, v3);
}

uint64_t sub_1A4308B9C()
{
  *(*(v0 + 16) + 48) = *(v0 + 24);
}

uint64_t sub_1A4308C28@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1A5248CD4();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1A4308C80@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, char a3@<W3>, uint64_t *a4@<X8>)
{
  v34 = a2;
  v7 = sub_1A5243624();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for AsyncPersonImageConfiguration();
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for PersonFaceView(0);
  v15 = a4 + *(v14 + 20);
  *v15 = swift_getKeyPath();
  v15[8] = 0;
  v16 = a4 + *(v14 + 24);
  *v16 = swift_getKeyPath();
  v16[8] = 0;
  objc_opt_self();
  v17 = swift_dynamicCastObjCClass();
  if (v17)
  {
    v18 = v17;
    (*(v8 + 16))(v10, a1, v7);
    swift_unknownObjectRetain();
    sub_1A46A250C(v18, 0, a3 & 1, 0, v10, v34, v13, 0.0);
    (*(v8 + 8))(a1, v7);
    *a4 = v18;
    v19 = type metadata accessor for PersonFaceView.Person(0);
    sub_1A430A9B0(v13, a4 + *(v19 + 20), type metadata accessor for AsyncPersonImageConfiguration);
    type metadata accessor for PersonFaceView.BackingObject(0);
  }

  else
  {
    v20 = a1;
    v21 = v34;
    objc_opt_self();
    v22 = swift_dynamicCastObjCClass();
    if (v22)
    {
      v23 = v22;
      (*(v8 + 16))(v10, v20, v7);
      swift_unknownObjectRetain();
      sub_1A46A250C(v23, 1, a3 & 1, 0, v10, v21, v13, 0.0);
      (*(v8 + 8))(v20, v7);
      *a4 = v23;
      v24 = type metadata accessor for PersonFaceView.Face(0);
      sub_1A430A9B0(v13, a4 + *(v24 + 20), type metadata accessor for AsyncPersonImageConfiguration);
      type metadata accessor for PersonFaceView.BackingObject(0);
    }

    else
    {
      objc_opt_self();
      v25 = swift_dynamicCastObjCClass();
      v26 = v21;
      if (v25)
      {
        v27 = v25;
        swift_unknownObjectRetain_n();
        v28 = PXDisplayCollectionDetailedCountsMake(v27);
        v30 = v29;
        v31 = v28;
        swift_unknownObjectRelease();

        (*(v8 + 8))(v20, v7);
        *a4 = v27;
        a4[1] = v30;
        *(a4 + 2) = v31;
      }

      else
      {
        swift_unknownObjectRelease();

        (*(v8 + 8))(v20, v7);
      }

      type metadata accessor for PersonFaceView.BackingObject(0);
    }
  }

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1A43090F4@<X0>(uint64_t a1@<X8>)
{
  v139 = a1;
  v122 = sub_1A52420E4();
  v111 = *(v122 - 8);
  MEMORY[0x1EEE9AC00](v122);
  v110 = &v109 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A430A4E8(0, &qword_1EB137C30, MEMORY[0x1E697F948]);
  v117 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v109 - v4;
  sub_1A430A4E8(0, &qword_1EB137C38, MEMORY[0x1E697F960]);
  v138 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v121 = &v109 - v7;
  sub_1A430A624(0, &qword_1EB124F08, sub_1A430A494);
  v120 = v8;
  v113 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v112 = &v109 - v9;
  v109 = type metadata accessor for PersonFaceView.Face(0);
  MEMORY[0x1EEE9AC00](v109);
  v131 = &v109 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1E697F948];
  sub_1A430A57C(0, &qword_1EB137C40, MEMORY[0x1E697F948]);
  v135 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v137 = &v109 - v13;
  sub_1A430A6D8(0, &qword_1EB137C50, v11);
  v123 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v124 = &v109 - v15;
  sub_1A430A6D8(0, &qword_1EB137C48, MEMORY[0x1E697F960]);
  v136 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v128 = &v109 - v17;
  v18 = sub_1A52429A4();
  v132 = *(v18 - 8);
  v133 = v18;
  MEMORY[0x1EEE9AC00](v18);
  v134 = &v109 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A430A624(0, &qword_1EB124F18, sub_1A430A684);
  v126 = *(v20 - 8);
  v127 = v20;
  MEMORY[0x1EEE9AC00](v20);
  v125 = &v109 - v21;
  v116 = sub_1A5243624();
  v115 = *(v116 - 8);
  MEMORY[0x1EEE9AC00](v116);
  v118 = &v109 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_1A5249234();
  v129 = *(v23 - 1);
  v130 = v23;
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v109 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = type metadata accessor for AsyncPersonImageConfiguration();
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v109 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v119 = &v109 - v30;
  MEMORY[0x1EEE9AC00](v31);
  v114 = &v109 - v32;
  v33 = type metadata accessor for PersonFaceView.Person(0);
  MEMORY[0x1EEE9AC00](v33);
  v35 = &v109 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = type metadata accessor for PersonFaceView.BackingObject(0);
  MEMORY[0x1EEE9AC00](v36);
  v38 = &v109 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A430AA18(v1, v38, type metadata accessor for PersonFaceView.BackingObject);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v44 = *(v38 + 1);
      v131 = *v38;
      v45 = v1 + *(type metadata accessor for PersonFaceView(0) + 20);
      v46 = *v45;
      if (*(v45 + 8) != 1)
      {

        sub_1A524D254();
        v79 = sub_1A524A014();
        sub_1A5246DF4();

        sub_1A5249224();
        swift_getAtKeyPath();
        sub_1A3C53AEC(v46, 0);
        (*(v129 + 8))(v25, v130);
      }

      v130 = v44;
      v80 = PXDisplayCollectionDetailedCountsMake(v44);
      v82 = v81;
      v83 = v80;
      v84 = PXDisplayCollectionDetailedCountsMake(v81);
      v140 = *&v82;
      v141 = v83;
      (*(v132 + 104))(v134, *MEMORY[0x1E69C2050], v133, v84);
      sub_1A430A494();
      v85 = v82;
      v86 = v112;
      sub_1A5242594();
      v87 = v113;
      v88 = v120;
      (*(v113 + 16))(v5, v86, v120);
      swift_storeEnumTagMultiPayload();
      sub_1A430A868(&qword_1EB124F10, &qword_1EB124F08, sub_1A430A494);
      sub_1A430A760(&qword_1EB124F88, MEMORY[0x1E69C1D10]);
      v89 = v121;
      sub_1A5249744();
      v90 = MEMORY[0x1E697F960];
      sub_1A430AA80(v89, v137, &qword_1EB137C38, MEMORY[0x1E697F960], sub_1A430A4E8);
      swift_storeEnumTagMultiPayload();
      sub_1A430A7A8();
      sub_1A430A8B8();
      sub_1A5249744();

      sub_1A430AAF0(v89, &qword_1EB137C38, v90, sub_1A430A4E8);
      return (*(v87 + 8))(v86, v88);
    }

    else
    {
      v51 = v110;
      sub_1A52420D4();
      v52 = v111;
      v53 = v122;
      (*(v111 + 16))(v5, v51, v122);
      swift_storeEnumTagMultiPayload();
      sub_1A430A868(&qword_1EB124F10, &qword_1EB124F08, sub_1A430A494);
      sub_1A430A760(&qword_1EB124F88, MEMORY[0x1E69C1D10]);
      v54 = v121;
      sub_1A5249744();
      v55 = MEMORY[0x1E697F960];
      sub_1A430AA80(v54, v137, &qword_1EB137C38, MEMORY[0x1E697F960], sub_1A430A4E8);
      swift_storeEnumTagMultiPayload();
      sub_1A430A7A8();
      sub_1A430A8B8();
      sub_1A5249744();
      sub_1A430AAF0(v54, &qword_1EB137C38, v55, sub_1A430A4E8);
      return (*(v52 + 8))(v51, v53);
    }
  }

  else
  {
    if (EnumCaseMultiPayload)
    {
      sub_1A430A9B0(v38, v131, type metadata accessor for PersonFaceView.Face);
      v47 = type metadata accessor for PersonFaceView(0);
      v48 = v1 + *(v47 + 20);
      v49 = *v48;
      if (*(v48 + 8) == 1)
      {
        v50 = *v48;
      }

      else
      {

        sub_1A524D254();
        v91 = sub_1A524A014();
        sub_1A5246DF4();

        sub_1A5249224();
        swift_getAtKeyPath();
        sub_1A3C53AEC(v49, 0);
        (*(v129 + 8))(v25, v130);
        v50 = v140;
      }

      v92 = v1 + *(v47 + 24);
      v93 = *v92;
      if (*(v92 + 8) != 1)
      {

        sub_1A524D254();
        v94 = sub_1A524A014();
        sub_1A5246DF4();

        sub_1A5249224();
        swift_getAtKeyPath();
        sub_1A3C53AEC(v93, 0);
        (*(v129 + 8))(v25, v130);
        LOBYTE(v93) = LOBYTE(v140);
      }

      v95 = &v131[*(v109 + 20)];
      v96 = *v95;
      v97 = v95[8];
      v98 = v95[9];
      v99 = v118;
      (*(v115 + 16))(v118, &v95[*(v26 + 28)], v116);
      v100 = *&v95[*(v26 + 36)];
      v101 = v96;
      v102 = v100;
      v103 = sub_1A46A250C(v96, v97, v98, v93 & 1, v99, v100, v28, v50);
      PXDisplayCollectionDetailedCountsMake(v103);
      sub_1A430AA18(v28, v119, type metadata accessor for AsyncPersonImageConfiguration);
      (*(v132 + 104))(v134, *MEMORY[0x1E69C2050], v133);
      sub_1A430A684();
      v104 = v125;
      sub_1A5242594();
      v106 = v126;
      v105 = v127;
      (*(v126 + 16))(v124, v104, v127);
      swift_storeEnumTagMultiPayload();
      sub_1A430A868(&qword_1EB124F20, &qword_1EB124F18, sub_1A430A684);
      v107 = v128;
      sub_1A5249744();
      v108 = MEMORY[0x1E697F960];
      sub_1A430AA80(v107, v137, &qword_1EB137C48, MEMORY[0x1E697F960], sub_1A430A6D8);
      swift_storeEnumTagMultiPayload();
      sub_1A430A7A8();
      sub_1A430A8B8();
      sub_1A5249744();
      sub_1A430AAF0(v107, &qword_1EB137C48, v108, sub_1A430A6D8);
      (*(v106 + 8))(v104, v105);
      sub_1A430AB50(v28, type metadata accessor for AsyncPersonImageConfiguration);
      v77 = type metadata accessor for PersonFaceView.Face;
      v78 = v131;
    }

    else
    {
      sub_1A430A9B0(v38, v35, type metadata accessor for PersonFaceView.Person);
      v40 = type metadata accessor for PersonFaceView(0);
      v41 = v1 + *(v40 + 20);
      v42 = *v41;
      if (*(v41 + 8) == 1)
      {
        v43 = *v41;
      }

      else
      {

        sub_1A524D254();
        v57 = sub_1A524A014();
        sub_1A5246DF4();

        sub_1A5249224();
        swift_getAtKeyPath();
        sub_1A3C53AEC(v42, 0);
        (*(v129 + 8))(v25, v130);
        v43 = v140;
      }

      v58 = v1 + *(v40 + 24);
      v59 = *v58;
      if (*(v58 + 8) != 1)
      {

        sub_1A524D254();
        v60 = sub_1A524A014();
        sub_1A5246DF4();

        sub_1A5249224();
        swift_getAtKeyPath();
        sub_1A3C53AEC(v59, 0);
        (*(v129 + 8))(v25, v130);
        LOBYTE(v59) = LOBYTE(v140);
      }

      v61 = &v35[*(v33 + 20)];
      v62 = *v61;
      v63 = v61[8];
      v64 = v61[9];
      v65 = v118;
      (*(v115 + 16))(v118, &v61[*(v26 + 28)], v116);
      v66 = *&v61[*(v26 + 36)];
      v67 = v62;
      v68 = v66;
      v69 = v59 & 1;
      v70 = v114;
      v71 = sub_1A46A250C(v62, v63, v64, v69, v65, v66, v114, v43);
      PXDisplayCollectionDetailedCountsMake(v71);
      sub_1A430AA18(v70, v119, type metadata accessor for AsyncPersonImageConfiguration);
      (*(v132 + 104))(v134, *MEMORY[0x1E69C2050], v133);
      sub_1A430A684();
      v72 = v125;
      sub_1A5242594();
      v74 = v126;
      v73 = v127;
      (*(v126 + 16))(v124, v72, v127);
      swift_storeEnumTagMultiPayload();
      sub_1A430A868(&qword_1EB124F20, &qword_1EB124F18, sub_1A430A684);
      v75 = v128;
      sub_1A5249744();
      v76 = MEMORY[0x1E697F960];
      sub_1A430AA80(v75, v137, &qword_1EB137C48, MEMORY[0x1E697F960], sub_1A430A6D8);
      swift_storeEnumTagMultiPayload();
      sub_1A430A7A8();
      sub_1A430A8B8();
      sub_1A5249744();
      sub_1A430AAF0(v75, &qword_1EB137C48, v76, sub_1A430A6D8);
      (*(v74 + 8))(v72, v73);
      sub_1A430AB50(v114, type metadata accessor for AsyncPersonImageConfiguration);
      v77 = type metadata accessor for PersonFaceView.Person;
      v78 = v35;
    }

    return sub_1A430AB50(v78, v77);
  }
}

unint64_t sub_1A430A494()
{
  result = qword_1EB1257D0;
  if (!qword_1EB1257D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1257D0);
  }

  return result;
}

void sub_1A430A4E8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    sub_1A430A624(255, &qword_1EB124F08, sub_1A430A494);
    v7 = v6;
    v8 = sub_1A52420E4();
    v9 = a3(a1, v7, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_1A430A57C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    sub_1A430A6D8(255, &qword_1EB137C48, MEMORY[0x1E697F960]);
    v7 = v6;
    sub_1A430A4E8(255, &qword_1EB137C38, MEMORY[0x1E697F960]);
    v9 = a3(a1, v7, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_1A430A624(uint64_t a1, unint64_t *a2, void (*a3)(void))
{
  if (!*a2)
  {
    a3();
    v4 = sub_1A52425B4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_1A430A684()
{
  result = qword_1EB125838;
  if (!qword_1EB125838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB125838);
  }

  return result;
}

void sub_1A430A6D8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    sub_1A430A624(255, &qword_1EB124F18, sub_1A430A684);
    v7 = a3(a1, v6, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_1A430A760(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1A430A7A8()
{
  result = qword_1EB137C58;
  if (!qword_1EB137C58)
  {
    sub_1A430A6D8(255, &qword_1EB137C48, MEMORY[0x1E697F960]);
    sub_1A430A868(&qword_1EB124F20, &qword_1EB124F18, sub_1A430A684);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB137C58);
  }

  return result;
}

uint64_t sub_1A430A868(unint64_t *a1, unint64_t *a2, void (*a3)(void))
{
  result = *a1;
  if (!result)
  {
    sub_1A430A624(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1A430A8B8()
{
  result = qword_1EB137C60;
  if (!qword_1EB137C60)
  {
    sub_1A430A4E8(255, &qword_1EB137C38, MEMORY[0x1E697F960]);
    sub_1A430A868(&qword_1EB124F10, &qword_1EB124F08, sub_1A430A494);
    sub_1A430A760(&qword_1EB124F88, MEMORY[0x1E69C1D10]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB137C60);
  }

  return result;
}

uint64_t sub_1A430A9B0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A430AA18(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A430AA80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
{
  v7 = a5(0, a3, a4);
  (*(*(v7 - 8) + 16))(a2, a1, v7);
  return a2;
}

uint64_t sub_1A430AAF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v5 = a4(0);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

uint64_t sub_1A430AB50(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1A430ABB4()
{
  if (!qword_1EB137C68)
  {
    sub_1A430AC40(255, &qword_1EB1303E8, type metadata accessor for PersonFaceView);
    v0 = sub_1A52483B4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB137C68);
    }
  }
}

void sub_1A430AC40(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

void sub_1A430ACA4()
{
  if (!qword_1EB137C78)
  {
    sub_1A430AC40(255, &qword_1EB1303E8, type metadata accessor for PersonFaceView);
    sub_1A4002124();
    v0 = sub_1A524B894();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB137C78);
    }
  }
}

unint64_t sub_1A430AD4C()
{
  result = qword_1EB137C80;
  if (!qword_1EB137C80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB137C80);
  }

  return result;
}

double sub_1A430ADBC@<D0>(uint64_t a1@<X8>)
{
  *a1 = sub_1A5249574();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  sub_1A430ABB4();
  v3 = a1 + *(v2 + 44);
  type metadata accessor for SyntheticPerson();
  v4 = SyntheticPerson.__allocating_init(name:)(0, 0);
  v5 = type metadata accessor for PersonFaceView(0);
  v6 = v3 + *(v5 + 20);
  *v6 = swift_getKeyPath();
  *(v6 + 8) = 0;
  v7 = v3 + *(v5 + 24);
  KeyPath = swift_getKeyPath();

  *v7 = KeyPath;
  *(v7 + 8) = 0;
  type metadata accessor for PersonFaceView.BackingObject(0);
  swift_storeEnumTagMultiPayload();
  sub_1A430AC40(0, &qword_1EB1303E8, type metadata accessor for PersonFaceView);
  v10 = v3 + *(v9 + 36);
  *v10 = 0x3FF0000000000000;
  *(v10 + 8) = 0;
  LOBYTE(v4) = sub_1A524A064();
  sub_1A430AC40(0, &qword_1EB137C70, sub_1A430ACA4);
  v12 = a1 + *(v11 + 36);
  *v12 = v4;
  result = 0.0;
  *(v12 + 8) = 0u;
  *(v12 + 24) = 0u;
  *(v12 + 40) = 1;
  return result;
}

uint64_t sub_1A430AF1C(uint64_t a1)
{
  v2 = sub_1A430B544();

  return MEMORY[0x1EEDD9FE8](a1, v2);
}

uint64_t sub_1A430AF68(uint64_t a1)
{
  v2 = sub_1A430B544();

  return MEMORY[0x1EEDD9FE0](a1, v2);
}

void sub_1A430AFDC()
{
  type metadata accessor for PersonFaceView.BackingObject(319);
  if (v0 <= 0x3F)
  {
    sub_1A430B098(319, &qword_1EB124830);
    if (v1 <= 0x3F)
    {
      sub_1A430B098(319, &qword_1EB1246E0);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1A430B098(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_1A5247E54();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

unint64_t sub_1A430B0F4()
{
  result = qword_1EB137C88;
  if (!qword_1EB137C88)
  {
    sub_1A430A57C(255, &qword_1EB137C90, MEMORY[0x1E697F960]);
    sub_1A430A7A8();
    sub_1A430A8B8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB137C88);
  }

  return result;
}

unint64_t sub_1A430B190()
{
  result = qword_1EB137C98;
  if (!qword_1EB137C98)
  {
    sub_1A430AC40(255, &qword_1EB137C70, sub_1A430ACA4);
    sub_1A430A760(&qword_1EB137CA0, sub_1A430ACA4);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB137C98);
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_index_12Tm(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for AsyncPersonImageConfiguration();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *__swift_store_extra_inhabitant_index_13Tm(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for AsyncPersonImageConfiguration();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1A430B42C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4)
{
  result = sub_1A3C52C70(319, a4);
  if (v5 <= 0x3F)
  {
    result = type metadata accessor for AsyncPersonImageConfiguration();
    if (v6 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1A430B4B8()
{
  result = type metadata accessor for PersonFaceView.Person(319);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for PersonFaceView.Face(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_1A430B544()
{
  result = qword_1EB137CA8;
  if (!qword_1EB137CA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB137CA8);
  }

  return result;
}

void PXPhotosUIViewController.viewportDisplayingMedia(_:for:)(uint64_t *a1@<X8>)
{
  v3 = [v1 viewIfLoaded];
  if (v3)
  {
    v14 = v3;
    [v3 bounds];
    v5 = v4;
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v12 = type metadata accessor for PhotosDynamicHeaderLayout();
    sub_1A41FB558(v12);
    v16.origin.x = v5;
    v16.origin.y = v7;
    v16.size.width = v9;
    v16.size.height = v11;
    CGRectGetWidth(v16);
    sub_1A430B700();
    a1[3] = v13;
    a1[4] = swift_getOpaqueTypeConformance2();
    __swift_allocate_boxed_opaque_existential_1(a1);
    sub_1A524DB04();
  }

  else
  {
    sub_1A524E6E4();
    __break(1u);
  }
}

void sub_1A430B700()
{
  if (!qword_1EB120600)
  {
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB120600);
    }
  }
}

id PXPhotosUIViewController.coordinateSpace.getter()
{
  result = [v0 viewIfLoaded];
  if (!result)
  {
    result = sub_1A524E6E4();
    __break(1u);
  }

  return result;
}

void sub_1A430B7EC(uint64_t *a1@<X8>)
{
  v3 = [*v1 viewIfLoaded];
  if (v3)
  {
    v14 = v3;
    [v3 bounds];
    v5 = v4;
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v12 = type metadata accessor for PhotosDynamicHeaderLayout();
    sub_1A41FB558(v12);
    v16.origin.x = v5;
    v16.origin.y = v7;
    v16.size.width = v9;
    v16.size.height = v11;
    CGRectGetWidth(v16);
    sub_1A430B700();
    a1[3] = v13;
    a1[4] = swift_getOpaqueTypeConformance2();
    __swift_allocate_boxed_opaque_existential_1(a1);
    sub_1A524DB04();
  }

  else
  {
    sub_1A524E6E4();
    __break(1u);
  }
}

id sub_1A430B954()
{
  result = [*v0 viewIfLoaded];
  if (!result)
  {
    result = sub_1A524E6E4();
    __break(1u);
  }

  return result;
}

uint64_t sub_1A430B9E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for TestNotificationPhotosItem(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v26 - v8;
  v10 = sub_1A5243934();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v26 - v15;
  sub_1A430BEA0();
  v27 = *(v17 - 8);
  v28 = v17;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v26 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4189B78(v9);
  v20 = v9[65];
  sub_1A430E0B4(v9, type metadata accessor for TestNotificationPhotosItem);
  v29 = a2;
  if (v20)
  {
    if (v20 == 1)
    {
      sub_1A5243904();
    }

    else
    {
      sub_1A52438D4();
    }
  }

  else
  {
    sub_1A5243914();
  }

  (*(v11 + 32))(v16, v13, v10);
  LOBYTE(v30) = 1;
  swift_retain_n();
  sub_1A524B954();
  sub_1A430DE98(0, &qword_1EB137CB8, MEMORY[0x1E697F960]);
  sub_1A5243544();
  sub_1A430C550();
  sub_1A430C748(&qword_1EB12EAA8, MEMORY[0x1E69C2510]);
  sub_1A5242914();
  sub_1A4189B78(v6);
  v21 = v6[64];
  sub_1A430E0B4(v6, type metadata accessor for TestNotificationPhotosItem);
  v33 = v21;
  v32 = 2;
  sub_1A42971A0();
  sub_1A524C9C4();
  sub_1A524C9C4();
  if (v34 == v30 && v35 == v31)
  {
  }

  else
  {
    v22 = sub_1A524EAB4();

    if ((v22 & 1) == 0)
    {
      v23 = 0;
      a1 = 0;
      goto LABEL_12;
    }
  }

  v23 = sub_1A430D624;
LABEL_12:
  sub_1A430C748(&qword_1EB137D80, sub_1A430BEA0);
  v24 = v28;
  sub_1A524A714();
  sub_1A3C784D4(v23, a1);
  return (*(v27 + 8))(v19, v24);
}

void sub_1A430BEA0()
{
  if (!qword_1EB137CB0)
  {
    sub_1A430DE98(255, &qword_1EB137CB8, MEMORY[0x1E697F960]);
    sub_1A5243544();
    sub_1A430C550();
    sub_1A430C748(&qword_1EB12EAA8, MEMORY[0x1E69C2510]);
    v0 = sub_1A5242904();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB137CB0);
    }
  }
}

void sub_1A430BFAC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    sub_1A430C0A4(255, &qword_1EB137CC8);
    v7 = v6;
    sub_1A430C02C();
    v9 = a3(a1, v7, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_1A430C02C()
{
  if (!qword_1EB137CD0)
  {
    sub_1A430C0A4(255, &qword_1EB137CD8);
    sub_1A3E42C88();
    v0 = sub_1A5248804();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB137CD0);
    }
  }
}

void sub_1A430C0A4(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    sub_1A3F980B8();
    v3 = sub_1A5248804();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

void sub_1A430C104(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t), unint64_t *a5)
{
  if (!*a2)
  {
    sub_1A430DE34(255, a3, a4, MEMORY[0x1E6981F40]);
    sub_1A430C3D0(a5, a3, a4);
    v9 = sub_1A524B8B4();
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_1A430C1A4()
{
  if (!qword_1EB137CF0)
  {
    sub_1A430C214(255);
    sub_1A430C434(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB137CF0);
    }
  }
}

void sub_1A430C264()
{
  if (!qword_1EB137D08)
  {
    sub_1A430C104(255, &qword_1EB137D10, &qword_1EB137D18, sub_1A430C2F8, &qword_1EB137D28);
    sub_1A3E42C88();
    v0 = sub_1A5248804();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB137D08);
    }
  }
}

void sub_1A430C2F8()
{
  if (!qword_1EB137D20)
  {
    sub_1A42057E4();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB137D20);
    }
  }
}

void sub_1A430C35C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), void (*a4)(uint64_t))
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

uint64_t sub_1A430C3D0(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_1A430DE34(255, a2, a3, MEMORY[0x1E6981F40]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1A430C45C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

void sub_1A430C4C0()
{
  if (!qword_1EB137D38)
  {
    sub_1A430C35C(255, &qword_1EB137D40, sub_1A42057E4, sub_1A3E42C88);
    v0 = sub_1A5248804();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB137D38);
    }
  }
}

unint64_t sub_1A430C550()
{
  result = qword_1EB137D50;
  if (!qword_1EB137D50)
  {
    sub_1A430DE98(255, &qword_1EB137CB8, MEMORY[0x1E697F960]);
    sub_1A430C5EC();
    sub_1A430C86C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB137D50);
  }

  return result;
}

unint64_t sub_1A430C5EC()
{
  result = qword_1EB137D58;
  if (!qword_1EB137D58)
  {
    sub_1A430BF8C(255);
    sub_1A430C698(&qword_1EB137D60, &qword_1EB137CC8, MEMORY[0x1E69817E8], sub_1A3DC8F24);
    sub_1A430C790();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB137D58);
  }

  return result;
}

uint64_t sub_1A430C698(unint64_t *a1, unint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_1A430C0A4(255, a2);
    a4();
    sub_1A430C748(&qword_1EB127AD8, sub_1A3F980B8);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1A430C748(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1A430C790()
{
  result = qword_1EB137D68;
  if (!qword_1EB137D68)
  {
    sub_1A430C02C();
    sub_1A430C698(&qword_1EB137D70, &qword_1EB137CD8, MEMORY[0x1E6981EF8], sub_1A3E43880);
    sub_1A430C748(&qword_1EB128A00, sub_1A3E42C88);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB137D68);
  }

  return result;
}

unint64_t sub_1A430C86C()
{
  result = qword_1EB137D78;
  if (!qword_1EB137D78)
  {
    sub_1A430C104(255, &qword_1EB137CE0, &qword_1EB137CE8, sub_1A430C1A4, &qword_1EB137D48);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB137D78);
  }

  return result;
}

uint64_t sub_1A430C8F8@<X0>(uint64_t a1@<X8>)
{
  sub_1A430C104(0, &qword_1EB137CE0, &qword_1EB137CE8, sub_1A430C1A4, &qword_1EB137D48);
  v39[3] = v2;
  MEMORY[0x1EEE9AC00](v2);
  v4 = (v39 - v3);
  sub_1A430C02C();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v8 = (v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1A430DE98(0, &qword_1EB137D88, MEMORY[0x1E697F948]);
  v39[2] = v9;
  MEMORY[0x1EEE9AC00](v9);
  v11 = v39 - v10;
  sub_1A430BFAC(0, &qword_1EB137D90, MEMORY[0x1E697F948]);
  MEMORY[0x1EEE9AC00](v12);
  v14 = (v39 - v13);
  sub_1A430BF8C(0);
  v39[1] = v15;
  MEMORY[0x1EEE9AC00](v15);
  v17 = v39 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for TestNotificationPhotosItem(0);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v20 = v39 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4189B78(v20);
  v21 = v20[65];
  sub_1A430E0B4(v20, type metadata accessor for TestNotificationPhotosItem);
  if (v21)
  {
    if (v21 == 1)
    {
      v22 = sub_1A524B3B4();
      v23 = v8 + *(v6 + 36);
      v24 = sub_1A5248A14();
      v39[0] = a1;
      v25 = *(v24 + 20);
      v26 = *MEMORY[0x1E697F468];
      v27 = sub_1A52494A4();
      (*(*(v27 - 8) + 104))(&v23[v25], v26, v27);
      __asm { FMOV            V0.2D, #8.0 }

      *v23 = _Q0;
      sub_1A3E42C88();
      *&v23[*(v33 + 36)] = 256;
      *v8 = v22;
      sub_1A430E04C(v8, v14, sub_1A430C02C);
      swift_storeEnumTagMultiPayload();
      v34 = MEMORY[0x1E69817E8];
      sub_1A430C0A4(0, &qword_1EB137CC8);
      sub_1A430C698(&qword_1EB137D60, &qword_1EB137CC8, v34, sub_1A3DC8F24);
      sub_1A430C790();
      sub_1A5249744();
      sub_1A430E04C(v17, v11, sub_1A430BF8C);
      swift_storeEnumTagMultiPayload();
      sub_1A430C5EC();
      sub_1A430C86C();
      sub_1A5249744();
      sub_1A430E0B4(v17, sub_1A430BF8C);
      return sub_1A430E0B4(v8, sub_1A430C02C);
    }

    else
    {
      *v4 = sub_1A524BC54();
      v4[1] = v37;
      sub_1A430E114(0, &qword_1EB137D98, &qword_1EB137CE8, sub_1A430C1A4);
      sub_1A430D644(v4 + *(v38 + 44));
      sub_1A430DF34(v4, v11);
      swift_storeEnumTagMultiPayload();
      sub_1A430C5EC();
      sub_1A430C86C();
      sub_1A5249744();
      return sub_1A430DFC4(v4);
    }
  }

  else
  {
    *v14 = sub_1A524B3B4();
    swift_storeEnumTagMultiPayload();
    v36 = MEMORY[0x1E69817E8];
    sub_1A430C0A4(0, &qword_1EB137CC8);
    sub_1A430C698(&qword_1EB137D60, &qword_1EB137CC8, v36, sub_1A3DC8F24);
    sub_1A430C790();

    sub_1A5249744();
    sub_1A430E04C(v17, v11, sub_1A430BF8C);
    swift_storeEnumTagMultiPayload();
    sub_1A430C5EC();
    sub_1A430C86C();
    sub_1A5249744();

    return sub_1A430E0B4(v17, sub_1A430BF8C);
  }
}

void sub_1A430CEEC(uint64_t a1@<X8>)
{
  v32 = a1;
  v1 = sub_1A5243C24();
  MEMORY[0x1EEE9AC00](v1 - 8);
  v29 = v23 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1A52408C4();
  MEMORY[0x1EEE9AC00](v3 - 8);
  v23[1] = v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_1A5240744();
  v25 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v26 = v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_1A5240754();
  v23[3] = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v6 = sub_1A5240774();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v23[4] = v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1E69E6720];
  sub_1A430DE34(0, &unk_1EB12B250, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v10 = type metadata accessor for TestNotificationPhotosItem(0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v31 = v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v30 = v23 - v13;
  MEMORY[0x1EEE9AC00](v14);
  MEMORY[0x1EEE9AC00](v15);
  v17 = v23 - v16;
  sub_1A430DE34(0, &qword_1EB12B0D0, MEMORY[0x1E6968848], v8);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v19 = sub_1A52407E4();
  v33 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v27 = v23 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v23[2] = v23 - v22;
  sub_1A4189B78(v17);
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A430D644@<X0>(uint64_t a1@<X8>)
{
  v46 = a1;
  sub_1A430C434(0);
  v44 = v1 - 8;
  MEMORY[0x1EEE9AC00](v1 - 8);
  v45 = &v43 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v43 - v4;
  sub_1A430C214(0);
  v7 = v6 - 8;
  MEMORY[0x1EEE9AC00](v6);
  v43 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = (&v43 - v10);
  *v11 = sub_1A524BC74();
  v11[1] = v12;
  sub_1A430E114(0, &qword_1EB137DA0, &qword_1EB137D18, sub_1A430C2F8);
  sub_1A430DA68(v11 + *(v13 + 44));
  sub_1A430C264();
  v15 = v11 + *(v14 + 36);
  v16 = sub_1A5248A14();
  v17 = *(v16 + 20);
  v18 = *MEMORY[0x1E697F468];
  v19 = sub_1A52494A4();
  v20 = *(*(v19 - 8) + 104);
  v20(&v15[v17], v18, v19);
  __asm { FMOV            V0.2D, #8.0 }

  v47 = _Q0;
  *v15 = _Q0;
  sub_1A3E42C88();
  v27 = v26;
  *&v15[*(v26 + 36)] = 256;
  sub_1A524BC64();
  sub_1A52481F4();
  sub_1A430C23C(0);
  v29 = (v11 + *(v28 + 36));
  v30 = v49;
  *v29 = v48;
  v29[1] = v30;
  v29[2] = v50;
  *(v11 + *(v7 + 44)) = xmmword_1A532F580;
  v20(&v5[*(v16 + 20)], v18, v19);
  *v5 = v47;
  v31 = sub_1A524B3B4();
  sub_1A42057E4();
  *&v5[*(v32 + 36)] = v31;
  sub_1A430C35C(0, &qword_1EB137D40, sub_1A42057E4, sub_1A3E42C88);
  v34 = &v5[*(v33 + 36)];
  v20(&v34[*(v16 + 20)], v18, v19);
  *v34 = v47;
  *&v34[*(v27 + 36)] = 256;
  sub_1A524BC64();
  sub_1A52481F4();
  sub_1A430C4C0();
  v36 = &v5[*(v35 + 36)];
  v37 = v52;
  *v36 = v51;
  *(v36 + 1) = v37;
  *(v36 + 2) = v53;
  v38 = v43;
  *&v5[*(v44 + 44)] = xmmword_1A532F590;
  sub_1A430E04C(v11, v38, sub_1A430C214);
  v39 = v45;
  sub_1A430E04C(v5, v45, sub_1A430C434);
  v40 = v46;
  sub_1A430E04C(v38, v46, sub_1A430C214);
  sub_1A430C1A4();
  sub_1A430E04C(v39, v40 + *(v41 + 48), sub_1A430C434);
  sub_1A430E0B4(v5, sub_1A430C434);
  sub_1A430E0B4(v11, sub_1A430C214);
  sub_1A430E0B4(v39, sub_1A430C434);
  return sub_1A430E0B4(v38, sub_1A430C214);
}

uint64_t sub_1A430DA68@<X0>(uint64_t a1@<X8>)
{
  v30 = a1;
  sub_1A42057E4();
  v2 = v1 - 8;
  MEMORY[0x1EEE9AC00](v1);
  v29 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v28 - v5;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v28 - v8;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v28 - v11;
  v13 = sub_1A5248A14();
  v14 = *(v13 + 20);
  v15 = *MEMORY[0x1E697F468];
  v16 = sub_1A52494A4();
  v17 = *(*(v16 - 8) + 104);
  v17(&v12[v14], v15, v16);
  __asm { FMOV            V0.2D, #8.0 }

  v28 = _Q0;
  *v12 = _Q0;
  *&v12[*(v2 + 44)] = sub_1A524B3B4();
  v17(&v9[*(v13 + 20)], v15, v16);
  *v9 = v28;
  sub_1A524B404();
  v23 = sub_1A524B474();

  *&v9[*(v2 + 44)] = v23;
  sub_1A430E04C(v12, v6, sub_1A42057E4);
  v24 = v29;
  sub_1A430E04C(v9, v29, sub_1A42057E4);
  v25 = v30;
  sub_1A430E04C(v6, v30, sub_1A42057E4);
  sub_1A430C2F8();
  sub_1A430E04C(v24, v25 + *(v26 + 48), sub_1A42057E4);
  sub_1A430E0B4(v9, sub_1A42057E4);
  sub_1A430E0B4(v12, sub_1A42057E4);
  sub_1A430E0B4(v24, sub_1A42057E4);
  return sub_1A430E0B4(v6, sub_1A42057E4);
}

uint64_t sub_1A430DCE4()
{
  v0 = sub_1A5246F24();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1A45350E8();
  (*(v1 + 16))(v3, v4, v0);
  v5 = sub_1A5246F04();
  v6 = sub_1A524D264();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_1A3C1C000, v5, v6, "Test Notification Subtitle Action", v7, 2u);
    MEMORY[0x1A590EEC0](v7, -1, -1);
  }

  return (*(v1 + 8))(v3, v0);
}

void sub_1A430DE34(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1A430DE98(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    sub_1A430BF8C(255);
    v7 = v6;
    sub_1A430C104(255, &qword_1EB137CE0, &qword_1EB137CE8, sub_1A430C1A4, &qword_1EB137D48);
    v9 = a3(a1, v7, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_1A430DF34(uint64_t a1, uint64_t a2)
{
  sub_1A430C104(0, &qword_1EB137CE0, &qword_1EB137CE8, sub_1A430C1A4, &qword_1EB137D48);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A430DFC4(uint64_t a1)
{
  sub_1A430C104(0, &qword_1EB137CE0, &qword_1EB137CE8, sub_1A430C1A4, &qword_1EB137D48);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1A430E04C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A430E0B4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1A430E114(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  if (!*a2)
  {
    sub_1A430DE34(255, a3, a4, MEMORY[0x1E6981F40]);
    v5 = sub_1A52483B4();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1A430E190()
{
  if (!qword_1EB1261E0)
  {
    v0 = sub_1A524EA54();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB1261E0);
    }
  }
}

uint64_t sub_1A430E218(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 16) = a1;
}

void sub_1A430E26C(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = v2;
  v6 = sub_1A3F46F64();
  if ((*&v6 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_12;
  }

  if (v6 <= -9.22337204e18)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (v6 >= 9.22337204e18)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v7 = v6;
  v8 = *(a1 + *(type metadata accessor for TimelineEngineCellFrame(0) + 24));
  v9 = __OFADD__(v7, v8);
  v10 = v7 + v8;
  if (v9)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v11 = *(*v3 + 88);
  v12 = *(v11() + 16);

  if (!v12)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v14 = v10 % v12;
  v15 = (v11)(v13);
  v16 = type metadata accessor for TimelineEngineMockData();
  a2[3] = v16;
  a2[4] = sub_1A430E944();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a2);
  if ((v14 & 0x8000000000000000) != 0)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v14 >= *(v15 + 16))
  {
LABEL_17:
    __break(1u);
    return;
  }

  sub_1A430E99C(v15 + ((*(*(v16 - 8) + 80) + 32) & ~*(*(v16 - 8) + 80)) + *(*(v16 - 8) + 72) * v14, boxed_opaque_existential_1);
}

uint64_t sub_1A430E408()
{
  v0 = swift_allocObject();
  sub_1A430E440();
  return v0;
}

uint64_t sub_1A430E440()
{
  v1 = v0;
  v2 = type metadata accessor for TimelineEngineMockData();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A430E190();
  v6 = swift_allocObject();
  v7 = _swift_stdlib_malloc_size(v6);
  v8 = v7 - 32;
  if (v7 < 32)
  {
    v8 = v7 - 25;
  }

  v6[2] = 21;
  v6[3] = 2 * (v8 >> 3);
  v6[4] = 0;
  v6[5] = 1;
  v6[6] = 2;
  v6[7] = 3;
  v6[8] = 4;
  v6[9] = 5;
  v6[10] = 6;
  v6[11] = 7;
  v6[12] = 8;
  v6[13] = 9;
  v6[14] = 10;
  v6[15] = 11;
  v6[16] = 12;
  v6[17] = 13;
  v6[18] = 14;
  v6[19] = 15;
  v6[20] = 16;
  v6[21] = 17;
  v6[22] = 18;
  v6[23] = 19;
  v6[24] = 20;
  v9 = v6[2];
  if (v9)
  {
    v15 = MEMORY[0x1E69E7CC0];
    sub_1A430E6F4(0, v9, 0);
    v10 = v15;
    do
    {
      sub_1A4429424(v5);
      v15 = v10;
      v12 = *(v10 + 16);
      v11 = *(v10 + 24);
      if (v12 >= v11 >> 1)
      {
        sub_1A430E6F4(v11 > 1, v12 + 1, 1);
        v10 = v15;
      }

      *(v10 + 16) = v12 + 1;
      sub_1A430E8E0(v5, v10 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v12);
      --v9;
    }

    while (v9);
  }

  else
  {

    v10 = MEMORY[0x1E69E7CC0];
  }

  *(v1 + 16) = v10;
  return v1;
}

size_t sub_1A430E6F4(size_t a1, int64_t a2, char a3)
{
  result = sub_1A430E714(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_1A430E714(size_t result, int64_t a2, char a3, void *a4)
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
    v13 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  sub_1A430EA24();
  v10 = *(type metadata accessor for TimelineEngineMockData() - 8);
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
  v15 = *(type metadata accessor for TimelineEngineMockData() - 8);
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

uint64_t sub_1A430E8E0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TimelineEngineMockData();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1A430E944()
{
  result = qword_1EB137DA8;
  if (!qword_1EB137DA8)
  {
    type metadata accessor for TimelineEngineMockData();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB137DA8);
  }

  return result;
}

uint64_t sub_1A430E99C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TimelineEngineMockData();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1A430EA24()
{
  if (!qword_1EB137DB0)
  {
    type metadata accessor for TimelineEngineMockData();
    v0 = sub_1A524EA54();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB137DB0);
    }
  }
}

uint64_t sub_1A430EA7C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v69 = a1;
  sub_1A430F16C();
  v65 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v64 = &v55 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A430F254(0);
  v6 = v5;
  v68 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v66 = &v55 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = type metadata accessor for LemonadePeopleHomeToolbar.EllipsisButton(0);
  MEMORY[0x1EEE9AC00](v63);
  v9 = (&v55 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = type metadata accessor for LemonadePeopleHomeToolbar.SelectionText(0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = (&v55 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = type metadata accessor for LemonadePeopleHomeToolbar.HeartButton(0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = (&v55 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1A430F288(0);
  v67 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v55 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x1EEE9AC00](v19);
  v22 = &v55 - v20;
  if (*v2)
  {
    v60 = &v55 - v20;
    v23 = *(v2 + 16);
    v59 = *(v2 + 24);
    v24 = v23(v21);
    v61 = v6;
    v25 = v24;
    v26 = *(v2 + 8);
    v27 = *(v2 + 40);
    v57 = *(v2 + 48);
    v58 = v27;
    v29 = *(v2 + 56);
    v28 = *(v2 + 64);
    v55 = v26;
    v56 = v29;
    v71 = v28;
    v72 = *(v2 + 72);
    v30 = swift_allocObject();
    v31 = *(v2 + 48);
    v30[3] = *(v2 + 32);
    v30[4] = v31;
    *(v30 + 73) = *(v2 + 57);
    v32 = *(v2 + 16);
    v30[1] = *v2;
    v30[2] = v32;
    *v15 = v25;
    v15[1] = v26;
    v15[2] = sub_1A4312ECC;
    v15[3] = v30;
    v33 = *(v13 + 28);
    *(v15 + v33) = swift_getKeyPath();
    sub_1A4312B18(0, &unk_1EB128A40, sub_1A3DC7D88, MEMORY[0x1E697DCB8]);
    swift_storeEnumTagMultiPayload();
    v62 = v12;
    *v12 = v25;
    v34 = *(v10 + 20);
    *(v12 + v34) = swift_getKeyPath();
    swift_storeEnumTagMultiPayload();
    v35 = swift_allocObject();
    v36 = *(v2 + 48);
    v35[3] = *(v2 + 32);
    v35[4] = v36;
    *(v35 + 73) = *(v2 + 57);
    v37 = *(v2 + 16);
    v35[1] = *v2;
    v35[2] = v37;
    v39 = v55;
    v38 = v56;
    *v9 = v25;
    v9[1] = v39;
    v9[2] = sub_1A430FE0C;
    v9[3] = v35;
    v9[4] = v57;
    v9[5] = v38;
    v40 = *(v63 + 32);
    *(v9 + v40) = swift_getKeyPath();
    swift_storeEnumTagMultiPayload();
    v41 = v64;
    v42 = *(v65 + 48);
    v43 = *(v65 + 64);
    sub_1A430FE28(v15, v64, type metadata accessor for LemonadePeopleHomeToolbar.HeartButton);
    sub_1A430FE28(v62, v41 + v42, type metadata accessor for LemonadePeopleHomeToolbar.SelectionText);
    sub_1A430FE28(v9, v41 + v43, type metadata accessor for LemonadePeopleHomeToolbar.EllipsisButton);
    v63 = v15;
    swift_retain_n();
    swift_retain_n();
    v44 = v25;

    sub_1A430FE28(&v71, v70, sub_1A430FE90);

    v45 = v44;

    v22 = v60;

    sub_1A430FE28(&v71, v70, sub_1A430FE90);
    v46 = v66;
    sub_1A52495D4();
    v47 = v68;
    v48 = v61;
    (*(v68 + 16))(v18, v46, v61);
    (*(v47 + 56))(v18, 0, 1, v48);
    v49 = sub_1A4312E84(&qword_1EB137DD0, sub_1A430F254);
    MEMORY[0x1A5904D00](v18, v48, v49);
    sub_1A4312C4C(v18, sub_1A430F288);
    (*(v47 + 8))(v46, v48);
    sub_1A4312C4C(v9, type metadata accessor for LemonadePeopleHomeToolbar.EllipsisButton);
    sub_1A4312C4C(v62, type metadata accessor for LemonadePeopleHomeToolbar.SelectionText);
    v50 = type metadata accessor for LemonadePeopleHomeToolbar.HeartButton;
    v51 = v63;
  }

  else
  {
    (*(v68 + 56))(v18, 1, 1, v6, v21);
    v52 = sub_1A4312E84(&qword_1EB137DD0, sub_1A430F254);
    MEMORY[0x1A5904D00](v18, v6, v52);
    v50 = sub_1A430F288;
    v51 = v18;
  }

  sub_1A4312C4C(v51, v50);
  v53 = sub_1A430F2BC();
  MEMORY[0x1A5904CD0](v22, v67, v53);
  return sub_1A4312C4C(v22, sub_1A430F288);
}

void sub_1A430F16C()
{
  if (!qword_1EB137DB8)
  {
    type metadata accessor for LemonadePeopleHomeToolbar.HeartButton(255);
    type metadata accessor for LemonadePeopleHomeToolbar.SelectionText(255);
    type metadata accessor for LemonadePeopleHomeToolbar.EllipsisButton(255);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_1EB137DB8);
    }
  }
}

unint64_t sub_1A430F2BC()
{
  result = qword_1EB137DD8;
  if (!qword_1EB137DD8)
  {
    sub_1A430F288(255);
    sub_1A4312E84(&qword_1EB137DD0, sub_1A430F254);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB137DD8);
  }

  return result;
}

uint64_t sub_1A430F364(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1A5249234();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(a3 + 72);
  v13 = *(a3 + 64);
  v8 = v14;

  if ((v8 & 1) == 0)
  {
    sub_1A524D254();
    v9 = sub_1A524A014();
    sub_1A5246DF4();

    sub_1A5249224();
    swift_getAtKeyPath();
    sub_1A4312C4C(&v13, sub_1A430FE90);
    (*(v5 + 8))(v7, v4);
  }

  sub_1A52422A4();

  return (*(a3 + 32))(v10);
}

uint64_t sub_1A430F500@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v79 = a2;
  v3 = type metadata accessor for LemonadePeopleHomeToolbar.HeartButton(0);
  v68 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v69 = v4;
  v70 = &v65[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1A3E42920();
  v76 = v5;
  v74 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v73 = &v65[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1A4312058(0);
  v72 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v78 = &v65[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v9);
  v71 = &v65[-v10];
  MEMORY[0x1EEE9AC00](v11);
  v75 = &v65[-v12];
  v13 = sub_1A5249A94();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v67 = &v65[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1A3DD0DCC();
  v17 = v16 - 8;
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v65[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1A3DC7D88(0);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v22 = &v65[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v65[-v24];
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v65[-v27];
  v77 = a1;
  sub_1A3DC7F98(&v65[-v27]);
  (*(v14 + 104))(v25, *MEMORY[0x1E697FF40], v13);
  (*(v14 + 56))(v25, 0, 1, v13);
  v29 = *(v17 + 56);
  sub_1A430FE28(v28, v19, sub_1A3DC7D88);
  sub_1A430FE28(v25, &v19[v29], sub_1A3DC7D88);
  v30 = *(v14 + 48);
  if (v30(v19, 1, v13) == 1)
  {
    sub_1A4312C4C(v25, sub_1A3DC7D88);
    sub_1A4312C4C(v28, sub_1A3DC7D88);
    v31 = v30(&v19[v29], 1, v13);
    if (v31 == 1)
    {
      v32 = sub_1A3DC7D88;
    }

    else
    {
      v32 = sub_1A3DD0DCC;
    }

    if (v31 == 1)
    {
      v33 = -1;
    }

    else
    {
      v33 = 0;
    }
  }

  else
  {
    sub_1A430FE28(v19, v22, sub_1A3DC7D88);
    if (v30(&v19[v29], 1, v13) == 1)
    {
      sub_1A4312C4C(v25, sub_1A3DC7D88);
      sub_1A4312C4C(v28, sub_1A3DC7D88);
      (*(v14 + 8))(v22, v13);
      v33 = 0;
      v32 = sub_1A3DD0DCC;
    }

    else
    {
      v34 = v67;
      (*(v14 + 32))(v67, &v19[v29], v13);
      sub_1A4312E84(&qword_1EB127B70, MEMORY[0x1E697FF50]);
      v35 = sub_1A524C594();
      v36 = *(v14 + 8);
      v36(v34, v13);
      sub_1A4312C4C(v25, sub_1A3DC7D88);
      sub_1A4312C4C(v28, sub_1A3DC7D88);
      v37 = v13;
      v33 = v35;
      v36(v22, v37);
      v32 = sub_1A3DC7D88;
    }
  }

  v66 = v33;
  sub_1A4312C4C(v19, v32);
  v38 = sub_1A5249434();
  v40 = v39;
  v42 = v41;
  v44 = v43;
  type metadata accessor for PeopleChangeTypeActionPerformer();
  v45 = v77;
  v46 = static PeopleChangeTypeActionPerformer.changeType(for:)(*v77);
  if (v46 == 1)
  {
    v47 = 0x7472616568;
  }

  else
  {
    v47 = 0x6C732E7472616568;
  }

  if (v46 == 1)
  {
    v48 = 0xE500000000000000;
  }

  else
  {
    v48 = 0xEB00000000687361;
  }

  LODWORD(v67) = v33 & 1;
  v49 = v70;
  sub_1A430FE28(v45, v70, type metadata accessor for LemonadePeopleHomeToolbar.HeartButton);
  v50 = (*(v68 + 80) + 16) & ~*(v68 + 80);
  v51 = swift_allocObject();
  v52 = sub_1A431231C(v49, v51 + v50, type metadata accessor for LemonadePeopleHomeToolbar.HeartButton);
  MEMORY[0x1EEE9AC00](v52);
  *&v65[-48] = v38;
  *&v65[-40] = v40;
  v65[-32] = v42 & 1;
  *&v65[-24] = v44;
  *&v65[-16] = v47;
  *&v65[-8] = v48;
  sub_1A3E429B4();
  sub_1A4312E84(&qword_1EB1274F0, sub_1A3E429B4);
  v53 = v73;
  sub_1A524B704();

  v54 = sub_1A49AD158();
  KeyPath = swift_getKeyPath();
  v56 = swift_allocObject();
  *(v56 + 16) = (v54 & 1) == 0;
  v57 = v71;
  (*(v74 + 32))(v71, v53, v76);
  v58 = (v57 + *(v72 + 36));
  *v58 = KeyPath;
  v58[1] = sub_1A4312ED8;
  v58[2] = v56;
  v59 = v75;
  sub_1A431231C(v57, v75, sub_1A4312058);
  v60 = v78;
  sub_1A430FE28(v59, v78, sub_1A4312058);
  v61 = v79;
  *v79 = 0;
  v62 = v66;
  *(v61 + 8) = v67;
  *(v61 + 9) = (v62 & 1) == 0;
  sub_1A4312B7C();
  sub_1A430FE28(v60, v61 + *(v63 + 48), sub_1A4312058);
  sub_1A4312C4C(v59, sub_1A4312058);
  return sub_1A4312C4C(v60, sub_1A4312058);
}

uint64_t objectdestroyTm_44()
{

  return swift_deallocObject();
}

uint64_t sub_1A430FE28(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A430FEC4()
{
  v1 = sub_1A52498B4();
  MEMORY[0x1EEE9AC00](v1 - 8);
  sub_1A4312AA8(0);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v9[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1A5249894();
  v10 = v0;
  sub_1A4312AE4(0);
  sub_1A4312E84(&qword_1EB137E90, sub_1A4312AE4);
  sub_1A5248A74();
  v7 = sub_1A4312E84(&qword_1EB137E98, sub_1A4312AA8);
  MEMORY[0x1A5904CD0](v6, v3, v7);
  return (*(v4 + 8))(v6, v3);
}

void sub_1A4310098(id *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1A5249A94();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v38 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3DD0DCC();
  v8 = v7 - 8;
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3DC7D88(0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v39 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v37 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v37 - v17;
  type metadata accessor for LemonadePeopleHomeToolbar.SelectionText(0);
  v40 = a1;
  sub_1A3DC7F98(v18);
  (*(v5 + 104))(v15, *MEMORY[0x1E697FF40], v4);
  (*(v5 + 56))(v15, 0, 1, v4);
  v19 = *(v8 + 56);
  sub_1A430FE28(v18, v10, sub_1A3DC7D88);
  sub_1A430FE28(v15, &v10[v19], sub_1A3DC7D88);
  v20 = *(v5 + 48);
  if (v20(v10, 1, v4) == 1)
  {
    sub_1A4312C4C(v15, sub_1A3DC7D88);
    sub_1A4312C4C(v18, sub_1A3DC7D88);
    v21 = v20(&v10[v19], 1, v4);
    if (v21 == 1)
    {
      v22 = sub_1A3DC7D88;
    }

    else
    {
      v22 = sub_1A3DD0DCC;
    }

    if (v21 == 1)
    {
      v23 = -1;
    }

    else
    {
      v23 = 0;
    }
  }

  else
  {
    sub_1A430FE28(v10, v39, sub_1A3DC7D88);
    if (v20(&v10[v19], 1, v4) == 1)
    {
      sub_1A4312C4C(v15, sub_1A3DC7D88);
      sub_1A4312C4C(v18, sub_1A3DC7D88);
      (*(v5 + 8))(v39, v4);
      v23 = 0;
      v22 = sub_1A3DD0DCC;
    }

    else
    {
      v24 = v38;
      (*(v5 + 32))(v38, &v10[v19], v4);
      sub_1A4312E84(&qword_1EB127B70, MEMORY[0x1E697FF50]);
      v25 = v39;
      v23 = sub_1A524C594();
      v26 = *(v5 + 8);
      v26(v24, v4);
      sub_1A4312C4C(v15, sub_1A3DC7D88);
      sub_1A4312C4C(v18, sub_1A3DC7D88);
      v26(v25, v4);
      v22 = sub_1A3DC7D88;
    }
  }

  sub_1A4312C4C(v10, v22);
  v27 = *v40;
  if ([*v40 count])
  {
    v28 = objc_opt_self();
    v29 = sub_1A524C634();
    v30 = [v28 locKeyForPeople:v27 key:v29];

    if (!v30)
    {
      sub_1A524C674();
      v30 = sub_1A524C634();
    }

    PXLocalizedStringWithCount(v30);
  }

  v31 = (v23 & 1) == 0;
  v43 = sub_1A3C38BD4();
  v44 = v32;
  sub_1A3D5F9DC();
  v33 = sub_1A524A464();
  LOBYTE(v43) = v23 & 1;
  v42 = v34 & 1;
  v41 = v23 & 1;
  *a2 = 0;
  *(a2 + 8) = v31;
  *(a2 + 9) = v23 & 1;
  *(a2 + 16) = v33;
  *(a2 + 24) = v35;
  *(a2 + 32) = v34 & 1;
  *(a2 + 40) = v36;
  *(a2 + 48) = 257;
  *(a2 + 56) = 0;
  *(a2 + 64) = v31;
  *(a2 + 65) = v23 & 1;
  sub_1A3E75E68(v33, v35, v34 & 1);
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A431066C()
{
  v1 = sub_1A52498B4();
  MEMORY[0x1EEE9AC00](v1 - 8);
  sub_1A4312850(0);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v15[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1A43129EC();
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v15[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1A5249894();
  v16 = v0;
  sub_1A4312920(0);
  sub_1A4312E84(&qword_1EB137E60, sub_1A4312920);
  sub_1A5248A74();
  v12 = sub_1A4312E84(&qword_1EB137E70, sub_1A4312850);
  sub_1A5248584();
  (*(v4 + 8))(v6, v3);
  v17 = v3;
  v18 = v12;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  MEMORY[0x1A5904CD0](v11, v8, OpaqueTypeConformance2);
  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_1A4310918@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v46 = a2;
  v3 = sub_1A5249A94();
  v44 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v43 = &v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3DD0DCC();
  v6 = v5 - 8;
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3DC7D88(0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v47 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v42 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v42 - v15;
  sub_1A4311EE0(0);
  v18 = v17 - 8;
  MEMORY[0x1EEE9AC00](v17);
  v45 = &v42 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v42 - v21;
  v48 = a1;
  sub_1A4311FB0(0);
  sub_1A4312E84(&qword_1EB137E30, sub_1A4311FB0);
  sub_1A524A2E4();
  v23 = sub_1A49ACFC0();
  KeyPath = swift_getKeyPath();
  v25 = swift_allocObject();
  *(v25 + 16) = (v23 & 1) == 0;
  v26 = *(v18 + 44);
  v27 = v22;
  v28 = v44;
  v29 = (v27 + v26);
  *v29 = KeyPath;
  v29[1] = sub_1A3E07024;
  v29[2] = v25;
  type metadata accessor for LemonadePeopleHomeToolbar.EllipsisButton(0);
  sub_1A3DC7F98(v16);
  (*(v28 + 104))(v13, *MEMORY[0x1E697FF40], v3);
  (*(v28 + 56))(v13, 0, 1, v3);
  v30 = *(v6 + 56);
  sub_1A430FE28(v16, v8, sub_1A3DC7D88);
  sub_1A430FE28(v13, &v8[v30], sub_1A3DC7D88);
  v31 = *(v28 + 48);
  if (v31(v8, 1, v3) == 1)
  {
    sub_1A4312C4C(v13, sub_1A3DC7D88);
    sub_1A4312C4C(v16, sub_1A3DC7D88);
    v32 = v31(&v8[v30], 1, v3);
    if (v32 == 1)
    {
      v33 = sub_1A3DC7D88;
    }

    else
    {
      v33 = sub_1A3DD0DCC;
    }

    if (v32 == 1)
    {
      v34 = -1;
    }

    else
    {
      v34 = 0;
    }
  }

  else
  {
    sub_1A430FE28(v8, v47, sub_1A3DC7D88);
    if (v31(&v8[v30], 1, v3) == 1)
    {
      sub_1A4312C4C(v13, sub_1A3DC7D88);
      sub_1A4312C4C(v16, sub_1A3DC7D88);
      (*(v28 + 8))(v47, v3);
      v34 = 0;
      v33 = sub_1A3DD0DCC;
    }

    else
    {
      v35 = v43;
      (*(v28 + 32))(v43, &v8[v30], v3);
      sub_1A4312E84(&qword_1EB127B70, MEMORY[0x1E697FF50]);
      v34 = sub_1A524C594();
      v36 = *(v28 + 8);
      v36(v35, v3);
      sub_1A4312C4C(v13, sub_1A3DC7D88);
      sub_1A4312C4C(v16, sub_1A3DC7D88);
      v36(v47, v3);
      v33 = sub_1A3DC7D88;
    }
  }

  sub_1A4312C4C(v8, v33);
  v37 = v45;
  sub_1A430FE28(v27, v45, sub_1A4311EE0);
  v38 = v46;
  sub_1A430FE28(v37, v46, sub_1A4311EE0);
  sub_1A4311E4C();
  v40 = v38 + *(v39 + 48);
  *v40 = 0;
  *(v40 + 8) = v34 & 1;
  *(v40 + 9) = (v34 & 1) == 0;
  sub_1A4312C4C(v27, sub_1A4311EE0);
  return sub_1A4312C4C(v37, sub_1A4311EE0);
}

uint64_t sub_1A4310F44@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v66 = a2;
  sub_1A4312078(0);
  v61 = v3 - 8;
  MEMORY[0x1EEE9AC00](v3 - 8);
  v65 = v55 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v64 = v55 - v6;
  MEMORY[0x1EEE9AC00](v7);
  v63 = v55 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v60 = v55 - v10;
  v11 = type metadata accessor for LemonadePeopleHomeToolbar.EllipsisButton(0);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v58 = v13;
  v14 = v55 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4312058(0);
  v16 = v15 - 8;
  MEMORY[0x1EEE9AC00](v15);
  v62 = v55 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = v55 - v19;
  v67 = a1;
  v21 = LemonadeLocalizedStringForPeople(_:key:)(*a1);
  v23 = v22;
  v56 = type metadata accessor for LemonadePeopleHomeToolbar.EllipsisButton;
  sub_1A430FE28(a1, v14, type metadata accessor for LemonadePeopleHomeToolbar.EllipsisButton);
  v24 = (*(v12 + 80) + 16) & ~*(v12 + 80);
  v25 = swift_allocObject();
  v57 = type metadata accessor for LemonadePeopleHomeToolbar.EllipsisButton;
  sub_1A431231C(v14, v25 + v24, type metadata accessor for LemonadePeopleHomeToolbar.EllipsisButton);
  v72[0] = v21;
  v72[1] = v23;
  v69 = v72;
  v70 = 0x73616C732E657965;
  v71 = 0xE900000000000068;
  sub_1A3E429B4();
  sub_1A4312E84(&qword_1EB1274F0, sub_1A3E429B4);
  v59 = v20;
  sub_1A524B704();

  v26 = v67;
  v27 = sub_1A49ACFC0();
  KeyPath = swift_getKeyPath();
  v29 = swift_allocObject();
  *(v29 + 16) = (v27 & 1) == 0;
  v30 = &v20[*(v16 + 44)];
  *v30 = KeyPath;
  v30[1] = sub_1A4312ED8;
  v30[2] = v29;
  sub_1A430FE28(v26, v14, type metadata accessor for LemonadePeopleHomeToolbar.EllipsisButton);
  v31 = swift_allocObject();
  v32 = v57;
  sub_1A431231C(v14, v31 + v24, v57);
  sub_1A41CC66C(0);
  v55[1] = v33;
  sub_1A4312E84(&qword_1EB134918, sub_1A41CC66C);
  v34 = v60;
  sub_1A524B704();
  LOBYTE(KeyPath) = sub_1A49AD488();
  v35 = swift_getKeyPath();
  v36 = swift_allocObject();
  *(v36 + 16) = (KeyPath & 1) == 0;
  v37 = v61;
  v38 = (v34 + *(v61 + 44));
  *v38 = v35;
  v38[1] = sub_1A4312ED8;
  v38[2] = v36;
  v39 = v67;
  sub_1A430FE28(v67, v14, v56);
  v40 = swift_allocObject();
  sub_1A431231C(v14, v40 + v24, v32);
  v68 = v39;
  v41 = v63;
  sub_1A524B704();
  LOBYTE(v26) = sub_1A49AD2F0();
  v42 = swift_getKeyPath();
  v43 = swift_allocObject();
  *(v43 + 16) = (v26 & 1) == 0;
  v44 = &v41[*(v37 + 44)];
  v45 = v41;
  *v44 = v42;
  v44[1] = sub_1A4312ED8;
  v44[2] = v43;
  v46 = v59;
  v47 = v62;
  sub_1A430FE28(v59, v62, sub_1A4312058);
  v48 = v64;
  sub_1A430FE28(v34, v64, sub_1A4312078);
  v49 = v41;
  v50 = v65;
  sub_1A430FE28(v49, v65, sub_1A4312078);
  v51 = v66;
  sub_1A430FE28(v47, v66, sub_1A4312058);
  sub_1A4311FE4();
  v53 = v52;
  sub_1A430FE28(v48, v51 + *(v52 + 48), sub_1A4312078);
  sub_1A430FE28(v50, v51 + *(v53 + 64), sub_1A4312078);
  sub_1A4312C4C(v45, sub_1A4312078);
  sub_1A4312C4C(v34, sub_1A4312078);
  sub_1A4312C4C(v46, sub_1A4312058);
  sub_1A4312C4C(v50, sub_1A4312078);
  sub_1A4312C4C(v48, sub_1A4312078);
  return sub_1A4312C4C(v47, sub_1A4312058);
}

void sub_1A4311620(uint64_t a1@<X8>)
{
  sub_1A3C38BD4();
  sub_1A3D5F9DC();
  v2 = sub_1A524A464();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = sub_1A524B544();
  *a1 = v2;
  *(a1 + 8) = v4;
  v6 &= 1u;
  *(a1 + 16) = v6;
  *(a1 + 24) = v8;
  *(a1 + 32) = v9;
  sub_1A3E75E68(v2, v4, v6);
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A4311700@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1A524B544();
  *a1 = result;
  return result;
}

uint64_t sub_1A431173C()
{
  v1 = sub_1A52498B4();
  MEMORY[0x1EEE9AC00](v1 - 8);
  sub_1A4311DDC(0);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v9[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1A5249894();
  v10 = v0;
  sub_1A4311E18(0);
  sub_1A4312E84(&qword_1EB137E38, sub_1A4311E18);
  sub_1A5248A74();
  v7 = sub_1A4312E84(&qword_1EB137E40, sub_1A4311DDC);
  MEMORY[0x1A5904CD0](v6, v3, v7);
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_1A4311908@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  result = swift_getKeyPath();
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7;
  *(a9 + 56) = a8;
  *(a9 + 64) = result;
  *(a9 + 72) = 0;
  return result;
}

__n128 __swift_memcpy73_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 57) = *(a2 + 57);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1A43119E8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 73))
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

uint64_t sub_1A4311A30(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

void sub_1A4311ABC()
{
  sub_1A3F63918();
  if (v0 <= 0x3F)
  {
    type metadata accessor for LemonadePeopleHomeView.SelectionState(319);
    if (v1 <= 0x3F)
    {
      sub_1A3C3637C();
      if (v2 <= 0x3F)
      {
        sub_1A4312B18(319, &qword_1EB124700, sub_1A3DC7D88, MEMORY[0x1E697DCC0]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1A4311BC8()
{
  sub_1A3F63918();
  if (v0 <= 0x3F)
  {
    sub_1A4312B18(319, &qword_1EB124700, sub_1A3DC7D88, MEMORY[0x1E697DCC0]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1A4311CA4()
{
  sub_1A3F63918();
  if (v0 <= 0x3F)
  {
    type metadata accessor for LemonadePeopleHomeView.SelectionState(319);
    if (v1 <= 0x3F)
    {
      sub_1A3C3637C();
      if (v2 <= 0x3F)
      {
        sub_1A4312B18(319, &qword_1EB124700, sub_1A3DC7D88, MEMORY[0x1E697DCC0]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1A4311E4C()
{
  if (!qword_1EB137DF0)
  {
    sub_1A4311EE0(255);
    sub_1A4312CD4(255, &qword_1EB1273B0, MEMORY[0x1E6981840], MEMORY[0x1E69E6720]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB137DF0);
    }
  }
}

void sub_1A4311F00()
{
  if (!qword_1EB137E00)
  {
    sub_1A4311FB0(255);
    sub_1A4312E84(&qword_1EB137E30, sub_1A4311FB0);
    v0 = sub_1A524A2F4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB137E00);
    }
  }
}

void sub_1A4311FE4()
{
  if (!qword_1EB137E10)
  {
    sub_1A4312058(255);
    sub_1A4312078(255);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_1EB137E10);
    }
  }
}

void sub_1A4312098(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    sub_1A4312CD4(255, &qword_1EB1276F0, MEMORY[0x1E69E6370], MEMORY[0x1E6980B20]);
    v4 = sub_1A5248804();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1A4312128()
{
  if (!qword_1EB137E28)
  {
    sub_1A41CC66C(255);
    sub_1A4312E84(&qword_1EB134918, sub_1A41CC66C);
    v0 = sub_1A524B764();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB137E28);
    }
  }
}

uint64_t sub_1A43121CC()
{
  sub_1A4312E84(&qword_1EB137EC0, type metadata accessor for PXActionType);
  sub_1A4312E84(&qword_1EB137EC8, type metadata accessor for PXActionType);

  return sub_1A524E7E4();
}

uint64_t sub_1A431231C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t objectdestroy_38Tm()
{
  v1 = (type metadata accessor for LemonadePeopleHomeToolbar.EllipsisButton(0) - 8);
  v2 = (v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80)));

  v3 = v1[10];
  sub_1A4312B18(0, &unk_1EB128A40, sub_1A3DC7D88, MEMORY[0x1E697DCB8]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_1A5249A94();
    v5 = *(v4 - 8);
    if (!(*(v5 + 48))(v2 + v3, 1, v4))
    {
      (*(v5 + 8))(v2 + v3, v4);
    }
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1A4312664(uint64_t (*a1)(void), void *a2)
{
  v4 = *(a1(0) - 8);
  v5 = v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80));
  return (*(v5 + 16))(*a2, *v5);
}

void sub_1A43126DC(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = objc_opt_self();
  v5 = [*v3 firstObject];
  v6 = sub_1A524C634();
  v7 = [v4 locKeyForPersonOrPet:v5 key:v6];

  sub_1A524C674();
  sub_1A3C38BD4();

  sub_1A3D5F9DC();
  v8 = sub_1A524A464();
  v10 = v9;
  LOBYTE(v6) = v11;
  v13 = v12;
  v14 = sub_1A524B544();
  *a1 = v8;
  *(a1 + 8) = v10;
  LOBYTE(v6) = v6 & 1;
  *(a1 + 16) = v6;
  *(a1 + 24) = v13;
  *(a1 + 32) = v14;
  sub_1A3E75E68(v8, v10, v6);
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

void sub_1A431288C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), unint64_t *a4, void (*a5)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    sub_1A4312E84(a4, a5);
    v8 = sub_1A5248A84();
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_1A4312954()
{
  if (!qword_1EB137E58)
  {
    sub_1A4312CD4(255, &qword_1EB1273B0, MEMORY[0x1E6981840], MEMORY[0x1E69E6720]);
    sub_1A426CA08();
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_1EB137E58);
    }
  }
}

void sub_1A43129EC()
{
  if (!qword_1EB137E68)
  {
    sub_1A4312850(255);
    sub_1A4312E84(&qword_1EB137E70, sub_1A4312850);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB137E68);
    }
  }
}

void sub_1A4312B18(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1A4312B7C()
{
  if (!qword_1EB137E88)
  {
    sub_1A4312CD4(255, &qword_1EB1273B0, MEMORY[0x1E6981840], MEMORY[0x1E69E6720]);
    sub_1A4312058(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB137E88);
    }
  }
}

uint64_t sub_1A4312C4C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1A4312CD4(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t get_witness_table_qd__7SwiftUI14ToolbarContentHD2_AA0cD7BuilderV10buildBlockyQrxAaBRzlFZQOy_AA0C9ItemGroupVyAA9TupleViewVyAA6SpacerVSg_AA08ModifiedD0VyAA6ButtonVyAA5LabelVyAA4TextVAA5ImageVGGAA32_EnvironmentKeyTransformModifierVySbGGtGGQo_HOTm(uint64_t a1, void (*a2)(uint64_t), unint64_t *a3, void (*a4)(uint64_t))
{
  a2(255);
  sub_1A4312E84(a3, a4);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1A4312E84(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1A4312EDC(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1A4312EFC, 0, 0);
}

uint64_t sub_1A4312EFC()
{
  v1 = sub_1A3C3A99C(*(v0 + 16));
  v2 = *(v0 + 8);

  return v2(v1);
}

void *sub_1A4312F5C(void *a1)
{
  v2 = type metadata accessor for LemonadeBookmark.CollectionIdentifier(0);
  MEMORY[0x1EEE9AC00](v2);
  v4 = (&v71 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = type metadata accessor for LemonadeBookmark(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5 - 8);
  v9 = &v71 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v12 = &v71 - v11;
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = &v71 - v14;
  v16 = MEMORY[0x1EEE9AC00](v13);
  v75 = &v71 - v17;
  v18 = MEMORY[0x1EEE9AC00](v16);
  v20 = &v71 - v19;
  v21 = MEMORY[0x1EEE9AC00](v18);
  v23 = &v71 - v22;
  MEMORY[0x1EEE9AC00](v21);
  v25 = &v71 - v24;
  IsIPad = PLPhysicalDeviceIsIPad();
  if (!MEMORY[0x1A590D320]())
  {

    sub_1A43148A4(a1);
  }

  v73 = v12;
  v74 = v9;
  *v4 = PXDisplayCollectionDetailedCountsMake(203);
  v26 = swift_storeEnumTagMultiPayload();
  v27 = sub_1A3FA19AC(v26);
  sub_1A3F9DA60(v27, v28, 0, v4, v25);
  v29 = sub_1A3FA05D8(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v31 = v29[2];
  v30 = v29[3];
  v72 = v15;
  if (v31 >= v30 >> 1)
  {
    v29 = sub_1A3FA05D8(v30 > 1, v31 + 1, 1, v29);
  }

  v29[2] = v31 + 1;
  v32 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v33 = *(v6 + 72);
  sub_1A3C5921C(v25, v29 + v32 + v33 * v31);
  *v4 = PXDisplayCollectionDetailedCountsMake(1000000218);
  v34 = swift_storeEnumTagMultiPayload();
  v35 = sub_1A3FA19AC(v34);
  sub_1A3F9DA60(v35, v36, 7, v4, v23);
  v38 = v29[2];
  v37 = v29[3];
  if (v38 >= v37 >> 1)
  {
    v29 = sub_1A3FA05D8(v37 > 1, v38 + 1, 1, v29);
  }

  v39 = v74;
  v29[2] = v38 + 1;
  sub_1A3C5921C(v23, v29 + v32 + v38 * v33);
  v40 = swift_storeEnumTagMultiPayload();
  v41 = sub_1A3FA19AC(v40);
  sub_1A3F9DA60(v41, v42, 10, v4, v20);
  v44 = v29[2];
  v43 = v29[3];
  if (v44 >= v43 >> 1)
  {
    v29 = sub_1A3FA05D8(v43 > 1, v44 + 1, 1, v29);
  }

  v29[2] = v44 + 1;
  v45 = v32;
  sub_1A3C5921C(v20, v29 + v32 + v44 * v33);
  *v4 = PXDisplayCollectionDetailedCountsMake(202);
  v46 = swift_storeEnumTagMultiPayload();
  v47 = sub_1A3FA19AC(v46);
  v48 = v75;
  sub_1A3F9DA60(v47, v49, 6, v4, v75);
  v51 = v29[2];
  v50 = v29[3];
  if (v51 >= v50 >> 1)
  {
    v29 = sub_1A3FA05D8(v50 > 1, v51 + 1, 1, v29);
  }

  v52 = v72;
  v29[2] = v51 + 1;
  sub_1A3C5921C(v48, v29 + v45 + v51 * v33);
  *v4 = PXDisplayCollectionDetailedCountsMake(211);
  v53 = swift_storeEnumTagMultiPayload();
  v54 = sub_1A3FA19AC(v53);
  sub_1A3F9DA60(v54, v55, 6, v4, v52);
  v57 = v29[2];
  v56 = v29[3];
  if (v57 >= v56 >> 1)
  {
    v29 = sub_1A3FA05D8(v56 > 1, v57 + 1, 1, v29);
  }

  v29[2] = v57 + 1;
  sub_1A3C5921C(v52, v29 + v45 + v57 * v33);
  if (IsIPad)
  {
    v58 = swift_storeEnumTagMultiPayload();
    v59 = sub_1A3FA19AC(v58);
    sub_1A3F9DA60(v59, v60, 4, v4, v73);
    v62 = v29[2];
    v61 = v29[3];
    if (v62 >= v61 >> 1)
    {
      v29 = sub_1A3FA05D8(v61 > 1, v62 + 1, 1, v29);
    }

    v29[2] = v62 + 1;
    sub_1A3C5921C(v73, v29 + v45 + v62 * v33);
  }

  v63 = *MEMORY[0x1E69C1260];
  v64 = sub_1A5244EB4();
  (*(*(v64 - 8) + 104))(v4, v63, v64);
  v65 = swift_storeEnumTagMultiPayload();
  v66 = sub_1A3FA19AC(v65);
  sub_1A3F9DA60(v66, v67, 7, v4, v39);
  v69 = v29[2];
  v68 = v29[3];
  if (v69 >= v68 >> 1)
  {
    v29 = sub_1A3FA05D8(v68 > 1, v69 + 1, 1, v29);
  }

  v29[2] = v69 + 1;
  sub_1A3C5921C(v39, v29 + v45 + v69 * v33);
  return v29;
}

id sub_1A4313510(void *a1)
{
  v35 = *MEMORY[0x1E69E9840];
  v2 = sub_1A5246F24();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!PFIsPhotosPicker())
  {
    v16 = [a1 px_localDefaults];
    v17 = sub_1A524C634();
    v18 = [v16 dataForKey_];

    if (v18)
    {
      v19 = sub_1A5240EA4();

      return v19;
    }

    return 0;
  }

  v6 = [a1 assetsdClient];
  v7 = [v6 libraryInternalClient];

  result = PLPhotosAppBundleID();
  if (!result)
  {
    __break(1u);
    return result;
  }

  v9 = result;
  v33[0] = 0;
  v10 = [v7 readAppPrivateDataBelongingToBundleID:result error:v33];

  v11 = v33[0];
  if (!v10)
  {
    v20 = v33[0];
    v21 = sub_1A5240B84();

    swift_willThrow();
    v22 = sub_1A3C4A5F8();
    (*(v3 + 16))(v5, v22, v2);
    v23 = v21;
    v24 = sub_1A5246F04();
    v25 = sub_1A524D254();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      *v26 = 138543362;
      v28 = v21;
      v29 = _swift_stdlib_bridgeErrorToNSError();
      *(v26 + 4) = v29;
      *v27 = v29;
      _os_log_impl(&dword_1A3C1C000, v24, v25, "failed to read app private data with error: %{public}@", v26, 0xCu);
      sub_1A3C59040(v27, sub_1A3D3F118);
      MEMORY[0x1A590EEC0](v27, -1, -1);
      MEMORY[0x1A590EEC0](v26, -1, -1);
    }

    else
    {
    }

    (*(v3 + 8))(v5, v2);
    return 0;
  }

  v12 = sub_1A524C3E4();
  v13 = v11;

  v31 = 0xD000000000000011;
  v32 = 0x80000001A53D2250;
  sub_1A524E384();
  if (!*(v12 + 16) || (v14 = sub_1A3D5C0BC(v33), (v15 & 1) == 0))
  {

    sub_1A3D5FAFC(v33);
    return 0;
  }

  sub_1A3C2F0BC(*(v12 + 56) + 32 * v14, v34);

  sub_1A3D5FAFC(v33);

  if (swift_dynamicCast())
  {
    return v31;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1A4313958(uint64_t a1, void *a2, uint64_t a3)
{
  v83 = a3;
  v84 = a1;
  v85 = a2;
  v3 = type metadata accessor for LemonadeBookmark(0);
  v91 = *(v3 - 8);
  v4 = MEMORY[0x1EEE9AC00](v3);
  v87 = v70 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v86 = v70 - v6;
  sub_1A3C9EB18();
  v88 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v89 = v70 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4317294(0, &qword_1EB12A538, type metadata accessor for LemonadeBookmark, MEMORY[0x1E69E6720]);
  v10 = MEMORY[0x1EEE9AC00](v9 - 8);
  v92 = v70 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v90 = v70 - v12;
  v13 = sub_1A5246F24();
  v82 = *(v13 - 8);
  v14 = MEMORY[0x1EEE9AC00](v13);
  v77 = v70 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = v70 - v17;
  v19 = MEMORY[0x1EEE9AC00](v16);
  v20 = MEMORY[0x1EEE9AC00](v19);
  v22 = v70 - v21;
  v23 = MEMORY[0x1EEE9AC00](v20);
  v78 = v70 - v24;
  v25 = MEMORY[0x1EEE9AC00](v23);
  v27 = v70 - v26;
  v28 = MEMORY[0x1EEE9AC00](v25);
  v75 = v70 - v29;
  v30 = MEMORY[0x1EEE9AC00](v28);
  v80 = v70 - v31;
  v32 = MEMORY[0x1EEE9AC00](v30);
  v34 = v70 - v33;
  v35 = MEMORY[0x1A590D320](v32);
  v93 = v3;
  v76 = v18;
  if (!v35)
  {
LABEL_20:
    v67 = sub_1A3C4A5F8();
    v68 = *(v82 + 16);
    v80 = (v82 + 16);
    v81 = v67;
    v79 = v68;
    v68(v22);
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  v70[0] = v27;
  v72 = v22;
  v36 = sub_1A3C4A5F8();
  v37 = *(v82 + 16);
  v79 = v36;
  v81 = v37;
  v37(v34);
  v38 = v85;
  v39 = sub_1A5246F04();
  v40 = sub_1A524D264();
  if (os_log_type_enabled(v39, v40))
  {
    v41 = swift_slowAlloc();
    *v41 = 134217984;
    *(v41 + 4) = v83;

    _os_log_impl(&dword_1A3C1C000, v39, v40, "Current migration check value: %ld", v41, 0xCu);
    MEMORY[0x1A590EEC0](v41, -1, -1);
  }

  else
  {

    v39 = v38;
  }

  v42 = *(v82 + 8);
  v73 = v82 + 8;
  v74 = v42;
  v42(v34, v13);
  v43 = [v38 px_localDefaults];
  v70[1] = "LemonadeBookmarks";
  v44 = sub_1A524C634();
  v45 = [v43 numberForKey_];

  v71 = v38;
  if (!v45)
  {
    v56 = v78;
    v81(v78, v79, v13);
    v57 = v38;
    v58 = sub_1A5246F04();
    v59 = sub_1A524D264();
    if (os_log_type_enabled(v58, v59))
    {
      v60 = swift_slowAlloc();
      *v60 = 134217984;
      *(v60 + 4) = v83;

      _os_log_impl(&dword_1A3C1C000, v58, v59, "Migration check value was not set, set to %ld", v60, 0xCu);
      MEMORY[0x1A590EEC0](v60, -1, -1);
    }

    else
    {

      v58 = v57;
    }

    v51 = v74;
LABEL_19:

    v51(v56, v13);
    v64 = [v71 px_localDefaults];
    v65 = Int.nsNumberValue.getter(v83);
    v66 = sub_1A524C634();
    [v64 setNumber:v65 forKey:v66];

    v22 = v72;
    goto LABEL_20;
  }

  v46 = [v45 integerValue];

  v47 = v80;
  v81(v80, v79, v13);
  v48 = sub_1A5246F04();
  v49 = sub_1A524D264();
  if (os_log_type_enabled(v48, v49))
  {
    v50 = swift_slowAlloc();
    *v50 = 134217984;
    *(v50 + 4) = v46;
    _os_log_impl(&dword_1A3C1C000, v48, v49, "Saved migration check value: %ld", v50, 0xCu);
    MEMORY[0x1A590EEC0](v50, -1, -1);
  }

  v51 = v74;
  v74(v47, v13);
  if (v46 != v83)
  {
    v81(v70[0], v79, v13);
    v58 = sub_1A5246F04();
    v61 = sub_1A524D264();
    if (os_log_type_enabled(v58, v61))
    {
      v62 = swift_slowAlloc();
      *v62 = 134217984;
      *(v62 + 4) = v46;
      _os_log_impl(&dword_1A3C1C000, v58, v61, "Migration check value was behind, updated to %ld", v62, 0xCu);
      v63 = v62;
      v51 = v74;
      MEMORY[0x1A590EEC0](v63, -1, -1);
    }

    v56 = v70[0];
    goto LABEL_19;
  }

  v52 = v75;
  v81(v75, v79, v13);
  v53 = sub_1A5246F04();
  v54 = sub_1A524D264();
  if (os_log_type_enabled(v53, v54))
  {
    v55 = swift_slowAlloc();
    *v55 = 134217984;
    *(v55 + 4) = v83;
    _os_log_impl(&dword_1A3C1C000, v53, v54, "Migration has already been checked with value of %ld", v55, 0xCu);
    MEMORY[0x1A590EEC0](v55, -1, -1);
  }

  v51(v52, v13);
  return 0;
}

void sub_1A43148A4(void *a1)
{
  v67 = a1;
  v1 = sub_1A5244EB4();
  v65 = *(v1 - 8);
  v66 = v1;
  MEMORY[0x1EEE9AC00](v1);
  v64 = &v63 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for LemonadeBookmark.CollectionIdentifier(0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = (&v63 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = type metadata accessor for LemonadeBookmark(0);
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6 - 8);
  v69 = &v63 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v63 - v11;
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = &v63 - v14;
  v16 = MEMORY[0x1EEE9AC00](v13);
  v18 = &v63 - v17;
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v63 - v19;
  IsIPad = PLPhysicalDeviceIsIPad();
  *v5 = PXDisplayCollectionDetailedCountsMake(203);
  v21 = swift_storeEnumTagMultiPayload();
  v22 = sub_1A3FA19AC(v21);
  sub_1A3F9DA60(v22, v23, 0, v5, v20);
  v24 = sub_1A3FA05D8(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v26 = v24[2];
  v25 = v24[3];
  if (v26 >= v25 >> 1)
  {
    v24 = sub_1A3FA05D8(v25 > 1, v26 + 1, 1, v24);
  }

  v24[2] = v26 + 1;
  v27 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v28 = *(v7 + 72);
  sub_1A3C5921C(v20, v24 + v27 + v28 * v26);
  *v5 = PXDisplayCollectionDetailedCountsMake(1000000218);
  v29 = swift_storeEnumTagMultiPayload();
  v30 = sub_1A3FA19AC(v29);
  sub_1A3F9DA60(v30, v31, 7, v5, v18);
  v33 = v24[2];
  v32 = v24[3];
  if (v33 >= v32 >> 1)
  {
    v24 = sub_1A3FA05D8(v32 > 1, v33 + 1, 1, v24);
  }

  v24[2] = v33 + 1;
  sub_1A3C5921C(v18, v24 + v27 + v33 * v28);
  v34 = swift_storeEnumTagMultiPayload();
  v35 = sub_1A3FA19AC(v34);
  sub_1A3F9DA60(v35, v36, 10, v5, v15);
  v38 = v24[2];
  v37 = v24[3];
  if (v38 >= v37 >> 1)
  {
    v24 = sub_1A3FA05D8(v37 > 1, v38 + 1, 1, v24);
  }

  v24[2] = v38 + 1;
  sub_1A3C5921C(v15, v24 + v27 + v38 * v28);
  *v5 = PXDisplayCollectionDetailedCountsMake(202);
  v39 = swift_storeEnumTagMultiPayload();
  v40 = sub_1A3FA19AC(v39);
  sub_1A3F9DA60(v40, v41, 6, v5, v12);
  v43 = v24[2];
  v42 = v24[3];
  if (v43 >= v42 >> 1)
  {
    v24 = sub_1A3FA05D8(v42 > 1, v43 + 1, 1, v24);
  }

  v24[2] = v43 + 1;
  sub_1A3C5921C(v12, v24 + v27 + v43 * v28);
  *v5 = PXDisplayCollectionDetailedCountsMake(211);
  v44 = swift_storeEnumTagMultiPayload();
  v45 = sub_1A3FA19AC(v44);
  v46 = v69;
  sub_1A3F9DA60(v45, v47, 6, v5, v69);
  v49 = v24[2];
  v48 = v24[3];
  if (v49 >= v48 >> 1)
  {
    v24 = sub_1A3FA05D8(v48 > 1, v49 + 1, 1, v24);
  }

  v50 = swift_allocObject();
  v24[2] = v49 + 1;
  sub_1A3C5921C(v46, v24 + v27 + v49 * v28);
  *(v50 + 16) = v24;
  if (IsIPad)
  {
    v51 = v67;
    sub_1A43166E4(210, v50, v67);
    sub_1A43166E4(201, v50, v51);
    sub_1A43166E4(208, v50, v51);
    v52 = *MEMORY[0x1E69C1420];
    v53 = sub_1A5245154();
    v54 = v64;
    (*(*(v53 - 8) + 104))(v64, v52, v53);
    v56 = v65;
    v55 = v66;
    (*(v65 + 104))(v54, *MEMORY[0x1E69C1270], v66);
    sub_1A431523C(v54, v50);
    (*(v56 + 8))(v54, v55);
    v57 = sub_1A524C674();
    sub_1A43169E0(v57, v58, v50, v51);

    v59 = sub_1A524C674();
    sub_1A43169E0(v59, v60, v50, v51);

    v61 = sub_1A524C674();
    sub_1A43169E0(v61, v62, v50, v51);
  }

  swift_beginAccess();
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A4314EB4(uint64_t a1, void *a2)
{
  v4 = sub_1A5246F24();
  MEMORY[0x1EEE9AC00](v4);
  sub_1A5240984();
  swift_allocObject();
  sub_1A5240974();
  sub_1A5240954();
  sub_1A3C583E8(a1, a2, sub_1A43159A4);
  sub_1A4316C2C();
  v5 = sub_1A5240964();
  v7 = v6;

  v8 = [a2 px_localDefaults];
  v9 = sub_1A5240E84();
  v10 = sub_1A524C634();
  [v8 setData:v9 forKey:v10];

  sub_1A3C59280(v5, v7);
}

uint64_t sub_1A43151BC(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1A43151DC, 0, 0);
}

uint64_t sub_1A43151DC()
{
  v1 = sub_1A4312F5C(*(v0 + 16));
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1A431523C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LemonadeBookmark.CollectionIdentifier(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v20[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = type metadata accessor for LemonadeBookmark(0);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v20[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  result = swift_beginAccess();
  if (*(*(a2 + 16) + 16) <= 8uLL)
  {
    v12 = sub_1A5244EB4();
    (*(*(v12 - 8) + 16))(v6, a1, v12);
    v13 = swift_storeEnumTagMultiPayload();
    v14 = sub_1A3FA19AC(v13);
    sub_1A3F9DA60(v14, v15, 7, v6, v10);
    swift_beginAccess();
    v16 = *(a2 + 16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(a2 + 16) = v16;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v16 = sub_1A3FA05D8(0, v16[2] + 1, 1, v16);
      *(a2 + 16) = v16;
    }

    v19 = v16[2];
    v18 = v16[3];
    if (v19 >= v18 >> 1)
    {
      v16 = sub_1A3FA05D8(v18 > 1, v19 + 1, 1, v16);
    }

    v16[2] = v19 + 1;
    sub_1A3C5921C(v10, v16 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v19);
    *(a2 + 16) = v16;
    return swift_endAccess();
  }

  return result;
}

uint64_t sub_1A4315464(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1A4315484, 0, 0);
}

uint64_t sub_1A43154FC(uint64_t result)
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
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  v3 = sub_1A3FA05D8(isUniquelyReferenced_nonNull_native, v12, 1, v3);
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
  v8 = (v3[3] >> 1) - v3[2];
  result = type metadata accessor for LemonadeBookmark(0);
  if (v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = v3[2];
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    v3[2] = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_1A4315628@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6E6F6973726576 && a2 == 0xE700000000000000;
  if (v6 || (sub_1A524EAB4() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6B72616D6B6F6F62 && a2 == 0xE900000000000073)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1A524EAB4();

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

uint64_t sub_1A431570C(uint64_t a1)
{
  v2 = sub_1A3C3B11C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A4315748(uint64_t a1)
{
  v2 = sub_1A3C3B11C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A4315784(void *a1, uint64_t a2, uint64_t a3)
{
  sub_1A3C4ACC8(0, &qword_1EB1262C0, MEMORY[0x1E69E6F58]);
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v12 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A3C3B11C();
  sub_1A524ED34();
  v14 = 0;
  sub_1A524E9C4();
  if (!v3)
  {
    v12[1] = a3;
    v13 = 1;
    sub_1A4317294(0, &qword_1EB126F50, type metadata accessor for LemonadeBookmark, MEMORY[0x1E69E62F8]);
    sub_1A3C3B5F4(&qword_1EB126F48, &qword_1EB12A548);
    sub_1A524E9D4();
  }

  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_1A43159A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v31 = a2;
  v33 = a3;
  v4 = type metadata accessor for LemonadeBookmark(0);
  MEMORY[0x1EEE9AC00](v4);
  v29 = v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = v27 - v7;
  v9 = sub_1A5246F24();
  v30 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  MEMORY[0x1EEE9AC00](v10);
  v12 = v27 - v11;
  v13 = type metadata accessor for LemonadeBookmark.CollectionIdentifier(0);
  MEMORY[0x1EEE9AC00](v13);
  MEMORY[0x1EEE9AC00](v14);
  v16 = (v27 - v15);
  MEMORY[0x1EEE9AC00](v17);
  v19 = v27 - v18;
  sub_1A3C58DE8(a1 + *(v4 + 24), v27 - v18, type metadata accessor for LemonadeBookmark.CollectionIdentifier);
  v32 = v19;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v21 = v33;
  if (!EnumCaseMultiPayload)
  {
    v27[0] = v13;
    v27[1] = v8;
    v27[2] = v12;
    v27[3] = v9;
    sub_1A3C58DE8(v32, v16, type metadata accessor for LemonadeBookmark.CollectionIdentifier);
    v23 = *v16;
    v24 = v16[1];
    v28 = a1;
    LOBYTE(v34) = *(a1 + 16);
    v39 = 0;
    sub_1A3C3BE04();
    sub_1A524C9C4();
    sub_1A524C9C4();
    if (v37 == v35 && v38 == v36)
    {
    }

    else
    {
      v25 = sub_1A524EAB4();

      if ((v25 & 1) == 0)
      {

        v21 = v33;
        a1 = v28;
        goto LABEL_2;
      }
    }

    sub_1A3C4D548(0, &qword_1EB12B260);
    v26 = swift_allocObject();
    *(v26 + 16) = xmmword_1A52F8E10;
    *(v26 + 32) = v23;
    *(v26 + 40) = v24;
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

LABEL_2:
  sub_1A3C58DE8(a1, v21, type metadata accessor for LemonadeBookmark);
  return sub_1A3C59040(v32, type metadata accessor for LemonadeBookmark.CollectionIdentifier);
}

uint64_t sub_1A431634C(uint64_t a1)
{
  v2 = sub_1A524E234();
  if (v2 == 1 << *(a1 + 32))
  {
    return 0;
  }

  else
  {
    return sub_1A4316598(&v4, v2, *(a1 + 36), 0, a1);
  }
}

void *sub_1A43163D4(uint64_t a1)
{
  v2 = sub_1A524E234();
  if (v2 == 1 << *(a1 + 32))
  {
    return 0;
  }

  else
  {
    return sub_1A4316640(&v4, v2, *(a1 + 36), 0, a1);
  }
}

uint64_t sub_1A4316464()
{
  v2 = v0[1];
  *(v1 + 16) = *v0;
  *(v1 + 24) = v2;
  return MEMORY[0x1EEE6DFA0](sub_1A43151DC, 0, 0);
}

uint64_t sub_1A4316490()
{
  v2 = v0[1];
  *(v1 + 16) = *v0;
  *(v1 + 24) = v2;
  return MEMORY[0x1EEE6DFA0](sub_1A4315484, 0, 0);
}

uint64_t sub_1A43164F0()
{
  v2 = v0[1];
  *(v1 + 16) = *v0;
  *(v1 + 24) = v2;
  return MEMORY[0x1EEE6DFA0](sub_1A4312EFC, 0, 0);
}

uint64_t sub_1A4316534(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  sub_1A3C52C70(0, &qword_1EB12B160);
  return sub_1A524DBF4() & (v2 == v3);
}

uint64_t sub_1A4316598(uint64_t result, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  if (a2 < 0 || 1 << *(a5 + 32) <= a2)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a5 + 8 * (a2 >> 6) + 64) >> a2) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a5 + 36) == a3)
  {
    v5 = *(a5 + 56) + 16 * a2;
    v6 = *(v5 + 8);
    *result = *v5;
    *(result + 8) = v6;
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

LABEL_8:
  __break(1u);
  return result;
}

void *sub_1A4316640(void *result, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  if (a2 < 0 || 1 << *(a5 + 32) <= a2)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a5 + 8 * (a2 >> 6) + 64) >> a2) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a5 + 36) == a3)
  {
    v5 = *(*(a5 + 48) + 8 * a2);
    v6 = *(a5 + 56) + 24 * a2;
    v7 = *v6;
    v8 = *(v6 + 8);
    v9 = *(v6 + 16);
    *result = *v6;
    result[1] = v8;
    *(result + 16) = v9;
    v10 = v5;
    sub_1A4317484(v7, v8, v9);
    return v10;
  }

LABEL_8:
  __break(1u);
  return result;
}

void sub_1A43166E4(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = type metadata accessor for LemonadeBookmark.CollectionIdentifier(0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = (&v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = type metadata accessor for LemonadeBookmark(0);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  if (*(*(a2 + 16) + 16) <= 8uLL)
  {
    v28 = v10;
    v13 = [a3 librarySpecificFetchOptions];
    v14 = [objc_opt_self() fetchAssetCollectionsWithType:2 subtype:a1 options:v13];
    v15 = [v14 firstObject];

    if (v15)
    {
      v16 = objc_opt_self();
      v17 = [a3 librarySpecificFetchOptions];
      v18 = [v16 fetchKeyAssetsInAssetCollection:v15 options:v17];

      if (v18)
      {
        v19 = [v18 count];

        if (v19 >= 1)
        {
          *v8 = PXDisplayCollectionDetailedCountsMake(a1);
          v20 = swift_storeEnumTagMultiPayload();
          v21 = sub_1A3FA19AC(v20);
          sub_1A3F9DA60(v21, v22, 6, v8, v12);
          swift_beginAccess();
          v23 = *(a2 + 16);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *(a2 + 16) = v23;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v23 = sub_1A3FA05D8(0, v23[2] + 1, 1, v23);
            *(a2 + 16) = v23;
          }

          v26 = v23[2];
          v25 = v23[3];
          if (v26 >= v25 >> 1)
          {
            v23 = sub_1A3FA05D8(v25 > 1, v26 + 1, 1, v23);
          }

          v23[2] = v26 + 1;
          sub_1A3C5921C(v12, v23 + ((*(v28 + 80) + 32) & ~*(v28 + 80)) + *(v28 + 72) * v26);
          *(a2 + 16) = v23;
          swift_endAccess();
        }
      }
    }
  }
}

void sub_1A43169E0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = type metadata accessor for LemonadeBookmark.CollectionIdentifier(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v14[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = type metadata accessor for LemonadeBookmark(0) - 8;
  MEMORY[0x1EEE9AC00](v11);
  swift_beginAccess();
  if (*(*(a3 + 16) + 16) <= 8uLL)
  {
    v12 = sub_1A524C634();
    v13 = [a4 px:v12 assetCollectionWithTransientIdentifier:?];

    if (v13)
    {

      *v10 = a1;
      v10[1] = a2;
      swift_storeEnumTagMultiPayload();
      _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
    }
  }
}

unint64_t sub_1A4316C2C()
{
  result = qword_1EB177ED8[0];
  if (!qword_1EB177ED8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB177ED8);
  }

  return result;
}

void sub_1A4316C80(uint64_t a1)
{
  v8 = type metadata accessor for LemonadeBookmark(0);
  v2 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  MEMORY[0x1EEE9AC00](v5);
  v6 = type metadata accessor for LemonadeBookmark.CollectionIdentifier(0);
  MEMORY[0x1EEE9AC00](v6);
  v12 = a1;
  v11 = a1;
  sub_1A4317294(0, &qword_1EB126280, type metadata accessor for LemonadeBookmark, MEMORY[0x1E69E6F90]);
  v9 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v7 = swift_allocObject();
  swift_storeEnumTagMultiPayload();
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

void sub_1A4317294(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1A43172F8(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for LemonadeBookmark(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1A431733C()
{
  result = qword_1EB137ED0;
  if (!qword_1EB137ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB137ED0);
  }

  return result;
}

void sub_1A4317390()
{
  if (!qword_1EB137EE0)
  {
    sub_1A3C52C70(255, &qword_1EB137EE8);
    sub_1A3DBD9A0();
    v0 = sub_1A524ECF4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB137EE0);
    }
  }
}

void sub_1A431741C()
{
  if (!qword_1EB137EF8)
  {
    sub_1A3DBD9A0();
    v0 = sub_1A524ECF4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB137EF8);
    }
  }
}

id sub_1A4317484(void *a1, uint64_t a2, char a3)
{
  if ((a3 & 1) == 0)
  {
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  return a1;
}

uint64_t sub_1A4317494(uint64_t a1)
{
  sub_1A4317294(0, &qword_1EB12A538, type metadata accessor for LemonadeBookmark, MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}