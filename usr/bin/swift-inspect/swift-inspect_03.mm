uint64_t (*Flag<A>.init(wrappedValue:name:inversion:exclusivity:help:)(uint64_t a1, char a2, char a3, uint64_t a4))(uint64_t, unint64_t, uint64_t)
{
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2 & 1;
  *(v8 + 25) = a3;
  v9 = *(a4 + 16);
  *(v8 + 32) = *a4;
  *(v8 + 48) = v9;
  *(v8 + 64) = *(a4 + 32);
  *(v8 + 80) = *(a4 + 48);
  return sub_100039A74;
}

uint64_t (*Flag<A>.init(wrappedValue:name:help:)(char a1, uint64_t a2, uint64_t a3))(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a2;
  *(v6 + 24) = a1;
  v7 = *(a3 + 16);
  *(v6 + 32) = *a3;
  *(v6 + 48) = v7;
  *(v6 + 64) = *(a3 + 32);
  *(v6 + 80) = *(a3 + 48);
  return sub_100035320;
}

uint64_t sub_100035330(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, char a5, char a6, char a7, uint64_t *a8)
{
  v15 = a8[2];
  v14 = a8[3];
  v59 = a8[4];
  v68 = a8[5];
  v70 = *(a8 + 48);
  v62 = a5 != 2;
  if (a6)
  {
    v16 = sub_10003A2B8(0x656C62616E65, 0xE600000000000000, 1, a4, a1, a2, a3);
    v17 = 0x656C6261736964;
    v18 = 0xE700000000000000;
  }

  else
  {
    v16 = sub_10003B384(a1, a2, a4);
    v17 = 28526;
    v18 = 0xE200000000000000;
  }

  v19 = sub_10003A2B8(v17, v18, 0, a4, a1, a2, a3);
  v69 = v14;
  v66 = v19;
  v64 = v16;
  v63 = a5;
  if (a5 == 2 || ((a5 & 1) == 0 ? (v20 = v19) : (v20 = v16), !*(v20 + 2)))
  {
    v61 = 0;
    v60 = 0;
  }

  else
  {
    v21 = *(v20 + 4);
    v22 = *(v20 + 5);
    v23 = v15;
    v24 = v20[48];
    sub_10002BB8C(v21, v22, v20[48]);
    v61 = sub_100068E38(v21, v22, v24);
    v60 = v25;
    v26 = v24;
    v15 = v23;
    sub_100028AE8(v21, v22, v26);
  }

  sub_1000021C0(&qword_1000B5210, &unk_100092A40);
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_10008E640;
  *(v27 + 32) = a1;
  *(v27 + 40) = a2;
  *(v27 + 48) = a3;
  v28 = a8[1];
  v65 = a1;
  v58 = v15;
  if (v28)
  {
    v57 = *a8;
    v110[0] = *a8;
    v110[1] = v28;
    if (v68)
    {
      sub_100039960(v110, v99);

      v29 = v28;
      v30 = v15;
      v31 = a2;
      v32 = v69;
      v33 = v59;
      v34 = v68;
      v35 = v70;
      v36 = v57;
      goto LABEL_17;
    }

    v30 = v15;
    v31 = a2;
    sub_100039960(v110, v99);
    v32 = v69;

    v35 = v70;
    v29 = v28;
    v36 = v57;
  }

  else
  {
    v31 = a2;
    v35 = 0;
    v36 = 0;
    v30 = 0;
    v29 = 0xE000000000000000;
    v32 = 0xE000000000000000;
  }

  v33 = 0;
  v34 = 0xE000000000000000;
LABEL_17:
  *&v91 = v62;
  *(&v91 + 1) = v61;
  *&v92 = v60;
  *(&v92 + 1) = v27;
  *&v93 = _swiftEmptyArrayStorage;
  BYTE8(v93) = 1;
  *&v94 = v36;
  *(&v94 + 1) = v29;
  *&v95 = v30;
  *(&v95 + 1) = v32;
  *&v96 = v33;
  *(&v96 + 1) = v34;
  LOBYTE(v97) = v35;
  *(&v97 + 1) = 0;
  v98 = 0xE000000000000000;
  v99[0] = v62;
  v99[1] = v61;
  v99[2] = v60;
  v99[3] = v27;
  v99[4] = _swiftEmptyArrayStorage;
  v100 = 1;
  v101 = v36;
  v102 = v29;
  v103 = v30;
  v104 = v32;
  v105 = v33;
  v106 = v34;
  v107 = v35;
  v108 = 0;
  v109 = 0xE000000000000000;
  sub_10002F094(&v91, v80);
  sub_10002F0F0(v99);
  v37 = swift_allocObject();
  *(v37 + 16) = xmmword_10008E640;
  *(v37 + 32) = v65;
  *(v37 + 40) = v31;
  *(v37 + 48) = a3;
  if (v28)
  {
    v38 = *a8;
    v111[0] = *a8;
    v111[1] = v28;
    v39 = v68;
    sub_100039960(v111, v80);
    v40 = v69;

    if (v68)
    {

      v41 = v58;
      v42 = v59;
    }

    else
    {
      v42 = 0;
      v39 = 0xE000000000000000;
      v41 = v58;
    }

    v43 = v70;
  }

  else
  {
    v38 = 0;
    v41 = 0;
    v42 = 0;
    v43 = 0;
    v28 = 0xE000000000000000;
    v40 = 0xE000000000000000;
    v39 = 0xE000000000000000;
  }

  v72 = 1uLL;
  *&v73 = 0;
  *(&v73 + 1) = v37;
  *&v74 = _swiftEmptyArrayStorage;
  BYTE8(v74) = 0;
  *&v75 = v38;
  *(&v75 + 1) = v28;
  *&v76 = v41;
  *(&v76 + 1) = v40;
  *&v77 = v42;
  *(&v77 + 1) = v39;
  LOBYTE(v78) = v43;
  *(&v78 + 1) = 0;
  v79 = 0xE000000000000000;
  v80[0] = 1;
  v80[1] = 0;
  v80[2] = 0;
  v80[3] = v37;
  v80[4] = _swiftEmptyArrayStorage;
  v81 = 0;
  v82 = v38;
  v83 = v28;
  v84 = v41;
  v85 = v40;
  v86 = v42;
  v87 = v39;
  v88 = v43;
  v89 = 0;
  v90 = 0xE000000000000000;

  sub_10002F094(&v72, v71);
  sub_10002F0F0(v80);
  v44 = swift_allocObject();
  *(v44 + 16) = v65;
  *(v44 + 24) = v31;
  *(v44 + 32) = a3;
  *(v44 + 40) = a7;
  v45 = swift_allocObject();
  *(v45 + 16) = v63;
  *(v45 + 24) = v65;
  *(v45 + 32) = v31;
  *(v45 + 40) = a3;
  v46 = swift_allocObject();
  *(v46 + 16) = v65;
  *(v46 + 24) = v31;
  *(v46 + 32) = a3;
  *(v46 + 40) = a7;
  sub_1000021C0(&qword_1000B52F8, &qword_1000924C0);
  v47 = swift_allocObject();
  *(v47 + 16) = xmmword_10008F240;
  *(v47 + 32) = v64;
  v48 = v96;
  *(v47 + 104) = v95;
  *(v47 + 120) = v48;
  *(v47 + 136) = v97;
  v49 = v98;
  v50 = v92;
  *(v47 + 40) = v91;
  *(v47 + 56) = v50;
  v51 = v94;
  *(v47 + 72) = v93;
  *(v47 + 88) = v51;
  *(v47 + 160) = 0;
  *(v47 + 168) = 0;
  *(v47 + 152) = v49;
  *(v47 + 176) = 4;
  *(v47 + 184) = sub_1000398D8;
  *(v47 + 192) = v44;
  *(v47 + 200) = 0;
  *(v47 + 208) = sub_10003990C;
  *(v47 + 216) = v45;
  *(v47 + 224) = v66;
  v52 = v72;
  *(v47 + 248) = v73;
  *(v47 + 232) = v52;
  v53 = v79;
  v54 = v78;
  *(v47 + 312) = v77;
  *(v47 + 328) = v54;
  v55 = v76;
  *(v47 + 280) = v75;
  *(v47 + 296) = v55;
  *(v47 + 264) = v74;
  *(v47 + 352) = 0;
  *(v47 + 360) = 0;
  *(v47 + 344) = v53;
  *(v47 + 368) = 4;
  *(v47 + 376) = sub_100039930;
  *(v47 + 384) = v46;
  *(v47 + 392) = 0;
  *(v47 + 400) = String.init(argument:);
  *(v47 + 408) = 0;
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();
  return sub_100072F04(v47);
}

uint64_t (*Flag<A>.init(wrappedValue:name:inversion:exclusivity:help:)(char a1, uint64_t a2, char a3, char a4, uint64_t a5))()
{
  v10 = swift_allocObject();
  *(v10 + 16) = a2;
  *(v10 + 24) = a1;
  *(v10 + 25) = a3 & 1;
  *(v10 + 26) = a4;
  v11 = *(a5 + 16);
  *(v10 + 32) = *a5;
  *(v10 + 48) = v11;
  *(v10 + 64) = *(a5 + 32);
  *(v10 + 80) = *(a5 + 48);
  return sub_1000359CC;
}

uint64_t (*Flag<A>.init(name:inversion:exclusivity:help:)(uint64_t a1, char a2, char a3, uint64_t a4))()
{
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = 2;
  *(v8 + 25) = a2 & 1;
  *(v8 + 26) = a3;
  v9 = *(a4 + 16);
  *(v8 + 32) = *a4;
  *(v8 + 48) = v9;
  *(v8 + 64) = *(a4 + 32);
  *(v8 + 80) = *(a4 + 48);
  return sub_100039A3C;
}

uint64_t sub_100035A64()
{
  v1 = v0[2];

  if (v0[5])
  {

    v2 = v0[7];

    v3 = v0[9];
  }

  return _swift_deallocObject(v0, 81, 7);
}

uint64_t (*Flag<A>.init(name:help:)(uint64_t a1, uint64_t a2))(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v4 = swift_allocObject();
  v5 = *(a2 + 16);
  *(v4 + 24) = *a2;
  *(v4 + 16) = a1;
  *(v4 + 40) = v5;
  *(v4 + 56) = *(a2 + 32);
  *(v4 + 72) = *(a2 + 48);
  return sub_100035B98;
}

uint64_t sub_100035B44()
{
  v1 = v0[2];

  if (v0[4])
  {

    v2 = v0[6];

    v3 = v0[8];
  }

  return _swift_deallocObject(v0, 73, 7);
}

uint64_t sub_100035BA4@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v23 = a5;
  v24 = a1;
  v25 = a2;
  v26 = a6;
  v8 = type metadata accessor for Parsed();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin();
  v12 = (&v23 - v11);
  v13 = type metadata accessor for Optional();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v16 = (*(v14 + 64) + v15 + 7) & 0xFFFFFFFFFFFFFFF8;
  v17 = swift_allocObject();
  v19 = v23;
  v18 = v24;
  *(v17 + 16) = a4;
  *(v17 + 24) = v19;
  (*(v14 + 32))(v17 + v15, v18, v13);
  v20 = v17 + v16;
  v21 = *(a3 + 16);
  *v20 = *a3;
  *(v20 + 16) = v21;
  *(v20 + 32) = *(a3 + 32);
  *(v20 + 48) = *(a3 + 48);
  *(v20 + 49) = v25;
  sub_10006A034(sub_1000394BC, v17, v12);
  return (*(v9 + 32))(v26, v12, v8);
}

uint64_t sub_100035D7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8)
{
  v52 = a6;
  v51 = a5;
  v57 = a4;
  v13 = *(a8 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v45 = *(AssociatedConformanceWitness + 8);
  v56 = type metadata accessor for EnumeratedSequence();
  v54 = *(v56 - 8);
  v16 = *(v54 + 64);
  __chkstk_darwin();
  v53 = &v42 - v17;
  v18 = *(AssociatedTypeWitness - 8);
  v19 = *(v18 + 64);
  __chkstk_darwin();
  v21 = &v42 - v20;
  v62 = a7;
  v63 = a8;
  v48 = a1;
  v64 = a1;
  v65 = a2;
  v49 = a2;
  v50 = a3;
  v66 = a3;
  type metadata accessor for Optional();
  sub_100034328(sub_10003958C, v61, &type metadata for Never, &type metadata for String, v22, v68);
  v43 = v68[0];
  v44 = v68[1];
  v46 = v13;
  dispatch thunk of static CaseIterable.allCases.getter();
  v59 = a7;
  v60 = a8;
  v55 = a8;
  v23 = sub_1000021C0(&qword_1000B52F0, qword_100091640);
  v47 = AssociatedConformanceWitness;
  v25 = sub_1000446D4(sub_100039A44, v58, AssociatedTypeWitness, v23, &type metadata for Never, AssociatedConformanceWitness, &protocol witness table for Never, v24);
  v26 = *(v18 + 8);
  v26(v21, AssociatedTypeWitness);
  v27 = *(v25 + 16) + 1;
  v28 = 40;
  do
  {
    if (!--v27)
    {
      break;
    }

    v29 = *(v25 + v28);
    v28 += 56;
  }

  while (!v29);
  v30 = v27 != 0;
  dispatch thunk of static CaseIterable.allCases.getter();
  v31 = v53;
  Sequence.enumerated()();
  v26(v21, AssociatedTypeWitness);
  __chkstk_darwin();
  v32 = v55;
  *(&v42 - 12) = a7;
  *(&v42 - 11) = v32;
  v33 = v49;
  *(&v42 - 10) = v48;
  *(&v42 - 9) = v33;
  *(&v42 - 8) = v50;
  *(&v42 - 7) = v25;
  *(&v42 - 6) = v51;
  *(&v42 - 40) = v30;
  v34 = v43;
  *(&v42 - 4) = v57;
  *(&v42 - 3) = v34;
  *(&v42 - 2) = v44;
  *(&v42 - 8) = v52;
  __chkstk_darwin();
  *(&v42 - 4) = a7;
  *(&v42 - 3) = v35;
  *(&v42 - 2) = sub_100039628;
  *(&v42 - 1) = v36;
  v67 = v47;
  v37 = v56;
  WitnessTable = swift_getWitnessTable();
  v40 = sub_1000446D4(sub_100039A5C, (&v42 - 6), v37, &type metadata for ArgumentDefinition, &type metadata for Never, WitnessTable, &protocol witness table for Never, v39);

  (*(v54 + 8))(v31, v37);
  return sub_100072F04(v40);
}

uint64_t sub_100036214@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t *a6@<X8>)
{
  v12 = *(*(a4 - 8) + 64);
  __chkstk_darwin();
  (*(v14 + 16))(&v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v15);
  v16 = String.init<A>(describing:)();
  v18 = v17;

  v19 = sub_1000681D4(v16, v18, a2, a3);
  v21 = v20;
  v22 = (*(a5 + 24))(a1, a4, a5);
  v23 = sub_10003B384(v19, v21, v22);

  if (*(v23 + 2))
  {
    v24 = *(v23 + 4);
    v25 = *(v23 + 5);
    v26 = v23[48];
    sub_10002BB8C(v24, v25, v23[48]);

    v27 = sub_100068E38(v24, v25, v26);
    v29 = v28;
    result = sub_100028AE8(v24, v25, v26);
  }

  else
  {

    v27 = 0;
    v29 = 0;
  }

  *a6 = v27;
  a6[1] = v29;
  return result;
}

uint64_t sub_100036400@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X5>, uint64_t a7@<X6>, int a8@<W7>, _OWORD *a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, unsigned __int8 a13, uint64_t a14, uint64_t a15)
{
  v156 = a8;
  v160 = a3;
  v161 = a6;
  v142 = a9;
  v20 = *(a7 + 8);
  v149 = *a7;
  v143 = v20;
  v21 = *(a7 + 24);
  v139 = *(a7 + 16);
  v134 = v21;
  v22 = *(a7 + 32);
  v128 = *(a7 + 40);
  v129 = v22;
  LODWORD(v127) = *(a7 + 48);
  v23 = type metadata accessor for Optional();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v126 = *(TupleTypeMetadata2 - 8);
  v24 = *(v126 + 64);
  __chkstk_darwin();
  v130 = &v121 - v25;
  v146 = v23;
  v140 = *(v23 - 8);
  v26 = v140[8];
  __chkstk_darwin();
  v125 = &v121 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v150 = &v121 - v28;
  v29 = *(*(a14 - 8) + 64);
  __chkstk_darwin();
  v141 = v30;
  v31 = &v121 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v157 = v32;
  v151 = *(v32 + 16);
  v152 = v32 + 16;
  v151(v31, a2, a14);
  v144 = v31;
  v33 = String.init<A>(describing:)();
  v35 = v34;

  v159 = a4;
  v155 = a5;
  v36 = sub_1000681D4(v33, v35, v160, a4);
  v38 = v37;
  v40 = v39;
  v41 = *(a15 + 24);
  v153 = a2;
  v158 = a14;
  v145 = a15;
  result = v41(a2, a14, a15);
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*(v161 + 2) > a1)
  {
    v136 = result;
    v137 = v36;
    v43 = a12;
    v44 = &v161[56 * a1];
    v45 = *(v44 + 4);
    v46 = *(v44 + 5);
    v47 = *(v44 + 6);
    v48 = *(v44 + 7);
    v49 = *(v44 + 8);
    v50 = *(v44 + 9);
    v135 = v45;
    v154 = v46;
    v161 = v47;
    v51 = v44[80];
    v52 = v48;
    v53 = v49;
    v147 = a11;
    v148 = v50;
    v54 = v51;
    if (!v46)
    {
      v131 = v47;
      v132 = v48;
      v55 = v40;
      v56 = v45;
      v57 = v49;
      v58 = v51;
      sub_10002600C(a7, v173, &qword_1000B52F0, qword_100091640);
      v45 = v56;
      v40 = v55;
      v43 = a12;
      v46 = 0;
      v47 = v131;
      v48 = v132;
      v51 = v58;
      v49 = v57;
      v135 = v149;
      v154 = v143;
      v161 = v139;
      v52 = v134;
      v53 = v129;
      v148 = v128;
      v54 = v127;
    }

    v143 = v52;
    v129 = v53;
    LODWORD(v134) = v54;
    v139 = v38;
    v59 = a10;
    v60 = v158;
    v61 = v150;
    v138 = v40;
    v149 = a10;
    if (v156)
    {
      v121 = v43;
      v122 = v45;
      v131 = v47;
      v132 = v48;
      v123 = v51;
      v124 = v49;
      v127 = v50;
      v151(v150, v153, v158);
      v62 = v157;
      (*(v157 + 56))(v61, 0, 1, v60);
      v63 = v60;
      v64 = *(TupleTypeMetadata2 + 48);
      v65 = v61;
      v66 = v140[2];
      v67 = v130;
      v68 = v146;
      v66(v130, v65, v146);
      v128 = v64;
      v69 = &v67[v64];
      v60 = v63;
      v66(v69, a10, v68);
      v70 = *(v62 + 48);
      if (v70(v67, 1, v63) == 1)
      {
        sub_10003972C(v122, v46);
        v71 = v140[1];
        v72 = v146;
        v71(v150, v146);
        v73 = v70(&v67[v128], 1, v63);
        v74 = v155;
        v75 = v72;
        v76 = v70;
        if (v73 == 1)
        {
          v71(v67, v75);
          v59 = v149;
          v77 = v161;
          goto LABEL_25;
        }
      }

      else
      {
        v78 = v125;
        v66(v125, v67, v146);
        v79 = v128;
        v76 = v70;
        if (v70(&v67[v128], 1, v60) != 1)
        {
          TupleTypeMetadata2 = v70;
          v112 = v157;
          v113 = &v67[v79];
          v114 = v144;
          (*(v157 + 32))(v144, v113, v60);
          sub_10003972C(v122, v46);
          v115 = *(v145 + 16);
          v116 = dispatch thunk of static Equatable.== infix(_:_:)();
          v60 = v158;
          v117 = v116;
          v118 = *(v112 + 8);
          v118(v114, v158);
          v119 = v140[1];
          v120 = v146;
          v119(v150, v146);
          v118(v78, v60);
          v76 = TupleTypeMetadata2;
          v119(v130, v120);
          v74 = v155;
          v59 = v149;
          v77 = v161;
          if ((v117 & 1) == 0)
          {
            v147 = 0;
            v43 = 0;
LABEL_14:
            LODWORD(v150) = a13;
            LODWORD(v146) = v76(v59, 1, v60);
            sub_1000021C0(&qword_1000B5210, &unk_100092A40);
            v80 = swift_allocObject();
            *(v80 + 16) = xmmword_10008E640;
            v81 = v159;
            *(v80 + 32) = v160;
            *(v80 + 40) = v81;
            *(v80 + 48) = v74;
            v82 = v154;
            if (v154)
            {
              v161 = v77;
              v83 = v43;
              v84 = v148;
              if (v148)
              {

                v85 = v143;

                v86 = v82;
                v87 = v85;
                v88 = v84;
                v89 = v135;
                v90 = v129;
                goto LABEL_21;
              }

              v87 = v143;

              v86 = v82;
              v89 = v135;
            }

            else
            {
              v83 = v43;
              v89 = 0;
              v161 = 0;
              v86 = 0xE000000000000000;
              v87 = 0xE000000000000000;
            }

            v90 = 0;
            if (!v82)
            {
              v91 = 0;
              v88 = 0xE000000000000000;
              goto LABEL_23;
            }

            v88 = 0xE000000000000000;
LABEL_21:

            v91 = v134;
LABEL_23:
            v174[0] = v146 != 1;
            v174[1] = v147;
            v174[2] = v83;
            v174[3] = v80;
            v174[4] = _swiftEmptyArrayStorage;
            v175 = (v156 & 1) == 0;
            v176 = v89;
            v177 = v86;
            v178 = v161;
            v179 = v87;
            v180 = v90;
            v181 = v88;
            v182 = v91;
            v183 = 0;
            v184 = 0xE000000000000000;
            v162[0] = v174[0];
            v162[1] = v147;
            v162[2] = v83;
            v162[3] = v80;
            v162[4] = _swiftEmptyArrayStorage;
            v163 = v175;
            v164 = v89;
            v165 = v86;
            v166 = v161;
            v167 = v87;
            v168 = v90;
            v169 = v88;
            v170 = v91;
            v171 = 0;
            v172 = 0xE000000000000000;
            sub_10002F094(v174, v173);
            sub_10002F0F0(v162);
            v92 = v144;
            v93 = v158;
            v151(v144, v153, v158);
            v94 = v157;
            v95 = (*(v157 + 80) + 56) & ~*(v157 + 80);
            v96 = v95 + v141;
            v97 = swift_allocObject();
            v98 = v145;
            *(v97 + 2) = v93;
            *(v97 + 3) = v98;
            v99 = v159;
            v100 = v160;
            *(v97 + 4) = v160;
            *(v97 + 5) = v99;
            v101 = v155;
            *(v97 + 6) = v155;
            (*(v94 + 32))(&v97[v95], v92, v93);
            v97[v96] = v150;

            sub_100038DAC(v136, v100, v99, v101, v137, v139, v174, 0, v173, v149, sub_100039A9C, v97, 0, v93);

            sub_10002F0F0(v174);

            v102 = v173[9];
            v103 = v173[10];
            v104 = v173[7];
            v105 = v142;
            v142[8] = v173[8];
            v105[9] = v102;
            v106 = v173[11];
            v105[10] = v103;
            v105[11] = v106;
            v107 = v173[5];
            v108 = v173[6];
            v109 = v173[3];
            v105[4] = v173[4];
            v105[5] = v107;
            v105[6] = v108;
            v105[7] = v104;
            v110 = v173[1];
            v111 = v173[2];
            *v105 = v173[0];
            v105[1] = v110;
            v105[2] = v111;
            v105[3] = v109;
            return result;
          }

LABEL_25:
          v43 = v121;

          goto LABEL_14;
        }

        sub_10003972C(v122, v46);
        (v140[1])(v150, v146);
        (*(v157 + 8))(v78, v60);
        v74 = v155;
      }

      (*(v126 + 8))(v67, TupleTypeMetadata2);
      v147 = 0;
      v43 = 0;
      v59 = v149;
    }

    else
    {
      sub_10003972C(v45, v46);
      v76 = *(v157 + 48);

      v74 = v155;
    }

    v77 = v161;
    goto LABEL_14;
  }

  __break(1u);
  return result;
}

uint64_t Flag<A>.init(wrappedValue:exclusivity:help:)@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v12 = *(*(type metadata accessor for Optional() - 8) + 64);
  __chkstk_darwin();
  v14 = &v17 - v13;
  v15 = *(a4 - 8);
  (*(v15 + 16))(&v17 - v13, a1, a4);
  (*(v15 + 56))(v14, 0, 1, a4);
  sub_100035BA4(v14, a2, a3, a4, a5, a6);
  return (*(v15 + 8))(a1, a4);
}

uint64_t Flag<A>.init(exclusivity:help:)@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = *(*(type metadata accessor for Optional() - 8) + 64);
  __chkstk_darwin();
  v12 = &v14 - v11;
  (*(*(a3 - 8) + 56))(&v14 - v11, 1, 1, a3);
  return sub_100035BA4(v12, a1, a2, a3, a4, a5);
}

uint64_t Flag.init<A>(exclusivity:help:)@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  type metadata accessor for Optional();
  v10 = type metadata accessor for Parsed();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin();
  v14 = (&v18 - v13);
  v15 = swift_allocObject();
  *(v15 + 16) = a3;
  *(v15 + 24) = a4;
  v16 = *(a2 + 16);
  *(v15 + 32) = *a2;
  *(v15 + 48) = v16;
  *(v15 + 64) = *(a2 + 32);
  *(v15 + 80) = *(a2 + 48);
  *(v15 + 81) = a1;
  sub_10006A034(sub_1000375B4, v15, v14);
  return (*(v11 + 32))(a5, v14, v10);
}

uint64_t sub_1000371B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7)
{
  v44 = a5;
  v43 = a4;
  v40 = a2;
  v41 = a3;
  v39 = a1;
  v9 = *(a7 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v37[1] = *(AssociatedConformanceWitness + 8);
  v47 = type metadata accessor for EnumeratedSequence();
  v45 = *(v47 - 8);
  v12 = *(v45 + 64);
  __chkstk_darwin();
  v42 = v37 - v13;
  v14 = *(AssociatedTypeWitness - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin();
  v17 = v37 - v16;
  dispatch thunk of static CaseIterable.allCases.getter();
  v49 = a6;
  v50 = a7;
  v46 = a7;
  v18 = sub_1000021C0(&qword_1000B52F0, qword_100091640);
  v38 = AssociatedConformanceWitness;
  v20 = sub_1000446D4(sub_1000392FC, v48, AssociatedTypeWitness, v18, &type metadata for Never, AssociatedConformanceWitness, &protocol witness table for Never, v19);
  v21 = *(v14 + 8);
  v21(v17, AssociatedTypeWitness);
  v22 = *(v20 + 16) + 1;
  v23 = 40;
  do
  {
    if (!--v22)
    {
      break;
    }

    v24 = *(v20 + v23);
    v23 += 56;
  }

  while (!v24);
  v25 = v22 != 0;
  dispatch thunk of static CaseIterable.allCases.getter();
  v26 = v42;
  Sequence.enumerated()();
  v21(v17, AssociatedTypeWitness);
  __chkstk_darwin();
  v27 = v46;
  v37[-10] = a6;
  v37[-9] = v27;
  v28 = v40;
  v37[-8] = v39;
  v37[-7] = v28;
  v37[-6] = v41;
  LOBYTE(v37[-5]) = v25;
  v29 = v43;
  v37[-4] = v20;
  v37[-3] = v29;
  LOBYTE(v37[-2]) = v44;
  __chkstk_darwin();
  v37[-4] = a6;
  v37[-3] = v30;
  v37[-2] = sub_100039314;
  v37[-1] = v31;
  v51 = v38;
  v32 = v47;
  WitnessTable = swift_getWitnessTable();
  v35 = sub_1000446D4(sub_100039A5C, &v37[-6], v32, &type metadata for ArgumentDefinition, &type metadata for Never, WitnessTable, &protocol witness table for Never, v34);

  (*(v45 + 8))(v26, v32);
  return sub_100072F04(v35);
}

uint64_t sub_100037568()
{
  if (v0[5])
  {

    v1 = v0[7];

    v2 = v0[9];
  }

  return _swift_deallocObject(v0, 82, 7);
}

uint64_t sub_1000375C4@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, int a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X7>, _OWORD *a9@<X8>, unsigned __int8 a10, uint64_t a11, uint64_t a12)
{
  v77 = a7;
  v78 = a1;
  v104 = a6;
  v92 = a9;
  v17 = *a8;
  v18 = *(a8 + 8);
  v19 = *(a8 + 24);
  v99 = *(a8 + 16);
  v100 = v17;
  v98 = v19;
  v20 = *(a8 + 40);
  v79 = *(a8 + 32);
  v80 = v18;
  v97 = v20;
  v101 = *(a8 + 48);
  v21 = type metadata accessor for Optional();
  v95 = *(v21 - 8);
  v96 = v21;
  v22 = *(v95 + 64);
  __chkstk_darwin();
  v102 = &v77 - v23;
  v24 = *(*(a11 - 8) + 64);
  __chkstk_darwin();
  v26 = &v77 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = v27;
  v28 = *(v27 + 16);
  v87 = v27 + 16;
  v88 = v25;
  v86 = v28;
  v28(v26, a2, a11);
  v90 = v26;
  v29 = String.init<A>(describing:)();
  v31 = v30;

  v103 = a3;
  v32 = a3;
  v33 = a4;
  v105 = a5;
  v34 = sub_1000681D4(v29, v31, v32, a4);
  v36 = v35;
  v38 = v37;
  v39 = *(a12 + 24);
  v93 = a2;
  v94 = a12;
  v89 = a11;
  result = v39(a2, a11, a12);
  v41 = result;
  if ((v104 & 1) == 0)
  {
    goto LABEL_6;
  }

  if ((v78 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*(v77 + 16) > v78)
  {
    v42 = v77 + 56 * v78;
    v43 = *(v42 + 40);
    if (v43)
    {
      LODWORD(v44) = *(v42 + 80);
      v45 = *(v42 + 72);
      v79 = *(v42 + 64);
      v46 = *(v42 + 48);
      v47 = *(v42 + 56);
      v48 = *(v42 + 32);
      v99 = v46;
      v100 = v48;
      v97 = v45;

      v98 = v47;

      goto LABEL_7;
    }

LABEL_6:
    sub_10002600C(a8, v117, &qword_1000B52F0, qword_100091640);
    LODWORD(v44) = v101;
    v43 = v80;
LABEL_7:
    LODWORD(v80) = a10;
    sub_1000021C0(&qword_1000B5210, &unk_100092A40);
    v49 = swift_allocObject();
    *(v49 + 16) = xmmword_10008E640;
    *(v49 + 32) = v103;
    *(v49 + 40) = v33;
    *(v49 + 48) = v105;
    v84 = v38;
    v85 = v36;
    v82 = v41;
    v83 = v34;
    v81 = v33;
    if (v43)
    {
      v101 = v44;
      v44 = v97;
      if (v97)
      {

        v50 = v98;

        v51 = v43;
        v52 = v50;
        v53 = v44;
        v54 = v79;
        LOBYTE(v44) = v101;
        goto LABEL_14;
      }

      v52 = v98;

      v51 = v43;
      LOBYTE(v44) = v101;
    }

    else
    {
      v99 = 0;
      v100 = 0;
      v51 = 0xE000000000000000;
      v52 = 0xE000000000000000;
    }

    v54 = 0;
    if (!v43)
    {
      LOBYTE(v44) = 0;
      v53 = 0xE000000000000000;
      goto LABEL_16;
    }

    v53 = 0xE000000000000000;
LABEL_14:

LABEL_16:
    v118[0] = 1;
    v118[1] = 0;
    v118[2] = 0;
    v118[3] = v49;
    v118[4] = _swiftEmptyArrayStorage;
    v119 = (v104 & 1) == 0;
    v120 = v100;
    v121 = v51;
    v122 = v99;
    v123 = v52;
    v124 = v54;
    v125 = v53;
    v126 = v44;
    v127 = 0;
    v128 = 0xE000000000000000;
    v106[0] = 1;
    v106[1] = 0;
    v106[2] = 0;
    v106[3] = v49;
    v106[4] = _swiftEmptyArrayStorage;
    v107 = v119;
    v108 = v100;
    v109 = v51;
    v110 = v99;
    v111 = v52;
    v112 = v54;
    v113 = v53;
    v114 = v44;
    v115 = 0;
    v116 = 0xE000000000000000;
    sub_10002F094(v118, v117);
    sub_10002F0F0(v106);
    v55 = v91;
    v56 = v89;
    (*(v91 + 56))(v102, 1, 1, v89);
    v57 = v90;
    v86(v90, v93, v56);
    v58 = (*(v55 + 80) + 56) & ~*(v55 + 80);
    v59 = v58 + v88;
    v60 = swift_allocObject();
    v61 = v94;
    *(v60 + 2) = v56;
    *(v60 + 3) = v61;
    v62 = v103;
    v63 = v81;
    *(v60 + 4) = v103;
    *(v60 + 5) = v63;
    v64 = v105;
    *(v60 + 6) = v105;
    (*(v55 + 32))(&v60[v58], v57, v56);
    v60[v59] = v80;

    v76 = v56;
    v65 = v102;
    sub_100038DAC(v82, v62, v63, v64, v83, v85, v118, 0, v117, v102, sub_100039358, v60, 0, v76);

    sub_10002F0F0(v118);
    result = (*(v95 + 8))(v65, v96);
    v66 = v117[9];
    v67 = v117[10];
    v68 = v117[7];
    v69 = v92;
    v92[8] = v117[8];
    v69[9] = v66;
    v70 = v117[11];
    v69[10] = v67;
    v69[11] = v70;
    v71 = v117[5];
    v72 = v117[6];
    v73 = v117[3];
    v69[4] = v117[4];
    v69[5] = v71;
    v69[6] = v72;
    v69[7] = v68;
    v74 = v117[1];
    v75 = v117[2];
    *v69 = v117[0];
    v69[1] = v74;
    v69[2] = v75;
    v69[3] = v73;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t sub_100037BA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  *(v8 + 16) = a3;
  *(v8 + 24) = a4;
  v9 = *(a2 + 16);
  *(v8 + 32) = *a2;
  *(v8 + 48) = v9;
  *(v8 + 64) = *(a2 + 32);
  *(v8 + 80) = *(a2 + 48);
  *(v8 + 88) = a1;
  type metadata accessor for Array();
  sub_10006A034(sub_100038914, v8, &v14);
  v12 = v14;
  v13 = v15;
  v10 = type metadata accessor for Parsed();
  (*(*(v10 - 8) + 32))(&v16, &v12, v10);
  return v16;
}

uint64_t sub_100037CB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v44 = a5;
  v41 = a3;
  v42 = a4;
  v39 = a1;
  v40 = a2;
  v9 = *(a7 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v37[1] = *(AssociatedConformanceWitness + 8);
  v47 = type metadata accessor for EnumeratedSequence();
  v45 = *(v47 - 8);
  v12 = *(v45 + 64);
  __chkstk_darwin();
  v43 = v37 - v13;
  v14 = *(AssociatedTypeWitness - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin();
  v17 = v37 - v16;
  dispatch thunk of static CaseIterable.allCases.getter();
  v49 = a6;
  v50 = a7;
  v46 = a7;
  v18 = sub_1000021C0(&qword_1000B52F0, qword_100091640);
  v38 = AssociatedConformanceWitness;
  v20 = sub_1000446D4(sub_100039A44, v48, AssociatedTypeWitness, v18, &type metadata for Never, AssociatedConformanceWitness, &protocol witness table for Never, v19);
  v21 = *(v14 + 8);
  v21(v17, AssociatedTypeWitness);
  v22 = *(v20 + 16) + 1;
  v23 = 40;
  do
  {
    if (!--v22)
    {
      break;
    }

    v24 = *(v20 + v23);
    v23 += 56;
  }

  while (!v24);
  v25 = v22 != 0;
  dispatch thunk of static CaseIterable.allCases.getter();
  v26 = v43;
  Sequence.enumerated()();
  v21(v17, AssociatedTypeWitness);
  __chkstk_darwin();
  v27 = v46;
  v37[-10] = a6;
  v37[-9] = v27;
  v28 = v40;
  v37[-8] = v39;
  v37[-7] = v28;
  v29 = v42;
  v37[-6] = v41;
  LOBYTE(v37[-5]) = v25;
  v37[-4] = v20;
  v37[-3] = v29;
  v37[-2] = v44;
  __chkstk_darwin();
  v37[-4] = a6;
  v37[-3] = v30;
  v37[-2] = sub_100038924;
  v37[-1] = v31;
  v51 = v38;
  v32 = v47;
  WitnessTable = swift_getWitnessTable();
  v35 = sub_1000446D4(sub_100038964, &v37[-6], v32, &type metadata for ArgumentDefinition, &type metadata for Never, WitnessTable, &protocol witness table for Never, v34);

  (*(v45 + 8))(v26, v32);
  return sub_100072F04(v35);
}

uint64_t sub_10003805C@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, int a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X7>, _OWORD *a9@<X8>, unint64_t a10, uint64_t a11, uint64_t a12)
{
  v69 = a7;
  v70 = a1;
  v94 = a6;
  v81 = a9;
  v17 = *a8;
  v18 = *(a8 + 8);
  v19 = *(a8 + 24);
  v90 = *(a8 + 16);
  v91 = v17;
  v89 = v19;
  v20 = *(a8 + 40);
  v71 = *(a8 + 32);
  v72 = v18;
  v88 = v20;
  v92 = *(a8 + 48);
  v21 = *(*(a11 - 8) + 64);
  __chkstk_darwin();
  v23 = &v69 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = v24;
  v25 = *(v24 + 16);
  v79 = v24 + 16;
  v80 = v22;
  v78 = v25;
  (v25)(v23);
  v83 = v23;
  v26 = String.init<A>(describing:)();
  v28 = v27;

  v93 = a3;
  v29 = a3;
  v30 = a5;
  v31 = sub_1000681D4(v26, v28, v29, a4);
  v33 = v32;
  v35 = v34;
  v36 = *(a12 + 24);
  v85 = a11;
  v86 = a2;
  v82 = a12;
  result = v36(a2, a11, a12);
  v84 = result;
  if ((v94 & 1) == 0)
  {
    v38 = v33;
    goto LABEL_7;
  }

  if ((v70 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*(v69 + 16) > v70)
  {
    v38 = v33;
    v39 = v69 + 56 * v70;
    v40 = *(v39 + 40);
    if (v40)
    {
      LODWORD(v41) = *(v39 + 80);
      v42 = *(v39 + 72);
      v71 = *(v39 + 64);
      v43 = *(v39 + 48);
      v44 = *(v39 + 56);
      v45 = *(v39 + 32);
      v90 = v43;
      v91 = v45;
      v88 = v42;

      v89 = v44;

      goto LABEL_8;
    }

LABEL_7:
    sub_10002600C(a8, v107, &qword_1000B52F0, qword_100091640);
    LODWORD(v41) = v92;
    v40 = v72;
LABEL_8:
    v72 = a10;
    sub_1000021C0(&qword_1000B5210, &unk_100092A40);
    v46 = swift_allocObject();
    *(v46 + 16) = xmmword_10008E640;
    *(v46 + 32) = v93;
    *(v46 + 40) = a4;
    *(v46 + 48) = v30;
    v76 = v38;
    v77 = a4;
    v74 = v31;
    v75 = v35;
    v73 = v30;
    if (v40)
    {
      v92 = v41;
      v41 = v88;
      if (v88)
      {

        v47 = v89;

        v48 = v40;
        v49 = v47;
        v50 = v41;
        v51 = v71;
        LOBYTE(v41) = v92;
        goto LABEL_15;
      }

      v49 = v89;

      v48 = v40;
      LOBYTE(v41) = v92;
    }

    else
    {
      v90 = 0;
      v91 = 0;
      v48 = 0xE000000000000000;
      v49 = 0xE000000000000000;
    }

    v51 = 0;
    if (!v40)
    {
      LOBYTE(v41) = 0;
      v50 = 0xE000000000000000;
      goto LABEL_17;
    }

    v50 = 0xE000000000000000;
LABEL_15:

LABEL_17:
    v108[0] = 1;
    v108[1] = 0;
    v108[2] = 0;
    v108[3] = v46;
    v108[4] = _swiftEmptyArrayStorage;
    v109 = (v94 & 1) == 0;
    v110 = v91;
    v111 = v48;
    v112 = v90;
    v113 = v49;
    v114 = v51;
    v115 = v50;
    v116 = v41;
    v117 = 0;
    v118 = 0xE000000000000000;
    v96[0] = 1;
    v96[1] = 0;
    v96[2] = 0;
    v96[3] = v46;
    v96[4] = _swiftEmptyArrayStorage;
    v97 = v109;
    v98 = v91;
    v99 = v48;
    v100 = v90;
    v101 = v49;
    v102 = v51;
    v103 = v50;
    v104 = v41;
    v105 = 0;
    v106 = 0xE000000000000000;
    sub_10002F094(v108, v107);
    sub_10002F0F0(v96);
    v95 = v72;
    v52 = v83;
    v53 = v85;
    v78(v83, v86, v85);
    v54 = v87;
    v55 = (*(v87 + 80) + 56) & ~*(v87 + 80);
    v56 = swift_allocObject();
    v57 = v82;
    *(v56 + 2) = v53;
    *(v56 + 3) = v57;
    v58 = v93;
    v59 = v77;
    *(v56 + 4) = v93;
    *(v56 + 5) = v59;
    v60 = v73;
    *(v56 + 6) = v73;
    (*(v54 + 32))(&v56[v55], v52, v53);
    v61 = type metadata accessor for Array();

    sub_100038DAC(v84, v58, v59, v60, v74, v76, v108, 0, v107, &v95, sub_100038CB8, v56, 0, v61);

    sub_10002F0F0(v108);

    v62 = v107[9];
    v63 = v81;
    v81[8] = v107[8];
    v63[9] = v62;
    v64 = v107[11];
    v63[10] = v107[10];
    v63[11] = v64;
    v65 = v107[5];
    v63[4] = v107[4];
    v63[5] = v65;
    v66 = v107[7];
    v63[6] = v107[6];
    v63[7] = v66;
    v67 = v107[1];
    *v63 = v107[0];
    v63[1] = v67;
    v68 = v107[3];
    v63[2] = v107[2];
    v63[3] = v68;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t sub_100038590(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(*(a3 - 8) + 64);
  __chkstk_darwin();
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for Array();
  return Array.append(_:)();
}

uint64_t sub_1000386A0(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1000386DC(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_10003871C()
{
  result = qword_1000B5388;
  if (!qword_1000B5388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B5388);
  }

  return result;
}

unint64_t sub_100038774()
{
  result = qword_1000B5390[0];
  if (!qword_1000B5390[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1000B5390);
  }

  return result;
}

unint64_t sub_100038814()
{
  result = qword_1000B5418;
  if (!qword_1000B5418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B5418);
  }

  return result;
}

unint64_t sub_10003886C()
{
  result = qword_1000B5420;
  if (!qword_1000B5420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B5420);
  }

  return result;
}

uint64_t sub_1000388C0()
{
  if (v0[5])
  {

    v1 = v0[7];

    v2 = v0[9];
  }

  v3 = v0[11];

  return _swift_deallocObject(v0, 96, 7);
}

uint64_t sub_10003897C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v22 = a4;
  v23 = a6;
  v24 = a2;
  v11 = type metadata accessor for Optional();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin();
  v15 = &v22 - v14;
  v16 = *(a7 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin();
  v19 = &v22 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 16))(v15, a3, v11);
  if ((*(v16 + 48))(v15, 1, a7) == 1)
  {
    return (*(v12 + 8))(v15, v11);
  }

  (*(v16 + 32))(v19, v15, a7);
  v28[3] = a7;
  v21 = sub_100007DE4(v28);
  (*(v16 + 16))(v21, v19, a7);
  sub_10002600C(v28, v26, &qword_1000B5428, &qword_100093030);
  v25[0] = v22;
  v25[1] = a5;
  v25[2] = v23;
  v26[4] = a1;
  v27 = 1;

  sub_10006AD50(v25);
  sub_100039234(v25);
  (*(v16 + 8))(v19, a7);
  return sub_100039288(v28);
}

uint64_t sub_100038BF4()
{
  v1 = *(v0 + 2);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 56) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 5);

  v7 = *(v0 + 6);

  (*(v2 + 8))(&v0[v4], v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_100038CB8(uint64_t a1)
{
  v3 = v1[4];
  v4 = v1[5];
  v5 = v1[6];
  v6 = v1 + ((*(*(v1[2] - 8) + 80) + 56) & ~*(*(v1[2] - 8) + 80));
  v7 = Array.init()();
  sub_10006A744(v3, v4, v5, a1, v7, sub_1000392F0);
}

double sub_100038DAC@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X5>, uint64_t a7@<X6>, int a8@<W7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, unsigned __int8 a13, uint64_t a14)
{
  v45 = a8;
  v42 = a6;
  v37 = a5;
  v38 = a2;
  v39 = a3;
  v40 = a4;
  v44 = a12;
  v41 = a13;
  v43 = a11;
  v17 = type metadata accessor for Optional();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  __chkstk_darwin();
  v21 = &v36 - v20;
  v42 = sub_10003B384(v37, v42, a1);
  (*(v18 + 16))(v21, a10, v17);
  v22 = (*(v18 + 80) + 24) & ~*(v18 + 80);
  v23 = swift_allocObject();
  *(v23 + 16) = a14;
  (*(v18 + 32))(v23 + v22, v21, v17);
  v24 = (v23 + ((v19 + v22 + 7) & 0xFFFFFFFFFFFFFFF8));
  v25 = v39;
  *v24 = v38;
  v24[1] = v25;
  v24[2] = v40;
  v26 = *(a7 + 80);
  v51 = *(a7 + 64);
  v52 = v26;
  v53 = *(a7 + 96);
  v54 = *(a7 + 112);
  v27 = *(a7 + 16);
  v47 = *a7;
  v48 = v27;
  v28 = *(a7 + 48);
  v49 = *(a7 + 32);
  v50 = v28;
  LOBYTE(v21) = v41 & 1;
  LOBYTE(v46[0]) = v41 & 1;

  sub_10002F094(a7, v46);
  v30 = v43;
  v29 = v44;
  sub_10003922C();
  v31 = v52;
  *(a9 + 72) = v51;
  *(a9 + 88) = v31;
  *(a9 + 104) = v53;
  v32 = v48;
  *(a9 + 8) = v47;
  *(a9 + 24) = v32;
  result = *&v49;
  v34 = v50;
  *(a9 + 40) = v49;
  *a9 = v42;
  v35 = v54;
  *(a9 + 56) = v34;
  *(a9 + 120) = v35;
  *(a9 + 128) = 0;
  *(a9 + 136) = 0;
  *(a9 + 144) = 4;
  *(a9 + 145) = v45;
  *(a9 + 150) = v46[63];
  *(a9 + 146) = *&v46[61];
  *(a9 + 152) = v30;
  *(a9 + 160) = v29;
  *(a9 + 168) = v21;
  *(a9 + 169) = *v46;
  *(a9 + 172) = *(&v46[1] + 1);
  *(a9 + 176) = sub_100039170;
  *(a9 + 184) = v23;
  return result;
}

uint64_t sub_100039030()
{
  v1 = *(v0 + 16);
  v2 = *(type metadata accessor for Optional() - 8);
  v3 = *(v2 + 80);
  v4 = *(v2 + 64);
  v5 = (v3 + 24) & ~v3;
  v6 = *(v1 - 8);
  if (!(*(v6 + 48))(v0 + v5, 1, v1))
  {
    (*(v6 + 8))(v0 + v5, v1);
  }

  v7 = (v4 + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v0 + v7 + 8);

  v9 = *(v0 + v7 + 16);

  return _swift_deallocObject(v0, v7 + 24, v3 | 7);
}

uint64_t sub_100039170(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16);
  v6 = *(type metadata accessor for Optional() - 8);
  v7 = (*(v6 + 80) + 24) & ~*(v6 + 80);
  v8 = (v2 + ((*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8));
  return sub_10003897C(a1, a2, v2 + v7, *v8, v8[1], v8[2], v5);
}

uint64_t sub_100039288(uint64_t a1)
{
  v2 = sub_1000021C0(&qword_1000B5428, &qword_100093030);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100039370()
{
  v1 = *(v0 + 16);
  v2 = *(type metadata accessor for Optional() - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v1 - 8);
  if (!(*(v6 + 48))(v0 + v4, 1, v1))
  {
    (*(v6 + 8))(v0 + v4, v1);
  }

  v7 = v0 + v5;
  if (*(v0 + v5 + 8))
  {

    v8 = *(v7 + 24);

    v9 = *(v7 + 40);
  }

  return _swift_deallocObject(v0, v5 + 50, v3 | 7);
}

uint64_t sub_1000394BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(v3 + 16);
  v8 = *(v3 + 24);
  v9 = *(type metadata accessor for Optional() - 8);
  v10 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v11 = v3 + ((*(v9 + 64) + v10 + 7) & 0xFFFFFFFFFFFFFFF8);
  v12 = *(v11 + 49);

  return sub_100035D7C(a1, a2, a3, v3 + v10, v11, v12, v7, v8);
}

double sub_1000395B4@<D0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  (*(*(v1 + 24) + 32))(v6);
  v4 = v6[1];
  *a1 = v6[0];
  *(a1 + 16) = v4;
  result = *&v7;
  *(a1 + 32) = v7;
  *(a1 + 48) = v8;
  return result;
}

double sub_100039678@<D0>(char *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = v2[2];
  v7 = v2[4];
  v6 = v2[5];
  v8 = *a1;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v7(v17, v8, &a1[*(TupleTypeMetadata2 + 48)]);
  v10 = v25;
  a2[8] = v24;
  a2[9] = v10;
  v11 = v27;
  a2[10] = v26;
  a2[11] = v11;
  v12 = v21;
  a2[4] = v20;
  a2[5] = v12;
  v13 = v23;
  a2[6] = v22;
  a2[7] = v13;
  v14 = v17[1];
  *a2 = v17[0];
  a2[1] = v14;
  result = *&v18;
  v16 = v19;
  a2[2] = v18;
  a2[3] = v16;
  return result;
}

uint64_t sub_10003972C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_10003977C()
{
  v1 = *(v0 + 2);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 56) & ~v3;
  v5 = *(v2 + 64) + v4;
  v6 = *(v0 + 5);

  v7 = *(v0 + 6);

  (*(v2 + 8))(&v0[v4], v1);

  return _swift_deallocObject(v0, v5 + 1, v3 | 7);
}

uint64_t sub_1000399BC()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 40);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1000399FC()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 41, 7);
}

Swift::Int sub_100039B5C()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  Hasher.init(_seed:)();
  if (!(v3 >> 6))
  {
    Hasher._combine(_:)(1uLL);
    String.hash(into:)();
    goto LABEL_5;
  }

  if (v3 >> 6 == 1)
  {
    Hasher._combine(_:)(3uLL);
    Character.hash(into:)();
LABEL_5:
    Hasher._combine(_:)(v3 & 1);
    return Hasher._finalize()();
  }

  if (v2 | v1 || v3 != 128)
  {
    v4 = 2;
  }

  else
  {
    v4 = 0;
  }

  Hasher._combine(_:)(v4);
  return Hasher._finalize()();
}

void sub_100039CE8(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  if (!(a4 >> 6))
  {
    Hasher._combine(_:)(1uLL);
    String.hash(into:)();
    goto LABEL_5;
  }

  if (a4 >> 6 == 1)
  {
    Hasher._combine(_:)(3uLL);
    Character.hash(into:)();
LABEL_5:
    Hasher._combine(_:)(a4 & 1);
    return;
  }

  if (a3 | a2 || a4 != 128)
  {
    v5 = 2;
  }

  else
  {
    v5 = 0;
  }

  Hasher._combine(_:)(v5);
}

Swift::Int sub_100039D90(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  Hasher.init(_seed:)();
  if (!(a3 >> 6))
  {
    Hasher._combine(_:)(1uLL);
    String.hash(into:)();
    goto LABEL_5;
  }

  if (a3 >> 6 == 1)
  {
    Hasher._combine(_:)(3uLL);
    Character.hash(into:)();
LABEL_5:
    Hasher._combine(_:)(a3 & 1);
    return Hasher._finalize()();
  }

  if (a2 | a1 || a3 != 128)
  {
    v6 = 2;
  }

  else
  {
    v6 = 0;
  }

  Hasher._combine(_:)(v6);
  return Hasher._finalize()();
}

Swift::Int sub_100039E7C()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  Hasher.init(_seed:)();
  _s14ArgumentParser17NameSpecificationV7ElementV4hash4intoys6HasherVz_tF_0(v5, v1, v2, v3);
  return Hasher._finalize()();
}

uint64_t NameSpecification.init<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10003B144();
  v7 = sub_100083748(a2, a3, v6);
  (*(*(a2 - 8) + 8))(a1, a2);
  return v7;
}

uint64_t NameSpecification.init(arrayLiteral:)(uint64_t a1)
{
  v1 = sub_10003AD7C(a1);

  return v1;
}

uint64_t sub_100039FEC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = sub_10003AD7C(a1);

  *a2 = v3;
  return result;
}

uint64_t static NameSpecification.customLong(_:withSingleDash:)(uint64_t a1, uint64_t a2, char a3)
{
  sub_1000021C0(&qword_1000B5438, &qword_100092060);
  inited = swift_initStackObject();
  *(inited + 32) = a1;
  *(inited + 16) = xmmword_10008E640;
  *(inited + 40) = a2;
  *(inited + 48) = a3;

  v7 = sub_10003AD7C(inited);
  swift_setDeallocating();
  sub_10003AF24(inited + 32);

  return v7;
}

uint64_t sub_10003A120(uint64_t a1, uint64_t a2)
{
  v3 = sub_10003AD7C(a1);
  sub_10003AF24(a2);

  return v3;
}

uint64_t static NameSpecification.customShort(_:allowingJoined:)(uint64_t a1, uint64_t a2, char a3)
{
  sub_1000021C0(&qword_1000B5438, &qword_100092060);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10008E640;
  *(inited + 32) = a1;
  *(inited + 40) = a2;
  *(inited + 48) = a3 | 0x40;

  v7 = sub_10003AD7C(inited);
  swift_setDeallocating();
  sub_10003AF24(inited + 32);

  return v7;
}

uint64_t static NameSpecification.shortAndLong.getter()
{
  v0 = sub_10003AD7C(&off_1000AC218);
  swift_arrayDestroy();

  return v0;
}

char *sub_10003A2B8(uint64_t a1, unint64_t a2, char a3, uint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7)
{
  v7 = *(a4 + 16);
  v8 = HIBYTE(a6) & 0xF;
  if ((a6 & 0x2000000000000000) == 0)
  {
    v8 = a5 & 0xFFFFFFFFFFFFLL;
  }

  v52 = v8;
  if (!v7)
  {
    return _swiftEmptyArrayStorage;
  }

  v9 = a6;
  v11 = a2;
  v12 = 0;
  result = _swiftEmptyArrayStorage;
  v14 = a4 + 48;
  v55 = a4 + 48;
  do
  {
    v15 = (v14 + 24 * v12);
    for (i = v12; ; ++i)
    {
      if (i >= v7)
      {
        __break(1u);
LABEL_48:
        __break(1u);
        goto LABEL_49;
      }

      v12 = i + 1;
      if (__OFADD__(i, 1))
      {
        goto LABEL_48;
      }

      v17 = *(v15 - 2);
      v18 = *(v15 - 1);
      v19 = *v15;
      if (v19 >> 6 == 1)
      {
        if (a3)
        {
          v56 = result;
          v21 = v19 & 1 | 0x40;
          sub_10003B5D8(v17, v18, v19);
          goto LABEL_38;
        }

        goto LABEL_7;
      }

      if (v19 >> 6 != 2)
      {
        v56 = result;

        v22 = sub_10003A958(a1, v11, v17, v18);
        v23 = v9;
        v25 = v24;
        sub_10003B5E8(v17, v18, v19);
        if (v19)
        {
          v21 = 0x80;
        }

        else
        {
          v21 = 0;
        }

        v17 = v22;
        v18 = v25;
        v9 = v23;
LABEL_37:
        v11 = a2;
        goto LABEL_38;
      }

      if (!(v18 | v17) && v19 == 128)
      {
        v56 = result;

        if (v52)
        {
          String.subscript.getter();

          v26 = Character.uppercased()();

          String.append(_:)(v26);

          sub_100068124(1uLL, a5, v9);

          v27 = static String._fromSubstring(_:)();
          v29 = v28;

          v30._countAndFlagsBits = v27;
          v30._object = v29;
          String.append(_:)(v30);
        }

        v32 = a1;
        v31 = v11;
        v33 = HIBYTE(v11) & 0xF;
        if ((v11 & 0x2000000000000000) == 0)
        {
          v33 = a1 & 0xFFFFFFFFFFFFLL;
        }

        v49 = v9;
        if (v33)
        {
          if (String.subscript.getter() == 95 && v34 == 0xE100000000000000)
          {

            goto LABEL_31;
          }

          v35 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v35)
          {
LABEL_31:
            sub_100068124(1uLL, a1, v11);

            v32 = static String._fromSubstring(_:)();
            v31 = v36;
          }
        }

        sub_1000021C0(&qword_1000B51D0, &qword_100092A50);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_10008E640;
        *(inited + 32) = a5;
        v9 = (inited + 32);
        *(inited + 40) = v49;
        v38 = *(a7 + 16);

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if (!isUniquelyReferenced_nonNull_native || (v40 = *(a7 + 24) >> 1, v41 = a7, v40 <= v38))
        {
          v41 = sub_100042F3C(isUniquelyReferenced_nonNull_native, v38 + 1, 1, a7);
          v40 = *(v41 + 3) >> 1;
        }

        if (v40 > *(v41 + 2))
        {
          swift_arrayInitWithCopy();

          ++*(v41 + 2);
          v17 = sub_10004CE4C(45, 0xE100000000000000, v32, v31);
          v18 = v42;

          v21 = 0;
          v9 = v49;
          goto LABEL_37;
        }

LABEL_49:
        __break(1u);
LABEL_50:
        _StringGuts.grow(_:)(54);
        v46._countAndFlagsBits = 0x272079654BLL;
        v46._object = 0xE500000000000000;
        String.append(_:)(v46);
        v47._countAndFlagsBits = a5;
        v47._object = v9;
        String.append(_:)(v47);
        v48._object = 0x8000000100099250;
        v48._countAndFlagsBits = 0xD00000000000002FLL;
        String.append(_:)(v48);
        result = _assertionFailure(_:_:file:line:flags:)();
        __break(1u);
        return result;
      }

      if (a3)
      {
        break;
      }

LABEL_7:
      v15 += 24;
      if (v12 == v7)
      {
        return result;
      }
    }

    v56 = result;
    if (!v52)
    {
      goto LABEL_50;
    }

    v17 = String.subscript.getter();
    v18 = v20;
    v21 = 64;
LABEL_38:
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      result = v56;
    }

    else
    {
      result = sub_100043274(0, *(v56 + 2) + 1, 1, v56);
    }

    v44 = *(result + 2);
    v43 = *(result + 3);
    if (v44 >= v43 >> 1)
    {
      result = sub_100043274((v43 > 1), v44 + 1, 1, result);
    }

    *(result + 2) = v44 + 1;
    v45 = &result[24 * v44];
    *(v45 + 4) = v17;
    *(v45 + 5) = v18;
    v45[48] = v21;
    v14 = v55;
  }

  while (v12 != v7);
  return result;
}

uint64_t sub_10003A824(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = HIBYTE(a4) & 0xF;
  if ((a4 & 0x2000000000000000) == 0)
  {
    v5 = a3 & 0xFFFFFFFFFFFFLL;
  }

  if (v5)
  {
    String.subscript.getter();

    v8 = Character.uppercased()();

    String.append(_:)(v8);

    sub_100068124(1uLL, a3, a4);

    v9 = static String._fromSubstring(_:)();
    v11 = v10;

    v12._countAndFlagsBits = v9;
    v12._object = v11;
    String.append(_:)(v12);
  }

  else
  {
  }

  return a1;
}

uint64_t sub_10003AD7C(uint64_t result)
{
  v1 = *(result + 16);
  if (!v1)
  {
    return &_swiftEmptyArrayStorage;
  }

  v2 = 0;
  v3 = result + 48;
  v4 = &_swiftEmptyArrayStorage;
  v14 = result + 48;
  do
  {
    v15 = v4;
    v5 = (v3 + 24 * v2);
    for (i = v2; ; ++i)
    {
      if (i >= v1)
      {
        __break(1u);
LABEL_18:
        __break(1u);
        return result;
      }

      v2 = i + 1;
      if (__OFADD__(i, 1))
      {
        goto LABEL_18;
      }

      v8 = *(v5 - 2);
      v7 = *(v5 - 1);
      v9 = *v5;
      sub_10003B5D8(v8, v7, *v5);
      sub_10003B5D8(v8, v7, v9);
      v10 = sub_100056798(v16, v8, v7, v9);
      sub_10003B5E8(v16[0], v16[1], v17);
      if (v10)
      {
        break;
      }

      result = sub_10003B5E8(v8, v7, v9);
      v5 += 24;
      if (v2 == v1)
      {
        return v15;
      }
    }

    v4 = v15;
    result = swift_isUniquelyReferenced_nonNull_native();
    v18 = v15;
    if ((result & 1) == 0)
    {
      result = sub_10004E7E8(0, v15[2] + 1, 1);
      v4 = v18;
    }

    v12 = v4[2];
    v11 = v4[3];
    if (v12 >= v11 >> 1)
    {
      result = sub_10004E7E8((v11 > 1), v12 + 1, 1);
      v4 = v18;
    }

    v4[2] = v12 + 1;
    v13 = &v4[3 * v12];
    v13[4] = v8;
    v13[5] = v7;
    *(v13 + 48) = v9;
    v3 = v14;
  }

  while (v2 != v1);
  return v4;
}

uint64_t sub_10003AF54(uint64_t a1, uint64_t a2, unsigned __int8 a3, uint64_t a4, uint64_t a5, unsigned __int8 a6)
{
  if (a3 >> 6)
  {
    if (a3 >> 6 == 1)
    {
      if ((a6 & 0xC0) != 0x40)
      {
        goto LABEL_20;
      }

      goto LABEL_6;
    }

    if (a2 | a1 || a3 != 128)
    {
      if ((a6 & 0xC0) != 0x80 || a4 != 1 || a5)
      {
        goto LABEL_20;
      }
    }

    else if ((a6 & 0xC0) != 0x80 || a5 | a4)
    {
      goto LABEL_20;
    }

    if (a6 == 128)
    {
      v9 = 1;
      return v9 & 1;
    }

LABEL_20:
    v9 = 0;
    return v9 & 1;
  }

  if (a6 >= 0x40u)
  {
    goto LABEL_20;
  }

LABEL_6:
  if (a1 != a4 || a2 != a5)
  {
    v6 = a3;
    v7 = a6;
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
    a3 = v6;
    a6 = v7;
    if ((v8 & 1) == 0)
    {
      goto LABEL_20;
    }
  }

  v9 = a6 ^ a3 ^ 1;
  return v9 & 1;
}

uint64_t _s14ArgumentParser17NameSpecificationV7ElementV23__derived_struct_equalsySbAE_AEtFZ_0(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, int a6)
{
  if (a3 >> 6)
  {
    if (a3 >> 6 == 1)
    {
      if ((a6 & 0xC0) == 0x40)
      {
        if (a1 == a4 && a2 == a5)
        {
          return (a3 & 1) == (a6 & 1);
        }

        return (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 && ((a3 ^ a6) & 1) == 0;
      }
    }

    else
    {
      if (a2 | a1 || a3 != 128)
      {
        if ((a6 & 0xC0) != 0x80 || a4 != 1 || a5)
        {
          return 0;
        }
      }

      else if ((a6 & 0xC0) != 0x80 || a5 | a4)
      {
        return 0;
      }

      if (a6 == 128)
      {
        return 1;
      }
    }
  }

  else if (a6 < 0x40u)
  {
    if (a1 == a4 && a2 == a5)
    {
      return ((a3 ^ a6) & 1) == 0;
    }

    return (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 && ((a3 ^ a6) & 1) == 0;
  }

  return 0;
}

unint64_t sub_10003B144()
{
  result = qword_1000B5430;
  if (!qword_1000B5430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B5430);
  }

  return result;
}

unint64_t sub_10003B19C()
{
  result = qword_1000B5440;
  if (!qword_1000B5440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B5440);
  }

  return result;
}

uint64_t sub_10003B200(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = v1;
  v3 = v1 >> 6;
  if (v2 >= 0)
  {
    return v3;
  }

  else
  {
    return (*a1 + 2);
  }
}

uint64_t sub_10003B234(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7E && *(a1 + 17))
  {
    return (*a1 + 126);
  }

  v3 = ((*(a1 + 16) >> 6) & 0xFFFFFF83 | (4 * ((*(a1 + 16) >> 1) & 0x1F))) ^ 0x7F;
  if (v3 >= 0x7D)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_10003B28C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7D)
  {
    *(result + 16) = 0;
    *result = a2 - 126;
    *(result + 8) = 0;
    if (a3 >= 0x7E)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7E)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = 2 * (((-a2 >> 2) & 0x1F) - 32 * a2);
    }
  }

  return result;
}

uint64_t sub_10003B2F0(uint64_t result, unsigned int a2)
{
  if (a2 < 2)
  {
    *(result + 16) = *(result + 16) & 1 | (a2 << 6);
  }

  else
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    *(result + 16) = 0x80;
  }

  return result;
}

unint64_t sub_10003B330()
{
  result = qword_1000B5448;
  if (!qword_1000B5448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B5448);
  }

  return result;
}

char *sub_10003B384(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 16);
  if (v3)
  {
    v4 = HIBYTE(a2) & 0xF;
    v28._countAndFlagsBits = a1;
    v28._object = a2;
    if ((a2 & 0x2000000000000000) == 0)
    {
      v4 = a1 & 0xFFFFFFFFFFFFLL;
    }

    v27 = v4;
    v5 = (a3 + 48);
    v6 = &_swiftEmptyArrayStorage;
    while (1)
    {
      v7 = *(v5 - 2);
      v8 = *(v5 - 1);
      v9 = *v5;
      if (!(v9 >> 6))
      {
        break;
      }

      if (v9 >> 6 == 1)
      {
        v10 = v9 & 1 | 0x40;
LABEL_11:
        v11 = *(v5 - 2);
        v12 = *(v5 - 1);
        goto LABEL_12;
      }

      if (v8 | v7 || v9 != 128)
      {
        if (!v27)
        {
          _StringGuts.grow(_:)(54);
          v25._countAndFlagsBits = 0x272079654BLL;
          v25._object = 0xE500000000000000;
          String.append(_:)(v25);
          String.append(_:)(v28);
          v26._object = 0x8000000100099250;
          v26._countAndFlagsBits = 0xD00000000000002FLL;
          String.append(_:)(v26);
          result = _assertionFailure(_:_:file:line:flags:)();
          __break(1u);
          return result;
        }

        v20 = *v5;
        v21 = *(v5 - 1);
        v22 = *(v5 - 2);
        v11 = String.subscript.getter();
        v12 = v23;
        v10 = 64;
        v7 = v22;
        v8 = v21;
        LOBYTE(v9) = v20;
      }

      else
      {
        v16 = *(v5 - 2);
        v17 = *(v5 - 1);
        v18 = sub_10004CE4C(45, 0xE100000000000000, v28._countAndFlagsBits, v28._object);
        LOBYTE(v9) = 0x80;
        v11 = v18;
        v7 = v16;
        v12 = v19;
        v8 = v17;
        v10 = 0;
      }

LABEL_12:
      sub_10003B5D8(v7, v8, v9);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v6 = sub_100043274(0, *(v6 + 2) + 1, 1, v6);
      }

      v14 = *(v6 + 2);
      v13 = *(v6 + 3);
      if (v14 >= v13 >> 1)
      {
        v6 = sub_100043274((v13 > 1), v14 + 1, 1, v6);
      }

      v5 += 24;
      *(v6 + 2) = v14 + 1;
      v15 = &v6[24 * v14];
      *(v15 + 4) = v11;
      *(v15 + 5) = v12;
      v15[48] = v10;
      if (!--v3)
      {
        return v6;
      }
    }

    if (v9)
    {
      v10 = 0x80;
    }

    else
    {
      v10 = 0;
    }

    goto LABEL_11;
  }

  return &_swiftEmptyArrayStorage;
}

uint64_t sub_10003B5D8(uint64_t a1, uint64_t a2, char a3)
{
  if ((a3 & 0x80) == 0)
  {
  }

  return result;
}

uint64_t sub_10003B5E8(uint64_t a1, uint64_t a2, char a3)
{
  if ((a3 & 0x80) == 0)
  {
  }

  return result;
}

uint64_t Option.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for Option();
  sub_10002F35C(a1, v7);
  WitnessTable = swift_getWitnessTable();
  sub_10006991C(v7, v4, WitnessTable, a2);
  return sub_100002B38(a1);
}

uint64_t Option.wrappedValue.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = *(a1 + 16);
  v6 = type metadata accessor for Parsed();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin();
  v9 = &v12 - v8;
  (*(v10 + 16))(&v12 - v8, v3, v6);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    return (*(*(v5 - 8) + 32))(a2, v9, v5);
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

void (*Option.wrappedValue.modify(void *a1, uint64_t a2))(uint64_t **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x30uLL);
  }

  v6 = v5;
  *a1 = v5;
  *v5 = a2;
  v5[1] = v2;
  v7 = *(a2 + 16);
  v5[2] = v7;
  v8 = *(v7 - 8);
  v5[3] = v8;
  v9 = *(v8 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v5[4] = swift_coroFrameAlloc();
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(v9);
    v10 = malloc(v9);
  }

  v6[5] = v10;
  Option.wrappedValue.getter(a2, v10);
  return sub_10002F754;
}

unint64_t Option.description.getter(uint64_t a1)
{
  v2 = v1;
  v3 = *(a1 + 16);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin();
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v9 = &v17 - v8;
  v10 = type metadata accessor for Parsed();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin();
  v14 = &v17 - v13;
  (*(v11 + 16))(&v17 - v13, v2, v10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v11 + 8))(v14, v10);
    return 0xD000000000000014;
  }

  else
  {
    (*(v4 + 32))(v9, v14, v3);
    (*(v4 + 16))(v7, v9, v3);
    v16 = String.init<A>(describing:)();
    (*(v4 + 8))(v9, v3);
    return v16;
  }
}

uint64_t Option<A>.init(wrappedValue:name:parsing:help:completion:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, int a7@<W6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v31 = a7;
  v29 = a5;
  v30 = a6;
  v27 = a3;
  v26 = a2;
  v28 = a1;
  v32 = a9;
  v12 = type metadata accessor for Parsed();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin();
  v16 = (&v25 - v15);
  v17 = *(a8 - 8);
  v18 = (*(v17 + 80) + 90) & ~*(v17 + 80);
  v19 = (*(v17 + 64) + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = swift_allocObject();
  *(v20 + 16) = a8;
  *(v20 + 24) = a10;
  *(v20 + 32) = v26;
  v21 = *(a4 + 16);
  *(v20 + 40) = *a4;
  *(v20 + 56) = v21;
  *(v20 + 72) = *(a4 + 32);
  *(v20 + 88) = *(a4 + 48);
  *(v20 + 89) = v27;
  (*(v17 + 32))(v20 + v18, v28, a8);
  v22 = v20 + v19;
  v23 = v30;
  *v22 = v29;
  *(v22 + 8) = v23;
  *(v22 + 16) = v31;
  sub_10006A034(sub_10003EB90, v20, v16);
  return (*(v13 + 32))(v32, v16, v12);
}

uint64_t sub_10003BDD0(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8, uint64_t a9, unsigned __int8 a10, uint64_t a11)
{
  v42 = a8;
  v39 = a7;
  v44 = a6;
  v41 = a5;
  v40 = a3;
  v43 = type metadata accessor for Optional();
  v14 = *(v43 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin();
  v17 = &v38 - v16;
  v18 = type metadata accessor for Bare();

  v19 = a1;
  v20 = sub_10003B384(a1, a2, a4);
  v21 = *(a11 - 8);
  (*(v21 + 16))(v17, v39, a11);
  (*(v21 + 56))(v17, 0, 1, a11);
  v22 = v41;
  sub_10003350C(v41, v45);
  v23 = v42;
  sub_10003357C(v42, a9, a10);
  WitnessTable = swift_getWitnessTable();
  v25 = sub_10005B274(v19, a2, v40, v20, v22, v44, v17, v45, v23, a9, a10, v18, WitnessTable);
  (*(v14 + 8))(v17, v43, v25);
  sub_1000021C0(&qword_1000B52F8, &qword_1000924C0);
  v26 = swift_allocObject();
  v27 = v45[8];
  v28 = v45[10];
  v29 = v45[11];
  v26[11] = v45[9];
  v26[12] = v28;
  v26[13] = v29;
  v30 = v45[4];
  v31 = v45[6];
  v32 = v45[7];
  v26[7] = v45[5];
  v26[8] = v31;
  v26[9] = v32;
  v26[10] = v27;
  v33 = v45[0];
  v34 = v45[1];
  v26[1] = xmmword_10008E640;
  v26[2] = v33;
  v35 = v45[2];
  v36 = v45[3];
  v26[3] = v34;
  v26[4] = v35;
  v26[5] = v36;
  v26[6] = v30;
  return sub_100072F04(v26);
}

uint64_t Option<A>.init(wrappedValue:name:parsing:completion:help:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, int a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v23 = a7;
  v24 = a6;
  v17 = *(a8 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin();
  v20 = &v23 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v17 + 16))(v20, a1, v21);
  Option<A>.init(wrappedValue:name:parsing:help:completion:)(v20, a2, a3, v23, a4, a5, v24, a8, a9, a10);
  return (*(v17 + 8))(a1, a8);
}

uint64_t Option<A>.init(name:parsing:help:completion:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, int a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  HIDWORD(v24) = a6;
  v25 = a9;
  v16 = type metadata accessor for Parsed();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin();
  v20 = (&v24 - v19);
  v21 = swift_allocObject();
  v22 = *(a3 + 16);
  *(v21 + 40) = *a3;
  *(v21 + 16) = a7;
  *(v21 + 24) = a8;
  *(v21 + 32) = a1;
  *(v21 + 56) = v22;
  *(v21 + 72) = *(a3 + 32);
  *(v21 + 88) = *(a3 + 48);
  *(v21 + 89) = a2;
  *(v21 + 96) = a4;
  *(v21 + 104) = a5;
  *(v21 + 112) = BYTE4(v24);
  sub_10006A034(sub_10003EC34, v21, v20);
  return (*(v17 + 32))(v25, v20, v16);
}

uint64_t sub_10003C34C(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8, unsigned __int8 a9, uint64_t a10)
{
  v38 = a7;
  v40 = a6;
  v37 = a5;
  v36 = a3;
  v39 = type metadata accessor for Optional();
  v14 = *(v39 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin();
  v17 = &v36 - v16;
  v18 = type metadata accessor for Bare();

  v19 = sub_10003B384(a1, a2, a4);
  (*(*(a10 - 8) + 56))(v17, 1, 1, a10);
  v20 = v37;
  sub_10003350C(v37, v41);
  v21 = v38;
  sub_10003357C(v38, a8, a9);
  WitnessTable = swift_getWitnessTable();
  v23 = sub_10005B274(a1, a2, v36, v19, v20, v40, v17, v41, v21, a8, a9, v18, WitnessTable);
  (*(v14 + 8))(v17, v39, v23);
  sub_1000021C0(&qword_1000B52F8, &qword_1000924C0);
  v24 = swift_allocObject();
  v25 = v41[8];
  v26 = v41[10];
  v27 = v41[11];
  v24[11] = v41[9];
  v24[12] = v26;
  v24[13] = v27;
  v28 = v41[4];
  v29 = v41[6];
  v30 = v41[7];
  v24[7] = v41[5];
  v24[8] = v29;
  v24[9] = v30;
  v24[10] = v25;
  v31 = v41[0];
  v32 = v41[1];
  v24[1] = xmmword_10008E640;
  v24[2] = v31;
  v33 = v41[2];
  v34 = v41[3];
  v24[3] = v32;
  v24[4] = v33;
  v24[5] = v34;
  v24[6] = v28;
  return sub_100072F04(v24);
}

uint64_t Option.init(wrappedValue:name:parsing:help:completion:transform:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, int a7@<W6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  v31 = a8;
  v32 = a5;
  v34 = a7;
  v33 = a6;
  v29 = a3;
  v30 = a1;
  v35 = a9;
  v28 = a10;
  v13 = type metadata accessor for Parsed();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin();
  v17 = (&v28 - v16);
  v18 = *(a11 - 8);
  v19 = (*(v18 + 80) + 104) & ~*(v18 + 80);
  v20 = (*(v18 + 64) + v19 + 7) & 0xFFFFFFFFFFFFFFF8;
  v21 = swift_allocObject();
  *(v21 + 16) = a11;
  *(v21 + 24) = a2;
  v22 = *(a4 + 16);
  *(v21 + 32) = *a4;
  *(v21 + 48) = v22;
  *(v21 + 64) = *(a4 + 32);
  *(v21 + 80) = *(a4 + 48);
  *(v21 + 81) = v29;
  v23 = v30;
  v24 = v28;
  *(v21 + 88) = v31;
  *(v21 + 96) = v24;
  (*(v18 + 32))(v21 + v19, v23, a11);
  v25 = v21 + v20;
  v26 = v33;
  *v25 = v32;
  *(v25 + 8) = v26;
  *(v25 + 16) = v34;
  sub_10006A034(sub_10003ED4C, v21, v17);
  return (*(v14 + 32))(v35, v17, v13);
}

uint64_t sub_10003C7D4(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, unsigned __int8 a12, uint64_t a13)
{
  v46 = a8;
  v49 = a7;
  v48 = a6;
  v45 = a5;
  v42 = a3;
  v44 = a11;
  v43 = a10;
  v47 = type metadata accessor for Optional();
  v16 = *(v47 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin();
  v19 = &v41 - v18;
  v20 = type metadata accessor for Bare();

  v21 = a1;
  v41 = sub_10003B384(a1, a2, a4);
  v22 = *(a13 - 8);
  (*(v22 + 16))(v19, a9, a13);
  (*(v22 + 56))(v19, 0, 1, a13);
  v23 = v45;
  sub_10003350C(v45, v50);
  v24 = v43;
  v25 = v44;
  sub_10003357C(v43, v44, a12);
  v26 = v46;

  WitnessTable = swift_getWitnessTable();
  v28 = sub_10005B5C0(v21, a2, v42, v41, v23, v48, v49, v50, v26, v19, v24, v25, a12, v20, WitnessTable);
  (*(v16 + 8))(v19, v47, v28);
  sub_1000021C0(&qword_1000B52F8, &qword_1000924C0);
  v29 = swift_allocObject();
  v30 = v50[8];
  v31 = v50[10];
  v32 = v50[11];
  v29[11] = v50[9];
  v29[12] = v31;
  v29[13] = v32;
  v33 = v50[4];
  v34 = v50[6];
  v35 = v50[7];
  v29[7] = v50[5];
  v29[8] = v34;
  v29[9] = v35;
  v29[10] = v30;
  v36 = v50[0];
  v37 = v50[1];
  v29[1] = xmmword_10008E640;
  v29[2] = v36;
  v38 = v50[2];
  v39 = v50[3];
  v29[3] = v37;
  v29[4] = v38;
  v29[5] = v39;
  v29[6] = v33;
  return sub_100072F04(v29);
}

uint64_t Option.init(name:parsing:help:completion:transform:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, int a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v26 = a8;
  v27 = a6;
  v28 = a9;
  v16 = type metadata accessor for Parsed();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin();
  v20 = (&v25 - v19);
  v21 = swift_allocObject();
  *(v21 + 16) = a10;
  *(v21 + 24) = a1;
  v22 = *(a3 + 16);
  *(v21 + 32) = *a3;
  *(v21 + 48) = v22;
  *(v21 + 64) = *(a3 + 32);
  *(v21 + 80) = *(a3 + 48);
  *(v21 + 81) = a2;
  v23 = v26;
  *(v21 + 88) = a7;
  *(v21 + 96) = v23;
  *(v21 + 104) = a4;
  *(v21 + 112) = a5;
  *(v21 + 120) = v27;
  sub_10006A034(sub_10003EDF8, v21, v20);
  return (*(v17 + 32))(v28, v20, v16);
}

uint64_t sub_10003CC4C(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, unsigned __int8 a11, uint64_t a12)
{
  v43 = a8;
  v46 = a7;
  v45 = a6;
  v42 = a5;
  v40 = a3;
  v39 = a1;
  v41 = a9;
  v44 = type metadata accessor for Optional();
  v15 = *(v44 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin();
  v18 = &v38 - v17;
  v19 = type metadata accessor for Bare();

  v20 = sub_10003B384(a1, a2, a4);
  (*(*(a12 - 8) + 56))(v18, 1, 1, a12);
  v21 = v42;
  sub_10003350C(v42, v47);
  v22 = v41;
  sub_10003357C(v41, a10, a11);
  v23 = v43;

  WitnessTable = swift_getWitnessTable();
  v25 = sub_10005B5C0(v39, a2, v40, v20, v21, v45, v46, v47, v23, v18, v22, a10, a11, v19, WitnessTable);
  (*(v15 + 8))(v18, v44, v25);
  sub_1000021C0(&qword_1000B52F8, &qword_1000924C0);
  v26 = swift_allocObject();
  v27 = v47[8];
  v28 = v47[10];
  v29 = v47[11];
  v26[11] = v47[9];
  v26[12] = v28;
  v26[13] = v29;
  v30 = v47[4];
  v31 = v47[6];
  v32 = v47[7];
  v26[7] = v47[5];
  v26[8] = v31;
  v26[9] = v32;
  v26[10] = v27;
  v33 = v47[0];
  v34 = v47[1];
  v26[1] = xmmword_10008E640;
  v26[2] = v33;
  v35 = v47[2];
  v36 = v47[3];
  v26[3] = v34;
  v26[4] = v35;
  v26[5] = v36;
  v26[6] = v30;
  return sub_100072F04(v26);
}

uint64_t Option.init<A>(wrappedValue:name:parsing:help:completion:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, int a7@<W6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v34 = a7;
  v32 = a5;
  v33 = a6;
  v30 = a3;
  v31 = a1;
  v35 = a9;
  v28 = a10;
  v29 = a2;
  v12 = type metadata accessor for Optional();
  v13 = type metadata accessor for Parsed();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin();
  v17 = (&v28 - v16);
  v18 = *(v12 - 8);
  v19 = (*(v18 + 80) + 90) & ~*(v18 + 80);
  v20 = (*(v18 + 64) + v19 + 7) & 0xFFFFFFFFFFFFFFF8;
  v21 = swift_allocObject();
  v23 = v28;
  v22 = v29;
  *(v21 + 16) = a8;
  *(v21 + 24) = v23;
  *(v21 + 32) = v22;
  v24 = *(a4 + 16);
  *(v21 + 40) = *a4;
  *(v21 + 56) = v24;
  *(v21 + 72) = *(a4 + 32);
  *(v21 + 88) = *(a4 + 48);
  *(v21 + 89) = v30;
  (*(v18 + 32))(v21 + v19, v31, v12);
  v25 = v21 + v20;
  v26 = v33;
  *v25 = v32;
  *(v25 + 8) = v26;
  *(v25 + 16) = v34;
  sub_10006A034(sub_10003EFC0, v21, v17);
  return (*(v14 + 32))(v35, v17, v13);
}

uint64_t sub_10003D154(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, int a6, uint64_t a7, uint64_t a8, uint64_t a9, unsigned __int8 a10)
{
  v17 = type metadata accessor for Optional();

  v18 = sub_10003B384(a1, a2, a4);
  sub_10003350C(a5, v33);
  sub_10003357C(a8, a9, a10);
  WitnessTable = swift_getWitnessTable();
  sub_10005B274(a1, a2, a3, v18, a5, a6, a7, v33, a8, a9, a10, v17, WitnessTable);
  sub_1000021C0(&qword_1000B52F8, &qword_1000924C0);
  v20 = swift_allocObject();
  v21 = v33[8];
  v22 = v33[10];
  v23 = v33[11];
  v20[11] = v33[9];
  v20[12] = v22;
  v20[13] = v23;
  v24 = v33[4];
  v25 = v33[6];
  v26 = v33[7];
  v20[7] = v33[5];
  v20[8] = v25;
  v20[9] = v26;
  v20[10] = v21;
  v27 = v33[0];
  v28 = v33[1];
  v20[1] = xmmword_10008E640;
  v20[2] = v27;
  v29 = v33[2];
  v30 = v33[3];
  v20[3] = v28;
  v20[4] = v29;
  v20[5] = v30;
  v20[6] = v24;
  return sub_100072F04(v20);
}

uint64_t sub_10003D318@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, int a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  v29 = a6;
  v27 = a4;
  v28 = a5;
  v30 = a9;
  v26 = a11;
  type metadata accessor for Optional();
  v16 = type metadata accessor for Parsed();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin(v16);
  v20 = (&v25 - v19);
  v21 = swift_allocObject();
  v22 = *(a3 + 16);
  *(v21 + 40) = *a3;
  *(v21 + 16) = a7;
  *(v21 + 24) = a8;
  *(v21 + 32) = a1;
  *(v21 + 56) = v22;
  *(v21 + 72) = *(a3 + 32);
  *(v21 + 88) = *(a3 + 48);
  *(v21 + 89) = a2;
  v23 = v28;
  *(v21 + 96) = v27;
  *(v21 + 104) = v23;
  *(v21 + 112) = v29;
  sub_10006A034(v26, v21, v20);
  return (*(v17 + 32))(v30, v20, v16);
}

uint64_t sub_10003D484(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8, unsigned __int8 a9, uint64_t a10)
{
  v39 = a7;
  v40 = a6;
  v37 = a5;
  v38 = a3;
  v14 = type metadata accessor for Optional();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin();
  v18 = &v36 - v17;

  v19 = sub_10003B384(a1, a2, a4);
  (*(*(a10 - 8) + 56))(v18, 1, 1, a10);
  v20 = v37;
  sub_10003350C(v37, v41);
  v21 = v39;
  sub_10003357C(v39, a8, a9);
  WitnessTable = swift_getWitnessTable();
  v23 = sub_10005B274(a1, a2, v38, v19, v20, v40, v18, v41, v21, a8, a9, v14, WitnessTable);
  (*(v15 + 8))(v18, v14, v23);
  sub_1000021C0(&qword_1000B52F8, &qword_1000924C0);
  v24 = swift_allocObject();
  v25 = v41[8];
  v26 = v41[10];
  v27 = v41[11];
  v24[11] = v41[9];
  v24[12] = v26;
  v24[13] = v27;
  v28 = v41[4];
  v29 = v41[6];
  v30 = v41[7];
  v24[7] = v41[5];
  v24[8] = v29;
  v24[9] = v30;
  v24[10] = v25;
  v31 = v41[0];
  v32 = v41[1];
  v24[1] = xmmword_10008E640;
  v24[2] = v31;
  v33 = v41[2];
  v34 = v41[3];
  v24[3] = v32;
  v24[4] = v33;
  v24[5] = v34;
  v24[6] = v28;
  return sub_100072F04(v24);
}

uint64_t Option.init<A>(wrappedValue:name:parsing:help:completion:transform:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, int a7@<W6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  v34 = a8;
  v35 = a5;
  v37 = a7;
  v36 = a6;
  v32 = a3;
  v33 = a1;
  v38 = a9;
  v30 = a2;
  v31 = a10;
  v12 = type metadata accessor for Optional();
  v13 = type metadata accessor for Parsed();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin();
  v17 = (&v29 - v16);
  v18 = *(v12 - 8);
  v19 = (*(v18 + 80) + 104) & ~*(v18 + 80);
  v20 = (*(v18 + 64) + v19 + 7) & 0xFFFFFFFFFFFFFFF8;
  v21 = swift_allocObject();
  v22 = v30;
  *(v21 + 16) = a11;
  *(v21 + 24) = v22;
  v23 = *(a4 + 16);
  *(v21 + 32) = *a4;
  *(v21 + 48) = v23;
  *(v21 + 64) = *(a4 + 32);
  *(v21 + 80) = *(a4 + 48);
  *(v21 + 81) = v32;
  v24 = v33;
  v25 = v31;
  *(v21 + 88) = v34;
  *(v21 + 96) = v25;
  (*(v18 + 32))(v21 + v19, v24, v12);
  v26 = v21 + v20;
  v27 = v36;
  *v26 = v35;
  *(v26 + 8) = v27;
  *(v26 + 16) = v37;
  sub_10006A034(sub_10003F25C, v21, v17);
  return (*(v14 + 32))(v38, v17, v13);
}

uint64_t sub_10003D948(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, unsigned __int8 a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, unsigned __int8 a12)
{
  v18 = type metadata accessor for Optional();

  v19 = sub_10003B384(a1, a2, a4);
  sub_10003350C(a5, v35);
  sub_10003357C(a10, a11, a12);

  WitnessTable = swift_getWitnessTable();
  sub_10005B5C0(a1, a2, a3, v19, a5, a6, a7, v35, a8, a9, a10, a11, a12, v18, WitnessTable);
  sub_1000021C0(&qword_1000B52F8, &qword_1000924C0);
  v21 = swift_allocObject();
  v22 = v35[8];
  v23 = v35[10];
  v24 = v35[11];
  v21[11] = v35[9];
  v21[12] = v23;
  v21[13] = v24;
  v25 = v35[4];
  v26 = v35[6];
  v27 = v35[7];
  v21[7] = v35[5];
  v21[8] = v26;
  v21[9] = v27;
  v21[10] = v22;
  v28 = v35[0];
  v29 = v35[1];
  v21[1] = xmmword_10008E640;
  v21[2] = v28;
  v30 = v35[2];
  v31 = v35[3];
  v21[3] = v29;
  v21[4] = v30;
  v21[5] = v31;
  v21[6] = v25;
  return sub_100072F04(v21);
}

uint64_t sub_10003DB2C@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, int a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v27 = a5;
  v28 = a8;
  v25 = a4;
  v26 = a7;
  v29 = a6;
  v30 = a9;
  type metadata accessor for Optional();
  v15 = type metadata accessor for Parsed();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin();
  v19 = (&v25 - v18);
  v20 = swift_allocObject();
  *(v20 + 16) = a10;
  *(v20 + 24) = a1;
  v21 = *(a3 + 16);
  *(v20 + 32) = *a3;
  *(v20 + 48) = v21;
  *(v20 + 64) = *(a3 + 32);
  *(v20 + 80) = *(a3 + 48);
  *(v20 + 81) = a2;
  v22 = v28;
  *(v20 + 88) = v26;
  *(v20 + 96) = v22;
  v23 = v27;
  *(v20 + 104) = v25;
  *(v20 + 112) = v23;
  *(v20 + 120) = v29;
  sub_10006A034(a12, v20, v19);
  return (*(v16 + 32))(v30, v19, v15);
}

uint64_t sub_10003DC9C(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, unsigned __int8 a11, uint64_t a12)
{
  v42 = a8;
  v44 = a7;
  v43 = a6;
  v40 = a5;
  v41 = a3;
  v39 = a9;
  v15 = type metadata accessor for Optional();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin();
  v19 = &v38 - v18;

  v20 = a1;
  v38 = sub_10003B384(a1, a2, a4);
  (*(*(a12 - 8) + 56))(v19, 1, 1, a12);
  v21 = v40;
  sub_10003350C(v40, v45);
  v22 = v39;
  sub_10003357C(v39, a10, a11);
  v23 = v42;

  WitnessTable = swift_getWitnessTable();
  v25 = sub_10005B5C0(v20, a2, v41, v38, v21, v43, v44, v45, v23, v19, v22, a10, a11, v15, WitnessTable);
  (*(v16 + 8))(v19, v15, v25);
  sub_1000021C0(&qword_1000B52F8, &qword_1000924C0);
  v26 = swift_allocObject();
  v27 = v45[8];
  v28 = v45[10];
  v29 = v45[11];
  v26[11] = v45[9];
  v26[12] = v28;
  v26[13] = v29;
  v30 = v45[4];
  v31 = v45[6];
  v32 = v45[7];
  v26[7] = v45[5];
  v26[8] = v31;
  v26[9] = v32;
  v26[10] = v27;
  v33 = v45[0];
  v34 = v45[1];
  v26[1] = xmmword_10008E640;
  v26[2] = v33;
  v35 = v45[2];
  v36 = v45[3];
  v26[3] = v34;
  v26[4] = v35;
  v26[5] = v36;
  v26[6] = v30;
  return sub_100072F04(v26);
}

uint64_t Option.init<A>(wrappedValue:name:parsing:help:completion:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8, uint64_t a9)
{
  v17 = swift_allocObject();
  v18 = *(a4 + 16);
  *(v17 + 40) = *a4;
  *(v17 + 16) = a8;
  *(v17 + 24) = a9;
  *(v17 + 32) = a2;
  *(v17 + 56) = v18;
  *(v17 + 72) = *(a4 + 32);
  *(v17 + 88) = *(a4 + 48);
  *(v17 + 89) = a3;
  *(v17 + 96) = a1;
  *(v17 + 104) = a5;
  *(v17 + 112) = a6;
  *(v17 + 120) = a7;
  type metadata accessor for Array();
  sub_10006A034(sub_10003F3B4, v17, &v23);
  v21 = v23;
  v22 = v24;
  v19 = type metadata accessor for Parsed();
  (*(*(v19 - 8) + 32))(&v25, &v21, v19);
  return v25;
}

uint64_t sub_10003E08C(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, int a6, uint64_t a7, uint64_t a8, uint64_t a9, unsigned __int8 a10)
{
  v17 = type metadata accessor for Array();

  v18 = sub_10003B384(a1, a2, a4);
  v33 = a7;
  sub_10003350C(a5, v34);
  sub_10003357C(a8, a9, a10);
  WitnessTable = swift_getWitnessTable();
  sub_10005B274(a1, a2, a3, v18, a5, a6, &v33, v34, a8, a9, a10, v17, WitnessTable);
  sub_1000021C0(&qword_1000B52F8, &qword_1000924C0);
  v20 = swift_allocObject();
  v21 = v34[8];
  v22 = v34[10];
  v23 = v34[11];
  v20[11] = v34[9];
  v20[12] = v22;
  v20[13] = v23;
  v24 = v34[4];
  v25 = v34[6];
  v26 = v34[7];
  v20[7] = v34[5];
  v20[8] = v25;
  v20[9] = v26;
  v20[10] = v21;
  v27 = v34[0];
  v28 = v34[1];
  v20[1] = xmmword_10008E640;
  v20[2] = v27;
  v29 = v34[2];
  v30 = v34[3];
  v20[3] = v28;
  v20[4] = v29;
  v20[5] = v30;
  v20[6] = v24;
  return sub_100072F04(v20);
}

uint64_t Option.init<A>(name:parsing:help:completion:)(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8)
{
  v16 = swift_allocObject();
  v17 = *(a3 + 16);
  *(v16 + 40) = *a3;
  *(v16 + 16) = a7;
  *(v16 + 24) = a8;
  *(v16 + 32) = a1;
  *(v16 + 56) = v17;
  *(v16 + 72) = *(a3 + 32);
  *(v16 + 88) = *(a3 + 48);
  *(v16 + 89) = a2;
  *(v16 + 96) = a4;
  *(v16 + 104) = a5;
  *(v16 + 112) = a6;
  type metadata accessor for Array();
  sub_10006A034(sub_10003F464, v16, &v22);
  v20 = v22;
  v21 = v23;
  v18 = type metadata accessor for Parsed();
  (*(*(v18 - 8) + 32))(&v24, &v20, v18);
  return v24;
}

uint64_t sub_10003E354(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, int a6, uint64_t a7, uint64_t a8, unsigned __int8 a9)
{
  v16 = type metadata accessor for Array();

  v17 = sub_10003B384(a1, a2, a4);
  v32 = 0;
  sub_10003350C(a5, v33);
  sub_10003357C(a7, a8, a9);
  WitnessTable = swift_getWitnessTable();
  sub_10005B274(a1, a2, a3, v17, a5, a6, &v32, v33, a7, a8, a9, v16, WitnessTable);
  sub_1000021C0(&qword_1000B52F8, &qword_1000924C0);
  v19 = swift_allocObject();
  v20 = v33[8];
  v21 = v33[10];
  v22 = v33[11];
  v19[11] = v33[9];
  v19[12] = v21;
  v19[13] = v22;
  v23 = v33[4];
  v24 = v33[6];
  v25 = v33[7];
  v19[7] = v33[5];
  v19[8] = v24;
  v19[9] = v25;
  v19[10] = v20;
  v26 = v33[0];
  v27 = v33[1];
  v19[1] = xmmword_10008E640;
  v19[2] = v26;
  v28 = v33[2];
  v29 = v33[3];
  v19[3] = v27;
  v19[4] = v28;
  v19[5] = v29;
  v19[6] = v23;
  return sub_100072F04(v19);
}

uint64_t Option.init<A>(wrappedValue:name:parsing:help:completion:transform:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v17 = swift_allocObject();
  *(v17 + 16) = a10;
  *(v17 + 24) = a2;
  v18 = *(a4 + 16);
  *(v17 + 32) = *a4;
  *(v17 + 48) = v18;
  *(v17 + 64) = *(a4 + 32);
  *(v17 + 80) = *(a4 + 48);
  *(v17 + 81) = a3;
  *(v17 + 88) = a8;
  *(v17 + 96) = a9;
  *(v17 + 104) = a1;
  *(v17 + 112) = a5;
  *(v17 + 120) = a6;
  *(v17 + 128) = a7;
  type metadata accessor for Array();
  sub_10006A034(sub_10003F53C, v17, &v24);
  v22 = v24;
  v23 = v25;
  v19 = type metadata accessor for Parsed();
  (*(*(v19 - 8) + 32))(&v26, &v22, v19);
  return v26;
}

uint64_t sub_10003E618(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, unsigned __int8 a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, unsigned __int8 a12)
{
  v17 = type metadata accessor for Array();

  v18 = sub_10003B384(a1, a2, a4);
  v35 = a9;
  sub_10003350C(a5, v36);
  sub_10003357C(a10, a11, a12);

  WitnessTable = swift_getWitnessTable();
  sub_10005B5C0(a1, a2, a3, v18, a5, a6, a7, v36, a8, &v35, a10, a11, a12, v17, WitnessTable);
  sub_1000021C0(&qword_1000B52F8, &qword_1000924C0);
  v20 = swift_allocObject();
  v21 = v36[8];
  v22 = v36[10];
  v23 = v36[11];
  v20[11] = v36[9];
  v20[12] = v22;
  v20[13] = v23;
  v24 = v36[4];
  v25 = v36[6];
  v26 = v36[7];
  v20[7] = v36[5];
  v20[8] = v25;
  v20[9] = v26;
  v20[10] = v21;
  v27 = v36[0];
  v28 = v36[1];
  v20[1] = xmmword_10008E640;
  v20[2] = v27;
  v29 = v36[2];
  v30 = v36[3];
  v20[3] = v28;
  v20[4] = v29;
  v20[5] = v30;
  v20[6] = v24;
  return sub_100072F04(v20);
}

uint64_t Option.init<A>(name:parsing:help:completion:transform:)(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v17 = swift_allocObject();
  *(v17 + 16) = a9;
  *(v17 + 24) = a1;
  v18 = *(a3 + 16);
  *(v17 + 32) = *a3;
  *(v17 + 48) = v18;
  *(v17 + 64) = *(a3 + 32);
  *(v17 + 80) = *(a3 + 48);
  *(v17 + 81) = a2;
  *(v17 + 88) = a7;
  *(v17 + 96) = a8;
  *(v17 + 104) = a4;
  *(v17 + 112) = a5;
  *(v17 + 120) = a6;
  type metadata accessor for Array();
  sub_10006A034(sub_10003F5F8, v17, &v23);
  v21 = v23;
  v22 = v24;
  v19 = type metadata accessor for Parsed();
  (*(*(v19 - 8) + 32))(&v25, &v21, v19);
  return v25;
}

uint64_t sub_10003E8F8(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, unsigned __int8 a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, unsigned __int8 a11)
{
  v17 = type metadata accessor for Array();

  v18 = sub_10003B384(a1, a2, a4);
  v34 = 0;
  sub_10003350C(a5, v35);
  sub_10003357C(a9, a10, a11);

  WitnessTable = swift_getWitnessTable();
  sub_10005B5C0(a1, a2, a3, v18, a5, a6, a7, v35, a8, &v34, a9, a10, a11, v17, WitnessTable);
  sub_1000021C0(&qword_1000B52F8, &qword_1000924C0);
  v20 = swift_allocObject();
  v21 = v35[8];
  v22 = v35[10];
  v23 = v35[11];
  v20[11] = v35[9];
  v20[12] = v22;
  v20[13] = v23;
  v24 = v35[4];
  v25 = v35[6];
  v26 = v35[7];
  v20[7] = v35[5];
  v20[8] = v25;
  v20[9] = v26;
  v20[10] = v21;
  v27 = v35[0];
  v28 = v35[1];
  v20[1] = xmmword_10008E640;
  v20[2] = v27;
  v29 = v35[2];
  v30 = v35[3];
  v20[3] = v28;
  v20[4] = v29;
  v20[5] = v30;
  v20[6] = v24;
  return sub_100072F04(v20);
}

uint64_t sub_10003EA94()
{
  v1 = *(v0 + 2);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 90) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 4);

  if (*(v0 + 6))
  {

    v7 = *(v0 + 8);

    v8 = *(v0 + 10);
  }

  (*(v2 + 8))(&v0[v4], v1);
  v9 = v0[v5 + 16];
  if (v9 != 255)
  {
    sub_100032650(*&v0[v5], *&v0[v5 + 8], v9);
  }

  return _swift_deallocObject(v0, v5 + 17, v3 | 7);
}

uint64_t sub_10003EB90(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v4 = (*(*(*(v3 + 16) - 8) + 80) + 90) & ~*(*(*(v3 + 16) - 8) + 80);
  v5 = v3 + ((*(*(*(v3 + 16) - 8) + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8);
  v7 = *(v3 + 24);
  return sub_10003BDD0(a1, a2, a3, *(v3 + 32), v3 + 40, *(v3 + 89), v3 + v4, *v5, *(v5 + 8), *(v5 + 16), *(v3 + 16));
}

uint64_t sub_10003EC4C()
{
  v1 = *(v0 + 2);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 104) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  if (*(v0 + 5))
  {

    v6 = *(v0 + 7);

    v7 = *(v0 + 9);
  }

  v8 = *(v0 + 12);

  (*(v2 + 8))(&v0[v4], v1);
  v9 = v0[v5 + 16];
  if (v9 != 255)
  {
    sub_100032650(*&v0[v5], *&v0[v5 + 8], v9);
  }

  return _swift_deallocObject(v0, v5 + 17, v3 | 7);
}

uint64_t sub_10003ED4C(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v4 = (*(*(*(v3 + 16) - 8) + 80) + 104) & ~*(*(*(v3 + 16) - 8) + 80);
  v5 = (*(*(*(v3 + 16) - 8) + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  return sub_10003C7D4(a1, a2, a3, *(v3 + 24), v3 + 32, *(v3 + 81), *(v3 + 88), *(v3 + 96), v3 + v4, *(v3 + v5), *(v3 + v5 + 8), *(v3 + v5 + 16), *(v3 + 16));
}

uint64_t sub_10003EE58()
{
  v1 = *(v0 + 2);
  v2 = *(type metadata accessor for Optional() - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 90) & ~v3;
  v5 = *(v2 + 64) + v4 + 7;
  v6 = *(v0 + 4);

  if (*(v0 + 6))
  {

    v7 = *(v0 + 8);

    v8 = *(v0 + 10);
  }

  v9 = v5 & 0xFFFFFFFFFFFFFFF8;
  v10 = *(v1 - 8);
  if (!(*(v10 + 48))(&v0[v4], 1, v1))
  {
    (*(v10 + 8))(&v0[v4], v1);
  }

  v11 = v0[v9 + 16];
  if (v11 != 255)
  {
    sub_100032650(*&v0[v9], *&v0[v9 + 8], v11);
  }

  return _swift_deallocObject(v0, v9 + 17, v3 | 7);
}

uint64_t sub_10003EFC0(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v7 = *(v3 + 16);
  v8 = *(v3 + 24);
  v9 = *(type metadata accessor for Optional() - 8);
  v10 = (*(v9 + 80) + 90) & ~*(v9 + 80);
  v11 = v3 + ((*(v9 + 64) + v10 + 7) & 0xFFFFFFFFFFFFFFF8);
  return sub_10003D154(a1, a2, a3, *(v3 + 32), (v3 + 40), *(v3 + 89), v3 + v10, *v11, *(v11 + 8), *(v11 + 16));
}

uint64_t sub_10003F0EC()
{
  v1 = *(v0 + 2);
  v2 = *(type metadata accessor for Optional() - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 104) & ~v3;
  v5 = *(v2 + 64) + v4 + 7;
  v6 = *(v0 + 3);

  if (*(v0 + 5))
  {

    v7 = *(v0 + 7);

    v8 = *(v0 + 9);
  }

  v9 = v5 & 0xFFFFFFFFFFFFFFF8;
  v10 = *(v0 + 12);

  v11 = *(v1 - 8);
  if (!(*(v11 + 48))(&v0[v4], 1, v1))
  {
    (*(v11 + 8))(&v0[v4], v1);
  }

  v12 = v0[v9 + 16];
  if (v12 != 255)
  {
    sub_100032650(*&v0[v9], *&v0[v9 + 8], v12);
  }

  return _swift_deallocObject(v0, v9 + 17, v3 | 7);
}

uint64_t sub_10003F25C(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v7 = *(v3 + 16);
  v8 = *(type metadata accessor for Optional() - 8);
  v9 = (*(v8 + 80) + 104) & ~*(v8 + 80);
  v10 = (*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  return sub_10003D948(a1, a2, a3, *(v3 + 24), (v3 + 32), *(v3 + 81), *(v3 + 88), *(v3 + 96), v3 + v9, *(v3 + v10), *(v3 + v10 + 8), *(v3 + v10 + 16));
}

uint64_t sub_10003F344()
{
  v1 = *(v0 + 32);

  if (*(v0 + 48))
  {

    v2 = *(v0 + 64);

    v3 = *(v0 + 80);
  }

  v4 = *(v0 + 96);

  v5 = *(v0 + 120);
  if (v5 != 255)
  {
    sub_100032650(*(v0 + 104), *(v0 + 112), v5);
  }

  return _swift_deallocObject(v0, 121, 7);
}

uint64_t sub_10003F3B4(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v5 = *(v3 + 16);
  v6 = *(v3 + 24);
  return sub_10003E08C(a1, a2, a3, *(v3 + 32), (v3 + 40), *(v3 + 89), *(v3 + 96), *(v3 + 104), *(v3 + 112), *(v3 + 120));
}

uint64_t sub_10003F3FC()
{
  v1 = *(v0 + 32);

  if (*(v0 + 48))
  {

    v2 = *(v0 + 64);

    v3 = *(v0 + 80);
  }

  v4 = *(v0 + 112);
  if (v4 != 255)
  {
    sub_100032650(*(v0 + 96), *(v0 + 104), v4);
  }

  return _swift_deallocObject(v0, 113, 7);
}

uint64_t sub_10003F4C4()
{
  v1 = *(v0 + 24);

  if (*(v0 + 40))
  {

    v2 = *(v0 + 56);

    v3 = *(v0 + 72);
  }

  v4 = *(v0 + 96);

  v5 = *(v0 + 104);

  v6 = *(v0 + 128);
  if (v6 != 255)
  {
    sub_100032650(*(v0 + 112), *(v0 + 120), v6);
  }

  return _swift_deallocObject(v0, 129, 7);
}

uint64_t sub_10003F588()
{
  v1 = *(v0 + 24);

  if (*(v0 + 40))
  {

    v2 = *(v0 + 56);

    v3 = *(v0 + 72);
  }

  v4 = *(v0 + 96);

  v5 = *(v0 + 120);
  if (v5 != 255)
  {
    sub_100032650(*(v0 + 104), *(v0 + 112), v5);
  }

  return _swift_deallocObject(v0, 121, 7);
}

uint64_t sub_10003F65C(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_10003F698(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_10003F6D8()
{
  result = qword_1000B5498;
  if (!qword_1000B5498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B5498);
  }

  return result;
}

unint64_t sub_10003F730()
{
  result = qword_1000B54A0[0];
  if (!qword_1000B54A0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1000B54A0);
  }

  return result;
}

uint64_t OptionGroup.title.getter(uint64_t a1)
{
  v2 = (v1 + *(a1 + 44));
  v3 = *v2;
  v4 = v2[1];

  return v3;
}

uint64_t OptionGroup.title.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = (v3 + *(a3 + 44));
  v7 = v6[1];

  *v6 = a1;
  v6[1] = a2;
  return result;
}

Swift::String_optional (__swiftcall *OptionGroup.title.modify(uint64_t a1, uint64_t a2))(Swift::String argument)
{
  result = String.init(argument:);
  v4 = v2 + *(a2 + 44);
  return result;
}

uint64_t sub_10003F87C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for OptionGroup();
  *(a2 + v4[10]) = 0;
  v5 = (a2 + v4[11]);
  *v5 = 0;
  v5[1] = 0xE000000000000000;
  v6 = type metadata accessor for Parsed();
  result = (*(*(v6 - 8) + 32))(a2, a1, v6);
  *(a2 + v4[9]) = 0;
  return result;
}

uint64_t OptionGroup.init(from:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v42 = a4;
  v40 = a3;
  v41 = type metadata accessor for OptionGroup();
  v37 = *(v41 - 8);
  v8 = *(v37 + 64);
  __chkstk_darwin();
  v38 = v34 - v9;
  v34[0] = type metadata accessor for Parsed();
  v10 = *(*(v34[0] - 8) + 64);
  __chkstk_darwin();
  v12 = v34 - v11;
  v13 = type metadata accessor for Optional();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin();
  v17 = v34 - v16;
  v39 = *(a2 - 8);
  v18 = *(v39 + 64);
  __chkstk_darwin();
  v36 = v34 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v35 = v34 - v20;
  __chkstk_darwin();
  v22 = v34 - v21;
  v60 = a1;
  sub_10002F35C(a1, v51);
  v34[1] = sub_1000021C0(&qword_1000B5528, &unk_100094A90);
  if (swift_dynamicCast())
  {
    v56 = v47;
    v57 = v48;
    v58 = v49;
    v59 = v50;
    v52 = v43;
    v53 = v44;
    v54 = v45;
    v55 = v46;
    sub_10004FEE8(a2);
    if (!v4)
    {
      v30 = v39;
      (*(v39 + 56))(v17, 0, 1, a2);
      (*(v30 + 32))(v22, v17, a2);
      (*(v30 + 16))(v12, v22, a2);
      swift_storeEnumTagMultiPayload();
      v31 = v12;
      v26 = v40;
      sub_10003F87C(v31, v42);
      (*(v30 + 8))(v22, a2);
      sub_100040178(&v52);
      v23 = v60;
      v24 = v41;
LABEL_10:
      v32 = v36;
      OptionGroup.wrappedValue.getter(v24, v36);
      (*(v26 + 24))(a2, v26);
      Option.wrappedValue.setter(v32, v24);
      return sub_100002B38(v23);
    }

    (*(v39 + 56))(v17, 1, 1, a2);
    sub_100040178(&v52);
    (*(v14 + 8))(v17, v13);
    v5 = 0;
  }

  else
  {
    v50 = 0;
    v48 = 0u;
    v49 = 0u;
    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    v43 = 0u;
    sub_10003FFA4(&v43);
  }

  v23 = v60;
  sub_10002F35C(v60, &v52);
  v24 = v41;
  WitnessTable = swift_getWitnessTable();
  v26 = v40;
  v27 = *(v40 + 8);
  v28 = v38;
  sub_10006A178(&v52, v24, WitnessTable, v38);
  if (!v5)
  {
    (*(v37 + 32))(v42, v28, v24);
    sub_10002F35C(v23, v51);
    if (swift_dynamicCast())
    {
      v56 = v47;
      v57 = v48;
      v58 = v49;
      v59 = v50;
      v52 = v43;
      v53 = v44;
      v54 = v45;
      v55 = v46;
      v29 = v35;
      OptionGroup.wrappedValue.getter(v24, v35);
      sub_10005007C(v29, a2, a2, v26);
      (*(v39 + 8))(v29, a2);
      sub_100040178(&v52);
    }

    else
    {
      v50 = 0;
      v48 = 0u;
      v49 = 0u;
      v46 = 0u;
      v47 = 0u;
      v44 = 0u;
      v45 = 0u;
      v43 = 0u;
      sub_10003FFA4(&v43);
    }

    goto LABEL_10;
  }

  return sub_100002B38(v23);
}

uint64_t sub_10003FFA4(uint64_t a1)
{
  v2 = sub_1000021C0(&qword_1000B5530, &qword_1000924C8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t OptionGroup.wrappedValue.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = *(a1 + 16);
  v6 = type metadata accessor for Parsed();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6);
  v9 = &v12 - v8;
  (*(v10 + 16))(&v12 - v8, v3, v6);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    return (*(*(v5 - 8) + 32))(a2, v9, v5);
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t OptionGroup.init(title:visibility:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v12 = type metadata accessor for Parsed();
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v15 = (&v21 - v14);
  v16 = swift_allocObject();
  v16[2] = a4;
  v16[3] = a5;
  v16[4] = a1;
  v16[5] = a2;
  sub_10006A034(sub_100040430, v16, v15);
  sub_10003F87C(v15, a6);
  v17 = type metadata accessor for OptionGroup();
  *(a6 + *(v17 + 36)) = a3;
  v18 = (a6 + *(v17 + 44));
  v19 = v18[1];

  *v18 = a1;
  v18[1] = a2;
  return result;
}

uint64_t sub_1000402EC(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7)
{

  v14 = sub_10004C130(a6, a7, 2, a1, a2, a3);
  v15 = HIBYTE(a5) & 0xF;
  if ((a5 & 0x2000000000000000) == 0)
  {
    v15 = a4 & 0xFFFFFFFFFFFFLL;
  }

  if (v15)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      goto LABEL_11;
    }

    for (i = *(v14 + 16); i; i = *(v14 + 16))
    {
      v17 = 0;
      v18 = (v14 + 152);
      while (v17 < i)
      {
        v19 = *v18;
        *(v18 - 1) = a4;
        *v18 = a5;

        ++v17;
        i = *(v14 + 16);
        v18 += 24;
        if (v17 >= i)
        {
          return v14;
        }
      }

      __break(1u);
LABEL_11:
      v14 = sub_100058864(v14);
    }
  }

  return v14;
}

uint64_t sub_1000403F8()
{
  v1 = *(v0 + 40);

  return _swift_deallocObject(v0, 48, 7);
}

void (*OptionGroup.wrappedValue.modify(void *a1, uint64_t a2))(uint64_t **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x30uLL);
  }

  v6 = v5;
  *a1 = v5;
  *v5 = a2;
  v5[1] = v2;
  v7 = *(a2 + 16);
  v5[2] = v7;
  v8 = *(v7 - 8);
  v5[3] = v8;
  v9 = *(v8 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v5[4] = swift_coroFrameAlloc();
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(v9);
    v10 = malloc(v9);
  }

  v6[5] = v10;
  OptionGroup.wrappedValue.getter(a2, v10);
  return sub_10002F754;
}

uint64_t sub_100040568@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, uint64_t a3@<X1>)
{
  v4 = *(a3 + 16);
  v3 = *(a3 + 24);
  return sub_10003F87C(a1, a2);
}

unint64_t OptionGroup.description.getter(uint64_t a1)
{
  v2 = v1;
  v3 = *(a1 + 16);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin();
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v9 = &v17 - v8;
  v10 = type metadata accessor for Parsed();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin();
  v14 = &v17 - v13;
  (*(v11 + 16))(&v17 - v13, v2, v10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v11 + 8))(v14, v10);
    return 0xD000000000000019;
  }

  else
  {
    (*(v4 + 32))(v9, v14, v3);
    (*(v4 + 16))(v7, v9, v3);
    v16 = String.init<A>(describing:)();
    (*(v4 + 8))(v9, v3);
    return v16;
  }
}

uint64_t sub_1000407EC(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_100040830(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = type metadata accessor for Parsed();
  if (v3 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1000408BC(_DWORD *a1, int a2, uint64_t a3)
{
  v3 = *(*(*(a3 + 16) - 8) + 64);
  if (v3 <= 0x10)
  {
    v3 = 16;
  }

  if (!a2)
  {
    return 0;
  }

  if ((a2 & 0x80000000) == 0)
  {
    goto LABEL_5;
  }

  v6 = ((v3 + 10) & 0xFFFFFFFFFFFFFFF8) + 16;
  v7 = v6 & 0xFFFFFFF8;
  v8 = a2 - 2147483646;
  if ((v6 & 0xFFFFFFF8) != 0)
  {
    v8 = 2;
  }

  if (v8 >= 0x10000)
  {
    v9 = 4;
  }

  else
  {
    v9 = 2;
  }

  if (v8 < 0x100)
  {
    v10 = 1;
  }

  else
  {
    v10 = v9;
  }

  if (v10 == 4)
  {
    v11 = *(a1 + v6);
    if (!v11)
    {
      goto LABEL_5;
    }
  }

  else if (v10 == 2)
  {
    v11 = *(a1 + v6);
    if (!v11)
    {
      goto LABEL_5;
    }
  }

  else
  {
    v11 = *(a1 + v6);
    if (!v11)
    {
LABEL_5:
      v4 = *(((a1 + v3 + 10) & 0xFFFFFFFFFFFFFFF8) + 8);
      if (v4 >= 0xFFFFFFFF)
      {
        LODWORD(v4) = -1;
      }

      return (v4 + 1);
    }
  }

  v12 = v11 - 1;
  if (v7)
  {
    v12 = 0;
    LODWORD(v7) = *a1;
  }

  return (v7 | v12) ^ 0x80000000;
}

int *sub_10004099C(int *result, int a2, int a3, uint64_t a4)
{
  v4 = *(*(*(a4 + 16) - 8) + 64);
  if (v4 <= 0x10)
  {
    v4 = 16;
  }

  v5 = ((v4 + 10) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (a3 < 0)
  {
    v7 = a3 - 2147483646;
    if (((v4 + 10) & 0xFFFFFFF8) != 0xFFFFFFF0)
    {
      v7 = 2;
    }

    if (v7 >= 0x10000)
    {
      v8 = 4;
    }

    else
    {
      v8 = 2;
    }

    if (v7 < 0x100)
    {
      v6 = 1;
    }

    else
    {
      v6 = v8;
    }

    if ((a2 & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_18:
    v9 = a2 & 0x7FFFFFFF;
    if (((v4 + 10) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v10 = v9 + 1;
    }

    else
    {
      v10 = 1;
    }

    if (((v4 + 10) & 0xFFFFFFF8) != 0xFFFFFFF0)
    {
      v11 = result;
      bzero(result, v5);
      result = v11;
      *v11 = v9;
    }

    if (v6 > 1)
    {
      if (v6 == 2)
      {
        *(result + v5) = v10;
      }

      else
      {
        *(result + v5) = v10;
      }
    }

    else if (v6)
    {
      *(result + v5) = v10;
    }

    return result;
  }

  v6 = 0;
  if (a2 < 0)
  {
    goto LABEL_18;
  }

LABEL_5:
  if (v6 <= 1)
  {
    if (v6)
    {
      *(result + v5) = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_29;
    }

LABEL_28:
    if (!a2)
    {
      return result;
    }

    goto LABEL_29;
  }

  if (v6 == 2)
  {
    *(result + v5) = 0;
    goto LABEL_28;
  }

  *(result + v5) = 0;
  if (a2)
  {
LABEL_29:
    *(((result + v4 + 10) & 0xFFFFFFFFFFFFFFF8) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t static AsyncParsableCommand.main(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[24] = a3;
  v4[25] = v3;
  v4[22] = a1;
  v4[23] = a2;
  return _swift_task_switch(sub_100040AF4, 0, 0);
}

uint64_t sub_100040AF4()
{
  v1 = *(v0 + 200);
  v2 = *(v0 + 176);
  v3 = *(v0 + 184);
  v4 = *(*(v0 + 192) + 8);
  *(v0 + 208) = v4;
  static ParsableCommand.parseAsRoot(_:)(v2, v4, v0 + 16);
  sub_10002F35C(v0 + 16, v0 + 96);
  sub_1000021C0(&qword_1000B55E8, &qword_100092588);
  sub_1000021C0(&qword_1000B55F0, &qword_100092590);
  if (swift_dynamicCast())
  {
    sub_100040F6C((v0 + 136), v0 + 56);
    v5 = *(v0 + 80);
    v6 = *(v0 + 88);
    sub_100006190(v0 + 56, v5);
    v7 = *(v6 + 16);
    v14 = (v7 + *v7);
    v8 = v7[1];
    v9 = swift_task_alloc();
    *(v0 + 216) = v9;
    *v9 = v0;
    v9[1] = sub_100040D70;

    return v14(v5, v6);
  }

  else
  {
    *(v0 + 168) = 0;
    *(v0 + 152) = 0u;
    *(v0 + 136) = 0u;
    sub_100040F04(v0 + 136);
    v11 = *(v0 + 40);
    v12 = *(v0 + 48);
    sub_100006190(v0 + 16, v11);
    (*(v12 + 32))(v11, v12);
    sub_100002B38((v0 + 16));
    v13 = *(v0 + 8);

    return v13();
  }
}

uint64_t sub_100040D70()
{
  v2 = *(*v1 + 216);
  v5 = *v1;
  *(*v1 + 224) = v0;

  if (v0)
  {
    v3 = sub_100040E84;
  }

  else
  {
    v3 = sub_1000415F4;
  }

  return _swift_task_switch(v3, 0, 0);
}

void sub_100040E84()
{
  sub_100002B38(v0 + 7);
  sub_100002B38(v0 + 2);
  v1 = v0[28];
  v2 = v0[25];
  v3 = v0[26];
  v4 = v0[23];
  swift_errorRetain();
  v5 = *(v3 + 8);

  static ParsableArguments.exit(withError:)(v1, v4, v5);
}

uint64_t sub_100040F04(uint64_t a1)
{
  v2 = sub_1000021C0(&qword_1000B55F8, &qword_100092598);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100040F6C(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t static AsyncParsableCommand.main()(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10004102C;

  return static AsyncParsableCommand.main(_:)(0, a1, a2);
}

uint64_t sub_10004102C()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t static AsyncMainProtocol.main()(uint64_t a1, uint64_t a2)
{
  *(v2 + 176) = a1;
  *(v2 + 184) = a2;
  return _swift_task_switch(sub_100041140, 0, 0);
}

uint64_t sub_100041140()
{
  v1 = *(v0 + 176);
  v2 = *(v0 + 184);
  *(v0 + 192) = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  *(v0 + 200) = AssociatedConformanceWitness;
  static ParsableCommand.parseAsRoot(_:)(0, AssociatedConformanceWitness, v0 + 16);
  sub_10002F35C(v0 + 16, v0 + 96);
  sub_1000021C0(&qword_1000B55E8, &qword_100092588);
  sub_1000021C0(&qword_1000B55F0, &qword_100092590);
  if (swift_dynamicCast())
  {
    sub_100040F6C((v0 + 136), v0 + 56);
    v4 = *(v0 + 80);
    v5 = *(v0 + 88);
    sub_100006190(v0 + 56, v4);
    v6 = *(v5 + 16);
    v13 = (v6 + *v6);
    v7 = v6[1];
    v8 = swift_task_alloc();
    *(v0 + 208) = v8;
    *v8 = v0;
    v8[1] = sub_100041400;

    return v13(v4, v5);
  }

  else
  {
    *(v0 + 168) = 0;
    *(v0 + 152) = 0u;
    *(v0 + 136) = 0u;
    sub_100040F04(v0 + 136);
    v10 = *(v0 + 40);
    v11 = *(v0 + 48);
    sub_100006190(v0 + 16, v10);
    (*(v11 + 32))(v10, v11);
    sub_100002B38((v0 + 16));
    v12 = *(v0 + 8);

    return v12();
  }
}

uint64_t sub_100041400()
{
  v2 = *(*v1 + 208);
  v5 = *v1;
  *(*v1 + 216) = v0;

  if (v0)
  {
    v3 = sub_10004157C;
  }

  else
  {
    v3 = sub_100041514;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100041514()
{
  sub_100002B38(v0 + 7);
  sub_100002B38(v0 + 2);
  v1 = v0[1];

  return v1();
}

void sub_10004157C()
{
  sub_100002B38(v0 + 7);
  sub_100002B38(v0 + 2);
  v1 = v0[27];
  v4 = v0 + 24;
  v3 = v0[24];
  v2 = v4[1];
  swift_errorRetain();
  v5 = *(v2 + 8);

  static ParsableArguments.exit(withError:)(v1, v3, v5);
}

void CommandConfiguration.subcommands.getter()
{
  v1 = *(v0 + 112);
  v2 = *(v1 + 16);
  if (!v2)
  {
    v4 = &_swiftEmptyArrayStorage;
LABEL_19:
    v16 = *(v0 + 104);

    sub_100041744(v4);
    return;
  }

  v3 = (v1 + 48);
  v4 = &_swiftEmptyArrayStorage;
  while (1)
  {
    v5 = *v3;
    v6 = *(*v3 + 16);
    v7 = *(v4 + 2);
    v8 = v7 + v6;
    if (__OFADD__(v7, v6))
    {
      break;
    }

    v9 = *v3;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (isUniquelyReferenced_nonNull_native && v8 <= *(v4 + 3) >> 1)
    {
      if (*(v5 + 16))
      {
        goto LABEL_14;
      }
    }

    else
    {
      if (v7 <= v8)
      {
        v11 = v7 + v6;
      }

      else
      {
        v11 = v7;
      }

      v4 = sub_100043048(isUniquelyReferenced_nonNull_native, v11, 1, v4);
      if (*(v5 + 16))
      {
LABEL_14:
        v12 = *(v4 + 2);
        if ((*(v4 + 3) >> 1) - v12 < v6)
        {
          goto LABEL_22;
        }

        memcpy(&v4[16 * v12 + 32], (v5 + 32), 16 * v6);

        if (v6)
        {
          v13 = *(v4 + 2);
          v14 = __OFADD__(v13, v6);
          v15 = v13 + v6;
          if (v14)
          {
            goto LABEL_23;
          }

          *(v4 + 2) = v15;
        }

        goto LABEL_4;
      }
    }

    if (v6)
    {
      goto LABEL_21;
    }

LABEL_4:
    v3 += 3;
    if (!--v2)
    {
      goto LABEL_19;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
}

uint64_t sub_100041744(uint64_t result)
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
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
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

  result = sub_100043048(result, v12, 1, v3);
  v3 = result;
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
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + 16 * v8 + 32), (v6 + 32), 16 * v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_100041830(uint64_t result)
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
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_100042F3C(result, v11, 1, v3);
  v3 = result;
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
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
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

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_100041924(uint64_t result)
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
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_100043C68(result, v11, 1, v3);
  v3 = result;
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
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
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

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_100041A18(uint64_t result)
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
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_100043A20(result, v11, 1, v3);
  v3 = result;
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
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
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

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_100041B10(uint64_t result)
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
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_100043274(result, v11, 1, v3);
  v3 = result;
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
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
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

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_100041C08(uint64_t result)
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
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_100043F98(result, v11, 1, v3);
  v3 = result;
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
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
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

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_1000424C8(uint64_t result)
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
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_1000436D4(result, v11, 1, v3);
  v3 = result;
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
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
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

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_1000425BC(void *result)
{
  v2 = result[2];
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
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= v3[3] >> 1)
  {
    if (v6[2])
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_1000442E0(result, v11, 1, v3);
  v3 = result;
  if (!v6[2])
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((v3[3] >> 1) - v3[2] < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  sub_1000021C0(&qword_1000B5610, &qword_1000926A8);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = v3[2];
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    v3[2] = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t CommandConfiguration.usage.getter()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return v1;
}

uint64_t CommandConfiguration.usage.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 56);

  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
  return result;
}

uint64_t ArgumentInfoV0.valueName.getter()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);

  return v1;
}

uint64_t ArgumentInfoV0.valueName.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 72);

  *(v2 + 64) = a1;
  *(v2 + 72) = a2;
  return result;
}

uint64_t ArgumentInfoV0.defaultValue.getter()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 88);

  return v1;
}

uint64_t ArgumentInfoV0.defaultValue.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 88);

  *(v2 + 80) = a1;
  *(v2 + 88) = a2;
  return result;
}

uint64_t CommandConfiguration.subcommands.setter(uint64_t a1)
{
  v3 = *(v1 + 112);

  *(v1 + 112) = _swiftEmptyArrayStorage;
  v4 = *(v1 + 104);

  *(v1 + 104) = a1;
  return result;
}

void (*CommandConfiguration.subcommands.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0xB8uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 176) = v1;
  v5 = *(v1 + 16);
  *v3 = *v1;
  *(v3 + 16) = v5;
  v6 = *(v1 + 32);
  v7 = *(v1 + 48);
  v8 = *(v1 + 80);
  *(v3 + 64) = *(v1 + 64);
  *(v3 + 80) = v8;
  *(v3 + 32) = v6;
  *(v3 + 48) = v7;
  v9 = *(v1 + 96);
  v10 = *(v1 + 112);
  v11 = *(v1 + 128);
  *(v3 + 144) = *(v1 + 144);
  *(v3 + 112) = v10;
  *(v3 + 128) = v11;
  *(v3 + 96) = v9;
  *(v3 + 152) = vextq_s8(*(v3 + 104), *(v3 + 104), 8uLL);
  CommandConfiguration.subcommands.getter();
  *(v4 + 168) = v12;
  return sub_100042964;
}

void sub_100042964(uint64_t a1, char a2)
{
  v2 = *a1;
  v4 = (*a1 + 168);
  v3 = *v4;
  v5 = *(*a1 + 176);
  if (a2)
  {
    v6 = *(*a1 + 168);

    sub_100002BCC(v2 + 152, &qword_1000B5600, &qword_100092600);
    sub_100002BCC(v2 + 160, &qword_1000B5608, &qword_100092608);
    *(v5 + 104) = v3;
    *(v5 + 112) = _swiftEmptyArrayStorage;
    v7 = *v4;
  }

  else
  {
    sub_100002BCC(v2 + 152, &qword_1000B5600, &qword_100092600);
    sub_100002BCC(v2 + 160, &qword_1000B5608, &qword_100092608);
    *(v5 + 104) = v3;
    *(v5 + 112) = _swiftEmptyArrayStorage;
  }

  free(v2);
}

uint64_t CommandConfiguration.ungroupedSubcommands.setter(uint64_t a1)
{
  v3 = *(v1 + 104);

  *(v1 + 104) = a1;
  return result;
}

uint64_t CommandConfiguration.groupedSubcommands.setter(uint64_t a1)
{
  v3 = *(v1 + 112);

  *(v1 + 112) = a1;
  return result;
}

uint64_t CommandConfiguration.defaultSubcommand.getter()
{
  result = *(v0 + 120);
  v2 = *(v0 + 128);
  return result;
}

uint64_t CommandConfiguration.defaultSubcommand.setter(uint64_t result, uint64_t a2)
{
  *(v2 + 120) = result;
  *(v2 + 128) = a2;
  return result;
}

uint64_t CommandConfiguration.helpNames.setter(uint64_t a1)
{
  v3 = *(v1 + 136);

  *(v1 + 136) = a1;
  return result;
}

uint64_t CommandConfiguration.aliases.setter(uint64_t a1)
{
  v3 = *(v1 + 144);

  *(v1 + 144) = a1;
  return result;
}

double CommandConfiguration.init(commandName:abstract:usage:discussion:version:shouldDisplay:subcommands:groupedSubcommands:defaultSubcommand:helpNames:aliases:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, __int128 a10, char a11, uint64_t a12, __int128 a13, __int128 a14, uint64_t a15)
{
  *&v22 = a1;
  *(&v22 + 1) = a2;
  v23 = 0uLL;
  *&v24 = a3;
  *(&v24 + 1) = a4;
  *&v25 = a5;
  *(&v25 + 1) = a6;
  *&v26 = a7;
  *(&v26 + 1) = a8;
  v27 = a10;
  LOBYTE(v28) = a11;
  *(&v28 + 1) = a12;
  v29 = a13;
  v30 = a14;
  v31 = a15;
  v32[0] = a1;
  v32[1] = a2;
  v32[2] = 0;
  v32[3] = 0;
  v32[4] = a3;
  v32[5] = a4;
  v32[6] = a5;
  v32[7] = a6;
  v32[8] = a7;
  v32[9] = a8;
  v33 = a10;
  v34 = a11;
  v35 = a12;
  v36 = a13;
  v37 = a14;
  v38 = a15;
  sub_10004314C(&v22, v21);
  sub_100027BE4(v32);
  v16 = v29;
  *(a9 + 96) = v28;
  *(a9 + 112) = v16;
  *(a9 + 128) = v30;
  *(a9 + 144) = v31;
  v17 = v25;
  *(a9 + 32) = v24;
  *(a9 + 48) = v17;
  v18 = v27;
  *(a9 + 64) = v26;
  *(a9 + 80) = v18;
  result = *&v22;
  v20 = v23;
  *a9 = v22;
  *(a9 + 16) = v20;
  return result;
}

double CommandConfiguration.init(commandName:_superCommandName:abstract:usage:discussion:version:shouldDisplay:subcommands:groupedSubcommands:defaultSubcommand:helpNames:aliases:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, __int128 a10, __int128 a11, char a12, uint64_t a13, __int128 a14, __int128 a15, uint64_t a16)
{
  *&v23 = a1;
  *(&v23 + 1) = a2;
  *&v24 = a3;
  *(&v24 + 1) = a4;
  *&v25 = a5;
  *(&v25 + 1) = a6;
  *&v26 = a7;
  *(&v26 + 1) = a8;
  v27 = a10;
  v28 = a11;
  LOBYTE(v29) = a12;
  *(&v29 + 1) = a13;
  v30 = a14;
  v31 = a15;
  v32 = a16;
  v33[0] = a1;
  v33[1] = a2;
  v33[2] = a3;
  v33[3] = a4;
  v33[4] = a5;
  v33[5] = a6;
  v33[6] = a7;
  v33[7] = a8;
  v34 = a10;
  v35 = a11;
  v36 = a12;
  v37 = a13;
  v38 = a14;
  v39 = a15;
  v40 = a16;
  sub_10004314C(&v23, v22);
  sub_100027BE4(v33);
  v17 = v30;
  *(a9 + 96) = v29;
  *(a9 + 112) = v17;
  *(a9 + 128) = v31;
  *(a9 + 144) = v32;
  v18 = v26;
  *(a9 + 32) = v25;
  *(a9 + 48) = v18;
  v19 = v28;
  *(a9 + 64) = v27;
  *(a9 + 80) = v19;
  result = *&v23;
  v21 = v24;
  *a9 = v23;
  *(a9 + 16) = v21;
  return result;
}

double CommandConfiguration.init(commandName:abstract:usage:discussion:version:shouldDisplay:subcommands:defaultSubcommand:helpNames:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, __int128 a10, char a11, uint64_t a12, uint64_t a13, __int128 a14)
{
  *&v21 = a1;
  *(&v21 + 1) = a2;
  v22 = 0uLL;
  *&v23 = a3;
  *(&v23 + 1) = a4;
  *&v24 = a5;
  *(&v24 + 1) = a6;
  *&v25 = a7;
  *(&v25 + 1) = a8;
  v26 = a10;
  LOBYTE(v27) = a11;
  *(&v27 + 1) = a12;
  *&v28 = _swiftEmptyArrayStorage;
  *(&v28 + 1) = a13;
  v29 = a14;
  v30 = _swiftEmptyArrayStorage;
  v31[0] = a1;
  v31[1] = a2;
  v31[2] = 0;
  v31[3] = 0;
  v31[4] = a3;
  v31[5] = a4;
  v31[6] = a5;
  v31[7] = a6;
  v31[8] = a7;
  v31[9] = a8;
  v32 = a10;
  v33 = a11;
  v34 = a12;
  v35 = _swiftEmptyArrayStorage;
  v36 = a13;
  v37 = a14;
  v38 = _swiftEmptyArrayStorage;
  sub_10004314C(&v21, v20);
  sub_100027BE4(v31);
  v15 = v28;
  *(a9 + 96) = v27;
  *(a9 + 112) = v15;
  *(a9 + 128) = v29;
  *(a9 + 144) = v30;
  v16 = v24;
  *(a9 + 32) = v23;
  *(a9 + 48) = v16;
  v17 = v26;
  *(a9 + 64) = v25;
  *(a9 + 80) = v17;
  result = *&v21;
  v19 = v22;
  *a9 = v21;
  *(a9 + 16) = v19;
  return result;
}

double CommandConfiguration.init(commandName:abstract:discussion:version:shouldDisplay:subcommands:defaultSubcommand:helpNames:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, char a10, uint64_t a11, uint64_t a12, __int128 a13)
{
  *&v20 = a1;
  *(&v20 + 1) = a2;
  v21 = 0uLL;
  *&v22 = a3;
  *(&v22 + 1) = a4;
  v23 = xmmword_100091310;
  *&v24 = a5;
  *(&v24 + 1) = a6;
  *&v25 = a7;
  *(&v25 + 1) = a8;
  LOBYTE(v26) = a10;
  *(&v26 + 1) = a11;
  *&v27 = _swiftEmptyArrayStorage;
  *(&v27 + 1) = a12;
  v28 = a13;
  v29 = _swiftEmptyArrayStorage;
  v30[0] = a1;
  v30[1] = a2;
  v30[2] = 0;
  v30[3] = 0;
  v30[4] = a3;
  v30[5] = a4;
  v31 = xmmword_100091310;
  v32 = a5;
  v33 = a6;
  v34 = a7;
  v35 = a8;
  v36 = a10;
  v37 = a11;
  v38 = _swiftEmptyArrayStorage;
  v39 = a12;
  v40 = a13;
  v41 = _swiftEmptyArrayStorage;
  sub_10004314C(&v20, v19);
  sub_100027BE4(v30);
  v14 = v27;
  *(a9 + 96) = v26;
  *(a9 + 112) = v14;
  *(a9 + 128) = v28;
  *(a9 + 144) = v29;
  v15 = v23;
  *(a9 + 32) = v22;
  *(a9 + 48) = v15;
  v16 = v25;
  *(a9 + 64) = v24;
  *(a9 + 80) = v16;
  result = *&v20;
  v18 = v21;
  *a9 = v20;
  *(a9 + 16) = v18;
  return result;
}

char *sub_100042F3C(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000021C0(&qword_1000B51D0, &qword_100092A50);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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
    v10 = &_swiftEmptyArrayStorage;
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

char *sub_100043048(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000021C0(&qword_1000B5190, &qword_100092750);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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
    v10 = &_swiftEmptyArrayStorage;
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
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

__n128 sub_100043184(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  result = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 128);
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 112) = v7;
  *(a1 + 128) = v8;
  *(a1 + 96) = result;
  return result;
}

uint64_t sub_1000431B8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 152))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 40);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100043200(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0u;
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
      *(result + 152) = 1;
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

    *(result + 152) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

char *sub_100043274(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000021C0(&qword_1000B5640, &qword_1000926E8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_100043390(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000021C0(&qword_1000B5638, &qword_1000926E0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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
    v10 = &_swiftEmptyArrayStorage;
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
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

void *sub_100043494(void *result, int64_t a2, char a3, void *a4)
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

  if (v9)
  {
    sub_1000021C0(&qword_1000B5620, &qword_1000926C0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 5);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[4 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 32 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1000021C0(&qword_1000B5628, &qword_1000926C8);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1000435C8(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000021C0(&qword_1000B5648, &unk_1000926F0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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
    v10 = &_swiftEmptyArrayStorage;
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

char *sub_1000436D4(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000021C0(&qword_1000B5630, &unk_1000926D0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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
    v10 = &_swiftEmptyArrayStorage;
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

char *sub_1000437E0(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000021C0(&qword_1000B51B0, &qword_100091388);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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
    v10 = &_swiftEmptyArrayStorage;
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

void *sub_1000438EC(void *result, int64_t a2, char a3, void *a4)
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

  if (v9)
  {
    sub_1000021C0(&qword_1000B5650, &unk_100092700);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1000021C0(&qword_1000B5180, &unk_100095FF0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_100043A20(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000021C0(&qword_1000B5680, &qword_100092740);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 56);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[56 * v8])
    {
      memmove(v12, v13, 56 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_100043B48(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000021C0(&qword_1000B52F8, &qword_1000924C0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 192);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[192 * v8])
    {
      memmove(v12, v13, 192 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_100043C68(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000021C0(&qword_1000B5688, &qword_100092748);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 + 31;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 6);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[64 * v8])
    {
      memmove(v13, v14, v8 << 6);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_100043D74(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000021C0(&qword_1000B5678, &qword_100092738);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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
    v10 = _swiftEmptyArrayStorage;
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

char *sub_100043E78(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000021C0(&qword_1000B5668, &qword_100092728);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[48 * v8])
    {
      memmove(v12, v13, 48 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_100043F98(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000021C0(&qword_1000B5660, &qword_100092720);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 56);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[56 * v8])
    {
      memmove(v12, v13, 56 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1000440BC(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000021C0(&qword_1000B5658, &unk_100092710);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 136);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[136 * v8])
    {
      memmove(v12, v13, 136 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1000441DC(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000021C0(&qword_1000B5670, &qword_100092730);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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
    v10 = _swiftEmptyArrayStorage;
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

void *sub_1000442E0(void *result, int64_t a2, char a3, void *a4)
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

  if (v9)
  {
    sub_1000021C0(&qword_1000B5618, &unk_1000926B0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1000021C0(&qword_1000B5610, &qword_1000926A8);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t *sub_100044428(uint64_t *result, char *__dst, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9 = result;
  if (!__dst)
  {
    v10 = 0;
    goto LABEL_10;
  }

  v10 = a3;
  if (!a3)
  {
LABEL_10:
    v12 = a4;
    goto LABEL_11;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    if (a5 <= a4)
    {
      v11 = a4;
    }

    else
    {
      v11 = a5;
    }

    if (a5 == a4)
    {
      v12 = a5;
      v10 = a5 - a4;
LABEL_11:
      *v9 = a4;
      v9[1] = a5;
      v9[2] = a6;
      v9[3] = a7;
      v9[4] = v12;
      return v10;
    }

    v13 = __dst;
    v25 = a5 - a4;
    v26 = a5;
    v27 = a7;
    v14 = 0;
    v15 = v11 - a4;
    v16 = a3 - 1;
    v17 = a4 - a5;
    v18 = (a6 + 192 * a4 + 32);
    while (v15 != v14)
    {
      if (a4 < 0)
      {
        goto LABEL_21;
      }

      if ((a4 + v14) >= *(a6 + 16))
      {
        goto LABEL_22;
      }

      v19 = v18[9];
      v29[8] = v18[8];
      v29[9] = v19;
      v20 = v18[11];
      v29[10] = v18[10];
      v29[11] = v20;
      v21 = v18[5];
      v29[4] = v18[4];
      v29[5] = v21;
      v22 = v18[7];
      v29[6] = v18[6];
      v29[7] = v22;
      v23 = v18[1];
      v29[0] = *v18;
      v29[1] = v23;
      v24 = v18[3];
      v29[2] = v18[2];
      v29[3] = v24;
      memmove(v13, v18, 0xC0uLL);
      if (v16 == v14)
      {
        sub_1000289DC(v29, v28);
        v12 = a4 + v14 + 1;
        a5 = v26;
        a7 = v27;
        goto LABEL_11;
      }

      v13 += 192;
      result = sub_1000289DC(v29, v28);
      ++v14;
      v18 += 12;
      if (!(v17 + v14))
      {
        v10 = v25;
        a5 = v26;
        v12 = v26;
        a7 = v27;
        goto LABEL_11;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
  }

  __break(1u);
  return result;
}

__n128 sub_1000445AC(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_1000445C0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_100044608(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t static EnumerableFlag.name(for:)()
{
  v0 = sub_10003AD7C(&off_1000AC2D8);
  sub_10003AF24(&unk_1000AC2F8);

  return v0;
}

double static EnumerableFlag.help(for:)@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 48) = 0;
  result = 0.0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  return result;
}

uint64_t sub_1000446D4(void (*a1)(char *, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v35 = a8;
  v44 = a1;
  v45 = a2;
  v11 = *(a5 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin();
  v46 = &v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v14 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v48 = *(AssociatedTypeWitness - 8);
  v16 = *(v48 + 64);
  __chkstk_darwin();
  v18 = &v33 - v17;
  v19 = *(*(a4 - 8) + 64);
  __chkstk_darwin();
  v42 = &v33 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = swift_getAssociatedTypeWitness();
  v36 = *(v21 - 8);
  v37 = v21;
  v22 = *(v36 + 64);
  __chkstk_darwin();
  v24 = &v33 - v23;
  v25 = dispatch thunk of Collection.count.getter();
  if (!v25)
  {
    return static Array._allocateUninitialized(_:)();
  }

  v47 = v25;
  v51 = ContiguousArray.init()();
  v38 = type metadata accessor for ContiguousArray();
  ContiguousArray.reserveCapacity(_:)(v47);
  result = dispatch thunk of Collection.startIndex.getter();
  if ((v47 & 0x8000000000000000) == 0)
  {
    v33 = v11;
    v34 = a5;
    v27 = 0;
    v39 = (v48 + 16);
    v40 = (v48 + 8);
    v41 = v8;
    while (!__OFADD__(v27, 1))
    {
      v48 = v27 + 1;
      v28 = dispatch thunk of Collection.subscript.read();
      v29 = v18;
      v30 = v18;
      v31 = AssociatedTypeWitness;
      (*v39)(v29);
      v28(v50, 0);
      v32 = v49;
      v44(v30, v46);
      if (v32)
      {
        (*v40)(v30, v31);
        (*(v36 + 8))(v24, v37);

        return (*(v33 + 32))(v35, v46, v34);
      }

      v49 = 0;
      (*v40)(v30, v31);
      ContiguousArray.append(_:)();
      result = dispatch thunk of Collection.formIndex(after:)();
      ++v27;
      v18 = v30;
      if (v48 == v47)
      {
        (*(v36 + 8))(v24, v37);
        return v51;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t static ExpressibleByArgument<>.allValueStrings.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin();
  v10 = &v15[-v9];
  dispatch thunk of static CaseIterable.allCases.getter();
  v16 = a1;
  v17 = a2;
  v18 = a3;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v13 = sub_1000446D4(sub_100044D84, v15, AssociatedTypeWitness, &type metadata for String, &type metadata for Never, AssociatedConformanceWitness, &protocol witness table for Never, v12);
  (*(v7 + 8))(v10, AssociatedTypeWitness);
  return v13;
}

uint64_t sub_100044CB4@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  v3 = *(*(a1 - 8) + 64);
  __chkstk_darwin();
  (*(v5 + 16))(&v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  result = String.init<A>(describing:)();
  *a2 = result;
  a2[1] = v7;
  return result;
}

uint64_t sub_100044D84@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[3];
  v3 = v1[4];
  return sub_100044CB4(v1[2], a1);
}

uint64_t static ExpressibleByArgument<>.allValueStrings.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = *(AssociatedTypeWitness - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin();
  v14 = &v20[-v13];
  dispatch thunk of static CaseIterable.allCases.getter();
  v26 = a1;
  v27 = a2;
  v28 = a3;
  v29 = a4;
  v30 = a5;
  KeyPath = swift_getKeyPath();
  v21 = a2;
  v22 = a3;
  v23 = a4;
  v24 = a5;
  v25 = KeyPath;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v18 = sub_1000446D4(sub_100045058, v20, AssociatedTypeWitness, &type metadata for String, &type metadata for Never, AssociatedConformanceWitness, &protocol witness table for Never, v17);

  (*(v11 + 8))(v14, AssociatedTypeWitness);
  return v18;
}

uint64_t sub_100044F84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a2 + a3 - 40);
  v4 = *(a2 + a3 - 16);
  return dispatch thunk of RawRepresentable.rawValue.getter();
}

__n128 sub_100044FC4(uint64_t a1, uint64_t a2)
{
  result = *a1;
  v3 = *(a1 + 16);
  *(a2 + 32) = *(a1 + 32);
  *a2 = result;
  *(a2 + 16) = v3;
  return result;
}

uint64_t sub_100044FD8@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  v4 = a1 + a2;
  v5 = *(a1 + a2 - 40);
  v6 = *(v4 - 8);
  v7 = *(v6 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  result = v7(AssociatedTypeWitness, v6);
  *a3 = result;
  a3[1] = v10;
  return result;
}

uint64_t ExpressibleByArgument<>.defaultValueDescription.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin();
  v9 = &v12 - v8;
  dispatch thunk of RawRepresentable.rawValue.getter();
  v10 = (*(a4 + 16))(AssociatedTypeWitness, a4);
  (*(v6 + 8))(v9, AssociatedTypeWitness);
  return v10;
}

uint64_t sub_1000451AC@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t sub_1000451B4()
{
  v2 = *v0;
  v3 = v0[1];
  _print_unlocked<A, B>(_:_:)();
  return 0;
}

uint64_t RawRepresentable<>.init(argument:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  v37 = a2;
  v38 = a6;
  v10 = type metadata accessor for Optional();
  v33 = *(v10 - 8);
  v34 = v10;
  v11 = *(v33 + 64);
  __chkstk_darwin();
  v36 = &v32 - v12;
  v35 = a4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v14 = type metadata accessor for Optional();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin();
  v18 = &v32 - v17;
  v19 = *(AssociatedTypeWitness - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin();
  v22 = &v32 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v24 = &v32 - v23;
  (*(a5 + 8))(a1, v37, AssociatedTypeWitness, a5);
  if ((*(v19 + 48))(v18, 1, AssociatedTypeWitness) == 1)
  {
    (*(v15 + 8))(v18, v14);
    v25 = *(a3 - 8);
  }

  else
  {
    (*(v19 + 32))(v24, v18, AssociatedTypeWitness);
    (*(v19 + 16))(v22, v24, AssociatedTypeWitness);
    v26 = v36;
    dispatch thunk of RawRepresentable.init(rawValue:)();
    (*(v19 + 8))(v24, AssociatedTypeWitness);
    v25 = *(a3 - 8);
    v27 = v25;
    if (!(*(v25 + 48))(v26, 1, a3))
    {
      v31 = v38;
      (*(v25 + 32))(v38, v26, a3);
      v29 = v31;
      v28 = 0;
      return (*(v27 + 56))(v29, v28, 1, a3);
    }

    (*(v33 + 8))(v26, v34);
  }

  v27 = v25;
  v28 = 1;
  v29 = v38;
  return (*(v27 + 56))(v29, v28, 1, a3);
}

uint64_t LosslessStringConvertible<>.init(argument:)@<X0>(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for Optional();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin();
  v8 = &v12 - v7;
  dispatch thunk of LosslessStringConvertible.init(_:)();
  v9 = *(a1 - 8);
  if ((*(v9 + 48))(v8, 1, a1))
  {
    (*(v5 + 8))(v8, v4);
    v10 = 1;
  }

  else
  {
    (*(v9 + 32))(a2, v8, a1);
    v10 = 0;
  }

  return (*(v9 + 56))(a2, v10, 1, a1);
}

uint64_t sub_100045764@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = sub_100049BE8(a1, a2);
  *a3 = result;
  *(a3 + 8) = v5 & 1;
  return result;
}

uint64_t sub_100045798@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1000492B8(a1, a2);
  *a3 = result;
  a3[1] = BYTE1(result) & 1;
  return result;
}

uint64_t sub_1000457CC@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = sub_1000495E4(a1, a2);
  *a3 = result;
  *(a3 + 2) = BYTE2(result) & 1;
  return result;
}

uint64_t sub_100045800@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = sub_100049910(a1, a2);
  *a3 = result;
  *(a3 + 4) = BYTE4(result) & 1;
  return result;
}

uint64_t sub_100045834@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = sub_10004A7E4(a1, a2);
  *a3 = result;
  *(a3 + 8) = v5 & 1;
  return result;
}

uint64_t sub_100045864@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100049EE4(a1, a2);
  *a3 = result;
  a3[1] = BYTE1(result) & 1;
  return result;
}

uint64_t sub_100045894()
{
  BYTE8(v2) = 0;
  *&v2 = *v0;
  _print_unlocked<A, B>(_:_:)();
  return *(&v2 + 1);
}

uint64_t sub_1000458E4@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = sub_10004A1F8(a1, a2);
  *a3 = result;
  *(a3 + 2) = BYTE2(result) & 1;
  return result;
}

uint64_t sub_100045914()
{
  WORD4(v2) = 0;
  *&v2 = *v0;
  _print_unlocked<A, B>(_:_:)();
  return *(&v2 + 2);
}

uint64_t sub_100045964@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = sub_10004A50C(a1, a2);
  *a3 = result;
  *(a3 + 4) = BYTE4(result) & 1;
  return result;
}

uint64_t sub_100045994()
{
  v2 = *v0;
  _print_unlocked<A, B>(_:_:)();
  return HIDWORD(v2);
}

uint64_t sub_1000459E4()
{
  v2 = *v0;
  _print_unlocked<A, B>(_:_:)();
  return 0;
}

unint64_t sub_100045A34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = sub_1000461D0(a1, a2);
  *a3 = result;
  *(a3 + 4) = BYTE4(result) & 1;
  return result;
}

uint64_t sub_100045A64()
{
  v2 = *v0;
  _print_unlocked<A, B>(_:_:)();
  return HIDWORD(v2);
}

uint64_t sub_100045AB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = sub_100045FC8(a1, a2);
  *a3 = result;
  *(a3 + 8) = v5 & 1;
  return result;
}

uint64_t sub_100045AE4()
{
  v2 = *v0;
  _print_unlocked<A, B>(_:_:)();
  return 0;
}

uint64_t sub_100045B34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1000490B4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100045B5C()
{
  v0 = String.subscript.getter();
  v4 = sub_100045BDC(v0, v1, v2, v3);

  return v4;
}

uint64_t sub_100045BDC(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) == 0)
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v15[0] = a3;
      v15[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return static String._uncheckedFromUTF8(_:)();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }

    goto LABEL_11;
  }

  v9 = Substring.UTF8View.distance(from:to:)();
  if (!v9)
  {
    v11 = _swiftEmptyArrayStorage;
    goto LABEL_13;
  }

  v10 = v9;
  v11 = sub_100045D34(v9, 0);
  v12 = sub_100045DA8(v15, (v11 + 4), v10, a1, a2, a3, a4);

  if (v12 == v10)
  {
LABEL_13:
    v13 = v11[2];
    v14 = static String._uncheckedFromUTF8(_:)();

    return v14;
  }

  __break(1u);
LABEL_11:
  _StringObject.sharedUTF8.getter();
LABEL_4:

  return static String._uncheckedFromUTF8(_:)();
}

void *sub_100045D34(uint64_t a1, uint64_t a2)
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
    return _swiftEmptyArrayStorage;
  }

  sub_1000021C0(&qword_1000B5690, &qword_100092928);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

unint64_t sub_100045DA8(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
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
    goto LABEL_34;
  }

  if (a3 < 0)
  {
    goto LABEL_38;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_34:
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
    v17 = v12 & 0xC;
    result = v12;
    if (v17 == v15)
    {
      result = sub_100082D44(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = String.UTF8View._foreignSubscript(position:)();
      v19 = result;
      if (v17 != v15)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
        if (v17 != v15)
        {
          goto LABEL_23;
        }
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = _StringObject.sharedUTF8.getter();
        }

        v19 = *(result + v18);
        if (v17 != v15)
        {
LABEL_23:
          if ((a7 & 0x1000000000000000) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_27;
        }
      }
    }

    result = sub_100082D44(v12, a6, a7);
    v12 = result;
    if ((a7 & 0x1000000000000000) == 0)
    {
LABEL_24:
      v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_29;
    }

LABEL_27:
    if (v23 <= v12 >> 16)
    {
      goto LABEL_37;
    }

    result = String.UTF8View._foreignIndex(after:)();
    v12 = result;
LABEL_29:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_34;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_36;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

uint64_t sub_100045FC8(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0 || !(a2 & 0x2000000000000000 | a1 & 0x1000000000000000))
  {
    _StringGuts._slowWithCString<A>(_:)();

    v6 = v9;
  }

  else
  {
    __chkstk_darwin();
    if ((a2 & 0x2000000000000000) != 0)
    {
      v6 = (v3 > 0x20u || ((0x100003E01uLL >> v3) & 1) == 0) && (v7 = _swift_stdlib_strtod_clocale()) != 0 && *v7 == 0;
    }

    else
    {
      if ((v3 & 0x1000000000000000) != 0)
      {
        v4 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
        v5 = v3 & 0xFFFFFFFFFFFFLL;
      }

      else
      {
        v4 = _StringObject.sharedUTF8.getter();
      }

      v6 = sub_100046170(v4, v5, sub_1000491A4);
    }
  }

  if (v6)
  {
    return 0;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100046170(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr))
{
  if (a1)
  {
    a3(&var2);
    if (!v3)
    {
      v4 = var2;
    }
  }

  else
  {
    (a3)((&var2 + 1), 0, 0);
    if (!v3)
    {
      v4 = BYTE1(var2);
    }
  }

  return v4 & 1;
}

unint64_t sub_1000461D0(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0 || !(a2 & 0x2000000000000000 | a1 & 0x1000000000000000))
  {
    _StringGuts._slowWithCString<A>(_:)();

    v6 = v9;
  }

  else
  {
    __chkstk_darwin();
    if ((a2 & 0x2000000000000000) != 0)
    {
      v6 = (v3 > 0x20u || ((0x100003E01uLL >> v3) & 1) == 0) && (v7 = _swift_stdlib_strtof_clocale()) != 0 && *v7 == 0;
    }

    else
    {
      if ((v3 & 0x1000000000000000) != 0)
      {
        v4 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
        v5 = v3 & 0xFFFFFFFFFFFFLL;
      }

      else
      {
        v4 = _StringObject.sharedUTF8.getter();
      }

      v6 = sub_100046170(v4, v5, sub_10004AAE0);
    }
  }

  return ((v6 & 1) == 0) << 32;
}

unsigned __int8 *sub_100046384(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v74 = a1;
  v75 = a2;

  result = String.init<A>(_:)();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_100045B5C();
    v42 = v41;

    v5 = v42;
    if ((v42 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v7 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = _StringObject.sharedUTF8.getter();
      v7 = v73;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v22 = v7 - 1;
        if (v22)
        {
          v23 = a3 + 48;
          v24 = a3 + 55;
          v25 = a3 + 87;
          if (a3 > 10)
          {
            v23 = 58;
          }

          else
          {
            v25 = 97;
            v24 = 65;
          }

          if (result)
          {
            LOBYTE(v13) = 0;
            v26 = result + 1;
            v27 = a3;
            v16 = 1;
            do
            {
              v28 = *v26;
              if (v28 < 0x30 || v28 >= v23)
              {
                if (v28 < 0x41 || v28 >= v24)
                {
                  v19 = 0;
                  if (v28 < 0x61 || v28 >= v25)
                  {
                    goto LABEL_126;
                  }

                  v29 = -87;
                }

                else
                {
                  v29 = -55;
                }
              }

              else
              {
                v29 = -48;
              }

              v30 = v13 * v27;
              v31 = (v13 * v27);
              if (v31 != v30)
              {
                goto LABEL_125;
              }

              v13 = v31 + (v28 + v29);
              if (v13 != v13)
              {
                goto LABEL_125;
              }

              ++v26;
              --v22;
            }

            while (v22);
LABEL_46:
            v16 = 0;
            v19 = v13;
            goto LABEL_126;
          }

          goto LABEL_65;
        }

LABEL_125:
        v19 = 0;
        v16 = 1;
        goto LABEL_126;
      }

      goto LABEL_130;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        LOBYTE(v32) = 0;
        v33 = a3 + 48;
        v34 = a3 + 55;
        v35 = a3 + 87;
        if (a3 > 10)
        {
          v33 = 58;
        }

        else
        {
          v35 = 97;
          v34 = 65;
        }

        v36 = a3;
        v16 = 1;
        while (1)
        {
          v37 = *result;
          if (v37 < 0x30 || v37 >= v33)
          {
            if (v37 < 0x41 || v37 >= v34)
            {
              v19 = 0;
              if (v37 < 0x61 || v37 >= v35)
              {
                goto LABEL_126;
              }

              v38 = -87;
            }

            else
            {
              v38 = -55;
            }
          }

          else
          {
            v38 = -48;
          }

          v39 = v32 * v36;
          v40 = (v32 * v36);
          if (v40 != v39)
          {
            goto LABEL_125;
          }

          v32 = v40 + (v37 + v38);
          if (v32 != v32)
          {
            goto LABEL_125;
          }

          ++result;
          if (!--v7)
          {
            goto LABEL_124;
          }
        }
      }

      goto LABEL_125;
    }

    if (v7 >= 1)
    {
      v9 = v7 - 1;
      if (v9)
      {
        v10 = a3 + 48;
        v11 = a3 + 55;
        v12 = a3 + 87;
        if (a3 > 10)
        {
          v10 = 58;
        }

        else
        {
          v12 = 97;
          v11 = 65;
        }

        if (result)
        {
          LOBYTE(v13) = 0;
          v14 = result + 1;
          v15 = a3;
          v16 = 1;
          while (1)
          {
            v17 = *v14;
            if (v17 < 0x30 || v17 >= v10)
            {
              if (v17 < 0x41 || v17 >= v11)
              {
                v19 = 0;
                if (v17 < 0x61 || v17 >= v12)
                {
                  goto LABEL_126;
                }

                v18 = -87;
              }

              else
              {
                v18 = -55;
              }
            }

            else
            {
              v18 = -48;
            }

            v20 = v13 * v15;
            v21 = (v13 * v15);
            if (v21 != v20)
            {
              goto LABEL_125;
            }

            v13 = v21 - (v17 + v18);
            if (v13 != v13)
            {
              goto LABEL_125;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_65:
        v19 = 0;
        v16 = 0;
LABEL_126:

        return (v19 | (v16 << 8));
      }

      goto LABEL_125;
    }

    __break(1u);
LABEL_129:
    __break(1u);
LABEL_130:
    __break(1u);
    goto LABEL_131;
  }

  v43 = HIBYTE(v5) & 0xF;
  v74 = v6;
  v75 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v43)
      {
        LOBYTE(v32) = 0;
        v64 = a3 + 55;
        v65 = a3 + 87;
        v66 = a3 + 48;
        if (a3 > 10)
        {
          v66 = 58;
        }

        else
        {
          v65 = 97;
          v64 = 65;
        }

        v67 = &v74;
        v68 = a3;
        v16 = 1;
        while (1)
        {
          v69 = *v67;
          if (v69 < 0x30 || v69 >= v66)
          {
            if (v69 < 0x41 || v69 >= v64)
            {
              v19 = 0;
              if (v69 < 0x61 || v69 >= v65)
              {
                goto LABEL_126;
              }

              v70 = -87;
            }

            else
            {
              v70 = -55;
            }
          }

          else
          {
            v70 = -48;
          }

          v71 = v32 * v68;
          v72 = (v32 * v68);
          if (v72 != v71)
          {
            goto LABEL_125;
          }

          v32 = v72 + (v69 + v70);
          if (v32 != v32)
          {
            goto LABEL_125;
          }

          v67 = (v67 + 1);
          if (!--v43)
          {
            goto LABEL_124;
          }
        }
      }

      goto LABEL_125;
    }

    if (v43)
    {
      v44 = v43 - 1;
      if (v44)
      {
        LOBYTE(v32) = 0;
        v45 = a3 + 48;
        v46 = a3 + 55;
        v47 = a3 + 87;
        if (a3 > 10)
        {
          v45 = 58;
        }

        else
        {
          v47 = 97;
          v46 = 65;
        }

        v48 = &v74 + 1;
        v49 = a3;
        v16 = 1;
        while (1)
        {
          v50 = *v48;
          if (v50 < 0x30 || v50 >= v45)
          {
            if (v50 < 0x41 || v50 >= v46)
            {
              v19 = 0;
              if (v50 < 0x61 || v50 >= v47)
              {
                goto LABEL_126;
              }

              v51 = -87;
            }

            else
            {
              v51 = -55;
            }
          }

          else
          {
            v51 = -48;
          }

          v52 = v32 * v49;
          v53 = (v32 * v49);
          if (v53 != v52)
          {
            goto LABEL_125;
          }

          v32 = v53 - (v50 + v51);
          if (v32 != v32)
          {
            goto LABEL_125;
          }

          ++v48;
          if (!--v44)
          {
            goto LABEL_124;
          }
        }
      }

      goto LABEL_125;
    }

    goto LABEL_129;
  }

  if (v43)
  {
    v54 = v43 - 1;
    if (v54)
    {
      LOBYTE(v32) = 0;
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

      v58 = &v74 + 1;
      v59 = a3;
      v16 = 1;
      do
      {
        v60 = *v58;
        if (v60 < 0x30 || v60 >= v55)
        {
          if (v60 < 0x41 || v60 >= v56)
          {
            v19 = 0;
            if (v60 < 0x61 || v60 >= v57)
            {
              goto LABEL_126;
            }

            v61 = -87;
          }

          else
          {
            v61 = -55;
          }
        }

        else
        {
          v61 = -48;
        }

        v62 = v32 * v59;
        v63 = (v32 * v59);
        if (v63 != v62)
        {
          goto LABEL_125;
        }

        v32 = v63 + (v60 + v61);
        if (v32 != v32)
        {
          goto LABEL_125;
        }

        ++v58;
        --v54;
      }

      while (v54);
LABEL_124:
      v16 = 0;
      v19 = v32;
      goto LABEL_126;
    }

    goto LABEL_125;
  }

LABEL_131:
  __break(1u);
  return result;
}

unsigned __int8 *sub_100046964(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v74 = a1;
  v75 = a2;

  result = String.init<A>(_:)();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_100045B5C();
    v42 = v41;

    v5 = v42;
    if ((v42 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v7 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = _StringObject.sharedUTF8.getter();
      v7 = v73;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v22 = v7 - 1;
        if (v22)
        {
          v23 = a3 + 48;
          v24 = a3 + 55;
          v25 = a3 + 87;
          if (a3 > 10)
          {
            v23 = 58;
          }

          else
          {
            v25 = 97;
            v24 = 65;
          }

          if (result)
          {
            LOWORD(v13) = 0;
            v26 = result + 1;
            v27 = a3;
            v16 = 1;
            do
            {
              v28 = *v26;
              if (v28 < 0x30 || v28 >= v23)
              {
                if (v28 < 0x41 || v28 >= v24)
                {
                  v19 = 0;
                  if (v28 < 0x61 || v28 >= v25)
                  {
                    goto LABEL_126;
                  }

                  v29 = -87;
                }

                else
                {
                  v29 = -55;
                }
              }

              else
              {
                v29 = -48;
              }

              v30 = v13 * v27;
              v31 = (v13 * v27);
              if (v31 != v30)
              {
                goto LABEL_125;
              }

              v13 = v31 + (v28 + v29);
              if (v13 != v13)
              {
                goto LABEL_125;
              }

              ++v26;
              --v22;
            }

            while (v22);
LABEL_46:
            v16 = 0;
            v19 = v13;
            goto LABEL_126;
          }

          goto LABEL_65;
        }

LABEL_125:
        v19 = 0;
        v16 = 1;
        goto LABEL_126;
      }

      goto LABEL_130;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        LOWORD(v32) = 0;
        v33 = a3 + 48;
        v34 = a3 + 55;
        v35 = a3 + 87;
        if (a3 > 10)
        {
          v33 = 58;
        }

        else
        {
          v35 = 97;
          v34 = 65;
        }

        v36 = a3;
        v16 = 1;
        while (1)
        {
          v37 = *result;
          if (v37 < 0x30 || v37 >= v33)
          {
            if (v37 < 0x41 || v37 >= v34)
            {
              v19 = 0;
              if (v37 < 0x61 || v37 >= v35)
              {
                goto LABEL_126;
              }

              v38 = -87;
            }

            else
            {
              v38 = -55;
            }
          }

          else
          {
            v38 = -48;
          }

          v39 = v32 * v36;
          v40 = (v32 * v36);
          if (v40 != v39)
          {
            goto LABEL_125;
          }

          v32 = v40 + (v37 + v38);
          if (v32 != v32)
          {
            goto LABEL_125;
          }

          ++result;
          if (!--v7)
          {
            goto LABEL_124;
          }
        }
      }

      goto LABEL_125;
    }

    if (v7 >= 1)
    {
      v9 = v7 - 1;
      if (v9)
      {
        v10 = a3 + 48;
        v11 = a3 + 55;
        v12 = a3 + 87;
        if (a3 > 10)
        {
          v10 = 58;
        }

        else
        {
          v12 = 97;
          v11 = 65;
        }

        if (result)
        {
          LOWORD(v13) = 0;
          v14 = result + 1;
          v15 = a3;
          v16 = 1;
          while (1)
          {
            v17 = *v14;
            if (v17 < 0x30 || v17 >= v10)
            {
              if (v17 < 0x41 || v17 >= v11)
              {
                v19 = 0;
                if (v17 < 0x61 || v17 >= v12)
                {
                  goto LABEL_126;
                }

                v18 = -87;
              }

              else
              {
                v18 = -55;
              }
            }

            else
            {
              v18 = -48;
            }

            v20 = v13 * v15;
            v21 = (v13 * v15);
            if (v21 != v20)
            {
              goto LABEL_125;
            }

            v13 = v21 - (v17 + v18);
            if (v13 != v13)
            {
              goto LABEL_125;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_65:
        v19 = 0;
        v16 = 0;
LABEL_126:

        return (v19 | (v16 << 16));
      }

      goto LABEL_125;
    }

    __break(1u);
LABEL_129:
    __break(1u);
LABEL_130:
    __break(1u);
    goto LABEL_131;
  }

  v43 = HIBYTE(v5) & 0xF;
  v74 = v6;
  v75 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v43)
      {
        LOWORD(v32) = 0;
        v64 = a3 + 55;
        v65 = a3 + 87;
        v66 = a3 + 48;
        if (a3 > 10)
        {
          v66 = 58;
        }

        else
        {
          v65 = 97;
          v64 = 65;
        }

        v67 = &v74;
        v68 = a3;
        v16 = 1;
        while (1)
        {
          v69 = *v67;
          if (v69 < 0x30 || v69 >= v66)
          {
            if (v69 < 0x41 || v69 >= v64)
            {
              v19 = 0;
              if (v69 < 0x61 || v69 >= v65)
              {
                goto LABEL_126;
              }

              v70 = -87;
            }

            else
            {
              v70 = -55;
            }
          }

          else
          {
            v70 = -48;
          }

          v71 = v32 * v68;
          v72 = (v32 * v68);
          if (v72 != v71)
          {
            goto LABEL_125;
          }

          v32 = v72 + (v69 + v70);
          if (v32 != v32)
          {
            goto LABEL_125;
          }

          v67 = (v67 + 1);
          if (!--v43)
          {
            goto LABEL_124;
          }
        }
      }

      goto LABEL_125;
    }

    if (v43)
    {
      v44 = v43 - 1;
      if (v44)
      {
        LOWORD(v32) = 0;
        v45 = a3 + 48;
        v46 = a3 + 55;
        v47 = a3 + 87;
        if (a3 > 10)
        {
          v45 = 58;
        }

        else
        {
          v47 = 97;
          v46 = 65;
        }

        v48 = &v74 + 1;
        v49 = a3;
        v16 = 1;
        while (1)
        {
          v50 = *v48;
          if (v50 < 0x30 || v50 >= v45)
          {
            if (v50 < 0x41 || v50 >= v46)
            {
              v19 = 0;
              if (v50 < 0x61 || v50 >= v47)
              {
                goto LABEL_126;
              }

              v51 = -87;
            }

            else
            {
              v51 = -55;
            }
          }

          else
          {
            v51 = -48;
          }

          v52 = v32 * v49;
          v53 = (v32 * v49);
          if (v53 != v52)
          {
            goto LABEL_125;
          }

          v32 = v53 - (v50 + v51);
          if (v32 != v32)
          {
            goto LABEL_125;
          }

          ++v48;
          if (!--v44)
          {
            goto LABEL_124;
          }
        }
      }

      goto LABEL_125;
    }

    goto LABEL_129;
  }

  if (v43)
  {
    v54 = v43 - 1;
    if (v54)
    {
      LOWORD(v32) = 0;
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

      v58 = &v74 + 1;
      v59 = a3;
      v16 = 1;
      do
      {
        v60 = *v58;
        if (v60 < 0x30 || v60 >= v55)
        {
          if (v60 < 0x41 || v60 >= v56)
          {
            v19 = 0;
            if (v60 < 0x61 || v60 >= v57)
            {
              goto LABEL_126;
            }

            v61 = -87;
          }

          else
          {
            v61 = -55;
          }
        }

        else
        {
          v61 = -48;
        }

        v62 = v32 * v59;
        v63 = (v32 * v59);
        if (v63 != v62)
        {
          goto LABEL_125;
        }

        v32 = v63 + (v60 + v61);
        if (v32 != v32)
        {
          goto LABEL_125;
        }

        ++v58;
        --v54;
      }

      while (v54);
LABEL_124:
      v16 = 0;
      v19 = v32;
      goto LABEL_126;
    }

    goto LABEL_125;
  }

LABEL_131:
  __break(1u);
  return result;
}

unsigned __int8 *sub_100046F44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v69 = a1;
  v70 = a2;

  result = String.init<A>(_:)();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_100045B5C();
    v40 = v39;

    v5 = v40;
    if ((v40 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v7 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = _StringObject.sharedUTF8.getter();
      v7 = v68;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v22 = v7 - 1;
        if (v22)
        {
          v23 = a3 + 48;
          v24 = a3 + 55;
          v25 = a3 + 87;
          if (a3 > 10)
          {
            v23 = 58;
          }

          else
          {
            v25 = 97;
            v24 = 65;
          }

          if (result)
          {
            v13 = 0;
            v26 = result + 1;
            v15 = 1;
            do
            {
              v27 = *v26;
              if (v27 < 0x30 || v27 >= v23)
              {
                if (v27 < 0x41 || v27 >= v24)
                {
                  v18 = 0;
                  if (v27 < 0x61 || v27 >= v25)
                  {
                    goto LABEL_126;
                  }

                  v28 = -87;
                }

                else
                {
                  v28 = -55;
                }
              }

              else
              {
                v28 = -48;
              }

              v29 = v13 * a3;
              if (v29 != v29)
              {
                goto LABEL_125;
              }

              v30 = v27 + v28;
              v21 = __OFADD__(v29, v30);
              v13 = v29 + v30;
              if (v21)
              {
                goto LABEL_125;
              }

              ++v26;
              --v22;
            }

            while (v22);
LABEL_46:
            v15 = 0;
            v18 = v13;
            goto LABEL_126;
          }

          goto LABEL_65;
        }

LABEL_125:
        v18 = 0;
        v15 = 1;
        goto LABEL_126;
      }

      goto LABEL_130;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v31 = 0;
        v32 = a3 + 48;
        v33 = a3 + 55;
        v34 = a3 + 87;
        if (a3 > 10)
        {
          v32 = 58;
        }

        else
        {
          v34 = 97;
          v33 = 65;
        }

        v15 = 1;
        while (1)
        {
          v35 = *result;
          if (v35 < 0x30 || v35 >= v32)
          {
            if (v35 < 0x41 || v35 >= v33)
            {
              v18 = 0;
              if (v35 < 0x61 || v35 >= v34)
              {
                goto LABEL_126;
              }

              v36 = -87;
            }

            else
            {
              v36 = -55;
            }
          }

          else
          {
            v36 = -48;
          }

          v37 = v31 * a3;
          if (v37 != v37)
          {
            goto LABEL_125;
          }

          v38 = v35 + v36;
          v21 = __OFADD__(v37, v38);
          v31 = v37 + v38;
          if (v21)
          {
            goto LABEL_125;
          }

          ++result;
          if (!--v7)
          {
            goto LABEL_124;
          }
        }
      }

      goto LABEL_125;
    }

    if (v7 >= 1)
    {
      v9 = v7 - 1;
      if (v9)
      {
        v10 = a3 + 48;
        v11 = a3 + 55;
        v12 = a3 + 87;
        if (a3 > 10)
        {
          v10 = 58;
        }

        else
        {
          v12 = 97;
          v11 = 65;
        }

        if (result)
        {
          v13 = 0;
          v14 = result + 1;
          v15 = 1;
          while (1)
          {
            v16 = *v14;
            if (v16 < 0x30 || v16 >= v10)
            {
              if (v16 < 0x41 || v16 >= v11)
              {
                v18 = 0;
                if (v16 < 0x61 || v16 >= v12)
                {
                  goto LABEL_126;
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

            v19 = v13 * a3;
            if (v19 != v19)
            {
              goto LABEL_125;
            }

            v20 = v16 + v17;
            v21 = __OFSUB__(v19, v20);
            v13 = v19 - v20;
            if (v21)
            {
              goto LABEL_125;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_65:
        v18 = 0;
        v15 = 0;
LABEL_126:

        LOBYTE(v69) = v15;
        return (v18 | (v15 << 32));
      }

      goto LABEL_125;
    }

    __break(1u);
LABEL_129:
    __break(1u);
LABEL_130:
    __break(1u);
    goto LABEL_131;
  }

  v41 = HIBYTE(v5) & 0xF;
  v69 = v6;
  v70 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v41)
      {
        v31 = 0;
        v60 = a3 + 55;
        v61 = a3 + 87;
        v62 = a3 + 48;
        if (a3 > 10)
        {
          v62 = 58;
        }

        else
        {
          v61 = 97;
          v60 = 65;
        }

        v63 = &v69;
        v15 = 1;
        while (1)
        {
          v64 = *v63;
          if (v64 < 0x30 || v64 >= v62)
          {
            if (v64 < 0x41 || v64 >= v60)
            {
              v18 = 0;
              if (v64 < 0x61 || v64 >= v61)
              {
                goto LABEL_126;
              }

              v65 = -87;
            }

            else
            {
              v65 = -55;
            }
          }

          else
          {
            v65 = -48;
          }

          v66 = v31 * a3;
          if (v66 != v66)
          {
            goto LABEL_125;
          }

          v67 = v64 + v65;
          v21 = __OFADD__(v66, v67);
          v31 = v66 + v67;
          if (v21)
          {
            goto LABEL_125;
          }

          v63 = (v63 + 1);
          if (!--v41)
          {
            goto LABEL_124;
          }
        }
      }

      goto LABEL_125;
    }

    if (v41)
    {
      v42 = v41 - 1;
      if (v42)
      {
        v31 = 0;
        v43 = a3 + 48;
        v44 = a3 + 55;
        v45 = a3 + 87;
        if (a3 > 10)
        {
          v43 = 58;
        }

        else
        {
          v45 = 97;
          v44 = 65;
        }

        v46 = &v69 + 1;
        v15 = 1;
        while (1)
        {
          v47 = *v46;
          if (v47 < 0x30 || v47 >= v43)
          {
            if (v47 < 0x41 || v47 >= v44)
            {
              v18 = 0;
              if (v47 < 0x61 || v47 >= v45)
              {
                goto LABEL_126;
              }

              v48 = -87;
            }

            else
            {
              v48 = -55;
            }
          }

          else
          {
            v48 = -48;
          }

          v49 = v31 * a3;
          if (v49 != v49)
          {
            goto LABEL_125;
          }

          v50 = v47 + v48;
          v21 = __OFSUB__(v49, v50);
          v31 = v49 - v50;
          if (v21)
          {
            goto LABEL_125;
          }

          ++v46;
          if (!--v42)
          {
            goto LABEL_124;
          }
        }
      }

      goto LABEL_125;
    }

    goto LABEL_129;
  }

  if (v41)
  {
    v51 = v41 - 1;
    if (v51)
    {
      v31 = 0;
      v52 = a3 + 48;
      v53 = a3 + 55;
      v54 = a3 + 87;
      if (a3 > 10)
      {
        v52 = 58;
      }

      else
      {
        v54 = 97;
        v53 = 65;
      }

      v55 = &v69 + 1;
      v15 = 1;
      do
      {
        v56 = *v55;
        if (v56 < 0x30 || v56 >= v52)
        {
          if (v56 < 0x41 || v56 >= v53)
          {
            v18 = 0;
            if (v56 < 0x61 || v56 >= v54)
            {
              goto LABEL_126;
            }

            v57 = -87;
          }

          else
          {
            v57 = -55;
          }
        }

        else
        {
          v57 = -48;
        }

        v58 = v31 * a3;
        if (v58 != v58)
        {
          goto LABEL_125;
        }

        v59 = v56 + v57;
        v21 = __OFADD__(v58, v59);
        v31 = v58 + v59;
        if (v21)
        {
          goto LABEL_125;
        }

        ++v55;
        --v51;
      }

      while (v51);
LABEL_124:
      v15 = 0;
      v18 = v31;
      goto LABEL_126;
    }

    goto LABEL_125;
  }

LABEL_131:
  __break(1u);
  return result;
}