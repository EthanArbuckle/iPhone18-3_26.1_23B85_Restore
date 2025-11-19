uint64_t sub_1E3D09E88(char a1)
{
  v3 = OUTLINED_FUNCTION_3_0();
  v1[112] = a1;
  return (*(*v1 + 2000))(v3);
}

uint64_t (*sub_1E3D09EF8(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1E3D09F4C;
}

uint64_t sub_1E3D09F4C(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return (*(**(a1 + 24) + 2000))(result);
  }

  return result;
}

uint64_t sub_1E3D09FA8()
{
  if (*(v0 + 128))
  {
    v1 = *(v0 + 128);
  }

  else
  {
    type metadata accessor for ChannelLogoViewLayout();
    v1 = sub_1E3E38658(3);
    *(v0 + 128) = v1;
  }

  return v1;
}

uint64_t sub_1E3D0A014()
{
  if (*(v0 + 136))
  {
    v1 = *(v0 + 136);
  }

  else
  {
    type metadata accessor for VerticalStackLayout();
    sub_1E3F39F3C();
    v1 = v2;
    *(v0 + 136) = v2;
  }

  return v1;
}

uint64_t sub_1E3D0A080()
{
  if (TVAppFeature.isEnabled.getter(17))
  {
    if ((*(*v0 + 1968))())
    {
      v1 = (*(*v0 + 1776))() ^ 1;
    }

    else
    {
      v1 = 0;
    }
  }

  else
  {
    v1 = 0;
  }

  (*(*v0 + 1944))();
  memset(v23, 0, sizeof(v23));
  v24 = 1;
  v18 = 0x4030000000000000;
  v19 = 0;
  v2 = 0x402E000000000000;
  v20 = 0;
  v21 = 0x402E000000000000;
  v22 = 0;
  v3 = 0x403C000000000000;
  if (v1)
  {
    v3 = 0x4030000000000000;
  }

  else
  {
    v2 = 0x403E000000000000;
  }

  v13 = v3;
  v14 = 0;
  v15 = 0;
  v16 = v2;
  v17 = 0;
  v8 = 0x4039000000000000;
  v9 = 0;
  v10 = 0;
  v11 = 0x403E000000000000;
  v12 = 0;
  v6[30] = 0x4034000000000000;
  v6[31] = 0;
  v6[32] = 0;
  v6[33] = 0x4034000000000000;
  v7 = 0;
  type metadata accessor for UIEdgeInsets();
  sub_1E3C2FCB8(v23, __src);
  memcpy(v6, __src, 0xE9uLL);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_17_69();
  v4();
}

uint64_t sub_1E3D0A270()
{
  if (*(v0 + 168))
  {
    v1 = *(v0 + 168);
  }

  else
  {
    type metadata accessor for ScoreboardLayout();
    v1 = sub_1E3AEC538();
    *(v0 + 168) = v1;
  }

  return v1;
}

uint64_t sub_1E3D0A2D8(uint64_t a1)
{
  *(v1 + 168) = a1;

  sub_1E3D0A080();
}

uint64_t (*sub_1E3D0A32C(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  *a1 = sub_1E3D0A270();
  return sub_1E3D0A374;
}

uint64_t sub_1E3D0A374(uint64_t *a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    return sub_1E3D0A2D8(*a1);
  }

  sub_1E3D0A2D8(v2);
}

uint64_t sub_1E3D0A3F4(char a1)
{
  result = OUTLINED_FUNCTION_3_0();
  *(v1 + 184) = a1;
  return result;
}

uint64_t *sub_1E3D0A468()
{
  type metadata accessor for ImageLayout();
  *(v0 + 104) = sub_1E3BD61D8();
  *(v0 + 112) = 0;
  type metadata accessor for SportsCanonicalBannerScoreboardViewLayout(0);
  OUTLINED_FUNCTION_8_123();
  *(v0 + 176) = sub_1E392DC54(1);
  *(v0 + 184) = 1;
  v1 = sub_1E3C2F9A0();

  if (sub_1E373F6E0())
  {
    OUTLINED_FUNCTION_3_0();
    *(v1 + 184) = 1;
    if (TVAppFeature.isEnabled.getter(17))
    {
      if (TVAppFeature.isEnabled.getter(10))
      {
        v2 = sub_1E418A50C();
      }

      else
      {
        v2 = sub_1E418A530();
      }

      (*(*v1 + 440))(*v2, 0);
    }

    v3 = (*(*v1 + 312))(0x407C200000000000, 0);
    v3.n128_u64[0] = 12.0;
    v289[0] = j__OUTLINED_FUNCTION_7_78(v3);
    v289[1] = v4;
    v289[2] = v5;
    v289[3] = v6;
    v290 = 0;
    sub_1E39537A8();
    v284 = v7;
    v285 = v8;
    v286 = v9;
    v287 = v10;
    v288 = 0;
    sub_1E39537A8();
    v279 = v11;
    v280 = v12;
    v281 = v13;
    v282 = v14;
    v283 = 0;
    TVAppFeature.isEnabled.getter(17);
    sub_1E39537A8();
    __dst[30] = v15;
    __dst[31] = v16;
    __dst[32] = v17;
    __dst[33] = v18;
    v278 = 0;
    TVAppFeature.isEnabled.getter(17);
    sub_1E39537A8();
    sub_1E39537A8();
    OUTLINED_FUNCTION_13_118(v19, v20, v21, v22);
    type metadata accessor for UIEdgeInsets();
    v24 = v23;
    sub_1E3C2FCB8(v289, __src);
    memcpy(__dst, __src, 0xE9uLL);
    v25 = OUTLINED_FUNCTION_18();
    v26 = (*(*v1 + 1600))(__dst, 17, v25 & 1, v24);
    v27 = v1[13];
    v26.n128_u64[0] = 12.0;
    v275[0] = j__OUTLINED_FUNCTION_7_78(v26);
    v275[1] = v28;
    v275[2] = v29;
    v275[3] = v30;
    v276 = 0;
    sub_1E39537A8();
    v270 = v31;
    v271 = v32;
    v272 = v33;
    v273 = v34;
    v274 = 0;
    sub_1E39537A8();
    v265 = v35;
    v266 = v36;
    v267 = v37;
    v268 = v38;
    v269 = 0;
    TVAppFeature.isEnabled.getter(17);
    sub_1E39537A8();
    v263[30] = v39;
    v263[31] = v40;
    v263[32] = v41;
    v263[33] = v42;
    v264 = 0;
    TVAppFeature.isEnabled.getter(17);
    sub_1E39537A8();
    OUTLINED_FUNCTION_13_118(v43, v44, v45, v46);
    sub_1E39537A8();
    v246[0] = v47;
    v246[1] = v48;
    v246[2] = v49;
    v246[3] = v50;
    LOBYTE(v246[4]) = 0;
    sub_1E3C2FCB8(v275, __dst);
    memcpy(v263, __dst, 0xE9uLL);
    OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_14();
    (*(v51 + 1600))(v263, 17, v52 & 1, v24);
    OUTLINED_FUNCTION_36();
    v186 = v27;
    (*(v53 + 1808))(3);
    if ((TVAppFeature.isEnabled.getter(10) & 1) == 0)
    {
      v54 = sub_1E3D0CE70();
      (*(*v1 + 608))(v54);
    }

    v55 = *sub_1E3E5FD88();
    v56 = *sub_1E3E5F58C();
    v57 = *(*v1 + 1800);
    v58 = v56;
    v57();
    v246[0] = v55;
    v235[0] = 0;
    *&v190[0] = 0;
    v59 = v55;
    v187 = v59;
    v188 = v58;
    if ((TVAppFeature.isEnabled.getter(17) & 1) == 0)
    {
      v59 = v58;
    }

    v234[0] = v59;
    v60 = sub_1E3755B54();
    v61 = v59;
    sub_1E3C3DE00(v60);
    v261[0] = v228[0];
    sub_1E3C3DE00(v60);
    v253 = v258;
    v62 = OUTLINED_FUNCTION_10_110();
    sub_1E3C2FCB8(v62, v63);
    v64 = v263[0];
    v65 = v263[1];
    v66 = v263[2];
    v67 = v263[3];
    v68 = v263[4];
    v69 = v263[5];
    v246[0] = v263[0];
    v246[1] = v263[1];
    v246[2] = v263[2];
    v246[3] = v263[3];
    v246[4] = v263[4];
    v246[5] = v263[5];
    OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_14();
    v70 = OUTLINED_FUNCTION_9_116();
    v71(v70, 21);

    v189 = v57;
    v57();
    LOBYTE(v246[0]) = 17;
    if (TVAppFeature.isEnabled.getter(10))
    {
      v72 = 17;
    }

    else
    {
      v72 = 19;
    }

    LOBYTE(v235[0]) = v72;
    if (TVAppFeature.isEnabled.getter(10))
    {
      v73 = 14;
    }

    else if (TVAppFeature.isEnabled.getter(17))
    {
      v73 = 19;
    }

    else
    {
      v73 = 17;
    }

    LOBYTE(v190[0]) = v73;
    if (TVAppFeature.isEnabled.getter(17))
    {
      v74 = 21;
    }

    else
    {
      v74 = 15;
    }

    LOBYTE(v234[0]) = v74;
    if (TVAppFeature.isEnabled.getter(17))
    {
      v75 = 15;
    }

    else
    {
      v75 = 2;
    }

    LOBYTE(v228[0]) = v75;
    LOBYTE(v261[0]) = 7;
    v76 = OUTLINED_FUNCTION_10_110();
    sub_1E3C2FCB8(v76, v77);
    LODWORD(v246[0]) = v263[0];
    WORD2(v246[0]) = WORD2(v263[0]);
    OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_14();
    v78 = OUTLINED_FUNCTION_9_116();
    v79(v78, 48);

    (v57)(v80);
    OUTLINED_FUNCTION_19_91();
    OUTLINED_FUNCTION_36();
    if (v82)
    {
      v83 = 5;
    }

    else
    {
      v83 = 10;
    }

    (*(v81 + 1792))(v83);

    (v57)(v84);
    OUTLINED_FUNCTION_2_1();
    (*(v85 + 2056))(2, 0);

    (v57)(v86);
    OUTLINED_FUNCTION_2_1();
    (*(v87 + 2128))(0x3FE999999999999ALL, 0);

    (v57)(v88);
    OUTLINED_FUNCTION_2_1();
    (*(v89 + 1984))(1);

    (v57)(v90);
    OUTLINED_FUNCTION_2_1();
    (*(v91 + 1720))(7);

    (v57)(v92);
    memset(v261, 0, sizeof(v261));
    v262 = 1;
    v258 = xmmword_1E42CA410;
    v259 = xmmword_1E42CA420;
    v260 = 0;
    if (TVAppFeature.isEnabled.getter(10))
    {
      v93 = 0x4030000000000000;
      v94 = 0x4032000000000000;
    }

    else
    {
      v95 = TVAppFeature.isEnabled.getter(17);
      v93 = 0x403E000000000000;
      v94 = 0x402C000000000000;
      if (v95)
      {
        v93 = 0x4034000000000000;
      }

      else
      {
        v94 = 0x403E000000000000;
      }
    }

    v96 = v27;
    v253 = 0;
    v254 = v94;
    v255 = v93;
    v256 = v94;
    v257 = 0;
    v97 = TVAppFeature.isEnabled.getter(17);
    v98 = 0x404E000000000000;
    v99 = 0x4044000000000000;
    if ((v97 & 1) == 0)
    {
      v99 = 0x404E000000000000;
    }

    v248 = 0;
    v249 = v99;
    if (v97)
    {
      v98 = 0x4040000000000000;
    }

    v250 = v98;
    v251 = v99;
    v252 = 0;
    v100 = TVAppFeature.isEnabled.getter(17);
    v101 = 0x403E000000000000;
    if (v100)
    {
      v101 = 0x4034000000000000;
    }

    v246[30] = 0;
    v246[31] = v101;
    v246[32] = 0x4034000000000000;
    v246[33] = v101;
    v247 = 0;
    v102 = TVAppFeature.isEnabled.getter(17);
    v103 = 0x402C000000000000;
    if (v102)
    {
      v103 = 0x4034000000000000;
    }

    v246[0] = 0;
    v246[1] = v103;
    sub_1E3C2FCB8(v261, v263);
    memcpy(v246, v263, 0xE9uLL);
    OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_14();
    OUTLINED_FUNCTION_17_69();
    v104();

    (*(*v1 + 1280))(0x404E000000000000, 0);
    (*(*v27 + 1280))(0x404E000000000000, 0);
    v105 = 1;
    if (TVAppFeature.isEnabled.getter(17))
    {
      v105 = (TVAppFeature.isEnabled.getter(10) & 1) == 0;
    }

    (*(*v186 + 1352))(v105);
    (*(*v186 + 1328))(1);
    v106 = TVAppFeature.isEnabled.getter(17);
    if ((v106 & 1) == 0)
    {
      v106 = (*(*v186 + 2000))(0);
    }

    v107 = (*v1 + 1824);
    v108 = *v107;
    (*v107)(v106);
    OUTLINED_FUNCTION_2_1();
    v110 = (*(v109 + 1736))();

    OUTLINED_FUNCTION_11_12();
    v111 = sub_1E4206F24();
    (*(*v110 + 680))(v111);

    v108(v112);
    OUTLINED_FUNCTION_2_1();
    v114 = (*(v113 + 1760))();

    OUTLINED_FUNCTION_11_12();
    v115 = sub_1E4206F24();
    (*(*v114 + 680))(v115);

    v108(v116);
    v235[0] = 0x4028000000000000;
    v235[1] = 0;
    v235[2] = 0;
    v235[3] = 0x4028000000000000;
    LOBYTE(v235[4]) = 0;
    memset(v190, 0, 32);
    LOBYTE(v190[2]) = 1;
    memset(v234, 0, 32);
    LOBYTE(v234[4]) = 1;
    v228[0] = 0x4041000000000000;
    v228[1] = 0;
    v228[2] = 0;
    v228[3] = 0x4041000000000000;
    LOBYTE(v228[4]) = 0;
    v241 = 0x4034000000000000;
    v242 = 0;
    v243 = 0;
    v244 = 0x4034000000000000;
    v245 = 0;
    v236 = 0x4028000000000000;
    v237 = 0;
    v238 = 0;
    v239 = 0x4028000000000000;
    v240 = 0;
    sub_1E3C2FCB8(v235, v246);
    memcpy(v235, v246, 0xE9uLL);
    OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_14();
    OUTLINED_FUNCTION_17_69();
    v117();

    v119 = *(*v1 + 1896);
    v119(v118);
    OUTLINED_FUNCTION_2_1();
    (*(v120 + 1808))(1);

    v119(v121);
    v122 = OUTLINED_FUNCTION_19_91();
    if (v122)
    {
      v123 = 0;
    }

    else
    {
      v123 = 0x4064000000000000;
    }

    v232 = v123;
    v233 = v122 & 1;
    v124 = TVAppFeature.isEnabled.getter(10);
    v125 = 0x4072600000000000;
    if (v124)
    {
      v125 = 0x405F800000000000;
    }

    v230 = v125;
    v231 = 0;
    v126 = TVAppFeature.isEnabled.getter(10);
    v127 = 0x4051800000000000;
    if ((v126 & 1) == 0)
    {
      v127 = 0x4064000000000000;
    }

    v228[12] = v127;
    v229 = 0;
    v128 = TVAppFeature.isEnabled.getter(10);
    v129 = 0x4059000000000000;
    if (v128)
    {
      v129 = 0x4055800000000000;
    }

    v246[0] = v129;
    LOBYTE(v246[1]) = 0;
    v130 = MEMORY[0x1E69E7DE0];
    sub_1E3C2FC98();
    *&v190[0] = v235[0];
    BYTE8(v190[0]) = v235[1];
    sub_1E3C3DE00(v130);
    v241 = v228[0];
    LOBYTE(v242) = v228[1];
    sub_1E3C2FCB8(&v232, v234);
    memcpy(v246, v234, 0x59uLL);
    OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_14();
    v131 = OUTLINED_FUNCTION_9_116();
    v132(v131, 4);

    v119(v133);
    v226 = 0x4038000000000000;
    v227 = 0;
    v134 = TVAppFeature.isEnabled.getter(10);
    if (v134)
    {
      v135 = 0x4036000000000000;
    }

    else
    {
      v135 = 0;
    }

    v224 = v135;
    v225 = (v134 & 1) == 0;
    v136 = TVAppFeature.isEnabled.getter(10);
    if (v136)
    {
      v137 = 0x4036000000000000;
    }

    else
    {
      v137 = 0;
    }

    v222 = v137;
    v223 = (v136 & 1) == 0;
    if (TVAppFeature.isEnabled.getter(10))
    {
      v138 = 0x4043000000000000;
    }

    else
    {
      v139 = TVAppFeature.isEnabled.getter(17);
      v138 = 0x4046000000000000;
      if (v139)
      {
        v138 = 0x4040000000000000;
      }
    }

    v220 = v138;
    v221 = 0;
    v140 = TVAppFeature.isEnabled.getter(10);
    v141 = 0x4035000000000000;
    if ((v140 & 1) == 0)
    {
      v141 = 0x4038000000000000;
    }

    v218 = v141;
    v219 = 0;
    v142 = TVAppFeature.isEnabled.getter(10);
    v143 = 0x403A000000000000;
    if ((v142 & 1) == 0)
    {
      v143 = 0x4034000000000000;
    }

    v246[0] = v143;
    LOBYTE(v246[1]) = 0;
    sub_1E3C2FCB8(&v226, v228);
    memcpy(v246, v228, 0x59uLL);
    OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_14();
    v144 = OUTLINED_FUNCTION_9_116();
    v145(v144, 8);

    v119(v146);
    v241 = 0x4028000000000000;
    v242 = 0;
    v243 = 0;
    v244 = 0x4028000000000000;
    v245 = 0;
    v147 = TVAppFeature.isEnabled.getter(10);
    if (v147)
    {
      v148 = 0x4030000000000000;
    }

    else
    {
      v148 = 0;
    }

    if (v147)
    {
      v149 = 0x4032000000000000;
    }

    else
    {
      v149 = 0;
    }

    v236 = v148;
    v237 = v149;
    v238 = 0;
    v239 = v149;
    v240 = (v147 & 1) == 0;
    v150 = TVAppFeature.isEnabled.getter(10);
    if (v150)
    {
      v151 = 0x4030000000000000;
    }

    else
    {
      v151 = 0;
    }

    if (v150)
    {
      v152 = 0x4032000000000000;
    }

    else
    {
      v152 = 0;
    }

    v213 = v151;
    v214 = v152;
    v215 = 0;
    v216 = v152;
    v217 = (v150 & 1) == 0;
    v153 = TVAppFeature.isEnabled.getter(10);
    v154 = 0x4044000000000000;
    v155 = 0x4041000000000000;
    if (v153)
    {
      v155 = 0x4044000000000000;
    }

    else
    {
      v154 = 0;
    }

    v208 = v155;
    v209 = v154;
    v210 = 0;
    v211 = v155;
    v212 = 0;
    if (TVAppFeature.isEnabled.getter(10))
    {
      v156 = 0x4034000000000000;
    }

    else
    {
      v156 = 0;
    }

    v204 = 0x4034000000000000;
    v205 = v156;
    v206 = xmmword_1E42AE100;
    v207 = 0;
    v157 = TVAppFeature.isEnabled.getter(10);
    if (v157)
    {
      v158 = 0x4034000000000000;
    }

    else
    {
      v158 = 0x4030000000000000;
    }

    if (v157)
    {
      v159 = 0x4034000000000000;
    }

    else
    {
      v159 = 0;
    }

    v235[0] = v158;
    v235[1] = v159;
    v235[2] = 0;
    v235[3] = v158;
    LOBYTE(v235[4]) = 0;
    sub_1E3C2FCB8(&v241, v246);
    memcpy(v235, v246, 0xE9uLL);
    OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_14();
    OUTLINED_FUNCTION_17_69();
    v160();

    type metadata accessor for TextBadgeLayout();
    v161 = OUTLINED_FUNCTION_51_1();
    v162 = sub_1E382F55C(1, 3, v161 & 1);
    OUTLINED_FUNCTION_3_0();
    v1[20] = v162;

    v164 = *(*v1 + 1920);
    v165 = v164(v163);
    sub_1E3D0BDC8(v165, 0);

    v166 = sub_1E3D0A080();
    v167 = (v189)(v166);
    sub_1E3C37CBC(v167, 23);

    v168 = sub_1E3C37CBC(v96, 39);
    v169 = (*(*v1 + 1872))(v168);
    sub_1E3C37CBC(v169, 33);

    v171 = (v108)(v170);
    sub_1E3C37CBC(v171, 99);

    v173 = (*(*v1 + 1848))(v172);
    sub_1E3C37CBC(v173, 97);

    v175 = (v119)(v174);
    sub_1E3C37CBC(v175, 40);

    v177 = v164(v176);
    if (v177)
    {
      v178 = v177;
      v179 = *sub_1E3810A0C();

      sub_1E3C37EC8(v178, v179);
    }

    if (TVAppFeature.isEnabled.getter(10))
    {
      v180 = v1[22];
      sub_1E392B18C(0);
      v181 = *MEMORY[0x1E69DDC50];
      OUTLINED_FUNCTION_3_0();
      v182 = *(v180 + 128);
      *(v180 + 128) = v181;
      v183 = v181;

      memset(v190, 0, 32);
      LOBYTE(v190[2]) = 1;
      v201 = xmmword_1E42CC330;
      v202 = xmmword_1E42CC330;
      v203 = 0;
      v198 = xmmword_1E42CC330;
      v199 = xmmword_1E42CC330;
      v200 = 0;
      v195 = xmmword_1E42CC340;
      v196 = xmmword_1E42CC350;
      v197 = 0;
      v192 = xmmword_1E42AE100;
      v193 = xmmword_1E42CC360;
      v194 = 0;
      v190[15] = xmmword_1E42AE100;
      v190[16] = xmmword_1E42CC360;
      v191 = 0;
      sub_1E3C2FCB8(v190, v235);
      memcpy(v190, v235, 0xE9uLL);
      OUTLINED_FUNCTION_18();
      OUTLINED_FUNCTION_14();
      OUTLINED_FUNCTION_17_69();
      v184();
    }
  }

  else
  {
    OUTLINED_FUNCTION_3_0();
    *(v1 + 184) = 0;
  }

  return v1;
}

uint64_t sub_1E3D0BA90()
{
  type metadata accessor for ImageLayout();
  *(v0 + 104) = sub_1E3BD61D8();
  *(v0 + 112) = 0;
  type metadata accessor for SportsCanonicalBannerScoreboardViewLayout(0);
  OUTLINED_FUNCTION_8_123();
  *(v0 + 176) = sub_1E392DC54(1);
  *(v0 + 184) = 1;

  return sub_1E3C2F9A0();
}

void sub_1E3D0BB00(uint64_t a1, void *a2, uint64_t a3)
{
  if (TVAppFeature.isEnabled.getter(10))
  {
    if (a2)
    {
      v6 = sub_1E4206A64();
    }

    else
    {
      v6 = 0;
    }

    v7 = v6;
    sub_1E3C35CF4(a1, v6);
    sub_1E392B4E0(a1, v6, a3);
  }

  else
  {

    sub_1E3C35CF4(a1, a2);
  }
}

uint64_t sub_1E3D0BBFC(uint64_t a1)
{
  v2 = a1;
  v3 = sub_1E3C35CA4(a1);
  if (sub_1E38116BC())
  {
    if (v3)
    {
      type metadata accessor for TextBadgeLayout();
      v4 = swift_dynamicCastClass();
      if (v4)
      {
        v5 = v4;

        sub_1E38309BC(v2);
        OUTLINED_FUNCTION_3_11();
        (*(v6 + 1784))();
        if (TVAppFeature.isEnabled.getter(10))
        {
          OUTLINED_FUNCTION_12_6();
          (*(v7 + 1776))();
          sub_1E378ADF4();
          sub_1E4205E84();
          OUTLINED_FUNCTION_3_11();
          if (v9)
          {
            v10 = 0;
          }

          else
          {
            v10 = 3;
          }

          (*(v8 + 1832))(v10);
          v11 = *(*v1 + 1776);

          v13 = v11(v12);
          sub_1E3D0BDC8(v5, v13 & 1);
        }

        else
        {
        }
      }
    }
  }

  return v3;
}

uint64_t sub_1E3D0BDC8(uint64_t a1, char a2)
{
  result = (*(*v2 + 1968))();
  if (result)
  {
    result = TVAppFeature.isEnabled.getter(10);
    if (result)
    {
      if (!a1)
      {
        return result;
      }

      v37 = 0u;
      v38 = 0u;
      v39 = 1;
      v6 = 0x4024000000000000;
      if (a2)
      {
        v6 = 0x4028000000000000;
      }

      v33 = xmmword_1E42CA410;
      v7 = 0x4032000000000000;
      v34 = v6;
      v35 = 0x4032000000000000;
      v36 = 0;
      if (a2)
      {
        v7 = 0x403E000000000000;
      }

      *&v29 = 0;
      *(&v29 + 1) = v7;
      v30 = v6;
      v31 = v7;
      v32 = 0;
      v8 = 0x4044000000000000;
      v9 = 0x404E000000000000;
      if (a2)
      {
        v8 = 0x404E000000000000;
      }

      else
      {
        v9 = 0x4034000000000000;
      }

      *&v25 = 0;
      *(&v25 + 1) = v8;
      v26 = 0x4034000000000000;
      v27 = v9;
      v28 = 0;
      if (a2)
      {
        v10 = 0x403E000000000000;
      }

      else
      {
        v10 = 0x4034000000000000;
      }

      v11 = 0x4020000000000000;
      if (a2)
      {
        v11 = 0x4028000000000000;
      }

      *&v21 = 0;
      *(&v21 + 1) = v10;
      v22 = v11;
      v23 = v10;
      v24 = 0;
      v12 = 0x4040000000000000;
      if ((a2 & 1) == 0)
      {
        v12 = 0x4034000000000000;
      }

      *&v20[0] = 0;
      *(&v20[0] + 1) = v12;
      *&v20[1] = 0x4028000000000000;
      *(&v20[1] + 1) = v12;
      LOBYTE(v20[2]) = 0;
      type metadata accessor for UIEdgeInsets();
      v13 = &v37;
    }

    else
    {
      if (!a1)
      {
        return result;
      }

      memset(v20, 0, 32);
      LOBYTE(v20[2]) = 1;
      v37 = xmmword_1E42CA400;
      v38 = 0uLL;
      v39 = 0;
      v33 = xmmword_1E42CC370;
      v34 = 0;
      v35 = 0;
      v36 = 0;
      v29 = xmmword_1E42B8F80;
      v30 = 0;
      v31 = 0;
      v32 = 0;
      v25 = xmmword_1E42B8860;
      v26 = 0;
      v27 = 0;
      v28 = 0;
      __asm { FMOV            V0.2D, #18.0 }

      v21 = _Q0;
      type metadata accessor for UIEdgeInsets();
      v22 = 0;
      v23 = 0;
      v24 = 0;
      v13 = v20;
    }

    sub_1E3C2FCB8(v13, __src);
    memcpy(v20, __src, 0xE9uLL);
    OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_17_69();
    return v19();
  }

  return result;
}

void sub_1E3D0C008()
{
  if (TVAppFeature.isEnabled.getter(17))
  {
    OUTLINED_FUNCTION_12_6();
    v1 += 222;
    v2 = *v1;
    if ((*v1)())
    {
      v113 = v2;
      v3 = *sub_1E3E5FD88();
      v4 = *sub_1E3E5F58C();
      v5 = *(*v0 + 1800);
      v6 = v4;
      v5();
      *v164 = v3;
      v7 = v3;
      if (TVAppFeature.isEnabled.getter(10))
      {
        v8 = v7;
        v9 = v3;
      }

      else
      {
        v9 = 0;
      }

      v116[0] = v9;
      if ((TVAppFeature.isEnabled.getter(10) & 1) == 0)
      {

        v3 = 0;
      }

      *&__src[0] = v3;
      v114 = v7;
      v115 = v6;
      if (TVAppFeature.isEnabled.getter(10))
      {
        v10 = v7;
      }

      else
      {
        v10 = v6;
      }

      v157[0] = v10;
      v11 = sub_1E3755B54();
      v12 = v10;
      sub_1E3C3DE00(v11);
      v165[0] = v168[0];
      sub_1E3C3DE00(v11);
      v137 = v142;
      v13 = OUTLINED_FUNCTION_3_164();
      sub_1E3C2FCB8(v13, v14);
      v15 = __dst[0];
      v16 = __dst[1];
      v17 = __dst[2];
      v18 = __dst[3];
      v19 = __dst[4];
      v20 = __dst[5];
      *v164 = __dst[0];
      *&v164[8] = __dst[1];
      *&v164[16] = __dst[2];
      *&v164[24] = __dst[3];
      *&v164[32] = __dst[4];
      *&v164[40] = __dst[5];
      OUTLINED_FUNCTION_18();
      OUTLINED_FUNCTION_14();
      (*(v21 + 1600))(v164, 21, v22 & 1, v11);

      v5();
      v164[0] = 17;
      if (TVAppFeature.isEnabled.getter(10))
      {
        v23 = 17;
      }

      else
      {
        v23 = 19;
      }

      LOBYTE(v116[0]) = v23;
      if (TVAppFeature.isEnabled.getter(10))
      {
        v24 = 14;
      }

      else
      {
        v24 = 17;
      }

      LOBYTE(__src[0]) = v24;
      if (TVAppFeature.isEnabled.getter(10))
      {
        v25 = 21;
      }

      else
      {
        v25 = 15;
      }

      LOBYTE(v157[0]) = v25;
      if (TVAppFeature.isEnabled.getter(10))
      {
        v26 = 3;
      }

      else
      {
        v26 = 2;
      }

      LOBYTE(v168[0]) = v26;
      LOBYTE(v165[0]) = 7;
      v27 = OUTLINED_FUNCTION_3_164();
      OUTLINED_FUNCTION_17_100(v27, v28);
      *v164 = __dst[0];
      *&v164[4] = WORD2(__dst[0]);
      OUTLINED_FUNCTION_18();
      OUTLINED_FUNCTION_14();
      (*(v29 + 1600))(v164, 48, v30 & 1, &qword_1F5D549D8);

      (v5)(v31);
      OUTLINED_FUNCTION_19_91();
      OUTLINED_FUNCTION_36();
      if (v33)
      {
        v34 = 5;
      }

      else
      {
        v34 = 10;
      }

      (*(v32 + 1792))(v34);

      (v5)(v35);
      if (OUTLINED_FUNCTION_19_91())
      {
        v36 = 2;
      }

      else
      {
        v36 = 0;
      }

      (*(*v0 + 2056))(v36, 0);

      (v5)(v37);
      OUTLINED_FUNCTION_2_1();
      (*(v38 + 1984))(1);

      (v5)(v39);
      OUTLINED_FUNCTION_2_1();
      (*(v40 + 1720))(7);

      (v5)(v41);
      memset(v164, 0, 32);
      v164[32] = 1;
      *v116 = xmmword_1E42CA410;
      *&v116[2] = xmmword_1E42CA420;
      LOBYTE(v116[4]) = 0;
      __asm { FMOV            V0.2D, #30.0 }

      __src[0] = xmmword_1E42B8850;
      __src[1] = _Q0;
      LOBYTE(__src[2]) = 0;
      *v157 = xmmword_1E42B8890;
      *&v157[2] = vdupq_n_s64(0x404E000000000000uLL);
      LOBYTE(v157[4]) = 0;
      *v168 = xmmword_1E42B8850;
      *v169 = xmmword_1E42B8860;
      LOBYTE(v170) = 0;
      *v165 = xmmword_1E42A76C0;
      *v166 = xmmword_1E42CC380;
      LOBYTE(v167) = 0;
      type metadata accessor for UIEdgeInsets();
      v47 = OUTLINED_FUNCTION_3_164();
      OUTLINED_FUNCTION_17_100(v47, v48);
      OUTLINED_FUNCTION_16_105();
      OUTLINED_FUNCTION_18();
      OUTLINED_FUNCTION_14();
      OUTLINED_FUNCTION_17_69();
      v49();

      OUTLINED_FUNCTION_36();
      (*(v50 + 1352))(0);
      if ((TVAppFeature.isEnabled.getter(10) & 1) == 0)
      {
        sub_1E3D0CE70();
        OUTLINED_FUNCTION_12_6();
        (*(v51 + 608))();
      }

      OUTLINED_FUNCTION_12_6();
      v52 += 228;
      v53 = *v52;
      (*v52)();
      OUTLINED_FUNCTION_26_0();
      v55 = (*(v54 + 1736))();

      OUTLINED_FUNCTION_11_12();
      v56 = sub_1E4206F24();
      (*(*v55 + 680))(v56);

      (v53)(v57);
      OUTLINED_FUNCTION_2_1();
      v59 = (*(v58 + 1760))();

      OUTLINED_FUNCTION_11_12();
      v60 = sub_1E4206F24();
      (*(*v59 + 680))(v60);

      (v53)(v61);
      *v164 = 0x4028000000000000;
      *&v164[8] = 0;
      *&v164[16] = 0;
      *&v164[24] = 0x4028000000000000;
      v164[32] = 0;
      memset(v116, 0, 32);
      LOBYTE(v116[4]) = 1;
      memset(__src, 0, 32);
      LOBYTE(__src[2]) = 1;
      v157[0] = 0x4041000000000000;
      v157[1] = 0;
      v157[2] = 0;
      v157[3] = 0x4041000000000000;
      LOBYTE(v157[4]) = 0;
      v168[0] = 0x4034000000000000;
      v168[1] = 0;
      v169[0] = 0;
      v169[1] = 0x4034000000000000;
      LOBYTE(v170) = 0;
      v165[0] = 0x4028000000000000;
      v165[1] = 0;
      v166[0] = 0;
      v166[1] = 0x4028000000000000;
      LOBYTE(v167) = 0;
      v62 = OUTLINED_FUNCTION_3_164();
      OUTLINED_FUNCTION_17_100(v62, v63);
      OUTLINED_FUNCTION_16_105();
      OUTLINED_FUNCTION_18();
      OUTLINED_FUNCTION_14();
      OUTLINED_FUNCTION_17_69();
      v64();

      OUTLINED_FUNCTION_3_11();
      v66 = *(v65 + 1896);
      v66();
      OUTLINED_FUNCTION_2_1();
      (*(v67 + 1808))(1);

      (v66)(v68);
      v69 = OUTLINED_FUNCTION_19_91();
      if (v69)
      {
        v70 = 0;
      }

      else
      {
        v70 = 0x4064000000000000;
      }

      v161 = v70;
      LOBYTE(v162) = v69 & 1;
      v71 = TVAppFeature.isEnabled.getter(10);
      v72 = 0x4072600000000000;
      if (v71)
      {
        v72 = 0x4067C00000000000;
      }

      v159 = v72;
      LOBYTE(v160) = 0;
      v73 = TVAppFeature.isEnabled.getter(10);
      v74 = 0x4051800000000000;
      if ((v73 & 1) == 0)
      {
        v74 = 0x4064000000000000;
      }

      v157[12] = v74;
      LOBYTE(v158) = 0;
      v75 = TVAppFeature.isEnabled.getter(10);
      v76 = 0x4059000000000000;
      if (v75)
      {
        v76 = 0x4055800000000000;
      }

      __dst[0] = v76;
      LOBYTE(__dst[1]) = 0;
      v77 = MEMORY[0x1E69E7DE0];
      sub_1E3C2FC98();
      v116[0] = *v164;
      LOBYTE(v116[1]) = v164[8];
      sub_1E3C3DE00(v77);
      v168[0] = v157[0];
      LOBYTE(v168[1]) = v157[1];
      sub_1E3C2FCB8(&v161, __src);
      memcpy(__dst, __src, 0x59uLL);
      OUTLINED_FUNCTION_18();
      OUTLINED_FUNCTION_14();
      (*(v78 + 1600))(__dst, 4, v79 & 1, v77);

      (v66)(v80);
      v155 = 0x4038000000000000;
      LOBYTE(v156) = 0;
      v81 = TVAppFeature.isEnabled.getter(10);
      if (v81)
      {
        v82 = 0x4036000000000000;
      }

      else
      {
        v82 = 0;
      }

      v153 = v82;
      LOBYTE(v154) = (v81 & 1) == 0;
      v83 = TVAppFeature.isEnabled.getter(10);
      if (v83)
      {
        v84 = 0x4036000000000000;
      }

      else
      {
        v84 = 0;
      }

      v151 = v84;
      LOBYTE(v152) = (v83 & 1) == 0;
      v85 = TVAppFeature.isEnabled.getter(10);
      v86 = 0x4046000000000000;
      if (v85)
      {
        v86 = 0x404D000000000000;
      }

      v149 = v86;
      LOBYTE(v150) = 0;
      v87 = TVAppFeature.isEnabled.getter(10);
      v88 = 0x4035000000000000;
      if ((v87 & 1) == 0)
      {
        v88 = 0x4038000000000000;
      }

      v147 = v88;
      LOBYTE(v148) = 0;
      v89 = TVAppFeature.isEnabled.getter(10);
      v90 = 0x403A000000000000;
      if ((v89 & 1) == 0)
      {
        v90 = 0x4034000000000000;
      }

      __dst[0] = v90;
      LOBYTE(__dst[1]) = 0;
      sub_1E3C2FCB8(&v155, v157);
      memcpy(__dst, v157, 0x59uLL);
      OUTLINED_FUNCTION_18();
      OUTLINED_FUNCTION_14();
      (*(v91 + 1600))(__dst, 8, v92 & 1, v77);

      (v66)(v93);
      v168[0] = 0x4028000000000000;
      v168[1] = 0;
      v169[0] = 0;
      v169[1] = 0x4028000000000000;
      LOBYTE(v170) = 0;
      v94 = TVAppFeature.isEnabled.getter(10);
      v95 = 0x4032000000000000;
      if ((v94 & 1) == 0)
      {
        v95 = 0;
      }

      v165[0] = v95;
      v165[1] = v95;
      v166[0] = 0;
      v166[1] = v95;
      LOBYTE(v167) = (v94 & 1) == 0;
      v96 = TVAppFeature.isEnabled.getter(10);
      if (v96)
      {
        v97 = 0x4028000000000000;
      }

      else
      {
        v97 = 0;
      }

      if (v96)
      {
        v98 = 0x4041000000000000;
      }

      else
      {
        v98 = 0;
      }

      v142 = v97;
      v143 = v98;
      v144 = 0;
      v145 = v98;
      LOBYTE(v146) = (v96 & 1) == 0;
      v99 = TVAppFeature.isEnabled.getter(10);
      v100 = 0x404E000000000000;
      if (v99)
      {
        v101 = 0x404E000000000000;
      }

      else
      {
        v101 = 0x4041000000000000;
      }

      if ((v99 & 1) == 0)
      {
        v100 = 0;
      }

      v137 = v101;
      v138 = v100;
      v139 = 0;
      v140 = v101;
      LOBYTE(v141) = 0;
      v102 = TVAppFeature.isEnabled.getter(10);
      v103 = 0x403E000000000000;
      if (v102)
      {
        v104 = 0x403E000000000000;
      }

      else
      {
        v104 = 0x4034000000000000;
      }

      if ((v102 & 1) == 0)
      {
        v103 = 0;
      }

      v132 = v104;
      v133 = v103;
      v134 = 0;
      v135 = v104;
      LOBYTE(v136) = 0;
      v105 = TVAppFeature.isEnabled.getter(10);
      v106 = 0x4030000000000000;
      v107 = 0x4040000000000000;
      if (v105)
      {
        v106 = 0x4040000000000000;
      }

      else
      {
        v107 = 0;
      }

      *v164 = v106;
      *&v164[8] = v107;
      *&v164[16] = 0;
      *&v164[24] = v106;
      v164[32] = 0;
      sub_1E3C2FCB8(v168, __dst);
      OUTLINED_FUNCTION_16_105();
      OUTLINED_FUNCTION_18();
      OUTLINED_FUNCTION_14();
      OUTLINED_FUNCTION_17_69();
      v108();

      OUTLINED_FUNCTION_3_11();
      v110 = (*(v109 + 1920))();
      v111 = v113();
      sub_1E3D0BDC8(v110, v111 & 1);

      sub_1E3D0A080();
      if (TVAppFeature.isEnabled.getter(10))
      {
        sub_1E392B18C(1);
        memset(v116, 0, 32);
        LOBYTE(v116[4]) = 1;
        v129 = xmmword_1E42CC330;
        v130 = xmmword_1E42CC330;
        v131 = 0;
        v126 = xmmword_1E42CC390;
        v127 = xmmword_1E42CC3A0;
        v128 = 0;
        v123 = xmmword_1E42B8890;
        v124 = xmmword_1E42CC3B0;
        v125 = 0;
        v120 = xmmword_1E42B8850;
        v121 = xmmword_1E42CC3C0;
        v122 = 0;
        v117 = xmmword_1E42CC3D0;
        v118 = xmmword_1E42CC3E0;
        v119 = 0;
        sub_1E3C2FCB8(v116, v164);
        memcpy(v116, v164, 0xE9uLL);
        OUTLINED_FUNCTION_18();
        OUTLINED_FUNCTION_14();
        OUTLINED_FUNCTION_17_69();
        v112();
      }
    }
  }
}

id sub_1E3D0CE70()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E69DB7D8]) init];
  [v0 setShadowOffset_];
  [v0 setShadowBlurRadius_];
  sub_1E3755B54();
  v1 = sub_1E4206F24();
  [v0 setShadowColor_];

  return v0;
}

uint64_t sub_1E3D0CF14()
{
}

uint64_t sub_1E3D0CF7C()
{
  v0 = sub_1E3C36C6C();

  return v0;
}

uint64_t sub_1E3D0CFEC()
{
  v0 = sub_1E3D0CF7C();

  return MEMORY[0x1EEE6BDC0](v0, 185, 7);
}

double sub_1E3D0D01C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  OUTLINED_FUNCTION_26_0();
  v7 = 0.0;
  if ((*(v6 + 960))())
  {
    OUTLINED_FUNCTION_26_0();
    v9 = (*(v8 + 392))();

    if (v9)
    {
      type metadata accessor for FlowcaseCellLayout();
      if (swift_dynamicCastClass())
      {
        OUTLINED_FUNCTION_26_0();
        v11 = *(v10 + 304);

        v13 = COERCE_DOUBLE(v11(v12));
        if (v14)
        {
          v7 = 0.0;
        }

        else
        {
          v7 = v13;
        }

        if (TVAppFeature.isEnabled.getter(17))
        {
          if (!(*(*a1 + 392))() || (OUTLINED_FUNCTION_26_0(), v16 = (*(v15 + 984))(), v18 = v17, , (v18 & 1) != 0))
          {
            OUTLINED_FUNCTION_12_6();
            v20 = (*(v19 + 984))();
            if (v21)
            {
              v16 = 25;
LABEL_17:
              type metadata accessor for LayoutGrid();
              v24 = sub_1E3A25D00(v16, 0, a3, 1.0);
              OUTLINED_FUNCTION_3_11();
              v26 = (*(v25 + 432))();
              v28 = v27;

              v29 = *&v26;
              if (v28)
              {
                v29 = 1.0;
              }

              v7 = v24 / v29;
              goto LABEL_20;
            }

            v16 = v20;
          }

          if (v16 != 21)
          {
            goto LABEL_17;
          }
        }

LABEL_20:
        v23 = 0;
        v22 = 1;
        goto LABEL_21;
      }
    }
  }

  v22 = 0;
  v23 = 1;
LABEL_21:
  *a2 = v7;
  result = 0.0;
  *(a2 + 8) = 0u;
  *(a2 + 24) = 0u;
  *(a2 + 40) = v22;
  *(a2 + 41) = v23;
  return result;
}

double sub_1E3D0D2F0@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>, double a3@<D0>)
{
  sub_1E3D0D01C(a1, &v6, a3);
  v4 = v7[0];
  *a2 = v6;
  a2[1] = v4;
  result = *(v7 + 10);
  *(a2 + 26) = *(v7 + 10);
  return result;
}

void sub_1E3D0D350()
{
  [v0 bounds];
  v1 = OBJC_IVAR____TtC8VideosUI15ProductUberView_contentView;
  OUTLINED_FUNCTION_0_12();
  v2 = *&v0[v1];
  if (v2)
  {
    v3 = v2;
    [v0 bounds];
    OUTLINED_FUNCTION_10_10();
    [v0 vuiIsRTL];
    VUIRectWithFlippedOriginRelativeToBoundingRectWithCondition();
    [v3 setFrame_];
  }
}

void sub_1E3D0D438()
{
  OUTLINED_FUNCTION_5_16();
  if (v1)
  {
    v2 = OBJC_IVAR____TtC8VideosUI15ProductUberView_contentView;
    OUTLINED_FUNCTION_0_12();
    if (*(v0 + v2))
    {
      v3 = OUTLINED_FUNCTION_6_12();
      [v4 v5];
    }
  }

  else
  {
    sub_1E3D0D350();
  }

  OUTLINED_FUNCTION_6_12();
}

id sub_1E3D0D4F8()
{
  OUTLINED_FUNCTION_0_8();
  ObjectType = swift_getObjectType();
  *(v0 + OBJC_IVAR____TtC8VideosUI15ProductUberView_contentView) = 0;
  v2 = (v0 + OBJC_IVAR____TtC8VideosUI15ProductUberView_offset);
  *v2 = 0;
  v2[1] = 0;
  v7 = ObjectType;
  v3 = OUTLINED_FUNCTION_2_15();
  return objc_msgSendSuper2(v4, v5, v3, v0, v7);
}

id sub_1E3D0D58C()
{
  OUTLINED_FUNCTION_11_5();
  ObjectType = swift_getObjectType();
  *&v0[OBJC_IVAR____TtC8VideosUI15ProductUberView_contentView] = 0;
  v3 = &v0[OBJC_IVAR____TtC8VideosUI15ProductUberView_offset];
  *v3 = 0;
  *(v3 + 1) = 0;
  v6.receiver = v0;
  v6.super_class = ObjectType;
  v4 = objc_msgSendSuper2(&v6, sel_initWithCoder_, v1);

  if (v4)
  {
  }

  return v4;
}

void sub_1E3D0D68C(void *a1)
{
  OUTLINED_FUNCTION_37();
  swift_unknownObjectWeakAssign();
}

void (*sub_1E3D0D6D8(void *a1))(id **a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  v4 = OBJC_IVAR____TtC8VideosUI23CanonicalBannerViewCell_hostingParentViewController;
  v3[4] = v1;
  v3[5] = v4;
  swift_beginAccess();
  v3[3] = swift_unknownObjectWeakLoadStrong();
  return sub_1E38D12C8;
}

id sub_1E3D0D75C()
{
  v1 = OBJC_IVAR____TtC8VideosUI23CanonicalBannerViewCell____lazy_storage___canonicalConfig;
  v2 = *(v0 + OBJC_IVAR____TtC8VideosUI23CanonicalBannerViewCell____lazy_storage___canonicalConfig);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC8VideosUI23CanonicalBannerViewCell____lazy_storage___canonicalConfig);
  }

  else
  {
    v4 = [objc_opt_self() sharedInstance];
    v5 = [v4 canonicalConfig];

    v6 = *(v0 + v1);
    *(v0 + v1) = v5;
    v3 = v5;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

id sub_1E3D0D800(void *a1)
{
  type metadata accessor for BackgroundPlaybackUIInteractionManager();
  v3 = v1;
  v4 = a1;
  v5 = sub_1E3C9AF7C();
  OUTLINED_FUNCTION_4_0();
  v6 = swift_allocObject();
  swift_unknownObjectWeakInit();
  OUTLINED_FUNCTION_26_3();
  v8 = *((*MEMORY[0x1E69E7D40] & v7) + 0x1B0);

  v8(sub_1E3D1BBD8, v6);

  OUTLINED_FUNCTION_21();
  (*(v9 + 240))(1);
  return v5;
}

uint64_t sub_1E3D0D914()
{
  OUTLINED_FUNCTION_52_7();
  v1 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5();
  v7 = v6 - v5;
  result = (*(*v0 + 648))();
  if (result)
  {
    v9 = result;
    OUTLINED_FUNCTION_5_0();
    v10 = *(v9 + 56);

    if (v10)
    {
      OUTLINED_FUNCTION_8();
      (*(v11 + 552))();
      OUTLINED_FUNCTION_122();

      v12 = MEMORY[0x1E69E7D40];
      OUTLINED_FUNCTION_12_5();
      v14 = *(v13 + 1168);

      v14(v15);
      OUTLINED_FUNCTION_36_3();
      (*((*v12 & v16) + 0x470))();
      v17 = sub_1E324FBDC();
      (*(v3 + 16))(v7, v17, v1);
      v18 = sub_1E41FFC94();
      v19 = sub_1E4206814();
      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        *v20 = 0;
        _os_log_impl(&dword_1E323F000, v18, v19, "CanonicalBannerViewCell::configureBackgroundMediaController:viewmodel", v20, 2u);
        OUTLINED_FUNCTION_6_0();
      }

      (*(v3 + 8))(v7, v1);
      v21 = sub_1E3D0D75C();
      [v21 playbackDelayInterval];

      sub_1E3D0DC98();
    }
  }

  return result;
}

void sub_1E3D0DBD0(uint64_t a1)
{
  OUTLINED_FUNCTION_21();
  v3 = (*(v2 + 1256))();
  if (v3)
  {
    v4 = v3;
    v5 = [v3 vuiView];

    if (v5)
    {
      [v5 setVuiBackgroundColor_];
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_1E3D0DC98()
{
  OUTLINED_FUNCTION_41_5();
  v5 = v0;
  v59 = v6;
  v8 = v7;
  v10 = v9;
  v11 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v13 = v12;
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_2_5();
  v63 = v15;
  MEMORY[0x1EEE9AC00](v16);
  v18 = v58 - v17;
  v19 = sub_1E324FBDC();
  v61 = *(v13 + 16);
  v62 = v19;
  v61(v18);
  v20 = sub_1E41FFC94();
  v21 = sub_1E4206814();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    *v22 = 0;
    _os_log_impl(&dword_1E323F000, v20, v21, "CanonicalBannerViewCell::configureBackgroundMediaController:supplementaryData", v22, 2u);
    OUTLINED_FUNCTION_6_0();
  }

  v60 = *(v13 + 8);
  v60(v18, v11);
  sub_1E3D0E524();
  v23 = *MEMORY[0x1E69E7D40] & *v5;
  v58[0] = *(v23 + 0x4E8);
  v58[1] = v23 + 1256;
  v24 = (v58[0])();
  if (v24)
  {
    v25 = v24;
    [v24 setClearPreviousImageBeforeLoading_];
  }

  v26 = sub_1E39D7838(&unk_1F5D7FC50);
  sub_1E3DF9E68(&v70);
  memcpy(v66, v71, sizeof(v66));
  [v5 vuiBounds];
  Width = CGRectGetWidth(v78);
  sub_1E3D0E25C(Width, 1.79769313e308);
  v29 = v28;
  v67 = 0;
  type metadata accessor for LayoutGrid();
  v30 = [v5 contentView];
  [v30 bounds];
  OUTLINED_FUNCTION_10_10();

  v79.origin.x = v1;
  v79.origin.y = v2;
  v79.size.width = v3;
  v79.size.height = v4;
  v31 = CGRectGetWidth(v79);
  v32 = sub_1E3A2579C(v31);
  *v75 = Width;
  v75[1] = v29;
  v76 = v67;
  memcpy(v77, v66, sizeof(v77));
  sub_1E3D41814(v32, v75, v72);
  memcpy(v68, v72, 0x60uLL);
  v65 = 0;
  v68[12] = v8;
  LOBYTE(v68[13]) = 0;
  *(&v68[13] + 1) = *v73;
  *(&v68[14] + 2) = *&v73[9];
  memcpy(v69, v68, sizeof(v69));
  nullsub_1(v33, v34);
  memcpy(v74, v69, 0x82uLL);
  v35 = sub_1E3D431AC();
  v36 = sub_1E3D431B4(v10, v26, 0, v74, v35);

  sub_1E39F8998(v68);
  if (v36)
  {
    if (TVAppFeature.isEnabled.getter(10))
    {
      v37 = OUTLINED_FUNCTION_107_8();
      [v37 v38];
      v39 = v63;
    }

    else
    {
      v40 = [objc_opt_self() isMac];
      v41 = sel_setShowsSecondaryVideoView_;
      v39 = v63;
      if (v40)
      {
        v42 = v36;
        v43 = 1;
      }

      else
      {
        v42 = OUTLINED_FUNCTION_107_8();
      }

      [v42 v41];
    }

    v44 = OUTLINED_FUNCTION_107_8();
    [v44 v45];
    [v36 setAutomaticPlaybackStart_];
    if (v59)
    {
      v46 = OUTLINED_FUNCTION_107_8();
      [v46 v47];
    }

    v48 = [v36 backgroundColor];
    (*((*MEMORY[0x1E69E7D40] & *v5) + 0x230))();

    (v61)(v39, v62, v11);
    v49 = sub_1E41FFC94();
    v50 = sub_1E4206814();
    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      *v51 = 0;
      _os_log_impl(&dword_1E323F000, v49, v50, "CanonicalBannerViewCell::backgroundMediaController setMediaInfo", v51, 2u);
      OUTLINED_FUNCTION_6_0();
    }

    v52 = (v60)(v39, v11);
    v53 = (v58[0])(v52);
    if (v53)
    {
      v54 = v53;
      v64 = sub_1E3D1BCF4(v53);
      v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF37A30);
      sub_1E3827828(&qword_1EE23B4D0, &qword_1ECF37A40);
      v56 = sub_1E4149048(v55);

      if (v56)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29750);
        v57 = swift_allocObject();
        *(v57 + 16) = xmmword_1E4298880;
        *(v57 + 32) = v36;
        sub_1E39F8914(v57, v54);
        v36 = v54;
      }

      else
      {
      }
    }
  }

  OUTLINED_FUNCTION_42();
}

void sub_1E3D0E25C(double a1, double a2)
{
  v3 = v2;
  if (a1 != 0.0 || a2 != 0.0) && (sub_1E3D10EC8())
  {
    v4 = MEMORY[0x1E69E7D40];
    OUTLINED_FUNCTION_12_5();
    (*(v5 + 656))();
    type metadata accessor for MediaShowcaseHostingView();
    OUTLINED_FUNCTION_36_3();
    v7 = (*((*v4 & v6) + 0x260))();
    v8 = sub_1E40037C8(v7);

    OUTLINED_FUNCTION_36_3();
    v10 = *((*v4 & v9) + 0x278);
    if (v10())
    {
      OUTLINED_FUNCTION_26_0();
      v13 = v12;
      (*(v11 + 432))();
      OUTLINED_FUNCTION_145();
    }

    else
    {
      v13 = 0;
    }

    type metadata accessor for BannerUberBackgroundViewLayout();
    v14 = OUTLINED_FUNCTION_17_4();
    sub_1E3DF16A8(v13, v15, v14, v16, v8);
    if (v17 == 0.0)
    {
      if (v10())
      {
        OUTLINED_FUNCTION_30();
        (*(v18 + 328))();
      }
    }

    else
    {
      VUIRoundValue();
      if (*(v3 + OBJC_IVAR____TtC8VideosUI23CanonicalBannerViewCell_showAttributionViewBelowBanner) == 1 && (TVAppFeature.isEnabled.getter(10) & 1) != 0)
      {
        sub_1E3D113BC();
        OUTLINED_FUNCTION_71();
        OUTLINED_FUNCTION_64();
        (*(v19 + 112))();
      }
    }
  }

  OUTLINED_FUNCTION_17_4();
}

void sub_1E3D0E524()
{
  OUTLINED_FUNCTION_52_7();
  type metadata accessor for CanonicalTemplateController();
  OUTLINED_FUNCTION_20_2();
  if (!sub_1E3FEF1A4())
  {
    return;
  }

  OUTLINED_FUNCTION_26_0();
  v2 = (*(v1 + 1032))(6);
  if ((v3 & 1) == 0)
  {
    v4 = v2;
    v5 = MEMORY[0x1E69E7D40];
    OUTLINED_FUNCTION_12_5();
    if (((*(v6 + 1208))() & 1) == 0)
    {
      if (TVAppFeature.isEnabled.getter(10))
      {
        OUTLINED_FUNCTION_12_5();
        v30 = (*(v7 + 1112))();
        OUTLINED_FUNCTION_36_3();
        v9 = (*((*v5 & v8) + 0x2A8))();
        v10 = v9;
        if (v9)
        {
          [v9 frame];
          v28 = v11;
          v29 = v12;
          v27 = v13;

          v22 = OUTLINED_FUNCTION_120_6(v14, v15, v16, v17, v18, v19, v20, v21, v27, *(&v27 + 1), v28, *(&v28 + 1), v29);
        }

        else
        {
          v22 = 0uLL;
          v23 = 0uLL;
        }

        v31[0] = v22;
        v31[1] = v23;
        v32 = v10 == 0;
        sub_1E3D0E7D8(v30, v31);

        return;
      }

      [v0 vui:v4 setOverrideUserInterfaceStyle:?];
      OUTLINED_FUNCTION_36_3();
      v25 = (*((*v5 & v24) + 0x428))();
      [v25 configureBlurWithInterfaceStyle_];

      OUTLINED_FUNCTION_36_3();
      (*((*v5 & v26) + 0x4A8))(v4);
    }
  }
}

void sub_1E3D0E7D8(void *a1, uint64_t a2)
{
  v3 = v2;
  OUTLINED_FUNCTION_8_9();
  v6 += 79;
  v7 = *v6;
  if ((*v6)())
  {
    OUTLINED_FUNCTION_30();
    (*(v8 + 2560))();
    OUTLINED_FUNCTION_11_5();

    if (a1)
    {
      v9 = objc_opt_self();
      v20 = a1;
      v10 = [v9 blackColor];
      sub_1E3887770(v10);

      [v20 frame];
      Height = CGRectGetHeight(v21);
      MinY = 0.0;
      if ((*(a2 + 32) & 1) == 0)
      {
        MinY = CGRectGetMinY(*a2);
      }

      if (v7())
      {
        OUTLINED_FUNCTION_30();
        v14 = (*(v13 + 1560))();
      }

      else
      {
        v14 = 7;
      }

      v16 = Height - MinY;
      OUTLINED_FUNCTION_18_1();
      if (((*(v17 + 1208))() & 1) != 0 && v14 != 7)
      {
        sub_1E3A24FDC(v14);
      }

      [v3 vuiBounds];
      OUTLINED_FUNCTION_2_6();
      sub_1E38871E0(v16);
      sub_1E39E4A50();

      OUTLINED_FUNCTION_121_9();
    }

    else
    {
      OUTLINED_FUNCTION_121_9();
    }
  }

  else
  {
    OUTLINED_FUNCTION_121_9();
  }
}

uint64_t sub_1E3D0EA70(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC8VideosUI23CanonicalBannerViewCell_badgeViewPresenter;
  OUTLINED_FUNCTION_37();
  *(v1 + v3) = a1;
}

uint64_t sub_1E3D0EBF4()
{
  OUTLINED_FUNCTION_1_14(OBJC_IVAR____TtC8VideosUI23CanonicalBannerViewCell_collectionViewFrameSize);
  OUTLINED_FUNCTION_5_0();
  return *v0;
}

uint64_t sub_1E3D0EC30(uint64_t a1, uint64_t a2, char a3)
{
  v7 = v3 + OBJC_IVAR____TtC8VideosUI23CanonicalBannerViewCell_collectionViewFrameSize;
  result = OUTLINED_FUNCTION_3_0();
  *v7 = a1;
  *(v7 + 8) = a2;
  *(v7 + 16) = a3 & 1;
  return result;
}

void *sub_1E3D0ECD8()
{
  v1 = OBJC_IVAR____TtC8VideosUI23CanonicalBannerViewCell_infoView;
  OUTLINED_FUNCTION_0_12();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

uint64_t sub_1E3D0ED20()
{
  v0 = OUTLINED_FUNCTION_12_11();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_3_9(v1);
  OUTLINED_FUNCTION_4_13();
  OUTLINED_FUNCTION_13_9();
  v3 = v2;
  return OUTLINED_FUNCTION_27_0();
}

void sub_1E3D0ED9C(uint64_t a1, char a2, void (*a3)(id))
{
  v4 = *a1;
  v6 = (*a1 + 24);
  v5 = *v6;
  if (a2)
  {
    v7 = v5;
    a3(v5);
  }

  else
  {
    a3(*(*a1 + 24));
  }

  free(v4);
}

void *sub_1E3D0EE1C()
{
  v1 = OBJC_IVAR____TtC8VideosUI23CanonicalBannerViewCell_titleImageView;
  OUTLINED_FUNCTION_0_12();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

uint64_t sub_1E3D0EE64()
{
  v0 = OUTLINED_FUNCTION_12_11();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_3_9(v1);
  OUTLINED_FUNCTION_4_13();
  OUTLINED_FUNCTION_13_9();
  v3 = v2;
  return OUTLINED_FUNCTION_27_0();
}

void *sub_1E3D0EEE0()
{
  v1 = OBJC_IVAR____TtC8VideosUI23CanonicalBannerViewCell_contentTitleView;
  OUTLINED_FUNCTION_0_12();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

uint64_t sub_1E3D0EF28()
{
  v0 = OUTLINED_FUNCTION_12_11();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_3_9(v1);
  OUTLINED_FUNCTION_4_13();
  OUTLINED_FUNCTION_13_9();
  v3 = v2;
  return OUTLINED_FUNCTION_27_0();
}

void *sub_1E3D0EFA4()
{
  v1 = OBJC_IVAR____TtC8VideosUI23CanonicalBannerViewCell_contentSubtitleView;
  OUTLINED_FUNCTION_0_12();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

uint64_t sub_1E3D0EFEC()
{
  v0 = OUTLINED_FUNCTION_12_11();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_3_9(v1);
  OUTLINED_FUNCTION_4_13();
  OUTLINED_FUNCTION_13_9();
  v3 = v2;
  return OUTLINED_FUNCTION_27_0();
}

void *sub_1E3D0F068()
{
  v1 = OBJC_IVAR____TtC8VideosUI23CanonicalBannerViewCell_episodeInfoTextView;
  OUTLINED_FUNCTION_0_12();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

uint64_t sub_1E3D0F0B0()
{
  v0 = OUTLINED_FUNCTION_12_11();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_3_9(v1);
  OUTLINED_FUNCTION_4_13();
  OUTLINED_FUNCTION_13_9();
  v3 = v2;
  return OUTLINED_FUNCTION_27_0();
}

void *sub_1E3D0F12C()
{
  v1 = OBJC_IVAR____TtC8VideosUI23CanonicalBannerViewCell_promoTextView;
  OUTLINED_FUNCTION_0_12();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

uint64_t sub_1E3D0F174()
{
  v0 = OUTLINED_FUNCTION_12_11();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_3_9(v1);
  OUTLINED_FUNCTION_4_13();
  OUTLINED_FUNCTION_13_9();
  v3 = v2;
  return OUTLINED_FUNCTION_27_0();
}

void *sub_1E3D0F1F0()
{
  v1 = OBJC_IVAR____TtC8VideosUI23CanonicalBannerViewCell_askToBuyPromptView;
  OUTLINED_FUNCTION_0_12();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

uint64_t sub_1E3D0F238()
{
  v0 = OUTLINED_FUNCTION_12_11();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_3_9(v1);
  OUTLINED_FUNCTION_4_13();
  OUTLINED_FUNCTION_13_9();
  v3 = v2;
  return OUTLINED_FUNCTION_27_0();
}

void *sub_1E3D0F2B4()
{
  v1 = OBJC_IVAR____TtC8VideosUI23CanonicalBannerViewCell_coverArtImageView;
  OUTLINED_FUNCTION_0_12();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_1E3D0F2F0()
{
  OUTLINED_FUNCTION_79_0();
  v2 = v1;
  v3 = OBJC_IVAR____TtC8VideosUI23CanonicalBannerViewCell_coverArtImageView;
  OUTLINED_FUNCTION_3_102();
  v4 = *&v0[v3];
  *&v0[v3] = v2;
  v5 = OBJC_IVAR____TtC8VideosUI23CanonicalBannerViewCell_coverArtImageView;
  v6 = v2;
  OUTLINED_FUNCTION_40_0();
  [v0 vui:*&v0[v5] addSubview:v4 oldView:?];
  [v0 vui_setNeedsLayout];

  OUTLINED_FUNCTION_78_8();
}

uint64_t sub_1E3D0F378()
{
  v0 = OUTLINED_FUNCTION_12_11();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_3_9(v1);
  OUTLINED_FUNCTION_4_13();
  OUTLINED_FUNCTION_13_9();
  v3 = v2;
  return OUTLINED_FUNCTION_27_0();
}

void sub_1E3D0F400(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, id a12, char a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34)
{
  OUTLINED_FUNCTION_131_10();
  v40 = v39;
  v41 = &qword_1ECF37000;
  v42 = OBJC_IVAR____TtC8VideosUI23CanonicalBannerViewCell_buttonViews;
  OUTLINED_FUNCTION_3_0();
  v43 = *&v34[v42];
  v74 = v34;
  *&v34[v42] = v40;
  if (v43)
  {
    v44 = sub_1E32AE9B0(v43);
    v45 = 0;
    v46 = v43 & 0xC000000000000001;
    v47 = v43 & 0xFFFFFFFFFFFFFF8;
    v48 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      if (v44 == v45)
      {
        v41 = &qword_1ECF37000;
        goto LABEL_16;
      }

      if (v46)
      {
        v49 = v43;
        v50 = MEMORY[0x1E6911E60](v45, v43);
      }

      else
      {
        if (v45 >= *(v47 + 16))
        {
          goto LABEL_33;
        }

        v49 = v43;
        v50 = *(v43 + 8 * v45 + 32);
      }

      v51 = v50;
      if (__OFADD__(v45, 1))
      {
        break;
      }

      [v50 frame];
      OUTLINED_FUNCTION_3();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v48 = sub_1E39ABB54(0, *(v48 + 2) + 1, 1, v48);
      }

      v53 = *(v48 + 2);
      v52 = *(v48 + 3);
      if (v53 >= v52 >> 1)
      {
        v48 = sub_1E39ABB54((v52 > 1), v53 + 1, 1, v48);
      }

      *(v48 + 2) = v53 + 1;
      v54 = &v48[32 * v53];
      *(v54 + 4) = v35;
      *(v54 + 5) = v36;
      *(v54 + 6) = v37;
      *(v54 + 7) = v38;
      [v51 removeFromSuperview];

      ++v45;
      v43 = v49;
    }

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
    v48 = MEMORY[0x1E69E7CC0];
LABEL_16:
    v55 = v41[286];
    OUTLINED_FUNCTION_5_0();
    v56 = *&v74[v55];
    if (v56)
    {
      v57 = sub_1E32AE9B0(v56);

      v58 = 0;
      v59 = (v48 + 56);
      v60 = 0.0;
      v61 = 0.0;
      v62 = 0.0;
      v63 = 0.0;
      while (v57 != v58)
      {
        if ((v56 & 0xC000000000000001) != 0)
        {
          v64 = MEMORY[0x1E6911E60](v58, v56);
        }

        else
        {
          if (v58 >= *((v56 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_35;
          }

          v64 = *(v56 + 8 * v58 + 32);
        }

        v65 = v64;
        if (__OFADD__(v58, 1))
        {
          goto LABEL_34;
        }

        OUTLINED_FUNCTION_125_8();
        OUTLINED_FUNCTION_19();
        if (CGRectEqualToRect(v75, v77))
        {
          if (v58 >= *(v48 + 2))
          {
            v76.origin.x = v60;
            v76.origin.y = v61;
            v76.size.width = v62;
            v76.size.height = v63;
            MaxY = CGRectGetMaxY(v76);
            OUTLINED_FUNCTION_125_8();
            [v65 setFrame_];
            OUTLINED_FUNCTION_125_8();
          }

          else
          {
            v66 = *(v59 - 3);
            v67 = *(v59 - 2);
            v62 = *(v59 - 1);
            v63 = *v59;
          }

          [v65 setFrame_];
        }

        OUTLINED_FUNCTION_125_8();
        v60 = v69;
        v61 = v70;
        v62 = v71;
        v63 = v72;
        v73 = [v74 vuiContentView];
        [v73 addSubview_];

        ++v58;
        v59 += 4;
      }
    }

    [v74 vui_setNeedsLayout];

    OUTLINED_FUNCTION_130_11();
  }
}

uint64_t sub_1E3D0F70C()
{
  v2 = OUTLINED_FUNCTION_12_11();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_3_9(v3);
  v4 = OBJC_IVAR____TtC8VideosUI23CanonicalBannerViewCell_buttonViews;
  OUTLINED_FUNCTION_4_13();
  *(v1 + 24) = *(v0 + v4);

  return OUTLINED_FUNCTION_27_0();
}

void *sub_1E3D0F7D8()
{
  v1 = OBJC_IVAR____TtC8VideosUI23CanonicalBannerViewCell_availabilityTextView;
  OUTLINED_FUNCTION_0_12();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

uint64_t sub_1E3D0F820()
{
  v0 = OUTLINED_FUNCTION_12_11();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_3_9(v1);
  OUTLINED_FUNCTION_4_13();
  OUTLINED_FUNCTION_13_9();
  v3 = v2;
  return OUTLINED_FUNCTION_27_0();
}

void *sub_1E3D0F89C()
{
  v1 = OBJC_IVAR____TtC8VideosUI23CanonicalBannerViewCell_availabilityImageView;
  OUTLINED_FUNCTION_0_12();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

uint64_t sub_1E3D0F8E4()
{
  v0 = OUTLINED_FUNCTION_12_11();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_3_9(v1);
  OUTLINED_FUNCTION_4_13();
  OUTLINED_FUNCTION_13_9();
  v3 = v2;
  return OUTLINED_FUNCTION_27_0();
}

void *sub_1E3D0F960()
{
  v1 = OBJC_IVAR____TtC8VideosUI23CanonicalBannerViewCell_disclaimerTextView;
  OUTLINED_FUNCTION_0_12();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

uint64_t sub_1E3D0F9A8()
{
  v0 = OUTLINED_FUNCTION_12_11();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_3_9(v1);
  OUTLINED_FUNCTION_4_13();
  OUTLINED_FUNCTION_13_9();
  v3 = v2;
  return OUTLINED_FUNCTION_27_0();
}

void *sub_1E3D0FA24()
{
  v1 = OBJC_IVAR____TtC8VideosUI23CanonicalBannerViewCell_descriptionTextView;
  OUTLINED_FUNCTION_0_12();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_1E3D0FA60(void *a1)
{
  v3 = OBJC_IVAR____TtC8VideosUI23CanonicalBannerViewCell_descriptionTextView;
  OUTLINED_FUNCTION_3_0();
  v4 = *&v1[v3];
  *&v1[v3] = a1;
  v5 = a1;
  if (TVAppFeature.isEnabled.getter(10))
  {
    v6 = OBJC_IVAR____TtC8VideosUI23CanonicalBannerViewCell_descriptionTextView;
    OUTLINED_FUNCTION_5_0();
    if (*&v1[v6])
    {
      objc_opt_self();
      v7 = swift_dynamicCastObjCClass();
      if (v7)
      {
        [v7 setShowMoreForTruncation_];
      }
    }
  }

  v8 = OBJC_IVAR____TtC8VideosUI23CanonicalBannerViewCell_descriptionTextView;
  OUTLINED_FUNCTION_5_0();
  [v1 vui:*&v1[v8] addSubview:v4 oldView:?];
  [v1 vui_setNeedsLayout];
}

uint64_t sub_1E3D0FB4C()
{
  v0 = OUTLINED_FUNCTION_12_11();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_3_9(v1);
  OUTLINED_FUNCTION_4_13();
  OUTLINED_FUNCTION_13_9();
  v3 = v2;
  return OUTLINED_FUNCTION_27_0();
}

void *sub_1E3D0FBC8()
{
  v1 = OBJC_IVAR____TtC8VideosUI23CanonicalBannerViewCell_rolesSummaryView;
  OUTLINED_FUNCTION_0_12();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_1E3D0FC10()
{
  OUTLINED_FUNCTION_79_0();
  v2 = v1;
  v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_3_102();
  v6 = *&v0[v5];
  *&v0[v5] = v4;
  v7 = *v2;
  v8 = v4;
  OUTLINED_FUNCTION_40_0();
  [v0 vui:*&v0[v7] addSubview:v6 oldView:?];
  [v0 vui_setNeedsLayout];

  OUTLINED_FUNCTION_78_8();
}

uint64_t sub_1E3D0FC98()
{
  v0 = OUTLINED_FUNCTION_12_11();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_3_9(v1);
  OUTLINED_FUNCTION_4_13();
  OUTLINED_FUNCTION_13_9();
  v3 = v2;
  return OUTLINED_FUNCTION_27_0();
}

void *sub_1E3D0FD14()
{
  v1 = OBJC_IVAR____TtC8VideosUI23CanonicalBannerViewCell_tagsView;
  OUTLINED_FUNCTION_0_12();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

uint64_t sub_1E3D0FD5C()
{
  v0 = OUTLINED_FUNCTION_12_11();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_3_9(v1);
  OUTLINED_FUNCTION_4_13();
  OUTLINED_FUNCTION_13_9();
  v3 = v2;
  return OUTLINED_FUNCTION_27_0();
}

void *sub_1E3D0FDD8()
{
  v1 = OBJC_IVAR____TtC8VideosUI23CanonicalBannerViewCell_infoTagsView;
  OUTLINED_FUNCTION_0_12();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_1E3D0FE20()
{
  OUTLINED_FUNCTION_79_0();
  v2 = v1;
  v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_3_102();
  v6 = *&v0[v5];
  *&v0[v5] = v4;
  v7 = v4;
  v8 = [v0 vuiContentView];
  v9 = *v2;
  OUTLINED_FUNCTION_40_0();
  [v8 vui:*&v0[v9] addSubview:v6 oldView:?];

  [v0 vui_setNeedsLayout];
  OUTLINED_FUNCTION_78_8();
}

uint64_t sub_1E3D0FEC8()
{
  v0 = OUTLINED_FUNCTION_12_11();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_3_9(v1);
  OUTLINED_FUNCTION_4_13();
  OUTLINED_FUNCTION_13_9();
  v3 = v2;
  return OUTLINED_FUNCTION_27_0();
}

void *sub_1E3D0FF44()
{
  v1 = OBJC_IVAR____TtC8VideosUI23CanonicalBannerViewCell_uberBackgroundView;
  OUTLINED_FUNCTION_0_12();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_1E3D0FF80()
{
  OUTLINED_FUNCTION_79_0();
  OUTLINED_FUNCTION_52_7();
  v2 = OBJC_IVAR____TtC8VideosUI23CanonicalBannerViewCell_uberBackgroundView;
  OUTLINED_FUNCTION_13_18();
  v3 = *&v0[v2];
  *&v0[v2] = v1;
  v4 = v1;
  v5 = sub_1E3D10104();
  v6 = OBJC_IVAR____TtC8VideosUI23CanonicalBannerViewCell_uberBackgroundView;
  OUTLINED_FUNCTION_40_0();
  v7 = *&v0[v6];
  v8 = v7;
  sub_1E3C41260(v7);

  v9 = *&v0[v6];
  if (v9)
  {
    v10 = v9 == v3;
  }

  else
  {
    v10 = 1;
  }

  if (!v10)
  {
    v11 = v9;
    v12 = [v0 vuiContentView];
    [v12 vui:*&v0[OBJC_IVAR____TtC8VideosUI23CanonicalBannerViewCell____lazy_storage___uberBackgroundContainerView] sendSubviewToBack:?];

    sub_1E3D11588([objc_allocWithZone(MEMORY[0x1E69DD250]) init]);
  }

  [v0 vui_setNeedsLayout];

  OUTLINED_FUNCTION_78_8();
}

uint64_t sub_1E3D10088()
{
  v0 = OUTLINED_FUNCTION_12_11();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_3_9(v1);
  OUTLINED_FUNCTION_4_13();
  OUTLINED_FUNCTION_13_9();
  v3 = v2;
  return OUTLINED_FUNCTION_27_0();
}

void *sub_1E3D10110()
{
  v1 = OBJC_IVAR____TtC8VideosUI23CanonicalBannerViewCell_gradientView;
  OUTLINED_FUNCTION_0_12();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_1E3D1014C()
{
  OUTLINED_FUNCTION_79_0();
  OUTLINED_FUNCTION_52_7();
  v2 = OBJC_IVAR____TtC8VideosUI23CanonicalBannerViewCell_gradientView;
  OUTLINED_FUNCTION_13_18();
  v3 = *&v0[v2];
  *&v0[v2] = v1;
  v4 = v1;
  v5 = [v0 vuiContentView];
  v6 = OBJC_IVAR____TtC8VideosUI23CanonicalBannerViewCell_gradientView;
  OUTLINED_FUNCTION_40_0();
  [v5 vui:*&v0[v6] addSubview:v3 oldView:?];

  v7 = *&v0[v6];
  if (v7)
  {
    v8 = v7 == v3;
  }

  else
  {
    v8 = 1;
  }

  if (!v8)
  {
    v9 = v7;
    sub_1E3D12398();
    sub_1E3D11588([objc_allocWithZone(MEMORY[0x1E69DD250]) init]);
    if (sub_1E39DFFC8())
    {
      v10 = objc_opt_self();
      if (([v10 isPad] & 1) != 0 || objc_msgSend(v10, sel_isMac))
      {
        sub_1E39E4334(2, 0.5);
      }
    }
  }

  [v0 vui_setNeedsLayout];

  OUTLINED_FUNCTION_78_8();
}

uint64_t sub_1E3D10284()
{
  v0 = OUTLINED_FUNCTION_12_11();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_3_9(v1);
  OUTLINED_FUNCTION_4_13();
  OUTLINED_FUNCTION_13_9();
  v3 = v2;
  return OUTLINED_FUNCTION_27_0();
}

double sub_1E3D10300()
{
  OUTLINED_FUNCTION_1_14(OBJC_IVAR____TtC8VideosUI23CanonicalBannerViewCell_previousViewSize);
  OUTLINED_FUNCTION_5_0();
  return *v0;
}

uint64_t sub_1E3D10338()
{
  OUTLINED_FUNCTION_5_16();
  OUTLINED_FUNCTION_1_14(OBJC_IVAR____TtC8VideosUI23CanonicalBannerViewCell_previousViewSize);
  result = OUTLINED_FUNCTION_3_0();
  *v0 = v2;
  v0[1] = v1;
  return result;
}

uint64_t sub_1E3D10440()
{
  v1 = OBJC_IVAR____TtC8VideosUI23CanonicalBannerViewCell_interfaceStyleFromImage;
  OUTLINED_FUNCTION_0_12();
  return *(v0 + v1);
}

uint64_t sub_1E3D10474(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC8VideosUI23CanonicalBannerViewCell_interfaceStyleFromImage;
  result = OUTLINED_FUNCTION_37();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1E3D10500()
{
  v1 = OBJC_IVAR____TtC8VideosUI23CanonicalBannerViewCell_isVideoPlaying;
  OUTLINED_FUNCTION_0_12();
  return *(v0 + v1);
}

void sub_1E3D10534(char a1)
{
  v3 = OBJC_IVAR____TtC8VideosUI23CanonicalBannerViewCell_isVideoPlaying;
  OUTLINED_FUNCTION_3_0();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  v5 = OBJC_IVAR____TtC8VideosUI23CanonicalBannerViewCell_isVideoPlaying;
  OUTLINED_FUNCTION_5_0();
  if (v4 != *(v1 + v5))
  {
    if (TVAppFeature.isEnabled.getter(10))
    {
      v6 = MEMORY[0x1E69E7D40];
      OUTLINED_FUNCTION_21();
      v8 = (*(v7 + 1112))();
      OUTLINED_FUNCTION_26_3();
      v10 = (*((*v6 & v9) + 0x2A8))();
      if (v10)
      {
        v11 = v10;
        [v10 frame];
        v33 = v12;
        v34 = v13;
        v32 = v14;

        v23 = OUTLINED_FUNCTION_120_6(v15, v16, v17, v18, v19, v20, v21, v22, v32, *(&v32 + 1), v33, *(&v33 + 1), v34);
      }

      else
      {
        v23 = 0uLL;
        v24 = 0uLL;
      }

      v35[0] = v23;
      v35[1] = v24;
      v36 = 0;
      sub_1E3D0E7D8(v8, v35);
    }

    else
    {
      v25 = *(v1 + v5);
      v26 = MEMORY[0x1E69E7D40];
      if (v25 == 1)
      {
        v27 = 2;
      }

      else
      {
        OUTLINED_FUNCTION_21();
        v27 = (*(v28 + 1184))();
      }

      v29 = OUTLINED_FUNCTION_121();
      [v29 v30];
      OUTLINED_FUNCTION_26_3();
      v8 = (*((*v26 & v31) + 0x428))();
      [v8 configureBlurWithInterfaceStyle_];
    }
  }
}

void (*sub_1E3D10728())(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_12_11();
  v3 = __swift_coroFrameAllocStub(v2);
  *v0 = v3;
  v3[3] = v1;
  v4 = OBJC_IVAR____TtC8VideosUI23CanonicalBannerViewCell_isVideoPlaying;
  OUTLINED_FUNCTION_4_13();
  *(v3 + 32) = *(v1 + v4);
  return sub_1E3D10794;
}

void sub_1E3D10794(uint64_t a1)
{
  v1 = *a1;
  sub_1E3D10534(*(*a1 + 32));

  free(v1);
}

void *sub_1E3D107D4()
{
  v1 = OBJC_IVAR____TtC8VideosUI23CanonicalBannerViewCell_backgroundMediaController;
  OUTLINED_FUNCTION_0_12();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_1E3D10810()
{
  OUTLINED_FUNCTION_52_7();
  v2 = OBJC_IVAR____TtC8VideosUI23CanonicalBannerViewCell_backgroundMediaController;
  OUTLINED_FUNCTION_13_18();
  v3 = *&v0[v2];
  *&v0[v2] = v1;
  v4 = OBJC_IVAR____TtC8VideosUI23CanonicalBannerViewCell_backgroundMediaController;
  v5 = v1;
  OUTLINED_FUNCTION_40_0();
  v6 = *&v0[v4];
  if (v6)
  {
    if (v6 != v3)
    {
      if (!v3)
      {
        goto LABEL_8;
      }

      goto LABEL_6;
    }

LABEL_17:
    [v0 vui_setNeedsLayout];

    return;
  }

  if (!v3)
  {
    goto LABEL_17;
  }

LABEL_6:
  [v3 vui:0 willMoveToParentViewController:?];
  v7 = [v3 vuiView];
  if (!v7)
  {
    __break(1u);
    goto LABEL_19;
  }

  v8 = v7;
  [v7 vui_removeFromSuperView];

  [v3 vui_removeFromParentViewController];
  v6 = *&v0[v4];
  if (!v6)
  {
    v11 = sub_1E3D10B90();
    sub_1E3C41260(0);
LABEL_16:

    goto LABEL_17;
  }

LABEL_8:
  v9 = v6;
  v10 = sub_1E3D10B1C();
  v11 = v9;
  v12 = [v11 view];
  sub_1E3D11494();

  v13 = sub_1E3D10B90();
  v14 = *&v0[OBJC_IVAR____TtC8VideosUI23CanonicalBannerViewCell____lazy_storage___backgroundMediaView];
  v15 = v14;
  sub_1E3C41260(v14);

  OUTLINED_FUNCTION_36_3();
  v17 = (*((*MEMORY[0x1E69E7D40] & v16) + 0x1F0))();
  if (v17)
  {
    v18 = v17;
    [v17 vui:v11 addChildViewController:?];
    [v11 vui:v18 didMoveToParentViewController:?];
  }

  v19 = [v11 vuiView];

  if (v19)
  {
    [v19 setVuiClipsToBounds_];

    sub_1E3D12398();
    v20 = sub_1E3D0D800(v11);
    v21 = *&v0[OBJC_IVAR____TtC8VideosUI23CanonicalBannerViewCell_playbackInteractionManager];
    *&v0[OBJC_IVAR____TtC8VideosUI23CanonicalBannerViewCell_playbackInteractionManager] = v20;

    if (v3)
    {
      v22 = [v3 isPlaybackEnabled];
    }

    else
    {
      v22 = 1;
    }

    [v11 setPlaybackEnabled_];
    goto LABEL_16;
  }

LABEL_19:
  __break(1u);
}

uint64_t sub_1E3D10AA0()
{
  v0 = OUTLINED_FUNCTION_12_11();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_3_9(v1);
  OUTLINED_FUNCTION_4_13();
  OUTLINED_FUNCTION_13_9();
  v3 = v2;
  return OUTLINED_FUNCTION_27_0();
}

id sub_1E3D10B1C()
{
  v1 = OBJC_IVAR____TtC8VideosUI23CanonicalBannerViewCell____lazy_storage___backgroundMediaView;
  v2 = *(v0 + OBJC_IVAR____TtC8VideosUI23CanonicalBannerViewCell____lazy_storage___backgroundMediaView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC8VideosUI23CanonicalBannerViewCell____lazy_storage___backgroundMediaView);
  }

  else
  {
    type metadata accessor for ProductUberView();
    v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_1E3D10B9C(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(v1 + *a1);
  if (v3)
  {
    v4 = *(v1 + *a1);
  }

  else
  {
    type metadata accessor for BackgroundExtensionContainerView();
    v5 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    v6 = OUTLINED_FUNCTION_124_6();
    [v6 vui:v5 addSubview:0 oldView:?];

    v7 = OUTLINED_FUNCTION_124_6();
    [v7 vui:v5 sendSubviewToBack:?];

    v8 = *(v1 + v2);
    *(v1 + v2) = v5;
    v4 = v5;

    v3 = 0;
  }

  v9 = v3;
  return v4;
}

uint64_t sub_1E3D10C98(uint64_t a1, uint64_t *a2, uint64_t (*a3)(uint64_t))
{
  v6 = *a2;
  OUTLINED_FUNCTION_3_0();
  v7 = *(v3 + v6);
  *(v3 + v6) = a1;
  return a3(v7);
}

void sub_1E3D10D38()
{
  if (sub_1E3D10EC8())
  {
    OUTLINED_FUNCTION_21();
    v0 += 88;
    v1 = *v0;
    v2 = (*v0)();
    if (v2)
    {

      v3 = v1();
      if (!v3)
      {
        goto LABEL_7;
      }

LABEL_6:
      v5 = v3;
      [v3 frame];
      OUTLINED_FUNCTION_3();

      v11.origin.x = OUTLINED_FUNCTION_6();
      CGRectGetMinY(v11);
      goto LABEL_7;
    }
  }

  OUTLINED_FUNCTION_113_9();
  v3 = (*(v4 + 728))();
  if (v3)
  {
    goto LABEL_6;
  }

LABEL_7:
  OUTLINED_FUNCTION_113_9();
  v7 = (*(v6 + 872))();
  if (v7)
  {
    v8 = v7;
    if (sub_1E32AE9B0(v7))
    {
      if ((v8 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x1E6911E60](0, v8);
        goto LABEL_12;
      }

      if (*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v9 = *(v8 + 32);
LABEL_12:
        v10 = v9;

        [v10 frame];
        CGRectGetMinY(v12);

        return;
      }

      __break(1u);
    }

    else
    {
    }
  }
}

uint64_t sub_1E3D10EC8()
{
  v1 = MEMORY[0x1E69E7D40];
  OUTLINED_FUNCTION_21();
  if ((*(v2 + 632))())
  {
    OUTLINED_FUNCTION_30();
    v4 = (*(v3 + 1912))();
  }

  else
  {
    v4 = 3;
  }

  v5 = [v0 vuiTraitCollection];
  OUTLINED_FUNCTION_36_3();
  v7 = (*((*v1 & v6) + 0x530))();
  if (v7)
  {
  }

  type metadata accessor for CanonicalBannerViewCell();
  v8 = sub_1E3D17C34(v4, v5, v7 != 0, 0);

  return v8 & 1;
}

uint64_t sub_1E3D11008()
{
  v1 = OBJC_IVAR____TtC8VideosUI23CanonicalBannerViewCell_hasLaidOutSubviews;
  OUTLINED_FUNCTION_0_12();
  return *(v0 + v1);
}

uint64_t sub_1E3D1103C(char a1)
{
  v3 = OBJC_IVAR____TtC8VideosUI23CanonicalBannerViewCell_hasLaidOutSubviews;
  result = OUTLINED_FUNCTION_37();
  *(v1 + v3) = a1;
  return result;
}

void *sub_1E3D110C8()
{
  v1 = OBJC_IVAR____TtC8VideosUI23CanonicalBannerViewCell_descComputationLabel;
  OUTLINED_FUNCTION_0_12();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_1E3D11104()
{
  OUTLINED_FUNCTION_79_0();
  v2 = v1;
  v3 = OBJC_IVAR____TtC8VideosUI23CanonicalBannerViewCell_descComputationLabel;
  OUTLINED_FUNCTION_3_102();
  v4 = *&v0[v3];
  *&v0[v3] = v2;
  v5 = OBJC_IVAR____TtC8VideosUI23CanonicalBannerViewCell_descComputationLabel;
  v6 = v2;
  OUTLINED_FUNCTION_40_0();
  [v0 vui:*&v0[v5] addSubview:v4 oldView:?];
  v7 = *&v0[v5];
  if (v7)
  {
    [v7 setAlpha_];
  }

  [v0 vui_setNeedsLayout];

  OUTLINED_FUNCTION_78_8();
}

uint64_t sub_1E3D111A4()
{
  v0 = OUTLINED_FUNCTION_12_11();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_3_9(v1);
  OUTLINED_FUNCTION_4_13();
  OUTLINED_FUNCTION_13_9();
  v3 = v2;
  return OUTLINED_FUNCTION_27_0();
}

void sub_1E3D11220(void *a1)
{
  v7 = *&v2[OBJC_IVAR____TtC8VideosUI23CanonicalBannerViewCell_tagsComputationLabel];
  *&v2[OBJC_IVAR____TtC8VideosUI23CanonicalBannerViewCell_tagsComputationLabel] = a1;
  v3 = OBJC_IVAR____TtC8VideosUI23CanonicalBannerViewCell_tagsComputationLabel;
  v4 = *&v2[OBJC_IVAR____TtC8VideosUI23CanonicalBannerViewCell_tagsComputationLabel];
  v5 = a1;
  [OUTLINED_FUNCTION_12_1() vui:v4 addSubview:v7 oldView:?];
  v6 = *&v2[v3];
  if (v6)
  {
    [v6 setAlpha_];
  }

  [v2 vui_setNeedsLayout];
}

uint64_t sub_1E3D112D0()
{
  OUTLINED_FUNCTION_1_14(OBJC_IVAR____TtC8VideosUI23CanonicalBannerViewCell_syndicationId);
  OUTLINED_FUNCTION_5_0();
  v1 = *v0;

  return v1;
}

uint64_t sub_1E3D11318(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC8VideosUI23CanonicalBannerViewCell_syndicationId);
  OUTLINED_FUNCTION_3_0();
  *v5 = a1;
  v5[1] = a2;
}

id sub_1E3D113BC()
{
  v1 = OBJC_IVAR____TtC8VideosUI23CanonicalBannerViewCell____lazy_storage___pillSeparatorView;
  v2 = *(v0 + OBJC_IVAR____TtC8VideosUI23CanonicalBannerViewCell____lazy_storage___pillSeparatorView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC8VideosUI23CanonicalBannerViewCell____lazy_storage___pillSeparatorView);
  }

  else
  {
    type metadata accessor for SeparatorView();
    v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    v5 = OUTLINED_FUNCTION_43_0();
    [v5 v6];
    v7 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v8 = v2;
  return v3;
}

void *sub_1E3D1144C()
{
  v1 = OBJC_IVAR____TtC8VideosUI23CanonicalBannerViewCell_attributionView;
  OUTLINED_FUNCTION_0_12();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_1E3D11494()
{
  OUTLINED_FUNCTION_79_0();
  v2 = v1;
  v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_3_102();
  v6 = *&v0[v5];
  *&v0[v5] = v4;
  v7 = *v2;
  v8 = v4;
  OUTLINED_FUNCTION_40_0();
  [v0 vui:*&v0[v7] addSubview:v6 oldView:?];

  OUTLINED_FUNCTION_78_8();
}

uint64_t sub_1E3D1150C()
{
  v0 = OUTLINED_FUNCTION_12_11();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_3_9(v1);
  OUTLINED_FUNCTION_4_13();
  OUTLINED_FUNCTION_13_9();
  v3 = v2;
  return OUTLINED_FUNCTION_27_0();
}

void sub_1E3D11588(void *a1)
{
  v15 = *&v1[OBJC_IVAR____TtC8VideosUI23CanonicalBannerViewCell_transitionBackgroundView];
  *&v1[OBJC_IVAR____TtC8VideosUI23CanonicalBannerViewCell_transitionBackgroundView] = a1;
  v2 = a1;
  if ((sub_1E39DFFC8() & 1) == 0)
  {
    v3 = OBJC_IVAR____TtC8VideosUI23CanonicalBannerViewCell_transitionBackgroundView;
    v4 = *&v1[OBJC_IVAR____TtC8VideosUI23CanonicalBannerViewCell_transitionBackgroundView];
    if (v4)
    {
      if (v4 == v15)
      {
        goto LABEL_8;
      }
    }

    else if (!v15)
    {
      goto LABEL_8;
    }

    [v15 removeFromSuperview];
    v5 = objc_opt_self();
    v6 = [v5 defaultCenter];
    v7 = *MEMORY[0x1E69DEA38];
    [v6 removeObserver:v1 name:*MEMORY[0x1E69DEA38] object:0];

    v8 = *&v1[v3];
    if (v8)
    {
      v9 = v8;
      [v9 setAlpha_];
      [v9 setBackgroundColor_];
      [v9 setUserInteractionEnabled_];
      v10 = [objc_opt_self() mainScreen];
      v11 = [v10 traitCollection];

      v12 = [v11 userInterfaceStyle];
      [v9 setOverrideUserInterfaceStyle_];
      v13 = [v1 contentView];
      [v13 addSubview_];

      v14 = [v5 defaultCenter];
      [v14 addObserver:v1 selector:sel_onSystemTraitCollectionDidChange_ name:v7 object:0];
    }
  }

LABEL_8:
}

id sub_1E3D117AC()
{
  v1 = OBJC_IVAR____TtC8VideosUI23CanonicalBannerViewCell____lazy_storage___separatorView;
  v2 = *&v0[OBJC_IVAR____TtC8VideosUI23CanonicalBannerViewCell____lazy_storage___separatorView];
  if (v2)
  {
    v3 = *&v0[OBJC_IVAR____TtC8VideosUI23CanonicalBannerViewCell____lazy_storage___separatorView];
  }

  else
  {
    type metadata accessor for SeparatorView();
    v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    v5 = [v0 contentView];
    [v5 addSubview_];

    v6 = *&v0[v1];
    *&v0[v1] = v4;
    v3 = v4;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

id sub_1E3D11858()
{
  OUTLINED_FUNCTION_0_8();
  v1 = objc_allocWithZone(v0);
  v4 = OUTLINED_FUNCTION_2_15();

  return [v2 v3];
}

id sub_1E3D118A8()
{
  OUTLINED_FUNCTION_0_8();
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC8VideosUI23CanonicalBannerViewCell____lazy_storage___canonicalConfig) = 0;
  v1 = OBJC_IVAR____TtC8VideosUI23CanonicalBannerViewCell_badgeViewPresenter;
  type metadata accessor for TextBadgePresenter();
  *(v0 + v1) = sub_1E3789F30(0);
  *(v0 + OBJC_IVAR____TtC8VideosUI23CanonicalBannerViewCell_bannerViewModel) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI23CanonicalBannerViewCell_bannerLayout) = 0;
  v2 = v0 + OBJC_IVAR____TtC8VideosUI23CanonicalBannerViewCell_collectionViewFrameSize;
  *v2 = 0;
  *(v2 + 8) = 0;
  *(v2 + 16) = 1;
  *(v0 + OBJC_IVAR____TtC8VideosUI23CanonicalBannerViewCell_infoView) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI23CanonicalBannerViewCell_titleImageView) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI23CanonicalBannerViewCell_contentTitleView) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI23CanonicalBannerViewCell_contentSubtitleView) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI23CanonicalBannerViewCell_episodeInfoTextView) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI23CanonicalBannerViewCell_promoTextView) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI23CanonicalBannerViewCell_askToBuyPromptView) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI23CanonicalBannerViewCell_coverArtImageView) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI23CanonicalBannerViewCell_buttonViews) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI23CanonicalBannerViewCell_availabilityTextView) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI23CanonicalBannerViewCell_availabilityImageView) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI23CanonicalBannerViewCell_disclaimerTextView) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI23CanonicalBannerViewCell_descriptionTextView) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI23CanonicalBannerViewCell_rolesSummaryView) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI23CanonicalBannerViewCell_tagsView) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI23CanonicalBannerViewCell_infoTagsView) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI23CanonicalBannerViewCell_uberBackgroundView) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI23CanonicalBannerViewCell____lazy_storage___uberBackgroundContainerView) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI23CanonicalBannerViewCell_gradientView) = 0;
  v3 = (v0 + OBJC_IVAR____TtC8VideosUI23CanonicalBannerViewCell_previousViewSize);
  *v3 = 0;
  v3[1] = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI23CanonicalBannerViewCell_supplementaryData) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI23CanonicalBannerViewCell_interfaceStyleFromImage) = 2;
  *(v0 + OBJC_IVAR____TtC8VideosUI23CanonicalBannerViewCell_isVideoPlaying) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI23CanonicalBannerViewCell_playbackInteractionManager) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI23CanonicalBannerViewCell_backgroundMediaController) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI23CanonicalBannerViewCell____lazy_storage___backgroundMediaView) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI23CanonicalBannerViewCell____lazy_storage___backgroundMediaContainerView) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI23CanonicalBannerViewCell_backgroundImageViewModel) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI23CanonicalBannerViewCell_hasLaidOutSubviews) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI23CanonicalBannerViewCell_descComputationLabel) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI23CanonicalBannerViewCell_tagsComputationLabel) = 0;
  OUTLINED_FUNCTION_75_18(OBJC_IVAR____TtC8VideosUI23CanonicalBannerViewCell_syndicationId);
  OUTLINED_FUNCTION_38_43(OBJC_IVAR____TtC8VideosUI23CanonicalBannerViewCell_attributionView);
  v21 = v0;
  v22 = type metadata accessor for CanonicalBannerViewCell();
  v4 = OUTLINED_FUNCTION_2_15();
  v7 = objc_msgSendSuper2(v5, v6, v4);
  [v7 setAccessibilityIgnoresInvertColors_];
  [v7 setAutoresizingMask_];

  v8 = objc_opt_self();
  v9 = [v8 defaultCenter];
  v10 = v7;
  [v9 addObserver:v10 selector:sel_handleSyndicationInfoUpdatedNotification_ name:*sub_1E3FC541C() object:0];

  v11 = [v8 defaultCenter];
  v12 = v10;
  [v11 addObserver:v12 selector:sel_handleGroupWatchActivityStateUpdatedNotification_ name:*sub_1E3C0EB8C() object:0];

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF379F0);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1E4297BE0;
  *(v13 + 32) = sub_1E3280A90(0, &qword_1EE23AEE0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF37A00);
  v14 = sub_1E42062A4();

  OUTLINED_FUNCTION_4_0();
  v15 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v20[4] = sub_1E3D1B93C;
  v20[5] = v15;
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 1107296256;
  v20[2] = sub_1E3790FBC;
  v20[3] = &block_descriptor_97;
  v16 = _Block_copy(v20);

  v17 = OUTLINED_FUNCTION_43_0();
  [v17 v18];
  _Block_release(v16);

  sub_1E3D122E4();
  return v12;
}

id sub_1E3D11D40()
{
  v1 = [objc_opt_self() defaultCenter];
  v2 = v0;
  [v1 removeObserver:v2 name:*sub_1E3FC541C() object:0];

  v4.receiver = v2;
  v4.super_class = type metadata accessor for CanonicalBannerViewCell();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

void sub_1E3D1205C()
{
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC8VideosUI23CanonicalBannerViewCell____lazy_storage___canonicalConfig) = 0;
  v1 = OBJC_IVAR____TtC8VideosUI23CanonicalBannerViewCell_badgeViewPresenter;
  type metadata accessor for TextBadgePresenter();
  *(v0 + v1) = sub_1E3789F30(0);
  *(v0 + OBJC_IVAR____TtC8VideosUI23CanonicalBannerViewCell_bannerViewModel) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI23CanonicalBannerViewCell_bannerLayout) = 0;
  v2 = v0 + OBJC_IVAR____TtC8VideosUI23CanonicalBannerViewCell_collectionViewFrameSize;
  *v2 = 0;
  *(v2 + 8) = 0;
  *(v2 + 16) = 1;
  *(v0 + OBJC_IVAR____TtC8VideosUI23CanonicalBannerViewCell_infoView) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI23CanonicalBannerViewCell_titleImageView) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI23CanonicalBannerViewCell_contentTitleView) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI23CanonicalBannerViewCell_contentSubtitleView) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI23CanonicalBannerViewCell_episodeInfoTextView) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI23CanonicalBannerViewCell_promoTextView) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI23CanonicalBannerViewCell_askToBuyPromptView) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI23CanonicalBannerViewCell_coverArtImageView) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI23CanonicalBannerViewCell_buttonViews) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI23CanonicalBannerViewCell_availabilityTextView) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI23CanonicalBannerViewCell_availabilityImageView) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI23CanonicalBannerViewCell_disclaimerTextView) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI23CanonicalBannerViewCell_descriptionTextView) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI23CanonicalBannerViewCell_rolesSummaryView) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI23CanonicalBannerViewCell_tagsView) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI23CanonicalBannerViewCell_infoTagsView) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI23CanonicalBannerViewCell_uberBackgroundView) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI23CanonicalBannerViewCell____lazy_storage___uberBackgroundContainerView) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI23CanonicalBannerViewCell_gradientView) = 0;
  v3 = (v0 + OBJC_IVAR____TtC8VideosUI23CanonicalBannerViewCell_previousViewSize);
  *v3 = 0;
  v3[1] = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI23CanonicalBannerViewCell_supplementaryData) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI23CanonicalBannerViewCell_interfaceStyleFromImage) = 2;
  *(v0 + OBJC_IVAR____TtC8VideosUI23CanonicalBannerViewCell_isVideoPlaying) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI23CanonicalBannerViewCell_playbackInteractionManager) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI23CanonicalBannerViewCell_backgroundMediaController) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI23CanonicalBannerViewCell____lazy_storage___backgroundMediaView) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI23CanonicalBannerViewCell____lazy_storage___backgroundMediaContainerView) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI23CanonicalBannerViewCell_backgroundImageViewModel) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI23CanonicalBannerViewCell_hasLaidOutSubviews) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI23CanonicalBannerViewCell_descComputationLabel) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI23CanonicalBannerViewCell_tagsComputationLabel) = 0;
  OUTLINED_FUNCTION_75_18(OBJC_IVAR____TtC8VideosUI23CanonicalBannerViewCell_syndicationId);
  OUTLINED_FUNCTION_38_43(OBJC_IVAR____TtC8VideosUI23CanonicalBannerViewCell_attributionView);
  sub_1E42076B4();
  __break(1u);
}

void sub_1E3D122E4()
{
  if (sub_1E39DFFC8())
  {
    v1 = [v0 vuiContentView];
    [v1 setClipsToBounds_];

    v2 = [v0 vuiCellView];
    [v2 setClipsToBounds_];
  }
}

void sub_1E3D12398()
{
  OUTLINED_FUNCTION_21();
  v1 = (*(v0 + 1112))();
  if (v1)
  {
    v2 = v1;
    v3 = OUTLINED_FUNCTION_124_6();
    [v3 vui:v2 sendSubviewToBack:?];
  }

  v4 = OUTLINED_FUNCTION_124_6();
  v5 = sub_1E3D10B90();
  [v4 vui:v5 sendSubviewToBack:?];
}

uint64_t sub_1E3D12478()
{
  v7.receiver = v0;
  v7.super_class = type metadata accessor for CanonicalBannerViewCell();
  objc_msgSendSuper2(&v7, sel_vui_prepareForReuse);
  OUTLINED_FUNCTION_26_3();
  v1 = MEMORY[0x1E69E7D40];
  (*((*MEMORY[0x1E69E7D40] & v2) + 0x5A0))(0, 0);
  OUTLINED_FUNCTION_26_3();
  (*((*v1 & v3) + 0x600))(0);
  OUTLINED_FUNCTION_26_3();
  v4 = OUTLINED_FUNCTION_1_36();
  return v5(v4);
}

id sub_1E3D12604()
{
  [v0 vuiBounds];

  return [v0 vui:1 layoutSubviews:v1 computationOnly:v2];
}

void sub_1E3D12650(char a1)
{
  v4 = v1;
  OUTLINED_FUNCTION_5_16();
  v6 = MEMORY[0x1E69E7D40];
  OUTLINED_FUNCTION_21();
  (*(v7 + 656))();
  v10 = v9;
  if (v9 <= 0.0)
  {
    v10 = v2;
  }

  if (v8)
  {
    v11 = v2;
  }

  else
  {
    v11 = v10;
  }

  type metadata accessor for MediaShowcaseHostingView();
  OUTLINED_FUNCTION_26_3();
  v13 = *((*v6 & v12) + 0x260);
  v14 = v13();
  v15 = sub_1E40037C8(v14);

  if ((a1 & 1) != 0 && !*(v1 + OBJC_IVAR____TtC8VideosUI23CanonicalBannerViewCell_tagsComputationLabel))
  {
    OUTLINED_FUNCTION_12_5();
    v17 = (*(v16 + 632))();
    if (v17)
    {
      v18 = v17;
      sub_1E3280A90(0, &qword_1EE23AD40);
      v19 = (*(*v18 + 2392))();
      v20 = [v19 textLayout];

      v21 = sub_1E3810954(0x6D65726F4CLL, 0xE500000000000000, v20, 0);
      sub_1E3D11220(v21);
    }
  }

  v22 = sub_1E3D10EC8();
  v23 = (*(v4 + OBJC_IVAR____TtC8VideosUI23CanonicalBannerViewCell_isUberLayout) != 2) & (v22 ^ *(v4 + OBJC_IVAR____TtC8VideosUI23CanonicalBannerViewCell_isUberLayout));
  *(v4 + OBJC_IVAR____TtC8VideosUI23CanonicalBannerViewCell_isUberLayout) = v22 & 1;
  v24 = OBJC_IVAR____TtC8VideosUI23CanonicalBannerViewCell_isPhoneSizeClass;
  v25 = *(v4 + OBJC_IVAR____TtC8VideosUI23CanonicalBannerViewCell_isPhoneSizeClass);
  v26 = (*((*v6 & *v4) + 0x278))();
  if (v25 == 2)
  {
    if (v26)
    {
      OUTLINED_FUNCTION_8();
      v28 = (*(v27 + 1560))();

      LOBYTE(v29) = sub_1E3A24FDC(v28) & 1;
    }

    else
    {
      LOBYTE(v29) = 2;
    }

    goto LABEL_17;
  }

  if (v26)
  {
    v30 = v25 & 1;
    OUTLINED_FUNCTION_8();
    v32 = (*(v31 + 1560))();

    v29 = sub_1E3A24FDC(v32) & 1;
    if (v29 != v30)
    {
      v23 = 1;
LABEL_17:
      *(v4 + v24) = v29;
    }
  }

  OUTLINED_FUNCTION_12_5();
  v34 = (*(v33 + 632))();
  if (v34)
  {
    v35 = v34;
    v36 = [v4 traitCollection];
    v37 = sub_1E3D10EC8();
    (*(*v35 + 2592))(v36, v37 & 1, v3, v11, v15);
  }

  if (v23)
  {
    v38 = v13();
    if (v38)
    {
      v39 = v38;
      sub_1E38BAE74(&v49);
      v40 = v49;
      type metadata accessor for UIFactory();
      v47 = v4;
      v46[3] = &type metadata for CollectionViewCellContext;
      v46[4] = &off_1F5D621F8;
      v41 = swift_allocObject();
      *(v41 + 40) = *v52;
      *(v41 + 16) = v40;
      *(v41 + 18) = 1;
      *(v41 + 19) = v50;
      *(v41 + 23) = v51;
      *(v41 + 55) = *&v52[15];
      v46[0] = v41;
      *(v41 + 24) = v3;
      *(v41 + 32) = v11;
      v42 = *((*v6 & *v4) + 0x1F0);

      v43 = v4;
      v44 = v42();
      v45 = type metadata accessor for CanonicalBannerViewCell();
      sub_1E38E5240(v39, &v47, v46, 0, v44, v45, &v48);

      sub_1E325F748(v46, &qword_1ECF296C0);
    }
  }

  if (TVAppFeature.isEnabled.getter(10))
  {
    OUTLINED_FUNCTION_6_12();
    sub_1E3D12BB8();
  }

  else
  {
    OUTLINED_FUNCTION_6_12();
    sub_1E3D142AC();
  }
}

void sub_1E3D12BB8()
{
  OUTLINED_FUNCTION_41_5();
  v2 = v0;
  v4 = v3;
  v251 = v5;
  v7 = v6;
  v8 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_2_5();
  v249 = v12;
  MEMORY[0x1EEE9AC00](v13);
  v15 = v220 - v14;
  *&v16 = COERCE_DOUBLE(sub_1E324FBDC());
  v17 = *(*&v10 + 16);
  v248 = *&v16;
  v247 = v17;
  v17(v15);
  v18 = sub_1E41FFC94();
  v19 = sub_1E4206814();
  v20 = os_log_type_enabled(v18, v19);
  v250 = v2;
  if (v20)
  {
    v21 = swift_slowAlloc();
    v246 = v10;
    v22 = v4;
    v23 = v21;
    v2 = swift_slowAlloc();
    v258[0] = v2;
    *v23 = 136315138;
    v24 = sub_1E4206E64();
    v26 = sub_1E3270FC8(v24, v25, v258);

    *(v23 + 4) = v26;
    _os_log_impl(&dword_1E323F000, v18, v19, "CanonicalBannerViewCell::layoutSubviewsCrossPlatforms with size: %s", v23, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v2);
    OUTLINED_FUNCTION_85_14();
    OUTLINED_FUNCTION_6_0();
    v4 = v22;
    v10 = v246;
    OUTLINED_FUNCTION_6_0();
  }

  v27 = *(*&v10 + 8);
  v28 = v27(v15, v8);
  v29 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x278);
  if ((v29)(v28))
  {
    OUTLINED_FUNCTION_30();
    (*(v30 + 152))(v252);

    if (v253)
    {
      v31 = 0.0;
    }

    else
    {
      v31 = *&v252[2];
    }
  }

  else
  {
    v31 = 0.0;
  }

  if (sub_1E3D10EC8() & 1) != 0 && (v4)
  {
    sub_1E3D0E25C(v7, v251);
    v32 = v249;
    v247(v249, *&v248, v8);
    v33 = sub_1E41FFC94();
    v34 = sub_1E4206814();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v258[0] = v36;
      *v35 = 136315138;
      v37 = sub_1E4206E54();
      v39 = sub_1E3270FC8(v37, v38, v258);

      *(v35 + 4) = v39;
      _os_log_impl(&dword_1E323F000, v33, v34, "CanonicalBannerViewCell::layoutSubviewsCrossPlatforms preferredSize= %s", v35, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v36);
      OUTLINED_FUNCTION_6_0();
      OUTLINED_FUNCTION_6_0();
    }

    v27(v32, v8);
LABEL_125:
    OUTLINED_FUNCTION_42();
    return;
  }

  LODWORD(v240) = v4;
  v235 = v31;
  v245 = sub_1E3D10EC8();
  v40 = MEMORY[0x1E69E7D40];
  OUTLINED_FUNCTION_8_9();
  (*(v41 + 1144))(v7, v251);
  LODWORD(v247) = [v2 vuiIsRTL];
  type metadata accessor for LayoutGrid();
  sub_1E3A258E4(v7);
  v242 = v42;
  v237 = v43;
  v44 = v7 - v42 - v43;
  type metadata accessor for CanonicalBannerLayout();
  sub_1E3FA8038(v7);
  v46 = v45;
  v47 = [v2 vuiTraitCollection];
  v221 = [v47 isAXEnabled];

  type metadata accessor for CanonicalBannerInfoView();
  v48 = [v2 vuiTraitCollection];
  v49 = sub_1E39A6A94(v48, v7);

  v50 = v250;
  v29();
  OUTLINED_FUNCTION_105_12();
  v243 = v49;
  if (v51)
  {
    OUTLINED_FUNCTION_30();
    v53 = (*(v52 + 2320))();

    *&v55 = COERCE_DOUBLE((*(*v53 + 1728))(v54));
    if (v56)
    {

      OUTLINED_FUNCTION_105_12();
      goto LABEL_20;
    }

    v57 = *&v55;
    if (!(v29)() || (OUTLINED_FUNCTION_30(), v59 = (*(v58 + 1912))(), , v59 == 3))
    {

      OUTLINED_FUNCTION_105_12();
      LOBYTE(v49) = v243;
      if (v243)
      {
        goto LABEL_20;
      }

      goto LABEL_19;
    }

    LOBYTE(v258[0]) = v59;
    LOBYTE(v256) = 2;
    sub_1E39ABD54();
    sub_1E4205E84();

    LOBYTE(v49) = v243;
    OUTLINED_FUNCTION_105_12();
    if ((v209 & 1) == 0)
    {
LABEL_19:
      v1 = v57;
      v31 = v44 - (v57 + 10.0);
    }
  }

LABEL_20:
  OUTLINED_FUNCTION_8_9();
  v60 += 191;
  v61 = *v60;
  v249 = v60;
  v62 = v61();
  v248 = 0.0;
  v246 = 0.0;
  if (v62)
  {
    v63 = v62;
    objc_opt_self();
    OUTLINED_FUNCTION_20_2();
    v64 = swift_dynamicCastObjCClass();
    if (v64)
    {
      [v64 prepareLayoutWithMaxWidth_];
    }

    [v63 sizeThatFits_];
    v248 = v65;
    v67 = v66;

    v246 = v67;
    *&v50[OBJC_IVAR____TtC8VideosUI23CanonicalBannerViewCell_attributionViewHeight] = v67;
  }

  OUTLINED_FUNCTION_113_0();
  v68 = v61();
  v244 = v61;
  v232 = v1;
  if (v68)
  {
    v69 = v68;
    if (v49)
    {
      sub_1E3D113BC();
      OUTLINED_FUNCTION_71();
      OUTLINED_FUNCTION_8_9();
      v71 = (*(v70 + 112))();

      v222 = v7;
      v227 = v251 - v71;
      OUTLINED_FUNCTION_3_134();
      v73 = *(v72 + 112);
      v75 = v74;
      v76 = v73();
      v40 = MEMORY[0x1E69E7D40];
      v229 = v76;

      OUTLINED_FUNCTION_3_134();
      v78 = *(v77 + 112);
      v80 = v79;
      v81 = v78();

      *&v241 = v31;
      v82 = v46;
      v83 = v81 + 0.0;
      VUIRoundValue();
      v85 = v84;
      v260.origin.x = OUTLINED_FUNCTION_1_36();
      v86 = v248;
      v260.size.width = v248;
      v87 = v246;
      v260.size.height = v246;
      Width = CGRectGetWidth(v260);
      v230 = v44;
      v89 = OUTLINED_FUNCTION_55_1(v44 - Width);
      v90 = v242;
      v91 = v242 + v89;
      v261.origin.x = OUTLINED_FUNCTION_1_36();
      v261.size.width = v86;
      v261.size.height = v87;
      v92 = v85 + -10.0 - CGRectGetHeight(v261);
      v262.origin.x = v91;
      v262.origin.y = v92;
      v262.size.width = v86;
      v262.size.height = v87;
      v93 = v83 + CGRectGetHeight(v262);
      v46 = v82;
      v31 = *&v241;
      v94 = v93 + 20.0;
      v239 = v91;
      v263.origin.x = v91;
      v238 = v92;
      v263.origin.y = v92;
      v263.size.width = v86;
      v263.size.height = v87;
      CGRectGetMinY(v263);
      VUIRoundValue();
      v96 = v95;

      v97 = v96 + -10.0;
      v228 = v90;
      v7 = v222;
      goto LABEL_30;
    }

    v228 = 0.0;
  }

  else
  {
    v228 = 0.0;
  }

  v227 = 0.0;
  v230 = 0.0;
  v229 = 0.0;
  v239 = 0.0;
  v238 = 0.0;
  v97 = v251;
  v94 = 0.0;
LABEL_30:
  OUTLINED_FUNCTION_8_9();
  v234 = *(v98 + 680);
  v233 = v98 + 680;
  v99 = v234();
  v236 = 0.0;
  if (v99)
  {
    v100 = v99;
    OUTLINED_FUNCTION_8_9();
    (*(v101 + 312))();
    OUTLINED_FUNCTION_26_3();
    v226 = (*((*v40 & v102) + 0x2A0))(1, v31, 0.0);
    *&v241 = v104;
    Height = v105;
    if (v49)
    {
      v107 = v248;
      v108 = v46;
      v109 = v97 - v46;
    }

    else
    {
      v107 = v248;
      if (v46 <= v103 + 5.0 && v103 > 0.0)
      {
        v46 = v103 + 5.0;
      }

      v108 = v46;
      v109 = v251 - v46;
    }

    v248 = v107;
    v111 = *&v241;
    v225 = v109 - *&v241;
    VUICeilValue();
    v113 = v112;

    v97 = v109 - v113;
    v94 = v94 + v111;
    v46 = v108;
  }

  else
  {
    v242 = 0.0;
    v225 = 0.0;
    v226 = 0.0;
    *&v241 = 0.0;
    Height = 0.0;
  }

  OUTLINED_FUNCTION_8_9();
  v114 += 106;
  v115 = *v114;
  v116 = (*v114)();
  if (v116 && (v116, (v245 & 1) == 0))
  {
    v236 = v97;
    v119 = (v29)();
    if (!v119 || (OUTLINED_FUNCTION_30(), v121 = (*(v120 + 2440))(), , v122 = *(*v121 + 152), v123 = , v122(v254, v123), v50 = v250, v124 = *v254, v125 = *&v254[2], v119 = , (v255 & 1) != 0))
    {
      v124 = *MEMORY[0x1E69DDCE0];
      v125 = *(MEMORY[0x1E69DDCE0] + 16);
    }

    v126 = (v29)(v119);
    v117 = 0.0;
    v231 = v124;
    if (v126)
    {
      OUTLINED_FUNCTION_30();
      v50 = (*(v127 + 2440))();

      *&v129 = COERCE_DOUBLE((*(*v50 + 1696))(v128));
      v131 = v130;
      v133 = v132;
      OUTLINED_FUNCTION_85_14();

      v134 = 0.0;
      if ((v133 & 1) == 0)
      {
        v117 = *&v129;
        v134 = v131;
      }
    }

    else
    {
      v134 = 0.0;
    }

    v264.origin.x = OUTLINED_FUNCTION_1_36();
    v264.size.width = v117;
    v264.size.height = v134;
    v135 = (v7 - CGRectGetWidth(v264)) * 0.5;
    if (Height > v125)
    {
      v136 = Height;
    }

    else
    {
      v136 = v125;
    }

    v137 = v136 - Height;
    v265.origin.y = 0.0;
    v265.origin.x = v135;
    v265.size.width = v117;
    v265.size.height = v134;
    CGRectGetHeight(v265);
    VUIRoundValue();
    v266.origin.y = v138;
    v236 = v135;
    v266.origin.x = v135;
    v118 = v134;
    y = v266.origin.y;
    v266.size.width = v117;
    v266.size.height = v134;
    Height = CGRectGetHeight(v266);

    v94 = v94 + v137 + v231 + Height;
    LOBYTE(v49) = v243;
  }

  else
  {
    y = 0.0;
    v117 = 0.0;
    v118 = 0.0;
  }

  v224 = v117;
  v139 = 0.0;
  if (v49)
  {
    OUTLINED_FUNCTION_102_14();
    v140.n128_f64[0] = OUTLINED_FUNCTION_82_14();
    v141 = LOBYTE(v240);
  }

  else
  {
    v142 = v251 - v46;
    v143 = *((*MEMORY[0x1E69E7D40] & *v50) + 0x3E0);
    v144 = v143();
    v220[3] = v94;
    if (v144)
    {
      v145 = v144;
      v222 = v118;
      v146 = 0.0;
      v147 = v232;
      [v144 vui:v232 sizeThatFits:0.0];
      v148.n128_f64[0] = v7 - v237 - v147;
      v142 = v142 - v149;
      v150.n128_f64[0] = v142;
      v151 = nullsub_1(v148, v150);
      v139 = v152;
      Height = v153;
      v232 = v154;
      v231 = v155;
      if ((v29)(v151))
      {
        OUTLINED_FUNCTION_30();
        v50 = (*(v156 + 2320))();

        (*(*v50 + 152))(&v256, v157);
        OUTLINED_FUNCTION_85_14();

        if ((v257 & 1) == 0)
        {
          v146 = v256;
        }
      }

      else
      {
      }

      v141 = LOBYTE(v240);
    }

    else
    {
      OUTLINED_FUNCTION_82_14();
      v146 = 0.0;
      v141 = LOBYTE(v240);
    }

    OUTLINED_FUNCTION_104_10();
    v159 = v158();
    if (v159)
    {
      v160 = v159;
      v220[0] = v146;
      v220[1] = Height;
      v220[2] = v139;
      v240 = v46;
      v161 = v248;
      v222 = v7;
      v162 = v7 - v237;
      v163 = v239;
      v267.origin.x = v239;
      v164 = v238;
      v267.origin.y = v238;
      v267.size.width = v248;
      v165 = v246;
      v267.size.height = v246;
      v166 = v162 - CGRectGetWidth(v267);
      v268.origin.x = v163;
      v268.origin.y = v164;
      v268.size.width = v161;
      v268.size.height = v165;
      v167 = v142 - CGRectGetHeight(v268);
      v168 = v143();
      if (v168)
      {

        v169 = 10.0;
        if (v220[0] > 10.0)
        {
          v169 = v220[0];
        }

        v167 = v167 - v169;
      }

      v269.origin.x = v166;
      v269.origin.y = v167;
      v269.size.width = v161;
      v269.size.height = v246;
      CGRectGetMinY(v269);
      VUIRoundValue();
    }

    else
    {
      OUTLINED_FUNCTION_102_14();
    }
  }

  if (v141)
  {
    goto LABEL_125;
  }

  if ((v234)(v140))
  {
    OUTLINED_FUNCTION_67_18();
    OUTLINED_FUNCTION_2_6();
    OUTLINED_FUNCTION_95_15();
    [v50 setFrame_];
  }

  v170 = v115();
  [v170 setHidden_];

  if (v115())
  {
    OUTLINED_FUNCTION_67_18();
    OUTLINED_FUNCTION_2_6();
    OUTLINED_FUNCTION_95_15();
    OUTLINED_FUNCTION_22_2();
  }

  v171 = *((*MEMORY[0x1E69E7D40] & *v50) + 0x3E0);
  if (v171())
  {
    OUTLINED_FUNCTION_67_18();
    OUTLINED_FUNCTION_2_6();
    OUTLINED_FUNCTION_62_26();
    OUTLINED_FUNCTION_95_15();
    OUTLINED_FUNCTION_22_2();
  }

  v172 = v171();
  if (v172)
  {
    v173 = v172;
    OUTLINED_FUNCTION_19();
    OUTLINED_FUNCTION_62_26();
    [v173 setHidden_];
  }

  v174 = v50;
  sub_1E3D10EC8();
  OUTLINED_FUNCTION_104_10();
  v176 = v175();
  if (v176)
  {

    v177 = &v50[OBJC_IVAR____TtC8VideosUI23CanonicalBannerViewCell_showAttributionViewBelowBanner];
    v178 = v243;
    v50[OBJC_IVAR____TtC8VideosUI23CanonicalBannerViewCell_showAttributionViewBelowBanner] = v243 & 1;
    if (v178)
    {
      v174 = v50;
      sub_1E3D113BC();
      OUTLINED_FUNCTION_71();
      OUTLINED_FUNCTION_64();
      (*(v179 + 112))();
    }
  }

  else
  {
    v177 = &v50[OBJC_IVAR____TtC8VideosUI23CanonicalBannerViewCell_showAttributionViewBelowBanner];
    v50[OBJC_IVAR____TtC8VideosUI23CanonicalBannerViewCell_showAttributionViewBelowBanner] = 0;
  }

  v180 = OBJC_IVAR____TtC8VideosUI23CanonicalBannerViewCell_transitionBackgroundView;
  v181 = *&v50[OBJC_IVAR____TtC8VideosUI23CanonicalBannerViewCell_transitionBackgroundView];
  if (v181)
  {
    v182 = v181;
    OUTLINED_FUNCTION_67_18();
    OUTLINED_FUNCTION_2_6();
    OUTLINED_FUNCTION_1_36();
    OUTLINED_FUNCTION_95_15();
    OUTLINED_FUNCTION_22_2();

    v183 = *&v50[v180];
    if (v183)
    {
      OUTLINED_FUNCTION_123_8(v183, sel_setHidden_);
    }
  }

  sub_1E3D10B90();
  OUTLINED_FUNCTION_67_18();
  OUTLINED_FUNCTION_2_6();
  OUTLINED_FUNCTION_21_77();
  OUTLINED_FUNCTION_95_15();
  OUTLINED_FUNCTION_22_2();

  v184 = v50;
  if (sub_1E39DFFC8())
  {
    goto LABEL_92;
  }

  OUTLINED_FUNCTION_21();
  v186 = (*(v185 + 1256))();
  if (!v186)
  {
    goto LABEL_92;
  }

  v187 = v186;
  v188 = [v186 view];

  if (v188)
  {
    OUTLINED_FUNCTION_80_13();
    [v184 v189];
    OUTLINED_FUNCTION_2_6();
    OUTLINED_FUNCTION_21_77();
    OUTLINED_FUNCTION_95_15();
    [v188 &selRef_setHeightThresholdForBottomPadding_];

LABEL_92:
    OUTLINED_FUNCTION_21();
    v190 += 139;
    v191 = *v190;
    v192 = (*v190)();
    if (v192)
    {
      v193 = v192;
      OUTLINED_FUNCTION_123_8(v192, &selRef_setFontFeature_);
    }

    v194 = v191();
    v195 = v244;
    if (v194)
    {
      v196 = v194;
      if (([v196 isHidden] & 1) == 0)
      {
        [v196 frame];
        OUTLINED_FUNCTION_2_6();
        OUTLINED_FUNCTION_21_77();
        if (!CGRectEqualToRect(v271, v273))
        {
          OUTLINED_FUNCTION_21_77();
          [v197 v198];

          *v258 = v242;
          *&v258[1] = v225;
          *&v258[2] = v226;
          v258[3] = v241;
          v259 = 0;
          v199 = v196;
          OUTLINED_FUNCTION_80_13();
          sub_1E3D0E7D8(v200, v201);
        }
      }

      OUTLINED_FUNCTION_80_13();
    }

    OUTLINED_FUNCTION_113_0();
    v202 = v195();
    if (v202)
    {
      v203 = v202;
      [v184 vuiBounds];
      OUTLINED_FUNCTION_2_6();
      OUTLINED_FUNCTION_95_15();
      [v203 &selRef_setHeightThresholdForBottomPadding_];
    }

    OUTLINED_FUNCTION_113_0();
    v204 = v195();
    if (v204)
    {
      v205 = v204;
      if (*v177 == 1 && (v206 = [v184 superview]) != 0)
      {
        v207 = v206;
        v208 = [v206 traitCollection];
      }

      else
      {
        v208 = [v184 traitCollection];
      }

      v210 = [v208 userInterfaceStyle];

      [v205 setOverrideUserInterfaceStyle_];
      OUTLINED_FUNCTION_80_13();
    }

    OUTLINED_FUNCTION_113_0();
    v211 = v195();
    if (v211)
    {
      v212 = v211;
      objc_opt_self();
      v213 = swift_dynamicCastObjCClass();
      if (v213)
      {
        v214 = v213;
        OUTLINED_FUNCTION_80_13();
        v215 = v171();
        if (v215)
        {

          v216 = 0;
        }

        else
        {
          v216 = 2;
        }

        if (v243)
        {
          v217 = v221 ^ 1;
        }

        else
        {
          v217 = v216;
        }

        [v214 updateAlignment_];
        v218 = (v245 & 1) != 0 && *v177 != 1;
        [v214 updateBackgroundStyle_];
      }

      OUTLINED_FUNCTION_80_13();
    }

    v219 = sub_1E3D113BC();
    [v219 &selRef:v228 setHeightThresholdForBottomPadding:{v227, v230, v229}];

    goto LABEL_125;
  }

  __break(1u);
}

void sub_1E3D142AC()
{
  OUTLINED_FUNCTION_41_5();
  v3 = v0;
  v650 = v4;
  v656 = v5;
  v7 = v6;
  sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_5();
  v13 = v12 - v11;
  if (v7 != 0.0 || v656 != 0.0)
  {
    v645 = v10;
    v646 = v9;
    type metadata accessor for LayoutGrid();
    v14 = sub_1E3A2579C(v7);
    sub_1E3A258E4(v7);
    OUTLINED_FUNCTION_18_3();
    v16 = v15;
    v18 = v17;
    OUTLINED_FUNCTION_2_4();
    v19 = swift_allocObject();
    *(v19 + 16) = v7;
    *(v19 + 24) = 0;
    v20 = sub_1E3D10EC8();
    v21 = [v0 vuiTraitCollection];
    v22 = [v21 isAXEnabled];

    v653 = v2;
    v23 = v7 - v2 - v18;
    v642 = v14;
    if (sub_1E373F630())
    {
      v24 = 3.0;
    }

    else
    {
      v24 = 4.0;
    }

    sub_1E3A25950(v7);
    v26 = v25;
    v655 = v23;
    v27 = (v23 - v25 * (v24 + -1.0)) / v24;
    type metadata accessor for BannerUberBackgroundViewLayout();
    v639 = v22;
    v28 = sub_1E3DF1808(v7) | v22;
    v29 = MEMORY[0x1E69E7D40];
    v30 = (*((*MEMORY[0x1E69E7D40] & *v3) + 0x5F8))();
    if (v30)
    {

      v31 = v28;
    }

    else
    {
      v31 = 0;
    }

    v32 = floor(v27);
    v649 = OBJC_IVAR____TtC8VideosUI23CanonicalBannerViewCell_showAttributionViewBelowBanner;
    *(v3 + OBJC_IVAR____TtC8VideosUI23CanonicalBannerViewCell_showAttributionViewBelowBanner) = v31 & 1;
    OUTLINED_FUNCTION_11_116();
    v34 = v33();
    if (v34)
    {

      if (v650)
      {
        if (*(v3 + v649))
        {
          v35 = v23;
        }

        else
        {
          v35 = v32;
        }

        OUTLINED_FUNCTION_11_116();
        v37 = v36();
        if (v37)
        {
          v38 = v37;
          objc_opt_self();
          OUTLINED_FUNCTION_20_2();
          v39 = swift_dynamicCastObjCClass();
          if (v39)
          {
            [v39 prepareLayoutWithMaxWidth_];
          }
        }

        OUTLINED_FUNCTION_11_116();
        v41 = v40();
        if (v41)
        {
          v42 = v41;
          [v41 sizeThatFits_];
          v44 = v43;
        }

        else
        {
          v44 = 0;
        }

        v45 = OBJC_IVAR____TtC8VideosUI23CanonicalBannerViewCell_attributionViewHeight;
        *(v3 + OBJC_IVAR____TtC8VideosUI23CanonicalBannerViewCell_attributionViewHeight) = v44;
        OUTLINED_FUNCTION_60_25();
        if (v191)
        {
          sub_1E3D113BC();
          OUTLINED_FUNCTION_33_53();
          v47 = (*(v46 + 112))();

          *(v3 + v45) = v47 + 20.0 + *(v3 + v45);
        }
      }
    }

    v644 = v28;
    v652 = v19;
    if (v20)
    {
      OUTLINED_FUNCTION_45();
      (*(v48 + 656))();
      type metadata accessor for MediaShowcaseHostingView();
      OUTLINED_FUNCTION_39();
      v50 = (*((*v29 & v49) + 0x260))();
      sub_1E40037C8(v50);

      OUTLINED_FUNCTION_39();
      v52 = *((*v29 & v51) + 0x278);
      if (v52())
      {
        OUTLINED_FUNCTION_26_0();
        v55 = v54;
        (*(v53 + 432))();
        OUTLINED_FUNCTION_145();
      }

      else
      {
        v55 = 0;
      }

      v56 = OUTLINED_FUNCTION_2_15();
      sub_1E3DF16A8(v55, v57, v56, v58, v59);
      if (v60 == 0.0)
      {
        if (v52())
        {
          OUTLINED_FUNCTION_30();
          v62 = (*(v61 + 328))();
          v64 = v63;

          v65 = (v64 & 1) != 0 ? 0x4059000000000000 : v62;
        }

        else
        {
          v65 = 0x4059000000000000;
        }
      }

      else
      {
        VUIRoundValue();
      }

      v29 = MEMORY[0x1E69E7D40];
      *(v652 + 24) = v65;
      if (v650)
      {
        v66 = sub_1E324FBDC();
        (*(v645 + 16))(v13, v66, v646);
        OUTLINED_FUNCTION_2_4();
        v67 = swift_allocObject();
        *(v67 + 16) = sub_1E3D1BC84;
        *(v67 + 24) = v652;
        swift_retain_n();
        v68 = sub_1E41FFC94();
        v69 = sub_1E4206814();
        v70 = swift_allocObject();
        *(v70 + 16) = 32;
        v71 = swift_allocObject();
        *(v71 + 16) = 8;
        OUTLINED_FUNCTION_2_4();
        v72 = swift_allocObject();
        *(v72 + 16) = sub_1E3D1BCBC;
        *(v72 + 24) = v67;
        OUTLINED_FUNCTION_2_4();
        v73 = swift_allocObject();
        *(v73 + 16) = sub_1E3D1BCC4;
        *(v73 + 24) = v72;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF341C8);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_1E4297BD0;
        *(inited + 32) = sub_1E3B8B3B0;
        *(inited + 40) = v70;
        *(inited + 48) = sub_1E3B8B494;
        *(inited + 56) = v71;
        *(inited + 64) = sub_1E3D1BCEC;
        *(inited + 72) = v73;

        if (os_log_type_enabled(v68, v69))
        {
          v75 = sub_1E3D1B860();
          v654 = swift_slowAlloc();
          v657[0] = v654;
          *v75 = 258;
          *(v75 + 2) = 32;

          *(v75 + 3) = 8;

          OUTLINED_FUNCTION_5_0();
          v76 = sub_1E4206E54();
          v78 = sub_1E3270FC8(v76, v77, v657);

          *(v75 + 4) = v78;

          _os_log_impl(&dword_1E323F000, v68, v69, "CanonicalBannerViewCell::layoutSubviews_iOS preferredSize= %s", v75, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v654);
          OUTLINED_FUNCTION_6_0();
          sub_1E3D1B868();
        }

        (*(v645 + 8))(v13, v646);
        OUTLINED_FUNCTION_5_0();
LABEL_382:

        goto LABEL_383;
      }
    }

    v647 = v32;
    [v3 bounds];
    j__CGRectGetHeight(v661);
    OUTLINED_FUNCTION_60_25();
    if (v191)
    {
      v79 = *(v3 + OBJC_IVAR____TtC8VideosUI23CanonicalBannerViewCell_attributionViewHeight);
    }

    [v3 bounds];
    j__CGRectGetWidth(v662);
    v80 = sub_1E3D10104();
    OUTLINED_FUNCTION_1_36();
    OUTLINED_FUNCTION_99_10();
    [v81 v82];

    [*(v3 + OBJC_IVAR____TtC8VideosUI23CanonicalBannerViewCell____lazy_storage___uberBackgroundContainerView) setHidden_];
    OUTLINED_FUNCTION_39();
    v578 = *((*v29 & v83) + 0x428);
    v84 = v578();
    if (v84)
    {
      v85 = v84;
      [v84 setHidden_];
    }

    v86 = OBJC_IVAR____TtC8VideosUI23CanonicalBannerViewCell_transitionBackgroundView;
    OUTLINED_FUNCTION_1_36();
    OUTLINED_FUNCTION_99_10();
    [v87 v88];
    [*(v3 + v86) setHidden_];
    OUTLINED_FUNCTION_39();
    v625 = *((*v29 & v89) + 0x350);
    v90 = v625();
    [v90 setHidden_];

    OUTLINED_FUNCTION_39();
    v92 = (*((*v29 & v91) + 0x308))();
    if (v92)
    {
      v93 = v92;
      [v92 setHidden_];
    }

    OUTLINED_FUNCTION_32();
    v631 = 0.0;
    if ((*(v94 + 632))())
    {
      OUTLINED_FUNCTION_30();
      (*(v95 + 1936))();
      OUTLINED_FUNCTION_11_5();

      OUTLINED_FUNCTION_13();
      *&v97 = COERCE_DOUBLE((*(v96 + 352))());
      v99 = v98;

      if ((v99 & 1) == 0)
      {
        v631 = *&v97;
      }
    }

    if ((v20 & 1) != 0 && (OUTLINED_FUNCTION_32(), (v101 = (*(v100 + 704))()) != 0))
    {

      v102 = 1;
    }

    else
    {
      v102 = 0;
    }

    v643 = 0.0;
    sub_1E3D185CC();
    v627 = v103;
    v637 = 0.0;
    v638 = 0.0;
    if ((v102 & 1) == 0)
    {
      OUTLINED_FUNCTION_32();
      v105 = (*(v104 + 728))();
      v637 = 0.0;
      v638 = 0.0;
      if (v105)
      {
        v106 = v105;
        OUTLINED_FUNCTION_96_15(v105, sel_sizeThatFits_);
        v637 = v107;
        v638 = v108;
      }
    }

    OUTLINED_FUNCTION_32();
    v109 += 127;
    v110 = *v109;
    v111 = (*v109)();
    v641 = 0.0;
    if (v111)
    {
      v112 = v111;
      OUTLINED_FUNCTION_96_15(v111, sel_vui_sizeThatFits_);
      v643 = v113;
      v641 = v114;
    }

    OUTLINED_FUNCTION_32();
    v116 = (*(v115 + 752))();
    if (v116)
    {
      v117 = v116;
      objc_opt_self();
      OUTLINED_FUNCTION_20_2();
      v118 = swift_dynamicCastObjCClass();
      if (v118)
      {
        v119 = [v118 buttonType];

        if (v119 == 2)
        {
          if (v644)
          {
            v120 = 14.0;
            *&v121 = 36.0;
LABEL_65:
            v604 = *&v121;
            if ((v20 & 1) == 0)
            {
              v120 = 22.0;
            }

            Height = v120;
            v630 = 0.0;
            if (v650)
            {
              v122 = 0.0;
            }

            else
            {
              v122 = v656;
            }

            OUTLINED_FUNCTION_11_116();
            v124 = v123();
            if (v124)
            {

              sub_1E3D113BC();
              OUTLINED_FUNCTION_71();
              OUTLINED_FUNCTION_64();
              (*(v125 + 112))();

              VUIRoundValue();
              v127 = v126;
              v620 = v7 - sub_1E3952BE0(v1, v653, v16, v18);
              OUTLINED_FUNCTION_88_0();
              v129 = *(v128 + 112);
              v131 = v130;
              v584 = v129();

              v132 = OBJC_IVAR____TtC8VideosUI23CanonicalBannerViewCell_attributionViewHeight;
              OUTLINED_FUNCTION_88_0();
              v134 = *(v133 + 112);
              v136 = v135;
              v134();

              v648 = v127;
              v137 = *(v3 + v132) + -20.0;
              OUTLINED_FUNCTION_88_0();
              v139 = *(v138 + 112);
              v141 = v140;
              v142 = v139();

              v609 = v137 - v142;
              VUIRoundValue();
              v610 = v143;
              v124 = VUIRoundValue();
              v122 = v144;
              v635 = v653;
              v608 = v23;
            }

            else
            {
              v635 = 0.0;
              v609 = 0.0;
              v610 = 0.0;
              v608 = 0.0;
              v620 = 0.0;
              v584 = 0.0;
              v648 = 0.0;
            }

            v150 = (v110)(v124);
            if (v150)
            {

              v151 = *(v3 + OBJC_IVAR____TtC8VideosUI23CanonicalBannerViewCell_tagsComputationLabel);
              if (v151)
              {
                [v151 bottomMarginWithBaselineMargin_];
              }

              v663.origin.x = OUTLINED_FUNCTION_1_36();
              v663.size.width = v643;
              v663.size.height = v641;
              CGRectGetHeight(v663);
              VUIRoundValue();
              v122 = v157;
              v622 = v653;
              v630 = v157;
            }

            else
            {
              v622 = 0.0;
            }

            OUTLINED_FUNCTION_45();
            v158 += 121;
            v159 = *v158;
            v160 = (*v158)();
            if (v160)
            {
              v161 = v160;
              OUTLINED_FUNCTION_45();
              v163 = (*(v162 + 1384))();
              if (v163)
              {
                v164 = v163;
                v165 = [v3 vuiTraitCollection];
                v166 = [v165 isAXLargeEnabled];

                if (v166)
                {
                  [v161 vui:v23 sizeThatFits:0.0];
                  v633 = v168;
                  v634 = v167;
                }

                else
                {
                  [v164 vui:v23 sizeThatFits:0.0];
                  v634 = v249;
                  v251 = v250;
                  v252 = objc_opt_self();
                  [v252 topInset];
                  v254 = v251 + v253;
                  [v252 bottomInset];
                  v633 = ceil(v254 + v255);
                }

                OUTLINED_FUNCTION_51_34();
                v257 = v256();
                if (v257)
                {

                  v258 = *(v3 + OBJC_IVAR____TtC8VideosUI23CanonicalBannerViewCell_tagsComputationLabel);
                  if (v258)
                  {
                    [v258 topMarginToLabel:v164 withBaselineMargin:34.0];
                  }
                }

                else
                {
                  [v164 bottomMarginWithBaselineMargin_];
                }

                v673.origin.x = OUTLINED_FUNCTION_1_36();
                v673.size.height = v633;
                v673.size.width = v634;
                CGRectGetHeight(v673);
                VUIRoundValue();
                v122 = v267;

                v606 = v653;
                v607 = v122;
              }

              else
              {
                v633 = 0.0;
                v634 = 0.0;
                v606 = 0.0;
                v607 = 0.0;
              }
            }

            else
            {
              v633 = 0.0;
              v634 = 0.0;
              v606 = 0.0;
              v607 = 0.0;
            }

            if ((sub_1E3D10EC8() & 1) == 0 && ((v273 = v159()) != 0 || (OUTLINED_FUNCTION_45(), (v273 = (*(v274 + 992))()) != 0)))
            {
              v246 = MEMORY[0x1E69E7D40];

              sub_1E3D117AC();
              OUTLINED_FUNCTION_33_53();
              v583 = (*(v275 + 112))();

              OUTLINED_FUNCTION_88_0();
              v277 = *(v276 + 112);
              v279 = v278;
              v280 = v277();

              v281 = (*((*v246 & *v3) + 0x3B0))();
              v582 = v122 + -10.0 - v280;
              if (v281)
              {
              }

              v581 = v23;
              v272 = v653;
            }

            else
            {
              v246 = MEMORY[0x1E69E7D40];
              OUTLINED_FUNCTION_45();
              v269 = (*(v268 + 1384))();
              v583 = 0.0;
              if (v269)
              {
                v270 = v269;
                [objc_opt_self() topInset];
                [v270 topMarginWithBaselineMargin_];
              }

              v272 = 0.0;
              v581 = 0.0;
              v582 = 0.0;
            }

            v580 = v272;
            VUIRoundValue();
            v283 = v282;
            OUTLINED_FUNCTION_32();
            v285 = (*(v284 + 824))();
            v286 = 0.0;
            v287 = 0.0;
            v288 = 0.0;
            v289 = 0.0;
            v290 = v283;
            v291 = 0.0;
            if (v285)
            {
              v292 = v285;
              OUTLINED_FUNCTION_96_15(v285, sel_sizeThatFits_);
              v288 = v293;
              v287 = v294;
              v674.origin.x = OUTLINED_FUNCTION_1_36();
              v674.size.width = v288;
              v674.size.height = v287;
              CGRectGetHeight(v674);
              [v292 bottomMarginWithBaselineMargin_];
              VUIRoundValue();
              v289 = v295;
              if (v639)
              {

                v291 = v653;
              }

              else
              {
                OUTLINED_FUNCTION_55_1(v655 - v288);
                VUIRoundValue();

                v291 = OUTLINED_FUNCTION_106_14();
              }

              v290 = v289;
            }

            v612 = v291;
            v579 = v289;
            OUTLINED_FUNCTION_32();
            v296 += 130;
            v226 = *v296;
            v297 = (*v296)();
            v628 = v287;
            v614 = v288;
            if (v297)
            {
              v298 = v297;
              OUTLINED_FUNCTION_96_15(v297, sel_sizeThatFits_);
              v300 = v299;
              v286 = v301;
              v302 = *(v3 + OBJC_IVAR____TtC8VideosUI23CanonicalBannerViewCell_tagsComputationLabel);
              if (v302)
              {
                [v302 bottomMarginWithBaselineMargin_];
              }

              OUTLINED_FUNCTION_1_36();
              OUTLINED_FUNCTION_99_10();
              CGRectGetHeight(v675);
              VUIRoundValue();
              v304 = v303;
              if (v639)
              {

                v305 = v653;
              }

              else
              {
                OUTLINED_FUNCTION_55_1(v655 - v300);
                VUIRoundValue();
                v307 = v306;

                v305 = v653 + v307;
              }

              v290 = v304;
            }

            else
            {
              v300 = 0.0;
              v304 = 0.0;
              v305 = 0.0;
            }

            v615 = v304;
            if (v102)
            {
              OUTLINED_FUNCTION_77_16();
              if (v308())
              {
                OUTLINED_FUNCTION_30();
                (*(v309 + 1936))();
                OUTLINED_FUNCTION_11_5();

                OUTLINED_FUNCTION_13();
                (*(v310 + 2288))();
              }

              v602 = 0.0;
              v660.width = OUTLINED_FUNCTION_114_7();
              v715.size.width = v655;
              v715.size.height = v631;
              AVMakeRectWithAspectRatioInsideRect(v660, v715);
              v316 = (*&v226)();
              if (v316)
              {

                v317 = *(v3 + OBJC_IVAR____TtC8VideosUI23CanonicalBannerViewCell_tagsComputationLabel);
                if (v317)
                {
                  [v317 topMarginWithBaselineMargin_];
                }
              }

              VUIRoundValue();
              v290 = v318;
              v677.origin.x = OUTLINED_FUNCTION_23_68();
              Width = j__CGRectGetWidth(v677);
              OUTLINED_FUNCTION_48_34(Width);
              VUIRoundValue();
              v598 = v653 + v320;
              v678.origin.x = OUTLINED_FUNCTION_23_68();
              v601 = v290 + v631 - j__CGRectGetHeight(v678);
              v679.origin.x = OUTLINED_FUNCTION_23_68();
              v600 = j__CGRectGetWidth(v679);
              v680.origin.x = OUTLINED_FUNCTION_23_68();
              Height = j__CGRectGetHeight(v680);
              v599 = 0.0;
            }

            else
            {
              OUTLINED_FUNCTION_32();
              v312 = (*(v311 + 728))();
              if (v312)
              {
                v313 = v312;
                OUTLINED_FUNCTION_96_15(v312, sel_sizeThatFits_);
                v676.origin.x = OUTLINED_FUNCTION_7_158();
                v637 = v676.size.width;
                v638 = v676.size.height;
                CGRectGetHeight(v676);
                v314 = (*&v226)();
                if (v314)
                {

                  v315 = *(v3 + OBJC_IVAR____TtC8VideosUI23CanonicalBannerViewCell_tagsComputationLabel);
                  if (v315)
                  {
                    [v315 topMarginToLabel:v313 withBaselineMargin:22.0];
                  }
                }

                else
                {
                  [v313 bottomMarginWithBaselineMargin_];
                }

                VUIRoundValue();
                v323 = v322;
                v602 = v322;
                if (v639)
                {

                  OUTLINED_FUNCTION_119_7();
                  v599 = v653;
                  v321 = 0.0;
                }

                else
                {
                  v681.origin.x = OUTLINED_FUNCTION_1_36();
                  v681.size.width = v637;
                  v681.size.height = v638;
                  v324 = CGRectGetWidth(v681);
                  OUTLINED_FUNCTION_48_34(v324);
                  VUIRoundValue();

                  v599 = OUTLINED_FUNCTION_106_14();
                  v321 = OUTLINED_FUNCTION_119_7();
                }

                v600 = v321;
                v601 = v321;
                v290 = v323;
              }

              else
              {
                v321 = 0.0;
                v601 = 0.0;
                v602 = 0.0;
                v599 = 0.0;
                v600 = 0.0;
                Height = 0.0;
              }

              v598 = v321;
            }

            OUTLINED_FUNCTION_32();
            v326 = (*(v325 + 800))();
            v626 = 0.0;
            if (v326)
            {
              v327 = v326;
              OUTLINED_FUNCTION_96_15(v326, sel_sizeThatFits_);
              v682.origin.x = OUTLINED_FUNCTION_7_158();
              v632 = v682.size.width;
              v595 = v682.size.height;
              CGRectGetHeight(v682);
              if (v102 || (OUTLINED_FUNCTION_32(), (v329 = (*(v328 + 728))()) == 0))
              {
                [v327 bottomMarginWithBaselineMargin_];
              }

              else
              {
                v330 = v329;
                v226 = COERCE_DOUBLE(v327);
                v331 = OUTLINED_FUNCTION_116_8();
                [v331 v332];
              }

              VUIRoundValue();
              v290 = v333;
              v594 = v333;
              if (v639)
              {

                v593 = v653;
              }

              else
              {
                OUTLINED_FUNCTION_55_1(v655 - v632);
                VUIRoundValue();

                v593 = OUTLINED_FUNCTION_106_14();
              }
            }

            else
            {
              v632 = 0.0;
              v594 = 0.0;
              v595 = 0.0;
              v593 = 0.0;
            }

            OUTLINED_FUNCTION_90_13();
            v335 = v334();
            if (v335)
            {
              v336 = v335;
              OUTLINED_FUNCTION_96_15(v335, sel_sizeThatFits_);
              v683.origin.x = OUTLINED_FUNCTION_7_158();
              v617 = v683.size.width;
              v626 = v683.size.height;
              v337.n128_f64[0] = CGRectGetHeight(v683);
              v338 = (*((*v246 & *v3) + 0x2D8))(v337);
              if (v338)
              {
                v339 = v338;
                v226 = COERCE_DOUBLE(v336);
                v340 = OUTLINED_FUNCTION_116_8();
                [v340 v341];
              }

              else
              {
                [v336 bottomMarginWithBaselineMargin_];
              }

              VUIRoundValue();
              v290 = v342;
              v588 = v342;
              if (v639)
              {

                v587 = v653;
              }

              else
              {
                OUTLINED_FUNCTION_55_1(v655 - v617);
                VUIRoundValue();

                v587 = OUTLINED_FUNCTION_106_14();
              }
            }

            else
            {
              v617 = 0.0;
              v587 = 0.0;
              v588 = 0.0;
            }

            v343 = 0.0;
            if (v20)
            {
              v344 = 0.0;
              v345 = v635;
              v346 = 0.0;
              x = 0.0;
              v592 = 0.0;
            }

            else
            {
              OUTLINED_FUNCTION_77_16();
              if (v347())
              {
                OUTLINED_FUNCTION_30();
                (*(v348 + 2440))();
                OUTLINED_FUNCTION_122();

                *&v350 = COERCE_DOUBLE((*(**&v226 + 1696))(v349));
                v352 = v351;
                v354 = v353;

                v344 = 0.0;
                if ((v354 & 1) == 0)
                {
                  v343 = *&v350;
                  v344 = v352;
                }
              }

              else
              {
                v344 = 0.0;
              }

              OUTLINED_FUNCTION_32();
              v356 = (*(v355 + 728))();
              if (v356)
              {
                v357 = v356;
                [v356 topMarginWithBaselineMargin_];
              }

              v592 = 0.0;
              OUTLINED_FUNCTION_62_26();
              CGRectGetHeight(v684);
              VUIRoundValue();
              v290 = v358;
              OUTLINED_FUNCTION_1_36();
              OUTLINED_FUNCTION_62_26();
              v359 = CGRectGetWidth(v685);
              x = v653 + OUTLINED_FUNCTION_48_34(v359);
              v345 = v635;
              v346 = v290;
            }

            v590 = 0.0;
            v591 = 0.0;
            v589 = 0.0;
            v603 = 0.0;
            v605 = 0.0;
            v596 = 0.0;
            v597 = 0.0;
LABEL_276:
            *(v652 + 24) = -v290;
            if ((v650 & 1) == 0)
            {
              v651 = v346;
              OUTLINED_FUNCTION_77_16();
              v577 = v343;
              v624 = v344;
              if (v432())
              {
                OUTLINED_FUNCTION_30();
                (*(v433 + 2440))();
                OUTLINED_FUNCTION_122();

                v435 = (v625)(v434);
                if (v435)
                {
                  v436 = v435;
                  objc_opt_self();
                  v437 = swift_dynamicCastObjCClass();
                  if (v437)
                  {
                    v438 = v437;
                    v640 = v345;
                    v619 = v305;
                    v439 = v300;
                    v440 = v286;
                    v441 = v20;
                    v442 = *(**&v226 + 552);

                    v442(v657, v443);
                    v444 = *v657;
                    v445 = *&v657[1];
                    v446 = *&v657[2];
                    v447 = *&v657[3];

                    if ((v658 & 1) == 0)
                    {
                      [v438 setCornerRadius_];
                    }

                    v20 = v441;
                    v246 = MEMORY[0x1E69E7D40];
                    v286 = v440;
                    v300 = v439;
                    v305 = v619;
                    v345 = v640;
                  }

                  else
                  {
                  }
                }

                else
                {
                }
              }

              v448 = [v3 vuiIsRTL];
              v449 = v625();
              v450 = v449;
              if (v448)
              {
                if (v449)
                {
                  OUTLINED_FUNCTION_62_26();
                  OUTLINED_FUNCTION_76_17();
                  v451 = OUTLINED_FUNCTION_35_47();
                  [v451 v452];
                }

                OUTLINED_FUNCTION_90_13();
                if (v453())
                {
                  OUTLINED_FUNCTION_14_119();
                  OUTLINED_FUNCTION_76_17();
                  v454 = OUTLINED_FUNCTION_35_47();
                  [v454 v455];
                }

                OUTLINED_FUNCTION_91_11();
                if (v456())
                {
                  OUTLINED_FUNCTION_14_119();
                  OUTLINED_FUNCTION_76_17();
                  v457 = OUTLINED_FUNCTION_35_47();
                  [v457 v458];
                }

                OUTLINED_FUNCTION_32();
                if ((*(v459 + 728))())
                {
                  OUTLINED_FUNCTION_14_119();
                  OUTLINED_FUNCTION_76_17();
                  v460 = OUTLINED_FUNCTION_35_47();
                  [v460 v461];
                }

                OUTLINED_FUNCTION_32();
                if ((*(v462 + 704))())
                {
                  OUTLINED_FUNCTION_14_119();
                  OUTLINED_FUNCTION_76_17();
                  v463 = OUTLINED_FUNCTION_35_47();
                  [v463 v464];
                }

                OUTLINED_FUNCTION_32();
                if ((*(v465 + 1040))())
                {
                  OUTLINED_FUNCTION_14_119();
                  OUTLINED_FUNCTION_99_10();
                  OUTLINED_FUNCTION_76_17();
                  v466 = OUTLINED_FUNCTION_35_47();
                  [v466 v467];
                }

                OUTLINED_FUNCTION_32();
                if ((*(v468 + 968))())
                {
                  OUTLINED_FUNCTION_14_119();
                  OUTLINED_FUNCTION_76_17();
                  v469 = OUTLINED_FUNCTION_35_47();
                  [v469 v470];
                }

                OUTLINED_FUNCTION_32();
                if ((*(v471 + 992))())
                {
                  OUTLINED_FUNCTION_14_119();
                  OUTLINED_FUNCTION_76_17();
                  v472 = OUTLINED_FUNCTION_35_47();
                  [v472 v473];
                }

                OUTLINED_FUNCTION_51_34();
                v475 = v474();
                if (v475)
                {
                  v476 = v475;
                  OUTLINED_FUNCTION_50_37();
                  OUTLINED_FUNCTION_76_17();
                  v477 = OUTLINED_FUNCTION_35_47();
                  [v477 v478];
                }

                v522 = sub_1E3D117AC();
                OUTLINED_FUNCTION_34_56();
                v523 = OUTLINED_FUNCTION_35_47();
                [v523 v524];

                OUTLINED_FUNCTION_39();
                v526 = (*((*v246 & v525) + 0x320))();
                if (v526)
                {
                  v527 = v526;
                  OUTLINED_FUNCTION_34_56();
                  v528 = OUTLINED_FUNCTION_35_47();
                  [v528 v529];
                }

                v479 = v615;
                OUTLINED_FUNCTION_32();
                v531 = (*(v530 + 824))();
                if (v531)
                {
                  v532 = v531;
                  OUTLINED_FUNCTION_34_56();
                  v533 = OUTLINED_FUNCTION_35_47();
                  [v533 v534];
                }

                OUTLINED_FUNCTION_11_116();
                v536 = v535();
                if (v536)
                {
                  v537 = v536;
                  OUTLINED_FUNCTION_34_56();
                  v538 = OUTLINED_FUNCTION_35_47();
                  [v538 v539];
                }

                v521 = sub_1E3D113BC();
                OUTLINED_FUNCTION_34_56();
                v345 = v540;
                v484 = v541;
                v483 = v542;
                v485 = v543;
              }

              else
              {
                v479 = v615;
                if (v449)
                {
                  v480 = OUTLINED_FUNCTION_35_47();
                  [v480 v481];
                }

                OUTLINED_FUNCTION_32();
                v483 = v620;
                v484 = v648;
                v485 = v584;
                if ((*(v482 + 728))())
                {
                  OUTLINED_FUNCTION_42_53();
                  [v486 v487];
                }

                OUTLINED_FUNCTION_32();
                if ((*(v488 + 704))())
                {
                  OUTLINED_FUNCTION_42_53();
                  [v489 v490];
                }

                OUTLINED_FUNCTION_32();
                if ((*(v491 + 1040))())
                {
                  OUTLINED_FUNCTION_42_53();
                  [v492 v493];
                }

                OUTLINED_FUNCTION_32();
                if ((*(v494 + 968))())
                {
                  OUTLINED_FUNCTION_42_53();
                  [v495 v496];
                }

                OUTLINED_FUNCTION_32();
                if ((*(v497 + 992))())
                {
                  OUTLINED_FUNCTION_42_53();
                  [v498 v499];
                }

                OUTLINED_FUNCTION_51_34();
                if (v500())
                {
                  OUTLINED_FUNCTION_42_53();
                  v501 = OUTLINED_FUNCTION_50_37();
                  [v502 v503];
                }

                sub_1E3D117AC();
                OUTLINED_FUNCTION_42_53();
                [v504 v505];

                OUTLINED_FUNCTION_90_13();
                if (v506())
                {
                  OUTLINED_FUNCTION_42_53();
                  [v507 v508];
                }

                OUTLINED_FUNCTION_91_11();
                if (v509())
                {
                  OUTLINED_FUNCTION_42_53();
                  [v510 v511];
                }

                OUTLINED_FUNCTION_32();
                if ((*(v512 + 800))())
                {
                  OUTLINED_FUNCTION_42_53();
                  [v513 v514];
                }

                OUTLINED_FUNCTION_32();
                if ((*(v515 + 824))())
                {
                  OUTLINED_FUNCTION_42_53();
                  [v516 v517];
                }

                OUTLINED_FUNCTION_11_116();
                if (v518())
                {
                  OUTLINED_FUNCTION_42_53();
                  [v519 v520];
                }

                v521 = sub_1E3D113BC();
              }

              v544 = OUTLINED_FUNCTION_35_47();
              [v544 v545];

              sub_1E3D185CC();
              if ((UIAccessibilityIsReduceTransparencyEnabled() & v20) == 1)
              {
                __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF37A10);
                v546 = swift_initStackObject();
                *(v546 + 64) = v599;
                *(v546 + 72) = v602;
                *(v546 + 80) = v637;
                *(v546 + 88) = v638;
                *(v546 + 96) = v598;
                *(v546 + 104) = v601;
                *(v546 + 112) = v600;
                *(v546 + 120) = Height;
                *(v546 + 16) = xmmword_1E42CC480;
                *(v546 + 32) = x;
                *(v546 + 40) = v651;
                *(v546 + 48) = v577;
                *(v546 + 56) = v624;
                *(v546 + 128) = v305;
                *(v546 + 136) = v479;
                *(v546 + 144) = v300;
                *(v546 + 152) = v286;
                *(v546 + 160) = v606;
                *(v546 + 168) = v607;
                *(v546 + 176) = v634;
                *(v546 + 184) = v633;
                *(v546 + 192) = v596;
                *(v546 + 200) = v597;
                *(v546 + 208) = v605;
                *(v546 + 216) = v603;
                *(v546 + 224) = v622;
                *(v546 + 232) = v630;
                *(v546 + 240) = v643;
                *(v546 + 248) = v641;
                *(v546 + 256) = v587;
                *(v546 + 264) = v588;
                *(v546 + 272) = v617;
                *(v546 + 280) = v626;
                *(v546 + 288) = v589;
                *(v546 + 296) = v590;
                *(v546 + 304) = v591;
                *(v546 + 312) = v592;
                *(v546 + 320) = v593;
                *(v546 + 328) = v594;
                *(v546 + 336) = v632;
                *(v546 + 344) = v595;
                *(v546 + 352) = v635;
                *(v546 + 360) = v610;
                *(v546 + 368) = v608;
                *(v546 + 376) = v609;
                OUTLINED_FUNCTION_19();
                OUTLINED_FUNCTION_21_77();
                if (!CGRectEqualToRect(v692, v716))
                {
                  OUTLINED_FUNCTION_21_77();
                  MinY = CGRectGetMinY(v693);
                  v548 = v656;
                  if (MinY <= v656)
                  {
                    v548 = MinY;
                  }

                  v656 = v548;
                }

                OUTLINED_FUNCTION_19();
                v694.origin.x = OUTLINED_FUNCTION_6();
                if (!CGRectEqualToRect(v694, v717))
                {
                  v695.origin.x = OUTLINED_FUNCTION_6();
                  v549 = CGRectGetMinY(v695);
                  OUTLINED_FUNCTION_4_172(v549);
                }

                OUTLINED_FUNCTION_19();
                v696.origin.x = OUTLINED_FUNCTION_6();
                if (!CGRectEqualToRect(v696, v718))
                {
                  v697.origin.x = OUTLINED_FUNCTION_6();
                  v550 = CGRectGetMinY(v697);
                  OUTLINED_FUNCTION_4_172(v550);
                }

                OUTLINED_FUNCTION_19();
                v698.origin.x = OUTLINED_FUNCTION_6();
                if (!CGRectEqualToRect(v698, v719))
                {
                  v699.origin.x = OUTLINED_FUNCTION_6();
                  v551 = CGRectGetMinY(v699);
                  OUTLINED_FUNCTION_4_172(v551);
                }

                OUTLINED_FUNCTION_19();
                v700.origin.x = OUTLINED_FUNCTION_6();
                if (!CGRectEqualToRect(v700, v720))
                {
                  v701.origin.x = OUTLINED_FUNCTION_6();
                  v552 = CGRectGetMinY(v701);
                  OUTLINED_FUNCTION_4_172(v552);
                }

                OUTLINED_FUNCTION_19();
                v702.origin.x = OUTLINED_FUNCTION_6();
                if (!CGRectEqualToRect(v702, v721))
                {
                  v703.origin.x = OUTLINED_FUNCTION_6();
                  v553 = CGRectGetMinY(v703);
                  OUTLINED_FUNCTION_4_172(v553);
                }

                OUTLINED_FUNCTION_19();
                v704.origin.x = OUTLINED_FUNCTION_6();
                if (!CGRectEqualToRect(v704, v722))
                {
                  v705.origin.x = OUTLINED_FUNCTION_6();
                  v554 = CGRectGetMinY(v705);
                  OUTLINED_FUNCTION_4_172(v554);
                }

                OUTLINED_FUNCTION_19();
                v706.origin.x = OUTLINED_FUNCTION_6();
                if (!CGRectEqualToRect(v706, v723))
                {
                  v707.origin.x = OUTLINED_FUNCTION_6();
                  v555 = CGRectGetMinY(v707);
                  OUTLINED_FUNCTION_4_172(v555);
                }

                OUTLINED_FUNCTION_19();
                v708.origin.x = OUTLINED_FUNCTION_6();
                if (!CGRectEqualToRect(v708, v724))
                {
                  v709.origin.x = OUTLINED_FUNCTION_6();
                  v556 = CGRectGetMinY(v709);
                  OUTLINED_FUNCTION_4_172(v556);
                }

                OUTLINED_FUNCTION_19();
                v710.origin.x = OUTLINED_FUNCTION_6();
                if (!CGRectEqualToRect(v710, v725))
                {
                  v711.origin.x = OUTLINED_FUNCTION_6();
                  v557 = CGRectGetMinY(v711);
                  OUTLINED_FUNCTION_4_172(v557);
                }

                OUTLINED_FUNCTION_19();
                v712.origin.x = OUTLINED_FUNCTION_6();
                if (CGRectEqualToRect(v712, v726))
                {
                }

                else
                {
                  v713.origin.x = OUTLINED_FUNCTION_6();
                  v559 = CGRectGetMinY(v713);

                  v560 = v656;
                  if (v656 >= v559)
                  {
                    v560 = v559;
                  }

                  v656 = v560;
                }

                v561 = (v578)(v558);
                [v561 setHighestSubviewY_];
              }

              OUTLINED_FUNCTION_11_116();
              v563 = v562();
              if (v563)
              {
                v564 = v563;
                OUTLINED_FUNCTION_60_25();
                if (v191 && (v565 = [v3 superview]) != 0)
                {
                  v566 = v565;
                  v567 = [v565 traitCollection];
                }

                else
                {
                  v567 = [v3 traitCollection];
                }

                [v567 userInterfaceStyle];

                v568 = OUTLINED_FUNCTION_116_8();
                [v568 v569];
              }

              OUTLINED_FUNCTION_11_116();
              v571 = v570();
              if (v571)
              {
                v572 = v571;
                objc_opt_self();
                OUTLINED_FUNCTION_20_2();
                v573 = swift_dynamicCastObjCClass();
                if (v573)
                {
                  v574 = v573;
                  [v573 updateAlignment_];
                  v575 = 0;
                  if (v20)
                  {
                    OUTLINED_FUNCTION_60_25();
                    if (!v191)
                    {
                      v575 = 1;
                    }
                  }

                  [v574 updateBackgroundStyle_];
                }
              }

              OUTLINED_FUNCTION_32();
              (*(v576 + 1368))(1);
            }

            goto LABEL_382;
          }

          v616 = 1;
          goto LABEL_73;
        }
      }

      else
      {
      }
    }

    if (v644)
    {
      v120 = 14.0;
      *&v121 = 38.0;
      goto LABEL_65;
    }

    v616 = 0;
LABEL_73:
    OUTLINED_FUNCTION_77_16();
    if (v145() && (OUTLINED_FUNCTION_30(), *&v147 = COERCE_DOUBLE((*(v146 + 2464))()), v149 = v148, , (v149 & 1) == 0))
    {
      v585 = *&v147;
    }

    else
    {
      v585 = 0.0;
    }

    v152 = 0.0;
    if ((v650 & 1) == 0)
    {
      v152 = v656;
    }

    v153 = v110();
    v635 = 0.0;
    if (v153)
    {

      v154 = *(v3 + OBJC_IVAR____TtC8VideosUI23CanonicalBannerViewCell_tagsComputationLabel);
      if (v154)
      {
        [v154 bottomMarginWithBaselineMargin_];
      }

      else
      {
        v155 = 0.0;
      }

      v156 = &selRef_vui_disableLocalAsset;
      v169 = v152 - v155;
      v664.origin.x = OUTLINED_FUNCTION_1_36();
      v664.size.width = v643;
      v664.size.height = v641;
      v152 = v169 - CGRectGetHeight(v664);
      VUIRoundValue();
      v630 = v170;
      v622 = v653;
    }

    else
    {
      v630 = 0.0;
      v622 = 0.0;
      v156 = &selRef_vui_disableLocalAsset;
    }

    OUTLINED_FUNCTION_11_116();
    v172 = v171();
    if (v172)
    {

      v173 = v110();
      if (v173)
      {

        v665.origin.x = OUTLINED_FUNCTION_50_37();
        j__CGRectGetHeight(v665);
      }

      else
      {
        v152 = v152 - (*(v3 + OBJC_IVAR____TtC8VideosUI23CanonicalBannerViewCell_attributionViewHeight) + 36.0);
      }

      v635 = v7 - v18 - v32;
      VUIRoundValue();
      v610 = v174;
      v608 = v32;
      v609 = *(v3 + OBJC_IVAR____TtC8VideosUI23CanonicalBannerViewCell_attributionViewHeight);
    }

    else
    {
      v609 = 0.0;
      v610 = 0.0;
      v608 = 0.0;
    }

    v175 = v23 - v32 - v26;
    OUTLINED_FUNCTION_32();
    v176 += 121;
    v177 = *v176;
    v178 = (*v176)();
    if (!v178)
    {
      OUTLINED_FUNCTION_32();
      v178 = (*(v179 + 992))();
      if (!v178)
      {
        v222 = 0.0;
        v603 = 0.0;
        v605 = 0.0;
        v596 = 0.0;
        v597 = 0.0;
        v633 = 0.0;
        v634 = 0.0;
        v607 = 0.0;
        goto LABEL_127;
      }
    }

    OUTLINED_FUNCTION_32();
    v181 = (*(v180 + 992))();
    v633 = 0.0;
    v182 = 0.0;
    v183 = 0.0;
    if (v181)
    {
      v184 = v181;
      [v181 v156[132]];
      v182 = v185;
      v183 = v186;
    }

    v187 = v177();
    if (v187)
    {

      OUTLINED_FUNCTION_32();
      v189 = (*(v188 + 1384))();
      v634 = 0.0;
      if (v189)
      {
        v190 = v189;
        v191 = v183 == 0.0 && v182 == 0.0;
        v192 = v23;
        if (!v191)
        {
          v192 = v175;
        }

        v634 = v192;
        [v189 v156[132]];
        v194 = v193;
        v195 = objc_opt_self();
        [v195 topInset];
        v197 = v194 + v196;
        [v195 bottomInset];
        v199 = v198;

        v633 = ceil(v197 + v199);
      }
    }

    else
    {
      v634 = 0.0;
    }

    OUTLINED_FUNCTION_51_34();
    v201 = v200();
    if (v201)
    {

      v202 = *(v3 + OBJC_IVAR____TtC8VideosUI23CanonicalBannerViewCell_tagsComputationLabel);
      if (v202)
      {
        v203 = *((*v29 & *v3) + 0x568);
        v204 = v202;
        v205 = v203();
        v29 = MEMORY[0x1E69E7D40];
        v206 = v205;
        [v204 topMarginToLabel:v205 withBaselineMargin:32.0];
        v208 = v207;

LABEL_122:
LABEL_124:
        v212 = v152 - v208;
        v213 = 0.0;
        v666.origin.x = OUTLINED_FUNCTION_1_36();
        v666.size.height = v633;
        v666.size.width = v634;
        v214 = CGRectGetHeight(v666);
        v667.origin.x = OUTLINED_FUNCTION_1_36();
        v667.size.width = v182;
        v667.size.height = v183;
        v215 = v212 - fmax(v214, CGRectGetHeight(v667));
        [objc_opt_self() topInset];
        VUIRoundValue();
        v607 = v216;
        VUIRoundValue();
        v597 = v217;
        OUTLINED_FUNCTION_39();
        v219 = (*((*v29 & v218) + 0x568))();
        if (v219)
        {
          v220 = v219;
          [v219 topMarginWithBaselineMargin_];
          v213 = v221;
        }

        v603 = v183;
        v605 = v182;
        v596 = v7 - v18 - v647;
        v152 = v215 - v213;
        v222 = v653;
LABEL_127:
        v606 = v222;
        VUIRoundValue();
        v224 = v223;
        OUTLINED_FUNCTION_32();
        v225 += 130;
        v226 = *v225;
        v227 = (*v225)();
        if (v227)
        {
          v228 = v227;
          v229 = 0.0;
          OUTLINED_FUNCTION_126_5(v227, sel_vui_sizeThatFits_);
          v623 = v230;
          v636 = v231;
          v232 = *(v3 + OBJC_IVAR____TtC8VideosUI23CanonicalBannerViewCell_tagsComputationLabel);
          if (v232)
          {
            [v232 bottomMarginWithBaselineMargin_];
            v229 = v233;
          }

          v234 = v224 - v229;
          v668.origin.x = OUTLINED_FUNCTION_1_36();
          v668.size.width = v623;
          v668.size.height = v636;
          v235 = CGRectGetHeight(v668);

          v224 = v234 - v235;
          v618 = v653;
          v615 = v234 - v235;
        }

        else
        {
          v636 = 0.0;
          v623 = 0.0;
          v615 = 0.0;
          v618 = 0.0;
        }

        v621 = v18;
        v613 = v152;
        if (v102)
        {
          OUTLINED_FUNCTION_77_16();
          v611 = v175;
          if (v236())
          {
            OUTLINED_FUNCTION_30();
            (*(v237 + 1936))();
            OUTLINED_FUNCTION_11_5();

            OUTLINED_FUNCTION_13();
            (*(v238 + 2288))();
          }

          v259 = 0.0;
          v659.width = OUTLINED_FUNCTION_114_7();
          v714.size.width = v611;
          v714.size.height = v631;
          AVMakeRectWithAspectRatioInsideRect(v659, v714);
          v260 = v224 - v631;
          v261 = (*&v226)();
          if (v261)
          {

            v262 = *(v3 + OBJC_IVAR____TtC8VideosUI23CanonicalBannerViewCell_tagsComputationLabel);
            v246 = MEMORY[0x1E69E7D40];
            if (v262)
            {
              [v262 topMarginWithBaselineMargin_];
              v259 = v263;
            }

            v224 = v260 - v259;
          }

          else
          {
            v224 = v260 + -16.0;
            v246 = MEMORY[0x1E69E7D40];
          }

          v670.origin.x = OUTLINED_FUNCTION_53_35();
          v601 = v224 + v631 - j__CGRectGetHeight(v670);
          v671.origin.x = OUTLINED_FUNCTION_53_35();
          v600 = j__CGRectGetWidth(v671);
          v672.origin.x = OUTLINED_FUNCTION_53_35();
          Height = j__CGRectGetHeight(v672);
          v264 = 0.0;
          v599 = 0.0;
          v598 = v653;
          v175 = v611;
          goto LABEL_232;
        }

        OUTLINED_FUNCTION_45();
        v240 = (*(v239 + 728))();
        if (v240)
        {
          v241 = v240;
          OUTLINED_FUNCTION_126_5(v240, sel_sizeThatFits_);
          v669.origin.x = OUTLINED_FUNCTION_7_158();
          v638 = v669.size.height;
          v242 = v224 - CGRectGetHeight(v669);
          v243 = (*&v226)();
          if (v243)
          {

            OUTLINED_FUNCTION_91_11();
            v245 = v244();
            v246 = MEMORY[0x1E69E7D40];
            if (v245)
            {
              v247 = v245;
              v226 = COERCE_DOUBLE([v245 isHidden]);

              if (LODWORD(v226))
              {
                v248 = 30.0;
              }

              else
              {
                v248 = 24.0;
              }
            }

            else
            {
              v248 = 30.0;
            }

            OUTLINED_FUNCTION_90_13();
            v361 = v360();
            if (v361)
            {

              v248 = 24.0;
            }

            OUTLINED_FUNCTION_119_7();
            v363 = 0.0;
            if (v362)
            {
              v364 = v362;
              [v364 topMarginToLabel:v241 withBaselineMargin:v248];
              v363 = v365;
            }

            v264 = v242 - v363;
            OUTLINED_FUNCTION_68_22();
LABEL_232:
            OUTLINED_FUNCTION_91_11();
            v367 = v366();
            v632 = 0.0;
            if (v367)
            {
              v368 = v367;
              if (([v367 isHidden] & 1) == 0)
              {
                [v368 sizeThatFits_];
                v686.origin.x = OUTLINED_FUNCTION_7_158();
                v592 = v686.size.height;
                v369 = v224 - CGRectGetHeight(v686);
                v370 = (*((*v246 & *v3) + 0x2D8))();
                if (v370)
                {
                  v371 = v370;
                  v372 = v368;
                  v373 = OUTLINED_FUNCTION_121();
                  [v373 v374];
                  v376 = v375;
                }

                else
                {
                  [v368 bottomMarginWithBaselineMargin_];
                  v376 = v377;
                }

                v224 = v369 - v376;
                v590 = v369 - v376;
                v591 = v175;
                v589 = v653;
LABEL_240:
                OUTLINED_FUNCTION_32();
                v379 = (*(v378 + 800))();
                if (v379)
                {
                  v380 = v379;
                  OUTLINED_FUNCTION_126_5(v379, sel_sizeThatFits_);
                  v687.origin.x = OUTLINED_FUNCTION_7_158();
                  v632 = v687.size.width;
                  v595 = v687.size.height;
                  v381 = v224 - CGRectGetHeight(v687);
                  if (v102 || (OUTLINED_FUNCTION_32(), (v383 = (*(v382 + 728))()) == 0))
                  {
                    [v380 bottomMarginWithBaselineMargin_];
                    v389 = v390;
                  }

                  else
                  {
                    v384 = v383;
                    v385 = v380;
                    v386 = OUTLINED_FUNCTION_121();
                    [v386 v387];
                    v389 = v388;

                    v380 = v384;
                  }

                  v224 = v381 - v389;
                  v593 = v653;
                  v594 = v381 - v389;
                }

                else
                {
                  v594 = 0.0;
                  v595 = 0.0;
                  v593 = 0.0;
                }

                OUTLINED_FUNCTION_90_13();
                v392 = v391();
                v602 = v264;
                if (!v392)
                {
                  v626 = 0.0;
                  v617 = 0.0;
                  v403 = 0.0;
                  v587 = 0.0;
                  goto LABEL_261;
                }

                v393 = v392;
                OUTLINED_FUNCTION_126_5(v392, sel_sizeThatFits_);
                v395 = v394;
                v688.origin.x = OUTLINED_FUNCTION_1_36();
                v688.size.width = v395;
                v626 = v688.size.height;
                v396 = v224 - CGRectGetHeight(v688);
                OUTLINED_FUNCTION_91_11();
                v398 = v397();
                if (v398)
                {
                  v399 = v398;
                  if (([v398 isHidden] & 1) == 0)
                  {
                    v226 = COERCE_DOUBLE(v393);
                    v402 = 24.0;
                    goto LABEL_255;
                  }
                }

                OUTLINED_FUNCTION_32();
                v401 = (*(v400 + 728))();
                if (!v401)
                {
                  [v393 bottomMarginWithBaselineMargin_];
                  v405 = v406;
                  goto LABEL_257;
                }

                v399 = v401;
                v226 = COERCE_DOUBLE(v393);
                v402 = 28.0;
LABEL_255:
                sub_1E3C8B6B4(v393, v402);
                v405 = v404;

LABEL_257:
                v403 = v396 - v405;
                if (v616)
                {
                  v407 = v395;
                }

                else
                {
                  v407 = v175;
                }

                v617 = v407;
                v587 = v653;
                v224 = v396 - v405;
LABEL_261:
                v408 = v177();
                if (v408 || (OUTLINED_FUNCTION_32(), (v408 = (*(v409 + 992))()) != 0))
                {

                  sub_1E3D117AC();
                  OUTLINED_FUNCTION_33_53();
                  v583 = (*(v410 + 112))();

                  v411 = v613;
                  v581 = v655;
                  v582 = v613;
                  v580 = v653;
                }

                else
                {
                  v582 = 0.0;
                  v583 = 0.0;
                  v580 = 0.0;
                  v581 = 0.0;
                  v411 = v613;
                }

                v588 = v403;
                VUIRoundValue();
                v413 = v412 + -16.0 - v627;
                v414 = v7 - v621 - v647;
                v415 = fmax(vabdd_f64(v413, v411), vabdd_f64(v224, v411));
                OUTLINED_FUNCTION_32();
                v417 = (*(v416 + 824))();
                v418 = 0.0;
                v620 = 0.0;
                v628 = 0.0;
                v612 = 0.0;
                v614 = 0.0;
                if (v417)
                {
                  v419 = v417;
                  [v417 sizeThatFits_];
                  v689.origin.x = OUTLINED_FUNCTION_7_158();
                  v614 = v689.size.width;
                  v628 = v689.size.height;
                  v420 = v413 - CGRectGetHeight(v689);
                  [v419 bottomMarginWithBaselineMargin_];
                  v422 = v421;

                  v418 = v420 - v422;
                  v612 = v414;
                }

                v579 = v418;
                v290 = v411 - v415;
                if (v20)
                {
                  v584 = 0.0;
                  v345 = 0.0;
                  v648 = 0.0;
                  v343 = 0.0;
                  v344 = 0.0;
                  v346 = 0.0;
                  x = 0.0;
                  v286 = v636;
                  v300 = v623;
                  v305 = v618;
                }

                else
                {
                  OUTLINED_FUNCTION_77_16();
                  v620 = 0.0;
                  v424 = 0.0;
                  v344 = 0.0;
                  if (v423())
                  {
                    OUTLINED_FUNCTION_30();
                    (*(v425 + 2440))();
                    OUTLINED_FUNCTION_11_5();

                    OUTLINED_FUNCTION_13();
                    v427 = COERCE_DOUBLE((*(v426 + 1696))());
                    v226 = v428;
                    v430 = v429;

                    if (v430)
                    {
                      v424 = 0.0;
                    }

                    else
                    {
                      v424 = v427;
                    }

                    if (v430)
                    {
                      v344 = 0.0;
                    }

                    else
                    {
                      v344 = v226;
                    }
                  }

                  v690.origin.x = OUTLINED_FUNCTION_1_36();
                  v690.size.width = v424;
                  v690.size.height = v344;
                  v691.origin.x = v653 + (v655 - CGRectGetWidth(v690)) * 0.5;
                  v691.origin.y = 0.0;
                  x = v691.origin.x;
                  v691.size.width = v424;
                  v691.size.height = v344;
                  j__CGRectGetHeight(v691);
                  v343 = v424;
                  VUIRoundValue();
                  v346 = v431;
                  v290 = v290 + -40.0 - v585 + -24.0;
                  v584 = 0.0;
                  v345 = 0.0;
                  v648 = 0.0;
                  v286 = v636;
                  v305 = v618;
                  v300 = v623;
                }

                goto LABEL_276;
              }
            }

            v591 = 0.0;
            v592 = 0.0;
            v589 = 0.0;
            v590 = 0.0;
            goto LABEL_240;
          }

          OUTLINED_FUNCTION_119_7();
          [v241 bottomMarginWithBaselineMargin_];
          v266 = v265;

          v264 = v242 - v266;
          OUTLINED_FUNCTION_68_22();
        }

        else
        {
          v264 = 0.0;
          v599 = 0.0;
          v600 = 0.0;
          Height = 0.0;
          v601 = 0.0;
          v598 = 0.0;
        }

        v246 = MEMORY[0x1E69E7D40];
        goto LABEL_232;
      }
    }

    else
    {
      OUTLINED_FUNCTION_32();
      v210 = (*(v209 + 1384))();
      if (v210)
      {
        v206 = v210;
        [v210 bottomMarginWithBaselineMargin_];
        v208 = v211;
        goto LABEL_122;
      }
    }

    v208 = 0.0;
    goto LABEL_124;
  }

LABEL_383:
  OUTLINED_FUNCTION_42();
}

uint64_t sub_1E3D17AF4()
{
  v7.receiver = v0;
  v7.super_class = type metadata accessor for CanonicalBannerViewCell();
  objc_msgSendSuper2(&v7, sel_vui_cellWillBeDisplayed);
  v1 = *sub_1E3285D14();
  v2 = MEMORY[0x1E69E7D40];
  v3 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x598);
  v4 = v1;
  v3();
  OUTLINED_FUNCTION_36_3();
  (*((*v2 & v5) + 0x118))();
}

uint64_t sub_1E3D17C34(char a1, id a2, char a3, char a4)
{
  if (![a2 isAXEnabled] || (a4 & 1) != 0)
  {
    if (a1 != 3)
    {
      sub_1E39ABD54();
      a3 &= sub_1E4205E84() ^ 1;
    }
  }

  else
  {
    a3 = 0;
  }

  return a3 & 1;
}

void sub_1E3D18400()
{
  v1 = v0;
  sub_1E41FDF14();
  if (v14)
  {
    sub_1E3280A90(0, &qword_1EE23AD50);
    if (swift_dynamicCast())
    {
      v2 = *(v0 + OBJC_IVAR____TtC8VideosUI23CanonicalBannerViewCell_transitionBackgroundView);
      if (v2)
      {
        v3 = v2;
        v4 = [v12 traitCollection];
        [v4 userInterfaceStyle];

        v5 = OUTLINED_FUNCTION_116_8();
        [v5 v6];
      }

      v7 = (*((*MEMORY[0x1E69E7D40] & *v1) + 0x5F8))();
      if (v7)
      {
        v8 = v7;
        if (*(v1 + OBJC_IVAR____TtC8VideosUI23CanonicalBannerViewCell_showAttributionViewBelowBanner) == 1)
        {
          v9 = v12;
        }

        else
        {
          v9 = v1;
        }

        v10 = [v9 traitCollection];
        v11 = [v10 userInterfaceStyle];

        [v8 setOverrideUserInterfaceStyle_];
      }
    }
  }

  else
  {
    sub_1E325F748(v13, &unk_1ECF296E0);
  }
}

void sub_1E3D185CC()
{
  OUTLINED_FUNCTION_41_5();
  v3 = v1;
  HIDWORD(v472) = v4;
  HIDWORD(v493) = v5;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  OUTLINED_FUNCTION_21();
  v12 += 79;
  v13 = *v12;
  v14 = 0.0;
  v15 = 0.0;
  if ((*v12)())
  {
    OUTLINED_FUNCTION_30();
    (*(v16 + 2248))();
    OUTLINED_FUNCTION_12_1();

    (*(*v0 + 328))(v17);
    OUTLINED_FUNCTION_145();

    v18 = OUTLINED_FUNCTION_63_23();
    if (v55)
    {
      v15 = v19;
    }

    else
    {
      v15 = v18;
    }
  }

  if (v13())
  {
    OUTLINED_FUNCTION_30();
    (*(v20 + 2248))();
    OUTLINED_FUNCTION_12_1();

    (*(*v0 + 352))(v21);
    OUTLINED_FUNCTION_145();

    v22 = OUTLINED_FUNCTION_63_23();
    if (v55)
    {
      v14 = v23;
    }

    else
    {
      v14 = v22;
    }
  }

  v24 = 0.0;
  v25 = 0.0;
  if (v13())
  {
    OUTLINED_FUNCTION_30();
    (*(v26 + 2248))();
    OUTLINED_FUNCTION_12_1();

    (*(*v0 + 304))(v27);
    OUTLINED_FUNCTION_145();

    v28 = OUTLINED_FUNCTION_63_23();
    if (v55)
    {
      v25 = v29;
    }

    else
    {
      v25 = v28;
    }
  }

  if (v13())
  {
    OUTLINED_FUNCTION_30();
    (*(v30 + 2248))();
    OUTLINED_FUNCTION_12_1();

    (*(*v0 + 200))(v31);
    OUTLINED_FUNCTION_145();

    v32 = OUTLINED_FUNCTION_63_23();
    if (v55)
    {
      v24 = v33;
    }

    else
    {
      v24 = v32;
    }
  }

  OUTLINED_FUNCTION_110_9();
  if (!(*(v34 + 608))() || (OUTLINED_FUNCTION_30(), (*(v35 + 488))(), OUTLINED_FUNCTION_12_1(), , !v0))
  {
    type metadata accessor for ViewModel();
    sub_1E37414E0();
    v0 = sub_1E4205CB4();
  }

  v36 = sub_1E373E010(91, v0);

  if (!v36 || (OUTLINED_FUNCTION_8(), (*(v37 + 464))(), OUTLINED_FUNCTION_11_5(), , !v2))
  {

    v2 = MEMORY[0x1E69E7CC0];
  }

  OUTLINED_FUNCTION_110_9();
  v38 += 109;
  v39 = *v38;
  v40 = (*v38)();
  v41 = v40;
  v515 = v2;
  if (v40)
  {
    v506 = v40 >> 62;
    if (v40 >> 62)
    {
      goto LABEL_74;
    }

    for (i = *((v40 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1E4207384())
    {
      if (i < 0)
      {
        goto LABEL_255;
      }

      v482 = v39;
      v43 = v2 & 0xC000000000000001;
      v488 = v2 + 32;
      v502 = v41 & 0xFFFFFFFFFFFFFF8;
      v44 = 4;
      while (1)
      {
        v45 = v44 - 3;
        if (__OFADD__(v44 - 4, 1))
        {
          break;
        }

        if (v43)
        {
          v46 = MEMORY[0x1E6911E60]();
        }

        else
        {
          OUTLINED_FUNCTION_108_10();
          if (v47 >= v48)
          {
            goto LABEL_71;
          }

          v46 = *(v2 + 8 * v44);
        }

        LOBYTE(v530) = 1;
        (*(*v46 + 776))(v533, &v530, &unk_1F5D5D0A8, &off_1F5D5C758);
        if (v534)
        {
          v49 = swift_dynamicCast();
          if (v49)
          {
            v39 = *&v530;
          }

          else
          {
            v39 = 0;
          }

          if (v49)
          {
            v50 = v531;
          }

          else
          {
            v50 = 0;
          }
        }

        else
        {
          sub_1E325F748(v533, &unk_1ECF296E0);
          v39 = 0;
          v50 = 0;
        }

        v41 = [v3 vuiTraitCollection];
        v51 = [v41 isAXEnabled];

        if (v51)
        {

LABEL_47:
          v2 = v515;
          goto LABEL_66;
        }

        if (!v50)
        {

          goto LABEL_47;
        }

        v2 = v515;
        if (v506)
        {
          v52 = sub_1E4207384();
        }

        else
        {
          v52 = *(v502 + 16);
        }

        if (v45 >= v52)
        {
          goto LABEL_65;
        }

        if (v43)
        {
          v41 = MEMORY[0x1E6911E60](v44 - 3, v515);
        }

        else
        {
          if (v45 < 0)
          {
            goto LABEL_72;
          }

          OUTLINED_FUNCTION_108_10();
          if (v45 >= v53)
          {
            goto LABEL_73;
          }

          v41 = *(v488 + 8 * v45);
        }

        LOBYTE(v530) = 1;
        OUTLINED_FUNCTION_8();
        (*(v54 + 776))(v533, &v530, &unk_1F5D5D0A8, &off_1F5D5C758);
        if (!v534)
        {
          sub_1E325F748(v533, &unk_1ECF296E0);
LABEL_64:

LABEL_65:

          goto LABEL_66;
        }

        if ((swift_dynamicCast() & 1) == 0)
        {
          goto LABEL_64;
        }

        v55 = *&v530 == v39 && v50 == v531;
        if (v55)
        {

          LODWORD(v502) = 0;
          v2 = v515;
          goto LABEL_68;
        }

        v39 = sub_1E42079A4();

        v2 = v515;
        if (v39)
        {
          LODWORD(v502) = 0;
LABEL_68:
          v39 = v482;
          goto LABEL_76;
        }

LABEL_66:
        ++v44;
        if (v45 == i)
        {
          LODWORD(v502) = 1;
          goto LABEL_68;
        }
      }

      __break(1u);
LABEL_71:
      __break(1u);
LABEL_72:
      __break(1u);
LABEL_73:
      __break(1u);
LABEL_74:
      ;
    }
  }

  LODWORD(v502) = 1;
LABEL_76:

  v57 = (v39)(v56);
  if (!v57)
  {
    goto LABEL_250;
  }

  v58 = v57;
  if (!sub_1E32AE9B0(v57))
  {

LABEL_250:

LABEL_251:
    OUTLINED_FUNCTION_42();
    return;
  }

  HIDWORD(v464) = 0;
  LOBYTE(v59) = 0;
  v60 = 0;
  v61 = 0;
  v62 = v58 & 0xFFFFFFFFFFFFFF8;
  v418 = v2 & 0xC000000000000001;
  v422 = v3;
  v399 = v2 & 0xFFFFFFFFFFFFFF8;
  v403 = v2 + 32;
  v468 = v58;
  v507 = v58 & 0xC000000000000001;
  v511 = v58 & 0xFFFFFFFFFFFFFF8;
  if (v58 < 0)
  {
    v62 = v58;
  }

  v291 = v62;
  HIDWORD(v327) = v502 | HIDWORD(v493);
  v395 = OUTLINED_FUNCTION_55_1(v11 - v24) + *&v9;
  v65 = -v64;
  v497 = v7;
  v426 = 0;
  v430 = 0;
  v476 = 0;
  v483 = v7;
  v434 = 0.0;
  v319 = 0;
  v323 = 0;
  *&v311 = 0.0;
  v315 = 0;
  v66 = *&v7;
  v336 = 0.0;
  v340 = 0.0;
  v407 = v63;
  v391 = -v64;
LABEL_81:
  v67 = 0;
  v68 = v60;
  v69 = v65 + v61;
  v70 = v63 + 8 * v61;
  while (1)
  {
    if (!(v69 + v67))
    {

      goto LABEL_251;
    }

    v71 = v61 + v67;
    if (v507)
    {
      v73 = MEMORY[0x1E6911E60](v61 + v67, v468);
    }

    else
    {
      OUTLINED_FUNCTION_108_10();
      if (v71 >= v72)
      {
        goto LABEL_253;
      }

      v73 = *(v70 + 8 * v67);
    }

    v74 = v73;
    v75 = v71 + 1;
    if (__OFADD__(v71, 1))
    {
      break;
    }

    v60 = v68 + v67 + 1;
    if (__OFADD__(v68 + v67, 1))
    {
      goto LABEL_254;
    }

    if ((v59 & 1) == 0)
    {
      if (v418)
      {
        v77 = MEMORY[0x1E6911E60]();
        v76 = v422;
      }

      else
      {
        v76 = v422;
        if ((v68 + v67) >= *(v399 + 16))
        {
          goto LABEL_256;
        }

        v77 = *(v403 + 8 * v68 + 8 * v67);
      }

      OUTLINED_FUNCTION_8();
      v79 = *(v78 + 776);
      v88 = OUTLINED_FUNCTION_101_10(v80, v81, v82, v83, v84, v85, v86, v87, v277, v281, v285, v291, v295, v299, v305, v311, v315, v319, v323, v327, *&v331, *&v336, *&v340, v68 + v67, v351, v356, v362, v368, v374, v380, v386, v391, *&v395, v399, v403, v407, v411, v418, v422, v426, v430, *&v434, *&v438, v444, v450, v453, *&v457, v464, v468, v472, v476, v483, v488, v493, v497, v502, v507, v511, v515, 1);
      v89 = v79(v88, &unk_1F5D5D0A8, &off_1F5D5C758);
      v97 = v469;
      if (*(&v529 + 1))
      {
        OUTLINED_FUNCTION_100_6(v89, v90, v91, v92, v93, v94, v95, v96, v278, v282, v286, v292, v296, v300, v306, v312, v316, v320, v324, v328, v332, v337, v341, v344, v352, v357, v363, v369, v375, v381, v387, v392, v396, v400, v404, v408, v412, v419, v423, v427, v431, v435, v439, v445, v451, v454, v458, v465, v469, v473, v477, v484, v489, v494, v498, v503, v508, v512, v516, v519);
        swift_dynamicCast();
        OUTLINED_FUNCTION_84_15();
        v297 = v107;
        if (v55)
        {
          v108 = 0;
        }

        else
        {
          v108 = v106;
        }

        v109 = OUTLINED_FUNCTION_101_10(v98, v99, v100, v101, v102, v103, v104, v105, v279, v283, v287, v293, v297, v301, v307, v313, v317, v321, v325, v329, v333, v338, v342, v345, v353, v358, v364, v370, v376, v382, v388, v393, v397, v401, v405, v409, v413, v420, v424, v428, v432, v436, v440, v446, v108, v455, v459, v466, v470, v474, v478, v485, v490, v495, v499, v504, v509, v513, v517, 2);
      }

      else
      {
        v110 = sub_1E325F748(&v528, &unk_1ECF296E0);
        v109 = OUTLINED_FUNCTION_101_10(v110, v111, v112, v113, v114, v115, v116, v117, v278, v282, v286, v292, 0, v300, v306, v312, v316, v320, v324, v328, v332, v337, v341, v344, v352, v357, v363, v369, v375, v381, v387, v392, v396, v400, v404, v408, v412, v419, v423, v427, v431, v435, v439, v445, 0, v454, v458, v465, v469, v473, v477, v484, v489, v494, v498, v503, v508, v512, v516, 2);
      }

      v118 = v79(v109, &unk_1F5D5D0A8, &off_1F5D5C758);
      if (*(&v529 + 1))
      {
        OUTLINED_FUNCTION_100_6(v118, v119, v120, v121, v122, v123, v124, v125, v277, v281, v285, v291, v295, v302, v308, v311, v315, v319, v323, v327, v334, *&v336, *&v340, v346, v354, v359, v365, v371, v377, v383, v389, v391, *&v395, v399, v403, v407, v414, v418, v422, v426, v430, *&v434, v441, v447, v450, v453, v460, v464, v468, v472, v479, *&v486, v491, v493, v500, v502, v507, v511, v515, v520);
        v126 = v515;
        if (swift_dynamicCast())
        {
          v59 = v521;
        }

        else
        {
          v59 = 0;
        }
      }

      else
      {
        sub_1E325F748(&v528, &unk_1ECF296E0);
        v59 = 0;
        v126 = v515;
      }

      v488 = v77;
      if (sub_1E373F6E0())
      {
        objc_opt_self();
        v127 = swift_dynamicCastObjCClass();
        if (v127)
        {
          v128 = [v127 textContentView];
          if (v128)
          {

            goto LABEL_109;
          }
        }

        LODWORD(v389) = 0;
      }

      else
      {
LABEL_109:
        LODWORD(v389) = 1;
      }

      v129 = [v76 vuiTraitCollection];
      v130 = [v129 isAXEnabled];

      v131 = v97 >> 62;
      LODWORD(v334) = v59;
      if ((v130 & 1) != 0 || !v450)
      {
        HIDWORD(v453) = 0;
        goto LABEL_118;
      }

      if (!v131)
      {
        OUTLINED_FUNCTION_108_10();
        if (v60 < v132)
        {
          goto LABEL_115;
        }

        HIDWORD(v453) = 0;
        OUTLINED_FUNCTION_87_11();
LABEL_119:
        v133 = *(v511 + 16);
LABEL_120:
        v134 = (v129 < v133) | HIDWORD(v464);
        *&v356 = v25;
        HIDWORD(v464) = v134;
        if (sub_1E373F6E0())
        {
          v135 = [v74 sizeThatFits_];
          v25 = v136;
          v137 = *(*v488 + 392);
          v138 = (v137)(v135);
          v139 = 0.0;
          v438 = 0.0;
          if (v138)
          {
            OUTLINED_FUNCTION_30();
            (*(v140 + 176))(&v530);

            v139 = v530;
            if (v532)
            {
              v139 = 0.0;
            }
          }

          v66 = v66 + v139;
          *&v500 = v66;
          if (v137())
          {
            OUTLINED_FUNCTION_30();
            (*(v141 + 176))(v533);

            v142 = *&v533[2];
            if (v535)
            {
              v142 = 0.0;
            }

            v438 = v142;
          }

          v486 = v66;
        }

        else
        {
          if (v134)
          {
            v143 = v15;
          }

          else
          {
            v143 = v14;
          }

          if ((v327 & 0x100000000) != 0)
          {
            v25 = v143;
          }

          v438 = 0.0;
        }

        v144 = objc_opt_self();
        v145 = [v76 vuiTraitCollection];
        [v144 scaleContentSizeValue:v145 forTraitCollection:v25];
        v457 = v146;

        v147 = sub_1E373F6E0();
        *&v362 = v15;
        *&v368 = v14;
        *&v444 = v24;
        v411 = v97;
        if ((v502 & 1) != 0 || HIDWORD(v453))
        {
          if ((v493 & 0x100000000) != 0)
          {
            v148 = v147;
            v149 = [v76 vuiTraitCollection];
            v150 = [v149 isAXEnabled];

            goto LABEL_141;
          }

LABEL_142:
          v148 = v147;
          v150 = 1;
          v151 = 8.0;
        }

        else
        {
          if ((v493 & 0x100000000) == 0)
          {
            goto LABEL_142;
          }

          v148 = v147;
          v150 = 1;
LABEL_141:
          v151 = 16.0;
        }

        v152 = *&v479;
        v299 = (*MEMORY[0x1E69E7D40] & *v76) + 944;
        v305 = *((*MEMORY[0x1E69E7D40] & *v76) + 0x3B0);
        v153 = v305();
        v380 = v7;
        if (v153)
        {
          v154 = v153;
          if (v334)
          {
            if (((v346 == 0) & BYTE4(v493)) != 0)
            {
              v155 = v133 > 1;
            }

            else
            {
              v155 = v346 == 0;
            }

            [v153 sizeThatFits_];
            v152 = v156;
            if (v155)
            {
              [v154 bottomMarginWithBaselineMargin_];
              v158 = v157;
              v536.origin.x = v336;
              v536.origin.y = v340;
              v536.size.width = v11;
              v536.size.height = v152;
              Height = CGRectGetHeight(v536);

              v426 = v9;
              v430 = *&v11;
              v434 = v66;
              v319 = *&v152;
              v323 = *&v11;
              *&v311 = v66;
              v315 = v9;
              v486 = v66 + v158 + Height;
              *&v500 = v486;
              *&v160 = v486;
              v336 = *&v9;
              v340 = v66;
            }

            else
            {
              [v154 topMarginWithBaselineMargin_];
              v219 = v218;
              v220 = 2.0;
              if (v60 < v133)
              {
                v220 = 24.0;
              }

              [v154 bottomMarginWithBaselineMargin_];
              v481 = v221;
              v539.origin.x = v336;
              v539.origin.y = v340;
              v539.size.width = v11;
              v539.size.height = v152;
              v222 = v151;
              v223 = v152;
              MaxY = CGRectGetMaxY(v539);

              v225 = v481 + MaxY;
              v152 = v223;
              v151 = v222;
              v426 = v9;
              v430 = *&v11;
              v319 = *&v152;
              v323 = *&v11;
              v434 = v66 + v457 + v219;
              v438 = v219 + v225;
              *&v311 = v434;
              v315 = v9;
              *&v160 = v66;
              v336 = *&v9;
              v340 = v434;
            }

LABEL_152:
            v161 = v389;
            if ((v150 | v148))
            {
              v162 = *&v9;
            }

            else
            {
              v162 = v395;
            }

            v374 = v9;
            v476 = *&v152;
            v386 = v160;
            if ((v161 | v502))
            {

              Width = *&v444;
              if ((v150 | v148))
              {
                Width = v11;
              }

              v331 = Width;
              v164 = v411;
              if (v411 && (v453 & 0x100000000) == 0 && v161)
              {
                v537.origin.x = v162;
                v537.origin.y = v486;
                v537.size.width = (v11 - v151) * 0.5;
                v537.size.height = v457;
                CGRectGetWidth(v537);
                v538.origin.x = v162;
                v538.origin.y = v486;
                v331 = (v11 - v151) * 0.5;
                v538.size.width = v331;
                v538.size.height = v457;
                Width = CGRectGetWidth(v538);
                *&v500 = v486;
              }

LABEL_198:
              v351 = *&v11;
              if ((v472 & 0x100000000) == 0)
              {
                if ([v76 vuiIsRTL])
                {
                  [v76 vuiBounds];
                  OUTLINED_FUNCTION_89_10();
                  VUIRectWithFlippedOriginRelativeToBoundingRect();
                  v231 = [v74 setFrame_];
                  if (v164)
                  {
                    OUTLINED_FUNCTION_54_30();
                    OUTLINED_FUNCTION_89_10();
                    VUIRectWithFlippedOriginRelativeToBoundingRect();
                    v231 = [v164 setFrame_];
                  }

                  v232 = (v305)(v231);
                  if (v232)
                  {
                    v233 = v232;
                    v234 = *&v311;
                    v235 = v323;
                    OUTLINED_FUNCTION_89_10();
                    VUIRectWithFlippedOriginRelativeToBoundingRect();
                    v236 = v319;
                    v237 = v315;
                    [v233 setFrame_];
                    goto LABEL_208;
                  }
                }

                else
                {
                  v242 = OUTLINED_FUNCTION_6_12();
                  v245 = [v243 v244];
                  if (v164)
                  {
                    v246 = OUTLINED_FUNCTION_54_30();
                    v245 = [v247 v248];
                  }

                  v233 = (v305)(v245);
                  v237 = v426;
                  v235 = v430;
                  v236 = v476;
                  v234 = v434;
                  if (v233)
                  {
                    [v233 setFrame_];
LABEL_208:

                    v426 = v237;
                    v430 = v235;
                    v476 = v236;
                    v434 = v234;
                  }
                }
              }

              v249 = 8.0;
              if (v438 > 0.0)
              {
                v249 = v438;
              }

              v250 = v500;
              v251 = v457 + v249 + *&v500;
              if (!HIDWORD(v453))
              {
                *&v250 = v251;
              }

              v497 = v250;
              *&v252 = v486;
              if (!HIDWORD(v453))
              {
                *&v252 = v251;
              }

              v483 = v252;
              v7 = v380;
              if (HIDWORD(v453))
              {
                v66 = *&v386;
              }

              else
              {
                v66 = v251;
              }

              v61 = v75;
              v14 = *&v368;
              v9 = v374;
              v25 = *&v356;
              v15 = *&v362;
              v24 = *&v444;
              v63 = v407;
              v65 = v391;
              goto LABEL_81;
            }

            [v74 vui:v11 sizeThatFits:0.0];
            v166 = v346 - 1;
            if (__OFSUB__(v346, 1))
            {
              goto LABEL_257;
            }

            v167 = v165;
            *&v528 = v346 - 1;
            BYTE8(v528) = 0;
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C790);
            v168 = sub_1E3827828(&qword_1EE23B540, &unk_1ECF2C790);
            v176 = OUTLINED_FUNCTION_98_12(v168, v169, v170, v171, v172, v173, v174, v175, v277, v281, v285, v291, v295, v299, v305, v311, v315, v319, v323, v327, v334, *&v336, *&v340, v346, v354, v356, v362, v368, v9, v7, v160, v391, *&v395, v399, v403, v407, v411, v418, v422, v426, v430, *&v434, *&v438, v444, v450, v453, *&v457, v464, v468, v472, *&v152, *&v486, v488, v493, v500, v502, v507, v511, v515, v515, v524, v526, v528);
            sub_1E38D2054(v176, v177);
            v178 = v527;
            v284 = *&v162;
            if (v527)
            {
              v179 = *(*v527 + 776);

              v188 = OUTLINED_FUNCTION_101_10(v180, v181, v182, v183, v184, v185, v186, v187, v280, *&v162, v288, v294, v298, v303, v309, v314, v318, v322, v326, v330, v335, v339, v343, v347, v355, v360, v366, v372, v378, v384, v390, v394, v398, v402, v406, v410, v415, v421, v425, v429, v433, v437, v442, v448, v452, v456, v461, v467, v471, v475, v480, v487, v492, v496, v501, v505, v510, v514, v518, 1);
              v179(v188, &unk_1F5D5D0A8, &off_1F5D5C758);

              if (*(&v529 + 1))
              {
                OUTLINED_FUNCTION_100_6(v189, v190, v191, v192, v193, v194, v195, v196, v280, v284, v289, v294, v298, v303, v309, v314, v318, v322, v326, v330, v335, v339, v343, v348, v355, v360, v366, v372, v378, v384, v390, v394, v398, v402, v406, v410, v415, v421, v425, v429, v433, v437, v442, v448, v452, v456, v461, v467, v471, v475, v480, v487, v492, v496, v501, v505, v510, v514, v518, v522);
                swift_dynamicCast();
                OUTLINED_FUNCTION_84_15();
                v290 = v198;
                if (v55)
                {
                  v199 = 0;
                }

                else
                {
                  v199 = v197;
                }

                v349 = v199;
                goto LABEL_172;
              }
            }

            else
            {
              v528 = 0u;
              v529 = 0u;
            }

            sub_1E325F748(&v528, &unk_1ECF296E0);
            v290 = 0;
            v349 = 0;
LABEL_172:
            *&v528 = v166;
            BYTE8(v528) = 0;
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2FC80);
            v200 = sub_1E3827828(&qword_1ECF37A20, &unk_1ECF2FC80);
            v208 = OUTLINED_FUNCTION_98_12(v200, v201, v202, v203, v204, v205, v206, v207, v280, v284, v290, v294, v298, v303, v309, v314, v318, v322, v326, v330, v335, v339, v343, v349, v355, v360, v366, v372, v378, v384, v390, v394, v398, v402, v406, v410, v415, v421, v425, v429, v433, v437, v442, v448, v452, v456, v461, v467, v471, v475, v480, v487, v492, v496, v501, v505, v510, v514, v518, v471, v525, v527, v528);
            sub_1E38D2054(v208, v209);
            v210 = v526;
            if (v178)
            {
              v211 = *(*v178 + 392);

              v213 = v211(v212);

              if (v213)
              {
                OUTLINED_FUNCTION_8();
                (*(v214 + 248))();
                v216 = v215;

                v217 = v216 ^ 1;
              }

              else
              {
                v217 = 0;
              }

              v210 = v526;
              v76 = v422;
            }

            else
            {
              v217 = 0;
            }

            if (v350)
            {
              if (v450)
              {
                if (v285 == v295 && v350 == v450)
                {

                  goto LABEL_194;
                }

                LODWORD(v285) = v217;
                v227 = sub_1E42079A4();

                if (v227)
                {
LABEL_194:

                  v229 = v210;
                  v228 = v210;
LABEL_195:
                  v331 = v167;
                  if (v228)
                  {
                    v230 = v228;
                    [v230 frame];
                    CGRectGetWidth(v540);
                    v541.origin.x = OUTLINED_FUNCTION_54_30();
                    v541.size.height = v457;
                    CGRectGetMinY(v541);
                    v542.origin.x = OUTLINED_FUNCTION_54_30();
                    v542.size.height = v457;
                    CGRectGetMaxX(v542);

                    v164 = v228;
                  }

                  else
                  {

                    v164 = 0;
                  }

                  goto LABEL_198;
                }

LABEL_192:
                v228 = v411;
                goto LABEL_195;
              }
            }

            else if (!v450)
            {
              goto LABEL_194;
            }

            goto LABEL_192;
          }
        }

        *&v160 = v66;
        goto LABEL_152;
      }

      if (v60 >= sub_1E4207384())
      {
        HIDWORD(v453) = 0;
        OUTLINED_FUNCTION_87_11();
LABEL_242:
        v133 = sub_1E4207384();
        goto LABEL_120;
      }

LABEL_115:
      sub_1E34AF4E4(v60, v418 == 0, v126);
      if (v418)
      {
        MEMORY[0x1E6911E60](v60, v126);
      }

      else
      {
      }

      OUTLINED_FUNCTION_8();
      v261 = OUTLINED_FUNCTION_101_10(v253, v254, v255, v256, v257, v258, v259, v260, v277, v281, v285, v291, v295, v302, v308, v311, v315, v319, v323, v327, v334, *&v336, *&v340, v346, v354, v359, v365, v371, v377, v383, v389, v391, *&v395, v399, v403, v407, v414, v418, v422, v426, v430, *&v434, v441, v447, v450, v453, v460, v464, v468, v472, v479, *&v486, v488, v493, v500, v502, v507, v511, v515, 1);
      v263 = v262(v261, &unk_1F5D5D0A8, &off_1F5D5C758);
      if (*(&v529 + 1))
      {
        OUTLINED_FUNCTION_100_6(v263, v264, v265, v266, v267, v268, v269, v270, v277, v281, v285, v291, v295, v304, v310, v311, v315, v319, v323, v327, v334, *&v336, *&v340, v346, v354, v361, v367, v373, v379, v385, v389, v391, *&v395, v399, v403, v407, v416, v418, v422, v426, v430, *&v434, v443, v449, v450, v453, v462, v464, v468, v472, v479, *&v486, v488, v493, v500, v502, v507, v511, v515, v523);
        swift_dynamicCast();
        OUTLINED_FUNCTION_84_15();
        v463 = v272;
        if (v55)
        {
          v129 = 0;
        }

        else
        {
          v129 = v271;
        }
      }

      else
      {
        sub_1E325F748(&v528, &unk_1ECF296E0);
        v463 = 0;
        v129 = 0;
      }

      LOBYTE(v59) = v468;
      sub_1E34AF4E4(v60, v507 == 0, v468);
      if (v507)
      {
        v273 = MEMORY[0x1E6911E60](v60, v468);
      }

      else
      {
        v273 = *(v407 + 8 * v60);
      }

      v97 = v273;
      if (sub_1E373F6E0())
      {
        objc_opt_self();
        v274 = swift_dynamicCastObjCClass();
        if (v274)
        {
          v275 = [v274 textContentView];
          if (v275)
          {

            goto LABEL_232;
          }
        }

        HIDWORD(v453) = 1;
        if (!v129)
        {
LABEL_244:

LABEL_118:
          OUTLINED_FUNCTION_87_11();
          if (!v131)
          {
            goto LABEL_119;
          }

          goto LABEL_242;
        }
      }

      else
      {
LABEL_232:
        HIDWORD(v453) = 0;
        if (!v129)
        {
          goto LABEL_244;
        }
      }

      v417 = v97;
      if (v463 == v295 && v129 == v450)
      {
      }

      else
      {
        v97 = sub_1E42079A4();

        if ((v97 & 1) == 0)
        {

          goto LABEL_118;
        }
      }

      v129 = (v346 + 2);
      if (__OFADD__(v346, 2))
      {
        goto LABEL_258;
      }

      LOBYTE(v59) = BYTE4(v453) ^ 1;
      v97 = v417;
      if (!v131)
      {
        goto LABEL_119;
      }

      goto LABEL_242;
    }

    LOBYTE(v59) = 0;
    ++v67;
  }

  __break(1u);
LABEL_253:
  __break(1u);
LABEL_254:
  __break(1u);
LABEL_255:
  __break(1u);
LABEL_256:
  __break(1u);
LABEL_257:
  __break(1u);
LABEL_258:
  __break(1u);
}

uint64_t sub_1E3D19D94(char a1, double a2)
{
  if ((sub_1E39DFFC8() & 1) == 0)
  {
    return 0;
  }

  if ((sub_1E3A24FDC(a1) & 1) != 0 || *sub_1E3D8FB48() <= a2)
  {
    return 2;
  }

  return 1;
}

uint64_t sub_1E3D19DF8()
{
  if (sub_1E39DFFC8())
  {
    return 0;
  }

  return sub_1E3D10EC8();
}

double sub_1E3D19E30()
{
  [v0 vuiBounds];
  Height = CGRectGetHeight(v16);
  OUTLINED_FUNCTION_26_3();
  if (((*((*MEMORY[0x1E69E7D40] & v2) + 0x550))() & 1) == 0)
  {
    [v0 vuiBounds];
    [v0 sizeThatFits_];
    Height = v3;
  }

  if (v0[OBJC_IVAR____TtC8VideosUI23CanonicalBannerViewCell_showAttributionViewBelowBanner] == 1)
  {
    Height = Height - *&v0[OBJC_IVAR____TtC8VideosUI23CanonicalBannerViewCell_attributionViewHeight];
    if (TVAppFeature.isEnabled.getter(10))
    {
      v4 = Height + -20.0;
      sub_1E3D113BC();
      OUTLINED_FUNCTION_71();
      OUTLINED_FUNCTION_64();
      v6 = (*(v5 + 112))();

      Height = v4 - v6;
    }
  }

  if (sub_1E3D10EC8())
  {
    return Height;
  }

  OUTLINED_FUNCTION_12_5();
  v8 = (*(v7 + 848))();
  if (!v8)
  {
    return 0.0;
  }

  v9 = v8;
  [v8 frame];
  OUTLINED_FUNCTION_3();

  v10 = OUTLINED_FUNCTION_6();

  return CGRectGetMinY(*&v10);
}

double sub_1E3D19FF8()
{
  v0 = sub_1E3D10EC8();
  result = 0.0;
  if (v0)
  {
    return 10.0;
  }

  return result;
}

double sub_1E3D1A020()
{
  v0 = sub_1E3D10EC8();
  result = 50.0;
  if ((v0 & 1) == 0)
  {
    return 0.0;
  }

  return result;
}

uint64_t sub_1E3D1A04C(double a1, double a2)
{
  v3 = v2;
  v6 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_5();
  v12 = v11 - v10;
  sub_1E324FBDC();
  v13 = OUTLINED_FUNCTION_121();
  v14(v13);
  v15 = sub_1E41FFC94();
  v16 = sub_1E4206814();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 134217984;
    *(v17 + 4) = a1;
    _os_log_impl(&dword_1E323F000, v15, v16, "CanonicalBannerViewCell:: navigationBarTintColor: showcasePercentage=%f", v17, 0xCu);
    OUTLINED_FUNCTION_6_0();
  }

  (*(v8 + 8))(v12, v6);
  [v3 bounds];
  v19 = v18;
  if (v3[OBJC_IVAR____TtC8VideosUI23CanonicalBannerViewCell_showAttributionViewBelowBanner] == 1)
  {
    v19 = v18 - *&v3[OBJC_IVAR____TtC8VideosUI23CanonicalBannerViewCell_attributionViewHeight];
  }

  OUTLINED_FUNCTION_12_5();
  v21 = (*(v20 + 1352))() - a2;
  if (v21 < 0.0)
  {
    v22 = 0.0;
  }

  else
  {
    v22 = v21;
  }

  v23 = 1.0 - a1;
  v24 = (1.0 - a1) * v19;
  if (sub_1E39DFFC8() & 1) != 0 && (TVAppFeature.isEnabled.getter(10))
  {
    v25 = [objc_opt_self() sharedInstance];
    v26 = [v25 mediaShowcaseConfig];

    v27 = sub_1E3D10B1C();
    [v26 parallaxRatio];
    *(v27 + OBJC_IVAR____TtC8VideosUI15ProductUberView_offset + 8) = v24 * v28;
    sub_1E3D0D350();
  }

  else
  {
    OUTLINED_FUNCTION_12_5();
    v27 = (*(v29 + 1064))();
    [v27 setImageOffset_];
  }

  if (sub_1E39DFFC8() & 1) != 0 || (TVAppFeature.isEnabled.getter(10))
  {
    v62 = 0.0;
    v63 = 0;
    v61 = v23;
    sub_1E3D8FB88();
    OUTLINED_FUNCTION_71();
    v59 = v30;
    v60 = 0;
    sub_1E3793CAC();
    v31 = MEMORY[0x1E69E7DE0];
    clamp<A>(_:_:_:)(&v62, &v61, &v59, MEMORY[0x1E69E7DE0]);
    v32 = v64;
    v59 = 0;
    v64 = *v27;
    v61 = v32;
    sub_1E3929B88();
    sub_1E3C77434(&v59, &v64, &v61, v31, v31);
    v33 = v62;
  }

  else
  {
    v56 = v19 - a2;
    if (v22 > v24 || v24 > v56)
    {
      if (v56 > v24)
      {
        v33 = 0.0;
      }

      else
      {
        v33 = 1.0;
      }
    }

    else
    {
      v33 = (v24 - v22) / (v56 - v22);
    }
  }

  if ((sub_1E39DFFC8() & 1) == 0)
  {
    [*&v3[OBJC_IVAR____TtC8VideosUI23CanonicalBannerViewCell_transitionBackgroundView] setAlpha_];
  }

  v34 = [v3 contentView];
  v35 = [v34 subviews];

  sub_1E3280A90(0, &qword_1EE23AE80);
  v36 = sub_1E42062B4();

  result = sub_1E32AE9B0(v36);
  if (!result)
  {
    goto LABEL_35;
  }

  v38 = result;
  if (result >= 1)
  {
    v39 = 0;
    v58 = OBJC_IVAR____TtC8VideosUI23CanonicalBannerViewCell_transitionBackgroundView;
    do
    {
      if ((v36 & 0xC000000000000001) != 0)
      {
        v40 = MEMORY[0x1E6911E60](v39, v36);
      }

      else
      {
        v40 = *(v36 + 8 * v39 + 32);
      }

      v41 = v40;
      v42 = *&v3[v58];
      if (v42)
      {
        v43 = v40 == v42;
      }

      else
      {
        v43 = 0;
      }

      if (!v43)
      {
        OUTLINED_FUNCTION_12_5();
        v45 = *(v44 + 1064);
        v46 = v41;
        v47 = v45();

        if (!v47 || (v47, v46 != v47))
        {
          if ((sub_1E39DFFC8() & 1) == 0)
          {
            OUTLINED_FUNCTION_12_5();
            v49 = *(v48 + 1528);
            v50 = v46;
            v51 = v49();

            if (!v51 || (v51, v50 != v51))
            {
              v52 = v50;
              v53 = sub_1E3D10B90();

              if (v52 != v53)
              {
                [v52 setAlpha_];
              }
            }
          }
        }
      }

      ++v39;
    }

    while (v38 != v39);
LABEL_35:

    v54 = [objc_opt_self() whiteColor];
    v55 = [v54 vui:*sub_1E3E60700() blendWithColor:v33 percentage:?];

    return v55;
  }

  __break(1u);
  return result;
}

uint64_t sub_1E3D1A660(char a1)
{
  if (sub_1E3D10EC8())
  {
    return 0;
  }

  return sub_1E3A24FDC(a1);
}

void sub_1E3D1A6AC(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10, uint64_t a11, id a12, uint64_t aBlock, uint64_t a14, void (*a15)(uint64_t a1, void *a2, void *a3, uint64_t a4), void *a16, void (*a17)(), uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34)
{
  OUTLINED_FUNCTION_131_10();
  a33 = v35;
  a34 = v36;
  v37 = v34;
  v89 = v38;
  v40 = v39;
  v41 = MEMORY[0x1E69E7D40];
  OUTLINED_FUNCTION_8_9();
  v43 = (*(v42 + 1328))();
  if (!v43)
  {
    goto LABEL_25;
  }

  v44 = v43;
  OUTLINED_FUNCTION_18_1();
  (*(v45 + 664))();
  type metadata accessor for MediaShowcaseHostingView();
  OUTLINED_FUNCTION_36_3();
  v47 = (*((*v41 & v46) + 0x260))();
  sub_1E40037C8(v47);

  OUTLINED_FUNCTION_36_3();
  if ((*((*v41 & v48) + 0x278))())
  {
    v49 = [v34 traitCollection];
    sub_1E3D10EC8();
    v50 = OUTLINED_FUNCTION_17_4();
    v51(v49, v50);
  }

  type metadata accessor for LayoutGrid();
  v52 = sub_1E3A2579C(v40);
  if (TVAppFeature.isEnabled.getter(10))
  {
    v53 = 2;
  }

  else
  {
    v54 = (*(*v44 + 1032))(v52);
    if (v55)
    {
      v53 = 2;
    }

    else
    {
      v53 = v54;
    }
  }

  OUTLINED_FUNCTION_18_1();
  v57 = (*(v56 + 1064))();
  if (v57)
  {
    v58 = v57;
    v59 = [v57 imageView];
    if (v59)
    {
      v60 = v59;
      objc_opt_self();
      v61 = swift_dynamicCastObjCClass();
      if (v61)
      {
        v88 = v61;
        v62 = *(*v44 + 392);

        v64 = v44;
        v65 = v62(v63);

        v66 = 0.0;
        if (v65)
        {
          type metadata accessor for ImageLayout();
          if (swift_dynamicCastClass())
          {
            OUTLINED_FUNCTION_30();
            v68 = *(v67 + 1696);

            *&v70 = COERCE_DOUBLE(v68(v69));
            v72 = v71;
            v64 = v73;

            if ((v64 & 1) == 0)
            {
              v66 = *&v70;
              v74 = v72;
LABEL_20:
              v87 = sub_1E3C3E520(v66, v74);
              v37[OBJC_IVAR____TtC8VideosUI23CanonicalBannerViewCell_isBackgroundTransitioning] = 1;
              v37[OBJC_IVAR____TtC8VideosUI23CanonicalBannerViewCell_isImageLoadedForBackgroundTransitioning] = 0;
              OUTLINED_FUNCTION_4_0();
              swift_allocObject();
              OUTLINED_FUNCTION_8_110();
              OUTLINED_FUNCTION_2_4();
              v75 = swift_allocObject();
              *(v75 + 16) = v64;
              *(v75 + 24) = v58;
              a17 = sub_1E3D1B9DC;
              a18 = v75;
              aBlock = MEMORY[0x1E69E9820];
              a14 = 1107296256;
              a15 = sub_1E38B2C5C;
              a16 = &block_descriptor_22_0;
              v76 = _Block_copy(&aBlock);
              v77 = v58;

              [v88 setImageProxy:v87 clearingExisting:0 completion:v76];
              _Block_release(v76);
              [v77 configureBlurWithInterfaceStyle_];
              [v77 setMasksBlur_];
              OUTLINED_FUNCTION_4_0();
              swift_allocObject();
              OUTLINED_FUNCTION_8_110();
              v78 = swift_allocObject();
              *(v78 + 16) = v76;
              *(v78 + 24) = v44;
              *(v78 + 32) = v52;
              a17 = sub_1E3D1BA5C;
              a18 = v78;
              aBlock = MEMORY[0x1E69E9820];
              OUTLINED_FUNCTION_44_42();
              a15 = v79;
              a16 = &block_descriptor_29_1;
              v80 = _Block_copy(&aBlock);
              v81 = a18;

              OUTLINED_FUNCTION_4_0();
              swift_allocObject();
              OUTLINED_FUNCTION_8_110();
              OUTLINED_FUNCTION_2_4();
              v82 = swift_allocObject();
              *(v82 + 16) = v81;
              *(v82 + 24) = v77;
              a17 = sub_1E3D1BB34;
              a18 = v82;
              aBlock = MEMORY[0x1E69E9820];
              OUTLINED_FUNCTION_44_42();
              a15 = v83;
              a16 = &block_descriptor_36_2;
              v84 = _Block_copy(&aBlock);
              v85 = v77;

              [v89 animateAlongsideTransition:v80 completion:v84];
              _Block_release(v84);
              _Block_release(v80);

              goto LABEL_21;
            }
          }

          else
          {
          }
        }

        v74 = 0.0;
        goto LABEL_20;
      }
    }

    else
    {
    }
  }

LABEL_21:
  if (sub_1E3D10EC8())
  {
    v86 = v53;
  }

  else
  {
    v86 = 0;
  }

  [v37 vui:v86 setOverrideUserInterfaceStyle:?];

LABEL_25:
  OUTLINED_FUNCTION_130_11();
}

void sub_1E3D1AE5C()
{
  v2 = v0;
  v3 = MEMORY[0x1E69E7D40];
  OUTLINED_FUNCTION_8_9();
  (*(v4 + 1432))();
  if (v5)
  {
    v6 = v5;
    sub_1E3285D14();
    OUTLINED_FUNCTION_3_134();
    v8 = *(v7 + 272);
    v10 = v9;
    v11 = OUTLINED_FUNCTION_122();
    v25 = v8(v11, v6);

    if (v25)
    {
      OUTLINED_FUNCTION_3_134();
      v13 = *(v12 + 264);
      v15 = v14;
      v16 = v25;
      v17 = v13();

      OUTLINED_FUNCTION_36_3();
      (*((*v3 & v18) + 0x600))(v17);
    }

    else
    {
      OUTLINED_FUNCTION_18_1();
      v20 = (*(v19 + 1528))();
      if (!v20)
      {
        return;
      }

      OUTLINED_FUNCTION_18_1();
      (*(v21 + 1536))(0);
    }

    v22 = [v2 vuiCollectionViewCellInteractor];
    if (v22)
    {
      if ([v22 respondsToSelector_])
      {
        v23 = OUTLINED_FUNCTION_43_0();
        [v23 v24];
      }

      swift_unknownObjectRelease();
    }
  }
}

void sub_1E3D1B180()
{
  v0 = sub_1E41FDF24();
  if (!v0)
  {
    v53 = 0u;
    v52 = 0u;
    goto LABEL_6;
  }

  v1 = v0;
  v2 = sub_1E3C0EBCC();
  v4 = *v2;
  v3 = *(v2 + 1);
  *&v52 = v4;
  *(&v52 + 1) = v3;

  sub_1E4207414();
  sub_1E375D7E8(v51, v1, &v52);

  sub_1E375D84C(v51);
  if (!*(&v53 + 1))
  {
LABEL_6:
    sub_1E325F748(&v52, &unk_1ECF296E0);
    goto LABEL_7;
  }

  if (OUTLINED_FUNCTION_122_8())
  {
    v5 = v51[0];
    goto LABEL_8;
  }

LABEL_7:
  v5 = 0;
LABEL_8:
  v6 = MEMORY[0x1E69E7D40];
  OUTLINED_FUNCTION_12_5();
  v7 += 76;
  v8 = *v7;
  if (!(*v7)())
  {
    return;
  }

  OUTLINED_FUNCTION_12_5();
  if ((*(v9 + 632))())
  {
    if (v8() && (OUTLINED_FUNCTION_26_0(), v11 = (*(v10 + 552))(), , v11))
    {
      v51[3] = &unk_1F5D7BE68;
      v51[4] = &off_1F5D7BC48;
      LOBYTE(v51[0]) = 6;
      sub_1E3F9F164(v51);

      __swift_destroy_boxed_opaque_existential_1(v51);
      if (*(&v53 + 1))
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770);
        if ((OUTLINED_FUNCTION_122_8() & 1) == 0)
        {
LABEL_32:

          goto LABEL_33;
        }

        v12 = MEMORY[0x1E69E6370];
        sub_1E3744600(v51[0]);
        v13 = objc_allocWithZone(VUIContentMetadata);
        v14 = OUTLINED_FUNCTION_20_2();
        v15 = sub_1E37AD294(v14);
        if (!v15)
        {
          v15 = [objc_allocWithZone(VUIContentMetadata) init];
        }

        v16 = v15;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2F240);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_1E4297BE0;
        *(inited + 32) = sub_1E4205F14();
        *(inited + 40) = v18;
        *(inited + 72) = v12;
        *(inited + 48) = v5;
        v50 = sub_1E4205CB4();
        OUTLINED_FUNCTION_36_3();
        v20 = *((*v6 & v19) + 0x410);
        v21 = v20();
        if (v21)
        {
          v22 = v21;
          v23 = [v21 tagsViewLayout];

          if (v23)
          {
            v24 = v20();
            if (v24)
            {
              v25 = v24;
              v26 = [v24 tagsViewLayout];

              if (!v26)
              {
                goto LABEL_36;
              }

              v27 = [v26 isGroupActivityTagEnabled];

              if (v27)
              {
                type metadata accessor for CanonicalBannerFactory();
                v28 = v20();

                v29 = OUTLINED_FUNCTION_94_14();
                v34 = sub_1E412B208(v29, v30, v31, v32, v33, v50);

                OUTLINED_FUNCTION_36_3();
                (*((*v6 & v35) + 0x418))(v34);
              }
            }
          }
        }

        OUTLINED_FUNCTION_12_5();
        v36 += 127;
        v37 = *v36;
        v38 = (*v36)();
        if (!v38)
        {

          return;
        }

        v39 = v38;
        v40 = [v38 tagsViewLayout];

        if (v40)
        {

          v41 = [v40 isGroupActivityTagEnabled];

          if (v41)
          {
            type metadata accessor for CanonicalBannerFactory();
            v42 = v37();
            sub_1E3744600(v50);

            v43 = OUTLINED_FUNCTION_94_14();
            v48 = sub_1E412B098(v43, v44, v45, v46, v47);

            OUTLINED_FUNCTION_36_3();
            (*((*v6 & v49) + 0x400))(v48);
          }

          else
          {
          }

          goto LABEL_32;
        }

        __break(1u);
LABEL_36:
        __break(1u);
        return;
      }
    }

    else
    {

      v53 = 0u;
      v52 = 0u;
    }

    sub_1E325F748(&v52, &unk_1ECF296E0);
    return;
  }

LABEL_33:
}

uint64_t sub_1E3D1B784(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  v6 = sub_1E41FDF34();
  OUTLINED_FUNCTION_0_10();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_5();
  v12 = v11 - v10;
  sub_1E41FDEE4();
  v13 = a1;
  a4(v12);

  return (*(v8 + 8))(v12, v6);
}

uint64_t sub_1E3D1B874(void (*a1)(uint64_t *__return_ptr))
{
  a1(&v2);

  return sub_1E4206E54();
}

uint64_t sub_1E3D1B8BC(unint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v6 = a4();
  v8 = sub_1E3270FC8(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

void sub_1E3D1B93C()
{
  OUTLINED_FUNCTION_15_0();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = [Strong vuiCollectionViewCellInteractor];
    if (v2)
    {
      if ([v2 respondsToSelector_])
      {
        v3 = OUTLINED_FUNCTION_43_0();
        [v3 v4];
      }

      swift_unknownObjectRelease();
    }

    [v1 invalidateIntrinsicContentSize];
  }
}

void sub_1E3D1B9DC()
{
  v1 = *(v0 + 24);
  OUTLINED_FUNCTION_15_0();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    if ((*(Strong + OBJC_IVAR____TtC8VideosUI23CanonicalBannerViewCell_isBackgroundTransitioning) & 1) == 0)
    {
      [v1 setMasksBlur_];
    }

    v3[OBJC_IVAR____TtC8VideosUI23CanonicalBannerViewCell_isImageLoadedForBackgroundTransitioning] = 1;
  }
}

void sub_1E3D1BA5C()
{
  v1 = *(v0 + 32);
  OUTLINED_FUNCTION_15_0();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    j__OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_8();
    v6 = (*(v4 + 1048))(v1, v5 & 1);
    if (v6)
    {
      v7 = v6;
      v8 = [v3 backgroundView];
      if (v8)
      {
        v9 = v8;
        v10 = v7;
        [v9 setBackgroundColor_];
      }
    }
  }
}

void sub_1E3D1BB34()
{
  v1 = *(v0 + 24);
  OUTLINED_FUNCTION_15_0();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    *(Strong + OBJC_IVAR____TtC8VideosUI23CanonicalBannerViewCell_isBackgroundTransitioning) = 0;
    if (*(Strong + OBJC_IVAR____TtC8VideosUI23CanonicalBannerViewCell_isImageLoadedForBackgroundTransitioning) == 1)
    {
      [v1 setMasksBlur_];
    }
  }
}

void sub_1E3D1BBD8(char a1)
{
  OUTLINED_FUNCTION_15_0();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = 1;
    if (!sub_1E374E8E4(a1, 1))
    {
      v4 = sub_1E374E8E4(a1, 2);
    }

    OUTLINED_FUNCTION_21();
    (*(v5 + 1216))(v4);
  }
}

__n128 sub_1E3D1BC84@<Q0>(__n128 *a1@<X8>)
{
  OUTLINED_FUNCTION_15_0();
  result = v1[1];
  *a1 = result;
  return result;
}

uint64_t sub_1E3D1BCF4(void *a1)
{
  v1 = [a1 mediaInfos];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  sub_1E3280A90(0, &qword_1EE23B350);
  v3 = sub_1E42062B4();

  return v3;
}

double OUTLINED_FUNCTION_68_22()
{
  v0[59] = v1;
  result = 0.0;
  v0[24] = v0[74];
  v0[25] = 0;
  v0[26] = 0;
  v0[23] = 0;
  return result;
}

double OUTLINED_FUNCTION_82_14()
{
  result = 0.0;
  *(v0 - 472) = 0;
  *(v0 - 480) = 0;
  return result;
}

uint64_t OUTLINED_FUNCTION_95_15()
{

  return VUIRectWithFlippedOriginRelativeToBoundingRectWithCondition();
}

id OUTLINED_FUNCTION_96_15(id a1, SEL a2)
{
  v4 = *(v2 + 600);

  return [a1 a2];
}

double OUTLINED_FUNCTION_119_7()
{
  result = 0.0;
  *(v0 + 376) = 0;
  return result;
}

__n128 OUTLINED_FUNCTION_120_6(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, unint64_t a11, uint64_t a12, unint64_t a13)
{
  result.n128_u64[0] = a11;
  result.n128_u64[1] = a13;
  return result;
}

uint64_t OUTLINED_FUNCTION_122_8()
{

  return swift_dynamicCast();
}

id OUTLINED_FUNCTION_125_8()
{
  v3 = *(v1 + 3520);

  return [v0 v3];
}

uint64_t sub_1E3D1BFB0()
{
  OUTLINED_FUNCTION_134();
  v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_7();
  *v5 = v4;
  *v5 = *v1;
  *(v4 + 328) = v0;

  if (!v0)
  {
    *(v4 + 401) = v3 & 1;
  }

  OUTLINED_FUNCTION_76_18();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1E3D1C960()
{
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_39();
  v1 = *v0;
  OUTLINED_FUNCTION_7();
  *v2 = v1;

  OUTLINED_FUNCTION_64_22();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1E3D1CA78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_53_6();
  v19 = *(v16 + 272);
  v18 = *(v16 + 280);

  v20 = OUTLINED_FUNCTION_16_0();
  v19(v20);
  v21 = OUTLINED_FUNCTION_70_22();
  OUTLINED_FUNCTION_85_0(v21);
  OUTLINED_FUNCTION_4_0();
  swift_allocObject();
  swift_weakInit();
  OUTLINED_FUNCTION_5_10();
  v22 = swift_allocObject();
  OUTLINED_FUNCTION_27_59(v22);

  sub_1E325F748(v18, &unk_1ECF2C400);
  sub_1E4206B94();
  v23 = VUISignpostLogObject();
  OUTLINED_FUNCTION_38_38();
  OUTLINED_FUNCTION_10_111();
  sub_1E41FFBA4();

  v24 = OUTLINED_FUNCTION_16_0();
  v17(v24);
  OUTLINED_FUNCTION_14_120();
  OUTLINED_FUNCTION_69_22();

  OUTLINED_FUNCTION_54();
  OUTLINED_FUNCTION_29_30();

  return v26(v25, v26, v27, v28, v29, v30, v31, v32, a9, a10, a11, a12, a13, a14, a15, a16);
}

void sub_1E3D1CC04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_53_6();
  *(v16 + 96) = *(v16 + 328);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF32480);
  sub_1E3280A90(0, &qword_1ECF30180);
  if (swift_dynamicCast())
  {
    v17 = *(v16 + 104);
    (*(v16 + 296))(*(v16 + 144), *(v16 + 288), *(v16 + 128));
    v18 = v17;
    v19 = sub_1E41FFC94();
    v20 = sub_1E4206814();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = OUTLINED_FUNCTION_6_21();
      v22 = swift_slowAlloc();
      *v21 = 138412290;
      *(v21 + 4) = v18;
      *v22 = v18;
      v23 = v18;
      _os_log_impl(&dword_1E323F000, v19, v20, "JSNetworkProxy: prefetchSelectedTab: isFullTVAppEnabled failed with error:%@", v21, 0xCu);
      sub_1E325F748(v22, &unk_1ECF28E30);
      OUTLINED_FUNCTION_6_0();
      OUTLINED_FUNCTION_6_0();
    }

    else
    {
      v23 = v19;
      v19 = v18;
    }

    v24 = *(v16 + 312);
    v25 = *(v16 + 272);
    v38 = *(v16 + 280);
    v26 = *(v16 + 144);
    v27 = *(v16 + 128);

    v24(v26, v27);
    sub_1E4206B94();
    v28 = VUISignpostLogObject();
    sub_1E41FFBE4();
    OUTLINED_FUNCTION_10_111();
    sub_1E41FFBA4();

    v29 = OUTLINED_FUNCTION_27_0();
    v25(v29);
    OUTLINED_FUNCTION_14_120();
    OUTLINED_FUNCTION_69_22();

    OUTLINED_FUNCTION_54();
    OUTLINED_FUNCTION_29_30();

    v31(v30, v31, v32, v33, v34, v35, v36, v37, a9, a10, a11, a12, v38, a14, a15, a16);
  }

  else
  {
    OUTLINED_FUNCTION_29_30();
  }
}

uint64_t sub_1E3D1CEAC()
{
  OUTLINED_FUNCTION_24();
  v1[2] = v2;
  v1[3] = v0;
  v1[4] = *v0;
  v3 = sub_1E41FFCB4();
  v1[5] = v3;
  OUTLINED_FUNCTION_8_0(v3);
  v1[6] = v4;
  v1[7] = OUTLINED_FUNCTION_127();
  v1[8] = swift_task_alloc();
  v1[9] = swift_task_alloc();
  v5 = sub_1E41FFBF4();
  v1[10] = v5;
  OUTLINED_FUNCTION_8_0(v5);
  v1[11] = v6;
  v1[12] = OUTLINED_FUNCTION_86_0();
  v7 = OUTLINED_FUNCTION_16_12();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1E3D1CFDC()
{
  v88 = v0;
  v2 = v0[11];
  v1 = v0[12];
  v80 = v0[9];
  v3 = v0[6];
  v86 = v0[10];
  v4 = v0[2];
  sub_1E4206BA4();
  v5 = VUISignpostLogObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30870);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1E4297BE0;
  v7 = [v4 endpoint];
  v8 = sub_1E4205F14();
  v10 = v9;

  *(v6 + 56) = MEMORY[0x1E69E6158];
  *(v6 + 64) = sub_1E3283528();
  *(v6 + 32) = v8;
  *(v6 + 40) = v10;
  sub_1E41FFBE4();
  v77 = v6;
  LOBYTE(v76) = 2;
  sub_1E41FFB94();

  v11 = *(v2 + 8);
  v11(v1, v86);
  v12 = sub_1E324FBDC();
  v13 = *(v3 + 16);
  v83 = v12;
  v13(v80);
  v14 = v4;
  v15 = sub_1E41FFC94();
  LOBYTE(v10) = sub_1E4206814();

  v16 = os_log_type_enabled(v15, v10);
  v17 = v0[9];
  v19 = v0[5];
  v18 = v0[6];
  if (v16)
  {
    v79 = v0[5];
    v20 = v0[2];
    v81 = v13;
    v21 = OUTLINED_FUNCTION_6_21();
    v22 = OUTLINED_FUNCTION_100();
    v87 = v22;
    *v21 = 136315138;
    v23 = [v20 endpoint];
    v78 = v17;
    v24 = v11;
    v25 = sub_1E4205F14();
    v27 = v26;

    v28 = v25;
    v11 = v24;
    v29 = sub_1E3270FC8(v28, v27, &v87);

    *(v21 + 4) = v29;
    OUTLINED_FUNCTION_36_4();
    _os_log_impl(v30, v31, v32, v33, v34, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v22);
    OUTLINED_FUNCTION_7_7();
    v13 = v81;
    OUTLINED_FUNCTION_6_0();

    v35 = *(v18 + 8);
    v35(v78, v79);
  }

  else
  {

    v35 = *(v18 + 8);
    v35(v17, v19);
  }

  v36 = v0[3];
  v37 = *(v36 + 112);
  if (!v37)
  {
LABEL_10:
    v50 = v0[2];
    (v13)(v0[7], v83, v0[5]);
    v51 = v50;
    v52 = sub_1E41FFC94();
    v53 = sub_1E4206814();

    v54 = os_log_type_enabled(v52, v53);
    v55 = v0[7];
    v56 = v0[5];
    if (v54)
    {
      v85 = v35;
      v57 = v0[2];
      v84 = v0[5];
      v58 = OUTLINED_FUNCTION_6_21();
      v59 = OUTLINED_FUNCTION_100();
      v87 = v59;
      *v58 = 136315138;
      v60 = [v57 endpoint];
      v61 = sub_1E4205F14();
      v82 = v55;
      v62 = v11;
      v64 = v63;

      v65 = sub_1E3270FC8(v61, v64, &v87);
      v11 = v62;

      *(v58 + 4) = v65;
      OUTLINED_FUNCTION_35_8();
      _os_log_impl(v66, v67, v68, v69, v70, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v59);
      OUTLINED_FUNCTION_6_0();
      OUTLINED_FUNCTION_6_0();

      v85(v82, v84);
    }

    else
    {

      v35(v55, v56);
    }

    [objc_allocWithZone(MEMORY[0x1E69E1610]) initWithRequestProperties_];
    goto LABEL_14;
  }

  v38 = v0[2];
  v39 = v37;
  v40 = [v39 requestProperties];
  LOBYTE(v38) = sub_1E3D1D5AC(v40, v38);

  if ((v38 & 1) == 0)
  {

    goto LABEL_10;
  }

  v41 = v0[8];
  v42 = v0[5];
  v43 = *(v36 + 112);
  *(v36 + 112) = 0;

  (v13)(v41, v83, v42);
  v44 = sub_1E41FFC94();
  v45 = sub_1E4206814();
  if (OUTLINED_FUNCTION_16_53(v45))
  {
    v46 = OUTLINED_FUNCTION_125_0();
    OUTLINED_FUNCTION_34_10(v46);
    _os_log_impl(&dword_1E323F000, v44, v42, "JSNetworkProxy: makeNetworkRequestOperation: it's prefetching, reuse current one", v36, 2u);
    OUTLINED_FUNCTION_65_0();
  }

  v47 = v0[8];
  v48 = v0[5];
  v49 = v0[2];

  v35(v47, v48);
  sub_1E3280A90(0, &qword_1EE23AED0);
  sub_1E3D1D7F4(v49, v39);
LABEL_14:
  sub_1E4206B94();
  v71 = VUISignpostLogObject();
  sub_1E41FFBE4();
  sub_1E41FFBA4();

  v72 = OUTLINED_FUNCTION_27_0();
  (v11)(v72);

  v73 = OUTLINED_FUNCTION_88_1();

  return v74(v73);
}

uint64_t sub_1E3D1D5AC(void *a1, void *a2)
{
  v4 = [a1 endpoint];
  v5 = sub_1E4205F14();
  v7 = v6;

  v8 = [a2 endpoint];
  v9 = sub_1E4205F14();
  v11 = v10;

  if (v5 == v9 && v7 == v11)
  {
  }

  else
  {
    v13 = sub_1E42079A4();

    v14 = 0;
    if ((v13 & 1) == 0)
    {
      return v14 & 1;
    }
  }

  v15 = [a1 queryParameters];
  v16 = sub_1E4205C64();

  v17 = [a2 queryParameters];
  v18 = sub_1E4205C64();

  if (v16 && v18)
  {
    sub_1E3280A90(0, &qword_1EE23B398);

    v19 = sub_1E37766C4();
    v20 = sub_1E4205C44();
    v14 = [v19 isEqualToDictionary_];
  }

  else
  {
    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF34558);
    sub_1E3D20638();
    if (sub_1E4149048(v21))
    {
      v14 = sub_1E4149048(v21);
    }

    else
    {
      v14 = 0;
    }
  }

  return v14 & 1;
}

id sub_1E3D1D7F4(void *a1, void *a2)
{
  v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithRequestProperties:a1 underlyingOperation:a2];

  return v4;
}

uint64_t sub_1E3D1D850()
{
  OUTLINED_FUNCTION_24();
  v1[4] = v2;
  v1[5] = v0;
  v1[3] = v3;
  v1[6] = *v0;
  v4 = sub_1E41FFCB4();
  v1[7] = v4;
  OUTLINED_FUNCTION_8_0(v4);
  v1[8] = v5;
  v1[9] = OUTLINED_FUNCTION_86_0();
  v6 = OUTLINED_FUNCTION_16_12();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1E3D1D920()
{
  OUTLINED_FUNCTION_134();
  v1 = v0[5];
  v2 = *(v1 + 120);
  v0[10] = v2;
  if (v2)
  {
    v3 = *(v1 + 128);
    v0[11] = v3;
    if (v3)
    {
      v4 = v0[4];

      v5 = v3;
      if (sub_1E3D1D5AC(v5, v4))
      {
        v6 = v0[9];
        sub_1E324FBDC();
        OUTLINED_FUNCTION_55_37();
        v7(v6);
        v8 = sub_1E41FFC94();
        v9 = sub_1E4206814();
        if (OUTLINED_FUNCTION_161(v9))
        {
          v10 = OUTLINED_FUNCTION_125_0();
          OUTLINED_FUNCTION_34_10(v10);
          OUTLINED_FUNCTION_38_44(&dword_1E323F000, v11, v12, "JSNetworkProxy: makeNetworkRequest: reusing current task");
          OUTLINED_FUNCTION_65_0();
        }

        v13 = OUTLINED_FUNCTION_58_29();
        v14(v13);
        *(v1 + 120) = 0;

        v15 = *(v1 + 128);
        *(v1 + 128) = 0;

        v16 = swift_task_alloc();
        v0[12] = v16;
        sub_1E3280A90(0, &qword_1ECF37A48);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF32480);
        *v16 = v0;
        v16[1] = sub_1E3D1DB60;
        OUTLINED_FUNCTION_60_23();

        return MEMORY[0x1EEE6DA10]();
      }
    }
  }

  sub_1E41FEE44();
  v0[14] = sub_1E41FEE24();
  v18 = swift_task_alloc();
  v0[15] = v18;
  *v18 = v0;
  v18[1] = sub_1E3D1DCF0;
  OUTLINED_FUNCTION_78_16(v0[3]);
  OUTLINED_FUNCTION_60_23();

  return MEMORY[0x1EEE43620](v19);
}

uint64_t sub_1E3D1DB60()
{
  OUTLINED_FUNCTION_27_2();
  OUTLINED_FUNCTION_31();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 104) = v0;

  OUTLINED_FUNCTION_76_18();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1E3D1DC80()
{
  OUTLINED_FUNCTION_24();

  v1 = OUTLINED_FUNCTION_88_1();

  return v2(v1);
}

uint64_t sub_1E3D1DCF0()
{
  OUTLINED_FUNCTION_27_2();
  v3 = v2;
  OUTLINED_FUNCTION_39();
  v5 = v4;
  OUTLINED_FUNCTION_31();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_7();
  *v8 = v7;
  *(v5 + 128) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_76_18();

    return MEMORY[0x1EEE6DFA0](v9, v10, v11);
  }

  else
  {

    v12 = *(v7 + 8);

    return v12(v3);
  }
}

uint64_t sub_1E3D1DE38()
{
  OUTLINED_FUNCTION_24();

  OUTLINED_FUNCTION_54();

  return v0();
}

uint64_t sub_1E3D1DE9C()
{
  OUTLINED_FUNCTION_24();

  OUTLINED_FUNCTION_54();

  return v1();
}

uint64_t sub_1E3D1DF94(uint64_t a1, void *a2, const void *a3, uint64_t a4)
{
  v4[2] = a2;
  v4[3] = a4;
  v7 = sub_1E41FDDF4();
  v4[4] = v7;
  v4[5] = *(v7 - 8);
  v4[6] = swift_task_alloc();
  v4[7] = _Block_copy(a3);
  sub_1E41FDDA4();
  v8 = a2;

  v9 = swift_task_alloc();
  v4[8] = v9;
  *v9 = v4;
  v9[1] = sub_1E3D1E0D8;

  return sub_1E3D1D850();
}

uint64_t sub_1E3D1E0D8()
{
  OUTLINED_FUNCTION_80_14();
  OUTLINED_FUNCTION_7();
  *v4 = v3;
  v5 = *v2;
  *v4 = *v2;

  v6 = v3[7];
  v7 = v3[2];
  (*(v3[5] + 8))(v3[6], v3[4]);

  if (v1)
  {
    v8 = sub_1E41FE264();

    v9 = OUTLINED_FUNCTION_44_1();
    v10(v9, 0, v8);

    _Block_release(v6);
  }

  else
  {
    OUTLINED_FUNCTION_44_1();
    OUTLINED_FUNCTION_64_22();
    v11();
    _Block_release(v6);
  }

  v12 = *(v5 + 8);

  return v12();
}