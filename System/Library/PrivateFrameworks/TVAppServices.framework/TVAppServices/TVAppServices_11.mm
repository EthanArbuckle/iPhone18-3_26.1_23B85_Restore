uint64_t sub_26CD0AEE8()
{
  v1 = *v0;
  sub_26CD3B0FC();
  sub_26CD3A54C();

  return sub_26CD3B13C();
}

uint64_t sub_26CD0AF84()
{
  *v0;
  *v0;
  sub_26CD3A54C();
}

uint64_t sub_26CD0B00C()
{
  v1 = *v0;
  sub_26CD3B0FC();
  sub_26CD3A54C();

  return sub_26CD3B13C();
}

uint64_t sub_26CD0B0A4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_26CD0DAEC();
  *a2 = result;
  return result;
}

void sub_26CD0B0D4(uint64_t *a1@<X8>)
{
  v2 = 0x746963696C706D49;
  v3 = 0xE800000000000000;
  if (*v1 != 1)
  {
    v2 = 0x6E6974656B72614DLL;
    v3 = 0xE900000000000067;
  }

  if (*v1)
  {
    v4 = v3;
  }

  else
  {
    v2 = 0x746963696C707845;
    v4 = 0xE800000000000000;
  }

  *a1 = v2;
  a1[1] = v4;
}

uint64_t sub_26CD0B1DC(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BDB58, &qword_26CD48AC8);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v23[-v7];
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26CD0E21C();
  sub_26CD3B16C();
  v10 = v2[2];
  v11 = v2[4];
  v41 = v2[3];
  v42 = v11;
  v12 = v2[4];
  v43 = v2[5];
  v13 = *v2;
  v14 = v2[2];
  v39 = v2[1];
  v40 = v14;
  v15 = *v2;
  v35 = v41;
  v36 = v12;
  v37 = v2[5];
  v38 = v15;
  v32 = v13;
  v33 = v39;
  v34 = v10;
  v31 = 0;
  sub_26CD0D66C(&v38, &v25);
  sub_26CD0D6DC();
  v16 = v44;
  sub_26CD3AF1C();
  if (v16)
  {
    v27 = v34;
    v28 = v35;
    v29 = v36;
    v30 = v37;
    v25 = v32;
    v26 = v33;
    sub_26CD0D4AC(&v25);
  }

  else
  {
    v27 = v34;
    v28 = v35;
    v29 = v36;
    v30 = v37;
    v25 = v32;
    v26 = v33;
    sub_26CD0D4AC(&v25);
    v17 = *(v2 + 12);
    v18 = *(v2 + 13);
    LOBYTE(v24) = 1;
    sub_26CD3AECC();
    v24 = *(v2 + 14);
    v23[7] = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA20, &unk_26CD3D4D0);
    sub_26CC3F22C(&qword_280BB9BE0);
    sub_26CD3AF1C();
    v19 = *(v2 + 120);
    LOBYTE(v24) = 3;
    sub_26CD3AEDC();
    v20 = *(v2 + 16);
    v21 = *(v2 + 17);
    LOBYTE(v24) = 4;
    sub_26CD3AECC();
  }

  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_26CD0B4BC()
{
  v1 = *v0;
  v2 = 0x6449646E617262;
  v3 = 0x6449656C646E7562;
  v4 = 0x4170704176547369;
  if (v1 != 3)
  {
    v4 = 1701869940;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (!*v0)
  {
    v2 = 0xD000000000000015;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_26CD0B564@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_26CD0DB38(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_26CD0B58C(uint64_t a1)
{
  v2 = sub_26CD0E21C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26CD0B5C8(uint64_t a1)
{
  v2 = sub_26CD0E21C();

  return MEMORY[0x2821FE720](a1, v2);
}

__n128 sub_26CD0B604@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_26CD0DD04(a1, v8);
  if (!v2)
  {
    v5 = v8[7];
    *(a2 + 96) = v8[6];
    *(a2 + 112) = v5;
    *(a2 + 128) = v8[8];
    v6 = v8[3];
    *(a2 + 32) = v8[2];
    *(a2 + 48) = v6;
    v7 = v8[5];
    *(a2 + 64) = v8[4];
    *(a2 + 80) = v7;
    result = v8[1];
    *a2 = v8[0];
    *(a2 + 16) = result;
  }

  return result;
}

uint64_t sub_26CD0B678(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BDB60, &qword_26CD48AD0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v24[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26CD0EA30();
  sub_26CD3B16C();
  v11 = *v3;
  v12 = v3[1];
  v24[15] = 0;
  sub_26CD3AECC();
  if (v2)
  {
    return (*(v6 + 8))(v9, v5);
  }

  v13 = v3[2];
  v14 = v3[3];
  v24[14] = 1;
  sub_26CD3AECC();
  v15 = v3[4];
  v16 = v3[5];
  v24[13] = 2;
  sub_26CD3AECC();
  v17 = v3[6];
  v18 = v3[7];
  v24[12] = 3;
  sub_26CD3AECC();
  v19 = v3[8];
  v20 = v3[9];
  v24[11] = 4;
  sub_26CD3AECC();
  v22 = v3[10];
  v23 = v3[11];
  v24[10] = 5;
  sub_26CD3AECC();
  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_26CD0B878()
{
  v1 = *v0;
  v2 = 0x7654656C707041;
  v3 = 0x534F63614DLL;
  v4 = 0x6173726576696E55;
  if (v1 != 4)
  {
    v4 = 0x734F6E6F69736956;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 7565129;
  if (v1 != 1)
  {
    v5 = 0x6576694C5F736F49;
  }

  if (*v0)
  {
    v2 = v5;
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

uint64_t sub_26CD0B928@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_26CD0E2D8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_26CD0B950(uint64_t a1)
{
  v2 = sub_26CD0EA30();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26CD0B98C(uint64_t a1)
{
  v2 = sub_26CD0EA30();

  return MEMORY[0x2821FE720](a1, v2);
}

double sub_26CD0B9C8@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_26CD0E4D8(a1, v8);
  if (!v2)
  {
    v5 = v8[3];
    a2[2] = v8[2];
    a2[3] = v5;
    v6 = v8[5];
    a2[4] = v8[4];
    a2[5] = v6;
    result = *v8;
    v7 = v8[1];
    *a2 = v8[0];
    a2[1] = v7;
  }

  return result;
}

uint64_t sub_26CD0BA2C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x736E6F69746361 && a2 == 0xE700000000000000;
  if (v4 || (sub_26CD3AFDC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x696373656C616F63 && a2 == 0xEC0000006449676ELL || (sub_26CD3AFDC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x4579616C70736964 && a2 == 0xEE00656D6954646ELL || (sub_26CD3AFDC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000015 && 0x800000026CD526A0 == a2 || (sub_26CD3AFDC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6449797469746E65 && a2 == 0xE800000000000000 || (sub_26CD3AFDC() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x65726F6353736168 && a2 == 0xE800000000000000 || (sub_26CD3AFDC() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000011 && 0x800000026CD4E170 == a2 || (sub_26CD3AFDC() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x76546E4F7369 && a2 == 0xE600000000000000 || (sub_26CD3AFDC() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x657A696C61636F6CLL && a2 == 0xED000079646F4264 || (sub_26CD3AFDC() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x657A696C61636F6CLL && a2 == 0xEF7265746F6F4664 || (sub_26CD3AFDC() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x657A696C61636F6CLL && a2 == 0xED00007478655464 || (sub_26CD3AFDC() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x657A696C61636F6CLL && a2 == 0xEE00656C74695464 || (sub_26CD3AFDC() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0x54676E6974746573 && a2 == 0xEB00000000657079 || (sub_26CD3AFDC() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0xD000000000000011 && 0x800000026CD526C0 == a2 || (sub_26CD3AFDC() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0x6449646165726874 && a2 == 0xE800000000000000 || (sub_26CD3AFDC() & 1) != 0)
  {

    return 14;
  }

  else if (a1 == 1701869940 && a2 == 0xE400000000000000)
  {

    return 15;
  }

  else
  {
    v6 = sub_26CD3AFDC();

    if (v6)
    {
      return 15;
    }

    else
    {
      return 16;
    }
  }
}

void *sub_26CD0BF44@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BDAA8, &qword_26CD486D8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v40 - v8;
  v237 = 1;
  v235 = 1;
  v232 = 1;
  v10 = a1[3];
  v11 = a1[4];
  v80 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v10);
  sub_26CD0D3B0();
  sub_26CD3B15C();
  if (v2)
  {
    v238 = v2;
    v100 = 0;
    v101 = 0;
    v98 = 0;
    v99 = 0;
    v96 = 0;
    v97 = 0;
    v94 = 0;
    v95 = 0;
    v72 = 0;
    v73 = 0;
    v67 = 0;
    v68 = 0;
    v66 = 0;
    v75 = 0;
    v76 = 0;
    v77 = 0;
    v78 = 0;
    v74 = 0;
    v70 = 0;
    v92 = 0;
    v93 = 0;
    v90 = 0;
    v91 = 0;
    v88 = 0;
    v89 = 0;
    v87 = 0;
    v63 = 0;
    v64 = 0;
    v61 = 0;
    v62 = 0;
    v59 = 0;
    v60 = 0;
    v57 = 0;
    v58 = 0;
    v55 = 0;
    v56 = 0;
    v54 = 0;
    v84 = 0;
    v85 = 0;
    v65 = 0;
    v71 = 0;
    v69 = 0;
    v79 = 0;
    v81 = 0;
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v103 = xmmword_26CD3E690;
    v86 = 0u;
    v82 = 0u;
    v83 = 0u;
    v53 = 3;
    v102 = 2;
    v15 = 1;
    v16 = 1;
    v17 = 1;
    v18 = 2;
    v19 = 2;
LABEL_4:
    __swift_destroy_boxed_opaque_existential_1(v80);
    v158 = v14;
    v159 = v13;
    v160 = v12;
    v161 = v81;
    v164 = v79;
    v167 = v69;
    v168 = v71;
    v169 = v19;
    v171 = v65;
    v173 = v18;
    v176 = v64;
    v177 = v17;
    v178 = v63;
    v179 = v62;
    v180 = v61;
    v181 = v60;
    v182 = v59;
    v183 = v58;
    v184 = v57;
    v185 = v56;
    v186 = v55;
    v187 = v54;
    v188 = v72;
    v189 = v16;
    v190 = v68;
    v191 = v66;
    v162 = v237;
    *v163 = *v236;
    *&v163[3] = *&v236[3];
    v165 = v235;
    *v166 = *v234;
    *&v166[3] = *&v234[3];
    *v170 = *v233;
    *&v170[3] = *&v233[3];
    v172 = v232;
    v174 = v230;
    v175 = v231;
    v192 = v75;
    v193 = v73;
    v194 = v78;
    v195 = v77;
    v196 = v76;
    v197 = v74;
    v198 = v70;
    v199 = v67;
    v200 = v95;
    v201 = v15;
    v202 = v96;
    v203 = v97;
    v204 = v98;
    v205 = v99;
    v206 = v100;
    v207 = v101;
    v210 = v103;
    v211 = v82;
    v208 = v86;
    v209 = v83;
    v212 = v87;
    v213 = v88;
    v214 = v89;
    v215 = v90;
    v216 = v91;
    v217 = v92;
    v218 = v93;
    v219 = v94;
    v220 = v53;
    v221 = v102;
    v222 = v228;
    v223 = v229;
    v224 = v84;
    v225 = v85;
    v226 = 0;
    v227 = 0;
    return sub_26CCFB5C4(&v158);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BDAB8, &qword_26CD486E0);
  v104[0] = 0;
  sub_26CD0D5A0(&qword_2804BDAC0, sub_26CD0D404);
  sub_26CD3AE2C();
  v52 = v158;
  LOBYTE(v158) = 1;
  v50 = sub_26CD3ADDC();
  v51 = v21;
  LOBYTE(v158) = 2;
  v81 = sub_26CD3ADFC();
  v237 = v22 & 1;
  LOBYTE(v158) = 3;
  v79 = sub_26CD3AE0C();
  v235 = v23 & 1;
  LOBYTE(v158) = 4;
  v69 = sub_26CD3ADDC();
  v71 = v24;
  LOBYTE(v158) = 5;
  v49 = sub_26CD3ADEC();
  LOBYTE(v158) = 6;
  v65 = sub_26CD3AE0C();
  v232 = v25 & 1;
  LOBYTE(v158) = 7;
  v48 = sub_26CD3ADEC();
  v145 = 8;
  sub_26CD0D458();
  sub_26CD3AE2C();
  v238 = 0;
  v26 = a2;
  v47 = v147;
  v63 = v148;
  v64 = v146;
  v61 = v150;
  v62 = v149;
  v59 = v152;
  v60 = v151;
  v57 = v154;
  v58 = v153;
  v55 = v156;
  v56 = v155;
  v54 = v157;
  v103 = xmmword_26CD3E690;
  v144[0] = xmmword_26CD3E690;
  memset(&v144[1], 0, 80);
  sub_26CD0D4AC(v144);
  v131 = 9;
  v27 = v238;
  sub_26CD3AE2C();
  v238 = v27;
  if (v27)
  {
    (*(v6 + 8))(v9, v5);
    v100 = 0;
    v101 = 0;
    v98 = 0;
    v99 = 0;
    v96 = 0;
    v97 = 0;
    v94 = 0;
    v95 = 0;
    v72 = 0;
    v73 = 0;
    v67 = 0;
    v68 = 0;
    v66 = 0;
    v75 = 0;
    v76 = 0;
    v77 = 0;
    v78 = 0;
    v74 = 0;
    v70 = 0;
    v92 = 0;
    v93 = 0;
    v90 = 0;
    v91 = 0;
    v88 = 0;
    v89 = 0;
    v87 = 0;
    v84 = 0;
    v85 = 0;
    v53 = 3;
    v102 = 2;
    v82 = 0u;
    v83 = 0u;
    v15 = 1;
    v16 = 1;
    v12 = v51;
    v14 = v52;
    v13 = v50;
    v86 = 0u;
    v18 = v48;
    v19 = v49;
    v17 = v47;
    goto LABEL_4;
  }

  v46 = v133;
  v66 = v135;
  v72 = v132;
  v73 = v137;
  v77 = v139;
  v78 = v138;
  v75 = v136;
  v76 = v140;
  v74 = v141;
  v70 = v142;
  v67 = v143;
  v68 = v134;
  v103 = xmmword_26CD3E690;
  v130[0] = xmmword_26CD3E690;
  memset(&v130[1], 0, 80);
  sub_26CD0D4AC(v130);
  v119 = 10;
  v28 = v238;
  sub_26CD3AE2C();
  v238 = v28;
  if (v28)
  {
    (*(v6 + 8))(v9, v5);
    v100 = 0;
    v101 = 0;
    v98 = 0;
    v99 = 0;
    v96 = 0;
    v97 = 0;
    v94 = 0;
    v95 = 0;
    v92 = 0;
    v93 = 0;
    v90 = 0;
    v91 = 0;
    v88 = 0;
    v89 = 0;
    v87 = 0;
    v84 = 0;
    v85 = 0;
    v53 = 3;
    v82 = 0u;
    v83 = 0u;
    v102 = 2;
    v15 = 1;
    v12 = v51;
    v14 = v52;
    v13 = v50;
    v86 = 0u;
    v18 = v48;
    v19 = v49;
    v16 = v46;
    v17 = v47;
    goto LABEL_4;
  }

  v45 = v121;
  v95 = v120;
  v96 = v122;
  v97 = v123;
  v98 = v124;
  v99 = v125;
  v100 = v126;
  v101 = v127;
  v83 = v129;
  v86 = v128;
  v103 = xmmword_26CD3E690;
  v118[0] = xmmword_26CD3E690;
  memset(&v118[1], 0, 80);
  sub_26CD0D4AC(v118);
  v107 = 11;
  v29 = v238;
  sub_26CD3AE2C();
  v238 = v29;
  if (v29)
  {
    (*(v6 + 8))(v9, v5);
    v93 = 0;
    v94 = 0;
    v91 = 0;
    v92 = 0;
    v89 = 0;
    v90 = 0;
    v87 = 0;
    v88 = 0;
    v84 = 0;
    v85 = 0;
    v53 = 3;
    v102 = 2;
    v12 = v51;
    v14 = v52;
    v13 = v50;
    v18 = v48;
    v19 = v49;
    v17 = v47;
    v82 = 0u;
LABEL_14:
    v15 = v45;
    v16 = v46;
    goto LABEL_4;
  }

  v82 = v109;
  v103 = v108;
  v87 = v110;
  v88 = v111;
  v89 = v112;
  v90 = v113;
  v91 = v114;
  v92 = v115;
  v93 = v116;
  v94 = v117;
  v106[0] = xmmword_26CD3E690;
  memset(&v106[1], 0, 80);
  sub_26CD0D4AC(v106);
  v104[0] = 12;
  sub_26CD0D514();
  v30 = v238;
  sub_26CD3AE2C();
  v238 = v30;
  if (v30)
  {
    (*(v6 + 8))(v9, v5);
    v84 = 0;
    v85 = 0;
    v53 = 3;
    v102 = 2;
    v12 = v51;
    v14 = v52;
    v13 = v50;
    v18 = v48;
    v19 = v49;
    v17 = v47;
    goto LABEL_14;
  }

  v53 = v158;
  LOBYTE(v158) = 13;
  v102 = sub_26CD3ADEC();
  v238 = 0;
  LOBYTE(v158) = 14;
  v84 = sub_26CD3ADDC();
  v85 = v31;
  v238 = 0;
  v105 = 15;
  v32 = sub_26CD3ADDC();
  v43 = v33;
  v44 = v32;
  v238 = 0;
  (*(v6 + 8))(v9, v5);
  *v104 = v52;
  *&v104[8] = v50;
  *&v104[16] = v51;
  *&v104[24] = v81;
  v42 = v237;
  v104[32] = v237;
  *&v104[33] = *v236;
  *&v104[36] = *&v236[3];
  *&v104[40] = v79;
  *&v104[482] = v228;
  v41 = v235;
  v104[48] = v235;
  *&v104[49] = *v234;
  *&v104[52] = *&v234[3];
  *&v104[56] = v69;
  *&v104[64] = v71;
  v104[72] = v49;
  *&v104[73] = *v233;
  *&v104[76] = *&v233[3];
  v34 = v64;
  *&v104[80] = v65;
  *&v104[90] = v230;
  *&v104[94] = v231;
  *&v104[486] = v229;
  HIDWORD(v40) = v232;
  v104[88] = v232;
  v104[89] = v48;
  *&v104[96] = v64;
  *&v104[104] = v47;
  v35 = v63;
  *&v104[112] = v63;
  *&v104[120] = v62;
  *&v104[128] = v61;
  *&v104[136] = v60;
  *&v104[144] = v59;
  *&v104[152] = v58;
  *&v104[160] = v57;
  *&v104[168] = v56;
  *&v104[176] = v55;
  *&v104[184] = v54;
  v37 = v72;
  v36 = v73;
  *&v104[192] = v72;
  *&v104[200] = v46;
  v38 = v68;
  *&v104[208] = v68;
  *&v104[216] = v66;
  v39 = v75;
  *&v104[224] = v75;
  *&v104[232] = v73;
  *&v104[240] = v78;
  *&v104[248] = v77;
  *&v104[256] = v76;
  *&v104[264] = v74;
  *&v104[272] = v70;
  *&v104[280] = v67;
  *&v104[288] = v95;
  *&v104[296] = v45;
  *&v104[304] = v96;
  *&v104[312] = v97;
  *&v104[320] = v98;
  *&v104[328] = v99;
  *&v104[336] = v100;
  *&v104[344] = v101;
  *&v104[352] = v86;
  *&v104[368] = v83;
  *&v104[384] = v103;
  *&v104[400] = v82;
  *&v104[416] = v87;
  *&v104[424] = v88;
  *&v104[432] = v89;
  *&v104[440] = v90;
  *&v104[448] = v91;
  *&v104[456] = v92;
  *&v104[464] = v93;
  *&v104[472] = v94;
  v104[480] = v53;
  v104[481] = v102;
  *&v104[488] = v84;
  *&v104[496] = v85;
  *&v104[504] = v44;
  *&v104[512] = v43;
  sub_26CD0D568(v104, &v158);
  __swift_destroy_boxed_opaque_existential_1(v80);
  v158 = v52;
  v159 = v50;
  v160 = v51;
  v161 = v81;
  v162 = v42;
  v164 = v79;
  v165 = v41;
  v167 = v69;
  v168 = v71;
  v169 = v49;
  v171 = v65;
  v172 = BYTE4(v40);
  v173 = v48;
  v176 = v34;
  v177 = v47;
  v178 = v35;
  v179 = v62;
  v180 = v61;
  v181 = v60;
  v182 = v59;
  v183 = v58;
  v184 = v57;
  v185 = v56;
  v186 = v55;
  v187 = v54;
  v188 = v37;
  v189 = v46;
  v190 = v38;
  v191 = v66;
  v192 = v39;
  v193 = v36;
  *v163 = *v236;
  *&v163[3] = *&v236[3];
  *v166 = *v234;
  *&v166[3] = *&v234[3];
  *&v170[3] = *&v233[3];
  *v170 = *v233;
  v174 = v230;
  v175 = v231;
  v194 = v78;
  v195 = v77;
  v196 = v76;
  v197 = v74;
  v198 = v70;
  v199 = v67;
  v200 = v95;
  v201 = v45;
  v202 = v96;
  v203 = v97;
  v204 = v98;
  v205 = v99;
  v206 = v100;
  v207 = v101;
  v208 = v86;
  v209 = v83;
  v210 = v103;
  v211 = v82;
  v212 = v87;
  v213 = v88;
  v214 = v89;
  v215 = v90;
  v216 = v91;
  v217 = v92;
  v218 = v93;
  v219 = v94;
  v220 = v53;
  v221 = v102;
  v222 = v228;
  v223 = v229;
  v224 = v84;
  v225 = v85;
  v226 = v44;
  v227 = v43;
  sub_26CCFB5C4(&v158);
  return memcpy(v26, v104, 0x208uLL);
}

unint64_t sub_26CD0D3B0()
{
  result = qword_2804BDAB0;
  if (!qword_2804BDAB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BDAB0);
  }

  return result;
}

unint64_t sub_26CD0D404()
{
  result = qword_2804BDAC8;
  if (!qword_2804BDAC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BDAC8);
  }

  return result;
}

unint64_t sub_26CD0D458()
{
  result = qword_2804BDAD0;
  if (!qword_2804BDAD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BDAD0);
  }

  return result;
}

uint64_t sub_26CD0D4AC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BDAD8, &qword_26CD486E8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_26CD0D514()
{
  result = qword_2804BDAE0;
  if (!qword_2804BDAE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BDAE0);
  }

  return result;
}

uint64_t sub_26CD0D5A0(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804BDAB8, &qword_26CD486E0);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_26CD0D618()
{
  result = qword_2804BDAF8;
  if (!qword_2804BDAF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BDAF8);
  }

  return result;
}

uint64_t sub_26CD0D66C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BDAD8, &qword_26CD486E8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_26CD0D6DC()
{
  result = qword_2804BDB00;
  if (!qword_2804BDB00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BDB00);
  }

  return result;
}

unint64_t sub_26CD0D730()
{
  result = qword_2804BDB08;
  if (!qword_2804BDB08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BDB08);
  }

  return result;
}

uint64_t sub_26CD0D7A4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 96))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_26CD0D800(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 96) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 96) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

__n128 __swift_memcpy144_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  result = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 128);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = v7;
  *(a1 + 80) = result;
  *(a1 + 96) = v6;
  return result;
}

uint64_t sub_26CD0D8A8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 144))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 104);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_26CD0D904(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
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
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 144) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 144) = 0;
    }

    if (a2)
    {
      *(result + 104) = a2;
    }
  }

  return result;
}

unint64_t sub_26CD0D990()
{
  result = qword_2804BDB10;
  if (!qword_2804BDB10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BDB10);
  }

  return result;
}

unint64_t sub_26CD0D9E8()
{
  result = qword_2804BDB18;
  if (!qword_2804BDB18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BDB18);
  }

  return result;
}

unint64_t sub_26CD0DA40()
{
  result = qword_2804BDB20;
  if (!qword_2804BDB20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BDB20);
  }

  return result;
}

unint64_t sub_26CD0DA98()
{
  result = qword_2804BDB28;
  if (!qword_2804BDB28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BDB28);
  }

  return result;
}

uint64_t sub_26CD0DAEC()
{
  v0 = sub_26CD3AD9C();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_26CD0DB38(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000015 && 0x800000026CD4E1B0 == a2 || (sub_26CD3AFDC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6449646E617262 && a2 == 0xE700000000000000 || (sub_26CD3AFDC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6449656C646E7562 && a2 == 0xE900000000000073 || (sub_26CD3AFDC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x4170704176547369 && a2 == 0xED00006E6F697463 || (sub_26CD3AFDC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 1701869940 && a2 == 0xE400000000000000)
  {

    return 4;
  }

  else
  {
    v5 = sub_26CD3AFDC();

    if (v5)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_26CD0DD04@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BDB30, &unk_26CD48AB0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v34 - v8;
  v10 = a1[3];
  v11 = a1[4];
  v41 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v10);
  sub_26CD0E21C();
  sub_26CD3B15C();
  if (v2)
  {
    v42 = v2;
    v46 = 0;
    v47 = 0;
    v44 = 0;
    v45 = 0;
    v43 = 0;
    v49 = 0;
    v95 = 0;
    v50 = 0;
    v48 = 2;
    __swift_destroy_boxed_opaque_existential_1(v41);
    v75 = v47;
    v76 = 1;
    v77 = v46;
    v78 = v45;
    v79 = v44;
    v80 = v43;
    v81 = 0;
    v82 = 0;
    v83 = 0;
    v84 = 0;
    v85 = 0;
    v86 = 0;
    v87 = v50;
    v88 = v95;
    v89 = v49;
    v90 = v48;
    *v91 = v94[0];
    *&v91[3] = *(v94 + 3);
    v92 = 0;
    v93 = 0;
    return sub_26CD0E270(&v75);
  }

  else
  {
    v62 = 0;
    sub_26CD0D458();
    sub_26CD3AE2C();
    v34 = a2;
    v35 = v64;
    v46 = v65;
    v47 = v63;
    v45 = v66;
    v13 = v67;
    v14 = v68;
    v39 = v70;
    v40 = v69;
    v15 = v71;
    v37 = v73;
    v38 = v72;
    v36 = v74;
    v61[0] = xmmword_26CD3E690;
    memset(&v61[1], 0, 80);
    sub_26CD0D4AC(v61);
    LOBYTE(v75) = 1;
    v16 = sub_26CD3ADDC();
    v43 = v14;
    v44 = v13;
    v50 = v16;
    v95 = v17;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA20, &unk_26CD3D4D0);
    LOBYTE(v51) = 2;
    sub_26CC3F22C(&qword_2804BBE98);
    sub_26CD3AE2C();
    v18 = v75;
    LOBYTE(v75) = 3;
    v19 = sub_26CD3ADEC();
    v49 = v18;
    v48 = v19;
    v60 = 4;
    v20 = sub_26CD3ADDC();
    v42 = 0;
    v21 = v20;
    v23 = v22;
    (*(v6 + 8))(v9, v5);
    v25 = v46;
    v24 = v47;
    *&v51 = v47;
    *(&v51 + 1) = v35;
    v26 = v44;
    v27 = v45;
    *&v52 = v46;
    *(&v52 + 1) = v45;
    v28 = v43;
    *&v53 = v44;
    *(&v53 + 1) = v43;
    *&v54 = v40;
    *(&v54 + 1) = v39;
    *&v55 = v15;
    *(&v55 + 1) = v38;
    *&v56 = v37;
    *(&v56 + 1) = v36;
    *&v57 = v50;
    *(&v57 + 1) = v95;
    *&v58 = v49;
    BYTE8(v58) = v48;
    *&v59 = v21;
    *(&v59 + 1) = v23;
    sub_26CD0E2A0(&v51, &v75);
    __swift_destroy_boxed_opaque_existential_1(v41);
    v75 = v24;
    v76 = v35;
    v77 = v25;
    v78 = v27;
    v79 = v26;
    v80 = v28;
    v81 = v40;
    v82 = v39;
    v83 = v15;
    v84 = v38;
    v85 = v37;
    v86 = v36;
    v87 = v50;
    v88 = v95;
    v89 = v49;
    v90 = v48;
    v92 = v21;
    v93 = v23;
    result = sub_26CD0E270(&v75);
    v29 = v58;
    v30 = v34;
    v34[6] = v57;
    v30[7] = v29;
    v30[8] = v59;
    v31 = v54;
    v30[2] = v53;
    v30[3] = v31;
    v32 = v56;
    v30[4] = v55;
    v30[5] = v32;
    v33 = v52;
    *v30 = v51;
    v30[1] = v33;
  }

  return result;
}

unint64_t sub_26CD0E21C()
{
  result = qword_2804BDB38;
  if (!qword_2804BDB38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BDB38);
  }

  return result;
}

uint64_t sub_26CD0E2D8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7654656C707041 && a2 == 0xE700000000000000;
  if (v4 || (sub_26CD3AFDC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 7565129 && a2 == 0xE300000000000000 || (sub_26CD3AFDC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6576694C5F736F49 && a2 == 0xE800000000000000 || (sub_26CD3AFDC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x534F63614DLL && a2 == 0xE500000000000000 || (sub_26CD3AFDC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6173726576696E55 && a2 == 0xE90000000000006CLL || (sub_26CD3AFDC() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x734F6E6F69736956 && a2 == 0xE800000000000000)
  {

    return 5;
  }

  else
  {
    v6 = sub_26CD3AFDC();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

uint64_t sub_26CD0E4D8@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BDB40, &qword_26CD48AC0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v36 - v8;
  v10 = a1[3];
  v11 = a1[4];
  v46 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v10);
  sub_26CD0EA30();
  sub_26CD3B15C();
  if (v2)
  {
    v47 = v2;
    v45 = 0;
    __swift_destroy_boxed_opaque_existential_1(v46);
    v54 = 0;
    v55 = 0;
    v56 = 0;
    v57 = 0;
    v58 = 0;
    v59 = 0;
    v60 = 0;
    v61 = 0;
    v62 = 0;
    v63 = v45;
    v64 = 0;
    v65 = 0;
    return sub_26CD0EA84(&v54);
  }

  else
  {
    LOBYTE(v54) = 0;
    *&v44 = sub_26CD3ADDC();
    *(&v44 + 1) = v13;
    LOBYTE(v54) = 1;
    v43 = sub_26CD3ADDC();
    v42 = v14;
    LOBYTE(v54) = 2;
    v15 = sub_26CD3ADDC();
    v41 = v16;
    LOBYTE(v54) = 3;
    v17 = sub_26CD3ADDC();
    v40 = v18;
    v39 = a2;
    LOBYTE(v54) = 4;
    v19 = sub_26CD3ADDC();
    v45 = v20;
    v66 = 5;
    v21 = sub_26CD3ADDC();
    v47 = 0;
    v22 = v21;
    v24 = v23;
    (*(v6 + 8))(v9, v5);
    v25 = v44;
    v48 = v44;
    v26 = *(&v44 + 1);
    *&v49 = v43;
    v27 = v42;
    *(&v49 + 1) = v42;
    *&v50 = v15;
    v38 = v15;
    v28 = v41;
    *(&v50 + 1) = v41;
    *&v51 = v17;
    v37 = v17;
    v29 = v40;
    *(&v51 + 1) = v40;
    *&v52 = v19;
    v30 = v19;
    v31 = v45;
    *(&v52 + 1) = v45;
    *&v53 = v22;
    *(&v53 + 1) = v24;
    sub_26CD0EAB4(&v48, &v54);
    __swift_destroy_boxed_opaque_existential_1(v46);
    v54 = v25;
    v55 = v26;
    v56 = v43;
    v57 = v27;
    v58 = v38;
    v59 = v28;
    v60 = v37;
    v61 = v29;
    v62 = v30;
    v63 = v31;
    v64 = v22;
    v65 = v24;
    result = sub_26CD0EA84(&v54);
    v32 = v51;
    v33 = v39;
    v39[2] = v50;
    v33[3] = v32;
    v34 = v53;
    v33[4] = v52;
    v33[5] = v34;
    v35 = v49;
    *v33 = v48;
    v33[1] = v35;
  }

  return result;
}

unint64_t sub_26CD0EA30()
{
  result = qword_2804BDB48;
  if (!qword_2804BDB48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BDB48);
  }

  return result;
}

unint64_t sub_26CD0EAEC()
{
  result = qword_2804BDB50;
  if (!qword_2804BDB50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BDB50);
  }

  return result;
}

unint64_t sub_26CD0EB64()
{
  result = qword_2804BDB68;
  if (!qword_2804BDB68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BDB68);
  }

  return result;
}

unint64_t sub_26CD0EBBC()
{
  result = qword_2804BDB70;
  if (!qword_2804BDB70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BDB70);
  }

  return result;
}

unint64_t sub_26CD0EC14()
{
  result = qword_2804BDB78;
  if (!qword_2804BDB78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BDB78);
  }

  return result;
}

unint64_t sub_26CD0EC6C()
{
  result = qword_2804BDB80;
  if (!qword_2804BDB80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BDB80);
  }

  return result;
}

unint64_t sub_26CD0ECC4()
{
  result = qword_2804BDB88;
  if (!qword_2804BDB88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BDB88);
  }

  return result;
}

unint64_t sub_26CD0ED1C()
{
  result = qword_2804BDB90;
  if (!qword_2804BDB90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BDB90);
  }

  return result;
}

uint64_t sub_26CD0EDC4()
{
  sub_26CD0EE28(v0 + 16);
  v1 = *(v0 + 64);

  return swift_deallocClassInstance();
}

uint64_t sub_26CD0EE28(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BDB98, &unk_26CD48D80);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_26CD0EE90(uint64_t a1, void *a2)
{
  v3 = __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  v4 = *v3;
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC10, &unk_26CD3D4C0);
    v5 = swift_allocError();
    *v6 = a2;
    v7 = a2;

    return MEMORY[0x282200958](v4, v5);
  }

  else
  {
    v8 = *v3;

    return MEMORY[0x282200950](v8);
  }
}

uint64_t NotificationServiceError.hashValue.getter()
{
  v1 = *v0;
  sub_26CD3B0FC();
  MEMORY[0x26D6ADAF0](v1);
  return sub_26CD3B13C();
}

uint64_t sub_26CD0EFC4()
{
  type metadata accessor for NotificationService();
  v0 = swift_allocObject();
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0;
  *(v0 + 16) = 0u;
  v3 = type metadata accessor for UNNotificationClient();
  v4 = &off_287E00918;
  v2[0] = [objc_allocWithZone(v3) init];
  swift_beginAccess();
  sub_26CD10288(v2, v0 + 16);
  result = swift_endAccess();
  qword_2804BDBA0 = v0;
  return result;
}

uint64_t static NotificationService.shared.getter()
{
  if (qword_2804BBA98 != -1)
  {
    swift_once();
  }
}

uint64_t sub_26CD0F0D0(uint64_t a1)
{
  *(v2 + 208) = a1;
  *(v2 + 216) = v1;
  return MEMORY[0x2822009F8](sub_26CD0F0F0, 0, 0);
}

uint64_t sub_26CD0F0F0()
{
  v1 = *(v0 + 216);
  swift_beginAccess();
  sub_26CD0F584(v1 + 16, v0 + 80);
  if (*(v0 + 104))
  {
    v2 = *(v0 + 208);
    sub_26CC2524C((v0 + 80), v0 + 144);
    v3 = *(*__swift_project_boxed_opaque_existential_1((v0 + 144), *(v0 + 168)) + OBJC_IVAR____TtC13TVAppServices20UNNotificationClient_center);
    *(v0 + 16) = v0;
    *(v0 + 24) = sub_26CD0F39C;
    v4 = swift_continuation_init();
    *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BCA48, &qword_26CD42810);
    *(v0 + 80) = MEMORY[0x277D85DD0];
    *(v0 + 88) = 1107296256;
    *(v0 + 96) = sub_26CD0EE90;
    *(v0 + 104) = &block_descriptor_13;
    *(v0 + 112) = v4;
    [v3 setBadgeCount:v2 withCompletionHandler:v0 + 80];

    return MEMORY[0x282200938](v0 + 16);
  }

  else
  {
    sub_26CD0F5F4(v0 + 80);
    if (qword_280BB9C20 != -1)
    {
      swift_once();
    }

    sub_26CD3A98C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_26CD3C1E0;
    *(v5 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA20, &unk_26CD3D4D0);
    *(v5 + 64) = sub_26CC2E6E8();
    *(v5 + 32) = &unk_287DFC158;
    sub_26CD3A3DC();

    sub_26CC7BCA0();
    swift_allocError();
    *v6 = 1;
    swift_willThrow();
    v7 = *(v0 + 8);

    return v7();
  }
}

uint64_t sub_26CD0F39C()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 224) = v2;
  if (v2)
  {
    v3 = sub_26CD0F510;
  }

  else
  {
    v3 = sub_26CD0F4AC;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_26CD0F4AC()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 144));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_26CD0F510()
{
  v1 = v0[28];
  swift_willThrow();
  __swift_destroy_boxed_opaque_existential_1(v0 + 18);
  v2 = v0[28];
  v3 = v0[1];

  return v3();
}

uint64_t sub_26CD0F584(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BDBA8, qword_26CD48D98);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26CD0F5F4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BDBA8, qword_26CD48D98);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_26CD0F65C(uint64_t a1)
{
  *(v2 + 120) = a1;
  *(v2 + 128) = v1;
  return MEMORY[0x2822009F8](sub_26CD0F67C, 0, 0);
}

uint64_t sub_26CD0F67C()
{
  v1 = *(v0 + 128);
  swift_beginAccess();
  sub_26CD0F584(v1 + 16, v0 + 56);
  if (*(v0 + 80))
  {
    sub_26CC2524C((v0 + 56), v0 + 16);
    v2 = *__swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
    v3 = swift_task_alloc();
    *(v0 + 136) = v3;
    *v3 = v0;
    v3[1] = sub_26CC3D674;
    v4 = *(v0 + 120);

    return sub_26CC75A20(v4);
  }

  else
  {
    sub_26CD0F5F4(v0 + 56);
    if (qword_280BB9C20 != -1)
    {
      swift_once();
    }

    sub_26CD3A98C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_26CD3C1E0;
    *(v6 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA20, &unk_26CD3D4D0);
    *(v6 + 64) = sub_26CC2E6E8();
    *(v6 + 32) = &unk_287DFC158;
    sub_26CD3A3DC();

    sub_26CC7BCA0();
    swift_allocError();
    *v7 = 1;
    swift_willThrow();
    v8 = *(v0 + 8);

    return v8();
  }
}

uint64_t sub_26CD0F898(_BYTE *a1, _BYTE *a2)
{
  *(v3 + 120) = v2;
  *(v3 + 146) = *a1;
  *(v3 + 147) = *a2;
  return MEMORY[0x2822009F8](sub_26CD0F8C8, 0, 0);
}

uint64_t sub_26CD0F8C8()
{
  v1 = *(v0 + 120);
  swift_beginAccess();
  sub_26CD0F584(v1 + 16, v0 + 56);
  if (*(v0 + 80))
  {
    v2 = *(v0 + 147);
    v3 = *(v0 + 146);
    sub_26CC2524C((v0 + 56), v0 + 16);
    v4 = __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
    *(v0 + 144) = v3;
    *(v0 + 145) = v2;
    v5 = *v4;
    v6 = swift_task_alloc();
    *(v0 + 128) = v6;
    *v6 = v0;
    v6[1] = sub_26CD0FB00;

    return sub_26CC76658((v0 + 144), (v0 + 145));
  }

  else
  {
    sub_26CD0F5F4(v0 + 56);
    if (qword_280BB9C20 != -1)
    {
      swift_once();
    }

    sub_26CD3A98C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_26CD3C1E0;
    *(v8 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA20, &unk_26CD3D4D0);
    *(v8 + 64) = sub_26CC2E6E8();
    *(v8 + 32) = &unk_287DFC158;
    sub_26CD3A3DC();

    sub_26CC7BCA0();
    swift_allocError();
    *v9 = 1;
    swift_willThrow();
    v10 = *(v0 + 8);

    return v10(0);
  }
}

uint64_t sub_26CD0FB00(char a1)
{
  v4 = *v2;
  v5 = *(*v2 + 128);
  v6 = *v2;
  *(*v2 + 136) = v1;

  if (v1)
  {
    v7 = sub_26CD0FC94;
  }

  else
  {
    *(v4 + 148) = a1 & 1;
    v7 = sub_26CD0FC2C;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_26CD0FC2C()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  v1 = *(v0 + 8);
  v2 = *(v0 + 148);

  return v1(v2);
}

uint64_t sub_26CD0FC94()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v1 = v0[17];
  v2 = v0[1];

  return v2(0);
}

uint64_t NotificationService.__deallocating_deinit()
{
  sub_26CD0F5F4(v0 + 16);

  return swift_deallocClassInstance();
}

unint64_t sub_26CD0FD58()
{
  result = qword_2804BDBB0;
  if (!qword_2804BDBB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BDBB0);
  }

  return result;
}

uint64_t sub_26CD0FDBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 8);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_26CC37110;

  return v11(a1, a2, a3);
}

uint64_t dispatch thunk of NotificationService.badgeCount(_:)(uint64_t a1)
{
  v4 = *(*v1 + 120);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_26CC37110;

  return v8(a1);
}

uint64_t dispatch thunk of NotificationService.deliverNotification(payload:)(uint64_t a1)
{
  v4 = *(*v1 + 128);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_26CC246B8;

  return v8(a1);
}

uint64_t dispatch thunk of NotificationService.isEnabled(category:setting:)(uint64_t a1, uint64_t a2)
{
  v6 = *(*v2 + 136);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_26CC5C5BC;

  return v10(a1, a2);
}

uint64_t sub_26CD10288(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BDBA8, qword_26CD48D98);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t RequestContentType.hashValue.getter()
{
  v1 = *v0;
  sub_26CD3B0FC();
  MEMORY[0x26D6ADAF0](v1);
  return sub_26CD3B13C();
}

unint64_t sub_26CD10388()
{
  result = qword_2804BDBB8;
  if (!qword_2804BDBB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BDBB8);
  }

  return result;
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_26CD10400(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 17))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
  v4 = v3 >= 2;
  v5 = v3 - 2;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_26CD10444(uint64_t result, unsigned int a2, unsigned int a3)
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
      *(result + 16) = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_26CD10498(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 8);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_26CC37110;

  return v11(a1, a2, a3);
}

uint64_t sub_26CD105C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 16);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_26CC246B8;

  return v11(a1, a2, a3);
}

uint64_t sub_26CD106E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 24);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = sub_26CC5C5BC;

  return v13(a1, a2, a3, a4);
}

uint64_t sub_26CD1082C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 360) = a4;
  *(v5 + 368) = a5;
  return MEMORY[0x2822009F8](sub_26CD1084C, 0, 0);
}

uint64_t sub_26CD1084C()
{
  sub_26CC200FC(*(v0 + 360), v0 + 160);
  if (!*(v0 + 184))
  {
    sub_26CC1B544(v0 + 160, &qword_2804BBDA8, &qword_26CD3D5F0);
LABEL_5:
    sub_26CC200FC(*(v0 + 360), v0 + 192);
    if (*(v0 + 216))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BBDA0, &unk_26CD3D4F0);
      if (swift_dynamicCast())
      {
        v2 = *(v0 + 336);
        v51 = *(v2 + 16);
        if (!v51)
        {
          v4 = MEMORY[0x277D84F90];
          goto LABEL_56;
        }

        goto LABEL_8;
      }
    }

    else
    {
      sub_26CC1B544(v0 + 192, &qword_2804BBDA8, &qword_26CD3D5F0);
    }

    if (qword_280BB9C20 == -1)
    {
LABEL_52:
      v44 = *(v0 + 360);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA10, &qword_26CD3C670);
      v45 = swift_allocObject();
      *(v45 + 16) = xmmword_26CD3C1E0;
      sub_26CD3AC6C();
      MEMORY[0x26D6AD060](0xD000000000000033, 0x800000026CD527A0);
      sub_26CC200FC(v44, v0 + 224);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BBDA8, &qword_26CD3D5F0);
      v46 = sub_26CD3A5FC();
      MEMORY[0x26D6AD060](v46);

      *(v45 + 32) = 0;
      *(v45 + 40) = 0xE000000000000000;
      sub_26CD3A98C();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
      v47 = swift_allocObject();
      *(v47 + 16) = xmmword_26CD3C1E0;
      *(v47 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA20, &unk_26CD3D4D0);
      *(v47 + 64) = sub_26CC2E6E8();
      *(v47 + 32) = v45;
      sub_26CD3A3DC();

      v48 = *(v0 + 8);

      return v48();
    }

LABEL_63:
    swift_once();
    goto LABEL_52;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC30, &qword_26CD46430);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_5;
  }

  v1 = *(v0 + 352);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BBB70, &unk_26CD3C680);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_26CD3C1E0;
  *(v2 + 32) = v1;
  v51 = 1;
LABEL_8:
  v3 = 0;
  v52 = v2 + 32;
  v55 = *(v0 + 368);
  v4 = MEMORY[0x277D84F90];
  v50 = v2;
  do
  {
    if (v3 >= *(v2 + 16))
    {
      goto LABEL_62;
    }

    v5 = *(v0 + 368);
    v53 = v3 + 1;
    v54 = v4;
    v6 = *(v52 + 8 * v3);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v56 = v6;
    v8 = -1 << *(v55 + 32);
    if (-v8 < 64)
    {
      v9 = ~(-1 << -v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v55 + 64);
    v11 = (63 - v8) >> 6;

    v12 = 0;
    if (!v10)
    {
LABEL_17:
      if (v11 <= v12 + 1)
      {
        v16 = v12 + 1;
      }

      else
      {
        v16 = v11;
      }

      v17 = v16 - 1;
      while (1)
      {
        v15 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          break;
        }

        if (v15 >= v11)
        {
          v10 = 0;
          *(v0 + 80) = 0u;
          *(v0 + 96) = 0u;
          v12 = v17;
          *(v0 + 64) = 0u;
          goto LABEL_26;
        }

        v10 = *(v55 + 64 + 8 * v15);
        ++v12;
        if (v10)
        {
          v12 = v15;
          goto LABEL_25;
        }
      }

      __break(1u);
LABEL_60:
      __break(1u);
LABEL_61:
      __break(1u);
LABEL_62:
      __break(1u);
      goto LABEL_63;
    }

    while (1)
    {
      v15 = v12;
LABEL_25:
      v18 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
      v19 = v18 | (v15 << 6);
      v20 = (*(v55 + 48) + 16 * v19);
      v22 = *v20;
      v21 = v20[1];
      sub_26CC168C0(*(v55 + 56) + 32 * v19, v0 + 256);
      *(v0 + 64) = v22;
      *(v0 + 72) = v21;
      sub_26CC331CC((v0 + 256), (v0 + 80));

LABEL_26:
      v23 = *(v0 + 80);
      *(v0 + 112) = *(v0 + 64);
      *(v0 + 128) = v23;
      *(v0 + 144) = *(v0 + 96);
      v24 = *(v0 + 120);
      if (!v24)
      {
        break;
      }

      v25 = *(v0 + 112);
      sub_26CC168C0(v0 + 128, v0 + 32);
      *(v0 + 16) = v25;
      *(v0 + 24) = v24;

      sub_26CC1B544(v0 + 112, &qword_2804BD9D8, qword_26CD47D98);
      v26 = *(v0 + 24);
      if (!v26)
      {
        goto LABEL_41;
      }

      v27 = *(v0 + 16);
      sub_26CC331CC((v0 + 32), (v0 + 288));
      v28 = sub_26CC181C4(v27, v26);
      v30 = v6[2];
      v31 = (v29 & 1) == 0;
      v32 = __OFADD__(v30, v31);
      v33 = v30 + v31;
      if (v32)
      {
        goto LABEL_60;
      }

      v34 = v29;
      if (v6[3] >= v33)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          goto LABEL_33;
        }

        v39 = v28;
        sub_26CD36B88();
        v28 = v39;
        v6 = v56;
        if ((v34 & 1) == 0)
        {
          goto LABEL_34;
        }

LABEL_15:
        v13 = v28;

        v14 = (v6[7] + 32 * v13);
        __swift_destroy_boxed_opaque_existential_1(v14);
        sub_26CC331CC((v0 + 288), v14);
        isUniquelyReferenced_nonNull_native = 1;
        if (!v10)
        {
          goto LABEL_17;
        }
      }

      else
      {
        sub_26CD34624(v33, isUniquelyReferenced_nonNull_native & 1);
        v6 = v56;
        v28 = sub_26CC181C4(v27, v26);
        if ((v34 & 1) != (v35 & 1))
        {

          return sub_26CD3B02C();
        }

LABEL_33:
        if (v34)
        {
          goto LABEL_15;
        }

LABEL_34:
        v6[(v28 >> 6) + 8] |= 1 << v28;
        v36 = (v6[6] + 16 * v28);
        *v36 = v27;
        v36[1] = v26;
        sub_26CC331CC((v0 + 288), (v6[7] + 32 * v28));
        v37 = v6[2];
        v32 = __OFADD__(v37, 1);
        v38 = v37 + 1;
        if (v32)
        {
          goto LABEL_61;
        }

        v6[2] = v38;
        isUniquelyReferenced_nonNull_native = 1;
        if (!v10)
        {
          goto LABEL_17;
        }
      }
    }

    *(v0 + 32) = 0u;
    *(v0 + 48) = 0u;
    *(v0 + 16) = 0u;
LABEL_41:
    v40 = *(v0 + 368);

    v4 = v54;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v4 = sub_26CCBF508(0, v54[2] + 1, 1, v54);
    }

    v2 = v50;
    v42 = v4[2];
    v41 = v4[3];
    if (v42 >= v41 >> 1)
    {
      v4 = sub_26CCBF508((v41 > 1), v42 + 1, 1, v4);
      v2 = v50;
    }

    v4[2] = v42 + 1;
    v4[v42 + 4] = v6;
    v3 = v53;
  }

  while (v53 != v51);
LABEL_56:
  *(v0 + 376) = v4;

  v49 = swift_task_alloc();
  *(v0 + 384) = v49;
  *v49 = v0;
  v49[1] = sub_26CD10F98;

  return sub_26CC595F0(v4);
}

uint64_t sub_26CD10F98()
{
  v2 = *(*v1 + 384);
  v3 = *v1;
  v3[49] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_26CD110D4, 0, 0);
  }

  else
  {
    v4 = v3[47];

    v5 = v3[1];

    return v5();
  }
}

uint64_t sub_26CD110D4()
{
  v1 = v0[47];

  if (qword_280BB9C20 != -1)
  {
    swift_once();
  }

  v2 = v0[49];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA10, &qword_26CD3C670);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_26CD3C1E0;
  sub_26CD3AC6C();
  v0[40] = 0;
  v0[41] = 0xE000000000000000;
  MEMORY[0x26D6AD060](0xD000000000000039, 0x800000026CD527E0);
  v0[43] = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC10, &unk_26CD3D4C0);
  sub_26CD3AD1C();
  v4 = v0[41];
  *(v3 + 32) = v0[40];
  *(v3 + 40) = v4;
  sub_26CD3A98C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_26CD3C1E0;
  *(v5 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA20, &unk_26CD3D4D0);
  *(v5 + 64) = sub_26CC2E6E8();
  *(v5 + 32) = v3;
  sub_26CD3A3DC();

  v6 = v0[1];

  return v6();
}

uint64_t sub_26CD112C0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  sub_26CC168C0((a1 + 2), (a2 + 2));
  *a2 = v4;
  a2[1] = v3;
}

uint64_t sub_26CD1130C@<X0>(_OWORD *a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v6 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  if (v7)
  {
    v8 = v1[3];
LABEL_10:
    v12 = (v7 - 1) & v7;
    v13 = __clz(__rbit64(v7)) | (v8 << 6);
    v14 = (*(v3 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    sub_26CC168C0(*(v3 + 56) + 32 * v13, v22);
    *&v23 = v16;
    *(&v23 + 1) = v15;
    sub_26CC331CC(v22, &v24);

    v18 = *(&v23 + 1);
    v19 = v23;
    v11 = v8;
LABEL_11:
    *v1 = v3;
    v1[1] = v4;
    v1[2] = v6;
    v1[3] = v11;
    v1[4] = v12;
    if (v18)
    {
      v21 = v1[5];
      v20 = v1[6];
      *&v22[0] = v19;
      *(&v22[0] + 1) = v18;
      v22[1] = v24;
      v22[2] = v25;
      v21(v22);
      return sub_26CC1B544(v22, &qword_2804BD9D8, qword_26CD47D98);
    }

    else
    {
      a1[1] = 0u;
      a1[2] = 0u;
      *a1 = 0u;
    }
  }

  else
  {
    v9 = (v6 + 64) >> 6;
    if (v9 <= v5 + 1)
    {
      v10 = v5 + 1;
    }

    else
    {
      v10 = (v6 + 64) >> 6;
    }

    v11 = v10 - 1;
    while (1)
    {
      v8 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      if (v8 >= v9)
      {
        v18 = 0;
        v19 = 0;
        v12 = 0;
        v24 = 0u;
        v25 = 0u;
        v23 = 0u;
        goto LABEL_11;
      }

      v7 = *(v4 + 8 * v8);
      ++v5;
      if (v7)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_26CD114D0()
{
  v1 = *(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t PlaybackEventQueueService.__allocating_init(directoryName:eventsFileName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_allocObject();
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_26CC30618;

  return PlaybackEventQueueService.init(directoryName:eventsFileName:)(a1, a2, a3, a4);
}

uint64_t PlaybackEventQueueService.init(directoryName:eventsFileName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[8] = a4;
  v5[9] = v4;
  v5[6] = a2;
  v5[7] = a3;
  v5[5] = a1;
  return MEMORY[0x2822009F8](sub_26CD11674, 0, 0);
}

uint64_t sub_26CD11674()
{
  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[6];
  v4 = v0[7];
  v5 = v0[5];
  swift_defaultActor_initialize();
  v1[19] = MEMORY[0x277D84F90];
  v1[16] = v5;
  v1[17] = v3;
  v1[14] = v4;
  v1[15] = v2;
  v6 = type metadata accessor for CacheStorage();
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  v9 = swift_allocObject();
  v10 = OBJC_IVAR____TtC13TVAppServices12CacheStorage____lazy_storage___cacheUrl;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BCA30, &qword_26CD3DA70);
  (*(*(v11 - 8) + 56))(v9 + v10, 1, 1, v11);
  *(v9 + 16) = v5;
  *(v9 + 24) = v3;
  v1[18] = v9;

  v12 = swift_task_alloc();
  v0[10] = v12;
  *v12 = v0;
  v12[1] = sub_26CD117BC;
  v13 = v0[9];

  return sub_26CD11A1C();
}

uint64_t sub_26CD117BC(uint64_t a1)
{
  v3 = v1;
  v5 = *v2;
  v6 = *(*v2 + 80);
  v7 = *(*v2 + 72);
  v8 = *v2;
  *(*v2 + 88) = v3;

  sub_26CD12250();
  swift_getObjectType();
  v10 = sub_26CD3A80C();
  if (v3)
  {
    v11 = sub_26CD119B8;
  }

  else
  {
    *(v5 + 96) = a1;
    v11 = sub_26CD11920;
  }

  return MEMORY[0x2822009F8](v11, v10, v9);
}

uint64_t sub_26CD11920()
{
  v1 = v0[9];
  if (v0[12])
  {
    v2 = v0[12];
  }

  else
  {
    v2 = MEMORY[0x277D84F90];
  }

  swift_beginAccess();
  v3 = *(v1 + 152);
  *(v1 + 152) = v2;

  v4 = v0[1];
  v5 = v0[9];

  return v4(v5);
}

uint64_t sub_26CD119B8()
{
  v1 = v0[9];

  v2 = v0[1];
  v3 = v0[11];

  return v2();
}

uint64_t sub_26CD11A1C()
{
  v11 = *MEMORY[0x277D85DE8];
  v1[14] = v0;
  v2 = sub_26CD39F9C();
  v1[15] = v2;
  v3 = *(v2 - 8);
  v1[16] = v3;
  v4 = *(v3 + 64) + 15;
  v1[17] = swift_task_alloc();
  v5 = sub_26CD3A07C();
  v1[18] = v5;
  v6 = *(v5 - 8);
  v1[19] = v6;
  v7 = *(v6 + 64) + 15;
  v1[20] = swift_task_alloc();
  v1[21] = swift_task_alloc();
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BCA30, &qword_26CD3DA70) - 8) + 64) + 15;
  v1[22] = swift_task_alloc();
  v1[23] = swift_task_alloc();
  v9 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_26CD11BBC, v0, 0);
}

uint64_t sub_26CD11BBC()
{
  v71 = *MEMORY[0x277D85DE8];
  v2 = v0[22];
  v1 = v0[23];
  v3 = v0[18];
  v4 = v0[19];
  v5 = *(v0[14] + 144);
  sub_26CC6E7A0(v1);
  sub_26CC4EDBC(v1, v2);
  if ((*(v4 + 48))(v2, 1, v3) == 1)
  {
    v6 = v0[23];
    sub_26CC3C0E0(v0[22]);
LABEL_10:
    sub_26CC3C0E0(v6);
    v31 = MEMORY[0x277D84F90];
LABEL_11:
    v33 = v0[22];
    v32 = v0[23];
    v35 = v0[20];
    v34 = v0[21];
    v36 = v0[17];

    v37 = v0[1];
    v38 = *MEMORY[0x277D85DE8];

    return v37(v31);
  }

  (*(v0[19] + 32))(v0[21], v0[22], v0[18]);
  v7 = objc_opt_self();
  v8 = [v7 defaultManager];
  sub_26CD39FFC();
  v9 = sub_26CD3A59C();

  v10 = [v8 fileExistsAtPath_];

  if (!v10)
  {
    v6 = v0[23];
    (*(v0[19] + 8))(v0[21], v0[18]);
    goto LABEL_10;
  }

  v11 = v0[21];
  v12 = [v7 defaultManager];
  sub_26CD39FFC();
  v13 = sub_26CD3A59C();

  v0[11] = 0;
  v14 = [v12 contentsOfDirectoryAtPath:v13 error:v0 + 11];

  v15 = v0[11];
  if (v14)
  {
    v16 = sub_26CD3A7AC();
    v17 = v15;

    v18 = *(v16 + 16);
    if (v18)
    {
      v19 = (v16 + 40);
      do
      {
        v20 = *(v19 - 1);
        v21 = *v19;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BDBC8, qword_26CD492A8);
        v22 = swift_allocObject();
        *(v22 + 16) = xmmword_26CD3C1E0;

        MEMORY[0x26D6AD060](v20, v21);

        *(v22 + 56) = MEMORY[0x277D837D0];
        *(v22 + 32) = 0x20646E756F46;
        *(v22 + 40) = 0xE600000000000000;
        sub_26CD3B0DC();

        v19 += 2;
        --v18;
      }

      while (v18);
    }

    v24 = v0[20];
    v23 = v0[21];
    v26 = v0[16];
    v25 = v0[17];
    v27 = v0[14];
    v28 = v0[15];

    v29 = *(v27 + 112);
    v30 = *(v27 + 120);
    v0[9] = v29;
    v0[10] = v30;
    (*(v26 + 104))(v25, *MEMORY[0x277CC91D0], v28);
    sub_26CC16DCC();

    sub_26CD3A06C();
    (*(v26 + 8))(v25, v28);

    v50 = sub_26CD3A08C();
    v52 = v51;
    v53 = objc_opt_self();
    v54 = sub_26CD3A09C();
    v0[12] = 0;
    v55 = [v53 JSONObjectWithData:v54 options:0 error:v0 + 12];

    v56 = v0[12];
    if (v55)
    {
      v57 = v56;
      sub_26CD3AB3C();
      swift_unknownObjectRelease();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BBDA0, &unk_26CD3D4F0);
      if (swift_dynamicCast())
      {
        v58 = v0[13];
        sub_26CC18C50(v50, v52);
      }

      else
      {
        sub_26CC18C50(v50, v52);
        v58 = MEMORY[0x277D84F90];
      }

      v65 = v0[23];
      v66 = v0[21];
      v67 = v0[18];
      v68 = v0[14];
      v69 = *(v0[19] + 8);
      v69(v0[20], v67);
      v69(v66, v67);
      sub_26CC3C0E0(v65);
      swift_beginAccess();
      v70 = *(v68 + 152);
      *(v68 + 152) = v58;

      v31 = *(v68 + 152);

      goto LABEL_11;
    }

    v60 = v0[20];
    v59 = v0[21];
    v61 = v0[18];
    v62 = v0[19];
    v63 = v56;
    sub_26CD39F8C();

    swift_willThrow();
    sub_26CC18C50(v50, v52);
    v64 = *(v62 + 8);
    v64(v60, v61);
    v64(v59, v61);
  }

  else
  {
    v40 = v0[21];
    v41 = v0[18];
    v42 = v0[19];
    v43 = v15;
    sub_26CD39F8C();

    swift_willThrow();
    (*(v42 + 8))(v40, v41);
  }

  v44 = v0[22];
  v46 = v0[20];
  v45 = v0[21];
  v47 = v0[17];
  sub_26CC3C0E0(v0[23]);

  v48 = v0[1];
  v49 = *MEMORY[0x277D85DE8];

  return v48();
}

unint64_t sub_26CD12250()
{
  result = qword_2804BDBC0;
  if (!qword_2804BDBC0)
  {
    type metadata accessor for PlaybackEventQueueService();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BDBC0);
  }

  return result;
}

uint64_t sub_26CD122C8(uint64_t a1)
{
  *(v2 + 40) = a1;
  *(v2 + 48) = v1;
  return MEMORY[0x2822009F8](sub_26CD122E8, v1, 0);
}

uint64_t sub_26CD122E8()
{
  v1 = v0[5];
  v2 = v0[6];
  swift_beginAccess();
  v3 = *(v2 + 152);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v2 + 152) = v3;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v3 = sub_26CCBF508(0, v3[2] + 1, 1, v3);
    *(v2 + 152) = v3;
  }

  v6 = v3[2];
  v5 = v3[3];
  if (v6 >= v5 >> 1)
  {
    v3 = sub_26CCBF508((v5 > 1), v6 + 1, 1, v3);
  }

  v7 = v0[5];
  v3[2] = v6 + 1;
  v3[v6 + 4] = v7;
  *(v2 + 152) = v3;
  swift_endAccess();
  v8 = swift_task_alloc();
  v0[7] = v8;
  *v8 = v0;
  v8[1] = sub_26CCBF914;
  v9 = v0[6];

  return sub_26CD12424();
}

uint64_t sub_26CD12424()
{
  v11 = *MEMORY[0x277D85DE8];
  v1[9] = v0;
  v2 = sub_26CD39F9C();
  v1[10] = v2;
  v3 = *(v2 - 8);
  v1[11] = v3;
  v4 = *(v3 + 64) + 15;
  v1[12] = swift_task_alloc();
  v5 = sub_26CD3A07C();
  v1[13] = v5;
  v6 = *(v5 - 8);
  v1[14] = v6;
  v7 = *(v6 + 64) + 15;
  v1[15] = swift_task_alloc();
  v1[16] = swift_task_alloc();
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BCA30, &qword_26CD3DA70) - 8) + 64) + 15;
  v1[17] = swift_task_alloc();
  v1[18] = swift_task_alloc();
  v9 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_26CD125C4, v0, 0);
}

uint64_t sub_26CD125C4()
{
  v61 = *MEMORY[0x277D85DE8];
  v2 = *(v0 + 136);
  v1 = *(v0 + 144);
  v3 = *(v0 + 104);
  v4 = *(v0 + 112);
  v5 = *(*(v0 + 72) + 144);
  sub_26CC6E7A0(v1);
  sub_26CC4EDBC(v1, v2);
  if ((*(v4 + 48))(v2, 1, v3) != 1)
  {
    (*(*(v0 + 112) + 32))(*(v0 + 128), *(v0 + 136), *(v0 + 104));
    v7 = objc_opt_self();
    v8 = [v7 defaultManager];
    sub_26CD39FFC();
    v9 = sub_26CD3A59C();

    v10 = [v8 fileExistsAtPath_];

    if ((v10 & 1) == 0)
    {
      v11 = *(v0 + 128);
      v12 = [v7 defaultManager];
      v13 = sub_26CD39FCC();
      *(v0 + 56) = 0;
      v14 = [v12 createDirectoryAtURL:v13 withIntermediateDirectories:0 attributes:0 error:v0 + 56];

      v15 = *(v0 + 56);
      if (!v14)
      {
        v42 = *(v0 + 112);
        v43 = v15;
        sub_26CD39F8C();

        swift_willThrow();
        v41 = *(v42 + 8);
        goto LABEL_13;
      }

      v16 = v15;
    }

    v18 = *(v0 + 120);
    v17 = *(v0 + 128);
    v20 = *(v0 + 88);
    v19 = *(v0 + 96);
    v21 = *(v0 + 72);
    v22 = *(v0 + 80);
    v23 = v21[15];
    *(v0 + 40) = v21[14];
    *(v0 + 48) = v23;
    (*(v20 + 104))(v19, *MEMORY[0x277CC91D0], v22);
    sub_26CC16DCC();

    sub_26CD3A06C();
    (*(v20 + 8))(v19, v22);

    v24 = objc_opt_self();
    swift_beginAccess();
    v25 = v21[19];

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC30, &qword_26CD46430);
    v26 = sub_26CD3A79C();

    *(v0 + 64) = 0;
    v27 = [v24 dataWithJSONObject:v26 options:0 error:v0 + 64];

    v28 = *(v0 + 64);
    v29 = *(v0 + 120);
    if (v27)
    {
      v30 = sub_26CD3A0BC();
      v32 = v31;

      v33 = [v7 defaultManager];
      sub_26CD39FFC();
      v34 = sub_26CD3A59C();

      v35 = sub_26CD3A09C();
      v36 = [v33 createFileAtPath:v34 contents:v35 attributes:0];

      if (v36)
      {
        if (qword_280BB9C20 != -1)
        {
          swift_once();
        }

        sub_26CD3A99C();
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
        v37 = swift_allocObject();
        *(v37 + 16) = xmmword_26CD3C1E0;
        *(v37 + 56) = MEMORY[0x277D837D0];
        *(v37 + 64) = sub_26CC19E10();
        *(v37 + 32) = 0x69786520656C6946;
        *(v37 + 40) = 0xEB00000000737473;
        sub_26CD3A3DC();

        sub_26CC18C50(v30, v32);
      }

      else
      {
        if (qword_280BB9C20 != -1)
        {
          swift_once();
        }

        sub_26CD3A99C();
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
        v50 = swift_allocObject();
        *(v50 + 16) = xmmword_26CD3C1E0;
        *(v50 + 56) = MEMORY[0x277D837D0];
        *(v50 + 64) = sub_26CC19E10();
        *(v50 + 32) = 0xD000000000000013;
        *(v50 + 40) = 0x800000026CD4E9B0;
        sub_26CD3A3DC();
        sub_26CC18C50(v30, v32);
      }

      v6 = *(v0 + 144);
      v51 = *(v0 + 128);
      v52 = *(v0 + 104);
      v53 = *(*(v0 + 112) + 8);
      v53(*(v0 + 120), v52);
      v53(v51, v52);
      goto LABEL_18;
    }

    v38 = *(v0 + 104);
    v39 = *(v0 + 112);
    v40 = v28;
    sub_26CD39F8C();

    swift_willThrow();
    v41 = *(v39 + 8);
    v41(v29, v38);
LABEL_13:
    v45 = *(v0 + 136);
    v44 = *(v0 + 144);
    v46 = *(v0 + 120);
    v47 = *(v0 + 96);
    v41(*(v0 + 128), *(v0 + 104));
    sub_26CC3C0E0(v44);

    v48 = *(v0 + 8);
    v49 = *MEMORY[0x277D85DE8];
    goto LABEL_19;
  }

  v6 = *(v0 + 136);
  sub_26CC3C0E0(*(v0 + 144));
LABEL_18:
  sub_26CC3C0E0(v6);
  v55 = *(v0 + 136);
  v54 = *(v0 + 144);
  v57 = *(v0 + 120);
  v56 = *(v0 + 128);
  v58 = *(v0 + 96);

  v48 = *(v0 + 8);
  v59 = *MEMORY[0x277D85DE8];
LABEL_19:

  return v48();
}

uint64_t sub_26CD12C6C()
{
  v1 = *(v0 + 40);
  swift_beginAccess();
  v2 = *(v1 + 152);
  *(v1 + 152) = MEMORY[0x277D84F90];

  v3 = *(v1 + 144);
  sub_26CC6F2D0();
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_26CD12D34()
{
  v1 = v0[8];
  swift_beginAccess();
  v2 = *(v1 + 152);
  if (*(v2 + 16))
  {
    result = swift_beginAccess();
    if (!*(v2 + 16))
    {
      __break(1u);
      return result;
    }

    v4 = *(v2 + 32);

    sub_26CD13308(0, 1);
    swift_endAccess();
  }

  else
  {
    v4 = 0;
  }

  v0[9] = v4;
  v5 = swift_task_alloc();
  v0[10] = v5;
  *v5 = v0;
  v5[1] = sub_26CD12E38;
  v6 = v0[8];

  return sub_26CD12424();
}

uint64_t sub_26CD12E38()
{
  v2 = *(*v1 + 80);
  v3 = *v1;
  v3[11] = v0;

  if (v0)
  {
    v4 = v3[8];

    return MEMORY[0x2822009F8](sub_26CD12F70, v4, 0);
  }

  else
  {
    v5 = v3[1];
    v6 = v3[9];

    return v5(v6);
  }
}

uint64_t sub_26CD12F70()
{
  v1 = v0[9];

  v2 = v0[1];
  v3 = v0[11];

  return v2();
}

uint64_t sub_26CD12FD4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_26CD13060;

  return sub_26CD11A1C();
}

uint64_t sub_26CD13060(uint64_t a1)
{
  v4 = *(*v2 + 16);
  v5 = *v2;

  if (v1)
  {
    v6 = *(v5 + 8);

    return v6();
  }

  else
  {
    if (a1)
    {
      v8 = a1;
    }

    else
    {
      v8 = MEMORY[0x277D84F90];
    }

    v9 = *(v5 + 8);

    return v9(v8);
  }
}

void *PlaybackEventQueueService.deinit()
{
  v1 = v0[15];

  v2 = v0[17];

  v3 = v0[18];

  v4 = v0[19];

  swift_defaultActor_destroy();
  return v0;
}

uint64_t PlaybackEventQueueService.__deallocating_deinit()
{
  v1 = v0[15];

  v2 = v0[17];

  v3 = v0[18];

  v4 = v0[19];

  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

unint64_t sub_26CD13238(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v7 = *v3;
  v8 = v7 + 32 + 8 * result;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC30, &qword_26CD46430);
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v10)
  {
    goto LABEL_13;
  }

  v11 = *(v7 + 16);
  v9 = __OFSUB__(v11, a2);
  v12 = v11 - a2;
  if (v9)
  {
    goto LABEL_17;
  }

  result = v8 + 8 * a3;
  v13 = (v7 + 32 + 8 * a2);
  if (result != v13 || result >= v13 + 8 * v12)
  {
    result = memmove(result, v13, 8 * v12);
  }

  v15 = *(v7 + 16);
  v9 = __OFADD__(v15, v10);
  v16 = v15 + v10;
  if (v9)
  {
    goto LABEL_18;
  }

  *(v7 + 16) = v16;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

unint64_t sub_26CD13308(unint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v4 = *v2;
  v5 = *(*v2 + 16);
  if (v5 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v6 = result;
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v7 = result - a2;
  if (__OFSUB__(0, a2 - result))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v8 = v5 + v7;
  if (__OFADD__(v5, v7))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  v9 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v4;
  if (!isUniquelyReferenced_nonNull_native || v8 > v4[3] >> 1)
  {
    if (v5 <= v8)
    {
      v11 = v8;
    }

    else
    {
      v11 = v5;
    }

    v4 = sub_26CCBF508(isUniquelyReferenced_nonNull_native, v11, 1, v4);
    *v2 = v4;
  }

  result = sub_26CD13238(v6, a2, 0);
  *v2 = v4;
  return result;
}

uint64_t dispatch thunk of PlaybackEventQueueService.__allocating_init(directoryName:eventsFileName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *(v4 + 152);
  v14 = (v10 + *v10);
  v11 = v10[1];
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  *v12 = v5;
  v12[1] = sub_26CC65DA8;

  return v14(a1, a2, a3, a4);
}

uint64_t dispatch thunk of PlaybackEventQueueService.enqueue(report:)(uint64_t a1)
{
  v4 = *(*v1 + 160);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_26CC37110;

  return v8(a1);
}

uint64_t dispatch thunk of PlaybackEventQueueService.deleteReports()()
{
  v2 = *(*v0 + 168);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_26CC246B8;

  return v6();
}

uint64_t dispatch thunk of PlaybackEventQueueService.dequeue()()
{
  v2 = *(*v0 + 176);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_26CC65DA8;

  return v6();
}

uint64_t dispatch thunk of PlaybackEventQueueService.getReports()()
{
  v2 = *(*v0 + 184);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_26CC5C5BC;

  return v6();
}

id sub_26CD13960()
{
  v0 = [objc_opt_self() defaultSessionConfiguration];
  v1 = [objc_allocWithZone(MEMORY[0x277CEE6F0]) initWithConfiguration_];
  v2 = sub_26CD3A59C();
  v3 = sub_26CD3A59C();
  v4 = [objc_opt_self() bagForProfile:v2 profileVersion:v3];

  v5 = objc_allocWithZone(MEMORY[0x277CEE578]);
  v6 = sub_26CD3A59C();
  v7 = [v5 initWithClientIdentifier:v6 bag:v4];

  [v7 setSession_];
  v8 = [objc_allocWithZone(MEMORY[0x277CEE550]) initWithTokenService_];
  [v1 setProtocolHandler_];

  return v7;
}

id sub_26CD13AD8()
{
  v0 = sub_26CD13960();
  v1 = sub_26CD3A59C();
  v2 = sub_26CD3A59C();
  v3 = [objc_opt_self() bagForProfile:v1 profileVersion:v2];

  v4 = [objc_allocWithZone(MEMORY[0x277CEE558]) initWithTokenService:v0 bag:v3];
  v5 = [objc_opt_self() ams_sharedAccountStore];
  v6 = [v5 ams_activeiTunesAccount];

  [v4 setAccount_];
  return v4;
}

uint64_t sub_26CD13C38(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 40);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_26CC5C5BC;

  return v9(a1, a2);
}

uint64_t getEnumTagSinglePayload for NetworkRequestError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF9)
  {
    goto LABEL_17;
  }

  if (a2 + 7 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 7) >> 8 < 0xFF)
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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 7;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 7;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 7;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v8 = v6 - 8;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for NetworkRequestError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF9)
  {
    v4 = 0;
  }

  if (a2 > 0xF8)
  {
    v5 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
    *result = a2 + 7;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_26CD13EA4()
{
  result = qword_2804BDBD0;
  if (!qword_2804BDBD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BDBD0);
  }

  return result;
}

unint64_t sub_26CD13F44()
{
  result = qword_2804BDBD8;
  if (!qword_2804BDBD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BDBD8);
  }

  return result;
}

unint64_t sub_26CD13F9C()
{
  result = qword_2804BDBE0;
  if (!qword_2804BDBE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BDBE0);
  }

  return result;
}

uint64_t sub_26CD1403C()
{
  v1 = *(v0 + 16);
  if (!v1 || !*(v1 + 16))
  {
    return 0;
  }

  v2 = sub_26CC181C4(1635017060, 0xE400000000000000);
  if ((v3 & 1) == 0)
  {
    goto LABEL_10;
  }

  sub_26CC168C0(*(v1 + 56) + 32 * v2, v8);

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC30, &qword_26CD46430);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  if (!*(v7 + 16) || (v4 = sub_26CC181C4(0xD000000000000010, 0x800000026CD51250), (v5 & 1) == 0))
  {
LABEL_10:

    return 0;
  }

  sub_26CC168C0(*(v7 + 56) + 32 * v4, v8);

  if (swift_dynamicCast())
  {
    return v7;
  }

  else
  {
    return 0;
  }
}

TVAppServices::UTSConfigurationCachePolicy_optional __swiftcall UTSConfigurationCachePolicy.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_26CD3AD9C();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t UTSConfigurationCachePolicy.rawValue.getter()
{
  v1 = 0xD000000000000013;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000016;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x616F4C6563726F66;
  }
}

uint64_t sub_26CD14220(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v14[0] = a4;
  v14[1] = a5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BDC08, &unk_26CD49838);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = v14 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26CD1B9A8();
  sub_26CD3B16C();
  v16 = 0;
  sub_26CD3AF2C();
  if (!v5)
  {
    v15 = 1;
    sub_26CD3AF2C();
  }

  return (*(v8 + 8))(v11, v7);
}

uint64_t sub_26CD143B4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15 = a3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BDCA0, &qword_26CD49EE0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v15 - v11;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26CD1CDC8();
  sub_26CD3B16C();
  v17 = a2;
  v16 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA20, &unk_26CD3D4D0);
  sub_26CC3F22C(&qword_280BB9BE0);
  sub_26CD3AF6C();
  if (!v4)
  {
    v17 = v15;
    v16 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BDCA8, &qword_26CD49EE8);
    sub_26CD1CE1C(&qword_280BB9BE8, sub_26CD1CE94);
    sub_26CD3AF6C();
    v17 = a4;
    v16 = 2;
    sub_26CD3AF6C();
  }

  return (*(v9 + 8))(v12, v8);
}

uint64_t sub_26CD14608(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BDC88, &qword_26CD49C38);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v17[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26CD1CB34();
  sub_26CD3B16C();
  v11 = *v3;
  v17[15] = 0;
  sub_26CD3AF3C();
  if (v2)
  {
    return (*(v6 + 8))(v9, v5);
  }

  v12 = v3[1];
  v13 = v3[2];
  v17[14] = 1;
  sub_26CD3AF2C();
  v15 = v3[3];
  v16 = v3[4];
  v17[13] = 2;
  sub_26CD3AF2C();
  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_26CD147A8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v18 = a5;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BDC40, &qword_26CD49C10);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v17 - v12;
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26CD1BE6C();
  sub_26CD3B16C();
  v20 = a2;
  v21 = a3;
  v22 = a4;
  v23 = 0;
  sub_26CD1BEC0();
  v15 = v19;
  sub_26CD3AF6C();
  if (!v15)
  {
    v20 = v18;
    v23 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BDC48, &qword_26CD49C18);
    sub_26CD1BF14();
    sub_26CD3AF6C();
  }

  return (*(v10 + 8))(v13, v9);
}

uint64_t sub_26CD14960(_BYTE *a1, _BYTE *a2)
{
  v2 = 0xD000000000000013;
  v3 = *a1;
  v4 = 0x800000026CD4D100;
  if (v3 == 1)
  {
    v5 = 0xD000000000000013;
  }

  else
  {
    v5 = 0xD000000000000016;
  }

  if (v3 == 1)
  {
    v6 = 0x800000026CD4D100;
  }

  else
  {
    v6 = 0x800000026CD4D120;
  }

  if (*a1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x616F4C6563726F66;
  }

  if (v3)
  {
    v8 = v6;
  }

  else
  {
    v8 = 0xE900000000000064;
  }

  if (*a2 != 1)
  {
    v2 = 0xD000000000000016;
    v4 = 0x800000026CD4D120;
  }

  if (*a2)
  {
    v9 = v2;
  }

  else
  {
    v9 = 0x616F4C6563726F66;
  }

  if (*a2)
  {
    v10 = v4;
  }

  else
  {
    v10 = 0xE900000000000064;
  }

  if (v7 == v9 && v8 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_26CD3AFDC();
  }

  return v11 & 1;
}

unint64_t sub_26CD14A44()
{
  result = qword_2804BDBF0;
  if (!qword_2804BDBF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BDBF0);
  }

  return result;
}

uint64_t sub_26CD14A98()
{
  v1 = *v0;
  sub_26CD3B0FC();
  sub_26CD3A54C();

  return sub_26CD3B13C();
}

uint64_t sub_26CD14B44()
{
  *v0;
  *v0;
  sub_26CD3A54C();
}

uint64_t sub_26CD14BDC()
{
  v1 = *v0;
  sub_26CD3B0FC();
  sub_26CD3A54C();

  return sub_26CD3B13C();
}

void sub_26CD14C90(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE900000000000064;
  v4 = 0xD000000000000013;
  v5 = 0x800000026CD4D100;
  if (v2 != 1)
  {
    v4 = 0xD000000000000016;
    v5 = 0x800000026CD4D120;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v4;
  }

  else
  {
    v7 = 0x616F4C6563726F66;
  }

  if (!v6)
  {
    v3 = v5;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_26CD14D6C()
{
  if (*v0)
  {
    result = 0x6F666E49627573;
  }

  else
  {
    result = 0x6449656C646E7562;
  }

  *v0;
  return result;
}

uint64_t sub_26CD14DA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6449656C646E7562 && a2 == 0xE800000000000000;
  if (v6 || (sub_26CD3AFDC() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6F666E49627573 && a2 == 0xE700000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_26CD3AFDC();

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

uint64_t sub_26CD14E84(uint64_t a1)
{
  v2 = sub_26CD1B9A8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26CD14EC0(uint64_t a1)
{
  v2 = sub_26CD1B9A8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26CD14EFC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_26CD1B7C4(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
    a2[3] = v7;
  }

  return result;
}

uint64_t sub_26CD14F64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_26CD1C024(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_26CD14F8C(uint64_t a1)
{
  v2 = sub_26CD1CDC8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26CD14FC8(uint64_t a1)
{
  v2 = sub_26CD1CDC8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26CD15004@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_26CD1C12C(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
  }

  return result;
}

uint64_t sub_26CD15054()
{
  v1 = 0x6E69616D6F64;
  if (*v0 != 1)
  {
    v1 = 1701667182;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x64656C62616E65;
  }
}

uint64_t sub_26CD150A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_26CD1C40C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_26CD150CC(uint64_t a1)
{
  v2 = sub_26CD1CB34();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26CD15108(uint64_t a1)
{
  v2 = sub_26CD1CB34();

  return MEMORY[0x2821FE720](a1, v2);
}

double sub_26CD15144@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_26CD1C520(a1, v6);
  if (!v2)
  {
    result = *v6;
    v5 = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = v5;
    *(a2 + 32) = v7;
  }

  return result;
}

uint64_t sub_26CD151A4()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  sub_26CD3B0FC();
  sub_26CD3B11C();
  sub_26CD3A54C();
  sub_26CD3A54C();
  return sub_26CD3B13C();
}

uint64_t sub_26CD15224()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  sub_26CD3B11C();
  sub_26CD3A54C();

  return sub_26CD3A54C();
}

uint64_t sub_26CD15294()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  sub_26CD3B0FC();
  sub_26CD3B11C();
  sub_26CD3A54C();
  sub_26CD3A54C();
  return sub_26CD3B13C();
}

uint64_t sub_26CD15310(void *a1, void *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v3 = a1[3];
  v4 = a1[4];
  v5 = a2[3];
  v6 = a2[4];
  v7 = a1[1] == a2[1] && a1[2] == a2[2];
  if (!v7 && (sub_26CD3AFDC() & 1) == 0)
  {
    return 0;
  }

  if (v3 == v5 && v4 == v6)
  {
    return 1;
  }

  return sub_26CD3AFDC();
}

uint64_t sub_26CD153C4()
{
  if (*v0)
  {
    result = 0x4665727574616566;
  }

  else
  {
    result = 0x6D656C7469746E65;
  }

  *v0;
  return result;
}

uint64_t sub_26CD15414@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6D656C7469746E65 && a2 == 0xEF6F666E49746E65;
  if (v6 || (sub_26CD3AFDC() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x4665727574616566 && a2 == 0xEC0000007367616CLL)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_26CD3AFDC();

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

uint64_t sub_26CD154FC(uint64_t a1)
{
  v2 = sub_26CD1BE6C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26CD15538(uint64_t a1)
{
  v2 = sub_26CD1BE6C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26CD15574@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_26CD1C738(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
    a2[3] = v7;
  }

  return result;
}

char *sub_26CD155C4()
{
  v0 = type metadata accessor for UTSConfigurationManager();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  result = sub_26CD19B60();
  qword_280BBCC18 = result;
  return result;
}

uint64_t sub_26CD15604(_BYTE *a1, double a2)
{
  v8 = *MEMORY[0x277D85DE8];
  *(v3 + 48) = v2;
  *(v3 + 40) = a2;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BCA00, &qword_26CD3D510) - 8) + 64) + 15;
  *(v3 + 56) = swift_task_alloc();
  *(v3 + 209) = *a1;
  v6 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_26CD156E4, v2, 0);
}

uint64_t sub_26CD156E4()
{
  v56 = v0;
  v55 = *MEMORY[0x277D85DE8];
  if (!*(v0 + 209))
  {

    goto LABEL_10;
  }

  v1 = sub_26CD3AFDC();

  if (v1)
  {
LABEL_10:
    v21 = *(*(v0 + 48) + OBJC_IVAR____TtC13TVAppServices23UTSConfigurationManager_logger);
    sub_26CD3A99C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
    v22 = swift_allocObject();
    *(v22 + 16) = xmmword_26CD3C1E0;
    *(v22 + 56) = MEMORY[0x277D837D0];
    *(v22 + 64) = sub_26CC19E10();
    *(v22 + 32) = 0xD000000000000017;
    *(v22 + 40) = 0x800000026CD52B70;
    sub_26CD3A3DC();

    sub_26CD18348(1);
LABEL_19:
    v33 = *(v0 + 48);
    v34 = OBJC_IVAR____TtC13TVAppServices23UTSConfigurationManager_configurationRequestTask;
    *(v0 + 152) = OBJC_IVAR____TtC13TVAppServices23UTSConfigurationManager_configurationRequestTask;
    v35 = *(v33 + v34);
    *(v0 + 160) = v35;
    if (v35)
    {

      sub_26CD3A99C();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
      v36 = swift_allocObject();
      *(v36 + 16) = xmmword_26CD3C1E0;
      *(v36 + 56) = MEMORY[0x277D837D0];
      *(v36 + 64) = sub_26CC19E10();
      *(v36 + 32) = 0xD000000000000027;
      *(v36 + 40) = 0x800000026CD52A40;
      sub_26CD3A3DC();

      v37 = *(MEMORY[0x277D857C8] + 4);
      v38 = swift_task_alloc();
      *(v0 + 168) = v38;
      v39 = sub_26CC18080(0, &qword_280BB9BD8, 0x277CEE6E8);
      v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC10, &unk_26CD3D4C0);
      *v38 = v0;
      v38[1] = sub_26CD16CB4;
      v41 = *MEMORY[0x277D85DE8];
      v42 = v40;
      v43 = MEMORY[0x277D84950];
      v44 = v0 + 24;
    }

    else
    {
      v45 = *(v0 + 56);
      v46 = sub_26CD3A86C();
      (*(*(v46 - 8) + 56))(v45, 1, 1, v46);
      v47 = sub_26CD1B9FC();
      v48 = swift_allocObject();
      v48[2] = v33;
      v48[3] = v47;
      v48[4] = v33;
      swift_retain_n();
      v35 = sub_26CD27B78(0, 0, v45, &unk_26CD49858, v48);
      *(v0 + 184) = v35;
      v49 = *(v33 + v34);
      *(v33 + v34) = v35;

      v50 = *(MEMORY[0x277D857C8] + 4);
      v51 = swift_task_alloc();
      *(v0 + 192) = v51;
      v39 = sub_26CC18080(0, &qword_280BB9BD8, 0x277CEE6E8);
      v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC10, &unk_26CD3D4C0);
      *v51 = v0;
      v51[1] = sub_26CD16EC4;
      v53 = *MEMORY[0x277D85DE8];
      v42 = v52;
      v43 = MEMORY[0x277D84950];
      v44 = v0 + 16;
    }

    return MEMORY[0x282200430](v44, v35, v39, v42, v43);
  }

  v2 = *(v0 + 48);
  if (*(v2 + 176))
  {
    *(v0 + 64) = *(v2 + OBJC_IVAR____TtC13TVAppServices23UTSConfigurationManager_logger);

    sub_26CD3A99C();
    *(v0 + 72) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_26CD3C1E0;
    *(v3 + 56) = MEMORY[0x277D837D0];
    v4 = sub_26CC19E10();
    *(v0 + 80) = v4;
    *(v3 + 64) = v4;
    *(v3 + 32) = 0xD000000000000031;
    *(v3 + 40) = 0x800000026CD52B00;
    sub_26CD3A3DC();

    v5 = objc_opt_self();
    v6 = sub_26CD3A4DC();

    *(v0 + 32) = 0;
    v7 = [v5 dataWithJSONObject:v6 options:0 error:v0 + 32];

    v8 = *(v0 + 32);
    if (v7)
    {
      v9 = *(v0 + 209);
      v10 = *(v0 + 48);
      v11 = *(v0 + 40);
      v12 = sub_26CD3A0BC();
      v14 = v13;

      *(v0 + 88) = v12;
      *(v0 + 96) = v14;
      v15 = *(v2 + 176);
      v54[0] = v9;

      LOBYTE(v10) = sub_26CD1734C(v16, v54, v11);

      if (v10)
      {
        v17 = swift_task_alloc();
        *(v0 + 104) = v17;
        *v17 = v0;
        v17[1] = sub_26CD15ECC;
        v18 = *(v0 + 48);
        v19 = *MEMORY[0x277D85DE8];

        return sub_26CD17C30(v12, v14);
      }

      v31 = *(v0 + 48);
      sub_26CD18348(1);
      sub_26CC18C50(*(v0 + 88), *(v0 + 96));
      v32 = *(v0 + 64);
      goto LABEL_19;
    }

    v30 = v8;
    sub_26CD39F8C();

    swift_willThrow();
    v23 = *(v0 + 56);

    v24 = *(v0 + 8);
    v25 = *MEMORY[0x277D85DE8];

    return v24();
  }

  else
  {
    *(v0 + 208) = *(v0 + 209);
    v26 = swift_task_alloc();
    *(v0 + 128) = v26;
    *v26 = v0;
    v26[1] = sub_26CD16500;
    v27 = *(v0 + 48);
    v28 = *(v0 + 40);
    v29 = *MEMORY[0x277D85DE8];

    return sub_26CD184DC((v0 + 208), v28);
  }
}

uint64_t sub_26CD15ECC(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 104);
  v6 = *v2;
  *(v4 + 112) = a1;
  *(v4 + 120) = v1;

  v7 = *(v3 + 48);
  if (v1)
  {
    v8 = sub_26CD170D8;
  }

  else
  {
    v8 = sub_26CD1602C;
  }

  v9 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](v8, v7, 0);
}

uint64_t sub_26CD1602C()
{
  v39 = *MEMORY[0x277D85DE8];
  v1 = v0[14];
  if (v1)
  {
    v3 = v0[11];
    v2 = v0[12];
    v4 = v0[9];
    v5 = v0[10];
    v6 = v0[8];
    sub_26CD3A99C();
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_26CD3C1E0;
    *(v7 + 56) = MEMORY[0x277D837D0];
    *(v7 + 64) = v5;
    *(v7 + 32) = 0xD00000000000002BLL;
    *(v7 + 40) = 0x800000026CD52B40;
    sub_26CD3A3DC();

    sub_26CC18C50(v3, v2);
    v8 = v0[7];

    v9 = v0[1];
    v10 = *MEMORY[0x277D85DE8];

    return v9(v1);
  }

  else
  {
    v12 = v0[15];
    v13 = v0[6];
    sub_26CD18348(1);
    sub_26CC18C50(v0[11], v0[12]);
    if (v12)
    {
      v14 = v0[7];

      v15 = v0[1];
      v16 = *MEMORY[0x277D85DE8];

      return v15();
    }

    else
    {
      v17 = v0[8];
      v18 = v0[6];
      v19 = OBJC_IVAR____TtC13TVAppServices23UTSConfigurationManager_configurationRequestTask;
      v0[19] = OBJC_IVAR____TtC13TVAppServices23UTSConfigurationManager_configurationRequestTask;
      v20 = *(v18 + v19);
      v0[20] = v20;
      if (v20)
      {

        sub_26CD3A99C();
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
        v21 = swift_allocObject();
        *(v21 + 16) = xmmword_26CD3C1E0;
        *(v21 + 56) = MEMORY[0x277D837D0];
        *(v21 + 64) = sub_26CC19E10();
        *(v21 + 32) = 0xD000000000000027;
        *(v21 + 40) = 0x800000026CD52A40;
        sub_26CD3A3DC();

        v22 = *(MEMORY[0x277D857C8] + 4);
        v23 = swift_task_alloc();
        v0[21] = v23;
        v24 = sub_26CC18080(0, &qword_280BB9BD8, 0x277CEE6E8);
        v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC10, &unk_26CD3D4C0);
        *v23 = v0;
        v23[1] = sub_26CD16CB4;
        v26 = *MEMORY[0x277D85DE8];
        v27 = v25;
        v28 = MEMORY[0x277D84950];
        v29 = v0 + 3;
      }

      else
      {
        v30 = v0[7];
        v31 = sub_26CD3A86C();
        (*(*(v31 - 8) + 56))(v30, 1, 1, v31);
        v32 = sub_26CD1B9FC();
        v33 = swift_allocObject();
        v33[2] = v18;
        v33[3] = v32;
        v33[4] = v18;
        swift_retain_n();
        v20 = sub_26CD27B78(0, 0, v30, &unk_26CD49858, v33);
        v0[23] = v20;
        v34 = *(v18 + v19);
        *(v18 + v19) = v20;

        v35 = *(MEMORY[0x277D857C8] + 4);
        v36 = swift_task_alloc();
        v0[24] = v36;
        v24 = sub_26CC18080(0, &qword_280BB9BD8, 0x277CEE6E8);
        v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC10, &unk_26CD3D4C0);
        *v36 = v0;
        v36[1] = sub_26CD16EC4;
        v38 = *MEMORY[0x277D85DE8];
        v27 = v37;
        v28 = MEMORY[0x277D84950];
        v29 = v0 + 2;
      }

      return MEMORY[0x282200430](v29, v20, v24, v27, v28);
    }
  }
}

uint64_t sub_26CD16500(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = *v2;
  v4 = *(*v2 + 128);
  v10 = *v2;
  v3[17] = a1;
  v3[18] = v1;

  v5 = v3[6];
  if (v1)
  {
    v6 = sub_26CD17170;
  }

  else
  {
    v6 = sub_26CD1664C;
  }

  v7 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_26CD1664C()
{
  v43 = v0;
  v42 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 136);
  v2 = MEMORY[0x277D837D0];
  if (v1)
  {
    v40 = *(v0 + 209);
    v3 = *(v0 + 48);
    v4 = *(v0 + 40);
    v5 = *(v3 + OBJC_IVAR____TtC13TVAppServices23UTSConfigurationManager_logger);
    sub_26CD3A99C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_26CD3C1E0;
    *(v6 + 56) = v2;
    v7 = sub_26CC19E10();
    *(v6 + 64) = v7;
    *(v6 + 32) = 0xD00000000000002FLL;
    *(v6 + 40) = 0x800000026CD52A70;
    sub_26CD3A3DC();

    sub_26CD3A99C();
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_26CD3C1E0;
    *(v8 + 56) = MEMORY[0x277D837D0];
    *(v8 + 64) = v7;
    *(v8 + 32) = 0xD000000000000020;
    *(v8 + 40) = 0x800000026CD52AA0;
    sub_26CD3A3DC();

    sub_26CD18D0C(v1);
    v9 = *(v3 + 176);
    v41 = v40;

    LOBYTE(v3) = sub_26CD1734C(v10, &v41, v4);

    if (v3)
    {
      sub_26CD3A99C();
      v11 = swift_allocObject();
      *(v11 + 16) = xmmword_26CD3C1E0;
      *(v11 + 56) = MEMORY[0x277D837D0];
      *(v11 + 64) = v7;
      *(v11 + 32) = 0xD000000000000029;
      *(v11 + 40) = 0x800000026CD52AD0;
      sub_26CD3A3DC();

      v12 = *(v0 + 56);

      v13 = *(v0 + 8);
      v14 = *MEMORY[0x277D85DE8];

      return v13(v1);
    }

    v18 = MEMORY[0x277D837D0];
  }

  else
  {
    v16 = *(*(v0 + 48) + OBJC_IVAR____TtC13TVAppServices23UTSConfigurationManager_logger);
    sub_26CD3A99C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_26CD3C1E0;
    v18 = v2;
    *(v17 + 56) = v2;
    *(v17 + 64) = sub_26CC19E10();
    *(v17 + 32) = 0xD00000000000002FLL;
    *(v17 + 40) = 0x800000026CD52A10;
    sub_26CD3A3DC();
  }

  v19 = *(v0 + 48);
  v20 = OBJC_IVAR____TtC13TVAppServices23UTSConfigurationManager_configurationRequestTask;
  *(v0 + 152) = OBJC_IVAR____TtC13TVAppServices23UTSConfigurationManager_configurationRequestTask;
  v21 = *(v19 + v20);
  *(v0 + 160) = v21;
  if (v21)
  {

    sub_26CD3A99C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
    v22 = swift_allocObject();
    *(v22 + 16) = xmmword_26CD3C1E0;
    *(v22 + 56) = v18;
    *(v22 + 64) = sub_26CC19E10();
    *(v22 + 32) = 0xD000000000000027;
    *(v22 + 40) = 0x800000026CD52A40;
    sub_26CD3A3DC();

    v23 = *(MEMORY[0x277D857C8] + 4);
    v24 = swift_task_alloc();
    *(v0 + 168) = v24;
    v25 = sub_26CC18080(0, &qword_280BB9BD8, 0x277CEE6E8);
    v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC10, &unk_26CD3D4C0);
    *v24 = v0;
    v24[1] = sub_26CD16CB4;
    v27 = *MEMORY[0x277D85DE8];
    v28 = v26;
    v29 = MEMORY[0x277D84950];
    v30 = v0 + 24;
  }

  else
  {
    v31 = *(v0 + 56);
    v32 = sub_26CD3A86C();
    (*(*(v32 - 8) + 56))(v31, 1, 1, v32);
    v33 = sub_26CD1B9FC();
    v34 = swift_allocObject();
    v34[2] = v19;
    v34[3] = v33;
    v34[4] = v19;
    swift_retain_n();
    v21 = sub_26CD27B78(0, 0, v31, &unk_26CD49858, v34);
    *(v0 + 184) = v21;
    v35 = *(v19 + v20);
    *(v19 + v20) = v21;

    v36 = *(MEMORY[0x277D857C8] + 4);
    v37 = swift_task_alloc();
    *(v0 + 192) = v37;
    v25 = sub_26CC18080(0, &qword_280BB9BD8, 0x277CEE6E8);
    v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC10, &unk_26CD3D4C0);
    *v37 = v0;
    v37[1] = sub_26CD16EC4;
    v39 = *MEMORY[0x277D85DE8];
    v28 = v38;
    v29 = MEMORY[0x277D84950];
    v30 = v0 + 16;
  }

  return MEMORY[0x282200430](v30, v21, v25, v28, v29);
}

uint64_t sub_26CD16CB4()
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = *v1;
  v3 = *(*v1 + 168);
  v4 = *v1;
  *(*v1 + 176) = v0;

  v5 = *(v2 + 48);
  if (v0)
  {
    v6 = sub_26CD17200;
  }

  else
  {
    v6 = sub_26CD16E0C;
  }

  v7 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_26CD16E0C()
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = v0[19];
  v1 = v0[20];
  v3 = v0[6];

  v4 = v0[3];
  v5 = *(v3 + v2);
  *(v3 + v2) = 0;

  v6 = v0[7];

  v7 = v0[1];
  v8 = *MEMORY[0x277D85DE8];

  return v7(v4);
}

uint64_t sub_26CD16EC4()
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = *v1;
  v3 = *(*v1 + 192);
  v4 = *v1;
  *(*v1 + 200) = v0;

  v5 = *(v2 + 48);
  if (v0)
  {
    v6 = sub_26CD17298;
  }

  else
  {
    v6 = sub_26CD1701C;
  }

  v7 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_26CD1701C()
{
  v10 = *MEMORY[0x277D85DE8];
  v1 = v0[23];
  v2 = v0[19];
  v3 = v0[6];

  v4 = v0[2];
  v5 = *(v3 + v2);
  *(v3 + v2) = 0;

  v6 = v0[7];

  v7 = v0[1];
  v8 = *MEMORY[0x277D85DE8];

  return v7(v4);
}

uint64_t sub_26CD170D8()
{
  v6 = *MEMORY[0x277D85DE8];
  sub_26CC18C50(v0[11], v0[12]);
  v1 = v0[15];
  v2 = v0[7];

  v3 = v0[1];
  v4 = *MEMORY[0x277D85DE8];

  return v3();
}

uint64_t sub_26CD17170()
{
  v6 = *MEMORY[0x277D85DE8];
  v1 = v0[18];
  v2 = v0[7];

  v3 = v0[1];
  v4 = *MEMORY[0x277D85DE8];

  return v3();
}

uint64_t sub_26CD17200()
{
  v7 = *MEMORY[0x277D85DE8];
  v1 = v0[20];

  v2 = v0[22];
  v3 = v0[7];

  v4 = v0[1];
  v5 = *MEMORY[0x277D85DE8];

  return v4();
}

uint64_t sub_26CD17298()
{
  v10 = *MEMORY[0x277D85DE8];
  v1 = v0[23];
  v2 = v0[19];
  v3 = v0[6];

  v4 = *(v3 + v2);
  *(v3 + v2) = 0;

  v5 = v0[25];
  v6 = v0[7];

  v7 = v0[1];
  v8 = *MEMORY[0x277D85DE8];

  return v7();
}

uint64_t sub_26CD1734C(uint64_t a1, unsigned __int8 *a2, double a3)
{
  v7 = sub_26CD3A26C();
  v57 = *(v7 - 8);
  v58 = v7;
  v8 = *(v57 + 64);
  MEMORY[0x28223BE20](v7);
  v56 = &v55 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_26CD39EFC();
  v60 = *(v10 - 8);
  v61 = v10;
  v11 = *(v60 + 64);
  MEMORY[0x28223BE20](v10);
  v59 = &v55 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BCA90, &qword_26CD3C200);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &v55 - v15;
  v17 = sub_26CD3A1EC();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  v20 = MEMORY[0x28223BE20](v17);
  v62 = &v55 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v23 = &v55 - v22;
  v24 = *a2;
  v25 = OBJC_IVAR____TtC13TVAppServices23UTSConfigurationManager_lastFetchedUTSConfigDate;
  swift_beginAccess();
  sub_26CC1B4DC(v3 + v25, v16, &qword_2804BCA90, &qword_26CD3C200);
  if ((*(v18 + 48))(v16, 1, v17) == 1)
  {
    sub_26CC1B544(v16, &qword_2804BCA90, &qword_26CD3C200);
    v26 = *(v3 + OBJC_IVAR____TtC13TVAppServices23UTSConfigurationManager_logger);
    sub_26CD3A98C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
    v27 = swift_allocObject();
    *(v27 + 16) = xmmword_26CD3C1E0;
    *(v27 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA20, &unk_26CD3D4D0);
    *(v27 + 64) = sub_26CC2E6E8();
    *(v27 + 32) = &unk_287DF9730;
    sub_26CD3A3DC();

    return 0;
  }

  (*(v18 + 32))(v23, v16, v17);
  if (!a1)
  {
    goto LABEL_17;
  }

  if (!*(a1 + 16))
  {
    goto LABEL_17;
  }

  v28 = v3;
  v29 = sub_26CC181C4(1635017060, 0xE400000000000000);
  if ((v30 & 1) == 0)
  {
    goto LABEL_17;
  }

  sub_26CC168C0(*(a1 + 56) + 32 * v29, v64);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC30, &qword_26CD46430);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_17;
  }

  v31 = v63;
  if (!*(*&v63 + 16))
  {
    goto LABEL_16;
  }

  v32 = sub_26CC181C4(0x706F72506B737475, 0xE900000000000073);
  if ((v33 & 1) == 0)
  {
    goto LABEL_16;
  }

  sub_26CC168C0(*(*&v31 + 56) + 32 * v32, v64);

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_17:
    v38 = *(v3 + OBJC_IVAR____TtC13TVAppServices23UTSConfigurationManager_logger);
    sub_26CD3A98C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
    v39 = swift_allocObject();
    *(v39 + 16) = xmmword_26CD3C1E0;
    *(v39 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA20, &unk_26CD3D4D0);
    *(v39 + 64) = sub_26CC2E6E8();
    *(v39 + 32) = &unk_287DF9700;
    sub_26CD3A3DC();

    (*(v18 + 8))(v23, v17);
    return 0;
  }

  v34 = v63;
  if (!*(*&v63 + 16) || (v35 = sub_26CC181C4(0xD000000000000013, 0x800000026CD51230), (v36 & 1) == 0))
  {
LABEL_16:

    goto LABEL_17;
  }

  sub_26CC168C0(*(*&v34 + 56) + 32 * v35, v64);

  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_17;
  }

  v37 = v63;
  if (v24 > 1)
  {

    goto LABEL_25;
  }

  v41 = sub_26CD3AFDC();

  if (v41)
  {
LABEL_25:
    (*(v18 + 8))(v23, v17);
    return 1;
  }

  sub_26CD3A1DC();
  v42 = v56;
  sub_26CD3A24C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BDC10, &qword_26CD49878);
  v43 = sub_26CD3A25C();
  v44 = *(v43 - 8);
  v45 = *(v44 + 72);
  v46 = (*(v44 + 80) + 32) & ~*(v44 + 80);
  v47 = swift_allocObject();
  v55 = xmmword_26CD3C1E0;
  *(v47 + 16) = xmmword_26CD3C1E0;
  (*(v44 + 104))(v47 + v46, *MEMORY[0x277CC9980], v43);
  sub_26CC789D4(v47);
  swift_setDeallocating();
  (*(v44 + 8))(v47 + v46, v43);
  swift_deallocClassInstance();
  v48 = v59;
  sub_26CD3A23C();

  (*(v57 + 8))(v42, v58);
  v49 = sub_26CD39EEC();
  if ((v50 & 1) != 0 || v37 / 3600.0 + a3 <= v49)
  {
    v52 = *(v28 + OBJC_IVAR____TtC13TVAppServices23UTSConfigurationManager_logger);
    sub_26CD3A98C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
    v53 = swift_allocObject();
    *(v53 + 16) = v55;
    *(v53 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA20, &unk_26CD3D4D0);
    *(v53 + 64) = sub_26CC2E6E8();
    *(v53 + 32) = &unk_287DF96D0;
    sub_26CD3A3DC();

    (*(v60 + 8))(v48, v61);
    v54 = *(v18 + 8);
    v54(v62, v17);
    v54(v23, v17);
    return 0;
  }

  (*(v60 + 8))(v48, v61);
  v51 = *(v18 + 8);
  v51(v62, v17);
  v51(v23, v17);
  return 1;
}

uint64_t sub_26CD17C30(uint64_t a1, uint64_t a2)
{
  v3[5] = a2;
  v3[6] = v2;
  v3[4] = a1;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BCA30, &qword_26CD3DA70) - 8) + 64) + 15;
  v3[7] = swift_task_alloc();
  v5 = sub_26CD39D0C();
  v3[8] = v5;
  v6 = *(v5 - 8);
  v3[9] = v6;
  v7 = *(v6 + 64) + 15;
  v3[10] = swift_task_alloc();
  v8 = sub_26CD3A07C();
  v3[11] = v8;
  v9 = *(v8 - 8);
  v3[12] = v9;
  v10 = *(v9 + 64) + 15;
  v3[13] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26CD17D88, v2, 0);
}

uint64_t sub_26CD17D88()
{
  v0[14] = [objc_opt_self() sharedSession];
  type metadata accessor for UTSURLRequestFactory();
  v1 = swift_task_alloc();
  v0[15] = v1;
  *v1 = v0;
  v1[1] = sub_26CD17E88;
  v2 = v0[10];

  return sub_26CC67CEC(v2, 0x72756769666E6F63, 0xEE00736E6F697461, 0x2F33762F7374752FLL, 0xE800000000000000, 0, 0);
}

uint64_t sub_26CD17E88()
{
  v2 = *v1;
  v3 = *(*v1 + 120);
  v4 = *v1;
  *(*v1 + 128) = v0;

  v5 = *(v2 + 48);
  if (v0)
  {
    v6 = sub_26CD182BC;
  }

  else
  {
    v6 = sub_26CD17FB4;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_26CD17FB4()
{
  v1 = v0;
  v2 = v0[12];
  v4 = v1[10];
  v3 = v1[11];
  v5 = v1[8];
  v6 = v1[9];
  v7 = v1[7];
  sub_26CD39C9C();
  (*(v6 + 8))(v4, v5);
  if ((*(v2 + 48))(v7, 1, v3) == 1)
  {
    v8 = v1[14];
    v9 = v1[6];
    sub_26CC1B544(v1[7], &qword_2804BCA30, &qword_26CD3DA70);
    v10 = *(v9 + OBJC_IVAR____TtC13TVAppServices23UTSConfigurationManager_logger);
    sub_26CD3A98C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_26CD3C1E0;
    *(v11 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA20, &unk_26CD3D4D0);
    *(v11 + 64) = sub_26CC2E6E8();
    *(v11 + 32) = &unk_287DF9760;
    sub_26CD3A3DC();

    v12 = 0;
  }

  else
  {
    v13 = v1[13];
    v14 = v1[14];
    v15 = v1[12];
    v31 = v1[11];
    v16 = v1[4];
    v17 = v1[5];
    (*(v15 + 32))(v13, v1[7]);
    v18 = sub_26CD39FCC();
    v19 = [v14 dataTaskWithURL_];

    v20 = objc_allocWithZone(MEMORY[0x277CCAA40]);
    v21 = sub_26CD39FCC();
    v22 = [v20 initWithURL:v21 statusCode:200 HTTPVersion:0 headerFields:0];

    v23 = objc_allocWithZone(MEMORY[0x277CEE6E8]);
    v24 = v22;
    v25 = sub_26CD3A09C();
    v1[2] = v16;
    v1[3] = v17;
    sub_26CCAE954(v16, v17);
    v12 = [v23 initWithTask:v19 response:v24 data:v25 object:sub_26CD3B00C()];

    swift_unknownObjectRelease();
    (*(v15 + 8))(v13, v31);
  }

  v26 = v1[13];
  v27 = v1[10];
  v28 = v1[7];

  v29 = v1[1];

  return v29(v12);
}

uint64_t sub_26CD182BC()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 80);
  v3 = *(v0 + 56);

  v4 = *(v0 + 8);
  v5 = *(v0 + 128);

  return v4();
}

uint64_t sub_26CD18348(char a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BCA90, &qword_26CD3C200);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v17 - v7 + 16;
  if ((a1 & 1) == 0 || (v9 = *(v3 + 184), result = sub_26CC6F2D0(), !v2))
  {
    memset(v17, 0, sizeof(v17));
    swift_beginAccess();
    sub_26CC86CE0(v17, v3 + 128, &qword_2804BDA30, qword_26CD482E0);
    swift_endAccess();
    v11 = sub_26CC194BC(MEMORY[0x277D84F90]);
    v12 = *(v3 + 176);
    *(v3 + 176) = v11;

    v13 = sub_26CD3A1EC();
    (*(*(v13 - 8) + 56))(v8, 1, 1, v13);
    v14 = OBJC_IVAR____TtC13TVAppServices23UTSConfigurationManager_lastFetchedUTSConfigDate;
    swift_beginAccess();
    sub_26CC86CE0(v8, v3 + v14, &qword_2804BCA90, &qword_26CD3C200);
    swift_endAccess();
    v15 = *(v3 + OBJC_IVAR____TtC13TVAppServices23UTSConfigurationManager_configurationRequestTask);
    *(v3 + OBJC_IVAR____TtC13TVAppServices23UTSConfigurationManager_configurationRequestTask) = 0;
  }

  return result;
}

uint64_t sub_26CD184DC(_BYTE *a1, double a2)
{
  *(v3 + 120) = v2;
  *(v3 + 112) = a2;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BCA90, &qword_26CD3C200) - 8) + 64) + 15;
  *(v3 + 128) = swift_task_alloc();
  *(v3 + 136) = swift_task_alloc();
  *(v3 + 192) = *a1;

  return MEMORY[0x2822009F8](sub_26CD1859C, v2, 0);
}

uint64_t sub_26CD1859C()
{
  v37 = v0;
  v1 = *(v0 + 136);
  v2 = *(v0 + 120);
  v3 = *(v2 + 184);
  v4 = sub_26CC6EA9C();
  v6 = v5;
  *(v0 + 144) = v4;
  *(v0 + 152) = v5;
  sub_26CC6F714(v1);
  v7 = OBJC_IVAR____TtC13TVAppServices23UTSConfigurationManager_lastFetchedUTSConfigDate;
  swift_beginAccess();
  sub_26CC86CE0(v1, v2 + v7, &qword_2804BCA90, &qword_26CD3C200);
  swift_endAccess();
  if (v6 >> 60 == 15)
  {
    goto LABEL_6;
  }

  sub_26CCAE954(v4, v6);
  v8 = Data.asDictionary()();
  if (!v8)
  {
    sub_26CC1D1B8(v4, v6);
    goto LABEL_6;
  }

  v9 = v8;
  v10 = *(v0 + 128);
  sub_26CC1B4DC(v2 + v7, v10, &qword_2804BCA90, &qword_26CD3C200);
  v11 = sub_26CD3A1EC();
  v12 = (*(*(v11 - 8) + 48))(v10, 1, v11);
  v13 = *(v0 + 128);
  if (v12 == 1)
  {
    sub_26CC1D1B8(v4, v6);

    sub_26CC1B544(v13, &qword_2804BCA90, &qword_26CD3C200);
LABEL_6:
    v14 = *(*(v0 + 120) + OBJC_IVAR____TtC13TVAppServices23UTSConfigurationManager_logger);
    sub_26CD3A98C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_26CD3C1E0;
    *(v15 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA20, &unk_26CD3D4D0);
    *(v15 + 64) = sub_26CC2E6E8();
    *(v15 + 32) = &unk_287DF98E0;
    sub_26CD3A3DC();

LABEL_7:
    v16 = *(v0 + 128);
    v17 = *(v0 + 136);
    sub_26CC1D1B8(*(v0 + 144), *(v0 + 152));

    v18 = *(v0 + 8);

    return v18(0);
  }

  sub_26CC1B544(*(v0 + 128), &qword_2804BCA90, &qword_26CD3C200);
  v20 = Data.asDictionary()();
  if (!v20)
  {
    v30 = *(v0 + 120);

    v31 = *(v30 + OBJC_IVAR____TtC13TVAppServices23UTSConfigurationManager_logger);
    sub_26CD3A98C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
    v32 = swift_allocObject();
    *(v32 + 16) = xmmword_26CD3C1E0;
    *(v32 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA20, &unk_26CD3D4D0);
    *(v32 + 64) = sub_26CC2E6E8();
    v33 = &unk_287DF98B0;
LABEL_17:
    *(v32 + 32) = v33;
    sub_26CD3A3DC();

    sub_26CC1D1B8(v4, v6);
    goto LABEL_7;
  }

  v21 = v20;
  v22 = *(v0 + 120);
  v23 = *(v0 + 112);
  LOBYTE(v36[0]) = *(v0 + 192);
  if ((sub_26CD1734C(v20, v36, v23) & 1) == 0)
  {
    v34 = *(v0 + 120);

    v35 = *(v34 + OBJC_IVAR____TtC13TVAppServices23UTSConfigurationManager_logger);
    sub_26CD3A98C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
    v32 = swift_allocObject();
    *(v32 + 16) = xmmword_26CD3C1E0;
    *(v32 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA20, &unk_26CD3D4D0);
    *(v32 + 64) = sub_26CC2E6E8();
    v33 = &unk_287DF9880;
    goto LABEL_17;
  }

  v24 = *(v0 + 120);
  v25 = *(v24 + 176);
  *(v24 + 176) = v9;

  v26 = type metadata accessor for UTSConfigurationResponse();
  v27 = swift_allocObject();
  *(v0 + 160) = v27;
  *(v27 + 16) = v21;
  v36[3] = v26;
  v36[4] = &off_287E05310;
  v36[0] = v27;

  sub_26CD232E4(v36, (v0 + 16));
  swift_beginAccess();
  sub_26CC86CE0(v0 + 16, v24 + 128, &qword_2804BDA30, qword_26CD482E0);
  swift_endAccess();
  v28 = swift_task_alloc();
  *(v0 + 168) = v28;
  *v28 = v0;
  v28[1] = sub_26CD18A94;
  v29 = *(v0 + 120);

  return sub_26CD17C30(v4, v6);
}

uint64_t sub_26CD18A94(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 168);
  v6 = *v2;
  v4[22] = v1;

  v7 = v4[15];
  if (v1)
  {
    v8 = sub_26CD18C70;
  }

  else
  {
    v4[23] = a1;
    v8 = sub_26CD18BD0;
  }

  return MEMORY[0x2822009F8](v8, v7, 0);
}

uint64_t sub_26CD18BD0()
{
  v2 = v0[19];
  v1 = v0[20];
  v3 = v0[18];

  sub_26CC1D1B8(v3, v2);
  v4 = v0[23];
  v6 = v0[16];
  v5 = v0[17];
  sub_26CC1D1B8(v0[18], v0[19]);

  v7 = v0[1];

  return v7(v4);
}

uint64_t sub_26CD18C70()
{
  v2 = v0[19];
  v1 = v0[20];
  v4 = v0[17];
  v3 = v0[18];
  v5 = v0[16];

  sub_26CC1D1B8(v3, v2);
  sub_26CC1D1B8(v3, v2);

  v6 = v0[1];
  v7 = v0[22];

  return v6();
}

uint64_t sub_26CD18D0C(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BCA90, &qword_26CD3C200);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v77 - v6;
  v8 = [a1 data];
  v9 = sub_26CD3A0BC();
  v11 = v10;

  v12 = Data.asDictionary()();
  sub_26CC18C50(v9, v11);
  v13 = *(v2 + 176);

  v78 = sub_26CD1B244(v14);
  v79 = v15;

  if (*(v2 + 176))
  {
    v16 = *(v2 + 176);
  }

  else
  {
    v16 = sub_26CC194BC(MEMORY[0x277D84F90]);
  }

  sub_26CCC7DC0(v16);

  v17 = objc_allocWithZone(MEMORY[0x277CBEAC0]);
  v18 = sub_26CD3A4DC();

  v19 = [v17 initWithDictionary_];

  if (v12)
  {
    v20 = v12;
    v21 = v12;
  }

  else
  {
    v21 = sub_26CC194BC(MEMORY[0x277D84F90]);
    v20 = 0;
  }

  sub_26CCC7DC0(v21);

  v22 = sub_26CD3A4DC();

  v23 = [v19 isEqualToDictionary_];

  v24 = *(v2 + OBJC_IVAR____TtC13TVAppServices23UTSConfigurationManager_logger);
  sub_26CD3A99C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
  v25 = swift_allocObject();
  v81 = xmmword_26CD3C1E0;
  *(v25 + 16) = xmmword_26CD3C1E0;
  *(v25 + 56) = MEMORY[0x277D837D0];
  v80 = sub_26CC19E10();
  *(v25 + 64) = v80;
  v26 = "Force config specified.";
  if (v23)
  {
    v26 = "new utsk notification:";
  }

  v27 = 0xD00000000000001BLL;
  if (!v23)
  {
    v27 = 0xD000000000000017;
  }

  *(v25 + 32) = v27;
  *(v25 + 40) = v26 | 0x8000000000000000;
  sub_26CD3A3DC();

  v28 = *(v2 + 176);
  *(v2 + 176) = v12;

  v29 = type metadata accessor for UTSConfigurationResponse();
  v30 = swift_allocObject();
  *(v30 + 16) = v12;
  v82[3] = v29;
  v82[4] = &off_287E05310;
  v82[0] = v30;

  sub_26CD232E4(v82, v83);
  swift_beginAccess();
  sub_26CC86CE0(v83, v2 + 128, &qword_2804BDA30, qword_26CD482E0);
  swift_endAccess();
  v31 = sub_26CD1403C();
  if (v31)
  {
    v32 = sub_26CCC7710(21, v31);
  }

  else
  {
    v32 = 0;
  }

  qword_2804BDBE8 = v32;

  sub_26CD3A1DC();
  v33 = sub_26CD3A1EC();
  (*(*(v33 - 8) + 56))(v7, 0, 1, v33);
  v34 = OBJC_IVAR____TtC13TVAppServices23UTSConfigurationManager_lastFetchedUTSConfigDate;
  swift_beginAccess();
  sub_26CC86CE0(v7, v2 + v34, &qword_2804BCA90, &qword_26CD3C200);
  swift_endAccess();
  v35 = *(v2 + 184);
  v36 = [a1 data];
  v37 = sub_26CD3A0BC();
  v39 = v38;

  sub_26CC6EE84();
  sub_26CC18C50(v37, v39);
  sub_26CD3A99C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
  v40 = swift_allocObject();
  *(v40 + 16) = v81;
  v41 = v80;
  *(v40 + 56) = MEMORY[0x277D837D0];
  *(v40 + 64) = v41;
  *(v40 + 32) = 0xD000000000000016;
  *(v40 + 40) = 0x800000026CD52BB0;
  sub_26CD3A3DC();

  if (!v12)
  {
    goto LABEL_30;
  }

  if (!*(v20 + 16) || (v42 = sub_26CC181C4(1635017060, 0xE400000000000000), (v43 & 1) == 0))
  {

    goto LABEL_30;
  }

  sub_26CC168C0(*(v20 + 56) + 32 * v42, v83);

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC30, &qword_26CD46430);
  if (!swift_dynamicCast())
  {
LABEL_30:
  }

  v44 = v82[0];
  v45 = v79;
  if ((v23 & 1) == 0)
  {
    v46 = v82[0];
    if (qword_280BB9C20 != -1)
    {
      swift_once();
    }

    sub_26CD3A99C();
    v47 = swift_allocObject();
    *(v47 + 16) = v81;
    v48 = v80;
    *(v47 + 56) = MEMORY[0x277D837D0];
    *(v47 + 64) = v48;
    *(v47 + 32) = 0xD00000000000002BLL;
    *(v47 + 40) = 0x800000026CD52BD0;
    sub_26CD3A3DC();

    v49 = [objc_opt_self() defaultCenter];
    if (qword_280BB9BC0 != -1)
    {
      swift_once();
    }

    v50 = qword_280BB9BC8;
    v44 = v46;
    v51 = sub_26CD3A4DC();
    [v49 postNotificationName:v50 object:v51];
  }

  v52 = *(v2 + 176);

  v54 = sub_26CD1B244(v53);
  v56 = v55;

  if (!v45)
  {
    if (v56)
    {

      goto LABEL_36;
    }

    goto LABEL_30;
  }

  if (v56)
  {
    if (v78 == v54 && v45 == v56)
    {
    }

    v58 = sub_26CD3AFDC();

    if (v58)
    {
    }
  }

LABEL_36:
  v77 = v44;
  if (qword_280BB9C20 != -1)
  {
    swift_once();
  }

  sub_26CD3A99C();
  v59 = swift_allocObject();
  *(v59 + 16) = v81;
  v60 = v80;
  *(v59 + 56) = MEMORY[0x277D837D0];
  *(v59 + 64) = v60;
  *(v59 + 32) = 0xD000000000000022;
  *(v59 + 40) = 0x800000026CD52C00;
  sub_26CD3A3DC();

  *&v83[0] = 0;
  *(&v83[0] + 1) = 0xE000000000000000;
  sub_26CD3AC6C();

  *&v83[0] = 0xD00000000000001BLL;
  *(&v83[0] + 1) = 0x800000026CD52C30;
  if (v45)
  {
    v61 = v78;
  }

  else
  {
    v61 = 0;
  }

  if (v45)
  {
    v62 = v45;
  }

  else
  {
    v62 = 0xE000000000000000;
  }

  MEMORY[0x26D6AD060](v61, v62);

  v63 = v83[0];
  sub_26CD3A99C();
  v64 = swift_allocObject();
  *(v64 + 16) = v81;
  *(v64 + 56) = MEMORY[0x277D837D0];
  *(v64 + 64) = v60;
  *(v64 + 32) = v63;
  sub_26CD3A3DC();

  *&v83[0] = 0;
  *(&v83[0] + 1) = 0xE000000000000000;
  sub_26CD3AC6C();

  *&v83[0] = 0xD000000000000016;
  *(&v83[0] + 1) = 0x800000026CD52C50;
  v65 = *(v2 + 176);

  v67 = sub_26CD1B244(v66);
  v69 = v68;

  if (v69)
  {
    v70 = v67;
  }

  else
  {
    v70 = 0;
  }

  if (v69)
  {
    v71 = v69;
  }

  else
  {
    v71 = 0xE000000000000000;
  }

  MEMORY[0x26D6AD060](v70, v71);

  v72 = v83[0];
  sub_26CD3A99C();
  v73 = swift_allocObject();
  *(v73 + 16) = v81;
  *(v73 + 56) = MEMORY[0x277D837D0];
  *(v73 + 64) = v60;
  *(v73 + 32) = v72;
  sub_26CD3A3DC();

  v74 = [objc_opt_self() defaultCenter];
  if (qword_2804BBAB8 != -1)
  {
    swift_once();
  }

  v75 = qword_2804BDDA8;
  v76 = sub_26CD3A4DC();

  [v74 postNotificationName:v75 object:v76];
}

uint64_t sub_26CD19808(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  swift_beginAccess();
  sub_26CC1B4DC(v2 + 128, v14, &qword_2804BDA30, qword_26CD482E0);
  if (!v14[0])
  {
LABEL_6:
    sub_26CC1B544(v14, &qword_2804BDA30, qword_26CD482E0);
    return 0;
  }

  sub_26CD04534(v14, v12);
  sub_26CC1B544(v14, &qword_2804BDA30, qword_26CD482E0);
  sub_26CD22CB8(a1, a2, v15);
  sub_26CD04590(v12);
  if (v16)
  {
    v7 = v17;
    v6 = v18;

    sub_26CC1B544(v15, &qword_2804BDA38, qword_26CD48278);
    sub_26CC1B4DC(v3 + 128, v14, &qword_2804BDA30, qword_26CD482E0);
    if (v14[0])
    {
      sub_26CD04534(v14, v12);
      sub_26CC1B544(v14, &qword_2804BDA30, qword_26CD482E0);
      sub_26CC19A84(&v13, v11);
      sub_26CD04590(v12);
      v8 = __swift_project_boxed_opaque_existential_1(v11, v11[3]);
      v9 = sub_26CD277F0(v7, v6, *v8);

      __swift_destroy_boxed_opaque_existential_1(v11);
      return v9;
    }

    goto LABEL_6;
  }

  return 0;
}

uint64_t sub_26CD199A8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  sub_26CCF3448(&unk_287DF9B28);
  sub_26CD04454(&unk_287DF9B48);
  v16[0] = a1;
  v16[1] = a2;
  sub_26CC86D6C();
  sub_26CD3A92C();

  v6 = v17;
  v7 = v18;
  v9 = v19;
  v8 = v20;
  swift_beginAccess();
  sub_26CC1B4DC(v3 + 128, v16, &qword_2804BDA30, qword_26CD482E0);
  if (v16[0])
  {
    sub_26CD04534(v16, v15);
    sub_26CC1B544(v16, &qword_2804BDA30, qword_26CD482E0);
    v10 = MEMORY[0x26D6AD010](v6, v7, v9, v8);
    v12 = v11;

    sub_26CD22CB8(v10, v12, &v17);

    sub_26CD04590(v15);
    if (v18)
    {
      v13 = v17;

      sub_26CC1B544(&v17, &qword_2804BDA38, qword_26CD48278);
    }

    else
    {
      return 0;
    }
  }

  else
  {

    sub_26CC1B544(v16, &qword_2804BDA30, qword_26CD482E0);
    return 0;
  }

  return v13;
}

char *sub_26CD19B60()
{
  v1 = v0;
  swift_defaultActor_initialize();
  *(v0 + 176) = 0;
  *(v0 + 144) = 0u;
  *(v0 + 160) = 0u;
  *(v0 + 112) = 0u;
  *(v0 + 128) = 0u;
  *(v0 + 192) = 0x69666E6F43535455;
  *(v0 + 200) = 0xE900000000000067;
  v2 = OBJC_IVAR____TtC13TVAppServices23UTSConfigurationManager_lastFetchedUTSConfigDate;
  v3 = sub_26CD3A1EC();
  (*(*(v3 - 8) + 56))(&v1[v2], 1, 1, v3);
  *&v1[OBJC_IVAR____TtC13TVAppServices23UTSConfigurationManager_configurationRequestTask] = 0;
  v4 = &v1[OBJC_IVAR____TtC13TVAppServices23UTSConfigurationManager_logger];
  sub_26CC18080(0, &qword_280BBB710, 0x277D86200);
  *v4 = sub_26CD3AACC();
  *(v4 + 4) = 512;
  v6 = *(v1 + 24);
  v5 = *(v1 + 25);
  v7 = type metadata accessor for CacheStorage();
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  v10 = swift_allocObject();
  v11 = OBJC_IVAR____TtC13TVAppServices12CacheStorage____lazy_storage___cacheUrl;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BCA30, &qword_26CD3DA70);
  (*(*(v12 - 8) + 56))(v10 + v11, 1, 1, v12);
  *(v10 + 16) = v6;
  *(v10 + 24) = v5;
  *(v1 + 23) = v10;

  return v1;
}

void *sub_26CD19D04()
{
  v1 = v0[14];
  swift_unknownObjectRelease();
  sub_26CC1B544((v0 + 16), &qword_2804BDA30, qword_26CD482E0);
  v2 = v0[22];

  v3 = v0[23];

  v4 = v0[25];

  sub_26CC1B544(v0 + OBJC_IVAR____TtC13TVAppServices23UTSConfigurationManager_lastFetchedUTSConfigDate, &qword_2804BCA90, &qword_26CD3C200);
  v5 = *(v0 + OBJC_IVAR____TtC13TVAppServices23UTSConfigurationManager_configurationRequestTask);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_26CD19D9C()
{
  sub_26CD19D04();

  return MEMORY[0x282200960](v0);
}

uint64_t type metadata accessor for UTSConfigurationManager()
{
  result = qword_280BBA140;
  if (!qword_280BBA140)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_26CD19E1C()
{
  sub_26CC16358();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t sub_26CD19F04()
{
  v1[5] = v0;
  v2 = type metadata accessor for UTSNetworkRequest(0);
  v1[6] = v2;
  v3 = *(*(v2 - 8) + 64) + 15;
  v1[7] = swift_task_alloc();
  v1[8] = swift_task_alloc();
  v1[9] = swift_task_alloc();
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BC3F8, &qword_26CD45490) - 8) + 64) + 15;
  v1[10] = swift_task_alloc();
  v1[11] = swift_task_alloc();
  v1[12] = swift_task_alloc();
  v5 = sub_26CD39D0C();
  v1[13] = v5;
  v6 = *(v5 - 8);
  v1[14] = v6;
  v7 = *(v6 + 64) + 15;
  v1[15] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26CD1A05C, v0, 0);
}

uint64_t sub_26CD1A05C()
{
  v1 = qword_280BBA168;
  if (qword_280BBA168)
  {
    v2 = v0[13];
    v3 = v0[14];
    v5 = v0[10];
    v4 = v0[11];

    sub_26CD08B34(v4);
    v6 = OBJC_IVAR____TtC13TVAppServices27ConfigurationRequestBuilder_configurationRequest;
    swift_beginAccess();
    sub_26CC1B4DC(v1 + v6, v5, &qword_2804BC3F8, &qword_26CD45490);
    v7 = *(v3 + 48);
    v8 = v7(v5, 1, v2);
    v10 = v0[11];
    v9 = v0[12];
    v11 = v0[10];
    if (v8 == 1)
    {
      sub_26CC1B544(v0[10], &qword_2804BC3F8, &qword_26CD45490);
      sub_26CCFF758(v10, v9);

      sub_26CC1B544(v10, &qword_2804BC3F8, &qword_26CD45490);
    }

    else
    {
      sub_26CC1B544(v0[11], &qword_2804BC3F8, &qword_26CD45490);
      sub_26CC1B544(v11, &qword_2804BC3F8, &qword_26CD45490);
      sub_26CC1B4DC(v1 + v6, v9, &qword_2804BC3F8, &qword_26CD45490);
    }

    v15 = v0[12];
    v14 = v0[13];
    if (v7(v15, 1, v14) == 1)
    {
      sub_26CC1B544(v15, &qword_2804BC3F8, &qword_26CD45490);
      v16 = 0;
      v17 = 0;
    }

    else
    {
      v19 = v0[14];
      v18 = v0[15];
      v21 = v0[8];
      v20 = v0[9];
      v22 = v0[6];
      v40 = v0[7];
      (*(v19 + 32))(v18, v15, v14);
      (*(v19 + 16))(&v20[v22[7]], v18, v14);
      v23 = [objc_opt_self() standardUserDefaults];
      v24 = sub_26CD3A59C();
      v25 = [v23 integerForKey_];

      if (v25)
      {
        v26 = v25;
      }

      else
      {
        v26 = 91;
      }

      v27 = &v20[v22[5]];
      sub_26CD3A1FC();
      v20[v22[6]] = 0;
      *&v20[v22[8]] = v26;
      *v20 = 0;
      sub_26CCC2438(v20, v21);
      v28 = type metadata accessor for AMSRequestHandler();
      v29 = *(v28 + 48);
      v30 = *(v28 + 52);
      v31 = swift_allocObject();
      sub_26CCC2438(v21, v40);
      v16 = sub_26CD32DB4(v40, v31);
      sub_26CCC249C(v21);
      (*(v19 + 8))(v18, v14);
      sub_26CCC249C(v20);
      v17 = &off_287E05C08;
    }

    v32 = v0[15];
    v34 = v0[11];
    v33 = v0[12];
    v36 = v0[9];
    v35 = v0[10];
    v38 = v0[7];
    v37 = v0[8];

    v39 = v0[1];

    return v39(v16, v17);
  }

  else
  {
    v12 = swift_task_alloc();
    v0[16] = v12;
    *v12 = v0;
    v12[1] = sub_26CD1A460;

    return sub_26CD01860();
  }
}

uint64_t sub_26CD1A460(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 128);
  v6 = *v2;

  if (v1)
  {
    v7 = v4[15];
    v9 = v4[11];
    v8 = v4[12];
    v11 = v4[9];
    v10 = v4[10];
    v14 = v4 + 7;
    v12 = v4[7];
    v13 = v14[1];

    v15 = *(v6 + 8);

    return v15();
  }

  else
  {
    v17 = v4[5];
    v4[17] = a1;

    return MEMORY[0x2822009F8](sub_26CD1A600, v17, 0);
  }
}

uint64_t sub_26CD1A600()
{
  qword_280BBA168 = v0[17];

  v1 = qword_280BBA168;
  if (qword_280BBA168)
  {
    v2 = v0[13];
    v3 = v0[14];
    v5 = v0[10];
    v4 = v0[11];

    sub_26CD08B34(v4);
    v6 = OBJC_IVAR____TtC13TVAppServices27ConfigurationRequestBuilder_configurationRequest;
    swift_beginAccess();
    sub_26CC1B4DC(v1 + v6, v5, &qword_2804BC3F8, &qword_26CD45490);
    v7 = *(v3 + 48);
    v8 = v7(v5, 1, v2);
    v10 = v0[11];
    v9 = v0[12];
    v11 = v0[10];
    if (v8 == 1)
    {
      sub_26CC1B544(v0[10], &qword_2804BC3F8, &qword_26CD45490);
      sub_26CCFF758(v10, v9);

      sub_26CC1B544(v10, &qword_2804BC3F8, &qword_26CD45490);
    }

    else
    {
      sub_26CC1B544(v0[11], &qword_2804BC3F8, &qword_26CD45490);
      sub_26CC1B544(v11, &qword_2804BC3F8, &qword_26CD45490);
      sub_26CC1B4DC(v1 + v6, v9, &qword_2804BC3F8, &qword_26CD45490);
    }

    v12 = v0[12];
    v13 = v0[13];
    if (v7(v12, 1, v13) != 1)
    {
      v17 = v0[14];
      v16 = v0[15];
      v19 = v0[8];
      v18 = v0[9];
      v20 = v0[6];
      v39 = v0[7];
      (*(v17 + 32))(v16, v12, v13);
      (*(v17 + 16))(&v18[v20[7]], v16, v13);
      v21 = [objc_opt_self() standardUserDefaults];
      v22 = sub_26CD3A59C();
      v23 = [v21 integerForKey_];

      if (v23)
      {
        v24 = v23;
      }

      else
      {
        v24 = 91;
      }

      v25 = &v18[v20[5]];
      sub_26CD3A1FC();
      v18[v20[6]] = 0;
      *&v18[v20[8]] = v24;
      *v18 = 0;
      sub_26CCC2438(v18, v19);
      v26 = type metadata accessor for AMSRequestHandler();
      v27 = *(v26 + 48);
      v28 = *(v26 + 52);
      v29 = swift_allocObject();
      sub_26CCC2438(v19, v39);
      v14 = sub_26CD32DB4(v39, v29);
      sub_26CCC249C(v19);
      (*(v17 + 8))(v16, v13);
      sub_26CCC249C(v18);
      v15 = &off_287E05C08;
      goto LABEL_12;
    }
  }

  else
  {
    (*(v0[14] + 56))(v0[12], 1, 1, v0[13]);
    v12 = v0[12];
  }

  sub_26CC1B544(v12, &qword_2804BC3F8, &qword_26CD45490);
  v14 = 0;
  v15 = 0;
LABEL_12:
  v30 = v0[15];
  v32 = v0[11];
  v31 = v0[12];
  v34 = v0[9];
  v33 = v0[10];
  v36 = v0[7];
  v35 = v0[8];

  v37 = v0[1];

  return v37(v14, v15);
}

uint64_t sub_26CD1A9B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a1;
  v4[3] = a4;
  v5 = swift_task_alloc();
  v4[4] = v5;
  *v5 = v4;
  v5[1] = sub_26CD1AA48;

  return sub_26CD19F04();
}

uint64_t sub_26CD1AA48(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *(*v3 + 32);
  v6 = *v3;
  v4[5] = a1;
  v4[6] = a2;

  if (v2)
  {
    v7 = *(v6 + 8);

    return v7();
  }

  else
  {
    v9 = v4[3];

    return MEMORY[0x2822009F8](sub_26CD1AB90, v9, 0);
  }
}

uint64_t sub_26CD1AB90()
{
  v1 = v0[3];
  if (*(v1 + 112))
  {
    v2 = (v1 + 120);
    v3 = *(v1 + 112);
LABEL_5:
    v5 = *v2;
    v0[7] = v3;
    ObjectType = swift_getObjectType();
    v7 = *(v5 + 40);
    swift_unknownObjectRetain();
    v15 = (v7 + *v7);
    v8 = v7[1];
    v9 = swift_task_alloc();
    v0[8] = v9;
    *v9 = v0;
    v9[1] = sub_26CD1AE00;

    return v15(ObjectType, v5);
  }

  v3 = v0[5];
  if (v3)
  {
    v2 = v0 + 6;
    v4 = v0[5];
    swift_unknownObjectRetain();
    goto LABEL_5;
  }

  v11 = *(v1 + OBJC_IVAR____TtC13TVAppServices23UTSConfigurationManager_logger);
  sub_26CD3A98C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_26CD3C1E0;
  *(v12 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA20, &unk_26CD3D4D0);
  *(v12 + 64) = sub_26CC2E6E8();
  *(v12 + 32) = &unk_287DFC850;
  sub_26CD3A3DC();

  sub_26CD1BB08();
  swift_allocError();
  *v13 = 1;
  swift_willThrow();
  v14 = v0[1];

  return v14();
}

uint64_t sub_26CD1AE00(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 64);
  v6 = *v2;
  *(v4 + 72) = a1;
  *(v4 + 80) = v1;

  v7 = *(v3 + 24);
  if (v1)
  {
    v8 = sub_26CD1B1D4;
  }

  else
  {
    v8 = sub_26CD1AF34;
  }

  return MEMORY[0x2822009F8](v8, v7, 0);
}

uint64_t sub_26CD1AF34()
{
  v1 = [*(v0 + 72) data];
  v2 = sub_26CD3A0BC();
  v4 = v3;

  v5 = Data.asDictionary()();
  sub_26CC18C50(v2, v4);
  if (v5)
  {
    v6 = *(v0 + 72);
    v7 = *(v0 + 56);
    v8 = *(v0 + 40);
    v10 = *(v0 + 16);
    v9 = *(v0 + 24);

    v11 = *(v9 + OBJC_IVAR____TtC13TVAppServices23UTSConfigurationManager_logger);
    sub_26CD3A99C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_26CD3C1E0;
    *(v12 + 56) = MEMORY[0x277D837D0];
    *(v12 + 64) = sub_26CC19E10();
    *(v12 + 32) = 0xD00000000000001DLL;
    *(v12 + 40) = 0x800000026CD52C90;
    sub_26CD3A3DC();

    sub_26CD18D0C(v6);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    *v10 = v6;
  }

  else
  {
    v14 = *(v0 + 72);
    v15 = *(v0 + 56);
    v16 = *(v0 + 40);
    v17 = *(*(v0 + 24) + OBJC_IVAR____TtC13TVAppServices23UTSConfigurationManager_logger);
    sub_26CD3A98C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_26CD3C1E0;
    *(v18 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA20, &unk_26CD3D4D0);
    *(v18 + 64) = sub_26CC2E6E8();
    *(v18 + 32) = &unk_287DFC880;
    sub_26CD3A3DC();

    sub_26CD1BB08();
    swift_allocError();
    *v19 = 0;
    swift_willThrow();

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
  }

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_26CD1B1D4()
{
  v1 = v0[7];
  v2 = v0[5];
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  v3 = v0[10];
  v4 = v0[1];

  return v4();
}

uint64_t sub_26CD1B244(uint64_t a1)
{
  if (!a1 || !*(a1 + 16) || (v2 = sub_26CC181C4(1635017060, 0xE400000000000000), (v3 & 1) == 0) || (sub_26CC168C0(*(a1 + 56) + 32 * v2, v16), __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC30, &qword_26CD46430), (swift_dynamicCast() & 1) == 0))
  {
    if (qword_280BBB6B8 != -1)
    {
      swift_once();
    }

    sub_26CD3A98C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_26CD3C1E0;
    *(v13 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA20, &unk_26CD3D4D0);
    *(v13 + 64) = sub_26CC2E6E8();
    v14 = &unk_287DF99D0;
    goto LABEL_21;
  }

  if (!*(v15 + 16) || (v4 = sub_26CC181C4(0xD000000000000010, 0x800000026CD51250), (v5 & 1) == 0))
  {

    goto LABEL_23;
  }

  sub_26CC168C0(*(v15 + 56) + 32 * v4, v16);

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_23:
    if (qword_280BBB6B8 != -1)
    {
      swift_once();
    }

    sub_26CD3A98C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_26CD3C1E0;
    *(v13 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA20, &unk_26CD3D4D0);
    *(v13 + 64) = sub_26CC2E6E8();
    v14 = &unk_287DF99A0;
    goto LABEL_21;
  }

  if (!*(v15 + 16) || (v6 = sub_26CC181C4(0xD000000000000011, 0x800000026CD51150), (v7 & 1) == 0))
  {

    goto LABEL_27;
  }

  sub_26CC168C0(*(v15 + 56) + 32 * v6, v16);

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_27:
    if (qword_280BBB6B8 != -1)
    {
      swift_once();
    }

    sub_26CD3A98C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_26CD3C1E0;
    *(v13 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA20, &unk_26CD3D4D0);
    *(v13 + 64) = sub_26CC2E6E8();
    v14 = &unk_287DF9970;
    goto LABEL_21;
  }

  if (!*(v15 + 16) || (v8 = sub_26CC181C4(0x746C7561666544, 0xE700000000000000), (v9 & 1) == 0))
  {

    goto LABEL_31;
  }

  sub_26CC168C0(*(v15 + 56) + 32 * v8, v16);

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_31:
    if (qword_280BBB6B8 != -1)
    {
      swift_once();
    }

    sub_26CD3A98C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_26CD3C1E0;
    *(v13 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA20, &unk_26CD3D4D0);
    *(v13 + 64) = sub_26CC2E6E8();
    v14 = &unk_287DF9940;
    goto LABEL_21;
  }

  if (*(v15 + 16) && (v10 = sub_26CC181C4(1802728565, 0xE400000000000000), (v11 & 1) != 0))
  {
    sub_26CC168C0(*(v15 + 56) + 32 * v10, v16);

    if (swift_dynamicCast())
    {
      return v15;
    }
  }

  else
  {
  }

  if (qword_280BBB6B8 != -1)
  {
    swift_once();
  }

  sub_26CD3A98C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_26CD3C1E0;
  *(v13 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA20, &unk_26CD3D4D0);
  *(v13 + 64) = sub_26CC2E6E8();
  v14 = &unk_287DF9910;
LABEL_21:
  *(v13 + 32) = v14;
  sub_26CD3A3DC();

  return 0;
}

uint64_t sub_26CD1B7C4(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BDBF8, &qword_26CD49830);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v10 - v6;
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26CD1B9A8();
  sub_26CD3B15C();
  if (!v1)
  {
    v12 = 0;
    v8 = sub_26CD3AE3C();
    v11 = 1;
    sub_26CD3AE3C();
    (*(v4 + 8))(v7, v3);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v8;
}

unint64_t sub_26CD1B9A8()
{
  result = qword_2804BDC00;
  if (!qword_2804BDC00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BDC00);
  }

  return result;
}

unint64_t sub_26CD1B9FC()
{
  result = qword_280BBA150;
  if (!qword_280BBA150)
  {
    type metadata accessor for UTSConfigurationManager();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BBA150);
  }

  return result;
}

uint64_t sub_26CD1BA54(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_26CC246B8;

  return sub_26CD1A9B4(a1, v4, v5, v6);
}

unint64_t sub_26CD1BB08()
{
  result = qword_2804BDC18;
  if (!qword_2804BDC18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BDC18);
  }

  return result;
}

uint64_t sub_26CD1BB5C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_26CD1BBA4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_26CD1BBF4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_26CD1BC3C(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

unint64_t sub_26CD1BCB8()
{
  result = qword_2804BDC20;
  if (!qword_2804BDC20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BDC20);
  }

  return result;
}

unint64_t sub_26CD1BD10()
{
  result = qword_2804BDC28;
  if (!qword_2804BDC28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BDC28);
  }

  return result;
}

unint64_t sub_26CD1BD68()
{
  result = qword_280BBB0D0;
  if (!qword_280BBB0D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BBB0D0);
  }

  return result;
}

unint64_t sub_26CD1BDC0()
{
  result = qword_2804BDC30;
  if (!qword_2804BDC30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BDC30);
  }

  return result;
}

unint64_t sub_26CD1BE18()
{
  result = qword_2804BDC38;
  if (!qword_2804BDC38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BDC38);
  }

  return result;
}

unint64_t sub_26CD1BE6C()
{
  result = qword_280BB9FA0;
  if (!qword_280BB9FA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BB9FA0);
  }

  return result;
}

unint64_t sub_26CD1BEC0()
{
  result = qword_280BBAD08;
  if (!qword_280BBAD08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BBAD08);
  }

  return result;
}

unint64_t sub_26CD1BF14()
{
  result = qword_280BB9C00;
  if (!qword_280BB9C00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804BDC48, &qword_26CD49C18);
    sub_26CD1CA68(&qword_280BB9BF0, sub_26CD1BFD0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BB9C00);
  }

  return result;
}

unint64_t sub_26CD1BFD0()
{
  result = qword_280BBB0D8;
  if (!qword_280BBB0D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BBB0D8);
  }

  return result;
}

uint64_t sub_26CD1C024(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0x7364696269 && a2 == 0xE500000000000000;
  if (v3 || (sub_26CD3AFDC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7364696273 && a2 == 0xE500000000000000 || (sub_26CD3AFDC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7364696274 && a2 == 0xE500000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_26CD3AFDC();

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

uint64_t sub_26CD1C12C(uint64_t *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BDCB0, &qword_26CD49EF0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v10 - v5;
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26CD1CDC8();
  sub_26CD3B15C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA20, &unk_26CD3D4D0);
  v11 = 0;
  sub_26CC3F22C(&qword_2804BBE98);
  sub_26CD3AE7C();
  v9 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BDCA8, &qword_26CD49EE8);
  v11 = 1;
  sub_26CD1CE1C(&qword_2804BDCB8, sub_26CD1CEE8);
  sub_26CD3AE7C();
  v11 = 2;
  sub_26CD3AE7C();
  (*(v3 + 8))(v6, v2);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v9;
}

uint64_t sub_26CD1C40C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x64656C62616E65 && a2 == 0xE700000000000000;
  if (v4 || (sub_26CD3AFDC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E69616D6F64 && a2 == 0xE600000000000000 || (sub_26CD3AFDC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1701667182 && a2 == 0xE400000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_26CD3AFDC();

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

uint64_t sub_26CD1C520@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BDC80, &qword_26CD49C30);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v20 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26CD1CB34();
  sub_26CD3B15C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v24 = 0;
  v11 = sub_26CD3AE4C();
  v23 = 1;
  v12 = sub_26CD3AE3C();
  v14 = v13;
  v21 = v12;
  v22 = 2;
  v15 = sub_26CD3AE3C();
  v16 = v9;
  v18 = v17;
  (*(v6 + 8))(v16, v5);
  result = __swift_destroy_boxed_opaque_existential_1(a1);
  *a2 = v11 & 1;
  *(a2 + 8) = v21;
  *(a2 + 16) = v14;
  *(a2 + 24) = v15;
  *(a2 + 32) = v18;
  return result;
}

uint64_t sub_26CD1C738(uint64_t *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BDC58, &qword_26CD49C28);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v10 - v5;
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26CD1BE6C();
  sub_26CD3B15C();
  v11 = 0;
  sub_26CD1C958();
  sub_26CD3AE7C();
  v9 = v10[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BDC48, &qword_26CD49C18);
  v11 = 1;
  sub_26CD1C9AC();
  sub_26CD3AE7C();
  (*(v3 + 8))(v6, v2);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v9;
}

unint64_t sub_26CD1C958()
{
  result = qword_2804BDC60;
  if (!qword_2804BDC60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BDC60);
  }

  return result;
}

unint64_t sub_26CD1C9AC()
{
  result = qword_2804BDC68;
  if (!qword_2804BDC68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804BDC48, &qword_26CD49C18);
    sub_26CD1CA68(&qword_2804BDC70, sub_26CD1CAE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BDC68);
  }

  return result;
}

uint64_t sub_26CD1CA68(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804BDC50, &qword_26CD49C20);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_26CD1CAE0()
{
  result = qword_2804BDC78;
  if (!qword_2804BDC78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BDC78);
  }

  return result;
}

unint64_t sub_26CD1CB34()
{
  result = qword_280BBB0F0;
  if (!qword_280BBB0F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BBB0F0);
  }

  return result;
}

unint64_t sub_26CD1CBBC()
{
  result = qword_2804BDC90;
  if (!qword_2804BDC90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BDC90);
  }

  return result;
}

unint64_t sub_26CD1CC14()
{
  result = qword_2804BDC98;
  if (!qword_2804BDC98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BDC98);
  }

  return result;
}

unint64_t sub_26CD1CC6C()
{
  result = qword_280BBB0E0;
  if (!qword_280BBB0E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BBB0E0);
  }

  return result;
}

unint64_t sub_26CD1CCC4()
{
  result = qword_280BBB0E8;
  if (!qword_280BBB0E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BBB0E8);
  }

  return result;
}

unint64_t sub_26CD1CD1C()
{
  result = qword_280BB9F90;
  if (!qword_280BB9F90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BB9F90);
  }

  return result;
}

unint64_t sub_26CD1CD74()
{
  result = qword_280BB9F98;
  if (!qword_280BB9F98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BB9F98);
  }

  return result;
}

unint64_t sub_26CD1CDC8()
{
  result = qword_280BBAD20;
  if (!qword_280BBAD20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BBAD20);
  }

  return result;
}

uint64_t sub_26CD1CE1C(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804BDCA8, &qword_26CD49EE8);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_26CD1CE94()
{
  result = qword_280BBACD0;
  if (!qword_280BBACD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BBACD0);
  }

  return result;
}

unint64_t sub_26CD1CEE8()
{
  result = qword_2804BDCC0;
  if (!qword_2804BDCC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BDCC0);
  }

  return result;
}

unint64_t sub_26CD1CF50()
{
  result = qword_2804BDCC8;
  if (!qword_2804BDCC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BDCC8);
  }

  return result;
}

unint64_t sub_26CD1CFA8()
{
  result = qword_280BBAD10;
  if (!qword_280BBAD10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BBAD10);
  }

  return result;
}

unint64_t sub_26CD1D000()
{
  result = qword_280BBAD18;
  if (!qword_280BBAD18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BBAD18);
  }

  return result;
}

uint64_t OfferStoreError.hashValue.getter()
{
  v1 = *v0;
  sub_26CD3B0FC();
  MEMORY[0x26D6ADAF0](v1);
  return sub_26CD3B13C();
}

uint64_t sub_26CD1D0E0()
{
  type metadata accessor for OfferStore();
  v0 = swift_allocObject();
  if (qword_2804BBAA8 != -1)
  {
    swift_once();
  }

  v2 = qword_2804BDCD8;
  v1 = unk_2804BDCE0;
  v3 = type metadata accessor for CacheStorage();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  v6 = swift_allocObject();
  v7 = OBJC_IVAR____TtC13TVAppServices12CacheStorage____lazy_storage___cacheUrl;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BCA30, &qword_26CD3DA70);
  (*(*(v8 - 8) + 56))(v6 + v7, 1, 1, v8);
  *(v6 + 16) = v2;
  *(v6 + 24) = v1;
  v0[5] = &type metadata for FileArchiverOfferStorageClient;
  v0[6] = &off_282025000;
  v0[2] = v6;
  v0[7] = &type metadata for BadgingStore;
  v0[8] = &off_287E030E8;
  v0[9] = MEMORY[0x277D84FA0];

  result = sub_26CD1D274();
  qword_2804BDCD0 = v0;
  return result;
}

uint64_t static OfferStore.shared.getter()
{
  if (qword_2804BBAA0 != -1)
  {
    swift_once();
  }
}

uint64_t sub_26CD1D274()
{
  v0 = sub_26CD3AA3C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BDCF8, &unk_26CD4A1B8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - v8;
  v10 = [objc_opt_self() defaultCenter];
  if (qword_2804BBA28 != -1)
  {
    swift_once();
  }

  sub_26CD3AA4C();

  sub_26CC36F24();
  sub_26CD3A47C();
  (*(v1 + 8))(v4, v0);
  swift_allocObject();
  swift_weakInit();
  sub_26CC1DD84(&qword_2804BDD00, &qword_2804BDCF8, &unk_26CD4A1B8);
  sub_26CD3A48C();

  (*(v6 + 8))(v9, v5);
  swift_beginAccess();
  sub_26CD3A45C();
  swift_endAccess();
}

uint64_t sub_26CD1D54C()
{
  sub_26CC19A84(v0[7] + 16, (v0 + 2));
  v1 = v0[5];
  v2 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v1);
  (*(v2 + 32))(v1, v2);
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v3 = v0[1];

  return v3();
}

uint64_t sub_26CD1D610(char a1)
{
  *(v2 + 64) = v1;
  *(v2 + 72) = a1;
  return MEMORY[0x2822009F8](sub_26CD1D634, 0, 0);
}

uint64_t sub_26CD1D634()
{
  v1 = *(v0 + 64);
  sub_26CC19A84(v1 + 16, v0 + 16);
  v2 = *(v0 + 40);
  v3 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_1((v0 + 16), v2);
  (*(v3 + 16))(v2, v3);
  v4 = *(v0 + 56);
  if (v4)
  {
    v5 = *(v0 + 72);
    __swift_destroy_boxed_opaque_existential_1((v0 + 16));
    if (v5 == 1)
    {
      sub_26CC19A84(v1 + 16, v0 + 16);
      v6 = *(v0 + 40);
      v7 = *(v0 + 48);
      __swift_project_boxed_opaque_existential_1((v0 + 16), v6);
      (*(v7 + 32))(v6, v7);
      __swift_destroy_boxed_opaque_existential_1((v0 + 16));
    }
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1((v0 + 16));
    if (qword_280BB9C20 != -1)
    {
      swift_once();
    }

    sub_26CD3A98C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_26CD3C1E0;
    *(v8 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA20, &unk_26CD3D4D0);
    *(v8 + 64) = sub_26CC1DD84(&qword_280BBB7C0, &unk_2804BCA20, &unk_26CD3D4D0);
    *(v8 + 32) = &unk_287DFC8B0;
    sub_26CD3A3DC();

    v4 = MEMORY[0x277D84F90];
  }

  v9 = *(v0 + 8);

  return v9(v4);
}

uint64_t sub_26CD1DA10(uint64_t a1)
{
  *(v2 + 64) = a1;
  *(v2 + 72) = v1;
  return MEMORY[0x2822009F8](sub_26CD1DA30, 0, 0);
}

uint64_t sub_26CD1DA30()
{
  v1 = v0[9];
  sub_26CC19A84(v1 + 16, (v0 + 2));
  v2 = v0[5];
  v3 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v2);
  (*(v3 + 16))(v2, v3);
  if (v0[7])
  {
    v4 = v0[7];
  }

  else
  {
    v4 = MEMORY[0x277D84F90];
  }

  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v5 = v4[2];

  if (v5)
  {
    v26 = v1;
    v6 = v4[2];
    if (v6)
    {
      v7 = 0;
      v8 = v0[8];
      v28 = v8;
      v29 = v4[2];
      v27 = v0;
      while (1)
      {
        v9 = v4[2];
        if (v7 >= v9)
        {
          __break(1u);
          goto LABEL_25;
        }

        v1 = v4[v7 + 4];
        if (*(v8 + 16) == *(v1 + 16))
        {
          v10 = v0[8];
          v11 = v4[v7 + 4];

          sub_26CCC7DC0(v12);
          v13 = objc_allocWithZone(MEMORY[0x277CBEAC0]);
          v3 = v4;
          v14 = sub_26CD3A4DC();

          v15 = [v13 initWithDictionary_];

          sub_26CCC7DC0(v10);
          v16 = sub_26CD3A4DC();

          LOBYTE(v10) = [v15 isEqualToDictionary_];

          v8 = v28;
          v6 = v29;
          v0 = v27;
          if (v10)
          {
            break;
          }
        }

        if (v6 == ++v7)
        {
          goto LABEL_14;
        }
      }

      if (qword_280BB9C20 != -1)
      {
        swift_once();
      }

      sub_26CD3A99C();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
      v17 = swift_allocObject();
      *(v17 + 16) = xmmword_26CD3C1E0;
      *(v17 + 56) = MEMORY[0x277D837D0];
      *(v17 + 64) = sub_26CC19E10();
      *(v17 + 32) = 0xD00000000000003DLL;
      *(v17 + 40) = 0x800000026CD52CF0;
      sub_26CD3A3DC();

      sub_26CD1F3D8();
      swift_allocError();
      *v18 = 2;
      swift_willThrow();
      v19 = v27[1];
      goto LABEL_21;
    }

LABEL_14:
    v20 = v0[8];

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v4 = sub_26CCBF508(0, v4[2] + 1, 1, v4);
    }

    v1 = v26;
  }

  else
  {
    v21 = v0[8];

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v4 = sub_26CCBF508(0, v4[2] + 1, 1, v4);
    }
  }

  v3 = v4[2];
  v9 = v4[3];
  v7 = v3 + 1;
  if (v3 >= v9 >> 1)
  {
LABEL_25:
    v4 = sub_26CCBF508((v9 > 1), v7, 1, v4);
  }

  v22 = v0[8];
  v4[2] = v7;
  v4[v3 + 4] = v22;
  sub_26CC19A84(v1 + 16, (v0 + 2));
  v23 = v0[5];
  v24 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v23);
  v0[7] = v4;
  (*(v24 + 24))(v0 + 7, v23, v24);

  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v19 = v0[1];
LABEL_21:

  return v19();
}

uint64_t sub_26CD1DE68(uint64_t a1, uint64_t a2)
{
  v3[10] = a2;
  v3[11] = v2;
  v3[9] = a1;
  return MEMORY[0x2822009F8](sub_26CD1DE8C, 0, 0);
}

uint64_t sub_26CD1DE8C()
{
  v1 = v0[11];
  sub_26CC19A84(v1 + 16, (v0 + 2));
  v2 = v0[5];
  v3 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v2);
  (*(v3 + 16))(v2, v3);
  if (v0[7])
  {
    v4 = v0[7];
  }

  else
  {
    v4 = MEMORY[0x277D84F90];
  }

  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v5 = *(v4 + 16);
  if (!v5)
  {
LABEL_16:

    if (qword_280BB9C20 != -1)
    {
LABEL_27:
      swift_once();
    }

    v14 = v0[9];
    v13 = v0[10];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA10, &qword_26CD3C670);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_26CD3C1E0;
    sub_26CD3AC6C();
    MEMORY[0x26D6AD060](0x1000000000000045, 0x800000026CD52D30);
    MEMORY[0x26D6AD060](v14, v13);
    *(v15 + 32) = 0;
    *(v15 + 40) = 0xE000000000000000;
    sub_26CD3A98C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_26CD3C1E0;
    *(v16 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA20, &unk_26CD3D4D0);
    *(v16 + 64) = sub_26CC1DD84(&qword_280BBB7C0, &unk_2804BCA20, &unk_26CD3D4D0);
    *(v16 + 32) = v15;
    sub_26CD3A3DC();

    sub_26CD1F3D8();
    swift_allocError();
    *v17 = 1;
    swift_willThrow();
    v18 = v0[1];
    goto LABEL_18;
  }

  v6 = 0;
  while (1)
  {
    if (v6 >= *(v4 + 16))
    {
      __break(1u);
      goto LABEL_27;
    }

    v7 = *(v4 + 8 * v6 + 32);
    if (!*(v7 + 16))
    {
      goto LABEL_7;
    }

    v8 = *(v4 + 8 * v6 + 32);

    v9 = sub_26CC181C4(0x64496567646162, 0xE700000000000000);
    if ((v10 & 1) == 0)
    {

      goto LABEL_7;
    }

    sub_26CC168C0(*(v7 + 56) + 32 * v9, (v0 + 2));

    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_7;
    }

    if (v0[7] == v0[9] && v0[8] == v0[10])
    {
      break;
    }

    v11 = v0[8];
    v12 = sub_26CD3AFDC();

    if (v12)
    {
      goto LABEL_22;
    }

LABEL_7:
    if (v5 == ++v6)
    {
      goto LABEL_16;
    }
  }

  v20 = v0[8];

LABEL_22:
  sub_26CCBE0DC(v6);

  if (*(v4 + 16))
  {
    sub_26CC19A84(v1 + 16, (v0 + 2));
    v21 = v0[5];
    v22 = v0[6];
    __swift_project_boxed_opaque_existential_1(v0 + 2, v21);
    v0[7] = v4;
    (*(v22 + 24))(v0 + 7, v21, v22);
  }

  else
  {

    sub_26CC19A84(v1 + 16, (v0 + 2));
    v23 = v0[5];
    v24 = v0[6];
    __swift_project_boxed_opaque_existential_1(v0 + 2, v23);
    (*(v24 + 32))(v23, v24);
  }

  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v18 = v0[1];
LABEL_18:

  return v18();
}

uint64_t OfferStore.deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  v1 = *(v0 + 72);

  return v0;
}

uint64_t OfferStore.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  v1 = *(v0 + 72);

  return swift_deallocClassInstance();
}

BOOL sub_26CD1E34C()
{
  v0 = [objc_opt_self() ams_sharedAccountStore];
  v1 = [v0 ams_activeiTunesAccount];

  if (v1)
  {
  }

  return v1 == 0;
}

uint64_t sub_26CD1E3B8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BCA00, &qword_26CD3D510);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v10 - v2;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = sub_26CD3A86C();
    (*(*(v6 - 8) + 56))(v3, 1, 1, v6);
    v7 = swift_allocObject();
    v7[2] = 0;
    v7[3] = 0;
    v7[4] = v5;
    sub_26CCD5E38(0, 0, v3, &unk_26CD4A1D0, v7);
  }

  else
  {
    if (qword_280BB9C20 != -1)
    {
      swift_once();
    }

    sub_26CD3A99C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_26CD3C1E0;
    *(v9 + 56) = MEMORY[0x277D837D0];
    *(v9 + 64) = sub_26CC19E10();
    *(v9 + 32) = 0xD00000000000004FLL;
    *(v9 + 40) = 0x800000026CD52DD0;
    sub_26CD3A3DC();
  }
}

uint64_t sub_26CD1E5D4()
{
  v1 = *(v0 + 16);
  v3 = *(v1 + 56);
  v2 = *(v1 + 64);
  v4 = *(v2 + 8);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v0 + 24) = v6;
  *v6 = v0;
  v6[1] = sub_26CD1E6EC;

  return v8(v3, v2);
}

uint64_t sub_26CD1E6EC()
{
  v2 = *(*v1 + 24);
  v3 = *v1;
  *(v3 + 32) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_26CD1E820, 0, 0);
  }

  else
  {
    v4 = *(v3 + 8);

    return v4();
  }
}

uint64_t sub_26CD1E820()
{
  if (qword_280BB9C20 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 32);
  sub_26CD3A98C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_26CD3C1E0;
  *(v2 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA20, &unk_26CD3D4D0);
  *(v2 + 64) = sub_26CC1DD84(&qword_280BBB7C0, &unk_2804BCA20, &unk_26CD3D4D0);
  *(v2 + 32) = &unk_287DFC8E0;
  sub_26CD3A3DC();

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_26CD1E98C()
{
  result = sub_26CD1E9B0();
  qword_2804BDCD8 = result;
  unk_2804BDCE0 = v1;
  return result;
}

uint64_t sub_26CD1E9B0()
{
  v0 = [objc_opt_self() ams_sharedAccountStore];
  v1 = [v0 ams_activeiTunesAccount];

  if (v1)
  {
    v2 = [v1 ams_DSID];

    if (v2)
    {
      v3 = [v2 description];
      v4 = sub_26CD3A5CC();
      v6 = v5;

      MEMORY[0x26D6AD060](v4, v6);
    }
  }

  MEMORY[0x26D6AD060](0x702E73726566666FLL, 0xEC0000007473696CLL);
  return 0;
}

uint64_t sub_26CD1EABC()
{
  v0 = sub_26CC6EA9C();
  if (v1 >> 60 == 15)
  {
    if (qword_280BB9C20 != -1)
    {
      swift_once();
    }

    sub_26CD3A99C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
    v2 = swift_allocObject();
    *(v2 + 16) = xmmword_26CD3C1E0;
    *(v2 + 56) = MEMORY[0x277D837D0];
    *(v2 + 64) = sub_26CC19E10();
    *(v2 + 32) = 0xD000000000000031;
    *(v2 + 40) = 0x800000026CD52E60;
    sub_26CD3A3DC();

    return MEMORY[0x277D84F90];
  }

  else
  {
    v4 = v0;
    v5 = v1;
    v6 = objc_allocWithZone(MEMORY[0x277CCAAC8]);
    v7 = sub_26CD1FA8C();
    sub_26CD1F42C();
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_26CD4A020;
    *(inited + 32) = sub_26CC18080(0, &unk_280BBB7A8, 0x277CBEAC0);
    *(inited + 40) = sub_26CC18080(0, &qword_280BBB758, 0x277CBEA60);
    *(inited + 48) = sub_26CC18080(0, &unk_280BBB748, 0x277CCACA8);
    *(inited + 56) = sub_26CC18080(0, &qword_280BB9BA0, 0x277CCABB0);
    *(inited + 64) = sub_26CC18080(0, &qword_2804BDD08, 0x277CBEAA8);
    sub_26CD1EFA8(inited);
    swift_setDeallocating();
    v9 = *MEMORY[0x277CCA308];
    sub_26CD3A5CC();
    sub_26CD3AA7C();

    sub_26CC200FC(v14, v12);
    if (v13)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BBDA0, &unk_26CD3D4F0);
      if (swift_dynamicCast())
      {
        sub_26CC548D4(v14);

        sub_26CC1D1B8(v4, v5);
        return v11;
      }
    }

    else
    {
      sub_26CC548D4(v12);
    }

    if (qword_280BB9C20 != -1)
    {
      swift_once();
    }

    sub_26CD3A98C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_26CD3C1E0;
    *(v10 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA20, &unk_26CD3D4D0);
    *(v10 + 64) = sub_26CC1DD84(&qword_280BBB7C0, &unk_2804BCA20, &unk_26CD3D4D0);
    *(v10 + 32) = &unk_287DFA660;
    sub_26CD3A3DC();

    sub_26CC1D1B8(v4, v5);
    sub_26CC548D4(v14);
    return 0;
  }
}

uint64_t sub_26CD1EFA8(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v10 = MEMORY[0x277D84F90];
    sub_26CCEB25C(0, v1, 0);
    v4 = (a1 + 32);
    v2 = v10;
    do
    {
      v8 = *v4;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BDD10, &qword_26CD4A238);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BDD18, &qword_26CD4A240);
      swift_dynamicCast();
      v6 = *(v10 + 16);
      v5 = *(v10 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_26CCEB25C((v5 > 1), v6 + 1, 1);
      }

      *(v10 + 16) = v6 + 1;
      *(v10 + 8 * v6 + 32) = v9;
      ++v4;
      --v1;
    }

    while (v1);
  }

  return v2;
}

void sub_26CD1F0D4()
{
  v15 = *MEMORY[0x277D85DE8];
  v0 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC30, &qword_26CD46430);
  v1 = sub_26CD3A79C();
  v13 = 0;
  v2 = [v0 archivedDataWithRootObject:v1 requiringSecureCoding:1 error:&v13];

  v3 = v13;
  if (v2)
  {
    v4 = sub_26CD3A0BC();
    v6 = v5;

    sub_26CC6EE84();
    sub_26CC18C50(v4, v6);
  }

  else
  {
    v7 = v3;
    v8 = sub_26CD39F8C();

    swift_willThrow();
    if (qword_280BB9C20 != -1)
    {
      swift_once();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA10, &qword_26CD3C670);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_26CD3C1E0;
    v13 = 0;
    v14 = 0xE000000000000000;
    sub_26CD3AC6C();
    MEMORY[0x26D6AD060](0xD000000000000036, 0x800000026CD52E20);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC10, &unk_26CD3D4C0);
    sub_26CD3AD1C();
    v10 = v14;
    *(v9 + 32) = v13;
    *(v9 + 40) = v10;
    sub_26CD3A98C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_26CD3C1E0;
    *(v11 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA20, &unk_26CD3D4D0);
    *(v11 + 64) = sub_26CC1DD84(&qword_280BBB7C0, &unk_2804BCA20, &unk_26CD3D4D0);
    *(v11 + 32) = v9;
    sub_26CD3A3DC();
  }

  v12 = *MEMORY[0x277D85DE8];
}

uint64_t sub_26CD1F3A0@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = sub_26CD1EABC();
  *a1 = result;
  return result;
}

void sub_26CD1F3CC(uint64_t *a1)
{
  v2 = *a1;
  v3 = *v1;
  sub_26CD1F0D4();
}

unint64_t sub_26CD1F3D8()
{
  result = qword_2804BDCE8;
  if (!qword_2804BDCE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BDCE8);
  }

  return result;
}

uint64_t sub_26CD1F42C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BDD10, &qword_26CD4A238);
  if (swift_isClassType())
  {
    v1 = v0 == 0;
  }

  else
  {
    v1 = 1;
  }

  if (v1)
  {
    v2 = &unk_2804BDD20;
    v3 = &unk_26CD4A248;
  }

  else
  {
    v2 = &qword_2804BCA68;
    v3 = &qword_26CD42850;
  }

  return __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
}

unint64_t sub_26CD1F4A8()
{
  result = qword_2804BDCF0;
  if (!qword_2804BDCF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BDCF0);
  }

  return result;
}

uint64_t dispatch thunk of OfferStore.clear()()
{
  v2 = *(*v0 + 184);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_26CC37110;

  return v6();
}

uint64_t dispatch thunk of OfferStore.fetch(andClear:)(uint64_t a1)
{
  v4 = *(*v1 + 192);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_26CC5C5BC;

  return v8(a1);
}

uint64_t dispatch thunk of OfferStore.save(offer:)(uint64_t a1)
{
  v4 = *(*v1 + 200);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_26CC246B8;

  return v8(a1);
}

uint64_t dispatch thunk of OfferStore.remove(badgeId:)(uint64_t a1, uint64_t a2)
{
  v6 = *(*v2 + 208);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_26CC37110;

  return v10(a1, a2);
}

uint64_t sub_26CD1F9C8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_26CC246B8;

  return sub_26CD1E5B4(a1, v4, v5, v6);
}

id sub_26CD1FA8C()
{
  v7[1] = *MEMORY[0x277D85DE8];
  v1 = sub_26CD3A09C();
  v7[0] = 0;
  v2 = [v0 initForReadingFromData:v1 error:v7];

  if (v2)
  {
    v3 = v7[0];
  }

  else
  {
    v4 = v7[0];
    sub_26CD39F8C();

    swift_willThrow();
  }

  v5 = *MEMORY[0x277D85DE8];
  return v2;
}

void sub_26CD1FB4C(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

uint64_t sub_26CD1FBB4()
{
  v1[17] = v0;
  v2 = sub_26CD3A07C();
  v1[18] = v2;
  v3 = *(v2 - 8);
  v1[19] = v3;
  v4 = *(v3 + 64) + 15;
  v1[20] = swift_task_alloc();
  v5 = sub_26CD39E2C();
  v1[21] = v5;
  v6 = *(v5 - 8);
  v1[22] = v6;
  v7 = *(v6 + 64) + 15;
  v1[23] = swift_task_alloc();
  v1[24] = swift_task_alloc();
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BCA30, &qword_26CD3DA70) - 8) + 64) + 15;
  v1[25] = swift_task_alloc();
  v1[26] = swift_task_alloc();
  v9 = sub_26CD39D0C();
  v1[27] = v9;
  v10 = *(v9 - 8);
  v1[28] = v10;
  v11 = *(v10 + 64) + 15;
  v1[29] = swift_task_alloc();
  v1[30] = swift_task_alloc();
  v1[31] = swift_task_alloc();
  v1[32] = swift_task_alloc();
  v1[33] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26CD1FDAC, 0, 0);
}

uint64_t sub_26CD1FDAC()
{
  v74 = v0;
  v1 = v0[33];
  v2 = v0[27];
  v3 = v0[28];
  v4 = v0[26];
  v5 = v0[19];
  v70 = v0[18];
  v6 = v0[17];
  v7 = OBJC_IVAR____TtC13TVAppServices17AMSRequestHandler_request;
  v8 = *(v3 + 16);
  v0[34] = v8;
  v0[35] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v8(v1, v6 + v7, v2);
  sub_26CD39C9C();
  v9 = *(v3 + 8);
  v0[36] = v9;
  v0[37] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v10 = v2;
  v11 = v9;
  v9(v1, v10);
  v12 = *(v5 + 48);
  v0[38] = v12;
  v0[39] = (v5 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  v13 = v70;
  v71 = v12;
  LODWORD(v1) = v12(v4, 1, v13);
  sub_26CC3C0E0(v4);
  if (v1 == 1)
  {
    v14 = v6;
    v15 = v8;
    if (qword_280BBB6B8 != -1)
    {
      swift_once();
    }

    v16 = v0[29];
    v17 = v0[27];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA10, &qword_26CD3C670);
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_26CD3C1E0;
    v73[0] = 0x2064696C61766E49;
    v73[1] = 0xEB000000006C7275;
    v15(v16, v14 + v7, v17);
    v19 = sub_26CD39C2C();
    v21 = v20;
    v11(v16, v17);
    MEMORY[0x26D6AD060](v19, v21);

    MEMORY[0x26D6AD060](46, 0xE100000000000000);
    *(v18 + 32) = 0x2064696C61766E49;
    *(v18 + 40) = 0xEB000000006C7275;
    sub_26CD3A98C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
    v22 = swift_allocObject();
    *(v22 + 16) = xmmword_26CD3C1E0;
    *(v22 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA20, &unk_26CD3D4D0);
    *(v22 + 64) = sub_26CC2E6E8();
    *(v22 + 32) = v18;
    sub_26CD3A3DC();

    sub_26CD044E0();
    swift_allocError();
    *v23 = 1;
    swift_willThrow();
    v25 = v0[32];
    v24 = v0[33];
    v27 = v0[30];
    v26 = v0[31];
    v28 = v0[29];
    v30 = v0[25];
    v29 = v0[26];
    v32 = v0[23];
    v31 = v0[24];
    v72 = v0[20];

    v33 = v0[1];

    return v33();
  }

  v8(v0[32], v6 + v7, v0[27]);
  v0[16] = MEMORY[0x277D84FA0];
  v35 = [objc_opt_self() standardUserDefaults];
  v36 = sub_26CD3A59C();
  v37 = [v35 BOOLForKey_];

  if (v37)
  {
    v39 = v0[23];
    v38 = v0[24];
    v40 = v0[21];
    v41 = v0[22];
    sub_26CD39DFC();
    sub_26CCDEE64(v38, v39);
    (*(v41 + 8))(v38, v40);
  }

  v42 = v0[32];
  v43 = v0[25];
  v44 = v0[18];
  sub_26CD39C9C();
  v45 = v71(v43, 1, v44);
  v46 = v0[25];
  if (v45)
  {
    sub_26CC3C0E0(v0[25]);
    goto LABEL_11;
  }

  v54 = v0[19];
  v53 = v0[20];
  v55 = v0[18];
  (*(v54 + 16))(v53, v0[25], v55);
  sub_26CC3C0E0(v46);
  v56 = URL.queryParameters.getter();
  (*(v54 + 8))(v53, v55);
  if (!v56)
  {
    goto LABEL_11;
  }

  if (*(v56 + 16))
  {
    sub_26CC181C4(26227, 0xE200000000000000);
    v58 = v57;

    if ((v58 & 1) == 0)
    {
      goto LABEL_26;
    }

LABEL_11:
    v47 = v0[32];
    v48 = v0[18];
    v49 = sub_26CD39C8C();
    v51 = v71(v50, 1, v48);
    v52 = v0[16];
    if (v51)
    {

LABEL_22:
      v49(v0 + 2, 0);
      v8(v0[30], v0[32], v0[27]);
      v64 = [objc_opt_self() defaultSession];
      v65 = [v64 configuration];
      v0[47] = v65;

      v66 = swift_task_alloc();
      v0[48] = v66;
      *v66 = v0;
      v66[1] = sub_26CD20AEC;
      v67 = v0[30];
      v68 = v0[17];

      return sub_26CD21064(v67, v65);
    }

    v59 = *(v52 + 16);
    if (v59)
    {
      v60 = v0[22];
      v61 = v0[16];
      v62 = sub_26CCDEBD0(*(v52 + 16), 0);
      v63 = sub_26CCE4C98(v73, (v62 + ((*(v60 + 80) + 32) & ~*(v60 + 80))), v59, v61);
      sub_26CC33234();
      if (v63 == v59)
      {
LABEL_21:
        sub_26CD3A00C();

        goto LABEL_22;
      }

      __break(1u);
    }

    goto LABEL_21;
  }

LABEL_26:
  v69 = swift_task_alloc();
  v0[40] = v69;
  *v69 = v0;
  v69[1] = sub_26CD204E0;

  return sub_26CCCA3E8();
}

uint64_t sub_26CD204E0(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *(*v3 + 320);
  v8 = *v3;
  *(*v3 + 328) = v2;

  if (v2)
  {
    v9 = v6[16];

    v10 = sub_26CD20D7C;
  }

  else
  {
    v6[42] = a2;
    v6[43] = a1;
    v10 = sub_26CD2061C;
  }

  return MEMORY[0x2822009F8](v10, 0, 0);
}

uint64_t sub_26CD2061C()
{
  v28 = v0;
  v2 = *(v0 + 336);
  v1 = *(v0 + 344);
  v3 = *(v0 + 304);
  v26 = *(v0 + 312);
  v4 = *(v0 + 256);
  v6 = *(v0 + 184);
  v5 = *(v0 + 192);
  v8 = *(v0 + 168);
  v7 = *(v0 + 176);
  v9 = *(v0 + 144);
  sub_26CD39DFC();

  sub_26CCDEE64(v5, v6);
  (*(v7 + 8))(v5, v8);
  v10 = sub_26CD39C8C();
  v12 = v3(v11, 1, v9);
  v13 = *(v0 + 128);
  if (v12)
  {

    goto LABEL_8;
  }

  v14 = *(v13 + 16);
  if (!v14)
  {
    goto LABEL_6;
  }

  v15 = *(v0 + 176);
  v16 = *(v0 + 128);
  v17 = sub_26CCDEBD0(*(v13 + 16), 0);
  v18 = sub_26CCE4C98(&v27, (v17 + ((*(v15 + 80) + 32) & ~*(v15 + 80))), v14, v16);
  sub_26CC33234();
  if (v18 != v14)
  {
    __break(1u);
LABEL_6:
  }

  sub_26CD3A00C();

LABEL_8:
  v10(v0 + 48, 0);
  v19 = *(v0 + 280);
  (*(v0 + 272))(*(v0 + 248), *(v0 + 256), *(v0 + 216));
  v20 = [objc_opt_self() defaultSession];
  v21 = [v20 configuration];
  *(v0 + 352) = v21;

  v22 = swift_task_alloc();
  *(v0 + 360) = v22;
  *v22 = v0;
  v22[1] = sub_26CD2085C;
  v23 = *(v0 + 248);
  v24 = *(v0 + 136);

  return sub_26CD21064(v23, v21);
}

uint64_t sub_26CD2085C(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v4[10] = v2;
  v4[11] = a1;
  v4[12] = v1;
  v5 = v3[45];
  v6 = *v2;
  v4[46] = v1;

  v7 = v3[44];
  v8 = v3[37];
  (v3[36])(v3[31], v3[27]);

  if (v1)
  {
    v9 = sub_26CD20E74;
  }

  else
  {
    v9 = sub_26CD209EC;
  }

  return MEMORY[0x2822009F8](v9, 0, 0);
}

uint64_t sub_26CD209EC()
{
  v1 = *(v0 + 296);
  v2 = *(v0 + 264);
  v4 = *(v0 + 240);
  v3 = *(v0 + 248);
  v5 = *(v0 + 232);
  v6 = *(v0 + 208);
  v8 = *(v0 + 192);
  v7 = *(v0 + 200);
  v9 = *(v0 + 184);
  v10 = *(v0 + 160);
  v13 = *(v0 + 88);
  (*(v0 + 288))(*(v0 + 256), *(v0 + 216));

  v11 = *(v0 + 8);

  return v11(v13);
}

uint64_t sub_26CD20AEC(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v4[13] = v2;
  v4[14] = a1;
  v4[15] = v1;
  v5 = v3[48];
  v6 = *v2;
  v4[49] = v1;

  v7 = v3[47];
  v8 = v3[37];
  (v3[36])(v3[30], v3[27]);

  if (v1)
  {
    v9 = sub_26CD20F6C;
  }

  else
  {
    v9 = sub_26CD20C7C;
  }

  return MEMORY[0x2822009F8](v9, 0, 0);
}

uint64_t sub_26CD20C7C()
{
  v1 = *(v0 + 296);
  v2 = *(v0 + 264);
  v4 = *(v0 + 240);
  v3 = *(v0 + 248);
  v5 = *(v0 + 232);
  v6 = *(v0 + 208);
  v8 = *(v0 + 192);
  v7 = *(v0 + 200);
  v9 = *(v0 + 184);
  v10 = *(v0 + 160);
  v13 = *(v0 + 112);
  (*(v0 + 288))(*(v0 + 256), *(v0 + 216));

  v11 = *(v0 + 8);

  return v11(v13);
}

uint64_t sub_26CD20D7C()
{
  v1 = *(v0 + 296);
  (*(v0 + 288))(*(v0 + 256), *(v0 + 216));
  v14 = *(v0 + 328);
  v3 = *(v0 + 256);
  v2 = *(v0 + 264);
  v5 = *(v0 + 240);
  v4 = *(v0 + 248);
  v6 = *(v0 + 232);
  v8 = *(v0 + 200);
  v7 = *(v0 + 208);
  v10 = *(v0 + 184);
  v9 = *(v0 + 192);
  v11 = *(v0 + 160);

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_26CD20E74()
{
  v1 = *(v0 + 296);
  (*(v0 + 288))(*(v0 + 256), *(v0 + 216));
  v14 = *(v0 + 368);
  v3 = *(v0 + 256);
  v2 = *(v0 + 264);
  v5 = *(v0 + 240);
  v4 = *(v0 + 248);
  v6 = *(v0 + 232);
  v8 = *(v0 + 200);
  v7 = *(v0 + 208);
  v10 = *(v0 + 184);
  v9 = *(v0 + 192);
  v11 = *(v0 + 160);

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_26CD20F6C()
{
  v1 = *(v0 + 296);
  (*(v0 + 288))(*(v0 + 256), *(v0 + 216));
  v14 = *(v0 + 392);
  v3 = *(v0 + 256);
  v2 = *(v0 + 264);
  v5 = *(v0 + 240);
  v4 = *(v0 + 248);
  v6 = *(v0 + 232);
  v8 = *(v0 + 200);
  v7 = *(v0 + 208);
  v10 = *(v0 + 184);
  v9 = *(v0 + 192);
  v11 = *(v0 + 160);

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_26CD21064(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  return MEMORY[0x2822009F8](sub_26CD21088, 0, 0);
}

uint64_t sub_26CD21088()
{
  v1 = *(v0 + 40);
  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  v3 = *(v0 + 24);
  *(v2 + 16) = v1;
  *(v2 + 24) = v3;
  v4 = *(MEMORY[0x277D85A40] + 4);
  v5 = swift_task_alloc();
  *(v0 + 56) = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BDA78, &qword_26CD48350);
  *v5 = v0;
  v5[1] = sub_26CD21198;

  return MEMORY[0x2822008A0](v0 + 16, 0, 0, 0xD000000000000031, 0x800000026CD52F50, sub_26CD22840, v2, v6);
}

uint64_t sub_26CD21198()
{
  v2 = *v1;
  v3 = *(*v1 + 56);
  v7 = *v1;
  *(*v1 + 64) = v0;

  if (v0)
  {
    v4 = sub_26CD214B4;
  }

  else
  {
    v5 = *(v2 + 48);

    v4 = sub_26CD212B4;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_26CD212B4()
{
  if (v0[2])
  {
    v1 = v0[1];

    return v1();
  }

  else
  {
    if (qword_280BBB6B8 != -1)
    {
      swift_once();
    }

    v3 = v0[3];
    sub_26CD3AC6C();

    v4 = sub_26CD39C2C();
    MEMORY[0x26D6AD060](v4);

    MEMORY[0x26D6AD060](46, 0xE100000000000000);
    sub_26CD3A99C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_26CD3C1E0;
    *(v5 + 56) = MEMORY[0x277D837D0];
    *(v5 + 64) = sub_26CC19E10();
    *(v5 + 32) = 0xD000000000000013;
    *(v5 + 40) = 0x800000026CD52F90;
    sub_26CD3A3DC();

    sub_26CD044E0();
    swift_allocError();
    *v6 = 5;
    swift_willThrow();
    v7 = v0[1];

    return v7();
  }
}

uint64_t sub_26CD214B4()
{
  v1 = v0[6];

  v2 = v0[8];
  v3 = v0[1];

  return v3();
}

void sub_26CD21518()
{
  v1 = sub_26CD39D0C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v0 + OBJC_IVAR____TtC13TVAppServices17AMSRequestHandler_sessionTask);
  if (v6)
  {
    v7 = v6;
    if ([v7 state] == 2)
    {
      if (qword_280BBB6B8 != -1)
      {
        swift_once();
      }

      v20 = 0;
      v21 = 0xE000000000000000;
      sub_26CD3AC6C();

      v20 = 0xD00000000000001BLL;
      v21 = 0x800000026CD52F10;
      (*(v2 + 16))(v5, v0 + OBJC_IVAR____TtC13TVAppServices17AMSRequestHandler_request, v1);
      v8 = sub_26CD39C2C();
      v10 = v9;
      (*(v2 + 8))(v5, v1);
      MEMORY[0x26D6AD060](v8, v10);

      MEMORY[0x26D6AD060](46, 0xE100000000000000);
      v11 = v20;
      v12 = v21;
      sub_26CD3A99C();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
      v13 = swift_allocObject();
      *(v13 + 16) = xmmword_26CD3C1E0;
      *(v13 + 56) = MEMORY[0x277D837D0];
      *(v13 + 64) = sub_26CC19E10();
      *(v13 + 32) = v11;
      *(v13 + 40) = v12;
      sub_26CD3A3DC();
    }

    else
    {
      if (qword_280BBB6B8 != -1)
      {
        swift_once();
      }

      v20 = 0;
      v21 = 0xE000000000000000;
      sub_26CD3AC6C();

      v20 = 0xD000000000000013;
      v21 = 0x800000026CD52EF0;
      (*(v2 + 16))(v5, v0 + OBJC_IVAR____TtC13TVAppServices17AMSRequestHandler_request, v1);
      v14 = sub_26CD39C2C();
      v16 = v15;
      (*(v2 + 8))(v5, v1);
      MEMORY[0x26D6AD060](v14, v16);

      v17 = v20;
      v18 = v21;
      sub_26CD3A99C();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
      v19 = swift_allocObject();
      *(v19 + 16) = xmmword_26CD3C1E0;
      *(v19 + 56) = MEMORY[0x277D837D0];
      *(v19 + 64) = sub_26CC19E10();
      *(v19 + 32) = v17;
      *(v19 + 40) = v18;
      sub_26CD3A3DC();

      [v7 cancel];
    }
  }
}

uint64_t sub_26CD218D0()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v1 = OBJC_IVAR____TtC13TVAppServices17AMSRequestHandler_request;
  v2 = sub_26CD39D0C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for AMSRequestHandler()
{
  result = qword_280BBACB8;
  if (!qword_280BBACB8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26CD219E8()
{
  result = sub_26CD39D0C();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_26CD21A9C@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC13TVAppServices17AMSRequestHandler_request;
  v4 = sub_26CD39D0C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_26CD21B18()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_26CC30618;

  return sub_26CD1FBB4();
}

uint64_t sub_26CD21BA4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BDA88, &qword_26CD48358);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v15 - v10;
  (*(v8 + 16))(&v15 - v10, a1, v7);
  v12 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v13 = swift_allocObject();
  (*(v8 + 32))(v13 + v12, v11, v7);
  sub_26CD21D88(a3, a4, sub_26CD2284C, v13);
}

uint64_t sub_26CD21D04(void *a1, id a2)
{
  if (a2)
  {
    v2 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BDA88, &qword_26CD48358);
    return sub_26CD3A81C();
  }

  else
  {
    v4 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BDA88, &qword_26CD48358);
    return sub_26CD3A82C();
  }
}

void sub_26CD21D88(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v21 = a3;
  v22 = a4;
  v6 = sub_26CD39D0C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *MEMORY[0x277CEE160];
  v11 = [objc_opt_self() ams_sharedAccountStore];
  v12 = [v11 ams:v10 activeiTunesAccountForMediaType:?];

  v13 = swift_allocObject();
  swift_weakInit();
  (*(v7 + 16))(v9, a1, v6);
  v14 = (*(v7 + 80) + 24) & ~*(v7 + 80);
  v15 = (v8 + v14 + 7) & 0xFFFFFFFFFFFFFFF8;
  v16 = swift_allocObject();
  *(v16 + 16) = v13;
  (*(v7 + 32))(v16 + v14, v9, v6);
  *(v16 + v15) = a2;
  v17 = (v16 + ((v15 + 15) & 0xFFFFFFFFFFFFFFF8));
  v18 = v22;
  *v17 = v21;
  v17[1] = v18;
  aBlock[4] = sub_26CD228D8;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_26CD22A98;
  aBlock[3] = &block_descriptor_14;
  v19 = _Block_copy(aBlock);
  v20 = a2;

  [v12 addFinishBlock_];
  _Block_release(v19);
}

void sub_26CD21FEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  v38 = a1;
  v11 = sub_26CD39D0C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v16 = Strong;
    v35 = a6;
    v36 = a5;
    v37 = a7;
    v17 = OBJC_IVAR____TtC13TVAppServices17AMSRequestHandler_requestEncoder;
    [*(Strong + OBJC_IVAR____TtC13TVAppServices17AMSRequestHandler_requestEncoder) setUrlKnownToBeTrusted_];
    sub_26CC19A84(v16 + 16, &aBlock);
    v19 = v42;
    v18 = v43;
    __swift_project_boxed_opaque_existential_1(&aBlock, v42);
    LOBYTE(v18) = (*(v18 + 3))(v19, v18);
    __swift_destroy_boxed_opaque_existential_1(&aBlock);
    if ((v18 & 1) == 0)
    {
      [*(v16 + v17) setAccount_];
    }

    v20 = *(v16 + v17);
    v21 = sub_26CD39C4C();
    v22 = [v20 requestByEncodingRequest:v21 parameters:0];

    (*(v12 + 16))(&v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), a4, v11);
    v23 = (*(v12 + 80) + 48) & ~*(v12 + 80);
    v24 = swift_allocObject();
    v25 = v35;
    v26 = v36;
    *(v24 + 2) = v16;
    *(v24 + 3) = v26;
    v27 = v37;
    *(v24 + 4) = v25;
    *(v24 + 5) = v27;
    (*(v12 + 32))(&v24[v23], v14, v11);
    v43 = sub_26CD22998;
    v44 = v24;
    aBlock = MEMORY[0x277D85DD0];
    v40 = 1107296256;
    v41 = sub_26CD22A98;
    v42 = &block_descriptor_39;
    v28 = _Block_copy(&aBlock);

    v29 = v26;

    [v22 addFinishBlock_];
    _Block_release(v28);
  }

  else
  {
    if (qword_280BBB6B8 != -1)
    {
      swift_once();
    }

    aBlock = 0;
    v40 = 0xE000000000000000;
    sub_26CD3AC6C();

    aBlock = 0xD000000000000021;
    v40 = 0x800000026CD52FB0;
    v30 = sub_26CD39C2C();
    MEMORY[0x26D6AD060](v30);

    MEMORY[0x26D6AD060](46, 0xE100000000000000);
    v31 = aBlock;
    v32 = v40;
    sub_26CD3A99C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
    v33 = swift_allocObject();
    *(v33 + 16) = xmmword_26CD3C1E0;
    *(v33 + 56) = MEMORY[0x277D837D0];
    *(v33 + 64) = sub_26CC19E10();
    *(v33 + 32) = v31;
    *(v33 + 40) = v32;
    sub_26CD3A3DC();
  }
}

uint64_t sub_26CD223E8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = sub_26CD39D0C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    sub_26CD39C6C();
    v15 = swift_allocObject();
    *(v15 + 16) = a5;
    *(v15 + 24) = a6;
    v16 = a1;

    sub_26CD22688(v14, a4, sub_26CD087E4, v15);

    return (*(v11 + 8))(v14, v10);
  }

  else
  {
    if (qword_280BBB6B8 != -1)
    {
      swift_once();
    }

    v22 = 0;
    v23 = 0xE000000000000000;
    sub_26CD3AC6C();

    v22 = 0xD00000000000001BLL;
    v23 = 0x800000026CD52FE0;
    v18 = sub_26CD39C2C();
    MEMORY[0x26D6AD060](v18);

    MEMORY[0x26D6AD060](46, 0xE100000000000000);
    v19 = v22;
    v20 = v23;
    sub_26CD3A99C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_26CD3C1E0;
    *(v21 + 56) = MEMORY[0x277D837D0];
    *(v21 + 64) = sub_26CC19E10();
    *(v21 + 32) = v19;
    *(v21 + 40) = v20;
    sub_26CD3A3DC();
  }
}

void sub_26CD22688(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v8 = [objc_allocWithZone(MEMORY[0x277CEE6F0]) initWithConfiguration_];
  v9 = sub_26CD39C4C();
  v17 = sub_26CD22A20;
  v18 = v5;
  v13 = MEMORY[0x277D85DD0];
  v14 = 1107296256;
  v15 = sub_26CD1FB4C;
  v16 = &block_descriptor_45_0;
  v10 = _Block_copy(&v13);

  v11 = swift_allocObject();
  *(v11 + 16) = a3;
  *(v11 + 24) = a4;
  v17 = sub_26CD22A88;
  v18 = v11;
  v13 = MEMORY[0x277D85DD0];
  v14 = 1107296256;
  v15 = sub_26CD22A98;
  v16 = &block_descriptor_51;
  v12 = _Block_copy(&v13);

  [v8 createDataTaskWithRequest:v9 activity:0 dataTaskCreationCompletionHandler:v10 requestCompletionHandler:v12];
  _Block_release(v12);
  _Block_release(v10);
}

uint64_t sub_26CD2284C(void *a1, void *a2)
{
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BDA88, &qword_26CD48358) - 8) + 80);

  return sub_26CD21D04(a1, a2);
}

void sub_26CD228D8(uint64_t a1, uint64_t a2)
{
  v5 = *(sub_26CD39D0C() - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v2 + 16);
  v9 = *(v2 + v7);
  v10 = (v2 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];

  sub_26CD21FEC(a1, a2, v8, v2 + v6, v9, v11, v12);
}

uint64_t sub_26CD22998(void *a1, uint64_t a2)
{
  v5 = *(*(sub_26CD39D0C() - 8) + 80);
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = v2[5];

  return sub_26CD223E8(a1, a2, v6, v7, v8, v9);
}

id sub_26CD22A20(void *a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC13TVAppServices17AMSRequestHandler_sessionTask);
  *(v1 + OBJC_IVAR____TtC13TVAppServices17AMSRequestHandler_sessionTask) = a1;
  v3 = a1;

  return [v3 resume];
}

uint64_t sub_26CD22A9C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_26CD22AE4(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_26CD22B40()
{
  result = sub_26CD1403C();
  if (result)
  {
    v1 = result;
    if (*(result + 16) && (v2 = sub_26CC181C4(0x736574756F72, 0xE600000000000000), (v3 & 1) != 0))
    {
      sub_26CC168C0(*(v1 + 56) + 32 * v2, v5);

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC30, &qword_26CD46430);
      if (swift_dynamicCast())
      {
        return v4;
      }

      else
      {
        return 0;
      }
    }

    else
    {

      return 0;
    }
  }

  return result;
}

uint64_t sub_26CD22BF8()
{
  result = sub_26CD1403C();
  if (result)
  {
    v1 = result;
    if (*(result + 16) && (v2 = sub_26CC181C4(0xD000000000000011, 0x800000026CD51150), (v3 & 1) != 0))
    {
      sub_26CC168C0(*(v1 + 56) + 32 * v2, v5);

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC30, &qword_26CD46430);
      if (swift_dynamicCast())
      {
        return v4;
      }

      else
      {
        return 0;
      }
    }

    else
    {

      return 0;
    }
  }

  return result;
}

uint64_t sub_26CD22CB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *v3;
  v7 = *v3 + 64;
  v8 = 1 << *(*v3 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(*v3 + 64);
  v11 = (v8 + 63) >> 6;

  v56 = 0;
  v58 = 0;
  v59 = 0;
  v60 = 0;
  v13 = 0;
  v14 = 0uLL;
  v15 = 0uLL;
  v66 = v7;
  v67 = v11;
  v68 = v6;
  v70 = a2;
LABEL_4:
  v61 = v15;
  v63 = v14;
  v16 = v13;
  while (v10)
  {
    v13 = v16;
LABEL_10:
    v17 = __clz(__rbit64(v10)) | (v13 << 6);
    v18 = (v6[6] + 16 * v17);
    v19 = v18[1];
    v20 = v6[7] + 56 * v17;
    v21 = *(v20 + 16);
    v22 = *(v20 + 24);
    v23 = v21 == a1 && v22 == a2;
    v65 = *v18;
    if (v23 || (sub_26CD3AFDC() & 1) != 0)
    {

LABEL_41:
      sub_26CD23DE8(v63, *(&v63 + 1));

      if (v6[2])
      {
        v49 = sub_26CC181C4(v65, v19);
        v51 = v50;

        v46 = a3;
        if (v51)
        {
          v52 = v6[7] + 56 * v49;
          v54 = *(v52 + 16);
          v53 = *(v52 + 32);
          v55 = *v52;
          v76 = *(v52 + 48);
          v74 = v54;
          v75 = v53;
          v73 = v55;
          sub_26CD23E38(&v73, &v71);

          v43 = v73;
          v44 = v74;
          v45 = *(&v75 + 1);
          v48 = v75;
          v47 = v76;
        }

        else
        {

          v48 = 0;
          v45 = 0;
          v47 = 0;
          v43 = 0uLL;
          v44 = 0uLL;
        }
      }

      else
      {

        v48 = 0;
        v45 = 0;
        v47 = 0;
        v43 = 0uLL;
        v44 = 0uLL;
        v46 = a3;
      }

LABEL_38:
      *v46 = v43;
      *(v46 + 16) = v44;
      *(v46 + 32) = v48;
      *(v46 + 40) = v45;
      *(v46 + 48) = v47;
      return result;
    }

    *&v73 = 47;
    *(&v73 + 1) = 0xE100000000000000;

    MEMORY[0x26D6AD060](a1, a2);
    if (v21 == v73 && v22 == *(&v73 + 1))
    {

      goto LABEL_41;
    }

    v25 = sub_26CD3AFDC();

    if (v25)
    {
      goto LABEL_41;
    }

    *&v73 = a1;
    *(&v73 + 1) = v70;
    v71 = 0x2F33762F7374752FLL;
    v72 = 0xE800000000000000;
    sub_26CC16DCC();
    if (sub_26CD3AB2C())
    {

      v26 = a1;
      v27 = v70;
    }

    else
    {
      *&v73 = 0x2F33762F7374752FLL;
      *(&v73 + 1) = 0xE800000000000000;
      MEMORY[0x26D6AD060](a1, v70);
      v27 = *(&v73 + 1);
      v26 = v73;
    }

    v10 &= v10 - 1;
    *&v73 = v26;
    *(&v73 + 1) = v27;
    v71 = 47;
    v72 = 0xE100000000000000;
    v28 = sub_26CD3AAFC();

    v69 = sub_26CCF3078(v28);

    *&v73 = v21;
    *(&v73 + 1) = v22;
    v71 = 47;
    v72 = 0xE100000000000000;
    v29 = sub_26CD3AAFC();

    v30 = sub_26CCF3078(v29);

    *&v73 = a1;
    *(&v73 + 1) = v70;
    v71 = 47;
    v72 = 0xE100000000000000;
    v31 = sub_26CD3AAFC();
    if (v31[2])
    {
      v32 = v31[4];
      v33 = v31[5];

      LOBYTE(v32) = sub_26CC2016C(v32, v33, v30);

      v7 = v66;
      v11 = v67;
      if (v32)
      {
        a2 = v70;
        if (*(v30 + 16) == *(v69 + 16))
        {

          v34 = *(sub_26CCF2408(v69, v30) + 16);

          if (v56 < v34)
          {
            sub_26CD23DE8(v63, *(&v63 + 1));
            if (v68[2])
            {
              v35 = sub_26CC181C4(v65, v19);
              v37 = v36;

              if (v37)
              {
                v38 = v68[7] + 56 * v35;
                v39 = *(v38 + 48);
                v41 = *(v38 + 16);
                v40 = *(v38 + 32);
                v73 = *v38;
                v74 = v41;
                v75 = v40;
                v60 = v39;
                v76 = v39;
                v62 = v41;
                v64 = v73;
                v58 = *(&v40 + 1);
                v59 = v40;
                sub_26CD23E38(&v73, &v71);
              }

              else
              {
                v58 = 0;
                v59 = 0;
                v60 = 0;
                v62 = 0u;
                v64 = 0u;
              }

              a2 = v70;
            }

            else
            {

              v58 = 0;
              v59 = 0;
              v60 = 0;
              v62 = 0u;
              v64 = 0u;
            }

            v42 = sub_26CCF2408(v69, v30);

            v56 = *(v42 + 16);

            v6 = v68;
            v15 = v62;
            v14 = v64;
            goto LABEL_4;
          }
        }

        v16 = v13;
        v6 = v68;
      }

      else
      {

        v16 = v13;
        v6 = v68;
        a2 = v70;
      }
    }

    else
    {

      v16 = v13;
      v11 = v67;
      v6 = v68;
      a2 = v70;
      v7 = v66;
    }
  }

  while (1)
  {
    v13 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v13 >= v11)
    {

      v44 = v61;
      v43 = v63;
      v46 = a3;
      v45 = v58;
      v47 = v60;
      v48 = v59;
      goto LABEL_38;
    }

    v10 = *(v7 + 8 * v13);
    ++v16;
    if (v10)
    {
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}