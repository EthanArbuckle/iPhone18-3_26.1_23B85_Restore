uint64_t sub_1AF967514(char a1, unint64_t a2, uint64_t a3, void (**a4)(char *, char *, uint64_t), void (**a5)(char *, uint64_t, uint64_t, uint64_t), void (**a6)(char *, uint64_t), uint64_t a7)
{
  sub_1AF4410E4(a2, sub_1AF4410A8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v16 = sub_1AF9697BC(a4, a5, a1 & 1, a2, 1, MEMORY[0x1E69E7CC0], a6, AssociatedTypeWitness, a7);
  if (!v8)
  {
    sub_1AF75B2D4(v16, v17, MEMORY[0x1E69E5FE0], AssociatedTypeWitness, MEMORY[0x1E69E5FE8]);

    type metadata accessor for OrderedDictionary();
    swift_getWitnessTable();
    sub_1AFDFE438();
    swift_getWitnessTable();
    v18 = sub_1AFDFD578();
    v7 = (*(a7 + 40))(v18, a6, a7);
  }

  sub_1AF4410E4(a2, sub_1AF441114);
  return v7;
}

uint64_t sub_1AF967760(uint64_t a1, uint64_t (*a2)(uint64_t), void (*a3)(uint64_t, void, void, uint64_t, unint64_t, uint64_t, uint64_t, uint64_t, int, uint64_t))
{
  v4 = sub_1AFDFF4B8();
  MEMORY[0x1B2718AE0](v4);

  v34 = MEMORY[0x1E69E7CD0];
  v6 = a2(v5);
  if (v6 >> 62)
  {
    v24 = v6;
    v7 = sub_1AFDFE108();
    v6 = v24;
    if (!v7)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      goto LABEL_17;
    }
  }

  v8 = 0;
  v33 = v6 & 0xC000000000000001;
  v30 = v6 + 32;
  v31 = v6;
  do
  {
    if (v33)
    {
      v19 = MEMORY[0x1B2719C70](v8, v31);
    }

    else
    {
      v19 = *(v30 + 8 * v8);
    }

    if (*(v34 + 16) && (v20 = sub_1AFDFF278(), v21 = -1 << *(v34 + 32), v22 = v20 & ~v21, ((*(v34 + 56 + ((v22 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v22) & 1) != 0))
    {
      v23 = ~v21;
      while (*(*(v34 + 48) + 8 * v22) != v19)
      {
        v22 = (v22 + 1) & v23;
        if (((*(v34 + 56 + ((v22 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v22) & 1) == 0)
        {
          goto LABEL_4;
        }
      }
    }

    else
    {
LABEL_4:
      v9 = swift_allocObject();
      *(v9 + 16) = 0;
      *(v9 + 24) = 0xE000000000000000;
      v10 = swift_allocObject();
      *(v10 + 16) = 0;
      v11 = swift_allocObject();
      v12 = MEMORY[0x1E69E7CC0];
      *(v11 + 16) = sub_1AF4403AC(MEMORY[0x1E69E7CC0]);
      v13 = swift_allocObject();
      *(v13 + 16) = sub_1AF42B2DC(v12);

      LOBYTE(v29) = 0;
      a3(v14, 0, 0, 8224, 0xE200000000000000, v9, v13, v11, v29, v10);

      v15 = *(v9 + 16);
      v16 = *(v9 + 24);

      v18 = sub_1AF755BBC(v17);

      MEMORY[0x1B2718AE0](v15, v16);

      MEMORY[0x1B2718AE0](10, 0xE100000000000000);

      sub_1AF967C6C(v18);
    }

    ++v8;
  }

  while (v8 != v7);
LABEL_17:

  v25 = sub_1AFAF888C();
  v27 = v26;

  MEMORY[0x1B2718AE0](v25, v27);

  MEMORY[0x1B2718AE0](62, 0xE100000000000000);
  return 60;
}

uint64_t sub_1AF967AF8(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  result = sub_1AF9697BC(a4, a5, a1 & 1, a2, a3, MEMORY[0x1E69E7CC0], a6, a7, a8);
  if (!v8)
  {
    v10 = result;

    return v10;
  }

  return result;
}

uint64_t sub_1AF967B70(uint64_t a1)
{
  v2 = 0;
  v3 = 1 << *(a1 + 32);
  v4 = *(a1 + 56);
  v5 = -1;
  if (v3 < 64)
  {
    v5 = ~(-1 << v3);
  }

  v6 = v5 & v4;
  v7 = (v3 + 63) >> 6;
  if ((v5 & v4) != 0)
  {
    do
    {
      v8 = v2;
LABEL_8:
      v9 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      v10 = (*(a1 + 48) + ((v8 << 10) | (16 * v9)));
      v11 = *v10;
      v12 = v10[1];

      sub_1AF0D2164(&v14, v11, v12);
    }

    while (v6);
  }

  while (1)
  {
    v8 = v2 + 1;
    if (v2 + 1 >= v7)
    {
      break;
    }

    v6 = *(a1 + 8 * v2++ + 64);
    if (v6)
    {
      v2 = v8;
      goto LABEL_8;
    }
  }
}

uint64_t sub_1AF967C6C(uint64_t a1)
{
  v2 = 0;
  v3 = 1 << *(a1 + 32);
  v4 = *(a1 + 56);
  v5 = -1;
  if (v3 < 64)
  {
    v5 = ~(-1 << v3);
  }

  v6 = v5 & v4;
  v7 = (v3 + 63) >> 6;
  if ((v5 & v4) != 0)
  {
    do
    {
      v8 = v2;
LABEL_8:
      v9 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      sub_1AF70E5AC(&v11, *(*(a1 + 48) + ((v8 << 9) | (8 * v9))));
    }

    while (v6);
  }

  while (1)
  {
    v8 = v2 + 1;
    if (v2 + 1 >= v7)
    {
      break;
    }

    v6 = *(a1 + 8 * v2++ + 64);
    if (v6)
    {
      v2 = v8;
      goto LABEL_8;
    }
  }
}

BOOL sub_1AF967D44(unint64_t *a1, unint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = (v2 >> 59) & 2 | (v2 >> 2) & 1;
  v5 = (v3 >> 59) & 2 | (v3 >> 2) & 1;
  if (!v4)
  {
    if (!v5)
    {
      return sub_1AF9C5694(v2, v3);
    }

    return 0;
  }

  if (v4 == 1)
  {
    if (v5 == 1)
    {
      v2 &= 0xEFFFFFFFFFFFFFFBLL;
      v3 &= 0xEFFFFFFFFFFFFFFBLL;
      return sub_1AF9C5694(v2, v3);
    }

    return 0;
  }

  return v5 == 2 && v3 == 0x1000000000000000;
}

uint64_t sub_1AF967DB4()
{
  result = swift_allocObject();
  *(result + 16) = 0xC000000000000008;
  byte_1EB6C28A0 = 1;
  qword_1EB6C28A8 = result | 0x8000000000000004;
  byte_1EB6C28B0 = 0;
  return result;
}

uint64_t sub_1AF967E0C()
{
  result = swift_allocObject();
  *(result + 16) = 0xC000000000000008;
  byte_1EB6C2888 = 1;
  qword_1EB6C2890 = result | 0x8000000000000000;
  byte_1EB6C2898 = 0;
  return result;
}

uint64_t sub_1AF967E5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char *a7@<X8>)
{
  *a7 = a1;
  v12 = type metadata accessor for GraphCursor();
  v13 = v12[11];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 32))(&a7[v13], a2, AssociatedTypeWitness);
  result = swift_unknownObjectRelease();
  *&a7[v12[12]] = a3;
  v16 = &a7[v12[13]];
  *v16 = a4;
  *(v16 + 1) = a5;
  *&a7[v12[14]] = a6;
  return result;
}

uint64_t sub_1AF967F60@<X0>(uint64_t a1@<X0>, int a2@<W1>, unint64_t a3@<X2>, int a4@<W3>, void *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v114 = a1;
  v110 = a8;
  v99 = a5;
  v100 = a7;
  v98 = a6;
  v102 = a4;
  v101 = a3;
  v106 = a2;
  v112 = a9;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v104 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness, v15);
  v95 = &v87 - v16;
  v17 = sub_1AFDFDD58();
  v108 = *(v17 - 8);
  v109 = v17;
  MEMORY[0x1EEE9AC00](v17, v18);
  v94 = &v87 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20, v21);
  v23 = &v87 - v22;
  v24 = *(a13 - 8);
  MEMORY[0x1EEE9AC00](v25, v26);
  v93 = &v87 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28, v29);
  v96 = &v87 - v30;
  MEMORY[0x1EEE9AC00](v31, v32);
  v107 = &v87 - v33;
  v97 = a14;
  v103 = a12;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v35 = *(AssociatedConformanceWitness + 24);
  v111 = AssociatedTypeWitness;
  v116 = v35(AssociatedTypeWitness, AssociatedConformanceWitness);
  sub_1AF75B824();
  if ((*(v24 + 48))(v23, 1, a13) != 1)
  {
    v56 = *(v24 + 32);
    v57 = v107;
    v56(v107, v23, a13);
    return (v56)(v112, v57, a13);
  }

  v92 = a10;
  v107 = a13;
  (*(v108 + 8))(v23, v109);
  v36 = v114;
  v37 = v111;
  v38 = v35(v111, AssociatedConformanceWitness);
  v39 = v110;
  v116 = v38;
  sub_1AFDFCCC8();
  if (v115 == 2)
  {
    v108 = v24;
    v91 = AssociatedConformanceWitness + 24;
    v90 = v35;
    v40 = v35(v37, AssociatedConformanceWitness);
    v115 = 1;
    v116 = v40;
    sub_1AF96E5C0(0, qword_1EB640818, MEMORY[0x1E69E5E28]);
    v89 = v41;
    sub_1AFDFCCD8();
    v109 = swift_allocBox();
    v43 = v42;
    (*(v104 + 16))(v42, v36, v37);
    v44 = v113;
    v45 = v102;
    if ((v102 & 1) != 0 && v37 == v107)
    {
      v46 = v95;
      (*(AssociatedConformanceWitness + 72))(v37, AssociatedConformanceWitness);
      (*(v104 + 40))(v43, v46, v37);
    }

    v95 = AssociatedConformanceWitness;
    v47 = a11;
    v48 = v97;
    v49 = v100;
    if (v106)
    {
      v87 = v43;
      v88 = a11;
      v50 = v107;
      v51 = v45 & 1;
      v52 = v98;
      v53 = v101;
      v54 = v105;
      v55 = v99;
      sub_1AF969254(v105, v109, v98, v100, 1, v101, v51, v99, v111 == v107, v103, v107, v97);
      if (v44)
      {
      }

      v59 = v92;
      v60 = v55;
      v49 = v100;
      sub_1AF9689CC(1, v53, v102 & 1, v114, v54, v60, v52, v100, v39, v92, v88, v103, v50, v48);
      v44 = 0;
      sub_1AF969FEC(v109, v39, v59, v103, v50, v48);
      v45 = v102;
      v47 = v88;
      v43 = v87;
    }

    v61 = swift_allocObject();
    v62 = v103;
    v63 = v107;
    v61[2] = v103;
    v61[3] = v63;
    v64 = v98;
    v61[4] = v48;
    v61[5] = v64;
    v61[6] = v49;
    v86 = v48;
    *&v84 = v64;
    *(&v84 + 1) = v49;
    v65 = v96;
    sub_1AF96AE08(sub_1AF96E2F4, v61, v105, v106 & 1, v101, v45 & 1, v92, v99, v96, v84, v39, v47, v43, v62, v63, v86);
    if (v44)
    {
      swift_isEscapingClosureAtFileLocation();
    }

    else
    {
      v87 = v43;
      v88 = v47;
      swift_isEscapingClosureAtFileLocation();

      v66 = v111;
      v67 = v90(v111, v95);
      v68 = v108;
      v69 = v94;
      v113 = *(v108 + 16);
      v113(v94, v65, v63);
      (*(v68 + 56))(v69, 0, 1, v63);
      v116 = v67;
      v70 = type metadata accessor for OrderedDictionary();
      sub_1AF75AF78(v69, &v116, v70);
      v71 = v63;
      if (v66 == v63)
      {
        v113(v93, v96, v63);
        (*(v104 + 8))(v87, v66);
        swift_dynamicCast();
      }

      v72 = v114;
      v73 = v90(v66, v95);
      v115 = 0;
      v116 = v73;
      v74 = v110;
      sub_1AFDFCCD8();
      if (v106)
      {
        v75 = v112;
      }

      else
      {
        v85 = v71;
        v76 = v71;
        v77 = v102;
        v78 = v105;
        v80 = v98;
        v79 = v99;
        sub_1AF9689CC(v106 & 1, v101, v102 & 1, v72, v105, v99, v98, v49, v74, v92, v88, v103, v85, v97);
        v81 = v49;
        v82 = v109;
        sub_1AF969254(v78, v109, v80, v81, v106 & 1, v101, v77 & 1, v79, v111 == v76, v103, v76, v97);
        v83 = v112;
        v71 = v76;
        sub_1AF969FEC(v82, v74, v92, v103, v76, v97);
        v75 = v83;
      }

      (*(v108 + 32))(v75, v96, v71);
    }
  }

  if (v107 == MEMORY[0x1E69E7CA8] + 8)
  {
    return swift_dynamicCast();
  }

  result = sub_1AFDFE518();
  __break(1u);
  return result;
}

uint64_t sub_1AF9689CC(uint64_t a1, unint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v72 = a8;
  v71 = a7;
  v70 = a6;
  v69 = a5;
  v84 = a4;
  v68 = a3;
  v67 = a1;
  v65 = a13;
  v74 = *(a13 - 8);
  v63 = a9;
  MEMORY[0x1EEE9AC00](a1, a2);
  v62 = v53 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v18 = sub_1AFDFDD58();
  v53[0] = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18, v19);
  v21 = v53 - v20;
  v76 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](v22, v23);
  v54 = v53 - v24;
  v73 = swift_getTupleTypeMetadata2();
  v86 = sub_1AFDFDD58();
  v82 = *(v86 - 8);
  MEMORY[0x1EEE9AC00](v86, v25);
  v85 = v53 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27, v28);
  v30 = v53 - v29;
  v31 = a2 >> 59;
  v79 = a2;
  v77 = (a2 >> 59) & 2 | (a2 >> 2) & 1;
  v66 = a14;
  v64 = a12;
  v83 = AssociatedTypeWitness;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v33 = AssociatedConformanceWitness;
  v34 = 0;
  v78 = 0;
  v35 = 0;
  v57 = 0;
  v56 = 0;
  v55 = 0;
  if ((v31 & 2) == 0)
  {
    v36 = (*(AssociatedConformanceWitness + 40))(v83, AssociatedConformanceWitness);
    (*(*v36 + 152))(v88);
    v34 = v88[1];
    v78 = v88[0];
    v35 = v88[2];
    v57 = v88[3];
    v56 = v88[4];
    v55 = v88[5];
  }

  v53[1] = v35;
  v53[2] = v34;
  v61 = a11;
  v60 = a10;
  v87 = (*(v33 + 48))(v83, v33);
  v37 = sub_1AFDFD538();
  WitnessTable = swift_getWitnessTable();
  MEMORY[0x1B2718C40](&v89, v37, WitnessTable);

  v87 = v89;
  sub_1AFDFE568();
  sub_1AFDFE538();
  v84 = sub_1AFDFE558();
  v39 = v82 + 4;
  v40 = v73;
  v83 = v73 - 8;
  v81 = (v76 + 6);
  v82 = (v53[0] + 32);
  v75 = (v76 + 4);
  v58 = v78 + 32;
  ++v76;
  v59 = v74 + 1;
  v74 = (v53[0] + 8);
  v41 = v54;
  while (1)
  {
    while (1)
    {
      while (1)
      {
        v42 = v85;
        sub_1AFDFE548();
        (*v39)(v30, v42, v86);
        if ((*(*(v40 - 8) + 48))(v30, 1, v40) == 1)
        {

          return sub_1AF441284(v78);
        }

        v43 = *v30;
        (*v82)(v21, &v30[*(v40 + 48)], v18);
        if ((*v81)(v21, 1, TupleTypeMetadata2) != 1)
        {
          break;
        }

        (*v74)(v21, v18);
      }

      (*v75)(v41, v21, TupleTypeMetadata2);
      if (v78)
      {
        v44 = 0xA000000000000000;
        if ((v43 & 0x8000000000000000) == 0 && v43 < *(v78 + 16))
        {
          v44 = *(v58 + 8 * v43);
          sub_1AF4410A8(v44);
        }

        v45 = v77;
        if (!v77)
        {
LABEL_16:
          v47 = sub_1AF9C5694(v44, v79);
          sub_1AF441114(v44);
          if (v47)
          {
            break;
          }

          goto LABEL_17;
        }
      }

      else
      {
        v44 = 0xA000000000000000;
        v45 = v77;
        if (!v77)
        {
          goto LABEL_16;
        }
      }

      if (v45 != 1)
      {
        sub_1AF441114(v44);
        break;
      }

      v46 = sub_1AF9C5694(v44, v79 & 0xEFFFFFFFFFFFFFFBLL);
      sub_1AF441114(v44);
      if (!v46)
      {
        break;
      }

LABEL_17:
      (*v76)(v41, TupleTypeMetadata2);
    }

    v48 = TupleTypeMetadata2;
    v49 = v65;
    v50 = v62;
    v51 = v80;
    sub_1AF967F60(v41, v67 & 1, v79, v68 & 1, v70, v71, v72, v63, v60, v61, v64, v65, v66);
    if (v51)
    {
      break;
    }

    v80 = 0;
    (*v59)(v50, v49);
    TupleTypeMetadata2 = v48;
    (*v76)(v41, v48);
    v40 = v73;
  }

  (*v76)(v41, v48);

  return sub_1AF441284(v78);
}

uint64_t sub_1AF969254(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, int a7, void *a8, char a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v70 = a6;
  v65 = a8;
  v69 = a7;
  v66 = a5;
  v67 = a3;
  v68 = a4;
  v64 = sub_1AFDFC318();
  v13 = *(v64 - 8);
  MEMORY[0x1EEE9AC00](v64, v14);
  v72 = &v56 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = &v56 - v18;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v21 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness, v22);
  v61 = &v56 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24, v25);
  v27 = &v56 - v26;
  v28 = swift_projectBox();
  v29 = *(a12 + 72);
  v62 = a1;
  v75 = a10;
  result = v29(v28, a10, a12);
  if (result)
  {
    v31 = result;
    v32 = *(v21 + 16);
    v59 = v21 + 16;
    v60 = v28;
    v58 = v32;
    v32(v27, v28, AssociatedTypeWitness);
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    (*(AssociatedConformanceWitness + 32))(AssociatedTypeWitness, AssociatedConformanceWitness);
    v34 = *(v21 + 8);
    v56 = v21 + 8;
    v57 = v34;
    v34(v27, AssociatedTypeWitness);
    v35 = *(v13 + 16);
    v63 = v19;
    v36 = v64;
    v35(v72, v19, v64);
    v37 = v65;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v37 = sub_1AF41FB34(0, v37[2] + 1, 1, v37);
    }

    v39 = v37[2];
    v38 = v37[3];
    if (v39 >= v38 >> 1)
    {
      v37 = sub_1AF41FB34(v38 > 1, v39 + 1, 1, v37);
    }

    (*(v13 + 8))();
    v37[2] = v39 + 1;
    (*(v13 + 32))(v37 + ((*(v13 + 80) + 32) & ~*(v13 + 80)) + *(v13 + 72) * v39, v72, v36);
    v40 = v71;
    v41 = sub_1AF9697BC(v67, v68, v66 & 1, v70, v69 & 1, v37, v75, a11, a12);
    if (v40)
    {
    }

    else
    {
      v43 = v42;
      v72 = v31;
      v44 = v41;

      if (a9)
      {
        v71 = &v56;
        v73 = v44;
        v74 = v43;
        MEMORY[0x1EEE9AC00](v45, v46);
        v47 = v75;
        *(&v56 - 4) = v75;
        *(&v56 - 3) = a11;
        v55 = a12;
        v49 = type metadata accessor for OrderedDictionary();
        WitnessTable = swift_getWitnessTable();
        v52 = sub_1AF628B24(sub_1AF96D6D0, (&v56 - 6), v49, AssociatedTypeWitness, MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v51);

        v53 = v61;
        v58(v61, v60, AssociatedTypeWitness);
        v54 = (*(a12 + 40))(v52, v47, a12);
        (*(a12 + 80))(v53, v54, v47, a12);
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        return v57(v53, AssociatedTypeWitness);
      }
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1AF9697BC(void (**a1)(char *, char *, uint64_t), void (**a2)(char *, uint64_t, uint64_t, uint64_t), int a3, uint64_t a4, int a5, uint64_t a6, void (**a7)(char *, uint64_t), uint64_t a8, void (**a9)(char *, char *, uint64_t))
{
  v76 = a6;
  LODWORD(v75) = a5;
  v73 = a2;
  v74 = a4;
  LODWORD(v71) = a3;
  v72 = a1;
  v66 = a7;
  v67 = a9;
  v10 = sub_1AFDFDD58();
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v70 = v61 - v12;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v65 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness, v13);
  v81 = v61 - v14;
  v64 = *(a8 - 8);
  MEMORY[0x1EEE9AC00](v15, v16);
  v78 = v61 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1E69E5FE0];
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v63 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2, v20);
  v79 = v61 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22, v23);
  v25 = v61 - v24;
  v26 = sub_1AFDFDD58();
  v62 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26, v27);
  v29 = v61 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30, v31);
  v33 = v61 - v32;
  swift_getTupleTypeMetadata2();
  v34 = sub_1AFDFD478();
  v35 = sub_1AF75C690(v34, v18, a8, MEMORY[0x1E69E5FE8]);
  v37 = v36;

  v83 = v35;
  v84 = v37;
  v38 = v80;
  sub_1AF96B538(v72, v73, v71 & 1, v74, v75, v76, &v83, v66, a8, v67);
  if (v38)
  {
  }

  else
  {
    v76 = TupleTypeMetadata2;
    v77 = v29;
    v68 = v25;
    v69 = v26;
    if (swift_getAssociatedTypeWitness() == a8)
    {
      v61[1] = 0;
      v80 = (v64 + 32);
      v67 = (v63 + 32);
      v73 = (v63 + 56);
      v41 = v83;
      v40 = v84;
      v71 = (v63 + 48);
      v72 = (v62 + 32);
      v42 = (v65 + 1);
      v65 = (v64 + 56);
      v66 = v42;

      v75 = v40;

      v43 = 0;
      v44 = MEMORY[0x1E69E5FE0];
      v45 = v69;
      v74 = v41;
      while (1)
      {
        v46 = v75;
        v47 = sub_1AF75BD24();
        v48 = v41;
        v49 = v79;
        if (v43 == v47)
        {
          v50 = 1;
          v52 = v76;
          v51 = v77;
        }

        else
        {
          v53 = *(v76 + 48);
          v54 = v68;
          v55 = v46;
          v52 = v76;
          sub_1AF75BB44(v68, v68 + v53, v43, v48, v55, v44, a8);
          *v49 = *v54;
          v56 = v54 + v53;
          v45 = v69;
          (*v80)(&v49[*(v52 + 48)], v56, a8);
          v51 = v77;
          (*v67)(v77, v49, v52);
          v50 = 0;
          ++v43;
        }

        (*v73)(v51, v50, 1, v52);
        (*v72)(v33, v51, v45);
        if ((*v71)(v33, 1, v52) == 1)
        {
          break;
        }

        v57 = *v33;
        (*v80)(v78, &v33[*(v52 + 48)], a8);
        v58 = swift_dynamicCast();
        v41 = v74;
        if (v58)
        {
          (*v66)(v81, AssociatedTypeWitness);
          v59 = v70;
          (*v65)(v70, 1, 1, a8);
          v85 = v57;
          v60 = type metadata accessor for OrderedDictionary();
          sub_1AF75AF78(v59, &v85, v60);
        }
      }
    }

    return v83;
  }
}

uint64_t sub_1AF969E28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2, v6);
  v8 = &v17 - v7;
  v9 = *(a3 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10, v11);
  v14 = &v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v15 + 16))(v8, a1, TupleTypeMetadata2, v12);
  (*(v9 + 32))(v14, &v8[*(TupleTypeMetadata2 + 48)], a3);
  swift_getAssociatedTypeWitness();
  return swift_dynamicCast();
}

uint64_t sub_1AF969FEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v12 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness, v13);
  v15 = &v29 - v14;
  v16 = swift_projectBox();
  type metadata accessor for Node();
  if (swift_dynamicCastMetatype())
  {
    (*(v12 + 16))(v15, v16, AssociatedTypeWitness);
    v17 = swift_dynamicCast();
    v18 = v30;
    v19 = *(v30 + 16);
    MEMORY[0x1EEE9AC00](v17, v20);
    *(&v29 - 6) = a4;
    *(&v29 - 5) = a5;
    *(&v29 - 4) = a6;
    *(&v29 - 3) = a2;
    *(&v29 - 2) = a3;

    v21 = sub_1AFBFBCA0(sub_1AF96E2CC, (&v29 - 8), v19);

    *(v18 + 16) = v21;
  }

  else
  {
    type metadata accessor for AuthoringNode();
    result = swift_dynamicCastMetatype();
    if (!result)
    {
      return result;
    }

    (*(v12 + 16))(v15, v16, AssociatedTypeWitness);
    v23 = swift_dynamicCast();
    v24 = v30;
    v25 = OBJC_IVAR____TtC3VFX13AuthoringNode_inputs;
    v26 = *(v30 + OBJC_IVAR____TtC3VFX13AuthoringNode_inputs);
    MEMORY[0x1EEE9AC00](v23, v27);
    *(&v29 - 6) = a4;
    *(&v29 - 5) = a5;
    *(&v29 - 4) = a6;
    *(&v29 - 3) = a2;
    *(&v29 - 2) = a3;

    v28 = sub_1AFBFBB68(sub_1AF96E2A4, (&v29 - 8), v26);

    *(v24 + v25) = v28;
  }
}

uint64_t sub_1AF96A294@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X4>, void *a5@<X8>)
{
  v36 = a5;
  v31 = a3;
  v34 = a2;
  v7 = sub_1AFDFDD58();
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v33 = &v29 - v9;
  v32 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](v10, v11);
  v30 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v14 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness, v15);
  v17 = &v29 - v16;
  v18 = *a1;
  v35 = a1[1];
  v37[0] = v18;
  v19 = type metadata accessor for Node();

  swift_dynamicCast();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v21 = (*(AssociatedConformanceWitness + 24))(AssociatedTypeWitness, AssociatedConformanceWitness);
  (*(v14 + 8))(v17, AssociatedTypeWitness);
  v37[0] = v21;
  sub_1AFDFCCC8();
  if (v38 == 2 || (v38 & 1) != 0)
  {
    type metadata accessor for _PlaceholderNode(0);
    v25 = swift_allocObject();
    v37[3] = v19;
    v37[4] = &off_1EE8015B0;
    v37[0] = v18;
    sub_1AF441194(v37, v25 + OBJC_IVAR____TtC3VFX16_PlaceholderNode_oldNode);
    v26 = MEMORY[0x1E69E7CC0];
    v25[3] = 0;
    v25[4] = 0;
    v25[2] = v26;

    sub_1AFDFC308();
    result = _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v37);
  }

  else
  {
    v37[0] = v21;
    v22 = v33;
    sub_1AF75B824();
    v23 = v32;
    (*(v32 + 48))(v22, 1, a4);
    (*(v23 + 32))(v30, v22, a4);
    result = swift_dynamicCast();
    v25 = v37[0];
  }

  v28 = v35;
  v27 = v36;
  *v36 = v25;
  v27[1] = v28;
  return result;
}

void sub_1AF96A618(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X4>, uint64_t *a5@<X8>)
{
  v66 = a3;
  v75 = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v69 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness, v8);
  v76 = &v64 - v9;
  v10 = sub_1AFDFC318();
  v73 = *(v10 - 8);
  v74 = v10;
  MEMORY[0x1EEE9AC00](v10, v11);
  v72 = &v64 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AF483618();
  MEMORY[0x1EEE9AC00](v13 - 8, v14);
  v71 = &v64 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16, v17);
  v70 = &v64 - v18;
  v19 = sub_1AFDFDD58();
  MEMORY[0x1EEE9AC00](v19 - 8, v20);
  v22 = &v64 - v21;
  v67 = a4;
  v65 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](v23, v24);
  v26 = &v64 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = swift_getAssociatedTypeWitness();
  v28 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27, v29);
  v31 = &v64 - v30;
  v33 = *a1;
  v32 = a1[1];
  if (*a1)
  {
    v64 = a1[1];
    v68 = a5;
    v79[0] = v33;
    v34 = v33;
    v35 = type metadata accessor for AuthoringNode();
    v78 = v34;
    swift_retain_n();
    swift_dynamicCast();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v37 = (*(AssociatedConformanceWitness + 24))(v27, AssociatedConformanceWitness);
    (*(v28 + 8))(v31, v27);
    v79[0] = v37;
    sub_1AFDFCCC8();
    if (v80 == 2 || (v80 & 1) != 0)
    {
      type metadata accessor for _PlaceholderNode(0);
      v41 = swift_allocObject();
      v79[3] = v35;
      v79[4] = &off_1EE801558;
      v79[0] = v78;
      sub_1AF441194(v79, &v41[OBJC_IVAR____TtC3VFX16_PlaceholderNode_oldNode]);
      v42 = MEMORY[0x1E69E7CC0];
      *(v41 + 3) = 0;
      *(v41 + 4) = 0;
      *(v41 + 2) = v42;
      v43 = OBJC_IVAR____TtC3VFX4Node_authoringID;

      v67 = v43;
      sub_1AFDFC308();
      _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v79);
      v45 = v73;
      v44 = v74;
      v46 = v70;
      (*(v73 + 56))(v70, 1, 1, v74);
      v75 = v35;
      v40 = swift_allocObject();
      v47 = v40 + OBJC_IVAR____TtC3VFX13AuthoringNode_position;
      *v47 = 0;
      *(v47 + 8) = 0;
      *(v47 + 16) = 1;
      v48 = v40 + OBJC_IVAR____TtC3VFX13AuthoringNode_size;
      *v48 = 0;
      *(v48 + 8) = 0;
      *(v48 + 16) = 1;
      v49 = v40 + OBJC_IVAR____TtC3VFX13AuthoringNode_zIndex;
      *v49 = 0;
      *(v49 + 8) = 1;
      v50 = (v40 + OBJC_IVAR____TtC3VFX13AuthoringNode_authoringName);
      *v50 = 0;
      v50[1] = 0;
      *(v40 + OBJC_IVAR____TtC3VFX13AuthoringNode_raw) = v41;
      *(v40 + OBJC_IVAR____TtC3VFX13AuthoringNode_inputs) = v42;
      v51 = v71;
      sub_1AF487314(v46, v71);
      v52 = *(v45 + 48);
      LODWORD(v43) = v52(v51, 1, v44);

      if (v43 == 1)
      {
        v53 = v72;
        sub_1AFDFC308();
        sub_1AF9199D8(v46, sub_1AF483618);
        v54 = v53;
        if (v52(v51, 1, v44) != 1)
        {
          sub_1AF9199D8(v51, sub_1AF483618);
        }
      }

      else
      {
        sub_1AF9199D8(v46, sub_1AF483618);
        v54 = v72;
        (*(v45 + 32))(v72, v51, v44);
      }

      (*(v45 + 32))(v40 + OBJC_IVAR____TtC3VFX13AuthoringNode_authoringID, v54, v44);
      (*(v45 + 24))(&v41[v67], v40 + OBJC_IVAR____TtC3VFX13AuthoringNode_authoringID, v44);

      v55 = v40 + OBJC_IVAR____TtC3VFX13AuthoringNode_position;
      *v55 = 0;
      *(v55 + 8) = 0;
      *(v55 + 16) = 1;
      v56 = v40 + OBJC_IVAR____TtC3VFX13AuthoringNode_size;
      *v56 = 0;
      *(v56 + 8) = 0;
      *(v56 + 16) = 1;
      v57 = v40 + OBJC_IVAR____TtC3VFX13AuthoringNode_zIndex;
      *v57 = 0;
      *(v57 + 8) = 1;
      v58 = (v40 + OBJC_IVAR____TtC3VFX13AuthoringNode_authoringName);
      *v58 = 0;
      v58[1] = 0;
    }

    else
    {
      v38 = v67;
      v79[0] = v37;
      sub_1AF75B824();
      v39 = v65;
      (*(v65 + 48))(v22, 1, v38);
      (*(v39 + 32))(v26, v22, v38);
      swift_dynamicCast();
      v40 = v79[0];
    }

    v79[0] = v40;

    v60 = v76;
    v59 = AssociatedTypeWitness;
    v61 = swift_dynamicCast();

    v62 = v68;
    if (v61)
    {

      (*(v69 + 8))(v60, v59);
      *v62 = 0;
      v62[1] = 0;
    }

    else
    {
      v63 = v64;
      *v68 = v40;
      v62[1] = v63;
    }
  }

  else
  {
    *a5 = 0;
    a5[1] = v32;
  }
}

uint64_t sub_1AF96AE08@<X0>(void (*a1)(char *)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, unint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, __int128 a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  swift_unknownObjectRetain();
  sub_1AF4410E4(a5, sub_1AF4410A8);
  swift_unknownObjectRelease();
  v20 = swift_allocObject();
  *(v20 + 16) = a14;
  *(v20 + 24) = a15;
  *(v20 + 32) = a16;
  *(v20 + 40) = a4 & 1;
  *(v20 + 48) = a5;
  *(v20 + 56) = a6;
  *(v20 + 64) = a7;
  *(v20 + 72) = a3;
  *(v20 + 80) = a8;
  *(v20 + 88) = a10;
  *(v20 + 104) = a11;
  *(v20 + 112) = a12;
  v21 = swift_allocObject();
  v21[2] = a14;
  v21[3] = a15;
  v21[4] = a16;
  v21[5] = sub_1AF96E31C;
  v21[6] = v20;

  sub_1AF96B320(sub_1AF96E36C, v21, a3, a13, a8, a12, a1, a2, a9, a14, a15);
  swift_isEscapingClosureAtFileLocation();
}

uint64_t sub_1AF96AFDC@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  v36 = a7;
  v37 = a8;
  v38 = a6;
  v39 = a9;
  v40 = a5;
  v34 = a4;
  v35 = a3;
  v17 = sub_1AFDFDD58();
  v32 = *(v17 - 8);
  v33 = v17;
  MEMORY[0x1EEE9AC00](v17, v18);
  v20 = &v31 - v19;
  v21 = *(a14 - 8);
  MEMORY[0x1EEE9AC00](v22, v23);
  v31 = &v31 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    swift_getAssociatedTypeWitness();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v26 = *(AssociatedConformanceWitness + 24);
    v27 = swift_checkMetadataState();
    v41 = v26(v27, AssociatedConformanceWitness);
    sub_1AF75B824();
    if ((*(v21 + 48))(v20, 1, a14) == 1)
    {
      (*(v32 + 8))(v20, v33);
      swift_unknownObjectRetain();
      sub_1AF967F60(a1, 1, v35, v34 & 1, v36, v37, a10, a11, v40, a12, a13, a14, a15);
      return swift_unknownObjectRelease();
    }

    else
    {
      v29 = *(v21 + 32);
      v30 = v31;
      v29(v31, v20, a14);
      return (v29)(v39, v30, a14);
    }
  }

  else
  {
    result = sub_1AFDFE518();
    __break(1u);
  }

  return result;
}

uint64_t sub_1AF96B320@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void (*a7)(char *)@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  v33 = a8;
  v34 = a7;
  v30 = a1;
  v31 = a6;
  v27 = a4;
  v28 = a5;
  v29 = a2;
  v32 = a9;
  v26[1] = a11;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v13 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness, v14);
  v16 = v26 - v15;
  v17 = type metadata accessor for GraphCursor();
  v18 = *(v17 - 8);
  v20 = MEMORY[0x1EEE9AC00](v17, v19);
  v22 = v26 - v21;
  (*(v13 + 16))(v16, v27, AssociatedTypeWitness, v20);
  swift_unknownObjectRetain();
  v23 = v28;

  v24 = v29;

  sub_1AF967E5C(a3, v16, v23, v30, v24, v31, v22);
  v34(v22);
  return (*(v18 + 8))(v22, v17);
}

uint64_t sub_1AF96B538(uint64_t a1, uint64_t a2, char a3, uint64_t a4, int a5, uint64_t a6, uint64_t *a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v60 = a2;
  v63 = a7;
  v59 = a6;
  v58 = a5;
  v68[4] = *MEMORY[0x1E69E9840];
  v14 = (*(a10 + 48))(a8, a10);
  v67 = v14;
  if ((a4 & 0x1000000000000000) == 0 && a9 != MEMORY[0x1E69E7CA8] + 8)
  {
    v15 = sub_1AF96E3D4(v14, 0, a8, a10);

    v67 = v15;
  }

  v66 = sub_1AF96D5F4(MEMORY[0x1E69E7CC0]);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v65 = sub_1AFDFD478();
  MEMORY[0x1EEE9AC00](v65, v17);
  v44[0] = a8;
  v44[1] = a9;
  v45 = a10;
  v46 = &v67;
  v47 = v62;
  LOBYTE(v48) = a3 & 1;
  v49 = a4;
  v50 = v58 & 1;
  v51 = v59;
  v52 = a1;
  v53 = v60;
  v54 = &v66;
  v18 = v63;
  v55 = v63;
  v19 = sub_1AFDFD538();
  v20 = sub_1AF5C5358(0, &qword_1ED7268D0);
  v21 = v61;
  sub_1AF9673CC(&v65, sub_1AF96E4C0, &v43, v19, v20, MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E7288], v68);
  if (v21)
  {
    goto LABEL_8;
  }

  v22 = v65;
  v68[0] = v65;
  swift_getWitnessTable();
  v23 = sub_1AFDFD908();
  if ((v23 & 1) == 0)
  {
    v64 = v22;
    v25 = *(a10 + 64);

    v26 = v25(v68, a8, a10);
    swift_getWitnessTable();
    sub_1AFDFD4D8();
    v23 = v26(v68, 0);
    v18 = v63;
  }

  if (AssociatedTypeWitness == a9)
  {
    v28 = v18[1];
    v68[0] = *v18;
    v68[1] = v28;
    v62 = v68[0];
    v63 = &v57;
    MEMORY[0x1EEE9AC00](v23, v24);
    v53 = a8;
    v54 = a9;
    v55 = a10;
    v56 = v18;
    MEMORY[0x1EEE9AC00](v29, v30);
    v31 = v18;
    v45 = a8;
    v46 = a9;
    v47 = a10;
    v48 = sub_1AF96E518;
    v49 = v32;
    v33 = type metadata accessor for OrderedDictionary();

    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    WitnessTable = swift_getWitnessTable();
    v37 = sub_1AF628B24(sub_1AF96E524, v44, v33, TupleTypeMetadata2, MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v36);

    v68[0] = v37;
    v38 = sub_1AFDFD538();
    v39 = swift_getWitnessTable();
    v40 = sub_1AF75CA54(v68, MEMORY[0x1E69E5FE0], a9, v38, MEMORY[0x1E69E5FE8], v39);
    v42 = v41;

    *v31 = v40;
    v31[1] = v42;
  }

  else
  {
LABEL_8:
  }
}

uint64_t sub_1AF96BA0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15)
{
  swift_getAssociatedTypeWitness();
  sub_1AFDFD538();

  swift_getWitnessTable();
  sub_1AFDFD268();

  if (v15)
  {
    *a15 = v15;
  }

  return result;
}

uint64_t sub_1AF96BB14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v14 = *(a13 - 8);
  v15 = MEMORY[0x1EEE9AC00](a1, a2);
  v17 = &v29 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_1AF967F60(v19, v18 & 1, v20, v21, v22, v23, v25, v24, v17, v15.n128_i64[0], v15.n128_i64[1], v26, a13, v27);
  if (!v13)
  {
    return (*(v14 + 8))(v17, a13);
  }

  return result;
}

uint64_t sub_1AF96BC18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v30 = a4;
  v32 = a1;
  v33 = a2;
  v11 = *(a6 - 8);
  MEMORY[0x1EEE9AC00](a1, a2);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v15 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness, v16);
  v31 = &v30 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x1EEE9AC00](v18, v19);
  v22 = &v30 - v21;
  (*(v11 + 16))(v13, a3, a6, v20);
  swift_dynamicCast();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v39 = (*(AssociatedConformanceWitness + 48))(AssociatedTypeWitness, AssociatedConformanceWitness);
  v35 = a5;
  v36 = a6;
  v37 = a7;
  v38 = v30;
  swift_getTupleTypeMetadata2();
  v24 = sub_1AFDFDD58();
  v25 = sub_1AFDFD538();
  WitnessTable = swift_getWitnessTable();
  v28 = sub_1AF628B24(sub_1AF96E54C, v34, v25, v24, MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v27);

  (*(AssociatedConformanceWitness + 56))(v28, AssociatedTypeWitness, AssociatedConformanceWitness);
  (*(v15 + 16))(v31, v22, AssociatedTypeWitness);
  swift_dynamicCast();
  (*(v15 + 8))(v22, AssociatedTypeWitness);
  return v33;
}

uint64_t sub_1AF96BF40@<X0>(__objc2_class **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, char *a4@<X8>)
{
  v61 = a2;
  v66 = a1;
  v67 = a4;
  v5 = sub_1AFDFDD58();
  v59 = *(v5 - 8);
  v60 = v5;
  MEMORY[0x1EEE9AC00](v5, v6);
  v63 = &v53 - v7;
  v65 = a3;
  v62 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](v8, v9);
  v58 = &v53 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v57 = &v53 - v13;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v16 = sub_1AFDFDD58();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16, v18);
  v20 = &v53 - v19;
  v21 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](v22, v23);
  v64 = &v53 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x1EEE9AC00](v25, v26);
  v29 = &v53 - v28;
  (*(v17 + 16))(v20, v66, v16, v27);
  if ((*(v21 + 48))(v20, 1, TupleTypeMetadata2) == 1)
  {
    (*(v17 + 8))(v20, v16);
    return (*(v21 + 56))(v67, 1, 1, TupleTypeMetadata2);
  }

  else
  {
    v31 = *(v21 + 32);
    v31(v29, v20, TupleTypeMetadata2);
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v33 = (*(AssociatedConformanceWitness + 40))(AssociatedTypeWitness, AssociatedConformanceWitness);
    if (*v33 == _TtC3VFX16_PlaceholderNode)
    {
      v54 = v31;
      v55 = v21 + 32;
      v56 = AssociatedTypeWitness;
      v66 = v33;
      v34 = v33 + OBJC_IVAR____TtC3VFX16_PlaceholderNode_oldNode;
      v35 = *(v33 + OBJC_IVAR____TtC3VFX16_PlaceholderNode_oldNode + 24);
      v36 = *(v33 + OBJC_IVAR____TtC3VFX16_PlaceholderNode_oldNode + 32);
      v37 = sub_1AF441150((v33 + OBJC_IVAR____TtC3VFX16_PlaceholderNode_oldNode), v35);
      v38 = *(v35 - 8);
      v39 = MEMORY[0x1EEE9AC00](v37, v37);
      v41 = &v53 - v40;
      (*(v38 + 16))(&v53 - v40, v39);
      v42 = (*(v36 + 24))(v35, v36);
      (*(v38 + 8))(v41, v35);
      v68[0] = v42;
      v43 = v63;
      v44 = v65;
      sub_1AF75B824();
      v45 = v62;
      if ((*(v62 + 48))(v43, 1, v44) == 1)
      {
        (*(v59 + 8))(v43, v60);
        v46 = *(TupleTypeMetadata2 + 48);
        sub_1AF441194(v34, v68);

        sub_1AF5C5358(0, &qword_1EB638380);
      }

      else
      {

        v49 = *(v45 + 32);
        v50 = v57;
        v49(v57, v43, v44);
        v46 = *(TupleTypeMetadata2 + 48);
        v49(v58, v50, v44);
      }

      v47 = v67;
      v51 = v56;
      swift_dynamicCast();
      v52 = v64;
      v54(v64, v29, TupleTypeMetadata2);
      *&v47[v46] = *&v52[*(TupleTypeMetadata2 + 48)];
      (*(v21 + 56))(v47, 0, 1, TupleTypeMetadata2);
      return (*(*(v51 - 8) + 8))(v52, v51);
    }

    else
    {

      v48 = v67;
      v31(v67, v29, TupleTypeMetadata2);
      return (*(v21 + 56))(v48, 0, 1, TupleTypeMetadata2);
    }
  }
}

uint64_t sub_1AF96C5D8@<X0>(char *a1@<X0>, uint64_t (*a2)(char *, uint64_t, char *)@<X1>, uint64_t *a3@<X8>)
{
  v6 = *a1;
  v7 = *(swift_getTupleTypeMetadata2() + 48);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  result = a2(a3 + *(TupleTypeMetadata2 + 48), v6, &a1[v7]);
  *a3 = result;
  return result;
}

uint64_t sub_1AF96C694(uint64_t a1, char a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness, v6);
  v8 = &v10 - v7;
  result = type metadata accessor for GraphCursor();
  if ((a2 & 1) != 0 || !*(*(a1 + *(result + 48)) + 16))
  {
    (*(v5 + 16))(v8, a1 + *(result + 44), AssociatedTypeWitness);
    sub_1AFDFD538();
    return sub_1AFDFD4E8();
  }

  return result;
}

uint64_t sub_1AF96C7E4()
{
  if (qword_1EB6325F0 != -1)
  {
    swift_once();
  }

  v1 = sub_1AF3FC458(sub_1AF96D55C, 0, byte_1EB6C28A0, qword_1EB6C28A8, byte_1EB6C28B0, MEMORY[0x1E69E7CC0]);

  v2 = *(v0 + 24);
  if (v2 >> 62)
  {
    v5 = sub_1AFDFE108();
    if (v5)
    {
      v6 = v5;
      v3 = sub_1AFC892CC(v5, 0);
      swift_bridgeObjectRetain_n();

      sub_1AF56DE9C(v3 + 32, v6, v2);
    }

    else
    {

      v3 = MEMORY[0x1E69E7CC0];
    }
  }

  else
  {
    v3 = v2 & 0xFFFFFFFFFFFFFF8;
    swift_bridgeObjectRetain_n();
  }

  v7 = v3;
  sub_1AF96E1E0(&v7, v1, sub_1AF6270E4, type metadata accessor for AuthoringNode);

  swift_bridgeObjectRelease_n();
  return v7;
}

uint64_t sub_1AF96C990()
{
  if (qword_1EB6325F0 != -1)
  {
    swift_once();
  }

  v1 = sub_1AF3FC4B4(sub_1AF96D588, 0, byte_1EB6C28A0, qword_1EB6C28A8, byte_1EB6C28B0, MEMORY[0x1E69E7CC0]);

  v2 = *(v0 + 16);
  if (v2 >> 62)
  {
    v5 = sub_1AFDFE108();
    if (v5)
    {
      v6 = v5;
      v3 = sub_1AFC892CC(v5, 0);
      swift_bridgeObjectRetain_n();

      sub_1AF56E010(v3 + 32, v6, v2);
    }

    else
    {

      v3 = MEMORY[0x1E69E7CC0];
    }
  }

  else
  {
    v3 = v2 & 0xFFFFFFFFFFFFFF8;
    swift_bridgeObjectRetain_n();
  }

  v7 = v3;
  sub_1AF96E1E0(&v7, v1, sub_1AF6270E4, type metadata accessor for Node);

  swift_bridgeObjectRelease_n();
  return v7;
}

void sub_1AF96CB3C(void *a1@<X8>)
{
  v1 = MEMORY[0x1E69E7CC0];
  *a1 = MEMORY[0x1E69E7CC0];
  a1[1] = v1;
  a1[2] = &unk_1F24F2AC8;
  a1[3] = v1;
  a1[4] = v1;
  a1[5] = v1;
}

void *sub_1AF96CB78()
{
  v0 = swift_allocObject();
  v1 = MEMORY[0x1E69E7CC0];
  v0[3] = 0;
  v0[4] = 0;
  v0[2] = v1;
  sub_1AFDFC308();
  return v0;
}

uint64_t sub_1AF96CC0C()
{

  sub_1AF919DAC(*(v0 + 24));
  v1 = OBJC_IVAR____TtC3VFX4Node_authoringID;
  v2 = sub_1AFDFC318();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_1AF96CD1C(__objc2_class **a1)
{
  if (*a1 != _TtC3VFX12SubGraphNode || !*(a1 + OBJC_IVAR____TtC3VFX12SubGraphNode_graph))
  {
    return 0;
  }

  result = swift_dynamicCastClass();
  if (result)
  {
    v2 = result;

    return v2;
  }

  return result;
}

uint64_t sub_1AF96CDCC(__objc2_class ***a1)
{
  if (**a1 != _TtC3VFX12SubGraphNode || !*(*a1 + OBJC_IVAR____TtC3VFX12SubGraphNode_graph))
  {
    return 0;
  }

  result = swift_dynamicCastClass();
  if (result)
  {
    v2 = result;

    return v2;
  }

  return result;
}

uint64_t sub_1AF96CE80(void *a1, uint64_t a2)
{
  *(*a1 + OBJC_IVAR____TtC3VFX12SubGraphNode_graph) = a2;
}

uint64_t sub_1AF96CED0()
{
  v1 = OBJC_IVAR____TtC3VFX13AuthoringNode_authoringID;
  v2 = sub_1AFDFC318();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_1AF96D010(__objc2_class **a1)
{
  if (*a1 != _TtC3VFX21AuthoringSubGraphNode)
  {
    return 0;
  }

  result = swift_dynamicCastClass();
  if (result)
  {
    v2 = result;

    return v2;
  }

  return result;
}

uint64_t sub_1AF96D0BC(__objc2_class ***a1)
{
  if (**a1 != _TtC3VFX21AuthoringSubGraphNode)
  {
    return 0;
  }

  result = swift_dynamicCastClass();
  if (result)
  {
    v2 = result;

    return v2;
  }

  return result;
}

uint64_t sub_1AF96D16C(void *a1, uint64_t a2)
{
  *(*a1 + OBJC_IVAR____TtC3VFX21AuthoringSubGraphNode_graph) = a2;
}

void sub_1AF96D1BC(void *a1@<X8>)
{
  v1 = MEMORY[0x1E69E7CC0];
  *a1 = MEMORY[0x1E69E7CC0];
  a1[1] = v1;
  a1[2] = &unk_1F24F0150;
  a1[3] = v1;
  a1[4] = v1;
  a1[5] = v1;
}

uint64_t sub_1AF96D1DC()
{
  v8[0] = 0;
  v8[1] = 0xE000000000000000;
  sub_1AFDFE218();
  MEMORY[0x1B2718AE0](0x6F686563616C703CLL, 0xED00003A7265646CLL);
  v1 = *(v0 + OBJC_IVAR____TtC3VFX16_PlaceholderNode_oldNode + 24);
  v2 = sub_1AF441150((v0 + OBJC_IVAR____TtC3VFX16_PlaceholderNode_oldNode), v1);
  v3 = *(v1 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2, v2);
  v6 = v8 - v5;
  (*(v3 + 16))(v8 - v5, v4);
  sub_1AFDFEDD8();
  (*(v3 + 8))(v6, v1);
  MEMORY[0x1B2718AE0](62, 0xE100000000000000);
  return v8[0];
}

char *sub_1AF96D320(void *a1)
{
  v2 = swift_allocObject();
  sub_1AF441194(a1 + OBJC_IVAR____TtC3VFX16_PlaceholderNode_oldNode, v2 + OBJC_IVAR____TtC3VFX16_PlaceholderNode_oldNode);
  return sub_1AF96FD00(a1);
}

uint64_t sub_1AF96D3B0()
{

  sub_1AF919DAC(*(v0 + 24));
  v1 = OBJC_IVAR____TtC3VFX4Node_authoringID;
  v2 = sub_1AFDFC318();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v0 + OBJC_IVAR____TtC3VFX16_PlaceholderNode_oldNode);

  return swift_deallocClassInstance();
}

unint64_t sub_1AF96D4F0()
{
  result = qword_1EB640810;
  if (!qword_1EB640810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB640810);
  }

  return result;
}

uint64_t sub_1AF96D5B4@<X0>(void *a1@<X0>, uint64_t (*a2)(void, void, void)@<X1>, uint64_t *a3@<X8>)
{
  result = a2(a1[1], a1[3], a1[4]);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

void *sub_1AF96D5F4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  sub_1AF96E5C0(0, &qword_1EB630BF8, MEMORY[0x1E69E6EC8]);
  v3 = sub_1AFDFE5C8();
  v4 = (a1 + 40);
  do
  {
    v5 = *(v4 - 1);
    v6 = *v4;
    v4 += 16;
    v7 = sub_1AF0D3F10(v5);
    *(v3 + ((v7 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v7;
    *(v3[6] + 8 * v7) = v5;
    *(v3[7] + v7) = v6;
    ++v3[2];
    --v1;
  }

  while (v1);
  return v3;
}

uint64_t sub_1AF96D6F4(uint64_t *__dst, uint64_t *__src, uint64_t *a3, uint64_t *a4, uint64_t a5)
{
  v7 = a3;
  v8 = __src;
  v9 = __dst;
  v10 = __src - __dst;
  v11 = __src - __dst + 7;
  if (__src - __dst >= 0)
  {
    v11 = __src - __dst;
  }

  v12 = v11 >> 3;
  v13 = a3 - __src;
  v14 = a3 - __src + 7;
  if (a3 - __src >= 0)
  {
    v14 = a3 - __src;
  }

  v15 = v14 >> 3;
  if (v12 < v14 >> 3)
  {
    v16 = a4;
    if (a4 != __dst || &__dst[v12] <= a4)
    {
      memmove(a4, __dst, 8 * v12);
    }

    v17 = &a4[v12];
    if (v10 < 8)
    {
LABEL_10:
      v8 = v9;
      goto LABEL_51;
    }

    while (1)
    {
      if (v8 >= v7)
      {
        goto LABEL_10;
      }

      if (*(a5 + 16))
      {
        v20 = v17;
        v21 = *v16;
        v22 = sub_1AF0D3F10(*v8);
        v24 = (v23 & 1) != 0 ? *(*(a5 + 56) + 8 * v22) : 0;
        v25 = sub_1AF0D3F10(v21);
        v27 = (v26 & 1) != 0 ? *(*(a5 + 56) + 8 * v25) : 0;
        v17 = v20;
        if (v24 < v27)
        {
          break;
        }
      }

      v18 = v8;
      v19 = v9 == v8++;
      if (!v19)
      {
        goto LABEL_12;
      }

LABEL_13:
      ++v9;
      if (v16 >= v17)
      {
        goto LABEL_10;
      }
    }

    v18 = v16;
    v19 = v9 == v16++;
    if (v19)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v9 = *v18;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[v15] <= a4)
  {
    memmove(a4, __src, 8 * v15);
  }

  v43 = a4;
  v17 = &a4[v15];
  if (v13 < 8)
  {
    v16 = a4;
  }

  else
  {
    v16 = a4;
    if (v8 > v9)
    {
LABEL_31:
      v28 = v8 - 1;
      --v7;
      v42 = v8;
      do
      {
        v29 = v7 + 1;
        if (!*(a5 + 16) || ((v30 = v17, v31 = v17 - 8, v32 = v28, v33 = *v28, v34 = sub_1AF0D3F10(*(v17 - 1)), (v35 & 1) == 0) ? (v36 = 0) : (v36 = *(*(a5 + 56) + 8 * v34)), (v37 = sub_1AF0D3F10(v33), (v38 & 1) == 0) ? (v39 = 0) : (v39 = *(*(a5 + 56) + 8 * v37)), v28 = v32, v17 = v30, v40 = v36 < v39, v16 = v43, v8 = v42, !v40))
        {
          if (v29 != v8)
          {
            *v7 = *v28;
          }

          if (v17 <= v16 || (v8 = v28, v28 <= v9))
          {
            v8 = v28;
            goto LABEL_51;
          }

          goto LABEL_31;
        }

        if (v29 != v30)
        {
          *v7 = *v31;
        }

        --v7;
        v17 = v31;
      }

      while (v31 > v43);
      v17 = v31;
    }
  }

LABEL_51:
  if (v8 != v16 || v8 >= (v16 + ((v17 - v16 + (v17 - v16 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(v8, v16, 8 * ((v17 - v16) / 8));
  }

  return 1;
}

uint64_t sub_1AF96D9C4(uint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v6 = a3[1];
  if (v6 >= 1)
  {
    v86 = *a1;
    swift_bridgeObjectRetain_n();
    v7 = 0;
    v8 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v20 = v7++;
      v83 = v20;
      if (v7 < v6)
      {
        v21 = *a3;
        v22 = *(a5 + 16);
        v89 = v8;
        if (v22)
        {
          v23 = *(v21 + 8 * v20);
          v24 = sub_1AF0D3F10(*(v21 + 8 * v7));
          if (v25)
          {
            v26 = *(*(a5 + 56) + 8 * v24);
          }

          else
          {
            v26 = 0;
          }

          v28 = sub_1AF0D3F10(v23);
          if (v29)
          {
            v27 = *(*(a5 + 56) + 8 * v28);
          }

          else
          {
            v27 = 0;
          }
        }

        else
        {
          v27 = 0;
          v26 = 0;
        }

        v7 = v83 + 2;
        if (v83 + 2 >= v6)
        {
LABEL_33:
          if (v26 >= v27)
          {
            goto LABEL_34;
          }
        }

        else
        {
          v30 = (v21 + 8 * v83 + 16);
          do
          {
            if (v22)
            {
              v31 = *(v30 - 1);
              v32 = sub_1AF0D3F10(*v30);
              if (v33)
              {
                v34 = *(*(a5 + 56) + 8 * v32);
              }

              else
              {
                v34 = 0;
              }

              v35 = sub_1AF0D3F10(v31);
              if (v36)
              {
                v37 = *(*(a5 + 56) + 8 * v35);
              }

              else
              {
                v37 = 0;
              }

              if (v26 >= v27 == v34 < v37)
              {
                goto LABEL_33;
              }
            }

            else if (v26 < v27)
            {
              goto LABEL_40;
            }

            ++v7;
            ++v30;
          }

          while (v6 != v7);
          v7 = v6;
          if (v26 >= v27)
          {
LABEL_34:
            v20 = v83;
            v8 = v89;
            if (v83 < v7)
            {
              v38 = 8 * v7 - 8;
              v39 = 8 * v83;
              v40 = v7;
              v41 = v83;
              do
              {
                if (v41 != --v40)
                {
                  v42 = *a3;
                  v43 = *(*a3 + v39);
                  *(v42 + v39) = *(*a3 + v38);
                  *(v42 + v38) = v43;
                }

                ++v41;
                v38 -= 8;
                v39 += 8;
              }

              while (v41 < v40);
            }

            goto LABEL_41;
          }
        }

LABEL_40:
        v8 = v89;
        v20 = v83;
      }

LABEL_41:
      v44 = a3[1];
      v45 = v7 < v44 && v7 - v20 < a4;
      if (!v45)
      {
        goto LABEL_65;
      }

      if (v20 + a4 >= v44)
      {
        v46 = a3[1];
      }

      else
      {
        v46 = v20 + a4;
      }

      if (v20 + a4 == v7)
      {
        v7 = v46;
        goto LABEL_65;
      }

      v90 = v8;
      v84 = *a3;
      v85 = v46;
      v47 = *a3 + 8 * v7 - 8;
      v48 = v20 - v7;
      while (2)
      {
        v49 = *(v84 + 8 * v7);
        v50 = v48;
        v51 = v47;
        while (1)
        {
          v53 = *v51;
          if (*(a5 + 16))
          {
            break;
          }

LABEL_54:
          *v51 = v49;
          v51[1] = v53;
          --v51;
          if (__CFADD__(v50++, 1))
          {
            goto LABEL_52;
          }
        }

        v54 = sub_1AF0D3F10(v49);
        if (v55)
        {
          v56 = *(*(a5 + 56) + 8 * v54);
        }

        else
        {
          v56 = 0;
        }

        v57 = sub_1AF0D3F10(v53);
        if (v58)
        {
          if (v56 < *(*(a5 + 56) + 8 * v57))
          {
            goto LABEL_52;
          }

LABEL_63:
          v53 = *v51;
          goto LABEL_54;
        }

        if (v56 >= 0)
        {
          goto LABEL_63;
        }

LABEL_52:
        ++v7;
        v47 += 8;
        --v48;
        if (v7 != v85)
        {
          continue;
        }

        break;
      }

      v7 = v85;
      v8 = v90;
      v20 = v83;
LABEL_65:
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v8 = sub_1AF4209A4(0, *(v8 + 2) + 1, 1, v8);
      }

      v60 = *(v8 + 2);
      v59 = *(v8 + 3);
      v61 = v60 + 1;
      if (v60 >= v59 >> 1)
      {
        v8 = sub_1AF4209A4(v59 > 1, v60 + 1, 1, v8);
      }

      *(v8 + 2) = v61;
      v62 = v8 + 32;
      v63 = &v8[16 * v60 + 32];
      *v63 = v20;
      *(v63 + 1) = v7;
      if (v60)
      {
        v91 = v8;
        do
        {
          v64 = v61 - 1;
          if (v61 >= 4)
          {
            v68 = &v62[16 * v61];
            v69 = *(v68 - 7) - *(v68 - 8);
            v67 = *(v68 - 5) - *(v68 - 6);
            v70 = &v8[16 * v61];
            v65 = *v70;
            v66 = *(v70 + 1);
            if (v67 - v65 + v66 >= v69)
            {
              v73 = v61 - 2;
              v72 = *&v62[16 * v64 + 8] - *&v62[16 * v64];
LABEL_81:
              if (v67 < v72)
              {
                v64 = v73;
              }

              goto LABEL_83;
            }
          }

          else
          {
            if (v61 != 3)
            {
              v71 = *&v8[16 * v61 + 8] - *&v8[16 * v61];
              v72 = *&v62[16 * v64 + 8] - *&v62[16 * v64];
              goto LABEL_78;
            }

            v65 = *(v8 + 6);
            v66 = *(v8 + 7);
            v67 = *(v8 + 5) - *(v8 + 4);
          }

          v71 = v66 - v65;
          v72 = *&v62[16 * v64 + 8] - *&v62[16 * v64];
          if (v71 + v72 >= v67)
          {
            v73 = v61 - 2;
            goto LABEL_81;
          }

LABEL_78:
          if (v72 < v71)
          {
            v8 = v91;
            break;
          }

LABEL_83:
          v74 = &v62[16 * v64];
          v75 = *(v74 - 2);
          v76 = *(v74 + 1);
          v77 = (*a3 + 8 * v75);
          v78 = (*a3 + 8 * *v74);
          v79 = (*a3 + 8 * v76);

          sub_1AF96D6F4(v77, v78, v79, v86, a5);
          if (v93)
          {
            goto LABEL_86;
          }

          *(v74 - 2) = v75;
          *(v74 - 1) = v76;
          v8 = v91;
          v80 = *(v91 + 2);
          v61 = v80 - 1;
          memmove(&v62[16 * v64], v74 + 16, 16 * (v80 - 1 - v64));
          *(v91 + 2) = v80 - 1;
        }

        while (v80 > 2);
      }

      v6 = a3[1];
      if (v7 >= v6)
      {
        goto LABEL_4;
      }
    }
  }

  swift_bridgeObjectRetain_n();
  v8 = MEMORY[0x1E69E7CC0];
LABEL_4:
  v87 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v8 = sub_1AF650C88(v8);
  }

  v9 = v8 + 16;
  v10 = *(v8 + 2);
  if (v10 < 2)
  {
LABEL_10:
    swift_bridgeObjectRelease_n();
  }

  else
  {
    v88 = v8;
    while (1)
    {
      v11 = &v8[16 * v10];
      v12 = *v11;
      v13 = &v9[2 * v10];
      v14 = (*a3 + 8 * *v11);
      v15 = v13[1];
      v16 = (*a3 + 8 * *v13);
      v17 = (*a3 + 8 * v15);

      sub_1AF96D6F4(v14, v16, v17, v87, a5);
      if (v93)
      {
        break;
      }

      *v11 = v12;
      *(v11 + 1) = v15;
      v18 = *v9 - 1;
      memmove(&v9[2 * v10], v13 + 2, 16 * (*v9 - v10));
      *v9 = v18;
      v10 = v18;
      v45 = v18 > 1;
      v8 = v88;
      if (!v45)
      {
        goto LABEL_10;
      }
    }

LABEL_86:

    return swift_bridgeObjectRelease_n();
  }
}

unint64_t sub_1AF96DF88(unint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  if (a3 != a2)
  {
    v6 = a3;
    v18 = *a4;
    v7 = *a4 + 8 * a3 - 8;
    for (i = result - a3; ; --i)
    {
      v9 = *(v18 + 8 * v6);
      v10 = i;
      v11 = v7;
      while (1)
      {
        v13 = *v11;
        if (*(a5 + 16))
        {
          break;
        }

LABEL_6:
        *v11 = v9;
        v11[1] = v13;
        --v11;
        if (__CFADD__(v10++, 1))
        {
          goto LABEL_4;
        }
      }

      v14 = sub_1AF0D3F10(v9);
      v16 = (v15 & 1) != 0 ? *(*(a5 + 56) + 8 * v14) : 0;
      result = sub_1AF0D3F10(v13);
      if (v17)
      {
        break;
      }

      if (v16 >= 0)
      {
        goto LABEL_15;
      }

LABEL_4:
      ++v6;
      v7 += 8;
      if (v6 == a2)
      {
        return result;
      }
    }

    if (v16 < *(*(a5 + 56) + 8 * result))
    {
      goto LABEL_4;
    }

LABEL_15:
    v13 = *v11;
    goto LABEL_6;
  }

  return result;
}

uint64_t sub_1AF96E090(uint64_t *a1, uint64_t a2, void (*a3)(void))
{
  v6 = a1[1];
  swift_bridgeObjectRetain_n();
  v7 = sub_1AFDFE9D8();
  if (v7 >= v6)
  {
    if (v6)
    {

      sub_1AF96DF88(0, v6, 1, a1, a2);
    }

    return swift_bridgeObjectRelease_n();
  }

  else
  {
    v8 = v7;
    v9 = v6 / 2;
    if (v6 <= 1)
    {
      v10 = MEMORY[0x1E69E7CC0];
    }

    else
    {
      a3(0);
      v10 = sub_1AFDFD488();
      *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10) = v9;
    }

    v12[0] = ((v10 & 0xFFFFFFFFFFFFFF8) + 32);
    v12[1] = v9;

    sub_1AF96D9C4(v12, v13, a1, v8, a2);

    *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10) = 0;
    swift_bridgeObjectRelease_n();
  }
}

uint64_t sub_1AF96E1E0(uint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), void (*a4)(void))
{
  v8 = *a1;
  swift_bridgeObjectRetain_n();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v8;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = a3(v8);
    *a1 = v8;
  }

  v10 = *(v8 + 16);
  v12[0] = v8 + 32;
  v12[1] = v10;

  sub_1AF96E090(v12, a2, a4);

  sub_1AFDFE348();
  return swift_bridgeObjectRelease_n();
}

uint64_t sub_1AF96E3D4(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  swift_getAssociatedTypeWitness();
  v13 = sub_1AFDFD478();
  v7 = *(a4 + 40);

  v7(v8, a3, a4);
  v10[2] = a3;
  v10[3] = a4;
  v11 = a2;
  v12 = &v13;
  sub_1AF9674A8(1, 0x1000000000000000, 0, sub_1AF96E628, v10, a3, a4);
  swift_unknownObjectRelease();
  return v13;
}

void sub_1AF96E5C0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void, ValueMetadata *, void))
{
  if (!*a2)
  {
    v4 = a3(0, MEMORY[0x1E69E5FE0], &type metadata for TraversalTag, MEMORY[0x1E69E5FE8]);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1AF96E64C(uint64_t a1, void (*a2)(uint64_t *__return_ptr, __int128 *))
{
  v2 = sub_1AF97228C();
  v3 = *(v2 + 16);
  if (!v3)
  {
    v6 = MEMORY[0x1E69E7CC0];
    goto LABEL_16;
  }

  v4 = 0;
  v26 = OBJC_IVAR____TtC3VFX13AuthoringNode_raw;
  v5 = v2 + 40;
  v6 = MEMORY[0x1E69E7CC0];
  v24 = v2 + 40;
  do
  {
    v7 = (v5 + 16 * v4);
    v8 = v4;
    while (1)
    {
      v9 = *(v7 - 1);
      if (v9)
      {
        break;
      }

LABEL_4:
      ++v8;
      v7 += 2;
      if (v3 == v8)
      {
        goto LABEL_16;
      }
    }

    v10 = *v7;
    v11 = *(**(a1 + v26) + 152);

    v11(v30, v12);

    v13 = v30[0];
    v36 = v30[0];
    v35 = v30[1];
    sub_1AF9121F8(&v35, &qword_1EB638968, &type metadata for TypeConstraint);
    v34 = v30[2];
    sub_1AF9121F8(&v34, &qword_1EB638968, &type metadata for TypeConstraint);
    v33 = v30[3];
    sub_1AF9199D8(&v33, sub_1AF445C2C);
    v32 = v30[4];
    sub_1AF9199D8(&v32, sub_1AF445C2C);
    v31 = v30[5];
    sub_1AF9121F8(&v31, &qword_1EB638978, &type metadata for AnyValue);
    v14 = *(v13 + 8 * v8 + 32);
    sub_1AF4410A8(v14);
    sub_1AF9121F8(&v36, &qword_1EB638968, &type metadata for TypeConstraint);
    v15 = swift_allocObject();
    *(v15 + 16) = 0xC000000000000008;
    LOBYTE(v13) = sub_1AF9C5694(v14, v15 | 0x8000000000000000);

    sub_1AF441114(v14);
    if (v13)
    {

      goto LABEL_4;
    }

    *&v28 = v6;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1AFC0782C(0, *(v6 + 16) + 1, 1);
      v6 = v28;
    }

    v17 = *(v6 + 16);
    v16 = *(v6 + 24);
    if (v17 >= v16 >> 1)
    {
      sub_1AFC0782C(v16 > 1, v17 + 1, 1);
      v6 = v28;
    }

    v4 = v8 + 1;
    *(v6 + 16) = v17 + 1;
    v18 = (v6 + 24 * v17);
    v18[4] = v8;
    v18[5] = v9;
    v18[6] = v10;
    v5 = v24;
  }

  while (v3 - 1 != v8);
LABEL_16:

  v19 = *(v6 + 16);
  if (v19)
  {
    v20 = (v6 + 40);
    v21 = 1;
    do
    {
      v22 = *v20;
      v20 = (v20 + 24);
      v28 = v22;

      a2(&v29, &v28);

      v21 += v29;
      --v19;
    }

    while (v19);
  }

  else
  {
    v21 = 1;
  }

  return v21;
}

uint64_t sub_1AF96E968(uint64_t a1, void (*a2)(uint64_t *__return_ptr, __int128 *))
{
  v2 = sub_1AF971F68();
  v3 = *(v2 + 16);
  if (!v3)
  {
    v6 = MEMORY[0x1E69E7CC0];
    goto LABEL_16;
  }

  v4 = 0;
  v5 = v2 + 40;
  v6 = MEMORY[0x1E69E7CC0];
  v24 = v2 + 40;
  do
  {
    v7 = (v5 + 16 * v4);
    v8 = v4;
    while (1)
    {
      v9 = *(v7 - 1);
      if (v9)
      {
        break;
      }

LABEL_4:
      ++v8;
      v7 += 2;
      if (v3 == v8)
      {
        goto LABEL_16;
      }
    }

    v10 = *v7;
    v11 = *(*a1 + 152);

    v11(v29, v12);
    v13 = v29[0];
    v35 = v29[0];
    v34 = v29[1];
    sub_1AF9121F8(&v34, &qword_1EB638968, &type metadata for TypeConstraint);
    v33 = v29[2];
    sub_1AF9121F8(&v33, &qword_1EB638968, &type metadata for TypeConstraint);
    v32 = v29[3];
    sub_1AF9199D8(&v32, sub_1AF445C2C);
    v31 = v29[4];
    sub_1AF9199D8(&v31, sub_1AF445C2C);
    v30 = v29[5];
    sub_1AF9121F8(&v30, &qword_1EB638978, &type metadata for AnyValue);
    v14 = *(v13 + 8 * v8 + 32);
    sub_1AF4410A8(v14);
    sub_1AF9121F8(&v35, &qword_1EB638968, &type metadata for TypeConstraint);
    v15 = swift_allocObject();
    *(v15 + 16) = 0xC000000000000008;
    LOBYTE(v13) = sub_1AF9C5694(v14, v15 | 0x8000000000000000);

    sub_1AF441114(v14);
    if (v13)
    {

      goto LABEL_4;
    }

    *&v27 = v6;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1AFC0793C(0, *(v6 + 16) + 1, 1);
      v6 = v27;
    }

    v17 = *(v6 + 16);
    v16 = *(v6 + 24);
    if (v17 >= v16 >> 1)
    {
      sub_1AFC0793C(v16 > 1, v17 + 1, 1);
      v6 = v27;
    }

    v4 = v8 + 1;
    *(v6 + 16) = v17 + 1;
    v18 = (v6 + 24 * v17);
    v18[4] = v8;
    v18[5] = v9;
    v18[6] = v10;
    v5 = v24;
  }

  while (v3 - 1 != v8);
LABEL_16:

  v19 = *(v6 + 16);
  if (v19)
  {
    v20 = (v6 + 40);
    v21 = 1;
    do
    {
      v22 = *v20;
      v20 = (v20 + 24);
      v27 = v22;

      a2(&v28, &v27);

      v21 += v28;
      --v19;
    }

    while (v19);
  }

  else
  {
    v21 = 1;
  }

  return v21;
}

uint64_t sub_1AF96EC68()
{
  result = swift_getAssociatedTypeWitness();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t *sub_1AF96ED40(uint64_t *a1, uint64_t *a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  v6 = *(v5 + 80);
  v7 = *(v5 + 64) + 7;
  v8 = *(v5 + 80) & 0x100000;
  v9 = *a2;
  *a1 = *a2;
  if (v6 > 7 || v8 != 0 || ((((((v7 + ((v6 + 8) & ~v6)) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8 > 0x18)
  {
    a1 = (v9 + ((v6 & 0xF8 ^ 0x1F8) & (v6 + 16)));
  }

  else
  {
    v12 = ~v6;
    v13 = a1 + v6;
    v14 = a2 + v6;
    v15 = (v13 + 8) & v12;
    v16 = (v14 + 8) & v12;
    (*(v5 + 16))(v15, v16, AssociatedTypeWitness);
    v17 = ((v7 + v15) & 0xFFFFFFFFFFFFFFF8);
    v18 = ((v7 + v16) & 0xFFFFFFFFFFFFFFF8);
    *v17 = *v18;
    v19 = ((v17 + 15) & 0xFFFFFFFFFFFFFFF8);
    v20 = ((v18 + 15) & 0xFFFFFFFFFFFFFFF8);
    v21 = v20[1];
    *v19 = *v20;
    v19[1] = v21;
    *((v19 + 23) & 0xFFFFFFFFFFFFFFF8) = *((v20 + 23) & 0xFFFFFFFFFFFFFFF8);
  }

  return a1;
}

uint64_t sub_1AF96EEBC(uint64_t a1)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 8))((a1 + *(*(AssociatedTypeWitness - 8) + 80) + 8) & ~*(*(AssociatedTypeWitness - 8) + 80), AssociatedTypeWitness);
}

void *sub_1AF96EF70(void *a1, void *a2)
{
  *a1 = *a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  v6 = v5 + 16;
  v7 = *(v5 + 80);
  v8 = (a1 + v7 + 8) & ~v7;
  v9 = (a2 + v7 + 8) & ~v7;
  (*(v5 + 16))(v8, v9, AssociatedTypeWitness);
  v10 = *(v6 + 48) + 7;
  v11 = ((v10 + v8) & 0xFFFFFFFFFFFFFFF8);
  v12 = ((v10 + v9) & 0xFFFFFFFFFFFFFFF8);
  *v11 = *v12;
  v13 = ((v11 + 15) & 0xFFFFFFFFFFFFFFF8);
  v14 = ((v12 + 15) & 0xFFFFFFFFFFFFFFF8);
  v15 = v14[1];
  *v13 = *v14;
  v13[1] = v15;
  *((v13 + 23) & 0xFFFFFFFFFFFFFFF8) = *((v14 + 23) & 0xFFFFFFFFFFFFFFF8);

  return a1;
}

void *sub_1AF96F068(void *a1, void *a2)
{
  *a1 = *a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  v6 = v5 + 24;
  v7 = *(v5 + 80);
  v8 = (a1 + v7 + 8) & ~v7;
  v9 = (a2 + v7 + 8) & ~v7;
  (*(v5 + 24))(v8, v9, AssociatedTypeWitness);
  v10 = *(v6 + 40) + 7;
  v11 = ((v10 + v8) & 0xFFFFFFFFFFFFFFF8);
  v12 = v10 + v9;
  v13 = (v12 & 0xFFFFFFFFFFFFFFF8) + 15;
  *v11 = *(v12 & 0xFFFFFFFFFFFFFFF8);

  v14 = ((v11 + 15) & 0xFFFFFFFFFFFFFFF8);
  v13 &= 0xFFFFFFFFFFFFFFF8;
  v15 = *(v13 + 8);
  *v14 = *v13;
  v14[1] = v15;

  *((v14 + 23) & 0xFFFFFFFFFFFFFFF8) = *((v13 + 23) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

void *sub_1AF96F174(void *a1, void *a2)
{
  *a1 = *a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  v6 = v5 + 32;
  v7 = *(v5 + 80);
  v8 = (a1 + v7 + 8) & ~v7;
  v9 = (a2 + v7 + 8) & ~v7;
  (*(v5 + 32))(v8, v9, AssociatedTypeWitness);
  v10 = *(v6 + 32) + 7;
  v11 = ((v10 + v8) & 0xFFFFFFFFFFFFFFF8);
  v12 = ((v10 + v9) & 0xFFFFFFFFFFFFFFF8);
  *v11 = *v12;
  v13 = ((v11 + 15) & 0xFFFFFFFFFFFFFFF8);
  v14 = ((v12 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v13 = *v14;
  *((v13 + 23) & 0xFFFFFFFFFFFFFFF8) = *((v14 + 23) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

void *sub_1AF96F258(void *a1, void *a2)
{
  *a1 = *a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  v6 = v5 + 40;
  v7 = *(v5 + 80);
  v8 = (a1 + v7 + 8) & ~v7;
  v9 = (a2 + v7 + 8) & ~v7;
  (*(v5 + 40))(v8, v9, AssociatedTypeWitness);
  v10 = *(v6 + 24) + 7;
  v11 = ((v10 + v8) & 0xFFFFFFFFFFFFFFF8);
  v12 = ((v10 + v9) & 0xFFFFFFFFFFFFFFF8);
  *v11 = *v12;

  v13 = ((v11 + 15) & 0xFFFFFFFFFFFFFFF8);
  v14 = ((v12 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v13 = *v14;

  *((v13 + 23) & 0xFFFFFFFFFFFFFFF8) = *((v14 + 23) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

uint64_t sub_1AF96F350(uint64_t *a1, unsigned int a2)
{
  v4 = *(swift_getAssociatedTypeWitness() - 8);
  v5 = v4;
  v6 = *(v4 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  v8 = *(v4 + 80);
  v9 = *(v4 + 64);
  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v10 = ((((((v9 + ((v8 + 8) & ~v8) + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8;
  v11 = v10 & 0xFFFFFFF8;
  if ((v10 & 0xFFFFFFF8) != 0)
  {
    v12 = 2;
  }

  else
  {
    v12 = a2 - v7 + 1;
  }

  if (v12 >= 0x10000)
  {
    v13 = 4;
  }

  else
  {
    v13 = 2;
  }

  if (v12 < 0x100)
  {
    v13 = 1;
  }

  if (v12 >= 2)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  if (v14 > 1)
  {
    if (v14 == 2)
    {
      v15 = *(a1 + v10);
      if (!v15)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v15 = *(a1 + v10);
      if (!v15)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v14 || (v15 = *(a1 + v10)) == 0)
  {
LABEL_28:
    if ((v6 & 0x80000000) != 0)
    {
      v19 = *(v5 + 48);

      return v19((a1 + v8 + 8) & ~v8);
    }

    else
    {
      v18 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v18) = -1;
      }

      return (v18 + 1);
    }
  }

  v17 = v15 - 1;
  if (v11)
  {
    v17 = 0;
    LODWORD(v11) = *a1;
  }

  return v7 + (v11 | v17) + 1;
}

void sub_1AF96F4FC(uint64_t *a1, uint64_t a2, unsigned int a3)
{
  v6 = *(swift_getAssociatedTypeWitness() - 8);
  v7 = *(v6 + 84);
  v8 = *(v6 + 80);
  if (v7 <= 0x7FFFFFFF)
  {
    v9 = 0x7FFFFFFF;
  }

  else
  {
    v9 = *(v6 + 84);
  }

  v10 = ((((((*(v6 + 64) + ((v8 + 8) & ~v8) + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v9 >= a3)
  {
    v13 = 0;
    v14 = a2 - v9;
    if (a2 <= v9)
    {
      goto LABEL_17;
    }
  }

  else
  {
    if (((((((*(v6 + 64) + ((v8 + 8) & ~v8) + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v11 = a3 - v9 + 1;
    }

    else
    {
      v11 = 2;
    }

    if (v11 >= 0x10000)
    {
      v12 = 4;
    }

    else
    {
      v12 = 2;
    }

    if (v11 < 0x100)
    {
      v12 = 1;
    }

    if (v11 >= 2)
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    v14 = a2 - v9;
    if (a2 <= v9)
    {
LABEL_17:
      if (v13 > 1)
      {
        if (v13 != 2)
        {
          *(a1 + v10) = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_33;
        }

        *(a1 + v10) = 0;
      }

      else if (v13)
      {
        *(a1 + v10) = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_33;
      }

      if (!a2)
      {
        return;
      }

LABEL_33:
      if ((v7 & 0x80000000) != 0)
      {
        v18 = *(v6 + 56);

        v18((a1 + v8 + 8) & ~v8, a2);
      }

      else
      {
        if ((a2 & 0x80000000) != 0)
        {
          v17 = a2 & 0x7FFFFFFF;
        }

        else
        {
          v17 = (a2 - 1);
        }

        *a1 = v17;
      }

      return;
    }
  }

  if (((((((*(v6 + 64) + ((v8 + 8) & ~v8) + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFF8)
  {
    v15 = v14;
  }

  else
  {
    v15 = 1;
  }

  if (((((((*(v6 + 64) + ((v8 + 8) & ~v8) + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) != 0xFFFFFFF8)
  {
    v16 = ~v9 + a2;
    bzero(a1, v10);
    *a1 = v16;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      *(a1 + v10) = v15;
    }

    else
    {
      *(a1 + v10) = v15;
    }
  }

  else if (v13)
  {
    *(a1 + v10) = v15;
  }
}

unint64_t *assignWithCopy for MappingMode.InputFilter(unint64_t *a1, unint64_t *a2)
{
  v3 = *a2;
  sub_1AF4410E4(*a2, sub_1AF4410A8);
  v4 = *a1;
  *a1 = v3;
  sub_1AF4410E4(v4, sub_1AF441114);
  return a1;
}

unint64_t *assignWithTake for MappingMode.InputFilter(unint64_t *a1, unint64_t *a2)
{
  v3 = *a1;
  *a1 = *a2;
  sub_1AF4410E4(v3, sub_1AF441114);
  return a1;
}

uint64_t getEnumTagSinglePayload for MappingMode.InputFilter(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xE && *(a1 + 8))
  {
    return (*a1 + 14);
  }

  v3 = ((((*a1 >> 57) & 8 | *a1 & 7) >> 2) & 0xFFFFFFF3 | (4 * (*a1 & 3))) ^ 0xF;
  if (v3 >= 0xD)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t storeEnumTagSinglePayload for MappingMode.InputFilter(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xD)
  {
    *result = a2 - 14;
    if (a3 >= 0xE)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0xE)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 2) & 3 | (4 * (-a2 & 0xF));
      *result = (v3 | (v3 << 57)) & 0x1000000000000007;
    }
  }

  return result;
}

uint64_t sub_1AF96F88C(void *a1)
{
  if ((*a1 & 0x1000000000000000) != 0)
  {
    return (*a1 >> 3) + 2;
  }

  else
  {
    return (*a1 >> 2) & 1;
  }
}

void *sub_1AF96F8C0(void *result, unsigned int a2)
{
  if (a2 < 2)
  {
    *result = *result & 0xEFFFFFFFFFFFFFF8 | (4 * a2);
  }

  else
  {
    *result = (8 * (a2 - 2)) | 0x1000000000000000;
  }

  return result;
}

uint64_t sub_1AF96F934(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = *(a2 + 8);
  sub_1AF4410E4(v4, sub_1AF4410A8);
  *(a1 + 8) = v4;
  *(a1 + 16) = *(a2 + 16);
  return a1;
}

uint64_t assignWithCopy for MappingMode(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = *(a2 + 8);
  sub_1AF4410E4(v4, sub_1AF4410A8);
  v5 = *(a1 + 8);
  *(a1 + 8) = v4;
  sub_1AF4410E4(v5, sub_1AF441114);
  *(a1 + 16) = *(a2 + 16);
  return a1;
}

uint64_t assignWithTake for MappingMode(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = *(a1 + 8);
  *(a1 + 8) = *(a2 + 8);
  sub_1AF4410E4(v4, sub_1AF441114);
  *(a1 + 16) = *(a2 + 16);
  return a1;
}

uint64_t getEnumTagSinglePayload for MappingMode(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[17])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = v3 - 2;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for MappingMode(uint64_t result, unsigned int a2, unsigned int a3)
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
      *result = a2 + 1;
    }
  }

  return result;
}

unint64_t sub_1AF96FB20()
{
  result = qword_1EB6408A0;
  if (!qword_1EB6408A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6408A0);
  }

  return result;
}

uint64_t sub_1AF96FB80(char a1)
{
  v3 = *v1;
  v4 = sub_1AFDFC318();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v3 + 112);

  v11 = v9(v10);
  if ((a1 & 1) == 0)
  {
    sub_1AFDFC308();
    (*(v5 + 40))(v11 + OBJC_IVAR____TtC3VFX4Node_authoringID, v8, v4);
  }

  return v11;
}

char *sub_1AF96FD00(void *a1)
{
  v3 = sub_1AFDFC318();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1E69E7CC0];
  *(v1 + 3) = 0;
  *(v1 + 4) = 0;
  *(v1 + 2) = v8;
  v9 = OBJC_IVAR____TtC3VFX4Node_authoringID;
  sub_1AFDFC308();
  *(v1 + 2) = a1[2];

  v10 = a1[3];
  v11 = a1[4];
  v12 = *(v1 + 3);
  *(v1 + 3) = v10;
  *(v1 + 4) = v11;
  sub_1AF448650(v10);
  sub_1AF919DAC(v12);
  (*(v4 + 16))(v7, a1 + OBJC_IVAR____TtC3VFX4Node_authoringID, v3);

  (*(v4 + 40))(&v1[v9], v7, v3);
  return v1;
}

uint64_t sub_1AF96FE5C(void (*a1)(void))
{
  v4 = *(*v1 + 112);

  v6 = v4(v5);
  a1();
  if (v2)
  {
  }

  return v6;
}

void *sub_1AF96FF1C()
{
  v0 = swift_allocObject();
  v1 = MEMORY[0x1E69E7CC0];
  v0[3] = 0;
  v0[4] = 0;
  v0[2] = v1;
  sub_1AFDFC308();
  return v0;
}

uint64_t sub_1AF96FF70(void *a1)
{
  v2 = swift_allocObject();
  sub_1AF96FD00(a1);
  return v2;
}

uint64_t sub_1AF96FFFC()
{

  sub_1AF919DAC(*(v0 + 24));
  v1 = OBJC_IVAR____TtC3VFX4Node_authoringID;
  v2 = sub_1AFDFC318();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for Node()
{
  result = qword_1EB631388;
  if (!qword_1EB631388)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1AF9700FC()
{
  result = sub_1AFDFC318();
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

uint64_t destroy for Signature()
{
}

void *initializeWithCopy for Signature(void *a1, void *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  a1[1] = v3;
  v4 = a2[3];
  a1[2] = a2[2];
  a1[3] = v4;
  v5 = a2[5];
  a1[4] = a2[4];
  a1[5] = v5;

  return a1;
}

void *assignWithCopy for Signature(void *a1, void *a2)
{
  *a1 = *a2;

  a1[1] = a2[1];

  a1[2] = a2[2];

  a1[3] = a2[3];

  a1[4] = a2[4];

  a1[5] = a2[5];

  return a1;
}

_OWORD *assignWithTake for Signature(_OWORD *a1, _OWORD *a2)
{

  *a1 = *a2;

  a1[1] = a2[1];

  a1[2] = a2[2];

  return a1;
}

uint64_t sub_1AF9703D8()
{
  v1 = (*(*v0 + 144))();
  if (v2)
  {
    v3 = v1;
    v4 = v2;
    v5 = sub_1AFDFF4B8();
    MEMORY[0x1B2718AE0](v5);

    v6 = MEMORY[0x1B2718AE0](8250, 0xE200000000000000);
    v7 = (*(*v0 + 128))(v6);
    MEMORY[0x1B2718AE0](v7);

    MEMORY[0x1B2718AE0](91, 0xE100000000000000);
    MEMORY[0x1B2718AE0](v3, v4);

    v8 = 15965;
    v9 = 0xE200000000000000;
  }

  else
  {
    v10 = sub_1AFDFF4B8();
    MEMORY[0x1B2718AE0](v10);

    v11 = MEMORY[0x1B2718AE0](8250, 0xE200000000000000);
    v12 = (*(*v0 + 128))(v11);
    MEMORY[0x1B2718AE0](v12);

    v8 = 62;
    v9 = 0xE100000000000000;
  }

  MEMORY[0x1B2718AE0](v8, v9);
  return 60;
}

uint64_t sub_1AF970608(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 16);
  v4 = MEMORY[0x1E69E7CC0];
  if (!v3)
  {
    v17 = *(a2 + 16);
    if (!v17)
    {
      return 0;
    }

    goto LABEL_9;
  }

  v31 = MEMORY[0x1E69E7CC0];
  sub_1AFC05CE4(0, v3, 0);
  v6 = (a1 + 32);
  do
  {
    v7 = *v6++;
    sub_1AF442064(v7);
    v8 = sub_1AF90D394(v7);
    v10 = v9;
    sub_1AF445BE4(v7);
    v12 = *(v31 + 16);
    v11 = *(v31 + 24);
    if (v12 >= v11 >> 1)
    {
      sub_1AFC05CE4(v11 > 1, v12 + 1, 1);
    }

    *(v31 + 16) = v12 + 1;
    v13 = v31 + 16 * v12;
    *(v13 + 32) = v8;
    *(v13 + 40) = v10;
    --v3;
  }

  while (v3);
  sub_1AF629AE4();
  sub_1AF488088();
  v14 = sub_1AFDFCD98();
  v16 = v15;

  MEMORY[0x1B2718AE0](v14, v16);

  MEMORY[0x1B2718AE0](41, 0xE100000000000000);

  MEMORY[0x1B2718AE0](40, 0xE100000000000000);

  v17 = *(a2 + 16);
  if (v17)
  {
    MEMORY[0x1B2718AE0](0x209286E220, 0xA500000000000000);
LABEL_9:
    sub_1AFC05CE4(0, v17, 0);
    v18 = v4;
    v19 = (a2 + 32);
    do
    {
      v20 = *v19++;
      sub_1AF442064(v20);
      v21 = sub_1AF90D394(v20);
      v23 = v22;
      sub_1AF445BE4(v20);
      v25 = *(v18 + 16);
      v24 = *(v18 + 24);
      if (v25 >= v24 >> 1)
      {
        sub_1AFC05CE4(v24 > 1, v25 + 1, 1);
      }

      *(v18 + 16) = v25 + 1;
      v26 = v18 + 16 * v25;
      *(v26 + 32) = v21;
      *(v26 + 40) = v23;
      --v17;
    }

    while (v17);
    sub_1AF629AE4();
    sub_1AF488088();
    v27 = sub_1AFDFCD98();
    v29 = v28;

    MEMORY[0x1B2718AE0](v27, v29);
  }

  return 0;
}

uint64_t sub_1AF9708B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  swift_unknownObjectWeakInit();
  v12 = 0;
  swift_unknownObjectWeakAssign();
  v13 = 0x3E6C6C756E3CLL;
  v14 = 0xE600000000000000;
  type metadata accessor for ImplicitWorldObjectNode(0);
  v6 = swift_allocObject();
  sub_1AF44596C(v11, v10);
  sub_1AF44596C(v10, v6 + OBJC_IVAR____TtC3VFX15WorldObjectNode_reference);
  v7 = (v6 + OBJC_IVAR____TtC3VFX15WorldObjectNode_semantic);
  v8 = MEMORY[0x1E69E7CC0];
  *v7 = a1;
  v7[1] = a2;
  v6[2] = v8;
  v6[3] = 0;
  v6[4] = 0;
  sub_1AFDFC308();
  sub_1AF4459C8(v10);
  sub_1AF4459C8(v11);
  result = type metadata accessor for Node();
  a3[4] = result;
  *a3 = 0xC000000000000000;
  a3[1] = v6;
  return result;
}

BOOL sub_1AF9709B8(uint64_t a1, char a2, uint64_t a3, char a4)
{
  if (!a2)
  {
    if (!a4)
    {
      return a1 == a3;
    }

    return 0;
  }

  if (a2 == 1)
  {
    if (a4 == 1)
    {
      return a1 == a3;
    }

    return 0;
  }

  if (a1 > 1)
  {
    if (a1 == 2)
    {
      return a4 == 2 && a3 == 2;
    }

    else
    {
      return a4 == 2 && a3 == 3;
    }
  }

  else
  {
    if (!a1)
    {
      return a4 == 2 && !a3;
    }

    return a4 == 2 && a3 == 1;
  }
}

uint64_t sub_1AF970A64(uint64_t a1, uint64_t a2)
{
  if (a1 < 0 || *(a2 + 16) <= a1 || !*(a2 + 16 * a1 + 40))
  {
    return sub_1AFDFEA08();
  }

  sub_1AF4486E4();
  v2 = sub_1AFDFDE98();
  v3 = *(v2 + 32);
  v4 = *(v2 + 40);

  MEMORY[0x1B2718AE0](v3, v4);

  MEMORY[0x1B2718AE0](39, 0xE100000000000000);
  return 39;
}

uint64_t sub_1AF970B5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 16);
  v6 = MEMORY[0x1E69E7CC0];
  if (v5)
  {
    MEMORY[0x1B2718AE0](40, 0xE100000000000000);
    sub_1AFC05CE4(0, v5, 0);
    v8 = (a1 + 32);
    do
    {
      v9 = *v8++;
      sub_1AF4410A8(v9);
      v10 = sub_1AF9C50D4(v9);
      v12 = v11;
      sub_1AF441114(v9);
      v14 = *(v6 + 16);
      v13 = *(v6 + 24);
      if (v14 >= v13 >> 1)
      {
        sub_1AFC05CE4(v13 > 1, v14 + 1, 1);
      }

      *(v6 + 16) = v14 + 1;
      v15 = v6 + 16 * v14;
      *(v15 + 32) = v10;
      *(v15 + 40) = v12;
      --v5;
    }

    while (v5);
    sub_1AF629AE4();
    sub_1AF488088();
    v16 = sub_1AFDFCD98();
    v18 = v17;

    MEMORY[0x1B2718AE0](v16, v18);

    MEMORY[0x1B2718AE0](0x9286E22029, 0xA500000000000000);
    v19 = *(a2 + 16);
    v6 = MEMORY[0x1E69E7CC0];
    if (v19)
    {
      MEMORY[0x1B2718AE0](32, 0xE100000000000000);
      goto LABEL_9;
    }

LABEL_17:
    v32 = 2697248;
    v33 = 0xE300000000000000;
    goto LABEL_18;
  }

  v19 = *(a2 + 16);
  if (!v19)
  {
    goto LABEL_17;
  }

LABEL_9:
  if (v19 != 1)
  {
    MEMORY[0x1B2718AE0](40, 0xE100000000000000);
  }

  sub_1AFC05CE4(0, v19, 0);
  v20 = (a2 + 32);
  v21 = v19;
  do
  {
    v22 = *v20++;
    sub_1AF4410A8(v22);
    v23 = sub_1AF9C50D4(v22);
    v25 = v24;
    sub_1AF441114(v22);
    v27 = *(v6 + 16);
    v26 = *(v6 + 24);
    if (v27 >= v26 >> 1)
    {
      sub_1AFC05CE4(v26 > 1, v27 + 1, 1);
    }

    *(v6 + 16) = v27 + 1;
    v28 = v6 + 16 * v27;
    *(v28 + 32) = v23;
    *(v28 + 40) = v25;
    --v21;
  }

  while (v21);
  sub_1AF629AE4();
  sub_1AF488088();
  v29 = sub_1AFDFCD98();
  v31 = v30;

  MEMORY[0x1B2718AE0](v29, v31);

  if (v19 != 1)
  {
    v32 = 41;
    v33 = 0xE100000000000000;
LABEL_18:
    MEMORY[0x1B2718AE0](v32, v33);
  }

  v34 = *(a3 + 16);
  v35 = MEMORY[0x1E69E7CC0];
  if (v34)
  {
    v36 = 0;
    v37 = a3 + 32;
    v38 = MEMORY[0x1E69E7CC0];
    do
    {
      v39 = v36;
      while (1)
      {
        v40 = *(v37 + 8 * v39);
        v36 = v39 + 1;
        sub_1AF4410A8(v40);
        if (!sub_1AF9C5694(v40, 0xA000000000000000))
        {
          break;
        }

        sub_1AF441114(v40);
        ++v39;
        if (v34 == v36)
        {
          goto LABEL_32;
        }
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1AFC06EE8(0, v38[2] + 1, 1);
      }

      v42 = v38[2];
      v41 = v38[3];
      if (v42 >= v41 >> 1)
      {
        sub_1AFC06EE8(v41 > 1, v42 + 1, 1);
      }

      v38[2] = v42 + 1;
      v43 = &v38[2 * v42];
      v43[4] = v39;
      v43[5] = v40;
    }

    while (v34 - 1 != v39);
  }

  else
  {
    v38 = MEMORY[0x1E69E7CC0];
  }

LABEL_32:
  v44 = v38[2];
  if (v44)
  {
    sub_1AFC05CE4(0, v44, 0);
    v45 = v35;
    sub_1AF43A4E0();
    v46 = v38 + 5;
    do
    {
      v47 = *v46;
      v76 = *(v46 - 1);
      v48 = sub_1AFDFE5C8();
      v49 = v48 + 8;
      v51 = qword_1F24F38B8;
      v50 = unk_1F24F38C0;
      v52 = qword_1F24F38C8;
      v53 = sub_1AF449CB8(qword_1F24F38B8);
      *(v49 + ((v53 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v53;
      *(v48[6] + 8 * v53) = v51;
      v54 = (v48[7] + 16 * v53);
      *v54 = v50;
      v54[1] = v52;
      ++v48[2];

      v56 = qword_1F24F38D0;
      v55 = unk_1F24F38D8;
      v57 = qword_1F24F38E0;
      v58 = sub_1AF449CB8(qword_1F24F38D0);
      *(v49 + ((v58 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v58;
      *(v48[6] + 8 * v58) = v56;
      v59 = (v48[7] + 16 * v58);
      *v59 = v55;
      v59[1] = v57;
      ++v48[2];
      sub_1AF4410A8(v47);
      sub_1AF881148();

      swift_arrayDestroy();
      if (v48[2] && (v60 = sub_1AF449CB8(v76), (v61 & 1) != 0))
      {
        v62 = (v48[7] + 16 * v60);
        v64 = *v62;
        v63 = v62[1];
      }

      else
      {
        v63 = 0xE100000000000000;
        v64 = 63;
      }

      MEMORY[0x1B2718AE0](8250, 0xE200000000000000);

      v65 = v64;
      v66 = sub_1AF9C50D4(v47);
      v68 = v67;

      MEMORY[0x1B2718AE0](v66, v68);

      sub_1AF441114(v47);
      v70 = *(v45 + 16);
      v69 = *(v45 + 24);
      if (v70 >= v69 >> 1)
      {
        sub_1AFC05CE4(v69 > 1, v70 + 1, 1);
      }

      v46 += 2;
      *(v45 + 16) = v70 + 1;
      v71 = v45 + 16 * v70;
      *(v71 + 32) = v65;
      *(v71 + 40) = v63;
      --v44;
    }

    while (v44);

    sub_1AF629AE4();
    sub_1AF488088();
    v72 = sub_1AFDFCD98();
    v74 = v73;

    MEMORY[0x1B2718AE0](v72, v74);

    MEMORY[0x1B2718AE0](0x20657265687720, 0xE700000000000000);
  }

  else
  {
  }

  return 0;
}

uint64_t sub_1AF9711C0(uint64_t a1, uint64_t a2)
{
  result = 0;
  if ((a1 & 0x8000000000000000) == 0 && *(a2 + 16) > a1)
  {
    if (*(a2 + 16 * a1 + 40))
    {
      sub_1AF4486E4();
      v4 = *(sub_1AFDFDE98() + 32);

      return v4;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for FlowScope(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 9))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 8);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for FlowScope(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_1AF971314(uint64_t a1)
{
  if (*(a1 + 8) <= 1u)
  {
    return *(a1 + 8);
  }

  else
  {
    return (*a1 + 2);
  }
}

uint64_t sub_1AF97132C(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 8) = a2;
  return result;
}

uint64_t sub_1AF971360(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 2;
  }

  v3 = sub_1AF0D3F10(a1);
  if (v4)
  {
    return *(*(a2 + 56) + v3);
  }

  else
  {
    return 2;
  }
}

uint64_t sub_1AF9713DC(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  a3();
  if (v3)
  {
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1AF971430(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9, uint64_t a10)
{

  v48 = a3;
  v49 = a4;
  v17 = sub_1AFDFD1A8();
  v19 = v18;
  MEMORY[0x1B2718AE0]();
  if (!a1)
  {

    MEMORY[0x1B2718AE0](0x3E656E6F6E3CLL, 0xE600000000000000);
    return MEMORY[0x1B2718AE0](10, 0xE100000000000000);
  }

  v20 = *(a7 + 16);
  if (*(v20 + 16) && (v21 = sub_1AF0D3F10(a1), (v22 & 1) != 0) && *(*(v20 + 56) + v21) == 1)
  {

    if (*(*(a8 + 16) + 16))
    {
      sub_1AF0D3F10(a1);
    }
  }

  else
  {
    if (!*(*(a8 + 16) + 16) || (sub_1AF0D3F10(a1), (v23 & 1) == 0) || (a9 & 1) == 0)
    {
      v44 = v17;

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v50 = *(a7 + 16);
      v26 = a1;
      v27 = a6;
      *(a7 + 16) = 0x8000000000000000;
      sub_1AF850FDC(1, v26, isUniquelyReferenced_nonNull_native);
      *(a7 + 16) = v50;

      v28 = *(a10 + 16);
      v29 = swift_isUniquelyReferenced_nonNull_native();
      v51 = *(a8 + 16);
      *(a8 + 16) = 0x8000000000000000;
      sub_1AF858584(v28, v26, v29);
      *(a8 + 16) = v51;

      ++*(a10 + 16);
      v47 = v26;
      v46 = sub_1AF97228C();
      v30 = *(v46 + 16);
      if (v30)
      {
        MEMORY[0x1B2718AE0](40, 0xE100000000000000);
      }

      if (a9)
      {
        v31 = sub_1AFDFEA08();
        MEMORY[0x1B2718AE0](v31);

        MEMORY[0x1B2718AE0](93, 0xE100000000000000);
        MEMORY[0x1B2718AE0](91, 0xE100000000000000);
      }

      v45 = sub_1AF9703D8();
      v33 = v32;

      MEMORY[0x1B2718AE0](v45, v33);

      v34 = sub_1AFDFCF88();
      v36 = HIBYTE(v35) & 0xF;
      if ((v35 & 0x2000000000000000) == 0)
      {
        v36 = v34 & 0xFFFFFFFFFFFFLL;
      }

      if (v36)
      {
        MEMORY[0x1B2718AE0]();

        MEMORY[0x1B2718AE0](32, 0xE100000000000000);
      }

      if (v30)
      {
        MEMORY[0x1B2718AE0](10, 0xE100000000000000);
        v37 = (v46 + 40);
        do
        {
          v39 = *(v37 - 1);
          if (v39)
          {
            v38 = *v37;
            swift_retain_n();
          }

          else
          {
            v38 = 0;
          }

          LOBYTE(v43) = a9 & 1;
          sub_1AF971430(v39, v38, v48 + 1, v49, a5, v27, a7, a8, v43, a10);

          v37 += 2;
          --v30;
        }

        while (v30);

        MEMORY[0x1B2718AE0](41, 0xE100000000000000);
        MEMORY[0x1B2718AE0](v44, v19);
      }

      else
      {
      }

      v40 = swift_isUniquelyReferenced_nonNull_native();
      v52 = *(a7 + 16);
      *(a7 + 16) = 0x8000000000000000;
      sub_1AF850FDC(0, v47, v40);
      *(a7 + 16) = v52;

      goto LABEL_30;
    }
  }

  v41 = sub_1AFDFEA08();
  MEMORY[0x1B2718AE0](v41);

  MEMORY[0x1B2718AE0](93, 0xE100000000000000);
  MEMORY[0x1B2718AE0](91, 0xE100000000000000);

LABEL_30:
  v42 = sub_1AFDFEA08();
  MEMORY[0x1B2718AE0](v42);

  MEMORY[0x1B2718AE0](10, 0xE100000000000000);
  MEMORY[0x1B2718AE0](46, 0xE100000000000000);
}

uint64_t sub_1AF9719BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9, uint64_t a10)
{

  v46 = a3;
  v47 = a4;
  v17 = sub_1AFDFD1A8();
  v19 = v18;
  MEMORY[0x1B2718AE0]();
  if (!a1)
  {

    MEMORY[0x1B2718AE0](0x3E656E6F6E3CLL, 0xE600000000000000);
    return MEMORY[0x1B2718AE0](10, 0xE100000000000000);
  }

  v20 = *(a7 + 16);
  v45 = a1;
  if (*(v20 + 16) && (v21 = sub_1AF0D3F10(a1), (v22 & 1) != 0) && *(*(v20 + 56) + v21) == 1)
  {

    if (*(*(a8 + 16) + 16))
    {
      sub_1AF0D3F10(a1);
    }

    v40 = sub_1AFDFEA08();
    MEMORY[0x1B2718AE0](v40);

    MEMORY[0x1B2718AE0](93, 0xE100000000000000);
    MEMORY[0x1B2718AE0](91, 0xE100000000000000);
  }

  else
  {
    if (!*(*(a8 + 16) + 16) || (sub_1AF0D3F10(a1), (v23 & 1) == 0) || (a9 & 1) == 0)
    {
      v43 = v19;

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v48 = *(a7 + 16);
      *(a7 + 16) = 0x8000000000000000;
      sub_1AF850FDC(1, a1, isUniquelyReferenced_nonNull_native);
      *(a7 + 16) = v48;

      v27 = *(a10 + 16);
      v28 = swift_isUniquelyReferenced_nonNull_native();
      v49 = *(a8 + 16);
      *(a8 + 16) = 0x8000000000000000;
      sub_1AF858584(v27, v45, v28);
      *(a8 + 16) = v49;

      ++*(a10 + 16);
      v44 = sub_1AF971F68();
      v29 = *(v44 + 16);
      if (v29)
      {
        MEMORY[0x1B2718AE0](40, 0xE100000000000000);
      }

      if (a9)
      {
        v30 = sub_1AFDFEA08();
        MEMORY[0x1B2718AE0](v30);

        MEMORY[0x1B2718AE0](93, 0xE100000000000000);
        MEMORY[0x1B2718AE0](91, 0xE100000000000000);
      }

      v31 = sub_1AF9703D8();
      MEMORY[0x1B2718AE0](v31);

      v32 = sub_1AFDFCF88();
      v34 = HIBYTE(v33) & 0xF;
      if ((v33 & 0x2000000000000000) == 0)
      {
        v34 = v32 & 0xFFFFFFFFFFFFLL;
      }

      if (v34)
      {
        MEMORY[0x1B2718AE0]();

        MEMORY[0x1B2718AE0](32, 0xE100000000000000);
      }

      if (v29)
      {
        v35 = a6;
        MEMORY[0x1B2718AE0](10, 0xE100000000000000);
        v36 = (v44 + 40);
        do
        {
          v38 = *(v36 - 1);
          if (v38)
          {
            v37 = *v36;
            swift_retain_n();
          }

          else
          {
            v37 = 0;
          }

          LOBYTE(v42) = a9 & 1;
          sub_1AF9719BC(v38, v37, v46 + 1, v47, a5, v35, a7, a8, v42, a10);

          v36 += 2;
          --v29;
        }

        while (v29);

        MEMORY[0x1B2718AE0](41, 0xE100000000000000);
        MEMORY[0x1B2718AE0](v17, v43);
      }

      else
      {
      }

      v39 = swift_isUniquelyReferenced_nonNull_native();
      v50 = *(a7 + 16);
      *(a7 + 16) = 0x8000000000000000;
      sub_1AF850FDC(0, v45, v39);
      *(a7 + 16) = v50;

      goto LABEL_31;
    }

    v24 = sub_1AFDFEA08();
    MEMORY[0x1B2718AE0](v24);

    MEMORY[0x1B2718AE0](93, 0xE100000000000000);
    MEMORY[0x1B2718AE0](91, 0xE100000000000000);
  }

LABEL_31:
  v41 = sub_1AFDFEA08();
  MEMORY[0x1B2718AE0](v41);

  MEMORY[0x1B2718AE0](10, 0xE100000000000000);
  MEMORY[0x1B2718AE0](46, 0xE100000000000000);
}

uint64_t sub_1AF971F68()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 16);
  v3 = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v12 = MEMORY[0x1E69E7CC0];

    sub_1AFC05E2C(0, v2, 0);
    v4 = 0;
    v3 = v12;
    v5 = *(v12 + 16);
    v6 = 16 * v5;
    do
    {
      v7 = *(v1 + v4 + 32);
      v8 = *(v1 + v4 + 40);
      v9 = *(v12 + 24);

      if (v5 >= v9 >> 1)
      {
        sub_1AFC05E2C(v9 > 1, v5 + 1, 1);
      }

      *(v12 + 16) = v5 + 1;
      v10 = v12 + v6 + v4;
      *(v10 + 32) = v7;
      *(v10 + 40) = v8;
      v4 += 16;
      ++v5;
      --v2;
    }

    while (v2);
  }

  return v3;
}

uint64_t sub_1AF972064(uint64_t a1)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v14 = MEMORY[0x1E69E7CC0];
    sub_1AFC05E7C(0, v3, 0);
    v4 = v14;
    v5 = *(v14 + 16);
    v6 = 16 * v5;
    v7 = (a1 + 40);
    do
    {
      v8 = *(v7 - 1);
      v9 = *v7;
      v10 = *(v14 + 24);

      if (v5 >= v10 >> 1)
      {
        sub_1AFC05E7C(v10 > 1, v5 + 1, 1);
      }

      v7 += 2;
      *(v14 + 16) = v5 + 1;
      v11 = v14 + v6;
      *(v11 + 32) = v8;
      *(v11 + 40) = v9;
      v6 += 16;
      ++v5;
      --v3;
    }

    while (v3);

    v1 = v13;
  }

  else
  {

    v4 = MEMORY[0x1E69E7CC0];
  }

  *(v1 + 16) = v4;
}

uint64_t sub_1AF972188()
{
  v1 = *(*v0 + 112);

  return v1(v2);
}

uint64_t sub_1AF972260@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1AF972188();
  *a1 = result;
  return result;
}

uint64_t sub_1AF97228C()
{
  v1 = v0;
  (*(**(v0 + OBJC_IVAR____TtC3VFX13AuthoringNode_raw) + 152))(v18);
  v2 = v18[0];
  v24 = v18[0];
  v23 = v18[1];
  sub_1AF9121F8(&v23, &qword_1EB638968, &type metadata for TypeConstraint);
  v22 = v18[2];
  sub_1AF9121F8(&v22, &qword_1EB638968, &type metadata for TypeConstraint);
  v21 = v18[3];
  sub_1AF91219C(&v21);
  v20 = v18[4];
  sub_1AF91219C(&v20);
  v19 = v18[5];
  sub_1AF9121F8(&v19, &qword_1EB638978, &type metadata for AnyValue);
  v3 = *(v2 + 16);
  sub_1AF9121F8(&v24, &qword_1EB638968, &type metadata for TypeConstraint);
  v4 = OBJC_IVAR____TtC3VFX13AuthoringNode_inputs;
  if (*(*(v0 + OBJC_IVAR____TtC3VFX13AuthoringNode_inputs) + 16) <= v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = *(*(v0 + OBJC_IVAR____TtC3VFX13AuthoringNode_inputs) + 16);
  }

  v6 = MEMORY[0x1E69E7CC0];
  if (v5)
  {
    v17 = MEMORY[0x1E69E7CC0];
    sub_1AFC05D98(0, v5, 0);
    v7 = 0;
    v8 = 0;
    v6 = v17;
    while (1)
    {
      v9 = *(v1 + v4);
      if (v8 >= *(v9 + 16))
      {
        break;
      }

      v10 = v9 + v7;
      v11 = *(v10 + 32);
      if (!v11)
      {
        goto LABEL_10;
      }

      v12 = *(v10 + 40);

LABEL_11:
      v14 = *(v17 + 16);
      v13 = *(v17 + 24);
      if (v14 >= v13 >> 1)
      {
        sub_1AFC05D98(v13 > 1, v14 + 1, 1);
      }

      ++v8;
      *(v17 + 16) = v14 + 1;
      v15 = v17 + 16 * v14;
      *(v15 + 32) = v11;
      *(v15 + 40) = v12;
      v7 += 16;
      if (v5 == v8)
      {
        return v6;
      }
    }

    v11 = 0;
LABEL_10:
    v12 = 0;
    goto LABEL_11;
  }

  return v6;
}

uint64_t sub_1AF97247C(uint64_t a1)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v14 = MEMORY[0x1E69E7CC0];
    sub_1AFC05D04(0, v3, 0);
    v4 = v14;
    v5 = *(v14 + 16);
    v6 = 16 * v5;
    v7 = (a1 + 40);
    do
    {
      v8 = *(v7 - 1);
      if (v8)
      {
        v9 = *v7;
      }

      else
      {
        v9 = 0;
      }

      v10 = *(v14 + 24);

      if (v5 >= v10 >> 1)
      {
        sub_1AFC05D04(v10 > 1, v5 + 1, 1);
      }

      v7 += 2;
      *(v14 + 16) = v5 + 1;
      v11 = v14 + v6;
      *(v11 + 32) = v8;
      *(v11 + 40) = v9;
      v6 += 16;
      ++v5;
      --v3;
    }

    while (v3);

    v1 = v13;
  }

  else
  {

    v4 = MEMORY[0x1E69E7CC0];
  }

  *(v1 + OBJC_IVAR____TtC3VFX13AuthoringNode_inputs) = v4;
}

uint64_t sub_1AF9725C0@<X0>(uint64_t *a1@<X2>, uint64_t a2@<X8>)
{
  v4 = *v2;
  v5 = *a1;
  v6 = sub_1AFDFC318();
  v7 = *(*(v6 - 8) + 16);

  return v7(a2, v4 + v5, v6);
}

uint64_t sub_1AF972698@<X0>(uint64_t *a1@<X8>)
{
  result = (*(**v1 + 296))(1);
  *a1 = result;
  return result;
}

uint64_t sub_1AF9727BC@<X0>(uint64_t *a1@<X8>)
{
  v3 = swift_allocObject();
  v4 = v3;
  *(v3 + 16) = 0;
  v5 = OBJC_IVAR____TtC3VFX10_ArrayNode_count;
  v6 = *(v1 + OBJC_IVAR____TtC3VFX10_ArrayNode_count);
  v7 = MEMORY[0x1E69E7CC0];
  if (v6 > 0)
  {
    v8 = sub_1AFDFD488();
    *(v8 + 16) = v6;
    v9 = v4 | 0x4000000000000000;
    *(v8 + 32) = v4 | 0x4000000000000000;
    v10 = v8 + 32;
    if (v6 == 1)
    {
LABEL_8:

      goto LABEL_9;
    }

LABEL_6:
    v11 = v6 - 1;
    v12 = (v10 + 8);
    do
    {
      *v12++ = v9;

      --v11;
    }

    while (v11);
    goto LABEL_8;
  }

  v8 = MEMORY[0x1E69E7CC0];
  if (v6)
  {
    v9 = v3 | 0x4000000000000000;
    *(MEMORY[0x1E69E7CC0] + 32) = v3 | 0x4000000000000000;
    v10 = v8 + 32;
    goto LABEL_6;
  }

LABEL_9:

  sub_1AF974834(0, &qword_1EB6309E8, &type metadata for TypeConstraint, MEMORY[0x1E69E6F90]);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1AFE431C0;
  v14 = swift_allocObject();
  *(v14 + 16) = *(v1 + v5);
  result = swift_allocObject();
  *(result + 16) = 0;
  *(v14 + 24) = result | 0x4000000000000000;
  *(v13 + 32) = v14;
  *a1 = v8;
  a1[1] = v13;
  a1[2] = &unk_1F24EFC70;
  a1[3] = v7;
  a1[4] = v7;
  a1[5] = v7;
  return result;
}

uint64_t sub_1AF972A6C(void *a1)
{
  sub_1AF441150(a1, a1[3]);
  result = sub_1AF974940();
  if (!v2)
  {
    *(v1 + OBJC_IVAR____TtC3VFX10_ArrayNode_count) = v4;
  }

  return result;
}

uint64_t sub_1AF972AF0()
{
  v1 = *(v0 + OBJC_IVAR____TtC3VFX14TypedArrayNode_elementType);
  sub_1AF442064(v1);
  sub_1AF90D394(v1);
  sub_1AF445BE4(v1);

  sub_1AF9A0BAC();

  v2 = sub_1AFDFDDB8();

  sub_1AF701628();

  sub_1AF725990();
  sub_1AFDFD0A8();

  MEMORY[0x1B2718AE0](0x7961727241, 0xE500000000000000);
  return v2;
}

unint64_t sub_1AF972C28@<X0>(uint64_t *a1@<X8>)
{
  v3 = swift_allocObject();
  v4 = OBJC_IVAR____TtC3VFX14TypedArrayNode_elementType;
  v5 = *(v1 + OBJC_IVAR____TtC3VFX14TypedArrayNode_elementType);
  *(v3 + 16) = v5;
  v6 = OBJC_IVAR____TtC3VFX10_ArrayNode_count;
  v7 = *(v1 + OBJC_IVAR____TtC3VFX10_ArrayNode_count);
  sub_1AF442064(v5);
  v8 = MEMORY[0x1E69E7CC0];
  if (v7 > 0)
  {
    v9 = sub_1AFDFD488();
    *(v9 + 16) = v7;
    v10 = v3 | 0x8000000000000000;
    *(v9 + 32) = v3 | 0x8000000000000000;
    v11 = v9 + 32;
    if (v7 == 1)
    {
LABEL_8:

      goto LABEL_9;
    }

LABEL_6:
    v12 = v7 - 1;
    v13 = (v11 + 8);
    do
    {
      *v13++ = v10;

      --v12;
    }

    while (v12);
    goto LABEL_8;
  }

  v9 = MEMORY[0x1E69E7CC0];
  if (v7)
  {
    v10 = v3 | 0x8000000000000000;
    *(MEMORY[0x1E69E7CC0] + 32) = v3 | 0x8000000000000000;
    v11 = v9 + 32;
    goto LABEL_6;
  }

LABEL_9:

  sub_1AF974834(0, &qword_1EB6309E8, &type metadata for TypeConstraint, MEMORY[0x1E69E6F90]);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1AFE431C0;
  v15 = swift_allocObject();
  *(v15 + 16) = *(v1 + v6);
  v16 = swift_allocObject();
  v17 = *(v1 + v4);
  *(v16 + 16) = v17;
  *(v15 + 24) = v16 | 0x8000000000000000;
  *(v14 + 32) = v15;
  result = sub_1AF442064(v17);
  *a1 = v9;
  a1[1] = v14;
  a1[2] = &unk_1F24EF290;
  a1[3] = v8;
  a1[4] = v8;
  a1[5] = v8;
  return result;
}

char *sub_1AF972DD0(void *a1)
{
  v2 = swift_allocObject();
  v3 = *(a1 + OBJC_IVAR____TtC3VFX14TypedArrayNode_elementType);
  *(v2 + OBJC_IVAR____TtC3VFX14TypedArrayNode_elementType) = v3;
  *(v2 + OBJC_IVAR____TtC3VFX10_ArrayNode_count) = *(a1 + OBJC_IVAR____TtC3VFX10_ArrayNode_count);
  sub_1AF442064(v3);
  return sub_1AF96FD00(a1);
}

uint64_t sub_1AF972E30(void *a1)
{
  sub_1AF441150(a1, a1[3]);
  sub_1AFDFF3C8();
  v6 = *(v1 + OBJC_IVAR____TtC3VFX14TypedArrayNode_elementType);
  sub_1AF448018(v4, v5);
  sub_1AF9748D8();
  sub_1AFDFEC38();
  if (!v2)
  {
    sub_1AF448018(v4, v5);
    sub_1AFDFEC28();
  }

  return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v4);
}

uint64_t sub_1AF972F20(void *a1)
{
  sub_1AF441150(a1, a1[3]);
  result = sub_1AFDFF388();
  if (!v2)
  {
    sub_1AF448018(v5, v6);
    sub_1AF974884();
    sub_1AFDFEAD8();
    v4 = *(v1 + OBJC_IVAR____TtC3VFX14TypedArrayNode_elementType);
    *(v1 + OBJC_IVAR____TtC3VFX14TypedArrayNode_elementType) = v7;
    sub_1AF445BE4(v4);
    sub_1AF448018(v5, v6);
    *(v1 + OBJC_IVAR____TtC3VFX10_ArrayNode_count) = sub_1AFDFEAB8();
    return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v5);
  }

  return result;
}

uint64_t sub_1AF973040()
{

  sub_1AF919DAC(*(v0 + 24));
  v1 = OBJC_IVAR____TtC3VFX4Node_authoringID;
  v2 = sub_1AFDFC318();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_1AF445BE4(*(v0 + OBJC_IVAR____TtC3VFX14TypedArrayNode_elementType));

  return swift_deallocClassInstance();
}

uint64_t sub_1AF9731B4@<X0>(uint64_t *a1@<X8>)
{
  sub_1AF974834(0, &qword_1EB6309E8, &type metadata for TypeConstraint, MEMORY[0x1E69E6F90]);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1AFE431C0;
  v3 = swift_allocObject();
  v4 = swift_allocObject();
  *(v4 + 16) = 0;
  *(v3 + 16) = v4 | 0x4000000000000000;
  *(v2 + 32) = v3 | 0x2000000000000000;
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1AFE431C0;
  result = swift_allocObject();
  *(result + 16) = 0xC000000000000030;
  *(v5 + 32) = result | 0x8000000000000000;
  *a1 = v2;
  a1[1] = v5;
  v7 = MEMORY[0x1E69E7CC0];
  a1[2] = &unk_1F24F15C8;
  a1[3] = v7;
  a1[4] = v7;
  a1[5] = v7;
  return result;
}

uint64_t sub_1AF97331C@<X0>(uint64_t *a1@<X8>)
{
  sub_1AF974834(0, &qword_1EB6309E8, &type metadata for TypeConstraint, MEMORY[0x1E69E6F90]);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1AFE4C620;
  v3 = swift_allocObject();
  v4 = swift_allocObject();
  *(v4 + 16) = 0;
  *(v3 + 16) = v4 | 0x4000000000000000;
  *(v2 + 32) = v3 | 0x2000000000000000;
  v5 = swift_allocObject();
  *(v5 + 16) = 0xC000000000000038;
  *(v2 + 40) = v5 | 0x8000000000000000;
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1AFE431C0;
  result = swift_allocObject();
  *(result + 16) = 0;
  *(v6 + 32) = result | 0x4000000000000000;
  *a1 = v2;
  a1[1] = v6;
  a1[2] = &unk_1F24F1FB0;
  a1[3] = &unk_1F24F1F70;
  v8 = MEMORY[0x1E69E7CC0];
  a1[4] = MEMORY[0x1E69E7CC0];
  a1[5] = v8;
  return result;
}

uint64_t sub_1AF97348C(uint64_t a1, uint64_t a2, unint64_t a3, char a4)
{
  if (a4 == 3)
  {
    v7 = a1;

    v4 = 0x6874676E656C2ELL;
LABEL_7:
    v5 = 0xE700000000000000;
    goto LABEL_8;
  }

  if (a3 >> 61 == 3)
  {
    v7 = a1;

    v4 = 0x746E756F632ELL;
    v5 = 0xE600000000000000;
LABEL_8:
    MEMORY[0x1B2718AE0](v4, v5);
    return v7;
  }

  if (a3 >> 61 == 2)
  {
    v7 = a1;

    v4 = 0x2928657A69732ELL;
    goto LABEL_7;
  }

  result = sub_1AFDFE518();
  __break(1u);
  return result;
}

uint64_t sub_1AF97358C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6)
{
  if (a6 == 3)
  {
    v21 = a1;

    v8 = 91;
    v9 = 0xE100000000000000;
LABEL_5:
    MEMORY[0x1B2718AE0](v8, v9);
    MEMORY[0x1B2718AE0](a3, a4);
    MEMORY[0x1B2718AE0](93, 0xE100000000000000);
    return v21;
  }

  if (a5 >> 61 == 2)
  {
    v21 = a1;

    v8 = 0x5B79617272612ELL;
    v9 = 0xE700000000000000;
    goto LABEL_5;
  }

  if (a5 >> 61 == 3)
  {
    v13 = *((a5 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
    v14 = 0xE000000000000000;
    sub_1AF442064(v13);
    sub_1AFDFE218();

    v21 = 10280;
    if (a6 == 2)
    {
      v15 = 0x20646165726874;
    }

    else
    {
      v15 = 0;
    }

    if (a6 == 2)
    {
      v14 = 0xE700000000000000;
    }

    MEMORY[0x1B2718AE0](v15, v14);

    v16 = sub_1AF937FF8(a6, v13);
    if ((~v16 & 0xF000000000000007) == 0)
    {
      sub_1AF442064(v13);
      v16 = v13;
    }

    v17 = sub_1AF94B594(a6, v16);
    v19 = v18;
    sub_1AF445BE4(v16);
    MEMORY[0x1B2718AE0](v17, v19);

    MEMORY[0x1B2718AE0](10538, 0xE200000000000000);
    MEMORY[0x1B2718AE0](a1, a2);
    MEMORY[0x1B2718AE0](0x7265746E696F702ELL, 0xEA00000000005B29);
    MEMORY[0x1B2718AE0](a3, a4);
    MEMORY[0x1B2718AE0](93, 0xE100000000000000);
    sub_1AF445BE4(v13);
    return v21;
  }

  result = sub_1AFDFE518();
  __break(1u);
  return result;
}

uint64_t sub_1AF9737E8()
{
  type metadata accessor for TypedArrayNode(0);
  v0 = swift_dynamicCastClass();
  if (!v0)
  {
    return 15;
  }

  v1 = *(v0 + OBJC_IVAR____TtC3VFX14TypedArrayNode_elementType);
  sub_1AF442064(v1);
  if (sub_1AF90DD74(2, v1))
  {
    v2 = 4;
  }

  else
  {
    v2 = 0;
  }

  v3 = v2 & 0xFFFFFFFE | sub_1AF90DD74(0, v1);
  if (sub_1AF90DD74(1, v1))
  {
    v4 = v3 | 2;
  }

  else
  {
    v4 = v3;
  }

  v5 = sub_1AF90DD74(3, v1);
  sub_1AF445BE4(v1);
  if (v5)
  {
    return v4 | 8;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_1AF9738A4(uint64_t a1)
{
  v1 = *(*(a1 + 16) + 16);
  if (v1)
  {
    v2 = 0;
    v3 = MEMORY[0x1E69E7CC0];
    do
    {
      v4 = sub_1AFDFEA08();
      MEMORY[0x1B2718AE0](v4);

      MEMORY[0x1B2718AE0](44, 0xE100000000000000);
      sub_1AF974834(0, &qword_1EB638390, &type metadata for CodeEmitter.Code, MEMORY[0x1E69E6F90]);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1AFE431C0;
      *(inited + 32) = 37;
      *(inited + 40) = 0xE100000000000000;
      sub_1AF441DD8();
      *(inited + 48) = 0;
      *(inited + 56) = 0;
      v6 = swift_initStackObject();
      *(v6 + 16) = xmmword_1AFE431C0;
      *(v6 + 32) = inited;
      v7 = v6 + 32;
      v8 = sub_1AFA56CA0(v6);
      swift_setDeallocating();
      sub_1AF974118(v7);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v3 = sub_1AF426BC8(0, v3[2] + 1, 1, v3);
      }

      v10 = v3[2];
      v9 = v3[3];
      if (v10 >= v9 >> 1)
      {
        v3 = sub_1AF426BC8(v9 > 1, v10 + 1, 1, v3);
      }

      ++v2;
      v3[2] = v10 + 1;
      v3[v10 + 4] = v8;
    }

    while (v1 != v2);
  }

  else
  {
    v3 = MEMORY[0x1E69E7CC0];
  }

  v11 = sub_1AFA56CA0(v3);

  sub_1AF441DD8();
  v12 = swift_initStackObject();
  *(v12 + 16) = xmmword_1AFE431C0;
  *(v12 + 32) = v11;
  v13 = v12 + 32;
  v14 = sub_1AFA56CA0(v12);
  swift_setDeallocating();
  sub_1AF974118(v13);
  return v14;
}

uint64_t sub_1AF973AC4(unsigned __int8 *a1)
{
  v2 = sub_1AF973D1C(*a1, v1);
  v3 = sub_1AFA5413C(v2);

  return v3;
}

uint64_t sub_1AF973B1C(uint64_t a1, unint64_t a2)
{
  v2 = sub_1AF97358C(12325, 0xE200000000000000, 12581, 0xE200000000000000, a2, a1);
  MEMORY[0x1B2718AE0](v2);

  MEMORY[0x1B2718AE0](59, 0xE100000000000000);
  sub_1AF974834(0, &qword_1EB638390, &type metadata for CodeEmitter.Code, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1AFE431C0;
  *(inited + 32) = 0x203D20307225;
  *(inited + 40) = 0xE600000000000000;
  sub_1AF441DD8();
  *(inited + 48) = 0;
  *(inited + 56) = 0;
  v4 = swift_initStackObject();
  *(v4 + 16) = xmmword_1AFE431C0;
  *(v4 + 32) = inited;
  v5 = v4 + 32;
  v6 = sub_1AFA56CA0(v4);
  swift_setDeallocating();
  sub_1AF974118(v5);
  return v6;
}

uint64_t sub_1AF973C2C()
{
  MEMORY[0x1B2718AE0]();
  MEMORY[0x1B2718AE0](59, 0xE100000000000000);
  sub_1AF974834(0, &qword_1EB638390, &type metadata for CodeEmitter.Code, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1AFE431C0;
  *(inited + 32) = 0x203D20307225;
  *(inited + 40) = 0xE600000000000000;
  sub_1AF441DD8();
  *(inited + 48) = 0;
  *(inited + 56) = 0;
  v1 = swift_initStackObject();
  *(v1 + 16) = xmmword_1AFE431C0;
  *(v1 + 32) = inited;
  v2 = v1 + 32;
  v3 = sub_1AFA56CA0(v1);
  swift_setDeallocating();
  sub_1AF974118(v2);
  return v3;
}

uint64_t sub_1AF973D1C(uint64_t a1, uint64_t a2)
{
  if (a1 == 3)
  {
    v3 = sub_1AF9738A4(a2);
    sub_1AF441DD8();
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1AFE431C0;
    *(inited + 32) = v3;
    v5 = inited + 32;
    v6 = sub_1AFA56CA0(inited);
    swift_setDeallocating();
    sub_1AF974118(v5);
    sub_1AFA5413C(v6);

    v7 = sub_1AFAF888C();
    v9 = v8;

    sub_1AF974834(0, &qword_1EB638390, &type metadata for CodeEmitter.Code, MEMORY[0x1E69E6F90]);
    v10 = swift_initStackObject();
    *(v10 + 16) = xmmword_1AFE431C0;
    *(v10 + 32) = v7;
    *(v10 + 40) = v9;
    *(v10 + 48) = 0;
    *(v10 + 56) = 0;
    v11 = swift_initStackObject();
    *(v11 + 16) = xmmword_1AFE4C680;
    *(v11 + 32) = &unk_1F2504FE0;
    v12 = &unk_1F2505020;
  }

  else
  {
    sub_1AFDFE218();

    v14 = *(*(a2 + 24) + 32);
    sub_1AF448650(*(a2 + 24));
    sub_1AF442064(v14);

    v15 = sub_1AF937FF8(a1, v14);
    if ((~v15 & 0xF000000000000007) == 0)
    {
      sub_1AF442064(v14);
      v15 = v14;
    }

    v16 = sub_1AF94B594(a1, v15);
    v18 = v17;
    sub_1AF445BE4(v15);
    sub_1AF445BE4(v14);
    MEMORY[0x1B2718AE0](v16, v18);

    MEMORY[0x1B2718AE0](8236, 0xE200000000000000);
    v19 = sub_1AFDFEA08();
    MEMORY[0x1B2718AE0](v19);

    MEMORY[0x1B2718AE0](8069182, 0xE300000000000000);
    sub_1AF974834(0, &qword_1EB638390, &type metadata for CodeEmitter.Code, MEMORY[0x1E69E6F90]);
    v20 = swift_initStackObject();
    *(v20 + 16) = xmmword_1AFE431C0;
    *(v20 + 32) = 0xD00000000000001CLL;
    *(v20 + 40) = 0x80000001AFF3C1D0;
    *(v20 + 48) = 0;
    *(v20 + 56) = 0;
    v21 = sub_1AF9738A4(a2);
    sub_1AFA5413C(v21);

    v22 = sub_1AFAF888C();
    v24 = v23;

    v10 = swift_initStackObject();
    *(v10 + 16) = xmmword_1AFE431C0;
    *(v10 + 32) = v22;
    *(v10 + 40) = v24;
    sub_1AF441DD8();
    *(v10 + 48) = 0;
    *(v10 + 56) = 0;
    v11 = swift_initStackObject();
    *(v11 + 16) = xmmword_1AFE4C680;
    *(v11 + 32) = v20;
    v12 = &unk_1F2505060;
  }

  *(v11 + 40) = v10;
  *(v11 + 48) = v12;
  v25 = sub_1AFA56CA0(v11);
  swift_setDeallocating();
  sub_1AF974834(0, &unk_1ED723290, &type metadata for CodeEmitter.Code, MEMORY[0x1E69E62F8]);
  swift_arrayDestroy();
  sub_1AF441DD8();
  v26 = swift_initStackObject();
  *(v26 + 16) = xmmword_1AFE431C0;
  *(v26 + 32) = v25;
  v27 = v26 + 32;
  v28 = sub_1AFA56CA0(v26);
  swift_setDeallocating();
  sub_1AF974118(v27);
  return v28;
}

uint64_t sub_1AF974118(uint64_t a1)
{
  sub_1AF974834(0, &unk_1ED723290, &type metadata for CodeEmitter.Code, MEMORY[0x1E69E62F8]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1AF974198(char a1)
{
  if (a1 == 3)
  {
    return 0x74676E656C2E3025;
  }

  v3 = *(v1 + 24);
  v4 = *(v3 + 32);
  sub_1AF448650(v3);
  sub_1AF442064(v4);

  sub_1AF445BE4(v4);
  if ((v4 & 0xE000000000000000) == 0x4000000000000000)
  {
    return 0x28657A69732E3025;
  }

  else
  {
    return 0x746E756F632E3025;
  }
}

uint64_t sub_1AF974254(uint64_t a1)
{
  v3 = *(*(v1 + 32) + 32);
  sub_1AF448650(*(v1 + 24));
  sub_1AF442064(v3);

  v4 = sub_1AF937FF8(a1, v3);
  if ((~v4 & 0xF000000000000007) != 0)
  {
    v5 = v4;
    sub_1AF445BE4(v3);
    v3 = v5;
  }

  v6 = *(v1 + 24);
  v7 = *(v6 + 32);
  sub_1AF448650(v6);
  sub_1AF442064(v7);

  sub_1AF90EDE8(v3, &v52, 0.0);
  sub_1AF92F69C(v3, &v52, a1);
  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v52);
  v8 = sub_1AF937FF8(a1, v3);
  if ((~v8 & 0xF000000000000007) == 0)
  {
    sub_1AF442064(v3);
    v8 = v3;
  }

  if (a1 == 3)
  {
    sub_1AF445BE4(v8);
    v9 = 0xE800000000000000;
    v10 = 0x3B3072252074656CLL;
  }

  else
  {
    v52 = 0;
    v53 = 0xE000000000000000;
    v11 = sub_1AF937FF8(a1, v8);
    if ((~v11 & 0xF000000000000007) == 0)
    {
      sub_1AF442064(v8);
      v11 = v8;
    }

    v12 = sub_1AF94B594(a1, v11);
    v14 = v13;
    sub_1AF445BE4(v11);
    MEMORY[0x1B2718AE0](v12, v14);

    MEMORY[0x1B2718AE0](32, 0xE100000000000000);
    MEMORY[0x1B2718AE0](3174949, 0xE300000000000000);
    MEMORY[0x1B2718AE0](59, 0xE100000000000000);
    sub_1AF445BE4(v8);
    v10 = v52;
    v9 = v53;
  }

  sub_1AF974834(0, &qword_1EB638390, &type metadata for CodeEmitter.Code, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1AFE431C0;
  *(inited + 32) = v10;
  *(inited + 40) = v9;
  *(inited + 48) = 0;
  *(inited + 56) = 0;
  v16 = sub_1AF97348C(12325, 0xE200000000000000, v7, a1);
  v18 = v17;
  if (a1 == 3)
  {
    v19 = 0;
    v20 = 0xE000000000000000;
  }

  else
  {
    v52 = 40;
    v53 = 0xE100000000000000;
    v21 = sub_1AF937FF8(a1, 0xC000000000000038);
    v22 = v21;
    if ((~v21 & 0xF000000000000007) != 0)
    {
      v23 = v21;
    }

    else
    {
      v23 = 0xC000000000000038;
    }

    v24 = sub_1AF94B594(a1, v23);
    v26 = v25;
    sub_1AF914F8C(v22);
    MEMORY[0x1B2718AE0](v24, v26);

    MEMORY[0x1B2718AE0](41, 0xE100000000000000);
    v19 = v52;
    v20 = v53;
  }

  v52 = 0;
  v53 = 0xE000000000000000;
  sub_1AFDFE218();

  v52 = 0xD000000000000010;
  v53 = 0x80000001AFF3C1F0;
  MEMORY[0x1B2718AE0](v19, v20);

  MEMORY[0x1B2718AE0](v16, v18);

  v27 = v52;
  v28 = v53;
  v52 = 673212009;
  v53 = 0xE400000000000000;
  MEMORY[0x1B2718AE0](v27, v28);

  MEMORY[0x1B2718AE0](175841321, 0xE400000000000000);
  v29 = sub_1AF973B1C(a1, v7);
  sub_1AF441DD8();
  v30 = swift_initStackObject();
  *(v30 + 16) = xmmword_1AFE431C0;
  *(v30 + 32) = v29;
  v31 = v30 + 32;
  v32 = sub_1AFA56CA0(v30);
  swift_setDeallocating();
  sub_1AF974118(v31);
  sub_1AFA5413C(v32);

  v33 = sub_1AFAF888C();
  v35 = v34;

  MEMORY[0x1B2718AE0](v33, v35);

  MEMORY[0x1B2718AE0](125, 0xE100000000000000);
  v36 = sub_1AF973C2C();

  v37 = swift_initStackObject();
  *(v37 + 16) = xmmword_1AFE431C0;
  *(v37 + 32) = v36;

  v38 = sub_1AFA56CA0(v37);
  swift_setDeallocating();
  sub_1AF974118(v37 + 32);
  sub_1AFA5413C(v38);

  v39 = sub_1AFAF888C();
  v41 = v40;

  v42 = *(v36 + 16);

  if (v42)
  {
    MEMORY[0x1B2718AE0](0xA7B2065736C6520, 0xE800000000000000);
    MEMORY[0x1B2718AE0](v39, v41);

    v43 = 2685;
    v44 = 0xE200000000000000;
  }

  else
  {

    v43 = 10;
    v44 = 0xE100000000000000;
  }

  MEMORY[0x1B2718AE0](v43, v44);
  v45 = v52;
  v46 = v53;
  v47 = swift_initStackObject();
  *(v47 + 16) = xmmword_1AFE431C0;
  *(v47 + 32) = v45;
  *(v47 + 40) = v46;
  *(v47 + 48) = 0;
  *(v47 + 56) = 0;
  v48 = swift_initStackObject();
  *(v48 + 16) = xmmword_1AFE4C620;
  *(v48 + 32) = inited;
  *(v48 + 40) = v47;
  v49 = sub_1AFA56CA0(v48);
  swift_setDeallocating();
  sub_1AF974834(0, &unk_1ED723290, &type metadata for CodeEmitter.Code, MEMORY[0x1E69E62F8]);
  swift_arrayDestroy();
  v50 = sub_1AFA5413C(v49);

  sub_1AF445BE4(v7);
  sub_1AF445BE4(v3);
  return v50;
}

void sub_1AF974834(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_1AF974884()
{
  result = qword_1EB631258;
  if (!qword_1EB631258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB631258);
  }

  return result;
}

unint64_t sub_1AF9748D8()
{
  result = qword_1EB6408F8;
  if (!qword_1EB6408F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6408F8);
  }

  return result;
}

uint64_t sub_1AF974940()
{
  result = sub_1AFDFF398();
  if (!v0)
  {
    sub_1AF441150(v2, v2[3]);
    sub_1AFDFEE88();
    return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v2);
  }

  return result;
}

BOOL sub_1AF9749E4()
{
  (*(*v0 + 152))(v7);
  v1 = v7[0];
  v12 = v7[1];
  v13 = v7[0];
  v2 = MEMORY[0x1E69E62F8];
  sub_1AF97FA74(&v12, &qword_1EB638968, &type metadata for TypeConstraint, MEMORY[0x1E69E62F8]);
  v11 = v7[2];
  sub_1AF97FA74(&v11, &qword_1EB638968, &type metadata for TypeConstraint, v2);
  v10 = v7[3];
  sub_1AF91219C(&v10);
  v9 = v7[4];
  sub_1AF91219C(&v9);
  v8 = v7[5];
  sub_1AF97FA74(&v8, &qword_1EB638978, &type metadata for AnyValue, v2);
  if (*(v1 + 16))
  {
    v3 = *(v1 + 32);
    sub_1AF4410A8(v3);
    sub_1AF97FA74(&v13, &qword_1EB638968, &type metadata for TypeConstraint, MEMORY[0x1E69E62F8]);
    v4 = swift_allocObject();
    *(v4 + 16) = 0xC000000000000008;
    v5 = sub_1AF9C5694(v3, v4 | 0x8000000000000000);

    sub_1AF441114(v3);
  }

  else
  {
    sub_1AF97FA74(&v13, &qword_1EB638968, &type metadata for TypeConstraint, MEMORY[0x1E69E62F8]);
    return 0;
  }

  return v5;
}

void *sub_1AF974B94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  sub_1AF914FF0(a1, v9);
  v7 = (v6 + OBJC_IVAR____TtC3VFX12ConstantNode_semantic);
  sub_1AF914FF0(v9, v6 + OBJC_IVAR____TtC3VFX12ConstantNode_holder);
  *v7 = a2;
  v7[1] = a3;
  v6[2] = MEMORY[0x1E69E7CC0];
  v6[3] = 0;
  v6[4] = 0;
  sub_1AFDFC308();
  sub_1AF9151B0(a1);
  sub_1AF9151B0(v9);
  return v6;
}

uint64_t sub_1AF974C50()
{
  sub_1AFDFF3D8();
  sub_1AF448018(v1, v2);
  sub_1AFDFEF28();
  return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v1);
}

BOOL sub_1AF974CEC()
{
  v1 = *(*v0 + 152);
  (v1)(v16);
  v2 = v16[0];
  v33 = v16[1];
  v34 = v16[0];
  v3 = MEMORY[0x1E69E62F8];
  sub_1AF97FA74(&v33, &qword_1EB638968, &type metadata for TypeConstraint, MEMORY[0x1E69E62F8]);
  v32 = v16[2];
  sub_1AF97FA74(&v32, &qword_1EB638968, &type metadata for TypeConstraint, v3);
  v31 = v16[3];
  sub_1AF91219C(&v31);
  v30 = v16[4];
  sub_1AF91219C(&v30);
  v29 = v16[5];
  sub_1AF97FA74(&v29, &qword_1EB638978, &type metadata for AnyValue, v3);
  if (!*(v2 + 16))
  {
    v13 = MEMORY[0x1E69E62F8];
    v14 = &v34;
LABEL_7:
    sub_1AF97FA74(v14, &qword_1EB638968, &type metadata for TypeConstraint, v13);
    return 0;
  }

  v4 = *(v2 + 32);
  sub_1AF4410A8(v4);
  sub_1AF97FA74(&v34, &qword_1EB638968, &type metadata for TypeConstraint, MEMORY[0x1E69E62F8]);
  v5 = swift_allocObject();
  *(v5 + 16) = 0xC000000000000008;
  v6 = sub_1AF9C5694(v4, v5 | 0x8000000000000000);

  v7 = sub_1AF441114(v4);
  if (!v6)
  {
    return 0;
  }

  v1(&v17, v7);
  v8 = v18;
  v27 = v17;
  v28 = v18;
  v9 = MEMORY[0x1E69E62F8];
  sub_1AF97FA74(&v27, &qword_1EB638968, &type metadata for TypeConstraint, MEMORY[0x1E69E62F8]);
  v26 = v19;
  sub_1AF97FA74(&v26, &qword_1EB638968, &type metadata for TypeConstraint, v9);
  v25 = v20;
  sub_1AF91219C(&v25);
  v24 = v21;
  sub_1AF91219C(&v24);
  v23 = v22;
  sub_1AF97FA74(&v23, &qword_1EB638978, &type metadata for AnyValue, v9);
  if (!*(v8 + 16))
  {
    v13 = MEMORY[0x1E69E62F8];
    v14 = &v28;
    goto LABEL_7;
  }

  v10 = *(v8 + 32);
  sub_1AF4410A8(v10);
  sub_1AF97FA74(&v28, &qword_1EB638968, &type metadata for TypeConstraint, MEMORY[0x1E69E62F8]);
  v11 = swift_allocObject();
  *(v11 + 16) = 0xC000000000000008;
  v12 = sub_1AF9C5694(v10, v11 | 0x8000000000000000);

  sub_1AF441114(v10);
  return v12;
}

uint64_t sub_1AF975010()
{
  v1 = *(*v0 + 152);
  (v1)(v15);
  v2 = v15[0];
  v32 = v15[1];
  v33 = v15[0];
  v3 = MEMORY[0x1E69E62F8];
  sub_1AF97FA74(&v32, &qword_1EB638968, &type metadata for TypeConstraint, MEMORY[0x1E69E62F8]);
  v31 = v15[2];
  sub_1AF97FA74(&v31, &qword_1EB638968, &type metadata for TypeConstraint, v3);
  v30 = v15[3];
  sub_1AF91219C(&v30);
  v29 = v15[4];
  sub_1AF91219C(&v29);
  v28 = v15[5];
  sub_1AF97FA74(&v28, &qword_1EB638978, &type metadata for AnyValue, v3);
  if (!*(v2 + 16))
  {
    sub_1AF97FA74(&v33, &qword_1EB638968, &type metadata for TypeConstraint, MEMORY[0x1E69E62F8]);
    goto LABEL_6;
  }

  v4 = *(v2 + 32);
  sub_1AF4410A8(v4);
  sub_1AF97FA74(&v33, &qword_1EB638968, &type metadata for TypeConstraint, MEMORY[0x1E69E62F8]);
  v5 = swift_allocObject();
  *(v5 + 16) = 0xC000000000000008;
  v6 = sub_1AF9C5694(v4, v5 | 0x8000000000000000);

  v7 = sub_1AF441114(v4);
  if (!v6)
  {
LABEL_6:
    v13 = 0;
    return v13 & 1;
  }

  v1(&v16, v7);
  v8 = v17;
  v26 = v16;
  v27 = v17;
  v9 = MEMORY[0x1E69E62F8];
  sub_1AF97FA74(&v26, &qword_1EB638968, &type metadata for TypeConstraint, MEMORY[0x1E69E62F8]);
  v25 = v18;
  sub_1AF97FA74(&v25, &qword_1EB638968, &type metadata for TypeConstraint, v9);
  v24 = v19;
  sub_1AF91219C(&v24);
  v23 = v20;
  sub_1AF91219C(&v23);
  v22 = v21;
  sub_1AF97FA74(&v22, &qword_1EB638978, &type metadata for AnyValue, v9);
  if (*(v8 + 16))
  {
    v10 = *(v8 + 32);
    sub_1AF4410A8(v10);
    sub_1AF97FA74(&v27, &qword_1EB638968, &type metadata for TypeConstraint, MEMORY[0x1E69E62F8]);
    v11 = swift_allocObject();
    *(v11 + 16) = 0xC000000000000008;
    v12 = sub_1AF9C5694(v10, v11 | 0x8000000000000000);

    sub_1AF441114(v10);
    v13 = !v12;
  }

  else
  {
    sub_1AF97FA74(&v27, &qword_1EB638968, &type metadata for TypeConstraint, MEMORY[0x1E69E62F8]);
    v13 = 1;
  }

  return v13 & 1;
}

BOOL sub_1AF975340()
{
  v1 = *(*v0 + 152);
  (v1)(v14);
  v2 = v14[0];
  v31 = v14[1];
  v32 = v14[0];
  v3 = MEMORY[0x1E69E62F8];
  sub_1AF97FA74(&v31, &qword_1EB638968, &type metadata for TypeConstraint, MEMORY[0x1E69E62F8]);
  v30 = v14[2];
  sub_1AF97FA74(&v30, &qword_1EB638968, &type metadata for TypeConstraint, v3);
  v29 = v14[3];
  sub_1AF91219C(&v29);
  v28 = v14[4];
  sub_1AF91219C(&v28);
  v27 = v14[5];
  sub_1AF97FA74(&v27, &qword_1EB638978, &type metadata for AnyValue, v3);
  if (*(v2 + 16))
  {
    v4 = *(v2 + 32);
    sub_1AF4410A8(v4);
    sub_1AF97FA74(&v32, &qword_1EB638968, &type metadata for TypeConstraint, MEMORY[0x1E69E62F8]);
    v5 = swift_allocObject();
    *(v5 + 16) = 0xC000000000000008;
    v6 = sub_1AF9C5694(v4, v5 | 0x8000000000000000);

    v7 = sub_1AF441114(v4);
    if (v6)
    {
      return 0;
    }
  }

  else
  {
    v7 = sub_1AF97FA74(&v32, &qword_1EB638968, &type metadata for TypeConstraint, MEMORY[0x1E69E62F8]);
  }

  v1(&v15, v7);
  v8 = v16;
  v25 = v15;
  v26 = v16;
  v9 = MEMORY[0x1E69E62F8];
  sub_1AF97FA74(&v25, &qword_1EB638968, &type metadata for TypeConstraint, MEMORY[0x1E69E62F8]);
  v24 = v17;
  sub_1AF97FA74(&v24, &qword_1EB638968, &type metadata for TypeConstraint, v9);
  v23 = v18;
  sub_1AF91219C(&v23);
  v22 = v19;
  sub_1AF91219C(&v22);
  v21 = v20;
  sub_1AF97FA74(&v21, &qword_1EB638978, &type metadata for AnyValue, v9);
  if (!*(v8 + 16))
  {
    sub_1AF97FA74(&v26, &qword_1EB638968, &type metadata for TypeConstraint, MEMORY[0x1E69E62F8]);
    sub_1AF445BE4(0xC000000000000008);
    return 0;
  }

  v10 = *(v8 + 32);
  sub_1AF4410A8(v10);
  sub_1AF97FA74(&v26, &qword_1EB638968, &type metadata for TypeConstraint, MEMORY[0x1E69E62F8]);
  v11 = swift_allocObject();
  *(v11 + 16) = 0xC000000000000008;
  v12 = sub_1AF9C5694(v10, v11 | 0x8000000000000000);

  sub_1AF441114(v10);
  return v12;
}

uint64_t sub_1AF975674@<X0>(void *a1@<X0>, unint64_t *a2@<X8>)
{
  sub_1AF0D5A54(a1, v14);
  sub_1AF5C5358(0, &qword_1EB641060);
  if (swift_dynamicCast())
  {
    sub_1AF0FBA54(v12, &v15);
    v4 = v17;
    v5 = sub_1AF441150(&v15, v17);
    a2[4] = v4;
    v6 = sub_1AF585714(a2 + 1);
    (*(*(v4 - 8) + 16))(v6, v5, v4);
    *a2 = 0xC000000000000020;
    return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v15);
  }

  else
  {
    v13 = 0;
    memset(v12, 0, sizeof(v12));
    sub_1AF97F8A4(v12);
    sub_1AF441150(a1, a1[3]);
    DynamicType = swift_getDynamicType();
    v9 = sub_1AF90DEFC(DynamicType);
    if ((~v9 & 0xF000000000000007) != 0)
    {
      v10 = v9;
      result = sub_1AF0D5A54(a1, (a2 + 1));
      *a2 = v10;
    }

    else
    {
      v15 = 0;
      v16 = 0xE000000000000000;
      sub_1AFDFE218();

      v15 = 0xD000000000000011;
      v16 = 0x80000001AFF2E910;
      v11 = sub_1AFDFF4B8();
      MEMORY[0x1B2718AE0](v11);

      result = sub_1AFDFE518();
      __break(1u);
    }
  }

  return result;
}

void *sub_1AF975844(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  v7 = (v6 + OBJC_IVAR____TtC3VFX12ConstantNode_semantic);
  sub_1AF914FF0(a1, v6 + OBJC_IVAR____TtC3VFX12ConstantNode_holder);
  *v7 = a2;
  v7[1] = a3;
  v6[2] = MEMORY[0x1E69E7CC0];
  v6[3] = 0;
  v6[4] = 0;
  sub_1AFDFC308();
  sub_1AF9151B0(a1);
  return v6;
}

uint64_t sub_1AF9759FC()
{
  v1 = *(v0 + OBJC_IVAR____TtC3VFX14NoopReturnNode_type);
  sub_1AF442064(v1);
  v2 = sub_1AF90D394(v1);
  v4 = v3;
  sub_1AF445BE4(v1);
  MEMORY[0x1B2718AE0](v2, v4);

  return 0x75746552706F6F4ELL;
}

unint64_t sub_1AF975A90@<X0>(uint64_t *a1@<X8>)
{
  sub_1AF97FB54(0, &qword_1EB6309E8, &type metadata for TypeConstraint, MEMORY[0x1E69E6F90]);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1AFE431C0;
  v4 = swift_allocObject();
  v5 = *(v1 + OBJC_IVAR____TtC3VFX14NoopReturnNode_type);
  *(v4 + 16) = v5;
  *(v3 + 32) = v4 | 0x8000000000000000;
  result = sub_1AF442064(v5);
  v7 = MEMORY[0x1E69E7CC0];
  *a1 = v3;
  a1[1] = v7;
  a1[2] = &unk_1F24EF0C0;
  a1[3] = v7;
  a1[4] = v7;
  a1[5] = v7;
  return result;
}

uint64_t sub_1AF975C2C@<X0>(uint64_t *a1@<X8>)
{
  sub_1AF97FB54(0, &qword_1EB6309E8, &type metadata for TypeConstraint, MEMORY[0x1E69E6F90]);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1AFE431C0;
  result = swift_allocObject();
  *(result + 16) = 0;
  *(v2 + 32) = result | 0x4000000000000000;
  v4 = MEMORY[0x1E69E7CC0];
  *a1 = v2;
  a1[1] = v4;
  a1[2] = &unk_1F24F04F0;
  a1[3] = v4;
  a1[4] = v4;
  a1[5] = v4;
  return result;
}

uint64_t sub_1AF975D14@<X0>(uint64_t *a1@<X8>)
{
  sub_1AF97FB54(0, &qword_1EB6309E8, &type metadata for TypeConstraint, MEMORY[0x1E69E6F90]);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1AFE4C620;
  v3 = swift_allocObject();
  *(v3 + 16) = 0xC000000000000008;
  *(v2 + 32) = v3 | 0x8000000000000000;
  v4 = swift_allocObject();
  *(v4 + 16) = 0xC000000000000058;
  *(v2 + 40) = v4 | 0x8000000000000000;
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1AFE431C0;
  result = swift_allocObject();
  *(result + 16) = 0xC000000000000008;
  *(v5 + 32) = result | 0x8000000000000000;
  *a1 = v2;
  a1[1] = v5;
  v7 = MEMORY[0x1E69E7CC0];
  a1[2] = &unk_1F24EF090;
  a1[3] = v7;
  a1[4] = v7;
  a1[5] = v7;
  return result;
}

uint64_t sub_1AF975EE0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1AF97FB54(0, &qword_1EB6309E8, &type metadata for TypeConstraint, MEMORY[0x1E69E6F90]);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1AFE4C620;
  v5 = swift_allocObject();
  *(v5 + 16) = 0xC000000000000008;
  *(v4 + 32) = v5 | 0x8000000000000000;
  *(v4 + 40) = 0xA000000000000000;
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1AFE431C0;
  result = swift_allocObject();
  *(result + 16) = 0xC000000000000008;
  *(v6 + 32) = result | 0x8000000000000000;
  *a2 = v4;
  a2[1] = v6;
  v8 = MEMORY[0x1E69E7CC0];
  a2[2] = a1;
  a2[3] = v8;
  a2[4] = v8;
  a2[5] = v8;
  return result;
}

uint64_t sub_1AF976008()
{
  v1 = v0;
  v2 = (v0 + OBJC_IVAR____TtC3VFX12ConstantNode_semantic);
  v3 = *(v0 + OBJC_IVAR____TtC3VFX12ConstantNode_semantic);
  sub_1AFDFF288();
  v4 = sub_1AF6ADC50(v3);
  MEMORY[0x1B271ACB0](v4);
  v5 = sub_1AFDFF2F8();
  sub_1AFDFF288();
  MEMORY[0x1B271ACB0](0);
  if (v5 == sub_1AFDFF2F8())
  {
    v6 = *(v1 + OBJC_IVAR____TtC3VFX12ConstantNode_holder);
    sub_1AF442064(v6);
    sub_1AF90D394(v6);
    sub_1AF445BE4(v6);

    sub_1AF9A0BAC();

    v7 = sub_1AFDFDDB8();

    sub_1AF701628();

    v10 = v7;
  }

  else
  {
    sub_1AF6ADC74(*v2);
    sub_1AF9A0BAC();
    v8 = sub_1AFDFDDB8();

    sub_1AF701628();

    v10 = v8;
  }

  sub_1AF725990();
  sub_1AFDFD0A8();

  return v10;
}

unint64_t sub_1AF9761F4@<X0>(void *a1@<X8>)
{
  sub_1AF97FB54(0, &qword_1EB6309E8, &type metadata for TypeConstraint, MEMORY[0x1E69E6F90]);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1AFE431C0;
  v4 = swift_allocObject();
  v5 = *(v1 + OBJC_IVAR____TtC3VFX12ConstantNode_holder);
  *(v4 + 16) = v5;
  *(v3 + 32) = v4 | 0x8000000000000000;
  result = sub_1AF442064(v5);
  v7 = MEMORY[0x1E69E7CC0];
  *a1 = MEMORY[0x1E69E7CC0];
  a1[1] = v3;
  a1[2] = &unk_1F24EE660;
  a1[3] = v7;
  a1[4] = v7;
  a1[5] = v7;
  return result;
}

uint64_t sub_1AF9762B8()
{
  v13[0] = 0;
  v13[1] = 0xE000000000000000;
  v1 = v0 + OBJC_IVAR____TtC3VFX12ConstantNode_holder;
  v2 = *(v0 + OBJC_IVAR____TtC3VFX12ConstantNode_holder);
  sub_1AF442064(v2);
  v3 = sub_1AF90D394(v2);
  v5 = v4;
  sub_1AF445BE4(v2);
  MEMORY[0x1B2718AE0](v3, v5);

  MEMORY[0x1B2718AE0](58, 0xE100000000000000);
  v6 = *(v1 + 32);
  v7 = sub_1AF441150((v1 + 8), v6);
  v8 = *(v6 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7, v7);
  v11 = v13 - v10;
  (*(v8 + 16))(v13 - v10, v9);
  sub_1AFDFEDD8();
  (*(v8 + 8))(v11, v6);
  return v13[0];
}

uint64_t sub_1AF9764C0(void *a1)
{
  sub_1AF441150(a1, a1[3]);
  sub_1AFDFF3C8();
  sub_1AF914FF0(v1 + OBJC_IVAR____TtC3VFX12ConstantNode_holder, v8);
  sub_1AF448018(v9, v10);
  sub_1AF97DE20();
  sub_1AFDFEC38();
  sub_1AF9151B0(v8);
  if (!v2)
  {
    v3 = (v1 + OBJC_IVAR____TtC3VFX12ConstantNode_semantic);
    v4 = *(v1 + OBJC_IVAR____TtC3VFX12ConstantNode_semantic);
    sub_1AFDFF288();
    v5 = sub_1AF6ADC50(v4);
    MEMORY[0x1B271ACB0](v5);
    v6 = sub_1AFDFF2F8();
    sub_1AFDFF288();
    MEMORY[0x1B271ACB0](0);
    if (v6 != sub_1AFDFF2F8())
    {
      v8[0] = *v3;
      sub_1AF448018(v9, v10);
      sub_1AF487468();
      sub_1AFDFEC38();
    }
  }

  return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v9);
}

uint64_t sub_1AF97662C(void *a1)
{
  sub_1AF441150(a1, a1[3]);
  result = sub_1AFDFF388();
  if (!v2)
  {
    sub_1AF448018(v7, v8);
    sub_1AF97DD7C();
    sub_1AFDFEAD8();
    sub_1AF97DDD0(v6[0].i64, v1 + OBJC_IVAR____TtC3VFX12ConstantNode_holder);
    sub_1AF448018(v7, v8);
    sub_1AF487170();
    sub_1AFDFEA58();
    v4 = vdup_n_s32(v6[0].i64[0] == 35);
    v5.i64[0] = v4.u32[0];
    v5.i64[1] = v4.u32[1];
    *(v1 + OBJC_IVAR____TtC3VFX12ConstantNode_semantic) = vbslq_s8(vcltzq_s64(vshlq_n_s64(v5, 0x3FuLL)), xmmword_1AFE22A20, v6[0]);
    return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v7);
  }

  return result;
}

double sub_1AF9767B0@<D0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (a2 && a2 != 1 && (v5 = a1, sub_1AF90E730(a1), v7 = v6, a1 = v5, v7))
  {
    *(a3 + 32) = v7;
    v8 = sub_1AF585714((a3 + 8));
    (*(*(v7 - 8) + 16))(v8, a2, v7);
    *a3 = v5;
    sub_1AF442064(v5);

    sub_1AF445BE4(v5);
  }

  else
  {
    sub_1AF445BE4(a1);
    *(a3 + 32) = 0;
    result = 0.0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }

  return result;
}

unint64_t sub_1AF97687C@<X0>(unint64_t a1@<X1>, uint64_t a2@<X2>, unint64_t a3@<X3>, unint64_t *a4@<X8>)
{
  a4[4] = a3;
  v8 = sub_1AF585714(a4 + 1);
  (*(*(a3 - 8) + 16))(v8, a2, a3);
  *a4 = a1;

  return sub_1AF442064(a1);
}

unint64_t sub_1AF976904@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1AF441150(a1, a1[3]);
  sub_1AFDFF388();
  if (v2)
  {
    return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  }

  sub_1AF448018(v55, v56);
  sub_1AF974884();
  sub_1AFDFEAD8();
  v6 = v49;
  v57 = v49;
  sub_1AF442064(v49);
  sub_1AF90E730(v49);
  v8 = v7;
  sub_1AF445BE4(v49);
  if (!v8)
  {
    *&v49 = 0;
    *(&v49 + 1) = 0xE000000000000000;
    sub_1AFDFE218();
    MEMORY[0x1B2718AE0](0xD00000000000001DLL, 0x80000001AFF3C8C0);
    *&v53 = v6;
    sub_1AFDFE458();
    sub_1AF4567E0();
    swift_allocError();
    *v11 = v49;
    *(v11 + 16) = 0;
    swift_willThrow();
    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v55);
    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
    return sub_1AF445BE4(v6);
  }

  type metadata accessor for simd_quatf(0);
  v10 = v9;
  if (swift_dynamicCastMetatype())
  {
    sub_1AF448018(v55, v56);
    sub_1AF5E122C();
    sub_1AFDFEAD8();
    *(&v50 + 1) = v10;
    *&v49 = swift_allocObject();
    *(v49 + 16) = v53;
LABEL_15:
    v18 = &v49;
LABEL_16:
    sub_1AF449D40(v18, &v58);
LABEL_17:
    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v55);
    sub_1AF914FF0(&v57, a2);
    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
    return sub_1AF9151B0(&v57);
  }

  type metadata accessor for simd_float2x2(0);
  v13 = v12;
  if (swift_dynamicCastMetatype())
  {
    sub_1AF448018(v55, v56);
    sub_1AF6086A4();
    sub_1AFDFEAD8();
    *(&v50 + 1) = v13;
    v49 = v53;
    goto LABEL_15;
  }

  type metadata accessor for simd_float2x3(0);
  v15 = v14;
  if (swift_dynamicCastMetatype())
  {
    sub_1AF448018(v55, v56);
    sub_1AF608650();
LABEL_14:
    sub_1AFDFEAD8();
    v45 = v54;
    *(&v50 + 1) = v15;
    v17 = swift_allocObject();
    *&v49 = v17;
    *(v17 + 16) = v53;
    *(v17 + 32) = v45;
    goto LABEL_15;
  }

  type metadata accessor for simd_float2x4(0);
  v15 = v16;
  if (swift_dynamicCastMetatype())
  {
    sub_1AF448018(v55, v56);
    sub_1AF6085FC();
    goto LABEL_14;
  }

  type metadata accessor for simd_float3x2(0);
  v20 = v19;
  if (swift_dynamicCastMetatype())
  {
    sub_1AF448018(v55, v56);
    sub_1AF6085A8();
    sub_1AFDFEAD8();
    *(&v50 + 1) = v20;
    v49 = v53;
    *&v50 = v54;
    goto LABEL_15;
  }

  type metadata accessor for simd_float3x3(0);
  v22 = v21;
  if (swift_dynamicCastMetatype())
  {
    sub_1AF448018(v55, v56);
    sub_1AF608554();
LABEL_24:
    sub_1AFDFEAD8();
    v46 = v50;
    v44 = v51;
    *(&v54 + 1) = v22;
    v24 = swift_allocObject();
    *&v53 = v24;
    v24[1] = v49;
    v24[2] = v46;
    v24[3] = v44;
LABEL_25:
    v18 = &v53;
    goto LABEL_16;
  }

  type metadata accessor for simd_float3x4(0);
  v22 = v23;
  if (swift_dynamicCastMetatype())
  {
    sub_1AF448018(v55, v56);
    sub_1AF608500();
    goto LABEL_24;
  }

  type metadata accessor for simd_float4x2(0);
  v26 = v25;
  if (swift_dynamicCastMetatype())
  {
    sub_1AF448018(v55, v56);
    sub_1AF6084AC();
    sub_1AFDFEAD8();
    v27 = v54;
    *(&v50 + 1) = v26;
    v28 = swift_allocObject();
    *&v49 = v28;
    *(v28 + 16) = v53;
    *(v28 + 32) = v27;
    goto LABEL_15;
  }

  type metadata accessor for simd_float4x3(0);
  v30 = v29;
  if (swift_dynamicCastMetatype())
  {
    sub_1AF448018(v55, v56);
    sub_1AF608458();
    sub_1AFDFEAD8();
    *(&v54 + 1) = v30;
    v31 = swift_allocObject();
    *&v53 = v31;
    v32 = v50;
    v31[1] = v49;
    v31[2] = v32;
    v33 = v52;
    v31[3] = v51;
    v31[4] = v33;
    goto LABEL_25;
  }

  type metadata accessor for simd_float4x4(0);
  v35 = v34;
  if (swift_dynamicCastMetatype())
  {
    sub_1AF448018(v55, v56);
    sub_1AF48D6F8();
    sub_1AFDFEAD8();
    v43 = v50;
    v47 = v52;
    v48 = v51;
    *(&v54 + 1) = v35;
    v36 = swift_allocObject();
    *&v53 = v36;
    v36[1] = v49;
    v36[2] = v43;
    v36[3] = v48;
    v36[4] = v47;
    goto LABEL_25;
  }

  sub_1AF90E730(v49);
  if (v37)
  {
    v38 = v37;
    v39 = swift_conformsToProtocol2();
    if (v39)
    {
      *(&v50 + 1) = v38;
      *&v51 = v39;
      sub_1AF585714(&v49);
      sub_1AF75869C(v55);
      v40 = *(&v50 + 1);
      v41 = sub_1AF441150(&v49, *(&v50 + 1));
      v59 = v40;
      v42 = sub_1AF585714(&v58);
      (*(*(v40 - 8) + 16))(v42, v41, v40);
      _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v49);
      goto LABEL_17;
    }

    *&v49 = 0;
    *(&v49 + 1) = 0xE000000000000000;
    sub_1AFDFE218();
    *&v53 = v6;
    sub_1AFDFE458();
    MEMORY[0x1B2718AE0](0xD000000000000011, 0x80000001AFF3C900);
  }

  else
  {
    *&v49 = 0;
    *(&v49 + 1) = 0xE000000000000000;
    sub_1AFDFE218();
    MEMORY[0x1B2718AE0](0x20676E697373696DLL, 0xEE00203A65736163);
    *&v53 = v6;
    sub_1AFDFE458();
  }

  result = sub_1AFDFE518();
  __break(1u);
  return result;
}

uint64_t sub_1AF9771D4(void *a1)
{
  sub_1AF441150(a1, a1[3]);
  sub_1AFDFF3C8();
  *&v22 = *v1;
  sub_1AF448018(v31, v32);
  sub_1AF9748D8();
  sub_1AFDFEC38();
  if (!v2)
  {
    sub_1AF0D5A54((v1 + 1), v26);
    type metadata accessor for simd_quatf(0);
    if (swift_dynamicCast())
    {
      v29 = &type metadata for QuaternionFCoder;
      v30 = sub_1AF5E1280();
      *&v27 = swift_allocObject();
      *(v27 + 16) = v22;
      goto LABEL_11;
    }

    type metadata accessor for simd_float2x2(0);
    if (swift_dynamicCast())
    {
      v29 = &type metadata for Float2x2Coder;
      v30 = sub_1AF608A04();
      v27 = v22;
      goto LABEL_11;
    }

    type metadata accessor for simd_float2x3(0);
    if (swift_dynamicCast())
    {
      v17 = v23;
      v20 = v22;
      v29 = &type metadata for Float2x3Coder;
      v3 = sub_1AF6089B0();
    }

    else
    {
      type metadata accessor for simd_float2x4(0);
      if (!swift_dynamicCast())
      {
        type metadata accessor for simd_float3x2(0);
        if (swift_dynamicCast())
        {
          v29 = &type metadata for Float3x2Coder;
          v30 = sub_1AF608908();
          v27 = v22;
          v28 = v23;
        }

        else
        {
          type metadata accessor for simd_float3x3(0);
          if (swift_dynamicCast())
          {
            v18 = v23;
            v21 = v22;
            v15 = v24;
            v29 = &type metadata for Float3x3Coder;
            v6 = sub_1AF6088B4();
          }

          else
          {
            type metadata accessor for simd_float3x4(0);
            if (!swift_dynamicCast())
            {
              type metadata accessor for simd_float4x2(0);
              if (swift_dynamicCast())
              {
                v8 = v23;
                v29 = &type metadata for Float4x2Coder;
                v30 = sub_1AF60880C();
                v9 = swift_allocObject();
                *&v27 = v9;
                *(v9 + 16) = v22;
                *(v9 + 32) = v8;
              }

              else
              {
                type metadata accessor for simd_float4x3(0);
                if (swift_dynamicCast())
                {
                  v29 = &type metadata for Float4x3Coder;
                  v30 = sub_1AF6087B8();
                  v10 = swift_allocObject();
                  *&v27 = v10;
                  v11 = v23;
                  v10[1] = v22;
                  v10[2] = v11;
                  v12 = v25;
                  v10[3] = v24;
                  v10[4] = v12;
                }

                else
                {
                  type metadata accessor for simd_float4x4(0);
                  if (swift_dynamicCast())
                  {
                    v19 = v23;
                    v14 = v25;
                    v16 = v24;
                    v29 = &type metadata for Float4x4Coder;
                    v30 = sub_1AF48D74C();
                    v13 = swift_allocObject();
                    *&v27 = v13;
                    v13[1] = v22;
                    v13[2] = v19;
                    v13[3] = v16;
                    v13[4] = v14;
                  }

                  else
                  {
                    sub_1AF0D5A54((v1 + 1), &v22);
                    sub_1AF5C5358(0, &qword_1EB63D338);
                    swift_dynamicCast();
                  }
                }
              }

              goto LABEL_11;
            }

            v18 = v23;
            v21 = v22;
            v15 = v24;
            v29 = &type metadata for Float3x4Coder;
            v6 = sub_1AF608860();
          }

          v30 = v6;
          v7 = swift_allocObject();
          *&v27 = v7;
          v7[1] = v21;
          v7[2] = v18;
          v7[3] = v15;
        }

LABEL_11:
        _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v26);
        sub_1AF441150(&v27, v29);
        sub_1AF758548(v31);
        _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v27);
        return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v31);
      }

      v17 = v23;
      v20 = v22;
      v29 = &type metadata for Float2x4Coder;
      v3 = sub_1AF60895C();
    }

    v30 = v3;
    v4 = swift_allocObject();
    *&v27 = v4;
    *(v4 + 16) = v20;
    *(v4 + 32) = v17;
    goto LABEL_11;
  }

  return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v31);
}

uint64_t sub_1AF9776EC()
{
  v1 = *(v0 + OBJC_IVAR____TtC3VFX12ConstantNode_holder);
  sub_1AF442064(v1);
  if (sub_1AF90DD74(2, v1))
  {
    v2 = 4;
  }

  else
  {
    v2 = 0;
  }

  v3 = v2 & 0xFFFFFFFE | sub_1AF90DD74(0, v1);
  if (sub_1AF90DD74(1, v1))
  {
    v4 = v3 | 2;
  }

  else
  {
    v4 = v3;
  }

  v5 = sub_1AF90DD74(3, v1);
  sub_1AF445BE4(v1);
  if (v5)
  {
    return v4 | 8;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_1AF977788(unsigned __int8 *a1)
{
  v2 = v1;
  sub_1AF914FF0(v2 + OBJC_IVAR____TtC3VFX12ConstantNode_holder, v12);
  sub_1AF938228(v12, &v13);
  sub_1AF9151B0(v12);
  v4 = *a1;
  v8 = sub_1AF930984(v13, v14, 3174949, 0xE300000000000000, v4);
  v9 = HIBYTE(v7) & 0xF;
  if ((v7 & 0x2000000000000000) == 0)
  {
    v9 = v6 & 0xFFFFFFFFFFFFLL;
  }

  if (v9)
  {
    v10 = sub_1AF97E1F4(v4, v2, v8, v5, v6, v7);

    v8 = sub_1AFA5413C(v10);

    sub_1AF9151B0(&v13);
  }

  else
  {
    sub_1AF9151B0(&v13);
  }

  return v8;
}

char *sub_1AF9778C0(void *a1)
{
  v2 = swift_allocObject();
  v3 = OBJC_IVAR____TtC3VFX12ConstantNode_semantic;
  *(v2 + OBJC_IVAR____TtC3VFX12ConstantNode_semantic) = xmmword_1AFE22A20;
  sub_1AF914FF0(a1 + OBJC_IVAR____TtC3VFX12ConstantNode_holder, v2 + OBJC_IVAR____TtC3VFX12ConstantNode_holder);
  *(v2 + v3) = *(a1 + OBJC_IVAR____TtC3VFX12ConstantNode_semantic);
  return sub_1AF96FD00(a1);
}

uint64_t sub_1AF977938()
{

  sub_1AF919DAC(*(v0 + 24));
  v1 = OBJC_IVAR____TtC3VFX4Node_authoringID;
  v2 = sub_1AFDFC318();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_1AF9151B0(v0 + OBJC_IVAR____TtC3VFX12ConstantNode_holder);

  return swift_deallocClassInstance();
}

uint64_t sub_1AF977AEC(void *a1)
{
  sub_1AF441150(a1, a1[3]);
  sub_1AF9748D8();
  return sub_1AF974C50();
}

unint64_t sub_1AF977B8C(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  sub_1AF441150(a1, a1[3]);
  sub_1AF974884();
  result = sub_1AF974940();
  if (!v5)
  {
    v8 = *(v4 + *a4);
    *(v4 + *a4) = v9;
    return sub_1AF445BE4(v8);
  }

  return result;
}

uint64_t sub_1AF977C24()
{
  result = 0x65736F706D6F43;
  sub_1AF977FB8();
  return result;
}

uint64_t sub_1AF977C3C@<X0>(uint64_t *a1@<X8>)
{
  v3 = OBJC_IVAR____TtC3VFX12_ComposeNode_type;
  v4 = *(v1 + OBJC_IVAR____TtC3VFX12_ComposeNode_type);
  sub_1AF442064(v4);
  v5 = sub_1AF90DCF4(v4);
  v7 = v6;
  sub_1AF445BE4(v4);
  sub_1AF949EC8(v5, v7);
  v8 = sub_1AF61FA28(&unk_1F24EE020, &unk_1F24EE040, 0, (2 * v5) | 1);
  v9 = swift_allocObject();
  v10 = *(v1 + v3);
  sub_1AF442064(v10);
  sub_1AF90DCF4(v10);
  v12 = v11;
  sub_1AF445BE4(v10);
  *(v9 + 16) = v12;
  v13 = *(v1 + v3);
  sub_1AF442064(v13);
  v14 = sub_1AF90DCF4(v13);
  v16 = v15;
  sub_1AF445BE4(v13);
  sub_1AF949EC8(v14, v16);
  v17 = MEMORY[0x1E69E7CC0];
  if (v14 > 0)
  {
    v18 = sub_1AFDFD488();
    *(v18 + 16) = v14;
    v19 = v9 | 0x8000000000000000;
    *(v18 + 32) = v9 | 0x8000000000000000;
    v20 = v18 + 32;
    if (v14 == 1)
    {
LABEL_8:

      goto LABEL_9;
    }

LABEL_6:
    v21 = v14 - 1;
    v22 = (v20 + 8);
    do
    {
      *v22++ = v19;

      --v21;
    }

    while (v21);
    goto LABEL_8;
  }

  v18 = MEMORY[0x1E69E7CC0];
  if (v14)
  {
    v19 = v9 | 0x8000000000000000;
    *(MEMORY[0x1E69E7CC0] + 32) = v9 | 0x8000000000000000;
    v20 = v18 + 32;
    goto LABEL_6;
  }

LABEL_9:

  sub_1AF97FB54(0, &qword_1EB6309E8, &type metadata for TypeConstraint, MEMORY[0x1E69E6F90]);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_1AFE431C0;
  v24 = swift_allocObject();
  v25 = *(v1 + v3);
  *(v24 + 16) = v25;
  *(v23 + 32) = v24 | 0x8000000000000000;
  sub_1AF442064(v25);
  v26 = sub_1AF3C3AA4(v8);
  sub_1AF97FAD0(0, &qword_1EB630968, MEMORY[0x1E69E6F90]);
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_1AFE431C0;
  sub_1AF97FB54(0, &qword_1ED726C70, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
  sub_1AF488088();
  v28 = sub_1AFDFCD98();
  v30 = v29;

  *(v27 + 32) = v28;
  *(v27 + 40) = v30;
  *a1 = v18;
  a1[1] = v23;
  a1[2] = &unk_1F24EE080;
  a1[3] = v26;
  a1[4] = v27;
  a1[5] = v17;
  return result;
}

uint64_t sub_1AF977F9C()
{
  result = 0x736F706D6F636544;
  sub_1AF977FB8();
  return result;
}

void __spoils<X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> sub_1AF977FB8()
{
  v1 = *(v0 + OBJC_IVAR____TtC3VFX12_ComposeNode_type);
  sub_1AF442064(v1);
  sub_1AF90D394(v1);
  sub_1AF445BE4(v1);

  sub_1AF9A0BAC();

  v2 = sub_1AFDFDDB8();
  v4 = v3;

  sub_1AF701628();

  sub_1AF725990();
  sub_1AFDFD0A8();

  MEMORY[0x1B2718AE0](v2, v4);
}

uint64_t sub_1AF9780EC@<X0>(uint64_t *a1@<X8>)
{
  sub_1AF97FB54(0, &qword_1EB6309E8, &type metadata for TypeConstraint, MEMORY[0x1E69E6F90]);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1AFE431C0;
  v4 = swift_allocObject();
  v5 = OBJC_IVAR____TtC3VFX12_ComposeNode_type;
  v6 = *(v1 + OBJC_IVAR____TtC3VFX12_ComposeNode_type);
  *(v4 + 16) = v6;
  *(v3 + 32) = v4 | 0x8000000000000000;
  v7 = swift_allocObject();
  sub_1AF442064(v6);
  sub_1AF442064(v6);
  sub_1AF90DCF4(v6);
  v9 = v8;
  sub_1AF445BE4(v6);
  *(v7 + 16) = v9;
  v10 = *(v1 + v5);
  sub_1AF442064(v10);
  v11 = sub_1AF90DCF4(v10);
  v13 = v12;
  sub_1AF445BE4(v10);
  sub_1AF949EC8(v11, v13);
  v14 = MEMORY[0x1E69E7CC0];
  if (v11 > 0)
  {
    v15 = sub_1AFDFD488();
    *(v15 + 16) = v11;
    v16 = v7 | 0x8000000000000000;
    *(v15 + 32) = v7 | 0x8000000000000000;
    v17 = v15 + 32;
    if (v11 == 1)
    {
LABEL_8:

      goto LABEL_9;
    }

LABEL_6:
    v18 = v11 - 1;
    v19 = (v17 + 8);
    do
    {
      *v19++ = v16;

      --v18;
    }

    while (v18);
    goto LABEL_8;
  }

  v15 = MEMORY[0x1E69E7CC0];
  if (v11)
  {
    v16 = v7 | 0x8000000000000000;
    *(MEMORY[0x1E69E7CC0] + 32) = v7 | 0x8000000000000000;
    v17 = v15 + 32;
    goto LABEL_6;
  }

LABEL_9:

  *a1 = v3;
  a1[1] = v15;
  a1[2] = &unk_1F24EE8B0;
  a1[3] = v14;
  a1[4] = v14;
  a1[5] = v14;
  return result;
}

unint64_t sub_1AF9782D0()
{
  sub_1AFDFE218();

  v1 = *(v0 + OBJC_IVAR____TtC3VFX12_ComposeNode_type);
  sub_1AF442064(v1);
  sub_1AF90D394(v1);
  sub_1AF445BE4(v1);

  sub_1AF9A0BAC();

  v2 = sub_1AFDFDDB8();
  v4 = v3;

  sub_1AF701628();

  sub_1AF725990();
  sub_1AFDFD0A8();

  MEMORY[0x1B2718AE0](v2, v4);

  return 0xD000000000000011;
}

uint64_t sub_1AF97848C(uint64_t a1, uint64_t a2)
{
  sub_1AFDFE218();

  v4 = *(v2 + OBJC_IVAR____TtC3VFX12_ComposeNode_type);
  sub_1AF442064(v4);
  sub_1AF90D394(v4);
  sub_1AF445BE4(v4);

  sub_1AF9A0BAC();

  v5 = sub_1AFDFDDB8();
  v7 = v6;

  sub_1AF701628();

  sub_1AF725990();
  sub_1AFDFD0A8();

  MEMORY[0x1B2718AE0](v5, v7);

  return a2;
}

unint64_t sub_1AF9785E4@<X0>(uint64_t *a1@<X8>)
{
  v3 = swift_allocObject();
  v4 = swift_allocObject();
  v5 = OBJC_IVAR____TtC3VFX12_ComposeNode_type;
  v6 = *(v1 + OBJC_IVAR____TtC3VFX12_ComposeNode_type);
  sub_1AF442064(v6);
  sub_1AF90DCF4(v6);
  v8 = v7;
  sub_1AF445BE4(v6);
  *(v4 + 16) = v8;
  *(v3 + 16) = v4;
  v9 = *(v1 + v5);
  sub_1AF442064(v9);
  v10 = sub_1AF90DCF4(v9);
  v12 = v11;
  sub_1AF445BE4(v9);
  sub_1AF949EC8(v10, v12);
  v13 = MEMORY[0x1E69E7CC0];
  if (v10 > 0)
  {
    v14 = sub_1AFDFD488();
    *(v14 + 16) = v10;
    v15 = v3 | 0x8000000000000000;
    *(v14 + 32) = v3 | 0x8000000000000000;
    v16 = v14 + 32;
    if (v10 == 1)
    {
LABEL_8:

      goto LABEL_9;
    }

LABEL_6:
    v17 = v10 - 1;
    v18 = (v16 + 8);
    do
    {
      *v18++ = v15;

      --v17;
    }

    while (v17);
    goto LABEL_8;
  }

  v14 = MEMORY[0x1E69E7CC0];
  if (v10)
  {
    v15 = v3 | 0x8000000000000000;
    *(MEMORY[0x1E69E7CC0] + 32) = v3 | 0x8000000000000000;
    v16 = v14 + 32;
    goto LABEL_6;
  }

LABEL_9:

  sub_1AF97FB54(0, &qword_1EB6309E8, &type metadata for TypeConstraint, MEMORY[0x1E69E6F90]);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_1AFE431C0;
  v20 = swift_allocObject();
  v21 = *(v1 + v5);
  *(v20 + 16) = v21;
  *(v19 + 32) = v20 | 0x8000000000000000;
  result = sub_1AF442064(v21);
  *a1 = v14;
  a1[1] = v19;
  a1[2] = &unk_1F24F0C00;
  a1[3] = v13;
  a1[4] = v13;
  a1[5] = v13;
  return result;
}

unint64_t sub_1AF9787E8()
{
  sub_1AFDFE218();

  v1 = *(v0 + OBJC_IVAR____TtC3VFX12_ComposeNode_type);
  sub_1AF442064(v1);
  v2 = sub_1AF90DCF4(v1);
  v4 = v3;
  sub_1AF445BE4(v1);
  sub_1AF949EC8(v2, v4);
  v5 = sub_1AFDFEA08();
  MEMORY[0x1B2718AE0](v5);

  return 0xD000000000000016;
}

uint64_t sub_1AF978A3C@<X0>(uint64_t *a1@<X8>)
{
  sub_1AF97FB54(0, &qword_1EB6309E8, &type metadata for TypeConstraint, MEMORY[0x1E69E6F90]);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1AFE431C0;
  result = swift_allocObject();
  *(result + 16) = 0xC000000000000008;
  *(v2 + 32) = result | 0x8000000000000000;
  v4 = MEMORY[0x1E69E7CC0];
  *a1 = v2;
  a1[1] = v4;
  a1[2] = &unk_1F24F3750;
  a1[3] = v4;
  a1[4] = v4;
  a1[5] = v4;
  return result;
}

uint64_t sub_1AF978B90@<X0>(uint64_t *a1@<X8>)
{
  sub_1AF97FB54(0, &qword_1EB6309E8, &type metadata for TypeConstraint, MEMORY[0x1E69E6F90]);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1AFE4C6B0;
  v3 = swift_allocObject();
  *(v3 + 16) = 0xC000000000000008;
  *(v2 + 32) = v3 | 0x8000000000000000;
  v4 = swift_allocObject();
  *(v4 + 16) = 0xC000000000000008;
  *(v2 + 40) = v4 | 0x8000000000000000;
  v5 = swift_allocObject();
  *(v5 + 16) = 0xC000000000000008;
  *(v2 + 48) = v5 | 0x8000000000000000;
  v6 = swift_allocObject();
  *(v6 + 16) = 0xC000000000000010;
  *(v2 + 56) = v6 | 0x8000000000000000;
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1AFE431C0;
  result = swift_allocObject();
  *(result + 16) = 0xC000000000000008;
  *(v7 + 32) = result | 0x8000000000000000;
  *a1 = v2;
  a1[1] = v7;
  a1[2] = &unk_1F24F2B58;
  a1[3] = &unk_1F24F2B88;
  v9 = MEMORY[0x1E69E7CC0];
  a1[4] = MEMORY[0x1E69E7CC0];
  a1[5] = v9;
  return result;
}

uint64_t sub_1AF978D04()
{
  v0 = sub_1AF978D50();
  v1 = sub_1AFA5413C(v0);

  return v1;
}

uint64_t sub_1AF978D50()
{
  type metadata accessor for NoopNode(0);
  if (swift_dynamicCastClass())
  {
    v0 = sub_1AFA56CA0(&unk_1F2505CE0);
    v1 = MEMORY[0x1E69E62F8];
    sub_1AF97FA74(&unk_1F2505D00, &unk_1ED723290, &type metadata for CodeEmitter.Code, MEMORY[0x1E69E62F8]);
    sub_1AF441DD8();
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1AFE431C0;
    *(inited + 32) = v0;
    v3 = inited + 32;
    v4 = sub_1AFA56CA0(inited);
    swift_setDeallocating();
    sub_1AF97FA74(v3, &unk_1ED723290, &type metadata for CodeEmitter.Code, v1);
    sub_1AFA5413C(v4);

    v5 = sub_1AFAF888C();
    v7 = v6;

    MEMORY[0x1B2718AE0](v5, v7);

    MEMORY[0x1B2718AE0](125, 0xE100000000000000);
    v8 = swift_initStackObject();
    *(v8 + 16) = xmmword_1AFE431C0;
    *(v8 + 32) = MEMORY[0x1E69E7CC0];
    v9 = v8 + 32;
    v10 = sub_1AFA56CA0(v8);
    swift_setDeallocating();
    sub_1AF97FA74(v9, &unk_1ED723290, &type metadata for CodeEmitter.Code, v1);
    sub_1AFA5413C(v10);

    sub_1AFAF888C();

    MEMORY[0x1B2718AE0](10, 0xE100000000000000);
    sub_1AF97FB54(0, &qword_1EB638390, &type metadata for CodeEmitter.Code, MEMORY[0x1E69E6F90]);
    v11 = swift_initStackObject();
    *(v11 + 16) = xmmword_1AFE431C0;
    *(v11 + 32) = 0x2029332528206669;
    *(v11 + 40) = 0xEA00000000000A7BLL;
    *(v11 + 48) = 0;
    *(v11 + 56) = 0;
  }

  else
  {
    v12 = sub_1AFA56CA0(&unk_1F2505D48);
    v13 = MEMORY[0x1E69E62F8];
    sub_1AF97FA74(&unk_1F2505D68, &unk_1ED723290, &type metadata for CodeEmitter.Code, MEMORY[0x1E69E62F8]);
    sub_1AF441DD8();
    v14 = swift_initStackObject();
    *(v14 + 16) = xmmword_1AFE431C0;
    *(v14 + 32) = v12;
    v15 = v14 + 32;
    v16 = sub_1AFA56CA0(v14);
    swift_setDeallocating();
    sub_1AF97FA74(v15, &unk_1ED723290, &type metadata for CodeEmitter.Code, v13);
    sub_1AFA5413C(v16);

    v17 = sub_1AFAF888C();
    v19 = v18;

    MEMORY[0x1B2718AE0](v17, v19);

    MEMORY[0x1B2718AE0](125, 0xE100000000000000);
    v20 = sub_1AFA56CA0(&unk_1F2505DB0);
    sub_1AF97FA74(&unk_1F2505DD0, &unk_1ED723290, &type metadata for CodeEmitter.Code, v13);
    v21 = swift_initStackObject();
    *(v21 + 16) = xmmword_1AFE431C0;
    *(v21 + 32) = v20;

    v22 = sub_1AFA56CA0(v21);
    swift_setDeallocating();
    sub_1AF97FA74(v21 + 32, &unk_1ED723290, &type metadata for CodeEmitter.Code, v13);
    sub_1AFA5413C(v22);

    v23 = sub_1AFAF888C();
    v25 = v24;

    v26 = *(v20 + 16);

    if (v26)
    {
      MEMORY[0x1B2718AE0](0xA7B2065736C6520, 0xE800000000000000);
      MEMORY[0x1B2718AE0](v23, v25);

      v27 = 2685;
      v28 = 0xE200000000000000;
    }

    else
    {

      v27 = 10;
      v28 = 0xE100000000000000;
    }

    MEMORY[0x1B2718AE0](v27, v28);
    sub_1AF97FB54(0, &qword_1EB638390, &type metadata for CodeEmitter.Code, MEMORY[0x1E69E6F90]);
    v11 = swift_initStackObject();
    *(v11 + 16) = xmmword_1AFE431C0;
    *(v11 + 32) = 0x2029332528206669;
    *(v11 + 40) = 0xEA00000000000A7BLL;
    *(v11 + 48) = 0;
    *(v11 + 56) = 0;
  }

  v29 = swift_initStackObject();
  *(v29 + 16) = xmmword_1AFE431C0;
  *(v29 + 32) = v11;
  v30 = v29 + 32;
  v31 = sub_1AFA56CA0(v29);
  swift_setDeallocating();
  v32 = MEMORY[0x1E69E62F8];
  sub_1AF97FA74(v30, &unk_1ED723290, &type metadata for CodeEmitter.Code, MEMORY[0x1E69E62F8]);
  sub_1AF441DD8();
  v33 = swift_initStackObject();
  *(v33 + 16) = xmmword_1AFE4C620;
  *(v33 + 32) = v31;
  *(v33 + 40) = &unk_1F2505DD8;
  v34 = sub_1AFA56CA0(v33);
  swift_setDeallocating();
  sub_1AF97FB54(0, &unk_1ED723290, &type metadata for CodeEmitter.Code, v32);
  swift_arrayDestroy();
  return v34;
}

uint64_t sub_1AF97934C@<X0>(uint64_t *a1@<X8>)
{
  sub_1AF97FB54(0, &qword_1EB6309E8, &type metadata for TypeConstraint, MEMORY[0x1E69E6F90]);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1AFE4C680;
  v3 = swift_allocObject();
  *(v3 + 16) = 0xC000000000000008;
  *(v2 + 32) = v3 | 0x8000000000000000;
  v4 = swift_allocObject();
  *(v4 + 16) = 0xC000000000000008;
  *(v2 + 40) = v4 | 0x8000000000000000;
  v5 = swift_allocObject();
  *(v5 + 16) = 0xC000000000000038;
  *(v2 + 48) = v5 | 0x8000000000000000;
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1AFE4C620;
  v7 = swift_allocObject();
  *(v7 + 16) = 0xC000000000000008;
  *(v6 + 32) = v7 | 0x8000000000000000;
  result = swift_allocObject();
  *(result + 16) = 0xC000000000000038;
  *(v6 + 40) = result | 0x8000000000000000;
  *a1 = v2;
  a1[1] = v6;
  a1[2] = &unk_1F24EDC40;
  a1[3] = &unk_1F24EDBB0;
  v9 = MEMORY[0x1E69E7CC0];
  a1[4] = &unk_1F24EDC00;
  a1[5] = v9;
  return result;
}

uint64_t sub_1AF9794E0(uint64_t a1, unsigned __int8 *a2)
{
  v3 = *(*(a1 + 32) + 40);
  sub_1AF448650(*(a1 + 24));
  sub_1AF442064(v3);

  v4 = *a2;
  v5 = sub_1AF937FF8(v4, v3);
  if ((~v5 & 0xF000000000000007) == 0)
  {
    sub_1AF442064(v3);
    v5 = v3;
  }

  if (v4 == 3)
  {
    strcpy(v20, "let $index = ");
    *&v20[14] = -4864;
  }

  else
  {
    *v20 = 0;
    *&v20[8] = 0xE000000000000000;
    v6 = sub_1AF937FF8(v4, v5);
    if ((~v6 & 0xF000000000000007) == 0)
    {
      sub_1AF442064(v5);
      v6 = v5;
    }

    v7 = sub_1AF94B594(v4, v6);
    v9 = v8;
    sub_1AF445BE4(v6);
    MEMORY[0x1B2718AE0](v7, v9);

    MEMORY[0x1B2718AE0](32, 0xE100000000000000);
    MEMORY[0x1B2718AE0](0x7865646E6924, 0xE600000000000000);
    MEMORY[0x1B2718AE0](2112800, 0xE300000000000000);
  }

  MEMORY[0x1B2718AE0](48, 0xE100000000000000);
  MEMORY[0x1B2718AE0](59, 0xE100000000000000);
  sub_1AF445BE4(v5);
  v10 = *v20;
  *v20 = *(a2 + 1);
  *&v20[9] = *(a2 + 25);
  v19 = v10;
  sub_1AF442064(v3);

  sub_1AF97F9EC(v20, v18);
  MEMORY[0x1B2718AE0](32, 0xE100000000000000);
  MEMORY[0x1B2718AE0](0x3C207865646E6924, 0xEC0000003B322520);
  MEMORY[0x1B2718AE0](32, 0xE100000000000000);
  MEMORY[0x1B2718AE0](0x2B2B7865646E6924, 0xE800000000000000);
  v11 = sub_1AFA56198(v19, *(&v19 + 1), v4, v3);
  v13 = v12;
  sub_1AF445BE4(v3);

  sub_1AF97FA74(v20, &qword_1EB640A58, &type metadata for CodeGenContext.SubGraphContext, MEMORY[0x1E69E6720]);

  sub_1AF97FB54(0, &qword_1EB638390, &type metadata for CodeEmitter.Code, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1AFE431C0;
  *(inited + 32) = v11;
  *(inited + 40) = v13;
  sub_1AF441DD8();
  *(inited + 48) = 0;
  *(inited + 56) = 0;
  v15 = swift_initStackObject();
  *(v15 + 16) = xmmword_1AFE4C620;
  *(v15 + 32) = inited;
  *(v15 + 40) = &unk_1F25059B8;
  v16 = sub_1AFA56CA0(v15);
  sub_1AF445BE4(v3);
  swift_setDeallocating();
  sub_1AF97FB54(0, &unk_1ED723290, &type metadata for CodeEmitter.Code, MEMORY[0x1E69E62F8]);
  swift_arrayDestroy();
  return v16;
}

uint64_t sub_1AF979864@<X0>(uint64_t *a1@<X8>)
{
  sub_1AF97FB54(0, &qword_1EB6309E8, &type metadata for TypeConstraint, MEMORY[0x1E69E6F90]);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1AFE4C680;
  v3 = swift_allocObject();
  *(v3 + 16) = 0xC000000000000008;
  *(v2 + 32) = v3 | 0x8000000000000000;
  v4 = swift_allocObject();
  *(v4 + 16) = 0xC000000000000008;
  *(v2 + 40) = v4 | 0x8000000000000000;
  v5 = swift_allocObject();
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  *(v5 + 16) = v6 | 0x4000000000000000;
  *(v2 + 48) = v5 | 0x2000000000000000;
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1AFE4C680;
  v8 = swift_allocObject();
  *(v8 + 16) = 0xC000000000000008;
  *(v7 + 32) = v8 | 0x8000000000000000;
  v9 = swift_allocObject();
  *(v9 + 16) = 0;
  *(v7 + 40) = v9 | 0x4000000000000000;
  result = swift_allocObject();
  *(result + 16) = 0xC000000000000038;
  *(v7 + 48) = result | 0x8000000000000000;
  *a1 = v2;
  a1[1] = v7;
  a1[2] = &unk_1F24EE150;
  a1[3] = &unk_1F24EE0B0;
  v11 = MEMORY[0x1E69E7CC0];
  a1[4] = &unk_1F24EE100;
  a1[5] = v11;
  return result;
}

uint64_t sub_1AF979A4C(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v3 = a2(v2, a1);
  v4 = sub_1AFA5413C(v3);

  return v4;
}

uint64_t sub_1AF979AA4(uint64_t a1, unsigned __int8 *a2)
{
  v4 = *(*(a1 + 24) + 48);
  sub_1AF448650(*(a1 + 24));
  sub_1AF442064(v4);

  v5 = *a2;
  v34 = v4;
  v6 = sub_1AF97348C(12837, 0xE200000000000000, v4, *a2);
  v8 = v7;
  v9 = *(*(a1 + 32) + 40);
  sub_1AF448650(*(a1 + 24));
  sub_1AF442064(v9);

  v10 = *(*(a1 + 32) + 48);
  sub_1AF448650(*(a1 + 24));
  sub_1AF442064(v10);

  v11 = sub_1AF937FF8(v5, v10);
  if ((~v11 & 0xF000000000000007) == 0)
  {
    sub_1AF442064(v10);
    v11 = v10;
  }

  if (v5 == 3)
  {
    strcpy(v39, "let $index = ");
    *&v39[14] = -4864;
  }

  else
  {
    *v39 = 0;
    *&v39[8] = 0xE000000000000000;
    v12 = sub_1AF937FF8(v5, v11);
    if ((~v12 & 0xF000000000000007) == 0)
    {
      sub_1AF442064(v11);
      v12 = v11;
    }

    v13 = sub_1AF94B594(v5, v12);
    v15 = v14;
    sub_1AF445BE4(v12);
    MEMORY[0x1B2718AE0](v13, v15);

    MEMORY[0x1B2718AE0](32, 0xE100000000000000);
    MEMORY[0x1B2718AE0](0x7865646E6924, 0xE600000000000000);
    MEMORY[0x1B2718AE0](2112800, 0xE300000000000000);
  }

  MEMORY[0x1B2718AE0](48, 0xE100000000000000);
  MEMORY[0x1B2718AE0](59, 0xE100000000000000);
  sub_1AF445BE4(v11);
  v16 = *v39;
  v17 = *&v39[8];
  strcpy(v39, "$index < ");
  *&v39[10] = 0;
  *&v39[12] = -385875968;
  MEMORY[0x1B2718AE0](v6, v8);

  MEMORY[0x1B2718AE0](59, 0xE100000000000000);
  v18 = *v39;
  v19 = *&v39[8];
  *v39 = *(a2 + 1);
  *&v39[9] = *(a2 + 25);
  v37 = v16;
  v38 = v17;
  sub_1AF442064(v34);
  sub_1AF442064(v9);
  sub_1AF442064(v10);

  sub_1AF97F9EC(v39, &v35);
  MEMORY[0x1B2718AE0](32, 0xE100000000000000);
  MEMORY[0x1B2718AE0](v18, v19);

  MEMORY[0x1B2718AE0](32, 0xE100000000000000);
  MEMORY[0x1B2718AE0](0x2B2B7865646E6924, 0xE800000000000000);
  v35 = 0x2820726F66;
  v36 = 0xE500000000000000;
  MEMORY[0x1B2718AE0](v37, v38);
  MEMORY[0x1B2718AE0](175841321, 0xE400000000000000);
  v20 = sub_1AF97F5D4(v5, v10, v9, v34);
  sub_1AF441DD8();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1AFE431C0;
  *(inited + 32) = v20;
  v22 = inited + 32;
  v23 = sub_1AFA56CA0(inited);
  swift_setDeallocating();
  v24 = MEMORY[0x1E69E62F8];
  sub_1AF97FA74(v22, &unk_1ED723290, &type metadata for CodeEmitter.Code, MEMORY[0x1E69E62F8]);
  sub_1AFA5413C(v23);

  v25 = sub_1AFAF888C();
  v27 = v26;

  MEMORY[0x1B2718AE0](v25, v27);

  MEMORY[0x1B2718AE0](2685, 0xE200000000000000);
  sub_1AF445BE4(v34);
  sub_1AF445BE4(v9);
  sub_1AF445BE4(v10);
  v28 = v35;
  v29 = v36;

  sub_1AF97FA74(v39, &qword_1EB640A58, &type metadata for CodeGenContext.SubGraphContext, MEMORY[0x1E69E6720]);

  sub_1AF97FB54(0, &qword_1EB638390, &type metadata for CodeEmitter.Code, MEMORY[0x1E69E6F90]);
  v30 = swift_initStackObject();
  *(v30 + 16) = xmmword_1AFE431C0;
  *(v30 + 32) = v28;
  *(v30 + 40) = v29;
  *(v30 + 48) = 0;
  *(v30 + 56) = 0;
  v31 = swift_initStackObject();
  *(v31 + 16) = xmmword_1AFE4C620;
  *(v31 + 32) = v30;
  *(v31 + 40) = &unk_1F2505B38;
  v32 = sub_1AFA56CA0(v31);
  sub_1AF445BE4(v10);
  sub_1AF445BE4(v9);
  sub_1AF445BE4(v34);
  swift_setDeallocating();
  sub_1AF97FB54(0, &unk_1ED723290, &type metadata for CodeEmitter.Code, v24);
  swift_arrayDestroy();
  return v32;
}

uint64_t sub_1AF97A008@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  sub_1AF97FB54(0, &qword_1EB6309E8, &type metadata for TypeConstraint, MEMORY[0x1E69E6F90]);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1AFE431C0;
  v5 = swift_allocObject();
  *(v5 + 16) = 0xC000000000000008;
  *(v4 + 32) = v5 | 0x8000000000000000;
  v6 = swift_allocObject();
  v7 = v6;
  *(v6 + 16) = 0xC000000000000008;
  v8 = *(v2 + OBJC_IVAR____TtC3VFX6DoNode_count);
  v9 = MEMORY[0x1E69E7CC0];
  if (v8 > 0)
  {
    v10 = sub_1AFDFD488();
    *(v10 + 16) = v8;
    v11 = v7 | 0x8000000000000000;
    *(v10 + 32) = v7 | 0x8000000000000000;
    v12 = v10 + 32;
    if (v8 == 1)
    {
LABEL_9:

      goto LABEL_10;
    }

    v13 = v9;
LABEL_6:
    v14 = v8 - 1;
    v15 = (v12 + 8);
    do
    {
      *v15++ = v11;

      --v14;
    }

    while (v14);
    v9 = v13;
    goto LABEL_9;
  }

  v10 = MEMORY[0x1E69E7CC0];
  if (v8)
  {
    v13 = MEMORY[0x1E69E7CC0];
    v11 = v6 | 0x8000000000000000;
    *(MEMORY[0x1E69E7CC0] + 32) = v6 | 0x8000000000000000;
    v12 = v10 + 32;
    goto LABEL_6;
  }

LABEL_10:

  sub_1AF48F7D8(v10);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_1AFE431C0;
  v17 = swift_allocObject();
  *(v17 + 16) = 0xC000000000000008;
  *(v16 + 32) = v17 | 0x8000000000000000;

  v19 = sub_1AF3C3AA4(v18);

  result = sub_1AF48F7B0(v19);
  *a1 = v4;
  a1[1] = v16;
  a1[2] = &unk_1F24F2B28;
  a1[3] = &unk_1F24F2AF8;
  a1[4] = v9;
  a1[5] = v9;
  return result;
}

uint64_t sub_1AF97A230()
{
  sub_1AF97FB54(0, &qword_1EB6386E0, &type metadata for FlowScope, MEMORY[0x1E69E6F90]);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1AFE431C0;
  *(v1 + 32) = 1;
  *(v1 + 40) = 2;
  v2 = OBJC_IVAR____TtC3VFX6DoNode_count;
  if (*(v0 + OBJC_IVAR____TtC3VFX6DoNode_count) >= 2)
  {
    v3 = sub_1AF425DAC(1, 2, 1, v1);
    *(v3 + 2) = 2;
    *(v3 + 6) = 2;
    v3[56] = 2;
    v15 = v3;
    v4 = *(v0 + v2);
    v5 = MEMORY[0x1E69E7CC0];
    if (v4 != 1)
    {
      v13 = MEMORY[0x1E69E7CC0];
      sub_1AFC07708(0, (v4 - 1) & ~((v4 - 1) >> 63), 0);
      v5 = v13;
      v6 = *(v13 + 16);
      v7 = 16 * v6;
      for (i = 1; i != v4; ++i)
      {
        v14 = v5;
        v9 = *(v5 + 24);
        v10 = v6 + 1;
        if (v6 >= v9 >> 1)
        {
          sub_1AFC07708(v9 > 1, v6 + 1, 1);
          v5 = v14;
        }

        *(v5 + 16) = v10;
        v11 = v5 + v7;
        *(v11 + 32) = i;
        *(v11 + 40) = 0;
        v7 += 16;
        v6 = v10;
      }
    }

    sub_1AF4908E0(v5);
    return v15;
  }

  return v1;
}

void *sub_1AF97A3A0(uint64_t a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC3VFX6DoNode_count;
  v5 = OBJC_IVAR____TtC3VFX6DoNode_caseNames;
  *(v2 + OBJC_IVAR____TtC3VFX6DoNode_caseNames) = &unk_1F24FFDB0;
  *(v2 + v4) = a1;
  v6 = a1 - 1;
  v7 = MEMORY[0x1E69E7CC0];
  if (a1 - 1 < 1)
  {
    v8 = MEMORY[0x1E69E7CC0];
    if (!v6)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v8 = sub_1AFDFD488();
    *(v8 + 16) = v6;
  }

  v9 = v8 + 32;
  if (v6 <= 3)
  {
    v10 = 0;
LABEL_9:
    v13 = ~v10 + a1;
    do
    {
      strcpy(v9, "then do that");
      *(v9 + 13) = 0;
      *(v9 + 14) = -5120;
      v9 += 16;
      --v13;
    }

    while (v13);
    goto LABEL_11;
  }

  v10 = v6 & 0xFFFFFFFFFFFFFFFCLL;
  v9 += 16 * (v6 & 0xFFFFFFFFFFFFFFFCLL);
  v11 = (v8 + 64);
  v12 = v6 & 0xFFFFFFFFFFFFFFFCLL;
  do
  {
    *(v11 - 2) = xmmword_1AFE87140;
    *(v11 - 1) = xmmword_1AFE87140;
    *v11 = xmmword_1AFE87140;
    v11[1] = xmmword_1AFE87140;
    v11 += 4;
    v12 -= 4;
  }

  while (v12);
  if (v6 != v10)
  {
    goto LABEL_9;
  }

LABEL_11:
  sub_1AF48FAF8(v8);
  *(v2 + v5) = &unk_1F24FFDF0;

  v2[3] = 0;
  v2[4] = 0;
  v2[2] = v7;
  sub_1AFDFC308();
  return v2;
}

char *sub_1AF97A4EC(void *a1)
{
  v2 = swift_allocObject();
  v3 = OBJC_IVAR____TtC3VFX6DoNode_caseNames;
  *(v2 + OBJC_IVAR____TtC3VFX6DoNode_count) = *(a1 + OBJC_IVAR____TtC3VFX6DoNode_count);
  *(v2 + v3) = *(a1 + v3);

  return sub_1AF96FD00(a1);
}

uint64_t sub_1AF97A54C(void *a1)
{
  sub_1AF441150(a1, a1[3]);
  sub_1AFDFF3C8();
  sub_1AF448018(v4, v5);
  sub_1AFDFEC28();
  if (!v2)
  {
    v6 = *(v1 + OBJC_IVAR____TtC3VFX6DoNode_caseNames);
    sub_1AF448018(v4, v5);
    sub_1AF97FB54(0, &qword_1ED726C70, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
    sub_1AF97F968(&qword_1EB639870);
    sub_1AFDFEC38();
  }

  return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v4);
}

uint64_t sub_1AF97A690(void *a1)
{
  sub_1AF441150(a1, a1[3]);
  result = sub_1AFDFF388();
  if (!v2)
  {
    sub_1AF448018(v5, v6);
    *(v1 + OBJC_IVAR____TtC3VFX6DoNode_count) = sub_1AFDFEAB8();
    sub_1AF97FB54(0, &qword_1ED726C70, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
    sub_1AF448018(v5, v6);
    sub_1AF97F968(&qword_1ED726C58);
    sub_1AFDFEAD8();
    *(v1 + OBJC_IVAR____TtC3VFX6DoNode_caseNames) = v4;

    return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v5);
  }

  return result;
}

uint64_t sub_1AF97A800()
{

  v1 = sub_1AFA562B8(1, v0);
  v3 = v2;

  sub_1AF97FB54(0, &qword_1EB638390, &type metadata for CodeEmitter.Code, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1AFE431C0;
  *(inited + 32) = v1;
  *(inited + 40) = v3;
  sub_1AF441DD8();
  *(inited + 48) = 0;
  *(inited + 56) = 0;
  v5 = swift_initStackObject();
  *(v5 + 16) = xmmword_1AFE4C620;
  *(v5 + 32) = inited;
  *(v5 + 40) = &unk_1F2505C60;
  v6 = sub_1AFA56CA0(v5);
  swift_setDeallocating();
  sub_1AF97FB54(0, &unk_1ED723290, &type metadata for CodeEmitter.Code, MEMORY[0x1E69E62F8]);
  swift_arrayDestroy();
  v7 = sub_1AFA5413C(v6);

  return v7;
}

uint64_t sub_1AF97A93C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1AFDFEA08();
  MEMORY[0x1B2718AE0](v4);

  sub_1AF97FB54(0, &qword_1EB638390, &type metadata for CodeEmitter.Code, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1AFE431C0;
  *(inited + 32) = 0x776F6C6625;
  *(inited + 40) = 0xE500000000000000;
  *(inited + 48) = 0;
  *(inited + 56) = 0;
  if (*(a2 + OBJC_IVAR____TtC3VFX6DoNode_count) <= a1)
  {
    v12 = MEMORY[0x1E69E7CC0];
  }

  else
  {

    v6 = sub_1AFA53D98();
    v8 = v7;
    v9 = swift_initStackObject();
    *(v9 + 16) = xmmword_1AFE431C0;
    *(v9 + 32) = v6;
    *(v9 + 40) = v8;
    sub_1AF441DD8();
    *(v9 + 48) = 0;
    *(v9 + 56) = 0;
    v10 = swift_initStackObject();
    *(v10 + 16) = xmmword_1AFE431C0;
    *(v10 + 32) = v9;
    v11 = v10 + 32;
    v12 = sub_1AFA56CA0(v10);
    swift_setDeallocating();
    sub_1AF97FA74(v11, &unk_1ED723290, &type metadata for CodeEmitter.Code, MEMORY[0x1E69E62F8]);
  }

  sub_1AF441DD8();
  v13 = swift_initStackObject();
  *(v13 + 16) = xmmword_1AFE4C620;
  *(v13 + 32) = inited;
  *(v13 + 40) = v12;
  v14 = sub_1AFA56CA0(v13);
  swift_setDeallocating();
  sub_1AF97FB54(0, &unk_1ED723290, &type metadata for CodeEmitter.Code, MEMORY[0x1E69E62F8]);
  swift_arrayDestroy();
  return v14;
}

uint64_t sub_1AF97AB94()
{

  sub_1AF919DAC(*(v0 + 24));
  v1 = OBJC_IVAR____TtC3VFX4Node_authoringID;
  v2 = sub_1AFDFC318();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_1AF97AD18@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  sub_1AF97FB54(0, &qword_1EB6309E8, &type metadata for TypeConstraint, MEMORY[0x1E69E6F90]);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1AFE431C0;
  v5 = swift_allocObject();
  *(v5 + 16) = 0xC000000000000008;
  *(v4 + 32) = v5 | 0x8000000000000000;
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1AFE431C0;
  v7 = swift_allocObject();
  *(v7 + 16) = 0;
  *(inited + 32) = v7 | 0x4000000000000000;
  sub_1AF48F7D8(inited);
  v8 = v4;
  v9 = swift_allocObject();
  v10 = v9;
  *(v9 + 16) = 0;
  v11 = OBJC_IVAR____TtC3VFX10SwitchNode_count;
  v12 = *(v2 + OBJC_IVAR____TtC3VFX10SwitchNode_count);
  if (v12 <= 0)
  {
    v13 = MEMORY[0x1E69E7CC0];
    if (!v12)
    {
      goto LABEL_9;
    }

    v14 = v9 | 0x4000000000000000;
    *(MEMORY[0x1E69E7CC0] + 32) = v9 | 0x4000000000000000;
    v15 = v13 + 32;
    goto LABEL_6;
  }

  v13 = sub_1AFDFD488();
  *(v13 + 16) = v12;
  v14 = v10 | 0x4000000000000000;
  *(v13 + 32) = v10 | 0x4000000000000000;
  v15 = v13 + 32;
  if (v12 != 1)
  {
LABEL_6:
    v16 = v12 - 1;
    v17 = (v15 + 8);
    do
    {
      *v17++ = v14;

      --v16;
    }

    while (v16);
  }

LABEL_9:

  sub_1AF48F7D8(v13);
  v18 = swift_allocObject();
  v19 = v18;
  *(v18 + 16) = 0xC000000000000008;
  v20 = *(v2 + v11);
  if (v20 >= 0x7FFFFFFFFFFFFFFFLL)
  {
    v21 = MEMORY[0x1E69E7CC0];
    if (v20 == -1)
    {
      goto LABEL_17;
    }

    v22 = v18 | 0x8000000000000000;
    *(MEMORY[0x1E69E7CC0] + 32) = v18 | 0x8000000000000000;
    v23 = v21 + 32;
    goto LABEL_14;
  }

  v21 = sub_1AFDFD488();
  *(v21 + 16) = v20 + 1;
  v22 = v19 | 0x8000000000000000;
  *(v21 + 32) = v19 | 0x8000000000000000;
  v23 = v21 + 32;
  if (v20)
  {
LABEL_14:
    v24 = (v23 + 8);
    do
    {
      *v24++ = v22;

      --v20;
    }

    while (v20);
  }

LABEL_17:

  sub_1AF48F7D8(v21);
  v25 = v8;
  sub_1AF48F7B0(&unk_1F24EDE08);
  v26 = *(v2 + v11);
  if (v26 <= 0)
  {
    v27 = MEMORY[0x1E69E7CC0];
    if (!v26)
    {
      goto LABEL_21;
    }
  }

  else
  {
    sub_1AF97FB54(0, &qword_1ED726CC0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
    v27 = sub_1AFDFD488();
    *(v27 + 16) = v26;
  }

  bzero((v27 + 32), 16 * v26);
LABEL_21:
  v28 = MEMORY[0x1E69E7CC0];
  sub_1AF48F7B0(v27);
  v29 = *(v2 + v11);
  if (v29 < 1)
  {
    v30 = MEMORY[0x1E69E7CC0];
    if (!v29)
    {
      goto LABEL_31;
    }
  }

  else
  {
    sub_1AF97FB54(0, &qword_1ED726CC0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
    v30 = sub_1AFDFD488();
    *(v30 + 16) = v29;
  }

  v31 = (v30 + 32);
  if (v29 <= 3)
  {
    v32 = 0;
LABEL_29:
    v35 = v29 - v32;
    do
    {
      *v31++ = xmmword_1AFE87150;
      --v35;
    }

    while (v35);
    goto LABEL_31;
  }

  v32 = v29 & 0xFFFFFFFFFFFFFFFCLL;
  v31 += v29 & 0xFFFFFFFFFFFFFFFCLL;
  v33 = (v30 + 64);
  v34 = v29 & 0xFFFFFFFFFFFFFFFCLL;
  do
  {
    *(v33 - 2) = xmmword_1AFE87150;
    *(v33 - 1) = xmmword_1AFE87150;
    *v33 = xmmword_1AFE87150;
    v33[1] = xmmword_1AFE87150;
    v33 += 4;
    v34 -= 4;
  }

  while (v34);
  if (v29 != v32)
  {
    goto LABEL_29;
  }

LABEL_31:
  sub_1AF48F7B0(v30);
  sub_1AF48F7B0(&unk_1F24EDE38);
  v36 = swift_allocObject();
  *(v36 + 16) = xmmword_1AFE431C0;
  result = swift_allocObject();
  *(result + 16) = 0xC000000000000008;
  *(v36 + 32) = result | 0x8000000000000000;
  *a1 = v25;
  a1[1] = v36;
  a1[2] = &unk_1F24EDE68;
  a1[3] = &unk_1F24EDDD8;
  a1[4] = v28;
  a1[5] = v28;
  return result;
}

void *sub_1AF97B164()
{
  v1 = v0;
  sub_1AF4908E0(&unk_1F25043E8);
  v2 = OBJC_IVAR____TtC3VFX10SwitchNode_count;
  v3 = *(v0 + OBJC_IVAR____TtC3VFX10SwitchNode_count);
  if (v3 < 1)
  {
    v4 = MEMORY[0x1E69E7CC0];
    if (!v3)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v4 = sub_1AFDFD488();
    *(v4 + 16) = v3;
  }

  v5 = 32;
  do
  {
    v6 = v4 + v5;
    *v6 = 3;
    *(v6 + 8) = 2;
    v5 += 16;
    --v3;
  }

  while (v3);
LABEL_6:
  sub_1AF4908E0(v4);
  v7 = *(v1 + v2);
  if (v7 >= 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = MEMORY[0x1E69E7CC0];
    if (v7 == -1)
    {
      goto LABEL_13;
    }

    *(MEMORY[0x1E69E7CC0] + 32) = 2;
    v9 = v8 + 32;
    *(v8 + 40) = 2;
  }

  else
  {
    v8 = sub_1AFDFD488();
    *(v8 + 16) = v7 + 1;
    *(v8 + 32) = 2;
    v9 = v8 + 32;
    *(v8 + 40) = 2;
    if (!v7)
    {
      goto LABEL_13;
    }
  }

  v10 = (v9 + 24);
  do
  {
    *(v10 - 1) = 2;
    *v10 = 2;
    v10 += 16;
    --v7;
  }

  while (v7);
LABEL_13:
  sub_1AF4908E0(v8);
  return &unk_1F25043B8;
}

uint64_t sub_1AF97B2F8(char *a1)
{
  v2 = sub_1AF97EFF0(v1, *a1);
  v3 = sub_1AFA5413C(v2);

  return v3;
}

uint64_t sub_1AF97B348()
{
  v0 = sub_1AFDFEA08();
  MEMORY[0x1B2718AE0](v0);

  sub_1AF97FB54(0, &qword_1EB638390, &type metadata for CodeEmitter.Code, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1AFE431C0;
  *(inited + 32) = 0x776F6C6625;
  *(inited + 40) = 0xE500000000000000;
  sub_1AF441DD8();
  *(inited + 48) = 0;
  *(inited + 56) = 0;
  v2 = swift_initStackObject();
  *(v2 + 16) = xmmword_1AFE431C0;
  *(v2 + 32) = inited;
  v3 = v2 + 32;
  v4 = sub_1AFA56CA0(v2);
  swift_setDeallocating();
  sub_1AF97FA74(v3, &unk_1ED723290, &type metadata for CodeEmitter.Code, MEMORY[0x1E69E62F8]);
  return v4;
}

uint64_t sub_1AF97B588@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  sub_1AF97FB54(0, &qword_1EB6309E8, &type metadata for TypeConstraint, MEMORY[0x1E69E6F90]);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1AFE431C0;
  result = swift_allocObject();
  *(result + 16) = a1;
  *(v6 + 32) = result | 0x8000000000000000;
  v8 = MEMORY[0x1E69E7CC0];
  *a3 = MEMORY[0x1E69E7CC0];
  a3[1] = v6;
  a3[2] = a2;
  a3[3] = v8;
  a3[4] = v8;
  a3[5] = v8;
  return result;
}

uint64_t sub_1AF97B6B8()
{
  sub_1AF441194(v0 + OBJC_IVAR____TtC3VFX16EnumConstantNode_value, v4);
  sub_1AF441150(v4, v4[3]);
  DynamicType = swift_getDynamicType();
  v2 = v4[4];
  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v4);
  return (*(v2 + 40))(DynamicType, v2);
}

uint64_t sub_1AF97B750()
{
  v1 = sub_1AF441150((v0 + OBJC_IVAR____TtC3VFX16EnumConstantNode_value), *(v0 + OBJC_IVAR____TtC3VFX16EnumConstantNode_value + 24));
  v2 = MEMORY[0x1EEE9AC00](v1, v1);
  (*(v4 + 16))(&v6 - v3, v2);
  return sub_1AFDFCF88();
}

uint64_t sub_1AF97B818(void *a1)
{
  v2 = v1;
  sub_1AF441150(a1, a1[3]);
  sub_1AFDFF3D8();
  v3 = *(v1 + OBJC_IVAR____TtC3VFX16EnumConstantNode_value + 24);
  v4 = sub_1AF441150((v2 + OBJC_IVAR____TtC3VFX16EnumConstantNode_value), *(v2 + OBJC_IVAR____TtC3VFX16EnumConstantNode_value + 24));
  v7[3] = v3;
  v5 = sub_1AF585714(v7);
  (*(*(v3 - 8) + 16))(v5, v4, v3);
  sub_1AF448018(v8, v9);
  sub_1AF48726C();
  sub_1AFDFEF28();
  sub_1AF4872C0(v7);
  return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v8);
}

uint64_t sub_1AF97B91C(void *a1)
{
  sub_1AF441150(a1, a1[3]);
  result = sub_1AFDFF398();
  if (!v2)
  {
    sub_1AF441150(v11, v11[3]);
    sub_1AF4870B8();
    sub_1AFDFEE88();
    sub_1AF449D40(&v9, &v8);
    sub_1AF5C5358(0, &qword_1EB641060);
    if (swift_dynamicCast())
    {
      sub_1AF0FBA54(v6, v10);
      v4 = OBJC_IVAR____TtC3VFX16EnumConstantNode_value;
      _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v1 + OBJC_IVAR____TtC3VFX16EnumConstantNode_value);
      sub_1AF0FBA54(v10, v1 + v4);
    }

    else
    {
      v7 = 0;
      memset(v6, 0, sizeof(v6));
      sub_1AF97F8A4(v6);
      sub_1AF4567E0();
      swift_allocError();
      *v5 = xmmword_1AFE87160;
      *(v5 + 16) = 32;
      swift_willThrow();
    }

    return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v11);
  }

  return result;
}

uint64_t sub_1AF97BB54(unsigned __int8 *a1)
{
  v2 = *a1;
  sub_1AF441194(v1 + OBJC_IVAR____TtC3VFX16EnumConstantNode_value, v8);
  v3 = v9;
  v4 = v10;
  sub_1AF441150(v8, v9);
  v5 = (*(v4 + 48))(v3, v4);
  v11[3] = MEMORY[0x1E69E7360];
  v11[0] = v5;
  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v8);
  v6 = sub_1AF92F69C(0xC000000000000040, v11, v2);
  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v11);
  return v6;
}

uint64_t sub_1AF97BC0C()
{
  sub_1AF441194(v0 + OBJC_IVAR____TtC3VFX16EnumConstantNode_value, v5);
  sub_1AF441150(v5, v5[3]);
  DynamicType = swift_getDynamicType();
  v2 = v5[4];
  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v5);
  v3 = (*(v2 + 40))(DynamicType, v2);
  v5[0] = 0x746963696C706D49;
  v5[1] = 0xE800000000000000;
  MEMORY[0x1B2718AE0](v3);

  return v5[0];
}

char *sub_1AF97BCBC(void *a1)
{
  v2 = swift_allocObject();
  sub_1AF441194(a1 + OBJC_IVAR____TtC3VFX16EnumConstantNode_value, v2 + OBJC_IVAR____TtC3VFX16EnumConstantNode_value);
  return sub_1AF96FD00(a1);
}

uint64_t sub_1AF97BD0C()
{

  sub_1AF919DAC(*(v0 + 24));
  v1 = OBJC_IVAR____TtC3VFX4Node_authoringID;
  v2 = sub_1AFDFC318();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v0 + OBJC_IVAR____TtC3VFX16EnumConstantNode_value);

  return swift_deallocClassInstance();
}

uint64_t sub_1AF97BF20@<X0>(uint64_t *a1@<X8>)
{
  v2 = MEMORY[0x1E69E6F90];
  sub_1AF97FB54(0, &qword_1EB6309E8, &type metadata for TypeConstraint, MEMORY[0x1E69E6F90]);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1AFE431C0;
  v4 = swift_allocObject();
  *(v4 + 16) = 0xC000000000000070;
  *(v3 + 32) = v4 | 0x8000000000000000;
  sub_1AF97FB54(0, &unk_1EB630980, &type metadata for AnyValue, v2);
  v5 = swift_allocObject();
  v6 = MEMORY[0x1E69E6158];
  *(v5 + 16) = xmmword_1AFE431C0;
  v8[3] = v6;
  v8[0] = 0x726156796DLL;
  v8[1] = 0xE500000000000000;
  sub_1AF975674(v8, (v5 + 32));
  result = _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v8);
  *a1 = v3;
  a1[1] = &unk_1F24F11E0;
  a1[2] = &unk_1F24F1180;
  a1[3] = &unk_1F24F11B0;
  a1[4] = MEMORY[0x1E69E7CC0];
  a1[5] = v5;
  return result;
}

uint64_t sub_1AF97C0CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v9 = MEMORY[0x1E69E6F90];
  sub_1AF97FB54(0, &qword_1EB6309E8, &type metadata for TypeConstraint, MEMORY[0x1E69E6F90]);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1AFE4C680;
  v11 = swift_allocObject();
  *(v11 + 16) = 0xC000000000000008;
  *(v10 + 32) = v11 | 0x8000000000000000;
  v12 = swift_allocObject();
  *(v12 + 16) = 0xC000000000000070;
  *(v10 + 40) = v12 | 0x8000000000000000;
  *(v10 + 48) = 0xA000000000000000;
  sub_1AF97FB54(0, &unk_1EB630980, &type metadata for AnyValue, v9);
  v13 = swift_allocObject();
  v14 = MEMORY[0x1E69E6530];
  *(v13 + 64) = MEMORY[0x1E69E6530];
  *(v13 + 16) = xmmword_1AFE4C680;
  *(v13 + 32) = xmmword_1AFE87170;
  v18[3] = MEMORY[0x1E69E6158];
  v18[0] = a1;
  v18[1] = a2;
  sub_1AF975674(v18, (v13 + 72));
  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v18);
  *(v13 + 144) = v14;
  *(v13 + 112) = xmmword_1AFE87170;
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_1AFE431C0;
  result = swift_allocObject();
  *(result + 16) = 0xC000000000000008;
  *(v15 + 32) = result | 0x8000000000000000;
  *a5 = v10;
  a5[1] = v15;
  a5[2] = a3;
  a5[3] = a4;
  a5[4] = MEMORY[0x1E69E7CC0];
  a5[5] = v13;
  return result;
}

uint64_t sub_1AF97C298(unsigned __int8 *a1)
{
  v2 = v1;

  v4 = sub_1AF9A1B58(1, 0);
  v6 = v5;

  if (v6)
  {
    v7 = v4;
  }

  else
  {
    v7 = 0;
  }

  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = 0xE000000000000000;
  }

  v9 = sub_1AF95A008(v7, v8);
  v11 = v10;

  v12 = *a1;
  v13 = *(v2 + 24);
  v14 = *(v13 + 48);
  sub_1AF448650(v13);
  sub_1AF442064(v14);

  v15 = sub_1AF937FF8(v12, v14);
  if ((~v15 & 0xF000000000000007) == 0)
  {
    sub_1AF442064(v14);
    v15 = v14;
  }

  if (v12 == 3)
  {
    v21 = 544499052;
  }

  else
  {
    v21 = 0;
    v16 = sub_1AF937FF8(v12, v15);
    if ((~v16 & 0xF000000000000007) == 0)
    {
      sub_1AF442064(v15);
      v16 = v15;
    }

    v17 = sub_1AF94B594(v12, v16);
    v19 = v18;
    sub_1AF445BE4(v16);
    MEMORY[0x1B2718AE0](v17, v19);

    MEMORY[0x1B2718AE0](32, 0xE100000000000000);
  }

  MEMORY[0x1B2718AE0](v9, v11);

  MEMORY[0x1B2718AE0](2112800, 0xE300000000000000);
  MEMORY[0x1B2718AE0](12837, 0xE200000000000000);
  MEMORY[0x1B2718AE0](59, 0xE100000000000000);
  sub_1AF445BE4(v15);
  sub_1AF445BE4(v14);
  return v21;
}

unint64_t sub_1AF97C5BC@<X0>(uint64_t *a1@<X8>)
{
  sub_1AF97FB54(0, &qword_1EB6309E8, &type metadata for TypeConstraint, MEMORY[0x1E69E6F90]);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1AFE4C680;
  v4 = swift_allocObject();
  *(v4 + 16) = 0xC000000000000008;
  *(v3 + 32) = v4 | 0x8000000000000000;
  v5 = swift_allocObject();
  *(v5 + 16) = 0xC000000000000070;
  *(v3 + 40) = v5 | 0x8000000000000000;
  v6 = swift_allocObject();
  v7 = *(v1 + OBJC_IVAR____TtC3VFX21_ResolvedVariableNode_type);
  *(v6 + 16) = v7;
  *(v3 + 48) = v6 | 0x8000000000000000;
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1AFE431C0;
  v9 = swift_allocObject();
  *(v9 + 16) = 0xC000000000000008;
  *(v8 + 32) = v9 | 0x8000000000000000;
  result = sub_1AF442064(v7);
  *a1 = v3;
  a1[1] = v8;
  a1[2] = &unk_1F24F24B8;
  a1[3] = &unk_1F24F24E8;
  v11 = MEMORY[0x1E69E7CC0];
  a1[4] = MEMORY[0x1E69E7CC0];
  a1[5] = v11;
  return result;
}

uint64_t sub_1AF97C714()
{

  v0 = sub_1AF9A1B58(1, 0);
  v2 = v1;

  if (v2)
  {
    v3 = v0;
  }

  else
  {
    v3 = 0;
  }

  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = 0xE000000000000000;
  }

  v5 = sub_1AF95A008(v3, v4);

  MEMORY[0x1B2718AE0](0x3B3225203D20, 0xE600000000000000);
  return v5;
}

unint64_t sub_1AF97C7FC@<X0>(uint64_t *a1@<X8>)
{
  sub_1AF97FB54(0, &qword_1EB6309E8, &type metadata for TypeConstraint, MEMORY[0x1E69E6F90]);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1AFE431C0;
  v4 = swift_allocObject();
  *(v4 + 16) = 0xC000000000000070;
  *(v3 + 32) = v4 | 0x8000000000000000;
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1AFE431C0;
  v6 = swift_allocObject();
  v7 = *(v1 + OBJC_IVAR____TtC3VFX21_ResolvedVariableNode_type);
  *(v6 + 16) = v7;
  *(v5 + 32) = v6 | 0x8000000000000000;
  result = sub_1AF442064(v7);
  *a1 = v3;
  a1[1] = v5;
  a1[2] = &unk_1F24F2458;
  a1[3] = &unk_1F24F2488;
  v9 = MEMORY[0x1E69E7CC0];
  a1[4] = MEMORY[0x1E69E7CC0];
  a1[5] = v9;
  return result;
}

uint64_t sub_1AF97C920(unsigned __int8 *a1)
{
  v2 = v1;

  v4 = sub_1AF9A1B58(1, 0);
  v6 = v5;

  if (v6)
  {
    v7 = v4;
  }

  else
  {
    v7 = 0;
  }

  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = 0xE000000000000000;
  }

  v9 = sub_1AF95A008(v7, v8);
  v11 = v10;

  v12 = *a1;
  v13 = *(*(v2 + 32) + 32);
  sub_1AF448650(*(v2 + 24));
  sub_1AF442064(v13);

  v14 = sub_1AF937FF8(v12, v13);
  if ((~v14 & 0xF000000000000007) == 0)
  {
    sub_1AF442064(v13);
    v14 = v13;
  }

  v15 = sub_1AF94B594(v12, v14);
  v17 = v16;
  sub_1AF445BE4(v14);
  sub_1AF445BE4(v13);
  MEMORY[0x1B2718AE0](v15, v17);

  MEMORY[0x1B2718AE0](0x203D2030722520, 0xE700000000000000);
  MEMORY[0x1B2718AE0](v9, v11);

  MEMORY[0x1B2718AE0](59, 0xE100000000000000);
  return 0;
}

char *sub_1AF97CA94(void *a1, void *a2)
{
  v4 = swift_allocObject();
  v5 = *(a1 + *a2);
  *(v4 + *a2) = v5;
  sub_1AF442064(v5);
  return sub_1AF96FD00(a1);
}

uint64_t sub_1AF97CAEC(void *a1)
{

  sub_1AF919DAC(*(v1 + 24));
  v3 = OBJC_IVAR____TtC3VFX4Node_authoringID;
  v4 = sub_1AFDFC318();
  (*(*(v4 - 8) + 8))(v1 + v3, v4);
  sub_1AF445BE4(*(v1 + *a1));

  return swift_deallocClassInstance();
}

void sub_1AF97CC30(void *a1@<X8>)
{
  v1 = MEMORY[0x1E69E7CC0];
  *a1 = MEMORY[0x1E69E7CC0];
  a1[1] = v1;
  a1[2] = &unk_1F24F1318;
  a1[3] = v1;
  a1[4] = v1;
  a1[5] = v1;
}

uint64_t sub_1AF97CC94@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1AF97FB54(0, &qword_1EB6309E8, &type metadata for TypeConstraint, MEMORY[0x1E69E6F90]);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1AFE431C0;
  v5 = swift_allocObject();
  *(v5 + 16) = 0;
  *(v4 + 32) = v5 | 0x4000000000000000;
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1AFE431C0;
  result = swift_allocObject();
  *(result + 16) = 0;
  *(v6 + 32) = result | 0x4000000000000000;
  *a2 = v4;
  a2[1] = v6;
  v8 = MEMORY[0x1E69E7CC0];
  a2[2] = a1;
  a2[3] = v8;
  a2[4] = v8;
  a2[5] = v8;
  return result;
}

uint64_t sub_1AF97CE3C(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = sub_1AF97F7A4(*a1, a4, a5, a6);
  v7 = sub_1AFA5413C(v6);

  return v7;
}

uint64_t sub_1AF97CEAC@<X0>(uint64_t *a1@<X8>)
{
  v2 = MEMORY[0x1E69E6F90];
  sub_1AF97FB54(0, &qword_1EB6309E8, &type metadata for TypeConstraint, MEMORY[0x1E69E6F90]);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1AFE4C620;
  v4 = swift_allocObject();
  *(v4 + 16) = 0xC000000000000070;
  *(v3 + 32) = v4 | 0x8000000000000000;
  v5 = swift_allocObject();
  *(v5 + 16) = 0;
  *(v3 + 40) = v5 | 0x4000000000000000;
  sub_1AF97FB54(0, &unk_1EB630980, &type metadata for AnyValue, v2);
  v6 = swift_allocObject();
  v7 = MEMORY[0x1E69E6158];
  *(v6 + 16) = xmmword_1AFE4C620;
  v10[3] = v7;
  v10[0] = 0x3A65756C6176;
  v10[1] = 0xE600000000000000;
  sub_1AF975674(v10, (v6 + 32));
  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v10);
  *(v6 + 104) = MEMORY[0x1E69E6530];
  *(v6 + 72) = xmmword_1AFE87170;
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1AFE431C0;
  result = swift_allocObject();
  *(result + 16) = 0;
  *(v8 + 32) = result | 0x4000000000000000;
  *a1 = v3;
  a1[1] = v8;
  a1[2] = &unk_1F24F1CC8;
  a1[3] = &unk_1F24F1C88;
  a1[4] = MEMORY[0x1E69E7CC0];
  a1[5] = v6;
  return result;
}

uint64_t sub_1AF97D064(_BYTE *a1)
{

  v3 = sub_1AF9A1B58(1, 0);
  v5 = v4;

  if (v5)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0;
  }

  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0xE000000000000000;
  }

  v8 = *(v1 + 24);
  v9 = *(v8 + 40);
  sub_1AF448650(v8);
  sub_1AF442064(v9);

  if (*a1 == 3)
  {
    sub_1AFDFE218();

    v14 = 0x28676F6C5F786676;
    MEMORY[0x1B2718AE0](v6, v7);

    MEMORY[0x1B2718AE0](34, 0xE100000000000000);
    MEMORY[0x1B2718AE0](34, 0xE100000000000000);

    v10 = 0xD000000000000014;
    v11 = 0x80000001AFF3CA20;
  }

  else
  {
    v14 = 0;
    sub_1AFDFE218();
    MEMORY[0x1B2718AE0](0xD000000000000038, 0x80000001AFF3C9C0);
    MEMORY[0x1B2718AE0](v6, v7);

    MEMORY[0x1B2718AE0](34, 0xE100000000000000);
    MEMORY[0x1B2718AE0](34, 0xE100000000000000);

    MEMORY[0x1B2718AE0](8236, 0xE200000000000000);
    sub_1AF9102F8(v9);
    v12 = sub_1AFDFEA08();
    MEMORY[0x1B2718AE0](v12);

    v11 = 0x80000001AFF3CA00;
    v10 = 0xD000000000000012;
  }

  MEMORY[0x1B2718AE0](v10, v11);
  sub_1AF445BE4(v9);
  return v14;
}

uint64_t sub_1AF97D300(_BYTE *a1)
{

  v3 = sub_1AF9A1B58(1, 0);
  v5 = v4;

  if (v5)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0;
  }

  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0xE000000000000000;
  }

  v8 = *(v1 + 24);
  v9 = *(v8 + 48);
  sub_1AF448650(v8);
  sub_1AF442064(v9);

  if (*a1 == 3)
  {
    sub_1AFDFE218();

    v14 = 0x28676F6C5F786676;
    MEMORY[0x1B2718AE0](v6, v7);

    MEMORY[0x1B2718AE0](34, 0xE100000000000000);
    MEMORY[0x1B2718AE0](34, 0xE100000000000000);

    v10 = 0xD000000000000014;
    v11 = 0x80000001AFF3C9A0;
  }

  else
  {
    v14 = 0;
    sub_1AFDFE218();
    MEMORY[0x1B2718AE0](0xD000000000000038, 0x80000001AFF3C940);
    MEMORY[0x1B2718AE0](v6, v7);

    MEMORY[0x1B2718AE0](34, 0xE100000000000000);
    MEMORY[0x1B2718AE0](34, 0xE100000000000000);

    MEMORY[0x1B2718AE0](8236, 0xE200000000000000);
    sub_1AF9102F8(v9);
    v12 = sub_1AFDFEA08();
    MEMORY[0x1B2718AE0](v12);

    v11 = 0x80000001AFF3C980;
    v10 = 0xD000000000000012;
  }

  MEMORY[0x1B2718AE0](v10, v11);
  sub_1AF445BE4(v9);
  return v14;
}

uint64_t sub_1AF97D5CC@<X0>(uint64_t *a1@<X8>)
{
  v3 = OBJC_IVAR____TtC3VFX14StringJoinNode_count;
  v4 = *(v1 + OBJC_IVAR____TtC3VFX14StringJoinNode_count);
  if (v4 < 1)
  {
    v5 = MEMORY[0x1E69E7CC0];
    if (!v4)
    {
      goto LABEL_5;
    }
  }

  else
  {
    v5 = sub_1AFDFD488();
    *(v5 + 16) = v4;
  }

  memset_pattern16((v5 + 32), &unk_1AFE854D0, 8 * v4);
LABEL_5:
  v6 = MEMORY[0x1E69E7CC0];
  sub_1AF97FB54(0, &qword_1EB6309E8, &type metadata for TypeConstraint, MEMORY[0x1E69E6F90]);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1AFE431C0;
  v8 = swift_allocObject();
  *(v8 + 16) = 0xC000000000000070;
  *(v7 + 32) = v8 | 0x8000000000000000;
  v13[3] = MEMORY[0x1E69E6158];
  v13[0] = 0;
  v13[1] = 0xE000000000000000;
  sub_1AF975674(v13, v14);
  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v13);
  v9 = *(v1 + v3);
  if (v9 < 1)
  {
    v10 = MEMORY[0x1E69E7CC0];
    if (!v9)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v10 = sub_1AFDFD488();
    *(v10 + 16) = v9;
  }

  v11 = v10 + 32;
  do
  {
    sub_1AF914FF0(v14, v11);
    v11 += 40;
    --v9;
  }

  while (v9);
LABEL_10:
  result = sub_1AF9151B0(v14);
  *a1 = v5;
  a1[1] = v7;
  a1[2] = &unk_1F24EF260;
  a1[3] = v6;
  a1[4] = v6;
  a1[5] = v10;
  return result;
}

uint64_t sub_1AF97D76C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1AFDFEA08();
  v7 = v6;
  sub_1AF97FB54(0, &qword_1EB638390, &type metadata for CodeEmitter.Code, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1AFE431C0;
  *(inited + 32) = v5;
  *(inited + 40) = v7;
  *(inited + 48) = 0;
  *(inited + 56) = 0;
  v9 = swift_initStackObject();
  *(v9 + 16) = xmmword_1AFE431C0;
  *(v9 + 32) = a2;
  *(v9 + 40) = a3;
  sub_1AF441DD8();
  *(v9 + 48) = 0;
  *(v9 + 56) = 0;
  v10 = swift_initStackObject();
  *(v10 + 16) = xmmword_1AFE4C680;
  *(v10 + 32) = &unk_1F2504D68;
  *(v10 + 40) = inited;
  *(v10 + 48) = v9;

  v11 = sub_1AFA56CA0(v10);
  swift_setDeallocating();
  sub_1AF97FB54(0, &unk_1ED723290, &type metadata for CodeEmitter.Code, MEMORY[0x1E69E62F8]);
  swift_arrayDestroy();
  return v11;
}

uint64_t sub_1AF97DA40(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  sub_1AF441150(a1, a1[3]);
  result = sub_1AF974940();
  if (!v5)
  {
    *(v4 + *a4) = v8;
  }

  return result;
}

uint64_t destroy for AnyValue(unint64_t *a1)
{
  v1 = (a1 + 1);
  sub_1AF445BE4(*a1);
  return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v1);
}

unint64_t *initializeWithCopy for AnyValue(unint64_t *a1, unint64_t *a2)
{
  v4 = *a2;
  sub_1AF442064(*a2);
  *a1 = v4;
  v5 = a2[4];
  a1[4] = v5;
  (**(v5 - 8))((a1 + 1), (a2 + 1));
  return a1;
}

uint64_t assignWithCopy for AnyValue(uint64_t a1, unint64_t *a2)
{
  v3 = (a2 + 1);
  v4 = *a2;
  sub_1AF442064(*a2);
  v5 = *a1;
  *a1 = v4;
  sub_1AF445BE4(v5);
  sub_1AF60685C((a1 + 8), v3);
  return a1;
}

uint64_t assignWithTake for AnyValue(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  *a1 = *a2;
  sub_1AF445BE4(v4);
  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1 + 8);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  return a1;
}

uint64_t getEnumTagSinglePayload for AnyValue(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t storeEnumTagSinglePayload for AnyValue(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1AF97DD7C()
{
  result = qword_1EB6310E0;
  if (!qword_1EB6310E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6310E0);
  }

  return result;
}

uint64_t sub_1AF97DDD0(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *a2;
  *a2 = v4;
  sub_1AF445BE4(v5);
  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a2 + 8);
  v6 = *(a1 + 1);
  *(a2 + 24) = *(a1 + 3);
  *(a2 + 8) = v6;
  return a2;
}

unint64_t sub_1AF97DE20()
{
  result = qword_1EB640A50;
  if (!qword_1EB640A50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB640A50);
  }

  return result;
}

void *sub_1AF97DE74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[3] = a3;
  v11[4] = a4;
  v6 = sub_1AF585714(v11);
  (*(*(a3 - 8) + 32))(v6, a1, a3);
  type metadata accessor for ImplicitEnumConstantNode(0);
  v7 = swift_allocObject();
  sub_1AF441194(v11, v10);
  sub_1AF441194(v10, v7 + OBJC_IVAR____TtC3VFX16EnumConstantNode_value);
  v8 = MEMORY[0x1E69E7CC0];
  v7[3] = 0;
  v7[4] = 0;
  v7[2] = v8;
  sub_1AFDFC308();
  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v10);
  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v11);
  return v7;
}

uint64_t sub_1AF97DF4C(uint64_t a1)
{
  v2 = v1;
  v4 = *(v1 + OBJC_IVAR____TtC3VFX12_ComposeNode_type);
  sub_1AF442064(v4);
  v5 = sub_1AF90DCF4(v4);
  v7 = v6;
  sub_1AF445BE4(v4);
  sub_1AF949EC8(v5, v7);
  if (v5)
  {
    v23 = a1;
    v24 = MEMORY[0x1E69E7CC0];
    sub_1AFC05CE4(0, v5 & ~(v5 >> 63), 0);
    v8 = 0;
    do
    {
      v9 = sub_1AFDFEA08();
      MEMORY[0x1B2718AE0](v9);

      v11 = *(v24 + 16);
      v10 = *(v24 + 24);
      if (v11 >= v10 >> 1)
      {
        sub_1AFC05CE4(v10 > 1, v11 + 1, 1);
      }

      ++v8;
      *(v24 + 16) = v11 + 1;
      v12 = v24 + 16 * v11;
      *(v12 + 32) = 37;
      *(v12 + 40) = 0xE100000000000000;
    }

    while (v5 != v8);
    a1 = v23;
  }

  sub_1AF97FB54(0, &qword_1ED726C70, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
  sub_1AF488088();
  v13 = sub_1AFDFCD98();
  v15 = v14;

  v16 = *(*(v2 + 32) + 32);
  sub_1AF448650(*(v2 + 24));
  sub_1AF442064(v16);

  v17 = *(*(v2 + 32) + 32);
  sub_1AF448650(*(v2 + 24));
  sub_1AF442064(v17);

  v18 = sub_1AF94B4E8(a1, v17);
  v20 = v19;
  sub_1AF445BE4(v17);
  MEMORY[0x1B2718AE0](40, 0xE100000000000000);
  MEMORY[0x1B2718AE0](v13, v15);

  MEMORY[0x1B2718AE0](41, 0xE100000000000000);
  v21 = sub_1AF9316FC(3174949, 0xE300000000000000, v16, v18, v20, a1);

  sub_1AF445BE4(v16);
  return v21;
}

uint64_t sub_1AF97E1F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = *(*(a2 + 32) + 32);
  sub_1AF448650(*(a2 + 24));
  sub_1AF442064(v11);

  v12 = sub_1AF9316FC(3174949, 0xE300000000000000, v11, a3, a4, a1);
  v14 = v13;
  sub_1AF445BE4(v11);
  sub_1AF97FB54(0, &qword_1EB638390, &type metadata for CodeEmitter.Code, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1AFE431C0;
  *(inited + 32) = v12;
  *(inited + 40) = v14;
  *(inited + 48) = 0;
  *(inited + 56) = 0;
  v16 = swift_initStackObject();
  *(v16 + 16) = xmmword_1AFE431C0;
  *(v16 + 32) = a5;
  *(v16 + 40) = a6;
  sub_1AF441DD8();
  *(v16 + 48) = 0;
  *(v16 + 56) = 0;
  v17 = swift_initStackObject();
  *(v17 + 16) = xmmword_1AFE4C680;
  *(v17 + 32) = inited;
  *(v17 + 40) = &unk_1F25050A0;
  *(v17 + 48) = v16;

  v18 = sub_1AFA56CA0(v17);
  swift_setDeallocating();
  sub_1AF97FB54(0, &unk_1ED723290, &type metadata for CodeEmitter.Code, MEMORY[0x1E69E62F8]);
  swift_arrayDestroy();
  return v18;
}

uint64_t sub_1AF97E3AC(unsigned int a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC3VFX12_ComposeNode_type);
  sub_1AF442064(v2);
  v3 = sub_1AF90DCF4(v2);
  v5 = v4;
  sub_1AF445BE4(v2);
  sub_1AF949EC8(v3, v5);
  if (v3)
  {
    v23 = MEMORY[0x1E69E7CC0];
    sub_1AFC05CE4(0, v3 & ~(v3 >> 63), 0);
    v6 = 0;
    do
    {
      v7 = sub_1AFDFEA08();
      MEMORY[0x1B2718AE0](v7);

      v8 = *(*(v21 + 32) + 8 * v6 + 32);
      sub_1AF448650(*(v21 + 24));
      sub_1AF442064(v8);

      v9 = *(*(v21 + 24) + 32);
      sub_1AF448650(*(v21 + 24));
      sub_1AF442064(v9);

      v10 = sub_1AF931868(v9, v6, a1);
      v12 = v11;
      sub_1AF445BE4(v9);
      MEMORY[0x1B2718AE0](v10, v12);

      v13 = sub_1AF9316FC(29221, 0xE200000000000000, v8, 12325, 0xE200000000000000, a1);
      v15 = v14;

      sub_1AF445BE4(v8);
      v17 = *(v23 + 16);
      v16 = *(v23 + 24);
      if (v17 >= v16 >> 1)
      {
        sub_1AFC05CE4(v16 > 1, v17 + 1, 1);
      }

      ++v6;
      *(v23 + 16) = v17 + 1;
      v18 = v23 + 16 * v17;
      *(v18 + 32) = v13;
      *(v18 + 40) = v15;
    }

    while (v3 != v6);
  }

  sub_1AF97FB54(0, &qword_1ED726C70, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
  sub_1AF488088();
  v19 = sub_1AFDFCD98();

  return v19;
}

uint64_t sub_1AF97E63C(uint64_t a1, unsigned int a2)
{
  v2 = *(*(a1 + 24) + 16);

  if (v2)
  {
    v4 = 0;
    v5 = v3 + 32;
    v6 = MEMORY[0x1E69E7CC0];
    do
    {
      v7 = *(v5 + 8 * v4);
      sub_1AF442064(v7);
      v8 = sub_1AF937FF8(a2, v7);
      if ((~v8 & 0xF000000000000007) == 0)
      {
        sub_1AF442064(v7);
        v8 = v7;
      }

      v9 = sub_1AF90F890(v8, 0xC000000000000018);
      sub_1AF445BE4(v8);
      v10 = (v9 & 1) == 0;
      if (v9)
      {
        v11 = 0;
      }

      else
      {
        v11 = 38;
      }

      if (v10)
      {
        v12 = 0xE100000000000000;
      }

      else
      {
        v12 = 0xE000000000000000;
      }

      sub_1AF9102F8(v7);
      v13 = sub_1AFDFEA08();
      MEMORY[0x1B2718AE0](v13);

      MEMORY[0x1B2718AE0](8236, 0xE200000000000000);
      MEMORY[0x1B2718AE0](v11, v12);

      MEMORY[0x1B2718AE0](37, 0xE100000000000000);
      v14 = sub_1AFDFEA08();
      MEMORY[0x1B2718AE0](v14);

      MEMORY[0x1B2718AE0](2915616, 0xE300000000000000);
      sub_1AF97FB54(0, &qword_1EB638390, &type metadata for CodeEmitter.Code, MEMORY[0x1E69E6F90]);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1AFE431C0;
      *(inited + 32) = 8315;
      *(inited + 40) = 0xE200000000000000;
      sub_1AF441DD8();
      *(inited + 48) = 0;
      *(inited + 56) = 0;
      v16 = swift_initStackObject();
      *(v16 + 16) = xmmword_1AFE431C0;
      *(v16 + 32) = inited;
      v17 = v16 + 32;
      v18 = sub_1AFA56CA0(v16);
      swift_setDeallocating();
      sub_1AF97FA74(v17, &unk_1ED723290, &type metadata for CodeEmitter.Code, MEMORY[0x1E69E62F8]);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v6 = sub_1AF426BC8(0, v6[2] + 1, 1, v6);
      }

      v20 = v6[2];
      v19 = v6[3];
      if (v20 >= v19 >> 1)
      {
        v6 = sub_1AF426BC8(v19 > 1, v20 + 1, 1, v6);
      }

      ++v4;
      sub_1AF445BE4(v7);
      v6[2] = v20 + 1;
      v6[v20 + 4] = v18;
    }

    while (v2 != v4);
  }

  else
  {
    v6 = MEMORY[0x1E69E7CC0];
  }

  v21 = sub_1AFA56CA0(v6);

  sub_1AF441DD8();
  v22 = swift_initStackObject();
  *(v22 + 16) = xmmword_1AFE431C0;
  *(v22 + 32) = v21;
  v23 = v22 + 32;
  v24 = sub_1AFA56CA0(v22);
  swift_setDeallocating();
  sub_1AF97FA74(v23, &unk_1ED723290, &type metadata for CodeEmitter.Code, MEMORY[0x1E69E62F8]);
  return v24;
}

uint64_t sub_1AF97E988(uint64_t a1, unsigned int a2)
{
  v3 = sub_1AF97E63C(a1, a2);
  sub_1AF441DD8();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1AFE431C0;
  *(inited + 32) = v3;
  v5 = inited + 32;
  v6 = sub_1AFA56CA0(inited);
  swift_setDeallocating();
  v7 = MEMORY[0x1E69E62F8];
  sub_1AF97FA74(v5, &unk_1ED723290, &type metadata for CodeEmitter.Code, MEMORY[0x1E69E62F8]);
  sub_1AFA5413C(v6);

  v8 = sub_1AFAF888C();
  v10 = v9;

  sub_1AF97FB54(0, &qword_1EB638390, &type metadata for CodeEmitter.Code, MEMORY[0x1E69E6F90]);
  v11 = swift_initStackObject();
  *(v11 + 16) = xmmword_1AFE431C0;
  *(v11 + 32) = v8;
  *(v11 + 40) = v10;
  *(v11 + 48) = 0;
  *(v11 + 56) = 0;
  v12 = swift_initStackObject();
  *(v12 + 16) = xmmword_1AFE4C680;
  *(v12 + 32) = &unk_1F2505878;
  *(v12 + 40) = v11;
  *(v12 + 48) = &unk_1F25058B8;
  v13 = sub_1AFA56CA0(v12);
  swift_setDeallocating();
  sub_1AF97FB54(0, &unk_1ED723290, &type metadata for CodeEmitter.Code, v7);
  swift_arrayDestroy();
  v14 = sub_1AFA5413C(v13);
  v16 = v15;

  sub_1AFA55CD0(0xD000000000000016, 0x80000001AFF3C8A0, 0, a1, v14, v16);
  v18 = v17;

  swift_bridgeObjectRelease_n();
  strcpy(v25, "void* %r0 = ");
  BYTE5(v25[1]) = 0;
  HIWORD(v25[1]) = -5120;
  MEMORY[0x1B2718AE0](0xD000000000000016, v18);

  MEMORY[0x1B2718AE0](59, 0xE100000000000000);

  v19 = v25[0];
  v20 = v25[1];
  v21 = swift_initStackObject();
  *(v21 + 16) = xmmword_1AFE431C0;
  *(v21 + 32) = v19;
  *(v21 + 40) = v20;
  *(v21 + 48) = 0;
  *(v21 + 56) = 0;
  v22 = swift_initStackObject();
  *(v22 + 16) = xmmword_1AFE4C680;
  *(v22 + 32) = v21;
  *(v22 + 40) = &unk_1F25058F8;
  *(v22 + 48) = &unk_1F2505938;
  v23 = sub_1AFA56CA0(v22);
  swift_setDeallocating();
  swift_arrayDestroy();
  return v23;
}

uint64_t sub_1AF97EC90(char a1)
{
  if (a1 == 3)
  {
    sub_1AFDFE218();
    MEMORY[0x1B2718AE0](0xD000000000000012, 0x80000001AFF3C850);
    v2 = *(*(v1 + 24) + 16);
    if (v2)
    {
      v14 = MEMORY[0x1E69E7CC0];
      sub_1AFC05CE4(0, v2, 0);
      v3 = 0;
      do
      {
        v4 = sub_1AFDFEA08();
        MEMORY[0x1B2718AE0](v4);

        v6 = *(v14 + 16);
        v5 = *(v14 + 24);
        if (v6 >= v5 >> 1)
        {
          sub_1AFC05CE4(v5 > 1, v6 + 1, 1);
        }

        ++v3;
        *(v14 + 16) = v6 + 1;
        v7 = v14 + 16 * v6;
        *(v7 + 32) = 37;
        *(v7 + 40) = 0xE100000000000000;
      }

      while (v2 != v3);
    }

    sub_1AF97FB54(0, &qword_1ED726C70, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
    sub_1AF488088();
    v11 = sub_1AFDFCD98();
    v13 = v12;

    MEMORY[0x1B2718AE0](v11, v13);

    MEMORY[0x1B2718AE0](0xD000000000000021, 0x80000001AFF3C870);
    return 0;
  }

  else
  {
    v8 = sub_1AF97E988(v1, a1);
    v9 = sub_1AFA5413C(v8);

    return v9;
  }
}

uint64_t sub_1AF97EEC4(uint64_t a1, unint64_t a2)
{
  v2 = sub_1AF9316FC(3240485, 0xE300000000000000, a2, 0x7865646E6924, 0xE600000000000000, a1);
  v4 = v3;
  sub_1AF97FB54(0, &qword_1EB638390, &type metadata for CodeEmitter.Code, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1AFE431C0;
  *(inited + 32) = v2;
  *(inited + 40) = v4;
  sub_1AF441DD8();
  *(inited + 48) = 0;
  *(inited + 56) = 0;
  v6 = swift_initStackObject();
  *(v6 + 16) = xmmword_1AFE4C620;
  *(v6 + 32) = inited;
  *(v6 + 40) = &unk_1F2505978;
  v7 = sub_1AFA56CA0(v6);
  swift_setDeallocating();
  sub_1AF97FB54(0, &unk_1ED723290, &type metadata for CodeEmitter.Code, MEMORY[0x1E69E62F8]);
  swift_arrayDestroy();
  return v7;
}

uint64_t sub_1AF97EFF0(uint64_t a1, char a2)
{
  v2 = *(a1 + OBJC_IVAR____TtC3VFX10SwitchNode_count);
  if (v2)
  {
    v42 = -v2;
    v3 = MEMORY[0x1E69E7CC0];
    v4 = 2;
    do
    {
      v5 = sub_1AFDFEA08();
      MEMORY[0x1B2718AE0](v5);

      v6 = *(a1 + 24);
      v7 = *(v6 + 40);
      sub_1AF448650(v6);
      sub_1AF442064(v7);

      v8 = sub_1AF9314CC(12581, 0xE200000000000000, 37, 0xE100000000000000, v7, a2);
      v10 = v9;

      sub_1AF445BE4(v7);
      sub_1AFDFE218();

      MEMORY[0x1B2718AE0](v8, v10);

      MEMORY[0x1B2718AE0](8069161, 0xE300000000000000);
      sub_1AF97FB54(0, &qword_1EB638390, &type metadata for CodeEmitter.Code, MEMORY[0x1E69E6F90]);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1AFE431C0;
      *(inited + 32) = 0x692065736C65207DLL;
      *(inited + 40) = 0xEB00000000282066;
      *(inited + 48) = 0;
      *(inited + 56) = 0;
      v12 = sub_1AFDFEA08();
      MEMORY[0x1B2718AE0](v12);

      v13 = swift_initStackObject();
      *(v13 + 16) = xmmword_1AFE431C0;
      *(v13 + 32) = 0x776F6C6625;
      *(v13 + 40) = 0xE500000000000000;
      sub_1AF441DD8();
      *(v13 + 48) = 0;
      *(v13 + 56) = 0;
      v14 = swift_initStackObject();
      *(v14 + 16) = xmmword_1AFE431C0;
      *(v14 + 32) = v13;
      v15 = v14 + 32;
      v16 = sub_1AFA56CA0(v14);
      swift_setDeallocating();
      v17 = MEMORY[0x1E69E62F8];
      sub_1AF97FA74(v15, &unk_1ED723290, &type metadata for CodeEmitter.Code, MEMORY[0x1E69E62F8]);
      v18 = swift_initStackObject();
      *(v18 + 16) = xmmword_1AFE431C0;
      *(v18 + 32) = v16;
      v19 = v18 + 32;
      v20 = sub_1AFA56CA0(v18);
      swift_setDeallocating();
      sub_1AF97FA74(v19, &unk_1ED723290, &type metadata for CodeEmitter.Code, v17);
      sub_1AFA5413C(v20);

      v21 = sub_1AFAF888C();
      v23 = v22;

      v24 = swift_initStackObject();
      *(v24 + 16) = xmmword_1AFE431C0;
      *(v24 + 32) = v21;
      *(v24 + 40) = v23;
      *(v24 + 48) = 0;
      *(v24 + 56) = 0;
      v25 = swift_initStackObject();
      *(v25 + 16) = xmmword_1AFE4C620;
      *(v25 + 32) = inited;
      *(v25 + 40) = v24;
      v26 = sub_1AFA56CA0(v25);
      swift_setDeallocating();
      sub_1AF97FB54(0, &unk_1ED723290, &type metadata for CodeEmitter.Code, v17);
      swift_arrayDestroy();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v3 = sub_1AF426BC8(0, v3[2] + 1, 1, v3);
      }

      v28 = v3[2];
      v27 = v3[3];
      if (v28 >= v27 >> 1)
      {
        v3 = sub_1AF426BC8(v27 > 1, v28 + 1, 1, v3);
      }

      v3[2] = v28 + 1;
      v3[v28 + 4] = v26;
      ++v4;
    }

    while (v42 + v4 != 2);
  }

  else
  {
    v3 = MEMORY[0x1E69E7CC0];
  }

  v29 = sub_1AFA56CA0(v3);

  v30 = sub_1AF97B348();
  sub_1AF441DD8();
  v31 = swift_initStackObject();
  *(v31 + 16) = xmmword_1AFE431C0;
  *(v31 + 32) = v30;
  v32 = v31 + 32;
  v33 = sub_1AFA56CA0(v31);
  swift_setDeallocating();
  v34 = MEMORY[0x1E69E62F8];
  sub_1AF97FA74(v32, &unk_1ED723290, &type metadata for CodeEmitter.Code, MEMORY[0x1E69E62F8]);
  sub_1AFA5413C(v33);

  v35 = sub_1AFAF888C();
  v37 = v36;

  sub_1AF97FB54(0, &qword_1EB638390, &type metadata for CodeEmitter.Code, MEMORY[0x1E69E6F90]);
  v38 = swift_initStackObject();
  *(v38 + 16) = xmmword_1AFE431C0;
  *(v38 + 32) = v35;
  *(v38 + 40) = v37;
  *(v38 + 48) = 0;
  *(v38 + 56) = 0;
  v39 = swift_initStackObject();
  *(v39 + 32) = &unk_1F25059F8;
  *(v39 + 16) = xmmword_1AFE86410;
  *(v39 + 40) = v29;
  *(v39 + 48) = &unk_1F2505A38;
  *(v39 + 56) = v38;
  *(v39 + 64) = &unk_1F2505A78;
  *(v39 + 72) = &unk_1F2505AB8;
  v40 = sub_1AFA56CA0(v39);
  swift_setDeallocating();
  sub_1AF97FB54(0, &unk_1ED723290, &type metadata for CodeEmitter.Code, v34);
  swift_arrayDestroy();
  return v40;
}

uint64_t sub_1AF97F5D4(uint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v7 = sub_1AF9316FC(3306021, 0xE300000000000000, a2, 0x7865646E6924, 0xE600000000000000, a1);
  v9 = v8;
  sub_1AF97FB54(0, &qword_1EB638390, &type metadata for CodeEmitter.Code, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1AFE431C0;
  *(inited + 32) = v7;
  *(inited + 40) = v9;
  *(inited + 48) = 0;
  *(inited + 56) = 0;
  v11 = sub_1AF97358C(12837, 0xE200000000000000, 0x7865646E6924, 0xE600000000000000, a4, a1);
  v13 = sub_1AF9316FC(3240485, 0xE300000000000000, a3, v11, v12, a1);
  v15 = v14;

  v16 = swift_initStackObject();
  *(v16 + 16) = xmmword_1AFE431C0;
  *(v16 + 32) = v13;
  *(v16 + 40) = v15;
  sub_1AF441DD8();
  *(v16 + 48) = 0;
  *(v16 + 56) = 0;
  v17 = swift_initStackObject();
  *(v17 + 16) = xmmword_1AFE4C680;
  *(v17 + 32) = inited;
  *(v17 + 40) = v16;
  *(v17 + 48) = &unk_1F2505AF8;
  v18 = sub_1AFA56CA0(v17);
  swift_setDeallocating();
  sub_1AF97FB54(0, &unk_1ED723290, &type metadata for CodeEmitter.Code, MEMORY[0x1E69E62F8]);
  swift_arrayDestroy();
  return v18;
}

uint64_t sub_1AF97F7A4(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 == 3)
  {
    v6 = sub_1AFA56CA0(a2);
    sub_1AF97FA74(a3, &unk_1ED723290, &type metadata for CodeEmitter.Code, MEMORY[0x1E69E62F8]);
  }

  else
  {
    v6 = MEMORY[0x1E69E7CC0];
  }

  sub_1AF441DD8();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1AFE4C620;
  *(inited + 32) = v6;
  *(inited + 40) = a4;
  v8 = sub_1AFA56CA0(inited);
  swift_setDeallocating();
  sub_1AF97FB54(0, &unk_1ED723290, &type metadata for CodeEmitter.Code, MEMORY[0x1E69E62F8]);
  swift_arrayDestroy();
  return v8;
}

uint64_t sub_1AF97F8A4(uint64_t a1)
{
  sub_1AF97F900();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1AF97F900()
{
  if (!qword_1EB641070)
  {
    sub_1AF5C5358(255, &qword_1EB641060);
    v0 = sub_1AFDFDD58();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB641070);
    }
  }
}

uint64_t sub_1AF97F968(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1AF97FB54(255, &qword_1ED726C70, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}