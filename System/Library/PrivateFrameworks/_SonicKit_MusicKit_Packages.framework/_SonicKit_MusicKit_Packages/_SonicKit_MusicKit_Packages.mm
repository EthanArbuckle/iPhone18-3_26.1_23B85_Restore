double sub_2753ED3B8(double a1, double a2, double a3, double a4)
{
  v4 = a2 - a1;
  v5 = a4 - a3 <= 0.0 || v4 <= 0.0;
  result = v4 / (a4 - a3);
  if (v5)
  {
    return 1.0;
  }

  return result;
}

double sub_2753ED3DC(double a1, double a2, double a3, double a4)
{
  v4 = a4 - a3;
  v5 = a2 - a1;
  v6 = v5 <= 0.0 || v4 <= 0.0;
  result = v4 / v5;
  if (v6)
  {
    return 1.0;
  }

  return result;
}

void sub_2753ED400(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_2753ED6D8(a1);
  if (v4 < 0.0)
  {
    __break(1u);
    goto LABEL_9;
  }

  v5 = v4;
  v6 = sub_2753ED6D8(a1);
  if (v6 < 0.0)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v7 = v6;
  if (v7 < fmax(v7 - sub_2753ED89C(a1), 0.0))
  {
LABEL_10:
    __break(1u);
    return;
  }

  if (v7 >= v5)
  {
    v8 = v7;
  }

  else
  {
    v8 = v5;
  }

  *a2 = 0;
  *(a2 + 8) = v8;
}

void sub_2753ED490(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>, double a5@<D2>, double a6@<D3>)
{
  v12 = sub_2753ED724(a1, a3, a4);
  v13 = sub_2753ED860(a1, a3, a4, a5, a6);
  if (v12 > v13)
  {
    v14 = v12;
  }

  else
  {
    v14 = v13;
  }

  if (v14 < 0.0)
  {
    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  v15 = sub_2753ED724(a1, a3, a4);
  v16 = sub_2753ED860(a1, a3, a4, a5, a6);
  if (v15 > v16)
  {
    v16 = v15;
  }

  if (v16 < 0.0)
  {
    goto LABEL_12;
  }

  if (v16 < v14)
  {
    v16 = v14;
  }

  *a2 = 0;
  *(a2 + 8) = v16;
}

void sub_2753ED568(uint64_t a1@<X0>, double *a2@<X8>)
{
  v4 = sub_2753ED6D8(a1);
  if (v4 < 0.0)
  {
    __break(1u);
    goto LABEL_6;
  }

  v5 = v4;
  v6 = sub_2753ED6D8(a1);
  if (v6 < 0.0)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v7 = v6;
  v8 = fmax(v6 - sub_2753ED89C(a1), 0.0);
  if (v7 >= v8)
  {
    *a2 = v8 + (v5 - v8) * 0.5;
    return;
  }

LABEL_7:
  __break(1u);
}

void sub_2753ED5FC(uint64_t a1@<X0>, double *a2@<X8>, double a3@<D0>, double a4@<D1>, double a5@<D2>, double a6@<D3>)
{
  v12 = sub_2753ED724(a1, a3, a4);
  v13 = sub_2753ED860(a1, a3, a4, a5, a6);
  if (v12 > v13)
  {
    v14 = v12;
  }

  else
  {
    v14 = v13;
  }

  if (v14 < 0.0)
  {
    __break(1u);
  }

  else
  {
    v15 = sub_2753ED724(a1, a3, a4);
    v16 = sub_2753ED860(a1, a3, a4, a5, a6);
    if (v15 > v16)
    {
      v16 = v15;
    }

    if (v16 >= 0.0)
    {
      *a2 = v14 * 0.5 + 0.0;
      return;
    }
  }

  __break(1u);
}

double sub_2753ED6D8(uint64_t a1)
{
  v1 = *(a1 + 16);
  *&v14[3] = *a1;
  *&v14[5] = v1;
  v15 = *(a1 + 32);
  sub_275409C88();
  OUTLINED_FUNCTION_2(v2, v3, v4, v5, v6, v7, v8, v9, v11);
  sub_275409C88();
  return sub_2753ED754(v14, v12, v13);
}

double sub_2753ED754(__int128 *a1, double a2, double a3)
{
  v5 = *a1;
  v6 = *(a1 + 1);
  if (*a1 <= a2 && (v7 = *(a1 + 56), v7 < 0xFC))
  {
    v9 = *(a1 + 40);
    v16 = *(a1 + 24);
    v17 = v9;
    v10 = a1[1];
    v20 = *a1;
    v21 = v10;
    v22[0] = a1[2];
    *(v22 + 9) = *(a1 + 41);
    v19 = a2;
    v18 = v7;
    sub_27542D92C(&v19, &v16, &v23);
    v8 = v24;
  }

  else
  {
    v8 = v6 + a2 - v5;
  }

  if (v5 <= a3 && (v11 = *(a1 + 56), v11 < 0xFC))
  {
    v13 = *(a1 + 40);
    v16 = *(a1 + 24);
    v17 = v13;
    v14 = a1[1];
    v20 = *a1;
    v21 = v14;
    v22[0] = a1[2];
    *(v22 + 9) = *(a1 + 41);
    v19 = a3;
    v18 = v11;
    sub_27542D92C(&v19, &v16, &v23);
    v12 = v24;
  }

  else
  {
    v12 = v6 + a3 - v5;
  }

  return v12 - v8;
}

double sub_2753ED89C(uint64_t a1)
{
  *&v13[3] = *(a1 + 40);
  *&v13[5] = *(a1 + 56);
  v14 = *(a1 + 72);
  sub_275409C88();
  OUTLINED_FUNCTION_2(v1, v2, v3, v4, v5, v6, v7, v8, v10);
  sub_275409C88();
  return sub_2753ED754(v13, v11, v12);
}

void sub_2753ED910(void *a1)
{
  v1 = OUTLINED_FUNCTION_0(a1);
  v9 = OUTLINED_FUNCTION_1(v1, v2, v3, v4, v5, v6, v7, v8, v11);
  sub_2753ED400(v9, v10);
}

void sub_2753ED940(void *a1)
{
  v1 = OUTLINED_FUNCTION_0(a1);
  v9 = OUTLINED_FUNCTION_1(v1, v2, v3, v4, v5, v6, v7, v8, v11);
  sub_2753ED568(v9, v10);
}

void sub_2753ED970(double *a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  sub_2753ED37C(a1, *v1, *(v1 + 8));
}

double sub_2753ED97C@<D0>(double *a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 1);
  sub_2753ED3A8(a1, v1[2], v1[3]);
  return result;
}

void sub_2753ED9A0(void *a1)
{
  v2 = OUTLINED_FUNCTION_0(a1);
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = v1[3];
  v14 = OUTLINED_FUNCTION_1(v2, v7, v8, v9, v10, v11, v12, v13, v20);
  sub_2753ED490(v14, v15, v16, v17, v18, v19);
}

void sub_2753ED9D8(void *a1)
{
  v2 = OUTLINED_FUNCTION_0(a1);
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = v1[3];
  v14 = OUTLINED_FUNCTION_1(v2, v7, v8, v9, v10, v11, v12, v13, v20);
  sub_2753ED5FC(v14, v15, v16, v17, v18, v19);
}

void *OUTLINED_FUNCTION_0(void *__src, ...)
{
  va_start(va, __src);

  return memcpy(va, __src, 0x49uLL);
}

double OUTLINED_FUNCTION_3@<D0>(char a1@<W8>, double a2@<D0>, double a3@<D1>, __int128 a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10)
{
  a10 = a1;
  *&a4 = a2;
  *(&a4 + 1) = a2;
  a5 = 0;

  return sub_2753ED754(&a4, a2, a3);
}

uint64_t sub_2753EDA84(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 170))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 80);
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

uint64_t sub_2753EDAC4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 168) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 170) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 170) = 0;
    }

    if (a2)
    {
      *(result + 80) = -a2;
    }
  }

  return result;
}

void sub_2753EDB44()
{
  sub_275409C88();
  sub_275409C88();
  sub_2753EDBA0();
}

double sub_2753EDBA0()
{
  sub_275409C88();
  sub_275409C88();
  return (v1 - v2) / sub_2753EDDA4();
}

void sub_2753EDC00()
{
  v0 = sub_2753EDBA0();
  sub_275409C88();
  sub_275409C88();
  sub_275409C88();
  v1 = v7 - sub_2753EDBA0();
  sub_275409C88();
  v2 = v7;
  if (v7 < v1)
  {
    __break(1u);
  }

  else
  {
    v3 = v12 - v6 <= 0.0 || v0 <= 0.0;
    v4 = v0 / (v12 - v6);
    if (v3)
    {
      v4 = 1.0;
    }

    v6 = v4;
    v7 = 1.0;
    v8 = v1;
    v9 = v2;
    v10 = 0x80;
    sub_275409C88();
    v5 = v11;
    sub_275453DA8(&v5);
  }
}

void sub_2753EDCE4(void *a1)
{
  OUTLINED_FUNCTION_0(a1);
  v2 = sub_2753ED6D8(&v3);
  if (v2 < 0.0)
  {
    __break(1u);
  }

  else
  {
    *v1 = 0;
    *(v1 + 8) = v2;
  }
}

void sub_2753EDD28(void *a1)
{
  OUTLINED_FUNCTION_0(a1);
  v2 = sub_2753ED6D8(v5);
  if (v2 < 0.0)
  {
    __break(1u);
  }

  else
  {
    v3 = v2;
    v4 = fmax(v2 - sub_2753ED89C(v5), 0.0);
    if (v3 >= v4)
    {
      *v1 = v4;
      v1[1] = v3;
      return;
    }
  }

  __break(1u);
}

double sub_2753EDDA4()
{
  v1 = v0;
  sub_275409D20();
  v2 = sub_2753EDE30();
  sub_2753EDF40(v5);
  sub_275409D20();
  v3 = sub_2753EDE30();
  sub_2753EDF40(v5);
  return dbl_275474458[*(v1 + 169)] * v3 / v2;
}

uint64_t sub_2753EDE30()
{
  v1 = v0[3];
  v2 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v1);
  OUTLINED_FUNCTION_0_0(v2);
  v4 = v3(v1, v2);
  v5 = v0[8];
  v6 = v0[9];
  __swift_project_boxed_opaque_existential_1(v0 + 5, v5);
  OUTLINED_FUNCTION_0_0(v6);
  result = v7(v5, v6);
  if (result < v4)
  {
    __break(1u);
    goto LABEL_6;
  }

  v9 = result;
  v10 = v0[3];
  v11 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v10);
  OUTLINED_FUNCTION_0_0(v11);
  v13 = v12(v10, v11);
  v14 = v0[8];
  v15 = v0[9];
  __swift_project_boxed_opaque_existential_1(v0 + 5, v14);
  OUTLINED_FUNCTION_0_0(v15);
  result = v16(v14, v15);
  if (result < v13)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  result = v9 - v13;
  if (__OFSUB__(v9, v13))
  {
LABEL_7:
    __break(1u);
  }

  return result;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_2753EDFF4(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2753EE014(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 32) = v3;
  return result;
}

__n128 sub_2753EE050@<Q0>(__n128 *a1@<X8>)
{
  result = *v1;
  *a1 = *v1;
  return result;
}

__n128 sub_2753EE05C@<Q0>(__n128 *a1@<X8>)
{
  result = v1[1];
  *a1 = result;
  return result;
}

void sub_2753EE068(void *__src@<X0>, uint64_t a2@<X8>)
{
  memcpy(v18, __src, sizeof(v18));
  v4 = *v2;
  v5 = v2[1];
  v6 = v2[2];
  v7 = v2[3];
  v8 = OUTLINED_FUNCTION_0_1();
  v11 = sub_2753ED724(v9, v8, v10);
  v12 = OUTLINED_FUNCTION_0_1();
  v17 = sub_2753ED860(v13, v12, v14, v15, v16);
  if (v11 > v17)
  {
    v17 = v11;
  }

  if (v17 < 0.0)
  {
    __break(1u);
  }

  else
  {
    *a2 = 0;
    *(a2 + 8) = v17;
  }
}

uint64_t sub_2753EE13C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_2753EE5B4(a1 + 112, v197);
  OUTLINED_FUNCTION_1_0();
  v5 = v3[1];
  v6 = OUTLINED_FUNCTION_0_2();
  v7(v6);
  v179 = *&v185;
  OUTLINED_FUNCTION_1_0();
  v8 = v3[2];
  v9 = OUTLINED_FUNCTION_0_2();
  v10(v9);
  v176 = *&v185;
  OUTLINED_FUNCTION_1_0();
  v11 = v3[3];
  v12 = OUTLINED_FUNCTION_0_2();
  v13(v12);
  OUTLINED_FUNCTION_1_0();
  v14 = v3[4];
  v15 = OUTLINED_FUNCTION_0_2();
  v16(v15);
  v17 = v185;
  v18 = v186;
  OUTLINED_FUNCTION_1_0();
  v19 = v3[5];
  v20 = OUTLINED_FUNCTION_0_2();
  v22 = v21(v20);
  OUTLINED_FUNCTION_1_0();
  v23 = v3[6];
  v24 = OUTLINED_FUNCTION_0_2();
  v26 = v25(v24);
  OUTLINED_FUNCTION_1_0();
  v27 = v3[7];
  v28 = OUTLINED_FUNCTION_0_2();
  v30 = v29(v28);
  OUTLINED_FUNCTION_1_0();
  v31 = v3[8];
  v32 = OUTLINED_FUNCTION_0_2();
  v34 = v33(v32);
  v36 = *a1;
  v35 = *(a1 + 8);
  v37 = *(a1 + 16);
  v38 = *(a1 + 32);
  v168 = *(a1 + 24);
  v39 = *(a1 + 40);
  v40 = *(a1 + 104);
  sub_2753EE660(*(a1 + 88), &v185, v40, v22, v26);
  if (!v2)
  {
    v42 = v41;
    HIDWORD(v151) = v37;
    v155 = v35;
    v44 = v176;
    v43 = v179;
    v45 = *(a1 + 96);
    v196[0] = v17;
    v196[1] = v18;
    sub_2753EE660(v45, v196, v40, v30, v34);
    v47 = v46;
    v120 = v42;
    sub_2753EEEC4(v42, &v185);
    v162 = *&v186;
    v165 = *&v185;
    v48 = v187;
    v159 = v188;
    v200 = v189;
    sub_2753EEEC4(v47, &v185);
    v49 = *&v185;
    v98 = *&v185;
    HIDWORD(v131) = v39;
    v50 = *&v186;
    v124 = v36;
    v52 = v187;
    v51 = v188;
    v148 = v187;
    LOBYTE(v42) = v189;
    HIDWORD(v101) = v189;
    v135 = *&v186;
    v138 = v198;
    v110 = v199;
    __swift_project_boxed_opaque_existential_1(v197, v198);
    OUTLINED_FUNCTION_2_0();
    v145 = v48;
    v187 = v48;
    v188 = v159;
    v189 = v200;
    v190 = v49;
    v191 = v50;
    v192 = v52;
    v193 = v51;
    v53 = v51;
    v194 = v42;
    (*(v110 + 72))(&v195, &v185, v138);
    v111 = v195;
    v54 = v199;
    __swift_project_boxed_opaque_existential_1(v197, v198);
    OUTLINED_FUNCTION_2_0();
    v187 = v48;
    v188 = v159;
    LOBYTE(v50) = v200;
    v189 = v200;
    v55 = v98;
    v190 = v98;
    v191 = v135;
    v192 = v148;
    v193 = v53;
    v56 = v53;
    LOBYTE(v53) = BYTE4(v101);
    v194 = BYTE4(v101);
    v57 = *(v54 + 80);
    v66 = OUTLINED_FUNCTION_3_0(v58, v59, v60, v61, v62, v63, v64, v65, v98, v101, v104, v108, v111, *(&v111 + 1), v47, v120, v124, v38, v131, v135, &v195 + 8, v143, v145, v148, v151, v155, v159, v162, v165, v168, a2, v176, v179, v182, SLOBYTE(v185));
    v67(v66);
    *&v68 = v195;
    *(&v68 + 1) = *v139;
    v105 = v68;
    v69 = v199;
    __swift_project_boxed_opaque_existential_1(v197, v198);
    OUTLINED_FUNCTION_2_0();
    v187 = v146;
    v188 = v160;
    v189 = v50;
    v70 = v136;
    v190 = v55;
    v191 = v136;
    v71 = v149;
    v192 = v149;
    v193 = v56;
    v194 = v53;
    v72 = *(v69 + 88);
    v81 = OUTLINED_FUNCTION_3_0(v73, v74, v75, v76, v77, v78, v79, v80, v99, v102, v105, *(&v105 + 1), v112, v115, v117, v121, v125, v128, v132, v136, v139, v144, v146, v149, v152, v156, v160, v163, v166, v169, v173, v177, v180, v183, SLOBYTE(v185));
    v82(v81);
    *&v83 = v195;
    *(&v83 + 1) = *v140;
    v141 = v83;
    v84 = v199;
    __swift_project_boxed_opaque_existential_1(v197, v198);
    OUTLINED_FUNCTION_2_0();
    v187 = v147;
    v188 = v161;
    v189 = v200;
    v190 = v55;
    v191 = v70;
    v192 = v71;
    v193 = v56;
    v194 = v53;
    v85 = *(v84 + 96);
    v94 = OUTLINED_FUNCTION_3_0(v86, v87, v88, v89, v90, v91, v92, v93, v100, v103, v106, v109, v113, v116, v118, v122, v126, v129, v133, v137, v141, *(&v141 + 1), v147, v150, v153, v157, v161, v164, v167, v170, v174, v178, v181, v184, SLOBYTE(v185));
    v95(v94);
    v96 = v195;
    *v175 = v114;
    *(v175 + 16) = v107;
    *(v175 + 32) = v96;
    *(v175 + 40) = v123;
    *(v175 + 48) = v43;
    *(v175 + 56) = v127;
    *(v175 + 64) = v158;
    *(v175 + 72) = v154;
    *(v175 + 80) = v114;
    *(v175 + 96) = v142;
    *(v175 + 112) = v96;
    *(v175 + 120) = v119;
    *(v175 + 128) = v44;
    *(v175 + 136) = v171;
    *(v175 + 144) = v130;
    *(v175 + 152) = v134;
  }

  return __swift_destroy_boxed_opaque_existential_1(v197);
}

uint64_t sub_2753EE5B4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  sub_2753EF3C8(a1, v8);
  if (v9)
  {
    result = swift_allocObject();
    v4 = result;
    v5 = *&v8[16];
    *(result + 16) = *v8;
    *(result + 32) = v5;
    v6 = &off_288411978;
    v7 = &_s30UnstructuredScheduleCalculatorVN;
  }

  else
  {
    v4 = swift_allocObject();
    result = memcpy((v4 + 16), v8, 0xAAuLL);
    v6 = &off_288411890;
    v7 = &_s28StructuredScheduleCalculatorVN;
  }

  a2[3] = v7;
  a2[4] = v6;
  *a2 = v4;
  return result;
}

void sub_2753EE660(uint64_t a1, double *a2, uint64_t a3, double a4, double a5)
{
  v5 = a3;
  v6 = 0;
  v8 = *a2;
  v7 = a2[1];
  v104 = a1 + 32;
  v105 = *(a1 + 16);
  v9 = MEMORY[0x277D84F90];
  v103 = v7 - *a2;
  v107 = v7;
  v102 = *a2;
  while (1)
  {
    v108 = v9;
    if (v6 == v105)
    {
      break;
    }

    v10 = v104 + 40 * v6;
    v11 = *(v10 + 32);
    v12 = v8 + *(v10 + 8) + v103 * *v10;
    if (v7 >= v12)
    {
      v13 = v8 + *(v10 + 8) + v103 * *v10;
    }

    else
    {
      v13 = v7;
    }

    if (v12 >= v8)
    {
      v14 = v13;
    }

    else
    {
      v14 = v8;
    }

    v15 = v8 + *(v10 + 24) + v103 * *(v10 + 16);
    if (v7 >= v15)
    {
      v16 = v8 + *(v10 + 24) + v103 * *(v10 + 16);
    }

    else
    {
      v16 = v7;
    }

    if (v15 >= v8)
    {
      v17 = v16;
    }

    else
    {
      v17 = v8;
    }

    if (v17 >= v14)
    {
      v18 = v14;
    }

    else
    {
      v18 = v14 + (v17 - v14) * 0.5;
    }

    if (v17 >= v14)
    {
      v19 = v17;
    }

    else
    {
      v19 = v14 + (v17 - v14) * 0.5;
    }

    v20 = *(v11 + 16);
    v106 = v6;
    if (v20)
    {
      v122 = MEMORY[0x277D84F90];

      sub_27544107C(0, v20, 0);
      v21 = 0;
      v22 = v122;
      v113 = v19 - v18;
      v114 = v19;
      v112 = v20 - 1;
      v23 = 32;
      v115 = v11;
      while (v21 < *(v11 + 16))
      {
        v117 = v23;
        memcpy(__dst, (v11 + v23), sizeof(__dst));
        v118 = *&__dst[72];
        v119 = *&__dst[80];
        v25 = *&__dst[56];
        v24 = *&__dst[64];
        v26 = *__dst;
        v27 = *&__dst[8];
        v28 = *&__dst[24];
        v123 = *&__dst[16];
        v30 = *&__dst[40];
        v31 = *&__dst[32];
        v29 = *&__dst[48];
        sub_2753EF2CC(__dst, v120);
        v32 = qword_2809DAD90;

        if (v32 != -1)
        {
          swift_once();
        }

        v33 = *&qword_2809DC3C8;
        v34 = unk_2809DC3D0;
        v35 = *&qword_2809DC3D8;
        v37 = qword_2809DC3E0;
        v36 = unk_2809DC3E8;
        v38 = qword_2809DC3B8.n128_u64[0] == v26 && unk_2809DC3C0 == v27;
        if (v38 || (sub_27546E9A0()) && (v33 == v123 ? (v39 = v34 == v28) : (v39 = 0), v39 ? (v40 = v35 == v31) : (v40 = 0), v40 && (v37 == v30 ? (v41 = v36 == v29) : (v41 = 0), v41 || (sub_27546E9A0())))
        {

          v26 = qword_2809DC3B8.n128_u64[0];
          v27 = unk_2809DC3C0;
          v28 = unk_2809DC3D0;
          v123 = *&qword_2809DC3C8;
          v31 = *&qword_2809DC3D8;
          v30 = qword_2809DC3E0;
          v29 = unk_2809DC3E8;
          v42 = v18 + v113 * v25 + v24;
          if (v114 >= v42)
          {
            v43 = v18 + v113 * v25 + v24;
          }

          else
          {
            v43 = v114;
          }

          if (v42 >= v18)
          {
            v44 = v43;
          }

          else
          {
            v44 = v18;
          }

          v45 = v18 + v113 * v118 + v119;
          if (v114 >= v45)
          {
            v46 = v18 + v113 * v118 + v119;
          }

          else
          {
            v46 = v114;
          }

          if (v45 >= v18)
          {
            v47 = v46;
          }

          else
          {
            v47 = v18;
          }

          if (v47 >= v44)
          {
            v48 = v44;
          }

          else
          {
            v48 = v44 + (v47 - v44) * 0.5;
          }

          if (v47 >= v44)
          {
            v49 = v47;
          }

          else
          {
            v49 = v44 + (v47 - v44) * 0.5;
          }

          sub_2753EF37C(0, &qword_2809DADB8);
          v50 = swift_allocObject();
          *(v50 + 16) = xmmword_2754744F0;
          *(v50 + 32) = a4;
          *(v50 + 40) = v48;
          *(v50 + 48) = 0x80;
          *(v50 + 56) = a5;
          *(v50 + 64) = v49;
          *(v50 + 72) = 0x80;
        }

        else
        {
          v51 = sub_2754294DC(v5, *&__dst[88], *&__dst[96], *&__dst[104], __dst[112]);
          if (v116)
          {
            goto LABEL_100;
          }

          v52 = v51;
          v53 = sub_2754294DC(v5, *&__dst[120], *&__dst[128], *&__dst[136], __dst[144]);
          v116 = 0;
          v54 = v18 + v113 * v25 + v24;
          if (v114 >= v54)
          {
            v55 = v18 + v113 * v25 + v24;
          }

          else
          {
            v55 = v114;
          }

          if (v54 >= v18)
          {
            v56 = v55;
          }

          else
          {
            v56 = v18;
          }

          v57 = v18 + v113 * v118 + v119;
          if (v114 >= v57)
          {
            v58 = v18 + v113 * v118 + v119;
          }

          else
          {
            v58 = v114;
          }

          if (v57 >= v18)
          {
            v59 = v58;
          }

          else
          {
            v59 = v18;
          }

          if (v59 >= v56)
          {
            v60 = v56;
          }

          else
          {
            v60 = v56 + (v59 - v56) * 0.5;
          }

          if (v59 >= v56)
          {
            v61 = v59;
          }

          else
          {
            v61 = v56 + (v59 - v56) * 0.5;
          }

          v62 = __dst[145];
          sub_2753EF37C(0, &qword_2809DADB8);
          v50 = swift_allocObject();
          *(v50 + 16) = xmmword_2754744F0;
          *(v50 + 32) = v52;
          *(v50 + 40) = v60;
          *(v50 + 48) = v62;
          *(v50 + 56) = v53;
          *(v50 + 64) = v61;
          *(v50 + 72) = v62;
        }

        sub_2753EF328(__dst);
        v122 = v22;
        v64 = *(v22 + 16);
        v63 = *(v22 + 24);
        if (v64 >= v63 >> 1)
        {
          sub_27544107C((v63 > 1), v64 + 1, 1);
          v22 = v122;
        }

        *(v22 + 16) = v64 + 1;
        v65 = v22 + (v64 << 6);
        *(v65 + 32) = v26;
        *(v65 + 40) = v27;
        *(v65 + 48) = v123;
        *(v65 + 56) = v28;
        *(v65 + 64) = v31;
        *(v65 + 72) = v30;
        *(v65 + 80) = v29;
        *(v65 + 88) = v50;
        if (v112 == v21)
        {

          v9 = v108;
          v5 = a3;
          goto LABEL_89;
        }

        v23 = v117 + 152;
        ++v21;
        v5 = a3;
        v11 = v115;
      }

      __break(1u);
LABEL_130:
      __break(1u);
LABEL_131:
      __break(1u);
LABEL_132:
      __break(1u);
LABEL_133:
      __break(1u);
      return;
    }

    v22 = MEMORY[0x277D84F90];
LABEL_89:
    v66 = *(v22 + 16);
    v67 = *(v9 + 16);
    v8 = v102;
    if (__OFADD__(v67, v66))
    {
      goto LABEL_131;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v69 = v108;
    if (!isUniquelyReferenced_nonNull_native || v67 + v66 > *(v108 + 24) >> 1)
    {
      sub_275431038();
      v69 = v70;
    }

    if (*(v22 + 16))
    {
      if ((*(v69 + 24) >> 1) - *(v69 + 16) < v66)
      {
        goto LABEL_132;
      }

      v71 = v69;
      swift_arrayInitWithCopy();

      v9 = v71;
      v6 = v106 + 1;
      v7 = v107;
      if (v66)
      {
        v72 = *(v71 + 16);
        v73 = __OFADD__(v72, v66);
        v74 = v72 + v66;
        if (v73)
        {
          goto LABEL_133;
        }

        *(v71 + 16) = v74;
      }
    }

    else
    {
      v75 = v69;

      v9 = v75;
      v6 = v106 + 1;
      v7 = v107;
      if (v66)
      {
        __break(1u);
LABEL_100:

        sub_2753EF328(__dst);

        return;
      }
    }
  }

  v76 = 0;
  v123 = *(v9 + 16);
  v77 = 32;
  while (*&v123 != v76)
  {
    if (v76 >= *(v9 + 16))
    {
      goto LABEL_130;
    }

    v79 = *(v9 + v77 + 32);
    v78 = *(v9 + v77 + 48);
    v80 = *(v9 + v77 + 16);
    *__dst = *(v9 + v77);
    *&__dst[16] = v80;
    *&__dst[32] = v79;
    *&__dst[48] = v78;
    v82 = *__dst;
    v81 = *&__dst[8];
    v83 = v80;
    v85 = v79;
    v84 = v78;
    sub_2753EF21C(__dst, v120);
    v86 = qword_2809DADA0;

    if (v86 != -1)
    {
      swift_once();
    }

    v87 = *&qword_2809DC438;
    v88 = unk_2809DC440;
    v89 = *&qword_2809DC448;
    v90 = qword_2809DC450;
    v91 = unk_2809DC458;
    v92 = v82 == qword_2809DC428.n128_u64[0] && v81 == unk_2809DC430;
    if (v92 || (sub_27546E9A0()) && (*&v83 == v87 ? (v93 = *(&v83 + 1) == v88) : (v93 = 0), v93 && *&v85 == v89))
    {
      if (*(&v85 + 1) == v90 && v84 == v91)
      {
        sub_2753EF278(__dst);

        return;
      }

      v95 = sub_27546E9A0();
      sub_2753EF278(__dst);

      if (v95)
      {
        return;
      }
    }

    else
    {
      sub_2753EF278(__dst);
    }

    v77 += 64;
    ++v76;
    v9 = v108;
    v7 = v107;
  }

  if (v7 > v8)
  {
    *v120 = v8;
    *&v120[1] = v7;
    v96 = v9;
    sub_2753EF104(v120, __dst);
    sub_2753EF37C(0, &qword_2809DADC0);
    v97 = swift_allocObject();
    v98 = *__dst;
    v99 = *&__dst[16];
    v97[1] = xmmword_275474500;
    v97[2] = v98;
    v100 = *&__dst[32];
    v101 = *&__dst[48];
    v97[3] = v99;
    v97[4] = v100;
    v97[5] = v101;
    v120[0] = v97;
    sub_2754591F4(v96);
  }
}

uint64_t __swift_destroy_boxed_opaque_existential_1(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_2753EEEC4@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = *(result + 16);
  v3 = (result + 32);
  if (!v2)
  {
    goto LABEL_25;
  }

  while (1)
  {
    v4 = v3[1];
    v31 = *v3;
    v32 = v4;
    v5 = v3[3];
    v33 = v3[2];
    v34 = v5;
    v6 = v31;
    v7 = v32;
    v9 = v33;
    v8 = v5;
    sub_2753EF21C(&v31, v30);
    v10 = qword_2809DAD90;

    if (v10 != -1)
    {
      swift_once();
    }

    v12 = *&qword_2809DC3C8;
    v11 = unk_2809DC3D0;
    v13 = *&qword_2809DC3D8;
    v14 = qword_2809DC3E0;
    v15 = unk_2809DC3E8;
    v16 = v6 == qword_2809DC3B8.n128_u64[0] && *(&v6 + 1) == unk_2809DC3C0;
    if (!v16 && (sub_27546E9A0() & 1) == 0 || *&v7 != v12 || *(&v7 + 1) != v11 || *&v9 != v13)
    {

      goto LABEL_19;
    }

    v17 = *(&v34 + 1);
    if (*(&v9 + 1) == v14 && v8 == v15)
    {
      break;
    }

    v19 = sub_27546E9A0();

    if (v19)
    {
      goto LABEL_22;
    }

LABEL_19:
    result = sub_2753EF278(&v31);
    v3 += 4;
    if (!--v2)
    {
      goto LABEL_25;
    }
  }

LABEL_22:
  swift_bridgeObjectRetain_n();
  v20 = sub_27544FBA0(1, v17);
  v30[0] = v17;
  v30[1] = v20;
  v30[2] = v21;
  v30[3] = v22;
  v30[4] = v23;
  sub_27544E690(v30);
  v25 = v24;
  swift_unknownObjectRelease();

  sub_2753EF278(&v31);
  if (*(v25 + 16))
  {
    v26 = *(v25 + 64);
    v27 = *(v25 + 48);
    v28 = *(v25 + 32);

    *a2 = v28;
    *(a2 + 16) = v27;
    *(a2 + 32) = v26;
    return result;
  }

LABEL_25:
  *a2 = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 32) = -4;
  return result;
}

uint64_t sub_2753EF104@<X0>(uint64_t *a1@<X0>, unint64_t *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  if (qword_2809DADA0 != -1)
  {
    swift_once();
  }

  v6 = qword_2809DC428.n128_u64[0];
  v5 = unk_2809DC430;
  v7 = qword_2809DC438;
  v8 = unk_2809DC440;
  v9 = qword_2809DC448;
  v11 = qword_2809DC450;
  v10 = unk_2809DC458;
  sub_2753EF37C(0, &qword_2809DADB8);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_275474510;
  *(v12 + 32) = v8;
  *(v12 + 40) = v4;
  *(v12 + 48) = 0x80;
  *(v12 + 56) = v7;
  *(v12 + 64) = v4;
  *(v12 + 72) = 0x80;
  *(v12 + 80) = v7;
  *(v12 + 88) = v3;
  *(v12 + 96) = 0x80;
  *(v12 + 104) = v8;
  *(v12 + 112) = v3;
  *(v12 + 120) = 0x80;
  *a2 = v6;
  a2[1] = v5;
  a2[2] = v7;
  a2[3] = v8;
  a2[4] = v9;
  a2[5] = v11;
  a2[6] = v10;
  a2[7] = v12;
}

void sub_2753EF37C(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_27546E990();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

uint64_t sub_2753EF434()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  __swift_destroy_boxed_opaque_existential_1(v0 + 7);
  __swift_destroy_boxed_opaque_existential_1(v0 + 13);
  __swift_destroy_boxed_opaque_existential_1(v0 + 18);

  return MEMORY[0x2821FE8E8](v0, 186, 7);
}

void *OUTLINED_FUNCTION_1_0()
{
  v2 = *(v0 - 160);
  v3 = *(v0 - 168);

  return __swift_project_boxed_opaque_existential_1((v0 - 192), v3);
}

uint64_t sub_2753EF4E8(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 80))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
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

uint64_t sub_2753EF528(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
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

uint64_t _s14SchedulingSongVwet(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 17))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t _s14SchedulingSongVwst(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 17) = v3;
  return result;
}

__n128 __swift_memcpy41_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_2753EF610(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 41))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2753EF630(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 41) = v3;
  return result;
}

uint64_t sub_2753EF68C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 283))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 88);
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

uint64_t sub_2753EF6CC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 282) = 0;
    *(result + 280) = 0;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 283) = 1;
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
      *(result + 88) = (a2 - 1);
      return result;
    }

    *(result + 283) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy25_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_2753EF780(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 25))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2753EF7A0(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 25) = v3;
  return result;
}

BOOL sub_2753EF7E0(uint64_t a1, char a2, uint64_t a3, char a4, double a5, double a6, double a7, double a8)
{
  if (a5 != a7 || a6 != a8)
  {
    return 0;
  }

  if ((a2 & 1) == 0)
  {
    return (a4 & 1) == 0 && *&a1 == *&a3;
  }

  return (a4 & 1) != 0;
}

double *sub_2753EF850@<X0>(double *result@<X0>, uint64_t a2@<X1>, double *a3@<X8>)
{
  v3 = *result;
  v4 = *(a2 + 16);
  if (!v4)
  {
LABEL_26:
    *a3 = v3;
    return result;
  }

  v5 = (a2 + 40);
  v6 = v4 - 1;
  v7 = 1;
  v8 = 0.0;
  for (i = 0.0; ; i = v10)
  {
    v11 = *(v5 - 1);
    v10 = *v5;
    if (v11 >= v3)
    {
      break;
    }

    if (!v6)
    {
      goto LABEL_7;
    }

    v7 = 0;
    v5 += 2;
    --v6;
    v8 = v11;
  }

  if (v7)
  {
LABEL_7:
    v3 = v3 + v10;
    goto LABEL_26;
  }

  if (v11 >= v8)
  {
    v12 = v8;
  }

  else
  {
    v12 = *(v5 - 1);
  }

  if (v8 > v11)
  {
    v13 = v8;
  }

  else
  {
    v13 = *(v5 - 1);
  }

  if (v12 <= v13)
  {
    if (v12 >= v3)
    {
      if (v8 >= v11)
      {
        i = *v5;
      }
    }

    else if (v3 >= v13)
    {
      if (v8 < v11)
      {
        i = *v5;
      }
    }

    else
    {
      v14 = (v3 - v8) / (v11 - v8);
      if (v14 > 0.0)
      {
        if (v14 >= 1.0)
        {
          i = *v5;
        }

        else
        {
          i = i + (v10 - i) * v14;
        }
      }
    }

    v3 = v3 + i;
    goto LABEL_26;
  }

  __break(1u);
  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t _s25UnstructuredStylingRegionVwet(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t _s25UnstructuredStylingRegionVwst(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 16) = v3;
  return result;
}

uint64_t sub_2753EF9D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_2753EF3C8(a1, __src);
  v4 = v14;
  if (v14)
  {
    v5 = *&__src[16];
    v6 = *&__src[24];
    v12 = *__src;
    sub_2753EFEAC(&v12, v2, v11);
    v7 = v11[0];
    *&v12 = v5;
    *(&v12 + 1) = v6;
    result = sub_2753EFEAC(&v12, v2 + 5, v11);
    v9 = v11[0];
    *a2 = v7;
    *(a2 + 16) = v9;
  }

  else
  {
    memcpy(v11, __src, 0xAAuLL);
    sub_2753EFCA4(v11, v2, a2);
    sub_2753EFCA4(&v11[5] + 8, v2 + 5, (a2 + 88));
    v10 = BYTE9(v11[10]);
    result = sub_2753F13EC(v11);
    *(a2 + 169) = v10;
  }

  *(a2 + 170) = v4;
  return result;
}

uint64_t sub_2753EFAB4()
{
  v1 = v0;
  sub_2754097E0(v12);
  sub_2754097E0(v11);
  v2 = sub_2753F0B2C(v12, v11, v0);
  sub_2753F122C(v11);
  sub_2753F122C(v12);
  if ((v2 & 1) == 0)
  {
    if (qword_2809DACB0 != -1)
    {
      OUTLINED_FUNCTION_0_3();
    }

    v5 = sub_27546E3E0();
    __swift_project_value_buffer(v5, qword_2809F3C00);
    v6 = sub_27546E3C0();
    v7 = sub_27546E6D0();
    if (!os_log_type_enabled(v6, v7))
    {
      goto LABEL_13;
    }

    v8 = swift_slowAlloc();
    *v8 = 0;
    v9 = "Outgoing spatial region invalid.";
    goto LABEL_12;
  }

  sub_275409858(v12);
  sub_275409858(v11);
  v3 = sub_2753F0B2C(v12, v11, v1 + 5);
  sub_2753F122C(v11);
  sub_2753F122C(v12);
  if (v3)
  {
    return 1;
  }

  if (qword_2809DACB0 != -1)
  {
    OUTLINED_FUNCTION_0_3();
  }

  v10 = sub_27546E3E0();
  __swift_project_value_buffer(v10, qword_2809F3C00);
  v6 = sub_27546E3C0();
  v7 = sub_27546E6D0();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    v9 = "Incoming spatial region invalid.";
LABEL_12:
    _os_log_impl(&dword_2753EC000, v6, v7, v9, v8, 2u);
    MEMORY[0x277C78090](v8, -1, -1);
  }

LABEL_13:

  return 0;
}

uint64_t sub_2753EFCA4@<X0>(uint64_t a1@<X0>, void *a2@<X1>, _BYTE *a3@<X8>)
{
  v5 = a2[3];
  v6 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v5);
  v7 = (*(v6 + 80))(v5, v6);
  if (v7)
  {
    v8 = v7;
    sub_275409C88();
    v9 = __dst[1];
    v14[0] = __dst[0];
    sub_2753EF850(v14, v8, __src);
    v10 = __src[0];
    v14[0] = v9;
    sub_2753EF850(v14, v8, __src);

    v12 = *&__src[0];
    if (__src[0] < v10)
    {
      __break(1u);
    }

    else
    {
      sub_275409E34();
      if (*&__src[3])
      {
        memcpy(__dst, __src, sizeof(__dst));
        sub_2753F1548(__dst, v14);
        v13 = v10;
        sub_2753F01A4(v14, &v13, __src);
        v13 = *&v12;
        sub_2753F01A4(v15, &v13, &__src[5]);
        sub_2753F15A4(v14);
        sub_2753F15A4(__dst);
        result = memcpy(a3, __src, 0x50uLL);
        a3[80] = 1;
      }

      else
      {
        sub_2753F149C(__src);
        sub_275409D20();
        *v14 = v10;
        sub_2753EFF68(__src, v14, __dst);
        v14[0] = v12;
        sub_2753EFF68(&__src[5], v14, &__dst[5]);
        sub_2753EDF40(__src);
        result = memcpy(a3, __dst, 0x50uLL);
        a3[80] = 0;
      }
    }
  }

  else
  {

    return sub_2753F1440(a1, a3);
  }

  return result;
}

uint64_t sub_2753EFEAC@<X0>(double *a1@<X0>, void *a2@<X1>, double *a3@<X8>)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = a2[3];
  v7 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v6);
  result = (*(v7 + 80))(v6, v7);
  if (!result)
  {
    goto LABEL_3;
  }

  v9 = result;
  v10 = v4;
  sub_2753EF850(&v10, result, &v11);
  v4 = v11;
  v10 = v5;
  sub_2753EF850(&v10, v9, &v11);

  v5 = v11;
  if (v11 < v4)
  {
    __break(1u);
  }

  else
  {
LABEL_3:
    *a3 = v4;
    a3[1] = v5;
  }

  return result;
}

uint64_t sub_2753EFF68@<X0>(void *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = *a2;
  sub_2753F161C(a1, v35);
  sub_2753F1680(0, &qword_2809DADD8);
  sub_2753F1680(0, &qword_2809DADD0);
  if (swift_dynamicCast())
  {
    sub_2753F16E0(&v28, v27);
    v23 = v5;
    sub_2753F01A4(v27, &v23, v24);
    v6 = v25;
    v7 = v26;
    v8 = __swift_project_boxed_opaque_existential_1(v24, v25);
    a3[3] = v6;
    a3[4] = *(v7 + 8);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a3);
    (*(*(v6 - 8) + 16))(boxed_opaque_existential_1, v8, v6);
    __swift_destroy_boxed_opaque_existential_1(v27);
    __swift_destroy_boxed_opaque_existential_1(v24);
  }

  else if (swift_dynamicCast())
  {
    v10 = *(&v28 + 1);
    v11 = v29;
    v12 = v30;
    v13 = v31;
    v14 = v32;
    v15 = v33;
    v16 = v34;
    a3[3] = &_s22SongStructureBeatEventVN;
    a3[4] = &off_2884126F8;
    v17 = swift_allocObject();
    *a3 = v17;
    *(v17 + 16) = v5;
    *(v17 + 24) = v10;
    *(v17 + 32) = v11;
    *(v17 + 40) = v12;
    *(v17 + 48) = v13;
    *(v17 + 56) = v14;
    *(v17 + 64) = v15;
    *(v17 + 72) = v16;
  }

  else
  {
    v18 = a1[3];
    v19 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v18);
    v20 = (*(v19 + 16))(v18, v19);
    a3[3] = &_s22SongStructureBeatEventVN;
    a3[4] = &off_2884126F8;
    v21 = swift_allocObject();
    *a3 = v21;
    *(v21 + 16) = v5;
    *(v21 + 24) = v20;
    *(v21 + 32) = 0;
    *(v21 + 40) = 1;
    *(v21 + 48) = 0;
    *(v21 + 56) = 1;
    *(v21 + 64) = 0;
    *(v21 + 72) = 1;
  }

  return __swift_destroy_boxed_opaque_existential_1(v35);
}

uint64_t sub_2753F01A4@<X0>(void *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = *a2;
  sub_2753F161C(a1, v21);
  sub_2753F1680(0, &qword_2809DADD0);
  if (swift_dynamicCast())
  {
    a3[3] = &_s33SongStructureSectionBoundaryEventVN;
    a3[4] = &off_288412A20;
    v6 = swift_allocObject();
    *a3 = v6;
    *(v6 + 16) = v5;
    *(v6 + 40) = v18;
    *(v6 + 24) = v17;
  }

  else if (swift_dynamicCast())
  {
    a3[3] = &_s33SongStructureSegmentBoundaryEventVN;
    a3[4] = &off_288412B08;
    v7 = swift_allocObject();
    *a3 = v7;
    *(v7 + 16) = v5;
    *(v7 + 40) = v18;
    *(v7 + 24) = v17;
    *(v7 + 56) = v19;
  }

  else if (swift_dynamicCast())
  {
    a3[3] = &_s26SongStructureDownbeatEventVN;
    a3[4] = &off_2884127C8;
    v8 = swift_allocObject();
    *a3 = v8;
    *(v8 + 16) = v5;
    *(v8 + 24) = v17;
    *(v8 + 40) = v18;
    *(v8 + 48) = BYTE8(v18);
    *(v8 + 56) = v19;
    *(v8 + 64) = v20;
  }

  else
  {
    v10 = a1[3];
    v9 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v10);
    v11 = (*(*(v9 + 8) + 16))(v10);
    v12 = a1[3];
    v13 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v12);
    v14 = (*(v13 + 16))(v12, v13);
    a3[3] = &_s26SongStructureDownbeatEventVN;
    a3[4] = &off_2884127C8;
    v15 = swift_allocObject();
    *a3 = v15;
    *(v15 + 16) = v5;
    *(v15 + 24) = v11;
    *(v15 + 32) = v14;
    *(v15 + 40) = 0;
    *(v15 + 48) = 1;
    *(v15 + 56) = 0;
    *(v15 + 64) = 1;
  }

  return __swift_destroy_boxed_opaque_existential_1(v21);
}

__n128 sub_2753F0410@<Q0>(uint64_t a1@<X0>, __n128 *a2@<X8>)
{
  v3 = v2;
  v5 = *a1;
  v6 = *(a1 + 8);
  v7 = *(a1 + 16);
  v8 = *(a1 + 24);
  v9 = 0.0;
  if (*a1 <= 0.0)
  {
    v10 = 0.0 - v5;
    if (v7 <= 0.0)
    {
      if (v10 <= 0.0 - v7)
      {
        v10 = 0.0 - v7;
      }
    }

    else if (v10 <= 0.0)
    {
      goto LABEL_17;
    }
  }

  else
  {
    if (v7 > 0.0)
    {
      goto LABEL_17;
    }

    v10 = 0.0 - v7;
    if (0.0 - v7 < 0.0)
    {
      goto LABEL_17;
    }
  }

  if (v10 > 0.0)
  {
    if (qword_2809DACB0 != -1)
    {
      OUTLINED_FUNCTION_0_3();
    }

    v11 = sub_27546E3E0();
    __swift_project_value_buffer(v11, qword_2809F3C00);
    v12 = sub_27546E3C0();
    v13 = sub_27546E6E0();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 134217984;
      *(v14 + 4) = v10;
      OUTLINED_FUNCTION_3_1(&dword_2753EC000, v15, v16, "Spatial regions need to be truncated at start. Truncated leading duration = %f.");
      MEMORY[0x277C78090](v14, -1, -1);
    }
  }

  v9 = v10;
LABEL_17:
  v29.n128_f64[0] = v5;
  v29.n128_u64[1] = v6;
  v30 = v7;
  v31 = v8;
  sub_2753F066C(&v29);
  v18 = v17;
  if (v17 > 0.0)
  {
    if (qword_2809DACB0 != -1)
    {
      OUTLINED_FUNCTION_0_3();
    }

    v19 = sub_27546E3E0();
    __swift_project_value_buffer(v19, qword_2809F3C00);
    v20 = sub_27546E3C0();
    v21 = sub_27546E6E0();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 134217984;
      *(v22 + 4) = v18;
      OUTLINED_FUNCTION_3_1(&dword_2753EC000, v23, v24, "Spatial regions need to be truncated at end. Truncated trailing duration = %f.");
      MEMORY[0x277C78090](v22, -1, -1);
    }
  }

  v27 = v5;
  v28 = v6;
  sub_2753F07A8(&v27, v3, v29.n128_f64, v9, v18);
  v25 = v29;
  v27 = v7;
  v28 = v8;
  sub_2753F07A8(&v27, v3 + 40, v29.n128_f64, v9, v18);
  result = v29;
  *a2 = v25;
  a2[1] = result;
  return result;
}

uint64_t sub_2753F066C(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 24);
  sub_2753F161C(v1, v13);
  v4 = v14;
  v5 = v15;
  __swift_project_boxed_opaque_existential_1(v13, v14);
  v6 = *(v5 + 16);
  v6(v4, v5);
  if (v7)
  {
    v6(v4, v5);
  }

  __swift_destroy_boxed_opaque_existential_1(v13);
  sub_2753F161C(v1 + 40, v13);
  v8 = v14;
  v9 = v15;
  __swift_project_boxed_opaque_existential_1(v13, v14);
  v10 = *(v9 + 16);
  v10(v8, v9);
  if (v11)
  {
    v10(v8, v9);
  }

  return __swift_destroy_boxed_opaque_existential_1(v13);
}

void sub_2753F07A8(double *a1@<X0>, uint64_t a2@<X1>, double *a3@<X8>, double a4@<D0>, double a5@<D1>)
{
  v7 = *a1;
  v8 = a1[1];
  v9 = *a1 + a4;
  v10 = v8 - a5;
  if (*a1 - v9 != 0.0)
  {
    if (qword_2809DACB0 != -1)
    {
      swift_once();
    }

    v11 = sub_27546E3E0();
    __swift_project_value_buffer(v11, qword_2809F3C00);
    v12 = sub_27546E3C0();
    v13 = sub_27546E6E0();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 134218240;
      *(v14 + 4) = v7;
      *(v14 + 12) = 2048;
      *(v14 + 14) = v9;
      _os_log_impl(&dword_2753EC000, v12, v13, "Spatial region truncated at start. Original region start time = %f. Truncated region start time = %f.", v14, 0x16u);
      MEMORY[0x277C78090](v14, -1, -1);
    }
  }

  if (v8 - v10 != 0.0)
  {
    if (qword_2809DACB0 != -1)
    {
      swift_once();
    }

    v15 = sub_27546E3E0();
    __swift_project_value_buffer(v15, qword_2809F3C00);
    sub_2753F161C(a2, v30);
    v16 = sub_27546E3C0();
    v17 = sub_27546E6E0();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 134218496;
      *(v18 + 4) = v8;
      *(v18 + 12) = 2048;
      *(v18 + 14) = v10;
      *(v18 + 22) = 2048;
      v19 = v31;
      v20 = v32;
      __swift_project_boxed_opaque_existential_1(v30, v31);
      v21 = *(v20 + 16);
      v22 = v21(v19, v20);
      if (v23)
      {
        v21(v19, v20);
        v25 = v24;
      }

      else
      {
        v25 = v22;
      }

      __swift_destroy_boxed_opaque_existential_1(v30);
      *(v18 + 24) = v25;
      _os_log_impl(&dword_2753EC000, v16, v17, "Spatial region truncated at end. Original region end time = %f. Truncated region end time = %f. Song duration = %f.", v18, 0x20u);
      MEMORY[0x277C78090](v18, -1, -1);
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_1(v30);
    }
  }

  if (v9 < v10)
  {
    if (v10 >= v9)
    {
      goto LABEL_24;
    }

    __break(1u);
  }

  if (qword_2809DACB0 != -1)
  {
    swift_once();
  }

  v26 = sub_27546E3E0();
  __swift_project_value_buffer(v26, qword_2809F3C00);
  v27 = sub_27546E3C0();
  v28 = sub_27546E6D0();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    *v29 = 134218240;
    *(v29 + 4) = v9;
    *(v29 + 12) = 2048;
    *(v29 + 14) = v10;
    _os_log_impl(&dword_2753EC000, v27, v28, "Truncated region invalid. Start time later than end time. Truncated region start time = %f. Truncated region end time = %f.", v29, 0x16u);
    MEMORY[0x277C78090](v29, -1, -1);
  }

  v9 = v7;
  v10 = v8;
LABEL_24:
  *a3 = v9;
  a3[1] = v10;
}

uint64_t sub_2753F0B2C(uint64_t a1, uint64_t a2, void *a3)
{
  sub_2753F12B8(a1, __src);
  v6 = __src;
  if ((v87 & 1) == 0)
  {
    memcpy(__dst, __src, sizeof(__dst));
    v6 = v78;
    sub_275409C88();
    sub_2753F1398(__dst);
  }

  if (*v6 < 0.0)
  {
    if (qword_2809DACB0 != -1)
    {
      swift_once();
    }

    v7 = sub_27546E3E0();
    __swift_project_value_buffer(v7, qword_2809F3C00);
    sub_2753F12B8(a1, __src);
    v8 = sub_27546E3C0();
    v9 = sub_27546E6D0();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v81[0] = v11;
      *v10 = 136315138;
      v12 = __dst;
      v13 = sub_2753F12B8(__src, __dst);
      if ((v80 & 1) == 0)
      {
        memcpy(v78, __dst, 0x51uLL);
        v12 = v83;
        sub_275409C88();
        v13 = sub_2753F1398(v78);
      }

      v21 = sub_2753F1314(*v12, v12[1], v13, v14, v15, v16, v17, v18, v19, v20);
      v23 = v22;
      sub_2753F122C(__src);
      v24 = sub_275446968(v21, v23, v81);

      *(v10 + 4) = v24;
      v25 = "Spatial region starts before beginning of song even after attempting truncation. Spatial song time range = %s.";
      v26 = v9;
      v27 = v8;
      v28 = v10;
      v29 = 12;
LABEL_41:
      _os_log_impl(&dword_2753EC000, v27, v26, v25, v28, v29);
      __swift_destroy_boxed_opaque_existential_1(v11);
      MEMORY[0x277C78090](v11, -1, -1);
      v76 = v10;
      goto LABEL_42;
    }

    goto LABEL_38;
  }

  sub_2753F12B8(a1, __src);
  if (v87)
  {
    v30 = &__src[8];
  }

  else
  {
    v30 = &v78[8];
    memcpy(__dst, __src, sizeof(__dst));
    sub_275409C88();
    sub_2753F1398(__dst);
  }

  v31 = *v30;
  v32 = a3[3];
  v33 = a3[4];
  __swift_project_boxed_opaque_existential_1(a3, v32);
  v34 = *(v33 + 16);
  *&v35 = COERCE_DOUBLE(v34(v32, v33));
  if (v36)
  {
    v34(v32, v33);
  }

  else
  {
    v37 = *&v35;
  }

  if (v31 > v37)
  {
    if (qword_2809DACB0 != -1)
    {
      swift_once();
    }

    v38 = sub_27546E3E0();
    __swift_project_value_buffer(v38, qword_2809F3C00);
    sub_2753F12B8(a1, __src);
    sub_2753F161C(a3, v83);
    v8 = sub_27546E3C0();
    v39 = sub_27546E6D0();
    if (os_log_type_enabled(v8, v39))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v82 = v11;
      *v10 = 136315394;
      v40 = __dst;
      v41 = sub_2753F12B8(__src, __dst);
      if ((v80 & 1) == 0)
      {
        memcpy(v78, __dst, 0x51uLL);
        v40 = v81;
        sub_275409C88();
        v41 = sub_2753F1398(v78);
      }

      v49 = sub_2753F1314(*v40, v40[1], v41, v42, v43, v44, v45, v46, v47, v48);
      v51 = v50;
      sub_2753F122C(__src);
      v52 = sub_275446968(v49, v51, &v82);

      *(v10 + 4) = v52;
      *(v10 + 12) = 2048;
      v53 = v84;
      v54 = v85;
      __swift_project_boxed_opaque_existential_1(v83, v84);
      v55 = *(v54 + 16);
      v56 = v55(v53, v54);
      if (v57)
      {
        v55(v53, v54);
        v59 = v58;
      }

      else
      {
        v59 = v56;
      }

      __swift_destroy_boxed_opaque_existential_1(v83);
      *(v10 + 14) = v59;
      v25 = "Spatial region ends after end of spatial song even after attempting truncation. Spatial song time range = %s. Spatial song duration = %f.";
      v26 = v39;
      v27 = v8;
      v28 = v10;
      v29 = 22;
      goto LABEL_41;
    }

    sub_2753F122C(__src);
    __swift_destroy_boxed_opaque_existential_1(v83);
    return 0;
  }

  if (sub_27540B1D4() < 1.0)
  {
    if (qword_2809DACB0 != -1)
    {
      swift_once();
    }

    v60 = sub_27546E3E0();
    __swift_project_value_buffer(v60, qword_2809F3C00);
    sub_2753F12B8(a2, __src);
    sub_2753F12B8(a1, __dst);
    v8 = sub_27546E3C0();
    v61 = sub_27546E6D0();
    if (os_log_type_enabled(v8, v61))
    {
      v62 = swift_slowAlloc();
      *v62 = 134218496;
      v63 = sub_27540B1D4();
      sub_2753F122C(__src);
      *(v62 + 4) = v63;
      *(v62 + 12) = 2048;
      v64 = sub_27540B1D4();
      sub_2753F122C(__dst);
      *(v62 + 14) = v64;
      *(v62 + 22) = 2048;
      *(v62 + 24) = 0x3FF0000000000000;
      v65 = "Spatial region duration too low. Original spatial region duration = %f. Truncated spatial region duration = %f. Minimum spatial region duration = %f.";
      v66 = v61;
      v67 = v8;
      v68 = v62;
      v69 = 32;
LABEL_36:
      _os_log_impl(&dword_2753EC000, v67, v66, v65, v68, v69);
      v76 = v62;
LABEL_42:
      MEMORY[0x277C78090](v76, -1, -1);

      return 0;
    }

    goto LABEL_37;
  }

  v70 = sub_27540B1D4();
  v71 = vabdd_f64(v70, sub_27540B1D4());
  if (v71 > 1.0)
  {
    if (qword_2809DACB0 != -1)
    {
      swift_once();
    }

    v72 = sub_27546E3E0();
    __swift_project_value_buffer(v72, qword_2809F3C00);
    sub_2753F12B8(a2, __src);
    sub_2753F12B8(a1, __dst);
    v8 = sub_27546E3C0();
    v73 = sub_27546E6D0();
    if (os_log_type_enabled(v8, v73))
    {
      v62 = swift_slowAlloc();
      *v62 = 134218752;
      v74 = sub_27540B1D4();
      sub_2753F122C(__src);
      *(v62 + 4) = v74;
      *(v62 + 12) = 2048;
      v75 = sub_27540B1D4();
      sub_2753F122C(__dst);
      *(v62 + 14) = v75;
      *(v62 + 22) = 2048;
      *(v62 + 24) = v71;
      *(v62 + 32) = 2048;
      *(v62 + 34) = 0x3FF0000000000000;
      v65 = "Truncated spatial region duration delta too high. Original spatial region duration = %f. Truncated spatial region duration = %f. Truncated spatial region duration delta = %f. Maximum truncated spatial region duration delta = %f.";
      v66 = v73;
      v67 = v8;
      v68 = v62;
      v69 = 42;
      goto LABEL_36;
    }

LABEL_37:

    sub_2753F122C(__dst);
LABEL_38:
    sub_2753F122C(__src);
    return 0;
  }

  return 1;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_2753F1314(double a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v20 = a1;
  v21 = a2;
  OUTLINED_FUNCTION_2_1(&v20, a4, a5, a6, a7, a8, a9, a10, 0);
  MEMORY[0x277C776B0](3026478, 0xE300000000000000);
  OUTLINED_FUNCTION_2_1(&v21, v10, v11, v12, v13, v14, v15, v16, v18);
  return v19;
}

uint64_t sub_2753F149C(uint64_t a1)
{
  sub_2753F14F8();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_2753F14F8()
{
  if (!qword_2809DADC8)
  {
    v0 = sub_27546E6F0();
    if (!v1)
    {
      atomic_store(v0, &qword_2809DADC8);
    }
  }
}

uint64_t sub_2753F161C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_2753F1680(uint64_t a1, unint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_2753F16E0(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *a1)
{
  v1 = a1;
  if ((*(*(a1[3] - 8) + 82) & 2) != 0)
  {
    *a1 = swift_allocBox();
    return v2;
  }

  return v1;
}

uint64_t sub_2753F1760(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 168))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
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

uint64_t sub_2753F17A0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0u;
    *(result + 152) = 0u;
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
      *(result + 168) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 168) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_0_3()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_2_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return MEMORY[0x2821FD480](a1, &a9, v9, v10, v11);
}

void OUTLINED_FUNCTION_3_1(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t _s20StylingPlacementPairOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFF)
  {
    if (a2 + 1 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 1) >> 8 < 0xFF)
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
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 2;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v5 = v6 - 2;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *_s20StylingPlacementPairOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x2753F19F0);
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

unint64_t sub_2753F1A44()
{
  result = qword_2809DADE0;
  if (!qword_2809DADE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DADE0);
  }

  return result;
}

uint64_t sub_2753F1AC0(char a1)
{
  sub_27546EA90();
  MEMORY[0x277C77BF0](a1 & 1);
  return sub_27546EAC0();
}

uint64_t sub_2753F1B24()
{
  v1 = *v0;
  sub_27546EA90();
  MEMORY[0x277C77BF0](v1);
  return sub_27546EAC0();
}

void sub_2753F1B68(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>)
{
  v7 = *(a1 + 8);
  v8 = *(a1 + 16);
  v9 = *(a1 + 24);
  v10 = *(a1 + 32);
  v11 = *(a1 + 33);
  *&v18 = *a1;
  BYTE8(v18) = v7;
  sub_275435F6C(&v15, a3);
  if (!v4)
  {
    v12 = v15;
    v13 = v16;
    v15 = v8;
    v16 = v9;
    v17 = v10;
    sub_2754339AC(&v18, a4);
    v14 = v18;
    *a2 = v7 >> 7;
    *(a2 + 8) = v12;
    *(a2 + 16) = v13;
    *(a2 + 24) = v14;
    *(a2 + 40) = v11;
  }
}

uint64_t sub_2753F1C20(uint64_t a1)
{
  v3 = *v1;
  v4 = *(v1 + 1);
  v5 = *(v1 + 2);
  v6 = *(v1 + 3);
  v7 = *(v1 + 4);
  v8 = v1[40];
  OUTLINED_FUNCTION_0_4();
  if (sub_2753F1D4C(v9))
  {
    OUTLINED_FUNCTION_0_4();
    if (sub_2753F2200(a1))
    {
      return 1;
    }
  }

  if (qword_2809DACB0 != -1)
  {
    swift_once();
  }

  v11 = sub_27546E3E0();
  __swift_project_value_buffer(v11, qword_2809F3C00);
  v12 = sub_27546E3C0();
  v13 = sub_27546E6E0();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_2753EC000, v12, v13, "Placement criteria: Not satisfied.", v14, 2u);
    MEMORY[0x277C78090](v14, -1, -1);
  }

  return 0;
}

uint64_t sub_2753F1D4C(_BYTE *a1)
{
  v3 = *(v1 + 8);
  if (*a1 == 3)
  {
    sub_2754097E0(v60);
    sub_2753F12B8(v60, __src);
    if (v62)
    {
      sub_2753F122C(v60);
      v4 = __src;
    }

    else
    {
      memcpy(__dst, __src, sizeof(__dst));
      v4 = v55;
      sub_275409C88();
      sub_2753F1398(__dst);
      sub_2753F122C(v60);
    }

    if (*v4 < v3)
    {
      if (qword_2809DACB0 != -1)
      {
        swift_once();
      }

      v7 = sub_27546E3E0();
      __swift_project_value_buffer(v7, qword_2809F3C00);
      sub_2753F2548(a1, v60);
      v8 = sub_27546E3C0();
      v9 = sub_27546E6E0();
      if (os_log_type_enabled(v8, v9))
      {
        v10 = swift_slowAlloc();
        v11 = swift_slowAlloc();
        v59 = v11;
        *v10 = 136315394;
        sub_2754097E0(__src);
        sub_2753F12B8(__src, __dst);
        if (v57)
        {
          v12 = sub_2753F122C(__src);
          v20 = __dst;
        }

        else
        {
          memcpy(v55, __dst, 0x51uLL);
          v20 = v58;
          sub_275409C88();
          sub_2753F1398(v55);
          v12 = sub_2753F122C(__src);
        }

        v48 = sub_2753F1314(*v20, v20[1], v12, v13, v14, v15, v16, v17, v18, v19);
        v50 = v49;
        sub_2753F25A4(v60);
        v51 = sub_275446968(v48, v50, &v59);

        *(v10 + 4) = v51;
        *(v10 + 12) = 2080;
        *__src = v3;
        v52 = sub_27546E540();
        v54 = sub_275446968(v52, v53, &v59);

        *(v10 + 14) = v54;
        v47 = "Outgoing placement criteria: Not satisfied. Outgoing region = %s. Minimum outgoing region start time = %s.";
LABEL_27:
        _os_log_impl(&dword_2753EC000, v8, v9, v47, v10, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x277C78090](v11, -1, -1);
        MEMORY[0x277C78090](v10, -1, -1);

        return 0;
      }

      goto LABEL_22;
    }

    return 1;
  }

  v5 = *(v1 + 16);
  sub_2754097E0(v60);
  sub_2753F12B8(v60, __src);
  if (v62)
  {
    sub_2753F122C(v60);
    v6 = __src;
  }

  else
  {
    memcpy(__dst, __src, sizeof(__dst));
    v6 = v55;
    sub_275409C88();
    sub_2753F1398(__dst);
    sub_2753F122C(v60);
  }

  if (*v6 >= v3 && v5 >= *v6)
  {
    return 1;
  }

  if (qword_2809DACB0 != -1)
  {
    swift_once();
  }

  v21 = sub_27546E3E0();
  __swift_project_value_buffer(v21, qword_2809F3C00);
  sub_2753F2548(a1, v60);
  v8 = sub_27546E3C0();
  v9 = sub_27546E6E0();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v59 = v11;
    *v10 = 136315394;
    sub_2754097E0(__src);
    sub_2753F12B8(__src, __dst);
    if (v57)
    {
      v22 = sub_2753F122C(__src);
      v30 = __dst;
    }

    else
    {
      memcpy(v55, __dst, 0x51uLL);
      v30 = v58;
      sub_275409C88();
      sub_2753F1398(v55);
      v22 = sub_2753F122C(__src);
    }

    v32 = sub_2753F1314(*v30, v30[1], v22, v23, v24, v25, v26, v27, v28, v29);
    v34 = v33;
    sub_2753F25A4(v60);
    v35 = sub_275446968(v32, v34, &v59);

    *(v10 + 4) = v35;
    *(v10 + 12) = 2080;
    v44 = sub_2753F1314(v3, v5, v36, v37, v38, v39, v40, v41, v42, v43);
    v46 = sub_275446968(v44, v45, &v59);

    *(v10 + 14) = v46;
    v47 = "Outgoing placement criteria: Not satisfied. Outgoing region = %s. Required outgoing region start time range = %s.";
    goto LABEL_27;
  }

LABEL_22:

  sub_2753F25A4(v60);
  return 0;
}

uint64_t sub_2753F2200(uint64_t a1)
{
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  sub_275409858(v40);
  sub_2753F12B8(v40, __src);
  if (__src[81])
  {
    sub_2753F122C(v40);
    v5 = __src;
  }

  else
  {
    memcpy(__dst, __src, 0x51uLL);
    v5 = v36;
    sub_275409C88();
    sub_2753F1398(__dst);
    sub_2753F122C(v40);
  }

  if (*v5 >= v3 && v4 >= *v5)
  {
    return 1;
  }

  if (qword_2809DACB0 != -1)
  {
    swift_once();
  }

  v6 = sub_27546E3E0();
  __swift_project_value_buffer(v6, qword_2809F3C00);
  sub_2753F2548(a1, v40);
  v7 = sub_27546E3C0();
  v8 = sub_27546E6E0();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v39 = v10;
    *v9 = 136315394;
    sub_275409858(__src);
    sub_2753F12B8(__src, __dst);
    if (__dst[81])
    {
      v11 = sub_2753F122C(__src);
      v19 = __dst;
    }

    else
    {
      memcpy(v36, __dst, 0x51uLL);
      v19 = &v38;
      sub_275409C88();
      sub_2753F1398(v36);
      v11 = sub_2753F122C(__src);
    }

    v21 = sub_2753F1314(*v19, v19[1], v11, v12, v13, v14, v15, v16, v17, v18);
    v23 = v22;
    sub_2753F25A4(v40);
    v24 = sub_275446968(v21, v23, &v39);

    *(v9 + 4) = v24;
    *(v9 + 12) = 2080;
    v33 = sub_2753F1314(v3, v4, v25, v26, v27, v28, v29, v30, v31, v32);
    v35 = sub_275446968(v33, v34, &v39);

    *(v9 + 14) = v35;
    _os_log_impl(&dword_2753EC000, v7, v8, "Incoming placement criteria: Not satisfied. Incoming region = %s. Required incoming region start time range = %s.", v9, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x277C78090](v10, -1, -1);
    MEMORY[0x277C78090](v9, -1, -1);
  }

  else
  {

    sub_2753F25A4(v40);
  }

  return 0;
}

uint64_t sub_2753F24AC(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && a1[41])
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *a1;
      v4 = v3 >= 2;
      v2 = v3 - 2;
      if (!v4)
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

uint64_t sub_2753F24E8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t _s24EarlyPlacementConstraintOwet(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFE && *(a1 + 17))
    {
      v2 = *a1 + 253;
    }

    else
    {
      v3 = *(a1 + 16);
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

uint64_t _s24EarlyPlacementConstraintOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
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

uint64_t sub_2753F26B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5)
  {
    if (a5 == 1)
    {
      if (!*(a1 + 8))
      {
        goto LABEL_24;
      }

      v7 = *(a1 + 56);

      v9 = sub_275460DEC(v8);

      v11 = sub_275460DEC(v10);
      v12 = sub_2753F2B04(v11, v9);

      if (v12)
      {
LABEL_24:
        if (!*(a2 + 8))
        {
          return 1;
        }

        v13 = *(a2 + 56);

        v15 = sub_275460DEC(v14);

        v17 = sub_275460DEC(v16);
        v18 = sub_2753F2B04(v17, v15);

        if (v18)
        {
          return 1;
        }
      }

      return 2;
    }

    if (*(a1 + 8))
    {
      v21 = *(a1 + 48);
      v20 = *(a1 + 56);
      v22 = *(a1 + 32);
      v48[0] = *(a1 + 16);
      v48[1] = v22;

      v24 = sub_2753F2A88(v23, a3);
      v25 = sub_275460DEC(v20);

      v27 = sub_275460DEC(v26);
      v28 = sub_2753F2B04(v27, v25);

      if (v24)
      {
        sub_2753F2CDC();
        inited = swift_initStackObject();
        v30 = *(v48 + 8);
        v49 = *(v48 + 8);
        *(inited + 16) = xmmword_275474500;
        *(inited + 32) = v30;
        *&v50 = inited;
        sub_2753F2D2C(&v49, v47);

        sub_2754592AC(v31);
        v32 = sub_2753F2A88(v50, a3);

        if (((v32 | v28) & 1) == 0)
        {
          return 2;
        }
      }

      else if ((v28 & 1) == 0)
      {
        return 2;
      }

      if (*(a2 + 8))
      {
        v34 = *(a2 + 48);
        v33 = *(a2 + 56);
        v35 = *(a2 + 32);
        v47[0] = *(a2 + 16);
        v47[1] = v35;

        v37 = sub_2753F2A88(v36, a3);
        v38 = sub_275460DEC(v33);

        v40 = sub_275460DEC(v39);
        v41 = sub_2753F2B04(v40, v38);

        if (v37)
        {
          sub_2753F2CDC();
          v42 = swift_initStackObject();
          *(v42 + 16) = xmmword_275474500;
          v50 = *(v47 + 8);
          *(v42 + 32) = *(v47 + 8);
          v46 = v42;
          sub_2753F2D2C(&v50, v45);

          sub_2754592AC(v43);
          v44 = sub_2753F2A88(v46, a3);

          if ((v44 | v41))
          {
            return 0;
          }
        }

        else if (v41)
        {
          return 0;
        }
      }
    }

    return 2;
  }

  return sub_2753F29A0(a1, a2, a3);
}

uint64_t sub_2753F29A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a1 + 8))
  {
    return 2;
  }

  if (!*(*(a1 + 56) + 16))
  {
    return 2;
  }

  if (!*(a3 + 16))
  {
    return 2;
  }

  v5 = sub_275460DEC(v4);

  v7 = sub_275460DEC(v6);
  v8 = sub_2753F2B04(v7, v5);

  if (v8)
  {
    return 2;
  }

  if (*(a2 + 8) && *(*(a2 + 56) + 16) && (v9 = , v10 = sub_275460DEC(v9), v11 = , v12 = sub_275460DEC(v11), v13 = sub_2753F2B04(v12, v10), , , (v13 & 1) == 0))
  {
    return 0;
  }

  else
  {
    return 2;
  }
}

uint64_t sub_2753F2A88(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v2 = *(a2 + 16);
    if (v2)
    {

      v4 = sub_275460DEC(v3);

      v6 = sub_275460DEC(v5);
      v7 = sub_2753F2B04(v6, v4);

      LOBYTE(v2) = v7 ^ 1;
    }
  }

  return v2 & 1;
}

uint64_t sub_2753F2B04(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (!v2)
  {
    return 1;
  }

  v3 = *(a1 + 16);
  if (!v3)
  {
    return 1;
  }

  if (v2 >= v3)
  {
    v4 = a1;
  }

  else
  {
    v4 = a2;
  }

  v5 = v4 + 56;
  if (v2 >= v3)
  {
    v6 = a2;
  }

  else
  {
    v6 = a1;
  }

  v7 = 1 << *(v4 + 32);
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(v4 + 56);
  v10 = (v7 + 63) >> 6;

  v12 = 0;
LABEL_13:
  while (v9)
  {
    v13 = v9;
LABEL_19:
    v9 = (v13 - 1) & v13;
    if (*(v6 + 16))
    {
      v25 = v4;
      v15 = (*(v4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v13)))));
      v17 = *v15;
      v16 = v15[1];
      v18 = *(v6 + 40);
      sub_27546EA90();

      sub_27546E550();
      v19 = sub_27546EAC0();
      v20 = ~(-1 << *(v6 + 32));
      do
      {
        v21 = v19 & v20;
        if (((*(v6 + 56 + (((v19 & v20) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v19 & v20)) & 1) == 0)
        {

          v4 = v25;
          goto LABEL_13;
        }

        v22 = (*(v6 + 48) + 16 * v21);
        if (*v22 == v17 && v22[1] == v16)
        {
          break;
        }

        v24 = sub_27546E9A0();
        v19 = v21 + 1;
      }

      while ((v24 & 1) == 0);

      return 0;
    }
  }

  while (1)
  {
    v14 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v14 >= v10)
    {

      return 1;
    }

    v13 = *(v5 + 8 * v14);
    ++v12;
    if (v13)
    {
      v12 = v14;
      goto LABEL_19;
    }
  }

  __break(1u);
  return result;
}

void sub_2753F2CDC()
{
  if (!qword_2809DADE8)
  {
    v0 = sub_27546E990();
    if (!v1)
    {
      atomic_store(v0, &qword_2809DADE8);
    }
  }
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_2753F2D9C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_2753F2DDC(uint64_t result, int a2, int a3)
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

uint64_t sub_2753F2E2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = a1 == a4 && a2 == a5;
  if (!v8 && (sub_27546E9A0() & 1) == 0)
  {
    return 0;
  }

  return sub_27543C4EC(a3, a6);
}

uint64_t sub_2753F2E98@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

unint64_t sub_2753F2EC4()
{
  result = qword_2809DADF0;
  if (!qword_2809DADF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DADF0);
  }

  return result;
}

uint64_t sub_2753F2F24@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = nullsub_1(*a1, a1[1]);
  *a2 = result;
  a2[1] = v4;
  return result;
}

void *sub_2753F2F80@<X0>(void *result@<X0>, void *a2@<X8>)
{
  v2 = result[1];
  *a2 = *result;
  a2[1] = v2;
  return result;
}

unint64_t sub_2753F2F90()
{
  result = qword_2809DADF8;
  if (!qword_2809DADF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DADF8);
  }

  return result;
}

unint64_t sub_2753F2FF4()
{
  result = qword_2809DAE00;
  if (!qword_2809DAE00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DAE00);
  }

  return result;
}

uint64_t sub_2753F3054(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_2753F3094(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_2753F30E4()
{
  result = qword_2809DAE08;
  if (!qword_2809DAE08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DAE08);
  }

  return result;
}

uint64_t sub_2753F313C(void *a1, void *a2)
{
  v4 = a1[2];
  v5 = a2[2];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (!v6 && (sub_27546E9A0() & 1) == 0)
  {
    return 0;
  }

  if ((sub_27543C4EC(v4, v5) & 1) == 0)
  {
    return 0;
  }

  v7 = a1[3] == a2[3] && a1[4] == a2[4];
  if (!v7 && (sub_27546E9A0() & 1) == 0 || (sub_27543C460(a1[5], a2[5]) & 1) == 0 || (sub_27543C460(a1[6], a2[6]) & 1) == 0)
  {
    return 0;
  }

  v8 = a1[7];
  v9 = a2[7];

  return sub_27543C460(v8, v9);
}

void sub_2753F3210(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{

  v12 = OUTLINED_FUNCTION_0_5();
  sub_2753F3310(v12, v13, v14, v15, v16);
  v18 = v17;

  v19 = OUTLINED_FUNCTION_0_5();
  sub_2753F3558(v19, v20, v21, v22, v23, 0);
  v25 = v24;

  sub_2753F2CDC();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_275474500;
  *(inited + 32) = a4;
  *(inited + 40) = a5;

  sub_2754592AC(inited);
  sub_2754592AC(v25);
  *a6 = a1;
  a6[1] = a2;
  a6[2] = a3;
  a6[3] = a4;
  a6[4] = a5;
  a6[5] = v18;
  a6[6] = v25;
  a6[7] = v18;
}

void sub_2753F3310(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v8 = a3[2];
  v9 = a3 + 5;
  v10 = v8 + 1;
  while (--v10)
  {
    if (*(v9 - 1) != a4 || *v9 != a5)
    {
      v9 += 3;
      if ((sub_27546E9A0() & 1) == 0)
      {
        continue;
      }
    }

    sub_2753F2CDC();
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_275474500;
    *(v12 + 32) = a1;
    *(v12 + 40) = a2;

    return;
  }

  v13 = a3 + 6;
  v14 = MEMORY[0x277D84F90];
  if (v8)
  {
    while (1)
    {
      v16 = *(v13 - 1);
      v15 = *v13;
      v17 = *(v13 - 2);

      v18 = sub_2753F3310(v17, v16, v15, a4, a5);

      v19 = *(v18 + 16);
      v20 = *(v14 + 16);
      if (__OFADD__(v20, v19))
      {
        break;
      }

      if (!swift_isUniquelyReferenced_nonNull_native() || v20 + v19 > *(v14 + 24) >> 1)
      {
        sub_2754311BC();
        v14 = v21;
      }

      if (*(v18 + 16))
      {
        if ((*(v14 + 24) >> 1) - *(v14 + 16) < v19)
        {
          goto LABEL_26;
        }

        swift_arrayInitWithCopy();

        if (v19)
        {
          v22 = *(v14 + 16);
          v23 = __OFADD__(v22, v19);
          v24 = v22 + v19;
          if (v23)
          {
            goto LABEL_27;
          }

          *(v14 + 16) = v24;
        }
      }

      else
      {

        if (v19)
        {
          goto LABEL_25;
        }
      }

      v13 += 3;
      if (!--v8)
      {
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
  }

  else
  {
LABEL_21:
    if (*(v14 + 16))
    {
      sub_2753F2CDC();
      v25 = swift_allocObject();
      *(v25 + 16) = xmmword_275474500;
      *(v25 + 32) = a1;
      *(v25 + 40) = a2;

      sub_2754592AC(v14);
    }

    else
    {
    }
  }
}

void sub_2753F3558(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  v11 = a1 == a4 && a2 == a5;
  if (v11 || (v12 = a6, (sub_27546E9A0() & 1) != 0))
  {
    v12 = 1;
  }

  v27 = a1;
  v28 = a2;
  v13 = *(a3 + 16);

  v14 = (a3 + 48);
  v15 = MEMORY[0x277D84F90];
  if (v13)
  {
    while (1)
    {
      v17 = *(v14 - 1);
      v16 = *v14;
      v18 = *(v14 - 2);

      v19 = sub_2753F3558(v18, v17, v16, a4, a5, v12 & 1);

      v20 = *(v19 + 16);
      v21 = *(v15 + 16);
      if (__OFADD__(v21, v20))
      {
        break;
      }

      if (!swift_isUniquelyReferenced_nonNull_native() || v21 + v20 > *(v15 + 24) >> 1)
      {
        sub_2754311BC();
        v15 = v22;
      }

      if (*(v19 + 16))
      {
        if ((*(v15 + 24) >> 1) - *(v15 + 16) < v20)
        {
          goto LABEL_24;
        }

        swift_arrayInitWithCopy();

        if (v20)
        {
          v23 = *(v15 + 16);
          v24 = __OFADD__(v23, v20);
          v25 = v23 + v20;
          if (v24)
          {
            goto LABEL_25;
          }

          *(v15 + 16) = v25;
        }
      }

      else
      {

        if (v20)
        {
          goto LABEL_23;
        }
      }

      v14 += 3;
      if (!--v13)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
  }

  else
  {
LABEL_19:
    if (a6)
    {
      sub_2753F2CDC();
      v26 = swift_allocObject();
      *(v26 + 16) = xmmword_275474500;
      *(v26 + 32) = v27;
      *(v26 + 40) = v28;
      sub_2754592AC(v15);
    }

    else
    {
    }
  }
}

__n128 __swift_memcpy64_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_2753F3774(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_2753F37B4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

double sub_2753F382C(uint64_t a1, double result)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = (a1 + 40);
    result = 0.0;
    v4 = *(a1 + 16);
    v5 = 0.0;
    v6 = 0.0;
    v7 = 0.0;
    do
    {
      v8 = *(v3 - 1);
      v7 = v7 + v8;
      v6 = v6 + v8 * v8;
      v5 = v5 + *v3;
      result = result + v8 * *v3;
      v3 += 2;
      --v4;
    }

    while (v4);
    v9 = v6 * v2 - v7 * v7;
    if (v9 != 0.0)
    {
      return (result * v2 - v7 * v5) / v9;
    }
  }

  return result;
}

uint64_t sub_2753F38E8(int8x16_t *a1, int8x16_t *a2)
{
  v2 = a1[1].u64[0];
  if (!v2)
  {
    return 254;
  }

  v5 = sub_2753F3BBC(a1);
  v6 = *(v5 + 16);
  if (v6)
  {
    v7 = (v5 + 32);
    v8 = 0.0;
    do
    {
      v9 = *v7++;
      v8 = v8 + v9;
      --v6;
    }

    while (v6);
  }

  else
  {
    v8 = 0.0;
  }

  v10 = COERCE_DOUBLE(sub_2753F3AF4(a2));
  if (v12)
  {
    return 254;
  }

  v11.n128_f64[0] = v10 - v8 / v2;
  if (v11.n128_f64[0] >= 6.0)
  {
    return sub_2753F39C4(a1, v11);
  }

  if (v11.n128_f64[0] <= -6.0)
  {
    return sub_2753F3A34(v11, a1, a2) | 0x40u;
  }

  return 128;
}

BOOL sub_2753F39C4(int8x16_t *a1, __n128 a2)
{
  v3 = sub_2753F3C88(a1, a2);
  result = 1;
  if ((v4 & 1) == 0)
  {
    v5 = *&v3;
    v6 = sub_2753F3BBC(a1);
    v7 = sub_2753F3D70(v6);

    if (!sub_2753F4038(v7 & 1, v5))
    {
      return 0;
    }
  }

  return result;
}

BOOL sub_2753F3A34(__n128 a1, uint64_t a2, int8x16_t *a3)
{
  v4 = sub_2753F3C88(a3, a1);
  result = 0;
  if ((v5 & 1) == 0)
  {
    v6 = *&v4;
    v7 = sub_2753F3BBC(a3);
    v8 = sub_2753F3D70(v7);

    if (sub_2753F4038(v8 & 1, v6) == 2)
    {
      return 1;
    }
  }

  return result;
}

uint64_t sub_2753F3AF4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = sub_2753F3BBC(a1);
    v3 = *(v2 + 16);
    if (v3)
    {
      v4 = (v2 + 32);
      v5 = 0.0;
      do
      {
        v6 = *v4++;
        v5 = v5 + v6;
        --v3;
      }

      while (v3);
    }

    else
    {
      v5 = 0.0;
    }

    *&result = v5 / v1;
  }

  else
  {
    *&result = 0.0;
  }

  return result;
}

uint64_t sub_2753F3B7C@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = *(result + 16);
  if (v2)
  {
    v3 = *(result + 40);
    v4 = *(result + 16 + 16 * v2 + 8);
    if (v4 < v3)
    {
      __break(1u);
    }

    else
    {
      *a2 = v3;
      *(a2 + 8) = v4;
      *(a2 + 16) = 0;
    }
  }

  else
  {
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 1;
  }

  return result;
}

uint64_t sub_2753F3BBC(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (v2)
  {
    v8 = MEMORY[0x277D84F90];
    sub_2754410DC(0, v2, 0);
    result = v8;
    v4 = (a1 + 32);
    v5 = *(v8 + 16);
    do
    {
      v6 = *v4;
      v9 = result;
      v7 = *(result + 24);
      if (v5 >= v7 >> 1)
      {
        sub_2754410DC(v7 > 1, v5 + 1, 1);
        result = v9;
      }

      *(result + 16) = v5 + 1;
      *(result + 8 * v5 + 32) = v6;
      v4 += 2;
      ++v5;
      --v2;
    }

    while (v2);
  }

  return result;
}

uint64_t sub_2753F3C88(int8x16_t *a1, __n128 a2)
{
  v2 = a1[1].i64[0];
  v3 = MEMORY[0x277D84F90];
  if (v2)
  {
    v18 = MEMORY[0x277D84F90];
    sub_27544110C(0, v2, 0);
    v3 = v18;
    v5 = a1 + 2;
    v6 = *(v18 + 16);
    do
    {
      v7 = *v5;
      if (v6 >= *(v18 + 24) >> 1)
      {
        OUTLINED_FUNCTION_1_2();
        v17 = v8;
        sub_27544110C(v9, v10, v11);
        v7 = v17;
      }

      *(v18 + 16) = v6 + 1;
      a2 = vextq_s8(v7, v7, 8uLL);
      *(v18 + 16 * v6 + 32) = a2;
      ++v5;
      ++v6;
      --v2;
    }

    while (v2);
  }

  sub_2753F382C(v3, a2.n128_f64[0]);
  v13 = v12;
  v15 = v14;

  if (v15)
  {
    return 0;
  }

  else
  {
    return v13;
  }
}

uint64_t sub_2753F3D70(uint64_t a1)
{

  v2 = sub_27544FBA0(1, a1);
  result = sub_2753F44D8(1, v2, v3, v4, v5);
  if (!__OFSUB__(v9 >> 1, v8))
  {
    v10 = result;
    if (((v9 >> 1) - v8) < 3)
    {
      swift_unknownObjectRelease();
      return 1;
    }

    v11 = v7;
    v12 = v8;
    v13 = v9;
    swift_unknownObjectRetain();
    v44[0] = v10;
    v44[1] = v11;
    v44[2] = v12;
    v44[3] = v13;
    v44[4] = sub_27544E5F0(1, v10, v11, v12, v13);
    v44[5] = v14;
    v44[6] = v15;
    v44[7] = v16;
    swift_unknownObjectRetain();
    v17 = sub_2753F4590(v44);
    sub_2753F4A34(v44);
    v18 = v17[2];
    if (v18)
    {
      v19 = (v17 + 4);
      v20 = MEMORY[0x277D84F90];
      do
      {
        v21 = *v19;
        if (*v19 != 0.0)
        {
          v43[0] = v20;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v22 = *(v20 + 16);
            v23 = OUTLINED_FUNCTION_0_6();
            sub_27544114C(v23, v24, v25);
            v20 = v43[0];
          }

          v27 = *(v20 + 16);
          v26 = *(v20 + 24);
          if (v27 >= v26 >> 1)
          {
            sub_27544114C((v26 > 1), v27 + 1, 1);
            v20 = v43[0];
          }

          *(v20 + 16) = v27 + 1;
          *(v20 + 8 * v27 + 32) = v21;
        }

        ++v19;
        --v18;
      }

      while (v18);
    }

    else
    {
      v20 = MEMORY[0x277D84F90];
    }

    v43[0] = v20;
    v43[1] = sub_27544FBA0(1, v20);
    v43[2] = v28;
    v43[3] = v29;
    v43[4] = v30;
    v31 = sub_2753F47D0(v43);
    swift_unknownObjectRelease();

    v32 = 0;
    v33 = v31[2];
    v34 = MEMORY[0x277D84F90];
LABEL_16:
    v35 = v31 + 2 * v32 + 33;
    while (1)
    {
      if (v33 == v32)
      {

        swift_unknownObjectRelease();
        v42 = *(v34 + 16);

        return v42 < 2;
      }

      if (v32 >= v31[2])
      {
        break;
      }

      ++v32;
      v36 = *(v35 - 1);
      v38 = *v35;
      v35 += 2;
      v37 = v38;
      if (v36 != v38)
      {
        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_27544112C(0, *(v34 + 16) + 1, 1);
        }

        v40 = *(v34 + 16);
        v39 = *(v34 + 24);
        if (v40 >= v39 >> 1)
        {
          result = sub_27544112C((v39 > 1), v40 + 1, 1);
        }

        *(v34 + 16) = v40 + 1;
        v41 = v34 + 2 * v40;
        *(v41 + 32) = v36;
        *(v41 + 33) = v37;
        goto LABEL_16;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_2753F4038(char a1, double a2)
{
  v2 = fabs(a2);
  if (a2 >= 0.0)
  {
    v3 = a2 == 0.0;
  }

  else
  {
    v3 = 2;
  }

  if ((a1 & 1) == 0)
  {
    v3 = 1;
  }

  if (v2 >= 1.0)
  {
    return v3;
  }

  else
  {
    return 1;
  }
}

void sub_2753F4068(uint64_t a1)
{
  if (*(a1 + 16))
  {
    v2 = *(a1 + 32);
    sub_2753F4BA0(0, &qword_2809DAE28, &_s14LoudnessSampleVN, MEMORY[0x277D84560]);
    v3 = (a1 + 40);
    v4 = MEMORY[0x277D84F90];
    while (1)
    {
      v5 = *v3;
      v2 = v2 * 0.5 + *(v3 - 1) * 0.5;
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_275474500;
      *(inited + 32) = v2;
      v7 = (inited + 32);
      *(inited + 40) = v5;
      v8 = *(v4 + 16);
      if (!swift_isUniquelyReferenced_nonNull_native() || (v9 = *(v4 + 24) >> 1, v9 <= v8))
      {
        sub_275431274();
        v4 = v10;
        v9 = *(v10 + 24) >> 1;
      }

      v11 = *(v4 + 16);
      if (v9 <= v11)
      {
        break;
      }

      *(v4 + 16 * v11 + 32) = *v7;

      ++*(v4 + 16);
      OUTLINED_FUNCTION_4();
      if (v12)
      {
        return;
      }
    }

    __break(1u);
  }
}

uint64_t sub_2753F41C8(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = (a1 + 32);
  for (i = MEMORY[0x277D84F90]; v1; --v1)
  {
    v4 = *v2;
    if (*v2 <= -60.0)
    {
      break;
    }

    if ((OUTLINED_FUNCTION_6() & 1) == 0)
    {
      v5 = *(i + 16);
      v6 = OUTLINED_FUNCTION_0_6();
      sub_27544116C(v6, v7, v8);
    }

    v9 = *(i + 16);
    v10 = v23;
    if (v9 >= *(i + 24) >> 1)
    {
      OUTLINED_FUNCTION_1_2();
      v14 = sub_27544116C(v11, v12, v13);
      v10 = OUTLINED_FUNCTION_5(v14, v15, v16, v17, v18, v19, v20, v21, v23);
    }

    *(i + 16) = v9 + 1;
    *(i + 16 * v9 + 32) = v10;
    v2 += 2;
  }

  return i;
}

uint64_t sub_2753F4294(double *a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return MEMORY[0x277D84F90];
  }

  v2 = *a1;
  v3 = (a2 + 32);
  v4 = MEMORY[0x277D84F90];
  do
  {
    v5 = *v3;
    if (v2 >= v3[1])
    {
      if ((OUTLINED_FUNCTION_6() & 1) == 0)
      {
        v6 = *(v4 + 16);
        v7 = OUTLINED_FUNCTION_0_6();
        sub_27544116C(v7, v8, v9);
      }

      OUTLINED_FUNCTION_3_2();
      v10 = v25;
      if (v11)
      {
        OUTLINED_FUNCTION_1_2();
        v16 = sub_27544116C(v13, v14, v15);
        v10 = OUTLINED_FUNCTION_5(v16, v17, v18, v19, v20, v21, v22, v23, v25);
      }

      OUTLINED_FUNCTION_2_2(v10);
    }

    OUTLINED_FUNCTION_4();
  }

  while (!v12);
  return v4;
}

uint64_t sub_2753F4354(double *a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return MEMORY[0x277D84F90];
  }

  v2 = *a1;
  v3 = (a2 + 32);
  v4 = MEMORY[0x277D84F90];
  do
  {
    v5 = *v3;
    if (v3[1] >= v2)
    {
      if ((OUTLINED_FUNCTION_6() & 1) == 0)
      {
        v6 = *(v4 + 16);
        v7 = OUTLINED_FUNCTION_0_6();
        sub_27544116C(v7, v8, v9);
      }

      OUTLINED_FUNCTION_3_2();
      v10 = v25;
      if (v11)
      {
        OUTLINED_FUNCTION_1_2();
        v16 = sub_27544116C(v13, v14, v15);
        v10 = OUTLINED_FUNCTION_5(v16, v17, v18, v19, v20, v21, v22, v23, v25);
      }

      OUTLINED_FUNCTION_2_2(v10);
    }

    OUTLINED_FUNCTION_4();
  }

  while (!v12);
  return v4;
}

uint64_t sub_2753F4414(double *a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return MEMORY[0x277D84F90];
  }

  v2 = *a1;
  v3 = a1[1];
  v4 = (a2 + 32);
  v5 = MEMORY[0x277D84F90];
  do
  {
    v6 = *v4;
    v7 = v4[1];
    if (v7 >= v2 && v3 >= v7)
    {
      if ((OUTLINED_FUNCTION_6() & 1) == 0)
      {
        v9 = *(v5 + 16);
        v10 = OUTLINED_FUNCTION_0_6();
        sub_27544116C(v10, v11, v12);
      }

      OUTLINED_FUNCTION_3_2();
      v13 = v28;
      if (v14)
      {
        OUTLINED_FUNCTION_1_2();
        v19 = sub_27544116C(v16, v17, v18);
        v13 = OUTLINED_FUNCTION_5(v19, v20, v21, v22, v23, v24, v25, v26, v28);
      }

      OUTLINED_FUNCTION_2_2(v13);
    }

    OUTLINED_FUNCTION_4();
  }

  while (!v15);
  return v5;
}

uint64_t sub_2753F44D8(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    result = sub_27544FB58(a5 >> 1, -result, a4);
    if (v6)
    {
      v7 = a4;
    }

    else
    {
      v7 = result;
    }

    if (v7 >= a4)
    {
      v8 = sub_27543386C(a4);
      swift_unknownObjectRelease();
      return v8;
    }
  }

  __break(1u);
  return result;
}

uint64_t *sub_2753F4590(uint64_t *result)
{
  v1 = result[2];
  v2 = result[3] >> 1;
  v3 = v2 - v1;
  if (__OFSUB__(v2, v1))
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  v4 = result[6];
  v5 = result[7] >> 1;
  if (__OFSUB__(v5, v4))
  {
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
    return result;
  }

  v29 = result[6];
  v30 = result[2];
  v6 = *result;
  v7 = result[5];
  v27 = v7;
  v28 = result[1];
  if (v5 - v4 >= v3)
  {
    v8 = v3;
  }

  else
  {
    v8 = v5 - v4;
  }

  v31 = MEMORY[0x277D84F90];
  result = sub_27544114C(0, v8 & ~(v8 >> 63), 0);
  if (v8 < 0)
  {
    goto LABEL_43;
  }

  swift_unknownObjectRetain();
  result = swift_unknownObjectRetain();
  if (v8)
  {
    v10 = v29;
    v9 = v30;
    v11 = v29;
    v12 = v30;
    v14 = v27;
    v13 = v28;
    while (v2 != v12)
    {
      if (v12 >= v2)
      {
        goto LABEL_36;
      }

      if (v5 == v11)
      {
        goto LABEL_37;
      }

      if (v11 >= v5)
      {
        goto LABEL_38;
      }

      v15 = *(v13 + 8 * v12);
      v16 = *(v14 + 8 * v11);
      v18 = *(v31 + 16);
      v17 = *(v31 + 24);
      if (v18 >= v17 >> 1)
      {
        result = sub_27544114C((v17 > 1), v18 + 1, 1);
        v14 = v27;
        v13 = v28;
        v10 = v29;
        v9 = v30;
      }

      *(v31 + 16) = v18 + 1;
      *(v31 + 8 * v18 + 32) = v16 - v15;
      ++v11;
      ++v12;
      if (!--v8)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  v10 = v29;
  v9 = v30;
  v11 = v29;
  v12 = v30;
  v14 = v27;
  v13 = v28;
LABEL_18:
  v19 = v11;
  for (i = v12; v2 != i; ++i)
  {
    if (v12 < v9 || i >= v2)
    {
      goto LABEL_39;
    }

    if (v5 == v19)
    {
      break;
    }

    if (v11 < v10 || v19 >= v5)
    {
      goto LABEL_40;
    }

    v23 = *(v13 + 8 * i);
    v24 = *(v14 + 8 * v19);
    v26 = *(v31 + 16);
    v25 = *(v31 + 24);
    if (v26 >= v25 >> 1)
    {
      result = sub_27544114C((v25 > 1), v26 + 1, 1);
      v14 = v27;
      v13 = v28;
      v10 = v29;
      v9 = v30;
    }

    *(v31 + 16) = v26 + 1;
    *(v31 + 8 * v26 + 32) = v24 - v23;
    ++v19;
  }

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v31;
}

void *sub_2753F47D0(void *result)
{
  v1 = result[3];
  v2 = result[4] >> 1;
  v3 = v2 - v1;
  if (__OFSUB__(v2, v1))
  {
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
    return result;
  }

  v4 = *result;
  v5 = result[1];
  v27 = result[2];
  v28 = result[3];
  v26 = *(*result + 16);
  if (v3 >= v26)
  {
    v6 = *(*result + 16);
  }

  else
  {
    v6 = v2 - v1;
  }

  v29 = MEMORY[0x277D84F90];
  result = sub_27544112C(0, v6 & ~(v6 >> 63), 0);
  if (v3 < 0)
  {
    goto LABEL_37;
  }

  if (v6)
  {
    v7 = (v4 + 32);

    result = swift_unknownObjectRetain();
    v9 = v26;
    v8 = v27;
    v10 = v26;
    v11 = v6;
    v12 = v28;
    v13 = v28;
    while (v10)
    {
      if (v2 == v13)
      {
        goto LABEL_31;
      }

      if (v13 >= v2)
      {
        goto LABEL_32;
      }

      v14 = *(v8 + 8 * v13);
      v15 = *v7;
      v17 = *(v29 + 16);
      v16 = *(v29 + 24);
      if (v17 >= v16 >> 1)
      {
        result = sub_27544112C((v16 > 1), v17 + 1, 1);
        v9 = v26;
        v8 = v27;
        v12 = v28;
      }

      *(v29 + 16) = v17 + 1;
      v18 = v29 + 2 * v17;
      *(v18 + 32) = v15 > 0.0;
      *(v18 + 33) = v14 > 0.0;
      ++v7;
      --v10;
      ++v13;
      if (!--v11)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  result = swift_unknownObjectRetain();
  v8 = v27;
  v12 = v28;
  v13 = v28;
  v9 = v26;
LABEL_16:
  for (i = v13; v9 != v6; ++i)
  {
    if (v6 >= v9)
    {
      goto LABEL_33;
    }

    if (__OFADD__(v6, 1))
    {
      goto LABEL_34;
    }

    if (v2 == i)
    {
      break;
    }

    if (v13 < v12 || i >= v2)
    {
      goto LABEL_35;
    }

    v21 = *(v4 + 32 + 8 * v6);
    v22 = *(v8 + 8 * i);
    v24 = *(v29 + 16);
    v23 = *(v29 + 24);
    if (v24 >= v23 >> 1)
    {
      result = sub_27544112C((v23 > 1), v24 + 1, 1);
      v9 = v26;
      v8 = v27;
      v12 = v28;
    }

    *(v29 + 16) = v24 + 1;
    v25 = v29 + 2 * v24;
    *(v25 + 32) = v21 > 0.0;
    *(v25 + 33) = v22 > 0.0;
    ++v6;
  }

  swift_unknownObjectRelease();

  return v29;
}

uint64_t sub_2753F4A34(uint64_t a1)
{
  sub_2753F4A90();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_2753F4A90()
{
  if (!qword_2809DAE10)
  {
    sub_2753F4BA0(255, &qword_2809DAE18, &_s13LoudnessValueVN, MEMORY[0x277D83F98]);
    sub_2753F4B24();
    v0 = sub_27546E780();
    if (!v1)
    {
      atomic_store(v0, &qword_2809DAE10);
    }
  }
}

unint64_t sub_2753F4B24()
{
  result = qword_2809DAE20;
  if (!qword_2809DAE20)
  {
    sub_2753F4BA0(255, &qword_2809DAE18, &_s13LoudnessValueVN, MEMORY[0x277D83F98]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DAE20);
  }

  return result;
}

void sub_2753F4BA0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t OUTLINED_FUNCTION_6()
{

  return swift_isUniquelyReferenced_nonNull_native();
}

unint64_t sub_2753F4C78()
{
  result = qword_2809DAE30;
  if (!qword_2809DAE30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DAE30);
  }

  return result;
}

double sub_2753F4CEC@<D0>(double *a1@<X0>, uint64_t a2@<X8>)
{
  result = *a1;
  *a2 = *a1;
  *(a2 + 8) = 0;
  return result;
}

double sub_2753F4CFC@<D0>(void *a1@<X8>)
{
  result = *v1;
  *a1 = *v1;
  return result;
}

unint64_t sub_2753F4E24()
{
  result = qword_2809DAE38;
  if (!qword_2809DAE38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DAE38);
  }

  return result;
}

double *sub_2753F4E7C(double *result, uint64_t a2, char a3, double a4, double a5, double a6)
{
  v6 = a2;
  if (a3)
  {
    v7 = a4 + a6;
LABEL_5:
    *result = v7;
    return v6;
  }

  v6 = a2 + 1;
  if (!__OFADD__(a2, 1))
  {
    v7 = v6 * a6 + a5;
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

unint64_t sub_2753F4ED4(uint64_t a1)
{
  *(a1 + 8) = sub_2753F4F04();
  result = sub_2753F4F58();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_2753F4F04()
{
  result = qword_2809DAE40;
  if (!qword_2809DAE40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DAE40);
  }

  return result;
}

unint64_t sub_2753F4F58()
{
  result = qword_2809DAE48;
  if (!qword_2809DAE48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DAE48);
  }

  return result;
}

unint64_t sub_2753F4FB0()
{
  result = qword_2809DAE50;
  if (!qword_2809DAE50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DAE50);
  }

  return result;
}

__n128 __swift_memcpy33_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_2753F504C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 33))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2753F506C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 33) = v3;
  return result;
}

unint64_t sub_2753F50B0()
{
  result = qword_2809DAE58;
  if (!qword_2809DAE58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DAE58);
  }

  return result;
}

unint64_t sub_2753F5104(uint64_t a1)
{
  *(a1 + 8) = sub_2753F5134();
  result = sub_2753F5188();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_2753F5134()
{
  result = qword_2809DAE60;
  if (!qword_2809DAE60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DAE60);
  }

  return result;
}

unint64_t sub_2753F5188()
{
  result = qword_2809DAE68;
  if (!qword_2809DAE68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DAE68);
  }

  return result;
}

unint64_t sub_2753F51E0()
{
  result = qword_2809DAE70;
  if (!qword_2809DAE70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DAE70);
  }

  return result;
}

unint64_t sub_2753F5258()
{
  result = qword_2809DAE78;
  if (!qword_2809DAE78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DAE78);
  }

  return result;
}

unint64_t sub_2753F52AC(uint64_t a1)
{
  *(a1 + 8) = sub_2753F52DC();
  result = sub_2753F5330();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_2753F52DC()
{
  result = qword_2809DAE80;
  if (!qword_2809DAE80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DAE80);
  }

  return result;
}

unint64_t sub_2753F5330()
{
  result = qword_2809DAE88;
  if (!qword_2809DAE88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DAE88);
  }

  return result;
}

unint64_t sub_2753F5388()
{
  result = qword_2809DAE90;
  if (!qword_2809DAE90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DAE90);
  }

  return result;
}

unint64_t sub_2753F5400()
{
  result = qword_2809DAE98;
  if (!qword_2809DAE98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DAE98);
  }

  return result;
}

__n128 __swift_memcpy57_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 41) = *(a2 + 41);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_2753F5470(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 57))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2753F5490(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 57) = v3;
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

uint64_t sub_2753F5500(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 49))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2753F5520(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 49) = v3;
  return result;
}

uint64_t sub_2753F5574()
{
  v2 = *v0;
  v1 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  v5 = *(v0 + 32);
  OUTLINED_FUNCTION_6_0();
  v6 = *(v0 + 40);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_5_0();
  v9 = v8 | (v7 << 32);
  v10 = *(v0 + 56);
  v11 = *(v0 + 48);
  switch(v10 >> 6)
  {
    case 1u:
      v23 = &_s26SongStructureDownbeatEventVN;
      v24 = &off_2884127B0;
      v17 = swift_allocObject();
      *&v22 = v17;
      *(v17 + 16) = v2;
      *(v17 + 24) = v1;
      *(v17 + 32) = v4;
      *(v17 + 40) = v3;
      *(v17 + 48) = v5 & 1;
      *(OUTLINED_FUNCTION_3_3(v17) + 64) = v11 & 1;
      break;
    case 2u:
      v23 = &_s33SongStructureSegmentBoundaryEventVN;
      v24 = &off_288412AF0;
      v15 = swift_allocObject();
      *(OUTLINED_FUNCTION_2_3(v15) + 56) = v6 & 1;
      break;
    case 3u:
      v23 = &_s33SongStructureSectionBoundaryEventVN;
      v24 = &off_288412A08;
      v16 = swift_allocObject();
      OUTLINED_FUNCTION_2_3(v16);
      break;
    default:
      v21 = v10 & 0x3F;
      v23 = &_s22SongStructureBeatEventVN;
      v24 = &off_2884126F8;
      v12 = swift_allocObject();
      v13 = OUTLINED_FUNCTION_2_3(v12);
      v14 = OUTLINED_FUNCTION_3_3(v13);
      *(v14 + 64) = v11;
      *(v14 + 71) = BYTE6(v9);
      *(v14 + 69) = WORD2(v9);
      *(v14 + 65) = v9;
      *(v14 + 72) = v21;
      break;
  }

  sub_2753F16E0(&v22, v25);
  v19 = v26;
  v18 = v27;
  __swift_project_boxed_opaque_existential_1(v25, v26);
  (*(*(v18 + 8) + 8))(v19);
  return __swift_destroy_boxed_opaque_existential_1(v25);
}

uint64_t sub_2753F5774()
{
  v2 = *v0;
  v1 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  v5 = *(v0 + 32);
  OUTLINED_FUNCTION_6_0();
  v6 = *(v0 + 40);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_5_0();
  v9 = v8 | (v7 << 32);
  v10 = *(v0 + 56);
  v11 = *(v0 + 48);
  switch(v10 >> 6)
  {
    case 1u:
      v24 = &_s26SongStructureDownbeatEventVN;
      v25 = &off_2884127B0;
      v17 = swift_allocObject();
      *&v23 = v17;
      *(v17 + 16) = v2;
      *(v17 + 24) = v1;
      *(v17 + 32) = v4;
      *(v17 + 40) = v3;
      *(v17 + 48) = v5 & 1;
      *(OUTLINED_FUNCTION_4_0(v17) + 64) = v11 & 1;
      break;
    case 2u:
      v24 = &_s33SongStructureSegmentBoundaryEventVN;
      v25 = &off_288412AF0;
      v15 = swift_allocObject();
      *(OUTLINED_FUNCTION_1_3(v15) + 56) = v6 & 1;
      break;
    case 3u:
      v24 = &_s33SongStructureSectionBoundaryEventVN;
      v25 = &off_288412A08;
      v16 = swift_allocObject();
      OUTLINED_FUNCTION_1_3(v16);
      break;
    default:
      v22 = v10 & 0x3F;
      v24 = &_s22SongStructureBeatEventVN;
      v25 = &off_2884126F8;
      v12 = swift_allocObject();
      v13 = OUTLINED_FUNCTION_1_3(v12);
      v14 = OUTLINED_FUNCTION_4_0(v13);
      *(v14 + 64) = v11;
      *(v14 + 71) = BYTE6(v9);
      *(v14 + 69) = WORD2(v9);
      *(v14 + 65) = v9;
      *(v14 + 72) = v22;
      break;
  }

  sub_2753F16E0(&v23, v26);
  v18 = v27;
  v19 = v28;
  __swift_project_boxed_opaque_existential_1(v26, v27);
  v20 = (*(v19 + 16))(v18, v19);
  __swift_destroy_boxed_opaque_existential_1(v26);
  return v20;
}

uint64_t _s18SongStructureEventOwCP(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  *a1 = *a2;

  return v2 + 16;
}

uint64_t _s18SongStructureEventOwet(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7D && *(a1 + 57))
    {
      v2 = *a1 + 124;
    }

    else
    {
      v2 = ((*(a1 + 56) >> 6) & 0xFFFFFF83 | (4 * ((*(a1 + 56) >> 1) & 0x1F))) ^ 0x7F;
      if (v2 >= 0x7C)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return v2 + 1;
}

uint64_t _s18SongStructureEventOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7C)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 - 125;
    if (a3 >= 0x7D)
    {
      *(result + 57) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7D)
    {
      *(result + 57) = 0;
    }

    if (a2)
    {
      *(result + 48) = 0;
      *(result + 16) = 0u;
      *(result + 32) = 0u;
      *result = 0u;
      *(result + 56) = 2 * (((-a2 >> 2) & 0x1F) - 32 * a2);
    }
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_1_3(uint64_t result)
{
  *(result + 16) = v6;
  *(result + 24) = v4;
  *(result + 32) = v3;
  *(result + 40) = v2;
  *(result + 48) = v1;
  *(result + 55) = BYTE6(v5);
  *(result + 53) = WORD2(v5);
  *(result + 49) = v5;
  return result;
}

uint64_t OUTLINED_FUNCTION_2_3(uint64_t result)
{
  *(result + 16) = v6;
  *(result + 24) = v4;
  *(result + 32) = v3;
  *(result + 40) = v2;
  *(result + 48) = v1;
  *(result + 55) = BYTE6(v5);
  *(result + 53) = WORD2(v5);
  *(result + 49) = v5;
  return result;
}

uint64_t OUTLINED_FUNCTION_3_3(uint64_t result)
{
  *(result + 56) = v1;
  *(result + 63) = BYTE6(v2);
  *(result + 61) = WORD2(v2);
  *(result + 57) = v2;
  return result;
}

uint64_t OUTLINED_FUNCTION_4_0(uint64_t result)
{
  *(result + 56) = v1;
  *(result + 63) = BYTE6(v2);
  *(result + 61) = WORD2(v2);
  *(result + 57) = v2;
  return result;
}

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_2753F5BB0(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 40))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2753F5BD0(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 40) = v3;
  return result;
}

uint64_t sub_2753F5C24(uint64_t a1, uint64_t a2)
{
  (*(a2 + 16))(v15);
  v4 = v15[4];
  __swift_project_boxed_opaque_existential_1(v15, v15[3]);
  OUTLINED_FUNCTION_0_0(v4);
  v5 = OUTLINED_FUNCTION_0_7();
  v7 = v6(v5);
  (*(a2 + 24))(v12, a1, a2);
  v8 = v13;
  v9 = v14;
  __swift_project_boxed_opaque_existential_1(v12, v13);
  OUTLINED_FUNCTION_0_0(v9);
  result = v10(v8, v9);
  if (result < v7)
  {
    __break(1u);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(v12);
    __swift_destroy_boxed_opaque_existential_1(v15);
    return v7;
  }

  return result;
}

uint64_t sub_2753F5D20@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  v5 = v4;
  v50 = *(a2 - 8);
  v10 = *(v50 + 64);
  v11 = MEMORY[0x28223BE20]();
  v49 = &v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = v11[3];
  v14 = v11[4];
  __swift_project_boxed_opaque_existential_1(v11, v13);
  v15 = sub_2753F5C24(v13, v14);
  v17 = v16;
  v51 = *(a3 + 24);
  v52 = v5;
  v18 = OUTLINED_FUNCTION_0_7();
  v19(v18);
  v21 = v54;
  v20 = v55;
  __swift_project_boxed_opaque_existential_1(v53, v54);
  OUTLINED_FUNCTION_0_0(v20);
  v23 = v22(v21, v20);
  if (v23 >= v15)
  {
    v25 = v23;
    result = __swift_destroy_boxed_opaque_existential_1(v53);
    if (v17 >= v25)
    {
      v26 = a1[3];
      v27 = a1[4];
      __swift_project_boxed_opaque_existential_1(a1, v26);
      v28 = sub_2753F5C24(v26, v27);
      v48 = v29;
      v30 = *(a3 + 16);
      v31 = OUTLINED_FUNCTION_0_7();
      v47 = v32;
      v32(v31);
      v33 = v54;
      v34 = v55;
      __swift_project_boxed_opaque_existential_1(v53, v54);
      OUTLINED_FUNCTION_0_0(v34);
      v36 = v35(v33, v34);
      if (v36 >= v28)
      {
        v37 = v36;
        __swift_destroy_boxed_opaque_existential_1(v53);
        if (v48 >= v37)
        {
          v42 = v49;
          v43 = v50;
          (*(v50 + 16))(v49, v52, a2);
          v44 = OUTLINED_FUNCTION_0_7();
          v47(v44);
          v45 = OUTLINED_FUNCTION_0_7();
          v51(v45);
          return (*(v43 + 8))(v42, a2);
        }
      }

      else
      {
        __swift_destroy_boxed_opaque_existential_1(v53);
      }

      v38 = a1[3];
      v39 = a1[4];
      __swift_project_boxed_opaque_existential_1(a1, v38);
      (*(v39 + 16))(v38, v39);
      v40 = OUTLINED_FUNCTION_0_7();
      return v41(v40);
    }
  }

  else
  {
    result = __swift_destroy_boxed_opaque_existential_1(v53);
  }

  a4[3] = 0u;
  a4[4] = 0u;
  a4[1] = 0u;
  a4[2] = 0u;
  *a4 = 0u;
  return result;
}

uint64_t sub_2753F6044(void *a1, void *a2)
{
  v4 = a1[3];
  v5 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v4);
  v6 = (*(v5 + 16))(v4, v5);
  v7 = a1[9];
  __swift_project_boxed_opaque_existential_1(a1 + 5, a1[8]);
  v8 = OUTLINED_FUNCTION_0_8();
  result = v9(v8);
  if (result < v6)
  {
    __break(1u);
    goto LABEL_10;
  }

  v11 = result;
  v12 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  v13 = OUTLINED_FUNCTION_0_8();
  v15 = v14(v13);
  v16 = a2[8];
  v17 = a2[9];
  __swift_project_boxed_opaque_existential_1(a2 + 5, v16);
  result = (*(v17 + 16))(v16, v17);
  if (result < v15)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  return v6 == v15 && v11 == result;
}

uint64_t sub_2753F6178(void *a1, void *a2)
{
  v4 = a1[3];
  v5 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v4);
  v6 = (*(v5 + 16))(v4, v5);
  v7 = a1[9];
  __swift_project_boxed_opaque_existential_1(a1 + 5, a1[8]);
  v8 = OUTLINED_FUNCTION_0_8();
  result = v9(v8);
  if (result < v6)
  {
    __break(1u);
    goto LABEL_10;
  }

  v11 = result;
  v12 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  v13 = OUTLINED_FUNCTION_0_8();
  v15 = v14(v13);
  v16 = a2[8];
  v17 = a2[9];
  __swift_project_boxed_opaque_existential_1(a2 + 5, v16);
  result = (*(v17 + 16))(v16, v17);
  if (result < v15)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  return v6 == v15 && v11 == result;
}

uint64_t sub_2753F62B8()
{
  v1 = v0[3];
  v2 = v0[4];
  OUTLINED_FUNCTION_4_1(v0, v1);
  v15[3] = v1;
  v3 = *(v2 + 8);
  v15[4] = v3;
  __swift_allocate_boxed_opaque_existential_1(v15);
  OUTLINED_FUNCTION_0_9(v1);
  (*(v4 + 16))();
  v5 = (*(v3 + 16))(v1, v3);
  v6 = v0[8];
  v7 = v0[9];
  OUTLINED_FUNCTION_4_1(v0 + 5, v6);
  v13[3] = v6;
  v14 = *(v7 + 8);
  v8 = v14;
  __swift_allocate_boxed_opaque_existential_1(v13);
  OUTLINED_FUNCTION_0_9(v6);
  v10 = *(v9 + 16);
  OUTLINED_FUNCTION_9();
  v11();
  result = (*(v8 + 16))(v6, v8);
  if (result < v5)
  {
    __break(1u);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(v13);
    __swift_destroy_boxed_opaque_existential_1(v15);
    return v5;
  }

  return result;
}

unint64_t sub_2753F6400(uint64_t a1)
{
  v216[5] = *MEMORY[0x277D85DE8];
  if (!*(a1 + 16))
  {
    v4 = MEMORY[0x277D84F90];
    goto LABEL_37;
  }

  sub_2753F6E08(a1 + 32, v215);
  sub_2753F161C(v215, v214);
  sub_2753F161C(v216, v213);
  sub_2753F62B8();
  v4 = v3;
  v5 = sub_2753F62B8();
  v6 = v4 - v5;
  if (__OFSUB__(v4, v5))
  {
    goto LABEL_44;
  }

  sub_2753F75D8(0, &qword_2809DAEA0, &_s7SongBarVN, MEMORY[0x277D84560]);
  v183 = v7;
  v8 = swift_allocObject();
  v176 = xmmword_275474500;
  *(v8 + 16) = xmmword_275474500;
  sub_2753F6E08(v215, v8 + 32);
  v9 = sub_27540B08C(v203);
  v10 = *v203;
  sub_27540B090(__src, v9);
  v11 = *__src - v10;

  v12 = sub_27544FBA0(1, a1);
  v4 = (v15 >> 1) - v14;
  v172 = v12;
  if (v15 >> 1 != v14)
  {
    if ((v15 >> 1) <= v14)
    {
      goto LABEL_45;
    }

    v187 = MEMORY[0x277D84F90];
    v27 = v13 + 80 * v14;
    while (1)
    {
      sub_2753F6E08(v27, v207);
      v28 = v208;
      v29 = __swift_project_boxed_opaque_existential_1(v207, v208);
      OUTLINED_FUNCTION_7_0(v29, v30, v31, v32, v33, v34, v35, v36, v168, v172, v176, *(&v176 + 1), v183, v187, v193, v198, *__src, *&__src[8], *&__src[16], *&__src[24], *&__src[32]);
      OUTLINED_FUNCTION_0_9(v28);
      (*(v37 + 16))();
      v38 = *&__src[24];
      v39 = __swift_project_boxed_opaque_existential_1(__src, *&__src[24]);
      OUTLINED_FUNCTION_1_4(v39, v40, v41, v42, v43, v44, v45, v46, v169, v173, v177, v180, v184, v189, v194, v199, *__src, *&__src[8], *&__src[16], *&__src[24], *&__src[32], *&__src[40], *&__src[48], *&__src[56], *&__src[64], *&__src[72], *&__src[80], *&__src[88], *&__src[96], v203[0], v203[1], v203[2], v203[3], v203[4]);
      OUTLINED_FUNCTION_0_9(v38);
      v48 = *(v47 + 16);
      OUTLINED_FUNCTION_10();
      v49();
      __swift_destroy_boxed_opaque_existential_1(__src);
      v50 = *(v1 + 8);
      v51 = OUTLINED_FUNCTION_5_1();
      v52(v51);
      __swift_destroy_boxed_opaque_existential_1(v203);
      v53 = *&v200;
      v54 = v211;
      v55 = __swift_project_boxed_opaque_existential_1(v210, v211);
      OUTLINED_FUNCTION_7_0(v55, v56, v57, v58, v59, v60, v61, v62, v170, v174, v178, v181, v185, v190, v195, v200, *__src, *&__src[8], *&__src[16], *&__src[24], *&__src[32]);
      OUTLINED_FUNCTION_0_9(v54);
      (*(v63 + 16))();
      v64 = *&__src[24];
      v65 = __swift_project_boxed_opaque_existential_1(__src, *&__src[24]);
      OUTLINED_FUNCTION_1_4(v65, v66, v67, v68, v69, v70, v71, v72, v171, v175, v179, v182, v186, v191, v196, v201, *__src, *&__src[8], *&__src[16], *&__src[24], *&__src[32], *&__src[40], *&__src[48], *&__src[56], *&__src[64], *&__src[72], *&__src[80], *&__src[88], *&__src[96], v203[0], v203[1], v203[2], v203[3], v203[4]);
      OUTLINED_FUNCTION_0_9(v64);
      v74 = *(v73 + 16);
      OUTLINED_FUNCTION_10();
      v75();
      __swift_destroy_boxed_opaque_existential_1(__src);
      v76 = *(v1 + 8);
      v77 = OUTLINED_FUNCTION_5_1();
      v78(v77);
      __swift_destroy_boxed_opaque_existential_1(v203);
      if (vabdd_f64(*__src - v53, v11) > 0.040000001)
      {
        goto LABEL_23;
      }

      v197 = v27;
      v79 = v4;
      v4 = v6;
      v80 = v208;
      v81 = __swift_project_boxed_opaque_existential_1(v207, v208);
      OUTLINED_FUNCTION_1_4(v81, v82, v83, v84, v85, v86, v87, v88, v168, v172, v176, *(&v176 + 1), v183, v187, v197, v198, *__src, *&__src[8], *&__src[16], *&__src[24], *&__src[32], *&__src[40], *&__src[48], *&__src[56], *&__src[64], *&__src[72], *&__src[80], *&__src[88], *&__src[96], v203[0], v203[1], v203[2], v203[3], v203[4]);
      OUTLINED_FUNCTION_0_9(v80);
      v90 = *(v89 + 16);
      OUTLINED_FUNCTION_10();
      v91();
      v92 = *(v1 + 16);
      v93 = OUTLINED_FUNCTION_5_1();
      v95 = v94(v93);
      v97 = v211;
      v96 = v212;
      OUTLINED_FUNCTION_4_1(v210, v211);
      *&__src[24] = v97;
      *&__src[32] = *(v96 + 8);
      v98 = *&__src[32];
      __swift_allocate_boxed_opaque_existential_1(__src);
      OUTLINED_FUNCTION_0_9(v97);
      v100 = *(v99 + 16);
      OUTLINED_FUNCTION_10();
      v101();
      v102 = (*(v98 + 16))(v97, v98);
      if (v102 < v95)
      {
        goto LABEL_41;
      }

      v103 = v102;
      __swift_destroy_boxed_opaque_existential_1(__src);
      __swift_destroy_boxed_opaque_existential_1(v203);
      v105 = v208;
      v104 = v209;
      OUTLINED_FUNCTION_4_1(v207, v208);
      v203[3] = v105;
      v203[4] = *(v104 + 8);
      v106 = v203[4];
      __swift_allocate_boxed_opaque_existential_1(v203);
      OUTLINED_FUNCTION_0_9(v105);
      (*(v107 + 16))();
      v1 = (*(v106 + 16))(v105, v106);
      v109 = v211;
      v108 = v212;
      __swift_project_boxed_opaque_existential_1(v210, v211);
      *&__src[24] = v109;
      *&__src[32] = *(v108 + 8);
      v110 = *&__src[32];
      __swift_allocate_boxed_opaque_existential_1(__src);
      OUTLINED_FUNCTION_0_9(v109);
      (*(v111 + 16))();
      if ((*(v110 + 16))(v109, v110) < v1)
      {
        goto LABEL_42;
      }

      __swift_destroy_boxed_opaque_existential_1(__src);
      __swift_destroy_boxed_opaque_existential_1(v203);
      if (__OFSUB__(v103, v1))
      {
        goto LABEL_43;
      }

      v4 = v79;
      v27 = v193;
      if (v103 - v1 == v6)
      {
        sub_2753F6E08(v207, v203);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v154 = *(v8 + 16);
          v155 = OUTLINED_FUNCTION_6_1();
          sub_2754313E8(v155, v156, v157, v8);
          v8 = v158;
        }

        v113 = *(v8 + 16);
        v112 = *(v8 + 24);
        if (v113 >= v112 >> 1)
        {
          v159 = OUTLINED_FUNCTION_2_4(v112);
          sub_2754313E8(v159, v160, v161, v8);
          v8 = v162;
        }

        __swift_destroy_boxed_opaque_existential_1(v213);
        *(v8 + 16) = v113 + 1;
        memcpy((v8 + 80 * v113 + 32), v203, 0x50uLL);
      }

      else
      {
LABEL_23:
        v114 = *(v8 + 16);

        if (v114 < 5)
        {
          __swift_destroy_boxed_opaque_existential_1(v214);
        }

        else
        {
          OUTLINED_FUNCTION_3_4();
          sub_2753F161C(v214, v203);
          v115 = sub_2753F161C(v213, &v203[5]);
          OUTLINED_FUNCTION_8(v115, v116, v117, v118, v119, v120, v121, v122, v168, v172, v176, *(&v176 + 1), v183, v187, v193, v198, __src[0], *&__src[8], *&__src[16], *&__src[24], *&__src[32], *&__src[40], *&__src[48], *&__src[56], *&__src[64], *&__src[72], *&__src[80], *&__src[88], *&__src[96], v203[0], v203[1], v203[2], v203[3], v203[4], v203[5], v203[6], v203[7], v203[8], v203[9], v204, v205, v206);
          v123 = v192;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v151 = *(v192 + 16);
            OUTLINED_FUNCTION_6_1();
            sub_275431328();
            v123 = v152;
          }

          v125 = *(v123 + 16);
          v124 = *(v123 + 24);
          if (v125 >= v124 >> 1)
          {
            OUTLINED_FUNCTION_2_4(v124);
            sub_275431328();
            v123 = v153;
          }

          sub_2753F7504(v203);
          __swift_destroy_boxed_opaque_existential_1(v214);
          *(v123 + 16) = v125 + 1;
          v187 = v123;
          memcpy((v123 + 104 * v125 + 32), __src, 0x61uLL);
        }

        sub_2753F161C(v207, v214);
        v127 = v208;
        v126 = v209;
        OUTLINED_FUNCTION_4_1(v207, v208);
        v203[3] = v127;
        v203[4] = *(v126 + 8);
        v128 = v203[4];
        __swift_allocate_boxed_opaque_existential_1(v203);
        OUTLINED_FUNCTION_0_9(v127);
        v130 = *(v129 + 16);
        OUTLINED_FUNCTION_9();
        v131();
        v132 = (*(v128 + 16))(v127, v128);
        v134 = v211;
        v133 = v212;
        OUTLINED_FUNCTION_4_1(v210, v211);
        *&__src[24] = v134;
        *&__src[32] = *(v133 + 8);
        v135 = *&__src[32];
        __swift_allocate_boxed_opaque_existential_1(__src);
        OUTLINED_FUNCTION_0_9(v134);
        (*(v136 + 16))();
        v137 = (*(v135 + 16))(v134, v135);
        if (v137 < v132)
        {
          __break(1u);
LABEL_39:
          __break(1u);
LABEL_40:
          __break(1u);
LABEL_41:
          __break(1u);
LABEL_42:
          __break(1u);
LABEL_43:
          __break(1u);
LABEL_44:
          __break(1u);
LABEL_45:
          __break(1u);
LABEL_46:
          v165 = *(v4 + 16);
          OUTLINED_FUNCTION_6_1();
          sub_275431328();
          v4 = v166;
LABEL_7:
          v26 = *(v4 + 16);
          v25 = *(v4 + 24);
          if (v26 >= v25 >> 1)
          {
            OUTLINED_FUNCTION_2_4(v25);
            sub_275431328();
            v4 = v167;
          }

          sub_2753F7504(v203);
          __swift_destroy_boxed_opaque_existential_1(v213);
          __swift_destroy_boxed_opaque_existential_1(v214);
          sub_2753F7454(v215);
          *(v4 + 16) = v26 + 1;
          memcpy((v4 + 104 * v26 + 32), __src, 0x61uLL);
          goto LABEL_37;
        }

        v138 = v137;
        __swift_destroy_boxed_opaque_existential_1(__src);
        __swift_destroy_boxed_opaque_existential_1(v203);
        v140 = v208;
        v139 = v209;
        OUTLINED_FUNCTION_4_1(v207, v208);
        v203[3] = v140;
        v203[4] = *(v139 + 8);
        v141 = v203[4];
        __swift_allocate_boxed_opaque_existential_1(v203);
        OUTLINED_FUNCTION_0_9(v140);
        v143 = *(v142 + 16);
        OUTLINED_FUNCTION_9();
        v144();
        v145 = (*(v141 + 16))(v140, v141);
        v147 = v211;
        v146 = v212;
        OUTLINED_FUNCTION_4_1(v210, v211);
        *&__src[24] = v147;
        *&__src[32] = *(v146 + 8);
        v1 = *&__src[32];
        __swift_allocate_boxed_opaque_existential_1(__src);
        OUTLINED_FUNCTION_0_9(v147);
        v149 = *(v148 + 16);
        OUTLINED_FUNCTION_9();
        v150();
        if ((*(v1 + 16))(v147, v1) < v145)
        {
          goto LABEL_39;
        }

        __swift_destroy_boxed_opaque_existential_1(__src);
        __swift_destroy_boxed_opaque_existential_1(v203);
        v6 = v138 - v145;
        if (__OFSUB__(v138, v145))
        {
          goto LABEL_40;
        }

        v8 = swift_allocObject();
        *(v8 + 16) = v176;
        sub_2753F6E08(v207, v8 + 32);
        __swift_destroy_boxed_opaque_existential_1(v213);
      }

      sub_2753F161C(v210, v213);
      v11 = sub_2753F71E0(v8);
      sub_2753F7454(v207);
      v27 += 80;
      if (!--v4)
      {
        goto LABEL_5;
      }
    }
  }

  v187 = MEMORY[0x277D84F90];
LABEL_5:
  swift_unknownObjectRelease();
  v16 = *(v8 + 16);

  if (v16 >= 5)
  {
    OUTLINED_FUNCTION_3_4();
    sub_2753F161C(v214, v203);
    v17 = sub_2753F161C(v213, &v203[5]);
    OUTLINED_FUNCTION_8(v17, v18, v19, v20, v21, v22, v23, v24, v168, v172, v176, *(&v176 + 1), v183, v187, v193, v198, __src[0], *&__src[8], *&__src[16], *&__src[24], *&__src[32], *&__src[40], *&__src[48], *&__src[56], *&__src[64], *&__src[72], *&__src[80], *&__src[88], *&__src[96], v203[0], v203[1], v203[2], v203[3], v203[4], v203[5], v203[6], v203[7], v203[8], v203[9], v204, v205, v206);
    v4 = v188;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      goto LABEL_46;
    }

    goto LABEL_7;
  }

  __swift_destroy_boxed_opaque_existential_1(v213);
  __swift_destroy_boxed_opaque_existential_1(v214);
  sub_2753F7454(v215);
  v4 = v187;
LABEL_37:
  v163 = *MEMORY[0x277D85DE8];
  return v4;
}

char *sub_2753F6E64@<X0>(char *result@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = *(a2 + 16);
  if (v4)
  {
    v5 = result;
    v6 = a2 + 32;
    while (1)
    {
      sub_2753F74A8(v6, __src);
      v7 = __src[3];
      v8 = __src[4];
      __swift_project_boxed_opaque_existential_1(__src, __src[3]);
      v9 = (*(v8 + 16))(v7, v8);
      v10 = __src[8];
      v11 = __src[9];
      __swift_project_boxed_opaque_existential_1(&__src[5], __src[8]);
      result = (*(v11 + 16))(v10, v11);
      v12 = result - 1;
      if (__OFSUB__(result, 1))
      {
        break;
      }

      if (v12 < v9)
      {
        goto LABEL_13;
      }

      if (v9 <= v5 && v12 >= v5)
      {
        return memcpy(a3, __src, 0x61uLL);
      }

      result = sub_2753F7504(__src);
      v6 += 104;
      if (!--v4)
      {
        goto LABEL_11;
      }
    }

    __break(1u);
LABEL_13:
    __break(1u);
  }

  else
  {
LABEL_11:
    *(a3 + 96) = 0;
    a3[4] = 0u;
    a3[5] = 0u;
    a3[2] = 0u;
    a3[3] = 0u;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

uint64_t sub_2753F6F90(char *a1, uint64_t a2)
{
  sub_2753F6E64(a1, a2, &v4);
  if (v5)
  {
    v2 = v6;
    sub_2753F7504(&v4);
  }

  else
  {
    sub_2753F7558(&v4);
    return 0;
  }

  return v2;
}

double sub_2753F6FF0@<D0>(void *a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  sub_2753F8BB4(sub_2753F7628, a2, __src);
  if (*&__src[24])
  {
    memcpy(__dst, __src, 0x61uLL);
    v5 = a1[3];
    v6 = a1[4];
    OUTLINED_FUNCTION_4_1(a1, v5);
    *&__src[24] = &_s22BeatStabilityMapRegionVN;
    *&__src[32] = &off_2884130A8;
    *__src = swift_allocObject();
    sub_2753F74A8(__dst, *__src + 16);
    sub_2753F5D20(__src, v5, v6, a3);
    sub_2753F7504(__dst);
    __swift_destroy_boxed_opaque_existential_1(__src);
  }

  else
  {
    sub_2753F7558(__src);
    result = 0.0;
    a3[3] = 0u;
    a3[4] = 0u;
    a3[1] = 0u;
    a3[2] = 0u;
    *a3 = 0u;
  }

  return result;
}

uint64_t sub_2753F70FC(void *a1, void *a2)
{
  v4 = a1[3];
  v5 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v4);
  v6 = (*(v5 + 16))(v4, v5);
  v7 = a1[8];
  v8 = a1[9];
  __swift_project_boxed_opaque_existential_1(a1 + 5, v7);
  result = (*(v8 + 16))(v7, v8);
  if (result < v6)
  {
    __break(1u);
  }

  else
  {
    v10 = result;
    v11 = a2[3];
    v12 = a2[4];
    __swift_project_boxed_opaque_existential_1(a2, v11);
    sub_2753F5C24(v11, v12);
    return v13 >= v6 && v10 >= v13;
  }

  return result;
}

double sub_2753F71E0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = a1 + 32;
    v3 = 0.0;
    v4 = *(a1 + 16);
    do
    {
      sub_2753F6E08(v2, v32);
      v5 = v33;
      v6 = v34;
      v7 = __swift_project_boxed_opaque_existential_1(v32, v33);
      v26 = v5;
      v27 = *(v6 + 8);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v25);
      (*(*(v5 - 8) + 16))(boxed_opaque_existential_1, v7, v5);
      v9 = v26;
      v10 = v27;
      v11 = __swift_project_boxed_opaque_existential_1(v25, v26);
      v29 = v9;
      v12 = *(v10 + 8);
      v30 = v12;
      v13 = __swift_allocate_boxed_opaque_existential_1(v28);
      (*(*(v9 - 8) + 16))(v13, v11, v9);
      __swift_destroy_boxed_opaque_existential_1(v25);
      (*(v12 + 8))(&v31, v9, v12);
      __swift_destroy_boxed_opaque_existential_1(v28);
      v14 = v31;
      v15 = v36;
      v16 = v37;
      v17 = __swift_project_boxed_opaque_existential_1(v35, v36);
      v26 = v15;
      v27 = *(v16 + 8);
      v18 = __swift_allocate_boxed_opaque_existential_1(v25);
      (*(*(v15 - 8) + 16))(v18, v17, v15);
      v19 = v26;
      v20 = v27;
      v21 = __swift_project_boxed_opaque_existential_1(v25, v26);
      v29 = v19;
      v22 = *(v20 + 8);
      v30 = v22;
      v23 = __swift_allocate_boxed_opaque_existential_1(v28);
      (*(*(v19 - 8) + 16))(v23, v21, v19);
      __swift_destroy_boxed_opaque_existential_1(v25);
      (*(v22 + 8))(v25, v19, v22);
      __swift_destroy_boxed_opaque_existential_1(v28);
      sub_2753F7454(v32);
      v3 = v3 + *v25 - v14;
      v2 += 80;
      --v4;
    }

    while (v4);
  }

  else
  {
    v3 = 0.0;
  }

  return v3 / v1;
}

uint64_t sub_2753F7558(uint64_t a1)
{
  sub_2753F75D8(0, &qword_2809DAEA8, &_s22BeatStabilityMapRegionVN, MEMORY[0x277D83D88]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_2753F75D8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_2753F7648()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  __swift_destroy_boxed_opaque_existential_1((v0 + 56));

  return MEMORY[0x2821FE8E8](v0, 113, 7);
}

uint64_t *OUTLINED_FUNCTION_1_4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34)
{
  a33 = v35;
  a34 = *(v34 + 8);

  return __swift_allocate_boxed_opaque_existential_1(&a30);
}

uint64_t *OUTLINED_FUNCTION_7_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  a20 = v21;
  a21 = *(v22 + 8);

  return __swift_allocate_boxed_opaque_existential_1(&a17);
}

uint64_t OUTLINED_FUNCTION_8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, char a42)
{
  a40 = v42;
  a41 = v44;
  a42 = 0;

  return sub_2753F74A8(&a30, &a17);
}

uint64_t sub_2753F77A0(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 97))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
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

uint64_t sub_2753F77E0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 96) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 97) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 97) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t _s16TempoBinaryRatioOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFE)
  {
    if (a2 + 2 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 2) >> 8 < 0xFF)
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
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 3;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v5 = v6 - 3;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *_s16TempoBinaryRatioOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x2753F79B0);
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

unint64_t sub_2753F79F4()
{
  result = qword_2809DAEB0;
  if (!qword_2809DAEB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DAEB0);
  }

  return result;
}

uint64_t sub_2753F7A70(unsigned __int8 a1)
{
  sub_27546EA90();
  MEMORY[0x277C77BF0](a1);
  return sub_27546EAC0();
}

uint64_t sub_2753F7AE8(double a1)
{
  if (a1 == 0.5)
  {
    return 0;
  }

  if (a1 == 2.0)
  {
    v2 = 2;
  }

  else
  {
    v2 = 3;
  }

  if (a1 == 1.0)
  {
    return 1;
  }

  else
  {
    return v2;
  }
}

_BYTE *_s22TempoBinaryScaleFactorOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x2753F7BF0);
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

unint64_t sub_2753F7C2C()
{
  result = qword_2809DAEB8;
  if (!qword_2809DAEB8)
  {
    sub_2753F7C84();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DAEB8);
  }

  return result;
}

void sub_2753F7C84()
{
  if (!qword_2809DAEC0)
  {
    v0 = sub_27546E640();
    if (!v1)
    {
      atomic_store(v0, &qword_2809DAEC0);
    }
  }
}

uint64_t sub_2753F7CF8@<X0>(double *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_2753F7AE8(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_2753F7D64()
{
  result = qword_2809DAEC8;
  if (!qword_2809DAEC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DAEC8);
  }

  return result;
}

uint64_t _s18TempoCompatibilityOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return v5 + 1;
  }

  if (a2 >= 0x3F)
  {
    if (a2 + 193 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 193) >> 8 < 0xFF)
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
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 194;
    return v5 + 1;
  }

LABEL_17:
  v5 = ((*a1 >> 1) & 0x3E | (*a1 >> 7)) ^ 0x3F;
  if (v5 >= 0x3E)
  {
    v5 = -1;
  }

  return v5 + 1;
}

_BYTE *_s18TempoCompatibilityOwst(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 193 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 193) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0x3F)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0x3E)
  {
    v6 = ((a2 - 63) >> 8) + 1;
    *result = a2 - 63;
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
        JUMPOUT(0x2753F7F28);
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
          *result = 4 * (((-a2 >> 1) & 0x1F) - 32 * a2);
        }

        break;
    }
  }

  return result;
}

BOOL sub_2753F7F90(unsigned __int8 a1, unsigned __int8 a2)
{
  if (a1 > 0xFBu)
  {
    return a2 > 0xFBu;
  }

  if (a2 <= 0xFBu)
  {
    if ((a1 & 0x80) != 0)
    {
      if ((a2 & 0x80) == 0 || ((a2 ^ a1) & 0x7F) != 0)
      {
        return 0;
      }
    }

    else if (a1 != a2)
    {
      return 0;
    }

    return 1;
  }

  return 0;
}

uint64_t sub_2753F7FF0(uint64_t a1, char a2, uint64_t a3, char a4, double a5)
{
  sub_2753F8300(a1, a2 & 1, a3, a4 & 1);
  v11 = v10;
  v12 = COERCE_DOUBLE(sub_2753F860C(v10, a3, a4 & 1));
  v14 = v13;
  if (!sub_2753F865C(*&v12, v13 & 1, a1, a2 & 1))
  {
    v15 = v12;
    if (v14)
    {
      v15 = 60.0 / v12;
    }

    v16 = log(v15);
    v17 = *&a1;
    if (a2)
    {
      v17 = 60.0 / *&a1;
    }

    if (vabdd_f64(v16, log(v17)) <= a5)
    {
      return v11 | 0xFFFFFF80;
    }

    else
    {
      return 252;
    }
  }

  return v11;
}

uint64_t _s17TempoRelationshipOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x3E)
  {
    v2 = a2 + 194;
    if (a2 + 194 >= 0xFFFF00)
    {
      v3 = 4;
    }

    else
    {
      v3 = 2;
    }

    if (v2 >> 8 < 0xFF)
    {
      v3 = 1;
    }

    if (v2 >= 0x100)
    {
      v4 = v3;
    }

    else
    {
      v4 = 0;
    }

    switch(v4)
    {
      case 1:
        v5 = a1[1];
        if (!a1[1])
        {
          break;
        }

        return (*a1 | (v5 << 8)) - 194;
      case 2:
        v5 = *(a1 + 1);
        if (*(a1 + 1))
        {
          return (*a1 | (v5 << 8)) - 194;
        }

        break;
      case 3:
        __break(1u);
        JUMPOUT(0x2753F8184);
      case 4:
        v5 = *(a1 + 1);
        if (!v5)
        {
          break;
        }

        return (*a1 | (v5 << 8)) - 194;
      default:
        break;
    }
  }

  v7 = ((*a1 >> 1) & 0x3E | (*a1 >> 7)) ^ 0x3F;
  if (v7 >= 0x3E)
  {
    v7 = -1;
  }

  if (v7 + 1 >= 2)
  {
    return v7;
  }

  else
  {
    return 0;
  }
}

_BYTE *_s17TempoRelationshipOwst(_BYTE *result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 194;
  if (a3 + 194 >= 0xFFFF00)
  {
    v4 = 4;
  }

  else
  {
    v4 = 2;
  }

  if (v3 >> 8 < 0xFF)
  {
    v4 = 1;
  }

  if (v3 >= 0x100)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 >= 0x3E)
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  if (a2 > 0x3D)
  {
    v7 = ((a2 - 62) >> 8) + 1;
    *result = a2 - 62;
    switch(v6)
    {
      case 1:
        result[1] = v7;
        break;
      case 2:
        *(result + 1) = v7;
        break;
      case 3:
LABEL_25:
        __break(1u);
        JUMPOUT(0x2753F8278);
      case 4:
        *(result + 1) = v7;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v6)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_20;
      case 2:
        *(result + 1) = 0;
        goto LABEL_19;
      case 3:
        goto LABEL_25;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_20;
      default:
LABEL_19:
        if (a2)
        {
LABEL_20:
          *result = (2 * (a2 ^ 0x3F)) & 0xFC | ((a2 ^ 0x3F) << 7);
        }

        break;
    }
  }

  return result;
}

uint64_t sub_2753F82A0(unsigned __int8 *a1)
{
  v1 = *a1;
  if (((v1 >> 1) & 0x3E) != 0)
  {
    return 64 - ((v1 >> 1) & 0x3E | (v1 >> 7));
  }

  else
  {
    return 0;
  }
}

_BYTE *sub_2753F82C4(_BYTE *result, unsigned int a2)
{
  if (a2 > 0x3E)
  {
    LOBYTE(v2) = a2 - 63;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = 4 * (((-a2 >> 1) & 0x1F) - 32 * a2);
  }

  *result = v2;
  return result;
}

void sub_2753F8300(uint64_t a1, char a2, uint64_t a3, char a4)
{
  v6 = OUTLINED_FUNCTION_0_10();
  sub_2754411AC(v6, 3, 0);
  v7 = 0;
  v8 = v50;
  v9 = &unk_288411278;
  do
  {
    v10 = v9[v7 + 32];
    if (v9[v7 + 32])
    {
      v11 = *&a3;
      v12 = a4;
      if (v10 == 1)
      {
        goto LABEL_8;
      }

      v13 = 2.0;
      if ((a4 & 1) == 0)
      {
LABEL_5:
        v12 = 0;
        v11 = v13 * *&a3;
        goto LABEL_8;
      }
    }

    else
    {
      v13 = 0.5;
      if ((a4 & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    v11 = *&a3 / v13;
    v12 = 1;
LABEL_8:
    v51 = v8;
    v15 = *(v8 + 16);
    v14 = *(v8 + 24);
    if (v15 >= v14 >> 1)
    {
      v17 = OUTLINED_FUNCTION_1_5(v14);
      v19 = v18;
      sub_2754411AC(v17, v15 + 1, 1);
      v9 = v19;
      v8 = v51;
    }

    ++v7;
    *(v8 + 16) = v15 + 1;
    v16 = v8 + 24 * v15;
    *(v16 + 32) = v10;
    *(v16 + 40) = v11;
    *(v16 + 48) = v12 & 1;
  }

  while (v7 != 3);
  v20 = OUTLINED_FUNCTION_0_10();
  sub_27544118C(v20, v15 + 1, 0);
  v21 = 0;
  v22 = v15 + 1;
  v23 = (v8 + 48);
  do
  {
    if (v21 >= *(v8 + 16))
    {
      __break(1u);
LABEL_37:
      __break(1u);
      return;
    }

    v24 = *(v23 - 16);
    if (*v23)
    {
      v25 = 60.0 / *(v23 - 1);
    }

    else
    {
      v25 = *(v23 - 1);
    }

    v27 = *(v51 + 16);
    v26 = *(v51 + 24);
    if (v27 >= v26 >> 1)
    {
      v29 = OUTLINED_FUNCTION_1_5(v26);
      sub_27544118C(v29, v27 + 1, 1);
    }

    ++v21;
    *(v51 + 16) = v27 + 1;
    v28 = v51 + 16 * v27;
    *(v28 + 32) = v24;
    *(v28 + 40) = v25;
    v23 += 3;
  }

  while (v22 != v21);

  v30 = *(v51 + 16);
  if (v30)
  {
    v31 = OUTLINED_FUNCTION_0_10();
    sub_27544118C(v31, v30, 0);
    v32 = v51;
    v33 = *&a1;
    if (a2)
    {
      v33 = 60.0 / *&a1;
    }

    v34 = log(v33);
    v35 = 0;
    v36 = (v51 + 40);
    while (v35 < *(v51 + 16))
    {
      v37 = *(v36 - 8);
      v38 = log(*v36);
      v40 = *(v51 + 16);
      v39 = *(v51 + 24);
      if (v40 >= v39 >> 1)
      {
        v42 = OUTLINED_FUNCTION_1_5(v39);
        sub_27544118C(v42, v40 + 1, 1);
      }

      ++v35;
      *(v51 + 16) = v40 + 1;
      v41 = v51 + 16 * v40;
      *(v41 + 32) = v37;
      *(v41 + 40) = vabdd_f64(v38, v34);
      v36 += 2;
      if (v30 == v35)
      {

        goto LABEL_29;
      }
    }

    goto LABEL_37;
  }

  v32 = MEMORY[0x277D84F90];
LABEL_29:
  v43 = *(v32 + 16);
  if (v43)
  {
    v44 = *(v32 + 32);
    v45 = *(v32 + 40);
    for (i = (v32 + 56); --v43; i += 2)
    {
      if (*i < v45)
      {
        v47 = *(i - 8);
        v45 = *i;
      }
    }
  }
}

uint64_t sub_2753F860C(char a1, uint64_t a2, char a3)
{
  v3 = *&a2;
  if (a1)
  {
    if (a1 == 1)
    {
      return *&v3;
    }

    v4 = 2.0;
  }

  else
  {
    v4 = 0.5;
  }

  if (a3)
  {
    v3 = *&a2 / v4;
  }

  else
  {
    v3 = v4 * *&a2;
  }

  return *&v3;
}

BOOL sub_2753F865C(uint64_t a1, char a2, uint64_t a3, char a4)
{
  v4 = *&a1;
  if (a2)
  {
    v5 = *&a3;
    if ((a4 & 1) == 0)
    {
      v4 = 60.0 / *&a1;
    }
  }

  else
  {
    v5 = *&a3;
    if (a4)
    {
      v5 = 60.0 / *&a3;
    }
  }

  return v4 == v5;
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t sub_2753F86E8(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 9))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 8);
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

uint64_t sub_2753F872C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
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

uint64_t _s26TimeSignatureCompatibilityOwet(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_BYTE *_s26TimeSignatureCompatibilityOwst(_BYTE *result, int a2, int a3)
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
        return result;
      case 2:
        *result = a2;
        return result;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        return result;
      default:
        return result;
    }
  }

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
      JUMPOUT(0x2753F88ACLL);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_2753F88F0()
{
  result = qword_2809DAED0;
  if (!qword_2809DAED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DAED0);
  }

  return result;
}

uint64_t sub_2753F896C()
{
  sub_27546EA90();
  MEMORY[0x277C77BF0](0);
  return sub_27546EAC0();
}

uint64_t sub_2753F89C0()
{
  sub_27546EA90();
  MEMORY[0x277C77BF0](0);
  return sub_27546EAC0();
}

_BYTE *_s25TimeSignatureRelationshipOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x2753F8ACCLL);
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

uint64_t sub_2753F8B04(char a1, char a2)
{
  if (a1)
  {
    if ((a2 & 1) == 0)
    {
      return 0;
    }
  }

  else if (a2)
  {
    return 0;
  }

  return 1;
}

BOOL sub_2753F8B54(uint64_t (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v5 = a3 + 32;
  v6 = *(a3 + 16) + 1;
  do
  {
    if (!--v6)
    {
      break;
    }

    v7 = a1(v5);
    if (v3)
    {
      break;
    }

    v5 += 40;
  }

  while ((v7 & 1) == 0);
  return v6 != 0;
}

uint64_t (*sub_2753F8BB4@<X0>(uint64_t (*result)(_BYTE *)@<X0>, uint64_t a2@<X2>, _OWORD *a3@<X8>))(_BYTE *)
{
  v4 = result;
  v6 = *(a2 + 16);
  v7 = a2 + 32;
  if (v6)
  {
    while (1)
    {
      sub_2753F74A8(v7, __src);
      v8 = v4(__src);
      if (v3)
      {
        return sub_2753F7504(__src);
      }

      if (v8)
      {
        return memcpy(a3, __src, 0x61uLL);
      }

      result = sub_2753F7504(__src);
      v7 += 104;
      if (!--v6)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    *(a3 + 96) = 0;
    a3[4] = 0u;
    a3[5] = 0u;
    a3[2] = 0u;
    a3[3] = 0u;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

uint64_t sub_2753F8CA4@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, uint64_t (*a3)(uint64_t *, uint64_t)@<X3>, uint64_t a4@<X8>)
{
  v6 = result;
  v8 = *(a2 + 16);
  v9 = a2 + 32;
  if (v8)
  {
    while (1)
    {
      sub_2753F161C(v9, v11);
      v10 = v6(v11);
      if (v4)
      {
        return __swift_destroy_boxed_opaque_existential_1(v11);
      }

      if (v10)
      {
        return a3(v11, a4);
      }

      result = __swift_destroy_boxed_opaque_existential_1(v11);
      v9 += 40;
      if (!--v8)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    *(a4 + 32) = 0;
    *a4 = 0u;
    *(a4 + 16) = 0u;
  }

  return result;
}

uint64_t sub_2753F8D6C@<X0>(uint64_t result@<X0>, uint64_t a2@<X3>, uint64_t a3@<X4>, unint64_t a4@<X5>, uint64_t a5@<X8>)
{
  v6 = a3;
  v7 = result;
  v9 = a4 >> 1;
  for (i = a2 + 40 * a3; ; i += 40)
  {
    if (v9 == v6)
    {
      *(a5 + 32) = 0;
      *a5 = 0u;
      *(a5 + 16) = 0u;
      return result;
    }

    if (v6 >= v9)
    {
      break;
    }

    sub_2753F161C(i, v12);
    v11 = v7(v12);
    if (v5)
    {
      return __swift_destroy_boxed_opaque_existential_1(v12);
    }

    if (v11)
    {
      return sub_2753F16E0(v12, a5);
    }

    result = __swift_destroy_boxed_opaque_existential_1(v12);
    ++v6;
  }

  __break(1u);
  return result;
}

double sub_2753F8E44@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(a1 + 16))
  {
    sub_2753F161C(a1 + 32, a2);
  }

  else
  {
    *(a2 + 32) = 0;
    result = 0.0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  return result;
}

uint64_t sub_2753F8E7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 16);
  v5 = sub_27546E490();
  v6 = v5;
  if (v4)
  {
    (*(*(v5 - 8) + 16))(a2, a1 + ((*(*(v5 - 8) + 80) + 32) & ~*(*(v5 - 8) + 80)), v5);
    v7 = 0;
  }

  else
  {
    v7 = 1;
  }

  return __swift_storeEnumTagSinglePayload(a2, v7, 1, v6);
}

double sub_2753F8F24@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  if (!*(a1 + 16))
  {
    return OUTLINED_FUNCTION_20_0(a2);
  }

  sub_2753FC774(a1 + 32, a2);
  return result;
}

double sub_2753F8F3C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(a1 + 16))
  {
    sub_2753F74A8(a1 + 32, a2);
  }

  else
  {
    *(a2 + 96) = 0;
    result = 0.0;
    *(a2 + 64) = 0u;
    *(a2 + 80) = 0u;
    *(a2 + 32) = 0u;
    *(a2 + 48) = 0u;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  return result;
}

uint64_t sub_2753F8F68(void *a1)
{
  v1 = a1[4] >> 1;
  v23 = a1[3];
  v2 = v1 - v23;
  if (__OFSUB__(v1, v23))
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v25 = a1[4] >> 1;
  v3 = *a1;
  v4 = a1[1];
  v22 = a1[2];
  v24 = *(*a1 + 16);
  if (v2 >= v24)
  {
    v5 = *(*a1 + 16);
  }

  else
  {
    v5 = v1 - v23;
  }

  v29 = MEMORY[0x277D84F90];
  sub_27544122C(0, v5 & ~(v5 >> 63), 0);
  if (v2 < 0)
  {
LABEL_36:
    __break(1u);
LABEL_37:
    result = __swift_destroy_boxed_opaque_existential_1(v26);
LABEL_38:
    __break(1u);
    return result;
  }

  v21 = v3;
  v6 = v29;
  if (v5)
  {
    v7 = v3 + 32;

    result = swift_unknownObjectRetain();
    v9 = v23;
    v10 = v22 + 40 * v23;
    v11 = v24;
    v12 = v5;
    while (v11)
    {
      sub_2753F161C(v7, v26);
      if (v25 == v9)
      {
        goto LABEL_37;
      }

      if (v9 >= v25)
      {
        __break(1u);
LABEL_32:
        __break(1u);
LABEL_33:
        __break(1u);
LABEL_34:
        __break(1u);
        goto LABEL_35;
      }

      sub_2753F16E0(v26, v27);
      sub_2753F161C(v10, &v27[40]);
      sub_2753F161C(v27, __src);
      sub_2753F161C(&v27[40], &__src[40]);
      sub_2753FC650(v27, &qword_2809DAF28, &qword_2809DADD0);
      v29 = v6;
      v14 = *(v6 + 16);
      v13 = *(v6 + 24);
      if (v14 >= v13 >> 1)
      {
        sub_27544122C(v13 > 1, v14 + 1, 1);
        v6 = v29;
      }

      *(v6 + 16) = v14 + 1;
      result = memcpy((v6 + 80 * v14 + 32), __src, 0x50uLL);
      v7 += 40;
      --v11;
      v10 += 40;
      ++v9;
      if (!--v12)
      {
        goto LABEL_16;
      }
    }

    goto LABEL_38;
  }

  swift_unknownObjectRetain();
  v9 = v23;
LABEL_16:
  v15 = v22 + 40 * v9;
  v16 = v21 + 40 * v5 + 32;
  v17 = v9;
  while (v24 != v5)
  {
    if (v5 >= v24)
    {
      goto LABEL_32;
    }

    sub_2753F161C(v16, v26);
    if (__OFADD__(v5, 1))
    {
      goto LABEL_33;
    }

    if (v25 == v17)
    {
      __swift_destroy_boxed_opaque_existential_1(v26);
      break;
    }

    if (v9 < v23 || v17 >= v25)
    {
      goto LABEL_34;
    }

    sub_2753F16E0(v26, v27);
    sub_2753F161C(v15, &v27[40]);
    memcpy(__src, v27, 0x50uLL);
    sub_2753F161C(__src, v27);
    sub_2753F161C(&__src[40], &v27[40]);
    sub_2753FC650(__src, &qword_2809DAF28, &qword_2809DADD0);
    v29 = v6;
    v20 = *(v6 + 16);
    v19 = *(v6 + 24);
    if (v20 >= v19 >> 1)
    {
      sub_27544122C(v19 > 1, v20 + 1, 1);
      v6 = v29;
    }

    *(v6 + 16) = v20 + 1;
    memcpy((v6 + 80 * v20 + 32), v27, 0x50uLL);
    v15 += 40;
    ++v5;
    v16 += 40;
    ++v17;
  }

  swift_unknownObjectRelease();

  return v6;
}

uint64_t sub_2753F92A8(void *a1)
{
  v1 = a1[4] >> 1;
  v23 = a1[3];
  v2 = v1 - v23;
  if (__OFSUB__(v1, v23))
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v25 = a1[4] >> 1;
  v3 = *a1;
  v4 = a1[1];
  v22 = a1[2];
  v24 = *(*a1 + 16);
  if (v2 >= v24)
  {
    v5 = *(*a1 + 16);
  }

  else
  {
    v5 = v1 - v23;
  }

  v29 = MEMORY[0x277D84F90];
  sub_2754411FC(0, v5 & ~(v5 >> 63), 0);
  if (v2 < 0)
  {
LABEL_36:
    __break(1u);
LABEL_37:
    result = __swift_destroy_boxed_opaque_existential_1(v26);
LABEL_38:
    __break(1u);
    return result;
  }

  v21 = v3;
  v6 = v29;
  if (v5)
  {
    v7 = v3 + 32;

    result = swift_unknownObjectRetain();
    v9 = v23;
    v10 = v22 + 40 * v23;
    v11 = v24;
    v12 = v5;
    while (v11)
    {
      sub_2753F161C(v7, v26);
      if (v25 == v9)
      {
        goto LABEL_37;
      }

      if (v9 >= v25)
      {
        __break(1u);
LABEL_32:
        __break(1u);
LABEL_33:
        __break(1u);
LABEL_34:
        __break(1u);
        goto LABEL_35;
      }

      sub_2753F16E0(v26, v27);
      sub_2753F161C(v10, &v27[40]);
      sub_2753F161C(v27, __src);
      sub_2753F161C(&v27[40], &__src[40]);
      sub_2753FC650(v27, &qword_2809DAF20, &qword_2809DAF18);
      v29 = v6;
      v14 = *(v6 + 16);
      v13 = *(v6 + 24);
      if (v14 >= v13 >> 1)
      {
        sub_2754411FC(v13 > 1, v14 + 1, 1);
        v6 = v29;
      }

      *(v6 + 16) = v14 + 1;
      result = memcpy((v6 + 80 * v14 + 32), __src, 0x50uLL);
      v7 += 40;
      --v11;
      v10 += 40;
      ++v9;
      if (!--v12)
      {
        goto LABEL_16;
      }
    }

    goto LABEL_38;
  }

  swift_unknownObjectRetain();
  v9 = v23;
LABEL_16:
  v15 = v22 + 40 * v9;
  v16 = v21 + 40 * v5 + 32;
  v17 = v9;
  while (v24 != v5)
  {
    if (v5 >= v24)
    {
      goto LABEL_32;
    }

    sub_2753F161C(v16, v26);
    if (__OFADD__(v5, 1))
    {
      goto LABEL_33;
    }

    if (v25 == v17)
    {
      __swift_destroy_boxed_opaque_existential_1(v26);
      break;
    }

    if (v9 < v23 || v17 >= v25)
    {
      goto LABEL_34;
    }

    sub_2753F16E0(v26, v27);
    sub_2753F161C(v15, &v27[40]);
    memcpy(__src, v27, 0x50uLL);
    sub_2753F161C(__src, v27);
    sub_2753F161C(&__src[40], &v27[40]);
    sub_2753FC650(__src, &qword_2809DAF20, &qword_2809DAF18);
    v29 = v6;
    v20 = *(v6 + 16);
    v19 = *(v6 + 24);
    if (v20 >= v19 >> 1)
    {
      sub_2754411FC(v19 > 1, v20 + 1, 1);
      v6 = v29;
    }

    *(v6 + 16) = v20 + 1;
    memcpy((v6 + 80 * v20 + 32), v27, 0x50uLL);
    v15 += 40;
    ++v5;
    v16 += 40;
    ++v17;
  }

  swift_unknownObjectRelease();

  return v6;
}

uint64_t sub_2753F95E8(void *a1)
{
  v1 = a1[4] >> 1;
  v23 = a1[3];
  v2 = v1 - v23;
  if (__OFSUB__(v1, v23))
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v25 = a1[4] >> 1;
  v3 = *a1;
  v4 = a1[1];
  v22 = a1[2];
  v24 = *(*a1 + 16);
  if (v2 >= v24)
  {
    v5 = *(*a1 + 16);
  }

  else
  {
    v5 = v1 - v23;
  }

  v29 = MEMORY[0x277D84F90];
  sub_2754411CC(0, v5 & ~(v5 >> 63), 0);
  if (v2 < 0)
  {
LABEL_36:
    __break(1u);
LABEL_37:
    result = __swift_destroy_boxed_opaque_existential_1(v26);
LABEL_38:
    __break(1u);
    return result;
  }

  v21 = v3;
  v6 = v29;
  if (v5)
  {
    v7 = v3 + 32;

    result = swift_unknownObjectRetain();
    v9 = v23;
    v10 = v22 + 40 * v23;
    v11 = v24;
    v12 = v5;
    while (v11)
    {
      sub_2753F161C(v7, v26);
      if (v25 == v9)
      {
        goto LABEL_37;
      }

      if (v9 >= v25)
      {
        __break(1u);
LABEL_32:
        __break(1u);
LABEL_33:
        __break(1u);
LABEL_34:
        __break(1u);
        goto LABEL_35;
      }

      sub_2753F16E0(v26, v27);
      sub_2753F161C(v10, &v27[40]);
      sub_2753F161C(v27, __src);
      sub_2753F161C(&v27[40], &__src[40]);
      sub_2753FC650(v27, &qword_2809DAF08, &qword_2809DAEF0);
      v29 = v6;
      v14 = *(v6 + 16);
      v13 = *(v6 + 24);
      if (v14 >= v13 >> 1)
      {
        sub_2754411CC(v13 > 1, v14 + 1, 1);
        v6 = v29;
      }

      *(v6 + 16) = v14 + 1;
      result = memcpy((v6 + 80 * v14 + 32), __src, 0x50uLL);
      v7 += 40;
      --v11;
      v10 += 40;
      ++v9;
      if (!--v12)
      {
        goto LABEL_16;
      }
    }

    goto LABEL_38;
  }

  swift_unknownObjectRetain();
  v9 = v23;
LABEL_16:
  v15 = v22 + 40 * v9;
  v16 = v21 + 40 * v5 + 32;
  v17 = v9;
  while (v24 != v5)
  {
    if (v5 >= v24)
    {
      goto LABEL_32;
    }

    sub_2753F161C(v16, v26);
    if (__OFADD__(v5, 1))
    {
      goto LABEL_33;
    }

    if (v25 == v17)
    {
      __swift_destroy_boxed_opaque_existential_1(v26);
      break;
    }

    if (v9 < v23 || v17 >= v25)
    {
      goto LABEL_34;
    }

    sub_2753F16E0(v26, v27);
    sub_2753F161C(v15, &v27[40]);
    memcpy(__src, v27, 0x50uLL);
    sub_2753F161C(__src, v27);
    sub_2753F161C(&__src[40], &v27[40]);
    sub_2753FC650(__src, &qword_2809DAF08, &qword_2809DAEF0);
    v29 = v6;
    v20 = *(v6 + 16);
    v19 = *(v6 + 24);
    if (v20 >= v19 >> 1)
    {
      sub_2754411CC(v19 > 1, v20 + 1, 1);
      v6 = v29;
    }

    *(v6 + 16) = v20 + 1;
    memcpy((v6 + 80 * v20 + 32), v27, 0x50uLL);
    v15 += 40;
    ++v5;
    v16 += 40;
    ++v17;
  }

  swift_unknownObjectRelease();

  return v6;
}

uint64_t sub_2753F9928(void *a1)
{
  v1 = a1[4] >> 1;
  v42 = a1[3];
  v2 = v1 - v42;
  if (__OFSUB__(v1, v42))
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  v44 = a1[4] >> 1;
  v3 = *a1;
  v4 = a1[1];
  v40 = a1[2];
  v43 = *(*a1 + 16);
  if (v2 >= v43)
  {
    v5 = *(*a1 + 16);
  }

  else
  {
    v5 = v1 - v42;
  }

  v48 = MEMORY[0x277D84F90];
  sub_275441294(0, v5 & ~(v5 >> 63), 0);
  if (v2 < 0)
  {
LABEL_40:
    __break(1u);
LABEL_41:
    result = __swift_destroy_boxed_opaque_existential_1(__src);
LABEL_42:
    __break(1u);
    return result;
  }

  v6 = v48;
  v41 = v3;
  v39 = v5;
  if (v5)
  {
    v7 = v3 + 32;

    result = swift_unknownObjectRetain();
    v10 = v42;
    v9 = v43;
    v11 = v40 + 40 * v42;
    while (v9)
    {
      sub_2753F161C(v7, __src);
      if (v44 == v10)
      {
        goto LABEL_41;
      }

      if (v10 >= v44)
      {
        __break(1u);
LABEL_34:
        __break(1u);
LABEL_35:
        __break(1u);
LABEL_36:
        __break(1u);
LABEL_37:
        __break(1u);
LABEL_38:
        __break(1u);
        goto LABEL_39;
      }

      sub_2753F16E0(__src, __dst);
      sub_2753F161C(v11, &__dst[5]);
      sub_2753F161C(__dst, __src);
      v13 = __dst[8];
      v12 = __dst[9];
      __swift_project_boxed_opaque_existential_1(&__dst[5], __dst[8]);
      v14 = (*(*(*(v12 + 8) + 8) + 16))(v13);
      v16 = __dst[3];
      v15 = __dst[4];
      __swift_project_boxed_opaque_existential_1(__dst, __dst[3]);
      v17 = (*(*(*(v15 + 8) + 8) + 16))(v16);
      if (__OFSUB__(v14, v17))
      {
        goto LABEL_34;
      }

      *(&__src[2] + 1) = v14 - v17;
      result = sub_2753FC650(__dst, &qword_2809DAF08, &qword_2809DAEF0);
      v48 = v6;
      v19 = *(v6 + 16);
      v18 = *(v6 + 24);
      if (v19 >= v18 >> 1)
      {
        result = sub_275441294((v18 > 1), v19 + 1, 1);
        v6 = v48;
      }

      *(v6 + 16) = v19 + 1;
      v20 = (v6 + 48 * v19);
      v21 = __src[0];
      v22 = __src[2];
      v20[3] = __src[1];
      v20[4] = v22;
      v7 += 40;
      v20[2] = v21;
      --v9;
      v11 += 40;
      ++v10;
      if (!--v5)
      {
        goto LABEL_17;
      }
    }

    goto LABEL_42;
  }

  swift_unknownObjectRetain();
  v10 = v42;
LABEL_17:
  v23 = v39;
  v24 = v40 + 40 * v10;
  v25 = v41 + 40 * v39 + 32;
  v26 = v10;
  while (v43 != v23)
  {
    if (v23 >= v43)
    {
      goto LABEL_35;
    }

    sub_2753F161C(v25, v45);
    if (__OFADD__(v23, 1))
    {
      goto LABEL_36;
    }

    if (v44 == v26)
    {
      __swift_destroy_boxed_opaque_existential_1(v45);
      break;
    }

    if (v10 < v42 || v26 >= v44)
    {
      goto LABEL_37;
    }

    sub_2753F16E0(v45, __src);
    sub_2753F161C(v24, &__src[2] + 8);
    memcpy(__dst, __src, 0x50uLL);
    sub_2753F161C(__dst, __src);
    v29 = __dst[8];
    v28 = __dst[9];
    __swift_project_boxed_opaque_existential_1(&__dst[5], __dst[8]);
    v30 = (*(*(*(v28 + 8) + 8) + 16))(v29);
    v32 = __dst[3];
    v31 = __dst[4];
    __swift_project_boxed_opaque_existential_1(__dst, __dst[3]);
    v33 = (*(*(*(v31 + 8) + 8) + 16))(v32);
    if (__OFSUB__(v30, v33))
    {
      goto LABEL_38;
    }

    *(&__src[2] + 1) = v30 - v33;
    sub_2753FC650(__dst, &qword_2809DAF08, &qword_2809DAEF0);
    v48 = v6;
    v35 = *(v6 + 16);
    v34 = *(v6 + 24);
    if (v35 >= v34 >> 1)
    {
      sub_275441294((v34 > 1), v35 + 1, 1);
      v6 = v48;
    }

    *(v6 + 16) = v35 + 1;
    v36 = (v6 + 48 * v35);
    v37 = __src[0];
    v38 = __src[2];
    v36[3] = __src[1];
    v36[4] = v38;
    v36[2] = v37;
    v24 += 40;
    ++v23;
    v25 += 40;
    ++v26;
  }

  swift_unknownObjectRelease();

  return v6;
}

unint64_t sub_2753F9D50@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    v85 = MEMORY[0x277D84F90];
    v61 = MEMORY[0x277D84F90];
    v111 = MEMORY[0x277D84F90];
    v110 = MEMORY[0x277D84F90];
    goto LABEL_48;
  }

  v142[0] = MEMORY[0x277D84F90];
  sub_27544125C(0, v2, 0);
  v141 = v142[0];
  v4 = (a1 + 88);
  do
  {
    v131 = *(v4 - 7);
    v132 = *(v4 - 6);
    v133 = *(v4 - 5);
    v136 = *(v4 - 4);
    v139 = *(v4 - 24);
    v5 = *(v4 - 23) | ((*(v4 - 19) | (*(v4 - 17) << 16)) << 32);
    v6 = *(v4 - 16);
    v7 = *(v4 - 15) | ((*(v4 - 11) | (*(v4 - 9) << 16)) << 32);
    v8 = *(v4 - 7) | ((*(v4 - 3) | (*(v4 - 1) << 16)) << 32);
    v9 = *v4;
    v10 = *(v4 - 8);
    v4 += 64;
    switch(v9 >> 6)
    {
      case 1u:
        v145 = &_s26SongStructureDownbeatEventVN;
        v146 = &off_2884127B0;
        v22 = v6;
        v23 = swift_allocObject();
        v24 = OUTLINED_FUNCTION_0_11(v23);
        *(v24 + 48) = v25 & 1;
        *(v24 + 56) = v22;
        *(v24 + 63) = BYTE6(v7);
        *(v24 + 61) = WORD2(v7);
        *(v24 + 57) = v7;
        *(v24 + 64) = v10 & 1;
        break;
      case 2u:
        v145 = &_s33SongStructureSegmentBoundaryEventVN;
        v146 = &off_288412AF0;
        v15 = v6;
        v16 = swift_allocObject();
        v17 = OUTLINED_FUNCTION_0_11(v16);
        *(OUTLINED_FUNCTION_16(v17, v18) + 56) = v15 & 1;
        break;
      case 3u:
        v145 = &_s33SongStructureSectionBoundaryEventVN;
        v146 = &off_288412A08;
        OUTLINED_FUNCTION_30();
        v19 = swift_allocObject();
        v20 = OUTLINED_FUNCTION_0_11(v19);
        OUTLINED_FUNCTION_16(v20, v21);
        break;
      default:
        v130 = v9 & 0x3F;
        v145 = &_s22SongStructureBeatEventVN;
        v146 = &off_2884126F8;
        v129 = v6;
        v11 = swift_allocObject();
        v12 = OUTLINED_FUNCTION_0_11(v11);
        v14 = OUTLINED_FUNCTION_16(v12, v13);
        *(v14 + 56) = v129;
        *(v14 + 63) = BYTE6(v7);
        *(v14 + 61) = WORD2(v7);
        *(v14 + 57) = v7;
        *(v14 + 64) = v10;
        *(v14 + 71) = BYTE6(v8);
        *(v14 + 69) = WORD2(v8);
        *(v14 + 65) = v8;
        *(v14 + 72) = v130;
        break;
    }

    OUTLINED_FUNCTION_29();
    v26 = v141;
    v142[0] = v141;
    v28 = *(v141 + 16);
    v27 = *(v141 + 24);
    if (v28 >= v27 >> 1)
    {
      v29 = OUTLINED_FUNCTION_11(v27);
      sub_27544125C(v29, v28 + 1, 1);
      v26 = v142[0];
    }

    *(v26 + 16) = v28 + 1;
    v141 = v26;
    sub_2753F16E0(&v147, v26 + 40 * v28 + 32);
    --v2;
  }

  while (v2);
  v30 = *(a1 + 16);
  if (!v30)
  {
    v85 = MEMORY[0x277D84F90];
    v61 = MEMORY[0x277D84F90];
    v111 = MEMORY[0x277D84F90];
    v110 = v141;
    goto LABEL_48;
  }

  v31 = (a1 + 48);
  v140 = MEMORY[0x277D84F90];
  v134 = *(a1 + 16);
  do
  {
    v32 = *(v31 - 2);
    v33 = *(v31 - 1);
    v35 = *v31;
    v34 = v31[1];
    v36 = *(v31 + 16);
    *(v31 + 21);
    *(v31 + 23);
    v37 = *(v31 + 17);
    v38 = *(v31 + 24);
    v39 = *(v31 + 25) | ((*(v31 + 29) | (*(v31 + 31) << 16)) << 32);
    v40 = *(v31 + 32);
    v41 = *(v31 + 40);
    v31 += 8;
    switch(v41 >> 6)
    {
      case 1u:
        v49 = v36;
        v50 = v34;
        v51 = v38;
        v45 = swift_allocObject();
        *(v45 + 16) = v32;
        *(v45 + 24) = v33;
        *(v45 + 32) = v35;
        *(v45 + 40) = v50;
        *(v45 + 48) = v49 & 1;
        *(v45 + 56) = v51;
        *(v45 + 63) = BYTE6(v39);
        *(v45 + 61) = WORD2(v39);
        *(v45 + 57) = v39;
        v46 = &_s26SongStructureDownbeatEventVN;
        v47 = &off_2884127C8;
        *(v45 + 64) = v40 & 1;
        goto LABEL_18;
      case 2u:
        v137 = v38;
        v44 = swift_allocObject();
        v45 = OUTLINED_FUNCTION_26(v44);
        *(v45 + 49) = v37;
        v46 = &_s33SongStructureSegmentBoundaryEventVN;
        v47 = &off_288412B08;
        *(v45 + 56) = v137 & 1;
        goto LABEL_18;
      case 3u:
        OUTLINED_FUNCTION_30();
        v48 = swift_allocObject();
        v45 = OUTLINED_FUNCTION_26(v48);
        v46 = &_s33SongStructureSectionBoundaryEventVN;
        v47 = &off_288412A20;
        *(v45 + 49) = v37;
LABEL_18:
        v144 = 0;
        v143 = v45;
        v145 = v46;
        v146 = v47;
        OUTLINED_FUNCTION_29();
        v43 = v140;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v54 = *(v140 + 16);
          v55 = OUTLINED_FUNCTION_6_1();
          sub_275431470(v55, v56, v57, v140);
          v43 = v58;
        }

        v53 = *(v43 + 16);
        v52 = *(v43 + 24);
        if (v53 >= v52 >> 1)
        {
          v59 = OUTLINED_FUNCTION_11(v52);
          sub_275431470(v59, v53 + 1, 1, v43);
          v43 = v60;
        }

        *(v43 + 16) = v53 + 1;
        sub_2753F16E0(&v147, v43 + 40 * v53 + 32);
        break;
      default:
        v42 = OUTLINED_FUNCTION_15();
        sub_2753FC520(v42, &qword_2809DAED8, &qword_2809DADD0, &protocol descriptor for TransitionPlannerDownbeatEvent);
        v43 = v140;
        break;
    }

    v140 = v43;
    --v30;
  }

  while (v30);
  v61 = MEMORY[0x277D84F90];
  v62 = (a1 + 48);
  v63 = v134;
  do
  {
    v64 = *(v62 - 2);
    v65 = *(v62 - 1);
    v67 = *v62;
    v66 = v62[1];
    v68 = v62[2];
    v69 = *(v62 + 40) >> 6;
    if (v69 == 3)
    {
      OUTLINED_FUNCTION_30();
      v71 = swift_allocObject();
      *(v71 + 16) = v64;
      *(v71 + 24) = v65;
      *(v71 + 32) = v67;
      *(v71 + 40) = v66;
      v72 = &off_2884129D8;
      v73 = &_s33SongStructureSectionBoundaryEventVN;
      *(v71 + 48) = v68;
    }

    else
    {
      if (v69 != 2)
      {
        v76 = OUTLINED_FUNCTION_15();
        sub_2753FC520(v76, &qword_2809DAF10, &qword_2809DAF18, &protocol descriptor for TransitionPlannerSegmentBoundaryEvent);
        goto LABEL_35;
      }

      v70 = *(v62 + 24);
      v71 = swift_allocObject();
      *(v71 + 16) = v64;
      *(v71 + 24) = v65;
      *(v71 + 32) = v67;
      *(v71 + 40) = v66;
      *(v71 + 48) = v68;
      v72 = &off_288412AD8;
      v73 = &_s33SongStructureSegmentBoundaryEventVN;
      *(v71 + 56) = v70 & 1;
    }

    v144 = 0;
    v143 = v71;
    v145 = v73;
    v146 = v72;
    OUTLINED_FUNCTION_29();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v77 = *(v61 + 16);
      v78 = OUTLINED_FUNCTION_6_1();
      sub_275431440(v78, v79, v80, v61);
      v61 = v81;
    }

    v75 = *(v61 + 16);
    v74 = *(v61 + 24);
    if (v75 >= v74 >> 1)
    {
      v82 = OUTLINED_FUNCTION_11(v74);
      sub_275431440(v82, v75 + 1, 1, v61);
      v61 = v83;
    }

    *(v61 + 16) = v75 + 1;
    sub_2753F16E0(&v147, v61 + 40 * v75 + 32);
LABEL_35:
    v62 += 8;
    --v63;
  }

  while (v63);
  v84 = (a1 + 88);
  v85 = MEMORY[0x277D84F90];
  v86 = v134;
  do
  {
    if (*v84 >= 0xC0u)
    {
      v88 = *(v84 - 7);
      v135 = *(v84 - 2);
      v138 = *(v84 - 3);
      OUTLINED_FUNCTION_30();
      v89 = swift_allocObject();
      *(v89 + 16) = v88;
      *(v89 + 40) = v135;
      *(v89 + 24) = v138;
      v144 = 0;
      v143 = v89;
      v145 = &_s33SongStructureSectionBoundaryEventVN;
      v146 = &off_2884129F0;
      OUTLINED_FUNCTION_29();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v103 = *(v85 + 16);
        v104 = OUTLINED_FUNCTION_6_1();
        sub_275431410(v104, v105, v106, v85);
        v85 = v107;
      }

      v91 = *(v85 + 16);
      v90 = *(v85 + 24);
      v92 = v86;
      if (v91 >= v90 >> 1)
      {
        v108 = OUTLINED_FUNCTION_11(v90);
        sub_275431410(v108, v91 + 1, 1, v85);
        v85 = v109;
      }

      __swift_mutable_project_boxed_opaque_existential_1(&v147, v149);
      OUTLINED_FUNCTION_7_1();
      v94 = *(v93 + 64);
      MEMORY[0x28223BE20](v95);
      OUTLINED_FUNCTION_18();
      v98 = (v97 - v96);
      (*(v99 + 16))(v97 - v96);
      v100 = *v98;
      v145 = &_s33SongStructureSectionBoundaryEventVN;
      v146 = &off_2884129F0;
      OUTLINED_FUNCTION_30();
      v101 = swift_allocObject();
      *&v143 = v101;
      *(v101 + 16) = v100;
      v102 = *(v98 + 1);
      *(v101 + 40) = *(v98 + 3);
      *(v101 + 24) = v102;
      *(v85 + 16) = v91 + 1;
      sub_2753F16E0(&v143, v85 + 40 * v91 + 32);
      __swift_destroy_boxed_opaque_existential_1(&v147);
      v86 = v92;
    }

    else
    {
      v87 = OUTLINED_FUNCTION_15();
      sub_2753FC520(v87, &qword_2809DAEE8, &qword_2809DAEF0, &protocol descriptor for TransitionPlannerSectionBoundaryEvent);
    }

    v84 += 64;
    --v86;
  }

  while (v86);
  v111 = v140;
  v110 = v141;
LABEL_48:

  v112 = sub_27544FBA0(1, v111);
  *&v147 = v111;
  *(&v147 + 1) = v112;
  v148 = v113;
  v149 = v114;
  v150 = v115;

  v116 = sub_2753F8F68(&v147);
  swift_unknownObjectRelease();

  v117 = sub_27544FBA0(1, v61);
  *&v143 = v61;
  *(&v143 + 1) = v117;
  v144 = v118;
  v145 = v119;
  v146 = v120;

  v121 = sub_2753F92A8(&v143);
  swift_unknownObjectRelease();

  v142[0] = v85;
  v142[1] = sub_27544FBA0(1, v85);
  v142[2] = v122;
  v142[3] = v123;
  v142[4] = v124;

  v125 = sub_2753F95E8(v142);
  swift_unknownObjectRelease();

  result = sub_2753F6400(v116);
  *a2 = a1;
  a2[1] = v110;
  a2[2] = v111;
  a2[3] = v61;
  a2[4] = v85;
  a2[5] = v116;
  a2[6] = v121;
  a2[7] = v125;
  a2[8] = result;
  return result;
}

uint64_t sub_2753FA740@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = a1[3];
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v7);
  OUTLINED_FUNCTION_0_0(v8);
  result = v9(v7, v8);
  v11 = result - a2;
  if (__OFSUB__(result, a2))
  {
    __break(1u);
  }

  else
  {
    v12 = *(v3 + 16);
    v13 = *(v12 + 16);
    v14 = v12 + 32;
    if (v13)
    {
      while (1)
      {
        sub_2753F161C(v14, &v18);
        v15 = v19;
        v16 = v20;
        __swift_project_boxed_opaque_existential_1(&v18, v19);
        OUTLINED_FUNCTION_0_0(v16);
        if (v17(v15, v16) >= v11)
        {
          break;
        }

        __swift_destroy_boxed_opaque_existential_1(&v18);
        v14 += 40;
        if (!--v13)
        {
          goto LABEL_5;
        }
      }

      sub_2753F16E0(&v18, v21);
      sub_2753F16E0(v21, v22);
      sub_2753F16E0(v22, a3);
    }

    else
    {
LABEL_5:
      sub_2753F161C(a1, a3);
    }

    return sub_2753F161C(a1, a3 + 40);
  }

  return result;
}