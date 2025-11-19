void sub_1A426225C()
{
  v1 = *v0;
  if ((*(*v1 + 752))())
  {
    (*(*v1 + 896))();
  }

  sub_1A3D86AA0();

  sub_1A524D9A4();
}

void sub_1A426232C()
{
  v1 = v0;
  v2 = *(v0 + 64);
  v3 = *(v1 + 72);
  type metadata accessor for ParallaxAssetView();
  __dst[0] = v2;
  __dst[1] = v3;
  sub_1A42641A0(0, &qword_1EB136358, sub_1A426006C, MEMORY[0x1E6981790]);
  v4 = sub_1A524B6A4();
  if (__src[0])
  {
  }

  else
  {
    (*(**(v1 + 32) + 544))(__src, v4);
    memcpy(__dst, __src, 0x123uLL);
    if (get_enum_tag_for_layout_string_xRi_zRi0_zlyxIsegr_Sg_0(__dst) != 1)
    {
      memcpy(v6, __src, 0x123uLL);
      sub_1A4069344(v7);
      memcpy(v5, v7, sizeof(v5));
      sub_1A4262490(v6);
      memcpy(v8, v6, 0x123uLL);
      sub_1A42644DC(v8, &qword_1EB130E60, &type metadata for ParallaxAssetCompositeImage);
    }
  }
}

uint64_t sub_1A4262490(uint64_t a1)
{
  MEMORY[0x1EEE9AC00](a1);
  v3 = v2;
  v5 = v4;
  memcpy(v233, v6, sizeof(v233));
  memcpy(v234, v5, sizeof(v234));
  v7 = v1[9];
  v229 = v1[8];
  v230 = v7;
  v231 = v1[10];
  v8 = v1[5];
  v225 = v1[4];
  v226 = v8;
  v9 = v1[7];
  v227 = v1[6];
  v228 = v9;
  v10 = v1[1];
  v221 = *v1;
  v222 = v10;
  v11 = v1[3];
  v223 = v1[2];
  v232 = *(v1 + 22);
  v224 = v11;
  v220[0] = v223;
  sub_1A42641A0(0, &qword_1EB136358, sub_1A426006C, MEMORY[0x1E6981790]);
  sub_1A524B6A4();
  v12 = v208[0];
  if (v208[0])
  {
  }

  v218 = v221;
  v219 = v222;
  v214 = v229;
  v215 = v230;
  v216 = v231;
  v210 = v225;
  v211 = v226;
  v212 = v227;
  v213 = v228;
  v13 = v223;
  v217 = v232;
  v209 = v224;
  memcpy(v220, v233, 0x123uLL);
  if (get_enum_tag_for_layout_string_xRi_zRi0_zlyxIsegr_Sg_0(v220) == 1)
  {
    v14 = 0;
  }

  else
  {
    v14 = *(&v220[0] + 1);
    v15 = *(&v220[0] + 1);
  }

  v16 = *(v3 - 8);
  v17 = *(v16 + 16);
  v17(v208, &v221, v3);
  *v208 = v13;
  v194[0] = v14;
  sub_1A524B6B4();
  v206[0] = v218;
  v206[1] = v219;
  v206[2] = v13;
  v206[8] = v214;
  v206[9] = v215;
  v206[10] = v216;
  v207 = v217;
  v206[4] = v210;
  v206[5] = v211;
  v206[6] = v212;
  v206[7] = v213;
  v206[3] = v209;
  v110 = *(v16 + 8);
  v110(v206, v3);
  v203 = v221;
  v204 = v222;
  v205 = v223;
  v18 = v224;
  v199 = v229;
  v200 = v230;
  v201 = v231;
  v202 = v232;
  v195 = v225;
  v196 = v226;
  v197 = v227;
  v198 = v228;
  memcpy(v208, v233, 0x123uLL);
  if (get_enum_tag_for_layout_string_xRi_zRi0_zlyxIsegr_Sg_0(v208) == 1)
  {
    v19 = 0;
  }

  else
  {
    v19 = v208[2];
    v20 = v208[2];
  }

  v17(v194, &v221, v3);
  *v194 = v18;
  v180[0] = v19;
  sub_1A524B6B4();
  v192[0] = v203;
  v192[1] = v204;
  v192[2] = v205;
  v192[3] = v18;
  v192[8] = v199;
  v192[9] = v200;
  v192[10] = v201;
  v193 = v202;
  v192[4] = v195;
  v192[5] = v196;
  v192[6] = v197;
  v192[7] = v198;
  v110(v192, v3);
  v188 = v221;
  v189 = v222;
  v190 = v223;
  v191 = v224;
  v21 = v225;
  v184 = v229;
  v185 = v230;
  v186 = v231;
  v187 = v232;
  v181 = v226;
  v182 = v227;
  v183 = v228;
  memcpy(v194, v233, 0x123uLL);
  if (get_enum_tag_for_layout_string_xRi_zRi0_zlyxIsegr_Sg_0(v194) == 1)
  {
    v22 = 0;
  }

  else
  {
    v22 = v194[3];
    v23 = v194[3];
  }

  v17(v180, &v221, v3);
  *v180 = v21;
  v166[0] = v22;
  sub_1A524B6B4();
  v178[0] = v188;
  v178[1] = v189;
  v178[2] = v190;
  v178[3] = v191;
  v178[4] = v21;
  v178[8] = v184;
  v178[9] = v185;
  v178[10] = v186;
  v179 = v187;
  v178[5] = v181;
  v178[6] = v182;
  v178[7] = v183;
  v110(v178, v3);
  v174 = v222;
  v175 = v223;
  v176 = v224;
  v177 = v225;
  v173 = v221;
  v24 = v226;
  v169 = v229;
  v170 = v230;
  v171 = v231;
  v172 = v232;
  v167 = v227;
  v168 = v228;
  memcpy(v180, v233, 0x123uLL);
  if (get_enum_tag_for_layout_string_xRi_zRi0_zlyxIsegr_Sg_0(v180) == 1)
  {
    v25 = 0;
  }

  else
  {
    v25 = v180[4];
    v26 = v180[4];
  }

  v17(v166, &v221, v3);
  *v166 = v24;
  v163[0] = v25;
  sub_1A524B6B4();
  v164[2] = v175;
  v164[3] = v176;
  v164[4] = v177;
  v164[0] = v173;
  v164[1] = v174;
  v164[5] = v24;
  v165 = v172;
  v164[9] = v170;
  v164[10] = v171;
  v164[7] = v168;
  v164[8] = v169;
  v164[6] = v167;
  v110(v164, v3);
  memcpy(v166, v233, 0x123uLL);
  v109 = v17;
  if (get_enum_tag_for_layout_string_xRi_zRi0_zlyxIsegr_Sg_0(v166) == 1)
  {
    v27 = 0;
  }

  else
  {
    v27 = v166[0];
    v28 = v166[0];
  }

  memcpy(v163, v234, 0x123uLL);
  if (get_enum_tag_for_layout_string_xRi_zRi0_zlyxIsegr_Sg_0(v163) == 1)
  {
    if (!v27)
    {
      goto LABEL_31;
    }

    goto LABEL_26;
  }

  v29 = v163[0];
  v30 = v29;
  if (v27)
  {
    if (v29)
    {
      v31 = v3;
      sub_1A3DB58C8();
      v32 = sub_1A524DBF4();

      v33 = 0;
      if (v12 && (BYTE8(v221) & 1) != 0)
      {
        goto LABEL_34;
      }

      goto LABEL_36;
    }

LABEL_26:
    v30 = v27;
    goto LABEL_28;
  }

  if (!v29)
  {
LABEL_31:
    v31 = v3;
    v33 = 0;
    if (v12 && (BYTE8(v221) & 1) != 0)
    {
      v32 = 1;
      goto LABEL_34;
    }

    goto LABEL_36;
  }

LABEL_28:
  v31 = v3;

  v32 = 0;
  if (v12)
  {
    v33 = 0;
    if (BYTE8(v221))
    {
LABEL_34:
      v33 = v32 ^ 1;
    }
  }

  else
  {
    v33 = 0;
  }

LABEL_36:
  v106 = v33;
  *&v156[96] = v227;
  *&v156[112] = v228;
  *&v156[128] = v229;
  *&v156[144] = v230;
  *&v156[32] = v223;
  *&v156[48] = v224;
  *&v156[64] = v225;
  *&v156[80] = v226;
  *v156 = v221;
  *&v156[16] = v222;
  v34 = v231;
  LODWORD(v155[0]) = *(&v231 + 1);
  *(v155 + 3) = DWORD1(v231);
  v35 = *(&v231 + 1);
  v103 = v232;
  v36 = v221;
  v37 = *(*v221 + 592);
  v38 = v109(v157, &v221, v31);
  v39 = v37(v38);
  LOBYTE(v157[0]) = v34 & 1;
  v157[1] = v35;
  LOBYTE(v143[0]) = v39 & 1;
  sub_1A42645D4(0, &qword_1EB1274B0, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);
  sub_1A524B6B4();
  v158[6] = *&v156[96];
  v158[7] = *&v156[112];
  v158[8] = *&v156[128];
  v158[9] = *&v156[144];
  v158[3] = *&v156[48];
  v158[4] = *&v156[64];
  v158[5] = *&v156[80];
  v158[0] = *v156;
  v158[1] = *&v156[16];
  v158[2] = *&v156[32];
  v159 = v34;
  *v160 = v155[0];
  *&v160[3] = *(v155 + 3);
  v161 = v35;
  v162 = v103;
  v40 = (v110)(v158, v31);
  result = (*(*v36 + 616))(v40);
  if ((v106 & 1) == 0)
  {
    return result;
  }

  v90 = v31;
  memcpy(v157, v233, 0x123uLL);
  if (get_enum_tag_for_layout_string_xRi_zRi0_zlyxIsegr_Sg_0(v157) == 1)
  {
    v89 = 0;
    v91 = 0;
    v93 = 0;
    v42 = 0;
    v43 = 0;
    v104 = 0;
    v107 = 0;
    v99 = 0;
    v101 = 0;
    v95 = 0;
    v97 = 0;
    v44 = 0;
  }

  else
  {
    v89 = v157[16];
    v42 = v157[18];
    v43 = v157[19];
    v91 = v157[20];
    v93 = v157[17];
    v104 = v157[22];
    v107 = v157[21];
    v99 = v157[24];
    v101 = v157[23];
    v95 = v157[26];
    v97 = v157[25];
    v44 = v157[27];
    sub_1A406BAA8(&v157[16], v156);
  }

  memcpy(v156, v234, sizeof(v156));
  if (get_enum_tag_for_layout_string_xRi_zRi0_zlyxIsegr_Sg_0(v156) == 1)
  {
    v46 = v104;
    v45 = v107;
    v48 = v99;
    v47 = v101;
    v50 = v95;
    v49 = v97;
    v51 = v44;
    v52 = v89;
    v54 = v91;
    v53 = v93;
    if (v93)
    {
      v55 = 0;
      v56 = 0;
      v57 = 0;
      v58 = 0;
      v59 = 0;
      v60 = 0;
      v61 = 0;
      v62 = 0;
      v63 = 0;
      v64 = 0;
      v65 = 0;
      v88 = 0;
LABEL_45:
      v92 = v54;
      v94 = v53;
      v105 = v46;
      v108 = v45;
      v100 = v48;
      v102 = v47;
      v96 = v50;
      v98 = v49;
      v81 = v51;
      *&v155[0] = v52;
      *(&v155[0] + 1) = v53;
      *&v155[1] = v42;
      *(&v155[1] + 1) = v43;
      *&v155[2] = v54;
      *(&v155[2] + 1) = v45;
      *&v155[3] = v46;
      *(&v155[3] + 1) = v47;
      *&v155[4] = v48;
      *(&v155[4] + 1) = v49;
      *&v155[5] = v50;
      BYTE8(v155[5]) = v51;
      v143[2] = v155[2];
      v143[3] = v155[3];
      v143[4] = v155[4];
      *(&v143[4] + 9) = *(&v155[4] + 9);
      v143[0] = v155[0];
      v143[1] = v155[1];
      if (v65)
      {
        *&v132 = v88;
        *(&v132 + 1) = v65;
        *&v133 = v64;
        *(&v133 + 1) = v63;
        *&v134 = v62;
        *(&v134 + 1) = v61;
        *&v135 = v60;
        *(&v135 + 1) = v59;
        *&v136[0] = v58;
        *(&v136[0] + 1) = v57;
        *&v136[1] = v56;
        BYTE8(v136[1]) = v55;
        sub_1A426454C(v155, &v111);
        sub_1A406BBAC();
        sub_1A524C594();
        v128 = v134;
        v129 = v135;
        v130[0] = v136[0];
        *(v130 + 9) = *(v136 + 9);
        v126 = v132;
        v127 = v133;
        sub_1A406BB58(&v126);
        v113 = v143[2];
        v114 = v143[3];
        v115[0] = v143[4];
        *(v115 + 9) = *(&v143[4] + 9);
        v111 = v143[0];
        v112 = v143[1];
        sub_1A406BB58(&v111);
        *&v132 = v52;
        *(&v132 + 1) = v94;
        *&v133 = v42;
        *(&v133 + 1) = v43;
        *&v134 = v92;
        *(&v134 + 1) = v108;
        *&v135 = v105;
        *(&v135 + 1) = v102;
        *&v136[0] = v100;
        *(&v136[0] + 1) = v98;
        *&v136[1] = v96;
        BYTE8(v136[1]) = v81;
        v66 = sub_1A42644DC(&v132, &qword_1EB136378, &type metadata for ParallaxOverlapViewConfiguration);
        goto LABEL_51;
      }

      *&v82 = v64;
      *(&v82 + 1) = v63;
      *&v83 = v62;
      *(&v83 + 1) = v61;
      *&v84 = v60;
      *(&v84 + 1) = v59;
      *&v85 = v58;
      *(&v85 + 1) = v57;
      v86 = v56;
      v87 = v55;
      v134 = v155[2];
      v135 = v155[3];
      v136[0] = v155[4];
      *(v136 + 9) = *(&v155[4] + 9);
      v132 = v155[0];
      v133 = v155[1];
      sub_1A426454C(v155, &v111);
      sub_1A406BB58(&v132);
      v54 = v92;
      v53 = v94;
      v46 = v105;
      v45 = v108;
      v48 = v100;
      v47 = v102;
      v50 = v96;
      v49 = v98;
      v51 = v81;
      goto LABEL_49;
    }
  }

  else
  {
    v88 = *&v156[128];
    v65 = *&v156[136];
    v82 = *&v156[144];
    v83 = *&v156[160];
    v84 = *&v156[176];
    v85 = *&v156[192];
    v86 = *&v156[208];
    v87 = v156[216];
    sub_1A406BAA8(&v156[128], v155);
    v53 = v93;
    if (v93)
    {
      v46 = v104;
      v45 = v107;
      v48 = v99;
      v47 = v101;
      v50 = v95;
      v49 = v97;
      v51 = v44;
      v52 = v89;
      v54 = v91;
      v55 = v87;
      v57 = *(&v85 + 1);
      v56 = v86;
      v59 = *(&v84 + 1);
      v58 = v85;
      v61 = *(&v83 + 1);
      v60 = v84;
      v63 = *(&v82 + 1);
      v62 = v83;
      v64 = v82;
      goto LABEL_45;
    }

    v46 = v104;
    v45 = v107;
    v48 = v99;
    v47 = v101;
    v50 = v95;
    v49 = v97;
    v51 = v44;
    v52 = v89;
    v54 = v91;
    if (v65)
    {
LABEL_49:
      *&v155[0] = v52;
      *(&v155[0] + 1) = v53;
      *&v155[1] = v42;
      *(&v155[1] + 1) = v43;
      *&v155[2] = v54;
      *(&v155[2] + 1) = v45;
      *&v155[3] = v46;
      *(&v155[3] + 1) = v47;
      *&v155[4] = v48;
      *(&v155[4] + 1) = v49;
      *&v155[5] = v50;
      BYTE8(v155[5]) = v51;
      *(&v155[5] + 9) = v149;
      HIDWORD(v155[5]) = *(&v149 + 3);
      *&v155[6] = v88;
      *(&v155[6] + 1) = v65;
      v155[7] = v82;
      v155[8] = v83;
      v155[9] = v84;
      v155[10] = v85;
      *&v155[11] = v86;
      BYTE8(v155[11]) = v87;
      v66 = sub_1A4264AC0(v155, sub_1A4264204);
      goto LABEL_51;
    }
  }

  v155[0] = v52;
  *&v155[1] = v42;
  *(&v155[1] + 1) = v43;
  *&v155[2] = v54;
  *(&v155[2] + 1) = v45;
  *&v155[3] = v46;
  *(&v155[3] + 1) = v47;
  *&v155[4] = v48;
  *(&v155[4] + 1) = v49;
  *&v155[5] = v50;
  BYTE8(v155[5]) = v51;
  v66 = sub_1A42644DC(v155, &qword_1EB136378, &type metadata for ParallaxOverlapViewConfiguration);
LABEL_51:
  (*(*v36 + 848))(v155, v66);
  LOBYTE(v143[0]) = 1;
  if (static ParallaxAssetViewModel.BacklightLuminance.== infix(_:_:)(v155, v143))
  {
    v151 = v223;
    v152 = v224;
    v153 = v225;
    v154 = v226;
    v149 = v221;
    v150 = v222;
    v67 = v227;
    v148 = v232;
    v146 = v230;
    v147 = v231;
    v144 = v228;
    v145 = v229;
    memcpy(v155, v234, 0x123uLL);
    if (get_enum_tag_for_layout_string_xRi_zRi0_zlyxIsegr_Sg_0(v155) == 1)
    {
      v68 = 0;
    }

    else
    {
      v68 = *(&v155[1] + 1);
      v71 = *(&v155[1] + 1);
    }

    v109(v143, &v221, v90);
    v143[0] = v67;
    *&v132 = v68;
    sub_1A524B6B4();
    v134 = v151;
    v135 = v152;
    v136[0] = v153;
    v136[1] = v154;
    v132 = v149;
    v133 = v150;
    v137 = v67;
    v142 = v148;
    v140 = v146;
    v141 = v147;
    v138 = v144;
    v139 = v145;
    v72 = v110;
    v110(&v132, v90);
    v130[0] = v225;
    v130[1] = v226;
    v131 = v227;
    v126 = v221;
    v127 = v222;
    v128 = v223;
    v129 = v224;
    v73 = *(&v228 + 1);
    v74 = v228;
    v125 = v232;
    v123 = v230;
    v124 = v231;
    v122 = v229;
    memcpy(v143, v234, 0x123uLL);
    if (get_enum_tag_for_layout_string_xRi_zRi0_zlyxIsegr_Sg_0(v143) != 1)
    {
      v75 = *&v143[2];
LABEL_63:
      v77 = v75;
      goto LABEL_64;
    }
  }

  else
  {
    v151 = v223;
    v152 = v224;
    v153 = v225;
    v154 = v226;
    v149 = v221;
    v150 = v222;
    v69 = v227;
    v148 = v232;
    v146 = v230;
    v147 = v231;
    v144 = v228;
    v145 = v229;
    memcpy(v155, v234, 0x123uLL);
    if (get_enum_tag_for_layout_string_xRi_zRi0_zlyxIsegr_Sg_0(v155) == 1)
    {
      v70 = 0;
    }

    else
    {
      v70 = *(&v155[0] + 1);
      v76 = *(&v155[0] + 1);
    }

    v109(v143, &v221, v90);
    v143[0] = v69;
    *&v132 = v70;
    sub_1A524B6B4();
    v134 = v151;
    v135 = v152;
    v136[0] = v153;
    v136[1] = v154;
    v132 = v149;
    v133 = v150;
    v137 = v69;
    v142 = v148;
    v140 = v146;
    v141 = v147;
    v138 = v144;
    v139 = v145;
    v72 = v110;
    v110(&v132, v90);
    v130[0] = v225;
    v130[1] = v226;
    v131 = v227;
    v126 = v221;
    v127 = v222;
    v128 = v223;
    v129 = v224;
    v73 = *(&v228 + 1);
    v74 = v228;
    v125 = v232;
    v123 = v230;
    v124 = v231;
    v122 = v229;
    memcpy(v143, v234, 0x123uLL);
    if (get_enum_tag_for_layout_string_xRi_zRi0_zlyxIsegr_Sg_0(v143) != 1)
    {
      v75 = *&v143[1];
      goto LABEL_63;
    }
  }

  v75 = 0;
LABEL_64:
  v109(&v111, &v221, v90);
  *&v111 = v74;
  *(&v111 + 1) = v73;
  v235 = v75;
  sub_1A524B6B4();
  v115[0] = v130[0];
  v115[1] = v130[1];
  v115[2] = v131;
  v111 = v126;
  v112 = v127;
  v113 = v128;
  v114 = v129;
  v116 = v74;
  v117 = v73;
  v121 = v125;
  v119 = v123;
  v120 = v124;
  v118 = v122;
  v72(&v111, v90);
  v137 = v227;
  v138 = v228;
  v139 = v229;
  v134 = v223;
  v135 = v224;
  v136[0] = v225;
  v136[1] = v226;
  v132 = v221;
  v133 = v222;
  v78 = v230;
  v111 = v231;
  *&v112 = v232;
  v109(v155, &v221, v90);
  v155[0] = v78;
  *&v143[0] = 0x3FF0000000000000;
  sub_1A42645D4(0, &qword_1EB1274D0, MEMORY[0x1E69E7DE0], MEMORY[0x1E6981790]);
  sub_1A524B6B4();
  v143[6] = v137;
  v143[7] = v138;
  v143[8] = v139;
  v143[2] = v134;
  v143[3] = v135;
  v143[4] = v136[0];
  v143[5] = v136[1];
  v143[0] = v132;
  v143[1] = v133;
  v143[9] = v78;
  v143[10] = v111;
  *&v143[11] = v112;
  v110(v143, v90);
  v136[0] = v225;
  v136[1] = v226;
  v137 = v227;
  v138 = v228;
  v132 = v221;
  v133 = v222;
  v134 = v223;
  v135 = v224;
  v79 = v229;
  *&v113 = v232;
  v111 = v230;
  v112 = v231;
  v109(v155, &v221, v90);
  v155[0] = v79;
  *&v126 = 0;
  sub_1A524B6B4();
  v155[4] = v136[0];
  v155[5] = v136[1];
  v155[6] = v137;
  v155[7] = v138;
  v155[0] = v132;
  v155[1] = v133;
  v155[2] = v134;
  v155[3] = v135;
  v155[8] = v79;
  *&v155[11] = v113;
  v155[9] = v111;
  v155[10] = v112;
  v110(v155, v90);
  v80 = sub_1A524BCD4();
  MEMORY[0x1EEE9AC00](v80);
  sub_1A52483D4();
}

uint64_t objectdestroyTm_39()
{

  return swift_deallocObject();
}

uint64_t sub_1A4263A58@<X0>(uint64_t a1@<X8>)
{
  sub_1A5249434();
  result = sub_1A524A444();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

double sub_1A4263ACC@<D0>(uint64_t a1@<X8>)
{
  v2 = sub_1A4263C00();
  sub_1A425F58C(v2, 0, sub_1A4263A58, 0, v9);
  v3 = v17;
  *(a1 + 128) = v16;
  *(a1 + 144) = v3;
  *(a1 + 160) = v18;
  *(a1 + 176) = v19;
  v4 = v13;
  *(a1 + 64) = v12;
  *(a1 + 80) = v4;
  v5 = v15;
  *(a1 + 96) = v14;
  *(a1 + 112) = v5;
  v6 = v9[1];
  *a1 = v9[0];
  *(a1 + 16) = v6;
  result = *&v10;
  v8 = v11;
  *(a1 + 32) = v10;
  *(a1 + 48) = v8;
  return result;
}

uint64_t sub_1A4263B68(uint64_t a1)
{
  v2 = sub_1A426407C();

  return MEMORY[0x1EEDD9FE8](a1, v2);
}

uint64_t sub_1A4263BB4(uint64_t a1)
{
  v2 = sub_1A426407C();

  return MEMORY[0x1EEDD9FE0](a1, v2);
}

uint64_t sub_1A4263C00()
{
  v0 = type metadata accessor for ParallaxAssetViewModel();
  v1 = PXDisplayCollectionDetailedCountsMake(v0);
  v3 = v2;
  v4 = sub_1A3C5A374();
  v5 = sub_1A3C30368();
  v6 = ParallaxAssetViewModel.__allocating_init(viewSize:isForPreview:maxPreloadedAssetCount:)(v4 & 1, v5, v1, v3);
  sub_1A42645D4(0, &qword_1EB130E98, &type metadata for ParallaxOverlapViewConfiguration, MEMORY[0x1E69E6F90]);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1A52F8E10;
  v8 = PXDisplayCollectionDetailedCountsMake(v7);
  v10 = v9;
  v11 = sub_1A3C30368();
  v12 = sub_1A3C30368();
  v13 = sub_1A43A1F8C();
  v15 = v14;
  v16 = sub_1A3C5A374();
  ParallaxOverlapViewConfiguration.init(name:size:position:overlapTestAreas:minSegmentationScore:disableParallaxIfNotAcceptable:usesParallax:headroomFractionRange:isFallbackLayout:)(0x77656976657270, 0xE700000000000000, MEMORY[0x1E69E7CC0], v11 & 1, v12 & 1, v16 & 1, v7 + 32, v8, v10, 120.0, 50.0, 0.0, v13, v15);
  (*(*v6 + 360))(v7, 0x77656976657270, 0xE700000000000000);

  return v6;
}

unint64_t sub_1A4263DF8()
{
  result = qword_1EB136338;
  if (!qword_1EB136338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB136338);
  }

  return result;
}

uint64_t sub_1A4263E68()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 __swift_memcpy184_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  v5 = a2[4];
  v6 = a2[5];
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  result = a2[8];
  v9 = a2[9];
  v10 = a2[10];
  *(a1 + 176) = *(a2 + 22);
  *(a1 + 144) = v9;
  *(a1 + 160) = v10;
  *(a1 + 128) = result;
  return result;
}

uint64_t sub_1A4263EE0(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 184))
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

uint64_t sub_1A4263F28(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
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
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 184) = 1;
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

    *(result + 184) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1A4263FA4()
{
  result = qword_1EB136340;
  if (!qword_1EB136340)
  {
    sub_1A4264028(255, &qword_1EB136348, MEMORY[0x1E6981148], MEMORY[0x1E6981138], type metadata accessor for ParallaxAssetView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB136340);
  }

  return result;
}

void sub_1A4264028(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
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

unint64_t sub_1A426407C()
{
  result = qword_1EB136350;
  if (!qword_1EB136350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB136350);
  }

  return result;
}

uint64_t sub_1A42640D0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_1A42641A0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1A4264204()
{
  if (!qword_1EB136370)
  {
    sub_1A42645D4(255, &qword_1EB136378, &type metadata for ParallaxOverlapViewConfiguration, MEMORY[0x1E69E6720]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB136370);
    }
  }
}

uint64_t sub_1A426428C()
{
  v1 = *(v0 + 32);
  v28 = v1[6];
  v30 = v1[7];
  v32 = v1[8];
  v20 = v1[2];
  v22 = v1[3];
  v24 = v1[4];
  v26 = v1[5];
  v16 = *v1;
  v18 = v1[1];
  v2 = *(v1 + 18);
  v3 = *(v1 + 19);
  v11 = v1[10];
  v13 = *(v1 + 22);
  v4 = type metadata accessor for ParallaxAssetView();
  v5 = *(v4 - 8);
  v6 = *(v5 + 16);
  v6(v38, v1, v4);
  *&v38[0] = v2;
  *(&v38[0] + 1) = v3;
  sub_1A42645D4(0, &qword_1EB1274D0, MEMORY[0x1E69E7DE0], MEMORY[0x1E6981790]);
  sub_1A524B6B4();
  v33[6] = v28;
  v33[7] = v30;
  v33[8] = v32;
  v33[2] = v20;
  v33[3] = v22;
  v33[4] = v24;
  v33[5] = v26;
  v33[0] = v16;
  v33[1] = v18;
  v34 = v2;
  v35 = v3;
  v36 = v11;
  v37 = v13;
  v7 = *(v5 + 8);
  v7(v33, v4);
  v25 = v1[4];
  v27 = v1[5];
  v29 = v1[6];
  v31 = v1[7];
  v17 = *v1;
  v19 = v1[1];
  v21 = v1[2];
  v23 = v1[3];
  v8 = *(v1 + 16);
  v9 = *(v1 + 17);
  v15 = *(v1 + 22);
  v12 = v1[9];
  v14 = v1[10];
  v6(v38, v1, v4);
  *&v38[0] = v8;
  *(&v38[0] + 1) = v9;
  v44 = 0x3FF0000000000000;
  sub_1A524B6B4();
  v38[4] = v25;
  v38[5] = v27;
  v38[6] = v29;
  v38[7] = v31;
  v38[0] = v17;
  v38[1] = v19;
  v38[2] = v21;
  v38[3] = v23;
  v39 = v8;
  v40 = v9;
  v43 = v15;
  v41 = v12;
  v42 = v14;
  return (v7)(v38, v4);
}

uint64_t sub_1A42644DC(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  sub_1A42645D4(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1A426454C(uint64_t a1, uint64_t a2)
{
  sub_1A42645D4(0, &qword_1EB136378, &type metadata for ParallaxOverlapViewConfiguration, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1A42645D4(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_1A4264624()
{
  result = qword_1EB136380;
  if (!qword_1EB136380)
  {
    sub_1A4260908(255);
    sub_1A42646D4();
    sub_1A4264998(&unk_1EB127C50, sub_1A41EF370);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB136380);
  }

  return result;
}

unint64_t sub_1A42646D4()
{
  result = qword_1EB136388;
  if (!qword_1EB136388)
  {
    sub_1A4260928(255);
    sub_1A4264998(&qword_1EB136390, sub_1A4260964);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB136388);
  }

  return result;
}

unint64_t sub_1A4264784()
{
  result = qword_1EB136398;
  if (!qword_1EB136398)
  {
    sub_1A4260C48(255);
    sub_1A4264864(&qword_1EB1363A0, sub_1A4260C68, sub_1A42648E8);
    sub_1A4264998(&unk_1EB127C50, sub_1A41EF370);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB136398);
  }

  return result;
}

uint64_t sub_1A4264864(unint64_t *a1, void (*a2)(uint64_t), void (*a3)(void))
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

unint64_t sub_1A42648E8()
{
  result = qword_1EB1363A8;
  if (!qword_1EB1363A8)
  {
    sub_1A4260CA4(255);
    sub_1A4264998(&qword_1EB1363B0, sub_1A4260D4C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1363A8);
  }

  return result;
}

uint64_t sub_1A4264998(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1A42649E0()
{
  result = qword_1EB1363B8;
  if (!qword_1EB1363B8)
  {
    sub_1A4260E88(255);
    sub_1A4264864(&qword_1EB1363C0, sub_1A4260F14, sub_1A4260DDC);
    sub_1A4264998(&unk_1EB127C50, sub_1A41EF370);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1363B8);
  }

  return result;
}

uint64_t sub_1A4264AC0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1A4264B20()
{
  v0 = sub_1A5246F24();
  __swift_allocate_value_buffer(v0, qword_1EB1B2408);
  __swift_project_value_buffer(v0, qword_1EB1B2408);
  sub_1A3C3335C();
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A4264BA8()
{
  sub_1A524EC94();
  sub_1A524DC04();
  return sub_1A524ECE4();
}

uint64_t sub_1A4264C10()
{
  sub_1A524EC94();
  sub_1A524DC04();
  return sub_1A524ECE4();
}

uint64_t sub_1A4264C5C@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v21 = a1;
  sub_1A3C4C0FC(0, &qword_1EB1292E0, MEMORY[0x1E69C1CC0]);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v19 - v4;
  v6 = type metadata accessor for LemonadeItemsLayoutSpec.Style(0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  *a2 = 1;
  v9 = type metadata accessor for LemonadeSearchCollectionResultsShelfProvider(0);
  v20 = v9[5];
  v10 = sub_1A43A1980(12.0);
  v12 = v11;
  v13 = sub_1A3C47918();
  v15 = v14;
  v16 = sub_1A3C4ED50();
  v22 = 1;
  *v8 = xmmword_1A5328F30;
  v8[16] = 1;
  *(v8 + 3) = 1;
  v8[32] = 1;
  *(v8 + 5) = v10;
  *(v8 + 6) = v12;
  *(v8 + 7) = v13;
  *(v8 + 8) = v15;
  *(v8 + 72) = xmmword_1A5317AF0;
  v8[88] = 0;
  v8[89] = v16;
  swift_storeEnumTagMultiPayload();
  sub_1A3C4ED54(v5);
  result = sub_1A3C52D78(v8, 5, v5, &a2[v20]);
  a2[v9[6]] = 1;
  v18 = &a2[v9[7]];
  *v18 = 0;
  v18[1] = 0;
  *&a2[v9[8]] = v21;
  return result;
}

uint64_t sub_1A4264E14()
{
  sub_1A42684DC();
  MEMORY[0x1EEE9AC00](v0);
  sub_1A4264F6C(v6 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1A4268560();
  v3 = v2;
  v4 = sub_1A42687BC();
  v6[0] = v3;
  v6[1] = v4;
  swift_getOpaqueTypeConformance2();
  return sub_1A524B8E4();
}

uint64_t sub_1A4264ED8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A4264F40()
{
  type metadata accessor for LemonadeSearchCollectionResultsShelfProvider(0);

  return sub_1A4264E14();
}

uint64_t sub_1A4264F6C@<X0>(uint64_t a1@<X8>)
{
  v63 = a1;
  v1 = sub_1A52486A4();
  v61 = *(v1 - 8);
  v62 = v1;
  MEMORY[0x1EEE9AC00](v1);
  v60 = &v55 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1A524A204();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v55 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4268560();
  v59 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v55 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v67 = sub_1A3C38BD4();
  *(&v67 + 1) = v10;
  sub_1A3D5F9DC();
  v11 = sub_1A524A464();
  v13 = v12;
  v15 = v14;
  v55 = v16;
  sub_1A524A254();
  sub_1A524A104();

  (*(v4 + 104))(v6, *MEMORY[0x1E6980EA8], v3);
  sub_1A524A234();

  (*(v4 + 8))(v6, v3);
  v17 = sub_1A524A3C4();
  v57 = v18;
  v58 = v17;
  LOBYTE(v4) = v19;
  v56 = v20;

  sub_1A3E04DF4(v11, v13, v15 & 1);

  LOBYTE(v3) = sub_1A524A054();
  sub_1A5247BC4();
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v29 = v4 & 1;
  LOBYTE(v67) = v4 & 1;
  v64 = 0;
  LOBYTE(v4) = sub_1A524A0C4();
  sub_1A5247BC4();
  v31 = v30;
  v33 = v32;
  v35 = v34;
  v37 = v36;
  v65 = 0;
  sub_1A524BC74();
  sub_1A5248AD4();
  *&v66[55] = v70;
  *&v66[71] = v71;
  *&v66[87] = v72;
  *&v66[103] = v73;
  *&v66[23] = v68;
  *&v66[39] = v69;
  *&v66[7] = v67;
  v38 = &v9[*(v59 + 36)];
  sub_1A42686D0();
  v40 = v39;
  v41 = *(v39 + 52);
  v42 = *MEMORY[0x1E697F468];
  v43 = sub_1A52494A4();
  (*(*(v43 - 8) + 104))(&v38[v41], v42, v43);
  *v38 = 2;
  *&v38[*(v40 + 56)] = 256;
  v44 = v57;
  *v9 = v58;
  *(v9 + 1) = v44;
  v9[16] = v29;
  *(v9 + 3) = v56;
  v9[32] = v3;
  *(v9 + 5) = v22;
  *(v9 + 6) = v24;
  *(v9 + 7) = v26;
  *(v9 + 8) = v28;
  v9[72] = 0;
  v9[80] = v4;
  *(v9 + 11) = v31;
  *(v9 + 12) = v33;
  *(v9 + 13) = v35;
  *(v9 + 14) = v37;
  v9[120] = 0;
  v45 = *v66;
  v46 = *&v66[16];
  v47 = *&v66[32];
  *(v9 + 169) = *&v66[48];
  *(v9 + 153) = v47;
  *(v9 + 137) = v46;
  *(v9 + 121) = v45;
  v48 = *&v66[64];
  v49 = *&v66[80];
  v50 = *&v66[96];
  *(v9 + 29) = *&v66[111];
  *(v9 + 217) = v50;
  *(v9 + 201) = v49;
  *(v9 + 185) = v48;
  v52 = v60;
  v51 = v61;
  v53 = v62;
  (*(v61 + 104))(v60, *MEMORY[0x1E697E6E8], v62);
  sub_1A42687BC();
  sub_1A524AB74();
  (*(v51 + 8))(v52, v53);
  return sub_1A4268990(v9);
}

uint64_t sub_1A42654A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = type metadata accessor for LemonadePhotosPagingMemoryGridConfiguration(0);
  MEMORY[0x1EEE9AC00](v7);
  v8 = sub_1A5243994();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v40[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v40[-v13];
  sub_1A4267934();
  v15 = *(a1 + 24);
  if (*(a1 + 24))
  {
    v44 = a2;
    v16 = *(a1 + 16);
    if (v15 == 1)
    {

      SearchResultItem.value.getter(&v46);
      v17 = v46;
      if (v46)
      {
        objc_opt_self();
        if (swift_dynamicCastObjCClass())
        {
          sub_1A4267C40();
          v18 = v44;

          v19 = sub_1A3C5A374();
          sub_1A4270314(v16, v18, v19 & 1, 0, a3);
        }
      }

      if (qword_1EB1B2400 != -1)
      {
        swift_once();
      }

      v23 = sub_1A5246F24();
      __swift_project_value_buffer(v23, qword_1EB1B2408);
      v24 = v17;
      v25 = sub_1A5246F04();
      v26 = sub_1A524D244();

      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        v46 = swift_slowAlloc();
        *v27 = 136315138;
        sub_1A3C2EF94();
      }

      v28 = v16[2];
      v29 = v28;
      sub_1A3D8E6B0(v28, 0, &v46);

      sub_1A4267BB4(v16, 1);
      v30 = v47;
      *a3 = v46;
      *(a3 + 8) = v30;
      type metadata accessor for LemonadeNavigationDestination();
      return swift_storeEnumTagMultiPayload();
    }

    v42 = a3;
    v43 = v3;

    SearchResultItem.collectionItemType.getter(v14);
    (*(v9 + 104))(v11, *MEMORY[0x1E69C26F8], v8);
    sub_1A4267B6C(&qword_1EB12D1B0, MEMORY[0x1E69C2718]);
    sub_1A524C9C4();
    sub_1A524C9C4();
    if (v46 == v45[0] && v47 == v45[1])
    {
      v21 = *(v9 + 8);
      v21(v11, v8);
      v21(v14, v8);

      v22 = v43;
    }

    else
    {
      v41 = sub_1A524EAB4();
      v31 = v16;
      v32 = *(v9 + 8);
      v32(v11, v8);
      v32(v14, v8);
      v16 = v31;

      v22 = v43;
      if ((v41 & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    v33 = v16[2];
    objc_opt_self();
    v34 = swift_dynamicCastObjCClass();
    if (v34)
    {
      v35 = v34;
      LOBYTE(v45[0]) = 3;
      v46 = 0;
      v36 = v33;
      LemonadePhotosPagingMemoryGridConfiguration.init(memory:initialPositionDetent:disallowedBehaviors:navigationSourceInfo:)(v35);
      v37._countAndFlagsBits = sub_1A524C674();
      v45[0] = 0;
      v49.value.sourceIdentifiers._rawValue = v45;
      PhotosNavigationSourceInfo.init(sourceIdentifier:previousSourceInfo:)(v37, v49);
      v45[0] = v46;
      sub_1A4A04DA4();
    }

LABEL_20:
    v38 = *(v22 + *(type metadata accessor for LemonadeSearchCollectionResultsShelfProvider(0) + 32));
    v39 = MEMORY[0x1E69E7D40];
    (*((*MEMORY[0x1E69E7D40] & *v38) + 0x188))();
    (*((*v39 & *v38) + 0xE0))();

    LemonadePhotosPagingAssetCollectionGridConfiguration.init(singleItem:photoLibraryContext:defaultSectionBodyStyle:disallowedBehaviors:searchMatchInfo:badgesModifier:)(v42);
  }

  type metadata accessor for LemonadeNavigationDestination();

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1A4265B50()
{
  swift_getKeyPath();
  (*(*v0 + 336))();

  return swift_unknownObjectRetain();
}

uint64_t sub_1A4265BBC@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  (*(*v3 + 336))();

  *a2 = *(v3 + 24);

  return swift_unknownObjectRetain();
}

uint64_t sub_1A4265C48(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  KeyPath = swift_getKeyPath();
  v7[2] = v4;
  v7[3] = v2;
  v7[4] = v3;
  (*(*v4 + 344))(KeyPath, sub_1A42689F0, v7, MEMORY[0x1E69E7CA8] + 8);
}

void sub_1A4265CFC(void *a1)
{
  v2 = v1;
  *(v2 + 24) = 0;
  *(v2 + 32) = 0;
  *(v2 + 40) = 0;
  *(v2 + 48) = 0xE000000000000000;
  *(v2 + 56) = 0;
  *(v2 + 60) = 0;
  *(v2 + 64) = 1;
  sub_1A5241604();
  *(v2 + 16) = a1;
  v4 = *(*v2 + 328);
  v5 = a1;
  v4();
  v6 = *&v5[OBJC_IVAR___PXPhotosSearchCollectionSectionProvider_observable];
  swift_allocObject();
  swift_weakInit();
  v7 = v6;

  sub_1A524D1A4();
}

uint64_t sub_1A4265EC0(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = v2[6];
  if (v5)
  {
    if (a2)
    {
      v6 = v2[5] == a1 && v5 == a2;
      if (v6 || (sub_1A524EAB4() & 1) != 0)
      {
        goto LABEL_8;
      }
    }
  }

  else if (!a2)
  {
LABEL_8:
    v2[5] = a1;
    v2[6] = a2;
  }

  KeyPath = swift_getKeyPath();
  v9 = MEMORY[0x1EEE9AC00](KeyPath);
  v10 = v2;
  v11 = a1;
  v12 = a2;
  (*(*v2 + 344))(v9);
}

uint64_t sub_1A4266004(char a1)
{
  v2 = a1 & 1;
  result = swift_beginAccess();
  if (v1[56] == v2)
  {
    v1[56] = v2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v5 = MEMORY[0x1EEE9AC00](KeyPath);
    v6 = v1;
    v7 = v2;
    (*(*v1 + 344))(v5);
  }

  return result;
}

uint64_t sub_1A4266100(uint64_t a1)
{
  result = swift_beginAccess();
  if ((*(v1 + 64) & 1) == 0)
  {
    if ((a1 & 0x100000000) != 0 || *(v1 + 60) != a1)
    {
      goto LABEL_7;
    }

LABEL_6:
    *(v1 + 60) = a1;
    *(v1 + 64) = BYTE4(a1) & 1;
    return result;
  }

  if ((a1 & 0x100000000) != 0)
  {
    goto LABEL_6;
  }

LABEL_7:
  KeyPath = swift_getKeyPath();
  v5 = MEMORY[0x1EEE9AC00](KeyPath);
  v6 = v1;
  v7 = a1;
  v8 = BYTE4(a1) & 1;
  (*(*v1 + 344))(v5);
}

void sub_1A4266228()
{
  swift_getKeyPath();
  (*(*v0 + 336))();

  swift_beginAccess();
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A42662B8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 208))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

void (*sub_1A426636C(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
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
  KeyPath = swift_getKeyPath();
  (*(*v1 + 336))(KeyPath);

  v4[5] = OBJC_IVAR____TtCV12PhotosUICore44LemonadeSearchCollectionResultsShelfProvider24CollectionContainerModel___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A4267B6C(&qword_1EB1363D0, type metadata accessor for LemonadeSearchCollectionResultsShelfProvider.CollectionContainerModel);
  sub_1A52415F4();

  v4[7] = sub_1A3DE3B2C();
  return sub_1A42664BC;
}

uint64_t sub_1A4266518()
{
  swift_getKeyPath();
  (*(*v0 + 336))();

  swift_beginAccess();
  return v0[56];
}

uint64_t sub_1A4266598@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 256))();
  *a2 = result & 1;
  return result;
}

void (*sub_1A4266640(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
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
  KeyPath = swift_getKeyPath();
  (*(*v1 + 336))(KeyPath);

  v4[5] = OBJC_IVAR____TtCV12PhotosUICore44LemonadeSearchCollectionResultsShelfProvider24CollectionContainerModel___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A4267B6C(&qword_1EB1363D0, type metadata accessor for LemonadeSearchCollectionResultsShelfProvider.CollectionContainerModel);
  sub_1A52415F4();

  v4[7] = sub_1A42664C8();
  return sub_1A4266790;
}

unint64_t sub_1A42667EC()
{
  swift_getKeyPath();
  (*(*v0 + 336))();

  swift_beginAccess();
  return *(v0 + 60) | (*(v0 + 64) << 32);
}

uint64_t sub_1A426687C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = (*(**a1 + 304))();
  *a2 = result;
  *(a2 + 4) = BYTE4(result) & 1;
  return result;
}

void (*sub_1A4266940(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
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
  KeyPath = swift_getKeyPath();
  (*(*v1 + 336))(KeyPath);

  v4[5] = OBJC_IVAR____TtCV12PhotosUICore44LemonadeSearchCollectionResultsShelfProvider24CollectionContainerModel___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A4267B6C(&qword_1EB1363D0, type metadata accessor for LemonadeSearchCollectionResultsShelfProvider.CollectionContainerModel);
  sub_1A52415F4();

  v4[7] = sub_1A426679C();
  return sub_1A4266A90;
}

uint64_t sub_1A4266A9C()
{
  v1 = v0[2];
  v2 = MEMORY[0x1E69E7D40];
  if ((*((*MEMORY[0x1E69E7D40] & *v1) + 0x1B8))())
  {
    v3 = (*((*v2 & *v1) + 0x280))();
  }

  else
  {
    v3 = 0;
    v4 = 0xE000000000000000;
  }

  v5 = (*(*v0 + 216))(v3, v4);
  v6 = ((*((*v2 & *v1) + 0x1A0))(v5) & 1) != 0 || (*((*v2 & *v1) + 0x288))() == 0;
  v7 = *(*v0 + 264);

  return v7(v6);
}

uint64_t sub_1A4266D80()
{
  swift_unknownObjectRelease();

  v1 = OBJC_IVAR____TtCV12PhotosUICore44LemonadeSearchCollectionResultsShelfProvider24CollectionContainerModel___observationRegistrar;
  v2 = sub_1A5241614();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_1A4266F28@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for LemonadeSearchCollectionResultsShelfProvider.CollectionContainerModel(0);
  sub_1A4267B6C(&qword_1EB1363E8, type metadata accessor for LemonadeSearchCollectionResultsShelfProvider.CollectionContainerModel);
  result = sub_1A524E434();
  *a1 = result;
  return result;
}

uint64_t sub_1A4266FA4@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for LemonadeSearchCollectionResultsShelfProvider.CollectionContainerModel(0);
  result = sub_1A524E434();
  *a1 = result;
  return result;
}

uint64_t sub_1A4266FF4(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 32));
  v3 = MEMORY[0x1E69E7D40];
  if ((*((*MEMORY[0x1E69E7D40] & *v2) + 0x1B8))())
  {
    return (*((*v3 & *v2) + 0x280))();
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1A42670A0@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x1E69C2418];
  v3 = sub_1A5243334();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

void sub_1A426714C(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 32));
  type metadata accessor for LemonadeSearchCollectionResultsShelfProvider.CollectionContainerModel(0);
  swift_allocObject();
  sub_1A4265CFC(v2);
}

uint64_t sub_1A42671E0(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](a1);
  if (shouldUseNewCollectionsLayout()())
  {
    return 0x1FFFFFFFELL;
  }

  sub_1A4264ED8(v2, &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for LemonadeSearchCollectionResultsShelfProvider);
  v6 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v7 = swift_allocObject();
  sub_1A4267BD8(&v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6, type metadata accessor for LemonadeSearchCollectionResultsShelfProvider);
  return 0x8000000000000001;
}

uint64_t sub_1A4267308@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v6 = *(v3 + *(a2 + 32));

  sub_1A3F3AB58(a1, v6, 0, v12);
  v7 = v12[3];
  a3[2] = v12[2];
  a3[3] = v7;
  a3[4] = v12[4];
  v8 = v12[1];
  *a3 = v12[0];
  a3[1] = v8;
  v9 = type metadata accessor for LemonadeNavigationDestination();
  swift_storeEnumTagMultiPayload();
  v10 = *(*(v9 - 8) + 56);

  return v10(a3, 0, 1, v9);
}

uint64_t sub_1A42673D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v6 = *(a1 + *(type metadata accessor for LemonadeShelfDisclosureOptions(0) + 24));
  v7 = *(v3 + *(a2 + 32));

  sub_1A3F3AB58(v6, v7, 0, v13);
  v8 = v13[3];
  a3[2] = v13[2];
  a3[3] = v8;
  a3[4] = v13[4];
  v9 = v13[1];
  *a3 = v13[0];
  a3[1] = v9;
  v10 = type metadata accessor for LemonadeNavigationDestination();
  swift_storeEnumTagMultiPayload();
  v11 = *(*(v10 - 8) + 56);

  return v11(a3, 0, 1, v10);
}

id sub_1A42674C4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(v2 + *(a1 + 32));
  *a2 = v3;
  return v3;
}

void sub_1A42674D4(void **a1, uint64_t a2)
{
  sub_1A3C4C0FC(0, &qword_1EB129048, MEMORY[0x1E69C2718]);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v9 - v5;
  v7 = *a1;
  type metadata accessor for SearchResultItemListManager();
  v8 = sub_1A5243994();
  (*(*(v8 - 8) + 56))(v6, 1, 1, v8);

  SearchResultItemListManager.__allocating_init(photoLibraryContext:collectionSectionProvider:limitTo:)(a2, v7, v6);
}

uint64_t sub_1A42675CC@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1A5243CE4();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1A5243C84();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1A5243C94();
  v11 = MEMORY[0x1EEE9AC00](v10);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v14 + 104))(v13, *MEMORY[0x1E69C2898], v11);
  (*(v7 + 104))(v9, *MEMORY[0x1E69C2880], v6);
  (*(v3 + 104))(v5, *MEMORY[0x1E69C28C0], v2);

  return sub_1A48F05F4(v15, v13, v9, v5, a1);
}

uint64_t sub_1A426782C()
{
  result = sub_1A52432D4();
  if (!v1)
  {
    return sub_1A3C38BD4();
  }

  return result;
}

void *sub_1A426787C(uint64_t a1)
{
  if (!*(*a1 + 24))
  {
    return 0;
  }

  v1 = *(*(*a1 + 16) + 16);
  v2 = v1;
  return v1;
}

unint64_t sub_1A42678BC(uint64_t a1)
{
  v2 = sub_1A4267B6C(&qword_1EB129340, type metadata accessor for LemonadeSearchCollectionResultsShelfProvider);

  return sub_1A42E6E80(a1, v2);
}

void sub_1A4267934()
{
  v0 = sub_1A5243994();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  SearchResultItem.collectionItemType.getter(v3);
  v4 = (*(v1 + 88))(v3, v0);
  if (v4 == *MEMORY[0x1E69C2700])
  {
    v5 = 3;
  }

  else if (v4 == *MEMORY[0x1E69C26F8])
  {
    v5 = 5;
  }

  else if (v4 == *MEMORY[0x1E69C26E8])
  {
    v5 = 4;
  }

  else if (v4 == *MEMORY[0x1E69C2710])
  {
    v5 = 2;
  }

  else if (v4 == *MEMORY[0x1E69C26E0] || v4 == *MEMORY[0x1E69C26F0])
  {
    v5 = 6;
  }

  else
  {
    if (v4 != *MEMORY[0x1E69C26D0] && v4 != *MEMORY[0x1E69C2708] && v4 != *MEMORY[0x1E69C26D8])
    {
      sub_1A524E6E4();
      __break(1u);
      return;
    }

    v5 = 0;
  }

  v9 = [objc_opt_self() sharedSession];
  SearchResultItem.parsecIdentifier.getter();
  v10 = sub_1A524C634();

  [v9 reportSearchCollectionResultSelected:v10 type:v5];
}

uint64_t sub_1A4267B6C(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1A4267BB4(id a1, char a2)
{
  if (a2 == 2 || a2 == 1)
  {
  }

  else if (!a2)
  {
  }
}

uint64_t sub_1A4267BD8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_1A4267C40()
{
  if (!qword_1EB125C30)
  {
    sub_1A3C52C70(255, &qword_1EB1265C0);
    v0 = type metadata accessor for PhotoKitItem();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB125C30);
    }
  }
}

uint64_t sub_1A4267CA8()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    (*(*result + 328))(result);
  }

  return result;
}

uint64_t sub_1A4267D3C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  result = swift_beginAccess();
  *(v1 + 56) = v2;
  return result;
}

uint64_t sub_1A4267D90()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 28);
  result = swift_beginAccess();
  *(v1 + 60) = v2;
  *(v1 + 64) = v3;
  return result;
}

unint64_t sub_1A4267DF0()
{
  result = qword_1EB1363D8;
  if (!qword_1EB1363D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1363D8);
  }

  return result;
}

uint64_t sub_1A4267E44(uint64_t a1)
{
  result = sub_1A4267B6C(&qword_1EB1363E0, type metadata accessor for LemonadeSearchCollectionResultsShelfProvider.CollectionContainerModel);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1A4267EE4(uint64_t a1)
{
  result = sub_1A4267B6C(&qword_1EB129348, type metadata accessor for LemonadeSearchCollectionResultsShelfProvider);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1A4267FA4()
{
  result = qword_1EB1363F0;
  if (!qword_1EB1363F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1363F0);
  }

  return result;
}

void sub_1A4268040()
{
  if (!qword_1EB129100)
  {
    type metadata accessor for SearchResultItem();
    sub_1A4267B6C(&qword_1EB12A4A8, type metadata accessor for SearchResultItem);
    sub_1A4267B6C(&qword_1EB12A4C0, type metadata accessor for SearchResultItem);
    v0 = sub_1A52432F4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB129100);
    }
  }
}

uint64_t sub_1A42681CC()
{
  result = sub_1A5241614();
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

uint64_t objectdestroyTm_40()
{
  v1 = type metadata accessor for LemonadeSearchCollectionResultsShelfProvider(0);
  v2 = v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));
  v3 = v2 + *(v1 + 20);
  type metadata accessor for LemonadeItemsLayoutSpec.Style(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  sub_1A3D6D890(*v3, *(v3 + 8), *(v3 + 16));
  if (EnumCaseMultiPayload == 1)
  {
    sub_1A3C4208C(*(v3 + 24), *(v3 + 32), *(v3 + 40));
    sub_1A3C47A98();
    v6 = *(v5 + 64);
    v7 = sub_1A5242C84();
    (*(*(v7 - 8) + 8))(v3 + v6, v7);
  }

  else
  {
    if (*(v3 + 40) >= 3uLL)
    {
    }

    if (*(v3 + 56) >= 3uLL)
    {
    }

    sub_1A3C4208C(*(v3 + 72), *(v3 + 80), *(v3 + 88));
  }

  v8 = *(type metadata accessor for LemonadeShelfBodyStyle(0) + 24);
  v9 = sub_1A5241F84();
  v10 = *(v9 - 8);
  if (!(*(v10 + 48))(v3 + v8, 1, v9))
  {
    (*(v10 + 8))(v3 + v8, v9);
  }

  return swift_deallocObject();
}

uint64_t sub_1A4268498()
{
  *(*(v0 + 16) + 24) = *(v0 + 24);
  swift_unknownObjectRetain();
  return swift_unknownObjectRelease();
}

void sub_1A42684DC()
{
  if (!qword_1EB1363F8)
  {
    sub_1A4268560();
    sub_1A42687BC();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB1363F8);
    }
  }
}

void sub_1A4268560()
{
  if (!qword_1EB136400)
  {
    sub_1A4268614(255, &qword_1EB136408, sub_1A42685EC);
    sub_1A42686D0();
    v0 = sub_1A5248804();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB136400);
    }
  }
}

void sub_1A4268614(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

void sub_1A4268678()
{
  if (!qword_1EB128720)
  {
    v0 = sub_1A5248804();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB128720);
    }
  }
}

void sub_1A42686D0()
{
  if (!qword_1EB136410)
  {
    sub_1A42568D0();
    sub_1A524B984();
    sub_1A4267B6C(&qword_1EB127A30, sub_1A42568D0);
    sub_1A4267B6C(&qword_1EB1214C0, MEMORY[0x1E6981998]);
    v0 = sub_1A5249FC4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB136410);
    }
  }
}

unint64_t sub_1A42687BC()
{
  result = qword_1EB136418;
  if (!qword_1EB136418)
  {
    sub_1A4268560();
    sub_1A426886C();
    sub_1A4267B6C(&qword_1EB136428, sub_1A42686D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB136418);
  }

  return result;
}

unint64_t sub_1A426886C()
{
  result = qword_1EB136420;
  if (!qword_1EB136420)
  {
    sub_1A4268614(255, &qword_1EB136408, sub_1A42685EC);
    sub_1A4268910();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB136420);
  }

  return result;
}

unint64_t sub_1A4268910()
{
  result = qword_1EB128400;
  if (!qword_1EB128400)
  {
    sub_1A42685EC(255);
    sub_1A3E003FC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB128400);
  }

  return result;
}

uint64_t sub_1A4268990(uint64_t a1)
{
  sub_1A4268560();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1A4268A08()
{
  if (!qword_1EB136430)
  {
    sub_1A4268D44(255, &qword_1EB125870, MEMORY[0x1E69E6720]);
    v0 = sub_1A524B974();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB136430);
    }
  }
}

uint64_t sub_1A4268A7C()
{
  v1 = sub_1A52414C4();
  MEMORY[0x1EEE9AC00](v1);
  v2 = *(v0 + 8);
  sub_1A4268A08();
  result = MEMORY[0x1A5906C60](&v4);
  if (v4 != 24)
  {
    LOBYTE(v4) = v2;
    sub_1A3C4CDB0();
    result = sub_1A524C594();
    if ((result & 1) == 0)
    {
      _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
    }
  }

  return result;
}

uint64_t sub_1A4268CA8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (!v2)
  {
    return 0;
  }

  sub_1A3C4CDB0();
  v3 = 0;
  while ((sub_1A524C594() & 1) == 0)
  {
    if (v2 == ++v3)
    {
      return 0;
    }
  }

  return v3;
}

void sub_1A4268D44(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, ValueMetadata *))
{
  if (!*a2)
  {
    v4 = a3(0, &type metadata for LemonadeShelfIdentifier);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_1A4268D98()
{
  result = qword_1EB136438;
  if (!qword_1EB136438)
  {
    sub_1A4268D44(255, &qword_1EB120CE8, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB136438);
  }

  return result;
}

uint64_t sub_1A4268E0C()
{
  v1 = *v0;
  v2 = v0[3];
  v3 = *(v0 + 32);
  v11 = v0[2];
  v12 = v2;
  v13 = v3;
  sub_1A4268A08();
  MEMORY[0x1A5906C60](&v14);
  if (v14 != 24)
  {
    LOBYTE(v11) = v14;
    sub_1A3DD1890(&v10);
    v4 = (*(*v1 + 1104))();
    type metadata accessor for LemonadeAnalyticsCustomization();
    v5 = sub_1A47E502C();
    LOBYTE(v11) = 0;
    LemonadeCustomizationAction.rawValue.getter();
    v6 = sub_1A524CFC4();
    LemonadeCustomizationAnalyticsName.rawValue.getter(v6);
    v7 = sub_1A524CFC4();
    LOBYTE(v14) = 0;
    LemonadeCustomizationContentType.rawValue.getter(v7);
    v8 = sub_1A524CFC4();
    (*(*v5 + 136))(v6, 0, v7, v8, MEMORY[0x1E69E7CC0], v4);
  }

  return 1;
}

uint64_t sub_1A4268F74@<X0>(uint64_t result@<X0>, char *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v5 = *a2;
  v6 = *a3;
  v7 = a3[1];
  v8 = *(a3 + 16);
  *a5 = result;
  *(a5 + 8) = v5;
  *(a5 + 16) = v6;
  *(a5 + 24) = v7;
  *(a5 + 32) = v8;
  *(a5 + 40) = a4;
  return result;
}

uint64_t sub_1A4268FBC@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1A5248294();
  v3 = MEMORY[0x1EEE9AC00](v2);
  (*(v5 + 104))(&v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x1E697BF98], v3);
  sub_1A5248044();
  v6 = sub_1A5248054();
  return (*(*(v6 - 8) + 56))(a1, 0, 1, v6);
}

uint64_t sub_1A42690C8(uint64_t *a1, int a2)
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

uint64_t sub_1A4269110(uint64_t result, int a2, int a3)
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

uint64_t sub_1A4269170@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  *a4 = swift_getKeyPath();
  sub_1A4269D94(0, &qword_1EB128A80, sub_1A3D63A58, MEMORY[0x1E697DCB8]);
  swift_storeEnumTagMultiPayload();
  v8 = type metadata accessor for LemonadeCloudQuotaNotificationCell();
  *(a4 + v8[5]) = a1;
  *(a4 + v8[6]) = a2 & 1;
  v9 = v8[7];
  v10 = sub_1A5243934();
  v11 = *(*(v10 - 8) + 32);

  return v11(a4 + v9, a3, v10);
}

uint64_t type metadata accessor for LemonadeCloudQuotaNotificationCell()
{
  result = qword_1EB1B28F0;
  if (!qword_1EB1B28F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1A42692B0(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for LemonadeCloudQuotaNotificationCell();
  v4 = v3 - 8;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v3);
  sub_1A3D63A58(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = *(v1 + *(v4 + 28));

  sub_1A3FF29A0(v9);
  sub_1A426A108(v1, &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for LemonadeCloudQuotaNotificationCell);
  v10 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v11 = swift_allocObject();
  sub_1A426A170(&v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v11 + v10, type metadata accessor for LemonadeCloudQuotaNotificationCell);
  sub_1A4269A14();
  sub_1A4269A68();
  sub_1A524B144();

  sub_1A4269D00(v9, sub_1A3D63A58);

  v25 = 2;
  sub_1A4269C44(0, &qword_1EB127A38, MEMORY[0x1E697E610], MEMORY[0x1E697E608], MEMORY[0x1E69809C0]);
  sub_1A3D6F4F8();
  v12 = sub_1A5248204();
  v13 = sub_1A524A064();
  sub_1A4269B10();
  v15 = a1 + *(v14 + 36);
  *v15 = v12;
  *(v15 + 8) = v13;
  sub_1A52438C4();
  v17 = v16;
  sub_1A4269C98();
  v19 = (a1 + *(v18 + 36));
  v20 = *(sub_1A5248A14() + 20);
  v21 = *MEMORY[0x1E697F468];
  v22 = sub_1A52494A4();
  (*(*(v22 - 8) + 104))(&v19[v20], v21, v22);
  *v19 = v17;
  *(v19 + 1) = v17;
  sub_1A3E42C88();
  *&v19[*(v23 + 36)] = 256;
}

uint64_t sub_1A42695B4(uint64_t a1)
{
  sub_1A3D63A58(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for CloudQuotaNotificationItem();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for LemonadeCloudQuotaNotificationCell();
  sub_1A444BA38(v7);
  v8 = *(v7 + 1);

  sub_1A4269D00(v7, type metadata accessor for CloudQuotaNotificationItem);
  sub_1A426A108(a1, v4, sub_1A3D63A58);
  sub_1A3D63A8C(0);
  if ((*(*(v9 - 8) + 48))(v4, 1, v9) != 1)
  {
    sub_1A5245C94();
  }

  sub_1A4269D00(v4, sub_1A3D63A58);
  (*(*v8 + 96))(0);
}

id sub_1A42697B4()
{
  v0 = type metadata accessor for CloudQuotaNotificationItem();
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = (&v5 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1A444BA38(v2);
  v3 = *v2;
  sub_1A4269D00(v2, type metadata accessor for CloudQuotaNotificationItem);
  return v3;
}

double sub_1A4269850(uint64_t a1, char a2, uint64_t a3, char a4, id a5)
{
  if ((a2 & 1) == 0)
  {
    if (a4)
    {
      *&a3 = INFINITY;
    }

    [a5 sizeThatFits_];
  }

  return result;
}

uint64_t sub_1A42698B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1A426A0B4();

  return MEMORY[0x1EEDDAA28](a1, a2, a3, v6);
}

uint64_t sub_1A4269918(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1A426A0B4();

  return MEMORY[0x1EEDDA9B8](a1, a2, a3, v6);
}

void sub_1A426997C()
{
  sub_1A426A0B4();
  sub_1A52496F4();
  __break(1u);
}

uint64_t sub_1A42699A4(uint64_t a1, uint64_t a2)
{
  type metadata accessor for LemonadeCloudQuotaNotificationCell();

  return sub_1A42695B4(a2);
}

unint64_t sub_1A4269A14()
{
  result = qword_1EB136440;
  if (!qword_1EB136440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB136440);
  }

  return result;
}

unint64_t sub_1A4269A68()
{
  result = qword_1EB128DE8;
  if (!qword_1EB128DE8)
  {
    sub_1A3D63A58(255);
    sub_1A426A06C(&qword_1EB128E08, sub_1A3D63A8C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB128DE8);
  }

  return result;
}

void sub_1A4269B10()
{
  if (!qword_1EB136448)
  {
    sub_1A4269BA4();
    sub_1A4269C44(255, &qword_1EB145460, MEMORY[0x1E697E0B8], MEMORY[0x1E697E0A8], MEMORY[0x1E6980460]);
    v0 = sub_1A5248804();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB136448);
    }
  }
}

void sub_1A4269BA4()
{
  if (!qword_1EB136450)
  {
    sub_1A3D63A58(255);
    sub_1A4269A14();
    sub_1A4269A68();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB136450);
    }
  }
}

void sub_1A4269C44(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
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

void sub_1A4269C98()
{
  if (!qword_1EB136458)
  {
    sub_1A4269B10();
    sub_1A3E42C88();
    v0 = sub_1A5248804();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB136458);
    }
  }
}

uint64_t sub_1A4269D00(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1A4269D94(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1A4269E0C()
{
  sub_1A4269D94(319, &qword_1EB124740, sub_1A3D63A58, MEMORY[0x1E697DCC0]);
  if (v0 <= 0x3F)
  {
    type metadata accessor for LemonadeCloudQuotaNotificationModel();
    if (v1 <= 0x3F)
    {
      sub_1A5243934();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_1A4269EF0()
{
  result = qword_1EB136460;
  if (!qword_1EB136460)
  {
    sub_1A4269C98();
    sub_1A4269FA0();
    sub_1A426A06C(&qword_1EB128A00, sub_1A3E42C88);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB136460);
  }

  return result;
}

unint64_t sub_1A4269FA0()
{
  result = qword_1EB136468;
  if (!qword_1EB136468)
  {
    sub_1A4269B10();
    sub_1A3D63A58(255);
    sub_1A4269A14();
    sub_1A4269A68();
    swift_getOpaqueTypeConformance2();
    sub_1A400292C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB136468);
  }

  return result;
}

uint64_t sub_1A426A06C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1A426A0B4()
{
  result = qword_1EB136470;
  if (!qword_1EB136470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB136470);
  }

  return result;
}

uint64_t sub_1A426A108(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A426A170(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t LemonadeSearchBarWithSuggestionView.init(photoLibrary:style:updater:searchResultsDidChange:searchResultsContextualVideoThumbnailsDidChange:isScopedSearchDidChange:suggestionViewVisibilityDidChange:suggestionViewFrameDidChange:suggestionViewAdditionalOffsetXDidChange:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  v22 = type metadata accessor for LemonadeSearchBarWithSuggestionView();
  type metadata accessor for LemonadeActiveSearchViewModel(0);
  sub_1A5247C74();
  *a9 = a1;
  v23 = v22[5];
  v24 = sub_1A5242074();
  result = (*(*(v24 - 8) + 32))(&a9[v23], a2, v24);
  *&a9[v22[6]] = a3;
  v26 = &a9[v22[7]];
  *v26 = a4;
  *(v26 + 1) = a5;
  v27 = &a9[v22[8]];
  *v27 = a6;
  *(v27 + 1) = a7;
  v28 = &a9[v22[9]];
  *v28 = a8;
  *(v28 + 1) = a10;
  v29 = &a9[v22[10]];
  *v29 = a11;
  *(v29 + 1) = a12;
  v30 = &a9[v22[11]];
  *v30 = a13;
  *(v30 + 1) = a14;
  v31 = &a9[v22[12]];
  *v31 = a15;
  *(v31 + 1) = a16;
  return result;
}

uint64_t type metadata accessor for LemonadeSearchBarWithSuggestionView()
{
  result = qword_1EB160360;
  if (!qword_1EB160360)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t LemonadeSearchBarWithSuggestionView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v107 = a1;
  sub_1A426B3A4();
  v108 = *(v1 - 8);
  v109 = v1;
  MEMORY[0x1EEE9AC00](v1);
  v106 = v90 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A426B4E0();
  v104 = *(v3 - 8);
  v105 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v114 = v90 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A426B5CC();
  v102 = *(v5 - 1);
  v103 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v110 = v90 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v111 = sub_1A52437E4();
  v115 = *(v111 - 8);
  MEMORY[0x1EEE9AC00](v111);
  v101 = v90 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v99 = type metadata accessor for LemonadeSearchBarWithSuggestionView();
  v8 = *(v99 + 13);
  sub_1A426B6F8(0, &qword_1EB135CB8, type metadata accessor for LemonadeActiveSearchViewModel, MEMORY[0x1E697DA80]);
  v10 = v9;
  sub_1A5247CA4();
  v11 = v117;
  v12 = v118;
  v13 = v119;
  swift_getKeyPath();
  v145 = v11;
  v146 = v12;
  v147 = v13;
  v113 = MEMORY[0x1E6981948];
  sub_1A426B6F8(0, &qword_1EB135CC0, type metadata accessor for LemonadeActiveSearchViewModel, MEMORY[0x1E6981948]);
  sub_1A524B914();

  v100 = v142;
  v97 = v144;
  v98 = v143;

  v14 = v116;
  sub_1A5247CA4();
  v15 = v117;
  v16 = v118;
  v17 = v119;
  swift_getKeyPath();
  v139 = v15;
  v140 = v16;
  v141 = v17;
  sub_1A524B914();

  v95 = v137;
  v96 = v136;
  v94 = v138;

  v18 = v14;
  sub_1A5247CA4();
  v19 = v117;
  v20 = v118;
  v21 = v119;
  swift_getKeyPath();
  v133 = v19;
  v134 = v20;
  v135 = v21;
  sub_1A524B914();

  v92 = v131;
  v93 = v130;
  v91 = v132;

  sub_1A5247CA4();
  v22 = v117;
  v23 = v118;
  v24 = v119;
  swift_getKeyPath();
  v127 = v22;
  v128 = v23;
  v129 = v24;
  sub_1A524B914();

  v148 = v124;
  v149 = v125;
  v150 = v126;

  sub_1A5247CA4();
  v26 = v117;
  v25 = v118;
  v27 = v119;
  swift_getKeyPath();
  v121 = v26;
  v122 = v25;
  v123 = v27;
  sub_1A426B6F8(0, &qword_1EB1214F8, MEMORY[0x1E69C1CD0], v113);
  MEMORY[0x1EEE9AC00](v28 - 8);
  v90[3] = v90 - v29;
  sub_1A524B914();

  v30 = v18;
  sub_1A5247C84();
  LemonadeActiveSearchViewModel.container.getter(&v117);

  v31 = PhotosSearchBarLocalizedPlaceholder(_:)(&v117);
  v90[1] = v32;
  v90[2] = v31;
  sub_1A3C30A1C(&v117, &qword_1EB129AC0, sub_1A3C295A0);
  v112 = v10;
  v113 = v8;
  sub_1A5247C84();
  sub_1A3EA5B84();

  v33 = v99;
  v34 = *(v18 + *(v99 + 12) + 8);

  v89 = v34;
  v35 = v101;
  sub_1A52437D4();
  v36 = sub_1A426C0A8(&qword_1EB136490, MEMORY[0x1E69C2650]);
  v37 = v111;
  v100 = v36;
  sub_1A524A5A4();
  v38 = (*(v115 + 8))(v35, v37);
  v39 = *(v33 - 1);
  v40 = *(v39 + 64);
  MEMORY[0x1EEE9AC00](v38);
  sub_1A426B75C(v30, v90 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1A524CC54();
  v41 = sub_1A524CC44();
  v42 = *(v39 + 80);
  v43 = (v42 + 32) & ~v42;
  v101 = v40;
  v115 = v42;
  v44 = swift_allocObject();
  v45 = MEMORY[0x1E69E85E0];
  *(v44 + 16) = v41;
  *(v44 + 24) = v45;
  sub_1A426B7C0(v90 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0), v44 + v43);
  v46 = sub_1A524CCB4();
  v47 = *(v46 - 8);
  v48 = *(v47 + 64);
  MEMORY[0x1EEE9AC00](v46);
  v49 = (v48 + 15) & 0xFFFFFFFFFFFFFFF0;
  v50 = v90 - v49;
  sub_1A524CC74();
  if (__isPlatformVersionAtLeast(2, 26, 4, 0))
  {
    v98 = sub_1A52485C4();
    v99 = v90;
    v97 = *(v98 - 8);
    MEMORY[0x1EEE9AC00](v98);
    v96 = v46;
    v52 = v90 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
    v117 = 0;
    v118 = 0xE000000000000000;
    sub_1A524E404();

    v117 = 0xD000000000000041;
    v118 = 0x80000001A53CEEC0;
    *&v124 = 67;
    v53 = sub_1A524EA44();
    MEMORY[0x1A5907B60](v53);

    v55 = MEMORY[0x1EEE9AC00](v54);
    v56 = v90 - v49;
    v57 = v90 - v49;
    v58 = v96;
    (*(v47 + 16))(v56, v57, v96, v55);
    sub_1A52485B4();
    (*(v47 + 8))(v50, v58);
    v59 = v103;
    v60 = v114;
    (*(v102 + 32))(v114, v110, v103);
    sub_1A426BFEC(0, &qword_1EB136498, MEMORY[0x1EEE7B8D0]);
    (*(v97 + 32))(&v60[*(v61 + 36)], v52, v98);
  }

  else
  {
    sub_1A426BFEC(0, &qword_1EB1364A0, MEMORY[0x1E697C028]);
    v63 = v114;
    v64 = &v114[*(v62 + 36)];
    v65 = sub_1A5248394();
    (*(v47 + 32))(&v64[*(v65 + 20)], v90 - v49, v46);
    *v64 = &unk_1A53295A0;
    *(v64 + 1) = v44;
    v59 = v103;
    (*(v102 + 32))(v63, v110, v103);
  }

  v66 = ~v115;
  sub_1A426B6F8(0, &qword_1EB125F80, type metadata accessor for PhotosSearchResults, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v67 - 8);
  v69 = v90 - v68;
  sub_1A5247C84();
  LemonadeActiveSearchViewModel.searchResults.getter(v69);

  v70 = type metadata accessor for PhotosSearchResults(0);
  if ((*(*(v70 - 8) + 48))(v69, 1, v70) != 1)
  {
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  v71 = sub_1A3C30A1C(v69, &qword_1EB125F80, type metadata accessor for PhotosSearchResults);
  v102 = 0;
  v103 = v90;
  *&v124 = 0;
  v72 = v101;
  MEMORY[0x1EEE9AC00](v71);
  v110 = ((v72 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = (v90 - v110);
  v74 = v116;
  sub_1A426B75C(v116, v90 - v110);
  v75 = (v115 + 16) & v66;
  v76 = swift_allocObject();
  sub_1A426B7C0(v73, v76 + v75);
  sub_1A40EF414();
  v99 = v77;
  v117 = v111;
  v118 = v100;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v117 = v59;
  v118 = OpaqueTypeConformance2;
  v111 = swift_getOpaqueTypeConformance2();
  v79 = sub_1A426B680();
  v80 = v105;
  v81 = v106;
  v82 = v114;
  sub_1A524B154();

  (*(v104 + 8))(v82, v80);
  sub_1A5247C84();
  active = LemonadeActiveSearchViewModel.isScopedSearch.getter();

  LOBYTE(v124) = active;
  MEMORY[0x1EEE9AC00](v84);
  v85 = (v90 - v110);
  sub_1A426B75C(v74, v90 - v110);
  v86 = swift_allocObject();
  sub_1A426B7C0(v85, v86 + v75);
  v117 = v80;
  v118 = v99;
  v119 = v111;
  v120 = v79;
  swift_getOpaqueTypeConformance2();
  v87 = v109;
  sub_1A524B154();

  return (*(v108 + 8))(v81, v87);
}

uint64_t sub_1A426B208(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 24) = a3;
  sub_1A524CC54();
  *(v3 + 32) = sub_1A524CC44();
  v5 = sub_1A524CBC4();

  return MEMORY[0x1EEE6DFA0](sub_1A426B2A0, v5, v4);
}

uint64_t sub_1A426B2A0()
{
  v1 = *(v0 + 24);

  v2 = type metadata accessor for LemonadeSearchBarWithSuggestionView();
  sub_1A426B6F8(0, &qword_1EB135CB8, type metadata accessor for LemonadeActiveSearchViewModel, MEMORY[0x1E697DA80]);
  sub_1A5247C84();
  v3 = [objc_allocWithZone(MEMORY[0x1E6978A68]) initWithPhotoLibrary_];
  sub_1A3EA41E4(v3, *(v1 + *(v2 + 24)), 0, 0);

  v4 = *(v0 + 8);

  return v4();
}

void sub_1A426B3A4()
{
  if (!qword_1EB136478)
  {
    sub_1A426B4E0();
    sub_1A40EF414();
    sub_1A426B5CC();
    sub_1A52437E4();
    sub_1A426C0A8(&qword_1EB136490, MEMORY[0x1E69C2650]);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_1A426B680();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB136478);
    }
  }
}

void sub_1A426B4E0()
{
  if (!qword_1EB136480)
  {
    sub_1A426B5CC();
    sub_1A52437E4();
    sub_1A426C0A8(&qword_1EB136490, MEMORY[0x1E69C2650]);
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB136480);
    }
  }
}

void sub_1A426B5CC()
{
  if (!qword_1EB136488)
  {
    sub_1A52437E4();
    sub_1A426C0A8(&qword_1EB136490, MEMORY[0x1E69C2650]);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB136488);
    }
  }
}

unint64_t sub_1A426B680()
{
  result = qword_1EB131F50;
  if (!qword_1EB131F50)
  {
    sub_1A40EF414();
    sub_1A403594C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB131F50);
  }

  return result;
}

void sub_1A426B6F8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1A426B75C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LemonadeSearchBarWithSuggestionView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A426B7C0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LemonadeSearchBarWithSuggestionView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A426B824()
{
  v2 = *(type metadata accessor for LemonadeSearchBarWithSuggestionView() - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1A3D60150;

  return sub_1A426B208(v4, v5, v0 + v3);
}

uint64_t sub_1A426B8EC(uint64_t a1)
{
  sub_1A426B6F8(0, &qword_1EB125F80, type metadata accessor for PhotosSearchResults, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v25 - v6;
  v8 = type metadata accessor for LemonadeSearchBarWithSuggestionView();
  v25 = *(a1 + *(v8 + 28));
  sub_1A426B6F8(0, &qword_1EB135CB8, type metadata accessor for LemonadeActiveSearchViewModel, MEMORY[0x1E697DA80]);
  sub_1A5247C84();
  v9 = LemonadeActiveSearchViewModel.searchText.getter();

  v10 = [v9 string];

  v11 = sub_1A524C674();
  v13 = v12;

  v14 = HIBYTE(v13) & 0xF;
  if ((v13 & 0x2000000000000000) == 0)
  {
    v14 = v11 & 0xFFFFFFFFFFFFLL;
  }

  if (v14)
  {
    sub_1A5247C84();
    LemonadeActiveSearchViewModel.searchResults.getter(v7);

    v15 = type metadata accessor for PhotosSearchResults(0);
    if ((*(*(v15 - 8) + 48))(v7, 1, v15) != 1)
    {
      _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
    }

    sub_1A3C30A1C(v7, &qword_1EB125F80, type metadata accessor for PhotosSearchResults);
  }

  v25(0);

  v16 = *(a1 + *(v8 + 32));
  sub_1A5247C84();
  v17 = LemonadeActiveSearchViewModel.searchText.getter();

  v18 = [v17 string];

  v19 = sub_1A524C674();
  v21 = v20;

  v22 = HIBYTE(v21) & 0xF;
  if ((v21 & 0x2000000000000000) == 0)
  {
    v22 = v19 & 0xFFFFFFFFFFFFLL;
  }

  if (v22)
  {
    sub_1A5247C84();
    LemonadeActiveSearchViewModel.searchResults.getter(v4);

    v23 = type metadata accessor for PhotosSearchResults(0);
    if ((*(*(v23 - 8) + 48))(v4, 1, v23) != 1)
    {
      _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
    }

    sub_1A3C30A1C(v4, &qword_1EB125F80, type metadata accessor for PhotosSearchResults);
  }

  v16(0);
}

uint64_t sub_1A426BCA8()
{
  v1 = *(type metadata accessor for LemonadeSearchBarWithSuggestionView() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_1A426B8EC(v2);
}

uint64_t objectdestroy_14Tm_0()
{
  v1 = (type metadata accessor for LemonadeSearchBarWithSuggestionView() - 8);
  v2 = (v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80)));

  v3 = v1[7];
  v4 = sub_1A5242074();
  (*(*(v4 - 8) + 8))(v2 + v3, v4);

  v5 = v2 + v1[15];
  sub_1A426B6F8(0, &qword_1EB135CD8, type metadata accessor for LemonadeActiveSearchViewModel, MEMORY[0x1E6981E90]);
  (*(*(v6 - 8) + 8))(v5, v6);
  sub_1A426B6F8(0, &qword_1EB127210, type metadata accessor for LemonadeActiveSearchViewModel, MEMORY[0x1E6981E98]);

  return swift_deallocObject();
}

uint64_t sub_1A426BF0C()
{
  v1 = type metadata accessor for LemonadeSearchBarWithSuggestionView();
  v2 = *(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)) + *(v1 + 36));
  sub_1A426B6F8(0, &qword_1EB135CB8, type metadata accessor for LemonadeActiveSearchViewModel, MEMORY[0x1E697DA80]);
  sub_1A5247C84();
  active = LemonadeActiveSearchViewModel.isScopedSearch.getter();

  return v2(active);
}

void sub_1A426BFEC(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    sub_1A426B5CC();
    a3(255);
    v5 = sub_1A5248804();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

unint64_t sub_1A426C05C()
{
  result = qword_1EB140FF0;
  if (!qword_1EB140FF0)
  {
    sub_1A52485C4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB140FF0);
  }

  return result;
}

uint64_t sub_1A426C0A8(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1A426C138()
{
  sub_1A3C4B4AC();
  if (v0 <= 0x3F)
  {
    sub_1A5242074();
    if (v1 <= 0x3F)
    {
      sub_1A426B6F8(319, &qword_1EB125650, type metadata accessor for LemonadeActiveSearchUpdater, MEMORY[0x1E69E6720]);
      if (v2 <= 0x3F)
      {
        sub_1A3C3637C();
        if (v3 <= 0x3F)
        {
          sub_1A426B6F8(319, &qword_1EB135CB8, type metadata accessor for LemonadeActiveSearchViewModel, MEMORY[0x1E697DA80]);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1A426C2BC()
{
  if (!qword_1EB1364B8)
  {
    sub_1A426C378(255, &qword_1EB1364C0, sub_1A426C350);
    sub_1A426C844();
    v0 = sub_1A524BA74();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB1364B8);
    }
  }
}

void sub_1A426C378(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

void sub_1A426C3DC()
{
  if (!qword_1EB1364D0)
  {
    sub_1A426C470();
    sub_1A426C7FC(&qword_1EB136518, sub_1A426C470);
    v0 = sub_1A524B764();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB1364D0);
    }
  }
}

void sub_1A426C470()
{
  if (!qword_1EB1364D8)
  {
    sub_1A426C504(255);
    sub_1A426C7FC(&qword_1EB136510, sub_1A426C504);
    v0 = sub_1A524B784();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB1364D8);
    }
  }
}

void sub_1A426C538()
{
  if (!qword_1EB1364E8)
  {
    sub_1A426C5C8();
    sub_1A426C664();
    sub_1A426C77C();
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata, &qword_1EB1364E8);
    }
  }
}

void sub_1A426C5C8()
{
  if (!qword_1EB1364F0)
  {
    sub_1A426C664();
    sub_1A405D488(255, &qword_1EB121CC0);
    sub_1A426C6DC();
    sub_1A4176C5C();
    v0 = sub_1A524B624();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB1364F0);
    }
  }
}

void sub_1A426C664()
{
  if (!qword_1EB1364F8)
  {
    sub_1A405D430(255, &qword_1EB127868, &qword_1EB128960);
    v0 = sub_1A5248804();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB1364F8);
    }
  }
}

unint64_t sub_1A426C6DC()
{
  result = qword_1EB136500;
  if (!qword_1EB136500)
  {
    sub_1A426C664();
    sub_1A405D6B4(&qword_1EB127870, &qword_1EB127868, &qword_1EB128960);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB136500);
  }

  return result;
}

void sub_1A426C77C()
{
  if (!qword_1EB136508)
  {
    sub_1A3DF1888();
    sub_1A405D430(255, &qword_1EB127868, &qword_1EB128960);
    v0 = sub_1A5248804();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB136508);
    }
  }
}

uint64_t sub_1A426C7FC(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1A426C844()
{
  if (!qword_1EB136520)
  {
    sub_1A426C378(255, &qword_1EB136528, sub_1A426C8C0);
    v0 = sub_1A524DF24();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB136520);
    }
  }
}

void sub_1A426C908(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(void), uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a4();
    v11 = a5(a1, v9, v10);
    if (!v12)
    {
      atomic_store(v11, a2);
    }
  }
}

void sub_1A426C988()
{
  if (!qword_1EB136538)
  {
    sub_1A426CA08();
    sub_1A405D430(255, &qword_1EB127790, &qword_1EB126D60);
    v0 = sub_1A5248804();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB136538);
    }
  }
}

void sub_1A426CA08()
{
  if (!qword_1EB128710)
  {
    v0 = sub_1A5248804();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB128710);
    }
  }
}

unint64_t sub_1A426CA60()
{
  result = qword_1EB123850;
  if (!qword_1EB123850)
  {
    sub_1A426C988();
    sub_1A3FCAD48();
    sub_1A405D6B4(&qword_1EB1277A0, &qword_1EB127790, &qword_1EB126D60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB123850);
  }

  return result;
}

unint64_t sub_1A426CB00()
{
  result = qword_1EB136540;
  if (!qword_1EB136540)
  {
    sub_1A426C2BC();
    sub_1A426CB8C();
    sub_1A426CCE0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB136540);
  }

  return result;
}

unint64_t sub_1A426CB8C()
{
  result = qword_1EB136548;
  if (!qword_1EB136548)
  {
    sub_1A426C378(255, &qword_1EB1364C0, sub_1A426C350);
    sub_1A426CC30();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB136548);
  }

  return result;
}

unint64_t sub_1A426CC30()
{
  result = qword_1EB136550;
  if (!qword_1EB136550)
  {
    sub_1A426C350(255);
    sub_1A426C7FC(&qword_1EB136558, sub_1A426C3DC);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB136550);
  }

  return result;
}

unint64_t sub_1A426CCE0()
{
  result = qword_1EB136560;
  if (!qword_1EB136560)
  {
    sub_1A426C844();
    sub_1A426CD58();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB136560);
  }

  return result;
}

unint64_t sub_1A426CD58()
{
  result = qword_1EB136568;
  if (!qword_1EB136568)
  {
    sub_1A426C378(255, &qword_1EB136528, sub_1A426C8C0);
    sub_1A426C7FC(&qword_1EB136570, sub_1A426C8C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB136568);
  }

  return result;
}

uint64_t sub_1A426CE2C(uint64_t a1, uint64_t a2)
{
  v9[0] = sub_1A3C38BD4();
  v9[1] = v4;
  sub_1A3D5F9DC();
  v9[25] = sub_1A524A464();
  v9[26] = v5;
  v10 = v6 & 1;
  v11 = v7;
  sub_1A426D94C(a1, a2, v9);
  sub_1A426C378(0, &qword_1EB1364C0, sub_1A426C350);
  sub_1A426C844();
  sub_1A426CB8C();
  sub_1A426CCE0();
  return sub_1A524BA44();
}

void sub_1A426CF5C(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_1A426C350(0);
  v7 = v6 - 8;
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v23[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v24 = a1;
  v25 = a2;
  sub_1A426C470();
  sub_1A426C7FC(&qword_1EB136518, sub_1A426C470);
  sub_1A524B704();
  v10 = sub_1A524A0C4();
  sub_1A5247BC4();
  v11 = &v9[*(v7 + 44)];
  *v11 = v10;
  *(v11 + 1) = v12;
  *(v11 + 2) = v13;
  *(v11 + 3) = v14;
  *(v11 + 4) = v15;
  v11[40] = 0;
  v27 = a1;
  v28 = a2;
  sub_1A426E3E0(0, &qword_1EB1364A8, type metadata accessor for SharedLibraryStatusViewModel, MEMORY[0x1E6981790]);
  v16 = sub_1A524B6A4();
  v17 = (*(*v26 + 344))(v16);

  if (v17 & 1) != 0 || (v27 = a1, v28 = a2, v18 = sub_1A524B6A4(), v19 = (*(*v26 + 200))(v18), , (v19))
  {
    v20 = 1;
  }

  else
  {
    v27 = a1;
    v28 = a2;
    v21 = sub_1A524B6A4();
    v20 = (*(*v26 + 248))(v21);
  }

  sub_1A3CEA9B0(v9, a3);
  sub_1A426C378(0, &qword_1EB1364C0, sub_1A426C350);
  *(a3 + *(v22 + 36)) = v20 & 1;
}

id sub_1A426D214()
{
  v0 = objc_opt_self();

  return [v0 navigateToDestination:6 completion:0];
}

void sub_1A426D254(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v64 = a3;
  v5 = sub_1A5242274();
  v60 = *(v5 - 8);
  v61 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = sub_1A5242264();
  v8 = *(v59 - 8);
  MEMORY[0x1EEE9AC00](v59);
  v10 = (&v52 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1A426C77C();
  v62 = v11 - 8;
  MEMORY[0x1EEE9AC00](v11 - 8);
  v63 = &v52 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v52 - v14;
  sub_1A426C5C8();
  v66 = *(v16 - 8);
  v67 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v65 = &v52 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v52 = &v52 - v19;
  v68 = a1;
  v69 = a2;
  sub_1A426C664();
  sub_1A405D488(0, &qword_1EB121CC0);
  sub_1A426C6DC();
  sub_1A4176C5C();
  sub_1A524B5F4();
  v71 = a1;
  v72 = a2;
  sub_1A426E3E0(0, &qword_1EB1364A8, type metadata accessor for SharedLibraryStatusViewModel, MEMORY[0x1E6981790]);
  v20 = sub_1A524B6A4();
  v21 = (*(*v70 + 536))(v20);
  v23 = v22;

  v71 = v21;
  v72 = v23;
  sub_1A3D5F9DC();
  v24 = sub_1A524A464();
  v56 = v25;
  v57 = v24;
  v55 = v26;
  v58 = v27;
  v28 = objc_opt_self();
  v29 = [v28 secondaryLabelColor];
  v30 = sub_1A524B284();
  KeyPath = swift_getKeyPath();
  v71 = v30;
  v53 = sub_1A5248204();
  *v10 = 0x2E6E6F7276656863;
  v10[1] = 0xEF64726177726F66;
  v31 = v59;
  (*(v8 + 104))(v10, *MEMORY[0x1E69C1D38], v59);
  v33 = v60;
  v32 = v61;
  (*(v60 + 104))(v7, *MEMORY[0x1E69C1D50], v61);
  sub_1A5242B64();
  (*(v33 + 8))(v7, v32);
  (*(v8 + 8))(v10, v31);
  v34 = [v28 systemGrayColor];
  v35 = sub_1A524B284();
  v36 = swift_getKeyPath();
  v71 = v35;
  v37 = sub_1A5248204();
  v38 = &v15[*(v62 + 44)];
  v39 = v15;
  *v38 = v36;
  v38[1] = v37;
  v40 = v65;
  v41 = *(v66 + 16);
  v42 = v67;
  v41(v65, v52, v67);
  LOBYTE(v71) = 1;
  LOBYTE(v70) = v55 & 1;
  v43 = v63;
  sub_1A3CEAA14(v39, v63);
  v44 = v64;
  v41(v64, v40, v42);
  sub_1A426C538();
  v46 = &v44[v45[12]];
  v47 = v71;
  *v46 = 0;
  v46[8] = v47;
  v48 = &v44[v45[16]];
  LOBYTE(v35) = v70;
  v50 = v56;
  v49 = v57;
  *v48 = v57;
  *(v48 + 1) = v50;
  v48[16] = v35;
  v51 = KeyPath;
  *(v48 + 3) = v58;
  *(v48 + 4) = v51;
  *(v48 + 5) = v53;
  sub_1A3CEAA14(v43, &v44[v45[20]]);
  sub_1A3E75E68(v49, v50, v35);
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A426D8B8@<X0>(uint64_t *a1@<X8>)
{
  v2 = objc_opt_self();
  v3 = sub_1A524C634();
  v4 = [v2 px:v3 imageNamed:?];

  if (v4)
  {
    result = sub_1A524B524();
  }

  else
  {
    result = 0;
  }

  *a1 = result;
  return result;
}

__n128 sub_1A426D94C@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_1A52407E4();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = v35 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = v35 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = v35 - v17;
  v35[1] = a1;
  v35[2] = a2;
  sub_1A426DDA4();
  sub_1A5240714();
  sub_1A426C7FC(&qword_1EB136580, MEMORY[0x1E6968848]);
  LOBYTE(a2) = sub_1A524C594();
  v19 = *(v7 + 8);
  v19(v15, v6);
  v19(v18, v6);
  if (a2)
  {
    sub_1A426E3BC(&v45);
  }

  else
  {
    v35[0] = sub_1A5249574();
    v42 = 1;
    sub_1A426DDA4();
    sub_1A426DF24();
    sub_1A5240724();
    v19(v9, v6);
    v19(v12, v6);
    sub_1A426E020();
    sub_1A5240724();
    v19(v12, v6);
    v19(v15, v6);
    v20 = sub_1A524A454();
    v22 = v21;
    v24 = v23;
    v26 = v25;
    KeyPath = swift_getKeyPath();
    v24 &= 1u;
    LOBYTE(v45) = v24;
    LOBYTE(v36) = 1;
    v28 = v42;
    sub_1A524BC84();
    sub_1A5248AD4();
    *(&v43[6] + 7) = *&v43[21];
    *(&v43[8] + 7) = *&v43[23];
    *(&v43[10] + 7) = *&v43[25];
    *(&v43[12] + 7) = v44;
    *(v43 + 7) = *&v43[15];
    *(&v43[2] + 7) = *&v43[17];
    *(&v43[4] + 7) = *&v43[19];
    *&v41[65] = *&v43[8];
    *&v41[81] = *&v43[10];
    *&v41[97] = *&v43[12];
    *&v41[1] = *v43;
    *&v41[17] = *&v43[2];
    *&v41[33] = *&v43[4];
    v36 = v35[0];
    v37.n128_u8[0] = v28;
    v37.n128_u64[1] = v20;
    *&v38 = v22;
    BYTE8(v38) = v24;
    *&v39 = v26;
    WORD4(v39) = 256;
    v40 = KeyPath;
    v41[0] = 1;
    *&v41[112] = *(&v44 + 1);
    *&v41[49] = *&v43[6];
    PXDisplayCollectionDetailedCountsMake(&v36);
    v55 = *&v41[80];
    v56 = *&v41[96];
    v57 = *&v41[112];
    v51 = *&v41[16];
    v52 = *&v41[32];
    v53 = *&v41[48];
    v54 = *&v41[64];
    v47 = v38;
    v48 = v39;
    v49 = v40;
    v50 = *v41;
    v45 = v36;
    v46 = v37;
  }

  v29 = v56;
  *(a3 + 160) = v55;
  *(a3 + 176) = v29;
  *(a3 + 192) = v57;
  v30 = v52;
  *(a3 + 96) = v51;
  *(a3 + 112) = v30;
  v31 = v54;
  *(a3 + 128) = v53;
  *(a3 + 144) = v31;
  v32 = v48;
  *(a3 + 32) = v47;
  *(a3 + 48) = v32;
  v33 = v50;
  *(a3 + 64) = v49;
  *(a3 + 80) = v33;
  result = v46;
  *a3 = v45;
  *(a3 + 16) = result;
  return result;
}

uint64_t sub_1A426DDA4()
{
  v0 = sub_1A52408C4();
  MEMORY[0x1EEE9AC00](v0 - 8);
  sub_1A426E3E0(0, &qword_1EB1364A8, type metadata accessor for SharedLibraryStatusViewModel, MEMORY[0x1E6981790]);
  v1 = sub_1A524B6A4();
  (*(*v3 + 488))(v1);

  sub_1A52408B4();
  sub_1A52407F4();
  sub_1A524A254();
  sub_1A3EE43D8();
  sub_1A5240814();
  sub_1A524B3D4();
  sub_1A3EE4384();
  return sub_1A5240814();
}

uint64_t sub_1A426DF24()
{
  v0 = sub_1A52408C4();
  MEMORY[0x1EEE9AC00](v0 - 8);
  sub_1A3C38BD4();
  sub_1A52408B4();
  sub_1A52407F4();
  sub_1A524A254();
  sub_1A3EE43D8();
  sub_1A5240814();
  sub_1A524B3D4();
  sub_1A3EE4384();
  return sub_1A5240814();
}

uint64_t sub_1A426E020()
{
  sub_1A426E3E0(0, &unk_1EB12B250, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = v9 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = v9 - v4;
  v6 = sub_1A52408C4();
  MEMORY[0x1EEE9AC00](v6 - 8);
  sub_1A3C38BD4();
  sub_1A52408B4();
  sub_1A52407F4();
  v7 = PXSharedLibraryLearnMoreURLString();
  sub_1A524C674();

  sub_1A5240E34();

  sub_1A426E444(v5, v2);
  sub_1A426E4D8();
  sub_1A5240814();
  sub_1A3D75F5C(v5);
  v9[1] = sub_1A524A254();
  sub_1A3EE43D8();
  return sub_1A5240814();
}

uint64_t sub_1A426E1FC()
{
  type metadata accessor for SharedLibraryStatusViewModel();
  sub_1A524B694();
  return v1;
}

uint64_t sub_1A426E254()
{
  sub_1A426C274(0);
  v2 = v1;
  v3 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v8[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = v0[1];
  v9 = *v0;
  v10 = v6;
  sub_1A426C2BC();
  sub_1A426CB00();
  sub_1A524A294();
  sub_1A426C7FC(&qword_1EB136578, sub_1A426C274);
  sub_1A524ADD4();
  return (*(v3 + 8))(v5, v2);
}

double sub_1A426E3BC(uint64_t a1)
{
  *(a1 + 192) = 0;
  result = 0.0;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

void sub_1A426E3E0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1A426E444(uint64_t a1, uint64_t a2)
{
  sub_1A426E3E0(0, &unk_1EB12B250, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1A426E4D8()
{
  result = qword_1EB136588;
  if (!qword_1EB136588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB136588);
  }

  return result;
}

void sub_1A426E52C(uint64_t a1@<X8>)
{
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);
  *a1 = sub_1A5249314();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  sub_1A426E584();
  sub_1A426D254(v4, v3, (a1 + *(v5 + 44)));
}

void sub_1A426E584()
{
  if (!qword_1EB136590)
  {
    sub_1A426C504(255);
    v0 = sub_1A52483B4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB136590);
    }
  }
}

uint64_t sub_1A426E5EC@<X0>(uint64_t a1@<X8>)
{
  sub_1A426E3E0(0, &qword_1EB1364A8, type metadata accessor for SharedLibraryStatusViewModel, MEMORY[0x1E6981790]);
  v2 = sub_1A524B6A4();
  (*(*v13 + 440))(v2);

  sub_1A3D5F9DC();
  v3 = sub_1A524A464();
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = [objc_opt_self() labelColor];
  sub_1A524B284();
  KeyPath = swift_getKeyPath();
  result = sub_1A5248204();
  *a1 = v3;
  *(a1 + 8) = v5;
  *(a1 + 16) = v7 & 1;
  *(a1 + 24) = v9;
  *(a1 + 32) = KeyPath;
  *(a1 + 40) = result;
  return result;
}

id sub_1A426E760()
{
  sub_1A426EFF0();
  MEMORY[0x1EEE9AC00](v1 - 8);
  v23 = v18 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1A524C2C4();
  MEMORY[0x1EEE9AC00](v3);
  v22 = v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v6 = sub_1A524C314();
  v7 = *(v6 - 8);
  *&v8 = MEMORY[0x1EEE9AC00](v6).n128_u64[0];
  v10 = v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = [v0 presentationEnvironment];
  if (v11)
  {
    v12 = v11;
    v21 = v10;
    v13 = OBJC_IVAR____TtC12PhotosUICore35SocialGroupAddPeopleActionPerformer_additionalPeopleToFilter;
    swift_beginAccess();
    v24 = *&v0[v13];
    if (v24)
    {
      v14 = OBJC_IVAR____TtC12PhotosUICore35SocialGroupAddPeopleActionPerformer_photoLibrary;
      swift_beginAccess();
      if (*&v0[v14])
      {
        v20 = v7;
        v18[0] = v12;
        if (v24 >> 62)
        {
          v19 = sub_1A524E2B4();
        }

        else
        {
          v19 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
      }
    }

    sub_1A524D244();
    v15 = *sub_1A3CAA3FC();
    sub_1A5246DF4();

    [v0 completeUserInteractionTaskWithSuccess:0 error:0];
    return swift_unknownObjectRelease();
  }

  else
  {
    sub_1A524D244();
    v17 = *sub_1A3CAA3FC();
    sub_1A5246DF4();

    return [v0 completeUserInteractionTaskWithSuccess:0 error:0];
  }
}

void sub_1A426EFF0()
{
  if (!qword_1EB120E50)
  {
    sub_1A524C314();
    v0 = sub_1A524DF24();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB120E50);
    }
  }
}

void sub_1A426F048()
{
  sub_1A524D224();
  v0 = *sub_1A3CAA3FC();
  sub_1A5246DF4();
}

char *sub_1A426F10C(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_1A524E2B4();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = MEMORY[0x1E69E7CC0];
  if (!v2)
  {
    return v3;
  }

  v13 = MEMORY[0x1E69E7CC0];
  result = sub_1A3D3E490(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = v13;
    if ((a1 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v2; ++i)
      {
        MEMORY[0x1A59097F0](i, a1);
        sub_1A3C52C70(0, &qword_1EB1265C0);
        swift_dynamicCast();
        v13 = v3;
        v7 = *(v3 + 16);
        v6 = *(v3 + 24);
        if (v7 >= v6 >> 1)
        {
          sub_1A3D3E490((v6 > 1), v7 + 1, 1);
          v3 = v13;
        }

        *(v3 + 16) = v7 + 1;
        sub_1A3C57128(v12, (v3 + 32 * v7 + 32));
      }
    }

    else
    {
      v8 = (a1 + 32);
      sub_1A3C52C70(0, &qword_1EB1265C0);
      do
      {
        v9 = *v8;
        swift_dynamicCast();
        v13 = v3;
        v11 = *(v3 + 16);
        v10 = *(v3 + 24);
        if (v11 >= v10 >> 1)
        {
          sub_1A3D3E490((v10 > 1), v11 + 1, 1);
          v3 = v13;
        }

        *(v3 + 16) = v11 + 1;
        sub_1A3C57128(v12, (v3 + 32 * v11 + 32));
        ++v8;
        --v2;
      }

      while (v2);
    }

    return v3;
  }

  __break(1u);
  return result;
}

id sub_1A426F308(uint64_t a1, uint64_t a2, void *a3)
{
  ObjectType = swift_getObjectType();
  *&v3[OBJC_IVAR____TtC12PhotosUICore35SocialGroupAddPeopleActionPerformer_additionalPeopleToFilter] = 0;
  *&v3[OBJC_IVAR____TtC12PhotosUICore35SocialGroupAddPeopleActionPerformer_photoLibrary] = 0;
  *&v3[OBJC_IVAR____TtC12PhotosUICore35SocialGroupAddPeopleActionPerformer_peopleToAdd] = 0;
  *&v3[OBJC_IVAR____TtC12PhotosUICore35SocialGroupAddPeopleActionPerformer_error] = 0;
  *&v3[OBJC_IVAR____TtC12PhotosUICore35SocialGroupAddPeopleActionPerformer_mutationActionDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v6 = sub_1A524C634();

  type metadata accessor for PXActionParameterKey();
  sub_1A426FD20(&unk_1EB1356B0, 255, type metadata accessor for PXActionParameterKey);
  v7 = sub_1A524C3D4();

  v10.receiver = v3;
  v10.super_class = ObjectType;
  v8 = objc_msgSendSuper2(&v10, sel_initWithActionType_assetCollectionReference_parameters_, v6, a3, v7);

  return v8;
}

BOOL sub_1A426F59C(_BOOL8 result)
{
  if (result)
  {
    v1 = result;
    type metadata accessor for PeopleUtilities();
    v2 = v1;
    v3 = sub_1A3C6E9EC();
    v4 = sub_1A3D782CC(v2, v3);
    v5 = *sub_1A468090C();
    v6 = [v4 count];

    return v6 < v5;
  }

  return result;
}

id sub_1A426F658(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = [v3 socialGroups];
  if (!v6 || (v7 = v6, v8 = [v6 photoLibrary], v7, !v8))
  {
    v9 = OBJC_IVAR____TtC12PhotosUICore35SocialGroupAddPeopleActionPerformer_photoLibrary;
    swift_beginAccess();
    v10 = *&v3[v9];
    v11 = v10;
    if (!v10)
    {
      goto LABEL_18;
    }

    v8 = v11;
  }

  v12 = *(a2 + 16);
  if (v12)
  {
    v33 = a1;
    v13 = *(sub_1A524C214() - 8);
    v14 = a2 + ((*(v13 + 80) + 32) & ~*(v13 + 80));
    v15 = *(v13 + 72);
    v16 = MEMORY[0x1E69E7CC0];
    do
    {
      v18 = sub_1A524C204();
      if (v19)
      {
        v20 = v18;
        v21 = v19;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v16 = sub_1A3D3D914(0, *(v16 + 2) + 1, 1, v16);
        }

        v23 = *(v16 + 2);
        v22 = *(v16 + 3);
        if (v23 >= v22 >> 1)
        {
          v16 = sub_1A3D3D914((v22 > 1), v23 + 1, 1, v16);
        }

        *(v16 + 2) = v23 + 1;
        v17 = &v16[16 * v23];
        *(v17 + 4) = v20;
        *(v17 + 5) = v21;
      }

      v14 += v15;
      --v12;
    }

    while (v12);
    v24 = [v8 librarySpecificFetchOptions];
    v25 = [objc_opt_self() px_defaultDetectionTypes];
    if (!v25)
    {
      sub_1A3C52C70(0, &qword_1EB126610);
      sub_1A524CA34();
      v25 = sub_1A524CA14();
    }

    [v24 setIncludedDetectionTypes_];

    v26 = objc_opt_self();
    v27 = sub_1A524CA14();

    v28 = [v26 fetchPersonsWithLocalIdentifiers:v27 options:v24];

    v29 = OBJC_IVAR____TtC12PhotosUICore35SocialGroupAddPeopleActionPerformer_peopleToAdd;
    swift_beginAccess();
    v8 = *&v3[v29];
    *&v3[v29] = v28;
    a1 = v33;
  }

LABEL_18:
  v30 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = sub_1A426FD68;
  aBlock[5] = v30;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1A3C2E0D0;
  aBlock[3] = &block_descriptor_3_2;
  v31 = _Block_copy(aBlock);

  [a1 dismissViewControllerAnimated:1 completion:v31];
  _Block_release(v31);
  return [v3 completeUserInteractionTaskWithSuccess:1 error:0];
}

uint64_t sub_1A426F9F4(void *a1)
{
  v1 = [a1 librarySpecificFetchOptions];
  v2 = [objc_opt_self() sortDescriptorsForManualSort];
  if (!v2)
  {
    sub_1A3C52C70(0, &qword_1EB126B60);
    sub_1A524CA34();
    v2 = sub_1A524CA14();
  }

  [v1 setSortDescriptors_];

  [v1 setPersonContext_];
  v3 = [objc_opt_self() px_defaultDetectionTypes];
  if (!v3)
  {
    sub_1A3C52C70(0, &qword_1EB126610);
    sub_1A524CA34();
    v3 = sub_1A524CA14();
  }

  [v1 setIncludedDetectionTypes_];

  v4 = [objc_opt_self() fetchPersonsWithOptions_];
  v5 = [v4 fetchedObjects];
  if (v5)
  {
    v6 = v5;
    sub_1A3C52C70(0, &qword_1EB1265C0);
    v7 = sub_1A524CA34();

    v4 = v6;
  }

  else
  {
    v7 = MEMORY[0x1E69E7CC0];
  }

  return v7;
}

uint64_t sub_1A426FBC8(unint64_t a1, void *a2)
{
  type metadata accessor for PeopleUtilities();
  v4 = sub_1A3D78460(a2);
  PeopleSorter.init(sortOrder:)(v4, &v13);
  sub_1A426F10C(a1);
  v5 = objc_allocWithZone(MEMORY[0x1E69788E0]);
  v6 = sub_1A524CA14();

  v7 = [v5 initWithObjects:v6 photoLibrary:a2 fetchType:0 fetchPropertySets:0 identifier:0 registerIfNeeded:0];

  v8 = PeopleSorter.sort(fetchResult:)(v7);
  v9 = [v8 fetchedObjects];
  if (v9)
  {
    v10 = v9;
    sub_1A3C52C70(0, &qword_1EB1265C0);
    v11 = sub_1A524CA34();

    v7 = v8;
    v8 = v10;
  }

  else
  {
    v11 = MEMORY[0x1E69E7CC0];
  }

  return v11;
}

uint64_t sub_1A426FD20(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1A426FD68()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = OBJC_IVAR____TtC12PhotosUICore35SocialGroupAddPeopleActionPerformer_peopleToAdd;
    swift_beginAccess();
    v3 = *&v1[v2];
    if (v3)
    {
      v4 = &v1[OBJC_IVAR____TtC12PhotosUICore35SocialGroupAddPeopleActionPerformer_mutationActionDelegate];
      swift_beginAccess();
      if (swift_unknownObjectWeakLoadStrong())
      {
        v5 = *(v4 + 1);
        ObjectType = swift_getObjectType();
        v7 = v3;
        v8 = [v1 success];
        v9 = OBJC_IVAR____TtC12PhotosUICore35SocialGroupAddPeopleActionPerformer_error;
        swift_beginAccess();
        v10 = *&v1[v9];
        v11 = *(v5 + 8);
        v12 = v7;
        v13 = v10;
        v11(v8, v10, v3, ObjectType, v5);

        swift_unknownObjectRelease();
      }
    }
  }
}

uint64_t sub_1A426FECC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X8>)
{
  *a7 = a1;
  *(a7 + 8) = a6;
  *(a7 + 40) = a5;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  *(a7 + 48) = swift_getAssociatedConformanceWitness();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((a7 + 16));
  result = (*(*(a5 - 8) + 32))(boxed_opaque_existential_1, a2, a5);
  *(a7 + 56) = a3;
  *(a7 + 64) = a4;
  return result;
}

id sub_1A426FFD0(char *a1, uint64_t a2)
{
  sub_1A40730A4(0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v24[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v8 = *a1;
  v9 = *v2;
  v10 = *(v2 + 8);
  type metadata accessor for SearchResultItemListManager();
  v11 = swift_dynamicCastClass();
  if (v11)
  {
    v12 = v11;
    sub_1A3C341C8(v2 + 16, v24);
    sub_1A3D8F9B8();
    type metadata accessor for SearchResultItem();
    swift_unknownObjectRetain();
    if (swift_dynamicCast())
    {
      v13 = v23;
      sub_1A4271E88(0, &qword_1EB1365C8, type metadata accessor for PhotosPagingViewConfiguration);
      v14 = swift_allocObject();
      *(v14 + 16) = v8;
      *(v14 + 24) = a2;
      v24[0] = v8;
      swift_unknownObjectRetain();

      v15 = sub_1A41FE5EC();
      v16 = sub_1A3EA80D8(v12, sub_1A4271D60, v14, sub_1A4271E7C, v13, v15, 0);
      sub_1A4271E88(0, &qword_1EB1365D0, type metadata accessor for PhotosPagingViewController);

      sub_1A46535F0(v7);
      sub_1A4998CE0(v16);
    }

    swift_unknownObjectRelease();
  }

  ObjectType = swift_getObjectType();
  v18 = *(v2 + 40);
  v19 = *(v2 + 48);
  v20 = __swift_project_boxed_opaque_existential_1((v2 + 16), v18);
  v21 = *(v2 + 56);
  v24[0] = v8;
  return sub_1A4270FC0(v9, v20, v21, v24, a2, *(v2 + 64), ObjectType, v18, v10, v19);
}

void sub_1A4270314(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = type metadata accessor for SearchResultItem();
  v11 = swift_retain_n();
  v12 = sub_1A44B6AA8(v11, 1);
  *(a5 + 40) = v10;
  *(a5 + 48) = sub_1A4271F24(&qword_1EB12A4C0, type metadata accessor for SearchResultItem);
  *(a5 + 16) = v12;
  *(a5 + 56) = a3;
  *(a5 + 64) = a4;
  type metadata accessor for SearchResultItemListManager();
  SearchResultItemListManager.__allocating_init(photoLibraryContext:singlePersonItem:)(a2, a1);
}

id sub_1A4270424(void *a1)
{
  v2 = sub_1A524CA14();
  v3 = sub_1A524C634();
  result = [a1 photoLibrary];
  if (result)
  {
    v5 = result;
    v6 = [objc_opt_self() transientCollectionListWithCollections:v2 title:v3 identifier:0 photoLibrary:result];

    sub_1A4271F6C(0, &qword_1EB129F78, &qword_1EB1265C0, 0x1E6978980, type metadata accessor for PhotoKitItemListManager);
    v27 = 0;
    memset(v26, 0, sizeof(v26));
    LOBYTE(v15) = 2;
    v7 = v6;
    sub_1A3C6C180(&v16);
    v24 = v16;
    v25 = v17;
    sub_1A3C6C18C(&v22);
    v20 = v22;
    v21 = v23;
    v8 = sub_1A3C5A374();
    v9 = sub_1A3C30368();
    v10 = sub_1A3C5A374();
    v11 = sub_1A3C5A374();
    v12 = sub_1A3C5A374();
    PhotoKitItemListManagerOptions.init(relationship:referencePerson:metadata:initialFetchLimit:metadataImmediateFetchSize:excludeEmptyItems:promisedSortOrder:curationContext:shouldPrepareCounts:isTransient:isFeaturedContent:assetFilterPredicate:)(&v24, 0, &unk_1F1700E18, 0, 1, &v20, v8 & 1, &v15, v19, v9, v10 & 1, v11 & 1, v12 & 1, 0);
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v13 = swift_allocObject();
    *(v13 + 16) = a1;
    v14 = a1;
    PhotoKitItemListManager.__allocating_init(container:libraryFilterState:userData:options:sorter:fetchResultProvider:)(v7, 0, v26, v19, &v16, sub_1A4272534, v13);
  }

  __break(1u);
  return result;
}

id sub_1A4270930(void *a1)
{
  v2 = sub_1A524CA14();
  v3 = sub_1A524C634();
  result = [a1 photoLibrary];
  if (result)
  {
    v5 = result;
    v6 = [objc_opt_self() transientCollectionListWithCollections:v2 title:v3 identifier:0 photoLibrary:result];

    sub_1A4271F6C(0, &qword_1EB129FC0, &qword_1EB126C28, 0x1E6978AD8, type metadata accessor for PhotoKitItemListManager);
    v27 = 0;
    memset(v26, 0, sizeof(v26));
    LOBYTE(v15) = 2;
    v7 = v6;
    sub_1A3C6C180(&v16);
    v24 = v16;
    v25 = v17;
    sub_1A3C6C18C(&v22);
    v20 = v22;
    v21 = v23;
    v8 = sub_1A3C5A374();
    v9 = sub_1A3C30368();
    v10 = sub_1A3C5A374();
    v11 = sub_1A3C5A374();
    v12 = sub_1A3C5A374();
    PhotoKitItemListManagerOptions.init(relationship:referencePerson:metadata:initialFetchLimit:metadataImmediateFetchSize:excludeEmptyItems:promisedSortOrder:curationContext:shouldPrepareCounts:isTransient:isFeaturedContent:assetFilterPredicate:)(&v24, 0, &unk_1F1700E40, 0, 1, &v20, v8 & 1, &v15, v19, v9, v10 & 1, v11 & 1, v12 & 1, 0);
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v13 = swift_allocObject();
    *(v13 + 16) = a1;
    v14 = a1;
    PhotoKitItemListManager.__allocating_init(container:libraryFilterState:userData:options:sorter:fetchResultProvider:)(v7, 0, v26, v19, &v16, sub_1A42723F8, v13);
  }

  __break(1u);
  return result;
}

uint64_t static LemonadePeoplePhotosPagingGridConfiguration.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 == *a2)
  {
    __swift_project_boxed_opaque_existential_1(a1 + 2, a1[5]);
    __swift_project_boxed_opaque_existential_1(a2 + 2, a2[5]);
    sub_1A5246284();
  }

  return 0;
}

uint64_t LemonadePeoplePhotosPagingGridConfiguration.hashValue.getter()
{
  sub_1A524EC94();
  MEMORY[0x1A590A010](*v0);
  return sub_1A524ECE4();
}

uint64_t sub_1A4270EB4()
{
  sub_1A524EC94();
  MEMORY[0x1A590A010](*v0);
  return sub_1A524ECE4();
}

uint64_t sub_1A4270EF8()
{
  sub_1A524EC94();
  MEMORY[0x1A590A010](*v0);
  return sub_1A524ECE4();
}

uint64_t sub_1A4270F38(void *a1, void *a2)
{
  if (*a1 == *a2)
  {
    __swift_project_boxed_opaque_existential_1(a1 + 2, a1[5]);
    __swift_project_boxed_opaque_existential_1(a2 + 2, a2[5]);
    sub_1A5246284();
  }

  return 0;
}

id sub_1A4270FC0(uint64_t a1, char *a2, int a3, _BYTE *a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v63 = a8;
  v64 = a4;
  v58 = a5;
  v59 = a6;
  v62 = a3;
  v60 = a1;
  v61 = a2;
  v57 = a10;
  sub_1A40730A4(0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v53 = &v53 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(a8 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v53 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = a7;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v55 = *(AssociatedTypeWitness - 8);
  v19 = *(v55 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v20 = &v53 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x1EEE9AC00](v21);
  v24 = &v53 - v23;
  v25 = v63;
  LOBYTE(a7) = *v64;
  LODWORD(v64) = *v64;
  (*(v14 + 16))(v17, v61, v63, v22);
  swift_dynamicCast();
  v26 = v65;
  v54 = a9;
  v56 = type metadata accessor for PhotosPagingViewConfiguration();
  v27 = swift_allocObject();
  *(v27 + 16) = v26;
  *(v27 + 24) = v25;
  *(v27 + 32) = a9;
  v29 = v57;
  v28 = v58;
  *(v27 + 40) = v57;
  *(v27 + 48) = a7;
  v30 = v59;
  *(v27 + 56) = v28;
  *(v27 + 64) = v30;
  v31 = v55;
  v32 = *(v55 + 16);
  v61 = v24;
  v32(v20, v24, AssociatedTypeWitness);
  v33 = (*(v31 + 80) + 48) & ~*(v31 + 80);
  v34 = swift_allocObject();
  v35 = v63;
  *(v34 + 2) = v65;
  *(v34 + 3) = v35;
  *(v34 + 4) = v54;
  *(v34 + 5) = v29;
  v36 = *(v31 + 32);
  v63 = AssociatedTypeWitness;
  v36(&v34[v33], v20);
  v67 = v64;
  v37 = v30;
  v38 = v60;
  swift_unknownObjectRetain();

  v39 = sub_1A41FE5EC();
  v40 = v34;
  v41 = v62;
  v42 = sub_1A3EA80D8(v38, sub_1A4272774, v27, sub_1A427286C, v40, v39, 0);
  v43 = v42;
  if ((v41 & 1) == 0)
  {
    type metadata accessor for PhotosPagingViewController();

    sub_1A46535F0(v53);
    sub_1A4998CE0(v43);
  }

  v44 = v61;
  v45 = (*(*v42 + 144))(v61);
  v46 = objc_allocWithZone(PXPhotosUIViewController);
  v47 = [v46 initWithConfiguration_];

  if (sub_1A42714A8(v63))
  {
    PeopleUnifiedItem.title.getter();
    if (v48)
    {
      v49 = sub_1A524C634();
    }

    else
    {
      v49 = 0;
    }

    [v47 setTitle_];
  }

  v66 = v64;
  v50 = sub_1A472901C();
  v51 = sub_1A44AE5E0(v47, v50, v41 & 1);

  (*(v31 + 8))(v44, v63);
  return v51;
}

uint64_t sub_1A42714A8(uint64_t a1)
{
  v2 = v1;
  v4 = *(a1 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v19 - v8;
  v11 = MEMORY[0x1EEE9AC00](v10);
  v12 = *(v4 + 16);
  v12(&v19 - v13, v2, a1, v11);
  type metadata accessor for PeopleUnifiedItem();
  if (swift_dynamicCast())
  {
    return v20;
  }

  (v12)(v9, v2, a1);
  sub_1A4271F6C(0, &qword_1EB125C30, &qword_1EB1265C0, 0x1E6978980, type metadata accessor for PhotoKitItem);
  if (swift_dynamicCast())
  {
    v15 = v20;
    v16 = sub_1A3C5A374();
    return sub_1A44B6AA8(v15, v16 & 1);
  }

  else
  {
    (v12)(v6, v2, a1);
    sub_1A4271F6C(0, &qword_1EB125C68, &qword_1EB126C28, 0x1E6978AD8, type metadata accessor for PhotoKitItem);
    if (swift_dynamicCast())
    {
      v17 = v20;
      v18 = sub_1A3C5A374();
      return sub_1A44B6AEC(v17, v18 & 1);
    }

    else
    {
      return 0;
    }
  }
}

__n128 sub_1A42716F0@<Q0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v4 = *a2;
  v5 = *(a1 + 48);
  *(a4 + 32) = *(a1 + 32);
  *(a4 + 48) = v5;
  *(a4 + 64) = *(a1 + 64);
  result = *(a1 + 16);
  *a4 = *a1;
  *(a4 + 16) = result;
  *(a4 + 72) = v4;
  *(a4 + 80) = a3;
  return result;
}

uint64_t sub_1A427174C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1A42723A4();

  return MEMORY[0x1EEDDB778](a1, a2, a3, v6);
}

uint64_t sub_1A42717B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1A42723A4();

  return MEMORY[0x1EEDDB740](a1, a2, a3, v6);
}

void sub_1A4271814()
{
  sub_1A42723A4();
  sub_1A5249ED4();
  __break(1u);
}

void sub_1A427183C(uint64_t a1, void *a2)
{
  sub_1A40730A4(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v16 = v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for LemonadeNavigationDestination();
  MEMORY[0x1EEE9AC00](v15);
  v14[3] = v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = objc_opt_self();
  v7 = sub_1A524CA14();
  v8 = sub_1A524C634();
  v9 = [a2 photoLibrary];
  v10 = [v6 transientCollectionListWithCollections:v7 title:v8 identifier:0 photoLibrary:v9];

  sub_1A4271F6C(0, &qword_1EB129F78, &qword_1EB1265C0, 0x1E6978980, type metadata accessor for PhotoKitItemListManager);
  v20 = 0;
  memset(v19, 0, sizeof(v19));
  memset(v18, 0, sizeof(v18));
  v11 = swift_allocObject();
  *(v11 + 16) = a2;
  v12 = sub_1A3C52C70(0, &qword_1EB1265C0);
  v13 = v10;
  v14[2] = v13;
  v14[1] = a2;
  sub_1A43FD8EC(&v17, v12);
  PhotoKitItemListManager.__allocating_init(container:libraryFilterState:userData:options:sorter:fetchResultProvider:)(v13, 0, v19, &v17, v18, sub_1A4272998, v11);
}

uint64_t sub_1A4271D60()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  SearchResultItem.value.getter(&v11);
  v3 = v11;
  if (v11)
  {
    objc_opt_self();
    v4 = swift_dynamicCastObjCClass();
    if (v4)
    {
      v5 = v4;
      type metadata accessor for PeopleUnifiedItem();
      v6 = v3;
      v7 = sub_1A3C5A374();
      v8 = sub_1A44B6B34(v5, v7 & 1);
      v10 = v1;
      sub_1A3D8EB48(&v10, v2, v8, 0);
    }
  }

  result = sub_1A524E6E4();
  __break(1u);
  return result;
}

void sub_1A4271E88(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = type metadata accessor for SearchResultItemListManager();
    v7 = sub_1A4271F24(&qword_1EB129A78, type metadata accessor for SearchResultItemListManager);
    v8 = a3(a1, v6, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_1A4271F24(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1A4271F6C(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_1A3C52C70(255, a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_1A4271FD4(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_1A4271F6C(255, a2, &qword_1EB1265C0, 0x1E6978980, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1A427202C()
{
  result = qword_1EB1365E8;
  if (!qword_1EB1365E8)
  {
    sub_1A4271F6C(255, &qword_1EB1365E0, &qword_1EB126C28, 0x1E6978AD8, type metadata accessor for PhotoKitItemListImplementation);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1365E8);
  }

  return result;
}

unint64_t sub_1A42720B0()
{
  result = qword_1EB1365F0;
  if (!qword_1EB1365F0)
  {
    sub_1A4271F6C(255, &qword_1EB125C68, &qword_1EB126C28, 0x1E6978AD8, type metadata accessor for PhotoKitItem);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1365F0);
  }

  return result;
}

unint64_t sub_1A4272134()
{
  result = qword_1EB1365F8;
  if (!qword_1EB1365F8)
  {
    sub_1A4271F6C(255, &qword_1EB129FC0, &qword_1EB126C28, 0x1E6978AD8, type metadata accessor for PhotoKitItemListManager);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1365F8);
  }

  return result;
}

unint64_t sub_1A42721F4()
{
  result = qword_1EB136600;
  if (!qword_1EB136600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB136600);
  }

  return result;
}

unint64_t sub_1A427224C()
{
  result = qword_1EB12AEC8;
  if (!qword_1EB12AEC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12AEC8);
  }

  return result;
}

__n128 __swift_memcpy88_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_1A42722F8(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 88))
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

uint64_t sub_1A4272340(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
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

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1A42723A4()
{
  result = qword_1EB136608;
  if (!qword_1EB136608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB136608);
  }

  return result;
}

id sub_1A42723F8()
{
  v1 = *(v0 + 16);
  v2 = objc_opt_self();
  sub_1A3C4D548(0, &qword_1EB12B260);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1A52F8E10;
  v4 = [v1 localIdentifier];
  v5 = sub_1A524C674();
  v7 = v6;

  *(v3 + 32) = v5;
  *(v3 + 40) = v7;
  v8 = sub_1A524CA14();

  sub_1A4271F6C(0, &qword_1EB12A010, &qword_1EB126C28, 0x1E6978AD8, type metadata accessor for PhotoKitItemListManager.FetchResultProviderInput);
  v9 = PhotoKitItemListManager.FetchResultProviderInput.defaultFetchOptions.getter();
  v10 = [v2 fetchSocialGroupsWithLocalIdentifiers:v8 options:v9];

  return v10;
}

id sub_1A4272534()
{
  v1 = *(v0 + 16);
  sub_1A4271F6C(0, &qword_1EB129FE8, &qword_1EB1265C0, 0x1E6978980, type metadata accessor for PhotoKitItemListManager.FetchResultProviderInput);
  v2 = PhotoKitItemListManager.FetchResultProviderInput.defaultFetchOptions.getter();
  [v2 copy];

  sub_1A524E0B4();
  swift_unknownObjectRelease();
  sub_1A3C52C70(0, &unk_1EB126C00);
  swift_dynamicCast();
  sub_1A3C4D548(0, &qword_1EB126180);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1A52F9790;
  [v1 detectionType];
  *(v3 + 32) = sub_1A524EC34();
  sub_1A3C52C70(0, &qword_1EB126610);
  v4 = sub_1A524CA14();

  [v14 setIncludedDetectionTypes_];

  v5 = objc_opt_self();
  sub_1A3C4D548(0, &qword_1EB12B260);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1A52F8E10;
  v7 = [v1 localIdentifier];
  v8 = sub_1A524C674();
  v10 = v9;

  *(v6 + 32) = v8;
  *(v6 + 40) = v10;
  v11 = sub_1A524CA14();

  v12 = [v5 fetchPersonsWithLocalIdentifiers:v11 options:v14];

  return v12;
}

uint64_t sub_1A4272774()
{
  v1 = *(v0 + 48);
  v3 = *(v0 + 56);
  v2 = *(v0 + 64);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  result = sub_1A42714A8(AssociatedTypeWitness);
  if (result)
  {
    v6 = result;
    v7 = v1;
    sub_1A3C6E9EC();
    sub_1A3D8EB48(&v7, v3, v6, v2);
  }

  __break(1u);
  return result;
}

uint64_t sub_1A427286C@<X0>(uint64_t a1@<X8>)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  (*(v6 + 16))(a1, v1 + ((*(v6 + 80) + 48) & ~*(v6 + 80)), AssociatedTypeWitness);
  v4 = *(v6 + 56);

  return v4(a1, 0, 1, AssociatedTypeWitness);
}

void *sub_1A4272998()
{
  v1 = *(v0 + 16);
  v2 = v1;
  return v1;
}

id sub_1A42729C0(void *a1)
{
  v2 = *(v1 + 40);
  if (v2)
  {
    v3 = *(v1 + 40);
  }

  else
  {
    v4 = *(v1 + 16);
    v6 = *(v1 + 56);
    v5 = *(v1 + 64);
    if (!v4)
    {
      v10 = *(v1 + 8);
      v12 = *(v1 + 24);
      v11 = *(v1 + 32);
      v13 = *(v1 + 48);
      v45[0] = *v1;
      v45[1] = v10;
      v45[2] = 0;
      v46 = v12;
      v47 = v11;
      v48 = 0;
      v49 = v13;
      v50 = v6;
      v43 = v6;
      v51 = v5;
      v14 = *(v1 + 88);
      v52 = *(v1 + 72);
      v53 = v14;
      v15 = sub_1A48B4F68();
      v17 = v16;
      v18 = type metadata accessor for PhotosBarButtonItemTarget();
      v19 = objc_allocWithZone(v18);
      v20 = &v19[OBJC_IVAR____TtC12PhotosUICoreP33_2F41475DB669B278177E293B1734139625PhotosBarButtonItemTarget_primaryAction];
      *v20 = v15;
      v20[1] = v17;
      v44.receiver = v19;
      v44.super_class = v18;
      v21 = objc_msgSendSuper2(&v44, sel_init, v43);
      if (MEMORY[0x1A590D320]())
      {
        if (v11)
        {
          v46 = v18;
          v45[0] = v21;
          v22 = v21;
          v23 = sub_1A524C634();
          if (v18)
          {
            v24 = __swift_project_boxed_opaque_existential_1(v45, v18);
            v25 = *(v18 - 1);
            v26 = MEMORY[0x1EEE9AC00](v24);
            v28 = &v43 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
            (*(v25 + 16))(v28, v26);
            v29 = sub_1A524EA94();
            (*(v25 + 8))(v28, v18);
            __swift_destroy_boxed_opaque_existential_0(v45);
          }

          else
          {
            v29 = 0;
          }

          v34 = [objc_allocWithZone(MEMORY[0x1E69DC708]) initWithTitle:v23 style:0 target:v29 action:sel_performPrimaryAction_];

          swift_unknownObjectRelease();
        }

        else
        {
          v32 = sub_1A524C634();
          v33 = [objc_opt_self() _systemImageNamed_];

          v34 = [objc_allocWithZone(MEMORY[0x1E69DC708]) initWithImage:v33 style:0 target:v21 action:sel_performPrimaryAction_];
        }

        v36 = v34;
        if (v5)
        {
          v37 = sub_1A524C634();
        }

        else
        {
          v37 = 0;
        }

        [v34 setAccessibilityIdentifier_];
      }

      else
      {
        if (v11)
        {
          v30 = sub_1A524C634();
          v31 = v21;
          if (v5)
          {
            v5 = sub_1A524C634();
          }

          v38 = [a1 createBarButtonItemWithTitle:v30 target:v21 action:sel_performPrimaryAction_ menuAction:0 accessibilityIdentifier:v5];
        }

        else
        {
          v30 = sub_1A524C634();
          v35 = v21;
          if (v5)
          {
            v5 = sub_1A524C634();
          }

          v38 = [a1 createBarButtonItemWithSystemIconName:v30 target:v21 action:sel_performPrimaryAction_ menuAction:0 accessibilityIdentifier:v5];
        }

        v39 = v38;

        v40 = v39;
      }

      if (qword_1EB191AC0 != -1)
      {
        swift_once();
      }

      sub_1A5246664();
    }

    v7 = v4;
    if (v5)
    {
      v8 = sub_1A524C634();
    }

    else
    {
      v8 = 0;
    }

    [v4 setAccessibilityIdentifier_];

    v3 = [objc_allocWithZone(MEMORY[0x1E69DC708]) initWithCustomView_];
  }

  v41 = v2;
  return v3;
}

id sub_1A4272F84()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PhotosBarButtonItemTarget();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1A42730CC()
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_1A427312C(uint64_t *a1))(void **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC12PhotosUICore33PhotosDetailsKnowledgeGraphWidget_widgetInteractionDelegate;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_1A3DA46A0;
}

uint64_t sub_1A4273264(void *a1)
{
  if (*(v1 + OBJC_IVAR____TtC12PhotosUICore33PhotosDetailsKnowledgeGraphWidget_contextObservation))
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    sub_1A5246634();
  }

  sub_1A4110FA4(a1);
  result = (*((*MEMORY[0x1E69E7D40] & *v1) + 0x90))();
  if (result)
  {
    swift_allocObject();
    swift_unknownObjectWeakInit();

    sub_1A524D1A4();
  }

  __break(1u);
  return result;
}

void sub_1A42733A4(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    (*((*MEMORY[0x1E69E7D40] & *Strong) + 0x1C0))(a2);
  }
}

void (*sub_1A4273434(uint64_t *a1))(void **a1, char a2)
{
  a1[1] = v1;
  *a1 = sub_1A4110EF8();
  return sub_1A427347C;
}

void sub_1A427347C(void **a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    v3 = v2;
    sub_1A4273264(v3);
  }

  else
  {
    sub_1A4273264(v2);
  }
}

id sub_1A42734E4(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for PhotosDetailsKnowledgeGraphWidgetView();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = (&v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for PhotosDetailsKnowledgeGraphWidgetViewModel();
  v7 = MEMORY[0x1E69E7D40];
  v8 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x108);
  v9 = a1;
  v10 = v8();
  v11 = (*((*v7 & *v2) + 0xA8))();
  v12 = sub_1A49449FC(v9, v10, v11);
  v13 = *((*v7 & *v2) + 0xE0);
  v14 = v12;
  v13(v12);
  sub_1A427367C();
  v15 = v14;
  sub_1A412D028(v6);
  v16 = PXSecureLockscreenSwiftUIHostingController.__allocating_init(rootView:)(v6);

  return v16;
}

void sub_1A427367C()
{
  if (!qword_1EB136630)
  {
    type metadata accessor for PhotosDetailsKnowledgeGraphWidgetView();
    sub_1A4273B60(&qword_1EB132EB0, type metadata accessor for PhotosDetailsKnowledgeGraphWidgetView);
    v0 = type metadata accessor for PXSecureLockscreenSwiftUIHostingController();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB136630);
    }
  }
}

void sub_1A427382C()
{
  v1 = MEMORY[0x1E69E7D40];
  v2 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0xD8))();
  if (v2)
  {
    v8 = v2;
    type metadata accessor for PhotosDetailsKnowledgeGraphWidgetViewModel();
    if (swift_dynamicCastClass())
    {
      v3 = (*((*v1 & *v0) + 0x78))();
      if (v3)
      {
        v4 = v3;
        v5 = swift_allocObject();
        *(v5 + 16) = v4;
        *(v5 + 24) = v0;
        aBlock[4] = sub_1A4273BA8;
        aBlock[5] = v5;
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 1107296256;
        aBlock[2] = sub_1A3C2E0D0;
        aBlock[3] = &block_descriptor_137;
        v6 = _Block_copy(aBlock);
        swift_unknownObjectRetain();
        v7 = v0;

        [v4 widget:v7 animateChanges:v6 withAnimationOptions:0];
        _Block_release(v6);
        swift_unknownObjectRelease();
      }

      sub_1A4273B60(&qword_1EB136640, type metadata accessor for PhotosDetailsKnowledgeGraphWidgetViewModel);
      sub_1A52478D4();
      sub_1A5247964();
    }

    else
    {
    }
  }
}

uint64_t sub_1A4273AA0()
{
  sub_1A3D35A10(v0 + OBJC_IVAR____TtC12PhotosUICore33PhotosDetailsKnowledgeGraphWidget_widgetInteractionDelegate);

  return swift_unknownObjectRelease();
}

id sub_1A4273AE0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PhotosDetailsKnowledgeGraphWidget();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1A4273B60(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_1A4273BA8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  [v1 widgetPreferredContentHeightForWidthDidChange_];

  return [v1 widgetHasLoadedContentDataDidChange_];
}

uint64_t PhotosComposedObservable<>.signalWillChange()()
{
  sub_1A52478C4();
  sub_1A5247964();
}

uint64_t sub_1A4273C78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v12 = type metadata accessor for LemonadeAlbumGridCell();
  v13 = a6 + v12[17];
  *v13 = swift_getKeyPath();
  *(v13 + 8) = 0;
  v14 = a6 + v12[18];
  *v14 = swift_getKeyPath();
  *(v14 + 8) = 0;
  (*(*(a5 - 8) + 32))(a6, a1, a5);
  v15 = v12[15];
  sub_1A52430A4();
  v16 = sub_1A524DF24();
  result = (*(*(v16 - 8) + 32))(a6 + v15, a2, v16);
  v18 = (a6 + v12[16]);
  *v18 = a3;
  v18[1] = a4;
  return result;
}

uint64_t sub_1A4273DDC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v207 = a2;
  sub_1A4275F8C(0, &qword_1EB124D00, sub_1A3C3637C);
  v185 = v3;
  v175 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v184 = &v166 - v4;
  v210 = a1;
  v5 = *--a1;
  v181 = v5;
  MEMORY[0x1EEE9AC00](v6);
  v179 = v7;
  v189 = &v166 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v190 = sub_1A5243B94();
  v182 = *(v190 - 8);
  MEMORY[0x1EEE9AC00](v190);
  v198 = &v166 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a1[3];
  v10 = a1[6];
  *&v224 = MEMORY[0x1E6981E70];
  *(&v224 + 1) = v9;
  *&v225 = MEMORY[0x1E6981E60];
  *(&v225 + 1) = v10;
  v11 = type metadata accessor for LemonadeMaterialTitleCell();
  v187 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v167 = &v166 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v169 = &v166 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v186 = &v166 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v168 = &v166 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v183 = &v166 - v20;
  v21 = sub_1A52430A4();
  v22 = sub_1A524DF24();
  v171 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v166 - v23;
  v199 = v21;
  v209 = *(v21 - 8);
  v25 = *(v209 + 64);
  MEMORY[0x1EEE9AC00](v26);
  v166 = &v166 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v188 = &v166 - v28;
  v200 = v10;
  v29 = type metadata accessor for LemonadeFolderMaterialTitleCell();
  v30 = sub_1A5249754();
  v192 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30);
  v191 = &v166 - v31;
  sub_1A427677C(0, &unk_1EB129180, MEMORY[0x1E69C2060]);
  MEMORY[0x1EEE9AC00](v32 - 8);
  v177 = &v166 - v33;
  v34 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v172 = &v166 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v37);
  v173 = &v166 - v38;
  MEMORY[0x1EEE9AC00](v39);
  v176 = &v166 - v40;
  v204 = v29;
  v180 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v41);
  v178 = &v166 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v43);
  v197 = &v166 - v44;
  v170 = sub_1A5249234();
  v45 = *(v170 - 8);
  MEMORY[0x1EEE9AC00](v170);
  v47 = &v166 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  v196 = sub_1A5243284();
  v195 = *(v196 - 8);
  MEMORY[0x1EEE9AC00](v196);
  v174 = &v166 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v49);
  v193 = &v166 - v50;
  v205 = v30;
  v51 = v194;
  v206 = v11;
  v203 = sub_1A5249754();
  v202 = *(v203 - 8);
  MEMORY[0x1EEE9AC00](v203);
  v201 = &v166 - v52;
  v53 = a1[5];
  v54 = sub_1A5243D14();
  v208 = v9;
  if (v54)
  {
    v209 = v34;
    v55 = *(v53 + 8);
    *&v214 = sub_1A5241E54();
    v199 = v55;
    swift_getAssociatedTypeWitness();
    sub_1A524CB74();
    swift_getWitnessTable();
    sub_1A524D084();
    v214 = v224;
    v215 = v225;
    sub_1A524E0F4();
    swift_getWitnessTable();
    sub_1A524CB84();
    v56 = v210;
    v57 = v51 + *(v210 + 17);
    v58 = *v57;
    if (*(v57 + 8) == 1)
    {
      if (v58)
      {
LABEL_4:
        v59 = MEMORY[0x1E69C23D0];
        v60 = v209;
        goto LABEL_16;
      }
    }

    else
    {

      sub_1A524D254();
      v100 = sub_1A524A014();
      sub_1A5246DF4();

      sub_1A5249224();
      swift_getAtKeyPath();
      sub_1A3C53AEC(v58, 0);
      (*(v45 + 8))(v47, v170);
      if (v224)
      {
        goto LABEL_4;
      }
    }

    v101 = v51 + *(v56 + 18);
    v102 = *v101;
    if (*(v101 + 8) == 1)
    {
      v213 = *v101;
    }

    else
    {

      sub_1A524D254();
      v146 = sub_1A524A014();
      sub_1A5246DF4();

      sub_1A5249224();
      swift_getAtKeyPath();
      sub_1A3C53AEC(v102, 0);
      (*(v45 + 8))(v47, v170);
      LOBYTE(v102) = v213;
    }

    v212 = v102;
    v211 = 0;
    sub_1A40A51C0();
    sub_1A524C9C4();
    sub_1A524C9C4();
    v60 = v209;
    if (v224 == v214)
    {

      v59 = MEMORY[0x1E69C23E0];
    }

    else
    {
      v147 = sub_1A524EAB4();

      v59 = MEMORY[0x1E69C23D8];
      if (v147)
      {
        v59 = MEMORY[0x1E69C23E0];
      }
    }

LABEL_16:
    v148 = v195;
    v149 = v193;
    v150 = v196;
    (*(v195 + 104))(v193, *v59, v196);
    v151 = v176;
    v152 = v208;
    (*(v60 + 16))(v176, v51, v208);
    sub_1A3D435C4();
    v153 = sub_1A524E614();

    v154 = v174;
    (*(v148 + 16))(v174, v149, v150);
    v155 = sub_1A52429A4();
    v156 = v177;
    (*(*(v155 - 8) + 56))(v177, 1, 1, v155);
    v157 = sub_1A5241E34();
    v159 = v158;
    v160 = sub_1A43CAF68();
    LemonadeFolderMaterialTitleCell.init(_:_:aspectRatio:specs:backgroundColor:placeholderBackgroundColor:title:)(v151, v153, v154, v160, v156, v157, v159, v152, v178, 1.0);
  }

  v61 = v171;
  (*(v171 + 16))(v24, v51 + *(v210 + 15), v22);
  v62 = (v34 + 16);
  if ((*(v209 + 48))(v24, 1, v199) == 1)
  {
    (*(v61 + 8))(v24, v22);
    (*v62)(v172, v51, v9);
    v209 = sub_1A5241E34();
    v199 = v63;
    v64 = v9;
    sub_1A5241E44();
    v197 = v224;
    sub_1A4244368();
    v65 = (*(v175 + 80) + 32) & ~*(v175 + 80);
    v66 = swift_allocObject();
    *(v66 + 16) = xmmword_1A52F8E10;
    v67 = v51;
    v196 = v66 + v65;
    v68 = v182;
    v69 = v190;
    (*(v182 + 104))(v198, *MEMORY[0x1E69C2800], v190);
    v70 = v181;
    v71 = v189;
    v72 = v210;
    (*(v181 + 16))(v189, v67, v210);
    v73 = (*(v70 + 80) + 56) & ~*(v70 + 80);
    v74 = swift_allocObject();
    v75 = v72[3];
    *(v74 + 2) = v64;
    *(v74 + 3) = v75;
    v76 = v200;
    *(v74 + 4) = v53;
    *(v74 + 5) = v76;
    *(v74 + 6) = v72[6];
    (*(v70 + 32))(&v74[v73], v71, v72);
    v77 = *(v68 + 32);
    v78 = v184;
    v77(v184, v198, v69);
    v79 = v196;
    v77(v196, v78, v69);
    v80 = (v79 + *(v185 + 48));
    v81 = swift_allocObject();
    *(v81 + 16) = sub_1A4276004;
    *(v81 + 24) = v74;
    *v80 = sub_1A4244548;
    v80[1] = v81;
    v82 = sub_1A42762E8(v66);
    swift_setDeallocating();
    sub_1A42767D0(v79, &qword_1EB124D00, sub_1A3C3637C, sub_1A4275F8C);
    swift_deallocClassInstance();
    v83 = MEMORY[0x1E6981E70];
    v84 = v208;
    v85 = sub_1A41F7694();
    LOBYTE(v66) = sub_1A3C5A374();
    v86 = sub_1A43C9BB4();
    v88 = v87;
    v89 = swift_allocObject();
    *(v89 + 16) = v86;
    *(v89 + 24) = v88;
    v90 = v167;
    LemonadeMaterialTitleCell.init(_:glyphName:title:keyAsset:aspectRatio:alwaysShowGlyph:background:affordances:)(v172, 0, 0, v209, v199, v197, v66 & 1, sub_1A3F8B548, v167, v85, v89, v82, v83, v84);
    v91 = v206;
    WitnessTable = swift_getWitnessTable();
    v93 = v187;
    v94 = *(v187 + 16);
    v95 = v169;
    v94(v169, v90, v91);
    v96 = *(v93 + 8);
    v96(v90, v91);
    v97 = v186;
    v94(v186, v95, v91);
    v222 = swift_getWitnessTable();
    v223 = WitnessTable;
    v98 = v205;
    swift_getWitnessTable();
    v99 = v201;
    sub_1A3DF4890(v97, v98, v91);
    v96(v97, v91);
    v96(v95, v91);
  }

  else
  {
    v103 = *(v209 + 32);
    v180 = v209 + 32;
    v193 = v103;
    v104 = v24;
    v105 = v199;
    (v103)(v188, v104, v199);
    (*v62)(v173, v51, v9);
    v197 = sub_1A5241E34();
    v196 = v106;
    sub_1A5241E44();
    v195 = v224;
    sub_1A4244368();
    v107 = (*(v175 + 80) + 32) & ~*(v175 + 80);
    v108 = swift_allocObject();
    v178 = v108;
    *(v108 + 16) = xmmword_1A52F8E10;
    v177 = (v108 + v107);
    v109 = v182;
    (*(v182 + 104))(v198, *MEMORY[0x1E69C2810], v190);
    v110 = v181;
    v111 = v210;
    (*(v181 + 16))(v189, v51, v210);
    v112 = v209;
    v113 = v166;
    v114 = v105;
    (*(v209 + 16))(v166, v188, v105);
    v115 = (*(v110 + 80) + 56) & ~*(v110 + 80);
    v116 = (v179 + v115 + *(v112 + 80)) & ~*(v112 + 80);
    v117 = swift_allocObject();
    v118 = v111[3];
    *(v117 + 2) = v208;
    *(v117 + 3) = v118;
    v119 = v200;
    *(v117 + 4) = v53;
    *(v117 + 5) = v119;
    *(v117 + 6) = v111[6];
    (*(v110 + 32))(&v117[v115], v189, v111);
    (v193)(&v117[v116], v113, v114);
    v120 = *(v109 + 32);
    v121 = v184;
    v122 = v190;
    v120(v184, v198, v190);
    v123 = v177;
    v120(v177, v121, v122);
    v124 = (v123 + *(v185 + 48));
    v125 = swift_allocObject();
    *(v125 + 16) = sub_1A42764C0;
    *(v125 + 24) = v117;
    *v124 = sub_1A4276874;
    v124[1] = v125;
    v126 = sub_1A42762E8(v178);
    swift_setDeallocating();
    sub_1A42767D0(v123, &qword_1EB124D00, sub_1A3C3637C, sub_1A4275F8C);
    swift_deallocClassInstance();
    v127 = MEMORY[0x1E6981E70];
    v128 = v208;
    v129 = sub_1A41F7694();
    LOBYTE(v122) = sub_1A3C5A374();
    v130 = sub_1A43C9BB4();
    v132 = v131;
    v133 = swift_allocObject();
    *(v133 + 16) = v130;
    *(v133 + 24) = v132;
    v134 = v168;
    LemonadeMaterialTitleCell.init(_:glyphName:title:keyAsset:aspectRatio:alwaysShowGlyph:background:affordances:)(v173, 0, 0, v197, v196, v195, v122 & 1, sub_1A4276878, v168, v129, v133, v126, v127, v128);
    v135 = v206;
    v136 = swift_getWitnessTable();
    v137 = v187;
    v138 = *(v187 + 16);
    v139 = v183;
    v138(v183, v134, v135);
    v140 = *(v137 + 8);
    v140(v134, v135);
    v141 = v186;
    v138(v186, v139, v135);
    v142 = v204;
    v143 = swift_getWitnessTable();
    v144 = v191;
    sub_1A3DF4890(v141, v142, v135);
    v216 = v143;
    v217 = v136;
    v145 = v205;
    swift_getWitnessTable();
    v99 = v201;
    sub_1A3DF4798(v144, v145);
    (*(v192 + 8))(v144, v145);
    v140(v141, v135);
    v140(v183, v135);
    (*(v209 + 8))(v188, v199);
  }

  v161 = swift_getWitnessTable();
  v162 = swift_getWitnessTable();
  v220 = v161;
  v221 = v162;
  v218 = swift_getWitnessTable();
  v219 = v162;
  v163 = v203;
  swift_getWitnessTable();
  v164 = v202;
  (*(v202 + 16))(v207, v99, v163);
  return (*(v164 + 8))(v99, v163);
}

uint64_t sub_1A427586C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v46 = a2;
  v36 = a4;
  v37 = a1;
  v5 = sub_1A52430A4();
  v42 = *(v5 - 8);
  v43 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v39 = MEMORY[0x1E69C1D20];
  v40 = v34 - v6;
  sub_1A427677C(0, &qword_1EB124F80, MEMORY[0x1E69C1D20]);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = v34 - v8;
  v38 = MEMORY[0x1E69C1D18];
  sub_1A427677C(0, &qword_1EB136648, MEMORY[0x1E69C1D18]);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = v34 - v11;
  v35 = sub_1A5242224();
  v13 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v15 = v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1A5242234();
  MEMORY[0x1EEE9AC00](v16 - 8);
  v17 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v20 = v34 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34[1] = a3;
  v21 = sub_1A5242304();
  v44 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v23 = v34 - v22;
  v45 = sub_1A5248804();
  v24 = MEMORY[0x1EEE9AC00](v45);
  v41 = v34 - v25;
  (*(v17 + 16))(v20, v37, a3, v24);
  v26 = v35;
  (*(v13 + 104))(v15, *MEMORY[0x1E69C1D30], v35);
  v27 = sub_1A52421B4();
  (*(*(v27 - 8) + 56))(v12, 1, 1, v27);
  v28 = sub_1A52421C4();
  (*(*(v28 - 8) + 56))(v9, 1, 1, v28);
  sub_1A52421E4();
  sub_1A42767D0(v9, &qword_1EB124F80, v39, sub_1A427677C);
  sub_1A42767D0(v12, &qword_1EB136648, v38, sub_1A427677C);
  (*(v13 + 8))(v15, v26);
  (*(v42 + 16))(v40, v46, v43);
  sub_1A52422F4();
  sub_1A3C75480(0, &unk_1EB1202B0, MEMORY[0x1E6980D50], MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1A52FC9F0;
  v30 = sub_1A524A0B4();
  *(inited + 32) = v30;
  v31 = sub_1A524A084();
  *(inited + 33) = v31;
  sub_1A524A0A4();
  sub_1A524A0A4();
  if (sub_1A524A0A4() != v30)
  {
    sub_1A524A0A4();
  }

  sub_1A524A0A4();
  if (sub_1A524A0A4() != v31)
  {
    sub_1A524A0A4();
  }

  WitnessTable = swift_getWitnessTable();
  sub_1A524B0D4();
  (*(v44 + 8))(v23, v21);
  v47 = WitnessTable;
  v48 = MEMORY[0x1E697E5D8];
  swift_getWitnessTable();
  return sub_1A524B8E4();
}

uint64_t sub_1A4275EC8(uint64_t a1)
{
  MEMORY[0x1EEE9AC00](a1);
  v9[0] = v2;
  v9[1] = v3;
  v9[2] = v4;
  v9[3] = v5;
  v9[4] = v6;
  v7 = *(a1 + *(type metadata accessor for LemonadeAlbumGridCell() + 64));
  LOBYTE(v9[0]) = 1;
  v7(v9);
  return sub_1A524B8E4();
}

void sub_1A4275F8C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    sub_1A5243B94();
    a3(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v6)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

uint64_t sub_1A4276004()
{
  v1 = *(type metadata accessor for LemonadeAlbumGridCell() - 8);
  v2 = v0 + ((*(v1 + 80) + 56) & ~*(v1 + 80));

  return sub_1A4275EC8(v2);
}

unint64_t sub_1A42760B8(uint64_t a1)
{
  sub_1A5243B94();
  sub_1A4276830(&qword_1EB124D20);
  v2 = sub_1A524C4A4();

  return sub_1A427613C(a1, v2);
}

unint64_t sub_1A427613C(uint64_t a1, uint64_t a2)
{
  v20 = a1;
  v4 = sub_1A5243B94();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
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
      v12(v8, *(v21 + 48) + v15 * v10, v4, v6);
      sub_1A4276830(&qword_1EB1398F0);
      v16 = sub_1A524C594();
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

unint64_t sub_1A42762E8(uint64_t a1)
{
  sub_1A4275F8C(0, &qword_1EB124D00, sub_1A3C3637C);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v20 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    sub_1A3D71220();
    v8 = sub_1A524E794();
    v9 = *(v3 + 48);
    v10 = a1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v11 = *(v4 + 72);

    while (1)
    {
      sub_1A4217CF0(v10, v6);
      result = sub_1A42760B8(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = sub_1A5243B94();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v6, v16);
      *(v8[7] + 16 * v14) = *&v6[v9];
      v17 = v8[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v8[2] = v19;
      v10 += v11;
      if (!--v7)
      {

        return v8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

uint64_t sub_1A42764C0()
{
  v8 = *(v0 + 16);
  v7 = *(v0 + 40);
  v1 = *(type metadata accessor for LemonadeAlbumGridCell() - 8);
  v2 = (*(v1 + 80) + 56) & ~*(v1 + 80);
  v3 = v2 + *(v1 + 64);
  v4 = *(sub_1A52430A4() - 8);
  v5 = v0 + ((v3 + *(v4 + 80)) & ~*(v4 + 80));

  return sub_1A427586C(v0 + v2, v5, v8, v7);
}

void sub_1A4276628()
{
  swift_checkMetadataState();
  if (v0 <= 0x3F)
  {
    sub_1A52430A4();
    sub_1A524DF24();
    if (v1 <= 0x3F)
    {
      sub_1A3C3637C();
      if (v2 <= 0x3F)
      {
        sub_1A3C75480(319, &qword_1EB1246E0, MEMORY[0x1E69E6370], MEMORY[0x1E697DCC0]);
        if (v3 <= 0x3F)
        {
          sub_1A3C75480(319, &unk_1EB1247B0, &type metadata for LemonadeShelvesLayoutStyle, MEMORY[0x1E697DCC0]);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1A427677C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1A524DF24();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1A42767D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v5 = a4(0);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

uint64_t sub_1A4276830(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1A5243B94();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1A427687C()
{
  sub_1A42768B8();
  sub_1A5249244();
  return v1;
}

unint64_t sub_1A42768B8()
{
  result = qword_1EB15AC20[0];
  if (!qword_1EB15AC20[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB15AC20);
  }

  return result;
}

void sub_1A427690C()
{
  swift_getKeyPath();
  sub_1A4276A50();
  sub_1A524A824();
}

uint64_t sub_1A42769A0@<X0>(void *a1@<X8>)
{
  sub_1A42768B8();
  result = sub_1A5249244();
  *a1 = v3;
  return result;
}

uint64_t sub_1A42769F0()
{
  sub_1A42768B8();

  return sub_1A5249254();
}

void sub_1A4276A50()
{
  if (!qword_1EB136650)
  {
    sub_1A5249234();
    sub_1A4276AB8();
    v0 = sub_1A524E604();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB136650);
    }
  }
}

uint64_t sub_1A4276AB8()
{
  result = qword_1EB136658;
  if (!qword_1EB136658)
  {
    sub_1A5245A94();
  }

  return result;
}

id sub_1A4276B20()
{
  swift_getKeyPath();
  sub_1A4280BF0(&qword_1EB129418, type metadata accessor for SharedAlbumsActivityEntryItemListManager);
  sub_1A52415D4();

  v1 = *(v0 + OBJC_IVAR____TtC12PhotosUICore40SharedAlbumsActivityEntryItemListManager__itemList);

  return v1;
}

id sub_1A4276BD8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A4280BF0(&qword_1EB129418, type metadata accessor for SharedAlbumsActivityEntryItemListManager);
  sub_1A52415D4();

  v4 = *(v3 + OBJC_IVAR____TtC12PhotosUICore40SharedAlbumsActivityEntryItemListManager__itemList);
  *a2 = v4;

  return v4;
}

uint64_t type metadata accessor for SharedAlbumsActivityEntryItemListManager()
{
  result = qword_1EB178080;
  if (!qword_1EB178080)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1A427710C(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  sub_1A4280BF0(&qword_1EB129418, type metadata accessor for SharedAlbumsActivityEntryItemListManager);
  sub_1A52415D4();

  return *(v2 + *a2);
}

uint64_t sub_1A42771C0@<X0>(uint64_t *a1@<X0>, void *a2@<X4>, _BYTE *a3@<X8>)
{
  v5 = *a1;
  swift_getKeyPath();
  sub_1A4280BF0(&qword_1EB129418, type metadata accessor for SharedAlbumsActivityEntryItemListManager);
  sub_1A52415D4();

  *a3 = *(v5 + *a2);
  return result;
}

uint64_t sub_1A42772C0(uint64_t result, void *a2)
{
  if (*(v2 + *a2) == (result & 1))
  {
    *(v2 + *a2) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A4280BF0(&qword_1EB129418, type metadata accessor for SharedAlbumsActivityEntryItemListManager);
    sub_1A52415C4();
  }

  return result;
}

id sub_1A42773DC()
{
  swift_getKeyPath();
  sub_1A4280BF0(&qword_1EB129418, type metadata accessor for SharedAlbumsActivityEntryItemListManager);
  sub_1A52415D4();

  v1 = *(*(v0 + OBJC_IVAR____TtC12PhotosUICore40SharedAlbumsActivityEntryItemListManager__itemList) + OBJC_IVAR___PXSharedAlbumsActivityEntryItemList_items);
  if (v1 >> 62)
  {
    result = sub_1A524E2B4();
    if (!result)
    {
      return result;
    }
  }

  else
  {
    result = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      return result;
    }
  }

  if ((v1 & 0xC000000000000001) != 0)
  {
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    return *(v1 + 32);
  }

  __break(1u);
  return result;
}

char *sub_1A4277508()
{
  swift_getKeyPath();
  sub_1A4280BF0(&qword_1EB129418, type metadata accessor for SharedAlbumsActivityEntryItemListManager);
  sub_1A52415D4();

  v1 = *(*(v0 + OBJC_IVAR____TtC12PhotosUICore40SharedAlbumsActivityEntryItemListManager__itemList) + OBJC_IVAR___PXSharedAlbumsActivityEntryItemList_items);
  if (!(v1 >> 62))
  {
    result = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      return result;
    }

LABEL_3:
    v3 = result - 1;
    if (__OFSUB__(result, 1))
    {
      __break(1u);
    }

    else if ((v1 & 0xC000000000000001) == 0)
    {
      if ((v3 & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      else if (v3 < *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        return *(v1 + 8 * v3 + 32);
      }

      __break(1u);
      return result;
    }

    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  result = sub_1A524E2B4();
  if (result)
  {
    goto LABEL_3;
  }

  return result;
}

void sub_1A42776DC()
{
  swift_getKeyPath();
  sub_1A4280BF0(&qword_1EB129418, type metadata accessor for SharedAlbumsActivityEntryItemListManager);
  sub_1A52415D4();

  swift_beginAccess();
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

void sub_1A42777A8(uint64_t *a1@<X0>, uint64_t *a2@<X4>, void *a3@<X8>)
{
  v5 = *a1;
  swift_getKeyPath();
  sub_1A4280BF0(&qword_1EB129418, type metadata accessor for SharedAlbumsActivityEntryItemListManager);
  sub_1A52415D4();

  v6 = *a2;
  swift_beginAccess();
  *a3 = *(v5 + v6);
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

void sub_1A4277A0C(uint64_t a1, uint64_t a2, int a3, int a4, uint64_t a5, int a6)
{
  v16 = a6;
  v13 = a5;
  v10 = a4;
  v11 = a3;
  v14 = a2;
  sub_1A3C7D074(0, &qword_1EB12AFE0, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9[3] = v9 - v7;
  v15 = sub_1A5246F24();
  v9[5] = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v12 = v9 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A5245EC4();
}

uint64_t sub_1A427815C(uint64_t a1)
{
  v3 = MEMORY[0x1E6969530];
  sub_1A3C7D074(0, &qword_1EB12AFE0, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v11 - v5;
  v7 = OBJC_IVAR____TtC12PhotosUICore40SharedAlbumsActivityEntryItemListManager___cachedLastSeenUnreadDate;
  swift_beginAccess();
  sub_1A3C5DAA4(v1 + v7, v6, &qword_1EB12AFE0, v3);
  v8 = sub_1A427FDB0(v6, a1);
  sub_1A3C42C50(v6, &qword_1EB12AFE0, v3);
  if (v8)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    v11[-2] = v1;
    v11[-1] = a1;
    v11[2] = v1;
    sub_1A4280BF0(&qword_1EB129418, type metadata accessor for SharedAlbumsActivityEntryItemListManager);
    sub_1A52415C4();
  }

  else
  {
    swift_beginAccess();
    sub_1A4280C7C(a1, v1 + v7);
    swift_endAccess();
  }

  return sub_1A3C42C50(a1, &qword_1EB12AFE0, MEMORY[0x1E6969530]);
}

uint64_t sub_1A4278378(uint64_t result)
{
  if (*(v1 + OBJC_IVAR____TtC12PhotosUICore40SharedAlbumsActivityEntryItemListManager__batchFetchLimit) != result)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A4280BF0(&qword_1EB129418, type metadata accessor for SharedAlbumsActivityEntryItemListManager);
    sub_1A52415C4();
  }

  return result;
}

void sub_1A4278484(int a1)
{
  LODWORD(v10) = a1;
  v1 = sub_1A524BEE4();
  v8 = *(v1 - 8);
  v9 = v1;
  MEMORY[0x1EEE9AC00](v1);
  v6[8] = v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1A524BF64();
  v6[7] = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v6[6] = v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3C7D074(0, &qword_1EB12AFE0, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4);
  v6[4] = v6 - v5;
  sub_1A5245EC4();
}

uint64_t sub_1A4278D88()
{
  v1 = v0;
  swift_getKeyPath();
  aBlock[0] = v0;
  sub_1A4280BF0(&qword_1EB129418, type metadata accessor for SharedAlbumsActivityEntryItemListManager);
  sub_1A52415D4();

  if (!*(v0 + OBJC_IVAR____TtC12PhotosUICore40SharedAlbumsActivityEntryItemListManager___lastSeenNotificationObserver))
  {
    v3 = [objc_opt_self() defaultCenter];
    v4 = [objc_opt_self() mainQueue];
    v5 = swift_allocObject();
    swift_unknownObjectWeakInit();
    aBlock[4] = sub_1A4280B88;
    aBlock[5] = v5;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1A3C7C848;
    aBlock[3] = &block_descriptor_42_1;
    v6 = _Block_copy(aBlock);

    [v3 addObserverForName:@"PXSharedAlbumsActivityLastSeenDateChangeNotification" object:0 queue:v4 usingBlock:v6];
    _Block_release(v6);

    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    aBlock[0] = v1;
    sub_1A52415C4();

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1A4278FF0()
{
  sub_1A3C7D074(0, &qword_1EB12B270, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v10 - v1;
  v3 = sub_1A524CCB4();
  (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
  v4 = swift_allocObject();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakInit();

  sub_1A524CC54();

  v6 = sub_1A524CC44();
  v7 = swift_allocObject();
  v8 = MEMORY[0x1E69E85E0];
  v7[2] = v6;
  v7[3] = v8;
  v7[4] = v4;

  sub_1A3D4D930(0, 0, v2, &unk_1A5329EF0, v7);
}

uint64_t sub_1A4279190(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a4;
  v5 = sub_1A5246F24();
  v4[6] = v5;
  v4[7] = *(v5 - 8);
  v4[8] = swift_task_alloc();
  sub_1A524CC54();
  v4[9] = sub_1A524CC44();
  v7 = sub_1A524CBC4();

  return MEMORY[0x1EEE6DFA0](sub_1A4279284, v7, v6);
}

uint64_t sub_1A4279284()
{

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v4 = v0[7];
    v3 = v0[8];
    v5 = v0[6];
    v6 = sub_1A45318CC();
    (*(v4 + 16))(v3, v6, v5);
    v7 = v2;
    v8 = sub_1A5246F04();
    v9 = sub_1A524D224();

    v10 = os_log_type_enabled(v8, v9);
    v11 = v0[7];
    v12 = v0[8];
    v13 = v0[6];
    if (v10)
    {
      v14 = swift_slowAlloc();
      swift_slowAlloc();
      *v14 = 136446210;
      _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
    }

    (*(v11 + 8))(v12, v13);
    sub_1A4278484(0);
  }

  v15 = v0[1];

  return v15();
}

void sub_1A42794F8()
{
  v1 = v0;
  v2 = sub_1A5246F24();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = v20 - v7;
  if (v0[OBJC_IVAR____TtC12PhotosUICore40SharedAlbumsActivityEntryItemListManager_reverseSortOrder] == 1)
  {
    swift_getKeyPath();
    v20[0] = v0;
    sub_1A4280BF0(&qword_1EB129418, type metadata accessor for SharedAlbumsActivityEntryItemListManager);
    sub_1A52415D4();

    v9 = v0[OBJC_IVAR____TtC12PhotosUICore40SharedAlbumsActivityEntryItemListManager__canFetchMoreItems];
    v10 = sub_1A45318CC();
    v11 = *(v3 + 16);
    if (v9 == 1)
    {
      v11(v8, v10, v2);
      v12 = v1;
      v13 = sub_1A5246F04();
      v14 = sub_1A524D264();
      if (os_log_type_enabled(v13, v14))
      {
        v15 = swift_slowAlloc();
        v20[3] = swift_slowAlloc();
        *v15 = 136446466;
        sub_1A3C2EF94();
      }

      (*(v3 + 8))(v8, v2);
      sub_1A4278484(1);
    }

    v11(v5, v10, v2);
    v16 = v1;
    v17 = sub_1A5246F04();
    v18 = sub_1A524D264();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20[0] = swift_slowAlloc();
      *v19 = 136446210;
      sub_1A3C2EF94();
    }

    (*(v3 + 8))(v5, v2);
  }
}

uint64_t sub_1A42798D8()
{
  v8 = sub_1A524D464();
  v0 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v2 = v7 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1A524D414();
  MEMORY[0x1EEE9AC00](v3);
  v4 = sub_1A524BF64();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7[1] = sub_1A3C52C70(0, &qword_1EB12B180);
  sub_1A524BF44();
  v9 = MEMORY[0x1E69E7CC0];
  sub_1A4280BF0(&qword_1EB126AD0, MEMORY[0x1E69E8030]);
  v5 = MEMORY[0x1E69E8030];
  sub_1A3C7D074(0, &qword_1EB126E40, MEMORY[0x1E69E8030], MEMORY[0x1E69E62F8]);
  sub_1A3C9ADB4(&qword_1EB126E30, &qword_1EB126E40, v5);
  sub_1A524E224();
  (*(v0 + 104))(v2, *MEMORY[0x1E69E8090], v8);
  result = sub_1A524D4B4();
  qword_1EB1780B8 = result;
  return result;
}

uint64_t sub_1A4279B5C()
{
  v8 = sub_1A524D464();
  v0 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v2 = v7 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1A524D414();
  MEMORY[0x1EEE9AC00](v3);
  v4 = sub_1A524BF64();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7[1] = sub_1A3C52C70(0, &qword_1EB12B180);
  sub_1A524BF24();
  v9 = MEMORY[0x1E69E7CC0];
  sub_1A4280BF0(&qword_1EB126AD0, MEMORY[0x1E69E8030]);
  v5 = MEMORY[0x1E69E8030];
  sub_1A3C7D074(0, &qword_1EB126E40, MEMORY[0x1E69E8030], MEMORY[0x1E69E62F8]);
  sub_1A3C9ADB4(&qword_1EB126E30, &qword_1EB126E40, v5);
  sub_1A524E224();
  (*(v0 + 104))(v2, *MEMORY[0x1E69E8090], v8);
  result = sub_1A524D4B4();
  qword_1EB15DC68 = result;
  return result;
}

uint64_t sub_1A4279DE0()
{
  swift_getKeyPath();
  sub_1A4280BF0(&qword_1EB129418, type metadata accessor for SharedAlbumsActivityEntryItemListManager);
  sub_1A52415D4();

  return *(v0 + OBJC_IVAR____TtC12PhotosUICore40SharedAlbumsActivityEntryItemListManager__batchFetchLimit);
}

uint64_t sub_1A4279E88@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A4280BF0(&qword_1EB129418, type metadata accessor for SharedAlbumsActivityEntryItemListManager);
  sub_1A52415D4();

  *a2 = *(v3 + OBJC_IVAR____TtC12PhotosUICore40SharedAlbumsActivityEntryItemListManager__batchFetchLimit);
  return result;
}

uint64_t sub_1A4279F60(uint64_t a1, uint64_t a2)
{
  v3 = sub_1A524BEE4();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1A524BF64();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3C7D074(0, &qword_1EB12AFE0, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v36 - v12;
  v41 = a2;
  v14 = swift_projectBox();
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v16 = result;
    v37 = v8;
    v38 = v6;
    v39 = v7;
    v40 = v4;
    v17 = *(**(result + OBJC_IVAR____TtC12PhotosUICore40SharedAlbumsActivityEntryItemListManager_sharedAlbumsAvailabilityObserver) + 136);

    v19 = v17(v18);

    v20 = MEMORY[0x1E69E7CC0];
    v21 = MEMORY[0x1E69E7CC0];
    if (v19)
    {
      v36 = v3;
      v22 = [*&v16[OBJC_IVAR____TtC12PhotosUICore40SharedAlbumsActivityEntryItemListManager_photoLibrary] px_standardLibrarySpecificFetchOptions];
      [v22 setReverseSortOrder_];
      swift_getKeyPath();
      aBlock[0] = v16;
      sub_1A4280BF0(&qword_1EB129418, type metadata accessor for SharedAlbumsActivityEntryItemListManager);
      sub_1A52415D4();

      v23 = OBJC_IVAR____TtC12PhotosUICore40SharedAlbumsActivityEntryItemListManager__batchFetchLimit;
      if (*&v16[OBJC_IVAR____TtC12PhotosUICore40SharedAlbumsActivityEntryItemListManager__batchFetchLimit] >= 1)
      {
        swift_getKeyPath();
        aBlock[0] = v16;
        sub_1A52415D4();

        [v22 setFetchLimit_];
      }

      swift_beginAccess();
      sub_1A3C5DAA4(v14, v13, &qword_1EB12AFE0, MEMORY[0x1E6969530]);
      v24 = sub_1A5241144();
      v25 = *(v24 - 8);
      v26 = 0;
      if ((*(v25 + 48))(v13, 1, v24) != 1)
      {
        v26 = sub_1A5241074();
        (*(v25 + 8))(v13, v24);
      }

      v27 = [objc_opt_self() fetchRecentActivitiesWithOptions:v22 olderThanDate:v26 filter:*&v16[OBJC_IVAR____TtC12PhotosUICore40SharedAlbumsActivityEntryItemListManager_filter]];

      v28 = [v27 fetchedObjects];
      v3 = v36;
      v20 = MEMORY[0x1E69E7CC0];
      if (v28)
      {
        v29 = v28;
        sub_1A3C52C70(0, &qword_1EB126820);
        v21 = sub_1A524CA34();

        v22 = v27;
        v27 = v29;
      }

      else
      {
        v21 = MEMORY[0x1E69E7CC0];
      }
    }

    sub_1A3C52C70(0, &qword_1EB12B180);
    v30 = sub_1A524D474();
    v31 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v32 = swift_allocObject();
    v32[2] = v31;
    v32[3] = v21;
    v32[4] = v41;
    aBlock[4] = sub_1A4280B68;
    aBlock[5] = v32;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1A3C2E0D0;
    aBlock[3] = &block_descriptor_32_1;
    v33 = _Block_copy(aBlock);

    sub_1A524BF14();
    aBlock[0] = v20;
    sub_1A4280BF0(&qword_1EB12B1E0, MEMORY[0x1E69E7F60]);
    v34 = MEMORY[0x1E69E7F60];
    sub_1A3C7D074(0, &qword_1EB12B1C0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
    sub_1A3C9ADB4(&qword_1EB12B1B0, &qword_1EB12B1C0, v34);
    v35 = v38;
    sub_1A524E224();
    MEMORY[0x1A5908800](0, v10, v35, v33);
    _Block_release(v33);

    (*(v40 + 8))(v35, v3);
    return (*(v37 + 8))(v10, v39);
  }

  return result;
}

uint64_t sub_1A427A614(uint64_t a1, unint64_t a2)
{
  sub_1A3C7D074(0, &qword_1EB12AFE0, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = v22 - v4;
  v6 = sub_1A5246F24();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = swift_projectBox();
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v12 = result;
    if (a2 >> 62)
    {
      if (sub_1A524E2B4())
      {
        goto LABEL_11;
      }
    }

    else if (*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_11;
    }

    v13 = sub_1A45318CC();
    (*(v7 + 16))(v9, v13, v6);
    v14 = v12;
    v15 = sub_1A5246F04();
    v16 = sub_1A524D264();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v24 = v16;
      v18 = v17;
      v23 = swift_slowAlloc();
      v26 = v23;
      *v18 = 136446210;
      v22[2] = v15;
      v25 = v14;
      _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
    }

    (*(v7 + 8))(v9, v6);
    if (*(v14 + OBJC_IVAR____TtC12PhotosUICore40SharedAlbumsActivityEntryItemListManager__canFetchMoreItems))
    {
      KeyPath = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](KeyPath);
      v22[-2] = v14;
      LOBYTE(v22[-1]) = 0;
      v26 = v14;
      sub_1A4280BF0(&qword_1EB129418, type metadata accessor for SharedAlbumsActivityEntryItemListManager);
      sub_1A52415C4();
    }

    else
    {
      *(v14 + OBJC_IVAR____TtC12PhotosUICore40SharedAlbumsActivityEntryItemListManager__canFetchMoreItems) = 0;
    }

LABEL_11:
    swift_beginAccess();
    v20 = MEMORY[0x1E6969530];
    sub_1A3C5DAA4(v10, v5, &qword_1EB12AFE0, MEMORY[0x1E6969530]);
    v21 = sub_1A5241144();
    (*(*(v21 - 8) + 48))(v5, 1, v21);
    sub_1A3C42C50(v5, &qword_1EB12AFE0, v20);
    sub_1A427AB54();
  }

  return result;
}

uint64_t sub_1A427BC70@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v5 = v1;
  sub_1A4280BF0(&qword_1EB129418, type metadata accessor for SharedAlbumsActivityEntryItemListManager);
  sub_1A52415D4();

  v3 = OBJC_IVAR____TtC12PhotosUICore40SharedAlbumsActivityEntryItemListManager___cachedLastSeenUnreadDate;
  swift_beginAccess();
  return sub_1A3C5DAA4(v5 + v3, a1, &qword_1EB12AFE0, MEMORY[0x1E6969530]);
}

BOOL sub_1A427BD54(id *a1)
{
  v2 = sub_1A5241144();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [*a1 date];
  sub_1A52410F4();

  v7 = sub_1A5241074();
  (*(v3 + 8))(v5, v2);
  v8 = sub_1A5241074();
  IsUnread = PXSharedAlbumsActivityDateIsUnread(v7, v8);

  return IsUnread;
}

uint64_t sub_1A427BE78(uint64_t (*a1)(id *), uint64_t a2, unint64_t a3)
{
  v4 = a3;
  v19 = MEMORY[0x1E69E7CC0];
  if (a3 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1A524E2B4())
  {
    v8 = 0;
    v16 = v4 & 0xFFFFFFFFFFFFFF8;
    v17 = v4 & 0xC000000000000001;
    v15 = v4;
    while (1)
    {
      if (v17)
      {
        v9 = MEMORY[0x1A59097F0](v8, v4);
      }

      else
      {
        if (v8 >= *(v16 + 16))
        {
          goto LABEL_17;
        }

        v9 = *(v4 + 8 * v8 + 32);
      }

      v10 = v9;
      v11 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      v18 = v9;
      v12 = a2;
      v13 = a1(&v18);
      if (v3)
      {

        return v12;
      }

      if (v13)
      {
        sub_1A524E514();
        sub_1A524E564();
        v4 = v15;
        sub_1A524E574();
        sub_1A524E524();
      }

      else
      {
      }

      ++v8;
      if (v11 == i)
      {
        v12 = v19;
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

  v12 = MEMORY[0x1E69E7CC0];
LABEL_20:

  return v12;
}

uint64_t sub_1A427C024(void **a1, void **a2)
{
  v4 = sub_1A5241144();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v21 - v9;
  v11 = *a1;
  v12 = *a2;
  v13 = [v11 type];
  v14 = [v12 type];
  if ((v13 == 5) == (v14 == 5))
  {
    v17 = [v11 date];
    sub_1A52410F4();

    v18 = [v12 date];
    sub_1A52410F4();

    v16 = sub_1A5241084();
    v19 = *(v5 + 8);
    v19(v8, v4);
    v19(v10, v4);
  }

  else
  {
    v16 = v13 == 5 && v14 != 5;
  }

  return v16 & 1;
}

void sub_1A427C1E0(unint64_t *a1)
{
  v2 = *a1;
  if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v2 & 0x8000000000000000) != 0 || (v2 & 0x4000000000000000) != 0)
  {
    v2 = sub_1A3E2AE98(v2);
  }

  v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v4[0] = (v2 & 0xFFFFFFFFFFFFFF8) + 32;
  v4[1] = v3;
  sub_1A427D890(v4);
  *a1 = v2;
}

void sub_1A427C2B8(void *a1)
{
  v1 = [a1 insertedObjectIDs];
  sub_1A3C52C70(0, &qword_1EB126AF0);
  sub_1A3C3A220(&qword_1EB126AE0, &qword_1EB126AF0);
  sub_1A524CF44();

  swift_getKeyPath();
  sub_1A4280BF0(&qword_1EB129418, type metadata accessor for SharedAlbumsActivityEntryItemListManager);
  sub_1A52415D4();

  swift_beginAccess();
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A427C878@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A4280BF0(&qword_1EB129418, type metadata accessor for SharedAlbumsActivityEntryItemListManager);
  sub_1A52415D4();

  v4 = OBJC_IVAR____TtC12PhotosUICore40SharedAlbumsActivityEntryItemListManager___cachedLastSeenUnreadDate;
  swift_beginAccess();
  return sub_1A3C5DAA4(v3 + v4, a2, &qword_1EB12AFE0, MEMORY[0x1E6969530]);
}

uint64_t sub_1A427C95C(uint64_t a1)
{
  v2 = MEMORY[0x1E6969530];
  sub_1A3C7D074(0, &qword_1EB12AFE0, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v7 - v4;
  sub_1A3C5DAA4(a1, &v7 - v4, &qword_1EB12AFE0, v2);
  return sub_1A427815C(v5);
}

uint64_t sub_1A427CA2C()
{
  swift_getKeyPath();
  sub_1A4280BF0(&qword_1EB129418, type metadata accessor for SharedAlbumsActivityEntryItemListManager);
  sub_1A52415D4();

  return swift_unknownObjectRetain();
}

uint64_t sub_1A427CAD8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A4280BF0(&qword_1EB129418, type metadata accessor for SharedAlbumsActivityEntryItemListManager);
  sub_1A52415D4();

  *a2 = *(v3 + OBJC_IVAR____TtC12PhotosUICore40SharedAlbumsActivityEntryItemListManager___lastSeenNotificationObserver);
  return swift_unknownObjectRetain();
}

uint64_t sub_1A427CB8C()
{
  swift_getKeyPath();
  sub_1A4280BF0(&qword_1EB129418, type metadata accessor for SharedAlbumsActivityEntryItemListManager);
  sub_1A52415C4();
}

uint64_t sub_1A427CC58()
{
  v1 = v0;
  v2 = sub_1A5246F24();
  v52 = *(v2 - 8);
  v53 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v51 = &v45 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3E99834();
  v5 = v4 - 8;
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = MEMORY[0x1E6969530];
  sub_1A3C7D074(0, &qword_1EB12AFE0, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  v9 = MEMORY[0x1EEE9AC00](v8 - 8);
  v50 = &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v55 = &v45 - v12;
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v45 - v13;
  v15 = sub_1A5241144();
  v16 = *(v15 - 8);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v46 = &v45 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v45 - v19;
  v21 = PXSharedAlbumsActivityLastSeenDate();
  sub_1A52410F4();

  swift_getKeyPath();
  v58 = v1;
  sub_1A4280BF0(&qword_1EB129418, type metadata accessor for SharedAlbumsActivityEntryItemListManager);
  sub_1A52415D4();

  v22 = OBJC_IVAR____TtC12PhotosUICore40SharedAlbumsActivityEntryItemListManager___cachedLastSeenUnreadDate;
  swift_beginAccess();
  v23 = v16[2];
  v56 = v20;
  v48 = v23;
  v23(v14, v20, v15);
  v47 = v16[7];
  v47(v14, 0, 1, v15);
  v24 = *(v5 + 56);
  v25 = v1 + v22;
  v26 = v16;
  v27 = v54;
  sub_1A3C5DAA4(v25, v7, &qword_1EB12AFE0, v54);
  sub_1A3C5DAA4(v14, &v7[v24], &qword_1EB12AFE0, v27);
  v28 = v16[6];
  if (v28(v7, 1, v15) != 1)
  {
    sub_1A3C5DAA4(v7, v55, &qword_1EB12AFE0, MEMORY[0x1E6969530]);
    if (v28(&v7[v24], 1, v15) != 1)
    {
      v41 = v46;
      (v26[4])(v46, &v7[v24], v15);
      sub_1A4280BF0(&unk_1EB12AFF0, MEMORY[0x1E6969530]);
      v42 = v55;
      LODWORD(v54) = sub_1A524C594();
      v43 = v26[1];
      v43(v41, v15);
      v44 = MEMORY[0x1E6969530];
      sub_1A3C42C50(v14, &qword_1EB12AFE0, MEMORY[0x1E6969530]);
      v43(v42, v15);
      sub_1A3C42C50(v7, &qword_1EB12AFE0, v44);
      if (v54)
      {
        return (v26[1])(v56, v15);
      }

LABEL_7:
      v29 = v50;
      v48(v50, v56, v15);
      v47(v29, 0, 1, v15);
      v30 = v29;
      v31 = v49;
      sub_1A427815C(v30);
      v32 = sub_1A45318CC();
      v34 = v51;
      v33 = v52;
      v35 = v53;
      (*(v52 + 16))(v51, v32, v53);
      v36 = v31;
      v37 = sub_1A5246F04();
      v38 = sub_1A524D224();

      if (os_log_type_enabled(v37, v38))
      {
        v39 = swift_slowAlloc();
        v57 = swift_slowAlloc();
        *v39 = 136446210;
        sub_1A3C2EF94();
      }

      (*(v33 + 8))(v34, v35);
      sub_1A4278484(0);
    }

    sub_1A3C42C50(v14, &qword_1EB12AFE0, MEMORY[0x1E6969530]);
    (v26[1])(v55, v15);
LABEL_6:
    sub_1A402E2B4(v7);
    goto LABEL_7;
  }

  sub_1A3C42C50(v14, &qword_1EB12AFE0, MEMORY[0x1E6969530]);
  if (v28(&v7[v24], 1, v15) != 1)
  {
    goto LABEL_6;
  }

  sub_1A3C42C50(v7, &qword_1EB12AFE0, MEMORY[0x1E6969530]);
  return (v26[1])(v56, v15);
}

id sub_1A427D50C@<X0>(void *a1@<X8>)
{
  v2 = *(*v1 + OBJC_IVAR____TtC12PhotosUICore40SharedAlbumsActivityEntryItemListManager_observable);
  *a1 = v2;
  return v2;
}

id sub_1A427D524@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  sub_1A4280BF0(&qword_1EB129418, type metadata accessor for SharedAlbumsActivityEntryItemListManager);
  sub_1A52415D4();

  v3 = *(v1 + OBJC_IVAR____TtC12PhotosUICore40SharedAlbumsActivityEntryItemListManager__itemList);
  *a1 = v3;

  return v3;
}

void sub_1A427D62C()
{
  swift_getObjectType();

    ;
  }
}

void sub_1A427D678()
{
  swift_getObjectType();

    ;
  }
}

void sub_1A427D6D0()
{
  swift_getObjectType();

  sub_1A5245974();
}

void sub_1A427D70C()
{
  sub_1A4280BF0(&qword_1EB129430, type metadata accessor for SharedAlbumsActivityEntryItemListManager);

  sub_1A5245C54();
}

uint64_t sub_1A427D7A0(unint64_t a1)
{
  if (a1 >> 62)
  {
    v3 = sub_1A524E2B4();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!(*v1 >> 62))
  {
    v4 = *((*v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v5 = __OFADD__(v4, v3);
    result = v4 + v3;
    if (!v5)
    {
      goto LABEL_5;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v13 = sub_1A524E2B4();
  v5 = __OFADD__(v13, v3);
  result = v13 + v3;
  if (v5)
  {
    goto LABEL_13;
  }

LABEL_5:
  sub_1A3D5C1C8(result);
  v7 = *v1;
  v8 = *v1 & 0xFFFFFFFFFFFFFF8;
  sub_1A427FC04(v8 + 8 * *(v8 + 0x10) + 32, (*(v8 + 0x18) >> 1) - *(v8 + 0x10), a1);
  v10 = v9;

  if (v10 < v3)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v10 < 1)
  {
LABEL_9:
    *v1 = v7;
    return result;
  }

  v11 = *(v8 + 16);
  v5 = __OFADD__(v11, v10);
  v12 = v11 + v10;
  if (!v5)
  {
    *(v8 + 16) = v12;
    goto LABEL_9;
  }

LABEL_15:
  __break(1u);
  return result;
}

void sub_1A427D890(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_1A524EA34();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        sub_1A3C52C70(0, &qword_1EB126820);
        v6 = sub_1A524CAC4();
        *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = v5;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFF8;
      v8[0] = (v6 & 0xFFFFFFFFFFFFFF8) + 32;
      v8[1] = v5;
      sub_1A427DC14(v8, v9, a1, v4);
      *(v7 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_1A427D9A4(0, v2, 1, a1);
  }
}

void sub_1A427D9A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v38 = sub_1A5241144();
  v8 = MEMORY[0x1EEE9AC00](v38);
  v37 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v32 - v11;
  v33 = a2;
  if (a3 != a2)
  {
    v39 = *a4;
    v13 = (v10 + 8);
    v14 = v39 + 8 * a3 - 8;
    v15 = a1 - a3;
LABEL_5:
    v35 = v14;
    v36 = a3;
    v16 = *(v39 + 8 * a3);
    v34 = v15;
    while (1)
    {
      v17 = *v14;
      v18 = v16;
      v19 = v17;
      v20 = [v18 type];
      v21 = [v19 type];
      if ((v20 == 5) != (v21 == 5))
      {
        v22 = v21;

        if (v22 == 5 || v20 != 5)
        {
LABEL_4:
          a3 = v36 + 1;
          v14 = v35 + 8;
          v15 = v34 - 1;
          if (v36 + 1 == v33)
          {
            return;
          }

          goto LABEL_5;
        }
      }

      else
      {
        v24 = [v18 date];
        sub_1A52410F4();

        v25 = [v19 date];
        v26 = v37;
        sub_1A52410F4();

        LOBYTE(v25) = sub_1A5241084();
        v27 = *v13;
        v28 = v26;
        v29 = v38;
        (*v13)(v28, v38);
        v27(v12, v29);

        if ((v25 & 1) == 0)
        {
          goto LABEL_4;
        }
      }

      if (!v39)
      {
        break;
      }

      v30 = *v14;
      v16 = *(v14 + 8);
      *v14 = v16;
      *(v14 + 8) = v30;
      v14 -= 8;
      if (__CFADD__(v15++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

void sub_1A427DC14(uint64_t *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v5 = v4;
  v120 = a1;
  v130 = sub_1A5241144();
  v8 = MEMORY[0x1EEE9AC00](v130);
  v129 = &v115 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v128 = &v115 - v11;
  v12 = a3[1];
  if (v12 < 1)
  {
    v14 = MEMORY[0x1E69E7CC0];
LABEL_103:
    v12 = *v120;
    if (!*v120)
    {
      goto LABEL_142;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_136:
      v14 = sub_1A3D86884(v14);
    }

    v133 = v14;
    v111 = *(v14 + 2);
    if (v111 >= 2)
    {
      while (*a3)
      {
        v112 = *&v14[16 * v111];
        v113 = *&v14[16 * v111 + 24];
        sub_1A427E4FC((*a3 + 8 * v112), (*a3 + 8 * *&v14[16 * v111 + 16]), (*a3 + 8 * v113), v12);
        if (v5)
        {
          goto LABEL_113;
        }

        if (v113 < v112)
        {
          goto LABEL_129;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v14 = sub_1A3D86884(v14);
        }

        if (v111 - 2 >= *(v14 + 2))
        {
          goto LABEL_130;
        }

        v114 = &v14[16 * v111];
        *v114 = v112;
        *(v114 + 1) = v113;
        v133 = v14;
        sub_1A3D867F8(v111 - 1);
        v14 = v133;
        v111 = *(v133 + 2);
        if (v111 <= 1)
        {
          goto LABEL_113;
        }
      }

      goto LABEL_140;
    }

LABEL_113:

    return;
  }

  v119 = a4;
  v13 = 0;
  v127 = (v10 + 8);
  v14 = MEMORY[0x1E69E7CC0];
  v121 = a3;
  while (1)
  {
    v15 = v13;
    if (v13 + 1 >= v12)
    {
      v125 = v13 + 1;
    }

    else
    {
      v16 = *a3;
      v17 = *(*a3 + 8 * (v13 + 1));
      v18 = v13;
      v131 = *(*a3 + 8 * v13);
      v19 = v131;
      v132 = v17;
      v20 = v17;
      v21 = v19;
      LODWORD(v126) = sub_1A427C024(&v132, &v131);
      if (v5)
      {

        return;
      }

      v125 = v18 + 2;
      v15 = v18;
      if (v18 + 2 < v12)
      {
        v118 = v18;
        v22 = (v16 + 8 * v18 + 16);
        v124 = v12;
        do
        {
          v30 = *(v22 - 1);
          v31 = *v22;
          v32 = v30;
          v33 = [v31 type];
          v34 = [v32 type];
          if ((v33 == 5) != (v34 == 5))
          {
            v12 = v34;

            if (v33 == 5)
            {
              if (((v126 ^ (v12 == 5)) & 1) == 0)
              {
                goto LABEL_18;
              }
            }

            else if (v126)
            {
              v15 = v118;
              goto LABEL_20;
            }
          }

          else
          {
            v23 = [v31 date];
            v24 = v128;
            sub_1A52410F4();

            v25 = [v32 date];
            v26 = v129;
            sub_1A52410F4();

            LODWORD(v123) = sub_1A5241084();
            v27 = *v127;
            v28 = v26;
            v12 = v130;
            (*v127)(v28, v130);
            v29 = v24;
            a3 = v121;
            v27(v29, v12);

            if ((v126 ^ v123))
            {
              goto LABEL_18;
            }
          }

          v12 = v124;
          ++v22;
          ++v125;
        }

        while (v124 != v125);
        v125 = v124;
LABEL_18:
        v15 = v118;
      }

      if (v126)
      {
LABEL_20:
        v35 = v125;
        if (v125 < v15)
        {
          goto LABEL_133;
        }

        if (v15 < v125)
        {
          v36 = 8 * v125 - 8;
          v37 = 8 * v15;
          v38 = v15;
          do
          {
            if (v38 != --v35)
            {
              v40 = *a3;
              if (!*a3)
              {
                goto LABEL_139;
              }

              v39 = *(v40 + v37);
              *(v40 + v37) = *(v40 + v36);
              *(v40 + v36) = v39;
            }

            ++v38;
            v36 -= 8;
            v37 += 8;
          }

          while (v38 < v35);
        }
      }
    }

    v41 = a3[1];
    if (v125 < v41)
    {
      if (__OFSUB__(v125, v15))
      {
        goto LABEL_132;
      }

      if (v125 - v15 < v119)
      {
        if (__OFADD__(v15, v119))
        {
          goto LABEL_134;
        }

        if (v15 + v119 >= v41)
        {
          v42 = a3[1];
        }

        else
        {
          v42 = v15 + v119;
        }

        if (v42 < v15)
        {
LABEL_135:
          __break(1u);
          goto LABEL_136;
        }

        if (v125 != v42)
        {
          break;
        }
      }
    }

LABEL_52:
    if (v125 < v15)
    {
      goto LABEL_131;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v14 = sub_1A3D8598C(0, *(v14 + 2) + 1, 1, v14);
    }

    v65 = *(v14 + 2);
    v64 = *(v14 + 3);
    v12 = v65 + 1;
    if (v65 >= v64 >> 1)
    {
      v14 = sub_1A3D8598C((v64 > 1), v65 + 1, 1, v14);
    }

    *(v14 + 2) = v12;
    v66 = &v14[16 * v65];
    v67 = v125;
    *(v66 + 4) = v15;
    *(v66 + 5) = v67;
    v68 = *v120;
    if (!*v120)
    {
      goto LABEL_141;
    }

    if (v65)
    {
      while (1)
      {
        v69 = v12 - 1;
        if (v12 >= 4)
        {
          break;
        }

        if (v12 == 3)
        {
          v70 = *(v14 + 4);
          v71 = *(v14 + 5);
          v80 = __OFSUB__(v71, v70);
          v72 = v71 - v70;
          v73 = v80;
LABEL_72:
          if (v73)
          {
            goto LABEL_120;
          }

          v86 = &v14[16 * v12];
          v88 = *v86;
          v87 = *(v86 + 1);
          v89 = __OFSUB__(v87, v88);
          v90 = v87 - v88;
          v91 = v89;
          if (v89)
          {
            goto LABEL_123;
          }

          v92 = &v14[16 * v69 + 32];
          v94 = *v92;
          v93 = *(v92 + 1);
          v80 = __OFSUB__(v93, v94);
          v95 = v93 - v94;
          if (v80)
          {
            goto LABEL_126;
          }

          if (__OFADD__(v90, v95))
          {
            goto LABEL_127;
          }

          if (v90 + v95 >= v72)
          {
            if (v72 < v95)
            {
              v69 = v12 - 2;
            }

            goto LABEL_93;
          }

          goto LABEL_86;
        }

        v96 = &v14[16 * v12];
        v98 = *v96;
        v97 = *(v96 + 1);
        v80 = __OFSUB__(v97, v98);
        v90 = v97 - v98;
        v91 = v80;
LABEL_86:
        if (v91)
        {
          goto LABEL_122;
        }

        v99 = &v14[16 * v69];
        v101 = *(v99 + 4);
        v100 = *(v99 + 5);
        v80 = __OFSUB__(v100, v101);
        v102 = v100 - v101;
        if (v80)
        {
          goto LABEL_125;
        }

        if (v102 < v90)
        {
          goto LABEL_3;
        }

LABEL_93:
        v107 = v69 - 1;
        if (v69 - 1 >= v12)
        {
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
          goto LABEL_135;
        }

        if (!*a3)
        {
          goto LABEL_138;
        }

        v108 = *&v14[16 * v107 + 32];
        v109 = *&v14[16 * v69 + 40];
        sub_1A427E4FC((*a3 + 8 * v108), (*a3 + 8 * *&v14[16 * v69 + 32]), (*a3 + 8 * v109), v68);
        if (v5)
        {
          goto LABEL_113;
        }

        if (v109 < v108)
        {
          goto LABEL_116;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v14 = sub_1A3D86884(v14);
        }

        if (v107 >= *(v14 + 2))
        {
          goto LABEL_117;
        }

        v110 = &v14[16 * v107];
        *(v110 + 4) = v108;
        *(v110 + 5) = v109;
        v133 = v14;
        sub_1A3D867F8(v69);
        v14 = v133;
        v12 = *(v133 + 2);
        if (v12 <= 1)
        {
          goto LABEL_3;
        }
      }

      v74 = &v14[16 * v12 + 32];
      v75 = *(v74 - 64);
      v76 = *(v74 - 56);
      v80 = __OFSUB__(v76, v75);
      v77 = v76 - v75;
      if (v80)
      {
        goto LABEL_118;
      }

      v79 = *(v74 - 48);
      v78 = *(v74 - 40);
      v80 = __OFSUB__(v78, v79);
      v72 = v78 - v79;
      v73 = v80;
      if (v80)
      {
        goto LABEL_119;
      }

      v81 = &v14[16 * v12];
      v83 = *v81;
      v82 = *(v81 + 1);
      v80 = __OFSUB__(v82, v83);
      v84 = v82 - v83;
      if (v80)
      {
        goto LABEL_121;
      }

      v80 = __OFADD__(v72, v84);
      v85 = v72 + v84;
      if (v80)
      {
        goto LABEL_124;
      }

      if (v85 >= v77)
      {
        v103 = &v14[16 * v69 + 32];
        v105 = *v103;
        v104 = *(v103 + 1);
        v80 = __OFSUB__(v104, v105);
        v106 = v104 - v105;
        if (v80)
        {
          goto LABEL_128;
        }

        if (v72 < v106)
        {
          v69 = v12 - 2;
        }

        goto LABEL_93;
      }

      goto LABEL_72;
    }

LABEL_3:
    v12 = a3[1];
    v13 = v125;
    if (v125 >= v12)
    {
      goto LABEL_103;
    }
  }

  v116 = v14;
  v117 = v5;
  v43 = *a3;
  v44 = *a3 + 8 * v125 - 8;
  v118 = v15;
  v45 = v15 - v125;
  v46 = v125;
  v122 = v42;
  v126 = v43;
LABEL_39:
  v124 = v44;
  v125 = v46;
  v47 = *(v43 + 8 * v46);
  v123 = v45;
  v48 = v44;
  while (1)
  {
    v49 = *v48;
    v50 = v47;
    v12 = v49;
    v51 = [v50 type];
    v52 = [v12 type];
    if ((v51 == 5) != (v52 == 5))
    {
      v53 = v52;

      if (v53 == 5 || v51 != 5)
      {
LABEL_38:
        v46 = v125 + 1;
        v44 = v124 + 8;
        v45 = v123 - 1;
        if (v125 + 1 != v122)
        {
          goto LABEL_39;
        }

        v125 = v122;
        v14 = v116;
        v5 = v117;
        a3 = v121;
        v15 = v118;
        goto LABEL_52;
      }
    }

    else
    {
      v55 = [v50 date];
      v56 = v128;
      sub_1A52410F4();

      v57 = [v12 date];
      v58 = v129;
      sub_1A52410F4();

      LOBYTE(v57) = sub_1A5241084();
      v59 = *v127;
      v60 = v58;
      v61 = v130;
      (*v127)(v60, v130);
      v59(v56, v61);
      v43 = v126;

      if ((v57 & 1) == 0)
      {
        goto LABEL_38;
      }
    }

    if (!v43)
    {
      break;
    }

    v62 = *v48;
    v47 = *(v48 + 8);
    *v48 = v47;
    *(v48 + 8) = v62;
    v48 -= 8;
    if (__CFADD__(v45++, 1))
    {
      goto LABEL_38;
    }
  }

  __break(1u);
LABEL_138:
  __break(1u);
LABEL_139:
  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
}

uint64_t sub_1A427E4FC(void **a1, void **a2, id *a3, void **a4)
{
  v60 = sub_1A5241144();
  v8 = *(v60 - 8);
  v9 = MEMORY[0x1EEE9AC00](v60);
  v59 = &v53 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v58 = &v53 - v11;
  v12 = a2 - a1 + 7;
  if (a2 - a1 >= 0)
  {
    v12 = a2 - a1;
  }

  v13 = v12 >> 3;
  v14 = a3 - a2 + 7;
  if (a3 - a2 >= 0)
  {
    v14 = a3 - a2;
  }

  v15 = v14 >> 3;
  if (v13 >= v14 >> 3)
  {
    if (a4 != a2 || &a2[v15] <= a4)
    {
      memmove(a4, a2, 8 * v15);
    }

    v62 = &a4[v15];
    if (a3 - a2 >= 8 && a2 > a1)
    {
      v55 = (v8 + 8);
      v56 = a4;
      v61 = a1;
LABEL_33:
      v54 = a2;
      v33 = a2 - 1;
      --a3;
      v34 = v62;
      v57 = a2 - 1;
      do
      {
        v35 = *--v34;
        v36 = *v33;
        v37 = v35;
        v38 = v36;
        v39 = [v37 type];
        v40 = [v38 type];
        if ((v39 == 5) != (v40 == 5))
        {
          v41 = v40;

          if (v41 != 5 && v39 == 5)
          {
LABEL_45:
            a4 = v56;
            v51 = v57;
            if (a3 + 1 != v54)
            {
              *a3 = *v57;
            }

            if (v62 <= a4 || (a2 = v51, v51 <= a1))
            {
              a2 = v51;
              goto LABEL_52;
            }

            goto LABEL_33;
          }
        }

        else
        {
          v43 = [v37 date];
          v44 = v58;
          sub_1A52410F4();

          v45 = [v38 date];
          v46 = v59;
          sub_1A52410F4();

          LOBYTE(v45) = sub_1A5241084();
          v47 = *v55;
          v48 = v46;
          v49 = v60;
          (*v55)(v48, v60);
          v50 = v44;
          a1 = v61;
          v47(v50, v49);

          if (v45)
          {
            goto LABEL_45;
          }
        }

        a4 = v56;
        if (a3 + 1 != v62)
        {
          *a3 = *v34;
        }

        --a3;
        v62 = v34;
        v33 = v57;
      }

      while (v34 > a4);
      v62 = v34;
      a2 = v54;
    }
  }

  else
  {
    if (a4 != a1 || &a1[v13] <= a4)
    {
      memmove(a4, a1, 8 * v13);
    }

    v62 = &a4[v13];
    if (a2 - a1 >= 8 && a2 < a3)
    {
      v16 = a2;
      v55 = (v8 + 8);
      do
      {
        v17 = *a4;
        v18 = *v16;
        v19 = v17;
        v20 = [v18 type];
        v21 = [v19 type];
        if ((v20 == 5) != (v21 == 5))
        {
          v22 = v21;

          v23 = v22 != 5 && v20 == 5;
          if (v23)
          {
LABEL_18:
            v24 = v16;
            v23 = a1 == v16++;
            if (v23)
            {
              goto LABEL_20;
            }

LABEL_19:
            *a1 = *v24;
            goto LABEL_20;
          }
        }

        else
        {
          v25 = [v18 date];
          v61 = a1;
          v26 = v58;
          sub_1A52410F4();

          v27 = [v19 date];
          v28 = v59;
          sub_1A52410F4();

          LODWORD(v57) = sub_1A5241084();
          v29 = *v55;
          v30 = v28;
          v31 = v60;
          (*v55)(v30, v60);
          v32 = v26;
          a1 = v61;
          v29(v32, v31);

          if (v57)
          {
            goto LABEL_18;
          }
        }

        v24 = a4;
        v23 = a1 == a4++;
        if (!v23)
        {
          goto LABEL_19;
        }

LABEL_20:
        ++a1;
      }

      while (a4 < v62 && v16 < a3);
    }

    a2 = a1;
  }

LABEL_52:
  if (a2 != a4 || a2 >= (a4 + ((v62 - a4 + (v62 - a4 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(a2, a4, 8 * (v62 - a4));
  }

  return 1;
}

void *sub_1A427EA28(uint64_t a1, uint64_t a2)
{
  v3 = a1 & 0xC000000000000001;
  if ((a2 & 0xC000000000000001) != 0)
  {
    if (v3)
    {
      if (a2 < 0)
      {
        v4 = a2;
      }

      else
      {
        v4 = a2 & 0xFFFFFFFFFFFFFF8;
      }

      v5 = sub_1A524E2B4();
      a2 = sub_1A3F6C9B8(v4, v5);
      goto LABEL_8;
    }

    sub_1A3C52C70(0, &qword_1EB126AF0);
    v7 = MEMORY[0x1E69E7CD0];
    v16 = MEMORY[0x1E69E7CD0];
    sub_1A524E274();
    if (sub_1A524E304())
    {
      v8 = a1 + 56;
      do
      {
        swift_dynamicCast();
        if (*(a1 + 16) && (v9 = sub_1A524DBE4(), v10 = -1 << *(a1 + 32), v11 = v9 & ~v10, ((*(v8 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0))
        {
          v12 = ~v10;
          while (1)
          {
            v13 = *(*(a1 + 48) + 8 * v11);
            v14 = sub_1A524DBF4();

            if (v14)
            {
              break;
            }

            v11 = (v11 + 1) & v12;
            if (((*(v8 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
            {
              goto LABEL_13;
            }
          }

          if (*(v7 + 24) <= *(v7 + 16))
          {
            sub_1A3F6CB98();
          }

          v7 = v16;
          sub_1A3E2BD08(v15, v16);
        }

        else
        {
LABEL_13:
        }
      }

      while (sub_1A524E304());
    }

    return v7;
  }

  else
  {
    if (v3)
    {
LABEL_8:

      return sub_1A427EC60(a1, a2);
    }

    return sub_1A427EE00(a1, a2);
  }
}

uint64_t sub_1A427EC60(uint64_t isStackAllocationSafe, uint64_t a2)
{
  v3 = isStackAllocationSafe;
  v18[6] = *MEMORY[0x1E69E9840];
  v17 = isStackAllocationSafe;
  v4 = *(a2 + 32);
  v5 = v4 & 0x3F;
  v18[3] = &v17;
  v18[4] = a2;
  v6 = (1 << v4) + 63;
  v7 = v6 >> 6;
  if (v5 <= 0xD || (v13 = 8 * (v6 >> 6), isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe & 1) != 0))
  {
    MEMORY[0x1EEE9AC00](isStackAllocationSafe);
    v9 = &v16 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v9, v8);
    sub_1A427EFC4(v9, v7, v3, a2);
    v11 = v10;
  }

  else
  {
    v14 = v13;
    v15 = swift_slowAlloc();
    bzero(v15, v14);
    sub_1A4280A8C(v15, v7, v18);
    v11 = v18[0];

    MEMORY[0x1A590EEC0](v15, -1, -1);
  }

  return v11;
}

void *sub_1A427EE00(uint64_t a1, uint64_t a2)
{
  v13[1] = *MEMORY[0x1E69E9840];
  v4 = *(a2 + 32);
  v5 = v4 & 0x3F;
  v6 = ((1 << v4) + 63) >> 6;
  v7 = 8 * v6;

  if (v5 <= 0xD || (isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe & 1) != 0))
  {
    MEMORY[0x1EEE9AC00](isStackAllocationSafe);
    bzero(v13 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0), v7);
    sub_1A427F3C0((v13 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0)), v6, a2, a1);
    v10 = v9;
  }

  else
  {
    v12 = swift_slowAlloc();

    v10 = sub_1A427F330(v12, v6, a2, a1);

    MEMORY[0x1A590EEC0](v12, -1, -1);
  }

  return v10;
}

void sub_1A427EFC4(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if ((a3 & 0xC000000000000001) == 0)
  {
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  swift_unknownObjectRetain();
  sub_1A524E274();
  sub_1A3C52C70(0, &qword_1EB126AF0);
  sub_1A3C3A220(&qword_1EB126AE0, &qword_1EB126AF0);
  sub_1A524CF84();
  v4 = v32;
  v5 = v33;
  v6 = v35;
  v7 = v36;
  v28 = 0;
  v8 = (v34 + 64) >> 6;
  v30 = a4 + 56;
LABEL_4:
  v9 = v6;
  v10 = v7;
  while (v4 < 0)
  {
    if (!sub_1A524E304())
    {
      goto LABEL_25;
    }

    sub_1A3C52C70(0, &qword_1EB126AF0);
    swift_dynamicCast();
    v13 = v37;
    v6 = v9;
    v7 = v10;
    if (!v37)
    {
      goto LABEL_25;
    }

LABEL_15:
    v14 = sub_1A524DBE4();
    v15 = -1 << *(a4 + 32);
    v16 = v14 & ~v15;
    v17 = v16 >> 6;
    v18 = 1 << v16;
    if (((1 << v16) & *(v30 + 8 * (v16 >> 6))) == 0)
    {
      goto LABEL_5;
    }

    sub_1A3C52C70(0, &qword_1EB126AF0);
    v19 = *(*(a4 + 48) + 8 * v16);
    v20 = sub_1A524DBF4();

    if (v20)
    {
LABEL_20:
      v8 = (v34 + 64) >> 6;

      v24 = a1[v17];
      a1[v17] = v24 | v18;
      v9 = v6;
      v10 = v7;
      v25 = (v24 & v18) == 0;
      v5 = v33;
      v4 = v32;
      if (v25)
      {
        if (!__OFADD__(v28++, 1))
        {
          goto LABEL_4;
        }

        __break(1u);
LABEL_25:
        sub_1A3C42540();

        sub_1A427F7A4(a1, a2, v28, a4);
        return;
      }
    }

    else
    {
      v21 = ~v15;
      while (1)
      {
        v16 = (v16 + 1) & v21;
        v17 = v16 >> 6;
        v18 = 1 << v16;
        if (((1 << v16) & *(v30 + 8 * (v16 >> 6))) == 0)
        {
          break;
        }

        v22 = *(*(a4 + 48) + 8 * v16);
        v23 = sub_1A524DBF4();

        if (v23)
        {
          goto LABEL_20;
        }
      }

LABEL_5:

      v9 = v6;
      v8 = (v34 + 64) >> 6;
      v10 = v7;
      v5 = v33;
      v4 = v32;
    }
  }

  v11 = v9;
  v12 = v10;
  v6 = v9;
  if (v10)
  {
LABEL_11:
    v7 = (v12 - 1) & v12;
    v13 = *(*(v4 + 48) + ((v6 << 9) | (8 * __clz(__rbit64(v12)))));
    if (!v13)
    {
      goto LABEL_25;
    }

    goto LABEL_15;
  }

  while (1)
  {
    v6 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v6 >= v8)
    {
      goto LABEL_25;
    }

    v12 = *(v5 + 8 * v6);
    ++v11;
    if (v12)
    {
      goto LABEL_11;
    }
  }

  __break(1u);
}

void *sub_1A427F330(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v6 = result;
      v7 = a2;
      bzero(result, 8 * a2);
      result = v6;
      a2 = v7;
    }

    sub_1A427F3C0(result, a2, a3, a4);
    v9 = v8;

    return v9;
  }

  return result;
}

void sub_1A427F3C0(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) >= *(a3 + 16))
  {
LABEL_22:
    v49 = 0;
    v26 = 0;
    v45 = v5 + 56;
    v27 = 1 << *(v5 + 32);
    if (v27 < 64)
    {
      v28 = ~(-1 << v27);
    }

    else
    {
      v28 = -1;
    }

    v29 = v28 & *(v5 + 56);
    v30 = (v27 + 63) >> 6;
    v31 = v4 + 56;
    while (v29)
    {
      v32 = __clz(__rbit64(v29));
      v51 = (v29 - 1) & v29;
LABEL_34:
      v48 = v32 | (v26 << 6);
      v35 = *(*(a3 + 48) + 8 * v48);
      v36 = sub_1A524DBE4();
      v37 = -1 << *(v4 + 32);
      v38 = v36 & ~v37;
      if ((*(v31 + ((v38 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v38))
      {
        v39 = ~v37;
        sub_1A3C52C70(0, &qword_1EB126AF0);
        while (1)
        {
          v40 = *(*(v4 + 48) + 8 * v38);
          v41 = sub_1A524DBF4();

          if (v41)
          {
            break;
          }

          v38 = (v38 + 1) & v39;
          v4 = a4;
          if (((*(v31 + ((v38 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v38) & 1) == 0)
          {
            goto LABEL_26;
          }
        }

        *(a1 + ((v48 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v48;
        v29 = v51;
        v25 = __OFADD__(v49++, 1);
        v4 = a4;
        if (v25)
        {
          __break(1u);
LABEL_42:
          v5 = a3;
          goto LABEL_43;
        }
      }

      else
      {
LABEL_26:

        v29 = v51;
      }
    }

    v33 = v26;
    while (1)
    {
      v26 = v33 + 1;
      if (__OFADD__(v33, 1))
      {
        goto LABEL_45;
      }

      if (v26 >= v30)
      {
        goto LABEL_42;
      }

      v34 = *(v45 + 8 * v26);
      ++v33;
      if (v34)
      {
        v32 = __clz(__rbit64(v34));
        v51 = (v34 - 1) & v34;
        goto LABEL_34;
      }
    }
  }

  v6 = 0;
  v42 = a4 + 56;
  v7 = 1 << *(a4 + 32);
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
  v10 = (v7 + 63) >> 6;
  v49 = 0;
  v50 = a3 + 56;
  v44 = v10;
  while (v9)
  {
    v11 = __clz(__rbit64(v9));
    v47 = (v9 - 1) & v9;
LABEL_14:
    v14 = *(*(v4 + 48) + 8 * (v11 | (v6 << 6)));
    v15 = sub_1A524DBE4();
    v16 = -1 << *(v5 + 32);
    v17 = v15 & ~v16;
    v18 = v17 >> 6;
    v19 = 1 << v17;
    if (((1 << v17) & *(v50 + 8 * (v17 >> 6))) != 0)
    {
      sub_1A3C52C70(0, &qword_1EB126AF0);
      v20 = *(*(v5 + 48) + 8 * v17);
      v21 = sub_1A524DBF4();

      if ((v21 & 1) == 0)
      {
        v22 = ~v16;
        do
        {
          v17 = (v17 + 1) & v22;
          v18 = v17 >> 6;
          v19 = 1 << v17;
          v5 = a3;
          if (((1 << v17) & *(v50 + 8 * (v17 >> 6))) == 0)
          {
            goto LABEL_6;
          }

          v23 = *(*(a3 + 48) + 8 * v17);
          v24 = sub_1A524DBF4();
        }

        while ((v24 & 1) == 0);
      }

      v10 = v44;
      a1[v18] |= v19;
      v9 = v47;
      v25 = __OFADD__(v49++, 1);
      v5 = a3;
      v4 = a4;
      if (v25)
      {
        __break(1u);
        goto LABEL_22;
      }
    }

    else
    {
LABEL_6:

      v4 = a4;
      v10 = v44;
      v9 = v47;
    }
  }

  v12 = v6;
  while (1)
  {
    v6 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v6 >= v10)
    {
LABEL_43:

      sub_1A427F7A4(a1, a2, v49, v5);
      return;
    }

    v13 = *(v42 + 8 * v6);
    ++v12;
    if (v13)
    {
      v11 = __clz(__rbit64(v13));
      v47 = (v13 - 1) & v13;
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_45:
  __break(1u);
}

uint64_t sub_1A427F7A4(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = MEMORY[0x1E69E7CD0];
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  sub_1A3F6D6F4();
  result = sub_1A524E3D4();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = *(*(v4 + 48) + 8 * (v13 | (v11 << 6)));
    result = sub_1A524DBE4();
    v17 = -1 << *(v9 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*(v12 + 8 * (v18 >> 6))) == 0)
    {
      v21 = 0;
      v22 = (63 - v17) >> 6;
      while (++v19 != v22 || (v21 & 1) == 0)
      {
        v23 = v19 == v22;
        if (v19 == v22)
        {
          v19 = 0;
        }

        v21 |= v23;
        v24 = *(v12 + 8 * v19);
        if (v24 != -1)
        {
          v20 = __clz(__rbit64(~v24)) + (v19 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v20 = __clz(__rbit64((-1 << v18) & ~*(v12 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
    *(*(v9 + 48) + 8 * v20) = v16;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

void sub_1A427F98C(uint64_t a1, uint64_t a2)
{
  v3 = a2 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    if (a1 < 0)
    {
      v4 = a1;
    }

    else
    {
      v4 = a1 & 0xFFFFFFFFFFFFFF8;
    }

    if (v3)
    {
      if (a2 < 0)
      {
        v5 = a2;
      }

      else
      {
        v5 = a2 & 0xFFFFFFFFFFFFFF8;
      }

LABEL_43:
      MEMORY[0x1EEE6A200](v5, v4);
      return;
    }

    v8 = v4;
    v7 = a2;
    goto LABEL_17;
  }

  if (v3)
  {
    v6 = a2 & 0xFFFFFFFFFFFFFF8;
    if (a2 < 0)
    {
      v6 = a2;
    }

    v7 = a1;
    v8 = v6;
LABEL_17:

    sub_1A3E2CAF8(v8, v7);
    return;
  }

  if (a1 != a2 && *(a1 + 16) == *(a2 + 16))
  {
    v9 = a1 + 56;
    v10 = 1 << *(a1 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(a1 + 56);
    v5 = sub_1A3C52C70(0, &qword_1EB126AF0);
    v13 = 0;
    v14 = (v10 + 63) >> 6;
    v15 = a2 + 56;
    v27 = v14;
    v16 = a1;
    if (!v12)
    {
LABEL_27:
      v18 = v13;
      while (1)
      {
        v13 = v18 + 1;
        if (__OFADD__(v18, 1))
        {
          break;
        }

        if (v13 >= v14)
        {
          return;
        }

        v19 = *(v9 + 8 * v13);
        ++v18;
        if (v19)
        {
          v17 = __clz(__rbit64(v19));
          v28 = (v19 - 1) & v19;
          goto LABEL_32;
        }
      }

      __break(1u);
      goto LABEL_43;
    }

    while (1)
    {
      v17 = __clz(__rbit64(v12));
      v28 = (v12 - 1) & v12;
LABEL_32:
      v20 = *(*(v16 + 48) + 8 * (v17 | (v13 << 6)));
      v21 = sub_1A524DBE4();
      v22 = -1 << *(a2 + 32);
      v23 = v21 & ~v22;
      if (((*(v15 + ((v23 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v23) & 1) == 0)
      {
        break;
      }

      v24 = ~v22;
      while (1)
      {
        v25 = *(*(a2 + 48) + 8 * v23);
        v26 = sub_1A524DBF4();

        if (v26)
        {
          break;
        }

        v23 = (v23 + 1) & v24;
        if (((*(v15 + ((v23 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v23) & 1) == 0)
        {
          goto LABEL_40;
        }
      }

      v14 = v27;
      v12 = v28;
      v16 = a1;
      if (!v28)
      {
        goto LABEL_27;
      }
    }

LABEL_40:
  }
}

uint64_t sub_1A427FC04(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_1A524E2B4();
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
      result = sub_1A524E2B4();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1A4280AC0();
          sub_1A4280BF0(&unk_1EB136788, sub_1A4280AC0);
          for (i = 0; i != v6; ++i)
          {
            v9 = sub_1A3D5C268(v13, i, a3);
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
        sub_1A3C52C70(0, &qword_1EB126820);
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

uint64_t sub_1A427FDB0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1A5241144();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1E6969530];
  sub_1A3C7D074(0, &qword_1EB12AFE0, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v22 - v10;
  sub_1A3E99834();
  v13 = MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(v13 + 56);
  sub_1A3C5DAA4(a1, v15, &qword_1EB12AFE0, v8);
  sub_1A3C5DAA4(a2, &v15[v16], &qword_1EB12AFE0, v8);
  v17 = *(v5 + 48);
  if (v17(v15, 1, v4) != 1)
  {
    sub_1A3C5DAA4(v15, v11, &qword_1EB12AFE0, MEMORY[0x1E6969530]);
    if (v17(&v15[v16], 1, v4) != 1)
    {
      (*(v5 + 32))(v7, &v15[v16], v4);
      sub_1A4280BF0(&unk_1EB12AFF0, MEMORY[0x1E6969530]);
      v19 = sub_1A524C594();
      v20 = *(v5 + 8);
      v20(v7, v4);
      v20(v11, v4);
      sub_1A3C42C50(v15, &qword_1EB12AFE0, MEMORY[0x1E6969530]);
      v18 = v19 ^ 1;
      return v18 & 1;
    }

    (*(v5 + 8))(v11, v4);
    goto LABEL_6;
  }

  if (v17(&v15[v16], 1, v4) != 1)
  {
LABEL_6:
    sub_1A402E2B4(v15);
    v18 = 1;
    return v18 & 1;
  }

  sub_1A3C42C50(v15, &qword_1EB12AFE0, MEMORY[0x1E6969530]);
  v18 = 0;
  return v18 & 1;
}

uint64_t sub_1A4280100(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v3 = a3;
  v6 = a2;
  v10 = *v4;
  v4 = (*v4 & 0xFFFFFFFFFFFFFF8);
  v7 = v4 + 4;
  v5 = &v4[a1 + 4];
  sub_1A3C52C70(0, &qword_1EB126820);
  result = swift_arrayDestroy();
  v12 = __OFSUB__(v3, v9);
  v9 = v3 - v9;
  if (v12)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!v9)
  {
    goto LABEL_17;
  }

  v8 = v10 >> 62;
  if (!(v10 >> 62))
  {
    result = v4[2];
    v13 = result - v6;
    if (!__OFSUB__(result, v6))
    {
      goto LABEL_6;
    }

LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_21:
  result = sub_1A524E2B4();
  v13 = result - v6;
  if (__OFSUB__(result, v6))
  {
    goto LABEL_23;
  }

LABEL_6:
  v14 = (v5 + 8 * v3);
  v15 = &v7[v6];
  if (v14 != v15 || v14 >= &v15[8 * v13])
  {
    memmove(v14, v15, 8 * v13);
  }

  if (v8)
  {
    result = sub_1A524E2B4();
  }

  else
  {
    result = v4[2];
  }

  if (__OFADD__(result, v9))
  {
    goto LABEL_24;
  }

  v4[2] = result + v9;
LABEL_17:
  if (v3 > 0)
  {
LABEL_25:
    __break(1u);
  }

  return result;
}