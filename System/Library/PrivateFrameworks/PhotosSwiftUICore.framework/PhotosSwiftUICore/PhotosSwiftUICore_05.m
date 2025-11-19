uint64_t sub_1C1016AF8@<X0>(uint64_t a1@<X0>, void (*a2)(void, void, void)@<X1>, void (*a3)(void, void, void)@<X2>, uint64_t a4@<X3>, unint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X8>)
{
  v117 = a1;
  v111 = a7;
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE91270);
  v107 = *(v108 - 8);
  MEMORY[0x1EEE9AC00](v108);
  v106 = &v90 - v12;
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE91278);
  v109 = *(v110 - 8);
  v13 = MEMORY[0x1EEE9AC00](v110);
  v116 = &v90 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v115 = &v90 - v15;
  v122 = a2;
  v123 = a3;
  v125 = a2;
  v126 = a3;
  v120 = a4;
  v121 = a5;
  v127 = a4;
  v128 = a5;
  v124 = a6;
  v129 = a6;
  v16 = type metadata accessor for PhotosSearchRecentSuggestionsView();
  v17 = *(v16 - 8);
  v112 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v113 = &v90 - v18;
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE90560);
  v99 = *(v100 - 8);
  MEMORY[0x1EEE9AC00](v100);
  v97 = &v90 - v19;
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE91280);
  v104 = *(v105 - 8);
  v20 = MEMORY[0x1EEE9AC00](v105);
  v119 = &v90 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v118 = &v90 - v22;
  sub_1C12639A0();
  if (qword_1EDE7E628 != -1)
  {
    swift_once();
  }

  v23 = qword_1EDE7E630;
  LOWORD(v89) = 256;
  v88 = 0;
  v24 = sub_1C12648D0();
  v26 = v25;
  v28 = v27;
  sub_1C1264650();
  sub_1C1264540();

  v102 = sub_1C1264870();
  v101 = v29;
  v103 = v30;
  v114 = v31;

  sub_1C0FDB8E8(v24, v26, v28 & 1);

  v98 = sub_1C12639A0();
  v33 = v32;
  LODWORD(v90) = v34;
  v35 = *(v17 + 16);
  v95 = v17 + 16;
  v96 = v35;
  v36 = v113;
  v35(v113, v117, v16);
  v94 = *(v17 + 80);
  v37 = (v94 + 56) & ~v94;
  v91 = v37;
  v38 = swift_allocObject();
  v39 = v123;
  *(v38 + 2) = v122;
  *(v38 + 3) = v39;
  v41 = v120;
  v40 = v121;
  *(v38 + 4) = v120;
  *(v38 + 5) = v40;
  *(v38 + 6) = v124;
  v42 = *(v17 + 32);
  v92 = v17 + 32;
  v93 = v42;
  v43 = v42(&v38[v37], v36, v16);
  MEMORY[0x1EEE9AC00](v43);
  *(&v90 - 4) = v98;
  *(&v90 - 3) = v33;
  v44 = v97;
  sub_1C1265480();

  v46 = MEMORY[0x1C68EF360](v45, 0.5, 0.85, 0.0);
  v90 = &v90;
  MEMORY[0x1EEE9AC00](v46);
  v47 = v123;
  *(&v90 - 6) = v122;
  *(&v90 - 5) = v47;
  *(&v90 - 4) = v41;
  *(&v90 - 3) = v40;
  v48 = v117;
  v88 = v124;
  v89 = v117;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE91288);
  v98 = MEMORY[0x1E697D680];
  sub_1C10239B0(&qword_1EBE90930, &qword_1EBE90560);
  sub_1C102384C(&qword_1EBE91290, &qword_1EBE91288, &unk_1C12A8508, sub_1C1023368);
  v49 = v100;
  sub_1C1265030();

  (*(v99 + 8))(v44, v49);
  v50 = v113;
  v51 = v48;
  v52 = v16;
  v96(v113, v51, v16);
  v53 = v91;
  v54 = swift_allocObject();
  v56 = v122;
  v55 = v123;
  *(v54 + 2) = v122;
  *(v54 + 3) = v55;
  v58 = v120;
  v57 = v121;
  *(v54 + 4) = v120;
  *(v54 + 5) = v57;
  *(v54 + 6) = v124;
  v59 = v93(&v54[v53], v50, v52);
  MEMORY[0x1EEE9AC00](v59);
  *(&v90 - 6) = v56;
  *(&v90 - 5) = v55;
  *(&v90 - 4) = v58;
  *(&v90 - 3) = v57;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE912B8);
  v60 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE912C0);
  v61 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE912C8);
  v62 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE90680);
  v63 = sub_1C1263930();
  v64 = sub_1C10239B0(&qword_1EDE7B7F8, &qword_1EBE90680);
  v65 = sub_1C1023734(&qword_1EBE912D0, MEMORY[0x1E697C4E8]);
  v125 = v62;
  v126 = v63;
  v127 = v64;
  v128 = v65;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v67 = sub_1C102377C();
  v125 = v60;
  v126 = v61;
  v127 = OpaqueTypeConformance2;
  v128 = v67;
  swift_getOpaqueTypeConformance2();
  v68 = v106;
  v69 = sub_1C1265480();
  v70 = MEMORY[0x1C68EF360](v69, 0.5, 0.85, 0.0);
  MEMORY[0x1EEE9AC00](v70);
  v71 = v123;
  *(&v90 - 6) = v122;
  *(&v90 - 5) = v71;
  v72 = v121;
  *(&v90 - 4) = v120;
  *(&v90 - 3) = v72;
  v88 = v124;
  v89 = v117;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE912F0);
  sub_1C10239B0(&qword_1EBE912F8, &qword_1EBE91270);
  sub_1C102384C(&qword_1EBE91300, &qword_1EBE912F0, &unk_1C12A8550, sub_1C10238F8);
  v73 = v115;
  v74 = v108;
  sub_1C1265030();

  (*(v107 + 8))(v68, v74);
  v75 = v104;
  v123 = *(v104 + 16);
  v76 = v105;
  v123(v119, v118, v105);
  v77 = v109;
  v122 = *(v109 + 16);
  v78 = v110;
  v122(v116, v73, v110);
  v79 = v111;
  v80 = v102;
  v81 = v101;
  *v111 = v102;
  v79[1] = v81;
  LODWORD(v124) = v103 & 1;
  *(v79 + 16) = v103 & 1;
  v79[3] = v114;
  v79[4] = 0;
  *(v79 + 40) = 1;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE91328);
  v123(v79 + *(v82 + 64), v119, v76);
  v83 = v79 + *(v82 + 80);
  v84 = v116;
  v122(v83, v116, v78);
  sub_1C0FDB850(v80, v81, v124);
  v85 = *(v77 + 8);

  v85(v115, v78);
  v86 = *(v75 + 8);
  v86(v118, v76);
  v85(v84, v78);
  v86(v119, v76);
  sub_1C0FDB8E8(v80, v81, v124);
}

uint64_t sub_1C101778C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X8>)
{
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE912A0);
  v15 = v14 - 8;
  MEMORY[0x1EEE9AC00](v14);
  v17 = v25 - v16;
  v25[1] = a2;
  v25[2] = a3;
  v25[3] = a4;
  v25[4] = a5;
  v25[5] = a6;
  type metadata accessor for PhotosSearchRecentSuggestionsView();
  v18 = sub_1C1017950();
  if (v18)
  {
    v19 = 1.0;
  }

  else
  {
    v19 = 0.0;
  }

  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE912B0);
  (*(*(v20 - 8) + 16))(v17, a1, v20);
  *&v17[*(v15 + 44)] = v19;
  KeyPath = swift_getKeyPath();
  v22 = swift_allocObject();
  *(v22 + 16) = (v18 & 1) == 0;
  sub_1C0FE4040(v17, a7, &qword_1EBE912A0);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE91288);
  v24 = (a7 + *(result + 36));
  *v24 = KeyPath;
  v24[1] = sub_1C1023A9C;
  v24[2] = v22;
  return result;
}

uint64_t sub_1C1017950()
{
  sub_1C1018960();
  type metadata accessor for PhotosSearchRecentSuggestionItem();
  sub_1C12661A0();
  swift_getWitnessTable();
  v0 = sub_1C1266000();

  return v0 & 1;
}

uint64_t sub_1C1017B14()
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE95B10);
  sub_1C1265420();
  sub_1C1265430();
}

uint64_t sub_1C1017BBC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v30 = a6;
  v29 = a5;
  v28 = a2;
  v27 = a1;
  v36 = a7;
  v32 = sub_1C1263930();
  v33 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE90680);
  v31 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v27 - v15;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE912C0);
  v35 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34);
  v18 = &v27 - v17;
  v49 = a2;
  v50 = a3;
  v51 = a4;
  v52 = a5;
  v53 = a6;
  type metadata accessor for PhotosSearchRecentSuggestionsView();
  sub_1C1015AFC();
  v45 = sub_1C12639A0();
  v46 = v19;
  v47 = v20 & 1;
  v48 = v21;
  v43 = 0x2E6E6F7276656863;
  v44 = 0xEF64726177726F66;
  sub_1C1265380();

  sub_1C1263920();
  v22 = sub_1C10239B0(&qword_1EDE7B7F8, &qword_1EBE90680);
  v23 = sub_1C1023734(&qword_1EBE912D0, MEMORY[0x1E697C4E8]);
  v24 = v32;
  sub_1C12649A0();
  (*(v33 + 8))(v13, v24);
  (*(v31 + 8))(v16, v14);
  MEMORY[0x1C68EF360](0.5, 0.85, 0.0);
  v37 = v28;
  v38 = a3;
  v39 = a4;
  v40 = v29;
  v41 = v30;
  v42 = v27;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE912C8);
  v49 = v14;
  v50 = v24;
  v51 = v22;
  v52 = v23;
  swift_getOpaqueTypeConformance2();
  sub_1C102377C();
  v25 = v34;
  sub_1C1265030();

  return (*(v35 + 8))(v18, v25);
}

uint64_t sub_1C10180A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  type metadata accessor for PhotosSearchRecentSuggestionsView();
  if (sub_1C1015AFC())
  {
    v4 = 1.57079633;
  }

  else
  {
    v4 = 0.0;
  }

  sub_1C1265B90();
  v6 = v5;
  v8 = v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE912E8);
  (*(*(v9 - 8) + 16))(a2, a1, v9);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE912C8);
  v11 = a2 + *(result + 36);
  *v11 = v4;
  *(v11 + 8) = v6;
  *(v11 + 16) = v8;
  return result;
}

uint64_t sub_1C1018190@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X8>)
{
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE91310);
  v15 = v14 - 8;
  MEMORY[0x1EEE9AC00](v14);
  v17 = v26 - v16;
  v26[1] = a2;
  v26[2] = a3;
  v26[3] = a4;
  v26[4] = a5;
  v26[5] = a6;
  v18 = type metadata accessor for PhotosSearchRecentSuggestionsView();
  v19 = sub_1C1018344(v18);
  if (v19)
  {
    v20 = 1.0;
  }

  else
  {
    v20 = 0.0;
  }

  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE91320);
  (*(*(v21 - 8) + 16))(v17, a1, v21);
  *&v17[*(v15 + 44)] = v20;
  KeyPath = swift_getKeyPath();
  v23 = swift_allocObject();
  *(v23 + 16) = !v19;
  sub_1C0FAD604(v17, a7);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE912F0);
  v25 = (a7 + *(result + 36));
  *v25 = KeyPath;
  v25[1] = sub_1C1023A9C;
  v25[2] = v23;
  return result;
}

BOOL sub_1C1018344(uint64_t a1)
{
  sub_1C1018960();
  type metadata accessor for PhotosSearchRecentSuggestionItem();
  v2 = sub_1C1266170();

  return sub_1C1014CE8(a1) < v2;
}

uint64_t sub_1C10183AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v63 = a6;
  v64 = a7;
  *&v73 = a2;
  *(&v73 + 1) = a3;
  *&v74 = a4;
  *(&v74 + 1) = a5;
  v75 = a6;
  v12 = type metadata accessor for PhotosSearchRecentSuggestionsView();
  v56 = *(v12 - 8);
  v58 = *(v56 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v59 = &KeyPath - v13;
  v54 = a3;
  v14 = type metadata accessor for PhotosSearchRecentSuggestionItem();
  v15 = sub_1C1266800();
  v16 = sub_1C12654A0();
  v17 = sub_1C12632E0();
  WitnessTable = swift_getWitnessTable();
  v19 = sub_1C1023734(&qword_1EDE7BCF0, MEMORY[0x1E697C248]);
  v57 = v16;
  *&v73 = v16;
  *(&v73 + 1) = v17;
  v55 = v17;
  v53 = WitnessTable;
  *&v74 = WitnessTable;
  *(&v74 + 1) = v19;
  v48 = v19;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v21 = swift_getWitnessTable();
  v22 = a5;
  v72 = a5;
  v23 = swift_getWitnessTable();
  v62 = v15;
  *&v73 = v15;
  *(&v73 + 1) = v14;
  v51 = OpaqueTypeMetadata2;
  *&v74 = OpaqueTypeMetadata2;
  *(&v74 + 1) = v21;
  v49 = v21;
  v47 = v23;
  v75 = v23;
  v52 = sub_1C12656A0();
  v50 = *(v52 - 8);
  v24 = MEMORY[0x1EEE9AC00](v52);
  v45 = &KeyPath - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v46 = &KeyPath - v26;
  *&v70 = sub_1C1018960();
  v27 = sub_1C1015AFC();
  v60 = a1;
  v61 = v12;
  if (v27)
  {
    sub_1C1018960();
    sub_1C1266170();
  }

  else
  {
    sub_1C1014CE8(v12);
  }

  sub_1C12661A0();
  swift_getWitnessTable();
  v28 = sub_1C1266360();
  v70 = v73;
  v71 = v74;
  MEMORY[0x1EEE9AC00](v28);
  v29 = v54;
  *(&KeyPath - 6) = a2;
  *(&KeyPath - 5) = v29;
  *(&KeyPath - 4) = a4;
  *(&KeyPath - 3) = v22;
  v30 = v63;
  v43 = v63;
  KeyPath = swift_getKeyPath();
  v31 = v56;
  v32 = v59;
  v33 = v61;
  (*(v56 + 16))(v59, v60, v61);
  v34 = (*(v31 + 80) + 56) & ~*(v31 + 80);
  v35 = swift_allocObject();
  *(v35 + 2) = a2;
  *(v35 + 3) = v29;
  *(v35 + 4) = a4;
  *(v35 + 5) = v22;
  *(v35 + 6) = v30;
  (*(v31 + 32))(&v35[v34], v32, v33);
  v66 = v57;
  v67 = v55;
  v68 = v53;
  v69 = v48;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v43 = OpaqueTypeConformance2;
  v37 = v45;
  sub_1C1265680();
  v65 = OpaqueTypeConformance2;
  v38 = v52;
  v39 = swift_getWitnessTable();
  v40 = v46;
  sub_1C0FDBA4C(v37, v38, v39);
  v41 = *(v50 + 8);
  v41(v37, v38);
  sub_1C0FDBA4C(v40, v38, v39);
  return (v41)(v40, v38);
}

uint64_t sub_1C1018960()
{
  swift_getKeyPath();
  type metadata accessor for PhotosSearchRecentSuggestionItem();
  sub_1C12661A0();

  swift_getWitnessTable();
  v0 = sub_1C1266A00();

  return v0;
}

uint64_t sub_1C1018A5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v69 = a7;
  v75 = a6;
  v77 = a2;
  v81 = a8;
  v82 = a1;
  v13 = sub_1C12632E0();
  v66 = v13;
  v80 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v79 = &v57 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a3;
  v74 = a4;
  v16 = a5;
  v71 = type metadata accessor for PhotosSearchRecentSuggestionItem();
  v17 = *(v71 - 8);
  v76 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v71);
  v19 = &v57 - v18;
  v60 = &v57 - v18;
  v89 = v15;
  v90 = a4;
  v62 = v16;
  v91 = v16;
  v92 = a6;
  v93 = a7;
  v20 = type metadata accessor for PhotosSearchRecentSuggestionsView();
  v58 = v20;
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v20);
  v24 = &v57 - v23;
  v59 = &v57 - v23;
  v25 = v15;
  v26 = sub_1C12654A0();
  v78 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v68 = &v57 - v27;
  v29 = v28;
  v67 = v28;
  WitnessTable = swift_getWitnessTable();
  v65 = WitnessTable;
  v64 = sub_1C1023734(&qword_1EDE7BCF0, MEMORY[0x1E697C248]);
  v89 = v29;
  v90 = v13;
  v91 = WitnessTable;
  v92 = v64;
  v70 = MEMORY[0x1E697CDB0];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v73 = *(OpaqueTypeMetadata2 - 8);
  v31 = MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v61 = &v57 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31);
  v63 = &v57 - v33;
  v34 = v21;
  (*(v21 + 16))(v24, v77, v20);
  v57 = v17;
  v35 = v19;
  v36 = v71;
  (*(v17 + 16))(v35, v82, v71);
  v37 = (*(v21 + 80) + 56) & ~*(v21 + 80);
  v38 = (v22 + *(v17 + 80) + v37) & ~*(v17 + 80);
  v39 = swift_allocObject();
  v40 = v25;
  v41 = v74;
  *(v39 + 2) = v25;
  *(v39 + 3) = v41;
  v42 = v62;
  v43 = v75;
  *(v39 + 4) = v62;
  *(v39 + 5) = v43;
  v44 = v69;
  *(v39 + 6) = v69;
  (*(v34 + 32))(&v39[v37], v59, v58);
  (*(v57 + 32))(&v39[v38], v60, v36);
  v83 = v40;
  v84 = v41;
  v85 = v42;
  v86 = v43;
  v87 = v44;
  v88 = v82;
  v45 = v68;
  sub_1C1265480();
  v46 = v79;
  sub_1C12632D0();
  v47 = v61;
  v48 = v67;
  v49 = v66;
  v50 = v65;
  v51 = v64;
  sub_1C12649F0();
  (*(v80 + 8))(v46, v49);
  (*(v78 + 8))(v45, v48);
  v89 = v48;
  v90 = v49;
  v91 = v50;
  v92 = v51;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v53 = v63;
  v54 = OpaqueTypeMetadata2;
  sub_1C0FDBA4C(v47, OpaqueTypeMetadata2, OpaqueTypeConformance2);
  v55 = *(v73 + 8);
  v55(v47, v54);
  sub_1C0FDBA4C(v53, v54, OpaqueTypeConformance2);
  return (v55)(v53, v54);
}

uint64_t sub_1C10190D8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v4 = type metadata accessor for PhotosSearchRecentSuggestionItem();
  return v3(a2 + *(v4 + 48));
}

uint64_t sub_1C1019128(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a2 - 8);
  v7 = MEMORY[0x1EEE9AC00](a1);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v16 - v10;
  v12 = type metadata accessor for PhotosSearchRecentSuggestionItem();
  v13 = _s17PhotosSwiftUICore0A26SearchRecentSuggestionItemV7contentxycvg_0(v12);
  v13();

  sub_1C0FDBA4C(v9, a2, a4);
  v14 = *(v6 + 8);
  v14(v9, a2);
  sub_1C0FDBA4C(v11, a2, a4);
  return (v14)(v11, a2);
}

uint64_t sub_1C1019274(uint64_t a1)
{
  v1 = *(a1 + 40);
  type metadata accessor for PhotosSearchRecentSuggestionsView();
  v2 = sub_1C1015AFC();
  return v1(v2 & 1);
}

uint64_t sub_1C10192D4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE95B10);
  sub_1C1265420();
  return v1;
}

uint64_t sub_1C1019388@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1C12637E0();
  v4 = *(v3 - 8);
  result = MEMORY[0x1EEE9AC00](v3);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v1 + 64);
  v8 = *(v1 + 72);
  v11 = *(v1 + 80);
  v10 = *(v1 + 88);
  v12 = *(v1 + 96);
  v13 = *(v1 + 104);
  if (*(v1 + 106) == 1)
  {
    *a1 = v9;
    *(a1 + 8) = v8;
    *(a1 + 16) = v11;
    *(a1 + 24) = v10;
    *(a1 + 32) = v12;
    *(a1 + 40) = v13;
  }

  else
  {
    v16 = result;
    HIDWORD(v15) = v13;

    sub_1C1266420();
    v14 = sub_1C1264410();
    sub_1C1262620();

    sub_1C12637D0();
    swift_getAtKeyPath();
    sub_1C1022584(v9, v8, v11, v10, v12, HIDWORD(v15), 0);
    return (*(v4 + 8))(v7, v16);
  }

  return result;
}

uint64_t sub_1C1019514@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1C12637E0();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE90428);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v14 - v10;
  sub_1C0FE5654(v2 + *(a1 + 80), &v14 - v10, &qword_1EBE90428);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_1C0FE4040(v11, a2, &qword_1EBE902F0);
  }

  sub_1C1266420();
  v13 = sub_1C1264410();
  sub_1C1262620();

  sub_1C12637D0();
  swift_getAtKeyPath();

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1C10196F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1C12637E0();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE904D8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v15 - v10;
  sub_1C0FE5654(v2 + *(a1 + 84), &v15 - v10, &qword_1EBE904D8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = sub_1C1263130();
    return (*(*(v12 - 8) + 32))(a2, v11, v12);
  }

  else
  {
    sub_1C1266420();
    v14 = sub_1C1264410();
    sub_1C1262620();

    sub_1C12637D0();
    swift_getAtKeyPath();

    return (*(v6 + 8))(v8, v5);
  }
}

uint64_t PhotosSearchRecentSuggestionsView_deprecated.init(recentSuggestions:isLandscape:canShowClearButton:clearRecentSearchesHandler:selectionHandler:)@<X0>(char a1@<W1>, char a2@<W2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X8>)
{
  *(a7 + 64) = swift_getKeyPath();
  *(a7 + 72) = 0u;
  *(a7 + 88) = 0u;
  *(a7 + 103) = 0;
  v9 = type metadata accessor for PhotosSearchRecentSuggestionsView_deprecated();
  v10 = v9[19];
  *(a7 + v10) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE90428);
  swift_storeEnumTagMultiPayload();
  v11 = v9[20];
  *(a7 + v11) = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  v12 = v9[21];
  *(a7 + v12) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE904D8);
  swift_storeEnumTagMultiPayload();
  swift_getKeyPath();
  type metadata accessor for PhotosSearchRecentSuggestionItem();
  sub_1C12661A0();
  swift_getWitnessTable();
  v13 = sub_1C1266A00();

  *a7 = v13;
  *(a7 + 8) = a1;
  *(a7 + 9) = a2;
  *(a7 + 16) = a3;
  *(a7 + 24) = a4;
  *(a7 + 32) = a5;
  *(a7 + 40) = a6;
  result = sub_1C1012790();
  *(a7 + 48) = result & 1;
  *(a7 + 56) = v15;
  return result;
}

void PhotosSearchRecentSuggestionsView_deprecated.body.getter()
{
  OUTLINED_FUNCTION_23();
  v24 = v0;
  v25 = v1;
  v3 = v2;
  v22[2] = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE90EF0);
  v22[1] = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_1EBE90EF8);
  v4 = *(v3 + 32);
  v26 = *(v3 + 16);
  v23 = v4;
  type metadata accessor for PhotosSearchRecentSuggestionItem();
  OUTLINED_FUNCTION_22();
  sub_1C1266800();
  v5 = *(v3 + 40);
  swift_getAssociatedTypeWitness();
  type metadata accessor for PhotosSearchRecentSuggestionCell_deprecated();
  OUTLINED_FUNCTION_9_11();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_0_14();
  swift_getWitnessTable();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  sub_1C12656A0();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  OUTLINED_FUNCTION_2_13();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_12_2();
  sub_1C12656E0();
  OUTLINED_FUNCTION_32_0();
  sub_1C1266790();
  OUTLINED_FUNCTION_12_2();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_22();
  sub_1C1265B00();
  OUTLINED_FUNCTION_6_1();
  sub_1C10239B0(v6, qword_1EBE90EF8);
  sub_1C1262E70();
  OUTLINED_FUNCTION_5_0();
  v31 = sub_1C10239B0(v7, qword_1EBE90EF8);
  WitnessTable = swift_getWitnessTable();
  OUTLINED_FUNCTION_12_0();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  OUTLINED_FUNCTION_11_0();
  sub_1C1262940();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE92FE0);
  OUTLINED_FUNCTION_22_5();
  OUTLINED_FUNCTION_20_1();
  sub_1C10239B0(v8, &qword_1EBE92FE0);
  swift_getOpaqueTypeMetadata2();
  v9 = swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  v36 = v9;
  v37 = AssociatedConformanceWitness;
  OUTLINED_FUNCTION_35_0();
  OUTLINED_FUNCTION_20_8();
  swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_35_0();
  OUTLINED_FUNCTION_18_7();
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v35 = OUTLINED_FUNCTION_35_0();
  OUTLINED_FUNCTION_17_8();
  swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_32_0();
  sub_1C1264360();
  OUTLINED_FUNCTION_12_2();
  sub_1C1263190();
  OUTLINED_FUNCTION_11_0();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_22();
  sub_1C1265B00();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_40_0();
  v10 = sub_1C12655A0();
  OUTLINED_FUNCTION_0();
  v12 = v11;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_30();
  v16 = v14 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = v22 - v18;
  sub_1C1263AB0();
  v27 = v26;
  v28 = v23;
  v29 = v5;
  v30 = v24;
  sub_1C1265590();
  OUTLINED_FUNCTION_1_1();
  v20 = swift_getWitnessTable();
  sub_1C0FDBA4C(v16, v10, v20);
  v21 = *(v12 + 8);
  v21(v16, v10);
  sub_1C0FDBA4C(v19, v10, v20);
  v21(v19, v10);
  OUTLINED_FUNCTION_22_0();
}

uint64_t sub_1C101A074@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v191 = a1;
  v173 = a6;
  v172 = sub_1C1264160();
  v171 = *(v172 - 8);
  MEMORY[0x1EEE9AC00](v172);
  v170 = &v133 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v199 = a2;
  v200 = a3;
  v201 = a4;
  v202 = a5;
  v189 = type metadata accessor for PhotosSearchRecentSuggestionsView_deprecated();
  v169 = *(v189 - 8);
  v167 = *(v169 + 64);
  MEMORY[0x1EEE9AC00](v189);
  v168 = &v133 - v11;
  v184 = sub_1C1263EB0();
  v187 = *(v184 - 8);
  MEMORY[0x1EEE9AC00](v184);
  v134 = &v133 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v182 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE902E8);
  MEMORY[0x1EEE9AC00](v182);
  v183 = &v133 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE902F0);
  v15 = MEMORY[0x1EEE9AC00](v14 - 8);
  v135 = &v133 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v186 = &v133 - v18;
  MEMORY[0x1EEE9AC00](v17);
  v185 = &v133 - v19;
  v188 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_1EBE90EF8);
  v192 = a2;
  v194 = a4;
  type metadata accessor for PhotosSearchRecentSuggestionItem();
  v20 = sub_1C1266800();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v199 = a2;
  v200 = a3;
  v193 = a3;
  v201 = a4;
  v202 = a5;
  v195 = a5;
  v22 = type metadata accessor for PhotosSearchRecentSuggestionCell_deprecated();
  WitnessTable = swift_getWitnessTable();
  v199 = v22;
  v200 = WitnessTable;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v25 = swift_getWitnessTable();
  v190 = AssociatedTypeWitness;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v199 = v20;
  v200 = AssociatedTypeWitness;
  v201 = OpaqueTypeMetadata2;
  v202 = v25;
  v203 = AssociatedConformanceWitness;
  sub_1C12656A0();
  v199 = v22;
  v200 = WitnessTable;
  v198[6] = swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  sub_1C12656E0();
  sub_1C1266790();
  swift_getTupleTypeMetadata2();
  sub_1C1265B00();
  sub_1C10239B0(&qword_1EDE7C010, qword_1EBE90EF8);
  v27 = sub_1C1262E70();
  v28 = sub_1C10239B0(&unk_1EDE7C000, qword_1EBE90EF8);
  v29 = swift_getWitnessTable();
  v198[4] = v28;
  v198[5] = v29;
  v30 = swift_getWitnessTable();
  v199 = v27;
  v200 = v30;
  v31 = swift_getOpaqueTypeMetadata2();
  v199 = v27;
  v200 = v30;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v180 = v31;
  v179 = OpaqueTypeConformance2;
  v33 = sub_1C1262940();
  v164 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v188 = &v133 - v34;
  v35 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE92FE0);
  v36 = swift_getWitnessTable();
  v37 = sub_1C10239B0(&unk_1EDE7B598, &qword_1EBE92FE0);
  v199 = v33;
  v200 = v35;
  v201 = v36;
  v202 = v37;
  v38 = swift_getOpaqueTypeMetadata2();
  v165 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v38);
  v162 = &v133 - v39;
  v199 = v33;
  v200 = v35;
  v153 = v36;
  v201 = v36;
  v202 = v37;
  v177 = v37;
  v40 = swift_getOpaqueTypeConformance2();
  v41 = v190;
  v199 = v38;
  v200 = v190;
  v201 = v40;
  v202 = AssociatedConformanceWitness;
  v42 = swift_getOpaqueTypeMetadata2();
  v161 = *(v42 - 8);
  MEMORY[0x1EEE9AC00](v42);
  v159 = &v133 - v43;
  v181 = v38;
  v199 = v38;
  v200 = v41;
  v158 = v40;
  v201 = v40;
  v202 = AssociatedConformanceWitness;
  v166 = AssociatedConformanceWitness;
  v44 = swift_getOpaqueTypeConformance2();
  v199 = v42;
  v200 = v44;
  v45 = swift_getOpaqueTypeMetadata2();
  v154 = *(v45 - 8);
  MEMORY[0x1EEE9AC00](v45);
  v151 = &v133 - v46;
  v163 = v42;
  v199 = v42;
  v200 = v44;
  v152 = v44;
  v47 = swift_getOpaqueTypeConformance2();
  v199 = v45;
  v200 = v47;
  v48 = swift_getOpaqueTypeMetadata2();
  v149 = *(v48 - 8);
  MEMORY[0x1EEE9AC00](v48);
  v145 = &v133 - v49;
  v157 = v45;
  v199 = v45;
  v200 = v47;
  v147 = v47;
  v50 = swift_getOpaqueTypeConformance2();
  v150 = v48;
  v199 = v48;
  v200 = v50;
  v143 = v50;
  v51 = swift_getOpaqueTypeMetadata2();
  v146 = *(v51 - 8);
  MEMORY[0x1EEE9AC00](v51);
  v141 = &v133 - v52;
  sub_1C1264360();
  v148 = v51;
  v53 = sub_1C1263190();
  v155 = *(v53 - 8);
  v54 = MEMORY[0x1EEE9AC00](v53);
  v160 = &v133 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = MEMORY[0x1EEE9AC00](v54);
  v144 = &v133 - v57;
  v58 = MEMORY[0x1EEE9AC00](v56);
  v156 = &v133 - v59;
  v60 = v35;
  v61 = MEMORY[0x1EEE9AC00](v58);
  v178 = &v133 - ((v62 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v61);
  v64 = &v133 - v63;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE911F0);
  MEMORY[0x1EEE9AC00](v65);
  v67 = &v133 - v66;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE90EF0);
  v69 = MEMORY[0x1EEE9AC00](v68);
  v142 = &v133 - ((v70 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v69);
  v72 = &v133 - v71;
  *v67 = sub_1C12638A0();
  *(v67 + 1) = 0;
  v67[16] = 1;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE911F8);
  sub_1C101B8A0(v191, v192, v193, v194, v195, &v67[*(v73 + 44)]);
  v74 = *MEMORY[0x1E697E728];
  v75 = sub_1C1263130();
  v76 = *(v75 - 8);
  v176 = *(v76 + 104);
  v175 = v76 + 104;
  v176(v64, v74, v75);
  v174 = sub_1C1023734(&qword_1EDE7BF90, MEMORY[0x1E697E730]);
  result = sub_1C1265DE0();
  if ((result & 1) == 0)
  {
    __break(1u);
    goto LABEL_16;
  }

  v139 = v33;
  v140 = v53;
  sub_1C10239B0(&qword_1EBE91200, &qword_1EBE911F0);
  v138 = v60;
  sub_1C1264BC0();
  sub_1C0F9E27C(v64, &qword_1EBE92FE0);
  sub_1C0F9E27C(v67, &qword_1EBE911F0);
  v78 = sub_1C1265A50();
  v79 = v189;
  v80 = v191;
  v81 = sub_1C10192D4();
  v136 = v68;
  v82 = *(v68 + 36);
  v137 = v72;
  v83 = &v72[v82];
  *v83 = v78;
  v83[8] = v81 & 1;
  LOBYTE(v78) = sub_1C1264420();
  sub_1C1264430();
  sub_1C1264430();
  v84 = sub_1C1264430();
  if (v84 != v78)
  {
    v84 = sub_1C1264430();
  }

  MEMORY[0x1EEE9AC00](v84);
  v85 = v193;
  *(&v133 - 6) = v192;
  *(&v133 - 5) = v85;
  v86 = v195;
  *(&v133 - 4) = v194;
  *(&v133 - 3) = v86;
  *(&v133 - 2) = v80;
  sub_1C106C824();
  v87 = v185;
  sub_1C1019514(v79, v185);
  v88 = v186;
  v89 = v184;
  (*(v187 + 104))(v186, *MEMORY[0x1E697FF38], v184);
  __swift_storeEnumTagSinglePayload(v88, 0, 1, v89);
  v90 = *(v182 + 48);
  v91 = v183;
  sub_1C0FE5654(v87, v183, &qword_1EBE902F0);
  sub_1C0FE5654(v88, v91 + v90, &qword_1EBE902F0);
  if (__swift_getEnumTagSinglePayload(v91, 1, v89) != 1)
  {
    v95 = v135;
    sub_1C0FE5654(v91, v135, &qword_1EBE902F0);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v91 + v90, 1, v89);
    v93 = v139;
    if (EnumTagSinglePayload != 1)
    {
      goto LABEL_12;
    }

    sub_1C0F9E27C(v186, &qword_1EBE902F0);
    sub_1C0F9E27C(v87, &qword_1EBE902F0);
    (*(v187 + 8))(v95, v89);
LABEL_9:
    sub_1C0F9E27C(v91, &qword_1EBE902E8);
    v91 = v181;
    v94 = v140;
    v90 = v178;
    while (1)
    {
      v176(v90, *MEMORY[0x1E697E6E0], v75);
      if (sub_1C1265DE0())
      {
        goto LABEL_14;
      }

      __break(1u);
LABEL_12:
      v97 = v187;
      v98 = v134;
      (*(v187 + 32))(v134, v91 + v90, v89);
      sub_1C1023734(&qword_1EDE7BAB0, MEMORY[0x1E697FF50]);
      LODWORD(v182) = sub_1C1265DE0();
      v99 = v91;
      v100 = v80;
      v101 = *(v97 + 8);
      v101(v98, v89);
      sub_1C0F9E27C(v186, &qword_1EBE902F0);
      sub_1C0F9E27C(v185, &qword_1EBE902F0);
      v101(v135, v89);
      v80 = v100;
      sub_1C0F9E27C(v99, &qword_1EBE902F0);
      v91 = v181;
      v94 = v140;
      v90 = v178;
      if (v182)
      {
        goto LABEL_13;
      }
    }
  }

  sub_1C0F9E27C(v88, &qword_1EBE902F0);
  sub_1C0F9E27C(v87, &qword_1EBE902F0);
  v92 = __swift_getEnumTagSinglePayload(v91 + v90, 1, v89);
  v93 = v139;
  if (v92 != 1)
  {
    goto LABEL_9;
  }

  sub_1C0F9E27C(v91, &qword_1EBE902F0);
  v91 = v181;
  v94 = v140;
  v90 = v178;
LABEL_13:
  v176(v90, *MEMORY[0x1E697E6E8], v75);
  result = sub_1C1265DE0();
  if (result)
  {
LABEL_14:
    v102 = v162;
    v103 = v188;
    sub_1C1264BC0();
    sub_1C0F9E27C(v90, &qword_1EBE92FE0);
    (*(v164 + 8))(v103, v93);
    swift_checkMetadataState();
    v104 = v169;
    v105 = v168;
    v106 = v94;
    v107 = v189;
    (*(v169 + 16))(v168, v80, v189);
    v108 = (*(v104 + 80) + 48) & ~*(v104 + 80);
    v109 = swift_allocObject();
    v110 = v193;
    *(v109 + 2) = v192;
    *(v109 + 3) = v110;
    v111 = v195;
    *(v109 + 4) = v194;
    *(v109 + 5) = v111;
    (*(v104 + 32))(&v109[v108], v105, v107);
    v112 = v159;
    sub_1C1264E40();

    (*(v165 + 8))(v102, v91);
    v113 = v170;
    sub_1C1264140();
    v114 = v163;
    sub_1C1005F50();
    v115 = v151;
    sub_1C1264C50();
    (*(v171 + 8))(v113, v172);
    (*(v161 + 8))(v112, v114);
    v116 = v145;
    v117 = v157;
    sub_1C1264CC0();
    (*(v154 + 8))(v115, v117);
    sub_1C101E478();
    v118 = v141;
    v119 = v150;
    v120 = v143;
    sub_1C1264B70();
    (*(v149 + 8))(v116, v119);
    v199 = v119;
    v200 = v120;
    v121 = swift_getOpaqueTypeConformance2();
    v122 = v144;
    v123 = v148;
    sub_1C1264DF0();
    (*(v146 + 8))(v118, v123);
    v124 = sub_1C1023734(&qword_1EDE7B8E0, MEMORY[0x1E697CBE8]);
    v198[2] = v121;
    v198[3] = v124;
    v125 = v106;
    v126 = swift_getWitnessTable();
    v127 = v156;
    sub_1C0FDBA4C(v122, v106, v126);
    v128 = v155;
    v129 = *(v155 + 8);
    v129(v122, v106);
    v130 = v137;
    v131 = v142;
    sub_1C0FE5654(v137, v142, &qword_1EBE90EF0);
    v199 = v131;
    v132 = v160;
    (*(v128 + 16))(v160, v127, v125);
    v200 = v132;
    v198[0] = v136;
    v198[1] = v125;
    v196 = sub_1C1022A1C();
    v197 = v126;
    sub_1C119EE80(&v199, 2, v198);
    v129(v127, v125);
    sub_1C0F9E27C(v130, &qword_1EBE90EF0);
    v129(v132, v125);
    return sub_1C0F9E27C(v131, &qword_1EBE90EF0);
  }

LABEL_16:
  __break(1u);
  return result;
}

uint64_t sub_1C101B8A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v70 = a6;
  v11 = sub_1C1264680();
  v87 = *(v11 - 8);
  v88 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v85 = &v70 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = a2;
  v90 = a2;
  v91 = a3;
  v76 = a3;
  v77 = a4;
  v92 = a4;
  v93 = a5;
  v78 = a5;
  v13 = type metadata accessor for PhotosSearchRecentSuggestionsView_deprecated();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v70 - v15;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE91230);
  MEMORY[0x1EEE9AC00](v80);
  v82 = &v70 - v17;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE91238);
  MEMORY[0x1EEE9AC00](v79);
  v84 = &v70 - v18;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE91240);
  v19 = MEMORY[0x1EEE9AC00](v83);
  v89 = &v70 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x1EEE9AC00](v19);
  v81 = &v70 - v22;
  MEMORY[0x1EEE9AC00](v21);
  v86 = &v70 - v23;
  sub_1C12639A0();
  if (qword_1EDE7E628 != -1)
  {
    swift_once();
  }

  v24 = qword_1EDE7E630;
  LOWORD(v69) = 256;
  v68 = 0;
  v25 = sub_1C12648D0();
  v27 = v26;
  v29 = v28;
  sub_1C101BFF8();
  v72 = sub_1C1264870();
  v71 = v30;
  v73 = v31;
  v74 = v32;

  sub_1C0FDB8E8(v25, v27, v29 & 1);

  v33 = sub_1C12639A0();
  v35 = v34;
  v37 = v36;
  v39 = v38;
  (*(v14 + 16))(v16, a1, v13);
  v40 = (*(v14 + 80) + 48) & ~*(v14 + 80);
  v41 = swift_allocObject();
  v42 = v76;
  v43 = v77;
  *(v41 + 2) = v75;
  *(v41 + 3) = v42;
  v44 = v78;
  *(v41 + 4) = v43;
  *(v41 + 5) = v44;
  v45 = (*(v14 + 32))(&v41[v40], v16, v13);
  MEMORY[0x1EEE9AC00](v45);
  *(&v70 - 4) = v33;
  *(&v70 - 3) = v35;
  LOBYTE(v68) = v37 & 1;
  v69 = v39;
  v46 = v82;
  sub_1C1265480();

  sub_1C1264530();
  v48 = v87;
  v47 = v88;
  v49 = v85;
  (*(v87 + 104))(v85, *MEMORY[0x1E6980EA8], v88);
  v50 = sub_1C12646C0();

  (*(v48 + 8))(v49, v47);
  KeyPath = swift_getKeyPath();
  v52 = (v46 + *(v80 + 36));
  *v52 = KeyPath;
  v52[1] = v50;
  if (sub_1C10192D4())
  {
    v53 = 1.0;
  }

  else
  {
    v53 = 0.0;
  }

  v54 = v84;
  sub_1C0FE4040(v46, v84, &qword_1EBE91230);
  *(v54 + *(v79 + 36)) = v53;
  v55 = sub_1C10192D4();
  v56 = swift_getKeyPath();
  v57 = swift_allocObject();
  *(v57 + 16) = (v55 & 1) == 0;
  v58 = v54;
  v59 = v81;
  sub_1C0FE4040(v58, v81, &qword_1EBE91238);
  v60 = (v59 + *(v83 + 36));
  *v60 = v56;
  v60[1] = sub_1C1023064;
  v60[2] = v57;
  v61 = v86;
  sub_1C0FE4040(v59, v86, &qword_1EBE91240);
  v62 = v89;
  sub_1C0FE5654(v61, v89, &qword_1EBE91240);
  v63 = v72;
  v64 = v70;
  v65 = v71;
  *v70 = v72;
  v64[1] = v65;
  LOBYTE(v57) = v73 & 1;
  *(v64 + 16) = v73 & 1;
  v64[3] = v74;
  v64[4] = 0;
  *(v64 + 40) = 1;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE91248);
  sub_1C0FE5654(v62, v64 + *(v66 + 64), &qword_1EBE91240);
  sub_1C0FDB850(v63, v65, v57);

  sub_1C0F9E27C(v61, &qword_1EBE91240);
  sub_1C0F9E27C(v62, &qword_1EBE91240);
  sub_1C0FDB8E8(v63, v65, v57);
}

uint64_t sub_1C101BFF8()
{
  v0 = sub_1C1264680();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C12646F0();
  (*(v1 + 104))(v3, *MEMORY[0x1E6980EA8], v0);
  v4 = sub_1C12646C0();

  (*(v1 + 8))(v3, v0);
  return v4;
}

uint64_t sub_1C101C104@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v45 = a1;
  v46 = a6;
  v40 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_1EBE90EF8);
  v43 = a2;
  v44 = a4;
  type metadata accessor for PhotosSearchRecentSuggestionItem();
  sub_1C1266800();
  swift_getAssociatedTypeWitness();
  v41 = a3;
  v42 = a5;
  v10 = type metadata accessor for PhotosSearchRecentSuggestionCell_deprecated();
  WitnessTable = swift_getWitnessTable();
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v59 = swift_getWitnessTable();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  sub_1C12656A0();
  v56 = v10;
  v57 = WitnessTable;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  sub_1C12656E0();
  sub_1C1266790();
  swift_getTupleTypeMetadata2();
  v12 = sub_1C1265B00();
  sub_1C10239B0(&qword_1EDE7C010, qword_1EBE90EF8);
  v36 = v12;
  v13 = sub_1C1262E70();
  v40 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v39 = &v33 - v14;
  v15 = sub_1C10239B0(&unk_1EDE7C000, qword_1EBE90EF8);
  v35 = swift_getWitnessTable();
  v53 = v15;
  v54 = v35;
  v34 = swift_getWitnessTable();
  v56 = v13;
  v57 = v34;
  v37 = MEMORY[0x1E697D1A0];
  v16 = swift_getOpaqueTypeMetadata2();
  v38 = *(v16 - 8);
  v17 = MEMORY[0x1EEE9AC00](v16);
  v19 = &v33 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v33 - v20;
  v23 = v43;
  v22 = v44;
  v25 = v41;
  v24 = v42;
  v56 = v43;
  v57 = v41;
  OpaqueTypeMetadata2 = v44;
  v59 = v42;
  type metadata accessor for PhotosSearchRecentSuggestionsView_deprecated();
  v26 = v45;
  v56 = sub_1C101C678();
  v48 = v23;
  v49 = v25;
  v50 = v22;
  v51 = v24;
  v52 = v26;
  v27 = sub_1C1022650();
  v28 = v39;
  sub_1C121710C(sub_1C1022BCC, v47, MEMORY[0x1E6981D78], v36, v27, v35, v39);

  v29 = v34;
  OUTLINED_FUNCTION_15_6();
  sub_1C1264CD0();
  (*(v40 + 8))(v28, v13);
  v56 = v13;
  v57 = v29;
  v30 = swift_getOpaqueTypeConformance2();
  sub_1C0FDBA4C(v19, v16, v30);
  v31 = *(v38 + 8);
  v31(v19, v16);
  sub_1C0FDBA4C(v21, v16, v30);
  return (v31)(v21, v16);
}

uint64_t sub_1C101C678()
{
  if (sub_1C101E478())
  {
    v3 = sub_1C12659A0();
    v4 = v0;
    v5 = 0x4028000000000000;
    v6 = 0;
    v7 = 0x4038000000000000;
    LOBYTE(v8) = 0;
    sub_1C1022D58();
  }

  else
  {
    sub_1C1019388(&v3);
    if (v8 < 0)
    {
      v1 = 0x4024000000000000;
    }

    else
    {
      v1 = 0x4028000000000000;
    }

    v3 = sub_1C12638E0();
    v4 = v1;
    LOBYTE(v5) = 0;
    sub_1C1022918();
  }

  return sub_1C1265A70();
}

uint64_t sub_1C101C720@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void (*a5)(uint64_t, uint64_t)@<X4>, uint64_t a6@<X8>)
{
  v49 = a1;
  v55 = a6;
  v58 = a2;
  v61 = a4;
  v52 = type metadata accessor for PhotosSearchRecentSuggestionItem();
  sub_1C1266800();
  swift_getAssociatedTypeWitness();
  v8 = a3;
  v60 = a5;
  v9 = type metadata accessor for PhotosSearchRecentSuggestionCell_deprecated();
  WitnessTable = swift_getWitnessTable();
  v59 = a3;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v74 = swift_getWitnessTable();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v11 = sub_1C12656A0();
  v71 = v9;
  v72 = WitnessTable;
  v70[2] = swift_getOpaqueTypeConformance2();
  v12 = swift_getWitnessTable();
  v13 = sub_1C12656E0();
  v51 = sub_1C1266790();
  v53 = *(v51 - 8);
  v14 = MEMORY[0x1EEE9AC00](v51);
  v57 = v48 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v54 = v48 - v17;
  v18 = *(v13 - 8);
  v19 = MEMORY[0x1EEE9AC00](v16);
  v48[0] = v48 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x1EEE9AC00](v19);
  v23 = v48 - v22;
  MEMORY[0x1EEE9AC00](v21);
  v25 = v48 - v24;
  v26 = v58;
  v62 = v58;
  v63 = v8;
  v27 = v60;
  v28 = v61;
  v64 = v61;
  v65 = v60;
  v29 = v49;
  v66 = v49;
  v48[2] = v11;
  v48[1] = v12;
  sub_1C12656D0();
  v30 = swift_getWitnessTable();
  v50 = v25;
  sub_1C0FDBA4C(v23, v13, v30);
  v56 = v18;
  v33 = *(v18 + 8);
  v32 = v18 + 8;
  v31 = v33;
  v33(v23, v13);
  v34 = sub_1C1266170();
  v71 = v26;
  v72 = v59;
  OpaqueTypeMetadata2 = v28;
  v74 = v27;
  type metadata accessor for PhotosSearchRecentSuggestionsView_deprecated();
  v35 = sub_1C101D290();
  v36 = 1;
  if (v35 < v34)
  {
    MEMORY[0x1EEE9AC00](v35);
    v37 = v59;
    v48[-6] = v58;
    v48[-5] = v37;
    v38 = v60;
    v48[-4] = v61;
    v48[-3] = v38;
    v48[-2] = v29;
    v39 = v48[0];
    sub_1C12656D0();
    sub_1C0FDBA4C(v39, v13, v30);
    v31(v39, v13);
    sub_1C0FDBA4C(v23, v13, v30);
    v31(v23, v13);
    (*(v56 + 32))(v57, v39, v13);
    v36 = 0;
  }

  v60 = v31;
  v61 = v32;
  v40 = v57;
  __swift_storeEnumTagSinglePayload(v57, v36, 1, v13);
  v41 = v54;
  sub_1C1170030(v40, v54);
  v42 = v53;
  v43 = *(v53 + 8);
  v44 = v51;
  v43(v40, v51);
  v45 = v50;
  (*(v56 + 16))(v23, v50, v13);
  v71 = v23;
  (*(v42 + 16))(v40, v41, v44);
  v72 = v40;
  v70[0] = v13;
  v70[1] = v44;
  v67 = v30;
  v68 = v30;
  v69 = swift_getWitnessTable();
  sub_1C119EE80(&v71, 2, v70);
  v43(v41, v44);
  v46 = v60;
  v60(v45, v13);
  v43(v40, v44);
  return v46(v23, v13);
}

uint64_t sub_1C101CDB4@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v43 = a1;
  v53 = a6;
  *&v60 = a2;
  *(&v60 + 1) = a3;
  *&v61 = a4;
  *(&v61 + 1) = a5;
  v10 = type metadata accessor for PhotosSearchRecentSuggestionsView_deprecated();
  v11 = *(v10 - 8);
  v52 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v51 = &v38 - v12;
  v13 = a2;
  v48 = a2;
  v49 = a4;
  v38 = type metadata accessor for PhotosSearchRecentSuggestionItem();
  v14 = sub_1C1266800();
  v47 = v14;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  *&v60 = v13;
  *(&v60 + 1) = a3;
  *&v61 = a4;
  *(&v61 + 1) = a5;
  v39 = a5;
  v16 = type metadata accessor for PhotosSearchRecentSuggestionCell_deprecated();
  v42 = v16;
  WitnessTable = swift_getWitnessTable();
  *&v60 = v16;
  *(&v60 + 1) = WitnessTable;
  v40 = MEMORY[0x1E697D328];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v45 = OpaqueTypeMetadata2;
  v18 = swift_getWitnessTable();
  v44 = v18;
  v46 = AssociatedTypeWitness;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  *&v60 = v14;
  *(&v60 + 1) = AssociatedTypeWitness;
  *&v61 = OpaqueTypeMetadata2;
  *(&v61 + 1) = v18;
  v62 = AssociatedConformanceWitness;
  v20 = sub_1C12656A0();
  v50 = *(v20 - 8);
  v21 = MEMORY[0x1EEE9AC00](v20);
  v23 = &v38 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v25 = &v38 - v24;
  v26 = v43;
  *&v58 = *v43;

  sub_1C101D290();
  sub_1C12661A0();
  swift_getWitnessTable();
  sub_1C1266360();
  v58 = v60;
  v59 = v61;
  v27 = v11;
  v28 = *(v11 + 16);
  v29 = v51;
  v28(v51, v26, v10);
  v30 = (*(v27 + 80) + 48) & ~*(v27 + 80);
  v31 = swift_allocObject();
  v32 = v49;
  *(v31 + 2) = v48;
  *(v31 + 3) = a3;
  v33 = v39;
  *(v31 + 4) = v32;
  *(v31 + 5) = v33;
  (*(v27 + 32))(&v31[v30], v29, v10);
  v56 = v42;
  v57 = WitnessTable;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v55 = v33;
  swift_getWitnessTable();
  sub_1C1265690();
  v54 = OpaqueTypeConformance2;
  v35 = swift_getWitnessTable();
  sub_1C0FDBA4C(v23, v20, v35);
  v36 = *(v50 + 8);
  v36(v23, v20);
  sub_1C0FDBA4C(v25, v20, v35);
  return (v36)(v25, v20);
}

uint64_t sub_1C101D290()
{
  if ((sub_1C101E478() & 1) == 0)
  {
    return 0;
  }

  return sub_1C101DD1C();
}

uint64_t sub_1C101D2DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v38 = a1;
  v49 = a3;
  v47 = *(a2 - 8);
  v48 = *(v47 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v45 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v6 + 32);
  v50 = *(v6 + 16);
  v41 = *(&v50 + 1);
  v42 = v50;
  v8 = type metadata accessor for PhotosSearchRecentSuggestionItem();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v34 - v10;
  v37 = *(a2 + 40);
  *&v12 = v7;
  v35 = v7;
  *(&v12 + 1) = v37;
  v52 = v12;
  v51 = v50;
  v13 = type metadata accessor for PhotosSearchRecentSuggestionCell_deprecated();
  v46 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v34 - v14;
  v36 = &v34 - v14;
  WitnessTable = swift_getWitnessTable();
  *&v51 = v13;
  *(&v51 + 1) = WitnessTable;
  v43 = MEMORY[0x1E697D328];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v44 = *(OpaqueTypeMetadata2 - 8);
  v17 = MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v19 = &v34 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v39 = &v34 - v20;
  (*(v9 + 16))(v11, v38, v8);
  v21 = *(v3 + 32);
  v22 = v15;
  v23 = v37;
  sub_1C101E4B8(v11, v21, *(v3 + 40), v22);
  sub_1C0FCF1B4(v21);
  LODWORD(v42) = sub_1C1264420();
  v41 = sub_1C12659B0();
  v24 = v47;
  v25 = v45;
  (*(v47 + 16))(v45, v3, a2);
  v26 = (*(v24 + 80) + 48) & ~*(v24 + 80);
  v27 = swift_allocObject();
  *(v27 + 16) = v50;
  *(v27 + 32) = v35;
  *(v27 + 40) = v23;
  (*(v24 + 32))(v27 + v26, v25, a2);
  v28 = WitnessTable;
  v29 = v36;
  sub_1C1264DC0();

  (*(v46 + 8))(v29, v13);
  *&v51 = v13;
  *(&v51 + 1) = v28;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v31 = v39;
  sub_1C0FDBA4C(v19, OpaqueTypeMetadata2, OpaqueTypeConformance2);
  v32 = *(v44 + 8);
  v32(v19, OpaqueTypeMetadata2);
  sub_1C0FDBA4C(v31, OpaqueTypeMetadata2, OpaqueTypeConformance2);
  return (v32)(v31, OpaqueTypeMetadata2);
}

uint64_t sub_1C101D768@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v51 = a6;
  *&v59 = a2;
  *(&v59 + 1) = a3;
  *&v60 = a4;
  *(&v60 + 1) = a5;
  v11 = type metadata accessor for PhotosSearchRecentSuggestionsView_deprecated();
  v49 = *(v11 - 8);
  v50 = *(v49 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v48 = v36 - v12;
  v45 = a2;
  v13 = a4;
  v46 = a4;
  v36[2] = type metadata accessor for PhotosSearchRecentSuggestionItem();
  v14 = sub_1C1266800();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v44 = AssociatedTypeWitness;
  *&v59 = a2;
  *(&v59 + 1) = a3;
  *&v60 = v13;
  *(&v60 + 1) = a5;
  v16 = type metadata accessor for PhotosSearchRecentSuggestionCell_deprecated();
  v41 = v16;
  WitnessTable = swift_getWitnessTable();
  *&v59 = v16;
  *(&v59 + 1) = WitnessTable;
  v39 = MEMORY[0x1E697D328];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v43 = OpaqueTypeMetadata2;
  v36[1] = v14;
  v18 = swift_getWitnessTable();
  v42 = v18;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  *&v59 = v14;
  *(&v59 + 1) = AssociatedTypeWitness;
  *&v60 = OpaqueTypeMetadata2;
  *(&v60 + 1) = v18;
  v61 = AssociatedConformanceWitness;
  v20 = sub_1C12656A0();
  v47 = *(v20 - 8);
  v21 = MEMORY[0x1EEE9AC00](v20);
  v37 = v36 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v38 = v36 - v23;
  v24 = *a1;
  v25 = sub_1C101D290();
  v58 = v24;
  *&v59 = v25;
  sub_1C12661A0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE91218);
  swift_getWitnessTable();
  sub_1C10239B0(&qword_1EBE91220, &qword_1EBE91218);
  sub_1C1265DB0();
  v54 = v56;
  v55 = v57;
  sub_1C101DD1C();
  swift_getWitnessTable();
  sub_1C1266360();
  v56 = v59;
  v57 = v60;
  v27 = v48;
  v26 = v49;
  (*(v49 + 16))(v48, a1, v11);
  v28 = (*(v26 + 80) + 48) & ~*(v26 + 80);
  v29 = swift_allocObject();
  *(v29 + 2) = v45;
  *(v29 + 3) = a3;
  *(v29 + 4) = v46;
  *(v29 + 5) = a5;
  (*(v26 + 32))(&v29[v28], v27, v11);
  *&v54 = v41;
  *(&v54 + 1) = WitnessTable;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v53 = a5;
  swift_getWitnessTable();
  v31 = v37;
  sub_1C1265690();
  v52 = OpaqueTypeConformance2;
  v32 = swift_getWitnessTable();
  v33 = v38;
  sub_1C0FDBA4C(v31, v20, v32);
  v34 = *(v47 + 8);
  v34(v31, v20);
  sub_1C0FDBA4C(v33, v20, v32);
  return (v34)(v33, v20);
}

uint64_t sub_1C101DD1C()
{
  if (sub_1C101E478())
  {
    return 4;
  }

  else
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }
}

void sub_1C101DD44()
{
  OUTLINED_FUNCTION_23();
  v25 = v1;
  v26 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v27 = v8;
  v28 = v9;
  v10 = type metadata accessor for PhotosSearchRecentSuggestionCell_deprecated();
  OUTLINED_FUNCTION_9_11();
  WitnessTable = swift_getWitnessTable();
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_0();
  v14 = v13;
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_30();
  v18 = v16 - v17;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v25 - v20;
  v29 = v7;
  v30 = v5;
  v31 = v3;
  v32 = v25;
  v22 = type metadata accessor for PhotosSearchRecentSuggestionsView_deprecated();
  sub_1C101D2DC(v26, v22, v18);
  v29 = v10;
  v30 = WitnessTable;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_1C0FDBA4C(v18, OpaqueTypeMetadata2, OpaqueTypeConformance2);
  v24 = *(v14 + 8);
  v24(v18, OpaqueTypeMetadata2);
  sub_1C0FDBA4C(v21, OpaqueTypeMetadata2, OpaqueTypeConformance2);
  v24(v21, OpaqueTypeMetadata2);
  OUTLINED_FUNCTION_22_0();
}

uint64_t sub_1C101DEF0(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v41 = a2;
  v39 = a5;
  v38 = type metadata accessor for PhotosSearchRecentSuggestionItem();
  v10 = sub_1C1266790();
  v35 = *(v10 - 8);
  v36 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v37 = &v31 - v11;
  v40 = a6;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v13 = sub_1C1266790();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = &v31 - v16;
  v18 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v15);
  v20 = &v31 - v19;
  v42 = a1;
  sub_1C12661A0();
  swift_getWitnessTable();
  sub_1C1266350();
  if (__swift_getEnumTagSinglePayload(v17, 1, AssociatedTypeWitness) == 1)
  {
    return (*(v14 + 8))(v17, v13);
  }

  v32 = v18;
  v22 = (*(v18 + 32))(v20, v17, AssociatedTypeWitness);
  v42 = *v41;
  MEMORY[0x1EEE9AC00](v22);
  v33 = a3;
  v34 = a4;
  *(&v31 - 6) = a3;
  *(&v31 - 5) = a4;
  v23 = v40;
  *(&v31 - 4) = v39;
  *(&v31 - 3) = v23;
  *(&v31 - 2) = v20;
  v24 = v38;
  sub_1C12661A0();

  swift_getWitnessTable();
  v25 = v37;
  sub_1C1265FF0();

  v26 = v20;
  if (__swift_getEnumTagSinglePayload(v25, 1, v24) == 1)
  {
    (*(v35 + 8))(v25, v36);
    v27 = 0;
  }

  else
  {
    v27 = *(v25 + *(v24 + 56));
    (*(*(v24 - 8) + 8))(v25, v24);
  }

  v28 = *(v41 + 9) & v27 & 1;
  v42 = v33;
  v43 = v34;
  v44 = v39;
  v45 = v40;
  type metadata accessor for PhotosSearchRecentSuggestionsView_deprecated();
  v29 = sub_1C10192D4();
  v30 = v32;
  if (v28 != (v29 & 1))
  {
    sub_1C101932C();
  }

  return (*(v30 + 8))(v26, AssociatedTypeWitness);
}

uint64_t sub_1C101E310()
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v1 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v3 = &v6 - v2;
  type metadata accessor for PhotosSearchRecentSuggestionItem();
  PhotosSearchRecentSuggestionItem<>.id.getter();
  swift_getAssociatedConformanceWitness();
  v4 = sub_1C1265DE0();
  (*(v1 + 8))(v3, AssociatedTypeWitness);
  return v4 & 1;
}

uint64_t sub_1C101E478()
{
  sub_1C1019388(v3);
  if ((v3[20] & 0x80000000) != 0)
  {
    v1 = 0;
  }

  else
  {
    v1 = *(v0 + 8) ^ 1;
  }

  return v1 & 1;
}

uint64_t sub_1C101E4B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for PhotosSearchRecentSuggestionItem();
  (*(*(v8 - 8) + 32))(a4, a1, v8);
  v9 = type metadata accessor for PhotosSearchRecentSuggestionCell_deprecated();
  v10 = (a4 + v9[13]);
  *v10 = a2;
  v10[1] = a3;
  v11 = a4 + v9[14];
  *v11 = swift_getKeyPath();
  *(v11 + 8) = 0u;
  *(v11 + 24) = 0u;
  *(v11 + 39) = 0;
  v12 = v9[15];
  *(a4 + v12) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE90428);
  return swift_storeEnumTagMultiPayload();
}

double sub_1C101E630(uint64_t a1)
{
  v64 = sub_1C1263EB0();
  v66 = *(v64 - 8);
  MEMORY[0x1EEE9AC00](v64);
  v58 = &v57 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE902E8);
  v4 = MEMORY[0x1EEE9AC00](v65);
  v63 = &v57 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v59 = &v57 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE902F0);
  v8 = MEMORY[0x1EEE9AC00](v7 - 8);
  v62 = &v57 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v61 = &v57 - v11;
  v12 = MEMORY[0x1EEE9AC00](v10);
  v60 = &v57 - v13;
  v14 = MEMORY[0x1EEE9AC00](v12);
  v57 = &v57 - v15;
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = &v57 - v17;
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v57 - v19;
  v21 = sub_1C1263130();
  v22 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v24 = &v57 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C1019388(v67);
  v25 = v68;
  sub_1C10196F8(a1, v24);
  v26 = sub_1C1263120();
  (*(v22 + 8))(v24, v21);
  if ((v25 & 0x80000000) == 0)
  {
    v27 = *(v1 + 8) == 0;
    if (v26)
    {
      result = 2.2;
      v29 = 3.5;
    }

    else
    {
      result = 4.2;
      v29 = 6.5;
    }

    goto LABEL_9;
  }

  v30 = a1;
  v31 = v18;
  v33 = v60;
  v32 = v61;
  v34 = v62;
  v35 = v63;
  v36 = v64;
  v37 = (v66 + 104);
  if ((v26 & 1) == 0)
  {
    sub_1C1019514(v30, v60);
    (*v37)(v32, *MEMORY[0x1E697FF40], v36);
    __swift_storeEnumTagSinglePayload(v32, 0, 1, v36);
    v41 = *(v65 + 48);
    v42 = v35;
    sub_1C0FE5654(v33, v35, &qword_1EBE902F0);
    sub_1C0FE5654(v32, v35 + v41, &qword_1EBE902F0);
    if (__swift_getEnumTagSinglePayload(v35, 1, v36) == 1)
    {
      sub_1C0F9E27C(v32, &qword_1EBE902F0);
      sub_1C0F9E27C(v33, &qword_1EBE902F0);
      if (__swift_getEnumTagSinglePayload(v35 + v41, 1, v36) == 1)
      {
        sub_1C0F9E27C(v35, &qword_1EBE902F0);
        return 2.5;
      }
    }

    else
    {
      v45 = v35;
      v46 = v34;
      sub_1C0FE5654(v45, v34, &qword_1EBE902F0);
      if (__swift_getEnumTagSinglePayload(v42 + v41, 1, v36) != 1)
      {
        v52 = v32;
        v53 = v66;
        v54 = v58;
        (*(v66 + 32))(v58, v42 + v41, v36);
        sub_1C1023734(&qword_1EDE7BAB0, MEMORY[0x1E697FF50]);
        v55 = sub_1C1265DE0();
        v56 = *(v53 + 8);
        v56(v54, v36);
        sub_1C0F9E27C(v52, &qword_1EBE902F0);
        sub_1C0F9E27C(v33, &qword_1EBE902F0);
        v56(v46, v36);
        sub_1C0F9E27C(v42, &qword_1EBE902F0);
        v27 = (v55 & 1) == 0;
        result = 4.5;
        v29 = 2.5;
        goto LABEL_9;
      }

      sub_1C0F9E27C(v32, &qword_1EBE902F0);
      sub_1C0F9E27C(v33, &qword_1EBE902F0);
      (*(v66 + 8))(v34, v36);
    }

    v44 = v42;
    goto LABEL_21;
  }

  sub_1C1019514(v30, v20);
  v38 = v31;
  (*v37)(v31, *MEMORY[0x1E697FF40], v36);
  __swift_storeEnumTagSinglePayload(v31, 0, 1, v36);
  v39 = *(v65 + 48);
  v40 = v59;
  sub_1C0FE5654(v20, v59, &qword_1EBE902F0);
  sub_1C0FE5654(v31, v40 + v39, &qword_1EBE902F0);
  if (__swift_getEnumTagSinglePayload(v40, 1, v36) == 1)
  {
    sub_1C0F9E27C(v31, &qword_1EBE902F0);
    sub_1C0F9E27C(v20, &qword_1EBE902F0);
    if (__swift_getEnumTagSinglePayload(v40 + v39, 1, v36) == 1)
    {
      sub_1C0F9E27C(v40, &qword_1EBE902F0);
      return 1.5;
    }

    goto LABEL_17;
  }

  v43 = v57;
  sub_1C0FE5654(v40, v57, &qword_1EBE902F0);
  if (__swift_getEnumTagSinglePayload(v40 + v39, 1, v36) == 1)
  {
    sub_1C0F9E27C(v31, &qword_1EBE902F0);
    sub_1C0F9E27C(v20, &qword_1EBE902F0);
    (*(v66 + 8))(v43, v36);
LABEL_17:
    v44 = v40;
LABEL_21:
    sub_1C0F9E27C(v44, &qword_1EBE902E8);
    return 4.5;
  }

  v47 = v66;
  v48 = v40 + v39;
  v49 = v58;
  (*(v66 + 32))(v58, v48, v36);
  sub_1C1023734(&qword_1EDE7BAB0, MEMORY[0x1E697FF50]);
  v50 = sub_1C1265DE0();
  v51 = *(v47 + 8);
  v51(v49, v36);
  sub_1C0F9E27C(v38, &qword_1EBE902F0);
  sub_1C0F9E27C(v20, &qword_1EBE902F0);
  v51(v43, v36);
  sub_1C0F9E27C(v40, &qword_1EBE902F0);
  v27 = (v50 & 1) == 0;
  result = 4.5;
  v29 = 1.5;
LABEL_9:
  if (!v27)
  {
    return v29;
  }

  return result;
}

uint64_t sub_1C101EE90@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v55 = a2;
  v3 = sub_1C12632E0();
  v43 = v3;
  v54 = *(v3 - 8);
  v4 = MEMORY[0x1EEE9AC00](v3);
  v53 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 - 8);
  v51.i64[0] = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_1EBE90EF8);
  v50 = *(a1 + 16);
  sub_1C1263190();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE91190);
  sub_1C1263190();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE91C40);
  sub_1C1263190();
  sub_1C1263190();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE91198);
  swift_getTupleTypeMetadata2();
  sub_1C1265B00();
  sub_1C10239B0(&qword_1EDE7C010, qword_1EBE90EF8);
  v9 = sub_1C1262E70();
  v10 = sub_1C10239B0(&unk_1EDE7C000, qword_1EBE90EF8);
  WitnessTable = swift_getWitnessTable();
  v64 = v10;
  v65 = WitnessTable;
  v48 = v9;
  v47 = swift_getWitnessTable();
  v12 = sub_1C12654A0();
  v49 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v44 = &v39 - v13;
  v14 = swift_getWitnessTable();
  v42 = v14;
  v41 = sub_1C1023734(&qword_1EDE7BCF0, MEMORY[0x1E697C248]);
  v60 = v12;
  v61 = v3;
  v62 = v14;
  v63 = v41;
  v45 = MEMORY[0x1E697CDB0];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v46 = *(OpaqueTypeMetadata2 - 8);
  v16 = MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v18 = &v39 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v40 = &v39 - v19;
  v20 = v6;
  v21 = *(v6 + 16);
  v22 = v52;
  v21(v8, v52, a1);
  v23 = (*(v20 + 80) + 48) & ~*(v20 + 80);
  v24 = swift_allocObject();
  v25 = a1;
  v26 = *(a1 + 40);
  v27 = v50;
  v28.i64[0] = v50;
  v51 = *(v25 + 24);
  v29 = *(v25 + 32);
  *(v24 + 16) = vzip1q_s64(v28, v51);
  *(v24 + 32) = v29;
  (*(v20 + 32))(v24 + v23, v8);
  v56 = v27;
  v57 = v51;
  v58 = v26;
  v59 = v22;
  v30 = v44;
  sub_1C1265480();
  v31 = v53;
  sub_1C12632D0();
  v32 = v43;
  v33 = v42;
  v34 = v41;
  sub_1C12649F0();
  (*(v54 + 8))(v31, v32);
  (*(v49 + 8))(v30, v12);
  v60 = v12;
  v61 = v32;
  v62 = v33;
  v63 = v34;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v36 = v40;
  sub_1C0FDBA4C(v18, OpaqueTypeMetadata2, OpaqueTypeConformance2);
  v37 = *(v46 + 8);
  v37(v18, OpaqueTypeMetadata2);
  sub_1C0FDBA4C(v36, OpaqueTypeMetadata2, OpaqueTypeConformance2);
  return (v37)(v36, OpaqueTypeMetadata2);
}

uint64_t sub_1C101F510(uint64_t a1)
{
  result = type metadata accessor for PhotosSearchRecentSuggestionCell_deprecated();
  v3 = *(a1 + *(result + 52));
  if (v3)
  {
    v4 = type metadata accessor for PhotosSearchRecentSuggestionItem();
    return v3(a1 + *(v4 + 48));
  }

  return result;
}

uint64_t sub_1C101F5A0@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v22[1] = a5;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_1EBE90EF8);
  sub_1C1263190();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE91190);
  sub_1C1263190();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE91C40);
  sub_1C1263190();
  sub_1C1263190();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE91198);
  swift_getTupleTypeMetadata2();
  sub_1C1265B00();
  sub_1C10239B0(&qword_1EDE7C010, qword_1EBE90EF8);
  v9 = sub_1C1262E70();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = v22 - v14;
  v22[4] = a1;
  v22[5] = a2;
  v22[6] = a3;
  v22[7] = a4;
  v16 = type metadata accessor for PhotosSearchRecentSuggestionCell_deprecated();
  sub_1C101F888(v16, v13);
  v17 = sub_1C10239B0(&unk_1EDE7C000, qword_1EBE90EF8);
  WitnessTable = swift_getWitnessTable();
  v22[2] = v17;
  v22[3] = WitnessTable;
  v19 = swift_getWitnessTable();
  sub_1C0FDBA4C(v13, v9, v19);
  v20 = *(v10 + 8);
  v20(v13, v9);
  sub_1C0FDBA4C(v15, v9, v19);
  return (v20)(v15, v9);
}

uint64_t sub_1C101F888@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v18[1] = a2;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_1EBE90EF8);
  v4 = *(a1 + 16);
  sub_1C1263190();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE91190);
  sub_1C1263190();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE91C40);
  sub_1C1263190();
  sub_1C1263190();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE91198);
  swift_getTupleTypeMetadata2();
  v5 = sub_1C1265B00();
  sub_1C10239B0(&qword_1EDE7C010, qword_1EBE90EF8);
  v6 = sub_1C1262E70();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = v18 - v11;
  v26 = sub_1C101FBB0(a1);
  v20 = v4;
  v21 = *(a1 + 24);
  v22 = *(a1 + 40);
  v23 = v2;
  v13 = sub_1C1022650();
  WitnessTable = swift_getWitnessTable();
  sub_1C121710C(sub_1C1022638, v19, MEMORY[0x1E6981D78], v5, v13, WitnessTable, v10);

  v24 = sub_1C10239B0(&unk_1EDE7C000, qword_1EBE90EF8);
  v25 = WitnessTable;
  v15 = swift_getWitnessTable();
  sub_1C0FDBA4C(v10, v6, v15);
  v16 = *(v7 + 8);
  v16(v10, v6);
  sub_1C0FDBA4C(v12, v6, v15);
  return (v16)(v12, v6);
}

uint64_t sub_1C101FBB0(uint64_t a1)
{
  v3 = sub_1C1263EB0();
  v48 = *(v3 - 8);
  v49 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v46 = &v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE902E8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v40 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE902F0);
  v9 = MEMORY[0x1EEE9AC00](v8 - 8);
  v47 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v50 = &v40 - v12;
  MEMORY[0x1EEE9AC00](v11);
  v51 = &v40 - v13;
  v14 = sub_1C12637E0();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = &v40 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = v1 + *(a1 + 56);
  v21 = *v19;
  v20 = *(v19 + 8);
  v23 = *(v19 + 16);
  v22 = *(v19 + 24);
  v24 = *(v19 + 32);
  v25 = *(v19 + 40);
  if (*(v19 + 42) == 1)
  {
    v52 = *v19;
    v53 = v20;
    v54 = v23;
    v55 = v22;
    v56 = v24;
    v57 = v25;
  }

  else
  {
    v43 = *(v19 + 32);
    v44 = v16;
    v41 = v23;
    v42 = v22;

    sub_1C1266420();
    v26 = sub_1C1264410();
    v45 = v7;
    v27 = v26;
    sub_1C1262620();

    v7 = v45;
    sub_1C12637D0();
    swift_getAtKeyPath();
    sub_1C1022584(v21, v20, v41, v42, v43, v25, 0);
    (*(v15 + 8))(v18, v44);
    LOWORD(v25) = v57;
  }

  v29 = v50;
  v28 = v51;
  if ((v25 & 0x8000) == 0)
  {
    goto LABEL_11;
  }

  sub_1C0FD72CC(v51);
  v31 = v48;
  v30 = v49;
  (*(v48 + 104))(v29, *MEMORY[0x1E697FF38], v49);
  __swift_storeEnumTagSinglePayload(v29, 0, 1, v30);
  v32 = *(v5 + 48);
  sub_1C0FE5654(v28, v7, &qword_1EBE902F0);
  sub_1C0FE5654(v29, &v7[v32], &qword_1EBE902F0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v30) == 1)
  {
    sub_1C0F9E27C(v29, &qword_1EBE902F0);
    sub_1C0F9E27C(v28, &qword_1EBE902F0);
    if (__swift_getEnumTagSinglePayload(&v7[v32], 1, v49) == 1)
    {
      sub_1C0F9E27C(v7, &qword_1EBE902F0);
LABEL_14:
      v52 = sub_1C12638E0();
      v53 = 0;
      LOBYTE(v54) = 1;
      sub_1C1022918();
      return sub_1C1265A70();
    }

    goto LABEL_10;
  }

  v33 = v47;
  sub_1C0FE5654(v7, v47, &qword_1EBE902F0);
  if (__swift_getEnumTagSinglePayload(&v7[v32], 1, v49) == 1)
  {
    sub_1C0F9E27C(v29, &qword_1EBE902F0);
    sub_1C0F9E27C(v28, &qword_1EBE902F0);
    (*(v31 + 8))(v33, v49);
LABEL_10:
    sub_1C0F9E27C(v7, &qword_1EBE902E8);
    goto LABEL_11;
  }

  v35 = &v7[v32];
  v36 = v46;
  v37 = v49;
  (*(v31 + 32))(v46, v35, v49);
  sub_1C1023734(&qword_1EDE7BAB0, MEMORY[0x1E697FF50]);
  v38 = sub_1C1265DE0();
  v39 = *(v31 + 8);
  v39(v36, v37);
  sub_1C0F9E27C(v29, &qword_1EBE902F0);
  sub_1C0F9E27C(v28, &qword_1EBE902F0);
  v39(v33, v37);
  sub_1C0F9E27C(v7, &qword_1EBE902F0);
  if (v38)
  {
    goto LABEL_14;
  }

LABEL_11:
  v52 = sub_1C1263AB0();
  v53 = 0;
  LOBYTE(v54) = 1;
  sub_1C10228C4();
  return sub_1C1265A70();
}

uint64_t sub_1C1020180@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v72 = a5;
  v76 = a4;
  v70 = a3;
  v77 = a1;
  v75 = a6;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE91198);
  v7 = MEMORY[0x1EEE9AC00](v73);
  v74 = &v61 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v71 = (&v61 - v10);
  v61 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v61 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1C1263190();
  v63 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v61 - v14;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE91190);
  v16 = sub_1C1263190();
  v64 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v61 - v17;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE91C40);
  v19 = sub_1C1263190();
  v68 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v61 - v20;
  v67 = sub_1C1263190();
  v69 = *(v67 - 8);
  v22 = MEMORY[0x1EEE9AC00](v67);
  v62 = &v61 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v66 = &v61 - v24;
  v65 = a2;
  v25 = v76;
  v26 = type metadata accessor for PhotosSearchRecentSuggestionItem();
  v27 = _s17PhotosSwiftUICore0A26SearchRecentSuggestionItemV7contentxycvg_0(v26);
  v27();

  sub_1C12649E0();
  (*(v61 + 8))(v12, a2);
  v81[8] = v25;
  v81[9] = MEMORY[0x1E697F568];
  WitnessTable = swift_getWitnessTable();
  sub_1C1264470();
  sub_1C1264940();
  (*(v63 + 8))(v15, v13);
  v29 = sub_1C10239B0(&qword_1EDE7BA70, &qword_1EBE91190);
  v81[6] = WitnessTable;
  v81[7] = v29;
  v30 = swift_getWitnessTable();
  OUTLINED_FUNCTION_15_6();
  sub_1C1264AE0();
  (*(v64 + 8))(v18, v16);
  sub_1C1265160();
  sub_1C12651E0();

  v31 = sub_1C10239B0(&qword_1EDE7C030, &qword_1EBE91C40);
  v81[4] = v30;
  v81[5] = v31;
  v32 = swift_getWitnessTable();
  v33 = v62;
  sub_1C1264F10();

  (*(v68 + 8))(v21, v19);
  v81[2] = v32;
  v81[3] = MEMORY[0x1E697E280];
  v34 = v67;
  v68 = swift_getWitnessTable();
  v35 = v66;
  v36 = v33;
  sub_1C0FDBA4C(v33, v34, v68);
  v37 = v69;
  v38 = *(v69 + 8);
  v38(v36, v34);
  v39 = sub_1C1263AB0();
  v40 = v71;
  *v71 = v39;
  *(v40 + 8) = 0;
  *(v40 + 16) = 1;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE911A0);
  sub_1C10209AC(v77, v40 + *(v41 + 44));
  LOBYTE(v32) = sub_1C12644C0();
  sub_1C12628A0();
  v43 = v42;
  v45 = v44;
  v47 = v46;
  v49 = v48;
  v50 = v40 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE911A8) + 36);
  *v50 = v32;
  *(v50 + 8) = v43;
  *(v50 + 16) = v45;
  *(v50 + 24) = v47;
  *(v50 + 32) = v49;
  *(v50 + 40) = 0;
  LOBYTE(v32) = sub_1C12644A0();
  sub_1C12628A0();
  v51 = v73;
  v52 = v40 + *(v73 + 36);
  *v52 = v32;
  *(v52 + 8) = v53;
  *(v52 + 16) = v54;
  *(v52 + 24) = v55;
  *(v52 + 32) = v56;
  *(v52 + 40) = 0;
  v57 = *(v37 + 16);
  v58 = v36;
  v57(v36, v35, v34);
  v81[0] = v36;
  v59 = v74;
  sub_1C0FE5654(v40, v74, &qword_1EBE91198);
  v81[1] = v59;
  v80[0] = v34;
  v80[1] = v51;
  v78 = v68;
  v79 = sub_1C10226A4();
  sub_1C119EE80(v81, 2, v80);
  sub_1C0F9E27C(v40, &qword_1EBE91198);
  v38(v35, v34);
  sub_1C0F9E27C(v59, &qword_1EBE91198);
  return (v38)(v58, v34);
}

uint64_t sub_1C10209AC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v64 = a2;
  v65 = sub_1C1264680();
  v3 = *(v65 - 8);
  MEMORY[0x1EEE9AC00](v65);
  v5 = &v56 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE911D0);
  v7 = v6 - 8;
  v8 = MEMORY[0x1EEE9AC00](v6);
  v63 = &v56 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v56 - v10;
  v12 = a1[1];
  v66 = *a1;
  v67 = v12;
  v13 = sub_1C0FDB9AC();

  v59 = v13;
  v14 = sub_1C12648F0();
  v16 = v15;
  v66 = v14;
  v67 = v15;
  v18 = v17 & 1;
  v68 = v17 & 1;
  v69 = v19;
  v20 = a1[3];
  v58 = a1[2];
  sub_1C1265090();
  sub_1C0FDB8E8(v14, v16, v18);

  sub_1C1264510();
  v21 = *MEMORY[0x1E6980EA8];
  v22 = v65;
  v57 = *(v3 + 104);
  v57(v5, v21, v65);
  v23 = sub_1C12646C0();

  v24 = *(v3 + 8);
  v60 = v5;
  v61 = v3 + 8;
  v24(v5, v22);
  v25 = v24;
  KeyPath = swift_getKeyPath();
  v27 = &v11[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE911D8) + 36)];
  *v27 = KeyPath;
  v27[1] = v23;
  v28 = *(v7 + 44);
  v62 = v11;
  v29 = &v11[v28];
  v30 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE93130) + 28);
  v31 = *MEMORY[0x1E6980FA8];
  v32 = sub_1C1264830();
  (*(*(v32 - 8) + 104))(v29 + v30, v31, v32);
  *v29 = swift_getKeyPath();
  if (v20)
  {
    v66 = v58;
    v67 = v20;

    v33 = sub_1C12648F0();
    v35 = v34;
    v37 = v36;
    sub_1C1264510();
    v38 = v60;
    v39 = v65;
    v57(v60, v21, v65);
    sub_1C12646C0();

    v25(v38, v39);
    v40 = sub_1C1264870();
    v42 = v41;
    LOBYTE(v39) = v43;

    sub_1C0FDB8E8(v33, v35, v37 & 1);

    v66 = sub_1C1265230();
    v44 = sub_1C1264850();
    v46 = v45;
    LOBYTE(v35) = v47;
    v49 = v48;
    sub_1C0FDB8E8(v40, v42, v39 & 1);

    v50 = v35 & 1;
    sub_1C0FDB850(v44, v46, v35 & 1);
  }

  else
  {
    v44 = 0;
    v46 = 0;
    v50 = 0;
    v49 = 0;
  }

  v52 = v62;
  v51 = v63;
  sub_1C0FE5654(v62, v63, &qword_1EBE911D0);
  v53 = v64;
  sub_1C0FE5654(v51, v64, &qword_1EBE911D0);
  v54 = (v53 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE911E0) + 48));
  sub_1C0FDB860(v44, v46, v50, v49);
  sub_1C0FDB8A4(v44, v46, v50, v49);
  *v54 = v44;
  v54[1] = v46;
  v54[2] = v50;
  v54[3] = v49;
  sub_1C0F9E27C(v52, &qword_1EBE911D0);
  sub_1C0FDB8A4(v44, v46, v50, v49);
  return sub_1C0F9E27C(v51, &qword_1EBE911D0);
}

double sub_1C1020ED4@<D0>(uint64_t a1@<X8>)
{
  EnvironmentValues.photosSearchStyle.getter();
  result = *&v3;
  *a1 = v3;
  *(a1 + 16) = v4;
  *(a1 + 32) = v5;
  *(a1 + 40) = v6;
  return result;
}

uint64_t sub_1C1020FE4()
{
  sub_1C1266E90();
  nullsub_1(v1);
  return sub_1C1266EE0();
}

uint64_t sub_1C1021064(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(char *))
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE902F0);
  v8 = OUTLINED_FUNCTION_15(v7);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v12 - v9;
  sub_1C0FE5654(a1, &v12 - v9, &qword_1EBE902F0);
  return a5(v10);
}

void sub_1C102128C()
{
  sub_1C1021A78(319, &qword_1EDE76AF0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
  if (v0 <= 0x3F)
  {
    swift_checkMetadataState();
    if (v1 <= 0x3F)
    {
      swift_getFunctionTypeMetadata0();
      type metadata accessor for EquatableHashableIgnored();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1C1021378(uint64_t result, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 24);
  v5 = *(v4 - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 80);
  if (v6 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v5 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v8 >= a2)
  {
LABEL_26:
    if ((v6 & 0x80000000) != 0)
    {
      return __swift_getEnumTagSinglePayload((((result + 23) & 0xFFFFFFFFFFFFFFF8) + v7 + 16) & ~v7, v6, v4);
    }

    else
    {
      v17 = *(result + 8);
      if (v17 >= 0xFFFFFFFF)
      {
        LODWORD(v17) = -1;
      }

      return (v17 + 1);
    }
  }

  else
  {
    v9 = ((*(*(v4 - 8) + 64) + ((v7 + 32) & ~v7) + 9) & 0xFFFFFFFFFFFFFFF8) + 16;
    v10 = a2 - v8;
    v11 = v9 & 0xFFFFFFF8;
    if ((v9 & 0xFFFFFFF8) != 0)
    {
      v12 = 2;
    }

    else
    {
      v12 = v10 + 1;
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

    switch(v14)
    {
      case 1:
        v15 = *(result + v9);
        if (!v15)
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 2:
        v15 = *(result + v9);
        if (!v15)
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 3:
        __break(1u);
        return result;
      case 4:
        v15 = *(result + v9);
        if (!v15)
        {
          goto LABEL_26;
        }

LABEL_22:
        v16 = v15 - 1;
        if (v11)
        {
          v16 = 0;
          LODWORD(v11) = *result;
        }

        result = v8 + (v11 | v16) + 1;
        break;
      default:
        goto LABEL_26;
    }
  }

  return result;
}

void sub_1C10214C8(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 24);
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  if (v8 <= 0x7FFFFFFF)
  {
    v9 = 0x7FFFFFFF;
  }

  else
  {
    v9 = *(v7 + 84);
  }

  v10 = *(v7 + 80);
  v11 = ((*(*(v6 - 8) + 64) + ((v10 + 32) & ~v10) + 9) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v9 >= a3)
  {
    v15 = 0;
  }

  else
  {
    v12 = a3 - v9;
    if (((*(*(v6 - 8) + 64) + ((v10 + 32) & ~v10) + 9) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v13 = v12 + 1;
    }

    else
    {
      v13 = 2;
    }

    if (v13 >= 0x10000)
    {
      v14 = 4;
    }

    else
    {
      v14 = 2;
    }

    if (v13 < 0x100)
    {
      v14 = 1;
    }

    if (v13 >= 2)
    {
      v15 = v14;
    }

    else
    {
      v15 = 0;
    }
  }

  if (a2 <= v9)
  {
    switch(v15)
    {
      case 1:
        a1[v11] = 0;
        if (a2)
        {
          goto LABEL_32;
        }

        break;
      case 2:
        *&a1[v11] = 0;
        if (a2)
        {
          goto LABEL_32;
        }

        break;
      case 3:
LABEL_42:
        __break(1u);
        break;
      case 4:
        *&a1[v11] = 0;
        goto LABEL_31;
      default:
LABEL_31:
        if (a2)
        {
LABEL_32:
          if ((v8 & 0x80000000) != 0)
          {
            v18 = (((a1 + 23) & 0xFFFFFFFFFFFFFFF8) + v10 + 16) & ~v10;

            __swift_storeEnumTagSinglePayload(v18, a2, v8, v6);
          }

          else if ((a2 & 0x80000000) != 0)
          {
            *a1 = a2 & 0x7FFFFFFF;
            *(a1 + 1) = 0;
          }

          else
          {
            *(a1 + 1) = (a2 - 1);
          }
        }

        break;
    }
  }

  else
  {
    if (((*(*(v6 - 8) + 64) + ((v10 + 32) & ~v10) + 9) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v16 = a2 - v9;
    }

    else
    {
      v16 = 1;
    }

    if (((*(*(v6 - 8) + 64) + ((v10 + 32) & ~v10) + 9) & 0xFFFFFFF8) != 0xFFFFFFF0)
    {
      v17 = ~v9 + a2;
      bzero(a1, v11);
      *a1 = v17;
    }

    switch(v15)
    {
      case 1:
        a1[v11] = v16;
        break;
      case 2:
        *&a1[v11] = v16;
        break;
      case 3:
        goto LABEL_42;
      case 4:
        *&a1[v11] = v16;
        break;
      default:
        return;
    }
  }
}

unint64_t sub_1C10216B8()
{
  type metadata accessor for PhotosSearchRecentSuggestionItem();
  v0 = sub_1C12661A0();
  if (v1 <= 0x3F)
  {
    v0 = sub_1C1007F88();
    if (v2 <= 0x3F)
    {
      sub_1C1021A78(319, &qword_1EDE76CA0, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);
      v0 = v3;
      if (v4 <= 0x3F)
      {
        sub_1C1021A14(319, &qword_1EDE77560, &qword_1EBE902F0, &unk_1C12B38C0, MEMORY[0x1E697DCC0]);
        v0 = v5;
        if (v6 <= 0x3F)
        {
          sub_1C100D364();
          if (v8 > 0x3F)
          {
            return v7;
          }

          else
          {
            swift_cvw_initStructMetadataWithLayoutString();
            return 0;
          }
        }
      }
    }
  }

  return v0;
}

void sub_1C1021844()
{
  type metadata accessor for PhotosSearchRecentSuggestionItem();
  sub_1C12661A0();
  if (v0 <= 0x3F)
  {
    sub_1C1021A14(319, &qword_1EDE768F0, &qword_1EBE90BA0, &unk_1C12A8220, MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      sub_1C1021A78(319, &qword_1EDE76CA0, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);
      if (v2 <= 0x3F)
      {
        sub_1C1021A78(319, &unk_1EBE958D0, &type metadata for PhotosSearchStyle, MEMORY[0x1E697DCC0]);
        if (v3 <= 0x3F)
        {
          sub_1C1021A14(319, &qword_1EDE77560, &qword_1EBE902F0, &unk_1C12B38C0, MEMORY[0x1E697DCC0]);
          if (v4 <= 0x3F)
          {
            sub_1C100D364();
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

void sub_1C1021A14(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_1C1021A78(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_1C1021AC8()
{
  type metadata accessor for PhotosSearchRecentSuggestionItem();
  if (v0 <= 0x3F)
  {
    sub_1C1021A14(319, &qword_1EDE768F0, &qword_1EBE90BA0, &unk_1C12A8220, MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      sub_1C1021A78(319, &unk_1EBE958D0, &type metadata for PhotosSearchStyle, MEMORY[0x1E697DCC0]);
      if (v2 <= 0x3F)
      {
        sub_1C1021A14(319, &qword_1EDE77560, &qword_1EBE902F0, &unk_1C12B38C0, MEMORY[0x1E697DCC0]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_1C1021C00(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 24);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(sub_1C1263EB0() - 8);
  v10 = *(v9 + 64);
  v11 = *(v6 + 80);
  if (!*(v9 + 84))
  {
    ++v10;
  }

  if (v10 <= 8)
  {
    v10 = 8;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 <= v8)
  {
    goto LABEL_27;
  }

  v12 = *(v9 + 80) & 0xF8 | 7;
  v13 = v10 + ((v12 + ((((((*(v6 + 64) + ((v11 + 32) & ~v11) + 9) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 43) & ~v12) + 1;
  v14 = 8 * v13;
  if (v13 <= 3)
  {
    v17 = ((a2 - v8 + ~(-1 << v14)) >> v14) + 1;
    if (HIWORD(v17))
    {
      v15 = *(a1 + v13);
      if (!v15)
      {
        goto LABEL_27;
      }

      goto LABEL_19;
    }

    if (v17 > 0xFF)
    {
      v15 = *(a1 + v13);
      if (!*(a1 + v13))
      {
        goto LABEL_27;
      }

      goto LABEL_19;
    }

    if (v17 < 2)
    {
LABEL_27:
      if ((v7 & 0x80000000) != 0)
      {

        return __swift_getEnumTagSinglePayload((((a1 + 23) & 0xFFFFFFFFFFFFFFF8) + v11 + 16) & ~v11, v7, v5);
      }

      else
      {
        v19 = *(a1 + 1);
        if (v19 >= 0xFFFFFFFF)
        {
          LODWORD(v19) = -1;
        }

        return (v19 + 1);
      }
    }
  }

  v15 = *(a1 + v13);
  if (!*(a1 + v13))
  {
    goto LABEL_27;
  }

LABEL_19:
  v18 = (v15 - 1) << v14;
  if (v13 > 3)
  {
    v18 = 0;
  }

  if (v13)
  {
    if (v13 > 3)
    {
      LODWORD(v13) = 4;
    }

    switch(v13)
    {
      case 2:
        LODWORD(v13) = *a1;
        break;
      case 3:
        LODWORD(v13) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v13) = *a1;
        break;
      default:
        LODWORD(v13) = *a1;
        break;
    }
  }

  return v8 + (v13 | v18) + 1;
}

void sub_1C1021E84(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 24);
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
  if (v9 <= 0x7FFFFFFF)
  {
    v10 = 0x7FFFFFFF;
  }

  else
  {
    v10 = *(v8 + 84);
  }

  v11 = *(sub_1C1263EB0() - 8);
  v12 = *(v11 + 64);
  v13 = *(v8 + 80);
  v14 = *(v11 + 80) & 0xF8 | 7;
  v15 = (v14 + ((((((*(v8 + 64) + ((v13 + 32) & ~v13) + 9) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 43) & ~v14;
  if (!*(v11 + 84))
  {
    ++v12;
  }

  if (v12 <= 8)
  {
    v12 = 8;
  }

  v16 = v12 + v15 + 1;
  v17 = 8 * v16;
  if (a3 <= v10)
  {
    v18 = 0;
  }

  else if (v16 <= 3)
  {
    v21 = ((a3 - v10 + ~(-1 << v17)) >> v17) + 1;
    if (HIWORD(v21))
    {
      v18 = 4;
    }

    else
    {
      if (v21 < 0x100)
      {
        v22 = 1;
      }

      else
      {
        v22 = 2;
      }

      if (v21 >= 2)
      {
        v18 = v22;
      }

      else
      {
        v18 = 0;
      }
    }
  }

  else
  {
    v18 = 1;
  }

  if (v10 >= a2)
  {
    switch(v18)
    {
      case 1:
        a1[v16] = 0;
        if (a2)
        {
          goto LABEL_31;
        }

        break;
      case 2:
        *&a1[v16] = 0;
        if (a2)
        {
          goto LABEL_31;
        }

        break;
      case 3:
LABEL_48:
        __break(1u);
        break;
      case 4:
        *&a1[v16] = 0;
        goto LABEL_30;
      default:
LABEL_30:
        if (a2)
        {
LABEL_31:
          if ((v9 & 0x80000000) != 0)
          {

            __swift_storeEnumTagSinglePayload((((a1 + 23) & 0xFFFFFFFFFFFFFFF8) + v13 + 16) & ~v13, a2, v9, v7);
          }

          else if ((a2 & 0x80000000) != 0)
          {
            *a1 = a2 & 0x7FFFFFFF;
            *(a1 + 1) = 0;
          }

          else
          {
            *(a1 + 1) = (a2 - 1);
          }
        }

        break;
    }
  }

  else
  {
    v19 = ~v10 + a2;
    if (v16 < 4)
    {
      v20 = (v19 >> v17) + 1;
      if (v16)
      {
        v23 = v19 & ~(-1 << v17);
        bzero(a1, v16);
        if (v16 == 3)
        {
          *a1 = v23;
          a1[2] = BYTE2(v23);
        }

        else if (v16 == 2)
        {
          *a1 = v23;
        }

        else
        {
          *a1 = v19;
        }
      }
    }

    else
    {
      bzero(a1, v16);
      *a1 = v19;
      v20 = 1;
    }

    switch(v18)
    {
      case 1:
        a1[v16] = v20;
        break;
      case 2:
        *&a1[v16] = v20;
        break;
      case 3:
        goto LABEL_48;
      case 4:
        *&a1[v16] = v20;
        break;
      default:
        return;
    }
  }
}

uint64_t sub_1C10221A0()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1C1022210(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(*(v4 - 8) + 84);
  v6 = *(*(v4 - 8) + 64);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return __swift_getEnumTagSinglePayload(a1, v5, v4);
  }

  v8 = 8 * v6;
  if (v6 <= 3)
  {
    v10 = ((v7 + ~(-1 << v8)) >> v8) + 1;
    if (HIWORD(v10))
    {
      v9 = *(a1 + v6);
      if (!v9)
      {
        goto LABEL_19;
      }

      goto LABEL_11;
    }

    if (v10 > 0xFF)
    {
      v9 = *(a1 + v6);
      if (!*(a1 + v6))
      {
        goto LABEL_19;
      }

      goto LABEL_11;
    }

    if (v10 < 2)
    {
LABEL_19:
      if (v5)
      {
        return __swift_getEnumTagSinglePayload(a1, v5, v4);
      }

      return 0;
    }
  }

  v9 = *(a1 + v6);
  if (!*(a1 + v6))
  {
    goto LABEL_19;
  }

LABEL_11:
  v11 = (v9 - 1) << v8;
  if (v6 > 3)
  {
    v11 = 0;
  }

  if (v6)
  {
    if (v6 > 3)
    {
      LODWORD(v6) = 4;
    }

    switch(v6)
    {
      case 2:
        LODWORD(v6) = *a1;
        break;
      case 3:
        LODWORD(v6) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v6) = *a1;
        break;
      default:
        LODWORD(v6) = *a1;
        break;
    }
  }

  return v5 + (v6 | v11) + 1;
}

void sub_1C102234C(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(*(v6 - 8) + 84);
  v8 = *(*(v6 - 8) + 64);
  v9 = 8 * v8;
  v10 = a3 >= v7;
  v11 = a3 - v7;
  if (v11 != 0 && v10)
  {
    if (v8 <= 3)
    {
      v15 = ((v11 + ~(-1 << v9)) >> v9) + 1;
      if (HIWORD(v15))
      {
        v12 = 4;
      }

      else
      {
        if (v15 < 0x100)
        {
          v16 = 1;
        }

        else
        {
          v16 = 2;
        }

        if (v15 >= 2)
        {
          v12 = v16;
        }

        else
        {
          v12 = 0;
        }
      }
    }

    else
    {
      v12 = 1;
    }
  }

  else
  {
    v12 = 0;
  }

  if (v7 >= a2)
  {
    switch(v12)
    {
      case 1:
        a1[v8] = 0;
        if (a2)
        {
          goto LABEL_24;
        }

        break;
      case 2:
        *&a1[v8] = 0;
        if (a2)
        {
          goto LABEL_24;
        }

        break;
      case 3:
LABEL_37:
        __break(1u);
        break;
      case 4:
        *&a1[v8] = 0;
        goto LABEL_23;
      default:
LABEL_23:
        if (a2)
        {
LABEL_24:

          __swift_storeEnumTagSinglePayload(a1, a2, v7, v6);
        }

        break;
    }
  }

  else
  {
    v13 = ~v7 + a2;
    if (v8 < 4)
    {
      v14 = (v13 >> v9) + 1;
      if (v8)
      {
        v17 = v13 & ~(-1 << v9);
        bzero(a1, v8);
        if (v8 == 3)
        {
          *a1 = v17;
          a1[2] = BYTE2(v17);
        }

        else if (v8 == 2)
        {
          *a1 = v17;
        }

        else
        {
          *a1 = v13;
        }
      }
    }

    else
    {
      bzero(a1, v8);
      *a1 = v13;
      v14 = 1;
    }

    switch(v12)
    {
      case 1:
        a1[v8] = v14;
        break;
      case 2:
        *&a1[v8] = v14;
        break;
      case 3:
        goto LABEL_37;
      case 4:
        *&a1[v8] = v14;
        break;
      default:
        return;
    }
  }
}

uint64_t sub_1C1022584(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  if ((a7 & 1) == 0)
  {
  }

  return result;
}

uint64_t sub_1C1022590()
{
  OUTLINED_FUNCTION_26_2();
  v0 = type metadata accessor for PhotosSearchRecentSuggestionCell_deprecated();
  OUTLINED_FUNCTION_15(v0);
  OUTLINED_FUNCTION_33_2();
  OUTLINED_FUNCTION_24_4();

  return sub_1C101F510(v1);
}

unint64_t sub_1C1022650()
{
  result = qword_1EDE7B798;
  if (!qword_1EDE7B798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE7B798);
  }

  return result;
}

unint64_t sub_1C10226A4()
{
  result = qword_1EBE911B0;
  if (!qword_1EBE911B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE91198);
    sub_1C1022730();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE911B0);
  }

  return result;
}

unint64_t sub_1C1022730()
{
  result = qword_1EBE911B8;
  if (!qword_1EBE911B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE911A8);
    sub_1C10239B0(&qword_1EBE911C0, &unk_1EBE911C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE911B8);
  }

  return result;
}

uint64_t sub_1C102280C()
{
  sub_1C1264830();
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v0);
  v1 = OUTLINED_FUNCTION_2();
  v2(v1);
  return sub_1C1263560();
}

unint64_t sub_1C10228C4()
{
  result = qword_1EBE911E8;
  if (!qword_1EBE911E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE911E8);
  }

  return result;
}

unint64_t sub_1C1022918()
{
  result = qword_1EDE7BFF0;
  if (!qword_1EDE7BFF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE7BFF0);
  }

  return result;
}

uint64_t sub_1C1022984()
{
  v1 = *(v0 + 40);
  OUTLINED_FUNCTION_26_2();
  v2 = type metadata accessor for PhotosSearchRecentSuggestionsView_deprecated();
  OUTLINED_FUNCTION_15(v2);
  OUTLINED_FUNCTION_33_2();
  OUTLINED_FUNCTION_24_4();

  return sub_1C101DEF0(v3, v4, v5, v6, v7, v1);
}

unint64_t sub_1C1022A1C()
{
  result = qword_1EBE91208;
  if (!qword_1EBE91208)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE90EF0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE911F0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE92FE0);
    sub_1C10239B0(&qword_1EBE91200, &qword_1EBE911F0);
    sub_1C10239B0(&unk_1EDE7B598, &qword_1EBE92FE0);
    swift_getOpaqueTypeConformance2();
    sub_1C10239B0(&qword_1EDE7BC78, &qword_1EBE91210);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE91208);
  }

  return result;
}

double sub_1C1022C30()
{
  OUTLINED_FUNCTION_26_2();
  v0 = type metadata accessor for PhotosSearchRecentSuggestionsView_deprecated();
  OUTLINED_FUNCTION_15(v0);
  OUTLINED_FUNCTION_33_2();
  OUTLINED_FUNCTION_24_4();

  return sub_1C101E5E0(v1);
}

void sub_1C1022CD8()
{
  OUTLINED_FUNCTION_43_1();
  OUTLINED_FUNCTION_26_2();
  v0 = type metadata accessor for PhotosSearchRecentSuggestionsView_deprecated();
  OUTLINED_FUNCTION_15(v0);
  OUTLINED_FUNCTION_27_2();
  sub_1C101DD44();
}

unint64_t sub_1C1022D58()
{
  result = qword_1EBE91228;
  if (!qword_1EBE91228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE91228);
  }

  return result;
}

uint64_t objectdestroy_66Tm()
{
  OUTLINED_FUNCTION_42_4();
  OUTLINED_FUNCTION_26_2();
  v2 = type metadata accessor for PhotosSearchRecentSuggestionsView_deprecated();
  OUTLINED_FUNCTION_30_0();
  v4 = v0 + ((*(v3 + 80) + 48) & ~*(v3 + 80));

  if (*(v4 + 16))
  {
  }

  if (*(v4 + 32))
  {
  }

  sub_1C1022584(*(v4 + 64), *(v4 + 72), *(v4 + 80), *(v4 + 88), *(v4 + 96), *(v4 + 104), *(v4 + 106));
  v5 = v2[19];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE90428);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_1C1263EB0();
    if (!OUTLINED_FUNCTION_47_1(v6))
    {
      OUTLINED_FUNCTION_15_1();
      (*(v7 + 8))(v4 + v5, v1);
    }
  }

  else
  {
  }

  v8 = v2[20];
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_1C1263EB0();
    if (!__swift_getEnumTagSinglePayload(v4 + v8, 1, v9))
    {
      OUTLINED_FUNCTION_15_1();
      (*(v10 + 8))(v4 + v8, v9);
    }
  }

  else
  {
  }

  v11 = v2[21];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE904D8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1C1263130();
    OUTLINED_FUNCTION_3();
    (*(v12 + 8))(v4 + v11);
  }

  else
  {
  }

  return OUTLINED_FUNCTION_36_2();
}

void sub_1C1022FE4()
{
  OUTLINED_FUNCTION_42_4();
  OUTLINED_FUNCTION_26_2();
  v1 = type metadata accessor for PhotosSearchRecentSuggestionsView_deprecated();
  OUTLINED_FUNCTION_15(v1);
  OUTLINED_FUNCTION_33_2();
  v3 = *(v0 + v2 + 16);
  if (v3)
  {
    v3();
  }
}

unint64_t sub_1C102306C()
{
  result = qword_1EBE91268;
  if (!qword_1EBE91268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE91268);
  }

  return result;
}

uint64_t sub_1C10230D8()
{
  OUTLINED_FUNCTION_43_1();
  v1 = *(v0 + 48);
  v2 = type metadata accessor for PhotosSearchRecentSuggestionsView();
  OUTLINED_FUNCTION_15(v2);
  v3 = OUTLINED_FUNCTION_27_2();

  return sub_1C1018A5C(v3, v4, v5, v6, v7, v8, v1, v9);
}

uint64_t sub_1C1023174()
{
  v1 = *(type metadata accessor for PhotosSearchRecentSuggestionsView() - 8);
  v2 = (*(v1 + 80) + 56) & ~*(v1 + 80);
  v3 = v2 + *(v1 + 64);
  v4 = type metadata accessor for PhotosSearchRecentSuggestionItem();
  OUTLINED_FUNCTION_15(v4);
  v6 = v0 + ((v3 + *(v5 + 80)) & ~*(v5 + 80));

  return sub_1C10190D8(v0 + v2, v6);
}

uint64_t sub_1C10232DC()
{
  OUTLINED_FUNCTION_42_4();
  OUTLINED_FUNCTION_26_2();
  v1 = type metadata accessor for PhotosSearchRecentSuggestionsView();
  v2 = OUTLINED_FUNCTION_15(v1);
  return (*(v0 + ((*(v3 + 80) + 56) & ~*(v3 + 80)) + 24))(v2);
}

unint64_t sub_1C1023368()
{
  result = qword_1EBE91298;
  if (!qword_1EBE91298)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE912A0);
    sub_1C10239B0(&qword_1EBE912A8, &qword_1EBE912B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE91298);
  }

  return result;
}

uint64_t objectdestroyTm_0()
{
  OUTLINED_FUNCTION_42_4();
  OUTLINED_FUNCTION_26_2();
  v2 = type metadata accessor for PhotosSearchRecentSuggestionsView();
  OUTLINED_FUNCTION_30_0();
  v4 = v0 + ((*(v3 + 80) + 56) & ~*(v3 + 80));

  v5 = v2[21];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE90428);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_1C1263EB0();
    if (!OUTLINED_FUNCTION_47_1(v6))
    {
      OUTLINED_FUNCTION_15_1();
      (*(v7 + 8))(v4 + v5, v1);
    }
  }

  else
  {
  }

  v8 = v2[22];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE904D8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1C1263130();
    OUTLINED_FUNCTION_3();
    (*(v9 + 8))(v4 + v8);
  }

  else
  {
  }

  v10 = v2[23];
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_1C1263EB0();
    if (!__swift_getEnumTagSinglePayload(v4 + v10, 1, v11))
    {
      OUTLINED_FUNCTION_15_1();
      (*(v12 + 8))(v4 + v10, v11);
    }
  }

  else
  {
  }

  return OUTLINED_FUNCTION_36_2();
}

uint64_t sub_1C1023658(uint64_t (*a1)(void))
{
  v1 = type metadata accessor for PhotosSearchRecentSuggestionsView();
  OUTLINED_FUNCTION_15(v1);
  OUTLINED_FUNCTION_24_4();

  return a1();
}

uint64_t sub_1C1023734(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1C102377C()
{
  result = qword_1EBE912D8;
  if (!qword_1EBE912D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE912C8);
    sub_1C10239B0(&qword_1EBE912E0, &unk_1EBE912E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE912D8);
  }

  return result;
}

uint64_t sub_1C102384C(unint64_t *a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    v7 = OUTLINED_FUNCTION_41(0, a2);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v7);
    a4();
    sub_1C10239B0(&unk_1EDE7B8D0, &unk_1EBE91970);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1C10238F8()
{
  result = qword_1EBE91308;
  if (!qword_1EBE91308)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE91310);
    sub_1C10239B0(&qword_1EBE91318, &qword_1EBE91320);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE91308);
  }

  return result;
}

uint64_t sub_1C10239B0(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    v4 = OUTLINED_FUNCTION_41(0, a2);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v4);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_36_2()
{

  return swift_deallocObject();
}

uint64_t PhotosInteractiveFloatingGlyphBadge.init(systemImageName:action:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = result;
  a5[1] = a2;
  a5[2] = a3;
  a5[3] = a4;
  return result;
}

uint64_t PhotosInteractiveFloatingGlyphBadge.body.getter@<X0>(uint64_t a1@<X8>)
{
  v18[1] = a1;
  v2 = sub_1C1263DA0();
  OUTLINED_FUNCTION_0();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  v7 = v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE91330);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v18 - v9;
  v12 = *v1;
  v11 = v1[1];
  v14 = v1[2];
  v13 = v1[3];
  v15 = swift_allocObject();
  v15[2] = v12;
  v15[3] = v11;
  v15[4] = v14;
  v15[5] = v13;
  v18[4] = v12;
  v18[5] = v11;
  v18[6] = v14;
  v18[7] = v13;
  sub_1C1023D10();

  sub_1C1265480();
  v16 = &v10[*(v8 + 36)];
  *v16 = 0xC020000000000000;
  v16[8] = 0;
  sub_1C1263D90();
  sub_1C1023D64();
  sub_1C1023E48();
  sub_1C12649F0();
  (*(v4 + 8))(v7, v2);
  return sub_1C1023EA0(v10);
}

uint64_t sub_1C1023D04@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 24);
  *a1 = *(v1 + 16);
  a1[1] = v2;
}

unint64_t sub_1C1023D10()
{
  result = qword_1EBE91338;
  if (!qword_1EBE91338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE91338);
  }

  return result;
}

unint64_t sub_1C1023D64()
{
  result = qword_1EBE91340;
  if (!qword_1EBE91340)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE91330);
    sub_1C0FDB6D4(&qword_1EBE91348, &qword_1EBE91350);
    sub_1C0FDB6D4(&unk_1EDE7BB90, &qword_1EBE91358);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE91340);
  }

  return result;
}

unint64_t sub_1C1023E48()
{
  result = qword_1EBE91360;
  if (!qword_1EBE91360)
  {
    sub_1C1263DA0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE91360);
  }

  return result;
}

uint64_t sub_1C1023EA0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE91330);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t PhotosFloatingGlyphBadge.body.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_1C12650F0();
  OUTLINED_FUNCTION_0();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);

  v8 = sub_1C12652F0();
  (*(v4 + 104))(v7, *MEMORY[0x1E69814C8], v2);
  v9 = sub_1C1265250();
  v10 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE91368) + 36));
  v11 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE91370) + 28);
  sub_1C1263AF0();
  v12 = sub_1C1263B00();
  __swift_storeEnumTagSinglePayload(v10 + v11, 0, 1, v12);
  *v10 = swift_getKeyPath();
  *a1 = v8;
  a1[1] = v9;
  a1[2] = 0x4008000000000000;
  a1[3] = 0;
  a1[4] = 0;
  v13 = sub_1C1265130();
  v14 = sub_1C1265190();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE91378);
  v16 = (a1 + *(result + 36));
  *v16 = v13;
  v16[1] = v14;
  return result;
}

uint64_t sub_1C10240B8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE913B8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  sub_1C1024394(a1, &v5 - v3);
  return sub_1C12636C0();
}

unint64_t sub_1C10241A0()
{
  result = qword_1EBE91380;
  if (!qword_1EBE91380)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE91378);
    sub_1C1024258();
    sub_1C0FDB6D4(&qword_1EBE913A8, &qword_1EBE913B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE91380);
  }

  return result;
}

unint64_t sub_1C1024258()
{
  result = qword_1EBE91388;
  if (!qword_1EBE91388)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE91368);
    sub_1C1024310();
    sub_1C0FDB6D4(&qword_1EBE913A0, &qword_1EBE91370);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE91388);
  }

  return result;
}

unint64_t sub_1C1024310()
{
  result = qword_1EBE91390;
  if (!qword_1EBE91390)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE91398);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE91390);
  }

  return result;
}

uint64_t sub_1C1024394(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE913B8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t PhotosBasicAsyncImage.init(provider:configuration:imageTargetSize:placeholderBackgroundColor:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, int a5@<W4>, uint64_t *a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v41 = a5;
  v39 = a3;
  v40 = a4;
  v38 = a2;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE913C0);
  OUTLINED_FUNCTION_15(v12);
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v34 - v14;
  v16 = *a6;
  v36 = a6[1];
  v37 = v16;
  v35 = *(a6 + 16);
  v17 = type metadata accessor for PhotosBasicAsyncImage();
  v18 = v17[12];
  *(a8 + v18) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE91930);
  swift_storeEnumTagMultiPayload();
  v19 = a8 + v17[13];
  *v19 = swift_getKeyPath();
  *(v19 + 8) = 0;
  v20 = a8 + v17[14];
  *v20 = swift_getKeyPath();
  *(v20 + 8) = 0;
  *(v20 + 20) = 0;
  *(v20 + 16) = 0;
  v21 = a8 + v17[15];
  *v21 = swift_getKeyPath();
  *(v21 + 8) = 0;
  *(v21 + 16) = 0;
  *(v21 + 24) = 0;
  *(v21 + 32) = 0;
  v22 = v17[16];
  sub_1C10246F8(sub_1C1024F88, 0);
  v23 = *(a7 - 8);
  (*(v23 + 16))(a8, a1, a7);
  v24 = v17[9];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v26 = *(AssociatedTypeWitness - 8);
  v27 = a8 + v24;
  v28 = v38;
  (*(v26 + 16))(v27, v38, AssociatedTypeWitness);
  v29 = a8 + v17[10];
  v30 = v40;
  *v29 = v39;
  *(v29 + 8) = v30;
  *(v29 + 16) = v41 & 1;
  v31 = a8 + v17[11];
  v32 = v36;
  *v31 = v37;
  *(v31 + 8) = v32;
  *(v31 + 16) = v35;
  type metadata accessor for PhotosBasicAsyncImageState();
  sub_1C12628D0();
  (*(v26 + 8))(v28, AssociatedTypeWitness);
  (*(v23 + 8))(a1, a7);
  return sub_1C102500C(v15, a8 + v22);
}

uint64_t sub_1C10246F8(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  type metadata accessor for PhotosBasicAsyncImageState();

  return sub_1C12628D0();
}

uint64_t sub_1C102477C@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for PhotosBasicAsyncImageState();
  swift_allocObject();
  result = sub_1C1026180();
  *a1 = result;
  return result;
}

uint64_t sub_1C10247BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1C12637E0();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE91930);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v15 - v10;
  sub_1C102EFA0(v2 + *(a1 + 48), &v15 - v10, &unk_1EBE91930);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = sub_1C12629F0();
    return (*(*(v12 - 8) + 32))(a2, v11, v12);
  }

  else
  {
    sub_1C1266420();
    v14 = sub_1C1264410();
    sub_1C1262620();

    sub_1C12637D0();
    swift_getAtKeyPath();

    return (*(v6 + 8))(v8, v5);
  }
}

double sub_1C10249C0(uint64_t a1)
{
  v3 = sub_1C12637E0();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = (v1 + *(a1 + 52));
  v8 = *v7;
  if (v7[8] == 1)
  {
    return *v7;
  }

  sub_1C1266420();
  v10 = sub_1C1264410();
  sub_1C1262620();

  sub_1C12637D0();
  swift_getAtKeyPath();
  sub_1C1008DBC(v8, 0);
  (*(v4 + 8))(v6, v3);
  return *&v11[1];
}

uint64_t sub_1C1024B18(uint64_t a1)
{
  v3 = sub_1C12637E0();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = v1 + *(a1 + 56);
  v8 = *v7;
  v9 = *(v7 + 8);
  v10 = *(v7 + 16) | (*(v7 + 20) << 32);
  if (*(v7 + 21) != 1)
  {

    sub_1C1266420();
    v11 = sub_1C1264410();
    sub_1C1262620();

    sub_1C12637D0();
    swift_getAtKeyPath();
    sub_1C1025D74(v8, v9, v10, 0);
    (*(v4 + 8))(v6, v3);
    return v13[1];
  }

  return v8;
}

uint64_t sub_1C1024CAC@<X0>(uint64_t a1@<X8>)
{
  result = sub_1C10B94F0();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 20) = v5 & 1;
  return result;
}

uint64_t sub_1C1024D2C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1C12637E0();
  v6 = *(v5 - 8);
  result = MEMORY[0x1EEE9AC00](v5);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = v2 + *(a1 + 60);
  v12 = *v10;
  v11 = *(v10 + 8);
  v14 = *(v10 + 16);
  v13 = *(v10 + 24);
  v15 = *(v10 + 32);
  if (*(v10 + 33) == 1)
  {
    *a2 = v12;
    *(a2 + 8) = v11;
    *(a2 + 16) = v14;
    *(a2 + 24) = v13;
    *(a2 + 32) = v15 & 1;
  }

  else
  {
    v18 = result;

    sub_1C1266420();
    v16 = sub_1C1264410();
    sub_1C1262620();

    sub_1C12637D0();
    swift_getAtKeyPath();
    sub_1C1025D80(v12, v11, v14, v13, v15, 0);
    return (*(v6 + 8))(v9, v18);
  }

  return result;
}

double sub_1C1024EB8@<D0>(uint64_t a1@<X8>)
{
  EnvironmentValues.photosFolderCornerRadius.getter();
  result = *&v3;
  *a1 = v3;
  *(a1 + 16) = v4;
  *(a1 + 32) = v5;
  return result;
}

uint64_t sub_1C1024F3C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE913C0);
  sub_1C12628E0();
  return v1;
}

uint64_t sub_1C1024F88()
{
  type metadata accessor for PhotosBasicAsyncImageState();
  swift_allocObject();
  return sub_1C1026180();
}

uint64_t type metadata accessor for PhotosBasicAsyncImageState()
{
  result = qword_1EDE81068;
  if (!qword_1EDE81068)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C102500C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE913C0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C102507C(uint64_t a1)
{
  v3 = sub_1C12629F0();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = (v1 + *(a1 + 44));
  v8 = *(v7 + 16);
  v10 = *v7;
  v11 = v8;
  sub_1C10247BC(a1, v6);
  sub_1C0FF5AB8();
  (*(v4 + 8))(v6, v3);
  return sub_1C1265210();
}

uint64_t PhotosBasicAsyncImage.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v113 = a2;
  v4 = *(a1 + 24);
  v117 = *(a1 + 16);
  v121 = v4;
  v102 = type metadata accessor for PhotosBasicAsyncImageLayer();
  sub_1C1262C70();
  OUTLINED_FUNCTION_0();
  v103 = v5;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_11_1(&v94[-v7]);
  v101 = v8;
  sub_1C1263190();
  OUTLINED_FUNCTION_0();
  v105 = v9;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_11_1(&v94[-v11]);
  v106 = v12;
  sub_1C1263190();
  OUTLINED_FUNCTION_0();
  v109 = v13;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_11_1(&v94[-v15]);
  v110 = v16;
  sub_1C1263190();
  OUTLINED_FUNCTION_0();
  v111 = v18;
  v112 = v17;
  v19 = MEMORY[0x1EEE9AC00](v17);
  v107 = &v94[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v19);
  v108 = &v94[-v21];
  v115 = sub_1C1262650();
  OUTLINED_FUNCTION_0();
  v97 = v22;
  v24 = MEMORY[0x1EEE9AC00](v23);
  v116 = &v94[-((v25 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v26 = *(a1 - 8);
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_11_1(&v94[-((v27 + 15) & 0xFFFFFFFFFFFFFFF0)]);
  v118 = v28;
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v94[-v30];
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE919B0);
  OUTLINED_FUNCTION_15(v32);
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v33);
  v35 = &v94[-v34];
  WitnessTable = swift_getWitnessTable();
  v37 = v2;
  View.photosTrace.getter(a1, WitnessTable);
  v38 = sub_1C1262680();
  if (__swift_getEnumTagSinglePayload(v35, 1, v38) == 1)
  {
    sub_1C0FFC7B0(v35, &qword_1EBE919B0);
    v39 = *(v26 + 16);
    v40 = (v26 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  }

  else
  {
    v119 = *(v26 + 16);
    v120 = (v26 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v119(v31, v2, a1);
    sub_1C1262640();
    v41 = sub_1C1262670();
    v42 = sub_1C1266520();
    v43 = v41;
    if (sub_1C1266730())
    {
      v44 = swift_slowAlloc();
      v95 = v42;
      v45 = v44;
      v96 = swift_slowAlloc();
      v122[0] = v96;
      *v45 = 136446210;
      v46 = View.photosChangedProperties.getter(a1, WitnessTable);
      v48 = v47;
      v49 = OUTLINED_FUNCTION_7_12();
      v50(v49);
      v51 = sub_1C0FA0E80(v46, v48, v122);

      *(v45 + 4) = v51;
      v52 = v116;
      v53 = sub_1C1262630();
      v54 = v43;
      _os_signpost_emit_with_name_impl(&dword_1C0F96000, v43, v95, v53, "PhotosBasicAsyncImage", "PhotosBasicAsyncImage %{public}s", v45, 0xCu);
      v55 = v96;
      __swift_destroy_boxed_opaque_existential_0Tm(v96);
      MEMORY[0x1C68F1630](v55, -1, -1);
      MEMORY[0x1C68F1630](v45, -1, -1);

      OUTLINED_FUNCTION_8_11();
      v56(v52, v115);
    }

    else
    {

      OUTLINED_FUNCTION_8_11();
      v57(v116, v115);
      v58 = OUTLINED_FUNCTION_7_12();
      v59(v58);
    }

    (*(*(v38 - 8) + 8))(v35, v38);
    v39 = v119;
    v40 = v120;
  }

  v114 = v37;
  v119 = v39;
  v120 = v40;
  v39(v98, v37, a1);
  v116 = *(v26 + 80);
  v60 = swift_allocObject();
  v61 = v117;
  v62 = v121;
  *(v60 + 16) = v117;
  *(v60 + 24) = v62;
  v115 = *(v26 + 32);
  v63 = OUTLINED_FUNCTION_3_16(v60);
  v64(v63);
  v65 = v100;
  sub_1C1262C60();
  OUTLINED_FUNCTION_2_14();
  v97 = v26 + 32;
  v66 = v101;
  v67 = swift_getWitnessTable();
  v68 = v99;
  sub_1C1264E50();
  OUTLINED_FUNCTION_8_11();
  v69(v65, v66);
  v70 = OUTLINED_FUNCTION_9_12();
  v71(v70);
  v72 = OUTLINED_FUNCTION_10_11();
  v73 = v121;
  *(v72 + 16) = v61;
  *(v72 + 24) = v73;
  v74 = OUTLINED_FUNCTION_3_16(v72);
  v115(v74);
  v75 = sub_1C1025E04();
  v122[5] = v67;
  v122[6] = v75;
  v76 = v106;
  v77 = swift_getWitnessTable();
  v78 = v104;
  sub_1C1264FF0();

  OUTLINED_FUNCTION_8_11();
  v79(v68, v76);
  v80 = OUTLINED_FUNCTION_9_12();
  v81(v80);
  v82 = OUTLINED_FUNCTION_10_11();
  v83 = v121;
  *(v82 + 16) = v117;
  *(v82 + 24) = v83;
  v84 = OUTLINED_FUNCTION_3_16(v82);
  v115(v84);
  v85 = MEMORY[0x1E69805D0];
  v122[3] = v77;
  v122[4] = MEMORY[0x1E69805D0];
  v86 = v110;
  v87 = swift_getWitnessTable();
  v88 = v107;
  sub_1C1264A60();

  (*(v109 + 8))(v78, v86);
  v122[1] = v87;
  v122[2] = v85;
  v89 = v112;
  v90 = swift_getWitnessTable();
  v91 = v108;
  sub_1C0FDBA4C(v88, v89, v90);
  v92 = *(v111 + 8);
  v92(v88, v89);
  sub_1C0FDBA4C(v91, v89, v90);
  return (v92)(v91, v89);
}

id sub_1C1025AC4(void *a1, uint64_t a2)
{
  v4 = *((*MEMORY[0x1E69E7D40] & *a1) + 0x50);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = sub_1C1266790();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = v24 - v7;
  v9 = sub_1C1266790();
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v24 - v10;
  v12 = type metadata accessor for PhotosBasicAsyncImage();
  v13 = sub_1C1024B18(v12);
  sub_1C1027014(v13, v15, v14 | ((HIDWORD(v14) & 1) << 32));
  v16 = sub_1C1024F3C();
  sub_1C1026DC4(v16);
  (*(*(v4 - 8) + 16))(v11, a2, v4);
  __swift_storeEnumTagSinglePayload(v11, 0, 1, v4);
  sub_1C1026F00(v11);
  (*(*(AssociatedTypeWitness - 8) + 16))(v8, a2 + *(v12 + 36), AssociatedTypeWitness);
  __swift_storeEnumTagSinglePayload(v8, 0, 1, AssociatedTypeWitness);
  sub_1C1027700(v8);
  v17 = sub_1C102507C(v12);
  sub_1C1027BE0(v17);
  sub_1C1027A1C(*(a2 + *(v12 + 40)), *(a2 + *(v12 + 40) + 8), *(a2 + *(v12 + 40) + 16));
  *&v18 = sub_1C10249C0(v12);
  sub_1C1027944(v18, 0);
  sub_1C1024D2C(v12, v24);
  v19 = 0.0;
  v20 = 0.0;
  v21 = 0.0;
  v22 = 0.0;
  if ((v25 & 1) == 0)
  {
    v22 = v24[3];
    v21 = v24[2];
    v20 = v24[1];
    v19 = v24[0];
  }

  CACornerRadiiMake(v24, v19, v20, v21, v22);
  return [a1 setCornerRadii_];
}

uint64_t sub_1C1025D74(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if ((a4 & 1) == 0)
  {
  }

  return result;
}

uint64_t sub_1C1025D80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  if ((a6 & 1) == 0)
  {
  }

  return result;
}

id sub_1C1025D8C(void *a1)
{
  v3 = type metadata accessor for PhotosBasicAsyncImage();
  OUTLINED_FUNCTION_15(v3);
  v5 = v1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));

  return sub_1C1025AC4(a1, v5);
}

unint64_t sub_1C1025E04()
{
  result = qword_1EDE7B8C0;
  if (!qword_1EDE7B8C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE7B8C0);
  }

  return result;
}

uint64_t sub_1C1025E58(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  type metadata accessor for PhotosBasicAsyncImage();
  sub_1C1024F3C();
  sub_1C102622C(a4);
}

uint64_t objectdestroyTm_1()
{
  v1 = *(v0 + 16);
  v2 = type metadata accessor for PhotosBasicAsyncImage();
  v3 = v0 + ((*(*(v2 - 1) + 80) + 32) & ~*(*(v2 - 1) + 80));
  (*(*(v1 - 8) + 8))(v3, v1);
  v4 = v2[9];
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_4_2();
  (*(v5 + 8))(v3 + v4);
  v6 = v2[12];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE91930);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1C12629F0();
    OUTLINED_FUNCTION_4_2();
    (*(v7 + 8))(v3 + v6);
  }

  else
  {
  }

  sub_1C1008DBC(*(v3 + v2[13]), *(v3 + v2[13] + 8));
  v8 = v3 + v2[14];
  sub_1C1025D74(*v8, *(v8 + 8), *(v8 + 16) | (*(v8 + 20) << 32), *(v8 + 21));
  v9 = v3 + v2[15];
  sub_1C1025D80(*v9, *(v9 + 8), *(v9 + 16), *(v9 + 24), *(v9 + 32), *(v9 + 33));
  v10 = v3 + v2[16];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE913C8);
  OUTLINED_FUNCTION_4_2();
  (*(v11 + 8))(v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE913D0);

  return swift_deallocObject();
}

uint64_t sub_1C1026100(char a1)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = type metadata accessor for PhotosBasicAsyncImage();
  OUTLINED_FUNCTION_15(v5);
  return sub_1C1025E58(v1 + ((*(v6 + 80) + 32) & ~*(v6 + 80)), v3, v4, a1);
}

uint64_t sub_1C1026180()
{
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  *(v0 + 32) = 0;
  sub_1C1261F60();
  return v0;
}

uint64_t sub_1C10261B0(uint64_t result)
{
  v2 = *(v1 + 16);
  if (v2 != (result & 1))
  {
    v3 = *(v1 + 24);
    if (v3)
    {

      v3(v2);

      return sub_1C0FCF004(v3);
    }
  }

  return result;
}

uint64_t sub_1C102622C(char a1)
{
  v2 = *(v1 + 16);
  *(v1 + 16) = a1;
  return sub_1C10261B0(v2);
}

uint64_t sub_1C102623C()
{
  sub_1C0FCF004(v0[3]);
  v1 = OBJC_IVAR____TtC17PhotosSwiftUICoreP33_460C0208308CE916CBE04D8DC5A9DDC126PhotosBasicAsyncImageState___observationRegistrar;
  v2 = sub_1C1261F70();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v3, v4);
}

id sub_1C10262E0()
{
  v1 = MEMORY[0x1E69E7D40];
  v2 = *v0;
  v3 = *MEMORY[0x1E69E7D40];
  *(v0 + *((*MEMORY[0x1E69E7D40] & *v0) + 0x60)) = 0;
  v4 = *((v3 & v2) + 0x50);
  __swift_storeEnumTagSinglePayload(v0 + *((*v1 & *v0) + 0x68), 1, 1, v4);
  v5 = v0 + *((*v1 & *v0) + 0x70);
  *v5 = 0;
  *(v5 + 1) = 0;
  *(v5 + 4) = 0;
  v5[20] = 1;
  v6 = v0 + *((*v1 & *v0) + 0x78);
  *v6 = 0u;
  *(v6 + 1) = 0u;
  v6[32] = 1;
  v7 = *((*v1 & *v0) + 0x80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  __swift_storeEnumTagSinglePayload(v0 + v7, 1, 1, AssociatedTypeWitness);
  v9 = v0 + *((*v1 & *v0) + 0x88);
  *v9 = 0;
  v9[8] = 1;
  v10 = v0 + *((*v1 & *v0) + 0x90);
  *v10 = 0;
  *(v10 + 1) = 0;
  v10[16] = 1;
  *(v0 + *((*v1 & *v0) + 0x98)) = 0;
  sub_1C1027ECC(v4, v0 + *((*v1 & *v0) + 0xA0));
  v11 = v0 + *((*v1 & *v0) + 0xA8);
  *v11 = 0;
  *(v11 + 1) = 0;
  v11[16] = 1;
  *(v0 + *((*v1 & *v0) + 0xB0)) = 0;
  v12 = v0 + *((*v1 & *v0) + 0xB8);
  *v12 = 0;
  v12[8] = 1;
  *(v0 + *((*v1 & *v0) + 0xC0)) = 0;
  v14.receiver = v0;
  v14.super_class = type metadata accessor for PhotosBasicAsyncImageLayer();
  return objc_msgSendSuper2(&v14, sel_init);
}

id sub_1C10265BC(void *a1)
{
  v3 = MEMORY[0x1E69E7D40];
  v4 = *v1;
  v5 = *MEMORY[0x1E69E7D40];
  *(v1 + *((*MEMORY[0x1E69E7D40] & *v1) + 0x60)) = 0;
  v6 = *((v5 & v4) + 0x50);
  __swift_storeEnumTagSinglePayload(v1 + *((*v3 & *v1) + 0x68), 1, 1, v6);
  v7 = v1 + *((*v3 & *v1) + 0x70);
  *v7 = 0;
  *(v7 + 1) = 0;
  *(v7 + 4) = 0;
  v7[20] = 1;
  v8 = v1 + *((*v3 & *v1) + 0x78);
  *v8 = 0u;
  *(v8 + 1) = 0u;
  v8[32] = 1;
  v9 = *((*v3 & *v1) + 0x80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  __swift_storeEnumTagSinglePayload(v1 + v9, 1, 1, AssociatedTypeWitness);
  v11 = v1 + *((*v3 & *v1) + 0x88);
  *v11 = 0;
  v11[8] = 1;
  v12 = v1 + *((*v3 & *v1) + 0x90);
  *v12 = 0;
  *(v12 + 1) = 0;
  v12[16] = 1;
  *(v1 + *((*v3 & *v1) + 0x98)) = 0;
  sub_1C1027ECC(v6, v1 + *((*v3 & *v1) + 0xA0));
  v13 = v1 + *((*v3 & *v1) + 0xA8);
  *v13 = 0;
  *(v13 + 1) = 0;
  v13[16] = 1;
  *(v1 + *((*v3 & *v1) + 0xB0)) = 0;
  v14 = v1 + *((*v3 & *v1) + 0xB8);
  *v14 = 0;
  v14[8] = 1;
  *(v1 + *((*v3 & *v1) + 0xC0)) = 0;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v15 = sub_1C1266D40();
  v18.receiver = v1;
  v18.super_class = type metadata accessor for PhotosBasicAsyncImageLayer();
  v16 = objc_msgSendSuper2(&v18, sel_initWithLayer_, v15);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  return v16;
}

id sub_1C10268B0()
{
  swift_unknownObjectRetain();
  sub_1C12667F0();
  swift_unknownObjectRelease();
  return sub_1C10265BC(v1);
}

id sub_1C1026900(void *a1)
{
  v3 = MEMORY[0x1E69E7D40];
  v4 = *v1;
  v5 = *MEMORY[0x1E69E7D40];
  *(v1 + *((*MEMORY[0x1E69E7D40] & *v1) + 0x60)) = 0;
  v6 = *((v5 & v4) + 0x50);
  __swift_storeEnumTagSinglePayload(v1 + *((*v3 & *v1) + 0x68), 1, 1, v6);
  v7 = v1 + *((*v3 & *v1) + 0x70);
  *v7 = 0;
  *(v7 + 1) = 0;
  *(v7 + 4) = 0;
  v7[20] = 1;
  v8 = v1 + *((*v3 & *v1) + 0x78);
  *v8 = 0u;
  *(v8 + 1) = 0u;
  v8[32] = 1;
  v9 = *((*v3 & *v1) + 0x80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  __swift_storeEnumTagSinglePayload(v1 + v9, 1, 1, AssociatedTypeWitness);
  v11 = v1 + *((*v3 & *v1) + 0x88);
  *v11 = 0;
  v11[8] = 1;
  v12 = v1 + *((*v3 & *v1) + 0x90);
  *v12 = 0;
  *(v12 + 1) = 0;
  v12[16] = 1;
  *(v1 + *((*v3 & *v1) + 0x98)) = 0;
  sub_1C1027ECC(v6, v1 + *((*v3 & *v1) + 0xA0));
  v13 = v1 + *((*v3 & *v1) + 0xA8);
  *v13 = 0;
  *(v13 + 1) = 0;
  v13[16] = 1;
  *(v1 + *((*v3 & *v1) + 0xB0)) = 0;
  v14 = v1 + *((*v3 & *v1) + 0xB8);
  *v14 = 0;
  v14[8] = 1;
  *(v1 + *((*v3 & *v1) + 0xC0)) = 0;
  v17.receiver = v1;
  v17.super_class = type metadata accessor for PhotosBasicAsyncImageLayer();
  v15 = objc_msgSendSuper2(&v17, sel_initWithCoder_, a1);

  if (v15)
  {
  }

  return v15;
}

uint64_t sub_1C1026C04(uint64_t result)
{
  v2 = (*MEMORY[0x1E69E7D40] & *v1);
  v3 = *(v1 + v2[12]);
  if (!result)
  {
    if (!v3)
    {
      return result;
    }

    goto LABEL_9;
  }

  if (v3)
  {
    v4 = v3 == result;
  }

  else
  {
    v4 = 1;
  }

  if (!v4)
  {
LABEL_9:
    v5 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v6 = swift_allocObject();
    v6[2] = v2[10];
    v6[3] = v2[11];
    v6[4] = v5;
    v7 = *(v3 + 24);
    *(v3 + 24) = sub_1C102EF80;
    *(v3 + 32) = v6;

    sub_1C0FCF004(v7);
  }

  return result;
}

void sub_1C1026D34(char a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    if (a1)
    {
      sub_1C1028310();
    }

    else
    {
      sub_1C102C7F0();
      *(v3 + *((*MEMORY[0x1E69E7D40] & *v3) + 0xC0)) = 1;
    }
  }
}

uint64_t sub_1C1026DC4(uint64_t a1)
{
  v2 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x60);
  v3 = *(v1 + v2);
  *(v1 + v2) = a1;

  sub_1C1026C04(v3);
}

uint64_t sub_1C1026E40@<X0>(uint64_t a1@<X8>)
{
  v3 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x68);
  swift_beginAccess();
  v4 = sub_1C1266790();
  return (*(*(v4 - 8) + 16))(a1, &v1[v3], v4);
}

uint64_t sub_1C1026F00(uint64_t a1)
{
  v3 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x68);
  swift_beginAccess();
  v4 = sub_1C1266790();
  (*(*(v4 - 8) + 40))(&v1[v3], a1, v4);
  return swift_endAccess();
}

uint64_t sub_1C1027014(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = v3 + *((*MEMORY[0x1E69E7D40] & *v3) + 0x70);
  *v4 = result;
  *(v4 + 1) = a2;
  *(v4 + 4) = a3;
  v4[20] = BYTE4(a3) & 1;
  return result;
}

uint64_t sub_1C1027050(char *a1)
{
  v2 = v1;
  v56 = a1;
  v3 = *v1;
  v4 = *MEMORY[0x1E69E7D40];
  v5 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x58);
  v51 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x50);
  v52 = v5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = sub_1C1266790();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v53 = *(TupleTypeMetadata2 - 8);
  v8 = MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v57 = &v46 - v9;
  v10 = *(v7 - 8);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v54 = &v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v46 - v14;
  v16 = MEMORY[0x1EEE9AC00](v13);
  v18 = &v46 - v17;
  v58 = *(AssociatedTypeWitness - 8);
  v19 = MEMORY[0x1EEE9AC00](v16);
  v50 = &v46 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v46 - v21;
  v23 = *((v4 & v3) + 0x80);
  swift_beginAccess();
  v24 = *(v10 + 16);
  v24(v18, &v2[v23], v7);
  if (__swift_getEnumTagSinglePayload(v18, 1, AssociatedTypeWitness) == 1)
  {
    return (*(v10 + 8))(v18, v7);
  }

  v48 = v10;
  v26 = v58;
  v47 = *(v58 + 32);
  v47(v22, v18, AssociatedTypeWitness);
  v27 = *(v26 + 16);
  v49 = v22;
  v27(v15, v22, AssociatedTypeWitness);
  __swift_storeEnumTagSinglePayload(v15, 0, 1, AssociatedTypeWitness);
  v28 = TupleTypeMetadata2;
  v29 = *(TupleTypeMetadata2 + 48);
  v30 = v57;
  v24(v57, v56, v7);
  v24((v30 + v29), v15, v7);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v30, 1, AssociatedTypeWitness);
  v32 = v28;
  if (EnumTagSinglePayload == 1)
  {
    v33 = *(v48 + 8);
    v33(v15, v7);
    v34 = v57;
    if (__swift_getEnumTagSinglePayload(&v57[v29], 1, AssociatedTypeWitness) == 1)
    {
      v33(v34, v7);
      return (*(v58 + 8))(v49, AssociatedTypeWitness);
    }

    goto LABEL_8;
  }

  v56 = v15;
  v35 = v54;
  v36 = v57;
  v24(v54, v57, v7);
  v37 = __swift_getEnumTagSinglePayload(&v36[v29], 1, AssociatedTypeWitness);
  v38 = (v58 + 8);
  v34 = v36;
  if (v37 == 1)
  {
    (*(v48 + 8))(v56, v7);
    (*v38)(v35, AssociatedTypeWitness);
LABEL_8:
    (*(v53 + 8))(v34, v32);
    v39 = v58;
LABEL_9:
    v2[*((*MEMORY[0x1E69E7D40] & *v2) + 0xC0)] = 1;
    sub_1C1028310();
    return (*(v39 + 8))(v49, AssociatedTypeWitness);
  }

  v40 = &v36[v29];
  v41 = v50;
  v47(v50, v40, AssociatedTypeWitness);
  swift_getAssociatedConformanceWitness();
  v42 = sub_1C1265DE0();
  v43 = v34;
  v44 = *v38;
  (*v38)(v41, AssociatedTypeWitness);
  v45 = *(v48 + 8);
  v45(v56, v7);
  v44(v54, AssociatedTypeWitness);
  v45(v43, v7);
  v39 = v58;
  if ((v42 & 1) == 0)
  {
    goto LABEL_9;
  }

  return (v44)(v49, AssociatedTypeWitness);
}

uint64_t sub_1C1027610@<X0>(uint64_t a1@<X8>)
{
  v3 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x80);
  swift_beginAccess();
  swift_getAssociatedTypeWitness();
  v4 = sub_1C1266790();
  return (*(*(v4 - 8) + 16))(a1, &v1[v3], v4);
}

uint64_t sub_1C1027700(uint64_t a1)
{
  v3 = *v1;
  v4 = *MEMORY[0x1E69E7D40];
  swift_getAssociatedTypeWitness();
  v5 = sub_1C1266790();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v12[-v7];
  v9 = *((v4 & v3) + 0x80);
  swift_beginAccess();
  (*(v6 + 16))(v8, &v1[v9], v5);
  swift_beginAccess();
  (*(v6 + 24))(&v1[v9], a1, v5);
  swift_endAccess();
  sub_1C1027050(v8);
  v10 = *(v6 + 8);
  v10(a1, v5);
  return (v10)(v8, v5);
}

void sub_1C10278C0(uint64_t a1, char a2)
{
  v3 = (v2 + *((*MEMORY[0x1E69E7D40] & *v2) + 0x88));
  v4 = *(v3 + 8);
  if (a2)
  {
    if (v3[1])
    {
      return;
    }

    goto LABEL_3;
  }

  if (*v3 != *&a1)
  {
    v4 = 1;
  }

  if (v4)
  {
LABEL_3:
    sub_1C1028554();
  }
}

void sub_1C1027944(uint64_t a1, char a2)
{
  v3 = v2 + *((*MEMORY[0x1E69E7D40] & *v2) + 0x88);
  v4 = *v3;
  v5 = v3[8];
  *v3 = a1;
  v3[8] = a2 & 1;
  sub_1C10278C0(v4, v5);
}

void sub_1C102798C(uint64_t a1, uint64_t a2, char a3)
{
  v4 = (v3 + *((*MEMORY[0x1E69E7D40] & *v3) + 0x90));
  if (a3)
  {
    if (v4[2])
    {
      return;
    }

LABEL_9:
    sub_1C1028554();
    return;
  }

  if (v4[2])
  {
    goto LABEL_9;
  }

  if (*v4 != *&a1 || v4[1] != *&a2)
  {
    goto LABEL_9;
  }
}

void sub_1C1027A1C(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3 + *((*MEMORY[0x1E69E7D40] & *v3) + 0x90);
  v5 = *v4;
  v6 = *(v4 + 1);
  v7 = v4[16];
  *v4 = a1;
  *(v4 + 1) = a2;
  v4[16] = a3 & 1;
  sub_1C102798C(v5, v6, v7);
}

void sub_1C1027A68(uint64_t a1)
{
  v2 = *(v1 + *((*MEMORY[0x1E69E7D40] & *v1) + 0x98));
  if (a1)
  {
    if (v2)
    {
      type metadata accessor for CGColor(0);
      sub_1C102EF38(&qword_1EDE7B6E0, type metadata accessor for CGColor);
      v3 = v2;
      v4 = sub_1C1261FC0();

      if (v4)
      {
        return;
      }
    }
  }

  else if (!v2)
  {
    return;
  }

  v5 = sub_1C10281A0();
  if (v5)
  {
  }

  else
  {

    sub_1C10288C4(0);
  }
}

void *sub_1C1027B94()
{
  v1 = *(v0 + *((*MEMORY[0x1E69E7D40] & *v0) + 0x98));
  v2 = v1;
  return v1;
}

void sub_1C1027BE0(void *a1)
{
  v2 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x98);
  v4 = *(v1 + v2);
  *(v1 + v2) = a1;
  v3 = a1;
  sub_1C1027A68(v4);
}

id sub_1C1027C5C()
{
  sub_1C1265EA0();
  v0 = sub_1C0FD233C();

  return v0;
}

double sub_1C1027CAC(void *a1)
{
  v1 = a1;
  sub_1C1027D08();
  v3 = v2;

  return v3;
}

id sub_1C1027D08()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PhotosBasicAsyncImageLayer();
  return objc_msgSendSuper2(&v2, sel_bounds);
}

void sub_1C1027D78(void *a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  v9 = a1;
  sub_1C1027DF0(a2, a3, a4, a5);
}

void sub_1C1027DF0(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  v9 = type metadata accessor for PhotosBasicAsyncImageLayer();
  v11.receiver = v4;
  v11.super_class = v9;
  objc_msgSendSuper2(&v11, sel_bounds);
  v13.origin.x = a1;
  v13.origin.y = a2;
  v13.size.width = a3;
  v13.size.height = a4;
  if (!CGRectEqualToRect(v12, v13))
  {
    v10.receiver = v4;
    v10.super_class = v9;
    objc_msgSendSuper2(&v10, sel_setBounds_, a1, a2, a3, a4);
    sub_1C1028554();
  }
}

uint64_t sub_1C1027ECC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  __swift_storeEnumTagSinglePayload(a2, 1, 1, AssociatedTypeWitness);
  v5 = type metadata accessor for PhotosBasicAsyncImageLoadingState();
  v6 = v5[9];
  v7 = swift_getAssociatedTypeWitness();
  __swift_storeEnumTagSinglePayload(a2 + v6, 1, 1, v7);
  __swift_storeEnumTagSinglePayload(a2 + v5[10], 1, 1, a1);
  v8 = a2 + v5[11];
  *v8 = 0;
  *(v8 + 8) = 0;
  *(v8 + 16) = 1;
  v9 = a2 + v5[12];
  *v9 = 0;
  *(v9 + 8) = 0;
  *(v9 + 16) = 0;
  *(v9 + 24) = 2;
  *(a2 + v5[13]) = 0;
  v10 = (a2 + v5[14]);
  result = sub_1C1266560();
  *v10 = v12;
  v10[1] = v13;
  v10[2] = v14;
  v10[3] = v15;
  v16 = a2 + v5[15];
  *v16 = 0;
  *(v16 + 8) = 0;
  *(v16 + 16) = 1;
  return result;
}

uint64_t sub_1C1027FF8@<X0>(uint64_t a1@<X8>)
{
  v3 = *((*MEMORY[0x1E69E7D40] & *v1) + 0xA0);
  swift_beginAccess();
  v4 = type metadata accessor for PhotosBasicAsyncImageLoadingState();
  return (*(*(v4 - 8) + 16))(a1, &v1[v3], v4);
}

void sub_1C10280CC(uint64_t a1, uint64_t a2, char a3)
{
  v4 = (v3 + *((*MEMORY[0x1E69E7D40] & *v3) + 0xA8));
  if ((v4[2] & 1) == 0)
  {
    v5 = *v4;
    v6 = v4[1];
    if ((a3 & 1) != 0 || (v5 == *&a1 ? (v7 = v6 == *&a2) : (v7 = 0), !v7))
    {
      sub_1C102BF30(v5, v6);
    }
  }
}

void sub_1C1028154(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3 + *((*MEMORY[0x1E69E7D40] & *v3) + 0xA8);
  v5 = *v4;
  v6 = *(v4 + 1);
  v7 = v4[16];
  *v4 = a1;
  *(v4 + 1) = a2;
  v4[16] = a3 & 1;
  sub_1C10280CC(v5, v6, v7);
}

void *sub_1C10281A0()
{
  v1 = *(v0 + *((*MEMORY[0x1E69E7D40] & *v0) + 0xB0));
  v2 = v1;
  return v1;
}

uint64_t sub_1C1028250(uint64_t result, char a2)
{
  v3 = v2 + *((*MEMORY[0x1E69E7D40] & *v2) + 0xB8);
  *v3 = result;
  v3[8] = a2 & 1;
  return result;
}

uint64_t sub_1C1028310()
{
  v1 = MEMORY[0x1E69E7D40];
  v2 = *v0;
  v3 = *MEMORY[0x1E69E7D40];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = sub_1C1266790();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = &v17 - v8;
  v10 = *(AssociatedTypeWitness - 8);
  result = MEMORY[0x1EEE9AC00](v7);
  v13 = &v17 - v12;
  if (*(v0 + *((v3 & v2) + 0xC0)) == 1)
  {
    sub_1C1027610(v9);
    if (__swift_getEnumTagSinglePayload(v9, 1, AssociatedTypeWitness) == 1)
    {
      return (*(v6 + 8))(v9, v5);
    }

    else
    {
      (*(v10 + 32))(v13, v9, AssociatedTypeWitness);
      v14 = sub_1C1028120();
      if ((v16 & 1) == 0)
      {
        *(v0 + *((*v1 & *v0) + 0xC0)) = 0;
        sub_1C1028EF4(v13, 0, *&v14, v15);
      }

      return (*(v10 + 8))(v13, AssociatedTypeWitness);
    }
  }

  return result;
}

void sub_1C1028554()
{
  v1 = sub_1C10279E8();
  if (v3)
  {
    sub_1C1027910();
    if (v4 & 1) != 0 || ([v0 bounds], (sub_1C12665E0()))
    {
      v1 = 0;
      v2 = 0;
      v5 = 1;
    }

    else
    {
      [v0 bounds];
      sub_1C12665D0();
      sub_1C12665C0();
      v5 = 0;
      v1 = v6;
      v2 = v7;
    }
  }

  else
  {
    v5 = 0;
  }

  sub_1C1028154(v1, v2, v5);
}

void sub_1C1028620()
{
  v1 = v0;
  v2 = MEMORY[0x1E69E7D40];
  v3 = type metadata accessor for PhotosBasicAsyncImageLoadingState();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v26 - v5;
  sub_1C1027FF8(&v26 - v5);
  v7 = &v6[*(v3 + 48)];
  v9 = *v7;
  v8 = *(v7 + 1);
  v10 = v7[24];
  sub_1C102ECF4(*v7, v8, *(v7 + 2), v7[24]);
  (*(v4 + 8))(v6, v3);
  if (!v10)
  {
    v13 = sub_1C10281A0();
    if (v13)
    {
      v14 = v13;
      v15 = v9;

      if (v8 != 2 && (v8 & 1) == 0)
      {
        v16 = CACurrentMediaTime();
        v17 = COERCE_DOUBLE(sub_1C102821C());
        if (v18)
        {
          v17 = 1.79769313e308;
        }

        v12 = v16 - v17 > 0.25;
        goto LABEL_13;
      }
    }

    else
    {
      v19 = v9;
    }

    v12 = 0;
LABEL_13:
    v8 = v9;
    goto LABEL_14;
  }

  if (v10 == 1)
  {

    v11 = v8;
    v12 = 0;
  }

  else
  {
    v12 = 0;
    v8 = 0;
  }

LABEL_14:
  v20 = sub_1C10281A0();
  v21 = v20;
  if (v8)
  {
    if (v20)
    {
      sub_1C0FDE8F8(0, &qword_1EDE7B5F0);
      v22 = v8;
      v23 = sub_1C12666B0();

      if (v23)
      {
        goto LABEL_23;
      }

      goto LABEL_22;
    }

    v21 = v8;
    v22 = v8;
  }

  else
  {
    if (!v20)
    {
      return;
    }

    v22 = 0;
  }

LABEL_22:
  v24 = CACurrentMediaTime();
  v25 = (v1 + *((*v2 & *v1) + 0xB8));
  *v25 = v24;
  *(v25 + 8) = 0;
  v22 = v22;
  sub_1C10281EC(v8);
  sub_1C10288C4(v12);
LABEL_23:
}

uint64_t sub_1C10288C4(char a1)
{
  v2 = v1;
  v4 = type metadata accessor for PhotosBasicAsyncImageLoadingState();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v34 - v6;
  [objc_opt_self() activate];
  v8 = sub_1C10281A0();
  if (v8)
  {
    v9 = v8;
    v10 = [v8 CGImage];

    v8 = 0;
    if (v10)
    {
      type metadata accessor for CGImage(0);
    }
  }

  else
  {
    v10 = 0;
  }

  v36[0] = v10;
  v36[1] = 0;
  v36[2] = 0;
  v36[3] = v8;
  if (a1)
  {
    sub_1C0FDE8F8(0, &unk_1EDE76A28);
    v11 = sub_1C1028E84(0x73746E65746E6F63, 0xE800000000000000);
    [v11 setDuration_];
    v12 = [v2 contents];
    if (v12)
    {
      sub_1C12667F0();
      swift_unknownObjectRelease();
      __swift_project_boxed_opaque_existential_1(v34, v35);
      v12 = sub_1C1266D40();
      __swift_destroy_boxed_opaque_existential_0Tm(v34);
    }

    [v11 setFromValue_];
    swift_unknownObjectRelease();
    sub_1C102EFA0(v36, v34, &qword_1EBE90620);
    v13 = v35;
    if (v35)
    {
      v14 = __swift_project_boxed_opaque_existential_1(v34, v35);
      v15 = *(v13 - 8);
      MEMORY[0x1EEE9AC00](v14);
      v17 = v34 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v15 + 16))(v17);
      v18 = sub_1C1266D40();
      (*(v15 + 8))(v17, v13);
      __swift_destroy_boxed_opaque_existential_0Tm(v34);
    }

    else
    {
      v18 = 0;
    }

    [v11 setToValue_];
    swift_unknownObjectRelease();
    [v11 setFillMode_];

    v19 = sub_1C1265E70();
    [v2 addAnimation:v11 forKey:v19];
  }

  sub_1C102EFA0(v36, v34, &qword_1EBE90620);
  v20 = v35;
  if (v35)
  {
    v21 = __swift_project_boxed_opaque_existential_1(v34, v35);
    v22 = *(v20 - 8);
    MEMORY[0x1EEE9AC00](v21);
    v24 = v34 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v22 + 16))(v24);
    v25 = sub_1C1266D40();
    (*(v22 + 8))(v24, v20);
    __swift_destroy_boxed_opaque_existential_0Tm(v34);
  }

  else
  {
    v25 = 0;
  }

  [v2 setContents_];
  swift_unknownObjectRelease();
  sub_1C1027FF8(v7);
  v26 = &v7[*(v4 + 56)];
  v27 = *v26;
  v28 = v26[1];
  v29 = v26[2];
  v30 = v26[3];
  (*(v5 + 8))(v7, v4);
  [v2 setContentsRect_];
  sub_1C102EFA0(v36, v34, &qword_1EBE90620);
  v31 = v35;
  sub_1C0FFC7B0(v34, &qword_1EBE90620);
  if (v31)
  {
    v32 = 0;
  }

  else
  {
    v32 = sub_1C1027B94();
  }

  [v2 setBackgroundColor_];

  [v2 setContentsGravity_];
  [v2 setMasksToBounds_];
  return sub_1C0FFC7B0(v36, &qword_1EBE90620);
}

id sub_1C1028E84(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = sub_1C1265E70();
  }

  else
  {
    v2 = 0;
  }

  v3 = [swift_getObjCClassFromMetadata() animationWithKeyPath_];

  return v3;
}

uint64_t sub_1C1028EF4(uint64_t a1, int a2, double a3, double a4)
{
  v5 = v4;
  v205 = a2;
  v210 = a1;
  v8 = *((*MEMORY[0x1E69E7D40] & *v4) + 0x58);
  v9 = *((*MEMORY[0x1E69E7D40] & *v4) + 0x50);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v197 = sub_1C1266790();
  v196 = *(v197 - 8);
  MEMORY[0x1EEE9AC00](v197);
  v194 = &v171 - v10;
  v11 = swift_getAssociatedTypeWitness();
  v202 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v183 = &v171 - v12;
  v13 = sub_1C1266790();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v190 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v209 = &v171 - v14;
  v204 = v8;
  v203 = type metadata accessor for PhotosBasicAsyncImageLoadingState();
  v206 = *(v203 - 8);
  v15 = MEMORY[0x1EEE9AC00](v203);
  v179 = &v171 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v182 = &v171 - v18;
  v19 = MEMORY[0x1EEE9AC00](v17);
  v184 = &v171 - v20;
  v21 = MEMORY[0x1EEE9AC00](v19);
  v200 = &v171 - v22;
  v211 = *(v13 - 8);
  v23 = MEMORY[0x1EEE9AC00](v21);
  v189 = &v171 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x1EEE9AC00](v23);
  v207 = &v171 - v26;
  MEMORY[0x1EEE9AC00](v25);
  v208 = &v171 - v27;
  v28 = sub_1C1266790();
  v29 = *(v28 - 8);
  v30 = MEMORY[0x1EEE9AC00](v28);
  v191 = &v171 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = MEMORY[0x1EEE9AC00](v30);
  v34 = &v171 - v33;
  v35 = *(v9 - 8);
  v36 = MEMORY[0x1EEE9AC00](v32);
  v198 = &v171 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = MEMORY[0x1EEE9AC00](v36);
  v180 = &v171 - v39;
  v192 = v40;
  MEMORY[0x1EEE9AC00](v38);
  v42 = &v171 - v41;
  sub_1C1026E40(v34);
  if (__swift_getEnumTagSinglePayload(v34, 1, v9) == 1)
  {
    return (*(v29 + 8))(v34, v28);
  }

  v177 = v29;
  v186 = v28;
  v178 = v35;
  v44 = *(v35 + 32);
  v199 = v42;
  v176 = v35 + 32;
  v175 = v44;
  v44(v42, v34, v9);
  v181 = v9;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v46 = *(AssociatedConformanceWitness + 16);
  v47 = v210;
  v171 = AssociatedConformanceWitness;
  v185 = v46(v11);
  v187 = v48;
  v49 = *(v202 + 16);
  v50 = v13;
  v51 = v208;
  v174 = v202 + 16;
  v173 = v49;
  v49(v208, v47, v11);
  __swift_storeEnumTagSinglePayload(v51, 0, 1, v11);
  v52 = v200;
  v188 = v5;
  sub_1C1027FF8(v200);
  v53 = v203;
  v54 = *(v211 + 16);
  v55 = v52 + *(v203 + 36);
  v193 = v11;
  v56 = v207;
  v54(v207, v55, v50);
  v57 = v206 + 8;
  v172 = *(v206 + 8);
  v172(v52, v53);
  v58 = TupleTypeMetadata2;
  v59 = *(TupleTypeMetadata2 + 48);
  v60 = v209;
  v54(v209, v51, v50);
  v200 = v59;
  v54((v60 + v59), v56, v50);
  v61 = v193;
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v60, 1, v193);
  v63 = v50;
  v64 = v211;
  v65 = v57;
  v66 = v58;
  if (EnumTagSinglePayload != 1)
  {
    v70 = v189;
    v71 = v209;
    v54(v189, v209, v63);
    v72 = v200;
    v73 = v61;
    if (__swift_getEnumTagSinglePayload(&v71[v200], 1, v61) == 1)
    {
      v67 = *(v64 + 8);
      v67(v207, v63);
      v67(v208, v63);
      (*(v202 + 8))(v70, v61);
      v74 = v205;
      v75 = v188;
      v76 = v186;
      v69 = v209;
      v53 = v203;
      goto LABEL_9;
    }

    v206 = v57;
    v77 = v202;
    v78 = v209;
    v79 = v183;
    (*(v202 + 32))(v183, &v209[v72], v73);
    v80 = sub_1C1265DE0();
    v81 = *(v77 + 8);
    v81(v79, v73);
    v67 = *(v64 + 8);
    v67(v207, v63);
    v67(v208, v63);
    v81(v70, v73);
    v67(v78, v63);
    v74 = v205;
    v75 = v188;
    v76 = v186;
    v53 = v203;
    if ((v80 & 1) == 0)
    {
      goto LABEL_16;
    }

LABEL_11:
    v82 = v184;
    sub_1C1027FF8(v184);
    v83 = v82 + v53[11];
    v84 = *v83;
    v85 = *(v83 + 8);
    v86 = *(v83 + 16);
    v87 = v172;
    v172(v82, v53);
    if (v86)
    {
      goto LABEL_16;
    }

    v88 = v84 == a3 && v85 == a4;
    if (!v88)
    {
      goto LABEL_16;
    }

    v120 = v182;
    sub_1C1027FF8(v182);
    v121 = sub_1C102A460(v53);
    v87(v120, v53);
    if (v121)
    {
      v122 = v181;
      if (qword_1EDE81FC8 != -1)
      {
        swift_once();
      }

      v123 = sub_1C1262720();
      __swift_project_value_buffer(v123, qword_1EDE9B6D8);
      v124 = v187;

      v125 = sub_1C12626F0();
      v126 = sub_1C1266400();

      v127 = os_log_type_enabled(v125, v126);
      v128 = v199;
      if (v127)
      {
        v129 = swift_slowAlloc();
        v130 = swift_slowAlloc();
        v213 = v130;
        *v129 = 136315394;
        v131 = sub_1C0FA0E80(v185, v124, &v213);

        *(v129 + 4) = v131;
        *(v129 + 12) = 2080;
        v132 = sub_1C12665A0();
        v134 = sub_1C0FA0E80(v132, v133, &v213);

        *(v129 + 14) = v134;
        v135 = "PhotosAsyncImage declining load for configuration %s targetPixelSize %s: Has Active Request";
LABEL_33:
        _os_log_impl(&dword_1C0F96000, v125, v126, v135, v129, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1C68F1630](v130, -1, -1);
        MEMORY[0x1C68F1630](v129, -1, -1);

        return (*(v178 + 8))(v128, v122);
      }

      goto LABEL_34;
    }

    sub_1C1027FF8(v120);
    v136 = sub_1C102A4CC(v53);
    v87(v120, v53);
    if (v136)
    {
      v122 = v181;
      if (qword_1EDE81FC8 != -1)
      {
        swift_once();
      }

      v137 = sub_1C1262720();
      __swift_project_value_buffer(v137, qword_1EDE9B6D8);
      v138 = v187;

      v125 = sub_1C12626F0();
      v126 = sub_1C1266400();

      v139 = os_log_type_enabled(v125, v126);
      v128 = v199;
      if (v139)
      {
        v129 = swift_slowAlloc();
        v130 = swift_slowAlloc();
        v213 = v130;
        *v129 = 136315394;
        v140 = sub_1C0FA0E80(v185, v138, &v213);

        *(v129 + 4) = v140;
        *(v129 + 12) = 2080;
        v141 = sub_1C12665A0();
        v143 = sub_1C0FA0E80(v141, v142, &v213);

        *(v129 + 14) = v143;
        v135 = "PhotosAsyncImage declining load for configuration %s targetPixelSize %s: Has Existing Full Quality Image";
        goto LABEL_33;
      }

LABEL_34:

      return (*(v178 + 8))(v128, v122);
    }

    v208 = v63;
    v209 = v67;
    v144 = v53;
    v145 = v87;
    v146 = v179;
    sub_1C1027FF8(v179);
    v147 = v146 + v144[12];
    v149 = *v147;
    v148 = *(v147 + 8);
    v150 = *(v147 + 16);
    v151 = *(v147 + 24);
    sub_1C102ECF4(*v147, v148, v150, *(v147 + 24));
    v145(v146, v144);
    v152 = v181;
    if (v151)
    {
      v153 = v180;
      if (v151 != 1 || (v154 = v148, sub_1C102ED80(v149, v148, v150, 1), v155 = v178, !v148))
      {
        v75 = v188;
        v63 = v208;
        v53 = v203;
LABEL_48:
        v67 = v209;
        goto LABEL_16;
      }
    }

    else
    {
      sub_1C102ED80(v149, v148, v150, 0);
      v155 = v178;
      v153 = v180;
    }

    if (qword_1EDE81FC8 != -1)
    {
      swift_once();
    }

    v156 = sub_1C1262720();
    __swift_project_value_buffer(v156, qword_1EDE9B6D8);
    v157 = *(v155 + 16);
    v157(v153, v199, v152);
    v158 = v187;

    v159 = sub_1C12626F0();
    v160 = sub_1C12663F0();

    if (os_log_type_enabled(v159, v160))
    {
      v161 = swift_slowAlloc();
      v207 = swift_slowAlloc();
      v213 = v207;
      *v161 = 136315650;
      *(v161 + 4) = sub_1C0FA0E80(v185, v158, &v213);
      *(v161 + 12) = 2080;
      v162 = sub_1C12665A0();
      v164 = v153;
      v165 = sub_1C0FA0E80(v162, v163, &v213);

      *(v161 + 14) = v165;
      *(v161 + 22) = 2080;
      v157(v198, v164, v152);
      v166 = sub_1C1265ED0();
      v168 = v167;
      v74 = v205;
      (*(v178 + 8))(v164, v152);
      v169 = sub_1C0FA0E80(v166, v168, &v213);

      *(v161 + 24) = v169;
      _os_log_impl(&dword_1C0F96000, v159, v160, "PhotosAsyncImage reloading for configuration %s targetPixelSize %s from provider: %s.", v161, 0x20u);
      v170 = v207;
      swift_arrayDestroy();
      MEMORY[0x1C68F1630](v170, -1, -1);
      MEMORY[0x1C68F1630](v161, -1, -1);
    }

    else
    {

      (*(v155 + 8))(v153, v152);
    }

    v75 = v188;
    v63 = v208;
    v53 = v203;
    v76 = v186;
    goto LABEL_48;
  }

  v67 = *(v211 + 8);
  v67(v207, v63);
  v67(v208, v63);
  v68 = v209;
  v88 = __swift_getEnumTagSinglePayload(&v209[v200], 1, v61) == 1;
  v69 = v68;
  if (v88)
  {
    v206 = v65;
    v67(v68, v63);
    v74 = v205;
    v75 = v188;
    v76 = v186;
    goto LABEL_11;
  }

  v74 = v205;
  v75 = v188;
  v76 = v186;
LABEL_9:
  (*(v190 + 8))(v69, v66);
LABEL_16:
  sub_1C102C7F0();
  if ((v74 & 1) == 0)
  {
    v89 = v75 + *((*MEMORY[0x1E69E7D40] & *v75) + 0xA0);
    swift_beginAccess();
    v90 = &v89[v53[15]];
    *v90 = 0;
    *(v90 + 1) = 0;
    v90[16] = 1;
  }

  v209 = v67;
  v91 = sub_1C1266400();
  if (qword_1EDE7C0B8 != -1)
  {
    swift_once();
  }

  v92 = v63;
  v93 = qword_1EDE7C0C0;
  v94 = os_log_type_enabled(qword_1EDE7C0C0, v91);
  v95 = v181;
  if (v94)
  {
    v96 = swift_slowAlloc();
    v97 = swift_slowAlloc();
    v212 = v97;
    *v96 = 136315394;
    *(v96 + 4) = sub_1C0FA0E80(v185, v187, &v212);
    *(v96 + 12) = 2080;
    v98 = sub_1C12665A0();
    v100 = sub_1C0FA0E80(v98, v99, &v212);
    v76 = v186;

    *(v96 + 14) = v100;
    _os_log_impl(&dword_1C0F96000, v93, v91, "PhotosAsyncImage loadConfiguration %s targetPixelSize %s", v96, 0x16u);
    swift_arrayDestroy();
    v101 = v97;
    v75 = v188;
    MEMORY[0x1C68F1630](v101, -1, -1);
    MEMORY[0x1C68F1630](v96, -1, -1);
  }

  v102 = v178;
  v208 = *(v178 + 16);
  v103 = v191;
  v104 = v199;
  (v208)(v191, v199, v95);
  __swift_storeEnumTagSinglePayload(v103, 0, 1, v95);
  v105 = v75 + *((*MEMORY[0x1E69E7D40] & *v75) + 0xA0);
  swift_beginAccess();
  (*(v177 + 40))(&v105[v53[10]], v103, v76);
  v106 = v95;
  v107 = v53[9];
  (v209)(&v105[v107], v92);
  v108 = v193;
  v173(&v105[v107], v210, v193);
  __swift_storeEnumTagSinglePayload(&v105[v107], 0, 1, v108);
  v109 = &v105[v53[11]];
  *v109 = a3;
  *(v109 + 1) = a4;
  v109[16] = 0;
  v105[v53[13]] = 0;
  swift_endAccess();
  v110 = v102;
  v111 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v112 = v198;
  (v208)(v198, v104, v106);
  v113 = (*(v102 + 80) + 64) & ~*(v102 + 80);
  v114 = swift_allocObject();
  v115 = v204;
  *(v114 + 16) = v106;
  *(v114 + 24) = v115;
  *(v114 + 32) = v111;
  *(v114 + 40) = v205 & 1;
  v116 = v187;
  *(v114 + 48) = v185;
  *(v114 + 56) = v116;
  v175(v114 + v113, v112, v106);
  v117 = *(v115 + 40);

  v118 = v194;
  v119 = v199;
  v117(v210, sub_1C102ECDC, v114, v106, v115, a3, a4);

  (*(v110 + 8))(v119, v106);

  __swift_storeEnumTagSinglePayload(v118, 0, 1, AssociatedTypeWitness);
  swift_beginAccess();
  (*(v196 + 40))(v105, v118, v197);
  return swift_endAccess();
}

uint64_t sub_1C102A460(int *a1)
{
  if (*(v1 + a1[11] + 16) & 1) != 0 || (*(v1 + a1[13]))
  {
    return 0;
  }

  v2 = v1 + a1[12];
  if (*(v2 + 24) == 1)
  {
    v3 = *v2;
    v4 = *v2;

    return 0;
  }

  return 1;
}

uint64_t sub_1C102A4CC(uint64_t a1)
{
  v2 = v1 + *(a1 + 48);
  if (*(v2 + 24) || (v3 = *(v2 + 8), v3 == 2))
  {
    v4 = 0;
  }

  else
  {
    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

void sub_1C102A4FC(unsigned __int8 *a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v24 = a8;
  v23 = a3;
  v13 = *(a7 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](a1);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v16 = Strong;
    v17 = swift_allocObject();
    swift_unknownObjectWeakInit();
    (*(v13 + 16))(&v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), a6, a7);
    v18 = *(v13 + 80);
    v22 = a1;
    v19 = (v18 + 64) & ~v18;
    v20 = swift_allocObject();
    v21 = v24;
    *(v20 + 16) = a7;
    *(v20 + 24) = v21;
    *(v20 + 32) = v17;
    *(v20 + 40) = v23 & 1;
    *(v20 + 48) = a4;
    *(v20 + 56) = a5;
    (*(v13 + 32))(v20 + v19, &v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), a7);

    sub_1C102AFD4(v22, sub_1C102EED0, v20);
  }
}

void sub_1C102A6DC(uint64_t a1, uint64_t a2, int a3, uint64_t a4, NSObject *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v105 = a6;
  v102 = a4;
  v103 = a5;
  v107 = a3;
  v11 = *a1;
  v12 = *(a7 - 8);
  v13 = MEMORY[0x1EEE9AC00](a1);
  v104 = &v97 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v97 - v15;
  v17 = type metadata accessor for PhotosBasicAsyncImageLoadingState();
  v106 = *(v17 - 1);
  v18 = MEMORY[0x1EEE9AC00](v17);
  v20 = &v97 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v97 - v21;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v24 = Strong;
    v99 = v12;
    v100 = v16;
    v25 = [objc_opt_self() isMainThread];
    if (qword_1EDE81FC8 != -1)
    {
      swift_once();
    }

    v26 = sub_1C1262720();
    v101 = __swift_project_value_buffer(v26, qword_1EDE9B6D8);
    if ((v25 & 1) == 0)
    {
      v27 = sub_1C12626F0();
      v28 = sub_1C1266410();
      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        *&v98 = v17;
        v30 = v29;
        v31 = swift_slowAlloc();
        *&v97 = v11;
        v32 = v31;
        v109[0] = v31;
        *v30 = 136315138;
        *(v30 + 4) = sub_1C0FA0E80(0, 0xE000000000000000, v109);
        _os_log_impl(&dword_1C0F96000, v27, v28, "%s", v30, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v32);
        v33 = v32;
        v11 = v97;
        MEMORY[0x1C68F1630](v33, -1, -1);
        v34 = v30;
        v17 = v98;
        MEMORY[0x1C68F1630](v34, -1, -1);
      }
    }

    v35 = *a1;
    if ((*(a1 + 72) & 1) == 0)
    {
      v50 = *(a1 + 8);
      v49 = *(a1 + 16);
      v97 = *(a1 + 40);
      v98 = *(a1 + 24);
      v51 = *(a1 + 56);
      v52 = *(a1 + 64);
      if (v107)
      {
        sub_1C1027FF8(v22);
        v53 = &v22[v17[15]];
        v54 = *v53;
        v55 = *(v53 + 1);
        v56 = v53[16];
        v57 = (*(v106 + 8))(v22, v17);
        if ((v56 & 1) == 0)
        {
          if (MEMORY[0x1C68F0CB0](v57, v54, v55, v50, v49))
          {
            v58 = sub_1C1266400();
            if (qword_1EDE7C0B8 != -1)
            {
              swift_once();
            }

            v59 = qword_1EDE7C0C0;
            if (os_log_type_enabled(qword_1EDE7C0C0, v58))
            {
              v60 = swift_slowAlloc();
              v61 = swift_slowAlloc();
              v109[0] = v61;
              *v60 = 136315650;
              *(v60 + 4) = sub_1C0FA0E80(v102, v103, v109);
              *(v60 + 12) = 2080;
              v62 = sub_1C12665A0();
              v64 = sub_1C0FA0E80(v62, v63, v109);

              *(v60 + 14) = v64;
              *(v60 + 22) = 2080;
              v65 = sub_1C12665A0();
              v67 = sub_1C0FA0E80(v65, v66, v109);

              *(v60 + 24) = v67;
              _os_log_impl(&dword_1C0F96000, v59, v58, "PhotosAsyncImage is increase size ignore image with smaller size %s receivedSize %s imageSize %s", v60, 0x20u);
              swift_arrayDestroy();
              MEMORY[0x1C68F1630](v61, -1, -1);
              MEMORY[0x1C68F1630](v60, -1, -1);
            }

            goto LABEL_37;
          }
        }
      }

      v68 = v24 + *((*MEMORY[0x1E69E7D40] & *v24) + 0xA0);
      swift_beginAccess();
      v69 = &v68[v17[15]];
      *v69 = v50;
      *(v69 + 1) = v49;
      v69[16] = 0;
      v70 = &v68[v17[14]];
      v71 = v97;
      *v70 = v98;
      *(v70 + 1) = v71;
      if (v51 == 2 && ((*(a8 + 56))(a7, a8) & 1) == 0)
      {
        *&v98 = v17;
        v73 = v99;
        v72 = v100;
        v106 = *(v99 + 16);
        (v106)(v100, v105, a7);
        v74 = sub_1C12626F0();
        v107 = sub_1C12663F0();
        if (os_log_type_enabled(v74, v107))
        {
          v75 = swift_slowAlloc();
          v102 = v75;
          v105 = swift_slowAlloc();
          v108 = v105;
          *v75 = 136315138;
          v103 = v74;
          v76 = v100;
          (v106)(v104, v100, a7);
          v77 = sub_1C1265ED0();
          v79 = v78;
          (*(v73 + 8))(v76, a7);
          v80 = sub_1C0FA0E80(v77, v79, &v108);

          v81 = v102;
          *(v102 + 1) = v80;
          v82 = v103;
          _os_log_impl(&dword_1C0F96000, v103, v107, "PhotosAsyncImage provider %s did not indicate whether the image is degraded. This may lead to unnecessary image reloading.", v81, 0xCu);
          v83 = v105;
          __swift_destroy_boxed_opaque_existential_0Tm(v105);
          MEMORY[0x1C68F1630](v83, -1, -1);
          MEMORY[0x1C68F1630](v81, -1, -1);
        }

        else
        {

          (*(v73 + 8))(v72, a7);
        }

        v17 = v98;
      }

      v95 = v35;

      if (!v52)
      {
        v52 = sub_1C1265CE0();
      }

      v96 = &v68[v17[12]];
      v91 = *v96;
      v92 = *(v96 + 1);
      v93 = *(v96 + 2);
      *v96 = v95;
      *(v96 + 1) = v51;
      *(v96 + 2) = v52;
      v94 = v96[24];
      v96[24] = 0;
LABEL_36:
      sub_1C102ED80(v91, v92, v93, v94);
      sub_1C1028620();
LABEL_37:

      return;
    }

    v109[0] = *a1;
    v36 = v11;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE913F8);
    if ((swift_dynamicCast() & 1) != 0 && v108 != 1)
    {
      v37 = v11;
    }

    else
    {
      v109[0] = v35;
      v37 = v11;
      v38 = v11;
      if ((swift_dynamicCast() & 1) == 0)
      {
        sub_1C1027FF8(v20);
        v39 = &v20[v17[12]];
        v40 = *v39;
        v41 = *(v39 + 1);
        v42 = *(v39 + 2);
        v43 = v17;
        v44 = v39[24];
        sub_1C102ECF4(*v39, v41, v42, v39[24]);
        v45 = v20;
        v46 = v43;
        (*(v106 + 8))(v45, v43);
        v47 = v40;
        if (!v44)
        {
LABEL_15:
          v48 = v47;
          sub_1C102ED80(v40, v41, v42, v44);
LABEL_30:
          v84 = v24 + *((*MEMORY[0x1E69E7D40] & *v24) + 0xA0);
          swift_beginAccess();
          v85 = &v84[v46[12]];
          v86 = *v85;
          v87 = *(v85 + 1);
          v88 = *(v85 + 2);
          *v85 = v35;
          *(v85 + 1) = v47;
          *(v85 + 2) = 0;
          v89 = v85[24];
          v85[24] = 1;
          v90 = v37;
          v91 = v86;
          v92 = v87;
          v93 = v88;
          v94 = v89;
          goto LABEL_36;
        }

        if (v44 == 1)
        {
          v47 = v41;
          goto LABEL_15;
        }

LABEL_29:
        v47 = 0;
        goto LABEL_30;
      }
    }

    v46 = v17;
    goto LABEL_29;
  }
}

uint64_t sub_1C102AFD4(unsigned __int8 *a1, uint64_t (*a2)(unsigned __int8 *), uint64_t a3)
{
  v4 = v3;
  v8 = *MEMORY[0x1E69E7D40] & *v3;
  v50 = *a1;
  v49 = *(a1 + 8);
  v51 = v8;
  v53 = sub_1C1265C10();
  v9 = *(v53 - 8);
  MEMORY[0x1EEE9AC00](v53);
  v52 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1C1265C30();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1C1026FC8();
  if ((v17 & 0x100000000) != 0)
  {
    return a2(a1);
  }

  v18 = v17;
  v43 = v16;
  v44 = v15;
  v48 = a3;
  v19 = [objc_opt_self() isMainThread];
  if (qword_1EDE81FC8 != -1)
  {
    swift_once();
  }

  v20 = sub_1C1262720();
  __swift_project_value_buffer(v20, qword_1EDE9B6D8);
  v47 = v9;
  v46 = v11;
  v45 = v12;
  if ((v19 & 1) == 0)
  {
    v21 = sub_1C12626F0();
    v22 = sub_1C1266410();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v54[0] = v24;
      *v23 = 136315138;
      *(v23 + 4) = sub_1C0FA0E80(0, 0xE000000000000000, v54);
      _os_log_impl(&dword_1C0F96000, v21, v22, "%s", v23, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v24);
      MEMORY[0x1C68F1630](v24, -1, -1);
      MEMORY[0x1C68F1630](v23, -1, -1);
    }
  }

  if ((a1[72] & 1) != 0 || (v25 = a1[56], v25 == 2) || (v25 & 1) == 0)
  {
    [v4 bounds];
    v29 = v28;
    v31 = v30;
    v32 = COERCE_DOUBLE(sub_1C1027910());
    if (v33)
    {
      v34 = 2.0;
    }

    else
    {
      v34 = v32;
    }

    if (qword_1EDE78A60 != -1)
    {
      swift_once();
    }

    v50 = qword_1EDE78A68;
    v35 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v36 = swift_allocObject();
    v37 = v51;
    *(v36 + 16) = *(v51 + 80);
    *(v36 + 24) = *(v37 + 88);
    *(v36 + 32) = v35;
    memcpy((v36 + 40), a1, 0x49uLL);
    *(v36 + 120) = v29;
    *(v36 + 128) = v31;
    *(v36 + 136) = v34;
    v38 = v43;
    *(v36 + 144) = v44;
    *(v36 + 152) = v38;
    *(v36 + 160) = v18;
    v39 = v48;
    *(v36 + 168) = a2;
    *(v36 + 176) = v39;
    aBlock[4] = sub_1C102EB5C;
    aBlock[5] = v36;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1C0FD7FC4;
    aBlock[3] = &block_descriptor_2;
    v40 = _Block_copy(aBlock);
    sub_1C102EFA0(a1, v54, &qword_1EBE913E8);

    sub_1C1265C20();
    v54[0] = MEMORY[0x1E69E7CC0];
    sub_1C102EF38(&qword_1EDE7B768, MEMORY[0x1E69E7F60]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE95B00);
    sub_1C102EC88(&qword_1EDE7B708, &unk_1EBE95B00);
    v41 = v52;
    v42 = v53;
    sub_1C1266870();
    MEMORY[0x1C68EFE10](0, v14, v41, v40);
    _Block_release(v40);
    (*(v47 + 8))(v41, v42);
    (*(v45 + 8))(v14, v46);
  }

  else
  {

    v26 = v50;
    a2(a1);
    return sub_1C0FFC7B0(a1, &qword_1EBE913E8);
  }
}

void *sub_1C102B608(double a1, double a2, double a3, double a4, double a5, uint64_t a6, void **a7, int a8, uint64_t a9, uint64_t a10)
{
  v59 = a9;
  v18 = sub_1C1265C10();
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v53 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_1C1265C30();
  v23 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v25 = &v53 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v56 = a10;
    v57 = v23;
    v58 = v22;

    if (a7[9])
    {
      sub_1C0FDE8F8(0, &qword_1EDE83410);
      v27 = sub_1C12664C0();
      v28 = swift_allocObject();
      v29 = v56;
      v28[2] = v59;
      v28[3] = v29;
      memcpy(v28 + 4, a7, 0x49uLL);
      v65 = sub_1C102F054;
      v66 = v28;
      aBlock = MEMORY[0x1E69E9820];
      v62 = 1107296256;
      v63 = sub_1C0FD7FC4;
      v64 = &block_descriptor_56;
      v30 = _Block_copy(&aBlock);

      sub_1C102EFA0(a7, v60, &qword_1EBE913E8);

      sub_1C1265C20();
      v60[0] = MEMORY[0x1E69E7CC0];
      sub_1C102EF38(&qword_1EDE7B768, MEMORY[0x1E69E7F60]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE95B00);
      sub_1C102EC88(&qword_1EDE7B708, &unk_1EBE95B00);
      sub_1C1266870();
      MEMORY[0x1C68EFE10](0, v25, v21, v30);
      _Block_release(v30);
    }

    else
    {
      v54 = v19;
      v31 = *a7;
      v55 = *(a7 + 3);
      v53 = *(a7 + 1);
      v32 = *(a7 + 5);
      v33 = *(a7 + 6);
      v34 = *(a7 + 56);
      v35 = a7[8];
      v36 = qword_1EDE79DC8;

      if (v36 != -1)
      {
        swift_once();
      }

      v37 = sub_1C10B9908(*&v55, *(&v55 + 1), v32, v33, a1, a2, a3, v31, a8, a4, a5);
      if (v37)
      {
        v38 = v37;
        sub_1C0FDE8F8(0, &qword_1EDE83410);
        v27 = sub_1C12664C0();
        v39 = swift_allocObject();
        v40 = v56;
        *(v39 + 16) = v59;
        *(v39 + 24) = v40;
        *(v39 + 32) = v38;
        *(v39 + 56) = v55;
        *(v39 + 40) = v53;
        *(v39 + 72) = v32;
        *(v39 + 80) = v33;
        *(v39 + 88) = v34;
        *(v39 + 96) = v35;
        v60[4] = sub_1C102EC1C;
        v60[5] = v39;
        v60[0] = MEMORY[0x1E69E9820];
        v60[1] = 1107296256;
        v60[2] = sub_1C0FD7FC4;
        v60[3] = &block_descriptor_68;
        v41 = _Block_copy(v60);

        v42 = v38;

        sub_1C1265C20();
        v60[0] = MEMORY[0x1E69E7CC0];
        sub_1C102EF38(&qword_1EDE7B768, MEMORY[0x1E69E7F60]);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE95B00);
        sub_1C102EC88(&qword_1EDE7B708, &unk_1EBE95B00);
        sub_1C1266870();
        MEMORY[0x1C68EFE10](0, v25, v21, v41);
        _Block_release(v41);
      }

      else
      {

        if (qword_1EDE81FC8 != -1)
        {
          swift_once();
        }

        v43 = sub_1C1262720();
        __swift_project_value_buffer(v43, qword_1EDE9B6D8);
        v44 = v31;
        v45 = sub_1C12626F0();
        v46 = sub_1C1266410();

        if (os_log_type_enabled(v45, v46))
        {
          v47 = swift_slowAlloc();
          v48 = swift_slowAlloc();
          *v47 = 138412290;
          *(v47 + 4) = v44;
          *v48 = v44;
          v49 = v44;
          _os_log_impl(&dword_1C0F96000, v45, v46, "Failed to apply legibility blur to image:%@", v47, 0xCu);
          sub_1C0FFC7B0(v48, &unk_1EBE97C20);
          MEMORY[0x1C68F1630](v48, -1, -1);
          MEMORY[0x1C68F1630](v47, -1, -1);
        }

        sub_1C0FDE8F8(0, &qword_1EDE83410);
        v27 = sub_1C12664C0();
        v50 = swift_allocObject();
        v51 = v56;
        v50[2] = v59;
        v50[3] = v51;
        memcpy(v50 + 4, a7, 0x49uLL);
        v65 = sub_1C102EBEC;
        v66 = v50;
        aBlock = MEMORY[0x1E69E9820];
        v62 = 1107296256;
        v63 = sub_1C0FD7FC4;
        v64 = &block_descriptor_62;
        v52 = _Block_copy(&aBlock);

        sub_1C102EFA0(a7, v60, &qword_1EBE913E8);

        sub_1C1265C20();
        v60[0] = MEMORY[0x1E69E7CC0];
        sub_1C102EF38(&qword_1EDE7B768, MEMORY[0x1E69E7F60]);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE95B00);
        sub_1C102EC88(&qword_1EDE7B708, &unk_1EBE95B00);
        sub_1C1266870();
        MEMORY[0x1C68EFE10](0, v25, v21, v52);
        _Block_release(v52);
      }

      v19 = v54;
    }

    (*(v19 + 8))(v21, v18);
    return (*(v57 + 8))(v25, v58);
  }

  return result;
}

void sub_1C102BF30(double a1, double a2)
{
  v5 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x50);
  v6 = type metadata accessor for PhotosBasicAsyncImageLoadingState();
  v7 = *(v6 - 8);
  v84 = v6;
  v85 = v7;
  v8 = MEMORY[0x1EEE9AC00](v6);
  v80 = &v77 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v78 = &v77 - v11;
  v12 = MEMORY[0x1EEE9AC00](v10);
  v81 = &v77 - v13;
  v14 = MEMORY[0x1EEE9AC00](v12);
  v79 = &v77 - v15;
  v16 = MEMORY[0x1EEE9AC00](v14);
  v82 = &v77 - v17;
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v77 - v18;
  v83 = v5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v21 = sub_1C1266790();
  v22 = *(v21 - 8);
  v23 = MEMORY[0x1EEE9AC00](v21);
  v25 = &v77 - v24;
  v26 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v23);
  v28 = &v77 - v27;
  sub_1C1027610(v25);
  if (__swift_getEnumTagSinglePayload(v25, 1, AssociatedTypeWitness) == 1)
  {
    (*(v22 + 8))(v25, v21);
    return;
  }

  (*(v26 + 32))(v28, v25, AssociatedTypeWitness);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v77 = (*(AssociatedConformanceWitness + 16))(AssociatedTypeWitness, AssociatedConformanceWitness);
  v83 = v30;
  sub_1C1027FF8(v19);
  v31 = v84;
  v32 = v26;
  v33 = v28;
  v34 = *(v85 + 8);
  if (v19[v84[15] + 16])
  {
    v35 = v34(v19, v84);
    v36.n128_u64[0] = 0;
    v37.n128_u64[0] = 0;
  }

  else
  {
    v34(v19, v84);
    v35 = sub_1C12665D0();
    v36.n128_u64[0] = v38;
    v37.n128_u64[0] = v39;
  }

  v40 = v2;
  if (MEMORY[0x1C68F0CB0](v35, a1, a2, v36, v37))
  {
    v41 = v82;
    sub_1C1027FF8(v82);
    v42 = sub_1C102A460(v31);
    v34(v41, v31);
    if ((v42 & 1) == 0 || ((v43 = v79, sub_1C1027FF8(v79), (*(v43 + v31[11] + 16) & 1) == 0) ? (v34(v43, v31), v44 = sub_1C12665D0(), v45.n128_u64[0] = v60, v46.n128_u64[0] = v61) : (v44 = v34(v43, v31), v45.n128_u64[0] = 0, v46.n128_u64[0] = 0), MEMORY[0x1C68F0CB0](v44, a1, a2, v45, v46)))
    {

      v62 = v81;
      sub_1C1027FF8(v81);
      v63 = sub_1C102A460(v31);
      v34(v62, v31);
      if (v63)
      {
        sub_1C1028EF4(v33, 1, a1, a2);
      }

      else
      {
        sub_1C1028310();
      }

      goto LABEL_27;
    }

    v64 = sub_1C1266400();
    if (qword_1EDE7C0B8 != -1)
    {
      swift_once();
    }

    v65 = qword_1EDE7C0C0;
    if (os_log_type_enabled(qword_1EDE7C0C0, v64))
    {
      v81 = v33;
      v82 = AssociatedTypeWitness;
      v85 = v32;
      v66 = v40;
      v67 = swift_slowAlloc();
      v68 = swift_slowAlloc();
      v86 = v68;
      *v67 = 136315650;
      v69 = sub_1C0FA0E80(v77, v83, &v86);

      *(v67 + 4) = v69;
      *(v67 + 12) = 2080;
      v70 = v78;
      sub_1C1027FF8(v78);

      if ((*(v70 + v31[11] + 16) & 1) == 0)
      {
        v34(v70, v31);
        v71 = sub_1C12665A0();
        v73 = sub_1C0FA0E80(v71, v72, &v86);

        *(v67 + 14) = v73;
        *(v67 + 22) = 2080;
        v74 = sub_1C12665A0();
        v76 = sub_1C0FA0E80(v74, v75, &v86);

        *(v67 + 24) = v76;
        _os_log_impl(&dword_1C0F96000, v65, v64, "PhotosAsyncImage target size change ignored for %s because already requested size %s + 10%% larger than newtargetPixelSize %s", v67, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x1C68F1630](v68, -1, -1);
        MEMORY[0x1C68F1630](v67, -1, -1);
        v32 = v85;
        goto LABEL_15;
      }

      goto LABEL_29;
    }

LABEL_26:

LABEL_27:
    (*(v32 + 8))(v33, AssociatedTypeWitness);
    return;
  }

  v47 = sub_1C1266400();
  if (qword_1EDE7C0B8 != -1)
  {
    swift_once();
  }

  v48 = qword_1EDE7C0C0;
  if (!os_log_type_enabled(qword_1EDE7C0C0, v47))
  {
    goto LABEL_26;
  }

  v81 = v33;
  v82 = AssociatedTypeWitness;
  v49 = v2;
  v50 = swift_slowAlloc();
  v51 = swift_slowAlloc();
  v86 = v51;
  *v50 = 136315650;
  v52 = sub_1C0FA0E80(v77, v83, &v86);

  *(v50 + 4) = v52;
  *(v50 + 12) = 2080;
  v53 = v80;
  sub_1C1027FF8(v80);

  if ((*(v53 + v31[15] + 16) & 1) == 0)
  {
    v34(v53, v31);
    v54 = sub_1C12665A0();
    v56 = sub_1C0FA0E80(v54, v55, &v86);

    *(v50 + 14) = v56;
    *(v50 + 22) = 2080;
    v57 = sub_1C12665A0();
    v59 = sub_1C0FA0E80(v57, v58, &v86);

    *(v50 + 24) = v59;
    _os_log_impl(&dword_1C0F96000, v48, v47, "PhotosAsyncImage target size change ignored for %s because receivedSize %s + 10 %% already larger than %s", v50, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1C68F1630](v51, -1, -1);
    MEMORY[0x1C68F1630](v50, -1, -1);
LABEL_15:
    (*(v32 + 8))(v81, v82);
    return;
  }

  __break(1u);
LABEL_29:
  __break(1u);
}

uint64_t sub_1C102C7F0()
{
  v1 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x58);
  v2 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x50);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = sub_1C1266790();
  v65 = *(v4 - 8);
  v66 = v4;
  v5 = MEMORY[0x1EEE9AC00](v4);
  v64 = &v55 - v6;
  v61 = AssociatedTypeWitness;
  v59 = *(AssociatedTypeWitness - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v56 = &v55 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v58 = &v55 - v10;
  MEMORY[0x1EEE9AC00](v9);
  v60 = &v55 - v11;
  v12 = sub_1C1266790();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v55 - v14;
  v57 = v1;
  v16 = type metadata accessor for PhotosBasicAsyncImageLoadingState();
  v17 = *(v16 - 8);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v20 = &v55 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x1EEE9AC00](v18);
  v23 = &v55 - v22;
  v63 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v25 = &v55 - v24;
  v62 = v0;
  sub_1C1027FF8(v23);
  v26 = v13;
  v27 = *(v13 + 16);
  v28 = v12;
  v27(v15, &v23[*(v16 + 40)], v12);
  v29 = *(v17 + 8);
  v30 = v23;
  v31 = v16;
  v29(v30, v16);
  v67 = v2;
  if (__swift_getEnumTagSinglePayload(v15, 1, v2) == 1)
  {
    return (*(v26 + 8))(v15, v28);
  }

  v33 = v63;
  (*(v63 + 32))(v25, v15, v67);
  sub_1C1027FF8(v20);
  v34 = v64;
  (*(v65 + 16))(v64, v20, v66);
  v29(v20, v31);
  v35 = v34;
  v36 = v61;
  if (__swift_getEnumTagSinglePayload(v35, 1, v61) == 1)
  {
    (*(v33 + 8))(v25, v67);
    return (*(v65 + 8))(v64, v66);
  }

  else
  {
    v37 = v59;
    v38 = v25;
    v39 = v60;
    (*(v59 + 32))(v60, v64, v36);
    v40 = v62 + *((*MEMORY[0x1E69E7D40] & *v62) + 0xA0);
    swift_beginAccess();
    *(v40 + *(v31 + 52)) = 1;
    (*(v65 + 8))(v40, v66);
    __swift_storeEnumTagSinglePayload(v40, 1, 1, v36);
    swift_endAccess();
    v41 = *(v57 + 48);
    v66 = v38;
    v41(v39, v67);
    v42 = sub_1C1266400();
    if (qword_1EDE7C0B8 != -1)
    {
      swift_once();
    }

    v43 = qword_1EDE7C0C0;
    v44 = *(v37 + 16);
    v45 = v58;
    v44(v58, v39, v36);
    if (os_log_type_enabled(v43, v42))
    {
      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      v68[0] = v47;
      *v46 = 136315138;
      v44(v56, v45, v36);
      v48 = sub_1C1265ED0();
      v49 = v45;
      v51 = v50;
      v52 = *(v37 + 8);
      v52(v49, v36);
      v53 = sub_1C0FA0E80(v48, v51, v68);

      *(v46 + 4) = v53;
      _os_log_impl(&dword_1C0F96000, v43, v42, "PhotosAsyncImage cancelLoad requestID %s", v46, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v47);
      MEMORY[0x1C68F1630](v47, -1, -1);
      MEMORY[0x1C68F1630](v46, -1, -1);
      v52(v60, v36);
    }

    else
    {
      v54 = *(v37 + 8);
      v54(v45, v36);
      v54(v39, v36);
    }

    return (*(v63 + 8))(v66, v67);
  }
}

id sub_1C102CF00()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PhotosBasicAsyncImageLayer();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1C102CF70(char *a1)
{
  v2 = MEMORY[0x1E69E7D40];

  v3 = *((*v2 & *a1) + 0x68);
  v4 = sub_1C1266790();
  (*(*(v4 - 8) + 8))(&a1[v3], v4);
  v5 = *((*v2 & *a1) + 0x80);
  swift_getAssociatedTypeWitness();
  v6 = sub_1C1266790();
  (*(*(v6 - 8) + 8))(&a1[v5], v6);

  v7 = *((*v2 & *a1) + 0xA0);
  v8 = type metadata accessor for PhotosBasicAsyncImageLoadingState();
  (*(*(v8 - 8) + 8))(&a1[v7], v8);
  v9 = *&a1[*((*v2 & *a1) + 0xB0)];
}

uint64_t sub_1C102D174()
{
  v7 = sub_1C12664B0();
  v0 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v2 = v6 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1C1266480();
  MEMORY[0x1EEE9AC00](v3);
  v4 = sub_1C1265C30();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6[1] = sub_1C0FDE8F8(0, &qword_1EDE83410);
  sub_1C1265C20();
  v8 = MEMORY[0x1E69E7CC0];
  sub_1C102EF38(&qword_1EDE76A20, MEMORY[0x1E69E8030]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE913F0);
  sub_1C102EC88(&qword_1EDE76A98, &qword_1EBE913F0);
  sub_1C1266870();
  (*(v0 + 104))(v2, *MEMORY[0x1E69E8090], v7);
  result = sub_1C12664E0();
  qword_1EDE78A68 = result;
  return result;
}

uint64_t sub_1C102D3D4()
{
  sub_1C0FDE8F8(0, &qword_1EDE7B5B0);
  result = sub_1C1266740();
  qword_1EDE7C0C0 = result;
  return result;
}

uint64_t sub_1C102D45C()
{
  AssociatedTypeWitness = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    if (v2 <= 0x3F)
    {
      sub_1C102DF10(319, &qword_1EDE76990, type metadata accessor for CGSize, MEMORY[0x1E69E6720]);
      AssociatedTypeWitness = v3;
      if (v4 <= 0x3F)
      {
        sub_1C102DF10(319, &qword_1EDE77590, MEMORY[0x1E697DBD0], MEMORY[0x1E697DCC0]);
        AssociatedTypeWitness = v5;
        if (v6 <= 0x3F)
        {
          sub_1C102DE6C();
          AssociatedTypeWitness = v7;
          if (v8 <= 0x3F)
          {
            sub_1C102DEBC(319, &qword_1EDE77618, &qword_1EBE913D8);
            AssociatedTypeWitness = v9;
            if (v10 <= 0x3F)
            {
              sub_1C102DEBC(319, &qword_1EDE77660, &qword_1EBE913E0);
              AssociatedTypeWitness = v11;
              if (v12 <= 0x3F)
              {
                sub_1C102DF10(319, &qword_1EDE776B8, type metadata accessor for PhotosBasicAsyncImageState, MEMORY[0x1E697DA80]);
                AssociatedTypeWitness = v13;
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
  }

  return AssociatedTypeWitness;
}

unint64_t sub_1C102D674(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v35 = *(a3 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  v34 = *(v6 + 84);
  if (v34 <= v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = *(v6 + 84);
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

  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE913C8);
  v11 = *(v10 - 8);
  v12 = *(v11 + 84);
  if (v12 <= v7)
  {
    v13 = v7;
  }

  else
  {
    v13 = *(v11 + 84);
  }

  if (v13 <= 0x7FFFFFFE)
  {
    v13 = 2147483646;
  }

  v14 = *(v6 + 80);
  if (!a2)
  {
    return 0;
  }

  v15 = v10;
  v16 = *(v4 + 64) + v14;
  v17 = *(v6 + 64) + 7;
  v18 = *(v8 + 80) & 0xF8 | 7;
  v19 = v9 + 24;
  v20 = *(v11 + 80) & 0xF8;
  v21 = ~v20 & 0xFFFFFFFFFFFFFFF8;
  v22 = v20 + 41;
  v23 = *(*(v10 - 8) + 64) + 7;
  result = a1;
  if (v13 >= a2)
  {
LABEL_33:
    if (v5 == v13)
    {
      v12 = v5;
      v15 = v35;
    }

    else
    {
      result = (a1 + v16) & ~v14;
      if (v34 == v13)
      {
        v12 = v34;
        v15 = AssociatedTypeWitness;
      }

      else
      {
        result = (v22 + ((((v19 + ((((v17 + result) & 0xFFFFFFFFFFFFFFF8) + v18 + 37) & ~v18)) & 0xFFFFFFFFFFFFFFF8) + 29) & 0xFFFFFFFFFFFFFFF8)) & v21;
        if (v12 < 0x7FFFFFFE)
        {
          v32 = *((v23 + result) & 0xFFFFFFFFFFFFFFF8);
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
      }
    }

    return __swift_getEnumTagSinglePayload(result, v12, v15);
  }

  v25 = (v23 & 0xFFFFFFFFFFFFFFF8) + ((v22 + ((((v19 + ((v18 + ((v17 + (v16 & ~v14)) & 0xFFFFFFFFFFFFFFF8) + 37) & ~v18)) & 0xFFFFFFFFFFFFFFF8) + 29) & 0xFFFFFFFFFFFFFFF8)) & v21) + 8;
  if ((v25 & 0xFFFFFFF8) != 0)
  {
    v26 = 2;
  }

  else
  {
    v26 = a2 - v13 + 1;
  }

  if (v26 >= 0x10000)
  {
    v27 = 4;
  }

  else
  {
    v27 = 2;
  }

  if (v26 < 0x100)
  {
    v27 = 1;
  }

  if (v26 >= 2)
  {
    v28 = v27;
  }

  else
  {
    v28 = 0;
  }

  switch(v28)
  {
    case 1:
      v29 = *(a1 + v25);
      if (!*(a1 + v25))
      {
        goto LABEL_33;
      }

      goto LABEL_30;
    case 2:
      v29 = *(a1 + v25);
      if (!*(a1 + v25))
      {
        goto LABEL_33;
      }

      goto LABEL_30;
    case 3:
      __break(1u);
      return result;
    case 4:
      v29 = *(a1 + v25);
      if (!v29)
      {
        goto LABEL_33;
      }

LABEL_30:
      v30 = v29 - 1;
      if ((v25 & 0xFFFFFFF8) != 0)
      {
        v30 = 0;
        v31 = *a1;
      }

      else
      {
        v31 = 0;
      }

      result = v13 + (v31 | v30) + 1;
      break;
    default:
      goto LABEL_33;
  }

  return result;
}

void sub_1C102DA30(unsigned int *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v4 = *(*(a4 + 16) - 8);
  v5 = *(v4 + 84);
  v39 = *(a4 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  v7 = *(v6 + 84);
  if (v7 <= v5)
  {
    v8 = v5;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(sub_1C12629F0() - 8);
  if (*(v9 + 64) <= 8uLL)
  {
    v10 = 8;
  }

  else
  {
    v10 = *(v9 + 64);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE913C8);
  v12 = *(v11 - 8);
  v13 = *(v12 + 84);
  if (v13 <= 0x7FFFFFFE)
  {
    v14 = 2147483646;
  }

  else
  {
    v14 = *(v12 + 84);
  }

  if (v8 <= v14)
  {
    v15 = v14;
  }

  else
  {
    v15 = v8;
  }

  v16 = *(v6 + 80);
  v17 = *(v4 + 64) + v16;
  v18 = *(v6 + 64) + 7;
  v19 = *(v9 + 80) & 0xF8 | 7;
  v20 = *(v12 + 80) & 0xF8;
  v21 = ~v20 & 0xFFFFFFFFFFFFFFF8;
  v22 = v20 + 41;
  v23 = *(*(v11 - 8) + 64) + 7;
  v24 = (v23 & 0xFFFFFFFFFFFFFFF8) + 8;
  v25 = ((v20 + 41 + ((((v10 + 24 + ((v19 + ((v18 + (v17 & ~v16)) & 0xFFFFFFFFFFFFFFF8) + 37) & ~v19)) & 0xFFFFFFFFFFFFFFF8) + 29) & 0xFFFFFFFFFFFFFFF8)) & v21) + v24;
  if (v15 >= a3)
  {
    v28 = 0;
  }

  else
  {
    if (v25)
    {
      v26 = 2;
    }

    else
    {
      v26 = a3 - v15 + 1;
    }

    if (v26 >= 0x10000)
    {
      v27 = 4;
    }

    else
    {
      v27 = 2;
    }

    if (v26 < 0x100)
    {
      v27 = 1;
    }

    if (v26 >= 2)
    {
      v28 = v27;
    }

    else
    {
      v28 = 0;
    }
  }

  if (a2 > v15)
  {
    if (v25)
    {
      v29 = 1;
    }

    else
    {
      v29 = a2 - v15;
    }

    if (v25)
    {
      v30 = ~v15 + a2;
      bzero(a1, v25);
      *a1 = v30;
    }

    switch(v28)
    {
      case 1:
        *(a1 + v25) = v29;
        break;
      case 2:
        *(a1 + v25) = v29;
        break;
      case 3:
        goto LABEL_59;
      case 4:
        *(a1 + v25) = v29;
        break;
      default:
        return;
    }

    return;
  }

  v31 = ~v16;
  v32 = ~v19;
  switch(v28)
  {
    case 1:
      *(a1 + v25) = 0;
      if (a2)
      {
        goto LABEL_41;
      }

      return;
    case 2:
      *(a1 + v25) = 0;
      if (a2)
      {
        goto LABEL_41;
      }

      return;
    case 3:
LABEL_59:
      __break(1u);
      return;
    case 4:
      *(a1 + v25) = 0;
      goto LABEL_40;
    default:
LABEL_40:
      if (!a2)
      {
        return;
      }

LABEL_41:
      if (v5 == v15)
      {
        v33 = a1;
        v34 = a2;
        v13 = v5;
        v11 = v39;
LABEL_45:

        __swift_storeEnumTagSinglePayload(v33, v34, v13, v11);
        return;
      }

      v33 = (a1 + v17) & v31;
      if (v7 == v15)
      {
        v34 = a2;
        v13 = v7;
        v11 = AssociatedTypeWitness;
        goto LABEL_45;
      }

      v35 = ((v22 + ((((v10 + 24 + ((((v18 + v33) & 0xFFFFFFFFFFFFFFF8) + v19 + 37) & v32)) & 0xFFFFFFFFFFFFFFF8) + 29) & 0xFFFFFFFFFFFFFFF8)) & v21);
      if (v14 >= a2)
      {
        if (v13 < 0x7FFFFFFE)
        {
          v37 = ((v35 + v23) & 0xFFFFFFFFFFFFFFF8);
          if (a2 > 0x7FFFFFFE)
          {
            *v37 = 0;
            *v37 = a2 - 0x7FFFFFFF;
          }

          else
          {
            *v37 = a2;
          }

          return;
        }

        v33 = (v22 + ((((v10 + 24 + ((((v18 + v33) & 0xFFFFFFFFFFFFFFF8) + v19 + 37) & v32)) & 0xFFFFFFFFFFFFFFF8) + 29) & 0xFFFFFFFFFFFFFFF8)) & v21;
        v34 = a2;
        goto LABEL_45;
      }

      if ((v23 & 0xFFFFFFF8) != 0xFFFFFFF8)
      {
        v36 = ~v14 + a2;
        bzero(((v22 + ((((v10 + 24 + ((((v18 + v33) & 0xFFFFFFFFFFFFFFF8) + v19 + 37) & v32)) & 0xFFFFFFFFFFFFFFF8) + 29) & 0xFFFFFFFFFFFFFFF8)) & v21), v24);
        *v35 = v36;
      }

      return;
  }
}

void sub_1C102DE6C()
{
  if (!qword_1EDE775B0)
  {
    v0 = sub_1C1262A70();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDE775B0);
    }
  }
}

void sub_1C102DEBC(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3);
    v4 = sub_1C1262A70();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1C102DF10(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1C102DF7C()
{
  result = sub_1C1261F70();
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

uint64_t sub_1C102E020()
{
  result = sub_1C1266790();
  if (v1 <= 0x3F)
  {
    swift_getAssociatedTypeWitness();
    result = sub_1C1266790();
    if (v2 <= 0x3F)
    {
      result = type metadata accessor for PhotosBasicAsyncImageLoadingState();
      if (v3 <= 0x3F)
      {
        return swift_initClassMetadata2();
      }
    }
  }

  return result;
}

uint64_t sub_1C102E1C8()
{
  swift_getAssociatedTypeWitness();
  v0 = sub_1C1266790();
  if (v1 <= 0x3F)
  {
    swift_getAssociatedTypeWitness();
    v0 = sub_1C1266790();
    if (v2 <= 0x3F)
    {
      v0 = sub_1C1266790();
      if (v3 <= 0x3F)
      {
        sub_1C102DF10(319, &qword_1EDE76990, type metadata accessor for CGSize, MEMORY[0x1E69E6720]);
        v0 = v4;
        if (v5 <= 0x3F)
        {
          type metadata accessor for CGRect(319);
          if (v7 > 0x3F)
          {
            return v6;
          }

          else
          {
            swift_cvw_initStructMetadataWithLayoutString();
            return 0;
          }
        }
      }
    }
  }

  return v0;
}

uint64_t sub_1C102E354(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  v8 = *(v7 + 84);
  if (v8)
  {
    v9 = v8 - 1;
  }

  else
  {
    v9 = 0;
  }

  v10 = swift_getAssociatedTypeWitness();
  v11 = *(v10 - 8);
  v12 = *(v11 + 84);
  if (v12)
  {
    v13 = v12 - 1;
  }

  else
  {
    v13 = 0;
  }

  if (v13 <= v9)
  {
    v14 = v9;
  }

  else
  {
    v14 = v13;
  }

  v15 = *(v5 - 8);
  v16 = *(v15 + 84);
  v17 = v16 - 1;
  if (!v16)
  {
    v17 = 0;
  }

  if (v17 > v14)
  {
    v14 = v17;
  }

  if (v14 <= 0xFE)
  {
    v14 = 254;
  }

  if (v8)
  {
    v18 = *(v7 + 64);
  }

  else
  {
    v18 = *(v7 + 64) + 1;
  }

  if (v12)
  {
    v19 = *(*(v10 - 8) + 64);
  }

  else
  {
    v19 = *(*(v10 - 8) + 64) + 1;
  }

  result = *(v11 + 80);
  v21 = *(v15 + 80);
  v22 = *(*(v5 - 8) + 64);
  if (!v16)
  {
    ++v22;
  }

  if (!a2)
  {
    return 0;
  }

  v23 = v18 + result;
  if (v14 < a2)
  {
    v24 = ((((((v22 + ((v19 + v21 + (v23 & ~result)) & ~v21) + 31) & 0xFFFFFFFFFFFFFFF8) + 33) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 17;
    if (v24 <= 3)
    {
      v25 = ((a2 - v14 + 255) >> 8) + 1;
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
      v27 = v26;
    }

    else
    {
      v27 = 0;
    }

    switch(v27)
    {
      case 1:
        v28 = a1[v24];
        if (!a1[v24])
        {
          goto LABEL_45;
        }

        goto LABEL_41;
      case 2:
        v28 = *&a1[v24];
        if (!*&a1[v24])
        {
          goto LABEL_45;
        }

        goto LABEL_41;
      case 3:
        __break(1u);
        return result;
      case 4:
        v28 = *&a1[v24];
        if (!v28)
        {
          goto LABEL_45;
        }

LABEL_41:
        v29 = (v28 - 1) << (8 * v24);
        if (v24 <= 3)
        {
          v30 = *a1;
        }

        else
        {
          v29 = 0;
          v30 = *a1;
        }

        v33 = v14 + (v30 | v29);
        break;
      default:
        goto LABEL_45;
    }

    return (v33 + 1);
  }

LABEL_45:
  if (v9 == v14)
  {
    if (v8 >= 2)
    {
      v31 = a1;
      v12 = v8;
      v10 = AssociatedTypeWitness;
      goto LABEL_54;
    }

    return 0;
  }

  v31 = &a1[v23] & ~result;
  if (v13 == v14)
  {
    if (v12 < 2)
    {
      return 0;
    }
  }

  else
  {
    v31 = (v31 + v19 + v21) & ~v21;
    if (v17 != v14)
    {
      v34 = *(((v22 + v31 + 7) & 0xFFFFFFFFFFFFFFF8) + 49);
      if (v34 >= 2)
      {
        v33 = (v34 + 2147483646) & 0x7FFFFFFF;
        return (v33 + 1);
      }

      return 0;
    }

    if (v16 < 2)
    {
      return 0;
    }

    v12 = v16;
    v10 = v5;
  }

LABEL_54:
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v31, v12, v10);
  if (EnumTagSinglePayload >= 2)
  {
    return EnumTagSinglePayload - 1;
  }

  else
  {
    return 0;
  }
}

void sub_1C102E698(unsigned int *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  v9 = *(v8 + 84);
  if (v9)
  {
    v10 = v9 - 1;
  }

  else
  {
    v10 = 0;
  }

  v11 = swift_getAssociatedTypeWitness();
  v12 = 0;
  v13 = *(v11 - 8);
  v14 = *(v13 + 84);
  if (v14)
  {
    v15 = v14 - 1;
  }

  else
  {
    v15 = 0;
  }

  if (v15 <= v10)
  {
    v16 = v10;
  }

  else
  {
    v16 = v15;
  }

  v17 = *(v7 - 8);
  v18 = *(v17 + 84);
  v19 = v18 - 1;
  if (!v18)
  {
    v19 = 0;
  }

  if (v19 > v16)
  {
    v16 = v19;
  }

  if (v16 <= 0xFE)
  {
    v16 = 254;
  }

  if (v9)
  {
    v20 = *(v8 + 64);
  }

  else
  {
    v20 = *(v8 + 64) + 1;
  }

  v21 = *(*(v11 - 8) + 64);
  if (!v14)
  {
    ++v21;
  }

  v22 = *(v13 + 80);
  v23 = v20 + v22;
  v24 = *(v17 + 80);
  v25 = *(*(v7 - 8) + 64);
  if (!v18)
  {
    ++v25;
  }

  v26 = ((((((v25 + ((v21 + v24 + ((v20 + v22) & ~v22)) & ~v24) + 31) & 0xFFFFFFFFFFFFFFF8) + 33) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 17;
  if (v16 < a3)
  {
    if (v26 <= 3)
    {
      v27 = ((a3 - v16 + 255) >> 8) + 1;
    }

    else
    {
      v27 = 2;
    }

    if (v27 >= 0x10000)
    {
      v28 = 4;
    }

    else
    {
      v28 = 2;
    }

    if (v27 < 0x100)
    {
      v28 = 1;
    }

    if (v27 >= 2)
    {
      v12 = v28;
    }

    else
    {
      v12 = 0;
    }
  }

  if (v16 >= a2)
  {
    v31 = ~v22;
    switch(v12)
    {
      case 1:
        *(a1 + v26) = 0;
        if (a2)
        {
          goto LABEL_49;
        }

        return;
      case 2:
        *(a1 + v26) = 0;
        if (a2)
        {
          goto LABEL_49;
        }

        return;
      case 3:
LABEL_64:
        __break(1u);
        return;
      case 4:
        *(a1 + v26) = 0;
        goto LABEL_48;
      default:
LABEL_48:
        if (!a2)
        {
          return;
        }

LABEL_49:
        if (v10 == v16)
        {
          v32 = a2 + 1;
          v33 = a1;
          v14 = v9;
          v11 = AssociatedTypeWitness;
        }

        else
        {
          v33 = (a1 + v23) & v31;
          if (v15 == v16)
          {
            v32 = a2 + 1;
          }

          else
          {
            v33 = (v33 + v21 + v24) & ~v24;
            if (v19 != v16)
            {
              *(((v25 + v33 + 7) & 0xFFFFFFFFFFFFFFF8) + 49) = a2 + 1;
              return;
            }

            v32 = a2 + 1;
            v14 = v18;
            v11 = v7;
          }
        }

        __swift_storeEnumTagSinglePayload(v33, v32, v14, v11);
        break;
    }
  }

  else
  {
    v29 = ~v16 + a2;
    bzero(a1, ((((((v25 + ((v21 + v24 + ((v20 + v22) & ~v22)) & ~v24) + 31) & 0xFFFFFFFFFFFFFFF8) + 33) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 17);
    if (v26 <= 3)
    {
      v30 = (v29 >> 8) + 1;
    }

    else
    {
      v30 = 1;
    }

    if (v26 > 3)
    {
      *a1 = v29;
    }

    else
    {
      *a1 = v29;
    }

    switch(v12)
    {
      case 1:
        *(a1 + v26) = v30;
        break;
      case 2:
        *(a1 + v26) = v30;
        break;
      case 3:
        goto LABEL_64;
      case 4:
        *(a1 + v26) = v30;
        break;
      default:
        return;
    }
  }
}

uint64_t get_enum_tag_for_layout_string_17PhotosSwiftUICore0A20BasicAsyncImagePhase33_460C0208308CE916CBE04D8DC5A9DDC1LLO(uint64_t a1)
{
  if ((*(a1 + 24) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 24) & 3;
  }
}

uint64_t sub_1C102EA4C(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFE && *(a1 + 25))
    {
      v2 = *a1 + 253;
    }

    else
    {
      v3 = *(a1 + 24);
      if (v3 <= 2)
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

uint64_t sub_1C102EA8C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 24) = -a2;
    }
  }

  return result;
}

uint64_t sub_1C102EAD4(uint64_t result, unsigned int a2)
{
  v2 = a2 - 2;
  if (a2 >= 2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    LOBYTE(a2) = 2;
    *result = v2;
  }

  *(result + 24) = a2;
  return result;
}

void sub_1C102EB00(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10)
{
  if (a10)
  {
  }

  else
  {
  }
}

uint64_t objectdestroy_52Tm()
{

  sub_1C102EB00(*(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88), *(v0 + 96), *(v0 + 104));

  return swift_deallocObject();
}

uint64_t sub_1C102EC1C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 32);
  v3 = *(v0 + 88);
  v4 = *(v0 + 96);
  v14 = 0;
  v7 = v2;
  v5 = *(v0 + 56);
  v8 = *(v0 + 40);
  v9 = v5;
  v10 = *(v0 + 72);
  v11 = v3;
  v12 = v4;
  v13 = 0;
  return v1(&v7);
}

uint64_t sub_1C102EC88(unint64_t *a1, uint64_t *a2)
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

id sub_1C102ECF4(id result, void *a2, uint64_t a3, char a4)
{
  if (a4 == 1)
  {
    v5 = result;

    return a2;
  }

  else if (!a4)
  {
    v4 = result;
  }

  return result;
}

void sub_1C102ED80(void *a1, void *a2, uint64_t a3, char a4)
{
  if (a4 == 1)
  {
  }

  else if (!a4)
  {
  }
}

uint64_t objectdestroy_71Tm()
{
  v1 = *(v0 + 16);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 64) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1C102EF38(unint64_t *a1, void (*a2)(uint64_t))
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

void CACornerRadiiMake(double *a1@<X8>, double a2@<D0>, double a3@<D1>, double a4@<D2>, double a5@<D3>)
{
  *a1 = a4;
  a1[1] = a4;
  a1[2] = a5;
  a1[3] = a5;
  a1[4] = a3;
  a1[5] = a3;
  a1[6] = a2;
  a1[7] = a2;
}

uint64_t sub_1C102EFA0(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1C102F008@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 16))();
  *a1 = result;
  return result;
}

uint64_t sub_1C102F064(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7)
{
  v14 = swift_allocObject();
  sub_1C102F0EC(a1, a2, a3, a4, a5 & 1, a6, a7);
  return v14;
}

void *sub_1C102F0EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v28 = *v7;
  v7[3] = 0;
  *(v7 + 32) = 1;
  v7[8] = 0;
  v7[5] = 0;
  v7[6] = 0;
  *(v7 + 72) = 1;
  v7[10] = 0;
  *(v7 + 88) = 1;
  sub_1C1261F10();
  OUTLINED_FUNCTION_9_13();
  sub_1C1034198(v11, v12);
  v13 = OUTLINED_FUNCTION_33_3();
  __swift_instantiateConcreteTypeFromMangledNameV2(v13);
  sub_1C0FDB6D4(&unk_1EDE7B6F0, &qword_1EBE91448);
  sub_1C1266870();
  *(v7 + qword_1EDE7FEB0) = MEMORY[0x1E69E7CD0];
  *(v7 + qword_1EDE793B0) = 2;
  v14 = qword_1EDE7FE98;
  *(v8 + v14) = sub_1C1265CE0();
  v15 = v8 + qword_1EDE9B5C8;
  *v15 = 0;
  v15[8] = 1;
  v8[2] = a1;
  v8[7] = a2;
  *(v8 + qword_1EDE9B6A0) = a3;
  swift_beginAccess();
  *v15 = a4;
  v15[8] = a5 & 1;
  v16 = (v8 + qword_1EDE7FEA8);
  *v16 = a6;
  v16[1] = a7;
  v17 = swift_allocObject();
  swift_weakInit();
  v18 = swift_allocObject();
  v18[2] = *(v28 + 80);
  v18[3] = *(v28 + 88);
  v18[4] = v17;
  swift_unknownObjectRetain();

  v19 = sub_1C1262020();
  v21 = v20;
  swift_unknownObjectRelease();

  v8[5] = v19;
  v8[6] = v21;
  swift_unknownObjectRelease();
  return v8;
}

uint64_t sub_1C102F3C4()
{
  v0 = sub_1C1262290();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1C1262280();
    sub_1C1034198(&qword_1EDE7C0B0, MEMORY[0x1E69C43B0]);
    v5 = sub_1C1266810();
    (*(v1 + 8))(v3, v0);
    if (v5)
    {
      sub_1C102F674();
    }
  }

  return result;
}

uint64_t sub_1C102F52C(uint64_t result, char a2)
{
  *(v2 + 24) = result;
  *(v2 + 32) = a2 & 1;
  return result;
}

uint64_t sub_1C102F550(uint64_t result, char a2)
{
  *(v2 + 64) = result;
  *(v2 + 72) = a2 & 1;
  return result;
}

uint64_t sub_1C102F56C(uint64_t result, char a2)
{
  *(v2 + 80) = result;
  *(v2 + 88) = a2 & 1;
  return result;
}

uint64_t sub_1C102F57C@<X0>(uint64_t a1@<X8>)
{
  v3 = qword_1EDE7FEA0;
  OUTLINED_FUNCTION_7_4();
  sub_1C1261F10();
  OUTLINED_FUNCTION_3();
  return (*(v4 + 16))(a1, v1 + v3);
}

void sub_1C102F674()
{
  OUTLINED_FUNCTION_23();
  v1 = v0;
  OUTLINED_FUNCTION_2_15();
  OUTLINED_FUNCTION_19_6();
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_11_5();
  OUTLINED_FUNCTION_17_9();
  OUTLINED_FUNCTION_22_1();
  sub_1C12620A0();
  swift_unknownObjectRelease();
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_26_3();
  v5 = sub_1C1262030();
  if ((v4 & 1) != 0 || v3 != v5)
  {
    OUTLINED_FUNCTION_26_3();
    v8 = sub_1C1262030();
    v9 = OUTLINED_FUNCTION_46();
    v10(v9);
    *(v1 + 24) = v8;
    *(v1 + 32) = 0;
  }

  else
  {
    v6 = OUTLINED_FUNCTION_46();
    v7(v6);
  }

  OUTLINED_FUNCTION_22_0();
}

uint64_t sub_1C102F7D8()
{
  OUTLINED_FUNCTION_2_15();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_0();
  v2 = v1;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v8 - v4;
  OUTLINED_FUNCTION_13_8();
  PhotosSelection.firstIdentifier.getter(&v8);

  if (v9)
  {
    sub_1C0FD09FC(&v8, v10);
    OUTLINED_FUNCTION_17_9();
    OUTLINED_FUNCTION_46();
    sub_1C12620A0();
    swift_unknownObjectRelease();
    swift_getAssociatedConformanceWitness();
    v6 = sub_1C1262330();
    (*(v2 + 8))(v5, AssociatedTypeWitness);
    __swift_destroy_boxed_opaque_existential_0Tm(v10);
  }

  else
  {
    sub_1C0FD1A5C(&v8, &qword_1EBE90620);
    return 0;
  }

  return v6;
}

char *sub_1C102F984()
{
  OUTLINED_FUNCTION_2_15();
  OUTLINED_FUNCTION_36_0();
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v0);
  v2 = &v12 - v1;
  OUTLINED_FUNCTION_17_9();
  sub_1C12620A0();
  swift_unknownObjectRelease();
  v3 = sub_1C1030E30();
  if (v4)
  {
    OUTLINED_FUNCTION_28_2();
    swift_getAssociatedConformanceWitness();
    v5 = v2;
    sub_1C1262300();
    v6 = OUTLINED_FUNCTION_40_2();
    v7(v6);
  }

  else
  {
    v8 = v3;
    OUTLINED_FUNCTION_28_2();
    swift_getAssociatedConformanceWitness();
    v5 = v2;
    sub_1C1262300();
    v9 = OUTLINED_FUNCTION_40_2();
    v10(v9);
    if (v8 < v2)
    {
      return v8;
    }
  }

  return v5;
}

uint64_t sub_1C102FB10(uint64_t a1)
{
  v1 = a1 + 56;
  OUTLINED_FUNCTION_3_17();
  v4 = v3 & v2;
  v6 = (v5 + 63) >> 6;

  v8 = 0;
  v20 = MEMORY[0x1E69E7CC0];
  while (v4)
  {
LABEL_7:
    OUTLINED_FUNCTION_32_1();
    v10 = sub_1C102F638();
    if (*(v10 + 16) && (, v11 = OUTLINED_FUNCTION_22_1(), v13 = sub_1C0FA4574(v11, v12), v15 = v14, , (v15 & 1) != 0))
    {
      sub_1C10335C0(*(v10 + 56) + 112 * v13, __src);

      memcpy(__dst, __src, 0x70uLL);
      sub_1C0FDB0A8(__dst, __src);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        OUTLINED_FUNCTION_8_12();
        sub_1C0FE40BC();
        v20 = v18;
      }

      v17 = *(v20 + 16);
      v16 = *(v20 + 24);
      if (v17 >= v16 >> 1)
      {
        OUTLINED_FUNCTION_5_14(v16);
        sub_1C0FE40BC();
        v20 = v19;
      }

      sub_1C1033D88(__dst);
      *(v20 + 16) = v17 + 1;
      result = sub_1C0F9DDE4(__src, v20 + 40 * v17 + 32);
    }

    else
    {
    }
  }

  while (1)
  {
    v9 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v9 >= v6)
    {

      return v20;
    }

    v4 = *(v1 + 8 * v9);
    ++v8;
    if (v4)
    {
      v8 = v9;
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

void sub_1C102FCC8()
{
  OUTLINED_FUNCTION_23();
  v2 = v0;
  v19 = v3;
  v18 = v4;
  v6 = v5;
  v7 = MEMORY[0x1E69C4368];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_0();
  v17 = v9;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_18_8();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_34_3();
  v12 = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_0();
  v14 = v13;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_11_5();
  if (v19)
  {
    goto LABEL_5;
  }

  OUTLINED_FUNCTION_17_9();
  sub_1C12620A0();
  swift_unknownObjectRelease();
  MEMORY[0x1C68EBC60](v18, AssociatedTypeWitness, AssociatedConformanceWitness);
  (*(v17 + 8))(v1, AssociatedTypeWitness);
  v16 = sub_1C1030BC8();
  (*(v14 + 8))(v7, v12, v16);
  if (!v21)
  {
    sub_1C0FD1A5C(&v20, &qword_1EBE91420);
LABEL_5:
    *(v6 + 32) = 0;
    *v6 = 0u;
    *(v6 + 16) = 0u;
    goto LABEL_6;
  }

  sub_1C0F9DDE4(&v20, v6);
  *(v2 + 64) = v18;
  *(v2 + 72) = 0;
  OUTLINED_FUNCTION_13_8();
  PhotosSelection.set(item:)(v6);

LABEL_6:
  OUTLINED_FUNCTION_22_0();
}

void sub_1C102FF30()
{
  OUTLINED_FUNCTION_23();
  LODWORD(v63) = v1;
  v60 = v2;
  v61 = v3;
  v5 = v4;
  v64 = v6;
  v7 = sub_1C1261F10();
  OUTLINED_FUNCTION_0();
  v59 = v8;
  v10 = MEMORY[0x1EEE9AC00](v9);
  v12 = &v53 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v55 = &v53 - v14;
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = &v53 - v16;
  MEMORY[0x1EEE9AC00](v15);
  v58 = &v53 - v18;
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_35_1();
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_0();
  v56 = v21;
  v57 = v20;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v22);
  v62 = &v53 - v23;
  swift_checkMetadataState();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_19();
  v25 = MEMORY[0x1EEE9AC00](v24);
  v28 = &v53 - v27;
  if (v5 & 1) != 0 || (v63)
  {
    v29 = v64;
    *(v64 + 32) = 0;
    *v29 = 0u;
    v29[1] = 0u;
  }

  else
  {
    v54 = v26;
    v30 = v25;
    OUTLINED_FUNCTION_17_9();
    sub_1C12620A0();
    swift_unknownObjectRelease();
    v31 = v61;
    v32 = v28;
    v63 = v30;
    MEMORY[0x1C68EBC60](v61, v30, AssociatedConformanceWitness);
    *(v0 + 64) = v31;
    *(v0 + 72) = 0;
    if (v31 <= v60)
    {
      v33 = v60;
    }

    else
    {
      v33 = v31;
    }

    if (v31 >= v60)
    {
      v34 = v60;
    }

    else
    {
      v34 = v31;
    }

    sub_1C102F57C(v17);
    OUTLINED_FUNCTION_9_13();
    sub_1C1034198(v35, v36);
    sub_1C1266860();
    v37 = v34;
    while (1)
    {
      v65 = v37;
      sub_1C1266840();
      if (v33 == v37)
      {
        break;
      }

      if (__OFADD__(v37++, 1))
      {
        __break(1u);
        break;
      }
    }

    v39 = v59;
    v40 = *(v59 + 32);
    v41 = v34;
    v60 = v34;
    v42 = v55;
    v40(v55, v12, v7);
    sub_1C10CABFC(v42, v58);
    v43 = *(v39 + 8);
    v44 = OUTLINED_FUNCTION_26_3();
    v61 = v43;
    v43(v44);
    (v43)(v17, v7);
    v45 = OUTLINED_FUNCTION_13_8();
    MEMORY[0x1EEE9AC00](v45);
    OUTLINED_FUNCTION_37_2();
    v47 = sub_1C10304C0(sub_1C10341E0, v46, v41, v33);
    PhotosSelection.select(items:)(v47);

    v48 = sub_1C102F53C();
    MEMORY[0x1EEE9AC00](v48);
    OUTLINED_FUNCTION_37_2();
    v50 = sub_1C103061C(sub_1C103411C, v49);
    PhotosSelection.deselect(items:)(v50);

    swift_beginAccess();
    sub_1C1261F00();
    v65 = v60;
    v66 = v33;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE91428);
    sub_1C0FDB6D4(&qword_1EBE91430, &qword_1EBE91428);
    sub_1C1261EF0();
    swift_endAccess();
    v51 = v62;
    sub_1C1030BC8();
    v52 = OUTLINED_FUNCTION_22_1();
    v61(v52);
    (*(v56 + 8))(v51, v57);
    (*(v54 + 8))(v32, v63);
  }

  OUTLINED_FUNCTION_22_0();
}

uint64_t sub_1C10304C0(void (*a1)(__int128 *__return_ptr, uint64_t *), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v17 = a3;
    a1(&v14, &v17);
    if (v4)
    {
      break;
    }

    if (v15)
    {
      sub_1C0F9DDE4(&v14, v16);
      sub_1C0F9DDE4(v16, &v14);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1C0FE40BC();
        v8 = v12;
      }

      v9 = *(v8 + 16);
      if (v9 >= *(v8 + 24) >> 1)
      {
        sub_1C0FE40BC();
        v8 = v13;
      }

      *(v8 + 16) = v9 + 1;
      result = sub_1C0F9DDE4(&v14, v8 + 40 * v9 + 32);
    }

    else
    {
      result = sub_1C0FD1A5C(&v14, &qword_1EBE91420);
    }

    if (a4 == a3)
    {
      return v8;
    }

    if (__OFADD__(a3++, 1))
    {
      __break(1u);
      return result;
    }
  }

  return v8;
}

uint64_t sub_1C103061C(uint64_t a1, uint64_t a2)
{
  v25[0] = a1;
  v25[1] = a2;
  v27 = sub_1C1261EA0();
  v4 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v6 = v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1C1261F10();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE902B8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v25 - v12;
  (*(v8 + 16))(v10, v2, v7);
  v14 = MEMORY[0x1E6969B50];
  sub_1C1034198(&qword_1EBE91438, MEMORY[0x1E6969B50]);
  sub_1C1265F60();
  sub_1C1034198(&qword_1EDE82F10, v14);
  v26 = (v4 + 8);
  v15 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    sub_1C1266310();
    sub_1C1034198(&unk_1EDE82F18, MEMORY[0x1E6969B18]);
    v16 = v27;
    v17 = sub_1C1265DE0();
    (*v26)(v6, v16);
    if (v17)
    {
      sub_1C0FD1A5C(v13, &qword_1EBE902B8);
      return v15;
    }

    v18 = sub_1C12663A0();
    v20 = *v19;
    v18(v30, 0);
    sub_1C1266320();
    v31 = v20;
    (v25[0])(&v28, &v31);
    if (v3)
    {
      break;
    }

    if (v29)
    {
      sub_1C0F9DDE4(&v28, v30);
      sub_1C0F9DDE4(v30, &v28);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1C0FE40BC();
        v15 = v22;
      }

      v21 = *(v15 + 16);
      if (v21 >= *(v15 + 24) >> 1)
      {
        sub_1C0FE40BC();
        v15 = v23;
      }

      *(v15 + 16) = v21 + 1;
      sub_1C0F9DDE4(&v28, v15 + 40 * v21 + 32);
    }

    else
    {
      sub_1C0FD1A5C(&v28, &qword_1EBE91420);
    }
  }

  sub_1C0FD1A5C(v13, &qword_1EBE902B8);

  return v15;
}

uint64_t sub_1C1030A38(uint64_t *a1)
{
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_0();
  v5 = v4;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v13 - v7;
  v9 = *a1;
  OUTLINED_FUNCTION_34_3();
  v10 = swift_checkMetadataState();
  MEMORY[0x1C68EBC60](v9, v10, AssociatedConformanceWitness);
  v11 = sub_1C1030BC8();
  return (*(v5 + 8))(v8, AssociatedTypeWitness, v11);
}

double sub_1C1030BC8()
{
  OUTLINED_FUNCTION_2_15();
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_41_0();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v0);
  OUTLINED_FUNCTION_11_5();
  v1 = OUTLINED_FUNCTION_46();
  v2(v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE907C0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return OUTLINED_FUNCTION_20_9();
  }

  return result;
}

uint64_t sub_1C1030D24()
{
  v1 = qword_1EDE9B6A0;
  OUTLINED_FUNCTION_7_4();
  return *(v0 + v1);
}

uint64_t sub_1C1030D5C(uint64_t a1)
{
  v3 = qword_1EDE9B6A0;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1C1030E30()
{
  v1 = v0 + qword_1EDE9B5C8;
  swift_beginAccess();
  return *v1;
}

uint64_t sub_1C1030E7C(uint64_t a1, char a2)
{
  v5 = v2 + qword_1EDE9B5C8;
  result = swift_beginAccess();
  *v5 = a1;
  *(v5 + 8) = a2 & 1;
  return result;
}

void sub_1C1030F2C(unsigned __int8 *a1, uint64_t a2)
{
  v3 = *a1;
  if (sub_1C102F984() < 1)
  {
    OUTLINED_FUNCTION_20_9();
    return;
  }

  switch(v3)
  {
    case 1:
      if (!__OFSUB__(sub_1C102F984(), 1))
      {
        goto LABEL_21;
      }

      __break(1u);
      goto LABEL_25;
    case 2:
      goto LABEL_21;
    case 3:
      if (!__OFSUB__(sub_1C102F984(), 1))
      {
        goto LABEL_21;
      }

      __break(1u);
LABEL_17:
      v8 = 0;
      goto LABEL_18;
    default:
      if (sub_1C1030D24() < 1)
      {
        goto LABEL_17;
      }

      v4 = sub_1C102F984();
      v5 = v4 - 1;
      if (__OFSUB__(v4, 1))
      {
        goto LABEL_28;
      }

      v6 = sub_1C1030D24();
      if (!v6)
      {
        goto LABEL_29;
      }

      if (v5 == 0x8000000000000000 && v6 == -1)
      {
        goto LABEL_30;
      }

      v8 = v5 / v6;
LABEL_18:
      if (__OFSUB__(sub_1C102F984(), 1))
      {
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      v9 = sub_1C1030D24();
      if ((v8 * v9) >> 64 != (v8 * v9) >> 63)
      {
LABEL_26:
        __break(1u);
        goto LABEL_27;
      }

      if (!__OFADD__(v8 * v9, a2))
      {
LABEL_21:

        sub_1C102FCC8();
        return;
      }

LABEL_27:
      __break(1u);
LABEL_28:
      __break(1u);
LABEL_29:
      __break(1u);
LABEL_30:
      __break(1u);
      return;
  }
}

void sub_1C1031078(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v3 = *a1;
  v4 = *a2;
  v5 = sub_1C102F7D8();
  if ((v6 & 1) == 0 && ((v7 = v5, sub_1C1030D24() <= 0) ? (v8 = (v3 & 0xFE) == 2) : (v8 = 1), v8))
  {
    if (v4)
    {
      if (*(v2 + 88) == 1)
      {
        *(v2 + 80) = v7;
        *(v2 + 88) = 0;
        OUTLINED_FUNCTION_29_1();
        sub_1C1261F00();
        swift_endAccess();
      }
    }

    else
    {
      *(v2 + 80) = 0;
      *(v2 + 88) = 1;
    }

    if (!*(v2 + 72))
    {
      v7 = *(v2 + 64);
    }

    switch(v3)
    {
      case 1:
        v9 = sub_1C1030D24();
        if (__OFADD__(v7, v9))
        {
          goto LABEL_34;
        }

        if (v7 + v9 >= sub_1C102F984())
        {
          goto LABEL_29;
        }

        if (__OFADD__(v7, sub_1C1030D24()))
        {
          goto LABEL_35;
        }

        goto LABEL_27;
      case 2:
        goto LABEL_18;
      case 3:
        if (__OFSUB__(v7, 1))
        {
          goto LABEL_33;
        }

        if (v7 - 1 < 0)
        {
          goto LABEL_29;
        }

        goto LABEL_27;
      default:
        if (v7 < sub_1C1030D24())
        {
          goto LABEL_29;
        }

        if (!__OFSUB__(v7, sub_1C1030D24()))
        {
          goto LABEL_27;
        }

        __break(1u);
LABEL_18:
        if (__OFADD__(v7, 1))
        {
          __break(1u);
LABEL_33:
          __break(1u);
LABEL_34:
          __break(1u);
LABEL_35:
          __break(1u);
        }

        else
        {
          if (v7 + 1 >= sub_1C102F984())
          {
            goto LABEL_29;
          }

LABEL_27:
          if (v4)
          {
            sub_1C102FF30();
          }

          else
          {
            sub_1C102FCC8();
          }
        }

        break;
    }
  }

  else
  {
LABEL_29:
    OUTLINED_FUNCTION_20_9();
  }
}

uint64_t sub_1C103122C(_BYTE *a1)
{
  v2 = v1;
  OUTLINED_FUNCTION_39();
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_24_5();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v4);
  v75 = &v69 - v5;
  v78 = swift_checkMetadataState();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v6);
  v79 = &v69 - v8;
  v9 = *(v2 + qword_1EDE793B0) == 2 || *a1 == 0;
  v71 = v7;
  if (v9)
  {
    OUTLINED_FUNCTION_13_8();
    v10 = PhotosSelection.selectionIdentifiers.getter();

    sub_1C102F600(v10);
    v11 = sub_1C102F638();
    OUTLINED_FUNCTION_3_17();
    v14 = v13 & v12;
    v16 = (v15 + 63) >> 6;

    v18 = 0;
    if (!v14)
    {
      goto LABEL_8;
    }

    do
    {
      v19 = v18;
LABEL_11:
      sub_1C10335C0(*(v11 + 56) + 112 * (__clz(__rbit64(v14)) | (v19 << 6)), v84);
      memcpy(v83, v84, sizeof(v83));
      if (OUTLINED_FUNCTION_15_12(*&v83[9], *&v83[10], *&v83[11], *&v83[12]))
      {

        memcpy(__src, v83, 0x70uLL);
LABEL_15:

        sub_1C1033DDC(__src, v83);
        if (v83[3])
        {
          memcpy(v84, v83, sizeof(v84));
          v20 = sub_1C102F5F0();
          v21 = *(&v84[1] + 1);
          v22 = *&v84[2];
          __swift_project_boxed_opaque_existential_1(v84, *(&v84[1] + 1));
          OUTLINED_FUNCTION_23_4();
          v24 = v23(v21, v22);
          LOBYTE(v21) = sub_1C1260708(v24, v25, v20);

          sub_1C0FD1A5C(__src, &unk_1EBE90A18);
          sub_1C1033D88(v84);
          v26 = v21 & 1;
        }

        else
        {
          sub_1C0FD1A5C(__src, &unk_1EBE90A18);
          sub_1C0FD1A5C(v83, &unk_1EBE90A18);
          v26 = 2;
        }

        *(v2 + qword_1EDE793B0) = v26;
        goto LABEL_19;
      }

      v14 &= v14 - 1;
      result = sub_1C1033D88(v83);
      v18 = v19;
    }

    while (v14);
LABEL_8:
    while (1)
    {
      v19 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v19 >= v16)
      {

        memset(__src, 0, 112);
        goto LABEL_15;
      }

      v14 = *(v11 + 64 + 8 * v19);
      ++v18;
      if (v14)
      {
        goto LABEL_11;
      }
    }

LABEL_70:
    __break(1u);
LABEL_71:
    __break(1u);
  }

  else
  {
LABEL_19:
    OUTLINED_FUNCTION_13_8();
    v70 = PhotosSelection.selectionIdentifiers.getter();

    v81._rawValue = MEMORY[0x1E69E7CC0];
    v82._rawValue = MEMORY[0x1E69E7CC0];
    v80 = MEMORY[0x1E69E7CD0];
    OUTLINED_FUNCTION_17_9();
    OUTLINED_FUNCTION_33_3();
    sub_1C12620A0();
    swift_unknownObjectRelease();
    v72 = v2;
    result = sub_1C102F638();
    v27 = result;
    v28 = 0;
    v29 = result + 64;
    v30 = 1 << *(result + 32);
    v31 = -1;
    if (v30 < 64)
    {
      v32 = ~(-1 << v30);
    }

    else
    {
      v32 = -1;
    }

    v33 = v32 & *(result + 64);
    v34 = (v30 + 63) >> 6;
    v35 = -1;
    v73 = result;
    v74 = -1;
    while (v33)
    {
      v36 = v28;
LABEL_28:
      OUTLINED_FUNCTION_32_1();
      sub_1C10335C0(*(v27 + 56) + 112 * (v37 | (v36 << 6)), __src);
      memcpy(v84, __src, sizeof(v84));
      if (OUTLINED_FUNCTION_15_12(*(&v84[4] + 1), *&v84[5], *(&v84[5] + 1), *&v84[6]))
      {
        v38 = *(&v84[1] + 1);
        v39 = *&v84[2];
        __swift_project_boxed_opaque_existential_1(v84, *(&v84[1] + 1));
        OUTLINED_FUNCTION_23_4();
        v40(v38, v39);

        v41 = *(&v84[1] + 1);
        __swift_project_boxed_opaque_existential_1(v84, *(&v84[1] + 1));
        v83[3] = v41;
        __swift_allocate_boxed_opaque_existential_1(v83);
        OUTLINED_FUNCTION_15_1();
        (*(v42 + 16))();
        v43 = sub_1C1262330();
        LOBYTE(v38) = v44;
        __swift_destroy_boxed_opaque_existential_0Tm(v83);
        if (v38)
        {
          v43 = -1;
        }

        if (v35 == -1 && (v31 = v74, v74 == -1))
        {
          result = sub_1C1033D88(v84);
          v31 = v43;
          v35 = v43;
          v74 = v43;
        }

        else if (v43 >= v35)
        {
          result = sub_1C1033D88(v84);
          v45 = v31 < v43;
          if (v31 <= v43)
          {
            v31 = v43;
          }

          v46 = v74;
          if (v45)
          {
            v46 = v43;
          }

          v74 = v46;
        }

        else
        {
          result = sub_1C1033D88(v84);
          v35 = v43;
        }

        v28 = v36;
        v27 = v73;
      }

      else
      {
        result = sub_1C1033D88(v84);
        v28 = v36;
      }
    }

    while (1)
    {
      v36 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        __break(1u);
LABEL_69:
        __break(1u);
        goto LABEL_70;
      }

      if (v36 >= v34)
      {
        break;
      }

      v33 = *(v29 + 8 * v36);
      ++v28;
      if (v33)
      {
        goto LABEL_28;
      }
    }

    v47 = v72;
    if ((v35 & 0x8000000000000000) == 0 && (v31 & 0x8000000000000000) == 0)
    {
      if (v31 < v35)
      {
        goto LABEL_71;
      }

      v48 = MEMORY[0x1E69E7CC0];
      v49 = MEMORY[0x1E69E7CC0];
      while (1)
      {
        sub_1C1262350();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE907C0);
        if (swift_dynamicCast())
        {
          sub_1C0F9DDE4(v84, __src);
          v50 = *(v47 + qword_1EDE793B0);
          if (v50 == 2 || (v50 & 1) == 0)
          {
            sub_1C0FDB0A8(__src, v84);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              OUTLINED_FUNCTION_8_12();
              sub_1C0FE40BC();
              v48 = v61;
            }

            v54 = v48[2];
            v53 = v48[3];
            if (v54 >= v53 >> 1)
            {
              OUTLINED_FUNCTION_5_14(v53);
              sub_1C0FE40BC();
              v48 = v62;
            }

            v48[2] = v54 + 1;
            sub_1C0F9DDE4(v84, &v48[5 * v54 + 4]);
            v82._rawValue = v48;
          }

          else
          {
            sub_1C0FDB0A8(__src, v84);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              OUTLINED_FUNCTION_8_12();
              sub_1C0FE40BC();
              v49 = v63;
            }

            v52 = v49[2];
            v51 = v49[3];
            if (v52 >= v51 >> 1)
            {
              OUTLINED_FUNCTION_5_14(v51);
              sub_1C0FE40BC();
              v49 = v64;
            }

            v49[2] = v52 + 1;
            sub_1C0F9DDE4(v84, &v49[5 * v52 + 4]);
            v81._rawValue = v49;
          }

          v56 = __src[3];
          v55 = __src[4];
          __swift_project_boxed_opaque_existential_1(__src, __src[3]);
          OUTLINED_FUNCTION_23_4();
          v58 = v57(v56, v55);
          sub_1C11030CC(v84, v58, v59);

          result = __swift_destroy_boxed_opaque_existential_0Tm(__src);
        }

        else
        {
          memset(v84, 0, 40);
          result = sub_1C0FD1A5C(v84, &qword_1EBE91420);
        }

        if (v31 == v35)
        {
          break;
        }

        if (__OFADD__(v35++, 1))
        {
          goto LABEL_69;
        }
      }
    }

    __src[0] = v70;
    v65 = sub_1C102F5F0();
    sub_1C1033FF0(v65);

    v66 = v80;
    sub_1C1033FF0(v80);
    v67 = sub_1C102FB10(__src[0]);

    sub_1C1163784(v67);
    *&v84[0] = sub_1C102F5F0();
    sub_1C1033FF0(v66);

    v68 = sub_1C102FB10(*&v84[0]);

    sub_1C1163784(v68);
    OUTLINED_FUNCTION_13_8();
    PhotosSelection.deselect(items:)(v81);

    OUTLINED_FUNCTION_13_8();
    PhotosSelection.select(items:)(v82);

    return (*(v71 + 8))(v79, v78);
  }

  return result;
}