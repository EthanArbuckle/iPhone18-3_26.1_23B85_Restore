uint64_t sub_1D21EF45C()
{
  v1 = v0;
  v308 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6D2D60);
  v307 = *(v308 - 8);
  v2 = MEMORY[0x1EEE9AC00](v308);
  v306 = &v292 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v2);
  v309 = &v292 - v4;
  v5 = sub_1D225080C();
  v6 = sub_1D2250CBC();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_1D2171000, v5, v6, "Pruning gallery using cluster based method", v7, 2u);
    MEMORY[0x1D3899640](v7, -1, -1);
  }

  v8 = sub_1D21CDE10(2u, MEMORY[0x1E69E7CC0]);
  v10 = v9;
  v311 = v11;

  LOBYTE(v323) = 1;
  v312 = v8;
  v12 = sub_1D2231568(2u, 0x100000000, v8, v10, 1, 0, 0, 0);

  v315 = v1;

  v13 = sub_1D21CBA6C();

  v328 = MEMORY[0x1E69E7CC8];
  v327 = MEMORY[0x1E69E7CC8];
  v14 = v13 + 64;
  v15 = 1 << *(v13 + 32);
  v16 = -1;
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  v17 = v16 & *(v13 + 64);
  v18 = (v15 + 63) >> 6;

  v19 = 0;
  v313 = v13;
  v314 = v10;
  while (v17)
  {
    v20 = v17;
LABEL_13:
    v17 = (v20 - 1) & v20;
    if (*(v12 + 16))
    {
      v23 = (v19 << 9) | (8 * __clz(__rbit64(v20)));
      v21 = *(*(v13 + 56) + v23);
      v316 = *(*(v13 + 48) + v23);
      v24 = sub_1D2176758(v316);
      if (v25)
      {
        v26 = *(*(v12 + 56) + 8 * v24);
        v27 = v328;
        if (!v328[2] || (sub_1D2176758(v21), (v28 & 1) == 0))
        {
          v310 = v17;
          v17 = v26;
          v29 = v12;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v323 = v27;
          v31 = sub_1D2176758(v21);
          v33 = v27[2];
          v34 = (v32 & 1) == 0;
          v35 = __OFADD__(v33, v34);
          v36 = v33 + v34;
          if (v35)
          {
            goto LABEL_322;
          }

          v37 = v32;
          if (v27[3] >= v36)
          {
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              v57 = v31;
              sub_1D21B8848();
              v31 = v57;
            }
          }

          else
          {
            sub_1D21B40D8(v36, isUniquelyReferenced_nonNull_native);
            v31 = sub_1D2176758(v21);
            if ((v37 & 1) != (v38 & 1))
            {
              goto LABEL_338;
            }
          }

          v12 = v29;
          v39 = v323;
          v26 = v17;
          if (v37)
          {
            *(v323[7] + 8 * v31) = MEMORY[0x1E69E7CD0];

            v17 = v310;
          }

          else
          {
            v323[(v31 >> 6) + 8] |= 1 << v31;
            *(v39[6] + 8 * v31) = v21;
            *(v39[7] + 8 * v31) = MEMORY[0x1E69E7CD0];
            v40 = v39[2];
            v35 = __OFADD__(v40, 1);
            v41 = v40 + 1;
            v17 = v310;
            if (v35)
            {
              goto LABEL_328;
            }

            v39[2] = v41;
          }

          v328 = v39;
          v13 = v313;
        }

        v21 = sub_1D21DF354(&v323, v21);
        if (*v42)
        {
          sub_1D2198024(v318, v26);
        }

        (v21)(&v323, 0);
        v43 = v327;
        if (!v327[2] || (sub_1D2176758(v26), (v44 & 1) == 0))
        {
          v45 = swift_isUniquelyReferenced_nonNull_native();
          v323 = v43;
          v46 = sub_1D2176758(v26);
          v48 = v43[2];
          v49 = (v47 & 1) == 0;
          v35 = __OFADD__(v48, v49);
          v50 = v48 + v49;
          if (v35)
          {
            goto LABEL_323;
          }

          v21 = v47;
          if (v43[3] >= v50)
          {
            if ((v45 & 1) == 0)
            {
              v58 = v46;
              sub_1D21B8848();
              v46 = v58;
            }
          }

          else
          {
            sub_1D21B40D8(v50, v45);
            v46 = sub_1D2176758(v26);
            if ((v21 & 1) != (v51 & 1))
            {
              while (1)
              {
LABEL_338:
                sub_1D22512AC();
                __break(1u);
LABEL_339:

                v291 = v17;
LABEL_337:

                __break(1u);
                swift_bridgeObjectRelease_n();
                swift_bridgeObjectRelease_n();
                swift_bridgeObjectRelease_n();

                __break(1u);
              }
            }
          }

          v13 = v313;
          v52 = v323;
          if (v21)
          {
            *(v323[7] + 8 * v46) = MEMORY[0x1E69E7CD0];
          }

          else
          {
            v323[(v46 >> 6) + 8] |= 1 << v46;
            *(v52[6] + 8 * v46) = v26;
            *(v52[7] + 8 * v46) = MEMORY[0x1E69E7CD0];
            v53 = v52[2];
            v35 = __OFADD__(v53, 1);
            v54 = v53 + 1;
            if (v35)
            {
              goto LABEL_329;
            }

            v52[2] = v54;
          }

          v327 = v52;
        }

        v55 = sub_1D21DF354(&v323, v26);
        if (*v56)
        {
          sub_1D2198024(v318, v316);
        }

        (v55)(&v323, 0);
      }
    }
  }

  v21 = v315;
  v17 = v312;
  while (1)
  {
    v22 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      __break(1u);
      goto LABEL_305;
    }

    if (v22 >= v18)
    {
      break;
    }

    v20 = *(v14 + 8 * v22);
    ++v19;
    if (v20)
    {
      v19 = v22;
      goto LABEL_13;
    }
  }

  v316 = sub_1D21CBF54();

  v59 = v328[2];
  v60 = *(v21 + 48);
  v298 = v328;
  if (v60 < v59)
  {

    v62 = v317;
    v21 = sub_1D21DDFA0(v61);

    if (*(v21 + 16))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D2A30);
      v63 = sub_1D225114C();
    }

    else
    {
      v63 = MEMORY[0x1E69E7CC8];
    }

    v317 = v12;
    v323 = v63;

    sub_1D2202FE4(v64, 1, &v323);
    v17 = v62;
    if (v62)
    {
      swift_unexpectedError();
      __break(1u);
      v291 = v317;
      goto LABEL_337;
    }

    v65 = v323;
    v66 = 1 << *(v13 + 32);
    v67 = -1;
    if (v66 < 64)
    {
      v67 = ~(-1 << v66);
    }

    v68 = v67 & *(v13 + 64);
    v69 = (v66 + 63) >> 6;

    v70 = 0;
    while (v68)
    {
      v71 = v68;
LABEL_62:
      v68 = (v71 - 1) & v71;
      if (v65[2])
      {
        v73 = (v70 << 9) | (8 * __clz(__rbit64(v71)));
        v74 = *(*(v313 + 56) + v73);
        v21 = *(*(v313 + 48) + v73);
        sub_1D2176758(v74);
        if (v75)
        {
          LODWORD(v310) = swift_isUniquelyReferenced_nonNull_native();
          v323 = v65;
          v77 = sub_1D2176758(v74);
          v78 = v65[2];
          v79 = (v76 & 1) == 0;
          v80 = v78 + v79;
          if (__OFADD__(v78, v79))
          {
            goto LABEL_333;
          }

          if (v65[3] >= v80)
          {
            if (v310)
            {
              if ((v76 & 1) == 0)
              {
                goto LABEL_334;
              }
            }

            else
            {
              v310 = v77;
              v99 = v76;
              sub_1D21B7130();
              v77 = v310;
              if ((v99 & 1) == 0)
              {
                goto LABEL_334;
              }
            }
          }

          else
          {
            v81 = v76;
            sub_1D21B1C6C(v80, v310);
            v82 = sub_1D2176758(v74);
            if ((v81 & 1) != (v83 & 1))
            {
              goto LABEL_338;
            }

            v77 = v82;
            if ((v81 & 1) == 0)
            {
              goto LABEL_334;
            }
          }

          v84 = v323[7];
          v310 = v77;
          v85 = *(v84 + 8 * v77);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v85 = sub_1D2195F78(0, *(v85 + 2) + 1, 1, v85);
          }

          v87 = *(v85 + 2);
          v86 = *(v85 + 3);
          v88 = v87 + 1;
          if (v87 >= v86 >> 1)
          {
            v305 = v87 + 1;
            v98 = sub_1D2195F78((v86 > 1), v87 + 1, 1, v85);
            v88 = v305;
            v85 = v98;
          }

          *(v85 + 2) = v88;
          *&v85[8 * v87 + 32] = v21;
          v65 = v323;
          *(v323[7] + 8 * v310) = v85;
          if (*(v316 + 16))
          {
            v89 = sub_1D2176758(v21);
            if (v90)
            {
              v91 = v309;
              sub_1D2174DA8(*(v316 + 56) + *(v307 + 72) * v89, v309, &unk_1EC6D2D60);
              v92 = *(v91 + *(v308 + 48));
              v93 = sub_1D225055C();
              (*(*(v93 - 8) + 8))(v91, v93);
              if (!v92)
              {
                v94 = sub_1D2176758(v74);
                if (v95)
                {
                  v96 = v94;
                  v97 = swift_isUniquelyReferenced_nonNull_native();
                  v323 = v65;
                  if (!v97)
                  {
                    sub_1D21B7130();
                    v65 = v323;
                  }

                  sub_1D2201080(v96, v65);
                }
              }
            }
          }
        }
      }
    }

    v21 = v313;
    while (1)
    {
      v72 = v70 + 1;
      if (__OFADD__(v70, 1))
      {
        goto LABEL_309;
      }

      if (v72 >= v69)
      {
        break;
      }

      v71 = *(v14 + 8 * v72);
      ++v70;
      if (v71)
      {
        v70 = v72;
        goto LABEL_62;
      }
    }

    v21 = *(v298 + 16);
    v100 = v65[2];
    v323 = sub_1D21F859C(v65, &qword_1EC6D29C0);
    sub_1D21F67FC(&v323, sub_1D21C8AC0, &qword_1EC6D2580);
    v317 = 0;
    v101 = v315[6];
    v102 = v101 - (v21 - v100);
    if (__OFSUB__(v101, v21 - v100))
    {
      goto LABEL_327;
    }

    v21 = v323;
    v103 = v102 & ~(v102 >> 63);
    v104 = v323[2];
    if (v104 < v103)
    {
      v103 = v323[2];
    }

    if (v102 <= 0)
    {
      v105 = 0;
    }

    else
    {
      v105 = v103;
    }

    v17 = v104 - v105;
    if (v104 != v105)
    {
      v106 = 16 * v105 + 40;
      do
      {
        if (!v17)
        {
          goto LABEL_316;
        }

        v108 = v317;
        sub_1D21F227C(v107);
        v317 = v108;
        if (v108)
        {

          swift_unknownObjectRelease();
          goto LABEL_296;
        }

        v106 += 16;
        --v17;
      }

      while (v17);
    }

    swift_unknownObjectRelease();
    v17 = v312;
  }

  else
  {
  }

  v109 = v298 + 64;
  v110 = 1 << *(v298 + 32);
  if (v110 < 64)
  {
    v111 = ~(-1 << v110);
  }

  else
  {
    v111 = -1;
  }

  v112 = v111 & *(v298 + 64);
  v113 = (v110 + 63) >> 6;

  v115 = 0;
  v292 = v109;
  v293 = v113;
LABEL_100:
  if (!v112)
  {
    while (1)
    {
      v116 = v115 + 1;
      if (__OFADD__(v115, 1))
      {
        goto LABEL_310;
      }

      if (v116 >= v113)
      {
      }

      v112 = *(v109 + 8 * v116);
      ++v115;
      if (v112)
      {
        goto LABEL_105;
      }
    }
  }

  v116 = v115;
LABEL_105:
  v295 = (v112 - 1) & v112;
  v117 = *(v114 + 56);
  v294 = v116;
  v118 = *(v117 + ((v116 << 9) | (8 * __clz(__rbit64(v112)))));
  v322 = v118;
  v320 = MEMORY[0x1E69E7CD0];
  v321 = MEMORY[0x1E69E7CD0];
  v17 = v118 + 56;
  v119 = 1 << *(v118 + 32);
  if (v119 < 64)
  {
    v120 = ~(-1 << v119);
  }

  else
  {
    v120 = -1;
  }

  v121 = v120 & *(v118 + 56);
  v122 = (v119 + 63) >> 6;
  v123 = v327;
  swift_bridgeObjectRetain_n();
  v309 = 0;
  v124 = 0;
  v125 = 0;
  v313 = v123;
LABEL_109:
  v310 = v124;
  while (v121)
  {
    v126 = v121;
LABEL_116:
    v121 = (v126 - 1) & v126;
    if (*(v123 + 16))
    {
      v21 = *(*(v118 + 48) + ((v125 << 9) | (8 * __clz(__rbit64(v126)))));
      v128 = sub_1D2176758(v21);
      v123 = v313;
      if (v129)
      {
        v130 = *(*(v313 + 56) + 8 * v128);
        swift_bridgeObjectRetain_n();
        v131 = v316;

        v132 = v317;
        v133 = sub_1D2208590(v130, v131);
        v317 = v132;

        v134 = *(v133 + 16);

        if (!v134)
        {
          sub_1D2198024(&v323, v21);
        }

        v135 = *(v130 + 16);

        v136 = v135 - v134;
        if (v135 <= v134)
        {
          v137 = v310;
        }

        else
        {
          v35 = __OFADD__(v309, v136);
          v309 += v136;
          v137 = v310;
          if (v35)
          {
            goto LABEL_332;
          }

          sub_1D2198024(&v323, v21);
        }

        v35 = __OFADD__(v137, v134);
        v124 = v137 + v134;
        v123 = v313;
        if (v35)
        {
          goto LABEL_331;
        }

        goto LABEL_109;
      }
    }
  }

  while (1)
  {
    v127 = v125 + 1;
    if (__OFADD__(v125, 1))
    {
      goto LABEL_298;
    }

    if (v127 >= v122)
    {
      break;
    }

    v126 = *(v17 + 8 * v127);
    ++v125;
    if (v126)
    {
      v125 = v127;
      goto LABEL_116;
    }
  }

  v21 = *(v118 + 16);

  v138 = v315[9];
  v139 = (__PAIR128__(v138, *(v321 + 16)) - v21) >> 64;
  if (__OFSUB__(v138, *(v321 + 16) < v21))
  {
    goto LABEL_317;
  }

  v296 = v321;
  v140 = v317;
  v141 = sub_1D21FAC60(v123, &v321);
  v21 = v140;
  v323 = sub_1D21F859C(v141, &qword_1EC6D29D8);
  sub_1D21F67FC(&v323, sub_1D21C8B88, &qword_1EC6D29E0);
  if (v140)
  {
    goto LABEL_336;
  }

  v142 = v139 & ~(v139 >> 63);
  v299 = v323;
  v17 = v323[2];
  if (v17 < v142)
  {
    v142 = v323[2];
  }

  if (v139 <= 0)
  {
    v143 = 0;
  }

  else
  {
    v143 = v142;
  }

  v144 = MEMORY[0x1E69E7CC0];
  v323 = MEMORY[0x1E69E7CC0];
  v145 = v17 - v143;
  if (v17 != v143)
  {
    v146 = &v299[2 * v143 + 5];
    do
    {
      if (!v145)
      {
        goto LABEL_306;
      }

      v146 += 16;

      sub_1D2202D5C(v147);
      --v145;
    }

    while (v145);
    v144 = v323;
  }

  sub_1D21F227C(v144);
  v317 = 0;

  v17 -= v143;
  v148 = v314;
  if (v17)
  {
    v323 = MEMORY[0x1E69E7CC0];
    v21 = v17 & ~(v17 >> 63);
    sub_1D21AF7AC(0, v21, 0);
    if (v17 < 0)
    {
      goto LABEL_324;
    }

    v205 = v323;
    v206 = &v299[2 * v143 + 4];
    v207 = v206;
    v208 = v17;
    do
    {
      v209 = *v207;
      v323 = v205;
      v211 = v205[2];
      v210 = v205[3];
      if (v211 >= v210 >> 1)
      {
        sub_1D21AF7AC((v210 > 1), v211 + 1, 1);
        v205 = v323;
      }

      v205[2] = v211 + 1;
      v205[v211 + 4] = v209;
      v207 += 2;
      --v208;
    }

    while (v208);
    v212 = sub_1D2206838(v205);

    sub_1D2203350(v212);

    v323 = MEMORY[0x1E69E7CC0];
    sub_1D21AF7AC(0, v17 & ~(v17 >> 63), 0);
    v21 = v323;
    v148 = v314;
    do
    {
      v213 = *v206;
      v323 = v21;
      v215 = *(v21 + 16);
      v214 = *(v21 + 24);
      if (v215 >= v214 >> 1)
      {
        sub_1D21AF7AC((v214 > 1), v215 + 1, 1);
        v21 = v323;
      }

      *(v21 + 16) = v215 + 1;
      *(v21 + 8 * v215 + 32) = v213;
      v206 += 2;
      --v17;
    }

    while (v17);
  }

  else
  {
    v149 = MEMORY[0x1E69E7CC0];
    v150 = sub_1D2206838(MEMORY[0x1E69E7CC0]);

    sub_1D2203350(v150);

    v21 = v149;
  }

  v151 = sub_1D2206838(v21);

  sub_1D2203350(v151);

  v152 = v315[7];
  v153 = v152 - v310;
  if (__OFSUB__(v152, v310))
  {
    goto LABEL_318;
  }

  if (v153 < 0)
  {
    v153 = 0;
    v155 = v313;
    v154 = v309;
    if (v309 < 0)
    {
      goto LABEL_145;
    }

    goto LABEL_144;
  }

  v154 = v309;
  v155 = v313;
  if (v309 >= v153)
  {
LABEL_144:
    v154 = v153;
  }

LABEL_145:
  v156 = v320;
  v157 = *(v320 + 16);
  v35 = __OFADD__(v154, v157);
  v158 = v154 + v157;
  if (v35)
  {
    goto LABEL_319;
  }

  v35 = __OFSUB__(v158, 1);
  v159 = v158 - 1;
  if (v35)
  {
LABEL_320:
    __break(1u);
LABEL_321:
    __break(1u);
LABEL_322:
    __break(1u);
LABEL_323:
    __break(1u);
LABEL_324:
    __break(1u);
LABEL_325:
    __break(1u);
LABEL_326:
    __break(1u);
LABEL_327:
    __break(1u);
LABEL_328:
    __break(1u);
LABEL_329:
    __break(1u);
    goto LABEL_330;
  }

  if (v157 <= 1)
  {
    v157 = 1;
  }

  v160 = v320 + 56;
  v161 = 1 << *(v320 + 32);
  if (v161 < 64)
  {
    v162 = ~(-1 << v161);
  }

  else
  {
    v162 = -1;
  }

  v163 = v162 & *(v320 + 56);
  v164 = (v161 + 63) >> 6;
  v304 = v159 / v157;

  v17 = 0;
  v301 = MEMORY[0x1E69E7CC0];
  v300 = v156;
  v297 = v156 + 56;
  v305 = v164;
LABEL_153:
  if (v163)
  {
    goto LABEL_158;
  }

  do
  {
    v165 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      goto LABEL_299;
    }

    if (v165 >= v164)
    {

      v200 = v301;
      v201 = *(v301 + 2);
      if (v201)
      {
        v17 = 0;
        v202 = v301 + 40;
        v203 = *(v301 + 2);
        while (1)
        {
          v204 = *v202;
          v202 += 16;
          v35 = __OFADD__(v17, v204);
          v17 += v204;
          if (v35)
          {
            break;
          }

          if (!--v203)
          {
            goto LABEL_210;
          }
        }

LABEL_305:
        __break(1u);
LABEL_306:
        __break(1u);
        __break(1u);
        __break(1u);
LABEL_307:
        __break(1u);
LABEL_308:
        __break(1u);
LABEL_309:
        __break(1u);
LABEL_310:
        __break(1u);
LABEL_311:
        __break(1u);
LABEL_312:
        __break(1u);
LABEL_313:
        __break(1u);
LABEL_314:
        __break(1u);
        goto LABEL_315;
      }

      v17 = 0;
LABEL_210:
      v216 = 0;
      v21 = MEMORY[0x1E69E7CC0];
LABEL_211:
      v217 = 16 * v216 + 40;
      while (v201 != v216)
      {
        if (v216 >= *(v200 + 2))
        {
          goto LABEL_300;
        }

        v218 = *&v200[v217];
        v219 = v153 * v218;
        if ((v153 * v218) >> 64 != (v153 * v218) >> 63)
        {
          goto LABEL_301;
        }

        if (!v17)
        {
          goto LABEL_302;
        }

        if (v219 == 0x8000000000000000 && v17 == -1)
        {
          goto LABEL_307;
        }

        v221 = v219 / v17;
        v35 = __OFSUB__(v153, v221);
        v153 -= v221;
        if (v35)
        {
          goto LABEL_303;
        }

        ++v216;
        v217 += 16;
        if (v221 < v218)
        {
          v222 = v218 - v221;
          if (__OFSUB__(v218, v221))
          {
            goto LABEL_321;
          }

          v223 = *&v200[v217 - 24];
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v21 = sub_1D2196388(0, *(v21 + 16) + 1, 1, v21);
          }

          v225 = *(v21 + 16);
          v224 = *(v21 + 24);
          v226 = v21;
          if (v225 >= v224 >> 1)
          {
            v226 = sub_1D2196388((v224 > 1), v225 + 1, 1, v21);
          }

          *(v226 + 2) = v225 + 1;
          v21 = v226;
          v227 = &v226[16 * v225];
          *(v227 + 4) = v223;
          *(v227 + 5) = v222;
          v148 = v314;
          v200 = v301;
          goto LABEL_211;
        }
      }

      v319 = v21;
      if (v153 < 1)
      {
        v228 = v316;
      }

      else
      {
        v17 = v153 + 1;
        v228 = v316;
        while (1)
        {
          v21 = v319;
          if (!*(v319 + 16))
          {
            break;
          }

          v230 = sub_1D21F4984(0);
          if (v231 >= 2)
          {
            v232 = v230;
            v233 = v231;
            v234 = v319;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v234 = sub_1D2196388(0, *(v234 + 2) + 1, 1, v234);
            }

            v236 = *(v234 + 2);
            v235 = *(v234 + 3);
            if (v236 >= v235 >> 1)
            {
              v234 = sub_1D2196388((v235 > 1), v236 + 1, 1, v234);
            }

            *(v234 + 2) = v236 + 1;
            v229 = &v234[16 * v236];
            *(v229 + 4) = v232;
            *(v229 + 5) = v233 - 1;
            v319 = v234;
            v228 = v316;
          }

          if (--v17 <= 1)
          {
            v21 = v319;
            break;
          }
        }
      }

      v237 = *(v21 + 16);
      v310 = v21;
      if (v237)
      {
        v238 = 0;
        v239 = (v21 + 40);
        v309 = v237;
        while (v238 < *(v21 + 16))
        {
          if (v327[2])
          {
            v240 = *v239;
            v313 = *(v239 - 1);
            sub_1D2176758(v313);
            if ((v241 & 1) != 0 && v240 >= 1)
            {
              v17 = v148;

              v243 = v317;
              v244 = sub_1D2208B30(v242, v228);
              v21 = v243;

              v245 = *(v244 + 16);
              v246 = v315;

              v317 = v244;
              v323 = sub_1D21F8414(v244);
              sub_1D2209E94(&v323, v246);
              if (v243)
              {
                goto LABEL_335;
              }

              v247 = v245 - v240;

              if (v247 <= -2)
              {
                goto LABEL_312;
              }

              v248 = v323;
              v17 = v247 / 2;
              v249 = v247 + 1;
              v250 = v323[2];
              if (v250 >= v247 / 2)
              {
                v251 = v247 / 2;
              }

              else
              {
                v251 = v323[2];
              }

              v252 = v249 >= 3;
              if (v249 >= 3)
              {
                v253 = 2 * v251 + 1;
              }

              else
              {
                v253 = 1;
              }

              v324 = v323 + 4;
              v325 = 0;
              v326 = v253;
              if (v252)
              {
                v254 = v251;
              }

              else
              {
                v254 = 0;
              }

              v255 = (2 * v250) | 1;

              v256 = sub_1D2205110(v248, (v248 + 4), v254, v255);
              if (!v256)
              {
                sub_1D21F8344(v248, (v248 + 4), v254, v255);
              }

              v318[0] = v256;
              v257 = v312;

              v258 = v314;

              v259 = v311;

              sub_1D220AF5C(v318, v257, v258, v259);
              swift_unknownObjectRelease();
              swift_bridgeObjectRelease_n();
              swift_bridgeObjectRelease_n();
              swift_bridgeObjectRelease_n();
              v260 = v247 - v17;
              if (__OFSUB__(v247, v17))
              {
                goto LABEL_313;
              }

              if ((v260 & 0x8000000000000000) != 0)
              {
                goto LABEL_314;
              }

              v261 = v318[0][2];
              if (v261 >= v260)
              {
                v261 = v247 - v17;
              }

              v262 = 2 * v261;
              if (v247 == v17)
              {
                v263 = 1;
              }

              else
              {
                v263 = v262 + 1;
              }

              sub_1D220B450(v318[0], (v318[0] + 4), 0, v263);
              swift_unknownObjectRelease();
              v264 = sub_1D2203F40(v323, v324, v325, v326, v317);

              v266 = sub_1D21F3E60(v265, &qword_1EC6D24C0, "H_", sub_1D21F8034, sub_1D21F8ABC);
              sub_1D21F227C(v266);
              v317 = 0;

              v267 = sub_1D21DF354(v318, v313);
              if (*v268)
              {
                sub_1D2203350(v264);
              }

              (v267)(v318, 0);
              v148 = v314;
              swift_unknownObjectRelease();
              v228 = v316;
              v21 = v310;
              v237 = v309;
            }
          }

          ++v238;
          v239 += 2;
          if (v237 == v238)
          {
            goto LABEL_270;
          }
        }

        goto LABEL_308;
      }

LABEL_270:
      v269 = v322;
      v270 = v317;
      v271 = sub_1D21F6C58(v322, &v327);
      v317 = v270;
      v272 = *(v271 + 16);
      if (v315[7] >= v272)
      {

        swift_unknownObjectRelease();

        v115 = v294;
        v17 = v312;
        v114 = v298;
        v109 = v292;
        v113 = v293;
        v112 = v295;
      }

      else
      {
        v305 = v269;
        v309 = v272;

        v313 = sub_1D21CE564(2u);

        v17 = *(v271 + 16);
        if (v17)
        {
          v273 = 0;
          v21 = MEMORY[0x1E69E7CC0];
          v274 = v313;
          while (v273 < *(v271 + 16))
          {
            v277 = *(v271 + 32 + 8 * v273);
            v318[0] = v277;
            v278 = v317;
            v279 = sub_1D21F6D78(v318, v228, v274);
            v317 = v278;
            if (v279)
            {
              v280 = swift_isUniquelyReferenced_nonNull_native();
              v323 = v21;
              if ((v280 & 1) == 0)
              {
                sub_1D21AF7AC(0, *(v21 + 16) + 1, 1);
                v274 = v313;
                v21 = v323;
              }

              v276 = *(v21 + 16);
              v275 = *(v21 + 24);
              if (v276 >= v275 >> 1)
              {
                sub_1D21AF7AC((v275 > 1), v276 + 1, 1);
                v274 = v313;
                v21 = v323;
              }

              *(v21 + 16) = v276 + 1;
              *(v21 + 8 * v276 + 32) = v277;
              v228 = v316;
            }

            if (v17 == ++v273)
            {
              goto LABEL_283;
            }
          }

          goto LABEL_311;
        }

        v21 = MEMORY[0x1E69E7CC0];
        v274 = v313;
LABEL_283:
        v323 = v21;

        v281 = v317;
        sub_1D220C248(&v323, v228, v274);
        v17 = v281;
        if (v281)
        {
          goto LABEL_339;
        }

        swift_bridgeObjectRelease_n();
        v282 = v315[7];
        v35 = __OFSUB__(v309, v282);
        v283 = v309 - v282;
        v113 = v293;
        v112 = v295;
        if (v35)
        {
          goto LABEL_325;
        }

        if ((v283 & 0x8000000000000000) != 0)
        {
          goto LABEL_326;
        }

        v21 = v323;
        v284 = v323[2];
        if (v284 >= v283)
        {
          v284 = v283;
        }

        v285 = 2 * v284;
        if (v283)
        {
          v286 = v285 + 1;
        }

        else
        {
          v286 = 1;
        }

        v287 = swift_unknownObjectRetain();
        v288 = sub_1D2205110(v287, v21 + 32, 0, v286);
        if (!v288)
        {
          sub_1D21F8344(v21, v21 + 32, 0, v286);
        }

        v289 = v288;
        swift_unknownObjectRelease();
        sub_1D21F227C(v289);
        v317 = 0;

        swift_unknownObjectRelease();

        swift_unknownObjectRelease();
        v115 = v294;
        v17 = v312;
        v114 = v298;
        v109 = v292;
      }

      goto LABEL_100;
    }

    v163 = *(v160 + 8 * v165);
    ++v17;
  }

  while (!v163);
  v17 = v165;
LABEL_158:
  v166 = *(*(v156 + 48) + ((v17 << 9) | (8 * __clz(__rbit64(v163)))));
  v167 = *(v155 + 16);
  v303 = v166;
  if (!v167 || (v168 = sub_1D2176758(v166), (v169 & 1) == 0))
  {
    v192 = MEMORY[0x1E69E7CC0];
    goto LABEL_181;
  }

  v170 = *(*(v155 + 56) + 8 * v168);
  v171 = v170 + 56;
  v172 = 1 << *(v170 + 32);
  if (v172 < 64)
  {
    v173 = ~(-1 << v172);
  }

  else
  {
    v173 = -1;
  }

  v174 = v173 & *(v170 + 56);
  v175 = (v172 + 63) >> 6;
  v310 = v170;

  v176 = 0;
  v302 = MEMORY[0x1E69E7CC0];
LABEL_164:
  if (v174)
  {
    v177 = v316;
    goto LABEL_171;
  }

  v177 = v316;
  while (1)
  {
    v178 = v176 + 1;
    if (__OFADD__(v176, 1))
    {
      break;
    }

    if (v178 >= v175)
    {

      v155 = v313;
      v148 = v314;
      v156 = v300;
      v160 = v297;
      v192 = v302;
LABEL_181:
      v21 = v192[2];

      if (v21 >= v304)
      {
        v193 = v304;
      }

      else
      {
        v193 = v21;
      }

      v35 = __OFSUB__(v153, v193);
      v153 -= v193;
      if (!v35)
      {
        v163 &= v163 - 1;
        v164 = v305;
        if (v304 >= v21)
        {
          goto LABEL_153;
        }

        v194 = v21 - v193;
        if (!__OFSUB__(v21, v193))
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v301 = sub_1D2196388(0, *(v301 + 2) + 1, 1, v301);
          }

          v196 = *(v301 + 2);
          v195 = *(v301 + 3);
          v21 = v196 + 1;
          v164 = v305;
          if (v196 >= v195 >> 1)
          {
            v199 = sub_1D2196388((v195 > 1), v196 + 1, 1, v301);
            v164 = v305;
            v301 = v199;
          }

          v197 = v301;
          *(v301 + 2) = v21;
          v198 = &v197[16 * v196];
          *(v198 + 4) = v303;
          *(v198 + 5) = v194;
          v155 = v313;
          goto LABEL_153;
        }

LABEL_330:
        __break(1u);
LABEL_331:
        __break(1u);
LABEL_332:
        __break(1u);
LABEL_333:
        __break(1u);
LABEL_334:
        __break(1u);
LABEL_335:

LABEL_336:
        v291 = v21;
        goto LABEL_337;
      }

LABEL_315:
      __break(1u);
LABEL_316:
      __break(1u);
LABEL_317:
      __break(1u);
LABEL_318:
      __break(1u);
LABEL_319:
      __break(1u);
      goto LABEL_320;
    }

    v174 = *(v171 + 8 * v178);
    ++v176;
    if (v174)
    {
      v176 = v178;
LABEL_171:
      v179 = __clz(__rbit64(v174));
      v174 &= v174 - 1;
      v180 = *(*(v310 + 48) + ((v176 << 9) | (8 * v179)));
      v181 = *(v177 + 16);
      v309 = v180;
      if (!v181 || (v182 = sub_1D2176758(v180), (v183 & 1) == 0) || (v184 = v306, sub_1D2174DA8(*(v177 + 56) + *(v307 + 72) * v182, v306, &unk_1EC6D2D60), v185 = *(v184 + *(v308 + 48)), v186 = sub_1D225055C(), (*(*(v186 - 8) + 8))(v184, v186), v185))
      {
        v187 = v302;
        v188 = swift_isUniquelyReferenced_nonNull_native();
        v323 = v187;
        if ((v188 & 1) == 0)
        {
          sub_1D21AF7AC(0, v187[2] + 1, 1);
          v187 = v323;
        }

        v190 = v187[2];
        v189 = v187[3];
        v191 = v190 + 1;
        if (v190 >= v189 >> 1)
        {
          v302 = (v190 + 1);
          sub_1D21AF7AC((v189 > 1), v190 + 1, 1);
          v191 = v302;
          v187 = v323;
        }

        v187[2] = v191;
        v302 = v187;
        v187[v190 + 4] = v309;
      }

      goto LABEL_164;
    }
  }

  __break(1u);
LABEL_298:
  __break(1u);
LABEL_299:
  __break(1u);
LABEL_300:
  __break(1u);
LABEL_301:
  __break(1u);
LABEL_302:
  __break(1u);
LABEL_303:
  __break(1u);

  swift_unknownObjectRelease();

  swift_unknownObjectRelease();

LABEL_296:
}

uint64_t sub_1D21F1384()
{
  v1 = *(*(v0 + 16) + 16);
  swift_beginAccess();
  result = 0;
  v3 = 0;
  v4 = *(v1 + 24);
  v5 = 1 << *(v4 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(v4 + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = v3;
LABEL_10:
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v11 = *(*(*(*(v4 + 56) + ((v9 << 9) | (8 * v10))) + 16) + 16);
    v12 = __OFADD__(result, v11);
    result += v11;
    if (v12)
    {
      __break(1u);
      return result;
    }
  }

  while (1)
  {
    v9 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v9 >= v8)
    {
      return result;
    }

    v7 = *(v4 + 64 + 8 * v9);
    ++v3;
    if (v7)
    {
      v3 = v9;
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D21F1464()
{

  v0 = sub_1D21CD098(2);

  return v0;
}

uint64_t sub_1D21F14B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  swift_beginAccess();
  v5 = *(v2 + 40);
  if (*(v5 + 16) && (v6 = sub_1D2176758(a1), (v7 & 1) != 0))
  {
    v8 = v6;
    v9 = *(v5 + 56);
    v10 = type metadata accessor for VUStreamingGallery.Label(0);
    v11 = *(v10 - 8);
    sub_1D220C5D4(v9 + *(v11 + 72) * v8, a2, type metadata accessor for VUStreamingGallery.Label);
    return (*(v11 + 56))(a2, 0, 1, v10);
  }

  else
  {
    v13 = type metadata accessor for VUStreamingGallery.Label(0);
    return (*(*(v13 - 8) + 56))(a2, 1, 1, v13);
  }
}

uint64_t sub_1D21F15FC(uint64_t a1)
{
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D2C20);
  v3 = MEMORY[0x1EEE9AC00](v48);
  v47 = (&v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = MEMORY[0x1EEE9AC00](v3);
  v46 = (&v42 - v6);
  MEMORY[0x1EEE9AC00](v5);
  v45 = &v42 - v7;

  v8 = sub_1D21CBA6C();

  swift_beginAccess();

  v10 = sub_1D220DD90(v9, v8);

  swift_bridgeObjectRelease_n();
  *(v1 + 40) = v10;

  v53 = a1;
  v11 = sub_1D21FAAE0(sub_1D220DF50, v52, v10);

  v12 = *(v11 + 16);
  if (v12)
  {
    v54 = MEMORY[0x1E69E7CC0];
    sub_1D21AF7AC(0, v12, 0);
    v13 = v54;
    v14 = v11 + 64;
    result = sub_1D2250EBC();
    v16 = result;
    v17 = 0;
    v42 = v11 + 72;
    v43 = v12;
    v44 = v11 + 64;
    while ((v16 & 0x8000000000000000) == 0 && v16 < 1 << *(v11 + 32))
    {
      v20 = v16 >> 6;
      if ((*(v14 + 8 * (v16 >> 6)) & (1 << v16)) == 0)
      {
        goto LABEL_23;
      }

      v21 = *(v11 + 36);
      v49 = v17;
      v50 = v21;
      v51 = v13;
      v22 = v48;
      v23 = *(v48 + 48);
      v24 = *(v11 + 56);
      v25 = *(*(v11 + 48) + 8 * v16);
      v26 = type metadata accessor for VUStreamingGallery.Label(0);
      v27 = v45;
      sub_1D220C5D4(v24 + *(*(v26 - 8) + 72) * v16, &v45[v23], type metadata accessor for VUStreamingGallery.Label);
      v28 = v46;
      *v46 = v25;
      sub_1D220C50C(&v27[v23], v28 + *(v22 + 48), type metadata accessor for VUStreamingGallery.Label);
      v29 = v28;
      v30 = v47;
      sub_1D21A6938(v29, v47, &qword_1EC6D2C20);
      v31 = *v30;
      v32 = *(v22 + 48);
      v13 = v51;
      result = sub_1D220C574(v30 + v32, type metadata accessor for VUStreamingGallery.Label);
      v54 = v13;
      v34 = *(v13 + 16);
      v33 = *(v13 + 24);
      if (v34 >= v33 >> 1)
      {
        result = sub_1D21AF7AC((v33 > 1), v34 + 1, 1);
        v13 = v54;
      }

      *(v13 + 16) = v34 + 1;
      *(v13 + 8 * v34 + 32) = v31;
      v18 = 1 << *(v11 + 32);
      if (v16 >= v18)
      {
        goto LABEL_24;
      }

      v14 = v44;
      v35 = *(v44 + 8 * v20);
      if ((v35 & (1 << v16)) == 0)
      {
        goto LABEL_25;
      }

      if (v50 != *(v11 + 36))
      {
        goto LABEL_26;
      }

      v36 = v35 & (-2 << (v16 & 0x3F));
      if (v36)
      {
        v18 = __clz(__rbit64(v36)) | v16 & 0x7FFFFFFFFFFFFFC0;
        v19 = v43;
      }

      else
      {
        v37 = v20 << 6;
        v38 = v20 + 1;
        v19 = v43;
        v39 = (v42 + 8 * v20);
        while (v38 < (v18 + 63) >> 6)
        {
          v41 = *v39++;
          v40 = v41;
          v37 += 64;
          ++v38;
          if (v41)
          {
            result = sub_1D217B36C(v16, v50, 0);
            v18 = __clz(__rbit64(v40)) + v37;
            goto LABEL_4;
          }
        }

        result = sub_1D217B36C(v16, v50, 0);
      }

LABEL_4:
      v17 = v49 + 1;
      v16 = v18;
      if (v49 + 1 == v19)
      {

        return v13;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
  }

  else
  {

    return MEMORY[0x1E69E7CC0];
  }

  return result;
}

size_t sub_1D21F1A30()
{
  swift_beginAccess();

  v1 = sub_1D21DF870(v0);
  v2 = v1;
  v3 = *(v1 + 16);
  if (!v3)
  {
    goto LABEL_4;
  }

  v4 = sub_1D21F81B8(*(v1 + 16), 0, &qword_1EC6D2A68, &unk_1D2254470, type metadata accessor for VUStreamingGallery.Label);
  v5 = *(type metadata accessor for VUStreamingGallery.Label(0) - 8);
  v6 = sub_1D21F9B90(&v8, v4 + ((*(v5 + 80) + 32) & ~*(v5 + 80)), v3, v2);
  sub_1D217CF78();
  if (v6 != v3)
  {
    __break(1u);
LABEL_4:

    return MEMORY[0x1E69E7CC0];
  }

  return v4;
}

uint64_t sub_1D21F1B3C(uint64_t a1)
{
  v56 = a1;
  v54 = type metadata accessor for VUStreamingGallery.Label(0);
  v62 = *(v54 - 8);
  v2 = MEMORY[0x1EEE9AC00](v54);
  v65 = &v54 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v2);
  v58 = &v54 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D2C18);
  v6 = MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = (&v54 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v6);
  v10 = (&v54 - v9);
  swift_beginAccess();
  v55 = v1;
  v11 = *(v1 + 40);
  v12 = v11 + 64;
  v13 = 1 << *(v11 + 32);
  v14 = -1;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  v15 = v14 & *(v11 + 64);
  v57 = (v13 + 63) >> 6;
  v59 = v11;

  v16 = 0;
  v17 = 0;
  v18 = MEMORY[0x1E69E7CC8];
  v60 = v12;
  v61 = v8;
  for (i = v10; v15; v10 = i)
  {
    v63 = v16;
    v19 = v17;
LABEL_13:
    v22 = __clz(__rbit64(v15));
    v15 &= v15 - 1;
    v23 = v22 | (v19 << 6);
    v24 = v58;
    v25 = *(*(v59 + 48) + 8 * v23);
    sub_1D220C5D4(*(v59 + 56) + *(v62 + 72) * v23, v58, type metadata accessor for VUStreamingGallery.Label);
    v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D2C20);
    v27 = *(v26 + 48);
    *v8 = v25;
    sub_1D220C50C(v24, v8 + v27, type metadata accessor for VUStreamingGallery.Label);
    (*(*(v26 - 8) + 56))(v8, 0, 1, v26);
    v16 = v63;
    v10 = i;
LABEL_14:
    sub_1D21A6938(v8, v10, &qword_1EC6D2C18);
    v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D2C20);
    if ((*(*(v28 - 8) + 48))(v10, 1, v28) == 1)
    {

      if (v18[2] && (sub_1D2196E40(v56), (v51 & 1) != 0))
      {

        sub_1D21F227C(v52);
      }

      else
      {
      }

      return sub_1D220DA08(v16);
    }

    v29 = *v10;
    v30 = v10 + *(v28 + 48);
    v31 = v65;
    sub_1D220C50C(v30, v65, type metadata accessor for VUStreamingGallery.Label);
    sub_1D220DA08(v16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v66 = v18;
    v34 = sub_1D2196E40(v31);
    v35 = v18[2];
    v36 = (v33 & 1) == 0;
    v37 = v35 + v36;
    if (__OFADD__(v35, v36))
    {
      goto LABEL_39;
    }

    v38 = v33;
    if (v18[3] >= v37)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        if ((v33 & 1) == 0)
        {
          goto LABEL_22;
        }
      }

      else
      {
        sub_1D21B7988();
        v18 = v66;
        if ((v38 & 1) == 0)
        {
          goto LABEL_22;
        }
      }
    }

    else
    {
      sub_1D21B2A84(v37, isUniquelyReferenced_nonNull_native);
      v18 = v66;
      v39 = sub_1D2196E40(v65);
      if ((v38 & 1) != (v40 & 1))
      {
        goto LABEL_41;
      }

      v34 = v39;
      if ((v38 & 1) == 0)
      {
LABEL_22:
        v18[(v34 >> 6) + 8] |= 1 << v34;
        sub_1D220C5D4(v65, v18[6] + *(v62 + 72) * v34, type metadata accessor for VUStreamingGallery.Label);
        *(v18[7] + 8 * v34) = MEMORY[0x1E69E7CC0];
        v41 = v18[2];
        v42 = __OFADD__(v41, 1);
        v43 = v41 + 1;
        if (v42)
        {
          goto LABEL_40;
        }

        v18[2] = v43;
      }
    }

    v44 = v18[7];
    v45 = *(v44 + 8 * v34);
    v46 = swift_isUniquelyReferenced_nonNull_native();
    *(v44 + 8 * v34) = v45;
    if ((v46 & 1) == 0)
    {
      v45 = sub_1D2195F78(0, *(v45 + 2) + 1, 1, v45);
      *(v44 + 8 * v34) = v45;
    }

    v48 = *(v45 + 2);
    v47 = *(v45 + 3);
    if (v48 >= v47 >> 1)
    {
      *(v44 + 8 * v34) = sub_1D2195F78((v47 > 1), v48 + 1, 1, v45);
    }

    sub_1D220C574(v65, type metadata accessor for VUStreamingGallery.Label);
    v49 = *(v44 + 8 * v34);
    *(v49 + 16) = v48 + 1;
    *(v49 + 8 * v48 + 32) = v29;
    v16 = sub_1D220F1E0;
    v12 = v60;
    v8 = v61;
  }

  if (v57 <= v17 + 1)
  {
    v20 = v17 + 1;
  }

  else
  {
    v20 = v57;
  }

  v21 = v20 - 1;
  while (1)
  {
    v19 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v19 >= v57)
    {
      v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D2C20);
      (*(*(v50 - 8) + 56))(v8, 1, 1, v50);
      v15 = 0;
      v17 = v21;
      goto LABEL_14;
    }

    v15 = *(v12 + 8 * v19);
    ++v17;
    if (v15)
    {
      v63 = v16;
      v17 = v19;
      goto LABEL_13;
    }
  }

  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  result = sub_1D22512AC();
  __break(1u);
  return result;
}

uint64_t sub_1D21F216C()
{
  if ((v0[13] & 0x8000000000000000) != 0)
  {
    return 1;
  }

  v1 = *(v0[2] + 16);
  result = swift_beginAccess();
  v3 = 0;
  v4 = 0;
  v5 = *(v1 + 24);
  v6 = 1 << *(v5 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(v5 + 64);
  v9 = (v6 + 63) >> 6;
  do
  {
    if (!v8)
    {
      while (1)
      {
        v10 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
          break;
        }

        if (v10 >= v9)
        {
          goto LABEL_14;
        }

        v8 = *(v5 + 64 + 8 * v10);
        ++v4;
        if (v8)
        {
          v4 = v10;
          goto LABEL_11;
        }
      }

      __break(1u);
      goto LABEL_19;
    }

    v10 = v4;
LABEL_11:
    v11 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v12 = *(*(*(*(v5 + 56) + ((v10 << 9) | (8 * v11))) + 16) + 16);
    v13 = __OFADD__(v3, v12);
    v3 += v12;
  }

  while (!v13);
  __break(1u);
LABEL_14:
  v14 = v0[6];
  v15 = v0[7];
  if ((v14 * v15) >> 64 == (v14 * v15) >> 63)
  {
    return v14 * v15 < v3;
  }

LABEL_19:
  __break(1u);
  return result;
}

uint64_t sub_1D21F227C(uint64_t a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D2C08);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v31 - v6;
  v8 = *(a1 + 16);
  v9 = (a1 + 32);

  v10 = 0;
  while (v8 != v10)
  {
    v11 = v10 + 1;
    sub_1D21CC850(v9[v10]);
    v10 = v11;
    if (v2)
    {
      v32 = v2;
    }
  }

  v32 = v2;

  {
    v14 = *v9++;
    v13 = v14;
    swift_beginAccess();
    v15 = sub_1D2176758(v14);
    if (v16)
    {
      v33 = v9;
      v17 = v7;
      v18 = v15;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v20 = *(v3 + 40);
      v34 = v20;
      *(v3 + 40) = 0x8000000000000000;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_1D21B7ED4();
        v20 = v34;
      }

      v21 = *(v20 + 56);
      v22 = type metadata accessor for VUStreamingGallery.Label(0);
      v23 = *(v22 - 8);
      sub_1D220C50C(v21 + *(v23 + 72) * v18, v17, type metadata accessor for VUStreamingGallery.Label);
      v24 = v18;
      v7 = v17;
      sub_1D2201D14(v24, v20, type metadata accessor for VUStreamingGallery.Label);
      *(v3 + 40) = v20;

      (*(v23 + 56))(v17, 0, 1, v22);
      v9 = v33;
    }

    else
    {
      v25 = type metadata accessor for VUStreamingGallery.Label(0);
      (*(*(v25 - 8) + 56))(v7, 1, 1, v25);
    }

    sub_1D2176170(v7, &qword_1EC6D2C08);
    swift_endAccess();
    swift_beginAccess();
    v26 = sub_1D2176758(v13);
    if (v27)
    {
      v28 = v26;
      v29 = swift_isUniquelyReferenced_nonNull_native();
      v30 = *(v3 + 32);
      v34 = v30;
      *(v3 + 32) = 0x8000000000000000;
      if (!v29)
      {
        sub_1D21B7D88();
        v30 = v34;
      }

      sub_1D2201080(v28, v30);
      *(v3 + 32) = v30;
    }

    result = swift_endAccess();
  }

  return result;
}

uint64_t sub_1D21F2594(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  if (v4 <= a2)
  {
  }

  v5 = v2;
  v6 = MEMORY[0x1E69E7CC0];
  v77 = MEMORY[0x1E69E7CC0];
  if (a2 >= 2)
  {
    v70 = a2;
    v7 = MEMORY[0x1E69E7CC8];
    v76 = MEMORY[0x1E69E7CC8];
    if (v4)
    {
      v8 = (a1 + 32);
      do
      {
        v10 = *v8++;
        v9 = v10;

        v11 = sub_1D21CDCC0(v10);

        if ((v11 & 0x100000000) == 0)
        {
          LOBYTE(v75) = 0;
          sub_1D21DE620(v11, v9);
        }

        --v4;
      }

      while (v4);
      v7 = v76;
    }

    v13 = *(v7 + 16);
    if (v13)
    {
      v71 = v3;
      v14 = sub_1D21F82C8(v13, 0, &qword_1EC6D2940);
      v72 = sub_1D21F91B8(&v75, (v14 + 32), v13, v7);
      v3 = v75;

      sub_1D217CF78();
      if (v72 != v13)
      {
        goto LABEL_84;
      }

      v3 = v71;
    }

    else
    {

      v14 = MEMORY[0x1E69E7CC0];
    }

    v75 = v14;
    sub_1D22080E0(&v75, v5);
    if (v3)
    {

      v69 = v3;
      goto LABEL_88;
    }

    v15 = v75;
    v16 = *(v75 + 2);
    if (v16)
    {
      v75 = v6;
      sub_1D21AF7AC(0, v16, 0);
      v17 = v75;
      v18 = *(v75 + 2);
      v19 = 32;
      do
      {
        v20 = *&v15[v19];
        v75 = v17;
        v21 = *(v17 + 3);
        if (v18 >= v21 >> 1)
        {
          sub_1D21AF7AC((v21 > 1), v18 + 1, 1);
          v17 = v75;
        }

        *(v17 + 2) = v18 + 1;
        *&v17[8 * v18 + 32] = v20;
        v19 += 16;
        ++v18;
        --v16;
      }

      while (v16);

      v22 = *(v17 + 2);
      if (v22)
      {
LABEL_21:
        v23 = 0;
        v24 = v70 / 2;
        if (v22 < v70 / 2)
        {
          v24 = v22;
        }

        v6 = MEMORY[0x1E69E7CC0];
        v25 = v24;
        v73 = v22 / v24;
        while (1)
        {
          if (v23 >= v22)
          {
            goto LABEL_38;
          }

          if (__OFADD__(v23, v73))
          {
            v26 = 0x7FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v26 = v23 + v73;
          }

          if (v23 < 0)
          {
            goto LABEL_78;
          }

          if (v23 >= *(v17 + 2))
          {
            break;
          }

          v27 = *&v17[8 * v23 + 32];
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v6 = sub_1D2195F78(0, *(v6 + 2) + 1, 1, v6);
          }

          v29 = *(v6 + 2);
          v28 = *(v6 + 3);
          v30 = v29 + 1;
          if (v29 >= v28 >> 1)
          {
            v6 = sub_1D2195F78((v28 > 1), v29 + 1, 1, v6);
          }

          *(v6 + 2) = v30;
          *&v6[8 * v29 + 32] = v27;
          v77 = v6;
          v23 = v26;
          if (v30 == v25)
          {
            goto LABEL_38;
          }
        }

LABEL_79:
        __break(1u);
LABEL_80:
        __break(1u);
        goto LABEL_81;
      }
    }

    else
    {

      v17 = MEMORY[0x1E69E7CC0];
      v22 = *(MEMORY[0x1E69E7CC0] + 16);
      if (v22)
      {
        goto LABEL_21;
      }
    }

    v6 = MEMORY[0x1E69E7CC0];
LABEL_38:

    a2 = v70;
    v3 = 0;
  }

  v31 = *(v6 + 2);
  v32 = __OFSUB__(a2, v31);
  v33 = a2 - v31;
  if (v32)
  {
LABEL_81:
    __break(1u);
    goto LABEL_82;
  }

  v74 = v33;

  v35 = sub_1D220610C(v34, &v77);

  v36 = *(v35 + 16);
  if (v36)
  {
    swift_beginAccess();
    v37 = 0;
    v38 = MEMORY[0x1E69E7CC8];
    while (1)
    {
      if (v37 >= *(v35 + 16))
      {
        __break(1u);
LABEL_77:
        __break(1u);
LABEL_78:
        __break(1u);
        goto LABEL_79;
      }

      v39 = *(v35 + 8 * v37 + 32);
      v40 = *(v5 + 32);
      if (!*(v40 + 16) || (v41 = sub_1D2176758(*(v35 + 8 * v37 + 32)), (v42 & 1) == 0))
      {
        v52 = sub_1D2176758(v39);
        if (v53)
        {
          v54 = v52;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v75 = v38;
          if (!isUniquelyReferenced_nonNull_native)
          {
            sub_1D21B7D88();
            v38 = v75;
          }

          sub_1D2201080(v54, v38);
        }

        goto LABEL_43;
      }

      v43 = *(*(v40 + 56) + 8 * v41);
      v44 = swift_isUniquelyReferenced_nonNull_native();
      v75 = v38;
      v45 = sub_1D2176758(v39);
      v47 = *(v38 + 2);
      v48 = (v46 & 1) == 0;
      v32 = __OFADD__(v47, v48);
      v49 = v47 + v48;
      if (v32)
      {
        goto LABEL_77;
      }

      v50 = v46;
      if (*(v38 + 3) >= v49)
      {
        if ((v44 & 1) == 0)
        {
          v58 = v45;
          sub_1D21B7D88();
          v45 = v58;
          v38 = v75;
          if ((v50 & 1) == 0)
          {
LABEL_57:
            *&v38[8 * (v45 >> 6) + 64] |= 1 << v45;
            *(*(v38 + 6) + 8 * v45) = v39;
            *(*(v38 + 7) + 8 * v45) = v43;
            v56 = *(v38 + 2);
            v32 = __OFADD__(v56, 1);
            v57 = v56 + 1;
            if (v32)
            {
              goto LABEL_80;
            }

            *(v38 + 2) = v57;
            goto LABEL_43;
          }

          goto LABEL_42;
        }
      }

      else
      {
        sub_1D21B2DEC(v49, v44);
        v45 = sub_1D2176758(v39);
        if ((v50 & 1) != (v51 & 1))
        {
          goto LABEL_85;
        }
      }

      v38 = v75;
      if ((v50 & 1) == 0)
      {
        goto LABEL_57;
      }

LABEL_42:
      *(*(v38 + 7) + 8 * v45) = v43;
LABEL_43:
      if (v36 == ++v37)
      {

        goto LABEL_63;
      }
    }
  }

  v38 = MEMORY[0x1E69E7CC8];
LABEL_63:
  v59 = *(v38 + 2);
  v60 = MEMORY[0x1E69E7CC0];
  if (v59)
  {
    v61 = sub_1D21F82C8(*(v38 + 2), 0, &qword_1EC6D2A20);
    v62 = sub_1D21F9410(&v75, v61 + 4, v59, v38);

    sub_1D217CF78();
    if (v62 == v59)
    {
      goto LABEL_67;
    }

    __break(1u);
  }

  v61 = v60;
LABEL_67:
  v75 = v61;
  sub_1D21F6558(&v75);
  if (!v3)
  {
    v63 = v75;
    v64 = *(v75 + 2);
    if (v64)
    {
      v75 = v60;
      sub_1D21AF7AC(0, v64, 0);
      v60 = v75;
      v65 = *(v75 + 2);
      v66 = 32;
      do
      {
        v67 = *&v63[v66];
        v75 = v60;
        v68 = *(v60 + 3);
        if (v65 >= v68 >> 1)
        {
          sub_1D21AF7AC((v68 > 1), v65 + 1, 1);
          v60 = v75;
        }

        *(v60 + 2) = v65 + 1;
        *&v60[8 * v65 + 32] = v67;
        v66 += 16;
        ++v65;
        --v64;
      }

      while (v64);
    }

    if ((v74 & 0x8000000000000000) == 0)
    {
      if (*(v60 + 2) >= v74)
      {
        sub_1D2202C48(v60, (v60 + 32), 0, (2 * v74) | 1);

        return v77;
      }

      goto LABEL_83;
    }

LABEL_82:
    __break(1u);
LABEL_83:
    __break(1u);
LABEL_84:
    __break(1u);
LABEL_85:
    sub_1D22512AC();
    __break(1u);
  }

  v69 = v3;
LABEL_88:

  __break(1u);
  return result;
}

uint64_t sub_1D21F2CA8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D23C0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v12 - v2;
  v4 = *(*(v0 + 16) + 16);
  result = swift_beginAccess();
  v6 = *(v4 + 24);
  if (*(v6 + 16))
  {
    result = sub_1D2176DFC(2u);
    if (v7)
    {
      v8 = *(*(v6 + 56) + 8 * result);
      swift_beginAccess();
      v9 = *(*(v8 + 40) + 16);

      *(v8 + 40) = sub_1D220DF70(0, 0xF000000000000000, v9);

      v10 = sub_1D22504FC();
      (*(*(v10 - 8) + 56))(v3, 1, 1, v10);
      v11 = sub_1D21F4BF8(v3, v9);
      swift_beginAccess();
      *(v8 + 48) = v11;
    }
  }

  return result;
}

uint64_t sub_1D21F2E2C(uint64_t a1)
{
  v3 = *(*(v1 + 16) + 16);
  result = swift_beginAccess();
  if (*(*(v3 + 24) + 16))
  {
    result = sub_1D2176DFC(2u);
    if (v5)
    {
      v6 = *(a1 + 16);
      if (v6)
      {
        v7 = (a1 + 32);

        do
        {
          v8 = *v7++;
          sub_1D21CABAC(v8);
          --v6;
        }

        while (v6);
      }
    }
  }

  return result;
}

uint64_t sub_1D21F2F04(uint64_t (*a1)(uint64_t))
{
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D2C38);
  v2 = MEMORY[0x1EEE9AC00](v59);
  v58 = &v48 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v57 = &v48 - v5;
  v6 = MEMORY[0x1EEE9AC00](v4);
  v56 = (&v48 - v7);
  MEMORY[0x1EEE9AC00](v6);
  v55 = &v48 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D2458);
  v53 = *(v9 - 8);
  v54 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v48 - v10;

  v12 = a1(2);

  v13 = *(v12 + 16);
  if (v13)
  {
    v65 = MEMORY[0x1E69E7CC0];
    sub_1D21AFC20(0, v13, 0);
    v14 = v65;
    v15 = v12 + 64;
    result = sub_1D2250EBC();
    v17 = result;
    v18 = 0;
    v19 = *(v12 + 36);
    v48 = v12 + 72;
    v49 = v13;
    v64 = v11;
    v50 = v19;
    v51 = v12 + 64;
    v52 = v12;
    while ((v17 & 0x8000000000000000) == 0 && v17 < 1 << *(v12 + 32))
    {
      if ((*(v15 + 8 * (v17 >> 6)) & (1 << v17)) == 0)
      {
        goto LABEL_24;
      }

      if (v19 != *(v12 + 36))
      {
        goto LABEL_25;
      }

      v61 = 1 << v17;
      v62 = v17 >> 6;
      v60 = v18;
      v21 = v59;
      v22 = *(v59 + 48);
      v23 = *(v12 + 48);
      v24 = *(v12 + 56);
      v25 = *(v23 + 8 * v17);
      v26 = sub_1D22504FC();
      v27 = *(v26 - 8);
      v63 = v14;
      v28 = v27;
      v29 = v55;
      (*(v27 + 16))(&v55[v22], v24 + *(v27 + 72) * v17, v26);
      v30 = v56;
      *v56 = v25;
      v31 = *(v28 + 32);
      v31(v30 + *(v21 + 48), &v29[v22], v26);
      v32 = *(v54 + 48);
      v33 = v57;
      sub_1D2174DA8(v30, v57, &qword_1EC6D2C38);
      v34 = *(v21 + 48);
      *v64 = *v33;
      v35 = v30;
      v36 = v58;
      sub_1D21A6938(v35, v58, &qword_1EC6D2C38);
      v37 = *(v21 + 48);
      v38 = v64;
      v31(v64 + v32, (v36 + v37), v26);
      (*(v28 + 8))(&v33[v34], v26);
      v14 = v63;
      v65 = v63;
      v40 = *(v63 + 16);
      v39 = *(v63 + 24);
      if (v40 >= v39 >> 1)
      {
        sub_1D21AFC20(v39 > 1, v40 + 1, 1);
        v14 = v65;
      }

      *(v14 + 16) = v40 + 1;
      result = sub_1D21A6938(v38, v14 + ((*(v53 + 80) + 32) & ~*(v53 + 80)) + *(v53 + 72) * v40, &qword_1EC6D2458);
      v12 = v52;
      v20 = 1 << *(v52 + 32);
      if (v17 >= v20)
      {
        goto LABEL_26;
      }

      v15 = v51;
      v41 = *(v51 + 8 * v62);
      if ((v41 & v61) == 0)
      {
        goto LABEL_27;
      }

      LODWORD(v19) = v50;
      if (v50 != *(v52 + 36))
      {
        goto LABEL_28;
      }

      v42 = v41 & (-2 << (v17 & 0x3F));
      if (v42)
      {
        v20 = __clz(__rbit64(v42)) | v17 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v43 = v62 << 6;
        v44 = v62 + 1;
        v45 = (v48 + 8 * v62);
        while (v44 < (v20 + 63) >> 6)
        {
          v47 = *v45++;
          v46 = v47;
          v43 += 64;
          ++v44;
          if (v47)
          {
            result = sub_1D217B36C(v17, v50, 0);
            v20 = __clz(__rbit64(v46)) + v43;
            goto LABEL_4;
          }
        }

        result = sub_1D217B36C(v17, v50, 0);
      }

LABEL_4:
      v18 = v60 + 1;
      v17 = v20;
      if (v60 + 1 == v49)
      {

        return v14;
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

    return MEMORY[0x1E69E7CC0];
  }

  return result;
}

uint64_t sub_1D21F342C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D2B88);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v73 = &v60 - v2;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D2968);
  v3 = *(v72 - 8);
  v4 = MEMORY[0x1EEE9AC00](v72);
  v65 = &v60 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v64 = &v60 - v6;
  v71 = type metadata accessor for VUStreamingGallery.Label(0);
  v7 = MEMORY[0x1EEE9AC00](v71);
  v9 = &v60 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v60 - v10;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D2458);
  v83 = *(v62 - 8);
  v12 = MEMORY[0x1EEE9AC00](v62);
  v63 = &v60 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v61 = &v60 - v15;
  v16 = MEMORY[0x1EEE9AC00](v14);
  v82 = (&v60 - v17);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v68 = &v60 - v19;
  MEMORY[0x1EEE9AC00](v18);
  v77 = &v60 - v20;
  v85 = MEMORY[0x1E69E7CC8];
  v21 = sub_1D21F2ED4();
  v74 = v0;

  v22 = sub_1D21CBA6C();

  result = v21;
  v24 = 0;
  v25 = *(v22 + 64);
  v76 = v22 + 64;
  v79 = v22;
  v26 = 1 << *(v22 + 32);
  v27 = -1;
  if (v26 < 64)
  {
    v27 = ~(-1 << v26);
  }

  v28 = v27 & v25;
  v75 = (v26 + 63) >> 6;
  v67 = (v3 + 48);
  v66 = xmmword_1D22526E0;
  v69 = v11;
  v70 = v9;
  v81 = v21;
LABEL_4:
  while (v28)
  {
    v29 = v28;
LABEL_10:
    v28 = (v29 - 1) & v29;
    v31 = *(result + 16);
    if (v31)
    {
      v80 = (v29 - 1) & v29;
      v32 = 0;
      v33 = (v24 << 9) | (8 * __clz(__rbit64(v29)));
      v34 = *(*(v79 + 48) + v33);
      v78 = *(*(v79 + 56) + v33);
      while (1)
      {
        if (v32 >= *(result + 16))
        {
          __break(1u);
          goto LABEL_32;
        }

        v35 = v82;
        v36 = (*(v83 + 80) + 32) & ~*(v83 + 80);
        v37 = *(v83 + 72);
        sub_1D2174DA8(result + v36 + v37 * v32, v82, &qword_1EC6D2458);
        if (*v35 == v34)
        {
          break;
        }

        ++v32;
        sub_1D2176170(v35, &qword_1EC6D2458);
        result = v81;
        if (v31 == v32)
        {
          v28 = v80;
          goto LABEL_4;
        }
      }

      v38 = v68;
      sub_1D21A6938(v35, v68, &qword_1EC6D2458);
      sub_1D21A6938(v38, v77, &qword_1EC6D2458);

      v39 = v73;
      v40 = v78;
      sub_1D21CC964(v78, v73);

      if ((*v67)(v39, 1, v72) == 1)
      {
        sub_1D2176170(v39, &qword_1EC6D2B88);
        v41 = v69;
        *v69 = v40;
      }

      else
      {
        v42 = v64;
        sub_1D21A6938(v39, v64, &qword_1EC6D2968);
        sub_1D21A6938(v42, v65, &qword_1EC6D2968);
        v43 = sub_1D225055C();
        v41 = v69;
        (*(*(v43 - 8) + 32))();
      }

      v44 = v70;
      swift_storeEnumTagMultiPayload();
      v45 = v85;
      if (*(v85 + 16) && (sub_1D2196E40(v41), (v46 & 1) != 0))
      {
        sub_1D220C5D4(v41, v44, type metadata accessor for VUStreamingGallery.Label);
        v78 = sub_1D21DF418(v84, v44);
        if (*v47)
        {
          v48 = v47;
          v49 = v61;
          sub_1D2174DA8(v77, v61, &qword_1EC6D2458);
          v50 = *(v62 + 48);
          v51 = v63;
          *v63 = *v49;
          v52 = sub_1D22504FC();
          (*(*(v52 - 8) + 32))(&v51[v50], &v49[v50], v52);
          v53 = *v48;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *v48 = v53;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v53 = sub_1D21966E8(0, v53[2] + 1, 1, v53);
            *v48 = v53;
          }

          v56 = v53[2];
          v55 = v53[3];
          if (v56 >= v55 >> 1)
          {
            v53 = sub_1D21966E8(v55 > 1, v56 + 1, 1, v53);
            *v48 = v53;
          }

          v53[2] = v56 + 1;
          sub_1D21A6938(v63, v53 + v36 + v56 * v37, &qword_1EC6D2458);
          (v78)(v84, 0);
          sub_1D220C574(v44, type metadata accessor for VUStreamingGallery.Label);
          v57 = v77;
        }

        else
        {
          (v78)(v84, 0);
          sub_1D220C574(v44, type metadata accessor for VUStreamingGallery.Label);
          v57 = v77;
        }
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D2450);
        v58 = swift_allocObject();
        *(v58 + 16) = v66;
        v57 = v77;
        sub_1D2174DA8(v77, v58 + v36, &qword_1EC6D2458);
        v59 = swift_isUniquelyReferenced_nonNull_native();
        v84[0] = v45;
        sub_1D21BAE18(v58, v41, v59);
        v85 = v84[0];
      }

      sub_1D220C574(v41, type metadata accessor for VUStreamingGallery.Label);
      sub_1D2176170(v57, &qword_1EC6D2458);
      v28 = v80;
      result = v81;
    }
  }

  while (1)
  {
    v30 = v24 + 1;
    if (__OFADD__(v24, 1))
    {
      break;
    }

    if (v30 >= v75)
    {

      return v85;
    }

    v29 = *(v76 + 8 * v30);
    ++v24;
    if (v29)
    {
      v24 = v30;
      goto LABEL_10;
    }
  }

LABEL_32:
  __break(1u);
  return result;
}

size_t sub_1D21F3C98(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    goto LABEL_4;
  }

  v3 = sub_1D21F81B8(*(a1 + 16), 0, &qword_1EC6D2388, &unk_1D22532A8, MEMORY[0x1E69695A8]);
  v4 = *(sub_1D225055C() - 8);
  v5 = sub_1D21F8BBC(&v7, (v3 + ((*(v4 + 80) + 32) & ~*(v4 + 80))), v2, a1);
  sub_1D217CF78();
  if (v5 != v2)
  {
    __break(1u);
LABEL_4:

    return MEMORY[0x1E69E7CC0];
  }

  return v3;
}

void *sub_1D21F3D84(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    goto LABEL_4;
  }

  v3 = sub_1D21F8034(*(a1 + 16), 0, &qword_1EC6D24C0);
  v4 = sub_1D21F8E60(&v6, v3 + 4, v2, a1);
  sub_1D217CF78();
  if (v4 != v2)
  {
    __break(1u);
LABEL_4:

    return MEMORY[0x1E69E7CC0];
  }

  return v3;
}

uint64_t sub_1D21F3E60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void, void, uint64_t, uint64_t), uint64_t (*a5)(uint64_t *, uint64_t, uint64_t, uint64_t))
{
  v6 = *(a1 + 16);
  if (!v6)
  {
    goto LABEL_4;
  }

  v8 = a4(*(a1 + 16), 0, a2, a3);
  v9 = a5(&v11, v8 + 32, v6, a1);
  sub_1D217CF78();
  if (v9 != v6)
  {
    __break(1u);
LABEL_4:

    return MEMORY[0x1E69E7CC0];
  }

  return v8;
}

unint64_t sub_1D21F3F08(uint64_t a1)
{
  v2 = v1;
  v3 = sub_1D2196D38(a1);
  v5 = v4;
  if (v4)
  {
    v6 = v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v8 = *v1;
    v13 = *v2;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1D21B6EBC();
      v8 = v13;
    }

    v9 = *(v8 + 48);
    v10 = sub_1D225055C();
    (*(*(v10 - 8) + 8))(v9 + *(*(v10 - 8) + 72) * v6, v10);
    v11 = *(*(v8 + 56) + 4 * v6);
    sub_1D2201360(v6, v8);
    *v2 = v8;
  }

  else
  {
    v11 = 0;
  }

  return v11 | (((v5 & 1) == 0) << 32);
}

uint64_t sub_1D21F3FEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = sub_1D2176758(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v19 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1D21B7B34();
      v9 = v19;
    }

    v10 = *(v9 + 56);
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D2968);
    v18 = *(v11 - 8);
    sub_1D21A6938(v10 + *(v18 + 72) * v7, a2, &qword_1EC6D2968);
    sub_1D2201B50(v7, v9);
    *v3 = v9;
    v12 = *(v18 + 56);
    v13 = a2;
    v14 = 0;
    v15 = v11;
  }

  else
  {
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D2968);
    v12 = *(*(v16 - 8) + 56);
    v15 = v16;
    v13 = a2;
    v14 = 1;
  }

  return v12(v13, v14, 1, v15);
}

uint64_t sub_1D21F4164(uint64_t a1)
{
  v2 = v1;
  v3 = sub_1D2196E40(a1);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *v1;
  v12 = *v2;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_1D21B7988();
    v7 = v12;
  }

  v8 = *(v7 + 48);
  v9 = type metadata accessor for VUStreamingGallery.Label(0);
  sub_1D220C574(v8 + *(*(v9 - 8) + 72) * v5, type metadata accessor for VUStreamingGallery.Label);
  v10 = *(*(v7 + 56) + 8 * v5);
  sub_1D2201EC8(v5, v7);
  *v2 = v7;
  return v10;
}

void __swiftcall VUStreamingGallery.Configuration.init(maxIdentities:maxObservationsPerIdentity:minObservationsPerEntity:maxKeyObservationsPerEntity:autoUpdate:isStreamingEnabled:expirationInterval:)(VisualUnderstanding::VUStreamingGallery::Configuration *__return_ptr retstr, Swift::Int_optional maxIdentities, Swift::Int_optional maxObservationsPerIdentity, Swift::Int_optional minObservationsPerEntity, Swift::Int_optional maxKeyObservationsPerEntity, Swift::Bool_optional autoUpdate, Swift::Bool_optional isStreamingEnabled, Swift::Double_optional expirationInterval)
{
  v8 = 100;
  if (maxIdentities.is_nil)
  {
    value = 100;
  }

  else
  {
    value = maxIdentities.value;
  }

  if (!maxObservationsPerIdentity.is_nil)
  {
    v8 = maxObservationsPerIdentity.value;
  }

  retstr->maxIdentities = value;
  retstr->maxObservationsPerIdentity = v8;
  v10 = 30;
  if (!minObservationsPerEntity.is_nil)
  {
    v10 = minObservationsPerEntity.value;
  }

  v11 = 10;
  if (!maxKeyObservationsPerEntity.is_nil)
  {
    v11 = maxKeyObservationsPerEntity.value;
  }

  retstr->minObservationsPerEntity = v10;
  retstr->maxKeyObservationsPerEntity = v11;
  retstr->maxClustersPerTrack = 5;
  retstr->autoUpdate = autoUpdate.value;
  retstr->isStreamingEnabled = isStreamingEnabled.value;
  *(&retstr->clusteringThreshold.value + 2) = 0.0;
  LOBYTE(retstr[1].maxIdentities) = 1;
}

void __swiftcall VUStreamingGallery.Configuration.init(maxIdentities:maxObservationsPerIdentity:minObservationsPerEntity:maxKeyObservationsPerEntity:maxClustersPerTrack:autoUpdate:isStreamingEnabled:expirationInterval:clusteringThreshold:)(VisualUnderstanding::VUStreamingGallery::Configuration *__return_ptr retstr, Swift::Int_optional maxIdentities, Swift::Int_optional maxObservationsPerIdentity, Swift::Int_optional minObservationsPerEntity, Swift::Int_optional maxKeyObservationsPerEntity, Swift::Int_optional maxClustersPerTrack, Swift::Bool_optional autoUpdate, Swift::Bool_optional isStreamingEnabled, Swift::Double_optional expirationInterval, Swift::Float_optional *clusteringThreshold)
{
  value = maxClustersPerTrack.value;
  v11 = 100;
  if (maxIdentities.is_nil)
  {
    v12 = 100;
  }

  else
  {
    v12 = maxIdentities.value;
  }

  if (!maxObservationsPerIdentity.is_nil)
  {
    v11 = maxObservationsPerIdentity.value;
  }

  v13 = 30;
  if (!minObservationsPerEntity.is_nil)
  {
    v13 = minObservationsPerEntity.value;
  }

  retstr->maxIdentities = v12;
  retstr->maxObservationsPerIdentity = v11;
  v14 = 10;
  if (!maxKeyObservationsPerEntity.is_nil)
  {
    v14 = maxKeyObservationsPerEntity.value;
  }

  retstr->minObservationsPerEntity = v13;
  retstr->maxKeyObservationsPerEntity = v14;
  if (maxClustersPerTrack.is_nil)
  {
    value = 5;
  }

  retstr->maxClustersPerTrack = value;
  retstr->autoUpdate = autoUpdate.value;
  retstr->isStreamingEnabled = isStreamingEnabled.value;
  *(&retstr->clusteringThreshold.value + 2) = v15;
  LOBYTE(retstr[1].maxIdentities) = v16 & 1;
}

BOOL VUStreamingGallery.Tag.isConfirmed.getter()
{
  v1 = type metadata accessor for VUStreamingGallery.Tag(0);
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D220C5D4(v0, v3, type metadata accessor for VUStreamingGallery.Tag);
  v4 = swift_getEnumCaseMultiPayload() != 1;
  sub_1D220C574(v3, type metadata accessor for VUStreamingGallery.Tag);
  return v4;
}

uint64_t VUStreamingGallery.Tag.uuid.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for VUStreamingGallery.Tag(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D220C5D4(v1, v5, type metadata accessor for VUStreamingGallery.Tag);
  v6 = sub_1D225055C();
  return (*(*(v6 - 8) + 32))(a1, v5, v6);
}

uint64_t VUStreamingGallery.__allocating_init(with:)(uint64_t *a1)
{
  v2 = swift_allocObject();
  VUStreamingGallery.init(with:)(a1);
  return v2;
}

uint64_t VUStreamingGallery.__allocating_init(from:with:)(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 40);
  if (v5 == 2)
  {
    v5 = 0;
    v6 = 1;
    v7 = xmmword_1D2254B60;
    v8 = vdupq_n_s64(0x64uLL);
    v9 = 30;
  }

  else
  {
    v6 = *(a2 + 48);
    v7 = *(a2 + 24);
    v9 = *(a2 + 16);
    v8 = *a2;
  }

  v12 = v7;
  v13 = v8;
  v14 = v9;
  v15 = v7;
  v16 = v5;
  v17 = v6;
  v10 = (*(v2 + 560))(&v13);
  if (!v3)
  {
    sub_1D21E0CEC(a1, v12);
  }

  sub_1D2176170(a1, &qword_1EC6D2100);
  return v10;
}

uint64_t sub_1D21F4600(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1D2204868(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 8 * a1;
    v8 = *(v7 + 32);
    memmove((v7 + 32), (v7 + 40), 8 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

uint64_t sub_1D21F4688@<X0>(unint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1D22048B8(v5);
    v5 = result;
  }

  v7 = v5[2];
  if (v7 <= a1)
  {
    __break(1u);
  }

  else
  {
    v8 = v7 - 1;
    v9 = &v5[2 * a1];
    *a2 = *(v9 + 2);
    result = memmove(v9 + 4, v9 + 6, 16 * (v7 - 1 - a1));
    v5[2] = v8;
    *v2 = v5;
  }

  return result;
}

size_t sub_1D21F4714@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1D22048A4(v5);
    v5 = result;
  }

  v7 = v5[2];
  if (v7 <= a1)
  {
    __break(1u);
  }

  else
  {
    v8 = v7 - 1;
    v9 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D23C0) - 8);
    v10 = *(v9 + 72);
    v11 = v5 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + v10 * a1;
    result = sub_1D21A6938(v11, a2, &qword_1EC6D23C0);
    if (v10 > 0 || v11 >= v11 + v10 + v10 * (v8 - a1))
    {
      result = swift_arrayInitWithTakeFrontToBack();
    }

    else if (v10)
    {
      result = swift_arrayInitWithTakeBackToFront();
    }

    v5[2] = v8;
    *v2 = v5;
  }

  return result;
}

unint64_t sub_1D21F4858(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1D220487C(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 8 * a1;
    v8 = *(v7 + 32);
    v7 += 32;
    v9 = *(v7 + 4);
    memmove(v7, (v7 + 8), 8 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8 | (v9 << 32);
  }

  return result;
}

uint64_t sub_1D21F48F4(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1D2204890(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

uint64_t sub_1D21F4984(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1D22048E0(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

uint64_t sub_1D21F4A10@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_31;
  }

  v6 = result;
  v8 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v8 == 2)
    {
      v10 = *(a2 + 16);
      v9 = *(a2 + 24);
    }

    else
    {
      v9 = 0;
      v10 = 0;
    }
  }

  else
  {
    if (v8)
    {
      v9 = a2 >> 32;
    }

    else
    {
      v9 = BYTE6(a3);
    }

    if (v8)
    {
      v10 = a2;
    }

    else
    {
      v10 = 0;
    }
  }

  v11 = sub_1D220505C(v10, v9, a2, a3);
  if (v6 && v11 < v6)
  {
    if (v8 <= 1)
    {
      if (!v8)
      {
        goto LABEL_28;
      }

      v12 = a2 >> 32;
      goto LABEL_26;
    }

    if (v8 != 2)
    {
      goto LABEL_28;
    }

    v12 = *(a2 + 24);
LABEL_24:
    result = *(a2 + 16);
    goto LABEL_27;
  }

  v12 = sub_1D2204FF8(v10, v6, a2, a3);
  result = 0;
  if (v8 > 1)
  {
    if (v8 != 3)
    {
      goto LABEL_24;
    }
  }

  else if (v8)
  {
LABEL_26:
    result = a2;
  }

LABEL_27:
  if (v12 >= result)
  {
LABEL_28:
    v13 = sub_1D225044C();
    v15 = v14;
    result = sub_1D21A1ED8(a2, a3);
    *a4 = v13;
    a4[1] = v15;
    return result;
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_1D21F4B58(uint64_t result, unint64_t a2)
{
  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
    return result;
  }

  if (!a2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v3 = result;
  result = sub_1D2250B2C();
  *(result + 16) = a2;
  v4 = (result + 32);
  if (a2 <= 3)
  {
    v5 = 0;
LABEL_9:
    v9 = a2 - v5;
    do
    {
      *v4++ = v3;
      --v9;
    }

    while (v9);
    return result;
  }

  v5 = a2 & 0x7FFFFFFFFFFFFFFCLL;
  v4 += a2 & 0x7FFFFFFFFFFFFFFCLL;
  v6 = vdupq_n_s64(v3);
  v7 = (result + 48);
  v8 = a2 & 0x7FFFFFFFFFFFFFFCLL;
  do
  {
    v7[-1] = v6;
    *v7 = v6;
    v7 += 2;
    v8 -= 4;
  }

  while (v8);
  if (v5 != a2)
  {
    goto LABEL_9;
  }

  return result;
}

uint64_t sub_1D21F4BF8(uint64_t result, uint64_t a2)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = result;
    if (a2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D23C0);
      v4 = sub_1D2250B2C();
      *(v4 + 16) = a2;
      v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D23C0) - 8);
      v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
      sub_1D2174DA8(v3, v4 + v6, &qword_1EC6D23C0);
      v7 = a2 - 1;
      if (a2 != 1)
      {
        v8 = *(v5 + 72);
        v9 = v4 + v8 + v6;
        do
        {
          sub_1D2174DA8(v3, v9, &qword_1EC6D23C0);
          v9 += v8;
          --v7;
        }

        while (v7);
      }
    }

    else
    {
      v4 = MEMORY[0x1E69E7CC0];
    }

    sub_1D2176170(v3, &qword_1EC6D23C0);
    return v4;
  }

  return result;
}

unint64_t sub_1D21F4D30(unint64_t result)
{
  v1 = 1 << *(result + 32);
  v2 = -1;
  if (v1 < 64)
  {
    v2 = ~(-1 << v1);
  }

  v3 = v2 & *(result + 64);
  if (v3)
  {
    v4 = 0;
    v5 = __clz(__rbit64(v3));
    v6 = (v3 - 1) & v3;
    v7 = (v1 + 63) >> 6;
LABEL_9:
    v11 = *(result + 56);
    v12 = *(v11 + 4 * v5);
    if (!v6)
    {
      goto LABEL_11;
    }

    do
    {
      v13 = v4;
LABEL_15:
      v14 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      v15 = (v13 << 8) | (4 * v14);
      if (v12 < *(v11 + v15))
      {
        v12 = *(v11 + v15);
      }
    }

    while (v6);
LABEL_11:
    while (1)
    {
      v13 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      if (v13 >= v7)
      {
        v16 = 0;
        v17 = LODWORD(v12);
        return v17 | (v16 << 32);
      }

      v6 = *(result + 64 + 8 * v13);
      ++v4;
      if (v6)
      {
        v4 = v13;
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    v8 = 0;
    v9 = 0;
    v7 = (v1 + 63) >> 6;
    while (v7 - 1 != v9)
    {
      v4 = v9 + 1;
      v10 = *(result + 72 + 8 * v9);
      v8 -= 64;
      ++v9;
      if (v10)
      {
        v6 = (v10 - 1) & v10;
        v5 = __clz(__rbit64(v10)) - v8;
        goto LABEL_9;
      }
    }

    v17 = 0;
    v16 = 1;
    return v17 | (v16 << 32);
  }

  return result;
}

uint64_t sub_1D21F4E58(uint64_t a1)
{
  v1 = a1 + 64;
  v2 = 1 << *(a1 + 32);
  v3 = -1;
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  v4 = v3 & *(a1 + 64);
  if (v4)
  {
    v5 = 0;
    v6 = __clz(__rbit64(v4));
    v7 = (v4 - 1) & v4;
    v8 = (v2 + 63) >> 6;
LABEL_9:
    v12 = *(a1 + 56);
    result = *(v12 + 8 * v6);
    if (!v7)
    {
      goto LABEL_11;
    }

    do
    {
      v14 = v5;
LABEL_15:
      v15 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      v16 = *(v12 + ((v14 << 9) | (8 * v15)));
      if (result <= v16)
      {
        result = v16;
      }
    }

    while (v7);
LABEL_11:
    while (1)
    {
      v14 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      if (v14 >= v8)
      {
        return result;
      }

      v7 = *(v1 + 8 * v14);
      ++v5;
      if (v7)
      {
        v5 = v14;
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    v9 = 0;
    v10 = 0;
    v8 = (v2 + 63) >> 6;
    while (v8 - 1 != v10)
    {
      v5 = v10 + 1;
      v11 = *(a1 + 72 + 8 * v10);
      v9 -= 64;
      ++v10;
      if (v11)
      {
        v7 = (v11 - 1) & v11;
        v6 = __clz(__rbit64(v11)) - v9;
        goto LABEL_9;
      }
    }

    return 0;
  }

  return result;
}

uint64_t VUStreamingGallery.Label.intValue.getter()
{
  v1 = type metadata accessor for VUStreamingGallery.Label(0);
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D220C5D4(v0, v3, type metadata accessor for VUStreamingGallery.Label);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    return *v3;
  }

  sub_1D220C574(v3, type metadata accessor for VUStreamingGallery.Label);
  return 0;
}

uint64_t VUStreamingGallery.Label.uuidValue.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for VUStreamingGallery.Label(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D220C5D4(v2, v6, type metadata accessor for VUStreamingGallery.Label);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v8 = sub_1D225055C();
  v9 = *(v8 - 8);
  if (EnumCaseMultiPayload == 1)
  {
    (*(*(v8 - 8) + 32))(a1, v6, v8);
    v10 = 0;
  }

  else
  {
    v10 = 1;
  }

  return (*(v9 + 56))(a1, v10, 1, v8);
}

uint64_t VUStreamingGallery.Label.hash(into:)()
{
  v1 = sub_1D225055C();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for VUStreamingGallery.Label(0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = (&v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D220C5D4(v0, v7, type metadata accessor for VUStreamingGallery.Label);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    return MEMORY[0x1D3898D70](*v7);
  }

  (*(v2 + 32))(v4, v7, v1);
  sub_1D220E134(&qword_1EDC87228, MEMORY[0x1E69695A8]);
  sub_1D22508DC();
  return (*(v2 + 8))(v4, v1);
}

uint64_t sub_1D21F5388@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D2110);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v13 - v5;
  v7 = type metadata accessor for VUStreamingGallery.Label(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D220C5D4(a1, v9, type metadata accessor for VUStreamingGallery.Label);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1D225050C();
    v10 = sub_1D225055C();
    v11 = *(v10 - 8);
    result = (*(v11 + 48))(v6, 1, v10);
    if (result == 1)
    {
      __break(1u);
    }

    else
    {
      (*(v11 + 32))(a2, v6, v10);
      swift_storeEnumTagMultiPayload();
      return sub_1D220C574(v9, type metadata accessor for VUStreamingGallery.Label);
    }
  }

  else
  {
    *a2 = -1;
    return swift_storeEnumTagMultiPayload();
  }

  return result;
}

uint64_t VUStreamingGallery.Label.hashValue.getter()
{
  v1 = v0;
  v2 = sub_1D225055C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for VUStreamingGallery.Label(0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = (&v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D225132C();
  sub_1D220C5D4(v1, v8, type metadata accessor for VUStreamingGallery.Label);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v3 + 32))(v5, v8, v2);
    sub_1D220E134(&qword_1EDC87228, MEMORY[0x1E69695A8]);
    sub_1D22508DC();
    (*(v3 + 8))(v5, v2);
  }

  else
  {
    MEMORY[0x1D3898D70](*v8);
  }

  return sub_1D225137C();
}

uint64_t sub_1D21F5748()
{
  v1 = sub_1D225055C();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x1EEE9AC00](v1);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v7 = (&v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D220C5D4(v0, v7, type metadata accessor for VUStreamingGallery.Label);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    return MEMORY[0x1D3898D70](*v7);
  }

  (*(v2 + 32))(v5, v7, v1);
  sub_1D220E134(&qword_1EDC87228, MEMORY[0x1E69695A8]);
  sub_1D22508DC();
  return (*(v2 + 8))(v5, v1);
}

uint64_t sub_1D21F5904()
{
  v1 = v0;
  v2 = sub_1D225055C();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = (&v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D225132C();
  sub_1D220C5D4(v1, v8, type metadata accessor for VUStreamingGallery.Label);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v3 + 32))(v6, v8, v2);
    sub_1D220E134(&qword_1EDC87228, MEMORY[0x1E69695A8]);
    sub_1D22508DC();
    (*(v3 + 8))(v6, v2);
  }

  else
  {
    MEMORY[0x1D3898D70](*v8);
  }

  return sub_1D225137C();
}

uint64_t VUStreamingGallery.Configuration.clusteringThreshold.setter(uint64_t result)
{
  *(v1 + 44) = result;
  *(v1 + 48) = BYTE4(result) & 1;
  return result;
}

uint64_t VUStreamingGallery.__allocating_init()()
{
  v0 = swift_allocObject();
  VUStreamingGallery.init()();
  return v0;
}

uint64_t VUStreamingGallery.__allocating_init(with:dimensions:dataType:)(uint64_t *a1, uint64_t a2, char *a3)
{
  v6 = swift_allocObject();
  VUStreamingGallery.init(with:dimensions:dataType:)(a1, a2, a3);
  return v6;
}

uint64_t VUStreamingGallery.__allocating_init(maximumIdentities:maximumObservationsPerIdentity:autoUpdate:isStreamingEnabled:)(uint64_t a1, uint64_t a2, char a3, char a4)
{
  v8 = swift_allocObject();
  VUStreamingGallery.init(maximumIdentities:maximumObservationsPerIdentity:autoUpdate:isStreamingEnabled:)(a1, a2, a3, a4);
  return v8;
}

uint64_t sub_1D21F5D94(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) + 16);
  v5 = OBJC_IVAR____TtC19VisualUnderstanding20VUIndexCoreDataStore_parameters;
  swift_beginAccess();
  v6 = *(v4 + v5);

  sub_1D21CAE80(a1, v6);
}

uint64_t sub_1D21F5E40@<X0>(uint64_t **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t a5@<X8>)
{
  v23 = a4;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D2888);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v21 - v11;
  v13 = type metadata accessor for VUStreamingGallery.Tag(0);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_1D21E3AE0(*a1, 0, 1, 0);
  if (v5)
  {
    goto LABEL_2;
  }

  v19 = result;
  v20 = v18;
  v22 = 0;
  sub_1D2174DA8(a3, v12, &qword_1EC6D2888);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    result = sub_1D2176170(v12, &qword_1EC6D2888);
  }

  else
  {
    sub_1D220C50C(v12, v16, type metadata accessor for VUStreamingGallery.Tag);
    if (v20)
    {
      result = sub_1D220C574(v16, type metadata accessor for VUStreamingGallery.Tag);
    }

    else
    {
      v5 = v22;
      sub_1D21E4888(v19, v16);
      result = sub_1D220C574(v16, type metadata accessor for VUStreamingGallery.Tag);
      if (v5)
      {
LABEL_2:
        *v23 = v5;
        return result;
      }

      v22 = 0;
    }
  }

  if (*(a2 + 81) == 1)
  {
    result = sub_1D21F216C();
    if (result)
    {
      v5 = v22;
      result = sub_1D21EB4B0();
      if (v5)
      {
        goto LABEL_2;
      }
    }
  }

  *a5 = v19;
  *(a5 + 8) = v20 & 1;
  return result;
}

uint64_t VUStreamingGallery.ObservationMatchType.hashValue.getter()
{
  v1 = *v0;
  sub_1D225132C();
  MEMORY[0x1D3898D70](v1);
  return sub_1D225137C();
}

uint64_t VUStreamingGallery.Recognition.tag.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for VUStreamingGallery.Recognition(0) + 24);

  return sub_1D220E024(a1, v3);
}

uint64_t VUStreamingGallery.Recognition.match.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for VUStreamingGallery.Recognition(0);
  *a1 = *(v1 + *(result + 28));
  return result;
}

uint64_t sub_1D21F6300(uint64_t a1, uint64_t a2, const char *a3)
{
  v18 = a3;
  v3 = sub_1D22507BC();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1D225077C();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1D225078C();
  sub_1D22507CC();
  v12 = sub_1D2250D9C();
  if (sub_1D2250E4C())
  {

    sub_1D22507FC();

    if ((*(v4 + 88))(v6, v3) == *MEMORY[0x1E69E93E8])
    {
      v13 = "[Error] Interval already ended";
    }

    else
    {
      (*(v4 + 8))(v6, v3);
      v13 = "";
    }

    v14 = swift_slowAlloc();
    *v14 = 0;
    v15 = sub_1D225075C();
    _os_signpost_emit_with_name_impl(&dword_1D2171000, v11, v12, v15, v18, v13, v14, 2u);
    MEMORY[0x1D3899640](v14, -1, -1);
  }

  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_1D21F6558(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1D21C8B60(v2);
  }

  v3 = *(v2 + 2);
  v18[0] = (v2 + 32);
  v18[1] = v3;
  result = sub_1D225124C();
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = v2 + 48;
      v9 = -1;
      for (i = 1; i != v3; ++i)
      {
        v11 = *&v2[16 * i + 40];
        v12 = v9;
        v13 = v8;
        do
        {
          if (*(v13 - 1) >= v11)
          {
            break;
          }

          v14 = *v13;
          *v13 = *(v13 - 1);
          *(v13 - 1) = v11;
          *(v13 - 2) = v14;
          v13 -= 2;
        }

        while (!__CFADD__(v12++, 1));
        v8 += 16;
        --v9;
      }
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D2CE0);
      v7 = sub_1D2250B2C();
      *(v7 + 16) = v6;
    }

    else
    {
      v7 = MEMORY[0x1E69E7CC0];
    }

    v16[0] = v7 + 32;
    v16[1] = v6;
    sub_1D21FBF74(v16, v17, v18, v5);
    *(v7 + 16) = 0;
  }

  *a1 = v2;
  return result;
}

int64_t sub_1D21F66B4(uint64_t *a1, uint64_t *a2, uint64_t (*a3)(uint64_t))
{
  v6 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v6 = a3(v6);
  }

  v7 = *(v6 + 16);
  v9[0] = v6 + 32;
  v9[1] = v7;
  result = sub_1D21FADCC(v9, a2);
  *a1 = v6;
  return result;
}

uint64_t sub_1D21F6738(void **a1, uint64_t *a2)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D2490) - 8);
  v5 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v5 = sub_1D21C8B74(v5);
  }

  v6 = v5[2];
  v8[0] = v5 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
  v8[1] = v6;
  result = sub_1D21FAED0(v8, a2);
  *a1 = v5;
  return result;
}

uint64_t sub_1D21F67FC(uint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t *a3)
{
  v6 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v6 = a2(v6);
  }

  v7 = *(v6 + 16);
  v9[0] = v6 + 32;
  v9[1] = v7;
  result = sub_1D21FB020(v9, a3);
  *a1 = v6;
  return result;
}

uint64_t sub_1D21F6888(void **a1)
{
  v2 = *(type metadata accessor for VUStreamingGallery.Recognition(0) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_1D21C8BB0(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_1D21FB130(v6);
  *a1 = v3;
  return result;
}

unint64_t sub_1D21F6930(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D2490);
  v7 = MEMORY[0x1EEE9AC00](v6);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v19 - v10;
  sub_1D2174DA8(a1, &v19 - v10, &qword_1EC6D2490);

  v13 = *a3;
  if (!*(*a3 + 16))
  {
    __break(1u);
    goto LABEL_7;
  }

  result = sub_1D2196E40(v11);
  if ((v14 & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v15 = *(*(v13 + 56) + 8 * result);
  sub_1D2174DA8(a2, v9, &qword_1EC6D2490);

  v16 = *a3;
  if (!*(*a3 + 16))
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  result = sub_1D2196E40(v9);
  if (v17)
  {
    v18 = *(*(v16 + 56) + 8 * result) < v15;
    sub_1D220C574(v9, type metadata accessor for VUStreamingGallery.Label);
    sub_1D220C574(v11, type metadata accessor for VUStreamingGallery.Label);
    return v18;
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_1D21F6ADC@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  if (!*(*v1 + 16))
  {
    __break(1u);
LABEL_6:
    result = sub_1D22048CC(v3);
    v3 = result;
    v5 = *(result + 16);
    if (v5)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    goto LABEL_6;
  }

  v5 = v3[2];
  if (v5)
  {
LABEL_4:
    v6 = v5 - 1;
    v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D2490) - 8);
    v8 = v3 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v6;
    v3[2] = v6;
    *v1 = v3;
    return sub_1D21A6938(v8, a1, &qword_1EC6D2490);
  }

LABEL_7:
  __break(1u);
  return result;
}

unint64_t sub_1D21F6BD4(unint64_t result, uint64_t *a2, uint64_t *a3)
{
  v3 = *a3;
  if (!*(*a3 + 16))
  {
    __break(1u);
    goto LABEL_6;
  }

  v4 = *a2;
  result = sub_1D2176758(*result);
  if ((v5 & 1) == 0)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v6 = *(v3 + 56);
  v7 = *(*(v6 + 8 * result) + 16);
  result = sub_1D2176758(v4);
  if (v8)
  {
    return *(*(v6 + 8 * result) + 16) < v7;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_1D21F6C58(uint64_t a1, uint64_t a2)
{
  v15 = MEMORY[0x1E69E7CC0];
  v4 = a1 + 56;
  v5 = 1 << *(a1 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a1 + 56);
  v8 = (v5 + 63) >> 6;

  v10 = 0;
  v11 = MEMORY[0x1E69E7CD0];
  while (v7)
  {
LABEL_11:
    if (*(*a2 + 16) && (sub_1D2176758(*(*(a1 + 48) + ((v10 << 9) | (8 * __clz(__rbit64(v7)))))), (v14 & 1) != 0))
    {
    }

    else
    {
      v12 = v11;
    }

    v7 &= v7 - 1;
    result = sub_1D2202D5C(v12);
  }

  while (1)
  {
    v13 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v13 >= v8)
    {

      return v15;
    }

    v7 = *(v4 + 8 * v13);
    ++v10;
    if (v7)
    {
      v10 = v13;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D21F6D78(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D23C0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v27 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6D2D60);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v27 - v11;
  if (!*(a2 + 16))
  {
    return 1;
  }

  v13 = *a1;
  v14 = sub_1D2176758(v13);
  if ((v15 & 1) == 0)
  {
    return 1;
  }

  sub_1D2174DA8(*(a2 + 56) + *(v10 + 72) * v14, v12, &unk_1EC6D2D60);
  v16 = v12[*(v9 + 48)];
  v17 = sub_1D225055C();
  (*(*(v17 - 8) + 8))(v12, v17);
  if (v16)
  {
    return 1;
  }

  if (*(a3 + 16) && (v19 = sub_1D2176758(v13), (v20 & 1) != 0))
  {
    v21 = v19;
    v22 = *(a3 + 56);
    v23 = sub_1D22504FC();
    v24 = *(v23 - 8);
    (*(v24 + 16))(v8, v22 + *(v24 + 72) * v21, v23);
    v25 = 1;
    (*(v24 + 56))(v8, 0, 1, v23);
  }

  else
  {
    v26 = sub_1D22504FC();
    (*(*(v26 - 8) + 56))(v8, 1, 1, v26);
    v25 = 0;
  }

  sub_1D2176170(v8, &qword_1EC6D23C0);
  return v25;
}

uint64_t sub_1D21F7040(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D2458);
  v8 = MEMORY[0x1EEE9AC00](v63);
  v65 = (&v58 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v8);
  v64 = (&v58 - v10);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D23C0);
  v12 = MEMORY[0x1EEE9AC00](v11 - 8);
  v62 = &v58 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v58 - v14;
  v16 = sub_1D22504FC();
  v17 = *(v16 - 8);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v67 = &v58 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v66 = &v58 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6D2D60);
  v58 = *(v21 - 8);
  v59 = v21;
  v22 = MEMORY[0x1EEE9AC00](v21);
  v24 = &v58 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v26 = &v58 - v25;
  v27 = *a1;
  v60 = *a2;
  if (*(a3 + 16) && (v28 = sub_1D2176758(v27), (v29 & 1) != 0))
  {
    sub_1D2174DA8(*(a3 + 56) + *(v58 + 72) * v28, v26, &unk_1EC6D2D60);
    v30 = v26[*(v59 + 48)];
    v31 = sub_1D225055C();
    (*(*(v31 - 8) + 8))(v26, v31);
    v61 = v30 == 0;
    if (!*(a4 + 16))
    {
      goto LABEL_8;
    }
  }

  else
  {
    v61 = 0;
    if (!*(a4 + 16))
    {
      goto LABEL_8;
    }
  }

  v32 = sub_1D2176758(v27);
  if (v33)
  {
    v17[2](v15, *(a4 + 56) + v17[9] * v32, v16);
    v34 = v17[7];
    (v34)(v15, 0, 1, v16);
    v17[4](v66, v15, v16);
    goto LABEL_10;
  }

LABEL_8:
  v34 = v17[7];
  (v34)(v15, 1, 1, v16);
  sub_1D22504AC();
  if ((v17[6])(v15, 1, v16) != 1)
  {
    sub_1D2176170(v15, &qword_1EC6D23C0);
  }

LABEL_10:
  v35 = v60;
  if (*(a3 + 16) && (v36 = sub_1D2176758(v60), (v37 & 1) != 0))
  {
    sub_1D2174DA8(*(a3 + 56) + *(v58 + 72) * v36, v24, &unk_1EC6D2D60);
    v38 = v24[*(v59 + 48)];
    v39 = sub_1D225055C();
    (*(*(v39 - 8) + 8))(v24, v39);
    v59 = v38 == 0;
  }

  else
  {
    v59 = 0;
  }

  v40 = v67;
  if (*(a4 + 16) && (v41 = sub_1D2176758(v35), (v42 & 1) != 0))
  {
    v43 = *(a4 + 56) + v17[9] * v41;
    v44 = v62;
    v17[2](v62, v43, v16);
    (v34)(v44, 0, 1, v16);
    v17[4](v40, v44, v16);
    v45 = v17;
  }

  else
  {
    v46 = v62;
    (v34)(v62, 1, 1, v16);
    sub_1D22504AC();
    v45 = v17;
    if ((v17[6])(v46, 1, v16) != 1)
    {
      sub_1D2176170(v46, &qword_1EC6D23C0);
    }
  }

  v47 = v63;
  v48 = v64;
  v49 = v61;
  *v64 = v61;
  v50 = *(v47 + 48);
  v62 = v45;
  v51 = *(v45 + 2);
  v51(v48 + v50, v66, v16);
  v52 = v65;
  v53 = v16;
  v54 = v59;
  *v65 = v59;
  v51(v52 + *(v47 + 48), v67, v53);
  if (v49 == v54)
  {
    sub_1D220E134(&unk_1EC6D25F0, MEMORY[0x1E6969530]);
    v55 = sub_1D22508FC();
  }

  else
  {
    v55 = v49 < v54;
  }

  sub_1D2176170(v52, &qword_1EC6D2458);
  sub_1D2176170(v48, &qword_1EC6D2458);
  v56 = *(v62 + 1);
  v56(v67, v53);
  v56(v66, v53);
  return v55 & 1;
}

uint64_t sub_1D21F7730(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v38 = a3;
  v5 = sub_1D225055C();
  v36 = *(v5 - 8);
  v37 = v5;
  v6 = MEMORY[0x1EEE9AC00](v5);
  v35 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v34 = &v33 - v8;
  v9 = type metadata accessor for VUStreamingGallery.Label(0);
  v10 = MEMORY[0x1EEE9AC00](v9);
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = (&v33 - v13);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D2460);
  v16 = v15 - 8;
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v33 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D2C20);
  v20 = MEMORY[0x1EEE9AC00](v19 - 8);
  v22 = &v33 - v21;
  *(&v33 - v21) = *a1;
  v23 = *(v20 + 56);
  sub_1D220C5D4(a2, &v33 + v23 - v21, type metadata accessor for VUStreamingGallery.Label);
  v24 = *(v16 + 56);
  sub_1D220C5D4(&v22[v23], v18, type metadata accessor for VUStreamingGallery.Label);
  sub_1D220C5D4(v38, &v18[v24], type metadata accessor for VUStreamingGallery.Label);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_1D2176170(v22, &qword_1EC6D2C20);
    sub_1D220C5D4(v18, v14, type metadata accessor for VUStreamingGallery.Label);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      v30 = *v14 == *&v18[v24];
      goto LABEL_6;
    }

LABEL_8:
    sub_1D2176170(v18, &qword_1EC6D2460);
    v30 = 0;
    return v30 & 1;
  }

  sub_1D220C5D4(v18, v12, type metadata accessor for VUStreamingGallery.Label);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_1D2176170(v22, &qword_1EC6D2C20);
    (*(v36 + 8))(v12, v37);
    goto LABEL_8;
  }

  v26 = v36;
  v25 = v37;
  v27 = *(v36 + 32);
  v28 = v34;
  v27(v34, v12, v37);
  v29 = v35;
  v27(v35, &v18[v24], v25);
  v30 = sub_1D225053C();
  v31 = *(v26 + 8);
  v31(v29, v25);
  v31(v28, v25);
  sub_1D2176170(v22, &qword_1EC6D2C20);
LABEL_6:
  sub_1D220C574(v18, type metadata accessor for VUStreamingGallery.Label);
  return v30 & 1;
}

uint64_t VUStreamingGallery.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtC19VisualUnderstanding18VUStreamingGallery_logger;
  v2 = sub_1D225082C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC19VisualUnderstanding18VUStreamingGallery_signposter;
  v4 = sub_1D22507AC();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return swift_deallocClassInstance();
}

uint64_t sub_1D21F7C2C()
{
  v1 = v0;
  v2 = sub_1D225055C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for VUStreamingGallery.Label(0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = (&v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D220C5D4(v1, v8, type metadata accessor for VUStreamingGallery.Label);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v3 + 32))(v5, v8, v2);
    sub_1D220E134(&qword_1EDC87228, MEMORY[0x1E69695A8]);
    sub_1D22508DC();
    (*(v3 + 8))(v5, v2);
  }

  else
  {
    MEMORY[0x1D3898D70](*v8);
  }

  type metadata accessor for VUStreamingGallery.RecognitionKey(0);
  sub_1D225134C();
  return sub_1D225134C();
}

uint64_t sub_1D21F7E18()
{
  sub_1D225132C();
  sub_1D21F7C2C();
  return sub_1D225137C();
}

uint64_t sub_1D21F7E5C()
{
  sub_1D225132C();
  sub_1D21F7C2C();
  return sub_1D225137C();
}

void *sub_1D21F7E9C(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D28E8);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 29;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 2);
  return result;
}

void *sub_1D21F7F84(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D2510);
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

void *sub_1D21F8034(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  if (a2 <= a1)
  {
    v3 = a1;
  }

  else
  {
    v3 = a2;
  }

  if (!v3)
  {
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  v5 = swift_allocObject();
  v6 = _swift_stdlib_malloc_size(v5);
  result = v5;
  v9 = v6 - 32;
  v8 = v6 < 32;
  v10 = v6 - 25;
  if (!v8)
  {
    v10 = v9;
  }

  v5[2] = a1;
  v5[3] = 2 * (v10 >> 3);
  return result;
}

size_t sub_1D21F80B0(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D2488);
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D2490) - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v7);
  if (v5)
  {
    if (result - v6 != 0x8000000000000000 || v5 != -1)
    {
      v7[2] = a1;
      v7[3] = 2 * ((result - v6) / v5);
      return v7;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

size_t sub_1D21F81B8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(void))
{
  if (a2 <= a1)
  {
    v5 = a1;
  }

  else
  {
    v5 = a2;
  }

  if (!v5)
  {
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  v8 = *(a5(0) - 8);
  v9 = *(v8 + 72);
  v10 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v11 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v11);
  if (v9)
  {
    if (result - v10 != 0x8000000000000000 || v9 != -1)
    {
      v11[2] = a1;
      v11[3] = 2 * ((result - v10) / v9);
      return v11;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_1D21F82C8(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  if (a2 <= a1)
  {
    v3 = a1;
  }

  else
  {
    v3 = a2;
  }

  if (!v3)
  {
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  v5 = swift_allocObject();
  v6 = _swift_stdlib_malloc_size(v5);
  result = v5;
  v9 = v6 - 32;
  v8 = v6 < 32;
  v10 = v6 - 17;
  if (!v8)
  {
    v10 = v9;
  }

  v5[2] = a1;
  v5[3] = 2 * (v10 >> 4);
  return result;
}

void sub_1D21F8344(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
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
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D24C0);
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

void *sub_1D21F8414(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v3 = sub_1D21F8034(*(a1 + 16), 0, &qword_1EC6D24C0);
  v4 = sub_1D21F8ABC(&v6, v3 + 4, v1, a1);

  sub_1D217CF78();
  if (v4 != v1)
  {
    __break(1u);
    return MEMORY[0x1E69E7CC0];
  }

  return v3;
}

void *sub_1D21F84E0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v3 = sub_1D21765CC(*(a1 + 16), 0);
  v4 = sub_1D21F90B8(&v6, v3 + 32, v1, a1);

  sub_1D217CF78();
  if (v4 != v1)
  {
    __break(1u);
    return MEMORY[0x1E69E7CC0];
  }

  return v3;
}

void *sub_1D21F859C(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v4 = sub_1D21F82C8(*(a1 + 16), 0, a2);
  v5 = sub_1D21F97D4(&v7, v4 + 4, v2, a1);

  sub_1D217CF78();
  if (v5 != v2)
  {
    __break(1u);
    return MEMORY[0x1E69E7CC0];
  }

  return v4;
}

size_t sub_1D21F8660(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v3 = sub_1D21F80B0(*(a1 + 16), 0);
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D2490) - 8);
  v5 = sub_1D21F9518(&v7, v3 + ((*(v4 + 80) + 32) & ~*(v4 + 80)), v1, a1);

  sub_1D217CF78();
  if (v5 != v1)
  {
    __break(1u);
    return MEMORY[0x1E69E7CC0];
  }

  return v3;
}

void *sub_1D21F8760(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v3 = sub_1D21F8034(*(a1 + 16), 0, &qword_1EC6D24C0);
  v4 = sub_1D21F9DF4(&v6, v3 + 4, v1, a1);

  sub_1D217CF78();
  if (v4 != v1)
  {
    __break(1u);
    return MEMORY[0x1E69E7CC0];
  }

  return v3;
}

uint64_t sub_1D21F882C(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = sub_1D225055C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for VUStreamingGallery.Label(0);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = (&v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D225132C();
  sub_1D220C5D4(a1, v13, type metadata accessor for VUStreamingGallery.Label);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v7 + 32))(v9, v13, v6);
    sub_1D220E134(&qword_1EDC87228, MEMORY[0x1E69695A8]);
    sub_1D22508DC();
    (*(v7 + 8))(v9, v6);
  }

  else
  {
    MEMORY[0x1D3898D70](*v13);
  }

  sub_1D225137C();
  v14 = sub_1D2250EEC();
  *(a3 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v14;
  result = sub_1D220C50C(a1, a3[6] + *(v11 + 72) * v14, type metadata accessor for VUStreamingGallery.Label);
  *(a3[7] + 8 * v14) = a2;
  ++a3[2];
  return result;
}

void *sub_1D21F8ABC(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 + 56;
  v5 = -1;
  v6 = -1 << *(a4 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & *(a4 + 56);
  if (!a2)
  {
LABEL_17:
    v9 = 0;
    a3 = 0;
LABEL_23:
    *result = a4;
    result[1] = v4;
    result[2] = ~v6;
    result[3] = v9;
    result[4] = v7;
    return a3;
  }

  if (!a3)
  {
    v9 = 0;
    goto LABEL_23;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v9 = 0;
    v10 = (63 - v6) >> 6;
    v11 = 1;
    while (v7)
    {
LABEL_13:
      v14 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      *a2 = *(*(a4 + 48) + ((v9 << 9) | (8 * v14)));
      if (v11 == a3)
      {
        goto LABEL_23;
      }

      ++a2;
      v8 = v11;
      if (__OFADD__(v11++, 1))
      {
        __break(1u);
        goto LABEL_17;
      }
    }

    v12 = v9;
    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        goto LABEL_25;
      }

      if (v13 >= v10)
      {
        break;
      }

      v7 = *(v4 + 8 * v13);
      ++v12;
      if (v7)
      {
        v9 = v13;
        goto LABEL_13;
      }
    }

    v7 = 0;
    if (v10 <= (v9 + 1))
    {
      v16 = v9 + 1;
    }

    else
    {
      v16 = (63 - v6) >> 6;
    }

    v9 = v16 - 1;
    a3 = v8;
    goto LABEL_23;
  }

LABEL_25:
  __break(1u);
  return result;
}

uint64_t sub_1D21F8BBC(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v40 = sub_1D225055C();
  v42 = *(v40 - 8);
  v8 = MEMORY[0x1EEE9AC00](v40);
  v41 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v8);
  v39 = &v33 - v11;
  v12 = a4 + 64;
  v13 = -1 << *(a4 + 32);
  if (-v13 < 64)
  {
    v14 = ~(-1 << -v13);
  }

  else
  {
    v14 = -1;
  }

  v15 = v14 & *(a4 + 64);
  if (!a2)
  {
LABEL_19:
    v31 = 0;
    a3 = 0;
LABEL_25:
    *a1 = a4;
    *(a1 + 8) = v12;
    *(a1 + 16) = ~v13;
    *(a1 + 24) = v31;
    *(a1 + 32) = v15;
    return a3;
  }

  if (!a3)
  {
    v31 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v33 = -1 << *(a4 + 32);
    v34 = a1;
    result = 0;
    v16 = 0;
    v17 = (63 - v13) >> 6;
    v35 = v42 + 32;
    v36 = v42 + 16;
    a1 = 1;
    v37 = a4 + 64;
    v38 = a3;
    v18 = v39;
    while (v15)
    {
      v44 = a2;
LABEL_15:
      v21 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
      v43 = v16;
      v22 = a4;
      v23 = *(a4 + 48);
      v24 = v41;
      v25 = v42;
      v26 = *(v42 + 72);
      v27 = v40;
      (*(v42 + 16))(v41, v23 + v26 * (v21 | (v16 << 6)), v40);
      v28 = *(v25 + 32);
      v28(v18, v24, v27);
      v29 = v44;
      v28(v44, v18, v27);
      a3 = v38;
      if (a1 == v38)
      {
        v13 = v33;
        a1 = v34;
        a4 = v22;
        v31 = v43;
        v12 = v37;
        goto LABEL_25;
      }

      a2 = &v29[v26];
      result = a1;
      v30 = __OFADD__(a1++, 1);
      a4 = v22;
      v16 = v43;
      v12 = v37;
      if (v30)
      {
        __break(1u);
        goto LABEL_19;
      }
    }

    v19 = v16;
    while (1)
    {
      v20 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v20 >= v17)
      {
        break;
      }

      v15 = *(v12 + 8 * v20);
      ++v19;
      if (v15)
      {
        v44 = a2;
        v16 = v20;
        goto LABEL_15;
      }
    }

    v15 = 0;
    if (v17 <= v16 + 1)
    {
      v32 = v16 + 1;
    }

    else
    {
      v32 = v17;
    }

    v31 = v32 - 1;
    a3 = result;
    v13 = v33;
    a1 = v34;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

void *sub_1D21F8E60(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 + 64;
  v5 = -1;
  v6 = -1 << *(a4 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & *(a4 + 64);
  if (!a2)
  {
LABEL_17:
    v9 = 0;
    a3 = 0;
LABEL_23:
    *result = a4;
    result[1] = v4;
    result[2] = ~v6;
    result[3] = v9;
    result[4] = v7;
    return a3;
  }

  if (!a3)
  {
    v9 = 0;
    goto LABEL_23;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v9 = 0;
    v10 = (63 - v6) >> 6;
    v11 = 1;
    while (v7)
    {
LABEL_13:
      v14 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      *a2 = *(*(a4 + 48) + ((v9 << 9) | (8 * v14)));
      if (v11 == a3)
      {
        goto LABEL_23;
      }

      ++a2;
      v8 = v11;
      if (__OFADD__(v11++, 1))
      {
        __break(1u);
        goto LABEL_17;
      }
    }

    v12 = v9;
    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        goto LABEL_25;
      }

      if (v13 >= v10)
      {
        break;
      }

      v7 = *(v4 + 8 * v13);
      ++v12;
      if (v7)
      {
        v9 = v13;
        goto LABEL_13;
      }
    }

    v7 = 0;
    if (v10 <= (v9 + 1))
    {
      v16 = v9 + 1;
    }

    else
    {
      v16 = (63 - v6) >> 6;
    }

    v9 = v16 - 1;
    a3 = v8;
    goto LABEL_23;
  }

LABEL_25:
  __break(1u);
  return result;
}

void *sub_1D21F8F60(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 56;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = (*(a4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
      v18 = v17[1];
      v9 &= v9 - 1;
      *v11 = *v17;
      v11[1] = v18;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 2;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

void *sub_1D21F90B8(void *result, _BYTE *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 + 64;
  v5 = -1;
  v6 = -1 << *(a4 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & *(a4 + 64);
  if (!a2)
  {
LABEL_17:
    v9 = 0;
    a3 = 0;
LABEL_23:
    *result = a4;
    result[1] = v4;
    result[2] = ~v6;
    result[3] = v9;
    result[4] = v7;
    return a3;
  }

  if (!a3)
  {
    v9 = 0;
    goto LABEL_23;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v9 = 0;
    v10 = (63 - v6) >> 6;
    v11 = 1;
    while (v7)
    {
LABEL_13:
      v14 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      *a2 = *(*(a4 + 48) + (v14 | (v9 << 6)));
      if (v11 == a3)
      {
        goto LABEL_23;
      }

      ++a2;
      v8 = v11;
      if (__OFADD__(v11++, 1))
      {
        __break(1u);
        goto LABEL_17;
      }
    }

    v12 = v9;
    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        goto LABEL_25;
      }

      if (v13 >= v10)
      {
        break;
      }

      v7 = *(v4 + 8 * v13);
      ++v12;
      if (v7)
      {
        v9 = v13;
        goto LABEL_13;
      }
    }

    v7 = 0;
    if (v10 <= (v9 + 1))
    {
      v16 = v9 + 1;
    }

    else
    {
      v16 = (63 - v6) >> 6;
    }

    v9 = v16 - 1;
    a3 = v8;
    goto LABEL_23;
  }

LABEL_25:
  __break(1u);
  return result;
}

void *sub_1D21F91B8(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 + 64;
  v5 = -1;
  v6 = -1 << *(a4 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & *(a4 + 64);
  if (!a2)
  {
LABEL_17:
    v9 = 0;
    a3 = 0;
LABEL_23:
    *result = a4;
    result[1] = v4;
    result[2] = ~v6;
    result[3] = v9;
    result[4] = v7;
    return a3;
  }

  if (!a3)
  {
    v9 = 0;
    goto LABEL_23;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v9 = 0;
    v10 = (63 - v6) >> 6;
    v11 = 1;
    while (v7)
    {
LABEL_13:
      v14 = __clz(__rbit64(v7)) | (v9 << 6);
      v15 = *(*(a4 + 56) + 4 * v14);
      v7 &= v7 - 1;
      *a2 = *(*(a4 + 48) + 8 * v14);
      *(a2 + 8) = v15;
      if (v11 == a3)
      {
        goto LABEL_23;
      }

      a2 += 16;
      v8 = v11;
      if (__OFADD__(v11++, 1))
      {
        __break(1u);
        goto LABEL_17;
      }
    }

    v12 = v9;
    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        goto LABEL_25;
      }

      if (v13 >= v10)
      {
        break;
      }

      v7 = *(v4 + 8 * v13);
      ++v12;
      if (v7)
      {
        v9 = v13;
        goto LABEL_13;
      }
    }

    v7 = 0;
    if (v10 <= (v9 + 1))
    {
      v17 = v9 + 1;
    }

    else
    {
      v17 = (63 - v6) >> 6;
    }

    v9 = v17 - 1;
    a3 = v8;
    goto LABEL_23;
  }

LABEL_25:
  __break(1u);
  return result;
}

void *sub_1D21F92BC(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      *v11 = *(*(a4 + 56) + ((v12 << 9) | (8 * v17)));
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      ++v11;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v19 = v12 + 1;
    }

    else
    {
      v19 = (63 - v7) >> 6;
    }

    v12 = v19 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

void *sub_1D21F9410(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 + 64;
  v5 = -1;
  v6 = -1 << *(a4 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & *(a4 + 64);
  if (!a2)
  {
LABEL_17:
    v9 = 0;
    a3 = 0;
LABEL_23:
    *result = a4;
    result[1] = v4;
    result[2] = ~v6;
    result[3] = v9;
    result[4] = v7;
    return a3;
  }

  if (!a3)
  {
    v9 = 0;
    goto LABEL_23;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v9 = 0;
    v10 = (63 - v6) >> 6;
    v11 = 1;
    while (v7)
    {
LABEL_13:
      v14 = (v9 << 9) | (8 * __clz(__rbit64(v7)));
      v15 = *(*(a4 + 56) + v14);
      v7 &= v7 - 1;
      *a2 = *(*(a4 + 48) + v14);
      a2[1] = v15;
      if (v11 == a3)
      {
        goto LABEL_23;
      }

      a2 += 2;
      v8 = v11;
      if (__OFADD__(v11++, 1))
      {
        __break(1u);
        goto LABEL_17;
      }
    }

    v12 = v9;
    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        goto LABEL_25;
      }

      if (v13 >= v10)
      {
        break;
      }

      v7 = *(v4 + 8 * v13);
      ++v12;
      if (v7)
      {
        v9 = v13;
        goto LABEL_13;
      }
    }

    v7 = 0;
    if (v10 <= (v9 + 1))
    {
      v17 = v9 + 1;
    }

    else
    {
      v17 = (63 - v6) >> 6;
    }

    v9 = v17 - 1;
    a3 = v8;
    goto LABEL_23;
  }

LABEL_25:
  __break(1u);
  return result;
}

uint64_t sub_1D21F9518(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D2490);
  v36 = *(v39 - 8);
  v8 = MEMORY[0x1EEE9AC00](v39);
  v38 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v8);
  v37 = (&v33 - v11);
  v40 = a4;
  v14 = *(a4 + 64);
  v13 = a4 + 64;
  v12 = v14;
  v15 = -1 << *(v13 - 32);
  if (-v15 < 64)
  {
    v16 = ~(-1 << -v15);
  }

  else
  {
    v16 = -1;
  }

  v17 = v16 & v12;
  if (!a2)
  {
LABEL_18:
    v24 = 0;
    a3 = 0;
LABEL_25:
    *a1 = v40;
    a1[1] = v13;
    a1[2] = ~v15;
    a1[3] = v24;
    a1[4] = v17;
    return a3;
  }

  if (!a3)
  {
    v24 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v33 = -1 << *(v13 - 32);
    v34 = a1;
    result = 0;
    v18 = 0;
    v19 = (63 - v15) >> 6;
    v20 = 1;
    v35 = a3;
    while (v17)
    {
LABEL_14:
      v23 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
      v24 = v18;
      v25 = v23 | (v18 << 6);
      v26 = v40;
      v27 = *(v40 + 48);
      v28 = v27 + *(*(type metadata accessor for VUStreamingGallery.Label(0) - 8) + 72) * v25;
      v29 = v38;
      sub_1D220C5D4(v28, v38, type metadata accessor for VUStreamingGallery.Label);
      *(v29 + *(v39 + 48)) = *(*(v26 + 56) + 8 * v25);
      v30 = v29;
      a1 = v37;
      sub_1D21A6938(v30, v37, &qword_1EC6D2490);
      sub_1D21A6938(a1, a2, &qword_1EC6D2490);
      a3 = v35;
      if (v20 == v35)
      {

        goto LABEL_23;
      }

      a2 += *(v36 + 72);

      result = v20;
      v31 = __OFADD__(v20++, 1);
      v18 = v24;
      if (v31)
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v21 = v18;
    while (1)
    {
      v22 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v22 >= v19)
      {
        break;
      }

      v17 = *(v13 + 8 * v22);
      ++v21;
      if (v17)
      {
        v18 = v22;
        goto LABEL_14;
      }
    }

    v17 = 0;
    if (v19 <= v18 + 1)
    {
      v32 = v18 + 1;
    }

    else
    {
      v32 = v19;
    }

    v24 = v32 - 1;
    a3 = result;
LABEL_23:
    v15 = v33;
    a1 = v34;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

void *sub_1D21F97D4(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = (v12 << 9) | (8 * __clz(__rbit64(v9)));
      v18 = *(*(a4 + 56) + v17);
      v9 &= v9 - 1;
      *v11 = *(*(a4 + 48) + v17);
      v11[1] = v18;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 2;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_1D21F992C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for VUStreamingGallery.Recognition(0);
  v33 = *(v8 - 8);
  v9 = MEMORY[0x1EEE9AC00](v8 - 8);
  v32 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v9);
  v31 = &v28 - v12;
  v13 = a4 + 64;
  v14 = -1 << *(a4 + 32);
  if (-v14 < 64)
  {
    v15 = ~(-1 << -v14);
  }

  else
  {
    v15 = -1;
  }

  v16 = v15 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v17 = 0;
    a3 = 0;
LABEL_25:
    *a1 = a4;
    a1[1] = v13;
    a1[2] = ~v14;
    a1[3] = v17;
    a1[4] = v16;
    return a3;
  }

  if (!a3)
  {
    v17 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v29 = a1;
    v30 = a3;
    result = 0;
    v17 = 0;
    v28 = v14;
    v18 = (63 - v14) >> 6;
    v19 = 1;
    while (v16)
    {
LABEL_14:
      v22 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
      v23 = v32;
      a1 = *(v33 + 72);
      sub_1D220C5D4(*(a4 + 56) + a1 * (v22 | (v17 << 6)), v32, type metadata accessor for VUStreamingGallery.Recognition);
      v24 = v23;
      v25 = v31;
      sub_1D220C50C(v24, v31, type metadata accessor for VUStreamingGallery.Recognition);
      sub_1D220C50C(v25, a2, type metadata accessor for VUStreamingGallery.Recognition);
      if (v19 == v30)
      {
        a1 = v29;
        a3 = v30;
        goto LABEL_23;
      }

      a2 += a1;
      result = v19;
      if (__OFADD__(v19++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v20 = v17;
    while (1)
    {
      v21 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v21 >= v18)
      {
        break;
      }

      v16 = *(v13 + 8 * v21);
      ++v20;
      if (v16)
      {
        v17 = v21;
        goto LABEL_14;
      }
    }

    v16 = 0;
    if (v18 <= v17 + 1)
    {
      v27 = v17 + 1;
    }

    else
    {
      v27 = v18;
    }

    v17 = v27 - 1;
    a3 = result;
    a1 = v29;
LABEL_23:
    v14 = v28;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

uint64_t sub_1D21F9B90(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for VUStreamingGallery.Label(0);
  v33 = *(v8 - 8);
  v9 = MEMORY[0x1EEE9AC00](v8 - 8);
  v32 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v9);
  v31 = &v28 - v12;
  v13 = a4 + 56;
  v14 = -1 << *(a4 + 32);
  if (-v14 < 64)
  {
    v15 = ~(-1 << -v14);
  }

  else
  {
    v15 = -1;
  }

  v16 = v15 & *(a4 + 56);
  if (!a2)
  {
LABEL_18:
    v17 = 0;
    a3 = 0;
LABEL_25:
    *a1 = a4;
    a1[1] = v13;
    a1[2] = ~v14;
    a1[3] = v17;
    a1[4] = v16;
    return a3;
  }

  if (!a3)
  {
    v17 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v29 = a1;
    v30 = a3;
    result = 0;
    v17 = 0;
    v28 = v14;
    v18 = (63 - v14) >> 6;
    v19 = 1;
    while (v16)
    {
LABEL_14:
      v22 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
      v23 = v32;
      a1 = *(v33 + 72);
      sub_1D220C5D4(*(a4 + 48) + a1 * (v22 | (v17 << 6)), v32, type metadata accessor for VUStreamingGallery.Label);
      v24 = v23;
      v25 = v31;
      sub_1D220C50C(v24, v31, type metadata accessor for VUStreamingGallery.Label);
      sub_1D220C50C(v25, a2, type metadata accessor for VUStreamingGallery.Label);
      if (v19 == v30)
      {
        a1 = v29;
        a3 = v30;
        goto LABEL_23;
      }

      a2 += a1;
      result = v19;
      if (__OFADD__(v19++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v20 = v17;
    while (1)
    {
      v21 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v21 >= v18)
      {
        break;
      }

      v16 = *(v13 + 8 * v21);
      ++v20;
      if (v16)
      {
        v17 = v21;
        goto LABEL_14;
      }
    }

    v16 = 0;
    if (v18 <= v17 + 1)
    {
      v27 = v17 + 1;
    }

    else
    {
      v27 = v18;
    }

    v17 = v27 - 1;
    a3 = result;
    a1 = v29;
LABEL_23:
    v14 = v28;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

void *sub_1D21F9DF4(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 + 64;
  v5 = -1;
  v6 = -1 << *(a4 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & *(a4 + 64);
  if (!a2)
  {
LABEL_17:
    v9 = 0;
    a3 = 0;
LABEL_23:
    *result = a4;
    result[1] = v4;
    result[2] = ~v6;
    result[3] = v9;
    result[4] = v7;
    return a3;
  }

  if (!a3)
  {
    v9 = 0;
    goto LABEL_23;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v9 = 0;
    v10 = (63 - v6) >> 6;
    v11 = 1;
    while (v7)
    {
LABEL_13:
      v14 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      *a2 = *(*(a4 + 56) + ((v9 << 9) | (8 * v14)));
      if (v11 == a3)
      {
        goto LABEL_23;
      }

      ++a2;
      v8 = v11;
      if (__OFADD__(v11++, 1))
      {
        __break(1u);
        goto LABEL_17;
      }
    }

    v12 = v9;
    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        goto LABEL_25;
      }

      if (v13 >= v10)
      {
        break;
      }

      v7 = *(v4 + 8 * v13);
      ++v12;
      if (v7)
      {
        v9 = v13;
        goto LABEL_13;
      }
    }

    v7 = 0;
    if (v10 <= (v9 + 1))
    {
      v16 = v9 + 1;
    }

    else
    {
      v16 = (63 - v6) >> 6;
    }

    v9 = v16 - 1;
    a3 = v8;
    goto LABEL_23;
  }

LABEL_25:
  __break(1u);
  return result;
}

void *sub_1D21F9EF4(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 + 56;
  v5 = -1;
  v6 = -1 << *(a4 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & *(a4 + 56);
  if (!a2)
  {
LABEL_17:
    v9 = 0;
    a3 = 0;
LABEL_23:
    *result = a4;
    result[1] = v4;
    result[2] = ~v6;
    result[3] = v9;
    result[4] = v7;
    return a3;
  }

  if (!a3)
  {
    v9 = 0;
    goto LABEL_23;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v9 = 0;
    v10 = (63 - v6) >> 6;
    v11 = 1;
    while (v7)
    {
LABEL_13:
      v14 = *(a4 + 48) + ((v9 << 10) | (16 * __clz(__rbit64(v7))));
      v15 = *v14;
      LOBYTE(v14) = *(v14 + 8);
      v7 &= v7 - 1;
      *a2 = v15;
      *(a2 + 8) = v14;
      if (v11 == a3)
      {
        goto LABEL_23;
      }

      a2 += 16;
      v8 = v11;
      if (__OFADD__(v11++, 1))
      {
        __break(1u);
        goto LABEL_17;
      }
    }

    v12 = v9;
    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        goto LABEL_25;
      }

      if (v13 >= v10)
      {
        break;
      }

      v7 = *(v4 + 8 * v13);
      ++v12;
      if (v7)
      {
        v9 = v13;
        goto LABEL_13;
      }
    }

    v7 = 0;
    if (v10 <= (v9 + 1))
    {
      v17 = v9 + 1;
    }

    else
    {
      v17 = (63 - v6) >> 6;
    }

    v9 = v17 - 1;
    a3 = v8;
    goto LABEL_23;
  }

LABEL_25:
  __break(1u);
  return result;
}

uint64_t sub_1D21FA000(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v40 = sub_1D225055C();
  v42 = *(v40 - 8);
  v8 = MEMORY[0x1EEE9AC00](v40);
  v41 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v8);
  v39 = &v33 - v11;
  v12 = a4 + 56;
  v13 = -1 << *(a4 + 32);
  if (-v13 < 64)
  {
    v14 = ~(-1 << -v13);
  }

  else
  {
    v14 = -1;
  }

  v15 = v14 & *(a4 + 56);
  if (!a2)
  {
LABEL_19:
    v31 = 0;
    a3 = 0;
LABEL_25:
    *a1 = a4;
    *(a1 + 8) = v12;
    *(a1 + 16) = ~v13;
    *(a1 + 24) = v31;
    *(a1 + 32) = v15;
    return a3;
  }

  if (!a3)
  {
    v31 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v33 = -1 << *(a4 + 32);
    v34 = a1;
    result = 0;
    v16 = 0;
    v17 = (63 - v13) >> 6;
    v35 = v42 + 32;
    v36 = v42 + 16;
    a1 = 1;
    v37 = a4 + 56;
    v38 = a3;
    v18 = v39;
    while (v15)
    {
      v44 = a2;
LABEL_15:
      v21 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
      v43 = v16;
      v22 = a4;
      v23 = *(a4 + 48);
      v24 = v41;
      v25 = v42;
      v26 = *(v42 + 72);
      v27 = v40;
      (*(v42 + 16))(v41, v23 + v26 * (v21 | (v16 << 6)), v40);
      v28 = *(v25 + 32);
      v28(v18, v24, v27);
      v29 = v44;
      v28(v44, v18, v27);
      a3 = v38;
      if (a1 == v38)
      {
        v13 = v33;
        a1 = v34;
        a4 = v22;
        v31 = v43;
        v12 = v37;
        goto LABEL_25;
      }

      a2 = &v29[v26];
      result = a1;
      v30 = __OFADD__(a1++, 1);
      a4 = v22;
      v16 = v43;
      v12 = v37;
      if (v30)
      {
        __break(1u);
        goto LABEL_19;
      }
    }

    v19 = v16;
    while (1)
    {
      v20 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v20 >= v17)
      {
        break;
      }

      v15 = *(v12 + 8 * v20);
      ++v19;
      if (v15)
      {
        v44 = a2;
        v16 = v20;
        goto LABEL_15;
      }
    }

    v15 = 0;
    if (v17 <= v16 + 1)
    {
      v32 = v16 + 1;
    }

    else
    {
      v32 = v17;
    }

    v31 = v32 - 1;
    a3 = result;
    v13 = v33;
    a1 = v34;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

void *sub_1D21FA2A4(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = (*(a4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
      v18 = v17[1];
      v9 &= v9 - 1;
      *v11 = *v17;
      v11[1] = v18;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 2;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_1D21FA3FC(uint64_t a1)
{
  v2 = v1;
  v3 = sub_1D2176758(a1);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *v1;
  v11 = *v2;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_1D21B7130();
    v7 = v11;
  }

  v8 = v5;
  v9 = *(*(v7 + 56) + 8 * v5);
  sub_1D2201080(v8, v7);
  *v2 = v7;
  return v9;
}

double sub_1D21FA484@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = v3;
  v6 = sub_1D2196C7C(a1, a2);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v12 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1D21B9334();
      v10 = v12;
    }

    sub_1D21A6450((*(v10 + 56) + 32 * v8), a3);
    sub_1D220278C(v8, v10);
    *v4 = v10;
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

uint64_t (*sub_1D21FA528(uint64_t *a1, uint64_t a2))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x50uLL);
  }

  v5 = v4;
  *a1 = v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5[8] = sub_1D2200F90(v5);
  v5[9] = sub_1D22007CC(v5 + 4, a2, isUniquelyReferenced_nonNull_native);
  return sub_1D21FA5CC;
}

uint64_t (*sub_1D21FA5D0(uint64_t *a1, uint64_t a2))()
{
  v4 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x58uLL);
  }

  v6 = v5;
  *a1 = v5;
  v7 = *(*(type metadata accessor for VUStreamingGallery.Label(0) - 8) + 64);
  if (v4)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(v7);
  }

  v9 = v8;
  v6[8] = v8;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_1D220C5D4(a2, v9, type metadata accessor for VUStreamingGallery.Label);
  v6[9] = sub_1D2200FB8(v6);
  v6[10] = sub_1D220092C(v6 + 4, v9, isUniquelyReferenced_nonNull_native);
  return sub_1D21FA6CC;
}

uint64_t (*sub_1D21FA6D0(uint64_t *a1, uint64_t a2))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x50uLL);
  }

  v5 = v4;
  *a1 = v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5[8] = sub_1D2200F90(v5);
  v5[9] = sub_1D2200AF0(v5 + 4, a2, isUniquelyReferenced_nonNull_native);
  return sub_1D220F1F8;
}

void sub_1D21FA774(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 64);
  (*(*a1 + 72))();
  v2(v1, 0);

  free(v1);
}

uint64_t (*sub_1D21FA7D4(uint64_t *a1, uint64_t a2))()
{
  v4 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x58uLL);
  }

  v6 = v5;
  *a1 = v5;
  v7 = *(*(type metadata accessor for VUStreamingGallery.Label(0) - 8) + 64);
  if (v4)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(v7);
  }

  v9 = v8;
  v6[8] = v8;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_1D220C5D4(a2, v9, type metadata accessor for VUStreamingGallery.Label);
  v6[9] = sub_1D2200F90(v6);
  v6[10] = sub_1D2200CD4(v6 + 4, v9, isUniquelyReferenced_nonNull_native);
  return sub_1D220F1FC;
}

void sub_1D21FA8D0(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 72);
  v3 = *(*a1 + 64);
  (*(*a1 + 80))();
  sub_1D220C574(v3, type metadata accessor for VUStreamingGallery.Label);
  v2(v1, 0);
  free(v3);

  free(v1);
}

uint64_t sub_1D21FA960(uint64_t a1, uint64_t a2, char a3)
{
  v6 = a1;
  v14[1] = *MEMORY[0x1E69E9840];
  v7 = *(a1 + 32);
  v8 = ((1 << v7) + 63) >> 6;
  if ((v7 & 0x3Fu) <= 0xD)
  {
    goto LABEL_2;
  }

  if (swift_stdlib_isStackAllocationSafe())
  {

LABEL_2:
    MEMORY[0x1EEE9AC00](a1);
    v10 = v14 - ((v9 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v10, v9);
    result = sub_1D21FF28C(v10, v8, v6, a2, a3 & 1);
    if (v3)
    {
      return swift_willThrow();
    }

    return result;
  }

  v12 = swift_slowAlloc();
  v13 = sub_1D21FF9D0(v12, v8, v6, a2, a3 & 1);
  result = MEMORY[0x1D3899640](v12, -1, -1);
  if (!v3)
  {
    return v13;
  }

  return result;
}

uint64_t sub_1D21FAAE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  v13[1] = *MEMORY[0x1E69E9840];
  v6 = *(a3 + 32);
  v7 = ((1 << v6) + 63) >> 6;
  if ((v6 & 0x3Fu) <= 0xD)
  {
    goto LABEL_2;
  }

  if (swift_stdlib_isStackAllocationSafe())
  {

LABEL_2:
    MEMORY[0x1EEE9AC00](a1);
    v9 = v13 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v9, v8);
    result = sub_1D21FF560(v9, v7, a3, v5);
    if (v3)
    {
      return swift_willThrow();
    }

    return result;
  }

  v11 = swift_slowAlloc();
  v12 = sub_1D21FFAFC(v11, v7, a3, v5);
  result = MEMORY[0x1D3899640](v11, -1, -1);
  if (!v3)
  {
    return v12;
  }

  return result;
}

uint64_t sub_1D21FAC60(uint64_t a1, uint64_t *a2)
{
  v4 = a1;
  v12[1] = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 32);
  v6 = ((1 << v5) + 63) >> 6;
  if ((v5 & 0x3Fu) <= 0xD)
  {
    goto LABEL_2;
  }

  if (swift_stdlib_isStackAllocationSafe())
  {

LABEL_2:
    MEMORY[0x1EEE9AC00](a1);
    v8 = v12 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v8, v7);
    result = sub_1D21FF780(v8, v6, v4, a2);
    if (v2)
    {
      return swift_willThrow();
    }

    return result;
  }

  v10 = swift_slowAlloc();
  v11 = sub_1D21FFC1C(v10, v6, v4, a2);
  result = MEMORY[0x1D3899640](v10, -1, -1);
  if (!v2)
  {
    return v11;
  }

  return result;
}

int64_t sub_1D21FADCC(uint64_t *a1, uint64_t *a2)
{
  v4 = a1[1];
  result = sub_1D225124C();
  if (result < v4)
  {
    if (v4 >= -1)
    {
      v6 = result;
      if (v4 <= 1)
      {
        v7 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        v7 = sub_1D2250B2C();
        *(v7 + 16) = v4 / 2;
      }

      v9[0] = v7 + 32;
      v9[1] = v4 / 2;
      v8 = v7;
      sub_1D21FB908(v9, v10, a1, v6, a2);
      *(v8 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v4 < 0)
  {
    goto LABEL_12;
  }

  if (v4)
  {
    return sub_1D21FB25C(0, v4, 1, a1, a2);
  }

  return result;
}

uint64_t sub_1D21FAED0(uint64_t *a1, uint64_t *a2)
{
  v4 = a1[1];
  result = sub_1D225124C();
  if (result < v4)
  {
    if (v4 >= -1)
    {
      v6 = result;
      v7 = v4 / 2;
      if (v4 <= 1)
      {
        v8 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D2490);
        v8 = sub_1D2250B2C();
        *(v8 + 16) = v7;
      }

      v9 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D2490) - 8);
      v10[0] = v8 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
      v10[1] = v7;
      sub_1D21FC508(v10, v11, a1, v6, a2);
      *(v8 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v4 < 0)
  {
    goto LABEL_12;
  }

  if (v4)
  {
    return sub_1D21FB35C(0, v4, 1, a1, a2);
  }

  return result;
}

uint64_t sub_1D21FB020(uint64_t *a1, uint64_t *a2)
{
  v4 = a1[1];
  result = sub_1D225124C();
  if (result < v4)
  {
    if (v4 >= -1)
    {
      v6 = result;
      if (v4 <= 1)
      {
        v7 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(a2);
        v7 = sub_1D2250B2C();
        *(v7 + 16) = v4 / 2;
      }

      v9[0] = v7 + 32;
      v9[1] = v4 / 2;
      v8 = v7;
      sub_1D21FD150(v9, v10, a1, v6);
      *(v8 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v4 < 0)
  {
    goto LABEL_12;
  }

  if (v4)
  {
    return sub_1D219DFD4(0, v4, 1, a1);
  }

  return result;
}

uint64_t sub_1D21FB130(unint64_t *a1)
{
  v2 = a1[1];
  result = sub_1D225124C();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        type metadata accessor for VUStreamingGallery.Recognition(0);
        v6 = sub_1D2250B2C();
        *(v6 + 16) = v5;
      }

      v7 = *(type metadata accessor for VUStreamingGallery.Recognition(0) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_1D21FD6F0(v8, v9, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_1D21FB6C4(0, v2, 1, a1);
  }

  return result;
}

unint64_t sub_1D21FB25C(unint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  if (a3 != a2)
  {
    v6 = *a4;
    v7 = (*a4 + 8 * a3 - 8);
    v8 = result - a3;
LABEL_5:
    v19 = a3;
    v9 = v8;
    v18 = v7;
    while (1)
    {
      v10 = *a5;
      if (!*(*a5 + 16))
      {
        break;
      }

      v11 = v7->i64[0];
      result = sub_1D2176758(v7->i64[1]);
      if ((v12 & 1) == 0)
      {
        goto LABEL_15;
      }

      v13 = *(v10 + 56);
      v14 = *(*(v13 + 8 * result) + 16);
      result = sub_1D2176758(v11);
      if ((v15 & 1) == 0)
      {
        goto LABEL_16;
      }

      if (*(*(v13 + 8 * result) + 16) < v14)
      {
        if (!v6)
        {
          goto LABEL_17;
        }

        *v7 = vextq_s8(*v7, *v7, 8uLL);
        v7 = (v7 - 8);
        if (!__CFADD__(v9++, 1))
        {
          continue;
        }
      }

      a3 = v19 + 1;
      v7 = &v18->u64[1];
      --v8;
      if (v19 + 1 == a2)
      {
        return result;
      }

      goto LABEL_5;
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
  }

  return result;
}

uint64_t sub_1D21FB35C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  v47 = a5;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D2490);
  v9 = MEMORY[0x1EEE9AC00](v48);
  v46 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v37 - v12;
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = &v37 - v15;
  v17 = MEMORY[0x1EEE9AC00](v14);
  v49 = &v37 - v18;
  result = MEMORY[0x1EEE9AC00](v17);
  v22 = &v37 - v21;
  v39 = a2;
  if (a3 != a2)
  {
    v23 = *a4;
    v24 = *(v20 + 72);
    v25 = *a4 + v24 * (a3 - 1);
    v44 = -v24;
    v45 = v23;
    v26 = a1 - a3;
    v38 = v24;
    v27 = v23 + v24 * a3;
LABEL_5:
    v42 = v25;
    v43 = a3;
    v40 = v27;
    v41 = v26;
    v28 = v26;
    while (1)
    {
      sub_1D2174DA8(v27, v22, &qword_1EC6D2490);
      sub_1D2174DA8(v25, v49, &qword_1EC6D2490);
      sub_1D2174DA8(v22, v16, &qword_1EC6D2490);

      v29 = *v47;
      if (!*(*v47 + 16))
      {
        break;
      }

      result = sub_1D2196E40(v16);
      if ((v30 & 1) == 0)
      {
        goto LABEL_16;
      }

      v31 = *(*(v29 + 56) + 8 * result);
      sub_1D2174DA8(v49, v13, &qword_1EC6D2490);

      v32 = *v47;
      if (!*(*v47 + 16))
      {
        goto LABEL_17;
      }

      result = sub_1D2196E40(v13);
      if ((v33 & 1) == 0)
      {
        goto LABEL_18;
      }

      v34 = *(*(v32 + 56) + 8 * result);
      sub_1D220C574(v13, type metadata accessor for VUStreamingGallery.Label);
      sub_1D220C574(v16, type metadata accessor for VUStreamingGallery.Label);
      sub_1D2176170(v49, &qword_1EC6D2490);
      result = sub_1D2176170(v22, &qword_1EC6D2490);
      if (v34 < v31)
      {
        if (!v45)
        {
          goto LABEL_19;
        }

        v35 = v46;
        sub_1D21A6938(v27, v46, &qword_1EC6D2490);
        swift_arrayInitWithTakeFrontToBack();
        result = sub_1D21A6938(v35, v25, &qword_1EC6D2490);
        v25 += v44;
        v27 += v44;
        if (!__CFADD__(v28++, 1))
        {
          continue;
        }
      }

      a3 = v43 + 1;
      v25 = v42 + v38;
      v26 = v41 - 1;
      v27 = v40 + v38;
      if (v43 + 1 == v39)
      {
        return result;
      }

      goto LABEL_5;
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
  }

  return result;
}

uint64_t sub_1D21FB6C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = type metadata accessor for VUStreamingGallery.Recognition(0);
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = &v29 - v13;
  result = MEMORY[0x1EEE9AC00](v12);
  v18 = &v29 - v17;
  v31 = a2;
  if (a3 != a2)
  {
    v19 = *a4;
    v20 = *(v16 + 72);
    v21 = *a4 + v20 * (a3 - 1);
    v22 = -v20;
    v23 = a1 - a3;
    v36 = v19;
    v30 = v20;
    v24 = v19 + v20 * a3;
LABEL_5:
    v34 = v21;
    v35 = a3;
    v32 = v24;
    v33 = v23;
    while (1)
    {
      sub_1D220C5D4(v24, v18, type metadata accessor for VUStreamingGallery.Recognition);
      sub_1D220C5D4(v21, v14, type metadata accessor for VUStreamingGallery.Recognition);
      v25 = *(v8 + 20);
      v26 = *&v18[v25];
      v27 = *&v14[v25];
      sub_1D220C574(v14, type metadata accessor for VUStreamingGallery.Recognition);
      result = sub_1D220C574(v18, type metadata accessor for VUStreamingGallery.Recognition);
      if (v27 >= v26)
      {
LABEL_4:
        a3 = v35 + 1;
        v21 = v34 + v30;
        v23 = v33 - 1;
        v24 = v32 + v30;
        if (v35 + 1 == v31)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v36)
      {
        break;
      }

      sub_1D220C50C(v24, v11, type metadata accessor for VUStreamingGallery.Recognition);
      swift_arrayInitWithTakeFrontToBack();
      result = sub_1D220C50C(v11, v21, type metadata accessor for VUStreamingGallery.Recognition);
      v21 += v22;
      v24 += v22;
      if (__CFADD__(v23++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1D21FB908(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t *a5)
{
  v7 = v5;
  v95 = result;
  v8 = a3[1];
  if (v8 < 1)
  {
    v10 = MEMORY[0x1E69E7CC0];
LABEL_96:
    v6 = *v95;
    if (!*v95)
    {
      goto LABEL_140;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      goto LABEL_98;
    }

    goto LABEL_134;
  }

  v9 = 0;
  v10 = MEMORY[0x1E69E7CC0];
LABEL_4:
  v11 = v9;
  v97 = v9;
  if (v9 + 1 >= v8)
  {
    v8 = v9 + 1;
  }

  else
  {
    v12 = *a3;
    v13 = *(*a3 + 8 * (v9 + 1));
    v103 = *(*a3 + 8 * v9);
    v104 = v13;
    result = sub_1D21F6BD4(&v104, &v103, a5);
    v99 = result;
    if (v7)
    {
    }

    v14 = v9 + 2;
    v15 = (v12 + 8 * v9 + 16);
    while (v8 != v14)
    {
      v16 = *a5;
      if (!*(*a5 + 16))
      {
        goto LABEL_110;
      }

      v17 = *(v15 - 1);
      v18 = sub_1D2176758(*v15);
      if ((v19 & 1) == 0)
      {
        goto LABEL_111;
      }

      v20 = v7;
      v7 = v8;
      v21 = *(v16 + 56);
      v6 = *(*(v21 + 8 * v18) + 16);
      result = sub_1D2176758(v17);
      if ((v22 & 1) == 0)
      {
        goto LABEL_112;
      }

      v23 = *(*(v21 + 8 * result) + 16) >= v6;
      ++v14;
      ++v15;
      v8 = v7;
      v7 = v20;
      if (((v99 ^ v23) & 1) == 0)
      {
        v8 = v14 - 1;
        break;
      }
    }

    v11 = v97;
    if (v99)
    {
      if (v8 < v97)
      {
        goto LABEL_133;
      }

      if (v97 < v8)
      {
        v24 = v8 - 1;
        v25 = v97;
        do
        {
          if (v25 != v24)
          {
            v27 = *a3;
            if (!*a3)
            {
              goto LABEL_137;
            }

            v28 = *(v27 + 8 * v25);
            *(v27 + 8 * v25) = *(v27 + 8 * v24);
            *(v27 + 8 * v24) = v28;
          }
        }

        while (++v25 < v24--);
      }
    }
  }

  v29 = a3[1];
  if (v8 >= v29)
  {
    goto LABEL_31;
  }

  if (__OFSUB__(v8, v11))
  {
    goto LABEL_130;
  }

  if (v8 - v11 >= a4)
  {
    goto LABEL_31;
  }

  if (__OFADD__(v11, a4))
  {
    goto LABEL_131;
  }

  if (v11 + a4 < v29)
  {
    v29 = v11 + a4;
  }

  if (v29 < v11)
  {
    goto LABEL_132;
  }

  if (v8 == v29)
  {
LABEL_31:
    v9 = v8;
    if (v8 < v11)
    {
      goto LABEL_129;
    }

    goto LABEL_32;
  }

  v96 = v29;
  v93 = v7;
  v77 = *a3;
  v78 = *a3 + 8 * v8 - 8;
  v79 = v11 - v8;
LABEL_83:
  v98 = v78;
  v100 = v8;
  v80 = v78;
  v7 = v79;
  while (1)
  {
    v81 = *a5;
    if (!*(*a5 + 16))
    {
      __break(1u);
LABEL_108:
      __break(1u);
LABEL_109:
      __break(1u);
LABEL_110:
      __break(1u);
LABEL_111:
      __break(1u);
LABEL_112:
      __break(1u);
LABEL_113:
      __break(1u);
LABEL_114:
      __break(1u);
LABEL_115:
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
      result = sub_1D21C88C8(v10);
      v10 = result;
LABEL_98:
      v88 = v7;
      v105 = v10;
      v89 = *(v10 + 2);
      if (v89 >= 2)
      {
        while (*a3)
        {
          v7 = v89 - 1;
          v90 = *&v10[16 * v89];
          v91 = *&v10[16 * v89 + 24];
          sub_1D21FE018(*a3 + 8 * v90, (*a3 + 8 * *&v10[16 * v89 + 16]), (*a3 + 8 * v91), v6, a5);
          if (v88)
          {
          }

          if (v91 < v90)
          {
            goto LABEL_126;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v10 = sub_1D21C88C8(v10);
          }

          if (v89 - 2 >= *(v10 + 2))
          {
            goto LABEL_127;
          }

          v92 = &v10[16 * v89];
          *v92 = v90;
          *(v92 + 1) = v91;
          v105 = v10;
          result = sub_1D21C883C(v7);
          v10 = v105;
          v89 = *(v105 + 2);
          if (v89 <= 1)
          {
          }
        }

        goto LABEL_138;
      }
    }

    v82 = v80->i64[0];
    v83 = sub_1D2176758(v80->i64[1]);
    if ((v84 & 1) == 0)
    {
      goto LABEL_108;
    }

    v6 = *(v81 + 56);
    v85 = *(*&v6[8 * v83] + 16);
    result = sub_1D2176758(v82);
    if ((v86 & 1) == 0)
    {
      goto LABEL_109;
    }

    if (*(*&v6[8 * result] + 16) >= v85)
    {
      goto LABEL_82;
    }

    if (!v77)
    {
      break;
    }

    *v80 = vextq_s8(*v80, *v80, 8uLL);
    v80 = (v80 - 8);
    if (__CFADD__(v7++, 1))
    {
LABEL_82:
      v8 = v100 + 1;
      v78 = v98 + 8;
      --v79;
      if (v100 + 1 != v96)
      {
        goto LABEL_83;
      }

      v7 = v93;
      v9 = v96;
      if (v96 < v97)
      {
        goto LABEL_129;
      }

LABEL_32:
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_1D2195E30(0, *(v10 + 2) + 1, 1, v10);
        v10 = result;
      }

      v31 = *(v10 + 2);
      v30 = *(v10 + 3);
      v32 = v31 + 1;
      if (v31 >= v30 >> 1)
      {
        result = sub_1D2195E30((v30 > 1), v31 + 1, 1, v10);
        v10 = result;
      }

      *(v10 + 2) = v32;
      v33 = &v10[16 * v31];
      *(v33 + 4) = v97;
      *(v33 + 5) = v9;
      v34 = *v95;
      if (!*v95)
      {
        goto LABEL_139;
      }

      if (v31)
      {
        while (1)
        {
          v35 = v32 - 1;
          if (v32 >= 4)
          {
            break;
          }

          if (v32 == 3)
          {
            v36 = *(v10 + 4);
            v37 = *(v10 + 5);
            v46 = __OFSUB__(v37, v36);
            v38 = v37 - v36;
            v39 = v46;
LABEL_51:
            if (v39)
            {
              goto LABEL_118;
            }

            v52 = &v10[16 * v32];
            v54 = *v52;
            v53 = *(v52 + 1);
            v55 = __OFSUB__(v53, v54);
            v56 = v53 - v54;
            v57 = v55;
            if (v55)
            {
              goto LABEL_121;
            }

            v58 = &v10[16 * v35 + 32];
            v60 = *v58;
            v59 = *(v58 + 1);
            v46 = __OFSUB__(v59, v60);
            v61 = v59 - v60;
            if (v46)
            {
              goto LABEL_124;
            }

            if (__OFADD__(v56, v61))
            {
              goto LABEL_125;
            }

            if (v56 + v61 >= v38)
            {
              if (v38 < v61)
              {
                v35 = v32 - 2;
              }

              goto LABEL_72;
            }

            goto LABEL_65;
          }

          v62 = &v10[16 * v32];
          v64 = *v62;
          v63 = *(v62 + 1);
          v46 = __OFSUB__(v63, v64);
          v56 = v63 - v64;
          v57 = v46;
LABEL_65:
          if (v57)
          {
            goto LABEL_120;
          }

          v65 = &v10[16 * v35];
          v67 = *(v65 + 4);
          v66 = *(v65 + 5);
          v46 = __OFSUB__(v66, v67);
          v68 = v66 - v67;
          if (v46)
          {
            goto LABEL_123;
          }

          if (v68 < v56)
          {
            goto LABEL_3;
          }

LABEL_72:
          v73 = v35 - 1;
          if (v35 - 1 >= v32)
          {
            goto LABEL_113;
          }

          if (!*a3)
          {
            goto LABEL_136;
          }

          v74 = *&v10[16 * v73 + 32];
          v75 = *&v10[16 * v35 + 40];
          sub_1D21FE018(*a3 + 8 * v74, (*a3 + 8 * *&v10[16 * v35 + 32]), (*a3 + 8 * v75), v34, a5);
          if (v7)
          {
          }

          if (v75 < v74)
          {
            goto LABEL_114;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v10 = sub_1D21C88C8(v10);
          }

          if (v73 >= *(v10 + 2))
          {
            goto LABEL_115;
          }

          v76 = &v10[16 * v73];
          *(v76 + 4) = v74;
          *(v76 + 5) = v75;
          v105 = v10;
          result = sub_1D21C883C(v35);
          v10 = v105;
          v32 = *(v105 + 2);
          if (v32 <= 1)
          {
            goto LABEL_3;
          }
        }

        v40 = &v10[16 * v32 + 32];
        v41 = *(v40 - 64);
        v42 = *(v40 - 56);
        v46 = __OFSUB__(v42, v41);
        v43 = v42 - v41;
        if (v46)
        {
          goto LABEL_116;
        }

        v45 = *(v40 - 48);
        v44 = *(v40 - 40);
        v46 = __OFSUB__(v44, v45);
        v38 = v44 - v45;
        v39 = v46;
        if (v46)
        {
          goto LABEL_117;
        }

        v47 = &v10[16 * v32];
        v49 = *v47;
        v48 = *(v47 + 1);
        v46 = __OFSUB__(v48, v49);
        v50 = v48 - v49;
        if (v46)
        {
          goto LABEL_119;
        }

        v46 = __OFADD__(v38, v50);
        v51 = v38 + v50;
        if (v46)
        {
          goto LABEL_122;
        }

        if (v51 >= v43)
        {
          v69 = &v10[16 * v35 + 32];
          v71 = *v69;
          v70 = *(v69 + 1);
          v46 = __OFSUB__(v70, v71);
          v72 = v70 - v71;
          if (v46)
          {
            goto LABEL_128;
          }

          if (v38 < v72)
          {
            v35 = v32 - 2;
          }

          goto LABEL_72;
        }

        goto LABEL_51;
      }

LABEL_3:
      v8 = a3[1];
      if (v9 >= v8)
      {
        goto LABEL_96;
      }

      goto LABEL_4;
    }
  }

  __break(1u);
LABEL_136:
  __break(1u);
LABEL_137:
  __break(1u);
LABEL_138:
  __break(1u);
LABEL_139:
  __break(1u);
LABEL_140:
  __break(1u);
  return result;
}

uint64_t sub_1D21FBF74(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v89 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x1E69E7CC0];
LABEL_88:
    v5 = *v89;
    if (!*v89)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_122:
      result = sub_1D21C88C8(v8);
      v8 = result;
    }

    v81 = (v8 + 16);
    v82 = *(v8 + 16);
    if (v82 >= 2)
    {
      while (*a3)
      {
        v83 = (v8 + 16 * v82);
        v84 = *v83;
        v85 = &v81[2 * v82];
        v86 = v85[1];
        sub_1D21FE2E0((*a3 + 16 * *v83), (*a3 + 16 * *v85), (*a3 + 16 * v86), v5);
        if (v4)
        {
        }

        if (v86 < v84)
        {
          goto LABEL_114;
        }

        if (v82 - 2 >= *v81)
        {
          goto LABEL_115;
        }

        *v83 = v84;
        v83[1] = v86;
        v87 = *v81 - v82;
        if (*v81 < v82)
        {
          goto LABEL_116;
        }

        v82 = *v81 - 1;
        result = memmove(v85, v85 + 2, 16 * v87);
        *v81 = v82;
        if (v82 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v7 = 0;
  v8 = MEMORY[0x1E69E7CC0];
  v88 = a4;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = *(*a3 + 16 * v7 + 8);
      v11 = 16 * v9;
      v12 = *a3 + 16 * v9;
      v13 = *(v12 + 8);
      v14 = v9 + 2;
      v15 = (v12 + 40);
      v16 = v10;
      while (v6 != v14)
      {
        v17 = *v15;
        v15 += 2;
        v18 = v16 >= v17;
        ++v14;
        v16 = v17;
        if ((((v13 < v10) ^ v18) & 1) == 0)
        {
          v7 = v14 - 1;
          if (v13 >= v10)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v7 = v6;
      if (v13 >= v10)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v7 < v9)
      {
        goto LABEL_119;
      }

      if (v9 < v7)
      {
        v19 = 0;
        v20 = 16 * v7;
        v21 = v9;
        do
        {
          if (v21 != v7 + v19 - 1)
          {
            v26 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v22 = (v26 + v11);
            v23 = v26 + v20;
            v24 = *v22;
            v25 = v22[1];
            *v22 = *(v23 - 16);
            *(v23 - 16) = v24;
            *(v23 - 8) = v25;
          }

          ++v21;
          --v19;
          v20 -= 16;
          v11 += 16;
        }

        while (v21 < v7 + v19);
        v6 = a3[1];
      }
    }

LABEL_20:
    if (v7 < v6)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_118;
      }

      if (v7 - v9 < a4)
      {
        if (__OFADD__(v9, a4))
        {
          goto LABEL_120;
        }

        if (v9 + a4 < v6)
        {
          v6 = v9 + a4;
        }

        if (v6 < v9)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v7 != v6)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v7 < v9)
    {
      goto LABEL_117;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1D2195E30(0, *(v8 + 16) + 1, 1, v8);
      v8 = result;
    }

    v5 = *(v8 + 16);
    v35 = *(v8 + 24);
    v36 = v5 + 1;
    if (v5 >= v35 >> 1)
    {
      result = sub_1D2195E30((v35 > 1), v5 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 16) = v36;
    v37 = v8 + 32;
    v38 = (v8 + 32 + 16 * v5);
    *v38 = v9;
    v38[1] = v7;
    v90 = *v89;
    if (!*v89)
    {
      goto LABEL_127;
    }

    if (v5)
    {
      while (1)
      {
        v5 = v36 - 1;
        if (v36 >= 4)
        {
          break;
        }

        if (v36 == 3)
        {
          v39 = *(v8 + 32);
          v40 = *(v8 + 40);
          v49 = __OFSUB__(v40, v39);
          v41 = v40 - v39;
          v42 = v49;
LABEL_57:
          if (v42)
          {
            goto LABEL_104;
          }

          v55 = (v8 + 16 * v36);
          v57 = *v55;
          v56 = v55[1];
          v58 = __OFSUB__(v56, v57);
          v59 = v56 - v57;
          v60 = v58;
          if (v58)
          {
            goto LABEL_106;
          }

          v61 = (v37 + 16 * v5);
          v63 = *v61;
          v62 = v61[1];
          v49 = __OFSUB__(v62, v63);
          v64 = v62 - v63;
          if (v49)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v59, v64))
          {
            goto LABEL_111;
          }

          if (v59 + v64 >= v41)
          {
            if (v41 < v64)
            {
              v5 = v36 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v36 < 2)
        {
          goto LABEL_112;
        }

        v65 = (v8 + 16 * v36);
        v67 = *v65;
        v66 = v65[1];
        v49 = __OFSUB__(v66, v67);
        v59 = v66 - v67;
        v60 = v49;
LABEL_72:
        if (v60)
        {
          goto LABEL_108;
        }

        v68 = (v37 + 16 * v5);
        v70 = *v68;
        v69 = v68[1];
        v49 = __OFSUB__(v69, v70);
        v71 = v69 - v70;
        if (v49)
        {
          goto LABEL_110;
        }

        if (v71 < v59)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v5 - 1 >= v36)
        {
          __break(1u);
LABEL_99:
          __break(1u);
LABEL_100:
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
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
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
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
          goto LABEL_121;
        }

        if (!*a3)
        {
          goto LABEL_124;
        }

        v76 = (v37 + 16 * (v5 - 1));
        v77 = *v76;
        v78 = (v37 + 16 * v5);
        v79 = v78[1];
        sub_1D21FE2E0((*a3 + 16 * *v76), (*a3 + 16 * *v78), (*a3 + 16 * v79), v90);
        if (v4)
        {
        }

        if (v79 < v77)
        {
          goto LABEL_99;
        }

        if (v5 > *(v8 + 16))
        {
          goto LABEL_100;
        }

        *v76 = v77;
        v76[1] = v79;
        v80 = *(v8 + 16);
        if (v5 >= v80)
        {
          goto LABEL_101;
        }

        v36 = v80 - 1;
        result = memmove((v37 + 16 * v5), v78 + 2, 16 * (v80 - 1 - v5));
        *(v8 + 16) = v80 - 1;
        if (v80 <= 2)
        {
          goto LABEL_3;
        }
      }

      v43 = v37 + 16 * v36;
      v44 = *(v43 - 64);
      v45 = *(v43 - 56);
      v49 = __OFSUB__(v45, v44);
      v46 = v45 - v44;
      if (v49)
      {
        goto LABEL_102;
      }

      v48 = *(v43 - 48);
      v47 = *(v43 - 40);
      v49 = __OFSUB__(v47, v48);
      v41 = v47 - v48;
      v42 = v49;
      if (v49)
      {
        goto LABEL_103;
      }

      v50 = (v8 + 16 * v36);
      v52 = *v50;
      v51 = v50[1];
      v49 = __OFSUB__(v51, v52);
      v53 = v51 - v52;
      if (v49)
      {
        goto LABEL_105;
      }

      v49 = __OFADD__(v41, v53);
      v54 = v41 + v53;
      if (v49)
      {
        goto LABEL_107;
      }

      if (v54 >= v46)
      {
        v72 = (v37 + 16 * v5);
        v74 = *v72;
        v73 = v72[1];
        v49 = __OFSUB__(v73, v74);
        v75 = v73 - v74;
        if (v49)
        {
          goto LABEL_113;
        }

        if (v41 < v75)
        {
          v5 = v36 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v6 = a3[1];
    a4 = v88;
    if (v7 >= v6)
    {
      goto LABEL_88;
    }
  }

  v27 = *a3;
  v28 = *a3 + 16 * v7;
  v29 = v9 - v7;
LABEL_30:
  v30 = *(v27 + 16 * v7 + 8);
  v31 = v29;
  v32 = v28;
  while (1)
  {
    if (*(v32 - 1) >= v30)
    {
LABEL_29:
      ++v7;
      v28 += 16;
      --v29;
      if (v7 != v6)
      {
        goto LABEL_30;
      }

      v7 = v6;
      goto LABEL_37;
    }

    if (!v27)
    {
      break;
    }

    v33 = *v32;
    *v32 = *(v32 - 1);
    *(v32 - 1) = v30;
    *(v32 - 2) = v33;
    v32 -= 2;
    if (__CFADD__(v31++, 1))
    {
      goto LABEL_29;
    }
  }

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
  return result;
}

uint64_t sub_1D21FC508(unint64_t *a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t *a5)
{
  v143 = a5;
  v126 = a1;
  v142 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D2490);
  v135 = *(v142 - 8);
  v7 = MEMORY[0x1EEE9AC00](v142);
  v134 = &v123 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v141 = &v123 - v10;
  v11 = MEMORY[0x1EEE9AC00](v9);
  v144 = &v123 - v12;
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v123 - v14;
  v16 = MEMORY[0x1EEE9AC00](v13);
  v145 = &v123 - v17;
  v18 = MEMORY[0x1EEE9AC00](v16);
  v20 = &v123 - v19;
  v21 = MEMORY[0x1EEE9AC00](v18);
  result = MEMORY[0x1EEE9AC00](v21);
  v137 = a3;
  if (*(a3 + 8) >= 1)
  {
    v25 = *(a3 + 8);
    v125 = &v123 - v23;
    v124 = v24;
    v123 = a4;
    v26 = 0;
    v27 = MEMORY[0x1E69E7CC0];
    v28 = &qword_1EC6D2490;
    v29 = &unk_1D2254410;
    while (1)
    {
      v133 = v27;
      if (v26 + 1 >= v25)
      {
        v43 = v26 + 1;
        v44 = v142;
      }

      else
      {
        v136 = v25;
        v30 = *v137;
        v31 = *(v135 + 72);
        v32 = *v137 + v31 * (v26 + 1);
        v33 = v26;
        v127 = v26;
        v34 = v125;
        sub_1D2174DA8(v32, v125, &qword_1EC6D2490);
        v35 = v30 + v31 * v33;
        v36 = v29;
        v37 = v124;
        sub_1D2174DA8(v35, v124, &qword_1EC6D2490);
        v38 = v138;
        LODWORD(v139) = sub_1D21F6930(v34, v37, v143);
        v39 = v127;
        if (v38)
        {
          sub_1D2176170(v37, &qword_1EC6D2490);
          sub_1D2176170(v125, &qword_1EC6D2490);
        }

        v138 = 0;
        sub_1D2176170(v37, &qword_1EC6D2490);
        result = sub_1D2176170(v125, &qword_1EC6D2490);
        v40 = v30;
        a3 = v39 + 2;
        v41 = v40 + v31 * (v39 + 2);
        v29 = v36;
        v42 = v31;
        v140 = v31;
        while (1)
        {
          v43 = v136;
          v44 = v142;
          if (v136 == a3)
          {
            break;
          }

          sub_1D2174DA8(v41, v20, &qword_1EC6D2490);
          sub_1D2174DA8(v32, v145, &qword_1EC6D2490);
          v29 = &unk_1D2254410;
          sub_1D2174DA8(v20, v15, &qword_1EC6D2490);

          v44 = *v143;
          if (!*(*v143 + 16))
          {
            goto LABEL_125;
          }

          v45 = sub_1D2196E40(v15);
          if ((v46 & 1) == 0)
          {
            goto LABEL_126;
          }

          v47 = *(*(v44 + 56) + 8 * v45);
          sub_1D2174DA8(v145, v144, &qword_1EC6D2490);

          v44 = *v143;
          if (!*(*v143 + 16))
          {
            goto LABEL_127;
          }

          v48 = sub_1D2196E40(v144);
          if ((v49 & 1) == 0)
          {
            goto LABEL_128;
          }

          v50 = *(*(v44 + 56) + 8 * v48);
          sub_1D220C574(v144, type metadata accessor for VUStreamingGallery.Label);
          sub_1D220C574(v15, type metadata accessor for VUStreamingGallery.Label);
          sub_1D2176170(v145, &qword_1EC6D2490);
          result = sub_1D2176170(v20, &qword_1EC6D2490);
          ++a3;
          v42 = v140;
          v41 += v140;
          v32 += v140;
          if (((v139 ^ (v50 >= v47)) & 1) == 0)
          {
            v43 = a3 - 1;
            v44 = v142;
            break;
          }
        }

        v28 = &qword_1EC6D2490;
        v26 = v127;
        if (v139)
        {
          if (v43 < v127)
          {
            __break(1u);
LABEL_151:
            __break(1u);
LABEL_152:
            __break(1u);
LABEL_153:
            __break(1u);
LABEL_154:
            __break(1u);
LABEL_155:
            __break(1u);
LABEL_156:
            __break(1u);
            return result;
          }

          if (v127 < v43)
          {
            a3 = v42 * (v43 - 1);
            v51 = v43 * v42;
            v136 = v43;
            v52 = v43;
            v53 = v127 * v42;
            do
            {
              if (v26 != --v52)
              {
                v54 = *v137;
                if (!*v137)
                {
                  goto LABEL_154;
                }

                sub_1D21A6938(v54 + v53, v134, &qword_1EC6D2490);
                if (v53 < a3 || v54 + v53 >= v54 + v51)
                {
                  swift_arrayInitWithTakeFrontToBack();
                }

                else if (v53 != a3)
                {
                  swift_arrayInitWithTakeBackToFront();
                }

                result = sub_1D21A6938(v134, v54 + a3, &qword_1EC6D2490);
                v42 = v140;
              }

              ++v26;
              a3 -= v42;
              v51 -= v42;
              v53 += v42;
            }

            while (v26 < v52);
            v44 = v142;
            v28 = &qword_1EC6D2490;
            v29 = &unk_1D2254410;
            v26 = v127;
            v43 = v136;
          }
        }
      }

      v55 = v137[1];
      if (v43 >= v55)
      {
        goto LABEL_37;
      }

      if (__OFSUB__(v43, v26))
      {
LABEL_146:
        __break(1u);
LABEL_147:
        __break(1u);
LABEL_148:
        __break(1u);
        goto LABEL_149;
      }

      if (v43 - v26 >= v123)
      {
        goto LABEL_37;
      }

      if (__OFADD__(v26, v123))
      {
        goto LABEL_147;
      }

      if (v26 + v123 >= v55)
      {
        v56 = v137[1];
      }

      else
      {
        v56 = v26 + v123;
      }

      if (v56 < v26)
      {
        goto LABEL_148;
      }

      if (v43 == v56)
      {
LABEL_37:
        v57 = v43;
        if (v43 < v26)
        {
          goto LABEL_145;
        }

        goto LABEL_38;
      }

      v102 = *v137;
      v103 = *(v135 + 72);
      v104 = *v137 + v103 * (v43 - 1);
      v139 = -v103;
      v140 = v102;
      v127 = v26;
      v128 = v103;
      v105 = v26 - v43;
      v106 = v102 + v43 * v103;
      v129 = v56;
      while (2)
      {
        v136 = v43;
        v130 = v106;
        v131 = v105;
        v107 = v106;
        v132 = v104;
        v108 = v104;
        while (1)
        {
          sub_1D2174DA8(v107, v20, &qword_1EC6D2490);
          sub_1D2174DA8(v108, v145, &qword_1EC6D2490);
          sub_1D2174DA8(v20, v15, &qword_1EC6D2490);

          v44 = *v143;
          if (!*(*v143 + 16))
          {
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
LABEL_135:
            __break(1u);
LABEL_136:
            __break(1u);
LABEL_137:
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
LABEL_143:
            __break(1u);
LABEL_144:
            __break(1u);
LABEL_145:
            __break(1u);
            goto LABEL_146;
          }

          v109 = sub_1D2196E40(v15);
          if ((v110 & 1) == 0)
          {
            goto LABEL_122;
          }

          v111 = *(*(v44 + 56) + 8 * v109);
          a3 = v144;
          sub_1D2174DA8(v145, v144, &qword_1EC6D2490);

          v44 = *v143;
          if (!*(*v143 + 16))
          {
            goto LABEL_123;
          }

          v112 = sub_1D2196E40(v144);
          if ((v113 & 1) == 0)
          {
            goto LABEL_124;
          }

          v114 = *(*(v44 + 56) + 8 * v112);
          sub_1D220C574(v144, type metadata accessor for VUStreamingGallery.Label);
          sub_1D220C574(v15, type metadata accessor for VUStreamingGallery.Label);
          sub_1D2176170(v145, &qword_1EC6D2490);
          result = sub_1D2176170(v20, &qword_1EC6D2490);
          if (v114 >= v111)
          {
            break;
          }

          a3 = v142;
          if (!v140)
          {
            goto LABEL_151;
          }

          v115 = v15;
          v116 = v141;
          sub_1D21A6938(v107, v141, &qword_1EC6D2490);
          swift_arrayInitWithTakeFrontToBack();
          sub_1D21A6938(v116, v108, &qword_1EC6D2490);
          v108 += v139;
          v107 += v139;
          v117 = __CFADD__(v105++, 1);
          v15 = v115;
          v28 = &qword_1EC6D2490;
          v44 = a3;
          if (v117)
          {
            goto LABEL_89;
          }
        }

        v44 = v142;
LABEL_89:
        v43 = v136 + 1;
        v57 = v129;
        v104 = v132 + v128;
        v105 = v131 - 1;
        v106 = v130 + v128;
        if (v136 + 1 != v129)
        {
          continue;
        }

        break;
      }

      v29 = &unk_1D2254410;
      v26 = v127;
      if (v129 < v127)
      {
        goto LABEL_145;
      }

LABEL_38:
      result = swift_isUniquelyReferenced_nonNull_native();
      if (result)
      {
        v27 = v133;
      }

      else
      {
        result = sub_1D2195E30(0, *(v133 + 2) + 1, 1, v133);
        v27 = result;
      }

      a3 = *(v27 + 2);
      v58 = *(v27 + 3);
      v44 = a3 + 1;
      if (a3 >= v58 >> 1)
      {
        result = sub_1D2195E30((v58 > 1), a3 + 1, 1, v27);
        v27 = result;
      }

      *(v27 + 2) = v44;
      v59 = &v27[16 * a3];
      *(v59 + 4) = v26;
      *(v59 + 5) = v57;
      v140 = *v126;
      if (!v140)
      {
        goto LABEL_155;
      }

      v129 = v57;
      v28 = &qword_1EC6D2490;
      if (a3)
      {
        while (1)
        {
          v60 = v44 - 1;
          if (v44 >= 4)
          {
            break;
          }

          if (v44 == 3)
          {
            v61 = *(v27 + 4);
            v62 = *(v27 + 5);
            v71 = __OFSUB__(v62, v61);
            v63 = v62 - v61;
            v64 = v71;
LABEL_57:
            if (v64)
            {
              goto LABEL_134;
            }

            v77 = &v27[16 * v44];
            v79 = *v77;
            v78 = *(v77 + 1);
            v80 = __OFSUB__(v78, v79);
            v81 = v78 - v79;
            v82 = v80;
            if (v80)
            {
              goto LABEL_137;
            }

            v83 = &v27[16 * v60 + 32];
            v85 = *v83;
            v84 = *(v83 + 1);
            v71 = __OFSUB__(v84, v85);
            v86 = v84 - v85;
            if (v71)
            {
              goto LABEL_140;
            }

            if (__OFADD__(v81, v86))
            {
              goto LABEL_141;
            }

            if (v81 + v86 >= v63)
            {
              if (v63 < v86)
              {
                v60 = v44 - 2;
              }

              goto LABEL_78;
            }

            goto LABEL_71;
          }

          v87 = &v27[16 * v44];
          v89 = *v87;
          v88 = *(v87 + 1);
          v71 = __OFSUB__(v88, v89);
          v81 = v88 - v89;
          v82 = v71;
LABEL_71:
          if (v82)
          {
            goto LABEL_136;
          }

          v90 = &v27[16 * v60];
          v92 = *(v90 + 4);
          v91 = *(v90 + 5);
          v71 = __OFSUB__(v91, v92);
          v93 = v91 - v92;
          if (v71)
          {
            goto LABEL_139;
          }

          if (v93 < v81)
          {
            goto LABEL_3;
          }

LABEL_78:
          a3 = v60 - 1;
          if (v60 - 1 >= v44)
          {
            goto LABEL_129;
          }

          if (!*v137)
          {
            goto LABEL_152;
          }

          v98 = v27;
          v44 = *&v27[16 * a3 + 32];
          v99 = *&v27[16 * v60 + 40];
          v100 = v138;
          sub_1D21FE4E4(*v137 + *(v135 + 72) * v44, *v137 + *(v135 + 72) * *&v27[16 * v60 + 32], *v137 + *(v135 + 72) * v99, v140, v143);
          v138 = v100;
          if (v100)
          {
          }

          if (v99 < v44)
          {
            goto LABEL_130;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v98 = sub_1D21C88C8(v98);
          }

          if (a3 >= *(v98 + 2))
          {
            goto LABEL_131;
          }

          v101 = &v98[16 * a3];
          *(v101 + 4) = v44;
          *(v101 + 5) = v99;
          v146 = v98;
          result = sub_1D21C883C(v60);
          v27 = v146;
          v44 = *(v146 + 16);
          v28 = &qword_1EC6D2490;
          v29 = &unk_1D2254410;
          if (v44 <= 1)
          {
            goto LABEL_3;
          }
        }

        v65 = &v27[16 * v44 + 32];
        v66 = *(v65 - 64);
        v67 = *(v65 - 56);
        v71 = __OFSUB__(v67, v66);
        v68 = v67 - v66;
        if (v71)
        {
          goto LABEL_132;
        }

        v70 = *(v65 - 48);
        v69 = *(v65 - 40);
        v71 = __OFSUB__(v69, v70);
        v63 = v69 - v70;
        v64 = v71;
        if (v71)
        {
          goto LABEL_133;
        }

        v72 = &v27[16 * v44];
        v74 = *v72;
        v73 = *(v72 + 1);
        v71 = __OFSUB__(v73, v74);
        v75 = v73 - v74;
        if (v71)
        {
          goto LABEL_135;
        }

        v71 = __OFADD__(v63, v75);
        v76 = v63 + v75;
        if (v71)
        {
          goto LABEL_138;
        }

        if (v76 >= v68)
        {
          v94 = &v27[16 * v60 + 32];
          v96 = *v94;
          v95 = *(v94 + 1);
          v71 = __OFSUB__(v95, v96);
          v97 = v95 - v96;
          if (v71)
          {
            goto LABEL_144;
          }

          if (v63 < v97)
          {
            v60 = v44 - 2;
          }

          goto LABEL_78;
        }

        goto LABEL_57;
      }

LABEL_3:
      v25 = v137[1];
      v26 = v129;
      if (v129 >= v25)
      {
        goto LABEL_106;
      }
    }
  }

  v27 = MEMORY[0x1E69E7CC0];
LABEL_106:
  a3 = *v126;
  if (!*v126)
  {
    goto LABEL_156;
  }

  v44 = v27;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v28 = v138;
  if (isUniquelyReferenced_nonNull_native)
  {
    result = v44;
  }

  else
  {
LABEL_149:
    result = sub_1D21C88C8(v44);
  }

  v146 = result;
  v44 = *(result + 16);
  if (v44 >= 2)
  {
    while (*v137)
    {
      v119 = *(result + 16 * v44);
      v120 = result;
      v121 = *(result + 16 * (v44 - 1) + 40);
      sub_1D21FE4E4(*v137 + *(v135 + 72) * v119, *v137 + *(v135 + 72) * *(result + 16 * (v44 - 1) + 32), *v137 + *(v135 + 72) * v121, a3, v143);
      if (v28)
      {
      }

      if (v121 < v119)
      {
        goto LABEL_142;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v120 = sub_1D21C88C8(v120);
      }

      if (v44 - 2 >= *(v120 + 2))
      {
        goto LABEL_143;
      }

      v122 = &v120[16 * v44];
      *v122 = v119;
      *(v122 + 1) = v121;
      v146 = v120;
      sub_1D21C883C(v44 - 1);
      result = v146;
      v44 = *(v146 + 16);
      if (v44 <= 1)
      {
      }
    }

    goto LABEL_153;
  }
}

uint64_t sub_1D21FD150(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v87 = result;
  v7 = a3[1];
  if (v7 < 1)
  {
    v10 = MEMORY[0x1E69E7CC0];
LABEL_88:
    v5 = *v87;
    if (!*v87)
    {
      goto LABEL_126;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_120:
      result = sub_1D21C88C8(v10);
      v10 = result;
    }

    v82 = *(v10 + 2);
    if (v82 >= 2)
    {
      while (*a3)
      {
        v83 = *&v10[16 * v82];
        v84 = *&v10[16 * v82 + 24];
        sub_1D21A0538((*a3 + 16 * v83), (*a3 + 16 * *&v10[16 * v82 + 16]), (*a3 + 16 * v84), v5);
        if (v4)
        {
        }

        if (v84 < v83)
        {
          goto LABEL_113;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v10 = sub_1D21C88C8(v10);
        }

        if (v82 - 2 >= *(v10 + 2))
        {
          goto LABEL_114;
        }

        v85 = &v10[16 * v82];
        *v85 = v83;
        *(v85 + 1) = v84;
        result = sub_1D21C883C(v82 - 1);
        v82 = *(v10 + 2);
        if (v82 <= 1)
        {
        }
      }

      goto LABEL_124;
    }
  }

  v8 = a4;
  v9 = 0;
  v10 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v11 = v9++;
    if (v9 < v7)
    {
      v12 = 16 * v11;
      v13 = *a3 + 16 * v11;
      v14 = *(*(*a3 + 16 * v9 + 8) + 16);
      v15 = *(*(v13 + 8) + 16);
      v16 = v11 + 2;
      v17 = (v13 + 40);
      v18 = v14;
      while (v7 != v16)
      {
        v19 = *v17;
        v17 += 2;
        v20 = (v15 < v14) ^ (v18 >= *(v19 + 16));
        ++v16;
        v18 = *(v19 + 16);
        if ((v20 & 1) == 0)
        {
          v9 = v16 - 1;
          if (v15 >= v14)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v9 = v7;
      if (v15 >= v14)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v9 < v11)
      {
        goto LABEL_117;
      }

      if (v11 < v9)
      {
        v21 = 0;
        v22 = 16 * v9;
        v23 = v11;
        do
        {
          if (v23 != v9 + v21 - 1)
          {
            v28 = *a3;
            if (!*a3)
            {
              goto LABEL_123;
            }

            v24 = (v28 + v12);
            v25 = v28 + v22;
            v26 = *v24;
            v27 = v24[1];
            *v24 = *(v25 - 16);
            *(v25 - 16) = v26;
            *(v25 - 8) = v27;
          }

          ++v23;
          --v21;
          v22 -= 16;
          v12 += 16;
        }

        while (v23 < v9 + v21);
        v7 = a3[1];
      }
    }

LABEL_20:
    if (v9 < v7)
    {
      if (__OFSUB__(v9, v11))
      {
        goto LABEL_116;
      }

      if (v9 - v11 < v8)
      {
        if (__OFADD__(v11, v8))
        {
          goto LABEL_118;
        }

        if (v11 + v8 < v7)
        {
          v7 = v11 + v8;
        }

        if (v7 < v11)
        {
LABEL_119:
          __break(1u);
          goto LABEL_120;
        }

        if (v9 != v7)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v9 < v11)
    {
      goto LABEL_115;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1D2195E30(0, *(v10 + 2) + 1, 1, v10);
      v10 = result;
    }

    v5 = *(v10 + 2);
    v37 = *(v10 + 3);
    v38 = v5 + 1;
    if (v5 >= v37 >> 1)
    {
      result = sub_1D2195E30((v37 > 1), v5 + 1, 1, v10);
      v10 = result;
    }

    *(v10 + 2) = v38;
    v39 = &v10[16 * v5];
    *(v39 + 4) = v11;
    *(v39 + 5) = v9;
    v40 = *v87;
    if (!*v87)
    {
      goto LABEL_125;
    }

    if (v5)
    {
      while (1)
      {
        v41 = v38 - 1;
        if (v38 >= 4)
        {
          break;
        }

        if (v38 == 3)
        {
          v42 = *(v10 + 4);
          v43 = *(v10 + 5);
          v52 = __OFSUB__(v43, v42);
          v44 = v43 - v42;
          v45 = v52;
LABEL_57:
          if (v45)
          {
            goto LABEL_104;
          }

          v58 = &v10[16 * v38];
          v60 = *v58;
          v59 = *(v58 + 1);
          v61 = __OFSUB__(v59, v60);
          v62 = v59 - v60;
          v63 = v61;
          if (v61)
          {
            goto LABEL_107;
          }

          v64 = &v10[16 * v41 + 32];
          v66 = *v64;
          v65 = *(v64 + 1);
          v52 = __OFSUB__(v65, v66);
          v67 = v65 - v66;
          if (v52)
          {
            goto LABEL_110;
          }

          if (__OFADD__(v62, v67))
          {
            goto LABEL_111;
          }

          if (v62 + v67 >= v44)
          {
            if (v44 < v67)
            {
              v41 = v38 - 2;
            }

            goto LABEL_78;
          }

          goto LABEL_71;
        }

        v68 = &v10[16 * v38];
        v70 = *v68;
        v69 = *(v68 + 1);
        v52 = __OFSUB__(v69, v70);
        v62 = v69 - v70;
        v63 = v52;
LABEL_71:
        if (v63)
        {
          goto LABEL_106;
        }

        v71 = &v10[16 * v41];
        v73 = *(v71 + 4);
        v72 = *(v71 + 5);
        v52 = __OFSUB__(v72, v73);
        v74 = v72 - v73;
        if (v52)
        {
          goto LABEL_109;
        }

        if (v74 < v62)
        {
          goto LABEL_3;
        }

LABEL_78:
        v79 = v41 - 1;
        if (v41 - 1 >= v38)
        {
          __break(1u);
LABEL_100:
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
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
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
          goto LABEL_119;
        }

        if (!*a3)
        {
          goto LABEL_122;
        }

        v80 = *&v10[16 * v79 + 32];
        v5 = *&v10[16 * v41 + 40];
        sub_1D21A0538((*a3 + 16 * v80), (*a3 + 16 * *&v10[16 * v41 + 32]), (*a3 + 16 * v5), v40);
        if (v4)
        {
        }

        if (v5 < v80)
        {
          goto LABEL_100;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v10 = sub_1D21C88C8(v10);
        }

        if (v79 >= *(v10 + 2))
        {
          goto LABEL_101;
        }

        v81 = &v10[16 * v79];
        *(v81 + 4) = v80;
        *(v81 + 5) = v5;
        result = sub_1D21C883C(v41);
        v38 = *(v10 + 2);
        if (v38 <= 1)
        {
          goto LABEL_3;
        }
      }

      v46 = &v10[16 * v38 + 32];
      v47 = *(v46 - 64);
      v48 = *(v46 - 56);
      v52 = __OFSUB__(v48, v47);
      v49 = v48 - v47;
      if (v52)
      {
        goto LABEL_102;
      }

      v51 = *(v46 - 48);
      v50 = *(v46 - 40);
      v52 = __OFSUB__(v50, v51);
      v44 = v50 - v51;
      v45 = v52;
      if (v52)
      {
        goto LABEL_103;
      }

      v53 = &v10[16 * v38];
      v55 = *v53;
      v54 = *(v53 + 1);
      v52 = __OFSUB__(v54, v55);
      v56 = v54 - v55;
      if (v52)
      {
        goto LABEL_105;
      }

      v52 = __OFADD__(v44, v56);
      v57 = v44 + v56;
      if (v52)
      {
        goto LABEL_108;
      }

      if (v57 >= v49)
      {
        v75 = &v10[16 * v41 + 32];
        v77 = *v75;
        v76 = *(v75 + 1);
        v52 = __OFSUB__(v76, v77);
        v78 = v76 - v77;
        if (v52)
        {
          goto LABEL_112;
        }

        if (v44 < v78)
        {
          v41 = v38 - 2;
        }

        goto LABEL_78;
      }

      goto LABEL_57;
    }

LABEL_3:
    v7 = a3[1];
    v8 = a4;
    if (v9 >= v7)
    {
      goto LABEL_88;
    }
  }

  v29 = *a3;
  v30 = *a3 + 16 * v9;
  v31 = v11 - v9;
LABEL_30:
  v32 = *(v29 + 16 * v9 + 8);
  v33 = v31;
  v34 = v30;
  while (1)
  {
    if (*(*(v34 - 1) + 16) >= *(v32 + 16))
    {
LABEL_29:
      ++v9;
      v30 += 16;
      --v31;
      if (v9 != v7)
      {
        goto LABEL_30;
      }

      v9 = v7;
      goto LABEL_37;
    }

    if (!v29)
    {
      break;
    }

    v35 = *v34;
    *v34 = *(v34 - 1);
    *(v34 - 1) = v32;
    *(v34 - 2) = v35;
    v34 -= 2;
    if (__CFADD__(v33++, 1))
    {
      goto LABEL_29;
    }
  }

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
  return result;
}