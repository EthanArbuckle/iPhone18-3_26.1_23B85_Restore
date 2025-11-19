uint64_t sub_1A3F82458@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v85 = a2;
  v72 = sub_1A5249A94();
  v76 = *(v72 - 8);
  MEMORY[0x1EEE9AC00](v72);
  v64 = &v62 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3DD0DCC();
  v66 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v73 = &v62 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3DC7D88(0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v65 = &v62 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v74 = &v62 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v75 = &v62 - v12;
  sub_1A3F894A4(0);
  MEMORY[0x1EEE9AC00](v13 - 8);
  sub_1A3F88B78();
  MEMORY[0x1EEE9AC00](v14 - 8);
  v77 = &v62 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3F88B18();
  v17 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v68 = &v62 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v70 = &v62 - v20;
  v71 = sub_1A5242F74();
  v69 = *(v71 - 8);
  MEMORY[0x1EEE9AC00](v71);
  v78 = &v62 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *(a1 + 32);
  v23 = type metadata accessor for LemonadeSectionedFeedTabBar();
  v79 = v17;
  v24 = sub_1A5249754();
  v82 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v81 = &v62 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v80 = &v62 - v27;
  v28 = sub_1A5249754();
  v83 = *(v28 - 8);
  v84 = v28;
  v29 = MEMORY[0x1EEE9AC00](v28);
  v31 = &v62 - v30;
  v67 = v2;
  v32 = *(v2 + 8);
  v33 = (*(*v32 + 272))(v29);
  if (v34 == 1)
  {
    v36 = sub_1A3F88C24();
    WitnessTable = swift_getWitnessTable();
    v122 = v36;
    v123 = WitnessTable;
    v38 = swift_getWitnessTable();
    sub_1A3DF4890(v38, v24, MEMORY[0x1E6981E70]);
    v39 = v85;
  }

  else
  {
    v40 = v35;
    v63 = v31;
    sub_1A3F894D8(v33, v34);
    if ((v40 & 1) == 0)
    {

      sub_1A3F81CFC(v51, v22);
    }

    KeyPath = swift_getKeyPath();
    *&v111[0] = 0;
    BYTE8(v111[0]) = 1;
    sub_1A3F8C838(0, &qword_1EB12AF10, MEMORY[0x1E69E7DE0], MEMORY[0x1E69E6720]);
    sub_1A524B694();
    v42 = v112;
    v43 = BYTE8(v112);
    v44 = v113;
    *&v111[0] = 0;
    BYTE8(v111[0]) = 1;
    sub_1A524B694();
    v45 = v112;
    v46 = v113;
    LOBYTE(v111[0]) = 0;
    LOBYTE(v110[0]) = v43 & 1;
    LOBYTE(v109[0]) = BYTE8(v112) & 1;
    v113 = 0uLL;
    *&v114 = 0;
    *&v112 = v32;
    *(&v112 + 1) = KeyPath;
    BYTE8(v114) = 0;
    *&v115 = v42;
    BYTE8(v115) = v43 & 1;
    *&v116 = v44;
    *(&v116 + 1) = v45;
    LOBYTE(v117) = v109[0];
    *(&v117 + 1) = v46;
    swift_getWitnessTable();
    v47 = *(v23 - 8);
    v48 = *(v47 + 16);
    v48(&v100, &v112, v23);
    v106[2] = v114;
    v106[3] = v115;
    v106[4] = v116;
    v106[5] = v117;
    v106[0] = v112;
    v106[1] = v113;
    v49 = *(v47 + 8);
    v49(v106, v23);
    v107[2] = v102;
    v107[3] = v103;
    v107[4] = v104;
    v107[5] = v105;
    v107[0] = v100;
    v107[1] = v101;
    v114 = v102;
    v115 = v103;
    v116 = v104;
    v117 = v105;
    v112 = v100;
    v113 = v101;
    v48(&v94, &v112, v23);
    v108[2] = v114;
    v108[3] = v115;
    v108[4] = v116;
    v108[5] = v117;
    v108[0] = v112;
    v108[1] = v113;
    v48(v111, v107, v23);
    v49(v108, v23);
    v109[2] = v96;
    v109[3] = v97;
    v109[4] = v98;
    v109[5] = v99;
    v109[0] = v94;
    v109[1] = v95;
    v90 = v96;
    v91 = v97;
    v92 = v98;
    v93 = v99;
    v88 = v94;
    v89 = v95;
    v48(&v112, v109, v23);
    sub_1A3F88C24();
    v50 = v80;
    sub_1A3DF4890(&v88, v79, v23);
    v110[2] = v90;
    v110[3] = v91;
    v110[4] = v92;
    v110[5] = v93;
    v110[0] = v88;
    v110[1] = v89;
    v49(v110, v23);
    v111[2] = v96;
    v111[3] = v97;
    v111[4] = v98;
    v111[5] = v99;
    v111[0] = v94;
    v111[1] = v95;
    v49(v111, v23);
    v114 = v102;
    v115 = v103;
    v116 = v104;
    v117 = v105;
    v112 = v100;
    v113 = v101;
    v49(&v112, v23);
    v39 = v85;
    v31 = v63;
    v52 = sub_1A3F88C24();
    v53 = swift_getWitnessTable();
    v86 = v52;
    v87 = v53;
    swift_getWitnessTable();
    v55 = v81;
    v54 = v82;
    (*(v82 + 16))(v81, v50, v24);
    sub_1A3DF4798(v55, v24);
    v56 = *(v54 + 8);
    v56(v55, v24);
    v56(v50, v24);
  }

  v57 = sub_1A3F88C24();
  v58 = swift_getWitnessTable();
  v120 = v57;
  v121 = v58;
  v118 = swift_getWitnessTable();
  v119 = MEMORY[0x1E6981E60];
  v59 = v84;
  swift_getWitnessTable();
  v60 = v83;
  (*(v83 + 16))(v39, v31, v59);
  return (*(v60 + 8))(v31, v59);
}

uint64_t sub_1A3F83264(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(char *))
{
  sub_1A3DC7D88(0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3F895B4(a1, v9, sub_1A3DC7D88);
  return a5(v9);
}

uint64_t sub_1A3F8330C@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v43 = a2;
  v2 = *(a1 + 16);
  v45 = *(a1 + 24);
  v46 = a1;
  v44 = v2;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  sub_1A524CB74();
  sub_1A3F8BEF8();
  swift_getWitnessTable();
  v55[4] = swift_getAssociatedConformanceWitness();
  sub_1A524B9D4();
  sub_1A3F8BFFC();
  sub_1A5242084();
  sub_1A3F87E74(&qword_1EB12F4F0, sub_1A3F8BFFC);
  sub_1A3F87E74(&qword_1EB12F4F8, MEMORY[0x1E69C1CF8]);
  v55[20] = swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  sub_1A524B784();
  sub_1A5248804();
  sub_1A3E753B8(255, &qword_1EB127B40, sub_1A3E75420, MEMORY[0x1E69E7DE0], MEMORY[0x1E69802D8]);
  sub_1A5248804();
  v40 = MEMORY[0x1E69817F8];
  v55[18] = swift_getWitnessTable();
  v55[19] = MEMORY[0x1E697E5D8];
  v3 = MEMORY[0x1E697E858];
  WitnessTable = swift_getWitnessTable();
  v41 = sub_1A3E754D0();
  v55[16] = WitnessTable;
  v55[17] = v41;
  swift_getWitnessTable();
  sub_1A5247D04();
  sub_1A5248804();
  sub_1A3F8C700();
  sub_1A5248804();
  sub_1A524B984();
  v55[14] = swift_getWitnessTable();
  v55[15] = MEMORY[0x1E697EBF8];
  v39 = v3;
  v55[12] = swift_getWitnessTable();
  v55[13] = sub_1A3F87E74(&qword_1EB1245F0, sub_1A3F8C700);
  v5 = swift_getWitnessTable();
  sub_1A3F87E74(&qword_1EB127310, MEMORY[0x1E6981998]);
  swift_getOpaqueTypeMetadata2();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v55[2] = v5;
  v55[3] = OpaqueTypeConformance2;
  v8 = swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  v55[0] = OpaqueTypeMetadata2;
  v55[1] = v8;
  swift_getOpaqueTypeConformance2();
  v9 = sub_1A524B784();
  v35 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v33 - v10;
  v12 = sub_1A5248804();
  v38 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v33 = &v33 - v13;
  v14 = sub_1A5248804();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v36 = &v33 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v37 = &v33 - v18;
  v47 = v44;
  v48 = v45;
  v34 = *(v46 + 32);
  v19 = v42;
  v49 = v34;
  v50 = v42;
  sub_1A5249314();
  sub_1A524B774();
  sub_1A524BC74();
  v32 = swift_getWitnessTable();
  v20 = v33;
  sub_1A524AFE4();
  (*(v35 + 8))(v11, v9);
  v21 = swift_allocObject();
  v22 = v19[3];
  *(v21 + 72) = v19[2];
  *(v21 + 88) = v22;
  v23 = v19[5];
  *(v21 + 104) = v19[4];
  *(v21 + 120) = v23;
  v24 = v19[1];
  *(v21 + 40) = *v19;
  v25 = v45;
  *(v21 + 16) = v44;
  *(v21 + 24) = v25;
  *(v21 + 32) = v34;
  *(v21 + 56) = v24;
  (*(*(v46 - 8) + 16))(v55, v19);
  v53 = v32;
  v54 = MEMORY[0x1E697EBF8];
  v26 = swift_getWitnessTable();
  sub_1A3E75420();
  v27 = v36;
  sub_1A3E707DC(MEMORY[0x1E69E7DE0], sub_1A3D35BB8, 0, sub_1A3F8C7A0, v21, v12, MEMORY[0x1E69E7DE0], v26);

  (*(v38 + 8))(v20, v12);
  v51 = v26;
  v52 = v41;
  swift_getWitnessTable();
  v28 = *(v15 + 16);
  v29 = v37;
  v28(v37, v27, v14);
  v30 = *(v15 + 8);
  v30(v27, v14);
  v28(v43, v29, v14);
  return (v30)(v29, v14);
}

uint64_t sub_1A3F83C40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, char *a4@<X8>)
{
  v85 = a3;
  v89 = a4;
  v88 = sub_1A5249D04();
  v87 = *(v88 - 8);
  MEMORY[0x1EEE9AC00](v88);
  v86 = v65 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1A524B984();
  MEMORY[0x1EEE9AC00](v7);
  v82 = v65 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getAssociatedTypeWitness();
  v84 = a2;
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = sub_1A524CB74();
  sub_1A3F8BEF8();
  v12 = v11;
  WitnessTable = swift_getWitnessTable();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  *&v100 = v10;
  *(&v100 + 1) = AssociatedTypeWitness;
  v101 = v12;
  v102 = WitnessTable;
  v15 = a1;
  v103 = AssociatedConformanceWitness;
  sub_1A524B9D4();
  sub_1A3F8BFFC();
  v17 = v16;
  v18 = sub_1A5242084();
  v19 = sub_1A3F87E74(&qword_1EB12F4F0, sub_1A3F8BFFC);
  v20 = sub_1A3F87E74(&qword_1EB12F4F8, MEMORY[0x1E69C1CF8]);
  *&v100 = v17;
  *(&v100 + 1) = v18;
  v101 = v19;
  v102 = v20;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  sub_1A524B784();
  sub_1A5248804();
  sub_1A3E753B8(255, &qword_1EB127B40, sub_1A3E75420, MEMORY[0x1E69E7DE0], MEMORY[0x1E69802D8]);
  v21 = sub_1A5248804();
  v97 = swift_getWitnessTable();
  v98 = MEMORY[0x1E697E5D8];
  v22 = swift_getWitnessTable();
  v23 = sub_1A3E754D0();
  v95 = v22;
  v96 = v23;
  v24 = swift_getWitnessTable();
  v74 = v21;
  v65[5] = v24;
  v25 = sub_1A5247D04();
  v71 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v66 = v65 - v26;
  v27 = sub_1A5248804();
  v77 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v67 = v65 - v28;
  sub_1A3F8C700();
  v29 = sub_1A5248804();
  v79 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v76 = v65 - v30;
  v65[0] = swift_getWitnessTable();
  v93 = v65[0];
  v94 = MEMORY[0x1E697EBF8];
  v72 = v27;
  v31 = swift_getWitnessTable();
  v32 = sub_1A3F87E74(&qword_1EB1245F0, sub_1A3F8C700);
  v65[4] = v31;
  v91 = v31;
  v92 = v32;
  v33 = swift_getWitnessTable();
  v34 = sub_1A3F87E74(&qword_1EB127310, MEMORY[0x1E6981998]);
  *&v100 = v29;
  *(&v100 + 1) = v7;
  v101 = v33;
  v102 = v34;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  *&v100 = v29;
  *(&v100 + 1) = v7;
  v83 = v7;
  v101 = v33;
  v102 = v34;
  v65[1] = v34;
  v36 = swift_getOpaqueTypeConformance2();
  *&v100 = v29;
  *(&v100 + 1) = OpaqueTypeMetadata2;
  v101 = v33;
  v102 = v36;
  v37 = swift_getOpaqueTypeMetadata2();
  v80 = *(v37 - 8);
  MEMORY[0x1EEE9AC00](v37);
  v78 = v65 - v38;
  *&v100 = v29;
  *(&v100 + 1) = OpaqueTypeMetadata2;
  v65[2] = OpaqueTypeMetadata2;
  v101 = v33;
  v102 = v36;
  v65[3] = v36;
  v39 = swift_getOpaqueTypeConformance2();
  v81 = v37;
  *&v100 = v37;
  *(&v100 + 1) = v39;
  v69 = v39;
  v75 = swift_getOpaqueTypeMetadata2();
  v73 = *(v75 - 8);
  MEMORY[0x1EEE9AC00](v75);
  v68 = v65 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v41);
  v70 = v65 - v42;
  v100 = *(v15 + 72);
  v101 = *(v15 + 88);
  sub_1A3F880A8(0, &qword_1EB121C88, &qword_1EB12AF10, MEMORY[0x1E69E7DE0], MEMORY[0x1E6981790]);
  sub_1A524B6A4();
  if ((v90 & 1) == 0)
  {
    v100 = *(v15 + 48);
    v101 = *(v15 + 64);
    sub_1A524B6A4();
  }

  v43 = sub_1A524A024();
  sub_1A524A034();
  sub_1A524A034();
  v44 = sub_1A524A034();
  if (v44 != v43)
  {
    v44 = sub_1A524A034();
  }

  MEMORY[0x1EEE9AC00](v44);
  v45 = v66;
  sub_1A5247D14();
  sub_1A524BC74();
  v46 = v67;
  sub_1A524AFE4();
  (*(v71 + 8))(v45, v25);
  v47 = *MEMORY[0x1E697F468];
  v48 = sub_1A52494A4();
  v49 = v82;
  (*(*(v48 - 8) + 104))(v82, v47, v48);
  v50 = v76;
  v51 = v72;
  sub_1A524B194();
  sub_1A3F894EC(v49, MEMORY[0x1E6981998]);
  v52 = (*(v77 + 8))(v46, v51);
  MEMORY[0x1EEE9AC00](v52);
  swift_checkMetadataState();
  v53 = v78;
  sub_1A524A4B4();
  (*(v79 + 8))(v50, v29);
  v54 = v86;
  sub_1A5249CE4();
  sub_1A3F8C838(0, &qword_1EB12F500, MEMORY[0x1E6980D08], MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1A52FC9F0;
  LOBYTE(v46) = sub_1A524A044();
  *(inited + 32) = v46;
  v56 = sub_1A524A024();
  *(inited + 33) = v56;
  sub_1A524A034();
  sub_1A524A034();
  if (sub_1A524A034() != v46)
  {
    sub_1A524A034();
  }

  sub_1A524A034();
  if (sub_1A524A034() != v56)
  {
    sub_1A524A034();
  }

  v57 = v68;
  v58 = v81;
  sub_1A524ABF4();
  (*(v87 + 8))(v54, v88);
  (*(v80 + 8))(v53, v58);
  v59 = v73;
  v60 = *(v73 + 16);
  v61 = v70;
  v62 = v75;
  v60(v70, v57, v75);
  v63 = *(v59 + 8);
  v63(v57, v62);
  v60(v89, v61, v62);
  return (v63)(v61, v62);
}

uint64_t sub_1A3F849DC@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v45 = a4;
  v44 = a3;
  v46 = a5;
  swift_getAssociatedTypeWitness();
  v7 = a2;
  v37 = a2;
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  sub_1A524CB74();
  sub_1A3F8BEF8();
  swift_getWitnessTable();
  v55[4] = swift_getAssociatedConformanceWitness();
  v8 = sub_1A524B9D4();
  sub_1A3F8BFFC();
  v55[0] = v9;
  v55[1] = sub_1A5242084();
  v55[2] = sub_1A3F87E74(&qword_1EB12F4F0, sub_1A3F8BFFC);
  v55[3] = sub_1A3F87E74(&qword_1EB12F4F8, MEMORY[0x1E69C1CF8]);
  v55[12] = swift_getOpaqueTypeConformance2();
  v39 = v8;
  swift_getWitnessTable();
  v10 = sub_1A524B784();
  v40 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v37 - v11;
  v13 = sub_1A5248804();
  v43 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v38 = &v37 - v14;
  sub_1A3E753B8(255, &qword_1EB127B40, sub_1A3E75420, MEMORY[0x1E69E7DE0], MEMORY[0x1E69802D8]);
  v15 = sub_1A5248804();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v41 = &v37 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v42 = &v37 - v19;
  sub_1A3C7E8B0();
  v20 = [swift_getObjCClassFromMetadata() sharedInstance];
  [v20 sectionedFeedTabBarItemSpacing];

  v47 = v7;
  v21 = v44;
  v48 = v44;
  v22 = v45;
  v49 = v45;
  v50 = a1;
  sub_1A5249314();
  sub_1A524B774();
  WitnessTable = swift_getWitnessTable();
  v24 = v38;
  sub_1A524B0B4();
  (*(v40 + 8))(v12, v10);
  v25 = swift_allocObject();
  v26 = a1[3];
  *(v25 + 72) = a1[2];
  *(v25 + 88) = v26;
  v27 = a1[5];
  *(v25 + 104) = a1[4];
  *(v25 + 120) = v27;
  v28 = a1[1];
  *(v25 + 40) = *a1;
  *(v25 + 16) = v37;
  *(v25 + 24) = v21;
  *(v25 + 32) = v22;
  *(v25 + 56) = v28;
  v29 = type metadata accessor for LemonadeSectionedFeedTabBar();
  (*(*(v29 - 8) + 16))(v55, a1, v29);
  v53 = WitnessTable;
  v54 = MEMORY[0x1E697E5D8];
  v30 = swift_getWitnessTable();
  sub_1A3E75420();
  v31 = v41;
  sub_1A3E707DC(MEMORY[0x1E69E7DE0], sub_1A3F8D060, 0, sub_1A3F8C894, v25, v13, MEMORY[0x1E69E7DE0], v30);

  (*(v43 + 8))(v24, v13);
  v32 = sub_1A3E754D0();
  v51 = v30;
  v52 = v32;
  swift_getWitnessTable();
  v33 = *(v16 + 16);
  v34 = v42;
  v33(v42, v31, v15);
  v35 = *(v16 + 8);
  v35(v31, v15);
  v33(v46, v34, v15);
  return (v35)(v34, v15);
}

uint64_t sub_1A3F850E4@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v36 = a4;
  v40 = a5;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = sub_1A524CB74();
  sub_1A3F8BEF8();
  v11 = v10;
  v38 = v10;
  v39 = v9;
  WitnessTable = swift_getWitnessTable();
  v45 = v9;
  v46 = AssociatedTypeWitness;
  v47 = v11;
  v48 = WitnessTable;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v12 = sub_1A524B9D4();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &KeyPath - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v16);
  v19 = &KeyPath - v18;
  v50 = (*(**a1 + 216))(v17);
  v41 = a2;
  v42 = a3;
  v20 = v36;
  v43 = v36;
  KeyPath = swift_getKeyPath();
  v21 = swift_allocObject();
  v22 = a1[3];
  *(v21 + 72) = a1[2];
  *(v21 + 88) = v22;
  v23 = a1[5];
  *(v21 + 104) = a1[4];
  *(v21 + 120) = v23;
  v24 = a1[1];
  *(v21 + 40) = *a1;
  *(v21 + 16) = a2;
  *(v21 + 24) = a3;
  *(v21 + 32) = v20;
  *(v21 + 56) = v24;
  v25 = type metadata accessor for LemonadeSectionedFeedTabBar();
  (*(*(v25 - 8) + 16))(&v45, a1, v25);
  sub_1A3F8BFFC();
  v27 = v26;
  v28 = sub_1A5242084();
  v29 = sub_1A3F87E74(&qword_1EB12F4F0, sub_1A3F8BFFC);
  v30 = sub_1A3F87E74(&qword_1EB12F4F8, MEMORY[0x1E69C1CF8]);
  v45 = v27;
  v46 = v28;
  v47 = v29;
  v48 = v30;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_1A524B9B4();
  v44 = OpaqueTypeConformance2;
  swift_getWitnessTable();
  v31 = *(v13 + 16);
  v31(v19, v15, v12);
  v32 = *(v13 + 8);
  v32(v15, v12);
  v31(v40, v19, v12);
  return (v32)(v19, v12);
}

void sub_1A3F85518(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v34 = a5;
  v19 = a4;
  v29 = a6;
  v28 = sub_1A5242084();
  v30 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v25 = v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3F8BFFC();
  v26 = v10;
  v27 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v24 = v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = a3;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v18 = *(AssociatedTypeWitness - 8);
  v33 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v35 = v17 - v12;
  v13 = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](v13);
  swift_getAssociatedConformanceWitness();
  v23 = swift_getAssociatedTypeWitness();
  v22 = *(v23 - 8);
  v14 = MEMORY[0x1EEE9AC00](v23);
  v20 = v17 - v15;
  v16 = *(**a2 + 352);
  v17[5] = a1;
  v21 = v16(a1, v14);
  swift_checkMetadataState();
  sub_1A5242604();
  sub_1A5246234();
}

uint64_t sub_1A3F85DCC@<X0>(char *a1@<X0>, char *a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v83 = a1;
  v87 = a5;
  sub_1A3F8C3D4();
  v76 = v8;
  v66 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v68 = &v65 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3F8C2D0();
  v81 = v10;
  v67 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v65 = &v65 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3F8CD04(0, &qword_1EB12F508, MEMORY[0x1E697F948]);
  v86 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v84 = (&v65 - v13);
  sub_1A3F8C15C(0, &qword_1EB12F510, MEMORY[0x1E697F948]);
  v77 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v79 = &v65 - v15;
  sub_1A3F8C15C(0, &qword_1EB12F4A8, MEMORY[0x1E697F960]);
  v85 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v82 = &v65 - v17;
  v78 = sub_1A52438B4();
  v74 = *(v78 - 8);
  MEMORY[0x1EEE9AC00](v78);
  v19 = &v65 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3E429B4();
  v75 = v20;
  v71 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v65 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3F8C1CC();
  v80 = v23;
  v73 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v72 = &v65 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = *(a4 + 64);
  v70 = a3;
  swift_getAssociatedTypeWitness();
  v69 = a2;
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v27 = v83;
  v25(AssociatedTypeWitness, a4);
  if (v28)
  {
    v88 = (*(a4 + 56))(AssociatedTypeWitness, a4);
    v89 = v29;
    sub_1A3D5F9DC();
    sub_1A524B614();
    sub_1A5247C64();
    v83 = MEMORY[0x1E697D658];
    v30 = sub_1A3F87E74(&qword_1EB1274F0, sub_1A3E429B4);
    v31 = sub_1A3F87E74(&qword_1EB12F4B8, MEMORY[0x1E69C26B0]);
    v32 = v72;
    v33 = v75;
    v34 = v78;
    sub_1A524A904();
    (*(v74 + 8))(v19, v34);
    (*(v71 + 8))(v22, v33);
    v35 = v73;
    v36 = v80;
    (*(v73 + 16))(v79, v32, v80);
    swift_storeEnumTagMultiPayload();
    v88 = v33;
    v89 = v34;
    v90 = v30;
    v91 = v31;
    swift_getOpaqueTypeConformance2();
    v37 = sub_1A3F87E74(&qword_1EB12F4D0, sub_1A3F8C3D4);
    v88 = v76;
    v89 = v34;
    v90 = v37;
    v91 = v31;
    swift_getOpaqueTypeConformance2();
    v38 = v82;
    sub_1A5249744();
    sub_1A3CCF4C4(v38, v84);
    swift_storeEnumTagMultiPayload();
    sub_1A3F8C554();
    sub_1A5249744();
    sub_1A3CCF544(v38);
    return (*(v35 + 8))(v32, v36);
  }

  else
  {
    v40 = v69;
    v41 = v70;
    v42 = v68;
    v43 = (*(a4 + 72))(AssociatedTypeWitness, a4);
    if (v44)
    {
      MEMORY[0x1EEE9AC00](v43);
      *(&v65 - 4) = v40;
      *(&v65 - 3) = v41;
      *(&v65 - 2) = a4;
      *(&v65 - 1) = v27;
      MEMORY[0x1EEE9AC00](v45);
      *(&v65 - 2) = v46;
      *(&v65 - 1) = v47;
      sub_1A3EE213C();
      sub_1A3F37498();
      v48 = v42;
      sub_1A524B5F4();

      v49 = v19;
      sub_1A5247C64();
      v50 = sub_1A3F87E74(&qword_1EB12F4D0, sub_1A3F8C3D4);
      v51 = sub_1A3F87E74(&qword_1EB12F4B8, MEMORY[0x1E69C26B0]);
      v52 = v65;
      v53 = v76;
      v54 = v78;
      sub_1A524A904();
      (*(v74 + 8))(v49, v54);
      (*(v66 + 8))(v48, v53);
      v55 = v67;
      v56 = v81;
      (*(v67 + 16))(v79, v52, v81);
      swift_storeEnumTagMultiPayload();
      v57 = sub_1A3F87E74(&qword_1EB1274F0, sub_1A3E429B4);
      v88 = v75;
      v89 = v54;
      v90 = v57;
      v91 = v51;
      swift_getOpaqueTypeConformance2();
      v88 = v53;
      v89 = v54;
      v90 = v50;
      v91 = v51;
      swift_getOpaqueTypeConformance2();
      v58 = v82;
      sub_1A5249744();
      sub_1A3CCF4C4(v58, v84);
      swift_storeEnumTagMultiPayload();
      sub_1A3F8C554();
      sub_1A5249744();
      sub_1A3CCF544(v58);
      return (*(v55 + 8))(v52, v56);
    }

    else
    {
      v88 = (*(a4 + 56))(AssociatedTypeWitness, a4);
      v89 = v59;
      sub_1A3D5F9DC();
      v60 = sub_1A524A464();
      v61 = v84;
      *v84 = v60;
      v61[1] = v62;
      *(v61 + 16) = v63 & 1;
      v61[3] = v64;
      swift_storeEnumTagMultiPayload();
      sub_1A3F8C554();
      return sub_1A5249744();
    }
  }
}

uint64_t sub_1A3F868C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  v28 = a1;
  v26 = sub_1A524B984();
  MEMORY[0x1EEE9AC00](v26);
  v3 = &v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_1A524B8D4();
  v4 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = sub_1A524CB74();
  sub_1A3F8BEF8();
  v10 = v9;
  WitnessTable = swift_getWitnessTable();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v38 = v8;
  v39 = AssociatedTypeWitness;
  v40 = v10;
  v41 = WitnessTable;
  v42 = AssociatedConformanceWitness;
  sub_1A524B9D4();
  sub_1A3F8BFFC();
  v14 = v13;
  v15 = sub_1A5242084();
  v16 = sub_1A3F87E74(&qword_1EB12F4F0, sub_1A3F8BFFC);
  v17 = sub_1A3F87E74(&qword_1EB12F4F8, MEMORY[0x1E69C1CF8]);
  v38 = v14;
  v39 = v15;
  v40 = v16;
  v41 = v17;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  sub_1A524B784();
  sub_1A5248804();
  sub_1A3E753B8(255, &qword_1EB127B40, sub_1A3E75420, MEMORY[0x1E69E7DE0], MEMORY[0x1E69802D8]);
  sub_1A5248804();
  v35 = swift_getWitnessTable();
  v36 = MEMORY[0x1E697E5D8];
  v18 = swift_getWitnessTable();
  v19 = sub_1A3E754D0();
  v33 = v18;
  v34 = v19;
  swift_getWitnessTable();
  sub_1A5247D04();
  sub_1A5248804();
  sub_1A3F8C700();
  sub_1A5248804();
  v31 = swift_getWitnessTable();
  v32 = MEMORY[0x1E697EBF8];
  v20 = swift_getWitnessTable();
  v21 = sub_1A3F87E74(&qword_1EB1245F0, sub_1A3F8C700);
  v29 = v20;
  v30 = v21;
  swift_getWitnessTable();
  sub_1A3F87E74(&qword_1EB127310, MEMORY[0x1E6981998]);
  sub_1A524B8C4();
  v22 = *MEMORY[0x1E697F468];
  v23 = sub_1A52494A4();
  (*(*(v23 - 8) + 104))(v3, v22, v23);
  sub_1A524AA34();
  sub_1A3F894EC(v3, MEMORY[0x1E6981998]);
  return (*(v4 + 8))(v6, v25);
}

void sub_1A3F86E6C(uint64_t a1, uint64_t *a2)
{
  v5 = *a2;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  swift_getAssociatedConformanceWitness();
  v4 = swift_getAssociatedTypeWitness();
  v3 = MEMORY[0x1EEE9AC00](v4);
  (*(v5 + 352))(a1, v3);
  swift_checkMetadataState();
  sub_1A5242604();
  sub_1A5246234();
}

uint64_t sub_1A3F871C0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v30 = a3;
  v32 = a4;
  v33 = a2;
  v4 = *a1;
  v5 = *a1;
  sub_1A3F8965C(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v31 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v4 + 88);
  v9 = *(v4 + 80);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = sub_1A524DF24();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v29 - v13;
  v15 = *(AssociatedTypeWitness - 8);
  v17 = MEMORY[0x1EEE9AC00](v16);
  v19 = &v29 - v18;
  (*(v5 + 192))(v17);
  if ((*(v15 + 48))(v14, 1, AssociatedTypeWitness) == 1)
  {
    result = (*(v12 + 8))(v14, v11);
    v21 = v33;
    if (*(v33 + 16))
    {
      v22 = sub_1A5242F44();
      return (*(*(v22 - 8) + 16))(v32, v21 + ((*(*(v22 - 8) + 80) + 32) & ~*(*(v22 - 8) + 80)), v22);
    }

    __break(1u);
    goto LABEL_12;
  }

  v23 = (*(v15 + 32))(v19, v14, AssociatedTypeWitness);
  MEMORY[0x1EEE9AC00](v23);
  *(&v29 - 4) = v9;
  *(&v29 - 3) = v8;
  v24 = v31;
  *(&v29 - 2) = v30;
  *(&v29 - 1) = v19;
  v25 = v33;
  sub_1A3F877C0(sub_1A3F89690, v33, v24);
  v26 = sub_1A5242F44();
  v27 = *(v26 - 8);
  v28 = *(v27 + 48);
  result = v28(v24, 1, v26);
  if (result == 1)
  {
    if (!*(v25 + 16))
    {
LABEL_12:
      __break(1u);
      return result;
    }

    (*(v27 + 16))(v32, v25 + ((*(v27 + 80) + 32) & ~*(v27 + 80)), v26);
    if (v28(v24, 1, v26) != 1)
    {
      sub_1A3F894EC(v24, sub_1A3F8965C);
    }
  }

  else
  {
    (*(v27 + 32))(v32, v24, v26);
  }

  return (*(v15 + 8))(v19, AssociatedTypeWitness);
}

uint64_t sub_1A3F87628(uint64_t a1, uint64_t a2)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v6 = &v8[-v5];
  sub_1A5242F34();
  (*(v4 + 16))(v6, a2, AssociatedTypeWitness);
  swift_getAssociatedConformanceWitness();
  sub_1A524E384();
  LOBYTE(a2) = MEMORY[0x1A59096D0](v9, v8);
  sub_1A3D5FAFC(v8);
  sub_1A3D5FAFC(v9);
  return a2 & 1;
}

uint64_t sub_1A3F877C0@<X0>(uint64_t (*a1)(char *)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v24 = a1;
  v6 = sub_1A5242F44();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a2 + 16);
  if (v11)
  {
    v21 = v7;
    v22 = a3;
    v13 = *(v7 + 16);
    v12 = v7 + 16;
    v23 = v13;
    v14 = (v12 - 8);
    v15 = a2 + ((*(v12 + 64) + 32) & ~*(v12 + 64));
    v16 = *(v12 + 56);
    while (1)
    {
      v23(v10, v15, v6, v8);
      v17 = v24(v10);
      if (v3)
      {
        return (*v14)(v10, v6);
      }

      if (v17)
      {
        break;
      }

      (*v14)(v10, v6);
      v15 += v16;
      if (!--v11)
      {
        v18 = 1;
        v7 = v21;
        a3 = v22;
        return (*(v7 + 56))(a3, v18, 1, v6);
      }
    }

    v7 = v21;
    a3 = v22;
    (*(v21 + 32))(v22, v10, v6);
    v18 = 0;
  }

  else
  {
    v18 = 1;
  }

  return (*(v7 + 56))(a3, v18, 1, v6);
}

uint64_t sub_1A3F87994(uint64_t a1, uint64_t a2)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v6 = &v8 - v5;
  sub_1A5242F34();
  swift_dynamicCast();
  (*(*a2 + 368))(v6);
  return (*(v4 + 8))(v6, AssociatedTypeWitness);
}

uint64_t PhotosSectionPickerContext.Item.hash(into:)()
{
  sub_1A5242F34();
  sub_1A524E374();
  sub_1A3D5FAFC(v1);
  sub_1A5242F14();
  sub_1A524C794();
}

uint64_t PhotosSectionPickerContext.Item.hashValue.getter()
{
  sub_1A524EC94();
  sub_1A5242F34();
  sub_1A524E374();
  sub_1A3D5FAFC(&v1);
  sub_1A5242F14();
  sub_1A524C794();

  return sub_1A524ECE4();
}

uint64_t sub_1A3F87C48()
{
  sub_1A524EC94();
  sub_1A5242F34();
  sub_1A524E374();
  sub_1A3D5FAFC(&v1);
  sub_1A5242F14();
  sub_1A524C794();

  return sub_1A524ECE4();
}

uint64_t sub_1A3F87CC8()
{
  sub_1A5242F34();
  sub_1A524E374();
  sub_1A3D5FAFC(v1);
  sub_1A5242F14();
  sub_1A524C794();
}

uint64_t sub_1A3F87D40()
{
  sub_1A524EC94();
  sub_1A5242F34();
  sub_1A524E374();
  sub_1A3D5FAFC(&v1);
  sub_1A5242F14();
  sub_1A524C794();

  return sub_1A524ECE4();
}

uint64_t sub_1A3F87DD4(uint64_t a1)
{
  result = sub_1A3F87E74(&qword_1EB12F3E8, MEMORY[0x1E69C2310]);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1A3F87E74(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1A3F87EC4()
{
  swift_checkMetadataState();
  if (v0 <= 0x3F)
  {
    type metadata accessor for LemonadeNavigationContext(319);
    if (v1 <= 0x3F)
    {
      type metadata accessor for LemonadeSectionedFeedViewModel();
      sub_1A5247CB4();
      if (v2 <= 0x3F)
      {
        sub_1A3F8C838(319, &qword_1EB1274D0, MEMORY[0x1E69E7DE0], MEMORY[0x1E6981790]);
        if (v3 <= 0x3F)
        {
          sub_1A3F8C838(319, &qword_1EB124800, &type metadata for LemonadeStackSpecs, MEMORY[0x1E697DCC0]);
          if (v4 <= 0x3F)
          {
            sub_1A3F8C454(319, &qword_1EB124848, MEMORY[0x1E69C28E8], MEMORY[0x1E697DCC0]);
            if (v5 <= 0x3F)
            {
              sub_1A3F880A8(319, &qword_1EB1246C8, &qword_1EB126D90, MEMORY[0x1E69E63B0], MEMORY[0x1E697DCC0]);
              if (v6 <= 0x3F)
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

void sub_1A3F880A8(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    sub_1A3F8C838(255, a3, a4, MEMORY[0x1E69E6720]);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_1A3F88124()
{
  type metadata accessor for LemonadeNavigationContext(319);
  if (v0 <= 0x3F)
  {
    type metadata accessor for LemonadeSectionedFeedViewModel();
    if (v1 <= 0x3F)
    {
      sub_1A3F8C838(319, &qword_1EB124800, &type metadata for LemonadeStackSpecs, MEMORY[0x1E697DCC0]);
      if (v2 <= 0x3F)
      {
        sub_1A3F8C454(319, &qword_1EB124870, MEMORY[0x1E69C2218], MEMORY[0x1E697DCC0]);
        if (v3 <= 0x3F)
        {
          sub_1A3F8C838(319, &qword_1EB124738, MEMORY[0x1E697DA60], MEMORY[0x1E697DCC0]);
          if (v4 <= 0x3F)
          {
            sub_1A3F8C454(319, &qword_1EB124700, sub_1A3DC7D88, MEMORY[0x1E697DCC0]);
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

void sub_1A3F882DC()
{
  type metadata accessor for LemonadeNavigationContext(319);
  if (v0 <= 0x3F)
  {
    type metadata accessor for LemonadeSectionedFeedViewModel();
    if (v1 <= 0x3F)
    {
      sub_1A3F8C838(319, &qword_1EB124800, &type metadata for LemonadeStackSpecs, MEMORY[0x1E697DCC0]);
      if (v2 <= 0x3F)
      {
        sub_1A3F8C454(319, &qword_1EB124700, sub_1A3DC7D88, MEMORY[0x1E697DCC0]);
        if (v3 <= 0x3F)
        {
          sub_1A3F8C454(319, &qword_1EB124868, MEMORY[0x1E69C2320], MEMORY[0x1E697DCC0]);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1A3F88488()
{
  if (!qword_1EB123B58)
  {
    sub_1A3F8A7EC(255, &qword_1EB1284E0, MEMORY[0x1E6981840], MEMORY[0x1E697E048], MEMORY[0x1E697E830]);
    v0 = sub_1A524DF24();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB123B58);
    }
  }
}

uint64_t sub_1A3F8853C@<X0>(uint64_t (*a1)(void, __n128)@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t a4@<X8>)
{
  v8 = v4;
  v10 = sub_1A5249234();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1(0, v12);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v21 - v16;
  sub_1A3F895B4(v8, &v21 - v16, a2);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v18 = a3(0);
    return (*(*(v18 - 8) + 32))(a4, v17, v18);
  }

  else
  {
    sub_1A524D254();
    v20 = sub_1A524A014();
    sub_1A5246DF4();

    sub_1A5249224();
    swift_getAtKeyPath();

    return (*(v11 + 8))(v14, v10);
  }
}

uint64_t sub_1A3F8876C@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v5 = *(v2 + 32);
  v6 = *(type metadata accessor for LemonadeSectionedStackedFeed() - 8);
  v7 = (v2 + ((*(v6 + 80) + 40) & ~*(v6 + 80)));

  return sub_1A3F7B3F0(a1, v7, v5, a2);
}

uint64_t objectdestroy_43Tm()
{
  v1 = type metadata accessor for LemonadeSectionedStackedFeed();
  v2 = v0 + ((*(*(v1 - 8) + 80) + 40) & ~*(*(v1 - 8) + 80));

  sub_1A3D35A84(*(v2 + 16), *(v2 + 24), *(v2 + 32), *(v2 + 40), *(v2 + 48));
  v3 = *(v1 + 52);
  sub_1A3F88738(0);
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

uint64_t sub_1A3F889B4(uint64_t a1, uint64_t a2)
{
  v4 = *(type metadata accessor for LemonadeSectionedStackedFeed() - 8);
  v5 = v2 + ((*(v4 + 80) + 40) & ~*(v4 + 80));

  return sub_1A3F7B940(a2, v5);
}

uint64_t sub_1A3F88A54()
{
  v1 = *(type metadata accessor for LemonadeSectionedStackedFeed() - 8);
  v2 = v0 + ((*(v1 + 80) + 40) & ~*(v1 + 80));

  return sub_1A3F7BB4C(v2);
}

void sub_1A3F88B18()
{
  if (!qword_1EB12F400)
  {
    sub_1A3F88B78();
    v0 = sub_1A5248804();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB12F400);
    }
  }
}

void sub_1A3F88B78()
{
  if (!qword_1EB12F408)
  {
    sub_1A5242F44();
    sub_1A3F87E74(&qword_1EB12F410, MEMORY[0x1E69C2310]);
    v0 = type metadata accessor for LemonadeSegmentedControl();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB12F408);
    }
  }
}

unint64_t sub_1A3F88C24()
{
  result = qword_1EB12F418;
  if (!qword_1EB12F418)
  {
    sub_1A3F88B18();
    sub_1A3F87E74(&qword_1EB12F420, sub_1A3F88B78);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12F418);
  }

  return result;
}

uint64_t sub_1A3F88CE0()
{
  type metadata accessor for LemonadeSectionedTabbedFeed();
  sub_1A3F7F430();
  swift_getAssociatedTypeWitness();
  sub_1A5248804();
  sub_1A524DF24();
  swift_getAssociatedTypeWitness();
  v0 = MEMORY[0x1E69E69B8];
  sub_1A3F880A8(255, &qword_1EB1220A0, &qword_1EB126538, MEMORY[0x1E69E69B8], MEMORY[0x1E6980A08]);
  sub_1A5248804();
  swift_getAssociatedConformanceWitness();
  sub_1A3F8AB08(&qword_1EB1220A8, &qword_1EB1220A0, &qword_1EB126538, v0);
  swift_getWitnessTable();
  sub_1A3D5F9DC();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  sub_1A524DF24();
  swift_getTupleTypeMetadata2();
  sub_1A524BE24();
  swift_getWitnessTable();
  sub_1A524B894();
  swift_getWitnessTable();
  return sub_1A524A624();
}

uint64_t sub_1A3F88FF0()
{
  type metadata accessor for LemonadeSectionedTabbedFeed();
  sub_1A3F7F430();
  swift_getAssociatedTypeWitness();
  sub_1A5248804();
  sub_1A524DF24();
  swift_getAssociatedTypeWitness();
  v0 = MEMORY[0x1E69E69B8];
  sub_1A3F880A8(255, &qword_1EB1220A0, &qword_1EB126538, MEMORY[0x1E69E69B8], MEMORY[0x1E6980A08]);
  sub_1A5248804();
  swift_getAssociatedConformanceWitness();
  sub_1A3F8AB08(&qword_1EB1220A8, &qword_1EB1220A0, &qword_1EB126538, v0);
  swift_getWitnessTable();
  sub_1A3D5F9DC();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  sub_1A524DF24();
  swift_getTupleTypeMetadata2();
  sub_1A524BE24();
  swift_getWitnessTable();
  sub_1A524B894();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  sub_1A3F88B18();
  type metadata accessor for LemonadeSectionedFeedTabBar();
  sub_1A5249754();
  sub_1A5249754();
  sub_1A5248804();
  swift_getOpaqueTypeConformance2();
  sub_1A3F88C24();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return sub_1A524A544();
}

uint64_t sub_1A3F894D8(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

uint64_t sub_1A3F894EC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1A3F8954C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A3F895B4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_1A3F896C4()
{
  v1 = *(v0 + 32);

  sub_1A3F81CFC(v2, v1);
}

uint64_t sub_1A3F89710(uint64_t a1)
{
  sub_1A3F8C838(0, &qword_1EB126538, MEMORY[0x1E69E69B8], MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1A3F89790(uint64_t a1, uint64_t a2)
{
  sub_1A3F8C838(0, &qword_1EB126538, MEMORY[0x1E69E69B8], MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroy_9Tm_0()
{
  v1 = *(v0 + 16);
  v2 = (type metadata accessor for LemonadeSectionedFeedView() - 8);
  v3 = v0 + ((*(*v2 + 80) + 40) & ~*(*v2 + 80));
  (*(*(v1 - 8) + 8))(v3, v1);

  v4 = v3 + v2[14];
  type metadata accessor for LemonadeSectionedFeedViewModel();
  v5 = sub_1A524BD74();
  (*(*(v5 - 8) + 8))(v4, v5);
  sub_1A524BD84();

  v6 = v3 + v2[16];
  sub_1A3D35A84(*v6, *(v6 + 8), *(v6 + 16), *(v6 + 24), *(v6 + 32));

  sub_1A3F1B4C4(*(v3 + v2[18]), *(v3 + v2[18] + 8), *(v3 + v2[18] + 9));

  return swift_deallocObject();
}

uint64_t sub_1A3F899D4@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v5 = v2[2];
  v6 = v2[3];
  v7 = v2[4];
  v8 = *(type metadata accessor for LemonadeSectionedFeedView() - 8);
  v9 = v2 + ((*(v8 + 80) + 40) & ~*(v8 + 80));

  return sub_1A3F786D8(a1, v9, v5, v6, v7, a2);
}

void sub_1A3F89A88()
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  if (v0 <= 0x3F)
  {
    type metadata accessor for LemonadeNavigationContext(319);
    if (v1 <= 0x3F)
    {
      type metadata accessor for LemonadeSectionedFeedViewModel();
      if (v2 <= 0x3F)
      {
        sub_1A3F8C838(319, &qword_1EB124800, &type metadata for LemonadeStackSpecs, MEMORY[0x1E697DCC0]);
        if (v3 <= 0x3F)
        {
          sub_1A3F8C838(319, &unk_1EB1247A0, &type metadata for LemonadeHorizontalSizeClass, MEMORY[0x1E697DCC0]);
          if (v4 <= 0x3F)
          {
            sub_1A3F8C454(319, &qword_1EB12F438, MEMORY[0x1E69C2998], MEMORY[0x1E697DCC0]);
            if (v5 <= 0x3F)
            {
              sub_1A3F8C838(319, &qword_1EB1274B0, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);
              if (v6 <= 0x3F)
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

uint64_t sub_1A3F89C9C(_DWORD *a1, unsigned int a2)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(sub_1A52440D4() - 8);
  v9 = 8;
  if (*(v8 + 64) > 8uLL)
  {
    v9 = *(v8 + 64);
  }

  v10 = *(v5 + 64);
  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_30;
  }

  v11 = *(v8 + 80) & 0xF8 | 7;
  v12 = ((v9 + ((v11 + ((((((v10 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 55) & 0xFFFFFFFFFFFFFFF8) + 9) & ~v11) + 8) & 0xFFFFFFFFFFFFFFF8) + 16;
  v13 = v12 & 0xFFFFFFF8;
  if ((v12 & 0xFFFFFFF8) != 0)
  {
    v14 = 2;
  }

  else
  {
    v14 = a2 - v7 + 1;
  }

  if (v14 >= 0x10000)
  {
    v15 = 4;
  }

  else
  {
    v15 = 2;
  }

  if (v14 < 0x100)
  {
    v15 = 1;
  }

  if (v14 >= 2)
  {
    v16 = v15;
  }

  else
  {
    v16 = 0;
  }

  if (v16 > 1)
  {
    if (v16 == 2)
    {
      v17 = *(a1 + v12);
      if (!v17)
      {
        goto LABEL_30;
      }
    }

    else
    {
      v17 = *(a1 + v12);
      if (!v17)
      {
        goto LABEL_30;
      }
    }
  }

  else if (!v16 || (v17 = *(a1 + v12)) == 0)
  {
LABEL_30:
    if (v6 < 0x7FFFFFFF)
    {
      v21 = *((a1 + v10 + 7) & 0xFFFFFFFFFFFFFFF8);
      if (v21 >= 0xFFFFFFFF)
      {
        LODWORD(v21) = -1;
      }

      return (v21 + 1);
    }

    else
    {
      v20 = *(v5 + 48);

      return v20(a1, v6, AssociatedTypeWitness);
    }
  }

  v19 = v17 - 1;
  if (v13)
  {
    v19 = 0;
    LODWORD(v13) = *a1;
  }

  return v7 + (v13 | v19) + 1;
}

void sub_1A3F89F40(_DWORD *a1, uint64_t a2, unsigned int a3)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  v23 = v7;
  v8 = *(v7 + 84);
  if (v8 <= 0x7FFFFFFF)
  {
    v9 = 0x7FFFFFFF;
  }

  else
  {
    v9 = *(v7 + 84);
  }

  v10 = *(sub_1A52440D4() - 8);
  v11 = 8;
  if (*(v10 + 64) > 8uLL)
  {
    v11 = *(v10 + 64);
  }

  v12 = *(v7 + 64);
  v13 = *(v10 + 80) & 0xF8 | 7;
  v14 = ((v11 + ((v13 + ((((((v12 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 55) & 0xFFFFFFFFFFFFFFF8) + 9) & ~v13) + 8) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v9 >= a3)
  {
    v17 = 0;
    v18 = a2 - v9;
    if (a2 <= v9)
    {
      goto LABEL_19;
    }
  }

  else
  {
    if (((v11 + ((v13 + ((((((v12 + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 55) & 0xFFFFFFF8) + 9) & ~v13) + 8) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v15 = a3 - v9 + 1;
    }

    else
    {
      v15 = 2;
    }

    if (v15 >= 0x10000)
    {
      v16 = 4;
    }

    else
    {
      v16 = 2;
    }

    if (v15 < 0x100)
    {
      v16 = 1;
    }

    if (v15 >= 2)
    {
      v17 = v16;
    }

    else
    {
      v17 = 0;
    }

    v18 = a2 - v9;
    if (a2 <= v9)
    {
LABEL_19:
      if (v17 > 1)
      {
        if (v17 != 2)
        {
          *(a1 + v14) = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_35;
        }

        *(a1 + v14) = 0;
      }

      else if (v17)
      {
        *(a1 + v14) = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_35;
      }

      if (!a2)
      {
        return;
      }

LABEL_35:
      if (v8 < 0x7FFFFFFF)
      {
        v21 = ((a1 + v12 + 7) & 0xFFFFFFFFFFFFFFF8);
        if ((a2 & 0x80000000) != 0)
        {
          v22 = a2 & 0x7FFFFFFF;
        }

        else
        {
          v22 = (a2 - 1);
        }

        *v21 = v22;
      }

      else
      {
        v20 = *(v23 + 56);

        v20(a1, a2, v8, AssociatedTypeWitness);
      }

      return;
    }
  }

  if (v14)
  {
    v19 = 1;
  }

  else
  {
    v19 = v18;
  }

  if (v14)
  {
    bzero(a1, v14);
    *a1 = ~v9 + a2;
  }

  if (v17 > 1)
  {
    if (v17 == 2)
    {
      *(a1 + v14) = v19;
    }

    else
    {
      *(a1 + v14) = v19;
    }
  }

  else if (v17)
  {
    *(a1 + v14) = v19;
  }
}

uint64_t sub_1A3F8A224()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 __swift_memcpy96_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = result;
  *(a1 + 48) = v4;
  return result;
}

uint64_t sub_1A3F8A288(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 96))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1A3F8A2D0(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

void sub_1A3F8A394()
{
  if (!qword_1EB12F440)
  {
    sub_1A3F8A464();
    sub_1A3F87E74(&qword_1EB12F478, sub_1A3F8A464);
    sub_1A3D5F9DC();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB12F440);
    }
  }
}

void sub_1A3F8A464()
{
  if (!qword_1EB12F448)
  {
    sub_1A3F8A528(255);
    sub_1A3F8A8C0(&qword_1EB12F468, sub_1A3F8A528, sub_1A3F8A930);
    v0 = sub_1A52423F4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB12F448);
    }
  }
}

void sub_1A3F8A564()
{
  if (!qword_1EB12F460)
  {
    sub_1A3F8A668();
    sub_1A5243474();
    sub_1A3F87E74(&qword_1EB121A80, sub_1A3F8A668);
    sub_1A3F87E74(&qword_1EB124D90, MEMORY[0x1E69C24C8]);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB12F460);
    }
  }
}

void sub_1A3F8A668()
{
  if (!qword_1EB121A78)
  {
    sub_1A3F8A6FC();
    sub_1A3F87E74(&qword_1EB121A20, sub_1A3F8A6FC);
    v0 = sub_1A524B764();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB121A78);
    }
  }
}

void sub_1A3F8A6FC()
{
  if (!qword_1EB121A18)
  {
    sub_1A3F8A760();
    sub_1A3F8A840();
    v0 = sub_1A524B784();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB121A18);
    }
  }
}

void sub_1A3F8A760()
{
  if (!qword_1EB124028)
  {
    sub_1A3F8A7EC(255, &qword_1EB122E00, MEMORY[0x1E69E6370], MEMORY[0x1E69E6388], MEMORY[0x1E697F540]);
    v0 = sub_1A5248804();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB124028);
    }
  }
}

void sub_1A3F8A7EC(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
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

unint64_t sub_1A3F8A840()
{
  result = qword_1EB124030;
  if (!qword_1EB124030)
  {
    sub_1A3F8A760();
    sub_1A3E734D8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB124030);
  }

  return result;
}

uint64_t sub_1A3F8A8C0(unint64_t *a1, void (*a2)(uint64_t), void (*a3)(void))
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

unint64_t sub_1A3F8A930()
{
  result = qword_1EB12F470;
  if (!qword_1EB12F470)
  {
    sub_1A3F8B570(255, &qword_1EB12F458, MEMORY[0x1E697F960]);
    sub_1A3F8AA84();
    sub_1A3F8A668();
    sub_1A5243474();
    sub_1A3F87E74(&qword_1EB121A80, sub_1A3F8A668);
    sub_1A3F87E74(&qword_1EB124D90, MEMORY[0x1E69C24C8]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12F470);
  }

  return result;
}

unint64_t sub_1A3F8AA84()
{
  result = qword_1EB129718;
  if (!qword_1EB129718)
  {
    sub_1A3F8A7EC(255, &qword_1EB129710, MEMORY[0x1E6981148], MEMORY[0x1E6981138], type metadata accessor for LemonadeDetailsNavigationButton);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB129718);
  }

  return result;
}

uint64_t sub_1A3F8AB08(unint64_t *a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_1A3F880A8(255, a2, a3, a4, MEMORY[0x1E6980A08]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1A3F8AB78@<X0>(uint64_t a1@<X8>)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v6 = *(swift_getAssociatedTypeWitness() - 8);
  v7 = (*(v6 + 80) + 40) & ~*(v6 + 80);
  v8 = *(v6 + 64);
  v9 = *(type metadata accessor for LemonadeSectionedStackedFeed.SectionView() - 8);
  v10 = v1 + ((v7 + v8 + *(v9 + 80)) & ~*(v9 + 80));

  return sub_1A3F7D828(v1 + v7, v10, v3, v4, v5, a1);
}

uint64_t sub_1A3F8AD2C@<X0>(char *a1@<X8>)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  swift_getAssociatedTypeWitness();
  v6 = MEMORY[0x1E6980A08];
  sub_1A3F880A8(255, &qword_1EB127790, &qword_1EB126D60, MEMORY[0x1E69E6530], MEMORY[0x1E6980A08]);
  sub_1A5248804();
  sub_1A3F880A8(255, &qword_1EB1220A0, &qword_1EB126538, MEMORY[0x1E69E69B8], v6);
  v7 = *(sub_1A5248804() - 8);
  v8 = v1 + ((*(v7 + 80) + 40) & ~*(v7 + 80));

  return sub_1A3F7EBF0(v8, v3, v4, v5, a1);
}

uint64_t sub_1A3F8AE64()
{
  sub_1A524B424();
  sub_1A3F8A394();
  swift_getAssociatedTypeWitness();
  v0 = MEMORY[0x1E69E6530];
  v1 = MEMORY[0x1E6980A08];
  sub_1A3F880A8(255, &qword_1EB127790, &qword_1EB126D60, MEMORY[0x1E69E6530], MEMORY[0x1E6980A08]);
  sub_1A5248804();
  sub_1A3F880A8(255, &qword_1EB1220A0, &qword_1EB126538, MEMORY[0x1E69E69B8], v1);
  sub_1A5248804();
  sub_1A3E73A2C();
  sub_1A5248804();
  swift_getAssociatedConformanceWitness();
  sub_1A3F8AB08(&qword_1EB1277A0, &qword_1EB127790, &qword_1EB126D60, v0);
  swift_getWitnessTable();
  sub_1A3F8AB08(&qword_1EB1220A8, &qword_1EB1220A0, &qword_1EB126538, MEMORY[0x1E69E69B8]);
  swift_getWitnessTable();
  sub_1A3F87E74(&qword_1EB128040, sub_1A3E73A2C);
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_1A3F8A464();
  sub_1A3F87E74(&qword_1EB12F478, sub_1A3F8A464);
  sub_1A3D5F9DC();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  sub_1A5243DD4();
  swift_getWitnessTable();
  sub_1A524B014();
}

uint64_t sub_1A3F8B1C4()
{
  sub_1A524B464();
  swift_getAssociatedTypeWitness();
  v0 = MEMORY[0x1E69E6530];
  v1 = MEMORY[0x1E6980A08];
  sub_1A3F880A8(255, &qword_1EB127790, &qword_1EB126D60, MEMORY[0x1E69E6530], MEMORY[0x1E6980A08]);
  sub_1A5248804();
  sub_1A3F880A8(255, &qword_1EB1220A0, &qword_1EB126538, MEMORY[0x1E69E69B8], v1);
  sub_1A5248804();
  swift_getAssociatedConformanceWitness();
  sub_1A3F8AB08(&qword_1EB1277A0, &qword_1EB127790, &qword_1EB126D60, v0);
  swift_getWitnessTable();
  sub_1A3F8AB08(&qword_1EB1220A8, &qword_1EB1220A0, &qword_1EB126538, MEMORY[0x1E69E69B8]);
  swift_getWitnessTable();
  sub_1A524B014();
}

uint64_t sub_1A3F8B3A4@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for LemonadeSectionedStackedFeed.SectionView();
  v4 = ((*(*(v3 - 1) + 80) + 40) & ~*(*(v3 - 1) + 80)) + *(*(v3 - 1) + 64);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v5 = *(swift_getAssociatedTypeWitness() - 8);
  return sub_1A3F7DFE4((v1 + ((v4 + *(v5 + 80)) & ~*(v5 + 80))), v3, a1);
}

void sub_1A3F8B570(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    sub_1A3F8A7EC(255, &qword_1EB129710, MEMORY[0x1E6981148], MEMORY[0x1E6981138], type metadata accessor for LemonadeDetailsNavigationButton);
    v7 = v6;
    sub_1A3F8A564();
    v9 = a3(a1, v7, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_1A3F8B60C(uint64_t a1, unint64_t a2)
{
  if (a2 >= 2)
  {
  }

  return result;
}

uint64_t sub_1A3F8B620()
{
  type metadata accessor for LemonadeSectionedStackedFeed.SectionView();
  sub_1A524BD44();
  sub_1A52483D4();
}

__n128 sub_1A3F8B6F0@<Q0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 32);
  v4 = *(v1 + 40);
  v5 = sub_1A5249314();
  v17 = 1;
  sub_1A3F7EFC4(v4, v3, &v12);
  v6 = v13;
  v7 = v14;
  v8 = v15;
  v9 = v16;
  result = v12;
  v11 = v17;
  *a1 = v5;
  *(a1 + 8) = 0;
  *(a1 + 16) = v11;
  *(a1 + 24) = result;
  *(a1 + 40) = v6;
  *(a1 + 48) = v7;
  *(a1 + 56) = v8;
  *(a1 + 64) = v9;
  return result;
}

uint64_t objectdestroy_99Tm()
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v2 = *(AssociatedTypeWitness - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = type metadata accessor for LemonadeSectionedStackedFeed.SectionView();
  v6 = *(*(v5 - 1) + 80);
  (*(v2 + 8))(v0 + v3, AssociatedTypeWitness);
  v7 = v0 + ((v3 + v4 + v6) & ~v6);
  v8 = swift_getAssociatedTypeWitness();
  (*(*(v8 - 8) + 8))(v7, v8);

  v9 = v7 + v5[13];
  sub_1A3D35A84(*v9, *(v9 + 8), *(v9 + 16), *(v9 + 24), *(v9 + 32));
  sub_1A3DD15BC(*(v7 + v5[14]), *(v7 + v5[14] + 8));
  v10 = v5[15];
  sub_1A3F88AE4(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_1A52440D4();
    (*(*(v11 - 8) + 8))(v7 + v10, v11);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1A3F8BB14()
{
  v1 = *(v0 + 32);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  type metadata accessor for LemonadeSectionedStackedFeed.SectionView();
  v3 = *(v1 + 48);

  v3(v4, AssociatedTypeWitness, v1);
}

uint64_t sub_1A3F8BD04(uint64_t a1, uint64_t a2)
{
  sub_1A3F8A7EC(0, &qword_1EB129710, MEMORY[0x1E6981148], MEMORY[0x1E6981138], type metadata accessor for LemonadeDetailsNavigationButton);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A3F8BD94(uint64_t a1)
{
  sub_1A3F8A7EC(0, &qword_1EB129710, MEMORY[0x1E6981148], MEMORY[0x1E6981138], type metadata accessor for LemonadeDetailsNavigationButton);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1A3F8BE1C()
{
  type metadata accessor for LemonadeSectionedStackedFeed.SectionView();
  sub_1A3F8C838(0, &qword_1EB1274B0, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);

  sub_1A524B6A4();
  sub_1A524B6B4();
}

void sub_1A3F8BEF8()
{
  if (!qword_1EB12F488)
  {
    sub_1A3F8BFFC();
    sub_1A5242084();
    sub_1A3F87E74(&qword_1EB12F4F0, sub_1A3F8BFFC);
    sub_1A3F87E74(&qword_1EB12F4F8, MEMORY[0x1E69C1CF8]);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB12F488);
    }
  }
}

void sub_1A3F8BFFC()
{
  if (!qword_1EB12F490)
  {
    sub_1A3F8C0A4(255);
    sub_1A3F8A8C0(&qword_1EB12F4D8, sub_1A3F8C0A4, sub_1A3F8C4B8);
    v0 = sub_1A524B874();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB12F490);
    }
  }
}

void sub_1A3F8C0E0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, void), uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = a4(255, a3, MEMORY[0x1E697F960]);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_1A3F8C15C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    sub_1A3F8C1CC();
    v7 = v6;
    sub_1A3F8C2D0();
    v9 = a3(a1, v7, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_1A3F8C1CC()
{
  if (!qword_1EB12F4B0)
  {
    sub_1A3E429B4();
    sub_1A52438B4();
    sub_1A3F87E74(&qword_1EB1274F0, sub_1A3E429B4);
    sub_1A3F87E74(&qword_1EB12F4B8, MEMORY[0x1E69C26B0]);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB12F4B0);
    }
  }
}

void sub_1A3F8C2D0()
{
  if (!qword_1EB12F4C0)
  {
    sub_1A3F8C3D4();
    sub_1A52438B4();
    sub_1A3F87E74(&qword_1EB12F4D0, sub_1A3F8C3D4);
    sub_1A3F87E74(&qword_1EB12F4B8, MEMORY[0x1E69C26B0]);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB12F4C0);
    }
  }
}

void sub_1A3F8C3D4()
{
  if (!qword_1EB12F4C8)
  {
    sub_1A3EE213C();
    sub_1A3F37498();
    v0 = sub_1A524B624();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB12F4C8);
    }
  }
}

void sub_1A3F8C454(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_1A3F8C4B8()
{
  result = qword_1EB12F4E0;
  if (!qword_1EB12F4E0)
  {
    sub_1A3F8CD04(255, &qword_1EB12F4A0, MEMORY[0x1E697F960]);
    sub_1A3F8C554();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12F4E0);
  }

  return result;
}

unint64_t sub_1A3F8C554()
{
  result = qword_1EB12F4E8;
  if (!qword_1EB12F4E8)
  {
    sub_1A3F8C15C(255, &qword_1EB12F4A8, MEMORY[0x1E697F960]);
    sub_1A3E429B4();
    sub_1A52438B4();
    sub_1A3F87E74(&qword_1EB1274F0, sub_1A3E429B4);
    sub_1A3F87E74(&qword_1EB12F4B8, MEMORY[0x1E69C26B0]);
    swift_getOpaqueTypeConformance2();
    sub_1A3F8C3D4();
    sub_1A3F87E74(&qword_1EB12F4D0, sub_1A3F8C3D4);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12F4E8);
  }

  return result;
}

void sub_1A3F8C700()
{
  if (!qword_1EB1245E0)
  {
    sub_1A524B984();
    sub_1A3F87E74(&qword_1EB127310, MEMORY[0x1E6981998]);
    v0 = sub_1A5247FC4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB1245E0);
    }
  }
}

void sub_1A3F8C838(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t objectdestroy_122Tm()
{

  sub_1A3D35A84(*(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80));

  return swift_deallocObject();
}

uint64_t sub_1A3F8C980@<X0>(_BYTE *a1@<X8>)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v3 = *(swift_getAssociatedTypeWitness() - 8);
  result = (*(**(v1 + 56) + 360))(v1 + ((*(v3 + 80) + 152) & ~*(v3 + 80)));
  *a1 = result & 1;
  return result;
}

uint64_t objectdestroy_131Tm()
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v2 = *(AssociatedTypeWitness - 8);
  v3 = (*(v2 + 80) + 152) & ~*(v2 + 80);
  swift_unknownObjectRelease();

  sub_1A3D35A84(*(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88), *(v0 + 96));

  (*(v2 + 8))(v0 + v3, AssociatedTypeWitness);

  return swift_deallocObject();
}

uint64_t sub_1A3F8CBE8(_BYTE *a1)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  result = AssociatedTypeWitness - 8;
  v5 = v6;
  if (*a1 == 1)
  {
    return (*(**(v1 + 56) + 368))(v1 + ((*(v5 + 80) + 152) & ~*(v5 + 80)));
  }

  return result;
}

void sub_1A3F8CD04(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, void))
{
  if (!*a2)
  {
    sub_1A3F8C15C(255, &qword_1EB12F4A8, MEMORY[0x1E697F960]);
    v7 = a3(a1, v6, MEMORY[0x1E6981148]);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_1A3F8CD88@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 32);
  v4 = *(v3 + 56);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4(AssociatedTypeWitness, v3);
  sub_1A3D5F9DC();
  result = sub_1A524A464();
  *a1 = result;
  *(a1 + 8) = v7;
  *(a1 + 16) = v8 & 1;
  *(a1 + 24) = v9;
  return result;
}

uint64_t sub_1A3F8CF90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(char *))
{
  v8 = a5(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v13 - v9;
  (*(v11 + 16))(&v13 - v9, a1);
  return a6(v10);
}

uint64_t PhotoKitItemListMetadata.hashValue.getter()
{
  v1 = *v0;
  sub_1A524EC94();
  MEMORY[0x1A590A010](v1);
  return sub_1A524ECE4();
}

id sub_1A3F8D0F4(void *a1)
{
  v1 = [a1 fetchedObjects];
  if (v1)
  {
    v2 = v1;
    sub_1A524CA34();

    MEMORY[0x1EEE9AC00](v3);
    sub_1A524CB74();
    swift_getWitnessTable();
    sub_1A524E504();
    sub_1A524E614();

    v4 = [a1 photoLibrary];
    v5 = [a1 fetchType];
    if (v5)
    {
      v6 = v5;
      sub_1A524C674();
      v8 = v7;
    }

    else
    {
      v8 = 0;
    }

    v10 = [a1 fetchPropertySets];
    if (v10)
    {
      v11 = v10;
      v12 = sub_1A524CF44();
    }

    else
    {
      v12 = 0;
    }

    v13 = sub_1A524CA14();

    if (v8)
    {
      v14 = sub_1A524C634();

      if (v12)
      {
LABEL_13:
        v15 = sub_1A524CF34();

LABEL_16:
        [objc_allocWithZone(MEMORY[0x1E69788E0]) initWithObjects:v13 photoLibrary:v4 fetchType:v14 fetchPropertySets:v15 identifier:0 registerIfNeeded:1];

        objc_opt_self();
        return swift_dynamicCastObjCClassUnconditional();
      }
    }

    else
    {
      v14 = 0;
      if (v12)
      {
        goto LABEL_13;
      }
    }

    v15 = 0;
    goto LABEL_16;
  }

  return a1;
}

uint64_t sub_1A3F8D3B4(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = (result + 32);
  v4 = (a2 + 32);
  while (v2)
  {
    v6 = *v3++;
    v5 = v6;
    v7 = *v4++;
    result = v5 == v7;
    if (v5 != v7 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

void *PhotoKitItemListImplementation.container.getter()
{
  v1 = *(v0 + 16);
  v2 = v1;
  return v1;
}

void *PhotoKitItemListImplementation.itemsFetchResult.getter()
{
  v0 = sub_1A3F91CE8();
  v1 = v0;
  return v0;
}

void *PhotoKitItemListImplementation.unfilteredSortedFetchResult.getter()
{
  v1 = *(v0 + 32);
  v2 = v1;
  return v1;
}

uint64_t PhotoKitItemListImplementation.options.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 88);
  v4 = *(v1 + 120);
  v10 = *(v1 + 104);
  v3 = v10;
  v11 = v4;
  v12 = *(v1 + 136);
  v6 = *(v1 + 72);
  v9[0] = *(v1 + 56);
  v5 = v9[0];
  v9[1] = v6;
  v9[2] = v2;
  *(a1 + 80) = v12;
  *(a1 + 32) = v2;
  *(a1 + 48) = v3;
  *(a1 + 64) = v4;
  *a1 = v5;
  *(a1 + 16) = v6;
  return sub_1A3C6DB58(v9, v8);
}

uint64_t PhotoKitItemListImplementation.placeholderObject.getter()
{
  sub_1A3F91CF0();
}

BOOL PhotoKitItemListImplementation.hasMetadataForAll.getter()
{
  v1 = *(v0 + qword_1EB1EB210);
  v2 = *(v1 + 16);
  v3 = (v1 + 32);
  do
  {
    v4 = v2;
    if (!v2)
    {
      break;
    }

    if (!*(*(v0 + 152) + 16))
    {
      break;
    }

    v5 = *v3++;
    sub_1A3CAB9BC(v5);
    v2 = v4 - 1;
  }

  while ((v6 & 1) != 0);
  return v4 == 0;
}

void PhotoKitItemListImplementation.replacing(sorter:)(uint64_t a1)
{
  v3 = a1;
  v2 = *v1;
  sub_1A5245EC4();
}

id PhotoKitItemListImplementation.representedValue.getter@<X0>(void *a1@<X8>)
{
  v3 = *(v1 + 16);
  if (v3)
  {
    v6 = *(v1 + 16);
    v3 = sub_1A3C52C70(0, &qword_1EB1265D0);
    v4 = v6;
  }

  else
  {
    v4 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }

  *a1 = v4;
  a1[3] = v3;

  return v4;
}

void PhotoKitItemListImplementation.itemIdentifiers.getter()
{
  sub_1A3C722F8();

  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

void PhotoKitItemListImplementation.item(at:)(uint64_t a1)
{
  v3 = *(v1 + 24);
  if (v3)
  {
    v4 = v1;
    v5 = [v3 objectAtIndex_];
    v6 = *(v1 + 152);
    v7 = v5;
    v8 = PHObject.itemID.getter();

    if (*(v6 + 16))
    {
      sub_1A3CAB9BC(v8);
      if (v9)
      {
        _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
      }
    }

    v10 = sub_1A3CA36F4(MEMORY[0x1E69E7CC0]);
    type metadata accessor for PhotoKitItem();
    v11 = *(v4 + 104);
    v19[2] = *(v4 + 88);
    v19[3] = v11;
    v19[4] = *(v4 + 120);
    v20 = *(v4 + 136);
    v12 = *(v4 + 72);
    v19[0] = *(v4 + 56);
    v19[1] = v12;
    v13 = *(v4 + 88);
    v14 = *(v4 + 120);
    v17[3] = *(v4 + 104);
    v17[4] = v14;
    v18 = *(v4 + 136);
    v15 = *(v4 + 72);
    v17[0] = *(v4 + 56);
    v17[1] = v15;
    v17[2] = v13;
    sub_1A3C6DB58(v19, v16);
    PhotoKitItem.__allocating_init(value:options:metadata:)(v7, v17, v10);
  }

  else
  {
    __break(1u);
  }
}

uint64_t PhotoKitItemListImplementation.index(for:)(uint64_t a1)
{
  v3 = *(v1 + qword_1EB17CB20);
  v4 = *(v1 + qword_1EB17CB20 + 8);
  v5 = *(v4 + 16);
  if (v3)
  {
    return sub_1A3F90B8C(a1, v4 + 32, v5, (v3 + 16));
  }

  result = 0;
  if (v5)
  {
    while (*(v4 + 32 + 8 * result) != a1)
    {
      if (v5 == ++result)
      {
        return 0;
      }
    }
  }

  return result;
}

{
  sub_1A3C2F0BC(a1, v6);
  if (swift_dynamicCast())
  {
    return PhotoKitItemListImplementation.index(for:)(v5[0]);
  }

  sub_1A3C2F0BC(a1, v5);
  type metadata accessor for PhotoKitItem();
  if (swift_dynamicCast())
  {
    v3 = PhotoKitItem.id.getter();

    return PhotoKitItemListImplementation.index(for:)(v3);
  }

  sub_1A3C2F0BC(a1, v5);
  sub_1A3C52C70(0, &qword_1EB1265D0);
  if (swift_dynamicCast())
  {
    v3 = PHObject.itemID.getter();

    return PhotoKitItemListImplementation.index(for:)(v3);
  }

  return 0;
}

void PhotoKitItemListImplementation.item(nearest:)(uint64_t a1)
{
  v1 = PhotoKitItemListImplementation.index(nearest:)(a1);
  if ((v2 & 1) == 0)
  {
    PhotoKitItemListImplementation.item(at:)(v1);
  }
}

id PhotoKitItemListImplementation.index(nearest:)(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  sub_1A3C7CE80(0, &qword_1EB12AFE0, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v37 - v6;
  v8 = sub_1A5241144();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v37 - v12;
  v14 = PhotoKitItem.id.getter();
  v15 = PhotoKitItemListImplementation.index(for:)(v14);
  if ((v16 & 1) == 0)
  {
    return v15;
  }

  v17 = v1[3];
  if (!v17)
  {
    return 0;
  }

  v42 = v10;
  v43 = v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = v4;
  v18 = v17;
  v45 = a1;
  v19 = PhotoKitItem.keyAssets.getter();
  v20 = [v19 firstObject];

  if (!v20)
  {
    v46 = v2;
    v26 = *(v2 + 114);
    if (v26 == 2)
    {
    }

    else
    {
      PhotoKitItem.creationDate.getter(v7);
      if ((*(v9 + 48))(v7, 1, v8) != 1)
      {
        v47 = *(v9 + 32);
        v47(v13, v7, v8);
        v27 = v43;
        (*(v9 + 16))(v43, v13, v8);
        v28 = (*(v9 + 80) + 32) & ~*(v9 + 80);
        v29 = swift_allocObject();
        v30 = v46;
        *(v29 + 16) = *(v44 + 80);
        *(v29 + 24) = v30;
        v48 = v29;
        v47((v29 + v28), v27, v8);
        LOBYTE(aBlock) = v26 & 1;
        v55[0] = 0;

        v31 = static PhotoKitItemListManagerOptions.PromisedSortOrder.== infix(_:_:)(&aBlock, v55);
        v39 = v18;
        v40 = v13;
        v38 = 0;
        if (v31)
        {
          v32 = swift_allocObject();
          v33 = v48;
          *(v32 + 16) = sub_1A3F91F54;
          *(v32 + 24) = v33;
          v53 = sub_1A3F923EC;
          v54 = v32;
          aBlock = MEMORY[0x1E69E9820];
          v50 = 1107296256;
          v51 = sub_1A3F8FAAC;
          v52 = &block_descriptor_10_0;
          _Block_copy(&aBlock);

          PXLastIndexInSortedRangePassingTest();
        }

        v34 = swift_allocObject();
        v35 = v48;
        *(v34 + 16) = sub_1A3F91F54;
        *(v34 + 24) = v35;
        v53 = sub_1A3F91FC8;
        v54 = v34;
        aBlock = MEMORY[0x1E69E9820];
        v50 = 1107296256;
        v51 = sub_1A3F8FAAC;
        v52 = &block_descriptor_60;
        _Block_copy(&aBlock);

        PXFirstIndexInSortedRangePassingTest();
      }

      sub_1A3F91EE4(v7, &qword_1EB12AFE0, MEMORY[0x1E6969530]);
    }

    return 0;
  }

  v41 = v9;
  objc_opt_self();
  swift_dynamicCastObjCClassUnconditional();
  v21 = v18;
  v22 = v20;
  v23 = sub_1A45ECB7C(v22);
  v25 = v24;

  if (v25)
  {
    v37[1] = v21;
    v38 = v20;
    v39 = v18;
    v40 = v13;
    v37[2] = v8;
    v46 = v2;
    v47 = v2[19];
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  return v23;
}

uint64_t sub_1A3F8F778(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v21[1] = a3;
  v5 = sub_1A5241144();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3C7CE80(0, &qword_1EB1260A0, MEMORY[0x1E6968130], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v21 - v10;
  v12 = sub_1A5240524();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22[1] = a2;
  v16 = type metadata accessor for PhotoKitItemListImplementation();
  WitnessTable = swift_getWitnessTable();
  MEMORY[0x1A5901810](v22, a1, v16, WitnessTable);
  PhotoKitItem.dateInterval.getter(v11);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {

    sub_1A3F91EE4(v11, &qword_1EB1260A0, MEMORY[0x1E6968130]);
    v18 = 0;
  }

  else
  {
    (*(v13 + 32))(v15, v11, v12);
    sub_1A5240514();
    sub_1A3C49B48(&unk_1EB134140, MEMORY[0x1E6969530]);
    v19 = sub_1A524C534();

    (*(v6 + 8))(v8, v5);
    (*(v13 + 8))(v15, v12);
    v18 = v19 ^ 1;
  }

  return v18 & 1;
}

BOOL sub_1A3F8FFB0(void *a1)
{
  v6 = PHObject.itemID.getter();
  sub_1A3C6D46C(0, &qword_1EB126FE0, MEMORY[0x1E69E5E28]);
  sub_1A524C484();
  if (v7)
  {
    LOBYTE(v6) = 1;
    sub_1A3C52C70(0, &qword_1EB126C40);
    sub_1A3C6C300();
    sub_1A524C484();

    v2 = [v7 count];

    v3 = v2 <= 0;
  }

  else
  {
    v4 = [a1 estimatedAssetCount];
    if (v4 == sub_1A52403B4())
    {
      return 0;
    }

    v3 = [a1 estimatedAssetCount] <= 0;
  }

  return !v3;
}

uint64_t sub_1A3F9012C(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = 0;
  v9 = PHObject.itemID.getter();
  sub_1A3C6D46C(0, &qword_1EB126FE0, MEMORY[0x1E69E5E28]);
  sub_1A524C484();
  if (aBlock[0])
  {
    LOBYTE(v9) = 2;
    sub_1A3C52C70(0, &qword_1EB126C40);
    sub_1A3C6C300();
    sub_1A524C484();

    v5 = swift_allocObject();
    v5[2] = v4;
    v5[3] = a2;
    v5[4] = v2;
    v5[5] = v2;
    aBlock[4] = sub_1A3F922D4;
    aBlock[5] = v5;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1A3F90354;
    aBlock[3] = &block_descriptor_23_2;
    _Block_copy(aBlock);

    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  swift_beginAccess();
  v6 = *(v4 + 16);

  return v6;
}

void sub_1A3F90354(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

uint64_t sub_1A3F90484@<X0>(uint64_t *a1@<X8>)
{
  *a1 = sub_1A3F91CF0();
}

void *sub_1A3F9052C()
{
  v0 = sub_1A3F91CE8();
  v1 = v0;
  return v0;
}

uint64_t sub_1A3F905A4(uint64_t a1)
{
  v2 = v1;
  v6 = v1[1];
  v4 = v1 + 1;
  v5 = v6;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v4 = v6;
  if ((result & 1) == 0)
  {
    result = sub_1A3C7B80C(0, *(v5 + 16) + 1, 1);
    v5 = *v4;
  }

  v9 = *(v5 + 16);
  v8 = *(v5 + 24);
  if (v9 >= v8 >> 1)
  {
    result = sub_1A3C7B80C((v8 > 1), v9 + 1, 1);
    v5 = *v4;
  }

  *(v5 + 16) = v9 + 1;
  *(v5 + 8 * v9 + 32) = a1;
  v2[1] = v5;
  v10 = *v2;
  if (*v2)
  {
    swift_beginAccess();
    if (MEMORY[0x1A5901C00](*(v10 + 16) & 0x3FLL) > v9)
    {
      result = swift_isUniquelyReferenced_native();
      v11 = *v2;
      if ((result & 1) == 0)
      {
        if (!v11)
        {
LABEL_16:
          __break(1u);
          return result;
        }

        v12 = sub_1A52468B4();

        *v2 = v12;
        v11 = v12;
      }

      if (v11)
      {
        return sub_1A5246854();
      }

      __break(1u);
      goto LABEL_16;
    }
  }

  else if (v9 < 0xF)
  {
    return result;
  }

  return sub_1A3F90710();
}

uint64_t sub_1A3F90710()
{
  v1 = *v0;
  if (*v0)
  {
    swift_beginAccess();
    v2 = *(v1 + 24) & 0x3FLL;
  }

  else
  {
    v2 = 0;
  }

  v3 = v0[1];
  v4 = *(v3 + 16);
  if (v2 || v4 >= 0x10)
  {
    v6 = MEMORY[0x1A5901C30](v4);
    if (v2 <= v6)
    {
      v7 = v6;
    }

    else
    {
      v7 = v2;
    }

    v5 = sub_1A3F907B0(v3, v7, 0, v2);
  }

  else
  {
    v5 = 0;
  }

  *v0 = v5;
  return result;
}

uint64_t sub_1A3F907B0(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v6 = *(a1 + 16);
  if (a3)
  {
    v7 = 0;
  }

  else
  {
    v7 = a2;
  }

  v8 = MEMORY[0x1A5901C30](v6);
  result = 0;
  if (v8 <= v7)
  {
    v8 = v7;
  }

  if (v8 <= a4)
  {
    v8 = a4;
  }

  if (v8 >= 5)
  {
    v10 = MEMORY[0x1A5901C40](v8, a4);
    sub_1A3F90830(a1, (v10 + 16));
    return v10;
  }

  return result;
}

void sub_1A3F90880(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  if (a2)
  {
    if ((a2 & 0x8000000000000000) == 0)
    {
      v5 = 0;
      while (1)
      {
        v6 = *a3;
        sub_1A524EC84();
        if (__OFSUB__(1 << v6, 1))
        {
          break;
        }

        if (sub_1A5246834())
        {
          while (1)
          {
            sub_1A5246884();
          }
        }

        sub_1A5246874();
        if (++v5 == a2)
        {
          return;
        }
      }

      __break(1u);
    }

    __break(1u);
  }
}

void sub_1A3F90990(uint64_t a1, int64_t a2, char a3, uint64_t a4)
{
  if ((a3 & 1) == 0)
  {
    v5 = a2;
    goto LABEL_8;
  }

  v4 = *(a4 + 24);
  v5 = v4 >> 1;
  if ((v4 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v5 + 0x4000000000000000 >= 0)
  {
    v5 = v4 & 0xFFFFFFFFFFFFFFFELL;
    if ((v4 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v5 = a2;
    }

LABEL_8:
    if (v5 <= *(a4 + 16))
    {
      v6 = *(a4 + 16);
    }

    else
    {
      v6 = v5;
    }

    if (v6)
    {
      sub_1A3C7CE80(0, &qword_1EB126228, off_1E77210D0, MEMORY[0x1E69E6F90]);
      sub_1A5245EC4();
    }

    sub_1A5245EC4();
  }

  __break(1u);
}

uint64_t sub_1A3F90B8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v6 = *a4;
  result = sub_1A524EC84();
  if (__OFSUB__(1 << v6, 1))
  {
    __break(1u);
  }

  else
  {
    sub_1A5246834();
    result = sub_1A5246864();
    if ((v8 & 1) == 0 && *(a2 + 8 * result) != a1)
    {
      do
      {
        sub_1A5246884();
        result = sub_1A5246864();
      }

      while ((v9 & 1) == 0 && *(a2 + 8 * result) != a1);
    }
  }

  return result;
}

void sub_1A3F90C8C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      v8 = MEMORY[0x1E69E7CC0];
      if (v4 != a3)
      {
LABEL_7:
        memcpy(v8 + 4, (a2 + 8 * a3), 8 * v5);
        return;
      }
    }

    else
    {
      sub_1A3C2E3D0(0, &qword_1EB126208, MEMORY[0x1E69E5FE0], MEMORY[0x1E69E6F90]);
      v8 = swift_allocObject();
      v9 = _swift_stdlib_malloc_size(v8);
      v10 = v9 - 32;
      if (v9 < 32)
      {
        v10 = v9 - 25;
      }

      v8[2] = v5;
      v8[3] = 2 * (v10 >> 3);
      if (v4 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

uint64_t sub_1A3F90D74(uint64_t result, uint64_t a2, uint64_t *a3)
{
  if (!a2)
  {
    return 1;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
    v5 = result;
    for (i = 0; ; ++i)
    {
      v7 = i + 1;
      if (__OFADD__(i, 1))
      {
        break;
      }

      v8 = *a3;
      result = sub_1A524EC84();
      if (__OFSUB__(1 << v8, 1))
      {
        goto LABEL_15;
      }

      sub_1A5246834();
      while (1)
      {
        v9 = sub_1A5246864();
        if (v10)
        {
          break;
        }

        if (*(v5 + 8 * v9) == *(v5 + 8 * i))
        {
          return 0;
        }

        sub_1A5246884();
      }

      result = sub_1A5246874();
      if (v7 == a2)
      {
        return 1;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1A3F90EC4(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_1A3C6D46C(0, &qword_1EB126470, MEMORY[0x1E69E6EC8]);
  v31 = a2;
  result = sub_1A524E774();
  v7 = result;
  if (*(v5 + 16))
  {
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
      v20 = *(*(v5 + 48) + v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((v31 & 1) == 0)
      {
        v22 = v21;
      }

      sub_1A524EC94();
      MEMORY[0x1A590A010](v20);
      result = sub_1A524ECE4();
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
      *(*(v7 + 48) + v15) = v20;
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

    if ((v31 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v30 = 1 << *(v5 + 32);
    v3 = v2;
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

void *sub_1A3F91160()
{
  v1 = v0;
  sub_1A3CAFF98(0, &qword_1EB126458, MEMORY[0x1E69E6EC8]);
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
        v17 = *(*(v2 + 56) + 8 * v16);
        *(*(v4 + 48) + 8 * v16) = *(*(v2 + 48) + 8 * v16);
        *(*(v4 + 56) + 8 * v16) = v17;
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

id sub_1A3F912CC()
{
  v1 = v0;
  sub_1A3C6D46C(0, &qword_1EB126470, MEMORY[0x1E69E6EC8]);
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
        v18 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + v17) = *(*(v2 + 48) + v17);
        *(*(v4 + 56) + 8 * v17) = v18;
        result = v18;
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

uint64_t sub_1A3F91438(uint64_t *a1, uint64_t a2)
{
  v5 = *v2;
  v6 = sub_1A524EC84();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    while (1)
    {
      v10 = *(v5 + 48);
      if (*(v10 + 8 * v8) == a2)
      {
        break;
      }

      v8 = (v8 + 1) & v9;
      if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
    a2 = *(v10 + 8 * v8);
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v13 = *v2;
    sub_1A3F91734(a2, v8, isUniquelyReferenced_nonNull_native);
    *v2 = v13;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_1A3F9151C()
{
  v1 = v0;
  v2 = *v0;
  sub_1A3F9206C();
  result = sub_1A524E3B4();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = (v2 + 56);
    v7 = 1 << *(v2 + 32);
    v24 = v1;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v2 + 48) + 8 * (v13 | (v5 << 6)));
      result = sub_1A524EC84();
      v17 = -1 << *(v4 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v11 + 8 * (v18 >> 6))) == 0)
      {
        v20 = 0;
        v21 = (63 - v17) >> 6;
        while (++v19 != v21 || (v20 & 1) == 0)
        {
          v22 = v19 == v21;
          if (v19 == v21)
          {
            v19 = 0;
          }

          v20 |= v22;
          v23 = *(v11 + 8 * v19);
          if (v23 != -1)
          {
            v12 = __clz(__rbit64(~v23)) + (v19 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v12 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v4 + 48) + 8 * v12) = v16;
      ++*(v4 + 16);
    }

    v14 = v5;
    while (1)
    {
      v5 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v5 >= v10)
      {
        break;
      }

      v15 = v6[v5];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    if (v7 >= 64)
    {
      bzero((v2 + 56), 8 * v10);
    }

    else
    {
      *v6 = -1 << v7;
    }

    v1 = v24;
    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

uint64_t sub_1A3F91734(uint64_t result, unint64_t a2, char a3)
{
  v4 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1A3F9151C();
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      result = sub_1A3F91854();
      a2 = v7;
      goto LABEL_12;
    }

    sub_1A3F91988();
  }

  v8 = *v3;
  result = sub_1A524EC84();
  v9 = -1 << *(v8 + 32);
  a2 = result & ~v9;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v10 = ~v9;
    while (*(*(v8 + 48) + 8 * a2) != v4)
    {
      a2 = (a2 + 1) & v10;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v11 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v11 + 48) + 8 * a2) = v4;
  v12 = *(v11 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (!v13)
  {
    *(v11 + 16) = v14;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_1A524EB74();
  __break(1u);
  return result;
}

void *sub_1A3F91854()
{
  v1 = v0;
  sub_1A3F9206C();
  v2 = *v0;
  v3 = sub_1A524E3A4();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
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

uint64_t sub_1A3F91988()
{
  v1 = v0;
  v2 = *v0;
  sub_1A3F9206C();
  result = sub_1A524E3B4();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = 1 << *(v2 + 32);
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & *(v2 + 56);
    v9 = (v6 + 63) >> 6;
    v10 = result + 56;
    while (v8)
    {
      v12 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_15:
      v15 = *(*(v2 + 48) + 8 * (v12 | (v5 << 6)));
      result = sub_1A524EC84();
      v16 = -1 << *(v4 + 32);
      v17 = result & ~v16;
      v18 = v17 >> 6;
      if (((-1 << v17) & ~*(v10 + 8 * (v17 >> 6))) == 0)
      {
        v19 = 0;
        v20 = (63 - v16) >> 6;
        while (++v18 != v20 || (v19 & 1) == 0)
        {
          v21 = v18 == v20;
          if (v18 == v20)
          {
            v18 = 0;
          }

          v19 |= v21;
          v22 = *(v10 + 8 * v18);
          if (v22 != -1)
          {
            v11 = __clz(__rbit64(~v22)) + (v18 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_26;
      }

      v11 = __clz(__rbit64((-1 << v17) & ~*(v10 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v10 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      *(*(v4 + 48) + 8 * v11) = v15;
      ++*(v4 + 16);
    }

    v13 = v5;
    while (1)
    {
      v5 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v5 >= v9)
      {
        goto LABEL_24;
      }

      v14 = *(v2 + 56 + 8 * v5);
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v8 = (v14 - 1) & v14;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
  }

  else
  {
LABEL_24:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_1A3F91B6C(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = a3 >> 1;
  if (a3 >> 1 == a2)
  {
    return result;
  }

  v5 = a2;
  v6 = result;
  while (v5 < v4)
  {
    v7 = *(v6 + 8 * v5);
    v8 = v3[1];
    v9 = (v8 + 32);
    if (*v3)
    {
      v10 = *(*v3 + 16);
      result = sub_1A524EC84();
      if (__OFSUB__(1 << v10, 1))
      {
        goto LABEL_18;
      }

      sub_1A5246834();
      result = sub_1A5246864();
      if ((v11 & 1) == 0)
      {
        while (v9[result] != v7)
        {
          sub_1A5246884();
          result = sub_1A5246864();
          if (v12)
          {
            goto LABEL_4;
          }
        }

        goto LABEL_5;
      }
    }

    else
    {
      v13 = *(v8 + 16);
      if (v13)
      {
        while (*v9 != v7)
        {
          ++v9;
          if (!--v13)
          {
            goto LABEL_4;
          }
        }

        goto LABEL_5;
      }
    }

LABEL_4:
    result = sub_1A3F905A4(v7);
LABEL_5:
    if (++v5 == v4)
    {
      return result;
    }
  }

  __break(1u);
LABEL_18:
  __break(1u);
  return result;
}

void sub_1A3F91CF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1A3C6D46C(0, &qword_1EB126470, MEMORY[0x1E69E6EC8]);
  v5 = sub_1A524E764();
  v6 = v5;
  v7 = 0;
  v29 = a1;
  v10 = *(a1 + 64);
  v9 = a1 + 64;
  v8 = v10;
  v11 = 1 << *(v9 - 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & v8;
  v14 = (v11 + 63) >> 6;
  v28 = v5 + 64;
  if ((v12 & v8) != 0)
  {
    while (1)
    {
      v15 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_10:
      v18 = v15 | (v7 << 6);
      v30 = *(*(v29 + 48) + v18);
      v19 = *(*(v29 + 56) + 8 * v18);
      sub_1A3C52C70(0, &qword_1EB1265D0);
      v20 = v19;
      v21 = sub_1A524DC44();
      if (v21)
      {
        v22 = v21;
        sub_1A3F91438(&v31, a4);
        v23 = [v22 fetchResultAfterChanges];

        v20 = v23;
      }

      *(v28 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      *(v6[6] + v18) = v30;
      *(v6[7] + 8 * v18) = v20;
      v24 = v6[2];
      v25 = __OFADD__(v24, 1);
      v26 = v24 + 1;
      if (v25)
      {
        break;
      }

      v6[2] = v26;
      if (!v13)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v7 >= v14)
      {
        return;
      }

      v17 = *(v9 + 8 * v7);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v13 = (v17 - 1) & v17;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  __break(1u);
}

uint64_t sub_1A3F91EE4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1A3C7CE80(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1A3F91F54(uint64_t a1)
{
  v3 = *(sub_1A5241144() - 8);
  v4 = *(v1 + 24);
  v5 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));

  return sub_1A3F8F778(a1, v4, v5);
}

uint64_t sub_1A3F91FF4(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

void sub_1A3F9206C()
{
  if (!qword_1EB126528)
  {
    v0 = sub_1A524E3E4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB126528);
    }
  }
}

id sub_1A3F920C4(void **a1)
{
  v2 = *(v1 + 24);
  v3 = *a1;
  objc_opt_self();
  v4 = swift_dynamicCastObjCClass();
  if (!v4)
  {
    objc_opt_self();
    v19 = swift_dynamicCastObjCClass();
    if (!v19)
    {
      v24 = 0;
      return (v24 & 1);
    }

    v20 = v19;
    v21 = v3;
    v22 = sub_1A3F9012C(v20, v2);
    goto LABEL_22;
  }

  v5 = v4;
  v6 = v3;
  if (![v5 px_isAllLibraryDuplicatesSmartAlbum])
  {
    goto LABEL_5;
  }

  result = [v5 photoLibrary];
  if (result)
  {
    v8 = result;
    v9 = [result isInitialDuplicateDetectorProcessingCompleted];

    if ((v9 & 1) == 0)
    {
      goto LABEL_25;
    }

LABEL_5:
    v10 = [v5 transientIdentifier];
    if (v10)
    {
      v11 = v10;
      v12 = sub_1A524C674();
      v14 = v13;

      v15 = sub_1A524C674();
      if (v14)
      {
        if (v12 != v15 || v14 != v16)
        {
          v18 = sub_1A524EAB4();

          if (v18)
          {
            goto LABEL_25;
          }

          goto LABEL_17;
        }

LABEL_25:

LABEL_26:
        v24 = 1;
        goto LABEL_27;
      }
    }

    else
    {
      sub_1A524C674();
    }

LABEL_17:
    if ([v5 px_isPrivacySensitiveAlbum])
    {
      v23 = [v5 px_isRecoveredSmartAlbum];

      if (!v23)
      {
        goto LABEL_26;
      }
    }

    else
    {
    }

    v22 = sub_1A3F8FFB0(v5);
LABEL_22:
    v24 = v22;
LABEL_27:

    return (v24 & 1);
  }

  __break(1u);
  return result;
}

uint64_t sub_1A3F922D4(void *a1, uint64_t a2, _BYTE *a3)
{
  v7 = *(v3 + 16);
  v6 = *(v3 + 24);
  if ([a1 canContainCollections] && (objc_opt_self(), (v8 = swift_dynamicCastObjCClass()) != 0))
  {
    v9 = v8;
    v10 = a1;
    v11 = sub_1A3F9012C(v9, v6);
  }

  else
  {
    objc_opt_self();
    v12 = swift_dynamicCastObjCClass();
    if (!v12)
    {
      goto LABEL_7;
    }

    v13 = v12;
    v10 = a1;
    v11 = sub_1A3F8FFB0(v13);
  }

  v14 = v11;

  swift_beginAccess();
  *(v7 + 16) = v14 & 1;
LABEL_7:
  result = swift_beginAccess();
  if (*(v7 + 16) == 1)
  {
    *a3 = 1;
  }

  return result;
}

uint64_t sub_1A3F92410(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LemonadeFeedBodyStyle(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A3F92494(uint64_t a1)
{
  sub_1A524EC94();
  sub_1A524DC04();
  sub_1A5244EE4();
  sub_1A3F933F0(&qword_1EB128FA0, MEMORY[0x1E69C12C8]);
  sub_1A524C4B4();
  MEMORY[0x1A590A010](*(v1 + *(a1 + 24)));
  return sub_1A524ECE4();
}

uint64_t sub_1A3F92550(uint64_t a1, uint64_t a2)
{
  sub_1A524DC04();
  sub_1A5244EE4();
  sub_1A3F933F0(&qword_1EB128FA0, MEMORY[0x1E69C12C8]);
  sub_1A524C4B4();
  return MEMORY[0x1A590A010](*(v2 + *(a2 + 24)));
}

uint64_t sub_1A3F925F8(uint64_t a1, uint64_t a2)
{
  sub_1A524EC94();
  sub_1A524DC04();
  sub_1A5244EE4();
  sub_1A3F933F0(&qword_1EB128FA0, MEMORY[0x1E69C12C8]);
  sub_1A524C4B4();
  MEMORY[0x1A590A010](*(v2 + *(a2 + 24)));
  return sub_1A524ECE4();
}

uint64_t sub_1A3F926B0()
{
  sub_1A3C52C70(0, &qword_1EB12B160);
  if (sub_1A524DBF4())
  {
    sub_1A5244EE4();
    sub_1A3F933F0(&qword_1EB128F98, MEMORY[0x1E69C12C8]);
    sub_1A524C9C4();
    sub_1A524C9C4();
    if (v4 == v2 && v5 == v3)
    {
      v0 = 1;
    }

    else
    {
      v0 = sub_1A524EAB4();
    }
  }

  else
  {
    v0 = 0;
  }

  return v0 & 1;
}

uint64_t sub_1A3F927DC(uint64_t a1)
{
  v2 = type metadata accessor for LemonadeMemoriesFeature.LemonadeMemoriesCell(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1A3F92838(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for LemonadePhotosPagingMemoryGridConfiguration(0);
  v6 = MEMORY[0x1EEE9AC00](v5);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (MEMORY[0x1A590D320](v6))
  {

    LemonadePhotosPagingMemoryGridConfiguration.init(singleItem:photoLibraryContext:)(a1, a2);
  }

  v9 = type metadata accessor for LemonadeGenerativeMemoriesFeedProvider(0);
  v10 = sub_1A3F933F0(&qword_1EB125120, type metadata accessor for LemonadeGenerativeMemoriesFeedProvider);
  sub_1A3C66934(v2, v9, v10);

  LemonadePhotosPagingMemoryGridConfiguration.init(itemListManager:initialItem:selectionCoordinator:)(v8);
}

uint64_t sub_1A3F92A60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  *a5 = a1;
  v9 = type metadata accessor for LemonadeGenerativeMemoriesFeedProvider(0);
  v10 = v9[5];
  v11 = sub_1A5244EE4();
  (*(*(v11 - 8) + 32))(&a5[v10], a2, v11);
  *&a5[v9[6]] = a3;
  result = sub_1A3F92B28(a4, &a5[v9[7]], type metadata accessor for LemonadeFeedBodyStyle);
  v13 = &a5[v9[8]];
  *v13 = 0;
  *(v13 + 1) = 0xE000000000000000;
  return result;
}

uint64_t sub_1A3F92B28(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A3F92BD8@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v5 = *v2;
  v6 = *(a1 + 20);
  v7 = type metadata accessor for LemonadeGenerativeMemoriesFeedProvider.GenerativeMemoriesListManagerOptions(0);
  v8 = *(v7 + 20);
  v9 = sub_1A5244EE4();
  (*(*(v9 - 8) + 16))(&a2[v8], v2 + v6, v9);
  v10 = *(v2 + *(a1 + 24));
  *a2 = v5;
  *&a2[*(v7 + 24)] = v10;
  v11 = v5;
}

uint64_t sub_1A3F92C94()
{
  type metadata accessor for LemonadeGenerativeMemoriesFeedProvider.GenerativeMemoriesListManagerOptions(0);
}

uint64_t sub_1A3F92CD4(uint64_t a1)
{
  v2 = type metadata accessor for LemonadeMemoriesFeature.LemonadeMemoriesCell(0);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);

  v5 = sub_1A3C30368();
  sub_1A459D720(a1, 0, 1, v5 & 1, 2, v4);
  sub_1A3F933F0(&qword_1EB12A0C0, type metadata accessor for LemonadeMemoriesFeature.LemonadeMemoriesCell);
  sub_1A524A674();
  return sub_1A3F927DC(v4);
}

void sub_1A3F92DD4(uint64_t a1, uint64_t a2)
{
  (*(**(v2 + *(a2 + 24)) + 280))();
  PhotoKitItem.id.getter();
  sub_1A3F932F0(0, &qword_1EB125460, type metadata accessor for PhotoKitItemListImplementation);
  sub_1A3F9378C(&qword_1EB125468, &qword_1EB125460, type metadata accessor for PhotoKitItemListImplementation);
  sub_1A5246494();
}

uint64_t sub_1A3F92EE4()
{
  result = sub_1A5242E44();
  if (!v1)
  {
    return sub_1A3C38BD4();
  }

  return result;
}

uint64_t sub_1A3F92F28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1A3F9378C(&qword_1EB12A7D8, &qword_1EB12A7B0, type metadata accessor for PhotoKitItem);

  return sub_1A4201830(a1, a2, a3, v6);
}

uint64_t sub_1A3F92FB4()
{
  sub_1A3F933F0(&qword_1EB125118, type metadata accessor for LemonadeGenerativeMemoriesFeedProvider);

  return sub_1A3C47918();
}

void sub_1A3F930BC()
{
  if (!qword_1EB128070)
  {
    v0 = sub_1A5248A84();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB128070);
    }
  }
}

uint64_t sub_1A3F9322C(uint64_t a1)
{
  result = sub_1A3F933F0(&qword_1EB125120, type metadata accessor for LemonadeGenerativeMemoriesFeedProvider);
  *(a1 + 8) = result;
  return result;
}

void sub_1A3F932F0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = sub_1A3C52C70(255, &qword_1EB1265E0);
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_1A3F933F0(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1A3F93438()
{
  if (!qword_1EB1291A0)
  {
    sub_1A3F932F0(255, &qword_1EB12A7B0, type metadata accessor for PhotoKitItem);
    sub_1A3F9378C(&unk_1EB12A7C0, &qword_1EB12A7B0, type metadata accessor for PhotoKitItem);
    sub_1A3F9378C(&qword_1EB12A7B8, &qword_1EB12A7B0, type metadata accessor for PhotoKitItem);
    sub_1A3F9378C(&qword_1EB12A7D0, &qword_1EB12A7B0, type metadata accessor for PhotoKitItem);
    v0 = sub_1A5242924();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB1291A0);
    }
  }
}

void sub_1A3F935B4()
{
  sub_1A3C52C70(319, &qword_1EB126BF0);
  if (v0 <= 0x3F)
  {
    sub_1A5244EE4();
    if (v1 <= 0x3F)
    {
      sub_1A3F932F0(319, &qword_1EB129F88, type metadata accessor for PhotoKitItemListManager);
      if (v2 <= 0x3F)
      {
        type metadata accessor for LemonadeFeedBodyStyle(319);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1A3F936C4()
{
  sub_1A3C52C70(319, &qword_1EB126BF0);
  if (v0 <= 0x3F)
  {
    sub_1A5244EE4();
    if (v1 <= 0x3F)
    {
      sub_1A3F932F0(319, &qword_1EB129F88, type metadata accessor for PhotoKitItemListManager);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1A3F9378C(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_1A3F932F0(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1A3F937D0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1A5248C54();
  *a1 = result & 1;
  return result;
}

unint64_t sub_1A3F93828()
{
  result = qword_1EB12AF20;
  if (!qword_1EB12AF20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12AF20);
  }

  return result;
}

uint64_t sub_1A3F9387C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = type metadata accessor for LemonadeBookmarkListCell();
  v5 = v4[7];
  *(a2 + v5) = swift_getKeyPath();
  v6 = MEMORY[0x1E697DCB8];
  sub_1A3C6B54C(0, &qword_1EB128A90, MEMORY[0x1E69C2948], MEMORY[0x1E697DCB8]);
  swift_storeEnumTagMultiPayload();
  v7 = a2 + v4[8];
  *v7 = swift_getKeyPath();
  v7[8] = 0;
  v8 = v4[9];
  *(a2 + v8) = swift_getKeyPath();
  sub_1A3C6B54C(0, &qword_1EB128A70, MEMORY[0x1E697DBD0], v6);
  swift_storeEnumTagMultiPayload();
  sub_1A3F93828();
  result = sub_1A52480C4();
  *a2 = a1;
  return result;
}

void sub_1A3F939D0(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v9[1] = a1;
  v4 = sub_1A5244084();
  v12 = *(v4 - 8);
  v13 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v11 = v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1A524A204();
  MEMORY[0x1EEE9AC00](v10);
  v9[3] = MEMORY[0x1E6980E30];
  sub_1A3C6B54C(0, &unk_1EB1276B0, MEMORY[0x1E6980E30], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v7 = sub_1A524A274();
  MEMORY[0x1EEE9AC00](v7);
  *a2 = sub_1A5249314();
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  sub_1A3F947A4();
  sub_1A3F93E24(v2, a2 + *(v8 + 44));
}

void sub_1A3F93E24(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v97 = a2;
  v3 = sub_1A5241FC4();
  v95 = *(v3 - 8);
  v96 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v93 = &KeyPath - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = MEMORY[0x1E69C27E0];
  v5 = MEMORY[0x1E69E6720];
  sub_1A3C6B54C(0, &unk_1EB129020, MEMORY[0x1E69C27E0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v89 = &KeyPath - v7;
  v92 = MEMORY[0x1E69C27A0];
  sub_1A3C6B54C(0, &unk_1EB129030, MEMORY[0x1E69C27A0], v5);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v88 = &KeyPath - v9;
  sub_1A3F94DCC(0);
  v87 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v86 = &KeyPath - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3F94D48();
  v91 = v12;
  v101 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v90 = &KeyPath - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v99 = &KeyPath - v15;
  sub_1A3F948CC();
  MEMORY[0x1EEE9AC00](v16 - 8);
  v100 = &KeyPath - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = (&KeyPath - v19);
  type metadata accessor for LemonadeBookmarkListCell();
  *v20 = sub_1A524BC74();
  v20[1] = v21;
  v98 = v20;
  sub_1A3F96760();
  v23 = v20 + *(v22 + 44);
  v85 = sub_1A524B414();
  type metadata accessor for LemonadeBookmarkListCell();
  sub_1A3F96054(0, &qword_1EB128980, sub_1A3F93828, MEMORY[0x1E69E7DE0], MEMORY[0x1E697DF08]);
  sub_1A52480D4();
  sub_1A52480D4();
  sub_1A524BC74();
  sub_1A52481F4();
  v24 = v105;
  v25 = v106;
  v26 = v107;
  LOBYTE(v20) = v108;
  v27 = v109;
  v84 = v110;
  v104 = v106;
  v103 = v108;
  v102 = 0;
  v28 = sub_1A524BC74();
  v30 = v29;
  sub_1A3F94E00(0, &qword_1EB123368, sub_1A3F94960, sub_1A3F9499C);
  v32 = &v23[*(v31 + 36)];
  sub_1A3F95980(a1, v32);
  sub_1A3F9499C();
  v34 = (v32 + *(v33 + 36));
  *v34 = v28;
  v34[1] = v30;
  *v23 = v85;
  *(v23 + 1) = v24;
  v23[16] = v25;
  *(v23 + 3) = v26;
  v23[32] = v20;
  v35 = v84;
  *(v23 + 5) = v27;
  *(v23 + 6) = v35;
  *(v23 + 7) = 0x3FF0000000000000;
  *(v23 + 32) = 0;
  (*(**a1 + 160))(&v105);
  v36 = v108;
  v37 = v109;
  __swift_project_boxed_opaque_existential_1(&v105, v108);
  v38 = (*(v37 + 56))(v36, v37);
  if (v39)
  {
    v40 = v38;
  }

  else
  {
    v40 = 0;
  }

  if (v39)
  {
    v41 = v39;
  }

  else
  {
    v41 = 0xE000000000000000;
  }

  sub_1A3F9670C(&v105);
  v105 = v40;
  v106 = v41;
  sub_1A3D5F9DC();
  v42 = sub_1A524A464();
  v44 = v43;
  v46 = v45;
  v105 = sub_1A524B484();
  v47 = sub_1A524A374();
  v84 = v48;
  v50 = v49;
  v85 = v51;
  sub_1A3E04DF4(v42, v44, v46 & 1);

  KeyPath = swift_getKeyPath();
  v52 = v86;
  sub_1A3F951B0(v86);
  sub_1A3F94E74(0);
  v54 = v52 + *(v53 + 36);
  *v54 = 0x3FF0000000000000;
  *(v54 + 8) = 0;
  v55 = (v52 + *(v87 + 36));
  v56 = *(sub_1A5248A14() + 20);
  v57 = *MEMORY[0x1E697F468];
  v58 = sub_1A52494A4();
  (*(*(v58 - 8) + 104))(&v55[v56], v57, v58);
  __asm { FMOV            V0.2D, #8.0 }

  *v55 = _Q0;
  sub_1A3E42C88();
  *&v55[*(v64 + 36)] = 256;
  v65 = sub_1A5243A44();
  v66 = v88;
  (*(*(v65 - 8) + 56))(v88, 1, 1, v65);
  v67 = sub_1A5243B34();
  v68 = v89;
  (*(*(v67 - 8) + 56))(v89, 1, 1, v67);
  sub_1A3F94F70();
  v69 = v93;
  sub_1A5241FB4();
  v70 = v99;
  sub_1A524A6A4();
  (*(v95 + 8))(v69, v96);
  sub_1A3F9656C(v68, &unk_1EB129020, v94);
  sub_1A3F9656C(v66, &unk_1EB129030, v92);
  sub_1A3F966AC(v52, sub_1A3F94DCC);
  v71 = v100;
  sub_1A3F96644(v98, v100, sub_1A3F948CC);
  LOBYTE(v105) = v50 & 1;
  v104 = 0;
  v103 = 1;
  v72 = *(v101 + 16);
  v73 = v90;
  v74 = v91;
  v72(v90, v70, v91);
  v75 = v97;
  sub_1A3F96644(v71, v97, sub_1A3F948CC);
  sub_1A3F9483C();
  v77 = v75 + v76[12];
  LOBYTE(v69) = v105;
  v78 = v104;
  v79 = v84;
  *v77 = v47;
  *(v77 + 8) = v79;
  *(v77 + 16) = v69;
  v80 = KeyPath;
  *(v77 + 24) = v85;
  *(v77 + 32) = v80;
  *(v77 + 40) = 2;
  *(v77 + 48) = v78;
  v81 = v75 + v76[16];
  v82 = v103;
  *v81 = 0;
  *(v81 + 8) = v82;
  v72((v75 + v76[20]), v73, v74);
  sub_1A3E75E68(v47, v79, v69);
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

void sub_1A3F947A4()
{
  if (!qword_1EB12F520)
  {
    sub_1A3C6B54C(255, &qword_1EB12F528, sub_1A3F9483C, MEMORY[0x1E6981F40]);
    v0 = sub_1A52483B4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB12F520);
    }
  }
}

void sub_1A3F9483C()
{
  if (!qword_1EB12F530)
  {
    sub_1A3F948CC();
    sub_1A3DF14C0();
    sub_1A3F94D48();
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata, &qword_1EB12F530);
    }
  }
}

void sub_1A3F948CC()
{
  if (!qword_1EB1215D8)
  {
    sub_1A3F94E00(255, &qword_1EB123368, sub_1A3F94960, sub_1A3F9499C);
    sub_1A3F94BB8();
    v0 = sub_1A524B8B4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB1215D8);
    }
  }
}

void sub_1A3F9499C()
{
  if (!qword_1EB122F48)
  {
    sub_1A3F94A54(255, &qword_1EB124310, &qword_1EB124E48);
    sub_1A3F950D8(&qword_1EB124318, &qword_1EB124310, &qword_1EB124E48);
    v0 = sub_1A5248AE4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB122F48);
    }
  }
}

void sub_1A3F94A54(uint64_t a1, unint64_t *a2, unint64_t *a3)
{
  if (!*a2)
  {
    sub_1A3E72EF0(255, a3);
    sub_1A3F94ADC(255, &qword_1EB1277F0, &qword_1EB127560, MEMORY[0x1E69815C0]);
    v4 = sub_1A5248804();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1A3F94ADC(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  if (!*a2)
  {
    sub_1A3F960D0(255, a3, a4, MEMORY[0x1E69E6720]);
    v5 = sub_1A5249F44();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

unint64_t sub_1A3F94B48()
{
  result = qword_1EB127800;
  if (!qword_1EB127800)
  {
    sub_1A3F94ADC(255, &qword_1EB1277F0, &qword_1EB127560, MEMORY[0x1E69815C0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB127800);
  }

  return result;
}

unint64_t sub_1A3F94BB8()
{
  result = qword_1EB123370;
  if (!qword_1EB123370)
  {
    sub_1A3F94E00(255, &qword_1EB123368, sub_1A3F94960, sub_1A3F9499C);
    sub_1A3F961D8(&qword_1EB123740, sub_1A3F94960, sub_1A3F94CD0);
    sub_1A3F96308(&qword_1EB122F50, sub_1A3F9499C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB123370);
  }

  return result;
}

unint64_t sub_1A3F94CD0()
{
  result = qword_1EB128610;
  if (!qword_1EB128610)
  {
    sub_1A3EC2638();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB128610);
  }

  return result;
}

void sub_1A3F94D48()
{
  if (!qword_1EB12F538)
  {
    sub_1A3F94DCC(255);
    sub_1A3F94F70();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB12F538);
    }
  }
}

void sub_1A3F94E00(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), void (*a4)(uint64_t))
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

void sub_1A3F94EEC()
{
  if (!qword_1EB123950)
  {
    sub_1A3F94A54(255, &qword_1EB124330, &qword_1EB124E58);
    v0 = sub_1A5248804();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB123950);
    }
  }
}

unint64_t sub_1A3F94F70()
{
  result = qword_1EB1238C0;
  if (!qword_1EB1238C0)
  {
    sub_1A3F94DCC(255);
    sub_1A3F961D8(&qword_1EB124168, sub_1A3F94E74, sub_1A3F95058);
    sub_1A3F96308(&qword_1EB128A00, sub_1A3E42C88);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1238C0);
  }

  return result;
}

unint64_t sub_1A3F95058()
{
  result = qword_1EB1227B0;
  if (!qword_1EB1227B0)
  {
    sub_1A3F94EB0(255);
    sub_1A3D6D344();
    sub_1A3F9515C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1227B0);
  }

  return result;
}

uint64_t sub_1A3F950D8(unint64_t *a1, unint64_t *a2, unint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_1A3F94A54(255, a2, a3);
    swift_getOpaqueTypeConformance2();
    sub_1A3F94B48();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1A3F9515C()
{
  result = qword_1EB1297F8;
  if (!qword_1EB1297F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1297F8);
  }

  return result;
}

uint64_t sub_1A3F951B0@<X0>(uint64_t a1@<X8>)
{
  v51 = a1;
  sub_1A3F96450(0, &qword_1EB122C28, sub_1A3F94EEC, &type metadata for LemonadeCollectionBookmarkCell.ThumbnailView, MEMORY[0x1E697F948]);
  v49 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v50 = &v41 - v3;
  sub_1A3C6B54C(0, &qword_1EB124F80, MEMORY[0x1E69C1D20], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v41 - v5;
  v45 = sub_1A5242234();
  v44 = *(v45 - 8);
  MEMORY[0x1EEE9AC00](v45);
  v8 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = sub_1A5242274();
  v42 = *(v43 - 8);
  MEMORY[0x1EEE9AC00](v43);
  v10 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1A5242264();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = (&v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1A3F94A54(0, &qword_1EB124330, &qword_1EB124E58);
  v41 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v41 - v16;
  sub_1A3F94EEC();
  v48 = v18;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v46 = &v41 - v22;
  sub_1A3F94EB0(0);
  v24 = MEMORY[0x1EEE9AC00](v23 - 8);
  v47 = &v41 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(**v1 + 160))(v56, v24);
  sub_1A3C34460(v56, v53);
  v26 = v54;
  v27 = v55;
  __swift_project_boxed_opaque_existential_1(v53, v54);
  if (sub_1A4838C90(v26, v27))
  {
    *v14 = 0x6C69662E6B636F6CLL;
    v14[1] = 0xE90000000000006CLL;
    (*(v12 + 104))(v14, *MEMORY[0x1E69C1D38], v11);
    v28 = v42;
    v29 = v43;
    (*(v42 + 104))(v10, *MEMORY[0x1E69C1D48], v43);
    v30 = sub_1A52421C4();
    (*(*(v30 - 8) + 56))(v6, 1, 1, v30);
    sub_1A52421D4();
    sub_1A3F9656C(v6, &qword_1EB124F80, MEMORY[0x1E69C1D20]);
    sub_1A5242B54();
    (*(v44 + 8))(v8, v45);
    (*(v28 + 8))(v10, v29);
    (*(v12 + 8))(v14, v11);
    v31 = sub_1A524B4A4();
    KeyPath = swift_getKeyPath();
    v33 = &v17[*(v41 + 36)];
    *v33 = KeyPath;
    v33[1] = v31;
    sub_1A524BC74();
    sub_1A5248AD4();
    sub_1A3CD0890(v17, v20);
    v34 = &v20[*(v48 + 36)];
    v35 = v56[5];
    *(v34 + 4) = v56[4];
    *(v34 + 5) = v35;
    *(v34 + 6) = v56[6];
    v36 = v56[1];
    *v34 = v56[0];
    *(v34 + 1) = v36;
    v37 = v56[3];
    *(v34 + 2) = v56[2];
    *(v34 + 3) = v37;
    v38 = v46;
    sub_1A3F965DC(v20, v46, sub_1A3F94EEC);
    sub_1A3F96644(v38, v50, sub_1A3F94EEC);
    swift_storeEnumTagMultiPayload();
    sub_1A3D6D344();
    sub_1A3F9515C();
    v39 = v47;
    sub_1A5249744();
    sub_1A3F966AC(v38, sub_1A3F94EEC);
  }

  else
  {
    sub_1A3C341C8(v53, v52);
    sub_1A3CA2CF0(v52, v56);
    sub_1A3F964BC(v56, v50);
    swift_storeEnumTagMultiPayload();
    sub_1A3D6D344();
    sub_1A3F9515C();
    v39 = v47;
    sub_1A5249744();
    sub_1A3F96518(v56);
  }

  sub_1A3F965DC(v39, v51, sub_1A3F94EB0);
  return __swift_destroy_boxed_opaque_existential_0(v53);
}

void sub_1A3F95980(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1A5242254();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v24[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1A5242264();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = (&v24[-1] - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(**a1 + 160))(v24, v10);
  v13 = v25;
  v14 = v26;
  __swift_project_boxed_opaque_existential_1(v24, v25);
  v15 = (*(v14 + 88))(v13, v14);
  if (v16)
  {
    v17 = v15;
  }

  else
  {
    v17 = 0;
  }

  if (v16)
  {
    v18 = v16;
  }

  else
  {
    v18 = 0xE000000000000000;
  }

  sub_1A3F9670C(v24);
  *v12 = v17;
  v12[1] = v18;
  (*(v9 + 104))(v12, *MEMORY[0x1E69C1D40], v8);
  sub_1A5242244();
  sub_1A5242B74();
  (*(v5 + 8))(v7, v4);
  (*(v9 + 8))(v12, v8);
  v19 = sub_1A524B324();
  KeyPath = swift_getKeyPath();
  sub_1A3F94A54(0, &qword_1EB124310, &qword_1EB124E48);
  v22 = (a2 + *(v21 + 36));
  *v22 = KeyPath;
  v22[1] = v19;
}

void sub_1A3F95BF8()
{
  if (!qword_1EB12F540)
  {
    sub_1A3F95C78();
    sub_1A3F94ADC(255, &qword_1EB127820, &qword_1EB1276A0, MEMORY[0x1E6980F50]);
    v0 = sub_1A5248804();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB12F540);
    }
  }
}

void sub_1A3F95C78()
{
  if (!qword_1EB12F548)
  {
    sub_1A3C6B54C(255, &qword_1EB12F528, sub_1A3F9483C, MEMORY[0x1E6981F40]);
    sub_1A3F95D0C();
    v0 = sub_1A524B784();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB12F548);
    }
  }
}

unint64_t sub_1A3F95D0C()
{
  result = qword_1EB12F550;
  if (!qword_1EB12F550)
  {
    sub_1A3C6B54C(255, &qword_1EB12F528, sub_1A3F9483C, MEMORY[0x1E6981F40]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12F550);
  }

  return result;
}

void sub_1A3F95DD0()
{
  if (!qword_1EB12F560)
  {
    sub_1A3F95D94(255);
    sub_1A3F96054(255, &qword_1EB127C70, sub_1A3D6F4A4, MEMORY[0x1E6981EF8], MEMORY[0x1E697FD48]);
    v0 = sub_1A5248804();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB12F560);
    }
  }
}

void sub_1A3F95EB4()
{
  swift_checkMetadataState();
  if (v0 <= 0x3F)
  {
    sub_1A3C6B54C(319, &qword_1EB124840, MEMORY[0x1E69C2948], MEMORY[0x1E697DCC0]);
    if (v1 <= 0x3F)
    {
      sub_1A3F960D0(319, &qword_1EB1246E0, MEMORY[0x1E69E6370], MEMORY[0x1E697DCC0]);
      if (v2 <= 0x3F)
      {
        sub_1A3C6B54C(319, &qword_1EB128A30, MEMORY[0x1E697DBD0], MEMORY[0x1E697DCC0]);
        if (v3 <= 0x3F)
        {
          sub_1A3F96054(319, &qword_1EB128980, sub_1A3F93828, MEMORY[0x1E69E7DE0], MEMORY[0x1E697DF08]);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1A3F96054(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

void sub_1A3F960D0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_1A3F96120()
{
  result = qword_1EB12F568;
  if (!qword_1EB12F568)
  {
    sub_1A3F95DD0();
    sub_1A3F961D8(&qword_1EB12F570, sub_1A3F95D94, sub_1A3F96258);
    sub_1A3F963C0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12F568);
  }

  return result;
}

uint64_t sub_1A3F961D8(unint64_t *a1, void (*a2)(uint64_t), void (*a3)(void))
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

unint64_t sub_1A3F96258()
{
  result = qword_1EB12F578;
  if (!qword_1EB12F578)
  {
    sub_1A3F95BF8();
    sub_1A3F96308(&qword_1EB12F580, sub_1A3F95C78);
    sub_1A3F96350();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12F578);
  }

  return result;
}

uint64_t sub_1A3F96308(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1A3F96350()
{
  result = qword_1EB127830;
  if (!qword_1EB127830)
  {
    sub_1A3F94ADC(255, &qword_1EB127820, &qword_1EB1276A0, MEMORY[0x1E6980F50]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB127830);
  }

  return result;
}

unint64_t sub_1A3F963C0()
{
  result = qword_1EB127C80;
  if (!qword_1EB127C80)
  {
    sub_1A3F96054(255, &qword_1EB127C70, sub_1A3D6F4A4, MEMORY[0x1E6981EF8], MEMORY[0x1E697FD48]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB127C80);
  }

  return result;
}

void sub_1A3F96450(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

uint64_t sub_1A3F9656C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1A3C6B54C(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1A3F965DC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A3F96644(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A3F966AC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1A3F96760()
{
  if (!qword_1EB1243F8)
  {
    sub_1A3F94E00(255, &qword_1EB123368, sub_1A3F94960, sub_1A3F9499C);
    v0 = sub_1A52483B4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB1243F8);
    }
  }
}

unint64_t sub_1A3F96814()
{
  result = qword_1EB19C7D0[0];
  if (!qword_1EB19C7D0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB19C7D0);
  }

  return result;
}

uint64_t type metadata accessor for PersonBanner()
{
  result = qword_1EB19C9E8;
  if (!qword_1EB19C9E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1A3F968B4@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v4 = sub_1A5243BE4();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = &v17 - v10;
  v12 = *a1;
  v13 = MEMORY[0x1E69C2838];
  if (*(v12 + 48) < 0)
  {
    v13 = MEMORY[0x1E69C2830];
  }

  (*(v5 + 104))(v7, *v13, v4, v9);
  v14 = *(v5 + 32);
  v14(v11, v7, v4);
  *(a2 + 3) = &type metadata for PersonBannerView;
  *(a2 + 4) = sub_1A3F96814();
  *a2 = v12;
  v15 = type metadata accessor for PersonBanner();
  v14(&a2[*(v15 + 20)], v11, v4);
}

uint64_t sub_1A3F96A2C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 20);
  v5 = sub_1A5243BE4();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1A3F96AA0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for PersonActionBanner(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3F97810(0, &qword_1EB12F598, MEMORY[0x1E697F948]);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v23 - v8;
  v10 = type metadata accessor for PersonSuggestionBanner.Style(0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for PersonSuggestionBanner(0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = (v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = a1[6];
  if (v16 < 0)
  {
    swift_retain_n();
    sub_1A439A478(sub_1A3F97574, a1, v6);
    v20 = type metadata accessor for PersonActionBanner;
    sub_1A3F9764C(v6, v9, type metadata accessor for PersonActionBanner);
    swift_storeEnumTagMultiPayload();
    sub_1A3F97578(&qword_1EB12F5A0, type metadata accessor for PersonSuggestionBanner);
    sub_1A3F97578(&qword_1EB12F5A8, type metadata accessor for PersonActionBanner);
    sub_1A5249744();
    v21 = v6;
  }

  else
  {
    v23[1] = a2;
    v17 = a1[4];
    v18 = a1[5];
    sub_1A3F975FC(v17, v18, v16);

    sub_1A400703C(v19);
    sub_1A4000F28(v17, v18, v16, v12, sub_1A3F97884, a1, v15);
    v20 = type metadata accessor for PersonSuggestionBanner;
    sub_1A3F9764C(v15, v9, type metadata accessor for PersonSuggestionBanner);
    swift_storeEnumTagMultiPayload();
    sub_1A3F97578(&qword_1EB12F5A0, type metadata accessor for PersonSuggestionBanner);
    sub_1A3F97578(&qword_1EB12F5A8, type metadata accessor for PersonActionBanner);
    sub_1A5249744();

    v21 = v15;
  }

  return sub_1A3F976B4(v21, v20);
}

void sub_1A3F96E7C()
{
  v0 = sub_1A3F96FA8();
  MEMORY[0x1EEE9AC00](v0 - 8);
  sub_1A5245FB4();
}

uint64_t sub_1A3F96FA8()
{
  result = qword_1EB124AC0;
  if (!qword_1EB124AC0)
  {
    sub_1A5245FB4();
  }

  return result;
}

void sub_1A3F97018()
{
  v0 = type metadata accessor for PhotosViewBannerPreview();
  MEMORY[0x1EEE9AC00](v0);
  MEMORY[0x1EEE9AC00](v1);
  sub_1A5245FA4();
}

unint64_t sub_1A3F97260(uint64_t a1)
{
  result = sub_1A3F97288();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1A3F97288()
{
  result = qword_1EB12F590;
  if (!qword_1EB12F590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12F590);
  }

  return result;
}

unint64_t sub_1A3F973E0()
{
  result = qword_1EB19C9E0;
  if (!qword_1EB19C9E0)
  {
    type metadata accessor for PersonBanner();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB19C9E0);
  }

  return result;
}

unint64_t sub_1A3F97460()
{
  result = sub_1A3F974E4();
  if (v1 <= 0x3F)
  {
    result = sub_1A5243BE4();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_1A3F974E4()
{
  result = qword_1EB13FCC0;
  if (!qword_1EB13FCC0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EB13FCC0);
  }

  return result;
}

uint64_t sub_1A3F97578(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1A3F975C0(char *a1)
{
  v2 = *(v1 + 16);
  v4 = *a1;
  return v2(&v4);
}

uint64_t sub_1A3F975FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((a3 & 0x8000000000000000) == 0)
  {
  }
}

uint64_t sub_1A3F9764C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A3F976B4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1A3F97714()
{
  result = qword_1EB12F5B0;
  if (!qword_1EB12F5B0)
  {
    sub_1A3F97810(255, &qword_1EB12F5B8, MEMORY[0x1E697F960]);
    sub_1A3F97578(&qword_1EB12F5A0, type metadata accessor for PersonSuggestionBanner);
    sub_1A3F97578(&qword_1EB12F5A8, type metadata accessor for PersonActionBanner);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12F5B0);
  }

  return result;
}

void sub_1A3F97810(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = type metadata accessor for PersonSuggestionBanner(255);
    v7 = type metadata accessor for PersonActionBanner(255);
    v8 = a3(a1, v6, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t String.init(forType:)(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  swift_getDynamicType();
  sub_1A3F97900();
  v2 = sub_1A524C714();
  __swift_destroy_boxed_opaque_existential_0(a1);
  return v2;
}

unint64_t sub_1A3F97900()
{
  result = qword_1EB12F5C0;
  if (!qword_1EB12F5C0)
  {
    result = swift_getExistentialMetatypeMetadata();
    atomic_store(result, &qword_1EB12F5C0);
  }

  return result;
}

void String.firstWord.getter()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 0;
  *(v0 + 24) = 0xE000000000000000;
  sub_1A3F97B00();
  sub_1A3D5F9DC();
  sub_1A3F97B58();

  sub_1A524DFC4();

  swift_beginAccess();
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A3F97A84(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    v4 = result;
    swift_beginAccess();
    *(v2 + 16) = v4;
    *(v2 + 24) = a2;
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  return result;
}

void sub_1A3F97B00()
{
  if (!qword_1EB12F5C8)
  {
    v0 = sub_1A524D104();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB12F5C8);
    }
  }
}

unint64_t sub_1A3F97B58()
{
  result = qword_1EB12F5D0;
  if (!qword_1EB12F5D0)
  {
    sub_1A3F97B00();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12F5D0);
  }

  return result;
}

void sub_1A3F97BB0()
{
  if (!qword_1EB12F5D8)
  {
    sub_1A3C6B5B0(255, &qword_1EB12F5E0, sub_1A3F97C44, MEMORY[0x1E6981F40]);
    sub_1A3F98110();
    v0 = sub_1A524B8B4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB12F5D8);
    }
  }
}

void sub_1A3F97C44()
{
  if (!qword_1EB12F5E8)
  {
    sub_1A3F97CB4();
    sub_1A3F97F10();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB12F5E8);
    }
  }
}

void sub_1A3F97CB4()
{
  if (!qword_1EB12F5F0)
  {
    sub_1A3F97D94();
    sub_1A3F97F8C(255, &qword_1EB12F5F8, MEMORY[0x1E69C2928]);
    sub_1A3F97E3C();
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB12F5F0);
    }
  }
}

void sub_1A3F97D94()
{
  if (!qword_1EB140330)
  {
    sub_1A3F97F8C(255, &qword_1EB12F5F8, MEMORY[0x1E69C2928]);
    sub_1A3F97E3C();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB140330);
    }
  }
}

unint64_t sub_1A3F97E3C()
{
  result = qword_1EB140340;
  if (!qword_1EB140340)
  {
    sub_1A3F97F8C(255, &qword_1EB12F5F8, MEMORY[0x1E69C2928]);
    sub_1A3F99618(&qword_1EB128FE0, MEMORY[0x1E69C2928]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB140340);
  }

  return result;
}

void sub_1A3F97F10()
{
  if (!qword_1EB12F600)
  {
    sub_1A3F97F8C(255, &qword_1EB12F608, sub_1A3F97FF0);
    v0 = sub_1A524DF24();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB12F600);
    }
  }
}

void sub_1A3F97F8C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

void sub_1A3F97FF0()
{
  if (!qword_1EB12F610)
  {
    sub_1A3F98058();
    sub_1A5249F54();
    v0 = sub_1A5248804();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB12F610);
    }
  }
}

void sub_1A3F98058()
{
  if (!qword_1EB12F618)
  {
    sub_1A3F980B8();
    v0 = sub_1A5248804();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB12F618);
    }
  }
}

void sub_1A3F980B8()
{
  if (!qword_1EB127AD0)
  {
    v0 = sub_1A5249C64();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB127AD0);
    }
  }
}

unint64_t sub_1A3F98110()
{
  result = qword_1EB12F620;
  if (!qword_1EB12F620)
  {
    sub_1A3C6B5B0(255, &qword_1EB12F5E0, sub_1A3F97C44, MEMORY[0x1E6981F40]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12F620);
  }

  return result;
}

uint64_t sub_1A3F98198@<X0>(void **a1@<X0>, int a2@<W1>, char *a3@<X8>)
{
  v125 = a2;
  v128 = a3;
  v106 = sub_1A5242D14();
  v105 = *(v106 - 8);
  MEMORY[0x1EEE9AC00](v106);
  v104 = &v96 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v103 = &v96 - v6;
  v99 = sub_1A5242264();
  v98 = *(v99 - 8);
  MEMORY[0x1EEE9AC00](v99);
  v97 = (&v96 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1A3F97FF0();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v100 = &v96 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3F97F8C(0, &qword_1EB12F608, sub_1A3F97FF0);
  v130 = v10;
  v126 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v102 = &v96 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v101 = &v96 - v13;
  sub_1A3F97F10();
  MEMORY[0x1EEE9AC00](v14 - 8);
  v127 = &v96 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v129 = &v96 - v17;
  v121 = sub_1A5241FC4();
  v120 = *(v121 - 8);
  MEMORY[0x1EEE9AC00](v121);
  v117 = &v96 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v119 = MEMORY[0x1E69C27E0];
  v19 = MEMORY[0x1E69E6720];
  sub_1A3C6B5B0(0, &unk_1EB129020, MEMORY[0x1E69C27E0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v116 = &v96 - v21;
  v118 = MEMORY[0x1E69C27A0];
  sub_1A3C6B5B0(0, &unk_1EB129030, MEMORY[0x1E69C27A0], v19);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v115 = &v96 - v23;
  v113 = sub_1A5244084();
  v132 = *(v113 - 8);
  MEMORY[0x1EEE9AC00](v113);
  v111 = &v96 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_1A5243834();
  v26 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v28 = &v96 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3C6B5B0(0, &unk_1EB129180, MEMORY[0x1E69C2060], v19);
  MEMORY[0x1EEE9AC00](v29 - 8);
  v31 = &v96 - v30;
  v110 = MEMORY[0x1E69C2928];
  sub_1A3F97F8C(0, &qword_1EB12F5F8, MEMORY[0x1E69C2928]);
  v33 = v32;
  MEMORY[0x1EEE9AC00](v32);
  v35 = &v96 - v34;
  sub_1A3F97D94();
  v112 = v36;
  v114 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36);
  v109 = &v96 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3F97CB4();
  v124 = v38;
  v123 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v38);
  v122 = &v96 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v40);
  v131 = &v96 - v41;
  v42 = *a1;
  v135 = 0u;
  v136 = 0u;
  v137 = 1;
  v43 = sub_1A52429A4();
  (*(*(v43 - 8) + 56))(v31, 1, 1, v43);
  (*(v26 + 104))(v28, *MEMORY[0x1E69C2678], v25);
  v44 = v42;
  sub_1A5243ED4();
  v108 = v33;
  v45 = &v35[*(v33 + 36)];
  *v45 = 0;
  *(v45 + 4) = 257;
  v96 = type metadata accessor for LemonadeSharedWithYouGridCell();
  v107 = *(v96 + 20);
  v46 = MEMORY[0x1E69C2948];
  v47 = MEMORY[0x1E69C2948];
  v48 = v111;
  sub_1A3F99660(&qword_1EB128A90, MEMORY[0x1E69C2948], MEMORY[0x1E69C2948], v111);
  v49 = sub_1A3F97E3C();
  sub_1A524A784();
  v50 = *(v132 + 8);
  v132 += 8;
  v51 = v113;
  v50(v48, v113);
  sub_1A3C2C5F8(v35, &qword_1EB12F5F8, v110, MEMORY[0x1E697F578], sub_1A3F97F8C);
  v52 = sub_1A5243A44();
  v53 = v115;
  (*(*(v52 - 8) + 56))(v115, 1, 1, v52);
  v54 = sub_1A5243B34();
  v55 = v116;
  (*(*(v54 - 8) + 56))(v116, 1, 1, v54);
  v110 = a1;
  sub_1A3F99660(&qword_1EB128A90, v46, v47, v48);
  v56 = v117;
  sub_1A5244044();
  v50(v48, v51);
  v133 = v108;
  v134 = v49;
  swift_getOpaqueTypeConformance2();
  v57 = v112;
  v58 = v109;
  sub_1A524A6A4();
  (*(v120 + 8))(v56, v121);
  sub_1A3F994F8(v55, &unk_1EB129020, v119);
  sub_1A3F994F8(v53, &unk_1EB129030, v118);
  (*(v114 + 8))(v58, v57);
  v59 = 1;
  if ((v125 & 1) == 0)
  {
    v60 = v97;
    *v97 = 0x6567617373656DLL;
    v60[1] = 0xE700000000000000;
    v61 = v98;
    v62 = v99;
    (*(v98 + 104))(v60, *MEMORY[0x1E69C1D38], v99);
    v63 = sub_1A5242B94();
    (*(v61 + 8))(v60, v62);
    v64 = sub_1A524B434();
    v133 = v63;
    v134 = v64;
    sub_1A3F98058();
    sub_1A3F99568();
    v65 = v100;
    sub_1A524AAE4();

    sub_1A3C37060(0, &unk_1EB1202B0, MEMORY[0x1E6980D50], MEMORY[0x1E69E6F90]);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1A52FC9F0;
    LOBYTE(v60) = sub_1A524A094();
    *(inited + 32) = v60;
    v67 = sub_1A524A084();
    *(inited + 33) = v67;
    v68 = sub_1A524A0A4();
    sub_1A524A0A4();
    if (sub_1A524A0A4() != v60)
    {
      v68 = sub_1A524A0A4();
    }

    sub_1A524A0A4();
    if (sub_1A524A0A4() != v67)
    {
      v68 = sub_1A524A0A4();
    }

    v69 = v103;
    sub_1A3F99660(&qword_1EB128AA0, MEMORY[0x1E69C2218], MEMORY[0x1E69C2218], v103);
    v70 = v105;
    v71 = v104;
    v72 = v106;
    (*(v105 + 104))(v104, *MEMORY[0x1E69C2210], v106);
    sub_1A5242D04();
    v73 = *(v70 + 8);
    v73(v71, v72);
    v73(v69, v72);
    sub_1A5247BC4();
    v75 = v74;
    v77 = v76;
    v79 = v78;
    v81 = v80;
    v82 = v102;
    sub_1A3F99878(v65, v102);
    v83 = v82 + *(v130 + 36);
    *v83 = v68;
    *(v83 + 8) = v75;
    *(v83 + 16) = v77;
    *(v83 + 24) = v79;
    *(v83 + 32) = v81;
    *(v83 + 40) = 0;
    v84 = v101;
    sub_1A3F998DC(v82, v101);
    sub_1A3F998DC(v84, v129);
    v59 = 0;
  }

  v85 = v129;
  (*(v126 + 56))(v129, v59, 1, v130);
  v86 = v123;
  v87 = *(v123 + 16);
  v88 = v122;
  v89 = v131;
  v90 = v124;
  v87(v122, v131, v124);
  v91 = v127;
  sub_1A3F99964(v85, v127);
  v92 = v128;
  v87(v128, v88, v90);
  sub_1A3F97C44();
  sub_1A3F99964(v91, &v92[*(v93 + 48)]);
  sub_1A3F999C8(v85);
  v94 = *(v86 + 8);
  v94(v89, v90);
  sub_1A3F999C8(v91);
  return (v94)(v88, v90);
}

void sub_1A3F99078()
{
  if (!qword_1EB12F628)
  {
    sub_1A3C6B5B0(255, &qword_1EB12F5E0, sub_1A3F97C44, MEMORY[0x1E6981F40]);
    v0 = sub_1A52483B4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB12F628);
    }
  }
}

uint64_t sub_1A3F99110@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = a1;
  v3 = type metadata accessor for LemonadeSharedWithYouGridCell();
  v4 = *(v3 + 20);
  *(a2 + v4) = swift_getKeyPath();
  v5 = MEMORY[0x1E697DCB8];
  sub_1A3C6B5B0(0, &qword_1EB128A90, MEMORY[0x1E69C2948], MEMORY[0x1E697DCB8]);
  swift_storeEnumTagMultiPayload();
  v6 = *(v3 + 24);
  *(a2 + v6) = swift_getKeyPath();
  sub_1A3C6B5B0(0, &qword_1EB128AA0, MEMORY[0x1E69C2218], v5);

  return swift_storeEnumTagMultiPayload();
}

uint64_t type metadata accessor for LemonadeSharedWithYouGridCell()
{
  result = qword_1EB19CB90;
  if (!qword_1EB19CB90)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1A3F99268()
{
  sub_1A3F97BB0();
  MEMORY[0x1EEE9AC00](v1);
  v3 = (v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = *v0;
  v5 = PXDisplayAssetWasSavedThroughSyndication(*v0);
  *v3 = _s12PhotosUICore0A17SearchBarPositionO03TabD0C30initialSuggestionViewAlignment7SwiftUI0J0Vvg_0();
  v3[1] = v6;
  sub_1A3F99078();
  sub_1A3F98198(v0, v5, v3 + *(v7 + 44));
  v10[3] = sub_1A3DB58C8();
  v10[0] = v4;
  sub_1A3F99618(&qword_1EB12F630, sub_1A3F97BB0);
  v8 = v4;
  sub_1A524A534();
  sub_1A3CD0C64(v3);
  return sub_1A3C2C5F8(v10, &qword_1EB126130, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720], sub_1A3C37060);
}

void sub_1A3F993FC()
{
  sub_1A3DB58C8();
  if (v0 <= 0x3F)
  {
    sub_1A3C6B5B0(319, &qword_1EB124840, MEMORY[0x1E69C2948], MEMORY[0x1E697DCC0]);
    if (v1 <= 0x3F)
    {
      sub_1A3C6B5B0(319, &qword_1EB124870, MEMORY[0x1E69C2218], MEMORY[0x1E697DCC0]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1A3F994F8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1A3C6B5B0(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_1A3F99568()
{
  result = qword_1EB12F638;
  if (!qword_1EB12F638)
  {
    sub_1A3F98058();
    sub_1A3F99618(&qword_1EB127AD8, sub_1A3F980B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12F638);
  }

  return result;
}

uint64_t sub_1A3F99618(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1A3F99660@<X0>(unint64_t *a1@<X0>, uint64_t (*a2)(uint64_t)@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t a4@<X8>)
{
  v8 = v4;
  v10 = sub_1A5249234();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3C6B5B0(0, a1, a2, MEMORY[0x1E697DCB8]);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v20 - v15;
  sub_1A3F99A24(v8, &v20 - v15, a1, a2);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v17 = a3(0);
    return (*(*(v17 - 8) + 32))(a4, v16, v17);
  }

  else
  {
    sub_1A524D254();
    v19 = sub_1A524A014();
    sub_1A5246DF4();

    sub_1A5249224();
    swift_getAtKeyPath();

    return (*(v11 + 8))(v13, v10);
  }
}

uint64_t sub_1A3F99878(uint64_t a1, uint64_t a2)
{
  sub_1A3F97FF0();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A3F998DC(uint64_t a1, uint64_t a2)
{
  sub_1A3F97F8C(0, &qword_1EB12F608, sub_1A3F97FF0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A3F99964(uint64_t a1, uint64_t a2)
{
  sub_1A3F97F10();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A3F999C8(uint64_t a1)
{
  sub_1A3F97F10();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1A3F99A24(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_1A3C6B5B0(0, a3, a4, MEMORY[0x1E697DCB8]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t PXAppIntentsError.hashValue.getter()
{
  v1 = *v0;
  sub_1A524EC94();
  MEMORY[0x1A590A010](v1);
  return sub_1A524ECE4();
}

uint64_t PXAppIntentsUserPresentableError.localizedStringResource.getter@<X0>(uint64_t a1@<X8>)
{
  v64 = a1;
  v2 = sub_1A5240BB4();
  v61 = *(v2 - 8);
  v62 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v59 = &v57 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v58 = &v57 - v5;
  MEMORY[0x1EEE9AC00](v6);
  v57 = &v57 - v7;
  MEMORY[0x1EEE9AC00](v8);
  v60 = &v57 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v57 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v57 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v57 - v17;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v57 - v20;
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v57 - v23;
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v57 - v26;
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v57 - v29;
  MEMORY[0x1EEE9AC00](v31);
  v33 = &v57 - v32;
  v63 = sub_1A524C624();
  MEMORY[0x1EEE9AC00](v63);
  v36 = &v57 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = *v1;
  if (*(v1 + 16) <= 1u)
  {
    if (*(v1 + 16))
    {
      v51 = (v34 + 8);
      if (v37 == 1)
      {
        v52 = v18;
      }

      else
      {
        v52 = v12;
      }

      if (v37 == 2)
      {
        v53 = v15;
      }

      else
      {
        v53 = v52;
      }

      sub_1A524C5B4();
      sub_1A4896C94(v36);
      (*v51)(v36, v63);
      v41 = *(v61 + 32);
      v54 = v53;
      v43 = v62;
      v41(v21, v54, v62);
      v44 = v64;
      v45 = v21;
    }

    else
    {
      v38 = (v34 + 8);
      if (v37 == 1)
      {
        v39 = v30;
      }

      else
      {
        v39 = v24;
      }

      if (v37 == 2)
      {
        v40 = v27;
      }

      else
      {
        v40 = v39;
      }

      sub_1A524C5B4();
      sub_1A4896C94(v36);
      (*v38)(v36, v63);
      v41 = *(v61 + 32);
      v42 = v40;
      v43 = v62;
      v41(v33, v42, v62);
      v44 = v64;
      v45 = v33;
    }

    return (v41)(v44, v45, v43);
  }

  if (*(v1 + 16) == 2)
  {
    v46 = (v34 + 8);
    v47 = v59;
    if (v37 == 1)
    {
      v47 = v57;
    }

    if (v37 == 2)
    {
      v48 = v58;
    }

    else
    {
      v48 = v47;
    }

    sub_1A524C5B4();
    sub_1A4896C94(v36);
    (*v46)(v36, v63);
    v49 = v60;
    v41 = *(v61 + 32);
    v50 = v48;
    v43 = v62;
    v41(v60, v50, v62);
    v44 = v64;
    v45 = v49;
    return (v41)(v44, v45, v43);
  }

  v56 = v34;
  sub_1A524C5B4();
  sub_1A4896C94(v36);
  return (*(v56 + 8))(v36, v63);
}

uint64_t PXAppIntentsTranslatedOrOriginalError(for:)(void *a1)
{
  v1 = a1;
  v24[0] = a1;
  v2 = a1;
  sub_1A3DBD9A0();
  type metadata accessor for PXAppIntentsNSError(0);
  if (!swift_dynamicCast())
  {
    v17 = v1;
    return v1;
  }

  sub_1A3F9A9E4(&qword_1EB12F640, type metadata accessor for PXAppIntentsNSError);
  v3 = sub_1A5240B44();
  v4 = sub_1A524C674();
  if (!*(v3 + 16))
  {

    goto LABEL_12;
  }

  v6 = sub_1A3C5DCA4(v4, v5);
  v8 = v7;

  if ((v8 & 1) == 0)
  {
LABEL_12:

    goto LABEL_13;
  }

  sub_1A3C2F0BC(*(v3 + 56) + 32 * v6, v24);

  sub_1A3F9ADFC();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_13:
    v9 = 1;
    goto LABEL_14;
  }

  v9 = [v22 integerValue];
  v10 = sub_1A5240B44();
  v11 = sub_1A524C674();
  if (!*(v10 + 16))
  {

    goto LABEL_29;
  }

  v13 = sub_1A3C5DCA4(v11, v12);
  v15 = v14;

  if ((v15 & 1) == 0)
  {
LABEL_29:

    goto LABEL_30;
  }

  sub_1A3C2F0BC(*(v10 + 56) + 32 * v13, v24);

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_30:

    goto LABEL_14;
  }

  if ([v22 integerValue] >= 1)
  {
    v16 = [v22 integerValue];

    goto LABEL_15;
  }

LABEL_14:
  v16 = 1;
LABEL_15:
  sub_1A5240B24();
  if (v22 <= -1003)
  {
    if (v22 == -1004 || v22 == -1003)
    {
      sub_1A523FBF4();
      sub_1A3F9A9E4(&qword_1EB12F648, MEMORY[0x1E6959D40]);
      v1 = swift_allocError();
      sub_1A523FBE4();
LABEL_26:

      return v1;
    }
  }

  else
  {
    switch(v22)
    {
      case -1002:
        sub_1A3F5ADB4();
        v1 = swift_allocError();
        *v18 = v9;
        *(v18 + 8) = v16;
        v19 = 2;
        goto LABEL_23;
      case -1001:
        sub_1A3F5ADB4();
        v1 = swift_allocError();
        *v18 = v9;
        *(v18 + 8) = v16;
        v19 = 1;
LABEL_23:
        *(v18 + 16) = v19;
        goto LABEL_26;
      case -1000:
        sub_1A3F5ADB4();
        v1 = swift_allocError();
        *v20 = v9;
        *(v20 + 8) = v16;
        *(v20 + 16) = 0;
        goto LABEL_26;
    }
  }

  v24[0] = 0;
  v24[1] = 0xE000000000000000;
  sub_1A524E404();
  MEMORY[0x1A5907B60](0xD000000000000014, 0x80000001A53BF8A0);
  sub_1A5240B24();
  _s3__C4CodeOMa_0(0);
  sub_1A524E624();
  result = sub_1A524E6E4();
  __break(1u);
  return result;
}

uint64_t sub_1A3F9A624(uint64_t a1)
{
  v2 = sub_1A3F9A9E4(&qword_1EB12F640, type metadata accessor for PXAppIntentsNSError);

  return MEMORY[0x1EEDC3BE0](a1, v2);
}

uint64_t sub_1A3F9A690(uint64_t a1)
{
  v2 = sub_1A3F9A9E4(&qword_1EB12F640, type metadata accessor for PXAppIntentsNSError);

  return MEMORY[0x1EEDC3B98](a1, v2);
}

uint64_t sub_1A3F9A6FC(void *a1, uint64_t a2)
{
  v4 = sub_1A3F9A9E4(&qword_1EB12F640, type metadata accessor for PXAppIntentsNSError);
  v5 = a1;

  return MEMORY[0x1EEDC3B88](v5, a2, v4);
}

uint64_t sub_1A3F9A78C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1A3F9A9E4(&qword_1EB12F640, type metadata accessor for PXAppIntentsNSError);

  return MEMORY[0x1EEDC3BC8](a1, a2, v4);
}

uint64_t sub_1A3F9A808(uint64_t a1)
{
  v2 = sub_1A3F9A9E4(&qword_1EB12F688, type metadata accessor for PXAppIntentsNSError);

  return MEMORY[0x1EEDC6AD0](a1, v2);
}

uint64_t sub_1A3F9A874(uint64_t a1)
{
  v2 = sub_1A3F9A9E4(&qword_1EB12F688, type metadata accessor for PXAppIntentsNSError);

  return MEMORY[0x1EEDC6AC0](a1, v2);
}

uint64_t sub_1A3F9A8E0(uint64_t a1)
{
  v2 = sub_1A3F9A9E4(&qword_1EB12F640, type metadata accessor for PXAppIntentsNSError);

  return MEMORY[0x1EEDC3B70](a1, v2);
}

uint64_t sub_1A3F9A94C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1A3F9A9E4(&qword_1EB12F640, type metadata accessor for PXAppIntentsNSError);

  return MEMORY[0x1EEDC3BA8](a1, a2, a3, v6);
}

uint64_t sub_1A3F9A9E4(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1A3F9AA30()
{
  result = qword_1EB12F650;
  if (!qword_1EB12F650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12F650);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PXAppIntentsUserPresentableError(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 17))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 16);
  if (v3 <= 3)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for PXAppIntentsUserPresentableError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 16) = 0;
    *result = a2 - 253;
    *(result + 8) = 0;
    if (a3 >= 0xFD)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
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

uint64_t sub_1A3F9AB20(uint64_t a1)
{
  if (*(a1 + 16) <= 2u)
  {
    return *(a1 + 16);
  }

  else
  {
    return (*a1 + 3);
  }
}

uint64_t sub_1A3F9AB38(uint64_t result, unsigned int a2)
{
  if (a2 >= 3)
  {
    *result = a2 - 3;
    *(result + 8) = 0;
    LOBYTE(a2) = 3;
  }

  *(result + 16) = a2;
  return result;
}

unint64_t sub_1A3F9ADFC()
{
  result = qword_1EB126610;
  if (!qword_1EB126610)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EB126610);
  }

  return result;
}

uint64_t sub_1A3F9AE64()
{
  v1 = *v0;
  sub_1A524EC94();
  sub_1A3C9D5A4(v1);
  sub_1A524C794();

  return sub_1A524ECE4();
}

uint64_t sub_1A3F9AEC8()
{
  sub_1A3C9D5A4(*v0);
  sub_1A524C794();
}

uint64_t sub_1A3F9AF1C()
{
  v1 = *v0;
  sub_1A524EC94();
  sub_1A3C9D5A4(v1);
  sub_1A524C794();

  return sub_1A524ECE4();
}

uint64_t sub_1A3F9AF7C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1A3C9D5A4(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1A3F9B024()
{
  v1 = v0;
  v2 = sub_1A5241144();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1A5244EB4();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for LemonadeBookmark.CollectionIdentifier(0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = (v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1A3C581A4(v1, v12, type metadata accessor for LemonadeBookmark.CollectionIdentifier);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 4)
  {
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload != 2)
      {
        if (EnumCaseMultiPayload == 3)
        {
          (*(v7 + 32))(v9, v12, v6);
          v26 = 0;
          v27 = 0xE000000000000000;
          MEMORY[0x1A5907B60](0x207974696C697475, 0xE800000000000000);
          sub_1A524E624();
          v14 = v26;
          (*(v7 + 8))(v9, v6);
          return v14;
        }

        else
        {
          sub_1A3C582D4(v12, type metadata accessor for LemonadeBookmark.CollectionIdentifier);
          return 1801678701;
        }
      }

      v16 = *v12;
      v17 = v12[1];
      v26 = 0;
      v27 = 0xE000000000000000;
      sub_1A524E404();

      v21 = 0x80000001A53BF940;
      v22 = 0xD00000000000001CLL;
      goto LABEL_22;
    }

    if (!EnumCaseMultiPayload)
    {
      v16 = *v12;
      v17 = v12[1];
      v26 = 0;
      v27 = 0xE000000000000000;
      sub_1A524E404();

      v18 = "photoKitLocalIdentifier ";
LABEL_21:
      v21 = (v18 - 32) | 0x8000000000000000;
      v22 = 0xD000000000000018;
LABEL_22:
      v26 = v22;
      v27 = v21;
      MEMORY[0x1A5907B60](v16, v17);
      goto LABEL_23;
    }

    v20 = *v12;
    v26 = 0x49554764756F6C63;
    v27 = 0xEA00000000002044;
    goto LABEL_19;
  }

  if (EnumCaseMultiPayload <= 6)
  {
    if (EnumCaseMultiPayload != 5)
    {
      v16 = *v12;
      v17 = v12[1];
      v26 = 0;
      v27 = 0xE000000000000000;
      sub_1A524E404();

      v18 = "photoKitCloudIdentifier ";
      goto LABEL_21;
    }

    v19 = *v12;
    v26 = 0;
    v27 = 0xE000000000000000;
    sub_1A524E404();

    v26 = 0xD000000000000013;
    v27 = 0x80000001A53BF920;
    v25[1] = v19;
    v20 = sub_1A524EA44();
LABEL_19:
    MEMORY[0x1A5907B60](v20);
LABEL_23:

    return v26;
  }

  if (EnumCaseMultiPayload == 7)
  {
    (*(v3 + 32))(v5, v12, v2);
    v26 = 0;
    v27 = 0xE000000000000000;
    sub_1A524E404();
    MEMORY[0x1A5907B60](0xD00000000000003CLL, 0x80000001A53BF8C0);
    sub_1A3C4BBC8(&qword_1EB12AFE8, MEMORY[0x1E6969530]);
    v23 = sub_1A524EA44();
    MEMORY[0x1A5907B60](v23);

    v24 = v26;
    (*(v3 + 8))(v5, v2);
    return v24;
  }

  else if (EnumCaseMultiPayload == 8)
  {
    return 7364973;
  }

  else
  {
    return 0x736D6574496C6C61;
  }
}

uint64_t sub_1A3F9B534(uint64_t a1)
{
  v2 = sub_1A3C4BD3C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A3F9B570(uint64_t a1)
{
  v2 = sub_1A3C4BD3C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A3F9B5AC(uint64_t a1)
{
  v2 = sub_1A3C3E2A0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A3F9B5E8(uint64_t a1)
{
  v2 = sub_1A3C3E2A0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A3F9B624(uint64_t a1)
{
  v2 = sub_1A3C3E5E0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A3F9B660(uint64_t a1)
{
  v2 = sub_1A3C3E5E0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A3F9B69C@<X0>(_BYTE *a1@<X8>)
{

  *a1 = 1;
  return result;
}

uint64_t sub_1A3F9B6CC(uint64_t a1)
{
  v2 = sub_1A3C3DB20();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A3F9B708(uint64_t a1)
{
  v2 = sub_1A3C3DB20();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A3F9B744()
{
  if (*v0)
  {
    return 0xD000000000000011;
  }

  else
  {
    return 0x656C746974;
  }
}

uint64_t sub_1A3F9B780@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x656C746974 && a2 == 0xE500000000000000;
  if (v6 || (sub_1A524EAB4() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001A53BFA30 == a2)
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

uint64_t sub_1A3F9B860(uint64_t a1)
{
  v2 = sub_1A3C3D884();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A3F9B89C(uint64_t a1)
{
  v2 = sub_1A3C3D884();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A3F9B8DC(uint64_t a1)
{
  v2 = sub_1A3C4C5B8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A3F9B918(uint64_t a1)
{
  v2 = sub_1A3C4C5B8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A3F9B954(uint64_t a1)
{
  v2 = sub_1A3C4D450();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A3F9B990(uint64_t a1)
{
  v2 = sub_1A3C4D450();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A3F9B9CC(uint64_t a1)
{
  v2 = sub_1A3C3D7D8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A3F9BA08(uint64_t a1)
{
  v2 = sub_1A3C3D7D8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A3F9BA44(uint64_t a1)
{
  v2 = sub_1A3C3DE58();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A3F9BA80(uint64_t a1)
{
  v2 = sub_1A3C3DE58();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A3F9BABC(uint64_t a1)
{
  v2 = sub_1A3C3D5C8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A3F9BAF8(uint64_t a1)
{
  v2 = sub_1A3C3D5C8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A3F9BB34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1A524EAB4();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1A3F9BBB4(uint64_t a1)
{
  v2 = sub_1A3C3DD34();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A3F9BBF0(uint64_t a1)
{
  v2 = sub_1A3C3DD34();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A3F9BC2C(void *a1)
{
  v2 = MEMORY[0x1E69E6F58];
  sub_1A3C3BB98(0, &qword_1EB1262E0, sub_1A3C4BD3C, &type metadata for LemonadeBookmark.CollectionIdentifier.AllItemsCodingKeys, MEMORY[0x1E69E6F58]);
  v98 = v3;
  v96 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v94 = &v67 - v4;
  sub_1A3C3BB98(0, &qword_1EB126310, sub_1A3C3D5C8, &type metadata for LemonadeBookmark.CollectionIdentifier.TripMiddleDateIdentifierCodingKeys, v2);
  v100 = *(v5 - 8);
  v101 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v95 = &v67 - v6;
  v99 = sub_1A5241144();
  v97 = *(v99 - 8);
  MEMORY[0x1EEE9AC00](v99);
  v93 = &v67 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3C3BB98(0, &qword_1EB126320, sub_1A3C4C5B8, &type metadata for LemonadeBookmark.CollectionIdentifier.PhotoKitCloudIdentifierCodingKeys, v2);
  v91 = *(v8 - 8);
  v92 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v90 = &v67 - v9;
  sub_1A3C3BB98(0, &qword_1EB1262D0, sub_1A3C3D7D8, &type metadata for LemonadeBookmark.CollectionIdentifier.PhotoKitSmartAlbumCodingKeys, v2);
  v87 = v10;
  v86 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v84 = &v67 - v11;
  sub_1A3C3BB98(0, &qword_1EB1262F0, sub_1A3C3D884, &type metadata for LemonadeBookmark.CollectionIdentifier.MockCodingKeys, v2);
  v88 = *(v12 - 8);
  v89 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v85 = &v67 - v13;
  sub_1A3C3BB98(0, &qword_1EB1262F8, sub_1A3C3DB20, &type metadata for LemonadeBookmark.CollectionIdentifier.MapCodingKeys, v2);
  v79 = v14;
  v77 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v75 = &v67 - v15;
  sub_1A3C3BB98(0, &qword_1EB1262E8, sub_1A3C3DD34, &type metadata for LemonadeBookmark.CollectionIdentifier.UtilityCodingKeys, v2);
  v83 = v16;
  v82 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v78 = &v67 - v17;
  v81 = sub_1A5244EB4();
  v80 = *(v81 - 8);
  MEMORY[0x1EEE9AC00](v81);
  v76 = &v67 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3C3BB98(0, &qword_1EB126308, sub_1A3C3DE58, &type metadata for LemonadeBookmark.CollectionIdentifier.PhotoKitTransientIdentifierCodingKeys, v2);
  v74 = v19;
  v73 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v72 = &v67 - v20;
  sub_1A3C3BB98(0, &qword_1EB1262D8, sub_1A3C3E2A0, &type metadata for LemonadeBookmark.CollectionIdentifier.CloudGUIDCodingKeys, v2);
  v71 = v21;
  v70 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v69 = &v67 - v22;
  sub_1A3C3BB98(0, &qword_1EB126318, sub_1A3C4D450, &type metadata for LemonadeBookmark.CollectionIdentifier.PhotoKitLocalIdentifierCodingKeys, v2);
  v68 = v23;
  v67 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v67 - v24;
  v26 = type metadata accessor for LemonadeBookmark.CollectionIdentifier(0);
  MEMORY[0x1EEE9AC00](v26);
  v28 = (&v67 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1A3C3BB98(0, &qword_1EB126300, sub_1A3C3E5E0, &type metadata for LemonadeBookmark.CollectionIdentifier.CodingKeys, v2);
  v30 = *(v29 - 8);
  v103 = v29;
  v104 = v30;
  MEMORY[0x1EEE9AC00](v29);
  v32 = &v67 - v31;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A3C3E5E0();
  v33 = v32;
  sub_1A524ED34();
  sub_1A3C581A4(v102, v28, type metadata accessor for LemonadeBookmark.CollectionIdentifier);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 4)
  {
    if (EnumCaseMultiPayload <= 1)
    {
      v35 = v32;
      if (!EnumCaseMultiPayload)
      {
        LOBYTE(v107) = 0;
        sub_1A3C4D450();
        v47 = v103;
        sub_1A524E944();
        v48 = v68;
        sub_1A524E994();

        (*(v67 + 8))(v25, v48);
        return (*(v104 + 8))(v32, v47);
      }

      LOBYTE(v107) = 1;
      sub_1A3C3E2A0();
      v54 = v69;
      v52 = v103;
      sub_1A524E944();
      v55 = v71;
      sub_1A524E994();

      v56 = &v102;
    }

    else
    {
      v35 = v32;
      if (EnumCaseMultiPayload != 2)
      {
        if (EnumCaseMultiPayload == 3)
        {
          v36 = v80;
          v37 = v76;
          v38 = v28;
          v39 = v81;
          (*(v80 + 32))(v76, v38, v81);
          LOBYTE(v107) = 3;
          sub_1A3C3DD34();
          v40 = v78;
          v41 = v103;
          sub_1A524E944();
          sub_1A3C4BBC8(&qword_1EB124C18, MEMORY[0x1E69C1278]);
          v42 = v83;
          sub_1A524E9D4();
          (*(v82 + 8))(v40, v42);
          (*(v36 + 8))(v37, v39);
          v43 = *(v104 + 8);
          v44 = v35;
LABEL_16:
          v62 = v41;
          return v43(v44, v62);
        }

        v63 = v28[2];
        LOBYTE(v107) = 5;
        sub_1A3C3D884();
        v54 = v85;
        v52 = v103;
        sub_1A524E944();
        LOBYTE(v107) = 0;
        v55 = v89;
        v64 = v105;
        sub_1A524E994();

        if (!v64)
        {
          v107 = v63;
          v106 = 1;
          sub_1A3E57C60();
          sub_1A524E9D4();
        }

        v66 = v88;
        goto LABEL_26;
      }

      LOBYTE(v107) = 2;
      sub_1A3C3DE58();
      v54 = v72;
      v52 = v103;
      sub_1A524E944();
      v55 = v74;
      sub_1A524E994();

      v56 = &v105;
    }

    v66 = *(v56 - 32);
LABEL_26:
    (*(v66 + 8))(v54, v55);
    goto LABEL_27;
  }

  if (EnumCaseMultiPayload <= 6)
  {
    v35 = v32;
    if (EnumCaseMultiPayload == 5)
    {
      v50 = *v28;
      LOBYTE(v107) = 6;
      sub_1A3C3D7D8();
      v51 = v84;
      v52 = v103;
      sub_1A524E944();
      v107 = v50;
      sub_1A3FA07D4();
      v53 = v87;
      sub_1A524E9D4();
      (*(v86 + 8))(v51, v53);
LABEL_27:
      v43 = *(v104 + 8);
      v44 = v35;
      v62 = v52;
      return v43(v44, v62);
    }

    LOBYTE(v107) = 7;
    sub_1A3C4C5B8();
    v54 = v90;
    v52 = v103;
    sub_1A524E944();
    v55 = v92;
    sub_1A524E994();

    v66 = v91;
    goto LABEL_26;
  }

  if (EnumCaseMultiPayload == 7)
  {
    v57 = v97;
    v58 = v93;
    v59 = v99;
    (*(v97 + 32))(v93, v28, v99);
    LOBYTE(v107) = 8;
    sub_1A3C3D5C8();
    v60 = v95;
    v41 = v103;
    sub_1A524E944();
    sub_1A3C4BBC8(&qword_1EB1387C0, MEMORY[0x1E6969530]);
    v61 = v101;
    sub_1A524E9D4();
    (*(v100 + 8))(v60, v61);
    (*(v57 + 8))(v58, v59);
    v43 = *(v104 + 8);
    v44 = v33;
    goto LABEL_16;
  }

  if (EnumCaseMultiPayload == 8)
  {
    LOBYTE(v107) = 4;
    sub_1A3C3DB20();
    v45 = v75;
    v46 = v103;
    sub_1A524E944();
    (*(v77 + 8))(v45, v79);
  }

  else
  {
    LOBYTE(v107) = 9;
    sub_1A3C4BD3C();
    v65 = v94;
    v46 = v103;
    sub_1A524E944();
    (*(v96 + 8))(v65, v98);
  }

  return (*(v104 + 8))(v32, v46);
}

uint64_t sub_1A3F9CC00()
{
  v1 = sub_1A5241144();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1A5244EB4();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for LemonadeBookmark.CollectionIdentifier(0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = (&v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1A3C581A4(v0, v11, type metadata accessor for LemonadeBookmark.CollectionIdentifier);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 4)
  {
    if (EnumCaseMultiPayload <= 6)
    {
      if (EnumCaseMultiPayload != 5)
      {
        v15 = 7;
        goto LABEL_21;
      }

      v16 = *v11;
      MEMORY[0x1A590A010](6);
      v14 = v16;
    }

    else
    {
      if (EnumCaseMultiPayload == 7)
      {
        (*(v2 + 32))(v4, v11, v1);
        MEMORY[0x1A590A010](8);
        sub_1A3C4BBC8(&qword_1EB12F6B0, MEMORY[0x1E6969530]);
        sub_1A524C4B4();
        return (*(v2 + 8))(v4, v1);
      }

      if (EnumCaseMultiPayload == 8)
      {
        v14 = 4;
      }

      else
      {
        v14 = 9;
      }
    }

    return MEMORY[0x1A590A010](v14);
  }

  if (EnumCaseMultiPayload <= 1)
  {
    v15 = EnumCaseMultiPayload != 0;
LABEL_21:
    MEMORY[0x1A590A010](v15);
    sub_1A524C794();
  }

  if (EnumCaseMultiPayload == 2)
  {
    v15 = 2;
    goto LABEL_21;
  }

  if (EnumCaseMultiPayload == 3)
  {
    (*(v6 + 32))(v8, v11, v5);
    MEMORY[0x1A590A010](3);
    sub_1A3C4BBC8(&qword_1EB12F6B8, MEMORY[0x1E69C1278]);
    sub_1A524C4B4();
    return (*(v6 + 8))(v8, v5);
  }

  else
  {
    v17 = v11[2];
    MEMORY[0x1A590A010](5);
    sub_1A524C794();

    v18 = 0.0;
    if (v17 != 0.0)
    {
      v18 = v17;
    }

    return MEMORY[0x1A590A040](*&v18);
  }
}

uint64_t sub_1A3F9CFDC()
{
  sub_1A524EC94();
  sub_1A3F9CC00();
  return sub_1A524ECE4();
}

uint64_t sub_1A3F9D020()
{
  sub_1A524EC94();
  sub_1A3F9CC00();
  return sub_1A524ECE4();
}

uint64_t LemonadeBookmark.id.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t sub_1A3F9D0E8(uint64_t a1)
{
  v3 = *(a1 + 16);
  v4 = type metadata accessor for LemonadeBookmark(0);
  if (sub_1A3CA1BC4(v1 + *(v4 + 24), a1 + *(v4 + 24)))
  {
    v5 = sub_1A3C9D5A4(*(v1 + 16));
    v7 = v6;
    if (v5 == sub_1A3C9D5A4(v3) && v7 == v8)
    {
      v10 = 1;
    }

    else
    {
      v10 = sub_1A524EAB4();
    }
  }

  else
  {
    v10 = 0;
  }

  return v10 & 1;
}

uint64_t sub_1A3F9D198(unsigned __int8 a1, uint64_t a2)
{
  v5 = type metadata accessor for LemonadeBookmark(0);
  if (sub_1A3CA1BC4(v2 + *(v5 + 24), a2))
  {
    v6 = sub_1A3C9D5A4(*(v2 + 16));
    v8 = v7;
    if (v6 == sub_1A3C9D5A4(a1) && v8 == v9)
    {
      v11 = 1;
    }

    else
    {
      v11 = sub_1A524EAB4();
    }
  }

  else
  {
    v11 = 0;
  }

  return v11 & 1;
}

uint64_t sub_1A3F9D248@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x65756C61765FLL && a2 == 0xE600000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1A524EAB4();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1A3F9D2CC(uint64_t a1)
{
  v2 = sub_1A3C57EE8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A3F9D308(uint64_t a1)
{
  v2 = sub_1A3C57EE8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A3F9D344(void *a1)
{
  sub_1A3C3BB98(0, &qword_1EB1262C8, sub_1A3C57EE8, &type metadata for LemonadeBookmark.PhotoKitSmartAlbumSubtype.CodingKeys, MEMORY[0x1E69E6F58]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v8 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A3C57EE8();
  sub_1A524ED34();
  sub_1A524E9C4();
  return (*(v4 + 8))(v6, v3);
}

uint64_t LemonadeBookmark.description.getter()
{
  sub_1A524E404();
  MEMORY[0x1A5907B60](0xD000000000000014, 0x80000001A53BF9B0);
  MEMORY[0x1A5907B60](*v0, *(v0 + 8));
  MEMORY[0x1A5907B60](0x3A646E696B20, 0xE600000000000000);
  v1 = sub_1A3C9D5A4(*(v0 + 16));
  MEMORY[0x1A5907B60](v1);

  MEMORY[0x1A5907B60](0xD000000000000016, 0x80000001A53BF9D0);
  type metadata accessor for LemonadeBookmark(0);
  v2 = sub_1A3F9B024();
  MEMORY[0x1A5907B60](v2);

  return 0;
}

uint64_t static LemonadeBookmark.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (!v4 && (sub_1A524EAB4() & 1) == 0)
  {
    return 0;
  }

  v5 = *(a2 + 16);
  v6 = sub_1A3C9D5A4(*(a1 + 16));
  v8 = v7;
  if (v6 == sub_1A3C9D5A4(v5) && v8 == v9)
  {
  }

  else
  {
    v11 = sub_1A524EAB4();

    if ((v11 & 1) == 0)
    {
      return 0;
    }
  }

  v13 = *(type metadata accessor for LemonadeBookmark(0) + 24);

  return sub_1A3CA1BC4(a1 + v13, a2 + v13);
}

uint64_t sub_1A3F9D6A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1A3FA0A08(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1A3F9D6CC(uint64_t a1)
{
  v2 = sub_1A3C4B384();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A3F9D708(uint64_t a1)
{
  v2 = sub_1A3C4B384();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t LemonadeBookmark.encode(to:)(void *a1)
{
  v3 = v1;
  sub_1A3C3BB98(0, &qword_1EB126328, sub_1A3C4B384, &type metadata for LemonadeBookmark.CodingKeys, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v11 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A3C4B384();
  sub_1A524ED34();
  v15 = 0;
  sub_1A524E994();
  if (!v2)
  {
    v14 = *(v3 + 16);
    v13 = 1;
    sub_1A3FA0948();
    sub_1A524E9D4();
    type metadata accessor for LemonadeBookmark(0);
    v12 = 2;
    type metadata accessor for LemonadeBookmark.CollectionIdentifier(0);
    sub_1A3C4BBC8(&qword_1EB12A598, type metadata accessor for LemonadeBookmark.CollectionIdentifier);
    sub_1A524E9D4();
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t LemonadeBookmark.hash(into:)()
{
  sub_1A524C794();
  sub_1A3C9D5A4(*(v0 + 16));
  sub_1A524C794();

  type metadata accessor for LemonadeBookmark(0);
  return sub_1A3F9CC00();
}

uint64_t LemonadeBookmark.hashValue.getter()
{
  sub_1A524EC94();
  sub_1A524C794();
  sub_1A3C9D5A4(*(v0 + 16));
  sub_1A524C794();

  type metadata accessor for LemonadeBookmark(0);
  sub_1A3F9CC00();
  return sub_1A524ECE4();
}

uint64_t sub_1A3F9DA60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  *a5 = a1;
  *(a5 + 8) = a2;
  *(a5 + 16) = a3;
  v7 = type metadata accessor for LemonadeBookmark(0);
  return sub_1A3C5806C(a4, a5 + *(v7 + 24), type metadata accessor for LemonadeBookmark.CollectionIdentifier);
}

uint64_t sub_1A3F9DAD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (!v6 && (sub_1A524EAB4() & 1) == 0)
  {
    return 0;
  }

  v7 = *(a2 + 16);
  v8 = sub_1A3C9D5A4(*(a1 + 16));
  v10 = v9;
  if (v8 == sub_1A3C9D5A4(v7) && v10 == v11)
  {
  }

  else
  {
    v13 = sub_1A524EAB4();

    if ((v13 & 1) == 0)
    {
      return 0;
    }
  }

  v15 = *(a3 + 24);

  return sub_1A3CA1BC4(a1 + v15, a2 + v15);
}

uint64_t sub_1A3F9DBCC()
{
  sub_1A524EC94();
  sub_1A524C794();
  sub_1A3C9D5A4(*(v0 + 16));
  sub_1A524C794();

  sub_1A3F9CC00();
  return sub_1A524ECE4();
}

uint64_t sub_1A3F9DC54()
{
  sub_1A524C794();
  sub_1A3C9D5A4(*(v0 + 16));
  sub_1A524C794();

  return sub_1A3F9CC00();
}

uint64_t sub_1A3F9DCC0()
{
  sub_1A524EC94();
  sub_1A524C794();
  sub_1A3C9D5A4(*(v0 + 16));
  sub_1A524C794();

  sub_1A3F9CC00();
  return sub_1A524ECE4();
}

uint64_t sub_1A3F9DD48@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  sub_1A3CA0974(0, &qword_1EB125B40, sub_1A3FA099C, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v24 - v9;
  sub_1A3FA099C();
  v12 = v11;
  v13 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v24 - v17;
  sub_1A3F9E010(a3, v10);
  __swift_destroy_boxed_opaque_existential_0(a3);
  if ((*(v13 + 48))(v10, 1, v12) == 1)
  {

    sub_1A3C2C658(v10, &qword_1EB125B40, sub_1A3FA099C, MEMORY[0x1E69E6720], sub_1A3CA0974);
    v19 = type metadata accessor for LemonadeBookmark(0);
    return (*(*(v19 - 8) + 56))(a4, 1, 1, v19);
  }

  else
  {
    sub_1A3C5806C(v10, v18, sub_1A3FA099C);
    v21 = *v18;
    sub_1A3C5806C(v18, v15, sub_1A3FA099C);
    v22 = *(v12 + 48);
    *a4 = a1;
    *(a4 + 8) = a2;
    *(a4 + 16) = v21;
    v23 = type metadata accessor for LemonadeBookmark(0);
    sub_1A3C5806C(&v15[v22], a4 + *(v23 + 24), type metadata accessor for LemonadeBookmark.CollectionIdentifier);
    return (*(*(v23 - 8) + 56))(a4, 0, 1, v23);
  }
}

uint64_t sub_1A3F9E010@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  sub_1A3CA0974(0, &qword_1EB125B50, type metadata accessor for LemonadeBookmark.CollectionIdentifier, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v23[-v5];
  v7 = type metadata accessor for LemonadeBookmark.CollectionIdentifier(0);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v23[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1A3C341C8(a1, v24);
  sub_1A3C652C8(0, &qword_1EB128C70);
  sub_1A3C652C8(0, &qword_1EB1292C8);
  if (swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_0(v23);
  }

  else
  {
    v11 = a1[3];
    __swift_project_boxed_opaque_existential_1(a1, v11);
    PhotosModel.collectionKind.getter(v11, v24);
    v12 = v24[0];
    if (v24[0] != 24)
    {
      v13 = a1[3];
      __swift_project_boxed_opaque_existential_1(a1, v13);
      v14 = PhotosModel.photokitObject.getter(v13);
      if (v14)
      {
        v15 = v14;
        sub_1A3F9F66C(v14, v6);
      }

      else
      {
        sub_1A3C341C8(a1, v24);
        sub_1A3C652C8(0, &qword_1EB12F710);
        if (swift_dynamicCast())
        {
          __swift_destroy_boxed_opaque_existential_0(v23);
          swift_storeEnumTagMultiPayload();
          (*(v8 + 56))(v6, 0, 1, v7);
        }

        else
        {
          (*(v8 + 56))(v6, 1, 1, v7);
        }
      }

      if ((*(v8 + 48))(v6, 1, v7) == 1)
      {
        sub_1A3C2C658(v6, &qword_1EB125B50, type metadata accessor for LemonadeBookmark.CollectionIdentifier, MEMORY[0x1E69E6720], sub_1A3CA0974);
      }

      else
      {
        sub_1A3C5806C(v6, v10, type metadata accessor for LemonadeBookmark.CollectionIdentifier);
        v24[0] = v12;
        v16 = sub_1A3FA0B20(v24, v10);
        if (v16 != 11)
        {
          v19 = v16;
          sub_1A3FA099C();
          v21 = v20;
          v22 = *(v20 + 48);
          *a2 = v19;
          sub_1A3C5806C(v10, &a2[v22], type metadata accessor for LemonadeBookmark.CollectionIdentifier);
          return (*(*(v21 - 8) + 56))(a2, 0, 1, v21);
        }

        sub_1A3C582D4(v10, type metadata accessor for LemonadeBookmark.CollectionIdentifier);
      }
    }
  }

  sub_1A3FA099C();
  return (*(*(v17 - 8) + 56))(a2, 1, 1, v17);
}

uint64_t sub_1A3F9E430()
{
  v0 = sub_1A52411C4();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A52411B4();
  v4 = sub_1A5241164();
  (*(v1 + 8))(v3, v0);
  return v4;
}

uint64_t sub_1A3F9E50C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  sub_1A3CA0974(0, &qword_1EB125B40, sub_1A3FA099C, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v24 - v9;
  sub_1A3FA099C();
  v12 = v11;
  v13 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v24 - v17;
  sub_1A3F9E7D0(a3, v10);

  if ((*(v13 + 48))(v10, 1, v12) == 1)
  {

    sub_1A3C2C658(v10, &qword_1EB125B40, sub_1A3FA099C, MEMORY[0x1E69E6720], sub_1A3CA0974);
    v19 = type metadata accessor for LemonadeBookmark(0);
    return (*(*(v19 - 8) + 56))(a4, 1, 1, v19);
  }

  else
  {
    sub_1A3C5806C(v10, v18, sub_1A3FA099C);
    v21 = *v18;
    sub_1A3C5806C(v18, v15, sub_1A3FA099C);
    v22 = *(v12 + 48);
    *a4 = a1;
    *(a4 + 8) = a2;
    *(a4 + 16) = v21;
    v23 = type metadata accessor for LemonadeBookmark(0);
    sub_1A3C5806C(&v15[v22], a4 + *(v23 + 24), type metadata accessor for LemonadeBookmark.CollectionIdentifier);
    return (*(*(v23 - 8) + 56))(a4, 0, 1, v23);
  }
}

uint64_t sub_1A3F9E7D0@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  sub_1A3CA0974(0, &qword_1EB125B50, type metadata accessor for LemonadeBookmark.CollectionIdentifier, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v21[-v5];
  v7 = type metadata accessor for LemonadeBookmark.CollectionIdentifier(0);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v21[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  PHObject.photosPickerCollectionType.getter(&v23);
  v11 = v23;
  if (v23 != 24)
  {
    sub_1A3F9F66C(a1, v6);
    if ((*(v8 + 48))(v6, 1, v7) == 1)
    {
      sub_1A3C2C658(v6, &qword_1EB125B50, type metadata accessor for LemonadeBookmark.CollectionIdentifier, MEMORY[0x1E69E6720], sub_1A3CA0974);
    }

    else
    {
      sub_1A3C5806C(v6, v10, type metadata accessor for LemonadeBookmark.CollectionIdentifier);
      v22 = v11;
      v15 = sub_1A3FA0B20(&v22, v10);
      if (v15 != 11)
      {
        v17 = v15;
        sub_1A3FA099C();
        v19 = v18;
        v20 = *(v18 + 48);
        *a2 = v17;
        sub_1A3C5806C(v10, &a2[v20], type metadata accessor for LemonadeBookmark.CollectionIdentifier);
        return (*(*(v19 - 8) + 56))(a2, 0, 1, v19);
      }

      sub_1A3C582D4(v10, type metadata accessor for LemonadeBookmark.CollectionIdentifier);
    }

    sub_1A3FA099C();
    return (*(*(v16 - 8) + 56))(a2, 1, 1, v16);
  }

  sub_1A3FA099C();
  v13 = *(*(v12 - 8) + 56);

  return v13(a2, 1, 1, v12);
}

id sub_1A3F9EAF8(void *a1)
{
  v3 = type metadata accessor for LemonadeBookmark.CollectionIdentifier(0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(type metadata accessor for LemonadeBookmark(0) + 24);
  swift_storeEnumTagMultiPayload();
  v7 = sub_1A3CA1BC4(v1 + v6, v5);
  sub_1A3C582D4(v5, type metadata accessor for LemonadeBookmark.CollectionIdentifier);
  if ((v7 & 1) == 0)
  {
    swift_storeEnumTagMultiPayload();
    v8 = sub_1A3CA1BC4(v1 + v6, v5);
    sub_1A3C582D4(v5, type metadata accessor for LemonadeBookmark.CollectionIdentifier);
    if ((v8 & 1) == 0)
    {
      return 0;
    }
  }

  v9 = [a1 px_virtualCollections];
  v10 = v9;
  v11 = *(v1 + 16);
  v12 = &selRef_px_rootAlbumCollectionList;
  v13 = &selRef_sharedAlbumsCollectionList;
  v14 = &selRef_featuredPhotosCollection;
  if (v11 != 9)
  {
    v14 = &selRef_mapCollection;
  }

  if (v11 != 8)
  {
    v13 = v14;
  }

  v15 = &selRef_mediaTypesCollectionList;
  if (v11 != 6)
  {
    v15 = &selRef_utilitiesCollectionList;
  }

  if (*(v1 + 16) <= 7u)
  {
    v13 = v15;
  }

  v16 = &selRef_peopleCollection;
  if ((v11 - 4) >= 2)
  {
    v16 = &selRef_eventsCollection;
  }

  v17 = &selRef_tripsCollection;
  if (v11 != 1)
  {
    v17 = &selRef_memoriesCollection;
  }

  if (*(v1 + 16))
  {
    v12 = v17;
    v18 = v9;
  }

  else
  {
    v18 = a1;
  }

  if (*(v1 + 16) <= 2u)
  {
    v19 = v18;
  }

  else
  {
    v12 = v16;
    v19 = v9;
  }

  if (*(v1 + 16) <= 5u)
  {
    v20 = v12;
  }

  else
  {
    v20 = v13;
  }

  if (*(v1 + 16) <= 5u)
  {
    v9 = v19;
  }

  v21 = [v9 *v20];

  return v21;
}

void *sub_1A3F9ECF0()
{
  v0 = MEMORY[0x1E69E6720];
  sub_1A3CA0974(0, &qword_1EB125B50, type metadata accessor for LemonadeBookmark.CollectionIdentifier, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = (&v50 - v2);
  v66 = type metadata accessor for LemonadeBookmark.CollectionIdentifier(0);
  v68 = *(v66 - 8);
  MEMORY[0x1EEE9AC00](v66);
  v5 = &v50 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3CA0974(0, &qword_1EB125B40, sub_1A3FA099C, v0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v50 - v7;
  sub_1A3FA099C();
  v10 = v9;
  v11 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v57 = &v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v56 = &v50 - v14;
  v63 = sub_1A52411C4();
  v15 = *(v63 - 8);
  MEMORY[0x1EEE9AC00](v63);
  v17 = &v50 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = type metadata accessor for LemonadeBookmark(0);
  v54 = *(v55 - 8);
  MEMORY[0x1EEE9AC00](v55);
  v62 = &v50 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v53 = (&v50 - v20);
  MEMORY[0x1EEE9AC00](v21);
  v61 = &v50 - v22;
  v52 = sub_1A5240C64();
  v51 = *(v52 - 8);
  MEMORY[0x1EEE9AC00](v52);
  v24 = &v50 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_unknownObjectRetain();
  sub_1A5240C74();
  sub_1A5240C54();
  if (v72)
  {
    v64 = (v68 + 6);
    v68 = (v11 + 56);
    v69 = (v15 + 8);
    v58 = (v11 + 48);
    v59 = v5;
    v65 = MEMORY[0x1E69E7CC0];
    v25 = &qword_1EB1265D0;
    v26 = v63;
    v60 = v3;
    v67 = v24;
    while (1)
    {
      sub_1A3C57128(&v71, v73);
      sub_1A3C2F0BC(v73, &v71);
      sub_1A3C52C70(0, v25);
      if (swift_dynamicCast())
      {
        break;
      }

      __swift_destroy_boxed_opaque_existential_0(v73);
LABEL_4:
      sub_1A5240C54();
      if (!v72)
      {
        goto LABEL_24;
      }
    }

    v27 = v25;
    v28 = v70;
    sub_1A52411B4();
    v29 = sub_1A5241164();
    v31 = v30;
    (*v69)(v17, v26);
    PHObject.photosPickerCollectionType.getter(&v71);
    v32 = v71;
    if (v71 == 24)
    {
    }

    else
    {
      sub_1A3F9F66C(v28, v3);
      if ((*v64)(v3, 1, v66) != 1)
      {
        v33 = v8;
        v34 = v59;
        sub_1A3C5806C(v3, v59, type metadata accessor for LemonadeBookmark.CollectionIdentifier);
        LOBYTE(v71) = v32;
        v35 = sub_1A3FA0B20(&v71, v34);

        if (v35 == 11)
        {
          sub_1A3C582D4(v34, type metadata accessor for LemonadeBookmark.CollectionIdentifier);
          v36 = 1;
        }

        else
        {
          v37 = *(v10 + 48);
          *v33 = v35;
          sub_1A3C5806C(v34, &v33[v37], type metadata accessor for LemonadeBookmark.CollectionIdentifier);
          v36 = 0;
        }

        (*v68)(v33, v36, 1, v10);
        v8 = v33;
        if ((*v58)(v33, 1, v10) != 1)
        {
          v38 = v33;
          v39 = v56;
          sub_1A3C5806C(v38, v56, sub_1A3FA099C);
          v40 = *v39;
          v41 = v39;
          v42 = v57;
          sub_1A3C5806C(v41, v57, sub_1A3FA099C);
          v43 = *(v10 + 48);
          v44 = v53;
          *v53 = v29;
          *(v44 + 8) = v31;
          *(v44 + 16) = v40;
          sub_1A3C5806C(v42 + v43, v44 + *(v55 + 24), type metadata accessor for LemonadeBookmark.CollectionIdentifier);
          v45 = v61;
          sub_1A3C5806C(v44, v61, type metadata accessor for LemonadeBookmark);
          sub_1A3C581A4(v45, v62, type metadata accessor for LemonadeBookmark);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v65 = sub_1A3FA05D8(0, v65[2] + 1, 1, v65);
          }

          v47 = v65[2];
          v46 = v65[3];
          v3 = v60;
          v26 = v63;
          if (v47 >= v46 >> 1)
          {
            v65 = sub_1A3FA05D8(v46 > 1, v47 + 1, 1, v65);
          }

          sub_1A3C582D4(v61, type metadata accessor for LemonadeBookmark);
          __swift_destroy_boxed_opaque_existential_0(v73);
          v48 = v65;
          v65[2] = v47 + 1;
          sub_1A3C5806C(v62, v48 + ((*(v54 + 80) + 32) & ~*(v54 + 80)) + *(v54 + 72) * v47, type metadata accessor for LemonadeBookmark);
          goto LABEL_12;
        }

        v3 = v60;
        v26 = v63;
LABEL_11:
        __swift_destroy_boxed_opaque_existential_0(v73);
        sub_1A3C2C658(v8, &qword_1EB125B40, sub_1A3FA099C, MEMORY[0x1E69E6720], sub_1A3CA0974);
LABEL_12:
        v25 = v27;
        v24 = v67;
        goto LABEL_4;
      }

      sub_1A3C2C658(v3, &qword_1EB125B50, type metadata accessor for LemonadeBookmark.CollectionIdentifier, MEMORY[0x1E69E6720], sub_1A3CA0974);
    }

    (*v68)(v8, 1, 1, v10);
    goto LABEL_11;
  }

  v65 = MEMORY[0x1E69E7CC0];
LABEL_24:
  (*(v51 + 8))(v24, v52);
  sub_1A3C2C658(&v71, &qword_1EB126130, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720], sub_1A3C371F0);
  return v65;
}

uint64_t sub_1A3F9F66C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v87 = a2;
  v3 = MEMORY[0x1E69E6720];
  sub_1A3CA0974(0, &qword_1EB124C08, MEMORY[0x1E69C1278], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v86 = &v78 - v5;
  v6 = sub_1A5244EB4();
  v84 = *(v6 - 8);
  v85 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v82 = &v78 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3CA0974(0, &qword_1EB12AFE0, MEMORY[0x1E6969530], v3);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v78 - v9;
  v11 = sub_1A5241144();
  v83 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v78 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1A5246F24();
  v15 = *(v14 - 8);
  *&v16 = MEMORY[0x1EEE9AC00](v14).n128_u64[0];
  v18 = &v78 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = [a1 localIdentifier];
  v20 = sub_1A524C674();
  v22 = v21;

  objc_opt_self();
  v23 = swift_dynamicCastObjCClass();
  if (v23)
  {
    v24 = v23;

    v25 = [v24 cloudGUID];
LABEL_3:
    v26 = v25;
    v27 = sub_1A524C674();
    v29 = v28;

    v30 = v87;
    *v87 = v27;
    v30[1] = v29;
    v31 = type metadata accessor for LemonadeBookmark.CollectionIdentifier(0);
    swift_storeEnumTagMultiPayload();
    v32 = *(*(v31 - 8) + 56);

    return v32(v30, 0, 1, v31);
  }

  v79 = v13;
  v80 = v18;
  v34 = v86;
  v81 = v22;
  objc_opt_self();
  v35 = swift_dynamicCastObjCClass();
  v36 = a1;
  if (!v35)
  {
    objc_opt_self();
    v47 = swift_dynamicCastObjCClass();
    if (v47 && (v48 = v47, sub_1A5244D04(), v88[3] = sub_1A3C52C70(0, &qword_1EB126AA0), v88[0] = v48, v49 = a1, v50 = sub_1A5244E84(), __swift_destroy_boxed_opaque_existential_0(v88), (v50 & 1) != 0))
    {
      sub_1A5244E64();
      sub_1A5244E44();
      v51 = v83;
      v52 = v11;
      if ((*(v83 + 48))(v10, 1, v11) != 1)
      {

        v72 = *(v51 + 32);
        v73 = v79;
        v72(v79, v10, v52);
        v74 = v87;
        v72(v87, v73, v52);
        v64 = type metadata accessor for LemonadeBookmark.CollectionIdentifier(0);
        swift_storeEnumTagMultiPayload();
        v70 = *(*(v64 - 8) + 56);
        v71 = v74;
        return v70(v71, 0, 1, v64);
      }

      sub_1A3C2C658(v10, &qword_1EB12AFE0, MEMORY[0x1E6969530], MEMORY[0x1E69E6720], sub_1A3CA0974);
      v53 = v87;
    }

    else
    {
      objc_opt_self();
      v54 = swift_dynamicCastObjCClass();
      if (v54)
      {
        v55 = v54;
        sub_1A3FA00DC(v54, v34);
        v57 = v84;
        v56 = v85;
        if ((*(v84 + 48))(v34, 1, v85) != 1)
        {

          v68 = *(v57 + 32);
          v69 = v82;
          v68(v82, v34, v56);
          v53 = v87;
          v68(v87, v69, v56);
          v64 = type metadata accessor for LemonadeBookmark.CollectionIdentifier(0);
          goto LABEL_27;
        }

        sub_1A3C2C658(v34, &qword_1EB124C08, MEMORY[0x1E69C1278], MEMORY[0x1E69E6720], sub_1A3CA0974);
        v58 = [v55 transientIdentifier];
        v59 = v81;
        if (v58)
        {
          v60 = v58;

          v61 = sub_1A524C674();
          v63 = v62;

          if (![v55 px_isMapVirtualCollection])
          {
            v75 = [v55 px_isFeaturedPhotosCollection];
            v76 = v87;
            if ((v75 & 1) != 0 || ([v55 px_isPeopleVirtualCollection] & 1) != 0 || (objc_msgSend(v55, sel_px_isTripsVirtualCollection) & 1) != 0 || objc_msgSend(v55, sel_px_isMemoriesVirtualCollection))
            {

              v64 = type metadata accessor for LemonadeBookmark.CollectionIdentifier(0);
            }

            else
            {
              *v76 = v61;
              v76[1] = v63;
              v64 = type metadata accessor for LemonadeBookmark.CollectionIdentifier(0);
            }

            swift_storeEnumTagMultiPayload();
            v70 = *(*(v64 - 8) + 56);
            v71 = v76;
            return v70(v71, 0, 1, v64);
          }

          v64 = type metadata accessor for LemonadeBookmark.CollectionIdentifier(0);
          v53 = v87;
          goto LABEL_27;
        }

        if ([v55 assetCollectionType] == 2 && objc_msgSend(v55, sel_assetCollectionSubtype) != 1000000204)
        {

          v77 = [v55 assetCollectionSubtype];
          v53 = v87;
          *v87 = v77;
          v64 = type metadata accessor for LemonadeBookmark.CollectionIdentifier(0);
          goto LABEL_27;
        }

        v53 = v87;
        *v87 = v20;
        v53[1] = v59;
        goto LABEL_25;
      }

      objc_opt_self();
      v65 = swift_dynamicCastObjCClass();
      v53 = v87;
      if (v65)
      {
        v66 = v65;
        if (([v65 px_isTopLevelFolder] & 1) != 0 || objc_msgSend(v66, sel_isTransient))
        {

          v64 = type metadata accessor for LemonadeBookmark.CollectionIdentifier(0);
LABEL_27:
          swift_storeEnumTagMultiPayload();
          v70 = *(*(v64 - 8) + 56);
          v71 = v53;
          return v70(v71, 0, 1, v64);
        }
      }
    }

    v67 = v81;
    *v53 = v20;
    v53[1] = v67;
LABEL_25:
    v64 = type metadata accessor for LemonadeBookmark.CollectionIdentifier(0);
    goto LABEL_27;
  }

  v37 = v35;

  v25 = [v37 scopeIdentifier];
  if (v25)
  {
    goto LABEL_3;
  }

  v38 = sub_1A3C56D80();
  v39 = v80;
  v40 = v14;
  (*(v15 + 16))(v80, v38, v14);
  v41 = v36;
  v42 = sub_1A5246F04();
  v43 = sub_1A524D244();

  if (os_log_type_enabled(v42, v43))
  {
    v44 = swift_slowAlloc();
    v88[0] = swift_slowAlloc();
    *v44 = 136446210;
    v45 = [v37 uuid];
    sub_1A524C674();

    sub_1A3C2EF94();
  }

  (*(v15 + 8))(v39, v40);
  v46 = type metadata accessor for LemonadeBookmark.CollectionIdentifier(0);
  return (*(*(v46 - 8) + 56))(v87, 1, 1, v46);
}

uint64_t sub_1A3FA00DC@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  sub_1A3CA0974(0, &qword_1EB124BF8, MEMORY[0x1E69C1440], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v21 - v5;
  v7 = sub_1A5245154();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  objc_opt_self();
  v11 = swift_dynamicCastObjCClass();
  if (v11)
  {
    sub_1A3FA0464([v11 type], v6);
    if ((*(v8 + 48))(v6, 1, v7) != 1)
    {
      v14 = *(v8 + 32);
      v14(v10, v6, v7);
      v14(a2, v10, v7);
      v15 = *MEMORY[0x1E69C1270];
      v16 = sub_1A5244EB4();
      v17 = *(v16 - 8);
      (*(v17 + 104))(a2, v15, v16);
      return (*(v17 + 56))(a2, 0, 1, v16);
    }

    sub_1A3C2C658(v6, &qword_1EB124BF8, MEMORY[0x1E69C1440], MEMORY[0x1E69E6720], sub_1A3CA0974);
  }

  v12 = [a1 assetCollectionSubtype];
  if (v12 == 205)
  {
    v13 = MEMORY[0x1E69C1268];
  }

  else if (v12 == 1000000212)
  {
    v13 = MEMORY[0x1E69C1258];
  }

  else
  {
    if (v12 != 1000000201)
    {
      v20 = sub_1A5244EB4();
      return (*(*(v20 - 8) + 56))(a2, 1, 1, v20);
    }

    v13 = MEMORY[0x1E69C1260];
  }

  v18 = *v13;
  v16 = sub_1A5244EB4();
  v17 = *(v16 - 8);
  (*(v17 + 104))(a2, v18, v16);
  return (*(v17 + 56))(a2, 0, 1, v16);
}

uint64_t sub_1A3FA0464@<X0>(__int16 a1@<W0>, uint64_t a2@<X8>)
{
  v4 = sub_1A5245154();
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a1 - 1) >= 6u)
  {
    v12 = *(v5 + 56);

    return v12(a2, 1, 1, v4, v6);
  }

  else
  {
    v9 = **(&unk_1E7729CA0 + (a1 - 1));
    v10 = *(v5 + 104);
    v14 = v5;
    v10(v8, v9, v4, v6);
    (*(v14 + 32))(a2, v8, v4);
    return (*(v14 + 56))(a2, 0, 1, v4);
  }
}

size_t sub_1A3FA05D8(size_t result, int64_t a2, char a3, void *a4)
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

  sub_1A3CA0974(0, &qword_1EB126280, type metadata accessor for LemonadeBookmark, MEMORY[0x1E69E6F90]);
  v10 = *(type metadata accessor for LemonadeBookmark(0) - 8);
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
  v15 = *(type metadata accessor for LemonadeBookmark(0) - 8);
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

unint64_t sub_1A3FA07D4()
{
  result = qword_1EB12A578;
  if (!qword_1EB12A578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12A578);
  }

  return result;
}

void sub_1A3FA0828()
{
  if (!qword_1EB12F6C0)
  {
    sub_1A3FA0898();
    sub_1A524E4B4();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB12F6C0);
    }
  }
}

unint64_t sub_1A3FA0898()
{
  result = qword_1EB139C40;
  if (!qword_1EB139C40)
  {
    result = swift_getExistentialMetatypeMetadata();
    atomic_store(result, &qword_1EB139C40);
  }

  return result;
}

uint64_t sub_1A3FA08E4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LemonadeBookmark.CollectionIdentifier(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_1A3FA0948()
{
  result = qword_1EB12A568;
  if (!qword_1EB12A568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12A568);
  }

  return result;
}

void sub_1A3FA099C()
{
  if (!qword_1EB125B48)
  {
    type metadata accessor for LemonadeBookmark.CollectionIdentifier(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB125B48);
    }
  }
}

uint64_t sub_1A3FA0A08(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_1A524EAB4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1684957547 && a2 == 0xE400000000000000 || (sub_1A524EAB4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001A53BFAF0 == a2)
  {

    return 2;
  }

  else
  {
    v6 = sub_1A524EAB4();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_1A3FA0B20(_BYTE *a1, uint64_t a2)
{
  v4 = sub_1A5246F24();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for LemonadeBookmark.CollectionIdentifier(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v21 - v12;
  result = *a1;
  switch(*a1)
  {
    case 1:
      return result;
    case 2:
    case 4:
    case 5:
    case 6:
    case 8:
    case 0xA:
    case 0x16:
      return 11;
    case 3:
      return 2;
    case 7:
      return 4;
    case 9:
      return 5;
    case 0xB:
    case 0xF:
      return 6;
    case 0xC:
    case 0x11:
    case 0x12:
    case 0x13:
    case 0x14:
      return 7;
    case 0xD:
      return 8;
    case 0xE:
      return 9;
    case 0x15:
      return 10;
    default:
      sub_1A3C581A4(a2, v21 - v12, type metadata accessor for LemonadeBookmark.CollectionIdentifier);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload > 4)
      {
        if (EnumCaseMultiPayload == 5 || EnumCaseMultiPayload == 9)
        {
          return 0;
        }
      }

      else if (!EnumCaseMultiPayload || EnumCaseMultiPayload == 4)
      {
        sub_1A3C582D4(v13, type metadata accessor for LemonadeBookmark.CollectionIdentifier);
        return 0;
      }

      v17 = sub_1A3C4A5F8();
      (*(v5 + 16))(v7, v17, v4);
      sub_1A3C581A4(a2, v10, type metadata accessor for LemonadeBookmark.CollectionIdentifier);
      v18 = sub_1A5246F04();
      v19 = sub_1A524D244();
      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        v21[0] = swift_slowAlloc();
        v21[1] = v21[0];
        *v20 = 136315138;
        sub_1A3F9B024();
        sub_1A3C582D4(v10, type metadata accessor for LemonadeBookmark.CollectionIdentifier);
        sub_1A3C2EF94();
      }

      sub_1A3C582D4(v10, type metadata accessor for LemonadeBookmark.CollectionIdentifier);
      (*(v5 + 8))(v7, v4);
      sub_1A3C582D4(v13, type metadata accessor for LemonadeBookmark.CollectionIdentifier);
      return 11;
  }
}

unint64_t sub_1A3FA0F18()
{
  result = qword_1EB12F6C8;
  if (!qword_1EB12F6C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12F6C8);
  }

  return result;
}

unint64_t sub_1A3FA0FC0()
{
  result = qword_1EB12F6D0;
  if (!qword_1EB12F6D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12F6D0);
  }

  return result;
}

unint64_t sub_1A3FA1014()
{
  result = qword_1EB12F6D8;
  if (!qword_1EB12F6D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12F6D8);
  }

  return result;
}

void sub_1A3FA1068()
{
  if (!qword_1EB1254A0)
  {
    sub_1A3C652C8(255, &qword_1EB1254B0);
    v0 = sub_1A524DF24();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB1254A0);
    }
  }
}

unint64_t sub_1A3FA10D4()
{
  result = qword_1EB12F6E0;
  if (!qword_1EB12F6E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12F6E0);
  }

  return result;
}

unint64_t sub_1A3FA117C()
{
  result = qword_1EB12F6E8;
  if (!qword_1EB12F6E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12F6E8);
  }

  return result;
}

unint64_t sub_1A3FA11D0()
{
  result = qword_1EB12F6F0;
  if (!qword_1EB12F6F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12F6F0);
  }

  return result;
}

unint64_t sub_1A3FA12DC()
{
  result = qword_1EB12F6F8;
  if (!qword_1EB12F6F8)
  {
    sub_1A3C371F0(255, &qword_1EB12F700, &type metadata for LemonadeBookmark.Kind, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12F6F8);
  }

  return result;
}

unint64_t sub_1A3FA13A4()
{
  result = qword_1EB12F708;
  if (!qword_1EB12F708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12F708);
  }

  return result;
}

uint64_t storeEnumTagSinglePayload for LemonadeBookmark.Kind(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 10 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 10) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF6)
  {
    v4 = 0;
  }

  if (a2 > 0xF5)
  {
    v5 = ((a2 - 246) >> 8) + 1;
    *result = a2 + 10;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 10;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1A3FA15E4()
{
  result = qword_1EB19D720[0];
  if (!qword_1EB19D720[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB19D720);
  }

  return result;
}

unint64_t sub_1A3FA163C()
{
  result = qword_1EB19D830[0];
  if (!qword_1EB19D830[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB19D830);
  }

  return result;
}

unint64_t sub_1A3FA1694()
{
  result = qword_1EB19D940[0];
  if (!qword_1EB19D940[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB19D940);
  }

  return result;
}

unint64_t sub_1A3FA16EC()
{
  result = qword_1EB19DA50[0];
  if (!qword_1EB19DA50[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB19DA50);
  }

  return result;
}

unint64_t sub_1A3FA1744()
{
  result = qword_1EB19DB60[0];
  if (!qword_1EB19DB60[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB19DB60);
  }

  return result;
}

unint64_t sub_1A3FA179C()
{
  result = qword_1EB19DC70[0];
  if (!qword_1EB19DC70[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB19DC70);
  }

  return result;
}

unint64_t sub_1A3FA17F4()
{
  result = qword_1EB19DD80[0];
  if (!qword_1EB19DD80[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB19DD80);
  }

  return result;
}

unint64_t sub_1A3FA184C()
{
  result = qword_1EB19DE90[0];
  if (!qword_1EB19DE90[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB19DE90);
  }

  return result;
}

unint64_t sub_1A3FA18A4()
{
  result = qword_1EB19DFA0[0];
  if (!qword_1EB19DFA0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB19DFA0);
  }

  return result;
}

unint64_t sub_1A3FA18FC()
{
  result = qword_1EB19E0B0[0];
  if (!qword_1EB19E0B0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB19E0B0);
  }

  return result;
}

unint64_t sub_1A3FA1954()
{
  result = qword_1EB19E1C0[0];
  if (!qword_1EB19E1C0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB19E1C0);
  }

  return result;
}

void sub_1A3FA1A10()
{
  sub_1A3FA3CC8(0, &unk_1EB12B250, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v6 - v1;
  sub_1A5240E34();
  v3 = sub_1A5240E64();
  v4 = *(v3 - 8);
  if ((*(v4 + 48))(v2, 1, v3) == 1)
  {
    __break(1u);
  }

  else
  {
    v5 = sub_1A5240D44();
    (*(v4 + 8))(v2, v3);
    PXOpenSensitiveURL(v5, 0);
  }
}

uint64_t sub_1A3FA1B74()
{
  v0 = sub_1A524C634();
  v1 = PXLocalizedString(v0);

  sub_1A524C674();
  sub_1A3D5F9DC();
  return sub_1A524A464();
}

uint64_t sub_1A3FA1C08()
{
  v0 = sub_1A524C634();
  v1 = PXLocalizedString(v0);

  sub_1A524C674();
  sub_1A3D5F9DC();
  return sub_1A524A464();
}

uint64_t sub_1A3FA1CC4()
{
  sub_1A3D809E8();
  v1 = v0;
  v2 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1A5247584();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1E6982A88];
  sub_1A3CBA198(0, &qword_1EB128BA0, MEMORY[0x1E6982A98]);
  v11 = v10;
  v12 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v18 - v13;
  sub_1A5247594();
  MEMORY[0x1A59028B0](v8, v5, v9);
  (*(v6 + 8))(v8, v5);
  v18 = v5;
  v19 = v9;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  MEMORY[0x1A59028E0](v14, v11, OpaqueTypeConformance2);
  v18 = v11;
  v19 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v16 = sub_1A5247554();
  (*(v2 + 8))(v4, v1);
  (*(v12 + 8))(v14, v11);
  return v16;
}

uint64_t sub_1A3FA1FA8(uint64_t a1, uint64_t *a2)
{
  sub_1A3CB4D08();
  v4 = v3;
  __swift_allocate_value_buffer(v3, a2);
  __swift_project_value_buffer(v4, a2);
  sub_1A3FA3CC8(0, &qword_1EB12B120, MEMORY[0x1E6982AA0], MEMORY[0x1E69E6F90]);
  sub_1A52475B4();
  *(swift_allocObject() + 16) = xmmword_1A52F8E10;
  sub_1A52475A4();
  return sub_1A52477C4();
}

uint64_t sub_1A3FA2144@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t *a3@<X8>)
{
  v19 = a2;
  v18 = a1;
  v4 = MEMORY[0x1E6968D10];
  sub_1A3CB7B30(0, &qword_1EB12B088, MEMORY[0x1E6968D10]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v18 - v8;
  v10 = MEMORY[0x1E6968D98];
  sub_1A3CB7B30(0, &qword_1EB12B010, MEMORY[0x1E6968D98]);
  v12 = v11;
  v13 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v18 - v14;
  sub_1A3CB7E5C(&qword_1EB12B018, &qword_1EB12B010, v10);
  sub_1A5240AB4();
  v20 = v19;
  sub_1A5240AA4();
  sub_1A3CB7F40();
  a3[3] = v16;
  a3[4] = sub_1A3CB80BC();
  __swift_allocate_boxed_opaque_existential_1(a3);
  sub_1A3CB7E5C(&qword_1EB12B090, &qword_1EB12B088, v4);
  sub_1A5240A44();
  (*(v7 + 8))(v9, v6);
  return (*(v13 + 8))(v15, v12);
}

uint64_t sub_1A3FA23DC()
{
  v0 = sub_1A5246944();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1A4A5AD54();
  (*(v1 + 16))(v3, v4, v0);
  return sub_1A524B5E4();
}

size_t sub_1A3FA24CC(size_t a1, int64_t a2, char a3)
{
  result = sub_1A3FA24EC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}