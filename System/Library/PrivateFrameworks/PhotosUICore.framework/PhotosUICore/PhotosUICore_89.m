uint64_t objectdestroy_18Tm_1()
{
  v1 = *(v0 + 16);
  v2 = type metadata accessor for LemonadeCollectionCustomizationView();
  v3 = (*(*(v2 - 1) + 80) + 32) & ~*(*(v2 - 1) + 80);
  v4 = v0 + v3;
  sub_1A4137EE8(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_1A5248284();
    (*(*(v5 - 8) + 8))(v0 + v3, v5);
  }

  else
  {
  }

  sub_1A3D35BAC(*(v4 + v2[9]), *(v4 + v2[9] + 8));
  v6 = v2[10];
  sub_1A478C4E0(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_1A5248714();
    (*(*(v7 - 8) + 8))(v4 + v6, v7);
  }

  else
  {
  }

  v8 = v2[11];
  sub_1A3E71AC8(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_1A5242D14();
    (*(*(v9 - 8) + 8))(v4 + v8, v9);
  }

  else
  {
  }

  v10 = v4 + v2[13];

  v11 = sub_1A524B974();
  (*(*(v1 - 8) + 8))(v10 + *(v11 + 32), v1);

  return swift_deallocObject();
}

uint64_t sub_1A4796DA8()
{
  v0 = sub_1A5248284();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for LemonadeCollectionCustomizationView();
  LemonadeCollectionCustomizationViewModel.didCancel()();
  sub_1A478C578(sub_1A4137EE8, sub_1A3E87388, MEMORY[0x1E697BF90], v3);
  sub_1A5248274();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_1A4796EF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v16[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = type metadata accessor for LemonadeCollectionCustomizationView();
  v10 = sub_1A524B974();
  MEMORY[0x1A5906C60](v10);
  v11 = (*(a3 + 352))(a2, a3);
  (*(v6 + 8))(v8, a2);
  v12 = (a1 + *(v9 + 68));
  v13 = *v12;
  v14 = *(v12 + 1);
  LOBYTE(v12) = v12[16];
  v16[8] = v13;
  v17 = v14;
  v18 = v12;
  v16[7] = v11 & 1;
  sub_1A47A166C(0, &qword_1EB1249A0, MEMORY[0x1E69E6370], MEMORY[0x1E69E6380], MEMORY[0x1E697BDF0]);
  return sub_1A5247C14();
}

uint64_t sub_1A4797094@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, char *a3@<X8>)
{
  v49 = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v40 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v39 = &v39 - v6;
  sub_1A439AF64();
  v44 = AssociatedTypeWitness;
  v7 = sub_1A5248804();
  v46 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v42 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v41 = &v39 - v10;
  v11 = *(a1 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = sub_1A524DF24();
  v48 = *(v43 - 8);
  MEMORY[0x1EEE9AC00](v43);
  v45 = &v39 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v47 = &v39 - v17;
  type metadata accessor for LemonadeCollectionCustomizationView();
  v18 = sub_1A524B974();
  MEMORY[0x1A5906C60]();
  v19 = (*(a2 + 840))(a1, a2);
  v20 = *(v11 + 8);
  v20(v14, a1);
  if (v19)
  {
    MEMORY[0x1A5906C60](v18);
    v21 = v39;
    (*(a2 + 848))(a1, a2);
    v20(v14, a1);
    swift_getKeyPath();
    v52 = 1;
    v22 = v44;
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v24 = v42;
    sub_1A524A964();

    (*(v40 + 8))(v21, v22);
    v25 = sub_1A478EE38(&qword_1EB141B60, sub_1A439AF64);
    v50 = AssociatedConformanceWitness;
    v51 = v25;
    swift_getWitnessTable();
    v26 = v46;
    v27 = *(v46 + 16);
    v28 = v41;
    v27(v41, v24, v7);
    v29 = *(v26 + 8);
    v29(v24, v7);
    v27(v24, v28, v7);
    v29(v28, v7);
    v30 = v45;
    (*(v26 + 32))(v45, v24, v7);
    (*(v26 + 56))(v30, 0, 1, v7);
  }

  else
  {
    v30 = v45;
    (*(v46 + 56))(v45, 1, 1, v7);
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v31 = sub_1A478EE38(&qword_1EB141B60, sub_1A439AF64);
    v56 = AssociatedConformanceWitness;
    v57 = v31;
    swift_getWitnessTable();
  }

  v33 = v47;
  v32 = v48;
  v34 = *(v48 + 16);
  v35 = v43;
  v34(v47, v30, v43);
  v36 = *(v32 + 8);
  v36(v30, v35);
  v37 = sub_1A478EE38(&qword_1EB141B60, sub_1A439AF64);
  v54 = AssociatedConformanceWitness;
  v55 = v37;
  WitnessTable = swift_getWitnessTable();
  swift_getWitnessTable();
  v34(v49, v33, v35);
  return (v36)(v33, v35);
}

uint64_t sub_1A4797738(uint64_t (*a1)(uint64_t, uint64_t, uint64_t))
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(type metadata accessor for LemonadeCollectionCustomizationView() - 8);
  v5 = v1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));

  return a1(v5, v2, v3);
}

uint64_t sub_1A47977D8(uint64_t a1)
{
  v2 = sub_1A5249234();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4137EE8(0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1A5248284();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3E87388(a1, v8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v10 + 32))(v12, v8, v9);
  }

  else
  {
    sub_1A524D254();
    v13 = sub_1A524A014();
    sub_1A5246DF4();

    sub_1A5249224();
    swift_getAtKeyPath();

    (*(v3 + 8))(v5, v2);
  }

  sub_1A5248274();
  return (*(v10 + 8))(v12, v9);
}

uint64_t sub_1A4797A94@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v22 = a2;
  sub_1A5248464();
  v5 = *(a1 + 16);
  v4 = *(a1 + 24);
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  sub_1A47A0B5C();
  v8 = v7;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v10 = sub_1A478EE38(&qword_1EB141EF8, sub_1A47A0B5C);
  swift_getOpaqueTypeMetadata2();
  v26 = OpaqueTypeMetadata2;
  v27 = v8;
  v28 = OpaqueTypeConformance2;
  v29 = v10;
  swift_getOpaqueTypeConformance2();
  v11 = sub_1A5248834();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v21 - v16;
  v23 = v5;
  v24 = v4;
  v25 = v2;
  sub_1A5248824();
  swift_getWitnessTable();
  v18 = *(v12 + 16);
  v18(v17, v14, v11);
  v19 = *(v12 + 8);
  v19(v14, v11);
  v18(v22, v17, v11);
  return (v19)(v17, v11);
}

void sub_1A4797D68(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v35 = a4;
  v7 = sub_1A5249284();
  v33 = *(v7 - 8);
  v34 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v32 = v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v36 = a2;
  v37 = a3;
  v27 = a2;
  v28 = a3;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v30 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v36 = a2;
  v37 = a3;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v23[4] = OpaqueTypeMetadata2;
  v36 = OpaqueTypeMetadata2;
  v37 = OpaqueTypeConformance2;
  v12 = OpaqueTypeConformance2;
  v23[5] = OpaqueTypeConformance2;
  v13 = swift_getOpaqueTypeMetadata2();
  v23[7] = v13;
  v29 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v23[6] = v23 - v14;
  sub_1A47A0B5C();
  v16 = v15;
  v23[3] = v15;
  v36 = OpaqueTypeMetadata2;
  v37 = v12;
  v17 = swift_getOpaqueTypeConformance2();
  v25 = v17;
  v24 = sub_1A478EE38(&qword_1EB141EF8, sub_1A47A0B5C);
  v36 = v13;
  v37 = v16;
  v38 = v17;
  v39 = v24;
  v26 = swift_getOpaqueTypeMetadata2();
  MEMORY[0x1EEE9AC00](v26);
  v23[1] = v23 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x1EEE9AC00](v19);
  v23[2] = v23 - v21;
  v23[0] = a1;
  (*(a1 + 96))(v20);
  v22 = *(a1 + 8);
  v36 = *a1;
  v37 = v22;
  sub_1A3D5F9DC();
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A4798380@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v50 = a4;
  v51 = a2;
  sub_1A478E860(0, &unk_1EB141E90, sub_1A4136C04, sub_1A47A0BE4);
  v49 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v48 = &v41 - v7;
  sub_1A47A0BE4();
  v46 = *(v8 - 8);
  v47 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v45 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A439FD3C();
  v11 = v10;
  v12 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v44 = &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1A52498B4();
  MEMORY[0x1EEE9AC00](v14 - 8);
  sub_1A3F1E8D8();
  v16 = v15;
  v43 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v41 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4136C04();
  MEMORY[0x1EEE9AC00](v19 - 8);
  v21 = &v41 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v41 - v23;
  v53 = *(a1 + 48);
  v54 = *(a1 + 64);
  sub_1A3C48C7C(0, &qword_1EB127320, MEMORY[0x1E69E6370], MEMORY[0x1E6981948]);
  MEMORY[0x1A5906C60](&v52);
  if (v52 == 1)
  {
    v25 = sub_1A5249844();
    v41 = &v41;
    MEMORY[0x1EEE9AC00](v25);
    *(&v41 - 4) = v51;
    *(&v41 - 3) = a3;
    *(&v41 - 2) = a1;
    sub_1A3D6DF58();
    v42 = a1;
    sub_1A478EE38(&qword_1EB121B60, sub_1A3D6DF58);
    sub_1A5247F24();
    v26 = sub_1A478EE38(&qword_1EB124628, sub_1A3F1E8D8);
    v27 = v44;
    MEMORY[0x1A5904CD0](v18, v16, v26);
    (*(v12 + 16))(v21, v27, v11);
    (*(v12 + 56))(v21, 0, 1, v11);
    *&v53 = v16;
    *(&v53 + 1) = v26;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    MEMORY[0x1A5904D00](v21, v11, OpaqueTypeConformance2);
    v29 = v21;
    v30 = v42;
    sub_1A47A0FA8(v29, sub_1A4136C04);
    (*(v12 + 8))(v27, v11);
    (*(v43 + 8))(v18, v16);
  }

  else
  {
    (*(v12 + 56))(v21, 1, 1, v11);
    v31 = sub_1A478EE38(&qword_1EB124628, sub_1A3F1E8D8);
    *&v53 = v16;
    *(&v53 + 1) = v31;
    v32 = swift_getOpaqueTypeConformance2();
    MEMORY[0x1A5904D00](v21, v11, v32);
    sub_1A47A0FA8(v21, sub_1A4136C04);
    v30 = a1;
  }

  v33 = sub_1A5249854();
  MEMORY[0x1EEE9AC00](v33);
  *(&v41 - 4) = v51;
  *(&v41 - 3) = a3;
  *(&v41 - 2) = v30;
  sub_1A478E98C(0, &qword_1EB141EA8, sub_1A47A0C98, sub_1A47A0CE0, MEMORY[0x1E697F960]);
  sub_1A47A0D28();
  v34 = v45;
  sub_1A5247F24();
  v35 = v48;
  v36 = *(v49 + 48);
  sub_1A47A1014(v24, v48, sub_1A4136C04);
  v37 = v46;
  v38 = v35 + v36;
  v39 = v47;
  (*(v46 + 16))(v38, v34, v47);
  sub_1A52495D4();
  (*(v37 + 8))(v34, v39);
  return sub_1A47A0FA8(v24, sub_1A4136C04);
}

uint64_t sub_1A4798A8C(_OWORD *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1A5247B54();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v16[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1A5247B34();
  v9 = swift_allocObject();
  *(v9 + 16) = a2;
  *(v9 + 24) = a3;
  v10 = a1[7];
  *(v9 + 128) = a1[6];
  *(v9 + 144) = v10;
  *(v9 + 160) = a1[8];
  v11 = a1[3];
  *(v9 + 64) = a1[2];
  *(v9 + 80) = v11;
  v12 = a1[5];
  *(v9 + 96) = a1[4];
  *(v9 + 112) = v12;
  v13 = a1[1];
  *(v9 + 32) = *a1;
  *(v9 + 48) = v13;
  v14 = type metadata accessor for LemonadeCollectionCustomizationNavigationView();
  (*(*(v14 - 8) + 16))(v16, a1, v14);
  return MEMORY[0x1A5906A80](v8, sub_1A47A1088, v9);
}

uint64_t sub_1A4798BC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v54 = a3;
  v53 = a2;
  v59 = a4;
  v5 = sub_1A5247B54();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3E7E610();
  v52 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v52 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A47A0CE0(0);
  v58 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v52 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A478E98C(0, &unk_1EB141F00, sub_1A47A0C98, sub_1A47A0CE0, MEMORY[0x1E697F948]);
  v56 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v57 = &v52 - v16;
  sub_1A478C514(0, &qword_1EB1249B0, MEMORY[0x1E697BDB0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v19 = &v52 - v18;
  sub_1A41278A0();
  v21 = v20;
  MEMORY[0x1EEE9AC00](v20);
  v23 = &v52 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A47A0C98(0);
  v55 = v24;
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v52 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + 89))
  {
    v60[0] = sub_1A3C38BD4();
    v60[1] = v27;
    sub_1A5247B44();
    (*(v6 + 56))(v19, 0, 1, v5);
    v28 = swift_allocObject();
    v29 = v54;
    *(v28 + 16) = v53;
    *(v28 + 24) = v29;
    v30 = *(a1 + 112);
    *(v28 + 128) = *(a1 + 96);
    *(v28 + 144) = v30;
    *(v28 + 160) = *(a1 + 128);
    v31 = *(a1 + 48);
    *(v28 + 64) = *(a1 + 32);
    *(v28 + 80) = v31;
    v32 = *(a1 + 80);
    *(v28 + 96) = *(a1 + 64);
    *(v28 + 112) = v32;
    v33 = *(a1 + 16);
    *(v28 + 32) = *a1;
    *(v28 + 48) = v33;
    v34 = type metadata accessor for LemonadeCollectionCustomizationNavigationView();
    (*(*(v34 - 8) + 16))(&v61, a1, v34);
    sub_1A3D5F9DC();
    sub_1A524B734();
    v61 = *(a1 + 72);
    v62 = *(a1 + 88);
    sub_1A3C48C7C(0, &qword_1EB127320, MEMORY[0x1E69E6370], MEMORY[0x1E6981948]);
    MEMORY[0x1A5906C60](v60);
    v35 = v60[0];
    KeyPath = swift_getKeyPath();
    v37 = swift_allocObject();
    *(v37 + 16) = (v35 & 1) == 0;
    v38 = &v23[*(v21 + 36)];
    *v38 = KeyPath;
    v38[1] = sub_1A4312ED8;
    v38[2] = v37;
    sub_1A479ABF0(&qword_1EB141EE0, sub_1A41278A0, sub_1A3D6E520, sub_1A3E72758);
    sub_1A524AA94();
    sub_1A479AE68(v23, sub_1A41278A0);
    sub_1A47A23D4(v26, v57, sub_1A47A0C98);
    swift_storeEnumTagMultiPayload();
    sub_1A47A0DEC();
    sub_1A47A0EE0();
    sub_1A5249744();
    v39 = sub_1A47A0C98;
    v40 = v26;
  }

  else
  {
    sub_1A5247B44();
    v41 = swift_allocObject();
    v42 = v54;
    *(v41 + 16) = v53;
    *(v41 + 24) = v42;
    v43 = *(a1 + 112);
    *(v41 + 128) = *(a1 + 96);
    *(v41 + 144) = v43;
    *(v41 + 160) = *(a1 + 128);
    v44 = *(a1 + 48);
    *(v41 + 64) = *(a1 + 32);
    *(v41 + 80) = v44;
    v45 = *(a1 + 80);
    *(v41 + 96) = *(a1 + 64);
    *(v41 + 112) = v45;
    v46 = *(a1 + 16);
    *(v41 + 32) = *a1;
    *(v41 + 48) = v46;
    v47 = type metadata accessor for LemonadeCollectionCustomizationNavigationView();
    (*(*(v47 - 8) + 16))(&v61, a1, v47);
    MEMORY[0x1A5906A80](v8, sub_1A47A10B0, v41);
    v61 = *(a1 + 72);
    v62 = *(a1 + 88);
    sub_1A3C48C7C(0, &qword_1EB127320, MEMORY[0x1E69E6370], MEMORY[0x1E6981948]);
    MEMORY[0x1A5906C60](v60);
    LOBYTE(v41) = v60[0];
    v48 = swift_getKeyPath();
    v49 = swift_allocObject();
    *(v49 + 16) = (v41 & 1) == 0;
    v50 = &v11[*(v52 + 36)];
    *v50 = v48;
    v50[1] = sub_1A3E07024;
    v50[2] = v49;
    sub_1A3E7E6E4();
    sub_1A524AA94();
    sub_1A479AE68(v11, sub_1A3E7E610);
    sub_1A47A23D4(v14, v57, sub_1A47A0CE0);
    swift_storeEnumTagMultiPayload();
    sub_1A47A0DEC();
    sub_1A47A0EE0();
    sub_1A5249744();
    v39 = sub_1A47A0CE0;
    v40 = v14;
  }

  return sub_1A479AE68(v40, v39);
}

uint64_t sub_1A4799448()
{
  result = sub_1A524B374();
  qword_1EB1D2AE8 = result;
  return result;
}

uint64_t sub_1A4799468()
{
  result = sub_1A524B324();
  qword_1EB1D2AF8 = result;
  return result;
}

void sub_1A4799488(uint64_t a1@<X8>)
{
  v3 = sub_1A524B554();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1A5243454();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1A524BC74();
  v34 = v12;
  v35 = v11;
  v13 = sub_1A524B414();
  KeyPath = swift_getKeyPath();
  v15 = *v1;
  (*(v8 + 104))(v10, *MEMORY[0x1E69C24B0], v7);
  v16 = v15;
  sub_1A524B534();
  (*(v4 + 104))(v6, *MEMORY[0x1E6981630], v3);
  v17 = sub_1A524B5C4();

  (*(v4 + 8))(v6, v3);
  v18 = sub_1A524BC74();
  v20 = v19;
  v36 = 1;
  LOBYTE(v10) = sub_1A524A064();
  sub_1A478E98C(0, &qword_1EB141F10, sub_1A47A1160, sub_1A3E42C88, MEMORY[0x1E697E830]);
  v22 = (a1 + *(v21 + 36));
  v23 = *(sub_1A5248A14() + 20);
  v24 = *MEMORY[0x1E697F468];
  v25 = sub_1A52494A4();
  (*(*(v25 - 8) + 104))(&v22[v23], v24, v25);
  __asm { FMOV            V0.2D, #18.0 }

  *v22 = _Q0;
  sub_1A3E42C88();
  *&v22[*(v31 + 36)] = 256;
  v32 = v34;
  *a1 = v35;
  *(a1 + 8) = v32;
  *(a1 + 16) = KeyPath;
  *(a1 + 24) = v13;
  *(a1 + 32) = v17;
  *(a1 + 40) = 0;
  *(a1 + 48) = 257;
  *(a1 + 56) = v18;
  *(a1 + 64) = v20;
  *(a1 + 72) = 0;
  *(a1 + 74) = v10;
}

uint64_t LemonadeCollectionCustomizationTitleStyle.hashValue.getter()
{
  v1 = *v0;
  sub_1A524EC94();
  MEMORY[0x1A590A010](v1);
  return sub_1A524ECE4();
}

void sub_1A4799814(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {

    sub_1A3D607F0(a3);
  }
}

uint64_t sub_1A4799870(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2)
  {
    v3 = a3;
  }

  return result;
}

uint64_t sub_1A47998BC@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1A5249234();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3F31578(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for LemonadeCollectionCustomizationTitleField(0);
  sub_1A47A23D4(v1 + *(v10 + 44), v9, sub_1A3F31578);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_1A5247E04();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_1A524D254();
    v13 = sub_1A524A014();
    sub_1A5246DF4();

    sub_1A5249224();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t LemonadeCollectionCustomizationTitleField.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for LemonadeCollectionCustomizationAction(0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = (&v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1A478E98C(0, &qword_1EB141B68, sub_1A4799F2C, type metadata accessor for LemonadeCollectionCustomizationAction, MEMORY[0x1E697F948]);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v29 - v7;
  sub_1A4799F2C();
  v10 = v9;
  v11 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v14 = &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*v1)
  {
    v16 = *(v1 + 56);
    v15 = *(v1 + 64);
    v17 = v3;
    v36 = a1;
    v18 = *(v1 + 72);
    v19 = *(v1 + 80);
    v20 = *(v1 + 88);
    v31 = *(v1 + 96);
    v21 = v31;
    v32 = v20;
    v22 = *(v1 + 112);
    v30 = *(v1 + 104);
    v23 = v30;
    v25 = *(v1 + 128);
    v34 = *(v1 + 120);
    v24 = v34;
    v35 = v22;
    v33 = v25;
    *v5 = v16;
    v5[1] = v15;
    v5[2] = v18;
    v5[3] = v19;
    v5[4] = v20;
    v5[5] = v21;
    v5[6] = v23;
    v5[7] = v22;
    v5[8] = v24;
    v5[9] = v25;
    v26 = *(v17 + 28);
    *(v5 + v26) = swift_getKeyPath();
    sub_1A3F31578(0);
    swift_storeEnumTagMultiPayload();
    v27 = *(v17 + 32);
    *(v5 + v27) = swift_getKeyPath();
    sub_1A3E71AC8(0);
    swift_storeEnumTagMultiPayload();
    sub_1A47A23D4(v5, v8, type metadata accessor for LemonadeCollectionCustomizationAction);
    swift_storeEnumTagMultiPayload();

    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  MEMORY[0x1EEE9AC00](v12);
  sub_1A478E98C(0, &qword_1EB141B78, sub_1A4799FD4, sub_1A479A354, MEMORY[0x1E697E830]);
  sub_1A479A8D0();
  sub_1A524BA44();
  (*(v11 + 16))(v8, v14, v10);
  swift_storeEnumTagMultiPayload();
  sub_1A479A84C();
  sub_1A478EE38(&qword_1EB141C78, type metadata accessor for LemonadeCollectionCustomizationAction);
  sub_1A5249744();
  return (*(v11 + 8))(v14, v10);
}

void sub_1A4799F2C()
{
  if (!qword_1EB141B70)
  {
    sub_1A478E98C(255, &qword_1EB141B78, sub_1A4799FD4, sub_1A479A354, MEMORY[0x1E697E830]);
    v0 = sub_1A524BA74();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB141B70);
    }
  }
}

void sub_1A479A01C()
{
  if (!qword_1EB141B88)
  {
    sub_1A478E98C(255, &qword_1EB141B90, sub_1A479A0EC, sub_1A3D6D248, MEMORY[0x1E697E830]);
    sub_1A3C48C7C(255, &qword_1EB1276F0, MEMORY[0x1E69E6370], MEMORY[0x1E6980B20]);
    v0 = sub_1A5248804();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB141B88);
    }
  }
}

void sub_1A479A0EC()
{
  if (!qword_1EB141B98)
  {
    sub_1A478E98C(255, &qword_1EB141BA0, sub_1A479A1BC, sub_1A3E42C88, MEMORY[0x1E697E830]);
    sub_1A3C48C7C(255, &unk_1EB127840, MEMORY[0x1E697E1E0], MEMORY[0x1E6980A08]);
    v0 = sub_1A5248804();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB141B98);
    }
  }
}

void sub_1A479A1BC()
{
  if (!qword_1EB141BA8)
  {
    sub_1A479A250(255);
    sub_1A47A166C(255, &qword_1EB127B10, MEMORY[0x1E69815C0], MEMORY[0x1E6981568], MEMORY[0x1E6980460]);
    v0 = sub_1A5248804();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB141BA8);
    }
  }
}

void sub_1A479A2C8()
{
  if (!qword_1EB141BC0)
  {
    sub_1A47A166C(255, &unk_1EB143960, MEMORY[0x1E6981148], MEMORY[0x1E6981138], MEMORY[0x1E697D7D0]);
    v0 = sub_1A5248804();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB141BC0);
    }
  }
}

void sub_1A479A354()
{
  if (!qword_1EB141BC8)
  {
    sub_1A479A3FC(255);
    sub_1A478FB28(&qword_1EB141C00, sub_1A479A3FC, sub_1A479A76C);
    v0 = sub_1A5248AE4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB141BC8);
    }
  }
}

void sub_1A479A478()
{
  if (!qword_1EB141BE0)
  {
    sub_1A478EB3C(255, &qword_1EB141BE8, sub_1A479A514, MEMORY[0x1E697E5E0], MEMORY[0x1E697E830]);
    sub_1A479A640();
    v0 = sub_1A524B764();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB141BE0);
    }
  }
}

void sub_1A479A514()
{
  if (!qword_1EB141BF0)
  {
    sub_1A478E98C(255, &qword_1EB1236A0, sub_1A429B9D8, sub_1A3EC18C4, MEMORY[0x1E697E830]);
    sub_1A43D30E0();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB141BF0);
    }
  }
}

void sub_1A479A5DC(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

unint64_t sub_1A479A640()
{
  result = qword_1EB141BF8;
  if (!qword_1EB141BF8)
  {
    sub_1A478EB3C(255, &qword_1EB141BE8, sub_1A479A514, MEMORY[0x1E697E5E0], MEMORY[0x1E697E830]);
    sub_1A478E98C(255, &qword_1EB1236A0, sub_1A429B9D8, sub_1A3EC18C4, MEMORY[0x1E697E830]);
    sub_1A43D30E0();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB141BF8);
  }

  return result;
}

unint64_t sub_1A479A76C()
{
  result = qword_1EB141C08;
  if (!qword_1EB141C08)
  {
    sub_1A479A430(255);
    sub_1A478EE38(&qword_1EB141C10, sub_1A479A478);
    sub_1A478EE38(&qword_1EB127710, MEMORY[0x1E697CBE8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB141C08);
  }

  return result;
}

unint64_t sub_1A479A84C()
{
  result = qword_1EB141C18;
  if (!qword_1EB141C18)
  {
    sub_1A4799F2C();
    sub_1A479A8D0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB141C18);
  }

  return result;
}

unint64_t sub_1A479A8D0()
{
  result = qword_1EB141C20;
  if (!qword_1EB141C20)
  {
    sub_1A478E98C(255, &qword_1EB141B78, sub_1A4799FD4, sub_1A479A354, MEMORY[0x1E697E830]);
    sub_1A479A9C4();
    sub_1A478EE38(&qword_1EB141C70, sub_1A479A354);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB141C20);
  }

  return result;
}

unint64_t sub_1A479A9C4()
{
  result = qword_1EB141C28;
  if (!qword_1EB141C28)
  {
    sub_1A4799FD4(255);
    sub_1A479ABF0(&qword_1EB141C30, sub_1A479A01C, sub_1A479AAB8, sub_1A3E72758);
    sub_1A478EE38(&qword_1EB127710, MEMORY[0x1E697CBE8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB141C28);
  }

  return result;
}

unint64_t sub_1A479AAB8()
{
  result = qword_1EB141C38;
  if (!qword_1EB141C38)
  {
    sub_1A478E98C(255, &qword_1EB141B90, sub_1A479A0EC, sub_1A3D6D248, MEMORY[0x1E697E830]);
    sub_1A479ABF0(&qword_1EB141C40, sub_1A479A0EC, sub_1A479AC7C, sub_1A3FF8FF4);
    sub_1A478EE38(&qword_1EB127800, sub_1A3D6D248);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB141C38);
  }

  return result;
}

uint64_t sub_1A479ABF0(unint64_t *a1, void (*a2)(uint64_t), void (*a3)(void), void (*a4)(void))
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

unint64_t sub_1A479AC7C()
{
  result = qword_1EB141C48;
  if (!qword_1EB141C48)
  {
    sub_1A478E98C(255, &qword_1EB141BA0, sub_1A479A1BC, sub_1A3E42C88, MEMORY[0x1E697E830]);
    sub_1A479ABF0(&qword_1EB141C50, sub_1A479A1BC, sub_1A479ADB4, sub_1A3D6D4B0);
    sub_1A478EE38(&qword_1EB128A00, sub_1A3E42C88);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB141C48);
  }

  return result;
}

uint64_t sub_1A479AE68(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1A479AEC8(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v33 = a2;
  v22 = sub_1A5247E04();
  MEMORY[0x1EEE9AC00](v22);
  v21[2] = v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v21[0] = v21 - v5;
  sub_1A479A250(0);
  MEMORY[0x1EEE9AC00](v6);
  sub_1A479A1BC();
  v23 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v26 = v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1E697E830];
  sub_1A478E98C(0, &qword_1EB141BA0, sub_1A479A1BC, sub_1A3E42C88, MEMORY[0x1E697E830]);
  v21[1] = v10;
  MEMORY[0x1EEE9AC00](v10);
  v25 = v21 - v11;
  sub_1A479A0EC();
  v24 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v28 = v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A478E98C(0, &qword_1EB141B90, sub_1A479A0EC, sub_1A3D6D248, v9);
  v27 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v29 = v21 - v15;
  sub_1A479A01C();
  v31 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v30 = v21 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4799FD4(0);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v32 = v21 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *(a1 + 16);
  v34 = *(a1 + 8);
  v35 = v20;
  sub_1A3D5F9DC();
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A479B83C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for LemonadeCollectionCustomizationTitleField(0);
  v30 = *(v4 - 8);
  v5 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  sub_1A479A478();
  v7 = v6;
  v31 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A479A430(0);
  v11 = v10;
  v12 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v15);
  v18 = &v28 - v17;
  if (*(a1 + 136))
  {
    v19 = 1;
  }

  else
  {
    v29 = v7;
    v20 = *(a1 + 40);
    v21 = *(a1 + 48);
    v33 = *(a1 + 24);
    v34 = v20;
    v35 = v21;
    sub_1A3C48C7C(0, &qword_1EB13A730, MEMORY[0x1E69E6158], MEMORY[0x1E6981948]);
    MEMORY[0x1A5906C60](v32);
    if (v32[0] || v32[1] != 0xE000000000000000)
    {
      v28 = a2;
      v22 = sub_1A524EAB4();

      if (v22)
      {
        v19 = 1;
        a2 = v28;
      }

      else
      {
        sub_1A47A23D4(a1, &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for LemonadeCollectionCustomizationTitleField);
        v23 = (*(v30 + 80) + 16) & ~*(v30 + 80);
        v24 = swift_allocObject();
        sub_1A47A1AD8(&v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v24 + v23, type metadata accessor for LemonadeCollectionCustomizationTitleField);
        sub_1A478EB3C(0, &qword_1EB141BE8, sub_1A479A514, MEMORY[0x1E697E5E0], MEMORY[0x1E697E830]);
        sub_1A479A640();
        sub_1A524B704();
        sub_1A478EE38(&qword_1EB141C10, sub_1A479A478);
        v25 = v29;
        sub_1A524AA94();
        (*(v31 + 8))(v9, v25);
        *&v33 = sub_1A3C38BD4();
        *(&v33 + 1) = v26;
        sub_1A3D5F9DC();
        sub_1A52487B4();

        sub_1A47A0FA8(v14, sub_1A479A430);
        a2 = v28;
        sub_1A479DC1C(v18, v28, sub_1A479A430);
        v19 = 0;
      }
    }

    else
    {

      v19 = 1;
    }
  }

  return (*(v12 + 56))(a2, v19, 1, v11, v16);
}

void sub_1A479BCE0(uint64_t a1@<X8>)
{
  sub_1A524B544();
  sub_1A524B324();
  swift_getKeyPath();
  sub_1A524A0F4();
  swift_getKeyPath();
  sub_1A478E98C(0, &qword_1EB1236A0, sub_1A429B9D8, sub_1A3EC18C4, MEMORY[0x1E697E830]);
  sub_1A43D30E0();
  sub_1A524AF64();

  v2 = sub_1A524A0B4();
  sub_1A5247BC4();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  sub_1A478EB3C(0, &qword_1EB141BE8, sub_1A479A514, MEMORY[0x1E697E5E0], MEMORY[0x1E697E830]);
  v12 = a1 + *(v11 + 36);
  *v12 = v2;
  *(v12 + 8) = v4;
  *(v12 + 16) = v6;
  *(v12 + 24) = v8;
  *(v12 + 32) = v10;
  *(v12 + 40) = 0;
}

uint64_t sub_1A479BE9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t *a9@<X8>, uint64_t a10, uint64_t a11)
{
  v31 = a7;
  v32 = a8;
  v29 = a5;
  v30 = a6;
  v27 = a4;
  v28 = a11;
  v15 = sub_1A52411C4();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v27 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A52411B4();
  v19 = sub_1A5241164();
  v21 = v20;
  result = (*(v16 + 8))(v18, v15);
  *a9 = v19;
  a9[1] = v21;
  a9[2] = a1;
  a9[3] = a2;
  v23 = v27;
  a9[4] = a3;
  a9[5] = v23;
  v24 = v30;
  a9[6] = v29;
  a9[7] = v24;
  v25 = v32;
  a9[8] = v31;
  a9[9] = v25;
  v26 = v28;
  a9[10] = a10;
  a9[11] = v26;
  return result;
}

uint64_t sub_1A479BFCC@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1A5249234();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3F31578(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for LemonadeCollectionCustomizationAction(0);
  sub_1A47A23D4(v1 + *(v10 + 28), v9, sub_1A3F31578);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_1A5247E04();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_1A524D254();
    v13 = sub_1A524A014();
    sub_1A5246DF4();

    sub_1A5249224();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_1A479C1C8@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1A5249234();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3E71AC8(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for LemonadeCollectionCustomizationAction(0);
  sub_1A3D61D44(v1 + *(v10 + 32), v9);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_1A5242D14();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_1A524D254();
    v13 = sub_1A524A014();
    sub_1A5246DF4();

    sub_1A5249224();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t LemonadeCollectionCustomizationAction.body.getter@<X0>(void *a1@<X8>)
{
  v43 = a1;
  v2 = sub_1A5242D14();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v40 - v7;
  sub_1A479C76C();
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A479D8EC(0);
  v13 = v12 - 8;
  MEMORY[0x1EEE9AC00](v12);
  v42 = &v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v40 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v41 = &v40 - v19;
  sub_1A479C1C8(v8);
  (*(v3 + 104))(v5, *MEMORY[0x1E69C2210], v2);
  v20 = sub_1A5242D04();
  v21 = *(v3 + 8);
  v21(v5, v2);
  v21(v8, v2);
  if (v20)
  {
    v22 = 0x4024000000000000;
  }

  else
  {
    v22 = 0;
  }

  *v11 = sub_1A5249574();
  *(v11 + 1) = v22;
  v11[16] = 0;
  sub_1A47A22B8(0, &qword_1EB141E30, sub_1A479C814);
  sub_1A479D934(v1, &v11[*(v23 + 44)]);
  v24 = &v17[*(v13 + 44)];
  v25 = *(sub_1A5248A14() + 20);
  v26 = *MEMORY[0x1E697F468];
  v27 = sub_1A52494A4();
  (*(*(v27 - 8) + 104))(&v24[v25], v26, v27);
  __asm { FMOV            V0.2D, #26.0 }

  *v24 = _Q0;
  sub_1A3E42C88();
  *&v24[*(v33 + 36)] = 256;
  sub_1A479DC1C(v11, v17, sub_1A479C76C);
  v34 = v41;
  sub_1A479DC1C(v17, v41, sub_1A479D8EC);
  v35 = v42;
  sub_1A47A1014(v34, v42, sub_1A479D8EC);
  v36 = v43;
  *v43 = 0x4030000000000000;
  *(v36 + 8) = 0;
  v37 = v36;
  sub_1A479DC84(0);
  sub_1A47A1014(v35, v37 + *(v38 + 48), sub_1A479D8EC);
  sub_1A47A0FA8(v34, sub_1A479D8EC);
  return sub_1A47A0FA8(v35, sub_1A479D8EC);
}

void sub_1A479C76C()
{
  if (!qword_1EB141C80)
  {
    sub_1A479C814();
    sub_1A478FB28(&qword_1EB141E18, sub_1A479C814, sub_1A479D8B8);
    v0 = sub_1A524B894();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB141C80);
    }
  }
}

void sub_1A479C814()
{
  if (!qword_1EB141C88)
  {
    sub_1A3C48C7C(255, &qword_1EB141C90, &type metadata for LemonadeCollectionCustomizationActionItem, MEMORY[0x1E69E62F8]);
    sub_1A479C8D0(255);
    sub_1A479D83C();
    v0 = sub_1A524B9D4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB141C88);
    }
  }
}

void sub_1A479C90C()
{
  if (!qword_1EB141CA8)
  {
    sub_1A479C9A0(255);
    sub_1A478EE38(&unk_1EB141E00, sub_1A479C9A0);
    v0 = sub_1A524B894();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB141CA8);
    }
  }
}

void sub_1A479C9DC(uint64_t a1, unint64_t *a2, unint64_t *a3, void (*a4)(uint64_t), void (*a5)(uint64_t))
{
  if (!*a2)
  {
    sub_1A478E860(255, a3, a4, a5);
    v6 = sub_1A524BE24();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_1A479CA6C()
{
  if (!qword_1EB141CC8)
  {
    sub_1A479CB00();
    sub_1A47A166C(255, &qword_1EB127B10, MEMORY[0x1E69815C0], MEMORY[0x1E6981568], MEMORY[0x1E6980460]);
    v0 = sub_1A5248804();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB141CC8);
    }
  }
}

void sub_1A479CB00()
{
  if (!qword_1EB141CD0)
  {
    sub_1A479CB94(255);
    sub_1A478EE38(&qword_1EB141DF8, sub_1A479CB94);
    v0 = sub_1A524B784();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB141CD0);
    }
  }
}

void sub_1A479CBC8()
{
  if (!qword_1EB141CE0)
  {
    sub_1A479CC5C(255);
    sub_1A479CD58(255);
    sub_1A479D100(255);
    sub_1A479D618(255);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata, &qword_1EB141CE0);
    }
  }
}

void sub_1A479CCC4()
{
  if (!qword_1EB141CF8)
  {
    sub_1A47A166C(255, &qword_1EB128720, MEMORY[0x1E6981148], MEMORY[0x1E697E5E0], MEMORY[0x1E697E830]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB141CF8);
    }
  }
}

void sub_1A479CE04()
{
  if (!qword_1EB141D20)
  {
    sub_1A478E98C(255, &qword_1EB141D28, sub_1A479CEA8, sub_1A3D6D248, MEMORY[0x1E697E830]);
    v0 = sub_1A5248804();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB141D20);
    }
  }
}

void sub_1A479CEA8()
{
  if (!qword_1EB141D30)
  {
    sub_1A479A5DC(255, &qword_1EB141D38, sub_1A479CF6C);
    sub_1A479D500(255, &qword_1EB1289C0, sub_1A3D6F4A4, MEMORY[0x1E6981EF8], MEMORY[0x1E697DDA0]);
    v0 = sub_1A5248804();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB141D30);
    }
  }
}

void sub_1A479CF6C()
{
  if (!qword_1EB141D40)
  {
    sub_1A478F618(255, &qword_1EB141D48, &qword_1EB128580, MEMORY[0x1E697F578], sub_1A3E42C88);
    sub_1A479CFFC();
    v0 = sub_1A5249724();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB141D40);
    }
  }
}

unint64_t sub_1A479CFFC()
{
  result = qword_1EB141D50;
  if (!qword_1EB141D50)
  {
    v1 = MEMORY[0x1E697F578];
    sub_1A478F618(255, &qword_1EB141D48, &qword_1EB128580, MEMORY[0x1E697F578], sub_1A3E42C88);
    sub_1A478FA2C(&qword_1EB128590, &qword_1EB128580, v1);
    sub_1A478EE38(&qword_1EB128A00, sub_1A3E42C88);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB141D50);
  }

  return result;
}

void sub_1A479D1CC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(void), uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a4();
    v11 = a5(a1, v9, v10);
    if (!v12)
    {
      atomic_store(v11, a2);
    }
  }
}

void sub_1A479D24C()
{
  if (!qword_1EB141D70)
  {
    sub_1A479D2EC();
    sub_1A479D500(255, &qword_1EB127C70, sub_1A3D6F4A4, MEMORY[0x1E6981EF8], MEMORY[0x1E697FD48]);
    v0 = sub_1A5248804();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB141D70);
    }
  }
}

void sub_1A479D2EC()
{
  if (!qword_1EB141D78)
  {
    sub_1A479D380(255);
    sub_1A478EE38(&unk_1EB141D98, sub_1A479D380);
    v0 = sub_1A524B784();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB141D78);
    }
  }
}

void sub_1A479D3B4()
{
  if (!qword_1EB141D88)
  {
    sub_1A479D448();
    sub_1A3C48C7C(255, &qword_1EB1273B0, MEMORY[0x1E6981840], MEMORY[0x1E69E6720]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB141D88);
    }
  }
}

void sub_1A479D448()
{
  if (!qword_1EB141D90)
  {
    sub_1A47A166C(255, &qword_1EB128720, MEMORY[0x1E6981148], MEMORY[0x1E697E5E0], MEMORY[0x1E697E830]);
    sub_1A3C48C7C(255, &unk_1EB127840, MEMORY[0x1E697E1E0], MEMORY[0x1E6980A08]);
    v0 = sub_1A5248804();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB141D90);
    }
  }
}

void sub_1A479D500(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

unint64_t sub_1A479D568()
{
  result = qword_1EB141DA8;
  if (!qword_1EB141DA8)
  {
    sub_1A479D24C();
    sub_1A478EE38(&unk_1EB141DB0, sub_1A479D2EC);
    sub_1A3F963C0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB141DA8);
  }

  return result;
}

void sub_1A479D64C()
{
  if (!qword_1EB141DC8)
  {
    sub_1A479D750();
    sub_1A52498E4();
    sub_1A478EE38(&qword_1EB141DE8, sub_1A479D750);
    sub_1A478EE38(&qword_1EB141DF0, MEMORY[0x1E697C720]);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB141DC8);
    }
  }
}

void sub_1A479D750()
{
  if (!qword_1EB141DD0)
  {
    v0 = MEMORY[0x1E697E5E0];
    sub_1A47A166C(255, &qword_1EB141DD8, MEMORY[0x1E6981748], MEMORY[0x1E697E5E0], MEMORY[0x1E697E830]);
    sub_1A478FA2C(&qword_1EB141DE0, &qword_1EB141DD8, v0);
    v1 = sub_1A524B764();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB141DD0);
    }
  }
}

unint64_t sub_1A479D83C()
{
  result = qword_1EB141E10;
  if (!qword_1EB141E10)
  {
    sub_1A3C48C7C(255, &qword_1EB141C90, &type metadata for LemonadeCollectionCustomizationActionItem, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB141E10);
  }

  return result;
}

uint64_t sub_1A479D934@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for LemonadeCollectionCustomizationAction(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a1;
  v8 = a1[1];
  v10 = a1[2];
  v24 = *a1;
  v25 = v8;
  v20 = v10;
  v26 = v10;
  sub_1A47A0464();
  v12 = v11;
  MEMORY[0x1A5906C60](&v23);
  v13 = *(v23 + 16);
  if (v13)
  {
    v19[0] = *(v23 + 96 * v13 - 64);
    v19[1] = v23;
    v19[2] = v8;
    v19[3] = v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
    v19[4] = a2;
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  v21 = 0;
  v24 = v9;
  v25 = v8;
  v26 = v20;
  MEMORY[0x1A5906C60](&v23, v12);
  v22 = v23;
  swift_getKeyPath();
  sub_1A47A23D4(a1, v7, type metadata accessor for LemonadeCollectionCustomizationAction);
  v14 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v15 = swift_allocObject();
  sub_1A47A1AD8(v7, v15 + v14, type metadata accessor for LemonadeCollectionCustomizationAction);
  v16 = (v15 + ((v6 + v14 + 7) & 0xFFFFFFFFFFFFFFF8));
  v17 = v21;
  *v16 = 0;
  v16[1] = v17;
  sub_1A3C48C7C(0, &qword_1EB141C90, &type metadata for LemonadeCollectionCustomizationActionItem, MEMORY[0x1E69E62F8]);
  sub_1A479C8D0(0);
  sub_1A479D83C();
  sub_1A479D8B8();
  return sub_1A524B9B4();
}

uint64_t sub_1A479DC1C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_1A479DCA4(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v5)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

uint64_t sub_1A479DD88@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v32 = a2;
  v33 = a5;
  v8 = sub_1A524B9A4();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A479D808(0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v32 - v16;
  sub_1A479C90C();
  MEMORY[0x1EEE9AC00](v18 - 8);
  v20 = &v32 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v32 - v22;
  v24 = a1[3];
  v34[2] = a1[2];
  v34[3] = v24;
  v25 = a1[5];
  v34[4] = a1[4];
  v34[5] = v25;
  v26 = a1[1];
  v34[0] = *a1;
  v34[1] = v26;
  *v23 = sub_1A5249574();
  *(v23 + 1) = 0;
  v23[16] = 0;
  sub_1A47A22B8(0, &qword_1EB141F60, sub_1A479C9A0);
  sub_1A479E104(v34, v32, &v23[*(v27 + 44)]);
  if (a4 && (v34[0] == __PAIR128__(a4, a3) || (sub_1A524EAB4() & 1) != 0))
  {
    v28 = 1;
  }

  else
  {
    sub_1A524B994();
    (*(v9 + 32))(v17, v11, v8);
    v28 = 0;
  }

  (*(v9 + 56))(v17, v28, 1, v8);
  sub_1A47A1014(v23, v20, sub_1A479C90C);
  sub_1A47A23D4(v17, v14, sub_1A479D808);
  v29 = v33;
  sub_1A47A1014(v20, v33, sub_1A479C90C);
  sub_1A478E860(0, &qword_1EB141CA0, sub_1A479C90C, sub_1A479D808);
  sub_1A47A23D4(v14, v29 + *(v30 + 48), sub_1A479D808);
  sub_1A479AE68(v17, sub_1A479D808);
  sub_1A47A0FA8(v23, sub_1A479C90C);
  sub_1A479AE68(v14, sub_1A479D808);
  return sub_1A47A0FA8(v20, sub_1A479C90C);
}

uint64_t sub_1A479E104@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v50 = a3;
  v5 = sub_1A5247E04();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v45 - v10;
  sub_1A479CB00();
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A479CA6C();
  v47 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v49 = v45 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v46 = v45 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v48 = v45 - v20;
  v21 = *(a1 + 24);
  if (v21)
  {
    v45[6] = a2;
    v22 = *(a1 + 16);
    v45[2] = sub_1A5249314();
    *&v66[0] = v22;
    *(&v66[0] + 1) = v21;
    sub_1A3D5F9DC();
    v45[9] = v5;
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  sub_1A4779164(v66);
  *v14 = sub_1A5249314();
  *(v14 + 1) = 0;
  v14[16] = 0;
  sub_1A47A22B8(0, &qword_1EB141F68, sub_1A479CB94);
  sub_1A479E804(a1, a2, &v14[*(v23 + 44)]);
  sub_1A479BFCC(v11);
  (*(v6 + 104))(v8, *MEMORY[0x1E697DBB8], v5);
  v24 = sub_1A5247DF4();
  v25 = *(v6 + 8);
  v25(v8, v5);
  v25(v11, v5);
  if (v24)
  {
    v26 = sub_1A524B2E4();
  }

  else
  {
    v26 = sub_1A524B2A4();
  }

  v27 = v26;
  v28 = sub_1A524A064();
  v29 = v46;
  sub_1A479DC1C(v14, v46, sub_1A479CB00);
  v30 = v48;
  v31 = v29 + *(v47 + 36);
  *v31 = v27;
  *(v31 + 8) = v28;
  sub_1A479DC1C(v29, v30, sub_1A479CA6C);
  v58 = v66[7];
  v59 = v66[8];
  v60 = v66[9];
  v61 = v67;
  v55 = v66[4];
  v56 = v66[5];
  v57 = v66[6];
  v51 = v66[0];
  v52 = v66[1];
  v53 = v66[2];
  v54 = v66[3];
  v32 = v49;
  sub_1A47A1014(v30, v49, sub_1A479CA6C);
  v33 = v58;
  v62[8] = v59;
  v62[9] = v60;
  v34 = v55;
  v35 = v56;
  v62[4] = v55;
  v62[5] = v56;
  v36 = v57;
  v62[6] = v57;
  v62[7] = v58;
  v37 = v51;
  v38 = v52;
  v62[0] = v51;
  v62[1] = v52;
  v40 = v53;
  v39 = v54;
  v62[2] = v53;
  v62[3] = v54;
  v41 = v60;
  v42 = v50;
  *(v50 + 128) = v59;
  *(v42 + 144) = v41;
  *(v42 + 64) = v34;
  *(v42 + 80) = v35;
  *(v42 + 96) = v36;
  *(v42 + 112) = v33;
  *v42 = v37;
  *(v42 + 16) = v38;
  v63 = v61;
  *(v42 + 160) = v61;
  *(v42 + 32) = v40;
  *(v42 + 48) = v39;
  sub_1A478E860(0, &qword_1EB141CB8, sub_1A479CA38, sub_1A479CA6C);
  sub_1A47A1014(v32, v42 + *(v43 + 48), sub_1A479CA6C);
  sub_1A47A23D4(v62, v64, sub_1A479CA38);
  sub_1A47A0FA8(v30, sub_1A479CA6C);
  sub_1A47A0FA8(v32, sub_1A479CA6C);
  v64[8] = v59;
  v64[9] = v60;
  v65 = v61;
  v64[4] = v55;
  v64[5] = v56;
  v64[6] = v57;
  v64[7] = v58;
  v64[0] = v51;
  v64[1] = v52;
  v64[2] = v53;
  v64[3] = v54;
  return sub_1A479AE68(v64, sub_1A479CA38);
}

uint64_t sub_1A479E804@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v147 = a2;
  v132 = a3;
  v4 = sub_1A52498E4();
  v123 = *(v4 - 8);
  v124 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v121 = &v113 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A479D750();
  v122 = v6;
  v120 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v119 = &v113 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A479D64C();
  v133 = *(v8 - 8);
  v134 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v118 = &v113 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A479D618(0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v137 = &v113 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v136 = &v113 - v13;
  sub_1A479D184(0);
  v128 = *(v14 - 8);
  v129 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v126 = &v113 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A479D148(0);
  v127 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v130 = &v113 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A479D100(0);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v135 = &v113 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v146 = &v113 - v21;
  v22 = sub_1A524B554();
  v116 = *(v22 - 8);
  v117 = v22;
  MEMORY[0x1EEE9AC00](v22);
  v115 = &v113 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_1A5243454();
  v114 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v113 = &v113 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A479CD8C(0);
  v125 = v26;
  v27 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v29 = &v113 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A479CD58(0);
  MEMORY[0x1EEE9AC00](v30 - 8);
  v131 = &v113 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32);
  v145 = &v113 - v33;
  v34 = *(a1 + 40);
  if (v34)
  {
    *&v167 = *(a1 + 32);
    *(&v167 + 1) = v34;
    sub_1A3D5F9DC();
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  v143 = 0;
  v144 = 0;
  v140 = 0;
  v141 = 0;
  v142 = 0;
  v138 = 0;
  v139 = 0;
  v35 = *(v147 + 64);
  v36 = 1;
  if (v35 && (v37 = *(v147 + 72), *&v167 = *(v147 + 56), *(&v167 + 1) = v35, *&v168 = v37, sub_1A47A0514(), MEMORY[0x1A5906C60](&v153), (v38 = v153) != 0))
  {
    v114[13](v113, *MEMORY[0x1E69C24B0], v24);
    v114 = v38;
    sub_1A524B534();
    v39 = v115;
    v40 = v116;
    v41 = v117;
    (*(v116 + 104))(v115, *MEMORY[0x1E6981630], v117);
    v42 = sub_1A524B5C4();

    (*(v40 + 8))(v39, v41);
    sub_1A478F618(0, &qword_1EB141D48, &qword_1EB128580, MEMORY[0x1E697F578], sub_1A3E42C88);
    v44 = &v29[*(v43 + 36)];
    v45 = *(sub_1A5248A14() + 20);
    v46 = *MEMORY[0x1E697F468];
    v47 = sub_1A52494A4();
    (*(*(v47 - 8) + 104))(&v44[v45], v46, v47);
    __asm { FMOV            V0.2D, #10.0 }

    *v44 = _Q0;
    sub_1A3E42C88();
    *&v44[*(v53 + 36)] = 256;
    *v29 = v42;
    *(v29 + 1) = 0;
    *(v29 + 8) = 257;
    v54 = sub_1A524BC74();
    v56 = v55;
    sub_1A479CF6C();
    v58 = &v29[*(v57 + 36)];
    *v58 = v54;
    v58[1] = v56;
    sub_1A479CEA8();
    *&v29[*(v59 + 36)] = 0;
    v60 = sub_1A524B414();
    KeyPath = swift_getKeyPath();
    sub_1A478E98C(0, &qword_1EB141D28, sub_1A479CEA8, sub_1A3D6D248, MEMORY[0x1E697E830]);
    v63 = &v29[*(v62 + 36)];
    *v63 = KeyPath;
    v63[1] = v60;
    sub_1A524BC74();
    sub_1A52481F4();
    sub_1A479CE04();
    v65 = &v29[*(v64 + 36)];
    v66 = v165;
    *v65 = v164;
    *(v65 + 1) = v66;
    *(v65 + 2) = v166;
    LOBYTE(v60) = sub_1A524A064();
    sub_1A5247BC4();
    v68 = v67;
    v70 = v69;
    v72 = v71;
    v74 = v73;

    sub_1A479CDC8(0);
    v76 = &v29[*(v75 + 36)];
    *v76 = v60;
    *(v76 + 1) = v68;
    *(v76 + 2) = v70;
    *(v76 + 3) = v72;
    *(v76 + 4) = v74;
    v76[40] = 0;
    v77 = v125;
    v78 = &v29[*(v125 + 36)];
    *v78 = 0x3FF0000000000000;
    *(v78 + 4) = 256;
    v79 = v145;
    sub_1A47A1AD8(v29, v145, sub_1A479CD8C);
    v80 = 0;
  }

  else
  {
    v80 = 1;
    v79 = v145;
    v77 = v125;
  }

  (*(v27 + 56))(v79, v80, 1, v77);
  v81 = swift_allocObject();
  v82 = *(a1 + 48);
  v81[3] = *(a1 + 32);
  v81[4] = v82;
  v83 = *(a1 + 80);
  v81[5] = *(a1 + 64);
  v81[6] = v83;
  v84 = *(a1 + 16);
  v81[1] = *a1;
  v81[2] = v84;
  MEMORY[0x1EEE9AC00](v81);
  sub_1A404A04C(a1, &v167);
  sub_1A479D24C();
  sub_1A479D568();
  v85 = v126;
  sub_1A524B704();
  sub_1A524BC74();
  sub_1A5248AD4();
  v86 = v130;
  (*(v128 + 32))(v130, v85, v129);
  v87 = (v86 + *(v127 + 36));
  v88 = v172;
  v87[4] = v171;
  v87[5] = v88;
  v87[6] = v173;
  v89 = v168;
  *v87 = v167;
  v87[1] = v89;
  v90 = v170;
  v87[2] = v169;
  v87[3] = v90;
  sub_1A47A1A28();
  sub_1A524AA94();
  sub_1A479AE68(v86, sub_1A479D148);
  v91 = *(v147 + 32);
  if (!v91)
  {
    v93 = v136;
    goto LABEL_11;
  }

  v153 = *(v147 + 24);
  v154 = v91;
  v155 = *(v147 + 40);
  sub_1A47A04E0(0);
  MEMORY[0x1A5906C60](&v148);
  v92 = v148;
  v93 = v136;
  if (!v148)
  {
LABEL_11:
    v103 = v133;
    v102 = v134;
    goto LABEL_12;
  }

  v94 = *(&v148 + 1);
  v95 = swift_allocObject();
  *(v95 + 16) = v92;
  *(v95 + 24) = v94;
  v96 = MEMORY[0x1E697E5E0];
  sub_1A47A166C(0, &qword_1EB141DD8, MEMORY[0x1E6981748], MEMORY[0x1E697E5E0], MEMORY[0x1E697E830]);
  sub_1A478FA2C(&qword_1EB141DE0, &qword_1EB141DD8, v96);

  v97 = v119;
  sub_1A524B704();
  v98 = v121;
  sub_1A52498D4();
  sub_1A478EE38(&qword_1EB141DE8, sub_1A479D750);
  sub_1A478EE38(&qword_1EB141DF0, MEMORY[0x1E697C720]);
  v99 = v118;
  v100 = v122;
  v101 = v124;
  sub_1A524A934();

  (*(v123 + 8))(v98, v101);
  (*(v120 + 8))(v97, v100);
  v103 = v133;
  v102 = v134;
  (*(v133 + 32))(v93, v99, v134);
  v36 = 0;
LABEL_12:
  (*(v103 + 56))(v93, v36, 1, v102);
  v104 = v79;
  v105 = v131;
  sub_1A47A23D4(v104, v131, sub_1A479CD58);
  v106 = v135;
  sub_1A47A23D4(v146, v135, sub_1A479D100);
  v107 = v137;
  sub_1A47A1014(v93, v137, sub_1A479D618);
  *&v148 = v144;
  *(&v148 + 1) = v143;
  *&v149 = v140;
  *(&v149 + 1) = v142;
  v150 = v138;
  v151 = 0uLL;
  *&v152[0] = 0;
  *(&v152[0] + 1) = v141;
  *&v152[1] = 0;
  BYTE8(v152[1]) = v139;
  v108 = v132;
  v132[2] = v138;
  v108[3] = 0uLL;
  v108[4] = v152[0];
  *(v108 + 73) = *(v152 + 9);
  v109 = v149;
  *v108 = v148;
  v108[1] = v109;
  sub_1A479CBC8();
  v111 = v110;
  sub_1A47A23D4(v105, v108 + *(v110 + 48), sub_1A479CD58);
  sub_1A47A23D4(v106, v108 + *(v111 + 64), sub_1A479D100);
  sub_1A47A1014(v107, v108 + *(v111 + 80), sub_1A479D618);
  sub_1A47A23D4(&v148, &v153, sub_1A479CC5C);
  sub_1A47A0FA8(v93, sub_1A479D618);
  sub_1A479AE68(v146, sub_1A479D100);
  sub_1A479AE68(v145, sub_1A479CD58);
  sub_1A47A0FA8(v107, sub_1A479D618);
  sub_1A479AE68(v106, sub_1A479D100);
  sub_1A479AE68(v105, sub_1A479CD58);
  v153 = v144;
  v154 = v143;
  *&v155 = v140;
  *(&v155 + 1) = v142;
  v156 = v138;
  v157 = 0;
  v158 = 0;
  v159 = 0;
  v160 = 0;
  v161 = v141;
  v162 = 0;
  v163 = v139;
  return sub_1A479AE68(&v153, sub_1A479CC5C);
}

uint64_t sub_1A479F800@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1A524B544();
  v3 = sub_1A524A064();
  result = sub_1A5247BC4();
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  *(a1 + 32) = v7;
  *(a1 + 40) = v8;
  *(a1 + 48) = 0;
  return result;
}

void sub_1A479F884()
{
  sub_1A478C514(319, &qword_1EB124730, MEMORY[0x1E697BF90], MEMORY[0x1E697DCC0]);
  if (v0 <= 0x3F)
  {
    sub_1A47A0224();
    if (v1 <= 0x3F)
    {
      sub_1A478C514(319, &qword_1EB124710, MEMORY[0x1E697E7E0], MEMORY[0x1E697DCC0]);
      if (v2 <= 0x3F)
      {
        sub_1A478C514(319, &qword_1EB124870, MEMORY[0x1E69C2218], MEMORY[0x1E697DCC0]);
        if (v3 <= 0x3F)
        {
          type metadata accessor for LemonadeCollectionCustomizationViewModel();
          if (v4 <= 0x3F)
          {
            sub_1A524B974();
            if (v5 <= 0x3F)
            {
              sub_1A3C48C7C(319, &qword_1EB1274D0, MEMORY[0x1E69E7DE0], MEMORY[0x1E6981790]);
              if (v6 <= 0x3F)
              {
                sub_1A478C514(319, &unk_1EB121B78, type metadata accessor for CGSize, MEMORY[0x1E6981790]);
                if (v7 <= 0x3F)
                {
                  sub_1A47A166C(319, &qword_1EB1249A0, MEMORY[0x1E69E6370], MEMORY[0x1E69E6380], MEMORY[0x1E697BDF0]);
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

uint64_t sub_1A479FACC(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  v6 = *(*(sub_1A5248284() - 8) + 64);
  if (v6 <= 8)
  {
    v7 = 8;
  }

  else
  {
    v7 = v6;
  }

  v8 = *(sub_1A5248714() - 8);
  if (*(v8 + 64) <= 8uLL)
  {
    v9 = 8;
  }

  else
  {
    v9 = *(v8 + 64);
  }

  v10 = *(sub_1A5242D14() - 8);
  if (*(v10 + 64) <= 8uLL)
  {
    v11 = 8;
  }

  else
  {
    v11 = *(v10 + 64);
  }

  v12 = *(*(a3 + 16) - 8);
  v13 = *(v12 + 84);
  v14 = *(v10 + 80);
  v15 = *(v12 + 80);
  if (v13 <= 0x7FFFFFFF)
  {
    v16 = 0x7FFFFFFF;
  }

  else
  {
    v16 = *(v12 + 84);
  }

  if (v13 >= 0)
  {
    v17 = 0x7FFFFFFF;
  }

  else
  {
    v17 = v16;
  }

  if (!a2)
  {
    return 0;
  }

  v18 = *(v8 + 80) & 0xF8 | 7;
  v19 = v14 & 0xF8 | 7;
  v20 = v9 + v19 + 1;
  v21 = v11 + 8;
  v22 = v15 | 7;
  if (v17 >= a2)
  {
    goto LABEL_40;
  }

  v23 = ((((((((*(v12 + 64) - ((-17 - v15) | v15) - ((-9 - v22 - ((v21 + ((v20 + (((v7 & 0xFFFFFFFFFFFFFFF8) + v18 + 17) & ~v18)) & ~v19)) & 0xFFFFFFFFFFFFFFF8)) | v22) + 5) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 17;
  if (v23 <= 3)
  {
    v24 = ((a2 - v17 + 255) >> 8) + 1;
  }

  else
  {
    v24 = 2;
  }

  if (v24 >= 0x10000)
  {
    v25 = 4;
  }

  else
  {
    v25 = 2;
  }

  if (v24 < 0x100)
  {
    v25 = 1;
  }

  if (v24 >= 2)
  {
    v26 = v25;
  }

  else
  {
    v26 = 0;
  }

  if (v26 > 1)
  {
    if (v26 == 2)
    {
      v27 = *&a1[v23];
      if (!*&a1[v23])
      {
        goto LABEL_40;
      }
    }

    else
    {
      v27 = *&a1[v23];
      if (!v27)
      {
        goto LABEL_40;
      }
    }

LABEL_36:
    v29 = (v27 - 1) << (8 * v23);
    if (v23 <= 3)
    {
      v30 = *a1;
    }

    else
    {
      v29 = 0;
      v30 = *a1;
    }

    return v17 + (v30 | v29) + 1;
  }

  if (v26)
  {
    v27 = a1[v23];
    if (a1[v23])
    {
      goto LABEL_36;
    }
  }

LABEL_40:
  v31 = ((v21 + ((v20 + (((&a1[v7 + 8] & 0xFFFFFFFFFFFFFFF8) + v18 + 9) & ~v18)) & ~v19)) & 0xFFFFFFFFFFFFFFF8);
  if (v17 == 0x7FFFFFFF)
  {
    v32 = *v31;
    if (*v31 >= 0xFFFFFFFF)
    {
      LODWORD(v32) = -1;
    }

    return (v32 + 1);
  }

  else
  {
    v33 = *(v12 + 48);

    return v33((v15 + 8 + ((((v31 + v15 + 8) & ~v22) + 15) & 0xFFFFFFFFFFFFFFF8)) & ~v15);
  }
}

void sub_1A479FE1C(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = *(*(sub_1A5248284() - 8) + 64);
  if (v8 <= 8)
  {
    v9 = 8;
  }

  else
  {
    v9 = v8;
  }

  v10 = *(sub_1A5248714() - 8);
  if (*(v10 + 64) <= 8uLL)
  {
    v11 = 8;
  }

  else
  {
    v11 = *(v10 + 64);
  }

  v12 = *(sub_1A5242D14() - 8);
  if (*(v12 + 64) <= 8uLL)
  {
    v13 = 8;
  }

  else
  {
    v13 = *(v12 + 64);
  }

  v14 = *(*(a4 + 16) - 8);
  v15 = *(v12 + 80);
  v16 = *(v14 + 84);
  if (v16 <= 0x7FFFFFFF)
  {
    v17 = 0x7FFFFFFF;
  }

  else
  {
    v17 = *(v14 + 84);
  }

  if (v16 >= 0)
  {
    v18 = 0x7FFFFFFF;
  }

  else
  {
    v18 = v17;
  }

  v19 = *(v10 + 80) & 0xF8 | 7;
  v20 = v15 & 0xF8 | 7;
  v21 = v11 + v20 + 1;
  v22 = v13 + 8;
  v23 = (v13 + 8 + ((v21 + (((v9 & 0xFFFFFFFFFFFFFFF8) + v19 + 17) & ~v19)) & ~v20)) & 0xFFFFFFFFFFFFFFF8;
  v24 = *(v14 + 80);
  v25 = *(v14 + 80) & 0xF8 ^ 0xFFFFFFFFFFFFFFF8;
  v26 = v24 + 8;
  v27 = ((v24 + 16) & ~v24) + *(v14 + 64);
  v28 = ((((((((v27 + ((v24 + 8 + v23) & v25) + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 17;
  if (v18 >= a3)
  {
    v31 = 0;
    if (v18 >= a2)
    {
      goto LABEL_29;
    }
  }

  else
  {
    if (v28 <= 3)
    {
      v29 = ((a3 - v18 + 255) >> 8) + 1;
    }

    else
    {
      v29 = 2;
    }

    if (v29 >= 0x10000)
    {
      v30 = 4;
    }

    else
    {
      v30 = 2;
    }

    if (v29 < 0x100)
    {
      v30 = 1;
    }

    if (v29 >= 2)
    {
      v31 = v30;
    }

    else
    {
      v31 = 0;
    }

    if (v18 >= a2)
    {
LABEL_29:
      if (v31 > 1)
      {
        if (v31 != 2)
        {
          *&a1[v28] = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_44;
        }

        *&a1[v28] = 0;
      }

      else if (v31)
      {
        a1[v28] = 0;
        if (!a2)
        {
          return;
        }

LABEL_44:
        v34 = ((v22 + ((v21 + (((&a1[v9 + 8] & 0xFFFFFFFFFFFFFFF8) + v19 + 9) & ~v19)) & ~v20)) & 0xFFFFFFFFFFFFFFF8);
        if (v18 == 0x7FFFFFFF)
        {
          if ((a2 & 0x80000000) != 0)
          {
            v35 = a2 & 0x7FFFFFFF;
          }

          else
          {
            v35 = (a2 - 1);
          }

          *v34 = v35;
        }

        else
        {
          v36 = (v34 + v26) & v25;
          if (v17 >= a2)
          {
            v40 = *(v14 + 56);

            v40((v26 + ((v36 + 15) & 0xFFFFFFFFFFFFFFF8)) & ~v24, a2);
          }

          else
          {
            if (v27 <= 3)
            {
              v37 = ~(-1 << (8 * v27));
            }

            else
            {
              v37 = -1;
            }

            if (v27)
            {
              v38 = v37 & (~v17 + a2);
              if (v27 <= 3)
              {
                v39 = v27;
              }

              else
              {
                v39 = 4;
              }

              bzero(((v34 + v26) & v25), v27);
              if (v39 > 2)
              {
                if (v39 == 3)
                {
                  *v36 = v38;
                  *(v36 + 2) = BYTE2(v38);
                }

                else
                {
                  *v36 = v38;
                }
              }

              else if (v39 == 1)
              {
                *v36 = v38;
              }

              else
              {
                *v36 = v38;
              }
            }
          }
        }

        return;
      }

      if (!a2)
      {
        return;
      }

      goto LABEL_44;
    }
  }

  v32 = ~v18 + a2;
  bzero(a1, v28);
  if (v28 <= 3)
  {
    v33 = (v32 >> 8) + 1;
  }

  else
  {
    v33 = 1;
  }

  if (v28 <= 3)
  {
    *a1 = v32;
    if (v31 > 1)
    {
LABEL_39:
      if (v31 == 2)
      {
        *&a1[v28] = v33;
      }

      else
      {
        *&a1[v28] = v33;
      }

      return;
    }
  }

  else
  {
    *a1 = v32;
    if (v31 > 1)
    {
      goto LABEL_39;
    }
  }

  if (v31)
  {
    a1[v28] = v33;
  }
}

void sub_1A47A0224()
{
  if (!qword_1EB1246B0)
  {
    sub_1A3C4B7E8(255, &qword_1EB120AE8, &qword_1EB120AF0);
    v0 = sub_1A5247E54();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB1246B0);
    }
  }
}

void sub_1A47A02CC()
{
  sub_1A3C48C7C(319, &qword_1EB13A730, MEMORY[0x1E69E6158], MEMORY[0x1E6981948]);
  if (v0 <= 0x3F)
  {
    sub_1A47A0464();
    if (v1 <= 0x3F)
    {
      sub_1A478C514(319, &qword_1EB141E48, sub_1A47A04E0, MEMORY[0x1E69E6720]);
      if (v2 <= 0x3F)
      {
        sub_1A478C514(319, &qword_1EB141E58, sub_1A47A0514, MEMORY[0x1E69E6720]);
        if (v3 <= 0x3F)
        {
          sub_1A478C514(319, &qword_1EB128A30, MEMORY[0x1E697DBD0], MEMORY[0x1E697DCC0]);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1A47A0464()
{
  if (!qword_1EB141E40)
  {
    sub_1A3C48C7C(255, &qword_1EB141C90, &type metadata for LemonadeCollectionCustomizationActionItem, MEMORY[0x1E69E62F8]);
    v0 = sub_1A524B974();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB141E40);
    }
  }
}

void sub_1A47A0514()
{
  if (!qword_1EB141E60)
  {
    sub_1A3C4B7E8(255, &qword_1EB126620, &qword_1EB126630);
    v0 = sub_1A524B974();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB141E60);
    }
  }
}

uint64_t sub_1A47A0584(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 96))
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

uint64_t sub_1A47A05CC(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

void sub_1A47A065C()
{
  sub_1A47A0464();
  if (v0 <= 0x3F)
  {
    sub_1A478C514(319, &qword_1EB141E48, sub_1A47A04E0, MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      sub_1A478C514(319, &qword_1EB141E58, sub_1A47A0514, MEMORY[0x1E69E6720]);
      if (v2 <= 0x3F)
      {
        sub_1A478C514(319, &qword_1EB128A30, MEMORY[0x1E697DBD0], MEMORY[0x1E697DCC0]);
        if (v3 <= 0x3F)
        {
          sub_1A478C514(319, &qword_1EB124870, MEMORY[0x1E69C2218], MEMORY[0x1E697DCC0]);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

unint64_t sub_1A47A07E8()
{
  result = qword_1EB141E68;
  if (!qword_1EB141E68)
  {
    sub_1A478E98C(255, &qword_1EB141E70, sub_1A4799F2C, type metadata accessor for LemonadeCollectionCustomizationAction, MEMORY[0x1E697F960]);
    sub_1A479A84C();
    sub_1A478EE38(&qword_1EB141C78, type metadata accessor for LemonadeCollectionCustomizationAction);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB141E68);
  }

  return result;
}

uint64_t sub_1A47A0910()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1A47A094C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 144))
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

uint64_t sub_1A47A0994(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 144) = 1;
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

    *(result + 144) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_1A47A0A20()
{
  sub_1A3C52C70(319, &qword_1EB126630);
  if (v0 <= 0x3F)
  {
    type metadata accessor for CGSize(319);
    if (v1 <= 0x3F)
    {
      sub_1A478C514(319, &qword_1EB128A30, MEMORY[0x1E697DBD0], MEMORY[0x1E697DCC0]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1A47A0B5C()
{
  if (!qword_1EB141E88)
  {
    sub_1A478E860(255, &unk_1EB141E90, sub_1A4136C04, sub_1A47A0BE4);
    v0 = sub_1A52495C4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB141E88);
    }
  }
}

void sub_1A47A0BE4()
{
  if (!qword_1EB141EA0)
  {
    sub_1A478E98C(255, &qword_1EB141EA8, sub_1A47A0C98, sub_1A47A0CE0, MEMORY[0x1E697F960]);
    sub_1A47A0D28();
    v0 = sub_1A5247F34();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB141EA0);
    }
  }
}

unint64_t sub_1A47A0D28()
{
  result = qword_1EB141ED0;
  if (!qword_1EB141ED0)
  {
    sub_1A478E98C(255, &qword_1EB141EA8, sub_1A47A0C98, sub_1A47A0CE0, MEMORY[0x1E697F960]);
    sub_1A47A0DEC();
    sub_1A47A0EE0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB141ED0);
  }

  return result;
}

unint64_t sub_1A47A0DEC()
{
  result = qword_1EB141ED8;
  if (!qword_1EB141ED8)
  {
    sub_1A47A0C98(255);
    sub_1A479ABF0(&qword_1EB141EE0, sub_1A41278A0, sub_1A3D6E520, sub_1A3E72758);
    sub_1A478EE38(&qword_1EB127710, MEMORY[0x1E697CBE8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB141ED8);
  }

  return result;
}

unint64_t sub_1A47A0EE0()
{
  result = qword_1EB141EE8;
  if (!qword_1EB141EE8)
  {
    sub_1A47A0CE0(255);
    sub_1A3E7E6E4();
    sub_1A478EE38(&qword_1EB127710, MEMORY[0x1E697CBE8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB141EE8);
  }

  return result;
}

uint64_t sub_1A47A0FA8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1A47A1014(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t objectdestroy_97Tm()
{

  return swift_deallocObject();
}

void sub_1A47A1160()
{
  if (!qword_1EB141F18)
  {
    sub_1A47A11F4();
    sub_1A47A166C(255, &qword_1EB12CB28, MEMORY[0x1E697E610], MEMORY[0x1E697E608], MEMORY[0x1E6980460]);
    v0 = sub_1A5248804();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB141F18);
    }
  }
}

void sub_1A47A11F4()
{
  if (!qword_1EB141F20)
  {
    sub_1A47A129C();
    sub_1A479ABF0(&qword_1EB141F48, sub_1A47A129C, sub_1A47A1438, sub_1A47A15DC);
    v0 = sub_1A524B8B4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB141F20);
    }
  }
}

void sub_1A47A129C()
{
  if (!qword_1EB141F28)
  {
    sub_1A478E98C(255, &unk_1EB141F30, sub_1A41C4098, sub_1A47A1380, MEMORY[0x1E697E830]);
    sub_1A479D500(255, &qword_1EB1289C0, sub_1A3D6F4A4, MEMORY[0x1E6981EF8], MEMORY[0x1E697DDA0]);
    v0 = sub_1A5248804();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB141F28);
    }
  }
}

void sub_1A47A1380()
{
  if (!qword_1EB141F40)
  {
    v0 = MEMORY[0x1E697F578];
    sub_1A47A166C(255, &qword_1EB128580, MEMORY[0x1E6981748], MEMORY[0x1E697F578], MEMORY[0x1E697E830]);
    sub_1A478FA2C(&qword_1EB128590, &qword_1EB128580, v0);
    v1 = sub_1A5249724();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB141F40);
    }
  }
}

unint64_t sub_1A47A1438()
{
  result = qword_1EB141F50;
  if (!qword_1EB141F50)
  {
    sub_1A478E98C(255, &unk_1EB141F30, sub_1A41C4098, sub_1A47A1380, MEMORY[0x1E697E830]);
    sub_1A47A152C();
    sub_1A478EE38(&qword_1EB141F58, sub_1A47A1380);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB141F50);
  }

  return result;
}

unint64_t sub_1A47A152C()
{
  result = qword_1EB1284B0;
  if (!qword_1EB1284B0)
  {
    sub_1A41C4098();
    sub_1A3E43880();
    sub_1A478EE38(&qword_1EB127800, sub_1A3D6D248);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1284B0);
  }

  return result;
}

unint64_t sub_1A47A15DC()
{
  result = qword_1EB1289D0;
  if (!qword_1EB1289D0)
  {
    sub_1A479D500(255, &qword_1EB1289C0, sub_1A3D6F4A4, MEMORY[0x1E6981EF8], MEMORY[0x1E697DDA0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1289D0);
  }

  return result;
}

void sub_1A47A166C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
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

uint64_t sub_1A47A16C0@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for LemonadeCollectionCustomizationAction(0) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = *v7;
  v9 = v7[1];

  return sub_1A479DD88(a1, v2 + v6, v8, v9, a2);
}

void sub_1A47A1798()
{
  v1 = *(v0 + 16);
  sub_1A5249314();
  v5 = 1;
  v2 = *(v1 + 72);
  v3 = *(v1 + 64);
  v4 = v2;
  sub_1A3D5F9DC();
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

unint64_t sub_1A47A1A28()
{
  result = qword_1EB141F70;
  if (!qword_1EB141F70)
  {
    sub_1A479D148(255);
    sub_1A478EE38(&qword_1EB141F78, sub_1A479D184);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB141F70);
  }

  return result;
}

uint64_t sub_1A47A1AD8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A47A1B40(uint64_t a1, uint64_t a2)
{
  sub_1A47A166C(0, &qword_1EB128720, MEMORY[0x1E6981148], MEMORY[0x1E697E5E0], MEMORY[0x1E697E830]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A47A1BD0(uint64_t a1)
{
  sub_1A47A166C(0, &qword_1EB128720, MEMORY[0x1E6981148], MEMORY[0x1E697E5E0], MEMORY[0x1E697E830]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1A47A1C58(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t))
{
  sub_1A478E98C(0, a3, a4, a5, MEMORY[0x1E697E830]);
  (*(*(v7 - 8) + 32))(a2, a1, v7);
  return a2;
}

uint64_t sub_1A47A1CDC()
{
  type metadata accessor for LemonadeCollectionCustomizationTitleField(0);
  sub_1A3C48C7C(0, &qword_1EB13A730, MEMORY[0x1E69E6158], MEMORY[0x1E6981948]);
  return sub_1A524B904();
}

uint64_t sub_1A47A1D9C(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(type metadata accessor for LemonadeCollectionCustomizationView() - 8);
  v6 = v1 + ((*(v5 + 80) + 32) & ~*(v5 + 80));

  return sub_1A47963BC(a1, v6, v3, v4);
}

unint64_t sub_1A47A1E28()
{
  result = qword_1EB141FA0;
  if (!qword_1EB141FA0)
  {
    sub_1A47900D0(255);
    sub_1A478EE38(&qword_1EB141C78, type metadata accessor for LemonadeCollectionCustomizationAction);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB141FA0);
  }

  return result;
}

unint64_t sub_1A47A1ED8()
{
  result = qword_1EB141FE0;
  if (!qword_1EB141FE0)
  {
    sub_1A478EA10(255);
    sub_1A47A1F88();
    sub_1A478EE38(&unk_1EB141FF8, sub_1A478EA58);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB141FE0);
  }

  return result;
}

unint64_t sub_1A47A1F88()
{
  result = qword_1EB141FE8;
  if (!qword_1EB141FE8)
  {
    sub_1A4574000(255);
    sub_1A478EE38(&qword_1EB128FE0, MEMORY[0x1E69C2928]);
    sub_1A478EE38(&qword_1EB128A00, sub_1A3E42C88);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB141FE8);
  }

  return result;
}

unint64_t sub_1A47A2068()
{
  result = qword_1EB1D3020;
  if (!qword_1EB1D3020)
  {
    type metadata accessor for LemonadeCollectionCustomizationKeyAsset(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1D3020);
  }

  return result;
}

unint64_t sub_1A47A20C0()
{
  result = qword_1EB142008;
  if (!qword_1EB142008)
  {
    sub_1A478E944(255);
    sub_1A47A1ED8();
    sub_1A478EE38(&qword_1EB129130, MEMORY[0x1E69C2288]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB142008);
  }

  return result;
}

uint64_t sub_1A47A2170()
{
  type metadata accessor for LemonadeCollectionCustomizationView();
  sub_1A3C48C7C(0, &qword_1EB1274D0, MEMORY[0x1E69E7DE0], MEMORY[0x1E6981790]);
  return sub_1A524B6B4();
}

uint64_t sub_1A47A2230(uint64_t a1, uint64_t a2)
{
  sub_1A479A5DC(0, &qword_1EB141960, sub_1A3E42C88);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1A47A22B8(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

uint64_t sub_1A47A233C(uint64_t (*a1)(uint64_t, uint64_t, uint64_t))
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(type metadata accessor for LemonadeCollectionCustomizationView() - 8);
  v5 = v1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));

  return a1(v5, v2, v3);
}

uint64_t sub_1A47A23D4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_1A47A243C()
{
  result = qword_1EB142030;
  if (!qword_1EB142030)
  {
    sub_1A478E98C(255, &qword_1EB141F10, sub_1A47A1160, sub_1A3E42C88, MEMORY[0x1E697E830]);
    sub_1A47A2530();
    sub_1A478EE38(&qword_1EB128A00, sub_1A3E42C88);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB142030);
  }

  return result;
}

unint64_t sub_1A47A2530()
{
  result = qword_1EB142038;
  if (!qword_1EB142038)
  {
    sub_1A47A1160();
    sub_1A478EE38(&qword_1EB142040, sub_1A47A11F4);
    sub_1A3E004D4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB142038);
  }

  return result;
}

uint64_t sub_1A47A25E4()
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
  __swift_allocate_value_buffer(v6, qword_1EB1D3038);
  __swift_project_value_buffer(v6, qword_1EB1D3038);
  sub_1A524C5B4();
  sub_1A5241244();
  (*(v1 + 104))(v3, *MEMORY[0x1E6968DF0], v0);
  return sub_1A5240BC4();
}

uint64_t (*static AddAssetsToAlbumIntent.title.modify())()
{
  if (qword_1EB1D3030 != -1)
  {
    swift_once();
  }

  v0 = sub_1A5240BB4();
  __swift_project_value_buffer(v0, qword_1EB1D3038);
  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_1A47A28D4@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EB1D3030 != -1)
  {
    swift_once();
  }

  v2 = sub_1A5240BB4();
  v3 = __swift_project_value_buffer(v2, qword_1EB1D3038);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t sub_1A47A2994(uint64_t a1)
{
  if (qword_1EB1D3030 != -1)
  {
    swift_once();
  }

  v2 = sub_1A5240BB4();
  v3 = __swift_project_value_buffer(v2, qword_1EB1D3038);
  swift_beginAccess();
  (*(*(v2 - 8) + 24))(v3, a1, v2);
  return swift_endAccess();
}

uint64_t static AddAssetsToAlbumIntent.parameterSummary.getter()
{
  sub_1A47A4C14(0, &qword_1EB142048, sub_1A47A2C84, &type metadata for AddAssetsToAlbumIntent, MEMORY[0x1E695A4A8]);
  MEMORY[0x1EEE9AC00](v0 - 8);
  sub_1A47A4C14(0, &qword_1EB142058, sub_1A47A2C84, &type metadata for AddAssetsToAlbumIntent, MEMORY[0x1E695A4A0]);
  MEMORY[0x1EEE9AC00](v1);
  sub_1A47A2C84();
  sub_1A5240314();
  sub_1A5240304();
  swift_getKeyPath();
  sub_1A47A2CFC();
  sub_1A52402F4();

  sub_1A5240304();
  swift_getKeyPath();
  sub_1A47A2D80();
  sub_1A52402F4();

  sub_1A5240304();
  sub_1A5240324();
  return sub_1A52402E4();
}

unint64_t sub_1A47A2C84()
{
  result = qword_1EB142050;
  if (!qword_1EB142050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB142050);
  }

  return result;
}

void sub_1A47A2CFC()
{
  if (!qword_1EB142060)
  {
    sub_1A3F57E84();
    v0 = sub_1A524ED44();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB142060);
    }
  }
}

void sub_1A47A2D80()
{
  if (!qword_1EB142068)
  {
    sub_1A47A4C14(255, &qword_1EB12C428, sub_1A3DB2FBC, &type metadata for AlbumEntity, MEMORY[0x1E695A1A0]);
    v0 = sub_1A524ED44();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB142068);
    }
  }
}

uint64_t AddAssetsToAlbumIntent.init()@<X0>(uint64_t *a1@<X8>)
{
  v42 = a1;
  sub_1A4120C34(0, &qword_1EB1260E8, MEMORY[0x1E6959F70]);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v38 = v29 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v37 = v29 - v4;
  v41 = sub_1A5240334();
  v44 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v41);
  v40 = v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1A5240184();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v36 = v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4120C34(0, &qword_1EB12B008, MEMORY[0x1E6968E10]);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v39 = v29 - v9;
  v10 = sub_1A5240BA4();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1A5241284();
  MEMORY[0x1EEE9AC00](v14 - 8);
  v15 = sub_1A524C624();
  MEMORY[0x1EEE9AC00](v15 - 8);
  v16 = sub_1A5240BB4();
  v32 = v16;
  v43 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v29[1] = v29 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3F57E84();
  v31 = v18;
  sub_1A524C5B4();
  sub_1A5241244();
  v19 = *MEMORY[0x1E6968DF0];
  v20 = *(v11 + 104);
  v30 = v10;
  v20(v13, v19, v10);
  v29[2] = v11 + 104;
  sub_1A5240BC4();
  sub_1A524C5B4();
  sub_1A5241244();
  v20(v13, v19, v10);
  v21 = v39;
  sub_1A5240BC4();
  v22 = *(v43 + 56);
  v43 += 56;
  v33 = v22;
  v22(v21, 0, 1, v16);
  *&v45 = 0;
  sub_1A5240174();
  v34 = *MEMORY[0x1E695A500];
  v23 = *(v44 + 104);
  v44 += 104;
  v35 = v23;
  v23(v40);
  sub_1A3F587A8();
  sub_1A3F58824();
  *v42 = sub_1A5240034();
  sub_1A47A4C14(0, &qword_1EB12C428, sub_1A3DB2FBC, &type metadata for AlbumEntity, MEMORY[0x1E695A1A0]);
  sub_1A524C5B4();
  sub_1A5241244();
  v24 = v30;
  v20(v13, v19, v30);
  sub_1A5240BC4();
  sub_1A524C5B4();
  sub_1A5241244();
  v20(v13, v19, v24);
  v25 = v39;
  sub_1A5240BC4();
  v33(v25, 0, 1, v32);
  v26 = sub_1A523FDB4();
  v45 = 0u;
  v46 = 0u;
  v27 = *(*(v26 - 8) + 56);
  v27(v37, 1, 1, v26);
  v27(v38, 1, 1, v26);
  v35(v40, v34, v41);
  sub_1A3DB3554();
  result = sub_1A523FFB4();
  v42[1] = result;
  return result;
}

uint64_t AddAssetsToAlbumIntent.perform()(uint64_t a1)
{
  *(v2 + 104) = a1;
  *(v2 + 112) = *v1;
  sub_1A524CC54();
  *(v2 + 128) = sub_1A524CC44();
  v4 = sub_1A524CBC4();
  *(v2 + 136) = v4;
  *(v2 + 144) = v3;

  return MEMORY[0x1EEE6DFA0](sub_1A47A3620, v4, v3);
}

uint64_t sub_1A47A3620()
{
  v2 = *(v0 + 112);
  v1 = *(v0 + 120);
  *(v0 + 80) = v2;
  *(v0 + 88) = v1;
  sub_1A523FF44();
  v4 = *(v0 + 16);
  v3 = *(v0 + 24);
  v5 = *(v0 + 32);
  v6 = *(v0 + 40);
  *(v0 + 48) = v4;
  *(v0 + 56) = v3;
  *(v0 + 64) = v5;
  *(v0 + 72) = v6;
  AlbumEntity.albumType.getter((v0 + 184));

  *(v0 + 185) = *(v0 + 184);
  v7 = AlbumEntity.CollectionType.rawValue.getter();
  v9 = v8;
  *(v0 + 152) = v8;
  sub_1A523FF44();
  v10 = *(*(v0 + 96) + 16);

  v11 = swift_task_alloc();
  *(v0 + 160) = v11;
  *(v11 + 16) = v2;
  *(v11 + 24) = v1;
  v12 = swift_task_alloc();
  *(v0 + 168) = v12;
  sub_1A47A2C84();
  *v12 = v0;
  v12[1] = sub_1A47A37BC;
  v13 = *(v0 + 104);

  return AppIntent.px_performWithLoggingAndAnalytics(intentName:category:count:_:)(v13, 0, 0, v7, v9, v10, 0, &unk_1A535FFC0);
}

uint64_t sub_1A47A37BC()
{
  v2 = *v1;
  *(*v1 + 176) = v0;

  v3 = *(v2 + 136);
  v4 = *(v2 + 144);
  if (v0)
  {
    v5 = sub_1A47A3974;
  }

  else
  {
    v5 = sub_1A47A3910;
  }

  return MEMORY[0x1EEE6DFA0](v5, v3, v4);
}

uint64_t sub_1A47A3910()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A47A3974()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A47A3A30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[14] = a2;
  v3[15] = a3;
  v3[13] = a1;
  sub_1A524CC54();
  v3[16] = sub_1A524CC44();
  v5 = sub_1A524CBC4();
  v3[17] = v5;
  v3[18] = v4;

  return MEMORY[0x1EEE6DFA0](sub_1A47A3ACC, v5, v4);
}

uint64_t sub_1A47A3ACC()
{
  v2 = *(v0 + 112);
  v1 = *(v0 + 120);
  sub_1A523FF44();
  v3 = *(v0 + 96);
  *(v0 + 152) = v3;
  sub_1A523FF44();
  v4 = *(v0 + 32);
  *(v0 + 48) = *(v0 + 16);
  *(v0 + 64) = v4;
  *(v0 + 80) = v2;
  *(v0 + 88) = v1;
  sub_1A47A2C84();
  v5 = AppIntent.px_intentName.getter();
  v7 = v6;
  *(v0 + 160) = v6;
  v8 = swift_task_alloc();
  *(v0 + 168) = v8;
  *v8 = v0;
  v8[1] = sub_1A47A3BEC;

  return sub_1A47A4294(v3, (v0 + 48), v5, v7);
}

uint64_t sub_1A47A3BEC()
{
  v2 = *v1;
  *(v2 + 176) = v0;

  v3 = *(v2 + 136);
  v4 = *(v2 + 144);
  if (v0)
  {
    v5 = sub_1A47A3974;
  }

  else
  {
    v5 = sub_1A47A3DB0;
  }

  return MEMORY[0x1EEE6DFA0](v5, v3, v4);
}

uint64_t sub_1A47A3DB0()
{

  sub_1A523FDD4();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A47A3E20(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1A3D60150;

  return sub_1A47A3A30(a1, v5, v4);
}

uint64_t sub_1A47A3ECC(uint64_t a1, _OWORD *a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1A3CA8098;

  return sub_1A47A4294(a1, a2, a3, a4);
}

void (*AddAssetsToAlbumIntent.assets.modify(uint64_t *a1))(void *)
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
  return sub_1A3F5CD2C;
}

double sub_1A47A4040@<D0>(_OWORD *a1@<X8>)
{
  sub_1A523FF44();
  result = *&v3;
  *a1 = v3;
  a1[1] = v4;
  return result;
}

uint64_t sub_1A47A407C(id *a1)
{
  v1 = *a1;

  sub_1A523FF54();
}

void (*AddAssetsToAlbumIntent.album.modify(uint64_t *a1))(void *)
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
  return sub_1A3DB6E78;
}

uint64_t sub_1A47A41BC(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1A3D60150;

  return AddAssetsToAlbumIntent.perform()(a1);
}

uint64_t sub_1A47A4258(uint64_t a1)
{
  v2 = sub_1A47A2C84();

  return MEMORY[0x1EEDB2D90](a1, v2);
}

uint64_t sub_1A47A4294(uint64_t a1, _OWORD *a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 24) = a3;
  *(v4 + 32) = a4;
  *(v4 + 16) = a1;
  v6 = sub_1A5246F24();
  *(v4 + 40) = v6;
  *(v4 + 48) = *(v6 - 8);
  *(v4 + 56) = swift_task_alloc();
  v7 = a2[1];
  *(v4 + 64) = *a2;
  *(v4 + 80) = v7;
  sub_1A524CC54();
  *(v4 + 96) = sub_1A524CC44();
  v9 = sub_1A524CBC4();
  *(v4 + 104) = v9;
  *(v4 + 112) = v8;

  return MEMORY[0x1EEE6DFA0](sub_1A47A4398, v9, v8);
}

void sub_1A47A4398()
{
  v1 = v0;
  if (!(PXAppIntentsAssets(for:)(*(v0 + 16)) >> 62))
  {
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  sub_1A3C52C70(0, &qword_1EB1265D0);
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A47A4898()
{
  v2 = *v1;
  *(*v1 + 144) = v0;

  if (v0)
  {
    v3 = *(v2 + 104);
    v4 = *(v2 + 112);
    v5 = sub_1A47A4A30;
  }

  else
  {

    v3 = *(v2 + 104);
    v4 = *(v2 + 112);
    v5 = sub_1A47A49B4;
  }

  return MEMORY[0x1EEE6DFA0](v5, v3, v4);
}

uint64_t sub_1A47A49B4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A47A4A30()
{
  v1 = v0[15];
  v2 = v0[16];

  v3 = v0[1];

  return v3();
}

unint64_t sub_1A47A4AAC()
{
  result = qword_1EB142070;
  if (!qword_1EB142070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB142070);
  }

  return result;
}

unint64_t sub_1A47A4B04()
{
  result = qword_1EB142078;
  if (!qword_1EB142078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB142078);
  }

  return result;
}

unint64_t sub_1A47A4B84()
{
  result = qword_1EB142080;
  if (!qword_1EB142080)
  {
    sub_1A47A4C14(255, &qword_1EB142088, sub_1A47A2C84, &type metadata for AddAssetsToAlbumIntent, MEMORY[0x1E695A488]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB142080);
  }

  return result;
}

void sub_1A47A4C14(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

void (*sub_1A47A4C7C(uint64_t *a1))(id **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_1A3FC589C;
}

uint64_t sub_1A47A4D0C()
{
  swift_getKeyPath();
  (*(*v0 + 312))();

  swift_beginAccess();
  return swift_unknownObjectWeakLoadStrong();
}

uint64_t sub_1A47A4D9C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 144))();
  *a2 = result;
  return result;
}

uint64_t sub_1A47A4DE8(id *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(**a2 + 152);
  v4 = *a1;
  return v3(v2);
}

void sub_1A47A4E40(void *a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    if (a1)
    {
      sub_1A3D63AC0();
      v5 = v4;
      v6 = sub_1A524DBF4();

      if ((v6 & 1) == 0)
      {
        goto LABEL_8;
      }

LABEL_6:
      swift_unknownObjectWeakAssign();

      return;
    }
  }

  else if (!a1)
  {
    goto LABEL_6;
  }

LABEL_8:
  KeyPath = swift_getKeyPath();
  v8 = MEMORY[0x1EEE9AC00](KeyPath);
  (*(*v1 + 320))(v8);
}

void (*sub_1A47A4FF4(uint64_t *a1))(void *a1)
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
  (*(*v1 + 312))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore30PhotosViewHeaderAccessoryModel___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A47A5120();
  sub_1A52415F4();

  v4[7] = sub_1A47A4C7C(v4);
  return sub_1A47A5114;
}

unint64_t sub_1A47A5120()
{
  result = qword_1EB125EA8;
  if (!qword_1EB125EA8)
  {
    type metadata accessor for PhotosViewHeaderAccessoryModel();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB125EA8);
  }

  return result;
}

uint64_t type metadata accessor for PhotosViewHeaderAccessoryModel()
{
  result = qword_1EB172590;
  if (!qword_1EB172590)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1A47A51C4()
{
  swift_getKeyPath();
  (*(*v0 + 312))();

  swift_beginAccess();
  return v0[3];
}

uint64_t sub_1A47A5248@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = (*(**a1 + 192))();
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_1A47A52F0(uint64_t a1, char a2)
{
  result = swift_beginAccess();
  if ((*(v2 + 32) & 1) == 0)
  {
    if ((a2 & 1) != 0 || *(v2 + 24) != *&a1)
    {
      goto LABEL_7;
    }

LABEL_6:
    *(v2 + 24) = *&a1;
    *(v2 + 32) = a2 & 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_6;
  }

LABEL_7:
  KeyPath = swift_getKeyPath();
  v7 = MEMORY[0x1EEE9AC00](KeyPath);
  v8 = v2;
  v9 = a1;
  v10 = a2 & 1;
  (*(*v2 + 320))(v7);
}

uint64_t sub_1A47A541C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  result = swift_beginAccess();
  *(v1 + 24) = v2;
  *(v1 + 32) = v3;
  return result;
}

void (*sub_1A47A5474(uint64_t *a1))(void *a1)
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
  (*(*v1 + 312))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore30PhotosViewHeaderAccessoryModel___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A47A5120();
  sub_1A52415F4();

  v4[7] = sub_1A3DE36A4();
  return sub_1A47A5594;
}

uint64_t sub_1A47A55A0()
{
  swift_getKeyPath();
  (*(*v0 + 312))();

  swift_beginAccess();
  return v0[5];
}

uint64_t sub_1A47A5624(uint64_t a1, char a2)
{
  result = swift_beginAccess();
  if ((*(v2 + 48) & 1) == 0)
  {
    if ((a2 & 1) != 0 || *(v2 + 40) != *&a1)
    {
      goto LABEL_7;
    }

LABEL_6:
    *(v2 + 40) = *&a1;
    *(v2 + 48) = a2 & 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_6;
  }

LABEL_7:
  KeyPath = swift_getKeyPath();
  v7 = MEMORY[0x1EEE9AC00](KeyPath);
  v8 = v2;
  v9 = a1;
  v10 = a2 & 1;
  (*(*v2 + 320))(v7);
}

uint64_t sub_1A47A5750()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  result = swift_beginAccess();
  *(v1 + 40) = v2;
  *(v1 + 48) = v3;
  return result;
}

void (*sub_1A47A57A8(uint64_t *a1))(void *a1)
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
  (*(*v1 + 312))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore30PhotosViewHeaderAccessoryModel___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A47A5120();
  sub_1A52415F4();

  v4[7] = sub_1A3DE3B2C();
  return sub_1A47A58C8;
}

uint64_t sub_1A47A58D4@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  (*(*v1 + 312))();

  swift_beginAccess();
  return sub_1A41810E4(v1 + 56, a1);
}

uint64_t sub_1A47A5A1C(uint64_t a1)
{
  swift_getKeyPath();
  v4 = v1;
  v5 = a1;
  (*(*v1 + 320))();

  return sub_1A47A6220(a1, sub_1A4181148);
}

uint64_t sub_1A47A5AD8()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  swift_beginAccess();
  sub_1A47A6280(v1, v2 + 56);
  return swift_endAccess();
}

void (*sub_1A47A5B38(uint64_t *a1))(void *a1)
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
  (*(*v1 + 312))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore30PhotosViewHeaderAccessoryModel___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A47A5120();
  sub_1A52415F4();

  v4[7] = sub_1A42664C8();
  return sub_1A47A5C58;
}

uint64_t sub_1A47A5D44()
{
  MEMORY[0x1A590F020](v0 + 16);
  sub_1A47A6220(v0 + 56, sub_1A4181148);
  v1 = OBJC_IVAR____TtC12PhotosUICore30PhotosViewHeaderAccessoryModel___observationRegistrar;
  v2 = sub_1A5241614();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_1A47A5E04()
{
  v0 = swift_allocObject();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  *(v0 + 24) = 0;
  *(v0 + 32) = 1;
  *(v0 + 40) = 0x405E000000000000;
  *(v0 + 48) = 0;
  *(v0 + 56) = 0u;
  *(v0 + 72) = 0u;
  *(v0 + 88) = 0;
  sub_1A5241604();
  return v0;
}

uint64_t sub_1A47A5E88()
{
  v0 = sub_1A47A5F64();
  v1 = *&v0[OBJC_IVAR____TtCE12PhotosUICoreCSo17PXPhotosViewModelP33_3919CC01ADE8813F95BB3011C5F2686B14AssociatedData_headerAccessoryModel];

  if (!v1)
  {
    type metadata accessor for PhotosViewHeaderAccessoryModel();
    v1 = swift_allocObject();
    swift_unknownObjectWeakInit();
    swift_unknownObjectWeakInit();
    *(v1 + 24) = 0;
    *(v1 + 32) = 1;
    *(v1 + 40) = 0x405E000000000000;
    *(v1 + 48) = 0;
    *(v1 + 56) = 0u;
    *(v1 + 72) = 0u;
    *(v1 + 88) = 0;
    sub_1A5241604();
    v2 = sub_1A47A5F64();
    *&v2[OBJC_IVAR____TtCE12PhotosUICoreCSo17PXPhotosViewModelP33_3919CC01ADE8813F95BB3011C5F2686B14AssociatedData_headerAccessoryModel] = v1;
  }

  return v1;
}

id sub_1A47A5F64()
{
  if (qword_1EB15A180 != -1)
  {
    swift_once();
  }

  v1 = qword_1EB15A188;
  if (objc_getAssociatedObject(v0, qword_1EB15A188))
  {
    sub_1A524E0B4();
    swift_unknownObjectRelease();
  }

  else
  {
    v5 = 0u;
    v6 = 0u;
  }

  v7[0] = v5;
  v7[1] = v6;
  if (!*(&v6 + 1))
  {
    sub_1A47A6220(v7, sub_1A3C35B84);
    goto LABEL_10;
  }

  _s14AssociatedDataCMa_10();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_10:
    v2 = [objc_allocWithZone(_s14AssociatedDataCMa_10()) init];
    objc_setAssociatedObject(v0, v1, v2, 1);
    return v2;
  }

  return v4;
}

uint64_t sub_1A47A6094()
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

id sub_1A47A6190()
{
  v2.receiver = v0;
  v2.super_class = _s14AssociatedDataCMa_10();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1A47A61F8()
{
  result = swift_slowAlloc();
  qword_1EB15A188 = result;
  return result;
}

uint64_t sub_1A47A6220(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1A47A6280(uint64_t a1, uint64_t a2)
{
  sub_1A4181148();
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A47A62E4(unsigned __int8 a1)
{
  v1 = a1;
  sub_1A3E75D84(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1A524A274();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v1 == 2)
  {
    (*(v6 + 104))(v9, *MEMORY[0x1E6980EF8], v5, v7);
    v10 = sub_1A524A154();
    (*(*(v10 - 8) + 56))(v4, 1, 1, v10);
    sub_1A524A184();
    v11 = sub_1A524A1C4();
    sub_1A441183C(v4);
    (*(v6 + 8))(v9, v5);
    return v11;
  }

  else
  {

    return sub_1A524A0E4();
  }
}

uint64_t sub_1A47A64B0(char a1)
{
  if (a1 == 2)
  {
    return sub_1A524B484();
  }

  else
  {
    return sub_1A524B3C4();
  }
}

unint64_t sub_1A47A64D4()
{
  result = qword_1EB142098;
  if (!qword_1EB142098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB142098);
  }

  return result;
}

unint64_t sub_1A47A652C()
{
  result = qword_1EB1420A0;
  if (!qword_1EB1420A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1420A0);
  }

  return result;
}

id sub_1A47A6594()
{
  v0 = sub_1A52473D4();
  MEMORY[0x1EEE9AC00](v0 - 8);
  type metadata accessor for MapOptionsBlurredBackgroundView();
  v1 = _s12PhotosUICore22PeopleRemovalUtilitiesCACycfC_0();
  if (MEMORY[0x1A590D320]())
  {
    v2 = v1;
    sub_1A52473C4();
    v4[3] = sub_1A52473E4();
    v4[4] = MEMORY[0x1E69DC388];
    __swift_allocate_boxed_opaque_existential_1(v4);
    sub_1A52473F4();
    sub_1A524DB24();
  }

  else
  {
    [v1 setAlpha_];
  }

  [v1 setTranslatesAutoresizingMaskIntoConstraints_];
  return v1;
}

id sub_1A47A6698()
{
  v0 = sub_1A52473D4();
  MEMORY[0x1EEE9AC00](v0 - 8);
  v1 = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
  v2 = [objc_opt_self() separatorColor];
  [v1 setBackgroundColor_];

  if (MEMORY[0x1A590D320]())
  {
    sub_1A52473C4();
    v4[3] = sub_1A52473E4();
    v4[4] = MEMORY[0x1E69DC388];
    __swift_allocate_boxed_opaque_existential_1(v4);
    sub_1A52473F4();
    sub_1A524DB24();
  }

  else
  {
    [v1 setAlpha_];
  }

  [v1 setTranslatesAutoresizingMaskIntoConstraints_];
  return v1;
}

id sub_1A47A6958()
{
  v0 = sub_1A52473D4();
  MEMORY[0x1EEE9AC00](v0 - 8);
  v1 = [objc_allocWithZone(MEMORY[0x1E69DCEF8]) init];
  if (MEMORY[0x1A590D320]())
  {
    v2 = v1;
    sub_1A52473C4();
    v7[3] = sub_1A52473E4();
    v7[4] = MEMORY[0x1E69DC388];
    __swift_allocate_boxed_opaque_existential_1(v7);
    sub_1A52473F4();
    sub_1A524DB24();
  }

  else
  {
    v3 = objc_opt_self();
    v4 = v1;
    v5 = [v3 clearColor];
    [v4 setBackgroundColor_];
  }

  [v1 setAlwaysBounceVertical_];
  [v1 setContentInsetAdjustmentBehavior_];
  [v1 setTranslatesAutoresizingMaskIntoConstraints_];
  return v1;
}

uint64_t sub_1A47A6ACC()
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_1A47A6B94(uint64_t *a1))(void **a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  v5 = *(v1 + OBJC_IVAR____TtC12PhotosUICore42MapOptionsChooseMapContainerViewController_viewModel);
  *a1 = v3;
  v6 = OBJC_IVAR____TtC12PhotosUICore28MapOptionsChooseMapViewModel_delegate;
  *(v3 + 32) = v5;
  *(v3 + 40) = v6;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_1A47A6C3C;
}

void sub_1A47A6C3C(void **a1)
{
  v1 = *a1;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();

  free(v1);
}

uint64_t (*sub_1A47A6CFC(uint64_t *a1))()
{
  a1[1] = *(v1 + OBJC_IVAR____TtC12PhotosUICore42MapOptionsChooseMapContainerViewController_viewModel);
  *a1 = sub_1A4951D80();
  return sub_1A47A6D50;
}

void sub_1A47A6D74()
{
  v1 = v0;
  v12 = sub_1A5249F84();
  v9 = *(v12 - 8);
  v10 = v9;
  MEMORY[0x1EEE9AC00](v12);
  v11 = v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for MapOptionsChooseMapView();
  MEMORY[0x1EEE9AC00](v3 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v8[2] = v8 - v5;
  v6 = OBJC_IVAR____TtC12PhotosUICore42MapOptionsChooseMapContainerViewController_headerBlurredBackgroundView;
  *(v1 + v6) = sub_1A47A6594();
  v7 = OBJC_IVAR____TtC12PhotosUICore42MapOptionsChooseMapContainerViewController_headerViewSeparator;
  *(v1 + v7) = sub_1A47A6698();
  sub_1A47A67D4();
}

void sub_1A47A72A0()
{
  if (!qword_1EB120888)
  {
    type metadata accessor for Key(255);
    sub_1A3C52C70(255, &qword_1EB12B160);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB120888);
    }
  }
}

void sub_1A47A7320(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_1A3FDA25C();
    sub_1A524E794();
  }

  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

void sub_1A47A76C4()
{
  v7.receiver = v0;
  v7.super_class = type metadata accessor for MapOptionsChooseMapContainerViewController();
  objc_msgSendSuper2(&v7, sel_viewDidLayoutSubviews);
  v1 = *&v0[OBJC_IVAR____TtC12PhotosUICore42MapOptionsChooseMapContainerViewController_contentLayoutGuideTopConstraint];
  if (v1)
  {
    v2 = *&v0[OBJC_IVAR____TtC12PhotosUICore42MapOptionsChooseMapContainerViewController_headerLabel];
    v3 = v1;
    [v2 frame];
    v5 = v4;
    [v2 frame];
    [v3 setConstant_];
  }
}

id sub_1A47A77B4()
{
  result = [v0 view];
  if (!result)
  {
    __break(1u);
    goto LABEL_12;
  }

  v2 = result;
  [result setPreservesSuperviewLayoutMargins_];

  v3 = *&v0[OBJC_IVAR____TtC12PhotosUICore42MapOptionsChooseMapContainerViewController_scrollView];
  v4 = OBJC_IVAR____TtC12PhotosUICore42MapOptionsChooseMapContainerViewController_scrollViewContentView;
  [v3 addSubview_];
  result = [v0 view];
  if (!result)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v5 = result;
  [result addSubview_];

  result = [v0 view];
  if (!result)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v6 = result;
  [result addSubview_];

  result = [v0 view];
  if (!result)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v7 = result;
  [result addSubview_];

  result = [v0 view];
  if (!result)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v8 = result;
  [result addSubview_];

  [*&v0[v4] addLayoutGuide_];
  v9 = *&v0[OBJC_IVAR____TtC12PhotosUICore42MapOptionsChooseMapContainerViewController_chooseMapViewController];
  result = [v9 view];
  if (!result)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v10 = result;
  v11 = [objc_opt_self() clearColor];
  [v10 setBackgroundColor_];

  [v0 addChildViewController_];
  v12 = *&v0[v4];
  result = [v9 view];
  if (!result)
  {
LABEL_17:
    __break(1u);
    return result;
  }

  v13 = result;
  [v12 addSubview_];

  return [v9 didMoveToParentViewController_];
}

void sub_1A47A7A20()
{
  sub_1A3C2E3D0(0, &qword_1EB126180, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1A5324BC0;
  v2 = OBJC_IVAR____TtC12PhotosUICore42MapOptionsChooseMapContainerViewController_scrollViewContentView;
  v3 = [*&v0[OBJC_IVAR____TtC12PhotosUICore42MapOptionsChooseMapContainerViewController_scrollViewContentView] topAnchor];
  v4 = *&v0[OBJC_IVAR____TtC12PhotosUICore42MapOptionsChooseMapContainerViewController_scrollView];
  v5 = [v4 topAnchor];
  v6 = [v3 constraintEqualToAnchor_];

  *(v1 + 32) = v6;
  v7 = [*&v0[v2] bottomAnchor];
  v8 = [v4 bottomAnchor];
  v9 = [v7 constraintEqualToAnchor_];

  *(v1 + 40) = v9;
  v10 = [*&v0[v2] leadingAnchor];
  v11 = [v4 leadingAnchor];
  v12 = [v10 constraintEqualToAnchor_];

  *(v1 + 48) = v12;
  v13 = [*&v0[v2] trailingAnchor];
  v14 = [v4 trailingAnchor];
  v15 = [v13 constraintEqualToAnchor_];

  *(v1 + 56) = v15;
  v16 = [v4 topAnchor];
  v17 = [v0 view];
  if (!v17)
  {
    __break(1u);
    goto LABEL_11;
  }

  v18 = v17;
  v19 = [v17 topAnchor];

  v20 = [v16 constraintEqualToAnchor_];
  *(v1 + 64) = v20;
  v21 = [v4 leadingAnchor];
  v22 = [v0 view];
  if (!v22)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v23 = v22;
  v24 = [v22 leadingAnchor];

  v25 = [v21 constraintEqualToAnchor_];
  *(v1 + 72) = v25;
  v26 = [v4 trailingAnchor];
  v27 = [v0 view];
  if (!v27)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v28 = v27;
  v29 = [v27 trailingAnchor];

  v30 = [v26 constraintEqualToAnchor_];
  *(v1 + 80) = v30;
  v31 = [v4 bottomAnchor];
  v32 = [v0 view];
  if (!v32)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v33 = v32;
  v34 = objc_opt_self();
  v35 = [v33 bottomAnchor];

  v36 = [v31 constraintEqualToAnchor_];
  *(v1 + 88) = v36;
  sub_1A3C52C70(0, &qword_1EB126A30);
  v37 = sub_1A524CA14();

  [v34 activateConstraints_];

  v38 = [*&v0[v2] widthAnchor];
  v39 = [v0 view];
  if (!v39)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v40 = v39;
  v41 = [v39 widthAnchor];

  v42 = [v38 constraintEqualToAnchor_];
  LODWORD(v43) = 1132068864;
  [v42 setPriority_];
  v44 = [*&v0[v2] heightAnchor];
  v45 = [v0 view];
  if (!v45)
  {
LABEL_15:
    __break(1u);
    return;
  }

  v46 = v45;
  v47 = [v45 heightAnchor];

  v48 = [v44 constraintLessThanOrEqualToAnchor_];
  LODWORD(v49) = 1132068864;
  [v48 setPriority_];
  v50 = swift_allocObject();
  *(v50 + 16) = xmmword_1A52F9DE0;
  *(v50 + 32) = v42;
  *(v50 + 40) = v48;
  v51 = v42;
  v52 = v48;
  v53 = sub_1A524CA14();

  [v34 activateConstraints_];
}

void sub_1A47A8034()
{
  v1 = *&v0[OBJC_IVAR____TtC12PhotosUICore42MapOptionsChooseMapContainerViewController_headerLabel];
  v2 = [v1 trailingAnchor];
  v3 = [v0 view];
  if (!v3)
  {
    __break(1u);
    goto LABEL_13;
  }

  v4 = v3;
  v5 = [v3 layoutMarginsGuide];

  v6 = [v5 trailingAnchor];
  v7 = [v2 constraintEqualToAnchor:v6 constant:-40.0];

  LODWORD(v8) = 1144750080;
  [v7 setPriority_];
  sub_1A3C2E3D0(0, &qword_1EB126180, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1A531C940;
  v10 = *&v0[OBJC_IVAR____TtC12PhotosUICore42MapOptionsChooseMapContainerViewController_headerBlurredBackgroundView];
  v11 = [v10 topAnchor];
  v12 = [v0 view];
  if (!v12)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v13 = v12;
  v14 = [v12 topAnchor];

  v15 = [v11 constraintEqualToAnchor_];
  *(v9 + 32) = v15;
  v16 = [v10 leadingAnchor];
  v17 = [v0 view];
  if (!v17)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v18 = v17;
  v65 = v7;
  v19 = [v17 leadingAnchor];

  v20 = [v16 constraintEqualToAnchor_];
  *(v9 + 40) = v20;
  v21 = [v10 trailingAnchor];
  v22 = [v0 view];
  if (!v22)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v23 = v22;
  v24 = objc_opt_self();
  v25 = [v23 trailingAnchor];

  v26 = [v21 constraintEqualToAnchor_];
  *(v9 + 48) = v26;
  v27 = [v10 bottomAnchor];
  v28 = [v1 bottomAnchor];
  v29 = [v27 constraintEqualToAnchor:v28 constant:18.0];

  *(v9 + 56) = v29;
  sub_1A3C52C70(0, &qword_1EB126A30);
  v30 = sub_1A524CA14();

  [v24 activateConstraints_];

  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_1A531C940;
  v32 = *&v0[OBJC_IVAR____TtC12PhotosUICore42MapOptionsChooseMapContainerViewController_headerViewSeparator];
  v33 = [v32 topAnchor];
  v34 = [v10 bottomAnchor];
  v35 = [v33 constraintEqualToAnchor_];

  *(v31 + 32) = v35;
  v36 = [v32 leadingAnchor];
  v37 = [v0 view];
  if (!v37)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v38 = v37;
  v39 = [v37 leadingAnchor];

  v40 = [v36 constraintEqualToAnchor_];
  *(v31 + 40) = v40;
  v41 = [v32 trailingAnchor];
  v42 = [v0 view];
  if (!v42)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v43 = v42;
  v44 = [v42 trailingAnchor];

  v45 = [v41 constraintEqualToAnchor_];
  *(v31 + 48) = v45;
  v46 = [v32 heightAnchor];
  v47 = [v0 px_screen];
  [v47 scale];
  v49 = v48;

  v50 = [v46 constraintEqualToConstant_];
  *(v31 + 56) = v50;
  v51 = sub_1A524CA14();

  [v24 activateConstraints_];

  v52 = swift_allocObject();
  *(v52 + 16) = xmmword_1A52FF960;
  v53 = [v1 topAnchor];
  v54 = [v0 view];
  if (!v54)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v55 = v54;
  v56 = [v54 topAnchor];

  v57 = [v53 constraintEqualToAnchor:v56 constant:19.0];
  *(v52 + 32) = v57;
  v58 = [v1 leadingAnchor];
  v59 = [v0 view];
  if (!v59)
  {
LABEL_19:
    __break(1u);
    return;
  }

  v60 = v59;
  v61 = [v59 layoutMarginsGuide];

  v62 = [v61 leadingAnchor];
  v63 = [v58 constraintEqualToAnchor_];

  *(v52 + 40) = v63;
  *(v52 + 48) = v65;
  v64 = v65;
  v66 = sub_1A524CA14();

  [v24 activateConstraints_];
}

void sub_1A47A87C0()
{
  v1 = *&v0[OBJC_IVAR____TtC12PhotosUICore42MapOptionsChooseMapContainerViewController_contentLayoutGuide];
  v2 = [v1 topAnchor];
  v3 = [*&v0[OBJC_IVAR____TtC12PhotosUICore42MapOptionsChooseMapContainerViewController_scrollViewContentView] topAnchor];
  v4 = [v2 constraintEqualToAnchor_];

  v5 = [v1 trailingAnchor];
  v6 = [v0 view];
  if (!v6)
  {
    __break(1u);
    goto LABEL_7;
  }

  v7 = v6;
  v8 = [v6 layoutMarginsGuide];

  v9 = [v8 trailingAnchor];
  v10 = [v5 constraintEqualToAnchor:v9 constant:-19.0];

  LODWORD(v11) = 1144750080;
  [v10 setPriority_];
  sub_1A3C2E3D0(0, &qword_1EB126180, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1A52FF960;
  *(v12 + 32) = v4;
  *(v12 + 40) = v10;
  v13 = v4;
  v14 = v10;
  v15 = [v1 leadingAnchor];
  v16 = [v0 view];
  if (!v16)
  {
LABEL_7:
    __break(1u);
    return;
  }

  v17 = v16;
  v18 = objc_opt_self();
  v19 = [v17 layoutMarginsGuide];

  v20 = [v19 leadingAnchor];
  v21 = [v15 constraintEqualToAnchor_];

  *(v12 + 48) = v21;
  sub_1A3C52C70(0, &qword_1EB126A30);
  v22 = sub_1A524CA14();

  [v18 activateConstraints_];

  v23 = *&v0[OBJC_IVAR____TtC12PhotosUICore42MapOptionsChooseMapContainerViewController_contentLayoutGuideTopConstraint];
  *&v0[OBJC_IVAR____TtC12PhotosUICore42MapOptionsChooseMapContainerViewController_contentLayoutGuideTopConstraint] = v13;
}

void sub_1A47A8AA8()
{
  v1 = [*&v0[OBJC_IVAR____TtC12PhotosUICore42MapOptionsChooseMapContainerViewController_chooseMapViewController] view];
  if (!v1)
  {
    return;
  }

  v2 = v1;
  [v1 setTranslatesAutoresizingMaskIntoConstraints_];
  sub_1A3C2E3D0(0, &qword_1EB126180, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1A531C940;
  v4 = [v2 topAnchor];
  v5 = [*&v0[OBJC_IVAR____TtC12PhotosUICore42MapOptionsChooseMapContainerViewController_contentLayoutGuide] bottomAnchor];
  v6 = [v4 constraintEqualToAnchor:v5 constant:25.0];

  *(v3 + 32) = v6;
  v7 = [v2 leadingAnchor];
  v8 = [v0 view];
  if (!v8)
  {
    __break(1u);
    goto LABEL_9;
  }

  v9 = v8;
  v10 = [v8 layoutMarginsGuide];

  v11 = [v10 leadingAnchor];
  v12 = [v7 constraintEqualToAnchor_];

  *(v3 + 40) = v12;
  v13 = [v2 trailingAnchor];
  v14 = [v0 view];
  if (!v14)
  {
LABEL_9:
    __break(1u);
    return;
  }

  v15 = v14;
  v16 = objc_opt_self();
  v17 = [v15 layoutMarginsGuide];

  v18 = [v17 trailingAnchor];
  v19 = [v13 constraintEqualToAnchor_];

  *(v3 + 48) = v19;
  v20 = [v2 bottomAnchor];
  v21 = [*&v0[OBJC_IVAR____TtC12PhotosUICore42MapOptionsChooseMapContainerViewController_scrollViewContentView] bottomAnchor];
  v22 = [v20 constraintEqualToAnchor_];

  *(v3 + 56) = v22;
  sub_1A3C52C70(0, &qword_1EB126A30);
  v23 = sub_1A524CA14();

  [v16 activateConstraints_];
}

id sub_1A47A8E3C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MapOptionsChooseMapContainerViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_1A47A8FDC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1A47A947C();
    v3 = sub_1A524E794();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      v7 = v5;
      result = sub_1A3C8BF74(v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v7;
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
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

uint64_t sub_1A47A90C8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MapOptionsChooseMapView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1A47A912C()
{
  if (!qword_1EB1420F8)
  {
    type metadata accessor for MapOptionsChooseMapView();
    sub_1A47A91C0(&qword_1EB142100, type metadata accessor for MapOptionsChooseMapView);
    v0 = sub_1A5249654();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB1420F8);
    }
  }
}

uint64_t sub_1A47A91C0(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1A47A9208(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_1A47A926C()
{
  result = qword_1EB142128;
  if (!qword_1EB142128)
  {
    sub_1A47A9208(255, &qword_1EB142120, MEMORY[0x1E697CC60], MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB142128);
  }

  return result;
}

uint64_t sub_1A47A9318(uint64_t a1)
{
  v2 = type metadata accessor for MapOptionsChooseMapView();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1A47A9374()
{
  v1 = OBJC_IVAR____TtC12PhotosUICore42MapOptionsChooseMapContainerViewController_headerBlurredBackgroundView;
  *(v0 + v1) = sub_1A47A6594();
  v2 = OBJC_IVAR____TtC12PhotosUICore42MapOptionsChooseMapContainerViewController_headerViewSeparator;
  *(v0 + v2) = sub_1A47A6698();
  sub_1A47A67D4();
}

void sub_1A47A947C()
{
  if (!qword_1EB1203F0)
  {
    type metadata accessor for Key(255);
    sub_1A3C52C70(255, &qword_1EB12B160);
    sub_1A47A91C0(&unk_1EB1208B0, type metadata accessor for Key);
    v0 = sub_1A524E7A4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB1203F0);
    }
  }
}

__n128 sub_1A47A9538@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  *(a8 + 16) = a2;
  *(a8 + 24) = a3;
  *a8 = a1;
  *(a8 + 8) = a4;
  result = *a5;
  v9 = *(a5 + 16);
  *(a8 + 32) = *a5;
  *(a8 + 48) = v9;
  *(a8 + 64) = *(a5 + 32);
  *(a8 + 72) = a6;
  *(a8 + 80) = a7;
  return result;
}

uint64_t LemonadePhotosGridConfiguration.hash(into:)()
{
  sub_1A524DC04();
  v1 = *(v0 + 8);
  sub_1A524ECB4();
  if (v1)
  {
    v2 = v1;
    sub_1A524DC04();
  }

  return sub_1A524ECB4();
}

uint64_t LemonadePhotosGridConfiguration.hashValue.getter()
{
  sub_1A524EC94();
  sub_1A524DC04();
  v1 = *(v0 + 8);
  sub_1A524ECB4();
  if (v1)
  {
    v2 = v1;
    sub_1A524DC04();
  }

  sub_1A524ECB4();
  return sub_1A524ECE4();
}

uint64_t sub_1A47A967C()
{
  sub_1A524DC04();
  v1 = *(v0 + 8);
  sub_1A524ECB4();
  if (v1)
  {
    v2 = v1;
    sub_1A524DC04();
  }

  return sub_1A524ECB4();
}

uint64_t sub_1A47A96FC()
{
  sub_1A524EC94();
  sub_1A524DC04();
  v1 = *(v0 + 8);
  sub_1A524ECB4();
  if (v1)
  {
    v2 = v1;
    sub_1A524DC04();
  }

  sub_1A524ECB4();
  return sub_1A524ECE4();
}

id sub_1A47A9798(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *(a1 + 72);
  v6 = v5;
  ShouldReverseSortOrderInDetails = PHCollection.px_containerShouldReverseSortOrderInDetailsView.getter();
  v8 = sub_1A3C6E9EC();
  v9 = sub_1A3C5A374();
  v10 = sub_1A3C30368();
  v11 = sub_1A3C5A374();
  v12 = sub_1A3C5A374();
  v13 = sub_1A3C5A374();
  PhotosViewConfigurationContext.init(selectionCoordinator:loadingStatusManager:basePredicate:initialFilterPredicate:sortDescriptors:contentStartingPosition:noContentPlaceholderType:shouldReverseOrder:curationContext:isForSmartAlbumAllPhotosCollection:allowsSwipeToSelect:isVerySlowFetch:wantsNumberedSelectionStyle:startsInSelectMode:photosViewDelegate:pickerClientBundleIdentifier:)(v5, 0, 0, 0, 0, 2, v8, ShouldReverseSortOrderInDetails & 1, v38, 1, v9 & 1, v10 & 1, v11 & 1, v12 & 1, v13 & 1, 0, 0, 0);
  v14 = *(a1 + 8);
  if (v14)
  {
    v15 = *(a1 + 8);
    goto LABEL_11;
  }

  if ([v4 px_isImportHistoryCollection])
  {
    v16 = sub_1A4728C68(v4);
LABEL_10:
    v15 = v16;
    goto LABEL_11;
  }

  if ([v4 px_isAllLibraryDuplicatesSmartAlbum])
  {
    v17 = PXDeduplicationPhotosViewConfiguration(v4, v38[0], v39);
LABEL_7:
    v16 = v17;
    goto LABEL_10;
  }

  if ([v4 px_isRecoveredSmartAlbum])
  {
    v16 = sub_1A4728E00(v4);
    goto LABEL_10;
  }

  v22 = *(a1 + 16);
  if (v22)
  {
    v23 = *(a1 + 24);

    v25 = v22(v24);
    v15 = PXPhotosViewConfigurationForAssetCollectionWithExistingAssetsFetchResult(v4, v25, 0, v38[0], v40);
    sub_1A3C784D4(v22, v23);
  }

  else
  {
    if (!a2 || (v26 = *(*(a2 + OBJC_IVAR____TtC12PhotosUICore25LemonadeNavigationContext_photoLibraryContext) + 40)) == 0)
    {
      v17 = PXPhotosViewConfigurationForAssetCollectionWithReverseSortOrder(v4, 0, v39, v40, v38[0]);
      goto LABEL_7;
    }

    v27 = MEMORY[0x1E69E7D40];
    v28 = *((*MEMORY[0x1E69E7D40] & *v26) + 0x258);
    v29 = v26;
    v30 = v28();
    v31 = v39;
    v32 = v40;
    v33 = v38[0];
    v34 = (*((*v27 & *v29) + 0x318))();
    v15 = PXPhotosViewConfigurationForImagePickerWithAssetCollection(v4, v30, v31, v32, v33, v34 & 1);
  }

LABEL_11:
  sub_1A3F1B4DC(a1 + 32, &v35, &qword_1EB128D10, &qword_1EB128D20);
  if (v36)
  {
    sub_1A3C34460(&v35, v37);
    sub_1A3C341C8(v37, &v35);
    v18 = v14;
    sub_1A524D864();
  }

  v19 = v14;
  sub_1A3EA8D18(&v35, &qword_1EB128D10, &qword_1EB128D20);
  v20 = [v15 photosAppConfiguration];
  [v20 setSearchQueryMatchInfo_];

  [v15 setContentStartingPosition_];
  sub_1A42EC8EC(v38);
  return v15;
}

id sub_1A47A9B44(void **a1, char *a2, uint64_t a3)
{
  v5 = *a2;
  v6 = *a1;
  result = sub_1A472ED80(*a1);
  if (!result)
  {
    v8 = sub_1A47A9798(a1, a3);
    if (!a3 || !sub_1A4654080())
    {
      v17 = sub_1A3C52C70(0, &qword_1EB126AC0);
      v18 = sub_1A47AC3BC();
      v16[0] = v6;
      v15 = v5;
      v14 = 3;
      v13 = v6;
      PXPhotosViewConfiguration.adjustedForLemonadePhotosGrid(item:navigationType:navigationContext:initialPositionDetent:disallowedBehaviors:presentationEnvironment:)(v16, &v15, a3, &v14, 0, 0);
    }

    v17 = sub_1A3C52C70(0, &qword_1EB126AC0);
    v18 = sub_1A47AC3BC();
    v16[0] = v6;
    v15 = 3;
    v9 = v6;
    v10 = _sSo25PXPhotosViewConfigurationC12PhotosUICoreE025adjustedForLemonadePickerD4Grid4item17navigationContext21initialPositionDetent19disallowedBehaviors23presentationEnvironmentAB0D12UIFoundation0D4Item_pSg_AC0h10NavigationM0CSgAC0h7DetailsB21ScrollDetentsProviderC0P10IdentifierOSgSo0abc7AllowedR0VSo014PXPresentationT0_pSgtF_0(v16, a3, &v15, 0);
    sub_1A3EA8D18(v16, &qword_1EB128C80, &qword_1EB128C90);
    v11 = [objc_allocWithZone(PXPhotosUIViewController) initWithConfiguration_];
    v12 = [v9 localizedTitle];
    [v11 setTitle_];

    return v11;
  }

  return result;
}

void PXPhotosViewConfiguration.adjustedForLemonadePhotosGrid(item:navigationType:navigationContext:initialPositionDetent:disallowedBehaviors:presentationEnvironment:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = a6;
  v7 = a5;
  v8 = a1;
  sub_1A5245BA4();
}

__n128 sub_1A47AB4A8@<Q0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v4 = *a2;
  v5 = *(a1 + 48);
  *(a4 + 32) = *(a1 + 32);
  *(a4 + 48) = v5;
  *(a4 + 64) = *(a1 + 64);
  *(a4 + 80) = *(a1 + 80);
  result = *a1;
  v7 = *(a1 + 16);
  *a4 = *a1;
  *(a4 + 16) = v7;
  *(a4 + 88) = v4;
  *(a4 + 96) = a3;
  return result;
}

uint64_t sub_1A47AB50C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1A47ACD20();

  return MEMORY[0x1EEDDB778](a1, a2, a3, v6);
}

uint64_t sub_1A47AB570(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1A47ACD20();

  return MEMORY[0x1EEDDB740](a1, a2, a3, v6);
}

void sub_1A47AB5D4()
{
  sub_1A47ACD20();
  sub_1A5249ED4();
  __break(1u);
}

id sub_1A47AB5FC(void *a1)
{
  v1 = PXSoftLinkedProtoPhotosViewBannerController(a1);

  return v1;
}

uint64_t sub_1A47AB780()
{
  v0 = PHObject.value.getter();
  objc_opt_self();
  v1 = swift_dynamicCastObjCClass();
  v2 = v1;
  if (v1)
  {
    if ([v1 px_isPrivacySensitiveAlbum] & 1) != 0 || objc_msgSend(v2, sel_px_isAllLibraryDuplicatesSmartAlbum) || (objc_msgSend(v2, sel_px_isDuplicatesAlbum) & 1) != 0 || (objc_msgSend(v2, sel_px_isImportHistoryCollection) & 1) != 0 || (objc_msgSend(v2, sel_px_isSharedLibrarySharingSuggestion))
    {
      v2 = 1;
    }

    else
    {
      v2 = [v2 px_isSharedLibrarySharingSuggestionsSmartAlbum];
    }
  }

  return v2;
}

uint64_t sub_1A47AB850(SEL *a1)
{
  v2 = PHObject.value.getter();
  objc_opt_self();
  v3 = swift_dynamicCastObjCClass();
  if (v3)
  {
    v4 = [v3 *a1];

    return v4 ^ 1;
  }

  else
  {

    return 1;
  }
}

id sub_1A47AB8C0(SEL *a1)
{
  v2 = PHObject.value.getter();
  objc_opt_self();
  v3 = swift_dynamicCastObjCClass();
  if (v3)
  {
    v4 = [v3 *a1];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

uint64_t sub_1A47ABAA4(uint64_t a1)
{
  v1 = sub_1A47ABB84(a1);
  v2 = PHObject.value.getter();
  objc_opt_self();
  v3 = swift_dynamicCastObjCClass();
  v4 = v3;
  if (v3)
  {
    if ([v3 px_isPrivacySensitiveAlbum] & 1) != 0 || (objc_msgSend(v4, sel_px_isAllLibraryDuplicatesSmartAlbum) & 1) != 0 || (objc_msgSend(v4, sel_px_isDuplicatesAlbum) & 1) != 0 || (objc_msgSend(v4, sel_px_isImportHistoryCollection) & 1) != 0 || (objc_msgSend(v4, sel_px_isSharedLibrarySharingSuggestion))
    {
      v4 = 1;
    }

    else
    {
      v4 = [v4 px_isSharedLibrarySharingSuggestionsSmartAlbum];
    }
  }

  return v4;
}

uint64_t sub_1A47ABB84(uint64_t a1)
{
  v29 = *(a1 + 32);
  v28 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v3 = &v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = *(v4 + 24);
  v26 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v7 + 16);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v24 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v15);
  v18 = &v24 - v17;
  v19 = *(v13 + 16);
  v25 = v20;
  v19(&v24 - v17, v16);
  v21 = (*(v13 + 88))(v18, a1);
  if (v21 == *off_1E7720FE8)
  {
    (*(v13 + 96))(v18, a1);
    (*(v9 + 32))(v11, v18, v8);
    sub_1A5246234();
  }

  if (v21 == *off_1E7720FF8)
  {
    (*(v13 + 96))(v18, a1);
    (*(v26 + 32))(v6, v18, v27);
    sub_1A5246234();
  }

  if (v21 == *off_1E7720FF0)
  {
    (*(v13 + 96))(v18, a1);
    (*(v28 + 32))(v3, v18, v29);
    sub_1A5246234();
  }

  v30 = 0;
  v31 = 0xE000000000000000;
  sub_1A524E404();

  v30 = 0xD00000000000001ALL;
  v31 = 0x80000001A53BD470;
  (v19)(v24, v25, a1);
  v22 = sub_1A524C714();
  MEMORY[0x1A5907B60](v22);

  result = sub_1A524E6E4();
  __break(1u);
  return result;
}

uint64_t sub_1A47AC004(uint64_t a1, SEL *a2)
{
  v3 = sub_1A47ABB84(a1);
  v4 = PHObject.value.getter();
  objc_opt_self();
  v5 = swift_dynamicCastObjCClass();
  if (v5)
  {
    v6 = [v5 *a2];

    return v6 ^ 1;
  }

  else
  {

    return 1;
  }
}

id sub_1A47AC080(uint64_t a1, SEL *a2)
{
  v3 = sub_1A47ABB84(a1);
  v4 = PHObject.value.getter();
  objc_opt_self();
  v5 = swift_dynamicCastObjCClass();
  if (v5)
  {
    v6 = [v5 *a2];
    v7 = v4;
    v4 = v3;
  }

  else
  {
    v6 = 0;
    v7 = v3;
  }

  return v6;
}

uint64_t sub_1A47AC200()
{
  sub_1A3C52C70(0, &qword_1EB126B80);
  sub_1A3C52C70(0, &qword_1EB126590);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_1A524DC64();
  return sub_1A524D2E4();
}

uint64_t _s12PhotosUICore08LemonadeA17GridConfigurationV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  sub_1A3C52C70(0, &qword_1EB12B160);
  if (sub_1A524DBF4())
  {
    v4 = *(a1 + 8);
    v5 = *(a2 + 8);
    if (v4)
    {
      if (v5)
      {
        sub_1A3C52C70(0, &qword_1EB126850);
        v6 = v5;
        v7 = v4;
        v8 = sub_1A524DBF4();

        if (v8)
        {
          return (*(a1 + 16) != 0) ^ (*(a2 + 16) == 0);
        }
      }
    }

    else if (!v5)
    {
      return (*(a1 + 16) != 0) ^ (*(a2 + 16) == 0);
    }
  }

  return 0;
}

unint64_t sub_1A47AC3BC()
{
  result = qword_1EB1421A8;
  if (!qword_1EB1421A8)
  {
    sub_1A3C52C70(255, &qword_1EB126AC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1421A8);
  }

  return result;
}

void *_sSo25PXPhotosViewConfigurationC12PhotosUICoreE025adjustedForLemonadePickerD4Grid4item17navigationContext21initialPositionDetent19disallowedBehaviors23presentationEnvironmentAB0D12UIFoundation0D4Item_pSg_AC0h10NavigationM0CSgAC0h7DetailsB21ScrollDetentsProviderC0P10IdentifierOSgSo0abc7AllowedR0VSo014PXPresentationT0_pSgtF_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  [v5 copy];
  sub_1A524E0B4();
  swift_unknownObjectRelease();
  sub_1A3C52C70(0, &qword_1EB126850);
  swift_dynamicCast();
  v9 = v27;
  if (a2)
  {
    v10 = *(*(a2 + OBJC_IVAR____TtC12PhotosUICore25LemonadeNavigationContext_photoLibraryContext) + 40);
    if (v10)
    {
      v11 = MEMORY[0x1E69E7D40];
      v12 = *((*MEMORY[0x1E69E7D40] & *v10) + 0x1F8);
      v13 = v10;
      if (v12())
      {
        v14 = 2;
      }

      else
      {
        v14 = 0;
      }

      v15 = [v27 setWantsNumberedSelectionStyle_];
      (*((*v11 & *v13) + 0x1E0))(v15);
      if (v16)
      {
        v17 = sub_1A524C634();
      }

      else
      {
        v17 = 0;
      }

      [v27 setPickerClientBundleIdentifier_];

      v18 = [v27 setDisableAutoPlaybackInOneUp_];
      (*((*v11 & *v13) + 0x210))(v30, v18);
      LOBYTE(v27) = v30[0];
      v25[0] = 1;
      if (static PickerMode.== infix(_:_:)(&v27, v25))
      {
        [v9 setWantsSingleRowScrollingLayout_];
        [v9 setSectionBodyStyle_];
        [v9 setContentMode_];
      }
    }
  }

  [v9 setStartsInSelectMode_];
  [v9 setLowMemoryMode_];
  [v9 setSectionBodyStyle_];
  [v9 setScrollIndicatorStyle_];
  [v9 setIgnoreFilterPredicateAssert_];
  [v9 setIgnoreFilterStateWhenNotFiltering_];
  [v9 setNavBarStyle_];
  sub_1A3F1B4DC(a1, v25, &qword_1EB128C80, &qword_1EB128C90);
  if (!v26)
  {
    sub_1A3EA8D18(v25, &qword_1EB128C80, &qword_1EB128C90);
    v27 = 0u;
    v28 = 0u;
    v29 = 0;
    goto LABEL_19;
  }

  sub_1A3C34400(0, &qword_1EB128C90);
  sub_1A3C34400(0, &qword_1EB12AD10);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v29 = 0;
    v27 = 0u;
    v28 = 0u;
    goto LABEL_19;
  }

  if (!*(&v28 + 1))
  {
LABEL_19:
    sub_1A3EA8D18(&v27, &unk_1EB12D9E8, &qword_1EB12AD10);
    goto LABEL_20;
  }

  sub_1A3C34460(&v27, v30);
  v19 = v31;
  v20 = v32;
  __swift_project_boxed_opaque_existential_1(v30, v31);
  if ((*(v20 + 64))(v19, v20))
  {
    [v9 setSectionBodyStyle_];
    __swift_destroy_boxed_opaque_existential_0(v30);
    goto LABEL_23;
  }

  __swift_destroy_boxed_opaque_existential_0(v30);
LABEL_20:
  sub_1A3F1B4DC(a1, &v27, &qword_1EB128C80, &qword_1EB128C90);
  if (*(&v28 + 1))
  {
    sub_1A3C34460(&v27, v30);
    __swift_project_boxed_opaque_existential_1(v30, v31);
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
    sub_1A5246234();
  }

  sub_1A3EA8D18(&v27, &qword_1EB128C80, &qword_1EB128C90);
  [v9 setSectionBodyStyle_];
LABEL_23:
  [v9 setAllowedBehaviors_];
  [v9 setAllowedBehaviors_];
  [v9 setAllowedBehaviors_];
  [v9 setAllowedBehaviors_];
  v22 = [v9 allowedBehaviors];
  v23 = -1;
  if ((v22 & a4) != 0)
  {
    v23 = ~a4;
  }

  [v9 setAllowedBehaviors_];
  return v9;
}

uint64_t sub_1A47ACB28(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1A47ACBC0()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    [Strong dismissViewControllerAnimated:1 completion:0];
  }
}

unint64_t sub_1A47ACC24()
{
  result = qword_1EB1421B0;
  if (!qword_1EB1421B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1421B0);
  }

  return result;
}

unint64_t sub_1A47ACC7C()
{
  result = qword_1EB12AD00;
  if (!qword_1EB12AD00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12AD00);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_So13PHFetchResultCySo7PHAssetCGIego_Sg(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t get_enum_tag_for_layout_string_18PhotosUIFoundation0A20CollectionTitleModel_pSg(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

unint64_t sub_1A47ACD20()
{
  result = qword_1EB1421B8;
  if (!qword_1EB1421B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1421B8);
  }

  return result;
}

uint64_t sub_1A47ACD8C()
{
  swift_getKeyPath();
  (*(*v0 + 1656))();

  swift_beginAccess();
  return v0[16];
}

uint64_t sub_1A47ACE0C@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 336))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_1A47ACEB4(char a1)
{
  v2 = a1 & 1;
  result = swift_beginAccess();
  if (v1[16] == v2)
  {
    v1[16] = v2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v5 = MEMORY[0x1EEE9AC00](KeyPath);
    v6 = v1;
    v7 = v2;
    (*(*v1 + 1664))(v5);
  }

  return result;
}

void (*sub_1A47ACFB0(uint64_t *a1))(void *a1)
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
  (*(*v1 + 1656))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore18TimelineEngineSpec___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A47B42BC(&qword_1EB1421C0, type metadata accessor for TimelineEngineSpec);
  sub_1A52415F4();

  v4[7] = sub_1A3E0A030();
  return sub_1A47AD100;
}

uint64_t type metadata accessor for TimelineEngineSpec()
{
  result = qword_1EB1D3590;
  if (!qword_1EB1D3590)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1A47AD158()
{
  swift_getKeyPath();
  (*(*v0 + 1656))();

  swift_beginAccess();
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A47AD1DC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 384))();
  *a2 = result;
  return result;
}

void (*sub_1A47AD3B4(uint64_t *a1))(void *a1)
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
  (*(*v1 + 1656))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore18TimelineEngineSpec___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A47B42BC(&qword_1EB1421C0, type metadata accessor for TimelineEngineSpec);
  sub_1A52415F4();

  v4[7] = sub_1A3DE36A4();
  return sub_1A47AD504;
}

double sub_1A47AD510()
{
  swift_getKeyPath();
  (*(*v0 + 1656))();

  swift_beginAccess();
  return v0[4];
}

uint64_t sub_1A47AD634(double a1)
{
  result = swift_beginAccess();
  if (v1[4] == a1)
  {
    v1[4] = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v5 = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v1 + 1664))(v5);
  }

  return result;
}

void (*sub_1A47AD738(uint64_t *a1))(void *a1)
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
  (*(*v1 + 1656))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore18TimelineEngineSpec___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A47B42BC(&qword_1EB1421C0, type metadata accessor for TimelineEngineSpec);
  sub_1A52415F4();

  v4[7] = sub_1A4504FF8();
  return sub_1A47AD888;
}

double sub_1A47AD894()
{
  swift_getKeyPath();
  (*(*v0 + 1656))();

  swift_beginAccess();
  return v0[5];
}

uint64_t sub_1A47AD9B8(double a1)
{
  result = swift_beginAccess();
  if (v1[5] == a1)
  {
    v1[5] = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v5 = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v1 + 1664))(v5);
  }

  return result;
}

void (*sub_1A47ADABC(uint64_t *a1))(void *a1)
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
  (*(*v1 + 1656))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore18TimelineEngineSpec___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A47B42BC(&qword_1EB1421C0, type metadata accessor for TimelineEngineSpec);
  sub_1A52415F4();

  v4[7] = sub_1A3DE3B2C();
  return sub_1A47ADC0C;
}

double sub_1A47ADC68()
{
  swift_getKeyPath();
  (*(*v0 + 1656))();

  swift_beginAccess();
  return v0[6];
}

uint64_t sub_1A47ADD8C(double a1)
{
  result = swift_beginAccess();
  if (v1[6] == a1)
  {
    v1[6] = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v5 = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v1 + 1664))(v5);
  }

  return result;
}

void (*sub_1A47ADE90(uint64_t *a1))(void *a1)
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
  (*(*v1 + 1656))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore18TimelineEngineSpec___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A47B42BC(&qword_1EB1421C0, type metadata accessor for TimelineEngineSpec);
  sub_1A52415F4();

  v4[7] = sub_1A47ADC18();
  return sub_1A47ADFE0;
}

double sub_1A47ADFEC()
{
  swift_getKeyPath();
  (*(*v0 + 1656))();

  swift_beginAccess();
  return v0[7];
}

uint64_t sub_1A47AE110(double a1)
{
  result = swift_beginAccess();
  if (v1[7] == a1)
  {
    v1[7] = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v5 = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v1 + 1664))(v5);
  }

  return result;
}

void (*sub_1A47AE214(uint64_t *a1))(void *a1)
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
  (*(*v1 + 1656))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore18TimelineEngineSpec___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A47B42BC(&qword_1EB1421C0, type metadata accessor for TimelineEngineSpec);
  sub_1A52415F4();

  v4[7] = sub_1A3DE3FB4();
  return sub_1A47AE364;
}

double sub_1A47AE370()
{
  swift_getKeyPath();
  (*(*v0 + 1656))();

  swift_beginAccess();
  return v0[8];
}

uint64_t sub_1A47AE494(double a1)
{
  result = swift_beginAccess();
  if (v1[8] == a1)
  {
    v1[8] = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v5 = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v1 + 1664))(v5);
  }

  return result;
}

void (*sub_1A47AE598(uint64_t *a1))(void *a1)
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
  (*(*v1 + 1656))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore18TimelineEngineSpec___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A47B42BC(&qword_1EB1421C0, type metadata accessor for TimelineEngineSpec);
  sub_1A52415F4();

  v4[7] = sub_1A45872A4();
  return sub_1A47AE6E8;
}

double sub_1A47AE6F4()
{
  swift_getKeyPath();
  (*(*v0 + 1656))();

  swift_beginAccess();
  return v0[9];
}

uint64_t sub_1A47AE818(double a1)
{
  result = swift_beginAccess();
  if (v1[9] == a1)
  {
    v1[9] = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v5 = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v1 + 1664))(v5);
  }

  return result;
}

void (*sub_1A47AE91C(uint64_t *a1))(void *a1)
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
  (*(*v1 + 1656))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore18TimelineEngineSpec___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A47B42BC(&qword_1EB1421C0, type metadata accessor for TimelineEngineSpec);
  sub_1A52415F4();

  v4[7] = sub_1A43E1604();
  return sub_1A47AEA6C;
}

double sub_1A47AEA78()
{
  swift_getKeyPath();
  (*(*v0 + 1656))();

  swift_beginAccess();
  return v0[10];
}

uint64_t sub_1A47AEB9C(double a1)
{
  result = swift_beginAccess();
  if (v1[10] == a1)
  {
    v1[10] = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v5 = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v1 + 1664))(v5);
  }

  return result;
}

void (*sub_1A47AECA0(uint64_t *a1))(void *a1)
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
  (*(*v1 + 1656))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore18TimelineEngineSpec___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A47B42BC(&qword_1EB1421C0, type metadata accessor for TimelineEngineSpec);
  sub_1A52415F4();

  v4[7] = sub_1A4587924();
  return sub_1A47AEDF0;
}

double sub_1A47AEE4C()
{
  swift_getKeyPath();
  (*(*v0 + 1656))();

  swift_beginAccess();
  return v0[11];
}

uint64_t sub_1A47AEF70(double a1)
{
  result = swift_beginAccess();
  if (v1[11] == a1)
  {
    v1[11] = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v5 = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v1 + 1664))(v5);
  }

  return result;
}

void (*sub_1A47AF074(uint64_t *a1))(void *a1)
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
  (*(*v1 + 1656))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore18TimelineEngineSpec___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A47B42BC(&qword_1EB1421C0, type metadata accessor for TimelineEngineSpec);
  sub_1A52415F4();

  v4[7] = sub_1A47AEDFC();
  return sub_1A47AF1C4;
}

double sub_1A47AF1D0()
{
  swift_getKeyPath();
  (*(*v0 + 1656))();

  swift_beginAccess();
  return v0[12];
}

uint64_t sub_1A47AF2F4(double a1)
{
  result = swift_beginAccess();
  if (v1[12] == a1)
  {
    v1[12] = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v5 = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v1 + 1664))(v5);
  }

  return result;
}

void (*sub_1A47AF3F8(uint64_t *a1))(void *a1)
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
  (*(*v1 + 1656))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore18TimelineEngineSpec___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A47B42BC(&qword_1EB1421C0, type metadata accessor for TimelineEngineSpec);
  sub_1A52415F4();

  v4[7] = sub_1A441492C();
  return sub_1A47AF548;
}

double sub_1A47AF554()
{
  swift_getKeyPath();
  (*(*v0 + 1656))();

  swift_beginAccess();
  return v0[13];
}

uint64_t sub_1A47AF678(double a1)
{
  result = swift_beginAccess();
  if (v1[13] == a1)
  {
    v1[13] = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v5 = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v1 + 1664))(v5);
  }

  return result;
}

void (*sub_1A47AF77C(uint64_t *a1))(void *a1)
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
  (*(*v1 + 1656))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore18TimelineEngineSpec___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A47B42BC(&qword_1EB1421C0, type metadata accessor for TimelineEngineSpec);
  sub_1A52415F4();

  v4[7] = sub_1A473265C();
  return sub_1A47AF8CC;
}

double sub_1A47AF8D8()
{
  swift_getKeyPath();
  (*(*v0 + 1656))();

  swift_beginAccess();
  return v0[14];
}

uint64_t sub_1A47AF9FC(double a1)
{
  result = swift_beginAccess();
  if (v1[14] == a1)
  {
    v1[14] = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v5 = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v1 + 1664))(v5);
  }

  return result;
}

void (*sub_1A47AFB00(uint64_t *a1))(void *a1)
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
  (*(*v1 + 1656))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore18TimelineEngineSpec___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A47B42BC(&qword_1EB1421C0, type metadata accessor for TimelineEngineSpec);
  sub_1A52415F4();

  v4[7] = sub_1A4415950();
  return sub_1A47AFC50;
}

double sub_1A47AFC5C()
{
  swift_getKeyPath();
  (*(*v0 + 1656))();

  swift_beginAccess();
  return v0[15];
}

uint64_t sub_1A47AFD80(double a1)
{
  result = swift_beginAccess();
  if (v1[15] == a1)
  {
    v1[15] = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v5 = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v1 + 1664))(v5);
  }

  return result;
}

void (*sub_1A47AFE84(uint64_t *a1))(void *a1)
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
  (*(*v1 + 1656))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore18TimelineEngineSpec___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A47B42BC(&qword_1EB1421C0, type metadata accessor for TimelineEngineSpec);
  sub_1A52415F4();

  v4[7] = sub_1A3F28EBC();
  return sub_1A47AFFD4;
}

double sub_1A47B0030()
{
  swift_getKeyPath();
  (*(*v0 + 1656))();

  swift_beginAccess();
  return v0[16];
}

uint64_t sub_1A47B0154(double a1)
{
  result = swift_beginAccess();
  if (v1[16] == a1)
  {
    v1[16] = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v5 = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v1 + 1664))(v5);
  }

  return result;
}

void (*sub_1A47B0258(uint64_t *a1))(void *a1)
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
  (*(*v1 + 1656))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore18TimelineEngineSpec___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A47B42BC(&qword_1EB1421C0, type metadata accessor for TimelineEngineSpec);
  sub_1A52415F4();

  v4[7] = sub_1A47AFFE0();
  return sub_1A47B03A8;
}

double sub_1A47B03B4()
{
  swift_getKeyPath();
  (*(*v0 + 1656))();

  swift_beginAccess();
  return v0[17];
}

uint64_t sub_1A47B04D8(double a1)
{
  result = swift_beginAccess();
  if (v1[17] == a1)
  {
    v1[17] = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v5 = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v1 + 1664))(v5);
  }

  return result;
}

void (*sub_1A47B05DC(uint64_t *a1))(void *a1)
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
  (*(*v1 + 1656))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore18TimelineEngineSpec___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A47B42BC(&qword_1EB1421C0, type metadata accessor for TimelineEngineSpec);
  sub_1A52415F4();

  v4[7] = sub_1A3E0C23C();
  return sub_1A47B072C;
}

double sub_1A47B0738()
{
  swift_getKeyPath();
  (*(*v0 + 1656))();

  swift_beginAccess();
  return v0[18];
}

uint64_t sub_1A47B085C(double a1)
{
  result = swift_beginAccess();
  if (v1[18] == a1)
  {
    v1[18] = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v5 = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v1 + 1664))(v5);
  }

  return result;
}

void (*sub_1A47B0960(uint64_t *a1))(void *a1)
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
  (*(*v1 + 1656))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore18TimelineEngineSpec___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A47B42BC(&qword_1EB1421C0, type metadata accessor for TimelineEngineSpec);
  sub_1A52415F4();

  v4[7] = sub_1A3E0C604();
  return sub_1A47B0AB0;
}

double sub_1A47B0ABC()
{
  swift_getKeyPath();
  (*(*v0 + 1656))();

  swift_beginAccess();
  return v0[19];
}

uint64_t sub_1A47B0BE0(double a1)
{
  result = swift_beginAccess();
  if (v1[19] == a1)
  {
    v1[19] = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v5 = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v1 + 1664))(v5);
  }

  return result;
}

void (*sub_1A47B0CE4(uint64_t *a1))(void *a1)
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
  (*(*v1 + 1656))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore18TimelineEngineSpec___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A47B42BC(&qword_1EB1421C0, type metadata accessor for TimelineEngineSpec);
  sub_1A52415F4();

  v4[7] = sub_1A4733184();
  return sub_1A47B0E34;
}

double sub_1A47B0E40()
{
  swift_getKeyPath();
  (*(*v0 + 1656))();

  swift_beginAccess();
  return v0[20];
}

uint64_t sub_1A47B0F64(double a1)
{
  result = swift_beginAccess();
  if (v1[20] == a1)
  {
    v1[20] = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v5 = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v1 + 1664))(v5);
  }

  return result;
}

void (*sub_1A47B1068(uint64_t *a1))(void *a1)
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
  (*(*v1 + 1656))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore18TimelineEngineSpec___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A47B42BC(&qword_1EB1421C0, type metadata accessor for TimelineEngineSpec);
  sub_1A52415F4();

  v4[7] = sub_1A3E0CFEC();
  return sub_1A47B11B8;
}

double sub_1A47B1214()
{
  swift_getKeyPath();
  (*(*v0 + 1656))();

  swift_beginAccess();
  return v0[21];
}

uint64_t sub_1A47B1338(double a1)
{
  result = swift_beginAccess();
  if (v1[21] == a1)
  {
    v1[21] = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v5 = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v1 + 1664))(v5);
  }

  return result;
}

void (*sub_1A47B143C(uint64_t *a1))(void *a1)
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
  (*(*v1 + 1656))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore18TimelineEngineSpec___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A47B42BC(&qword_1EB1421C0, type metadata accessor for TimelineEngineSpec);
  sub_1A52415F4();

  v4[7] = sub_1A47B11C4();
  return sub_1A47B158C;
}

double sub_1A47B1598()
{
  swift_getKeyPath();
  (*(*v0 + 1656))();

  swift_beginAccess();
  return v0[22];
}

uint64_t sub_1A47B16BC(double a1)
{
  result = swift_beginAccess();
  if (v1[22] == a1)
  {
    v1[22] = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v5 = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v1 + 1664))(v5);
  }

  return result;
}

void (*sub_1A47B17C0(uint64_t *a1))(void *a1)
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
  (*(*v1 + 1656))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore18TimelineEngineSpec___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A47B42BC(&qword_1EB1421C0, type metadata accessor for TimelineEngineSpec);
  sub_1A52415F4();

  v4[7] = sub_1A3E0D400();
  return sub_1A47B1910;
}

double sub_1A47B191C()
{
  swift_getKeyPath();
  (*(*v0 + 1656))();

  swift_beginAccess();
  return v0[23];
}

uint64_t sub_1A47B1A40(double a1)
{
  result = swift_beginAccess();
  if (v1[23] == a1)
  {
    v1[23] = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v5 = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v1 + 1664))(v5);
  }

  return result;
}

void (*sub_1A47B1B44(uint64_t *a1))(void *a1)
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
  (*(*v1 + 1656))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore18TimelineEngineSpec___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A47B42BC(&qword_1EB1421C0, type metadata accessor for TimelineEngineSpec);
  sub_1A52415F4();

  v4[7] = sub_1A4734FE4();
  return sub_1A47B1C94;
}

double sub_1A47B1CA0()
{
  swift_getKeyPath();
  (*(*v0 + 1656))();

  swift_beginAccess();
  return v0[24];
}

uint64_t sub_1A47B1DC4(double a1)
{
  result = swift_beginAccess();
  if (v1[24] == a1)
  {
    v1[24] = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v5 = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v1 + 1664))(v5);
  }

  return result;
}

void (*sub_1A47B1EC8(uint64_t *a1))(void *a1)
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
  (*(*v1 + 1656))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore18TimelineEngineSpec___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A47B42BC(&qword_1EB1421C0, type metadata accessor for TimelineEngineSpec);
  sub_1A52415F4();

  v4[7] = sub_1A47357A4();
  return sub_1A47B2018;
}

double sub_1A47B2024()
{
  swift_getKeyPath();
  (*(*v0 + 1656))();

  swift_beginAccess();
  return v0[25];
}

uint64_t sub_1A47B2148(double a1, double a2)
{
  result = swift_beginAccess();
  if (v2[25] == a1 && v2[26] == a2)
  {
    v2[25] = a1;
    v2[26] = a2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v8 = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v2 + 1664))(v8);
  }

  return result;
}

void (*sub_1A47B2254(uint64_t *a1))(void *a1)
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
  (*(*v1 + 1656))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore18TimelineEngineSpec___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A47B42BC(&qword_1EB1421C0, type metadata accessor for TimelineEngineSpec);
  sub_1A52415F4();

  v4[7] = sub_1A3E0DC68();
  return sub_1A47B23A4;
}

double sub_1A47B23B0()
{
  swift_getKeyPath();
  (*(*v0 + 1656))();

  swift_beginAccess();
  return v0[27];
}

uint64_t sub_1A47B24D4(double a1)
{
  result = swift_beginAccess();
  if (v1[27] == a1)
  {
    v1[27] = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v5 = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v1 + 1664))(v5);
  }

  return result;
}

void (*sub_1A47B25D8(uint64_t *a1))(void *a1)
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
  (*(*v1 + 1656))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore18TimelineEngineSpec___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A47B42BC(&qword_1EB1421C0, type metadata accessor for TimelineEngineSpec);
  sub_1A52415F4();

  v4[7] = sub_1A3E0E488();
  return sub_1A47B2728;
}

double sub_1A47B2734()
{
  swift_getKeyPath();
  (*(*v0 + 1656))();

  swift_beginAccess();
  return v0[28];
}

uint64_t sub_1A47B2858(double a1)
{
  result = swift_beginAccess();
  if (v1[28] == a1)
  {
    v1[28] = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v5 = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v1 + 1664))(v5);
  }

  return result;
}

void (*sub_1A47B295C(uint64_t *a1))(void *a1)
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
  (*(*v1 + 1656))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore18TimelineEngineSpec___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A47B42BC(&qword_1EB1421C0, type metadata accessor for TimelineEngineSpec);
  sub_1A52415F4();

  v4[7] = sub_1A3E0E85C();
  return sub_1A47B2AAC;
}

double sub_1A47B2AB8()
{
  swift_getKeyPath();
  (*(*v0 + 1656))();

  swift_beginAccess();
  return v0[29];
}

uint64_t sub_1A47B2BDC(double a1)
{
  result = swift_beginAccess();
  if (v1[29] == a1)
  {
    v1[29] = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v5 = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v1 + 1664))(v5);
  }

  return result;
}

void (*sub_1A47B2CE0(uint64_t *a1))(void *a1)
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
  (*(*v1 + 1656))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore18TimelineEngineSpec___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A47B42BC(&qword_1EB1421C0, type metadata accessor for TimelineEngineSpec);
  sub_1A52415F4();

  v4[7] = sub_1A3E0EFFC();
  return sub_1A47B2E30;
}

double sub_1A47B2E3C()
{
  swift_getKeyPath();
  (*(*v0 + 1656))();

  swift_beginAccess();
  return v0[30];
}

uint64_t sub_1A47B2F60(double a1, double a2)
{
  result = swift_beginAccess();
  if (v2[30] == a1 && v2[31] == a2)
  {
    v2[30] = a1;
    v2[31] = a2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v8 = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v2 + 1664))(v8);
  }

  return result;
}

void (*sub_1A47B306C(uint64_t *a1))(void *a1)
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
  (*(*v1 + 1656))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore18TimelineEngineSpec___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A47B42BC(&qword_1EB1421C0, type metadata accessor for TimelineEngineSpec);
  sub_1A52415F4();

  v4[7] = sub_1A4739040();
  return sub_1A47B31BC;
}

uint64_t sub_1A47B3308()
{

  v1 = OBJC_IVAR____TtC12PhotosUICore18TimelineEngineSpec___observationRegistrar;
  v2 = sub_1A5241614();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_1A47B33AC()
{
  v0 = swift_allocObject();
  sub_1A47B33E4();
  return v0;
}

uint64_t sub_1A47B33E4()
{
  v1 = v0;
  v2 = type metadata accessor for TimelineEngineCell();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = (&v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  *(v0 + 16) = 0;
  sub_1A3C4ED78(0, &qword_1EB1261E0, MEMORY[0x1E69E6530], MEMORY[0x1E69E6F90]);
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
    v21 = MEMORY[0x1E69E7CC0];
    sub_1A47B36E0(0, v9, 0);
    v10 = 4;
    v11 = v21;
    do
    {
      sub_1A41069C8(v6[v10], v5);
      v21 = v11;
      v13 = *(v11 + 16);
      v12 = *(v11 + 24);
      if (v13 >= v12 >> 1)
      {
        sub_1A47B36E0(v12 > 1, v13 + 1, 1);
        v11 = v21;
      }

      *(v11 + 16) = v13 + 1;
      sub_1A3EF93FC(v5, v11 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v13);
      ++v10;
      --v9;
    }

    while (v9);
  }

  else
  {

    v11 = MEMORY[0x1E69E7CC0];
  }

  *(v1 + 24) = v11;
  __asm { FMOV            V1.2D, #1.0 }

  *(v1 + 32) = xmmword_1A5360670;
  *(v1 + 48) = _Q1;
  *(v1 + 64) = xmmword_1A5360680;
  *(v1 + 80) = xmmword_1A5360690;
  *(v1 + 96) = xmmword_1A53606A0;
  *(v1 + 112) = xmmword_1A53606B0;
  *(v1 + 128) = xmmword_1A53606C0;
  *(v1 + 144) = xmmword_1A53606D0;
  *(v1 + 160) = xmmword_1A53606E0;
  *(v1 + 176) = vdupq_n_s64(0x4064000000000000uLL);
  *(v1 + 200) = 0;
  *(v1 + 208) = 0;
  *(v1 + 192) = 0x4069000000000000;
  *(v1 + 216) = xmmword_1A53606F0;
  *(v1 + 232) = xmmword_1A5360700;
  *(v1 + 248) = 0xC062C00000000000;
  sub_1A5241604();
  return v1;
}

size_t sub_1A47B36E0(size_t a1, int64_t a2, char a3)
{
  result = sub_1A47B3700(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_1A47B3700(size_t result, int64_t a2, char a3, void *a4)
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

  sub_1A47B4360();
  v10 = *(type metadata accessor for TimelineEngineCell() - 8);
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
  v15 = *(type metadata accessor for TimelineEngineCell() - 8);
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

uint64_t sub_1A47B38CC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TimelineEngineCell();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v18 - v9;
  v11 = *(a1 + 16);
  if (v11 == *(a2 + 16))
  {
    if (!v11 || a1 == a2)
    {
      v16 = 1;
    }

    else
    {
      v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
      v13 = a1 + v12;
      v14 = a2 + v12;
      v15 = *(v8 + 72);
      do
      {
        sub_1A3EF8F40(v13, v10);
        sub_1A3EF8F40(v14, v6);
        sub_1A47B42BC(&qword_1EB132698, type metadata accessor for TimelineEngineCell);
        v16 = sub_1A524C594();
        sub_1A47B4304(v6);
        sub_1A47B4304(v10);
        if ((v16 & 1) == 0)
        {
          break;
        }

        v14 += v15;
        v13 += v15;
        --v11;
      }

      while (v11);
    }
  }

  else
  {
    v16 = 0;
  }

  return v16 & 1;
}

uint64_t sub_1A47B3A90()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  result = swift_beginAccess();
  *(v1 + 32) = v2;
  return result;
}

uint64_t sub_1A47B3AE4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  result = swift_beginAccess();
  *(v1 + 40) = v2;
  return result;
}

uint64_t sub_1A47B3B38()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  result = swift_beginAccess();
  *(v1 + 48) = v2;
  return result;
}

uint64_t sub_1A47B3B8C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  result = swift_beginAccess();
  *(v1 + 56) = v2;
  return result;
}

uint64_t sub_1A47B3BE0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  result = swift_beginAccess();
  *(v1 + 64) = v2;
  return result;
}

uint64_t sub_1A47B3C34()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  result = swift_beginAccess();
  *(v1 + 72) = v2;
  return result;
}

uint64_t sub_1A47B3C88()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  result = swift_beginAccess();
  *(v1 + 88) = v2;
  return result;
}

uint64_t sub_1A47B3CDC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  result = swift_beginAccess();
  *(v1 + 96) = v2;
  return result;
}

uint64_t sub_1A47B3D30()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  result = swift_beginAccess();
  *(v1 + 104) = v2;
  return result;
}

uint64_t sub_1A47B3D84()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  result = swift_beginAccess();
  *(v1 + 112) = v2;
  return result;
}

uint64_t sub_1A47B3DD8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  result = swift_beginAccess();
  *(v1 + 120) = v2;
  return result;
}

uint64_t sub_1A47B3E2C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  result = swift_beginAccess();
  *(v1 + 128) = v2;
  return result;
}

uint64_t sub_1A47B3E80()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  result = swift_beginAccess();
  *(v1 + 136) = v2;
  return result;
}

uint64_t sub_1A47B3ED4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  result = swift_beginAccess();
  *(v1 + 152) = v2;
  return result;
}

uint64_t sub_1A47B3F28()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  result = swift_beginAccess();
  *(v1 + 160) = v2;
  return result;
}

uint64_t sub_1A47B3F7C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  result = swift_beginAccess();
  *(v1 + 168) = v2;
  return result;
}

uint64_t sub_1A47B3FD0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  result = swift_beginAccess();
  *(v1 + 176) = v2;
  return result;
}

uint64_t sub_1A47B4024()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  result = swift_beginAccess();
  *(v1 + 184) = v2;
  return result;
}

uint64_t sub_1A47B4078()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  result = swift_beginAccess();
  *(v1 + 192) = v2;
  return result;
}

uint64_t sub_1A47B40CC()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  result = swift_beginAccess();
  *(v1 + 200) = v2;
  *(v1 + 208) = v3;
  return result;
}

uint64_t sub_1A47B4120()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  result = swift_beginAccess();
  *(v1 + 232) = v2;
  return result;
}

uint64_t sub_1A47B4174()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  result = swift_beginAccess();
  *(v1 + 240) = v2;
  *(v1 + 248) = v3;
  return result;
}

uint64_t sub_1A47B41D0()
{
  result = sub_1A5241614();
  if (v1 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

uint64_t sub_1A47B42BC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1A47B4304(uint64_t a1)
{
  v2 = type metadata accessor for TimelineEngineCell();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1A47B4360()
{
  if (!qword_1EB1421C8)
  {
    type metadata accessor for TimelineEngineCell();
    v0 = sub_1A524EA54();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB1421C8);
    }
  }
}

void sub_1A47B43B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a3;
  sub_1A47B5710(0, &qword_1EB120E60, off_1E77213C8);
  MEMORY[0x1EEE9AC00](v3 - 8);
  sub_1A524C1D4();
}

void sub_1A47B4924(uint64_t a1)
{
  MEMORY[0x1EEE9AC00](a1);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  sub_1A5246234();
}

void sub_1A47B4B34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8[9] = a3;
  v8[10] = a1;
  v8[11] = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v8[8] = v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8[12] = v8 - v5;
  sub_1A47B5710(0, &qword_1EB120E80, off_1E77212A0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  MEMORY[0x1EEE9AC00](v7);
  sub_1A524C0F4();
}

void sub_1A47B5284()
{
  objc_opt_self();
  v1 = swift_dynamicCastObjCClass();
  if (v1)
  {
    v2 = v1;
    v3 = v0;
    if ([v2 px_isScreenshotsSmartAlbum] || objc_msgSend(v2, sel_px_isScreenRecordingsSmartAlbum) || objc_msgSend(v2, sel_px_isSavedTodayCollection))
    {

      goto LABEL_19;
    }

    v4 = [v2 px_isRecoveredSmartAlbum];

    if (v4)
    {
      goto LABEL_19;
    }
  }

  objc_opt_self();
  v5 = swift_dynamicCastObjCClass();
  if (v5)
  {
    v6 = v5;
    v7 = v0;
    v8 = [v6 transientIdentifier];
    if (v8)
    {
      v9 = v8;
      v10 = sub_1A524C674();
      v12 = v11;

      v13 = sub_1A40B62A0();
      if (v12)
      {
        if (v10 == *v13 && v12 == v13[1])
        {

          goto LABEL_19;
        }

        v14 = sub_1A524EAB4();

        if ((v14 & 1) == 0)
        {
          goto LABEL_17;
        }

LABEL_19:
        sub_1A524C1D4();
      }
    }

    else
    {
      sub_1A40B62A0();
    }
  }

LABEL_17:
  PHObject.photosPickerCollectionType.getter(&v15);
  switch(v15)
  {
    case 21:
    case 22:
    case 23:
    case 24:
      sub_1A524C1D4();
    default:
      goto LABEL_19;
  }

  goto LABEL_19;
}

void sub_1A47B55EC()
{
  v0 = sub_1A5246F24();
  __swift_allocate_value_buffer(v0, qword_1EB1769C8);
  __swift_project_value_buffer(v0, qword_1EB1769C8);
  sub_1A5246EF4();
}

unint64_t sub_1A47B5650()
{
  result = qword_1EB12AD10;
  if (!qword_1EB12AD10)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EB12AD10);
  }

  return result;
}

uint64_t sub_1A47B56B4(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_1A47B5710(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_1A47B5710(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1A524DF24();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1A47B5764()
{
  result = qword_1EB1421D0;
  if (!qword_1EB1421D0)
  {
    sub_1A524C0F4();
  }

  return result;
}

uint64_t sub_1A47B57BC@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x68))();
  *a2 = result;
  return result;
}

uint64_t sub_1A47B58C4(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC12PhotosUICore40SuggestLessPeopleSelectionViewController_people;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t sub_1A47B59C4()
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_1A47B5A24(uint64_t *a1))(void **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC12PhotosUICore40SuggestLessPeopleSelectionViewController_delegate;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_1A3DA46A0;
}

uint64_t sub_1A47B5ABC()
{
  v1 = (v0 + OBJC_IVAR____TtC12PhotosUICore40SuggestLessPeopleSelectionViewController_completionHandler);
  swift_beginAccess();
  v2 = *v1;
  sub_1A3D607F0(*v1);
  return v2;
}

uint64_t sub_1A47B5B18(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC12PhotosUICore40SuggestLessPeopleSelectionViewController_completionHandler);
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  *v5 = a1;
  v5[1] = a2;
  return sub_1A3C784D4(v6, v7);
}

id SuggestLessPeopleSelectionViewController.__allocating_init(people:delegate:completionHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = objc_allocWithZone(v4);
  v10 = sub_1A47B9994(a1, a2, a3, a4);
  swift_unknownObjectRelease();

  return v10;
}

id SuggestLessPeopleSelectionViewController.init(people:delegate:completionHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = sub_1A47B9994(a1, a2, a3, a4);
  swift_unknownObjectRelease();

  return v4;
}

uint64_t sub_1A47B5E3C()
{
  v1 = type metadata accessor for SuggestLessPeopleSelectionView(0);
  v2 = (v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v21[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v21[-v6];
  v8 = UIViewController.pxView.getter();
  v9 = [objc_opt_self() secondarySystemBackgroundColor];
  [v8 setBackgroundColor_];

  v10 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x68))();
  sub_1A47BBEF8(0, &unk_1EB1421F8, MEMORY[0x1E69E64E8]);
  sub_1A5247C74();
  v11 = v7 + v2[9];
  v21[15] = 0;
  sub_1A524B694();
  v12 = v22;
  *v11 = v21[16];
  *(v11 + 1) = v12;
  v13 = v2[10];
  *(v7 + v13) = swift_getKeyPath();
  sub_1A4137EE8(0);
  swift_storeEnumTagMultiPayload();
  v14 = v2[11];
  PLPhysicalScreenScale();
  *(v7 + v14) = v15;
  *v7 = v0;
  v7[1] = v10;
  sub_1A47B9AC4();
  sub_1A47BC000(v7, v4, type metadata accessor for SuggestLessPeopleSelectionView);
  v0;
  v16 = PXSwiftUIHostingViewController.__allocating_init(rootView:)(v4);
  v17 = swift_allocObject();
  *(v17 + 16) = v16;
  *(v17 + 24) = v8;
  v18 = v16;
  v19 = v8;
  UIViewController.px_addChild(_:constraints:)(v18, sub_1A47BBBC4);

  return sub_1A47BC328(v7, type metadata accessor for SuggestLessPeopleSelectionView);
}

id SuggestLessPeopleSelectionViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_1A524C634();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

id SuggestLessPeopleSelectionViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SuggestLessPeopleSelectionViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1A47B6298(void **a1)
{
  v1 = *a1;
  v2 = MEMORY[0x1E69E7D40];
  v3 = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x80))();
  if (v3)
  {
    v4 = v3;
    v5 = (*((*v2 & *v1) + 0x98))();
    if (v5)
    {
      v7 = v5;
      v8 = v6;
      v9 = swift_allocObject();
      *(v9 + 16) = v7;
      *(v9 + 24) = v8;
      v11[4] = sub_1A4433284;
      v11[5] = v9;
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 1107296256;
      v11[2] = sub_1A4043B58;
      v11[3] = &block_descriptor_113_1;
      v10 = _Block_copy(v11);

      [v4 completeActionWithCompletionHandler_];
      swift_unknownObjectRelease();
      _Block_release(v10);
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t sub_1A47B63E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v72 = a2;
  sub_1A47BA6D0();
  v71 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v69 = (&v56 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = type metadata accessor for SuggestLessPeopleSelectionView(0);
  v68 = *(v5 - 8);
  v67 = *(v68 + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v66 = &v56 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1A5247B54();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v64 = &v56 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A47BA63C();
  v70 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v62 = (&v56 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v61 = sub_1A5249284();
  v11 = *(v61 - 8);
  MEMORY[0x1EEE9AC00](v61);
  v58 = &v56 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1A5249904();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v56 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A47BA210();
  v18 = v17;
  v19 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v56 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A47BA13C();
  v57 = v22;
  v60 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v56 = &v56 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A47BA038();
  v63 = v24;
  v65 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v73 = &v56 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = a1;
  v74 = *(a1 + 8);
  v75 = a1;
  sub_1A47BA290();
  sub_1A47BA434();
  sub_1A524A2C4();
  sub_1A52498F4();
  v26 = sub_1A47BBB7C(&qword_1EB1422A8, sub_1A47BA210);
  sub_1A524B1E4();
  (*(v14 + 8))(v16, v13);
  (*(v19 + 8))(v21, v18);
  sub_1A3C52C70(0, &qword_1EB1265C0);
  v27 = sub_1A524CA14();
  v28 = sub_1A524C634();
  v29 = PXLocalizedStringForPeople(v27, v28);

  v30 = sub_1A524C674();
  v32 = v31;

  v76 = v30;
  v77 = v32;
  sub_1A3D5F9DC();
  v33 = sub_1A524A464();
  v35 = v34;
  LOBYTE(v14) = v36;
  v37 = v58;
  v38 = v61;
  (*(v11 + 104))(v58, *MEMORY[0x1E697C438], v61);
  v76 = v18;
  v77 = v13;
  v78 = v26;
  v79 = MEMORY[0x1E697C750];
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v40 = v37;
  v41 = v57;
  v42 = v56;
  sub_1A524ACE4();
  sub_1A3E04DF4(v33, v35, v14 & 1);

  (*(v11 + 8))(v40, v38);
  (*(v60 + 8))(v42, v41);
  v43 = sub_1A5249314();
  v44 = v62;
  *v62 = v43;
  *(v44 + 8) = 0;
  *(v44 + 16) = 1;
  sub_1A47BC2AC(0, &qword_1EB142408, sub_1A3D6DF58);
  v45 = v64;
  sub_1A5247B34();
  v46 = v59;
  v47 = v66;
  sub_1A47BC000(v59, v66, type metadata accessor for SuggestLessPeopleSelectionView);
  v48 = (*(v68 + 80) + 16) & ~*(v68 + 80);
  v49 = swift_allocObject();
  sub_1A47B9C28(v47, v49 + v48);
  MEMORY[0x1A5906A80](v45, sub_1A47BC310, v49);
  v50 = sub_1A5249314();
  v51 = v69;
  *v69 = v50;
  *(v51 + 8) = 0;
  *(v51 + 16) = 1;
  sub_1A47BC2AC(0, &unk_1EB142410, sub_1A41278A0);
  sub_1A47B712C(v46, v51 + *(v52 + 44));
  v76 = v41;
  v77 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  sub_1A47BBB7C(&qword_1EB1422C8, sub_1A47BA63C);
  sub_1A47BBB7C(&qword_1EB1422D0, sub_1A47BA6D0);
  v53 = v63;
  v54 = v73;
  sub_1A524ACC4();
  sub_1A47BC328(v51, sub_1A47BA6D0);
  sub_1A47BC328(v44, sub_1A47BA63C);
  return (*(v65 + 8))(v54, v53);
}

void sub_1A47B6CA0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SuggestLessPeopleSelectionView(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v9[1] = a1;
  swift_getKeyPath();
  sub_1A47BC000(a2, v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for SuggestLessPeopleSelectionView);
  v7 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v8 = swift_allocObject();
  sub_1A47B9C28(v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v8 + v7);
  sub_1A3CB67E8(0, &qword_1EB120BF0, &qword_1EB1265C0, 0x1E6978980, MEMORY[0x1E69E62F8]);
  sub_1A47BA3B0();
  sub_1A47BA594();
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

void sub_1A47B6E54(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 localIdentifier];
  v4 = sub_1A524C674();
  v6 = v5;

  *a2 = v4;
  a2[1] = v6;
}

uint64_t sub_1A47B6EAC(uint64_t a1)
{
  v2 = sub_1A5249234();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4137EE8(0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1A5248284();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for SuggestLessPeopleSelectionView(0);
  sub_1A47BC000(a1 + *(v13 + 32), v8, sub_1A4137EE8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v10 + 32))(v12, v8, v9);
  }

  else
  {
    sub_1A524D254();
    v14 = sub_1A524A014();
    sub_1A5246DF4();

    sub_1A5249224();
    swift_getAtKeyPath();

    (*(v3 + 8))(v5, v2);
  }

  sub_1A5248274();
  return (*(v10 + 8))(v12, v9);
}

void sub_1A47B712C(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a2;
  v3 = type metadata accessor for SuggestLessPeopleSelectionView(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  sub_1A47BB9D4(0, &qword_1EB127480, MEMORY[0x1E6981148], MEMORY[0x1E6981138], MEMORY[0x1E697D670]);
  v23 = v6;
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v23 - v8;
  v10 = sub_1A524C634();
  v11 = PXLocalizedString(v10);

  v12 = sub_1A524C674();
  v14 = v13;

  v25 = v12;
  v26 = v14;
  sub_1A47BC000(a1, &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for SuggestLessPeopleSelectionView);
  v15 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v16 = swift_allocObject();
  sub_1A47B9C28(&v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v16 + v15);
  sub_1A3D5F9DC();
  sub_1A524B754();
  sub_1A47BAAFC(0, &unk_1EB142218, MEMORY[0x1E697DA80]);
  sub_1A5247C84();
  if ((v25 & 0xC000000000000001) != 0)
  {
    v17 = sub_1A524E2B4();
  }

  else
  {
    v17 = *(v25 + 16);
  }

  KeyPath = swift_getKeyPath();
  v19 = swift_allocObject();
  *(v19 + 16) = v17 == 0;
  v20 = v24;
  (*(v7 + 32))(v24, v9, v23);
  sub_1A41278A0();
  v22 = (v20 + *(v21 + 36));
  *v22 = KeyPath;
  v22[1] = sub_1A3E07024;
  v22[2] = v19;
}

void sub_1A47B7430(void *a1)
{
  v2 = type metadata accessor for SuggestLessPeopleSelectionView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x1EEE9AC00](v2 - 8);
  v6 = *a1;
  v7 = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x80))(v5);
  if (v7)
  {
    v8 = v7;
    sub_1A47BC000(a1, aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for SuggestLessPeopleSelectionView);
    v9 = (*(v3 + 80) + 16) & ~*(v3 + 80);
    v10 = swift_allocObject();
    sub_1A47B9C28(aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v10 + v9);
    aBlock[4] = sub_1A47BC3A0;
    aBlock[5] = v10;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1A3C2E0D0;
    aBlock[3] = &block_descriptor_92_1;
    v11 = _Block_copy(aBlock);

    [v8 dismissViewController:v6 completionHandler:v11];
    swift_unknownObjectRelease();
    _Block_release(v11);
  }
}

uint64_t sub_1A47B75FC(uint64_t a1)
{
  v2 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v3 = sub_1A524E264();
    v5 = v4;
    v6 = sub_1A524E324();
    v8 = v7;
    v9 = MEMORY[0x1A59095F0](v3, v5, v6, v7);
    sub_1A3CAD6E8(v6, v8, 1);
    if (v9)
    {
LABEL_3:
      sub_1A3CAD6E8(v3, v5, v2 != 0);
      return 0;
    }
  }

  else
  {
    v3 = sub_1A524E234();
    v5 = *(a1 + 36);
    if (v3 == 1 << *(a1 + 32))
    {
      goto LABEL_3;
    }
  }

  sub_1A47B9770(v3, v5, v2 != 0, a1);
  v12 = v11;
  sub_1A3CAD6E8(v3, v5, v2 != 0);
  return v12;
}

void sub_1A47B7718(void *a1)
{
  v2 = type metadata accessor for SuggestLessPeopleSelectionView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v6 = a1 + *(v5 + 36);
  v7 = *v6;
  v8 = *(v6 + 1);
  LOBYTE(aBlock) = v7;
  v18 = v8;
  sub_1A47BBE34(0, &qword_1EB1274B0, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);
  v9 = sub_1A524B6A4();
  if ((v23 & 1) == 0)
  {
    v10 = *a1;
    v11 = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x80))(v9);
    if (v11)
    {
      v12 = v11;
      sub_1A47BC000(a1, &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for SuggestLessPeopleSelectionView);
      v13 = (*(v3 + 80) + 16) & ~*(v3 + 80);
      v14 = swift_allocObject();
      sub_1A47B9C28(&v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v14 + v13);
      v21 = sub_1A47BC89C;
      v22 = v14;
      aBlock = MEMORY[0x1E69E9820];
      v18 = 1107296256;
      v19 = sub_1A3C2E0D0;
      v20 = &block_descriptor_75_3;
      v15 = _Block_copy(&aBlock);

      [v12 dismissViewController:v10 completionHandler:v15];
      swift_unknownObjectRelease();
      _Block_release(v15);
    }
  }
}

void sub_1A47B793C(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v40 = a2;
  v43 = *(a1 - 8);
  v42 = *(v43 + 64);
  MEMORY[0x1EEE9AC00](a1 - 8);
  v41 = v37 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1A5249C44();
  v5 = *(v4 - 8);
  v38 = v4;
  v39 = v5;
  MEMORY[0x1EEE9AC00](v4);
  v7 = v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A47B9C90();
  v9 = v8;
  v10 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v12 = v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = v2;
  sub_1A47B9E70();
  v37[0] = v13;
  sub_1A47BA038();
  v15 = v14;
  sub_1A47BA63C();
  v17 = v16;
  sub_1A47BA6D0();
  v19 = v18;
  sub_1A47BA13C();
  v21 = v20;
  sub_1A47BA210();
  v23 = v22;
  v24 = sub_1A5249904();
  v25 = sub_1A47BBB7C(&qword_1EB1422A8, sub_1A47BA210);
  v45 = v23;
  v46 = v24;
  v47 = v25;
  v48 = MEMORY[0x1E697C750];
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v45 = v21;
  v46 = OpaqueTypeConformance2;
  v27 = swift_getOpaqueTypeConformance2();
  v28 = sub_1A47BBB7C(&qword_1EB1422C8, sub_1A47BA63C);
  v29 = sub_1A47BBB7C(&qword_1EB1422D0, sub_1A47BA6D0);
  v45 = v15;
  v46 = v17;
  v47 = v19;
  v48 = v27;
  v49 = v28;
  v50 = v29;
  swift_getOpaqueTypeConformance2();
  sub_1A5248474();
  sub_1A5249C34();
  sub_1A47BBB7C(&unk_1EB1422D8, sub_1A47B9C90);
  sub_1A47BBB7C(&qword_1EB13A710, MEMORY[0x1E697C938]);
  v30 = v40;
  v31 = v38;
  sub_1A524A864();
  (*(v39 + 8))(v7, v31);
  (*(v10 + 8))(v12, v9);
  v32 = v41;
  sub_1A47BC000(v37[1], v41, type metadata accessor for SuggestLessPeopleSelectionView);
  v33 = (*(v43 + 80) + 16) & ~*(v43 + 80);
  v34 = swift_allocObject();
  sub_1A47B9C28(v32, v34 + v33);
  sub_1A47BADCC(0, &qword_1EB1422E8, sub_1A47BA754);
  v36 = (v30 + *(v35 + 36));
  *v36 = 0;
  v36[1] = 0;
  v36[2] = sub_1A47BC898;
  v36[3] = v34;
}

uint64_t sub_1A47B7DF4@<X0>(uint64_t a1@<X8>)
{
  sub_1A3C52C70(0, &qword_1EB1265C0);
  v2 = sub_1A524CA14();
  v3 = sub_1A524C634();
  v4 = PXLocalizedStringForPeople(v2, v3);

  sub_1A524C674();
  sub_1A3D5F9DC();
  result = sub_1A524A464();
  *a1 = result;
  *(a1 + 8) = v6;
  *(a1 + 16) = v7 & 1;
  *(a1 + 24) = v8;
  *(a1 + 32) = 256;
  return result;
}

void sub_1A47B7ED8(uint64_t a1@<X8>)
{
  v2 = sub_1A524C634();
  v3 = PXLocalizedString(v2);

  sub_1A524C674();
  sub_1A3D5F9DC();
  v4 = sub_1A524A464();
  v6 = v5;
  v8 = v7;
  v10 = v9;
  sub_1A47BAAD4(0);
  v12 = (a1 + *(v11 + 36));
  sub_1A449A1D4(0);
  v14 = *(v13 + 28);
  v15 = *MEMORY[0x1E6980FD8];
  v16 = sub_1A524A394();
  v17 = *(v16 - 8);
  (*(v17 + 104))(v12 + v14, v15, v16);
  (*(v17 + 56))(v12 + v14, 0, 1, v16);
  *v12 = swift_getKeyPath();
  *a1 = v4;
  *(a1 + 8) = v6;
  *(a1 + 16) = v8 & 1;
  *(a1 + 24) = v10;
  LOBYTE(v4) = sub_1A524A074();
  sub_1A5247BC4();
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;
  sub_1A47BADCC(0, &qword_1EB142300, sub_1A47BAAD4);
  v27 = a1 + *(v26 + 36);
  *v27 = v4;
  *(v27 + 8) = v19;
  *(v27 + 16) = v21;
  *(v27 + 24) = v23;
  *(v27 + 32) = v25;
  *(v27 + 40) = 0;
}

uint64_t sub_1A47B80C8(void *a1, uint64_t a2)
{
  if ((a2 & 0xC000000000000001) != 0)
  {
    v3 = a1;
    v4 = sub_1A524E314();
  }

  else if (*(a2 + 16) && (sub_1A3C52C70(0, &qword_1EB1265C0), v5 = sub_1A524DBE4(), v6 = -1 << *(a2 + 32), v7 = v5 & ~v6, ((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0))
  {
    v8 = ~v6;
    do
    {
      v9 = *(*(a2 + 48) + 8 * v7);
      v4 = sub_1A524DBF4();

      if (v4)
      {
        break;
      }

      v7 = (v7 + 1) & v8;
    }

    while (((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

uint64_t sub_1A47B81E0(void *a1, double a2, double a3, double a4)
{
  swift_allocObject();
  v8 = sub_1A47BA878(a1, a2, a3, a4);

  return v8;
}

void sub_1A47B8250()
{
  v1 = v0;
  sub_1A5249314();
  v49 = 1;
  v57 = *(v0 + 16);
  v58 = *(v0 + 32);
  sub_1A47BAAFC(0, &qword_1EB142308, MEMORY[0x1E6981948]);
  MEMORY[0x1A5906C60](&v44);
  v2 = *(v0 + 56);
  v3 = sub_1A47B80C8(v2, v44);

  v4 = sub_1A524B544();
  if (v3)
  {
    v5 = sub_1A524B3C4();
    KeyPath = swift_getKeyPath();
    *&v44 = v4;
    *(&v44 + 1) = KeyPath;
    *&v45 = v5;
    BYTE8(v45) = 0;
  }

  else
  {
    v7 = [objc_opt_self() lightGrayColor];
    v8 = sub_1A524B284();
    v9 = swift_getKeyPath();
    *&v44 = v4;
    *(&v44 + 1) = v9;
    *&v45 = v8;
    BYTE8(v45) = 1;
  }

  sub_1A47BACA4(0, &qword_1EB128540, sub_1A3D6D248);
  sub_1A3E7440C();
  sub_1A5249744();
  v35 = v59;
  sub_1A47BBF74();
  sub_1A47B8AE0(v1, &v57);
  v42 = v57;
  v10 = BYTE8(v57);
  sub_1A524BC74();
  sub_1A52481F4();
  v37 = v51;
  v38 = v53;
  v40 = v56;
  v41 = v55;
  v43 = v10;
  v68 = v10;
  v36 = v52;
  v67 = v52;
  v39 = v54;
  v66 = v54;
  v11 = [v2 px_localizedName];
  v12 = sub_1A524C674();
  v14 = v13;

  if (v12 || v14 != 0xE000000000000000)
  {
    v15 = sub_1A524EAB4();

    if ((v15 & 1) == 0)
    {
      v17 = [v2 px_localizedName];
      goto LABEL_10;
    }
  }

  else
  {
  }

  v16 = sub_1A524C634();
  v17 = PXLocalizedString(v16);

LABEL_10:
  sub_1A524C674();

  sub_1A524A0F4();
  v18 = sub_1A524A3C4();
  v20 = v19;
  v22 = v21;

  v23 = [v2 px_localizedName];
  v24 = sub_1A524C674();
  v26 = v25;

  if (v24 || v26 != 0xE000000000000000)
  {
    v27 = sub_1A524EAB4();

    if ((v27 & 1) == 0)
    {
      v28 = &selRef_labelColor;
LABEL_16:
      v29 = [objc_opt_self() *v28];
      sub_1A524B284();
      v30 = sub_1A524A364();
      v34 = v31;
      v33 = v32;

      sub_1A3E04DF4(v18, v20, v22 & 1);

      v65 = v35;
      v64 = v35;
      *&v44 = v42;
      BYTE8(v44) = v43;
      *(&v44 + 9) = v50;
      HIDWORD(v44) = *(&v50 + 3);
      *&v45 = v37;
      BYTE8(v45) = v36;
      *(&v45 + 9) = *v70;
      HIDWORD(v45) = *&v70[3];
      *&v46 = v38;
      BYTE8(v46) = v39;
      HIDWORD(v46) = *&v69[3];
      *(&v46 + 9) = *v69;
      *&v47 = v41;
      *(&v47 + 1) = v40;
      LOWORD(v48) = 256;
      v63 = 256;
      v62[1] = v47;
      v62[0] = v46;
      v61 = v45;
      v60 = v44;
      sub_1A47BBF74();
      sub_1A47BC000(&v44, &v57, sub_1A47BAD08);
      sub_1A3E75E68(v30, v34, v33 & 1);
      _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
    }
  }

  else
  {
  }

  v28 = &selRef_secondaryLabelColor;
  goto LABEL_16;
}

void sub_1A47B8AE0(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1A524B554();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1A5243454();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = (*(**(a1 + 8) + 88))(v10);
  if (v13)
  {
    v14 = v13;
    (*(v9 + 104))(v12, *MEMORY[0x1E69C24B0], v8);
    v15 = v14;
    sub_1A524B534();
    (*(v5 + 104))(v7, *MEMORY[0x1E6981630], v4);
    v16 = sub_1A524B5C4();

    (*(v5 + 8))(v7, v4);
    v19 = v16;
    v20 = 0;

    sub_1A5249744();
  }

  else
  {
    v17 = [objc_opt_self() placeholderTextColor];
    v19 = sub_1A524B284();
    v20 = 1;
    sub_1A5249744();
  }

  v18 = v22;
  *a2 = v21;
  *(a2 + 8) = v18;
}

uint64_t sub_1A47B8DE0()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1A52479E4();

  return v1;
}

uint64_t sub_1A47B8E54@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 88))();
  *a2 = result;
  return result;
}

uint64_t sub_1A47B8EA0(id *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(**a2 + 96);
  v4 = *a1;
  return v3(v2);
}

uint64_t sub_1A47B8EF8()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_1A52479F4();
}

void (*sub_1A47B8F68(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
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
  *(v3 + 48) = sub_1A52479D4();
  return sub_1A3E4FCF4;
}

uint64_t sub_1A47B900C()
{
  swift_beginAccess();
  sub_1A47BB3E8(0, &qword_1EB128B00, MEMORY[0x1E695C070]);
  sub_1A52479B4();
  return swift_endAccess();
}

uint64_t sub_1A47B9090(uint64_t a1)
{
  sub_1A47BB3E8(0, &unk_1EB133C40, MEMORY[0x1E695C060]);
  v3 = v2;
  v4 = *(v2 - 8);
  v5 = MEMORY[0x1EEE9AC00](v2);
  (*(v4 + 16))(&v8 - v6, a1, v3, v5);
  swift_beginAccess();
  sub_1A47BB3E8(0, &qword_1EB128B00, MEMORY[0x1E695C070]);
  sub_1A52479C4();
  swift_endAccess();
  return (*(v4 + 8))(a1, v3);
}

void (*sub_1A47B91E8(uint64_t *a1))(uint64_t a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
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
  sub_1A47BB3E8(0, &unk_1EB133C40, MEMORY[0x1E695C060]);
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

  v10 = OBJC_IVAR____TtC12PhotosUICore20FaceCropImageManager__image;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  sub_1A47BB3E8(0, &qword_1EB128B00, MEMORY[0x1E695C070]);
  v5[16] = v11;
  sub_1A52479B4();
  swift_endAccess();
  return sub_1A41BE354;
}

uint64_t sub_1A47B9378()
{
  v1 = OBJC_IVAR____TtC12PhotosUICore20FaceCropImageManager__image;
  sub_1A47BB3E8(0, &qword_1EB128B00, MEMORY[0x1E695C070]);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_1A47B9430@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for FaceCropImageManager(0);
  result = sub_1A52478D4();
  *a1 = result;
  return result;
}

uint64_t sub_1A47B9470()
{
  v1 = *v0;
  if ((*v0 & 0xC000000000000001) != 0)
  {
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  v2 = v0;
  sub_1A3C52C70(0, &qword_1EB1265C0);
  v3 = sub_1A524DBE4();
  v4 = -1 << *(v1 + 32);
  v5 = v3 & ~v4;
  if (((*(v1 + 56 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) == 0)
  {
    return 0;
  }

  v6 = ~v4;
  while (1)
  {
    v7 = *(*(v1 + 48) + 8 * v5);
    v8 = sub_1A524DBF4();

    if (v8)
    {
      break;
    }

    v5 = (v5 + 1) & v6;
    if (((*(v1 + 56 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) == 0)
    {
      return 0;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *v2;
  v13 = *v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_1A42CE5F0();
    v11 = v13;
  }

  v12 = *(*(v11 + 48) + 8 * v5);
  sub_1A3E2B988(v5);
  result = v12;
  *v2 = v13;
  return result;
}

uint64_t sub_1A47B9608()
{
  v1 = v0;

  v2 = sub_1A524E2B4();
  v3 = swift_unknownObjectRetain();
  v4 = sub_1A42CE084(v3, v2);
  v13 = v4;

  v5 = sub_1A524DBE4();
  v6 = -1 << *(v4 + 32);
  v7 = v5 & ~v6;
  if ((*(v4 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v8 = ~v6;
    sub_1A3C52C70(0, &qword_1EB1265C0);
    while (1)
    {
      v9 = *(*(v4 + 48) + 8 * v7);
      v10 = sub_1A524DBF4();

      if (v10)
      {
        break;
      }

      v7 = (v7 + 1) & v8;
      if (((*(v4 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:

    __break(1u);
  }

  v11 = *(*(v4 + 48) + 8 * v7);
  sub_1A3E2B988(v7);
  result = sub_1A524DBF4();
  if (result)
  {
    *v1 = v13;
    return v11;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1A47B9770(unint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v6 = a1;
  if ((a4 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      if (a4 < 0)
      {
        v7 = a4;
      }

      else
      {
        v7 = a4 & 0xFFFFFFFFFFFFFF8;
      }

      MEMORY[0x1A5909650](a1, a2, v7);
      sub_1A3C52C70(0, &qword_1EB1265C0);
      swift_dynamicCast();
      return;
    }

LABEL_26:
    __break(1u);
    return;
  }

  if (a3)
  {
    sub_1A3C52C70(0, &qword_1EB1265C0);
    if (sub_1A524E294() != *(a4 + 36))
    {
      __break(1u);
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    sub_1A524E2A4();
    swift_dynamicCast();
    v4 = v15;
    v8 = sub_1A524DBE4();
    v9 = -1 << *(a4 + 32);
    v6 = v8 & ~v9;
    if ((*(a4 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
    {
      v10 = ~v9;
      do
      {
        v11 = *(*(a4 + 48) + 8 * v6);
        v12 = sub_1A524DBF4();

        if (v12)
        {
          goto LABEL_19;
        }

        v6 = (v6 + 1) & v10;
      }

      while (((*(a4 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    __break(1u);
  }

  if ((v6 & 0x8000000000000000) != 0 || 1 << *(a4 + 32) <= v6)
  {
    goto LABEL_24;
  }

  if (((*(a4 + 8 * (v6 >> 6) + 56) >> v6) & 1) == 0)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (*(a4 + 36) != a2)
  {
    __break(1u);
LABEL_19:
  }

  v13 = *(*(a4 + 48) + 8 * v6);

  v14 = v13;
}

id sub_1A47B9994(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_unknownObjectWeakInit();
  v8 = &v4[OBJC_IVAR____TtC12PhotosUICore40SuggestLessPeopleSelectionViewController_completionHandler];
  *v8 = 0;
  *(v8 + 1) = 0;
  *&v4[OBJC_IVAR____TtC12PhotosUICore40SuggestLessPeopleSelectionViewController_people] = a1;
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  swift_beginAccess();
  v9 = *v8;
  v10 = *(v8 + 1);
  *v8 = a3;
  *(v8 + 1) = a4;

  sub_1A3C784D4(v9, v10);
  v12.receiver = v4;
  v12.super_class = type metadata accessor for SuggestLessPeopleSelectionViewController();
  return objc_msgSendSuper2(&v12, sel_initWithNibName_bundle_, 0, 0);
}

void sub_1A47B9AC4()
{
  if (!qword_1EB142208)
  {
    type metadata accessor for SuggestLessPeopleSelectionView(255);
    sub_1A47BBB7C(&qword_1EB142210, type metadata accessor for SuggestLessPeopleSelectionView);
    v0 = type metadata accessor for PXSwiftUIHostingViewController();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB142208);
    }
  }
}

uint64_t sub_1A47B9B58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
{
  v7 = a5(0, a3, a4);
  (*(*(v7 - 8) + 16))(a2, a1, v7);
  return a2;
}

uint64_t sub_1A47B9BC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v5 = a4(0);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

uint64_t sub_1A47B9C28(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SuggestLessPeopleSelectionView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1A47B9C90()
{
  if (!qword_1EB142238)
  {
    sub_1A47B9E70();
    sub_1A47BA038();
    sub_1A47BA63C();
    sub_1A47BA6D0();
    sub_1A47BA13C();
    sub_1A47BA210();
    sub_1A5249904();
    sub_1A47BBB7C(&qword_1EB1422A8, sub_1A47BA210);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_1A47BBB7C(&qword_1EB1422C8, sub_1A47BA63C);
    sub_1A47BBB7C(&qword_1EB1422D0, sub_1A47BA6D0);
    swift_getOpaqueTypeConformance2();
    v0 = sub_1A5248484();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB142238);
    }
  }
}

void sub_1A47B9E70()
{
  if (!qword_1EB142240)
  {
    sub_1A47BA038();
    sub_1A47BA63C();
    sub_1A47BA6D0();
    sub_1A47BA13C();
    sub_1A47BA210();
    sub_1A5249904();
    sub_1A47BBB7C(&qword_1EB1422A8, sub_1A47BA210);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_1A47BBB7C(&qword_1EB1422C8, sub_1A47BA63C);
    sub_1A47BBB7C(&qword_1EB1422D0, sub_1A47BA6D0);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB142240);
    }
  }
}

void sub_1A47BA038()
{
  if (!qword_1EB142248)
  {
    sub_1A47BA13C();
    sub_1A47BA210();
    sub_1A5249904();
    sub_1A47BBB7C(&qword_1EB1422A8, sub_1A47BA210);
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB142248);
    }
  }
}

void sub_1A47BA13C()
{
  if (!qword_1EB142250)
  {
    sub_1A47BA210();
    sub_1A5249904();
    sub_1A47BBB7C(&qword_1EB1422A8, sub_1A47BA210);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB142250);
    }
  }
}

void sub_1A47BA210()
{
  if (!qword_1EB142258)
  {
    sub_1A47BA290();
    sub_1A47BA434();
    v0 = sub_1A524A2D4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB142258);
    }
  }
}

void sub_1A47BA290()
{
  if (!qword_1EB142260)
  {
    sub_1A47BA2F8();
    v0 = sub_1A524BA74();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB142260);
    }
  }
}

void sub_1A47BA2F8()
{
  if (!qword_1EB142268)
  {
    sub_1A3CB67E8(255, &qword_1EB120BF0, &qword_1EB1265C0, 0x1E6978980, MEMORY[0x1E69E62F8]);
    sub_1A47BA3B0();
    v0 = sub_1A524B9D4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB142268);
    }
  }
}

unint64_t sub_1A47BA3B0()
{
  result = qword_1EB142278;
  if (!qword_1EB142278)
  {
    sub_1A3CB67E8(255, &qword_1EB120BF0, &qword_1EB1265C0, 0x1E6978980, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB142278);
  }

  return result;
}

unint64_t sub_1A47BA434()
{
  result = qword_1EB142280;
  if (!qword_1EB142280)
  {
    sub_1A47BA290();
    sub_1A47BA4C8();
    sub_1A47BA51C();
    sub_1A47BA5E8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB142280);
  }

  return result;
}

unint64_t sub_1A47BA4C8()
{
  result = qword_1EB142288;
  if (!qword_1EB142288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB142288);
  }

  return result;
}

unint64_t sub_1A47BA51C()
{
  result = qword_1EB142290;
  if (!qword_1EB142290)
  {
    sub_1A47BA2F8();
    sub_1A47BA594();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB142290);
  }

  return result;
}

unint64_t sub_1A47BA594()
{
  result = qword_1EB142298;
  if (!qword_1EB142298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB142298);
  }

  return result;
}

unint64_t sub_1A47BA5E8()
{
  result = qword_1EB1422A0;
  if (!qword_1EB1422A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1422A0);
  }

  return result;
}

void sub_1A47BA63C()
{
  if (!qword_1EB1422B0)
  {
    sub_1A3D6DF58();
    sub_1A47BBB7C(&qword_1EB121B60, sub_1A3D6DF58);
    v0 = sub_1A524B784();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB1422B0);
    }
  }
}

void sub_1A47BA6D0()
{
  if (!qword_1EB1422C0)
  {
    sub_1A41278A0();
    sub_1A4127958();
    v0 = sub_1A524B784();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB1422C0);
    }
  }
}