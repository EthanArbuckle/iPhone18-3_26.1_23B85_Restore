void sub_1B388CB94(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a1)
  {
    sub_1B37C2CC0(a5);
  }

  else
  {
    sub_1B37C2D34(a5);
  }
}

unint64_t sub_1B388CC40()
{
  result = qword_1EB857A48;
  if (!qword_1EB857A48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB857A40);
    sub_1B388CCF8();
    sub_1B370ED54(&qword_1EB857A80, &qword_1EB857A88);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB857A48);
  }

  return result;
}

unint64_t sub_1B388CCF8()
{
  result = qword_1EB857A50;
  if (!qword_1EB857A50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB857A58);
    sub_1B388CD84();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB857A50);
  }

  return result;
}

unint64_t sub_1B388CD84()
{
  result = qword_1EB857A60;
  if (!qword_1EB857A60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB857A68);
    sub_1B370ED54(&qword_1EB857A70, &qword_1EB857A78);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB857A60);
  }

  return result;
}

void sub_1B388CE68()
{
  v0 = sub_1B3C9C5A8();
  v1 = PULocalizedString(v0);

  v2 = sub_1B3C9C5E8();
  v4 = v3;

  qword_1EB878F98 = v2;
  unk_1EB878FA0 = v4;
}

void sub_1B388CEE0()
{
  OUTLINED_FUNCTION_39();
  v24 = v0;
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v7 = sub_1B3C9B6E8();
  OUTLINED_FUNCTION_0();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_8();
  v13 = v12 - v11;
  v25 = sub_1B37C3968();
  if (qword_1EB850120 != -1)
  {
    swift_once();
  }

  v14 = qword_1EB878F98;
  v15 = unk_1EB878FA0;
  v16 = swift_allocObject();
  *(v16 + 16) = v4;
  *(v16 + 24) = v2;
  v17 = v24 & 1;
  *(v16 + 32) = v17;
  (*(v9 + 104))(v13, *MEMORY[0x1E6980EF8], v7);
  sub_1B37E5BC4();

  v18 = v2;
  sub_1B3C9A838();
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB857B68);
  v20 = (v6 + v19[9]);
  *v20 = v14;
  v20[1] = v15;
  v21 = (v6 + v19[10]);
  *v21 = 0xD000000000000014;
  v21[1] = 0x80000001B3D1F370;
  *(v6 + v19[11]) = v25 & 1;
  *(v6 + v19[12]) = v17;
  sub_1B388D120(v25 & 1, v4, v18, v17, v6 + v19[13]);
  v22 = (v6 + v19[14]);
  *v22 = sub_1B38914A4;
  v22[1] = v16;
  v23 = v6 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB857B48) + 36);
  *v23 = xmmword_1B3D099C0;
  *(v23 + 16) = xmmword_1B3D099C0;
  *(v23 + 32) = 0;
  OUTLINED_FUNCTION_27();
}

uint64_t sub_1B388D120@<X0>(char a1@<W0>, uint64_t a2@<X1>, void *a3@<X2>, int a4@<W3>, uint64_t a5@<X8>)
{
  v26 = a4;
  v28 = a5;
  v8 = sub_1B3C9AB68();
  v27 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB857B88);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v25 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB857B90);
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v25 - v16;
  if (a1)
  {
    v18 = swift_allocObject();
    v25 = &v25;
    *(v18 + 16) = a2;
    *(v18 + 24) = a3;
    *(v18 + 32) = v26 & 1;
    MEMORY[0x1EEE9AC00](v18);
    *(&v25 - 4) = v19;
    *(&v25 - 3) = a3;
    *(&v25 - 16) = v20;
    v21 = a3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB857B98);
    sub_1B3890760();
    sub_1B3C9BCE8();
    v13[*(v11 + 36)] = 0;
    sub_1B3C9AB58();
    sub_1B3890900();
    sub_1B3891DCC(&unk_1EB854060, MEMORY[0x1E697C248]);
    sub_1B3C9B858();
    (*(v27 + 8))(v10, v8);
    sub_1B371B36C(v13, &qword_1EB857B88);
    v22 = v28;
    (*(v15 + 32))(v28, v17, v14);
    return __swift_storeEnumTagSinglePayload(v22, 0, 1, v14);
  }

  else
  {
    v24 = v28;

    return __swift_storeEnumTagSinglePayload(v24, 1, 1, v14);
  }
}

uint64_t sub_1B388D49C@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1B37C3B54();
  if (v2 && (v3 = sub_1B38824D4(v2), v4))
  {
    v5 = v4;
  }

  else
  {

    v3 = 0;
    v5 = 0xE000000000000000;
  }

  v14 = v3;
  v15 = v5;

  MEMORY[0x1B8C69C10](10911970, 0xA300000000000000);

  LOBYTE(v16) = 0;
  v17 = MEMORY[0x1E69E7CC0];
  sub_1B3C9B968();

  v6 = sub_1B3C9B5E8();
  KeyPath = swift_getKeyPath();
  v8 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB857BB0) + 36));
  *v8 = KeyPath;
  v8[1] = v6;
  v9 = [objc_opt_self() systemBlueColor];
  v10 = sub_1B3C9BAF8();
  v11 = swift_getKeyPath();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB857B98);
  v13 = (a1 + *(result + 36));
  *v13 = v11;
  v13[1] = v10;
  return result;
}

double sub_1B388D5FC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EB857BD8);
  sub_1B3C9A848();
  return v1;
}

uint64_t sub_1B388D638(uint64_t a1)
{
  v2 = *(a1 + 16);
  MEMORY[0x1EEE9AC00](a1);
  OUTLINED_FUNCTION_8();
  (*(v6 + 16))(v4 - v3, v1 + *(v5 + 52), v2);
  return swift_dynamicCast() ^ 1;
}

void sub_1B388D704()
{
  OUTLINED_FUNCTION_39();
  v38 = v1;
  v39 = v0;
  v2 = v1;
  v42 = v3;
  v4 = sub_1B3C9AB68();
  v41 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_8();
  v40 = v6 - v5;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB857D50);
  v50 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB857D58);
  v51 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB857D60);
  v52 = MEMORY[0x1E6981840];
  v37 = *(v2 + 16);
  v53 = sub_1B3C9D198();
  OUTLINED_FUNCTION_13_24();
  swift_getTupleTypeMetadata();
  OUTLINED_FUNCTION_5_31();
  sub_1B3C9C0C8();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_2_41();
  sub_1B3C9BD48();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB857D68);
  OUTLINED_FUNCTION_13_24();
  swift_getTupleTypeMetadata2();
  OUTLINED_FUNCTION_5_31();
  sub_1B3C9C0C8();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_15_1();
  sub_1B3C9BD48();
  OUTLINED_FUNCTION_5_31();
  sub_1B3C9D198();
  OUTLINED_FUNCTION_15_1();
  OUTLINED_FUNCTION_13_24();
  swift_getTupleTypeMetadata2();
  OUTLINED_FUNCTION_5_31();
  sub_1B3C9C0C8();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_15_1();
  sub_1B3C9BDC8();
  OUTLINED_FUNCTION_2_41();
  OUTLINED_FUNCTION_13_24();
  swift_getTupleTypeMetadata2();
  OUTLINED_FUNCTION_5_31();
  sub_1B3C9C0C8();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_2_41();
  sub_1B3C9A8C8();
  sub_1B3C9AB18();
  OUTLINED_FUNCTION_15_1();
  OUTLINED_FUNCTION_13_24();
  swift_getTupleTypeMetadata2();
  OUTLINED_FUNCTION_5_31();
  sub_1B3C9C0C8();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_2_41();
  sub_1B3C9BD48();
  v7 = OUTLINED_FUNCTION_98_0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v7);
  OUTLINED_FUNCTION_2_41();
  sub_1B3C9AB18();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB856248);
  OUTLINED_FUNCTION_15_1();
  sub_1B3C9AB18();
  OUTLINED_FUNCTION_50();
  WitnessTable = swift_getWitnessTable();
  v49 = OUTLINED_FUNCTION_12_23(&qword_1EB8515D8);
  v46 = swift_getWitnessTable();
  v47 = OUTLINED_FUNCTION_11_18(&qword_1EB856240);
  OUTLINED_FUNCTION_87();
  v35 = swift_getWitnessTable();
  v8 = sub_1B3C9BD28();
  OUTLINED_FUNCTION_0();
  v36 = v9;
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v31 - v11;
  OUTLINED_FUNCTION_9_22();
  v13 = swift_getWitnessTable();
  v32 = v13;
  OUTLINED_FUNCTION_7_29();
  v31 = sub_1B3891DCC(v14, v15);
  v50 = v8;
  v51 = v4;
  v16 = v4;
  v52 = v13;
  v53 = v31;
  v33 = MEMORY[0x1E697CDB0];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_0();
  v34 = v18;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v31 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v31 - v23;
  v25 = *(v38 + 24);
  v43 = v37;
  v44 = v25;
  v45 = v39;

  sub_1B3C9BCE8();
  v26 = v40;
  sub_1B3C9AB58();
  v27 = v32;
  v28 = v31;
  sub_1B3C9B858();
  (*(v41 + 8))(v26, v16);
  (*(v36 + 8))(v12, v8);
  v50 = v8;
  v51 = v16;
  v52 = v27;
  v53 = v28;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_1B377731C(v21, OpaqueTypeMetadata2, OpaqueTypeConformance2);
  v30 = *(v34 + 8);
  v30(v21, OpaqueTypeMetadata2);
  sub_1B377731C(v24, OpaqueTypeMetadata2, OpaqueTypeConformance2);
  v30(v24, OpaqueTypeMetadata2);
  OUTLINED_FUNCTION_27();
}

uint64_t sub_1B388DCDC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v27 = a1;
  v28 = a3;
  v29 = a4;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB857D50);
  v37 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB857D58);
  v38 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB857D60);
  v39 = MEMORY[0x1E6981840];
  v40 = sub_1B3C9D198();
  swift_getTupleTypeMetadata();
  sub_1B3C9C0C8();
  swift_getWitnessTable();
  sub_1B3C9BD48();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB857D68);
  swift_getTupleTypeMetadata2();
  sub_1B3C9C0C8();
  swift_getWitnessTable();
  sub_1B3C9BD48();
  sub_1B3C9D198();
  swift_getTupleTypeMetadata2();
  sub_1B3C9C0C8();
  swift_getWitnessTable();
  sub_1B3C9BDC8();
  swift_getTupleTypeMetadata2();
  sub_1B3C9C0C8();
  swift_getWitnessTable();
  sub_1B3C9A8C8();
  sub_1B3C9AB18();
  swift_getTupleTypeMetadata2();
  sub_1B3C9C0C8();
  swift_getWitnessTable();
  v5 = sub_1B3C9BD48();
  v24 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v24 - v6;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB852260);
  v8 = sub_1B3C9AB18();
  v25 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v24 - v9;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB856248);
  v11 = sub_1B3C9AB18();
  v26 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v24 - v15;
  v30 = a2;
  v31 = v28;
  v32 = v27;
  sub_1B375F548();
  sub_1B3C9BD38();
  sub_1B3C9B5E8();
  WitnessTable = swift_getWitnessTable();
  sub_1B3C9BA48();

  (*(v24 + 8))(v7, v5);
  v18 = sub_1B370ED54(&qword_1EB8515D8, &qword_1EB852260);
  v35 = WitnessTable;
  v36 = v18;
  v19 = swift_getWitnessTable();
  sub_1B3891648();
  sub_1B3C9B8C8();
  (*(v25 + 8))(v10, v8);
  v20 = sub_1B370ED54(&qword_1EB856240, &qword_1EB856248);
  v33 = v19;
  v34 = v20;
  v21 = swift_getWitnessTable();
  sub_1B377731C(v13, v11, v21);
  v22 = *(v26 + 8);
  v22(v13, v11);
  sub_1B377731C(v16, v11, v21);
  return (v22)(v16, v11);
}

uint64_t sub_1B388E2CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v55 = a4;
  OpaqueTypeConformance2 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB857D58);
  v65 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB857D60);
  v66 = MEMORY[0x1E6981840];
  v67 = sub_1B3C9D198();
  swift_getTupleTypeMetadata();
  sub_1B3C9C0C8();
  swift_getWitnessTable();
  sub_1B3C9BD48();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB857D68);
  swift_getTupleTypeMetadata2();
  sub_1B3C9C0C8();
  swift_getWitnessTable();
  sub_1B3C9BD48();
  sub_1B3C9D198();
  swift_getTupleTypeMetadata2();
  sub_1B3C9C0C8();
  swift_getWitnessTable();
  sub_1B3C9BDC8();
  swift_getTupleTypeMetadata2();
  v51 = sub_1B3C9C0C8();
  WitnessTable = swift_getWitnessTable();
  v7 = sub_1B3C9A8C8();
  v53 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v45 = &v39 - v8;
  v52 = sub_1B3C9AB18();
  v54 = *(v52 - 8);
  MEMORY[0x1EEE9AC00](v52);
  v46 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v49 = &v39 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB857D78);
  MEMORY[0x1EEE9AC00](v12);
  v14 = (&v39 - v13);
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB857D50);
  v56 = *(v48 - 8);
  MEMORY[0x1EEE9AC00](v48);
  v47 = &v39 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v40 = &v39 - v17;
  v18 = type metadata accessor for PUWallpaperShuffleAlbumRow();
  v19 = a1;
  sub_1B388EA5C(v18, v14);
  LOBYTE(a1) = sub_1B3C9B558();
  sub_1B3C9A738();
  v20 = *(v12 + 36);
  v44 = v12;
  v21 = v14 + v20;
  *v21 = a1;
  *(v21 + 1) = v22;
  *(v21 + 2) = v23;
  *(v21 + 3) = v24;
  *(v21 + 4) = v25;
  v21[40] = 0;
  v60 = a2;
  v61 = a3;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB857D80);
  v42 = sub_1B38916A4();
  v41 = sub_1B3891958();
  sub_1B3C9B7C8();
  sub_1B371B36C(v14, &qword_1EB857D78);
  sub_1B3C9B4B8();
  v57 = a2;
  v58 = a3;
  v59 = v19;
  v26 = v45;
  sub_1B3C9A8B8();
  v27 = swift_getWitnessTable();
  v28 = v46;
  sub_1B3C9B8B8();
  (*(v53 + 8))(v26, v7);
  v63[2] = v27;
  v63[3] = MEMORY[0x1E697FB50];
  v29 = v52;
  v30 = swift_getWitnessTable();
  v31 = v49;
  sub_1B377731C(v28, v29, v30);
  v32 = v54;
  v33 = *(v54 + 8);
  v33(v28, v29);
  v34 = v47;
  v35 = v40;
  v36 = v48;
  (*(v56 + 16))(v47, v40, v48);
  v63[0] = v34;
  (*(v32 + 16))(v28, v31, v29);
  v63[1] = v28;
  v62[0] = v36;
  v62[1] = v29;
  OpaqueTypeConformance2 = v44;
  v65 = v43;
  v66 = v42;
  v67 = v41;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v65 = v30;
  sub_1B375F3DC(v63, 2, v62);
  v33(v31, v29);
  v37 = *(v56 + 8);
  v37(v35, v36);
  v33(v28, v29);
  return (v37)(v34, v36);
}

uint64_t sub_1B388EA5C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  if (*(v2 + *(a1 + 44)) == 1)
  {
    v4 = [objc_opt_self() systemBlueColor];
    v5 = sub_1B3C9BAF8();
  }

  else
  {
    sub_1B3C9BBC8();
    v5 = sub_1B3C9BBA8();
  }

  v6 = sub_1B3C9BC38();
  KeyPath = swift_getKeyPath();
  v8 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB857DA8) + 36));
  v9 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8562C8) + 28);
  v10 = *MEMORY[0x1E69816C0];
  sub_1B3C9BC68();
  OUTLINED_FUNCTION_0_1();
  (*(v11 + 104))(v8 + v9, v10);
  *v8 = swift_getKeyPath();
  *a2 = v6;
  a2[1] = KeyPath;
  a2[2] = v5;
  v12 = sub_1B3C9B5E8();

  v13 = swift_getKeyPath();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB857D98);
  v15 = (a2 + *(result + 36));
  *v15 = v13;
  v15[1] = v12;
  return result;
}

uint64_t sub_1B388EC08@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1B3C9AFE8();
  sub_1B37772C8(a1, a2, &qword_1EB857D78);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB857D80);
  v6 = (a2 + *(result + 36));
  *v6 = v4;
  v6[1] = sub_1B388EC8C;
  v6[2] = 0;
  return result;
}

uint64_t sub_1B388ECB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v38 = a3;
  v41 = a4;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB857D68);
  v6 = MEMORY[0x1E6981840];
  swift_getTupleTypeMetadata2();
  sub_1B3C9C0C8();
  swift_getWitnessTable();
  sub_1B3C9BD48();
  sub_1B3C9D198();
  swift_getTupleTypeMetadata2();
  sub_1B3C9C0C8();
  WitnessTable = swift_getWitnessTable();
  v35 = sub_1B3C9BDC8();
  v40 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v36 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v37 = &v28 - v9;
  v51 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB857D58);
  v52 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB857D60);
  v53 = v6;
  v54 = sub_1B3C9D198();
  swift_getTupleTypeMetadata();
  sub_1B3C9C0C8();
  swift_getWitnessTable();
  v10 = sub_1B3C9BD48();
  v30 = *(v10 - 8);
  v11 = v30;
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v31 = &v28 - v15;
  v16 = v38;
  v45 = a2;
  v46 = v38;
  v47 = a1;
  sub_1B375F548();
  sub_1B3C9BD38();
  v33 = swift_getWitnessTable();
  v29 = v10;
  sub_1B377731C(v13, v10, v33);
  v17 = *(v11 + 8);
  v32 = v11 + 8;
  v34 = v17;
  v17(v13, v10);
  sub_1B3C9B008();
  v42 = a2;
  v43 = v16;
  v44 = a1;
  v18 = v36;
  sub_1B3C9BDB8();
  v19 = v35;
  v20 = swift_getWitnessTable();
  v21 = v37;
  sub_1B377731C(v18, v19, v20);
  v22 = v40;
  v23 = *(v40 + 8);
  v23(v18, v19);
  v24 = v31;
  v25 = v29;
  (*(v30 + 16))(v13, v31, v29);
  v51 = v13;
  (*(v22 + 16))(v18, v21, v19);
  v52 = v18;
  v50[0] = v25;
  v50[1] = v19;
  v48 = v33;
  v49 = v20;
  sub_1B375F3DC(&v51, 2, v50);
  v23(v21, v19);
  v26 = v34;
  v34(v24, v25);
  v23(v18, v19);
  return v26(v13, v25);
}

uint64_t sub_1B388F1E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v43 = a4;
  v39 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v37 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v37 - v9;
  v11 = sub_1B3C9D198();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v45 = &v37 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB857D60);
  v41 = *(v17 - 8);
  v42 = v17;
  MEMORY[0x1EEE9AC00](v17);
  v40 = &v37 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v37 - v20;
  v22 = a3;
  v23 = type metadata accessor for PUWallpaperShuffleAlbumRow();
  sub_1B388F6F4(v56);
  memcpy(__dst, v56, 0x81uLL);
  v44 = v21;
  sub_1B388F7F0();
  v24 = sub_1B388D638(v23);
  v25 = 1;
  if (v24)
  {
    sub_1B377731C(a1 + *(v23 + 52), a2, v22);
    v26 = v37;
    sub_1B377731C(v10, a2, v22);
    v27 = v39;
    (*(v39 + 8))(v10, a2);
    (*(v27 + 32))(v14, v26, a2);
    v25 = 0;
  }

  __swift_storeEnumTagSinglePayload(v14, v25, 1, a2);
  v28 = v45;
  v38 = v22;
  sub_1B371AD74(v14, v45);
  v39 = *(v12 + 8);
  (v39)(v14, v11);
  memcpy(v54, __dst, 0x81uLL);
  v55[0] = v54;
  v30 = v40;
  v29 = v41;
  v31 = v42;
  (*(v41 + 16))(v40, v44, v42);
  v52 = 0;
  v53 = 1;
  v55[1] = v30;
  v55[2] = &v52;
  (*(v12 + 16))(v14, v28, v11);
  v55[3] = v14;
  sub_1B37772C8(__dst, v56, &qword_1EB857D58);
  v51[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB857D58);
  v51[1] = v31;
  v51[2] = MEMORY[0x1E6981840];
  v51[3] = v11;
  v47 = sub_1B3891BA0();
  v32 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB857DF0);
  v33 = sub_1B3891A98();
  v56[0] = v32;
  v56[1] = v33;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v49 = MEMORY[0x1E6981838];
  v46 = v38;
  WitnessTable = swift_getWitnessTable();
  sub_1B375F3DC(v55, 4, v51);
  sub_1B371B36C(__dst, &qword_1EB857D58);
  v34 = v39;
  (v39)(v45, v11);
  v35 = *(v29 + 8);
  v35(v44, v31);
  v34(v14, v11);
  v35(v30, v31);
  memcpy(v56, v54, 0x81uLL);
  return sub_1B371B36C(v56, &qword_1EB857D58);
}

uint64_t sub_1B388F6F4@<X0>(uint64_t a1@<X8>)
{

  OUTLINED_FUNCTION_98_0();
  v2 = sub_1B3C9BC38();
  v3 = sub_1B3C9B5E8();
  KeyPath = swift_getKeyPath();
  v5 = sub_1B3C9BBB8();
  v6 = swift_getKeyPath();
  sub_1B388D5FC();
  sub_1B3C9C008();
  sub_1B3C9A8D8();
  v7 = sub_1B3C9B558();
  result = sub_1B3C9A738();
  *(a1 + 40) = v13;
  *a1 = v2;
  *(a1 + 8) = KeyPath;
  *(a1 + 16) = v3;
  *(a1 + 24) = v6;
  *(a1 + 32) = v5;
  *(a1 + 56) = v14;
  *(a1 + 72) = v15;
  *(a1 + 88) = v7;
  *(a1 + 96) = v9;
  *(a1 + 104) = v10;
  *(a1 + 112) = v11;
  *(a1 + 120) = v12;
  *(a1 + 128) = 0;
  return result;
}

void sub_1B388F7F0()
{
  OUTLINED_FUNCTION_39();
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB857DF0);
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v18 - v5;
  v7 = (v0 + *(v2 + 36));
  v8 = v7[1];
  v18 = *v7;
  v19 = v8;
  sub_1B371B158();

  v9 = sub_1B3C9B7A8();
  v11 = v10;
  v18 = v9;
  v19 = v10;
  v13 = v12 & 1;
  v20 = v12 & 1;
  v21 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB857DF8);
  sub_1B3891A14();
  sub_1B3C9B7C8();
  sub_1B371B148(v9, v11, v13);

  v15 = sub_1B3C9BBB8();
  KeyPath = swift_getKeyPath();
  v17 = &v6[*(v3 + 36)];
  *v17 = KeyPath;
  v17[1] = v15;
  sub_1B3891A98();
  sub_1B3C9B968();
  sub_1B371B36C(v6, &qword_1EB857DF0);
  OUTLINED_FUNCTION_27();
}

uint64_t sub_1B388F994@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v37 = a3;
  v38 = a1;
  v43 = a4;
  swift_getTupleTypeMetadata2();
  v35 = sub_1B3C9C0C8();
  WitnessTable = swift_getWitnessTable();
  v5 = sub_1B3C9BD48();
  v36 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &WitnessTable - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v34 = &WitnessTable - v9;
  v10 = sub_1B3C9D198();
  v40 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &WitnessTable - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v42 = &WitnessTable - v14;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB857D68);
  MEMORY[0x1EEE9AC00](v39);
  v41 = &WitnessTable - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &WitnessTable - v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB857DC8);
  v19 = v37;
  sub_1B370ED54(&qword_1EB857DD0, &qword_1EB857DC8);
  v20 = v38;
  *v18 = sub_1B375F548();
  *(v18 + 1) = 0;
  v18[16] = 0;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB857DD8);
  sub_1B388FF40(&v18[*(v21 + 44)]);
  v22 = type metadata accessor for PUWallpaperShuffleAlbumRow();
  v23 = sub_1B388D638(v22);
  if (v23)
  {
    MEMORY[0x1EEE9AC00](v23);
    *(&WitnessTable - 4) = a2;
    *(&WitnessTable - 3) = v19;
    *(&WitnessTable - 2) = v20;
    sub_1B375F548();
    sub_1B3C9BD38();
    v24 = swift_getWitnessTable();
    v25 = v34;
    sub_1B377731C(v7, v5, v24);
    v26 = v36;
    v27 = *(v36 + 8);
    v27(v7, v5);
    sub_1B377731C(v25, v5, v24);
    v27(v25, v5);
    (*(v26 + 32))(v12, v7, v5);
    __swift_storeEnumTagSinglePayload(v12, 0, 1, v5);
  }

  else
  {
    __swift_storeEnumTagSinglePayload(v12, 1, 1, v5);
    swift_getWitnessTable();
  }

  v28 = v42;
  sub_1B371AD74(v12, v42);
  v29 = v40;
  v30 = *(v40 + 8);
  v30(v12, v10);
  v31 = v41;
  v38 = v18;
  sub_1B37772C8(v18, v41, &qword_1EB857D68);
  v48[0] = v31;
  (*(v29 + 16))(v12, v28, v10);
  v48[1] = v12;
  v47[0] = v39;
  v47[1] = v10;
  v45 = sub_1B370ED54(&qword_1EB857DE0, &qword_1EB857D68);
  v44 = swift_getWitnessTable();
  v46 = swift_getWitnessTable();
  sub_1B375F3DC(v48, 2, v47);
  v30(v28, v10);
  sub_1B371B36C(v38, &qword_1EB857D68);
  v30(v12, v10);
  return sub_1B371B36C(v31, &qword_1EB857D68);
}

uint64_t sub_1B388FF40@<X0>(char *a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB857D60);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v15[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v15[-v7 - 8];
  type metadata accessor for PUWallpaperShuffleAlbumRow();
  sub_1B388F6F4(v15);
  sub_1B388F7F0();
  v9 = *(v3 + 16);
  v9(v5, v8, v2);
  memcpy(v16, v15, 0x81uLL);
  memcpy(a1, v15, 0x81uLL);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB857DE8);
  v9(&a1[*(v10 + 48)], v5, v2);
  v11 = &a1[*(v10 + 64)];
  *v11 = 0;
  v11[8] = 1;
  sub_1B37772C8(v16, __dst, &qword_1EB857D58);
  v12 = *(v3 + 8);
  v12(v8, v2);
  v12(v5, v2);
  memcpy(__dst, v15, 0x81uLL);
  return sub_1B371B36C(__dst, &qword_1EB857D58);
}

uint64_t sub_1B389015C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v15 - v10;
  v12 = type metadata accessor for PUWallpaperShuffleAlbumRow();
  sub_1B377731C(a1 + *(v12 + 52), a2, a3);
  (*(v6 + 16))(v8, v11, a2);
  v17 = 0;
  v18 = 1;
  v19[0] = v8;
  v19[1] = &v17;
  v16[0] = a2;
  v16[1] = MEMORY[0x1E6981840];
  v15[0] = a3;
  v15[1] = MEMORY[0x1E6981838];
  sub_1B375F3DC(v19, 2, v16);
  v13 = *(v6 + 8);
  v13(v11, a2);
  return (v13)(v8, a2);
}

uint64_t sub_1B389030C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  v7 = sub_1B3C9AFE8();
  *a2 = v3;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5;
  *(a2 + 24) = v6;
  *(a2 + 32) = v7;
  *(a2 + 40) = sub_1B36FB5A8;
  *(a2 + 48) = 0;
  sub_1B370EFD4(v3, v4, v5);
}

uint64_t objectdestroyTm_7(uint64_t a1)
{

  return MEMORY[0x1EEE6BDD0](v1, a1, 7);
}

unint64_t sub_1B3890400()
{
  result = qword_1EB857AE8;
  if (!qword_1EB857AE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB857AB0);
    sub_1B370ED54(&qword_1EB857AF0, &qword_1EB857AF8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB857AE8);
  }

  return result;
}

unint64_t sub_1B38904D4()
{
  result = qword_1EB857B18;
  if (!qword_1EB857B18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB857B18);
  }

  return result;
}

unint64_t sub_1B3890528()
{
  result = qword_1EB857B20;
  if (!qword_1EB857B20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB857B20);
  }

  return result;
}

unint64_t sub_1B3890584()
{
  result = qword_1EB857B28;
  if (!qword_1EB857B28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB857B28);
  }

  return result;
}

unint64_t sub_1B38905E4()
{
  result = qword_1EB857B58;
  if (!qword_1EB857B58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB857B48);
    sub_1B370ED54(&qword_1EB857B60, &qword_1EB857B68);
    sub_1B370ED54(&qword_1EB857B70, &qword_1EB857B78);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB857B58);
  }

  return result;
}

unint64_t sub_1B38906C8()
{
  result = qword_1EB857B80;
  if (!qword_1EB857B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB857B80);
  }

  return result;
}

unint64_t sub_1B3890760()
{
  result = qword_1EB857BA0;
  if (!qword_1EB857BA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB857B98);
    sub_1B3890818();
    sub_1B370ED54(&qword_1EB852268, &qword_1EB852270);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB857BA0);
  }

  return result;
}

unint64_t sub_1B3890818()
{
  result = qword_1EB857BA8;
  if (!qword_1EB857BA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB857BB0);
    swift_getOpaqueTypeConformance2();
    sub_1B370ED54(&qword_1EB8515D8, &qword_1EB852260);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB857BA8);
  }

  return result;
}

unint64_t sub_1B3890900()
{
  result = qword_1EB857BB8;
  if (!qword_1EB857BB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB857B88);
    sub_1B370ED54(&qword_1EB857BC0, &qword_1EB857BC8);
    sub_1B370ED54(&qword_1EB856240, &qword_1EB856248);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB857BB8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PUWallpaperShuffleConfigurationContentView.GeometryChangeResult(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFF)
  {
    if (a2 + 65281 <= 0xFFFEFFFF)
    {
      v2 = 2;
    }

    else
    {
      v2 = 4;
    }

    if (a2 + 65281 < 0xFF0000)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = *(a1 + 2);
      if (!*(a1 + 2))
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 16)) - 65282;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v5 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for PUWallpaperShuffleConfigurationContentView.GeometryChangeResult(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65281 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65281 < 0xFF0000)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 16) + 1;
    *result = a2 - 255;
    switch(v5)
    {
      case 1:
        *(result + 2) = v6;
        break;
      case 2:
        *(result + 2) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 2) = v6;
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
        *(result + 2) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 2) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 2) = 0;
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
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1B3890B74(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 17))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
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

uint64_t sub_1B3890BB4(uint64_t result, int a2, int a3)
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

void sub_1B3890C08()
{
  sub_1B38911A8();
  if (v0 <= 0x3F)
  {
    swift_checkMetadataState();
    if (v1 <= 0x3F)
    {
      sub_1B3891204();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1B3890CC4(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EB857BD8);
  v7 = *(*(v6 - 8) + 84);
  v8 = *(a3 + 16);
  v9 = *(v8 - 8);
  v10 = *(v9 + 84);
  if (v7 <= v10)
  {
    v11 = *(v9 + 84);
  }

  else
  {
    v11 = *(*(v6 - 8) + 84);
  }

  if (v11 <= 0x7FFFFFFF)
  {
    v12 = 0x7FFFFFFF;
  }

  else
  {
    v12 = v11;
  }

  v13 = *(*(v6 - 8) + 64);
  v14 = *(v9 + 80);
  v15 = *(v9 + 64);
  if (!a2)
  {
    return 0;
  }

  v16 = v14 + 18;
  if (v12 >= a2)
  {
LABEL_28:
    if (v7 == v12)
    {
      v24 = a1;
      v10 = *(*(v6 - 8) + 84);
      v8 = v6;
    }

    else
    {
      v25 = (a1 + v13 + 7) & 0xFFFFFFFFFFFFFFF8;
      if ((v11 & 0x80000000) == 0)
      {
        v26 = *(v25 + 8);
        if (v26 >= 0xFFFFFFFF)
        {
          LODWORD(v26) = -1;
        }

        return (v26 + 1);
      }

      v24 = (v16 + ((v25 + 23) & 0xFFFFFFFFFFFFFFF8)) & ~v14;
    }

    return __swift_getEnumTagSinglePayload(v24, v10, v8);
  }

  result = ((v15 + ((v16 + ((((v13 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)) & ~v14) + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  if ((result & 0xFFFFFFF8) != 0)
  {
    v18 = 2;
  }

  else
  {
    v18 = a2 - v12 + 1;
  }

  if (v18 >= 0x10000)
  {
    v19 = 4;
  }

  else
  {
    v19 = 2;
  }

  if (v18 < 0x100)
  {
    v19 = 1;
  }

  if (v18 >= 2)
  {
    v20 = v19;
  }

  else
  {
    v20 = 0;
  }

  switch(v20)
  {
    case 1:
      v21 = *(a1 + result);
      if (!*(a1 + result))
      {
        goto LABEL_28;
      }

      goto LABEL_25;
    case 2:
      v21 = *(a1 + result);
      if (!*(a1 + result))
      {
        goto LABEL_28;
      }

      goto LABEL_25;
    case 3:
      __break(1u);
      return result;
    case 4:
      v21 = *(a1 + result);
      if (!v21)
      {
        goto LABEL_28;
      }

LABEL_25:
      v22 = v21 - 1;
      if ((result & 0xFFFFFFF8) != 0)
      {
        v22 = 0;
        v23 = *a1;
      }

      else
      {
        v23 = 0;
      }

      result = v12 + (v23 | v22) + 1;
      break;
    default:
      goto LABEL_28;
  }

  return result;
}

void sub_1B3890EFC(_DWORD *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EB857BD8);
  v9 = *(*(v8 - 8) + 84);
  v10 = *(a4 + 16);
  v11 = *(v10 - 8);
  v12 = *(v11 + 84);
  if (v9 <= v12)
  {
    v13 = *(v11 + 84);
  }

  else
  {
    v13 = *(*(v8 - 8) + 84);
  }

  if (v13 <= 0x7FFFFFFF)
  {
    v14 = 0x7FFFFFFF;
  }

  else
  {
    v14 = v13;
  }

  v15 = *(*(v8 - 8) + 64);
  v16 = *(v11 + 80);
  v17 = ((*(v11 + 64) + ((v16 + 18 + ((((v15 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)) & ~v16) + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v14 >= a3)
  {
    v20 = 0;
  }

  else
  {
    if (((*(v11 + 64) + ((v16 + 18 + ((((v15 + 7) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8)) & ~v16) + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v18 = a3 - v14 + 1;
    }

    else
    {
      v18 = 2;
    }

    if (v18 >= 0x10000)
    {
      v19 = 4;
    }

    else
    {
      v19 = 2;
    }

    if (v18 < 0x100)
    {
      v19 = 1;
    }

    if (v18 >= 2)
    {
      v20 = v19;
    }

    else
    {
      v20 = 0;
    }
  }

  if (a2 <= v14)
  {
    switch(v20)
    {
      case 1:
        *(a1 + v17) = 0;
        if (a2)
        {
          goto LABEL_35;
        }

        return;
      case 2:
        *(a1 + v17) = 0;
        if (a2)
        {
          goto LABEL_35;
        }

        return;
      case 3:
LABEL_48:
        __break(1u);
        return;
      case 4:
        *(a1 + v17) = 0;
        goto LABEL_34;
      default:
LABEL_34:
        if (!a2)
        {
          return;
        }

LABEL_35:
        if (v9 == v14)
        {
          v23 = a1;
          v24 = a2;
          v10 = v8;
        }

        else
        {
          v25 = ((a1 + v15 + 7) & 0xFFFFFFFFFFFFFFF8);
          if ((v13 & 0x80000000) == 0)
          {
            if ((a2 & 0x80000000) != 0)
            {
              *v25 = a2 & 0x7FFFFFFF;
              v25[1] = 0;
            }

            else
            {
              v25[1] = (a2 - 1);
            }

            return;
          }

          v23 = (v16 + 18 + ((v25 + 23) & 0xFFFFFFFFFFFFFFF8)) & ~v16;
          v24 = a2;
          v9 = v12;
        }

        __swift_storeEnumTagSinglePayload(v23, v24, v9, v10);
        break;
    }
  }

  else
  {
    if (v17)
    {
      v21 = 1;
    }

    else
    {
      v21 = a2 - v14;
    }

    if (v17)
    {
      v22 = ~v14 + a2;
      bzero(a1, v17);
      *a1 = v22;
    }

    switch(v20)
    {
      case 1:
        *(a1 + v17) = v21;
        break;
      case 2:
        *(a1 + v17) = v21;
        break;
      case 3:
        goto LABEL_48;
      case 4:
        *(a1 + v17) = v21;
        break;
      default:
        return;
    }
  }
}

void sub_1B38911A8()
{
  if (!qword_1EB857C60)
  {
    sub_1B37E5BC4();
    v0 = sub_1B3C9A858();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB857C60);
    }
  }
}

unint64_t sub_1B3891204()
{
  result = qword_1EB857C68;
  if (!qword_1EB857C68)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_1EB857C68);
  }

  return result;
}

unint64_t sub_1B389124C()
{
  result = qword_1EB857C70;
  if (!qword_1EB857C70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB857C78);
    sub_1B370ED54(&qword_1EB857C80, &qword_1EB857C88);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB857C70);
  }

  return result;
}

unint64_t sub_1B3891304()
{
  result = qword_1EB857C90;
  if (!qword_1EB857C90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB857C98);
    sub_1B3891388();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB857C90);
  }

  return result;
}

unint64_t sub_1B3891388()
{
  result = qword_1EB857CA0;
  if (!qword_1EB857CA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB857B38);
    sub_1B38905E4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB857CA0);
  }

  return result;
}

unint64_t sub_1B38914E4()
{
  result = qword_1EB857D10;
  if (!qword_1EB857D10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB857D00);
    type metadata accessor for PFPosterShuffleFrequency(255);
    sub_1B3891DCC(&qword_1EB857D08, type metadata accessor for PFPosterShuffleFrequency);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB857D10);
  }

  return result;
}

unint64_t sub_1B38915DC()
{
  result = qword_1EB857D40;
  if (!qword_1EB857D40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB857D40);
  }

  return result;
}

unint64_t sub_1B3891648()
{
  result = qword_1EB857D70;
  if (!qword_1EB857D70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB857D70);
  }

  return result;
}

unint64_t sub_1B38916A4()
{
  result = qword_1EB857D88;
  if (!qword_1EB857D88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB857D78);
    sub_1B3891730();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB857D88);
  }

  return result;
}

unint64_t sub_1B3891730()
{
  result = qword_1EB857D90;
  if (!qword_1EB857D90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB857D98);
    sub_1B38917E8();
    sub_1B370ED54(&qword_1EB8515D8, &qword_1EB852260);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB857D90);
  }

  return result;
}

unint64_t sub_1B38917E8()
{
  result = qword_1EB857DA0;
  if (!qword_1EB857DA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB857DA8);
    sub_1B38918A0();
    sub_1B370ED54(&qword_1EB856330, &qword_1EB8562C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB857DA0);
  }

  return result;
}

unint64_t sub_1B38918A0()
{
  result = qword_1EB857DB0;
  if (!qword_1EB857DB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB857DB8);
    sub_1B370ED54(&qword_1EB852268, &qword_1EB852270);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB857DB0);
  }

  return result;
}

unint64_t sub_1B3891958()
{
  result = qword_1EB857DC0;
  if (!qword_1EB857DC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB857D80);
    sub_1B38916A4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB857DC0);
  }

  return result;
}

unint64_t sub_1B3891A14()
{
  result = qword_1EB857E00;
  if (!qword_1EB857E00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB857DF8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB857E00);
  }

  return result;
}

unint64_t sub_1B3891A98()
{
  result = qword_1EB857E08;
  if (!qword_1EB857E08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB857DF0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB857DF8);
    sub_1B3891A14();
    swift_getOpaqueTypeConformance2();
    sub_1B370ED54(&qword_1EB852268, &qword_1EB852270);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB857E08);
  }

  return result;
}

unint64_t sub_1B3891BA0()
{
  result = qword_1EB857E10;
  if (!qword_1EB857E10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB857D58);
    sub_1B3891C2C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB857E10);
  }

  return result;
}

unint64_t sub_1B3891C2C()
{
  result = qword_1EB857E18;
  if (!qword_1EB857E18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB857E20);
    sub_1B3787CEC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB857E18);
  }

  return result;
}

unint64_t sub_1B3891CE8()
{
  result = qword_1EB857E58;
  if (!qword_1EB857E58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB857E28);
    sub_1B370ED54(&qword_1EB857E60, &qword_1EB857E68);
    sub_1B370ED54(&qword_1EB857540, &qword_1EB857520);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB857E58);
  }

  return result;
}

uint64_t sub_1B3891DCC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1B3891E1C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB857EA0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1B3891E8C()
{
  result = qword_1EB857EC8;
  if (!qword_1EB857EC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB857CB8);
    sub_1B3891F44();
    sub_1B370ED54(&qword_1EB857B70, &qword_1EB857B78);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB857EC8);
  }

  return result;
}

unint64_t sub_1B3891F44()
{
  result = qword_1EB857ED0;
  if (!qword_1EB857ED0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB857CB0);
    sub_1B370ED54(&qword_1EB857ED8, &qword_1EB857EE0);
    sub_1B370ED54(&qword_1EB8515D8, &qword_1EB852260);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB857ED0);
  }

  return result;
}

unint64_t sub_1B3892028()
{
  result = qword_1EB857EE8;
  if (!qword_1EB857EE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB857E70);
    sub_1B38920E0();
    sub_1B370ED54(&qword_1EB854C68, &qword_1EB854C70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB857EE8);
  }

  return result;
}

unint64_t sub_1B38920E0()
{
  result = qword_1EB857EF0;
  if (!qword_1EB857EF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB857E40);
    sub_1B3892198();
    sub_1B370ED54(&qword_1EB852268, &qword_1EB852270);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB857EF0);
  }

  return result;
}

unint64_t sub_1B3892198()
{
  result = qword_1EB857EF8;
  if (!qword_1EB857EF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB857E38);
    sub_1B3892250();
    sub_1B370ED54(&qword_1EB852268, &qword_1EB852270);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB857EF8);
  }

  return result;
}

unint64_t sub_1B3892250()
{
  result = qword_1EB857F00;
  if (!qword_1EB857F00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB857E30);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB857E28);
    sub_1B3C9B428();
    sub_1B3891CE8();
    sub_1B3891DCC(&qword_1EB857548, MEMORY[0x1E697CB70]);
    swift_getOpaqueTypeConformance2();
    sub_1B370ED54(&qword_1EB852F68, &qword_1EB852F70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB857F00);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_11_18(unint64_t *a1)
{

  return sub_1B370ED54(a1, v1);
}

uint64_t OUTLINED_FUNCTION_12_23(unint64_t *a1)
{

  return sub_1B370ED54(a1, v1);
}

uint64_t OUTLINED_FUNCTION_19_20()
{

  return swift_getWitnessTable();
}

uint64_t sub_1B38924E8(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_1_2(a1);
  result = sub_1B371192C(v2, v3);
  *v1 = result;
  return result;
}

char *sub_1B3892510(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = &v3[OBJC_IVAR____TtC15PhotosUIPrivate31StoryColorGradeEditorItemLayout_clipLayoutIndex];
  *v6 = 0;
  v6[8] = 1;
  v7 = &v3[OBJC_IVAR____TtC15PhotosUIPrivate31StoryColorGradeEditorItemLayout_overlayLayoutIndex];
  *v7 = 0;
  v7[8] = 1;
  v8 = OBJC_IVAR____TtC15PhotosUIPrivate31StoryColorGradeEditorItemLayout_previewMode;
  sub_1B3710718(0, &qword_1EB84F200);
  v9 = [swift_getObjCClassFromMetadata() sharedInstance];
  v10 = [v9 colorGradeEditorPreviewMode];

  *&v3[v8] = v10;
  v11 = &v3[OBJC_IVAR____TtC15PhotosUIPrivate31StoryColorGradeEditorItemLayout_updateFlags];
  *v11 = 0;
  *(v11 + 1) = 0;
  *(v11 + 8) = 0;
  *&v3[OBJC_IVAR____TtC15PhotosUIPrivate31StoryColorGradeEditorItemLayout_clip] = 0;
  v12 = &v3[OBJC_IVAR____TtC15PhotosUIPrivate31StoryColorGradeEditorItemLayout_clipTimeRange];
  v13 = MEMORY[0x1E69C4188];
  v14 = *(MEMORY[0x1E69C4188] + 16);
  *v12 = *MEMORY[0x1E69C4188];
  *(v12 + 1) = v14;
  *(v12 + 2) = *(v13 + 32);
  *&v3[OBJC_IVAR____TtC15PhotosUIPrivate31StoryColorGradeEditorItemLayout_colorGradeKind] = a1;
  *&v3[OBJC_IVAR____TtC15PhotosUIPrivate31StoryColorGradeEditorItemLayout_viewModel] = a2;
  v15 = &a2[OBJC_IVAR____TtC15PhotosUIPrivate30StoryColorGradeEditorViewModel_layoutSpec];
  swift_beginAccess();
  *&v3[OBJC_IVAR____TtC15PhotosUIPrivate31StoryColorGradeEditorItemLayout_captionHeight] = *(*__swift_project_boxed_opaque_existential_0Tm(v15, *(v15 + 3)) + OBJC_IVAR____TtC15PhotosUIPrivate39StoryColorGradeEditorConcreteLayoutSpec_estimatedCaptionHeight);
  v16 = objc_allocWithZone(MEMORY[0x1E69C3A98]);
  v17 = a2;
  v18 = [v16 init];
  *&v3[OBJC_IVAR____TtC15PhotosUIPrivate31StoryColorGradeEditorItemLayout_clipLayout] = v18;
  objc_allocWithZone(type metadata accessor for StoryColorGradeEditorItemLayout.OverlayLayout());
  v19 = v17;
  *&v3[OBJC_IVAR____TtC15PhotosUIPrivate31StoryColorGradeEditorItemLayout_overlayLayout] = sub_1B3893054(a1, v19);
  v27.receiver = v3;
  v27.super_class = type metadata accessor for StoryColorGradeEditorItemLayout();
  v20 = objc_msgSendSuper2(&v27, sel_init);
  v21 = [v20 axGroup];
  [v21 setAxRole_];

  v22 = [v20 addSublayout_];
  v23 = &v20[OBJC_IVAR____TtC15PhotosUIPrivate31StoryColorGradeEditorItemLayout_clipLayoutIndex];
  *v23 = v22;
  v23[8] = 0;
  v24 = [v20 addSublayout_];
  v25 = &v20[OBJC_IVAR____TtC15PhotosUIPrivate31StoryColorGradeEditorItemLayout_overlayLayoutIndex];
  *v25 = v24;
  v25[8] = 0;
  sub_1B3892988();

  return v20;
}

void sub_1B3892794(void *a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC15PhotosUIPrivate31StoryColorGradeEditorItemLayout_clip);
  v4 = v3;
  v5 = a1;
  v7 = v5;
  if (v3 == a1)
  {
  }

  else
  {
    v6 = [v4 isEqual:v5];

    if ((v6 & 1) == 0)
    {

      sub_1B3892988();
    }
  }
}

uint64_t sub_1B389285C(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC15PhotosUIPrivate31StoryColorGradeEditorItemLayout_clip);
  *(v1 + OBJC_IVAR____TtC15PhotosUIPrivate31StoryColorGradeEditorItemLayout_clip) = a1;
  swift_unknownObjectRetain();
  sub_1B3892794(v2);
  swift_unknownObjectRelease();

  return swift_unknownObjectRelease();
}

uint64_t sub_1B38928BC(_OWORD *a1)
{
  v2 = a1[1];
  *&v7.start.value = *a1;
  *&v7.start.epoch = v2;
  v3 = *(v1 + OBJC_IVAR____TtC15PhotosUIPrivate31StoryColorGradeEditorItemLayout_clipTimeRange);
  v4 = *(v1 + OBJC_IVAR____TtC15PhotosUIPrivate31StoryColorGradeEditorItemLayout_clipTimeRange + 16);
  *&v7.duration.timescale = a1[2];
  *&range1.start.value = v3;
  v5 = *(v1 + OBJC_IVAR____TtC15PhotosUIPrivate31StoryColorGradeEditorItemLayout_clipTimeRange + 32);
  *&range1.start.epoch = v4;
  *&range1.duration.timescale = v5;
  result = CMTimeRangeEqual(&range1, &v7);
  if (!result)
  {
    return sub_1B3892988();
  }

  return result;
}

uint64_t sub_1B3892914()
{
  OUTLINED_FUNCTION_3_43(OBJC_IVAR____TtC15PhotosUIPrivate31StoryColorGradeEditorItemLayout_clipTimeRange);
  v1 = v0[1];
  *v2 = *v0;
  v2[1] = v1;
  v2[2] = v0[2];
  return sub_1B38928BC(v4);
}

uint64_t sub_1B3892954(double a1)
{
  if (*(v1 + OBJC_IVAR____TtC15PhotosUIPrivate31StoryColorGradeEditorItemLayout_captionHeight) != a1)
  {
    return sub_1B38929A0();
  }

  return result;
}

uint64_t sub_1B3892970(double a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC15PhotosUIPrivate31StoryColorGradeEditorItemLayout_captionHeight);
  *(v1 + OBJC_IVAR____TtC15PhotosUIPrivate31StoryColorGradeEditorItemLayout_captionHeight) = a1;
  return sub_1B3892954(v2);
}

uint64_t sub_1B38929A8()
{
  swift_beginAccess();
  sub_1B389547C();
  sub_1B3C9D178();
  return swift_endAccess();
}

id sub_1B3892A10()
{
  swift_beginAccess();
  PXUpdateShouldBeginUpdates();
  OUTLINED_FUNCTION_4_34();
  if (v0)
  {
    OUTLINED_FUNCTION_0_46();
    sub_1B389547C();
    OUTLINED_FUNCTION_2_42();
    OUTLINED_FUNCTION_4_34();
    if (v0)
    {
      sub_1B3892FCC();
    }

    OUTLINED_FUNCTION_0_46();
    OUTLINED_FUNCTION_2_42();
    OUTLINED_FUNCTION_4_34();
    if (v0)
    {
      sub_1B3892D54();
    }

    OUTLINED_FUNCTION_0_46();
    OUTLINED_FUNCTION_2_42();
    OUTLINED_FUNCTION_4_34();
    if (v0)
    {
      sub_1B3892E68();
    }

    OUTLINED_FUNCTION_0_46();
    OUTLINED_FUNCTION_2_42();
    OUTLINED_FUNCTION_4_34();
    if (v0)
    {
      sub_1B3893440();
    }
  }

  swift_beginAccess();
  PXUpdateEndUpdates();
  swift_endAccess();
  v2.receiver = v0;
  v2.super_class = type metadata accessor for StoryColorGradeEditorItemLayout();
  return objc_msgSendSuper2(&v2, sel_update);
}

uint64_t sub_1B3892C08(void *a1, uint64_t a2, void *a3)
{
  v6 = sub_1B3C97D18();
  sub_1B37106B4(a1, v9);
  type metadata accessor for PFStoryColorGradeKind(0);
  result = swift_dynamicCast();
  if ((result & 1) == 0 || v8 != *(v3 + OBJC_IVAR____TtC15PhotosUIPrivate31StoryColorGradeEditorItemLayout_colorGradeKind))
  {
    return v6;
  }

  if ((*(v3 + OBJC_IVAR____TtC15PhotosUIPrivate31StoryColorGradeEditorItemLayout_overlayLayoutIndex + 8) & 1) == 0)
  {
    v6 = *(v3 + OBJC_IVAR____TtC15PhotosUIPrivate31StoryColorGradeEditorItemLayout_overlayLayoutIndex);
    __swift_project_boxed_opaque_existential_0Tm(a1, a1[3]);
    *a3 = sub_1B3C9D688();
    return v6;
  }

  __break(1u);
  return result;
}

uint64_t sub_1B3892D54()
{
  v1 = v0;
  [v0 referenceSize];
  [v0 setContentSize_];
  v2 = *&v0[OBJC_IVAR____TtC15PhotosUIPrivate31StoryColorGradeEditorItemLayout_viewModel];
  v3 = OBJC_IVAR____TtC15PhotosUIPrivate30StoryColorGradeEditorViewModel_layoutSpec;
  swift_beginAccess();
  sub_1B3723558(v2 + v3, v9);
  __swift_project_boxed_opaque_existential_0Tm(v9, v9[3]);
  sub_1B3C9D188();
  sub_1B37C9E3C(v4, v5, v6, v7, *&v1[OBJC_IVAR____TtC15PhotosUIPrivate31StoryColorGradeEditorItemLayout_captionHeight]);
  [v1 setFrame:0 forSublayoutAtIndex:?];
  [v1 setZPosition:0 forSublayoutAtIndex:0.0];
  sub_1B3C9D188();
  [v1 setFrame:1 forSublayoutAtIndex:?];
  [v1 setZPosition:1 forSublayoutAtIndex:-1.0];
  return __swift_destroy_boxed_opaque_existential_0Tm(v9);
}

id sub_1B3892E68()
{
  v1 = *(v0 + OBJC_IVAR____TtC15PhotosUIPrivate31StoryColorGradeEditorItemLayout_clipLayout);
  v2 = OBJC_IVAR____TtC15PhotosUIPrivate31StoryColorGradeEditorItemLayout_viewModel;
  [v1 setModel_];
  [v1 setClip_];
  [v1 setClipTimeRange_];
  [v1 setCanShowDynamicContent_];
  [v1 setCustomColorGradeKind_];
  v3 = (*(v0 + v2) + OBJC_IVAR____TtC15PhotosUIPrivate30StoryColorGradeEditorViewModel_layoutSpec);
  swift_beginAccess();
  v4 = *(*__swift_project_boxed_opaque_existential_0Tm(v3, v3[3]) + OBJC_IVAR____TtC15PhotosUIPrivate39StoryColorGradeEditorConcreteLayoutSpec_itemCornerRadius);
  *&v4 = v4;
  LODWORD(v5) = LODWORD(v4);
  LODWORD(v6) = LODWORD(v4);
  LODWORD(v7) = LODWORD(v4);
  [v1 setCornerRadius_];
  return [v1 setDisableClippingAnimation_];
}

uint64_t sub_1B3892FCC()
{
  sub_1B38932EC(*(v0 + OBJC_IVAR____TtC15PhotosUIPrivate31StoryColorGradeEditorItemLayout_captionHeight));

  return sub_1B3892990();
}

id sub_1B3893018()
{
  result = [objc_opt_self() clearColor];
  qword_1EB857F10 = result;
  return result;
}

id sub_1B3893054(uint64_t a1, void *a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB858130);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v20 - v6;
  v8 = &v2[OBJC_IVAR___PUStoryColorGradeEditorItemOverlayLayout_cachedCaptionSpriteFrame];
  *v8 = 0u;
  *(v8 + 1) = 0u;
  v8[32] = 1;
  v9 = &v2[OBJC_IVAR___PUStoryColorGradeEditorItemOverlayLayout_updateFlags];
  *v9 = 0;
  *(v9 + 1) = 0;
  *(v9 + 8) = 0;
  *&v2[OBJC_IVAR___PUStoryColorGradeEditorItemOverlayLayout_captionSpriteVersion] = 0;
  *&v2[OBJC_IVAR___PUStoryColorGradeEditorItemOverlayLayout_captionBackgroundSpriteVersion] = 0;
  *&v2[OBJC_IVAR___PUStoryColorGradeEditorItemOverlayLayout_colorGradeKind] = a1;
  *&v2[OBJC_IVAR___PUStoryColorGradeEditorItemOverlayLayout_viewModel] = a2;
  v10 = OBJC_IVAR____TtC15PhotosUIPrivate30StoryColorGradeEditorViewModel_layoutSpec;
  swift_beginAccess();
  sub_1B3723558(a2 + v10, v21);
  *&v2[OBJC_IVAR___PUStoryColorGradeEditorItemOverlayLayout_captionHeight] = *(*__swift_project_boxed_opaque_existential_0Tm(v21, v22) + OBJC_IVAR____TtC15PhotosUIPrivate39StoryColorGradeEditorConcreteLayoutSpec_estimatedCaptionHeight);
  *&v2[OBJC_IVAR___PUStoryColorGradeEditorItemOverlayLayout_backgroundSpriteIndex] = 0;
  *&v2[OBJC_IVAR___PUStoryColorGradeEditorItemOverlayLayout_captionSpriteIndex] = 1;
  v11 = __swift_project_boxed_opaque_existential_0Tm(v21, v22);
  v12 = *(*v11 + OBJC_IVAR____TtC15PhotosUIPrivate39StoryColorGradeEditorConcreteLayoutSpec_itemSelectionStyle) == 0;
  if (*(*v11 + OBJC_IVAR____TtC15PhotosUIPrivate39StoryColorGradeEditorConcreteLayoutSpec_itemSelectionStyle))
  {
    v13 = &OBJC_IVAR___PUStoryColorGradeEditorItemOverlayLayout_captionBackgroundSpriteIndex;
  }

  else
  {
    v13 = &OBJC_IVAR___PUStoryColorGradeEditorItemOverlayLayout_selectionBadgeSpriteIndex;
  }

  *&v2[*v13] = 2;
  if (v12)
  {
    v14 = &OBJC_IVAR___PUStoryColorGradeEditorItemOverlayLayout_captionBackgroundSpriteIndex;
  }

  else
  {
    v14 = &OBJC_IVAR___PUStoryColorGradeEditorItemOverlayLayout_selectionBadgeSpriteIndex;
  }

  *&v2[*v14] = -1;
  v15 = a2;
  sub_1B3C98218();
  v16 = sub_1B3C98248();
  __swift_storeEnumTagSinglePayload(v7, 0, 1, v16);
  sub_1B37A4CD0(v7, &v2[OBJC_IVAR___PUStoryColorGradeEditorItemOverlayLayout_accessibleSpriteIndexes]);
  v17 = type metadata accessor for StoryColorGradeEditorItemLayout.OverlayLayout();
  v20.receiver = v2;
  v20.super_class = v17;
  v18 = objc_msgSendSuper2(&v20, sel_init);
  [v18 applySpriteChangeDetails:0 countAfterChanges:3 initialState:0 modifyState:0];
  [v18 setContentSource_];
  sub_1B3893440();

  __swift_destroy_boxed_opaque_existential_0Tm(v21);
  return v18;
}

uint64_t sub_1B38932B4(double a1)
{
  if (*(v1 + OBJC_IVAR___PUStoryColorGradeEditorItemOverlayLayout_captionHeight) != a1)
  {
    v2 = v1 + OBJC_IVAR___PUStoryColorGradeEditorItemOverlayLayout_cachedCaptionSpriteFrame;
    *v2 = 0u;
    *(v2 + 16) = 0u;
    *(v2 + 32) = 1;
    return sub_1B3893440();
  }

  return result;
}

uint64_t sub_1B38932EC(double a1)
{
  v2 = *(v1 + OBJC_IVAR___PUStoryColorGradeEditorItemOverlayLayout_captionHeight);
  *(v1 + OBJC_IVAR___PUStoryColorGradeEditorItemOverlayLayout_captionHeight) = a1;
  return sub_1B38932B4(v2);
}

id sub_1B3893304()
{
  v1 = v0;
  swift_beginAccess();
  ShouldBeginUpdates = PXUpdateShouldBeginUpdates();
  swift_endAccess();
  if (ShouldBeginUpdates)
  {
    swift_beginAccess();
    sub_1B38953B8();
    v3 = sub_1B3C9CA98();
    swift_endAccess();
    if (v3)
    {
      sub_1B38939C0();
    }
  }

  swift_beginAccess();
  PXUpdateEndUpdates();
  swift_endAccess();
  v5.receiver = v1;
  v5.super_class = type metadata accessor for StoryColorGradeEditorItemLayout.OverlayLayout();
  return objc_msgSendSuper2(&v5, sel_update);
}

uint64_t sub_1B3893440()
{
  ++*(v0 + OBJC_IVAR___PUStoryColorGradeEditorItemOverlayLayout_captionSpriteVersion);
  swift_beginAccess();
  sub_1B38953B8();
  sub_1B3C9D178();
  return swift_endAccess();
}

uint64_t sub_1B38934C0()
{
  v3.receiver = v0;
  v3.super_class = type metadata accessor for StoryColorGradeEditorItemLayout.OverlayLayout();
  objc_msgSendSuper2(&v3, sel_referenceSizeDidChange);
  v1 = &v0[OBJC_IVAR___PUStoryColorGradeEditorItemOverlayLayout_cachedCaptionSpriteFrame];
  *v1 = 0u;
  *(v1 + 1) = 0u;
  v1[32] = 1;
  return sub_1B3893440();
}

uint64_t sub_1B3893560(uint64_t a1, uint64_t (*a2)(void), SEL *a3, uint64_t (*a4)(id))
{
  v9.receiver = v4;
  v9.super_class = a2();
  v7 = objc_msgSendSuper2(&v9, *a3);
  return a4(v7);
}

uint64_t sub_1B3893630()
{
  v4.receiver = v0;
  v4.super_class = type metadata accessor for StoryColorGradeEditorItemLayout.OverlayLayout();
  objc_msgSendSuper2(&v4, sel_viewEnvironmentDidChange);
  v1 = [v0 viewEnvironment];
  v2 = [v1 emphasized];

  *&v0[OBJC_IVAR___PUStoryColorGradeEditorItemOverlayLayout_captionBackgroundSpriteVersion] = v2;
  return sub_1B3893440();
}

void sub_1B3893700(int a1@<W0>, void *a2@<X8>)
{
  if (a1)
  {
    v4 = 0;
    v5 = 0;
    a2[1] = 0;
    a2[2] = 0;
  }

  else
  {
    v5 = *(v2 + OBJC_IVAR___PUStoryColorGradeEditorItemOverlayLayout_colorGradeKind);
    type metadata accessor for PFStoryColorGradeKind(0);
  }

  a2[3] = v4;
  *a2 = v5;
}

uint64_t sub_1B3893888(void *a1, uint64_t a2, void *a3)
{
  sub_1B37106B4(a1, v10);
  type metadata accessor for PFStoryColorGradeKind(0);
  if ((swift_dynamicCast() & 1) == 0 || v9 != *(v3 + OBJC_IVAR___PUStoryColorGradeEditorItemOverlayLayout_colorGradeKind))
  {
    return 0xFFFFFFFFLL;
  }

  __swift_project_boxed_opaque_existential_0Tm(a1, a1[3]);
  v6 = sub_1B3C9D688();
  v7 = v6;
  result = 0;
  *a3 = v6;
  return result;
}

uint64_t sub_1B38939C0()
{
  [v0 referenceSize];
  v2 = v1;
  v4 = v3;
  sub_1B3C9D188();
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  [v0 displayScale];
  v14 = v13;
  v15 = [v0 localNumberOfSprites] << 32;
  v16 = swift_allocObject();
  *(v16 + 16) = v0;
  *(v16 + 24) = v6;
  *(v16 + 32) = v8;
  *(v16 + 40) = v10;
  *(v16 + 48) = v12;
  memcpy((v16 + 64), MEMORY[0x1E69DB5C0], 0xA0uLL);
  *(v16 + 224) = v14;
  v17 = swift_allocObject();
  *(v17 + 16) = sub_1B3895370;
  *(v17 + 24) = v16;
  v21[4] = sub_1B3895388;
  v21[5] = v17;
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 1107296256;
  v21[2] = sub_1B38924A4;
  v21[3] = &block_descriptor_59;
  v18 = _Block_copy(v21);
  v19 = v0;

  [v19 modifySpritesInRange:v15 state:v18];
  _Block_release(v18);
  LOBYTE(v15) = swift_isEscapingClosureAtFileLocation();

  if (v15)
  {
    __break(1u);
  }

  else
  {
    [v19 setContentSize_];
  }

  return result;
}

uint64_t sub_1B3893BC4(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4, float a5, uint64_t a6, float32x2_t *a7, uint64_t a8, float32x2_t *a9, uint64_t a10, const void *a11)
{
  p_cb = &OBJC_PROTOCOL___PXAssetCollectionActionPerformerDelegate.cb;
  v21 = *(a10 + OBJC_IVAR___PUStoryColorGradeEditorItemOverlayLayout_viewModel);
  v22 = OBJC_IVAR____TtC15PhotosUIPrivate30StoryColorGradeEditorViewModel_layoutSpec;
  swift_beginAccess();
  sub_1B3723558(v21 + v22, v88);
  v90.origin.x = a1;
  v90.origin.y = a2;
  v90.size.width = a3;
  v90.size.height = a4;
  MidX = CGRectGetMidX(v90);
  v91.origin.x = a1;
  v91.origin.y = a2;
  v91.size.width = a3;
  v91.size.height = a4;
  MidY = CGRectGetMidY(v91);
  v92.origin.x = a1;
  v92.origin.y = a2;
  v92.size.width = a3;
  v92.size.height = a4;
  Width = CGRectGetWidth(v92);
  v93.origin.x = a1;
  v93.origin.y = a2;
  v93.size.width = a3;
  v93.size.height = a4;
  Height = CGRectGetHeight(v93);
  v26.f64[0] = Width;
  v26.f64[1] = Height;
  *a7 = MidX;
  *&a7[1] = MidY;
  a7[2] = 0xBFB99999A0000000;
  a7[3] = vcvt_f32_f64(v26);
  memcpy(a8, a11, 0xA0uLL);
  a9->i8[1] = 5;
  __asm { FMOV            V10.2S, #1.0 }

  a9[1] = _D10;
  __swift_project_boxed_opaque_existential_0Tm(v88, v89);
  v32 = OBJC_IVAR___PUStoryColorGradeEditorItemOverlayLayout_captionHeight;
  sub_1B37C9E3C(a1, a2, a3, a4, *(a10 + OBJC_IVAR___PUStoryColorGradeEditorItemOverlayLayout_captionHeight));
  v79 = v34;
  v80 = v33;
  v78 = v35;
  v37 = v36;
  v38 = a10 + OBJC_IVAR___PUStoryColorGradeEditorItemOverlayLayout_cachedCaptionSpriteFrame;
  if (*(a10 + OBJC_IVAR___PUStoryColorGradeEditorItemOverlayLayout_cachedCaptionSpriteFrame + 32) == 1)
  {
    __swift_project_boxed_opaque_existential_0Tm(v88, v89);
    sub_1B3894274(1);
    sub_1B37C9E8C(a1, a2, a3, a4, *(a10 + v32));
    v40 = v39;
    v42 = v41;
    v44 = v43;
    v46 = v45;
    p_cb = (&OBJC_PROTOCOL___PXAssetCollectionActionPerformerDelegate + 64);

    *v38 = v40;
    *(v38 + 8) = v42;
    *(v38 + 16) = v44;
    *(v38 + 24) = v46;
    *(v38 + 32) = 0;
  }

  else
  {
    v40 = *v38;
    v42 = *(v38 + 8);
    v44 = *(v38 + 16);
    v46 = *(v38 + 24);
  }

  v94.origin.x = v40;
  v94.origin.y = v42;
  v94.size.width = v44;
  v94.size.height = v46;
  v47 = CGRectGetMidX(v94);
  v95.origin.x = v40;
  v95.origin.y = v42;
  v95.size.width = v44;
  v95.size.height = v46;
  v48 = CGRectGetMidY(v95);
  v96.origin.x = v40;
  v96.origin.y = v42;
  v96.size.width = v44;
  v96.size.height = v46;
  v82 = CGRectGetWidth(v96);
  v97.origin.x = v40;
  v97.origin.y = v42;
  v97.size.width = v44;
  v97.size.height = v46;
  v49 = CGRectGetHeight(v97);
  v50.f64[0] = v82;
  v50.f64[1] = v49;
  *&a7[4] = v47;
  *&a7[5] = v48;
  a7[6] = 0xBFE0000000000000;
  a7[7] = vcvt_f32_f64(v50);
  memcpy((a8 + 160), a11, 0xA0uLL);
  a9[5].i8[1] = 3;
  a9[6] = vmul_n_f32(a7[7], a5);
  a9[9].i16[0] = *(a10 + OBJC_IVAR___PUStoryColorGradeEditorItemOverlayLayout_captionSpriteVersion);
  v51 = 0.0;
  if (*(a10 + OBJC_IVAR___PUStoryColorGradeEditorItemOverlayLayout_colorGradeKind) == *(*(a10 + *(p_cb + 496)) + OBJC_IVAR____TtC15PhotosUIPrivate30StoryColorGradeEditorViewModel_selectedItem))
  {
    v51 = 1.0;
  }

  v87 = v51;
  if (*(*__swift_project_boxed_opaque_existential_0Tm(v88, v89) + OBJC_IVAR____TtC15PhotosUIPrivate39StoryColorGradeEditorConcreteLayoutSpec_itemSelectionStyle))
  {
    v52 = *(a10 + OBJC_IVAR___PUStoryColorGradeEditorItemOverlayLayout_captionBackgroundSpriteIndex);
    v98.origin.x = v40;
    v98.origin.y = v42;
    v98.size.width = v44;
    v98.size.height = v46;
    v53 = CGRectGetMidX(v98);
    v99.origin.x = v40;
    v99.origin.y = v42;
    v99.size.width = v44;
    v99.size.height = v46;
    v54 = CGRectGetMidY(v99);
    v100.origin.x = v40;
    v100.origin.y = v42;
    v100.size.width = v44;
    v100.size.height = v46;
    v83 = CGRectGetWidth(v100);
    v101.origin.x = v40;
    v101.origin.y = v42;
    v101.size.width = v44;
    v101.size.height = v46;
    v55 = CGRectGetHeight(v101);
    v56.f64[0] = v83;
    v56.f64[1] = v55;
    v57 = &a7[4 * v52];
    *v57 = v53;
    *&v57[1] = v54;
    v57[2] = 0;
    v57[3] = vcvt_f32_f64(v56);
    v58 = (a8 + 160 * v52);
    memcpy(v58, a11, 0xA0uLL);
    *v58 = v87;
    v59 = *(*__swift_project_boxed_opaque_existential_0Tm(v88, v89) + OBJC_IVAR____TtC15PhotosUIPrivate39StoryColorGradeEditorConcreteLayoutSpec_captionBackgroundRadius);
    *&v59 = v59;
    *(v58 + 9) = vdupq_lane_s32(*&v59, 0);
    v60 = &a9[5 * v52];
    v60->i8[1] = 5;
    v60[1] = _D10;
    v60[4].i16[0] = *(a10 + OBJC_IVAR___PUStoryColorGradeEditorItemOverlayLayout_captionBackgroundSpriteVersion);
  }

  else
  {
    v61 = (*__swift_project_boxed_opaque_existential_0Tm(v88, v89) + OBJC_IVAR____TtC15PhotosUIPrivate39StoryColorGradeEditorConcreteLayoutSpec_selectionBadgePadding);
    v62 = *v61;
    v84 = v61[1];
    PXSizeGetAspectRatio();
    __swift_project_boxed_opaque_existential_0Tm(v88, v89);
    PFSizeWithAspectRatioFittingSize();
    v64 = v63;
    v66 = v65;
    v102.origin.x = v80;
    v102.origin.y = v79;
    v102.size.width = v78;
    v102.size.height = v37;
    MaxX = CGRectGetMaxX(v102);
    v103.origin.x = 0.0;
    v103.origin.y = 0.0;
    v103.size.width = v64;
    v103.size.height = v66;
    v68 = MaxX - CGRectGetWidth(v103) - v62;
    v104.origin.x = v80;
    v104.origin.y = v79;
    v104.size.width = v78;
    v104.size.height = v37;
    MaxY = CGRectGetMaxY(v104);
    v105.origin.y = 0.0;
    v105.origin.x = v68;
    v105.size.width = v64;
    v105.size.height = v66;
    v70 = MaxY - CGRectGetHeight(v105) - v84;
    v71 = *(a10 + OBJC_IVAR___PUStoryColorGradeEditorItemOverlayLayout_selectionBadgeSpriteIndex);
    v106.origin.x = v68;
    v106.origin.y = v70;
    v106.size.width = v64;
    v106.size.height = v66;
    v72 = CGRectGetMidX(v106);
    v107.origin.x = v68;
    v107.origin.y = v70;
    v107.size.width = v64;
    v107.size.height = v66;
    v73 = CGRectGetMidY(v107);
    v108.origin.x = v68;
    v108.origin.y = v70;
    v108.size.width = v64;
    v108.size.height = v66;
    v85 = CGRectGetWidth(v108);
    v109.origin.x = v68;
    v109.origin.y = v70;
    v109.size.width = v64;
    v109.size.height = v66;
    v74 = CGRectGetHeight(v109);
    v75.f64[0] = v85;
    v75.f64[1] = v74;
    v76 = &a7[4 * v71];
    *v76 = v72;
    *&v76[1] = v73;
    v76[2] = 0xBFF0000000000000;
    v76[3] = vcvt_f32_f64(v75);
    memcpy((a8 + 160 * v71), a11, 0xA0uLL);
    *(a8 + 160 * v71) = v87;
    a9[5 * v71].i8[1] = 1;
  }

  return __swift_destroy_boxed_opaque_existential_0Tm(v88);
}

uint64_t sub_1B3894274(int a1)
{
  if (a1 == 1)
  {
    return sub_1B386E168(*(v1 + OBJC_IVAR___PUStoryColorGradeEditorItemOverlayLayout_colorGradeKind));
  }

  result = sub_1B3C9D4C8();
  __break(1u);
  return result;
}

uint64_t sub_1B3894380(int a1)
{
  if (a1 == 1)
  {
    v2 = v1;
    v3 = (*&v1[OBJC_IVAR___PUStoryColorGradeEditorItemOverlayLayout_viewModel] + OBJC_IVAR____TtC15PhotosUIPrivate30StoryColorGradeEditorViewModel_layoutSpec);
    swift_beginAccess();
    v4 = *(*__swift_project_boxed_opaque_existential_0Tm(v3, v3[3]) + OBJC_IVAR____TtC15PhotosUIPrivate39StoryColorGradeEditorConcreteLayoutSpec_captionAttributes);
    v5 = *MEMORY[0x1E69DB650];

    v6 = v5;
    v7 = [v2 viewEnvironment];
    [v7 emphasized];

    v8 = [objc_opt_self() labelColor];
    v12 = sub_1B3710718(0, &unk_1EB8525D0);
    *&v11 = v8;
    sub_1B370ED44(&v11, v10);
    swift_isUniquelyReferenced_nonNull_native();
    sub_1B3720118(v10, v6);

    return v4;
  }

  else
  {
    result = sub_1B3C9D4C8();
    __break(1u);
  }

  return result;
}

uint64_t sub_1B38945B0(int a1)
{
  if (a1 == 1)
  {
    return 2;
  }

  result = sub_1B3C9D4C8();
  __break(1u);
  return result;
}

uint64_t sub_1B3894640(int a1)
{
  if (a1 == 1)
  {
    return 0;
  }

  result = sub_1B3C9D4C8();
  __break(1u);
  return result;
}

id sub_1B38946E0(int a1)
{
  if (*(v1 + OBJC_IVAR___PUStoryColorGradeEditorItemOverlayLayout_selectionBadgeSpriteIndex) == a1)
  {
    sub_1B3710718(0, &unk_1EB858118);
    sub_1B3C9C5E8();
    return sub_1B3894784();
  }

  else
  {
    result = sub_1B3C9D4C8();
    __break(1u);
  }

  return result;
}

id sub_1B3894784()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v1 = sub_1B3C9C5A8();

  v2 = [v0 initWithImageName_];

  return v2;
}

id sub_1B3894860(int a1)
{
  if (*&v1[OBJC_IVAR___PUStoryColorGradeEditorItemOverlayLayout_captionBackgroundSpriteIndex] == a1)
  {
    v2 = [v1 viewEnvironment];
    v3 = [v2 focusRingColor];

    v4 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithCGColor_];
    return v4;
  }

  else
  {
    if (qword_1EB850128 != -1)
    {
      swift_once();
    }

    v6 = qword_1EB857F10;

    return v6;
  }
}

id sub_1B38949AC()
{
  v0 = sub_1B3C98248();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B3894A90(v3);
  v4 = sub_1B3C981E8();
  (*(v1 + 8))(v3, v0);

  return v4;
}

uint64_t sub_1B3894A90@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB858130);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v8 - v4;
  sub_1B389540C(v1 + OBJC_IVAR___PUStoryColorGradeEditorItemOverlayLayout_accessibleSpriteIndexes, &v8 - v4);
  v6 = sub_1B3C98248();
  result = __swift_getEnumTagSinglePayload(v5, 1, v6);
  if (result != 1)
  {
    return (*(*(v6 - 8) + 32))(a1, v5, v6);
  }

  __break(1u);
  return result;
}

id sub_1B3894B78(uint64_t a1)
{
  [v1 referenceSize];
  v4 = v3;
  v6 = v5;
  v19.origin.x = 0.0;
  v19.origin.y = 0.0;
  v19.size.width = v4;
  v19.size.height = v6;
  MidX = CGRectGetMidX(v19);
  v20.origin.x = 0.0;
  v20.origin.y = 0.0;
  v20.size.width = v4;
  v20.size.height = v6;
  MidY = CGRectGetMidY(v20);
  v21.origin.x = 0.0;
  v21.origin.y = 0.0;
  v21.size.width = v4;
  v21.size.height = v6;
  Width = CGRectGetWidth(v21);
  v22.origin.x = 0.0;
  v22.origin.y = 0.0;
  v22.size.width = v4;
  v22.size.height = v6;
  Height = CGRectGetHeight(v22);
  v10.f64[0] = Width;
  v10.f64[1] = Height;
  v11 = vcvt_f32_f64(v10);
  sub_1B3894274(1);
  v12 = [objc_opt_self() sharedPool];
  v13 = [v12 checkOutReusableObjectWithReuseIdentifier_];

  [v13 setSpriteIndex_];
  *v18 = MidX;
  *&v18[1] = MidY;
  v18[2] = 0;
  v18[3] = v11;
  [v13 setSpriteGeometry_];
  v14 = [v1 axGroup];
  [v13 setAxContainingGroup_];

  v15 = sub_1B3C9C5A8();

  [v13 setContent:v15 ofContentKind:2];

  return v13;
}

uint64_t sub_1B3894E84@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB858130);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v8 - v4;
  if (*(v1 + OBJC_IVAR___PUStoryColorGradeEditorItemOverlayLayout_colorGradeKind) == *(*(v1 + OBJC_IVAR___PUStoryColorGradeEditorItemOverlayLayout_viewModel) + OBJC_IVAR____TtC15PhotosUIPrivate30StoryColorGradeEditorViewModel_selectedItem))
  {
    sub_1B389540C(v1 + OBJC_IVAR___PUStoryColorGradeEditorItemOverlayLayout_accessibleSpriteIndexes, v5);
    v6 = sub_1B3C98248();
    result = __swift_getEnumTagSinglePayload(v5, 1, v6);
    if (result == 1)
    {
      __break(1u);
    }

    else
    {
      return (*(*(v6 - 8) + 32))(a1, v5, v6);
    }
  }

  else
  {

    return sub_1B3C98238();
  }

  return result;
}

id sub_1B389511C(uint64_t a1, uint64_t (*a2)(void))
{
  v4.receiver = v2;
  v4.super_class = a2();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t type metadata accessor for StoryColorGradeEditorItemLayout.OverlayLayout()
{
  result = qword_1EB858100;
  if (!qword_1EB858100)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1B3895238()
{
  sub_1B3895318();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1B3895318()
{
  if (!qword_1EB858110)
  {
    sub_1B3C98248();
    v0 = sub_1B3C9D198();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB858110);
    }
  }
}

unint64_t sub_1B38953B8()
{
  result = qword_1EB858128;
  if (!qword_1EB858128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB858128);
  }

  return result;
}

uint64_t sub_1B389540C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB858130);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1B389547C()
{
  result = qword_1EB858140;
  if (!qword_1EB858140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB858140);
  }

  return result;
}

unint64_t sub_1B38954F4()
{
  result = qword_1EB858150;
  if (!qword_1EB858150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB858150);
  }

  return result;
}

unint64_t sub_1B389554C()
{
  result = qword_1EB858158;
  if (!qword_1EB858158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB858158);
  }

  return result;
}

unint64_t sub_1B38955A4()
{
  result = qword_1EB858160;
  if (!qword_1EB858160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB858160);
  }

  return result;
}

unint64_t sub_1B38955FC()
{
  result = qword_1EB858168;
  if (!qword_1EB858168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB858168);
  }

  return result;
}

unint64_t sub_1B3895654()
{
  result = qword_1EB858170;
  if (!qword_1EB858170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB858170);
  }

  return result;
}

unint64_t sub_1B38956AC()
{
  result = qword_1EB858178;
  if (!qword_1EB858178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB858178);
  }

  return result;
}

unint64_t sub_1B3895704()
{
  result = qword_1EB858180;
  if (!qword_1EB858180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB858180);
  }

  return result;
}

unint64_t sub_1B389575C()
{
  result = qword_1EB858188;
  if (!qword_1EB858188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB858188);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_2_42()
{

  return sub_1B3C9CA98();
}

id sub_1B38957EC()
{
  v1 = OBJC_IVAR___PUAmbientPhotoFramePlayergroundViewController____lazy_storage___renderer;
  v2 = *&v0[OBJC_IVAR___PUAmbientPhotoFramePlayergroundViewController____lazy_storage___renderer];
  if (v2)
  {
    v3 = *&v0[OBJC_IVAR___PUAmbientPhotoFramePlayergroundViewController____lazy_storage___renderer];
  }

  else
  {
    v4 = v0;
    v5 = objc_allocWithZone(type metadata accessor for AmbientPhotoFramePlayergroundViewController.AmbientPlaygroundRenderer());
    v6 = sub_1B3896408(v0);
    v7 = *&v0[v1];
    *&v4[v1] = v6;
    v3 = v6;

    v2 = 0;
  }

  v8 = v2;
  return v3;
}

id sub_1B3895864()
{
  v1 = OBJC_IVAR___PUAmbientPhotoFramePlayergroundViewController____lazy_storage___photoFrameController;
  v2 = *(v0 + OBJC_IVAR___PUAmbientPhotoFramePlayergroundViewController____lazy_storage___photoFrameController);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR___PUAmbientPhotoFramePlayergroundViewController____lazy_storage___photoFrameController);
  }

  else
  {
    v4 = sub_1B38957EC();
    v5 = *(v0 + OBJC_IVAR___PUAmbientPhotoFramePlayergroundViewController_photoLibrary);
    v6 = objc_allocWithZone(type metadata accessor for AmbientPhotoFrameController());
    v7 = sub_1B3898920(v4, v5, v6);
    v8 = *(v0 + v1);
    *(v0 + v1) = v7;
    v3 = v7;

    v2 = 0;
  }

  v9 = v2;
  return v3;
}

id sub_1B3895900(uint64_t a1)
{
  *&v1[OBJC_IVAR___PUAmbientPhotoFramePlayergroundViewController____lazy_storage___renderer] = 0;
  *&v1[OBJC_IVAR___PUAmbientPhotoFramePlayergroundViewController____lazy_storage___photoFrameController] = 0;
  *&v1[OBJC_IVAR___PUAmbientPhotoFramePlayergroundViewController____lazy_storage___environment] = 0;
  v3 = OBJC_IVAR___PUAmbientPhotoFramePlayergroundViewController_preferences;
  *&v1[v3] = [objc_allocWithZone(type metadata accessor for AmbientPhotoFramePlayergroundViewController.PlaygroundPosterMutablePreferences()) init];
  v4 = OBJC_IVAR___PUAmbientPhotoFramePlayergroundViewController_backgroundView;
  *&v1[v4] = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
  v5 = OBJC_IVAR___PUAmbientPhotoFramePlayergroundViewController_foregroundView;
  *&v1[v5] = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
  v6 = OBJC_IVAR___PUAmbientPhotoFramePlayergroundViewController_floatingView;
  *&v1[v6] = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
  *&v1[OBJC_IVAR___PUAmbientPhotoFramePlayergroundViewController_photoLibrary] = a1;
  v8.receiver = v1;
  v8.super_class = type metadata accessor for AmbientPhotoFramePlayergroundViewController();
  return objc_msgSendSuper2(&v8, sel_initWithNibName_bundle_, 0, 0);
}

void sub_1B3895A2C()
{
  *(v0 + OBJC_IVAR___PUAmbientPhotoFramePlayergroundViewController____lazy_storage___renderer) = 0;
  *(v0 + OBJC_IVAR___PUAmbientPhotoFramePlayergroundViewController____lazy_storage___photoFrameController) = 0;
  *(v0 + OBJC_IVAR___PUAmbientPhotoFramePlayergroundViewController____lazy_storage___environment) = 0;
  v1 = OBJC_IVAR___PUAmbientPhotoFramePlayergroundViewController_preferences;
  *(v0 + v1) = [objc_allocWithZone(type metadata accessor for AmbientPhotoFramePlayergroundViewController.PlaygroundPosterMutablePreferences()) init];
  v2 = OBJC_IVAR___PUAmbientPhotoFramePlayergroundViewController_backgroundView;
  *(v0 + v2) = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
  v3 = OBJC_IVAR___PUAmbientPhotoFramePlayergroundViewController_foregroundView;
  *(v0 + v3) = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
  v4 = OBJC_IVAR___PUAmbientPhotoFramePlayergroundViewController_floatingView;
  *(v0 + v4) = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
  sub_1B3C9D4C8();
  __break(1u);
}

void sub_1B3895B4C()
{
  v4.receiver = v0;
  v4.super_class = type metadata accessor for AmbientPhotoFramePlayergroundViewController();
  objc_msgSendSuper2(&v4, sel_viewDidLoad);
  v1 = [v0 view];
  if (v1)
  {
    v2 = v1;
    v3 = [objc_opt_self() blackColor];
    [v2 setBackgroundColor_];
  }

  else
  {
    __break(1u);
  }
}

void sub_1B3895C34(char a1)
{
  v8.receiver = v1;
  v8.super_class = type metadata accessor for AmbientPhotoFramePlayergroundViewController();
  objc_msgSendSuper2(&v8, sel_viewWillAppear_, a1 & 1);
  sub_1B3895DF4();
  v3 = sub_1B3895864();
  v4 = sub_1B38957EC();
  v5 = sub_1B38962EC();
  v6 = v4;
  v7 = v5;
  sub_1B378C114(v5, &off_1F2AC1AD8);
}

id sub_1B3895D24(char a1)
{
  v3 = sub_1B3895864();
  v4 = sub_1B38957EC();
  sub_1B3898B64(v4, v3);

  v6.receiver = v1;
  v6.super_class = type metadata accessor for AmbientPhotoFramePlayergroundViewController();
  return objc_msgSendSuper2(&v6, sel_viewDidDisappear_, a1 & 1);
}

void sub_1B3895DF4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB853EE0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B3CFC180;
  v3 = *&v1[OBJC_IVAR___PUAmbientPhotoFramePlayergroundViewController_backgroundView];
  *(inited + 32) = v3;
  v4 = *&v1[OBJC_IVAR___PUAmbientPhotoFramePlayergroundViewController_foregroundView];
  *(inited + 40) = v4;
  v34 = OBJC_IVAR___PUAmbientPhotoFramePlayergroundViewController_floatingView;
  v5 = *&v1[OBJC_IVAR___PUAmbientPhotoFramePlayergroundViewController_floatingView];
  *(inited + 48) = v5;
  v6 = v3;
  v7 = v4;
  v8 = v5;
  for (i = 0; ; ++i)
  {
    if (i == 3)
    {
      swift_setDeallocating();
      sub_1B389E7C0();
      v24 = *&v1[v34];
      v25 = type metadata accessor for AmbientPhotoFramePlayergroundViewController();
      v36 = v25;
      v35[0] = v1;
      objc_allocWithZone(MEMORY[0x1E69DD060]);
      v26 = v24;
      v27 = v1;
      v28 = sub_1B38987DC(v35, sel_handleTap_);
      [v26 addGestureRecognizer_];

      v29 = *&v1[v34];
      v36 = v25;
      v35[0] = v27;
      v30 = objc_allocWithZone(MEMORY[0x1E69DCC48]);
      v31 = v27;
      v32 = v29;
      v33 = sub_1B38987DC(v35, sel_handleLongPress_);
      [v32 addGestureRecognizer_];

      return;
    }

    if ((inited & 0xC000000000000001) == 0)
    {
      break;
    }

    v10 = MEMORY[0x1B8C6A930](i, inited);
LABEL_6:
    v11 = v10;
    [v10 setAutoresizingMask_];
    v12 = [v1 view];
    if (!v12)
    {
      goto LABEL_12;
    }

    v13 = v12;
    [v12 bounds];
    v15 = v14;
    v17 = v16;
    v19 = v18;
    v21 = v20;

    [v11 setFrame_];
    v22 = [v1 view];
    if (!v22)
    {
      goto LABEL_13;
    }

    v23 = v22;
    [v22 addSubview_];
  }

  if (i < *((inited & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v10 = *(inited + 8 * i + 32);
    goto LABEL_6;
  }

  __break(1u);
LABEL_12:
  __break(1u);
LABEL_13:
  __break(1u);
}

void sub_1B3896088(void *a1)
{
  if ([a1 state] == 3 && *(*(v1 + OBJC_IVAR___PUAmbientPhotoFramePlayergroundViewController_preferences) + OBJC_IVAR____TtCC15PhotosUIPrivate43AmbientPhotoFramePlayergroundViewControllerP33_AA406F95772BEA5A2E5AABA48A24960034PlaygroundPosterMutablePreferences_userTapEventsRequested) == 1)
  {
    v3 = sub_1B3895864();
    v4 = sub_1B38957EC();
    [a1 locationInView_];
    v6 = v5;
    v7 = v4;
    sub_1B3793A18(v6);
  }
}

id sub_1B38961E0(void *a1)
{
  result = [a1 state];
  if (result == 3)
  {

    return [v1 dismissViewControllerAnimated:1 completion:0];
  }

  return result;
}

id sub_1B389629C()
{
  [objc_opt_self() dismissSettingsController];

  return [v0 dismissViewControllerAnimated:1 completion:0];
}

id sub_1B38962EC()
{
  v1 = OBJC_IVAR___PUAmbientPhotoFramePlayergroundViewController____lazy_storage___environment;
  v2 = *(v0 + OBJC_IVAR___PUAmbientPhotoFramePlayergroundViewController____lazy_storage___environment);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR___PUAmbientPhotoFramePlayergroundViewController____lazy_storage___environment);
  }

  else
  {
    v4 = sub_1B3896350();
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_1B3896350()
{
  sub_1B377B7D8();
  v0 = [swift_getObjCClassFromMetadata() sharedInstance];
  PUAmbientPhotoFrameSettings.createPhotoFrameContentConfiguration(photoLibrary:)(v4);
  v1 = objc_allocWithZone(type metadata accessor for AmbientPhotoFramePlayergroundViewController.PlaygroundPosterRenderingEnvironment());
  v2 = sub_1B3897754(v4);

  return v2;
}

id sub_1B3896408(void *a1)
{
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  *&v1[OBJC_IVAR____TtCC15PhotosUIPrivate43AmbientPhotoFramePlayergroundViewControllerP33_AA406F95772BEA5A2E5AABA48A24960025AmbientPlaygroundRenderer_px_preferences] = [objc_allocWithZone(type metadata accessor for AmbientPhotoFramePlayergroundViewController.PlaygroundPosterPreferences()) init];
  v5.receiver = v1;
  v5.super_class = type metadata accessor for AmbientPhotoFramePlayergroundViewController.AmbientPlaygroundRenderer();
  v3 = objc_msgSendSuper2(&v5, sel_init);

  return v3;
}

void sub_1B38964A0()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_1B389629C();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1B38965EC(void *a1)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = result;
    v4 = *(result + *a1);

    return v4;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1B389666C()
{
  v0 = objc_allocWithZone(type metadata accessor for AmbientPhotoFramePlayergroundViewController.PlaygroundPosterInvalidatable());

  return [v0 init];
}

void sub_1B3896718(uint64_t a1, void (**a2)(void, void, void))
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = *(Strong + OBJC_IVAR___PUAmbientPhotoFramePlayergroundViewController_preferences);

    v6 = [objc_allocWithZone(type metadata accessor for AmbientPhotoFramePlayergroundViewController.PlaygroundPosterTransition()) init];
    (a2)[2](a2, v5, v6);

    _Block_release(a2);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1B3896828(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t))
{
  if (a3)
  {
    result = a3();
  }

  if (a5)
  {
    return a5(1);
  }

  return result;
}

uint64_t sub_1B38968BC()
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = result;
    v2 = sub_1B38962EC();

    return v2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1B3896AE8()
{
  *&v0[OBJC_IVAR____TtCC15PhotosUIPrivate43AmbientPhotoFramePlayergroundViewControllerP33_AA406F95772BEA5A2E5AABA48A24960026PlaygroundPosterTransition_px_duration] = 0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AmbientPhotoFramePlayergroundViewController.PlaygroundPosterTransition();
  return objc_msgSendSuper2(&v2, sel_init);
}

id sub_1B3896B90()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AmbientPhotoFramePlayergroundViewController.PlaygroundPosterInvalidatable();
  return objc_msgSendSuper2(&v2, sel_init);
}

void sub_1B3896C68(double a1, double a2, double a3, double a4)
{
  v5 = (v4 + OBJC_IVAR____TtCC15PhotosUIPrivate43AmbientPhotoFramePlayergroundViewControllerP33_AA406F95772BEA5A2E5AABA48A24960034PlaygroundPosterMutablePreferences_px_preferredTitleBounds);
  *v5 = a1;
  v5[1] = a2;
  v5[2] = a3;
  v5[3] = a4;
}

void *sub_1B3896D94()
{
  v1 = *(v0 + OBJC_IVAR____TtCC15PhotosUIPrivate43AmbientPhotoFramePlayergroundViewControllerP33_AA406F95772BEA5A2E5AABA48A24960034PlaygroundPosterMutablePreferences_timeFont);
  v2 = v1;
  return v1;
}

void *sub_1B3896E68()
{
  v1 = *(v0 + OBJC_IVAR____TtCC15PhotosUIPrivate43AmbientPhotoFramePlayergroundViewControllerP33_AA406F95772BEA5A2E5AABA48A24960034PlaygroundPosterMutablePreferences_timeColor);
  v2 = v1;
  return v1;
}

void *sub_1B3896F3C()
{
  v1 = *(v0 + OBJC_IVAR____TtCC15PhotosUIPrivate43AmbientPhotoFramePlayergroundViewControllerP33_AA406F95772BEA5A2E5AABA48A24960034PlaygroundPosterMutablePreferences_statusBarTintColor);
  v2 = v1;
  return v1;
}

void sub_1B3897254(double a1, double a2, double a3, double a4)
{
  v5 = (v4 + OBJC_IVAR____TtCC15PhotosUIPrivate43AmbientPhotoFramePlayergroundViewControllerP33_AA406F95772BEA5A2E5AABA48A24960034PlaygroundPosterMutablePreferences_px_preferredSalientContentRectangle);
  *v5 = a1;
  v5[1] = a2;
  v5[2] = a3;
  v5[3] = a4;
}

id sub_1B38973B4()
{
  v1 = &v0[OBJC_IVAR____TtCC15PhotosUIPrivate43AmbientPhotoFramePlayergroundViewControllerP33_AA406F95772BEA5A2E5AABA48A24960034PlaygroundPosterMutablePreferences_px_preferredTitleBounds];
  *v1 = 0u;
  v1[1] = 0u;
  v0[OBJC_IVAR____TtCC15PhotosUIPrivate43AmbientPhotoFramePlayergroundViewControllerP33_AA406F95772BEA5A2E5AABA48A24960034PlaygroundPosterMutablePreferences_userTapEventsRequested] = 0;
  v0[OBJC_IVAR____TtCC15PhotosUIPrivate43AmbientPhotoFramePlayergroundViewControllerP33_AA406F95772BEA5A2E5AABA48A24960034PlaygroundPosterMutablePreferences_hideChrome] = 0;
  *&v0[OBJC_IVAR____TtCC15PhotosUIPrivate43AmbientPhotoFramePlayergroundViewControllerP33_AA406F95772BEA5A2E5AABA48A24960034PlaygroundPosterMutablePreferences_timeFont] = 0;
  *&v0[OBJC_IVAR____TtCC15PhotosUIPrivate43AmbientPhotoFramePlayergroundViewControllerP33_AA406F95772BEA5A2E5AABA48A24960034PlaygroundPosterMutablePreferences_timeColor] = 0;
  *&v0[OBJC_IVAR____TtCC15PhotosUIPrivate43AmbientPhotoFramePlayergroundViewControllerP33_AA406F95772BEA5A2E5AABA48A24960034PlaygroundPosterMutablePreferences_statusBarTintColor] = 0;
  *&v0[OBJC_IVAR____TtCC15PhotosUIPrivate43AmbientPhotoFramePlayergroundViewControllerP33_AA406F95772BEA5A2E5AABA48A24960034PlaygroundPosterMutablePreferences_significantEventTime] = 0;
  *&v0[OBJC_IVAR____TtCC15PhotosUIPrivate43AmbientPhotoFramePlayergroundViewControllerP33_AA406F95772BEA5A2E5AABA48A24960034PlaygroundPosterMutablePreferences_significantEventOptions] = 2;
  *&v0[OBJC_IVAR____TtCC15PhotosUIPrivate43AmbientPhotoFramePlayergroundViewControllerP33_AA406F95772BEA5A2E5AABA48A24960034PlaygroundPosterMutablePreferences_supportedMotionEffectsMode] = 0;
  *&v0[OBJC_IVAR____TtCC15PhotosUIPrivate43AmbientPhotoFramePlayergroundViewControllerP33_AA406F95772BEA5A2E5AABA48A24960034PlaygroundPosterMutablePreferences_deviceMotionMode] = 0;
  *&v0[OBJC_IVAR____TtCC15PhotosUIPrivate43AmbientPhotoFramePlayergroundViewControllerP33_AA406F95772BEA5A2E5AABA48A24960034PlaygroundPosterMutablePreferences_preferredDeviceMotionUpdateInterval] = 0x3F847AE147AE147BLL;
  v2 = &v0[OBJC_IVAR____TtCC15PhotosUIPrivate43AmbientPhotoFramePlayergroundViewControllerP33_AA406F95772BEA5A2E5AABA48A24960034PlaygroundPosterMutablePreferences_px_preferredSalientContentRectangle];
  *v2 = 0u;
  v2[1] = 0u;
  v0[OBJC_IVAR____TtCC15PhotosUIPrivate43AmbientPhotoFramePlayergroundViewControllerP33_AA406F95772BEA5A2E5AABA48A24960034PlaygroundPosterMutablePreferences_px_contentOcclusionRectangleUpdatesRequested] = 0;
  *&v0[OBJC_IVAR____TtCC15PhotosUIPrivate43AmbientPhotoFramePlayergroundViewControllerP33_AA406F95772BEA5A2E5AABA48A24960034PlaygroundPosterMutablePreferences_px_powerLogIdentifier] = 0;
  *&v0[OBJC_IVAR____TtCC15PhotosUIPrivate43AmbientPhotoFramePlayergroundViewControllerP33_AA406F95772BEA5A2E5AABA48A24960034PlaygroundPosterMutablePreferences_px_adaptiveTimeMode] = 0;
  v4.receiver = v0;
  v4.super_class = type metadata accessor for AmbientPhotoFramePlayergroundViewController.PlaygroundPosterMutablePreferences();
  return objc_msgSendSuper2(&v4, sel_init);
}

void sub_1B38975BC(double a1, double a2, double a3, double a4)
{
  v5 = (v4 + OBJC_IVAR____TtCC15PhotosUIPrivate43AmbientPhotoFramePlayergroundViewControllerP33_AA406F95772BEA5A2E5AABA48A24960027PlaygroundPosterPreferences_px_preferredSalientContentRectangle);
  *v5 = a1;
  v5[1] = a2;
  v5[2] = a3;
  v5[3] = a4;
}

id sub_1B38976B0()
{
  v1 = &v0[OBJC_IVAR____TtCC15PhotosUIPrivate43AmbientPhotoFramePlayergroundViewControllerP33_AA406F95772BEA5A2E5AABA48A24960027PlaygroundPosterPreferences_px_preferredSalientContentRectangle];
  *v1 = 0u;
  v1[1] = 0u;
  v0[OBJC_IVAR____TtCC15PhotosUIPrivate43AmbientPhotoFramePlayergroundViewControllerP33_AA406F95772BEA5A2E5AABA48A24960027PlaygroundPosterPreferences_px_contentOcclusionRectangleUpdatesRequested] = 0;
  *&v0[OBJC_IVAR____TtCC15PhotosUIPrivate43AmbientPhotoFramePlayergroundViewControllerP33_AA406F95772BEA5A2E5AABA48A24960027PlaygroundPosterPreferences_px_adaptiveTimeMode] = 0;
  v3.receiver = v0;
  v3.super_class = type metadata accessor for AmbientPhotoFramePlayergroundViewController.PlaygroundPosterPreferences();
  return objc_msgSendSuper2(&v3, sel_init);
}

id sub_1B3897754(const void *a1)
{
  v3 = v2;
  v4 = v1;
  v40 = *MEMORY[0x1E69E9840];
  v6 = sub_1B3C98068();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v35 - v11;
  memcpy(__dst, a1, sizeof(__dst));
  *&v4[OBJC_IVAR____TtCC15PhotosUIPrivate43AmbientPhotoFramePlayergroundViewControllerP33_AA406F95772BEA5A2E5AABA48A24960036PlaygroundPosterRenderingEnvironment_px_traitCollection] = 0;
  v13 = &v4[OBJC_IVAR____TtCC15PhotosUIPrivate43AmbientPhotoFramePlayergroundViewControllerP33_AA406F95772BEA5A2E5AABA48A24960036PlaygroundPosterRenderingEnvironment_px_salientContentRectangle];
  *v13 = 0u;
  v13[1] = 0u;
  v14 = &v4[OBJC_IVAR____TtCC15PhotosUIPrivate43AmbientPhotoFramePlayergroundViewControllerP33_AA406F95772BEA5A2E5AABA48A24960036PlaygroundPosterRenderingEnvironment_px_backdropPrimaryOcclusionRect];
  *v14 = 0u;
  v14[1] = 0u;
  v15 = &v4[OBJC_IVAR____TtCC15PhotosUIPrivate43AmbientPhotoFramePlayergroundViewControllerP33_AA406F95772BEA5A2E5AABA48A24960036PlaygroundPosterRenderingEnvironment_px_backdropInspectorOcclusionRect];
  *v15 = 0u;
  v15[1] = 0u;
  v16 = &v4[OBJC_IVAR____TtCC15PhotosUIPrivate43AmbientPhotoFramePlayergroundViewControllerP33_AA406F95772BEA5A2E5AABA48A24960036PlaygroundPosterRenderingEnvironment_px_callServicesOcclusionRect];
  *v16 = 0u;
  v16[1] = 0u;
  *&v4[OBJC_IVAR____TtCC15PhotosUIPrivate43AmbientPhotoFramePlayergroundViewControllerP33_AA406F95772BEA5A2E5AABA48A24960036PlaygroundPosterRenderingEnvironment_px_adaptiveTimeMode] = 0;
  v4[OBJC_IVAR____TtCC15PhotosUIPrivate43AmbientPhotoFramePlayergroundViewControllerP33_AA406F95772BEA5A2E5AABA48A24960036PlaygroundPosterRenderingEnvironment_px_isDepthEffectDisabled] = 0;
  v17 = NSTemporaryDirectory();
  if (!v17)
  {
    sub_1B3C9C5E8();
    v17 = sub_1B3C9C5A8();
  }

  v18 = [objc_opt_self() fileURLWithPath_];

  sub_1B3C98038();
  sub_1B3C98028();
  v35 = *(v7 + 8);
  v35(v9, v6);
  (*(v7 + 16))(&v4[OBJC_IVAR____TtCC15PhotosUIPrivate43AmbientPhotoFramePlayergroundViewControllerP33_AA406F95772BEA5A2E5AABA48A24960036PlaygroundPosterRenderingEnvironment_assetDirectory], v12, v6);
  v19 = type metadata accessor for AmbientPhotoFramePlayergroundViewController.PlaygroundPosterRenderingEnvironment();
  v37.receiver = v4;
  v37.super_class = v19;
  v36 = objc_msgSendSuper2(&v37, sel_init);
  v20 = objc_opt_self();
  v21 = [v20 defaultManager];
  v22 = sub_1B3C98018();
  v38[0] = 0;
  v23 = [v21 removeItemAtURL:v22 error:v38];

  if (v23)
  {
    v24 = v38[0];
  }

  else
  {
    v25 = v38[0];
    v26 = sub_1B3C97F28();

    swift_willThrow();
    v3 = 0;
  }

  v27 = [v20 defaultManager];
  v28 = sub_1B3C98018();
  v38[0] = 0;
  v29 = [v27 createDirectoryAtURL:v28 withIntermediateDirectories:1 attributes:0 error:v38];

  v30 = v38[0];
  if (v29)
  {
    memcpy(v38, __dst, sizeof(v38));
    v31 = v30;
    AmbientPhotoFramePosterConfiguration.save(toDirectory:)();
    if (v3)
    {
      v32 = v36;

      v35(v12, v6);
      sub_1B377B640(__dst);
    }

    else
    {
      v35(v12, v6);
      sub_1B377B640(__dst);
      return v36;
    }
  }

  else
  {
    v33 = v38[0];
    sub_1B377B640(__dst);
    sub_1B3C97F28();

    swift_willThrow();
    v32 = v36;

    v35(v12, v6);
  }

  return v32;
}

uint64_t sub_1B3897DE4@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtCC15PhotosUIPrivate43AmbientPhotoFramePlayergroundViewControllerP33_AA406F95772BEA5A2E5AABA48A24960036PlaygroundPosterRenderingEnvironment_assetDirectory;
  v4 = sub_1B3C98068();
  (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);

  return __swift_storeEnumTagSinglePayload(a1, 0, 1, v4);
}

uint64_t sub_1B3897EF4()
{
  v0 = [objc_opt_self() currentDevice];
  v1 = [v0 orientation];

  if (v1 == 3)
  {
    return 3;
  }

  else
  {
    return 2;
  }
}

void *sub_1B389806C()
{
  v1 = *(v0 + OBJC_IVAR____TtCC15PhotosUIPrivate43AmbientPhotoFramePlayergroundViewControllerP33_AA406F95772BEA5A2E5AABA48A24960036PlaygroundPosterRenderingEnvironment_px_traitCollection);
  v2 = v1;
  return v1;
}

void sub_1B38981BC(double a1, double a2, double a3, double a4)
{
  v5 = (v4 + OBJC_IVAR____TtCC15PhotosUIPrivate43AmbientPhotoFramePlayergroundViewControllerP33_AA406F95772BEA5A2E5AABA48A24960036PlaygroundPosterRenderingEnvironment_px_salientContentRectangle);
  *v5 = a1;
  v5[1] = a2;
  v5[2] = a3;
  v5[3] = a4;
}

void sub_1B3898234(double a1, double a2, double a3, double a4)
{
  v5 = (v4 + OBJC_IVAR____TtCC15PhotosUIPrivate43AmbientPhotoFramePlayergroundViewControllerP33_AA406F95772BEA5A2E5AABA48A24960036PlaygroundPosterRenderingEnvironment_px_backdropPrimaryOcclusionRect);
  *v5 = a1;
  v5[1] = a2;
  v5[2] = a3;
  v5[3] = a4;
}

void sub_1B38982AC(double a1, double a2, double a3, double a4)
{
  v5 = (v4 + OBJC_IVAR____TtCC15PhotosUIPrivate43AmbientPhotoFramePlayergroundViewControllerP33_AA406F95772BEA5A2E5AABA48A24960036PlaygroundPosterRenderingEnvironment_px_backdropInspectorOcclusionRect);
  *v5 = a1;
  v5[1] = a2;
  v5[2] = a3;
  v5[3] = a4;
}

void sub_1B3898324(double a1, double a2, double a3, double a4)
{
  v5 = (v4 + OBJC_IVAR____TtCC15PhotosUIPrivate43AmbientPhotoFramePlayergroundViewControllerP33_AA406F95772BEA5A2E5AABA48A24960036PlaygroundPosterRenderingEnvironment_px_callServicesOcclusionRect);
  *v5 = a1;
  v5[1] = a2;
  v5[2] = a3;
  v5[3] = a4;
}

id sub_1B389850C(uint64_t a1, uint64_t (*a2)(void))
{
  v4.receiver = v2;
  v4.super_class = a2();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t type metadata accessor for AmbientPhotoFramePlayergroundViewController.PlaygroundPosterRenderingEnvironment()
{
  result = qword_1EB8583A0;
  if (!qword_1EB8583A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1B389871C()
{
  result = sub_1B3C98068();
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

id sub_1B38987DC(void *a1, uint64_t a2)
{
  v4 = a1[3];
  if (v4)
  {
    v6 = __swift_project_boxed_opaque_existential_0Tm(a1, a1[3]);
    v7 = *(v4 - 8);
    v8 = MEMORY[0x1EEE9AC00](v6);
    v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v7 + 16))(v10, v8);
    v11 = sub_1B3C9D688();
    (*(v7 + 8))(v10, v4);
    __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  else
  {
    v11 = 0;
  }

  v12 = [v2 initWithTarget:v11 action:a2];
  swift_unknownObjectRelease();
  return v12;
}

id sub_1B3898920(uint64_t a1, void *a2, _BYTE *a3)
{
  *&a3[OBJC_IVAR____TtC15PhotosUIPrivate27AmbientPhotoFrameController_keyAsset] = 0;
  a3[OBJC_IVAR____TtC15PhotosUIPrivate27AmbientPhotoFrameController_skipToNextAssetBecauseOfWake] = 0;
  v6 = &a3[OBJC_IVAR____TtC15PhotosUIPrivate27AmbientPhotoFrameController_environment];
  *v6 = 0;
  v6[1] = 0;
  a3[OBJC_IVAR____TtC15PhotosUIPrivate27AmbientPhotoFrameController_isActive] = 0;
  v7 = &a3[OBJC_IVAR____TtC15PhotosUIPrivate27AmbientPhotoFrameController_posterConfiguration];
  *(v7 + 8) = 0;
  *(v7 + 2) = 0u;
  *(v7 + 3) = 0u;
  *v7 = 0u;
  *(v7 + 1) = 0u;
  v8 = &a3[OBJC_IVAR____TtC15PhotosUIPrivate27AmbientPhotoFrameController_posterDescriptor];
  *(v8 + 8) = 0;
  *(v8 + 2) = 0u;
  *(v8 + 3) = 0u;
  *v8 = 0u;
  *(v8 + 1) = 0u;
  *&a3[OBJC_IVAR____TtC15PhotosUIPrivate27AmbientPhotoFrameController____lazy_storage___contentView] = 0;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  *&a3[OBJC_IVAR____TtC15PhotosUIPrivate27AmbientPhotoFrameController_storyView] = 0;
  a3[OBJC_IVAR____TtC15PhotosUIPrivate27AmbientPhotoFrameController_storyViewLoadingState] = 0;
  *&a3[OBJC_IVAR____TtC15PhotosUIPrivate27AmbientPhotoFrameController_nonAnimatingPlaybackTimer] = 0;
  v9 = &a3[OBJC_IVAR____TtC15PhotosUIPrivate27AmbientPhotoFrameController_notAnimatingReason];
  *v9 = 0;
  v9[1] = 0;
  a3[OBJC_IVAR____TtC15PhotosUIPrivate27AmbientPhotoFrameController_shouldAnimatePlayback] = 1;
  swift_unknownObjectWeakInit();
  a3[OBJC_IVAR____TtC15PhotosUIPrivate27AmbientPhotoFrameController_overlayHidden] = 0;
  *&a3[OBJC_IVAR____TtC15PhotosUIPrivate27AmbientPhotoFrameController_titleAlignment] = 3;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  a3[OBJC_IVAR____TtC15PhotosUIPrivate27AmbientPhotoFrameController_nightMode] = 0;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  *&a3[OBJC_IVAR____TtC15PhotosUIPrivate27AmbientPhotoFrameController_tapToRadarButtonTitleLeadingConstraint] = 0;
  v10 = &a3[OBJC_IVAR____TtC15PhotosUIPrivate27AmbientPhotoFrameController_storyViewModelObservation];
  *v10 = 0;
  v10[1] = 0;
  v11 = &a3[OBJC_IVAR____TtC15PhotosUIPrivate27AmbientPhotoFrameController_storyModelObservation];
  *v11 = 0;
  v11[1] = 0;
  *&a3[OBJC_IVAR____TtC15PhotosUIPrivate27AmbientPhotoFrameController_storyMainModel] = 0;
  v12 = &a3[OBJC_IVAR____TtC15PhotosUIPrivate27AmbientPhotoFrameController_renderer];
  *v12 = a1;
  v12[1] = &off_1F2AC1AF8;
  *&a3[OBJC_IVAR____TtC15PhotosUIPrivate27AmbientPhotoFrameController_photoLibrary] = a2;
  v16.receiver = a3;
  v16.super_class = type metadata accessor for AmbientPhotoFrameController();
  v13 = a2;
  v14 = objc_msgSendSuper2(&v16, sel_init);
  sub_1B3790548();

  return v14;
}

uint64_t sub_1B3898B64(uint64_t a1, void *a2)
{
  sub_1B378CD5C(&v14);
  v3 = v14;
  v4 = sub_1B3C9CAA8();
  if (qword_1EB8500A0 != -1)
  {
    swift_once();
  }

  v5 = qword_1EB855DC0;
  if (os_log_type_enabled(qword_1EB855DC0, v4))
  {
    v6 = a2;
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v13 = v8;
    *v7 = 136315394;
    v9 = 0xE500000000000000;
    v10 = 0x6D75626C61;
    switch(v3)
    {
      case 0:
        v9 = 0xE800000000000000;
        v10 = 0x6465727574616566;
        goto LABEL_10;
      case 1:
        v9 = 0xE600000000000000;
        v10 = 0x65727574616ELL;
        goto LABEL_10;
      case 2:
        v9 = 0xE400000000000000;
        v10 = 1937007984;
        goto LABEL_10;
      case 3:
        v9 = 0xE600000000000000;
        v10 = 0x736569746963;
        goto LABEL_10;
      case 4:
        v9 = 0xE600000000000000;
        v10 = 0x656C706F6570;
        goto LABEL_10;
      case 5:
LABEL_10:
        v11 = sub_1B3749364(v10, v9, &v13);

        *(v7 + 4) = v11;
        *(v7 + 12) = 1024;
        LOBYTE(v11) = sub_1B378C2C0();

        *(v7 + 14) = v11 & 1;
        _os_log_impl(&dword_1B36F3000, v5, v4, "invalidating content for poster kind: %s isSnapshot: %{BOOL}d", v7, 0x12u);
        __swift_destroy_boxed_opaque_existential_0Tm(v8);
        MEMORY[0x1B8C6EC70](v8, -1, -1);
        MEMORY[0x1B8C6EC70](v7, -1, -1);
        break;
      default:
        return sub_1B378C114(0, 0);
    }
  }

  return sub_1B378C114(0, 0);
}

double sub_1B3898D7C@<D0>(uint64_t a1@<X1>, _OWORD *a2@<X8>)
{
  if (*(a1 + 16) && (v4 = sub_1B371EF08(), (v5 & 1) != 0))
  {
    v6 = *(a1 + 56) + 32 * v4;

    sub_1B37106B4(v6, a2);
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

double sub_1B3898DE0@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  if (*(a3 + 16) && (v6 = sub_1B371EF40(a1, a2), (v7 & 1) != 0))
  {
    v8 = *(a3 + 56) + 32 * v6;

    sub_1B37106B4(v8, a4);
  }

  else
  {
    result = 0.0;
    *a4 = 0u;
    a4[1] = 0u;
  }

  return result;
}

uint64_t sub_1B3898E44(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  sub_1B371F04C();
  if (v2)
  {
  }

  else
  {
    return 0;
  }
}

unint64_t sub_1B3898EAC@<X0>(unint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = 0uLL;
  if (*(a3 + 16))
  {
    result = sub_1B371EF40(result, a2);
    if (v7)
    {
      v8 = 0;
      v9 = (*(a3 + 56) + 32 * result);
      v5 = *v9;
      v10 = v9[1];
    }

    else
    {
      v8 = 1;
      v10 = 0uLL;
      v5 = 0uLL;
    }
  }

  else
  {
    v8 = 1;
    v10 = 0uLL;
  }

  *a4 = v5;
  *(a4 + 16) = v10;
  *(a4 + 32) = v8;
  return result;
}

void *sub_1B3898F18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v4 = sub_1B371EF40(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = *(*(a3 + 56) + 8 * v4);
  v7 = v6;
  return v6;
}

uint64_t sub_1B3898F78(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v4 = a3();
  if (v5)
  {
    return *(*(a2 + 56) + 8 * v4);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B3898FD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 2;
  }

  v4 = sub_1B371EF40(a1, a2);
  if (v5)
  {
    return *(*(a3 + 56) + v4);
  }

  else
  {
    return 2;
  }
}

void *sub_1B3899020(void *a1, uint64_t a2)
{
  if ((a2 & 0xC000000000000001) != 0)
  {
    v3 = a1;
    v4 = sub_1B3C9D4A8();

    if (v4)
    {
      sub_1B3C9CBC8();
      swift_dynamicCast();
      return v9;
    }
  }

  else if (*(a2 + 16) && (sub_1B371F118(), (v6 & 1) != 0))
  {
    v4 = *(*(a2 + 56) + 8 * v5);
    v7 = v4;
  }

  else
  {
    return 0;
  }

  return v4;
}

uint64_t sub_1B38990D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  sub_1B371EF40(a1, a2);
  if (v3)
  {
  }

  else
  {
    return 0;
  }
}

uint64_t StoryMusicEditorMusicSource.hashValue.getter()
{
  v1 = *v0;
  sub_1B3C9D7C8();
  MEMORY[0x1B8C6AD50](v1);
  return sub_1B3C9D7F8();
}

unint64_t sub_1B38991BC()
{
  result = qword_1EB8583B0;
  if (!qword_1EB8583B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8583B0);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for StoryMusicEditorMusicSource(_BYTE *result, unsigned int a2, unsigned int a3)
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

id sub_1B38992EC()
{
  v1 = v0;
  sub_1B3C9CC48();
  OUTLINED_FUNCTION_0_1();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_8();
  v3 = sub_1B3C9CC78();
  OUTLINED_FUNCTION_0();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_8();
  v9 = v8 - v7;
  v10 = sub_1B3C9C168();
  MEMORY[0x1EEE9AC00](v10 - 8);
  OUTLINED_FUNCTION_8();
  v11 = OBJC_IVAR____TtC15PhotosUIPrivate25StoryMusicEditorViewModel____lazy_storage___flexMusicCollectionsLoadingQueue;
  v12 = *(v0 + OBJC_IVAR____TtC15PhotosUIPrivate25StoryMusicEditorViewModel____lazy_storage___flexMusicCollectionsLoadingQueue);
  if (v12)
  {
    v13 = *(v0 + OBJC_IVAR____TtC15PhotosUIPrivate25StoryMusicEditorViewModel____lazy_storage___flexMusicCollectionsLoadingQueue);
  }

  else
  {
    sub_1B3710718(0, &qword_1EB84FE60);
    sub_1B3C9C148();
    (*(v5 + 104))(v9, *MEMORY[0x1E69E8098], v3);
    sub_1B389F7B4(&qword_1EB84FE70, MEMORY[0x1E69E8030]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB854940);
    sub_1B3739124(&qword_1EB84FE80, &unk_1EB854940);
    sub_1B3C9D278();
    v14 = sub_1B3C9CCA8();
    v15 = *(v0 + v11);
    *(v1 + v11) = v14;
    v13 = v14;

    v12 = 0;
  }

  v16 = v12;
  return v13;
}

uint64_t sub_1B3899554()
{
  swift_getKeyPath();
  swift_getKeyPath();
  OUTLINED_FUNCTION_27_7();

  return v1;
}

uint64_t sub_1B38995B4()
{
  swift_getKeyPath();
  swift_getKeyPath();
  v1 = v0;
  return OUTLINED_FUNCTION_38_5();
}

char *sub_1B3899610(void *a1, unsigned __int8 *a2)
{
  v39 = a1;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB858448);
  OUTLINED_FUNCTION_0();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v33[-v7];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB858450);
  OUTLINED_FUNCTION_0();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v33[-v13];
  v36 = *a2;
  v15 = *(a2 + 2);
  v35 = *(a2 + 1);
  v16 = *(a2 + 3);
  v34 = a2[32];
  OUTLINED_FUNCTION_18_23(OBJC_IVAR____TtC15PhotosUIPrivate25StoryMusicEditorViewModel_cloudCapabilityObservation);
  OUTLINED_FUNCTION_18_23(OBJC_IVAR____TtC15PhotosUIPrivate25StoryMusicEditorViewModel_selectionHandler);
  OUTLINED_FUNCTION_18_23(OBJC_IVAR____TtC15PhotosUIPrivate25StoryMusicEditorViewModel_cancelHandler);
  *&v2[OBJC_IVAR____TtC15PhotosUIPrivate25StoryMusicEditorViewModel____lazy_storage___flexMusicCollectionsLoadingQueue] = 0;
  v40 = *(a2 + 5);
  v17 = OBJC_IVAR____TtC15PhotosUIPrivate25StoryMusicEditorViewModel__songCollections;
  v42 = MEMORY[0x1E69E7CC0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB855540);
  sub_1B3C9A678();
  (*(v11 + 32))(&v2[v17], v14, v9);
  v18 = OBJC_IVAR____TtC15PhotosUIPrivate25StoryMusicEditorViewModel__selectedSong;
  v42 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB853600);
  sub_1B3C9A678();
  v19 = v37;
  (*(v5 + 32))(&v2[v18], v8, v37);
  *&v2[OBJC_IVAR____TtC15PhotosUIPrivate25StoryMusicEditorViewModel_songCollectionLoadingState] = 1;
  OUTLINED_FUNCTION_18_23(OBJC_IVAR____TtC15PhotosUIPrivate25StoryMusicEditorViewModel_songCollectionLoadedCompletionHandler);
  *&v2[OBJC_IVAR____TtC15PhotosUIPrivate25StoryMusicEditorViewModel_actionPerformerDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v20 = v39;
  v21 = v40;
  *&v2[OBJC_IVAR____TtC15PhotosUIPrivate25StoryMusicEditorViewModel_storyViewModel] = v39;
  v22 = &v2[OBJC_IVAR____TtC15PhotosUIPrivate25StoryMusicEditorViewModel_configuration];
  *v22 = v36;
  *(v22 + 1) = v35;
  *(v22 + 2) = v15;
  v38 = v15;
  *(v22 + 3) = v16;
  v22[32] = v34;
  *(v22 + 5) = v21;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v23 = v20;

  v24 = [v23 mainModel];
  *&v2[OBJC_IVAR____TtC15PhotosUIPrivate25StoryMusicEditorViewModel_storyModel] = v24;
  v42 = v16;
  swift_unknownObjectRetain();
  sub_1B3C9A678();
  swift_beginAccess();
  (*(v5 + 40))(&v2[v18], v8, v19);
  swift_endAccess();
  v25 = type metadata accessor for StoryMusicEditorViewModel();
  v41.receiver = v2;
  v41.super_class = v25;
  v26 = objc_msgSendSuper2(&v41, sel_init);
  v27 = [v40 observable];
  OUTLINED_FUNCTION_20();
  swift_allocObject();
  swift_unknownObjectWeakInit();

  v28 = sub_1B3C9CA58();
  v30 = v29;
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  v31 = &v26[OBJC_IVAR____TtC15PhotosUIPrivate25StoryMusicEditorViewModel_cloudCapabilityObservation];
  *v31 = v28;
  v31[1] = v30;

  swift_unknownObjectRelease();
  return v26;
}

void sub_1B3899A38(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    sub_1B389E168(a2);
  }
}

void sub_1B3899A94()
{
  v1 = *(v0 + OBJC_IVAR____TtC15PhotosUIPrivate25StoryMusicEditorViewModel_selectionHandler);
  if (v1)
  {

    sub_1B3899B84();
    v1();
    sub_1B36F9DA0(v1);

    swift_unknownObjectRelease();
  }
}

void sub_1B3899B1C()
{
  v1 = *(v0 + OBJC_IVAR____TtC15PhotosUIPrivate25StoryMusicEditorViewModel_cancelHandler);
  if (v1)
  {

    v1(v2);

    sub_1B36F9DA0(v1);
  }
}

uint64_t sub_1B3899B84()
{
  swift_getKeyPath();
  swift_getKeyPath();
  OUTLINED_FUNCTION_27_7();

  return v1;
}

uint64_t sub_1B3899BE4()
{
  swift_getKeyPath();
  swift_getKeyPath();
  v1 = v0;
  return OUTLINED_FUNCTION_38_5();
}

void sub_1B3899C40(uint64_t a1, uint64_t a2)
{
  v5 = sub_1B3899B84();
  if (v5)
  {
    v6 = [v5 isEqual_];
    swift_unknownObjectRelease();
    if (v6)
    {
      goto LABEL_3;
    }
  }

  if (a1)
  {
    if ([swift_unknownObjectRetain() catalog] == 2)
    {
      v7 = *(v2 + OBJC_IVAR____TtC15PhotosUIPrivate25StoryMusicEditorViewModel_configuration + 40);
      v8 = [v7 statusForCapability_];
      if (v8)
      {
        if (v8 == 2)
        {
          if (swift_unknownObjectWeakLoadStrong())
          {
            sub_1B37EEF38();
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB858440);
            OUTLINED_FUNCTION_13();
            v9 = sub_1B3C9C778();

            v10 = PXAudioAssetFetchResultWithArray();

            sub_1B38845D4(a1, v10);
            swift_unknownObjectRelease();
            swift_unknownObjectRelease();
          }

          OUTLINED_FUNCTION_28_13();

          swift_unknownObjectRelease();
          return;
        }

        if (v8 == 3)
        {
          sub_1B3C9D4C8();
          __break(1u);
          return;
        }

        v16 = swift_unknownObjectRetain();
        sub_1B389A13C(v16);
        swift_unknownObjectRelease_n();
      }

      else
      {
        OUTLINED_FUNCTION_20();
        v13 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v14 = swift_allocObject();
        v14[2] = v13;
        v14[3] = a1;
        v14[4] = a2;
        aBlock[4] = sub_1B389F7A8;
        aBlock[5] = v14;
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 1107296256;
        aBlock[2] = sub_1B389A0C4;
        aBlock[3] = &block_descriptor_90;
        v15 = _Block_copy(aBlock);
        swift_unknownObjectRetain();

        [v7 requestStatusForCapability:1 handler:v15];
        swift_unknownObjectRelease();
        _Block_release(v15);
      }

LABEL_3:
      OUTLINED_FUNCTION_28_13();
      return;
    }

    swift_unknownObjectRelease();
  }

  OUTLINED_FUNCTION_28_13();

  sub_1B389A13C(v11);
}

void sub_1B3899F30(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a1)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v8 = Strong;
      sub_1B3899C40(a4, a5);
    }
  }

  else
  {
    v10 = sub_1B3C9CAC8();
    if (qword_1EB84FFB8 != -1)
    {
      swift_once();
    }

    v11 = qword_1EB878C60;
    if (os_log_type_enabled(qword_1EB878C60, v10))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v18[0] = v13;
      *v12 = 136446210;
      v14 = a2;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8584E0);
      v15 = sub_1B3C9C608();
      v17 = sub_1B3749364(v15, v16, v18);

      *(v12 + 4) = v17;
      _os_log_impl(&dword_1B36F3000, v11, v10, "Unable to load playability status for selected Apple Music asset: %{public}s", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v13);
      MEMORY[0x1B8C6EC70](v13, -1, -1);
      MEMORY[0x1B8C6EC70](v12, -1, -1);
    }
  }
}

void sub_1B389A0C4(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  v6 = a3;
  v5(a2, a3);
}

void sub_1B389A13C(uint64_t a1)
{
  swift_unknownObjectRetain();
  sub_1B3899BE4();
  v3 = *(v1 + OBJC_IVAR____TtC15PhotosUIPrivate25StoryMusicEditorViewModel_storyModel);
  OUTLINED_FUNCTION_20();
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  v7[4] = sub_1B389F730;
  v7[5] = v4;
  OUTLINED_FUNCTION_1_0();
  v7[1] = 1107296256;
  OUTLINED_FUNCTION_13_1();
  v7[2] = v5;
  v7[3] = &block_descriptor_83_0;
  v6 = _Block_copy(v7);
  swift_unknownObjectRetain();

  [v3 performChanges_];
  _Block_release(v6);
}

id sub_1B389A204(void *a1, uint64_t a2)
{
  if (a2)
  {
    v3 = swift_dynamicCastObjCProtocolConditional();
  }

  else
  {
    v3 = 0;
  }

  return [a1 setEditorPreviewSong_];
}

void sub_1B389A268()
{
  sub_1B389A32C();
  v1 = *(v0 + OBJC_IVAR____TtC15PhotosUIPrivate25StoryMusicEditorViewModel_songCollectionLoadingState);
  if ((v1 - 1) >= 3)
  {
    v2 = v1;
    sub_1B389DE70(v1);

    sub_1B372555C(v1);
  }
}

void sub_1B389A2D0(void *a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC15PhotosUIPrivate25StoryMusicEditorViewModel_songCollectionLoadingState);
  *(v1 + OBJC_IVAR____TtC15PhotosUIPrivate25StoryMusicEditorViewModel_songCollectionLoadingState) = a1;
  sub_1B3725570(a1);
  sub_1B372555C(v3);
  sub_1B389A268();

  sub_1B372555C(a1);
}

void sub_1B389A32C()
{
  v1 = *(v0 + OBJC_IVAR____TtC15PhotosUIPrivate25StoryMusicEditorViewModel_songCollectionLoadingState);
  if ((v1 - 1) >= 2)
  {
    v2 = *(v0 + OBJC_IVAR____TtC15PhotosUIPrivate25StoryMusicEditorViewModel_songCollectionLoadedCompletionHandler);
    if (v2)
    {
      sub_1B370A6FC(v2);
      sub_1B3725570(v1);
      v2(v1);
      sub_1B36F9DA0(v2);

      sub_1B372555C(v1);
    }
  }
}

uint64_t sub_1B389A3D0(uint64_t a1, uint64_t a2)
{
  v4 = (v2 + OBJC_IVAR____TtC15PhotosUIPrivate25StoryMusicEditorViewModel_songCollectionLoadedCompletionHandler);
  v5 = *(v2 + OBJC_IVAR____TtC15PhotosUIPrivate25StoryMusicEditorViewModel_songCollectionLoadedCompletionHandler);
  *v4 = a1;
  v4[1] = a2;
  sub_1B370A6FC(a1);
  sub_1B36F9DA0(v5);
  sub_1B389A32C();

  return sub_1B36F9DA0(a1);
}

void sub_1B389A444()
{
  v1 = *(v0 + OBJC_IVAR____TtC15PhotosUIPrivate25StoryMusicEditorViewModel_songCollectionLoadingState);
  if ((v1 - 2) < 2)
  {
    goto LABEL_15;
  }

  if (v1)
  {
    if (v1 != 1)
    {
      aBlock[0] = *(v0 + OBJC_IVAR____TtC15PhotosUIPrivate25StoryMusicEditorViewModel_songCollectionLoadingState);
      sub_1B3725570(v1);
      v6 = v1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8518D0);
      sub_1B3710718(0, &unk_1EB855710);
      if (swift_dynamicCast())
      {
        sub_1B372555C(v1);
      }

      else
      {
        sub_1B372555C(v1);
      }

      goto LABEL_15;
    }

    v2 = *(v0 + OBJC_IVAR____TtC15PhotosUIPrivate25StoryMusicEditorViewModel_storyModel);
    v3 = [v2 configuration];
    v16 = [v3 photoKitAssetContainer];

    if (v16)
    {
      sub_1B389A2D0(2);
      if (!*(v0 + OBJC_IVAR____TtC15PhotosUIPrivate25StoryMusicEditorViewModel_configuration))
      {
        sub_1B389BA74(MEMORY[0x1E69E7CC0]);
        goto LABEL_20;
      }

      if (*(v0 + OBJC_IVAR____TtC15PhotosUIPrivate25StoryMusicEditorViewModel_configuration) == 1)
      {
        sub_1B389A964(v16);
LABEL_20:
        OUTLINED_FUNCTION_28_13();

        return;
      }

      v11 = sub_1B3899B84();
      if (v11)
      {
        v12 = v11;
        OUTLINED_FUNCTION_20();
        v13 = swift_allocObject();
        v13[2] = v12;
        aBlock[4] = sub_1B389F728;
        aBlock[5] = v13;
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 1107296256;
        OUTLINED_FUNCTION_13_1();
        aBlock[2] = v14;
        aBlock[3] = &block_descriptor_77_1;
        v15 = _Block_copy(aBlock);
        swift_unknownObjectRetain();

        [v2 performChanges_];
        _Block_release(v15);
        swift_unknownObjectRelease();
      }

      sub_1B389A964(v16);

LABEL_15:
      OUTLINED_FUNCTION_28_13();
      return;
    }

    sub_1B389F6D4();
    swift_allocError();
    OUTLINED_FUNCTION_28_13();

    sub_1B389A2D0(v7);
  }

  else
  {
    OUTLINED_FUNCTION_28_13();

    sub_1B372555C(v4);
  }
}

id sub_1B389A74C(void *a1)
{
  v3 = a1;
  sub_1B389A2D0(a1);
  result = [*(v1 + OBJC_IVAR____TtC15PhotosUIPrivate25StoryMusicEditorViewModel_storyModel) errorReporter];
  if (result)
  {
    v5 = result;
    if (a1)
    {
      v6 = sub_1B3C97F18();
    }

    else
    {
      v6 = 0;
    }

    v7 = OUTLINED_FUNCTION_6_29();
    [v5 setError:v6 forComponent:v7];

    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_1B389A80C()
{

  sub_1B38995B4();
  if (*(v0 + OBJC_IVAR____TtC15PhotosUIPrivate25StoryMusicEditorViewModel_configuration) == 1)
  {
    sub_1B389CC2C();
  }

  sub_1B389A2D0(3);
}

void *sub_1B389A854(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v7 = v6;
  v14 = *(v7 + OBJC_IVAR____TtC15PhotosUIPrivate25StoryMusicEditorViewModel_storyModel);
  type metadata accessor for StoryMusicEditorSongCollectionViewModel();
  swift_allocObject();

  v15 = v14;
  sub_1B37F04B0(a3, v19);
  swift_unknownObjectRetain();
  v16 = sub_1B37EE634(a1, a2, a3, a4, a5, v14, a6);
  v17 = v7 + OBJC_IVAR____TtC15PhotosUIPrivate25StoryMusicEditorViewModel_actionPerformerDelegate;
  swift_unknownObjectWeakLoadStrong();
  *(v16 + OBJC_IVAR____TtC15PhotosUIPrivate39StoryMusicEditorSongCollectionViewModel_actionPerformerDelegate + 8) = *(v17 + 8);
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  return v16;
}

void sub_1B389A964(uint64_t a1)
{
  v2 = v1;
  v4 = [objc_allocWithZone(MEMORY[0x1E69C3B00]) init];
  v5 = PXAllMusicCurationCategories();
  type metadata accessor for PXMusicCurationCategory(0);
  OUTLINED_FUNCTION_1_44();
  sub_1B389F7B4(v6, v7);
  OUTLINED_FUNCTION_13_17();
  v8 = sub_1B3C9C988();

  sub_1B389F2C8(v8, v4);
  if (*(v2 + OBJC_IVAR____TtC15PhotosUIPrivate25StoryMusicEditorViewModel_configuration) == 2 || (sub_1B3710718(0, &qword_1EB84F200), v9 = [swift_getObjCClassFromMetadata() sharedInstance], v10 = objc_msgSend(v9, sel_forceFlexForPHMemory), v9, (v10 & 1) != 0) || (v11 = objc_msgSend(*(v2 + OBJC_IVAR____TtC15PhotosUIPrivate25StoryMusicEditorViewModel_storyModel), sel_configuration), v12 = objc_msgSend(v11, sel_isAllowedToPlayAppleMusic), v11, (v12 & 1) == 0))
  {
    v13 = sub_1B389F380(v4);
    if (v13)
    {
      v14 = v13;
      v15 = PXAppleMusicCurationCategories();
      v16 = sub_1B3C9C988();

      sub_1B37F694C(v16, v14);

      OUTLINED_FUNCTION_13_17();
      v17 = sub_1B3C9C968();
    }

    else
    {
      v17 = 0;
    }

    [v4 setCategories_];
  }

  v18 = [*(v2 + OBJC_IVAR____TtC15PhotosUIPrivate25StoryMusicEditorViewModel_storyModel) configuration];
  v19 = [v18 musicCurationProvider];

  OUTLINED_FUNCTION_20();
  v20 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v24[4] = sub_1B389F67C;
  v24[5] = v20;
  OUTLINED_FUNCTION_1_0();
  v24[1] = 1107296256;
  v24[2] = sub_1B372B6C8;
  v24[3] = &block_descriptor_65_0;
  v21 = _Block_copy(v24);
  v22 = v4;

  v23 = [v19 requestMusicCurationForAssetContainer:a1 options:v22 resultHandler:v21];
  _Block_release(v21);
  swift_unknownObjectRelease();
}

uint64_t sub_1B389AC4C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B3C9C118();
  v15 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1B3C9C168();
  v7 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B3710718(0, &qword_1EB84FE60);
  v10 = sub_1B3C9CC88();
  v11 = swift_allocObject();
  *(v11 + 16) = a2;
  *(v11 + 24) = a1;
  aBlock[4] = sub_1B389F6CC;
  aBlock[5] = v11;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B370C014;
  aBlock[3] = &block_descriptor_71_1;
  v12 = _Block_copy(aBlock);

  swift_unknownObjectRetain();

  sub_1B3C9C138();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1B389F7B4(&qword_1EB84FEE0, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB851AF0);
  sub_1B3739124(&qword_1EB84FE90, &unk_1EB851AF0);
  sub_1B3C9D278();
  MEMORY[0x1B8C6A210](0, v9, v6, v12);
  _Block_release(v12);

  (*(v15 + 8))(v6, v4);
  return (*(v7 + 8))(v9, v14);
}

void sub_1B389AF3C(uint64_t a1, void *a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    sub_1B389AF98(a2);
  }
}

void sub_1B389AF98(void *a1)
{
  v3 = [a1 songsByCategory];
  type metadata accessor for PXMusicCurationCategory(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB858470);
  OUTLINED_FUNCTION_1_44();
  sub_1B389F7B4(v4, v5);
  v6 = sub_1B3C9C4C8();

  v7 = *(v6 + 16);

  if (v7)
  {
    v8 = sub_1B389B2E4(a1);
    sub_1B389B0F0(v8);
    if (*(v1 + OBJC_IVAR____TtC15PhotosUIPrivate25StoryMusicEditorViewModel_configuration) == 2)
    {
      sub_1B389BA74(v8);
    }

    else
    {
      sub_1B389A80C();
    }
  }

  else
  {
    v9 = [a1 error];
    sub_1B389A74C(v9);
  }
}

void sub_1B389B0F0(uint64_t a1)
{
  v3 = sub_1B3899B84();
  if (v3)
  {
    v4 = v3;
    v5 = sub_1B389C9D8();
    v6 = sub_1B3711890(v5);
    for (i = 0; v6 != i; ++i)
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        v10 = OUTLINED_FUNCTION_13_17();
        v8 = MEMORY[0x1B8C6A930](v10);
      }

      else
      {
        if (i >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_29;
        }

        v8 = *(v5 + 8 * i + 32);
        swift_unknownObjectRetain();
      }

      if (__OFADD__(i, 1))
      {
        __break(1u);
LABEL_29:
        __break(1u);
LABEL_30:
        __break(1u);
LABEL_31:
        __break(1u);
        return;
      }

      v9 = [v8 isEqual_];
      swift_unknownObjectRelease();
      if (v9)
      {
        swift_unknownObjectRelease();
        OUTLINED_FUNCTION_7_6();

        return;
      }
    }

    v11 = sub_1B3711890(a1);
    v12 = 0;
    do
    {
      if (v11 == v12)
      {
        v16 = swift_unknownObjectRetain();
        sub_1B389F41C(v16, v1);
        swift_unknownObjectRelease_n();
        goto LABEL_24;
      }

      if ((a1 & 0xC000000000000001) != 0)
      {
        v13 = MEMORY[0x1B8C6A930](v12, a1);
      }

      else
      {
        if (v12 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_31;
        }

        v13 = *(a1 + 8 * v12 + 32);
      }

      if (__OFADD__(v12, 1))
      {
        goto LABEL_30;
      }

      v14 = [*(v13 + OBJC_IVAR____TtC15PhotosUIPrivate39StoryMusicEditorSongCollectionViewModel_curatedSongsFetchResult) containsObject_];

      ++v12;
    }

    while (!v14);
    OUTLINED_FUNCTION_7_6();

    swift_unknownObjectRelease();
  }

  else
  {
LABEL_24:
    OUTLINED_FUNCTION_7_6();
  }
}

uint64_t sub_1B389B2E4(void *a1)
{
  v3 = (v1 + OBJC_IVAR____TtC15PhotosUIPrivate25StoryMusicEditorViewModel_configuration);
  v4 = [*(v1 + OBJC_IVAR____TtC15PhotosUIPrivate25StoryMusicEditorViewModel_configuration + 40) statusForCapability_];
  v5 = [a1 songsByCategory];
  type metadata accessor for PXMusicCurationCategory(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB858470);
  OUTLINED_FUNCTION_1_44();
  sub_1B389F7B4(v6, v7);
  sub_1B3C9C4C8();

  v8 = MEMORY[0x1E69E7CC0];
  v77 = MEMORY[0x1E69E7CC0];
  if (*v3 != 2)
  {
    switch(v4)
    {
      case 0uLL:
      case 3uLL:
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB858458);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_1B3CFA2E0;
        OUTLINED_FUNCTION_15_26();
        OUTLINED_FUNCTION_12_24(v82);
        OUTLINED_FUNCTION_5_32();
        v19 = sub_1B389B8DC(v15, v16, v17, v18);
        sub_1B371B0F4(v82);
        *(inited + 32) = v19;
        OUTLINED_FUNCTION_23_11();
        sub_1B37F3AB8(v20);
        OUTLINED_FUNCTION_5_32();
        sub_1B389B8DC(v21, v22, v23, v24);
        OUTLINED_FUNCTION_27_12();
        sub_1B371B0F4(v83);
        *(inited + 40) = v1;
        goto LABEL_7;
      case 1uLL:
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB858458);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_1B3D0A790;
        OUTLINED_FUNCTION_15_26();
        OUTLINED_FUNCTION_12_24(v78);
        OUTLINED_FUNCTION_5_32();
        v29 = sub_1B389B8DC(v25, v26, v27, v28);
        sub_1B371B0F4(v78);
        *(inited + 32) = v29;
        OUTLINED_FUNCTION_12_24(v79);
        OUTLINED_FUNCTION_5_32();
        v34 = sub_1B389B8DC(v30, v31, v32, v33);
        sub_1B371B0F4(v79);
        *(inited + 40) = v34;
        sub_1B37F3AB8(v80);
        OUTLINED_FUNCTION_5_32();
        v39 = sub_1B389B8DC(v35, v36, v37, v38);
        sub_1B371B0F4(v80);
        *(inited + 48) = v39;
        OUTLINED_FUNCTION_12_24(v81);
        OUTLINED_FUNCTION_5_32();
        v44 = sub_1B389B8DC(v40, v41, v42, v43);
        sub_1B371B0F4(v81);
        *(inited + 56) = v44;
        sub_1B37F3AB8(v82);
        OUTLINED_FUNCTION_5_32();
        v49 = sub_1B389B8DC(v45, v46, v47, v48);
        sub_1B371B0F4(v82);
        *(inited + 64) = v49;
        OUTLINED_FUNCTION_23_11();
        sub_1B37F3AB8(v50);
        OUTLINED_FUNCTION_5_32();
        sub_1B389B8DC(v51, v52, v53, v54);
        OUTLINED_FUNCTION_27_12();
        sub_1B371B0F4(v83);
        *(inited + 72) = v1;
        goto LABEL_7;
      case 2uLL:
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB858458);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_1B3CFC360;
        OUTLINED_FUNCTION_15_26();
        OUTLINED_FUNCTION_12_24(v81);
        OUTLINED_FUNCTION_5_32();
        v59 = sub_1B389B8DC(v55, v56, v57, v58);
        sub_1B371B0F4(v81);
        *(inited + 32) = v59;
        sub_1B37F3AB8(v82);
        OUTLINED_FUNCTION_5_32();
        v64 = sub_1B389B8DC(v60, v61, v62, v63);
        sub_1B371B0F4(v82);
        *(inited + 40) = v64;
        OUTLINED_FUNCTION_23_11();
        sub_1B37F3AB8(v65);
        OUTLINED_FUNCTION_5_32();
        sub_1B389B8DC(v66, v67, v68, v69);
        OUTLINED_FUNCTION_27_12();
        sub_1B371B0F4(v83);
        *(inited + 48) = v1;
        goto LABEL_7;
      default:
        goto LABEL_16;
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB858458);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B3CF6CE0;
  OUTLINED_FUNCTION_23_11();
  OUTLINED_FUNCTION_12_24(v10);
  OUTLINED_FUNCTION_5_32();
  sub_1B389B8DC(v11, v12, v13, v14);
  OUTLINED_FUNCTION_27_12();
  sub_1B371B0F4(v83);
  *(inited + 32) = v1;
LABEL_7:
  sub_1B37E77C4(inited);
  v70 = 0;
  v76 = v8;
  v71 = *(v77 + 16);
  while (1)
  {
    if (v71 == v70)
    {

      return v8;
    }

    if (v70 >= *(v77 + 16))
    {
      break;
    }

    if (*(v77 + 8 * v70++ + 32))
    {

      MEMORY[0x1B8C69CE0](v73);
      v74 = *((v76 & 0xFFFFFFFFFFFFFF8) + 0x18);
      if (*((v76 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v74 >> 1)
      {
        OUTLINED_FUNCTION_20_0(v74);
        sub_1B3C9C7E8();
      }

      sub_1B3C9C808();
      v8 = v76;
    }
  }

  __break(1u);
LABEL_16:
  result = sub_1B3C9D4C8();
  __break(1u);
  return result;
}

void *sub_1B389B8DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(a3 + 16) && (v7 = sub_1B3720E14(a1), (v8 & 1) != 0))
  {
    v9 = *(*(a3 + 56) + 8 * v7);
    swift_unknownObjectRetain();
  }

  else
  {
    v9 = 0;
  }

  if (*(a4 + OBJC_IVAR____TtC15PhotosUIPrivate25StoryMusicEditorViewModel_configuration) == 2)
  {
    v10 = 0;
    if (!v9)
    {
      return 0;
    }
  }

  else
  {
    v11 = sub_1B3C9C5E8();
    v13 = v12;
    if (v11 == sub_1B3C9C5E8() && v13 == v14)
    {
      v10 = 1;
    }

    else
    {
      v10 = sub_1B3C9D6A8();
    }

    if (!v9)
    {
      return 0;
    }
  }

  v16 = [swift_unknownObjectRetain() firstObject];
  if (!v16)
  {
    swift_unknownObjectRelease_n();
    return 0;
  }

  v17 = v16;
  v18 = sub_1B3C9C5E8();
  v20 = sub_1B389A854(v18, v19, a2, [v17 catalog], v9, v10 & 1);
  swift_unknownObjectRelease_n();
  swift_unknownObjectRelease();

  return v20;
}

uint64_t sub_1B389BA74(uint64_t a1)
{
  v2 = sub_1B3C9C118();
  OUTLINED_FUNCTION_0();
  v20 = v3;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_8();
  v7 = v6 - v5;
  v19 = sub_1B3C9C168();
  OUTLINED_FUNCTION_0();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_8();
  v13 = v12 - v11;
  v18 = sub_1B38992EC();
  OUTLINED_FUNCTION_20();
  v14 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v15 = swift_allocObject();
  *(v15 + 16) = v14;
  *(v15 + 24) = a1;
  aBlock[4] = sub_1B389F668;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B370C014;
  aBlock[3] = &block_descriptor_55_0;
  v16 = _Block_copy(aBlock);

  sub_1B3C9C138();
  sub_1B389F7B4(&qword_1EB84FEE0, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB851AF0);
  sub_1B3739124(&qword_1EB84FE90, &unk_1EB851AF0);
  sub_1B3C9D278();
  MEMORY[0x1B8C6A210](0, v13, v7, v16);
  _Block_release(v16);

  (*(v20 + 8))(v7, v2);
  (*(v9 + 8))(v13, v19);
}

uint64_t sub_1B389BD44(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B3C9C118();
  v18 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1B3C9C168();
  v7 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = [objc_opt_self() sharedLibrary];
  v11 = [v10 fetchSortedAssetsGroupedByMood];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB858468);
  v12 = sub_1B3C9C4C8();

  sub_1B3710718(0, &qword_1EB84FE60);
  v13 = sub_1B3C9CC88();
  v14 = swift_allocObject();
  v14[2] = a1;
  v14[3] = v12;
  v14[4] = a2;
  aBlock[4] = sub_1B389F670;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B370C014;
  aBlock[3] = &block_descriptor_61_0;
  v15 = _Block_copy(aBlock);

  sub_1B3C9C138();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1B389F7B4(&qword_1EB84FEE0, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB851AF0);
  sub_1B3739124(&qword_1EB84FE90, &unk_1EB851AF0);
  sub_1B3C9D278();
  MEMORY[0x1B8C6A210](0, v9, v6, v15);
  _Block_release(v15);

  (*(v18 + 8))(v6, v4);
  return (*(v7 + 8))(v9, v17);
}

void sub_1B389C0B0(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    sub_1B389C120(a2);
  }
}

id sub_1B389C120(uint64_t a1)
{
  if (*(a1 + 16))
  {
    v1 = sub_1B389C1CC(a1);

    sub_1B37E7894(v1);
    sub_1B389A80C();
  }

  else
  {

    return sub_1B389A74C(0);
  }
}

uint64_t sub_1B389C1CC(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB858458);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B3D0A7A0;
  sub_1B37F3AB8(v50);
  OUTLINED_FUNCTION_5_32();
  v6 = sub_1B389C554(v3, v4, v5);
  sub_1B371B0F4(v50);
  *(inited + 32) = v6;
  sub_1B37F3AB8(v51);
  OUTLINED_FUNCTION_5_32();
  v10 = sub_1B389C554(v7, v8, v9);
  sub_1B371B0F4(v51);
  *(inited + 40) = v10;
  sub_1B37F3AB8(v52);
  OUTLINED_FUNCTION_5_32();
  v14 = sub_1B389C554(v11, v12, v13);
  sub_1B371B0F4(v52);
  *(inited + 48) = v14;
  sub_1B37F3AB8(v53);
  OUTLINED_FUNCTION_5_32();
  v18 = sub_1B389C554(v15, v16, v17);
  sub_1B371B0F4(v53);
  *(inited + 56) = v18;
  sub_1B37F3AB8(v54);
  OUTLINED_FUNCTION_5_32();
  v22 = sub_1B389C554(v19, v20, v21);
  sub_1B371B0F4(v54);
  *(inited + 64) = v22;
  sub_1B37F3AB8(v55);
  OUTLINED_FUNCTION_5_32();
  v26 = sub_1B389C554(v23, v24, v25);
  sub_1B371B0F4(v55);
  *(inited + 72) = v26;
  sub_1B37F3AB8(v56);
  OUTLINED_FUNCTION_5_32();
  v30 = sub_1B389C554(v27, v28, v29);
  sub_1B371B0F4(v56);
  *(inited + 80) = v30;
  sub_1B37F3AB8(v57);
  OUTLINED_FUNCTION_5_32();
  v34 = sub_1B389C554(v31, v32, v33);
  sub_1B371B0F4(v57);
  *(inited + 88) = v34;
  sub_1B37F3AB8(v58);
  OUTLINED_FUNCTION_5_32();
  v38 = sub_1B389C554(v35, v36, v37);
  sub_1B371B0F4(v58);
  *(inited + 96) = v38;
  sub_1B37F3AB8(v59);
  OUTLINED_FUNCTION_5_32();
  v42 = sub_1B389C554(v39, v40, v41);
  sub_1B371B0F4(v59);
  *(inited + 104) = v42;
  result = sub_1B389C724(a1);
  v44 = 0;
  *(inited + 112) = result;
  v45 = MEMORY[0x1E69E7CC0];
  v49 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    if (v44 == 11)
    {
      swift_setDeallocating();
      sub_1B36FBAF4(&qword_1EB855550);
      return v45;
    }

    if (v44 > 0xA)
    {
      break;
    }

    if (*(inited + 8 * v44++ + 32))
    {

      MEMORY[0x1B8C69CE0](v47);
      v48 = *((v49 & 0xFFFFFFFFFFFFFF8) + 0x18);
      if (*((v49 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v48 >> 1)
      {
        OUTLINED_FUNCTION_20_0(v48);
        sub_1B3C9C7E8();
      }

      result = sub_1B3C9C808();
      v45 = v49;
    }
  }

  __break(1u);
  return result;
}

void *sub_1B389C554(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = PHStringForMemoryMood();
  if (result)
  {
    v6 = result;
    v7 = sub_1B3C9C5E8();
    v9 = v8;

    v10 = sub_1B38990D4(v7, v9, a3);
    if (v10)
    {
      v11 = v10;
      if (sub_1B3711890(v10))
      {
        sub_1B37ED0BC(0, (v11 & 0xC000000000000001) == 0, v11);
        if ((v11 & 0xC000000000000001) != 0)
        {
          v12 = MEMORY[0x1B8C6A930](0, v11);
        }

        else
        {
          v12 = *(v11 + 32);
        }

        v13 = v12;
        v14 = [v12 catalog];

        if (v11 >> 62)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB858440);
          sub_1B3C9D4D8();
        }

        else
        {
          sub_1B3C9D6B8();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB858440);
        v15 = sub_1B3C9C778();

        v16 = PXAudioAssetFetchResultWithArray();

        v17 = sub_1B389A854(v7, v9, a2, v14, v16, 0);

        swift_unknownObjectRelease();
        return v17;
      }
    }

    return 0;
  }

  __break(1u);
  return result;
}

void *sub_1B389C724(uint64_t a1)
{
  v2 = sub_1B3C9C5E8();
  v4 = v3;
  v5 = sub_1B38990D4(v2, v3, a1);
  if (!v5)
  {
    goto LABEL_9;
  }

  v6 = v5;
  if (!sub_1B3711890(v5))
  {

LABEL_9:

    return 0;
  }

  sub_1B37ED0BC(0, (v6 & 0xC000000000000001) == 0, v6);
  if ((v6 & 0xC000000000000001) != 0)
  {
    v7 = MEMORY[0x1B8C6A930](0, v6);
  }

  else
  {
    v7 = *(v6 + 32);
  }

  v8 = v7;
  v9 = [v7 catalog];

  if (v6 >> 62)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB858440);
    sub_1B3C9D4D8();
  }

  else
  {
    sub_1B3C9D6B8();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB858440);
  v10 = sub_1B3C9C778();

  v11 = PXAudioAssetFetchResultWithArray();

  v12 = sub_1B389A854(v2, v4, v14, v9, v11, 0);
  swift_unknownObjectRelease();
  sub_1B371B0F4(v14);

  return v12;
}

void sub_1B389C904()
{
  if (*(v0 + OBJC_IVAR____TtC15PhotosUIPrivate25StoryMusicEditorViewModel_configuration) == 1 && swift_unknownObjectWeakLoadStrong())
  {
    if (sub_1B389C988())
    {
      v1 = 2;
    }

    else
    {
      v1 = 4;
    }

    sub_1B38842D8(v1);

    swift_unknownObjectRelease();
  }
}

uint64_t sub_1B389C9D8()
{
  v1 = [*(v0 + OBJC_IVAR____TtC15PhotosUIPrivate25StoryMusicEditorViewModel_storyModel) currentAssetCollection];
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    objc_opt_self();
    OUTLINED_FUNCTION_13();
    v3 = swift_dynamicCastObjCClass();
    if (v3)
    {
      v4 = v3;
      if (qword_1EB850130 != -1)
      {
        OUTLINED_FUNCTION_10_27();
      }

      swift_beginAccess();
      v5 = sub_1B3898E44(v4, qword_1EB878FA8);
      swift_endAccess();
      swift_unknownObjectRelease();
      if (v5)
      {
        return v5;
      }
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }

  return v2;
}

uint64_t sub_1B389CAC4(uint64_t a1)
{
  if ([*(v1 + OBJC_IVAR____TtC15PhotosUIPrivate25StoryMusicEditorViewModel_storyModel) currentAssetCollection])
  {
    objc_opt_self();
    v3 = swift_dynamicCastObjCClass();
    if (v3)
    {
      v4 = v3;
      if (qword_1EB850130 != -1)
      {
        OUTLINED_FUNCTION_10_27();
      }

      swift_beginAccess();
      swift_unknownObjectRetain();
      swift_isUniquelyReferenced_nonNull_native();
      v6 = qword_1EB878FA8;
      sub_1B371FC74(a1, v4);
      qword_1EB878FA8 = v6;
      swift_unknownObjectRelease();
      swift_endAccess();
      return swift_unknownObjectRelease();
    }

    else
    {

      return swift_unknownObjectRelease();
    }
  }

  else
  {
  }
}

uint64_t sub_1B389CC2C()
{
  v0 = sub_1B389C9D8();
  v1 = sub_1B3711890(v0);
  if (!v1)
  {
  }

  v2 = v1;
  v3 = 0;
  v4 = 0;
  v5 = 0;
  v54 = v0 & 0xC000000000000001;
  v49 = v0 + 32;
  v50 = v0 & 0xFFFFFFFFFFFFFF8;
  v6 = MEMORY[0x1E69E7CC8];
  v48 = xmmword_1B3D048A0;
  v51 = v1;
  v52 = v0;
  while (1)
  {
    if (v54)
    {
      v7 = MEMORY[0x1B8C6A930](v4, v0);
    }

    else
    {
      if (v4 >= *(v50 + 16))
      {
        goto LABEL_57;
      }

      v7 = *(v49 + 8 * v4);
      swift_unknownObjectRetain();
    }

    v8 = __OFADD__(v4++, 1);
    if (v8)
    {
      goto LABEL_54;
    }

    v9 = v5 ? *(v5 + OBJC_IVAR____TtC15PhotosUIPrivate39StoryMusicEditorSongCollectionViewModel_audioCatalog) : 0;
    v10 = [v7 catalog];
    if (!v5 || v9 != v10)
    {
      break;
    }

LABEL_27:

    sub_1B36F9DA0(v3);
    swift_isUniquelyReferenced_nonNull_native();
    v55 = v6;
    v27 = sub_1B371F164(v5);
    if (__OFADD__(v6[2], (v28 & 1) == 0))
    {
      goto LABEL_55;
    }

    v29 = v27;
    v30 = v28;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB858438);
    v31 = sub_1B3C9D468();
    v6 = v55;
    if (v31)
    {
      v32 = sub_1B371F164(v5);
      if ((v30 & 1) != (v33 & 1))
      {
        goto LABEL_59;
      }

      v29 = v32;
    }

    if ((v30 & 1) == 0)
    {
      v6[(v29 >> 6) + 8] |= 1 << v29;
      *(v6[6] + 8 * v29) = v5;
      *(v6[7] + 8 * v29) = MEMORY[0x1E69E7CC0];
      v34 = v6[2];
      v8 = __OFADD__(v34, 1);
      v35 = v34 + 1;
      if (v8)
      {
        goto LABEL_56;
      }

      v6[2] = v35;
    }

    v36 = (v6[7] + 8 * v29);
    v37 = swift_unknownObjectRetain();
    MEMORY[0x1B8C69CE0](v37);
    v38 = *((*v36 & 0xFFFFFFFFFFFFFF8) + 0x18);
    if (*((*v36 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v38 >> 1)
    {
      OUTLINED_FUNCTION_20_0(v38);
      sub_1B3C9C7E8();
    }

    sub_1B3C9C808();
    swift_unknownObjectRelease();

    v3 = sub_1B389D230;
    if (v4 == v2)
    {

      v39 = sub_1B3899554();
      v40 = sub_1B3711890(v39);
      if (v40)
      {
        v41 = v40;
        if (v40 < 1)
        {
          goto LABEL_58;
        }

        v42 = 0;
        v43 = MEMORY[0x1E69E7CC0];
        do
        {
          if ((v39 & 0xC000000000000001) != 0)
          {
            v44 = MEMORY[0x1B8C6A930](v42, v39);
          }

          else
          {
            v44 = *(v39 + 8 * v42 + 32);
          }

          if (v6[2] && (sub_1B371F164(v44), (v45 & 1) != 0))
          {
          }

          else
          {
            v46 = v43;
          }

          ++v42;
          sub_1B37EFD98(v46);
        }

        while (v41 != v42);
      }
    }
  }

  v53 = v3;
  v11 = sub_1B3899554();
  v12 = sub_1B3711890(v11);
  for (i = 0; ; ++i)
  {
    if (v12 == i)
    {

      v16 = [objc_opt_self() pu_PhotosUIFrameworkBundle];
      v56[0] = sub_1B3C9AF78();
      v56[1] = v17;
      v57 = v18 & 1;
      v58 = v19;
      v59 = v48;
      v60 = v16;
      v20 = [v7 catalog];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB858440);
      v21 = sub_1B3C9C778();
      v22 = PXAudioAssetFetchResultWithArray();

      v5 = sub_1B389A854(0x6767755320706F54, 0xEF736E6F69747365, v56, v20, v22, 0);
      swift_unknownObjectRelease();
      sub_1B371B0F4(v56);
      swift_getKeyPath();
      swift_getKeyPath();

      v23 = sub_1B3C9A688();
      v25 = v24;
      MEMORY[0x1B8C69CE0]();
      v26 = *((*v25 & 0xFFFFFFFFFFFFFF8) + 0x18);
      if (*((*v25 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v26 >> 1)
      {
        OUTLINED_FUNCTION_20_0(v26);
        sub_1B3C9C7E8();
      }

      OUTLINED_FUNCTION_13_17();
      sub_1B3C9C808();
      v23(&v55, 0);

      goto LABEL_26;
    }

    if ((v11 & 0xC000000000000001) != 0)
    {
      v14 = MEMORY[0x1B8C6A930](i, v11);
    }

    else
    {
      if (i >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_53;
      }

      v14 = *(v11 + 8 * i + 32);
    }

    if (__OFADD__(i, 1))
    {
      break;
    }

    v15 = *(v14 + OBJC_IVAR____TtC15PhotosUIPrivate39StoryMusicEditorSongCollectionViewModel_audioCatalog);
    if (v15 == [v7 catalog])
    {

      v5 = v14;
LABEL_26:
      v2 = v51;
      v0 = v52;
      v3 = v53;
      goto LABEL_27;
    }
  }

  __break(1u);
LABEL_53:
  __break(1u);
LABEL_54:
  __break(1u);
LABEL_55:
  __break(1u);
LABEL_56:
  __break(1u);
LABEL_57:
  __break(1u);
LABEL_58:
  __break(1u);
LABEL_59:
  type metadata accessor for StoryMusicEditorSongCollectionViewModel();
  result = sub_1B3C9D718();
  __break(1u);
  return result;
}

void sub_1B389D240(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = [objc_allocWithZone(MEMORY[0x1E69C36D8]) init];
  v7 = objc_opt_self();
  v8 = sub_1B3C9C5A8();
  sub_1B389DE08();
  v10 = v9;
  v11 = swift_allocObject();
  *(v11 + 16) = a3;
  *(v11 + 24) = a4;
  v14[4] = sub_1B389F7F8;
  v14[5] = v11;
  OUTLINED_FUNCTION_1_0();
  v14[1] = 1107296256;
  v14[2] = sub_1B38132D4;
  v14[3] = &block_descriptor_102_0;
  v12 = _Block_copy(v14);

  v13 = [v7 requestAudioAssetIdentifierForPurchasedSongID:v8 requestOptions:v6 photoLibrary:v10 completionHandler:v12];
  _Block_release(v12);
}

void sub_1B389D38C(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = HIBYTE(a2) & 0xF;
  v7 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v8 = v6;
  }

  else
  {
    v8 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v8)
  {
    goto LABEL_74;
  }

  if ((a2 & 0x1000000000000000) != 0)
  {

    v11 = sub_1B389E898(a1, a2, 10);
    v35 = v34;

    if (v35)
    {
      goto LABEL_74;
    }

LABEL_70:
    if (!v11)
    {
      type metadata accessor for PXStoryError(0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8571B0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1B3CF6CE0;
      *(inited + 32) = sub_1B3C9C5E8();
      *(inited + 40) = v28;
      sub_1B3C9D378();

      aBlock = 0xD000000000000022;
      v45 = 0x80000001B3D209A0;
      MEMORY[0x1B8C69C10](a1, a2);
      *(inited + 72) = MEMORY[0x1E69E6158];
      *(inited + 48) = 0xD000000000000022;
      *(inited + 56) = 0x80000001B3D209A0;
      sub_1B3C9C4D8();
      sub_1B389F7B4(&qword_1EB852340, type metadata accessor for PXStoryError);
      sub_1B3C97F08();
      v29 = aBlock;
      v30 = [*(v3 + OBJC_IVAR____TtC15PhotosUIPrivate25StoryMusicEditorViewModel_storyModel) errorReporter];
      if (v30)
      {
        v31 = v30;
        v29 = aBlock;
        v32 = sub_1B3C97F18();

        v33 = OUTLINED_FUNCTION_6_29();
        [v31 setError:v32 forComponent:v33];

        swift_unknownObjectRelease();
      }

      goto LABEL_75;
    }

LABEL_74:
    v36 = [objc_allocWithZone(MEMORY[0x1E69C36D8]) init];
    v37 = objc_opt_self();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB851C50);
    v38 = swift_allocObject();
    *(v38 + 16) = xmmword_1B3CF6CE0;
    *(v38 + 32) = a1;
    *(v38 + 40) = a2;

    v39 = sub_1B3C9C778();

    sub_1B389DE08();
    v29 = v40;
    OUTLINED_FUNCTION_20();
    v41 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v48 = sub_1B389EE20;
    v49 = v41;
    aBlock = MEMORY[0x1E69E9820];
    v45 = 1107296256;
    v46 = sub_1B389DD88;
    v47 = &block_descriptor_60;
    v42 = _Block_copy(&aBlock);

    v43 = [v37 requestAudioAssetFetchResultForAdamIDs:v39 requestOptions:v36 photoLibrary:v29 completionHandler:v42];
    _Block_release(v42);

LABEL_75:
    return;
  }

  if ((a2 & 0x2000000000000000) == 0)
  {
    if ((a1 & 0x1000000000000000) != 0)
    {
      v9 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    }

    else
    {
      v9 = sub_1B3C9D3F8();
    }

    v10 = *v9;
    if (v10 == 43)
    {
      if (v7 >= 1)
      {
        if (v7 != 1)
        {
          v11 = 0;
          if (v9)
          {
            while (1)
            {
              OUTLINED_FUNCTION_8_25();
              if (!v13 & v12)
              {
                goto LABEL_68;
              }

              OUTLINED_FUNCTION_2_43();
              if (!v13)
              {
                goto LABEL_68;
              }

              v11 = v20 + v19;
              if (__OFADD__(v20, v19))
              {
                goto LABEL_68;
              }

              OUTLINED_FUNCTION_16_17();
              if (v13)
              {
                goto LABEL_69;
              }
            }
          }

          goto LABEL_59;
        }

        goto LABEL_68;
      }

      goto LABEL_79;
    }

    if (v10 != 45)
    {
      if (v7)
      {
        v11 = 0;
        if (v9)
        {
          while (1)
          {
            v23 = *v9 - 48;
            if (v23 > 9)
            {
              goto LABEL_68;
            }

            v24 = 10 * v11;
            if ((v11 * 10) >> 64 != (10 * v11) >> 63)
            {
              goto LABEL_68;
            }

            v11 = v24 + v23;
            if (__OFADD__(v24, v23))
            {
              goto LABEL_68;
            }

            ++v9;
            if (!--v7)
            {
              goto LABEL_59;
            }
          }
        }

        goto LABEL_59;
      }

LABEL_68:
      v11 = 0;
      v16 = 1;
LABEL_69:
      if (v16)
      {
        goto LABEL_74;
      }

      goto LABEL_70;
    }

    if (v7 >= 1)
    {
      if (v7 != 1)
      {
        v11 = 0;
        if (v9)
        {
          while (1)
          {
            OUTLINED_FUNCTION_8_25();
            if (!v13 & v12)
            {
              goto LABEL_68;
            }

            OUTLINED_FUNCTION_2_43();
            if (!v13)
            {
              goto LABEL_68;
            }

            v11 = v15 - v14;
            if (__OFSUB__(v15, v14))
            {
              goto LABEL_68;
            }

            OUTLINED_FUNCTION_16_17();
            if (v13)
            {
              goto LABEL_69;
            }
          }
        }

LABEL_59:
        v16 = 0;
        goto LABEL_69;
      }

      goto LABEL_68;
    }

    __break(1u);
LABEL_78:
    __break(1u);
LABEL_79:
    __break(1u);
    goto LABEL_80;
  }

  aBlock = a1;
  v45 = a2 & 0xFFFFFFFFFFFFFFLL;
  if (a1 != 43)
  {
    if (a1 != 45)
    {
      if (v6)
      {
        while (1)
        {
          OUTLINED_FUNCTION_8_25();
          if (!v13 & v12)
          {
            break;
          }

          OUTLINED_FUNCTION_2_43();
          if (!v13)
          {
            break;
          }

          v11 = v26 + v25;
          if (__OFADD__(v26, v25))
          {
            break;
          }

          OUTLINED_FUNCTION_16_17();
          if (v13)
          {
            goto LABEL_69;
          }
        }
      }

      goto LABEL_68;
    }

    if (v6)
    {
      if (v6 != 1)
      {
        OUTLINED_FUNCTION_19_21();
        while (1)
        {
          OUTLINED_FUNCTION_8_25();
          if (!v13 & v12)
          {
            break;
          }

          OUTLINED_FUNCTION_2_43();
          if (!v13)
          {
            break;
          }

          v11 = v18 - v17;
          if (__OFSUB__(v18, v17))
          {
            break;
          }

          OUTLINED_FUNCTION_16_17();
          if (v13)
          {
            goto LABEL_69;
          }
        }
      }

      goto LABEL_68;
    }

    goto LABEL_78;
  }

  if (v6)
  {
    if (v6 != 1)
    {
      OUTLINED_FUNCTION_19_21();
      while (1)
      {
        OUTLINED_FUNCTION_8_25();
        if (!v13 & v12)
        {
          break;
        }

        OUTLINED_FUNCTION_2_43();
        if (!v13)
        {
          break;
        }

        v11 = v22 + v21;
        if (__OFADD__(v22, v21))
        {
          break;
        }

        OUTLINED_FUNCTION_16_17();
        if (v13)
        {
          goto LABEL_69;
        }
      }
    }

    goto LABEL_68;
  }

LABEL_80:
  __break(1u);
}

uint64_t sub_1B389D8F0(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = sub_1B3C9C118();
  v18 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1B3C9C168();
  v9 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B3710718(0, &qword_1EB84FE60);
  v12 = sub_1B3C9CC88();
  v13 = swift_allocObject();
  v13[2] = a1;
  v13[3] = a3;
  v13[4] = a2;
  aBlock[4] = sub_1B389EE30;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B370C014;
  aBlock[3] = &block_descriptor_45_1;
  v14 = _Block_copy(aBlock);
  swift_unknownObjectRetain();

  v15 = a2;

  sub_1B3C9C138();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1B389F7B4(&qword_1EB84FEE0, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB851AF0);
  sub_1B3739124(&qword_1EB84FE90, &unk_1EB851AF0);
  sub_1B3C9D278();
  MEMORY[0x1B8C6A210](0, v11, v8, v14);
  _Block_release(v14);

  (*(v18 + 8))(v8, v6);
  return (*(v9 + 8))(v11, v17);
}

void sub_1B389DBF0(void *a1, uint64_t a2, uint64_t a3)
{
  if (a1 && [a1 firstObject])
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v5 = Strong;
      v6 = swift_unknownObjectRetain();
      sub_1B389F41C(v6, v5);

      swift_unknownObjectRelease();
    }

    swift_beginAccess();
    v7 = swift_unknownObjectWeakLoadStrong();
    if (v7)
    {
      v8 = v7;
      v9 = swift_unknownObjectRetain();
      sub_1B389A13C(v9);

      swift_unknownObjectRelease();
    }

    goto LABEL_13;
  }

  swift_beginAccess();
  v10 = swift_unknownObjectWeakLoadStrong();
  if (v10)
  {
    v11 = v10;
    v12 = *(v10 + OBJC_IVAR____TtC15PhotosUIPrivate25StoryMusicEditorViewModel_storyModel);

    v13 = [v12 errorReporter];
    if (v13)
    {
      if (a3)
      {
        v14 = sub_1B3C97F18();
      }

      else
      {
        v14 = 0;
      }

      v15 = sub_1B3C9C5A8();
      [v13 setError:v14 forComponent:v15];

LABEL_13:
      swift_unknownObjectRelease();
    }
  }
}

uint64_t sub_1B389DD88(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  swift_unknownObjectRetain();
  v6 = a3;
  v5(a2, a3);

  return swift_unknownObjectRelease();
}

void sub_1B389DE08()
{
  v1 = [*(v0 + OBJC_IVAR____TtC15PhotosUIPrivate25StoryMusicEditorViewModel_storyModel) configuration];
  v2 = [v1 photoLibrary];

  if (!v2)
  {
    __break(1u);
  }
}

id sub_1B389DE70(uint64_t a1)
{
  result = [*(v1 + OBJC_IVAR____TtC15PhotosUIPrivate25StoryMusicEditorViewModel_storyModel) errorReporter];
  if (result)
  {
    v4 = result;
    if (a1)
    {
      v5 = sub_1B3C97F18();
    }

    else
    {
      v5 = 0;
    }

    v6 = OUTLINED_FUNCTION_6_29();
    [v4 setError:v5 forComponent:v6];

    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_1B389DF24(uint64_t a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC15PhotosUIPrivate25StoryMusicEditorViewModel_storyModel);
  if ([v3 currentAssetCollection])
  {
    objc_opt_self();
    v4 = swift_dynamicCastObjCClass();
    if (v4)
    {
      v14 = [v3 photoKitAssetContainerWithAssetCollection_];
      v5 = [v3 configuration];
      v6 = [v5 musicCurationProvider];

      [v6 applyNegativeFeedbackToSong:a1 forAssetContainer:v14];
      swift_unknownObjectRelease();
      v7 = sub_1B389C9D8();
      v15 = MEMORY[0x1E69E7CC0];
      v8 = sub_1B3711890(v7);
      for (i = 0; v8 != i; ++i)
      {
        if ((v7 & 0xC000000000000001) != 0)
        {
          v10 = MEMORY[0x1B8C6A930](i, v7);
        }

        else
        {
          if (i >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_22;
          }

          v10 = *(v7 + 8 * i + 32);
          swift_unknownObjectRetain();
        }

        if (__OFADD__(i, 1))
        {
          __break(1u);
LABEL_22:
          __break(1u);
          return;
        }

        if ([v10 isEqual_])
        {
          swift_unknownObjectRelease();
        }

        else
        {
          sub_1B3C9D408();
          sub_1B3C9D438();
          sub_1B3C9D448();
          sub_1B3C9D418();
        }
      }

      sub_1B389CAC4(v15);
      swift_unknownObjectRelease();
      OUTLINED_FUNCTION_19_14();
    }

    else
    {
      OUTLINED_FUNCTION_19_14();

      swift_unknownObjectRelease();
    }
  }

  else
  {
    OUTLINED_FUNCTION_19_14();
  }
}

uint64_t sub_1B389E168(uint64_t result)
{
  if (result)
  {
    sub_1B389A2D0(1);
    sub_1B389A444();
    result = [*(v1 + OBJC_IVAR____TtC15PhotosUIPrivate25StoryMusicEditorViewModel_configuration + 40) statusForCapability_];
    if (result == 1)
    {
      result = [*(v1 + OBJC_IVAR____TtC15PhotosUIPrivate25StoryMusicEditorViewModel_storyViewModel) actionPerformer];
      if (result)
      {
        [result dismissAppleMusicPreview];

        return swift_unknownObjectRelease();
      }
    }
  }

  return result;
}

id sub_1B389E28C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for StoryMusicEditorViewModel();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for StoryMusicEditorViewModel()
{
  result = qword_1EB858408;
  if (!qword_1EB858408)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1B389E498()
{
  sub_1B37C53D8(319, &unk_1EB858418, &qword_1EB855540);
  if (v0 <= 0x3F)
  {
    sub_1B37C53D8(319, &unk_1EB858428, &qword_1EB853600);
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_1B389E5D8(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 48))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 40);
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

uint64_t sub_1B389E618(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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
      *(result + 40) = (a2 - 1);
      return result;
    }

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1B389E674@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for StoryMusicEditorViewModel();
  result = sub_1B3C9A658();
  *a1 = result;
  return result;
}

uint64_t sub_1B389E6E0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB852068);
  OUTLINED_FUNCTION_26_14();
  v0 = OUTLINED_FUNCTION_16();

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t sub_1B389E760()
{
  sub_1B3C98638();
  OUTLINED_FUNCTION_26_14();
  v0 = OUTLINED_FUNCTION_16();

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t sub_1B389E7C0()
{
  swift_arrayDestroy();
  v0 = OUTLINED_FUNCTION_16();

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

void *sub_1B389E828(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB852630);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
}

unsigned __int8 *sub_1B389E898(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v62 = a1;
  v63 = a2;

  result = sub_1B3C9C718();
  v6 = result;
  v7 = v5;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_1B389EE3C(result, v5);
    v36 = v35;

    v7 = v36;
    if ((v36 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v7 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v8 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_1B3C9D3F8();
    }

    v9 = *result;
    if (v9 == 43)
    {
      if (v8 >= 1)
      {
        v20 = v8 - 1;
        if (v8 != 1)
        {
          v21 = a3 + 48;
          v22 = a3 + 55;
          v23 = a3 + 87;
          if (a3 > 10)
          {
            v21 = 58;
          }

          else
          {
            v23 = 97;
            v22 = 65;
          }

          if (result)
          {
            v14 = 0;
            v24 = result + 1;
            do
            {
              v25 = *v24;
              if (v25 < 0x30 || v25 >= v21)
              {
                if (v25 < 0x41 || v25 >= v22)
                {
                  v18 = 0;
                  if (v25 < 0x61 || v25 >= v23)
                  {
                    goto LABEL_127;
                  }

                  v26 = -87;
                }

                else
                {
                  v26 = -55;
                }
              }

              else
              {
                v26 = -48;
              }

              v27 = v14 * a3;
              if ((v14 * a3) >> 64 != (v14 * a3) >> 63)
              {
                goto LABEL_126;
              }

              v14 = v27 + (v25 + v26);
              if (__OFADD__(v27, (v25 + v26)))
              {
                goto LABEL_126;
              }

              ++v24;
              --v20;
            }

            while (v20);
LABEL_46:
            v18 = v14;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v18 = 0;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v9 != 45)
    {
      if (v8)
      {
        v28 = a3 + 48;
        v29 = a3 + 55;
        v30 = a3 + 87;
        if (a3 > 10)
        {
          v28 = 58;
        }

        else
        {
          v30 = 97;
          v29 = 65;
        }

        if (result)
        {
          v31 = 0;
          do
          {
            v32 = *result;
            if (v32 < 0x30 || v32 >= v28)
            {
              if (v32 < 0x41 || v32 >= v29)
              {
                v18 = 0;
                if (v32 < 0x61 || v32 >= v30)
                {
                  goto LABEL_127;
                }

                v33 = -87;
              }

              else
              {
                v33 = -55;
              }
            }

            else
            {
              v33 = -48;
            }

            v34 = v31 * a3;
            if ((v31 * a3) >> 64 != (v31 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v31 = v34 + (v32 + v33);
            if (__OFADD__(v34, (v32 + v33)))
            {
              goto LABEL_126;
            }

            ++result;
            --v8;
          }

          while (v8);
          v18 = v34 + (v32 + v33);
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v8 >= 1)
    {
      v10 = v8 - 1;
      if (v8 != 1)
      {
        v11 = a3 + 48;
        v12 = a3 + 55;
        v13 = a3 + 87;
        if (a3 > 10)
        {
          v11 = 58;
        }

        else
        {
          v13 = 97;
          v12 = 65;
        }

        if (result)
        {
          v14 = 0;
          v15 = result + 1;
          while (1)
          {
            v16 = *v15;
            if (v16 < 0x30 || v16 >= v11)
            {
              if (v16 < 0x41 || v16 >= v12)
              {
                v18 = 0;
                if (v16 < 0x61 || v16 >= v13)
                {
                  goto LABEL_127;
                }

                v17 = -87;
              }

              else
              {
                v17 = -55;
              }
            }

            else
            {
              v17 = -48;
            }

            v19 = v14 * a3;
            if ((v14 * a3) >> 64 != (v14 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v14 = v19 - (v16 + v17);
            if (__OFSUB__(v19, (v16 + v17)))
            {
              goto LABEL_126;
            }

            ++v15;
            if (!--v10)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v18 = 0;
LABEL_127:

        return v18;
      }

      goto LABEL_126;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v37 = HIBYTE(v7) & 0xF;
  v62 = v6;
  v63 = v7 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v37)
      {
        v39 = 0;
        v55 = a3 + 48;
        v56 = a3 + 55;
        v57 = a3 + 87;
        if (a3 > 10)
        {
          v55 = 58;
        }

        else
        {
          v57 = 97;
          v56 = 65;
        }

        v58 = &v62;
        while (1)
        {
          v59 = *v58;
          if (v59 < 0x30 || v59 >= v55)
          {
            if (v59 < 0x41 || v59 >= v56)
            {
              v18 = 0;
              if (v59 < 0x61 || v59 >= v57)
              {
                goto LABEL_127;
              }

              v60 = -87;
            }

            else
            {
              v60 = -55;
            }
          }

          else
          {
            v60 = -48;
          }

          v61 = v39 * a3;
          if ((v39 * a3) >> 64 != (v39 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v39 = v61 + (v59 + v60);
          if (__OFADD__(v61, (v59 + v60)))
          {
            goto LABEL_126;
          }

          v58 = (v58 + 1);
          if (!--v37)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v37)
    {
      v38 = v37 - 1;
      if (v38)
      {
        v39 = 0;
        v40 = a3 + 48;
        v41 = a3 + 55;
        v42 = a3 + 87;
        if (a3 > 10)
        {
          v40 = 58;
        }

        else
        {
          v42 = 97;
          v41 = 65;
        }

        v43 = &v62 + 1;
        while (1)
        {
          v44 = *v43;
          if (v44 < 0x30 || v44 >= v40)
          {
            if (v44 < 0x41 || v44 >= v41)
            {
              v18 = 0;
              if (v44 < 0x61 || v44 >= v42)
              {
                goto LABEL_127;
              }

              v45 = -87;
            }

            else
            {
              v45 = -55;
            }
          }

          else
          {
            v45 = -48;
          }

          v46 = v39 * a3;
          if ((v39 * a3) >> 64 != (v39 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v39 = v46 - (v44 + v45);
          if (__OFSUB__(v46, (v44 + v45)))
          {
            goto LABEL_126;
          }

          ++v43;
          if (!--v38)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v37)
  {
    v47 = v37 - 1;
    if (v47)
    {
      v39 = 0;
      v48 = a3 + 48;
      v49 = a3 + 55;
      v50 = a3 + 87;
      if (a3 > 10)
      {
        v48 = 58;
      }

      else
      {
        v50 = 97;
        v49 = 65;
      }

      v51 = &v62 + 1;
      do
      {
        v52 = *v51;
        if (v52 < 0x30 || v52 >= v48)
        {
          if (v52 < 0x41 || v52 >= v49)
          {
            v18 = 0;
            if (v52 < 0x61 || v52 >= v50)
            {
              goto LABEL_127;
            }

            v53 = -87;
          }

          else
          {
            v53 = -55;
          }
        }

        else
        {
          v53 = -48;
        }

        v54 = v39 * a3;
        if ((v39 * a3) >> 64 != (v39 * a3) >> 63)
        {
          goto LABEL_126;
        }

        v39 = v54 + (v52 + v53);
        if (__OFADD__(v54, (v52 + v53)))
        {
          goto LABEL_126;
        }

        ++v51;
        --v47;
      }

      while (v47);
LABEL_125:
      v18 = v39;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

uint64_t sub_1B389EE3C(uint64_t a1, unint64_t a2)
{
  v2 = sub_1B389EEA8(sub_1B389EEA4, 0, a1, a2);
  v6 = sub_1B389EEDC(v2, v3, v4, v5);

  return v6;
}

uint64_t sub_1B389EEA8(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = HIBYTE(a4) & 0xF;
  if ((a4 & 0x2000000000000000) == 0)
  {
    v4 = a3;
  }

  v5 = 7;
  if (((a4 >> 60) & ((a3 & 0x800000000000000) == 0)) != 0)
  {
    v5 = 11;
  }

  return MEMORY[0x1EEE69100](15, v5 | (v4 << 16));
}

uint64_t sub_1B389EEDC(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    v9 = sub_1B3C9D1A8();
    if (!v9 || (v10 = v9, v11 = sub_1B389E828(v9, 0), v12 = sub_1B389F03C(v14, (v11 + 4), v10, a1, a2, a3, a4), , , v12 == v10))
    {
      v13 = sub_1B3C9C658();

      return v13;
    }

    __break(1u);
  }

  else
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v14[0] = a3;
      v14[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return sub_1B3C9C658();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }
  }

  sub_1B3C9D3F8();
LABEL_4:

  return sub_1B3C9C658();
}

unint64_t sub_1B389F03C(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_36;
  }

  if (a3 < 0)
  {
    goto LABEL_40;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_36:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    result = v12;
    if ((v12 & 0xC) == v15)
    {
      result = sub_1B389F24C(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_1B3C9C6D8();
      v19 = result;
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = sub_1B3C9D3F8();
        }

        v19 = *(result + v18);
      }
    }

    if ((v12 & 0xC) == v15)
    {
      result = sub_1B389F24C(v12, a6, a7);
      v12 = result;
      if ((a7 & 0x1000000000000000) == 0)
      {
LABEL_27:
        v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
        goto LABEL_31;
      }
    }

    else if ((a7 & 0x1000000000000000) == 0)
    {
      goto LABEL_27;
    }

    if (v23 <= v12 >> 16)
    {
      goto LABEL_39;
    }

    result = sub_1B3C9C6B8();
    v12 = result;
LABEL_31:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_36;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_38;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_36;
    }
  }

  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
  return result;
}

uint64_t sub_1B389F24C(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_1B3C9C6E8();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = MEMORY[0x1B8C69C40](15, a1 >> 16);
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

void sub_1B389F2C8(uint64_t a1, void *a2)
{
  type metadata accessor for PXMusicCurationCategory(0);
  sub_1B389F7B4(&qword_1EB851020, type metadata accessor for PXMusicCurationCategory);
  v3 = sub_1B3C9C968();

  [a2 setCategories_];
}

uint64_t sub_1B389F380(void *a1)
{
  v1 = [a1 categories];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  type metadata accessor for PXMusicCurationCategory(0);
  sub_1B389F7B4(&qword_1EB851020, type metadata accessor for PXMusicCurationCategory);
  v3 = sub_1B3C9C988();

  return v3;
}

void sub_1B389F41C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B389C9D8();
  v5 = sub_1B3711890(v4);

  v6 = 0;
  while (v5 != v6)
  {
    if ((v4 & 0xC000000000000001) != 0)
    {
      v7 = MEMORY[0x1B8C6A930](v6, v4);
    }

    else
    {
      if (v6 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_25;
      }

      v7 = *(v4 + 8 * v6 + 32);
      swift_unknownObjectRetain();
    }

    if (__OFADD__(v6, 1))
    {
      __break(1u);
LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
      goto LABEL_27;
    }

    v8 = [v7 isEqual_];
    swift_unknownObjectRelease();
    ++v6;
    if (v8)
    {
      swift_bridgeObjectRelease_n();
LABEL_16:
      OUTLINED_FUNCTION_19_14();
      return;
    }
  }

  sub_1B37EBC94(0, v4);
  if (sub_1B3711890(v4) < 0)
  {
    goto LABEL_26;
  }

  v9 = sub_1B3711890(v4);
  v10 = v9 + 1;
  if (__OFADD__(v9, 1))
  {
LABEL_27:
    __break(1u);
  }

  else
  {
    swift_unknownObjectRetain();
    sub_1B37ED0C0(v10, 1);
    sub_1B37EBF4C(0, 0, 1, a1);
    sub_1B389CAC4(v4);
    v11 = *(a2 + OBJC_IVAR____TtC15PhotosUIPrivate25StoryMusicEditorViewModel_songCollectionLoadingState);
    if ((v11 - 1) < 2)
    {
      goto LABEL_16;
    }

    if (v11)
    {
      if (v11 == 3)
      {
        sub_1B389CC2C();
      }

      else
      {
        v16 = *(a2 + OBJC_IVAR____TtC15PhotosUIPrivate25StoryMusicEditorViewModel_songCollectionLoadingState);
        sub_1B3725570(v11);
        v14 = v11;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8518D0);
        sub_1B3710718(0, &unk_1EB855710);
        if (swift_dynamicCast())
        {
          sub_1B372555C(v11);
        }

        else
        {
          sub_1B372555C(v11);
        }
      }

      goto LABEL_16;
    }

    OUTLINED_FUNCTION_19_14();

    sub_1B372555C(v12);
  }
}

uint64_t objectdestroy_51Tm_0(void (*a1)(void))
{

  a1(*(v1 + 24));
  v3 = OUTLINED_FUNCTION_16();

  return MEMORY[0x1EEE6BDD0](v3, v4, v5);
}

unint64_t sub_1B389F6D4()
{
  result = qword_1EB8584D8;
  if (!qword_1EB8584D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8584D8);
  }

  return result;
}

uint64_t objectdestroy_41Tm_0(void (*a1)(void), void (*a2)(void), void (*a3)(void))
{
  a1(v3[2]);
  a2(v3[3]);
  a3(v3[4]);

  return MEMORY[0x1EEE6BDD0](v3, 40, 7);
}

uint64_t sub_1B389F7B4(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    OUTLINED_FUNCTION_13();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for StoryMusicEditorViewModel.Error(_BYTE *result, int a2, int a3)
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

unint64_t sub_1B389F8D0()
{
  result = qword_1EB858510;
  if (!qword_1EB858510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB858510);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_6_29()
{

  return sub_1B3C9C5A8();
}

uint64_t OUTLINED_FUNCTION_10_27()
{

  return swift_once();
}

double OUTLINED_FUNCTION_12_24@<D0>(uint64_t a1@<X8>)
{

  return sub_1B37F3AB8(a1);
}

uint64_t OUTLINED_FUNCTION_26_14()
{

  return swift_arrayDestroy();
}

uint64_t OUTLINED_FUNCTION_27_12()
{
}

uint64_t sub_1B389FA74(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  if (a3)
  {
    v5 = sub_1B3C9C4C8();
  }

  else
  {
    v5 = 0;
  }

  v6 = a2;
  v4(a2, v5);
}

id sub_1B389FB20(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  swift_unknownObjectWeakInit();
  *&v4[OBJC_IVAR____TtC15PhotosUIPrivate37StoryMusicFeedbackContextMenuDelegate_storyViewModel] = a1;
  swift_unknownObjectWeakAssign();
  v9 = &v4[OBJC_IVAR____TtC15PhotosUIPrivate37StoryMusicFeedbackContextMenuDelegate_audioAssetProvider];
  *v9 = a2;
  *(v9 + 1) = a3;
  v13.receiver = v4;
  v13.super_class = type metadata accessor for StoryMusicFeedbackContextMenuDelegate();
  v10 = a1;

  v11 = objc_msgSendSuper2(&v13, sel_init);

  return v11;
}

id sub_1B389FBE4()
{
  v1 = v0;
  if (PFOSVariantHasInternalUI())
  {
    result = (*&v0[OBJC_IVAR____TtC15PhotosUIPrivate37StoryMusicFeedbackContextMenuDelegate_audioAssetProvider])();
    if (!result)
    {
      return result;
    }

    v3 = result;
    v4 = [*&v1[OBJC_IVAR____TtC15PhotosUIPrivate37StoryMusicFeedbackContextMenuDelegate_storyViewModel] mainModel];
    v5 = [v4 currentAssetCollection];

    if (v5)
    {
      objc_opt_self();
      v6 = swift_dynamicCastObjCClass();
      if (v6)
      {
        v7 = v6;
        v8 = swift_allocObject();
        *(v8 + 16) = v1;
        *(v8 + 24) = v3;
        sub_1B3710718(0, &qword_1EB8585B0);
        v9 = swift_allocObject();
        v9[2] = v1;
        v9[3] = v3;
        v9[4] = v7;
        v10 = v1;
        swift_unknownObjectRetain();
        return sub_1B38A041C(0, sub_1B38A1104, v8, sub_1B38A112C, v9);
      }

      swift_unknownObjectRelease();
    }

    swift_unknownObjectRelease();
  }

  return 0;
}

uint64_t sub_1B389FD64(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB853EE0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1B3CFC180;
  v8 = v7;
  v34 = v7;
  sub_1B3710718(0, &unk_1EB851C40);
  sub_1B3710718(0, &unk_1EB84FE20);
  sub_1B36F9850();
  v9 = swift_allocObject();
  *(v9 + 16) = a2;
  *(v9 + 24) = a3;
  v10 = a2;
  swift_unknownObjectRetain();
  *(v8 + 32) = sub_1B3C9CFE8();
  sub_1B3710718(0, &qword_1EB8585C8);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1B3CF9810;
  v12 = PXStringForMemoryMusicQualityFeedbackType();
  sub_1B3C9C5E8();

  sub_1B36F9850();
  v13 = swift_allocObject();
  *(v13 + 16) = v10;
  *(v13 + 24) = 1;
  *(v13 + 32) = a3;
  *(v13 + 40) = a4;
  v14 = v10;
  swift_unknownObjectRetain();
  v15 = a4;
  *(v11 + 32) = sub_1B3C9CFE8();
  *(v34 + 40) = sub_1B3C9CF08();
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_1B3D001A0;
  v17 = PXStringForMemoryMusicQualityFeedbackType();
  sub_1B3C9C5E8();

  sub_1B36F9850();
  v18 = swift_allocObject();
  *(v18 + 16) = v14;
  *(v18 + 24) = 2;
  *(v18 + 32) = a3;
  *(v18 + 40) = v15;
  v19 = v14;
  swift_unknownObjectRetain();
  v20 = v15;
  *(v16 + 32) = sub_1B3C9CFE8();
  v21 = PXStringForMemoryMusicQualityFeedbackType();
  sub_1B3C9C5E8();

  sub_1B36F9850();
  v22 = swift_allocObject();
  *(v22 + 16) = v19;
  *(v22 + 24) = 3;
  *(v22 + 32) = a3;
  *(v22 + 40) = v20;
  v23 = v19;
  swift_unknownObjectRetain();
  v24 = v20;
  *(v16 + 40) = sub_1B3C9CFE8();
  v25 = PXStringForMemoryMusicQualityFeedbackType();
  sub_1B3C9C5E8();

  sub_1B36F9850();
  v26 = swift_allocObject();
  *(v26 + 16) = v23;
  *(v26 + 24) = 4;
  *(v26 + 32) = a3;
  *(v26 + 40) = v24;
  v27 = v23;
  swift_unknownObjectRetain();
  v28 = v24;
  *(v16 + 48) = sub_1B3C9CFE8();
  v29 = PXStringForMemoryMusicQualityFeedbackType();
  sub_1B3C9C5E8();

  sub_1B36F9850();
  v30 = swift_allocObject();
  *(v30 + 16) = v27;
  *(v30 + 24) = 5;
  *(v30 + 32) = a3;
  *(v30 + 40) = v28;
  v31 = v27;
  swift_unknownObjectRetain();
  v32 = v28;
  *(v16 + 56) = sub_1B3C9CFE8();
  *(v34 + 48) = sub_1B3C9CF08();
  return sub_1B3C9CF08();
}

id sub_1B38A041C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!a2)
  {
    v9 = 0;
    if (a4)
    {
      goto LABEL_3;
    }

LABEL_5:
    v10 = 0;
    goto LABEL_6;
  }

  v17 = a2;
  v18 = a3;
  v13 = MEMORY[0x1E69E9820];
  v14 = 1107296256;
  v15 = sub_1B38A1024;
  v16 = &block_descriptor_26;
  v9 = _Block_copy(&v13);

  if (!a4)
  {
    goto LABEL_5;
  }

LABEL_3:
  v17 = a4;
  v18 = a5;
  v13 = MEMORY[0x1E69E9820];
  v14 = 1107296256;
  v15 = sub_1B38A1074;
  v16 = &block_descriptor_23_2;
  v10 = _Block_copy(&v13);

LABEL_6:
  v11 = [swift_getObjCClassFromMetadata() configurationWithIdentifier:a1 previewProvider:v9 actionProvider:v10];
  sub_1B36F9DA0(a4);
  sub_1B36F9DA0(a2);
  swift_unknownObjectRelease();
  _Block_release(v10);
  _Block_release(v9);
  return v11;
}

id sub_1B38A0618(void *a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x1E69DCE28]) init];
  v3 = [objc_opt_self() clearColor];
  [v2 setBackgroundColor_];

  result = [a1 view];
  if (result)
  {
    v5 = result;
    sub_1B3710718(0, &qword_1EB8585A8);
    return sub_1B38A06E8(v5, v2);
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1B38A06E8(void *a1, void *a2)
{
  v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithView:a1 parameters:a2];

  return v4;
}

void sub_1B38A07B4(__int16 a1, uint64_t a2, id a3)
{
  v6 = [a3 photoLibrary];
  if (v6)
  {
    v7 = v6;
    v8 = swift_allocObject();
    *(v8 + 16) = a3;
    *(v8 + 24) = a2;
    *(v8 + 32) = a1;
    v16 = sub_1B3725454;
    v17 = v8;
    v12 = MEMORY[0x1E69E9820];
    v13 = 1107296256;
    v14 = sub_1B370C014;
    v15 = &block_descriptor_11;
    v9 = _Block_copy(&v12);
    v10 = a3;
    swift_unknownObjectRetain();

    v16 = sub_1B38A093C;
    v17 = 0;
    v12 = MEMORY[0x1E69E9820];
    v13 = 1107296256;
    v14 = sub_1B3814B94;
    v15 = &block_descriptor_14_3;
    v11 = _Block_copy(&v12);
    [v7 performChanges:v9 completionHandler:v11];
    _Block_release(v11);
    _Block_release(v9);
  }
}

void sub_1B38A093C(int a1, id a2)
{
  if (a2)
  {
    v3 = a2;
    v4 = sub_1B3C9CAC8();
    if (qword_1EB84FFB8 != -1)
    {
      swift_once();
    }

    v5 = qword_1EB878C60;
    if (os_log_type_enabled(qword_1EB878C60, v4))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v12 = v7;
      *v6 = 136446210;
      v8 = a2;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8518D0);
      v9 = sub_1B3C9C608();
      v11 = sub_1B3749364(v9, v10, &v12);

      *(v6 + 4) = v11;
      _os_log_impl(&dword_1B36F3000, v5, v4, "Error saving feedback: %{public}s", v6, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v7);
      MEMORY[0x1B8C6EC70](v7, -1, -1);
      MEMORY[0x1B8C6EC70](v6, -1, -1);
    }

    else
    {
    }
  }
}

void sub_1B38A0AD0()
{
  v1 = [*(v0 + OBJC_IVAR____TtC15PhotosUIPrivate37StoryMusicFeedbackContextMenuDelegate_storyViewModel) mainModel];
  v2 = [v1 currentAssetCollection];

  if (!v2)
  {
    __break(1u);
    goto LABEL_7;
  }

  objc_opt_self();
  v3 = swift_dynamicCastObjCClassUnconditional();
  Strong = swift_unknownObjectWeakLoadStrong();
  v5 = PXPresentationEnvironmentForSender();

  if (!v5)
  {
LABEL_7:
    __break(1u);
    return;
  }

  swift_unknownObjectRetain();
  v6 = swift_unknownObjectRetain();
  sub_1B3813628(v6, v5, v3);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease_n();

  swift_unknownObjectRelease();
}

id sub_1B38A0BE4(void *a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x1E69DD258]) init];
  result = [v2 view];
  if (!result)
  {
    __break(1u);
    goto LABEL_11;
  }

  v4 = result;
  v5 = [objc_opt_self() clearColor];
  [v4 setBackgroundColor_];

  result = [v2 view];
  if (!result)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v6 = result;
  [result bounds];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;

  v15 = [objc_allocWithZone(MEMORY[0x1E69DCAE0]) initWithFrame_];
  [v15 setAutoresizingMask_];
  result = [v2 view];
  if (!result)
  {
LABEL_12:
    __break(1u);
    return result;
  }

  v16 = result;
  [result addSubview_];

  v17 = 300.0;
  [v2 setPreferredContentSize_];
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v19 = Strong;
    v20 = [Strong traitCollection];

    [v20 displayScale];
    v22 = v21;

    v17 = v22 * 300.0;
  }

  v23 = [a1 artworkDisplayAsset];
  if (v23)
  {
    v24 = v23;
    v25 = [objc_opt_self() defaultManager];
    v26 = [v25 imageProviderForAsset_];

    v27 = swift_allocObject();
    *(v27 + 16) = v15;
    v30[4] = sub_1B38A1008;
    v30[5] = v27;
    v30[0] = MEMORY[0x1E69E9820];
    v30[1] = 1107296256;
    v30[2] = sub_1B389FA74;
    v30[3] = &block_descriptor_61;
    v28 = _Block_copy(v30);
    v29 = v15;

    [v26 requestImageForAsset:v24 targetSize:0 contentMode:0 options:v28 resultHandler:{v17, v17}];

    _Block_release(v28);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
  }

  else
  {
  }

  return v2;
}

id sub_1B38A0F50()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for StoryMusicFeedbackContextMenuDelegate();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_1B38A1024(uint64_t a1)
{
  v1 = *(a1 + 32);

  v3 = v1(v2);

  return v3;
}

id sub_1B38A1074(uint64_t a1)
{
  v1 = *(a1 + 32);
  sub_1B3710718(0, &unk_1EB8585B8);
  v2 = sub_1B3C9C788();

  v3 = v1(v2);

  return v3;
}

uint64_t objectdestroy_7Tm(uint64_t a1)
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v1, a1, 7);
}

uint64_t objectdestroy_31Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

id sub_1B38A1238(uint64_t a1)
{
  v1[OBJC_IVAR____TtC15PhotosUIPrivate40StoryExportActivityPreviewViewController_isExporting] = 0;
  *&v1[OBJC_IVAR____TtC15PhotosUIPrivate40StoryExportActivityPreviewViewController_storyView] = 0;
  v3 = OBJC_IVAR____TtC15PhotosUIPrivate40StoryExportActivityPreviewViewController_storyTraitCollection;
  *&v1[v3] = [objc_allocWithZone(MEMORY[0x1E69C3AC8]) initWithLayoutReferenceSize_];
  v4 = &v1[OBJC_IVAR____TtC15PhotosUIPrivate40StoryExportActivityPreviewViewController_applicationStateObservation];
  *v4 = 0;
  v4[1] = 0;
  v1[OBJC_IVAR____TtC15PhotosUIPrivate40StoryExportActivityPreviewViewController_didAppear] = 0;
  *&v1[OBJC_IVAR____TtC15PhotosUIPrivate40StoryExportActivityPreviewViewController_exportActivityItemProvider] = a1;
  v6.receiver = v1;
  v6.super_class = type metadata accessor for StoryExportActivityPreviewViewController();
  return objc_msgSendSuper2(&v6, sel_initWithNibName_bundle_, 0, 0);
}

void sub_1B38A12F8()
{
  *(v0 + OBJC_IVAR____TtC15PhotosUIPrivate40StoryExportActivityPreviewViewController_isExporting) = 0;
  *(v0 + OBJC_IVAR____TtC15PhotosUIPrivate40StoryExportActivityPreviewViewController_storyView) = 0;
  v1 = OBJC_IVAR____TtC15PhotosUIPrivate40StoryExportActivityPreviewViewController_storyTraitCollection;
  *(v0 + v1) = [objc_allocWithZone(MEMORY[0x1E69C3AC8]) initWithLayoutReferenceSize_];
  v2 = (v0 + OBJC_IVAR____TtC15PhotosUIPrivate40StoryExportActivityPreviewViewController_applicationStateObservation);
  *v2 = 0;
  v2[1] = 0;
  *(v0 + OBJC_IVAR____TtC15PhotosUIPrivate40StoryExportActivityPreviewViewController_didAppear) = 0;
  sub_1B3C9D4C8();
  __break(1u);
}

void sub_1B38A13C8()
{
  v1 = v0;
  v23.receiver = v0;
  v23.super_class = type metadata accessor for StoryExportActivityPreviewViewController();
  objc_msgSendSuper2(&v23, sel_viewDidLoad);
  v2 = [*(*&v0[OBJC_IVAR____TtC15PhotosUIPrivate40StoryExportActivityPreviewViewController_exportActivityItemProvider] + OBJC_IVAR____TtC15PhotosUIPrivate31StoryExportActivityItemProvider_storyConfiguration) copyWithAdditionalOptions_];
  [v2 setInitialViewMode_];
  sub_1B38A212C();
  v3 = *&v1[OBJC_IVAR____TtC15PhotosUIPrivate40StoryExportActivityPreviewViewController_storyTraitCollection];
  v4 = v2;
  v5 = v3;
  v6 = sub_1B3851144();
  v7 = [v1 view];
  if (v7)
  {
    v8 = v7;
    [v7 bounds];

    v9 = objc_allocWithZone(MEMORY[0x1E69C3B30]);
    v10 = OUTLINED_FUNCTION_17();
    v13 = [v11 v12];
    v14 = [v13 layer];
    [v14 setCornerRadius_];

    v15 = [v13 layer];
    [v15 setCornerCurve_];

    [v13 setClipsToBounds_];
    v16 = [v1 view];
    if (v16)
    {
      v17 = v16;
      [v16 addSubview_];

      v18 = [v13 viewModel];
      v22[4] = sub_1B38A1698;
      v22[5] = 0;
      v22[0] = MEMORY[0x1E69E9820];
      v22[1] = 1107296256;
      v22[2] = sub_1B386A148;
      v22[3] = &block_descriptor_29_0;
      v19 = _Block_copy(v22);
      [v18 performChanges_];
      _Block_release(v19);

      v20 = *&v1[OBJC_IVAR____TtC15PhotosUIPrivate40StoryExportActivityPreviewViewController_storyView];
      *&v1[OBJC_IVAR____TtC15PhotosUIPrivate40StoryExportActivityPreviewViewController_storyView] = v13;
      v21 = v13;

      sub_1B38A1C0C();
      sub_1B38A1730();

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

id sub_1B38A1698(void *a1)
{
  [a1 setIsHUDVisible_];

  return [a1 setWantsChromeVisible_];
}

uint64_t sub_1B38A1730()
{
  v1 = v0;
  v2 = [objc_opt_self() sharedState];
  swift_allocObject();
  swift_unknownObjectWeakInit();

  v3 = sub_1B3C9CA58();
  v5 = v4;

  v6 = (v1 + OBJC_IVAR____TtC15PhotosUIPrivate40StoryExportActivityPreviewViewController_applicationStateObservation);
  *v6 = v3;
  v6[1] = v5;

  return swift_unknownObjectRelease();
}

void sub_1B38A1808(uint64_t a1, char a2)
{
  if (a2)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v3 = Strong;
      sub_1B38A1B08();
    }
  }
}

void sub_1B38A18C4(char a1, SEL *a2, char a3)
{
  v7.receiver = v3;
  v7.super_class = type metadata accessor for StoryExportActivityPreviewViewController();
  objc_msgSendSuper2(&v7, *a2, a1 & 1);
  sub_1B38A199C(a3);
}

void sub_1B38A197C(char a1)
{
  if (*(v1 + OBJC_IVAR____TtC15PhotosUIPrivate40StoryExportActivityPreviewViewController_didAppear) != (a1 & 1))
  {
    sub_1B38A1B08();
  }
}

void sub_1B38A199C(char a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC15PhotosUIPrivate40StoryExportActivityPreviewViewController_didAppear);
  *(v1 + OBJC_IVAR____TtC15PhotosUIPrivate40StoryExportActivityPreviewViewController_didAppear) = a1;
  sub_1B38A197C(v2);
}

void sub_1B38A19B4()
{
  v6.receiver = v0;
  v6.super_class = type metadata accessor for StoryExportActivityPreviewViewController();
  objc_msgSendSuper2(&v6, sel_viewDidLayoutSubviews);
  [*(*&v0[OBJC_IVAR____TtC15PhotosUIPrivate40StoryExportActivityPreviewViewController_exportActivityItemProvider] + OBJC_IVAR____TtC15PhotosUIPrivate31StoryExportActivityItemProvider_aspectRatio) ratio];
  v2 = [v0 view];
  if (v2)
  {
    v3 = v2;
    [v2 bounds];
    OUTLINED_FUNCTION_3_1();

    v4 = *&v0[OBJC_IVAR____TtC15PhotosUIPrivate40StoryExportActivityPreviewViewController_storyView];
    if (v4)
    {
      UIEdgeInsetsInsetRect_0(v1);
      OUTLINED_FUNCTION_3_1();
      v5 = v4;
      OUTLINED_FUNCTION_17();
      PXRectWithAspectRatioFittingRect();
      [v5 setFrame_];

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_1B38A1B08()
{
  v1 = *(v0 + OBJC_IVAR____TtC15PhotosUIPrivate40StoryExportActivityPreviewViewController_storyView);
  if (v1)
  {
    if (*(v0 + OBJC_IVAR____TtC15PhotosUIPrivate40StoryExportActivityPreviewViewController_didAppear) == 1)
    {
      v2 = objc_opt_self();
      v7 = v1;
      v3 = [v2 sharedState];
      v4 = [v3 visibilityState];

      if (v4 == 1)
      {
        v5 = *(v0 + OBJC_IVAR____TtC15PhotosUIPrivate40StoryExportActivityPreviewViewController_isExporting) ^ 1;
      }

      else
      {
        v5 = 0;
      }

      v6 = v7;
    }

    else
    {
      v6 = v1;
      v5 = 0;
    }

    v8 = v6;
    [v6 setIsActive_];
  }
}

void sub_1B38A1C0C()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC15PhotosUIPrivate40StoryExportActivityPreviewViewController_exportActivityItemProvider;
  v3 = *(*&v0[OBJC_IVAR____TtC15PhotosUIPrivate40StoryExportActivityPreviewViewController_exportActivityItemProvider] + OBJC_IVAR____TtC15PhotosUIPrivate31StoryExportActivityItemProvider_aspectRatio);
  v4 = [v3 type];
  type metadata accessor for StoryExportHelper();
  sub_1B37DCA58(v3, 0, 1);
  v6 = v5;
  v8 = v7;
  objc_opt_self();
  v9 = swift_dynamicCastObjCClass();
  if (v9)
  {
    [v9 scale];
    v11 = v10;
  }

  else
  {
    v11 = 1.0;
  }

  v12 = v4 == 5;
  v13 = *(*&v0[v2] + OBJC_IVAR____TtC15PhotosUIPrivate31StoryExportActivityItemProvider_fullSizePlayerExtendedTraitCollectionSnapshot);
  v14 = *&v1[OBJC_IVAR____TtC15PhotosUIPrivate40StoryExportActivityPreviewViewController_storyTraitCollection];
  v15 = swift_allocObject();
  *(v15 + 16) = v12;
  *(v15 + 24) = v13;
  *(v15 + 32) = v6;
  *(v15 + 40) = v8;
  *(v15 + 48) = v11;
  v29 = sub_1B38A20DC;
  v30 = v15;
  v25 = MEMORY[0x1E69E9820];
  v26 = 1107296256;
  v27 = sub_1B372B6C8;
  v28 = &block_descriptor_62;
  v16 = _Block_copy(&v25);
  v17 = v13;

  [v14 performChanges_];
  _Block_release(v16);
  v18 = *&v1[OBJC_IVAR____TtC15PhotosUIPrivate40StoryExportActivityPreviewViewController_storyView];
  if (v18)
  {
    v19 = [v18 viewModel];
    v20 = [v19 mainModel];

    v21 = swift_allocObject();
    *(v21 + 16) = v12;
    v29 = sub_1B38A20F8;
    v30 = v21;
    v25 = MEMORY[0x1E69E9820];
    v26 = 1107296256;
    v27 = sub_1B386A148;
    v28 = &block_descriptor_23_3;
    v22 = _Block_copy(&v25);

    [v20 performChanges_];
    _Block_release(v22);

    v23 = [v1 view];
    if (v23)
    {
      v24 = v23;
      [v23 setNeedsLayout];

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

id sub_1B38A1EE8(id a1, char a2, id a3, double a4, double a5, double a6)
{
  if (a2)
  {
    [a3 layoutReferenceSize];
    [a1 setLayoutReferenceSize_];
    [a3 displayScale];
    [a1 setDisplayScale_];
    [a3 fullScreenReferenceRect];
  }

  else
  {
    [a1 setLayoutReferenceSize_];
    [a1 setDisplayScale_];
    v8 = *MEMORY[0x1E695F050];
    v9 = *(MEMORY[0x1E695F050] + 8);
    v10 = *(MEMORY[0x1E695F050] + 16);
    v11 = *(MEMORY[0x1E695F050] + 24);
  }

  return [a1 setOverrideFullScreenReferenceRect_];
}

id sub_1B38A2018()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for StoryExportActivityPreviewViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_1B38A212C()
{
  result = qword_1EB84F7E0;
  if (!qword_1EB84F7E0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EB84F7E0);
  }

  return result;
}

void *sub_1B38A2180()
{
  v1 = sub_1B3C98248();
  v43 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v39 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v42 = &v39 - v5;
  v6 = *v0;
  v7 = v0[1];
  v8 = v0[3];
  v49 = v0[2];
  v50 = v8;
  v9 = *(v0 + 1);
  v10 = *(v0 + 2);
  v47 = v0[24];
  v11 = *(v0 + 4);
  v48 = *(v0 + 5);
  v12 = v0[48];
  v51 = v0[49];
  v13 = *(v0 + 7);
  v14 = v0[64];
  v16 = *(v0 + 9);
  v15 = *(v0 + 10);
  v44 = v11;
  v45 = v16;
  v46 = v15;
  v17 = *(v0 + 12);
  v18 = objc_allocWithZone(MEMORY[0x1E69C3AA0]);
  swift_unknownObjectRetain();
  v19 = swift_unknownObjectRetain();
  v20 = sub_1B3813144(v19, v17, 0, 0, 0, 0, 0, 0, 0);
  v21 = v20;
  if (v6 == 1)
  {
    [v20 setIsAllowedToPlayAnyMusicOrSound_];
  }

  v22 = [v21 options];
  if ((v14 & 1) == 0)
  {
    CMTimeMakeWithSeconds(&v52, v13, *MEMORY[0x1E69C4180]);
    [v21 setFixedSegmentDuration_];
  }

  if (v9)
  {
    v23 = *(v9 + 16);
    if (v23)
    {
      v39 = v22;
      v40 = v7;
      v41 = v12;
      v52.value = MEMORY[0x1E69E7CC0];
      sub_1B37EACE0(0, v23, 0);
      value = v52.value;
      v25 = (v9 + 32);
      v26 = *(v52.value + 16);
      do
      {
        v28 = *v25++;
        v27 = v28;
        v52.value = value;
        v29 = *(value + 24);
        if (v26 >= v29 >> 1)
        {
          sub_1B37EACE0((v29 > 1), v26 + 1, 1);
          value = v52.value;
        }

        *(value + 16) = v26 + 1;
        *(value + 8 * v26++ + 32) = v27;
        --v23;
      }

      while (v23);
      sub_1B38A2C20();
      sub_1B3C9D268();
      v30 = *(value + 16);
      if (v30)
      {
        v31 = (value + 32);
        do
        {
          v32 = *v31++;
          v53 = v32;
          sub_1B3C9D218();
          --v30;
        }

        while (v30);
      }

      v33 = v42;
      v34 = v43;
      (*(v43 + 32))(v42, v3, v1);
      v35 = sub_1B3C981E8();
      (*(v34 + 8))(v33, v1);
      [v21 setAllowedTransitionKinds_];

      v12 = v41;
      v22 = v39;
      v7 = v40;
    }
  }

  if (v45)
  {
    [v21 setDesiredStartAsset_];
  }

  if (v46)
  {
    [v21 setMediaProvider_];
  }

  if ((v47 & 1) == 0)
  {
    [v21 setNoncriticalBufferingTimeout_];
  }

  if (v48)
  {
    sub_1B38A2BC8(v44, v48, v21);
  }

  v36 = v22 | 0x400;
  if (v49)
  {
    v36 = v22;
  }

  if (v50)
  {
    v37 = v36 | 0x100;
  }

  else
  {
    v37 = v36;
  }

  [v21 setNUpCompositionIgnoresOverallTargetDuration_];
  [v21 setAllowedInlineTitles_];
  [v21 setDisableVideoPlayback_];
  [v21 setOptions_];
  return v21;
}

void StoryConfiguration.init(assetCollection:)(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_0_47(a1, COERCE_FLOAT(65792));
  *(v2 + 88) = v1;
  *(v2 + 96) = 0;
}

void StoryConfiguration.init(assets:)(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_0_47(a1, COERCE_FLOAT(65792));
  *(v2 + 88) = 0;
  *(v2 + 96) = v1;
}

uint64_t StoryConfiguration.MusicPlayback.hashValue.getter()
{
  v1 = *v0;
  sub_1B3C9D7C8();
  MEMORY[0x1B8C6AD50](v1);
  return sub_1B3C9D7F8();
}

uint64_t StoryConfiguration.allowedTransitionKinds.setter(uint64_t a1)
{

  *(v1 + 8) = a1;
  return result;
}

uint64_t StoryConfiguration.noncriticalBufferingTimeout.setter(uint64_t result, char a2)
{
  *(v2 + 16) = result;
  *(v2 + 24) = a2 & 1;
  return result;
}

uint64_t StoryConfiguration.launchTypeAnalyticsIdentifier.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t StoryConfiguration.launchTypeAnalyticsIdentifier.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

uint64_t StoryConfiguration.fixedSegmentDuration.setter(uint64_t result, char a2)
{
  *(v2 + 56) = result;
  *(v2 + 64) = a2 & 1;
  return result;
}

uint64_t StoryConfiguration.desiredStartAsset.setter(uint64_t a1)
{
  result = swift_unknownObjectRelease();
  *(v1 + 72) = a1;
  return result;
}

void *StoryConfiguration.mediaProvider.getter()
{
  v1 = *(v0 + 80);
  v2 = v1;
  return v1;
}

unint64_t sub_1B38A29C8()
{
  result = qword_1EB858600;
  if (!qword_1EB858600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB858600);
  }

  return result;
}

uint64_t sub_1B38A2A1C(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 104))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1B38A2A70(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 104) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 104) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for StoryConfiguration.MusicPlayback(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

void sub_1B38A2BC8(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_1B3C9C5A8();
  [a3 setLaunchType_];
}

unint64_t sub_1B38A2C20()
{
  result = qword_1EB858608;
  if (!qword_1EB858608)
  {
    sub_1B3C98248();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB858608);
  }

  return result;
}

unint64_t sub_1B38A2C7C()
{
  result = qword_1EB858610;
  if (!qword_1EB858610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB858610);
  }

  return result;
}

unint64_t sub_1B38A2CD4()
{
  result = qword_1EB858618;
  if (!qword_1EB858618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB858618);
  }

  return result;
}

unint64_t sub_1B38A2D78()
{
  result = qword_1EB858620;
  if (!qword_1EB858620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB858620);
  }

  return result;
}

uint64_t sub_1B38A2DCC()
{
  OUTLINED_FUNCTION_0_0();
  v0[5] = v1;
  v0[6] = v2;
  v0[4] = v3;
  sub_1B3C9C888();
  v0[7] = sub_1B3C9C878();
  v5 = sub_1B3C9C848();
  v0[8] = v5;
  v0[9] = v4;

  return MEMORY[0x1EEE6DFA0](sub_1B38A2E64, v5, v4);
}

uint64_t sub_1B38A2E64()
{
  v2 = v0[5];
  v1 = v0[6];
  v0[2] = v2;
  v0[3] = v1;
  v3 = swift_task_alloc();
  v0[10] = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  v4 = swift_task_alloc();
  v0[11] = v4;
  sub_1B38A2D78();
  *v4 = v0;
  v4[1] = sub_1B38A2F70;
  v5 = v0[4];

  return MEMORY[0x1EEE2CA70](v5, 0, 0, 0, 0, 0, 1, &unk_1B3D0AEB0);
}

uint64_t sub_1B38A2F70()
{
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_10();
  v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_3();
  *v5 = v4;
  v3[12] = v0;

  if (v0)
  {
    v6 = v3[8];
    v7 = v3[9];
    v8 = sub_1B37B2A2C;
  }

  else
  {

    v6 = v3[8];
    v7 = v3[9];
    v8 = sub_1B374E274;
  }

  return MEMORY[0x1EEE6DFA0](v8, v6, v7);
}

uint64_t sub_1B38A307C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  sub_1B3C9C888();
  v3[5] = sub_1B3C9C878();
  v5 = sub_1B3C9C848();
  v3[6] = v5;
  v3[7] = v4;

  return MEMORY[0x1EEE6DFA0](sub_1B38A3118, v5, v4);
}

uint64_t sub_1B38A3118()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8545D0);
  sub_1B3C98638();
  v1 = swift_allocObject();
  *(v0 + 64) = v1;
  *(v1 + 16) = xmmword_1B3CF6CE0;
  sub_1B3C97B28();
  sub_1B3C97B28();
  v2 = swift_task_alloc();
  *(v0 + 72) = v2;
  *v2 = v0;
  v2[1] = sub_1B38A3260;

  return sub_1B37B2DC4();
}

uint64_t sub_1B38A3260()
{
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_10();
  v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_3();
  *v5 = v4;
  v3[10] = v0;

  if (v0)
  {
    v6 = v3[6];
    v7 = v3[7];
    v8 = sub_1B375A2D0;
  }

  else
  {

    v6 = v3[6];
    v7 = v3[7];
    v8 = sub_1B38A336C;
  }

  return MEMORY[0x1EEE6DFA0](v8, v6, v7);
}

uint64_t sub_1B38A336C()
{
  OUTLINED_FUNCTION_0_0();

  sub_1B3C97B18();
  OUTLINED_FUNCTION_1();

  return v0();
}

uint64_t sub_1B38A33D4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB851468);
  v1 = OUTLINED_FUNCTION_8_0(v0);
  MEMORY[0x1EEE9AC00](v1);
  v47 = &v43 - v2;
  v3 = sub_1B3C97CC8();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8513F0);
  v8 = OUTLINED_FUNCTION_8_0(v7);
  MEMORY[0x1EEE9AC00](v8);
  MEMORY[0x1EEE9AC00](v9);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8513A8);
  v11 = OUTLINED_FUNCTION_8_0(v10);
  MEMORY[0x1EEE9AC00](v11);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8513F8);
  v13 = OUTLINED_FUNCTION_8_0(v12);
  MEMORY[0x1EEE9AC00](v13);
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB852758);
  v45 = sub_1B3C97F48();
  OUTLINED_FUNCTION_5_2();
  __swift_storeEnumTagSinglePayload(v14, v15, v16, v17);
  sub_1B3C98638();
  OUTLINED_FUNCTION_5_2();
  __swift_storeEnumTagSinglePayload(v18, v19, v20, v21);
  v22 = sub_1B3C97AE8();
  OUTLINED_FUNCTION_5_2();
  __swift_storeEnumTagSinglePayload(v23, v24, v25, v22);
  OUTLINED_FUNCTION_5_2();
  __swift_storeEnumTagSinglePayload(v26, v27, v28, v22);
  v29 = *MEMORY[0x1E695A500];
  v30 = *(v4 + 104);
  v43 = v4 + 104;
  v44 = v30;
  v30(v6, v29, v3);
  sub_1B374FC40();
  v31 = sub_1B3C97B68();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB851470);
  OUTLINED_FUNCTION_5_2();
  __swift_storeEnumTagSinglePayload(v32, v33, v34, v45);
  v48 = 2;
  sub_1B3C9C828();
  OUTLINED_FUNCTION_5_2();
  __swift_storeEnumTagSinglePayload(v35, v36, v37, v38);
  OUTLINED_FUNCTION_5_2();
  __swift_storeEnumTagSinglePayload(v39, v40, v41, v22);
  v44(v6, v29, v3);
  sub_1B3C97B88();
  return v31;
}

uint64_t sub_1B38A373C(uint64_t a1)
{
  v2 = sub_1B38A39B4();

  return MEMORY[0x1EEDB39C8](a1, v2);
}

uint64_t sub_1B38A3788()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1B3714CE0;

  return sub_1B38A2DCC();
}

uint64_t sub_1B38A3834@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1B38A33D4();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1B38A385C(uint64_t a1)
{
  v2 = sub_1B38A2D78();

  return MEMORY[0x1EEDB2D90](a1, v2);
}

unint64_t sub_1B38A389C()
{
  result = qword_1EB858628;
  if (!qword_1EB858628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB858628);
  }

  return result;
}

uint64_t sub_1B38A3908(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1B3714CE0;

  return sub_1B38A307C(a1, v5, v4);
}

unint64_t sub_1B38A39B4()
{
  result = qword_1EB858630;
  if (!qword_1EB858630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB858630);
  }

  return result;
}

unint64_t sub_1B38A3A0C()
{
  result = qword_1EB858638;
  if (!qword_1EB858638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB858638);
  }

  return result;
}

unint64_t sub_1B38A3A64()
{
  result = qword_1EB858640;
  if (!qword_1EB858640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB858640);
  }

  return result;
}

unint64_t sub_1B38A3ABC()
{
  result = qword_1EB8513C0;
  if (!qword_1EB8513C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8513C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8513C0);
  }

  return result;
}

unint64_t sub_1B38A3B70()
{
  result = qword_1EB858648;
  if (!qword_1EB858648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB858648);
  }

  return result;
}

uint64_t sub_1B38A3BC4()
{
  OUTLINED_FUNCTION_0_0();
  v0[5] = v1;
  v0[6] = v2;
  v0[4] = v3;
  sub_1B3C9C888();
  v0[7] = sub_1B3C9C878();
  v5 = sub_1B3C9C848();
  v0[8] = v5;
  v0[9] = v4;

  return MEMORY[0x1EEE6DFA0](sub_1B38A3C5C, v5, v4);
}

uint64_t sub_1B38A3C5C()
{
  OUTLINED_FUNCTION_9();
  v2 = v0[5];
  v1 = v0[6];
  v0[2] = v2;
  v0[3] = v1;
  v3 = swift_task_alloc();
  v0[10] = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  v4 = swift_task_alloc();
  v0[11] = v4;
  sub_1B38A3B70();
  *v4 = v0;
  v4[1] = sub_1B38A3D64;
  v5 = v0[4];

  return MEMORY[0x1EEE2CA70](v5, 0, 0, 0, 0, 0, 1, &unk_1B3D0B050);
}

uint64_t sub_1B38A3D64()
{
  OUTLINED_FUNCTION_0_0();
  v2 = *v1;
  OUTLINED_FUNCTION_3();
  *v3 = v2;
  v2[12] = v0;

  if (v0)
  {
    v4 = v2[8];
    v5 = v2[9];
    v6 = sub_1B37B2A2C;
  }

  else
  {

    v4 = v2[8];
    v5 = v2[9];
    v6 = sub_1B374E274;
  }

  return MEMORY[0x1EEE6DFA0](v6, v4, v5);
}

uint64_t sub_1B38A3E74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = a2;
  v3[5] = a3;
  v3[3] = a1;
  v4 = sub_1B3C9C598();
  v3[6] = v4;
  v3[7] = *(v4 - 8);
  v3[8] = swift_task_alloc();
  sub_1B3C97F48();
  v3[9] = swift_task_alloc();
  v5 = sub_1B3C97AE8();
  v3[10] = v5;
  v3[11] = *(v5 - 8);
  v3[12] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8513A8);
  v3[13] = swift_task_alloc();
  sub_1B3C9C888();
  v3[14] = sub_1B3C9C878();
  v7 = sub_1B3C9C848();
  v3[15] = v7;
  v3[16] = v6;

  return MEMORY[0x1EEE6DFA0](sub_1B38A402C, v7, v6);
}

uint64_t sub_1B38A402C()
{
  OUTLINED_FUNCTION_9();
  v1 = *(v0 + 104);
  sub_1B3C97B28();
  v2 = sub_1B3C98638();
  __swift_storeEnumTagSinglePayload(v1, 0, 1, v2);
  sub_1B3C97B28();
  v3 = swift_task_alloc();
  *(v0 + 136) = v3;
  *v3 = v0;
  v3[1] = sub_1B38A4104;

  return sub_1B37B46E8();
}

uint64_t sub_1B38A4104()
{
  OUTLINED_FUNCTION_9();
  v2 = *v1;
  v3 = *(*v1 + 104);
  *(*v1 + 144) = v0;

  sub_1B3713154(v3);
  v4 = *(v2 + 128);
  v5 = *(v2 + 120);
  if (v0)
  {
    v6 = sub_1B38A4380;
  }

  else
  {
    v6 = sub_1B38A4258;
  }

  return MEMORY[0x1EEE6DFA0](v6, v5, v4);
}

uint64_t sub_1B38A4258()
{
  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[10];
  v5 = v0[7];
  v4 = v0[8];
  v6 = v0[6];

  sub_1B3C9C538();
  sub_1B37BF998(v4);
  (*(v5 + 8))(v4, v6);
  sub_1B3C97AF8();
  sub_1B3C97B08();
  (*(v2 + 8))(v1, v3);

  OUTLINED_FUNCTION_1();

  return v7();
}

uint64_t sub_1B38A4380()
{
  OUTLINED_FUNCTION_9();

  OUTLINED_FUNCTION_1();

  return v0();
}

uint64_t sub_1B38A440C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8513E8);
  OUTLINED_FUNCTION_0();
  v41 = v1;
  v42 = v0;
  MEMORY[0x1EEE9AC00](v0);
  v40 = v38 - v2;
  v3 = sub_1B3C97CC8();
  OUTLINED_FUNCTION_0();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  v8 = v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8513F0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8513A8);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8513F8);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v38[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB852758);
  v39 = sub_1B3C97F48();
  OUTLINED_FUNCTION_5_2();
  __swift_storeEnumTagSinglePayload(v13, v14, v15, v16);
  sub_1B3C98638();
  OUTLINED_FUNCTION_5_2();
  __swift_storeEnumTagSinglePayload(v17, v18, v19, v20);
  v21 = sub_1B3C97AE8();
  OUTLINED_FUNCTION_5_2();
  __swift_storeEnumTagSinglePayload(v22, v23, v24, v21);
  OUTLINED_FUNCTION_5_2();
  __swift_storeEnumTagSinglePayload(v25, v26, v27, v21);
  v28 = *MEMORY[0x1E695A500];
  v29 = *(v5 + 104);
  v29(v8, v28, v3);
  sub_1B374FC40();
  v30 = sub_1B3C97B68();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB851400);
  OUTLINED_FUNCTION_5_2();
  __swift_storeEnumTagSinglePayload(v31, v32, v33, v39);
  v43 = 0;
  v44 = 1;
  OUTLINED_FUNCTION_5_2();
  __swift_storeEnumTagSinglePayload(v34, v35, v36, v21);
  (*(v41 + 104))(v40, *MEMORY[0x1E695A178], v42);
  v29(v8, v28, v3);
  sub_1B3C97BA8();
  return v30;
}

uint64_t sub_1B38A47B4(uint64_t a1)
{
  v2 = sub_1B38A4A24();

  return MEMORY[0x1EEDB39C8](a1, v2);
}

uint64_t sub_1B38A4800()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1B374F8B4;

  return sub_1B38A3BC4();
}

uint64_t sub_1B38A48AC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1B38A440C();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1B38A48D4(uint64_t a1)
{
  v2 = sub_1B38A3B70();

  return MEMORY[0x1EEDB2D90](a1, v2);
}

unint64_t sub_1B38A4914()
{
  result = qword_1EB858650;
  if (!qword_1EB858650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB858650);
  }

  return result;
}

uint64_t sub_1B38A497C()
{
  OUTLINED_FUNCTION_9();
  v3 = v2;
  v5 = *(v0 + 16);
  v4 = *(v0 + 24);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_1B374F8B4;

  return sub_1B38A3E74(v3, v5, v4);
}

unint64_t sub_1B38A4A24()
{
  result = qword_1EB858658;
  if (!qword_1EB858658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB858658);
  }

  return result;
}

unint64_t sub_1B38A4A7C()
{
  result = qword_1EB858660;
  if (!qword_1EB858660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB858660);
  }

  return result;
}

unint64_t sub_1B38A4AD4()
{
  result = qword_1EB858668;
  if (!qword_1EB858668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB858668);
  }

  return result;
}

unint64_t sub_1B38A4B54()
{
  result = qword_1EB858670;
  if (!qword_1EB858670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB858670);
  }

  return result;
}

uint64_t sub_1B38A4BC0()
{
  OUTLINED_FUNCTION_7_30();
  sub_1B38A4F30();
  return sub_1B3C9D7F8();
}

uint64_t sub_1B38A4C0C(unsigned __int8 a1)
{
  OUTLINED_FUNCTION_7_30();
  MEMORY[0x1B8C6AD50](a1);
  return sub_1B3C9D7F8();
}

uint64_t sub_1B38A4C70(uint64_t a1, void (*a2)(uint64_t))
{
  OUTLINED_FUNCTION_7_30();
  a2(a1);
  OUTLINED_FUNCTION_6_30();

  return sub_1B3C9D7F8();
}