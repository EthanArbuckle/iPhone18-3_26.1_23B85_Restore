unint64_t sub_2619AF808(unint64_t result, uint64_t *a2, void *a3)
{
  v5 = result;
  if (result >> 62)
  {
LABEL_30:
    result = sub_2619D9CA8();
    v6 = result;
    if (result)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v6 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v6)
    {
LABEL_3:
      v7 = 0;
      v8 = v5 & 0xC000000000000001;
      v20 = v5 + 32;
      v21 = v5 & 0xFFFFFFFFFFFFFF8;
      v9 = MEMORY[0x277D84F90];
      v18 = v6;
      v19 = v5;
      v17 = v5 & 0xC000000000000001;
      do
      {
        if (v8)
        {
          v11 = MEMORY[0x2667148E0](v7, v5);
          v12 = __OFADD__(v7++, 1);
          if (v12)
          {
            goto LABEL_29;
          }
        }

        else
        {
          if (v7 >= *(v21 + 16))
          {
            __break(1u);
            return result;
          }

          v11 = *(v20 + 8 * v7);

          v12 = __OFADD__(v7++, 1);
          if (v12)
          {
            goto LABEL_29;
          }
        }

        if (!*(*a2 + 16) || (sub_2619B0D08(v11), (v13 & 1) == 0))
        {
          v14 = sub_2619C691C();
          v22 = sub_2619B3330(v9);
          if (v14 >> 62)
          {
            v15 = sub_2619D9CA8();
            if (v15)
            {
LABEL_16:
              v5 = v14 + 32;
              while (1)
              {
                v12 = __OFSUB__(v15--, 1);
                if (v12)
                {
                  break;
                }

                if ((v14 & 0xC000000000000001) != 0)
                {
                  v16 = MEMORY[0x2667148E0](v15, v14);
                }

                else
                {
                  if ((v15 & 0x8000000000000000) != 0)
                  {
                    goto LABEL_27;
                  }

                  if (v15 >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
                  {
                    goto LABEL_28;
                  }

                  v16 = *(v5 + 8 * v15);
                }

                sub_2619AFB2C(v16, a2, a3, v23);
                sub_2619B3420(v23);

                if (!v15)
                {
                  goto LABEL_4;
                }
              }

              __break(1u);
LABEL_27:
              __break(1u);
LABEL_28:
              __break(1u);
LABEL_29:
              __break(1u);
              goto LABEL_30;
            }
          }

          else
          {
            v15 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (v15)
            {
              goto LABEL_16;
            }
          }

LABEL_4:

          sub_2619AFB2C(v11, a2, a3, v24);
          sub_2619B3420(v24);
          v9 = MEMORY[0x277D84F90];
          v10 = sub_2619B06D4(MEMORY[0x277D84F90]);
          sub_2619B5638(v22, a2, v10);

          v6 = v18;
          v5 = v19;
          v8 = v17;
        }
      }

      while (v7 != v6);
    }
  }

  return result;
}

uint64_t sub_2619AFA50(void *__src, uint64_t a2)
{
  memcpy(__dst, __src, sizeof(__dst));
  if (sub_2619B62AC(__dst) == 1)
  {
    sub_2619B10CC(a2, __srca);

    memcpy(v10, __srca, sizeof(v10));
    return sub_2619B62D0(v10, &qword_27FEC8F58, &unk_2619DA600);
  }

  else
  {
    memcpy(v10, __src, sizeof(v10));
    v6 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    __srca[0] = *v2;
    sub_2619B2534(v10, a2, isUniquelyReferenced_nonNull_native);

    *v2 = __srca[0];
  }

  return result;
}

uint64_t sub_2619AFB2C@<X0>(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X2>, _DWORD *a4@<X8>)
{
  v119 = a3;
  v116 = a1;
  v114 = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEC8EA8, &qword_2619DA390);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v102 - v8;
  v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEC8F88, &qword_2619DA548);
  v113 = *(v120 - 8);
  v10 = *(v113 + 64);
  MEMORY[0x28223BE20](v120);
  v12 = &v102 - v11;
  v13 = sub_2619D9428();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v102 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v117 = &v102 - v19;
  v118 = a2;
  v20 = *a2;
  if (*(v20 + 16))
  {
    v21 = sub_2619B0D08(v116);
    if (v22)
    {
      memcpy(v260, (*(v20 + 56) + 296 * v21), sizeof(v260));
      LODWORD(v117) = *&v260[256];
      LODWORD(v116) = v260[260];
      v115 = *&v260[264];
      v113 = *&v260[272];
      LODWORD(v112) = v260[280];
      v111 = *&v260[288];
      LODWORD(v110) = *&v260[224];
      v108 = *&v260[232];
      LODWORD(v109) = v260[228];
      v106 = *&v260[240];
      v107 = v260[236];
      LODWORD(v118) = v260[244];
      v104 = *&v260[216];
      v105 = *&v260[248];
      LODWORD(v120) = *v260;
      v23 = v260[4];
      v102 = *&v260[88];
      v103 = *&v260[72];
      v24 = v260[80];
      v25 = *&v260[64];
      v26 = v260[68];
      v27 = *&v260[56];
      v28 = v260[60];
      LODWORD(v119) = *&v260[48];
      v29 = v260[52];
      sub_2619B624C(v260, v259);
      v30 = v28;
      v31 = v27;
      v32 = v102;
      v33 = v106;
      v34 = v107;
      v35 = v116;
      v36 = v108;
      v37 = v109;
      v39 = v104;
      v38 = v105;
      v40 = v112;
      v41 = v103;
      v42 = v110;
      result = v111;
      v44 = v113;
      v45 = v117;
      v46 = v115;
      v261 = *&v260[8];
      v262 = *&v260[24];
      v263 = *&v260[40];
      v264 = *&v260[104];
      v265 = *&v260[120];
      v266 = v260[136];
      *(v127 + 13) = *&v260[205];
      v126 = *&v260[176];
      v127[0] = *&v260[192];
      v47 = v118;
      v124 = *&v260[144];
      v125 = *&v260[160];
LABEL_10:
      v129 = v29 & 1;
      v93 = v30 & 1;
      v123 = v93;
      v122 = v26 & 1;
      v121 = v24 & 1;
      LOBYTE(v140) = v23;
      *&v128[3] = v261;
      *&v128[19] = v262;
      *&v128[35] = v263;
      *&v133[7] = v124;
      *&v133[68] = *(v127 + 13);
      *&v133[55] = v127[0];
      *&v133[39] = v126;
      *&v133[23] = v125;
      LOBYTE(v134) = v37;
      LOBYTE(v137) = v34;
      v132 = v47;
      v131 = v35 & 1;
      v130 = v40 & 1;
      v94 = v114;
      *v114 = v120;
      *(v94 + 4) = v140;
      v95 = *v128;
      v96 = *&v128[16];
      *(v94 + 2) = *&v128[27];
      *(v94 + 21) = v96;
      *(v94 + 5) = v95;
      v94[12] = v119;
      *(v94 + 52) = v29 & 1;
      v94[14] = v31;
      *(v94 + 60) = v93;
      v94[16] = v25;
      *(v94 + 68) = v26 & 1;
      *(v94 + 9) = v41;
      *(v94 + 80) = v24 & 1;
      *(v94 + 22) = v32;
      v97 = v264;
      v98 = v265;
      *(v94 + 136) = v266;
      *(v94 + 30) = v98;
      *(v94 + 26) = v97;
      v99 = *&v133[16];
      *(v94 + 137) = *v133;
      v100 = *&v133[32];
      v101 = *&v133[48];
      *(v94 + 197) = *&v133[60];
      *(v94 + 185) = v101;
      *(v94 + 169) = v100;
      *(v94 + 153) = v99;
      *(v94 + 27) = v39;
      v94[56] = v42;
      *(v94 + 228) = v134;
      v94[58] = v36;
      *(v94 + 236) = v137;
      v94[60] = v33;
      *(v94 + 244) = v132;
      *(v94 + 31) = v38;
      v94[64] = v45;
      *(v94 + 260) = v131;
      *(v94 + 33) = v46;
      *(v94 + 34) = v44;
      *(v94 + 280) = v130;
      *(v94 + 36) = result;
      return result;
    }
  }

  v109 = v9;
  v110 = v6;
  v111 = v5;
  sub_2619D94A8();
  v48 = v117;
  sub_2619D9068();
  sub_2619C8954(&v144);
  v112 = v14;
  v49 = *(v14 + 16);
  v115 = v13;
  v49(v18, v48, v13);
  sub_2619D9408();
  v50 = v173;
  v51 = v175;
  v52 = v176;
  v53 = v178;
  v54 = v166;
  v55 = v167;
  v56 = v168;
  v57 = v169;
  v58 = v170;
  v59 = v171;
  v60 = v172;
  v61 = v165;
  v62 = v177;
  v63 = v174;
  *&v143[13] = *&v164[13];
  *v143 = *v164;
  v142 = v163;
  v140 = v161;
  v141 = v162;
  v139 = v160;
  v138 = v159;
  v137 = v158;
  v64 = v149;
  v65 = v151;
  v66 = v153;
  v67 = v155;
  v68 = v157;
  v69 = v156;
  v70 = v154;
  v71 = v152;
  v72 = v150;
  v136 = v148;
  v135 = v147;
  v134 = v146;
  v73 = v144;
  for (i = v145; ; i = v181)
  {
    v132 = v72 & 1;
    v131 = v71 & 1;
    v130 = v70 & 1;
    v129 = v69 & 1;
    *v133 = v73;
    v133[4] = i & 1;
    *&v133[8] = v134;
    *&v133[24] = v135;
    *&v133[40] = v136;
    *&v133[48] = v64;
    v133[52] = v72 & 1;
    *&v133[56] = v65;
    v133[60] = v71 & 1;
    *&v133[64] = v66;
    v133[68] = v70 & 1;
    *&v133[72] = v67;
    v133[80] = v69 & 1;
    *&v133[88] = v68;
    v133[136] = v139;
    *&v133[120] = v138;
    *&v133[104] = v137;
    *&v133[205] = *&v143[13];
    *&v133[176] = v142;
    *&v133[192] = *v143;
    *&v133[144] = v140;
    *&v133[160] = v141;
    *&v133[216] = v61;
    *&v133[224] = v54;
    v133[228] = v55 & 1;
    *&v133[232] = v56;
    v133[236] = v57 & 1;
    *&v133[240] = v58;
    v133[244] = v59 & 1;
    *&v133[248] = v60;
    *&v133[256] = v50;
    v133[260] = v63 & 1;
    *&v133[264] = v51;
    *&v133[272] = v52;
    v133[280] = v62 & 1;
    *&v133[288] = v53;
    memcpy(v258, v133, sizeof(v258));
    sub_2619D9418();
    if (!*v260)
    {
      break;
    }

    sub_2619AFB2C(v179, *v260, v118, v119);
    sub_2619CC6D0(v179, &v180);

    sub_2619B3420(v179);
    sub_2619B3420(v133);
    v50 = v209;
    v51 = v211;
    v52 = v212;
    v53 = v214;
    v54 = v202;
    v55 = v203;
    v56 = v204;
    v57 = v205;
    v58 = v206;
    v59 = v207;
    v60 = v208;
    v61 = v201;
    v62 = v213;
    v63 = v210;
    *&v143[13] = *&v200[13];
    *v143 = *v200;
    v142 = v199;
    v140 = v197;
    v141 = v198;
    v139 = v196;
    v138 = v195;
    v137 = v194;
    v64 = v185;
    v65 = v187;
    v66 = v189;
    v67 = v191;
    v68 = v193;
    v69 = v192;
    v70 = v190;
    v71 = v188;
    v72 = v186;
    v136 = v184;
    v135 = v183;
    v134 = v182;
    v73 = v180;
  }

  (*(v113 + 8))(v12, v120);
  sub_2619B6494(&qword_27FEC8F90, MEMORY[0x277CDB190]);
  sub_2619D9A68();
  sub_2619D9A98();
  result = sub_2619D9A88();
  if (result < 0xFFFFFFFF80000000)
  {
    __break(1u);
  }

  else if (result <= 0x7FFFFFFF)
  {
    v260[0] = 0;
    v75 = sub_2619C9840(result);
    v76 = v116;
    v77 = sub_2619B3564(v116);
    v79 = v78;
    v81 = v80;
    v120 = v82;
    sub_2619B389C(v76, v215);
    sub_2619B3B34(v76, v216);
    v83 = v109;
    sub_2619D9358();
    v84 = v111;
    v85 = sub_2619D9268();
    (*(v110 + 8))(v83, v84);
    v86 = nullsub_1(v85);
    sub_2619B41F4(v76, v217);
    sub_2619B4984(v218);
    sub_2619B4BC0(v219);
    v260[0] = BYTE4(v77) & 1;
    LOBYTE(v259[0]) = BYTE4(v79) & 1;
    LOBYTE(v223) = BYTE4(v81) & 1;
    sub_2619CC540(v75 | ((HIDWORD(v75) & 1) << 32), v77 | ((HIDWORD(v77) & 1) << 32), v79 | ((BYTE4(v79) & 1) << 32), v81 | ((BYTE4(v81) & 1) << 32), v120, v215, v216, v86, &v220, v217, v218, v219);
    *v260 = v220;
    v260[4] = v221;
    memcpy(&v260[5], v222, 0x123uLL);
    sub_2619CC6D0(v258, &v223);
    sub_2619B3420(v133);

    sub_2619B624C(&v223, v259);
    v87 = v118;
    v88 = *v118;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v259[0] = *v87;
    sub_2619B2534(&v223, v76, isUniquelyReferenced_nonNull_native);

    *v87 = v259[0];
    v23 = v224;
    LOBYTE(v261) = v224;
    LODWORD(v259[0]) = v223;
    BYTE4(v259[0]) = v224;
    memcpy(v259 + 5, v222, 0x123uLL);
    LODWORD(v120) = v223;
    *v128 = v223;
    v128[4] = v224;
    memcpy(&v128[5], v222, 0x123uLL);

    sub_2619B624C(v259, &v124);
    sub_2619B3420(v128);
    v90 = v119;
    v91 = *v119;
    v92 = swift_isUniquelyReferenced_nonNull_native();
    *&v124 = *v90;
    sub_2619B2534(v259, v76, v92);

    *v90 = v124;
    (*(v112 + 8))(v117, v115);
    v45 = v252;
    v46 = v254;
    v44 = v255;
    result = v257;
    v42 = v245;
    v37 = v246;
    v36 = v247;
    v34 = v248;
    v33 = v249;
    v47 = v250;
    v38 = v251;
    v39 = v244;
    v40 = v256;
    v35 = v253;
    *(v127 + 13) = *&v243[13];
    v126 = v242;
    v127[0] = *v243;
    v124 = v240;
    v125 = v241;
    v264 = v237;
    v265 = v238;
    v266 = v239;
    LODWORD(v119) = v228;
    v31 = v230;
    v25 = v232;
    v41 = v234;
    v32 = v236;
    v24 = v235;
    v26 = v233;
    v30 = v231;
    v29 = v229;
    v263 = v227;
    v261 = v225;
    v262 = v226;
    goto LABEL_10;
  }

  __break(1u);
  return result;
}

unint64_t sub_2619B06D4(uint64_t a1)
{
  if (!(a1 >> 62))
  {
    v1 = a1 & 0xFFFFFFFFFFFFFF8;
    goto LABEL_3;
  }

  while (1)
  {
    v16 = a1;
    v17 = sub_2619D9CA8();
    if (v17)
    {
      v18 = v17;
      v1 = sub_2619B0E90(v17, 0);
      sub_2619B3120(v1 + 32, v18, v16);
      v20 = v19;

      if (v20 != v18)
      {
        __break(1u);
        goto LABEL_38;
      }

      goto LABEL_3;
    }

    while (1)
    {

      v1 = MEMORY[0x277D84F90];
LABEL_3:
      if ((v1 & 0x8000000000000000) == 0 && (v1 & 0x4000000000000000) == 0)
      {
        v2 = *(v1 + 16);
        v3 = v2 >> 1;
        goto LABEL_6;
      }

LABEL_38:
      a1 = sub_2619D9CA8();
      if (a1 >= -1)
      {
        break;
      }

      __break(1u);
    }

    v2 = a1;
    v3 = a1 / 2;
LABEL_6:
    if (v2 + 1 < 3)
    {
      return v1;
    }

    v5 = -v3;
    v6 = 4;
    while (1)
    {
      v7 = v2 - (v6 - 3);
      if (__OFSUB__(v2, v6 - 3))
      {
        break;
      }

      a1 = v6 - 4;
      if (v6 - 4 != v7)
      {
        if ((v1 & 0xC000000000000001) != 0)
        {
          v9 = MEMORY[0x2667148E0]();
          v10 = MEMORY[0x2667148E0](v2 - (v6 - 3), v1);
        }

        else
        {
          if (a1 < 0)
          {
            goto LABEL_31;
          }

          v8 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (a1 >= v8)
          {
            goto LABEL_32;
          }

          if (v7 >= v8)
          {
            goto LABEL_33;
          }

          v9 = *(v1 + 8 * v6);
          v10 = *(v1 + 8 * v7 + 32);
        }

        if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v1 & 0x8000000000000000) != 0 || (v1 & 0x4000000000000000) != 0)
        {
          v1 = sub_2619B0E2C(v1);
          v11 = (v1 >> 62) & 1;
        }

        else
        {
          LODWORD(v11) = 0;
        }

        v12 = v1 & 0xFFFFFFFFFFFFFF8;
        v13 = *((v1 & 0xFFFFFFFFFFFFFF8) + 8 * v6);
        *((v1 & 0xFFFFFFFFFFFFFF8) + 8 * v6) = v10;

        if ((v1 & 0x8000000000000000) != 0 || v11)
        {
          a1 = sub_2619B0E2C(v1);
          v1 = a1;
          v12 = a1 & 0xFFFFFFFFFFFFFF8;
          if ((v7 & 0x8000000000000000) != 0)
          {
LABEL_29:
            __break(1u);
            break;
          }
        }

        else if ((v7 & 0x8000000000000000) != 0)
        {
          goto LABEL_29;
        }

        if (v7 >= *(v12 + 16))
        {
          goto LABEL_34;
        }

        v14 = v12 + 8 * v7;
        v15 = *(v14 + 32);
        *(v14 + 32) = v9;
      }

      ++v6;
      if (v5 + v6 == 4)
      {
        return v1;
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
  }
}

double sub_2619B08E8@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_2619B389C(a1, v5);
  result = *v5;
  v4 = v5[1];
  *a2 = v5[0];
  *(a2 + 16) = v4;
  *(a2 + 32) = v6;
  return result;
}

double sub_2619B0974@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_2619B3B34(a1, v5);
  v3 = v5[1];
  *a2 = v5[0];
  *(a2 + 16) = v3;
  result = *&v6;
  *(a2 + 32) = v6;
  *(a2 + 48) = v7;
  return result;
}

double sub_2619B09C0@<D0>(uint64_t a1@<X8>)
{
  sub_2619B4984(v4);
  result = *v4;
  v3 = v4[1];
  *a1 = v4[0];
  *(a1 + 16) = v3;
  *(a1 + 32) = v5;
  return result;
}

__n128 sub_2619B0A04@<Q0>(uint64_t a1@<X8>)
{
  sub_2619B4BC0(v4);
  v2 = *v5;
  *(a1 + 32) = v4[2];
  *(a1 + 48) = v2;
  *(a1 + 61) = *&v5[13];
  result = v4[1];
  *a1 = v4[0];
  *(a1 + 16) = result;
  return result;
}

void *sub_2619B0A84@<X0>(void *(*a1)(uint64_t *__return_ptr, uint64_t)@<X3>, _DWORD *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEC8EA8, &qword_2619DA390);
  result = a1(&v6, v4);
  *a2 = v6;
  return result;
}

uint64_t sub_2619B0AE4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEC8EA8, &qword_2619DA390);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v7 - v3;
  sub_2619D9358();
  v5 = sub_2619D9268();
  (*(v1 + 8))(v4, v0);
  return nullsub_1(v5);
}

double sub_2619B0C20@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_2619B41F4(a1, v5);
  result = *v5;
  v4 = v5[1];
  *a2 = v5[0];
  *(a2 + 16) = v4;
  *(a2 + 32) = v6;
  return result;
}

uint64_t sub_2619B0C64(uint64_t a1)
{
  v1 = sub_2619C64D8(a1);
  if (v1 >> 62)
  {
    v2 = sub_2619D9CA8();

    if (v2 < 0xFFFFFFFF80000000)
    {
      __break(1u);
      goto LABEL_7;
    }
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v2 <= 0x7FFFFFFF)
  {
    v4 = sub_2619C9840(v2);
    return v4 | ((HIDWORD(v4) & 1) << 32);
  }

LABEL_7:
  __break(1u);
  return result;
}

unint64_t sub_2619B0D08(uint64_t a1)
{
  v3 = *(v1 + 40);
  sub_2619D94A8();
  sub_2619B6494(&qword_27FEC8F50, MEMORY[0x277CDB1C8]);
  v4 = sub_2619D9918();
  return sub_2619B0F18(a1, v4);
}

unint64_t sub_2619B0DB4(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_2619D9DA8();
  sub_2619D9998();
  v6 = sub_2619D9DC8();

  return sub_2619B1014(a1, a2, v6);
}

uint64_t sub_2619B0E2C(unint64_t a1)
{
  if (a1 >> 62)
  {
    sub_2619D9CA8();
  }

  else
  {
    v1 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return sub_2619D9BD8();
}

void *sub_2619B0E90(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEC8F80, &qword_2619DA540);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = (2 * (v9 >> 3)) | 1;
  return result;
}

unint64_t sub_2619B0F18(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    sub_2619D94A8();
    sub_2619B6494(&qword_27FEC8F68, MEMORY[0x277CDB1C8]);
    do
    {
      v7 = *(*(v2 + 48) + 8 * v4);
      if (sub_2619D9938())
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_2619B1014(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_2619D9D38())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

void *sub_2619B10CC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = v2;
  v5 = *v2;
  v6 = sub_2619B0D08(a1);
  if (v7)
  {
    v8 = v6;
    v9 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *v3;
    __src[0] = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_2619B2C64();
      v11 = __src[0];
    }

    v12 = *(*(v11 + 48) + 8 * v8);

    memmove(a2, (*(v11 + 56) + 296 * v8), 0x128uLL);
    sub_2619B235C(v8, v11);
    *v3 = v11;
    return nullsub_1(a2);
  }

  else
  {
    sub_2619B638C(__src);
    return memcpy(a2, __src, 0x128uLL);
  }
}

uint64_t sub_2619B1194(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEC8F28, &qword_2619DA470);
  v38 = a2;
  result = sub_2619D9CC8();
  v8 = result;
  if (*(v5 + 16))
  {
    v36 = v3;
    v37 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(*(v5 + 56) + 4 * v21);
      if ((v38 & 1) == 0)
      {
        v26 = v22[1];
      }

      v27 = *(v8 + 40);
      sub_2619D9DA8();
      sub_2619D9998();
      result = sub_2619D9DC8();
      v28 = -1 << *(v8 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v15 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v15 + 8 * v30);
          if (v34 != -1)
          {
            v16 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v29) & ~*(v15 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 4 * v16) = v25;
      ++*(v8 + 16);
      v5 = v37;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_35;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero(v10, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_2619B1434(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEC8EE0, &qword_2619DA3C0);
  v39 = a2;
  result = sub_2619D9CC8();
  v8 = result;
  if (*(v5 + 16))
  {
    v37 = v3;
    v38 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v19 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v22 = v19 | (v9 << 6);
      v23 = (*(v5 + 48) + 16 * v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = (*(v5 + 56) + 24 * v22);
      v27 = v26[1];
      v40 = v26[2];
      v41 = *v26;
      if ((v39 & 1) == 0)
      {
      }

      v28 = *(v8 + 40);
      sub_2619D9DA8();
      sub_2619D9998();
      result = sub_2619D9DC8();
      v29 = -1 << *(v8 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v15 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v15 + 8 * v31);
          if (v35 != -1)
          {
            v16 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v30) & ~*(v15 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v24;
      v17[1] = v25;
      v18 = (*(v8 + 56) + 24 * v16);
      *v18 = v41;
      v18[1] = v27;
      v18[2] = v40;
      ++*(v8 + 16);
      v5 = v38;
    }

    v20 = v9;
    while (1)
    {
      v9 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v21 = v10[v9];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v13 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v37;
      goto LABEL_35;
    }

    v36 = 1 << *(v5 + 32);
    v3 = v37;
    if (v36 >= 64)
    {
      bzero(v10, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v36;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_2619B16FC(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEC8EE8, &qword_2619DA3C8);
  v40 = a2;
  result = sub_2619D9CC8();
  v8 = result;
  if (*(v5 + 16))
  {
    v38 = v3;
    v39 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v19 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v22 = v19 | (v9 << 6);
      v23 = (*(v5 + 48) + 16 * v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = (*(v5 + 56) + 24 * v22);
      v27 = v26[1];
      v41 = *v26;
      v28 = v26[2];
      if ((v40 & 1) == 0)
      {
      }

      v29 = *(v8 + 40);
      sub_2619D9DA8();
      sub_2619D9998();
      result = sub_2619D9DC8();
      v30 = -1 << *(v8 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v15 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v15 + 8 * v32);
          if (v36 != -1)
          {
            v16 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v31) & ~*(v15 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v24;
      v17[1] = v25;
      v18 = (*(v8 + 56) + 24 * v16);
      *v18 = v41;
      v18[1] = v27;
      v18[2] = v28;
      ++*(v8 + 16);
      v5 = v39;
    }

    v20 = v9;
    while (1)
    {
      v9 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v21 = v10[v9];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v13 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_35;
    }

    v37 = 1 << *(v5 + 32);
    v3 = v38;
    if (v37 >= 64)
    {
      bzero(v10, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v37;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_2619B19CC(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEC8F60, &qword_2619DA538);
  v43 = a2;
  result = sub_2619D9CC8();
  v8 = result;
  if (*(v5 + 16))
  {
    v41 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    v42 = v5;
    while (v13)
    {
      v23 = __clz(__rbit64(v13));
      v24 = (v13 - 1) & v13;
LABEL_17:
      v27 = v23 | (v9 << 6);
      v71 = v24;
      v28 = *(v5 + 56);
      if (v43)
      {
        v70 = *(*(v5 + 48) + 8 * v27);
        v78 = v70;
        v29 = (v28 + 296 * v27);
        v60 = *v29;
        v56 = *(v29 + 4);
        v30 = *(v29 + 6);
        v79 = *(v29 + 2);
        v80 = v30;
        v81 = *(v29 + 5);
        v49 = *(v29 + 52);
        v50 = v29[12];
        v51 = *(v29 + 60);
        v52 = v29[14];
        v53 = *(v29 + 68);
        v54 = v29[16];
        v55 = *(v29 + 80);
        v57 = *(v29 + 9);
        v58 = *(v29 + 11);
        v59 = *(v29 + 12);
        v84 = *(v29 + 136);
        v31 = *(v29 + 30);
        v82 = *(v29 + 26);
        v83 = v31;
        v73 = *(v29 + 9);
        *(v76 + 13) = *(v29 + 205);
        v76[0] = *(v29 + 12);
        v75 = *(v29 + 11);
        v74 = *(v29 + 10);
        v67 = v29[56];
        v65 = v29[58];
        v46 = *(v29 + 236);
        v47 = *(v29 + 228);
        v63 = v29[60];
        v61 = *(v29 + 31);
        v62 = *(v29 + 27);
        v69 = v29[64];
        v48 = *(v29 + 260);
        v68 = *(v29 + 33);
        v66 = *(v29 + 34);
        v44 = *(v29 + 244);
        v45 = *(v29 + 280);
        v64 = *(v29 + 36);
      }

      else
      {
        v78 = *(*(v5 + 48) + 8 * v27);
        memcpy(__dst, (v28 + 296 * v27), sizeof(__dst));
        v69 = *&__dst[256];
        v68 = *&__dst[264];
        v66 = *&__dst[272];
        v64 = *&__dst[288];
        v67 = *&__dst[224];
        v47 = __dst[228];
        v48 = __dst[260];
        v65 = *&__dst[232];
        v45 = __dst[280];
        v46 = __dst[236];
        v63 = *&__dst[240];
        v44 = __dst[244];
        v61 = *&__dst[248];
        v62 = *&__dst[216];
        v60 = *__dst;
        v58 = *&__dst[88];
        v59 = *&__dst[96];
        v57 = *&__dst[72];
        v55 = __dst[80];
        v56 = __dst[4];
        v53 = __dst[68];
        v54 = *&__dst[64];
        v51 = __dst[60];
        v52 = *&__dst[56];
        v49 = __dst[52];
        v50 = *&__dst[48];
        v70 = v78;

        sub_2619B624C(__dst, &v73);
        v79 = *&__dst[8];
        v80 = *&__dst[24];
        v81 = *&__dst[40];
        v82 = *&__dst[104];
        v83 = *&__dst[120];
        v84 = __dst[136];
        *(v76 + 13) = *&__dst[205];
        v76[0] = *&__dst[192];
        v74 = *&__dst[160];
        v75 = *&__dst[176];
        v73 = *&__dst[144];
      }

      v32 = *(v8 + 40);
      sub_2619D94A8();
      sub_2619B6494(&qword_27FEC8F50, MEMORY[0x277CDB1C8]);
      result = sub_2619D9918();
      v33 = -1 << *(v8 + 32);
      v34 = result & ~v33;
      v35 = v34 >> 6;
      if (((-1 << v34) & ~*(v15 + 8 * (v34 >> 6))) == 0)
      {
        v36 = 0;
        v37 = (63 - v33) >> 6;
        v5 = v42;
        while (++v35 != v37 || (v36 & 1) == 0)
        {
          v38 = v35 == v37;
          if (v35 == v37)
          {
            v35 = 0;
          }

          v36 |= v38;
          v39 = *(v15 + 8 * v35);
          if (v39 != -1)
          {
            v16 = __clz(__rbit64(~v39)) + (v35 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v34) & ~*(v15 + 8 * (v34 >> 6)))) | v34 & 0x7FFFFFFFFFFFFFC0;
      v5 = v42;
LABEL_9:
      *&__dst[68] = *(v76 + 13);
      *&__dst[39] = v75;
      *&__dst[55] = v76[0];
      *&__dst[7] = v73;
      *&__dst[23] = v74;
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v70;
      *&v72[35] = v81;
      v17 = *(v8 + 56) + 296 * v16;
      *v17 = v60;
      *(v17 + 4) = v56;
      *(v17 + 48) = v50;
      *(v17 + 52) = v49;
      *(v17 + 56) = v52;
      *(v17 + 60) = v51;
      *(v17 + 64) = v54;
      *(v17 + 68) = v53;
      *(v17 + 72) = v57;
      *(v17 + 80) = v55;
      *(v17 + 88) = v58;
      *(v17 + 96) = v59;
      *(v17 + 136) = v84;
      *&v72[3] = v79;
      *&v72[19] = v80;
      *(v17 + 5) = *v72;
      *(v17 + 21) = *&v72[16];
      *(v17 + 32) = *&v72[27];
      v18 = v82;
      *(v17 + 120) = v83;
      *(v17 + 104) = v18;
      *(v17 + 137) = *__dst;
      v19 = *&__dst[16];
      v20 = *&__dst[32];
      v21 = *&__dst[48];
      v22 = *&__dst[60];
      *(v17 + 216) = v62;
      *(v17 + 224) = v67;
      *(v17 + 228) = v47;
      *(v17 + 232) = v65;
      *(v17 + 236) = v46;
      *(v17 + 240) = v63;
      *(v17 + 244) = v44;
      *(v17 + 248) = v61;
      *(v17 + 256) = v69;
      *(v17 + 260) = v48;
      *(v17 + 264) = v68;
      *(v17 + 272) = v66;
      *(v17 + 280) = v45;
      *(v17 + 288) = v64;
      *(v17 + 197) = v22;
      *(v17 + 185) = v21;
      *(v17 + 169) = v20;
      *(v17 + 153) = v19;
      ++*(v8 + 16);
      v13 = v71;
    }

    v25 = v9;
    while (1)
    {
      v9 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v9 >= v14)
      {
        break;
      }

      v26 = v10[v9];
      ++v25;
      if (v26)
      {
        v23 = __clz(__rbit64(v26));
        v24 = (v26 - 1) & v26;
        goto LABEL_17;
      }
    }

    if ((v43 & 1) == 0)
    {

      v3 = v41;
      goto LABEL_36;
    }

    v40 = 1 << *(v5 + 32);
    v3 = v41;
    if (v40 >= 64)
    {
      bzero(v10, ((v40 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v40;
    }

    *(v5 + 16) = 0;
  }

LABEL_36:
  *v3 = v8;
  return result;
}

uint64_t sub_2619B2084(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEC8F48, &qword_2619DA530);
  v34 = a2;
  result = sub_2619D9CC8();
  v8 = result;
  if (*(v5 + 16))
  {
    v32 = v3;
    v33 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = v17 | (v9 << 6);
      v21 = *(v5 + 56);
      v22 = *(*(v5 + 48) + 8 * v20);
      v35 = *(v21 + 8 * v20);
      if ((v34 & 1) == 0)
      {
      }

      v23 = *(v8 + 40);
      sub_2619D94A8();
      sub_2619B6494(&qword_27FEC8F50, MEMORY[0x277CDB1C8]);
      result = sub_2619D9918();
      v24 = -1 << *(v8 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v15 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v15 + 8 * v26);
          if (v30 != -1)
          {
            v16 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v25) & ~*(v15 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v22;
      *(*(v8 + 56) + 8 * v16) = v35;
      ++*(v8 + 16);
      v5 = v33;
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    if ((v34 & 1) == 0)
    {

      v3 = v32;
      goto LABEL_35;
    }

    v31 = 1 << *(v5 + 32);
    v3 = v32;
    if (v31 >= 64)
    {
      bzero(v10, ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v31;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

unint64_t sub_2619B235C(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_2619D9B58() + 1) & ~v5;
    sub_2619D94A8();
    sub_2619B6494(&qword_27FEC8F50, MEMORY[0x277CDB1C8]);
    do
    {
      v9 = *(a2 + 40);
      v21 = *(*(a2 + 48) + 8 * v6);
      result = sub_2619D9918();
      v10 = result & v7;
      if (v3 >= v8)
      {
        if (v10 >= v8 && v3 >= v10)
        {
LABEL_15:
          v13 = *(a2 + 48);
          v14 = (v13 + 8 * v3);
          v15 = (v13 + 8 * v6);
          if (v3 != v6 || v14 >= v15 + 1)
          {
            *v14 = *v15;
          }

          v16 = *(a2 + 56);
          result = v16 + 296 * v3;
          v17 = (v16 + 296 * v6);
          if (v3 != v6 || result >= v17 + 296)
          {
            result = memmove(result, v17, 0x128uLL);
            v3 = v6;
          }
        }
      }

      else if (v10 >= v8 || v3 >= v10)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v18 = *(a2 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v20;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_2619B2534(const void *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_2619B0D08(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_17;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 < v14 || (a3 & 1) != 0)
    {
      sub_2619B19CC(v14, a3 & 1);
      v18 = *v4;
      v9 = sub_2619B0D08(a2);
      if ((v15 & 1) != (v19 & 1))
      {
LABEL_18:
        sub_2619D94A8();
        result = sub_2619D9D78();
        __break(1u);
        return result;
      }
    }

    else
    {
      v17 = v9;
      sub_2619B2C64();
      v9 = v17;
    }
  }

  v20 = *v4;
  if (v15)
  {
    v21 = v20[7] + 296 * v9;

    return sub_2619B6330(a1, v21);
  }

  v20[(v9 >> 6) + 8] |= 1 << v9;
  *(v20[6] + 8 * v9) = a2;
  memcpy((v20[7] + 296 * v9), a1, 0x128uLL);
  v23 = v20[2];
  v13 = __OFADD__(v23, 1);
  v24 = v23 + 1;
  if (v13)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v20[2] = v24;
}

unint64_t sub_2619B26A4(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  result = sub_2619B0D08(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_15;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 < v14 || (a3 & 1) != 0)
    {
      sub_2619B2084(v14, a3 & 1);
      v18 = *v4;
      result = sub_2619B0D08(a2);
      if ((v15 & 1) != (v19 & 1))
      {
LABEL_16:
        sub_2619D94A8();
        result = sub_2619D9D78();
        __break(1u);
        return result;
      }
    }

    else
    {
      v17 = result;
      sub_2619B2E00();
      result = v17;
    }
  }

  v20 = *v4;
  if (v15)
  {
    *(v20[7] + 8 * result) = a1;
    return result;
  }

  v20[(result >> 6) + 8] |= 1 << result;
  *(v20[6] + 8 * result) = a2;
  *(v20[7] + 8 * result) = a1;
  v21 = v20[2];
  v13 = __OFADD__(v21, 1);
  v22 = v21 + 1;
  if (v13)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v20[2] = v22;
}

void *sub_2619B27EC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEC8F28, &qword_2619DA470);
  v2 = *v0;
  v3 = sub_2619D9CB8();
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
        v18 = (*(v2 + 48) + 16 * v17);
        v20 = *v18;
        v19 = v18[1];
        LODWORD(v18) = *(*(v2 + 56) + 4 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = v20;
        v21[1] = v19;
        *(*(v4 + 56) + 4 * v17) = v18;
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

void *sub_2619B2954()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEC8EE0, &qword_2619DA3C0);
  v2 = *v0;
  v3 = sub_2619D9CB8();
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
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v17 *= 24;
        v22 = (*(v2 + 56) + v17);
        v23 = *v22;
        v24 = v22[1];
        v25 = v22[2];
        v26 = (*(v4 + 48) + v18);
        *v26 = v21;
        v26[1] = v20;
        v27 = (*(v4 + 56) + v17);
        *v27 = v23;
        v27[1] = v24;
        v27[2] = v25;
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

void *sub_2619B2ADC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEC8EE8, &qword_2619DA3C8);
  v2 = *v0;
  v3 = sub_2619D9CB8();
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
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v17 *= 24;
        v22 = (*(v2 + 56) + v17);
        v23 = *v22;
        v24 = v22[1];
        v25 = (*(v4 + 48) + v18);
        v26 = v22[2];
        *v25 = v21;
        v25[1] = v20;
        v27 = (*(v4 + 56) + v17);
        *v27 = v23;
        v27[1] = v24;
        v27[2] = v26;
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

void *sub_2619B2C64()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEC8F60, &qword_2619DA538);
  v2 = *v0;
  v3 = sub_2619D9CB8();
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
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; result = sub_2619B624C(__dst, v18))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v16 = v13 | (v8 << 6);
      v17 = *(*(v2 + 48) + 8 * v16);
      memcpy(__dst, (*(v2 + 56) + 296 * v16), 0x128uLL);
      *(*(v4 + 48) + 8 * v16) = v17;
      memcpy((*(v4 + 56) + 296 * v16), __dst, 0x128uLL);
    }

    v14 = v8;
    while (1)
    {
      v8 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v15 = *(v2 + 64 + 8 * v8);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v11 = (v15 - 1) & v15;
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

void *sub_2619B2E00()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEC8F48, &qword_2619DA530);
  v2 = *v0;
  v3 = sub_2619D9CB8();
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
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 56) + 8 * v17) = v18;
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

uint64_t sub_2619B2F5C(uint64_t (*a1)(uint64_t *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_15;
  }

  v4 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v4)
  {
    do
    {
      v5 = 0;
      v14 = a3 & 0xC000000000000001;
      v6 = a3 & 0xFFFFFFFFFFFFFF8;
      while (v14)
      {
        v7 = a3;
        v8 = MEMORY[0x2667148E0](v5, a3);
        v9 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          goto LABEL_13;
        }

LABEL_7:
        v16 = v8;
        v10 = a1(&v16);

        if (!v3 && (v10 & 1) == 0)
        {
          ++v5;
          a3 = v7;
          if (v9 != v4)
          {
            continue;
          }
        }

        return v10 & 1;
      }

      if (v5 >= *(v6 + 16))
      {
        goto LABEL_14;
      }

      v7 = a3;
      v8 = *(a3 + 8 * v5 + 32);

      v9 = v5 + 1;
      if (!__OFADD__(v5, 1))
      {
        goto LABEL_7;
      }

LABEL_13:
      __break(1u);
LABEL_14:
      __break(1u);
LABEL_15:
      v11 = a3;
      v12 = sub_2619D9CA8();
      a3 = v11;
      v4 = v12;
    }

    while (v12);
  }

  v10 = 0;
  return v10 & 1;
}

uint64_t (*sub_2619B3098(uint64_t (*result)(uint64_t *a1), unint64_t a2, uint64_t a3))(uint64_t *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v5 = MEMORY[0x2667148E0](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);

LABEL_5:
    *v3 = v5;
    return sub_2619B3118;
  }

  __break(1u);
  return result;
}

uint64_t sub_2619B3120(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_2619D9CA8();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_2619D9CA8();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_2619B63E4();
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEC8F70, &unk_2619DB1E0);
            v9 = sub_2619B3098(v13, i, a3);
            v11 = *v10;

            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_2619D94A8();
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_2619B32A0(uint64_t *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *a1;
  sub_2619D94A8();
  sub_2619B6494(&qword_27FEC8F68, MEMORY[0x277CDB1C8]);
  return sub_2619D9938() & 1;
}

unint64_t sub_2619B3330(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEC8F98, &unk_2619DA550);
    v3 = sub_2619D9CD8();

    for (i = (a1 + 40); ; i += 16)
    {
      v5 = *(i - 1);
      v6 = *i;

      result = sub_2619B0D08(v7);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      *(v3[7] + result) = v6;
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_2619B3474(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEC8F00, &qword_2619DA3E0);
    v3 = sub_2619D9CD8();

    for (i = (a1 + 40); ; i += 4)
    {
      v5 = *(i - 1);
      v6 = *i;

      result = sub_2619B0D08(v7);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      *(v3[7] + 4 * result) = v6;
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t sub_2619B3564(uint64_t a1)
{
  v2 = sub_2619D93F8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEC8EA8, &qword_2619DA390);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = v22 - v14;
  sub_2619D4228(v13);
  v24 = v16;
  sub_2619D9358();
  sub_2619BA70C(v7);
  v22[0] = *(v8 + 8);
  (v22[0])(v15, v7);
  v23 = v25;
  sub_2619D9198();
  sub_2619D9368();
  v22[1] = sub_2619D93D8();
  v17 = *(v3 + 8);
  v17(v6, v2);
  sub_2619D9168();
  sub_2619D9368();
  v18 = a1;
  sub_2619D93D8();
  v17(v6, v2);
  sub_2619D9358();
  v19 = sub_2619D92E8();
  (v22[0])(v12, v7);
  if ((v19 & 0x100000000) != 0)
  {
    sub_2619B3474(MEMORY[0x277D84F90]);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEC8EF0, &qword_2619DA3D0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_2619DA380;
    *(inited + 32) = v18;
    *(inited + 40) = v19;

    sub_2619B3474(inited);
    swift_setDeallocating();
    sub_2619B62D0(inited + 32, &qword_27FEC8EF8, &qword_2619DA3D8);
  }

  return v23;
}

uint64_t sub_2619B389C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEC8EA8, &qword_2619DA390);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v16 - v7;
  sub_2619B60F0();

  v9 = sub_2619D9348();
  sub_2619D422C(v19, v9);
  swift_getKeyPath();
  swift_getKeyPath();
  swift_getKeyPath();

  swift_getAtKeyPath();

  v17 = v18;

  swift_getAtKeyPath();

  v10 = v18;

  swift_getAtKeyPath();

  v11 = v18;
  sub_2619BA248(v4);
  v12 = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEC8F30, &qword_2619DA520);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2619DA380;
  *(inited + 32) = a1;

  *(inited + 40) = sub_2619B9A8C(v4);
  v14 = sub_2619B4104(inited, &qword_27FEC8F40, &qword_2619DB1F0);
  swift_setDeallocating();
  sub_2619B62D0(inited + 32, &qword_27FEC8F38, &qword_2619DA528);
  (*(v5 + 8))(v8, v4);
  result = sub_2619B61F8(v19);
  *a2 = v12;
  *(a2 + 4) = 0;
  *(a2 + 8) = v17;
  *(a2 + 12) = 0;
  *(a2 + 16) = v10;
  *(a2 + 20) = 0;
  *(a2 + 24) = v11;
  *(a2 + 28) = 0;
  *(a2 + 32) = v14;
  return result;
}

uint64_t sub_2619B3B34@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v58 = a2;
  v61 = sub_2619D93F8();
  v60 = *(v61 - 8);
  v3 = *(v60 + 64);
  MEMORY[0x28223BE20](v61);
  v59 = &v56 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEC8EA8, &qword_2619DA390);
  v57 = *(v5 - 8);
  v6 = *(v57 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v56 - v7;
  sub_2619B60F0();

  sub_2619D9348();
  v9 = sub_2619D9238();
  v62 = v8;
  v63 = v5;
  v10 = sub_2619BA99C();
  v11 = v9 + 64;
  v12 = 1 << *(v9 + 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & *(v9 + 64);
  v15 = (v12 + 63) >> 6;
  v68 = v9;

  v16 = 0;
  v17 = MEMORY[0x277D84F98];
  v66 = v10;
  v67 = a1;
  v64 = v15;
  v65 = v9 + 64;
  while (v14)
  {
    v18 = v16;
LABEL_11:
    v19 = __clz(__rbit64(v14)) | (v18 << 6);
    v20 = (*(v68 + 48) + 16 * v19);
    v21 = *v20;
    v22 = v20[1];
    v69 = *(*(v68 + 56) + 4 * v19);
    v23 = *(v10 + 16);
    swift_bridgeObjectRetain_n();
    if (v23)
    {
      v24 = sub_2619B0DB4(v21, v22);
      v25 = v22;
      if (v26)
      {
        v27 = (*(v10 + 56) + 16 * v24);
        v21 = *v27;
        v25 = v27[1];
      }
    }

    else
    {
      v25 = v22;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v70[0] = v17;
    v29 = v21;
    v31 = sub_2619B0DB4(v21, v25);
    v32 = v17[2];
    v33 = (v30 & 1) == 0;
    v34 = v32 + v33;
    if (__OFADD__(v32, v33))
    {
LABEL_27:
      __break(1u);
LABEL_28:
      __break(1u);
LABEL_29:
      __break(1u);
LABEL_30:
      result = sub_2619D9D78();
      __break(1u);
      return result;
    }

    v35 = v30;
    if (v17[3] >= v34)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_2619B27EC();
      }
    }

    else
    {
      sub_2619B1194(v34, isUniquelyReferenced_nonNull_native);
      v36 = sub_2619B0DB4(v29, v25);
      if ((v35 & 1) != (v37 & 1))
      {
        goto LABEL_30;
      }

      v31 = v36;
    }

    a1 = v67;
    v14 &= v14 - 1;
    if (v35)
    {

      v17 = *&v70[0];
      *(*(*&v70[0] + 56) + 4 * v31) = v69;
    }

    else
    {
      v17 = *&v70[0];
      *(*&v70[0] + 8 * (v31 >> 6) + 64) |= 1 << v31;
      v38 = (v17[6] + 16 * v31);
      *v38 = v29;
      v38[1] = v25;
      *(v17[7] + 4 * v31) = v69;

      v39 = v17[2];
      v40 = __OFADD__(v39, 1);
      v41 = v39 + 1;
      if (v40)
      {
        goto LABEL_28;
      }

      v17[2] = v41;
    }

    v16 = v18;
    v11 = v65;
    v10 = v66;
    v15 = v64;
  }

  while (1)
  {
    v18 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      __break(1u);
      goto LABEL_27;
    }

    if (v18 >= v15)
    {
      break;
    }

    v14 = *(v11 + 8 * v18);
    ++v16;
    if (v14)
    {
      goto LABEL_11;
    }
  }

  v42 = v59;
  sub_2619D9368();
  sub_2619D94D8();
  v43 = sub_2619D93D8();
  v44 = *(v60 + 8);
  v45 = v61;
  v44(v42, v61);
  sub_2619D9368();
  sub_2619D94B8();
  v46 = sub_2619D93D8();
  v44(v42, v45);
  sub_2619D9368();
  sub_2619D94C8();
  v47 = sub_2619D93D8();
  v44(v42, v45);
  v48 = v62;
  v49 = v63;
  sub_2619D9248();
  v50 = LODWORD(v70[0]);
  if ((v70[0] & 0x80000000) != 0)
  {
    goto LABEL_29;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEC8F10, &qword_2619DA458);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2619DA380;
  *(inited + 32) = a1;
  *(inited + 40) = v17;

  v52 = sub_2619B4104(inited, &qword_27FEC8F20, &qword_2619DA468);
  swift_setDeallocating();
  sub_2619B62D0(inited + 32, &qword_27FEC8F18, &qword_2619DA460);
  LOBYTE(v70[0]) = 0;
  sub_2619CA1DC(v43 & 1, v46 & 1, v47 & 1, v50, 0, 0, v52, v70);
  result = (*(v57 + 8))(v48, v49);
  v54 = v70[1];
  v55 = v58;
  *v58 = v70[0];
  v55[1] = v54;
  v55[2] = v70[2];
  *(v55 + 6) = v71;
  return result;
}

unint64_t sub_2619B4104(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v5 = sub_2619D9CD8();

    for (i = (a1 + 40); ; i += 2)
    {
      v8 = *(i - 1);
      v7 = *i;

      result = sub_2619B0D08(v8);
      if (v10)
      {
        break;
      }

      *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v5[6] + 8 * result) = v8;
      *(v5[7] + 8 * result) = v7;
      v11 = v5[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v5[2] = v13;
      if (!--v3)
      {

        return v5;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

void sub_2619B41F4(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v92 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEC8EA8, &qword_2619DA390);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v89 - v6;
  sub_2619D9358();
  v8 = sub_2619D92C8();
  v9 = *(v4 + 8);
  v9(v7, v3);
  sub_2619D9358();
  v95 = sub_2619D92B8();
  v9(v7, v3);
  v91 = a1;
  sub_2619D9358();
  *&v97 = sub_2619BA99C();
  v9(v7, v3);
  v10 = v8 + 64;
  v11 = 1 << *(v8 + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & *(v8 + 64);
  v14 = (v11 + 63) >> 6;
  v96 = v8;

  v15 = 0;
  v16 = MEMORY[0x277D84F98];
  v94 = v8 + 64;
  v93 = v14;
  while (v13)
  {
    v19 = v15;
    v20 = v97;
LABEL_12:
    v21 = __clz(__rbit64(v13)) | (v19 << 6);
    v22 = (*(v96 + 48) + 16 * v21);
    v23 = *v22;
    v24 = v22[1];
    v25 = *(*(v96 + 56) + 8 * v21);
    v26 = *(v20 + 16);
    swift_bridgeObjectRetain_n();
    v27 = v24;
    v28 = v23;
    if (v26)
    {
      v29 = sub_2619B0DB4(v23, v24);
      v27 = v24;
      v28 = v23;
      if (v30)
      {
        v31 = (*(v20 + 56) + 16 * v29);
        v28 = *v31;
        v27 = v31[1];
      }
    }

    v32 = v16;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v98[0] = v16;
    v35 = sub_2619B0DB4(v28, v27);
    v36 = v16[2];
    v37 = (v34 & 1) == 0;
    v38 = v36 + v37;
    if (__OFADD__(v36, v37))
    {
      goto LABEL_49;
    }

    v39 = v34;
    if (v32[3] >= v38)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_2619B2ADC();
      }
    }

    else
    {
      sub_2619B16FC(v38, isUniquelyReferenced_nonNull_native);
      v40 = sub_2619B0DB4(v28, v27);
      if ((v39 & 1) != (v41 & 1))
      {
        goto LABEL_53;
      }

      v35 = v40;
    }

    v13 &= v13 - 1;
    if (v39)
    {

      v16 = *&v98[0];
      v17 = (*(*&v98[0] + 56) + 24 * v35);
      v18 = v17[1];
      *v17 = v23;
      v17[1] = v24;
      v17[2] = v25;
    }

    else
    {
      v16 = *&v98[0];
      *(*&v98[0] + 8 * (v35 >> 6) + 64) |= 1 << v35;
      v42 = (v16[6] + 16 * v35);
      *v42 = v28;
      v42[1] = v27;
      v43 = (v16[7] + 24 * v35);
      *v43 = v23;
      v43[1] = v24;
      v43[2] = v25;

      v44 = v16[2];
      v45 = __OFADD__(v44, 1);
      v46 = v44 + 1;
      if (v45)
      {
        goto LABEL_51;
      }

      v16[2] = v46;
    }

    v15 = v19;
    v10 = v94;
    v14 = v93;
  }

  v20 = v97;
  while (1)
  {
    v19 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      __break(1u);
      goto LABEL_48;
    }

    if (v19 >= v14)
    {
      break;
    }

    v13 = *(v10 + 8 * v19);
    ++v15;
    if (v13)
    {
      goto LABEL_12;
    }
  }

  v90 = v16;

  v47 = v95 + 64;
  v48 = 1 << *(v95 + 32);
  v49 = -1;
  if (v48 < 64)
  {
    v49 = ~(-1 << v48);
  }

  v50 = v49 & *(v95 + 64);
  v51 = (v48 + 63) >> 6;

  v52 = 0;
  v53 = MEMORY[0x277D84F98];
  v94 = v47;
  v93 = v51;
  while (v50)
  {
    v57 = v52;
LABEL_34:
    v58 = __clz(__rbit64(v50)) | (v57 << 6);
    v59 = (*(v95 + 48) + 16 * v58);
    v60 = *v59;
    v61 = v59[1];
    v96 = *(*(v95 + 56) + 8 * v58);
    v62 = *(v20 + 16);
    swift_bridgeObjectRetain_n();
    v63 = v61;
    v64 = v60;
    if (v62)
    {
      v65 = sub_2619B0DB4(v60, v61);
      v63 = v61;
      v64 = v60;
      if (v66)
      {
        v67 = (*(v20 + 56) + 16 * v65);
        v64 = *v67;
        v63 = v67[1];
      }
    }

    v68 = swift_isUniquelyReferenced_nonNull_native();
    *&v98[0] = v53;
    v69 = sub_2619B0DB4(v64, v63);
    v71 = v53[2];
    v72 = (v70 & 1) == 0;
    v45 = __OFADD__(v71, v72);
    v73 = v71 + v72;
    if (v45)
    {
      goto LABEL_50;
    }

    v74 = v70;
    if (v53[3] >= v73)
    {
      if ((v68 & 1) == 0)
      {
        v81 = v69;
        sub_2619B2954();
        v69 = v81;
      }
    }

    else
    {
      sub_2619B1434(v73, v68);
      v69 = sub_2619B0DB4(v64, v63);
      if ((v74 & 1) != (v75 & 1))
      {
        goto LABEL_53;
      }
    }

    v76 = v96;
    v50 &= v50 - 1;
    if (v74)
    {
      v54 = v69;

      v53 = *&v98[0];
      v55 = (*(*&v98[0] + 56) + 24 * v54);
      v56 = v55[1];
      *v55 = v60;
      v55[1] = v61;
      v55[2] = v76;
    }

    else
    {
      v53 = *&v98[0];
      *(*&v98[0] + 8 * (v69 >> 6) + 64) |= 1 << v69;
      v77 = (v53[6] + 16 * v69);
      *v77 = v64;
      v77[1] = v63;
      v78 = (v53[7] + 24 * v69);
      *v78 = v60;
      v78[1] = v61;
      v78[2] = v76;

      v79 = v53[2];
      v45 = __OFADD__(v79, 1);
      v80 = v79 + 1;
      if (v45)
      {
        goto LABEL_52;
      }

      v53[2] = v80;
    }

    v52 = v57;
    v20 = v97;
    v47 = v94;
    v51 = v93;
  }

  while (1)
  {
    v57 = v52 + 1;
    if (__OFADD__(v52, 1))
    {
      break;
    }

    if (v57 >= v51)
    {

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEC8EB0, &qword_2619DA398);
      inited = swift_initStackObject();
      v97 = xmmword_2619DA380;
      *(inited + 16) = xmmword_2619DA380;
      v83 = v91;
      *(inited + 32) = v91;
      *(inited + 40) = v90;

      v84 = sub_2619B4104(inited, &qword_27FEC8ED8, &unk_2619DB1B0);
      swift_setDeallocating();
      sub_2619B62D0(inited + 32, &qword_27FEC8EB8, &qword_2619DA3A0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEC8EC0, &qword_2619DA3A8);
      v85 = swift_initStackObject();
      *(v85 + 16) = v97;
      *(v85 + 32) = v83;
      *(v85 + 40) = v53;

      v86 = sub_2619B4104(v85, &qword_27FEC8ED0, &qword_2619DA3B8);
      swift_setDeallocating();
      sub_2619B62D0(v85 + 32, &qword_27FEC8EC8, &qword_2619DA3B0);
      sub_2619CBFD4(v84, v86, v98);
      v87 = v98[1];
      v88 = v92;
      *v92 = v98[0];
      v88[1] = v87;
      *(v88 + 4) = v99;
      return;
    }

    v50 = *(v47 + 8 * v57);
    ++v52;
    if (v50)
    {
      goto LABEL_34;
    }
  }

LABEL_48:
  __break(1u);
LABEL_49:
  __break(1u);
LABEL_50:
  __break(1u);
LABEL_51:
  __break(1u);
LABEL_52:
  __break(1u);
LABEL_53:
  sub_2619D9D78();
  __break(1u);
}

uint64_t sub_2619B4984@<X0>(uint64_t a1@<X8>)
{
  v18 = sub_2619D93F8();
  v2 = *(v18 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v18);
  v5 = &v16[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEC8EA8, &qword_2619DA390);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v16[-v9];
  sub_2619B60F0();

  v11 = sub_2619D9348();
  sub_2619D4234(v23, v11);
  sub_2619D92A8();
  v17 = v22;
  sub_2619D9278();
  v12 = v22;
  result = sub_2619D9228();
  v14 = v22;
  if ((v22 & 0x80000000) != 0)
  {
    __break(1u);
  }

  else
  {
    sub_2619D9368();
    v15 = sub_2619D93A8();
    (*(v2 + 8))(v5, v18);
    result = (*(v7 + 8))(v10, v6);
    LOBYTE(v22) = 0;
    v21 = 0;
    v20 = 0;
    v19 = 0;
    *a1 = v17;
    *(a1 + 4) = 0;
    *(a1 + 8) = v12;
    *(a1 + 12) = 0;
    *(a1 + 16) = v15 & 1;
    *(a1 + 20) = 0;
    *(a1 + 24) = v14;
    *(a1 + 32) = 0;
  }

  return result;
}

__n128 sub_2619B4BC0@<Q0>(uint64_t a1@<X8>)
{
  v35 = a1;
  v1 = sub_2619D93F8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEC8EA8, &qword_2619DA390);
  v36 = *(v34 - 8);
  v6 = *(v36 + 64);
  v7 = MEMORY[0x28223BE20](v34);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v32 = &v24 - v10;
  sub_2619B60F0();

  v11 = sub_2619D9348();
  sub_2619D4238(&v95, v11);
  v94 = BYTE4(v95);
  v92 = *(&v95 + 5);
  v93 = HIBYTE(v95);
  v91 = v96;
  v89 = v97;
  v90 = v98;
  v88 = v99;
  v87 = v101;
  v86 = v100;
  v85 = v102;
  v83 = v103;
  v84 = v104;
  v82 = v105;
  v80 = v106;
  v81 = v107;
  v25 = v108;
  v79 = v109;
  v77 = v110;
  v78 = v111;
  v76 = v112;
  v75 = v114;
  v74 = v113;
  v73 = v115;
  sub_2619D91B8();
  KeyPath = swift_getKeyPath();
  v28 = swift_getKeyPath();
  sub_2619D9368();
  v33 = sub_2619D93D8();
  v12 = *(v2 + 8);
  v12(v5, v1);
  sub_2619D91C8();
  v94 = 0;
  sub_2619D9368();
  v30 = sub_2619D93D8();
  v12(v5, v1);
  sub_2619D9188();
  v91 = 0;
  sub_2619D9368();
  v27 = sub_2619D93D8();
  v12(v5, v1);
  sub_2619D9178();
  v88 = 0;
  sub_2619D9368();
  v26 = sub_2619D93D8();
  v12(v5, v1);
  v85 = 0;
  v13 = v9;
  sub_2619D9358();
  v14 = v34;
  sub_2619BA5F0(v34);
  v15 = *(v36 + 8);
  v16 = v13;
  v17 = v14;
  v36 += 8;
  v15(v16, v14);
  v31 = v42;
  v73 = 0;

  v18 = v32;
  swift_getAtKeyPath();

  LODWORD(KeyPath) = v42;
  v79 = 0;
  swift_getAtKeyPath();

  LODWORD(v28) = v42;
  v76 = 0;
  sub_2619D9368();
  v19 = sub_2619D9398();
  v12(v5, v1);
  v82 = 0;
  sub_2619D9288();
  if (v42)
  {
    v20 = sub_2619D9298();
    v15(v18, v17);
    sub_2619B6148(&v95);
  }

  else
  {
    v15(v18, v14);
    v20 = v25;
  }

  LODWORD(v38) = v33 & 1;
  BYTE4(v38) = v94;
  *(&v38 + 5) = v92;
  BYTE7(v38) = v93;
  DWORD2(v38) = v30 & 1;
  BYTE12(v38) = v91;
  *(&v38 + 13) = v89;
  HIBYTE(v38) = v90;
  v39.n128_u32[0] = v27 & 1;
  v39.n128_u8[4] = v88;
  v39.n128_u8[7] = v87;
  *(&v39.n128_u16[2] + 1) = v86;
  v39.n128_u32[2] = v26 & 1;
  v39.n128_u8[12] = v85;
  *(&v39.n128_u16[6] + 1) = v83;
  v39.n128_u8[15] = v84;
  LODWORD(v40) = v19 & 1;
  BYTE4(v40) = v82;
  BYTE7(v40) = v81;
  *(&v40 + 5) = v80;
  *(&v40 + 1) = v20;
  *v41 = KeyPath;
  v41[4] = v79;
  *&v41[5] = v77;
  v41[7] = v78;
  *&v41[8] = v28;
  v41[12] = v76;
  *&v41[13] = v74;
  v41[15] = v75;
  *&v41[16] = v31;
  v41[20] = v73;
  v42 = v38;
  v43 = v94;
  v45 = v93;
  v44 = v92;
  v46 = DWORD2(v38);
  v47 = v91;
  v49 = v90;
  v48 = v89;
  v50 = v39.n128_u32[0];
  v51 = v88;
  v53 = v87;
  v52 = v86;
  v54 = v39.n128_u32[2];
  v55 = v85;
  v57 = v84;
  v56 = v83;
  v58 = v40;
  v59 = v82;
  v61 = v81;
  v60 = v80;
  v62 = v20;
  v63 = KeyPath;
  v64 = v79;
  v66 = v78;
  v65 = v77;
  v67 = v28;
  v68 = v76;
  v70 = v75;
  v69 = v74;
  v71 = v31;
  v72 = v73;
  sub_2619B619C(&v38, &v37);
  sub_2619B6148(&v42);
  v21 = *v41;
  v22 = v35;
  *(v35 + 32) = v40;
  *(v22 + 48) = v21;
  *(v22 + 61) = *&v41[13];
  result = v39;
  *v22 = v38;
  *(v22 + 16) = result;
  return result;
}

unint64_t sub_2619B5298(unint64_t a1, uint64_t a2)
{
  v3 = a1;
  v23 = MEMORY[0x277D84F90];
  if (a1 >> 62)
  {
    goto LABEL_25;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_2619D9CA8())
  {
    v5 = 0;
    v21 = v3 & 0xC000000000000001;
    v17 = v3 + 32;
    v18 = v3 & 0xFFFFFFFFFFFFFF8;
    v6 = MEMORY[0x277D84F90];
    v19 = v3;
    v20 = i;
    while (v21)
    {
      MEMORY[0x2667148E0](v5, v3);
      v7 = __OFADD__(v5++, 1);
      if (v7)
      {
        goto LABEL_23;
      }

LABEL_13:
      sub_2619D94A8();
      swift_retain_n();
      v9 = sub_2619D9058();

      if (v9)
      {
        do
        {
          v22 = v9;
          MEMORY[0x28223BE20](v10);
          v16[2] = &v22;
          if (sub_2619B2F5C(sub_2619B63C4, v16, v6))
          {

LABEL_5:
            v3 = v19;
            goto LABEL_6;
          }

          if (!*(a2 + 16) || (sub_2619B0D08(v9), (v11 & 1) == 0))
          {

            MEMORY[0x266714720](v13);
            if (*((v23 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v23 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              v14 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
              sub_2619D9A28();
            }

            sub_2619D9A38();

            v6 = v23;
            goto LABEL_5;
          }

          v12 = sub_2619D9058();

          v9 = v12;
        }

        while (v12);
        v3 = v19;
      }

LABEL_6:
      if (v5 == v20)
      {
        return v6;
      }
    }

    if (v5 >= *(v18 + 16))
    {
      goto LABEL_24;
    }

    v8 = *(v17 + 8 * v5);

    v7 = __OFADD__(v5++, 1);
    if (!v7)
    {
      goto LABEL_13;
    }

LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    ;
  }

  return MEMORY[0x277D84F90];
}

unint64_t sub_2619B554C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEC8F48, &qword_2619DA530);
    v3 = sub_2619D9CD8();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *(i - 1);
      v6 = *i;

      result = sub_2619B0D08(v7);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      *(v3[7] + 8 * result) = v6;
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_2619B5638(uint64_t *a1, uint64_t *a2, unint64_t a3)
{
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEC8EA8, &qword_2619DA390);
  v6 = *(v107 - 8);
  v7 = v6[8];
  MEMORY[0x28223BE20](v107);
  v9 = &v98 - v8;
  result = sub_2619B5298(a3, *a2);
  v11 = result;
  if (result >> 62)
  {
    goto LABEL_101;
  }

  v12 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v12)
  {
  }

LABEL_3:
  v13 = 0;
  v14 = v11 & 0xC000000000000001;
  v15 = v11 & 0xFFFFFFFFFFFFFF8;
  v16 = v11 + 32;
  v109 = (v6 + 1);
  v100 = v11 & 0xFFFFFFFFFFFFFF8;
  v101 = v11 & 0xC000000000000001;
  v103 = v11;
  v104 = a1;
  v102 = v12;
  v99 = v11 + 32;
  while (v14)
  {
    result = MEMORY[0x2667148E0](v13, v11);
    v106 = result;
    v17 = __OFADD__(v13, 1);
    v18 = v13 + 1;
    if (v17)
    {
      goto LABEL_103;
    }

LABEL_7:
    if (!a1[2] || (v19 = sub_2619B0D08(v106), (v20 & 1) == 0))
    {
LABEL_95:
    }

    v105 = v18;
    v21 = *(a1[7] + v19);
    v114 = sub_2619B554C(MEMORY[0x277D84F90]);
    v112 = v21;
    v22 = 1;
    if (!v21)
    {
      v22 = -1;
    }

    v108 = v22;
    v23 = sub_2619C691C();
    if (v23 >> 62)
    {
      v97 = v23;
      v24 = sub_2619D9CA8();
      v23 = v97;
    }

    else
    {
      v24 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    a1 = v107;
    v25 = v109;
    v113 = v23;
    if (v24)
    {
      v26 = v23 & 0xC000000000000001;
      v110 = v23 + 32;
      v111 = v23 & 0xFFFFFFFFFFFFFF8;
      do
      {
        while (1)
        {
          v17 = __OFSUB__(v24--, 1);
          if (v17)
          {
            __break(1u);
LABEL_91:
            __break(1u);
LABEL_92:
            __break(1u);
LABEL_93:
            __break(1u);
LABEL_94:
            __break(1u);
            goto LABEL_95;
          }

          if (v26)
          {
            v27 = MEMORY[0x2667148E0](v24, v113);
          }

          else
          {
            if ((v24 & 0x8000000000000000) != 0)
            {
              goto LABEL_91;
            }

            if (v24 >= *(v111 + 16))
            {
              goto LABEL_92;
            }

            v27 = *(v110 + 8 * v24);
          }

          sub_2619B60F0();

          sub_2619D9348();
          if (sub_2619D9328() & 1) != 0 && ((v112 ^ sub_2619D9258()))
          {
            break;
          }

          (*v25)(v9, a1);

          if (!v24)
          {
            goto LABEL_49;
          }
        }

        v28 = v114;
        v29 = *(v114 + 16);
        if (v29)
        {
          v30 = sub_2619B0D08(v27);
          if (v31)
          {
            v29 = *(*(v28 + 56) + 8 * v30);
          }

          else
          {
            v29 = 0;
          }
        }

        v17 = __OFADD__(v29, 1);
        v32 = v29 + 1;
        if (v17)
        {
          goto LABEL_93;
        }

        v33 = v32 * v108;
        if ((v32 * v108) >> 64 != (v32 * v108) >> 63)
        {
          goto LABEL_94;
        }

        v34 = *a2;
        if (*(*a2 + 16))
        {
          v35 = sub_2619B0D08(v27);
          if (v36)
          {
            a1 = a2;
            v37 = (*(v34 + 56) + 296 * v35);
            memcpy(v119, v37, sizeof(v119));
            memmove(v120, v37, 0x128uLL);
            sub_2619B624C(v119, v118);
            v6 = sub_2619CFDA8();
            swift_beginAccess();
            v38 = *v6;

            swift_getAtKeyPath();

            v11 = v118[0];
            a2 = LOBYTE(v118[1]);
            swift_beginAccess();
            if (a2)
            {
              v39 = 0;
            }

            else
            {
              v39 = v11;
            }

            v17 = __OFADD__(v39, v33);
            v40 = v39 + v33;
            if (v17)
            {
              goto LABEL_99;
            }

            if (v40 > 0x7FFFFFFF)
            {
              goto LABEL_100;
            }

            v41 = *v6;
            v118[0] = v40 & ~(v40 >> 63);
            LOBYTE(v118[1]) = 0;

            swift_setAtWritableKeyPath();

            memcpy(v118, v120, sizeof(v118));
            nullsub_1(v118);
            memcpy(v116, v118, sizeof(v116));

            a2 = a1;
            sub_2619AFA50(v116, v27);
            a1 = v107;
          }
        }

        sub_2619D94A8();
        v42 = sub_2619D9058();
        if (!v42)
        {
          v25 = v109;
          (*v109)(v9, a1);

          continue;
        }

        v11 = v42;
        v6 = v114;
        if (*(v114 + 16) && (v43 = sub_2619B0D08(v42), (v44 & 1) != 0))
        {
          v45 = *(v6[7] + 8 * v43);
          if (v33 < 0)
          {
            goto LABEL_44;
          }
        }

        else
        {
          v45 = 0;
          if (v33 < 0)
          {
LABEL_44:
            v33 = -v33;
            if (v33 < 0)
            {
              __break(1u);
LABEL_98:
              __break(1u);
LABEL_99:
              __break(1u);
LABEL_100:
              __break(1u);
LABEL_101:
              result = sub_2619D9CA8();
              v12 = result;
              if (!result)
              {
              }

              goto LABEL_3;
            }
          }
        }

        v17 = __OFADD__(v45, v33);
        v46 = v45 + v33;
        if (v17)
        {
          goto LABEL_98;
        }

        v47 = v114;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v120[0] = v47;
        sub_2619B26A4(v46, v11, isUniquelyReferenced_nonNull_native);

        v25 = v109;
        (*v109)(v9, a1);
        v114 = v120[0];
      }

      while (v24);
    }

LABEL_49:

    v49 = v114;
    if (*(v114 + 16) && (v50 = v106, result = sub_2619B0D08(v106), (v51 & 1) != 0))
    {
      v52 = *(*(v49 + 56) + 8 * result);
      v53 = v52 * v108;
      if ((v52 * v108) >> 64 != (v52 * v108) >> 63)
      {
        goto LABEL_108;
      }

      v54 = *a2;
      if (*(*a2 + 16))
      {
        v55 = sub_2619B0D08(v50);
        if (v56)
        {
          v57 = a2;
          v58 = (*(v54 + 56) + 296 * v55);
          memcpy(v118, v58, sizeof(v118));
          memmove(v119, v58, 0x128uLL);
          sub_2619B624C(v118, v120);
          v59 = sub_2619CFDA8();
          swift_beginAccess();
          v60 = *v59;

          swift_getAtKeyPath();

          v61 = SLODWORD(v120[0]);
          v62 = BYTE4(v120[0]);
          result = swift_beginAccess();
          if (v62)
          {
            v63 = 0;
          }

          else
          {
            v63 = v61;
          }

          v17 = __OFADD__(v63, v53);
          v64 = v63 + v53;
          if (v17)
          {
            goto LABEL_109;
          }

          if (v64 > 0x7FFFFFFF)
          {
            goto LABEL_110;
          }

          a2 = v57;
          v65 = *v59;
          LODWORD(v120[0]) = v64 & ~(v64 >> 63);
          BYTE4(v120[0]) = 0;

          swift_setAtWritableKeyPath();

          memcpy(v120, v119, 0x128uLL);

          v66 = *v57;
          v67 = swift_isUniquelyReferenced_nonNull_native();
          v117 = *v57;
          sub_2619B2534(v120, v50, v67);

          *v57 = v117;
        }
      }

      sub_2619D94A8();
      v68 = sub_2619D9058();
      if (v68)
      {
        v69 = v68;
        v70 = v114;
        v71 = swift_isUniquelyReferenced_nonNull_native();
        v120[0] = v70;
        sub_2619B26A4(v52, v69, v71);

        v72 = v120[0];
      }

      else
      {
        v72 = v114;
      }

      swift_retain_n();
      v73 = sub_2619D9058();

      if (v73)
      {
        v74 = v50;
        while (*(v72 + 16))
        {
          result = sub_2619B0D08(v73);
          if ((v75 & 1) == 0)
          {
            break;
          }

          v76 = *(*(v72 + 56) + 8 * result);
          v77 = v76 * v108;
          if ((v76 * v108) >> 64 != (v76 * v108) >> 63)
          {
            goto LABEL_105;
          }

          v78 = *a2;
          if (!*(*a2 + 16))
          {
            break;
          }

          v79 = sub_2619B0D08(v73);
          if ((v80 & 1) == 0)
          {
            break;
          }

          v113 = v76;
          v114 = v74;
          v81 = v72;
          v82 = a2;
          v83 = (*(v78 + 56) + 296 * v79);
          memcpy(v119, v83, sizeof(v119));
          memmove(v120, v83, 0x128uLL);
          sub_2619B624C(v119, v118);
          v84 = sub_2619CFDA8();
          swift_beginAccess();
          v85 = *v84;

          swift_getAtKeyPath();

          v86 = v118[0];
          v87 = LOBYTE(v118[1]);
          result = swift_beginAccess();
          if (v87)
          {
            v88 = 0;
          }

          else
          {
            v88 = v86;
          }

          v17 = __OFADD__(v88, v77);
          v89 = v88 + v77;
          if (v17)
          {
            goto LABEL_106;
          }

          if (v89 > 0x7FFFFFFF)
          {
            goto LABEL_107;
          }

          a2 = v82;
          v90 = *v84;
          LODWORD(v117) = v89 & ~(v89 >> 63);
          BYTE4(v117) = 0;

          swift_setAtWritableKeyPath();

          memcpy(v118, v120, sizeof(v118));
          nullsub_1(v118);
          memcpy(v115, v118, sizeof(v115));

          sub_2619AFA50(v115, v73);
          v91 = sub_2619D9058();
          v72 = v81;
          v92 = v73;
          if (v91)
          {
            v94 = v72;
            v95 = v91;
            v96 = swift_isUniquelyReferenced_nonNull_native();
            v117 = v94;
            sub_2619B26A4(v113, v95, v96);

            v72 = v117;
          }

          else
          {
          }

          v93 = sub_2619D9058();

          v73 = v93;
          v74 = v92;
          if (!v93)
          {
            goto LABEL_82;
          }
        }
      }

      else
      {
LABEL_82:
      }
    }

    else
    {
    }

    v11 = v103;
    a1 = v104;
    v14 = v101;
    v13 = v105;
    v16 = v99;
    v15 = v100;
    if (v105 == v102)
    {
    }
  }

  if (v13 >= *(v15 + 16))
  {
    goto LABEL_104;
  }

  v106 = *(v16 + 8 * v13);

  v17 = __OFADD__(v13, 1);
  v18 = v13 + 1;
  if (!v17)
  {
    goto LABEL_7;
  }

LABEL_103:
  __break(1u);
LABEL_104:
  __break(1u);
LABEL_105:
  __break(1u);
LABEL_106:
  __break(1u);
LABEL_107:
  __break(1u);
LABEL_108:
  __break(1u);
LABEL_109:
  __break(1u);
LABEL_110:
  __break(1u);
  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_2619B60F0()
{
  result = qword_27FEC8F08;
  if (!qword_27FEC8F08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEC8F08);
  }

  return result;
}

uint64_t sub_2619B62AC(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2619B62D0(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

double sub_2619B638C(uint64_t a1)
{
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0;
  *(a1 + 40) = 1;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 288) = 0;
  return result;
}

unint64_t sub_2619B63E4()
{
  result = qword_27FEC8F78;
  if (!qword_27FEC8F78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FEC8F70, &unk_2619DB1E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEC8F78);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_2619B6494(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t static RealityKitHierarchyExporter.exportDebugRepresentation(for:)(void *a1)
{
  v2 = sub_2619D91D8();
  v3 = *(v2 - 1);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v19[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2619D9208();
  sub_2619D91E8();

  sub_2619B69CC();
  v7 = sub_2619D9A78();
  v8 = MEMORY[0x277D84F90];
  if (v7)
  {
    v9 = v7;
    v20 = MEMORY[0x277D84F90];
    sub_2619D9C28();
    sub_2619D9A68();
    if (v9 < 0)
    {
      __break(1u);
      goto LABEL_12;
    }

    v18 = a1;
    do
    {
      v10 = sub_2619D9AB8();
      v12 = *v11;

      v10(v19, 0);
      sub_2619D9C08();
      v13 = *(v20 + 16);
      sub_2619D9C38();
      sub_2619D9C48();
      sub_2619D9C18();
      sub_2619D9AA8();
      --v9;
    }

    while (v9);
    (*(v3 + 8))(v6, v2);
    v14 = v20;
    a1 = v18;
  }

  else
  {
    (*(v3 + 8))(v6, v2);
    v14 = MEMORY[0x277D84F90];
  }

  v2 = &v21;
  v15 = sub_2619B6790(v14, a1);

  v22 = v15;
  v19[0] = v8;
  if (v15)
  {
    v16 = v15;
    MEMORY[0x266714720]();
    if (*((v19[0] & 0xFFFFFFFFFFFFFF8) + 0x10) < *((v19[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
LABEL_9:
      sub_2619D9A38();
      v8 = v19[0];
      goto LABEL_10;
    }

LABEL_12:
    sub_2619D9A28();
    goto LABEL_9;
  }

LABEL_10:
  sub_2619B6A24((v2 + 32));
  return v8;
}

uint64_t sub_2619B6790(uint64_t a1, void *a2)
{
  v4 = sub_2619D9018();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = v26 - v10;
  sub_2619D9008();
  type metadata accessor for SceneDebugRepresentationProvider();
  sub_2619BAC48();
  v12 = sub_2619C2C88(a1, a2);
  v14 = v13;

  if (v14 >> 60 == 15)
  {
    v16 = 0;
  }

  else
  {
    v16 = v12;
  }

  if (v14 >> 60 == 15)
  {
    v17 = 0xC000000000000000;
  }

  else
  {
    v17 = v14;
  }

  v26[2] = v17;
  v26[3] = v16;
  nullsub_1(v15);
  v18 = sub_2619C79E4(a1, a2);
  if (v19 >> 60 == 15)
  {
    v20 = 0;
  }

  else
  {
    v20 = v18;
  }

  v26[1] = v20;
  type metadata accessor for InspectorSceneStatisticsProvider();
  v21 = sub_2619B64F4();
  (*(*v21 + 80))(a1, a2);

  nullsub_1(v22);
  sub_2619B97EC(a1, a2);
  (*(v5 + 16))(v9, v11, v4);
  v23 = objc_allocWithZone(sub_2619D94F8());
  v24 = sub_2619D94E8();
  (*(v5 + 8))(v11, v4);
  return v24;
}

unint64_t sub_2619B69CC()
{
  result = qword_27FEC8FA0;
  if (!qword_27FEC8FA0)
  {
    sub_2619D91D8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEC8FA0);
  }

  return result;
}

uint64_t sub_2619B6A24(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEC8FA8, &unk_2619DA560);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2619B6AC8()
{
  sub_2619D9458();

  return sub_2619D9818();
}

BOOL sub_2619B6B00()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEC8FB0, &qword_2619DA5C8);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v7 - v2;
  sub_2619D9458();
  sub_2619D9818();
  v4 = sub_2619D9838();
  v5 = (*(*(v4 - 8) + 48))(v3, 1, v4) != 1;
  sub_2619B62D0(v3, &qword_27FEC8FB0, &qword_2619DA5C8);
  return v5;
}

uint64_t sub_2619B6BE0()
{
  v0 = sub_2619D9048();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2619D9218();
  sub_2619D9038();
  (*(v1 + 8))(v4, v0);
  sub_2619D9968();
  REEntitySetName();
}

uint64_t (*sub_2619B6CF4())()
{
  v1 = v0;
  v2 = sub_2619D9428();
  v58 = *(v2 - 8);
  v3 = *(v58 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v55 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = sub_2619D9048();
  v6 = *(v59 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v59);
  v9 = &v55 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEC8FB8, &qword_2619DA5D0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v55 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEC8FB0, &qword_2619DA5C8);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v55 - v16;
  sub_2619D9458();
  sub_2619D9818();
  v18 = sub_2619D9838();
  v19 = (*(*(v18 - 8) + 48))(v17, 1, v18);
  sub_2619B62D0(v17, &qword_27FEC8FB0, &qword_2619DA5C8);
  v20 = nullsub_1;
  if (v19 != 1)
  {
    return v20;
  }

  v21 = sub_2619D9458();
  v56 = v22;
  v57 = v21;
  v60[0] = sub_2619D9458();
  v60[1] = v23;
  v61 = 58;
  v62 = 0xE100000000000000;
  v24 = sub_2619D9028();
  (*(*(v24 - 8) + 56))(v13, 1, 1, v24);
  sub_2619B7480();
  sub_2619D9B28();
  v26 = v25;
  sub_2619B62D0(v13, &qword_27FEC8FB8, &qword_2619DA5D0);
  if ((v26 & 1) == 0)
  {
    v27 = sub_2619D99C8();
    v29 = v28;
    v31 = v30;
    v33 = v32;

    MEMORY[0x266714690](v27, v29, v31, v33);
  }

  v34 = v59;
  sub_2619D9448();
  sub_2619D97F8();

  sub_2619D9218();
  sub_2619D9038();
  (*(v6 + 8))(v9, v34);
  sub_2619D9968();

  REEntitySetName();

  sub_2619D94A8();
  sub_2619D9068();
  sub_2619B74D4();
  v35 = sub_2619D9A78();
  if (!v35)
  {
    (*(v58 + 8))(v5, v2);
    v37 = MEMORY[0x277D84F90];
LABEL_13:
    v51 = swift_allocObject();
    swift_weakInit();
    v52 = swift_allocObject();
    v53 = v56;
    v54 = v57;
    v52[2] = v51;
    v52[3] = v54;
    v52[4] = v53;
    v52[5] = v37;
    return sub_2619B7DFC;
  }

  v36 = v35;
  v61 = MEMORY[0x277D84F90];
  sub_2619B7CFC(0, v35 & ~(v35 >> 63), 0);
  v37 = v61;
  result = sub_2619D9A68();
  if ((v36 & 0x8000000000000000) == 0)
  {
    v59 = v1;
    do
    {
      v39 = sub_2619D9AB8();
      v41 = *v40;

      v42 = v39(v60, 0);
      v43 = sub_2619B6CF4(v42);
      v45 = v44;

      v46 = swift_allocObject();
      *(v46 + 16) = v43;
      *(v46 + 24) = v45;
      v61 = v37;
      v48 = *(v37 + 16);
      v47 = *(v37 + 24);
      if (v48 >= v47 >> 1)
      {
        v50 = v46;
        sub_2619B7CFC((v47 > 1), v48 + 1, 1);
        v46 = v50;
        v37 = v61;
      }

      *(v37 + 16) = v48 + 1;
      v49 = v37 + 16 * v48;
      *(v49 + 32) = sub_2619B7D54;
      *(v49 + 40) = v46;
      sub_2619D9AA8();
      --v36;
    }

    while (v36);
    (*(v58 + 8))(v5, v2);
    goto LABEL_13;
  }

  __break(1u);
  return result;
}

uint64_t sub_2619B7304(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEC8FB8, &qword_2619DA5D0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v13 - v6;
  v13[2] = a1;
  v13[3] = a2;
  v13[0] = 58;
  v13[1] = 0xE100000000000000;
  v8 = sub_2619D9028();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  sub_2619B7480();
  sub_2619D9B28();
  v10 = v9;
  sub_2619B62D0(v7, &qword_27FEC8FB8, &qword_2619DA5D0);
  if (v10)
  {
  }

  else
  {
    v11 = sub_2619D99C8();
    a1 = MEMORY[0x266714690](v11);
  }

  return a1;
}

unint64_t sub_2619B7480()
{
  result = qword_27FEC8FC0;
  if (!qword_27FEC8FC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEC8FC0);
  }

  return result;
}

unint64_t sub_2619B74D4()
{
  result = qword_27FEC8F90;
  if (!qword_27FEC8F90)
  {
    sub_2619D9428();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEC8F90);
  }

  return result;
}

uint64_t sub_2619B752C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_2619D9048();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_2619D9218();
    sub_2619D9038();
    (*(v6 + 8))(v9, v5);
    sub_2619D9968();
    REEntitySetName();
  }

  v11 = *(a4 + 16);
  if (v11)
  {
    v12 = (a4 + 40);
    do
    {
      v14 = *(v12 - 1);
      v13 = *v12;

      v14(v15);

      v12 += 2;
      --v11;
    }

    while (v11);
  }

  return result;
}

Swift::Void __swiftcall Entity.removePersistentIDFromName(recursive:)(Swift::Bool recursive)
{
  v16 = recursive;
  v1 = sub_2619D9428();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEC8F88, &qword_2619DA548);
  v15 = *(v3 - 8);
  v4 = *(v15 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v14 - v5;
  v7 = sub_2619D9048();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2619D9458();
  sub_2619D9808();
  v13 = v12;

  if (v13)
  {
    sub_2619D9218();
    sub_2619D9038();
    (*(v8 + 8))(v11, v7);
    sub_2619D9968();

    REEntitySetName();
  }

  if (v16)
  {
    sub_2619D94A8();
    sub_2619D9068();
    sub_2619D9408();
    while (1)
    {
      sub_2619D9418();
      if (!v17)
      {
        break;
      }

      Entity.removePersistentIDFromName(recursive:)(1);
    }

    (*(v15 + 8))(v6, v3);
  }
}

uint64_t Entity.augmentedWithPersistentIDs(_:)(uint64_t (*a1)(uint64_t))
{
  v3 = sub_2619B6CF4();
  v4 = a1(v1);
  (v3)(v4);
}

uint64_t Entity.augmentedWithPersistentIDs<A>(_:)(uint64_t (*a1)(uint64_t))
{
  v3 = sub_2619B6CF4();
  v4 = a1(v1);
  (v3)(v4);
}

uint64_t sub_2619B7A38()
{
  v5 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEC8FC8, &qword_2619DA890);
  if (sub_2619D9958() == 0xD000000000000014 && 0x80000002619DBA50 == v1)
  {
    v3 = 1;
  }

  else
  {
    v3 = sub_2619D9D38();
  }

  return v3 & 1;
}

uint64_t sub_2619B7AF8()
{
  v1 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEC8FC8, &qword_2619DA890);
  sub_2619D9958();
  sub_2619B7E08();
  sub_2619B7E5C();
  v2 = sub_2619D9928();

  return v2 & 1;
}

uint64_t sub_2619B7BCC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEC8FB8, &qword_2619DA5D0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v11 - v6;
  v11[2] = a1;
  v11[3] = a2;
  v11[0] = 58;
  v11[1] = 0xE100000000000000;
  v8 = sub_2619D9028();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  sub_2619B7480();
  sub_2619D9B28();
  LOBYTE(a2) = v9;
  sub_2619B62D0(v7, &qword_27FEC8FB8, &qword_2619DA5D0);
  return a2 & 1;
}

void *sub_2619B7CFC(void *a1, int64_t a2, char a3)
{
  result = sub_2619B7EB0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_2619B7D1C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2619B7D54()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_2619B7D7C()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2619B7DB4()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[5];

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

unint64_t sub_2619B7E08()
{
  result = qword_27FEC8FD0;
  if (!qword_27FEC8FD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEC8FD0);
  }

  return result;
}

unint64_t sub_2619B7E5C()
{
  result = qword_27FEC8FD8;
  if (!qword_27FEC8FD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEC8FD8);
  }

  return result;
}

void *sub_2619B7EB0(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEC8FE0, &qword_2619DA5D8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEC8FE8, &unk_2619DA5E0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_2619B7FE4()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
}

uint64_t sub_2619B801C(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 16);
  *(v1 + 16) = a1;
}

uint64_t sub_2619B80B4()
{
  swift_beginAccess();
  v1 = *(v0 + 24);
}

uint64_t sub_2619B80EC(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 24);
  *(v1 + 24) = a1;
}

uint64_t sub_2619B8194(unint64_t a1)
{
  v2 = swift_allocObject();
  v3 = MEMORY[0x277D84F90];
  *(v2 + 16) = sub_2619B9004(MEMORY[0x277D84F90]);
  *(v2 + 24) = sub_2619B9004(v3);
  swift_beginAccess();
  swift_beginAccess();
  sub_2619AF808(a1, (v2 + 16), (v2 + 24));
  swift_endAccess();
  swift_endAccess();

  return v2;
}

uint64_t sub_2619B8254(unint64_t a1)
{
  v3 = MEMORY[0x277D84F90];
  *(v1 + 16) = sub_2619B9004(MEMORY[0x277D84F90]);
  *(v1 + 24) = sub_2619B9004(v3);
  swift_beginAccess();
  swift_beginAccess();
  sub_2619AF808(a1, (v1 + 16), (v1 + 24));
  swift_endAccess();
  swift_endAccess();

  return v1;
}

uint64_t sub_2619B8300@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = (*v3 + 96);
  v61 = *v7;
  v60[4] = v7;
  v8 = (v61)(a1);
  if (!*(v8 + 16) || (v9 = sub_2619B0D08(a1), (v10 & 1) == 0))
  {

    sub_2619C8954(v80);
    v25 = *&v80[256];
    v26 = *&v80[264];
    v27 = *&v80[272];
    v28 = *&v80[288];
    v29 = *&v80[224];
    v30 = v80[228];
    v31 = *&v80[232];
    v32 = v80[236];
    v33 = *&v80[240];
    v34 = v80[244];
    v35 = *&v80[248];
    v36 = *&v80[216];
    v37 = v80[280];
    v38 = v80[260];
    *(v65 + 13) = *&v80[205];
    v64 = *&v80[176];
    v65[0] = *&v80[192];
    v62 = *&v80[144];
    v63 = *&v80[160];
    v86 = v80[136];
    v84 = *&v80[104];
    v85 = *&v80[120];
    v39 = *&v80[48];
    result = *&v80[56];
    v40 = *&v80[64];
    v41 = *&v80[72];
    v42 = *&v80[88];
    v43 = v80[80];
    v44 = v80[68];
    v45 = v80[60];
    v46 = v80[52];
    v83 = *&v80[40];
    v81 = *&v80[8];
    v82 = *&v80[24];
    v47 = *v80;
    v48 = v80[4];
LABEL_23:
    v49 = v46 & 1;
    v70 = v49;
    v50 = v45 & 1;
    v69 = v50;
    v51 = v44 & 1;
    v68 = v51;
    v52 = v43 & 1;
    v67 = v52;
    v76 = v48;
    *&v66[3] = v81;
    *&v66[19] = v82;
    *&v66[35] = v83;
    *&v77[7] = v62;
    *&v77[68] = *(v65 + 13);
    *&v77[55] = v65[0];
    *&v77[39] = v64;
    *&v77[23] = v63;
    v75 = v30;
    v74 = v32;
    v73 = v34;
    v72 = v38 & 1;
    v71 = v37 & 1;
    *a3 = v47;
    *(a3 + 4) = v76;
    v53 = *v66;
    v54 = *&v66[16];
    *(a3 + 32) = *&v66[27];
    *(a3 + 21) = v54;
    *(a3 + 5) = v53;
    *(a3 + 48) = v39;
    *(a3 + 52) = v49;
    *(a3 + 56) = result;
    *(a3 + 60) = v50;
    *(a3 + 64) = v40;
    *(a3 + 68) = v51;
    *(a3 + 72) = v41;
    *(a3 + 80) = v52;
    *(a3 + 88) = v42;
    v55 = v84;
    v56 = v85;
    *(a3 + 136) = v86;
    *(a3 + 120) = v56;
    *(a3 + 104) = v55;
    v57 = *&v77[16];
    *(a3 + 137) = *v77;
    v58 = *&v77[32];
    v59 = *&v77[48];
    *(a3 + 197) = *&v77[60];
    *(a3 + 185) = v59;
    *(a3 + 169) = v58;
    *(a3 + 153) = v57;
    *(a3 + 216) = v36;
    *(a3 + 224) = v29;
    *(a3 + 228) = v75;
    *(a3 + 232) = v31;
    *(a3 + 236) = v74;
    *(a3 + 240) = v33;
    *(a3 + 244) = v73;
    *(a3 + 248) = v35;
    *(a3 + 256) = v25;
    *(a3 + 260) = v72;
    *(a3 + 264) = v26;
    *(a3 + 272) = v27;
    *(a3 + 280) = v71;
    *(a3 + 288) = v28;
    return result;
  }

  memcpy(v66, (*(v8 + 56) + 296 * v9), sizeof(v66));
  sub_2619B624C(v66, v80);

  v11 = memcpy(v77, v66, sizeof(v77));
  result = sub_2619C64D8(v11);
  v13 = result;
  if (a2 >> 62)
  {
    goto LABEL_21;
  }

  v14 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v14)
  {
LABEL_22:

    v47 = *v77;
    v48 = v77[4];
    v81 = *&v77[8];
    v82 = *&v77[24];
    v83 = *&v77[40];
    v39 = *&v77[48];
    v46 = v77[52];
    result = *&v77[56];
    v45 = v77[60];
    v40 = *&v77[64];
    v44 = v77[68];
    v41 = *&v77[72];
    v43 = v77[80];
    v42 = *&v77[88];
    v86 = v77[136];
    v84 = *&v77[104];
    v85 = *&v77[120];
    *(v65 + 13) = *&v77[205];
    v64 = *&v77[176];
    v65[0] = *&v77[192];
    v62 = *&v77[144];
    v63 = *&v77[160];
    v36 = *&v77[216];
    v29 = *&v77[224];
    v30 = v77[228];
    v31 = *&v77[232];
    v32 = v77[236];
    v33 = *&v77[240];
    v34 = v77[244];
    v35 = *&v77[248];
    v25 = *&v77[256];
    v38 = v77[260];
    v26 = *&v77[264];
    v27 = *&v77[272];
    v37 = v77[280];
    v28 = *&v77[288];
    goto LABEL_23;
  }

  while (v14 >= 1)
  {
    v15 = 0;
    while (1)
    {
      if ((a2 & 0xC000000000000001) != 0)
      {
        v16 = MEMORY[0x2667148E0](v15, a2);
        v17 = v16;
      }

      else
      {
        v17 = *(a2 + 8 * v15 + 32);
      }

      *&v62 = v17;
      MEMORY[0x28223BE20](v16);
      v60[2] = &v62;
      if ((sub_2619B2F5C(sub_2619B63C4, v60, v13) & 1) == 0)
      {
        goto LABEL_8;
      }

      v18 = v61();
      if (*(v18 + 16))
      {
        v19 = sub_2619B0D08(v17);
        if (v20)
        {
          break;
        }
      }

LABEL_8:
      ++v15;

      if (v14 == v15)
      {
        goto LABEL_22;
      }
    }

    memcpy(v79, (*(v18 + 56) + 296 * v19), sizeof(v79));
    sub_2619B624C(v79, &v62);

    memcpy(v80, v77, sizeof(v80));
    sub_2619CCBB8(v79, v78);
    sub_2619B3420(v79);
    sub_2619B3420(v80);
    memcpy(v77, v78, sizeof(v77));
    v21 = sub_2619CD124();
    swift_beginAccess();
    v22 = *v21;

    v24 = swift_modifyAtWritableKeyPath();
    if (*(v23 + 4))
    {
      goto LABEL_18;
    }

    if (!__OFSUB__(*v23, 1))
    {
      --*v23;
LABEL_18:
      v24(&v62, 0);

      goto LABEL_8;
    }

    __break(1u);
LABEL_21:
    result = sub_2619D9CA8();
    v14 = result;
    if (!result)
    {
      goto LABEL_22;
    }
  }

  __break(1u);
  return result;
}

__n128 sub_2619B88D8@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = (*(*v2 + 120))();
  if (*(v5 + 16) && (v6 = sub_2619B0D08(a1), (v7 & 1) != 0))
  {
    memcpy(__dst, (*(v5 + 56) + 296 * v6), sizeof(__dst));
    sub_2619B624C(__dst, v40);

    v8 = *&__dst[256];
    v9 = __dst[260];
    v10 = *&__dst[264];
    v11 = *&__dst[272];
    v12 = __dst[280];
    v13 = *&__dst[288];
    v14 = *&__dst[224];
    v15 = __dst[228];
    v16 = *&__dst[232];
    v17 = __dst[236];
    v18 = *&__dst[240];
    v19 = __dst[244];
    v20 = *&__dst[248];
    v21 = *&__dst[216];
    v22 = *__dst;
    v23 = __dst[4];
    v24 = *&__dst[88];
    v25 = *&__dst[72];
    v26 = __dst[80];
    v27 = *&__dst[64];
    v28 = __dst[68];
    v29 = *&__dst[56];
    v30 = __dst[60];
    v31 = *&__dst[48];
    v32 = __dst[52];
    v49 = *&__dst[8];
    v50 = *&__dst[24];
    v51 = *&__dst[40];
    v52 = *&__dst[104];
    v53 = *&__dst[120];
    v54 = __dst[136];
    *(v58 + 13) = *&__dst[205];
    v57 = *&__dst[176];
    v58[0] = *&__dst[192];
    v55 = *&__dst[144];
    v56 = *&__dst[160];
  }

  else
  {

    sub_2619B915C(a1, __dst);
    v8 = *&__dst[256];
    v10 = *&__dst[264];
    v11 = *&__dst[272];
    v13 = *&__dst[288];
    v14 = *&__dst[224];
    v15 = __dst[228];
    v16 = *&__dst[232];
    v17 = __dst[236];
    v18 = *&__dst[240];
    v19 = __dst[244];
    v20 = *&__dst[248];
    v21 = *&__dst[216];
    v12 = __dst[280];
    v9 = __dst[260];
    *(v58 + 13) = *&__dst[205];
    v57 = *&__dst[176];
    v58[0] = *&__dst[192];
    v55 = *&__dst[144];
    v56 = *&__dst[160];
    v54 = __dst[136];
    v52 = *&__dst[104];
    v53 = *&__dst[120];
    v31 = *&__dst[48];
    v29 = *&__dst[56];
    v27 = *&__dst[64];
    v25 = *&__dst[72];
    v24 = *&__dst[88];
    v26 = __dst[80];
    v28 = __dst[68];
    v30 = __dst[60];
    v32 = __dst[52];
    v51 = *&__dst[40];
    v49 = *&__dst[8];
    v50 = *&__dst[24];
    v22 = *__dst;
    v23 = __dst[4];
  }

  v47 = v23;
  *&v46[3] = v49;
  *&v46[19] = v50;
  *&v46[35] = v51;
  *&v40[7] = v55;
  *&v40[68] = *(v58 + 13);
  *&v40[55] = v58[0];
  *&v40[39] = v57;
  *&v40[23] = v56;
  v45 = v15;
  v44 = v17;
  v43 = v19;
  v42 = v9 & 1;
  v41 = v12 & 1;
  *a2 = v22;
  *(a2 + 4) = v47;
  v33 = *v46;
  v34 = *&v46[16];
  *(a2 + 32) = *&v46[27];
  *(a2 + 21) = v34;
  *(a2 + 5) = v33;
  *(a2 + 48) = v31;
  *(a2 + 52) = v32 & 1;
  *(a2 + 56) = v29;
  *(a2 + 60) = v30 & 1;
  *(a2 + 64) = v27;
  *(a2 + 68) = v28 & 1;
  *(a2 + 72) = v25;
  *(a2 + 80) = v26 & 1;
  *(a2 + 88) = v24;
  v35 = v52;
  v36 = v53;
  *(a2 + 136) = v54;
  *(a2 + 120) = v36;
  *(a2 + 104) = v35;
  v37 = *&v40[16];
  *(a2 + 137) = *v40;
  result = *&v40[32];
  v39 = *&v40[48];
  *(a2 + 197) = *&v40[60];
  *(a2 + 185) = v39;
  *(a2 + 169) = result;
  *(a2 + 153) = v37;
  *(a2 + 216) = v21;
  *(a2 + 224) = v14;
  *(a2 + 228) = v45;
  *(a2 + 232) = v16;
  *(a2 + 236) = v44;
  *(a2 + 240) = v18;
  *(a2 + 244) = v43;
  *(a2 + 248) = v20;
  *(a2 + 256) = v8;
  *(a2 + 260) = v42;
  *(a2 + 264) = v10;
  *(a2 + 272) = v11;
  *(a2 + 280) = v41;
  *(a2 + 288) = v13;
  return result;
}

unint64_t sub_2619B8C78(uint64_t a1, char a2)
{
  v5 = *(*v2 + 112);
  v6 = *v2 + 112;
  v7 = v2;
  v8 = v5(v40);
  sub_2619B10CC(a1, __src);
  memcpy(__dst, __src, 0x128uLL);
  sub_2619B62D0(__dst, &qword_27FEC8F58, &unk_2619DA600);
  v9 = v8(v40, 0);
  if ((a2 & 1) == 0)
  {
    goto LABEL_16;
  }

  result = sub_2619C64D8(v9);
  v11 = result;
  v36 = a1;
  if (!(result >> 62))
  {
    v12 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v12)
    {
      goto LABEL_4;
    }

LABEL_15:
    v7 = v2;

    a1 = v36;
LABEL_16:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEC8F80, &qword_2619DA540);
    v30 = swift_allocObject();
    *(v30 + 16) = xmmword_2619DA5F0;
    *(v30 + 32) = a1;

    v31 = v5(__src);
    v33 = v32;
    v34 = (*(*v7 + 136))(v40);
    sub_2619AF808(v30, v33, v35);

    v34(v40, 0);
    return v31(__src, 0);
  }

  v29 = result;
  result = sub_2619D9CA8();
  v11 = v29;
  v12 = result;
  v2 = v7;
  if (!result)
  {
    goto LABEL_15;
  }

LABEL_4:
  if (v12 >= 1)
  {
    v13 = 0;
    v37 = v11 & 0xC000000000000001;
    v38 = v11;
    do
    {
      if (v37)
      {
        v16 = MEMORY[0x2667148E0](v13);
      }

      else
      {
        v16 = *(v11 + 8 * v13 + 32);
      }

      v17 = v2;
      v18 = v5;
      v19 = v6;
      v20 = v5(v40);
      v22 = v21;
      v23 = *v21;
      v24 = sub_2619B0D08(v16);
      if (v25)
      {
        v26 = v24;
        v27 = *v22;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v39 = *v22;
        *v22 = 0x8000000000000000;
        if (!isUniquelyReferenced_nonNull_native)
        {
          sub_2619B2C64();
        }

        v14 = *(*(v39 + 48) + 8 * v26);

        memcpy(__src, (*(v39 + 56) + 296 * v26), sizeof(__src));
        sub_2619B3420(__src);
        sub_2619B235C(v26, v39);
        v15 = *v22;
        *v22 = v39;
      }

      ++v13;
      v20(v40, 0);

      v5 = v18;
      v2 = v17;
      v6 = v19;
      v11 = v38;
    }

    while (v12 != v13);
    goto LABEL_15;
  }

  __break(1u);
  return result;
}

uint64_t sub_2619B8F9C()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return v0;
}

uint64_t sub_2619B8FC4()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return MEMORY[0x2821FE8D8](v0, 32, 7);
}

void *sub_2619B9004(void *a1)
{
  v1 = a1[2];
  if (!v1)
  {
    return MEMORY[0x277D84F98];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEC8F60, &qword_2619DA538);
  v3 = sub_2619D9CD8();

  memcpy(__dst, a1 + 4, sizeof(__dst));
  v4 = __dst[0];
  sub_2619B95CC(__dst, v13);
  v5 = sub_2619B0D08(v4);
  if (v6)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v7 = (a1 + 42);
  while (1)
  {
    *(v3 + ((v5 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v5;
    *(v3[6] + 8 * v5) = v4;
    result = memcpy((v3[7] + 296 * v5), &__dst[1], 0x128uLL);
    v9 = v3[2];
    v10 = __OFADD__(v9, 1);
    v11 = v9 + 1;
    if (v10)
    {
      break;
    }

    v3[2] = v11;
    if (!--v1)
    {
      goto LABEL_8;
    }

    memcpy(__dst, v7, sizeof(__dst));
    v4 = __dst[0];
    sub_2619B95CC(__dst, v13);
    v5 = sub_2619B0D08(v4);
    v7 += 304;
    if (v12)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

void *sub_2619B915C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_2619C8954(v16);
  v50 = v35;
  v49 = v34;
  v48 = v31;
  v47 = v22;
  v46 = v21;
  v44[0] = v18;
  v44[1] = v19;
  v45 = v20;
  v43[0] = v32;
  v43[1] = v33;
  *&__src[192] = v29;
  *&__src[208] = v30;
  *&__src[224] = v32;
  *&__src[244] = DWORD1(v33);
  *&__src[128] = v25;
  *&__src[144] = v26;
  *&__src[160] = v27;
  *&__src[176] = v28;
  *&__src[104] = v23;
  *&__src[112] = v24;
  *&__src[4] = v17;
  v4 = sub_2619B0BC8(a1);
  v6 = v5;
  v8 = v7;
  v10 = v9;
  sub_2619B9484(v43);
  *&__src[224] = v4;
  __src[228] = BYTE4(v4) & 1;
  *&__src[232] = v6;
  __src[236] = BYTE4(v6) & 1;
  *&__src[240] = v8;
  __src[244] = BYTE4(v8) & 1;
  *&__src[248] = v10;
  sub_2619B08E8(a1, v36);
  sub_2619B61F8(v44);
  *&__src[8] = v36[0];
  *&__src[24] = v36[1];
  *&__src[40] = v37;
  sub_2619B0974(a1, v38);
  sub_2619B62D0(&v46, &qword_27FEC8FF0, &unk_2619DA650);
  sub_2619B62D0(&v47, &qword_27FEC8FF8, &qword_2619DA9C0);
  *&__src[48] = v38[0];
  *&__src[64] = v38[1];
  *&__src[80] = v38[2];
  *&__src[96] = v39;
  v11 = sub_2619B0AE4();
  sub_2619B94D8(&v48);
  *&__src[216] = v11;
  sub_2619B0C20(a1, v40);
  sub_2619B62D0(&v49, &qword_27FEC9000, &qword_2619DA660);
  sub_2619B62D0(&v50, &qword_27FEC9008, &qword_2619DA668);
  *&__src[256] = v40[0];
  *&__src[272] = v40[1];
  *&__src[288] = v41;
  sub_2619B09C0(&__src[104]);
  sub_2619B0A04(v42);
  sub_2619B952C(v42, &__src[144]);
  v12 = sub_2619B0C64(a1);
  *__src = v12;
  __src[4] = BYTE4(v12) & 1;
  memcpy(__dst, __src, sizeof(__dst));
  memcpy(v52, __src, sizeof(v52));
  sub_2619B624C(__dst, v14);
  sub_2619B3420(v52);
  return memcpy(a2, __dst, 0x128uLL);
}

uint64_t sub_2619B9588(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_2619D94A8();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2619B95CC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEC9010, qword_2619DA670);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2619B9640@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_2619D91A8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = (&v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v5 + 16))(v8, v2, v4);
  v9 = (*(v5 + 88))(v8, v4);
  if (v9 == *MEMORY[0x277CDAE78])
  {
    result = (*(v5 + 96))(v8, v4);
    v11 = *v8;
    *(a1 + 24) = MEMORY[0x277D83A90];
    *a1 = v11;
  }

  else if (v9 == *MEMORY[0x277CDAE80])
  {
    (*(v5 + 96))(v8, v4);
    v12 = *v8;
    result = sub_2619D9078();
    *(a1 + 24) = result;
    *a1 = v12;
  }

  else
  {
    *a1 = 0u;
    *(a1 + 16) = 0u;
    return (*(v5 + 8))(v8, v4);
  }

  return result;
}

uint64_t sub_2619B97F4(void *a1)
{
  v2 = sub_2619D97B8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v7 = a1;
    sub_2619D91F8();
    v22 = v9;
    v23 = v8;
    v21 = v10;

    v12 = v21;
    v11 = v22;
    v13 = v23;
  }

  else
  {
    v13 = 0uLL;
    v11 = 0uLL;
    v12 = 0uLL;
  }

  v24 = v13;
  v25 = v11;
  v26 = v12;
  v27 = a1 == 0;
  v14 = [objc_opt_self() mainBundle];
  v15 = [v14 bundleIdentifier];

  if (v15)
  {
    sub_2619D9948();
  }

  sub_2619D97A8();
  v16 = sub_2619D8F68();
  v17 = *(v16 + 48);
  v18 = *(v16 + 52);
  swift_allocObject();
  sub_2619D8F58();
  sub_2619B9A34();
  v19 = sub_2619D8F48();
  (*(v3 + 8))(v6, v2);

  return v19;
}

unint64_t sub_2619B9A34()
{
  result = qword_27FEC9018;
  if (!qword_27FEC9018)
  {
    sub_2619D97B8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEC9018);
  }

  return result;
}

uint64_t sub_2619B9A8C(uint64_t a1)
{
  sub_2619D9308();
  sub_2619D92D8();
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEC9020, &qword_2619DA730);
  swift_getTupleTypeMetadata2();
  sub_2619BA1E4();
  v2 = sub_2619D99D8();

  return v2;
}

uint64_t sub_2619B9B88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  v12 = sub_2619D9B08();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v20[-v15];
  v25 = a1;
  sub_2619D9908();
  v21 = a4;
  v22 = a5;
  v23 = a2;
  v24 = a3;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  sub_2619B9F00(sub_2619BA9A8, v20, MEMORY[0x277D84A98], TupleTypeMetadata2, v18, a6);
  return (*(v13 + 8))(v16, v12);
}

uint64_t sub_2619B9D10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEC9038, &qword_2619DA738);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v22 - v12;
  sub_2619D8FA8();
  v14 = sub_2619D8FB8();
  v15 = *(v14 - 8);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    sub_2619BA9D8(v13);
    v16 = *(swift_getTupleTypeMetadata2() + 48);
    *a5 = a2;
    a5[1] = a3;
    (*(*(a4 - 8) + 16))(a5 + v16, a1, a4);
  }

  else
  {
    v18 = sub_2619D8F78();
    v20 = v19;
    (*(v15 + 8))(v13, v14);
    v21 = *(swift_getTupleTypeMetadata2() + 48);
    *a5 = v18;
    a5[1] = v20;
    return (*(*(a4 - 8) + 16))(a5 + v21, a1, a4);
  }
}

uint64_t sub_2619B9F00@<X0>(void (*a1)(char *, char *)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X6>, uint64_t a6@<X8>)
{
  v29 = a5;
  v30 = a2;
  v32 = a4;
  v31 = a1;
  v28 = *(a3 - 8);
  v10 = *(v28 + 64);
  v11 = (MEMORY[0x28223BE20])();
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v14 + 16);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v11);
  v20 = &v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v18);
  v24 = &v28 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v25 + 16))(v24, v6);
  v26 = 1;
  if ((*(v16 + 48))(v24, 1, v15) != 1)
  {
    (*(v16 + 32))(v20, v24, v15);
    v31(v20, v13);
    (*(v16 + 8))(v20, v15);
    if (v7)
    {
      return (*(v28 + 32))(v29, v13, a3);
    }

    v26 = 0;
  }

  return (*(*(v32 - 8) + 56))(a6, v26, 1);
}

uint64_t sub_2619BA1A8(void *a1)
{
  v2 = *(v1 + 32);
  v3 = *(v1 + 40);
  return v2(*a1, a1[1], a1[2]);
}

unint64_t sub_2619BA1E4()
{
  result = qword_27FEC9028;
  if (!qword_27FEC9028)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FEC9020, &qword_2619DA730);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEC9028);
  }

  return result;
}

uint64_t sub_2619BA248(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEC8EA8, &qword_2619DA390);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v16 - v5;
  v7 = sub_2619D93F8();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2619D9338();
  sub_2619D9368();

  sub_2619D93E8();
  sub_2619B60F0();
  sub_2619D9348();
  sub_2619D9318();
  v12 = v16;
  sub_2619D92F8();
  (*(v3 + 8))(v6, v2);
  result = (*(v8 + 8))(v11, v7);
  if (__OFADD__(v12, v17))
  {
    __break(1u);
  }

  else
  {
    v14 = *(a1 + 16);
    v16 = v12 + v17 >= 1;
    v15 = *(a1 + 24);
    sub_2619BA59C();
    return sub_2619D9B48();
  }

  return result;
}

uint64_t sub_2619BA474()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEC8EA8, &qword_2619DA390);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v7 - v3;
  sub_2619D93E8();
  sub_2619B60F0();
  sub_2619D9348();
  sub_2619D9318();
  v5 = v9;
  sub_2619D92F8();
  result = (*(v1 + 8))(v4, v0);
  if (!__OFADD__(v5, v8))
  {
    return v5 + v8 > 0;
  }

  __break(1u);
  return result;
}

unint64_t sub_2619BA59C()
{
  result = qword_27FEC9030;
  if (!qword_27FEC9030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEC9030);
  }

  return result;
}

uint64_t sub_2619BA5F0(uint64_t a1)
{
  v2 = sub_2619D93F8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2619D9338();
  sub_2619D9368();

  (*(v3 + 8))(v6, v2);
  v10[1] = 0;
  v7 = *(a1 + 16);
  v8 = *(a1 + 24);
  sub_2619BA59C();
  return sub_2619D9B48();
}

uint64_t sub_2619BA70C(uint64_t a1)
{
  v2 = sub_2619D93F8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2619D9338();
  sub_2619D9368();

  v7 = sub_2619BA848();
  (*(v3 + 8))(v6, v2);
  v8 = *(a1 + 16);
  v11[1] = (v7 & 1) != 0;
  v9 = *(a1 + 24);
  sub_2619BA59C();
  return sub_2619D9B48();
}

uint64_t sub_2619BA848()
{
  v0 = sub_2619D93F8();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2619D93E8();
  sub_2619D9368();

  sub_2619D9198();
  v5 = sub_2619D93D8();
  v6 = *(v1 + 8);
  v6(v4, v0);
  if (v5)
  {
    sub_2619D93E8();
    sub_2619D9368();

    sub_2619D9168();
    v7 = sub_2619D93D8();
    v6(v4, v0);
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

uint64_t sub_2619BA9D8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEC9038, &qword_2619DA738);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2619BAA90(uint64_t a1)
{
  result = swift_beginAccess();
  qword_27FEC9040 = a1;
  return result;
}

uint64_t sub_2619BAB30@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC20RealityKitInspection32SceneDebugRepresentationProvider_hierarchy;
  swift_beginAccess();
  v4 = sub_2619D9748();
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

uint64_t sub_2619BABB8(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC20RealityKitInspection32SceneDebugRepresentationProvider_hierarchy;
  swift_beginAccess();
  v4 = sub_2619D9748();
  (*(*(v4 - 8) + 40))(v1 + v3, a1, v4);
  return swift_endAccess();
}

uint64_t sub_2619BAC48()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  sub_2619D9738();
  return v3;
}

uint64_t sub_2619BAC8C()
{
  v1 = sub_2619D9748();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2619D9738();
  (*(v2 + 32))(v0 + OBJC_IVAR____TtC20RealityKitInspection32SceneDebugRepresentationProvider_hierarchy, v5, v1);
  return v0;
}

uint64_t sub_2619BAD5C(uint64_t a1)
{
  swift_beginAccess();
  v3 = (*(*v1 + 128))(a1, qword_27FEC9040);
  return (*(*v1 + 136))(v3);
}

uint64_t sub_2619BADF8(void *a1, uint64_t a2)
{
  v4 = sub_2619D9858();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v15[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  sub_2619D97E8();

  v9 = sub_2619D9848();
  v10 = sub_2619D9AC8();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 134217984;
    *(v11 + 4) = sub_2619D9448();

    _os_log_impl(&dword_2619AE000, v9, v10, "Representing entity %llu in RealityKitHierarchy", v11, 0xCu);
    MEMORY[0x266714FB0](v11, -1, -1);
  }

  else
  {
  }

  (*(v5 + 8))(v8, v4);
  sub_2619BB624(a1, 0, a2, 1);
  swift_beginAccess();
  v12 = sub_2619D9728();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEC9048, &qword_2619DA760);
  sub_2619D9528();
  v12(v15, 0);
  swift_endAccess();
}

uint64_t sub_2619BB01C()
{
  v1 = v0;
  v2 = sub_2619D9748();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = sub_2619D9858();
  v7 = *(v42 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v42);
  v10 = MEMORY[0x28223BE20](v9);
  v40 = &v39 - v11;
  MEMORY[0x28223BE20](v10);
  v13 = &v39 - v12;
  sub_2619D97E8();
  v14 = sub_2619D9848();
  v15 = sub_2619D9AC8();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&dword_2619AE000, v14, v15, "Encoding RealityKitHierarchy", v16, 2u);
    MEMORY[0x266714FB0](v16, -1, -1);
  }

  v41 = *(v7 + 8);
  v41(v13, v42);
  v17 = sub_2619D8F68();
  v18 = *(v17 + 48);
  v19 = *(v17 + 52);
  swift_allocObject();
  sub_2619D8F58();
  (*(*v1 + 88))();
  sub_2619C4CDC(&qword_27FEC9050, MEMORY[0x277D65308]);
  v20 = sub_2619D8F48();
  v22 = v21;
  (*(v3 + 8))(v6, v2);
  sub_2619C454C(v20, v22);
  v23 = sub_2619C43A0(v20, v22);
  if (v24)
  {
    v25 = v23;
    v26 = v24;
    sub_2619C45A0(v20, v22);
    v27 = v40;
    goto LABEL_11;
  }

  v45 = v20;
  v46 = v22;
  sub_2619C454C(v20, v22);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEC9058, &qword_2619DA768);
  v28 = swift_dynamicCast();
  v27 = v40;
  if (v28)
  {
    sub_2619C45F4(v43, v47);
    __swift_project_boxed_opaque_existential_1Tm(v47, v48);
    if (sub_2619D9D08())
    {
      sub_2619C45A0(v20, v22);
      __swift_project_boxed_opaque_existential_1Tm(v47, v48);
      sub_2619D9CF8();
      v26 = *(&v43[0] + 1);
      v25 = *&v43[0];
      __swift_destroy_boxed_opaque_existential_0Tm(v47);
      goto LABEL_11;
    }

    __swift_destroy_boxed_opaque_existential_0Tm(v47);
  }

  else
  {
    v44 = 0;
    memset(v43, 0, sizeof(v43));
    sub_2619B62D0(v43, &qword_27FEC9060, qword_2619DA770);
  }

  v25 = sub_2619C3430(v20, v22);
  v26 = v29;
  sub_2619C45A0(v20, v22);
LABEL_11:
  sub_2619D97E8();

  v30 = sub_2619D9848();
  v31 = sub_2619D9AC8();

  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v34 = v25;
    v35 = v33;
    v47[0] = v33;
    *v32 = 136315138;
    v36 = sub_2619C2E88(v34, v26, v47);

    *(v32 + 4) = v36;
    _os_log_impl(&dword_2619AE000, v30, v31, "%s", v32, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v35);
    MEMORY[0x266714FB0](v35, -1, -1);
    MEMORY[0x266714FB0](v32, -1, -1);

    v37 = v40;
  }

  else
  {

    v37 = v27;
  }

  v41(v37, v42);
  return v20;
}

uint64_t sub_2619BB624(void *a1, uint64_t a2, uint64_t a3, int a4)
{
  v5 = v4;
  v92 = a4;
  v108 = a2;
  v8 = sub_2619D9428();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v79[1] = v79 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEC8F88, &qword_2619DA548);
  v11 = *(v94 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v94);
  v14 = v79 - v13;
  v104 = sub_2619D9798();
  v82 = *(v104 - 8);
  v15 = *(v82 + 64);
  v16 = MEMORY[0x28223BE20](v104);
  v89 = v79 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v102 = v79 - v18;
  v19 = sub_2619D93F8();
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8);
  v96 = (v79 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  v91 = sub_2619D93C8();
  v90 = *(v91 - 8);
  v22 = *(v90 + 64);
  MEMORY[0x28223BE20](v91);
  v103 = v79 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = sub_2619D9E28();
  v105 = *(v101 - 8);
  v24 = *(v105 + 64);
  MEMORY[0x28223BE20](v101);
  v88 = v79 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEC9068, &qword_2619DA7D8);
  v27 = *(*(v26 - 8) + 64);
  MEMORY[0x28223BE20](v26 - 8);
  v87 = v79 - v28;
  v107 = sub_2619D9838();
  v93 = *(v107 - 8);
  v29 = *(v93 + 64);
  v30 = MEMORY[0x28223BE20](v107);
  v100 = v79 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v106 = v79 - v32;
  v99 = sub_2619D9858();
  v33 = *(v99 - 8);
  v34 = *(v33 + 64);
  MEMORY[0x28223BE20](v99);
  v36 = v79 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2619D97E8();

  v37 = sub_2619D9848();
  v38 = sub_2619D9AC8();

  v39 = os_log_type_enabled(v37, v38);
  v81 = v11;
  v80 = v14;
  if (v39)
  {
    v40 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    *&v114 = v41;
    *v40 = 136315138;
    v98 = v37;
    v42 = sub_2619D9458();
    v44 = sub_2619C2E88(v42, v43, &v114);

    *(v40 + 4) = v44;
    v37 = v98;
    _os_log_impl(&dword_2619AE000, v98, v38, "RealityKitHierarchy capturing entity: %s", v40, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v41);
    MEMORY[0x266714FB0](v41, -1, -1);
    MEMORY[0x266714FB0](v40, -1, -1);
  }

  (*(v33 + 8))(v36, v99);
  sub_2619D9448();
  v45 = v106;
  sub_2619D9828();
  *&v114 = a1;
  sub_2619D9E38();
  v97 = v46;
  v47 = *(v93 + 16);
  v99 = v93 + 16;
  v98 = v47;
  (v47)(v100, v45, v107);
  v95 = sub_2619D9458();
  v86 = v48;
  *&v114 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEC8FC8, &qword_2619DA890);
  v85 = sub_2619D9958();
  v84 = v49;
  v83 = sub_2619D9478();
  sub_2619D9378();
  sub_2619D9488();
  sub_2619D9438();
  v50 = sub_2619D96E8();
  v51 = *(v50 + 48);
  v52 = *(v50 + 52);
  swift_allocObject();

  v53 = sub_2619D96C8();
  v85 = sub_2619D94A8();
  v115 = v85;
  *&v114 = a1;

  v54 = v88;
  sub_2619D9DD8();
  v55 = v87;
  sub_2619BC2F4(v54, a3, &unk_28741E4D0, v87);
  swift_arrayDestroy();
  v56 = *(v105 + 8);
  v105 += 8;
  v97 = v56;
  v56(v54, v101);
  sub_2619D96B8();
  v86 = a1;
  sub_2619D9368();
  v57 = v103;
  sub_2619D9388();
  sub_2619D93B8();
  v108 = a3;
  v58 = v104;
  v59 = v89;
  v60 = v102;
  if (v115)
  {
    v96 = (v82 + 16);
    v95 = (v82 + 8);
    do
    {
      sub_2619C45F4(&v114, &v111);
      __swift_project_boxed_opaque_existential_1Tm(&v111, v112);
      v109[0] = swift_getDynamicType();
      v109[1] = v113;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEC9150, &qword_2619DA898);
      sub_2619D9958();

      sub_2619D9788();
      (*v96)(v59, v60, v58);
      (v98)(v100, v106, v107);
      v61 = v112;
      v62 = v5;
      v63 = __swift_project_boxed_opaque_existential_1Tm(&v111, v112);
      v110 = v61;
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v109);
      v65 = v63;
      v5 = v62;
      a3 = v108;
      (*(*(v61 - 8) + 16))(boxed_opaque_existential_0, v65, v61);
      sub_2619C4DB8(v109);
      __swift_destroy_boxed_opaque_existential_0Tm(v109);
      v66 = sub_2619D9718();
      v67 = *(v66 + 48);
      v68 = *(v66 + 52);
      swift_allocObject();
      v60 = v102;
      sub_2619D9708();
      v69 = v112;
      v70 = __swift_project_boxed_opaque_existential_1Tm(&v111, v112);
      v110 = v69;
      v71 = __swift_allocate_boxed_opaque_existential_0(v109);
      (*(*(v69 - 8) + 16))(v71, v70, v69);
      sub_2619D9DD8();
      sub_2619BC2F4(v54, a3, MEMORY[0x277D84F90], v55);
      v97(v54, v101);
      sub_2619D96F8();
      v72 = sub_2619D96A8();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEC9158, &qword_2619DA8A0);
      sub_2619D9528();
      v72(v109, 0);
      v57 = v103;
      v58 = v104;

      (*v95)(v60, v58);
      __swift_destroy_boxed_opaque_existential_0Tm(&v111);
      sub_2619D93B8();
    }

    while (v115);
  }

  (*(v90 + 8))(v57, v91);
  if (v92)
  {
    sub_2619D9068();
    v73 = v80;
    sub_2619D9408();
    v74 = v94;
    sub_2619D9418();
    for (i = v114; v114; i = v114)
    {

      v76 = sub_2619B7A38();
      sub_2619BB624(i, v53, a3, (v76 & 1) == 0);

      v77 = sub_2619D96D8();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEC9048, &qword_2619DA760);
      sub_2619D9528();
      v77(&v114, 0);
      a3 = v108;

      v74 = v94;

      sub_2619D9418();
    }

    (*(v81 + 8))(v73, v74);
  }

  (*(v93 + 8))(v106, v107);
  return v53;
}

uint64_t sub_2619BC2F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v110 = a3;
  v104 = a2;
  v107 = a4;
  v103 = sub_2619D95A8();
  v5 = *(v103 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v103);
  v102 = &v92 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v101 = (&v92 - v9);
  v100 = sub_2619D9568();
  v10 = *(v100 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v100);
  v99 = &v92 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v98 = &v92 - v14;
  v15 = sub_2619D9E28();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v92 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_2619D9858();
  v112 = *(v20 - 8);
  v21 = *(v112 + 64);
  v22 = MEMORY[0x28223BE20](v20);
  v24 = &v92 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x28223BE20](v22);
  v109 = &v92 - v26;
  v27 = MEMORY[0x28223BE20](v25);
  v106 = &v92 - v28;
  v29 = MEMORY[0x28223BE20](v27);
  v113 = &v92 - v30;
  MEMORY[0x28223BE20](v29);
  v32 = &v92 - v31;
  sub_2619D97E8();
  v33 = *(v16 + 16);
  v114 = a1;
  v115 = v15;
  v33(v19, a1, v15);
  v34 = sub_2619D9848();
  v35 = sub_2619D9AC8();
  v36 = os_log_type_enabled(v34, v35);
  v105 = v24;
  if (v36)
  {
    v37 = swift_slowAlloc();
    v108 = swift_slowAlloc();
    *&v125 = v108;
    *v37 = 136315138;
    *&v123 = sub_2619D9DE8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEC90D0, &qword_2619DA830);
    v38 = sub_2619D9958();
    *&v111 = v10;
    v39 = v5;
    v41 = v40;
    (*(v16 + 8))(v19, v115);
    v42 = sub_2619C2E88(v38, v41, &v125);
    v5 = v39;
    v10 = v111;

    *(v37 + 4) = v42;
    _os_log_impl(&dword_2619AE000, v34, v35, "RealityKitHierarchy capturing properties for subjectType: %s", v37, 0xCu);
    v43 = v108;
    __swift_destroy_boxed_opaque_existential_0Tm(v108);
    MEMORY[0x266714FB0](v43, -1, -1);
    v44 = v37;
    v24 = v105;
    MEMORY[0x266714FB0](v44, -1, -1);
  }

  else
  {

    (*(v16 + 8))(v19, v115);
  }

  v45 = v112;
  v115 = *(v112 + 8);
  v115(v32, v20);
  v46 = sub_2619D9778();
  sub_2619C4CDC(&qword_27FEC90F8, MEMORY[0x277D65320]);
  v97 = v46;
  sub_2619D9548();
  sub_2619D9E18();
  v47 = sub_2619D9C58();

  v112 = v47;
  sub_2619D9CE8();
  v49 = v106;
  v50 = v113;
  if (v127)
  {
    v114 = v45 + 8;
    v95 = (v10 + 16);
    v94 = (v5 + 16);
    v93 = (v5 + 8);
    v92 = (v10 + 8);
    v108 = (v110 + 40);
    *&v48 = 136315138;
    v111 = v48;
    v96 = v20;
    do
    {
      v123 = v125;
      sub_2619C4C88(&v126, &v124);
      sub_2619D97E8();
      sub_2619C4D24(&v123, &v120, &qword_27FEC90E8, &qword_2619DA840);
      v51 = sub_2619D9848();
      v52 = sub_2619D9AC8();
      if (os_log_type_enabled(v51, v52))
      {
        v53 = swift_slowAlloc();
        v54 = swift_slowAlloc();
        v117 = v54;
        *v53 = v111;
        sub_2619C4D24(&v120, &v118, &qword_27FEC90E8, &qword_2619DA840);
        v116 = v118;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEC9140, &qword_2619DA878);
        v55 = sub_2619D9958();
        v57 = v56;
        sub_2619B62D0(&v120, &qword_27FEC90E8, &qword_2619DA840);
        __swift_destroy_boxed_opaque_existential_0Tm(&v119);
        v58 = sub_2619C2E88(v55, v57, &v117);

        *(v53 + 4) = v58;
        _os_log_impl(&dword_2619AE000, v51, v52, "property label: %s", v53, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v54);
        v59 = v54;
        v50 = v113;
        MEMORY[0x266714FB0](v59, -1, -1);
        MEMORY[0x266714FB0](v53, -1, -1);
      }

      else
      {

        sub_2619B62D0(&v120, &qword_27FEC90E8, &qword_2619DA840);
      }

      v115(v50, v20);
      sub_2619D97E8();
      sub_2619C4D24(&v123, &v120, &qword_27FEC90E8, &qword_2619DA840);
      v60 = sub_2619D9848();
      v61 = sub_2619D9AC8();
      if (os_log_type_enabled(v60, v61))
      {
        v62 = swift_slowAlloc();
        v63 = swift_slowAlloc();
        *&v116 = v63;
        *v62 = v111;
        sub_2619C4D24(&v120, &v118, &qword_27FEC90E8, &qword_2619DA840);

        v64 = sub_2619D9958();
        v66 = v65;
        sub_2619B62D0(&v120, &qword_27FEC90E8, &qword_2619DA840);
        v67 = sub_2619C2E88(v64, v66, &v116);

        *(v62 + 4) = v67;
        _os_log_impl(&dword_2619AE000, v60, v61, "property value: %s", v62, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v63);
        v68 = v63;
        v50 = v113;
        MEMORY[0x266714FB0](v68, -1, -1);
        MEMORY[0x266714FB0](v62, -1, -1);
      }

      else
      {

        sub_2619B62D0(&v120, &qword_27FEC90E8, &qword_2619DA840);
      }

      v115(v49, v20);
      sub_2619C4D24(&v123, &v120, &qword_27FEC90E8, &qword_2619DA840);
      v69 = v121;
      if (v121)
      {
        v70 = v120;
        __swift_destroy_boxed_opaque_existential_0Tm(&v122);
        v71 = *(v110 + 16) + 1;
        v72 = v108;
        do
        {
          if (!--v71)
          {

            v82 = v98;
            sub_2619D9558();
            v83 = v101;
            sub_2619BE25C(&v124, v104, v101);
            v84 = v100;
            (*v95)(v99, v82, v100);
            v85 = v103;
            (*v94)(v102, v83, v103);
            sub_2619C4DB8(&v124);
            v86 = *(v97 + 48);
            v87 = *(v97 + 52);
            swift_allocObject();
            v49 = v106;
            sub_2619D9758();
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEC9068, &qword_2619DA7D8);
            sub_2619D9528();

            v88 = v83;
            v50 = v113;
            (*v93)(v88, v85);
            v89 = v82;
            v24 = v105;
            v90 = v84;
            v20 = v96;
            (*v92)(v89, v90);
            goto LABEL_7;
          }

          v73 = v72 + 2;
          v74 = *v72;
          v120 = *(v72 - 1);
          v121 = v74;
          *&v118 = v70;
          *(&v118 + 1) = v69;
          sub_2619B7480();
          v75 = sub_2619D9B18();
          v72 = v73;
        }

        while (v75);

        sub_2619D97E8();
        v76 = sub_2619D9848();
        v77 = sub_2619D9AC8();
        if (os_log_type_enabled(v76, v77))
        {
          v78 = swift_slowAlloc();
          *v78 = 0;
          _os_log_impl(&dword_2619AE000, v76, v77, "Excluding property", v78, 2u);
          MEMORY[0x266714FB0](v78, -1, -1);
        }

        v115(v109, v20);
      }

      else
      {
        __swift_destroy_boxed_opaque_existential_0Tm(&v122);
        sub_2619D97E8();
        v79 = sub_2619D9848();
        v80 = sub_2619D9AE8();
        if (os_log_type_enabled(v79, v80))
        {
          v81 = swift_slowAlloc();
          *v81 = 0;
          _os_log_impl(&dword_2619AE000, v79, v80, "Failed to capture property because it lacked a label", v81, 2u);
          MEMORY[0x266714FB0](v81, -1, -1);
        }

        v115(v24, v20);
      }

LABEL_7:
      sub_2619B62D0(&v123, &qword_27FEC90E8, &qword_2619DA840);
      sub_2619D9CE8();
    }

    while (v127);
  }
}

void *sub_2619BD054(uint64_t a1, uint64_t a2)
{
  v47 = a2;
  v51 = sub_2619D95A8();
  v50 = *(v51 - 8);
  v2 = *(v50 + 64);
  v3 = MEMORY[0x28223BE20](v51);
  v49 = v45 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v48 = v45 - v5;
  v57 = sub_2619D9858();
  v6 = *(v57 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v57);
  v10 = v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = v45 - v12;
  MEMORY[0x28223BE20](v11);
  v15 = v45 - v14;
  sub_2619D97E8();
  v16 = sub_2619D9848();
  v17 = sub_2619D9AC8();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&dword_2619AE000, v16, v17, "RealityKitHierarchy capturing array", v18, 2u);
    MEMORY[0x266714FB0](v18, -1, -1);
  }

  v21 = *(v6 + 8);
  v19 = v6 + 8;
  v20 = v21;
  v21(v15, v57);
  sub_2619D9E18();
  v22 = sub_2619D9C58();

  v56 = v22;
  sub_2619D9CE8();
  if (v66)
  {
    v46 = (v50 + 16);
    v45[1] = v50 + 8;
    v45[0] = v50 + 32;
    v52 = MEMORY[0x277D84F90];
    *&v23 = 136315138;
    v53 = v23;
    v55 = v13;
    v54 = v19;
    do
    {
      v24 = v64;
      v61[0] = v63;
      v61[1] = v64;
      sub_2619C4C88(&v65, &v62);
      sub_2619D97E8();
      sub_2619C4D24(v61, v60, &qword_27FEC90E8, &qword_2619DA840);
      v25 = sub_2619D9848();
      v26 = sub_2619D9AC8();
      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        v28 = swift_slowAlloc();
        v59 = v28;
        *v27 = v53;
        sub_2619C4D24(v60, v58, &qword_27FEC90E8, &qword_2619DA840);

        v29 = sub_2619D9958();
        v30 = v20;
        v31 = v10;
        v33 = v32;
        sub_2619B62D0(v60, &qword_27FEC90E8, &qword_2619DA840);
        v34 = sub_2619C2E88(v29, v33, &v59);
        v10 = v31;
        v20 = v30;

        *(v27 + 4) = v34;
        _os_log_impl(&dword_2619AE000, v25, v26, "property value: %s", v27, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v28);
        v13 = v55;
        MEMORY[0x266714FB0](v28, -1, -1);
        MEMORY[0x266714FB0](v27, -1, -1);
      }

      else
      {

        sub_2619B62D0(v60, &qword_27FEC90E8, &qword_2619DA840);
      }

      v20(v13, v57);
      if (v24)
      {
        sub_2619D97E8();
        v35 = sub_2619D9848();
        v36 = sub_2619D9AE8();
        if (os_log_type_enabled(v35, v36))
        {
          v37 = swift_slowAlloc();
          *v37 = 0;
          _os_log_impl(&dword_2619AE000, v35, v36, "Failed to capture array property because it contained a label", v37, 2u);
          MEMORY[0x266714FB0](v37, -1, -1);
        }

        v20(v10, v57);
      }

      else
      {
        v38 = v48;
        sub_2619BE25C(&v62, v47);
        (*v46)(v49, v38, v51);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v52 = sub_2619C2CB0(0, v52[2] + 1, 1, v52);
        }

        v40 = v52[2];
        v39 = v52[3];
        if (v40 >= v39 >> 1)
        {
          v52 = sub_2619C2CB0(v39 > 1, v40 + 1, 1, v52);
        }

        v41 = v50;
        v42 = v51;
        (*(v50 + 8))(v48, v51);
        v43 = v52;
        v52[2] = v40 + 1;
        (*(v41 + 32))(v43 + ((*(v41 + 80) + 32) & ~*(v41 + 80)) + *(v41 + 72) * v40, v49, v42);
      }

      sub_2619B62D0(v61, &qword_27FEC90E8, &qword_2619DA840);
      sub_2619D9CE8();
    }

    while (v66);
  }

  else
  {
    v52 = MEMORY[0x277D84F90];
  }

  return v52;
}

uint64_t sub_2619BD740(uint64_t a1, uint64_t a2)
{
  v85 = a2;
  v80 = sub_2619D9598();
  *&v90 = *(v80 - 8);
  v2 = *(v90 + 64);
  MEMORY[0x28223BE20](v80);
  v79 = &v69 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = sub_2619D95A8();
  v4 = *(v86 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v86);
  v78 = &v69 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v77 = &v69 - v9;
  v10 = MEMORY[0x28223BE20](v8);
  v83 = &v69 - v11;
  MEMORY[0x28223BE20](v10);
  v84 = &v69 - v12;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEC9068, &qword_2619DA7D8);
  v13 = *(v88 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v88);
  v87 = &v69 - v15;
  v92 = sub_2619D9858();
  v16 = *(v92 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v92);
  v20 = &v69 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v18);
  v23 = &v69 - v22;
  MEMORY[0x28223BE20](v21);
  v25 = &v69 - v24;
  sub_2619D97E8();
  v26 = sub_2619D9848();
  v27 = sub_2619D9AC8();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    *v28 = 0;
    _os_log_impl(&dword_2619AE000, v26, v27, "RealityKitHierarchy capturing dictionary", v28, 2u);
    MEMORY[0x266714FB0](v28, -1, -1);
  }

  v29 = v16 + 8;
  v30 = v92;
  v94 = *(v16 + 8);
  v94(v25, v92);
  v89 = sub_2619C4658(MEMORY[0x277D84F90]);
  sub_2619D9E18();
  v31 = sub_2619D9C58();

  v93 = v31;
  sub_2619D9CE8();
  if (!v103)
  {
LABEL_29:

    return v89;
  }

  v82 = (v4 + 88);
  v81 = *MEMORY[0x277D652D8];
  v76 = (v4 + 8);
  v75 = (v4 + 96);
  v74 = (v13 + 32);
  v73 = (v13 + 8);
  v72 = (v4 + 16);
  v71 = (v90 + 8);
  *&v32 = 136315138;
  v90 = v32;
  v91 = v23;
  while (1)
  {
    v33 = v101;
    v98[0] = v100;
    v98[1] = v101;
    sub_2619C4C88(&v102, &v99);
    sub_2619D97E8();
    sub_2619C4D24(v98, &v97, &qword_27FEC90E8, &qword_2619DA840);
    v34 = sub_2619D9848();
    v35 = sub_2619D9AC8();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = v29;
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v96 = v38;
      *v37 = v90;
      sub_2619C4D24(&v97, v95, &qword_27FEC90E8, &qword_2619DA840);

      v39 = sub_2619D9958();
      v41 = v40;
      sub_2619B62D0(&v97, &qword_27FEC90E8, &qword_2619DA840);
      v42 = sub_2619C2E88(v39, v41, &v96);

      *(v37 + 4) = v42;
      v30 = v92;
      _os_log_impl(&dword_2619AE000, v34, v35, "property value: %s", v37, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v38);
      MEMORY[0x266714FB0](v38, -1, -1);
      v43 = v37;
      v29 = v36;
      v44 = v94;
      v23 = v91;
      MEMORY[0x266714FB0](v43, -1, -1);

      v44(v23, v30);
      if (v33)
      {
        goto LABEL_7;
      }
    }

    else
    {

      sub_2619B62D0(&v97, &qword_27FEC90E8, &qword_2619DA840);
      v94(v23, v30);
      if (v33)
      {
LABEL_7:
        sub_2619D97E8();
        v45 = sub_2619D9848();
        v46 = sub_2619D9AE8();
        if (os_log_type_enabled(v45, v46))
        {
          v47 = swift_slowAlloc();
          *v47 = 0;
          _os_log_impl(&dword_2619AE000, v45, v46, "Failed to capture dictionary property because it contained a label", v47, 2u);
          MEMORY[0x266714FB0](v47, -1, -1);
        }

        v94(v20, v30);
        goto LABEL_10;
      }
    }

    v48 = v84;
    sub_2619BE25C(&v99, v85);
    v49 = v48;
    v50 = v48;
    v51 = v86;
    v52 = (*v82)(v50, v86);
    if (v52 != v81)
    {
      (*v76)(v49, v51);
      goto LABEL_10;
    }

    (*v75)(v49, v51);
    v53 = *(v49 + 1);

    v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEC90E0, &qword_2619DA838);
    (*v74)(v87, &v49[*(v54 + 48)], v88);
    v55 = sub_2619D9508();
    if (v55 >> 62)
    {
      v56 = sub_2619D9CA8();
    }

    else
    {
      v56 = *((v55 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v56 < 2)
    {
      (*v73)(v87, v88);
      goto LABEL_10;
    }

    result = sub_2619D9508();
    if ((result & 0xC000000000000001) != 0)
    {
      MEMORY[0x2667148E0](0, result);
      goto LABEL_20;
    }

    if (!*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      break;
    }

    v58 = *(result + 32);

LABEL_20:

    sub_2619D9768();

    result = sub_2619D9508();
    v70 = v29;
    if ((result & 0xC000000000000001) != 0)
    {
      MEMORY[0x2667148E0](1, result);
    }

    else
    {
      if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10) < 2uLL)
      {
        goto LABEL_31;
      }

      v59 = *(result + 40);
    }

    v60 = v77;
    sub_2619D9768();

    v61 = *v72;
    v62 = v78;
    v63 = v83;
    v64 = v86;
    (*v72)(v78, v83, v86);
    sub_2619C4CDC(&qword_27FEC9118, MEMORY[0x277D652F0]);
    sub_2619D9B68();
    v65 = v79;
    sub_2619D9588();
    v61(v62, v60, v64);
    v66 = v89;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v97 = v66;
    sub_2619C3A18(v62, v65, isUniquelyReferenced_nonNull_native);
    (*v71)(v65, v80);
    v68 = *v76;
    (*v76)(v60, v64);
    v68(v63, v64);
    (*v73)(v87, v88);
    v89 = v97;
    v30 = v92;
    v29 = v70;
LABEL_10:
    sub_2619B62D0(v98, &qword_27FEC90E8, &qword_2619DA840);
    sub_2619D9CE8();
    if (!v103)
    {
      goto LABEL_29;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_2619BE25C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v554 = a2;
  v565 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEC9068, &qword_2619DA7D8);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v506 = &v503 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v516 = &v503 - v10;
  v11 = MEMORY[0x28223BE20](v9);
  v519 = &v503 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v520 = &v503 - v14;
  MEMORY[0x28223BE20](v13);
  v534 = &v503 - v15;
  v539 = sub_2619D9568();
  v538 = *(v539 - 8);
  v16 = v538[8];
  v17 = MEMORY[0x28223BE20](v539);
  v531 = &v503 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v17);
  v541 = &v503 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v542 = &v503 - v22;
  MEMORY[0x28223BE20](v21);
  v543 = &v503 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEC9070, &qword_2619DA7E0);
  v25 = *(*(v24 - 8) + 64);
  v26 = MEMORY[0x28223BE20](v24 - 8);
  v513 = &v503 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x28223BE20](v26);
  v521 = &v503 - v29;
  v30 = MEMORY[0x28223BE20](v28);
  v507 = &v503 - v31;
  v32 = MEMORY[0x28223BE20](v30);
  v528 = &v503 - v33;
  MEMORY[0x28223BE20](v32);
  v570 = &v503 - v34;
  v575 = sub_2619D95A8();
  v561 = *(v575 - 8);
  v35 = *(v561 + 64);
  v36 = MEMORY[0x28223BE20](v575);
  v518 = &v503 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = MEMORY[0x28223BE20](v36);
  v524 = &v503 - v39;
  v40 = MEMORY[0x28223BE20](v38);
  v504 = &v503 - v41;
  v42 = MEMORY[0x28223BE20](v40);
  v536 = &v503 - v43;
  v44 = MEMORY[0x28223BE20](v42);
  v523 = &v503 - v45;
  v46 = MEMORY[0x28223BE20](v44);
  v556 = &v503 - v47;
  MEMORY[0x28223BE20](v46);
  v559 = &v503 - v48;
  v569 = sub_2619D9DF8();
  v572 = *(v569 - 1);
  v49 = *(v572 + 64);
  MEMORY[0x28223BE20](v569);
  v553 = &v503 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  v568 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEC9078, &qword_2619DA7E8);
  v51 = *(*(v568 - 8) + 64);
  v52 = MEMORY[0x28223BE20](v568);
  v549 = &v503 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v52);
  v574 = &v503 - v54;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEC9080, &qword_2619DA7F0);
  v56 = *(*(v55 - 8) + 64);
  v57 = MEMORY[0x28223BE20](v55 - 8);
  v540 = &v503 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = MEMORY[0x28223BE20](v57);
  v573 = &v503 - v60;
  v61 = MEMORY[0x28223BE20](v59);
  v555 = &v503 - v62;
  v63 = MEMORY[0x28223BE20](v61);
  v557 = &v503 - v64;
  v65 = MEMORY[0x28223BE20](v63);
  v571 = (&v503 - v66);
  MEMORY[0x28223BE20](v65);
  v68 = &v503 - v67;
  v69 = sub_2619D9858();
  v70 = *(v69 - 8);
  v71 = *(v70 + 64);
  v72 = MEMORY[0x28223BE20](v69);
  v515 = &v503 - ((v73 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = MEMORY[0x28223BE20](v72);
  v514 = &v503 - v75;
  v76 = MEMORY[0x28223BE20](v74);
  v522 = &v503 - v77;
  v78 = MEMORY[0x28223BE20](v76);
  v508 = &v503 - v79;
  v80 = MEMORY[0x28223BE20](v78);
  v509 = &v503 - v81;
  v82 = MEMORY[0x28223BE20](v80);
  v511 = &v503 - v83;
  v84 = MEMORY[0x28223BE20](v82);
  v512 = &v503 - v85;
  v86 = MEMORY[0x28223BE20](v84);
  v525 = &v503 - v87;
  v88 = MEMORY[0x28223BE20](v86);
  v535 = &v503 - v89;
  v90 = MEMORY[0x28223BE20](v88);
  v532 = &v503 - v91;
  v92 = MEMORY[0x28223BE20](v90);
  v510 = &v503 - v93;
  v94 = MEMORY[0x28223BE20](v92);
  v526 = &v503 - v95;
  v96 = MEMORY[0x28223BE20](v94);
  v517 = &v503 - v97;
  v98 = MEMORY[0x28223BE20](v96);
  v527 = &v503 - v99;
  v100 = MEMORY[0x28223BE20](v98);
  v552 = &v503 - v101;
  v102 = MEMORY[0x28223BE20](v100);
  v550 = &v503 - v103;
  v104 = MEMORY[0x28223BE20](v102);
  v558 = &v503 - v105;
  v106 = MEMORY[0x28223BE20](v104);
  v551 = &v503 - v107;
  MEMORY[0x28223BE20](v106);
  v109 = &v503 - v108;
  v566 = sub_2619D9E28();
  v567 = *(v566 - 8);
  v110 = *(v567 + 64);
  v111 = MEMORY[0x28223BE20](v566);
  v505 = &v503 - ((v112 + 15) & 0xFFFFFFFFFFFFFFF0);
  v113 = MEMORY[0x28223BE20](v111);
  v537 = &v503 - v114;
  MEMORY[0x28223BE20](v113);
  v116 = &v503 - v115;
  v560 = a1;
  sub_2619C4B1C(a1, &v581);
  sub_2619D9DD8();
  v117 = sub_2619D9DE8();
  sub_2619D97E8();
  v118 = sub_2619D9848();
  v119 = sub_2619D9AC8();
  v120 = os_log_type_enabled(v118, v119);
  v576 = v116;
  v564 = v69;
  v562 = v70;
  v533 = v4;
  v530 = v5;
  v529 = v117;
  if (v120)
  {
    v121 = v70;
    v122 = v117;
    v123 = v69;
    v124 = swift_slowAlloc();
    v125 = swift_slowAlloc();
    *&v581 = v125;
    *v124 = 136315138;
    *&v578 = v122;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEC90D0, &qword_2619DA830);
    v126 = sub_2619D9958();
    v128 = sub_2619C2E88(v126, v127, &v581);

    *(v124 + 4) = v128;
    _os_log_impl(&dword_2619AE000, v118, v119, "RealityKitHierarchy capturing PropertyValue of subjectType: %s", v124, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v125);
    MEMORY[0x266714FB0](v125, -1, -1);
    MEMORY[0x266714FB0](v124, -1, -1);

    v563 = *(v121 + 8);
    v563(v109, v123);
  }

  else
  {

    v563 = *(v70 + 8);
    v563(v109, v69);
  }

  sub_2619D9E08();
  v129 = *MEMORY[0x277D84C18];
  v130 = v572;
  v131 = *(v572 + 104);
  v132 = v571;
  v133 = v569;
  v547 = v572 + 104;
  v545 = v131;
  v131(v571, v129, v569);
  v134 = *(v130 + 56);
  v546 = v130 + 56;
  v544 = v134;
  v134(v132, 0, 1, v133);
  v135 = *(v568 + 48);
  v136 = v574;
  sub_2619C4D24(v68, v574, &qword_27FEC9080, &qword_2619DA7F0);
  v137 = v136;
  sub_2619C4D24(v132, v136 + v135, &qword_27FEC9080, &qword_2619DA7F0);
  v140 = *(v130 + 48);
  v138 = v130 + 48;
  v139 = v140;
  v141 = v140(v136, 1, v133);
  v142 = v573;
  v143 = v570;
  v548 = v140;
  if (v141 != 1)
  {
    v145 = v557;
    sub_2619C4D24(v137, v557, &qword_27FEC9080, &qword_2619DA7F0);
    if (v139(v137 + v135, 1, v133) != 1)
    {
      v146 = v572;
      v147 = v137 + v135;
      v148 = v553;
      (*(v572 + 32))(v553, v147, v133);
      v503 = v138;
      v149 = v137;
      v150 = sub_2619D9938();
      v151 = *(v146 + 8);
      v151(v148, v133);
      sub_2619B62D0(v571, &qword_27FEC9080, &qword_2619DA7F0);
      sub_2619B62D0(v68, &qword_27FEC9080, &qword_2619DA7F0);
      v151(v145, v133);
      v143 = v570;
      v142 = v573;
      sub_2619B62D0(v149, &qword_27FEC9080, &qword_2619DA7F0);
      if ((v150 & 1) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_11;
    }

    sub_2619B62D0(v571, &qword_27FEC9080, &qword_2619DA7F0);
    v144 = v574;
    sub_2619B62D0(v68, &qword_27FEC9080, &qword_2619DA7F0);
    (*(v572 + 8))(v145, v133);
LABEL_9:
    sub_2619B62D0(v144, &qword_27FEC9078, &qword_2619DA7E8);
    goto LABEL_14;
  }

  sub_2619B62D0(v132, &qword_27FEC9080, &qword_2619DA7F0);
  v144 = v574;
  sub_2619B62D0(v68, &qword_27FEC9080, &qword_2619DA7F0);
  if (v139(v144 + v135, 1, v133) != 1)
  {
    goto LABEL_9;
  }

  sub_2619B62D0(v144, &qword_27FEC9080, &qword_2619DA7F0);
LABEL_11:
  v152 = sub_2619D9E18();
  v154 = v152[2];
  v153 = v152[3];
  v155 = v152[4];
  v156 = v152[5];
  swift_getObjectType();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v157 = sub_2619D9BA8();
  swift_getObjectType();
  result = sub_2619D9BA8();
  if (v157 != result)
  {
    __break(1u);
    goto LABEL_138;
  }

  v159 = sub_2619D9BB8();
  swift_unknownObjectRelease();
  if ((v159 & 1) == 0)
  {
    sub_2619D9C78();
    swift_unknownObjectRelease();

    v581 = v578;
    v582 = v579;
    v583 = v580;
    v195 = v551;
    sub_2619D97E8();
    v196 = sub_2619D9848();
    v197 = sub_2619D9AC8();
    v198 = os_log_type_enabled(v196, v197);
    v199 = v576;
    if (v198)
    {
      v200 = swift_slowAlloc();
      *v200 = 0;
      _os_log_impl(&dword_2619AE000, v196, v197, "Unwrapping optional PropertyValue", v200, 2u);
      MEMORY[0x266714FB0](v200, -1, -1);
    }

    v563(v195, v564);
    sub_2619BE25C(&v582, v554);
    sub_2619B62D0(&v581, &qword_27FEC90E8, &qword_2619DA840);
    return (*(v567 + 8))(v199, v566);
  }

  swift_unknownObjectRelease();

  v133 = v569;
  v142 = v573;
  v143 = v570;
LABEL_14:
  v160 = v560;
  sub_2619C4B1C(v560, &v581);
  sub_2619D9578();
  v161 = v561;
  v163 = (v561 + 48);
  v162 = *(v561 + 48);
  if (v162(v143, 1, v575) != 1)
  {
    v174 = v143;
    v175 = *(v161 + 32);
    v176 = v559;
    v177 = v575;
    v175(v559, v174, v575);
    v178 = v558;
    sub_2619D97E8();
    v179 = v556;
    (*(v161 + 16))(v556, v176, v177);
    v180 = sub_2619D9848();
    v181 = sub_2619D9AC8();
    if (os_log_type_enabled(v180, v181))
    {
      v182 = swift_slowAlloc();
      v183 = v575;
      v184 = v182;
      v185 = swift_slowAlloc();
      *&v581 = v185;
      *v184 = 136315138;
      sub_2619C4CDC(&qword_27FEC9110, MEMORY[0x277D652F0]);
      v186 = sub_2619D9D18();
      v187 = v179;
      v189 = v188;
      (*(v161 + 8))(v187, v183);
      v190 = sub_2619C2E88(v186, v189, &v581);

      *(v184 + 4) = v190;
      _os_log_impl(&dword_2619AE000, v180, v181, "Encoded PropertyValueType as known type: %s", v184, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v185);
      MEMORY[0x266714FB0](v185, -1, -1);
      MEMORY[0x266714FB0](v184, -1, -1);

      v191 = v558;
    }

    else
    {

      (*(v161 + 8))(v179, v575);
      v191 = v178;
    }

    v563(v191, v564);
    (*(v567 + 8))(v576, v566);
    return (v175)(v565, v559, v575);
  }

  v574 = v162;
  sub_2619B62D0(v143, &qword_27FEC9070, &qword_2619DA7E0);
  sub_2619C4B1C(v160, &v584);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEC9088, &qword_2619DA7F8);
  if (swift_dynamicCast())
  {
    v570 = v163;
    sub_2619C45F4(&v578, &v581);
    v164 = *(&v582 + 1);
    v165 = v583;
    __swift_project_boxed_opaque_existential_1Tm(&v581, *(&v582 + 1));
    v166 = *(v165 + 16);
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v168 = sub_2619D9B08();
    v571 = &v503;
    v169 = *(v168 - 8);
    v170 = *(v169 + 64);
    MEMORY[0x28223BE20](v168);
    v172 = &v503 - v171;
    v166(v164, v165);
    v173 = *(AssociatedTypeWitness - 8);
    if ((*(v173 + 48))(v172, 1, AssociatedTypeWitness) != 1)
    {
      v585 = AssociatedTypeWitness;
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v584);
      (*(v173 + 32))(boxed_opaque_existential_0, v172, AssociatedTypeWitness);
      sub_2619C4C88(&v584, &v578);
      v211 = v550;
      sub_2619D97E8();
      sub_2619C4B1C(&v578, &v584);
      v212 = sub_2619D9848();
      v213 = sub_2619D9AC8();
      if (os_log_type_enabled(v212, v213))
      {
        v214 = swift_slowAlloc();
        v215 = swift_slowAlloc();
        v586 = v215;
        *v214 = 136315138;
        __swift_project_boxed_opaque_existential_1Tm(&v584, v585);
        DynamicType = swift_getDynamicType();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEC90D0, &qword_2619DA830);
        v216 = sub_2619D9958();
        v218 = v217;
        __swift_destroy_boxed_opaque_existential_0Tm(&v584);
        v219 = sub_2619C2E88(v216, v218, &v586);

        *(v214 + 4) = v219;
        _os_log_impl(&dword_2619AE000, v212, v213, "Unwrapping value as type: %s", v214, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v215);
        MEMORY[0x266714FB0](v215, -1, -1);
        MEMORY[0x266714FB0](v214, -1, -1);
      }

      else
      {

        __swift_destroy_boxed_opaque_existential_0Tm(&v584);
      }

      v563(v211, v564);
      v225 = v576;
      sub_2619BE25C(&v578, v554);
      __swift_destroy_boxed_opaque_existential_0Tm(&v578);
      (*(v567 + 8))(v225, v566);
      return __swift_destroy_boxed_opaque_existential_0Tm(&v581);
    }

    (*(v169 + 8))(v172, v168);
    __swift_destroy_boxed_opaque_existential_0Tm(&v581);
    v161 = v561;
    v160 = v560;
    v133 = v569;
    v142 = v573;
    v163 = v570;
  }

  else
  {
    *&v580 = 0;
    v578 = 0u;
    v579 = 0u;
    sub_2619B62D0(&v578, &qword_27FEC9090, &qword_2619DA800);
  }

  sub_2619C4B1C(v160, &v581);
  v192 = swift_dynamicCast();
  v193 = v555;
  if (v192)
  {
    sub_2619C4B78(0, &qword_27FEC9098, 0x277D75348);
    v194 = sub_2619D9AF8();
LABEL_30:
    v201 = v194;
    v202 = v552;
    sub_2619D97E8();
    v203 = sub_2619D9848();
    v204 = sub_2619D9AC8();
    if (os_log_type_enabled(v203, v204))
    {
      v205 = swift_slowAlloc();
      *v205 = 0;
      _os_log_impl(&dword_2619AE000, v203, v204, "Encoded PropertyValueType as a color", v205, 2u);
      MEMORY[0x266714FB0](v205, -1, -1);
    }

    v563(v202, v564);
    v206 = [v201 CGColor];

    (*(v567 + 8))(v576, v566);
    *v565 = v206;
    v207 = MEMORY[0x277D652C8];
    goto LABEL_33;
  }

  sub_2619C4B1C(v160, &v581);
  sub_2619C4B78(0, &qword_27FEC9098, 0x277D75348);
  if (swift_dynamicCast())
  {
    v194 = v578;
    goto LABEL_30;
  }

  sub_2619C4B1C(v160, &v581);
  sub_2619C4B78(0, &qword_27FEC90A0, 0x277D755B8);
  v220 = swift_dynamicCast();
  v570 = v163;
  if (v220)
  {
    v221 = v578;
    [v578 size];
    if (v222 > 1024.0 || ([(UIImage *)v221 size], v223 > 1024.0))
    {

      (*(v567 + 8))(v576, v566);
      v224 = v565;
      *v565 = 0xD000000000000037;
      v224[1] = 0x80000002619DBB30;
      v207 = MEMORY[0x277D65298];
LABEL_33:
      v208 = *v207;
      v209 = *(v161 + 104);
      return v209();
    }

    v226 = UIImagePNGRepresentation(v221);
    if (v226)
    {
      v227 = v226;
      v228 = sub_2619D8FD8();
      v230 = v229;

      v231 = v527;
      sub_2619D97E8();
      v232 = sub_2619D9848();
      v233 = sub_2619D9AC8();
      if (os_log_type_enabled(v232, v233))
      {
        v234 = swift_slowAlloc();
        *v234 = 0;
        _os_log_impl(&dword_2619AE000, v232, v233, "Encoded PropertyValueType as an image", v234, 2u);
        MEMORY[0x266714FB0](v234, -1, -1);
      }

      v563(v231, v564);
      (*(v567 + 8))(v576, v566);
      v235 = v565;
      *v565 = v228;
      v235[1] = v230;
      v207 = MEMORY[0x277D652D0];
      goto LABEL_33;
    }

    v193 = v555;
  }

  sub_2619D9E08();
  v545(v142, *MEMORY[0x277D84C00], v133);
  v544(v142, 0, 1, v133);
  v236 = v133;
  v237 = *(v568 + 48);
  v238 = v549;
  sub_2619C4D24(v193, v549, &qword_27FEC9080, &qword_2619DA7F0);
  sub_2619C4D24(v142, v238 + v237, &qword_27FEC9080, &qword_2619DA7F0);
  v239 = v548;
  if (v548(v238, 1, v236) == 1)
  {
    sub_2619B62D0(v142, &qword_27FEC9080, &qword_2619DA7F0);
    v240 = v549;
    sub_2619B62D0(v193, &qword_27FEC9080, &qword_2619DA7F0);
    if (v239(v240 + v237, 1, v236) == 1)
    {
      sub_2619B62D0(v240, &qword_27FEC9080, &qword_2619DA7F0);
      goto LABEL_67;
    }

    goto LABEL_55;
  }

  v241 = v540;
  sub_2619C4D24(v238, v540, &qword_27FEC9080, &qword_2619DA7F0);
  if (v239(v238 + v237, 1, v236) == 1)
  {
    sub_2619B62D0(v573, &qword_27FEC9080, &qword_2619DA7F0);
    v240 = v549;
    sub_2619B62D0(v555, &qword_27FEC9080, &qword_2619DA7F0);
    (*(v572 + 8))(v241, v236);
LABEL_55:
    sub_2619B62D0(v240, &qword_27FEC9078, &qword_2619DA7E8);
    goto LABEL_56;
  }

  v259 = v572;
  v260 = v238 + v237;
  v261 = v553;
  (*(v572 + 32))(v553, v260, v236);
  v262 = sub_2619D9938();
  v263 = *(v259 + 8);
  v263(v261, v236);
  sub_2619B62D0(v573, &qword_27FEC9080, &qword_2619DA7F0);
  sub_2619B62D0(v555, &qword_27FEC9080, &qword_2619DA7F0);
  v263(v241, v236);
  v160 = v560;
  sub_2619B62D0(v238, &qword_27FEC9080, &qword_2619DA7F0);
  if ((v262 & 1) == 0)
  {
LABEL_56:
    sub_2619C4B1C(v160, &v581);
    sub_2619D94A8();
    if (swift_dynamicCast())
    {
      v242 = v535;
      sub_2619D97E8();

      v243 = sub_2619D9848();
      v244 = sub_2619D9AC8();
      if (os_log_type_enabled(v243, v244))
      {
        v245 = swift_slowAlloc();
        *v245 = 134217984;
        *(v245 + 4) = sub_2619D9448();

        _os_log_impl(&dword_2619AE000, v243, v244, "Encoded PropertyValueType as an EntityID: %llu", v245, 0xCu);
        MEMORY[0x266714FB0](v245, -1, -1);
      }

      else
      {
      }

      v563(v242, v564);
      v283 = sub_2619D9448();

      (*(v567 + 8))(v576, v566);
      *v565 = v283;
      v207 = MEMORY[0x277D652E8];
      goto LABEL_33;
    }

    v246 = v554 - 1;
    if (v554 >= 1)
    {
      sub_2619D9E18();
      v247 = sub_2619D9C68();

      if (v247 >= 1)
      {
        v248 = v525;
        sub_2619D97E8();
        v249 = sub_2619D9848();
        v250 = sub_2619D9AC8();
        if (os_log_type_enabled(v249, v250))
        {
          v251 = swift_slowAlloc();
          *v251 = 0;
          _os_log_impl(&dword_2619AE000, v249, v250, "Unwrapping complex property type", v251, 2u);
          MEMORY[0x266714FB0](v251, -1, -1);
        }

        v574 = v562 + 8;
        v563(v248, v564);
        v252 = sub_2619D9E18();
        v253 = v252[2];
        v254 = v252[3];
        v255 = v252[4];
        v256 = v252[5];
        swift_getObjectType();
        swift_unknownObjectRetain();
        swift_unknownObjectRetain();
        v257 = sub_2619D9BA8();
        swift_getObjectType();
        result = sub_2619D9BA8();
        if (v257 != result)
        {
          goto LABEL_139;
        }

        v258 = sub_2619D9BB8();
        swift_unknownObjectRelease();
        if (v258)
        {
          swift_unknownObjectRelease();

          v161 = v561;
          goto LABEL_88;
        }

        sub_2619D9C78();
        swift_unknownObjectRelease();

        v303 = *(&v581 + 1);
        __swift_destroy_boxed_opaque_existential_0Tm(&v582);
        v161 = v561;
        if (!v303)
        {
LABEL_88:
          sub_2619C4B1C(v560, &v581);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEC90C8, &qword_2619DA828);
          v319 = swift_dynamicCast();
          v320 = v576;
          if (v319)
          {

            v321 = sub_2619BD740(v320, v554);
            v322 = v512;
            sub_2619D97E8();

            v323 = sub_2619D9848();
            v324 = sub_2619D9AC8();

            if (os_log_type_enabled(v323, v324))
            {
              v325 = swift_slowAlloc();
              v326 = swift_slowAlloc();
              *&v581 = v326;
              *v325 = 136315394;
              *&v578 = v529;
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEC90D0, &qword_2619DA830);
              v327 = sub_2619D9958();
              v329 = sub_2619C2E88(v327, v328, &v581);

              *(v325 + 4) = v329;
              *(v325 + 12) = 2080;
              sub_2619D9598();
              sub_2619C4CDC(&qword_27FEC90D8, MEMORY[0x277D652A0]);
              v330 = sub_2619D98A8();
              v332 = sub_2619C2E88(v330, v331, &v581);

              *(v325 + 14) = v332;
              _os_log_impl(&dword_2619AE000, v323, v324, "Encoded PropertyValueType as an dictionary: %s -> %s", v325, 0x16u);
              swift_arrayDestroy();
              MEMORY[0x266714FB0](v326, -1, -1);
              MEMORY[0x266714FB0](v325, -1, -1);

              v563(v322, v564);
              (*(v567 + 8))(v576, v566);
            }

            else
            {

              v563(v322, v564);
              (*(v567 + 8))(v320, v566);
            }

            *v565 = v321;
            v207 = MEMORY[0x277D65280];
          }

          else
          {
            v359 = sub_2619BD054(v576, v554);
            v360 = v511;
            sub_2619D97E8();

            v361 = sub_2619D9848();
            v362 = sub_2619D9AC8();

            if (os_log_type_enabled(v361, v362))
            {
              v363 = swift_slowAlloc();
              v364 = swift_slowAlloc();
              *&v581 = v364;
              *v363 = 136315394;
              *&v578 = v529;
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEC90D0, &qword_2619DA830);
              v365 = sub_2619D9958();
              v367 = sub_2619C2E88(v365, v366, &v581);

              *(v363 + 4) = v367;
              *(v363 + 12) = 2080;
              v368 = MEMORY[0x266714730](v359, v575);
              v370 = sub_2619C2E88(v368, v369, &v581);

              *(v363 + 14) = v370;
              _os_log_impl(&dword_2619AE000, v361, v362, "Encoded PropertyValueType as an array: %s -> %s", v363, 0x16u);
              swift_arrayDestroy();
              MEMORY[0x266714FB0](v364, -1, -1);
              MEMORY[0x266714FB0](v363, -1, -1);

              v563(v360, v564);
              (*(v567 + 8))(v576, v566);
            }

            else
            {

              v563(v360, v564);
              (*(v567 + 8))(v320, v566);
            }

            *v565 = v359;
            v207 = MEMORY[0x277D652C0];
          }

          goto LABEL_33;
        }

        v304 = v516;
        sub_2619BC2F4(v576, v246, MEMORY[0x277D84F90]);
        v305 = v533;
        if ((sub_2619D9538() & 1) == 0)
        {
          v401 = v509;
          sub_2619D97E8();
          v402 = v530;
          v403 = *(v530 + 16);
          v404 = v506;
          v403(v506, v304, v305);
          v405 = sub_2619D9848();
          v406 = sub_2619D9AC8();
          if (os_log_type_enabled(v405, v406))
          {
            v407 = swift_slowAlloc();
            LODWORD(v572) = v406;
            v408 = v407;
            v573 = swift_slowAlloc();
            *&v581 = v573;
            *v408 = 136315394;
            *&v578 = v529;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEC90D0, &qword_2619DA830);
            v409 = sub_2619D9958();
            v411 = sub_2619C2E88(v409, v410, &v581);

            *(v408 + 4) = v411;
            *(v408 + 12) = 2080;
            v403(v520, v404, v305);
            v412 = sub_2619D9958();
            v414 = v413;
            (*(v402 + 8))(v404, v305);
            v415 = sub_2619C2E88(v412, v414, &v581);
            v304 = v516;

            *(v408 + 14) = v415;
            _os_log_impl(&dword_2619AE000, v405, v572, "Encoded PropertyValueType as a nested type: %s -> %s", v408, 0x16u);
            v416 = v573;
            swift_arrayDestroy();
            MEMORY[0x266714FB0](v416, -1, -1);
            MEMORY[0x266714FB0](v408, -1, -1);

            v417 = v529;
            v563(v509, v564);
          }

          else
          {

            (*(v402 + 8))(v404, v305);
            v563(v401, v564);
            v417 = v529;
          }

          v497 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEC90E0, &qword_2619DA838) + 48);
          *&v581 = v417;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEC90D0, &qword_2619DA830);
          v498 = sub_2619D9958();
          v500 = v499;
          (*(v567 + 8))(v576, v566);
          v501 = v565;
          *v565 = v498;
          v501[1] = v500;
          (*(v402 + 32))(v501 + v497, v304, v305);
          v502 = *MEMORY[0x277D652D8];
          v209 = *(v161 + 104);
          return v209();
        }

        v306 = v508;
        sub_2619D97E8();
        v307 = v567;
        v308 = v505;
        v309 = v566;
        (*(v567 + 16))(v505, v576, v566);
        v310 = sub_2619D9848();
        v311 = sub_2619D9AD8();
        if (os_log_type_enabled(v310, v311))
        {
          v312 = v308;
          v313 = swift_slowAlloc();
          v314 = swift_slowAlloc();
          *&v581 = v314;
          *v313 = 136315138;
          v315 = sub_2619D9D18();
          v317 = v316;
          (*(v307 + 8))(v312, v309);
          v318 = sub_2619C2E88(v315, v317, &v581);

          *(v313 + 4) = v318;
          _os_log_impl(&dword_2619AE000, v310, v311, "Nested PropertyValueType has no properties %s", v313, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v314);
          MEMORY[0x266714FB0](v314, -1, -1);
          MEMORY[0x266714FB0](v313, -1, -1);

          v563(v508, v564);
          (*(v530 + 8))(v516, v533);
        }

        else
        {

          (*(v307 + 8))(v308, v309);
          v563(v306, v564);
          (*(v530 + 8))(v304, v533);
        }

        v160 = v560;
      }
    }

    sub_2619C4B1C(v160, &v584);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEC90A8, &qword_2619DA808);
    if (swift_dynamicCast())
    {
      sub_2619C45F4(&v578, &v581);
      v460 = v522;
      sub_2619D97E8();
      sub_2619C4BC0(&v581, &v578);
      v461 = sub_2619D9848();
      v462 = sub_2619D9AC8();
      if (os_log_type_enabled(v461, v462))
      {
        v463 = swift_slowAlloc();
        v464 = swift_slowAlloc();
        *&v584 = v464;
        *v463 = 136315138;
        __swift_project_boxed_opaque_existential_1Tm(&v578, *(&v579 + 1));
        v465 = sub_2619D9D18();
        v467 = v466;
        __swift_destroy_boxed_opaque_existential_0Tm(&v578);
        v468 = sub_2619C2E88(v465, v467, &v584);

        *(v463 + 4) = v468;
        _os_log_impl(&dword_2619AE000, v461, v462, "Encoded PropertyValueType as a string (CustomStringConvertible): %s", v463, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v464);
        MEMORY[0x266714FB0](v464, -1, -1);
        MEMORY[0x266714FB0](v463, -1, -1);

        v563(v460, v564);
      }

      else
      {

        v563(v460, v564);
        __swift_destroy_boxed_opaque_existential_0Tm(&v578);
      }

      __swift_project_boxed_opaque_existential_1Tm(&v581, *(&v582 + 1));
      v478 = sub_2619D9D18();
      v480 = v479;
      (*(v567 + 8))(v576, v566);
      v481 = v565;
      *v565 = v478;
      v481[1] = v480;
      v482 = MEMORY[0x277D65288];
    }

    else
    {
      *&v580 = 0;
      v578 = 0u;
      v579 = 0u;
      sub_2619B62D0(&v578, &qword_27FEC90B0, &qword_2619DA810);
      sub_2619C4B1C(v160, &v584);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEC90B8, &qword_2619DA818);
      if (!swift_dynamicCast())
      {
        *&v580 = 0;
        v578 = 0u;
        v579 = 0u;
        sub_2619B62D0(&v578, &qword_27FEC90C0, &qword_2619DA820);
        sub_2619C4B1C(v160, &v581);
        v483 = sub_2619D9958();
        v485 = v484;
        v486 = v515;
        sub_2619D97E8();

        v487 = sub_2619D9848();
        v488 = sub_2619D9AC8();

        if (os_log_type_enabled(v487, v488))
        {
          v489 = swift_slowAlloc();
          v490 = swift_slowAlloc();
          *&v581 = v490;
          *v489 = 136315138;
          *(v489 + 4) = sub_2619C2E88(v483, v485, &v581);
          _os_log_impl(&dword_2619AE000, v487, v488, "Encoded PropertyValueType as a string (Unknown): %s", v489, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v490);
          MEMORY[0x266714FB0](v490, -1, -1);
          MEMORY[0x266714FB0](v489, -1, -1);
        }

        v563(v486, v564);
        (*(v567 + 8))(v576, v566);
        v491 = v565;
        *v565 = v483;
        v491[1] = v485;
        v207 = MEMORY[0x277D652E0];
        goto LABEL_33;
      }

      sub_2619C45F4(&v578, &v581);
      v469 = v514;
      sub_2619D97E8();
      sub_2619C4BC0(&v581, &v578);
      v470 = sub_2619D9848();
      v471 = sub_2619D9AC8();
      if (os_log_type_enabled(v470, v471))
      {
        v472 = swift_slowAlloc();
        v473 = swift_slowAlloc();
        v586 = v473;
        *v472 = 136315138;
        sub_2619C4BC0(&v578, &v584);
        v474 = sub_2619D9958();
        v476 = v475;
        __swift_destroy_boxed_opaque_existential_0Tm(&v578);
        v477 = sub_2619C2E88(v474, v476, &v586);

        *(v472 + 4) = v477;
        _os_log_impl(&dword_2619AE000, v470, v471, "Encoded PropertyValueType as a string (CustomDebugStringConvertible): %s", v472, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v473);
        MEMORY[0x266714FB0](v473, -1, -1);
        MEMORY[0x266714FB0](v472, -1, -1);
      }

      else
      {

        __swift_destroy_boxed_opaque_existential_0Tm(&v578);
      }

      v563(v469, v564);
      __swift_project_boxed_opaque_existential_1Tm(&v581, *(&v582 + 1));
      v492 = sub_2619D9D48();
      v494 = v493;
      (*(v567 + 8))(v576, v566);
      v495 = v565;
      *v565 = v492;
      v495[1] = v494;
      v482 = MEMORY[0x277D65298];
    }

    v496 = *v482;
    (*(v161 + 104))();
    return __swift_destroy_boxed_opaque_existential_0Tm(&v581);
  }

LABEL_67:
  sub_2619D9558();
  sub_2619D9558();
  sub_2619D9558();
  v264 = sub_2619D9E18();
  v265 = v264[2];
  v266 = v264[3];
  v268 = v264[4];
  v267 = v264[5];
  swift_getObjectType();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v269 = sub_2619D9BA8();
  swift_getObjectType();
  result = sub_2619D9BA8();
  if (v269 != result)
  {
LABEL_138:
    __break(1u);
LABEL_139:
    __break(1u);
    return result;
  }

  v270 = sub_2619D9BB8();
  swift_unknownObjectRelease();
  v271 = v561;
  v272 = v536;
  if (v270)
  {
    swift_unknownObjectRelease();

    v273 = v560;
    sub_2619C4B1C(v560, &v581);
    v274 = sub_2619D9958();
    v276 = v275;
    sub_2619C4B1C(v273, &v584);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEC9100, &qword_2619DA850);
    if ((swift_dynamicCast() & 1) == 0)
    {
      *&v580 = 0;
      v578 = 0u;
      v579 = 0u;
      sub_2619B62D0(&v578, &qword_27FEC9108, &qword_2619DA858);
      v279 = v532;
LABEL_96:
      sub_2619D97E8();

      v347 = sub_2619D9848();
      v348 = sub_2619D9AC8();

      if (os_log_type_enabled(v347, v348))
      {
        v349 = swift_slowAlloc();
        v350 = swift_slowAlloc();
        *&v581 = v350;
        *v349 = 136315394;
        *&v578 = v529;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEC90D0, &qword_2619DA830);
        v351 = sub_2619D9958();
        v353 = sub_2619C2E88(v351, v352, &v581);

        *(v349 + 4) = v353;
        *(v349 + 12) = 2080;
        *(v349 + 14) = sub_2619C2E88(v274, v276, &v581);
        _os_log_impl(&dword_2619AE000, v347, v348, "Encoded PropertyValueType as an enumeration: %s -> %s", v349, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x266714FB0](v350, -1, -1);
        MEMORY[0x266714FB0](v349, -1, -1);

        v354 = v532;
      }

      else
      {

        v354 = v279;
      }

      v563(v354, v564);
      v355 = v538[1];
      v356 = v539;
      v355(v541, v539);
      v355(v542, v356);
      v355(v543, v356);
      (*(v567 + 8))(v576, v566);
      v357 = v565;
      *v565 = v274;
      v357[1] = v276;
      v358 = *MEMORY[0x277D65290];
      return (*(v271 + 104))();
    }

    sub_2619C45F4(&v578, &v581);
    *(&v579 + 1) = MEMORY[0x277D837D0];
    *&v578 = v274;
    *(&v578 + 1) = v276;

    v277 = v521;
    sub_2619D9578();
    v278 = v574;
    if ((v574)(v277, 1, v575) == 1)
    {
      v279 = v532;
LABEL_95:
      sub_2619B62D0(v277, &qword_27FEC9070, &qword_2619DA7E0);
      __swift_destroy_boxed_opaque_existential_0Tm(&v581);
      goto LABEL_96;
    }

    v573 = v274;
    v345 = *(v271 + 32);
    v346 = v575;
    v345(v524, v277, v575);
    __swift_project_boxed_opaque_existential_1Tm(&v581, *(&v582 + 1));
    *(&v579 + 1) = swift_getAssociatedTypeWitness();
    __swift_allocate_boxed_opaque_existential_0(&v578);
    sub_2619D99F8();
    v277 = v513;
    sub_2619D9578();
    if (v278(v277, 1, v346) == 1)
    {
      v271 = v561;
      (*(v561 + 8))(v524, v575);
      v279 = v532;
      v274 = v573;
      goto LABEL_95;
    }

    v371 = v575;
    v345(v518, v277, v575);
    v372 = sub_2619D9778();
    sub_2619C4CDC(&qword_27FEC90F8, MEMORY[0x277D65320]);
    sub_2619D9548();
    v373 = v538[2];
    v374 = v536;
    v375 = v531;
    v376 = v539;
    v373(v531, v543, v539);
    v377 = *(v561 + 16);
    v377(v374, v524, v371);
    v378 = *(v372 + 48);
    v379 = *(v372 + 52);
    swift_allocObject();
    v380 = v375;
    v574 = sub_2619D9758();
    v381 = v533;
    sub_2619D9528();
    v373(v380, v542, v376);
    v377(v374, v518, v575);
    __swift_project_boxed_opaque_existential_1Tm(&v581, *(&v582 + 1));
    *(&v579 + 1) = swift_getAssociatedTypeWitness();
    __swift_allocate_boxed_opaque_existential_0(&v578);
    v382 = v519;
    sub_2619D99F8();
    sub_2619C4DB8(&v578);
    __swift_destroy_boxed_opaque_existential_0Tm(&v578);
    v383 = *(v372 + 48);
    v384 = *(v372 + 52);
    swift_allocObject();
    v385 = sub_2619D9758();
    sub_2619D9528();
    v386 = v510;
    sub_2619D97E8();
    v387 = sub_2619D9848();
    v388 = sub_2619D9AC8();
    if (os_log_type_enabled(v387, v388))
    {
      v389 = swift_slowAlloc();
      v390 = swift_slowAlloc();
      *&v578 = v390;
      *v389 = 136315394;
      v391 = v529;
      *&v584 = v529;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEC90D0, &qword_2619DA830);
      v392 = sub_2619D9958();
      v573 = v385;
      v394 = sub_2619C2E88(v392, v393, &v578);

      *(v389 + 4) = v394;
      *(v389 + 12) = 2080;
      swift_beginAccess();
      v395 = v530;
      (*(v530 + 16))(v520, v382, v381);
      v396 = sub_2619D9958();
      v398 = sub_2619C2E88(v396, v397, &v578);

      *(v389 + 14) = v398;
      _os_log_impl(&dword_2619AE000, v387, v388, "Encoded PropertyValueType as an enumeration with raw value: %s -> %s", v389, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x266714FB0](v390, -1, -1);
      MEMORY[0x266714FB0](v389, -1, -1);

      v563(v510, v564);
    }

    else
    {

      v563(v386, v564);
      v395 = v530;
      v391 = v529;
    }

    v418 = v381;
    v573 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEC90E0, &qword_2619DA838) + 48);
    *&v578 = v391;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEC90D0, &qword_2619DA830);
    v419 = sub_2619D9958();
    v421 = v420;

    v422 = v561;
    v423 = *(v561 + 8);
    v424 = v575;
    v423(v518, v575);
    v423(v524, v424);
    v425 = v538[1];
    v426 = v539;
    v425(v541, v539);
    v425(v542, v426);
    v425(v543, v426);
    (*(v567 + 8))(v576, v566);
    v427 = v565;
    *v565 = v419;
    v427[1] = v421;
    swift_beginAccess();
    (*(v395 + 16))(v427 + v573, v382, v418);
    (*(v422 + 104))(v427, *MEMORY[0x277D65278], v424);
    (*(v395 + 8))(v382, v418);
    return __swift_destroy_boxed_opaque_existential_0Tm(&v581);
  }

  sub_2619D9C78();
  swift_unknownObjectRelease();

  sub_2619C4D24(&v581, &v578, &qword_27FEC90E8, &qword_2619DA840);

  sub_2619D9DD8();
  sub_2619C4D24(&v581, &v578, &qword_27FEC90E8, &qword_2619DA840);
  v280 = *(&v578 + 1);
  v281 = v531;
  if (*(&v578 + 1))
  {
    v282 = v578;
  }

  else
  {
    *&v584 = sub_2619D9E18();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEC90F0, &qword_2619DA848);
    v282 = sub_2619D9958();
    v280 = v284;
  }

  v285 = v534;
  v286 = v528;
  __swift_destroy_boxed_opaque_existential_0Tm(&v579);
  if (v554 >= 1)
  {
    v573 = v554 - 1;
    v287 = sub_2619D9778();
    sub_2619C4CDC(&qword_27FEC90F8, MEMORY[0x277D65320]);
    sub_2619D9548();
    *(&v579 + 1) = MEMORY[0x277D837D0];
    *&v578 = v282;
    *(&v578 + 1) = v280;

    sub_2619D9578();
    if ((v574)(v286, 1, v575) != 1)
    {

      v333 = v561;
      v334 = v523;
      v335 = v286;
      v336 = v575;
      v571 = *(v561 + 32);
      (v571)(v523, v335, v575);
      v569 = v538[2];
      (v569)(v281, v543, v539);
      v337 = *(v333 + 16);
      v337(v272, v334, v336);
      v338 = *(v287 + 48);
      v339 = *(v287 + 52);
      swift_allocObject();
      v572 = sub_2619D9758();
      v340 = v533;
      sub_2619D9528();
      v341 = v537;
      sub_2619D9E18();
      v342 = sub_2619D9C68();

      if (v342 < 1)
      {
        v399 = v571;
        sub_2619C4D24(&v581, &v578, &qword_27FEC90E8, &qword_2619DA840);

        v400 = v507;
        sub_2619D9578();
        if ((v574)(v400, 1, v575) == 1)
        {
          sub_2619B62D0(v400, &qword_27FEC9070, &qword_2619DA7E0);
          v344 = v340;
        }

        else
        {
          v428 = v504;
          v429 = v575;
          (v399)(v504, v400, v575);
          (v569)(v531, v541, v539);
          v337(v536, v428, v429);
          *(&v579 + 1) = v429;
          v430 = __swift_allocate_boxed_opaque_existential_0(&v578);
          v337(v430, v428, v429);
          sub_2619C4DB8(&v578);
          __swift_destroy_boxed_opaque_existential_0Tm(&v578);
          v431 = *(v287 + 48);
          v432 = *(v287 + 52);
          swift_allocObject();
          sub_2619D9758();
          v344 = v340;
          sub_2619D9528();

          (*(v561 + 8))(v428, v429);
        }
      }

      else
      {
        v343 = v520;
        sub_2619BC2F4(v341, v573, MEMORY[0x277D84F90]);
        sub_2619D9518();
        (*(v530 + 8))(v343, v340);
        v344 = v340;
      }

      v433 = v517;
      sub_2619D97E8();
      v434 = sub_2619D9848();
      v435 = sub_2619D9AC8();
      if (os_log_type_enabled(v434, v435))
      {
        v436 = swift_slowAlloc();
        v437 = swift_slowAlloc();
        *&v578 = v437;
        *v436 = 136315394;
        v438 = v529;
        *&v584 = v529;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEC90D0, &qword_2619DA830);
        v439 = sub_2619D9958();
        v441 = sub_2619C2E88(v439, v440, &v578);

        *(v436 + 4) = v441;
        *(v436 + 12) = 2080;
        v442 = v534;
        swift_beginAccess();
        (*(v530 + 16))(v520, v442, v344);
        v443 = sub_2619D9958();
        v445 = sub_2619C2E88(v443, v444, &v578);

        *(v436 + 14) = v445;
        _os_log_impl(&dword_2619AE000, v434, v435, "Encoded PropertyValueType as an enumeration with associated values: %s -> %s", v436, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x266714FB0](v437, -1, -1);
        MEMORY[0x266714FB0](v436, -1, -1);

        v563(v433, v564);
      }

      else
      {

        v563(v433, v564);
        v438 = v529;
      }

      v446 = v537;
      v574 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEC90E0, &qword_2619DA838) + 48);
      *&v578 = v438;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEC90D0, &qword_2619DA830);
      v447 = sub_2619D9958();
      v449 = v448;

      v450 = v561;
      v451 = v575;
      (*(v561 + 8))(v523, v575);
      v452 = *(v567 + 8);
      v453 = v566;
      v452(v446, v566);
      sub_2619B62D0(&v581, &qword_27FEC90E8, &qword_2619DA840);
      v454 = v538[1];
      v455 = v539;
      v454(v541, v539);
      v454(v542, v455);
      v454(v543, v455);
      v452(v576, v453);
      v456 = v565;
      *v565 = v447;
      v456[1] = v449;
      v457 = v534;
      swift_beginAccess();
      v458 = v530;
      v459 = v533;
      (*(v530 + 16))(v456 + v574, v457, v533);
      (*(v450 + 104))(v456, *MEMORY[0x277D652B8], v451);
      return (*(v458 + 8))(v457, v459);
    }

    sub_2619B62D0(v286, &qword_27FEC9070, &qword_2619DA7E0);
    (*(v530 + 8))(v285, v533);
  }

  sub_2619C4D24(&v581, &v578, &qword_27FEC90E8, &qword_2619DA840);

  v288 = sub_2619D9958();
  v290 = v289;
  *&v578 = v282;
  *(&v578 + 1) = v280;
  MEMORY[0x2667146C0](40, 0xE100000000000000);
  MEMORY[0x2667146C0](v288, v290);

  MEMORY[0x2667146C0](41, 0xE100000000000000);
  v291 = v578;
  v292 = v526;
  sub_2619D97E8();

  v293 = sub_2619D9848();
  v294 = sub_2619D9AC8();

  if (os_log_type_enabled(v293, v294))
  {
    v295 = swift_slowAlloc();
    v296 = swift_slowAlloc();
    *&v578 = v296;
    *v295 = 136315138;

    v297 = sub_2619C2E88(v291, *(&v291 + 1), &v578);

    *(v295 + 4) = v297;
    _os_log_impl(&dword_2619AE000, v293, v294, "Encoded PropertyValueType as an simplified enumeration: %s", v295, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v296);
    MEMORY[0x266714FB0](v296, -1, -1);
    MEMORY[0x266714FB0](v295, -1, -1);
  }

  v563(v292, v564);
  v298 = *(v567 + 8);
  v299 = v566;
  v298(v537, v566);
  sub_2619B62D0(&v581, &qword_27FEC90E8, &qword_2619DA840);
  v300 = v538[1];
  v301 = v539;
  v300(v541, v539);
  v300(v542, v301);
  v300(v543, v301);
  v298(v576, v299);
  *v565 = v291;
  v302 = *MEMORY[0x277D65290];
  return (*(v561 + 104))();
}

uint64_t sub_2619C2B8C()
{
  v1 = OBJC_IVAR____TtC20RealityKitInspection32SceneDebugRepresentationProvider_hierarchy;
  v2 = sub_2619D9748();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t sub_2619C2BEC()
{
  v1 = OBJC_IVAR____TtC20RealityKitInspection32SceneDebugRepresentationProvider_hierarchy;
  v2 = sub_2619D9748();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v3, v4);
}

size_t sub_2619C2CB0(size_t result, int64_t a2, char a3, void *a4)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEC9138, &qword_2619DA870);
  v10 = *(sub_2619D95A8() - 8);
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
  v15 = *(sub_2619D95A8() - 8);
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

uint64_t sub_2619C2E88(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_2619C2F54(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_2619C4B1C(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0Tm(v11);
  return v7;
}

unint64_t sub_2619C2F54(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_2619C3060(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_2619D9BE8();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

uint64_t sub_2619C3060(uint64_t a1, unint64_t a2)
{
  v4 = sub_2619C30AC(a1, a2);
  sub_2619C31DC(&unk_28741E4A8);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_2619C30AC(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = sub_2619C32C8(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_2619D9BE8();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_2619D99B8();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_2619C32C8(v10, 0);
        result = sub_2619D9B98();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_2619C31DC(uint64_t result)
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

  result = sub_2619C333C(result, v12, 1, v3);
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

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

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

void *sub_2619C32C8(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEC9148, &unk_2619DA880);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_2619C333C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEC9148, &unk_2619DA880);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

uint64_t sub_2619C3430(uint64_t a1, unint64_t a2)
{
  sub_2619C454C(a1, a2);
  v4 = *(sub_2619C4224(a1, a2) + 16);
  v5 = sub_2619D9988();

  return v5;
}

uint64_t sub_2619C349C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2619D9988();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_2619C34D8(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  sub_2619D9598();
  sub_2619C4CDC(&qword_27FEC90D8, MEMORY[0x277D652A0]);
  v5 = sub_2619D9918();

  return sub_2619C3D10(a1, v5);
}

uint64_t sub_2619C3570(uint64_t a1, int a2)
{
  v3 = v2;
  v57 = sub_2619D95A8();
  v6 = *(v57 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v57);
  v56 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2619D9598();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v58 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v14 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEC9120, &qword_2619DA860);
  v52 = a2;
  result = sub_2619D9CC8();
  v16 = result;
  if (*(v13 + 16))
  {
    v17 = 0;
    v18 = v10;
    v19 = (v13 + 64);
    v20 = 1 << *(v13 + 32);
    if (v20 < 64)
    {
      v21 = ~(-1 << v20);
    }

    else
    {
      v21 = -1;
    }

    v22 = v21 & *(v13 + 64);
    v23 = (v20 + 63) >> 6;
    v48 = (v18 + 16);
    v49 = v18;
    v46 = v3;
    v47 = v6 + 16;
    v50 = v13;
    v51 = v6;
    v53 = (v6 + 32);
    v54 = (v18 + 32);
    v24 = result + 64;
    v25 = v18;
    while (v22)
    {
      v27 = __clz(__rbit64(v22));
      v22 &= v22 - 1;
LABEL_17:
      v30 = v27 | (v17 << 6);
      v31 = *(v13 + 48);
      v55 = *(v25 + 72);
      v32 = v31 + v55 * v30;
      if (v52)
      {
        (*v54)(v58, v32, v9);
        v33 = *(v13 + 56);
        v34 = *(v51 + 72);
        (*(v51 + 32))(v56, v33 + v34 * v30, v57);
      }

      else
      {
        (*v48)(v58, v32, v9);
        v35 = *(v13 + 56);
        v34 = *(v51 + 72);
        (*(v51 + 16))(v56, v35 + v34 * v30, v57);
      }

      v36 = *(v16 + 40);
      sub_2619C4CDC(&qword_27FEC90D8, MEMORY[0x277D652A0]);
      result = sub_2619D9918();
      v37 = -1 << *(v16 + 32);
      v38 = result & ~v37;
      v39 = v38 >> 6;
      if (((-1 << v38) & ~*(v24 + 8 * (v38 >> 6))) == 0)
      {
        v40 = 0;
        v41 = (63 - v37) >> 6;
        while (++v39 != v41 || (v40 & 1) == 0)
        {
          v42 = v39 == v41;
          if (v39 == v41)
          {
            v39 = 0;
          }

          v40 |= v42;
          v43 = *(v24 + 8 * v39);
          if (v43 != -1)
          {
            v26 = __clz(__rbit64(~v43)) + (v39 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v26 = __clz(__rbit64((-1 << v38) & ~*(v24 + 8 * (v38 >> 6)))) | v38 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v24 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
      (*v54)((*(v16 + 48) + v55 * v26), v58, v9);
      result = (*v53)(*(v16 + 56) + v34 * v26, v56, v57);
      ++*(v16 + 16);
      v25 = v49;
      v13 = v50;
    }

    v28 = v17;
    while (1)
    {
      v17 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v17 >= v23)
      {
        break;
      }

      v29 = v19[v17];
      ++v28;
      if (v29)
      {
        v27 = __clz(__rbit64(v29));
        v22 = (v29 - 1) & v29;
        goto LABEL_17;
      }
    }

    if ((v52 & 1) == 0)
    {

      v3 = v46;
      goto LABEL_36;
    }

    v44 = 1 << *(v13 + 32);
    v3 = v46;
    if (v44 >= 64)
    {
      bzero(v19, ((v44 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v19 = -1 << v44;
    }

    *(v13 + 16) = 0;
  }

LABEL_36:
  *v3 = v16;
  return result;
}

uint64_t sub_2619C3A18(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_2619D9598();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  v15 = sub_2619C34D8(a2);
  v16 = *(v13 + 16);
  v17 = (v14 & 1) == 0;
  v18 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_15;
  }

  v19 = v14;
  v20 = *(v13 + 24);
  if (v20 < v18 || (a3 & 1) == 0)
  {
    if (v20 >= v18 && (a3 & 1) == 0)
    {
      sub_2619C3ED0();
      goto LABEL_7;
    }

    sub_2619C3570(v18, a3 & 1);
    v29 = *v4;
    v30 = sub_2619C34D8(a2);
    if ((v19 & 1) == (v31 & 1))
    {
      v15 = v30;
      v21 = *v4;
      if (v19)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v12, a2, v8);
      return sub_2619C3C1C(v15, v12, a1, v21);
    }

LABEL_15:
    result = sub_2619D9D78();
    __break(1u);
    return result;
  }

LABEL_7:
  v21 = *v4;
  if ((v19 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v22 = v21[7];
  v23 = sub_2619D95A8();
  v24 = *(v23 - 8);
  v25 = *(v24 + 40);
  v26 = v23;
  v27 = v22 + *(v24 + 72) * v15;

  return v25(v27, a1, v26);
}

uint64_t sub_2619C3C1C(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_2619D9598();
  (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  v10 = a4[7];
  v11 = sub_2619D95A8();
  result = (*(*(v11 - 8) + 32))(v10 + *(*(v11 - 8) + 72) * a1, a3, v11);
  v13 = a4[2];
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (v14)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v15;
  }

  return result;
}

unint64_t sub_2619C3D10(uint64_t a1, uint64_t a2)
{
  v20 = a1;
  v4 = sub_2619D9598();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = v2;
  v9 = -1 << *(v2 + 32);
  v10 = a2 & ~v9;
  v19 = v2 + 64;
  if ((*(v2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v14 = *(v5 + 16);
    v13 = v5 + 16;
    v12 = v14;
    v15 = *(v13 + 56);
    do
    {
      v12(v8, *(v21 + 48) + v15 * v10, v4);
      sub_2619C4CDC(&qword_27FEC9128, MEMORY[0x277D652A0]);
      v16 = sub_2619D9938();
      (*(v13 - 8))(v8, v4);
      if (v16)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
    }

    while (((*(v19 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  return v10;
}

char *sub_2619C3ED0()
{
  v1 = v0;
  v43 = sub_2619D95A8();
  v46 = *(v43 - 8);
  v2 = *(v46 + 64);
  MEMORY[0x28223BE20](v43);
  v42 = &v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_2619D9598();
  v45 = *(v41 - 8);
  v4 = *(v45 + 64);
  MEMORY[0x28223BE20](v41);
  v40 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEC9120, &qword_2619DA860);
  v6 = *v0;
  v7 = sub_2619D9CB8();
  v8 = v7;
  if (*(v6 + 16))
  {
    result = (v7 + 64);
    v10 = (v6 + 64);
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    v32 = v1;
    v33 = v6 + 64;
    if (v8 != v6 || result >= &v10[8 * v11])
    {
      result = memmove(result, v10, 8 * v11);
    }

    v12 = 0;
    v13 = *(v6 + 16);
    v44 = v8;
    *(v8 + 16) = v13;
    v14 = 1 << *(v6 + 32);
    v15 = -1;
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    v16 = v15 & *(v6 + 64);
    v17 = (v14 + 63) >> 6;
    v37 = v45 + 16;
    v38 = v17;
    v35 = v45 + 32;
    v36 = v46 + 16;
    v34 = v46 + 32;
    v39 = v6;
    v19 = v40;
    v18 = v41;
    if (v16)
    {
      do
      {
        v20 = __clz(__rbit64(v16));
        v47 = (v16 - 1) & v16;
LABEL_14:
        v23 = v20 | (v12 << 6);
        v24 = v45;
        v25 = *(v45 + 72) * v23;
        (*(v45 + 16))(v19, *(v6 + 48) + v25, v18);
        v26 = v46;
        v27 = *(v46 + 72) * v23;
        v28 = v42;
        v29 = v43;
        (*(v46 + 16))(v42, *(v6 + 56) + v27, v43);
        v30 = v44;
        (*(v24 + 32))(*(v44 + 48) + v25, v19, v18);
        v31 = *(v30 + 56);
        v6 = v39;
        result = (*(v26 + 32))(v31 + v27, v28, v29);
        v17 = v38;
        v16 = v47;
      }

      while (v47);
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v12 >= v17)
      {

        v1 = v32;
        v8 = v44;
        goto LABEL_18;
      }

      v22 = *(v33 + 8 * v12);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v47 = (v22 - 1) & v22;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v8;
  }

  return result;
}

uint64_t sub_2619C4224(uint64_t a1, unint64_t a2)
{
  v4 = sub_2619D8FE8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  result = MEMORY[0x28223BE20](v4);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v10 != 2)
    {
LABEL_12:
      sub_2619C45A0(a1, a2);
      return MEMORY[0x277D84F90];
    }

    v13 = *(a1 + 16);
    v12 = *(a1 + 24);
    v11 = v12 - v13;
    if (!__OFSUB__(v12, v13))
    {
      if (v11)
      {
        goto LABEL_8;
      }

      goto LABEL_12;
    }

    __break(1u);
LABEL_15:
    __break(1u);
  }

  else
  {
    if (v10)
    {
      goto LABEL_10;
    }

    v11 = BYTE6(a2);
    if (!BYTE6(a2))
    {
      goto LABEL_12;
    }

LABEL_8:
    while (1)
    {
      v14 = sub_2619C32C8(v11, 0);
      v15 = sub_2619D8FC8();
      sub_2619C45A0(a1, a2);
      v16 = *(v5 + 8);
      v5 += 8;
      v16(v9, v4);
      result = v14;
      if (v15 == v11)
      {
        break;
      }

      __break(1u);
LABEL_10:
      v17 = HIDWORD(a1) - a1;
      if (__OFSUB__(HIDWORD(a1), a1))
      {
        goto LABEL_15;
      }

      v11 = v17;
      if (!v17)
      {
        goto LABEL_12;
      }
    }
  }

  return result;
}