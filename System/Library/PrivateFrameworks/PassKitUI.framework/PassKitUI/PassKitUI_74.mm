void sub_1BD80560C(uint64_t *a1@<X8>)
{
  v3 = [*v1 uniqueID];
  if (v3)
  {
    v4 = v3;
    v5 = sub_1BE052434();
    v7 = v6;

    *a1 = v5;
    a1[1] = v7;
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1BD805670()
{
  sub_1BE053D04();
  sub_1BD8051B4();
  return sub_1BE053D64();
}

uint64_t sub_1BD8056CC(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *))
{
  sub_1BE053D04();
  a4(v6);
  return sub_1BE053D64();
}

uint64_t sub_1BD805710@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1BE04C154();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1BD80574C(uint64_t a1, uint64_t a2)
{
  sub_1BE053D04();
  sub_1BD3D6EDC(v7, *v2);
  sub_1BE04C164();
  sub_1BD805124(&qword_1EBD3A348, MEMORY[0x1E69B8260]);
  sub_1BE052294();
  v4 = *(v2 + *(a2 + 24));
  if (v4 == 0.0)
  {
    v4 = 0.0;
  }

  MEMORY[0x1BFB40DD0](*&v4);
  v5 = *(v2 + *(a2 + 28));
  if (v5 == 0.0)
  {
    v5 = 0.0;
  }

  MEMORY[0x1BFB40DD0](*&v5);
  return sub_1BE053D64();
}

__n128 sub_1BD805880@<Q0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_1BE04C164();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for SEStorageUsageCategory.SEStorageUsageCategoryType(0);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BD809974(v2, v12, type metadata accessor for SEStorageUsageCategory.SEStorageUsageCategoryType);
  v13 = (*(v5 + 48))(v12, 3, v4);
  if (v13 > 1)
  {
    if (v13 != 2)
    {
      v55.n128_u8[0] = 1;
      LOBYTE(v109) = 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54C20);
      sub_1BD809A3C();
      sub_1BE04F9A4();
      v107 = v83;
      v108 = v84;
      LOBYTE(v109) = v85;
      v103 = v79;
      v104 = v80;
      v106 = v82;
      v105 = v81;
      sub_1BD809AE0(&v103);
      v101 = v113;
      v102[0] = v114[0];
      *(v102 + 10) = *(v114 + 10);
      v97 = v109;
      v98 = v110;
      v100 = v112;
      v99 = v111;
      v93 = v105;
      v94 = v106;
      v96 = v108;
      v95 = v107;
      v92 = v104;
      v91 = v103;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54C40);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54C48);
      sub_1BD809AEC();
      sub_1BD80A2F8();
      sub_1BE04F9A4();
      goto LABEL_9;
    }

    v14 = sub_1BE051CD4();
    v16 = v15;
    sub_1BD808F68(&v103);
    v17 = v104;
    v29 = v103;
    sub_1BE051CD4();
    sub_1BE04E5E4();
    v30.n128_u64[0] = v14;
    v30.n128_u64[1] = v16;
    v31 = v29;
    v32 = v17;
    v105 = v17;
    v106 = v33;
    v107 = v34;
    v108 = v35;
    v103 = v30;
    v104 = v29;
    v42.n128_u8[0] = 0;
    LOBYTE(v109) = 0;
    sub_1BD0DE19C(&v30, &v91, &qword_1EBD54C20);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54C20);
    sub_1BD809A3C();
    sub_1BE04F9A4();
    v107 = v59;
    v108 = v60;
    LOBYTE(v109) = v61;
    v103 = v55;
    v104 = v56;
    v106 = v58;
    v105 = v57;
    sub_1BD809AE0(&v103);
    v89 = v113;
    v90[0] = v114[0];
    *(v90 + 10) = *(v114 + 10);
    v85 = v109;
    v86 = v110;
    v87 = v111;
    v88 = v112;
    v81 = v105;
    v82 = v106;
    v83 = v107;
    v84 = v108;
    v79 = v103;
    v80 = v104;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54C40);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54C48);
    sub_1BD809AEC();
    sub_1BD80A2F8();
    sub_1BE04F9A4();
    sub_1BD0DE53C(&v30, &qword_1EBD54C20);
    v77 = v101;
    v78[0] = v102[0];
    v18 = *(v102 + 10);
    goto LABEL_7;
  }

  if (v13)
  {
    v19 = sub_1BE051CD4();
    v21 = v20;
    sub_1BD808F68(&v103);
    v22 = v104;
    v29 = v103;
    sub_1BE051CD4();
    sub_1BE04E5E4();
    v42.n128_u64[0] = v19;
    v42.n128_u64[1] = v21;
    v43 = v29;
    v44 = v22;
    v59 = v46;
    v60 = v47;
    v57 = v22;
    v58 = v45;
    v55 = v42;
    v56 = v29;
    sub_1BD80A398(&v55);
    v113 = v65;
    v114[0] = v66[0];
    *(v114 + 9) = *(v66 + 9);
    v109 = v61;
    v110 = v62;
    v112 = v64;
    v111 = v63;
    v105 = v57;
    v106 = v58;
    v108 = v60;
    v107 = v59;
    v104 = v56;
    v103 = v55;
    sub_1BD0DE19C(&v42, &v91, &qword_1EBD54C20);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54C20);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54C60);
    sub_1BD809A3C();
    sub_1BD809B78();
    sub_1BE04F9A4();
    v113 = v40;
    v114[0] = v41[0];
    *(v114 + 9) = *(v41 + 9);
    v109 = v36;
    v110 = v37;
    v112 = v39;
    v111 = v38;
    v105 = v32;
    v106 = v33;
    v108 = v35;
    v107 = v34;
    v104 = v31;
    v103 = v30;
    sub_1BD80A390(&v103);
    v89 = v113;
    v90[0] = v114[0];
    *(v90 + 10) = *(v114 + 10);
    v85 = v109;
    v86 = v110;
    v87 = v111;
    v88 = v112;
    v81 = v105;
    v82 = v106;
    v83 = v107;
    v84 = v108;
    v79 = v103;
    v80 = v104;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54C40);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54C48);
    sub_1BD809AEC();
    sub_1BD80A2F8();
    sub_1BE04F9A4();
    sub_1BD0DE53C(&v42, &qword_1EBD54C20);
    v77 = v101;
    v78[0] = v102[0];
    v18 = *(v102 + 10);
LABEL_7:
    *(v78 + 10) = v18;
    v73 = v97;
    v74 = v98;
    v75 = v99;
    v76 = v100;
    v69 = v93;
    v70 = v94;
    v71 = v95;
    v72 = v96;
    v67 = v91;
    v68 = v92;
    goto LABEL_9;
  }

  (*(v5 + 32))(v8, v12, v4);
  sub_1BD806388(v8, &v103);
  sub_1BE051CD4();
  sub_1BE04E5E4();
  v52 = v113;
  v53 = v114[0];
  v54 = *&v114[1];
  v48 = v109;
  v49 = v110;
  v50 = v111;
  v51 = v112;
  v44 = v105;
  v45 = v106;
  v46 = v107;
  v47 = v108;
  v42 = v103;
  v43 = v104;
  v65 = v113;
  v66[0] = v114[0];
  *&v66[1] = *&v114[1];
  v61 = v109;
  v62 = v110;
  v63 = v111;
  v64 = v112;
  v57 = v105;
  v58 = v106;
  v59 = v107;
  v60 = v108;
  v55 = v103;
  v56 = v104;
  sub_1BD80A384(&v55);
  v113 = v65;
  v114[0] = v66[0];
  *(v114 + 9) = *(v66 + 9);
  v109 = v61;
  v110 = v62;
  v112 = v64;
  v111 = v63;
  v105 = v57;
  v106 = v58;
  v108 = v60;
  v107 = v59;
  v104 = v56;
  v103 = v55;
  sub_1BD0DE19C(&v42, &v91, &qword_1EBD54C60);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54C20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54C60);
  sub_1BD809A3C();
  sub_1BD809B78();
  sub_1BE04F9A4();
  v113 = v40;
  v114[0] = v41[0];
  *(v114 + 9) = *(v41 + 9);
  v109 = v36;
  v110 = v37;
  v112 = v39;
  v111 = v38;
  v105 = v32;
  v106 = v33;
  v108 = v35;
  v107 = v34;
  v104 = v31;
  v103 = v30;
  sub_1BD80A390(&v103);
  v89 = v113;
  v90[0] = v114[0];
  *(v90 + 10) = *(v114 + 10);
  v85 = v109;
  v86 = v110;
  v87 = v111;
  v88 = v112;
  v81 = v105;
  v82 = v106;
  v83 = v107;
  v84 = v108;
  v79 = v103;
  v80 = v104;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54C40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54C48);
  sub_1BD809AEC();
  sub_1BD80A2F8();
  sub_1BE04F9A4();
  sub_1BD0DE53C(&v42, &qword_1EBD54C60);
  v77 = v101;
  v78[0] = v102[0];
  *(v78 + 10) = *(v102 + 10);
  v73 = v97;
  v74 = v98;
  v75 = v99;
  v76 = v100;
  v69 = v93;
  v70 = v94;
  v71 = v95;
  v72 = v96;
  v67 = v91;
  v68 = v92;
  (*(v5 + 8))(v8, v4);
LABEL_9:
  v23 = v78[0];
  *(a1 + 160) = v77;
  *(a1 + 176) = v23;
  *(a1 + 186) = *(v78 + 10);
  v24 = v74;
  *(a1 + 96) = v73;
  *(a1 + 112) = v24;
  v25 = v76;
  *(a1 + 128) = v75;
  *(a1 + 144) = v25;
  v26 = v70;
  *(a1 + 32) = v69;
  *(a1 + 48) = v26;
  v27 = v72;
  *(a1 + 64) = v71;
  *(a1 + 80) = v27;
  result = v68;
  *a1 = v67;
  *(a1 + 16) = result;
  return result;
}

void sub_1BD806388(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1BE051584();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = v63 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1BE04C164();
  v10 = *(v9 - 8);
  v12 = MEMORY[0x1EEE9AC00](v9, v11);
  v14 = v63 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 16))(v14, a1, v9, v12);
  v15 = (*(v10 + 88))(v14, v9);
  if (v15 == *MEMORY[0x1E69B81B0])
  {
    v16 = sub_1BE052404();
    v17 = PKUIImageNamed(v16);

    if (v17)
    {
      sub_1BE051544();
      (*(v5 + 104))(v8, *MEMORY[0x1E6981630], v4);
      v18 = sub_1BE0515E4();

      (*(v5 + 8))(v8, v4);
      *(v110 + 8) = xmmword_1BE0CB9B0;
      *&v110[0] = v18;
      *(&v110[1] + 1) = 0;
      v110[2] = 0uLL;
      LOBYTE(v110[3]) = 1;
      sub_1BE048964();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54C38);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E280);
      sub_1BD80A208(&qword_1EBD54C30, &qword_1EBD54C38);
      sub_1BD223C50();
      sub_1BE04F9A4();
      LOBYTE(v73) = v126[2];
      LOBYTE(v71[0]) = 0;
      LOWORD(v126[2]) = LOBYTE(v126[2]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54CB0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54CC0);
      sub_1BD809E58();
      sub_1BD809EFC();
      sub_1BE04F9A4();
      v125 = v102[0];
      v126[0] = v102[1];
      v126[1] = v103;
      LOWORD(v126[2]) = v104;
      LOBYTE(v83[0]) = 0;
      BYTE2(v126[2]) = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54CA0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54CD0);
      sub_1BD809DCC();
      sub_1BD809F2C(&qword_1EBD54CC8, &qword_1EBD54CD0, &unk_1BE0FB5E8, sub_1BD809EFC);
      sub_1BE04F9A4();
      v125 = v117;
      v126[0] = v118;
      v126[1] = v119[0];
      *(&v126[1] + 15) = *(v119 + 15);
LABEL_4:
      sub_1BD80A3D4(&v125);
LABEL_5:
      v98 = v128;
      v99 = v129;
      v100 = v130[0];
      v101 = v130[1];
      v94 = v126[1];
      v95 = v126[2];
      v96 = v126[3];
      v97 = v127;
      v92 = v125;
      v93 = v126[0];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54C90);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54CE0);
      sub_1BD809D14();
      sub_1BD809FA8();
      sub_1BE04F9A4();
LABEL_6:

      v137 = v113;
      v138 = v114;
      v139 = v115;
      v140 = v116;
      v133 = v110[2];
      v134 = v110[3];
      v135 = v111;
      v136 = v112;
      v131 = v110[0];
      v132 = v110[1];
LABEL_19:
      v26 = v138;
      *(a2 + 96) = v137;
      *(a2 + 112) = v26;
      *(a2 + 128) = v139;
      *(a2 + 144) = v140;
      v27 = v134;
      *(a2 + 32) = v133;
      *(a2 + 48) = v27;
      v28 = v136;
      *(a2 + 64) = v135;
      *(a2 + 80) = v28;
      v29 = v132;
      *a2 = v131;
      *(a2 + 16) = v29;
      return;
    }

    __break(1u);
    goto LABEL_65;
  }

  v64 = a2;
  if (v15 == *MEMORY[0x1E69B8198])
  {
    v19 = sub_1BE051CD4();
    v21 = v20;
    sub_1BD808F68(&v125);
    *&v73 = v19;
    *(&v73 + 1) = v21;
    v74 = v125;
    v75 = v126[0];
    sub_1BD6434BC(&v73);
    v128 = v79;
    v129 = v80;
    v130[0] = v81;
    LOBYTE(v130[1]) = v82;
    v126[1] = v75;
    v126[2] = v76;
    v126[3] = v77;
    v127 = v78;
    v125 = v73;
    v126[0] = v74;
    sub_1BE048964();
    sub_1BE048964();
    sub_1BE048964();
    sub_1BE048964();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54D10);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54C38);
    sub_1BD80A164();
    sub_1BD80A208(&qword_1EBD54C30, &qword_1EBD54C38);
    sub_1BE04F9A4();
    v88 = v98;
    v89 = v99;
    v90 = v100;
    LOBYTE(v91) = v101;
    v84 = v94;
    v85 = v95;
    v86 = v96;
    v87 = v97;
    v83[0] = v92;
    v83[1] = v93;
    sub_1BD80A3B8(v83);
LABEL_9:
    v128 = v88;
    v129 = v89;
    v130[0] = v90;
    LOWORD(v130[1]) = v91;
    v126[1] = v84;
    v126[2] = v85;
    v126[3] = v86;
    v127 = v87;
    v125 = v83[0];
    v126[0] = v83[1];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54CB0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54D00);
    sub_1BD809E58();
    sub_1BD80A0C0();
    sub_1BE04F9A4();
    v122 = v113;
    v123 = v114;
    v124[0] = v115;
    LOWORD(v124[1]) = v116;
    v119[0] = v110[2];
    v119[1] = v110[3];
    v120 = v111;
    v121 = v112;
    v117 = v110[0];
    v118 = v110[1];
    sub_1BD80A3C4(&v117);
    v128 = v122;
    v129 = v123;
    v130[0] = v124[0];
    *(v130 + 15) = *(v124 + 15);
    v126[1] = v119[0];
    v126[2] = v119[1];
    v126[3] = v120;
    v127 = v121;
    v125 = v117;
    v126[0] = v118;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54CF0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54D30);
    sub_1BD80A034();
    sub_1BD80A25C();
    sub_1BE04F9A4();
    v128 = v107;
    v129 = v108;
    v130[0] = *v109;
    *(v130 + 15) = *&v109[15];
    v126[1] = v103;
    v126[2] = v104;
    v126[3] = v105;
    v127 = v106;
    v125 = v102[0];
    v126[0] = v102[1];
    sub_1BD80A3AC(&v125);
LABEL_16:
    v98 = v128;
    v99 = v129;
    v100 = v130[0];
    v101 = v130[1];
    v94 = v126[1];
    v95 = v126[2];
    v96 = v126[3];
    v97 = v127;
    v92 = v125;
    v93 = v126[0];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54C90);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54CE0);
    sub_1BD809D14();
    sub_1BD809FA8();
    sub_1BE04F9A4();

LABEL_17:

LABEL_18:
    v137 = v113;
    v138 = v114;
    v139 = v115;
    v140 = v116;
    v133 = v110[2];
    v134 = v110[3];
    v135 = v111;
    v136 = v112;
    v131 = v110[0];
    v132 = v110[1];
    a2 = v64;
    goto LABEL_19;
  }

  if (v15 == *MEMORY[0x1E69B8218] || v15 == *MEMORY[0x1E69B81C0])
  {
    goto LABEL_15;
  }

  if (v15 == *MEMORY[0x1E69B81A0])
  {
    v30 = sub_1BE052404();
    v31 = PKUIImageNamed(v30);

    if (!v31)
    {
LABEL_65:
      __break(1u);
LABEL_66:
      __break(1u);
      goto LABEL_67;
    }

    sub_1BE051544();
    (*(v5 + 104))(v8, *MEMORY[0x1E6981630], v4);
    v32 = sub_1BE0515E4();

    (*(v5 + 8))(v8, v4);
    v110[0] = v32;
    LOWORD(v110[1]) = 1;
    BYTE2(v110[1]) = 0;
    sub_1BE048964();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E280);
    sub_1BD223C50();
    sub_1BE04F9A4();
    LOBYTE(v71[0]) = BYTE2(v126[0]);
    LOBYTE(v69[0]) = 1;
    *(v126 + 3) = v83[0];
    *(&v126[1] + 1) = *(v83 + 14);
    BYTE1(v126[2]) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54CB0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54CC0);
    sub_1BD809E58();
    sub_1BD809EFC();
    sub_1BE04F9A4();
    v125 = v102[0];
    v126[0] = v102[1];
    v126[1] = v103;
    LOWORD(v126[2]) = v104;
    LOBYTE(v73) = 0;
    BYTE2(v126[2]) = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54CA0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54CD0);
    sub_1BD809DCC();
    sub_1BD809F2C(&qword_1EBD54CC8, &qword_1EBD54CD0, &unk_1BE0FB5E8, sub_1BD809EFC);
    sub_1BE04F9A4();
    v125 = v117;
    v126[0] = v118;
    v126[1] = v119[0];
    *(&v126[1] + 15) = *(v119 + 15);
    goto LABEL_23;
  }

  if (v15 == *MEMORY[0x1E69B8258])
  {
    goto LABEL_15;
  }

  if (v15 == *MEMORY[0x1E69B81C8])
  {
    v33 = sub_1BE052404();
    v34 = PKUIImageNamed(v33);

    a2 = v64;
    if (v34)
    {
      sub_1BE051544();
      (*(v5 + 104))(v8, *MEMORY[0x1E6981630], v4);
      v35 = sub_1BE0515E4();

      (*(v5 + 8))(v8, v4);
      v110[0] = v35;
      LOWORD(v110[1]) = 1;
      BYTE2(v110[1]) = 1;
      sub_1BE048964();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E280);
      sub_1BD223C50();
      sub_1BE04F9A4();
      LOBYTE(v71[0]) = BYTE2(v126[0]);
      LOBYTE(v69[0]) = 1;
      *(v126 + 3) = v83[0];
      *(&v126[1] + 1) = *(v83 + 14);
      BYTE1(v126[2]) = 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54CB0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54CC0);
      sub_1BD809E58();
      sub_1BD809EFC();
      sub_1BE04F9A4();
      v125 = v102[0];
      v126[0] = v102[1];
      v126[1] = v103;
      LOWORD(v126[2]) = v104;
      LOBYTE(v73) = 0;
      BYTE2(v126[2]) = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54CA0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54CD0);
      sub_1BD809DCC();
      sub_1BD809F2C(&qword_1EBD54CC8, &qword_1EBD54CD0, &unk_1BE0FB5E8, sub_1BD809EFC);
      sub_1BE04F9A4();
      v125 = v117;
      v126[0] = v118;
      v126[1] = v119[0];
      *(&v126[1] + 15) = *(v119 + 15);
      goto LABEL_4;
    }

    goto LABEL_66;
  }

  a2 = v64;
  if (v15 == *MEMORY[0x1E69B81A8])
  {
    v36 = sub_1BE052404();
    v37 = PKUIImageNamed(v36);

    if (!v37)
    {
LABEL_67:
      __break(1u);
      goto LABEL_68;
    }

    sub_1BE051544();
    (*(v5 + 104))(v8, *MEMORY[0x1E6981630], v4);
    v38 = sub_1BE0515E4();

    (*(v5 + 8))(v8, v4);
    v110[0] = v38;
    LOWORD(v110[1]) = 1;
    BYTE2(v110[1]) = 0;
    goto LABEL_31;
  }

  if (v15 == *MEMORY[0x1E69B8200])
  {
LABEL_34:
    v39 = sub_1BE051CD4();
    v41 = v40;
    sub_1BD808F68(&v125);
    *&v110[0] = v39;
    *(&v110[0] + 1) = v41;
    v110[1] = v125;
    v110[2] = v126[0];
    LOBYTE(v110[3]) = 0;
    sub_1BE048964();
    sub_1BE048964();
    sub_1BE048964();
    sub_1BE048964();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54C38);
    sub_1BD80A208(&qword_1EBD54C30, &qword_1EBD54C38);
    sub_1BE04F9A4();
    v117 = v125;
    v118 = v126[0];
    v119[0] = v126[1];
    LOBYTE(v119[1]) = v126[2];
    sub_1BD80A3A0(&v117);
    v128 = v122;
    v129 = v123;
    v130[0] = v124[0];
    *(v130 + 15) = *(v124 + 15);
    v126[1] = v119[0];
    v126[2] = v119[1];
    v126[3] = v120;
    v127 = v121;
    v125 = v117;
    v126[0] = v118;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54CF0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54D30);
    sub_1BD80A034();
    sub_1BD80A25C();
    sub_1BE04F9A4();
    v128 = v107;
    v129 = v108;
    v130[0] = *v109;
    *(v130 + 15) = *&v109[15];
    v126[1] = v103;
    v126[2] = v104;
    v126[3] = v105;
    v127 = v106;
    v125 = v102[0];
    v126[0] = v102[1];
    sub_1BD80A3AC(&v125);
    v98 = v128;
    v99 = v129;
    v100 = v130[0];
    v101 = v130[1];
    v94 = v126[1];
    v95 = v126[2];
    v96 = v126[3];
    v97 = v127;
    v92 = v125;
    v93 = v126[0];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54C90);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54CE0);
    sub_1BD809D14();
    sub_1BD809FA8();
    sub_1BE04F9A4();

    goto LABEL_6;
  }

  if (v15 == *MEMORY[0x1E69B81D0])
  {
    v42 = sub_1BE052404();
    v43 = PKUIImageNamed(v42);

    if (!v43)
    {
LABEL_68:
      __break(1u);
      goto LABEL_69;
    }

    sub_1BE051544();
    (*(v5 + 104))(v8, *MEMORY[0x1E6981630], v4);
    v44 = sub_1BE0515E4();

    (*(v5 + 8))(v8, v4);
    v110[0] = v44;
    LOWORD(v110[1]) = 1;
    BYTE2(v110[1]) = 1;
LABEL_31:
    sub_1BE048964();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E280);
    sub_1BD223C50();
    sub_1BE04F9A4();
    v110[0] = v125;
    BYTE2(v110[1]) = BYTE2(v126[0]) != 0;
    LOWORD(v110[1]) = v126[0];
    BYTE3(v110[1]) = 0;
    goto LABEL_32;
  }

  if (v15 == *MEMORY[0x1E69B8208])
  {
    v45 = sub_1BE052404();
    v46 = PKUIImageNamed(v45);

    if (!v46)
    {
LABEL_69:
      __break(1u);
LABEL_70:
      __break(1u);
      goto LABEL_71;
    }

    sub_1BE051544();
    (*(v5 + 104))(v8, *MEMORY[0x1E6981630], v4);
    v47 = sub_1BE0515E4();

    (*(v5 + 8))(v8, v4);
    v110[0] = v47;
    LOWORD(v110[1]) = 1;
    BYTE2(v110[1]) = 0;
    sub_1BE048964();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E280);
    sub_1BD223C50();
    sub_1BE04F9A4();
    v110[0] = v125;
    BYTE2(v110[1]) = BYTE2(v126[0]) != 0;
    LOWORD(v110[1]) = v126[0];
    BYTE3(v110[1]) = 1;
LABEL_32:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54CC0);
    sub_1BD809EFC();
    sub_1BE04F9A4();
    LOBYTE(v83[0]) = BYTE3(v126[0]);
    LOBYTE(v73) = 1;
    *(v126 + 4) = v102[0];
    *(&v126[1] + 2) = *(v102 + 14);
    BYTE2(v126[2]) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54CA0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54CD0);
    sub_1BD809DCC();
    sub_1BD809F2C(&qword_1EBD54CC8, &qword_1EBD54CD0, &unk_1BE0FB5E8, sub_1BD809EFC);
    sub_1BE04F9A4();
    v125 = v117;
    v126[0] = v118;
    v126[1] = v119[0];
    *(&v126[1] + 15) = *(v119 + 15);
    goto LABEL_4;
  }

  if (v15 == *MEMORY[0x1E69B8220] || v15 == *MEMORY[0x1E69B81E0] || v15 == *MEMORY[0x1E69B8250] || v15 == *MEMORY[0x1E69B8238] || v15 == *MEMORY[0x1E69B8240])
  {
    goto LABEL_15;
  }

  if (v15 == *MEMORY[0x1E69B81F0])
  {
    v48 = sub_1BE052404();
    v49 = PKUIImageNamed(v48);

    a2 = v64;
    if (v49)
    {
      sub_1BE051544();
      (*(v5 + 104))(v8, *MEMORY[0x1E6981630], v4);
      v50 = sub_1BE0515E4();

      (*(v5 + 8))(v8, v4);
      *(v110 + 8) = xmmword_1BE0CB9B0;
      *&v110[0] = v50;
      *(&v110[1] + 1) = 0;
      v110[2] = 0uLL;
      LOBYTE(v110[3]) = 1;
      sub_1BE048964();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54C38);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E280);
      sub_1BD80A208(&qword_1EBD54C30, &qword_1EBD54C38);
      sub_1BD223C50();
      sub_1BE04F9A4();
      v83[0] = v125;
      v83[1] = v126[0];
      v84 = v126[1];
      LOBYTE(v85) = v126[2];
      sub_1BD80A3CC(v83);
      v128 = v88;
      v129 = v89;
      v130[0] = v90;
      LOWORD(v130[1]) = v91;
      v126[1] = v84;
      v126[2] = v85;
      v126[3] = v86;
      v127 = v87;
      v125 = v83[0];
      v126[0] = v83[1];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54CB0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54D00);
      sub_1BD809E58();
      sub_1BD80A0C0();
      sub_1BE04F9A4();
      v122 = v113;
      v123 = v114;
      v124[0] = v115;
      LOWORD(v124[1]) = v116;
      v119[0] = v110[2];
      v119[1] = v110[3];
      v120 = v111;
      v121 = v112;
      v117 = v110[0];
      v118 = v110[1];
      sub_1BD80A3C4(&v117);
      v128 = v122;
      v129 = v123;
      v130[0] = v124[0];
      *(v130 + 15) = *(v124 + 15);
      v126[1] = v119[0];
      v126[2] = v119[1];
      v126[3] = v120;
      v127 = v121;
      v125 = v117;
      v126[0] = v118;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54CF0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54D30);
      sub_1BD80A034();
      sub_1BD80A25C();
      sub_1BE04F9A4();
      v128 = v107;
      v129 = v108;
      v130[0] = *v109;
      *(v130 + 15) = *&v109[15];
      v126[1] = v103;
      v126[2] = v104;
      v126[3] = v105;
      v127 = v106;
      v125 = v102[0];
      v126[0] = v102[1];
      sub_1BD80A3AC(&v125);
      goto LABEL_5;
    }

    goto LABEL_70;
  }

  if (v15 == *MEMORY[0x1E69B8210])
  {
    v51 = sub_1BE051CD4();
    v53 = v52;
    sub_1BD808CF4(&v125);
    v67 = v126[1];
    v68[0] = v126[2];
    *(v68 + 9) = *(&v126[2] + 9);
    v65 = v125;
    v66 = v126[0];
    v69[2] = v126[1];
    v70[0] = v126[2];
    *(v70 + 9) = *(&v126[2] + 9);
    v69[0] = v125;
    v69[1] = v126[0];
    sub_1BD0DE19C(&v65, v110, &qword_1EBD54D40);
    sub_1BD0DE53C(v69, &qword_1EBD54D40);
    v126[1] = v67;
    v126[2] = v68[0];
    *(&v126[2] + 9) = *(v68 + 9);
    v126[0] = v66;
    v125 = v65;
    sub_1BE051CD4();
    sub_1BE04E5E4();
    *(&v110[2] + 7) = v143;
    *(&v110[1] + 7) = v142;
    *(v110 + 7) = v141;
    *&v71[0] = v51;
    *(&v71[0] + 1) = v53;
    v71[3] = v126[1];
    v72[0] = v126[2];
    *(v72 + 9) = *(&v126[2] + 9);
    v71[1] = v125;
    v71[2] = v126[0];
    *(&v72[4] + 1) = *(&v143 + 1);
    *(&v72[3] + 9) = v110[2];
    *(&v72[2] + 9) = v110[1];
    *(&v72[1] + 9) = v110[0];
    v75 = v126[0];
    v76 = v126[1];
    v73 = v71[0];
    v74 = v125;
    v80 = v72[3];
    v81 = v72[4];
    v78 = v72[1];
    v79 = v72[2];
    v77 = v72[0];
    sub_1BD6434D8(&v73);
    v128 = v79;
    v129 = v80;
    v130[0] = v81;
    LOBYTE(v130[1]) = v82;
    v126[1] = v75;
    v126[2] = v76;
    v126[3] = v77;
    v127 = v78;
    v125 = v73;
    v126[0] = v74;
    sub_1BD0DE19C(v71, v110, &qword_1EBD54D10);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54D10);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54C38);
    sub_1BD80A164();
    sub_1BD80A208(&qword_1EBD54C30, &qword_1EBD54C38);
    sub_1BE04F9A4();
    v88 = v98;
    v89 = v99;
    v90 = v100;
    LOBYTE(v91) = v101;
    v84 = v94;
    v85 = v95;
    v86 = v96;
    v87 = v97;
    v83[0] = v92;
    v83[1] = v93;
    sub_1BD80A3B8(v83);
    v128 = v88;
    v129 = v89;
    v130[0] = v90;
    LOWORD(v130[1]) = v91;
    v126[1] = v84;
    v126[2] = v85;
    v126[3] = v86;
    v127 = v87;
    v125 = v83[0];
    v126[0] = v83[1];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54CB0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54D00);
    sub_1BD809E58();
    sub_1BD80A0C0();
    sub_1BE04F9A4();
    v122 = v113;
    v123 = v114;
    v124[0] = v115;
    LOWORD(v124[1]) = v116;
    v119[0] = v110[2];
    v119[1] = v110[3];
    v120 = v111;
    v121 = v112;
    v117 = v110[0];
    v118 = v110[1];
    sub_1BD80A3C4(&v117);
    v128 = v122;
    v129 = v123;
    v130[0] = v124[0];
    *(v130 + 15) = *(v124 + 15);
    v126[1] = v119[0];
    v126[2] = v119[1];
    v126[3] = v120;
    v127 = v121;
    v125 = v117;
    v126[0] = v118;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54CF0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54D30);
    sub_1BD80A034();
    sub_1BD80A25C();
    sub_1BE04F9A4();
    v128 = v107;
    v129 = v108;
    v130[0] = *v109;
    *(v130 + 15) = *&v109[15];
    v126[1] = v103;
    v126[2] = v104;
    v126[3] = v105;
    v127 = v106;
    v125 = v102[0];
    v126[0] = v102[1];
    sub_1BD80A3AC(&v125);
    v98 = v128;
    v99 = v129;
    v100 = v130[0];
    v101 = v130[1];
    v94 = v126[1];
    v95 = v126[2];
    v96 = v126[3];
    v97 = v127;
    v92 = v125;
    v93 = v126[0];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54C90);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54CE0);
    sub_1BD809D14();
    sub_1BD809FA8();
    sub_1BE04F9A4();
    sub_1BD0DE53C(v71, &qword_1EBD54D10);
    goto LABEL_18;
  }

  if (v15 == *MEMORY[0x1E69B81D8])
  {
    goto LABEL_15;
  }

  if (v15 == *MEMORY[0x1E69B81E8])
  {
    v54 = sub_1BE051CD4();
    v56 = v55;
    sub_1BD808F68(&v125);
    *&v110[0] = v54;
    *(&v110[0] + 1) = v56;
    v110[1] = v125;
    v110[2] = v126[0];
    LOBYTE(v110[3]) = 0;
    sub_1BE048964();
    sub_1BE048964();
    sub_1BE048964();
    sub_1BE048964();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54C38);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E280);
    sub_1BD80A208(&qword_1EBD54C30, &qword_1EBD54C38);
    sub_1BD223C50();
    sub_1BE04F9A4();
    v83[0] = v125;
    v83[1] = v126[0];
    v84 = v126[1];
    LOBYTE(v85) = v126[2];
    sub_1BD80A3CC(v83);
    goto LABEL_9;
  }

  if (v15 == *MEMORY[0x1E69B81F8])
  {
LABEL_15:
    v23 = sub_1BE051CD4();
    v25 = v24;
    sub_1BD808F68(&v125);
    *&v110[0] = v23;
    *(&v110[0] + 1) = v25;
    v110[1] = v125;
    v110[2] = v126[0];
    LOBYTE(v110[3]) = 0;
    sub_1BE048964();
    sub_1BE048964();
    sub_1BE048964();
    sub_1BE048964();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54C38);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E280);
    sub_1BD80A208(&qword_1EBD54C30, &qword_1EBD54C38);
    sub_1BD223C50();
    sub_1BE04F9A4();
    LOBYTE(v73) = v126[2];
    LOBYTE(v71[0]) = 0;
    LOWORD(v126[2]) = LOBYTE(v126[2]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54CB0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54CC0);
    sub_1BD809E58();
    sub_1BD809EFC();
    sub_1BE04F9A4();
    v125 = v102[0];
    v126[0] = v102[1];
    v126[1] = v103;
    LOWORD(v126[2]) = v104;
    LOBYTE(v83[0]) = 0;
    BYTE2(v126[2]) = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54CA0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54CD0);
    sub_1BD809DCC();
    sub_1BD809F2C(&qword_1EBD54CC8, &qword_1EBD54CD0, &unk_1BE0FB5E8, sub_1BD809EFC);
    sub_1BE04F9A4();
    v125 = v117;
    v126[0] = v118;
    v126[1] = v119[0];
    *(&v126[1] + 15) = *(v119 + 15);
    sub_1BD80A3D4(&v125);
    goto LABEL_16;
  }

  if (v15 != *MEMORY[0x1E69B8190])
  {
    if (v15 != *MEMORY[0x1E69B8230] && v15 != *MEMORY[0x1E69B8248] && v15 != *MEMORY[0x1E69B81B8])
    {
      a2 = v64;
      if (v15 != *MEMORY[0x1E69B8228] && v15 != *MEMORY[0x1E69B8188])
      {
        v60 = sub_1BE051CD4();
        v62 = v61;
        sub_1BD808F68(&v125);
        *&v110[0] = v60;
        *(&v110[0] + 1) = v62;
        v63[1] = *(&v125 + 1);
        v110[1] = v125;
        v63[2] = v125;
        v110[2] = v126[0];
        LOBYTE(v110[3]) = 1;
        sub_1BE048964();
        sub_1BE048964();
        sub_1BE048964();
        sub_1BE048964();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54C38);
        sub_1BD80A208(&qword_1EBD54C30, &qword_1EBD54C38);
        sub_1BE04F9A4();
        v117 = v125;
        v118 = v126[0];
        v119[0] = v126[1];
        LOBYTE(v119[1]) = v126[2];
        sub_1BD80A3A0(&v117);
        v128 = v122;
        v129 = v123;
        v130[0] = v124[0];
        *(v130 + 15) = *(v124 + 15);
        v126[1] = v119[0];
        v126[2] = v119[1];
        v126[3] = v120;
        v127 = v121;
        v125 = v117;
        v126[0] = v118;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54CF0);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54D30);
        sub_1BD80A034();
        sub_1BD80A25C();
        sub_1BE04F9A4();
        v128 = v107;
        v129 = v108;
        v130[0] = *v109;
        *(v130 + 15) = *&v109[15];
        v126[1] = v103;
        v126[2] = v104;
        v126[3] = v105;
        v127 = v106;
        v125 = v102[0];
        v126[0] = v102[1];
        sub_1BD80A3AC(&v125);
        v98 = v128;
        v99 = v129;
        v100 = v130[0];
        v101 = v130[1];
        v94 = v126[1];
        v95 = v126[2];
        v96 = v126[3];
        v97 = v127;
        v92 = v125;
        v93 = v126[0];
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54C90);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54CE0);
        sub_1BD809D14();
        sub_1BD809FA8();
        a2 = v64;
        sub_1BE04F9A4();

        v137 = v113;
        v138 = v114;
        v139 = v115;
        v140 = v116;
        v133 = v110[2];
        v134 = v110[3];
        v135 = v111;
        v136 = v112;
        v131 = v110[0];
        v132 = v110[1];
        (*(v10 + 8))(v14, v9);
        goto LABEL_19;
      }

      goto LABEL_34;
    }

    goto LABEL_15;
  }

  v57 = sub_1BE052404();
  v58 = PKUIImageNamed(v57);

  if (v58)
  {
    sub_1BE051544();
    (*(v5 + 104))(v8, *MEMORY[0x1E6981630], v4);
    v59 = sub_1BE0515E4();

    (*(v5 + 8))(v8, v4);
    v110[0] = v59;
    LOWORD(v110[1]) = 1;
    BYTE2(v110[1]) = 1;
    sub_1BE048964();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E280);
    sub_1BD223C50();
    sub_1BE04F9A4();
    v110[0] = v125;
    BYTE2(v110[1]) = BYTE2(v126[0]) != 0;
    LOWORD(v110[1]) = v126[0];
    BYTE3(v110[1]) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54CC0);
    sub_1BD809EFC();
    sub_1BE04F9A4();
    LOBYTE(v83[0]) = BYTE3(v126[0]);
    LOBYTE(v73) = 1;
    *(v126 + 4) = v102[0];
    *(&v126[1] + 2) = *(v102 + 14);
    BYTE2(v126[2]) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54CA0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54CD0);
    sub_1BD809DCC();
    sub_1BD809F2C(&qword_1EBD54CC8, &qword_1EBD54CD0, &unk_1BE0FB5E8, sub_1BD809EFC);
    sub_1BE04F9A4();
    v125 = v117;
    v126[0] = v118;
    v126[1] = v119[0];
    *(&v126[1] + 15) = *(v119 + 15);
LABEL_23:
    sub_1BD80A3D4(&v125);
    v98 = v128;
    v99 = v129;
    v100 = v130[0];
    v101 = v130[1];
    v94 = v126[1];
    v95 = v126[2];
    v96 = v126[3];
    v97 = v127;
    v92 = v125;
    v93 = v126[0];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54C90);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54CE0);
    sub_1BD809D14();
    sub_1BD809FA8();
    sub_1BE04F9A4();
    goto LABEL_17;
  }

LABEL_71:
  __break(1u);
}

void sub_1BD808CF4(uint64_t a1@<X8>)
{
  v2 = sub_1BE051584();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v19[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_1BE051424();
  v8 = sub_1BE052404();
  v9 = PKUIImageNamed(v8);

  if (v9)
  {
    sub_1BE051544();
    (*(v3 + 104))(v6, *MEMORY[0x1E6981630], v2);
    v10 = sub_1BE0515E4();

    (*(v3 + 8))(v6, v2);
    v11 = sub_1BE0501D4();
    sub_1BE04E1F4();
    v40 = 1;
    v36 = 0;
    v20 = v10;
    LOWORD(v21) = 1;
    *(&v21 + 2) = v38;
    WORD3(v21) = v39;
    BYTE8(v21) = v11;
    *(&v21 + 9) = *v37;
    HIDWORD(v21) = *&v37[3];
    *&v22 = v12;
    *(&v22 + 1) = v13;
    *&v23 = v14;
    *(&v23 + 1) = v15;
    v24 = 0;
    *a1 = v7;
    v16 = v22;
    v17 = v23;
    *(a1 + 72) = 0;
    *(a1 + 56) = v17;
    *(a1 + 40) = v16;
    v18 = v20;
    *(a1 + 24) = v21;
    *(a1 + 8) = v18;
    v25[0] = v10;
    v25[1] = 0;
    v26 = 1;
    v28 = v39;
    v27 = v38;
    v29 = v11;
    *&v30[3] = *&v37[3];
    *v30 = *v37;
    v31 = v12;
    v32 = v13;
    v33 = v14;
    v34 = v15;
    v35 = 0;
    sub_1BE048964();
    sub_1BD0DE19C(&v20, v19, &qword_1EBD54D48);
    sub_1BD0DE53C(v25, &qword_1EBD54D48);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1BD808F68@<X0>(uint64_t *a1@<X8>)
{
  v2 = [objc_opt_self() systemGrayColor];
  v3 = sub_1BE0511C4();
  sub_1BE048C84();
  v4 = sub_1BE051574();
  v5 = sub_1BE051424();
  result = swift_getKeyPath();
  *a1 = v3;
  a1[1] = v4;
  a1[2] = result;
  a1[3] = v5;
  return result;
}

uint64_t sub_1BD809060(uint64_t a1, uint64_t a2)
{
  v4 = sub_1BE04C164();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for SEStorageUsageCategory.SEStorageUsageCategoryType(0);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3A350);
  MEMORY[0x1EEE9AC00](v13 - 8, v14);
  v16 = v25 - v15;
  v18 = *(v17 + 56);
  sub_1BD809974(a1, v25 - v15, type metadata accessor for SEStorageUsageCategory.SEStorageUsageCategoryType);
  sub_1BD809974(a2, &v16[v18], type metadata accessor for SEStorageUsageCategory.SEStorageUsageCategoryType);
  v19 = *(v5 + 48);
  v20 = v19(v16, 3, v4);
  if (v20 > 1)
  {
    if (v20 == 2)
    {
      if (v19(&v16[v18], 3, v4) != 2)
      {
        goto LABEL_11;
      }
    }

    else if (v19(&v16[v18], 3, v4) != 3)
    {
      goto LABEL_11;
    }
  }

  else if (v20)
  {
    if (v19(&v16[v18], 3, v4) != 1)
    {
      goto LABEL_11;
    }
  }

  else
  {
    sub_1BD809974(v16, v12, type metadata accessor for SEStorageUsageCategory.SEStorageUsageCategoryType);
    if (v19(&v16[v18], 3, v4))
    {
      (*(v5 + 8))(v12, v4);
LABEL_11:
      sub_1BD0DE53C(v16, &qword_1EBD3A350);
      return 0;
    }

    (*(v5 + 32))(v8, &v16[v18], v4);
    sub_1BD805124(&qword_1EBD3A358, MEMORY[0x1E69B8260]);
    sub_1BE0526E4();
    sub_1BE0526E4();
    if (v25[2] == v25[0] && v25[3] == v25[1])
    {
      v22 = *(v5 + 8);
      v22(v8, v4);

      v22(v12, v4);
    }

    else
    {
      v23 = sub_1BE053B84();
      v24 = *(v5 + 8);
      v24(v8, v4);

      v24(v12, v4);
      if ((v23 & 1) == 0)
      {
        sub_1BD8099DC(v16, type metadata accessor for SEStorageUsageCategory.SEStorageUsageCategoryType);
        return 0;
      }
    }
  }

  sub_1BD8099DC(v16, type metadata accessor for SEStorageUsageCategory.SEStorageUsageCategoryType);
  return 1;
}

BOOL sub_1BD80946C(uint64_t *a1, uint64_t *a2)
{
  if ((sub_1BD3FF77C(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for SEStorageUsageGroup(0);
  sub_1BE04C164();
  sub_1BD805124(&qword_1EBD3A358, MEMORY[0x1E69B8260]);
  sub_1BE0526E4();
  sub_1BE0526E4();
  if (v9 == v7 && v10 == v8)
  {
  }

  else
  {
    v5 = sub_1BE053B84();

    if ((v5 & 1) == 0)
    {
      return 0;
    }
  }

  if (*(a1 + *(v4 + 24)) == *(a2 + *(v4 + 24)))
  {
    return *(a1 + *(v4 + 28)) == *(a2 + *(v4 + 28));
  }

  return 0;
}

uint64_t sub_1BD8095C0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1BE04AF64();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39970);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = &v27 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3A750);
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = &v27 - v15;
  sub_1BD0E5E8C(0, &qword_1EBD3E3F0);
  if ((sub_1BE053074() & 1) == 0 || (sub_1BD3FFD98(*(a1 + 8), *(a2 + 8)) & 1) == 0)
  {
    goto LABEL_12;
  }

  v17 = v5;
  v28 = type metadata accessor for SEStorageUsageGroup.PassEntry(0);
  v18 = v28[6];
  v19 = *(v13 + 48);
  sub_1BD0DE19C(a1 + v18, v16, &unk_1EBD39970);
  v20 = a2 + v18;
  v21 = v17;
  sub_1BD0DE19C(v20, &v16[v19], &unk_1EBD39970);
  v22 = *(v17 + 48);
  if (v22(v16, 1, v4) == 1)
  {
    if (v22(&v16[v19], 1, v4) == 1)
    {
      sub_1BD0DE53C(v16, &unk_1EBD39970);
      goto LABEL_10;
    }

    goto LABEL_8;
  }

  sub_1BD0DE19C(v16, v12, &unk_1EBD39970);
  if (v22(&v16[v19], 1, v4) == 1)
  {
    (*(v17 + 8))(v12, v4);
LABEL_8:
    sub_1BD0DE53C(v16, &qword_1EBD3A750);
LABEL_12:
    v25 = 0;
    return v25 & 1;
  }

  (*(v17 + 32))(v8, &v16[v19], v4);
  sub_1BD805124(&qword_1EBD3E460, MEMORY[0x1E6969530]);
  v23 = sub_1BE052334();
  v24 = *(v21 + 8);
  v24(v8, v4);
  v24(v12, v4);
  sub_1BD0DE53C(v16, &unk_1EBD39970);
  if ((v23 & 1) == 0)
  {
    goto LABEL_12;
  }

LABEL_10:
  if (*(a1 + v28[7]) != *(a2 + v28[7]))
  {
    goto LABEL_12;
  }

  v25 = *(a1 + v28[8]) ^ *(a2 + v28[8]) ^ 1;
  return v25 & 1;
}

uint64_t sub_1BD809974(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1BD8099DC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1BD809A3C()
{
  result = qword_1EBD54C28;
  if (!qword_1EBD54C28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD54C20);
    sub_1BD80A208(&qword_1EBD54C30, &qword_1EBD54C38);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD54C28);
  }

  return result;
}

unint64_t sub_1BD809AEC()
{
  result = qword_1EBD54C50;
  if (!qword_1EBD54C50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD54C40);
    sub_1BD809A3C();
    sub_1BD809B78();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD54C50);
  }

  return result;
}

unint64_t sub_1BD809B78()
{
  result = qword_1EBD54C58;
  if (!qword_1EBD54C58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD54C60);
    sub_1BD809C04();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD54C58);
  }

  return result;
}

unint64_t sub_1BD809C04()
{
  result = qword_1EBD54C68;
  if (!qword_1EBD54C68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD54C70);
    sub_1BD809C88();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD54C68);
  }

  return result;
}

unint64_t sub_1BD809C88()
{
  result = qword_1EBD54C78;
  if (!qword_1EBD54C78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD54C80);
    sub_1BD809D14();
    sub_1BD809FA8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD54C78);
  }

  return result;
}

unint64_t sub_1BD809D14()
{
  result = qword_1EBD54C88;
  if (!qword_1EBD54C88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD54C90);
    sub_1BD809DCC();
    sub_1BD809F2C(&qword_1EBD54CC8, &qword_1EBD54CD0, &unk_1BE0FB5E8, sub_1BD809EFC);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD54C88);
  }

  return result;
}

unint64_t sub_1BD809DCC()
{
  result = qword_1EBD54C98;
  if (!qword_1EBD54C98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD54CA0);
    sub_1BD809E58();
    sub_1BD809EFC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD54C98);
  }

  return result;
}

unint64_t sub_1BD809E58()
{
  result = qword_1EBD54CA8;
  if (!qword_1EBD54CA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD54CB0);
    sub_1BD80A208(&qword_1EBD54C30, &qword_1EBD54C38);
    sub_1BD223C50();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD54CA8);
  }

  return result;
}

uint64_t sub_1BD809F2C(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
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

unint64_t sub_1BD809FA8()
{
  result = qword_1EBD54CD8;
  if (!qword_1EBD54CD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD54CE0);
    sub_1BD80A034();
    sub_1BD80A25C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD54CD8);
  }

  return result;
}

unint64_t sub_1BD80A034()
{
  result = qword_1EBD54CE8;
  if (!qword_1EBD54CE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD54CF0);
    sub_1BD809E58();
    sub_1BD80A0C0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD54CE8);
  }

  return result;
}

unint64_t sub_1BD80A0C0()
{
  result = qword_1EBD54CF8;
  if (!qword_1EBD54CF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD54D00);
    sub_1BD80A164();
    sub_1BD80A208(&qword_1EBD54C30, &qword_1EBD54C38);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD54CF8);
  }

  return result;
}

unint64_t sub_1BD80A164()
{
  result = qword_1EBD54D08;
  if (!qword_1EBD54D08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD54D10);
    sub_1BD80A208(&qword_1EBD54D18, &qword_1EBD54D20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD54D08);
  }

  return result;
}

uint64_t sub_1BD80A208(unint64_t *a1, uint64_t *a2)
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

unint64_t sub_1BD80A25C()
{
  result = qword_1EBD54D28;
  if (!qword_1EBD54D28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD54D30);
    sub_1BD80A208(&qword_1EBD54C30, &qword_1EBD54C38);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD54D28);
  }

  return result;
}

unint64_t sub_1BD80A2F8()
{
  result = qword_1EBD54D38;
  if (!qword_1EBD54D38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD54C48);
    sub_1BD809A3C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD54D38);
  }

  return result;
}

uint64_t type metadata accessor for ExternalAuthorizationModel()
{
  result = qword_1EBD54D60;
  if (!qword_1EBD54D60)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1BD80A428()
{
  sub_1BD0E4578(319, &qword_1EBD54D78, &qword_1EBD54D80);
  if (v0 <= 0x3F)
  {
    sub_1BD0E4578(319, &qword_1EBD54D88, &unk_1EBD54D90);
    if (v1 <= 0x3F)
    {
      swift_initClassMetadata2();
    }
  }
}

id sub_1BD80A550(uint64_t a1)
{
  v2 = *(a1 + 32);
  result = [v2 paymentRequest];
  if (result)
  {
    v4 = result;
    v5 = [result paymentContentItems];

    if (v5)
    {
      sub_1BD0E5E8C(0, &qword_1EBD54DB0);
      v6 = sub_1BE052744();
    }

    else
    {
      v6 = MEMORY[0x1E69E7CC0];
    }

    swift_beginAccess();
    v19 = v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54D80);
    sub_1BE04D874();
    swift_endAccess();
    result = [v2 paymentRequest];
    if (result)
    {
      v7 = result;
      v8 = [result paymentSummaryItems];

      sub_1BD0E5E8C(0, &qword_1EBD3D4A0);
      v9 = sub_1BE052744();

      swift_beginAccess();
      v19 = v9;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD54D90);
      sub_1BE04D874();
      swift_endAccess();
      v11 = *a1;
      v10 = *(a1 + 8);
      v18 = *(a1 + 24);
      v19 = v10;
      v12 = v2;
      v13 = v11;
      sub_1BD0DE19C(&v19, v17, &qword_1EBD3D490);
      sub_1BD0DE19C(&v18, v17, &qword_1EBD40150);
      sub_1BE048964();
      v14 = sub_1BD46A578(a1);

      sub_1BD0DE53C(&v19, &qword_1EBD3D490);
      sub_1BD0DE53C(&v18, &qword_1EBD40150);

      v15 = swift_allocObject();
      swift_weakInit();
      v17[4] = sub_1BD80AE14;
      v17[5] = v15;
      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 1107296256;
      v17[2] = sub_1BD126964;
      v17[3] = &block_descriptor_187;
      v16 = _Block_copy(v17);
      sub_1BE048964();

      [v12 setUpdateHandler_];
      _Block_release(v16);

      sub_1BD0DE53C(&v19, &qword_1EBD3D490);
      sub_1BD0DE53C(&v18, &qword_1EBD40150);

      return v14;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1BD80A8C0()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1BD80A918();
  }

  return result;
}

void sub_1BD80A918()
{
  v2 = *(v0 + qword_1EBDAAD68 + 24);
  v1 = *(v0 + qword_1EBDAAD68 + 32);
  v3 = v2;
  v4 = v1;
  sub_1BD2B1238(v4, v2, &v18);
  v5 = v19;
  if (v19)
  {
    v6 = v18;
    sub_1BD1C2B14();
    v7 = swift_allocObject();
    *(v7 + 16) = v6;
    *(v7 + 24) = v5;
    v8 = v21;
    *(v7 + 32) = v20;
    *(v7 + 48) = v8;
  }

  sub_1BE04C8F4();
  v9 = [v4 paymentRequest];
  if (!v9)
  {
    __break(1u);
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v10 = v9;
  v11 = [v9 paymentContentItems];

  if (v11)
  {
    sub_1BD0E5E8C(0, &qword_1EBD54DB0);
    sub_1BE052744();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE048964();
  sub_1BE04D8C4();
  v12 = [v4 paymentRequest];
  if (!v12)
  {
    goto LABEL_12;
  }

  v13 = v12;
  v14 = [v12 paymentSummaryItems];

  sub_1BD0E5E8C(0, &qword_1EBD3D4A0);
  sub_1BE052744();

  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE048964();
  sub_1BE04D8C4();
  v15 = [v4 paymentRequest];
  if (!v15)
  {
LABEL_13:
    __break(1u);
    return;
  }

  v16 = v15;
  v17 = [v15 localizedNavigationTitle];

  if (v17)
  {
    sub_1BE052434();
  }

  sub_1BE04C8D4();
}

uint64_t sub_1BD80ABB0()
{
  v1 = qword_1EBD54D50;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54DA0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = qword_1EBD54D58;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54DA8);
  v5 = *(*(v4 - 8) + 8);

  return v5(v0 + v3, v4);
}

uint64_t sub_1BD80AC70()
{
  v0 = sub_1BE04C954();
  v1 = qword_1EBD36020;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD40140);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + qword_1EBDAAD68);
  v4 = *(v0 + qword_1EBDAAD68 + 24);
  v5 = *(v0 + qword_1EBDAAD68 + 32);

  swift_unknownObjectRelease();
  v6 = qword_1EBD54D50;
  sub_1BE048964();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54DA0);
  (*(*(v7 - 8) + 8))(v0 + v6, v7);
  v8 = qword_1EBD54D58;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54DA8);
  (*(*(v9 - 8) + 8))(v0 + v8, v9);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for FinanceKitTransactionDetailView()
{
  result = qword_1EBD54DB8;
  if (!qword_1EBD54DB8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1BD80AE90()
{
  sub_1BD80B008(319, &qword_1EBD54DC8, _s9ViewModelCMa_1, MEMORY[0x1E6981790]);
  if (v0 <= 0x3F)
  {
    sub_1BD80AFA4();
    if (v1 <= 0x3F)
    {
      sub_1BD80B008(319, &qword_1EBD3AB88, MEMORY[0x1E697BF90], MEMORY[0x1E697DCC0]);
      if (v2 <= 0x3F)
      {
        sub_1BD49DA08();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1BD80AFA4()
{
  if (!qword_1EBD54DD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD54DD8);
    v0 = sub_1BE0516D4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBD54DD0);
    }
  }
}

void sub_1BD80B008(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1BD80B098@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1BD813BE0(&qword_1EBD461C8, _s9ViewModelCMa_1);
  sub_1BE04B594();

  v4 = OBJC_IVAR____TtCV9PassKitUI31FinanceKitTransactionDetailView9ViewModel__transactionDetails;
  swift_beginAccess();
  return sub_1BD0DE19C(v3 + v4, a2, &qword_1EBD461C0);
}

uint64_t sub_1BD80B170(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD461C0);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v10[-v6];
  sub_1BD0DE19C(a1, &v10[-v6], &qword_1EBD461C0);
  v8 = *a2;
  swift_getKeyPath();
  v11 = v8;
  v12 = v7;
  v13 = v8;
  sub_1BD813BE0(&qword_1EBD461C8, _s9ViewModelCMa_1);
  sub_1BE04B584();

  return sub_1BD0DE53C(v7, &qword_1EBD461C0);
}

uint64_t sub_1BD80B2C0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1BD813BE0(&qword_1EBD461C8, _s9ViewModelCMa_1);
  sub_1BE04B594();

  *a2 = *(v3 + OBJC_IVAR____TtCV9PassKitUI31FinanceKitTransactionDetailView9ViewModel__offersViewModel);
  return sub_1BE048964();
}

uint64_t sub_1BD80B374()
{
  swift_getKeyPath();
  sub_1BD813BE0(&qword_1EBD461C8, _s9ViewModelCMa_1);
  sub_1BE04B584();
}

uint64_t sub_1BD80B440@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1BD813BE0(&qword_1EBD461C8, _s9ViewModelCMa_1);
  sub_1BE04B594();

  *a2 = *(v3 + OBJC_IVAR____TtCV9PassKitUI31FinanceKitTransactionDetailView9ViewModel__actualExcludedFromSpendingSummaryValue);
  return result;
}

uint64_t sub_1BD80B518@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_1BE048F54();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for TransactionContext(0);
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54DD8);
  sub_1BE051694();
  *(a3 + 16) = v23;
  v15 = type metadata accessor for FinanceKitTransactionDetailView();
  v16 = *(v15 + 24);
  *(a3 + v16) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3FA20);
  swift_storeEnumTagMultiPayload();
  v17 = (a3 + *(v15 + 28));
  type metadata accessor for NavigationController();
  sub_1BD813BE0(&qword_1EBD38DA8, type metadata accessor for NavigationController);
  *v17 = sub_1BE04EEC4();
  v17[1] = v18;
  sub_1BD813E10(a1, v14, type metadata accessor for TransactionContext);
  (*(v7 + 16))(v10, a2, v6);
  _s9ViewModelCMa_1(0);
  swift_allocObject();
  v22 = sub_1BD438F70(v14, v10);
  sub_1BE051694();
  (*(v7 + 8))(a2, v6);
  result = sub_1BD813618(a1, type metadata accessor for TransactionContext);
  v20 = *(&v23 + 1);
  *a3 = v23;
  *(a3 + 8) = v20;
  return result;
}

uint64_t sub_1BD80B7AC@<X0>(uint64_t a1@<X8>)
{
  v59 = a1;
  v2 = type metadata accessor for FinanceKitTransactionDetailView();
  v58 = *(v2 - 8);
  v62 = *(v58 + 8);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v57 = &v49 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1BE04F434();
  v52 = *(v5 - 8);
  v53 = v5;
  MEMORY[0x1EEE9AC00](v5, v6);
  v51 = &v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1BE04F5B4();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = &v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54DE0);
  v49 = v13;
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = &v49 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54DE8);
  v18 = *(v17 - 8);
  v54 = v17;
  v55 = v18;
  MEMORY[0x1EEE9AC00](v17, v19);
  v50 = &v49 - v20;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54DF0);
  MEMORY[0x1EEE9AC00](v56, v21);
  v60 = &v49 - v22;
  v63 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54DF8);
  sub_1BD812FF0();
  sub_1BE0504E4();
  sub_1BE04F594();
  v23 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54E18) + 36);
  (*(v9 + 16))(&v16[v23], v12, v8);
  v24 = *(v9 + 56);
  v24(&v16[v23], 0, 1, v8);
  KeyPath = swift_getKeyPath();
  v26 = &v16[*(v13 + 36)];
  v27 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39580) + 28);
  (*(v9 + 32))(v26 + v27, v12, v8);
  v24(v26 + v27, 0, 1, v8);
  *v26 = KeyPath;
  v29 = v51;
  v28 = v52;
  v30 = v53;
  (*(v52 + 104))(v51, *MEMORY[0x1E697C438], v53);
  v31 = sub_1BD8130A0();
  v32 = v50;
  v33 = v49;
  sub_1BE050E84();
  (*(v28 + 8))(v29, v30);
  sub_1BD0DE53C(v16, &qword_1EBD54DE0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38CD0);
  sub_1BE04EE44();
  v34 = swift_allocObject();
  *(v34 + 16) = xmmword_1BE0B69E0;
  sub_1BE04EE34();
  v64 = v33;
  v65 = v31;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v36 = v60;
  v37 = v54;
  MEMORY[0x1BFB3DCA0](0, v34, v54, OpaqueTypeConformance2);

  (*(v55 + 1))(v32, v37);
  v55 = type metadata accessor for FinanceKitTransactionDetailView;
  v38 = v61;
  v39 = v57;
  sub_1BD813E10(v61, v57, type metadata accessor for FinanceKitTransactionDetailView);
  v40 = (*(v58 + 80) + 16) & ~*(v58 + 80);
  v41 = swift_allocObject();
  v58 = type metadata accessor for FinanceKitTransactionDetailView;
  sub_1BD8139C8(v39, v41 + v40, type metadata accessor for FinanceKitTransactionDetailView);
  v42 = &v36[*(v56 + 36)];
  sub_1BE04E7B4();
  sub_1BE0528B4();
  *v42 = &unk_1BE0FB8C0;
  *(v42 + 1) = v41;
  v67 = *(v38 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54E40);
  sub_1BE0516C4();
  v43 = v66;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54E48);
  sub_1BD813308();
  sub_1BD813444();
  sub_1BD813498();
  v44 = v59;
  v45 = v60;
  sub_1BE050F74();

  sub_1BD0B9B98(v45);
  sub_1BD813E10(v61, v39, v55);
  v46 = swift_allocObject();
  sub_1BD8139C8(v39, v46 + v40, v58);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54E68);
  v48 = (v44 + *(result + 36));
  *v48 = sub_1BD813524;
  v48[1] = v46;
  v48[2] = 0;
  v48[3] = 0;
  return result;
}

uint64_t sub_1BD80BF38@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v148 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54E10);
  v146 = *(v3 - 8);
  v147 = v3;
  MEMORY[0x1EEE9AC00](v3, v4);
  v137 = &v116 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54E78);
  v135 = *(v6 - 8);
  v136 = v6;
  MEMORY[0x1EEE9AC00](v6, v7);
  v122 = &v116 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54E80);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v154 = &v116 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v145 = &v116 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54E88);
  v132 = *(v15 - 8);
  v133 = v15;
  MEMORY[0x1EEE9AC00](v15, v16);
  v121 = &v116 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54E90);
  MEMORY[0x1EEE9AC00](v18 - 8, v19);
  v153 = &v116 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21, v22);
  v152 = &v116 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54E98);
  MEMORY[0x1EEE9AC00](v24 - 8, v25);
  v144 = &v116 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27, v28);
  v151 = &v116 - v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54EA0);
  MEMORY[0x1EEE9AC00](v30 - 8, v31);
  v143 = &v116 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v33, v34);
  v150 = &v116 - v35;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54EA8);
  MEMORY[0x1EEE9AC00](v36 - 8, v37);
  v142 = &v116 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v39, v40);
  v149 = &v116 - v41;
  v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47660);
  MEMORY[0x1EEE9AC00](v131, v42);
  v44 = &v116 - v43;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54EB0);
  v140 = *(v45 - 8);
  v141 = v45;
  MEMORY[0x1EEE9AC00](v45, v46);
  v139 = &v116 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v48, v49);
  v138 = &v116 - v50;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD461C0);
  MEMORY[0x1EEE9AC00](v51 - 8, v52);
  v54 = &v116 - v53;
  v55 = _s23TransactionDetailsModelVMa(0);
  v56 = *(v55 - 8);
  MEMORY[0x1EEE9AC00](v55, v57);
  v59 = &v116 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = a1[1];
  v129 = *a1;
  v130 = a1;
  v170[0] = v129;
  v128 = v60;
  v170[1] = v60;
  v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54E70);
  sub_1BE0516A4();
  v61 = v169[0];
  swift_getKeyPath();
  v170[0] = v61;
  v126 = sub_1BD813BE0(&qword_1EBD461C8, _s9ViewModelCMa_1);
  sub_1BE04B594();

  v62 = OBJC_IVAR____TtCV9PassKitUI31FinanceKitTransactionDetailView9ViewModel__transactionDetails;
  swift_beginAccess();
  sub_1BD0DE19C(v61 + v62, v54, &qword_1EBD461C0);

  if ((*(v56 + 48))(v54, 1, v55) == 1)
  {
    sub_1BD0DE53C(v54, &qword_1EBD461C0);
    return (*(v146 + 56))(v148, 1, 1, v147);
  }

  else
  {
    sub_1BD8139C8(v54, v59, _s23TransactionDetailsModelVMa);
    v64 = sub_1BE04F504();
    LOBYTE(v155) = 1;
    v134 = v59;
    sub_1BD811208(v59, v167);
    memcpy(v169, v167, 0x101uLL);
    memcpy(v170, v167, 0x101uLL);
    sub_1BD0DE19C(v169, &v159, &qword_1EBD47670);
    sub_1BD0DE53C(v170, &qword_1EBD47670);
    memcpy(&v168[7], v169, 0x101uLL);
    v65 = v155;
    v66 = &v44[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47678) + 36)];
    v67 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD386C0) + 28);
    v68 = sub_1BE0505C4();
    (*(*(v68 - 8) + 56))(v66 + v67, 1, 1, v68);
    *v66 = swift_getKeyPath();
    *v44 = v64;
    *(v44 + 1) = 0;
    v44[16] = v65;
    memcpy(v44 + 17, v168, 0x108uLL);
    LOBYTE(v64) = sub_1BE0501E4();
    sub_1BE04E1F4();
    v70 = v69;
    v72 = v71;
    v74 = v73;
    v76 = v75;
    v77 = &v44[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47680) + 36)];
    *v77 = v64;
    *(v77 + 1) = v70;
    *(v77 + 2) = v72;
    *(v77 + 3) = v74;
    *(v77 + 4) = v76;
    v77[40] = 0;
    LOBYTE(v64) = sub_1BE0501F4();
    v78 = sub_1BE04E1F4();
    v79 = &v44[*(v131 + 36)];
    *v79 = v64;
    *(v79 + 1) = v80;
    *(v79 + 2) = v81;
    *(v79 + 3) = v82;
    *(v79 + 4) = v83;
    v79[40] = 0;
    MEMORY[0x1EEE9AC00](v78, v84);
    *(&v116 - 2) = v59;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54EB8);
    sub_1BD813544(&qword_1EBD47690, &qword_1EBD47660, &unk_1BE0DA390, sub_1BD4A02FC);
    sub_1BD0DE4F4(&qword_1EBD54EC0, &qword_1EBD54EB8);
    v85 = v138;
    sub_1BE051A24();
    sub_1BD80CF1C(v149);
    v167[0] = v129;
    v167[1] = v128;
    sub_1BE0516A4();
    v86 = v159;
    swift_getKeyPath();
    v167[0] = v86;
    sub_1BE04B594();

    v87 = *(v86 + OBJC_IVAR____TtCV9PassKitUI31FinanceKitTransactionDetailView9ViewModel__offersViewModel);
    sub_1BE048964();

    v88 = v134;
    if (v87)
    {
      sub_1BD5C3924(v167);
      v89 = v167[0];
      v128 = v167[2];
      v129 = v167[1];
      v126 = v167[4];
      v127 = v167[3];
      v124 = v167[6];
      v125 = v167[5];
      v123 = v167[7];
      v90 = v145;
      v91 = v152;
    }

    else
    {
      v128 = 0;
      v129 = 0;
      v126 = 0;
      v127 = 0;
      v124 = 0;
      v125 = 0;
      v123 = 0;
      v90 = v145;
      v91 = v152;
      v89 = 1;
    }

    sub_1BD80D318(v150);
    sub_1BD80D898(v88, v151);
    sub_1BD80DCE8(&v159);
    v119 = v161;
    v120 = v159;
    v117 = v160;
    v118 = v162;
    v162 = &type metadata for BankConnectFeatureFlags;
    v163 = sub_1BD1671B0();
    LOBYTE(v159) = 4;
    v92 = sub_1BE04C584();
    __swift_destroy_boxed_opaque_existential_0(&v159);
    if (v92)
    {
      v93 = v121;
      sub_1BD80E120(v121);
      sub_1BD0DE204(v93, v91, &qword_1EBD54E88);
      v94 = 0;
    }

    else
    {
      v94 = 1;
    }

    v131 = v89;
    v95 = 1;
    (*(v132 + 56))(v91, v94, 1, v133);
    if (os_variant_has_internal_ui())
    {
      v96 = v122;
      sub_1BD80E820(v122);
      sub_1BD0DE204(v96, v90, &qword_1EBD54E78);
      v95 = 0;
    }

    (*(v135 + 56))(v90, v95, 1, v136);
    v97 = v139;
    v98 = *(v140 + 16);
    v99 = v141;
    v98(v139, v85, v141);
    v100 = v142;
    sub_1BD0DE19C(v149, v142, &qword_1EBD54EA8);
    v101 = v143;
    sub_1BD0DE19C(v150, v143, &qword_1EBD54EA0);
    v102 = v144;
    sub_1BD0DE19C(v151, v144, &qword_1EBD54E98);
    sub_1BD0DE19C(v152, v153, &qword_1EBD54E90);
    sub_1BD0DE19C(v90, v154, &qword_1EBD54E80);
    v103 = v137;
    v98(v137, v97, v99);
    v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54EC8);
    sub_1BD0DE19C(v100, v103 + v104[12], &qword_1EBD54EA8);
    v105 = (v103 + v104[16]);
    *&v155 = v131;
    *(&v155 + 1) = v129;
    *&v156 = v128;
    *(&v156 + 1) = v127;
    *&v157 = v126;
    *(&v157 + 1) = v125;
    *&v158 = v124;
    *(&v158 + 1) = v123;
    v106 = v156;
    *v105 = v155;
    v105[1] = v106;
    v107 = v158;
    v105[2] = v157;
    v105[3] = v107;
    sub_1BD0DE19C(v101, v103 + v104[20], &qword_1EBD54EA0);
    sub_1BD0DE19C(v102, v103 + v104[24], &qword_1EBD54E98);
    v108 = (v103 + v104[28]);
    v110 = v119;
    v109 = v120;
    v112 = v117;
    v111 = v118;
    *v108 = v120;
    v108[1] = v112;
    v108[2] = v110;
    v108[3] = v111;
    sub_1BD0DE19C(v153, v103 + v104[32], &qword_1EBD54E90);
    sub_1BD0DE19C(v154, v103 + v104[36], &qword_1EBD54E80);
    sub_1BD0DE19C(&v155, &v159, &qword_1EBD54ED0);
    sub_1BD8135C8(v109);
    sub_1BD0DE53C(v145, &qword_1EBD54E80);
    sub_1BD0DE53C(v152, &qword_1EBD54E90);
    sub_1BD0DE53C(v151, &qword_1EBD54E98);
    sub_1BD0DE53C(v150, &qword_1EBD54EA0);
    sub_1BD0DE53C(v149, &qword_1EBD54EA8);
    v113 = v141;
    v114 = *(v140 + 8);
    v114(v138, v141);
    sub_1BD813618(v134, _s23TransactionDetailsModelVMa);
    sub_1BD0DE53C(v154, &qword_1EBD54E80);
    sub_1BD0DE53C(v153, &qword_1EBD54E90);
    sub_1BD813678(v109);
    sub_1BD0DE53C(v144, &qword_1EBD54E98);
    sub_1BD0DE53C(v143, &qword_1EBD54EA0);
    v159 = v131;
    v160 = v129;
    v161 = v128;
    v162 = v127;
    v163 = v126;
    v164 = v125;
    v165 = v124;
    v166 = v123;
    sub_1BD0DE53C(&v159, &qword_1EBD54ED0);
    sub_1BD0DE53C(v142, &qword_1EBD54EA8);
    v114(v139, v113);
    v115 = v148;
    sub_1BD0DE204(v103, v148, &qword_1EBD54E10);
    return (*(v146 + 56))(v115, 0, 1, v147);
  }
}

uint64_t sub_1BD80CF1C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v27 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54F38);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v26 = &v26 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD461C0);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v10 = &v26 - v9;
  v11 = _s23TransactionDetailsModelVMa(0);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v13);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(v1 + 1);
  v28 = *v1;
  v29 = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54E70);
  sub_1BE0516A4();
  v17 = v30;
  swift_getKeyPath();
  v28 = v17;
  sub_1BD813BE0(&qword_1EBD461C8, _s9ViewModelCMa_1);
  sub_1BE04B594();

  v18 = OBJC_IVAR____TtCV9PassKitUI31FinanceKitTransactionDetailView9ViewModel__transactionDetails;
  swift_beginAccess();
  sub_1BD0DE19C(v17 + v18, v10, &qword_1EBD461C0);

  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_1BD0DE53C(v10, &qword_1EBD461C0);
  }

  else
  {
    v19 = sub_1BD8139C8(v10, v15, _s23TransactionDetailsModelVMa);
    if (*&v15[*(v11 + 44)])
    {
      MEMORY[0x1EEE9AC00](v19, v20);
      *(&v26 - 4) = v21;
      *(&v26 - 3) = v15;
      *(&v26 - 2) = v2;
      v22 = v21;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54F40);
      sub_1BD813B24();
      v23 = v26;
      sub_1BE051A44();

      v24 = v27;
      (*(v4 + 32))(v27, v23, v3);
      (*(v4 + 56))(v24, 0, 1, v3);
      return sub_1BD813618(v15, _s23TransactionDetailsModelVMa);
    }

    sub_1BD813618(v15, _s23TransactionDetailsModelVMa);
  }

  return (*(v4 + 56))(v27, 1, 1, v3);
}

uint64_t sub_1BD80D318@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v48 = a1;
  v3 = sub_1BE04BD74();
  v44 = *(v3 - 8);
  v45 = v3;
  MEMORY[0x1EEE9AC00](v3, v4);
  v43 = v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54F08);
  v6 = *(v47 - 8);
  MEMORY[0x1EEE9AC00](v47, v7);
  v46 = v42 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD461C0);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = v42 - v11;
  v13 = _s23TransactionDetailsModelVMa(0);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13, v15);
  v17 = v42 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = v1[1];
  v49 = *v1;
  v50 = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54E70);
  sub_1BE0516A4();
  v19 = v53;
  swift_getKeyPath();
  v49 = v19;
  sub_1BD813BE0(&qword_1EBD461C8, _s9ViewModelCMa_1);
  sub_1BE04B594();

  v20 = OBJC_IVAR____TtCV9PassKitUI31FinanceKitTransactionDetailView9ViewModel__transactionDetails;
  swift_beginAccess();
  sub_1BD0DE19C(v19 + v20, v12, &qword_1EBD461C0);

  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_1BD0DE53C(v12, &qword_1EBD461C0);
  }

  else
  {
    v21 = sub_1BD8139C8(v12, v17, _s23TransactionDetailsModelVMa);
    if (*(*(v17 + 2) + 16))
    {
      v42[2] = v42;
      v23 = MEMORY[0x1EEE9AC00](v21, v22);
      v42[1] = &v42[-4];
      v42[-2] = v24;
      v42[-1] = v2;
      v26 = v43;
      v25 = v44;
      v27 = v45;
      (*(v44 + 104))(v43, *MEMORY[0x1E69B80D8], v45, v23);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF80);
      v28 = swift_allocObject();
      *(v28 + 16) = xmmword_1BE0B69E0;
      v29 = &v17[*(v13 + 56)];
      v31 = *v29;
      v30 = *(v29 + 1);
      *(v28 + 56) = MEMORY[0x1E69E6158];
      *(v28 + 64) = sub_1BD110550();
      *(v28 + 32) = v31;
      *(v28 + 40) = v30;
      sub_1BE048C84();
      v32 = sub_1BE04B714();
      v34 = v33;

      (*(v25 + 8))(v26, v27);
      v49 = v32;
      v50 = v34;
      sub_1BD0DDEBC();
      v49 = sub_1BE0506C4();
      v50 = v35;
      v51 = v36 & 1;
      v52 = v37;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54F10);
      sub_1BD813898();
      v38 = v46;
      sub_1BE051A54();
      v40 = v47;
      v39 = v48;
      (*(v6 + 32))(v48, v38, v47);
      (*(v6 + 56))(v39, 0, 1, v40);
      return sub_1BD813618(v17, _s23TransactionDetailsModelVMa);
    }

    sub_1BD813618(v17, _s23TransactionDetailsModelVMa);
  }

  return (*(v6 + 56))(v48, 1, 1, v47);
}

uint64_t sub_1BD80D898@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v30 = a1;
  v34 = a2;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54EE0);
  v3 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33, v4);
  v32 = &v30 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F790);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = &v30 - v8;
  v10 = type metadata accessor for TransactionContext(0);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *v2;
  v15 = v2[1];
  v31 = v2;
  v36 = v16;
  v37 = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54E70);
  sub_1BE0516A4();
  v17 = v35;
  if (PKBankConnectTransactionRecategorisationEnabled())
  {
    sub_1BD0DE19C(v17 + OBJC_IVAR____TtCV9PassKitUI31FinanceKitTransactionDetailView9ViewModel_transactionContext, v9, &qword_1EBD3F790);
    if ((*(v11 + 48))(v9, 1, v10) != 1)
    {
      sub_1BD8139C8(v9, v14, type metadata accessor for TransactionContext);
      v18 = sub_1BE049134();

      sub_1BD813618(v14, type metadata accessor for TransactionContext);
      goto LABEL_7;
    }

    sub_1BD0DE53C(v9, &qword_1EBD3F790);
  }

  else
  {
  }

  v18 = 0;
LABEL_7:
  v36 = v16;
  v37 = v15;
  sub_1BE0516A4();
  v19 = v35;
  swift_getKeyPath();
  v36 = v19;
  sub_1BD813BE0(&qword_1EBD461C8, _s9ViewModelCMa_1);
  sub_1BE04B594();

  v20 = *(v19 + OBJC_IVAR____TtCV9PassKitUI31FinanceKitTransactionDetailView9ViewModel__actualExcludedFromSpendingSummaryValue);

  if ((v18 & 1) != 0 || v20 != 2)
  {
    MEMORY[0x1EEE9AC00](v21, v22);
    *(&v30 - 32) = v18 & 1;
    v26 = v31;
    *(&v30 - 3) = v30;
    *(&v30 - 16) = v20;
    *(&v30 - 1) = v26;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54EE8);
    sub_1BD0DE4F4(&qword_1EBD54EF0, &qword_1EBD54EE8);
    v27 = v32;
    sub_1BE051A44();
    v24 = v34;
    v28 = v27;
    v25 = v33;
    (*(v3 + 32))(v34, v28, v33);
    v23 = 0;
  }

  else
  {
    v23 = 1;
    v25 = v33;
    v24 = v34;
  }

  return (*(v3 + 56))(v24, v23, 1, v25);
}

uint64_t sub_1BD80DCE8@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v35 = a1;
  v3 = type metadata accessor for FinanceKitTransactionDetailView();
  v33 = *(v3 - 8);
  v4 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v3 - 8, v5);
  v34 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F790);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v32 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v32 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD461C0);
  MEMORY[0x1EEE9AC00](v13 - 8, v14);
  v16 = &v32 - v15;
  v17 = *v1;
  v18 = v1[1];
  v39 = *v1;
  v40 = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54E70);
  sub_1BE0516A4();
  v19 = v37;
  swift_getKeyPath();
  v39 = v19;
  sub_1BD813BE0(&qword_1EBD461C8, _s9ViewModelCMa_1);
  sub_1BE04B594();

  v20 = OBJC_IVAR____TtCV9PassKitUI31FinanceKitTransactionDetailView9ViewModel__transactionDetails;
  swift_beginAccess();
  sub_1BD0DE19C(v19 + v20, v16, &qword_1EBD461C0);

  v21 = _s23TransactionDetailsModelVMa(0);
  if ((*(*(v21 - 8) + 48))(v16, 1, v21))
  {
    result = sub_1BD0DE53C(v16, &qword_1EBD461C0);
LABEL_5:
    v28 = 0;
    v29 = 0;
    v30 = 0;
    v26 = 0;
    goto LABEL_6;
  }

  v23 = v34;
  v24 = v16[*(v21 + 68)];
  result = sub_1BD0DE53C(v16, &qword_1EBD461C0);
  if (v24 != 1)
  {
    goto LABEL_5;
  }

  v37 = v17;
  v38 = v18;
  sub_1BE0516A4();
  sub_1BD0DE19C(v36 + OBJC_IVAR____TtCV9PassKitUI31FinanceKitTransactionDetailView9ViewModel_transactionContext, v12, &qword_1EBD3F790);

  sub_1BD813E10(v2, v23, type metadata accessor for FinanceKitTransactionDetailView);
  v25 = (*(v33 + 80) + 16) & ~*(v33 + 80);
  v26 = swift_allocObject();
  sub_1BD8139C8(v23, v26 + v25, type metadata accessor for FinanceKitTransactionDetailView);
  v27 = v32;
  sub_1BD0DE19C(v12, v32, &qword_1EBD3F790);
  type metadata accessor for FinanceKitTransactionReportProblemView.ViewModel();
  swift_allocObject();
  v36 = sub_1BD9A0BCC(v27);
  sub_1BE051694();
  result = sub_1BD0DE53C(v12, &qword_1EBD3F790);
  v28 = v37;
  v29 = v38;
  v30 = sub_1BD813750;
LABEL_6:
  v31 = v35;
  *v35 = v28;
  v31[1] = v29;
  v31[2] = v30;
  v31[3] = v26;
  return result;
}

uint64_t sub_1BD80E120@<X0>(uint64_t a1@<X8>)
{
  v63 = a1;
  v2 = type metadata accessor for FinanceKitTransactionDetailView();
  v53 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v54 = v4;
  v56 = &v52 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for FinanceKitTransactionFoundInMailView(0);
  v61 = *(v5 - 8);
  v62 = v5;
  MEMORY[0x1EEE9AC00](v5, v6);
  v57 = (&v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD46160);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v11 = &v52 - v10;
  v12 = sub_1BE049D24();
  v13 = *(v12 - 8);
  v59 = v12;
  v60 = v13;
  MEMORY[0x1EEE9AC00](v12, v14);
  v52 = &v52 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16, v17);
  v58 = &v52 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD461C0);
  MEMORY[0x1EEE9AC00](v19 - 8, v20);
  v22 = &v52 - v21;
  v23 = _s23TransactionDetailsModelVMa(0);
  v24 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23, v25);
  v27 = &v52 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = *v1;
  v29 = v1[1];
  v55 = v1;
  v67 = v28;
  v68 = v29;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54E70);
  sub_1BE0516A4();
  v30 = v65;
  swift_getKeyPath();
  v67 = v30;
  sub_1BD813BE0(&qword_1EBD461C8, _s9ViewModelCMa_1);
  sub_1BE04B594();

  v31 = OBJC_IVAR____TtCV9PassKitUI31FinanceKitTransactionDetailView9ViewModel__transactionDetails;
  swift_beginAccess();
  sub_1BD0DE19C(v30 + v31, v22, &qword_1EBD461C0);

  if ((*(v24 + 48))(v22, 1, v23) == 1)
  {
    v32 = &qword_1EBD461C0;
    v33 = v22;
  }

  else
  {
    sub_1BD8139C8(v22, v27, _s23TransactionDetailsModelVMa);
    sub_1BD0DE19C(&v27[*(v23 + 76)], v11, &qword_1EBD46160);
    v34 = v59;
    if ((*(v60 + 48))(v11, 1, v59) != 1)
    {
      v38 = v60;
      v39 = v58;
      (*(v60 + 32))(v58, v11, v34);
      v40 = v52;
      (*(v38 + 16))(v52, v39, v34);
      type metadata accessor for FinanceKitTransactionFoundInMailView.ViewModel(0);
      swift_allocObject();
      sub_1BD9B25B8(v40);
      v41 = v56;
      sub_1BD813E10(v55, v56, type metadata accessor for FinanceKitTransactionDetailView);
      v42 = (*(v53 + 80) + 16) & ~*(v53 + 80);
      v43 = swift_allocObject();
      sub_1BD8139C8(v41, v43 + v42, type metadata accessor for FinanceKitTransactionDetailView);
      v44 = [objc_allocWithZone(MEMORY[0x1E69B8558]) initWithAppType_];
      v45 = v57;
      *v57 = v44;
      v46 = v62;
      sub_1BD813BE0(&qword_1EBD54ED8, type metadata accessor for FinanceKitTransactionFoundInMailView.ViewModel);
      v47 = v44;
      sub_1BE048964();
      sub_1BE051A94();
      v48 = (v45 + *(v46 + 28));
      *v48 = sub_1BD8136C4;
      v48[1] = v43;
      objc_allocWithZone(type metadata accessor for FinanceKitTransactionFoundInMailView.FoundInMailViewShieldObserver(0));
      sub_1BE048964();
      v64 = sub_1BD9B4024(v47, sub_1BD8136C4, v43);
      sub_1BE051694();

      (*(v60 + 8))(v58, v34);
      sub_1BD813618(v27, _s23TransactionDetailsModelVMa);
      v49 = v66;
      *(v45 + 8) = v65;
      *(v45 + 16) = v49;
      v50 = v63;
      sub_1BD8139C8(v45, v63, type metadata accessor for FinanceKitTransactionFoundInMailView);
      v37 = v46;
      v36 = v50;
      v35 = 0;
      return (*(v61 + 56))(v36, v35, 1, v37);
    }

    sub_1BD813618(v27, _s23TransactionDetailsModelVMa);
    v32 = &qword_1EBD46160;
    v33 = v11;
  }

  sub_1BD0DE53C(v33, v32);
  v35 = 1;
  v37 = v62;
  v36 = v63;
  return (*(v61 + 56))(v36, v35, 1, v37);
}

uint64_t sub_1BD80E820@<X0>(uint64_t a1@<X8>)
{
  v32 = a1;
  v33 = type metadata accessor for FinanceKitTransactionDebugView();
  v2 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33, v3);
  v31 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1BE049A94();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F790);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v13 = &v31 - v12;
  v14 = sub_1BE04AFE4();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14, v16);
  v18 = &v31 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19, v20);
  v22 = &v31 - v21;
  v23 = v1[1];
  v35 = *v1;
  v36 = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54E70);
  sub_1BE0516A4();
  sub_1BD0DE19C(v34 + OBJC_IVAR____TtCV9PassKitUI31FinanceKitTransactionDetailView9ViewModel_transactionContext, v13, &qword_1EBD3F790);

  v24 = type metadata accessor for TransactionContext(0);
  if ((*(*(v24 - 8) + 48))(v13, 1, v24) == 1)
  {
    sub_1BD0DE53C(v13, &qword_1EBD3F790);
    v25 = 1;
    v26 = v32;
  }

  else
  {
    (*(v6 + 16))(v9, v13, v5);
    sub_1BD813618(v13, type metadata accessor for TransactionContext);
    sub_1BE049A14();
    (*(v6 + 8))(v9, v5);
    v27 = *(v15 + 32);
    v27(v22, v18, v14);
    v28 = v31;
    v27(v31, v22, v14);
    v29 = v32;
    sub_1BD8139C8(v28, v32, type metadata accessor for FinanceKitTransactionDebugView);
    v25 = 0;
    v26 = v29;
  }

  return (*(v2 + 56))(v26, v25, 1, v33);
}

uint64_t sub_1BD80EBE0(uint64_t a1)
{
  v1[5] = a1;
  v1[6] = sub_1BE0528A4();
  v1[7] = sub_1BE052894();
  v3 = sub_1BE052844();
  v1[8] = v3;
  v1[9] = v2;

  return MEMORY[0x1EEE6DFA0](sub_1BD80EC7C, v3, v2);
}

uint64_t sub_1BD80EC7C()
{
  v1 = v0[5];
  v3 = *v1;
  v2 = v1[1];
  v0[2] = v3;
  v0[3] = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54E70);
  sub_1BE0516A4();
  v0[10] = v0[4];
  v0[11] = sub_1BE052894();
  v4 = swift_task_alloc();
  v0[12] = v4;
  *v4 = v0;
  v4[1] = sub_1BD80ED58;

  return sub_1BD439EEC();
}

uint64_t sub_1BD80ED58()
{
  v2 = *v1;
  v3 = *v1;

  if (v0)
  {

    v5 = sub_1BE052844();

    return MEMORY[0x1EEE6DFA0](sub_1BD80F080, v5, v4);
  }

  else
  {
    v6 = swift_task_alloc();
    *(v2 + 104) = v6;
    *v6 = v3;
    v6[1] = sub_1BD80EEFC;

    return sub_1BD43A918();
  }
}

uint64_t sub_1BD80EEFC()
{

  if (v0)
  {

    v1 = sub_1BE052844();
    v3 = v2;
    v4 = sub_1BD813F88;
  }

  else
  {
    v1 = sub_1BE052844();
    v3 = v5;
    v4 = sub_1BD80F0EC;
  }

  return MEMORY[0x1EEE6DFA0](v4, v1, v3);
}

uint64_t sub_1BD80F080()
{

  v1 = *(v0 + 64);
  v2 = *(v0 + 72);

  return MEMORY[0x1EEE6DFA0](sub_1BD813F8C, v1, v2);
}

uint64_t sub_1BD80F0EC()
{

  v1 = *(v0 + 64);
  v2 = *(v0 + 72);

  return MEMORY[0x1EEE6DFA0](sub_1BD5B5274, v1, v2);
}

id sub_1BD80F158@<X0>(void **a1@<X0>, uint64_t a2@<X8>)
{
  v6 = *a1;
  v3 = sub_1BE04EC54();
  v4 = sub_1BE0501D4();
  *a2 = v6;
  *(a2 + 8) = v3;
  *(a2 + 16) = v4;

  return v6;
}

uint64_t sub_1BD80F1B0(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD461C0);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v89 = v76 - v4;
  v88 = sub_1BE049904();
  v87 = *(v88 - 8);
  MEMORY[0x1EEE9AC00](v88, v5);
  v85 = v76 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v86 = v76 - v9;
  v81 = sub_1BE049834();
  v80 = *(v81 - 8);
  MEMORY[0x1EEE9AC00](v81, v10);
  v12 = v76 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = sub_1BE04AF64();
  v77 = *(v78 - 8);
  MEMORY[0x1EEE9AC00](v78, v13);
  v15 = v76 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F790);
  MEMORY[0x1EEE9AC00](v16 - 8, v17);
  v19 = v76 - v18;
  v20 = sub_1BE049A94();
  v21 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20, v22);
  v24 = v76 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25, v26);
  v28 = v76 - v27;
  v79 = a1;
  v29 = a1[1];
  v83 = *a1;
  v90 = v83;
  v82 = v29;
  v91 = v29;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54E70);
  sub_1BE0516A4();
  sub_1BD0DE19C(v92 + OBJC_IVAR____TtCV9PassKitUI31FinanceKitTransactionDetailView9ViewModel_transactionContext, v19, &qword_1EBD3F790);

  v30 = type metadata accessor for TransactionContext(0);
  if ((*(*(v30 - 8) + 48))(v19, 1, v30) == 1)
  {
    return sub_1BD0DE53C(v19, &qword_1EBD3F790);
  }

  (*(v21 + 16))(v24, v19, v20);
  sub_1BD813618(v19, type metadata accessor for TransactionContext);
  (*(v21 + 32))(v28, v24, v20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3D1E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BE0BA740;
  v33 = *MEMORY[0x1E69BA680];
  *(inited + 32) = *MEMORY[0x1E69BA680];
  v76[1] = inited + 32;
  v34 = sub_1BE052434();
  v35 = MEMORY[0x1E69BABE8];
  *(inited + 40) = v34;
  *(inited + 48) = v36;
  v37 = *v35;
  *(inited + 56) = *v35;
  *(inited + 64) = sub_1BE052434();
  *(inited + 72) = v38;
  v39 = *MEMORY[0x1E69BB358];
  *(inited + 80) = *MEMORY[0x1E69BB358];
  v40 = v33;
  v41 = v37;
  v42 = v39;
  sub_1BE049974();
  v43 = sub_1BD80FBD4();
  v45 = v44;
  (*(v77 + 8))(v15, v78);
  *(inited + 88) = v43;
  *(inited + 96) = v45;
  v46 = *MEMORY[0x1E69BB380];
  *(inited + 104) = *MEMORY[0x1E69BB380];
  v47 = v46;
  sub_1BE049984();
  v48 = sub_1BD80FD84(v12);
  v50 = v49;
  (*(v80 + 8))(v12, v81);
  *(inited + 112) = v48;
  *(inited + 120) = v50;
  v51 = *MEMORY[0x1E69BB370];
  *(inited + 128) = *MEMORY[0x1E69BB370];
  v52 = v51;
  v53 = v86;
  sub_1BE049A34();
  v54 = v87;
  v55 = v85;
  v56 = v88;
  (*(v87 + 16))(v85, v53, v88);
  v57 = (*(v54 + 88))(v55, v56);
  v58 = v56;
  v59 = v54;
  v60 = v53;
  if (v57 == *MEMORY[0x1E6967960])
  {
    v61 = 0xEA00000000006465;
    v62 = 0x7A69726F68747561;
  }

  else if (v57 == *MEMORY[0x1E6967968])
  {
    v61 = 0xE400000000000000;
    v62 = 1869440365;
  }

  else if (v57 == *MEMORY[0x1E6967978])
  {
    v61 = 0xE700000000000000;
    v62 = 0x676E69646E6570;
  }

  else if (v57 == *MEMORY[0x1E6967970])
  {
    v61 = 0xE600000000000000;
    v62 = 0x64656B6F6F62;
  }

  else
  {
    if (v57 != *MEMORY[0x1E6967980])
    {
      result = sub_1BE053994();
      __break(1u);
      return result;
    }

    v61 = 0xE800000000000000;
    v62 = 0x64657463656A6572;
  }

  v63 = *MEMORY[0x1E69BB6F8];
  (*(v59 + 8))(v60, v58);
  *(inited + 136) = v62;
  *(inited + 144) = v61;
  v64 = *MEMORY[0x1E69BB360];
  *(inited + 152) = *MEMORY[0x1E69BB360];
  v90 = v83;
  v91 = v82;
  v65 = v64;
  sub_1BE0516A4();
  v66 = v92;
  swift_getKeyPath();
  v90 = v66;
  sub_1BD813BE0(&qword_1EBD461C8, _s9ViewModelCMa_1);
  sub_1BE04B594();

  v67 = OBJC_IVAR____TtCV9PassKitUI31FinanceKitTransactionDetailView9ViewModel__transactionDetails;
  swift_beginAccess();
  v68 = v89;
  sub_1BD0DE19C(v66 + v67, v89, &qword_1EBD461C0);

  v69 = _s23TransactionDetailsModelVMa(0);
  if ((*(*(v69 - 8) + 48))(v68, 1, v69))
  {
    sub_1BD0DE53C(v68, &qword_1EBD461C0);
  }

  else
  {
    v72 = *(v68 + *(v69 + 44));
    v73 = v72;
    sub_1BD0DE53C(v68, &qword_1EBD461C0);
    if (v72)
    {

      v70 = 0xE400000000000000;
      v71 = 1702195828;
      goto LABEL_18;
    }
  }

  v70 = 0xE500000000000000;
  v71 = 0x65736C6166;
LABEL_18:
  v74 = objc_opt_self();
  *(inited + 160) = v71;
  *(inited + 168) = v70;
  sub_1BD1AAF50(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F590);
  swift_arrayDestroy();
  type metadata accessor for PKAnalyticsKey(0);
  sub_1BD813BE0(&qword_1EBD35F00, type metadata accessor for PKAnalyticsKey);
  v75 = sub_1BE052224();

  [v74 subject:v63 sendEvent:v75];

  return (*(v21 + 8))(v28, v20);
}

uint64_t sub_1BD80FBD4()
{
  v0 = sub_1BE04AF64();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = &v16 - v7;
  v9 = sub_1BE04AE64();
  v10 = PKDateIgnoringTimeWithTimeZone();

  if (!v10)
  {
    return 6369134;
  }

  sub_1BE04AEE4();

  (*(v1 + 32))(v8, v4, v0);
  result = PKPaymentDateFormatter();
  if (result)
  {
    v12 = result;
    v13 = sub_1BE04AE64();
    v14 = [v12 stringFromDate_];

    v15 = sub_1BE052434();
    (*(v1 + 8))(v8, v0);
    return v15;
  }

  __break(1u);
  return result;
}

uint64_t sub_1BD80FD84(uint64_t a1)
{
  v2 = sub_1BE049834();
  v3 = *(v2 - 8);
  v5 = MEMORY[0x1EEE9AC00](v2, v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v7, a1, v2, v5);
  v8 = (*(v3 + 88))(v7, v2);
  if (v8 == *MEMORY[0x1E69678B8])
  {
    return 0x6E776F6E6B6E75;
  }

  if (v8 == *MEMORY[0x1E6967850])
  {
    return 0x656D7473756A6461;
  }

  if (v8 == *MEMORY[0x1E6967888])
  {
    return 7173217;
  }

  if (v8 == *MEMORY[0x1E6967860])
  {
    return 0x6D7961506C6C6962;
  }

  if (v8 == *MEMORY[0x1E69678A0])
  {
    return 0x6B63656863;
  }

  if (v8 == *MEMORY[0x1E69678B0])
  {
    return 0x7469736F706564;
  }

  v10 = v8;
  result = 0x6544746365726964;
  if (v10 != *MEMORY[0x1E6967878])
  {
    if (v10 == *MEMORY[0x1E69678C0])
    {
      return 0x646E656469766964;
    }

    else if (v10 == *MEMORY[0x1E6967890])
    {
      return 6645094;
    }

    else if (v10 == *MEMORY[0x1E69678C8])
    {
      return 0x7473657265746E69;
    }

    else if (v10 == *MEMORY[0x1E6967870])
    {
      return 0x53664F746E696F70;
    }

    else if (v10 == *MEMORY[0x1E69678D0])
    {
      return 0x726566736E617274;
    }

    else if (v10 == *MEMORY[0x1E6967858])
    {
      return 0x7761726468746977;
    }

    else if (v10 == *MEMORY[0x1E6967880])
    {
      return 0x676E69646E617473;
    }

    else if (v10 != *MEMORY[0x1E6967868])
    {
      if (v10 == *MEMORY[0x1E6967898])
      {
        return 1851879276;
      }

      else if (v10 == *MEMORY[0x1E69678A8])
      {
        return 0x646E75666572;
      }

      else
      {
        result = sub_1BE053994();
        __break(1u);
      }
    }
  }

  return result;
}

uint64_t sub_1BD8101A4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v23 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3BCA0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v20 - v5;
  v7 = sub_1BE0493F4();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_1BE04F7C4();
  LOBYTE(v56) = 1;
  sub_1BD8107B8(v71);
  *&v70[7] = v71[0];
  *&v70[23] = v71[1];
  *&v70[39] = v71[2];
  *&v70[55] = v71[3];
  v32 = v56;
  v12 = _s23TransactionDetailsModelVMa(0);
  sub_1BD0DE19C(a1 + *(v12 + 48), v6, &qword_1EBD3BCA0);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_1BD0DE53C(v6, &qword_1EBD3BCA0);
    v30 = 0;
    v31 = 0;
    v21 = 0;
    v22 = 0;
    v13 = 0;
    v28 = 0;
    v29 = 0;
    v26 = 0;
    v27 = 0;
    v24 = 0;
    v25 = 0;
    v14 = 0;
  }

  else
  {
    (*(v8 + 32))(v11, v6, v7);
    v31 = sub_1BE04F504();
    LOBYTE(v64[0]) = 1;
    sub_1BD810A60(v11, a1, &v51);
    *&v54[16] = *&v52[16];
    *&v54[32] = *&v52[32];
    *&v54[48] = *&v52[48];
    v53 = v51;
    *v54 = *v52;
    v58 = *&v52[16];
    v59 = *&v52[32];
    v60 = *&v52[48];
    v57 = *v52;
    v56 = v51;
    sub_1BD0DE19C(&v53, v44, &qword_1EBD3E1F0);
    sub_1BD0DE53C(&v56, &qword_1EBD3E1F0);
    v13 = *(&v53 + 1);
    v29 = *&v54[8];
    v30 = *v54;
    v27 = *&v54[24];
    v28 = *&v54[16];
    v25 = *&v54[40];
    v26 = *&v54[32];
    v24 = *&v54[48];
    v21 = *&v54[56];
    v22 = v53;
    v14 = LOBYTE(v64[0]);
    (*(v8 + 8))(v11, v7);
  }

  v15 = sub_1BE04F504();
  LOBYTE(v51) = 1;
  sub_1BD810E04(a1, &v56);
  v38 = v58;
  v39 = v59;
  v36 = v56;
  v37 = v57;
  v41[2] = v58;
  v41[3] = v59;
  v41[4] = v60;
  v41[1] = v57;
  v40 = v60;
  v41[0] = v56;
  sub_1BD0DE19C(&v36, &v53, &qword_1EBD3E1F0);
  sub_1BD0DE53C(v41, &qword_1EBD3E1F0);
  *&v35[23] = v37;
  *&v35[39] = v38;
  *&v35[55] = v39;
  *&v35[71] = v40;
  *&v35[7] = v36;
  v16 = v51;
  v42[0] = v33;
  v42[1] = 0;
  v43[0] = v32;
  *&v43[1] = *v70;
  *&v43[64] = *&v70[63];
  *&v43[49] = *&v70[48];
  *&v43[33] = *&v70[32];
  *&v43[17] = *&v70[16];
  *v34 = v33;
  *&v34[16] = *v43;
  *&v34[80] = *&v43[64];
  *&v34[48] = *&v43[32];
  *&v34[64] = *&v43[48];
  *&v34[32] = *&v43[16];
  v44[0] = v31;
  v44[1] = 0;
  v20 = v14;
  *&v45 = v14;
  v18 = v21;
  v17 = v22;
  *(&v45 + 1) = v22;
  *&v46 = v13;
  *(&v46 + 1) = v30;
  *&v47 = v29;
  *(&v47 + 1) = v28;
  *&v48 = v27;
  *(&v48 + 1) = v26;
  *&v49 = v25;
  *(&v49 + 1) = v24;
  v50 = v21;
  *&v34[120] = v46;
  *&v34[104] = v45;
  *&v34[88] = v31;
  *&v34[184] = v21;
  *&v34[168] = v49;
  *&v34[152] = v48;
  *&v34[136] = v47;
  v51 = v15;
  v52[0] = v16;
  *&v52[1] = *v35;
  *&v52[17] = *&v35[16];
  *&v52[80] = *(&v40 + 1);
  *&v52[65] = *&v35[64];
  *&v52[49] = *&v35[48];
  *&v52[33] = *&v35[32];
  *&v34[192] = v15;
  *&v34[208] = *v52;
  *&v34[288] = *&v52[80];
  *&v34[256] = *&v52[48];
  *&v34[272] = *&v52[64];
  *&v34[224] = *&v52[16];
  *&v34[240] = *&v52[32];
  memcpy(v23, v34, 0x128uLL);
  *&v54[33] = *&v35[32];
  *&v54[49] = *&v35[48];
  *v55 = *&v35[64];
  *&v54[1] = *v35;
  v53 = v15;
  v54[0] = v16;
  *&v55[15] = *&v35[79];
  *&v54[17] = *&v35[16];
  sub_1BD0DE19C(v42, &v56, &qword_1EBD3B890);
  sub_1BD0DE19C(v44, &v56, &qword_1EBD54F58);
  sub_1BD0DE19C(&v51, &v56, &unk_1EBD4D3D0);
  sub_1BD0DE53C(&v53, &unk_1EBD4D3D0);
  v56 = v31;
  *&v57 = v20;
  *(&v57 + 1) = v17;
  *&v58 = v13;
  *(&v58 + 1) = v30;
  *&v59 = v29;
  *(&v59 + 1) = v28;
  *&v60 = v27;
  *(&v60 + 1) = v26;
  v61 = v25;
  v62 = v24;
  v63 = v18;
  sub_1BD0DE53C(&v56, &qword_1EBD54F58);
  v64[0] = v33;
  v64[1] = 0;
  v65 = v32;
  v67 = *&v70[16];
  v68 = *&v70[32];
  *v69 = *&v70[48];
  *&v69[15] = *&v70[63];
  v66 = *v70;
  return sub_1BD0DE53C(v64, &qword_1EBD3B890);
}

uint64_t sub_1BD8107B8@<X0>(uint64_t a1@<X8>)
{
  _s23TransactionDetailsModelVMa(0);
  sub_1BD0DDEBC();
  sub_1BE048C84();
  v2 = sub_1BE0506C4();
  v4 = v3;
  v6 = v5;
  v7 = sub_1BE0505D4();
  v9 = v8;
  v11 = v10;
  sub_1BD0DDF10(v2, v4, v6 & 1);

  sub_1BE0502A4();
  v12 = sub_1BE0505F4();
  v33 = v13;
  v34 = v12;
  v32 = v14;
  v35 = v15;

  sub_1BD0DDF10(v7, v9, v11 & 1);

  sub_1BE048C84();
  v16 = sub_1BE0506C4();
  v18 = v17;
  LOBYTE(v2) = v19;
  sub_1BE0502A4();
  v20 = sub_1BE0505F4();
  v22 = v21;
  LOBYTE(v7) = v23;

  sub_1BD0DDF10(v16, v18, v2 & 1);

  v24 = [objc_opt_self() secondaryLabelColor];
  sub_1BE0511C4();
  v25 = sub_1BE050574();
  v27 = v26;
  LOBYTE(v16) = v28;
  v30 = v29;
  sub_1BD0DDF10(v20, v22, v7 & 1);

  *a1 = v34;
  *(a1 + 8) = v33;
  *(a1 + 16) = v32 & 1;
  *(a1 + 24) = v35;
  *(a1 + 32) = v25;
  *(a1 + 40) = v27;
  *(a1 + 48) = v16 & 1;
  *(a1 + 56) = v30;
  sub_1BD0D7F18(v34, v33, v32 & 1);
  sub_1BE048C84();
  sub_1BD0D7F18(v25, v27, v16 & 1);
  sub_1BE048C84();
  sub_1BD0DDF10(v25, v27, v16 & 1);

  sub_1BD0DDF10(v34, v33, v32 & 1);
}

id sub_1BD810A60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v50 = a2;
  v51 = a1;
  v52 = sub_1BE04B0F4();
  v49 = *(v52 - 8);
  MEMORY[0x1EEE9AC00](v52, v4);
  v6 = &v44[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_1BE04BD74();
  v8 = *(v7 - 8);
  v10 = MEMORY[0x1EEE9AC00](v7, v9);
  v12 = &v44[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v8 + 104))(v12, *MEMORY[0x1E69B80B0], v7, v10);
  result = PKPassKitBundle();
  if (result)
  {
    v14 = result;
    v15 = sub_1BE04B6F4();
    v17 = v16;

    (*(v8 + 8))(v12, v7);
    v56 = v15;
    v57 = v17;
    sub_1BD0DDEBC();
    v18 = sub_1BE0506C4();
    v20 = v19;
    v22 = v21;
    sub_1BE0502A4();
    v23 = sub_1BE0505F4();
    v46 = v24;
    v47 = v23;
    v45 = v25;
    v48 = v26;

    sub_1BD0DDF10(v18, v20, v22 & 1);

    _s23TransactionDetailsModelVMa(0);
    sub_1BE04B054();
    v27 = sub_1BE0493D4();
    v29 = v28;
    (*(v49 + 8))(v6, v52);
    v56 = v27;
    v57 = v29;
    v30 = sub_1BE0506C4();
    v32 = v31;
    LOBYTE(v17) = v33;
    sub_1BE0502A4();
    v34 = sub_1BE0505F4();
    v36 = v35;
    LOBYTE(v15) = v37;
    v39 = v38;

    sub_1BD0DDF10(v30, v32, v17 & 1);

    v40 = v45 & 1;
    LOBYTE(v56) = v45 & 1;
    v55 = v45 & 1;
    v54 = 1;
    v53 = v15 & 1;
    v42 = v46;
    v41 = v47;
    *a3 = v47;
    *(a3 + 8) = v42;
    *(a3 + 16) = v40;
    *(a3 + 24) = v48;
    *(a3 + 32) = 0;
    *(a3 + 40) = 1;
    *(a3 + 48) = v34;
    *(a3 + 56) = v36;
    *(a3 + 64) = v15 & 1;
    *(a3 + 72) = v39;
    v43 = v41;
    sub_1BD0D7F18(v41, v42, v40);
    sub_1BE048C84();
    sub_1BD0D7F18(v34, v36, v15 & 1);
    sub_1BE048C84();
    sub_1BD0DDF10(v34, v36, v15 & 1);

    sub_1BD0DDF10(v43, v42, v56);
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1BD810E04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v59 = a1;
  v60 = sub_1BE04B0F4();
  v58 = *(v60 - 8);
  MEMORY[0x1EEE9AC00](v60, v3);
  v5 = v53 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1BE04BD74();
  v7 = *(v6 - 8);
  v9 = MEMORY[0x1EEE9AC00](v6, v8);
  v11 = v53 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 104))(v11, *MEMORY[0x1E69B80D8], v6, v9);
  result = PKPassKitBundle();
  if (result)
  {
    v13 = result;
    v14 = sub_1BE04B6F4();
    v16 = v15;

    (*(v7 + 8))(v11, v6);
    v64 = v14;
    v65 = v16;
    v53[1] = sub_1BD0DDEBC();
    v17 = sub_1BE0506C4();
    v19 = v18;
    LOBYTE(v13) = v20;
    v21 = sub_1BE0505D4();
    v23 = v22;
    v25 = v24;
    sub_1BD0DDF10(v17, v19, v13 & 1);

    sub_1BE0502A4();
    v26 = sub_1BE0505F4();
    v55 = v27;
    v56 = v26;
    v54 = v28;
    v57 = v29;

    sub_1BD0DDF10(v21, v23, v25 & 1);

    _s23TransactionDetailsModelVMa(0);
    sub_1BE04B054();
    v30 = sub_1BE0493D4();
    v32 = v31;
    (*(v58 + 8))(v5, v60);
    v64 = v30;
    v65 = v32;
    v33 = sub_1BE0506C4();
    v35 = v34;
    v37 = v36;
    v38 = sub_1BE0505D4();
    v40 = v39;
    LOBYTE(v17) = v41;
    sub_1BD0DDF10(v33, v35, v37 & 1);

    sub_1BE0502A4();
    v42 = sub_1BE0505F4();
    v44 = v43;
    LOBYTE(v13) = v45;
    v47 = v46;

    sub_1BD0DDF10(v38, v40, v17 & 1);

    v48 = v54 & 1;
    LOBYTE(v64) = v54 & 1;
    v63 = v54 & 1;
    v62 = 1;
    LOBYTE(v17) = v13 & 1;
    v61 = v13 & 1;
    v49 = v13 & 1;
    v51 = v55;
    v50 = v56;
    *a2 = v56;
    *(a2 + 8) = v51;
    *(a2 + 16) = v48;
    *(a2 + 24) = v57;
    *(a2 + 32) = 0;
    *(a2 + 40) = 1;
    *(a2 + 48) = v42;
    *(a2 + 56) = v44;
    *(a2 + 64) = v49;
    *(a2 + 72) = v47;
    v52 = v50;
    sub_1BD0D7F18(v50, v51, v48);
    sub_1BE048C84();
    sub_1BD0D7F18(v42, v44, v17);
    sub_1BE048C84();
    sub_1BD0DDF10(v42, v44, v17);

    sub_1BD0DDF10(v52, v51, v64);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1BD811208@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1BE04F7B4();
  v25[0] = 1;
  sub_1BD81156C(a1, &v45);
  v39 = *&v46[144];
  v40 = *&v46[160];
  v41 = *&v46[176];
  v35 = *&v46[80];
  v36 = *&v46[96];
  v37 = *&v46[112];
  v38 = *&v46[128];
  v31 = *&v46[16];
  v32 = *&v46[32];
  v33 = *&v46[48];
  v34 = *&v46[64];
  v29 = v45;
  v30 = *v46;
  v42[10] = *&v46[144];
  v42[11] = *&v46[160];
  v42[12] = *&v46[176];
  v42[6] = *&v46[80];
  v42[7] = *&v46[96];
  v42[9] = *&v46[128];
  v42[8] = *&v46[112];
  v42[2] = *&v46[16];
  v42[3] = *&v46[32];
  v42[4] = *&v46[48];
  v42[5] = *&v46[64];
  v42[0] = v45;
  v42[1] = *v46;
  sub_1BD0DE19C(&v29, &v43, &qword_1EBD476C8);
  sub_1BD0DE53C(v42, &qword_1EBD476C8);
  *&v28[151] = v38;
  *&v28[167] = v39;
  *&v28[183] = v40;
  *&v28[199] = v41;
  *&v28[87] = v34;
  *&v28[103] = v35;
  *&v28[119] = v36;
  *&v28[135] = v37;
  *&v28[23] = v30;
  *&v28[39] = v31;
  *&v28[55] = v32;
  *&v28[71] = v33;
  *&v28[7] = v29;
  v43 = v4;
  v44[0] = 1;
  v5 = *&v28[144];
  *&v44[161] = *&v28[160];
  v6 = *&v28[160];
  *&v44[177] = *&v28[176];
  v7 = *&v28[176];
  *&v44[193] = *&v28[192];
  *&v44[208] = *(&v41 + 1);
  v8 = *&v28[80];
  *&v44[97] = *&v28[96];
  v9 = *&v28[96];
  *&v44[113] = *&v28[112];
  v10 = *&v28[112];
  *&v44[129] = *&v28[128];
  v11 = *&v28[128];
  *&v44[145] = *&v28[144];
  v12 = *&v28[16];
  *&v44[33] = *&v28[32];
  v13 = *&v28[32];
  *&v44[49] = *&v28[48];
  v14 = *&v28[48];
  *&v44[65] = *&v28[64];
  v15 = *&v28[64];
  *&v44[81] = *&v28[80];
  *&v44[1] = *v28;
  v16 = *v28;
  *&v44[17] = *&v28[16];
  *&v26[183] = *&v44[160];
  *&v26[199] = *&v44[176];
  *&v26[215] = *&v44[192];
  *&v26[231] = *(&v41 + 1);
  *&v26[119] = *&v44[96];
  *&v26[135] = *&v44[112];
  *&v26[151] = *&v44[128];
  *&v26[167] = *&v44[144];
  *&v26[55] = *&v44[32];
  *&v26[71] = *&v44[48];
  *&v26[87] = *&v44[64];
  *&v26[103] = *&v44[80];
  *&v26[7] = v4;
  *&v26[23] = *v44;
  *&v26[39] = *&v44[16];
  v17 = *&v26[160];
  *(a2 + 185) = *&v26[176];
  v18 = *&v26[208];
  *(a2 + 201) = *&v26[192];
  *(a2 + 217) = v18;
  *(a2 + 232) = *&v26[223];
  v19 = *&v26[96];
  *(a2 + 121) = *&v26[112];
  v20 = *&v26[144];
  *(a2 + 137) = *&v26[128];
  *(a2 + 153) = v20;
  *(a2 + 169) = v17;
  v21 = *&v26[32];
  *(a2 + 57) = *&v26[48];
  v22 = *&v26[80];
  *(a2 + 73) = *&v26[64];
  *(a2 + 89) = v22;
  *(a2 + 105) = v19;
  v23 = *&v26[16];
  *(a2 + 9) = *v26;
  *(a2 + 25) = v23;
  *(a2 + 41) = v21;
  *&v46[161] = v6;
  *&v46[177] = v7;
  *v47 = *&v28[192];
  *&v46[97] = v9;
  *&v46[113] = v10;
  *&v46[129] = v11;
  *&v46[145] = v5;
  *&v46[33] = v13;
  *&v46[49] = v14;
  *&v46[65] = v15;
  *&v46[81] = v8;
  *&v46[1] = v16;
  v27 = 1;
  v25[232] = 1;
  *a2 = 0;
  *(a2 + 8) = 1;
  *(a2 + 248) = 0;
  *(a2 + 256) = 1;
  v45 = v4;
  v46[0] = 1;
  *&v47[15] = *&v28[207];
  *&v46[17] = v12;
  sub_1BD0DE19C(&v43, v25, &qword_1EBD476D0);
  return sub_1BD0DE53C(&v45, &qword_1EBD476D0);
}

id sub_1BD81156C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1BE04B0F4();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v75 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = _s23TransactionDetailsModelVMa(0);
  sub_1BE04B054();
  v9 = sub_1BE0493D4();
  v11 = v10;
  (*(v5 + 8))(v8, v4);
  v103 = v9;
  v104 = v11;
  v12 = sub_1BD0DDEBC();
  v13 = sub_1BE0506C4();
  v15 = v14;
  v17 = v16;
  result = PKRoundedSystemFontOfSizeAndWeight(64.0, *MEMORY[0x1E69DB980]);
  if (result)
  {
    sub_1BE050484();
    v84 = sub_1BE0505F4();
    v85 = v19;
    v90 = v20;
    v22 = v21;

    sub_1BD0DDF10(v13, v15, v17 & 1);

    KeyPath = swift_getKeyPath();
    v83 = swift_getKeyPath();
    v86 = v22 & 1;
    v125 = v22 & 1;
    v123 = 0;
    v87 = sub_1BE0501D4();
    sub_1BE04E1F4();
    v24 = v23;
    v26 = v25;
    v28 = v27;
    v30 = v29;
    v126 = 0;
    v88 = sub_1BE051464();
    v31 = (a1 + *(v91 + 36));
    v32 = v31[1];
    v103 = *v31;
    v104 = v32;
    sub_1BE048C84();
    v33 = sub_1BE0506C4();
    v35 = v34;
    v37 = v36;
    sub_1BE0502A4();
    v38 = sub_1BE0505F4();
    v76 = a1;
    v77 = v12;
    v40 = v39;
    v42 = v41;
    v79 = v43;

    sub_1BD0DDF10(v33, v35, v37 & 1);

    v103 = sub_1BE051494();
    v44 = sub_1BE050574();
    v80 = v45;
    v81 = v44;
    v78 = v46;
    v82 = v47;
    sub_1BD0DDF10(v38, v40, v42 & 1);

    v79 = swift_getKeyPath();
    v48 = (v76 + *(v91 + 40));
    v49 = v48[1];
    v103 = *v48;
    v104 = v49;
    sub_1BE048C84();
    v50 = sub_1BE0506C4();
    v52 = v51;
    LOBYTE(v38) = v53;
    sub_1BE0502A4();
    v54 = sub_1BE0505F4();
    v56 = v55;
    v58 = v57;
    v77 = v59;

    sub_1BD0DDF10(v50, v52, v38 & 1);

    v103 = sub_1BE051494();
    v60 = sub_1BE050574();
    v76 = v60;
    v62 = v61;
    LOBYTE(v38) = v63;
    v91 = v64;
    sub_1BD0DDF10(v54, v56, v58 & 1);

    LOBYTE(v52) = v78 & 1;
    v94 = v78 & 1;
    *&v95 = v84;
    *(&v95 + 1) = v90;
    LOBYTE(v96) = v86;
    *(&v96 + 1) = *v124;
    DWORD1(v96) = *&v124[3];
    *(&v96 + 1) = v85;
    *&v97 = KeyPath;
    *(&v97 + 1) = 0x3FE0000000000000;
    *&v98 = v83;
    *(&v98 + 1) = 1;
    LOBYTE(v99) = 0;
    DWORD1(v99) = *&v128[3];
    *(&v99 + 1) = *v128;
    BYTE8(v99) = v87;
    HIDWORD(v99) = *&v127[3];
    *(&v99 + 9) = *v127;
    *&v100 = v24;
    *(&v100 + 1) = v26;
    *&v101 = v28;
    *(&v101 + 1) = v30;
    LOBYTE(v102) = 0;
    DWORD1(v102) = *(v129 + 3);
    *(&v102 + 1) = v129[0];
    *(&v102 + 1) = v88;
    v93 = v78 & 1;
    LOBYTE(v33) = v38 & 1;
    v92 = v38 & 1;
    v65 = v99;
    v66 = v100;
    v67 = v102;
    *(a2 + 96) = v101;
    *(a2 + 112) = v67;
    *(a2 + 64) = v65;
    *(a2 + 80) = v66;
    v68 = v95;
    v69 = v96;
    v70 = v98;
    *(a2 + 32) = v97;
    *(a2 + 48) = v70;
    *a2 = v68;
    *(a2 + 16) = v69;
    v72 = v80;
    v71 = v81;
    *(a2 + 128) = v81;
    *(a2 + 136) = v72;
    *(a2 + 144) = v52;
    v73 = v79;
    *(a2 + 152) = v82;
    *(a2 + 160) = v73;
    *(a2 + 168) = 1;
    *(a2 + 176) = v60;
    *(a2 + 184) = v62;
    *(a2 + 192) = v33;
    *(a2 + 200) = v91;
    sub_1BD0DE19C(&v95, &v103, &qword_1EBD476D8);
    sub_1BD0D7F18(v71, v72, v52);
    sub_1BE048C84();
    sub_1BE048964();
    v74 = v76;
    sub_1BD0D7F18(v76, v62, v33);
    sub_1BE048C84();
    sub_1BD0DDF10(v74, v62, v33);

    sub_1BD0DDF10(v71, v72, v94);

    v103 = v84;
    v104 = v90;
    v105 = v86;
    *v106 = *v124;
    *&v106[3] = *&v124[3];
    v107 = v85;
    v108 = KeyPath;
    v109 = 0x3FE0000000000000;
    v110 = v83;
    v111 = 1;
    v112 = 0;
    *v113 = *v128;
    *&v113[3] = *&v128[3];
    v114 = v87;
    *&v115[3] = *&v127[3];
    *v115 = *v127;
    v116 = v24;
    v117 = v26;
    v118 = v28;
    v119 = v30;
    v120 = 0;
    *v121 = v129[0];
    *&v121[3] = *(v129 + 3);
    v122 = v88;
    return sub_1BD0DE53C(&v103, &qword_1EBD476D8);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1BD811BD4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FinanceKitTransactionDetailView();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4 - 8, v7);
  v11[1] = a1;
  swift_getKeyPath();
  sub_1BD813E10(a2, v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for FinanceKitTransactionDetailView);
  v8 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v9 = swift_allocObject();
  sub_1BD8139C8(v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v9 + v8, type metadata accessor for FinanceKitTransactionDetailView);
  sub_1BE048C84();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54F20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3DF80);
  sub_1BD0DE4F4(&qword_1EBD54F28, &qword_1EBD54F20);
  sub_1BD813BE0(&qword_1EBD54F30, _s23TransactionDetailsModelV6ActionVMa);
  sub_1BD0DE4F4(&qword_1EBD3FBA0, &unk_1EBD3DF80);
  return sub_1BE0519C4();
}

uint64_t sub_1BD811E20(void *a1, uint64_t a2)
{
  v4 = _s23TransactionDetailsModelV6ActionVMa(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4 - 8, v7);
  v8 = v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for FinanceKitTransactionDetailView();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9 - 8, v12);
  v13 = a1[1];
  v18[0] = *a1;
  v18[1] = v13;
  sub_1BD813E10(a2, v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for FinanceKitTransactionDetailView);
  sub_1BD813E10(a1, v8, _s23TransactionDetailsModelV6ActionVMa);
  v14 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v15 = (v11 + *(v5 + 80) + v14) & ~*(v5 + 80);
  v16 = swift_allocObject();
  sub_1BD8139C8(v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v16 + v14, type metadata accessor for FinanceKitTransactionDetailView);
  sub_1BD8139C8(v8, v16 + v15, _s23TransactionDetailsModelV6ActionVMa);
  sub_1BD0DDEBC();
  sub_1BE048C84();
  return sub_1BE051744();
}

void sub_1BD812050()
{
  sub_1BD8120BC();
  _s23TransactionDetailsModelV6ActionVMa(0);
  v0 = sub_1BE04A9C4();
  PKOpenURL();
}

void sub_1BD8120BC()
{
  v0 = sub_1BE052434();
  v2 = v1;
  v3 = objc_opt_self();
  v4 = *MEMORY[0x1E69BB6F8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3D1E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BE0B98D0;
  v6 = *MEMORY[0x1E69BA680];
  *(inited + 32) = *MEMORY[0x1E69BA680];
  v7 = sub_1BE052434();
  v8 = MEMORY[0x1E69BABE8];
  *(inited + 40) = v7;
  *(inited + 48) = v9;
  v10 = *v8;
  *(inited + 56) = *v8;
  *(inited + 64) = sub_1BE052434();
  *(inited + 72) = v11;
  v12 = *MEMORY[0x1E69BA440];
  *(inited + 80) = *MEMORY[0x1E69BA440];
  *(inited + 88) = v0;
  *(inited + 96) = v2;
  v13 = v6;
  v14 = v10;
  v15 = v12;
  sub_1BD1AAF50(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F590);
  swift_arrayDestroy();
  type metadata accessor for PKAnalyticsKey(0);
  sub_1BD813BE0(&qword_1EBD35F00, type metadata accessor for PKAnalyticsKey);
  v16 = sub_1BE052224();

  [v3 subject:v4 sendEvent:v16];
}

uint64_t sub_1BD812284@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v8 = type metadata accessor for FinanceKitTransactionDetailView();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8 - 8, v11);
  v12 = _s23TransactionDetailsModelVMa(0);
  v13 = (a2 + *(v12 + 36));
  v15 = *v13;
  v14 = v13[1];
  v16 = *(v12 + 60);
  v17 = type metadata accessor for FinanceKitTransactionMapView.ViewModel(0);
  sub_1BD0DE19C(a2 + v16, a4 + *(v17 + 24), &qword_1EBD3F7C0);
  *a4 = a1;
  a4[1] = v15;
  a4[2] = v14;
  sub_1BD813E10(a3, &v35[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)], type metadata accessor for FinanceKitTransactionDetailView);
  v18 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v19 = swift_allocObject();
  sub_1BD8139C8(&v35[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)], v19 + v18, type metadata accessor for FinanceKitTransactionDetailView);
  v20 = type metadata accessor for FinanceKitTransactionMapView(0);
  v21 = (a4 + *(v20 + 20));
  *v21 = sub_1BD813D74;
  v21[1] = v19;
  v22 = a4 + *(v20 + 24);
  v35[15] = 0;
  sub_1BE048C84();
  v23 = a1;
  sub_1BE051694();
  v24 = v36;
  *v22 = v35[16];
  *(v22 + 1) = v24;
  LOBYTE(a1) = sub_1BE0501D4();
  sub_1BE04E1F4();
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v32 = v31;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54F40);
  v34 = a4 + *(result + 36);
  *v34 = a1;
  *(v34 + 1) = v26;
  *(v34 + 2) = v28;
  *(v34 + 3) = v30;
  *(v34 + 4) = v32;
  v34[40] = 0;
  return result;
}

uint64_t sub_1BD8124B0(void *a1, uint64_t a2)
{
  result = type metadata accessor for FinanceKitTransactionDetailView();
  v5 = *(a2 + *(result + 28));
  if (v5)
  {
    v6 = *(v5 + 16);
    if (v6)
    {
      type metadata accessor for NavigationController();
      sub_1BD813BE0(&qword_1EBD38DA8, type metadata accessor for NavigationController);
      sub_1BE048964();
      v7 = v6;
      sub_1BE04D804();
      v8 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4CFD8));
      sub_1BE048964();
      v9 = a1;
      v10 = sub_1BE04F894();
      if ([v7 _pk_settings_useStateDrivenNavigation])
      {
        [v7 _pk_settings_pushViewController_];
      }

      else
      {
        [v7 pushViewController:v10 animated:1];
      }
    }
  }

  else
  {
    type metadata accessor for NavigationController();
    sub_1BD813BE0(&qword_1EBD38DA8, type metadata accessor for NavigationController);
    result = sub_1BE04EEB4();
    __break(1u);
  }

  return result;
}

uint64_t sub_1BD812658()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54E70);
  sub_1BE0516A4();
  sub_1BD43D5E0();
}

uint64_t sub_1BD8126B4(void *a1)
{
  v1 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54E40);
  return sub_1BE0516B4();
}

uint64_t sub_1BD81270C@<X0>(int a1@<W0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v95 = a4;
  v100 = a3;
  v88 = a2;
  LODWORD(v99) = a1;
  v104 = a5;
  v5 = type metadata accessor for FinanceKitTransactionDetailView();
  v93 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v94 = v7;
  v97 = &v81 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1BE04BD74();
  v91 = *(v8 - 8);
  v92 = v8;
  MEMORY[0x1EEE9AC00](v8, v9);
  v90 = &v81 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40D58);
  v101 = *(v11 - 8);
  v102 = v11;
  MEMORY[0x1EEE9AC00](v11, v12);
  v96 = &v81 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54EF8);
  MEMORY[0x1EEE9AC00](v14 - 8, v15);
  v103 = &v81 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17, v18);
  v20 = &v81 - v19;
  v98 = sub_1BE049B04();
  v21 = *(v98 - 8);
  MEMORY[0x1EEE9AC00](v98, v22);
  v89 = &v81 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24, v25);
  v27 = &v81 - v26;
  v28 = sub_1BE04AFE4();
  MEMORY[0x1EEE9AC00](v28, v29);
  v35.n128_f64[0] = MEMORY[0x1EEE9AC00](v30, v31);
  v37 = &v81 - v36;
  v38 = 0;
  v39 = 0;
  v40 = 0;
  if (v99)
  {
    v41 = v32;
    v42 = v33;
    v87 = v33;
    v84 = v34;
    v43 = _s23TransactionDetailsModelVMa(0);
    v44 = v43[13];
    v82 = *(v42 + 16);
    v45 = v27;
    v46 = v88;
    v85 = v41;
    v82(v37, v88 + v44, v41);
    v47 = (v46 + v43[9]);
    v48 = v47[1];
    v86 = *v47;
    v83 = v48;
    v49 = v43[18];
    v99 = v20;
    v50 = *(v21 + 16);
    v51 = v46 + v49;
    v52 = v45;
    v50(v45, v51, v98);
    v53 = objc_allocWithZone(MEMORY[0x1E695DEE0]);
    sub_1BE048C84();
    v40 = [v53 init];
    v54 = v84;
    v82(v84, v37, v41);
    v55 = v89;
    v56 = v98;
    v50(v89, v52, v98);
    v20 = v99;
    _s9ViewModelCMa_4();
    swift_allocObject();
    v107 = sub_1BD7DB734(v54, v86, v83, v55);
    sub_1BE051694();
    (*(v21 + 8))(v52, v56);
    (*(v87 + 8))(v37, v85);
    v38 = v105;
    v39 = v106;
    sub_1BE048964();
    v57 = v40;
    sub_1BE048964();
  }

  v58 = v100;
  if (v100 == 2)
  {
    v59 = 1;
    v61 = v101;
    v60 = v102;
  }

  else
  {
    v63 = v90;
    v62 = v91;
    v64 = v92;
    (*(v91 + 104))(v90, *MEMORY[0x1E69B8040], v92, v35);
    v65 = sub_1BE04B714();
    v67 = v66;
    (*(v62 + 8))(v63, v64);
    v107 = v65;
    v108 = v67;
    sub_1BE0528A4();
    v68 = sub_1BE052894();
    v69 = swift_allocObject();
    v70 = v20;
    v71 = MEMORY[0x1E69E85E0];
    *(v69 + 16) = v68;
    *(v69 + 24) = v71;
    *(v69 + 32) = v58 & 1;
    v72 = v97;
    sub_1BD813E10(v95, v97, type metadata accessor for FinanceKitTransactionDetailView);
    v73 = sub_1BE052894();
    v74 = (*(v93 + 80) + 32) & ~*(v93 + 80);
    v75 = swift_allocObject();
    *(v75 + 16) = v73;
    *(v75 + 24) = v71;
    v20 = v70;
    sub_1BD8139C8(v72, v75 + v74, type metadata accessor for FinanceKitTransactionDetailView);
    sub_1BE051934();
    sub_1BD0DDEBC();
    v76 = v96;
    sub_1BE051834();
    v61 = v101;
    v60 = v102;
    (*(v101 + 32))(v70, v76, v102);
    v59 = 0;
  }

  (*(v61 + 56))(v20, v59, 1, v60, v35);
  v77 = v103;
  sub_1BD0DE19C(v20, v103, &qword_1EBD54EF8);
  v78 = v104;
  *v104 = v38;
  v78[1] = v39;
  v78[2] = v40;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54F00);
  sub_1BD0DE19C(v77, v78 + *(v79 + 48), &qword_1EBD54EF8);
  sub_1BD81377C(v38, v39, v40);
  sub_1BD8137C8(v38, v39, v40);
  sub_1BD0DE53C(v20, &qword_1EBD54EF8);
  sub_1BD0DE53C(v77, &qword_1EBD54EF8);
  return sub_1BD8137C8(v38, v39, v40);
}

uint64_t sub_1BD812F18(unsigned __int8 *a1)
{
  v1 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54E70);
  sub_1BE0516A4();
  sub_1BD4403E4(v1);
}

uint64_t sub_1BD812F80@<X0>(uint64_t *a1@<X8>)
{
  sub_1BE053D04();
  sub_1BE053084();
  sub_1BE053D64();
  result = sub_1BE053B24();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_1BD812FF0()
{
  result = qword_1EBD54E00;
  if (!qword_1EBD54E00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD54DF8);
    sub_1BD0DE4F4(&qword_1EBD54E08, &qword_1EBD54E10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD54E00);
  }

  return result;
}

unint64_t sub_1BD8130A0()
{
  result = qword_1EBD54E20;
  if (!qword_1EBD54E20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD54DE0);
    sub_1BD813158();
    sub_1BD0DE4F4(&qword_1EBD395B8, &qword_1EBD39580);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD54E20);
  }

  return result;
}

unint64_t sub_1BD813158()
{
  result = qword_1EBD54E28;
  if (!qword_1EBD54E28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD54E18);
    sub_1BD0DE4F4(&qword_1EBD54E30, &qword_1EBD54E38);
    sub_1BD0DE4F4(&qword_1EBD395A8, &qword_1EBD395B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD54E28);
  }

  return result;
}

uint64_t sub_1BD81323C()
{
  v2 = *(type metadata accessor for FinanceKitTransactionDetailView() - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1BD0F985C;

  return sub_1BD80EBE0(v0 + v3);
}

unint64_t sub_1BD813308()
{
  result = qword_1EBD54E50;
  if (!qword_1EBD54E50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD54DF0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD54DE8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD54DE0);
    sub_1BD8130A0();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_1BD813BE0(&qword_1EBD37148, MEMORY[0x1E697C028]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD54E50);
  }

  return result;
}

unint64_t sub_1BD813444()
{
  result = qword_1EBD54E58;
  if (!qword_1EBD54E58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD54E58);
  }

  return result;
}

unint64_t sub_1BD813498()
{
  result = qword_1EBD54E60;
  if (!qword_1EBD54E60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD54E48);
    sub_1BD372964();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD54E60);
  }

  return result;
}

uint64_t sub_1BD813544(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
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

uint64_t sub_1BD8135C8(uint64_t result)
{
  if (result)
  {
    sub_1BE048964();
    sub_1BE048964();

    return sub_1BE048964();
  }

  return result;
}

uint64_t sub_1BD813618(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1BD813678(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1BD8136DC(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for FinanceKitTransactionDetailView() - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t sub_1BD81377C(uint64_t result, uint64_t a2, void *a3)
{
  if (result)
  {
    sub_1BE048964();
    v4 = a3;

    return sub_1BE048964();
  }

  return result;
}

uint64_t sub_1BD8137C8(uint64_t result, uint64_t a2, void *a3)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1BD81381C(unsigned __int8 *a1)
{
  type metadata accessor for FinanceKitTransactionDetailView();

  return sub_1BD812F18(a1);
}

unint64_t sub_1BD813898()
{
  result = qword_1EBD54F18;
  if (!qword_1EBD54F18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD54F10);
    sub_1BD0DE4F4(&qword_1EBD3FBA0, &unk_1EBD3DF80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD54F18);
  }

  return result;
}

uint64_t sub_1BD813948(void *a1)
{
  v3 = *(type metadata accessor for FinanceKitTransactionDetailView() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_1BD811E20(a1, v4);
}

uint64_t sub_1BD8139C8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_1BD813A30()
{
  type metadata accessor for FinanceKitTransactionDetailView();
  _s23TransactionDetailsModelV6ActionVMa(0);

  sub_1BD812050();
}

unint64_t sub_1BD813B24()
{
  result = qword_1EBD54F48;
  if (!qword_1EBD54F48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD54F40);
    sub_1BD813BE0(&qword_1EBD54F50, type metadata accessor for FinanceKitTransactionMapView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD54F48);
  }

  return result;
}

uint64_t sub_1BD813BE0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t objectdestroyTm_98()
{
  v1 = type metadata accessor for FinanceKitTransactionDetailView();
  v2 = v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));

  v3 = *(v1 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3FA20);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_1BE04E664();
    (*(*(v4 - 8) + 8))(v2 + v3, v4);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1BD813D8C(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v4 = *(type metadata accessor for FinanceKitTransactionDetailView() - 8);
  v5 = v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return a2(a1, v5);
}

uint64_t sub_1BD813E10(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_1BD813E78()
{
  result = qword_1EBD54F60;
  if (!qword_1EBD54F60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD54E68);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD54DF0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD54E48);
    sub_1BD813308();
    sub_1BD813444();
    sub_1BD813498();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD54F60);
  }

  return result;
}

id sub_1BD813F90()
{
  sub_1BD81679C();
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ProvisioningUICoordinator();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1BD81412C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1BE04D214();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v37 - v11;
  v13 = OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_composer;
  if (*&v1[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_composer] && (sub_1BE048964(), v14 = sub_1BE04C0C4(), , (v14 & 1) != 0))
  {
    sub_1BE04D0D4();
    v15 = v1;
    v16 = sub_1BE04D204();
    v17 = sub_1BE052C54();

    if (os_log_type_enabled(v16, v17))
    {
      v40 = v5;
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v42 = v19;
      *v18 = 136315138;
      if (*&v1[v13])
      {
        sub_1BE048964();
        v20 = sub_1BE04C0A4();
        v22 = v21;
      }

      else
      {
        v20 = 0;
        v22 = 0xE000000000000000;
      }

      v36 = sub_1BD123690(v20, v22, &v42);

      *(v18 + 4) = v36;
      _os_log_impl(&dword_1BD026000, v16, v17, "[%s] Attempted to reset coordinator while is it running. Ignoring.", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v19);
      MEMORY[0x1BFB45F20](v19, -1, -1);
      MEMORY[0x1BFB45F20](v18, -1, -1);

      (*(v40 + 8))(v8, v4);
    }

    else
    {

      (*(v5 + 8))(v8, v4);
    }
  }

  else
  {
    if (a1)
    {
      *&v1[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_configuration] = a1;
      sub_1BE048964();
    }

    if (*&v1[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_credentialIndex] || *&v1[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_provisionedPasses] || *&v1[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_provisioningError] || *&v1[v13])
    {
      v41 = OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_credentialIndex;
      sub_1BE04D0D4();
      v23 = v1;
      v24 = sub_1BE04D204();
      v25 = sub_1BE052C54();

      if (os_log_type_enabled(v24, v25))
      {
        v39 = v4;
        v40 = v5;
        v26 = swift_slowAlloc();
        v27 = swift_slowAlloc();
        v28 = v13;
        v29 = v27;
        v42 = v27;
        *v26 = 136315138;
        v38 = v28;
        if (*&v1[v28])
        {
          sub_1BE048964();
          v30 = sub_1BE04C0A4();
          v32 = v31;
        }

        else
        {
          v30 = 0;
          v32 = 0xE000000000000000;
        }

        v33 = sub_1BD123690(v30, v32, &v42);

        *(v26 + 4) = v33;
        _os_log_impl(&dword_1BD026000, v24, v25, "[%s] Resetting provisioning coordinator", v26, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v29);
        MEMORY[0x1BFB45F20](v29, -1, -1);
        MEMORY[0x1BFB45F20](v26, -1, -1);

        (*(v40 + 8))(v12, v39);
        v13 = v38;
      }

      else
      {

        (*(v5 + 8))(v12, v4);
      }

      *&v2[v41] = 0;
      v34 = *&v23[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_provisionedPasses];
      *&v23[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_provisionedPasses] = 0;

      v35 = *&v23[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_provisioningError];
      *&v23[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_provisioningError] = 0;

      if (*&v2[v13])
      {
        sub_1BE048964();
        sub_1BE04C024();
      }

      *&v2[v13] = 0;
    }
  }
}

void sub_1BD8145A8(void *a1)
{
  v2 = v1;
  v4 = sub_1BE04B944();
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1BE04C384();
  v48 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v9);
  v47 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1BE04D214();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v13);
  v15 = &v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *&v2[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_fieldsModel];
  *&v2[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_fieldsModel] = a1;
  v17 = a1;

  v18 = OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_composer;
  if (!*&v2[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_composer])
  {
    *&v2[v18] = sub_1BD8155AC();
  }

  v19 = *&v2[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_provisioningError];
  *&v2[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_provisioningError] = 0;

  v51 = *&v2[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_context];
  Strong = swift_unknownObjectWeakLoadStrong();
  v49 = v8;
  v50 = v7;
  if (Strong)
  {
    v21 = Strong;
    v22 = [Strong view];

    if (!v22)
    {
LABEL_21:
      __break(1u);
      return;
    }

    v23 = [v22 window];

    if (v23)
    {
      v24 = [v23 windowScene];

      if (v24)
      {
        v25 = [v24 _sceneIdentifier];

        sub_1BE052434();
      }
    }
  }

  sub_1BE04BB44();
  sub_1BE04D0D4();
  v26 = v2;
  v27 = sub_1BE04D204();
  v28 = sub_1BE052C54();

  if (!os_log_type_enabled(v27, v28))
  {

    (*(v12 + 8))(v15, v11);
    if (!*&v2[v18])
    {
      return;
    }

    goto LABEL_12;
  }

  v43 = v4;
  v45 = v12;
  v46 = v11;
  v29 = swift_slowAlloc();
  v30 = swift_slowAlloc();
  v52 = v30;
  *v29 = 136315650;
  v44 = v18;
  if (*&v2[v18])
  {
    sub_1BE048964();
    v31 = sub_1BE04C0A4();
    v33 = v32;
  }

  else
  {
    v31 = 0;
    v33 = 0xE000000000000000;
  }

  v34 = sub_1BD123690(v31, v33, &v52);

  *(v29 + 4) = v34;
  *(v29 + 12) = 2080;
  v35 = *&v26[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_credentialIndex];
  sub_1BE048964();
  v36 = sub_1BE04C3A4();

  if ((v35 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_20;
  }

  if (v35 >= *(v36 + 16))
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  (*(v48 + 16))(v47, v36 + ((*(v48 + 80) + 32) & ~*(v48 + 80)) + *(v48 + 72) * v35, v49);

  v37 = sub_1BE0524A4();
  v39 = sub_1BD123690(v37, v38, &v52);

  *(v29 + 14) = v39;
  *(v29 + 22) = 2080;
  sub_1BE04BB94();
  v40 = sub_1BE0524A4();
  v42 = sub_1BD123690(v40, v41, &v52);

  *(v29 + 24) = v42;
  _os_log_impl(&dword_1BD026000, v27, v28, "[%s] Continuing provisioning credential: %s to %s", v29, 0x20u);
  swift_arrayDestroy();
  MEMORY[0x1BFB45F20](v30, -1, -1);
  MEMORY[0x1BFB45F20](v29, -1, -1);

  (*(v45 + 8))(v15, v46);
  if (*&v2[v44])
  {
LABEL_12:
    sub_1BE048964();
    sub_1BE04C094();
  }
}

uint64_t sub_1BD814B5C(void *a1, int a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v42 = a2;
  v41 = a1;
  v8 = sub_1BE04D214();
  v39 = *(v8 - 8);
  v40 = v8;
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1BE04C384();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v14);
  v16 = &v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = 0;
  v44 = 0xE000000000000000;
  v17 = *&v4[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_credentialIndex];
  sub_1BE048964();
  v18 = sub_1BE04C3A4();

  if ((v17 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (v17 >= *(v18 + 16))
  {
LABEL_11:
    __break(1u);
    return result;
  }

  v37 = a3;
  v38 = a4;
  (*(v13 + 16))(v16, v18 + ((*(v13 + 80) + 32) & ~*(v13 + 80)) + *(v13 + 72) * v17, v12);

  sub_1BE053974();
  (*(v13 + 8))(v16, v12);
  v20 = v43;
  v21 = v44;
  sub_1BE04D0D4();
  v22 = v5;
  sub_1BE048C84();
  v23 = sub_1BE04D204();
  v24 = sub_1BE052C54();

  if (os_log_type_enabled(v23, v24))
  {
    v36 = v20;
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v43 = v26;
    *v25 = 136315394;
    if (*&v22[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_composer])
    {
      sub_1BE048964();
      v27 = sub_1BE04C0A4();
      v29 = v28;
    }

    else
    {
      v27 = 0;
      v29 = 0xE000000000000000;
    }

    v30 = sub_1BD123690(v27, v29, &v43);

    *(v25 + 4) = v30;
    *(v25 + 12) = 2080;
    v31 = sub_1BD123690(v36, v21, &v43);

    *(v25 + 14) = v31;
    _os_log_impl(&dword_1BD026000, v23, v24, "[%s] Preflighting provisioning credential: %s", v25, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1BFB45F20](v26, -1, -1);
    MEMORY[0x1BFB45F20](v25, -1, -1);

    (*(v39 + 8))(v11, v40);
  }

  else
  {

    (*(v39 + 8))(v11, v40);
  }

  v32 = *&v22[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_fieldsModel];
  v33 = v41;
  *&v22[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_fieldsModel] = v41;
  v34 = v33;

  *&v22[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_composer] = sub_1BD8155AC();
  sub_1BE048964();

  LOBYTE(v43) = v42;
  sub_1BE04C0D4();
}

uint64_t sub_1BD814F6C()
{
  v1 = sub_1BE04D214();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1, v3);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BE04D0D4();
  v6 = v0;
  v7 = sub_1BE04D204();
  v8 = sub_1BE052C54();

  if (os_log_type_enabled(v7, v8))
  {
    v21 = v1;
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v22 = v10;
    *v9 = 136315138;
    if (*&v6[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_composer])
    {
      sub_1BE048964();
      v11 = sub_1BE04C0A4();
      v13 = v12;
    }

    else
    {
      v11 = 0;
      v13 = 0xE000000000000000;
    }

    v15 = sub_1BD123690(v11, v13, &v22);

    *(v9 + 4) = v15;
    _os_log_impl(&dword_1BD026000, v7, v8, "[%s] Canceling flow", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x1BFB45F20](v10, -1, -1);
    MEMORY[0x1BFB45F20](v9, -1, -1);

    result = (*(v2 + 8))(v5, v21);
  }

  else
  {

    result = (*(v2 + 8))(v5, v1);
  }

  v16 = OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_composer;
  if (*&v6[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_composer])
  {
    sub_1BE048964();
    sub_1BE04C024();
    *&v6[v16] = 0;

    v17 = &v6[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_renderer];
    if (swift_unknownObjectWeakLoadStrong())
    {
      v18 = *(v17 + 1);
      ObjectType = swift_getObjectType();
      v23 = 4;
      (*(*(v18 + 8) + 8))(&v23, 0, ObjectType);

      return swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  return result;
}

void sub_1BD81521C()
{
  v1 = sub_1BE04D214();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1, v3);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BE04D0D4();
  v6 = v0;
  v7 = sub_1BE04D204();
  v8 = sub_1BE052C54();

  if (os_log_type_enabled(v7, v8))
  {
    v25 = v1;
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v26 = v10;
    *v9 = 136315138;
    if (*&v6[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_composer])
    {
      sub_1BE048964();
      v11 = sub_1BE04C0A4();
      v13 = v12;
    }

    else
    {
      v11 = 0;
      v13 = 0xE000000000000000;
    }

    v14 = sub_1BD123690(v11, v13, &v26);

    *(v9 + 4) = v14;
    _os_log_impl(&dword_1BD026000, v7, v8, "[%s] Terminating flow", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x1BFB45F20](v10, -1, -1);
    MEMORY[0x1BFB45F20](v9, -1, -1);

    (*(v2 + 8))(v5, v25);
  }

  else
  {

    (*(v2 + 8))(v5, v1);
  }

  sub_1BD81679C();
  v15 = *&v6[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_reporter];
  if (v15)
  {
    [v15 reportProvisioningCompleteWithSuccess_];
  }

  v16 = *&v6[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_provisioningError];
  if (v16)
  {
    v17 = *&v6[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_provisioningError];
  }

  else
  {
    v17 = [objc_opt_self() errorWithCommonType:1 severity:5];
  }

  v18 = &v6[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_delegate];
  if (swift_unknownObjectWeakLoadStrong())
  {
    v19 = *(v18 + 1);
    ObjectType = swift_getObjectType();
    v21 = *(v19 + 8);
    v22 = v16;
    v23 = v17;
    v21(v6, v17, 1, ObjectType, v19);
    swift_unknownObjectRelease();
  }

  else
  {
    v24 = v16;
  }
}

uint64_t sub_1BD8155AC()
{
  v1 = v0;
  v2 = sub_1BE04C384();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v0 + OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_fieldsModel);
  if (v7)
  {
    v8 = v7;
  }

  else
  {
    v8 = [objc_allocWithZone(MEMORY[0x1E69B8E38]) init];
  }

  v9 = *(v1 + OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_skipRequirements);
  v10 = v7;
  if (v9 != 1)
  {
    v11 = MEMORY[0x1E69E7CC0];
    goto LABEL_8;
  }

  v11 = sub_1BD1D8324(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v13 = *(v11 + 2);
  v12 = *(v11 + 3);
  v14 = v13 + 1;
  if (v13 >= v12 >> 1)
  {
    goto LABEL_19;
  }

  while (1)
  {
    *(v11 + 2) = v14;
    v11[v13 + 32] = 10;
LABEL_8:
    if (*(v1 + OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_previouslyAcceptedTerms) == 1)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v11 = sub_1BD1D8324(0, *(v11 + 2) + 1, 1, v11);
      }

      v16 = *(v11 + 2);
      v15 = *(v11 + 3);
      if (v16 >= v15 >> 1)
      {
        v11 = sub_1BD1D8324((v15 > 1), v16 + 1, 1, v11);
      }

      *(v11 + 2) = v16 + 1;
      v11[v16 + 32] = 15;
    }

    v13 = *(v1 + OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_context);
    v17 = *(v1 + OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_credentialIndex);
    sub_1BE048964();
    v14 = sub_1BE04C3A4();

    if ((v17 & 0x8000000000000000) != 0)
    {
      __break(1u);
      goto LABEL_18;
    }

    v12 = *(v14 + 16);
    if (v17 < v12)
    {
      break;
    }

LABEL_18:
    __break(1u);
LABEL_19:
    v11 = sub_1BD1D8324((v12 > 1), v14, 1, v11);
  }

  (*(v3 + 16))(v6, v14 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v17, v2);

  sub_1BD82B4EC(&unk_1EBD55190, v18, type metadata accessor for ProvisioningUICoordinator);
  v19 = sub_1BE04BF34();

  (*(v3 + 8))(v6, v2);
  v20 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v21 = swift_allocObject();
  *(v21 + 16) = v20;
  *(v21 + 24) = v8;
  v22 = v8;
  sub_1BE04C054();
  v23 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v24 = swift_allocObject();
  *(v24 + 16) = v23;
  *(v24 + 24) = v22;
  v25 = v22;
  sub_1BE04C074();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_1BE04C0B4();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_1BE048964();
  sub_1BE04C044();

  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_1BE048964();
  sub_1BE04C064();

  return v19;
}

void sub_1BD815A48(unsigned __int8 *a1, int a2, uint64_t a3, void *a4)
{
  v7 = sub_1BE04D214();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &v58 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v14 = Strong;
    LODWORD(v62) = a2;
    sub_1BE04D0D4();
    v15 = v14;
    v16 = sub_1BE04D204();
    v17 = sub_1BE052C54();

    if (os_log_type_enabled(v16, v17))
    {
      v60 = a4;
      v18 = swift_slowAlloc();
      v59 = swift_slowAlloc();
      v63[0] = v59;
      *v18 = 136315650;
      v61 = v15;
      if (*&v15[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_composer])
      {
        sub_1BE048964();
        v19 = sub_1BE04C0A4();
        v21 = v20;
      }

      else
      {
        v19 = 0;
        v21 = 0xE000000000000000;
      }

      v22 = sub_1BD123690(v19, v21, v63);

      *(v18 + 4) = v22;
      *(v18 + 12) = 2080;
      v23 = sub_1BE04B734();
      v25 = sub_1BD123690(v23, v24, v63);

      *(v18 + 14) = v25;
      *(v18 + 22) = 2080;
      if (v62)
      {
        v26 = 7562585;
      }

      else
      {
        v26 = 28494;
      }

      if (v62)
      {
        v27 = 0xE300000000000000;
      }

      else
      {
        v27 = 0xE200000000000000;
      }

      v28 = sub_1BD123690(v26, v27, v63);

      *(v18 + 24) = v28;
      _os_log_impl(&dword_1BD026000, v16, v17, "[%s] Transitioning to Step %s isRunning: %s", v18, 0x20u);
      v29 = v59;
      swift_arrayDestroy();
      MEMORY[0x1BFB45F20](v29, -1, -1);
      MEMORY[0x1BFB45F20](v18, -1, -1);

      (*(v8 + 8))(v11, v7);
      v15 = v61;
      a4 = v60;
    }

    else
    {

      (*(v8 + 8))(v11, v7);
    }

    v30 = &v15[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_renderer];
    v31 = swift_unknownObjectWeakLoadStrong();
    v32 = v62;
    if (v31)
    {
      v33 = *(v30 + 1);
      ObjectType = swift_getObjectType();
      sub_1BD88BA18(v12, v63);
      (*(*(v33 + 8) + 8))(v63, v32 & 1, ObjectType);
      swift_unknownObjectRelease();
    }

    if (sub_1BE04B724())
    {
      v35 = *&v15[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_reporter];
      if (v35)
      {
        v36 = v35;
        sub_1BE04B734();
        v37 = sub_1BE052404();

        [v36 reportProvisioningStep:v37 finishedWithStatus:0];
LABEL_46:

        v15 = v37;
      }
    }

    else
    {
      if ((sub_1BE04B764() & 1) == 0 || (v32 & 1) == 0)
      {
        if ((sub_1BE04B754() & 1) == 0)
        {
          goto LABEL_47;
        }

        if ((v32 & 1) == 0)
        {
          goto LABEL_47;
        }

        v50 = *&v15[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_reporter];
        if (!v50)
        {
          goto LABEL_47;
        }

        v36 = v50;
        sub_1BE04B734();
        v37 = sub_1BE052404();

        [v36 reportProvisioningStepStart_];
        goto LABEL_46;
      }

      v38 = *&v15[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_reporter];
      if (v38)
      {
        v39 = v38;
        sub_1BE04B734();
        v36 = sub_1BE052404();

        v40 = a4;
        if (a4)
        {
          v62 = v39;
          v61 = v15;
          v41 = objc_alloc_init(MEMORY[0x1E695DF70]);
          v42 = objc_alloc_init(MEMORY[0x1E695DF70]);
          v64 = 0u;
          v65 = 0u;
          v66 = 0u;
          v67 = 0u;
          v43 = [v40 paymentSetupFields];
          v44 = [v43 countByEnumeratingWithState:&v64 objects:v63 count:16];
          if (v44)
          {
            v45 = v44;
            v46 = *v65;
            do
            {
              for (i = 0; i != v45; ++i)
              {
                if (*v65 != v46)
                {
                  objc_enumerationMutation(v43);
                }

                v48 = *(*(&v64 + 1) + 8 * i);
                if (([v48 isHidden] & 1) == 0)
                {
                  v49 = [v48 identifier];
                  [v41 addObject:v49];
                  if ([v48 source] == 2)
                  {
                    [v42 addObject:v49];
                  }
                }
              }

              v45 = [v43 countByEnumeratingWithState:&v64 objects:v63 count:16];
            }

            while (v45);
          }

          v51 = objc_alloc_init(MEMORY[0x1E695DF90]);
          if ([v41 count])
          {
            v52 = [v41 componentsJoinedByString:{@", "}];
            [v51 setObject:v52 forKeyedSubscript:*MEMORY[0x1E69BB1C0]];
          }

          v53 = [v42 count];
          v15 = v61;
          if (v53)
          {
            v54 = [v42 componentsJoinedByString:{@", "}];
            [v51 setObject:v54 forKeyedSubscript:*MEMORY[0x1E69BB1B8]];
          }

          v55 = [v51 copy];

          v39 = v62;
        }

        else
        {
          v55 = 0;
        }

        v56 = v55;
        if (!v56)
        {
          __break(1u);
          return;
        }

        v57 = v56;
        type metadata accessor for PKAnalyticsKey(0);
        sub_1BD82B4EC(&qword_1EBD35F00, 255, type metadata accessor for PKAnalyticsKey);
        sub_1BE052244();

        v37 = sub_1BE052224();

        [v39 reportProvisioningStepStart:v36 context:v37];

        v15 = v39;
        goto LABEL_46;
      }
    }

LABEL_47:
  }
}

void sub_1BD816158(uint64_t a1, char a2, uint64_t a3, void *a4)
{
  if (sub_1BE04B764())
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v7 = *(Strong + OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_reporter);
      v8 = Strong;
      v9 = v7;

      if (v7)
      {
        sub_1BE04B734();
        v10 = sub_1BE052404();

        v11 = a4;
        if (a4)
        {
          v32 = v9;
          v12 = objc_alloc_init(MEMORY[0x1E695DF70]);
          v13 = objc_alloc_init(MEMORY[0x1E695DF70]);
          v34 = 0u;
          v35 = 0u;
          v36 = 0u;
          v37 = 0u;
          v31 = v11;
          v14 = [v11 paymentSetupFields];
          v15 = [v14 countByEnumeratingWithState:&v34 objects:v33 count:16];
          if (v15)
          {
            v16 = v15;
            v17 = *v35;
            do
            {
              for (i = 0; i != v16; ++i)
              {
                if (*v35 != v17)
                {
                  objc_enumerationMutation(v14);
                }

                v19 = *(*(&v34 + 1) + 8 * i);
                if (([v19 isHidden] & 1) == 0)
                {
                  v20 = [v19 identifier];
                  [v12 addObject:v20];
                  if ([v19 source] == 2)
                  {
                    [v13 addObject:v20];
                  }
                }
              }

              v16 = [v14 countByEnumeratingWithState:&v34 objects:v33 count:16];
            }

            while (v16);
          }

          v25 = objc_alloc_init(MEMORY[0x1E695DF90]);
          if ([v12 count])
          {
            v26 = [v12 componentsJoinedByString:{@", "}];
            [v25 setObject:v26 forKeyedSubscript:*MEMORY[0x1E69BB1C0]];
          }

          v9 = v32;
          if ([v13 count])
          {
            v27 = [v13 componentsJoinedByString:{@", "}];
            [v25 setObject:v27 forKeyedSubscript:*MEMORY[0x1E69BB1B8]];
          }

          v28 = [v25 copy];

          v11 = v31;
        }

        else
        {
          v28 = 0;
        }

        v29 = v28;
        if (!v29)
        {
          __break(1u);
          return;
        }

        v30 = v29;
        type metadata accessor for PKAnalyticsKey(0);
        sub_1BD82B4EC(&qword_1EBD35F00, 255, type metadata accessor for PKAnalyticsKey);
        sub_1BE052244();

        v24 = sub_1BE052224();

        [v9 reportProvisioningStep:v10 finishedWithStatus:a2 & 1 context:v24];

        goto LABEL_27;
      }
    }
  }

  else
  {
    swift_beginAccess();
    v21 = swift_unknownObjectWeakLoadStrong();
    if (v21)
    {
      v22 = *(v21 + OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_reporter);
      v23 = v21;
      v10 = v22;

      if (v22)
      {
        sub_1BE04B734();
        v24 = sub_1BE052404();

        [v10 reportProvisioningStep:v24 finishedWithStatus:a2 & 1];
LABEL_27:
      }
    }
  }
}

void sub_1BD816528(unsigned __int8 *a1, void *a2)
{
  v3 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    sub_1BD816CFC(v3, a2);
  }
}

void sub_1BD816598()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_1BD817368(Strong);
  }
}

uint64_t (*sub_1BD8165EC())()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v1 = PKEdgeInsetsMake;
  if (Strong)
  {
    v2 = Strong;
    v3 = swift_allocObject();
    *(v3 + 16) = 0;
    *(v3 + 24) = 1;
    v4 = [objc_opt_self() sharedApplication];
    v5 = swift_allocObject();
    v5[3] = 0;
    v5[4] = 0;
    v5[2] = v3;
    aBlock[4] = sub_1BD82B55C;
    aBlock[5] = v5;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1BD126964;
    aBlock[3] = &block_descriptor_322;
    v6 = _Block_copy(aBlock);
    sub_1BE048964();

    v7 = [v4 beginBackgroundTaskWithExpirationHandler_];

    _Block_release(v6);
    swift_beginAccess();
    *(v3 + 16) = v7;
    *(v3 + 24) = 0;
    return sub_1BD82B568;
  }

  return v1;
}

void sub_1BD81679C()
{
  v1 = *(v0 + OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_composer);
  if (v1)
  {
    v2 = v0;
    *(v0 + OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_composer) = 0;
    v3 = OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_seStorageHandle;
    v4 = *(v0 + OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_seStorageHandle);
    if (v4)
    {
      v5 = v4;
      sub_1BE04C1A4();

      v4 = *(v2 + v3);
    }

    *(v2 + v3) = 0;

    v6 = OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_passcodeAssertion;
    if (*(v2 + OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_passcodeAssertion))
    {
      sub_1BE048964();
      sub_1BE04C244();
    }

    *(v2 + v6) = 0;

    v7 = swift_allocObject();
    *(v7 + 16) = 0;
    *(v7 + 24) = 1;
    v8 = [objc_opt_self() sharedApplication];
    v9 = swift_allocObject();
    *(v9 + 16) = v7;
    *(v9 + 24) = v1;
    v13[4] = sub_1BD82B4C8;
    v13[5] = v9;
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 1107296256;
    v13[2] = sub_1BD126964;
    v13[3] = &block_descriptor_295;
    v10 = _Block_copy(v13);
    sub_1BE048964();
    sub_1BE048964();

    v11 = [v8 beginBackgroundTaskWithExpirationHandler_];
    _Block_release(v10);

    swift_beginAccess();
    *(v7 + 16) = v11;
    *(v7 + 24) = 0;
    v12 = swift_allocObject();
    *(v12 + 16) = v7;
    *(v12 + 24) = v1;
    sub_1BE048964();
    sub_1BE048964();
    sub_1BE04C024();
  }
}

uint64_t sub_1BD8169F4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1BE051F54();
  v17 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1BE051FA4();
  v8 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16, v9);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BD0E5E8C(0, &qword_1EBD35E90);
  v12 = sub_1BE052D54();
  v13 = swift_allocObject();
  *(v13 + 16) = a1;
  *(v13 + 24) = a2;
  aBlock[4] = sub_1BD82B600;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BD126964;
  aBlock[3] = &block_descriptor_304;
  v14 = _Block_copy(aBlock);
  sub_1BE048964();
  sub_1BE048964();

  sub_1BE051F74();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1BD82B4EC(&qword_1EBD366B0, 255, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0);
  sub_1BD0DE4F4(&qword_1EBD35F20, &unk_1EBD387F0);
  sub_1BE053664();
  MEMORY[0x1BFB3FDF0](0, v11, v7, v14);
  _Block_release(v14);

  (*(v17 + 8))(v7, v4);
  return (*(v8 + 8))(v11, v16);
}

void sub_1BD816CFC(int a1, void *a2)
{
  v45 = a1;
  v4 = sub_1BE04D214();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1BE051F54();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1BE051FA4();
  MEMORY[0x1EEE9AC00](v14, v15);
  v18 = &v43 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v44 = v16;
    v19 = *&v2[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_provisioningError];
    *&v2[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_provisioningError] = a2;
    v46 = a2;

    if ([v46 severity] == 1)
    {
      v20 = v46;
    }

    else
    {
      v43 = v10;
      v29 = v2;
      v30 = *&v2[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_reporter];
      if (v30)
      {
        sub_1BE04B734();
        v31 = sub_1BE052404();

        v32 = v46;
        v33 = sub_1BE04A844();

        [v30 reportProvisioningStep:v31 finishedWithStatus:0 error:v33];
      }

      sub_1BD0E5E8C(0, &qword_1EBD35E90);
      v34 = sub_1BE052D54();
      v35 = swift_allocObject();
      v36 = v46;
      *(v35 + 16) = v29;
      *(v35 + 24) = v36;
      aBlock[4] = sub_1BD82B4C0;
      aBlock[5] = v35;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1BD126964;
      aBlock[3] = &block_descriptor_286;
      v37 = _Block_copy(aBlock);
      v46 = v46;
      v38 = v29;

      sub_1BE051F74();
      aBlock[0] = MEMORY[0x1E69E7CC0];
      sub_1BD82B4EC(&qword_1EBD366B0, 255, MEMORY[0x1E69E7F60]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0);
      sub_1BD0DE4F4(&qword_1EBD35F20, &unk_1EBD387F0);
      sub_1BE053664();
      MEMORY[0x1BFB3FDF0](0, v18, v13, v37);
      _Block_release(v37);

      (*(v43 + 8))(v13, v9);
      (*(v44 + 8))(v18, v14);
    }
  }

  else
  {
    v46 = v5;
    sub_1BE04D0D4();
    v21 = v2;
    v22 = sub_1BE04D204();
    v23 = sub_1BE052C54();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      aBlock[0] = v25;
      *v24 = 136315394;
      if (*&v21[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_composer])
      {
        sub_1BE048964();
        v26 = sub_1BE04C0A4();
        v28 = v27;
      }

      else
      {
        v26 = 0;
        v28 = 0xE000000000000000;
      }

      v39 = sub_1BD123690(v26, v28, aBlock);

      *(v24 + 4) = v39;
      *(v24 + 12) = 2080;
      v40 = sub_1BE04B734();
      v42 = sub_1BD123690(v40, v41, aBlock);

      *(v24 + 14) = v42;
      _os_log_impl(&dword_1BD026000, v22, v23, "[%s] Step (%s) failed with nil error", v24, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1BFB45F20](v25, -1, -1);
      MEMORY[0x1BFB45F20](v24, -1, -1);
    }

    (*(v46 + 1))(v8, v4);
  }
}

uint64_t sub_1BD8172D8(uint64_t a1, uint64_t a2)
{
  v3 = a1 + OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_renderer;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v5 = *(v3 + 8);
    ObjectType = swift_getObjectType();
    (*(*(v5 + 8) + 16))(a2, ObjectType);

    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_1BD817368(void *a1)
{
  v2 = sub_1BE051F54();
  v95 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v3);
  v93 = &v87 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = sub_1BE051FA4();
  v92 = *(v94 - 8);
  MEMORY[0x1EEE9AC00](v94, v5);
  v90 = &v87 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = sub_1BE051FC4();
  v89 = *(v96 - 8);
  MEMORY[0x1EEE9AC00](v96, v7);
  v87 = &v87 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v88 = &v87 - v11;
  v12 = sub_1BE04D214();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v14);
  v97 = &v87 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = &v87 - v18;
  sub_1BE04D0D4();
  v20 = a1;
  v21 = sub_1BE04D204();
  v22 = sub_1BE052C54();

  v23 = os_log_type_enabled(v21, v22);
  v98 = v13;
  v91 = v2;
  if (v23)
  {
    v24 = v12;
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    aBlock[0] = v26;
    *v25 = 136315138;
    if (*&v20[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_composer])
    {
      sub_1BE048964();
      v27 = sub_1BE04C0A4();
      v29 = v28;
    }

    else
    {
      v27 = 0;
      v29 = 0xE000000000000000;
    }

    v31 = sub_1BD123690(v27, v29, aBlock);

    *(v25 + 4) = v31;
    _os_log_impl(&dword_1BD026000, v21, v22, "[%s] Coordinator did complete", v25, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v26);
    MEMORY[0x1BFB45F20](v26, -1, -1);
    MEMORY[0x1BFB45F20](v25, -1, -1);

    v30 = *(v98 + 8);
    v12 = v24;
    v30(v19, v24);
  }

  else
  {

    v30 = *(v13 + 8);
    v30(v19, v12);
  }

  v32 = OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_composer;
  if (*&v20[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_composer])
  {
    sub_1BE048964();
    v33 = sub_1BE04C0C4();

    v34 = (v33 >> 8) & 1;
  }

  else
  {
    v34 = 0;
  }

  sub_1BD81679C();
  v35 = OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_credentialIndex;
  v36 = *&v20[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_credentialIndex];
  sub_1BE048964();
  v37 = sub_1BE04C3A4();

  v38 = *(v37 + 16);

  if (v36 < v38 - 1)
  {
    v39 = *&v20[v35];
    v40 = v39 + 1;
    if (__OFADD__(v39, 1))
    {
      __break(1u);
    }

    else
    {
      *&v20[v35] = v40;
      v41 = v97;
      sub_1BE04D0D4();
      v42 = v20;
      v43 = sub_1BE04D204();
      v44 = sub_1BE052C54();

      if (os_log_type_enabled(v43, v44))
      {
        v96 = v12;
        v45 = swift_slowAlloc();
        v46 = swift_slowAlloc();
        aBlock[0] = v46;
        *v45 = 136315394;
        if (*&v20[v32])
        {
          sub_1BE048964();
          v47 = sub_1BE04C0A4();
          v49 = v48;
        }

        else
        {
          v47 = 0;
          v49 = 0xE000000000000000;
        }

        v83 = sub_1BD123690(v47, v49, aBlock);

        *(v45 + 4) = v83;
        *(v45 + 12) = 2048;
        *(v45 + 14) = v40;
        _os_log_impl(&dword_1BD026000, v43, v44, "[%s] Coordinator completed provisioning and moving on to credential at index %ld", v45, 0x16u);
        __swift_destroy_boxed_opaque_existential_0(v46);
        MEMORY[0x1BFB45F20](v46, -1, -1);
        MEMORY[0x1BFB45F20](v45, -1, -1);

        v62 = v97;
        v63 = v96;
      }

      else
      {

        v62 = v41;
        v63 = v12;
      }

      v30(v62, v63);
      v84 = *&v42[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_fieldsModel];
      if (v84)
      {
        v85 = *&v42[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_fieldsModel];
      }

      else
      {
        v85 = [objc_allocWithZone(MEMORY[0x1E69B8E38]) init];
        v84 = 0;
      }

      v86 = v84;
      sub_1BD8145A8(v85);
    }

    return;
  }

  v50 = &v20[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_renderer];
  if (swift_unknownObjectWeakLoadStrong())
  {
    v51 = *(v50 + 1);
    ObjectType = swift_getObjectType();
    LOBYTE(aBlock[0]) = 12;
    (*(*(v51 + 8) + 8))(aBlock, 0, ObjectType);
    swift_unknownObjectRelease();
  }

  v53 = *&v20[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_provisionedPasses];
  if (v53)
  {
    v54 = *&v20[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_reporter];
    if (v54)
    {
      v55 = v53;
      v56 = sub_1BE04BC84();
      [v54 setProvisionedPass_];

      [v54 reportProvisioningCompleteWithSuccess_];
      if (v34)
      {
        goto LABEL_20;
      }
    }

    else
    {
      v72 = v53;
      if (v34)
      {
LABEL_20:
        v57 = &v20[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_delegate];
        if (swift_unknownObjectWeakLoadStrong())
        {
          v58 = *(v57 + 1);
          v59 = swift_getObjectType();
          v60 = *(v58 + 8);
          v61 = v53;
          v60(v20, v53, 0, v59, v58);
          swift_unknownObjectRelease();
        }

        else
        {
        }

        return;
      }
    }

    sub_1BD0E5E8C(0, &qword_1EBD35E90);
    v97 = sub_1BE052D54();
    v73 = v87;
    sub_1BE051FB4();
    v74 = v88;
    sub_1BE051FF4();
    v98 = *(v89 + 8);
    (v98)(v73, v96);
    v75 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v76 = swift_allocObject();
    *(v76 + 16) = v75;
    *(v76 + 24) = v53;
    aBlock[4] = sub_1BD82B5FC;
    aBlock[5] = v76;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1BD126964;
    aBlock[3] = &block_descriptor_333_0;
    v77 = _Block_copy(aBlock);
    v78 = v53;

    v79 = v90;
    sub_1BE051F74();
    aBlock[0] = MEMORY[0x1E69E7CC0];
    sub_1BD82B4EC(&qword_1EBD366B0, 255, MEMORY[0x1E69E7F60]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0);
    sub_1BD0DE4F4(&qword_1EBD35F20, &unk_1EBD387F0);
    v80 = v93;
    v81 = v91;
    sub_1BE053664();
    v82 = v97;
    MEMORY[0x1BFB3FD90](v74, v79, v80, v77);
    _Block_release(v77);

    (*(v95 + 8))(v80, v81);
    (*(v92 + 8))(v79, v94);
    (v98)(v74, v96);
    return;
  }

  v64 = *&v20[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_reporter];
  if (v64)
  {
    [v64 reportProvisioningCompleteWithSuccess_];
  }

  v65 = [objc_opt_self() errorWithSeverity_];
  v66 = sub_1BE052404();
  [v65 addInternalDebugDescription_];

  v67 = &v20[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_delegate];
  if (swift_unknownObjectWeakLoadStrong())
  {
    v68 = *(v67 + 1);
    v69 = swift_getObjectType();
    v70 = *(v68 + 8);
    v71 = v65;
    v70(v20, v65, 1, v69, v68);
    swift_unknownObjectRelease();
  }

  else
  {
  }
}

void sub_1BD817DF0(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = Strong + OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_delegate;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v6 = *(v5 + 8);
      ObjectType = swift_getObjectType();
      (*(v6 + 8))(v4, a2, 0, ObjectType, v6);

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }
}

uint64_t sub_1BD817EA8(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  result = swift_beginAccess();
  if ((*(a1 + 24) & 1) == 0)
  {
    v5 = *(a1 + 16);
    v6 = *MEMORY[0x1E69DDBE8];
    if (v5 != *MEMORY[0x1E69DDBE8])
    {
      v7 = [objc_opt_self() sharedApplication];
      [v7 endBackgroundTask_];

      result = swift_beginAccess();
      *(a1 + 16) = v6;
      *(a1 + 24) = 0;
      if (a2)
      {
        return a2(result);
      }
    }
  }

  return result;
}

uint64_t sub_1BD817F7C(uint64_t a1)
{
  v2 = sub_1BE051F54();
  v14 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v3);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1BE051FA4();
  v6 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13, v7);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BD0E5E8C(0, &qword_1EBD35E90);
  v10 = sub_1BE052D54();
  aBlock[4] = sub_1BD82B570;
  aBlock[5] = a1;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BD126964;
  aBlock[3] = &block_descriptor_325;
  v11 = _Block_copy(aBlock);
  sub_1BE048964();

  sub_1BE051F74();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1BD82B4EC(&qword_1EBD366B0, 255, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0);
  sub_1BD0DE4F4(&qword_1EBD35F20, &unk_1EBD387F0);
  sub_1BE053664();
  MEMORY[0x1BFB3FDF0](0, v9, v5, v11);
  _Block_release(v11);

  (*(v14 + 8))(v5, v2);
  return (*(v6 + 8))(v9, v13);
}

void sub_1BD8182B4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v89 = a4;
  v87 = a3;
  v83 = a2;
  v9 = sub_1BE04D214();
  v90 = *(v9 - 8);
  v91 = v9;
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v80 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = &v80 - v15;
  v92 = sub_1BE04C384();
  v17 = *(v92 - 1);
  MEMORY[0x1EEE9AC00](v92, v18);
  v20 = &v80 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_configuration;
  v21 = *&v5[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_credentialIndex];
  sub_1BE048964();
  v22 = sub_1BE04C3A4();

  if ((v21 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_30;
  }

  if (v21 >= *(v22 + 16))
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v23 = *(v17 + 80);
  v85 = v23;
  v86 = (v23 + 32) & ~v23;
  v84 = *(v17 + 72);
  v24 = v92;
  (*(v17 + 16))(v20, v22 + v86 + v84 * v21, v92);

  v25 = sub_1BE04C324();
  (*(v17 + 8))(v20, v24);
  if (v25)
  {
    v26 = sub_1BE048C84();
    sub_1BD9F46CC(v26, a1);

    sub_1BE04D0D4();
    v27 = v6;
    v28 = a1;
    v29 = sub_1BE04D204();
    v30 = sub_1BE052C54();

    v31 = os_log_type_enabled(v29, v30);
    v81 = a5;
    v82 = v28;
    if (!v31)
    {

      goto LABEL_14;
    }

    v32 = swift_slowAlloc();
    v80 = swift_slowAlloc();
    v94 = v80;
    *v32 = 136315394;
    if (*&v27[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_composer])
    {
      sub_1BE048964();
      v33 = sub_1BE04C0A4();
      v35 = v34;
    }

    else
    {
      v33 = 0;
      v35 = 0xE000000000000000;
    }

    v44 = sub_1BD123690(v33, v35, &v94);

    *(v32 + 4) = v44;
    *(v32 + 12) = 2080;
    v45 = v82;
    v46 = [v82 paymentSetupFields];

    if (v46)
    {
      v47 = sub_1BD0E5E8C(0, &qword_1EBD4E6C0);
      v48 = sub_1BE052744();

      v49 = MEMORY[0x1BFB3F7F0](v48, v47);
      v51 = v50;

      v52 = sub_1BD123690(v49, v51, &v94);

      *(v32 + 14) = v52;
      _os_log_impl(&dword_1BD026000, v29, v30, "[%s] Showing secondary fields: %s", v32, 0x16u);
      v53 = v80;
      swift_arrayDestroy();
      MEMORY[0x1BFB45F20](v53, -1, -1);
      MEMORY[0x1BFB45F20](v32, -1, -1);

LABEL_14:
      (*(v90 + 8))(v16, v91);
      v54 = v87;
      if (*&v27[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_composer])
      {
        sub_1BE048964();
        v55 = sub_1BE04C034();

        if (v54)
        {
          goto LABEL_20;
        }
      }

      else
      {
        v55 = [objc_allocWithZone(MEMORY[0x1E69B91F0]) init];
        if (v54)
        {
          goto LABEL_20;
        }
      }

      v56 = [v55 productIdentifier];
      if (!v56)
      {
        v58 = 0;
        goto LABEL_21;
      }

      v57 = v56;
      sub_1BE052434();

LABEL_20:
      sub_1BE048C84();
      v58 = sub_1BE052404();

LABEL_21:
      [v55 setProductIdentifier_];

      v59 = v88;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD46290);
      v60 = v86;
      v61 = swift_allocObject();
      *(v61 + 16) = xmmword_1BE0B69E0;
      *(v61 + v60) = v55;
      (*(v17 + 104))(v61 + v60, *MEMORY[0x1E69B8290], v92);
      sub_1BE048964();
      v92 = v55;
      sub_1BE04C3B4();

      v62 = *&v27[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_context];
      v63 = *&v6[v59];
      v64 = *&v27[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_reporter];
      v65 = type metadata accessor for ProvisioningUICoordinator();
      v66 = objc_allocWithZone(v65);
      *&v66[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_delegate + 8] = 0;
      swift_unknownObjectWeakInit();
      *&v66[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_manualEntryDelegate + 8] = 0;
      swift_unknownObjectWeakInit();
      swift_unknownObjectWeakInit();
      v67 = &v66[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_renderer];
      *&v66[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_renderer + 8] = 0;
      swift_unknownObjectWeakInit();
      *&v66[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_credentialIndex] = 0;
      *&v66[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_cameraCaptureObjects] = MEMORY[0x1E69E7CC0];
      *&v66[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_composer] = 0;
      *&v66[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_fieldsModel] = 0;
      v66[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_skipRequirements] = 0;
      *&v66[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_provisioningError] = 0;
      *&v66[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_provisionedPasses] = 0;
      *&v66[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_passcodeAssertion] = 0;
      *&v66[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_seStorageHandle] = 0;
      *&v66[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_termsPresenter] = 0;
      *&v66[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_context] = v62;
      *&v66[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_configuration] = v63;
      swift_unknownObjectWeakAssign();
      *(v67 + 1) = 0;
      swift_unknownObjectWeakAssign();
      v66[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_previouslyAcceptedTerms] = 0;
      swift_retain_n();
      sub_1BE048964();
      v68 = v64;
      if (!v64)
      {
        v68 = sub_1BE04BBB4();
      }

      *&v66[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_reporter] = v68;
      v93.receiver = v66;
      v93.super_class = v65;
      v69 = v64;
      v70 = objc_msgSendSuper2(&v93, sel_init);

      v71 = &v27[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_delegate];
      swift_unknownObjectWeakLoadStrong();
      *&v70[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_delegate + 8] = *(v71 + 1);
      swift_unknownObjectWeakAssign();
      swift_unknownObjectRelease();
      v70[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_skipRequirements] = 1;
      v72 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v73 = swift_allocObject();
      v75 = v81;
      v74 = v82;
      v73[2] = v72;
      v73[3] = v74;
      v76 = v89;
      v73[4] = v70;
      v73[5] = v76;
      v73[6] = v75;
      v77 = v74;
      sub_1BE048964();
      v78 = v70;
      sub_1BD0D44B8(v76);
      sub_1BD814B5C(v77, 4, sub_1BD82B478, v73);

      return;
    }

LABEL_31:
    __break(1u);
    return;
  }

  sub_1BE04D0D4();
  v36 = v6;
  v37 = sub_1BE04D204();
  v38 = sub_1BE052C54();

  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    v94 = v40;
    *v39 = 136315138;
    if (*&v36[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_composer])
    {
      sub_1BE048964();
      v41 = sub_1BE04C0A4();
      v43 = v42;
    }

    else
    {
      v41 = 0;
      v43 = 0xE000000000000000;
    }

    v79 = sub_1BD123690(v41, v43, &v94);

    *(v39 + 4) = v79;
    _os_log_impl(&dword_1BD026000, v37, v38, "[%s] Tried to show secondary fields for non manual entry crednetial. That is not right..", v39, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v40);
    MEMORY[0x1BFB45F20](v40, -1, -1);
    MEMORY[0x1BFB45F20](v39, -1, -1);
  }

  (*(v90 + 8))(v12, v91);
}

void sub_1BD818C1C(uint64_t a1, uint64_t a2, void *a3, char *a4, void (*a5)(void), uint64_t a6)
{
  v63 = a6;
  v64 = a4;
  v68 = a3;
  v69 = a5;
  v6 = sub_1BE04BAC4();
  v66 = *(v6 - 8);
  v67 = v6;
  MEMORY[0x1EEE9AC00](v6, v7);
  v65 = &v57 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1BE04BD74();
  v62 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v57 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1BE04B8D4();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13, v15);
  v17 = &v57 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18, v19);
  v21 = &v57 - v20;
  v22 = sub_1BE04B944();
  v23 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22, v24);
  v26 = &v57 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v61 = Strong;
    v57 = OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_context;
    sub_1BE04BB94();
    sub_1BE04B924();
    v28 = *(v23 + 8);
    v59 = v23 + 8;
    v60 = v22;
    v58 = v28;
    v28(v26, v22);
    (*(v14 + 104))(v17, *MEMORY[0x1E69B7F80], v13);
    sub_1BD82B4EC(&qword_1EBD55170, 255, MEMORY[0x1E69B7F90]);
    v29 = sub_1BE052334();
    v30 = *(v14 + 8);
    v30(v17, v13);
    v30(v21, v13);
    v31 = v68;
    if ((v29 & 1) == 0)
    {
      v32 = v62;
      (*(v62 + 104))(v12, *MEMORY[0x1E69B80D8], v9);
      sub_1BE04B714();
      (*(v32 + 8))(v12, v9);
      v33 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
      v34 = sub_1BE052404();

      v35 = [v33 initWithString_];

      v36 = objc_allocWithZone(MEMORY[0x1E69B8E28]);
      v37 = sub_1BE052404();
      v38 = [v36 initWithIdentifier:v37 body:v35];

      [v38 setPosition_];
      [v38 setAlingment_];
      [v38 setFontScale_];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40A50);
      v39 = swift_allocObject();
      *(v39 + 16) = xmmword_1BE0B69E0;
      *(v39 + 56) = sub_1BD0E5E8C(0, &unk_1EBD55180);
      *(v39 + 32) = v38;
      v40 = v38;
      v41 = sub_1BE052724();

      [v31 updateWithPaymentSetupFields_];
    }

    v42 = v61;
    v43 = *&v61[v57];
    v44 = type metadata accessor for ProvisioningManualEntryViewController();
    v45 = objc_allocWithZone(v44);
    *&v45[OBJC_IVAR____TtC9PassKitUI37ProvisioningManualEntryViewController_coordinator] = 0;
    v45[OBJC_IVAR____TtC9PassKitUI37ProvisioningManualEntryViewController_showTapToProvisionButton] = 0;
    v45[OBJC_IVAR____TtC9PassKitUI37ProvisioningManualEntryViewController_showCameraCaptureButton] = 0;
    *&v45[OBJC_IVAR____TtC9PassKitUI37ProvisioningManualEntryViewController_provisioningContext] = v43;
    v45[OBJC_IVAR____TtC9PassKitUI37ProvisioningManualEntryViewController_isSecondaryEntry] = 1;
    *&v45[OBJC_IVAR____TtC9PassKitUI37ProvisioningManualEntryViewController_delegate + 8] = 0;
    swift_unknownObjectUnownedInit();
    sub_1BE052434();
    swift_retain_n();
    v46 = sub_1BE04BB74();

    *&v45[OBJC_IVAR____TtC9PassKitUI37ProvisioningManualEntryViewController_reporter] = v46;
    sub_1BE04BB94();
    v47 = sub_1BE04B8E4();
    v58(v26, v60);
    v48 = v65;
    sub_1BE04BC34();
    v49 = sub_1BE04B9A4();
    (*(v66 + 8))(v48, v67);
    v70.receiver = v45;
    v70.super_class = v44;
    v50 = objc_msgSendSuper2(&v70, sel_initWithWebService_context_setupDelegate_setupFieldsModel_, v47, v49, 0, v31);

    v51 = v69;
    if (v50)
    {

      v52 = *&v50[OBJC_IVAR____TtC9PassKitUI37ProvisioningManualEntryViewController_coordinator];
      v53 = v64;
      *&v50[OBJC_IVAR____TtC9PassKitUI37ProvisioningManualEntryViewController_coordinator] = v64;

      swift_unknownObjectWeakAssign();
      *&v53[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_renderer + 8] = &off_1F3BB39D0;
      swift_unknownObjectWeakAssign();
      v54 = swift_unknownObjectWeakLoadStrong();
      v55 = v53;
      v56 = [v54 navigationController];

      [v56 pushViewController:v50 animated:1];
      if (v51)
      {
        v51();
      }
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_1BD81938C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v55 = a4;
  v53 = a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF70);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v54 = &v46 - v9;
  v10 = sub_1BE04BAC4();
  v51 = *(v10 - 8);
  v52 = v10;
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1BE04D214();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14, v16);
  v18 = &v46 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BE04D0D4();
  v19 = v4;
  v20 = sub_1BE04D204();
  v21 = sub_1BE052C54();

  if (os_log_type_enabled(v20, v21))
  {
    v47 = v14;
    v48 = a1;
    v50 = a3;
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    aBlock = v23;
    *v22 = 136315394;
    v49 = v19;
    if (*&v19[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_composer])
    {
      sub_1BE048964();
      v24 = sub_1BE04C0A4();
      v26 = v25;
    }

    else
    {
      v24 = 0;
      v26 = 0xE000000000000000;
    }

    v28 = sub_1BD123690(v24, v26, &aBlock);

    *(v22 + 4) = v28;
    *(v22 + 12) = 2048;
    v29 = v48;
    *(v22 + 14) = v48;
    _os_log_impl(&dword_1BD026000, v20, v21, "[%s] Showing eligibility issue with reason: %ld", v22, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v23);
    MEMORY[0x1BFB45F20](v23, -1, -1);
    v30 = v22;
    a1 = v29;
    MEMORY[0x1BFB45F20](v30, -1, -1);

    (*(v15 + 8))(v18, v47);
    v27 = v55;
    a3 = v50;
  }

  else
  {

    (*(v15 + 8))(v18, v14);
    v27 = v55;
  }

  sub_1BE04BC34();
  v31 = sub_1BE04B9A4();
  (*(v51 + 8))(v13, v52);
  v32 = [objc_allocWithZone(PKPaymentCardIneligibleViewController) initWithReason:a1 context:v31];
  v33 = v54;
  sub_1BD38F438(v53, v54);
  v34 = sub_1BE04AA64();
  v35 = *(v34 - 8);
  v36 = 0;
  if ((*(v35 + 48))(v33, 1, v34) != 1)
  {
    v36 = sub_1BE04A9C4();
    (*(v35 + 8))(v33, v34);
  }

  [v32 setLearnMoreURL_];

  v37 = sub_1BE04BBD4();
  [v32 setProvisioningController_];

  v38 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v60 = sub_1BD82AFF0;
  v61 = v38;
  aBlock = MEMORY[0x1E69E9820];
  v57 = 1107296256;
  v58 = sub_1BD198918;
  v59 = &block_descriptor_135_1;
  v39 = _Block_copy(&aBlock);

  [v32 setLearnMorePresentationHandler_];
  _Block_release(v39);
  v40 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v60 = sub_1BD82AFF8;
  v61 = v40;
  aBlock = MEMORY[0x1E69E9820];
  v57 = 1107296256;
  v58 = sub_1BD126964;
  v59 = &block_descriptor_139;
  v41 = _Block_copy(&aBlock);

  [v32 setTerminateFlowHandler_];
  _Block_release(v41);
  v42 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v43 = swift_allocObject();
  v43[2] = v42;
  v43[3] = v32;
  v43[4] = a3;
  v43[5] = v27;
  v60 = sub_1BD82B000;
  v61 = v43;
  aBlock = MEMORY[0x1E69E9820];
  v57 = 1107296256;
  v58 = sub_1BD715170;
  v59 = &block_descriptor_146_2;
  v44 = _Block_copy(&aBlock);
  v45 = v32;
  sub_1BE048964();

  [v45 preflightWithCompletion_];
  _Block_release(v44);
}

void sub_1BD8199D8(void *a1)
{
  v2 = sub_1BE04BAC4();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    sub_1BE04BC34();
    v9 = sub_1BE04B9A4();
    (*(v3 + 8))(v6, v2);
    PKPaymentSetupApplyContextAppearance(v9, a1);
    v10 = swift_unknownObjectWeakLoadStrong();
    if (v10)
    {
      v11 = v10;
      [v10 presentViewController:a1 animated:1 completion:0];
    }
  }
}

void sub_1BD819B2C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_1BD81521C();
  }
}

void sub_1BD819B80(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    if (a1)
    {
      v9 = swift_unknownObjectWeakLoadStrong();
      v10 = a1;
      if (v9)
      {
        [v9 presentViewController:v10 animated:1 completion:0];
      }

      a5();
    }

    else
    {
      v10 = Strong;
    }
  }
}

void sub_1BD819C44(uint64_t a1, void (*a2)(char *), uint64_t a3)
{
  v4 = v3;
  v72 = a1;
  v73 = a2;
  v6 = sub_1BE04C534();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v70 = &v66 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD41D70);
  v69 = *(v71 - 8);
  MEMORY[0x1EEE9AC00](v71, v10);
  v68 = &v66 - v11;
  v12 = sub_1BE04D214();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v14);
  v16 = &v66 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v3 + OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_composer))
  {
    sub_1BE048964();
    v74 = sub_1BE04C0A4();
    v18 = v17;
  }

  else
  {
    v74 = 0;
    v18 = 0xE000000000000000;
  }

  sub_1BE04D0D4();
  sub_1BE048C84();
  v19 = sub_1BE04D204();
  v20 = sub_1BE052C54();

  v21 = os_log_type_enabled(v19, v20);
  v75 = v18;
  if (v21)
  {
    v22 = swift_slowAlloc();
    v67 = v7;
    v23 = v6;
    v24 = v22;
    v25 = swift_slowAlloc();
    v26 = v18;
    v27 = a3;
    v28 = v25;
    aBlock[0] = v25;
    *v24 = 136315138;
    *(v24 + 4) = sub_1BD123690(v74, v26, aBlock);
    _os_log_impl(&dword_1BD026000, v19, v20, "[%s] Showing T&C acceptance UI", v24, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v28);
    v29 = v28;
    a3 = v27;
    MEMORY[0x1BFB45F20](v29, -1, -1);
    v30 = v24;
    v6 = v23;
    v7 = v67;
    MEMORY[0x1BFB45F20](v30, -1, -1);
  }

  (*(v13 + 8))(v16, v12);
  Strong = swift_unknownObjectWeakLoadStrong();
  v32 = v73;
  if (!Strong)
  {

    v46 = v70;
    (*(v7 + 104))(v70, *MEMORY[0x1E69B8308], v6);
    v47 = v68;
    sub_1BE04BF54();
    (*(v7 + 8))(v46, v6);
    v32(v47);
    (*(v69 + 8))(v47, v71);
    return;
  }

  v33 = Strong;
  sub_1BE048964();
  sub_1BD4FB068();
  v35 = v34;

  v36 = *(v4 + OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_termsPresenter);
  *(v4 + OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_termsPresenter) = v35;
  v37 = v35;

  v38 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v39 = swift_allocObject();
  v41 = v74;
  v40 = v75;
  v39[2] = v38;
  v39[3] = v41;
  v39[4] = v40;
  v39[5] = v32;
  v39[6] = a3;
  swift_bridgeObjectRetain_n();
  swift_retain_n();
  sub_1BE048964();
  v42 = [v33 parentViewController];
  if (v42)
  {
  }

  else
  {
    v48 = [v33 view];
    if (!v48)
    {
LABEL_21:

      __break(1u);
      return;
    }

    v49 = v48;
    v50 = [v48 window];

    v51 = [v50 rootViewController];
    if (!v51 || (sub_1BD0E5E8C(0, &qword_1EBD43450), v52 = a3, v53 = v33, v54 = sub_1BE053074(), v53, a3 = v52, v40 = v75, v51, (v54 & 1) == 0))
    {
      sub_1BD81A458(0, 0, v38, v41, v40, v32, a3);

      swift_bridgeObjectRelease_n();

      return;
    }
  }

  [v33 resignFirstResponder];
  v43 = [objc_allocWithZone(PKPortraitNavigationController) init];
  [v43 setModalInPresentation_];
  v44 = [objc_allocWithZone(MEMORY[0x1E69C7048]) init];
  if (sub_1BE04BAB4())
  {
    v45 = [objc_allocWithZone(MEMORY[0x1E698F570]) init];
  }

  else
  {
    v45 = [objc_opt_self() defaultStyle];
  }

  v55 = v45;
  [v44 setStyle_];
  [v44 setDelegate_];
  [v44 setNavigationController_];
  v56 = [v44 loader];
  if (!v56)
  {

    __break(1u);
    goto LABEL_21;
  }

  v57 = v56;
  [v56 setAllowNonSecureHTTP_];

  v58 = *&v37[OBJC_IVAR___PKProvisioningTermsPresenter_termsUIController];
  *&v37[OBJC_IVAR___PKProvisioningTermsPresenter_termsUIController] = v44;
  v59 = v44;

  v60 = sub_1BE04A9C4();
  v61 = swift_allocObject();
  v61[2] = sub_1BD82AE44;
  v61[3] = v39;
  v61[4] = v33;
  v61[5] = v43;
  v61[6] = v59;
  aBlock[4] = sub_1BD82AE5C;
  aBlock[5] = v61;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BD3CC8C0;
  aBlock[3] = &block_descriptor_81_2;
  v62 = _Block_copy(aBlock);
  v63 = v59;
  v64 = v33;
  sub_1BE048964();
  v65 = v43;

  [v63 loadURL:v60 postBody:0 completion:v62];
  _Block_release(v62);

  swift_bridgeObjectRelease_n();
}

uint64_t sub_1BD81A458(int a1, void *a2, uint64_t a3, uint64_t a4, unint64_t a5, void (*a6)(void), uint64_t a7)
{
  v56 = a2;
  v57 = a7;
  v52 = a4;
  v55 = a1;
  v9 = sub_1BE04C534();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v53 = &v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD41D70);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13, v15);
  v17 = &v46 - v16;
  v18 = sub_1BE04D214();
  v54 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18, v19);
  v21 = &v46 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v23 = result;
    v49 = v10;
    v50 = v17;
    v51 = v14;
    v24 = *(result + OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_termsPresenter);
    *(result + OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_termsPresenter) = 0;

    sub_1BE04D0D4();
    sub_1BE048C84();
    v25 = sub_1BE04D204();
    v26 = sub_1BE052C54();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v48 = a6;
      v28 = v27;
      v47 = swift_slowAlloc();
      v58 = v47;
      *v28 = 136315394;
      *(v28 + 4) = sub_1BD123690(v52, a5, &v58);
      *(v28 + 12) = 2080;
      v52 = v18;
      v29 = v55;
      if (v55)
      {
        v30 = 7562585;
      }

      else
      {
        v30 = 28494;
      }

      if (v55)
      {
        v31 = 0xE300000000000000;
      }

      else
      {
        v31 = 0xE200000000000000;
      }

      v32 = v9;
      v33 = v23;
      v34 = v13;
      v35 = sub_1BD123690(v30, v31, &v58);

      *(v28 + 14) = v35;
      v13 = v34;
      v23 = v33;
      v9 = v32;
      _os_log_impl(&dword_1BD026000, v25, v26, "[%s] T&C accepted %s", v28, 0x16u);
      v36 = v47;
      swift_arrayDestroy();
      MEMORY[0x1BFB45F20](v36, -1, -1);
      v37 = v28;
      a6 = v48;
      MEMORY[0x1BFB45F20](v37, -1, -1);

      (*(v54 + 8))(v21, v52);
    }

    else
    {

      (*(v54 + 8))(v21, v18);
      v29 = v55;
    }

    v39 = v50;
    v38 = v51;
    v40 = v56;
    if (v29)
    {
      v41 = v49;
      v42 = v53;
      (*(v49 + 104))(v53, *MEMORY[0x1E69B8308], v9);
      sub_1BE04BF54();
      (*(v41 + 8))(v42, v9);
    }

    else
    {
      if (v56)
      {
        v43 = v56;
        v44 = sub_1BE04A844();
        v45 = [objc_opt_self() errorWithUnderlyingError:v44 defaultSeverity:1];

        *v39 = v45;
        (*(v38 + 104))(v39, *MEMORY[0x1E69B8168], v13);
        a6(v39);

        return (*(v38 + 8))(v39, v13);
      }

      *v39 = [objc_opt_self() userCancelError];
      (*(v38 + 104))(v39, *MEMORY[0x1E69B8168], v13);
    }

    a6(v39);

    return (*(v38 + 8))(v39, v13);
  }

  return result;
}

uint64_t sub_1BD81A968(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, void *a7, uint64_t a8, uint64_t a9, void *a10, void *a11)
{
  v79 = a7;
  v80 = a8;
  v77 = a5;
  v78 = a6;
  v74 = a4;
  v76 = a1;
  v65 = sub_1BE04D214();
  v64 = *(v65 - 8);
  MEMORY[0x1EEE9AC00](v65, v11);
  v63 = &v62 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1BE051F54();
  v72 = *(v13 - 8);
  v73 = v13;
  MEMORY[0x1EEE9AC00](v13, v14);
  v70 = &v62 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = sub_1BE051FA4();
  v69 = *(v71 - 8);
  MEMORY[0x1EEE9AC00](v71, v16);
  v68 = &v62 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1BE04CFF4();
  v67 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18, v19);
  v21 = &v62 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = sub_1BE04CFC4();
  v22 = *(v75 - 8);
  MEMORY[0x1EEE9AC00](v75, v23);
  v25 = &v62 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_1BE04CFE4();
  v27 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26, v28);
  v30 = &v62 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BE04B694();
  v31 = sub_1BE04CFD4();
  sub_1BE04D004();
  v66 = sub_1BE052E24();
  if (sub_1BE053494())
  {
    sub_1BE048964();
    sub_1BE04D034();

    v32 = v67;
    if ((*(v67 + 88))(v21, v18) == *MEMORY[0x1E69E93E8])
    {
      v33 = "[Error] Interval already ended";
    }

    else
    {
      (*(v32 + 8))(v21, v18);
      v33 = "";
    }

    v34 = swift_slowAlloc();
    *v34 = 0;
    v35 = sub_1BE04CFA4();
    _os_signpost_emit_with_name_impl(&dword_1BD026000, v31, v66, v35, "provisioning:getSecureElementSnapshot", v33, v34, 2u);
    MEMORY[0x1BFB45F20](v34, -1, -1);
  }

  (*(v22 + 8))(v25, v75);
  (*(v27 + 8))(v30, v26);
  v36 = v76;
  if (v76)
  {
    sub_1BD0E5E8C(0, &qword_1EBD35E90);
    v37 = v36;
    v38 = sub_1BE052D54();
    v39 = swift_allocObject();
    v39[2] = a9;
    v39[3] = a10;
    v40 = v77;
    v41 = v78;
    v39[4] = v37;
    v39[5] = v41;
    v39[6] = v74;
    v39[7] = v40;
    v42 = v79;
    v43 = v80;
    v39[8] = a11;
    v39[9] = v42;
    v39[10] = v43;
    aBlock[4] = sub_1BD82AE80;
    aBlock[5] = v39;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1BD126964;
    aBlock[3] = &block_descriptor_96_4;
    v44 = _Block_copy(aBlock);
    v79 = v37;
    sub_1BE048964();
    v45 = a10;
    sub_1BE048C84();
    sub_1BE048C84();
    v46 = a11;
    sub_1BE048964();

    v47 = v68;
    sub_1BE051F74();
    aBlock[0] = MEMORY[0x1E69E7CC0];
    sub_1BD82B4EC(&qword_1EBD366B0, 255, MEMORY[0x1E69E7F60]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0);
    sub_1BD0DE4F4(&qword_1EBD35F20, &unk_1EBD387F0);
    v48 = v70;
    v49 = v73;
    sub_1BE053664();
    MEMORY[0x1BFB3FDF0](0, v47, v48, v44);
    _Block_release(v44);

    (*(v72 + 8))(v48, v49);
    return (*(v69 + 8))(v47, v71);
  }

  else
  {
    v51 = v63;
    sub_1BE04D0D4();
    v52 = v78;
    sub_1BE048C84();
    v53 = v77;
    sub_1BE048C84();
    v54 = sub_1BE04D204();
    v55 = sub_1BE052C54();

    if (os_log_type_enabled(v54, v55))
    {
      v56 = swift_slowAlloc();
      v57 = swift_slowAlloc();
      aBlock[0] = v57;
      *v56 = 136315394;
      *(v56 + 4) = sub_1BD123690(v74, v53, aBlock);
      *(v56 + 12) = 2080;
      v58 = MEMORY[0x1BFB3F7F0](v52, MEMORY[0x1E69E6158]);
      v60 = sub_1BD123690(v58, v59, aBlock);

      *(v56 + 14) = v60;
      _os_log_impl(&dword_1BD026000, v54, v55, "[%s] Failed to generate snapshot for %s", v56, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1BFB45F20](v57, -1, -1);
      MEMORY[0x1BFB45F20](v56, -1, -1);
    }

    (*(v64 + 8))(v51, v65);
    v61 = PKDynamicSEAllocationFakeFullSE();
    return (v79)(v61);
  }
}

void sub_1BD81B184(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v120 = a8;
  v123 = a7;
  v117 = a3;
  v118 = a6;
  v112 = a5;
  v128 = a4;
  v110 = sub_1BE04CFF4();
  v109 = *(v110 - 8);
  MEMORY[0x1EEE9AC00](v110, v10);
  v108 = &v107 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1BE04B944();
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v15 = &v107 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v127 = sub_1BE04CFC4();
  v114 = *(v127 - 8);
  MEMORY[0x1EEE9AC00](v127, v16);
  v124 = &v107 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18, v19);
  v21 = &v107 - v20;
  MEMORY[0x1EEE9AC00](v22, v23);
  v25 = &v107 - v24;
  v126 = sub_1BE04CFE4();
  v129 = *(v126 - 8);
  MEMORY[0x1EEE9AC00](v126, v26);
  v125 = &v107 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28, v29);
  v31 = &v107 - v30;
  v32 = sub_1BE04D214();
  v121 = *(v32 - 8);
  v122 = v32;
  MEMORY[0x1EEE9AC00](v32, v33);
  v35 = &v107 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v36, v37);
  v39 = &v107 - v38;
  v40 = sub_1BE04BB34();
  v119 = a2;
  v113 = v15;
  if (v41)
  {
    v42 = v41;
    v115 = v40;
    goto LABEL_3;
  }

  v72 = [a2 view];
  if (v72)
  {
    v73 = v72;
    v74 = [v72 window];

    if (v74)
    {
      v42 = [v74 windowScene];

      if (v42)
      {
        v75 = [v42 _sceneIdentifier];

        v115 = sub_1BE052434();
        v42 = v76;
      }

      else
      {
        v115 = 0;
      }
    }

    else
    {
      v115 = 0;
      v42 = 0;
    }

LABEL_3:
    v116 = a9;
    v43 = objc_allocWithZone(sub_1BE04C1E4());
    sub_1BE048C84();
    sub_1BE048964();
    v44 = v117;
    v117 = sub_1BE04C1B4();
    if (sub_1BE04C1D4())
    {
      if (v42)
      {
        sub_1BE04D0D4();
        v45 = v118;
        sub_1BE048C84();
        v46 = sub_1BE04D204();
        v47 = sub_1BE052C54();

        if (os_log_type_enabled(v46, v47))
        {
          v48 = swift_slowAlloc();
          v49 = swift_slowAlloc();
          v130[0] = v49;
          *v48 = 136315138;
          v50 = v112;
          *(v48 + 4) = sub_1BD123690(v112, v45, v130);
          _os_log_impl(&dword_1BD026000, v46, v47, "[%s] Showing SES SE clean up sheet", v48, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v49);
          MEMORY[0x1BFB45F20](v49, -1, -1);
          MEMORY[0x1BFB45F20](v48, -1, -1);

          (*(v121 + 8))(v39, v122);
          v51 = v117;
          v52 = v123;
        }

        else
        {

          (*(v121 + 8))(v39, v122);
          v51 = v117;
          v52 = v123;
          v50 = v112;
        }

        v99 = *(v52 + OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_seStorageHandle);
        *(v52 + OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_seStorageHandle) = v51;
        v100 = v51;

        v101 = v119;
        v102 = [v119 navigationController];
        if (v102)
        {
          v103 = v102;
          [v102 overrideUserInterfaceStyle];
        }

        else
        {
          [v101 overrideUserInterfaceStyle];
        }

        v104 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v105 = swift_allocObject();
        v105[2] = v104;
        v105[3] = v50;
        v106 = v120;
        v105[4] = v45;
        v105[5] = v106;
        v105[6] = v116;
        sub_1BE048C84();
        sub_1BE048964();
        sub_1BE048964();
        sub_1BE04C1C4();

LABEL_31:

        return;
      }
    }

    else
    {
    }

    sub_1BE04B694();
    sub_1BE04CFB4();
    v53 = sub_1BE04CFD4();
    v54 = sub_1BE052E34();
    if (sub_1BE053494())
    {
      v55 = swift_slowAlloc();
      *v55 = 0;
      v56 = sub_1BE04CFA4();
      _os_signpost_emit_with_name_impl(&dword_1BD026000, v53, v54, v56, "provisioning:prepareSEStorageCleanupController", "", v55, 2u);
      MEMORY[0x1BFB45F20](v55, -1, -1);
    }

    v57 = v114;
    v58 = v127;
    (*(v114 + 16))(v21, v25, v127);
    sub_1BE04D024();
    swift_allocObject();
    v115 = sub_1BE04D014();
    v114 = *(v57 + 8);
    (v114)(v25, v58);
    v59 = *(v129 + 8);
    v129 += 8;
    v111 = v59;
    v59(v31, v126);
    sub_1BE04D0D4();
    v60 = v118;
    sub_1BE048C84();
    v61 = sub_1BE04D204();
    v62 = sub_1BE052C54();

    v63 = os_log_type_enabled(v61, v62);
    v64 = v113;
    if (v63)
    {
      v65 = swift_slowAlloc();
      v66 = swift_slowAlloc();
      v130[0] = v66;
      *v65 = 136315138;
      *(v65 + 4) = sub_1BD123690(v112, v60, v130);
      _os_log_impl(&dword_1BD026000, v61, v62, "[%s] Showing Wallet SE clean up sheet", v65, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v66);
      MEMORY[0x1BFB45F20](v66, -1, -1);
      MEMORY[0x1BFB45F20](v65, -1, -1);
    }

    (*(v121 + 8))(v35, v122);
    v67 = v123;
    v68 = v124;
    sub_1BE04BB94();
    if (*(v67 + OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_composer))
    {
      sub_1BE048964();
      v69 = sub_1BE04C0A4();
      v71 = v70;
    }

    else
    {
      v69 = 0;
      v71 = 0xE000000000000000;
    }

    type metadata accessor for SEStorageCleanupController();
    swift_allocObject();
    v77 = v128;
    sub_1BE048C84();
    v78 = sub_1BD5DD994(v64, v44, v77, v69, v71);
    sub_1BD82B4EC(&qword_1EBD550E0, 255, type metadata accessor for SEStorageCleanupController);
    sub_1BE048964();
    v130[0] = sub_1BE04E954();
    v130[1] = v79;
    v80 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD550E8));
    sub_1BE048964();
    v81 = sub_1BE04F894();
    v82 = swift_allocObject();
    v84 = v119;
    v83 = v120;
    *(v82 + 2) = v119;
    *(v82 + 3) = v83;
    *(v82 + 4) = v116;
    v85 = (v78 + OBJC_IVAR____TtC9PassKitUI26SEStorageCleanupController_completion);
    v86 = *(v78 + OBJC_IVAR____TtC9PassKitUI26SEStorageCleanupController_completion);
    *v85 = sub_1BD82AEB8;
    v85[1] = v82;
    sub_1BE048964();
    v87 = v84;
    sub_1BD0D4744(v86);
    sub_1BE04B694();
    v88 = sub_1BE04CFD4();
    sub_1BE04D004();
    v89 = sub_1BE052E24();
    if (sub_1BE053494())
    {
      sub_1BE048964();
      v90 = v108;
      sub_1BE04D034();
      v91 = v90;

      v92 = v109;
      v93 = v90;
      v94 = v110;
      if ((*(v109 + 88))(v93, v110) == *MEMORY[0x1E69E93E8])
      {
        v95 = "[Error] Interval already ended";
      }

      else
      {
        (*(v92 + 8))(v91, v94);
        v95 = "";
      }

      v96 = swift_slowAlloc();
      *v96 = 0;
      v97 = v124;
      v98 = sub_1BE04CFA4();
      _os_signpost_emit_with_name_impl(&dword_1BD026000, v88, v89, v98, "provisioning:prepareSEStorageCleanupController", v95, v96, 2u);
      MEMORY[0x1BFB45F20](v96, -1, -1);
      v68 = v97;
    }

    (v114)(v68, v127);
    v111(v125, v126);
    [v87 presentViewController:v81 animated:1 completion:0];

    v51 = v117;
    goto LABEL_31;
  }

  __break(1u);
}

uint64_t sub_1BD81BD5C(int a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v28 = a6;
  v26 = a4;
  v27 = a1;
  v10 = sub_1BE051F54();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_1BE051FA4();
  v15 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30, v16);
  v18 = &v26 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BD0E5E8C(0, &qword_1EBD35E90);
  v29 = sub_1BE052D54();
  v19 = swift_allocObject();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakInit();

  v21 = swift_allocObject();
  *(v21 + 16) = v19;
  *(v21 + 24) = a2;
  *(v21 + 32) = v26;
  *(v21 + 40) = a5;
  *(v21 + 48) = v28;
  *(v21 + 56) = a7;
  *(v21 + 64) = v27;
  aBlock[4] = sub_1BD82AF38;
  aBlock[5] = v21;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BD126964;
  aBlock[3] = &block_descriptor_110_2;
  v22 = _Block_copy(aBlock);
  v23 = a2;
  sub_1BE048C84();
  sub_1BE048964();

  sub_1BE051F74();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1BD82B4EC(&qword_1EBD366B0, 255, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0);
  sub_1BD0DE4F4(&qword_1EBD35F20, &unk_1EBD387F0);
  sub_1BE053664();
  v24 = v29;
  MEMORY[0x1BFB3FDF0](0, v18, v14, v22);
  _Block_release(v22);

  (*(v11 + 8))(v14, v10);
  return (*(v15 + 8))(v18, v30);
}

void sub_1BD81C0DC(uint64_t a1, void *a2, uint64_t a3, unint64_t a4, void (*a5)(void), uint64_t a6, char a7)
{
  v13 = sub_1BE04D214();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13, v15);
  v17 = v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v19 = Strong;
    if (a2)
    {
      v38 = a3;
      v20 = a2;
      sub_1BE04D0D4();
      v21 = a2;
      sub_1BE048C84();
      v22 = sub_1BE04D204();
      v23 = sub_1BE052C54();

      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        v36[1] = a6;
        v25 = v24;
        v26 = swift_slowAlloc();
        v37 = a5;
        v27 = v26;
        v36[0] = swift_slowAlloc();
        v39 = v36[0];
        *v25 = 136315394;
        *(v25 + 4) = sub_1BD123690(v38, a4, &v39);
        *(v25 + 12) = 2112;
        v28 = a2;
        v29 = _swift_stdlib_bridgeErrorToNSError();
        *(v25 + 14) = v29;
        *v27 = v29;
        _os_log_impl(&dword_1BD026000, v22, v23, "[%s] Failed to present snapshot sheet with error: %@", v25, 0x16u);
        sub_1BD0DE53C(v27, &unk_1EBD3E590);
        v30 = v27;
        a5 = v37;
        MEMORY[0x1BFB45F20](v30, -1, -1);
        v31 = v36[0];
        __swift_destroy_boxed_opaque_existential_0(v36[0]);
        MEMORY[0x1BFB45F20](v31, -1, -1);
        MEMORY[0x1BFB45F20](v25, -1, -1);
      }

      (*(v14 + 8))(v17, v13);
      a5(0);
    }

    else
    {
      a5(a7 & 1);
    }

    v32 = OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_seStorageHandle;
    v33 = *&v19[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_seStorageHandle];
    if (v33)
    {
      v34 = v33;
      sub_1BE04C1A4();

      v35 = *&v19[v32];
    }

    else
    {
      v35 = 0;
    }

    *&v19[v32] = 0;
  }
}

void sub_1BD81C3AC(unint64_t a1)
{
  v2 = v1;
  v4 = sub_1BE04D214();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1BE04BAC4();
  v10 = *(v9 - 8);
  v12 = MEMORY[0x1EEE9AC00](v9, v11);
  v14 = &v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 >> 62)
  {
    if (sub_1BE053704())
    {
      goto LABEL_3;
    }
  }

  else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_3:
    v15 = *&v1[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_fieldsModel];
    if (!v15)
    {
      goto LABEL_7;
    }

    v16 = [v15 paymentSetupFieldWithIdentifier_];
    if (!v16)
    {
      goto LABEL_25;
    }

    v17 = v16;
    v18 = [v16 displayString];

    if (v18)
    {
      sub_1BE052434();
      v20 = v19;
    }

    else
    {
LABEL_7:
      v20 = 0;
    }

    sub_1BE04BC34();
    v21 = sub_1BE04B9A4();
    (*(v10 + 8))(v14, v9);
    v22 = objc_allocWithZone(PKPaymentSetupDisambiguationViewController);
    sub_1BD0E5E8C(0, &qword_1EBD38568);
    v23 = sub_1BE052724();
    v24 = [v22 initWithProducts:v23 context:v21];

    if (v24)
    {
      if (v20)
      {
        v25 = sub_1BE052404();
      }

      else
      {
        v25 = 0;
      }

      [v24 setEnteredCardNumber_];

      [v24 setDelegate_];
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v27 = Strong;
        v28 = [Strong navigationController];

        if (v28)
        {
          [v28 pushViewController:v24 animated:1];
        }
      }

      return;
    }

    __break(1u);
LABEL_25:
    __break(1u);
    return;
  }

  sub_1BE04D0D4();
  v29 = v1;
  v30 = sub_1BE04D204();
  v31 = sub_1BE052C34();

  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v39 = v33;
    *v32 = 136315138;
    if (*&v29[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_composer])
    {
      sub_1BE048964();
      v34 = sub_1BE04C0A4();
      v36 = v35;
    }

    else
    {
      v34 = 0;
      v36 = 0xE000000000000000;
    }

    v37 = sub_1BD123690(v34, v36, &v39);

    *(v32 + 4) = v37;
    _os_log_impl(&dword_1BD026000, v30, v31, "[%s] Attempted to present products disambiguation for empty products array", v32, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v33);
    MEMORY[0x1BFB45F20](v33, -1, -1);
    MEMORY[0x1BFB45F20](v32, -1, -1);
  }

  (*(v5 + 8))(v8, v4);
}

void sub_1BD81C7FC(void *a1)
{
  v3 = sub_1BE04D214();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *&v1[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_fieldsModel];
  if (v8)
  {
    v31 = v8;
    v9 = [a1 requiredFields];
    v10 = [v31 secondaryEntryFieldsModelWithPaymentSetupFields_];

    if (v10)
    {
      v11 = [a1 configuration];
      if (v11)
      {
        v12 = v11;
        v13 = [v11 productIdentifier];

        if (v13)
        {
          v14 = sub_1BE052434();
          v16 = v15;
        }

        else
        {
          v14 = 0;
          v16 = 0;
        }

        sub_1BD8182B4(v10, v14, v16, 0, 0);
      }

      else
      {
        __break(1u);
      }
    }

    else
    {
      v25 = v31;
    }
  }

  else
  {
    sub_1BE04D0D4();
    v17 = v1;
    v18 = sub_1BE04D204();
    v19 = sub_1BE052C34();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      *v20 = 136315138;
      v31 = v17;
      v32 = v21;
      if (*&v17[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_composer])
      {
        sub_1BE048964();
        v22 = sub_1BE04C0A4();
        v24 = v23;
      }

      else
      {
        v22 = 0;
        v24 = 0xE000000000000000;
      }

      v26 = sub_1BD123690(v22, v24, &v32);

      *(v20 + 4) = v26;
      _os_log_impl(&dword_1BD026000, v18, v19, "[%s] Failed to disambiguate provisioning because missing fields model", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v21);
      MEMORY[0x1BFB45F20](v21, -1, -1);
      MEMORY[0x1BFB45F20](v20, -1, -1);

      (*(v4 + 8))(v7, v3);
    }

    else
    {

      (*(v4 + 8))(v7, v3);
    }

    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v28 = Strong;
      v29 = [Strong navigationController];

      if (v29)
      {
        v30 = [v29 popViewControllerAnimated_];
      }
    }
  }
}

uint64_t sub_1BD81CBB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v24 = a3;
  v25 = a1;
  v7 = sub_1BE051F54();
  v27 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_1BE051FA4();
  v11 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26, v12);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v4 + OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_reporter);
  sub_1BD0E5E8C(0, &qword_1EBD35E90);
  v16 = sub_1BE052D54();
  v17 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v18 = swift_allocObject();
  v20 = v24;
  v19 = v25;
  v18[2] = v17;
  v18[3] = v20;
  v18[4] = a4;
  v18[5] = v15;
  v18[6] = v19;
  v18[7] = a2;
  aBlock[4] = sub_1BD82682C;
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BD126964;
  aBlock[3] = &block_descriptor_188;
  v21 = _Block_copy(aBlock);
  sub_1BE048C84();
  sub_1BE048964();
  v22 = v15;

  sub_1BE051F74();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1BD82B4EC(&qword_1EBD366B0, 255, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0);
  sub_1BD0DE4F4(&qword_1EBD35F20, &unk_1EBD387F0);
  sub_1BE053664();
  MEMORY[0x1BFB3FDF0](0, v14, v10, v21);
  _Block_release(v21);

  (*(v27 + 8))(v10, v7);
  return (*(v11 + 8))(v14, v26);
}

uint64_t sub_1BD81CF08(uint64_t a1, void (*a2)(void), uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v46 = a6;
  v47 = a3;
  v48 = a2;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD41D70);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = (&v42 - v11);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v14 = Strong;
    v45 = a5;
    v15 = [objc_allocWithZone(MEMORY[0x1E6997E60]) init];
    v16 = [v15 biometricEnrollmentACLType];

    sub_1BD112BCC(&unk_1F3B8F6A8);
    v17 = sub_1BD6CF234(v16);

    if (v17)
    {
      v18 = v16;
    }

    else
    {
      v18 = 0;
    }

    IsAvailable = PKPearlIsAvailable();
    v20 = swift_allocObject();
    v21 = sub_1BD828FD0(v18);
    *(v20 + 16) = v21;
    *(v20 + 24) = v22;
    if (a4)
    {
      v23 = v21;
      v24 = v22;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3D1E0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1BE0B6CA0;
      v43 = v20;
      v44 = a4;
      v26 = v18;
      v27 = *MEMORY[0x1E69BA680];
      *(inited + 32) = *MEMORY[0x1E69BA680];
      *(inited + 40) = sub_1BE052434();
      *(inited + 48) = v28;
      v29 = IsAvailable;
      v30 = *MEMORY[0x1E69BA3F8];
      *(inited + 56) = *MEMORY[0x1E69BA3F8];
      *(inited + 64) = v23;
      *(inited + 72) = v24;
      v31 = v27;
      v18 = v26;
      v20 = v43;
      v32 = v30;
      IsAvailable = v29;
      sub_1BE048C84();
      sub_1BD1AAF50(inited);
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F590);
      a4 = v44;
      swift_arrayDestroy();
      type metadata accessor for PKAnalyticsKey(0);
      sub_1BD82B4EC(&qword_1EBD35F00, 255, type metadata accessor for PKAnalyticsKey);
      v33 = sub_1BE052224();

      [a4 reportEvent_];
    }

    v34 = [objc_allocWithZone(sub_1BE0520F4()) init];
    v35 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v36 = swift_allocObject();
    v38 = v47;
    v37 = v48;
    *(v36 + 16) = v35;
    *(v36 + 24) = v37;
    v39 = v45;
    *(v36 + 32) = v38;
    *(v36 + 40) = v39;
    *(v36 + 48) = v46;
    *(v36 + 56) = IsAvailable;
    *(v36 + 64) = a4;
    *(v36 + 72) = v20;
    *(v36 + 80) = v18;
    sub_1BE048C84();
    v40 = a4;
    sub_1BE048964();
    sub_1BE048964();
    sub_1BE048964();
    sub_1BE0520E4();
  }

  else
  {
    *v12 = [objc_opt_self() errorWithSeverity_];
    (*(v9 + 104))(v12, *MEMORY[0x1E69B8168], v8);
    v48(v12);
    return (*(v9 + 8))(v12, v8);
  }
}

void sub_1BD81D348(void *a1, uint64_t a2, void (*a3)(void *), uint64_t a4, uint64_t a5, uint64_t a6, char a7, void *a8, uint64_t a9, uint64_t a10)
{
  v46 = a8;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD41D70);
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16, v18);
  v20 = (&v43 - v19);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    *v20 = [objc_opt_self() errorWithSeverity_];
    (*(v17 + 104))(v20, *MEMORY[0x1E69B8168], v16);
    a3(v20);
LABEL_7:
    (*(v17 + 8))(v20, v16);
    return;
  }

  v22 = Strong;
  v43 = v17;
  v44 = a3;
  v45 = a4;
  if (a1)
  {
    v23 = sub_1BD829158(a1, a5, a6, a7 & 1);
    v24 = v46;
    if (v46)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3D1E0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1BE0B6CA0;
      v26 = *MEMORY[0x1E69BA680];
      *(inited + 32) = *MEMORY[0x1E69BA680];
      *(inited + 40) = sub_1BE052434();
      *(inited + 48) = v27;
      v28 = *MEMORY[0x1E69BA3F8];
      *(inited + 56) = *MEMORY[0x1E69BA3F8];
      swift_beginAccess();
      v29 = *(a9 + 24);
      *(inited + 64) = *(a9 + 16);
      *(inited + 72) = v29;
      v30 = v26;
      v31 = v28;
      sub_1BE048C84();
      sub_1BD1AAF50(inited);
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F590);
      swift_arrayDestroy();
      type metadata accessor for PKAnalyticsKey(0);
      sub_1BD82B4EC(&qword_1EBD35F00, 255, type metadata accessor for PKAnalyticsKey);
      v32 = sub_1BE052224();

      [v24 reportEvent_];
    }

    *v20 = v23;
    v17 = v43;
    (*(v43 + 104))(v20, *MEMORY[0x1E69B8168], v16);
    v33 = v23;
    v44(v20);

    goto LABEL_7;
  }

  v34 = swift_allocObject();
  v34[2] = a10;
  v34[3] = a9;
  v36 = v45;
  v35 = v46;
  v37 = v44;
  v34[4] = v46;
  v34[5] = v37;
  v34[6] = v36;
  v38 = objc_allocWithZone(MEMORY[0x1E6997C18]);
  v39 = v35;
  sub_1BE048964();
  sub_1BE048964();
  v40 = [v38 init];
  v41 = swift_allocObject();
  *(v41 + 16) = sub_1BD8290E0;
  *(v41 + 24) = v34;
  aBlock[4] = sub_1BD8290F8;
  aBlock[5] = v41;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BD715170;
  aBlock[3] = &block_descriptor_70_1;
  v42 = _Block_copy(aBlock);
  sub_1BE048964();

  [v40 globalAuthACLWithCompletion_];
  _Block_release(v42);
}

uint64_t sub_1BD81D7EC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void (*a5)(void))
{
  v51 = a4;
  v9 = sub_1BE04C534();
  v54 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v10);
  v52 = &v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD41D70);
  v50 = *(v53 - 8);
  MEMORY[0x1EEE9AC00](v53, v12);
  v49 = &v45 - v13;
  v14 = sub_1BE04D214();
  MEMORY[0x1EEE9AC00](v14, v15);
  v19 = &v45 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2 != a1)
  {
    v47 = v17;
    v48 = v16;
    v56 = 0;
    v57 = 0xE000000000000000;
    sub_1BE053834();

    v56 = 0xD00000000000001FLL;
    v57 = 0x80000001BE13BE00;
    v55[0] = a2;
    v20 = sub_1BE053B24();
    MEMORY[0x1BFB3F610](v20);

    MEMORY[0x1BFB3F610](0x6C6C6F726E65202CLL, 0xEC000000203A6465);
    v55[0] = a1;
    v21 = sub_1BE053B24();
    MEMORY[0x1BFB3F610](v21);

    v22 = v56;
    v23 = v57;
    swift_beginAccess();
    *(a3 + 16) = v22;
    *(a3 + 24) = v23;

    sub_1BE04D0D4();
    sub_1BE048964();
    v24 = sub_1BE04D204();
    v25 = sub_1BE052C34();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v55[0] = v27;
      *v26 = 136315138;
      swift_beginAccess();
      v46 = v9;
      v28 = a5;
      v29 = *(a3 + 16);
      v30 = *(a3 + 24);
      sub_1BE048C84();
      v31 = sub_1BD123690(v29, v30, v55);
      a5 = v28;
      v9 = v46;

      *(v26 + 4) = v31;
      _os_log_impl(&dword_1BD026000, v24, v25, "handleMissingBiometricBinding: detected %s", v26, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v27);
      MEMORY[0x1BFB45F20](v27, -1, -1);
      MEMORY[0x1BFB45F20](v26, -1, -1);
    }

    (*(v47 + 8))(v19, v48);
  }

  v32 = v51;
  if (v51)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3D1E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1BE0B6CA0;
    v34 = *MEMORY[0x1E69BA680];
    *(inited + 32) = *MEMORY[0x1E69BA680];
    *(inited + 40) = sub_1BE052434();
    *(inited + 48) = v35;
    v36 = *MEMORY[0x1E69BA3F8];
    *(inited + 56) = *MEMORY[0x1E69BA3F8];
    swift_beginAccess();
    v37 = *(a3 + 24);
    *(inited + 64) = *(a3 + 16);
    *(inited + 72) = v37;
    v38 = v34;
    v39 = v36;
    sub_1BE048C84();
    sub_1BD1AAF50(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F590);
    swift_arrayDestroy();
    type metadata accessor for PKAnalyticsKey(0);
    sub_1BD82B4EC(&qword_1EBD35F00, 255, type metadata accessor for PKAnalyticsKey);
    v40 = sub_1BE052224();

    [v32 reportEvent_];
  }

  v41 = v54;
  v42 = v52;
  (*(v54 + 104))(v52, *MEMORY[0x1E69B8308], v9);
  v43 = v49;
  sub_1BE04BF54();
  (*(v41 + 8))(v42, v9);
  a5(v43);
  return (*(v50 + 8))(v43, v53);
}

void sub_1BD81DDE4(uint64_t a1, void (*a2)(void *), uint64_t a3)
{
  v4 = v3;
  v107 = a2;
  v108 = a3;
  v110 = a1;
  v111 = sub_1BE04C534();
  v109 = *(v111 - 1);
  MEMORY[0x1EEE9AC00](v111, v5);
  v104 = &v96 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1BE04D214();
  v102 = *(v7 - 1);
  v103 = v7;
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v96 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v114 = sub_1BE04BDB4();
  v101 = *(v114 - 8);
  MEMORY[0x1EEE9AC00](v114, v11);
  v113 = &v96 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1BE04BDF4();
  v14 = *(v13 - 8);
  v115 = v13;
  v116 = v14;
  MEMORY[0x1EEE9AC00](v13, v15);
  v112 = &v96 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD41D70);
  v106 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17, v18);
  v105 = (&v96 - v19);
  v99 = sub_1BE04B944();
  v98 = *(v99 - 8);
  MEMORY[0x1EEE9AC00](v99, v20);
  v97 = &v96 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD55100);
  MEMORY[0x1EEE9AC00](v22 - 8, v23);
  v25 = &v96 - v24;
  v26 = sub_1BE04BAC4();
  v27 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26, v28);
  v30 = &v96 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*&v3[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_composer])
  {
    sub_1BE048964();
    v100 = sub_1BE04C0A4();
    v32 = v31;
  }

  else
  {
    v100 = 0;
    v32 = 0xE000000000000000;
  }

  v33 = v110;
  v34 = *(v110 + 16);
  if (v34)
  {
    v35 = sub_1BD68DC7C(v110);
    if (v36 == 2 || (v37 = v35, (v38 = swift_unknownObjectWeakLoadStrong()) == 0))
    {
      aBlock = v33;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3F500);
      sub_1BD0DE4F4(&qword_1EBD55110, &unk_1EBD3F500);
      sub_1BE052674();
      v49 = (*(v116 + 48))(v25, 1, v115);
      sub_1BD0DE53C(v25, &unk_1EBD55100);
      if (v49 != 1 && (Strong = swift_unknownObjectWeakLoadStrong()) != 0 && (v51 = Strong, v52 = [Strong navigationController], v51, v52))
      {
        v53 = OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_passcodeAssertion;
        if (*&v4[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_passcodeAssertion])
        {
          sub_1BE048964();
          sub_1BE04C244();

          *&v4[v53] = 0;
        }

        sub_1BE04C264();
        v54 = v97;
        sub_1BE04BB94();
        v55 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v56 = swift_allocObject();
        v57 = v100;
        v56[2] = v55;
        v56[3] = v57;
        v56[4] = v32;
        v56[5] = v110;
        v56[6] = v4;
        v58 = v108;
        v56[7] = v107;
        v56[8] = v58;
        v56[9] = v52;
        sub_1BE048C84();
        v59 = v4;
        sub_1BE048964();
        sub_1BE048964();
        v60 = v52;
        MEMORY[0x1BFB392E0](v54, sub_1BD82B688, v56);

        (*(v98 + 8))(v54, v99);
      }

      else
      {
        v104 = v17;

        v103 = [objc_opt_self() errorWithCommonType:1 severity:5];
        aBlock = MEMORY[0x1E69E7CC0];
        sub_1BD03B254(0, v34, 0);
        v68 = aBlock;
        v69 = *(v116 + 16);
        v70 = v110 + ((*(v116 + 80) + 32) & ~*(v116 + 80));
        v110 = *(v116 + 72);
        v111 = v69;
        v109 = v101 + 8;
        v116 += 16;
        v71 = (v116 - 8);
        do
        {
          v72 = v112;
          v73 = v115;
          v111(v112, v70, v115);
          v74 = v113;
          sub_1BE04BDE4();
          v75 = sub_1BE04BDA4();
          v77 = v76;
          (*v109)(v74, v114);
          (*v71)(v72, v73);
          aBlock = v68;
          v79 = *(v68 + 16);
          v78 = *(v68 + 24);
          if (v79 >= v78 >> 1)
          {
            sub_1BD03B254((v78 > 1), v79 + 1, 1);
            v68 = aBlock;
          }

          *(v68 + 16) = v79 + 1;
          v80 = v68 + 16 * v79;
          *(v80 + 32) = v75;
          *(v80 + 40) = v77;
          v70 += v110;
          --v34;
        }

        while (v34);
        aBlock = v68;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD45AA0);
        sub_1BD0DE4F4(&qword_1EBD55120, &unk_1EBD45AA0);
        v81 = sub_1BE0522E4();
        v83 = v82;

        aBlock = 0;
        v118 = 0xE000000000000000;
        sub_1BE053834();

        aBlock = 0xD000000000000016;
        v118 = 0x80000001BE123A30;
        MEMORY[0x1BFB3F610](v81, v83);

        v84 = sub_1BE052404();

        v85 = v103;
        [v103 addInternalDebugDescription_];

        v87 = v105;
        v86 = v106;
        *v105 = v85;
        v88 = v104;
        (*(v86 + 104))(v87, *MEMORY[0x1E69B8168], v104);
        v89 = v85;
        v107(v87);

        (*(v86 + 8))(v87, v88);
      }
    }

    else
    {
      v39 = v38;

      sub_1BE04BC34();
      v40 = sub_1BE04B9A4();
      (*(v27 + 8))(v30, v26);
      v41 = [objc_allocWithZone(PKSecurityCapabilitiesController) initWithRequirements:v37 context:v40];
      if (v41)
      {
        v42 = v41;
        v43 = swift_allocObject();
        v43[2] = v110;
        v43[3] = v4;
        v44 = v108;
        v43[4] = v107;
        v43[5] = v44;
        v121 = sub_1BD82B5F8;
        v122 = v43;
        aBlock = MEMORY[0x1E69E9820];
        v118 = 1107296256;
        v119 = sub_1BD68F010;
        v120 = &block_descriptor_210_0;
        v45 = _Block_copy(&aBlock);
        v46 = v42;
        v47 = v39;
        sub_1BE048C84();
        v48 = v4;
        sub_1BE048964();

        [v46 presentSecurityRepairFlowWithPresentingViewController:v47 completion:v45];

        _Block_release(v45);
      }

      else
      {
      }
    }
  }

  else
  {
    sub_1BE04D0D4();
    sub_1BE048C84();
    v61 = sub_1BE04D204();
    v62 = sub_1BE052C54();

    if (os_log_type_enabled(v61, v62))
    {
      v63 = v17;
      v64 = swift_slowAlloc();
      v65 = swift_slowAlloc();
      aBlock = v65;
      *v64 = 136315138;
      v66 = sub_1BD123690(v100, v32, &aBlock);

      *(v64 + 4) = v66;
      _os_log_impl(&dword_1BD026000, v61, v62, "[%s] Successfully resolved all missing requirements", v64, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v65);
      MEMORY[0x1BFB45F20](v65, -1, -1);
      v67 = v64;
      v17 = v63;
      MEMORY[0x1BFB45F20](v67, -1, -1);
    }

    else
    {
    }

    (*(v102 + 8))(v10, v103);
    v91 = v105;
    v90 = v106;
    v92 = v107;
    v93 = v111;
    v94 = v109;
    v95 = v104;
    (*(v109 + 104))(v104, *MEMORY[0x1E69B8308], v111);
    sub_1BE04BF54();
    (*(v94 + 8))(v95, v93);
    v92(v91);
    (*(v90 + 8))(v91, v17);
  }
}

uint64_t sub_1BD81EA24(uint64_t a1, uint64_t a2, void (*a3)(void *), void (*a4)(void *), uint64_t a5)
{
  v33[1] = a3;
  v34 = a5;
  v33[0] = a4;
  v7 = sub_1BE04BDB4();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_1BE04BDF4();
  MEMORY[0x1EEE9AC00](v46, v12);
  v43 = v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17.n128_f64[0] = MEMORY[0x1EEE9AC00](v14, v15);
  v45 = v33 - v18;
  v42 = *(a2 + 16);
  if (v42)
  {
    v19 = 0;
    v21 = *(v16 + 16);
    v20 = v16 + 16;
    v36 = (*(v20 + 64) + 32) & ~*(v20 + 64);
    v38 = a2 + v36;
    v39 = v21;
    v44 = *(v20 + 56);
    v37 = (v8 + 8);
    v35 = (v20 - 8);
    v41 = (v20 + 16);
    v22 = MEMORY[0x1E69E7CC0];
    v40 = v20;
    v21(v45, a2 + v36, v46, v17);
    while (2)
    {
      ++v19;
      sub_1BE04BDE4();
      v26 = 0;
      v27 = *(a1 + 16);
      while (v27 != v26)
      {
        v28 = v26 + 1;
        sub_1BD82B4EC(&unk_1EBD55130, 255, MEMORY[0x1E69B8138]);
        v29 = sub_1BE052334();
        v26 = v28;
        if (v29)
        {
          (*v37)(v11, v7);
          (*v35)(v45, v46);
          goto LABEL_6;
        }
      }

      (*v37)(v11, v7);
      v30 = *v41;
      (*v41)(v43, v45, v46);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v47 = v22;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1BD531998(0, *(v22 + 16) + 1, 1);
        v22 = v47;
      }

      v24 = *(v22 + 16);
      v23 = *(v22 + 24);
      if (v24 >= v23 >> 1)
      {
        sub_1BD531998(v23 > 1, v24 + 1, 1);
        v22 = v47;
      }

      *(v22 + 16) = v24 + 1;
      v30((v22 + v36 + v24 * v44), v43, v46);
LABEL_6:
      if (v19 != v42)
      {
        v39(v45, v38 + v44 * v19, v46, v25);
        continue;
      }

      break;
    }
  }

  else
  {
    v22 = MEMORY[0x1E69E7CC0];
  }

  sub_1BD81DDE4(v22, v33[0], v34);
}

uint64_t sub_1BD81EDD8(uint64_t a1, void *a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v25 = a5;
  v11 = sub_1BE051F54();
  v28 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_1BE051FA4();
  v15 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27, v16);
  v18 = &v25 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BD0E5E8C(0, &qword_1EBD35E90);
  v26 = sub_1BE052D54();
  v19 = swift_allocObject();
  v19[2] = a1;
  v19[3] = a2;
  v19[4] = a3;
  v19[5] = a4;
  v19[6] = v25;
  v19[7] = a6;
  aBlock[4] = sub_1BD82B0D8;
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BD126964;
  aBlock[3] = &block_descriptor_182_1;
  v20 = _Block_copy(aBlock);
  v21 = a2;
  sub_1BE048C84();
  v22 = a4;
  sub_1BE048964();

  sub_1BE051F74();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1BD82B4EC(&qword_1EBD366B0, 255, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0);
  sub_1BD0DE4F4(&qword_1EBD35F20, &unk_1EBD387F0);
  sub_1BE053664();
  v23 = v26;
  MEMORY[0x1BFB3FDF0](0, v18, v14, v20);
  _Block_release(v20);

  (*(v28 + 8))(v14, v11);
  return (*(v15 + 8))(v18, v27);
}

uint64_t sub_1BD81F108(uint64_t a1, unint64_t a2, uint64_t a3, void (*a4)(void *), void (*a5)(void *), uint64_t a6)
{
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD41D70);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v14);
  v16 = (&v29 - v15);
  if (a1 | a2)
  {
    if (a1 == 3 || !a2)
    {
      sub_1BE04BF44();
      a5(v16);
    }

    else
    {
      v25 = a2;
      v26 = sub_1BE04A844();
      v27 = [objc_opt_self() errorWithUnderlyingError:v26 defaultSeverity:5];

      *v16 = v27;
      (*(v13 + 104))(v16, *MEMORY[0x1E69B8168], v12);
      v28 = v27;
      a5(v16);
    }

    return (*(v13 + 8))(v16, v12);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49908);
    v17 = sub_1BE04BDB4();
    v18 = *(v17 - 8);
    v19 = *(v18 + 72);
    v20 = (*(v18 + 80) + 32) & ~*(v18 + 80);
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_1BE0B98E0;
    v22 = v21 + v20;
    v23 = *(v18 + 104);
    v23(v22, *MEMORY[0x1E69B8120], v17);
    v23(v22 + v19, *MEMORY[0x1E69B8128], v17);
    v30 = a6;
    v23(v22 + 2 * v19, *MEMORY[0x1E69B8118], v17);
    v23(v22 + 3 * v19, *MEMORY[0x1E69B8130], v17);
    sub_1BD81EA24(v21, a3, a4, a5, v30);
    swift_setDeallocating();
    swift_arrayDestroy();

    return swift_deallocClassInstance();
  }
}

uint64_t sub_1BD81F45C(void *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8, uint64_t a9, void *a10)
{
  v32 = a4;
  v31 = a2;
  v34 = sub_1BE051F54();
  v38 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34, v15);
  v33 = &v30[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v37 = sub_1BE051FA4();
  v35 = *(v37 - 8);
  MEMORY[0x1EEE9AC00](v37, v17);
  v19 = &v30[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1BD0E5E8C(0, &qword_1EBD35E90);
  v36 = sub_1BE052D54();
  v20 = swift_allocObject();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakInit();

  v22 = swift_allocObject();
  *(v22 + 16) = v20;
  *(v22 + 24) = a1;
  LOBYTE(v20) = v31 & 1;
  *(v22 + 32) = v31 & 1;
  *(v22 + 40) = v32;
  *(v22 + 48) = a5;
  *(v22 + 56) = a6;
  *(v22 + 64) = a7;
  *(v22 + 72) = a8;
  *(v22 + 80) = a9;
  *(v22 + 88) = a10;
  aBlock[4] = sub_1BD82B108;
  aBlock[5] = v22;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BD126964;
  aBlock[3] = &block_descriptor_189;
  v23 = _Block_copy(aBlock);
  sub_1BD25D6F4(a1, v20);
  sub_1BE048C84();
  sub_1BE048C84();
  v24 = a7;
  sub_1BE048964();
  v25 = a10;

  sub_1BE051F74();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1BD82B4EC(&qword_1EBD366B0, 255, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0);
  sub_1BD0DE4F4(&qword_1EBD35F20, &unk_1EBD387F0);
  v27 = v33;
  v26 = v34;
  sub_1BE053664();
  v28 = v36;
  MEMORY[0x1BFB3FDF0](0, v19, v27, v23);
  _Block_release(v23);

  (*(v38 + 8))(v27, v26);
  return (*(v35 + 8))(v19, v37);
}

void sub_1BD81F814(uint64_t a1, void *a2, char a3, uint64_t a4, unint64_t a5, uint64_t a6, void (*a7)(void *), void (*a8)(void *), uint64_t a9, void *a10)
{
  v60 = a8;
  v56 = a7;
  v57 = a4;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD41D70);
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14, v16);
  v18 = (&v53 - v17);
  v19 = sub_1BE04D214();
  v58 = *(v19 - 8);
  v59 = v19;
  MEMORY[0x1EEE9AC00](v19, v20);
  v22 = &v53 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23, v24);
  v26 = &v53 - v25;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v28 = Strong;
    v55 = a9;
    if (a3)
    {
      sub_1BE04D0D4();
      sub_1BD25D6F4(a2, 1);
      sub_1BE048C84();
      v29 = sub_1BE04D204();
      v30 = sub_1BE052C54();

      sub_1BD25D6D4(a2, 1);
      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        v54 = v29;
        v32 = v31;
        v56 = swift_slowAlloc();
        v61 = v56;
        *v32 = 136315394;
        *(v32 + 4) = sub_1BD123690(v57, a5, &v61);
        *(v32 + 12) = 2080;
        v33 = [a2 description];
        v34 = sub_1BE052434();
        LODWORD(v57) = v30;
        v36 = v35;

        sub_1BD25D6D4(a2, 1);
        v37 = sub_1BD123690(v34, v36, &v61);

        *(v32 + 14) = v37;
        v38 = v54;
        _os_log_impl(&dword_1BD026000, v54, v57, "[%s] Failed to acquire strong passcode assertion with error: %s", v32, 0x16u);
        v39 = v56;
        swift_arrayDestroy();
        MEMORY[0x1BFB45F20](v39, -1, -1);
        MEMORY[0x1BFB45F20](v32, -1, -1);
      }

      else
      {
      }

      (*(v58 + 8))(v22, v59);
      *v18 = a2;
      (*(v15 + 104))(v18, *MEMORY[0x1E69B8168], v14);
      v48 = a2;
      v60(v18);

      (*(v15 + 8))(v18, v14);
    }

    else
    {
      *(Strong + OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_passcodeAssertion) = a2;
      sub_1BE048964();

      if (sub_1BE04C224())
      {
        sub_1BE04D0D4();
        sub_1BE048C84();
        v40 = sub_1BE04D204();
        v41 = sub_1BE052C54();

        if (os_log_type_enabled(v40, v41))
        {
          v42 = swift_slowAlloc();
          v43 = swift_slowAlloc();
          v61 = v43;
          *v42 = 136315138;
          *(v42 + 4) = sub_1BD123690(v57, a5, &v61);
          _os_log_impl(&dword_1BD026000, v40, v41, "[%s] Successfully enforced strong passcode policy", v42, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v43);
          MEMORY[0x1BFB45F20](v43, -1, -1);
          MEMORY[0x1BFB45F20](v42, -1, -1);
        }

        (*(v58 + 8))(v26, v59);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49908);
        v44 = sub_1BE04BDB4();
        v45 = *(v44 - 8);
        v46 = (*(v45 + 80) + 32) & ~*(v45 + 80);
        v47 = swift_allocObject();
        *(v47 + 16) = xmmword_1BE0B69E0;
        (*(v45 + 104))(v47 + v46, *MEMORY[0x1E69B8110], v44);
        sub_1BD81EA24(v47, a6, v56, v60, v55);

        swift_setDeallocating();
        (*(v45 + 8))(v47 + v46, v44);
        swift_deallocClassInstance();
      }

      else
      {
        v49 = swift_allocObject();
        v50 = v56;
        v49[2] = v57;
        v49[3] = a5;
        v49[4] = a6;
        v49[5] = v50;
        v51 = v55;
        v49[6] = v60;
        v49[7] = v51;
        sub_1BE048C84();
        sub_1BE048C84();
        v52 = v50;
        sub_1BE048964();
        sub_1BD8201D8(a2, a10, sub_1BD82B19C, v49);
      }
    }
  }
}

uint64_t sub_1BD81FE44(char a1, uint64_t a2, unint64_t a3, uint64_t a4, void (*a5)(void *), void (*a6)(void *), uint64_t a7)
{
  v37 = a6;
  v38 = a7;
  v35 = a4;
  v36 = a5;
  v34 = a2;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD41D70);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = (&v32 - v12);
  v14 = sub_1BE04D214();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14, v16);
  v18 = &v32 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BE04D0D4();
  sub_1BE048C84();
  v19 = sub_1BE04D204();
  v20 = sub_1BE052C54();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v33 = v9;
    v22 = v21;
    v23 = swift_slowAlloc();
    v32 = v10;
    v24 = v23;
    v39 = v23;
    *v22 = 136315394;
    *(v22 + 4) = sub_1BD123690(v34, a3, &v39);
    *(v22 + 12) = 1024;
    *(v22 + 14) = a1 & 1;
    _os_log_impl(&dword_1BD026000, v19, v20, "[%s] Passcode upgrade flow finished with success: %{BOOL}d", v22, 0x12u);
    __swift_destroy_boxed_opaque_existential_0(v24);
    v25 = v24;
    v10 = v32;
    MEMORY[0x1BFB45F20](v25, -1, -1);
    v26 = v22;
    v9 = v33;
    MEMORY[0x1BFB45F20](v26, -1, -1);
  }

  (*(v15 + 8))(v18, v14);
  if (a1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49908);
    v27 = sub_1BE04BDB4();
    v28 = *(v27 - 8);
    v29 = (*(v28 + 80) + 32) & ~*(v28 + 80);
    v30 = swift_allocObject();
    *(v30 + 16) = xmmword_1BE0B69E0;
    (*(v28 + 104))(v30 + v29, *MEMORY[0x1E69B8110], v27);
    sub_1BD81EA24(v30, v35, v36, v37, v38);
    swift_setDeallocating();
    (*(v28 + 8))(v30 + v29, v27);
    return swift_deallocClassInstance();
  }

  else
  {
    sub_1BE04BF44();
    v37(v13);
    return (*(v10 + 8))(v13, v9);
  }
}

uint64_t sub_1BD8201D8(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v63 = a1;
  v64 = a4;
  v61 = a2;
  v62 = a3;
  key[1] = *MEMORY[0x1E69E9840];
  v5 = sub_1BE04BAC4();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v56 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1BE04D214();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v56 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BE04D0D4();
  v15 = v4;
  v16 = sub_1BE04D204();
  v17 = sub_1BE052C54();

  if (os_log_type_enabled(v16, v17))
  {
    v58 = v10;
    v59 = v6;
    *&v60 = v5;
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    key[0] = v19;
    *v18 = 136315138;
    v57 = v15;
    if (*&v15[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_composer])
    {
      sub_1BE048964();
      v20 = sub_1BE04C0A4();
      v22 = v21;
    }

    else
    {
      v20 = 0;
      v22 = 0xE000000000000000;
    }

    v23 = sub_1BD123690(v20, v22, key);

    *(v18 + 4) = v23;
    _os_log_impl(&dword_1BD026000, v16, v17, "[%s] Presenting passcode upgrade flow", v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v19);
    MEMORY[0x1BFB45F20](v19, -1, -1);
    MEMORY[0x1BFB45F20](v18, -1, -1);

    (*(v11 + 8))(v14, v58);
    v6 = v59;
    v5 = v60;
    v15 = v57;
  }

  else
  {

    (*(v11 + 8))(v14, v10);
  }

  v24 = *&v15[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_context];
  sub_1BE04BC34();
  v25 = sub_1BE04B9A4();
  (*(v6 + 8))(v9, v5);
  v26 = [objc_allocWithZone(PKPaymentSetupDismissibleNavigationController) initWithContext_];
  if (!v26)
  {
    __break(1u);
  }

  v27 = v26;
  v28 = v61;
  [v26 setOverrideUserInterfaceStyle_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C9E8);
  v29 = sub_1BE04BDF4();
  v30 = *(v29 - 8);
  v31 = (*(v30 + 80) + 32) & ~*(v30 + 80);
  v32 = swift_allocObject();
  v60 = xmmword_1BE0B69E0;
  *(v32 + 16) = xmmword_1BE0B69E0;
  v33 = *MEMORY[0x1E69B8110];
  v34 = sub_1BE04BDB4();
  (*(*(v34 - 8) + 104))(v32 + v31, v33, v34);
  (*(v30 + 104))(v32 + v31, *MEMORY[0x1E69B8148], v29);
  v35 = objc_allocWithZone(type metadata accessor for ProvisioningPasscodeUpgradeFlowSection());
  sub_1BE048964();
  v36 = v63;
  sub_1BE048964();
  v37 = sub_1BD25D5A8(v24, v32, v36);

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD38570);
  v38 = swift_allocObject();
  *(v38 + 16) = v60;
  *(v38 + 32) = v37;
  *(v38 + 40) = &off_1F3B99F60;
  v39 = objc_allocWithZone(type metadata accessor for UIFlowManager());
  v40 = v37;
  v41 = sub_1BD3986F8(v38);
  *(*&v41[OBJC_IVAR____TtC9PassKitUI13UIFlowManager_root] + 104) = &off_1F3BAE178;
  swift_unknownObjectWeakAssign();
  v42 = type metadata accessor for UIFlowManagerRendererWrapper();
  v43 = objc_allocWithZone(v42);
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  v65.receiver = v43;
  v65.super_class = v42;
  v44 = v28;
  v45 = objc_msgSendSuper2(&v65, sel_init);
  LOBYTE(key[0]) = 0;
  objc_setAssociatedObject(v44, key, v45, 1);

  *&v41[OBJC_IVAR____TtC9PassKitUI13UIFlowManager_parentRenderer + 8] = &off_1F3BAE1D8;
  swift_unknownObjectWeakAssign();
  v46 = swift_allocObject();
  *(v46 + 16) = v44;
  *(v46 + 24) = v27;
  v47 = &v41[OBJC_IVAR____TtC9PassKitUI13UIFlowManager_onViewLoaded];
  v48 = *&v41[OBJC_IVAR____TtC9PassKitUI13UIFlowManager_onViewLoaded];
  *v47 = sub_1BD82B1AC;
  v47[1] = v46;
  v49 = v44;
  v50 = v27;
  sub_1BD0D4744(v48);
  v51 = swift_allocObject();
  v51[2] = v50;
  v51[3] = v36;
  v52 = v64;
  v51[4] = v62;
  v51[5] = v52;
  v51[6] = v41;
  sub_1BE048964();
  v53 = v50;
  sub_1BE048964();
  v54 = v41;
  sub_1BD398318(sub_1BD82B1C4, v51);
}

uint64_t sub_1BD820868(void *a1, uint64_t a2, uint64_t (*a3)(void))
{
  [a1 dismissViewControllerAnimated:1 completion:0];
  v4 = sub_1BE04C224();
  if ((v4 & 1) == 0)
  {
    sub_1BE04C244();
  }

  return a3(v4 & 1);
}

void sub_1BD8209B0(void *a1, char a2, void (*a3)(void *), uint64_t a4)
{
  v21 = a3;
  v7 = sub_1BE04C534();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD41D70);
  v13 = *(v12 - 8);
  v15 = MEMORY[0x1EEE9AC00](v12, v14);
  v17 = (&v20 - v16);
  if (a2)
  {
    if (a2 == 1)
    {
      *v17 = a1;
      (*(v13 + 104))(v17, *MEMORY[0x1E69B8168], v12, v15);
      v18 = a1;
    }

    else
    {
      (*(v8 + 104))(v11, *MEMORY[0x1E69B8308], v7, v15);
      sub_1BE04BF54();
      (*(v8 + 8))(v11, v7);
    }

    v21(v17);
    (*(v13 + 8))(v17, v12);
  }

  else
  {
    v19 = v21;

    sub_1BD81DDE4(a1, v19, a4);
  }
}

uint64_t sub_1BD820BF4(void *a1, uint64_t a2, char a3, void (*a4)(void *), uint64_t a5)
{
  v23 = a5;
  v24 = a4;
  v8 = sub_1BE04C534();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD41D70);
  v14 = *(v13 - 8);
  v16 = MEMORY[0x1EEE9AC00](v13, v15);
  v18 = (&v23 - v17);
  if (a3)
  {
    if (a3 == 1)
    {
      *v18 = a1;
      (*(v14 + 104))(v18, *MEMORY[0x1E69B8168], v13, v16);
      v19 = a1;
    }

    else
    {
      (*(v9 + 104))(v12, *MEMORY[0x1E69B8308], v8, v16);
      sub_1BE04BF54();
      (*(v9 + 8))(v12, v8);
    }

    v24(v18);
    return (*(v14 + 8))(v18, v13);
  }

  else
  {
    v21 = v23;
    v20 = v24;

    return sub_1BD81CBB8(a1, a2, v20, v21);
  }
}

void sub_1BD820E34(void *a1, void (*a2)(void *), uint64_t a3)
{
  v6 = sub_1BE04C534();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = aBlock - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD41D70);
  v12 = *(v11 - 8);
  v14 = MEMORY[0x1EEE9AC00](v11, v13);
  v16 = (aBlock - v15);
  if (a1)
  {
    if (a1 == 1)
    {
      v17 = [objc_opt_self() sharedInstance];
      v18 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v19 = swift_allocObject();
      v19[2] = v18;
      v19[3] = a2;
      v19[4] = a3;
      aBlock[4] = sub_1BD82B4A8;
      aBlock[5] = v19;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1BD03E30C;
      aBlock[3] = &block_descriptor_273;
      v20 = _Block_copy(aBlock);
      sub_1BE048964();

      [v17 initiateLostModeExitAuthWithCompletion_];
      _Block_release(v20);

      return;
    }

    *v16 = a1;
    (*(v12 + 104))(v16, *MEMORY[0x1E69B8168], v11, v14);
    v21 = a1;
  }

  else
  {
    (*(v7 + 104))(v10, *MEMORY[0x1E69B8308], v6, v14);
    sub_1BE04BF54();
    (*(v7 + 8))(v10, v6);
  }

  a2(v16);
  (*(v12 + 8))(v16, v11);
}

uint64_t sub_1BD821130(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_1BE051F54();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_1BE051FA4();
  v12 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25, v13);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BD0E5E8C(0, &qword_1EBD35E90);
  v24 = sub_1BE052D54();
  v16 = swift_allocObject();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakInit();

  v18 = swift_allocObject();
  v18[2] = v16;
  v18[3] = a1;
  v18[4] = a3;
  v18[5] = a4;
  aBlock[4] = sub_1BD82B4B4;
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BD126964;
  aBlock[3] = &block_descriptor_280;
  v19 = _Block_copy(aBlock);
  v20 = a1;
  sub_1BE048964();

  sub_1BE051F74();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1BD82B4EC(&qword_1EBD366B0, 255, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0);
  sub_1BD0DE4F4(&qword_1EBD35F20, &unk_1EBD387F0);
  sub_1BE053664();
  v21 = v24;
  MEMORY[0x1BFB3FDF0](0, v15, v11, v19);
  _Block_release(v19);

  (*(v8 + 8))(v11, v7);
  return (*(v12 + 8))(v15, v25);
}