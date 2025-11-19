uint64_t sub_220B8B218@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 48);
  v5 = sub_220BCD960();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_220B8B28C(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 48);
  v5 = sub_220BCD960();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_220B8B330(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 52);

  *(v2 + v4) = a1;
  return result;
}

uint64_t sub_220B8B484@<X0>(uint64_t a1@<X8>)
{
  sub_220B8ABD8(a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF77278);
  sub_220BCD310();
  v2 = sub_220BCD440();
  v4 = v3;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF77A10);
  v6 = (a1 + *(result + 36));
  *v6 = v7;
  v6[1] = v8;
  v6[2] = v9;
  v6[3] = v10;
  v6[4] = v2;
  v6[5] = v4;
  return result;
}

uint64_t sub_220B8B544@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF77AA8);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v16 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF77B58);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v16 - v12;
  sub_220B8B734(&v16 - v12);
  sub_220B8BC44(v7);
  sub_220B462DC(v13, v11, &qword_27CF77B58);
  sub_220B462DC(v7, v5, &qword_27CF77AA8);
  sub_220B462DC(v11, a1, &qword_27CF77B58);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF77B60);
  sub_220B462DC(v5, a1 + *(v14 + 48), &qword_27CF77AA8);
  sub_220B463F4(v7, &qword_27CF77AA8);
  sub_220B463F4(v13, &qword_27CF77B58);
  sub_220B463F4(v5, &qword_27CF77AA8);
  return sub_220B463F4(v11, &qword_27CF77B58);
}

uint64_t sub_220B8B734@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF77B68);
  v42 = *(v2 - 8);
  v43 = v2;
  MEMORY[0x28223BE20](v2);
  v4 = &v40 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF76C90);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v8 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v40 - v10;
  MEMORY[0x28223BE20](v9);
  v13 = &v40 - v12;
  v14 = sub_220BCBF80();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v40 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_220B8CCC4(v13);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    sub_220B463F4(v13, &qword_27CF76C90);
    v18 = 1;
    v19 = v43;
  }

  else
  {
    (*(v15 + 32))(v17, v13, v14);
    (*(v15 + 16))(v11, v17, v14);
    (*(v15 + 56))(v11, 0, 1, v14);
    sub_220B462DC(v11, v8, &qword_27CF76C90);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF77B70);
    v41 = a1;
    sub_220B8FFD8();
    sub_220BCC580();
    sub_220B463F4(v11, &qword_27CF76C90);
    v20 = &v4[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF77B90) + 36)];
    *v20 = 0;
    *(v20 + 4) = 257;
    v21 = &v4[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF77B98) + 36)];
    sub_220B8DBB4(v21);
    v22 = sub_220BCD460();
    v24 = v23;
    v25 = (v21 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF77BA0) + 36));
    *v25 = v22;
    v25[1] = v24;
    type metadata accessor for TipSpotlightView();
    sub_220BCD930();
    sub_220BCD460();
    sub_220BCC6C0();
    v26 = &v4[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF77BA8) + 36)];
    v27 = v45;
    *v26 = v44;
    *(v26 + 1) = v27;
    *(v26 + 2) = v46;
    v28 = &v4[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF77BB0) + 36)];
    v29 = *(sub_220BCC870() + 20);
    v30 = *MEMORY[0x277CE0118];
    v31 = sub_220BCCAC0();
    v32 = v30;
    a1 = v41;
    (*(*(v31 - 8) + 104))(&v28[v29], v32, v31);
    __asm { FMOV            V0.2D, #10.0 }

    *v28 = _Q0;
    *&v28[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF76C88) + 36)] = 256;
    v38 = v43;
    sub_220B8A328(&v4[*(v43 + 52)]);
    (*(v15 + 8))(v17, v14);
    sub_220B46540(v4, a1, &qword_27CF77B68);
    v18 = 0;
    v19 = v38;
  }

  return (*(v42 + 56))(a1, v18, 1, v19);
}

__n128 sub_220B8BC44@<Q0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v109 = a1;
  v3 = sub_220BCC070();
  v107 = *(v3 - 8);
  v108 = v3;
  MEMORY[0x28223BE20](v3);
  v106 = &v81 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_220BCC5A0();
  v6 = *(v5 - 8);
  v103 = v5;
  v104 = v6;
  MEMORY[0x28223BE20](v5);
  v102 = &v81 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for TipSpotlightView();
  v9 = *(v8 - 8);
  v105 = v8 - 8;
  v93 = v9;
  v91 = *(v9 + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v87 = &v81 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_220BCC5C0();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v81 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v81 - v16;
  v18 = sub_220BCD4D0();
  v85 = *(v18 - 8);
  v86 = v18;
  MEMORY[0x28223BE20](v18);
  v84 = &v81 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF77AF8) - 8;
  MEMORY[0x28223BE20](v83);
  v21 = &v81 - v20;
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF77AD8) - 8;
  MEMORY[0x28223BE20](v89);
  v88 = &v81 - v22;
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF77AC0);
  MEMORY[0x28223BE20](v111);
  v90 = &v81 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF77AB8);
  v25 = *(v24 - 8);
  v96 = v24;
  v97 = v25;
  MEMORY[0x28223BE20](v24);
  v92 = &v81 - v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF77AB0);
  v28 = *(v27 - 8);
  v98 = v27;
  v99 = v28;
  MEMORY[0x28223BE20](v27);
  v94 = &v81 - v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF77BC8);
  v100 = *(v30 - 8);
  v101 = v30;
  MEMORY[0x28223BE20](v30);
  v95 = &v81 - v31;
  v82 = sub_220BCCB20();
  v128 = 0;
  sub_220B8DEA0(v1, &v113);
  v139 = v123;
  v140 = v124;
  v141 = v125;
  v135 = v119;
  v136 = v120;
  v137 = v121;
  v138 = v122;
  v131 = v115;
  v132 = v116;
  v133 = v117;
  v134 = v118;
  v129 = v113;
  v130 = v114;
  v143[10] = v123;
  v143[11] = v124;
  v143[12] = v125;
  v143[6] = v119;
  v143[7] = v120;
  v143[8] = v121;
  v143[9] = v122;
  v143[2] = v115;
  v143[3] = v116;
  v143[4] = v117;
  v143[5] = v118;
  v142 = v126;
  v144 = v126;
  v143[0] = v113;
  v143[1] = v114;
  sub_220B462DC(&v129, &v112, &qword_27CF77BD0);
  sub_220B463F4(v143, &qword_27CF77BD0);
  *(&v127[10] + 7) = v139;
  *(&v127[11] + 7) = v140;
  *(&v127[12] + 7) = v141;
  *(&v127[6] + 7) = v135;
  *(&v127[7] + 7) = v136;
  *(&v127[8] + 7) = v137;
  *(&v127[9] + 7) = v138;
  *(&v127[2] + 7) = v131;
  *(&v127[3] + 7) = v132;
  *(&v127[4] + 7) = v133;
  *(&v127[5] + 7) = v134;
  *(v127 + 7) = v129;
  *(&v127[13] + 7) = v142;
  *(&v127[1] + 7) = v130;
  v32 = v128;
  v33 = v17;
  v110 = v1;
  sub_220B8A328(v17);
  v34 = v15;
  v35 = v11;
  (*(v12 + 104))(v15, *MEMORY[0x277CDF3C0], v11);
  v36 = v33;
  LOBYTE(v15) = sub_220BCC5B0();
  v37 = *(v12 + 8);
  v37(v34, v35);
  v37(v36, v35);
  v38 = v84;
  v39 = v85;
  v40 = MEMORY[0x277CE13B8];
  if ((v15 & 1) == 0)
  {
    v40 = MEMORY[0x277CE13B0];
  }

  v41 = v86;
  (*(v85 + 104))(v84, *v40, v86);
  (*(v39 + 32))(&v21[*(v83 + 44)], v38, v41);
  v42 = v127[11];
  *(v21 + 177) = v127[10];
  *(v21 + 193) = v42;
  *(v21 + 209) = v127[12];
  *(v21 + 14) = *(&v127[12] + 15);
  v43 = v127[7];
  *(v21 + 113) = v127[6];
  *(v21 + 129) = v43;
  v44 = v127[9];
  *(v21 + 145) = v127[8];
  *(v21 + 161) = v44;
  v45 = v127[3];
  *(v21 + 49) = v127[2];
  *(v21 + 65) = v45;
  v46 = v127[5];
  *(v21 + 81) = v127[4];
  *(v21 + 97) = v46;
  v47 = v127[1];
  *(v21 + 17) = v127[0];
  *v21 = v82;
  *(v21 + 1) = 0x4008000000000000;
  v21[16] = v32;
  *(v21 + 33) = v47;
  v48 = v87;
  sub_220B90430(v2, v87, type metadata accessor for TipSpotlightView);
  v49 = (*(v93 + 80) + 16) & ~*(v93 + 80);
  v50 = swift_allocObject();
  sub_220B9009C(v48, v50 + v49);
  v51 = sub_220BCD460();
  v53 = v52;
  v54 = v21;
  v55 = v88;
  sub_220B46540(v54, v88, &qword_27CF77AF8);
  v56 = (v55 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF77AE8) + 36));
  *v56 = sub_220B96260;
  v56[1] = 0;
  v56[2] = v51;
  v56[3] = v53;
  v57 = swift_allocObject();
  *(v57 + 16) = sub_220B90100;
  *(v57 + 24) = v50;
  v58 = (v55 + *(v89 + 44));
  *v58 = sub_220B905B0;
  v58[1] = v57;
  v59 = v110;
  sub_220B90430(v110, v48, type metadata accessor for TipSpotlightView);
  v60 = swift_allocObject();
  sub_220B9009C(v48, v60 + v49);
  v61 = v90;
  sub_220B46540(v55, v90, &qword_27CF77AD8);
  v62 = (v61 + *(v111 + 36));
  *v62 = sub_220B90178;
  v62[1] = v60;
  v62[2] = 0;
  v62[3] = 0;
  v63 = v102;
  sub_220B8A530(v102);
  sub_220B90430(v59, v48, type metadata accessor for TipSpotlightView);
  v64 = swift_allocObject();
  sub_220B9009C(v48, v64 + v49);
  v65 = sub_220B8F960();
  v66 = sub_220B90498(&qword_27CF77260, MEMORY[0x277CDD6C8]);
  v67 = v92;
  v68 = v111;
  v69 = v103;
  sub_220BCD130();

  (*(v104 + 8))(v63, v69);
  sub_220B463F4(v61, &qword_27CF77AC0);
  *&v113 = v68;
  *(&v113 + 1) = v69;
  *&v114 = v65;
  *(&v114 + 1) = v66;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v71 = v94;
  v72 = v96;
  sub_220BCD050();
  (*(v97 + 8))(v67, v72);
  sub_220BCD950();
  v73 = v106;
  sub_220BCC060();
  *&v113 = v72;
  *(&v113 + 1) = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v74 = v95;
  v75 = v98;
  sub_220BCD0A0();
  (*(v107 + 8))(v73, v108);
  (*(v99 + 8))(v71, v75);
  sub_220BCD470();
  sub_220BCC880();
  v76 = v109;
  (*(v100 + 32))(v109, v74, v101);
  v77 = v76 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF77AA8) + 36);
  v78 = v118;
  *(v77 + 64) = v117;
  *(v77 + 80) = v78;
  *(v77 + 96) = v119;
  v79 = v114;
  *v77 = v113;
  *(v77 + 16) = v79;
  result = v116;
  *(v77 + 32) = v115;
  *(v77 + 48) = result;
  return result;
}

uint64_t sub_220B8C8A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>, double a5@<D1>)
{
  v10 = sub_220BCCA50();
  v36 = 1;
  sub_220B8CA78(a1, a2, &v29, a4, a5);
  v39 = v31;
  v40 = v32;
  v41 = v33;
  v42 = v34;
  v37 = v29;
  v38 = v30;
  v43[2] = v31;
  v43[3] = v32;
  v43[4] = v33;
  v43[5] = v34;
  v43[0] = v29;
  v43[1] = v30;
  sub_220B462DC(&v37, &v28, &qword_27CF77B20);
  sub_220B463F4(v43, &qword_27CF77B20);
  *&v35[39] = v39;
  *&v35[55] = v40;
  *&v35[71] = v41;
  *&v35[87] = v42;
  *&v35[7] = v37;
  *&v35[23] = v38;
  v11 = v36;
  LOBYTE(a2) = sub_220BCCD70();
  sub_220BCC590();
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  LOBYTE(v29) = 0;
  LOBYTE(a1) = sub_220BCCD90();
  result = sub_220BCC590();
  v21 = *&v35[32];
  *(a3 + 65) = *&v35[48];
  v22 = *&v35[80];
  *(a3 + 81) = *&v35[64];
  *(a3 + 97) = v22;
  v23 = *&v35[16];
  *(a3 + 17) = *v35;
  *(a3 + 33) = v23;
  *a3 = v10;
  *(a3 + 8) = 0;
  *(a3 + 16) = v11;
  *(a3 + 112) = *&v35[95];
  *(a3 + 49) = v21;
  *(a3 + 120) = a2;
  *(a3 + 128) = v13;
  *(a3 + 136) = v15;
  *(a3 + 144) = v17;
  *(a3 + 152) = v19;
  *(a3 + 160) = 0;
  *(a3 + 168) = a1;
  *(a3 + 176) = v24;
  *(a3 + 184) = v25;
  *(a3 + 192) = v26;
  *(a3 + 200) = v27;
  *(a3 + 208) = 0;
  return result;
}

uint64_t sub_220B8CA78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>, double a5@<D1>)
{
  v10 = sub_220BCD280();
  v11 = sub_220BCCE20();
  KeyPath = swift_getKeyPath();
  v13 = sub_220BCD1D0();
  v14 = swift_allocObject();
  *(v14 + 16) = a1;
  *(v14 + 24) = a2;
  *(v14 + 32) = a4;
  *(v14 + 40) = a5;

  v15 = sub_220BCD460();
  v17 = v16;
  v18 = swift_allocObject();
  *(v18 + 16) = sub_220B8FF74;
  *(v18 + 24) = v14;
  *&v31 = v10;
  *(&v31 + 1) = KeyPath;
  *&v32 = v11;
  *(&v32 + 1) = v13;
  v33 = sub_220B96260;
  v34 = 0;
  *&v35 = v15;
  *(&v35 + 1) = v17;
  v27 = v31;
  v28 = v32;
  v29 = sub_220B96260;
  v30 = v35;
  v36[0] = v10;
  v36[1] = KeyPath;
  v36[2] = v11;
  v36[3] = v13;
  v36[4] = sub_220B96260;
  v36[5] = 0;
  v36[6] = v15;
  v36[7] = v17;
  sub_220B462DC(&v31, v39, &qword_27CF77B28);
  sub_220B463F4(v36, &qword_27CF77B28);
  v26 = 1;
  v37[0] = v27;
  v37[1] = v28;
  v37[2] = sub_220B96260;
  v37[3] = v30;
  *&v38 = sub_220B65A14;
  *(&v38 + 1) = v18;
  *&v25[55] = v30;
  *&v25[23] = v28;
  *&v25[39] = sub_220B96260;
  *&v25[7] = v27;
  *&v25[71] = v38;
  *a3 = 0;
  *(a3 + 8) = 1;
  v19 = *v25;
  *(a3 + 25) = *&v25[16];
  *(a3 + 9) = v19;
  v20 = *&v25[32];
  v21 = *&v25[48];
  v22 = *&v25[64];
  *(a3 + 88) = *&v25[79];
  *(a3 + 73) = v22;
  *(a3 + 57) = v21;
  *(a3 + 41) = v20;
  v39[2] = v29;
  v39[3] = v30;
  v39[0] = v27;
  v39[1] = v28;
  v40 = sub_220B65A14;
  v41 = v18;
  sub_220B462DC(v37, &v24, &qword_27CF77B30);
  return sub_220B463F4(v39, &qword_27CF77B30);
}

uint64_t sub_220B8CCC4@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF76C90);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v26 - v6;
  v8 = sub_220BCC5C0();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v26 - v13;
  sub_220B8A328(&v26 - v13);
  (*(v9 + 104))(v12, *MEMORY[0x277CDF3D0], v8);
  v15 = sub_220BCC5B0();
  v16 = *(v9 + 8);
  v16(v12, v8);
  v16(v14, v8);
  v17 = sub_220B8A1BC();
  v18 = v17;
  if (v15)
  {
    v19 = [v17 thumbnailURL];

    if (v19)
    {
      sub_220BCBF30();

      v20 = 0;
    }

    else
    {
      v20 = 1;
    }

    v23 = sub_220BCBF80();
    (*(*(v23 - 8) + 56))(v7, v20, 1, v23);
  }

  else
  {
    v21 = [v17 darkThumbnailURL];

    if (v21)
    {
      sub_220BCBF30();

      v22 = 0;
    }

    else
    {
      v22 = 1;
    }

    v24 = sub_220BCBF80();
    (*(*(v24 - 8) + 56))(v5, v22, 1, v24);
    v7 = v5;
  }

  return sub_220B46540(v7, a1, &qword_27CF76C90);
}

uint64_t sub_220B8CFAC(uint64_t a1)
{
  v28 = *(a1 + 16);
  if (!v28)
  {
    return 1;
  }

  v1 = 0;
  v2 = a1 + 32;
  v27 = a1 + 32;
LABEL_4:
  v3 = *(v2 + 8 * v1);
  v29 = v1 + 1;
  v4 = 1 << *(v3 + 32);
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  else
  {
    v5 = -1;
  }

  v6 = v5 & *(v3 + 64);
  v7 = (v4 + 63) >> 6;

  v8 = 0;
  while (v6)
  {
    v9 = v8;
LABEL_19:
    v12 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v13 = v12 | (v9 << 6);
    v14 = (*(v3 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    sub_220B506E4(*(v3 + 56) + 32 * v13, v32);
    *&v33 = v16;
    *(&v33 + 1) = v15;
    sub_220B4F8A4(v32, &v34);

LABEL_20:
    v36 = v33;
    v37[0] = v34;
    v37[1] = v35;
    v17 = *(&v33 + 1);
    if (!*(&v33 + 1))
    {

      v1 = v29;
      v2 = v27;
      if (v29 == v28)
      {
        return 1;
      }

      goto LABEL_4;
    }

    v18 = v36;
    sub_220B4F8A4(v37, &v33);
    if (sub_220BCDBA0() == v18 && v19 == v17)
    {

      goto LABEL_25;
    }

    v20 = sub_220BCE130();

    if (v20)
    {
LABEL_25:

      sub_220B506E4(&v33, v32);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF77BF8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF77A30);
      if ((swift_dynamicCast() & 1) == 0)
      {
        goto LABEL_8;
      }

      v21 = (sub_220B8CFAC)();

      __swift_destroy_boxed_opaque_existential_1(&v33);
      if ((v21 & 1) == 0)
      {
        goto LABEL_41;
      }
    }

    else
    {
      if (sub_220BCDBA0() == v18 && v22 == v17)
      {
      }

      else
      {
        v23 = sub_220BCE130();

        if ((v23 & 1) == 0)
        {
          goto LABEL_8;
        }
      }

      sub_220B506E4(&v33, v32);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF77BF8);
      if (swift_dynamicCast())
      {
        if (v30 == sub_220BCDBA0() && v31 == v24)
        {
          goto LABEL_40;
        }

        v25 = sub_220BCE130();

        __swift_destroy_boxed_opaque_existential_1(&v33);
        if (v25)
        {
          goto LABEL_41;
        }
      }

      else
      {
LABEL_8:
        __swift_destroy_boxed_opaque_existential_1(&v33);
      }
    }
  }

  if (v7 <= v8 + 1)
  {
    v10 = v8 + 1;
  }

  else
  {
    v10 = v7;
  }

  v11 = v10 - 1;
  while (1)
  {
    v9 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v9 >= v7)
    {
      v6 = 0;
      v34 = 0u;
      v35 = 0u;
      v8 = v11;
      v33 = 0u;
      goto LABEL_20;
    }

    v6 = *(v3 + 64 + 8 * v9);
    ++v8;
    if (v6)
    {
      v8 = v9;
      goto LABEL_19;
    }
  }

  __break(1u);
LABEL_40:

  __swift_destroy_boxed_opaque_existential_1(&v33);
LABEL_41:

  return 0;
}

double sub_220B8D374@<D0>(_OWORD *a1@<X8>)
{
  v81 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF76F40);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = v72 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF76C90);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v72 - v6;
  v8 = type metadata accessor for ConstellationContentAttributes(0);
  v9 = *(v8 - 1);
  MEMORY[0x28223BE20](v8);
  v11 = v72 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for TipSpotlightView();
  v13 = *(v12 + 52);
  v14 = *(v1 + v13);
  if (v14 && (v15 = v12, (sub_220B8CFAC(*(v1 + v13)) & 1) != 0))
  {
    v80 = [objc_opt_self() preferredFontForTextStyle_];
    v79 = sub_220BCD200();
    v16 = (v1 + *(v15 + 32));
    v18 = *v16;
    v17 = v16[1];
    v74 = v18;
    *&v87 = v18;
    *(&v87 + 1) = v17;
    v73 = v17;
    v72[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF77290);
    sub_220BCD2F0();
    v76 = v4;
    v19 = v82;
    v75 = v7;
    v20 = v8[15];
    sub_220BCD950();
    sub_220BCC060();
    v21 = sub_220BCC070();
    (*(*(v21 - 8) + 56))(&v11[v20], 0, 1, v21);
    v22 = v79;
    *v11 = v80;
    *(v11 + 1) = v22;
    *(v11 + 1) = 0u;
    *(v11 + 2) = 0u;
    *(v11 + 3) = 0u;
    *(v11 + 8) = 4;
    *(v11 + 9) = 0x4024000000000000;
    v11[80] = 1;
    *(v11 + 11) = v19;
    *(v11 + 12) = 4;
    v23 = &v11[v8[16]];
    *v23 = 1;
    v23[8] = 0;
    v11[v8[17]] = 1;
    *(v11 + 81) = 257;
    v80 = sub_220B79E88(v14);
    v24 = sub_220BCD950();
    v77 = v25;
    v78 = v24;
    v26 = sub_220BCBF80();
    v27 = v75;
    (*(*(v26 - 8) + 56))(v75, 1, 1, v26);
    v28 = v76;
    sub_220B90430(v11, v76, type metadata accessor for ConstellationContentAttributes);
    (*(v9 + 56))(v28, 0, 1, v8);
    v29 = (v1 + *(v15 + 36));
    v31 = v29[1];
    v32 = v29[2];
    *&v87 = *v29;
    v30 = v87;
    *(&v87 + 1) = v31;
    *&v88 = v32;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF77278);
    sub_220BCD2F0();
    v33 = v82;
    v34 = v83;
    *&v87 = v30;
    *(&v87 + 1) = v31;
    *&v88 = v32;
    sub_220BCD2F0();
    v35 = v82;
    type metadata accessor for ConstellationContentParser(0);
    swift_allocObject();
    sub_220B85EDC();
    sub_220B90498(&qword_2812C0F48, type metadata accessor for ConstellationContentParser);
    v79 = sub_220BCC7A0();
    v37 = v36;
    v38 = (v36 + OBJC_IVAR____TtC6TipsUI26ConstellationContentParser_language);
    v39 = v77;
    *v38 = v78;
    v38[1] = v39;

    v40 = OBJC_IVAR____TtC6TipsUI26ConstellationContentParser_assetsBaseURL;
    swift_beginAccess();
    sub_220B79B30(v27, v37 + v40, &qword_27CF76C90);
    swift_endAccess();
    v41 = *(v37 + OBJC_IVAR____TtC6TipsUI26ConstellationContentParser_assetFileInfoManager);
    *(v37 + OBJC_IVAR____TtC6TipsUI26ConstellationContentParser_assetFileInfoManager) = 0;

    v42 = OBJC_IVAR____TtC6TipsUI26ConstellationContentParser_attributes;
    swift_beginAccess();
    sub_220B79B30(v28, v37 + v42, &qword_27CF76F40);
    swift_endAccess();
    v43 = (v37 + OBJC_IVAR____TtC6TipsUI26ConstellationContentParser_viewSize);
    *v43 = v33;
    v43[1] = v34;
    v44 = v37 + OBJC_IVAR____TtC6TipsUI26ConstellationContentParser_maxWidth;
    *v44 = v35;
    *(v44 + 8) = 0;
    *(v37 + OBJC_IVAR____TtC6TipsUI26ConstellationContentParser_textIsSelectable) = 1;
    *(v37 + OBJC_IVAR____TtC6TipsUI26ConstellationContentParser_delegate + 8) = 0;
    swift_unknownObjectWeakAssign();
    *(v37 + OBJC_IVAR____TtC6TipsUI26ConstellationContentParser_rawContent) = v80;

    sub_220B8073C();
    sub_220B463F4(v28, &qword_27CF76F40);
    sub_220B463F4(v27, &qword_27CF76C90);
    v45 = sub_220B8A1BC();
    v46 = [v45 uniqueIdentifier];

    if (v46)
    {
      v47 = sub_220BCDBA0();
      v49 = v48;
    }

    else
    {
      *&v87 = v74;
      *(&v87 + 1) = v73;
      sub_220BCD2F0();
      v47 = sub_220BCE120();
      v49 = v67;
    }

    v82 = v79;
    v83 = v37;
    v84 = v47;
    v85 = v49;
    v86 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF77BE8);
    sub_220B43830(&qword_27CF77BF0, &qword_27CF77BE8);
    sub_220BCCC30();
    sub_220B5752C(v11);
  }

  else
  {
    v50 = sub_220B8A1BC();
    v51 = [v50 contentDescription];

    if (v51)
    {
      v52 = sub_220BCDBA0();
      v54 = v53;
    }

    else
    {
      v52 = 0;
      v54 = 0xE000000000000000;
    }

    *&v87 = v52;
    *(&v87 + 1) = v54;
    sub_220B43454();
    v55 = sub_220BCCF80();
    v57 = v56;
    v59 = v58;
    if (qword_27CF76960 != -1)
    {
      swift_once();
    }

    v60 = sub_220BCCF50();
    v62 = v61;
    v64 = v63;
    v66 = v65;
    sub_220B5E8DC(v55, v57, v59 & 1);

    v82 = v60;
    v83 = v62;
    v84 = v64 & 1;
    v85 = v66;
    v86 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF77BE8);
    sub_220B43830(&qword_27CF77BF0, &qword_27CF77BE8);
    sub_220BCCC30();
  }

  result = *&v87;
  v69 = v88;
  v70 = v89;
  v71 = v81;
  *v81 = v87;
  v71[1] = v69;
  *(v71 + 32) = v70;
  return result;
}

uint64_t sub_220B8DBB4@<X0>(uint64_t a1@<X8>)
{
  v22[1] = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF77BB8);
  MEMORY[0x28223BE20](v1);
  v3 = v22 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF76CC0);
  MEMORY[0x28223BE20](v4);
  v6 = (v22 - v5);
  v7 = sub_220BCC5C0();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = v22 - v12;
  sub_220B8A328(v22 - v12);
  (*(v8 + 104))(v11, *MEMORY[0x277CDF3D0], v7);
  v14 = sub_220BCC5B0();
  v15 = *(v8 + 8);
  v15(v11, v7);
  v15(v13, v7);
  if (v14)
  {
    v16 = MEMORY[0x277CE13B0];
    sub_220BCD1A0();
  }

  else
  {
    v16 = MEMORY[0x277CE13B8];
    sub_220BCD1C0();
  }

  v17 = sub_220BCD1E0();

  v18 = *(v4 + 36);
  v19 = *v16;
  v20 = sub_220BCD4D0();
  (*(*(v20 - 8) + 104))(v6 + v18, v19, v20);
  *v6 = v17;
  sub_220B462DC(v6, v3, &qword_27CF76CC0);
  swift_storeEnumTagMultiPayload();
  sub_220B461BC();
  sub_220BCCC30();
  return sub_220B463F4(v6, &qword_27CF76CC0);
}

uint64_t sub_220B8DEA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_220B8A1BC();
  v5 = [v4 displayName];

  if (v5)
  {
    v6 = sub_220BCDBA0();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0xE000000000000000;
  }

  *&v103 = v6;
  *(&v103 + 1) = v8;
  sub_220B43454();
  v9 = sub_220BCCF80();
  v11 = v10;
  v13 = v12;
  if (qword_27CF76958 != -1)
  {
    swift_once();
  }

  v14 = sub_220BCCF50();
  v68 = v15;
  v69 = v14;
  v17 = v16;
  v70 = v18;
  sub_220B5E8DC(v9, v11, v13 & 1);

  v67 = sub_220BCCD90();
  v19 = type metadata accessor for TipSpotlightView();
  v20 = (a1 + v19[10]);
  v21 = *(v20 + 2);
  v103 = *v20;
  v104 = v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF77278);
  sub_220BCD2F0();
  sub_220BCC590();
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v66 = v17 & 1;
  v127 = v17 & 1;
  v124 = 0;
  v103 = *(a1 + v19[7]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF77290);
  sub_220BCD2F0();
  v65 = v82;
  KeyPath = swift_getKeyPath();
  v128 = 0;
  v64 = sub_220BCCCC0();
  sub_220B8D374(&v103);
  v56 = *(&v103 + 1);
  v57 = v103;
  v55 = v104;
  v61 = v105;
  v30 = v106;
  v82 = *(a1 + v19[8]);
  sub_220BCD2F0();
  v60 = v93[0];
  v59 = swift_getKeyPath();
  v62 = v30;
  LOBYTE(v82) = v30;
  LOBYTE(v93[0]) = 0;
  v58 = sub_220BCCCE0();
  v31 = 0;
  v32 = 0;
  v33 = 0;
  v34 = 0;
  if (sub_220B8B0C0() == 1)
  {
    v35 = sub_220B8A1BC();
    v36 = [v35 kind];

    if (v36)
    {
      v37 = sub_220BCDBA0();
      v39 = v38;
    }

    else
    {
      v37 = 0;
      v39 = 0xE000000000000000;
    }

    *&v103 = v37;
    *(&v103 + 1) = v39;
    v40 = sub_220BCCF80();
    v42 = v41;
    v44 = v43;
    if (qword_27CF76968 != -1)
    {
      swift_once();
    }

    v45 = sub_220BCCF50();
    v47 = v46;
    v49 = v48;
    sub_220B5E8DC(v40, v42, v44 & 1);

    LODWORD(v103) = sub_220BCCCD0();
    v31 = sub_220BCCF30();
    v32 = v50;
    v52 = v51;
    v34 = v53;
    sub_220B5E8DC(v45, v47, v49 & 1);

    v33 = v52 & 1;
    sub_220B5E890(v31, v32, v52 & 1);
  }

  *&v82 = v69;
  *(&v82 + 1) = v68;
  LOBYTE(v83) = v66;
  *(&v83 + 1) = *v126;
  DWORD1(v83) = *&v126[3];
  *(&v83 + 1) = v70;
  LOBYTE(v84) = v67;
  *(&v84 + 1) = *v125;
  DWORD1(v84) = *&v125[3];
  *(&v84 + 1) = v23;
  *&v85 = v25;
  *(&v85 + 1) = v27;
  *&v86 = v29;
  BYTE8(v86) = 0;
  *(&v86 + 9) = *v129;
  HIDWORD(v86) = *&v129[3];
  *v87 = KeyPath;
  *&v87[8] = v65;
  v87[16] = 0;
  *&v87[17] = v130;
  v87[19] = v131;
  *&v87[20] = v64;
  *&v87[24] = 256;
  v71 = v82;
  v72 = v83;
  *&v76[10] = *&v87[10];
  v75 = v86;
  *v76 = *v87;
  v73 = v84;
  v74 = v85;
  *&v88 = v57;
  *(&v88 + 1) = v56;
  *&v89 = v55;
  *(&v89 + 1) = v61;
  LOBYTE(v90) = v62;
  DWORD1(v90) = *&v121[3];
  *(&v90 + 1) = *v121;
  *(&v90 + 1) = v59;
  *&v91 = v60;
  BYTE8(v91) = 0;
  BYTE11(v91) = v123;
  *(&v91 + 9) = v122;
  HIDWORD(v91) = v58;
  v92 = 256;
  LOWORD(v81) = 256;
  v79 = v90;
  v80 = v91;
  v77 = v88;
  v78 = v89;
  sub_220B462DC(&v82, &v103, &qword_27CF77BD8);
  sub_220B462DC(&v88, &v103, &qword_27CF77BE0);
  sub_220B65C50(v31, v32, v33, v34);
  sub_220B65C94(v31, v32, v33, v34);
  *(a2 + 128) = v78;
  *(a2 + 144) = v79;
  *(a2 + 160) = v80;
  *(a2 + 64) = v75;
  *(a2 + 80) = *v76;
  *(a2 + 96) = *&v76[16];
  *(a2 + 112) = v77;
  *a2 = v71;
  *(a2 + 16) = v72;
  *(a2 + 32) = v73;
  *(a2 + 48) = v74;
  *(a2 + 176) = v81;
  *(a2 + 184) = v31;
  *(a2 + 192) = v32;
  *(a2 + 200) = v33;
  *(a2 + 208) = v34;
  sub_220B65C94(v31, v32, v33, v34);
  v93[0] = v57;
  v93[1] = v56;
  v93[2] = v55;
  v93[3] = v61;
  v94 = v62;
  *v95 = *v121;
  *&v95[3] = *&v121[3];
  v96 = v59;
  v97 = v60;
  v98 = 0;
  v99 = v122;
  v100 = v123;
  v101 = v58;
  v102 = 256;
  sub_220B463F4(v93, &qword_27CF77BE0);
  *&v103 = v69;
  *(&v103 + 1) = v68;
  LOBYTE(v104) = v66;
  *(&v104 + 1) = *v126;
  HIDWORD(v104) = *&v126[3];
  v105 = v70;
  v106 = v67;
  *v107 = *v125;
  *&v107[3] = *&v125[3];
  v108 = v23;
  v109 = v25;
  v110 = v27;
  v111 = v29;
  v112 = 0;
  *&v113[3] = *&v129[3];
  *v113 = *v129;
  v114 = KeyPath;
  v115 = v65;
  v116 = 0;
  v118 = v131;
  v117 = v130;
  v119 = v64;
  v120 = 256;
  return sub_220B463F4(&v103, &qword_27CF77BD8);
}

uint64_t sub_220B8E5AC(double a1, double a2)
{
  type metadata accessor for TipSpotlightView();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF77278);
  sub_220BCD300();
  sub_220BCD2F0();
  return sub_220B8E664(a1, a2);
}

uint64_t sub_220B8E664(double a1, double a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF77280);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v49 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF77288);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v49 - v10;
  v12 = sub_220BCCEF0();
  result = MEMORY[0x28223BE20](v12);
  v16 = &v49 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 != 0.0 || a2 != 0.0)
  {
    v61 = v14;
    v59 = type metadata accessor for TipSpotlightView();
    v17 = *(v59 + 44);
    if (qword_27CF76970 != -1)
    {
      swift_once();
    }

    v18 = sub_220BCCEC0();
    v19 = *(v18 - 8);
    v54 = *(v19 + 56);
    v55 = v18;
    v53 = v19 + 56;
    v54(v11, 1, 1);
    v20 = sub_220BCCF60();
    v21 = *(v20 - 8);
    v22 = *(v21 + 56);
    v51 = v20;
    v50 = v22;
    v49 = v21 + 56;
    (v22)(v8, 1, 1);
    v57 = v8;
    sub_220BCCEE0();
    v56 = v17;
    sub_220BCCED0();
    v24 = v23;
    v25 = *(v61 + 8);
    v61 += 8;
    v52 = v25;
    v25(v16, v12);
    v26 = sub_220B8A1BC();
    v27 = [v26 displayName];

    v60 = v3;
    if (v27)
    {
      v28 = sub_220BCDBA0();
      v30 = v29;
    }

    else
    {
      v28 = 0;
      v30 = 0xE000000000000000;
    }

    v58 = v12;
    *&v63 = v28;
    *(&v63 + 1) = v30;
    sub_220B43454();
    v31 = sub_220BCCF80();
    v33 = v32;
    v35 = v34;
    if (qword_27CF76958 != -1)
    {
      swift_once();
    }

    v36 = sub_220BCCF50();
    v38 = v37;
    v40 = v39;
    sub_220B5E8DC(v31, v33, v35 & 1);

    v42 = v59;
    v41 = v60;
    v43 = (v60 + *(v59 + 40));
    v44 = *(v43 + 2);
    v63 = *v43;
    v64 = v44;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF77278);
    sub_220BCD2F0();
    (v54)(v11, 1, 1, v55);
    v50(v57, 1, 1, v51);
    sub_220BCCEE0();
    sub_220BCCED0();
    v46 = v45;
    sub_220B5E8DC(v36, v38, v40 & 1);

    result = v52(v16, v58);
    v47 = round(v46 / v24);
    if ((*&v47 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v47 > -9.22337204e18)
    {
      if (v47 < 9.22337204e18)
      {
        v48 = v47;
        if (v47 >= 4)
        {
          v63 = *(v41 + *(v42 + 32));
          v62 = 1;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF77290);
          sub_220BCD300();
          v48 = 4;
          goto LABEL_17;
        }

        if (!__OFSUB__(4, v48))
        {
          v63 = *(v41 + *(v42 + 32));
          v62 = 4 - v48;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF77290);
          sub_220BCD300();
LABEL_17:
          v63 = *(v41 + *(v42 + 28));
          v62 = v48;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF77290);
          return sub_220BCD300();
        }

LABEL_22:
        __break(1u);
        return result;
      }

LABEL_21:
      __break(1u);
      goto LABEL_22;
    }

    __break(1u);
    goto LABEL_21;
  }

  return result;
}

uint64_t sub_220B8EC3C()
{
  type metadata accessor for TipSpotlightView();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF77278);
  sub_220BCD2F0();
  return sub_220B8E664(v1, v2);
}

uint64_t sub_220B8ECB0()
{
  v0 = sub_220BCCE40();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_220BCCDB0();
  (*(v1 + 104))(v3, *MEMORY[0x277CE0A10], v0);
  sub_220BCCE50();

  (*(v1 + 8))(v3, v0);
  v4 = sub_220BCCDC0();

  qword_27CF779D8 = v4;
  return result;
}

uint64_t sub_220B8EDD4()
{
  result = sub_220BCCDA0();
  qword_27CF779E0 = result;
  return result;
}

uint64_t sub_220B8EDF4()
{
  v0 = sub_220BCCE40();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_220BCCE60();
  (*(v1 + 104))(v3, *MEMORY[0x277CE0A10], v0);
  v4 = sub_220BCCE50();

  result = (*(v1 + 8))(v3, v0);
  qword_27CF779E8 = v4;
  return result;
}

uint64_t sub_220B8EF04()
{
  if (qword_27CF76958 != -1)
  {
    swift_once();
  }

  v0 = sub_220BCCF50();
  v2 = v1;
  v4 = v3;
  v6 = v5;

  qword_27CF779F0 = v0;
  *algn_27CF779F8 = v2;
  byte_27CF77A00 = v4 & 1;
  qword_27CF77A08 = v6;
  return result;
}

uint64_t sub_220B8EFE4(uint64_t a1)
{
  v2 = sub_220BCC5A0();
  MEMORY[0x28223BE20](v2);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_220BCC8E0();
}

void sub_220B8F138()
{
  sub_220B8F2DC();
  if (v0 <= 0x3F)
  {
    sub_220B8F344(319, &qword_2812C0A40, MEMORY[0x277CDF3E0], MEMORY[0x277CDF468]);
    if (v1 <= 0x3F)
    {
      sub_220B8F344(319, &qword_27CF771D8, MEMORY[0x277CDD6C8], MEMORY[0x277CDF468]);
      if (v2 <= 0x3F)
      {
        sub_220B65438();
        if (v3 <= 0x3F)
        {
          sub_220B8F344(319, &qword_27CF771F0, type metadata accessor for CGSize, MEMORY[0x277CE10B8]);
          if (v4 <= 0x3F)
          {
            sub_220BCCF10();
            if (v5 <= 0x3F)
            {
              sub_220BCD960();
              if (v6 <= 0x3F)
              {
                sub_220B8F3A8();
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

void sub_220B8F2DC()
{
  if (!qword_27CF77A18)
  {
    sub_220B55458(255, &qword_27CF77A20);
    v0 = sub_220BCC600();
    if (!v1)
    {
      atomic_store(v0, &qword_27CF77A18);
    }
  }
}

void sub_220B8F344(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_220B8F3A8()
{
  if (!qword_27CF77A28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CF77A30);
    v0 = sub_220BCDF10();
    if (!v1)
    {
      atomic_store(v0, &qword_27CF77A28);
    }
  }
}

unint64_t sub_220B8F40C()
{
  result = qword_27CF77A38;
  if (!qword_27CF77A38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CF77A10);
    sub_220B8F4C4();
    sub_220B43830(&qword_27CF77B10, &qword_27CF77B18);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF77A38);
  }

  return result;
}

unint64_t sub_220B8F4C4()
{
  result = qword_27CF77A40;
  if (!qword_27CF77A40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CF77A48);
    sub_220B8F548();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF77A40);
  }

  return result;
}

unint64_t sub_220B8F548()
{
  result = qword_27CF77A50;
  if (!qword_27CF77A50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CF77A58);
    sub_220B8F600();
    sub_220B8F744(&qword_27CF77A90, &qword_27CF77A98, &unk_220BD4118, sub_220B8F7C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF77A50);
  }

  return result;
}

unint64_t sub_220B8F600()
{
  result = qword_27CF77A60;
  if (!qword_27CF77A60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CF77A68);
    sub_220B8F68C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF77A60);
  }

  return result;
}

unint64_t sub_220B8F68C()
{
  result = qword_27CF77A70;
  if (!qword_27CF77A70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CF77A78);
    sub_220B43830(&qword_27CF77A80, &qword_27CF77A88);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF77A70);
  }

  return result;
}

uint64_t sub_220B8F744(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
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

unint64_t sub_220B8F7C8()
{
  result = qword_27CF77AA0;
  if (!qword_27CF77AA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CF77AA8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CF77AB0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CF77AB8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CF77AC0);
    sub_220BCC5A0();
    sub_220B8F960();
    sub_220B90498(&qword_27CF77260, MEMORY[0x277CDD6C8]);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF77AA0);
  }

  return result;
}

unint64_t sub_220B8F960()
{
  result = qword_27CF77AC8;
  if (!qword_27CF77AC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CF77AC0);
    sub_220B8F9EC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF77AC8);
  }

  return result;
}

unint64_t sub_220B8F9EC()
{
  result = qword_27CF77AD0;
  if (!qword_27CF77AD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CF77AD8);
    sub_220B8FAA4();
    sub_220B43830(&qword_2812C09A8, &qword_27CF77258);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF77AD0);
  }

  return result;
}

unint64_t sub_220B8FAA4()
{
  result = qword_27CF77AE0;
  if (!qword_27CF77AE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CF77AE8);
    sub_220B8FB5C();
    sub_220B43830(&qword_2812C09C0, &qword_27CF77250);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF77AE0);
  }

  return result;
}

unint64_t sub_220B8FB5C()
{
  result = qword_27CF77AF0;
  if (!qword_27CF77AF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CF77AF8);
    sub_220B43830(&qword_27CF77B00, &qword_27CF77B08);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF77AF0);
  }

  return result;
}

uint64_t sub_220B8FC40()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF77B88);
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v13 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF77BC0);
  MEMORY[0x28223BE20](v4);
  v6 = (&v13 - v5);
  v7 = sub_220BCD270();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_220BCC810())
  {
    (*(v8 + 104))(v10, *MEMORY[0x277CE0FE0], v7);
    v11 = sub_220BCD2B0();
    (*(v8 + 8))(v10, v7);
    *v6 = v11;
    swift_storeEnumTagMultiPayload();
    sub_220B43830(&qword_27CF77B80, &qword_27CF77B88);
    swift_retain_n();
    sub_220BCCC30();
  }

  else
  {
    sub_220BCC650();
    (*(v1 + 16))(v6, v3, v0);
    swift_storeEnumTagMultiPayload();
    sub_220B43830(&qword_27CF77B80, &qword_27CF77B88);
    sub_220BCCC30();
    return (*(v1 + 8))(v3, v0);
  }
}

unint64_t sub_220B8FFD8()
{
  result = qword_27CF77B78;
  if (!qword_27CF77B78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CF77B70);
    sub_220B43830(&qword_27CF77B80, &qword_27CF77B88);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF77B78);
  }

  return result;
}

void sub_220B90090(id a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

uint64_t sub_220B9009C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TipSpotlightView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_220B90100(double a1, double a2)
{
  type metadata accessor for TipSpotlightView();

  return sub_220B8E5AC(a1, a2);
}

uint64_t objectdestroy_27Tm()
{
  v1 = type metadata accessor for TipSpotlightView();
  v2 = *(*(v1 - 1) + 80);
  v3 = *(*(v1 - 1) + 64);
  v4 = (v2 + 16) & ~v2;
  v5 = v0 + v4;
  sub_220B90090(*(v0 + v4), *(v0 + v4 + 8));
  v6 = v1[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF76CE0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_220BCC5C0();
    (*(*(v7 - 8) + 8))(v5 + v6, v7);
  }

  else
  {
  }

  v8 = v1[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF771B8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_220BCC5A0();
    (*(*(v9 - 8) + 8))(v5 + v8, v9);
  }

  else
  {
  }

  v10 = v1[11];
  v11 = sub_220BCCF10();
  (*(*(v11 - 8) + 8))(v5 + v10, v11);
  v12 = v1[12];
  v13 = sub_220BCD960();
  (*(*(v13 - 8) + 8))(v5 + v12, v13);

  return MEMORY[0x2821FE8E8](v0, v4 + v3, v2 | 7);
}

uint64_t sub_220B90430(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_220B90498(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_220B904E0()
{
  result = qword_27CF77C10;
  if (!qword_27CF77C10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CF77C18);
    sub_220B43830(&qword_27CF77C20, &qword_27CF77C28);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF77C10);
  }

  return result;
}

uint64_t sub_220B905B4@<X0>(uint64_t a1@<X8>)
{
  result = sub_220BCD3C0();
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  return result;
}

uint64_t sub_220B90604()
{
  sub_220B487F0();
  sub_220BCC9E0();
  return v1;
}

uint64_t View.replayButtonVisibility(_:)()
{
  swift_getKeyPath();
  sub_220BCD000();
}

unint64_t sub_220B906CC()
{
  result = qword_27CF77C38;
  if (!qword_27CF77C38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CF77C30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF77C38);
  }

  return result;
}

id sub_220B907C0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_220B958AC(&qword_27CF77C48, type metadata accessor for CollectionsViewModel);
  sub_220BCC300();

  swift_beginAccess();
  v4 = *(v3 + 16);
  *a2 = v4;

  return v4;
}

id sub_220B908B8()
{
  swift_getKeyPath();
  sub_220B958AC(&qword_27CF77C48, type metadata accessor for CollectionsViewModel);
  sub_220BCC300();

  swift_beginAccess();
  v1 = *(v0 + 16);

  return v1;
}

uint64_t type metadata accessor for CollectionsViewModel()
{
  result = qword_27CF77C58;
  if (!qword_27CF77C58)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_220B909C8(void *a1)
{
  v2 = v1;
  swift_beginAccess();
  v4 = *(v1 + 16);
  type metadata accessor for TipsContentModel();
  v5 = v4;
  v6 = sub_220BCDED0();

  if (v6)
  {
    v7 = *(v2 + 16);
    *(v2 + 16) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_220B958AC(&qword_27CF77C48, type metadata accessor for CollectionsViewModel);
    sub_220BCC2F0();
  }
}

void sub_220B90B18(uint64_t a1, void *a2)
{
  swift_beginAccess();
  v4 = *(a1 + 16);
  *(a1 + 16) = a2;
  v5 = a2;
}

void (*sub_220B90B94(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
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
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC6TipsUI20CollectionsViewModel___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_220B958AC(&qword_27CF77C48, type metadata accessor for CollectionsViewModel);
  sub_220BCC300();

  *v4 = v1;
  swift_getKeyPath();
  sub_220BCC320();

  v4[7] = sub_220B90770();
  return sub_220B90CCC;
}

uint64_t sub_220B90CD8()
{
  swift_getKeyPath();
  sub_220B958AC(&qword_27CF77C48, type metadata accessor for CollectionsViewModel);
  sub_220BCC300();

  swift_beginAccess();
  v1 = *(v0 + 16);
  swift_getKeyPath();
  sub_220B958AC(&qword_2812C2180, type metadata accessor for TipsContentModel);
  v2 = v1;
  sub_220BCC300();

  v3 = OBJC_IVAR____TtC6TipsUI16TipsContentModel__collections;
  swift_beginAccess();
  v4 = *&v2[v3];

  return v4;
}

uint64_t sub_220B90E8C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_220B958AC(&qword_27CF77C48, type metadata accessor for CollectionsViewModel);
  sub_220BCC300();

  swift_beginAccess();
  v4 = *(v3 + 32);
  *a2 = *(v3 + 24);
  a2[1] = v4;
}

uint64_t sub_220B90F64()
{
  swift_getKeyPath();
  sub_220B958AC(&qword_27CF77C48, type metadata accessor for CollectionsViewModel);
  sub_220BCC300();

  swift_beginAccess();
  v1 = *(v0 + 24);

  return v1;
}

uint64_t sub_220B91028(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 32);
  if (v5)
  {
    if (a2)
    {
      v6 = *(v2 + 24) == a1 && v5 == a2;
      if (v6 || (sub_220BCE130() & 1) != 0)
      {
        goto LABEL_8;
      }
    }
  }

  else if (!a2)
  {
LABEL_8:
    *(v2 + 24) = a1;
    *(v2 + 32) = a2;
  }

  KeyPath = swift_getKeyPath();
  MEMORY[0x28223BE20](KeyPath);
  sub_220B958AC(&qword_27CF77C48, type metadata accessor for CollectionsViewModel);
  sub_220BCC2F0();
}

uint64_t sub_220B9118C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  *(a1 + 24) = a2;
  *(a1 + 32) = a3;
}

void (*sub_220B911F8(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
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
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC6TipsUI20CollectionsViewModel___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_220B958AC(&qword_27CF77C48, type metadata accessor for CollectionsViewModel);
  sub_220BCC300();

  *v4 = v1;
  swift_getKeyPath();
  sub_220BCC320();

  v4[7] = sub_220B90E3C();
  return sub_220B91330;
}

id sub_220B9138C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_220B958AC(&qword_27CF77C48, type metadata accessor for CollectionsViewModel);
  sub_220BCC300();

  swift_beginAccess();
  v4 = *(v3 + 40);
  *a2 = v4;

  return v4;
}

void sub_220B91458(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_220B91544(v1);
}

void *sub_220B91488()
{
  swift_getKeyPath();
  sub_220B958AC(&qword_27CF77C48, type metadata accessor for CollectionsViewModel);
  sub_220BCC300();

  swift_beginAccess();
  v1 = *(v0 + 40);
  v2 = v1;
  return v1;
}

void sub_220B91544(void *a1)
{
  v2 = v1;
  swift_beginAccess();
  v4 = *(v1 + 40);
  if (!v4)
  {
    if (!a1)
    {
      v8 = 0;
      goto LABEL_8;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_220B958AC(&qword_27CF77C48, type metadata accessor for CollectionsViewModel);
    sub_220BCC2F0();

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  sub_220B55458(0, &qword_2812C0930);
  v5 = v4;
  v6 = a1;
  v7 = sub_220BCDED0();

  if ((v7 & 1) == 0)
  {
    goto LABEL_6;
  }

  v8 = *(v2 + 40);
LABEL_8:
  *(v2 + 40) = a1;
}

void sub_220B916C8(uint64_t a1, void *a2)
{
  swift_beginAccess();
  v4 = *(a1 + 40);
  *(a1 + 40) = a2;
  v5 = a2;
}

void (*sub_220B91728(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
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
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC6TipsUI20CollectionsViewModel___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_220B958AC(&qword_27CF77C48, type metadata accessor for CollectionsViewModel);
  sub_220BCC300();

  *v4 = v1;
  swift_getKeyPath();
  sub_220BCC320();

  v4[7] = sub_220B9133C();
  return sub_220B91860;
}

id sub_220B918BC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_220B958AC(&qword_27CF77C48, type metadata accessor for CollectionsViewModel);
  sub_220BCC300();

  swift_beginAccess();
  v4 = *(v3 + 48);
  *a2 = v4;

  return v4;
}

void sub_220B91988(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_220B91A74(v1);
}

void *sub_220B919B8()
{
  swift_getKeyPath();
  sub_220B958AC(&qword_27CF77C48, type metadata accessor for CollectionsViewModel);
  sub_220BCC300();

  swift_beginAccess();
  v1 = *(v0 + 48);
  v2 = v1;
  return v1;
}

void sub_220B91A74(void *a1)
{
  v2 = v1;
  swift_beginAccess();
  v4 = *(v1 + 48);
  if (!v4)
  {
    if (!a1)
    {
      v8 = 0;
      goto LABEL_8;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_220B958AC(&qword_27CF77C48, type metadata accessor for CollectionsViewModel);
    sub_220BCC2F0();

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  sub_220B55458(0, &qword_2812C08B0);
  v5 = v4;
  v6 = a1;
  v7 = sub_220BCDED0();

  if ((v7 & 1) == 0)
  {
    goto LABEL_6;
  }

  v8 = *(v2 + 48);
LABEL_8:
  *(v2 + 48) = a1;
}

void sub_220B91BF8(uint64_t a1, void *a2)
{
  swift_beginAccess();
  v4 = *(a1 + 48);
  *(a1 + 48) = a2;
  v5 = a2;
}

void (*sub_220B91C58(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
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
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC6TipsUI20CollectionsViewModel___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_220B958AC(&qword_27CF77C48, type metadata accessor for CollectionsViewModel);
  sub_220BCC300();

  *v4 = v1;
  swift_getKeyPath();
  sub_220BCC320();

  v4[7] = sub_220B9186C();
  return sub_220B91D90;
}

uint64_t sub_220B91D9C()
{
  swift_getKeyPath();
  sub_220B958AC(&qword_27CF77C48, type metadata accessor for CollectionsViewModel);
  sub_220BCC300();

  return *(v0 + 56);
}

uint64_t sub_220B91E3C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_220B958AC(&qword_27CF77C48, type metadata accessor for CollectionsViewModel);
  sub_220BCC300();

  *a2 = *(v3 + 56);
  return result;
}

uint64_t sub_220B91EE4(uint64_t result)
{
  if (*(v1 + 56) == (result & 1))
  {
    *(v1 + 56) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_220B958AC(&qword_27CF77C48, type metadata accessor for CollectionsViewModel);
    sub_220BCC2F0();
  }

  return result;
}

id sub_220B91FF4()
{
  swift_getKeyPath();
  sub_220B958AC(&qword_27CF77C48, type metadata accessor for CollectionsViewModel);
  sub_220BCC300();

  swift_beginAccess();
  v1 = [*(*(v0 + 16) + OBJC_IVAR____TtC6TipsUI16TipsContentModel_appController) mainUserGuide];

  return v1;
}

uint64_t sub_220B920D8()
{
  v1 = v0;
  swift_getKeyPath();
  sub_220B958AC(&qword_27CF77C48, type metadata accessor for CollectionsViewModel);
  sub_220BCC300();

  swift_beginAccess();
  v2 = *(v0 + 16);
  swift_getKeyPath();
  sub_220B958AC(&qword_2812C2180, type metadata accessor for TipsContentModel);
  v3 = v2;
  sub_220BCC300();

  v4 = OBJC_IVAR____TtC6TipsUI16TipsContentModel__loading;
  swift_beginAccess();
  LOBYTE(v4) = v3[v4];

  if (v4)
  {
    v5 = 1;
  }

  else
  {
    swift_getKeyPath();
    sub_220BCC300();

    v6 = *(v1 + 16);
    swift_getKeyPath();
    v7 = v6;
    sub_220BCC300();

    v8 = OBJC_IVAR____TtC6TipsUI16TipsContentModel__hasLoaded;
    swift_beginAccess();
    LOBYTE(v8) = v7[v8];

    v5 = v8 ^ 1;
  }

  return v5 & 1;
}

BOOL sub_220B922EC()
{
  swift_getKeyPath();
  sub_220B958AC(&qword_27CF77C48, type metadata accessor for CollectionsViewModel);
  sub_220BCC300();

  swift_beginAccess();
  v1 = *(v0 + 16);
  swift_getKeyPath();
  sub_220B958AC(&qword_2812C2180, type metadata accessor for TipsContentModel);
  v2 = v1;
  sub_220BCC300();

  v3 = OBJC_IVAR____TtC6TipsUI16TipsContentModel__collections;
  swift_beginAccess();
  v4 = *&v2[v3];

  if (v4 >> 62)
  {
    v5 = sub_220BCDF70();
  }

  else
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return v5 == 0;
}

BOOL sub_220B92484()
{
  swift_getKeyPath();
  sub_220B958AC(&qword_27CF77C48, type metadata accessor for CollectionsViewModel);
  sub_220BCC300();

  swift_beginAccess();
  v1 = *(v0 + 16);
  swift_getKeyPath();
  sub_220B958AC(&qword_2812C2180, type metadata accessor for TipsContentModel);
  v2 = v1;
  sub_220BCC300();

  v3 = OBJC_IVAR____TtC6TipsUI16TipsContentModel__lastContentError;
  swift_beginAccess();
  v4 = *&v2[v3];
  v5 = v4;

  if (v4)
  {
  }

  return v4 != 0;
}

uint64_t sub_220B92644@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_220B958AC(&qword_27CF77C48, type metadata accessor for CollectionsViewModel);
  sub_220BCC300();

  swift_beginAccess();
  v4 = *(v3 + 72);
  *a2 = *(v3 + 64);
  a2[1] = v4;
}

uint64_t sub_220B9271C()
{
  swift_getKeyPath();
  sub_220B958AC(&qword_27CF77C48, type metadata accessor for CollectionsViewModel);
  sub_220BCC300();

  swift_beginAccess();
  v1 = *(v0 + 64);

  return v1;
}

uint64_t sub_220B927E0(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 72);
  if (v5)
  {
    if (a2)
    {
      v6 = *(v2 + 64) == a1 && v5 == a2;
      if (v6 || (sub_220BCE130() & 1) != 0)
      {
        goto LABEL_8;
      }
    }
  }

  else if (!a2)
  {
LABEL_8:
    *(v2 + 64) = a1;
    *(v2 + 72) = a2;
  }

  KeyPath = swift_getKeyPath();
  MEMORY[0x28223BE20](KeyPath);
  sub_220B958AC(&qword_27CF77C48, type metadata accessor for CollectionsViewModel);
  sub_220BCC2F0();
}

uint64_t sub_220B92944(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  *(a1 + 64) = a2;
  *(a1 + 72) = a3;
}

void (*sub_220B929B0(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
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
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC6TipsUI20CollectionsViewModel___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_220B958AC(&qword_27CF77C48, type metadata accessor for CollectionsViewModel);
  sub_220BCC300();

  *v4 = v1;
  swift_getKeyPath();
  sub_220BCC320();

  v4[7] = sub_220B925F4();
  return sub_220B92AE8;
}

uint64_t sub_220B92B44@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_220B958AC(&qword_27CF77C48, type metadata accessor for CollectionsViewModel);
  sub_220BCC300();

  swift_beginAccess();
  v4 = *(v3 + 88);
  *a2 = *(v3 + 80);
  a2[1] = v4;
}

uint64_t keypath_set_7Tm(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  v7 = *a1;
  v6 = a1[1];

  return a5(v7, v6);
}

uint64_t sub_220B92C64()
{
  swift_getKeyPath();
  sub_220B958AC(&qword_27CF77C48, type metadata accessor for CollectionsViewModel);
  sub_220BCC300();

  swift_beginAccess();
  v1 = *(v0 + 80);

  return v1;
}

uint64_t sub_220B92D28(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 88);
  if (v5)
  {
    if (a2)
    {
      v6 = *(v2 + 80) == a1 && v5 == a2;
      if (v6 || (sub_220BCE130() & 1) != 0)
      {
        goto LABEL_8;
      }
    }
  }

  else if (!a2)
  {
LABEL_8:
    *(v2 + 80) = a1;
    *(v2 + 88) = a2;
  }

  KeyPath = swift_getKeyPath();
  MEMORY[0x28223BE20](KeyPath);
  sub_220B958AC(&qword_27CF77C48, type metadata accessor for CollectionsViewModel);
  sub_220BCC2F0();
}

uint64_t sub_220B92E8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  *(a1 + 80) = a2;
  *(a1 + 88) = a3;
}

void (*sub_220B92EF8(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
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
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC6TipsUI20CollectionsViewModel___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_220B958AC(&qword_27CF77C48, type metadata accessor for CollectionsViewModel);
  sub_220BCC300();

  *v4 = v1;
  swift_getKeyPath();
  sub_220BCC320();

  v4[7] = sub_220B92AF4();
  return sub_220B93030;
}

void sub_220B9303C(void *a1)
{
  v1 = *a1;
  (*(*a1 + 56))(*a1, 0);
  *v1 = v1[4];
  swift_getKeyPath();
  sub_220BCC310();

  free(v1);
}

uint64_t CollectionsViewModel.__allocating_init(contentModel:)(uint64_t a1)
{
  v2 = swift_allocObject();
  *(v2 + 24) = 0u;
  *(v2 + 40) = 0u;
  *(v2 + 56) = 0;
  *(v2 + 64) = 0u;
  *(v2 + 80) = 0u;
  sub_220BCC330();
  *(v2 + 16) = a1;
  return v2;
}

uint64_t CollectionsViewModel.init(contentModel:)(uint64_t a1)
{
  *(v1 + 56) = 0;
  *(v1 + 40) = 0u;
  *(v1 + 24) = 0u;
  *(v1 + 64) = 0u;
  *(v1 + 80) = 0u;
  sub_220BCC330();
  *(v1 + 16) = a1;
  return v1;
}

uint64_t sub_220B9317C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_220BCBF50();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = (&v112 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v125 = sub_220BCD630();
  v128 = *(v125 - 8);
  v8 = MEMORY[0x28223BE20](v125);
  v121 = &v112 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v123 = &v112 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v122 = &v112 - v13;
  MEMORY[0x28223BE20](v12);
  v15 = &v112 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF76C90);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v112 - v17;
  v19 = sub_220BCBF80();
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v22 = &v112 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_220B57DC0(a1, v18);
  if ((*(v20 + 48))(v18, 1, v19) == 1)
  {
    return sub_220B4F3F4(v18);
  }

  v120 = v20;
  (*(v20 + 32))(v22, v18, v19);
  sub_220BCD620();
  v24 = 0xE000000000000000;
  v134 = 0;
  v135 = 0xE000000000000000;
  sub_220BCDFB0();
  v131 = v134;
  v132 = v135;
  MEMORY[0x223D929B0](0xD000000000000016, 0x8000000220BD8170);
  sub_220B958AC(&qword_27CF77C50, MEMORY[0x277CC9260]);
  v124 = v22;
  v25 = sub_220BCE120();
  MEMORY[0x223D929B0](v25);

  MEMORY[0x223D929B0](0xD000000000000016, 0x8000000220BD8190);
  swift_getKeyPath();
  v26 = OBJC_IVAR____TtC6TipsUI20CollectionsViewModel___observationRegistrar;
  v134 = v2;
  v27 = sub_220B958AC(&qword_27CF77C48, type metadata accessor for CollectionsViewModel);
  v126 = v26;
  v127 = v27;
  sub_220BCC300();

  swift_beginAccess();
  v28 = *(v2 + 40);
  v119 = v19;
  if (v28)
  {
    v29 = [v28 identifier];
    v30 = sub_220BCDBA0();
    v24 = v31;
  }

  else
  {
    v30 = 0;
  }

  v32 = v128;
  MEMORY[0x223D929B0](v30, v24);

  MEMORY[0x223D929B0](0x6E6572727543202ELL, 0xEF203A7069542074);
  swift_getKeyPath();
  v133 = v2;
  sub_220BCC300();

  swift_beginAccess();
  v33 = *(v2 + 48);
  if (v33)
  {
    v34 = [v33 identifier];
    v35 = sub_220BCDBA0();
    v37 = v36;
  }

  else
  {
    v35 = 0;
    v37 = 0xE000000000000000;
  }

  MEMORY[0x223D929B0](v35, v37);

  sub_220BCDA40();

  v40 = *(v32 + 8);
  v39 = v32 + 8;
  v38 = v40;
  v40(v15, v125);
  v41 = sub_220BCDBA0();
  v43 = v42;
  v44 = v124;
  sub_220BCBF70();
  v45 = (*(v5 + 88))(v7, v4);
  if (v45 == *MEMORY[0x277D715A0])
  {
    v118 = v41;
    (*(v5 + 96))(v7, v4);
    v46 = *v7;
    v47 = v7[1];
    v48 = v7[2];
    v49 = v7[3];
    v50 = v7[5];
    v115 = v7[4];
    v116 = v50;
    sub_220B95904(v115, v50);

    v121 = v46;
    sub_220B927E0(v46, v47);

    sub_220B92D28(v48, v49);
    v114 = v48;
    v117 = v38;
    if (v49)
    {
      v51 = objc_opt_self();

      v52 = [v51 sharedInstance];
      v53 = sub_220BCDB70();

      v54 = [v52 tipForCorrelationIdentifier_];

      if (v54)
      {
        v55 = v122;
        sub_220BCD620();
        v131 = 0;
        v132 = 0xE000000000000000;
        sub_220BCDFB0();
        MEMORY[0x223D929B0](0xD000000000000039, 0x8000000220BD8240);
        v56 = v54;
        v113 = v47;
        v57 = [v56 identifier];
        v58 = sub_220BCDBA0();
        v60 = v59;

        MEMORY[0x223D929B0](v58, v60);

        MEMORY[0x223D929B0](0xD00000000000001DLL, 0x8000000220BD8280);
        sub_220BCDA40();

        v117(v55, v125);
        v47 = v113;
        v61 = [v56 identifier];

        v62 = sub_220BCDBA0();
        v64 = v63;

        sub_220B92D28(v62, v64);
      }
    }

    swift_getKeyPath();
    v131 = v2;
    sub_220BCC300();

    swift_beginAccess();
    v65 = *(v2 + 88);
    if (v65)
    {
      v66 = *(v2 + 80);

      v49 = v65;
    }

    else
    {
      v66 = v114;
    }

    v73 = sub_220B94688();
    v128 = v39;
    if (v73)
    {

      swift_getKeyPath();
      v129 = v2;
      sub_220BCC300();

      v74 = *(v2 + 40);
      if (v74)
      {
        v75 = [v74 identifier];
        v121 = sub_220BCDBA0();
        v47 = v76;
      }

      else
      {
        v121 = 0;
        v47 = 0;
      }

      swift_getKeyPath();
      v129 = v2;
      sub_220BCC300();

      v83 = *(v2 + 48);
      if (v83)
      {
        v84 = [v83 identifier];
        v85 = sub_220BCDBA0();
        v49 = v86;
      }

      else
      {
        v85 = 0;
        v49 = 0;
      }

      swift_getKeyPath();
      v129 = v2;
      sub_220BCC300();

      v87 = *(v2 + 48);
      if (v87 && (v88 = [v87 correlationID]) != 0)
      {
        v89 = v88;
        v122 = sub_220BCDBA0();
        v77 = v90;
      }

      else
      {
        v122 = 0;
        v77 = 0;
      }

      v66 = v85;
    }

    else
    {
      v122 = 0;
      v77 = 0;
    }

    v91 = v43;
    v92 = v116;
    if (v116)
    {

      v118 = v115;
    }

    else
    {
      v92 = v91;
    }

    v93 = v123;
    sub_220BCD620();
    v129 = 0;
    v130 = 0xE000000000000000;
    sub_220BCDFB0();
    MEMORY[0x223D929B0](0xD00000000000001DLL, 0x8000000220BD81E0);
    if (v49)
    {
      v94 = v66;
    }

    else
    {
      v94 = 0;
    }

    if (v49)
    {
      v95 = v49;
    }

    else
    {
      v95 = 0xE000000000000000;
    }

    MEMORY[0x223D929B0](v94, v95);

    MEMORY[0x223D929B0](0xD000000000000010, 0x8000000220BD8200);
    if (v47)
    {
      v96 = v121;
    }

    else
    {
      v96 = 0;
    }

    if (v47)
    {
      v97 = v47;
    }

    else
    {
      v97 = 0xE000000000000000;
    }

    MEMORY[0x223D929B0](v96, v97);

    MEMORY[0x223D929B0](0xD000000000000011, 0x8000000220BD8220);
    if (v77)
    {
      v98 = v122;
    }

    else
    {
      v98 = 0;
    }

    if (v77)
    {
      v99 = v77;
    }

    else
    {
      v99 = 0xE000000000000000;
    }

    MEMORY[0x223D929B0](v98, v99);

    MEMORY[0x223D929B0](0x727265666572202CLL, 0xEC000000203A7265);
    MEMORY[0x223D929B0](v118, v92);

    sub_220BCD9E0();

    v117(v93, v125);
    v72 = v120;
    goto LABEL_61;
  }

  if (v45 != *MEMORY[0x277D715A8])
  {

    (*(v5 + 8))(v7, v4);
    v72 = v120;
LABEL_62:
    if (*(v2 + 56) == 1)
    {
      *(v2 + 56) = 1;
    }

    else
    {
      KeyPath = swift_getKeyPath();
      MEMORY[0x28223BE20](KeyPath);
      *(&v112 - 2) = v2;
      *(&v112 - 8) = 1;
      v129 = v2;
      sub_220BCC2F0();
    }

    sub_220B941DC();
    return (*(v72 + 8))(v44, v119);
  }

  v118 = v41;
  v123 = v43;
  v128 = v39;
  (*(v5 + 96))(v7, v4);
  v67 = v7[1];
  v122 = *v7;
  v68 = v7[3];
  v116 = v7[2];
  v69 = v7[5];
  v115 = v7[4];
  v70 = v7[6];
  v71 = v7[7];
  sub_220B95904(v70, v71);
  v72 = v120;
  if (!(v67 | v68))
  {

    return (*(v72 + 8))(v44, v119);
  }

  v114 = v68;
  swift_getKeyPath();
  v131 = v2;
  sub_220BCC300();

  swift_beginAccess();
  v78 = [*(*(v2 + 16) + OBJC_IVAR____TtC6TipsUI16TipsContentModel_appController) mainUserGuide];
  v113 = v78;
  if (!v78)
  {
    if (!v67)
    {
      sub_220B91028(0x6469754772657355, 0xE900000000000065);
      v112 = v69;
      v101 = v69 == 0;
      goto LABEL_77;
    }

    goto LABEL_68;
  }

  v79 = v78;
  v80 = sub_220BCDA70();
  v82 = v81;

  if (!v67)
  {
    if (!v82)
    {
      goto LABEL_73;
    }

    goto LABEL_75;
  }

  if (!v82)
  {
LABEL_68:
    v79 = v113;
    goto LABEL_75;
  }

  if (v122 == v80 && v67 == v82)
  {

    goto LABEL_73;
  }

  v102 = sub_220BCE130();

  if (v102)
  {
LABEL_73:

    v103 = v79;
    sub_220BCDAA0();

    sub_220B91028(0x6469754772657355, 0xE900000000000065);
    v112 = v69;
    if (v69)
    {
      v104 = v103;

      sub_220BCDAD0();

      v101 = 0;
    }

    else
    {
      v101 = 1;
    }

LABEL_77:
    if (v71)
    {

      v118 = v70;
    }

    else
    {
      v71 = v123;
    }

    v105 = v121;
    sub_220BCD610();
    v129 = 0;
    v130 = 0xE000000000000000;
    sub_220BCDFB0();
    MEMORY[0x223D929B0](0xD000000000000023, 0x8000000220BD81B0);
    if (v67)
    {
      v106 = v122;
    }

    else
    {
      v106 = 0;
    }

    if (v67)
    {
      v107 = v67;
    }

    else
    {
      v107 = 0xE000000000000000;
    }

    MEMORY[0x223D929B0](v106, v107);

    MEMORY[0x223D929B0](0x496369706F74202CLL, 0xEB00000000203A44);
    if (v114)
    {
      v108 = v116;
    }

    else
    {
      v108 = 0;
    }

    if (v114)
    {
      v109 = v114;
    }

    else
    {
      v109 = 0xE000000000000000;
    }

    MEMORY[0x223D929B0](v108, v109);

    MEMORY[0x223D929B0](0x6F6973726576202CLL, 0xEB00000000203A6ELL);
    if (v101)
    {
      v110 = 0;
    }

    else
    {
      v110 = v115;
    }

    if (v101)
    {
      v111 = 0xE000000000000000;
    }

    else
    {
      v111 = v112;
    }

    MEMORY[0x223D929B0](v110, v111);

    MEMORY[0x223D929B0](0x727265666572202CLL, 0xEC000000203A7265);
    MEMORY[0x223D929B0](v118, v71);

    sub_220BCD9E0();

    v38(v105, v125);
LABEL_61:
    v44 = v124;
    goto LABEL_62;
  }

LABEL_75:

  return (*(v72 + 8))(v124, v119);
}

void sub_220B941DC()
{
  v1 = v0;
  swift_getKeyPath();
  sub_220B958AC(&qword_27CF77C48, type metadata accessor for CollectionsViewModel);
  sub_220BCC300();

  swift_beginAccess();
  v2 = *(v0 + 16);
  swift_getKeyPath();
  sub_220B958AC(&qword_2812C2180, type metadata accessor for TipsContentModel);
  v3 = v2;
  sub_220BCC300();

  v4 = OBJC_IVAR____TtC6TipsUI16TipsContentModel__collections;
  swift_beginAccess();
  v5 = *&v3[v4];

  if (v5 >> 62)
  {
    v6 = sub_220BCDF70();
  }

  else
  {
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v6)
  {
    swift_getKeyPath();
    sub_220BCC300();

    if (*(v1 + 56) == 1)
    {
      swift_getKeyPath();
      sub_220BCC300();

      swift_beginAccess();
      v7 = *(v1 + 48);
      if (v7)
      {
        v8 = [v7 identifier];
        if (!v8)
        {
          sub_220BCDBA0();
          v8 = sub_220BCDB70();
        }
      }

      else
      {
        v8 = 0;
      }

      swift_getKeyPath();
      sub_220BCC300();

      swift_beginAccess();
      v9 = *(v1 + 40);
      if (v9)
      {
        v10 = [v9 identifier];
        if (!v10)
        {
          sub_220BCDBA0();
          v10 = sub_220BCDB70();
        }
      }

      else
      {
        v10 = 0;
      }

      swift_getKeyPath();
      sub_220BCC300();

      v11 = *(v1 + 48);
      if (!v11 || (v12 = [v11 correlationID]) == 0)
      {
        v12 = 0;
      }

      v13 = objc_opt_self();
      if (qword_27CF76978 != -1)
      {
        swift_once();
      }

      swift_beginAccess();

      v14 = sub_220BCDB70();

      v15 = [v13 eventWithContentID:v8 collectionID:v10 correlationID:v12 launchType:v14];

      [v15 log];
      if (*(v1 + 56))
      {
        KeyPath = swift_getKeyPath();
        MEMORY[0x28223BE20](KeyPath);
        sub_220BCC2F0();
      }

      else
      {
        *(v1 + 56) = 0;
      }
    }
  }
}

uint64_t sub_220B94688()
{
  v1 = v0;
  swift_getKeyPath();
  sub_220B958AC(&qword_27CF77C48, type metadata accessor for CollectionsViewModel);
  sub_220BCC300();

  swift_beginAccess();
  v2 = *(v0 + 72);
  v64 = *(v0 + 64);
  swift_getKeyPath();

  sub_220BCC300();

  swift_beginAccess();
  v3 = *(v0 + 80);
  v4 = *(v0 + 88);
  if (v2)
  {
    swift_getKeyPath();
    if (v4)
    {
      v62 = v3;
      v63 = v4;

      sub_220BCC300();

      swift_beginAccess();
      v5 = *(v0 + 16);
      v6 = sub_220BA26C4();
      v7 = v6;
      v61 = v5;
      if (v6 >> 62)
      {
        goto LABEL_47;
      }

      for (i = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_220BCDF70())
      {
        v9 = 0;
        while (1)
        {
          if ((v7 & 0xC000000000000001) != 0)
          {
            v10 = MEMORY[0x223D92D80](v9, v7);
          }

          else
          {
            if (v9 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_44;
            }

            v10 = *(v7 + 8 * v9 + 32);
          }

          v11 = v10;
          v12 = v9 + 1;
          if (__OFADD__(v9, 1))
          {
            break;
          }

          v13 = [v10 identifier];
          v14 = sub_220BCDBA0();
          v16 = v15;

          if (v14 == v64 && v2 == v16)
          {

            goto LABEL_49;
          }

          v18 = sub_220BCE130();

          if (v18)
          {

            goto LABEL_49;
          }

          ++v9;
          if (v12 == i)
          {
            goto LABEL_48;
          }
        }

        __break(1u);
LABEL_44:
        __break(1u);
LABEL_45:
        __break(1u);
LABEL_46:
        __break(1u);
LABEL_47:
        ;
      }

LABEL_48:

      v11 = 0;
LABEL_49:
      sub_220B91544(v11);
      swift_getKeyPath();
      sub_220BCC300();

      v40 = *(v1 + 16);
      v41 = sub_220BA1E68(v62, v63, v64, v2);

      sub_220B91A74(v41);

      goto LABEL_53;
    }

    sub_220BCC300();

    swift_beginAccess();
    v63 = *(v0 + 16);
    v27 = sub_220BA26C4();
    v28 = v27;
    if (v27 >> 62)
    {
      v29 = sub_220BCDF70();
      if (v29)
      {
LABEL_23:
        v7 = 0;
        while (1)
        {
          if ((v28 & 0xC000000000000001) != 0)
          {
            v30 = MEMORY[0x223D92D80](v7, v28);
          }

          else
          {
            if (v7 >= *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_46;
            }

            v30 = *(v28 + 8 * v7 + 32);
          }

          v31 = v30;
          v32 = v7 + 1;
          if (__OFADD__(v7, 1))
          {
            goto LABEL_45;
          }

          v33 = [v30 identifier];
          v34 = sub_220BCDBA0();
          v36 = v35;

          if (v34 == v64 && v2 == v36)
          {

            goto LABEL_52;
          }

          v38 = sub_220BCE130();

          if (v38)
          {
            break;
          }

          ++v7;
          if (v32 == v29)
          {
            goto LABEL_51;
          }
        }

        goto LABEL_52;
      }
    }

    else
    {
      v29 = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v29)
      {
        goto LABEL_23;
      }
    }

LABEL_51:

    v31 = 0;
LABEL_52:
    sub_220B91544(v31);

    goto LABEL_53;
  }

  if (!v4)
  {
    v39 = 0;
    goto LABEL_58;
  }

  swift_getKeyPath();

  sub_220BCC300();

  swift_beginAccess();
  v19 = *(v0 + 16);
  v20 = sub_220BA2318(v3, v4);

  v21 = v20;
  sub_220B91544(v20);
  if (v20)
  {
    swift_getKeyPath();
    sub_220BCC300();

    v22 = *(v1 + 16);
    v23 = *&v22[OBJC_IVAR____TtC6TipsUI16TipsContentModel_appController];
    v24 = v22;
    v25 = sub_220BCDB70();
    v26 = [v23 tipForIdentifier_];
  }

  else
  {
    v26 = 0;
  }

  sub_220B91A74(v26);

LABEL_53:
  swift_getKeyPath();
  sub_220BCC300();

  swift_beginAccess();
  v42 = *(v1 + 40);
  if (v42)
  {
    swift_getKeyPath();
    v43 = v42;
    sub_220BCC300();

    swift_beginAccess();
    v44 = *(v1 + 16);
    v45 = v43;
    v46 = v44;
    v47 = [v45 identifier];
    sub_220BCDBA0();

    v48 = *&v46[OBJC_IVAR____TtC6TipsUI16TipsContentModel_appController];
    v49 = sub_220BCDB70();
    [v48 removeNotificationForIdentifier_];

    v50 = [v45 identifier];

    v51 = sub_220BCDBA0();
    v53 = v52;

    sub_220B91028(v51, v53);
  }

  swift_getKeyPath();
  sub_220BCC300();

  swift_beginAccess();
  v54 = *(v1 + 48);
  if (v54)
  {
    swift_getKeyPath();
    v55 = v54;
    sub_220BCC300();

    swift_beginAccess();
    v56 = *(v1 + 16);
    v57 = [v55 identifier];
    sub_220BCDBA0();

    v58 = *&v56[OBJC_IVAR____TtC6TipsUI16TipsContentModel_appController];
    v59 = sub_220BCDB70();
    [v58 removeNotificationForIdentifier_];
  }

  v39 = 1;
LABEL_58:
  sub_220B941DC();
  return v39;
}

uint64_t sub_220B94F50()
{
  swift_beginAccess();
  if (v0[11])
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_220B958AC(&qword_27CF77C48, type metadata accessor for CollectionsViewModel);
    sub_220BCC2F0();
  }

  else
  {
    v0[10] = 0;
    v0[11] = 0;
  }

  swift_beginAccess();
  if (v0[9])
  {
    v2 = swift_getKeyPath();
    MEMORY[0x28223BE20](v2);
    sub_220B958AC(&qword_27CF77C48, type metadata accessor for CollectionsViewModel);
    sub_220BCC2F0();
  }

  else
  {
    v0[8] = 0;
    v0[9] = 0;
  }

  swift_beginAccess();
  if (v0[4])
  {
    v3 = swift_getKeyPath();
    MEMORY[0x28223BE20](v3);
    sub_220B958AC(&qword_27CF77C48, type metadata accessor for CollectionsViewModel);
    sub_220BCC2F0();
  }

  else
  {
    v0[3] = 0;
    v0[4] = 0;
  }

  swift_beginAccess();
  if (v0[5])
  {
    v4 = swift_getKeyPath();
    MEMORY[0x28223BE20](v4);
    sub_220B958AC(&qword_27CF77C48, type metadata accessor for CollectionsViewModel);
    sub_220BCC2F0();
  }

  result = swift_beginAccess();
  if (v0[6])
  {
    v6 = swift_getKeyPath();
    MEMORY[0x28223BE20](v6);
    sub_220B958AC(&qword_27CF77C48, type metadata accessor for CollectionsViewModel);
    sub_220BCC2F0();
  }

  return result;
}

id *CollectionsViewModel.deinit()
{

  v1 = OBJC_IVAR____TtC6TipsUI20CollectionsViewModel___observationRegistrar;
  v2 = sub_220BCC340();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t CollectionsViewModel.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtC6TipsUI20CollectionsViewModel___observationRegistrar;
  v2 = sub_220BCC340();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 12);
  v4 = *(*v0 + 26);

  return MEMORY[0x2821FE8D8](v0, v3, v4);
}

id sub_220B9551C()
{
  v1 = *v0;
  swift_getKeyPath();
  sub_220B958AC(&qword_27CF77C48, type metadata accessor for CollectionsViewModel);
  sub_220BCC300();

  swift_beginAccess();
  v2 = *(v1 + 16);

  return v2;
}

uint64_t sub_220B95630@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X4>, _BYTE *a3@<X8>)
{
  v5 = *a1;
  swift_getKeyPath();
  sub_220B958AC(&qword_2812C2180, type metadata accessor for TipsContentModel);
  sub_220BCC300();

  v6 = *a2;
  result = swift_beginAccess();
  *a3 = *(v5 + v6);
  return result;
}

uint64_t sub_220B95720@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_220B958AC(&qword_2812C2180, type metadata accessor for TipsContentModel);
  sub_220BCC300();

  v4 = OBJC_IVAR____TtC6TipsUI16TipsContentModel__collections;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

uint64_t sub_220B958AC(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_220B95904(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    a1 = sub_220BCDBA0();
  }

  v3 = a2;
  v4 = qword_27CF76978;

  if (v4 != -1)
  {
    swift_once();
  }

  v5 = off_27CF77C70;
  swift_beginAccess();
  v5[7] = a1;
  v5[8] = v3;

  swift_beginAccess();
  v5[9] = a1;
  v5[10] = v3;

  v6 = objc_opt_self();
  v7 = sub_220BCDB70();

  [v6 setAppReferrer_];
}

uint64_t sub_220B95A3C()
{
  result = sub_220BCC340();
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

uint64_t View.readSize(onChange:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v15 = a1;
  v16 = a2;
  v17 = a4;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CF77250);
  v5 = sub_220BCC860();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v14 - v7;
  v20 = sub_220B96260;
  v21 = 0;
  sub_220BCD460();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF77C68);
  sub_220B43830(&qword_2812C0A20, &qword_27CF77C68);
  v9 = a3;
  sub_220BCCFD0();
  v10 = swift_allocObject();
  v11 = v16;
  *(v10 + 16) = v15;
  *(v10 + 24) = v11;
  v12 = sub_220B43830(&qword_2812C09C0, &qword_27CF77250);
  v18 = v9;
  v19 = v12;

  swift_getWitnessTable();
  sub_220B962F8();
  sub_220B9634C();
  sub_220BCD070();

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_220B96260@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_220BCD1B0();
  result = sub_220BCC6E0();
  *a1 = v2;
  a1[1] = v4;
  a1[2] = v5;
  return result;
}

unint64_t sub_220B962F8()
{
  result = qword_2812C1B98[0];
  if (!qword_2812C1B98[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2812C1B98);
  }

  return result;
}

unint64_t sub_220B9634C()
{
  result = qword_2812C08B8;
  if (!qword_2812C08B8)
  {
    type metadata accessor for CGSize(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812C08B8);
  }

  return result;
}

double sub_220B963BC()
{
  type metadata accessor for TipsAnalyticsHelper();
  v0 = swift_allocObject();
  *(v0 + 16) = 0;
  *(v0 + 24) = sub_220BCDBA0();
  *(v0 + 32) = v1;
  *(v0 + 40) = 0;
  *(v0 + 48) = 0;
  *(v0 + 56) = 0;
  *(v0 + 64) = 0xE000000000000000;
  *(v0 + 72) = 0;
  *(v0 + 80) = 0xE000000000000000;
  result = 0.0;
  *(v0 + 88) = 0u;
  *(v0 + 104) = 0u;
  *(v0 + 120) = 0;
  off_27CF77C70 = v0;
  return result;
}

uint64_t static TipsAnalyticsHelper.shared.getter()
{
  if (qword_27CF76978 != -1)
  {
    swift_once();
  }
}

id sub_220B96488()
{
  type metadata accessor for TipsContentModel();
  result = static TipsContentModel.shared()();
  qword_27CF77C78 = result;
  return result;
}

id static TipsAnalyticsHelper.contentModel.getter()
{
  if (qword_27CF76980 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v0 = qword_27CF77C78;

  return v0;
}

void static TipsAnalyticsHelper.contentModel.setter(uint64_t a1)
{
  if (qword_27CF76980 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = qword_27CF77C78;
  qword_27CF77C78 = a1;
}

uint64_t (*static TipsAnalyticsHelper.contentModel.modify())()
{
  if (qword_27CF76980 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

id sub_220B96648@<X0>(void *a1@<X8>)
{
  if (qword_27CF76980 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = qword_27CF77C78;
  *a1 = qword_27CF77C78;

  return v2;
}

void sub_220B966D4(id *a1)
{
  v1 = qword_27CF76980;
  v2 = *a1;
  if (v1 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v3 = qword_27CF77C78;
  qword_27CF77C78 = v2;
}

uint64_t sub_220B9675C(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *a2;
  swift_beginAccess();
  *(v4 + 40) = v3;
  *(v4 + 48) = v2;
}

uint64_t sub_220B967BC()
{
  swift_beginAccess();
  v1 = *(v0 + 40);

  return v1;
}

uint64_t sub_220B96808(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
}

uint64_t sub_220B9685C(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *a2;
  swift_beginAccess();
  *(v4 + 56) = v3;
  *(v4 + 64) = v2;
}

uint64_t sub_220B968BC()
{
  swift_beginAccess();
  v1 = *(v0 + 56);

  return v1;
}

uint64_t sub_220B96908(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 56) = a1;
  *(v2 + 64) = a2;
}

uint64_t sub_220B969AC(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *a2;
  swift_beginAccess();
  *(v4 + 72) = v3;
  *(v4 + 80) = v2;
}

uint64_t sub_220B96A0C()
{
  swift_beginAccess();
  v1 = *(v0 + 72);

  return v1;
}

uint64_t sub_220B96A58(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 72) = a1;
  *(v2 + 80) = a2;
}

uint64_t sub_220B96AFC(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *a2;
  swift_beginAccess();
  *(v4 + 88) = v3;
  *(v4 + 96) = v2;
}

uint64_t sub_220B96B5C()
{
  swift_beginAccess();
  v1 = *(v0 + 88);

  return v1;
}

uint64_t sub_220B96BA8(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 88) = a1;
  *(v2 + 96) = a2;
}

uint64_t TipsAnalyticsHelper.deinit()
{
  if (*(v0 + 16))
  {

    sub_220BCD5C0();
  }

  *(v0 + 16) = 0;

  return v0;
}

uint64_t TipsAnalyticsHelper.__deallocating_deinit()
{
  TipsAnalyticsHelper.deinit();

  return MEMORY[0x2821FE8D8](v0, 128, 7);
}

uint64_t sub_220B96D14(void *a1)
{
  v2 = v1;
  if (*(v1 + 16))
  {

    sub_220BCD5C0();
  }

  *(v1 + 16) = 0;

  if (a1)
  {
    v4 = [a1 identifier];
    v5 = sub_220BCDBA0();
    v7 = v6;
  }

  else
  {
    v5 = sub_220BCDBA0();
    v7 = v8;
  }

  *(v2 + 24) = v5;
  *(v2 + 32) = v7;
}

void sub_220B96DD4(void *a1)
{
  if (v1[2])
  {

    sub_220BCD5C0();
  }

  v1[2] = 0;

  if (!a1)
  {
    swift_beginAccess();
    v1[5] = 0;
    v1[6] = 0;

    goto LABEL_7;
  }

  v3 = [a1 identifier];
  v4 = sub_220BCDBA0();
  v6 = v5;

  swift_beginAccess();
  v1[5] = v4;
  v1[6] = v6;

  v7 = [a1 correlationID];
  if (!v7)
  {
LABEL_7:
    v9 = 0;
    v11 = 0;
    goto LABEL_8;
  }

  v8 = v7;
  v9 = sub_220BCDBA0();
  v11 = v10;

LABEL_8:
  swift_beginAccess();
  v1[11] = v9;
  v1[12] = v11;

  if (a1 && (v12 = [a1 clientConditionID]) != 0)
  {
    v13 = v12;
    v14 = sub_220BCDBA0();
    v16 = v15;
  }

  else
  {
    v14 = 0;
    v16 = 0;
  }

  v1[13] = v14;
  v1[14] = v16;

  sub_220B97D40(a1);
}

void sub_220B96F68()
{
  swift_beginAccess();
  if (v0[6])
  {

    v1 = sub_220BCDB70();

    if (v0[4])
    {
LABEL_3:

      v2 = sub_220BCDB70();

      goto LABEL_6;
    }
  }

  else
  {
    v1 = 0;
    if (v0[4])
    {
      goto LABEL_3;
    }
  }

  v2 = 0;
LABEL_6:
  swift_beginAccess();
  if (v0[12])
  {

    v3 = sub_220BCDB70();
  }

  else
  {
    v3 = 0;
  }

  v4 = objc_opt_self();
  v5 = sub_220BCDB70();
  v6 = [v4 eventWithContentID:v1 collectionID:v2 correlationID:v3 launchType:v5];

  [v6 log];
}

uint64_t sub_220B970DC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v40 = a1;
  v5 = sub_220BCD5A0();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v32 - v10;
  v12 = sub_220BCD550();
  MEMORY[0x28223BE20](v12);
  result = swift_beginAccess();
  if (v2[6] && v2[4])
  {
    v36 = a2;
    v38 = v6;

    v35 = sub_220BCDB70();

    v34 = sub_220BCDB70();

    swift_beginAccess();
    if (v2[12])
    {

      v14 = sub_220BCDB70();
    }

    else
    {
      v14 = 0;
    }

    v15 = v2[14];
    v39 = v5;
    v37 = v11;
    v33 = v9;
    if (v15)
    {

      v16 = sub_220BCDB70();
    }

    else
    {
      v16 = 0;
    }

    v17 = objc_opt_self();
    swift_beginAccess();

    v18 = sub_220BCDB70();

    v19 = sub_220BCDB70();
    v20 = v35;
    v21 = v34;
    v22 = [v17 eventWithContentID:v35 collectionID:v34 correlationID:v14 clientConditionID:v16 viewMethod:v18 viewMode:v19];

    if (v3[2])
    {

      sub_220BCD5C0();
    }

    v23 = v33;
    v3[2] = 0;

    v24 = swift_allocObject();
    swift_weakInit();
    v25 = swift_allocObject();
    *(v25 + 16) = v24;
    *(v25 + 24) = v22;
    aBlock[4] = sub_220B98000;
    aBlock[5] = v25;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_220B61C68;
    aBlock[3] = &block_descriptor_6;
    _Block_copy(aBlock);
    v41 = MEMORY[0x277D84F90];
    sub_220B98020();

    v26 = v22;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF77168);
    sub_220B98078();
    sub_220BCDF50();
    sub_220BCD5D0();
    swift_allocObject();
    v27 = sub_220BCD5B0();

    v3[2] = v27;

    sub_220B60CE8();
    v28 = sub_220BCDE10();
    sub_220BCD590();
    v29 = v37;
    sub_220BCD5E0();
    v30 = v39;
    v31 = *(v38 + 8);
    v31(v23, v39);
    sub_220BCDDF0();

    return (v31)(v29, v30);
  }

  return result;
}

uint64_t sub_220B975DC(uint64_t a1, void *a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_220B97BC8(a2);
  }

  return result;
}

void sub_220B9763C(uint64_t a1, char a2)
{
  swift_beginAccess();
  if (v2[6] && v2[4])
  {

    v5 = sub_220BCDB70();

    v6 = sub_220BCDB70();

    swift_beginAccess();
    if (v2[12])
    {

      v7 = sub_220BCDB70();
    }

    else
    {
      v7 = 0;
    }

    v8 = [objc_opt_self() eventWithTipID:v5 animationFinished:a2 & 1 animationSource:a1 collectionID:v6 correlationID:v7];

    [v8 log];
  }
}

void sub_220B9778C()
{
  swift_beginAccess();
  if (v0[6] && v0[4])
  {
    swift_beginAccess();
    if (v0[12])
    {
      v1 = objc_opt_self();

      v2 = sub_220BCDB70();

      v3 = sub_220BCDB70();

      v4 = sub_220BCDB70();

      v5 = [v1 eventWithTipID:v2 collectionID:v3 correlationID:v4];

      [v5 log];
    }
  }
}

void sub_220B978CC(char a1)
{
  swift_beginAccess();
  if (v1[6] && v1[4])
  {
    swift_beginAccess();
    if (v1[12])
    {
      v3 = objc_opt_self();

      v4 = sub_220BCDB70();

      v5 = sub_220BCDB70();

      v6 = sub_220BCDB70();

      v7 = [v3 eventWithTipID:v4 saved:a1 & 1 correlationID:v5 collectionID:v6];

      [v7 log];
    }
  }
}

void sub_220B97A14()
{
  v0 = [objc_opt_self() event];
  [v0 log];
}

void sub_220B97A74()
{
  v6 = objc_opt_self();
  v0 = sub_220BCDB70();
  v1 = sub_220BCDB70();
  v2 = sub_220BCDB70();
  v3 = sub_220BCDB70();
  v4 = sub_220BCDB70();
  v5 = sub_220BCDB70();
  v7 = [v6 eventWithTopicID:v0 topicTitle:v1 source:v2 interfaceStyle:v3 fromTopicID:v4 externalURLString:v5];

  [v7 log];
}

void sub_220B97BC8(void *a1)
{
  swift_beginAccess();
  v3 = v1[6];
  if (v3 && v1[4])
  {
    v4 = v1[5];

    [a1 log];
    v5 = HIBYTE(v3) & 0xF;
    if ((v3 & 0x2000000000000000) == 0)
    {
      v5 = v4 & 0xFFFFFFFFFFFFLL;
    }

    if (v5)
    {
      [objc_opt_self() incrementTipsViewedCount];
    }

    if (qword_27CF76980 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v6 = qword_27CF77C78;
    v7 = v1[4];
    v8 = *(qword_27CF77C78 + OBJC_IVAR____TtC6TipsUI16TipsContentModel_appController);

    v9 = v6;
    v10 = sub_220BCDB70();
    if (v7)
    {
      v11 = sub_220BCDB70();
    }

    else
    {
      v11 = 0;
    }

    [v8 tipViewed:v10 collectionIdentifier:v11];
  }
}

void sub_220B97D40(void *a1)
{
  v2 = v1;
  v4 = sub_220BCBFF0();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v28 - v10;
  MEMORY[0x28223BE20](v9);
  v13 = &v28 - v12;
  v14 = *(v2 + 120);
  if (!v14)
  {
LABEL_4:
    if (a1)
    {
      goto LABEL_5;
    }

LABEL_10:
    v21 = 0;
    goto LABEL_11;
  }

  v15 = v14;
  v16 = [v15 date];
  if (v16)
  {
    v17 = v16;
    sub_220BCBFD0();

    (*(v5 + 32))(v13, v11, v4);
    sub_220BCBFE0();
    sub_220BCBFC0();
    v19 = v18;
    v20 = *(v5 + 8);
    v20(v8, v4);
    [v15 setTimeSpent_];
    [v15 log];

    v20(v13, v4);
    goto LABEL_4;
  }

  if (!a1)
  {
    goto LABEL_10;
  }

LABEL_5:
  v21 = *(v2 + 32);
  if (v21)
  {
    v22 = a1;

    v23 = [v22 identifier];
    if (!v23)
    {
      sub_220BCDBA0();
      v23 = sub_220BCDB70();
    }

    v24 = objc_opt_self();
    v25 = sub_220BCDB70();

    v26 = [v22 correlationID];

    v21 = [v24 eventWithTipID:v23 collectionID:v25 correlationID:v26];
  }

LABEL_11:
  v27 = *(v2 + 120);
  *(v2 + 120) = v21;
}

uint64_t block_copy_helper_6(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_220B98020()
{
  result = qword_2812C0968;
  if (!qword_2812C0968)
  {
    sub_220BCD550();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812C0968);
  }

  return result;
}

unint64_t sub_220B98078()
{
  result = qword_2812C0950;
  if (!qword_2812C0950)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CF77168);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812C0950);
  }

  return result;
}

void sub_220B980DC()
{
  v1 = v0;
  v2 = sub_220BCBFF0();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v20 - v8;
  MEMORY[0x28223BE20](v7);
  v11 = &v20 - v10;
  v12 = *(v1 + 120);
  if (v12)
  {
    v13 = v12;
    v14 = [v13 date];
    if (v14)
    {
      v15 = v14;
      sub_220BCBFD0();

      (*(v3 + 32))(v11, v9, v2);
      sub_220BCBFE0();
      sub_220BCBFC0();
      v17 = v16;
      v18 = *(v3 + 8);
      v18(v6, v2);
      [v13 setTimeSpent_];
      [v13 log];

      v18(v11, v2);
    }

    else
    {
    }
  }

  v19 = *(v1 + 120);
  *(v1 + 120) = 0;
}

void sub_220B982AC()
{
  swift_beginAccess();
  v1 = v0[6];
  if (v1)
  {
    v2 = HIBYTE(v1) & 0xF;
    if ((v1 & 0x2000000000000000) == 0)
    {
      v2 = v0[5] & 0xFFFFFFFFFFFFLL;
    }

    if (v2)
    {
      v3 = objc_allocWithZone(MEMORY[0x277D717B0]);

      v4 = [v3 init];
      v5 = sub_220BCDB70();

      [v4 setIdentifier_];

      swift_beginAccess();
      if (v0[12])
      {

        v6 = sub_220BCDB70();
      }

      else
      {
        v6 = 0;
      }

      [v4 setCorrelationID_];

      v7 = v4;
      sub_220B97D40(v4);
    }
  }
}

__n128 __swift_memcpy104_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 96) = *(a2 + 12);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_220B98824(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 104))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 72);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_220B9886C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 104) = 1;
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
      *(result + 72) = (a2 - 1);
      return result;
    }

    *(result + 104) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_220B988F0@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_220BCC9D0();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v20[9] = *(v1 + 25);
  v7 = v1[1];
  v19 = *v1;
  *v20 = v7;
  v8 = v19;
  if (v20[24] == 1)
  {
    v9 = *&v20[16];
    v10 = *&v20[8];
    v11 = v20[0];
    v12 = *(&v19 + 1);
    sub_220B3A13C(v19);
  }

  else
  {

    sub_220BCDDC0();
    v14 = sub_220BCCD50();
    sub_220BCC3C0();

    sub_220BCC9C0();
    swift_getAtKeyPath();
    sub_220B463F4(&v19, &qword_27CF77C90);
    result = (*(v4 + 8))(v6, v3);
    v8 = v15[1];
    v12 = v15[2];
    v11 = v16;
    v10 = v17;
    v9 = v18;
  }

  *a1 = v8;
  *(a1 + 8) = v12;
  *(a1 + 16) = v11 & 1;
  *(a1 + 24) = v10;
  *(a1 + 32) = v9;
  return result;
}

double sub_220B98AAC@<D0>(_OWORD *a1@<X8>)
{
  v2 = v1;
  v42 = *(v1 + 64);
  LOBYTE(v43) = *(v1 + 80);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF76D58);
  MEMORY[0x223D92130](&v28, v4);
  if (v28 == 1)
  {
    v5 = swift_allocObject();
    v6 = *(v2 + 80);
    *(v5 + 80) = *(v2 + 64);
    *(v5 + 96) = v6;
    *(v5 + 112) = *(v2 + 96);
    v7 = *(v2 + 16);
    *(v5 + 16) = *v2;
    *(v5 + 32) = v7;
    v8 = *(v2 + 48);
    *(v5 + 48) = *(v2 + 32);
    *(v5 + 64) = v8;
    sub_220B99930(v2, &v42);
    sub_220BCD460();
    sub_220BCC6C0();
    v9 = v36;
    v10 = v38;
    v11 = v40;
    v12 = v41;
    v27 = v37;
    v26 = v39;
    v13 = swift_allocObject();
    v14 = *(v2 + 80);
    *(v13 + 80) = *(v2 + 64);
    *(v13 + 96) = v14;
    *(v13 + 112) = *(v2 + 96);
    v15 = *(v2 + 16);
    *(v13 + 16) = *v2;
    *(v13 + 32) = v15;
    v16 = *(v2 + 48);
    *(v13 + 48) = *(v2 + 32);
    *(v13 + 64) = v16;
    v17 = swift_allocObject();
    v18 = *(v2 + 80);
    *(v17 + 80) = *(v2 + 64);
    *(v17 + 96) = v18;
    *(v17 + 112) = *(v2 + 96);
    v19 = *(v2 + 16);
    *(v17 + 16) = *v2;
    *(v17 + 32) = v19;
    v20 = *(v2 + 48);
    *(v17 + 48) = *(v2 + 32);
    *(v17 + 64) = v20;
    *&v28 = sub_220B99928;
    *(&v28 + 1) = v5;
    *&v29 = v9;
    BYTE8(v29) = v27;
    *&v30 = v10;
    BYTE8(v30) = v26;
    *&v31 = v11;
    *(&v31 + 1) = v12;
    *&v32 = sub_220B99968;
    *(&v32 + 1) = v13;
    v33 = 0uLL;
    *&v34 = &unk_220BD48A8;
    *(&v34 + 1) = v17;
    LOBYTE(v35) = 0;
    *(&v35 + 1) = 0;
    nullsub_1(&v28);
    sub_220B99930(v2, &v42);
    sub_220B99930(v2, &v42);
    v46 = v32;
    v47 = v33;
    v48 = v34;
    v49 = v35;
    v42 = v28;
    v43 = v29;
    v44 = v30;
    v45 = v31;
  }

  else
  {
    sub_220B99910(&v42);
  }

  v21 = v47;
  a1[4] = v46;
  a1[5] = v21;
  v22 = v49;
  a1[6] = v48;
  a1[7] = v22;
  v23 = v43;
  *a1 = v42;
  a1[1] = v23;
  result = *&v44;
  v25 = v45;
  a1[2] = v44;
  a1[3] = v25;
  return result;
}

uint64_t sub_220B98CF4(uint64_t a1)
{
  v1[11] = a1;
  v2 = sub_220BCE050();
  v1[12] = v2;
  v1[13] = *(v2 - 8);
  v1[14] = swift_task_alloc();
  sub_220BCDD00();
  v1[15] = sub_220BCDCF0();
  v4 = sub_220BCDCB0();
  v1[16] = v4;
  v1[17] = v3;

  return MEMORY[0x2822009F8](sub_220B98DE8, v4, v3);
}

uint64_t sub_220B98DE8()
{
  sub_220B988F0((v0 + 2));
  sub_220B3A128(v0[2]);
  v0[10] = v0[5];
  sub_220B463F4((v0 + 10), &qword_27CF772F8);
  v1 = sub_220BCE250();
  v3 = v2;
  sub_220BCE1A0();
  v4 = swift_task_alloc();
  v0[18] = v4;
  *v4 = v0;
  v4[1] = sub_220B98F00;

  return sub_220B99A60(v1, v3, 0, 0, 1);
}

uint64_t sub_220B98F00()
{
  v3 = *v1;
  v2 = *v1;

  v4 = v2[14];
  v5 = v2[13];
  v6 = v2[12];
  if (v0)
  {

    (*(v5 + 8))(v4, v6);
    v7 = v3[16];
    v8 = v3[17];
    v9 = sub_220B9A308;
  }

  else
  {
    (*(v5 + 8))(v4, v6);
    v7 = v3[16];
    v8 = v3[17];
    v9 = sub_220B99094;
  }

  return MEMORY[0x2822009F8](v9, v7, v8);
}

uint64_t sub_220B99094()
{
  v1 = *(v0 + 88);

  v2 = *(v1 + 64);
  *(v0 + 72) = *(v1 + 80);
  *(v0 + 56) = v2;
  *(v0 + 73) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF76D58);
  sub_220BCD3A0();

  v3 = *(v0 + 8);

  return v3();
}

__n128 sub_220B99144@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF77C98);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v12 - v5;
  *v6 = sub_220BCCB20();
  *(v6 + 1) = 0x4024000000000000;
  v6[16] = 0;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF77CA0);
  sub_220B992AC(a1, &v6[*(v7 + 44)]);
  sub_220BCD470();
  sub_220BCC880();
  sub_220B46540(v6, a2, &qword_27CF77C98);
  v8 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF77CA8) + 36);
  v9 = v12[5];
  *(v8 + 64) = v12[4];
  *(v8 + 80) = v9;
  *(v8 + 96) = v12[6];
  v10 = v12[1];
  *v8 = v12[0];
  *(v8 + 16) = v10;
  result = v12[3];
  *(v8 + 32) = v12[2];
  *(v8 + 48) = result;
  return result;
}

uint64_t sub_220B992AC@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v28 = a1;
  v29 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF77CB0);
  v3 = v2 - 8;
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v26 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF77CB8);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v26 - v14;
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v26 - v17;
  MEMORY[0x28223BE20](v16);
  v20 = &v26 - v19;
  sub_220B995B8(&v26 - v19);
  sub_220B995B8(v18);
  sub_220B995B8(v8);
  sub_220BCC6E0();
  sub_220BCD460();
  sub_220BCC6C0();
  v21 = &v8[*(v3 + 44)];
  v22 = v31;
  *v21 = v30;
  *(v21 + 1) = v22;
  *(v21 + 2) = v32;
  v27 = v15;
  sub_220B462DC(v20, v15, &qword_27CF77CB8);
  sub_220B462DC(v18, v12, &qword_27CF77CB8);
  sub_220B462DC(v8, v6, &qword_27CF77CB0);
  v23 = v29;
  sub_220B462DC(v15, v29, &qword_27CF77CB8);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF77CC0);
  sub_220B462DC(v12, v23 + *(v24 + 48), &qword_27CF77CB8);
  sub_220B462DC(v6, v23 + *(v24 + 64), &qword_27CF77CB0);
  sub_220B463F4(v8, &qword_27CF77CB0);
  sub_220B463F4(v18, &qword_27CF77CB8);
  sub_220B463F4(v20, &qword_27CF77CB8);
  sub_220B463F4(v6, &qword_27CF77CB0);
  sub_220B463F4(v12, &qword_27CF77CB8);
  return sub_220B463F4(v27, &qword_27CF77CB8);
}

double sub_220B995B8@<D0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_220BCC870();
  v5 = v4 - 8;
  MEMORY[0x28223BE20](v4);
  v7 = v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF77CC8);
  MEMORY[0x28223BE20](v8);
  v10 = v25 - v9;
  v11 = *(v5 + 28);
  v12 = *MEMORY[0x277CE0118];
  v13 = sub_220BCCAC0();
  (*(*(v13 - 8) + 104))(&v7[v11], v12, v13);
  __asm { FMOV            V0.2D, #3.0 }

  *v7 = _Q0;
  sub_220B988F0(v25);
  sub_220B3A128(v25[0]);
  v28 = *(v2 + 48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF77368);
  sub_220BCD2F0();
  v28 = *(v2 + 48);
  sub_220BCD2F0();
  MEMORY[0x223D921C0](v25[3]);
  sub_220BCC790();
  v19 = v25[5];
  sub_220B99FC4(v7, v10);
  v20 = &v10[*(v8 + 36)];
  *v20 = v19;
  v21 = v26;
  *(v20 + 24) = v27;
  *(v20 + 8) = v21;
  sub_220BCD460();
  sub_220BCC6C0();
  sub_220B46540(v10, a1, &qword_27CF77CC8);
  v22 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF77CB8) + 36));
  v23 = v29;
  *v22 = v28;
  v22[1] = v23;
  result = *&v30;
  v22[2] = v30;
  return result;
}

uint64_t sub_220B99820()
{
  sub_220BCD4C0();
  sub_220BCD4A0();

  sub_220BCD490();

  sub_220BCC760();
}

double sub_220B99910(_OWORD *a1)
{
  result = 0.0;
  a1[6] = 0u;
  a1[7] = 0u;
  a1[4] = 0u;
  a1[5] = 0u;
  a1[2] = 0u;
  a1[3] = 0u;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

uint64_t objectdestroyTm_4()
{
  sub_220B680EC(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56));

  return MEMORY[0x2821FE8E8](v0, 120, 7);
}

uint64_t sub_220B999CC()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_220B4EA34;

  return sub_220B98CF4(v0 + 16);
}

uint64_t sub_220B99A60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 56) = v5;
  v12 = sub_220BCE040();
  *(v6 + 64) = v12;
  *(v6 + 72) = *(v12 - 8);
  *(v6 + 80) = swift_task_alloc();
  *(v6 + 88) = swift_task_alloc();
  *(v6 + 40) = a1;
  *(v6 + 48) = a2;
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;
  *(v6 + 32) = a5 & 1;

  return MEMORY[0x2822009F8](sub_220B99B60, 0, 0);
}

uint64_t sub_220B99B60()
{
  v1 = v0[10];
  v2 = v0[8];
  v3 = v0[9];
  v4 = sub_220BCE050();
  v5 = sub_220B99F18(&qword_27CF77C80, MEMORY[0x277D85928]);
  sub_220BCE180();
  sub_220B99F18(&qword_27CF77C88, MEMORY[0x277D858F8]);
  sub_220BCE060();
  v6 = *(v3 + 8);
  v0[12] = v6;
  v0[13] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v1, v2);
  v7 = swift_task_alloc();
  v0[14] = v7;
  *v7 = v0;
  v7[1] = sub_220B99CF0;
  v8 = v0[11];

  return MEMORY[0x2822008C8](v8, v0 + 2, v4, v5);
}

uint64_t sub_220B99CF0()
{
  v2 = *(*v1 + 96);
  v3 = *(*v1 + 88);
  v4 = *(*v1 + 64);
  v5 = *v1;
  *(v5 + 120) = v0;

  v2(v3, v4);
  if (v0)
  {

    return MEMORY[0x2822009F8](sub_220B99EAC, 0, 0);
  }

  else
  {

    v6 = *(v5 + 8);

    return v6();
  }
}

uint64_t sub_220B99EAC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_220B99F18(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_220B99FC4(uint64_t a1, uint64_t a2)
{
  v4 = sub_220BCC870();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_220B9A028()
{
  result = qword_27CF77CD0;
  if (!qword_27CF77CD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CF77CD8);
    sub_220B9A0AC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF77CD0);
  }

  return result;
}

unint64_t sub_220B9A0AC()
{
  result = qword_27CF77CE0;
  if (!qword_27CF77CE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CF77CE8);
    sub_220B9A138();
    sub_220B9A2B4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF77CE0);
  }

  return result;
}

unint64_t sub_220B9A138()
{
  result = qword_27CF77CF0;
  if (!qword_27CF77CF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CF77CF8);
    sub_220B9A1C4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF77CF0);
  }

  return result;
}

unint64_t sub_220B9A1C4()
{
  result = qword_27CF77D00;
  if (!qword_27CF77D00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CF77D08);
    sub_220B9A250();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF77D00);
  }

  return result;
}

unint64_t sub_220B9A250()
{
  result = qword_27CF77D10;
  if (!qword_27CF77D10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CF77D18);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF77D10);
  }

  return result;
}

unint64_t sub_220B9A2B4()
{
  result = qword_27CF77D20;
  if (!qword_27CF77D20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF77D20);
  }

  return result;
}

void *sub_220B9A30C(uint64_t a1)
{
  v2 = v1;
  v66 = sub_220BCD630();
  v71 = *(v66 - 8);
  MEMORY[0x28223BE20](v66);
  v65 = &v48 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = sub_220BCC1D0();
  v5 = *(v57 - 8);
  MEMORY[0x28223BE20](v57);
  v56 = &v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = sub_220BCC240();
  v7 = *(v52 - 8);
  MEMORY[0x28223BE20](v52);
  v51 = &v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF775E0);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v67 = &v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = &v48 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF76D78);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v48 - v15;
  v73 = type metadata accessor for AttributionItem();
  v17 = *(v73 - 8);
  v18 = MEMORY[0x28223BE20](v73);
  v72 = &v48 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v61 = &v48 - v20;
  v74 = sub_220BCC110();
  v21 = *(v74 - 8);
  MEMORY[0x28223BE20](v74);
  v23 = &v48 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = *(a1 + 16);
  v58 = v2;

  if (v24)
  {
    v26 = *(v21 + 16);
    v25 = v21 + 16;
    v70 = v26;
    v27 = v5;
    v28 = a1 + ((*(v25 + 64) + 32) & ~*(v25 + 64));
    v69 = *(v25 + 56);
    v59 = *MEMORY[0x277D38DC8];
    v55 = *MEMORY[0x277D38DD0];
    v50 = (v7 + 32);
    v49 = (v7 + 8);
    v54 = (v27 + 32);
    v53 = (v27 + 8);
    v63 = (v71 + 8);
    v64 = "supportedAppInfoProvider";
    v62 = (v17 + 56);
    v71 = v25;
    v68 = (v25 - 8);
    v60 = v17;
    v29 = (v17 + 48);
    v30 = MEMORY[0x277D84F90];
    v31 = v67;
    v26(v23, v28, v74);
    while (1)
    {
      sub_220BCC100();
      v32 = sub_220BCC0F0();
      v33 = *(v32 - 8);
      if ((*(v33 + 48))(v13, 1, v32) == 1)
      {
        goto LABEL_7;
      }

      sub_220B9B600(v13, v31);
      v36 = (*(v33 + 88))(v31, v32);
      if (v36 == v59)
      {
        (*(v33 + 96))(v31, v32);
        v37 = v56;
        v38 = v57;
        (*v54)(v56, v67, v57);
        sub_220B9AF5C(v16);
        v39 = v37;
        v31 = v67;
        (*v53)(v39, v38);
      }

      else
      {
        if (v36 != v55)
        {
          (*(v33 + 8))(v31, v32);
LABEL_7:
          v34 = v65;
          sub_220BCD620();
          sub_220BCD9E0();
          (*v63)(v34, v66);
          v35 = v73;
          (*v62)(v16, 1, 1, v73);
          goto LABEL_13;
        }

        (*(v33 + 96))(v31, v32);
        v40 = v51;
        v41 = v31;
        v42 = v52;
        (*v50)(v51, v41, v52);
        sub_220B9ABA4(v16);
        v43 = v42;
        v31 = v67;
        (*v49)(v40, v43);
      }

      v35 = v73;
LABEL_13:
      sub_220B463F4(v13, &qword_27CF775E0);
      (*v68)(v23, v74);
      if ((*v29)(v16, 1, v35) == 1)
      {
        sub_220B463F4(v16, &qword_27CF76D78);
      }

      else
      {
        v44 = v61;
        sub_220B9AB40(v16, v61);
        sub_220B9AB40(v44, v72);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v30 = sub_220B9B428(0, v30[2] + 1, 1, v30);
        }

        v46 = v30[2];
        v45 = v30[3];
        if (v46 >= v45 >> 1)
        {
          v30 = sub_220B9B428(v45 > 1, v46 + 1, 1, v30);
        }

        v30[2] = v46 + 1;
        sub_220B9AB40(v72, v30 + ((*(v60 + 80) + 32) & ~*(v60 + 80)) + *(v60 + 72) * v46);
      }

      v28 += v69;
      if (!--v24)
      {
        goto LABEL_21;
      }

      v70(v23, v28, v74);
    }
  }

  v30 = MEMORY[0x277D84F90];
LABEL_21:

  return v30;
}

uint64_t sub_220B9AAE4()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  return MEMORY[0x2821FE8D8](v0, 56, 7);
}

uint64_t sub_220B9AB40(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AttributionItem();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_220B9ABA4@<X0>(uint64_t *a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF76C90);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v31 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF77D28);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v31 - v6;
  v8 = sub_220BCC080();
  MEMORY[0x28223BE20](v8 - 8);
  v9 = sub_220BCDB60();
  MEMORY[0x28223BE20](v9 - 8);
  sub_220B6AECC();
  v10 = sub_220BCDEC0();
  if (!v10)
  {
    v10 = [objc_opt_self() mainBundle];
  }

  v11 = v10;
  sub_220BCDB50();
  v12 = v11;
  sub_220BCC050();
  v13 = sub_220BCDBC0();
  v34 = v14;
  v35 = v13;
  v15 = sub_220BCC160();
  v32 = v16;
  v33 = v15;
  sub_220BCC1B0();
  sub_220BCBEA0();

  v17 = sub_220BCBEC0();
  v18 = *(v17 - 8);
  if ((*(v18 + 48))(v7, 1, v17) == 1)
  {
    sub_220B463F4(v7, &qword_27CF77D28);
LABEL_6:

    v19 = 0;
    v21 = 0xE000000000000000;
    goto LABEL_7;
  }

  v19 = sub_220BCBE90();
  v21 = v20;
  (*(v18 + 8))(v7, v17);
  if (!v21)
  {
    goto LABEL_6;
  }

LABEL_7:
  v22 = sub_220BCC1C0();
  v24 = v23;
  sub_220BCC1B0();
  sub_220BCBF40();

  v25 = type metadata accessor for AttributionItem();
  v26 = *(v25 + 32);
  v27 = sub_220BCBF80();
  (*(*(v27 - 8) + 56))(a1 + v26, 1, 1, v27);
  *a1 = v22;
  a1[1] = v24;
  v28 = v34;
  a1[2] = v35;
  a1[3] = v28;
  v29 = v32;
  a1[4] = v33;
  a1[5] = v29;
  a1[6] = v19;
  a1[7] = v21;
  sub_220B55518(v4, a1 + v26);
  return (*(*(v25 - 8) + 56))(a1, 0, 1, v25);
}

uint64_t sub_220B9AF5C@<X0>(char *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF77D28);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v42 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF76C90);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v45 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v42 - v10;
  MEMORY[0x28223BE20](v9);
  v44 = &v42 - v12;
  v13 = __swift_project_boxed_opaque_existential_1((v1 + 16), *(v1 + 40));
  v14 = sub_220BCC1C0();
  v15 = *(*v13 + 16);
  v48[0] = v14;
  v48[1] = v16;
  v47 = v48;

  v17 = sub_220B9DEE8(sub_220B6CF1C, v46, v15);

  sub_220BCC190();
  sub_220BCBEA0();

  v18 = sub_220BCBEC0();
  v19 = *(v18 - 8);
  if ((*(v19 + 48))(v5, 1, v18) == 1)
  {
    sub_220B463F4(v5, &qword_27CF77D28);
    v20 = 0;
    if ((v17 & 1) == 0)
    {
LABEL_3:

      goto LABEL_7;
    }
  }

  else
  {
    v20 = sub_220BCBEB0();
    (*(v19 + 8))(v5, v18);
    if ((v17 & 1) == 0)
    {
      goto LABEL_3;
    }
  }

  v43 = v20;
  sub_220BCC1C0();
  sub_220BCC1B0();
  sub_220BCDAE0();
  sub_220BCDBA0();
  sub_220BCDAC0();

  v21 = sub_220BCBF80();
  v22 = *(v21 - 8);
  if ((*(v22 + 48))(v11, 1, v21) != 1)
  {
    v23 = v44;
    (*(v22 + 32))(v44, v11, v21);
    (*(v22 + 56))(v23, 0, 1, v21);
    goto LABEL_9;
  }

  sub_220B463F4(v11, &qword_27CF76C90);
LABEL_7:
  v23 = v44;
  sub_220BCC190();
  sub_220BCBF40();

LABEL_9:
  v24 = sub_220BCC1B0();
  v43 = v25;
  v44 = v24;
  v26 = sub_220BCC180();
  v28 = v27;
  v29 = sub_220BCC160();
  v31 = v30;
  v32 = sub_220BCC180();
  v34 = v33;
  v35 = v23;
  v36 = v45;
  sub_220B58ECC(v35, v45);
  v37 = type metadata accessor for AttributionItem();
  v38 = *(v37 + 32);
  v39 = sub_220BCBF80();
  (*(*(v39 - 8) + 56))(&a1[v38], 1, 1, v39);
  v40 = v43;
  *a1 = v44;
  *(a1 + 1) = v40;
  *(a1 + 2) = v26;
  *(a1 + 3) = v28;
  *(a1 + 4) = v29;
  *(a1 + 5) = v31;
  *(a1 + 6) = v32;
  *(a1 + 7) = v34;
  sub_220B55518(v36, &a1[v38]);
  return (*(*(v37 - 8) + 56))(a1, 0, 1, v37);
}

size_t sub_220B9B428(size_t result, int64_t a2, char a3, void *a4)
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
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF77D30);
  v10 = *(type metadata accessor for AttributionItem() - 8);
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
  v15 = *(type metadata accessor for AttributionItem() - 8);
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

uint64_t sub_220B9B600(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF775E0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t type metadata accessor for LineByLineRevealModifier()
{
  result = qword_27CF77D38;
  if (!qword_27CF77D38)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_220B9B728()
{
  sub_220B5E340();
  if (v0 <= 0x3F)
  {
    sub_220B9B7C4();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_220B9B7C4()
{
  if (!qword_27CF77098)
  {
    v0 = sub_220BCD320();
    if (!v1)
    {
      atomic_store(v0, &qword_27CF77098);
    }
  }
}

uint64_t sub_220B9B830@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_220BCC9D0();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF770A8);
  MEMORY[0x28223BE20](v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for LineByLineRevealModifier();
  sub_220B462DC(v1 + *(v10 + 20), v9, &qword_27CF770A8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_220BCC830();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_220BCDDC0();
    v13 = sub_220BCCD50();
    sub_220BCC3C0();

    sub_220BCC9C0();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_220B9BA38()
{
  type metadata accessor for LineByLineRevealModifier();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF77D80);
  sub_220BCD2F0();
  result = sub_220BCD2F0();
  v1 = v2 / v2;
  if (COERCE__INT64(fabs(v2 / v2)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (v1 <= -9.22337204e18)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v1 >= 9.22337204e18)
  {
LABEL_9:
    __break(1u);
    return result;
  }

  if (v1 <= 1)
  {
    return 1;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_220B9BB3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v43 = a1;
  v46 = a2;
  v3 = type metadata accessor for LineByLineRevealModifier();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = v5;
  v7 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_220BCC830();
  v8 = *(v41 - 8);
  MEMORY[0x28223BE20](v41);
  v10 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF77D48);
  v12 = v11 - 8;
  MEMORY[0x28223BE20](v11);
  v40 = &v37 - v13;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF77D50) - 8;
  MEMORY[0x28223BE20](v45);
  v44 = &v37 - v14;
  v39 = v2;
  sub_220B9B830(v10);
  v37 = v7;
  sub_220B9D014(v2, v7);
  v38 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v15 = v38;
  v42 = v6;
  v16 = swift_allocObject();
  sub_220B9D078(v7, v16 + v15);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF77D58);
  sub_220B43830(&qword_27CF77D60, &qword_27CF77D58);
  sub_220B9D48C(&qword_27CF77D68, MEMORY[0x277CDFA28]);
  v17 = v40;
  v18 = v41;
  sub_220BCD120();

  (*(v8 + 8))(v10, v18);
  v19 = v39;
  v20 = v37;
  sub_220B9D014(v39, v37);
  v21 = v38;
  v22 = swift_allocObject();
  v23 = v21;
  sub_220B9D078(v20, v22 + v21);
  v24 = (v17 + *(v12 + 44));
  *v24 = sub_220B9C180;
  v24[1] = 0;
  v24[2] = sub_220B9D15C;
  v24[3] = v22;
  v25 = sub_220BCD450();
  v27 = v26;
  sub_220B9C224(v19, v48);
  memcpy(v50, v48, 0x111uLL);
  memcpy(v51, v48, 0x111uLL);
  sub_220B462DC(v50, v47, &qword_27CF77D70);
  sub_220B463F4(v51, &qword_27CF77D70);
  memcpy(v48, v50, 0x111uLL);
  sub_220BCD450();
  sub_220BCC880();
  *&v49[55] = v47[3];
  *&v49[71] = v47[4];
  *&v49[87] = v47[5];
  *&v49[103] = v47[6];
  *&v49[7] = v47[0];
  *&v49[23] = v47[1];
  *&v49[39] = v47[2];
  v28 = v44;
  sub_220B46540(v17, v44, &qword_27CF77D48);
  v29 = v28 + *(v45 + 44);
  *v29 = v25;
  *(v29 + 8) = v27;
  memcpy((v29 + 16), v48, 0x111uLL);
  v30 = *&v49[80];
  *(v29 + 353) = *&v49[64];
  *(v29 + 369) = v30;
  *(v29 + 385) = *&v49[96];
  *(v29 + 400) = *&v49[111];
  v31 = *&v49[16];
  *(v29 + 289) = *v49;
  *(v29 + 305) = v31;
  v32 = *&v49[48];
  *(v29 + 321) = *&v49[32];
  *(v29 + 337) = v32;
  sub_220B9D014(v19, v20);
  v33 = swift_allocObject();
  sub_220B9D078(v20, v33 + v23);
  v34 = v46;
  sub_220B46540(v28, v46, &qword_27CF77D50);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF77D78);
  v36 = v34 + *(result + 36);
  *v36 = &unk_220BD4A50;
  *(v36 + 8) = v33;
  *(v36 + 16) = 0;
  *(v36 + 24) = 0;
  return result;
}

uint64_t sub_220B9C0C8()
{
  v0 = [objc_opt_self() preferredFontForTextStyle_];
  [v0 lineHeight];

  type metadata accessor for LineByLineRevealModifier();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF77D80);
  return sub_220BCD300();
}

uint64_t sub_220B9C180@<X0>(void *a1@<X8>)
{
  result = sub_220BCC6E0();
  *a1 = v3;
  return result;
}

uint64_t sub_220B9C1AC()
{
  type metadata accessor for LineByLineRevealModifier();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF77D80);
  return sub_220BCD300();
}

uint64_t sub_220B9C224@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for LineByLineRevealModifier();
  v5 = (a1 + v4[7]);
  v6 = *v5;
  v7 = v5[1];
  v61 = v6;
  v62 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF77D80);
  sub_220BCD2F0();
  v8 = (a1 + v4[6]);
  v9 = *v8;
  v10 = v8[1];
  sub_220BCD2F0();
  v61 = v9;
  v62 = v10;
  sub_220BCD2F0();
  v43 = v4;
  v44 = a1;
  if (*&v53 < 1.0)
  {
    v11 = (a1 + v4[8]);
    v12 = *v11;
    v13 = v11[1];
    v61 = v12;
    v62 = v13;
    sub_220BCD2F0();
  }

  v14 = 0.0;
  sub_220BCD460();
  sub_220BCC6C0();
  v48 = v87;
  v49 = v85;
  v46 = v90;
  v47 = v89;
  sub_220BCD450();
  sub_220BCC880();
  v50 = v88;
  v51 = v86;
  v84 = v86;
  v83 = v88;
  v61 = v9;
  v62 = v10;
  sub_220BCD2F0();
  v15 = 0;
  v16 = 0;
  v17 = 0;
  v18 = 0;
  v19 = 0;
  v20 = 0;
  v21 = 0;
  v22 = 0;
  v23 = 0;
  v24 = 0;
  v25 = 0;
  v26 = 0;
  if (*&v53 < 1.0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF772B8);
    v27 = swift_allocObject();
    *(v27 + 16) = xmmword_220BD37B0;
    sub_220BCD1F0();
    v28 = sub_220BCD1E0();

    *(v27 + 32) = v28;
    sub_220BCD1F0();
    v29 = sub_220BCD1E0();

    *(v27 + 40) = v29;
    *(v27 + 48) = sub_220BCD1B0();
    sub_220BCD520();
    sub_220BCD530();
    MEMORY[0x223D921C0](v27);
    sub_220BCC790();
    v30 = (v44 + v43[8]);
    v31 = *v30;
    v45 = v30[1];
    sub_220BCD2F0();
    sub_220BCD460();
    sub_220BCC6C0();
    v20 = v96;
    v21 = v97;
    v22 = v98;
    v23 = v99;
    v24 = v100;
    v25 = v101;
    sub_220BCD2F0();
    sub_220BCD2F0();
    v61 = v31;
    v62 = v45;
    sub_220BCD2F0();
    v19 = v95;
    v18 = v94;
    v17 = v93;
    v16 = v92;
    v15 = v91;
    if (*&v53 * *&v53 - *&v53 < 0.0)
    {
      v14 = 0.0;
    }

    else
    {
      v14 = *&v53 * *&v53 - *&v53;
    }

    v26 = 0x4014000000000000;
  }

  *&v53 = v15;
  *(&v53 + 1) = v16;
  *&v54 = v17;
  *(&v54 + 1) = v18;
  *&v55 = v19;
  *(&v55 + 1) = v20;
  *&v56 = v21;
  *(&v56 + 1) = v22;
  *&v57 = v23;
  *(&v57 + 1) = v24;
  v58 = v25;
  *&v59 = v14;
  *(&v59 + 1) = v26;
  v60 = 0;
  *a2 = v49;
  *(a2 + 8) = v51;
  *(a2 + 16) = v48;
  *(a2 + 24) = v50;
  *(a2 + 32) = v47;
  *(a2 + 40) = v46;
  v32 = v81;
  *(a2 + 112) = v80;
  *(a2 + 128) = v32;
  v33 = v82;
  v34 = v77;
  *(a2 + 48) = v76;
  *(a2 + 64) = v34;
  v35 = v79;
  *(a2 + 80) = v78;
  *(a2 + 96) = v35;
  v36 = v53;
  v37 = v55;
  *(a2 + 176) = v54;
  *(a2 + 192) = v37;
  *(a2 + 144) = v33;
  *(a2 + 160) = v36;
  v38 = v56;
  v39 = v57;
  v40 = v58;
  v41 = v59;
  *(a2 + 272) = v60;
  *(a2 + 240) = v40;
  *(a2 + 256) = v41;
  *(a2 + 208) = v38;
  *(a2 + 224) = v39;
  v61 = v15;
  v62 = v16;
  v63 = v17;
  v64 = v18;
  v65 = v19;
  v66 = v20;
  v67 = v21;
  v68 = v22;
  v69 = v23;
  v70 = v24;
  v71 = v25;
  v72 = 0;
  v73 = v14;
  v74 = v26;
  v75 = 0;
  sub_220B462DC(&v53, v52, &qword_27CF77D88);
  return sub_220B463F4(&v61, &qword_27CF77D88);
}

uint64_t sub_220B9C710(uint64_t a1)
{
  *(v1 + 16) = a1;
  sub_220BCDD00();
  *(v1 + 24) = sub_220BCDCF0();
  v3 = sub_220BCDCB0();

  return MEMORY[0x2822009F8](sub_220B9C7A8, v3, v2);
}

uint64_t sub_220B9C7A8()
{
  v1 = *(v0 + 16);

  if (*v1 == 1)
  {
    sub_220B9C81C();
  }

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_220B9C81C()
{
  v1 = v0;
  v45 = sub_220BCD550();
  v2 = *(v45 - 8);
  MEMORY[0x28223BE20](v45);
  v44 = &v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = sub_220BCD580();
  v4 = *(v43 - 8);
  MEMORY[0x28223BE20](v43);
  v42 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for LineByLineRevealModifier();
  v7 = v6 - 8;
  v41 = *(v6 - 8);
  v8 = *(v41 + 64);
  MEMORY[0x28223BE20](v6);
  v40 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = sub_220BCD5A0();
  v9 = *(v49 - 8);
  v10 = MEMORY[0x28223BE20](v49);
  v39 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v38 = &v32 - v12;
  v13 = (v1 + *(v7 + 32));
  v14 = *v13;
  v15 = v13[1];
  aBlock = v14;
  v51 = v15;
  v52[4] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF77D80);
  sub_220BCD300();
  v46 = v1;
  result = sub_220B9BA38();
  v17 = result - 1;
  if (result < 1)
  {
    __break(1u);
  }

  else
  {
    v18 = result;
    v37 = sub_220B60CE8();
    v36 = (v9 + 8);
    v35 = v8 + 7;
    v34 = v52;
    v33 = (v2 + 8);
    v32 = (v4 + 8);
    v19 = 1;
    while (1)
    {
      v47 = sub_220BCDE10();
      v20 = v39;
      sub_220BCD590();
      v21 = v38;
      sub_220BCD5E0();
      v48 = *v36;
      v48(v20, v49);
      v22 = v40;
      sub_220B9D014(v46, v40);
      v23 = (*(v41 + 80) + 16) & ~*(v41 + 80);
      v24 = (v35 + v23) & 0xFFFFFFFFFFFFFFF8;
      v25 = swift_allocObject();
      sub_220B9D078(v22, v25 + v23);
      *(v25 + v24) = v19 / v18;
      v52[2] = sub_220B9D3E8;
      v52[3] = v25;
      aBlock = MEMORY[0x277D85DD0];
      v51 = 1107296256;
      v52[0] = sub_220B61C68;
      v52[1] = &block_descriptor_7;
      v26 = _Block_copy(&aBlock);

      v27 = v42;
      sub_220BCD570();
      aBlock = MEMORY[0x277D84F90];
      sub_220B9D48C(&qword_2812C0968, MEMORY[0x277D85198]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF77168);
      sub_220B43830(&qword_2812C0950, &qword_27CF77168);
      v28 = v44;
      v29 = v45;
      sub_220BCDF50();
      v30 = v47;
      MEMORY[0x223D92B80](v21, v27, v28, v26);
      _Block_release(v26);

      (*v33)(v28, v29);
      (*v32)(v27, v43);
      result = (v48)(v21, v49);
      if (!v17)
      {
        break;
      }

      --v17;
      if (__OFADD__(v19++, 1))
      {
        __break(1u);
        return result;
      }
    }
  }

  return result;
}

uint64_t sub_220B9CDDC()
{
  sub_220BCD4B0();
  sub_220BCC760();
}

uint64_t sub_220B9CE60()
{
  type metadata accessor for LineByLineRevealModifier();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF77D80);
  return sub_220BCD300();
}

double sub_220B9CEE4@<D0>(char a1@<W0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  *a3 = a1;
  v5 = type metadata accessor for LineByLineRevealModifier();
  sub_220B9D4F4(a2, &a3[v5[5]]);
  v6 = &a3[v5[6]];
  sub_220BCD2E0();
  *v6 = v11;
  *(v6 + 1) = v12;
  v7 = &a3[v5[7]];
  sub_220BCD2E0();
  *v7 = v11;
  *(v7 + 1) = v12;
  v8 = &a3[v5[8]];
  v9 = [objc_opt_self() preferredFontForTextStyle_];
  [v9 lineHeight];

  sub_220BCD2E0();
  result = v11;
  *v8 = v11;
  *(v8 + 1) = v12;
  return result;
}

uint64_t sub_220B9D014(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LineByLineRevealModifier();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_220B9D078(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LineByLineRevealModifier();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_220B9D0DC()
{
  type metadata accessor for LineByLineRevealModifier();

  return sub_220B9C0C8();
}

uint64_t sub_220B9D15C()
{
  type metadata accessor for LineByLineRevealModifier();

  return sub_220B9C1AC();
}

uint64_t objectdestroyTm_5()
{
  v1 = type metadata accessor for LineByLineRevealModifier();
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = *(v1 + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF770A8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_220BCC830();
    (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);
  }

  else
  {
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_220B9D31C()
{
  v2 = *(type metadata accessor for LineByLineRevealModifier() - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_220B4EA34;

  return sub_220B9C710(v0 + v3);
}

uint64_t sub_220B9D3E8()
{
  type metadata accessor for LineByLineRevealModifier();

  return sub_220B9CDDC();
}

uint64_t block_copy_helper_7(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_220B9D48C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_220B9D4F4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF77070);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_220B9D564()
{
  result = qword_27CF77D90;
  if (!qword_27CF77D90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CF77D78);
    sub_220B9D5F0();
    sub_220B9A2B4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF77D90);
  }

  return result;
}

unint64_t sub_220B9D5F0()
{
  result = qword_27CF77D98;
  if (!qword_27CF77D98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CF77D50);
    sub_220B9D6A8();
    sub_220B43830(&qword_27CF77DB8, &qword_27CF77DC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF77D98);
  }

  return result;
}

unint64_t sub_220B9D6A8()
{
  result = qword_27CF77DA0;
  if (!qword_27CF77DA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CF77D48);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CF77D58);
    sub_220BCC830();
    sub_220B43830(&qword_27CF77D60, &qword_27CF77D58);
    sub_220B9D48C(&qword_27CF77D68, MEMORY[0x277CDFA28]);
    swift_getOpaqueTypeConformance2();
    sub_220B43830(&qword_27CF77DA8, &qword_27CF77DB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF77DA0);
  }

  return result;
}

id static TipsContentModel.shared()()
{
  v1 = qword_2812C2190;
  if ((qword_2812C2190 || (v2 = [objc_allocWithZone(v0) init], v3 = qword_2812C2190, qword_2812C2190 = v2, v3, (v1 = qword_2812C2190) != 0)) && (v4 = swift_dynamicCastClass()) != 0)
  {
    v5 = v4;
    v6 = v1;
    return v5;
  }

  else
  {
    v8 = objc_allocWithZone(v0);

    return [v8 init];
  }
}

uint64_t sub_220B9D8C4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      v10 = 1;
    }

    else
    {
      v3 = 0;
      do
      {
        v4 = *(a1 + v3 + 48);
        v6 = *(a1 + v3 + 32);
        v5 = *(a1 + v3 + 40);
        v7 = *(a2 + v3 + 32);
        v8 = *(a2 + v3 + 40);
        v9 = *(a2 + v3 + 48);
        sub_220B5E890(v6, v5, v4);

        sub_220B5E890(v7, v8, v9);

        v10 = sub_220BCCF40();
        sub_220B5E8DC(v7, v8, v9);

        sub_220B5E8DC(v6, v5, v4);

        if ((v10 & 1) == 0)
        {
          break;
        }

        v3 += 32;
        --v2;
      }

      while (v2);
    }
  }

  else
  {
    v10 = 0;
  }

  return v10 & 1;
}

uint64_t sub_220B9DA40(unint64_t a1, uint64_t a2, unint64_t *a3)
{
  v4 = a1;
  v5 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_44;
  }

  v6 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (!(a2 >> 62))
  {
    result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v6 != result)
    {
      goto LABEL_46;
    }

LABEL_5:
    if (!v6)
    {
      goto LABEL_29;
    }

    v8 = v4 & 0xFFFFFFFFFFFFFF8;
    v9 = (v4 & 0xFFFFFFFFFFFFFF8) + 32;
    if (v4 < 0)
    {
      v8 = v4;
    }

    if (v5)
    {
      v9 = v8;
    }

    v10 = a2 & 0xFFFFFFFFFFFFFF8;
    v11 = (a2 & 0xFFFFFFFFFFFFFF8) + 32;
    if (a2 < 0)
    {
      v10 = a2;
    }

    if (a2 >> 62)
    {
      v11 = v10;
    }

    if (v9 == v11)
    {
LABEL_29:
      v19 = 1;
      return v19 & 1;
    }

    if (v6 < 0)
    {
      __break(1u);
      return result;
    }

    v5 = sub_220B55458(0, a3);
    if (((a2 | v4) & 0xC000000000000001) != 0)
    {
      v12 = a2 & 0xC000000000000001;
      v13 = 4;
      while (1)
      {
        v14 = v13 - 4;
        v15 = v13 - 3;
        if (__OFADD__(v13 - 4, 1))
        {
          __break(1u);
LABEL_40:
          __break(1u);
          goto LABEL_41;
        }

        if ((v4 & 0xC000000000000001) != 0)
        {
          v16 = MEMORY[0x223D92D80](v13 - 4, v4);
          if (!v12)
          {
            goto LABEL_24;
          }
        }

        else
        {
          if (v14 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_42;
          }

          v16 = *(v4 + 8 * v13);
          if (!v12)
          {
LABEL_24:
            if (v14 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_43;
            }

            v17 = *(a2 + 8 * v13);
            goto LABEL_26;
          }
        }

        v17 = MEMORY[0x223D92D80](v13 - 4, a2);
LABEL_26:
        v18 = v17;
        v19 = sub_220BCDED0();

        if (v19)
        {
          ++v13;
          if (v15 != v6)
          {
            continue;
          }
        }

        return v19 & 1;
      }
    }

    v20 = (v4 + 32);
    v21 = (a2 + 32);
    v22 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v23 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v24 = v6 - 1;
    while (1)
    {
      if (!v22)
      {
        goto LABEL_40;
      }

      if (!v23)
      {
        break;
      }

      v26 = *v20++;
      v25 = v26;
      v27 = *v21++;
      a2 = v25;
      v4 = v27;
      v19 = sub_220BCDED0();

      v29 = v24-- != 0;
      if (v19)
      {
        --v23;
        --v22;
        if (v29)
        {
          continue;
        }
      }

      return v19 & 1;
    }

LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    v30 = a3;
    v31 = sub_220BCDF70();
    a3 = v30;
    v6 = v31;
  }

  v32 = a3;
  result = sub_220BCDF70();
  a3 = v32;
  if (v6 == result)
  {
    goto LABEL_5;
  }

LABEL_46:
  v19 = 0;
  return v19 & 1;
}

uint64_t sub_220B9DCA8(unint64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_44;
  }

  v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (!(a2 >> 62))
  {
    result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5 != result)
    {
      goto LABEL_46;
    }

LABEL_5:
    if (!v5)
    {
      goto LABEL_29;
    }

    v7 = v3 & 0xFFFFFFFFFFFFFF8;
    v8 = (v3 & 0xFFFFFFFFFFFFFF8) + 32;
    if (v3 < 0)
    {
      v7 = v3;
    }

    if (v4)
    {
      v8 = v7;
    }

    v9 = a2 & 0xFFFFFFFFFFFFFF8;
    v10 = (a2 & 0xFFFFFFFFFFFFFF8) + 32;
    if (a2 < 0)
    {
      v9 = a2;
    }

    if (a2 >> 62)
    {
      v10 = v9;
    }

    if (v8 == v10)
    {
LABEL_29:
      v18 = 1;
      return v18 & 1;
    }

    if (v5 < 0)
    {
      __break(1u);
      return result;
    }

    v4 = sub_220BCD8F0();
    if (((a2 | v3) & 0xC000000000000001) != 0)
    {
      v11 = a2 & 0xC000000000000001;
      v12 = 4;
      while (1)
      {
        v13 = v12 - 4;
        v14 = v12 - 3;
        if (__OFADD__(v12 - 4, 1))
        {
          __break(1u);
LABEL_40:
          __break(1u);
          goto LABEL_41;
        }

        if ((v3 & 0xC000000000000001) != 0)
        {
          v15 = MEMORY[0x223D92D80](v12 - 4, v3);
          if (!v11)
          {
            goto LABEL_24;
          }
        }

        else
        {
          if (v13 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_42;
          }

          v15 = *(v3 + 8 * v12);
          if (!v11)
          {
LABEL_24:
            if (v13 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_43;
            }

            v16 = *(a2 + 8 * v12);
            goto LABEL_26;
          }
        }

        v16 = MEMORY[0x223D92D80](v12 - 4, a2);
LABEL_26:
        v17 = v16;
        v18 = sub_220BCDED0();

        if (v18)
        {
          ++v12;
          if (v14 != v5)
          {
            continue;
          }
        }

        return v18 & 1;
      }
    }

    v19 = (v3 + 32);
    v20 = (a2 + 32);
    v21 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v22 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v23 = v5 - 1;
    while (1)
    {
      if (!v21)
      {
        goto LABEL_40;
      }

      if (!v22)
      {
        break;
      }

      v25 = *v19++;
      v24 = v25;
      v26 = *v20++;
      a2 = v24;
      v3 = v26;
      v18 = sub_220BCDED0();

      v28 = v23-- != 0;
      if (v18)
      {
        --v22;
        --v21;
        if (v28)
        {
          continue;
        }
      }

      return v18 & 1;
    }

LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    v5 = sub_220BCDF70();
  }

  result = sub_220BCDF70();
  if (v5 == result)
  {
    goto LABEL_5;
  }

LABEL_46:
  v18 = 0;
  return v18 & 1;
}

uint64_t sub_220B9DEE8(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = a1(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

uint64_t sub_220B9DF94@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC6TipsUI16TipsContentModel_colorScheme;
  swift_beginAccess();
  v5 = sub_220BCC5C0();
  return (*(*(v5 - 8) + 16))(a2, v3 + v4, v5);
}

uint64_t sub_220B9E020(uint64_t a1, uint64_t *a2)
{
  v4 = sub_220BCC5C0();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v7, a1, v4);
  v8 = *a2;
  v9 = OBJC_IVAR____TtC6TipsUI16TipsContentModel_colorScheme;
  swift_beginAccess();
  (*(v5 + 40))(v8 + v9, v7, v4);
  return swift_endAccess();
}

uint64_t sub_220B9E138@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC6TipsUI16TipsContentModel_colorScheme;
  swift_beginAccess();
  v4 = sub_220BCC5C0();
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

uint64_t sub_220B9E1C0(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC6TipsUI16TipsContentModel_colorScheme;
  swift_beginAccess();
  v4 = sub_220BCC5C0();
  (*(*(v4 - 8) + 40))(v1 + v3, a1, v4);
  return swift_endAccess();
}

void (*sub_220B9E34C(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
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
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC6TipsUI16TipsContentModel___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_220BA3B44(&qword_2812C2180, type metadata accessor for TipsContentModel);
  sub_220BCC300();

  *v4 = v1;
  swift_getKeyPath();
  sub_220BCC320();

  v4[7] = sub_220B9E2B0();
  return sub_220B9E484;
}

uint64_t sub_220B9E504(uint64_t a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_220BA3B44(&qword_2812C2180, type metadata accessor for TipsContentModel);
  sub_220BCC300();

  v4 = *a2;
  swift_beginAccess();
  return *(v2 + v4);
}

uint64_t sub_220B9E5E0(char a1, uint64_t *a2)
{
  v3 = a1 & 1;
  v4 = *a2;
  result = swift_beginAccess();
  if (*(v2 + v4) == v3)
  {
    *(v2 + v4) = v3;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_220BA3B44(&qword_2812C2180, type metadata accessor for TipsContentModel);
    sub_220BCC2F0();
  }

  return result;
}

void (*sub_220B9E6FC(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
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
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC6TipsUI16TipsContentModel___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_220BA3B44(&qword_2812C2180, type metadata accessor for TipsContentModel);
  sub_220BCC300();

  *v4 = v1;
  swift_getKeyPath();
  sub_220BCC320();

  v4[7] = sub_220B9E490();
  return sub_220B9E834;
}

uint64_t sub_220B9E8A0()
{
  swift_getKeyPath();
  sub_220BA3B44(&qword_2812C2180, type metadata accessor for TipsContentModel);
  sub_220BCC300();

  swift_beginAccess();
}

uint64_t sub_220B9E960(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC6TipsUI16TipsContentModel__collections;
  swift_beginAccess();

  v5 = sub_220B9DA40(v4, a1, &qword_2812C0930);

  if (v5)
  {
    *(v1 + v3) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_220BA3B44(&qword_2812C2180, type metadata accessor for TipsContentModel);
    sub_220BCC2F0();
  }
}

uint64_t sub_220B9EAC0(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC6TipsUI16TipsContentModel__collections;
  swift_beginAccess();
  *(a1 + v4) = a2;
}

void (*sub_220B9EB30(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
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
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC6TipsUI16TipsContentModel___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_220BA3B44(&qword_2812C2180, type metadata accessor for TipsContentModel);
  sub_220BCC300();

  *v4 = v1;
  swift_getKeyPath();
  sub_220BCC320();

  v4[7] = sub_220B9E840();
  return sub_220B9EC68;
}

void sub_220B9ECE8(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC6TipsUI16TipsContentModel__lastContentError;
  swift_beginAccess();
  v5 = *(v1 + v4);
  if (!v5)
  {
    if (!a1)
    {
      v9 = 0;
      goto LABEL_8;
    }

LABEL_6:
    swift_getKeyPath();
    MEMORY[0x28223BE20]();
    sub_220BA3B44(&qword_2812C2180, type metadata accessor for TipsContentModel);
    sub_220BCC2F0();

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  sub_220B55458(0, &qword_27CF77DC8);
  v6 = v5;
  v7 = a1;
  v8 = sub_220BCDED0();

  if ((v8 & 1) == 0)
  {
    goto LABEL_6;
  }

  v9 = *(v2 + v4);
LABEL_8:
  *(v2 + v4) = a1;
}

void (*sub_220B9EE74(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
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
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC6TipsUI16TipsContentModel___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_220BA3B44(&qword_2812C2180, type metadata accessor for TipsContentModel);
  sub_220BCC300();

  *v4 = v1;
  swift_getKeyPath();
  sub_220BCC320();

  v4[7] = sub_220B9EC74();
  return sub_220B9EFAC;
}

void sub_220B9F02C(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_220B9F12C(v1);
}

void *sub_220B9F070(uint64_t a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_220BA3B44(&qword_2812C2180, type metadata accessor for TipsContentModel);
  sub_220BCC300();

  v4 = *a2;
  swift_beginAccess();
  v5 = *(v2 + v4);
  v6 = v5;
  return v5;
}

void sub_220B9F12C(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC6TipsUI16TipsContentModel__currentCollection;
  swift_beginAccess();
  v5 = *(v1 + v4);
  if (!v5)
  {
    if (!a1)
    {
      v9 = 0;
      goto LABEL_8;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_220BA3B44(&qword_2812C2180, type metadata accessor for TipsContentModel);
    sub_220BCC2F0();

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  sub_220B55458(0, &qword_2812C0930);
  v6 = v5;
  v7 = a1;
  v8 = sub_220BCDED0();

  if ((v8 & 1) == 0)
  {
    goto LABEL_6;
  }

  v9 = *(v2 + v4);
LABEL_8:
  *(v2 + v4) = a1;
}

void (*sub_220B9F2B8(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
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
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC6TipsUI16TipsContentModel___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_220BA3B44(&qword_2812C2180, type metadata accessor for TipsContentModel);
  sub_220BCC300();

  *v4 = v1;
  swift_getKeyPath();
  sub_220BCC320();

  v4[7] = sub_220B9EFB8();
  return sub_220B9F3F0;
}

void sub_220B9F470(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC6TipsUI16TipsContentModel__currentTip;
  swift_beginAccess();
  v5 = *(v1 + v4);
  if (!v5)
  {
    if (!a1)
    {
      v9 = 0;
      goto LABEL_8;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_220BA3B44(&qword_2812C2180, type metadata accessor for TipsContentModel);
    sub_220BCC2F0();

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  sub_220B55458(0, &qword_2812C08B0);
  v6 = v5;
  v7 = a1;
  v8 = sub_220BCDED0();

  if ((v8 & 1) == 0)
  {
    goto LABEL_6;
  }

  v9 = *(v2 + v4);
LABEL_8:
  *(v2 + v4) = a1;
}

void (*sub_220B9F5FC(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
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
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC6TipsUI16TipsContentModel___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_220BA3B44(&qword_2812C2180, type metadata accessor for TipsContentModel);
  sub_220BCC300();

  *v4 = v1;
  swift_getKeyPath();
  sub_220BCC320();

  v4[7] = sub_220B9F3FC();
  return sub_220B9F734;
}

id sub_220B9F7B4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X4>, void *a3@<X8>)
{
  v5 = *a1;
  swift_getKeyPath();
  sub_220BA3B44(&qword_2812C2180, type metadata accessor for TipsContentModel);
  sub_220BCC300();

  v6 = *a2;
  swift_beginAccess();
  v7 = *(v5 + v6);
  *a3 = v7;

  return v7;
}

void sub_220B9F88C(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_220B9F8D0(v1);
}

void sub_220B9F8D0(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC6TipsUI16TipsContentModel__featuredCollection;
  swift_beginAccess();
  v5 = *(v1 + v4);
  if (!v5)
  {
    if (!a1)
    {
      v9 = 0;
      goto LABEL_8;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_220BA3B44(&qword_2812C2180, type metadata accessor for TipsContentModel);
    sub_220BCC2F0();

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  sub_220B55458(0, &qword_2812C0930);
  v6 = v5;
  v7 = a1;
  v8 = sub_220BCDED0();

  if ((v8 & 1) == 0)
  {
    goto LABEL_6;
  }

  v9 = *(v2 + v4);
LABEL_8:
  *(v2 + v4) = a1;
}

void sub_220B9FA5C(uint64_t a1, void *a2, uint64_t *a3)
{
  v5 = *a3;
  swift_beginAccess();
  v6 = *(a1 + v5);
  *(a1 + v5) = a2;
  v7 = a2;
}

void (*sub_220B9FAC8(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
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
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC6TipsUI16TipsContentModel___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_220BA3B44(&qword_2812C2180, type metadata accessor for TipsContentModel);
  sub_220BCC300();

  *v4 = v1;
  swift_getKeyPath();
  sub_220BCC320();

  v4[7] = sub_220B9F740();
  return sub_220B9FC00;
}

void (*sub_220B9FCE4(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
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
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC6TipsUI16TipsContentModel___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_220BA3B44(&qword_2812C2180, type metadata accessor for TipsContentModel);
  sub_220BCC300();

  *v4 = v1;
  swift_getKeyPath();
  sub_220BCC320();

  v4[7] = sub_220B9FC0C();
  return sub_220B9FE1C;
}

uint64_t sub_220B9FE9C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X4>, _BYTE *a3@<X8>)
{
  v5 = *a1;
  swift_getKeyPath();
  sub_220BA3B44(&qword_2812C2180, type metadata accessor for TipsContentModel);
  sub_220BCC300();

  v6 = *a2;
  result = swift_beginAccess();
  *a3 = *(v5 + v6);
  return result;
}

void (*sub_220B9FFC8(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
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
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC6TipsUI16TipsContentModel___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_220BA3B44(&qword_2812C2180, type metadata accessor for TipsContentModel);
  sub_220BCC300();

  *v4 = v1;
  swift_getKeyPath();
  sub_220BCC320();

  v4[7] = sub_220B9FE28();
  return sub_220BA0100;
}

uint64_t sub_220BA010C(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC6TipsUI16TipsContentModel_sharedVariantTip;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  v6 = v2;

  return sub_220BA0170();
}

uint64_t sub_220BA0170()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC6TipsUI16TipsContentModel_sharedVariantTip;
  swift_beginAccess();
  v3 = *(v1 + v2);
  v4 = OBJC_IVAR____TtC6TipsUI16TipsContentModel__shouldDisplaySharedVariant;
  swift_beginAccess();
  if (((v3 != 0) ^ *(v1 + v4)))
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_220BA3B44(&qword_2812C2180, type metadata accessor for TipsContentModel);
    sub_220BCC2F0();
  }

  else
  {
    *(v1 + v4) = v3 != 0;
  }

  swift_getKeyPath();
  sub_220BA3B44(&qword_2812C2180, type metadata accessor for TipsContentModel);
  sub_220BCC300();

  v6 = *(v1 + v4);
  v7 = OBJC_IVAR____TtC6TipsUI16TipsContentModel__isSharedVariant;
  result = swift_beginAccess();
  if (v6 == *(v1 + v7))
  {
    *(v1 + v7) = v6;
  }

  else
  {
    v9 = swift_getKeyPath();
    MEMORY[0x28223BE20](v9);
    sub_220BCC2F0();
  }

  return result;
}

void *sub_220BA03F8()
{
  v1 = OBJC_IVAR____TtC6TipsUI16TipsContentModel_sharedVariantTip;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_220BA0444(void *a1)
{
  v3 = OBJC_IVAR____TtC6TipsUI16TipsContentModel_sharedVariantTip;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  v5 = a1;

  sub_220BA0170();
}

uint64_t (*sub_220BA04AC(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_220BA0510;
}

uint64_t sub_220BA0510(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return sub_220BA0170();
  }

  return result;
}

uint64_t sub_220BA0544(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = (*a2 + OBJC_IVAR____TtC6TipsUI16TipsContentModel_pendingSharedVariantID);
  swift_beginAccess();
  *v4 = v3;
  v4[1] = v2;
}

uint64_t sub_220BA05B0()
{
  v1 = (v0 + OBJC_IVAR____TtC6TipsUI16TipsContentModel_pendingSharedVariantID);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

uint64_t sub_220BA0608(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC6TipsUI16TipsContentModel_pendingSharedVariantID);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
}

uint64_t sub_220BA06C8(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC6TipsUI16TipsContentModel_currentTipList;
  swift_beginAccess();
  *(v3 + v4) = v2;
}

uint64_t sub_220BA0778(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC6TipsUI16TipsContentModel_currentTipList;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

id sub_220BA0840()
{
  v1 = OBJC_IVAR____TtC6TipsUI16TipsContentModel____lazy_storage___featuredTipController;
  v2 = *(v0 + OBJC_IVAR____TtC6TipsUI16TipsContentModel____lazy_storage___featuredTipController);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC6TipsUI16TipsContentModel____lazy_storage___featuredTipController);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x277D717F0]) init];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

uint64_t type metadata accessor for TipsContentModel()
{
  result = qword_2812C2170;
  if (!qword_2812C2170)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void (*sub_220BA0A40(id *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = sub_220BA0840();
  return sub_220BA0A88;
}

void sub_220BA0A88(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = *(v1 + OBJC_IVAR____TtC6TipsUI16TipsContentModel____lazy_storage___featuredTipController);
  *(v1 + OBJC_IVAR____TtC6TipsUI16TipsContentModel____lazy_storage___featuredTipController) = v2;
}

void static TipsContentModel.appActive()()
{
  v0 = [objc_opt_self() sharedInstance];
  v1 = [v0 fullTipContentManager];

  [v1 tipsAppActive];
}

char *sub_220BA0B58()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC6TipsUI16TipsContentModel_colorScheme;
  v3 = *MEMORY[0x277CDF3D0];
  v4 = sub_220BCC5C0();
  (*(*(v4 - 8) + 104))(&v1[v2], v3, v4);
  v1[OBJC_IVAR____TtC6TipsUI16TipsContentModel__loading] = 0;
  v1[OBJC_IVAR____TtC6TipsUI16TipsContentModel__hasLoaded] = 0;
  *&v1[OBJC_IVAR____TtC6TipsUI16TipsContentModel__collections] = MEMORY[0x277D84F90];
  *&v1[OBJC_IVAR____TtC6TipsUI16TipsContentModel__lastContentError] = 0;
  *&v1[OBJC_IVAR____TtC6TipsUI16TipsContentModel__currentCollection] = 0;
  *&v1[OBJC_IVAR____TtC6TipsUI16TipsContentModel__currentTip] = 0;
  *&v1[OBJC_IVAR____TtC6TipsUI16TipsContentModel__featuredCollection] = 0;
  v1[OBJC_IVAR____TtC6TipsUI16TipsContentModel__isSharedVariant] = 0;
  v1[OBJC_IVAR____TtC6TipsUI16TipsContentModel__shouldDisplaySharedVariant] = 0;
  *&v1[OBJC_IVAR____TtC6TipsUI16TipsContentModel_sharedVariantTip] = 0;
  v5 = &v1[OBJC_IVAR____TtC6TipsUI16TipsContentModel_pendingSharedVariantID];
  *v5 = 0;
  v5[1] = 0;
  *&v1[OBJC_IVAR____TtC6TipsUI16TipsContentModel_currentTipList] = 0;
  v6 = OBJC_IVAR____TtC6TipsUI16TipsContentModel_prefetchingManager;
  *&v1[v6] = [objc_allocWithZone(TPSTipsAssetPrefetchingManager) init];
  v7 = OBJC_IVAR____TtC6TipsUI16TipsContentModel_appController;
  *&v1[v7] = [objc_opt_self() sharedInstance];
  *&v1[OBJC_IVAR____TtC6TipsUI16TipsContentModel____lazy_storage___featuredTipController] = 0;
  v8 = OBJC_IVAR____TtC6TipsUI16TipsContentModel_contentDidUpdate;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF76EC0);
  swift_allocObject();
  *&v1[v8] = sub_220BCC430();
  v9 = OBJC_IVAR____TtC6TipsUI16TipsContentModel_savedTipsContentDidUpdate;
  swift_allocObject();
  *&v1[v9] = sub_220BCC430();
  v10 = OBJC_IVAR____TtC6TipsUI16TipsContentModel_networkDidChangeToReachable;
  swift_allocObject();
  *&v1[v10] = sub_220BCC430();
  sub_220BCC330();
  v22.receiver = v1;
  v22.super_class = type metadata accessor for TipsContentModel();
  v11 = objc_msgSendSuper2(&v22, sel_init);
  v12 = objc_opt_self();
  v13 = v11;
  v14 = [v12 sharedInstance];
  v15 = objc_opt_self();
  v16 = [v15 defaultManager];
  [v16 setDelegate_];

  v17 = [v15 defaultManager];
  [v17 setDefaultSessionDelegate_];

  if ([objc_opt_self() isInternalDevice])
  {
    v18 = [objc_opt_self() defaultContext];
    v19 = [v15 defaultManager];
    v20 = [objc_allocWithZone(MEMORY[0x277D717D0]) initWithAuthenticationContext_];
    [v19 setAuthenticationHandler_];
  }

  [*&v13[OBJC_IVAR____TtC6TipsUI16TipsContentModel_appController] addDelegate_];

  return v13;
}

id sub_220BA0F04()
{
  v1 = [*(v0 + OBJC_IVAR____TtC6TipsUI16TipsContentModel_appController) mainUserGuide];

  return v1;
}

id sub_220BA0F44()
{
  v1 = [*(v0 + OBJC_IVAR____TtC6TipsUI16TipsContentModel_appController) savedTipsCollection];

  return v1;
}

id sub_220BA0F84()
{
  v1 = [*(v0 + OBJC_IVAR____TtC6TipsUI16TipsContentModel_appController) assetSizes];

  return v1;
}

id sub_220BA0FC4(char a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC6TipsUI16TipsContentModel__lastContentError;
  swift_beginAccess();
  if (*(v2 + v4))
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_220BA3B44(&qword_2812C2180, type metadata accessor for TipsContentModel);
    sub_220BCC2F0();
  }

  v6 = *(v2 + OBJC_IVAR____TtC6TipsUI16TipsContentModel_appController);
  [v6 setAlwaysShowIntro_];
  return [v6 updateContent];
}

void sub_220BA112C(void *a1, uint64_t a2, void (*a3)(void, id), uint64_t a4)
{
  v9 = sub_220BCBE60();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v4 + OBJC_IVAR____TtC6TipsUI16TipsContentModel_appController);
  v14 = [a1 fullContentAssets];
  v15 = [a1 language];
  if (!v15)
  {
    sub_220BCDBA0();
    v21 = v12;
    v15 = sub_220BCDB70();
    v12 = v21;
  }

  v16 = [a1 assetFileInfoManager];
  v17 = [v13 assetConfigurationForAssets:v14 language:v15 userInterfaceStyle:a2 assetFileInfoManager:v16];

  if (v17)
  {
    v18 = swift_allocObject();
    *(v18 + 16) = a3;
    *(v18 + 24) = a4;
    aBlock[4] = sub_220BA3B8C;
    aBlock[5] = v18;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_220B6E324;
    aBlock[3] = &block_descriptor_8;
    v19 = _Block_copy(aBlock);

    [v13 fetchAssetsWithAssetsConfiguration:v17 completionHandler:v19];
    _Block_release(v19);
  }

  else
  {
    LODWORD(aBlock[0]) = 22;
    sub_220B4F2C4(MEMORY[0x277D84F90]);
    sub_220BA3B44(&unk_27CF77DD0, MEMORY[0x277CC8658]);
    sub_220BCBEE0();
    v17 = sub_220BCBE50();
    (*(v10 + 8))(v12, v9);
    a3(0, v17);
  }
}

void sub_220BA1440(uint64_t a1)
{
  v3 = sub_220BCC5C0();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v16[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v5);
  v9 = &v16[-v8];
  v10 = OBJC_IVAR____TtC6TipsUI16TipsContentModel_currentTipList;
  swift_beginAccess();
  if (*(v1 + v10))
  {
    v11 = OBJC_IVAR____TtC6TipsUI16TipsContentModel_colorScheme;
    swift_beginAccess();
    (*(v4 + 16))(v9, v1 + v11, v3);
    (*(v4 + 104))(v7, *MEMORY[0x277CDF3D0], v3);

    LOBYTE(v11) = sub_220BCC5B0();
    v12 = *(v4 + 8);
    v12(v7, v3);
    v12(v9, v3);
    v13 = *(v1 + OBJC_IVAR____TtC6TipsUI16TipsContentModel_prefetchingManager);
    sub_220B55458(0, &qword_2812C08B0);
    v14 = v13;
    v15 = sub_220BCDC60();

    [v14 prefetchAssetsFromTip:a1 tips:v15 assetUserInterfaceStyle:(v11 & 1) == 0];
  }
}

id sub_220BA1674(void *a1, uint64_t a2)
{
  v31 = a2;
  v4 = sub_220BCC5C0();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v29 - v10;
  MEMORY[0x28223BE20](v9);
  v30 = &v29 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CF77DE0);
  v14 = MEMORY[0x28223BE20](v13 - 8);
  v16 = &v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v29 - v17;
  (*(v5 + 56))(&v29 - v17, 1, 1, v4);
  v19 = [a1 language];
  if (!v19)
  {
    sub_220BCDBA0();
    v19 = sub_220BCDB70();
  }

  v20 = [a1 assetFileInfoManager];
  sub_220B462DC(v18, v16, &unk_27CF77DE0);
  v21 = &unk_2812C3000;
  if ((*(v5 + 48))(v16, 1, v4) == 1)
  {
    sub_220B463F4(v16, &unk_27CF77DE0);
  }

  else
  {
    v22 = v30;
    (*(v5 + 32))(v30, v16, v4);
    v23 = OBJC_IVAR____TtC6TipsUI16TipsContentModel_colorScheme;
    swift_beginAccess();
    v24 = v22;
    v21 = &unk_2812C3000;
    (*(v5 + 40))(v2 + v23, v24, v4);
    swift_endAccess();
  }

  v25 = v21[430];
  swift_beginAccess();
  (*(v5 + 16))(v11, v2 + v25, v4);
  (*(v5 + 104))(v8, *MEMORY[0x277CDF3D0], v4);
  LOBYTE(v25) = sub_220BCC5B0();
  v26 = *(v5 + 8);
  v26(v8, v4);
  v26(v11, v4);
  v27 = [*(v2 + OBJC_IVAR____TtC6TipsUI16TipsContentModel_appController) assetConfigurationForAssets:v31 language:v19 userInterfaceStyle:(v25 & 1) == 0 assetFileInfoManager:v20];

  sub_220B463F4(v18, &unk_27CF77DE0);
  return v27;
}

id sub_220BA1A2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v30 = a1;
  v31 = a5;
  v29[1] = a3;
  v29[2] = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CF77DE0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = v29 - v8;
  v10 = sub_220BCC5C0();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = v29 - v16;
  MEMORY[0x28223BE20](v15);
  v19 = v29 - v18;
  sub_220B462DC(a2, v9, &unk_27CF77DE0);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_220B463F4(v9, &unk_27CF77DE0);
  }

  else
  {
    v20 = *(v11 + 32);
    v20(v19, v9, v10);
    v20(v17, v19, v10);
    v21 = OBJC_IVAR____TtC6TipsUI16TipsContentModel_colorScheme;
    swift_beginAccess();
    (*(v11 + 40))(v5 + v21, v17, v10);
    swift_endAccess();
  }

  v22 = OBJC_IVAR____TtC6TipsUI16TipsContentModel_colorScheme;
  swift_beginAccess();
  (*(v11 + 16))(v17, v5 + v22, v10);
  (*(v11 + 104))(v14, *MEMORY[0x277CDF3D0], v10);
  LOBYTE(v22) = sub_220BCC5B0();
  v23 = *(v11 + 8);
  v23(v14, v10);
  v23(v17, v10);
  v24 = ~v22;
  v25 = *(v5 + OBJC_IVAR____TtC6TipsUI16TipsContentModel_appController);
  v26 = sub_220BCDB70();
  v27 = [v25 assetConfigurationForAssets:v30 language:v26 userInterfaceStyle:v24 & 1 assetFileInfoManager:v31];

  return v27;
}

uint64_t sub_220BA1D44@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (a1)
  {
    v6 = objc_opt_self();
    v7 = a1;
    v8 = [v6 assetPathFromAssetConfiguration:v7 type:a2];
    if (v8)
    {
      v9 = v8;
      sub_220BCDBA0();

      sub_220BCBF40();
    }
  }

  v11 = sub_220BCBF80();
  v12 = *(*(v11 - 8) + 56);

  return v12(a3, 1, 1, v11);
}

void *sub_220BA1E68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    v6 = *(v4 + OBJC_IVAR____TtC6TipsUI16TipsContentModel_appController);
    v7 = sub_220BCDB70();
    v8 = [v6 tipsForCollectionIdentifier_];

    if (v8)
    {
      sub_220B55458(0, &qword_2812C08B0);
      v9 = sub_220BCDC70();

      if (v9 >> 62)
      {
        goto LABEL_23;
      }

      for (i = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_220BCDF70())
      {
        v11 = 0;
        while (1)
        {
          if ((v9 & 0xC000000000000001) != 0)
          {
            v12 = MEMORY[0x223D92D80](v11, v9);
          }

          else
          {
            if (v11 >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_22;
            }

            v12 = *(v9 + 8 * v11 + 32);
          }

          v13 = v12;
          v14 = v11 + 1;
          if (__OFADD__(v11, 1))
          {
            break;
          }

          v15 = [v12 identifier];
          v16 = sub_220BCDBA0();
          v18 = v17;

          if (a2)
          {
            if (v16 == a1 && v18 == a2)
            {

              return v13;
            }

            v20 = sub_220BCE130();

            if (v20)
            {

              return v13;
            }
          }

          else
          {
          }

          ++v11;
          if (v14 == i)
          {
            goto LABEL_24;
          }
        }

        __break(1u);
LABEL_22:
        __break(1u);
LABEL_23:
        ;
      }

LABEL_24:
    }
  }

  return 0;
}

uint64_t sub_220BA205C(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  v3 = *(v2 + OBJC_IVAR____TtC6TipsUI16TipsContentModel_appController);
  v4 = sub_220BCDB70();
  v5 = [v3 tipsForCollectionIdentifier_];

  if (!v5)
  {
    return 0;
  }

  sub_220B55458(0, &qword_2812C08B0);
  v6 = sub_220BCDC70();

  return v6;
}

void sub_220BA20F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(v4 + OBJC_IVAR____TtC6TipsUI16TipsContentModel_appController);
  if (a2)
  {
    v7 = sub_220BCDB70();
    if (a4)
    {
LABEL_3:
      v8 = sub_220BCDB70();
      goto LABEL_6;
    }
  }

  else
  {
    v7 = 0;
    if (a4)
    {
      goto LABEL_3;
    }
  }

  v8 = 0;
LABEL_6:
  v9 = v8;
  [v6 tipViewed:v7 collectionIdentifier:?];
}

void *sub_220BA2190(uint64_t a1, uint64_t a2)
{
  v3 = sub_220BA26C4();
  v4 = v3;
  if (v3 >> 62)
  {
    goto LABEL_21;
  }

  for (i = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_220BCDF70())
  {
    v6 = 0;
    while (1)
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x223D92D80](v6, v4);
      }

      else
      {
        if (v6 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_20;
        }

        v7 = *(v4 + 8 * v6 + 32);
      }

      v8 = v7;
      v9 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      v10 = [v7 identifier];
      v11 = sub_220BCDBA0();
      v13 = v12;

      if (a2)
      {
        if (v11 == a1 && v13 == a2)
        {

          return v8;
        }

        v15 = sub_220BCE130();

        if (v15)
        {

          return v8;
        }
      }

      else
      {
      }

      ++v6;
      if (v9 == i)
      {
        goto LABEL_22;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    ;
  }

LABEL_22:

  return 0;
}

void *sub_220BA2318(uint64_t a1, uint64_t a2)
{
  v15 = a1;
  v16 = a2;
  if (a2)
  {
    v2 = sub_220BA26C4();
    v3 = v2;
    if (v2 >> 62)
    {
      goto LABEL_16;
    }

    for (i = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_220BCDF70())
    {
      v5 = 0;
      v14 = v3 & 0xC000000000000001;
      while (1)
      {
        if (v14)
        {
          v6 = MEMORY[0x223D92D80](v5, v3);
        }

        else
        {
          if (v5 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_15;
          }

          v6 = *(v3 + 8 * v5 + 32);
        }

        v7 = v6;
        v8 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          break;
        }

        v9 = [v6 tipIdentifiers];
        v10 = sub_220BCDC70();

        v17[0] = v15;
        v17[1] = v16;
        MEMORY[0x28223BE20](v11);
        v13[2] = v17;
        LOBYTE(v9) = sub_220B9DEE8(sub_220BA3BCC, v13, v10);

        if (v9)
        {

          return v7;
        }

        ++v5;
        if (v8 == i)
        {
          goto LABEL_17;
        }
      }

      __break(1u);
LABEL_15:
      __break(1u);
LABEL_16:
      ;
    }

LABEL_17:
  }

  return 0;
}

id sub_220BA24CC(uint64_t a1, uint64_t a2, SEL *a3)
{
  v5 = *(v3 + OBJC_IVAR____TtC6TipsUI16TipsContentModel_appController);
  if (a2)
  {
    v6 = sub_220BCDB70();
  }

  else
  {
    v6 = 0;
  }

  v7 = [v5 *a3];

  return v7;
}

void sub_220BA2544(uint64_t a1, uint64_t a2, SEL *a3)
{
  v5 = *(v3 + OBJC_IVAR____TtC6TipsUI16TipsContentModel_appController);
  if (a2)
  {
    v6 = sub_220BCDB70();
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;
  [v5 *a3];
}

uint64_t sub_220BA25B0(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CF77DE0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v13 - v7;
  v9 = sub_220BCC5C0();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  v10 = sub_220BA1674(a1, a2);
  sub_220B463F4(v8, &unk_27CF77DE0);
  v11 = sub_220BA377C(v10, a3);

  return v11;
}

uint64_t sub_220BA26C4()
{
  v1 = v0;
  swift_getKeyPath();
  sub_220BA3B44(&qword_2812C2180, type metadata accessor for TipsContentModel);
  sub_220BCC300();

  v2 = OBJC_IVAR____TtC6TipsUI16TipsContentModel__featuredCollection;
  swift_beginAccess();
  v3 = *(v1 + v2);
  swift_getKeyPath();
  if (v3)
  {
    v4 = v3;
    sub_220BCC300();

    v5 = OBJC_IVAR____TtC6TipsUI16TipsContentModel__collections;
    swift_beginAccess();
    v6 = *(v1 + v5);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CF77E60);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_220BD1220;
    *(inited + 32) = v4;

    sub_220BBD1A4(inited);
    return v6;
  }

  else
  {
    sub_220BCC300();

    swift_beginAccess();
  }
}

id sub_220BA288C()
{
  v1 = v0;
  sub_220B9E960(MEMORY[0x277D84F90]);
  v2 = OBJC_IVAR____TtC6TipsUI16TipsContentModel__featuredCollection;
  swift_beginAccess();
  if (*(v1 + v2))
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_220BA3B44(&qword_2812C2180, type metadata accessor for TipsContentModel);
    sub_220BCC2F0();
  }

  return [*(v1 + OBJC_IVAR____TtC6TipsUI16TipsContentModel_appController) removeAllContent];
}

id TipsContentModel.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TipsContentModel();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

Swift::Void __swiftcall TipsContentModel.appControllerContentUpdated(_:)(TPSAppController *a1)
{
  v2 = [(TPSAppController *)a1 collections];
  if (v2)
  {
    v3 = v2;
    sub_220B55458(0, &qword_2812C0930);
    v4 = sub_220BCDC70();
  }

  else
  {
    v4 = MEMORY[0x277D84F90];
  }

  sub_220B9E960(v4);
  sub_220B9F8D0([(TPSAppController *)a1 featuredCollection]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF76EC0);
  sub_220BA3C24();
  sub_220BCC470();
}

Swift::Void __swiftcall TipsContentModel.appController(_:loadingContent:)(TPSAppController *_, Swift::Bool loadingContent)
{
  v3 = v2;
  if (loadingContent)
  {
    v5 = OBJC_IVAR____TtC6TipsUI16TipsContentModel__lastContentError;
    swift_beginAccess();
    if (*(v3 + v5))
    {
      KeyPath = swift_getKeyPath();
      MEMORY[0x28223BE20](KeyPath);
      sub_220BA3B44(&qword_2812C2180, type metadata accessor for TipsContentModel);
      sub_220BCC2F0();
    }
  }

  else
  {
    v7 = [(TPSAppController *)_ lastFetchError];
    if (v7)
    {
      v8 = v7;
      v9 = v7;
      sub_220B9ECE8(v8);
    }
  }

  swift_getKeyPath();
  sub_220BA3B44(&qword_2812C2180, type metadata accessor for TipsContentModel);
  sub_220BCC300();

  v10 = OBJC_IVAR____TtC6TipsUI16TipsContentModel__loading;
  swift_beginAccess();
  if (*(v3 + v10) == 1 && !loadingContent)
  {
    v11 = OBJC_IVAR____TtC6TipsUI16TipsContentModel__hasLoaded;
    swift_beginAccess();
    if (*(v3 + v11) == 1)
    {
      *(v3 + v11) = 1;
    }

    else
    {
      v12 = swift_getKeyPath();
      MEMORY[0x28223BE20](v12);
      sub_220BCC2F0();
    }
  }

  if (*(v3 + v10) == loadingContent)
  {
    *(v3 + v10) = loadingContent;
  }

  else
  {
    v13 = swift_getKeyPath();
    MEMORY[0x28223BE20](v13);
    sub_220BCC2F0();
  }
}

uint64_t sub_220BA3160()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF76EC0);
  sub_220BA3C24();
  return sub_220BCC470();
}

void sub_220BA31B8(void *a1)
{
  v1 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF76EC0);
  sub_220BA3C24();
  sub_220BCC470();
}

Swift::Void __swiftcall TipsContentModel.updateCurrentTipIfNecessary(tipIdentifier:)(Swift::String tipIdentifier)
{
  v2 = v1;
  swift_getKeyPath();
  sub_220BA3B44(&qword_2812C2180, type metadata accessor for TipsContentModel);
  sub_220BCC300();

  v3 = OBJC_IVAR____TtC6TipsUI16TipsContentModel__currentCollection;
  swift_beginAccess();
  v4 = *(v1 + v3);
  if (v4)
  {
    v5 = [v4 identifier];
    v6 = sub_220BCDBA0();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  v9 = [objc_opt_self() savedTipsCollectionIdentifier];
  if (!v9)
  {
    if (!v8)
    {
      goto LABEL_15;
    }

    goto LABEL_13;
  }

  v10 = v9;
  v11 = sub_220BCDBA0();
  v13 = v12;

  if (!v8)
  {
    if (!v13)
    {
      goto LABEL_15;
    }

LABEL_13:

    return;
  }

  if (!v13)
  {
    goto LABEL_13;
  }

  if (v6 == v11 && v8 == v13)
  {
  }

  else
  {
    v14 = sub_220BCE130();

    if ((v14 & 1) == 0)
    {
      return;
    }
  }

LABEL_15:
  swift_getKeyPath();
  sub_220BCC300();

  v15 = *(v2 + v3);
  if (v15)
  {
    v16 = [v15 identifier];
    sub_220BCDBA0();

    v17 = *(v2 + OBJC_IVAR____TtC6TipsUI16TipsContentModel_appController);
    v18 = sub_220BCDB70();
    v19 = [v17 tipsForCollectionIdentifier_];

    if (v19)
    {
      sub_220B55458(0, &qword_2812C08B0);
      v20 = sub_220BCDC70();

      v36 = MEMORY[0x277D84F90];
      if (v20 >> 62)
      {
        goto LABEL_38;
      }

      for (i = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_220BCDF70())
      {
        v22 = 0;
        while (1)
        {
          if ((v20 & 0xC000000000000001) != 0)
          {
            v23 = MEMORY[0x223D92D80](v22, v20);
          }

          else
          {
            if (v22 >= *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_37;
            }

            v23 = *(v20 + 8 * v22 + 32);
          }

          v24 = v23;
          v25 = v22 + 1;
          if (__OFADD__(v22, 1))
          {
            break;
          }

          v26 = [v23 identifier];
          v27 = sub_220BCDBA0();
          v29 = v28;

          if (v27 == tipIdentifier._countAndFlagsBits && v29 == tipIdentifier._object)
          {
          }

          else
          {
            v31 = sub_220BCE130();

            if (v31)
            {
            }

            else
            {
              sub_220BCE000();
              sub_220BCE020();
              sub_220BCE030();
              sub_220BCE010();
            }
          }

          ++v22;
          if (v25 == i)
          {
            v32 = v36;
            goto LABEL_40;
          }
        }

        __break(1u);
LABEL_37:
        __break(1u);
LABEL_38:
        ;
      }

      v32 = MEMORY[0x277D84F90];
LABEL_40:

      if (v32 < 0 || (v32 & 0x4000000000000000) != 0)
      {
        if (sub_220BCDF70())
        {
          goto LABEL_43;
        }
      }

      else if (*(v32 + 16))
      {
LABEL_43:
        if ((v32 & 0xC000000000000001) != 0)
        {
          v33 = MEMORY[0x223D92D80](0, v32);
        }

        else
        {
          if (!*(v32 + 16))
          {
            __break(1u);
            return;
          }

          v33 = *(v32 + 32);
        }

        v34 = v33;

        v15 = v34;
        goto LABEL_50;
      }
    }

    else
    {
    }

    v15 = 0;
  }

LABEL_50:
  sub_220B9F470(v15);
}

void sub_220BA36A4(uint64_t a1)
{
  if ([objc_opt_self() isInternalBuild])
  {
    v2 = sub_220BA0840();
    [v2 attemptWidgetUpdateWith_];
  }
}

uint64_t sub_220BA3724(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_220BCE130() & 1;
  }
}

uint64_t sub_220BA377C(void *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF76C90);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v37 - v9;
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v37 - v12;
  MEMORY[0x28223BE20](v11);
  v15 = &v37 - v14;
  v16 = &selRef_activateConstraints_;
  if (a1)
  {
    v17 = [a1 cacheIdentifierForType_];
    if (v17)
    {
      v18 = v17;
      v19 = sub_220BCDBA0();
      v38 = v20;
    }

    else
    {
      v19 = 0;
      v38 = 0;
    }

    v21 = objc_opt_self();
    v22 = a1;
    v23 = [v21 assetPathFromAssetConfiguration:v22 type:1];
    if (v23)
    {
      v37 = v19;
      v24 = v23;
      sub_220BCDBA0();

      sub_220BCBF40();

      v25 = 2 * (a2 == 2);
      v16 = &selRef_activateConstraints_;
      goto LABEL_11;
    }

    v16 = &selRef_activateConstraints_;
  }

  else
  {
    v38 = 0;
    v19 = 0;
  }

  v26 = sub_220BCBF80();
  (*(*(v26 - 8) + 56))(v15, 1, 1, v26);
  if (!a1)
  {
LABEL_16:
    v33 = sub_220BCBF80();
    (*(*(v33 - 8) + 56))(v13, 1, 1, v33);
    goto LABEL_17;
  }

  v37 = v19;
  v25 = 2 * (a2 == 2);
  v22 = a1;
LABEL_11:
  v27 = [v22 v16[175]];
  if (v27)
  {
    v28 = v27;
    sub_220BCDBA0();
  }

  v29 = objc_opt_self();
  v30 = v22;
  v31 = [v29 assetPathFromAssetConfiguration:v30 type:v25];
  if (!v31)
  {

    goto LABEL_16;
  }

  v32 = v31;
  sub_220BCDBA0();

  sub_220BCBF40();

LABEL_17:
  sub_220B462DC(v15, v10, &qword_27CF76C90);
  sub_220B462DC(v13, v7, &qword_27CF76C90);
  v34 = objc_allocWithZone(sub_220BCD7D0());
  v35 = sub_220BCD790();
  sub_220B463F4(v13, &qword_27CF76C90);
  sub_220B463F4(v15, &qword_27CF76C90);
  return v35;
}

uint64_t sub_220BA3B44(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t block_copy_helper_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_220BA3BCC(void *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_220BCE130() & 1;
  }
}

unint64_t sub_220BA3C24()
{
  result = qword_2812C0AE0;
  if (!qword_2812C0AE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CF76EC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812C0AE0);
  }

  return result;
}

uint64_t sub_220BA3C90()
{
  result = sub_220BCC5C0();
  if (v1 <= 0x3F)
  {
    result = sub_220BCC340();
    if (v2 <= 0x3F)
    {
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

uint64_t sub_220BA4CFC(uint64_t *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *a1;
  result = swift_beginAccess();
  *(v2 + v4) = v3;
  return result;
}

double EnvironmentValues.backgroundViewOpacity.getter()
{
  sub_220B48844();
  sub_220BCC9E0();
  return v1;
}

uint64_t (*EnvironmentValues.backgroundViewOpacity.modify(uint64_t a1))(void *a1)
{
  *(a1 + 16) = v1;
  *(a1 + 24) = sub_220B48844();
  sub_220BCC9E0();
  return sub_220BA4ED8;
}

uint64_t View.backgroundViewOpacity(_:)()
{
  swift_getKeyPath();
  sub_220BCD000();
}

unint64_t sub_220BA4F8C()
{
  result = qword_27CF77ED8;
  if (!qword_27CF77ED8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CF77ED0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF77ED8);
  }

  return result;
}

uint64_t sub_220BA5000(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xD000000000000014;
  v3 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v5 = 0xD000000000000014;
    }

    else
    {
      v5 = 0xD00000000000001DLL;
    }

    if (v3)
    {
      v4 = 0x8000000220BD6B30;
    }

    else
    {
      v4 = 0x8000000220BD6B10;
    }
  }

  else if (a1 == 2)
  {
    v5 = 0;
    v4 = 0xE000000000000000;
  }

  else if (a1 == 3)
  {
    v4 = 0x8000000220BD6B50;
    v5 = 0xD00000000000002BLL;
  }

  else
  {
    v5 = 0x697966696E67616DLL;
    v4 = 0xEF7373616C67676ELL;
  }

  v6 = 0x8000000220BD6B50;
  v7 = 0xD00000000000002BLL;
  if (a2 != 3)
  {
    v7 = 0x697966696E67616DLL;
    v6 = 0xEF7373616C67676ELL;
  }

  if (a2 == 2)
  {
    v7 = 0;
    v6 = 0xE000000000000000;
  }

  v8 = 0x8000000220BD6B30;
  if (!a2)
  {
    v2 = 0xD00000000000001DLL;
    v8 = 0x8000000220BD6B10;
  }

  if (a2 <= 1u)
  {
    v9 = v2;
  }

  else
  {
    v9 = v7;
  }

  if (a2 <= 1u)
  {
    v10 = v8;
  }

  else
  {
    v10 = v6;
  }

  if (v5 == v9 && v4 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_220BCE130();
  }

  return v11 & 1;
}

uint64_t sub_220BA5178(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 > 2u)
  {
    if (a1 == 3)
    {
      v6 = 0xE300000000000000;
      v5 = 7367028;
    }

    else
    {
      v5 = 0xD000000000000011;
      if (v2 == 4)
      {
        v6 = 0x8000000220BD6BB0;
      }

      else
      {
        v6 = 0x8000000220BD6BD0;
      }
    }
  }

  else
  {
    v3 = 0x50676E69646E616CLL;
    v4 = 0xEB00000000656761;
    if (a1 != 1)
    {
      v3 = 0x6469754772657375;
      v4 = 0xE900000000000065;
    }

    if (a1)
    {
      v5 = v3;
    }

    else
    {
      v5 = 0x6E776F6E6B6E75;
    }

    if (v2)
    {
      v6 = v4;
    }

    else
    {
      v6 = 0xE700000000000000;
    }
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v7 = 0xE300000000000000;
      if (v5 != 7367028)
      {
        goto LABEL_33;
      }
    }

    else
    {
      if (a2 == 4)
      {
        v7 = 0x8000000220BD6BB0;
      }

      else
      {
        v7 = 0x8000000220BD6BD0;
      }

      if (v5 != 0xD000000000000011)
      {
        goto LABEL_33;
      }
    }
  }

  else if (a2)
  {
    if (a2 == 1)
    {
      v7 = 0xEB00000000656761;
      if (v5 != 0x50676E69646E616CLL)
      {
        goto LABEL_33;
      }
    }

    else
    {
      v7 = 0xE900000000000065;
      if (v5 != 0x6469754772657375)
      {
LABEL_33:
        v8 = sub_220BCE130();
        goto LABEL_34;
      }
    }
  }

  else
  {
    v7 = 0xE700000000000000;
    if (v5 != 0x6E776F6E6B6E75)
    {
      goto LABEL_33;
    }
  }

  if (v6 != v7)
  {
    goto LABEL_33;
  }

  v8 = 1;
LABEL_34:

  return v8 & 1;
}

uint64_t sub_220BA5370()
{
  sub_220BCE210();
  sub_220BCDBF0();

  return sub_220BCE240();
}

uint64_t sub_220BA5484()
{
  sub_220BCE210();
  sub_220BCDBF0();

  return sub_220BCE240();
}

uint64_t sub_220BA5594(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF76E08);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v25 - v10;
  sub_220B462DC(a3, v25 - v10, &qword_27CF76E08);
  v12 = sub_220BCDD40();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_220B463F4(v11, &qword_27CF76E08);
  }

  else
  {
    sub_220BCDD30();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_220BCDCB0();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_220BCDBE0() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      sub_220B463F4(a3, &qword_27CF76E08);

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_220B463F4(a3, &qword_27CF76E08);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

TipsUI::SearchLocation_optional __swiftcall SearchLocation.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_220BCE100();

  v5 = 6;
  if (v3 < 6)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t SearchLocation.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x6E776F6E6B6E75;
  v3 = 7367028;
  if (v1 != 3)
  {
    v3 = 0xD000000000000011;
  }

  v4 = 0x50676E69646E616CLL;
  if (v1 != 1)
  {
    v4 = 0x6469754772657375;
  }

  if (*v0)
  {
    v2 = v4;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_220BA59CC()
{
  sub_220BCDBF0();
}

void sub_220BA5ADC(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x6E776F6E6B6E75;
  v5 = 0xE300000000000000;
  v6 = 7367028;
  v7 = 0x8000000220BD6BB0;
  if (v2 != 4)
  {
    v7 = 0x8000000220BD6BD0;
  }

  if (v2 != 3)
  {
    v6 = 0xD000000000000011;
    v5 = v7;
  }

  v8 = 0xEB00000000656761;
  v9 = 0x50676E69646E616CLL;
  if (v2 != 1)
  {
    v9 = 0x6469754772657375;
    v8 = 0xE900000000000065;
  }

  if (*v1)
  {
    v4 = v9;
    v3 = v8;
  }

  if (*v1 <= 2u)
  {
    v10 = v4;
  }

  else
  {
    v10 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v10;
  a1[1] = v3;
}

unint64_t SearchResult.Item.Category.init(rawValue:)@<X0>(unint64_t result@<X0>, char *a2@<X8>)
{
  v2 = 5;
  if (result < 5)
  {
    v2 = result;
  }

  *a2 = v2;
  return result;
}

uint64_t SearchResult.Item.category.getter@<X0>(char *a1@<X8>)
{
  v2 = sub_220BCD6C0();
  v4 = v3;
  sub_220B55458(0, &qword_2812C08B0);
  v5 = sub_220BCDE80();
  if (!v4)
  {

    goto LABEL_9;
  }

  if (v5 != v2 || v4 != v6)
  {
    v8 = sub_220BCE130();

    if (v8)
    {
      goto LABEL_14;
    }

LABEL_9:
    sub_220BCD8F0();
    v9 = sub_220BCD8A0();
    if (v4)
    {
      if (v9 == v2 && v4 == v10)
      {

LABEL_17:

        v12 = 2;
        goto LABEL_37;
      }

      v13 = sub_220BCE130();

      if (v13)
      {
        goto LABEL_17;
      }
    }

    else
    {
    }

    sub_220BCD870();
    v14 = sub_220BCD840();
    if (v4)
    {
      if (v14 == v2 && v4 == v15)
      {

LABEL_24:

        v12 = 3;
        goto LABEL_37;
      }

      v16 = sub_220BCE130();

      if (v16)
      {
        goto LABEL_24;
      }
    }

    else
    {
    }

    sub_220B55458(0, &qword_2812C0930);
    v17 = sub_220BCDDB0();
    if (v4)
    {
      if (v17 == v2 && v4 == v18)
      {
        goto LABEL_34;
      }

      v19 = sub_220BCE130();

      if (v19)
      {
LABEL_35:

LABEL_36:
        v12 = 4;
        goto LABEL_37;
      }

      if (sub_220BCD690() == v2 && v4 == v20)
      {
LABEL_34:

        goto LABEL_35;
      }

      v21 = sub_220BCE130();

      if (v21)
      {
        goto LABEL_36;
      }
    }

    else
    {

      sub_220BCD690();
    }

    v12 = 0;
    goto LABEL_37;
  }

LABEL_14:

  v12 = 1;
LABEL_37:
  *a1 = v12;
  return result;
}

uint64_t sub_220BA5E68(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 16) = a1;

  v3 = (v1 + OBJC_IVAR____TtC6TipsUI18SearchResultsModel_searchResultsTipsUpdated);
  result = swift_beginAccess();
  v5 = *v3;
  if (*v3)
  {
    swift_getKeyPath();
    sub_220BB3EDC(&qword_2812C1A80, type metadata accessor for SearchResultsModel);

    sub_220BCC300();

    v5(v6);
    sub_220B3A128(v5);
  }

  return result;
}

void (*sub_220BA5F9C(uint64_t *a1))(void **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  *(v3 + 32) = v1;
  swift_beginAccess();
  return sub_220BA6014;
}

void sub_220BA6014(void **a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = (v3[4] + OBJC_IVAR____TtC6TipsUI18SearchResultsModel_searchResultsTipsUpdated);
    swift_beginAccess();
    v5 = *v4;
    if (*v4)
    {
      v6 = v3[4];
      swift_getKeyPath();
      v3[3] = v6;
      sub_220BB3EDC(&qword_2812C1A80, type metadata accessor for SearchResultsModel);

      sub_220BCC300();

      v5(v7);
      sub_220B3A128(v5);
    }
  }

  free(v3);
}

uint64_t sub_220BA6148@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_220BB3EDC(&qword_2812C1A80, type metadata accessor for SearchResultsModel);
  sub_220BCC300();

  swift_beginAccess();
  *a2 = *(v3 + 16);
}

uint64_t sub_220BA6234()
{
  swift_getKeyPath();
  sub_220BB3EDC(&qword_2812C1A80, type metadata accessor for SearchResultsModel);
  sub_220BCC300();

  swift_beginAccess();
}

uint64_t type metadata accessor for SearchResultsModel()
{
  result = qword_2812C1A70;
  if (!qword_2812C1A70)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}