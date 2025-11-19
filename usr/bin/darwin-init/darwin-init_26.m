void *sub_1001D517C(uint64_t a1, unint64_t a2)
{
  v4 = type metadata accessor for Data.Iterator();
  v5 = *(v4 - 8);
  result = __chkstk_darwin(v4);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v9 != 2)
    {
LABEL_12:
      sub_100031928(a1, a2);
      return &_swiftEmptyArrayStorage;
    }

    v12 = *(a1 + 16);
    v11 = *(a1 + 24);
    v10 = v11 - v12;
    if (!__OFSUB__(v11, v12))
    {
      if (v10)
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
    if (v9)
    {
      goto LABEL_10;
    }

    v10 = BYTE6(a2);
    if (!BYTE6(a2))
    {
      goto LABEL_12;
    }

LABEL_8:
    while (1)
    {
      v13 = sub_100002B00(v10, 0);
      v14 = Data._copyContents(initializing:)();
      sub_100031928(a1, a2);
      v15 = *(v5 + 8);
      v5 += 8;
      v15(v8, v4);
      result = v13;
      if (v14 == v10)
      {
        break;
      }

      __break(1u);
LABEL_10:
      v16 = HIDWORD(a1) - a1;
      if (__OFSUB__(HIDWORD(a1), a1))
      {
        goto LABEL_15;
      }

      v10 = v16;
      if (!v16)
      {
        goto LABEL_12;
      }
    }
  }

  return result;
}

uint64_t sub_1001D52F8(uint64_t a1, unint64_t a2)
{
  v2 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v2)
    {
      return static String._fromUTF8Repairing(_:)();
    }

    goto LABEL_10;
  }

  if (v2 != 2)
  {
    return static String._fromUTF8Repairing(_:)();
  }

  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  a1 = __DataStorage._bytes.getter();
  if (a1)
  {
    a1 = __DataStorage._offset.getter();
    if (__OFSUB__(v3, a1))
    {
      goto LABEL_18;
    }
  }

  if (__OFSUB__(v4, v3))
  {
    __break(1u);
LABEL_10:
    v5 = a1;
    if (a1 >> 32 >= a1)
    {
      if (!__DataStorage._bytes.getter() || !__OFSUB__(v5, __DataStorage._offset.getter()))
      {
        goto LABEL_15;
      }

LABEL_19:
      __break(1u);
    }

    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

LABEL_15:
  __DataStorage._length.getter();
  return static String._fromUTF8Repairing(_:)();
}

uint64_t sub_1001D54A4@<X0>(_OWORD *a1@<X8>)
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
    sub_100003CA0(*(v3 + 56) + 32 * v13, v21);
    *&v22 = v16;
    *(&v22 + 1) = v15;
    sub_1000279A4(v21, &v23);

    v18 = *(&v22 + 1);
    v19 = v22;
    v11 = v8;
LABEL_11:
    *v1 = v3;
    v1[1] = v4;
    v1[2] = v6;
    v1[3] = v11;
    v1[4] = v12;
    if (v18)
    {
      v20 = v1[5];
      *&v21[0] = v19;
      *(&v21[0] + 1) = v18;
      v21[1] = v23;
      v21[2] = v24;
      v20(v21);
      return sub_100013F2C(v21, &qword_1004ABB88);
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
        v23 = 0u;
        v24 = 0u;
        v22 = 0u;
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

BOOL _s10DarwinInit11DInitConfigV2eeoiySbAC_ACtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *(a1 + 1);
  v220 = *(a1 + 2);
  v219 = *(a1 + 3);
  v221 = *(a1 + 4);
  v222 = *(a1 + 5);
  v224 = a1[48];
  v209 = *(a1 + 7);
  v213 = *(a1 + 8);
  v4 = *(a1 + 88);
  v268 = *(a1 + 72);
  v269 = v4;
  v5 = *(a1 + 104);
  v6 = *(a1 + 120);
  v7 = *(a1 + 152);
  v272 = *(a1 + 136);
  v273 = v7;
  v270 = v5;
  v271 = v6;
  v211 = *(a1 + 21);
  v207 = *(a1 + 22);
  v205 = *(a1 + 23);
  v203 = a1[192];
  v8 = *(a1 + 200);
  v9 = *(a1 + 216);
  v10 = *(a1 + 248);
  v276 = *(a1 + 232);
  v277 = v10;
  v274 = v8;
  v275 = v9;
  v11 = *(a1 + 264);
  v12 = *(a1 + 280);
  v13 = *(a1 + 296);
  v281 = *(a1 + 39);
  v280 = v13;
  v279 = v12;
  v278 = v11;
  v201 = *(a1 + 160);
  v199 = *(a1 + 41);
  v195 = *(a1 + 42);
  v197 = a1[344];
  v14 = *(a1 + 23);
  v282 = *(a1 + 22);
  v15 = *(a1 + 24);
  v16 = *(a1 + 25);
  v286 = a1[416];
  v285 = v16;
  v284 = v15;
  v283 = v14;
  v193 = *(a1 + 53);
  v188 = *(a1 + 54);
  v191 = *(a1 + 55);
  v144 = *(a1 + 56);
  v189 = *(a1 + 57);
  v148 = *(a1 + 59);
  v149 = *(a1 + 58);
  v155 = *(a1 + 60);
  v154 = *(a1 + 61);
  v159 = *(a1 + 62);
  v17 = *(a2 + 264);
  v18 = *(a2 + 280);
  v19 = *(a2 + 296);
  v300 = *(a2 + 39);
  v305 = a2[416];
  v145 = *(a1 + 63);
  v150 = *(a1 + 65);
  v151 = *(a1 + 64);
  v156 = *(a1 + 67);
  v157 = *(a1 + 66);
  v158 = a1[544];
  v160 = a1[545];
  v161 = a1[546];
  v162 = a1[547];
  v164 = a1[548];
  v165 = a1[549];
  v169 = *(a1 + 69);
  v171 = a1[560];
  v172 = a1[561];
  v181 = *(a1 + 71);
  v185 = *(a1 + 72);
  v184 = *(a1 + 73);
  v186 = a1[592];
  v20 = *(a1 + 75);
  v21 = a1[608];
  v22 = *(a1 + 77);
  v23 = *(a1 + 78);
  v24 = *(a1 + 79);
  v25 = *(a1 + 80);
  v26 = a1[648];
  v27 = a1[649];
  v28 = *(a1 + 82);
  v29 = *(a1 + 83);
  v30 = *(a1 + 84);
  v31 = *(a1 + 85);
  v32 = a1[688];
  v33 = *(a1 + 89);
  v34 = *(a1 + 90);
  v289 = *(a2 + 104);
  v290 = *(a2 + 120);
  v291 = *(a2 + 136);
  v292 = *(a2 + 152);
  v287 = *(a2 + 72);
  v288 = *(a2 + 88);
  v296 = *(a2 + 248);
  v295 = *(a2 + 232);
  v294 = *(a2 + 216);
  v293 = *(a2 + 200);
  v299 = v19;
  v298 = v18;
  v297 = v17;
  v35 = *(a2 + 23);
  v301 = *(a2 + 22);
  v36 = *(a2 + 24);
  v304 = *(a2 + 25);
  v303 = v36;
  v302 = v35;
  v37 = *a2;
  v38 = *(a2 + 1);
  v214 = *(a2 + 2);
  v218 = *(a2 + 3);
  v215 = *(a2 + 4);
  v216 = *(a2 + 5);
  v217 = a2[48];
  v208 = *(a2 + 7);
  v212 = *(a2 + 8);
  v210 = *(a2 + 21);
  v206 = *(a2 + 22);
  v204 = *(a2 + 23);
  v202 = a2[192];
  v200 = *(a2 + 160);
  v198 = *(a2 + 41);
  v194 = *(a2 + 42);
  v196 = a2[344];
  v192 = *(a2 + 53);
  v187 = *(a2 + 54);
  v190 = *(a2 + 55);
  v131 = *(a2 + 56);
  v132 = *(a2 + 57);
  v133 = *(a2 + 58);
  v134 = *(a2 + 59);
  v135 = *(a2 + 60);
  v136 = *(a2 + 61);
  v137 = *(a2 + 62);
  v138 = *(a2 + 63);
  v139 = *(a2 + 64);
  v140 = *(a2 + 65);
  v141 = *(a2 + 66);
  v142 = *(a2 + 67);
  v143 = a2[544];
  v146 = a2[545];
  v147 = a2[546];
  v152 = a2[547];
  v153 = a2[548];
  v163 = a2[549];
  v166 = *(a2 + 69);
  v167 = a2[560];
  v168 = a2[561];
  v170 = *(a2 + 71);
  v173 = *(a2 + 72);
  v174 = *(a2 + 73);
  v175 = a2[592];
  v176 = *(a2 + 75);
  v177 = a2[608];
  v178 = *(a2 + 77);
  v179 = *(a2 + 78);
  v180 = *(a2 + 79);
  v182 = *(a2 + 80);
  v183 = a2[648];
  v39 = *(a2 + 83);
  v40 = *(a2 + 84);
  v41 = *(a2 + 85);
  v42 = a2[688];
  v43 = *(a2 + 89);
  v44 = *(a2 + 90);
  if (v2 == 3)
  {
    v130 = a2[649];
    v127 = v21;
    v128 = v20;
    v129 = *(a2 + 82);
    if (v37 != 3)
    {
      return 0;
    }
  }

  else
  {
    if (v37 == 3)
    {
      return 0;
    }

    v130 = a2[649];
    if (v2 == 2)
    {
      v127 = v21;
      v128 = v20;
      v129 = *(a2 + 82);
      if (v37 != 2)
      {
        return 0;
      }
    }

    else
    {
      result = 0;
      if (v37 == 2)
      {
        return result;
      }

      v127 = v21;
      v128 = v20;
      v129 = *(a2 + 82);
      if ((v37 ^ v2))
      {
        return result;
      }
    }
  }

  if (v3)
  {
    if (!v38)
    {
      return 0;
    }

    v107 = v31;
    v109 = v34;
    v123 = *(a2 + 90);
    v125 = v33;
    v103 = v28;
    v105 = v29;
    v117 = v32;
    v115 = v30;
    v113 = v27;
    v119 = v25;
    v121 = *(a2 + 89);
    v45 = v26;
    v46 = v23;
    v47 = v24;
    v48 = a2[688];
    v49 = *(a2 + 85);
    v50 = *(a2 + 84);
    v51 = *(a2 + 83);

    v52 = sub_10024E690(v3, v38);

    v39 = v51;
    v40 = v50;
    v41 = v49;
    v42 = v48;
    v24 = v47;
    v23 = v46;
    v26 = v45;
    v25 = v119;
    v43 = v121;
    v44 = v123;
    v33 = v125;
    v27 = v113;
    v30 = v115;
    v28 = v103;
    v29 = v105;
    v32 = v117;
    v34 = v109;
    v31 = v107;
    if ((v52 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v38)
  {
    return 0;
  }

  if (!v219)
  {
    v53 = v218;
    if (!v218)
    {
      v112 = v22;
      v91 = v39;
      v93 = v40;
      v95 = v41;
      v97 = v42;
      v99 = v24;
      v101 = v23;
      v102 = v26;
      v120 = v25;
      v122 = v43;
      v124 = v44;
      v126 = v33;
      v114 = v27;
      v116 = v30;
      v118 = v32;
      sub_1001D7A24(v220, 0, v221, v222);
      sub_1001D7A24(v214, 0, v215, v216);
      sub_1001D71F4(v220, 0, v221, v222);
      goto LABEL_24;
    }

LABEL_20:
    sub_1001D7A24(v220, v219, v221, v222);
    sub_1001D7A24(v214, v53, v215, v216);
    sub_1001D71F4(v220, v219, v221, v222);
    sub_1001D71F4(v214, v53, v215, v216);
    return 0;
  }

  v53 = v218;
  if (!v218)
  {
    goto LABEL_20;
  }

  v112 = v22;
  v91 = v39;
  v93 = v40;
  v95 = v41;
  v97 = v42;
  v99 = v24;
  v101 = v23;
  v102 = v26;
  v120 = v25;
  v122 = v43;
  v124 = v44;
  v126 = v33;
  v114 = v27;
  v116 = v30;
  v118 = v32;
  v266[0] = v214;
  v266[1] = v218;
  v266[2] = v215;
  v266[3] = v216;
  v267 = v217;
  v264[0] = v220;
  v264[1] = v219;
  v264[2] = v221;
  v264[3] = v222;
  v265 = v224;
  sub_1001D7A24(v220, v219, v221, v222);
  sub_1001D7A24(v214, v218, v215, v216);
  v110 = _s10DarwinInit17DInitDiavloConfigV2eeoiySbAC_ACtFZ_0(v264, v266);
  sub_1001D71F4(v214, v218, v215, v216);
  sub_1001D71F4(v220, v219, v221, v222);
  if (!v110)
  {
    return 0;
  }

LABEL_24:
  if (v213 == 1)
  {
    if (v212 != 1)
    {
      return 0;
    }
  }

  else
  {
    if (v212 == 1)
    {
      return 0;
    }

    if (v213)
    {
      if (!v212 || (v209 != v208 || v213 != v212) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        return 0;
      }
    }

    else if (v212)
    {
      return 0;
    }
  }

  v106 = v29;
  v108 = v31;
  v111 = v34;
  v55 = v268;
  v256 = v271;
  v257 = v272;
  v258 = v273;
  v254 = v269;
  v255 = v270;
  if (*(&v268 + 1) == 1)
  {
    if (*(&v287 + 1) == 1)
    {
      v104 = v28;
      *&v237 = v268;
      *(&v237 + 1) = 1;
      v240 = v271;
      *v241 = v272;
      *&v241[16] = v273;
      v238 = v269;
      v239 = v270;
      sub_100013E54(&v268, &v229, &qword_1004AB940);
      sub_100013E54(&v287, &v229, &qword_1004AB940);
      sub_100013F2C(&v237, &qword_1004AB940);
      goto LABEL_43;
    }

LABEL_37:
    v237 = v268;
    v240 = v271;
    *v241 = v272;
    *&v241[16] = v273;
    v238 = v269;
    v239 = v270;
    *&v241[32] = v287;
    *&v241[96] = v291;
    *&v241[112] = v292;
    *&v241[64] = v289;
    *&v241[80] = v290;
    *&v241[48] = v288;
    sub_100013E54(&v268, &v229, &qword_1004AB940);
    sub_100013E54(&v287, &v229, &qword_1004AB940);
    v56 = &unk_1004ABBB8;
LABEL_38:
    v57 = &v237;
LABEL_39:
    sub_100013F2C(v57, v56);
    return 0;
  }

  if (*(&v287 + 1) == 1)
  {
    goto LABEL_37;
  }

  v104 = v28;
  v229 = v287;
  v233 = v291;
  v234 = v292;
  v231 = v289;
  v232 = v290;
  v230 = v288;
  v263[4] = v291;
  v263[5] = v292;
  v263[2] = v289;
  v263[3] = v290;
  v262[3] = v271;
  v262[4] = v272;
  v263[0] = v287;
  v263[1] = v288;
  v262[5] = v273;
  v262[1] = v269;
  v262[2] = v270;
  v262[0] = v268;
  v58 = _s10DarwinInit18DInitInstallConfigV2eeoiySbAC_ACtFZ_0(v262, v263);
  sub_100013E54(&v268, &v237, &qword_1004AB940);
  sub_100013E54(&v287, &v237, &qword_1004AB940);
  sub_100013F2C(&v229, &qword_1004AB940);
  v237 = v55;
  v240 = v256;
  *v241 = v257;
  *&v241[16] = v258;
  v238 = v254;
  v239 = v255;
  sub_100013F2C(&v237, &qword_1004AB940);
  if ((v58 & 1) == 0)
  {
    return 0;
  }

LABEL_43:
  if (v211)
  {
    if (!v210)
    {
      return 0;
    }

    v59 = sub_10024E6E4(v211, v210);

    if ((v59 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v210)
  {
    return 0;
  }

  if (v207)
  {
    if (!v206)
    {
      return 0;
    }

    v60 = sub_10024E738(v207, v206);

    if ((v60 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v206)
  {
    return 0;
  }

  if (v205)
  {
    if (!v204)
    {
      return 0;
    }

    v61 = sub_10024E98C(v205, v204);

    if ((v61 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v204)
  {
    return 0;
  }

  if (v203 == 3)
  {
    if (v202 != 3)
    {
      return 0;
    }
  }

  else if (v202 == 3 || (_s10DarwinInit17DInitResultConfigV2eeoiySbAC_ACtFZ_0(v203, v202) & 1) == 0)
  {
    return 0;
  }

  v62 = v274;
  v249 = v279;
  v250 = v280;
  v251 = v281;
  v245 = v275;
  v246 = v276;
  v247 = v277;
  v248 = v278;
  if (!*(&v274 + 1))
  {
    if (!*(&v293 + 1))
    {
      v237 = v274;
      *&v241[16] = v279;
      *&v241[32] = v280;
      *&v241[48] = v281;
      v238 = v275;
      v239 = v276;
      v240 = v277;
      *v241 = v278;
      sub_100013E54(&v274, &v229, &qword_1004AB948);
      sub_100013E54(&v293, &v229, &qword_1004AB948);
      sub_100013F2C(&v237, &qword_1004AB948);
      goto LABEL_70;
    }

    goto LABEL_68;
  }

  if (!*(&v293 + 1))
  {
LABEL_68:
    *&v241[16] = v279;
    *&v241[32] = v280;
    v238 = v275;
    v239 = v276;
    v240 = v277;
    *v241 = v278;
    v243 = v299;
    v242 = v298;
    *&v241[120] = v297;
    *&v241[72] = v294;
    *&v241[88] = v295;
    v237 = v274;
    *&v241[48] = v281;
    *&v241[56] = v293;
    v244 = v300;
    *&v241[104] = v296;
    sub_100013E54(&v274, &v229, &qword_1004AB948);
    sub_100013E54(&v293, &v229, &qword_1004AB948);
    v56 = &unk_1004ABBC0;
    goto LABEL_38;
  }

  v229 = v293;
  v233 = v297;
  v234 = v298;
  v235 = v299;
  *&v236[0] = v300;
  v230 = v294;
  v231 = v295;
  v232 = v296;
  v256 = v295;
  v257 = v296;
  v254 = v293;
  v255 = v294;
  v261 = v300;
  v259 = v298;
  v260 = v299;
  v258 = v297;
  v252[2] = v276;
  v252[1] = v275;
  v253 = v281;
  v252[6] = v280;
  v252[5] = v279;
  v252[3] = v277;
  v252[4] = v278;
  v252[0] = v274;
  sub_100013E54(&v274, &v237, &qword_1004AB948);
  sub_100013E54(&v293, &v237, &qword_1004AB948);
  v63 = _s10DarwinInit15DInitUserConfigV2eeoiySbAC_ACtFZ_0(v252, &v254);
  sub_100013F2C(&v229, &qword_1004AB948);
  v237 = v62;
  *&v241[16] = v249;
  *&v241[32] = v250;
  *&v241[48] = v251;
  v238 = v245;
  v239 = v246;
  v240 = v247;
  *v241 = v248;
  sub_100013F2C(&v237, &qword_1004AB948);
  if (!v63)
  {
    return 0;
  }

LABEL_70:
  v64 = v200 & 0xFF00;
  if ((v201 & 0xFF00) == 0x300)
  {
    if (v64 != 768)
    {
      return 0;
    }
  }

  else if (v64 == 768 || (_s10DarwinInit14DInitLogConfigV2eeoiySbAC_ACtFZ_0(v201, v200) & 1) == 0)
  {
    return 0;
  }

  if (v199)
  {
    if (!v198)
    {
      return 0;
    }

    v65 = sub_10024EBC4(v199, v198);

    if ((v65 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v198)
  {
    return 0;
  }

  if (v197)
  {
    if (!v196)
    {
      return 0;
    }
  }

  else
  {
    v66 = v196;
    if (v195 != v194)
    {
      v66 = 1;
    }

    if (v66)
    {
      return 0;
    }
  }

  v239 = v284;
  v240 = v285;
  v241[0] = v286;
  v237 = v282;
  v238 = v283;
  *&v241[24] = v302;
  *&v241[40] = v303;
  *&v241[56] = v304;
  v241[72] = v305;
  *&v241[8] = v301;
  if (*(&v285 + 1) == 2)
  {
    if (*(&v304 + 1) == 2)
    {
      goto LABEL_92;
    }

    goto LABEL_90;
  }

  if (*(&v304 + 1) == 2)
  {
LABEL_90:
    v235 = *&v241[32];
    v236[0] = *&v241[48];
    *(v236 + 9) = *&v241[57];
    v231 = v239;
    v232 = v240;
    v233 = *v241;
    v234 = *&v241[16];
    v229 = v237;
    v230 = v238;
    sub_100013E54(&v301, &v245, &qword_1004AB950);
    sub_100013E54(&v282, &v245, &qword_1004AB950);
    v56 = &unk_1004ABBC8;
    v57 = &v229;
    goto LABEL_39;
  }

  v231 = v303;
  v232 = v304;
  LOBYTE(v233) = v305;
  v229 = v301;
  v230 = v302;
  v247 = v284;
  v248 = v285;
  LOBYTE(v249) = v286;
  v245 = v282;
  v246 = v283;
  sub_100013E54(&v301, v228, &qword_1004AB950);
  sub_100013E54(&v282, v228, &qword_1004AB950);
  v67 = _s10DarwinInit19DInitTailSpinConfigV2eeoiySbAC_ACtFZ_0(&v245, &v229);
  sub_100013F2C(&v301, &qword_1004AB950);
  sub_100013F2C(&v282, &qword_1004AB950);
  if ((v67 & 1) == 0)
  {
    return 0;
  }

LABEL_92:
  if (v193)
  {
    if (!v192 || (sub_10024ECF8(v193, v192) & 1) == 0)
    {
      return 0;
    }
  }

  else if (v192)
  {
    return 0;
  }

  if (v191)
  {
    if (!v190 || (v188 != v187 || v191 != v190) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v190)
  {
    return 0;
  }

  if (v189)
  {
    if (!v132 || (v144 != v131 || v189 != v132) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v132)
  {
    return 0;
  }

  if (v148)
  {
    if (!v134 || (v149 != v133 || v148 != v134) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v134)
  {
    return 0;
  }

  if (v154)
  {
    if (!v136 || (v155 != v135 || v154 != v136) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v136)
  {
    return 0;
  }

  if (v145)
  {
    if (!v138 || (v159 != v137 || v145 != v138) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v138)
  {
    return 0;
  }

  if (v150)
  {
    if (!v140 || (v151 != v139 || v150 != v140) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v140)
  {
    return 0;
  }

  if (v156)
  {
    if (!v142 || (v157 != v141 || v156 != v142) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v142)
  {
    return 0;
  }

  if (v158 == 2)
  {
    v68 = v124;
    v69 = v126;
    v70 = v118;
    v71 = v116;
    v72 = v104;
    v73 = v114;
    v74 = v120;
    v75 = v122;
    v76 = v102;
    v77 = v99;
    v78 = v101;
    v79 = v97;
    v81 = v93;
    v80 = v95;
    v82 = v91;
    if (v143 != 2)
    {
      return 0;
    }
  }

  else
  {
    result = 0;
    if (v143 == 2)
    {
      return result;
    }

    v68 = v124;
    v69 = v126;
    v70 = v118;
    v71 = v116;
    v72 = v104;
    v73 = v114;
    v74 = v120;
    v75 = v122;
    v76 = v102;
    v77 = v99;
    v78 = v101;
    v79 = v97;
    v81 = v93;
    v80 = v95;
    v82 = v91;
    if ((v143 ^ v158))
    {
      return result;
    }
  }

  v92 = v82;
  v94 = v81;
  v96 = v80;
  v98 = v79;
  v100 = v77;
  if (v160 == 2)
  {
    if (v146 != 2)
    {
      return 0;
    }
  }

  else
  {
    result = 0;
    if (v146 == 2 || ((v146 ^ v160) & 1) != 0)
    {
      return result;
    }
  }

  if (v161 == 2)
  {
    if (v147 != 2)
    {
      return 0;
    }
  }

  else
  {
    result = 0;
    if (v147 == 2 || ((v147 ^ v161) & 1) != 0)
    {
      return result;
    }
  }

  if (v162 == 2)
  {
    if (v152 != 2)
    {
      return 0;
    }
  }

  else
  {
    result = 0;
    if (v152 == 2 || ((v152 ^ v162) & 1) != 0)
    {
      return result;
    }
  }

  if (v164 == 2)
  {
    if (v153 != 2)
    {
      return 0;
    }
  }

  else
  {
    result = 0;
    if (v153 == 2 || ((v153 ^ v164) & 1) != 0)
    {
      return result;
    }
  }

  if (v165 == 5)
  {
    if (v163 != 5)
    {
      return 0;
    }
  }

  else
  {
    if (v163 == 5)
    {
      return 0;
    }

    v83 = 7169394;
    if (v165 <= 1)
    {
      if (v165)
      {
        v85 = 0xE700000000000000;
        v84 = 0x7665642D6D6572;
      }

      else
      {
        v85 = 0xE300000000000000;
        v84 = 7169394;
      }
    }

    else if (v165 == 2)
    {
      v85 = 0xE400000000000000;
      v84 = 1701736302;
    }

    else if (v165 == 3)
    {
      v84 = 0;
      v85 = 0xE000000000000000;
    }

    else
    {
      v85 = 0xE700000000000000;
      v84 = 0x746C7561666564;
    }

    if (v163 <= 1)
    {
      if (v163)
      {
        v225 = 0xE700000000000000;
        v83 = 0x7665642D6D6572;
      }

      else
      {
        v225 = 0xE300000000000000;
      }
    }

    else if (v163 == 2)
    {
      v225 = 0xE400000000000000;
      v83 = 1701736302;
    }

    else if (v163 == 3)
    {
      v83 = 0;
      v225 = 0xE000000000000000;
    }

    else
    {
      v225 = 0xE700000000000000;
      v83 = 0x746C7561666564;
    }

    if (v84 == v83 && v85 == v225)
    {
    }

    else
    {
      v223 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v223 & 1) == 0)
      {
        return 0;
      }
    }
  }

  if (v169)
  {
    if (!v166 || (sub_10024DC98(v169, v166) & 1) == 0)
    {
      return 0;
    }
  }

  else if (v166)
  {
    return 0;
  }

  if (v171 == 2)
  {
    if (v167 != 2)
    {
      return 0;
    }
  }

  else
  {
    result = 0;
    if (v167 == 2 || ((v167 ^ v171) & 1) != 0)
    {
      return result;
    }
  }

  if (v172 == 2)
  {
    if (v168 != 2)
    {
      return 0;
    }
  }

  else
  {
    result = 0;
    if (v168 == 2 || ((v168 ^ v172) & 1) != 0)
    {
      return result;
    }
  }

  if ((~v181 & 0xF000000000000007) != 0)
  {
    *&v237 = v181;
    if ((~v170 & 0xF000000000000007) != 0)
    {
      v228[0] = v170;
      sub_1001C8518(v181);
      sub_1001C8518(v170);
      sub_1001C8518(v181);
      v226 = _s10DarwinInit4JSONO2eeoiySbAC_ACtFZ_0(&v237, v228);

      sub_1001C855C(v181);
      if ((v226 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_219;
    }

    sub_1001C8518(v181);
    sub_1001C8518(v170);
    sub_1001C8518(v181);

LABEL_217:
    sub_1001C855C(v181);
    sub_1001C855C(v170);
    return 0;
  }

  sub_1001C8518(v181);
  sub_1001C8518(v170);
  if ((~v170 & 0xF000000000000007) != 0)
  {
    goto LABEL_217;
  }

  sub_1001C855C(v181);
LABEL_219:
  if (v184)
  {
    if (!v174 || (v185 != v173 || v184 != v174) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v174)
  {
    return 0;
  }

  if (v186 == 2)
  {
    if (v175 != 2)
    {
      return 0;
    }
  }

  else
  {
    result = 0;
    if (v175 == 2 || ((v175 ^ v186) & 1) != 0)
    {
      return result;
    }
  }

  if (v127)
  {
    if (!v177)
    {
      return 0;
    }
  }

  else
  {
    v86 = v177;
    if (v128 != v176)
    {
      v86 = 1;
    }

    if (v86)
    {
      return 0;
    }
  }

  if (v112)
  {
    if (!v178)
    {
      return 0;
    }

    v227 = sub_10024E690(v112, v178);

    if ((v227 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v178)
  {
    return 0;
  }

  if (v100)
  {
    if (!v180 || (v78 != v179 || v100 != v180) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v180)
  {
    return 0;
  }

  if (v76)
  {
    if (!v183)
    {
      return 0;
    }
  }

  else
  {
    v87 = v183;
    if (v74 != v182)
    {
      v87 = 1;
    }

    if (v87)
    {
      return 0;
    }
  }

  if (v73 == 2)
  {
    v88 = v72;
    if (v130 != 2)
    {
      return 0;
    }

    goto LABEL_260;
  }

  result = 0;
  if (v130 != 2)
  {
    v88 = v72;
    if (((v130 ^ v73) & 1) == 0)
    {
LABEL_260:
      if (v88)
      {
        if (!v129)
        {
          return 0;
        }

        v89 = sub_10024F188(v72, v129);

        if ((v89 & 1) == 0)
        {
          return 0;
        }
      }

      else if (v129)
      {
        return 0;
      }

      if (v71)
      {
        if (!v94 || (v106 != v92 || v71 != v94) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
          return 0;
        }
      }

      else if (v94)
      {
        return 0;
      }

      if (v70)
      {
        if (!v98)
        {
          return 0;
        }
      }

      else
      {
        v90 = v98;
        if (v108 != v96)
        {
          v90 = 1;
        }

        if (v90)
        {
          return 0;
        }
      }

      if (v111)
      {
        return v68 && (v69 == v75 && v111 == v68 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0);
      }

      return !v68;
    }
  }

  return result;
}

uint64_t sub_1001D6F74(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

uint64_t sub_1001D6F88(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

uint64_t sub_1001D6F9C(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1001D6FE0(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

unint64_t sub_1001D7020()
{
  result = qword_1004AB960;
  if (!qword_1004AB960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AB960);
  }

  return result;
}

uint64_t _s10DarwinInit11DInitConfigV10CodingKeysO8rawValueAESgSS_tcfC_0()
{
  v0 = _findStringSwitchCaseWithCache(cases:string:cache:)();

  if (v0 >= 0x2B)
  {
    return 43;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_1001D70C8()
{
  result = qword_1004AB988;
  if (!qword_1004AB988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AB988);
  }

  return result;
}

unint64_t sub_1001D714C()
{
  result = qword_1004AB990;
  if (!qword_1004AB990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AB990);
  }

  return result;
}

unint64_t sub_1001D71A0()
{
  result = qword_1004AB9B0;
  if (!qword_1004AB9B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AB9B0);
  }

  return result;
}

void sub_1001D71F4(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a2)
  {

    sub_100031914(a3, a4);
  }
}

unint64_t sub_1001D7240()
{
  result = qword_1004AB9B8;
  if (!qword_1004AB9B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AB9B8);
  }

  return result;
}

unint64_t sub_1001D7294()
{
  result = qword_1004AB9C0;
  if (!qword_1004AB9C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AB9C0);
  }

  return result;
}

unint64_t sub_1001D72E8()
{
  result = qword_1004AB9E8;
  if (!qword_1004AB9E8)
  {
    sub_100003A94(&qword_1004AB9E0);
    sub_1001D736C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AB9E8);
  }

  return result;
}

unint64_t sub_1001D736C()
{
  result = qword_1004AB9F0;
  if (!qword_1004AB9F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AB9F0);
  }

  return result;
}

unint64_t sub_1001D73C0()
{
  result = qword_1004ABA00;
  if (!qword_1004ABA00)
  {
    sub_100003A94(&qword_1004AB9F8);
    sub_1001D7444();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004ABA00);
  }

  return result;
}

unint64_t sub_1001D7444()
{
  result = qword_1004ABA08;
  if (!qword_1004ABA08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004ABA08);
  }

  return result;
}

unint64_t sub_1001D7498()
{
  result = qword_1004ABA10;
  if (!qword_1004ABA10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004ABA10);
  }

  return result;
}

unint64_t sub_1001D74EC()
{
  result = qword_1004ABA18;
  if (!qword_1004ABA18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004ABA18);
  }

  return result;
}

unint64_t sub_1001D7540()
{
  result = qword_1004ABA20;
  if (!qword_1004ABA20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004ABA20);
  }

  return result;
}

unint64_t sub_1001D7594()
{
  result = qword_1004ABA30;
  if (!qword_1004ABA30)
  {
    sub_100003A94(&qword_1004ABA28);
    sub_1001D7618();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004ABA30);
  }

  return result;
}

unint64_t sub_1001D7618()
{
  result = qword_1004ABA38;
  if (!qword_1004ABA38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004ABA38);
  }

  return result;
}

unint64_t sub_1001D766C()
{
  result = qword_1004ABA40;
  if (!qword_1004ABA40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004ABA40);
  }

  return result;
}

unint64_t sub_1001D76C0()
{
  result = qword_1004ABA48;
  if (!qword_1004ABA48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004ABA48);
  }

  return result;
}

unint64_t sub_1001D7714()
{
  result = qword_1004ABA50;
  if (!qword_1004ABA50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004ABA50);
  }

  return result;
}

unint64_t sub_1001D7768()
{
  result = qword_1004ABA60;
  if (!qword_1004ABA60)
  {
    sub_100003A94(&qword_1004ABA58);
    sub_1001D77EC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004ABA60);
  }

  return result;
}

unint64_t sub_1001D77EC()
{
  result = qword_1004ABA68;
  if (!qword_1004ABA68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004ABA68);
  }

  return result;
}

unint64_t sub_1001D7840()
{
  result = qword_1004ABA78;
  if (!qword_1004ABA78)
  {
    sub_100003A94(&qword_1004ABA70);
    sub_1001D8A58(&qword_1004A90E0, &type metadata accessor for URL);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004ABA78);
  }

  return result;
}

unint64_t sub_1001D7934()
{
  result = qword_1004ABA90;
  if (!qword_1004ABA90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004ABA90);
  }

  return result;
}

uint64_t sub_1001D7988(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_100003A94(&qword_1004AB9A0);
    sub_1001D8A58(a2, type metadata accessor for DInitCryptexConfig);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1001D7A24(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a2)
  {

    sub_100031994(a3, a4);
  }
}

unint64_t sub_1001D7A70()
{
  result = qword_1004ABAA8;
  if (!qword_1004ABAA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004ABAA8);
  }

  return result;
}

unint64_t sub_1001D7AC4()
{
  result = qword_1004ABAB0;
  if (!qword_1004ABAB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004ABAB0);
  }

  return result;
}

unint64_t sub_1001D7B18()
{
  result = qword_1004ABAB8;
  if (!qword_1004ABAB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004ABAB8);
  }

  return result;
}

uint64_t sub_1001D7B6C(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_100003A94(&qword_1004AB9C8);
    sub_1001D8A58(a2, type metadata accessor for DInitPackageConfig);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1001D7C08()
{
  result = qword_1004ABAD0;
  if (!qword_1004ABAD0)
  {
    sub_100003A94(&qword_1004AB9E0);
    sub_1001D7C8C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004ABAD0);
  }

  return result;
}

unint64_t sub_1001D7C8C()
{
  result = qword_1004ABAD8;
  if (!qword_1004ABAD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004ABAD8);
  }

  return result;
}

unint64_t sub_1001D7CE0()
{
  result = qword_1004ABAE0;
  if (!qword_1004ABAE0)
  {
    sub_100003A94(&qword_1004AB9F8);
    sub_1001D7D64();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004ABAE0);
  }

  return result;
}

unint64_t sub_1001D7D64()
{
  result = qword_1004ABAE8;
  if (!qword_1004ABAE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004ABAE8);
  }

  return result;
}

unint64_t sub_1001D7DB8()
{
  result = qword_1004ABAF0;
  if (!qword_1004ABAF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004ABAF0);
  }

  return result;
}

unint64_t sub_1001D7E0C()
{
  result = qword_1004ABAF8;
  if (!qword_1004ABAF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004ABAF8);
  }

  return result;
}

unint64_t sub_1001D7E60()
{
  result = qword_1004ABB00;
  if (!qword_1004ABB00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004ABB00);
  }

  return result;
}

unint64_t sub_1001D7EB4()
{
  result = qword_1004ABB08;
  if (!qword_1004ABB08)
  {
    sub_100003A94(&qword_1004ABA28);
    sub_1001D7F38();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004ABB08);
  }

  return result;
}

unint64_t sub_1001D7F38()
{
  result = qword_1004ABB10;
  if (!qword_1004ABB10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004ABB10);
  }

  return result;
}

unint64_t sub_1001D7F8C()
{
  result = qword_1004ABB18;
  if (!qword_1004ABB18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004ABB18);
  }

  return result;
}

unint64_t sub_1001D7FE0()
{
  result = qword_1004ABB20;
  if (!qword_1004ABB20)
  {
    sub_100003A94(&qword_1004ABA58);
    sub_1001D8064();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004ABB20);
  }

  return result;
}

unint64_t sub_1001D8064()
{
  result = qword_1004ABB28;
  if (!qword_1004ABB28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004ABB28);
  }

  return result;
}

unint64_t sub_1001D80B8()
{
  result = qword_1004ABB30;
  if (!qword_1004ABB30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004ABB30);
  }

  return result;
}

unint64_t sub_1001D810C()
{
  result = qword_1004ABB38;
  if (!qword_1004ABB38)
  {
    sub_100003A94(&qword_1004ABA70);
    sub_1001D8A58(&qword_1004A9058, &type metadata accessor for URL);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004ABB38);
  }

  return result;
}

unint64_t sub_1001D81C8()
{
  result = qword_1004ABB40;
  if (!qword_1004ABB40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004ABB40);
  }

  return result;
}

unint64_t sub_1001D8220()
{
  result = qword_1004ABB48;
  if (!qword_1004ABB48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004ABB48);
  }

  return result;
}

unint64_t sub_1001D8278()
{
  result = qword_1004ABB50;
  if (!qword_1004ABB50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004ABB50);
  }

  return result;
}

unint64_t sub_1001D82D0()
{
  result = qword_1004ABB58;
  if (!qword_1004ABB58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004ABB58);
  }

  return result;
}

unint64_t sub_1001D836C()
{
  result = qword_1004ABB70;
  if (!qword_1004ABB70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004ABB70);
  }

  return result;
}

uint64_t sub_1001D83C0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v2 = *(a1 + 696);
  v3 = *(a1 + 704);
  *a2 = v2;
  a2[1] = v3;
  return sub_1001D6F9C(v2);
}

uint64_t sub_1001D83D4(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = *(a2 + 696);
  sub_1001D6F9C(*a1);
  result = sub_1001D6FE0(v5);
  *(a2 + 696) = v3;
  *(a2 + 704) = v4;
  return result;
}

uint64_t sub_1001D8430(uint64_t a1)
{
  v1 = *(a1 + 8) >> 60;
  if (((4 * v1) & 0xC) != 0)
  {
    return 16 - ((4 * v1) & 0xC | (v1 >> 2));
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1001D8458(uint64_t a1)
{
  v1 = *(a1 + 8);
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

uint64_t sub_1001D847C(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_1001D84A0(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1001D84B8(uint64_t a1)
{
  v1 = *(a1 + 48);
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

uint64_t sub_1001D84DC(uint64_t a1)
{
  v1 = *(a1 + 56);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  v3 = v2 <= 0;
  if (v2 < 0)
  {
    v2 = -1;
  }

  if (v3)
  {
    return 0;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1001D8500(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1001D8520(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 728))
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

uint64_t sub_1001D857C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
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
    *(result + 712) = 0u;
    *(result + 696) = 0u;
    *(result + 680) = 0u;
    *(result + 664) = 0u;
    *(result + 648) = 0u;
    *(result + 632) = 0u;
    *(result + 616) = 0u;
    *(result + 600) = 0u;
    *(result + 584) = 0u;
    *(result + 568) = 0u;
    *(result + 552) = 0u;
    *(result + 536) = 0u;
    *(result + 520) = 0u;
    *(result + 504) = 0u;
    *(result + 488) = 0u;
    *(result + 472) = 0u;
    *(result + 456) = 0u;
    *(result + 440) = 0u;
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 728) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 728) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DInitConfig.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xD6)
  {
    goto LABEL_17;
  }

  if (a2 + 42 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 42) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 42;
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

      return (*a1 | (v4 << 8)) - 42;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 42;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x2B;
  v8 = v6 - 43;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for DInitConfig.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 42 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 42) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xD6)
  {
    v4 = 0;
  }

  if (a2 > 0xD5)
  {
    v5 = ((a2 - 214) >> 8) + 1;
    *result = a2 + 42;
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
    *result = a2 + 42;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_1001D87EC(uint64_t a1, uint64_t a2, char a3)
{
  if ((a3 & 1) == 0)
  {
  }

  return result;
}

double sub_1001D8850(_OWORD *a1)
{
  result = 0.0;
  a1[14] = 0u;
  a1[15] = 0u;
  a1[12] = 0u;
  a1[13] = 0u;
  a1[10] = 0u;
  a1[11] = 0u;
  a1[8] = 0u;
  a1[9] = 0u;
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

uint64_t sub_1001D8928(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1001D8990(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1001D89F8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1001D8A58(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t _s10DarwinInit10MementoSSHO14generateConfig3for5users6groups10ldapServerS2S_SaySSGSgAJSSSgtFZ_0(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v48._countAndFlagsBits = a1;
  v48._object = a2;
  sub_1000039E8(&qword_1004A6B08);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_100376BB0;
  *(v8 + 32) = 0xD000000000000014;
  *(v8 + 40) = 0x800000010043EAC0;
  strcpy((v8 + 48), "memento-keys");
  *(v8 + 61) = 0;
  *(v8 + 62) = -5120;
  v47 = a6;
  if (a3)
  {
    v9 = *(a3 + 16);
    if (v9)
    {
      v10 = (a3 + 40);
      do
      {
        v11 = *(v10 - 1);
        v12 = *v10;
        v14 = *(v8 + 16);
        v13 = *(v8 + 24);
        v15 = v13 >> 1;
        v16 = v14 + 1;

        if (v13 >> 1 <= v14)
        {
          v8 = sub_100011A4C((v13 > 1), v14 + 1, 1, v8);
          v13 = *(v8 + 24);
          v15 = v13 >> 1;
        }

        *(v8 + 16) = v16;
        v17 = v8 + 16 * v14;
        *(v17 + 32) = 29997;
        *(v17 + 40) = 0xE200000000000000;
        v18 = v14 + 2;
        if (v15 < v18)
        {
          v8 = sub_100011A4C((v13 > 1), v18, 1, v8);
        }

        *(v8 + 16) = v18;
        v19 = v8 + 16 * v16;
        *(v19 + 32) = v11;
        *(v19 + 40) = v12;
        v10 += 2;
        --v9;
      }

      while (v9);
    }
  }

  if (a4)
  {
    v20 = *(a4 + 16);
    if (v20)
    {
      v21 = (a4 + 40);
      do
      {
        v22 = *(v21 - 1);
        v23 = *v21;
        v24 = *(v8 + 16);
        v25 = *(v8 + 24);
        v26 = v25 >> 1;
        v27 = v24 + 1;

        if (v25 >> 1 <= v24)
        {
          v8 = sub_100011A4C((v25 > 1), v24 + 1, 1, v8);
          v25 = *(v8 + 24);
          v26 = v25 >> 1;
        }

        *(v8 + 16) = v27;
        v28 = v8 + 16 * v24;
        *(v28 + 32) = 26413;
        *(v28 + 40) = 0xE200000000000000;
        v29 = v24 + 2;
        if (v26 < v29)
        {
          v8 = sub_100011A4C((v25 > 1), v29, 1, v8);
        }

        *(v8 + 16) = v29;
        v30 = v8 + 16 * v27;
        *(v30 + 32) = v22;
        *(v30 + 40) = v23;
        v21 += 2;
        --v20;
      }

      while (v20);
    }
  }

  if (v47)
  {
    v31 = *(v8 + 16);
    v32 = *(v8 + 24);
    v33 = v32 >> 1;
    v34 = v31 + 1;

    if (v32 >> 1 <= v31)
    {
      v8 = sub_100011A4C((v32 > 1), v31 + 1, 1, v8);
      v32 = *(v8 + 24);
      v33 = v32 >> 1;
    }

    *(v8 + 16) = v34;
    v35 = v8 + 16 * v31;
    *(v35 + 32) = 29485;
    *(v35 + 40) = 0xE200000000000000;
    if (v33 < (v31 + 2))
    {
      v8 = sub_100011A4C((v32 > 1), v31 + 2, 1, v8);
    }

    *(v8 + 16) = v31 + 2;
    v36 = v8 + 16 * v34;
    *(v36 + 32) = a5;
    *(v36 + 40) = v47;
  }

  _StringGuts.grow(_:)(88);
  v37._countAndFlagsBits = 0x735520686374614DLL;
  v37._object = 0xEB00000000207265;
  String.append(_:)(v37);
  String.append(_:)(v48);
  v38._countAndFlagsBits = 0xD00000000000003ELL;
  v38._object = 0x800000010043EAE0;
  String.append(_:)(v38);
  sub_1000039E8(&qword_1004A6B48);
  sub_10004AF7C();
  v39 = BidirectionalCollection<>.joined(separator:)();
  v41 = v40;

  v42._countAndFlagsBits = v39;
  v42._object = v41;
  String.append(_:)(v42);

  v43._countAndFlagsBits = 0x6120686374614D0ALL;
  v43._object = 0xEB000000000A6C6CLL;
  String.append(_:)(v43);
  return 0;
}

uint64_t _s10DarwinInit10MementoSSHO5setup3for6configSbSS_AC6ConfigVtFZ_0(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (!(a3 | a4))
  {
    if (qword_1004A9F20 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    sub_1000270B4(v6, qword_1004B00F8);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v7, v8, "users and groups can't be nil at the same time", v9, 2u);
    }

    goto LABEL_15;
  }

  v10 = _s10DarwinInit10MementoSSHO14generateConfig3for5users6groups10ldapServerS2S_SaySSGSgAJSSSgtFZ_0(a1, a2, a3, a4, a5, a6);
  v12 = v11;
  if (qword_1004A9F20 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  sub_1000270B4(v13, qword_1004B00F8);

  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v26 = v17;
    *v16 = 136315138;
    *(v16 + 4) = sub_1000026C0(v10, v12, &v26);
    _os_log_impl(&_mh_execute_header, v14, v15, "Memento SSH configuration:\n%s", v16, 0xCu);
    sub_100003C3C(v17);
  }

  if (qword_1004A9EB8 != -1)
  {
    swift_once();
  }

  v18 = type metadata accessor for FilePath();
  sub_1000270B4(v18, kDInitSSHConfig);
  v19._countAndFlagsBits = v10;
  v19._object = v12;
  FilePath.save(_:append:)(v19, 1);

  if (v20)
  {
    swift_errorRetain();
    v7 = Logger.logObject.getter();
    v21 = static os_log_type_t.error.getter();

    if (!os_log_type_enabled(v7, v21))
    {

      return 0;
    }

    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    *v22 = 138412290;
    swift_errorRetain();
    v24 = _swift_stdlib_bridgeErrorToNSError();
    *(v22 + 4) = v24;
    *v23 = v24;
    _os_log_impl(&_mh_execute_header, v7, v21, "Failed to save Memento ssh config: %@", v22, 0xCu);
    sub_10019AC78(v23);

LABEL_15:

    return 0;
  }

  return 1;
}

uint64_t sub_1001D923C()
{
  if (*v0)
  {
    return 0xD000000000000010;
  }

  else
  {
    return 0x7373616C63627573;
  }
}

uint64_t sub_1001D9288@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x7373616C63627573 && a2 == 0xEF7265626D756E5FLL;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000010 && 0x800000010043D6C0 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

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

uint64_t sub_1001D9374(uint64_t a1)
{
  v2 = sub_1001DC1B4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001D93B0(uint64_t a1)
{
  v2 = sub_1001DC1B4();

  return CodingKey.debugDescription.getter(a1, v2);
}

DarwinInit::DInitTailSpinConfigSubclassOptions __swiftcall DInitTailSpinConfigSubclassOptions.init(subclass_number:subclass_enabled:)(Swift::UInt8 subclass_number, Swift::Bool subclass_enabled)
{
  if (subclass_enabled)
  {
    v2 = 256;
  }

  else
  {
    v2 = 0;
  }

  return (v2 & 0xFF00 | subclass_number);
}

uint64_t sub_1001D9420@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1001DC004(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = BYTE1(result) & 1;
  }

  return result;
}

uint64_t DInitTailSpinConfigSubclassOptions.encode(to:)(void *a1)
{
  v3 = sub_1000039E8(&qword_1004ABBD0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v8[-v5];
  sub_10000E2A8(a1, a1[3]);
  sub_1001DC1B4();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v8[15] = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v1)
  {
    v8[14] = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t static DInitTailSpinConfigSubclassOptions.== infix(_:_:)(__int16 a1, __int16 a2)
{
  if (a1 == a2)
  {
    return ((a2 & 0x100) == 0) ^ ((a1 & 0x100) >> 8);
  }

  else
  {
    return 0;
  }
}

void DInitTailSpinConfigSubclassOptions.hash(into:)(int a1, __int16 a2)
{
  v2 = HIBYTE(a2);
  Hasher._combine(_:)(a2);
  Hasher._combine(_:)(v2 & 1);
}

Swift::Int DInitTailSpinConfigSubclassOptions.hashValue.getter(__int16 a1)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1);
  Hasher._combine(_:)(HIBYTE(a1) & 1);
  return Hasher._finalize()();
}

Swift::Int sub_1001D96D4()
{
  v1 = v0[1];
  v2 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v2);
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

void sub_1001D9734()
{
  v1 = v0[1];
  Hasher._combine(_:)(*v0);
  Hasher._combine(_:)(v1);
}

Swift::Int sub_1001D9774()
{
  v1 = v0[1];
  v2 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v2);
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

uint64_t sub_1001D97D0()
{
  v1 = 0x6E655F7373616C63;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000010;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x756E5F7373616C63;
  }
}

uint64_t sub_1001D9844@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1001DD714(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1001D986C(uint64_t a1)
{
  v2 = sub_1001DC208();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001D98A8(uint64_t a1)
{
  v2 = sub_1001DC208();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1001D9924@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1001DBDD0(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 1) = BYTE1(result) & 1;
    *(a2 + 8) = v5;
  }

  return result;
}

uint64_t DInitTailSpinConfigClassOptions.encode(to:)(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000039E8(&qword_1004ABBE0);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v11 - v8;
  sub_10000E2A8(a1, a1[3]);
  sub_1001DC208();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v14 = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v3)
  {
    v13 = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    v11[1] = a3;
    v12 = 2;
    sub_1000039E8(&qword_1004ABBF0);
    sub_1001DDAB8(&qword_1004ABBF8, sub_1001DC25C);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_1001D9B88(void *a1)
{
  if (v1[1])
  {
    v2 = 256;
  }

  else
  {
    v2 = 0;
  }

  return DInitTailSpinConfigClassOptions.encode(to:)(a1, v2 | *v1, *(v1 + 1));
}

uint64_t sub_1001D9BC8(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (a1[1])
  {
    v2 = 256;
  }

  else
  {
    v2 = 0;
  }

  if (a2[1])
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  return sub_1001DB880(v2 | *a1, *(a1 + 1), v3 | *a2, *(a2 + 1));
}

void DInitTailSpinConfigClassOptions.hash(into:)(int a1, __int16 a2, uint64_t a3)
{
  v4 = HIBYTE(a2);
  Hasher._combine(_:)(a2);
  Hasher._combine(_:)(v4 & 1);
  if (a3)
  {
    Hasher._combine(_:)(1u);
    v5 = *(a3 + 16);
    Hasher._combine(_:)(v5);
    if (v5)
    {
      v6 = (a3 + 33);
      do
      {
        v7 = *v6;
        Hasher._combine(_:)(*(v6 - 1));
        Hasher._combine(_:)(v7);
        v6 += 2;
        --v5;
      }

      while (v5);
    }
  }

  else
  {
    Hasher._combine(_:)(0);
  }
}

Swift::Int DInitTailSpinConfigClassOptions.hashValue.getter(__int16 a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  DInitTailSpinConfigClassOptions.hash(into:)(&v5, a1 & 0x1FF, a2);
  return Hasher._finalize()();
}

Swift::Int sub_1001D9CE0()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 1);
  Hasher.init(_seed:)();
  if (v2)
  {
    v4 = 256;
  }

  else
  {
    v4 = 0;
  }

  DInitTailSpinConfigClassOptions.hash(into:)(&v6, v4 | v1, v3);
  return Hasher._finalize()();
}

void sub_1001D9D48(int a1)
{
  if (v1[1])
  {
    v2 = 256;
  }

  else
  {
    v2 = 0;
  }

  DInitTailSpinConfigClassOptions.hash(into:)(a1, v2 | *v1, *(v1 + 1));
}

Swift::Int sub_1001D9D68()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 1);
  Hasher.init(_seed:)();
  if (v2)
  {
    v4 = 256;
  }

  else
  {
    v4 = 0;
  }

  DInitTailSpinConfigClassOptions.hash(into:)(&v6, v4 | v1, v3);
  return Hasher._finalize()();
}

uint64_t DInitTailSpinConfigOptions.full_sampling_period_set.setter(uint64_t result, char a2)
{
  *v2 = result;
  *(v2 + 8) = a2 & 1;
  return result;
}

uint64_t DInitTailSpinConfigOptions.oncore_sampling_period_set.setter(uint64_t result, char a2)
{
  *(v2 + 16) = result;
  *(v2 + 24) = a2 & 1;
  return result;
}

uint64_t Config.Tailspin.oncoreSamplingPeriodSet.setter(uint64_t result, char a2)
{
  *(v2 + 32) = result;
  *(v2 + 40) = a2 & 1;
  return result;
}

uint64_t Config.Cryptex.Cache.retainedCryptexes.setter(uint64_t a1)
{

  *(v1 + 48) = a1;
  return result;
}

unint64_t sub_1001D9E4C()
{
  v1 = 0x735F726566667562;
  if (*v0 != 2)
  {
    v1 = 0x6F635F7373616C63;
  }

  v2 = 0xD000000000000018;
  if (*v0)
  {
    v2 = 0xD00000000000001ALL;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_1001D9EE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1001DD840(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1001D9F0C(uint64_t a1)
{
  v2 = sub_1001DC2B0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001D9F48(uint64_t a1)
{
  v2 = sub_1001DC2B0();

  return CodingKey.debugDescription.getter(a1, v2);
}

void __swiftcall DInitTailSpinConfigOptions.init()(DarwinInit::DInitTailSpinConfigOptions *__return_ptr retstr)
{
  retstr->full_sampling_period_set.value = 0;
  retstr->full_sampling_period_set.is_nil = 1;
  *(&retstr->oncore_sampling_period_set.value + 7) = 0;
  BYTE6(retstr->buffer_size_set.value) = 1;
  *(&retstr->class_configs.value._rawValue + 5) = 0;
  BYTE4(retstr[1].full_sampling_period_set.value) = 1;
  *(&retstr[1].oncore_sampling_period_set.value + 3) = 0;
}

void __swiftcall DInitTailSpinConfigOptions.init(full_sampling_period_set:oncore_sampling_period_set:buffer_size_set:class_configs:)(DarwinInit::DInitTailSpinConfigOptions *__return_ptr retstr, Swift::UInt64_optional full_sampling_period_set, Swift::UInt64_optional oncore_sampling_period_set, Swift::Int_optional buffer_size_set, Swift::OpaquePointer_optional class_configs)
{
  retstr->full_sampling_period_set.value = full_sampling_period_set.value;
  retstr->full_sampling_period_set.is_nil = full_sampling_period_set.is_nil;
  *(&retstr->oncore_sampling_period_set.value + 7) = oncore_sampling_period_set.value;
  BYTE6(retstr->buffer_size_set.value) = oncore_sampling_period_set.is_nil;
  *(&retstr->class_configs.value._rawValue + 5) = buffer_size_set.value;
  BYTE4(retstr[1].full_sampling_period_set.value) = buffer_size_set.is_nil;
  *(&retstr[1].oncore_sampling_period_set.value + 3) = class_configs.value._rawValue;
}

double DInitTailSpinConfigOptions.init(from:)@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1001DBB38(a1, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = v5;
    result = *&v7;
    *(a2 + 32) = v7;
    *(a2 + 48) = v8;
  }

  return result;
}

uint64_t DInitTailSpinConfigOptions.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_1000039E8(&qword_1004ABC08);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v10[-v7];
  sub_10000E2A8(a1, a1[3]);
  sub_1001DC2B0();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v14 = 0;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  if (!v2)
  {
    v13 = 1;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v12 = 2;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v11 = *(v3 + 48);
    v10[15] = 3;
    sub_1000039E8(&qword_1004ABC18);
    sub_1001DC304(&qword_1004ABC20, sub_1001DC37C);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

BOOL sub_1001DA290(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v5[2] = *(a1 + 32);
  v6 = *(a1 + 48);
  v3 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v3;
  v7[2] = *(a2 + 32);
  v8 = *(a2 + 48);
  return _s10DarwinInit26DInitTailSpinConfigOptionsV2eeoiySbAC_ACtFZ_0(v5, v7);
}

void DInitTailSpinConfigOptions.hash(into:)(uint64_t a1)
{
  v2 = v1;
  if (*(v2 + 8) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v4 = *v2;
    Hasher._combine(_:)(1u);
    Hasher._combine(_:)(v4);
  }

  if (*(v2 + 24) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v5 = *(v2 + 16);
    Hasher._combine(_:)(1u);
    Hasher._combine(_:)(v5);
  }

  if (*(v2 + 40) != 1)
  {
    v7 = *(v2 + 32);
    Hasher._combine(_:)(1u);
    Hasher._combine(_:)(v7);
    v6 = *(v2 + 48);
    if (v6)
    {
      goto LABEL_9;
    }

LABEL_13:
    Hasher._combine(_:)(0);
    return;
  }

  Hasher._combine(_:)(0);
  v6 = *(v2 + 48);
  if (!v6)
  {
    goto LABEL_13;
  }

LABEL_9:
  Hasher._combine(_:)(1u);

  sub_1001D2C2C(a1, v6);
}

Swift::Int DInitTailSpinConfigOptions.hashValue.getter()
{
  Hasher.init(_seed:)();
  DInitTailSpinConfigOptions.hash(into:)(v1);
  return Hasher._finalize()();
}

Swift::Int sub_1001DA424()
{
  Hasher.init(_seed:)();
  DInitTailSpinConfigOptions.hash(into:)(v1);
  return Hasher._finalize()();
}

__n128 DInitTailSpinConfig.init(configuration_options:tailspin_enabled:)@<Q0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v3 = *(a1 + 48);
  *a3 = 50;
  v4 = *(a1 + 16);
  *(a3 + 8) = *a1;
  *(a3 + 24) = v4;
  result = *(a1 + 32);
  *(a3 + 40) = result;
  *(a3 + 56) = v3;
  *(a3 + 64) = a2;
  return result;
}

DarwinInit::DInitTailSpinConfig::CodingKeys_optional __swiftcall DInitTailSpinConfig.CodingKeys.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v2._countAndFlagsBits = rawValue._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1004859C0, v2);

  if (v3 == 1)
  {
    v4.value = DarwinInit_DInitTailSpinConfig_CodingKeys_tailspin_enabled;
  }

  else
  {
    v4.value = DarwinInit_DInitTailSpinConfig_CodingKeys_unknownDefault;
  }

  if (v3)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

unint64_t Config.TailspinVersionOneKeys.stringValue.getter(char a1)
{
  if (a1)
  {
    return 0xD000000000000010;
  }

  else
  {
    return 0xD000000000000015;
  }
}

uint64_t sub_1001DA548(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0xD000000000000010;
  }

  else
  {
    v3 = 0xD000000000000015;
  }

  if (v2)
  {
    v4 = "cryptex-cache-invalidation-id";
  }

  else
  {
    v4 = "configuration_options";
  }

  v5 = v4 | 0x8000000000000000;
  if (*a2)
  {
    v6 = 0xD000000000000010;
  }

  else
  {
    v6 = 0xD000000000000015;
  }

  if (*a2)
  {
    v7 = "configuration_options";
  }

  else
  {
    v7 = "cryptex-cache-invalidation-id";
  }

  if (v3 == v6 && v5 == (v7 | 0x8000000000000000))
  {
    v9 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v9 & 1;
}

Swift::Int sub_1001DA5F8()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1001DA67C()
{
  String.hash(into:)();
}

Swift::Int sub_1001DA6EC()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1001DA76C@<X0>(Swift::String *a1@<X0>, char *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&off_1004859C0, *a1);

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

void sub_1001DA7CC(unint64_t *a1@<X8>)
{
  if (*v1)
  {
    v2 = 0xD000000000000010;
  }

  else
  {
    v2 = 0xD000000000000015;
  }

  if (*v1)
  {
    v3 = "configuration_options";
  }

  else
  {
    v3 = "cryptex-cache-invalidation-id";
  }

  *a1 = v2;
  a1[1] = v3 | 0x8000000000000000;
}

unint64_t sub_1001DA810()
{
  if (*v0)
  {
    return 0xD000000000000010;
  }

  else
  {
    return 0xD000000000000015;
  }
}

uint64_t sub_1001DA850@<X0>(Swift::String string@<0:X0, 8:X1>, char *a2@<X8>)
{
  object = string._object;
  v3._countAndFlagsBits = string._countAndFlagsBits;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&off_1004859C0, v3);

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

uint64_t sub_1001DA8B4(uint64_t a1)
{
  v2 = sub_1001DC4B0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001DA8F0(uint64_t a1)
{
  v2 = sub_1001DC4B0();

  return CodingKey.debugDescription.getter(a1, v2);
}

__n128 DInitTailSpinConfig.init(from:)@<Q0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1001DB920(a1, v6);
  if (!v2)
  {
    v5 = v6[3];
    *(a2 + 32) = v6[2];
    *(a2 + 48) = v5;
    *(a2 + 64) = v7;
    result = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = result;
  }

  return result;
}

uint64_t DInitTailSpinConfig.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_1000039E8(&qword_1004ABC38);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v11[-v7];
  sub_10000E2A8(a1, a1[3]);
  sub_1001DC4B0();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v9 = *(v3 + 24);
  v12 = *(v3 + 8);
  v13 = v9;
  v14 = *(v3 + 40);
  v15 = *(v3 + 56);
  v11[15] = 0;
  sub_1001DC504();
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  if (!v2)
  {
    LOBYTE(v12) = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1001DAB48(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 48);
  v7[2] = *(a1 + 32);
  v7[3] = v2;
  v8 = *(a1 + 64);
  v3 = *(a1 + 16);
  v7[0] = *a1;
  v7[1] = v3;
  v4 = *(a2 + 48);
  v9[2] = *(a2 + 32);
  v9[3] = v4;
  v10 = *(a2 + 64);
  v5 = *(a2 + 16);
  v9[0] = *a2;
  v9[1] = v5;
  return _s10DarwinInit19DInitTailSpinConfigV2eeoiySbAC_ACtFZ_0(v7, v9) & 1;
}

void DInitTailSpinConfig.hash(into:)(uint64_t a1)
{
  Hasher._combine(_:)(*v1);
  if (*(v1 + 56) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    DInitTailSpinConfigOptions.hash(into:)(a1);
  }

  Hasher._combine(_:)(*(v1 + 64) & 1);
}

Swift::Int DInitTailSpinConfig.hashValue.getter()
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(*v0);
  v1 = *(v0 + 56);
  if (v1 == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v2 = *(v0 + 48);
    v3 = *(v0 + 40);
    v4 = *(v0 + 32);
    v5 = *(v0 + 24);
    v6 = *(v0 + 16);
    v8[9] = *(v0 + 8);
    v9 = v6 & 1;
    v10 = v5;
    v11 = v4 & 1;
    v12 = v3;
    v13 = v2 & 1;
    v14 = v1;
    Hasher._combine(_:)(1u);
    DInitTailSpinConfigOptions.hash(into:)(v8);
  }

  Hasher._combine(_:)(*(v0 + 64) & 1);
  return Hasher._finalize()();
}

Swift::Int sub_1001DAD34()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v4 = *(v0 + 16);
  v3 = *(v0 + 24);
  v6 = *(v0 + 32);
  v5 = *(v0 + 40);
  v8 = *(v0 + 48);
  v7 = *(v0 + 56);
  v9 = *(v0 + 64);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  if (v7 == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v11[9] = v2;
    v12 = v4 & 1;
    v13 = v3;
    v14 = v6 & 1;
    v15 = v5;
    v16 = v8 & 1;
    v17 = v7;
    Hasher._combine(_:)(1u);
    DInitTailSpinConfigOptions.hash(into:)(v11);
  }

  Hasher._combine(_:)(v9);
  return Hasher._finalize()();
}

void sub_1001DAE10(uint64_t a1)
{
  v3 = *(v1 + 56);
  v4 = *(v1 + 64);
  Hasher._combine(_:)(*v1);
  if (v3 == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    DInitTailSpinConfigOptions.hash(into:)(a1);
  }

  Hasher._combine(_:)(v4);
}

Swift::Int sub_1001DAED8()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v4 = *(v0 + 16);
  v3 = *(v0 + 24);
  v6 = *(v0 + 32);
  v5 = *(v0 + 40);
  v8 = *(v0 + 48);
  v7 = *(v0 + 56);
  v9 = *(v0 + 64);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  if (v7 == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v11[9] = v2;
    v12 = v4 & 1;
    v13 = v3;
    v14 = v6 & 1;
    v15 = v5;
    v16 = v8 & 1;
    v17 = v7;
    Hasher._combine(_:)(1u);
    DInitTailSpinConfigOptions.hash(into:)(v11);
  }

  Hasher._combine(_:)(v9);
  return Hasher._finalize()();
}

Swift::Void __swiftcall DInitTailSpinConfig.processConfig(tailspin_config:)(Swift::OpaquePointer *tailspin_config)
{
  v2 = v1;
  rawValue = tailspin_config->_rawValue;
  sub_1001DC558(tailspin_config->_rawValue, *(v1 + 64));
  if (*(v1 + 56) == 1)
  {
    if (qword_1004A9F20 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_1000270B4(v5, qword_1004B00F8);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v6, v7, "Applying default tailspin configuration.", v8, 2u);
    }

    v9 = *v2;

    sub_1001DC6C4(rawValue, v9);
  }

  else
  {
    DInitTailSpinConfigOptions.processOptions(tailspin_config:)(tailspin_config);
  }
}

Swift::Void __swiftcall DInitTailSpinConfigOptions.processOptions(tailspin_config:)(Swift::OpaquePointer *tailspin_config)
{
  if (qword_1004A9F20 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_1000270B4(v3, qword_1004B00F8);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, v5, "Applying custom tailspin configuration.", v6, 2u);
  }

  if (*(v1 + 8))
  {
    if (*(v1 + 24))
    {
      goto LABEL_7;
    }
  }

  else
  {
    v8 = *v1;
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 134217984;
      *(v11 + 4) = v8;
      _os_log_impl(&_mh_execute_header, v9, v10, "Applying tailspin full_sampling_period_set configuration value %llu", v11, 0xCu);
    }

    sub_1001DCC9C(tailspin_config->_rawValue, v8);
    if (*(v1 + 24))
    {
LABEL_7:
      if (*(v1 + 40))
      {
        goto LABEL_8;
      }

      goto LABEL_16;
    }
  }

  v12 = *(v1 + 16);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 134217984;
    *(v15 + 4) = v12;
    _os_log_impl(&_mh_execute_header, v13, v14, "Applying tailspin oncore_sampling_period_set configuration value %llu", v15, 0xCu);
  }

  sub_1001DCB30(tailspin_config->_rawValue, v12);
  if (*(v1 + 40))
  {
LABEL_8:
    v7 = *(v1 + 48);
    if (!v7)
    {
      return;
    }

    goto LABEL_19;
  }

LABEL_16:
  v16 = *(v1 + 32);
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 134217984;
    *(v19 + 4) = v16;
    _os_log_impl(&_mh_execute_header, v17, v18, "Applying tailspin buffer_size_set configuration value %ld", v19, 0xCu);
  }

  sub_1001DC6C4(tailspin_config->_rawValue, v16);
  v7 = *(v1 + 48);
  if (v7)
  {
LABEL_19:
    v39 = *(v7 + 16);
    if (v39)
    {
      rawValue = tailspin_config->_rawValue;
      v21 = 0;
      v38 = v7 + 32;
      do
      {
        v22 = (v38 + 16 * v21);
        v23 = *v22;
        v24 = v22[1];
        v25 = *(v22 + 1);
        swift_bridgeObjectRetain_n();
        v26 = Logger.logObject.getter();
        v27 = static os_log_type_t.info.getter();
        if (os_log_type_enabled(v26, v27))
        {
          v28 = swift_slowAlloc();
          *v28 = 16777728;
          *(v28 + 4) = v23;
          *(v28 + 5) = 1024;
          *(v28 + 7) = v24;

          _os_log_impl(&_mh_execute_header, v26, v27, "Setting tailspin kdbg_filter_class %hhu to %{BOOL}d", v28, 0xBu);
        }

        else
        {
        }

        sub_1001DC830(rawValue, v23, v24);
        if (v25)
        {
          v29 = *(v25 + 16);
          if (v29)
          {
            v37 = v21;

            v30 = (v25 + 33);
            do
            {
              v31 = *(v30 - 1);
              v32 = *v30;

              v33 = Logger.logObject.getter();
              v34 = static os_log_type_t.info.getter();
              if (os_log_type_enabled(v33, v34))
              {
                v35 = rawValue;
                v36 = swift_slowAlloc();
                *v36 = 16777984;
                *(v36 + 4) = v23;

                *(v36 + 5) = 256;
                *(v36 + 7) = v31;
                *(v36 + 8) = 1024;
                *(v36 + 10) = v32;
                _os_log_impl(&_mh_execute_header, v33, v34, "Setting tailspin kdbg_filter_subclass for class:%hhu, subclass:%hhu to %{BOOL}d", v36, 0xEu);
                rawValue = v35;
              }

              else
              {
              }

              sub_1001DC9AC(rawValue, v23, v31, v32);
              v30 += 2;
              --v29;
            }

            while (v29);

            v21 = v37;
          }
        }

        ++v21;
      }

      while (v21 != v39);
    }
  }
}

uint64_t _s10DarwinInit19DInitTailSpinConfigV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v30 = v2;
  v31 = v3;
  v4 = *(a1 + 8);
  v6 = *(a1 + 40);
  v5 = *(a1 + 48);
  v7 = *(a1 + 56);
  v9 = *(a2 + 8);
  v8 = *(a2 + 16);
  v10 = *(a2 + 32);
  v11 = *(a2 + 48);
  v12 = *(a2 + 56);
  if (v7 != 1)
  {
    if (v12 != 1)
    {
      if (*(a1 + 16))
      {
        if ((v8 & 1) == 0)
        {
          goto LABEL_8;
        }
      }

      else if (v8 & 1 | (v4 != v9))
      {
        goto LABEL_8;
      }

      if (*(a1 + 32))
      {
        if ((v10 & 1) == 0)
        {
          goto LABEL_8;
        }
      }

      else if (v10 & 1 | (*(a1 + 24) != *(a2 + 24)))
      {
        goto LABEL_8;
      }

      if (v5)
      {
        if ((v11 & 1) == 0)
        {
          goto LABEL_8;
        }
      }

      else if (v11 & 1 | (v6 != *(a2 + 40)))
      {
        goto LABEL_8;
      }

      if (v7)
      {
        if (v12)
        {
          v20 = a1;
          v21 = a2;
          v22 = sub_10024DF64(*(a1 + 56), *(a2 + 56));
          a2 = v21;
          v23 = v22;
          a1 = v20;
          if (v23)
          {
            goto LABEL_4;
          }
        }
      }

      else if (!v12)
      {
        goto LABEL_4;
      }

LABEL_8:
      v13 = 0;
      return v13 & 1;
    }

LABEL_7:
    v15 = a2;
    v27 = *(a2 + 40);
    v28 = *(a2 + 48);
    v24 = *(a2 + 24);
    v25 = *(a2 + 32);
    v16 = *(a1 + 24);
    v17 = *(a1 + 32);
    v26 = *(a2 + 56);
    v18 = *(a1 + 56);
    v19 = *(a1 + 16);
    sub_1001DD9C4(a1, v29);
    sub_1001DD9C4(v15, v29);
    sub_1001DD9FC(v4, v19, v16, v17, v6, v5, v18);
    sub_1001DD9FC(v9, v8, v24, v25, v27, v28, v26);
    goto LABEL_8;
  }

  if (v12 != 1)
  {
    goto LABEL_7;
  }

LABEL_4:
  v13 = *(a1 + 64) ^ *(a2 + 64) ^ 1;
  return v13 & 1;
}

BOOL _s10DarwinInit26DInitTailSpinConfigOptionsV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (*(a1 + 8))
  {
    if (!*(a2 + 8))
    {
      return 0;
    }
  }

  else
  {
    if (*a1 != *a2)
    {
      v2 = 1;
    }

    if (v2)
    {
      return 0;
    }
  }

  v3 = *(a2 + 24);
  if (*(a1 + 24))
  {
    if (!*(a2 + 24))
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 16) != *(a2 + 16))
    {
      v3 = 1;
    }

    if (v3)
    {
      return 0;
    }
  }

  v4 = *(a2 + 40);
  if (*(a1 + 40))
  {
    if (!*(a2 + 40))
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 32) != *(a2 + 32))
    {
      v4 = 1;
    }

    if (v4)
    {
      return 0;
    }
  }

  v5 = *(a1 + 48);
  v6 = *(a2 + 48);
  if (v5)
  {
    return v6 && (sub_10024DF64(v5, v6) & 1) != 0;
  }

  return !v6;
}

uint64_t sub_1001DB880(int a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  result = 0;
  if (a1 == a3 && (((a1 ^ a3) >> 8) & 1) == 0)
  {
    if (a2)
    {
      if (a4)
      {
        v6 = *(a2 + 16);
        if (v6 == *(a4 + 16))
        {
          if (v6 && a2 != a4)
          {
            v7 = (a2 + 33);
            v8 = (a4 + 33);
            result = 1;
            while (*(v7 - 1) == *(v8 - 1) && ((*v7 ^ *v8) & 1) == 0)
            {
              v7 += 2;
              v8 += 2;
              if (!--v6)
              {
                return result;
              }
            }

            return 0;
          }

          return 1;
        }
      }
    }

    else if (!a4)
    {
      return 1;
    }

    return 0;
  }

  return result;
}

uint64_t sub_1001DB920@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1000039E8(&qword_1004ABCD0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v18 - v7;
  sub_10000E2A8(a1, a1[3]);
  sub_1001DC4B0();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100003C3C(a1);
  }

  v30 = 0;
  sub_1001DDA10();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v9 = v23;
  v10 = v24;
  v18 = v25;
  v19 = v26;
  v20 = v27;
  v21 = v28;
  v22 = v29;
  LOBYTE(v23) = 1;
  v11 = KeyedDecodingContainer.decode(_:forKey:)();
  (*(v6 + 8))(v8, v5);
  result = sub_100003C3C(a1);
  *a2 = 50;
  *(a2 + 8) = v9;
  v13 = v18;
  v14 = v19;
  *(a2 + 16) = v10;
  *(a2 + 24) = v13;
  v15 = v20;
  v16 = v21;
  *(a2 + 32) = v14;
  *(a2 + 40) = v15;
  v17 = v22;
  *(a2 + 48) = v16;
  *(a2 + 56) = v17;
  *(a2 + 64) = v11 & 1;
  return result;
}

uint64_t sub_1001DBB38@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1000039E8(&qword_1004ABCE0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v19 - v7;
  sub_10000E2A8(a1, a1[3]);
  sub_1001DC2B0();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100003C3C(a1);
  }

  v27 = 0;
  v9 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v11 = v10;
  v12 = v9;
  v26 = 1;
  v13 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v23 = v14;
  v21 = v13;
  v25 = 2;
  v15 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v20 = v16;
  v19 = v15;
  sub_1000039E8(&qword_1004ABC18);
  v24 = 3;
  sub_1001DC304(&qword_1004ABCE8, sub_1001DDA64);
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  (*(v6 + 8))(v8, v5);
  v17 = v22;
  result = sub_100003C3C(a1);
  *a2 = v12;
  *(a2 + 8) = v11 & 1;
  *(a2 + 16) = v21;
  *(a2 + 24) = v23 & 1;
  *(a2 + 32) = v19;
  *(a2 + 40) = v20 & 1;
  *(a2 + 48) = v17;
  return result;
}

uint64_t sub_1001DBDD0(void *a1)
{
  v3 = sub_1000039E8(&qword_1004ABCF8);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v11[-v5];
  sub_10000E2A8(a1, a1[3]);
  sub_1001DC208();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    return sub_100003C3C(a1);
  }

  v11[31] = 0;
  v7 = KeyedDecodingContainer.decode(_:forKey:)();
  v11[30] = 1;
  v9 = KeyedDecodingContainer.decode(_:forKey:)();
  sub_1000039E8(&qword_1004ABBF0);
  v11[15] = 2;
  sub_1001DDAB8(&qword_1004ABD00, sub_1001DDB30);
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  (*(v4 + 8))(v6, v3);
  sub_100003C3C(a1);
  if (v9)
  {
    v10 = 256;
  }

  else
  {
    v10 = 0;
  }

  return v10 & 0xFFFFFF00 | v7;
}

uint64_t sub_1001DC004(void *a1)
{
  v3 = sub_1000039E8(&qword_1004ABD10);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v11[-v5];
  sub_10000E2A8(a1, a1[3]);
  sub_1001DC1B4();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    return sub_100003C3C(a1);
  }

  v11[15] = 0;
  v7 = KeyedDecodingContainer.decode(_:forKey:)();
  v11[14] = 1;
  v8 = KeyedDecodingContainer.decode(_:forKey:)();
  (*(v4 + 8))(v6, v3);
  sub_100003C3C(a1);
  if (v8)
  {
    v10 = 256;
  }

  else
  {
    v10 = 0;
  }

  return v10 & 0xFFFFFF00 | v7;
}

unint64_t sub_1001DC1B4()
{
  result = qword_1004ABBD8;
  if (!qword_1004ABBD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004ABBD8);
  }

  return result;
}

unint64_t sub_1001DC208()
{
  result = qword_1004ABBE8;
  if (!qword_1004ABBE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004ABBE8);
  }

  return result;
}

unint64_t sub_1001DC25C()
{
  result = qword_1004ABC00;
  if (!qword_1004ABC00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004ABC00);
  }

  return result;
}

unint64_t sub_1001DC2B0()
{
  result = qword_1004ABC10;
  if (!qword_1004ABC10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004ABC10);
  }

  return result;
}

uint64_t sub_1001DC304(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    sub_100003A94(&qword_1004ABC18);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1001DC37C()
{
  result = qword_1004ABC28;
  if (!qword_1004ABC28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004ABC28);
  }

  return result;
}

uint64_t sub_1001DC3D0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000039E8(&qword_1004ABC30);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001DC440(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000039E8(&qword_1004ABC30);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_1001DC4B0()
{
  result = qword_1004ABC40;
  if (!qword_1004ABC40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004ABC40);
  }

  return result;
}

unint64_t sub_1001DC504()
{
  result = qword_1004ABC48;
  if (!qword_1004ABC48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004ABC48);
  }

  return result;
}

void sub_1001DC558(uint64_t a1, uint64_t a2)
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v4 = off_1004C3450;
  v11 = off_1004C3450;
  if (!off_1004C3450)
  {
    v5 = sub_1001DDB98();
    v9[3] = dlsym(v5, "tailspin_enabled_set");
    off_1004C3450 = v9[3];
    v4 = v9[3];
  }

  _Block_object_dispose(&v8, 8);
  if (v4)
  {
    v4(a1, a2);
  }

  else
  {
    v6 = +[NSAssertionHandler currentHandler];
    v7 = [NSString stringWithUTF8String:"void shim_tailspin_enabled_set(tailspin_config_t, _Bool)"];
    [v6 handleFailureInFunction:v7 file:@"BridgingHeader.h" lineNumber:77 description:{@"%s", dlerror()}];

    __break(1u);
  }
}

void sub_1001DC6AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1001DC6C4(uint64_t a1, uint64_t a2)
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v4 = off_1004C3460;
  v11 = off_1004C3460;
  if (!off_1004C3460)
  {
    v5 = sub_1001DDB98();
    v9[3] = dlsym(v5, "tailspin_buffer_size_set");
    off_1004C3460 = v9[3];
    v4 = v9[3];
  }

  _Block_object_dispose(&v8, 8);
  if (v4)
  {
    v4(a1, a2);
  }

  else
  {
    v6 = +[NSAssertionHandler currentHandler];
    v7 = [NSString stringWithUTF8String:"void shim_tailspin_buffer_size_set(tailspin_config_t, size_t)"];
    [v6 handleFailureInFunction:v7 file:@"BridgingHeader.h" lineNumber:79 description:{@"%s", dlerror()}];

    __break(1u);
  }
}

void sub_1001DC818(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1001DC830(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v6 = off_1004C3468;
  v13 = off_1004C3468;
  if (!off_1004C3468)
  {
    v7 = sub_1001DDB98();
    v11[3] = dlsym(v7, "tailspin_kdbg_filter_class_set");
    off_1004C3468 = v11[3];
    v6 = v11[3];
  }

  _Block_object_dispose(&v10, 8);
  if (v6)
  {
    v6(a1, a2, a3);
  }

  else
  {
    v8 = +[NSAssertionHandler currentHandler];
    v9 = [NSString stringWithUTF8String:"void shim_tailspin_kdbg_filter_class_set(tailspin_config_t, uint8_t, _Bool)"];
    [v8 handleFailureInFunction:v9 file:@"BridgingHeader.h" lineNumber:80 description:{@"%s", dlerror()}];

    __break(1u);
  }
}

void sub_1001DC994(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1001DC9AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v8 = off_1004C3470;
  v15 = off_1004C3470;
  if (!off_1004C3470)
  {
    v9 = sub_1001DDB98();
    v13[3] = dlsym(v9, "tailspin_kdbg_filter_subclass_set");
    off_1004C3470 = v13[3];
    v8 = v13[3];
  }

  _Block_object_dispose(&v12, 8);
  if (v8)
  {
    v8(a1, a2, a3, a4);
  }

  else
  {
    v10 = +[NSAssertionHandler currentHandler];
    v11 = [NSString stringWithUTF8String:"void shim_tailspin_kdbg_filter_subclass_set(tailspin_config_t, uint8_t, uint8_t, _Bool)"];
    [v10 handleFailureInFunction:v11 file:@"BridgingHeader.h" lineNumber:81 description:{@"%s", dlerror()}];

    __break(1u);
  }
}

void sub_1001DCB18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1001DCB30(uint64_t a1, uint64_t a2)
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v4 = off_1004C3478;
  v11 = off_1004C3478;
  if (!off_1004C3478)
  {
    v5 = sub_1001DDB98();
    v9[3] = dlsym(v5, "tailspin_oncore_sampling_period_set");
    off_1004C3478 = v9[3];
    v4 = v9[3];
  }

  _Block_object_dispose(&v8, 8);
  if (v4)
  {
    v4(a1, a2);
  }

  else
  {
    v6 = +[NSAssertionHandler currentHandler];
    v7 = [NSString stringWithUTF8String:"void shim_tailspin_oncore_sampling_period_set(tailspin_config_t, uint64_t)"];
    [v6 handleFailureInFunction:v7 file:@"BridgingHeader.h" lineNumber:78 description:{@"%s", dlerror()}];

    __break(1u);
  }
}

void sub_1001DCC84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1001DCC9C(uint64_t a1, uint64_t a2)
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v4 = off_1004C3480;
  v11 = off_1004C3480;
  if (!off_1004C3480)
  {
    v5 = sub_1001DDB98();
    v9[3] = dlsym(v5, "tailspin_full_sampling_period_set");
    off_1004C3480 = v9[3];
    v4 = v9[3];
  }

  _Block_object_dispose(&v8, 8);
  if (v4)
  {
    v4(a1, a2);
  }

  else
  {
    v6 = +[NSAssertionHandler currentHandler];
    v7 = [NSString stringWithUTF8String:"void shim_tailspin_full_sampling_period_set(tailspin_config_t, uint64_t)"];
    [v6 handleFailureInFunction:v7 file:@"BridgingHeader.h" lineNumber:76 description:{@"%s", dlerror()}];

    __break(1u);
  }
}

void sub_1001DCDF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

unint64_t sub_1001DCE0C()
{
  result = qword_1004ABC50;
  if (!qword_1004ABC50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004ABC50);
  }

  return result;
}

unint64_t sub_1001DCE64()
{
  result = qword_1004ABC58;
  if (!qword_1004ABC58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004ABC58);
  }

  return result;
}

unint64_t sub_1001DCEBC()
{
  result = qword_1004ABC60;
  if (!qword_1004ABC60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004ABC60);
  }

  return result;
}

unint64_t sub_1001DCF14()
{
  result = qword_1004ABC68;
  if (!qword_1004ABC68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004ABC68);
  }

  return result;
}

unint64_t sub_1001DCF6C()
{
  result = qword_1004ABC70;
  if (!qword_1004ABC70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004ABC70);
  }

  return result;
}

unint64_t sub_1001DCFC4()
{
  result = qword_1004ABC78;
  if (!qword_1004ABC78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004ABC78);
  }

  return result;
}

unint64_t sub_1001DD01C()
{
  result = qword_1004ABC80;
  if (!qword_1004ABC80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004ABC80);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DInitTailSpinConfigSubclassOptions(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 65281 <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (a2 + 65281 < 0xFF0000)
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
      return (*a1 | (v4 << 16)) - 65281;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 16)) - 65281;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 65281;
    }
  }

LABEL_17:
  v6 = *(a1 + 1);
  v7 = v6 >= 2;
  v8 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for DInitTailSpinConfigSubclassOptions(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65281 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65281 < 0xFF0000)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 16) + 1;
    *result = a2 - 255;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 2) = v5;
      }

      else
      {
        *(result + 2) = v5;
      }
    }

    else if (v4)
    {
      *(result + 2) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 2) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 2) = 0;
  }

  else if (v4)
  {
    *(result + 2) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *(result + 1) = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_1001DD1F0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 56))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 48);
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

uint64_t sub_1001DD24C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 56) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 56) = 0;
    }

    if (a2)
    {
      *(result + 48) = a2;
    }
  }

  return result;
}

__n128 sub_1001DD2BC(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1001DD2E0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x7FFFFFFD && *(a1 + 65))
  {
    return (*a1 + 2147483646);
  }

  v3 = *(a1 + 56);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v5 = -1;
  }

  else
  {
    v5 = v4;
  }

  v6 = v5 - 1;
  if (v4 < 1)
  {
    v7 = -1;
  }

  else
  {
    v7 = v6;
  }

  return (v7 + 1);
}

uint64_t sub_1001DD348(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 - 2147483646;
    if (a3 > 0x7FFFFFFD)
    {
      *(result + 65) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFD)
    {
      *(result + 65) = 0;
    }

    if (a2)
    {
      *(result + 56) = a2 + 1;
    }
  }

  return result;
}

unint64_t sub_1001DD400()
{
  result = qword_1004ABC88;
  if (!qword_1004ABC88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004ABC88);
  }

  return result;
}

unint64_t sub_1001DD458()
{
  result = qword_1004ABC90;
  if (!qword_1004ABC90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004ABC90);
  }

  return result;
}

unint64_t sub_1001DD4B0()
{
  result = qword_1004ABC98;
  if (!qword_1004ABC98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004ABC98);
  }

  return result;
}

unint64_t sub_1001DD508()
{
  result = qword_1004ABCA0;
  if (!qword_1004ABCA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004ABCA0);
  }

  return result;
}

unint64_t sub_1001DD560()
{
  result = qword_1004ABCA8;
  if (!qword_1004ABCA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004ABCA8);
  }

  return result;
}

unint64_t sub_1001DD5B8()
{
  result = qword_1004ABCB0;
  if (!qword_1004ABCB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004ABCB0);
  }

  return result;
}

unint64_t sub_1001DD610()
{
  result = qword_1004ABCB8;
  if (!qword_1004ABCB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004ABCB8);
  }

  return result;
}

unint64_t sub_1001DD668()
{
  result = qword_1004ABCC0;
  if (!qword_1004ABCC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004ABCC0);
  }

  return result;
}

unint64_t sub_1001DD6C0()
{
  result = qword_1004ABCC8;
  if (!qword_1004ABCC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004ABCC8);
  }

  return result;
}

uint64_t sub_1001DD714(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x756E5F7373616C63 && a2 == 0xEC0000007265626DLL;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E655F7373616C63 && a2 == 0xED000064656C6261 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000010 && 0x800000010043D690 == a2)
  {

    return 2;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

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

uint64_t sub_1001DD840(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000018 && 0x800000010043D610 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD00000000000001ALL && 0x800000010043D630 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x735F726566667562 && a2 == 0xEF7465735F657A69 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6F635F7373616C63 && a2 == 0xED0000736769666ELL)
  {

    return 3;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v5)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_1001DD9FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a7 != 1)
  {
  }

  return result;
}

unint64_t sub_1001DDA10()
{
  result = qword_1004ABCD8;
  if (!qword_1004ABCD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004ABCD8);
  }

  return result;
}

unint64_t sub_1001DDA64()
{
  result = qword_1004ABCF0;
  if (!qword_1004ABCF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004ABCF0);
  }

  return result;
}

uint64_t sub_1001DDAB8(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    sub_100003A94(&qword_1004ABBF0);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1001DDB30()
{
  result = qword_1004ABD08;
  if (!qword_1004ABD08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004ABD08);
  }

  return result;
}

void *sub_1001DDB98()
{
  v4[0] = 0;
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v0 = qword_1004C3458;
  v10 = qword_1004C3458;
  if (!qword_1004C3458)
  {
    v4[1] = _NSConcreteStackBlock;
    v4[2] = 3221225472;
    v4[3] = sub_1001DDD4C;
    v4[4] = &unk_100484AE8;
    v5 = &v7;
    v6 = v4;
    v11 = *off_10048C280;
    v12 = 0;
    v8[3] = _sl_dlopen();
    qword_1004C3458 = *(v5[1] + 24);
    v0 = v8[3];
  }

  _Block_object_dispose(&v7, 8);
  if (!v0)
  {
    v0 = +[NSAssertionHandler currentHandler];
    v3 = [NSString stringWithUTF8String:"void *libtailspinLibrary(void)"];
    [v0 handleFailureInFunction:v3 file:@"BridgingHeader.h" lineNumber:73 description:{@"%s", v4[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v1 = v4[0];
  if (v4[0])
  {
LABEL_7:
    free(v1);
  }

  return v0;
}

void sub_1001DDD2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1001DDD4C(uint64_t a1)
{
  result = _sl_dlopen();
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_1004C3458 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_1001DDE48(uint64_t a1, const char *a2, void *a3)
{
  v6 = sub_1001DDB98();
  result = dlsym(v6, a2);
  *(*(*(a1 + 32) + 8) + 24) = result;
  *a3 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_1001DDEA4(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x7573746174;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0x79726F74636166;
    }

    else
    {
      v4 = 1701736302;
    }

    if (v3 == 2)
    {
      v5 = 0xE700000000000000;
    }

    else
    {
      v5 = 0xE400000000000000;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0x6F6C76616964;
    }

    else
    {
      v4 = 0x7573746174;
    }

    if (v3)
    {
      v5 = 0xE600000000000000;
    }

    else
    {
      v5 = 0xE500000000000000;
    }
  }

  v6 = 0xE500000000000000;
  v7 = 0xE700000000000000;
  v8 = 0x79726F74636166;
  if (a2 != 2)
  {
    v8 = 1701736302;
    v7 = 0xE400000000000000;
  }

  if (a2)
  {
    v2 = 0x6F6C76616964;
    v6 = 0xE600000000000000;
  }

  if (a2 <= 1u)
  {
    v9 = v2;
  }

  else
  {
    v9 = v8;
  }

  if (a2 <= 1u)
  {
    v10 = v6;
  }

  else
  {
    v10 = v7;
  }

  if (v4 == v9 && v5 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v11 & 1;
}

uint64_t sub_1001DDFCC(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xEC00000079646165;
  v4 = 0x4365727574616546;
  if (a1 == 2)
  {
    v4 = 0x5277656976657250;
  }

  else
  {
    v3 = 0xEF6574656C706D6FLL;
  }

  v5 = 0xD000000000000010;
  v6 = 0x800000010043D000;
  if (a1)
  {
    v5 = 0x706D6F4365646F43;
    v6 = 0xEC0000006574656CLL;
  }

  if (a1 <= 1u)
  {
    v7 = v5;
  }

  else
  {
    v7 = v4;
  }

  if (v2 <= 1)
  {
    v8 = v6;
  }

  else
  {
    v8 = v3;
  }

  if (a2 > 1u)
  {
    if (a2 == 2)
    {
      v11 = 0x5277656976657250;
    }

    else
    {
      v11 = 0x4365727574616546;
    }

    if (a2 == 2)
    {
      v10 = 0xEC00000079646165;
    }

    else
    {
      v10 = 0xEF6574656C706D6FLL;
    }

    if (v7 != v11)
    {
      goto LABEL_30;
    }
  }

  else
  {
    if (a2)
    {
      v9 = 0x706D6F4365646F43;
    }

    else
    {
      v9 = 0xD000000000000010;
    }

    if (a2)
    {
      v10 = 0xEC0000006574656CLL;
    }

    else
    {
      v10 = 0x800000010043D000;
    }

    if (v7 != v9)
    {
      goto LABEL_30;
    }
  }

  if (v8 != v10)
  {
LABEL_30:
    v12 = _stringCompareWithSmolCheck(_:_:expecting:)();
    goto LABEL_31;
  }

  v12 = 1;
LABEL_31:

  return v12 & 1;
}

uint64_t sub_1001DE140(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0x7972726163;
    }

    else
    {
      v4 = 1701736302;
    }

    if (v2 == 2)
    {
      v3 = 0xE500000000000000;
    }

    else
    {
      v3 = 0xE400000000000000;
    }
  }

  else
  {
    if (a1)
    {
      v3 = 0xED000079786F7250;
    }

    else
    {
      v3 = 0xE800000000000000;
    }

    v4 = 0x72656D6F74737563;
  }

  v5 = 0xE800000000000000;
  v6 = 0xE500000000000000;
  v7 = 0x7972726163;
  if (a2 != 2)
  {
    v7 = 1701736302;
    v6 = 0xE400000000000000;
  }

  if (a2)
  {
    v5 = 0xED000079786F7250;
  }

  if (a2 <= 1u)
  {
    v8 = 0x72656D6F74737563;
  }

  else
  {
    v8 = v7;
  }

  if (a2 <= 1u)
  {
    v9 = v5;
  }

  else
  {
    v9 = v6;
  }

  if (v4 == v8 && v3 == v9)
  {
    v10 = 1;
  }

  else
  {
    v10 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v10 & 1;
}

uint64_t sub_1001DE260(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3, unint64_t a4)
{
  if ((a4 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a4) & 0xF;
  }

  else
  {
    v5 = a3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
LABEL_28:
    v18 = 1;
    return v18 & 1;
  }

  v9 = 0;
  v10 = a4 & 0xFFFFFFFFFFFFFFLL;
  v11 = (a4 & 0xFFFFFFFFFFFFFFFLL) + 32;
  while (1)
  {
    if ((a4 & 0x1000000000000000) != 0)
    {
      v14 = _StringGuts.foreignErrorCorrectedScalar(startingAt:)();
      v16 = v15;
      goto LABEL_15;
    }

    if ((a4 & 0x2000000000000000) != 0)
    {
      v21[0] = a3;
      v21[1] = v10;
      v13 = v21 + v9;
    }

    else
    {
      v12 = v11;
      if ((a3 & 0x1000000000000000) == 0)
      {
        v12 = _StringObject.sharedUTF8.getter();
      }

      v13 = (v12 + v9);
    }

    v14 = *v13;
    if ((*v13 & 0x80000000) == 0)
    {
LABEL_14:
      v16 = 1;
      goto LABEL_15;
    }

    v19 = (__clz(v14 ^ 0xFF) - 24);
    if (v19 > 2)
    {
      if (v19 == 3)
      {
        v14 = ((v14 & 0xF) << 12) | ((v13[1] & 0x3F) << 6) | v13[2] & 0x3F;
        v16 = 3;
      }

      else
      {
        v14 = ((v14 & 0xF) << 18) | ((v13[1] & 0x3F) << 12) | ((v13[2] & 0x3F) << 6) | v13[3] & 0x3F;
        v16 = 4;
      }
    }

    else
    {
      if (v19 == 1)
      {
        goto LABEL_14;
      }

      v14 = v13[1] & 0x3F | ((v14 & 0x1F) << 6);
      v16 = 2;
    }

LABEL_15:
    LODWORD(v21[0]) = v14;
    v17 = a1(v21);
    if (v4)
    {
      return v18 & 1;
    }

    if ((v17 & 1) == 0)
    {
      break;
    }

    v9 += v16;
    if (v9 >= v5)
    {
      goto LABEL_28;
    }
  }

  v18 = 0;
  return v18 & 1;
}

DarwinInit::ConfigSecurityPolicy_optional __swiftcall ConfigSecurityPolicy.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v3._countAndFlagsBits = rawValue._countAndFlagsBits;
  v4 = v1;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&off_100485A10, v3);

  v7 = 4;
  if (v5 < 4)
  {
    v7 = v5;
  }

  *v4 = v7;
  return result;
}

uint64_t ConfigSecurityPolicy.rawValue.getter()
{
  v1 = 0x7972726163;
  if (*v0 != 2)
  {
    v1 = 1701736302;
  }

  if (*v0 <= 1u)
  {
    return 0x72656D6F74737563;
  }

  else
  {
    return v1;
  }
}

Swift::Int sub_1001DE4E4()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1001DE594()
{
  String.hash(into:)();
}

Swift::Int sub_1001DE630()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

void sub_1001DE6E8(uint64_t *a1@<X8>)
{
  v2 = 0xE800000000000000;
  v3 = 0xE500000000000000;
  v4 = 0x7972726163;
  if (*v1 != 2)
  {
    v4 = 1701736302;
    v3 = 0xE400000000000000;
  }

  if (*v1)
  {
    v2 = 0xED000079786F7250;
  }

  if (*v1 <= 1u)
  {
    v5 = 0x72656D6F74737563;
  }

  else
  {
    v5 = v4;
  }

  if (*v1 > 1u)
  {
    v2 = v3;
  }

  *a1 = v5;
  a1[1] = v2;
}

unint64_t sub_1001DE790@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = _s10DarwinInit30PrivateCloudOSValidatorVersionO8rawValueACSgSi_tcfC_0(*a1);
  *a2 = result;
  return result;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> PrivateCloudOSValidator.validate()()
{
  v3 = v2;
  v4 = v1;
  v5 = v0;
  v6 = (*(v1 + 56))();
  v7 = *(v4 + 80);
  if (v6 < v7(v5, v4))
  {
    __dst[0] = 0;
    __dst[1] = 0xE000000000000000;
    _StringGuts.grow(_:)(97);
    v8._countAndFlagsBits = 0xD00000000000005FLL;
    v8._object = 0x800000010043ED70;
    String.append(_:)(v8);
    *__src = v7(v5, v4);
    v9._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v9);
LABEL_59:

    v75 = __dst[0];
    v76 = __dst[1];
    sub_1001E941C();
    v77 = swift_allocError();
    *v78 = v75;
    v78[1] = v76;
    v91 = v77;
    swift_willThrow();
    return;
  }

  v10 = 0;
  v11 = v4 + 16;
  do
  {
    v14 = *(&off_100485168 + v10++ + 32);
    switch(v14)
    {
      case 1:
        (*(v4 + 16))(__src, v5, v4);
        memcpy(__dst, __src, sizeof(__dst));
        v35 = __dst[1];

        sub_1001D711C(__dst);
        (*(v4 + 144))(v35, v5, v4);
        goto LABEL_47;
      case 2:
        v22 = v3;
        (*(v4 + 16))(__src, v5, v4);
        memcpy(__dst, __src, sizeof(__dst));
        v23 = __dst[2];
        v79 = v11;
        v24 = v5;
        v25 = __dst[3];
        v26 = __dst[4];
        v27 = __dst[5];
        v84[0] = __dst[2];
        v84[1] = __dst[3];
        v84[2] = __dst[4];
        v84[3] = __dst[5];
        v85 = __dst[6];
        sub_1001D7A24(__dst[2], __dst[3], __dst[4], __dst[5]);
        sub_1001D711C(__dst);
        (*(v4 + 152))(v84, v24, v4);
        v28 = v25;
        v5 = v24;
        v11 = v79;
        v29 = v26;
        v3 = v22;
        sub_1001D71F4(v23, v28, v29, v27);
        break;
      case 3:
        (*(v4 + 16))(__src, v5, v4);
        memcpy(__dst, __src, sizeof(__dst));
        v32 = __dst[7];
        v33 = __dst[8];
        sub_1001D6F74(__dst[7], __dst[8]);
        sub_1001D711C(__dst);
        (*(v4 + 160))(v32, v33, v5, v4);
        sub_1001D6F88(v32, v33);
        break;
      case 4:
        (*(v4 + 16))(__src, v5, v4);
        memcpy(__dst, __src, sizeof(__dst));
        v86[2] = *&__src[104];
        v86[3] = *&__src[120];
        v86[4] = *&__src[136];
        v86[5] = *&__src[152];
        v86[0] = *&__src[72];
        v86[1] = *&__src[88];
        v12 = &qword_1004AB940;
        sub_100013E54(&__dst[9], v81, &qword_1004AB940);
        sub_1001D711C(__dst);
        (*(v4 + 168))(v86, v5, v4);
        v13 = &__dst[9];
        goto LABEL_5;
      case 5:
        (*(v4 + 16))(__src, v5, v4);
        memcpy(__dst, __src, sizeof(__dst));
        v42 = __dst[21];

        sub_1001D711C(__dst);
        (*(v4 + 176))(v42, v5, v4);
        goto LABEL_47;
      case 6:
        (*(v4 + 16))(__src, v5, v4);
        memcpy(__dst, __src, sizeof(__dst));
        v45 = __dst[22];

        sub_1001D711C(__dst);
        (*(v4 + 184))(v45, v5, v4);
        goto LABEL_47;
      case 7:
        (*(v4 + 16))(__src, v5, v4);
        memcpy(__dst, __src, sizeof(__dst));
        v34 = __dst[23];

        sub_1001D711C(__dst);
        (*(v4 + 192))(v34, v5, v4);
        goto LABEL_47;
      case 8:
        (*(v4 + 16))(__src, v5, v4);
        memcpy(__dst, __src, sizeof(__dst));
        sub_1001D711C(__dst);
        (*(v4 + 200))(LOBYTE(__dst[24]), v5, v4);
        break;
      case 9:
        (*(v4 + 16))(__src, v5, v4);
        memcpy(__dst, __src, sizeof(__dst));
        v87[4] = *&__src[264];
        v87[5] = *&__src[280];
        v87[6] = *&__src[296];
        v88 = *&__src[312];
        v87[0] = *&__src[200];
        v87[1] = *&__src[216];
        v87[2] = *&__src[232];
        v87[3] = *&__src[248];
        v12 = &qword_1004AB948;
        sub_100013E54(&__dst[25], v81, &qword_1004AB948);
        sub_1001D711C(__dst);
        (*(v4 + 208))(v87, v5, v4);
        v13 = &__dst[25];
        goto LABEL_5;
      case 10:
        (*(v4 + 16))(__src, v5, v4);
        memcpy(__dst, __src, sizeof(__dst));
        sub_1001D711C(__dst);
        (*(v4 + 216))(LOWORD(__dst[40]), v5, v4);
        break;
      case 11:
        (*(v4 + 16))(__src, v5, v4);
        memcpy(__dst, __src, sizeof(__dst));
        v21 = __dst[41];

        sub_1001D711C(__dst);
        (*(v4 + 224))(v21, v5, v4);
        goto LABEL_47;
      case 12:
        (*(v4 + 16))(__src, v5, v4);
        memcpy(__dst, __src, sizeof(__dst));
        sub_1001D711C(__dst);
        (*(v4 + 232))(__dst[42], LOBYTE(__dst[43]), v5, v4);
        break;
      case 13:
        (*(v4 + 16))(__src, v5, v4);
        memcpy(__dst, __src, sizeof(__dst));
        v89[2] = *&__src[384];
        v89[3] = *&__src[400];
        v90 = __src[416];
        v89[0] = *&__src[352];
        v89[1] = *&__src[368];
        v12 = &qword_1004AB950;
        sub_100013E54(&__dst[44], v81, &qword_1004AB950);
        sub_1001D711C(__dst);
        (*(v4 + 448))(v89, v5, v4);
        v13 = &__dst[44];
LABEL_5:
        sub_100013F2C(v13, v12);
        break;
      case 14:
        (*(v4 + 16))(__src, v5, v4);
        memcpy(__dst, __src, sizeof(__dst));
        v20 = __dst[53];

        sub_1001D711C(__dst);
        (*(v4 + 456))(v20, v5, v4);
        goto LABEL_47;
      case 15:
        (*(v4 + 16))(__src, v5, v4);
        memcpy(__dst, __src, sizeof(__dst));
        v30 = __dst[54];
        v31 = __dst[55];

        sub_1001D711C(__dst);
        (*(v4 + 240))(v30, v31, v5, v4);
        goto LABEL_47;
      case 16:
        (*(v4 + 16))(__src, v5, v4);
        memcpy(__dst, __src, sizeof(__dst));
        v18 = __dst[56];
        v19 = __dst[57];

        sub_1001D711C(__dst);
        (*(v4 + 248))(v18, v19, v5, v4);
        goto LABEL_47;
      case 17:
        (*(v4 + 16))(__src, v5, v4);
        memcpy(__dst, __src, sizeof(__dst));
        v37 = __dst[58];
        v38 = __dst[59];

        sub_1001D711C(__dst);
        (*(v4 + 256))(v37, v38, v5, v4);
        goto LABEL_47;
      case 18:
        (*(v4 + 16))(__src, v5, v4);
        memcpy(__dst, __src, sizeof(__dst));
        v46 = __dst[60];
        v47 = __dst[61];

        sub_1001D711C(__dst);
        (*(v4 + 264))(v46, v47, v5, v4);
        goto LABEL_47;
      case 19:
        (*(v4 + 16))(__src, v5, v4);
        memcpy(__dst, __src, sizeof(__dst));
        v52 = __dst[62];
        v53 = __dst[63];

        sub_1001D711C(__dst);
        (*(v4 + 272))(v52, v53, v5, v4);
        goto LABEL_47;
      case 20:
        (*(v4 + 16))(__src, v5, v4);
        memcpy(__dst, __src, sizeof(__dst));
        v40 = __dst[64];
        v41 = __dst[65];

        sub_1001D711C(__dst);
        (*(v4 + 280))(v40, v41, v5, v4);
        goto LABEL_47;
      case 21:
        (*(v4 + 16))(__src, v5, v4);
        memcpy(__dst, __src, sizeof(__dst));
        v43 = __dst[66];
        v44 = __dst[67];

        sub_1001D711C(__dst);
        (*(v4 + 288))(v43, v44, v5, v4);
        goto LABEL_47;
      case 22:
        (*(v4 + 16))(__src, v5, v4);
        memcpy(__dst, __src, sizeof(__dst));
        sub_1001D711C(__dst);
        (*(v4 + 296))(LOBYTE(__dst[68]), v5, v4);
        break;
      case 23:
        (*(v4 + 16))(__src, v5, v4);
        memcpy(__dst, __src, sizeof(__dst));
        sub_1001D711C(__dst);
        (*(v4 + 304))(BYTE1(__dst[68]), v5, v4);
        break;
      case 24:
        (*(v4 + 16))(__src, v5, v4);
        memcpy(__dst, __src, sizeof(__dst));
        sub_1001D711C(__dst);
        (*(v4 + 312))(BYTE2(__dst[68]), v5, v4);
        break;
      case 25:
        (*(v4 + 16))(__src, v5, v4);
        memcpy(__dst, __src, sizeof(__dst));
        sub_1001D711C(__dst);
        (*(v4 + 336))(BYTE3(__dst[68]), v5, v4);
        break;
      case 26:
        (*(v4 + 16))(__src, v5, v4);
        memcpy(__dst, __src, sizeof(__dst));
        sub_1001D711C(__dst);
        (*(v4 + 320))(BYTE4(__dst[68]), v5, v4);
        break;
      case 27:
        (*(v4 + 16))(__src, v5, v4);
        memcpy(__dst, __src, sizeof(__dst));
        sub_1001D711C(__dst);
        (*(v4 + 328))(BYTE5(__dst[68]), v5, v4);
        break;
      case 28:
        (*(v4 + 16))(__src, v5, v4);
        memcpy(__dst, __src, sizeof(__dst));
        v56 = __dst[69];

        sub_1001D711C(__dst);
        (*(v4 + 344))(v56, v5, v4);
        goto LABEL_47;
      case 29:
        (*(v4 + 16))(__src, v5, v4);
        memcpy(__dst, __src, sizeof(__dst));
        sub_1001D711C(__dst);
        (*(v4 + 352))(LOBYTE(__dst[70]), v5, v4);
        break;
      case 30:
        (*(v4 + 16))(__src, v5, v4);
        memcpy(__dst, __src, sizeof(__dst));
        sub_1001D711C(__dst);
        (*(v4 + 360))(BYTE1(__dst[70]), v5, v4);
        break;
      case 31:
        (*(v4 + 16))(__src, v5, v4);
        memcpy(__dst, __src, sizeof(__dst));
        v36 = __dst[71];
        sub_1001C8518(__dst[71]);
        sub_1001D711C(__dst);
        v81[0] = v36;
        (*(v4 + 368))(v81, v5, v4);
        sub_1001C855C(v81[0]);
        break;
      case 32:
        (*(v4 + 16))(__src, v5, v4);
        memcpy(__dst, __src, sizeof(__dst));
        v48 = __dst[72];
        v49 = __dst[73];

        sub_1001D711C(__dst);
        (*(v4 + 376))(v48, v49, v5, v4);
        goto LABEL_47;
      case 33:
        (*(v4 + 16))(__src, v5, v4);
        memcpy(__dst, __src, sizeof(__dst));
        sub_1001D711C(__dst);
        (*(v4 + 384))(LOBYTE(__dst[74]), v5, v4);
        break;
      case 34:
        (*(v4 + 16))(__src, v5, v4);
        memcpy(__dst, __src, sizeof(__dst));
        sub_1001D711C(__dst);
        (*(v4 + 392))(__dst[75], LOBYTE(__dst[76]), v5, v4);
        break;
      case 35:
        (*(v4 + 16))(__src, v5, v4);
        memcpy(__dst, __src, sizeof(__dst));
        v15 = __dst[77];

        sub_1001D711C(__dst);
        (*(v4 + 400))(v15, v5, v4);
        goto LABEL_47;
      case 36:
        (*(v4 + 16))(__src, v5, v4);
        memcpy(__dst, __src, sizeof(__dst));
        v16 = __dst[78];
        v17 = __dst[79];

        sub_1001D711C(__dst);
        (*(v4 + 408))(v16, v17, v5, v4);
        goto LABEL_47;
      case 37:
        (*(v4 + 16))(__src, v5, v4);
        memcpy(__dst, __src, sizeof(__dst));
        sub_1001D711C(__dst);
        (*(v4 + 416))(__dst[80], LOBYTE(__dst[81]), v5, v4);
        break;
      case 38:
        (*(v4 + 16))(__src, v5, v4);
        memcpy(__dst, __src, sizeof(__dst));
        sub_1001D711C(__dst);
        (*(v4 + 424))(BYTE1(__dst[81]), v5, v4);
        break;
      case 39:
        (*(v4 + 16))(__src, v5, v4);
        memcpy(__dst, __src, sizeof(__dst));
        v50 = __dst[83];
        v51 = __dst[84];

        sub_1001D711C(__dst);
        (*(v4 + 432))(v50, v51, v5, v4);
        goto LABEL_47;
      case 40:
        (*(v4 + 16))(__src, v5, v4);
        memcpy(__dst, __src, sizeof(__dst));
        sub_1001D711C(__dst);
        (*(v4 + 440))(__dst[85], LOBYTE(__dst[86]), v5, v4);
        break;
      case 41:
        (*(v4 + 16))(__src, v5, v4);
        memcpy(__dst, __src, sizeof(__dst));
        v39 = __dst[82];

        sub_1001D711C(__dst);
        (*(v4 + 464))(v39, v5, v4);
        goto LABEL_47;
      case 42:
        (*(v4 + 16))(__src, v5, v4);
        memcpy(__dst, __src, sizeof(__dst));
        v54 = __dst[89];
        v55 = __dst[90];

        sub_1001D711C(__dst);
        (*(v4 + 472))(v54, v55, v5, v4);
LABEL_47:

        break;
      default:
        (*(v4 + 16))(__src, v5, v4);
        memcpy(__dst, __src, sizeof(__dst));
        sub_1001D711C(__dst);
        (*(v4 + 136))(LOBYTE(__dst[0]), v5, v4);
        break;
    }
  }

  while (v10 != 43);
  if (((*(v4 + 24))(v5, v4) & 1) == 0)
  {
    v57 = *(v4 + 104);
    v91 = v5;
    v80 = v57;
    v58 = *(v57(v5, v4) + 16);

    if (v58)
    {
      v59 = 0;
      v60 = 0;
      v61 = 0;
      v62 = 0xE000000000000000;
      do
      {
        v63 = v61 + 1;
        __dst[0] = v60;
        __dst[1] = v62;
        v64._countAndFlagsBits = 10;
        v64._object = 0xE100000000000000;
        String.append(_:)(v64);
        *__src = v61 + 1;
        v65._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
        String.append(_:)(v65);

        v66._countAndFlagsBits = 8238;
        v66._object = 0xE200000000000000;
        String.append(_:)(v66);
        v67 = v80(v91, v4);
        if (v61 >= *(v67 + 16))
        {
          __break(1u);
          JUMPOUT(0x1001DFF6CLL);
        }

        v68 = *(v67 + v59 + 32);
        v69 = *(v67 + v59 + 40);

        v70._countAndFlagsBits = v68;
        v70._object = v69;
        String.append(_:)(v70);

        v60 = __dst[0];
        v62 = __dst[1];
        v59 += 16;
        ++v61;
      }

      while (v58 != v63);
    }

    else
    {
      v60 = 0;
      v62 = 0xE000000000000000;
    }

    __dst[0] = 0;
    __dst[1] = 0xE000000000000000;
    _StringGuts.grow(_:)(87);
    v71._countAndFlagsBits = 0xD00000000000002ELL;
    v71._object = 0x800000010043ED10;
    String.append(_:)(v71);
    v72._countAndFlagsBits = (*(v4 + 8))(v91, v4);
    String.append(_:)(v72);

    v73._object = 0x800000010043ED40;
    v73._countAndFlagsBits = 0xD000000000000025;
    String.append(_:)(v73);
    v74._countAndFlagsBits = v60;
    v74._object = v62;
    String.append(_:)(v74);
    goto LABEL_59;
  }
}

uint64_t sub_1001E0018(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Logger();
  __chkstk_darwin(v4);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v6, a1);
  return (*(**a2 + 152))(v6);
}

uint64_t sub_1001E0104@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC10DarwinInit17CustomerValidator_logger;
  swift_beginAccess();
  v4 = type metadata accessor for Logger();
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

uint64_t sub_1001E018C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC10DarwinInit17CustomerValidator_logger;
  swift_beginAccess();
  v4 = type metadata accessor for Logger();
  (*(*(v4 - 8) + 40))(v1 + v3, a1, v4);
  return swift_endAccess();
}

uint64_t sub_1001E027C()
{
  v1 = (v0 + OBJC_IVAR____TtC10DarwinInit17CustomerValidator_policy);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

uint64_t sub_1001E02D4(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC10DarwinInit17CustomerValidator_policy);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
}

uint64_t sub_1001E0394()
{
  v1 = OBJC_IVAR____TtC10DarwinInit17CustomerValidator_requestedVersion;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1001E03D8(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC10DarwinInit17CustomerValidator_requestedVersion;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1001E0488@<X0>(void *a1@<X8>)
{
  v3 = OBJC_IVAR____TtC10DarwinInit17CustomerValidator_config;
  swift_beginAccess();
  memcpy(__dst, (v1 + v3), sizeof(__dst));
  memcpy(a1, (v1 + v3), 0x2D8uLL);
  return sub_1001D78FC(__dst, v5);
}

uint64_t sub_1001E0500(const void *a1)
{
  v3 = OBJC_IVAR____TtC10DarwinInit17CustomerValidator_config;
  swift_beginAccess();
  memcpy(__dst, (v1 + v3), sizeof(__dst));
  memcpy((v1 + v3), a1, 0x2D8uLL);
  return sub_1001D711C(__dst);
}

uint64_t sub_1001E05D4()
{
  v1 = OBJC_IVAR____TtC10DarwinInit17CustomerValidator_isValid;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1001E0618(char a1)
{
  v3 = OBJC_IVAR____TtC10DarwinInit17CustomerValidator_isValid;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1001E06C8()
{
  v1 = OBJC_IVAR____TtC10DarwinInit17CustomerValidator_latestApprovedVersion;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1001E070C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC10DarwinInit17CustomerValidator_latestApprovedVersion;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1001E0804(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC10DarwinInit17CustomerValidator_emittedErrors;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t CustomerValidator.init(policy:requestedVersion:config:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *__src)
{
  memcpy(__dst, __src, sizeof(__dst));
  v6 = OBJC_IVAR____TtC10DarwinInit17CustomerValidator_logger;
  if (qword_1004A9F80 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  v8 = sub_1000270B4(v7, static Logger.privateCloudOSValidator);
  (*(*(v7 - 8) + 16))(v5 + v6, v8, v7);
  v18 = OBJC_IVAR____TtC10DarwinInit17CustomerValidator_customerPreferencesRules;
  sub_1000039E8(&qword_1004ABD20);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_100376F00;
  sub_1000039E8(&qword_1004ABD28);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1003F8DC0;
  *(v10 + 32) = 0xD00000000000001CLL;
  *(v10 + 40) = 0x800000010043EDD0;
  *(v10 + 48) = &_swiftEmptySetSingleton;
  *(v10 + 56) = 0xD000000000000022;
  *(v10 + 64) = 0x800000010043EDF0;
  *(v10 + 72) = &_swiftEmptySetSingleton;
  *(v10 + 80) = 0xD000000000000029;
  *(v10 + 88) = 0x800000010043EE20;
  *(v10 + 96) = &_swiftEmptySetSingleton;
  *(v10 + 104) = 0xD000000000000011;
  *(v10 + 112) = 0x800000010043EE50;
  *(v10 + 120) = &_swiftEmptySetSingleton;
  *(v10 + 128) = 0xD000000000000027;
  *(v10 + 136) = 0x800000010043EE70;
  *(v10 + 144) = &_swiftEmptySetSingleton;
  *(v10 + 152) = 0xD000000000000021;
  *(v10 + 160) = 0x800000010043EEA0;
  *(v10 + 168) = &_swiftEmptySetSingleton;
  *(v10 + 176) = 0xD000000000000023;
  *(v10 + 184) = 0x800000010043EED0;
  *(v10 + 192) = &_swiftEmptySetSingleton;
  *(v10 + 200) = 0xD00000000000001DLL;
  *(v10 + 208) = 0x800000010043EF00;
  *(v10 + 216) = &_swiftEmptySetSingleton;
  *(v10 + 224) = 0xD00000000000001ELL;
  *(v10 + 232) = 0x800000010043EF20;
  *(v10 + 240) = &_swiftEmptySetSingleton;
  *(v10 + 248) = 0xD00000000000001DLL;
  *(v10 + 256) = 0x800000010043EF40;
  *(v10 + 264) = &_swiftEmptySetSingleton;
  *(v10 + 272) = 0xD00000000000001DLL;
  *(v10 + 280) = 0x800000010043EF60;
  *(v10 + 288) = &_swiftEmptySetSingleton;
  *(v10 + 296) = 0xD000000000000023;
  *(v10 + 304) = 0x800000010043EF80;
  *(v10 + 312) = &_swiftEmptySetSingleton;
  *(v10 + 320) = 0xD000000000000025;
  *(v10 + 328) = 0x800000010043EFB0;
  *(v10 + 336) = &_swiftEmptySetSingleton;
  *(v10 + 344) = 0xD00000000000002FLL;
  *(v10 + 352) = 0x800000010043EFE0;
  *(v10 + 360) = &_swiftEmptySetSingleton;
  *(v10 + 368) = 0xD00000000000002CLL;
  *(v10 + 376) = 0x800000010043F010;
  *(v10 + 384) = &_swiftEmptySetSingleton;
  *(v10 + 488) = 0xD000000000000013;
  *(v10 + 496) = 0x800000010043F100;
  *(v10 + 392) = 0xD00000000000002BLL;
  *(v10 + 400) = 0x800000010043F040;
  *(v10 + 408) = &_swiftEmptySetSingleton;
  *(v10 + 416) = 0xD00000000000002ELL;
  *(v10 + 424) = 0x800000010043F070;
  *(v10 + 432) = &_swiftEmptySetSingleton;
  *(v10 + 440) = 0xD000000000000024;
  *(v10 + 448) = 0x800000010043F0A0;
  *(v10 + 456) = &_swiftEmptySetSingleton;
  *(v10 + 464) = 0xD000000000000023;
  *(v10 + 472) = 0x800000010043F0D0;
  *(v10 + 480) = &_swiftEmptySetSingleton;
  *(v10 + 504) = &_swiftEmptySetSingleton;
  *(v10 + 512) = 0xD00000000000001ELL;
  *(v10 + 520) = 0x800000010043F120;
  *(v10 + 528) = &_swiftEmptySetSingleton;
  *(v10 + 536) = 0xD00000000000001DLL;
  *(v10 + 544) = 0x800000010043F140;
  *(v10 + 552) = &_swiftEmptySetSingleton;
  *(v10 + 560) = 0xD00000000000002BLL;
  *(v10 + 568) = 0x800000010043F160;
  *(v10 + 576) = &_swiftEmptySetSingleton;
  v11 = sub_1001879E4(v10);
  swift_setDeallocating();
  sub_1000039E8(&qword_1004ABD30);
  swift_arrayDestroy();
  swift_deallocClassInstance();
  *(v9 + 32) = v11;
  *(v9 + 40) = 3;
  *(v9 + 48) = 0;
  *(v9 + 56) = xmmword_1003F8DD0;
  *(v9 + 72) = 259;
  v12 = swift_allocObject();
  *(v12 + 40) = 0x800000010043EDD0;
  *(v12 + 48) = &_swiftEmptySetSingleton;
  *(v12 + 56) = 0xD000000000000022;
  *(v12 + 64) = 0x800000010043EDF0;
  *(v12 + 104) = 0xD000000000000027;
  *(v12 + 112) = 0x800000010043EE70;
  *(v12 + 32) = 0xD00000000000001CLL;
  *(v12 + 16) = xmmword_1003F8DE0;
  *(v12 + 72) = &_swiftEmptySetSingleton;
  *(v12 + 80) = 0xD000000000000011;
  *(v12 + 88) = 0x800000010043EE50;
  *(v12 + 96) = &_swiftEmptySetSingleton;
  *(v12 + 120) = &_swiftEmptySetSingleton;
  *(v12 + 128) = 0xD000000000000021;
  *(v12 + 136) = 0x800000010043EEA0;
  *(v12 + 144) = &_swiftEmptySetSingleton;
  *(v12 + 152) = 0xD000000000000023;
  *(v12 + 160) = 0x800000010043EED0;
  *(v12 + 168) = &_swiftEmptySetSingleton;
  *(v12 + 176) = 0xD00000000000001DLL;
  *(v12 + 184) = 0x800000010043EF00;
  *(v12 + 192) = &_swiftEmptySetSingleton;
  *(v12 + 200) = 0xD00000000000001ELL;
  *(v12 + 208) = 0x800000010043EF20;
  *(v12 + 216) = &_swiftEmptySetSingleton;
  *(v12 + 224) = 0xD00000000000001DLL;
  *(v12 + 232) = 0x800000010043EF40;
  *(v12 + 240) = &_swiftEmptySetSingleton;
  *(v12 + 248) = 0xD00000000000001DLL;
  *(v12 + 256) = 0x800000010043EF60;
  *(v12 + 264) = &_swiftEmptySetSingleton;
  *(v12 + 272) = 0xD000000000000023;
  *(v12 + 280) = 0x800000010043EF80;
  *(v12 + 288) = &_swiftEmptySetSingleton;
  *(v12 + 296) = 0xD000000000000025;
  *(v12 + 304) = 0x800000010043EFB0;
  *(v12 + 312) = &_swiftEmptySetSingleton;
  *(v12 + 320) = 0xD00000000000002FLL;
  *(v12 + 328) = 0x800000010043EFE0;
  *(v12 + 336) = &_swiftEmptySetSingleton;
  *(v12 + 344) = 0xD00000000000002CLL;
  *(v12 + 352) = 0x800000010043F010;
  *(v12 + 360) = &_swiftEmptySetSingleton;
  *(v12 + 368) = 0xD00000000000002BLL;
  *(v12 + 376) = 0x800000010043F040;
  *(v12 + 384) = &_swiftEmptySetSingleton;
  *(v12 + 392) = 0xD00000000000002ELL;
  *(v12 + 400) = 0x800000010043F070;
  *(v12 + 408) = &_swiftEmptySetSingleton;
  *(v12 + 416) = 0xD000000000000024;
  *(v12 + 424) = 0x800000010043F0A0;
  *(v12 + 432) = &_swiftEmptySetSingleton;
  *(v12 + 440) = 0xD000000000000023;
  *(v12 + 448) = 0x800000010043F0D0;
  *(v12 + 456) = &_swiftEmptySetSingleton;
  *(v12 + 464) = 0xD00000000000001ELL;
  *(v12 + 472) = 0x800000010043F120;
  *(v12 + 480) = &_swiftEmptySetSingleton;
  *(v12 + 488) = 0xD00000000000001DLL;
  *(v12 + 496) = 0x800000010043F140;
  *(v12 + 504) = &_swiftEmptySetSingleton;
  *(v12 + 512) = 0xD00000000000002BLL;
  *(v12 + 520) = 0x800000010043F160;
  v13 = sub_1001E9470(&off_100485B90);
  swift_arrayDestroy();
  *(v12 + 528) = v13;
  v14 = sub_1001879E4(v12);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v15 = 9;
  *(v9 + 80) = v14;
  *(v9 + 88) = 9;
  *(v5 + v18) = v9;
  *(v9 + 96) = 0;
  v16 = (v5 + OBJC_IVAR____TtC10DarwinInit17CustomerValidator_policy);
  *v16 = a1;
  v16[1] = a2;
  *(v5 + OBJC_IVAR____TtC10DarwinInit17CustomerValidator_latestApprovedVersion) = 9;
  if ((a4 & 1) == 0)
  {
    v15 = a3;
  }

  *(v5 + OBJC_IVAR____TtC10DarwinInit17CustomerValidator_requestedVersion) = v15;
  memcpy((v5 + OBJC_IVAR____TtC10DarwinInit17CustomerValidator_config), __dst, 0x2D8uLL);
  *(v5 + OBJC_IVAR____TtC10DarwinInit17CustomerValidator_isValid) = 1;
  *(v5 + OBJC_IVAR____TtC10DarwinInit17CustomerValidator_emittedErrors) = _swiftEmptyArrayStorage;
  return v5;
}

uint64_t sub_1001E0F2C(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(*v2 + 144))(v8);

  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v26[0] = v14;
    *v13 = 136315138;
    *(v13 + 4) = sub_1000026C0(a1, a2, v26);
    _os_log_impl(&_mh_execute_header, v11, v12, "%s", v13, 0xCu);
    sub_100003C3C(v14);
  }

  (*(v7 + 8))(v10, v6);
  sub_1000039E8(&qword_1004AA990);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_100376A40;
  *(v15 + 56) = &type metadata for String;
  *(v15 + 32) = a1;
  *(v15 + 40) = a2;

  print(_:separator:terminator:)();

  v16 = *(*v3 + 304);

  v17 = v16(v26);
  v19 = v18;
  v20 = *v18;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v19 = v20;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v20 = sub_100011A4C(0, *(v20 + 2) + 1, 1, v20);
    *v19 = v20;
  }

  v23 = *(v20 + 2);
  v22 = *(v20 + 3);
  if (v23 >= v22 >> 1)
  {
    v20 = sub_100011A4C((v22 > 1), v23 + 1, 1, v20);
    *v19 = v20;
  }

  *(v20 + 2) = v23 + 1;
  v24 = &v20[16 * v23];
  *(v24 + 4) = a1;
  *(v24 + 5) = a2;
  return v17(v26, 0);
}

uint64_t sub_1001E1244(uint64_t a1, void *a2, uint64_t a3, void *a4, uint64_t a5, void *a6)
{
  v25._countAndFlagsBits = a5;
  v25._object = a6;
  (*(*v6 + 168))();
  v11 = String.uppercased()();

  v12._object = 0x800000010043F190;
  v12._countAndFlagsBits = 0xD00000000000001ALL;
  String.append(_:)(v12);

  if (a4)
  {
    v13._countAndFlagsBits = a3;
    v13._object = a4;
    String.append(_:)(v13);
    v14._countAndFlagsBits = 0x6769666E6F6320;
    v14._object = 0xE700000000000000;
    String.append(_:)(v14);
    v16 = 544106784;
    v15 = 0xE400000000000000;
  }

  else
  {
    v16 = 0;
    v15 = 0xE000000000000000;
  }

  _StringGuts.grow(_:)(30);

  v17._countAndFlagsBits = 0x64696C61766E4920;
  v17._object = 0xE900000000000020;
  String.append(_:)(v17);
  v18._countAndFlagsBits = a1;
  v18._object = a2;
  String.append(_:)(v18);
  v19._countAndFlagsBits = 0x676E697474657320;
  v19._object = 0xE800000000000000;
  String.append(_:)(v19);
  v20._countAndFlagsBits = v16;
  v20._object = v15;
  String.append(_:)(v20);

  v21._countAndFlagsBits = 8238;
  v21._object = 0xE200000000000000;
  String.append(_:)(v21);
  String.append(_:)(v25);
  v22._countAndFlagsBits = 32;
  v22._object = 0xE100000000000000;
  String.append(_:)(v22);
  v23._countAndFlagsBits = 0xD00000000000002CLL;
  v23._object = 0x800000010043F1B0;
  String.append(_:)(v23);
  (*(*v6 + 320))(v11._countAndFlagsBits, v11._object);
}

uint64_t sub_1001E1490(uint64_t a1, void *a2, uint64_t a3, void *a4, uint64_t a5, void *a6, unsigned __int8 a7)
{
  v15 = type metadata accessor for Logger();
  v46 = *(v15 - 8);
  v47 = v15;
  v16 = __chkstk_darwin(v15);
  v18 = &v43 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = (*(*v7 + 192))(v16);
  v20 = *v7;
  if (v19 >= a7)
  {
    v44 = a1;
    v45._object = a6;
    (*(v20 + 144))();

    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.info.getter();
    v25 = os_log_type_enabled(v23, v24);
    v45._countAndFlagsBits = a5;
    if (v25)
    {
      v26 = swift_slowAlloc();
      *v26 = 134217984;
      *(v26 + 4) = (*(*v7 + 264))();

      _os_log_impl(&_mh_execute_header, v23, v24, "Latest version: %ld", v26, 0xCu);
    }

    else
    {
    }

    v27 = (*(v46 + 8))(v18, v47);
    (*(*v7 + 168))(v27);
    v28 = String.uppercased()();

    v48 = v28;

    v29._object = 0x800000010043F1E0;
    v29._countAndFlagsBits = 0xD000000000000012;
    String.append(_:)(v29);

    v32 = v48;
    object = v32._object;
    countAndFlagsBits = v32._countAndFlagsBits;
    if (a4)
    {
      v48._countAndFlagsBits = 544106784;
      v48._object = 0xE400000000000000;
      v33._countAndFlagsBits = a3;
      v33._object = a4;
      String.append(_:)(v33);
      v34._countAndFlagsBits = 0x6769666E6F6320;
      v34._object = 0xE700000000000000;
      String.append(_:)(v34);
      v36 = v48._countAndFlagsBits;
      v35 = v48._object;
    }

    else
    {
      v36 = 0;
      v35 = 0xE000000000000000;
    }

    v37 = v44;
    v48._countAndFlagsBits = 0;
    v48._object = 0xE000000000000000;
    _StringGuts.grow(_:)(27);

    v48._countAndFlagsBits = countAndFlagsBits;
    v48._object = object;
    v38._countAndFlagsBits = 0x64696C61766E4920;
    v38._object = 0xE900000000000020;
    String.append(_:)(v38);
    v39._countAndFlagsBits = v37;
    v39._object = a2;
    String.append(_:)(v39);
    v40._countAndFlagsBits = 0x676E697474657320;
    v40._object = 0xE800000000000000;
    String.append(_:)(v40);
    v41._countAndFlagsBits = v36;
    v41._object = v35;
    String.append(_:)(v41);

    v42._countAndFlagsBits = 8238;
    v42._object = 0xE200000000000000;
    String.append(_:)(v42);
    String.append(_:)(v45);
    (*(*v7 + 320))(v48._countAndFlagsBits, v48._object);

    return (*(*v7 + 248))(0);
  }

  else
  {
    v21 = *(v20 + 328);

    return v21(a1, a2, a3, a4, a5, a6);
  }
}

uint64_t sub_1001E18DC(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a1 == 0xD00000000000003ALL && 0x800000010043F200 == a2)
  {
    return 1;
  }

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t sub_1001E1944(uint64_t a1)
{
  v2 = a1 + 64;
  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  v9 = _swiftEmptyArrayStorage;
  if (v5)
  {
    goto LABEL_8;
  }

  while (1)
  {
    v10 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v10 >= v6)
    {

      sub_1000039E8(&qword_1004A6B48);
      sub_10000E720(&qword_1004A6B50, &qword_1004A6B48);
      v19 = BidirectionalCollection<>.joined(separator:)();

      return v19;
    }

    v5 = *(v2 + 8 * v10);
    ++v8;
    if (v5)
    {
      v8 = v10;
      do
      {
LABEL_8:
        v11 = (*(a1 + 48) + ((v8 << 10) | (16 * __clz(__rbit64(v5)))));
        v12 = *v11;
        v13 = v11[1];

        v14._countAndFlagsBits = v12;
        v14._object = v13;
        String.append(_:)(v14);

        v15._countAndFlagsBits = 34;
        v15._object = 0xE100000000000000;
        String.append(_:)(v15);
        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_100011A4C(0, *(v9 + 2) + 1, 1, v9);
          v9 = result;
        }

        v17 = *(v9 + 2);
        v16 = *(v9 + 3);
        if (v17 >= v16 >> 1)
        {
          result = sub_100011A4C((v16 > 1), v17 + 1, 1, v9);
          v9 = result;
        }

        v5 &= v5 - 1;
        *(v9 + 2) = v17 + 1;
        v18 = &v9[16 * v17];
        *(v18 + 4) = 34;
        *(v18 + 5) = 0xE100000000000000;
      }

      while (v5);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1001E1B50(uint64_t a1)
{
  v2 = a1 + 56;
  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 56);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  v9 = _swiftEmptyArrayStorage;
  if (v5)
  {
    goto LABEL_8;
  }

  while (1)
  {
    v10 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v10 >= v6)
    {

      sub_1000039E8(&qword_1004A6B48);
      sub_10000E720(&qword_1004A6B50, &qword_1004A6B48);
      v19 = BidirectionalCollection<>.joined(separator:)();

      return v19;
    }

    v5 = *(v2 + 8 * v10);
    ++v8;
    if (v5)
    {
      v8 = v10;
      do
      {
LABEL_8:
        v11 = (*(a1 + 48) + ((v8 << 10) | (16 * __clz(__rbit64(v5)))));
        v12 = *v11;
        v13 = v11[1];

        v14._countAndFlagsBits = v12;
        v14._object = v13;
        String.append(_:)(v14);

        v15._countAndFlagsBits = 34;
        v15._object = 0xE100000000000000;
        String.append(_:)(v15);
        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_100011A4C(0, *(v9 + 2) + 1, 1, v9);
          v9 = result;
        }

        v17 = *(v9 + 2);
        v16 = *(v9 + 3);
        if (v17 >= v16 >> 1)
        {
          result = sub_100011A4C((v16 > 1), v17 + 1, 1, v9);
          v9 = result;
        }

        v5 &= v5 - 1;
        *(v9 + 2) = v17 + 1;
        v18 = &v9[16 * v17];
        *(v18 + 4) = 34;
        *(v18 + 5) = 0xE100000000000000;
      }

      while (v5);
    }
  }

  __break(1u);
  return result;
}

Swift::Bool __swiftcall CustomerValidator.isValidBundleIdentifier(_:)(Swift::String a1)
{
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;
  v3 = type metadata accessor for CharacterSet();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v18[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = __chkstk_darwin(v5);
  v10 = &v18[-v9];
  __chkstk_darwin(v8);
  v12 = &v18[-v11];
  v13 = HIBYTE(object) & 0xF;
  if ((object & 0x2000000000000000) == 0)
  {
    v13 = countAndFlagsBits & 0xFFFFFFFFFFFFLL;
  }

  if (v13)
  {
    CharacterSet.init(charactersIn:)();
    static CharacterSet.alphanumerics.getter();
    CharacterSet.union(_:)();
    v14 = *(v4 + 8);
    v14(v7, v3);
    v15 = (v14)(v10, v3);
    __chkstk_darwin(v15);
    *&v18[-16] = v12;
    v16 = sub_1001DE260(sub_1001E95BC, &v18[-32], countAndFlagsBits, object);
    v14(v12, v3);
  }

  else
  {
    v16 = 0;
  }

  return v16 & 1;
}

uint64_t sub_1001E1F40(uint64_t result)
{
  if (*(result + 8))
  {
    return (*(*v1 + 336))(0x6F6C76616964, 0xE600000000000000, 0, 0, 0xD000000000000031, 0x800000010043F260, 2);
  }

  return result;
}

uint64_t sub_1001E1FAC(uint64_t result)
{
  if (*(result + 8) != 1)
  {
    return (*(*v1 + 336))(0x6C6C6174736E69, 0xE700000000000000, 0, 0, 0xD000000000000025, 0x800000010043F2A0, 2);
  }

  return result;
}

uint64_t sub_1001E2020(uint64_t result)
{
  if (result)
  {
    return (*(*v1 + 336))(0x6567616B636170, 0xE700000000000000, 0, 0, 0xD000000000000021, 0x800000010043F2D0, 2);
  }

  return result;
}

uint64_t sub_1001E208C(uint64_t result)
{
  if (result)
  {
    v35 = *(result + 16);
    if (v35)
    {
      v2 = v1;
      v3 = 0;
      v34 = result + 32;
      v33 = *(*v1 + 376);
      while (1)
      {
        v4 = v34 + 72 * v3;
        v5 = *(v4 + 8);
        v41 = *v4;
        if (*(v4 + 32))
        {
          v38 = *(v4 + 24);
        }

        else
        {
          v38._countAndFlagsBits = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v38._object = v6;
        }

        swift_bridgeObjectRetain_n();
        swift_bridgeObjectRetain_n();

        result = v33(v7);
        v40 = *(result + 16);
        if (v40)
        {
          break;
        }

LABEL_5:
        ++v3;

        if (v3 == v35)
        {
          return result;
        }
      }

      v36 = v3;
      v8 = 0;
      v39 = result + 32;
      v9 = result;
      v37 = result;
      while (1)
      {
        if (v8 >= *(v9 + 16))
        {
          __break(1u);
          return result;
        }

        v12 = v39 + 24 * v8;
        v14 = *v12;
        v13 = *(v12 + 8);
        v15 = *(v12 + 16);
        if (*(v12 + 17))
        {
          result = sub_100305028(v14, v13, v41, v5);
          if ((result & 1) == 0)
          {
            goto LABEL_14;
          }

          sub_1001E95F0();
          _StringGuts.grow(_:)(36);

          v16._countAndFlagsBits = v41;
          v16._object = v5;
          String.append(_:)(v16);
          v17._countAndFlagsBits = 0x72657020746F6E20;
          v17._object = 0xEE0064657474696DLL;
          String.append(_:)(v17);
          (*(*v2 + 336))(7955819, 0xE300000000000000, 0x6E65726566657270, 0xEB00000000736563, 0xD000000000000014, 0x800000010043F300, v15);
        }

        else
        {
          if (*(v14 + 16))
          {
            sub_1001E95F0();

            v18 = sub_100181630(v38._countAndFlagsBits, v38._object);
            v20 = v19;
            v9 = v37;

            if (v20)
            {
              v21 = *(*(v14 + 56) + 8 * v18);
              if (*(v21 + 16))
              {
                Hasher.init(_seed:)();
                UTF8String.hash(into:)();
                v22 = Hasher._finalize()();
                v23 = -1 << *(v21 + 32);
                v24 = v22 & ~v23;
                if ((*(v21 + 56 + ((v24 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v24))
                {
                  v25 = ~v23;
                  while ((sub_100305028(v41, v5, *(*(v21 + 48) + 16 * v24), *(*(v21 + 48) + 16 * v24 + 8)) & 1) == 0)
                  {
                    v24 = (v24 + 1) & v25;
                    if (((*(v21 + 56 + ((v24 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v24) & 1) == 0)
                    {
                      goto LABEL_26;
                    }
                  }

                  result = sub_1001E95FC();
                  v9 = v37;
                }

                else
                {
LABEL_26:

                  _StringGuts.grow(_:)(86);
                  v26._countAndFlagsBits = v41;
                  v26._object = v5;
                  String.append(_:)(v26);
                  v27._countAndFlagsBits = 0xD00000000000004ELL;
                  v27._object = 0x800000010043F380;
                  String.append(_:)(v27);
                  String.append(_:)(v38);
                  v28._countAndFlagsBits = 8250;
                  v28._object = 0xE200000000000000;
                  String.append(_:)(v28);
                  v29 = (*(*v2 + 368))(v21);
                  v31 = v30;

                  v32._countAndFlagsBits = v29;
                  v32._object = v31;
                  String.append(_:)(v32);

                  (*(*v2 + 336))(0x746163696C707061, 0xEE0064695F6E6F69, 0x6E65726566657270, 0xEB00000000736563, 0, 0xE000000000000000, v13);
                  sub_1001E95FC();

                  v9 = v37;
                }
              }

              else
              {
                result = sub_1001E95FC();
              }

              goto LABEL_14;
            }
          }

          else
          {
          }

          _StringGuts.grow(_:)(84);
          String.append(_:)(v38);
          v10._countAndFlagsBits = 0xD000000000000050;
          v10._object = 0x800000010043F320;
          String.append(_:)(v10);
          v11._countAndFlagsBits = (*(*v2 + 360))(v14);
          String.append(_:)(v11);

          (*(*v2 + 336))(0x746163696C707061, 0xEE0064695F6E6F69, 0x6E65726566657270, 0xEB00000000736563, 0, 0xE000000000000000, v13);
        }

        sub_1001E95FC();

LABEL_14:
        if (++v8 == v40)
        {

          v3 = v36;
          goto LABEL_5;
        }
      }
    }
  }

  return result;
}

uint64_t sub_1001E27D4(uint64_t result)
{
  if (result == 1)
  {
    return (*(*v1 + 336))(0x416572756C696166, 0xED00006E6F697463, 0x746C75736572, 0xE600000000000000, 0xD00000000000002BLL, 0x800000010043F3D0, 2);
  }

  return result;
}

uint64_t sub_1001E285C(uint64_t result)
{
  if (*(result + 8))
  {
    return (*(*v1 + 336))(1919251317, 0xE400000000000000, 0, 0, 0xD00000000000002CLL, 0x800000010043F400, 3);
  }

  return result;
}

uint64_t sub_1001E28C4(uint64_t result)
{
  if ((result & 0xFF00) != 0x300)
  {
    v7 = result;
    v8 = 0;
    v9 = 0;
    v10 = (BYTE1(result) == 2) | BYTE1(result);
    while (1)
    {
      v14 = v8;
      if ((*(&off_100485B68 + v9 + 32) & 1) == 0)
      {
        break;
      }

      if ((v10 & 1) == 0)
      {
        goto LABEL_8;
      }

      _StringGuts.grow(_:)(69);
      v15._countAndFlagsBits = 0xD00000000000003ALL;
      v15._object = 0x800000010043F4B0;
      String.append(_:)(v15);
      v16._object = 0x800000010043D520;
      v16._countAndFlagsBits = 0xD000000000000016;
      String.append(_:)(v16);
      v17._countAndFlagsBits = 0x736C6166206F7420;
      v17._object = 0xE900000000000065;
      String.append(_:)(v17);
      (*(*v1 + 336))(0xD000000000000016, 0x800000010043D520, 6778732, 0xE300000000000000, 0, 0xE000000000000000, 5);
LABEL_7:

LABEL_8:
      v8 = 1;
      v9 = &_mh_execute_header.magic + 1;
      if (v14)
      {
        return result;
      }
    }

    if (v7 > 1u)
    {
      if (v7 != 2)
      {
LABEL_6:
        _StringGuts.grow(_:)(53);
        v11._countAndFlagsBits = 0xD000000000000029;
        v11._object = 0x800000010043F430;
        String.append(_:)(v11);
        v12._countAndFlagsBits = 0xD000000000000018;
        v12._object = 0x800000010043D500;
        String.append(_:)(v12);
        v13._countAndFlagsBits = 0x6C627550206F7420;
        v13._object = 0xEA00000000006369;
        String.append(_:)(v13);
        (*(*v1 + 336))(0xD000000000000018, 0x800000010043D500, 6778732, 0xE300000000000000, 0, 0xE000000000000000, 5);
        goto LABEL_7;
      }
    }

    else if (!v7)
    {
      goto LABEL_7;
    }

    v18 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v18)
    {
      goto LABEL_8;
    }

    goto LABEL_6;
  }

  _StringGuts.grow(_:)(124);
  v2._countAndFlagsBits = 0xD000000000000029;
  v2._object = 0x800000010043F430;
  String.append(_:)(v2);
  v3._countAndFlagsBits = 0xD000000000000018;
  v3._object = 0x800000010043D500;
  String.append(_:)(v3);
  v4._countAndFlagsBits = 0xD000000000000046;
  v4._object = 0x800000010043F460;
  String.append(_:)(v4);
  v5._object = 0x800000010043D520;
  v5._countAndFlagsBits = 0xD000000000000016;
  String.append(_:)(v5);
  v6._countAndFlagsBits = 0x736C6166206F7420;
  v6._object = 0xE900000000000065;
  String.append(_:)(v6);
  (*(*v1 + 336))(6778732, 0xE300000000000000, 0, 0, 0, 0xE000000000000000, 5);
}

uint64_t sub_1001E2CB4(uint64_t result)
{
  if (result)
  {
    return (*(*v1 + 336))(0x6B726F7774656ELL, 0xE700000000000000, 0, 0, 0xD000000000000033, 0x800000010043F4F0, 2);
  }

  return result;
}

uint64_t sub_1001E2D20(uint64_t result)
{
  if (*(result + 56) != 2)
  {
    return (*(*v1 + 336))(0xD000000000000010, 0x800000010043D340, 0, 0, 0xD000000000000037, 0x800000010043F530, 2);
  }

  return result;
}

uint64_t sub_1001E2DA0(uint64_t result)
{
  if (result != 2 && (result & 1) != 0)
  {
    _StringGuts.grow(_:)(60);
    v2._countAndFlagsBits = 0xD000000000000023;
    v2._object = 0x800000010043F570;
    String.append(_:)(v2);
    v3._countAndFlagsBits = 6845299;
    v3._object = 0xE300000000000000;
    String.append(_:)(v3);
    v4._object = 0x800000010043F5A0;
    v4._countAndFlagsBits = 0xD000000000000017;
    String.append(_:)(v4);
    (*(*v1 + 336))(6845299, 0xE300000000000000, 0, 0, 0, 0xE000000000000000, 2);
  }

  return result;
}

uint64_t sub_1001E2ED8(uint64_t result)
{
  if (result != 2 && (result & 1) != 0)
  {
    _StringGuts.grow(_:)(77);
    v2._countAndFlagsBits = 0xD000000000000034;
    v2._object = 0x800000010043F5C0;
    String.append(_:)(v2);
    v3._countAndFlagsBits = 0x756177705F687373;
    v3._object = 0xEA00000000006874;
    String.append(_:)(v3);
    v4._object = 0x800000010043F5A0;
    v4._countAndFlagsBits = 0xD000000000000017;
    String.append(_:)(v4);
    (*(*v1 + 336))(0x756177705F687373, 0xEA00000000006874, 0, 0, 0, 0xE000000000000000, 2);
  }

  return result;
}

uint64_t sub_1001E3020(uint64_t result)
{
  if (result != 2 && (result & 1) != 0)
  {
    _StringGuts.grow(_:)(67);
    v2._countAndFlagsBits = 0xD00000000000002ALL;
    v2._object = 0x800000010043F600;
    String.append(_:)(v2);
    v3._countAndFlagsBits = 0x746F6F626572;
    v3._object = 0xE600000000000000;
    String.append(_:)(v3);
    v4._object = 0x800000010043F5A0;
    v4._countAndFlagsBits = 0xD000000000000017;
    String.append(_:)(v4);
    (*(*v1 + 336))(0x746F6F626572, 0xE600000000000000, 0, 0, 0, 0xE000000000000000, 2);
  }

  return result;
}

uint64_t sub_1001E3164(uint64_t result)
{
  if (result != 2 && (result & 1) == 0)
  {
    return (*(*v1 + 336))(0x7972632D6B636F6CLL, 0xEE00736578657470, 0, 0, 0xD000000000000028, 0x800000010043F670, 4);
  }

  return result;
}

uint64_t sub_1001E31E8(uint64_t result)
{
  if (result)
  {
    _StringGuts.grow(_:)(58);
    v2._object = 0x800000010043F6A0;
    v2._countAndFlagsBits = 0xD00000000000002ALL;
    String.append(_:)(v2);
    v3._countAndFlagsBits = 0x74696E692D657270;
    v3._object = 0xED000073646D632DLL;
    String.append(_:)(v3);
    v4._countAndFlagsBits = 0x6562207473756D20;
    v4._object = 0xEE007465736E7520;
    String.append(_:)(v4);
    (*(*v1 + 336))(0x74696E692D657270, 0xED000073646D632DLL, 0, 0, 0, 0xE000000000000000, 2);
  }

  return result;
}

uint64_t sub_1001E333C(uint64_t result)
{
  if (result != 2 && (result & 1) != 0)
  {
    _StringGuts.grow(_:)(100);
    v2._countAndFlagsBits = 0xD00000000000004BLL;
    v2._object = 0x800000010043F6D0;
    String.append(_:)(v2);
    v3._object = 0x800000010043D1C0;
    v3._countAndFlagsBits = 0xD000000000000011;
    String.append(_:)(v3);
    v4._countAndFlagsBits = 0xD000000000000017;
    v4._object = 0x800000010043F5A0;
    String.append(_:)(v4);
    (*(*v1 + 336))(0xD000000000000011, 0x800000010043D1C0, 0, 0, 0, 0xE000000000000000, 2);
  }

  return result;
}

unint64_t sub_1001E347C(uint64_t *a1)
{
  v2 = v1;
  v147 = type metadata accessor for CharacterSet();
  v151 = *(v147 - 8);
  v4 = __chkstk_darwin(v147);
  v146 = v122 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v4);
  v145 = v122 - v7;
  __chkstk_darwin(v6);
  v154 = v122 - v8;
  v149 = type metadata accessor for Logger();
  v150 = *(v149 - 8);
  v9 = __chkstk_darwin(v149);
  v140 = v122 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v155 = v122 - v11;
  v12 = type metadata accessor for SecureConfigParameters.Keys();
  v13 = *(v12 - 8);
  v14 = __chkstk_darwin(v12);
  v177 = v122 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v14);
  v182 = v122 - v17;
  __chkstk_darwin(v16);
  v19 = v122 - v18;
  v20 = *a1;
  v21 = *(v13 + 104);
  v176 = enum case for SecureConfigParameters.Keys.logPolicyPath(_:);
  v21(v122 - v18);
  v170 = SecureConfigParameters.Keys.rawValue.getter();
  v173 = v22;
  v178 = v13;
  v23 = *(v13 + 8);
  v23(v19, v12);
  v168 = enum case for SecureConfigParameters.Keys.metricsFilteringEnforced(_:);
  v21(v19);
  v169 = SecureConfigParameters.Keys.rawValue.getter();
  v179 = v24;
  v23(v19, v12);
  v159 = enum case for SecureConfigParameters.Keys.logFilteringEnforced(_:);
  v21(v19);
  v167 = SecureConfigParameters.Keys.rawValue.getter();
  v181 = v25;
  v23(v19, v12);
  v156 = enum case for SecureConfigParameters.Keys.crashRedactionEnabled(_:);
  v21(v19);
  v166 = SecureConfigParameters.Keys.rawValue.getter();
  v171 = v26;
  v23(v19, v12);
  v148 = enum case for SecureConfigParameters.Keys.tie_allowNonProdExceptionOptions(_:);
  v21(v19);
  v144 = SecureConfigParameters.Keys.rawValue.getter();
  v28 = v27;
  v23(v19, v12);
  v142 = enum case for SecureConfigParameters.Keys.research_disableAppleInfrastrucutureEnforcement(_:);
  v21(v19);
  v141 = SecureConfigParameters.Keys.rawValue.getter();
  v30 = v29;
  v23(v19, v12);
  v143 = enum case for SecureConfigParameters.Keys.cryptexAppIdentifiers(_:);
  v21(v19);
  v152 = SecureConfigParameters.Keys.rawValue.getter();
  v32 = v31;
  v174 = v23;
  v175 = v13 + 8;
  v33 = (v23)(v19, v12);
  v35 = (*(*v2 + 352))(v33);
  v36 = v34;
  if ((~v20 & 0xF000000000000007) == 0)
  {

    v183 = 0;
    v184 = 0xE000000000000000;
    _StringGuts.grow(_:)(64);
    v37._countAndFlagsBits = 0x632D657275636573;
    v37._object = 0xED00006769666E6FLL;
    String.append(_:)(v37);
    v38._countAndFlagsBits = 0xD000000000000012;
    v38._object = 0x800000010043F720;
    String.append(_:)(v38);
    v39._countAndFlagsBits = v170;
    v39._object = v173;
    String.append(_:)(v39);

    v40._countAndFlagsBits = 2112800;
    v40._object = 0xE300000000000000;
    String.append(_:)(v40);
    v41._countAndFlagsBits = v35;
    v41._object = v36;
    String.append(_:)(v41);

    v42._countAndFlagsBits = 8236;
    v42._object = 0xE200000000000000;
    String.append(_:)(v42);
    v43._countAndFlagsBits = v169;
    v43._object = v179;
    String.append(_:)(v43);

    v44._countAndFlagsBits = 0x2C65757274203D20;
    v44._object = 0xE900000000000020;
    String.append(_:)(v44);
    v45._countAndFlagsBits = v167;
    v45._object = v181;
    String.append(_:)(v45);

    v46._object = 0xED000020646E6120;
    v46._countAndFlagsBits = 0x2C65757274203D20;
    String.append(_:)(v46);
    v47._countAndFlagsBits = v166;
    v47._object = v171;
    String.append(_:)(v47);

    v48._countAndFlagsBits = 0x65757274203D20;
    v48._object = 0xE700000000000000;
    String.append(_:)(v48);
    (*(*v2 + 336))(0x632D657275636573, 0xED00006769666E6FLL, 0, 0, v183, v184, 2);
  }

  v172 = v30;
  v180 = v32;
  v158 = v34;
  v153 = v28;
  v157 = v2;
  type metadata accessor for JSONEncoder();
  swift_allocObject();
  JSONEncoder.init()();
  v183 = v20;
  sub_1000039E8(&qword_1004ABD38);
  sub_1001E9608();
  v50 = 0;
  v51 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  v53 = v52;
  v139 = v35;
  type metadata accessor for SecureConfigParameters();
  (*(*v157 + 168))();
  v54 = static SecureConfigParameters.decode(parametersJson:securityPolicy:)();
  sub_100031928(v51, v53);

  result = static SecureConfigParameters.Keys.allCases.getter();
  v163 = *(result + 16);
  if (!v163)
  {
  }

  v164 = v54;
  v56 = 0;
  v57 = (*(v178 + 80) + 32) & ~*(v178 + 80);
  v165 = result;
  v162 = result + v57;
  v160 = v178 + 16;
  v161 = v178 + 88;
  v138 = enum case for SecureConfigParameters.Keys.internalRequestOptionsAllowed(_:);
  v131 = enum case for SecureConfigParameters.Keys.cloudboard_isProxy(_:);
  v125 = " parameters with error: ";
  v128 = enum case for SecureConfigParameters.Keys.cloudAttestationRoutingHint(_:);
  v126 = enum case for SecureConfigParameters.Keys.cloudAttestationRackId(_:);
  v124 = "rs, periods, and hyphens";
  v136 = (v150 + 8);
  v58 = (v151 + 8);
  v137 = "eeds to be updated";
  v127 = " must be set to ";
  v129 = "be unset or set to false";
  v151 = "false unless in a VM";
  v150 = " must be set to true";
  *&v55 = 136315138;
  v123 = v55;
  v59 = v157;
  v60 = v181;
  v135 = v58;
  while (v56 < *(v165 + 16))
  {
    v61 = v178;
    v62 = *(v178 + 16);
    v63 = v182;
    v62(v182, v162 + *(v178 + 72) * v56, v12);
    v64 = v177;
    v62(v177, v63, v12);
    v65 = (*(v61 + 88))(v64, v12);
    if (v65 == v176)
    {
      v66 = SecureConfigParameters.logPolicyPath.getter();
      v67 = (*(*v59 + 344))(v66);

      if ((v67 & 1) == 0)
      {
        v185 = 0;
        v186 = 0xE000000000000000;
        _StringGuts.grow(_:)(20);
        v68 = v173;

        v69 = v170;
        v185 = v170;
        v186 = v68;
        v70._countAndFlagsBits = 0xD000000000000010;
        v70._object = (v150 | 0x8000000000000000);
        String.append(_:)(v70);
        v71 = v139;
        v72 = v158;
LABEL_14:
        String.append(_:)(*&v71);
        v74 = v68;
        v60 = v181;
        (*(*v59 + 336))(v69, v74, 0x632D657275636573, 0xED00006769666E6FLL, v185, v186, 2);
LABEL_15:
      }
    }

    else
    {
      if (v65 == v168)
      {
        v73 = SecureConfigParameters.metricsFilteringEnforced.getter();
        if (v73 != 2 && (v73 & 1) != 0)
        {
          goto LABEL_16;
        }

        v185 = 0;
        v186 = 0xE000000000000000;
        _StringGuts.grow(_:)(22);
        v68 = v179;

        v69 = v169;
        v185 = v169;
        v186 = v68;
        v72 = v151 | 0x8000000000000000;
        v71 = 0xD000000000000014;
        goto LABEL_14;
      }

      if (v65 == v159)
      {
        v75 = SecureConfigParameters.logFilteringEnforced.getter();
        if (v75 != 2 && (v75 & 1) != 0)
        {
          goto LABEL_16;
        }

        v185 = 0;
        v186 = 0xE000000000000000;
        _StringGuts.grow(_:)(22);

        v76 = v167;
        v185 = v167;
        v186 = v60;
        v77._object = (v151 | 0x8000000000000000);
        v77._countAndFlagsBits = 0xD000000000000014;
        String.append(_:)(v77);
        (*(*v59 + 336))(v76, v60, 0x632D657275636573, 0xED00006769666E6FLL, v185, v186, 2);
        goto LABEL_15;
      }

      if (v65 == v156)
      {
        v78 = SecureConfigParameters.crashRedactionEnabled.getter();
        if (v78 == 2 || (v78 & 1) == 0)
        {
          v185 = 0;
          v186 = 0xE000000000000000;
          _StringGuts.grow(_:)(22);
          v79 = v171;

          v80 = v166;
          v185 = v166;
          v186 = v79;
          v81._object = (v151 | 0x8000000000000000);
          v81._countAndFlagsBits = 0xD000000000000014;
          String.append(_:)(v81);
          (*(*v59 + 336))(v80, v79, 0x632D657275636573, 0xED00006769666E6FLL, v185, v186, 2);
        }
      }

      else if (v65 == v138)
      {
        (*(*v59 + 144))();
        v82 = Logger.logObject.getter();
        v83 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v82, v83))
        {
          v84 = swift_slowAlloc();
          *v84 = 0;
          _os_log_impl(&_mh_execute_header, v82, v83, "com.apple.tie.internalRequestOptionsAllowed is deprecated, please replace with com.apple.tie.allowNonProdExceptionOptions moving forward.", v84, 2u);
          v60 = v181;
        }

        (*v136)(v155, v149);
        v85 = SecureConfigParameters.internalRequestOptionsAllowed.getter();
        if (v85 != 2 && (v85 & 1) != 0)
        {
          (*(*v59 + 336))(v144, v153, 0, 0, 0xD000000000000049, v129 | 0x8000000000000000, 8);
        }
      }

      else if (v65 == v148)
      {
        v86 = SecureConfigParameters.tie_allowNonProdExceptionOptions.getter();
        if (v86 != 2 && (v86 & 1) != 0)
        {
          (*(*v59 + 336))(v144, v153, 0, 0, 0xD000000000000048, v127 | 0x8000000000000000, 8);
        }
      }

      else if (v65 == v131)
      {
        v87 = SecureConfigParameters.cloudboard_isProxy.getter();
        (*(*v59 + 576))(v87);
      }

      else if (v65 == v143)
      {
        v88 = SecureConfigParameters.cryptexAppIdentifiers.getter();
        if (v88)
        {
          v89 = *(v88 + 16);
          v122[1] = v88;
          if (!v89)
          {
LABEL_64:

            goto LABEL_65;
          }

          v90 = (v88 + 40);
          while (2)
          {
            v91 = *(v90 - 1);
            v95 = *v90;
            if ((*v90 & 0x2000000000000000) != 0)
            {
              v96 = (*v90 >> 56) & 0xF;
            }

            else
            {
              v96 = v91 & 0xFFFFFFFFFFFFLL;
            }

            if (v96)
            {
              v134 = v89;
              v97 = v145;
              CharacterSet.init(charactersIn:)();
              v98 = v146;
              static CharacterSet.alphanumerics.getter();
              CharacterSet.union(_:)();
              v132 = v50;
              v99 = v91;
              v100 = *v135;
              v101 = v98;
              v102 = v154;
              v103 = v147;
              (*v135)(v101, v147);
              v133 = v100;
              v104 = (v100)(v97, v103);
              __chkstk_darwin(v104);
              v122[-2] = v102;
              v130 = v99;
              v105 = v99;
              v50 = v132;
              if (sub_1001DE260(sub_1001EB3CC, &v122[-4], v105, v95))
              {

                v133(v102, v103);
                v89 = v134;
LABEL_46:
                v90 += 2;
                if (!--v89)
                {
                  goto LABEL_64;
                }

                continue;
              }

              v133(v102, v103);
              v91 = v130;
              v89 = v134;
            }

            break;
          }

          v185 = 0;
          v186 = 0xE000000000000000;
          _StringGuts.grow(_:)(91);
          v92._countAndFlagsBits = 39;
          v92._object = 0xE100000000000000;
          String.append(_:)(v92);
          v93._countAndFlagsBits = v91;
          v93._object = v95;
          String.append(_:)(v93);

          v94._countAndFlagsBits = 0xD000000000000058;
          v94._object = (v137 | 0x8000000000000000);
          String.append(_:)(v94);
          (*(*v157 + 336))(v152, v180, 0x632D657275636573, 0xED00006769666E6FLL, v185, v186, 11);

          goto LABEL_46;
        }
      }

      else if (v65 != v128 && v65 != v126)
      {
        if (v65 != v142)
        {
          v116 = v182;
          v117 = SecureConfigParameters.Keys.rawValue.getter();
          (*(*v59 + 336))(v117);

          v118 = v174;
          v174(v116, v12);
          v118(v177, v12);
          goto LABEL_17;
        }

        v106 = SecureConfigParameters.research_disableAppleInfrastrucutureEnforcement.getter();
        if (v106 != 2 && (v106 & 1) != 0)
        {
          if (qword_1004A9DF0 != -1)
          {
            swift_once();
          }

          swift_beginAccess();
          v107 = *(*static RealComputer.shared + 288);

          v109 = v107(v108);

          if (v109)
          {
            v111 = v140;
            (*(*v59 + 144))(v110);

            v112 = Logger.logObject.getter();
            v113 = static os_log_type_t.debug.getter();

            if (os_log_type_enabled(v112, v113))
            {
              v114 = swift_slowAlloc();
              v115 = swift_slowAlloc();
              v185 = v115;
              *v114 = v123;
              *(v114 + 4) = sub_1000026C0(v141, v172, &v185);
              _os_log_impl(&_mh_execute_header, v112, v113, "Running in a VM, so %s is valid.", v114, 0xCu);
              sub_100003C3C(v115);
            }

            (*v136)(v111, v149);
LABEL_65:
            v174(v182, v12);
            v59 = v157;
          }

          else
          {
            v185 = 0;
            v186 = 0xE000000000000000;
            _StringGuts.grow(_:)(38);
            v119 = v172;

            v120 = v141;
            v185 = v141;
            v186 = v119;
            v121._countAndFlagsBits = 0xD000000000000024;
            v121._object = (v124 | 0x8000000000000000);
            String.append(_:)(v121);
            (*(*v59 + 336))(v120, v119, 0x632D657275636573, 0xED00006769666E6FLL, v185, v186, 8);

            v174(v182, v12);
          }

          v60 = v181;
          goto LABEL_17;
        }
      }
    }

LABEL_16:
    v174(v182, v12);
LABEL_17:
    ++v56;
    result = v172;
    if (v56 == v163)
    {
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1001E4D74(uint64_t result)
{
  if (result != 2 && (result & 1) != 0)
  {
    _StringGuts.grow(_:)(95);
    v2._countAndFlagsBits = 0xD000000000000046;
    v2._object = 0x800000010043F940;
    String.append(_:)(v2);
    v3._object = 0x800000010043D200;
    v3._countAndFlagsBits = 0xD00000000000002BLL;
    String.append(_:)(v3);
    v4._countAndFlagsBits = 0xD000000000000017;
    v4._object = 0x800000010043F5A0;
    String.append(_:)(v4);
    (*(*v1 + 336))(0xD00000000000002BLL, 0x800000010043D200, 0, 0, 0, 0xE000000000000000, 2);
  }

  return result;
}

uint64_t sub_1001E4EB4(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    _StringGuts.grow(_:)(79);
    v3._countAndFlagsBits = 0xD00000000000003FLL;
    v3._object = 0x800000010043F990;
    String.append(_:)(v3);
    v4._object = 0x800000010043D230;
    v4._countAndFlagsBits = 0xD00000000000001CLL;
    String.append(_:)(v4);
    v5._countAndFlagsBits = 0x6562207473756D20;
    v5._object = 0xEE007465736E7520;
    String.append(_:)(v5);
    (*(*v2 + 336))(0xD00000000000001CLL, 0x800000010043D230, 0, 0, 0, 0xE000000000000000, 2);
  }

  return result;
}

uint64_t sub_1001E4FF8(uint64_t result)
{
  if (result != 2 && (result & 1) != 0)
  {
    _StringGuts.grow(_:)(75);
    v2._countAndFlagsBits = 0xD000000000000032;
    v2._object = 0x800000010043F9D0;
    String.append(_:)(v2);
    v3._object = 0x800000010043D2A0;
    v3._countAndFlagsBits = 0xD00000000000001ELL;
    String.append(_:)(v3);
    v4._countAndFlagsBits = 0xD000000000000017;
    v4._object = 0x800000010043F5A0;
    String.append(_:)(v4);
    (*(*v1 + 336))(0xD00000000000001ELL, 0x800000010043D2A0, 0, 0, 0, 0xE000000000000000, 7);
  }

  return result;
}

uint64_t sub_1001E5138(unsigned __int8 a1)
{
  v2 = v1;
  v4 = a1;
  v5 = type metadata accessor for SecureConfigParameters.Keys();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 104))(v8, enum case for SecureConfigParameters.Keys.cloudboard_isProxy(_:), v5);
  v9 = SecureConfigParameters.Keys.rawValue.getter();
  v11 = v10;
  (*(v6 + 8))(v8, v5);
  if (v4 != 2 && (a1 & 1) != 0)
  {
    (*(*v2 + 336))(v9, v11, 0, 0, 0xD00000000000001ELL, 0x800000010043FA10, 8);
  }
}

uint64_t (*sub_1001E53D0(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  *(v3 + 32) = (*(**v1 + 256))();
  return sub_1001EB3F4;
}

uint64_t (*sub_1001E5538(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  *(v3 + 32) = (*(**v1 + 208))();
  return sub_1001EB3F4;
}

uint64_t (*sub_1001E5664(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  *(v3 + 32) = (*(**v1 + 280))();
  return sub_1001EB3F4;
}

uint64_t (*sub_1001E5798(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  *(v3 + 32) = (*(**v1 + 304))();
  return sub_1001E5834;
}

void sub_1001E5838(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

uint64_t sub_1001E65B8(unsigned __int8 a1)
{
  v2 = v1;
  v4 = a1;
  v5 = type metadata accessor for SecureConfigParameters.Keys();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 104))(v8, enum case for SecureConfigParameters.Keys.cloudboard_isProxy(_:), v5);
  v9 = SecureConfigParameters.Keys.rawValue.getter();
  v11 = v10;
  (*(v6 + 8))(v8, v5);
  if (v4 == 2 || (a1 & 1) == 0)
  {
    (*(*v2 + 336))(v9, v11, 0, 0, 0xD00000000000001BLL, 0x800000010043FA30, 8);
  }
}

uint64_t _s10DarwinInit17CustomerValidatorCfd_0()
{
  v1 = OBJC_IVAR____TtC10DarwinInit17CustomerValidator_logger;
  v2 = type metadata accessor for Logger();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  memcpy(v4, (v0 + OBJC_IVAR____TtC10DarwinInit17CustomerValidator_config), 0x2D8uLL);
  sub_1001D711C(v4);

  return v0;
}

uint64_t _s10DarwinInit17CustomerValidatorCfD_0()
{
  v1 = OBJC_IVAR____TtC10DarwinInit17CustomerValidator_logger;
  v2 = type metadata accessor for Logger();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  memcpy(v4, (v0 + OBJC_IVAR____TtC10DarwinInit17CustomerValidator_config), 0x2D8uLL);
  sub_1001D711C(v4);

  return swift_deallocClassInstance();
}

uint64_t sub_1001E68E4(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a1 == 0xD00000000000003ALL && 0x800000010043F200 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || a1 == 0xD000000000000037 && 0x800000010043FA50 == a2)
  {
    return 1;
  }

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

void *sub_1001E69D8(void *result)
{
  if (result[1])
  {
    v2 = 0;
    v3 = result[7];
    v4 = result[4];
    while (1)
    {
      v8 = *(&off_100485B10 + v2++ + 32);
      if (((1 << v8) & 0x1D7) != 0)
      {
        goto LABEL_6;
      }

      if (v8 == 3)
      {
        break;
      }

      if (v3)
      {
        _StringGuts.grow(_:)(61);
        v5._countAndFlagsBits = 0xD00000000000002DLL;
        v5._object = 0x800000010043FB40;
        String.append(_:)(v5);
        v6._object = 0x800000010043D590;
        v6._countAndFlagsBits = 0xD000000000000012;
        String.append(_:)(v6);
        v7._countAndFlagsBits = 0x6562207473756D20;
        v7._object = 0xEE007465736E7520;
        String.append(_:)(v7);
        (*(*v1 + 336))(0xD000000000000012, 0x800000010043D590, 1919251317, 0xE400000000000000, 0, 0xE000000000000000, 3);
LABEL_5:
      }

LABEL_6:
      if (v2 == 9)
      {
        return result;
      }
    }

    if (!v4)
    {
      goto LABEL_6;
    }

    _StringGuts.grow(_:)(53);
    v9._countAndFlagsBits = 0xD000000000000025;
    v9._object = 0x800000010043FB10;
    String.append(_:)(v9);
    v10._countAndFlagsBits = 0x64726F7773736170;
    v10._object = 0xE800000000000000;
    String.append(_:)(v10);
    v11._countAndFlagsBits = 0x6562207473756D20;
    v11._object = 0xEE007465736E7520;
    String.append(_:)(v11);
    (*(*v1 + 336))(0x64726F7773736170, 0xE800000000000000, 1919251317, 0xE400000000000000, 0, 0xE000000000000000, 3);
    goto LABEL_5;
  }

  return result;
}

uint64_t sub_1001E6C50(__int16 a1)
{
  if ((a1 & 0xFF00) == 0x300)
  {
    _StringGuts.grow(_:)(53);
    v2._countAndFlagsBits = 0xD000000000000029;
    v2._object = 0x800000010043F430;
    String.append(_:)(v2);
    v3._object = 0x800000010043D500;
    v3._countAndFlagsBits = 0xD000000000000018;
    String.append(_:)(v3);
    v4._countAndFlagsBits = 0x6C627550206F7420;
    v4._object = 0xEA00000000006369;
    String.append(_:)(v4);
    (*(*v1 + 336))(6778732, 0xE300000000000000, 0, 0, 0, 0xE000000000000000, 5);
  }

  if (a1 <= 1u)
  {
    if (!a1)
    {
    }

    goto LABEL_9;
  }

  if (a1 == 2)
  {
LABEL_9:
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v5)
    {
      return result;
    }
  }

  _StringGuts.grow(_:)(53);
  v7._countAndFlagsBits = 0xD000000000000029;
  v7._object = 0x800000010043F430;
  String.append(_:)(v7);
  v8._object = 0x800000010043D500;
  v8._countAndFlagsBits = 0xD000000000000018;
  String.append(_:)(v8);
  v9._countAndFlagsBits = 0x6C627550206F7420;
  v9._object = 0xEA00000000006369;
  String.append(_:)(v9);
  (*(*v1 + 336))(0xD000000000000018, 0x800000010043D500, 6778732, 0xE300000000000000, 0, 0xE000000000000000, 5);
}

uint64_t sub_1001E7044(uint64_t result, uint64_t a2)
{
  if (result != 5)
  {
    if (result)
    {
      v4 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v4 & 1) == 0)
      {
        v5 = *(*v2 + 336);

        return v5(0xD000000000000010, 0x800000010043D1A0, 0, 0, 0xD000000000000035, 0x800000010043F630, a2);
      }
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_1001E71B4(uint64_t result)
{
  if (result)
  {
    return (*(*v1 + 336))(0x73656D756C6F76, 0xE700000000000000, 0, 0, 0xD000000000000019, 0x800000010043F240, 10);
  }

  return result;
}

uint64_t sub_1001E7220(uint64_t *a1)
{
  v2 = v1;
  v151 = type metadata accessor for CharacterSet();
  v156 = *(v151 - 8);
  v4 = __chkstk_darwin(v151);
  v150 = v127 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v4);
  v149 = v127 - v7;
  __chkstk_darwin(v6);
  v158 = v127 - v8;
  v153 = type metadata accessor for Logger();
  v155 = *(v153 - 8);
  v9 = __chkstk_darwin(v153);
  v145 = v127 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v160 = v127 - v11;
  v12 = type metadata accessor for SecureConfigParameters.Keys();
  v13 = *(v12 - 8);
  v14 = __chkstk_darwin(v12);
  v180 = v127 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v14);
  v182 = v127 - v17;
  __chkstk_darwin(v16);
  v19 = v127 - v18;
  v20 = *a1;
  v21 = *(v13 + 104);
  v179 = enum case for SecureConfigParameters.Keys.logPolicyPath(_:);
  v21(v127 - v18);
  v174 = SecureConfigParameters.Keys.rawValue.getter();
  v23 = v22;
  v169 = v13;
  v24 = *(v13 + 8);
  v24(v19, v12);
  v172 = enum case for SecureConfigParameters.Keys.metricsFilteringEnforced(_:);
  v21(v19);
  v173 = SecureConfigParameters.Keys.rawValue.getter();
  v176 = v25;
  v24(v19, v12);
  v162 = enum case for SecureConfigParameters.Keys.logFilteringEnforced(_:);
  v21(v19);
  v171 = SecureConfigParameters.Keys.rawValue.getter();
  v181 = v26;
  v24(v19, v12);
  v159 = enum case for SecureConfigParameters.Keys.crashRedactionEnabled(_:);
  v21(v19);
  v170 = SecureConfigParameters.Keys.rawValue.getter();
  v175 = v27;
  v24(v19, v12);
  v152 = enum case for SecureConfigParameters.Keys.tie_allowNonProdExceptionOptions(_:);
  v21(v19);
  SecureConfigParameters.Keys.rawValue.getter();

  v24(v19, v12);
  v147 = enum case for SecureConfigParameters.Keys.research_disableAppleInfrastrucutureEnforcement(_:);
  v21(v19);
  v146 = SecureConfigParameters.Keys.rawValue.getter();
  v29 = v28;
  v24(v19, v12);
  v148 = enum case for SecureConfigParameters.Keys.cryptexAppIdentifiers(_:);
  v21(v19);
  v30 = SecureConfigParameters.Keys.rawValue.getter();
  v32 = v31;
  v177 = v24;
  v178 = v13 + 8;
  v33 = (v24)(v19, v12);
  v34 = (*(*v2 + 352))(v33);
  v36 = v35;
  if ((~v20 & 0xF000000000000007) == 0)
  {
    v37 = v34;

    v183 = 0;
    v184 = 0xE000000000000000;
    _StringGuts.grow(_:)(64);
    v38._countAndFlagsBits = 0x632D657275636573;
    v38._object = 0xED00006769666E6FLL;
    String.append(_:)(v38);
    v39._countAndFlagsBits = 0xD000000000000012;
    v39._object = 0x800000010043F720;
    String.append(_:)(v39);
    v40._countAndFlagsBits = v174;
    v40._object = v23;
    String.append(_:)(v40);

    v41._countAndFlagsBits = 2112800;
    v41._object = 0xE300000000000000;
    String.append(_:)(v41);
    v42._countAndFlagsBits = v37;
    v42._object = v36;
    String.append(_:)(v42);

    v43._countAndFlagsBits = 8236;
    v43._object = 0xE200000000000000;
    String.append(_:)(v43);
    v44._countAndFlagsBits = v173;
    v44._object = v176;
    String.append(_:)(v44);

    v45._countAndFlagsBits = 0x2C65757274203D20;
    v45._object = 0xE900000000000020;
    String.append(_:)(v45);
    v46._countAndFlagsBits = v171;
    v46._object = v181;
    String.append(_:)(v46);

    v47._object = 0xED000020646E6120;
    v47._countAndFlagsBits = 0x2C65757274203D20;
    String.append(_:)(v47);
    v48._countAndFlagsBits = v170;
    v48._object = v175;
    String.append(_:)(v48);

    v49._countAndFlagsBits = 0x65757274203D20;
    v49._object = 0xE700000000000000;
    String.append(_:)(v49);
    (*(*v2 + 336))(0x632D657275636573, 0xED00006769666E6FLL, 0, 0, v183, v184, 2);
  }

  v142 = v30;
  v154 = v29;
  v144 = v34;
  v157 = v32;
  v161 = v35;
  type metadata accessor for JSONEncoder();
  swift_allocObject();
  JSONEncoder.init()();
  v183 = v20;
  sub_1000039E8(&qword_1004ABD38);
  sub_1001E9608();
  v51 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  v53 = v52;
  v143 = v23;
  type metadata accessor for SecureConfigParameters();
  v54 = *(*v2 + 168);
  v141 = v2;
  v54();
  v55 = static SecureConfigParameters.decode(parametersJson:securityPolicy:)();
  sub_100031928(v51, v53);

  result = static SecureConfigParameters.Keys.allCases.getter();
  v167 = *(result + 16);
  if (!v167)
  {

    goto LABEL_64;
  }

  v163 = v55;
  v139 = 0;
  v57 = 0;
  v58 = v169;
  v59 = (*(v58 + 80) + 32) & ~*(v58 + 80);
  v168 = result;
  v166 = result + v59;
  v164 = v169 + 16;
  v165 = v169 + 88;
  v140 = enum case for SecureConfigParameters.Keys.internalRequestOptionsAllowed(_:);
  v133 = enum case for SecureConfigParameters.Keys.cloudboard_isProxy(_:);
  v130 = " parameters with error: ";
  v132 = enum case for SecureConfigParameters.Keys.cloudAttestationRoutingHint(_:);
  v131 = enum case for SecureConfigParameters.Keys.cloudAttestationRackId(_:);
  v129 = "rs, periods, and hyphens";
  v136 = (v155 + 8);
  v60 = (v156 + 8);
  v137 = "eeds to be updated";
  v156 = "false unless in a VM";
  v155 = " must be set to true";
  *&v56 = 136315138;
  v128 = v56;
  v61 = v141;
  v62 = v181;
  while (v57 < *(v168 + 16))
  {
    v63 = *(v58 + 16);
    v64 = v182;
    v63(v182, v166 + *(v58 + 72) * v57, v12);
    v65 = v180;
    v63(v180, v64, v12);
    v66 = (*(v58 + 88))(v65, v12);
    if (v66 == v179)
    {
      v67 = SecureConfigParameters.logPolicyPath.getter();
      v68 = (*(*v61 + 344))(v67);

      if ((v68 & 1) == 0)
      {
        v185 = 0;
        v186 = 0xE000000000000000;
        _StringGuts.grow(_:)(20);
        v69 = v143;

        v70 = v174;
        v185 = v174;
        v186 = v69;
        v71._countAndFlagsBits = 0xD000000000000010;
        v71._object = (v155 | 0x8000000000000000);
        String.append(_:)(v71);
        v72._countAndFlagsBits = v144;
        v72._object = v161;
        String.append(_:)(v72);
        v73 = v185;
        v74 = v186;
        v75 = *(*v61 + 336);
        v76 = v70;
        v58 = v169;
LABEL_14:
        v80 = v69;
        v62 = v181;
        v75(v76, v80, 0x632D657275636573, 0xED00006769666E6FLL, v73, v74, 2);
LABEL_15:
      }
    }

    else
    {
      if (v66 == v172)
      {
        v77 = SecureConfigParameters.metricsFilteringEnforced.getter();
        if (v77 != 2 && (v77 & 1) != 0)
        {
          goto LABEL_16;
        }

        v185 = 0;
        v186 = 0xE000000000000000;
        _StringGuts.grow(_:)(22);
        v69 = v176;

        v78 = v173;
        v185 = v173;
        v186 = v69;
        v79._object = (v156 | 0x8000000000000000);
        v79._countAndFlagsBits = 0xD000000000000014;
        String.append(_:)(v79);
        v73 = v185;
        v74 = v186;
        v75 = *(*v61 + 336);
        v76 = v78;
        goto LABEL_14;
      }

      if (v66 == v162)
      {
        v81 = SecureConfigParameters.logFilteringEnforced.getter();
        if (v81 != 2 && (v81 & 1) != 0)
        {
          goto LABEL_16;
        }

        v185 = 0;
        v186 = 0xE000000000000000;
        _StringGuts.grow(_:)(22);

        v82 = v171;
        v185 = v171;
        v186 = v62;
        v83._object = (v156 | 0x8000000000000000);
        v83._countAndFlagsBits = 0xD000000000000014;
        String.append(_:)(v83);
        (*(*v61 + 336))(v82, v62, 0x632D657275636573, 0xED00006769666E6FLL, v185, v186, 2);
        goto LABEL_15;
      }

      v84 = v160;
      if (v66 == v159)
      {
        v85 = SecureConfigParameters.crashRedactionEnabled.getter();
        if (v85 != 2 && (v85 & 1) != 0)
        {
          goto LABEL_16;
        }

        v185 = 0;
        v186 = 0xE000000000000000;
        _StringGuts.grow(_:)(22);
        v86 = v175;

        v87 = v170;
        v185 = v170;
        v186 = v86;
        v88._object = (v156 | 0x8000000000000000);
        v88._countAndFlagsBits = 0xD000000000000014;
        String.append(_:)(v88);
        v89 = v87;
        v58 = v169;
        (*(*v61 + 336))(v89, v86, 0x632D657275636573, 0xED00006769666E6FLL, v185, v186, 2);
        goto LABEL_15;
      }

      if (v66 == v140)
      {
        (*(*v61 + 144))();
        v90 = Logger.logObject.getter();
        v91 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v90, v91))
        {
          v92 = swift_slowAlloc();
          *v92 = 0;
          _os_log_impl(&_mh_execute_header, v90, v91, "com.apple.tie.internalRequestOptionsAllowed is deprecated, please replace with com.apple.tie.allowNonProdExceptionOptions moving forward.", v92, 2u);
          v62 = v181;
        }

        (*v136)(v84, v153);
      }

      else if (v66 != v152)
      {
        if (v66 == v133)
        {
          v93 = SecureConfigParameters.cloudboard_isProxy.getter();
          (*(*v61 + 576))(v93);
LABEL_34:
          result = v177(v182, v12);
          v58 = v169;
          goto LABEL_17;
        }

        if (v66 == v148)
        {
          v94 = SecureConfigParameters.cryptexAppIdentifiers.getter();
          if (v94)
          {
            v95 = *(v94 + 16);
            v127[1] = v94;
            if (!v95)
            {
LABEL_59:

              result = v177(v182, v12);
              v61 = v141;
LABEL_60:
              v62 = v181;
              v58 = v169;
              goto LABEL_17;
            }

            v96 = (v94 + 40);
            while (2)
            {
              v97 = *(v96 - 1);
              v101 = *v96;
              if ((*v96 & 0x2000000000000000) != 0)
              {
                v102 = (*v96 >> 56) & 0xF;
              }

              else
              {
                v102 = v97 & 0xFFFFFFFFFFFFLL;
              }

              if (v102)
              {
                v135 = v95;
                v103 = v149;
                CharacterSet.init(charactersIn:)();
                v104 = v150;
                static CharacterSet.alphanumerics.getter();
                CharacterSet.union(_:)();
                v105 = v151;
                v138 = v97;
                v106 = *v60;
                (*v60)(v104, v151);
                v134 = v106;
                v107 = v106(v103, v105);
                v108 = v158;
                __chkstk_darwin(v107);
                v127[-2] = v108;
                v109 = v139;
                v110 = sub_1001DE260(sub_1001EB3CC, &v127[-4], v138, v101);
                v139 = v109;
                if (v110)
                {

                  v134(v108, v105);
                  v95 = v135;
LABEL_41:
                  v96 += 2;
                  if (!--v95)
                  {
                    goto LABEL_59;
                  }

                  continue;
                }

                v134(v108, v105);
                v95 = v135;
                v97 = v138;
              }

              break;
            }

            v185 = 0;
            v186 = 0xE000000000000000;
            _StringGuts.grow(_:)(91);
            v98._countAndFlagsBits = 39;
            v98._object = 0xE100000000000000;
            String.append(_:)(v98);
            v99._countAndFlagsBits = v97;
            v99._object = v101;
            String.append(_:)(v99);

            v100._countAndFlagsBits = 0xD000000000000058;
            v100._object = (v137 | 0x8000000000000000);
            String.append(_:)(v100);
            (*(*v141 + 336))(v142, v157, 0x632D657275636573, 0xED00006769666E6FLL, v185, v186, 11);

            goto LABEL_41;
          }

          goto LABEL_34;
        }

        if (v66 == v132)
        {
          goto LABEL_34;
        }

        v58 = v169;
        if (v66 != v131)
        {
          if (v66 != v147)
          {
            v121 = v182;
            v122 = SecureConfigParameters.Keys.rawValue.getter();
            (*(*v61 + 336))(v122);

            v123 = v177;
            v177(v121, v12);
            result = v123(v180, v12);
            goto LABEL_17;
          }

          v111 = SecureConfigParameters.research_disableAppleInfrastrucutureEnforcement.getter();
          if (v111 != 2 && (v111 & 1) != 0)
          {
            if (qword_1004A9DF0 != -1)
            {
              swift_once();
            }

            swift_beginAccess();
            v112 = *(*static RealComputer.shared + 288);

            v114 = v112(v113);

            if ((v114 & 1) == 0)
            {
              v185 = 0;
              v186 = 0xE000000000000000;
              _StringGuts.grow(_:)(38);
              v124 = v154;

              v125 = v146;
              v185 = v146;
              v186 = v124;
              v126._countAndFlagsBits = 0xD000000000000024;
              v126._object = (v129 | 0x8000000000000000);
              String.append(_:)(v126);
              (*(*v61 + 336))(v125, v124, 0x632D657275636573, 0xED00006769666E6FLL, v185, v186, 8);

              result = v177(v182, v12);
              v62 = v181;
              goto LABEL_17;
            }

            v116 = v145;
            (*(*v61 + 144))(v115);

            v117 = Logger.logObject.getter();
            v118 = static os_log_type_t.debug.getter();

            if (os_log_type_enabled(v117, v118))
            {
              v119 = swift_slowAlloc();
              v120 = swift_slowAlloc();
              v185 = v120;
              *v119 = v128;
              *(v119 + 4) = sub_1000026C0(v146, v154, &v185);
              _os_log_impl(&_mh_execute_header, v117, v118, "Running in a VM, so %s is valid.", v119, 0xCu);
              sub_100003C3C(v120);
            }

            (*v136)(v116, v153);
            result = v177(v182, v12);
            goto LABEL_60;
          }
        }
      }
    }

LABEL_16:
    result = v177(v182, v12);
LABEL_17:
    if (++v57 == v167)
    {

LABEL_64:
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1001E89D8(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, void (*a6)(uint64_t, uint64_t, uint64_t, void, uint64_t))
{
  v12 = swift_allocObject();
  a6(a1, a2, a3, a4 & 1, a5);
  return v12;
}

uint64_t CarryValidator.init(policy:requestedVersion:config:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *__src)
{
  memcpy(__dst, __src, 0x2D8uLL);
  v14 = OBJC_IVAR____TtC10DarwinInit14CarryValidator_carryPreferencesRules;
  sub_1000039E8(&qword_1004ABD20);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_100376F00;
  sub_1000039E8(&qword_1004ABD28);
  v6 = swift_allocObject();
  *(v6 + 32) = 0xD00000000000001CLL;
  *(v6 + 16) = xmmword_1003F8DF0;
  *(v6 + 40) = 0x800000010043EDD0;
  *(v6 + 48) = &_swiftEmptySetSingleton;
  *(v6 + 56) = 0xD000000000000022;
  *(v6 + 64) = 0x800000010043EDF0;
  *(v6 + 72) = &_swiftEmptySetSingleton;
  *(v6 + 80) = 0xD000000000000029;
  *(v6 + 88) = 0x800000010043EE20;
  *(v6 + 96) = &_swiftEmptySetSingleton;
  *(v6 + 104) = 0xD000000000000011;
  *(v6 + 112) = 0x800000010043EE50;
  *(v6 + 120) = &_swiftEmptySetSingleton;
  *(v6 + 128) = 0xD000000000000027;
  *(v6 + 136) = 0x800000010043EE70;
  *(v6 + 144) = &_swiftEmptySetSingleton;
  *(v6 + 152) = 0xD000000000000021;
  *(v6 + 160) = 0x800000010043EEA0;
  *(v6 + 168) = &_swiftEmptySetSingleton;
  *(v6 + 176) = 0xD000000000000023;
  *(v6 + 184) = 0x800000010043EED0;
  *(v6 + 192) = &_swiftEmptySetSingleton;
  *(v6 + 200) = 0xD00000000000001DLL;
  *(v6 + 208) = 0x800000010043EF00;
  *(v6 + 216) = &_swiftEmptySetSingleton;
  *(v6 + 224) = 0xD00000000000001ELL;
  *(v6 + 232) = 0x800000010043EF20;
  *(v6 + 240) = &_swiftEmptySetSingleton;
  *(v6 + 248) = 0xD00000000000001DLL;
  *(v6 + 256) = 0x800000010043EF40;
  *(v6 + 264) = &_swiftEmptySetSingleton;
  *(v6 + 272) = 0xD00000000000001DLL;
  *(v6 + 280) = 0x800000010043EF60;
  *(v6 + 288) = &_swiftEmptySetSingleton;
  *(v6 + 296) = 0xD000000000000023;
  *(v6 + 304) = 0x800000010043EF80;
  *(v6 + 312) = &_swiftEmptySetSingleton;
  *(v6 + 320) = 0xD000000000000025;
  *(v6 + 328) = 0x800000010043EFB0;
  *(v6 + 336) = &_swiftEmptySetSingleton;
  *(v6 + 344) = 0xD00000000000002FLL;
  *(v6 + 352) = 0x800000010043EFE0;
  *(v6 + 360) = &_swiftEmptySetSingleton;
  *(v6 + 368) = 0xD00000000000002CLL;
  *(v6 + 376) = 0x800000010043F010;
  *(v6 + 384) = &_swiftEmptySetSingleton;
  *(v6 + 488) = 0xD000000000000013;
  *(v6 + 496) = 0x800000010043F100;
  *(v6 + 392) = 0xD00000000000002BLL;
  *(v6 + 400) = 0x800000010043F040;
  *(v6 + 408) = &_swiftEmptySetSingleton;
  *(v6 + 416) = 0xD00000000000002ELL;
  *(v6 + 424) = 0x800000010043F070;
  *(v6 + 432) = &_swiftEmptySetSingleton;
  *(v6 + 440) = 0xD000000000000024;
  *(v6 + 448) = 0x800000010043F0A0;
  *(v6 + 456) = &_swiftEmptySetSingleton;
  *(v6 + 464) = 0xD000000000000023;
  *(v6 + 472) = 0x800000010043F0D0;
  *(v6 + 480) = &_swiftEmptySetSingleton;
  *(v6 + 504) = &_swiftEmptySetSingleton;
  *(v6 + 512) = 0xD00000000000001ELL;
  *(v6 + 520) = 0x800000010043F120;
  *(v6 + 528) = &_swiftEmptySetSingleton;
  *(v6 + 536) = 0xD00000000000001DLL;
  *(v6 + 544) = 0x800000010043F140;
  *(v6 + 552) = &_swiftEmptySetSingleton;
  *(v6 + 560) = 0xD00000000000002BLL;
  *(v6 + 568) = 0x800000010043F160;
  *(v6 + 576) = &_swiftEmptySetSingleton;
  *(v6 + 584) = 0xD000000000000012;
  *(v6 + 592) = 0x800000010043FB70;
  v7 = sub_1001E9470(&off_100485BF8);
  sub_1001E968C(&unk_100485C18);
  *(v6 + 600) = v7;
  v8 = sub_1001879E4(v6);
  swift_setDeallocating();
  sub_1000039E8(&qword_1004ABD30);
  swift_arrayDestroy();
  swift_deallocClassInstance();
  *(v5 + 32) = v8;
  *(v5 + 40) = 3;
  *(v5 + 48) = 0;
  *(v5 + 56) = xmmword_1003F8DD0;
  *(v5 + 72) = 259;
  v9 = swift_allocObject();
  *(v9 + 40) = 0x800000010043EDD0;
  *(v9 + 48) = &_swiftEmptySetSingleton;
  *(v9 + 56) = 0xD000000000000022;
  *(v9 + 64) = 0x800000010043EDF0;
  *(v9 + 104) = 0xD000000000000027;
  *(v9 + 112) = 0x800000010043EE70;
  *(v9 + 32) = 0xD00000000000001CLL;
  *(v9 + 16) = xmmword_1003F8E00;
  *(v9 + 72) = &_swiftEmptySetSingleton;
  *(v9 + 80) = 0xD000000000000011;
  *(v9 + 88) = 0x800000010043EE50;
  *(v9 + 96) = &_swiftEmptySetSingleton;
  *(v9 + 120) = &_swiftEmptySetSingleton;
  *(v9 + 128) = 0xD000000000000021;
  *(v9 + 136) = 0x800000010043EEA0;
  *(v9 + 144) = &_swiftEmptySetSingleton;
  *(v9 + 152) = 0xD000000000000023;
  *(v9 + 160) = 0x800000010043EED0;
  *(v9 + 168) = &_swiftEmptySetSingleton;
  *(v9 + 176) = 0xD00000000000001DLL;
  *(v9 + 184) = 0x800000010043EF00;
  *(v9 + 192) = &_swiftEmptySetSingleton;
  *(v9 + 200) = 0xD00000000000001ELL;
  *(v9 + 208) = 0x800000010043EF20;
  *(v9 + 216) = &_swiftEmptySetSingleton;
  *(v9 + 224) = 0xD00000000000001DLL;
  *(v9 + 232) = 0x800000010043EF40;
  *(v9 + 240) = &_swiftEmptySetSingleton;
  *(v9 + 248) = 0xD00000000000001DLL;
  *(v9 + 256) = 0x800000010043EF60;
  *(v9 + 264) = &_swiftEmptySetSingleton;
  *(v9 + 272) = 0xD000000000000023;
  *(v9 + 280) = 0x800000010043EF80;
  *(v9 + 288) = &_swiftEmptySetSingleton;
  *(v9 + 296) = 0xD000000000000025;
  *(v9 + 304) = 0x800000010043EFB0;
  *(v9 + 312) = &_swiftEmptySetSingleton;
  *(v9 + 320) = 0xD00000000000002FLL;
  *(v9 + 328) = 0x800000010043EFE0;
  *(v9 + 336) = &_swiftEmptySetSingleton;
  *(v9 + 344) = 0xD00000000000002CLL;
  *(v9 + 352) = 0x800000010043F010;
  *(v9 + 360) = &_swiftEmptySetSingleton;
  *(v9 + 368) = 0xD00000000000002BLL;
  *(v9 + 376) = 0x800000010043F040;
  *(v9 + 384) = &_swiftEmptySetSingleton;
  *(v9 + 392) = 0xD00000000000002ELL;
  *(v9 + 400) = 0x800000010043F070;
  *(v9 + 408) = &_swiftEmptySetSingleton;
  *(v9 + 416) = 0xD000000000000024;
  *(v9 + 424) = 0x800000010043F0A0;
  *(v9 + 432) = &_swiftEmptySetSingleton;
  *(v9 + 440) = 0xD000000000000023;
  *(v9 + 448) = 0x800000010043F0D0;
  *(v9 + 456) = &_swiftEmptySetSingleton;
  *(v9 + 464) = 0xD00000000000001ELL;
  *(v9 + 472) = 0x800000010043F120;
  *(v9 + 480) = &_swiftEmptySetSingleton;
  *(v9 + 488) = 0xD00000000000001DLL;
  *(v9 + 496) = 0x800000010043F140;
  *(v9 + 504) = &_swiftEmptySetSingleton;
  *(v9 + 512) = 0xD00000000000002BLL;
  *(v9 + 520) = 0x800000010043F160;
  v10 = sub_1001E9470(&off_100485C28);
  swift_arrayDestroy();
  *(v9 + 528) = v10;
  *(v9 + 536) = 0xD000000000000012;
  *(v9 + 544) = 0x800000010043FB70;
  v11 = sub_1001E9470(&off_100485C78);
  sub_1001E968C(&unk_100485C98);
  *(v9 + 552) = v11;
  v12 = sub_1001879E4(v9);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  *(v5 + 80) = v12;
  *(v5 + 88) = 9;
  *(v5 + 96) = 0;
  *(v15 + v14) = v5;
  CustomerValidator.init(policy:requestedVersion:config:)(a1, a2, a3, a4 & 1, __dst);
  return v15;
}

uint64_t CarryValidator.deinit()
{
  v1 = OBJC_IVAR____TtC10DarwinInit17CustomerValidator_logger;
  v2 = type metadata accessor for Logger();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  memcpy(v4, (v0 + OBJC_IVAR____TtC10DarwinInit17CustomerValidator_config), 0x2D8uLL);
  sub_1001D711C(v4);

  return v0;
}

uint64_t CarryValidator.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC10DarwinInit17CustomerValidator_logger;
  v2 = type metadata accessor for Logger();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  memcpy(v4, (v0 + OBJC_IVAR____TtC10DarwinInit17CustomerValidator_config), 0x2D8uLL);
  sub_1001D711C(v4);

  return swift_deallocClassInstance();
}

void *sub_1001E9218(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1000039E8(&qword_1004AA790);
    v3 = static _SetStorage.allocate(capacity:)();
    v4 = 0;
    v5 = v3 + 56;
    v25 = v1;
    v26 = a1 + 32;
    v6 = v1;
    while (1)
    {
      v7 = *(v26 + 8 * v4);
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      Hasher.init(_seed:)();
      v27 = v7;
      String.hash(into:)();
      v8 = Hasher._finalize()();

      v10 = -1 << *(v3 + 32);
      v11 = v8 & ~v10;
      v12 = v11 >> 6;
      v13 = *(v5 + 8 * (v11 >> 6));
      v14 = 1 << v11;
      if (((1 << v11) & v13) == 0)
      {
        goto LABEL_15;
      }

      v15 = ~v10;
      do
      {
        v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v18 = v17;
        if (v16 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v18 == v19)
        {

LABEL_4:
          v6 = v25;
          goto LABEL_5;
        }

        v21 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v21)
        {

          goto LABEL_4;
        }

        v11 = (v11 + 1) & v15;
        v12 = v11 >> 6;
        v13 = *(v5 + 8 * (v11 >> 6));
        v14 = 1 << v11;
      }

      while (((1 << v11) & v13) != 0);
      v6 = v25;
LABEL_15:
      *(v5 + 8 * v12) = v14 | v13;
      *(*(v3 + 48) + 8 * v11) = v27;
      v22 = *(v3 + 16);
      v23 = __OFADD__(v22, 1);
      v24 = v22 + 1;
      if (v23)
      {
        __break(1u);
        return result;
      }

      *(v3 + 16) = v24;
LABEL_5:
      if (++v4 == v6)
      {
        return v3;
      }
    }
  }

  return &_swiftEmptySetSingleton;
}

unint64_t _s10DarwinInit30PrivateCloudOSValidatorVersionO8rawValueACSgSi_tcfC_0(unint64_t result)
{
  if (result >= 0xC)
  {
    return 12;
  }

  return result;
}

unint64_t sub_1001E941C()
{
  result = qword_1004ABD18;
  if (!qword_1004ABD18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004ABD18);
  }

  return result;
}

unint64_t sub_1001E9470(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1000039E8(&qword_1004AC710);
    v3 = static _SetStorage.allocate(capacity:)();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (2)
    {
      v11 = (v6 + 16 * v4);
      v13 = *v11;
      v12 = v11[1];
      Hasher.init(_seed:)();
      UTF8String.hash(into:)();
      result = Hasher._finalize()();
      v15 = ~(-1 << *(v3 + 32));
      for (i = result & v15; ; i = (i + 1) & v15)
      {
        v17 = *(v5 + 8 * (i >> 6));
        if (((1 << i) & v17) == 0)
        {
          break;
        }

        result = sub_100305028(v13, v12, *(*(v3 + 48) + 16 * i), *(*(v3 + 48) + 16 * i + 8));
        if (result)
        {
          goto LABEL_5;
        }
      }

      *(v5 + 8 * (i >> 6)) = (1 << i) | v17;
      v7 = (*(v3 + 48) + 16 * i);
      *v7 = v13;
      v7[1] = v12;
      v8 = *(v3 + 16);
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (!v9)
      {
        *(v3 + 16) = v10;

LABEL_5:
        if (++v4 == v1)
        {
          return v3;
        }

        continue;
      }

      break;
    }

    __break(1u);
  }

  else
  {
    return &_swiftEmptySetSingleton;
  }

  return result;
}

unint64_t sub_1001E9608()
{
  result = qword_1004ABD40;
  if (!qword_1004ABD40)
  {
    sub_100003A94(&qword_1004ABD38);
    sub_1001B54D4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004ABD40);
  }

  return result;
}

unint64_t sub_1001E96E4()
{
  result = qword_1004ABD48;
  if (!qword_1004ABD48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004ABD48);
  }

  return result;
}

unint64_t sub_1001E9780()
{
  result = qword_1004ABD60;
  if (!qword_1004ABD60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004ABD60);
  }

  return result;
}

uint64_t sub_1001E9860@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 168))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_1001E98AC(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(**a2 + 176);

  return v4(v2, v3);
}

uint64_t sub_1001E9914@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 192))();
  *a2 = result;
  return result;
}

uint64_t sub_1001E9A14(void *__src, uint64_t *a2)
{
  memcpy(__dst, __src, sizeof(__dst));
  v4 = *a2;
  memcpy(v8, __src, sizeof(v8));
  v5 = *(*v4 + 224);
  sub_1001D78FC(__dst, v7);
  return v5(v8);
}

uint64_t sub_1001E9AA0@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 240))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_1001E9B38@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 264))();
  *a2 = result;
  return result;
}

uint64_t sub_1001E9BDC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 288))();
  *a2 = result;
  return result;
}

uint64_t sub_1001E9C30(uint64_t a1, uint64_t a2)
{
  v2 = *(**a2 + 296);

  return v2(v3);
}

__n128 sub_1001E9CC8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u16[0] = a2[1].n128_u16[0];
  *a1 = result;
  return result;
}

uint64_t sub_1001E9CDC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 18))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 17);
  if (v3 >= 2)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1001E9D18(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *result = 0;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 18) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 18) = 0;
    }

    if (a2)
    {
      *(result + 17) = -a2;
    }
  }

  return result;
}

uint64_t sub_1001E9D60(uint64_t result, unsigned int a2)
{
  if (a2 > 1)
  {
    *result = 0;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 17) = a2;
  return result;
}