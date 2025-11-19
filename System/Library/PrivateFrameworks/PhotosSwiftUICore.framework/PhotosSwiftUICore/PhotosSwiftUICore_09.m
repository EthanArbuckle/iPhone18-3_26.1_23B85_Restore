uint64_t sub_1C10822BC(uint64_t a1)
{
  v2 = sub_1C1265E50();
  v47 = *(v2 - 8);
  v48 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v46 = &v38 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1C1265E30();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v45 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1C1261E50();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v40 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE92778);
  v42 = *(v8 - 8);
  v43 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v41 = &v38 - v9;
  v10 = sub_1C1263EB0();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v39 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE902E8);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v38 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE902F0);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v44 = &v38 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v38 - v19;
  v22 = MEMORY[0x1EEE9AC00](v21);
  v24 = &v38 - v23;
  v25 = (*(*(a1 + 32) + 48))(*(a1 + 16), v22);
  v26 = 0;
  if ((v27 & 1) == 0)
  {
    v38 = v25;
    sub_1C107DA0C(a1, v24);
    (*(v11 + 104))(v20, *MEMORY[0x1E697FF38], v10);
    __swift_storeEnumTagSinglePayload(v20, 0, 1, v10);
    v28 = *(v13 + 48);
    sub_1C0FDB800(v24, v15, &qword_1EBE902F0);
    sub_1C0FDB800(v20, &v15[v28], &qword_1EBE902F0);
    if (__swift_getEnumTagSinglePayload(v15, 1, v10) == 1)
    {
      sub_1C0FD1A5C(v20, &qword_1EBE902F0);
      sub_1C0FD1A5C(v24, &qword_1EBE902F0);
      if (__swift_getEnumTagSinglePayload(&v15[v28], 1, v10) == 1)
      {
        sub_1C0FD1A5C(v15, &qword_1EBE902F0);
LABEL_10:
        v49 = v38;
        sub_1C1261E30();
        sub_1C100DC5C();
        v35 = v41;
        sub_1C1261B60();
        sub_1C0FDB6D4(&qword_1EBE92780, &qword_1EBE92778);
        v36 = v43;
        sub_1C12667E0();
        (*(v42 + 8))(v35, v36);
        return v50;
      }
    }

    else
    {
      v29 = v44;
      sub_1C0FDB800(v15, v44, &qword_1EBE902F0);
      if (__swift_getEnumTagSinglePayload(&v15[v28], 1, v10) != 1)
      {
        v31 = &v15[v28];
        v32 = v39;
        (*(v11 + 32))(v39, v31, v10);
        sub_1C108B8C0(&qword_1EDE7BAB0, MEMORY[0x1E697FF50]);
        v33 = sub_1C1265DE0();
        v34 = *(v11 + 8);
        v34(v32, v10);
        sub_1C0FD1A5C(v20, &qword_1EBE902F0);
        sub_1C0FD1A5C(v24, &qword_1EBE902F0);
        v34(v29, v10);
        sub_1C0FD1A5C(v15, &qword_1EBE902F0);
        if (v33)
        {
          goto LABEL_10;
        }

        goto LABEL_8;
      }

      sub_1C0FD1A5C(v20, &qword_1EBE902F0);
      sub_1C0FD1A5C(v24, &qword_1EBE902F0);
      (*(v11 + 8))(v29, v10);
    }

    sub_1C0FD1A5C(v15, &qword_1EBE902E8);
LABEL_8:
    sub_1C1265E20();
    sub_1C1265E10();
    v50 = v38;
    sub_1C1265E00();
    sub_1C1265E10();
    v30 = v46;
    sub_1C1265E40();
    v26 = static String.photosSwiftUICoreLocalized(_:)(v30);
    (*(v47 + 8))(v30, v48);
  }

  return v26;
}

uint64_t sub_1C10829E4(uint64_t a1)
{
  v2 = sub_1C1261CB0();
  v64 = *(v2 - 8);
  v65 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v62 = &v48 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = sub_1C1261CD0();
  v61 = *(v63 - 8);
  MEMORY[0x1EEE9AC00](v63);
  v60 = &v48 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1C1261D30();
  v58 = *(v5 - 8);
  v59 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v56 = &v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1C1261D10();
  v52 = *(v7 - 8);
  v53 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v51 = &v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = sub_1C1261D40();
  v55 = *(v57 - 8);
  MEMORY[0x1EEE9AC00](v57);
  v49 = &v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v50 = &v48 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v54 = &v48 - v13;
  v14 = sub_1C1261E80();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v48 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1C1261E90();
  v66 = *(v18 - 8);
  v67 = v18;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v48 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE91E68);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v23 = &v48 - v22;
  v24 = sub_1C1261DE0();
  v25 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v27 = &v48 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x1EEE9AC00](v28);
  v31 = &v48 - v30;
  (*(*(a1 + 32) + 64))(*(a1 + 16), v29);
  if (__swift_getEnumTagSinglePayload(v23, 1, v24) == 1)
  {
    sub_1C0FD1A5C(v23, &qword_1EBE91E68);
    return 0;
  }

  else
  {
    (*(v25 + 32))(v31, v23, v24);
    sub_1C1261E70();
    sub_1C1261DA0();
    (*(v15 + 104))(v17, *MEMORY[0x1E6969A68], v14);
    v33 = sub_1C1261E60();
    (*(v15 + 8))(v17, v14);
    v36 = *(v25 + 8);
    v35 = v25 + 8;
    v34 = v36;
    v36(v27, v24);
    v37 = (*(v66 + 8))(v20, v67);
    if (v33)
    {
      v38 = v60;
      sub_1C1261CC0();
      v39 = v62;
      sub_1C1261CA0();
      v32 = sub_1C1261DB0();
      (*(v64 + 8))(v39, v65);
      (*(v61 + 8))(v38, v63);
      v34(v31, v24);
    }

    else
    {
      v40 = v49;
      MEMORY[0x1C68EB220](v37);
      v41 = v51;
      sub_1C1261D00();
      v42 = v50;
      sub_1C1261CE0();
      (*(v52 + 8))(v41, v53);
      v68 = v35;
      v43 = *(v55 + 8);
      v44 = v57;
      v43(v40, v57);
      v45 = v56;
      sub_1C1261D20();
      v46 = v54;
      sub_1C1261CF0();
      (*(v58 + 8))(v45, v59);
      v43(v42, v44);
      sub_1C108B8C0(&qword_1EBE92788, MEMORY[0x1E6969328]);
      sub_1C1261DC0();
      v43(v46, v44);
      v34(v31, v24);
      return v69;
    }
  }

  return v32;
}

uint64_t sub_1C108317C(uint64_t a1)
{
  if (*(v1 + *(a1 + 60)))
  {
    return 0;
  }

  else
  {
    return (*(*(a1 + 32) + 104))(*(a1 + 16));
  }
}

uint64_t sub_1C10831C4(uint64_t a1)
{
  if (*(v1 + *(a1 + 60)))
  {
    return sub_1C10829E4(a1);
  }

  else
  {
    return (*(*(a1 + 32) + 96))(*(a1 + 16));
  }
}

uint64_t sub_1C10831F0(uint64_t a1)
{
  if ((*(v1 + *(a1 + 60)) & 1) != 0 || !*(v1 + *(a1 + 52)))
  {
    return sub_1C10822BC(a1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1C108322C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v46 = a1;
  v52 = a6;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE92630);
  MEMORY[0x1EEE9AC00](v10);
  v44 = (&v44 - v11);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE924C8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE924D0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE924D8);
  v47 = a2;
  v48 = a3;
  v55 = a2;
  v56 = a3;
  v49 = a4;
  v50 = a5;
  v57 = a4;
  v58 = a5;
  v12 = type metadata accessor for PhotosCollectionSearchResultCell();
  v13 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE924E0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE924E8);
  WitnessTable = swift_getWitnessTable();
  v16 = sub_1C1089684();
  v17 = sub_1C1089FD0();
  v55 = v12;
  v56 = MEMORY[0x1E6981CD8];
  v57 = v13;
  v58 = v14;
  v59 = WitnessTable;
  v60 = MEMORY[0x1E6981CD0];
  v61 = v16;
  v62 = v17;
  swift_getOpaqueTypeMetadata2();
  swift_getTupleTypeMetadata2();
  sub_1C1265B00();
  swift_getWitnessTable();
  sub_1C12655A0();
  swift_getTupleTypeMetadata3();
  sub_1C1265B00();
  swift_getWitnessTable();
  v18 = sub_1C12655C0();
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v44 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v44 - v23;
  v51 = v10;
  v25 = sub_1C1263C30();
  v45 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v44 - v26;
  v28 = swift_checkMetadataState();
  v29 = v46;
  if (*(v46 + *(v28 + 52)) == 2)
  {
    v30 = sub_1C12659B0();
    MEMORY[0x1EEE9AC00](v30);
    v31 = v48;
    *(&v44 - 6) = v47;
    *(&v44 - 5) = v31;
    v32 = v50;
    *(&v44 - 4) = v49;
    *(&v44 - 3) = v32;
    *(&v44 - 2) = v29;
    sub_1C12655B0();
    v33 = swift_getWitnessTable();
    sub_1C0FDBA4C(v21, v18, v33);
    v34 = *(v19 + 8);
    v34(v21, v18);
    sub_1C0FDBA4C(v24, v18, v33);
    sub_1C108B224();
    sub_1C1112D68();
    v34(v21, v18);
    v34(v24, v18);
  }

  else
  {
    v35 = sub_1C1263AB0();
    v36 = v44;
    *v44 = v35;
    *(v36 + 8) = 0;
    *(v36 + 16) = 0;
    v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE926F8);
    sub_1C108628C(v47, v48, v49, v50, v36 + *(v37 + 44));
    KeyPath = swift_getKeyPath();
    v39 = v36 + *(v51 + 36);
    *v39 = KeyPath;
    *(v39 + 8) = 1;
    *(v39 + 16) = 0;
    swift_getWitnessTable();
    sub_1C108B224();
    sub_1C1112E18();
    sub_1C0FD1A5C(v36, &qword_1EBE92630);
  }

  v40 = swift_getWitnessTable();
  v41 = sub_1C108B224();
  v53 = v40;
  v54 = v41;
  v42 = swift_getWitnessTable();
  sub_1C0FDBA4C(v27, v25, v42);
  return (*(v45 + 8))(v27, v25);
}

uint64_t sub_1C1083800@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v49 = a5;
  v51 = a4;
  v50 = a3;
  v52 = a6;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE924D8);
  v8 = type metadata accessor for PhotosCollectionSearchResultCell();
  v9 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE924E0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE924E8);
  WitnessTable = swift_getWitnessTable();
  v12 = sub_1C1089684();
  v13 = sub_1C1089FD0();
  v63 = v8;
  v64 = MEMORY[0x1E6981CD8];
  v65 = v9;
  v66 = v10;
  v67 = WitnessTable;
  v68 = MEMORY[0x1E6981CD0];
  v69 = v12;
  v70 = v13;
  swift_getOpaqueTypeMetadata2();
  swift_getTupleTypeMetadata2();
  v46 = sub_1C1265B00();
  v45 = swift_getWitnessTable();
  v14 = sub_1C12655A0();
  v47 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v40 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v42 = &v40 - v18;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE924D0);
  MEMORY[0x1EEE9AC00](v48);
  v44 = &v40 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v40 - v21;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE924C8);
  MEMORY[0x1EEE9AC00](v43);
  v53 = &v40 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v40 - v25;
  *v26 = sub_1C1263AB0();
  *(v26 + 1) = 0;
  v26[16] = 0;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE92700);
  v28 = v50;
  v29 = v51;
  v30 = v49;
  sub_1C1083DEC(a2, v50, v51, v49, &v26[*(v27 + 44)]);
  *v22 = sub_1C1263AB0();
  *(v22 + 1) = 0;
  v22[16] = 0;
  v31 = &v22[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE92708) + 44)];
  v41 = v22;
  sub_1C1084F98(a2, v28, v29, v30, v31);
  sub_1C1263AB0();
  v54 = a2;
  v55 = v28;
  v56 = v29;
  v57 = v30;
  v58 = a1;
  sub_1C1265590();
  v32 = swift_getWitnessTable();
  v33 = v42;
  sub_1C0FDBA4C(v16, v14, v32);
  v34 = v47;
  v35 = *(v47 + 8);
  v35(v16, v14);
  v36 = v53;
  sub_1C0FDB800(v26, v53, &qword_1EBE924C8);
  v63 = v36;
  v37 = v22;
  v38 = v44;
  sub_1C0FDB800(v37, v44, &qword_1EBE924D0);
  v64 = v38;
  (*(v34 + 16))(v16, v33, v14);
  v65 = v16;
  v62[0] = v43;
  v62[1] = v48;
  v62[2] = v14;
  v59 = sub_1C108B350();
  v60 = sub_1C108B408();
  v61 = v32;
  sub_1C119EE80(&v63, 3, v62);
  v35(v33, v14);
  sub_1C0FD1A5C(v41, &qword_1EBE924D0);
  sub_1C0FD1A5C(v26, &qword_1EBE924C8);
  v35(v16, v14);
  sub_1C0FD1A5C(v38, &qword_1EBE924D0);
  return sub_1C0FD1A5C(v53, &qword_1EBE924C8);
}

uint64_t sub_1C1083DEC@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, char *a5@<X8>)
{
  v33 = a2;
  v34 = a3;
  v36 = a5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE92500);
  v8 = v7 - 8;
  MEMORY[0x1EEE9AC00](v7);
  v35 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v31 - v11;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE92740);
  MEMORY[0x1EEE9AC00](v32);
  v14 = &v31 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE927A0);
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v31 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v31 - v20;
  v37 = a1;
  v38 = v33;
  v39 = v34;
  v40 = a4;
  v22 = type metadata accessor for PhotosCollectionSearchResultCell();
  sub_1C108412C(1, v22, v14);
  sub_1C108B5D0();
  sub_1C1265090();
  sub_1C0FD1A5C(v14, &qword_1EBE92740);
  sub_1C108476C(v22, v12);
  KeyPath = swift_getKeyPath();
  v24 = &v12[*(v8 + 44)];
  *v24 = KeyPath;
  *(v24 + 1) = 1;
  v24[16] = 0;
  v25 = *(v16 + 16);
  v25(v18, v21, v15);
  v26 = v35;
  sub_1C0FDB800(v12, v35, &qword_1EBE92500);
  v27 = v36;
  v25(v36, v18, v15);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE927A8);
  sub_1C0FDB800(v26, &v27[*(v28 + 48)], &qword_1EBE92500);
  sub_1C0FD1A5C(v12, &qword_1EBE92500);
  v29 = *(v16 + 8);
  v29(v21, v15);
  sub_1C0FD1A5C(v26, &qword_1EBE92500);
  return (v29)(v18, v15);
}

uint64_t sub_1C108412C@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  LODWORD(v67) = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE92FE0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v54 - v7;
  v9 = sub_1C1264830();
  v64 = *(v9 - 8);
  v65 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v61 = &v54 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1C1264680();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v54 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE92758);
  MEMORY[0x1EEE9AC00](v66);
  v16 = &v54 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE92790);
  v60 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v59 = &v54 - v18;
  v62 = a2;
  v63 = v3;
  v19 = sub_1C1081FC0(a2);
  if (v20 || (v67 & 1) != 0)
  {
    v55 = v17;
    v56 = v6;
    v57 = a3;
    v22 = 0xE000000000000000;
    if (v20)
    {
      v22 = v20;
      v23 = v19;
    }

    else
    {
      v23 = 0;
    }

    v68 = v23;
    v69 = v22;
    sub_1C0FDB9AC();
    v24 = sub_1C12648F0();
    v67 = v8;
    v25 = v24;
    v27 = v26;
    v29 = v28;
    sub_1C1264530();
    (*(v12 + 104))(v14, *MEMORY[0x1E6980EA8], v11);
    sub_1C12646C0();

    (*(v12 + 8))(v14, v11);
    sub_1C1264620();
    sub_1C1264670();

    v30 = sub_1C1264870();
    v32 = v31;
    v34 = v33;

    sub_1C0FDB8E8(v25, v27, v29 & 1);

    LODWORD(v68) = sub_1C1263E40();
    v35 = sub_1C1264850();
    v37 = v36;
    v39 = v38;
    v58 = v40;
    sub_1C0FDB8E8(v30, v32, v34 & 1);

    v42 = v64;
    v41 = v65;
    if (*(v63 + *(v62 + 52)) == 2)
    {
      v43 = MEMORY[0x1E6980FA8];
    }

    else
    {
      v43 = MEMORY[0x1E6980FB0];
    }

    v44 = v61;
    (*(v64 + 104))(v61, *v43, v65);
    KeyPath = swift_getKeyPath();
    v46 = &v16[*(v66 + 36)];
    v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE93130);
    (*(v42 + 32))(v46 + *(v47 + 28), v44, v41);
    *v46 = KeyPath;
    *v16 = v35;
    *(v16 + 1) = v37;
    v16[16] = v39 & 1;
    *(v16 + 3) = v58;
    v48 = v67;
    v49 = *MEMORY[0x1E697E6D8];
    v50 = sub_1C1263130();
    (*(*(v50 - 8) + 104))(v48, v49, v50);
    sub_1C108B8C0(&qword_1EDE7BF90, MEMORY[0x1E697E730]);
    result = sub_1C1265DE0();
    if (result)
    {
      sub_1C108B6F0();
      sub_1C0FDB6D4(&unk_1EDE7B598, &qword_1EBE92FE0);
      v51 = v59;
      sub_1C1264BC0();
      sub_1C0FD1A5C(v48, &qword_1EBE92FE0);
      sub_1C0FD1A5C(v16, &qword_1EBE92758);
      v52 = v57;
      v53 = v55;
      (*(v60 + 32))(v57, v51, v55);
      return __swift_storeEnumTagSinglePayload(v52, 0, 1, v53);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {

    return __swift_storeEnumTagSinglePayload(a3, 1, 1, v17);
  }

  return result;
}

uint64_t sub_1C108476C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v44 = a2;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE92FE0);
  MEMORY[0x1EEE9AC00](v43);
  v50 = &v41 - v3;
  v48 = sub_1C1264680();
  v47 = *(v48 - 8);
  MEMORY[0x1EEE9AC00](v48);
  v45 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE92508);
  MEMORY[0x1EEE9AC00](v49);
  v6 = &v41 - v5;
  v7 = sub_1C1263EB0();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v41 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE902E8);
  v11 = v10 - 8;
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v41 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE902F0);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v42 = &v41 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v41 - v17;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v41 - v20;
  v46 = a1;
  sub_1C107DA0C(a1, &v41 - v20);
  (*(v8 + 104))(v18, *MEMORY[0x1E697FF40], v7);
  __swift_storeEnumTagSinglePayload(v18, 0, 1, v7);
  v22 = *(v11 + 56);
  sub_1C0FDB800(v21, v13, &qword_1EBE902F0);
  sub_1C0FDB800(v18, &v13[v22], &qword_1EBE902F0);
  if (__swift_getEnumTagSinglePayload(v13, 1, v7) == 1)
  {
    sub_1C0FD1A5C(v18, &qword_1EBE902F0);
    sub_1C0FD1A5C(v21, &qword_1EBE902F0);
    if (__swift_getEnumTagSinglePayload(&v13[v22], 1, v7) == 1)
    {
      sub_1C0FD1A5C(v13, &qword_1EBE902F0);
      v23 = 1;
      goto LABEL_8;
    }

    goto LABEL_6;
  }

  v24 = v42;
  sub_1C0FDB800(v13, v42, &qword_1EBE902F0);
  if (__swift_getEnumTagSinglePayload(&v13[v22], 1, v7) == 1)
  {
    sub_1C0FD1A5C(v18, &qword_1EBE902F0);
    sub_1C0FD1A5C(v21, &qword_1EBE902F0);
    (*(v8 + 8))(v24, v7);
LABEL_6:
    sub_1C0FD1A5C(v13, &qword_1EBE902E8);
    v23 = 0;
    goto LABEL_8;
  }

  v25 = v41;
  (*(v8 + 32))(v41, &v13[v22], v7);
  sub_1C108B8C0(&qword_1EDE7BAB0, MEMORY[0x1E697FF50]);
  v23 = sub_1C1265DE0();
  v26 = *(v8 + 8);
  v26(v25, v7);
  sub_1C0FD1A5C(v18, &qword_1EBE902F0);
  sub_1C0FD1A5C(v21, &qword_1EBE902F0);
  v26(v24, v7);
  sub_1C0FD1A5C(v13, &qword_1EBE902F0);
LABEL_8:
  v27 = v49;
  sub_1C10887B4(v51, v23 & 1, v46[2], v46[3], v46[4], v46[5], __src);
  sub_1C1264530();
  v28 = v47;
  v29 = v45;
  v30 = v48;
  (*(v47 + 104))(v45, *MEMORY[0x1E6980EA8], v48);
  v31 = sub_1C12646C0();

  (*(v28 + 8))(v29, v30);
  KeyPath = swift_getKeyPath();
  memcpy(__dst, __src, 0x5DuLL);
  LODWORD(v30) = sub_1C1263E50();
  v33 = &v6[*(v27 + 36)];
  v34 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE933A0) + 28);
  v35 = *MEMORY[0x1E69816C8];
  v36 = sub_1C1265340();
  (*(*(v36 - 8) + 104))(v33 + v34, v35, v36);
  *v33 = swift_getKeyPath();
  memcpy(v6, __dst, 0x60uLL);
  *(v6 + 12) = KeyPath;
  *(v6 + 13) = v31;
  *(v6 + 28) = v30;
  v37 = *MEMORY[0x1E697E728];
  v38 = sub_1C1263130();
  v39 = v50;
  (*(*(v38 - 8) + 104))(v50, v37, v38);
  sub_1C108B8C0(&qword_1EDE7BF90, MEMORY[0x1E697E730]);
  result = sub_1C1265DE0();
  if (result)
  {
    sub_1C108985C();
    sub_1C0FDB6D4(&unk_1EDE7B598, &qword_1EBE92FE0);
    sub_1C1264BC0();
    sub_1C0FD1A5C(v39, &qword_1EBE92FE0);
    return sub_1C0FD1A5C(v6, &qword_1EBE92508);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1C1084F98@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v30 = a4;
  v31 = a5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE925E8);
  v9 = v8 - 8;
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v30 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE924D8);
  v16 = v15 - 8;
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v30 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v30 - v20;
  v32 = a1;
  v33 = a2;
  v34 = a3;
  v35 = v30;
  v22 = type metadata accessor for PhotosCollectionSearchResultCell();
  sub_1C108412C(1, v22, v21);
  KeyPath = swift_getKeyPath();
  v24 = &v21[*(v16 + 44)];
  *v24 = KeyPath;
  *(v24 + 1) = 1;
  v24[16] = 0;
  sub_1C108521C(1u, v22, v14);
  v25 = swift_getKeyPath();
  v26 = &v14[*(v9 + 44)];
  *v26 = v25;
  *(v26 + 1) = 1;
  v26[16] = 0;
  sub_1C0FDB800(v21, v18, &qword_1EBE924D8);
  sub_1C0FDB800(v14, v11, &qword_1EBE925E8);
  v27 = v31;
  sub_1C0FDB800(v18, v31, &qword_1EBE924D8);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE92798);
  sub_1C0FDB800(v11, v27 + *(v28 + 48), &qword_1EBE925E8);
  sub_1C0FD1A5C(v14, &qword_1EBE925E8);
  sub_1C0FD1A5C(v21, &qword_1EBE924D8);
  sub_1C0FD1A5C(v11, &qword_1EBE925E8);
  return sub_1C0FD1A5C(v18, &qword_1EBE924D8);
}

uint64_t sub_1C108521C@<X0>(unsigned __int8 a1@<W0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v35 = a3;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE92FE0);
  MEMORY[0x1EEE9AC00](v34);
  v39 = &v33 - v5;
  v37 = sub_1C1264680();
  v6 = *(v37 - 8);
  MEMORY[0x1EEE9AC00](v37);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE925F0);
  MEMORY[0x1EEE9AC00](v36);
  v10 = &v33 - v9;
  v11 = sub_1C10831C4(a2);
  if (v12)
  {
    v13 = v11;
  }

  else
  {
    v13 = 0;
  }

  if (((v12 == 0) & a1) != 0)
  {
    v14 = 0xE000000000000000;
  }

  else
  {
    v14 = v12;
  }

  v15 = sub_1C10831F0(a2);
  if (v16)
  {
    v17 = v15;
  }

  else
  {
    v17 = 0;
  }

  if (((v16 == 0) & a1) != 0)
  {
    v18 = 0xE000000000000000;
  }

  else
  {
    v18 = v16;
  }

  v38 = sub_1C1263AB0();
  v41 = 0;
  sub_1C1088414(v13, v14, v17, v18, a2[2], a2[3], a2[4], __src, a2[5]);

  memcpy(&v40[7], __src, 0x48uLL);
  v19 = v41;
  sub_1C1264530();
  v20 = v37;
  (*(v6 + 104))(v8, *MEMORY[0x1E6980EA8], v37);
  v21 = sub_1C12646C0();

  v22 = v8;
  v23 = v36;
  (*(v6 + 8))(v22, v20);
  KeyPath = swift_getKeyPath();
  LODWORD(v20) = sub_1C1263E50();
  v25 = &v10[*(v23 + 36)];
  v26 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE933A0) + 28);
  v27 = *MEMORY[0x1E69816C8];
  v28 = sub_1C1265340();
  (*(*(v28 - 8) + 104))(v25 + v26, v27, v28);
  *v25 = swift_getKeyPath();
  v29 = v39;
  *v10 = v38;
  *(v10 + 1) = 0;
  v10[16] = v19;
  memcpy(v10 + 17, v40, 0x4FuLL);
  *(v10 + 12) = KeyPath;
  *(v10 + 13) = v21;
  *(v10 + 28) = v20;
  v30 = *MEMORY[0x1E697E728];
  v31 = sub_1C1263130();
  (*(*(v31 - 8) + 104))(v29, v30, v31);
  sub_1C108B8C0(&qword_1EDE7BF90, MEMORY[0x1E697E730]);
  result = sub_1C1265DE0();
  if (result)
  {
    sub_1C108A2D8();
    sub_1C0FDB6D4(&unk_1EDE7B598, &qword_1EBE92FE0);
    sub_1C1264BC0();
    sub_1C0FD1A5C(v29, &qword_1EBE92FE0);
    return sub_1C0FD1A5C(v10, &qword_1EBE925F0);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1C1085698@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v57 = a5;
  v56 = a4;
  v55 = a3;
  v54 = a2;
  v58 = a6;
  v7 = type metadata accessor for PhotosCollectionSearchResultCell();
  v51 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE924E0);
  v49 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE924E8);
  WitnessTable = swift_getWitnessTable();
  v45 = sub_1C1089684();
  v8 = sub_1C1089FD0();
  v72 = v7;
  v73 = MEMORY[0x1E6981CD8];
  v74 = v51;
  v75 = v49;
  v76 = WitnessTable;
  v77 = MEMORY[0x1E6981CD0];
  v78 = v45;
  v79 = v8;
  v9 = v8;
  v50 = MEMORY[0x1E6981460];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v52 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v11 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v48 = &v43 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE92740);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v43 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE924D8);
  v44 = v17;
  MEMORY[0x1EEE9AC00](v17);
  v46 = &v43 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v43 - v20;
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v43 - v23;
  v43 = &v43 - v23;
  v25 = swift_checkMetadataState();
  sub_1C108412C(0, v25, v16);
  if (sub_1C1082028(v25))
  {
    v26 = 1;
  }

  else
  {
    v26 = 2;
  }

  KeyPath = swift_getKeyPath();
  sub_1C0FDB71C(v16, v21, &qword_1EBE92740);
  v28 = &v21[*(v17 + 36)];
  *v28 = KeyPath;
  *(v28 + 1) = v26;
  v28[16] = 0;
  sub_1C0FDB71C(v21, v24, &qword_1EBE924D8);
  sub_1C1265910();
  v64 = v54;
  v65 = v55;
  v66 = v56;
  v67 = v57;
  v68 = a1;
  v59 = v54;
  v60 = v55;
  v61 = v56;
  v62 = v57;
  v63 = a1;
  v29 = v9;
  v30 = v45;
  v31 = WitnessTable;
  v32 = v49;
  v33 = MEMORY[0x1E6981CD8];
  v34 = v51;
  sub_1C1265020();
  v72 = v25;
  v73 = v33;
  v74 = v34;
  v75 = v32;
  v76 = v31;
  v77 = MEMORY[0x1E6981CD0];
  v78 = v30;
  v79 = v29;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v36 = v48;
  v37 = OpaqueTypeMetadata2;
  sub_1C0FDBA4C(v11, OpaqueTypeMetadata2, OpaqueTypeConformance2);
  v38 = v52;
  v39 = *(v52 + 8);
  v39(v11, v37);
  v40 = v43;
  v41 = v46;
  sub_1C0FDB800(v43, v46, &qword_1EBE924D8);
  v72 = v41;
  (*(v38 + 16))(v11, v36, v37);
  v73 = v11;
  v71[0] = v44;
  v71[1] = v37;
  v69 = sub_1C108B518();
  v70 = OpaqueTypeConformance2;
  sub_1C119EE80(&v72, 2, v71);
  v39(v36, v37);
  sub_1C0FD1A5C(v40, &qword_1EBE924D8);
  v39(v11, v37);
  return sub_1C0FD1A5C(v41, &qword_1EBE924D8);
}

uint64_t sub_1C1085C58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE92500);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v12 - v5;
  sub_1C10831C4(a1);
  if (v7 || (sub_1C10831F0(a1), v8))
  {

    sub_1C108476C(a1, v6);
    KeyPath = swift_getKeyPath();
    v10 = &v6[*(v4 + 36)];
    *v10 = KeyPath;
    *(v10 + 1) = 1;
    v10[16] = 0;
    sub_1C0FDB71C(v6, a2, &qword_1EBE92500);
    return __swift_storeEnumTagSinglePayload(a2, 0, 1, v4);
  }

  else
  {

    return __swift_storeEnumTagSinglePayload(a2, 1, 1, v4);
  }
}

uint64_t sub_1C1085DF0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE92768);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v35 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE92770);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v35 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE925E8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v35 - v12;
  if (sub_1C1082028(a1))
  {
    sub_1C10831C4(a1);
    if (v14 || (sub_1C10831F0(a1), v15))
    {
      v36 = v4;
      v16 = a2;

      sub_1C108521C(0, a1, v13);
      KeyPath = swift_getKeyPath();
      v18 = &v13[*(v11 + 36)];
      *v18 = KeyPath;
      *(v18 + 1) = 2;
      v18[16] = 0;
      sub_1C0FDB800(v13, v10, &qword_1EBE925E8);
      swift_storeEnumTagMultiPayload();
      sub_1C108A184();
      v19 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE92508);
      v20 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE92FE0);
      v21 = sub_1C108985C();
      v22 = sub_1C0FDB6D4(&unk_1EDE7B598, &qword_1EBE92FE0);
      v37 = v19;
      v38 = v20;
      v39 = v21;
      v40 = v22;
      swift_getOpaqueTypeConformance2();
      sub_1C1263C20();
      sub_1C0FD1A5C(v13, &qword_1EBE925E8);
      v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE925D8);
      v24 = v16;
      return __swift_storeEnumTagSinglePayload(v24, 0, 1, v23);
    }
  }

  sub_1C10831C4(a1);
  if (v25 || (sub_1C10831F0(a1), v26))
  {
    v35 = v11;
    v36 = a2;

    sub_1C108476C(a1, v7);
    (*(v5 + 16))(v10, v7, v4);
    swift_storeEnumTagMultiPayload();
    sub_1C108A184();
    v27 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE92508);
    v28 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE92FE0);
    v29 = v4;
    v30 = sub_1C108985C();
    v31 = sub_1C0FDB6D4(&unk_1EDE7B598, &qword_1EBE92FE0);
    v37 = v27;
    v38 = v28;
    v39 = v30;
    v40 = v31;
    swift_getOpaqueTypeConformance2();
    v32 = v36;
    sub_1C1263C20();
    (*(v5 + 8))(v7, v29);
    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE925D8);
    v24 = v32;
    return __swift_storeEnumTagSinglePayload(v24, 0, 1, v23);
  }

  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE925D8);

  return __swift_storeEnumTagSinglePayload(a2, 1, 1, v34);
}

uint64_t sub_1C108628C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v29 = a3;
  v30 = a4;
  v28 = a2;
  v31 = a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE92768);
  v27 = *(v6 - 8);
  v7 = v27;
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v26 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE92740);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v26 - v17;
  v32 = a1;
  v33 = v28;
  v34 = v29;
  v35 = v30;
  v19 = type metadata accessor for PhotosCollectionSearchResultCell();
  sub_1C108412C(0, v19, v18);
  sub_1C108476C(v19, v12);
  sub_1C0FDB800(v18, v15, &qword_1EBE92740);
  v20 = *(v7 + 16);
  v21 = v6;
  v20(v9, v12, v6);
  v22 = v31;
  sub_1C0FDB800(v15, v31, &qword_1EBE92740);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE927B0);
  v20((v22 + *(v23 + 48)), v9, v21);
  v24 = *(v27 + 8);
  v24(v12, v21);
  sub_1C0FD1A5C(v18, &qword_1EBE92740);
  v24(v9, v21);
  return sub_1C0FD1A5C(v15, &qword_1EBE92740);
}

uint64_t sub_1C1086514@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void (*a5)(void, void)@<X4>, uint64_t a6@<X8>)
{
  v85 = a1;
  v95 = a6;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE924C8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE924D0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE924D8);
  v87 = a2;
  v89 = a4;
  v91 = a5;
  v84 = type metadata accessor for PhotosCollectionSearchResultCell();
  v10 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE924E0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE924E8);
  WitnessTable = swift_getWitnessTable();
  v13 = sub_1C1089684();
  v14 = sub_1C1089FD0();
  v106 = v84;
  v107 = MEMORY[0x1E6981CD8];
  v108 = v10;
  v109 = v11;
  v110 = WitnessTable;
  v111 = MEMORY[0x1E6981CD0];
  v112 = v13;
  v113 = v14;
  swift_getOpaqueTypeMetadata2();
  swift_getTupleTypeMetadata2();
  sub_1C1265B00();
  swift_getWitnessTable();
  sub_1C12655A0();
  swift_getTupleTypeMetadata3();
  sub_1C1265B00();
  swift_getWitnessTable();
  sub_1C12655C0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE92630);
  sub_1C1263C30();
  sub_1C12652C0();
  sub_1C1263190();
  swift_getTupleTypeMetadata3();
  sub_1C1265B00();
  v75[2] = swift_getWitnessTable();
  v15 = sub_1C12654C0();
  v78 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v77 = v75 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v79 = v75 - v18;
  swift_getTupleTypeMetadata2();
  sub_1C1265B00();
  v75[1] = swift_getWitnessTable();
  v19 = sub_1C12655A0();
  v76 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v21 = v75 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v24 = v75 - v23;
  v88 = a3;
  swift_getTupleTypeMetadata2();
  sub_1C1265B00();
  swift_getWitnessTable();
  v25 = sub_1C12655A0();
  v93 = v19;
  v26 = sub_1C1263C30();
  v81 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v80 = v75 - v27;
  v82 = v25;
  v28 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v31 = v75 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32);
  v34 = v75 - v33;
  v83 = v35;
  v94 = v15;
  v36 = v85;
  v92 = sub_1C1263C30();
  v90 = *(v92 - 8);
  MEMORY[0x1EEE9AC00](v92);
  v86 = v75 - v37;
  v38 = swift_checkMetadataState();
  if (*(v36 + *(v38 + 52)))
  {
    if (*(v36 + *(v38 + 52)) == 1)
    {
      v39 = sub_1C1263AB0();
      MEMORY[0x1EEE9AC00](v39);
      v40 = v88;
      v75[-6] = v87;
      v75[-5] = v40;
      v41 = v91;
      v75[-4] = v89;
      v75[-3] = v41;
      v75[-2] = v36;
      sub_1C1265590();
      v42 = v93;
      v43 = swift_getWitnessTable();
      v75[0] = v24;
      sub_1C0FDBA4C(v21, v42, v43);
      v44 = *(v76 + 8);
      v44(v21, v42);
      sub_1C0FDBA4C(v24, v42, v43);
      v45 = swift_getWitnessTable();
      v46 = v80;
      sub_1C1112E18();
      v98 = v45;
      v99 = v43;
      v47 = v83;
      swift_getWitnessTable();
      swift_getWitnessTable();
      v48 = v86;
      sub_1C1112D68();
      (*(v81 + 8))(v46, v47);
      v44(v21, v42);
      v44(v75[0], v42);
    }

    else
    {
      MEMORY[0x1EEE9AC00](v38);
      v58 = v88;
      v75[-6] = v87;
      v75[-5] = v58;
      v59 = v91;
      v75[-4] = v89;
      v75[-3] = v59;
      v75[-2] = v36;
      sub_1C1012734();
      v60 = v77;
      sub_1C12654B0();
      v61 = v94;
      v62 = swift_getWitnessTable();
      v63 = v79;
      sub_1C0FDBA4C(v60, v61, v62);
      v91 = *(v78 + 8);
      v91(v60, v61);
      sub_1C0FDBA4C(v63, v61, v62);
      v64 = swift_getWitnessTable();
      v65 = swift_getWitnessTable();
      v104 = v64;
      v105 = v65;
      swift_getWitnessTable();
      v48 = v86;
      sub_1C1112E18();
      v66 = v91;
      v91(v60, v61);
      v66(v79, v61);
    }
  }

  else
  {
    v49 = sub_1C1263AB0();
    MEMORY[0x1EEE9AC00](v49);
    v50 = v88;
    v75[-6] = v87;
    v75[-5] = v50;
    v51 = v91;
    v75[-4] = v89;
    v75[-3] = v51;
    v75[-2] = v36;
    sub_1C1265590();
    v52 = v82;
    v53 = swift_getWitnessTable();
    sub_1C0FDBA4C(v31, v52, v53);
    v91 = *(v28 + 8);
    v91(v31, v52);
    sub_1C0FDBA4C(v34, v52, v53);
    v54 = swift_getWitnessTable();
    v55 = v80;
    sub_1C1112D68();
    v96 = v53;
    v97 = v54;
    v56 = v83;
    swift_getWitnessTable();
    swift_getWitnessTable();
    v48 = v86;
    sub_1C1112D68();
    (*(v81 + 8))(v55, v56);
    v57 = v91;
    v91(v31, v52);
    v57(v34, v52);
  }

  v67 = v92;
  v68 = v90;
  v69 = swift_getWitnessTable();
  v70 = swift_getWitnessTable();
  v102 = v69;
  v103 = v70;
  v71 = swift_getWitnessTable();
  v72 = swift_getWitnessTable();
  v100 = v71;
  v101 = v72;
  v73 = swift_getWitnessTable();
  sub_1C0FDBA4C(v48, v67, v73);
  return (*(v68 + 8))(v48, v67);
}

uint64_t sub_1C108726C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X4>, uint64_t a4@<X8>)
{
  v44 = a2;
  v45 = a3;
  v42 = a1;
  v43 = a4;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE924C8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE924D0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE924D8);
  v4 = type metadata accessor for PhotosCollectionSearchResultCell();
  v5 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE924E0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE924E8);
  WitnessTable = swift_getWitnessTable();
  v8 = sub_1C1089684();
  v9 = sub_1C1089FD0();
  v49 = v4;
  v50 = MEMORY[0x1E6981CD8];
  v51 = v5;
  v52 = v6;
  v53 = WitnessTable;
  v54 = MEMORY[0x1E6981CD0];
  v55 = v8;
  v56 = v9;
  swift_getOpaqueTypeMetadata2();
  swift_getTupleTypeMetadata2();
  sub_1C1265B00();
  swift_getWitnessTable();
  sub_1C12655A0();
  swift_getTupleTypeMetadata3();
  sub_1C1265B00();
  swift_getWitnessTable();
  v36 = sub_1C12655C0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE92630);
  v37 = sub_1C1263C30();
  v40 = sub_1C12652C0();
  v10 = sub_1C1263190();
  v41 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v38 = &v34 - v14;
  v15 = v44;
  v35 = *(v44 - 8);
  v16 = v35;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v34 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v34 - v21;
  v23 = swift_checkMetadataState();
  (*(v42 + *(v23 + 64)))();
  v34 = v22;
  sub_1C0FDBA4C(v19, v15, v45);
  v39 = *(v16 + 8);
  v39(v19, v15);
  sub_1C1081AE4(v23, v12);
  v24 = swift_getWitnessTable();
  v25 = sub_1C108B224();
  v48[5] = v24;
  v48[6] = v25;
  v48[4] = swift_getWitnessTable();
  v48[2] = swift_getWitnessTable();
  v48[3] = MEMORY[0x1E697E5D8];
  v26 = swift_getWitnessTable();
  v27 = v38;
  sub_1C0FDBA4C(v12, v10, v26);
  v28 = v41;
  v29 = *(v41 + 8);
  v29(v12, v10);
  v30 = v22;
  v31 = v44;
  (*(v35 + 16))(v19, v30, v44);
  v49 = v19;
  (*(v28 + 16))(v12, v27, v10);
  v50 = v12;
  v48[0] = v31;
  v48[1] = v10;
  v46 = v45;
  v47 = v26;
  sub_1C119EE80(&v49, 2, v48);
  v29(v27, v10);
  v32 = v39;
  v39(v34, v31);
  v29(v12, v10);
  return v32(v19, v31);
}

uint64_t sub_1C108782C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v45 = a5;
  v44 = a1;
  v49 = a6;
  v46 = a3;
  v48 = *(a3 - 1);
  MEMORY[0x1EEE9AC00](a1);
  v43 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v47 = &v40 - v12;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE924C8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE924D0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE924D8);
  v55 = a2;
  v56 = a3;
  v57 = a4;
  v58 = a5;
  v13 = type metadata accessor for PhotosCollectionSearchResultCell();
  v14 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE924E0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE924E8);
  WitnessTable = swift_getWitnessTable();
  v17 = sub_1C1089684();
  v18 = sub_1C1089FD0();
  v55 = v13;
  v56 = MEMORY[0x1E6981CD8];
  v57 = v14;
  v58 = v15;
  v59 = WitnessTable;
  v60 = MEMORY[0x1E6981CD0];
  v61 = v17;
  v62 = v18;
  swift_getOpaqueTypeMetadata2();
  swift_getTupleTypeMetadata2();
  sub_1C1265B00();
  swift_getWitnessTable();
  sub_1C12655A0();
  swift_getTupleTypeMetadata3();
  sub_1C1265B00();
  swift_getWitnessTable();
  sub_1C12655C0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE92630);
  sub_1C1263C30();
  sub_1C12652C0();
  v19 = sub_1C1263190();
  v51 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v40 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v50 = &v40 - v23;
  v24 = swift_checkMetadataState();
  v25 = v44;
  sub_1C1081AE4(v24, v21);
  v26 = swift_getWitnessTable();
  v27 = sub_1C108B224();
  v54[5] = v26;
  v54[6] = v27;
  v54[4] = swift_getWitnessTable();
  v54[2] = swift_getWitnessTable();
  v54[3] = MEMORY[0x1E697E5D8];
  v28 = v19;
  v41 = swift_getWitnessTable();
  v29 = v21;
  sub_1C0FDBA4C(v21, v28, v41);
  v42 = *(v51 + 8);
  v30 = v28;
  v31 = v42(v21, v28);
  v32 = v43;
  (*(v25 + *(v24 + 64)))(v31);
  v33 = v47;
  v34 = v46;
  v35 = v45;
  sub_1C0FDBA4C(v32, v46, v45);
  v36 = v48;
  v37 = *(v48 + 8);
  v37(v32, v34);
  (*(v51 + 16))(v29, v50, v30);
  v55 = v29;
  (*(v36 + 16))(v32, v33, v34);
  v56 = v32;
  v54[0] = v30;
  v54[1] = v34;
  v52 = v41;
  v53 = v35;
  sub_1C119EE80(&v55, 2, v54);
  v37(v33, v34);
  v38 = v42;
  v42(v50, v30);
  v37(v32, v34);
  return v38(v29, v30);
}

uint64_t sub_1C1087DEC@<X0>(char *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v51 = a5;
  v50 = a1;
  v55 = a6;
  v52 = a3;
  v54 = *(a3 - 1);
  MEMORY[0x1EEE9AC00](a1);
  v49 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v53 = &v44 - v12;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE924C8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE924D0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE924D8);
  v67 = a2;
  v68 = a3;
  v69 = a4;
  v70 = a5;
  v13 = type metadata accessor for PhotosCollectionSearchResultCell();
  v14 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE924E0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE924E8);
  WitnessTable = swift_getWitnessTable();
  v17 = sub_1C1089684();
  v18 = sub_1C1089FD0();
  v67 = v13;
  v68 = MEMORY[0x1E6981CD8];
  v69 = v14;
  v70 = v15;
  v71 = WitnessTable;
  v72 = MEMORY[0x1E6981CD0];
  v73 = v17;
  v74 = v18;
  swift_getOpaqueTypeMetadata2();
  swift_getTupleTypeMetadata2();
  sub_1C1265B00();
  swift_getWitnessTable();
  sub_1C12655A0();
  swift_getTupleTypeMetadata3();
  sub_1C1265B00();
  swift_getWitnessTable();
  sub_1C12655C0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE92630);
  sub_1C1263C30();
  sub_1C12652C0();
  v19 = sub_1C1263190();
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v44 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v44 - v24;
  v47 = swift_checkMetadataState();
  v26 = v50;
  sub_1C1081AE4(v47, v22);
  v27 = swift_getWitnessTable();
  v28 = sub_1C108B224();
  v65 = v27;
  v66 = v28;
  v64 = swift_getWitnessTable();
  v62 = swift_getWitnessTable();
  v63 = MEMORY[0x1E697E5D8];
  v29 = v19;
  v46 = swift_getWitnessTable();
  v30 = v25;
  v45 = v22;
  sub_1C0FDBA4C(v22, v29, v46);
  v31 = v20;
  v48 = *(v20 + 8);
  v32 = v48(v22, v29);
  v33 = v49;
  (*&v26[*(v47 + 64)])(v32);
  v34 = v53;
  v35 = v52;
  v36 = v51;
  sub_1C0FDBA4C(v33, v52, v51);
  v37 = v54;
  v50 = *(v54 + 8);
  (v50)(v33, v35);
  v38 = *(v31 + 16);
  v39 = v45;
  v38(v45, v30, v29);
  v60 = 0;
  v61 = 1;
  v67 = v39;
  v68 = &v60;
  (*(v37 + 16))(v33, v34, v35);
  v69 = v33;
  v59[0] = v29;
  v59[1] = MEMORY[0x1E6981840];
  v59[2] = v35;
  v56 = v46;
  v57 = MEMORY[0x1E6981838];
  v58 = v36;
  sub_1C119EE80(&v67, 3, v59);
  v40 = v34;
  v41 = v50;
  (v50)(v40, v35);
  v42 = v48;
  v48(v30, v29);
  (v41)(v33, v35);
  return v42(v39, v29);
}

uint64_t sub_1C1088414@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>, uint64_t a9)
{
  v17 = sub_1C1263990();
  MEMORY[0x1EEE9AC00](v17 - 8);
  if (!a2)
  {
    if (!a4)
    {
      v24 = 0;
      v25 = 0;
      v26 = 0;
      v20 = 0;
      a2 = 0;
      v21 = 0;
      v22 = 0;
      v23 = -1;
      goto LABEL_11;
    }

    v27 = 0;
    v28 = a3;
    a2 = a4;
LABEL_8:
    v33 = v28;
    sub_1C0FDB9AC();

    sub_1C12648F0();
    sub_1C1263C20();
    v20 = v33;
    v21 = v34;
    v22 = v35;
    v23 = v36;
    sub_1C108B7C0(v33, a2, v34);
    a4 = v27;
    if (!v27)
    {
      goto LABEL_4;
    }

LABEL_9:
    sub_1C0FDB9AC();
    v24 = sub_1C12648F0();
    a4 = v29;
    v26 = v30;
    v25 = v31 & 1;
    sub_1C0FDB850(v24, v29, v31 & 1);

    goto LABEL_11;
  }

  v34 = a7;
  v35 = a9;
  v18 = type metadata accessor for PhotosCollectionSearchResultCell();
  sub_1C108317C(v18);
  if (!v19)
  {
    v28 = a1;
    v27 = a4;
    goto LABEL_8;
  }

  sub_1C1263980();
  sub_1C1263970();
  sub_1C12652F0();
  sub_1C1263950();

  sub_1C1263970();
  sub_1C1263960();

  sub_1C1263970();
  sub_1C12639B0();
  sub_1C12648D0();
  sub_1C1263C20();
  v20 = a5;
  a2 = a6;
  v21 = a7;
  v22 = a9;
  v23 = v36;

  sub_1C108B7C0(a5, a6, v34);
  if (a4)
  {
    goto LABEL_9;
  }

LABEL_4:
  v24 = 0;
  v25 = 0;
  v26 = 0;
LABEL_11:
  sub_1C108B7A8(v20, a2, v21, v22, v23);
  sub_1C0FDB860(v24, a4, v25, v26);
  sub_1C108B7FC(v20, a2, v21, v22, v23);
  sub_1C0FDB8A4(v24, a4, v25, v26);
  *a8 = v20;
  *(a8 + 8) = a2;
  *(a8 + 16) = v21;
  *(a8 + 24) = v22;
  *(a8 + 32) = v23;
  *(a8 + 40) = v24;
  *(a8 + 48) = a4;
  *(a8 + 56) = v25;
  *(a8 + 64) = v26;
  sub_1C0FDB8A4(v24, a4, v25, v26);
  return sub_1C108B7FC(v20, a2, v21, v22, v23);
}

void *sub_1C10887B4@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  v13 = sub_1C1263990();
  MEMORY[0x1EEE9AC00](v13 - 8);
  __dst[0] = a3;
  __dst[1] = a4;
  __dst[2] = a5;
  __dst[3] = a6;
  v14 = type metadata accessor for PhotosCollectionSearchResultCell();
  sub_1C10831C4(v14);
  if (!v15)
  {
LABEL_9:
    v21 = sub_1C10831C4(v14);
    if (v22)
    {
      v23 = v21;
      v24 = v22;
      sub_1C108317C(v14);
      if (v25)
      {
        sub_1C1263980();
        sub_1C1263970();
        sub_1C12652F0();
        sub_1C1263950();

        sub_1C1263970();
        sub_1C1263960();

        sub_1C1263970();
        sub_1C12639B0();
        *&v72[0] = sub_1C12648D0();
        *(&v72[0] + 1) = v26;
        *&v72[1] = v27 & 1;
        *(&v72[1] + 1) = v28;
        LOBYTE(v72[2]) = 0;
      }

      else
      {
        __dst[0] = v23;
        __dst[1] = v24;
        sub_1C0FDB9AC();
        *&v72[0] = sub_1C12648F0();
        *(&v72[0] + 1) = v41;
        *&v72[1] = v40 & 1;
        *(&v72[1] + 1) = v42;
        LOBYTE(v72[2]) = 1;
      }

      sub_1C1263C20();
      v69 = __dst[4];
      v68[95] = 1;
      BYTE3(__dst[11]) = 1;
      v43 = __dst[0];
      v44 = __dst[1];
      v45 = __dst[2];
      sub_1C108B7C0(__dst[0], __dst[1], __dst[2]);
      sub_1C108B7C0(v43, v44, v45);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE92570);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE93720);
      sub_1C1089C20();
      sub_1C1089CAC();
      sub_1C1263C20();
      memcpy(v70, v68, sizeof(v70));
      memcpy(__dst, v68, 0x5CuLL);
      v71 = 0;
      BYTE4(__dst[11]) = 0;
      sub_1C0FDB800(v70, v72, &qword_1EBE92560);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE92560);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE925B0);
      sub_1C1089B94();
      sub_1C1089E64();
      sub_1C1263C20();
      sub_1C108B814(v43, v44, v45);
      sub_1C0FD1A5C(v70, &qword_1EBE92560);
      sub_1C108B814(v43, v44, v45);
    }

    else
    {
      v29 = sub_1C10831F0(v14);
      if (v30)
      {
        __dst[0] = v29;
        __dst[1] = v30;
        sub_1C0FDB9AC();
        v33 = sub_1C12648F0();
        v34 = v31;
        *&v72[0] = v33;
        *(&v72[0] + 1) = v31;
        v35 = v32 & 1;
        *&v72[1] = v32 & 1;
        *(&v72[1] + 1) = v36;
        LOBYTE(v72[2]) = 0;
      }

      else
      {
        __dst[0] = 0;
        __dst[1] = 0xE000000000000000;
        sub_1C0FDB9AC();
        v33 = sub_1C12648F0();
        v34 = v31;
        v35 = v32 & 1;
        *&v72[0] = v33;
        *(&v72[0] + 1) = v31;
        *&v72[1] = v32 & 1;
        *(&v72[1] + 1) = v46;
        LOBYTE(v72[2]) = 1;
      }

      sub_1C0FDB850(v33, v31, v32 & 1);

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE925C0);
      sub_1C1089EF0();
      sub_1C1263C20();
      v70[0] = __dst[4];
      v68[0] = 1;
      BYTE4(__dst[11]) = 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE92560);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE925B0);
      sub_1C1089B94();
      sub_1C1089E64();
      sub_1C1263C20();
      sub_1C0FDB8E8(v33, v34, v35);
    }

    goto LABEL_29;
  }

  sub_1C10831F0(v14);
  if (!v16)
  {

    goto LABEL_9;
  }

  sub_1C108317C(v14);
  if (v17)
  {
    if (*(a1 + *(v14 + 52)) || (*(a1 + *(v14 + 60)) & 1) != 0)
    {
      sub_1C1263980();
      sub_1C1263970();
      sub_1C12652F0();
      sub_1C1263950();

      sub_1C1263970();
      sub_1C1263960();

      sub_1C1263970();
      sub_1C1263960();

      sub_1C1263970();
      sub_1C12639B0();
      *&v72[0] = sub_1C12648D0();
      *(&v72[0] + 1) = v19;
      *&v72[1] = v18 & 1;
      *(&v72[1] + 1) = v20;
      LOBYTE(v72[2]) = 1;
    }

    else
    {
      sub_1C1263980();
      sub_1C1263970();
      sub_1C1263960();

      sub_1C1263970();
      sub_1C12652F0();
      sub_1C1263950();

      sub_1C1263970();
      sub_1C1263960();

      sub_1C1263970();
      sub_1C12639B0();
      *&v72[0] = sub_1C12648D0();
      *(&v72[0] + 1) = v51;
      *&v72[1] = v52 & 1;
      *(&v72[1] + 1) = v53;
      LOBYTE(v72[2]) = 0;
    }

    sub_1C1263C20();
    LOBYTE(v72[0]) = __dst[4];
    v70[0] = 0;
    BYTE2(__dst[11]) = 0;
  }

  else
  {
    if (a2)
    {
      if (*(a1 + *(v14 + 52)) || (*(a1 + *(v14 + 60)) & 1) != 0)
      {
        v37 = sub_1C1263AB0();
        LOBYTE(__dst[0]) = 1;
        sub_1C10894A4(v72);

        *&v64[7] = v72[0];
        v65 = v72[1];
        v66 = v72[2];
        v67 = v72[3];
        v38 = __dst[0];
        v68[0] = 1;
        __dst[0] = v37;
        __dst[1] = 0;
        LOBYTE(__dst[2]) = v38;
        v39 = v64;
      }

      else
      {
        v54 = sub_1C1263AB0();
        LOBYTE(__dst[0]) = 1;
        sub_1C10894A4(v72);

        *&v60[7] = v72[0];
        v61 = v72[1];
        v62 = v72[2];
        v63 = v72[3];
        v55 = __dst[0];
        v68[0] = 0;
        __dst[0] = v54;
        __dst[1] = 0;
        LOBYTE(__dst[2]) = v55;
        v39 = v60;
      }

      memcpy(&__dst[2] + 1, v39, 0x47uLL);
      LOBYTE(__dst[11]) = v68[0];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE925A0);
      sub_1C0FDB6D4(&qword_1EBE92598, &qword_1EBE925A0);
      sub_1C1263C20();
      memcpy(__dst, v70, 0x59uLL);
      v68[0] = 0;
      BYTE1(__dst[11]) = 0;
    }

    else
    {
      if (*(a1 + *(v14 + 52)) || (*(a1 + *(v14 + 60)) & 1) != 0)
      {
        sub_1C1263980();
        sub_1C1263970();
        sub_1C1263960();

        sub_1C1263970();
        sub_1C1263960();

        sub_1C1263970();
        sub_1C12639B0();
        *&v72[0] = sub_1C12648D0();
        *(&v72[0] + 1) = v48;
        *&v72[1] = v47 & 1;
        *(&v72[1] + 1) = v49;
        LOBYTE(v72[2]) = 1;
      }

      else
      {
        sub_1C1263980();
        sub_1C1263970();
        sub_1C1263960();

        sub_1C1263970();
        sub_1C1263960();

        sub_1C1263970();
        sub_1C12639B0();
        *&v72[0] = sub_1C12648D0();
        *(&v72[0] + 1) = v56;
        *&v72[1] = v57 & 1;
        *(&v72[1] + 1) = v58;
        LOBYTE(v72[2]) = 0;
      }

      sub_1C1263C20();
      v70[0] = __dst[4];
      v68[0] = 1;
      BYTE1(__dst[11]) = 1;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE92590);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE93720);
    sub_1C1089DB4();
    sub_1C1089CAC();
    sub_1C1263C20();
    memcpy(__dst, v72, 0x5AuLL);
    v70[0] = 1;
    BYTE2(__dst[11]) = 1;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE93720);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE92580);
  sub_1C1089CAC();
  sub_1C1089D28();
  sub_1C1263C20();
  memcpy(__dst, v68, 0x5BuLL);
  v69 = 0;
  BYTE3(__dst[11]) = 0;
  sub_1C0FDB800(v68, v72, &qword_1EBE92570);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE92570);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE93720);
  sub_1C1089C20();
  sub_1C1089CAC();
  sub_1C1263C20();
  memcpy(__dst, v70, 0x5CuLL);
  v71 = 0;
  BYTE4(__dst[11]) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE92560);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE925B0);
  sub_1C1089B94();
  sub_1C1089E64();
  sub_1C1263C20();
  sub_1C0FD1A5C(v68, &qword_1EBE92570);
LABEL_29:
  memcpy(__dst, v72, 0x5DuLL);
  return memcpy(a7, __dst, 0x5DuLL);
}

uint64_t sub_1C10894A4@<X0>(uint64_t a1@<X8>)
{
  sub_1C0FDB9AC();

  v2 = sub_1C12648F0();
  v24 = v3;
  v25 = v2;
  v23 = v4;
  v26 = v5;

  sub_1C12648F0();
  if (qword_1EDE7B848 != -1)
  {
    swift_once();
  }

  v6 = sub_1C1264850();
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v13 = OUTLINED_FUNCTION_47();
  sub_1C0FDB8E8(v13, v14, v15);

  *a1 = v25;
  *(a1 + 8) = v24;
  *(a1 + 16) = v23 & 1;
  *(a1 + 24) = v26;
  *(a1 + 32) = v6;
  *(a1 + 40) = v8;
  *(a1 + 48) = v10 & 1;
  *(a1 + 56) = v12;
  v16 = OUTLINED_FUNCTION_47();
  sub_1C0FDB850(v16, v17, v18);

  sub_1C0FDB850(v6, v8, v10 & 1);

  sub_1C0FDB8E8(v6, v8, v10 & 1);

  v19 = OUTLINED_FUNCTION_47();
  sub_1C0FDB8E8(v19, v20, v21);
}

unint64_t sub_1C1089684()
{
  result = qword_1EBE924F0;
  if (!qword_1EBE924F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE924E0);
    sub_1C1089708();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE924F0);
  }

  return result;
}

unint64_t sub_1C1089708()
{
  result = qword_1EBE924F8;
  if (!qword_1EBE924F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE92500);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE92508);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE92FE0);
    sub_1C108985C();
    sub_1C0FDB6D4(&unk_1EDE7B598, &qword_1EBE92FE0);
    swift_getOpaqueTypeConformance2();
    sub_1C0FDB6D4(&unk_1EDE7B8F0, &unk_1EBE91DC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE924F8);
  }

  return result;
}

unint64_t sub_1C108985C()
{
  result = qword_1EBE92510;
  if (!qword_1EBE92510)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE92508);
    sub_1C1089914();
    sub_1C0FDB6D4(&qword_1EDE76D28, &qword_1EBE933A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE92510);
  }

  return result;
}

unint64_t sub_1C1089914()
{
  result = qword_1EBE92518;
  if (!qword_1EBE92518)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE92520);
    sub_1C10899CC();
    sub_1C0FDB6D4(&qword_1EDE7BA60, &qword_1EBE91888);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE92518);
  }

  return result;
}

unint64_t sub_1C10899CC()
{
  result = qword_1EBE92528;
  if (!qword_1EBE92528)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE92530);
    sub_1C1089A84();
    sub_1C0FDB6D4(&qword_1EDE7B930, &qword_1EBE933F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE92528);
  }

  return result;
}

unint64_t sub_1C1089A84()
{
  result = qword_1EBE92538;
  if (!qword_1EBE92538)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE92540);
    sub_1C1089B08();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE92538);
  }

  return result;
}

unint64_t sub_1C1089B08()
{
  result = qword_1EBE92548;
  if (!qword_1EBE92548)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE92550);
    sub_1C1089B94();
    sub_1C1089E64();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE92548);
  }

  return result;
}

unint64_t sub_1C1089B94()
{
  result = qword_1EBE92558;
  if (!qword_1EBE92558)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE92560);
    sub_1C1089C20();
    sub_1C1089CAC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE92558);
  }

  return result;
}

unint64_t sub_1C1089C20()
{
  result = qword_1EBE92568;
  if (!qword_1EBE92568)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE92570);
    sub_1C1089CAC();
    sub_1C1089D28();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE92568);
  }

  return result;
}

unint64_t sub_1C1089CAC()
{
  result = qword_1EBE93350;
  if (!qword_1EBE93350)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE93720);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE93350);
  }

  return result;
}

unint64_t sub_1C1089D28()
{
  result = qword_1EBE92578;
  if (!qword_1EBE92578)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE92580);
    sub_1C1089DB4();
    sub_1C1089CAC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE92578);
  }

  return result;
}

unint64_t sub_1C1089DB4()
{
  result = qword_1EBE92588;
  if (!qword_1EBE92588)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE92590);
    sub_1C0FDB6D4(&qword_1EBE92598, &qword_1EBE925A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE92588);
  }

  return result;
}

unint64_t sub_1C1089E64()
{
  result = qword_1EBE925A8;
  if (!qword_1EBE925A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE925B0);
    sub_1C1089EF0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE925A8);
  }

  return result;
}

unint64_t sub_1C1089EF0()
{
  result = qword_1EBE925B8;
  if (!qword_1EBE925B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE925C0);
    sub_1C1089F7C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE925B8);
  }

  return result;
}

unint64_t sub_1C1089F7C()
{
  result = qword_1EDE7BCF8;
  if (!qword_1EDE7BCF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE7BCF8);
  }

  return result;
}

unint64_t sub_1C1089FD0()
{
  result = qword_1EBE925C8;
  if (!qword_1EBE925C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE924E8);
    sub_1C108A054();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE925C8);
  }

  return result;
}

unint64_t sub_1C108A054()
{
  result = qword_1EBE925D0;
  if (!qword_1EBE925D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE925D8);
    sub_1C108A184();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE92508);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE92FE0);
    sub_1C108985C();
    sub_1C0FDB6D4(&unk_1EDE7B598, &qword_1EBE92FE0);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE925D0);
  }

  return result;
}

unint64_t sub_1C108A184()
{
  result = qword_1EBE925E0;
  if (!qword_1EBE925E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE925E8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE925F0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE92FE0);
    sub_1C108A2D8();
    sub_1C0FDB6D4(&unk_1EDE7B598, &qword_1EBE92FE0);
    swift_getOpaqueTypeConformance2();
    sub_1C0FDB6D4(&unk_1EDE7B8F0, &unk_1EBE91DC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE925E0);
  }

  return result;
}

unint64_t sub_1C108A2D8()
{
  result = qword_1EBE925F8;
  if (!qword_1EBE925F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE925F0);
    sub_1C108A390();
    sub_1C0FDB6D4(&qword_1EDE76D28, &qword_1EBE933A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE925F8);
  }

  return result;
}

unint64_t sub_1C108A390()
{
  result = qword_1EBE92600;
  if (!qword_1EBE92600)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE92608);
    sub_1C108A448();
    sub_1C0FDB6D4(&qword_1EDE7BA60, &qword_1EBE91888);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE92600);
  }

  return result;
}

unint64_t sub_1C108A448()
{
  result = qword_1EBE92610;
  if (!qword_1EBE92610)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE92618);
    sub_1C0FDB6D4(&qword_1EBE92620, &qword_1EBE92628);
    sub_1C0FDB6D4(&qword_1EDE7B930, &qword_1EBE933F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE92610);
  }

  return result;
}

unint64_t sub_1C108A530()
{
  result = qword_1EBE92638;
  if (!qword_1EBE92638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE92638);
  }

  return result;
}

unint64_t sub_1C108A588()
{
  result = qword_1EBE92640;
  if (!qword_1EBE92640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE92640);
  }

  return result;
}

unint64_t sub_1C108A5E0()
{
  result = qword_1EBE92648;
  if (!qword_1EBE92648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE92648);
  }

  return result;
}

unint64_t sub_1C108A638()
{
  result = qword_1EBE92650[0];
  if (!qword_1EBE92650[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EBE92650);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for PhotosCollectionSearchResultCellContentPosition(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *sub_1C108A7CC(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1C108A8B0()
{
  v0 = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    v0 = sub_1C1007F88();
    if (v2 <= 0x3F)
    {
      sub_1C100D318(319, &qword_1EDE77600);
      v0 = v3;
      if (v4 <= 0x3F)
      {
        sub_1C100D318(319, &qword_1EDE77540);
        v0 = v5;
        if (v6 <= 0x3F)
        {
          sub_1C108B164(319, &qword_1EDE77590, MEMORY[0x1E697DBD0]);
          if (v8 > 0x3F)
          {
            return v7;
          }

          sub_1C108B164(319, &qword_1EDE77578, MEMORY[0x1E697E730]);
          if (v9 > 0x3F)
          {
            return v7;
          }

          sub_1C0FDAAD8();
          if (v10 > 0x3F)
          {
            return v7;
          }

          else
          {
            sub_1C100D318(319, &qword_1EDE77640);
            v0 = v11;
            if (v12 <= 0x3F)
            {
              sub_1C100D318(319, &qword_1EBE926D8);
              v0 = v13;
              if (v14 <= 0x3F)
              {
                swift_cvw_initStructMetadataWithLayoutString();
                return 0;
              }
            }
          }
        }
      }
    }
  }

  return v0;
}

uint64_t sub_1C108AA9C(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  v31 = *(a3 + 16);
  v5 = *(v31 - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(sub_1C12629F0() - 8);
  v9 = *(v8 + 64);
  if (v9 <= 8)
  {
    v9 = 8;
  }

  v32 = v9;
  v10 = *(sub_1C1263130() - 8);
  if (*(v10 + 64) <= 8uLL)
  {
    v11 = 8;
  }

  else
  {
    v11 = *(v10 + 64);
  }

  v12 = sub_1C1263EB0();
  v14 = *(v12 - 8);
  result = v12 - 8;
  v15 = v14;
  v16 = *(v14 + 64);
  v17 = *(v5 + 64);
  if (!*(v14 + 84))
  {
    ++v16;
  }

  if (v16 <= 8)
  {
    v16 = 8;
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
LABEL_38:
    if (v6 < 0x7FFFFFFF)
    {
      v29 = *(&a1[v17 + 10] & 0xFFFFFFFFFFFFFFF8);
      if (v29 >= 0xFFFFFFFF)
      {
        LODWORD(v29) = -1;
      }

      return (v29 + 1);
    }

    else
    {

      return __swift_getEnumTagSinglePayload(a1, v6, v31);
    }
  }

  else
  {
    v18 = *(v8 + 80) & 0xF8 | 7;
    v19 = (((((v17 + 10) & 0xFFFFFFFFFFFFFFF8) + 239) & 0xFFFFFFFFFFFFFFF8) + v18 + 9) & ~v18;
    v20 = *(v10 + 80) & 0xF8 | 7;
    v21 = *(v15 + 80) & 0xF8 | 7;
    v22 = ((v16 + ((v11 + v21 + ((v32 + v20 + v19 + 1) & ~v20) + 1) & ~v21) + 40) & 0xFFFFFFFFFFFFFFF8) + 9;
    if (v22 <= 3)
    {
      v23 = ((a2 - v7 + 255) >> 8) + 1;
    }

    else
    {
      v23 = 2;
    }

    if (v23 >= 0x10000)
    {
      v24 = 4;
    }

    else
    {
      v24 = 2;
    }

    if (v23 < 0x100)
    {
      v24 = 1;
    }

    if (v23 >= 2)
    {
      v25 = v24;
    }

    else
    {
      v25 = 0;
    }

    switch(v25)
    {
      case 1:
        v26 = a1[v22];
        if (!a1[v22])
        {
          goto LABEL_38;
        }

        goto LABEL_31;
      case 2:
        v26 = *&a1[v22];
        if (!*&a1[v22])
        {
          goto LABEL_38;
        }

        goto LABEL_31;
      case 3:
        __break(1u);
        return result;
      case 4:
        v26 = *&a1[v22];
        if (!v26)
        {
          goto LABEL_38;
        }

LABEL_31:
        v27 = v22 > 3;
        if (v22 <= 3)
        {
          v28 = (v26 - 1) << (8 * v22);
        }

        else
        {
          v28 = 0;
        }

        if (v27)
        {
          v30 = *a1;
        }

        else
        {
          v30 = *a1;
        }

        result = v7 + (v30 | v28) + 1;
        break;
      default:
        goto LABEL_38;
    }
  }

  return result;
}

void sub_1C108ADD8(unsigned int *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v28 = *(a4 + 16);
  v5 = *(v28 - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(sub_1C12629F0() - 8);
  if (*(v8 + 64) <= 8uLL)
  {
    v9 = 8;
  }

  else
  {
    v9 = *(v8 + 64);
  }

  v10 = *(sub_1C1263130() - 8);
  if (*(v10 + 64) <= 8uLL)
  {
    v11 = 8;
  }

  else
  {
    v11 = *(v10 + 64);
  }

  v12 = *(sub_1C1263EB0() - 8);
  v13 = *(v12 + 64);
  v14 = *(v5 + 64);
  v15 = *(v8 + 80) & 0xF8 | 7;
  v16 = (((((v14 + 10) & 0xFFFFFFFFFFFFFFF8) + 239) & 0xFFFFFFFFFFFFFFF8) + v15 + 9) & ~v15;
  v17 = *(v10 + 80) & 0xF8 | 7;
  v18 = *(v12 + 80) & 0xF8 | 7;
  v19 = (v11 + v18 + ((v9 + v17 + v16 + 1) & ~v17) + 1) & ~v18;
  if (!*(v12 + 84))
  {
    ++v13;
  }

  if (v13 <= 8)
  {
    v13 = 8;
  }

  v20 = ((v13 + v19 + 40) & 0xFFFFFFFFFFFFFFF8) + 9;
  if (v7 >= a3)
  {
    v23 = 0;
  }

  else
  {
    if (v20 <= 3)
    {
      v21 = ((a3 - v7 + 255) >> 8) + 1;
    }

    else
    {
      v21 = 2;
    }

    if (v21 >= 0x10000)
    {
      v22 = 4;
    }

    else
    {
      v22 = 2;
    }

    if (v21 < 0x100)
    {
      v22 = 1;
    }

    if (v21 >= 2)
    {
      v23 = v22;
    }

    else
    {
      v23 = 0;
    }
  }

  if (v7 >= a2)
  {
    switch(v23)
    {
      case 1:
        *(a1 + v20) = 0;
        if (a2)
        {
          goto LABEL_41;
        }

        break;
      case 2:
        *(a1 + v20) = 0;
        if (a2)
        {
          goto LABEL_41;
        }

        break;
      case 3:
LABEL_54:
        __break(1u);
        break;
      case 4:
        *(a1 + v20) = 0;
        goto LABEL_40;
      default:
LABEL_40:
        if (a2)
        {
LABEL_41:
          if (v6 < 0x7FFFFFFF)
          {
            v26 = ((a1 + v14 + 10) & 0xFFFFFFFFFFFFFFF8);
            if ((a2 & 0x80000000) != 0)
            {
              v27 = a2 & 0x7FFFFFFF;
              v26[1] = 0;
            }

            else
            {
              v27 = a2 - 1;
            }

            *v26 = v27;
          }

          else
          {

            __swift_storeEnumTagSinglePayload(a1, a2, v6, v28);
          }
        }

        break;
    }
  }

  else
  {
    v24 = ~v7 + a2;
    bzero(a1, v20);
    if (v20 <= 3)
    {
      v25 = (v24 >> 8) + 1;
    }

    else
    {
      v25 = 1;
    }

    if (v20 > 3)
    {
      *a1 = v24;
    }

    else
    {
      *a1 = v24;
    }

    switch(v23)
    {
      case 1:
        *(a1 + v20) = v25;
        break;
      case 2:
        *(a1 + v20) = v25;
        break;
      case 3:
        goto LABEL_54;
      case 4:
        *(a1 + v20) = v25;
        break;
      default:
        return;
    }
  }
}

void sub_1C108B164(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1C1262A70();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_1C108B224()
{
  result = qword_1EBE926E0;
  if (!qword_1EBE926E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE92630);
    sub_1C0FDB6D4(&qword_1EBE926E8, &qword_1EBE926F0);
    sub_1C0FDB6D4(&unk_1EDE7B8F0, &unk_1EBE91DC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE926E0);
  }

  return result;
}

unint64_t sub_1C108B350()
{
  result = qword_1EBE92710;
  if (!qword_1EBE92710)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE924C8);
    sub_1C0FDB6D4(&qword_1EBE92718, &qword_1EBE92720);
    sub_1C1089F7C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE92710);
  }

  return result;
}

unint64_t sub_1C108B408()
{
  result = qword_1EBE92728;
  if (!qword_1EBE92728)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE924D0);
    sub_1C0FDB6D4(&qword_1EBE92730, &qword_1EBE92738);
    sub_1C1089F7C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE92728);
  }

  return result;
}

unint64_t sub_1C108B518()
{
  result = qword_1EBE92748;
  if (!qword_1EBE92748)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE924D8);
    sub_1C108B5D0();
    sub_1C0FDB6D4(&unk_1EDE7B8F0, &unk_1EBE91DC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE92748);
  }

  return result;
}

unint64_t sub_1C108B5D0()
{
  result = qword_1EBE92750;
  if (!qword_1EBE92750)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE92740);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE92758);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE92FE0);
    sub_1C108B6F0();
    sub_1C0FDB6D4(&unk_1EDE7B598, &qword_1EBE92FE0);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE92750);
  }

  return result;
}

unint64_t sub_1C108B6F0()
{
  result = qword_1EBE92760;
  if (!qword_1EBE92760)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE92758);
    sub_1C0FDB6D4(&unk_1EDE7B920, &qword_1EBE93130);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE92760);
  }

  return result;
}

uint64_t sub_1C108B7A8(uint64_t a1, uint64_t a2, char a3, uint64_t a4, char a5)
{
  if (a5 != -1)
  {
    return sub_1C108B7C0(a1, a2, a3);
  }

  return a1;
}

uint64_t sub_1C108B7C0(uint64_t a1, uint64_t a2, char a3)
{
  sub_1C0FDB850(a1, a2, a3 & 1);
}

uint64_t sub_1C108B7FC(uint64_t a1, uint64_t a2, char a3, uint64_t a4, char a5)
{
  if (a5 != -1)
  {
    return sub_1C108B814(a1, a2, a3);
  }

  return a1;
}

uint64_t sub_1C108B814(uint64_t a1, uint64_t a2, char a3)
{
  sub_1C0FDB8E8(a1, a2, a3 & 1);
}

uint64_t sub_1C108B850(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE902F0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C108B8C0(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1C108B9B4()
{
  result = qword_1EDE7BE08;
  if (!qword_1EDE7BE08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE927B8);
    sub_1C0FDB6D4(&qword_1EDE7B7D8, &qword_1EBE927C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE7BE08);
  }

  return result;
}

uint64_t sub_1C108BA6C@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE92810);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1C12A3440;
  sub_1C1265160();
  v3 = sub_1C12651E0();

  *(v2 + 32) = v3;
  sub_1C1265160();
  v4 = sub_1C12651E0();

  *(v2 + 40) = v4;
  MEMORY[0x1C68EF140](v2);
  sub_1C1265B70();
  sub_1C1265B80();
  sub_1C1262F60();
  sub_1C12659A0();
  sub_1C1262C80();
  sub_1C1265170();
  v5 = sub_1C12651E0();

  v19[0] = v5;
  sub_1C0FDB76C();
  v6 = sub_1C1265270();
  sub_1C12659A0();
  sub_1C1262C80();
  v7 = v13;
  v8 = v15;
  memcpy(__dst, __src, sizeof(__dst));
  v11 = v14;
  v10 = v16;
  memcpy(a1, __src, 0x58uLL);
  *(a1 + 88) = v6;
  *(a1 + 96) = v7;
  *(a1 + 104) = v11;
  *(a1 + 112) = v8;
  *(a1 + 120) = v10;
  *(a1 + 128) = v17;
  sub_1C102EFA0(__dst, v19, &qword_1EBE92848);
  memcpy(v19, __src, sizeof(v19));
  return sub_1C0F9E21C(v19, &qword_1EBE92848);
}

uint64_t sub_1C108BCB4()
{
  sub_1C1265990();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE927B8);
  sub_1C108B9B4();
  return sub_1C1264F60();
}

void *sub_1C108BD74@<X0>(void (*a1)(void *__return_ptr, double, double)@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>, double a5@<D2>)
{
  v10 = sub_1C1263AA0();
  v16 = 0;
  a1(__src, a3, a4);
  memcpy(__dst, __src, sizeof(__dst));
  memcpy(v18, __src, sizeof(v18));
  sub_1C102EFA0(__dst, &v13, &qword_1EBE92850);
  sub_1C0F9E21C(v18, &qword_1EBE92850);
  memcpy(&v15[7], __dst, 0x90uLL);
  v11 = v16;
  *a2 = v10;
  *(a2 + 8) = 0;
  *(a2 + 16) = v11;
  result = memcpy((a2 + 17), v15, 0x97uLL);
  *(a2 + 168) = a5;
  return result;
}

uint64_t sub_1C108BEA8@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE92810);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1C12A3440;
  *(v2 + 32) = sub_1C1265170();
  *(v2 + 40) = sub_1C1265160();
  sub_1C1265B70();
  sub_1C1265B80();
  MEMORY[0x1C68EF140](v2);
  sub_1C1262F60();
  sub_1C12659A0();
  sub_1C1262C80();
  v16[0] = sub_1C1265160();
  sub_1C0FDB76C();
  v3 = sub_1C1265270();
  sub_1C12659A0();
  sub_1C1262C80();
  v4 = v10;
  v5 = v12;
  memcpy(__dst, __src, sizeof(__dst));
  v8 = v11;
  v7 = v13;
  memcpy(a1, __src, 0x58uLL);
  *(a1 + 88) = v3;
  *(a1 + 96) = v4;
  *(a1 + 104) = v8;
  *(a1 + 112) = v5;
  *(a1 + 120) = v7;
  *(a1 + 128) = v14;
  sub_1C102EFA0(__dst, v16, &qword_1EBE92848);
  memcpy(v16, __src, sizeof(v16));
  return sub_1C0F9E21C(v16, &qword_1EBE92848);
}

uint64_t View.photosBottomLegibilityGradientOverlay(bottomInset:heightAboveGrid:heightBelowGrid:gradientOpacity:IsGradientAtOrAboveTop:wantsGradient:)()
{
  sub_1C1265990();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE927C8);
  sub_1C0FDB6D4(&qword_1EBE927D0, &qword_1EBE927C8);
  return sub_1C1264F60();
}

uint64_t sub_1C108C1B0@<X0>(int a1@<W0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t *a5@<X8>, double a6@<D0>)
{
  *a5 = sub_1C12659A0();
  a5[1] = v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE927F0);
  return sub_1C108C27C(a1, a2, a3, a4, a5 + *(v13 + 44), a6);
}

uint64_t sub_1C108C27C@<X0>(int a1@<W0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>, double a6@<D1>)
{
  v73 = a3;
  v74 = a4;
  v72 = a2;
  LODWORD(v59) = a1;
  v75 = a5;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE927F8) - 8;
  MEMORY[0x1EEE9AC00](v69);
  v70 = &v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v68 = &v52 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE92800);
  v11 = v10 - 8;
  MEMORY[0x1EEE9AC00](v10);
  v67 = &v52 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v52 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v52 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE92808);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v71 = &v52 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v52 - v22;
  *v23 = sub_1C1263AA0();
  *(v23 + 1) = 0;
  v23[16] = 0;
  v66 = v23;
  v81[0] = sub_1C1265170();
  sub_1C0FDB76C();
  v58 = sub_1C1265270();
  sub_1C12659A0();
  sub_1C1262C80();
  v65 = v83;
  v64 = v84;
  v63 = v85;
  v62 = v86;
  v60 = v88;
  v61 = v87;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE92810);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_1C12A3440;
  sub_1C1265160();
  v25 = sub_1C12651E0();

  *(v24 + 32) = v25;
  sub_1C1265160();
  v59 = &v23[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE92818) + 44)];
  v26 = sub_1C12651E0();

  *(v24 + 40) = v26;
  MEMORY[0x1C68EF140](v24);
  sub_1C1265B70();
  sub_1C1265B80();
  sub_1C1262F60();
  sub_1C12659A0();
  sub_1C1262C80();
  v27 = *(v11 + 44);
  v56 = *MEMORY[0x1E6981DC0];
  v28 = v56;
  v29 = sub_1C1265A90();
  v30 = *(v29 - 8);
  v55 = *(v30 + 104);
  v57 = v30 + 104;
  v55(&v15[v27], v28, v29);
  memcpy(v15, v82, 0x58uLL);
  v54 = v18;
  sub_1C108D06C(v15, v18);
  sub_1C1265160();
  v31 = sub_1C12651E0();

  v81[0] = v31;
  v53 = sub_1C1265270();
  sub_1C12659A0();
  sub_1C1262C80();
  v32 = v89;
  LOBYTE(v15) = v90;
  v33 = v91;
  v34 = v92;
  v35 = v93;
  v36 = v94;
  v37 = v68;
  v55(&v68[*(v69 + 44)], v56, v29);
  *v37 = v53;
  *(v37 + 1) = v32;
  v37[16] = v15;
  *(v37 + 3) = v33;
  v37[32] = v34;
  *(v37 + 5) = v35;
  *(v37 + 6) = v36;
  v38 = v37;
  v39 = v67;
  sub_1C102EFA0(v18, v67, &qword_1EBE92800);
  v40 = v37;
  v41 = v70;
  sub_1C102EFA0(v40, v70, &qword_1EBE927F8);
  v42 = v59;
  v43 = v65;
  *v59 = v58;
  v42[1] = v43;
  *(v42 + 16) = v64;
  v42[3] = v63;
  *(v42 + 32) = v62;
  v44 = v60;
  v42[5] = v61;
  v42[6] = v44;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE92820);
  sub_1C102EFA0(v39, v42 + *(v45 + 48), &qword_1EBE92800);
  sub_1C102EFA0(v41, v42 + *(v45 + 64), &qword_1EBE927F8);

  sub_1C0F9E21C(v38, &qword_1EBE927F8);
  sub_1C0F9E21C(v54, &qword_1EBE92800);
  sub_1C0F9E21C(v41, &qword_1EBE927F8);
  sub_1C0F9E21C(v39, &qword_1EBE92800);

  v46 = sub_1C1263AA0();
  v77 = 0;
  sub_1C108CA24(v81);
  memcpy(v78, v81, sizeof(v78));
  memcpy(v79, v81, sizeof(v79));
  sub_1C102EFA0(v78, v80, &qword_1EBE92828);
  sub_1C0F9E21C(v79, &qword_1EBE92828);
  memcpy(&v76[7], v78, 0x140uLL);
  LOBYTE(v29) = v77;
  v47 = v66;
  v48 = v71;
  sub_1C102EFA0(v66, v71, &qword_1EBE92808);
  v49 = v75;
  sub_1C102EFA0(v48, v75, &qword_1EBE92808);
  v50 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE92830) + 48);
  v80[0] = v46;
  v80[1] = 0;
  LOBYTE(v80[2]) = v29;
  memcpy(&v80[2] + 1, v76, 0x147uLL);
  *&v80[43] = a6;
  memcpy((v49 + v50), v80, 0x160uLL);
  sub_1C102EFA0(v80, v81, &qword_1EBE92838);
  sub_1C0F9E21C(v47, &qword_1EBE92808);
  v81[0] = v46;
  v81[1] = 0;
  LOBYTE(v81[2]) = v29;
  memcpy(&v81[2] + 1, v76, 0x147uLL);
  *&v81[43] = a6;
  sub_1C0F9E21C(v81, &qword_1EBE92838);
  return sub_1C0F9E21C(v48, &qword_1EBE92808);
}

uint64_t sub_1C108CA24@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE92840);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1C12AEEB0;
  sub_1C1265170();
  *(v2 + 32) = sub_1C12657E0();
  *(v2 + 40) = v3;
  *(v2 + 48) = View.gradientStop(min:max:stopLocation:)(0.0, 0.7, 0.1);
  *(v2 + 56) = v4;
  *(v2 + 64) = View.gradientStop(min:max:stopLocation:)(0.0, 0.7, 0.2);
  *(v2 + 72) = v5;
  *(v2 + 80) = View.gradientStop(min:max:stopLocation:)(0.0, 0.7, 0.3);
  *(v2 + 88) = v6;
  *(v2 + 96) = View.gradientStop(min:max:stopLocation:)(0.0, 0.7, 0.4);
  *(v2 + 104) = v7;
  *(v2 + 112) = View.gradientStop(min:max:stopLocation:)(0.0, 0.7, 0.5);
  *(v2 + 120) = v8;
  *(v2 + 128) = View.gradientStop(min:max:stopLocation:)(0.0, 0.7, 0.6);
  *(v2 + 136) = v9;
  *(v2 + 144) = View.gradientStop(min:max:stopLocation:)(0.0, 0.7, 0.7);
  *(v2 + 152) = v10;
  *(v2 + 160) = View.gradientStop(min:max:stopLocation:)(0.0, 0.7, 0.8);
  *(v2 + 168) = v11;
  *(v2 + 176) = View.gradientStop(min:max:stopLocation:)(0.0, 0.7, 0.9);
  *(v2 + 184) = v12;
  sub_1C1265160();
  sub_1C12651E0();

  *(v2 + 192) = sub_1C12657E0();
  *(v2 + 200) = v13;
  sub_1C1265B70();
  sub_1C1265B80();
  sub_1C12657F0();
  sub_1C1262F60();
  sub_1C12659A0();
  sub_1C1262C80();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE92810);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1C12A3440;
  sub_1C1265160();
  v15 = sub_1C12651E0();

  *(v14 + 32) = v15;
  sub_1C1265160();
  v16 = sub_1C12651E0();

  *(v14 + 40) = v16;
  sub_1C1265B70();
  sub_1C1265B80();
  MEMORY[0x1C68EF140](v14);
  sub_1C1262F60();
  sub_1C12659A0();
  sub_1C1262C80();
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_1C12A3440;
  sub_1C1265160();
  v18 = sub_1C12651E0();

  *(v17 + 32) = v18;
  *(v17 + 40) = sub_1C1265170();
  sub_1C1265B70();
  sub_1C1265B80();
  MEMORY[0x1C68EF140](v17);
  sub_1C1262F60();
  sub_1C12659A0();
  sub_1C1262C80();
  v40[0] = sub_1C1265170();
  sub_1C0FDB76C();
  v19 = sub_1C1265270();
  sub_1C12659A0();
  sub_1C1262C80();
  memcpy(__dst, __src, sizeof(__dst));
  v29[0] = __dst;
  memcpy(v27, v31, sizeof(v27));
  v29[1] = v27;
  memcpy(v26, v30, sizeof(v26));
  v21[0] = v19;
  v21[1] = v33;
  v22 = v34;
  v23 = v35;
  v24 = v36;
  v25 = v37;
  v29[2] = v26;
  v29[3] = v21;
  sub_1C11C2D44(v29, a1);

  memcpy(v38, v26, sizeof(v38));
  sub_1C0F9E21C(v38, &qword_1EBE92848);
  memcpy(v39, v27, sizeof(v39));
  sub_1C0F9E21C(v39, &qword_1EBE92848);
  memcpy(v40, __dst, sizeof(v40));
  return sub_1C0F9E21C(v40, &qword_1EBE92848);
}

uint64_t View.gradientStop(min:max:stopLocation:)(double a1, double a2, long double a3)
{
  pow(a3, 3.0);
  sub_1C1265160();
  sub_1C12651E0();

  return sub_1C12657E0();
}

uint64_t get_witness_table_7SwiftUI4ViewRzlAA15ModifiedContentVyxAA16_OverlayModifierVyADyAA6VStackVyAA05TupleC0VyADyAA14LinearGradientVAA12_FrameLayoutVG_ADyAA5ColorVANGtGGAA14_OpacityEffectVGGGAaBHPxAaBHD1__AxA0cG0HPyHCHCTm(uint64_t a1, uint64_t *a2, uint64_t a3, unint64_t *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
  sub_1C1263190();
  sub_1C0FDB6D4(a4, a2);
  return swift_getWitnessTable();
}

uint64_t sub_1C108D06C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE92800);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t View.photosPresentationSource(transitionKind:layoutKind:borders:backgroundColor:detailsPlaceholderColor:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X8>)
{
  v9 = MEMORY[0x1EEE9AC00](a1);
  v11 = &v24[-2] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v9;
  v14 = *v13;
  v16 = *v15;
  v17 = *(v15 + 8);
  v23 = *(v15 + 16);
  v18 = *(v15 + 32);
  (*(v19 + 16))(v11, v21, v20);
  v28 = v12;
  v27 = v14;
  v24[0] = v16;
  v24[1] = v17;
  v25 = v23;
  v26 = v18;

  return sub_1C108D528(v11, &v28, &v27, v24, a2, a3, a4, a5);
}

void sub_1C108D240(uint64_t (*a1)(id *), uint64_t a2, uint64_t a3)
{
  v5 = sub_1C0FF7688(a3);
  v6 = 0;
  while (1)
  {
    v7 = v6;
    if (v5 == v6)
    {
      break;
    }

    if ((a3 & 0xC000000000000001) != 0)
    {
      v8 = MEMORY[0x1C68F02D0](v6, a3);
    }

    else
    {
      if (v6 >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_13;
      }

      v8 = *(a3 + 8 * v6 + 32);
    }

    v9 = v8;
    if (__OFADD__(v7, 1))
    {
      __break(1u);
LABEL_13:
      __break(1u);
      return;
    }

    v12 = v8;
    v10 = a1(&v12);

    if (!v3)
    {
      v6 = v7 + 1;
      if ((v10 & 1) == 0)
      {
        continue;
      }
    }

    return;
  }
}

BOOL sub_1C108D334()
{
  OUTLINED_FUNCTION_8_18();
  do
  {
    if (!--v3)
    {
      break;
    }

    v4 = v0(v2);
    if (v1)
    {
      break;
    }

    v2 += 40;
  }

  while ((v4 & 1) == 0);
  return v3 != 0;
}

uint64_t View.representing(_:)()
{
  swift_getKeyPath();
  sub_1C1264A30();
}

uint64_t sub_1C108D3F8()
{
  sub_1C1094FD0();

  return sub_1C12637F0();
}

uint64_t sub_1C108D4AC(uint64_t a1)
{
  sub_1C1094F6C(a1, &v3, &qword_1EBE90620);
  sub_1C1094FD0();
  sub_1C1263800();
  return sub_1C0FFC7B0(a1, &qword_1EBE90620);
}

uint64_t sub_1C108D528@<X0>(uint64_t a1@<X0>, char *a2@<X1>, char *a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v11 = *a2;
  v12 = *a3;
  v13 = *a4;
  v14 = a4[1];
  v22 = *(a4 + 1);
  v15 = a4[4];
  (*(*(a7 - 8) + 32))(a8, a1, a7);
  v16 = type metadata accessor for PhotosDetailsPresentationSourceView();
  *(a8 + v16[9]) = v11;
  *(a8 + v16[10]) = v12;
  v17 = a8 + v16[11];
  *v17 = v13;
  *(v17 + 8) = v14;
  *(v17 + 16) = v22;
  *(v17 + 32) = v15;
  *(a8 + v16[12]) = a5;
  *(a8 + v16[13]) = a6;
  v18 = a8 + v16[14];
  *v18 = swift_getKeyPath();
  *(v18 + 32) = 0;
  v19 = a8 + v16[15];
  *v19 = swift_getKeyPath();
  *(v19 + 8) = 0u;
  *(v19 + 24) = 0u;
  *(v19 + 33) = 0u;
  v20 = a8 + v16[16];
  *v20 = swift_getKeyPath();
  *(v20 + 8) = 0;
  return sub_1C1093850(sub_1C10938D4, 0);
}

uint64_t View.displaying<A>(media:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = MEMORY[0x1EEE9AC00](a1);
  v9 = &v13[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 16))(v9, v7);
  PhotosDisplayableMediaWrapper.init<A>(_:)(v9, a3, a5, v13);
  sub_1C108D7E0();
  sub_1C12649C0();
  return sub_1C0FFC7B0(v13, &qword_1EBE92890);
}

unint64_t sub_1C108D7E0()
{
  result = qword_1EDE7F0B8;
  if (!qword_1EDE7F0B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE7F0B8);
  }

  return result;
}

uint64_t PhotosDetailsNavigationSourceLayoutKind.description.getter()
{
  if (*v0)
  {
    return 0x6567616C6C6F63;
  }

  else
  {
    return 0x676E696C6C6966;
  }
}

uint64_t PhotosDetailsNavigationSourceLayoutKind.hashValue.getter()
{
  v1 = *v0;
  sub_1C1266E90();
  MEMORY[0x1C68F07E0](v1);
  return sub_1C1266EE0();
}

id static PhotosDetailsNavigation.configure(presentingViewController:viewControllerToPresent:sourceViewScrollRequestHandler:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  sub_1C108D9BC(a2, v10);
  v6 = v10[0];

  if (v6 != 2 && (v6 & 1) != 0)
  {
    return sub_1C1266470();
  }

  v8 = OUTLINED_FUNCTION_41_0();

  return sub_1C108E0CC(v8, v9, a3, a4);
}

void sub_1C108D9BC(void *a1@<X0>, uint64_t a2@<X8>)
{
  UIViewController.detailsNavigationContext.getter(&v57);
  v4 = *(&v57 + 1);
  if (*(&v57 + 1))
  {
    v5 = v57;
    v54 = *(&v58 + 1);
    v6 = v58;
    v7 = v59;
    UIViewController.finalizedRepresentedItem.getter(v56);
    if (*(&v56[0] + 1))
    {
      v57 = v56[0];
      v58 = v56[1];
      v59 = v56[2];
      sub_1C11FEE48(&v57, v56);
      v9 = *(&v56[0] + 1);
      v8 = *&v56[0];
      v10 = sub_1C1266400();
      if (qword_1EDE7B5C0 != -1)
      {
        swift_once();
      }

      log = qword_1EDE7B5C8;
      if (os_log_type_enabled(qword_1EDE7B5C8, v10))
      {
        v49 = v6;
        v11 = swift_slowAlloc();
        v47 = swift_slowAlloc();
        v55 = v47;
        *&v56[0] = v8;
        *v11 = 136315138;
        *(&v56[0] + 1) = v9;
        sub_1C1094F44(v8, v9);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE92918);
        v12 = sub_1C1265ED0();
        v14 = sub_1C0FA0E80(v12, v13, &v55);

        *(v11 + 4) = v14;
        _os_log_impl(&dword_1C0F96000, log, v10, "Transition info: %s", v11, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v47);
        MEMORY[0x1C68F1630](v47, -1, -1);
        v15 = v11;
        v6 = v49;
        MEMORY[0x1C68F1630](v15, -1, -1);
      }

      if (v9 == 1)
      {
        if (qword_1EDE791A0 != -1)
        {
          swift_once();
        }

        v16 = byte_1EBEA4890;
        v17 = qword_1EBEA4898;
      }

      else
      {
        v16 = v8;
        v17 = v9;
      }

      if (v16 == 2 || (v16 & 1) != 0)
      {
        sub_1C1094F44(v8, v9);
        sub_1C0FD0978(&v57);
        v44 = v5;
        v45 = v4;
        v46 = v6;
      }

      else
      {
        v51 = v6;
        swift_beginAccess();
        v43 = qword_1EDE7C6F0;
        if (!qword_1EDE7C6F0)
        {
          sub_1C1093918(v5, v4, v51, v54, v7);
          sub_1C0FD0978(&v57);
          goto LABEL_35;
        }

        sub_1C1094F44(v8, v9);
        if (([v43 useZoomTransition] & 1) == 0)
        {
          sub_1C1266410();
          sub_1C1262620();
          sub_1C1093918(v5, v4, v51, v54, v7);
          sub_1C1094F58(v8, v9);
          sub_1C0FD0978(&v57);
          LOBYTE(v16) = 1;
          goto LABEL_35;
        }

        sub_1C0FD0978(&v57);
        v44 = v5;
        v45 = v4;
        v46 = v51;
      }

      sub_1C1093918(v44, v45, v46, v54, v7);
      sub_1C1094F58(v8, v9);
LABEL_35:
      *a2 = v16;
      *(a2 + 8) = v17;
      return;
    }

    loga = v5;
    sub_1C0FFC7B0(v56, &qword_1EBE928A0);
    v29 = sub_1C1266410();
    if (qword_1EDE7B5C0 != -1)
    {
      swift_once();
    }

    v30 = qword_1EDE7B5C8;
    if (os_log_type_enabled(qword_1EDE7B5C8, v29))
    {
      v50 = v4;
      v31 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      *&v57 = v48;
      *v31 = 136315138;
      v32 = a1;
      v33 = [v32 description];
      v34 = sub_1C1265EA0();
      v35 = v6;
      v36 = v7;
      v38 = v37;

      v39 = sub_1C0FA0E80(v34, v38, &v57);
      v7 = v36;
      v6 = v35;

      *(v31 + 4) = v39;
      _os_log_impl(&dword_1C0F96000, v30, v29, "Missing represented item for %s", v31, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v48);
      MEMORY[0x1C68F1630](v48, -1, -1);
      v40 = v31;
      v4 = v50;
      MEMORY[0x1C68F1630](v40, -1, -1);
    }

    if (qword_1EDE791A0 != -1)
    {
      swift_once();
    }

    v41 = byte_1EBEA4890;
    v42 = qword_1EBEA4898;

    sub_1C1093918(loga, v4, v6, v54, v7);
    *a2 = v41;
    *(a2 + 8) = v42;
  }

  else
  {
    v18 = sub_1C1266410();
    if (qword_1EDE7B5C0 != -1)
    {
      swift_once();
    }

    v19 = qword_1EDE7B5C8;
    if (os_log_type_enabled(qword_1EDE7B5C8, v18))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      *&v57 = v21;
      *v20 = 136315138;
      v22 = a1;
      v23 = [v22 description];
      v24 = sub_1C1265EA0();
      v26 = v25;

      v27 = sub_1C0FA0E80(v24, v26, &v57);

      *(v20 + 4) = v27;
      _os_log_impl(&dword_1C0F96000, v19, v18, "Missing details navigation context on %s", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v21);
      MEMORY[0x1C68F1630](v21, -1, -1);
      MEMORY[0x1C68F1630](v20, -1, -1);
    }

    if (qword_1EDE791A0 != -1)
    {
      swift_once();
    }

    v28 = qword_1EBEA4898;
    *a2 = byte_1EBEA4890;
    *(a2 + 8) = v28;
  }
}

id sub_1C108E0CC(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  v8 = qword_1EDE7C6F0;
  if (!qword_1EDE7C6F0)
  {
    goto LABEL_12;
  }

  if (![swift_unknownObjectRetain() useZoomTransition])
  {
    swift_unknownObjectRelease();
LABEL_12:
    sub_1C1266410();
    if (qword_1EDE7B5C0 != -1)
    {
      swift_once();
    }

    return sub_1C1262620();
  }

  if ([a2 representedItem])
  {
    sub_1C12667F0();
    swift_unknownObjectRelease();
    v9 = [a1 presentingViewController];
    if (v9)
    {

      if (([v8 allowZoomFromSheets] & 1) == 0)
      {
        sub_1C1266410();
        if (qword_1EDE7B5C0 != -1)
        {
          swift_once();
        }

        sub_1C1262620();
        goto LABEL_41;
      }
    }

    v10 = 0x1E69DC000uLL;
    if (![v8 ensureOpaqueDestination])
    {
LABEL_34:
      v38 = objc_opt_self();
      v39 = swift_allocObject();
      swift_unknownObjectWeakInit();
      sub_1C0FA139C(v62, v61);
      v40 = swift_allocObject();
      *(v40 + 16) = v39;
      *(v40 + 24) = a3;
      *(v40 + 32) = a4;
      sub_1C0FD09FC(v61, (v40 + 40));
      v59 = sub_1C1094E2C;
      v60 = v40;
      v55 = MEMORY[0x1E69E9820];
      v56 = 1107296256;
      v57 = sub_1C108F8C4;
      v58 = &block_descriptor_7;
      v41 = _Block_copy(&v55);
      sub_1C0FCF1B4(a3);

      v42 = [v38 zoomWithSourceViewProvider_];
      _Block_release(v41);
      v43 = objc_allocWithZone(type metadata accessor for PhotosDetailsNavigationViewControllerTransitionOptions());
      v44 = a2;
      v45 = sub_1C1234004(v44);
      if ([v8 customZoomTransitionDimming])
      {
        v46 = v45;
        [v8 zoomTransitionDimmingWhite];
        v48 = v47;
        [v8 zoomTransitionDimmingOpacity];
        v50 = [objc_allocWithZone(*(v10 + 2184)) initWithWhite:v48 alpha:v49];
        [v46 setDimmingColor_];
      }

      if ([v8 customZoomTransitionDimmingBlurEffect])
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE92360);
        v51 = swift_allocObject();
        *(v51 + 16) = xmmword_1C12A3AB0;
        v52 = v45;
        *(v51 + 32) = [objc_opt_self() effectWithStyle_];
        sub_1C1093984(v51, v52);
      }

      [v42 _setOptions_];
      if ([v8 useSystemSwipeToDismiss])
      {
        v53 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v59 = sub_1C1094E44;
        v60 = v53;
        v55 = MEMORY[0x1E69E9820];
        v56 = 1107296256;
        v57 = sub_1C108FAB4;
        v58 = &block_descriptor_47;
        v54 = _Block_copy(&v55);

        [v42 set:v54 interactiveDismissShouldBeginHandler:?];
        _Block_release(v54);
      }

      [v44 _setPreferredTransition_];
      [v44 setShouldUseSystemSwipeToDismiss_];

LABEL_41:
      swift_unknownObjectRelease();
      return __swift_destroy_boxed_opaque_existential_0Tm(v62);
    }

    result = [a2 view];
    if (result)
    {
      v12 = result;
      v13 = [result backgroundColor];

      if (v13)
      {
LABEL_33:

        goto LABEL_34;
      }

      sub_1C108D9BC(a2, &v55);
      if (v56)
      {
        sub_1C0FDE8F8(0, &qword_1EDE76940);
        v14 = sub_1C1266680();
      }

      else
      {
        v30 = [v8 useDebugColors];
        v31 = objc_opt_self();
        if (v30)
        {
          v32 = [v31 purpleColor];
        }

        else
        {
          v32 = [v31 systemBlackColor];
        }

        v14 = v32;
      }

      v33 = v14;
      v13 = sub_1C108ED04();
      swift_getObjectType();
      if (dynamic_cast_existential_1_conditional(v13))
      {
        v35 = v34;
        ObjectType = swift_getObjectType();
        (*(v35 + 16))(v33, ObjectType, v35);
        v10 = 0x1E69DC000;
        goto LABEL_33;
      }

      result = [a2 view];
      if (result)
      {
        v37 = result;
        [result setBackgroundColor_];

        v13 = v33;
        goto LABEL_33;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }

  else
  {
    v15 = sub_1C1266410();
    if (qword_1EDE7B5C0 != -1)
    {
      swift_once();
    }

    v16 = qword_1EDE7B5C8;
    if (os_log_type_enabled(qword_1EDE7B5C8, v15))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v55 = v18;
      *v17 = 136315138;
      v62[0] = &type metadata for PhotosDetailsNavigation;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE92900);
      v19 = sub_1C1265ED0();
      v21 = sub_1C0FA0E80(v19, v20, &v55);

      *(v17 + 4) = v21;
      _os_log_impl(&dword_1C0F96000, v16, v15, "Disabling zoom transition because of missing represented item: %s", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v18);
      MEMORY[0x1C68F1630](v18, -1, -1);
      MEMORY[0x1C68F1630](v17, -1, -1);
    }

    v22 = sub_1C1266400();
    if (os_log_type_enabled(v16, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v55 = v24;
      *v23 = 136315138;
      v25 = [a2 representedItemDiagnosticDescription];
      v26 = sub_1C1265EA0();
      v28 = v27;

      v29 = sub_1C0FA0E80(v26, v28, &v55);

      *(v23 + 4) = v29;
      _os_log_impl(&dword_1C0F96000, v16, v22, "%s", v23, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v24);
      MEMORY[0x1C68F1630](v24, -1, -1);
      MEMORY[0x1C68F1630](v23, -1, -1);
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

id static PhotosDetailsNavigation.defaultZoomTransitionOptions.getter()
{
  OUTLINED_FUNCTION_12_11();
  v0 = qword_1EDE7C6F0;
  if (!qword_1EDE7C6F0)
  {
    return 0;
  }

  v1 = objc_allocWithZone(MEMORY[0x1E69DD320]);
  swift_unknownObjectRetain();
  v2 = [v1 init];
  if ([v0 customZoomTransitionDimming])
  {
    [v0 zoomTransitionDimmingWhite];
    v4 = v3;
    [v0 zoomTransitionDimmingOpacity];
    v6 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithWhite:v4 alpha:v5];
    [v2 setDimmingColor_];
  }

  if ([v0 customZoomTransitionDimmingBlurEffect])
  {
    v7 = [objc_opt_self() effectWithStyle_];
    [v2 setDimmingVisualEffect_];
  }

  swift_unknownObjectRelease();
  return v2;
}

void UIViewController.detailsNavigationContext.getter(uint64_t *a1@<X8>)
{
  v2 = sub_1C108FC14();
  v3 = *&v2[OBJC_IVAR____TtCE17PhotosSwiftUICoreCSo16UIViewControllerP33_BC75BA9775690B5F54CDBFF2E7C5972414AssociatedData_detailsNavigationContext];
  v4 = *&v2[OBJC_IVAR____TtCE17PhotosSwiftUICoreCSo16UIViewControllerP33_BC75BA9775690B5F54CDBFF2E7C5972414AssociatedData_detailsNavigationContext + 8];
  v5 = *&v2[OBJC_IVAR____TtCE17PhotosSwiftUICoreCSo16UIViewControllerP33_BC75BA9775690B5F54CDBFF2E7C5972414AssociatedData_detailsNavigationContext + 16];
  v6 = *&v2[OBJC_IVAR____TtCE17PhotosSwiftUICoreCSo16UIViewControllerP33_BC75BA9775690B5F54CDBFF2E7C5972414AssociatedData_detailsNavigationContext + 24];
  v7 = *&v2[OBJC_IVAR____TtCE17PhotosSwiftUICoreCSo16UIViewControllerP33_BC75BA9775690B5F54CDBFF2E7C5972414AssociatedData_detailsNavigationContext + 32];
  v8 = *&v2[OBJC_IVAR____TtCE17PhotosSwiftUICoreCSo16UIViewControllerP33_BC75BA9775690B5F54CDBFF2E7C5972414AssociatedData_detailsNavigationContext + 40];
  sub_1C108FCEC(v3, v4, v5, v6, v7);

  *a1 = v3;
  a1[1] = v4;
  a1[2] = v5;
  a1[3] = v6;
  a1[4] = v7;
  a1[5] = v8;
}

id UIViewController.finalizedRepresentedItem.getter@<X0>(uint64_t a1@<X8>)
{
  result = [v1 representedItem];
  if (!result)
  {
    *(a1 + 16) = 0u;
    *(a1 + 32) = 0u;
    *a1 = 0u;
    return result;
  }

  sub_1C12667F0();
  swift_unknownObjectRelease();
  sub_1C0FD09FC(&v11, v13);
  sub_1C109047C(&v11);
  v4 = *(&v11 + 1);
  if (!*(&v11 + 1))
  {
    if (qword_1EDE80640 != -1)
    {
      OUTLINED_FUNCTION_10_3();
    }

    v6 = qword_1EDE80648;
    v4 = unk_1EDE80650;
    v5 = qword_1EDE80668;

    v8 = OUTLINED_FUNCTION_41_0();
    sub_1C0FCF1B4(v8);
    if (v5)
    {
      goto LABEL_4;
    }

LABEL_9:
    sub_1C0FA139C(v13, &v11);
    goto LABEL_10;
  }

  v5 = v12;
  v6 = v11;
  if (!v12)
  {
    goto LABEL_9;
  }

LABEL_4:

  v5(v10, v13);
  v7 = OUTLINED_FUNCTION_41_0();
  sub_1C0FCF004(v7);
  sub_1C0FD09FC(v10, &v11);
LABEL_10:
  sub_1C10C8EF4(&v11, (a1 + 16));
  __swift_destroy_boxed_opaque_existential_0Tm(&v11);
  *a1 = v6;
  *(a1 + 8) = v4;

  __swift_destroy_boxed_opaque_existential_0Tm(v13);

  v9 = OUTLINED_FUNCTION_41_0();
  return sub_1C0FCF004(v9);
}

id sub_1C108ED04()
{
  objc_opt_self();
  v0 = swift_dynamicCastObjCClass();
  if (!v0 || (result = [v0 topViewController]) == 0)
  {

    return v2;
  }

  return result;
}

uint64_t sub_1C108ED78(void *a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, void *), uint64_t a4, uint64_t a5)
{
  Strong = [a1 presentingViewController];
  if (!Strong)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (!Strong)
    {
      goto LABEL_36;
    }
  }

  v9 = Strong;
  v10 = [Strong view];
  UIViewController.detailsNavigationContext.getter(&v47);
  if (*(&v47 + 1))
  {
    sub_1C1093918(v47, *(&v47 + 1), v48, *(&v48 + 1), v49);
  }

  else
  {
    sub_1C108F43C(0xD000000000000022, 0x80000001C126B330, a1);
  }

  UIViewController.finalizedRepresentedItem.getter(v46);
  if (!*(&v46[0] + 1))
  {
    sub_1C0FFC7B0(v46, &qword_1EBE928A0);
    sub_1C108F43C(0xD000000000000018, 0x80000001C126B360, a1);
    if (v10)
    {

      return v10;
    }

    goto LABEL_34;
  }

  v47 = v46[0];
  v48 = v46[1];
  v49 = v46[2];
  v11 = &qword_1EDE7B000;
  if (!a3)
  {
LABEL_23:
    v45[3] = &type metadata for PhotosDetailsNavigationContextualItem;
    v45[0] = swift_allocObject();
    sub_1C0FF8B74(&v47, v45[0] + 16);
    transitionSourceID(for:)(v45, v46);
    __swift_destroy_boxed_opaque_existential_0Tm(v45);
    v23 = [v9 view];
    if (v23)
    {
      v24 = v23;
      sub_1C1034138();
      v25 = sub_1C1266650();

      if (v25)
      {

        sub_1C0FD0978(v46);
        sub_1C0FD0978(&v47);
        return v25;
      }

      else
      {
        v26 = sub_1C1266410();
        if (qword_1EDE7B5C0 != -1)
        {
          swift_once();
        }

        v27 = v11[185];
        sub_1C0FF8B74(v46, v45);
        sub_1C0FF8B74(&v47, v44);
        if (os_log_type_enabled(v27, v26))
        {
          v28 = swift_slowAlloc();
          v29 = swift_slowAlloc();
          v43 = v29;
          *v28 = 136315394;
          sub_1C0FF8B74(v45, &v41);
          v30 = sub_1C1265ED0();
          v32 = v31;
          sub_1C0FD0978(v45);
          v33 = sub_1C0FA0E80(v30, v32, &v43);

          *(v28 + 4) = v33;
          *(v28 + 12) = 2080;
          v41 = 91;
          v42 = 0xE100000000000000;
          MEMORY[0x1C68EF850](v44[0], v44[1]);
          MEMORY[0x1C68EF850](47, 0xE100000000000000);
          v34 = sub_1C0FD0524();
          MEMORY[0x1C68EF850](v34);

          MEMORY[0x1C68EF850](93, 0xE100000000000000);
          v35 = v41;
          v36 = v42;
          sub_1C0FD0978(v44);
          v37 = sub_1C0FA0E80(v35, v36, &v43);

          *(v28 + 14) = v37;
          _os_log_impl(&dword_1C0F96000, v27, v26, "Failed to find source view with id: %s for represented item: %s", v28, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x1C68F1630](v29, -1, -1);
          MEMORY[0x1C68F1630](v28, -1, -1);
        }

        else
        {

          sub_1C0FD0978(v44);
          sub_1C0FD0978(v45);
        }

        sub_1C0FD0978(v46);
        sub_1C0FD0978(&v47);
      }

      return v10;
    }

    __break(1u);
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  if (![a1 representedItem])
  {
LABEL_11:
    sub_1C0FCF004(a3);
    goto LABEL_23;
  }

  sub_1C12667F0();
  swift_unknownObjectRelease();
  sub_1C0FA139C(v46, v45);
  sub_1C0FA139C(a5, v44);
  v12 = sub_1C0FCFE68(v45, v44);
  sub_1C0FD0A94(v44);
  sub_1C0FD0A94(v45);
  if (v12)
  {
    __swift_destroy_boxed_opaque_existential_0Tm(v46);
    goto LABEL_11;
  }

  sub_1C0FA139C(v46, v45);
  a3(&v43, v45);
  sub_1C1094EF0(v45);
  if ((v43 & 0x100) != 0)
  {
    v40 = sub_1C1266410();
    if (qword_1EDE7B5C0 != -1)
    {
      swift_once();
    }

    v13 = qword_1EDE7B5C8;
    sub_1C0FA139C(v46, v45);
    if (os_log_type_enabled(v13, v40))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v41 = v15;
      *v14 = 136315138;
      sub_1C0FA139C(v45, v44);
      v16 = sub_1C1265ED0();
      log = v13;
      v18 = v17;
      __swift_destroy_boxed_opaque_existential_0Tm(v45);
      v19 = sub_1C0FA0E80(v16, v18, &v41);

      *(v14 + 4) = v19;
      _os_log_impl(&dword_1C0F96000, log, v40, "Failed to scroll source view to %s", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v15);
      MEMORY[0x1C68F1630](v15, -1, -1);
      v20 = v14;
      v11 = &qword_1EDE7B000;
      MEMORY[0x1C68F1630](v20, -1, -1);
      sub_1C0FCF004(a3);
    }

    else
    {
      sub_1C0FCF004(a3);
      __swift_destroy_boxed_opaque_existential_0Tm(v45);
    }

    goto LABEL_22;
  }

  v21 = [v9 view];
  if (v21)
  {
    v22 = v21;
    [v21 layoutIfNeeded];
    sub_1C0FCF004(a3);

LABEL_22:
    __swift_destroy_boxed_opaque_existential_0Tm(v46);
    goto LABEL_23;
  }

LABEL_35:
  __break(1u);
LABEL_36:
  result = sub_1C1266B70();
  __break(1u);
  return result;
}

uint64_t sub_1C108F43C(uint64_t a1, unint64_t a2, void *a3)
{
  v6 = sub_1C1266410();
  if (qword_1EDE7B5C0 != -1)
  {
    swift_once();
  }

  v7 = qword_1EDE7B5C8;
  if (os_log_type_enabled(qword_1EDE7B5C8, v6))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v25 = v9;
    *v8 = 136315394;
    *(v8 + 4) = sub_1C0FA0E80(a1, a2, &v25);
    *(v8 + 12) = 2080;
    v10 = a3;
    v11 = [v10 description];
    v12 = sub_1C1265EA0();
    v14 = v13;

    v15 = sub_1C0FA0E80(v12, v14, &v25);

    *(v8 + 14) = v15;
    _os_log_impl(&dword_1C0F96000, v7, v6, "Presented view controller error: %s %s", v8, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1C68F1630](v9, -1, -1);
    MEMORY[0x1C68F1630](v8, -1, -1);
  }

  v16 = sub_1C1266400();
  result = os_log_type_enabled(v7, v16);
  if (result)
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v25 = v19;
    *v18 = 136315138;
    v20 = [a3 representedItemDiagnosticDescription];
    v21 = sub_1C1265EA0();
    v23 = v22;

    v24 = sub_1C0FA0E80(v21, v23, &v25);

    *(v18 + 4) = v24;
    _os_log_impl(&dword_1C0F96000, v7, v16, "%s", v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v19);
    MEMORY[0x1C68F1630](v19, -1, -1);
    return MEMORY[0x1C68F1630](v18, -1, -1);
  }

  return result;
}

uint64_t transitionSourceID(for:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1C0FA139C(a1, v20);
  result = swift_dynamicCast();
  if (result)
  {
    v5 = v18;
    *a2 = v17;
    *(a2 + 16) = v5;
    *(a2 + 32) = v19;
  }

  else
  {
    v18 = 0u;
    v19 = 0u;
    v17 = 0u;
    sub_1C0FFC7B0(&v17, &qword_1EBE928A0);
    v6 = sub_1C1266410();
    if (qword_1EDE7B5C0 != -1)
    {
      OUTLINED_FUNCTION_3_22();
    }

    v7 = qword_1EDE7B5C8;
    sub_1C0FA139C(a1, &v17);
    if (os_log_type_enabled(v7, v6))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v16 = v9;
      *v8 = 136315138;
      sub_1C0FA139C(&v17, v20);
      v10 = sub_1C1265ED0();
      v12 = v11;
      __swift_destroy_boxed_opaque_existential_0Tm(&v17);
      v13 = sub_1C0FA0E80(v10, v12, &v16);

      *(v8 + 4) = v13;
      _os_log_impl(&dword_1C0F96000, v7, v6, "Unexpected represented item: %s", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v9);
      MEMORY[0x1C68F1630](v9, -1, -1);
      MEMORY[0x1C68F1630](v8, -1, -1);
    }

    else
    {
      __swift_destroy_boxed_opaque_existential_0Tm(&v17);
    }

    if (qword_1EDE80640 != -1)
    {
      OUTLINED_FUNCTION_10_3();
    }

    v15 = qword_1EDE80648;
    v14 = unk_1EDE80650;
    sub_1C0FA139C(a1, a2 + 16);
    *a2 = v15;
    *(a2 + 8) = v14;
  }

  return result;
}

id sub_1C108F8C4(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v5 = v3();

  return v5;
}

uint64_t sub_1C108F92C(void *a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = [Strong viewIfLoaded];
    if (v4)
    {
      v5 = v4;
      v6 = [a1 velocity];
      v8 = v7;
      v10 = v9;
      MEMORY[0x1C68F0BA0](v6, v9, v7);
      PXRadiansToDegrees();
      if (sub_1C1261F80())
      {
        v11 = 2;
      }

      else if (sub_1C1261F80())
      {
        v11 = 2;
      }

      else
      {
        v11 = 1;
      }

      [a1 location];
      v14 = v13;
      v16 = v15;
      v17 = v5;
      v18 = [a1 proposedBeginState];
      v19 = v17;
      v12 = sub_1C1093A08(v19, v11, v18, v3, v14, v16, v8, v10);

      v3 = v19;
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  return v12 & 1;
}

uint64_t sub_1C108FAB4(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  LOBYTE(v3) = v3();

  return v3 & 1;
}

double sub_1C108FB0C@<D0>(_OWORD *a1@<X8>)
{
  UIViewController.detailsNavigationContext.getter(v4);
  v2 = v4[1];
  *a1 = v4[0];
  a1[1] = v2;
  result = *&v5;
  a1[2] = v5;
  return result;
}

void sub_1C108FB50(uint64_t *a1)
{
  v1 = a1[1];
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  v5 = a1[5];
  v6[0] = *a1;
  v6[1] = v1;
  v6[2] = v2;
  v6[3] = v3;
  v6[4] = v4;
  v6[5] = v5;
  sub_1C108FCEC(v6[0], v1, v2, v3, v4);
  UIViewController.detailsNavigationContext.setter(v6);
}

void UIViewController.detailsNavigationContext.setter(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v11 = sub_1C108FC14();
  v4 = OUTLINED_FUNCTION_6_17(v11 + OBJC_IVAR____TtCE17PhotosSwiftUICoreCSo16UIViewControllerP33_BC75BA9775690B5F54CDBFF2E7C5972414AssociatedData_detailsNavigationContext);
  v5 = *(a1 + 16);
  *v6 = *a1;
  *(v6 + 16) = v5;
  *(v6 + 32) = v2;
  *(v6 + 40) = v3;
  sub_1C1093918(v4, v7, v8, v9, v10);
}

id sub_1C108FC14()
{
  v1 = v0;
  v2 = sub_1C10909D4();
  if (v2)
  {
    return v2;
  }

  v3 = [objc_allocWithZone(_s14AssociatedDataCMa()) init];
  if (qword_1EDE7B658 != -1)
  {
    swift_once();
  }

  v4 = sub_1C1262410();
  __swift_project_value_buffer(v4, qword_1EDE7B660);
  swift_beginAccess();
  v5 = sub_1C12623F0();
  swift_endAccess();
  objc_setAssociatedObject(v1, v5, v3, 1);
  return v3;
}

void sub_1C108FCEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a2)
  {

    sub_1C0FCF1B4(a5);
  }
}

void (*UIViewController.detailsNavigationContext.modify(uint64_t **a1))(uint64_t **a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x38uLL);
  *a1 = v3;
  v3[6] = v1;
  UIViewController.detailsNavigationContext.getter(v3);
  return sub_1C108FDBC;
}

void sub_1C108FDBC(uint64_t **a1, char a2)
{
  v3 = *a1;
  v4 = **a1;
  v5 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  v8 = v3[4];
  v9 = v3[5];
  v10[0] = v4;
  v10[1] = v5;
  v10[2] = v6;
  v10[3] = v7;
  v10[4] = v8;
  v10[5] = v9;
  if (a2)
  {
    sub_1C108FCEC(v4, v5, v6, v7, v8);
    UIViewController.detailsNavigationContext.setter(v10);
    sub_1C1093918(*v3, v3[1], v3[2], v3[3], v3[4]);
  }

  else
  {
    UIViewController.detailsNavigationContext.setter(v10);
  }

  free(v3);
}

id sub_1C108FE50(void *a1)
{
  v1 = a1;
  UIViewController.representedItemDiagnosticDescription.getter();

  v2 = sub_1C1265E70();

  return v2;
}

uint64_t UIViewController.representedItemDiagnosticDescription.getter()
{
  v1 = v0;
  if ([v0 representedItem])
  {
    sub_1C12667F0();
    swift_unknownObjectRelease();
    sub_1C0FD09FC(v52, v53);
    sub_1C0FA139C(v53, v52);
    v44 = sub_1C1265ED0();
    v3 = v2;
    __swift_destroy_boxed_opaque_existential_0Tm(v53);
  }

  else
  {
    v3 = 0xE100000000000000;
    v44 = 45;
  }

  v4 = [v0 childViewControllerForRepresentedItem];
  if (v4)
  {
    v5 = v4;
    v6 = [v4 description];
    v43 = sub_1C1265EA0();
    v8 = v7;
  }

  else
  {
    v8 = 0xE100000000000000;
    v43 = 45;
  }

  sub_1C109047C(v53);
  if (*(&v53[0] + 1))
  {
    v9 = sub_1C1265ED0();
    v11 = v10;
  }

  else
  {
    v11 = 0xE100000000000000;
    v9 = 45;
  }

  UIViewController.finalizedRepresentedItem.getter(v52);
  if (*(&v52[0] + 1))
  {
    v53[0] = v52[0];
    v53[1] = v52[1];
    v53[2] = v52[2];
    *&v52[0] = 91;
    *(&v52[0] + 1) = 0xE100000000000000;
    MEMORY[0x1C68EF850](*&v53[0], *(&v53[0] + 1));
    MEMORY[0x1C68EF850](47, 0xE100000000000000);
    v12 = sub_1C0FD0524();
    MEMORY[0x1C68EF850](v12);

    MEMORY[0x1C68EF850](93, 0xE100000000000000);
    v13 = *(&v52[0] + 1);
    v14 = *&v52[0];
    sub_1C0FD0978(v53);
  }

  else
  {
    sub_1C0FFC7B0(v52, &qword_1EBE928A0);
    v13 = 0xE100000000000000;
    v14 = 45;
  }

  *&v53[0] = 0;
  *(&v53[0] + 1) = 0xE000000000000000;
  sub_1C1266940();
  v15 = v1;
  v16 = [v15 description];
  v17 = sub_1C1265EA0();
  v19 = v18;

  MEMORY[0x1C68EF850](v17, v19);

  MEMORY[0x1C68EF850](0xD000000000000014, 0x80000001C126B0A0);
  MEMORY[0x1C68EF850](v44, v3);

  MEMORY[0x1C68EF850](0xD00000000000001CLL, 0x80000001C126B0C0);
  MEMORY[0x1C68EF850](v43, v8);

  OUTLINED_FUNCTION_13_12();
  MEMORY[0x1C68EF850](v9, v11);

  OUTLINED_FUNCTION_13_12();
  MEMORY[0x1C68EF850](v14, v13);

  v20 = [v15 childViewControllers];
  sub_1C0FDE8F8(0, &qword_1EDE7B648);
  v21 = sub_1C12660B0();

  v51 = v21;
  v22 = [v15 childViewControllerForRepresentedItem];
  if (v22)
  {
    v23 = v22;
    *&v52[0] = v22;
    MEMORY[0x1EEE9AC00](v22);
    v41 = v52;
    sub_1C108D240(sub_1C1093E30, v40, v21);
    if ((v24 & 1) == 0)
    {
      MEMORY[0x1C68EF9D0]();
      if (*((v51 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v51 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        goto LABEL_28;
      }

      goto LABEL_17;
    }
  }

  while (sub_1C0FF7688(v21) >= 1)
  {
    MEMORY[0x1C68EF850](31754, 0xE200000000000000);
    v25 = sub_1C0FF7688(v21);
    if (!v25)
    {
      break;
    }

    v26 = v25;
    if (v25 >= 1)
    {
      v27 = 0;
      v44 = v21 & 0xC000000000000001;
      v28 = MEMORY[0x1E69E6158];
      v29 = v21;
      do
      {
        if (v44)
        {
          v30 = MEMORY[0x1C68F02D0](v27, v21);
        }

        else
        {
          v30 = *(v21 + 8 * v27 + 32);
        }

        v31 = v30;
        ++v27;
        *&v52[0] = 0x2D2D2D2B0ALL;
        *(&v52[0] + 1) = 0xE500000000000000;
        v32 = [v30 representedItemDiagnosticDescription];
        v33 = sub_1C1265EA0();
        v35 = v34;

        v49 = v33;
        v50 = v35;
        v46 = 0xE500000000000000;
        v47 = 10;
        v48 = 0xE100000000000000;
        v45 = 0x2020202E0ALL;
        v41 = sub_1C0FDB9AC();
        v42 = v41;
        v40[0] = v28;
        v40[1] = v41;
        v36 = sub_1C12667C0();
        v38 = v37;

        MEMORY[0x1C68EF850](v36, v38);

        MEMORY[0x1C68EF850](*&v52[0], *(&v52[0] + 1));

        v21 = v29;
      }

      while (v26 != v27);
      break;
    }

    __break(1u);
LABEL_28:
    sub_1C12660F0();
LABEL_17:
    sub_1C1266160();
    v21 = v51;
  }

  return *&v53[0];
}

void sub_1C109047C(uint64_t *a1@<X8>)
{
  v2 = sub_1C10909D4();
  if (v2)
  {
    v3 = v2;
    v4 = *(v2 + OBJC_IVAR____TtCE17PhotosSwiftUICoreCSo16UIViewControllerP33_BC75BA9775690B5F54CDBFF2E7C5972414AssociatedData_detailsNavigationContext);
    v5 = *(v2 + OBJC_IVAR____TtCE17PhotosSwiftUICoreCSo16UIViewControllerP33_BC75BA9775690B5F54CDBFF2E7C5972414AssociatedData_detailsNavigationContext + 8);
    v6 = *(v2 + OBJC_IVAR____TtCE17PhotosSwiftUICoreCSo16UIViewControllerP33_BC75BA9775690B5F54CDBFF2E7C5972414AssociatedData_detailsNavigationContext + 16);
    v7 = *(v2 + OBJC_IVAR____TtCE17PhotosSwiftUICoreCSo16UIViewControllerP33_BC75BA9775690B5F54CDBFF2E7C5972414AssociatedData_detailsNavigationContext + 24);
    v8 = *(v2 + OBJC_IVAR____TtCE17PhotosSwiftUICoreCSo16UIViewControllerP33_BC75BA9775690B5F54CDBFF2E7C5972414AssociatedData_detailsNavigationContext + 32);
    v9 = *(v2 + OBJC_IVAR____TtCE17PhotosSwiftUICoreCSo16UIViewControllerP33_BC75BA9775690B5F54CDBFF2E7C5972414AssociatedData_detailsNavigationContext + 40);
    sub_1C108FCEC(v4, v5, v6, v7, v8);
  }

  else
  {
    v4 = 0;
    v5 = 0;
    v6 = 0;
    v7 = 0;
    v8 = 0;
    v9 = 0;
  }

  *a1 = v4;
  a1[1] = v5;
  a1[2] = v6;
  a1[3] = v7;
  a1[4] = v8;
  a1[5] = v9;
}

id UIViewController.presentationSourceView(for:in:)(uint64_t a1, uint64_t *a2)
{
  v3 = v2;
  v6 = *a2;
  v5 = a2[1];
  v7 = a2[4];
  if (v7)
  {

    v7(&v13, a1);
    sub_1C0FCF004(v7);
    sub_1C0FD09FC(&v13, v12);
  }

  else
  {
    sub_1C0FA139C(a1, v12);
  }

  sub_1C10C8EF4(v12, v14);
  __swift_destroy_boxed_opaque_existential_0Tm(v12);
  *&v13 = v6;
  *(&v13 + 1) = v5;
  v11[3] = &type metadata for PhotosDetailsNavigationContextualItem;
  v11[0] = swift_allocObject();
  sub_1C0FF8B74(&v13, v11[0] + 16);

  transitionSourceID(for:)(v11, v12);
  __swift_destroy_boxed_opaque_existential_0Tm(v11);
  result = [v3 view];
  if (result)
  {
    v9 = result;
    sub_1C1034138();
    v10 = sub_1C1266660();

    sub_1C0FD0978(v12);
    sub_1C0FD0978(&v13);
    return v10;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1C1090674(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>)
{
  v9 = [v4 viewIfLoaded];
  if (!v9)
  {
    goto LABEL_16;
  }

  v10 = v9;
  [v9 convertPoint:a1 fromCoordinateSpace:{a3, a4}];
  if (![v10 pointInside:0 withEvent:?])
  {

LABEL_16:
    *(a2 + 32) = 0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
    return;
  }

  v21 = v4;
  sub_1C0FDE8F8(0, &qword_1EDE7B648);
  v11 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE92910);
  if (swift_dynamicCast())
  {

LABEL_18:
    sub_1C0F9DDE4(&v18, v22);
    sub_1C0F9DDE4(v22, a2);
  }

  else
  {
    v20 = 0;
    v18 = 0u;
    v19 = 0u;
    sub_1C0FFC7B0(&v18, &qword_1EBE92908);
    v12 = [v11 childViewControllers];
    v13 = sub_1C12660B0();

    v14 = sub_1C0FF7688(v13);
    for (i = 0; ; ++i)
    {
      if (v14 == i)
      {

        goto LABEL_16;
      }

      if ((v13 & 0xC000000000000001) != 0)
      {
        v16 = MEMORY[0x1C68F02D0](i, v13);
      }

      else
      {
        if (i >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_20;
        }

        v16 = *(v13 + 8 * i + 32);
      }

      v17 = v16;
      if (__OFADD__(i, 1))
      {
        break;
      }

      sub_1C1090674(&v18, a1, a3, a4);

      if (*(&v19 + 1))
      {

        goto LABEL_18;
      }

      sub_1C0FFC7B0(&v18, &qword_1EBE92908);
    }

    __break(1u);
LABEL_20:
    __break(1u);
  }
}

id sub_1C10908B8()
{
  v1 = &v0[OBJC_IVAR____TtCE17PhotosSwiftUICoreCSo16UIViewControllerP33_BC75BA9775690B5F54CDBFF2E7C5972414AssociatedData_detailsNavigationContext];
  v2 = _s14AssociatedDataCMa();
  *v1 = 0u;
  *(v1 + 1) = 0u;
  *(v1 + 2) = 0u;
  v4.receiver = v0;
  v4.super_class = v2;
  return objc_msgSendSuper2(&v4, sel_init);
}

id sub_1C1090934()
{
  v2.receiver = v0;
  v2.super_class = _s14AssociatedDataCMa();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1C1090988()
{
  v0 = sub_1C1262410();
  __swift_allocate_value_buffer(v0, qword_1EDE7B660);
  __swift_project_value_buffer(v0, qword_1EDE7B660);
  return sub_1C1262400();
}

uint64_t sub_1C10909D4()
{
  v1 = v0;
  if (qword_1EDE7B658 != -1)
  {
    swift_once();
  }

  v2 = sub_1C1262410();
  __swift_project_value_buffer(v2, qword_1EDE7B660);
  swift_beginAccess();
  v3 = sub_1C12623F0();
  swift_endAccess();
  if (objc_getAssociatedObject(v1, v3))
  {
    sub_1C12667F0();
    swift_unknownObjectRelease();
  }

  else
  {
    v6 = 0u;
    v7 = 0u;
  }

  v8[0] = v6;
  v8[1] = v7;
  if (*(&v7 + 1))
  {
    _s14AssociatedDataCMa();
    if (swift_dynamicCast())
    {
      return v5;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_1C0FFC7B0(v8, &qword_1EBE90620);
    return 0;
  }
}

uint64_t photosDetailsNavigationSettings.setter(uint64_t a1)
{
  swift_beginAccess();
  qword_1EDE7C6F0 = a1;
  return swift_unknownObjectRelease();
}

double sub_1C1090BE0()
{
  result = 0.0;
  xmmword_1EDE78E00 = 0u;
  unk_1EDE78E10 = 0u;
  return result;
}

uint64_t sub_1C1090BF4@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EDE7F530 != -1)
  {
    swift_once();
  }

  return sub_1C1094F6C(&xmmword_1EDE78E00, a1, &qword_1EBE90620);
}

double sub_1C1090C64()
{
  qword_1EBE92888 = 0;
  result = 0.0;
  xmmword_1EBE92868 = 0u;
  unk_1EBE92878 = 0u;
  xmmword_1EBE92858 = 0u;
  return result;
}

double sub_1C1090C80(__int128 *a1, void (*a2)(__int128 *__return_ptr))
{
  if (*(a1 + 3))
  {
    v3 = a1[1];
    v6 = *a1;
    v7 = v3;
    v8 = a1[2];
    v9 = *(a1 + 6);
  }

  else
  {
    a2(&v6);
  }

  v4 = v7;
  *a1 = v6;
  a1[1] = v4;
  result = *&v8;
  a1[2] = v8;
  *(a1 + 6) = v9;
  return result;
}

uint64_t sub_1C1090CF4@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EDE7F0C8 != -1)
  {
    swift_once();
  }

  return sub_1C1094F6C(&xmmword_1EBE92858, a1, &qword_1EBE92890);
}

uint64_t sub_1C1090D68()
{
  sub_1C0FDE8F8(0, &qword_1EDE7B5B0);
  result = sub_1C1266750();
  qword_1EDE7B5C8 = result;
  return result;
}

id static OS_os_log.photosDetailsNavigation.getter()
{
  if (qword_1EDE7B5C0 != -1)
  {
    OUTLINED_FUNCTION_3_22();
  }

  v1 = qword_1EDE7B5C8;

  return v1;
}

uint64_t sub_1C1090E2C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v206 = a2;
  v5 = *(a1 + 16);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBE92EC0);
  v6 = sub_1C1263190();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE91C40);
  v220 = v6;
  v7 = sub_1C1263190();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBE92ED0);
  v219 = v7;
  v223 = sub_1C1263190();
  v200 = *(v223 - 8);
  MEMORY[0x1EEE9AC00](v223);
  v209 = &v176 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v208 = (&v176 - v10);
  v11 = *(a1 + 24);
  v12 = sub_1C1034138();
  v224 = v5;
  v225 = v11;
  *&v267 = v5;
  *(&v267 + 1) = &type metadata for PhotosDetailsNavigationContextualItem;
  *&v268 = v11;
  v214 = v12;
  *(&v268 + 1) = v12;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v211 = sub_1C1263190();
  v212 = sub_1C1263190();
  v215 = sub_1C1263190();
  v14 = sub_1C1263C30();
  v15 = sub_1C1263190();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE928C0);
  v16 = sub_1C1263190();
  v17 = sub_1C1263190();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE928C8);
  v18 = sub_1C1263190();
  v184 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v183 = &v176 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v182 = &v176 - v21;
  v222 = v22;
  v23 = sub_1C1263C30();
  v197 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v196 = &v176 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v195 = &v176 - v26;
  v210 = a1;
  v27 = a1;
  v28 = v3;
  v191 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v186 = v30;
  v190 = &v176 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v216 = v15;
  v188 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v187 = &v176 - v32;
  v217 = v16;
  v192 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v201 = &v176 - v34;
  v218 = v17;
  v194 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v37 = &v176 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v38);
  v181 = &v176 - v39;
  MEMORY[0x1EEE9AC00](v40);
  v202 = &v176 - v41;
  v189 = OpaqueTypeMetadata2;
  v42 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](v43);
  v185 = &v176 - v44;
  v221 = v14;
  v193 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v45);
  v207 = &v176 - v46;
  v47 = sub_1C12637E0();
  v48 = *(v47 - 8);
  MEMORY[0x1EEE9AC00](v47);
  v50 = &v176 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  v205 = v23;
  v51 = sub_1C1263C30();
  v203 = *(v51 - 8);
  v204 = v51;
  MEMORY[0x1EEE9AC00](v51);
  v53 = &v176 - v52;
  sub_1C0FD769C(&v267);
  v213 = v53;
  if (!*(&v268 + 1))
  {
    sub_1C0FFC7B0(&v267, &qword_1EBE90620);
LABEL_7:
    v64 = &v28[*(v210 + 44)];
    v65 = *(v64 + 1);
    v66 = *(v64 + 4);
    *&v267 = *v64;
    *(&v267 + 1) = v65;
    v268 = *(v64 + 1);
    v269 = v66;

    v67 = v209;
    v68 = v225;
    View.photosBorders(_:)(&v267, v225, v209);

    v69 = sub_1C0FDB6D4(&unk_1EDE7B940, &unk_1EBE92EC0);
    v318 = v68;
    v319 = v69;
    WitnessTable = swift_getWitnessTable();
    v71 = sub_1C0FDB6D4(&qword_1EDE7C030, &qword_1EBE91C40);
    v316 = WitnessTable;
    v317 = v71;
    v72 = swift_getWitnessTable();
    v73 = sub_1C0FDB6D4(&qword_1EDE7BC60, &unk_1EBE92ED0);
    v314 = v72;
    v315 = v73;
    v74 = v223;
    v75 = swift_getWitnessTable();
    v76 = v208;
    v207 = v75;
    sub_1C0FDBA4C(v67, v74, v75);
    v210 = v200[1];
    (v210)(v67, v74);
    sub_1C0FDBA4C(v76, v74, v75);
    *&v267 = v224;
    *(&v267 + 1) = &type metadata for PhotosDetailsNavigationContextualItem;
    *&v268 = v225;
    *(&v268 + 1) = v214;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v312 = OpaqueTypeConformance2;
    v313 = v69;
    v310 = swift_getWitnessTable();
    v311 = v71;
    v308 = swift_getWitnessTable();
    v309 = v73;
    v306 = swift_getWitnessTable();
    v307 = OpaqueTypeConformance2;
    v304 = swift_getWitnessTable();
    v78 = MEMORY[0x1E69805D0];
    v305 = MEMORY[0x1E69805D0];
    v79 = swift_getWitnessTable();
    v80 = sub_1C0FDB6D4(&qword_1EDE7BA20, &qword_1EBE928C0);
    v302 = v79;
    v303 = v80;
    v300 = swift_getWitnessTable();
    v301 = v78;
    v81 = swift_getWitnessTable();
    v82 = sub_1C0FDB6D4(&qword_1EDE7BCA0, &qword_1EBE928C8);
    v298 = v81;
    v299 = v82;
    v296 = swift_getWitnessTable();
    v297 = v81;
    swift_getWitnessTable();
    v83 = v209;
    sub_1C1112E18();
    v84 = v83;
    v85 = v225;
    v86 = v210;
    (v210)(v84, v74);
    v86(v208, v74);
    v87 = v214;
    v88 = v224;
    goto LABEL_16;
  }

  sub_1C0FD09FC(&v267, v320);
  swift_beginAccess();
  if (!qword_1EDE7C6F0)
  {
    __swift_destroy_boxed_opaque_existential_0Tm(v320);
    goto LABEL_7;
  }

  v208 = v42;
  v209 = v48;
  v176 = v37;
  v54 = *(v210 + 60);
  v198 = qword_1EDE7C6F0;
  v199 = v28;
  v55 = &v28[v54];
  v56 = *v55;
  v57 = *(v55 + 1);
  v58 = *(v55 + 2);
  v59 = *(v55 + 3);
  v61 = *(v55 + 4);
  v60 = *(v55 + 5);
  v62 = v224;
  if (v55[48])
  {
    v261 = *v55;
    v262 = v57;
    v263 = v58;
    v264 = v59;
    v265 = v61;
    v266 = v60;
    swift_unknownObjectRetain();
    sub_1C10948BC(v56, v57, v58, v59, v61, v60, 1);
  }

  else
  {
    swift_unknownObjectRetain();
    sub_1C10948BC(v56, v57, v58, v59, v61, v60, 0);
    sub_1C1266420();
    v200 = v58;
    v89 = sub_1C1264410();
    sub_1C1262620();

    v62 = v224;
    sub_1C12637D0();
    swift_getAtKeyPath();
    sub_1C1094934(v56, v57, v200, v59, v61, v60, 0);
    (*(v209 + 8))(v50, v47);
    v56 = v261;
    v57 = v262;
    v61 = v265;
  }

  v63 = v225;
  if (v61)
  {

    v61(&v267, v320);
    sub_1C0FCF004(v61);
    sub_1C0FD09FC(&v267, &v252);
  }

  else
  {
    sub_1C0FA139C(v320, &v252);
  }

  sub_1C10C8EF4(&v252, &v268);
  __swift_destroy_boxed_opaque_existential_0Tm(&v252);
  *&v267 = v56;
  *(&v267 + 1) = v57;

  sub_1C0FCF004(v61);
  *(&v253 + 1) = &type metadata for PhotosDetailsNavigationContextualItem;
  *&v252 = swift_allocObject();
  sub_1C0FF8B74(&v267, v252 + 16);
  transitionSourceID(for:)(&v252, &v261);
  v90 = __swift_destroy_boxed_opaque_existential_0Tm(&v252);
  MEMORY[0x1EEE9AC00](v90);
  *(&v176 - 4) = v62;
  *(&v176 - 3) = v63;
  v91 = v198;
  v92 = v199;
  *(&v176 - 2) = v198;
  *(&v176 - 1) = v92;
  v93 = v185;
  v94 = v214;
  sub_1C1264CA0();
  v95 = [v91 workAround125263280];
  v96 = v95;
  v200 = &v176;
  MEMORY[0x1EEE9AC00](v95);
  *(&v176 - 4) = v62;
  *(&v176 - 3) = v63;
  *(&v176 - 2) = v92;
  *&v252 = v62;
  *(&v252 + 1) = &type metadata for PhotosDetailsNavigationContextualItem;
  *&v253 = v63;
  *(&v253 + 1) = v94;
  v97 = swift_getOpaqueTypeConformance2();
  v98 = sub_1C0FDB6D4(&unk_1EDE7B940, &unk_1EBE92EC0);
  v259 = v97;
  v177 = v97;
  v180 = v98;
  v260 = v98;
  v99 = MEMORY[0x1E697E858];
  v100 = swift_getWitnessTable();
  v101 = sub_1C0FDB6D4(&qword_1EDE7C030, &qword_1EBE91C40);
  v257 = v100;
  v179 = v101;
  v258 = v101;
  v209 = v99;
  v102 = swift_getWitnessTable();
  v103 = sub_1C0FDB6D4(&qword_1EDE7BC60, &unk_1EBE92ED0);
  v255 = v102;
  v178 = v103;
  v256 = v103;
  v104 = v215;
  v105 = swift_getWitnessTable();
  v106 = v189;
  View.onStaticCondition<A>(_:transform:)(v96, sub_1C10949B8, (&v176 - 6), v189, v104, v97, v105, v207);
  v208[1](v93, v106);
  v108 = v190;
  v107 = v191;
  v109 = *(v191 + 16);
  v200 = (v191 + 16);
  v208 = v109;
  v110 = v210;
  (v109)(v190, v92, v210);
  sub_1C0FF8B74(&v267, &v252);
  v111 = v62;
  v112 = *(v107 + 80);
  v185 = (((v112 + 32) & ~v112) + v186);
  v189 = (v112 + 32) & ~v112;
  v113 = (v185 + 7) & 0xFFFFFFFFFFFFFFF8;
  v186 = v113;
  v114 = swift_allocObject();
  v115 = v225;
  *(v114 + 16) = v111;
  *(v114 + 24) = v115;
  v191 = *(v107 + 32);
  (v191)(v114 + ((v112 + 32) & ~v112), v108, v110);
  v116 = (v114 + v113);
  v117 = v253;
  *v116 = v252;
  v116[1] = v117;
  v116[2] = v254;
  v250 = v105;
  v251 = v177;
  v118 = swift_getWitnessTable();
  v119 = v187;
  sub_1C1264FF0();

  (v208)(v108, v199, v110);
  v120 = swift_allocObject();
  v121 = v225;
  *(v120 + 16) = v224;
  *(v120 + 24) = v121;
  (v191)(v120 + v189, v108, v110);
  v248 = v118;
  v249 = MEMORY[0x1E69805D0];
  v122 = v216;
  v123 = swift_getWitnessTable();
  sub_1C108D7E0();
  sub_1C1094A68();
  sub_1C1264C90();

  (*(v188 + 8))(v119, v122);
  (v208)(v108, v199, v110);
  sub_1C0FF8B74(&v267, &v252);
  v124 = v186;
  v125 = v225;
  v126 = swift_allocObject();
  *(v126 + 16) = v224;
  *(v126 + 24) = v125;
  (v191)(v126 + v189, v108, v110);
  v127 = (v126 + v124);
  v128 = v253;
  *v127 = v252;
  v127[1] = v128;
  v127[2] = v254;
  v129 = sub_1C0FDB6D4(&qword_1EDE7BA20, &qword_1EBE928C0);
  v246 = v123;
  v247 = v129;
  v130 = v217;
  v131 = swift_getWitnessTable();
  v132 = v201;
  v133 = v202;
  sub_1C1264A60();

  (*(v192 + 8))(v132, v130);
  v134 = [v198 showDebugOverlays];
  v210 = v131;
  if (v134)
  {
    MEMORY[0x1EEE9AC00](v134);
    *(&v176 - 2) = &v267;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE928D8);
    v228 = v131;
    v229 = MEMORY[0x1E69805D0];
    v135 = v218;
    v136 = swift_getWitnessTable();
    sub_1C0FDB6D4(&qword_1EBE928E0, &qword_1EBE928D8);
    sub_1C10A0734();
    v137 = v183;
    sub_1C1264F60();
    v138 = v135;
    v139 = sub_1C0FDB6D4(&qword_1EDE7BCA0, &qword_1EBE928C8);
    v226 = v136;
    v227 = v139;
    v140 = v222;
    v141 = swift_getWitnessTable();
    v142 = v182;
    sub_1C0FDBA4C(v137, v140, v141);
    v143 = *(v184 + 8);
    v143(v137, v140);
    sub_1C0FDBA4C(v142, v140, v141);
    v144 = v195;
    sub_1C1112D68();
    v143(v137, v140);
    v143(v142, v140);
    v145 = v205;
    v146 = MEMORY[0x1E69805D0];
    v147 = v194;
  }

  else
  {
    v244 = v131;
    v148 = MEMORY[0x1E69805D0];
    v245 = MEMORY[0x1E69805D0];
    v138 = v218;
    v149 = swift_getWitnessTable();
    v150 = v181;
    sub_1C0FDBA4C(v133, v138, v149);
    v151 = v176;
    sub_1C0FDBA4C(v150, v138, v149);
    v152 = sub_1C0FDB6D4(&qword_1EDE7BCA0, &qword_1EBE928C8);
    v242 = v149;
    v243 = v152;
    swift_getWitnessTable();
    v144 = v195;
    sub_1C1112E18();
    v147 = v194;
    v153 = *(v194 + 8);
    v153(v151, v138);
    v153(v150, v138);
    v145 = v205;
    v146 = v148;
  }

  v240 = v210;
  v241 = v146;
  v154 = swift_getWitnessTable();
  v155 = sub_1C0FDB6D4(&qword_1EDE7BCA0, &qword_1EBE928C8);
  v238 = v154;
  v239 = v155;
  v236 = swift_getWitnessTable();
  v237 = v154;
  v156 = swift_getWitnessTable();
  v157 = v196;
  sub_1C0FDBA4C(v144, v145, v156);
  v234 = v225;
  v235 = v180;
  v232 = swift_getWitnessTable();
  v233 = v179;
  v230 = swift_getWitnessTable();
  v231 = v178;
  swift_getWitnessTable();
  sub_1C1112D68();
  swift_unknownObjectRelease();
  v158 = *(v197 + 8);
  v158(v157, v145);
  v158(v144, v145);
  (*(v147 + 8))(v202, v138);
  (*(v193 + 8))(v207, v221);
  sub_1C0FD0978(&v261);
  __swift_destroy_boxed_opaque_existential_0Tm(v320);
  sub_1C0FD0978(&v267);
  v87 = v214;
  v88 = v224;
  v85 = v225;
LABEL_16:
  *&v267 = v88;
  *(&v267 + 1) = &type metadata for PhotosDetailsNavigationContextualItem;
  *&v268 = v85;
  *(&v268 + 1) = v87;
  v159 = swift_getOpaqueTypeConformance2();
  v160 = sub_1C0FDB6D4(&unk_1EDE7B940, &unk_1EBE92EC0);
  v294 = v159;
  v295 = v160;
  v161 = swift_getWitnessTable();
  v162 = sub_1C0FDB6D4(&qword_1EDE7C030, &qword_1EBE91C40);
  v292 = v161;
  v293 = v162;
  v163 = swift_getWitnessTable();
  v164 = sub_1C0FDB6D4(&qword_1EDE7BC60, &unk_1EBE92ED0);
  v290 = v163;
  v291 = v164;
  v288 = swift_getWitnessTable();
  v289 = v159;
  v286 = swift_getWitnessTable();
  v165 = MEMORY[0x1E69805D0];
  v287 = MEMORY[0x1E69805D0];
  v166 = swift_getWitnessTable();
  v167 = sub_1C0FDB6D4(&qword_1EDE7BA20, &qword_1EBE928C0);
  v284 = v166;
  v285 = v167;
  v282 = swift_getWitnessTable();
  v283 = v165;
  v168 = swift_getWitnessTable();
  v169 = sub_1C0FDB6D4(&qword_1EDE7BCA0, &qword_1EBE928C8);
  v280 = v168;
  v281 = v169;
  v278 = swift_getWitnessTable();
  v279 = v168;
  v170 = swift_getWitnessTable();
  v276 = v85;
  v277 = v160;
  v274 = swift_getWitnessTable();
  v275 = v162;
  v272 = swift_getWitnessTable();
  v273 = v164;
  v171 = swift_getWitnessTable();
  v270 = v170;
  v271 = v171;
  v172 = v204;
  v173 = swift_getWitnessTable();
  v174 = v213;
  sub_1C0FDBA4C(v213, v172, v173);
  return (*(v203 + 8))(v174, v172);
}

uint64_t sub_1C1092984@<X0>(void *a1@<X1>, uint64_t a2@<X2>, void *a3@<X3>, void *a4@<X4>, char *a5@<X8>)
{
  v19[1] = a3;
  v19[2] = a4;
  v20 = a2;
  v19[0] = a1;
  v6 = sub_1C12639D0();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1C12643A0();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = v19 - v15;
  sub_1C1265170();
  sub_1C1264390();

  if (([v19[0] workAround125263280] & 1) == 0)
  {
    type metadata accessor for PhotosDetailsPresentationSourceView();
    (*(v7 + 104))(v9, *MEMORY[0x1E697F468], v6);
    sub_1C1264370();
    (*(v7 + 8))(v9, v6);

    sub_1C1264390();
    v17 = *(v11 + 8);
    v17(v13, v10);
    v17(a5, v10);

    (*(v11 + 32))(a5, v16, v10);
  }

  result = type metadata accessor for PhotosDetailsPresentationSourceView();
  if (*(v20 + *(result + 48)))
  {

    sub_1C1264380();

    (*(v11 + 8))(a5, v10);
    return (*(v11 + 32))(a5, v16, v10);
  }

  return result;
}

uint64_t sub_1C1092C98@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v3 = a1 + *(type metadata accessor for PhotosDetailsPresentationSourceView() + 44);
  v4 = *(v3 + 8);
  v5 = *(v3 + 32);
  v8[0] = *v3;
  v8[1] = v4;
  v9 = *(v3 + 16);
  v10 = v5;
  sub_1C1034138();

  swift_getOpaqueTypeMetadata2();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  View.photosBorders(_:)(v8, OpaqueTypeConformance2, a2);
}

uint64_t sub_1C1092DA0(uint64_t a1, uint64_t *a2)
{
  v33 = a2;
  v3 = sub_1C12637E0();
  v30 = *(v3 - 8);
  v31 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = type metadata accessor for PhotosDetailsPresentationSourceView();
  v6 = a1 + v32[15];
  v8 = *v6;
  v7 = *(v6 + 8);
  v9 = *(v6 + 16);
  v10 = *(v6 + 24);
  v11 = *(v6 + 32);
  v12 = *(v6 + 40);
  v13 = *(v6 + 48);
  v34 = a1;
  if (v13 == 1)
  {
    v41 = v8;
    v42[0] = v7;
    v42[1] = v9;
    v42[2] = v10;
    v43 = v11;
    v44 = v12;

    sub_1C0FCF1B4(v11);
  }

  else
  {

    sub_1C1266420();
    v14 = sub_1C1264410();
    a1 = v34;
    sub_1C1262620();

    sub_1C12637D0();
    swift_getAtKeyPath();
    sub_1C1094934(v8, v7, v9, v10, v11, v12, 0);
    (*(v30 + 8))(v5, v31);
    v11 = v43;
  }

  sub_1C0FCF004(v11);
  v15 = v32;
  v16 = a1 + v32[16];
  v17 = *v16;
  if (*(v16 + 8) == 1)
  {
    v18 = *v16;
  }

  else
  {

    sub_1C1266420();
    v19 = sub_1C1264410();
    sub_1C1262620();

    a1 = v34;
    sub_1C12637D0();
    swift_getAtKeyPath();
    sub_1C0FA03F4(v17, 0);
    (*(v30 + 8))(v5, v31);
    v18 = v35;
  }

  if (v18 == 2)
  {
    LOBYTE(v18) = *(a1 + v15[9]);
  }

  v20 = *(a1 + v15[13]);
  if (!v20)
  {
  }

  LOBYTE(v35) = v18;
  v36 = v20;

  sub_1C11FEEEC(&v35, v33);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE928F8);
  sub_1C12628E0();
  v21 = *v6;
  v22 = *(v6 + 8);
  v23 = *(v6 + 16);
  v24 = *(v6 + 24);
  v25 = *(v6 + 32);
  v26 = *(v6 + 40);
  if (*(v6 + 48) == 1)
  {
    v35 = *v6;
    v36 = v22;
    v37 = v23;
    v38 = v24;
    v39 = v25;
    v40 = v26;

    sub_1C0FCF1B4(v25);
  }

  else
  {

    sub_1C1266420();
    v27 = sub_1C1264410();
    sub_1C1262620();

    sub_1C12637D0();
    swift_getAtKeyPath();
    sub_1C1094934(v21, v22, v23, v24, v25, v26, 0);
    (*(v30 + 8))(v5, v31);
    v24 = v38;
    v25 = v39;
  }

  sub_1C0FCF004(v25);
  sub_1C0FF8B74(v33, v42);
  v28 = *(v34 + v32[10]);
  v41 = v24;
  v45 = v28;
  sub_1C12338AC();
}

uint64_t sub_1C109320C(uint64_t a1)
{
  type metadata accessor for PhotosDetailsPresentationSourceView();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE928F8);
  sub_1C12628E0();
  sub_1C1094F6C(a1, v3, &qword_1EBE92890);
  if (v3[3])
  {
    sub_1C1094E90(v3, v4);
    sub_1C1094DD8(v3);
  }

  else
  {
    sub_1C0FFC7B0(v3, &qword_1EBE92890);
    memset(v4, 0, sizeof(v4));
    v5 = 0;
  }

  sub_1C1233BBC();
}

uint64_t sub_1C10932E8(uint64_t a1, uint64_t a2)
{
  v19 = a2;
  v3 = sub_1C12637E0();
  v18 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(type metadata accessor for PhotosDetailsPresentationSourceView() + 60);
  v20 = a1;
  v7 = a1 + v6;
  v8 = *v7;
  v9 = *(v7 + 8);
  v10 = *(v7 + 16);
  v11 = *(v7 + 24);
  v12 = *(v7 + 32);
  v13 = *(v7 + 40);
  if (*(v7 + 48) == 1)
  {
    *&v21 = *v7;
    *(&v21 + 1) = v9;
    *&v22 = v10;
    *(&v22 + 1) = v11;
    v23[0] = v12;
    v23[1] = v13;

    sub_1C0FCF1B4(v12);
  }

  else
  {

    sub_1C1266420();
    v14 = sub_1C1264410();
    v17 = v3;
    v15 = v14;
    sub_1C1262620();

    sub_1C12637D0();
    swift_getAtKeyPath();
    sub_1C1094934(v8, v9, v10, v11, v12, v13, 0);
    (*(v18 + 8))(v5, v17);
    v12 = v23[0];
  }

  sub_1C0FCF004(v12);
  sub_1C11FEF84();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE928F8);
  sub_1C12628E0();
  v22 = 0u;
  memset(v23, 0, 25);
  v21 = 0u;
  sub_1C12338AC();
}

void *sub_1C109354C@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_1C12659A0();
  v4 = v3;
  sub_1C1093608(__src);
  memcpy(__dst, __src, sizeof(__dst));
  memcpy(v9, __src, sizeof(v9));
  sub_1C1094F6C(__dst, &v6, &qword_1EBE928E8);
  sub_1C0FFC7B0(v9, &qword_1EBE928E8);
  *a1 = v2;
  a1[1] = v4;
  return memcpy(a1 + 2, __dst, 0x58uLL);
}

uint64_t sub_1C1093608@<X0>(uint64_t *a1@<X8>)
{
  v16 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96550);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v16 - v2;
  v21[0] = sub_1C1265160();
  sub_1C0FDB76C();
  sub_1C1265270();
  v4 = sub_1C12651E0();

  v5 = PhotosDetailsNavigationContextualItem.description.getter();
  v7 = v6;
  KeyPath = swift_getKeyPath();
  v9 = sub_1C1264590();
  __swift_storeEnumTagSinglePayload(v3, 1, 1, v9);
  v10 = sub_1C1264630();
  sub_1C0FFC7B0(v3, &qword_1EBE96550);
  v11 = swift_getKeyPath();
  LOBYTE(v21[0]) = 0;
  LOBYTE(v20[0]) = 1;
  v12 = sub_1C12651D0();
  v20[0] = v5;
  v20[1] = v7;
  LOBYTE(v20[2]) = 0;
  *(&v20[2] + 1) = *v19;
  HIDWORD(v20[2]) = *&v19[3];
  v13 = MEMORY[0x1E69E7CC0];
  v20[3] = MEMORY[0x1E69E7CC0];
  v20[4] = KeyPath;
  v20[5] = 0;
  LOBYTE(v20[6]) = 1;
  *(&v20[6] + 1) = *v18;
  HIDWORD(v20[6]) = *&v18[3];
  v20[7] = v11;
  v20[8] = v10;
  v20[9] = v12;
  v14 = v16;
  *v16 = v4;
  memcpy(v14 + 1, v20, 0x50uLL);
  v21[0] = v5;
  v21[1] = v7;
  v22 = 0;
  *v23 = *v19;
  *&v23[3] = *&v19[3];
  v24 = v13;
  v25 = KeyPath;
  v26 = 0;
  v27 = 1;
  *v28 = *v18;
  *&v28[3] = *&v18[3];
  v29 = v11;
  v30 = v10;
  v31 = v12;

  sub_1C1094F6C(v20, &v17, &qword_1EBE928F0);
  sub_1C0FFC7B0(v21, &qword_1EBE928F0);
}

uint64_t sub_1C1093850(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  type metadata accessor for PhotosDetailsNavigationDisplayedMediaTracker();

  return sub_1C12628D0();
}

double sub_1C10938D4()
{
  type metadata accessor for PhotosDetailsNavigationDisplayedMediaTracker();
  v0 = swift_allocObject();
  result = 0.0;
  *(v0 + 16) = 0u;
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0u;
  *(v0 + 57) = 0u;
  *(v0 + 80) = 0u;
  *(v0 + 96) = 0u;
  *(v0 + 112) = 0;
  return result;
}

void sub_1C1093918(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a2)
  {

    sub_1C0FCF004(a5);
  }
}

void sub_1C1093984(uint64_t a1, void *a2)
{
  sub_1C0FDE8F8(0, &qword_1EDE7B690);
  v3 = sub_1C12660A0();

  [a2 setDimmingVisualEffects_];
}

uint64_t sub_1C1093A08(uint64_t a1, uint64_t a2, char a3, void *a4, double a5, double a6, double a7, double a8)
{
  sub_1C1090674(a1, &v44, a5, a6);
  if (v45)
  {
    sub_1C0F9DDE4(&v44, &v46);
    v16 = v48;
    v17 = v49;
    __swift_project_boxed_opaque_existential_1(&v46, v48);
    if (a2 == 1)
    {
      v18 = 2;
    }

    else
    {
      v18 = a2 == 2;
    }

    v19 = (*(v17 + 8))(a1, v18, a3 & 1, v16, v17, a5, a6, a7, a8);
    v20 = sub_1C1266400();
    if (qword_1EDE7B5C0 != -1)
    {
      swift_once();
    }

    v21 = qword_1EDE7B5C8;
    sub_1C1094E90(&v46, &v44);
    if (os_log_type_enabled(v21, v20))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v43 = v23;
      *v22 = 67109378;
      *(v22 + 4) = v19 & 1;
      *(v22 + 8) = 2080;
      sub_1C1094E90(&v44, v42);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE92910);
      v24 = sub_1C1265ED0();
      v26 = v25;
      __swift_destroy_boxed_opaque_existential_0Tm(&v44);
      v27 = sub_1C0FA0E80(v24, v26, &v43);

      *(v22 + 10) = v27;
      _os_log_impl(&dword_1C0F96000, v21, v20, "%{BOOL}d returned by %s", v22, 0x12u);
      __swift_destroy_boxed_opaque_existential_0Tm(v23);
      MEMORY[0x1C68F1630](v23, -1, -1);
      MEMORY[0x1C68F1630](v22, -1, -1);
    }

    else
    {
      __swift_destroy_boxed_opaque_existential_0Tm(&v44);
    }

    __swift_destroy_boxed_opaque_existential_0Tm(&v46);
  }

  else
  {
    sub_1C0FFC7B0(&v44, &qword_1EBE92908);
    v19 = [a4 px_containsViewControllerModalInPresentation] ^ 1;
  }

  v28 = sub_1C1266400();
  if (qword_1EDE7B5C0 != -1)
  {
    swift_once();
  }

  v29 = qword_1EDE7B5C8;
  if (os_log_type_enabled(qword_1EDE7B5C8, v28))
  {
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    *&v44 = v31;
    *v30 = 67109890;
    *(v30 + 4) = v19 & 1;
    *(v30 + 8) = 2080;
    v46 = a5;
    v47 = a6;
    type metadata accessor for CGPoint(0);
    v32 = sub_1C1265ED0();
    v34 = sub_1C0FA0E80(v32, v33, &v44);

    *(v30 + 10) = v34;
    *(v30 + 18) = 2080;
    v46 = a7;
    v47 = a8;
    type metadata accessor for CGVector(0);
    v35 = sub_1C1265ED0();
    v37 = sub_1C0FA0E80(v35, v36, &v44);

    *(v30 + 20) = v37;
    *(v30 + 28) = 2080;
    v46 = *&a2;
    type metadata accessor for UIAxis(0);
    v38 = sub_1C1265ED0();
    v40 = sub_1C0FA0E80(v38, v39, &v44);

    *(v30 + 30) = v40;
    _os_log_impl(&dword_1C0F96000, v29, v28, "Interactive dismiss should begin %{BOOL}d at %s velocity %s axis %s", v30, 0x26u);
    swift_arrayDestroy();
    MEMORY[0x1C68F1630](v31, -1, -1);
    MEMORY[0x1C68F1630](v30, -1, -1);
  }

  return v19 & 1;
}

unint64_t sub_1C1093E54()
{
  result = qword_1EBE928A8;
  if (!qword_1EBE928A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE928A8);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for PhotosDetailsNavigationSourceLayoutKind(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *storeEnumTagSinglePayload for PhotosDetailsNavigation(_BYTE *result, int a2, int a3)
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

void sub_1C10940B8()
{
  swift_checkMetadataState();
  if (v0 <= 0x3F)
  {
    sub_1C10947D0(319, &qword_1EDE79198, &type metadata for PhotosDetailsNavigationTransitionKind, MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      sub_1C10947D0(319, qword_1EDE78EE0, &type metadata for PhotosDetailsNavigationSourceLayoutKind, MEMORY[0x1E69E6720]);
      if (v2 <= 0x3F)
      {
        sub_1C10947D0(319, &qword_1EDE76CE0, MEMORY[0x1E69815C0], MEMORY[0x1E69E6720]);
        if (v3 <= 0x3F)
        {
          sub_1C102DEBC(319, &unk_1EDE77528, &qword_1EBE90620);
          if (v4 <= 0x3F)
          {
            sub_1C10947D0(319, &qword_1EDE77630, &type metadata for PhotosDetailsNavigationContext, MEMORY[0x1E697DCC0]);
            if (v5 <= 0x3F)
            {
              sub_1C102DEBC(319, &qword_1EDE77608, &qword_1EBE92450);
              if (v6 <= 0x3F)
              {
                sub_1C1094820();
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

uint64_t sub_1C1094298(int *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE928B8);
  v9 = *(result - 8);
  v10 = *(v9 + 84);
  if (v10 <= v7)
  {
    v11 = v7;
  }

  else
  {
    v11 = *(v9 + 84);
  }

  if (v11 <= 0x7FFFFFFF)
  {
    v12 = 0x7FFFFFFF;
  }

  else
  {
    v12 = v11;
  }

  v13 = *(v6 + 64);
  if (!a2)
  {
    return 0;
  }

  v14 = result;
  v15 = *(v9 + 80) & 0xF8;
  v16 = ~v15 & 0xFFFFFFFFFFFFFFF8;
  v17 = v15 + 16;
  if (v12 >= a2)
  {
LABEL_28:
    if (v7 == v12)
    {
      v25 = a1;
      v10 = v7;
      v14 = v5;
    }

    else
    {
      v26 = (a1 + v13 + 9) & 0xFFFFFFFFFFFFFFF8;
      if ((v11 & 0x80000000) == 0)
      {
        v27 = *(v26 + 8);
        if (v27 >= 0xFFFFFFFF)
        {
          LODWORD(v27) = -1;
        }

        return (v27 + 1);
      }

      v25 = (v17 + ((((((v26 + 47) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 111) & 0xFFFFFFFFFFFFFFF8)) & v16;
    }

    return __swift_getEnumTagSinglePayload(v25, v10, v14);
  }

  v18 = ((*(*(result - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + ((v17 + ((((((((v13 + 9) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 111) & 0xFFFFFFFFFFFFFFF8)) & v16) + 8;
  v19 = v18 & 0xFFFFFFF8;
  if ((v18 & 0xFFFFFFF8) != 0)
  {
    v20 = 2;
  }

  else
  {
    v20 = a2 - v12 + 1;
  }

  if (v20 >= 0x10000)
  {
    LODWORD(v21) = 4;
  }

  else
  {
    LODWORD(v21) = 2;
  }

  if (v20 < 0x100)
  {
    LODWORD(v21) = 1;
  }

  if (v20 >= 2)
  {
    v21 = v21;
  }

  else
  {
    v21 = 0;
  }

  switch(v21)
  {
    case 1:
      v22 = *(a1 + v18);
      if (!v22)
      {
        goto LABEL_28;
      }

      goto LABEL_25;
    case 2:
      v22 = *(a1 + v18);
      if (!v22)
      {
        goto LABEL_28;
      }

      goto LABEL_25;
    case 3:
      __break(1u);
      return result;
    case 4:
      v22 = *(a1 + v18);
      if (!v22)
      {
        goto LABEL_28;
      }

LABEL_25:
      v23 = v22 - 1;
      if (v19)
      {
        v23 = 0;
        v24 = *a1;
      }

      else
      {
        v24 = 0;
      }

      result = v12 + (v24 | v23) + 1;
      break;
    default:
      goto LABEL_28;
  }

  return result;
}

void sub_1C1094500(_DWORD *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE928B8);
  v11 = *(v10 - 8);
  v12 = *(v11 + 84);
  if (v12 <= v9)
  {
    v13 = v9;
  }

  else
  {
    v13 = *(v11 + 84);
  }

  if (v13 <= 0x7FFFFFFF)
  {
    v14 = 0x7FFFFFFF;
  }

  else
  {
    v14 = v13;
  }

  v15 = *(v8 + 64);
  v16 = *(v11 + 80) & 0xF8;
  v17 = ~v16 & 0xFFFFFFFFFFFFFFF8;
  v18 = v16 + 16;
  v19 = ((*(*(v10 - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + ((v18 + ((((((((v15 + 9) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 111) & 0xFFFFFFFFFFFFFFF8)) & v17) + 8;
  if (v14 >= a3)
  {
    v22 = 0;
  }

  else
  {
    if (((*(*(v10 - 8) + 64) + 7) & 0xFFFFFFF8) + ((v18 + ((((((((v15 + 9) & 0xFFFFFFF8) + 47) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 111) & 0xFFFFFFF8)) & v17) == -8)
    {
      v20 = a3 - v14 + 1;
    }

    else
    {
      v20 = 2;
    }

    if (v20 >= 0x10000)
    {
      v21 = 4;
    }

    else
    {
      v21 = 2;
    }

    if (v20 < 0x100)
    {
      v21 = 1;
    }

    if (v20 >= 2)
    {
      v22 = v21;
    }

    else
    {
      v22 = 0;
    }
  }

  if (a2 <= v14)
  {
    switch(v22)
    {
      case 1:
        *(a1 + v19) = 0;
        if (a2)
        {
          goto LABEL_35;
        }

        return;
      case 2:
        *(a1 + v19) = 0;
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
        *(a1 + v19) = 0;
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
          v25 = a1;
          v26 = a2;
          v12 = v9;
          v10 = v7;
        }

        else
        {
          v27 = (a1 + v15 + 9) & 0xFFFFFFFFFFFFFFF8;
          if ((v13 & 0x80000000) == 0)
          {
            if ((a2 & 0x80000000) != 0)
            {
              *(v27 + 8) = 0u;
              *(v27 + 24) = 0u;
              *v27 = a2 & 0x7FFFFFFF;
            }

            else
            {
              *(v27 + 8) = (a2 - 1);
            }

            return;
          }

          v25 = (v18 + ((((((v27 + 47) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 111) & 0xFFFFFFFFFFFFFFF8)) & v17;
          v26 = a2;
        }

        __swift_storeEnumTagSinglePayload(v25, v26, v12, v10);
        break;
    }
  }

  else
  {
    if (((*(*(v10 - 8) + 64) + 7) & 0xFFFFFFF8) + ((v18 + ((((((((v15 + 9) & 0xFFFFFFF8) + 47) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 111) & 0xFFFFFFF8)) & v17) == -8)
    {
      v23 = a2 - v14;
    }

    else
    {
      v23 = 1;
    }

    if (((*(*(v10 - 8) + 64) + 7) & 0xFFFFFFF8) + ((v18 + ((((((((v15 + 9) & 0xFFFFFFF8) + 47) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 111) & 0xFFFFFFF8)) & v17) != -8)
    {
      v24 = ~v14 + a2;
      bzero(a1, v19);
      *a1 = v24;
    }

    switch(v22)
    {
      case 1:
        *(a1 + v19) = v23;
        break;
      case 2:
        *(a1 + v19) = v23;
        break;
      case 3:
        goto LABEL_48;
      case 4:
        *(a1 + v19) = v23;
        break;
      default:
        return;
    }
  }
}

void sub_1C10947D0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_1C1094820()
{
  if (!qword_1EDE77688)
  {
    type metadata accessor for PhotosDetailsNavigationDisplayedMediaTracker();
    v0 = sub_1C1262900();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDE77688);
    }
  }
}

uint64_t sub_1C10948BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  if (a7)
  {

    return sub_1C0FCF1B4(a5);
  }

  else
  {
  }
}

uint64_t sub_1C1094934(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  if (a7)
  {

    return sub_1C0FCF004(a5);
  }

  else
  {
  }
}

uint64_t sub_1C10949DC(uint64_t a1)
{
  type metadata accessor for PhotosDetailsPresentationSourceView();

  return sub_1C109320C(a1);
}

unint64_t sub_1C1094A68()
{
  result = qword_1EDE808E8;
  if (!qword_1EDE808E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE92890);
    sub_1C1094AEC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE808E8);
  }

  return result;
}

unint64_t sub_1C1094AEC()
{
  result = qword_1EDE808F0;
  if (!qword_1EDE808F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE808F0);
  }

  return result;
}

uint64_t objectdestroy_22Tm()
{
  v2 = *(v1 + 16);
  type metadata accessor for PhotosDetailsPresentationSourceView();
  OUTLINED_FUNCTION_10_4();
  v5 = *(v4 + 64);
  v6 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  OUTLINED_FUNCTION_15_1();
  (*(v7 + 8))(v1 + v6, v2);

  v8 = v1 + v6 + *(v0 + 56);
  if (*(v8 + 32))
  {
    if (*(v8 + 24))
    {
      __swift_destroy_boxed_opaque_existential_0Tm(v8);
    }
  }

  else
  {
  }

  v9 = OUTLINED_FUNCTION_6_17(v1 + v6 + *(v0 + 60));
  sub_1C1094934(v9, v11, v12, v13, v14, v15, *(v10 + 48));
  OUTLINED_FUNCTION_14_14();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE928B8);
  OUTLINED_FUNCTION_4_2();
  (*(v16 + 8))(v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE928D0);

  __swift_destroy_boxed_opaque_existential_0Tm(v1 + ((v5 + v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 16);

  return swift_deallocObject();
}

uint64_t sub_1C1094D0C(uint64_t (*a1)(unint64_t, uint64_t, uint64_t, uint64_t))
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(type metadata accessor for PhotosDetailsPresentationSourceView() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8);

  return a1(v1 + v5, v6, v2, v3);
}

uint64_t dynamic_cast_existential_1_conditional(uint64_t a1)
{
  if (swift_conformsToProtocol2())
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1C1094E90(uint64_t a1, uint64_t a2)
{
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 32) = *(a1 + 32);
  OUTLINED_FUNCTION_15_1();
  (*v3)(a2);
  return a2;
}

uint64_t sub_1C1094F44(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

uint64_t sub_1C1094F58(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

uint64_t sub_1C1094F6C(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  OUTLINED_FUNCTION_15_1();
  (*(v5 + 16))(a2, a1);
  return a2;
}

unint64_t sub_1C1094FD0()
{
  result = qword_1EDE7F520;
  if (!qword_1EDE7F520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE7F520);
  }

  return result;
}

__n128 __swift_memcpy49_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_1C1095058(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 49))
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

uint64_t sub_1C1095098(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 49) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 49) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_1C1095118@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE92920);
  OUTLINED_FUNCTION_3();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v46 - v6;
  v8 = sub_1C12637E0();
  v48 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = *(v1 + 32);
  v56 = *(v1 + 24);
  v11 = v57;

  if ((v11 & 1) == 0)
  {
    sub_1C1266420();
    v12 = sub_1C1264410();
    OUTLINED_FUNCTION_3_23();

    sub_1C12637D0();
    OUTLINED_FUNCTION_4_23();
    swift_getAtKeyPath();
    sub_1C0FD1A5C(&v56, &qword_1EBE92928);
    v13 = OUTLINED_FUNCTION_0_30();
    v14(v13);
  }

  v15 = sub_1C1224CE4();

  if (v15)
  {
LABEL_9:

    if ((v11 & 1) == 0)
    {
      sub_1C1266420();
      v28 = sub_1C1264410();
      OUTLINED_FUNCTION_3_23();

      sub_1C12637D0();
      OUTLINED_FUNCTION_4_23();
      swift_getAtKeyPath();
      sub_1C0FD1A5C(&v56, &qword_1EBE92928);
      v29 = OUTLINED_FUNCTION_0_30();
      v30(v29);
    }

    v31 = sub_1C1222F4C();

    if (v31)
    {
      goto LABEL_12;
    }

    v52 = *v2;
    v53 = *(v2 + 16);
    v33 = v52;
    if (v53 == 1)
    {
      v34 = *(&v52 + 1);
      swift_unknownObjectRetain();
      if (v33)
      {
LABEL_15:
        ObjectType = swift_getObjectType();
        (*(v34 + 240))(&v49, ObjectType, v34);
        swift_unknownObjectRelease();
        v36 = v49;
        v37 = v50;
        v38 = v51;
LABEL_18:
        *v7 = 0x4028000000000000;
        *(v7 + 4) = 0;
        v7[10] = 0;
        *(v7 + 2) = 0;
        v7[24] = 1;
        v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE92938);
        sub_1C1095698(v2, v36, v37, v38, &v7[*(v40 + 44)]);

        sub_1C1264490();
        sub_1C12628A0();
        OUTLINED_FUNCTION_5_1();
        v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE92940);
        OUTLINED_FUNCTION_2_22(v41);
        sub_1C1264480();
        sub_1C12628A0();
        OUTLINED_FUNCTION_5_1();
        v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE92948);
        OUTLINED_FUNCTION_2_22(v42);
        KeyPath = swift_getKeyPath();
        v44 = &v7[*(v4 + 36)];
        *v44 = KeyPath;
        *(v44 + 1) = 0;
        v44[16] = 0;
        sub_1C0FDB71C(v7, a1, &qword_1EBE92920);
        v32 = 0;
        return __swift_storeEnumTagSinglePayload(a1, v32, 1, v4);
      }
    }

    else
    {

      sub_1C1266420();
      v39 = sub_1C1264410();
      OUTLINED_FUNCTION_3_23();

      sub_1C12637D0();
      OUTLINED_FUNCTION_4_23();
      swift_getAtKeyPath();
      sub_1C0FD1A5C(&v52, &qword_1EBE92930);
      (*(v48 + 8))(v10, v8);
      v34 = v50;
      if (v49)
      {
        goto LABEL_15;
      }
    }

    v36 = MEMORY[0x1E69E7CC0];
    v37 = MEMORY[0x1E69E7CC0];
    v38 = MEMORY[0x1E69E7CC0];
    goto LABEL_18;
  }

  v54 = *v1;
  v55 = *(v1 + 16);
  v16 = v54;
  if (v55 == 1)
  {
    v17 = *(&v54 + 1);
    swift_unknownObjectRetain();
    if (!v16)
    {
      goto LABEL_12;
    }
  }

  else
  {

    sub_1C1266420();
    v18 = sub_1C1264410();
    v47 = v2;
    v19 = v7;
    v20 = v8;
    v21 = v4;
    v22 = a1;
    v23 = v18;
    sub_1C1262620();

    a1 = v22;
    v4 = v21;
    v8 = v20;
    v7 = v19;
    v2 = v47;
    sub_1C12637D0();
    OUTLINED_FUNCTION_4_23();
    swift_getAtKeyPath();
    sub_1C0FD1A5C(&v54, &qword_1EBE92930);
    v24 = OUTLINED_FUNCTION_0_30();
    v25(v24);
    v17 = v50;
    if (!v49)
    {
      goto LABEL_12;
    }
  }

  v26 = swift_getObjectType();
  HasCentered = OneUpChromeEnvironment.badgeInfoHasCenteredBadge.getter(v26, v17);
  swift_unknownObjectRelease();
  if (HasCentered)
  {
    goto LABEL_9;
  }

LABEL_12:
  v32 = 1;
  return __swift_storeEnumTagSinglePayload(a1, v32, 1, v4);
}

uint64_t sub_1C1095698@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v74 = a5;
  v9 = sub_1C12637E0();
  v76 = *(v9 - 8);
  v77 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v75 = &v66 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE92950);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v66 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v66 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v66 - v18;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE92958);
  MEMORY[0x1EEE9AC00](v67);
  v73 = &v66 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v72 = &v66 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v71 = &v66 - v24;
  MEMORY[0x1EEE9AC00](v25);
  v66 = &v66 - v26;
  MEMORY[0x1EEE9AC00](v27);
  v70 = &v66 - v28;
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v66 - v30;
  MEMORY[0x1EEE9AC00](v32);
  v69 = &v66 - v33;
  MEMORY[0x1EEE9AC00](v34);
  v36 = &v66 - v35;
  MEMORY[0x1EEE9AC00](v37);
  v68 = &v66 - v38;
  *v19 = sub_1C12638E0();
  *(v19 + 1) = 0;
  v19[16] = 1;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE92960);
  v40 = &v19[*(v39 + 44)];
  v79 = a2;
  v80 = a3;
  v81 = a4;
  sub_1C1095E54(a1, a2, v40);
  v83 = *(a1 + 48);
  v78 = a1;
  v82 = *(a1 + 40);
  v41 = v83;

  if ((v41 & 1) == 0)
  {
    sub_1C1266420();
    v42 = sub_1C1264410();
    sub_1C1262620();

    v43 = v75;
    sub_1C12637D0();
    swift_getAtKeyPath();
    sub_1C0FD1A5C(&v82, &qword_1EBE92968);
    (*(v76 + 8))(v43, v77);
  }

  v44 = sub_1C1189974();

  v45 = 1.0;
  if (v44)
  {
    v46 = 0.0;
  }

  else
  {
    v46 = 1.0;
  }

  sub_1C0FDB71C(v19, v36, &qword_1EBE92950);
  v47 = v67;
  *&v36[*(v67 + 36)] = v46;
  v48 = v68;
  sub_1C0FDB71C(v36, v68, &qword_1EBE92958);
  *v16 = sub_1C12638E0();
  *(v16 + 1) = 0;
  v16[16] = 1;
  sub_1C109617C(v78, v80, &v16[*(v39 + 44)]);

  if ((v41 & 1) == 0)
  {
    sub_1C1266420();
    v49 = sub_1C1264410();
    sub_1C1262620();

    v50 = v75;
    sub_1C12637D0();
    swift_getAtKeyPath();
    sub_1C0FD1A5C(&v82, &qword_1EBE92968);
    (*(v76 + 8))(v50, v77);
  }

  v51 = sub_1C1189974();

  if (v51)
  {
    v45 = 0.0;
  }

  sub_1C0FDB71C(v16, v31, &qword_1EBE92950);
  *&v31[*(v47 + 36)] = v45;
  v52 = v31;
  v53 = v69;
  sub_1C0FDB71C(v52, v69, &qword_1EBE92958);
  *v13 = sub_1C12638E0();
  *(v13 + 1) = 0;
  v13[16] = 1;
  sub_1C1096BEC(v78, v81, &v13[*(v39 + 44)]);

  if ((v41 & 1) == 0)
  {
    sub_1C1266420();
    v54 = sub_1C1264410();
    sub_1C1262620();

    v55 = v75;
    sub_1C12637D0();
    swift_getAtKeyPath();
    sub_1C0FD1A5C(&v82, &qword_1EBE92968);
    (*(v76 + 8))(v55, v77);
  }

  v56 = sub_1C1189974();

  if (v56)
  {
    v57 = 0.0;
  }

  else
  {
    v57 = 1.0;
  }

  v58 = v66;
  sub_1C0FDB71C(v13, v66, &qword_1EBE92950);
  *(v58 + *(v47 + 36)) = v57;
  v59 = v70;
  sub_1C0FDB71C(v58, v70, &qword_1EBE92958);
  v60 = v71;
  sub_1C0FDB800(v48, v71, &qword_1EBE92958);
  v61 = v72;
  sub_1C0FDB800(v53, v72, &qword_1EBE92958);
  v62 = v73;
  sub_1C0FDB800(v59, v73, &qword_1EBE92958);
  v63 = v74;
  sub_1C0FDB800(v60, v74, &qword_1EBE92958);
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE92970);
  sub_1C0FDB800(v61, v63 + *(v64 + 48), &qword_1EBE92958);
  sub_1C0FDB800(v62, v63 + *(v64 + 64), &qword_1EBE92958);
  sub_1C0FD1A5C(v59, &qword_1EBE92958);
  sub_1C0FD1A5C(v53, &qword_1EBE92958);
  sub_1C0FD1A5C(v48, &qword_1EBE92958);
  sub_1C0FD1A5C(v62, &qword_1EBE92958);
  sub_1C0FD1A5C(v61, &qword_1EBE92958);
  return sub_1C0FD1A5C(v60, &qword_1EBE92958);
}

uint64_t sub_1C1095E54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE92978);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v25 - v8;
  v10 = sub_1C12637E0();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = *(a1 + 32);
  v26 = *(a1 + 24);
  v14 = v27;

  if ((v14 & 1) == 0)
  {
    sub_1C1266420();
    v15 = sub_1C1264410();
    v25[0] = v10;
    v16 = v6;
    v17 = v9;
    v18 = a2;
    v19 = v7;
    v20 = a3;
    v21 = v15;
    sub_1C1262620();

    a3 = v20;
    v7 = v19;
    a2 = v18;
    v9 = v17;
    v6 = v16;
    sub_1C12637D0();
    swift_getAtKeyPath();
    sub_1C0FD1A5C(&v26, &qword_1EBE92928);
    (*(v11 + 8))(v13, v25[0]);
  }

  v22 = sub_1C1224CE4();

  if (v22)
  {
    v25[1] = a2;
    swift_getKeyPath();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE92980);
    sub_1C0FDB6D4(&unk_1EDE7B730, &qword_1EBE92980);
    sub_1C1096FC8();
    sub_1C109701C();
    sub_1C1265680();
    (*(v7 + 32))(a3, v9, v6);
    v23 = 0;
  }

  else
  {
    v23 = 1;
  }

  return __swift_storeEnumTagSinglePayload(a3, v23, 1, v6);
}

uint64_t sub_1C109617C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE92978);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v23 - v8;
  v24 = sub_1C12637E0();
  v10 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = *(a1 + 32);
  v25 = a1;
  v27 = *(a1 + 24);
  v13 = v28;

  if ((v13 & 1) == 0)
  {
    sub_1C1266420();
    v14 = a2;
    v15 = v9;
    v16 = v6;
    v17 = v7;
    v18 = a3;
    v19 = sub_1C1264410();
    sub_1C1262620();

    a3 = v18;
    v7 = v17;
    v6 = v16;
    v9 = v15;
    a2 = v14;
    sub_1C12637D0();
    swift_getAtKeyPath();
    sub_1C0FD1A5C(&v27, &qword_1EBE92928);
    (*(v10 + 8))(v12, v24);
  }

  v20 = sub_1C1224CE4();

  if ((v20 & 1) != 0 || sub_1C10964B0())
  {
    v26 = a2;
    swift_getKeyPath();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE92980);
    sub_1C0FDB6D4(&unk_1EDE7B730, &qword_1EBE92980);
    sub_1C1096FC8();
    sub_1C109701C();
    sub_1C1265680();
    (*(v7 + 32))(a3, v9, v6);
    v21 = 0;
  }

  else
  {
    v21 = 1;
  }

  return __swift_storeEnumTagSinglePayload(a3, v21, 1, v6);
}

BOOL sub_1C10964B0()
{
  v1 = v0;
  v47 = sub_1C1263EB0();
  v45 = *(v47 - 8);
  MEMORY[0x1EEE9AC00](v47);
  v43 = &v40[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE902E8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v40[-v4];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE902F0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v44 = &v40[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v40[-v9];
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v40[-v12];
  v14 = sub_1C12637E0();
  v46 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v40[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v53 = *(v0 + 32);
  v52 = *(v0 + 3);
  v17 = v53;

  if ((v17 & 1) == 0)
  {
    sub_1C1266420();
    v18 = sub_1C1264410();
    LODWORD(v42) = v17;
    v19 = v14;
    v20 = v18;
    sub_1C1262620();

    v14 = v19;
    v1 = v0;
    v21 = v46;
    LOBYTE(v17) = v42;
    sub_1C12637D0();
    swift_getAtKeyPath();
    sub_1C0FD1A5C(&v52, &qword_1EBE92928);
    (*(v21 + 8))(v16, v14);
  }

  sub_1C1224ADC();

  if (v50 == 1)
  {

    if ((v17 & 1) == 0)
    {
      sub_1C1266420();
      v22 = v10;
      v23 = v13;
      v24 = v1;
      v25 = v14;
      v26 = sub_1C1264410();
      sub_1C1262620();

      v14 = v25;
      v1 = v24;
      v13 = v23;
      v10 = v22;
      sub_1C12637D0();
      swift_getAtKeyPath();
      sub_1C0FD1A5C(&v52, &qword_1EBE92928);
      (*(v46 + 8))(v16, v14);
    }

    sub_1C12265E0();

    v27 = v47;
    (*(v45 + 104))(v10, *MEMORY[0x1E697FF38], v47);
    __swift_storeEnumTagSinglePayload(v10, 0, 1, v27);
    v28 = *(v3 + 48);
    sub_1C0FDB800(v13, v5, &qword_1EBE902F0);
    sub_1C0FDB800(v10, &v5[v28], &qword_1EBE902F0);
    if (__swift_getEnumTagSinglePayload(v5, 1, v27) == 1)
    {
      sub_1C0FD1A5C(v10, &qword_1EBE902F0);
      sub_1C0FD1A5C(v13, &qword_1EBE902F0);
      if (__swift_getEnumTagSinglePayload(&v5[v28], 1, v47) == 1)
      {
        sub_1C0FD1A5C(v5, &qword_1EBE902F0);
        return 0;
      }

      goto LABEL_11;
    }

    v42 = v13;
    v29 = v44;
    sub_1C0FDB800(v5, v44, &qword_1EBE902F0);
    if (__swift_getEnumTagSinglePayload(&v5[v28], 1, v47) == 1)
    {
      sub_1C0FD1A5C(v10, &qword_1EBE902F0);
      sub_1C0FD1A5C(v42, &qword_1EBE902F0);
      (*(v45 + 8))(v29, v47);
LABEL_11:
      sub_1C0FD1A5C(v5, &qword_1EBE902E8);
      goto LABEL_12;
    }

    v35 = v45;
    v36 = v43;
    v37 = v47;
    (*(v45 + 32))(v43, &v5[v28], v47);
    sub_1C1097070();
    v41 = sub_1C1265DE0();
    v38 = *(v35 + 8);
    v38(v36, v37);
    sub_1C0FD1A5C(v10, &qword_1EBE902F0);
    sub_1C0FD1A5C(v42, &qword_1EBE902F0);
    v38(v44, v37);
    sub_1C0FD1A5C(v5, &qword_1EBE902F0);
    if (v41)
    {
      return 0;
    }
  }

LABEL_12:
  v50 = *v1;
  v51 = *(v1 + 16);
  v30 = v50;
  if (v51 == 1)
  {
    v31 = *(&v50 + 1);
    swift_unknownObjectRetain();
    if (!v30)
    {
      return 0;
    }
  }

  else
  {

    sub_1C1266420();
    v32 = sub_1C1264410();
    sub_1C1262620();

    sub_1C12637D0();
    swift_getAtKeyPath();
    sub_1C0FD1A5C(&v50, &qword_1EBE92930);
    (*(v46 + 8))(v16, v14);
    v31 = v49;
    if (!v48)
    {
      return 0;
    }
  }

  ObjectType = swift_getObjectType();
  HasCentered = OneUpChromeEnvironment.badgeInfoHasCenteredBadge.getter(ObjectType, v31);
  swift_unknownObjectRelease();
  return HasCentered;
}

uint64_t sub_1C1096BEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE92978);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v25 - v8;
  v10 = sub_1C12637E0();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = *(a1 + 32);
  v26 = *(a1 + 24);
  v14 = v27;

  if ((v14 & 1) == 0)
  {
    sub_1C1266420();
    v15 = sub_1C1264410();
    v25[0] = v10;
    v16 = v6;
    v17 = v9;
    v18 = a2;
    v19 = v7;
    v20 = a3;
    v21 = v15;
    sub_1C1262620();

    a3 = v20;
    v7 = v19;
    a2 = v18;
    v9 = v17;
    v6 = v16;
    sub_1C12637D0();
    swift_getAtKeyPath();
    sub_1C0FD1A5C(&v26, &qword_1EBE92928);
    (*(v11 + 8))(v13, v25[0]);
  }

  v22 = sub_1C1224CE4();

  if (v22)
  {
    v25[1] = a2;
    swift_getKeyPath();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE92980);
    sub_1C0FDB6D4(&unk_1EDE7B730, &qword_1EBE92980);
    sub_1C1096FC8();
    sub_1C109701C();
    sub_1C1265680();
    (*(v7 + 32))(a3, v9, v6);
    v23 = 0;
  }

  else
  {
    v23 = 1;
  }

  return __swift_storeEnumTagSinglePayload(a3, v23, 1, v6);
}

uint64_t sub_1C1096F14@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a1[1];
  v11[0] = *a1;
  v11[1] = v4;
  v5 = a1[3];
  v11[2] = a1[2];
  v11[3] = v5;
  KeyPath = swift_getKeyPath();
  v10[0] = 0;
  v7 = a1[1];
  *a2 = *a1;
  *(a2 + 16) = v7;
  v8 = a1[3];
  *(a2 + 32) = a1[2];
  *(a2 + 48) = v8;
  *(a2 + 64) = KeyPath;
  *(a2 + 72) = 0;
  *(a2 + 80) = 0;
  return sub_1C0FF526C(v11, v10);
}

unint64_t sub_1C1096FC8()
{
  result = qword_1EDE7E480;
  if (!qword_1EDE7E480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE7E480);
  }

  return result;
}

unint64_t sub_1C109701C()
{
  result = qword_1EDE7E470;
  if (!qword_1EDE7E470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE7E470);
  }

  return result;
}

unint64_t sub_1C1097070()
{
  result = qword_1EDE7BAB0;
  if (!qword_1EDE7BAB0)
  {
    sub_1C1263EB0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE7BAB0);
  }

  return result;
}

unint64_t sub_1C10970C8()
{
  result = qword_1EDE77138;
  if (!qword_1EDE77138)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE92988);
    sub_1C109714C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE77138);
  }

  return result;
}

unint64_t sub_1C109714C()
{
  result = qword_1EDE77140;
  if (!qword_1EDE77140)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE92920);
    sub_1C1097234(&qword_1EDE77240, &qword_1EBE92948, &unk_1C12AF590, sub_1C1097204);
    sub_1C109739C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE77140);
  }

  return result;
}

uint64_t sub_1C1097234(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1C10972B8()
{
  result = qword_1EDE774F0;
  if (!qword_1EDE774F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE92938);
    sub_1C0FDB6D4(&qword_1EDE7C018, &qword_1EBE92990);
    sub_1C0FDB6D4(&qword_1EDE76B38, &qword_1EBE92998);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE774F0);
  }

  return result;
}

unint64_t sub_1C109739C()
{
  result = qword_1EDE788A0;
  if (!qword_1EDE788A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE788A0);
  }

  return result;
}

uint64_t PhotosObservableAlbum.__allocating_init(_:)(uint64_t a1)
{
  v2 = swift_allocObject();
  PhotosObservableAlbum.init(_:)(a1);
  return v2;
}

uint64_t *PhotosObservableAlbum.init(_:)(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE929A0);
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v5);
  v95[2] = v95 - v6;
  v95[1] = v4[13];
  v7 = v4[10];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_1();
  v10 = v9;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v11);
  v13 = v95 - v12;
  OUTLINED_FUNCTION_1();
  v15 = v14;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v16);
  v18 = v95 - v17;
  OUTLINED_FUNCTION_14_2(v4[17]);
  v20 = v2 + *(v19 + 144);
  *v20 = 0;
  v20[8] = 1;
  OUTLINED_FUNCTION_10_15();
  v22 = v2 + *(v21 + 152);
  *v22 = 0;
  v22[8] = v23;
  OUTLINED_FUNCTION_10_15();
  v25 = v2 + *(v24 + 160);
  *v25 = 0;
  v25[8] = v26;
  OUTLINED_FUNCTION_10_15();
  OUTLINED_FUNCTION_14_2(*(v27 + 216));
  OUTLINED_FUNCTION_14_2(*(v28 + 224));
  OUTLINED_FUNCTION_14_2(*(v29 + 232));
  v31 = *(v30 + 240);
  v32 = sub_1C1261990();
  __swift_storeEnumTagSinglePayload(v2 + v31, 1, 1, v32);
  OUTLINED_FUNCTION_10_15();
  *(v2 + *(v33 + 248)) = 0;
  OUTLINED_FUNCTION_10_15();
  sub_1C1261F60();
  (*(v15 + 16))(v18, a1, v7);
  sub_1C10342F0(v18, *v2, v2 + *(*v2 + 112));
  sub_1C12622A0();
  OUTLINED_FUNCTION_10_15();
  (*(v10 + 32))(v2 + *(v34 + 120), v13, AssociatedTypeWitness);
  (*(v4[12] + 16))(v7);
  OUTLINED_FUNCTION_10_15();
  v36 = (v2 + *(v35 + 128));
  *v36 = v37;
  v36[1] = v38;
  v39 = *(v4[11] + 8);
  v40 = (*(v39 + 40))(v7, v39);
  v42 = v41;
  OUTLINED_FUNCTION_10_15();
  v44 = (v2 + *(v43 + 136));

  *v44 = v40;
  v44[1] = v42;
  v45 = OUTLINED_FUNCTION_32_5();
  v46(v45);
  OUTLINED_FUNCTION_10_15();
  OUTLINED_FUNCTION_28_5(v48, v49, *(v47 + 144));
  v50 = OUTLINED_FUNCTION_32_5();
  v51(v50);
  OUTLINED_FUNCTION_10_15();
  OUTLINED_FUNCTION_28_5(v53, v54, *(v52 + 152));
  v55 = OUTLINED_FUNCTION_32_5();
  v56(v55);
  OUTLINED_FUNCTION_10_15();
  OUTLINED_FUNCTION_28_5(v58, v59, *(v57 + 160));
  (*(*(v39 + 8) + 8))(v7);
  OUTLINED_FUNCTION_10_15();
  OUTLINED_FUNCTION_25_4(v61, *(v60 + 168));
  v62 = OUTLINED_FUNCTION_32_5();
  v63(v62);
  OUTLINED_FUNCTION_10_15();
  OUTLINED_FUNCTION_25_4(v65, *(v64 + 176));
  v66 = OUTLINED_FUNCTION_32_5();
  v67(v66);
  OUTLINED_FUNCTION_10_15();
  OUTLINED_FUNCTION_25_4(v69, *(v68 + 184));
  v70 = OUTLINED_FUNCTION_32_5();
  v71(v70);
  OUTLINED_FUNCTION_10_15();
  OUTLINED_FUNCTION_25_4(v73, *(v72 + 192));
  v74 = OUTLINED_FUNCTION_32_5();
  v75(v74);
  OUTLINED_FUNCTION_10_15();
  *(v2 + *(v76 + 200)) = v77 & 1;
  (*(v39 + 80))(v7, v39);
  OUTLINED_FUNCTION_10_15();
  *(v2 + *(v78 + 208)) = v79;
  v80 = (*(v39 + 88))(v7, v39);
  sub_1C1098708(v80, v81);
  v82 = OUTLINED_FUNCTION_27_7();
  v84 = v83(v82);
  sub_1C10988DC(v84, v85);
  v86 = OUTLINED_FUNCTION_27_7();
  v88 = v87(v86);
  sub_1C1098924(v88, v89);
  v90 = OUTLINED_FUNCTION_27_7();
  v91(v90);
  sub_1C109896C();
  v92 = OUTLINED_FUNCTION_27_7();
  v93(v92);
  sub_1C1098AD4();
  (*(v15 + 8))(a1, v7);
  return v2;
}

uint64_t sub_1C1097A80()
{
  OUTLINED_FUNCTION_13_13();
  v4 = v3;
  v5 = *(v2 + 80);
  OUTLINED_FUNCTION_1();
  v7 = v6;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v14[-v9];
  sub_1C109A520(&v14[-v9]);
  v11 = *(v7 + 8);
  v11(v10, v5);
  v17 = v5;
  v18 = *(v4 + 88);
  OUTLINED_FUNCTION_20();
  v19 = *(v12 + 104);
  swift_getKeyPath();
  v15 = v1;
  v16 = v0;
  sub_1C109C22C();

  return v11(v0, v5);
}

uint64_t sub_1C1097C00()
{
  OUTLINED_FUNCTION_5_2();
  v4 = v3;
  sub_1C109AB74();
  v5 = sub_1C0FA8038();

  if (!v5)
  {
    return sub_1C109ABB4();
  }

  OUTLINED_FUNCTION_35_2();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_4_22();
  v7 = *(v4 + 96);
  *(v8 - 32) = *(v4 + 80);
  *(v8 - 16) = v7;
  swift_getKeyPath();
  OUTLINED_FUNCTION_18_13();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_12_3();
  *(v10 - 32) = v1;
  *(v10 - 24) = v2;
  *(v10 - 16) = v0;
  OUTLINED_FUNCTION_20_14();
}

void sub_1C1097D6C()
{
  OUTLINED_FUNCTION_9_2();
  v3 = sub_1C109AE0C();
  OUTLINED_FUNCTION_12_12(v3, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE929A8);
  sub_1C109CE8C(&qword_1EBE929B0, &qword_1EBE929A8);
  if (OUTLINED_FUNCTION_33_6())
  {
    OUTLINED_FUNCTION_35_2();
    MEMORY[0x1EEE9AC00](v5);
    OUTLINED_FUNCTION_4_22();
    OUTLINED_FUNCTION_52_1(v6);
    swift_getKeyPath();
    OUTLINED_FUNCTION_18_13();
    MEMORY[0x1EEE9AC00](v7);
    OUTLINED_FUNCTION_12_3();
    *(v8 - 32) = v1;
    *(v8 - 24) = v0;
    *(v8 - 16) = v2;
    OUTLINED_FUNCTION_20_14();
  }

  else
  {
    OUTLINED_FUNCTION_10_2();
    OUTLINED_FUNCTION_38_5(*(v9 + 144));
  }
}

void sub_1C1097EA8()
{
  OUTLINED_FUNCTION_9_2();
  v3 = sub_1C109AEE0();
  OUTLINED_FUNCTION_12_12(v3, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE929A8);
  sub_1C109CE8C(&qword_1EBE929B0, &qword_1EBE929A8);
  if (OUTLINED_FUNCTION_33_6())
  {
    OUTLINED_FUNCTION_35_2();
    MEMORY[0x1EEE9AC00](v5);
    OUTLINED_FUNCTION_4_22();
    OUTLINED_FUNCTION_52_1(v6);
    swift_getKeyPath();
    OUTLINED_FUNCTION_18_13();
    MEMORY[0x1EEE9AC00](v7);
    OUTLINED_FUNCTION_12_3();
    *(v8 - 32) = v1;
    *(v8 - 24) = v0;
    *(v8 - 16) = v2;
    OUTLINED_FUNCTION_20_14();
  }

  else
  {
    OUTLINED_FUNCTION_10_2();
    OUTLINED_FUNCTION_38_5(*(v9 + 152));
  }
}

void sub_1C1097FE4()
{
  OUTLINED_FUNCTION_9_2();
  v3 = sub_1C109AFB4();
  OUTLINED_FUNCTION_12_12(v3, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE929A8);
  sub_1C109CE8C(&qword_1EBE929B0, &qword_1EBE929A8);
  if (OUTLINED_FUNCTION_33_6())
  {
    OUTLINED_FUNCTION_35_2();
    MEMORY[0x1EEE9AC00](v5);
    OUTLINED_FUNCTION_4_22();
    OUTLINED_FUNCTION_52_1(v6);
    swift_getKeyPath();
    OUTLINED_FUNCTION_18_13();
    MEMORY[0x1EEE9AC00](v7);
    OUTLINED_FUNCTION_12_3();
    *(v8 - 32) = v1;
    *(v8 - 24) = v0;
    *(v8 - 16) = v2;
    OUTLINED_FUNCTION_20_14();
  }

  else
  {
    OUTLINED_FUNCTION_10_2();
    OUTLINED_FUNCTION_38_5(*(v9 + 160));
  }
}

void sub_1C1098120()
{
  OUTLINED_FUNCTION_33_4();
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_7_18(v3, *(v2 + 168));
  if (OUTLINED_FUNCTION_47_2())
  {
    OUTLINED_FUNCTION_45_3();
    MEMORY[0x1EEE9AC00](v4);
    OUTLINED_FUNCTION_3_24();
    swift_getKeyPath();
    OUTLINED_FUNCTION_7_1();
    MEMORY[0x1EEE9AC00](v5);
    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_20_14();
  }

  else
  {
    OUTLINED_FUNCTION_10_2();
    *(v0 + *(v6 + 168)) = v1;
  }
}

void sub_1C109821C()
{
  OUTLINED_FUNCTION_33_4();
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_7_18(v3, *(v2 + 176));
  if (OUTLINED_FUNCTION_47_2())
  {
    OUTLINED_FUNCTION_45_3();
    MEMORY[0x1EEE9AC00](v4);
    OUTLINED_FUNCTION_3_24();
    swift_getKeyPath();
    OUTLINED_FUNCTION_7_1();
    MEMORY[0x1EEE9AC00](v5);
    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_20_14();
  }

  else
  {
    OUTLINED_FUNCTION_10_2();
    *(v0 + *(v6 + 176)) = v1;
  }
}

void sub_1C1098318()
{
  OUTLINED_FUNCTION_33_4();
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_7_18(v3, *(v2 + 184));
  if (OUTLINED_FUNCTION_47_2())
  {
    OUTLINED_FUNCTION_45_3();
    MEMORY[0x1EEE9AC00](v4);
    OUTLINED_FUNCTION_3_24();
    swift_getKeyPath();
    OUTLINED_FUNCTION_7_1();
    MEMORY[0x1EEE9AC00](v5);
    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_20_14();
  }

  else
  {
    OUTLINED_FUNCTION_10_2();
    *(v0 + *(v6 + 184)) = v1;
  }
}

void sub_1C1098414()
{
  OUTLINED_FUNCTION_33_4();
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_7_18(v3, *(v2 + 192));
  if (OUTLINED_FUNCTION_47_2())
  {
    OUTLINED_FUNCTION_45_3();
    MEMORY[0x1EEE9AC00](v4);
    OUTLINED_FUNCTION_3_24();
    swift_getKeyPath();
    OUTLINED_FUNCTION_7_1();
    MEMORY[0x1EEE9AC00](v5);
    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_20_14();
  }

  else
  {
    OUTLINED_FUNCTION_10_2();
    *(v0 + *(v6 + 192)) = v1;
  }
}

void sub_1C1098510()
{
  OUTLINED_FUNCTION_33_4();
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_7_18(v3, *(v2 + 200));
  if (OUTLINED_FUNCTION_47_2())
  {
    OUTLINED_FUNCTION_45_3();
    MEMORY[0x1EEE9AC00](v4);
    OUTLINED_FUNCTION_3_24();
    swift_getKeyPath();
    OUTLINED_FUNCTION_7_1();
    MEMORY[0x1EEE9AC00](v5);
    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_20_14();
  }

  else
  {
    OUTLINED_FUNCTION_10_2();
    *(v0 + *(v6 + 200)) = v1;
  }
}

uint64_t sub_1C109860C()
{
  OUTLINED_FUNCTION_13_13();
  sub_1C109B69C();
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_20();

  swift_getAssociatedTypeWitness();
  sub_1C12661A0();
  OUTLINED_FUNCTION_51_1();
  swift_getKeyPath();
  OUTLINED_FUNCTION_54_2();
}

uint64_t sub_1C1098750(uint64_t a1, uint64_t a2, void (*a3)(uint64_t), uint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t, uint64_t))
{
  v10 = *v6;
  a3(a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE91A60);
  sub_1C109CE8C(&qword_1EDE7B740, &qword_1EBE91A60);
  v11 = sub_1C0FA8038();

  if (!v11)
  {
    return a6(a1, a2);
  }

  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_4_22();
  v13 = *(v10 + 96);
  *(v14 - 32) = *(v10 + 80);
  *(v14 - 16) = v13;
  KeyPath = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](KeyPath);
  OUTLINED_FUNCTION_12_3();
  *(v16 - 32) = v6;
  *(v16 - 24) = a1;
  *(v16 - 16) = a2;
  sub_1C109C22C();
}

uint64_t sub_1C109896C()
{
  OUTLINED_FUNCTION_9_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE929A0);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v10[-v3];
  sub_1C109BC40(&v10[-v3]);
  sub_1C109CFB8();
  v5 = sub_1C0FA8038();
  sub_1C109C528(v4);
  if (v5)
  {
    OUTLINED_FUNCTION_35_2();
    MEMORY[0x1EEE9AC00](v6);
    OUTLINED_FUNCTION_4_22();
    OUTLINED_FUNCTION_52_1(v7);
    swift_getKeyPath();
    OUTLINED_FUNCTION_18_13();
    MEMORY[0x1EEE9AC00](v8);
    *&v10[-16] = v1;
    *&v10[-8] = v0;
    OUTLINED_FUNCTION_20_14();
  }

  else
  {
    sub_1C109CF2C(v0, v4);
    sub_1C109BC94();
  }

  return sub_1C109C528(v0);
}

uint64_t sub_1C1098AD4()
{
  OUTLINED_FUNCTION_13_13();
  sub_1C109BEE4();
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_20();
  swift_getAssociatedTypeWitness();
  sub_1C1266790();
  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_51_1();
  swift_getKeyPath();
  OUTLINED_FUNCTION_54_2();

  return swift_unknownObjectRelease();
}

uint64_t sub_1C1098BD4()
{
  v1 = v0;
  v2 = *v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE929A0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v160 = &v152 - v4;
  v5 = v2[10];
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v159 = &v152 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v158 = &v152 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v157 = &v152 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v156 = &v152 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v155 = &v152 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v162 = &v152 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v152 - v20;
  sub_1C109A808();
  v22 = v2[12];
  v23 = (*(v22 + 16))(v5, v22);
  v25 = v24;
  v26 = *(v6 + 8);
  v166 = v6 + 8;
  v164 = v26;
  v26(v21, v5);
  v27 = v2[11];
  v163 = v5;
  *&v28 = v5;
  *(&v28 + 1) = v27;
  *&v29 = v22;
  *(&v29 + 1) = v2[13];
  v168 = v29;
  v169 = v28;
  v172 = v28;
  v173 = v29;
  swift_getKeyPath();
  sub_1C109C190();

  v30 = *(*v0 + 256);
  v178 = v0;
  v170 = v169;
  v171 = v168;
  swift_getKeyPath();
  v176 = v169;
  v177 = v168;
  type metadata accessor for PhotosObservableAlbum();
  WitnessTable = swift_getWitnessTable();
  sub_1C1261F50();

  v31 = (v1 + *(*v1 + 128));
  swift_beginAccess();
  v32 = *v31 == v23 && v31[1] == v25;
  v167 = v30;
  if (v32 || (sub_1C1266D50() & 1) != 0)
  {
  }

  else
  {

    *v31 = v23;
    v31[1] = v25;
  }

  swift_endAccess();
  sub_1C109C098();
  v33 = v162;
  sub_1C109A808();
  v161 = *(v27 + 8);
  v34 = v163;
  v35 = (*(v161 + 40))(v163);
  v37 = v36;
  v38 = v164(v33, v34);
  MEMORY[0x1EEE9AC00](v38);
  v39 = v168;
  *(&v152 - 2) = v169;
  *(&v152 - 1) = v39;
  swift_getKeyPath();
  sub_1C109C190();

  *&v176 = v1;
  MEMORY[0x1EEE9AC00](v40);
  v41 = v168;
  *(&v152 - 2) = v169;
  *(&v152 - 1) = v41;
  swift_getKeyPath();
  sub_1C1261F50();

  swift_beginAccess();
  sub_1C11D6178(v35, v37);
  swift_endAccess();

  sub_1C109C098();
  sub_1C109A808();
  v154 = (*(v27 + 16))(v34, v27);
  LODWORD(v153) = v42;
  v43 = v27;
  v44 = v164;
  v45 = v164(v33, v34);
  MEMORY[0x1EEE9AC00](v45);
  v46 = v168;
  *(&v152 - 2) = v169;
  *(&v152 - 1) = v46;
  swift_getKeyPath();
  sub_1C109C190();

  *&v176 = v1;
  MEMORY[0x1EEE9AC00](v47);
  v48 = v168;
  *(&v152 - 2) = v169;
  *(&v152 - 1) = v48;
  swift_getKeyPath();
  sub_1C1261F50();

  sub_1C11D6210(v154, v153 & 1);
  sub_1C109C098();
  sub_1C109A808();
  v154 = (*(v43 + 24))(v34, v43);
  LODWORD(v153) = v49;
  v50 = v44(v33, v34);
  MEMORY[0x1EEE9AC00](v50);
  v51 = v168;
  *(&v152 - 2) = v169;
  *(&v152 - 1) = v51;
  swift_getKeyPath();
  sub_1C109C190();

  *&v176 = v1;
  MEMORY[0x1EEE9AC00](v52);
  v53 = v168;
  *(&v152 - 2) = v169;
  *(&v152 - 1) = v53;
  swift_getKeyPath();
  sub_1C1261F50();

  sub_1C11D6210(v154, v153 & 1);
  sub_1C109C098();
  sub_1C109A808();
  v54 = *(v43 + 32);
  v154 = v43;
  v153 = v54(v34, v43);
  LOBYTE(v35) = v55;
  v56 = v164;
  v57 = v164(v33, v34);
  MEMORY[0x1EEE9AC00](v57);
  v58 = v168;
  *(&v152 - 2) = v169;
  *(&v152 - 1) = v58;
  swift_getKeyPath();
  sub_1C109C190();

  *&v176 = v1;
  MEMORY[0x1EEE9AC00](v59);
  v60 = v168;
  *(&v152 - 2) = v169;
  *(&v152 - 1) = v60;
  swift_getKeyPath();
  sub_1C1261F50();

  sub_1C11D6210(v153, v35 & 1);
  v61 = v56;
  sub_1C109C098();
  v62 = v155;
  sub_1C109A808();
  v63 = (*(*(v161 + 8) + 8))(v34) & 1;
  v64 = v61(v62, v34);
  MEMORY[0x1EEE9AC00](v64);
  v65 = v168;
  *(&v152 - 2) = v169;
  *(&v152 - 1) = v65;
  swift_getKeyPath();
  sub_1C109C190();

  *&v176 = v1;
  MEMORY[0x1EEE9AC00](v66);
  v67 = v168;
  *(&v152 - 2) = v169;
  *(&v152 - 1) = v67;
  swift_getKeyPath();
  sub_1C1261F50();

  v68 = *(*v1 + 168);
  if (v63 != *(v1 + v68))
  {
    *(v1 + v68) = v63;
  }

  sub_1C109C098();
  v69 = v156;
  sub_1C109A808();
  v70 = v154;
  v71 = v163;
  v72 = v154[5](v163, v154) & 1;
  v73 = v164;
  v74 = v164(v69, v71);
  MEMORY[0x1EEE9AC00](v74);
  v75 = v168;
  *(&v152 - 2) = v169;
  *(&v152 - 1) = v75;
  swift_getKeyPath();
  sub_1C109C190();

  *&v176 = v1;
  MEMORY[0x1EEE9AC00](v76);
  v77 = v168;
  *(&v152 - 2) = v169;
  *(&v152 - 1) = v77;
  swift_getKeyPath();
  sub_1C1261F50();

  v78 = *(*v1 + 176);
  if (v72 != *(v1 + v78))
  {
    *(v1 + v78) = v72;
  }

  sub_1C109C098();
  v79 = v157;
  sub_1C109A808();
  v80 = v163;
  v81 = v70[6](v163, v70) & 1;
  v82 = v73(v79, v80);
  MEMORY[0x1EEE9AC00](v82);
  v83 = v168;
  *(&v152 - 2) = v169;
  *(&v152 - 1) = v83;
  swift_getKeyPath();
  sub_1C109C190();

  *&v176 = v1;
  MEMORY[0x1EEE9AC00](v84);
  v85 = v168;
  *(&v152 - 2) = v169;
  *(&v152 - 1) = v85;
  swift_getKeyPath();
  sub_1C1261F50();

  v86 = *(*v1 + 184);
  if (v81 != *(v1 + v86))
  {
    *(v1 + v86) = v81;
  }

  sub_1C109C098();
  v87 = v158;
  sub_1C109A808();
  v88 = v163;
  v89 = v70[7](v163, v70) & 1;
  v90 = v73(v87, v88);
  MEMORY[0x1EEE9AC00](v90);
  v91 = v168;
  *(&v152 - 2) = v169;
  *(&v152 - 1) = v91;
  swift_getKeyPath();
  sub_1C109C190();

  *&v176 = v1;
  MEMORY[0x1EEE9AC00](v92);
  v93 = v168;
  *(&v152 - 2) = v169;
  *(&v152 - 1) = v93;
  swift_getKeyPath();
  sub_1C1261F50();

  v94 = *(*v1 + 192);
  if (v89 != *(v1 + v94))
  {
    *(v1 + v94) = v89;
  }

  sub_1C109C098();
  v95 = v159;
  sub_1C109A808();
  v96 = v163;
  v97 = v70[8](v163, v70) & 1;
  v98 = v73(v95, v96);
  MEMORY[0x1EEE9AC00](v98);
  v99 = v168;
  *(&v152 - 2) = v169;
  *(&v152 - 1) = v99;
  swift_getKeyPath();
  sub_1C109C190();

  *&v176 = v1;
  MEMORY[0x1EEE9AC00](v100);
  v101 = v168;
  *(&v152 - 2) = v169;
  *(&v152 - 1) = v101;
  swift_getKeyPath();
  sub_1C1261F50();

  v102 = *(*v1 + 200);
  if (v97 != *(v1 + v102))
  {
    *(v1 + v102) = v97;
  }

  sub_1C109C098();
  v103 = v162;
  sub_1C109A808();
  v104 = v161;
  v105 = v163;
  v106 = (*(v161 + 88))(v163, v161);
  v108 = v107;
  v109 = v164(v103, v105);
  MEMORY[0x1EEE9AC00](v109);
  v110 = v168;
  *(&v152 - 2) = v169;
  *(&v152 - 1) = v110;
  swift_getKeyPath();
  sub_1C109C190();

  *&v176 = v1;
  MEMORY[0x1EEE9AC00](v111);
  v112 = v168;
  *(&v152 - 2) = v169;
  *(&v152 - 1) = v112;
  swift_getKeyPath();
  sub_1C1261F50();

  swift_beginAccess();
  sub_1C11D6178(v106, v108);
  swift_endAccess();

  sub_1C109C098();
  sub_1C109A808();
  v159 = (*(v104 + 48))(v105, v104);
  v114 = v113;
  v115 = v103;
  v116 = v105;
  v117 = v103;
  v118 = v164;
  v119 = v164(v115, v116);
  MEMORY[0x1EEE9AC00](v119);
  v120 = v168;
  *(&v152 - 2) = v169;
  *(&v152 - 1) = v120;
  swift_getKeyPath();
  sub_1C109C190();

  *&v176 = v1;
  MEMORY[0x1EEE9AC00](v121);
  v122 = v168;
  *(&v152 - 2) = v169;
  *(&v152 - 1) = v122;
  swift_getKeyPath();
  sub_1C1261F50();

  swift_beginAccess();
  sub_1C11D6178(v159, v114);
  swift_endAccess();

  sub_1C109C098();
  sub_1C109A808();
  v123 = v163;
  v159 = (*(v104 + 56))(v163, v104);
  v125 = v124;
  v126 = v118(v117, v123);
  MEMORY[0x1EEE9AC00](v126);
  v127 = v168;
  *(&v152 - 2) = v169;
  *(&v152 - 1) = v127;
  swift_getKeyPath();
  sub_1C109C190();

  *&v176 = v1;
  MEMORY[0x1EEE9AC00](v128);
  v129 = v168;
  *(&v152 - 2) = v169;
  *(&v152 - 1) = v129;
  swift_getKeyPath();
  sub_1C1261F50();

  swift_beginAccess();
  sub_1C11D6178(v159, v125);
  swift_endAccess();

  sub_1C109C098();
  sub_1C109A808();
  v130 = v160;
  v131 = v163;
  (*(v104 + 64))(v163, v104);
  v132 = v164;
  v133 = v164(v117, v131);
  MEMORY[0x1EEE9AC00](v133);
  v134 = v168;
  *(&v152 - 2) = v169;
  *(&v152 - 1) = v134;
  swift_getKeyPath();
  sub_1C109C190();

  *&v176 = v1;
  MEMORY[0x1EEE9AC00](v135);
  v136 = v168;
  *(&v152 - 2) = v169;
  *(&v152 - 1) = v136;
  swift_getKeyPath();
  sub_1C1261F50();

  swift_beginAccess();
  sub_1C11D6240();
  sub_1C109C528(v130);
  swift_endAccess();
  sub_1C109C098();
  sub_1C109A808();
  v137 = (*(v104 + 80))(v131, v104);
  v160 = v137;
  v138 = v132(v117, v131);
  v178 = v137;
  MEMORY[0x1EEE9AC00](v138);
  v139 = v168;
  *(&v152 - 2) = v169;
  *(&v152 - 1) = v139;
  swift_getKeyPath();
  sub_1C109C190();

  *&v176 = v1;
  MEMORY[0x1EEE9AC00](v140);
  v141 = v168;
  *(&v152 - 2) = v169;
  *(&v152 - 1) = v141;
  swift_getKeyPath();
  sub_1C1261F50();

  swift_beginAccess();
  swift_getAssociatedTypeWitness();
  v142 = sub_1C12661A0();
  v143 = *(swift_getAssociatedConformanceWitness() + 8);
  v175[1] = v143;
  v144 = swift_getWitnessTable();
  PhotosIdentical.setIfNotIdentical(_:)(&v178, v142, v144);
  swift_endAccess();

  sub_1C109C098();
  sub_1C109A808();
  (*(v104 + 72))(&v178, v131, v104);
  v145 = v164(v117, v131);
  v175[0] = v178;
  MEMORY[0x1EEE9AC00](v145);
  v146 = v168;
  *(&v152 - 2) = v169;
  *(&v152 - 1) = v146;
  swift_getKeyPath();
  sub_1C109C190();

  *&v176 = v1;
  MEMORY[0x1EEE9AC00](v147);
  v148 = v168;
  *(&v152 - 2) = v169;
  *(&v152 - 1) = v148;
  swift_getKeyPath();
  sub_1C1261F50();

  swift_beginAccess();
  v149 = sub_1C1266790();
  v174 = v143;
  v150 = swift_getWitnessTable();
  PhotosIdentical.setIfNotIdentical(_:)(v175, v149, v150);
  swift_endAccess();
  swift_unknownObjectRelease();
  return sub_1C109C098();
}

uint64_t sub_1C109A520@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_20();
  v4 = *(v3 + 112);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_20();
  return (*(*(*(v5 + 80) - 8) + 16))(a1, v1 + v4);
}

uint64_t sub_1C109A5AC()
{
  OUTLINED_FUNCTION_13_13();
  v3 = *(v2 + 112);
  swift_beginAccess();
  OUTLINED_FUNCTION_20();
  v5 = *(v4 + 80);
  v6 = *(v5 - 8);
  (*(v6 + 24))(v1 + v3, v0, v5);
  swift_endAccess();
  sub_1C1098BD4();
  return (*(v6 + 8))(v0, v5);
}

uint64_t (*sub_1C109A684(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  OUTLINED_FUNCTION_10_2();
  swift_beginAccess();
  return sub_1C109A6F0;
}

uint64_t sub_1C109A6F0(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return sub_1C1098BD4();
  }

  return result;
}

uint64_t sub_1C109A748(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  (*(v3 + 16))(&v5 - v2, v1);
  return sub_1C1097A80();
}

uint64_t sub_1C109A828(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  (*(v3 + 16))(&v5 - v2, v1);
  return sub_1C109A5AC();
}

void (*sub_1C109A8F4(void *a1))(void *a1)
{
  v3 = __swift_coroFrameAllocStub(0x38uLL);
  *a1 = v3;
  v3[5] = v1;
  OUTLINED_FUNCTION_5();
  v5 = *(v4 + 80);
  OUTLINED_FUNCTION_5();
  v7 = *(v6 + 88);
  OUTLINED_FUNCTION_5();
  v9 = *(v8 + 96);
  OUTLINED_FUNCTION_5();
  v11 = *(v10 + 104);
  swift_getKeyPath();
  sub_1C109C190();

  OUTLINED_FUNCTION_10_2();
  v3[4] = v1;
  swift_getKeyPath();
  *v3 = v5;
  v3[1] = v7;
  v3[2] = v9;
  v3[3] = v11;
  type metadata accessor for PhotosObservableAlbum();
  OUTLINED_FUNCTION_1_18();
  swift_getWitnessTable();
  sub_1C1261F50();

  v3[6] = sub_1C109A684(v3);
  return sub_1C109AA64;
}

void sub_1C109AA64(void *a1)
{
  v1 = *a1;
  (*(*a1 + 48))(*a1, 0);
  sub_1C109C098();

  free(v1);
}

uint64_t PhotosObservableAlbum.id.getter@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_5();
  v4 = *(v3 + 120);
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_3();
  v7 = *(v6 + 16);

  return v7(a1, v1 + v4, v5);
}

uint64_t sub_1C109AB74()
{
  OUTLINED_FUNCTION_10_2();
  OUTLINED_FUNCTION_11_3();
  OUTLINED_FUNCTION_50();
  return OUTLINED_FUNCTION_5_5();
}

uint64_t sub_1C109ABB4()
{
  OUTLINED_FUNCTION_5_2();
  OUTLINED_FUNCTION_10_6();
  return OUTLINED_FUNCTION_48_0();
}

uint64_t sub_1C109ABF8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1C109AC64();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1C109ACD4()
{
  OUTLINED_FUNCTION_10_2();
  OUTLINED_FUNCTION_11_3();
  OUTLINED_FUNCTION_50();
  return OUTLINED_FUNCTION_5_5();
}

uint64_t sub_1C109AD14()
{
  OUTLINED_FUNCTION_5_2();
  OUTLINED_FUNCTION_10_6();
  return OUTLINED_FUNCTION_48_0();
}

uint64_t sub_1C109AD58@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1C109AD9C();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1C109AE58@<X0>(uint64_t a1@<X8>)
{
  result = sub_1C109AEC0();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_1C109AF2C@<X0>(uint64_t a1@<X8>)
{
  result = sub_1C109AF94();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_1C109B000@<X0>(uint64_t a1@<X8>)
{
  result = sub_1C109B068();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_1C109B088(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  OUTLINED_FUNCTION_16_4();
  OUTLINED_FUNCTION_55_0();
  sub_1C109C190();

  return a2(v3);
}

uint64_t sub_1C109B144@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C109B19C();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1C109B19C()
{
  OUTLINED_FUNCTION_16_4();
  swift_getKeyPath();
  sub_1C109C190();

  OUTLINED_FUNCTION_10_2();
  return *(v0 + *(v1 + 168));
}

uint64_t sub_1C109B264@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C109B2BC();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1C109B2BC()
{
  OUTLINED_FUNCTION_16_4();
  swift_getKeyPath();
  sub_1C109C190();

  OUTLINED_FUNCTION_10_2();
  return *(v0 + *(v1 + 176));
}

uint64_t sub_1C109B384@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C109B3DC();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1C109B3DC()
{
  OUTLINED_FUNCTION_16_4();
  swift_getKeyPath();
  sub_1C109C190();

  OUTLINED_FUNCTION_10_2();
  return *(v0 + *(v1 + 184));
}

uint64_t sub_1C109B4A4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C109B4FC();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1C109B4FC()
{
  OUTLINED_FUNCTION_16_4();
  swift_getKeyPath();
  sub_1C109C190();

  OUTLINED_FUNCTION_10_2();
  return *(v0 + *(v1 + 192));
}

uint64_t sub_1C109B5C4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C109B61C();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1C109B61C()
{
  OUTLINED_FUNCTION_16_4();
  swift_getKeyPath();
  sub_1C109C190();

  OUTLINED_FUNCTION_10_2();
  return *(v0 + *(v1 + 200));
}

uint64_t sub_1C109B69C()
{
  OUTLINED_FUNCTION_10_2();
  OUTLINED_FUNCTION_7_4();
}

uint64_t sub_1C109B6E0()
{
  OUTLINED_FUNCTION_9_2();
  v3 = *(v2 + 208);
  OUTLINED_FUNCTION_53_1();
  *(v1 + v3) = v0;
}

uint64_t sub_1C109B72C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1C109B784();
  *a1 = result;
  return result;
}

uint64_t sub_1C109B7E0()
{
  OUTLINED_FUNCTION_10_2();
  OUTLINED_FUNCTION_11_3();
  OUTLINED_FUNCTION_50();
  return OUTLINED_FUNCTION_5_5();
}

uint64_t sub_1C109B820()
{
  OUTLINED_FUNCTION_5_2();
  OUTLINED_FUNCTION_10_6();
  return OUTLINED_FUNCTION_48_0();
}

uint64_t sub_1C109B864@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1C109B8A8();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1C109B918()
{
  OUTLINED_FUNCTION_10_2();
  OUTLINED_FUNCTION_11_3();
  OUTLINED_FUNCTION_50();
  return OUTLINED_FUNCTION_5_5();
}

uint64_t sub_1C109B958()
{
  OUTLINED_FUNCTION_5_2();
  OUTLINED_FUNCTION_10_6();
  return OUTLINED_FUNCTION_48_0();
}

uint64_t sub_1C109B99C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1C109B9E0();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1C109BA50()
{
  OUTLINED_FUNCTION_10_2();
  OUTLINED_FUNCTION_11_3();
  OUTLINED_FUNCTION_50();
  return OUTLINED_FUNCTION_5_5();
}

uint64_t sub_1C109BA90()
{
  OUTLINED_FUNCTION_5_2();
  OUTLINED_FUNCTION_10_6();
  return OUTLINED_FUNCTION_48_0();
}

uint64_t sub_1C109BAD4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1C109BB60();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1C109BB18(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  v7 = *a1;
  v6 = a1[1];

  return a5(v7, v6);
}

uint64_t sub_1C109BB80(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  OUTLINED_FUNCTION_16_4();
  OUTLINED_FUNCTION_55_0();
  sub_1C109C190();

  return a2(v3);
}

uint64_t sub_1C109BC40@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_10_2();
  v4 = *(v3 + 240);
  OUTLINED_FUNCTION_7_4();
  return sub_1C109CF2C(v1 + v4, a1);
}

uint64_t sub_1C109BC94()
{
  OUTLINED_FUNCTION_9_2();
  v3 = *(v2 + 240);
  swift_beginAccess();
  sub_1C109CD00(v0, v1 + v3);
  return swift_endAccess();
}

uint64_t sub_1C109BD1C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE929A0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  sub_1C109CF2C(a1, &v5 - v3);
  return sub_1C109896C();
}

uint64_t sub_1C109BDD0(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  OUTLINED_FUNCTION_16_4();
  OUTLINED_FUNCTION_55_0();
  sub_1C109C190();

  return a2(v3);
}

uint64_t sub_1C109BE48(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE929A0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  sub_1C109CF2C(a2, &v6 - v4);
  return sub_1C109BC94();
}

uint64_t sub_1C109BEE4()
{
  OUTLINED_FUNCTION_10_2();
  OUTLINED_FUNCTION_7_4();
  return swift_unknownObjectRetain();
}

uint64_t sub_1C109BF28()
{
  OUTLINED_FUNCTION_9_2();
  v3 = *(v2 + 248);
  OUTLINED_FUNCTION_53_1();
  *(v1 + v3) = v0;
  return swift_unknownObjectRelease();
}

uint64_t sub_1C109BF74@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1C109BFCC();
  *a1 = result;
  return result;
}

uint64_t sub_1C109BFEC(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  OUTLINED_FUNCTION_16_4();
  OUTLINED_FUNCTION_55_0();
  sub_1C109C190();

  return a2(v3);
}

uint64_t sub_1C109C098()
{
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_39_0();
  swift_getKeyPath();
  type metadata accessor for PhotosObservableAlbum();
  OUTLINED_FUNCTION_1_18();
  swift_getWitnessTable();
  sub_1C1261F40();
}

uint64_t sub_1C109C190()
{
  OUTLINED_FUNCTION_1_18();
  swift_getWitnessTable();
  return sub_1C1261F30();
}

uint64_t sub_1C109C22C()
{
  OUTLINED_FUNCTION_1_18();
  swift_getWitnessTable();
  return sub_1C1261F20();
}

uint64_t keypath_get_11Tm()
{
  OUTLINED_FUNCTION_13_1();
  result = v1();
  *v0 = result;
  *(v0 + 8) = v3 & 1;
  return result;
}

uint64_t PhotosObservableAlbum.deinit()
{
  (*(*(*(*v0 + 80) - 8) + 8))(v0 + *(*v0 + 112), *(*v0 + 80));
  OUTLINED_FUNCTION_10_2();
  v2 = *(v1 + 120);
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_3();
  (*(v3 + 8))(v0 + v2);
  OUTLINED_FUNCTION_10_2();
  OUTLINED_FUNCTION_49_1();
  OUTLINED_FUNCTION_10_2();
  OUTLINED_FUNCTION_49_1();
  OUTLINED_FUNCTION_10_2();

  OUTLINED_FUNCTION_10_2();
  OUTLINED_FUNCTION_49_1();
  OUTLINED_FUNCTION_10_2();
  OUTLINED_FUNCTION_49_1();
  OUTLINED_FUNCTION_10_2();
  OUTLINED_FUNCTION_49_1();
  OUTLINED_FUNCTION_10_2();
  sub_1C109C528(v0 + *(v4 + 240));
  OUTLINED_FUNCTION_10_2();
  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_10_2();
  v6 = *(v5 + 256);
  sub_1C1261F70();
  OUTLINED_FUNCTION_3();
  (*(v7 + 8))(v0 + v6);
  return v0;
}

uint64_t sub_1C109C528(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE929A0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t PhotosObservableAlbum.__deallocating_deinit()
{
  PhotosObservableAlbum.deinit();
  OUTLINED_FUNCTION_16_4();
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v2, v3);
}

uint64_t sub_1C109C6D4(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

void (*sub_1C109C71C(void *a1))(void *a1)
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  v2[4] = sub_1C109A8F4(v2);
  return sub_1C10115B8;
}

uint64_t sub_1C109C79C(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C109C864@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1C109BFCC();
  *a1 = result;
  return result;
}

uint64_t sub_1C109C8D8(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1C109CD00(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE929A0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C109CE8C(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1C109CF2C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE929A0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1C109CFB8()
{
  result = qword_1EDE7B4C8;
  if (!qword_1EDE7B4C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE929A0);
    sub_1C109D03C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE7B4C8);
  }

  return result;
}

unint64_t sub_1C109D03C()
{
  result = qword_1EDE82F50;
  if (!qword_1EDE82F50)
  {
    sub_1C1261990();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE82F50);
  }

  return result;
}

void OUTLINED_FUNCTION_38_5(uint64_t a1@<X8>)
{
  v4 = v2 + a1;
  *v4 = v1;
  *(v4 + 8) = v3;
}

uint64_t OUTLINED_FUNCTION_49_1()
{
}

__n128 OUTLINED_FUNCTION_52_1@<Q0>(uint64_t a1@<X8>)
{
  result = *(v1 + 80);
  v3 = *(v1 + 96);
  *(a1 - 32) = result;
  *(a1 - 16) = v3;
  return result;
}

uint64_t OUTLINED_FUNCTION_53_1()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_54_2()
{

  return sub_1C109C22C();
}

uint64_t OUTLINED_FUNCTION_55_0()
{

  return swift_getKeyPath();
}

uint64_t sub_1C109D1CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *(a3 + 16) = swift_getKeyPath();
  *(a3 + 24) = 0;
  *(a3 + 32) = swift_getKeyPath();
  *(a3 + 40) = 0;
  result = swift_getKeyPath();
  *(a3 + 48) = result;
  *(a3 + 56) = 0;
  *a3 = a1;
  *(a3 + 8) = a2;
  return result;
}

uint64_t PhotosInteractiveFavoriteBadge.init(_:tint:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *(a3 + 16) = swift_getKeyPath();
  *(a3 + 24) = 0;
  *(a3 + 32) = swift_getKeyPath();
  *(a3 + 40) = 0;
  result = swift_getKeyPath();
  *(a3 + 48) = result;
  *(a3 + 56) = 0;
  *a3 = a1;
  *(a3 + 8) = a2;
  return result;
}

uint64_t PhotosFavoriteBadge.init(_:tint:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  OUTLINED_FUNCTION_15_1();
  (*(v4 + 32))(a2);
  result = type metadata accessor for PhotosFavoriteBadge();
  *(a2 + *(result + 36)) = a1;
  return result;
}

uint64_t PhotosMockFavoriteProviding.__allocating_init(isFavorite:)(char a1)
{
  v2 = swift_allocObject();
  sub_1C1261F60();
  *(v2 + 16) = a1;
  return v2;
}

uint64_t PhotosFavoriteBadge.body.getter@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = v2;
  v6 = (*(*(a1 + 24) + 8))(*(a1 + 16));
  if (v6)
  {
    v7 = 0xEA00000000006C6CLL;
  }

  else
  {
    v7 = 0xE500000000000000;
  }

  v8 = qword_1EDE833C0;

  if (v8 != -1)
  {
    swift_once();
  }

  if (v6)
  {
    v9 = 0x69662E7472616568;
  }

  else
  {
    v9 = 0x7472616568;
  }

  *&v14 = v9;
  *(&v14 + 1) = v7;
  v15 = 262912;
  v16 = 0;
  v17 = 65280;

  sub_1C12192C4(&v14);

  v10 = sub_1C12652F0();

  v11 = *(v3 + *(a1 + 36));
  KeyPath = swift_getKeyPath();
  *a2 = v10;
  a2[1] = KeyPath;
  a2[2] = v11;
}

void *sub_1C109D4C0()
{
  v1 = sub_1C12637E0();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + 16);
  if (*(v0 + 24) == 1)
  {
    v6 = v5;
  }

  else
  {

    sub_1C1266420();
    v7 = sub_1C1264410();
    sub_1C1262620();

    sub_1C12637D0();
    swift_getAtKeyPath();
    sub_1C105861C(v5, 0);
    (*(v2 + 8))(v4, v1);
    return v9[1];
  }

  return v5;
}