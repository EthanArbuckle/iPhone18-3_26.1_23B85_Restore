uint64_t sub_2729F03A0@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v43[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28089E260, &qword_2729FA988);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v44 = v43 - v7;
  v8 = sub_2729FA48C();
  v48 = *(v8 - 8);
  v49 = v8;
  v9 = *(v48 + 64);
  v10 = MEMORY[0x28223BE20](v8);
  v43[0] = v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v45 = v43 - v13;
  MEMORY[0x28223BE20](v12);
  v46 = v43 - v14;
  v15 = sub_2729FA32C();
  v16 = *(v15 - 8);
  v17 = v16[8];
  MEMORY[0x28223BE20](v15);
  v19 = v43 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_2729FA46C();
  v51 = *(v20 - 8);
  v52 = v20;
  v21 = *(v51 + 64);
  MEMORY[0x28223BE20](v20);
  v50 = v43 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = v16[13];
  v23(v19, *MEMORY[0x277CF1EF8], v15);
  v24 = a1;
  v25 = a2;
  LOBYTE(a1) = sub_2729FA21C();
  v26 = v16[1];
  v26(v19, v15);
  if (a1)
  {
    v27 = v24;
    v28 = MEMORY[0x277CF2A30];
  }

  else
  {
    v23(v19, *MEMORY[0x277CF1F00], v15);
    v38 = sub_2729FA21C();
    v26(v19, v15);
    if (v38 & 1) == 0 || (v23(v19, *MEMORY[0x277CF1F08], v15), v39 = sub_2729FA21C(), v26(v19, v15), (v39))
    {
      sub_2729FA4AC();
      sub_2729F3BFC(&qword_28089E1D8, MEMORY[0x277CF30A0]);
      swift_allocError();
      sub_2729FA49C();
      swift_willThrow();
      return sub_2729F3DA8(v24, v25);
    }

    v27 = v24;
    v28 = MEMORY[0x277CF2A38];
  }

  v30 = v50;
  v29 = v51;
  v31 = v52;
  (*(v51 + 104))(v50, *v28, v52);
  v55 = MEMORY[0x277CC9318];
  v56 = MEMORY[0x277CF1C90];
  v53 = v27;
  v54 = v25;
  v32 = v25;
  v33 = v44;
  (*(v29 + 16))(v44, v30, v31);
  (*(v29 + 56))(v33, 0, 1, v31);
  sub_2729F3DFC(v27, v25);
  v34 = v46;
  sub_2729FA47C();
  v35 = v45;
  v36 = v47;
  sub_2729FA45C();
  if (v36)
  {
    sub_2729F3DA8(v27, v32);
    (*(v48 + 8))(v34, v49);
    return (*(v29 + 8))(v30, v31);
  }

  else
  {
    v41 = v48;
    v40 = v49;
    (*(v48 + 16))(v43[0], v35, v49);
    sub_2729FA3AC();
    sub_2729F3DA8(v27, v32);
    v42 = *(v41 + 8);
    v42(v35, v40);
    v42(v34, v40);
    return (*(v51 + 8))(v50, v52);
  }
}

uint64_t sub_2729F0968@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v313 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28089E1E8, &qword_2729FA910);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3 - 8);
  v294 = &v271 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v317 = &v271 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28089E1F0, &qword_2729FA918);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v289 = &v271 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28089E1F8, &qword_2729FA920);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11 - 8);
  v295 = (&v271 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v13);
  v301 = &v271 - v15;
  v310 = sub_2729FA3BC();
  v303 = *(v310 - 8);
  v16 = *(v303 + 64);
  v17 = MEMORY[0x28223BE20](v310);
  v305 = &v271 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v316 = &v271 - v19;
  v296 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28089E200, &qword_2729FA928);
  v20 = *(*(v296 - 8) + 64);
  v21 = MEMORY[0x28223BE20](v296);
  v309 = &v271 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v297 = (&v271 - v23);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28089E208, &qword_2729FA930);
  v25 = *(*(v24 - 8) + 64);
  v26 = MEMORY[0x28223BE20](v24 - 8);
  v307 = (&v271 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v26);
  v306 = (&v271 - v28);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28089E210, &qword_2729FA938);
  v30 = *(*(v29 - 8) + 64);
  MEMORY[0x28223BE20](v29 - 8);
  v300 = &v271 - v31;
  v314 = _s13ThumbnailInfoVMa();
  v304 = *(v314 - 8);
  v32 = *(v304 + 64);
  v33 = MEMORY[0x28223BE20](v314);
  v315 = &v271 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = MEMORY[0x28223BE20](v33);
  v291 = (&v271 - v36);
  v37 = MEMORY[0x28223BE20](v35);
  v299 = &v271 - v38;
  v39 = MEMORY[0x28223BE20](v37);
  v302 = &v271 - v40;
  MEMORY[0x28223BE20](v39);
  v288 = &v271 - v41;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28089E218, &qword_2729FA940);
  v43 = *(*(v42 - 8) + 64);
  v44 = MEMORY[0x28223BE20](v42 - 8);
  v308 = &v271 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = MEMORY[0x28223BE20](v44);
  v298 = (&v271 - v47);
  v48 = MEMORY[0x28223BE20](v46);
  v290 = (&v271 - v49);
  MEMORY[0x28223BE20](v48);
  v287 = &v271 - v50;
  v312 = sub_2729FA1FC();
  v292 = *(v312 - 8);
  v51 = *(v292 + 64);
  v52 = MEMORY[0x28223BE20](v312);
  v54 = &v271 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = MEMORY[0x28223BE20](v52);
  v57 = &v271 - v56;
  v58 = MEMORY[0x28223BE20](v55);
  v60 = &v271 - v59;
  MEMORY[0x28223BE20](v58);
  v62 = &v271 - v61;
  v63 = sub_2729FA05C();
  v293 = *(v63 - 8);
  v64 = *(v293 + 64);
  MEMORY[0x28223BE20](v63);
  v66 = &v271 - ((v65 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = a1;
  v68 = sub_2729F9DEC();
  v69 = v311;
  v70 = sub_2729F9FFC();
  if (v69)
  {
  }

  v286 = v67;
  v280 = v62;
  v278 = v60;
  v279 = v57;
  v311 = v54;
  v282 = v70;
  v283 = v71;
  v73 = sub_2729FA01C();
  v75 = v74;
  (*(v293 + 8))(v66, v63);
  v76 = sub_2729FA02C();
  v78 = v77;
  v284 = v68;
  sub_2729F3DFC(v282, v283);
  sub_2729F3DFC(v73, v75);
  sub_2729F3DFC(v76, v78);
  v273 = v73;
  v274 = v75;
  v271 = v76;
  v272 = v78;
  sub_2729FA34C();

  sub_2729F71F8(v79, v321);
  v80 = v321[0];
  v331 = v321[0];
  sub_2729F93A8(&v331, &v319, &qword_28089E220, &qword_2729FA948);
  v81 = sub_2729F8CC4(MEMORY[0x277D84F90]);
  v82 = v80 + 56;
  v83 = 1 << *(v80 + 32);
  v84 = -1;
  if (v83 < 64)
  {
    v84 = ~(-1 << v83);
  }

  v85 = v84 & *(v80 + 56);
  v86 = (v83 + 63) >> 6;
  v277 = v80;

  v87 = 0;
  v293 = 0;
  v88 = v316;
  v89 = v315;
  v90 = v308;
  v91 = v298;
  v275 = v80 + 56;
  v276 = v86;
  while (v85)
  {
    v95 = v87;
LABEL_13:
    v96 = (*(v277 + 48) + ((v95 << 10) | (16 * __clz(__rbit64(v85)))));
    v97 = *v96;
    v98 = v96[1];

    v99 = sub_2729F9DCC();
    v281 = sub_2729F9EAC();
    v285 = v100;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v319 = v81;
    v103 = sub_2729F5724(v97, v98);
    v104 = v81[2];
    v105 = (v102 & 1) == 0;
    v106 = v104 + v105;
    if (__OFADD__(v104, v105))
    {
      goto LABEL_110;
    }

    v107 = v102;
    if (v81[3] >= v106)
    {
      v86 = v276;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_2729F6300();
        v86 = v276;
      }

      v90 = v308;
    }

    else
    {
      sub_2729F5B1C(v106, isUniquelyReferenced_nonNull_native);
      v108 = sub_2729F5724(v97, v98);
      if ((v107 & 1) != (v109 & 1))
      {
        goto LABEL_115;
      }

      v103 = v108;
      v90 = v308;
      v86 = v276;
    }

    v85 &= v85 - 1;
    v81 = v319;
    if (v107)
    {
      v92 = (v319[7] + 16 * v103);
      v93 = v92[1];
      v94 = v285;
      *v92 = v281;
      v92[1] = v94;
    }

    else
    {
      v319[(v103 >> 6) + 8] |= 1 << v103;
      v110 = (v81[6] + 16 * v103);
      *v110 = v97;
      v110[1] = v98;
      v111 = (v81[7] + 16 * v103);
      v112 = v285;
      *v111 = v281;
      v111[1] = v112;
      v113 = v81[2];
      v114 = __OFADD__(v113, 1);
      v115 = v113 + 1;
      if (v114)
      {
        goto LABEL_114;
      }

      v81[2] = v115;
    }

    v87 = v95;
    v88 = v316;
    v89 = v315;
    v91 = v298;
    v82 = v275;
  }

  while (1)
  {
    v95 = v87 + 1;
    if (__OFADD__(v87, 1))
    {
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
      result = sub_2729FA59C();
      __break(1u);
      return result;
    }

    if (v95 >= v86)
    {
      break;
    }

    v85 = *(v82 + 8 * v95);
    ++v87;
    if (v85)
    {
      goto LABEL_13;
    }
  }

  sub_2729F9410(&v331, &qword_28089E220, &qword_2729FA948);
  sub_2729FA37C();
  v116 = swift_allocObject();
  v116[2] = sub_2729F8E20(MEMORY[0x277D84F90]);
  v281 = (v116 + 2);
  v116[3] = v117;
  v116[4] = v118;
  v285 = v116;
  v119 = v322;
  v120 = v309;
  v121 = v302;
  v122 = v290;
  if (v322)
  {
    v123 = v321[1];

    sub_2729F9F2C();
    v124 = v287;
    v277 = v123;
    sub_2729FA00C();
    v125 = v292;
    v126 = v312;
    if ((*(v292 + 48))(v124, 1, v312) == 1)
    {

      sub_2729F9410(v124, &qword_28089E218, &qword_2729FA940);
    }

    else
    {
      (*(v125 + 32))(v280, v124, v126);
      v127 = v288;
      v128 = v280;
      (*(v125 + 16))(v288, v280, v126);
      v129 = v314;
      *(v127 + *(v314 + 20)) = 0x4072C00000000000;
      *(v127 + *(v129 + 24)) = 1;
      sub_2729F2B98(v127, v277, v119, v285);

      v130 = v127;
      v91 = v298;
      sub_2729F91E0(v130);
      (*(v125 + 8))(v128, v126);
    }

    v88 = v316;
    v122 = v290;
  }

  v131 = v324;
  if (v324)
  {
    v132 = v323;

    sub_2729F9F2C();
    v287 = v132;
    sub_2729FA00C();
    v133 = v312;
    if ((*(v292 + 48))(v122, 1, v312) == 1)
    {

      sub_2729F9410(v122, &qword_28089E218, &qword_2729FA940);
    }

    else
    {
      v134 = v292;
      v135 = v122;
      v136 = v278;
      (*(v292 + 32))(v278, v135, v133);
      v137 = *(v134 + 16);
      v138 = v288;
      v137(v288, v136, v133);
      v139 = v314;
      *(v138 + *(v314 + 20)) = 0x4051800000000000;
      *(v138 + *(v139 + 24)) = 0;
      sub_2729F2B98(v138, v287, v131, v285);

      v140 = v138;
      v91 = v298;
      sub_2729F91E0(v140);
      (*(v292 + 8))(v136, v133);
    }
  }

  v141 = v326;
  if (v326)
  {
    v142 = v325;

    sub_2729F9F2C();
    v298 = v142;
    sub_2729FA00C();
    v143 = v292;
    v144 = v312;
    if ((*(v292 + 48))(v91, 1, v312) == 1)
    {

      sub_2729F9410(v91, &qword_28089E218, &qword_2729FA940);
    }

    else
    {
      v145 = *(v143 + 32);
      v146 = v279;
      v145(v279, v91, v144);
      v147 = v288;
      (*(v292 + 16))(v288, v146, v144);
      v148 = v314;
      *(v147 + *(v314 + 20)) = 0x4051800000000000;
      *(v147 + *(v148 + 24)) = 0;
      sub_2729F2B98(v147, v298, v141, v285);

      sub_2729F91E0(v147);
      (*(v292 + 8))(v146, v144);
    }
  }

  v149 = v328;
  v329 = v328;
  v150 = *(v328 + 16);
  if (v150)
  {
    v330 = v327;
    v298 = (v328 + 32);
    sub_2729F93A8(&v330, &v319, &qword_28089E228, &qword_2729FA950);
    sub_2729F93A8(&v329, &v319, &qword_28089E230, &qword_2729FA958);
    v151 = 0;
    v152 = (v292 + 48);
    v290 = (v292 + 32);
    v288 = (v292 + 16);
    v280 = (v304 + 56);
    v292 += 8;
    v287 = v149;
    while (1)
    {
      if (v151 >= v150)
      {
        goto LABEL_105;
      }

      v153 = &v298[2 * v151];
      v155 = *v153;
      v154 = v153[1];

      sub_2729F9F2C();
      sub_2729FA00C();
      v156 = v312;
      if ((*v152)(v90, 1, v312) == 1)
      {

        sub_2729F9410(v90, &qword_28089E218, &qword_2729FA940);
        v88 = v316;
        v89 = v315;
        goto LABEL_39;
      }

      v157 = v311;
      (*v290)(v311, v90, v156);
      (*v288)(v121, v157, v156);
      v158 = v314;
      *(v121 + *(v314 + 20)) = 0x4083100000000000;
      *(v121 + *(v158 + 24)) = 0;
      swift_beginAccess();
      v160 = v285[2];
      v159 = v285[3];
      v161 = v285[4];
      v162 = *(v159 + 16);
      if (v160)
      {
        v163 = v285[2];

        v164 = sub_2729F4A7C(v155, v154, v159 + 32, v162, (v160 + 16));
        v166 = v165;

        if (v166)
        {
          goto LABEL_54;
        }

        v167 = v304;
        if ((v164 & 0x8000000000000000) != 0)
        {
          goto LABEL_111;
        }
      }

      else
      {
        if (!v162)
        {
LABEL_54:
          swift_endAccess();
          v170 = v302;
          v171 = v299;
          sub_2729F923C(v302, v299);
          v172 = v314;
          v173 = v300;
          goto LABEL_60;
        }

        v164 = 0;
        v168 = (v159 + 40);
        while (1)
        {
          v169 = *(v168 - 1) == v155 && *v168 == v154;
          if (v169 || (sub_2729FA57C() & 1) != 0)
          {
            break;
          }

          ++v164;
          v168 += 2;
          if (v162 == v164)
          {
            goto LABEL_54;
          }
        }

        v167 = v304;
      }

      v173 = v300;
      v174 = v291;
      if (v164 >= *(v161 + 16))
      {
        goto LABEL_112;
      }

      sub_2729F923C(v161 + ((*(v167 + 80) + 32) & ~*(v167 + 80)) + *(v167 + 72) * v164, v291);
      swift_endAccess();
      v172 = v314;
      v175 = *(v314 + 20);
      v176 = *(v174 + v175);
      if (v176 <= 610.0)
      {
        v176 = 610.0;
      }

      *(v174 + v175) = v176;
      *(v174 + *(v172 + 24)) = *(v174 + *(v172 + 24));
      v177 = v174;
      v171 = v299;
      sub_2729F917C(v177, v299);
      v170 = v302;
LABEL_60:
      sub_2729F923C(v171, v173);
      (*v280)(v173, 0, 1, v172);
      swift_beginAccess();
      sub_2729F2FFC(v173, v155, v154);
      swift_endAccess();
      sub_2729F91E0(v171);
      sub_2729F91E0(v170);
      v178 = *(v285[4] + 16);
      v179 = sub_2729FA36C();
      (*v292)(v311, v312);
      v180 = v178 < v179;
      v88 = v316;
      v89 = v315;
      v120 = v309;
      v121 = v170;
      v90 = v308;
      v149 = v287;
      if (!v180)
      {
LABEL_61:
        sub_2729F9410(&v330, &qword_28089E228, &qword_2729FA950);
        sub_2729F9410(&v329, &qword_28089E230, &qword_2729FA958);
        break;
      }

LABEL_39:
      ++v151;
      v150 = *(v149 + 16);
      if (v151 == v150)
      {
        goto LABEL_61;
      }
    }
  }

  swift_beginAccess();
  v181 = v285[2];
  v182 = v285[3];
  v183 = v285[4];
  v299 = *(v183 + 16);
  v281 = v182 + 32;
  v292 = v303 + 16;
  v300 = (v303 + 56);
  LODWORD(v280) = *MEMORY[0x277CC6DB8];
  v291 = (v303 + 48);
  v290 = (v303 + 32);
  v279 = (v303 + 40);
  v298 = (v303 + 8);
  v278 = v181;

  v287 = v182;

  v288 = v183;

  v184 = 0;
  v185 = v317;
  while (1)
  {
    if (v184 >= v299)
    {
      v204 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28089E238, &qword_2729FA960);
      v201 = v307;
      (*(*(v204 - 8) + 56))(v307, 1, 1, v204);
    }

    else
    {
      v189 = v297;
      v190 = v288;
      if ((v184 & 0x8000000000000000) != 0)
      {
        goto LABEL_106;
      }

      if (v184 >= *(v287 + 16))
      {
        goto LABEL_107;
      }

      v191 = v296;
      v192 = *(v296 + 48);
      v193 = (v281 + 16 * v184);
      v194 = v193[1];
      *v297 = *v193;
      *(v189 + 8) = v194;
      if (v184 >= *(v190 + 2))
      {
        goto LABEL_108;
      }

      sub_2729F923C(&v190[((*(v304 + 80) + 32) & ~*(v304 + 80)) + *(v304 + 72) * v184++], v189 + v192);
      sub_2729F92A0(v189, v120, &qword_28089E200, &qword_2729FA928);
      v195 = *(v191 + 48);
      v196 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28089E238, &qword_2729FA960);
      v197 = *(v196 + 48);
      v198 = v120[1];
      v199 = v307;
      *v307 = *v120;
      v199[1] = v198;
      v200 = v120 + v195;
      v201 = v199;
      sub_2729F917C(v200, v199 + v197);
      v202 = *(*(v196 - 8) + 56);
      v203 = v196;
      v185 = v317;
      v202(v201, 0, 1, v203);
    }

    v205 = v201;
    v206 = v306;
    sub_2729F92A0(v205, v306, &qword_28089E208, &qword_2729FA930);
    v207 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28089E238, &qword_2729FA960);
    v208 = (*(*(v207 - 8) + 48))(v206, 1, v207);
    v209 = v313;
    if (v208 == 1)
    {

      sub_2729F3DA8(v282, v283);
      sub_2729F3DA8(v273, v274);
      sub_2729F3DA8(v271, v272);

      sub_2729F914C(v321);
      v267 = &v317;
      goto LABEL_102;
    }

    v311 = *v206;
    v210 = v206;
    v211 = v206[1];
    sub_2729F917C(v210 + *(v207 + 48), v89);
    v212 = v293;
    v213 = sub_2729FA20C();
    if (v212)
    {

      sub_2729F914C(v321);

      sub_2729F3DA8(v271, v272);
      sub_2729F3DA8(v273, v274);
      sub_2729F3DA8(v282, v283);
      sub_2729F91E0(v89);
      v268 = sub_2729FA3CC();
      (*(*(v268 - 8) + 8))(v209, v268);
    }

    v302 = v184;
    v215 = v88;
    v216 = v314;
    v217 = *(v89 + *(v314 + 20));
    v218 = v213;
    v219 = v89;
    v220 = v214;
    sub_2729F3DFC(v213, v214);
    v221 = v215;
    v312 = v220;
    sub_2729F03A0(v218, v220, v215);
    v293 = 0;
    v169 = *(v219 + *(v216 + 24)) == 1;
    v308 = v218;
    if (!v169)
    {
      v89 = v219;
      v227 = v310;
      goto LABEL_83;
    }

    v222 = v301;
    sub_2729F9E5C();
    v223 = v295;
    sub_2729F93A8(v222, v295, &qword_28089E1F8, &qword_2729FA920);
    v224 = sub_2729F9E4C();
    v225 = *(v224 - 8);
    v226 = (*(v225 + 48))(v223, 1, v224);
    v227 = v310;
    if (v226 != 1)
    {
      break;
    }

    sub_2729F9410(v222, &qword_28089E1F8, &qword_2729FA920);
    sub_2729F9410(v223, &qword_28089E1F8, &qword_2729FA920);
LABEL_82:
    v185 = v317;
    v89 = v315;
LABEL_83:
    (*v292)(v185, v221, v227);
    v234 = v227;
    v235 = *v300;
    (*v300)(v185, 0, 1, v227);
    v236 = sub_2729FA35C();
    v237 = v317;
    v238 = v236;
    v240 = v239;
    if ((*v291)(v317, 1, v234) == 1)
    {
      sub_2729F9410(v237, &qword_28089E1E8, &qword_2729FA910);
      v241 = *v240;
      v242 = sub_2729F5724(v311, v211);
      LOBYTE(v241) = v243;

      v244 = v238;
      if (v241)
      {
        v245 = *v240;
        v246 = swift_isUniquelyReferenced_nonNull_native();
        v318 = *v240;
        *v240 = 0x8000000000000000;
        if (!v246)
        {
          sub_2729F6080();
        }

        v247 = v318;
        v248 = *(v318[6] + 16 * v242 + 8);

        v187 = v294;
        v188 = v310;
        (*(v303 + 32))(v294, *(v247 + 56) + *(v303 + 72) * v242, v310);
        sub_2729F5DDC(v242, v247);
        v249 = *v240;
        *v240 = v247;

        v186 = 0;
      }

      else
      {
        v186 = 1;
        v187 = v294;
        v188 = v310;
      }

      v235(v187, v186, 1, v188);
      sub_2729F9410(v187, &qword_28089E1E8, &qword_2729FA910);
      v185 = v317;
      v88 = v316;
      v120 = v309;
      v184 = v302;
    }

    else
    {
      v250 = *v290;
      (*v290)(v305, v237, v234);
      v251 = *v240;
      v252 = swift_isUniquelyReferenced_nonNull_native();
      v318 = *v240;
      v253 = v318;
      *v240 = 0x8000000000000000;
      v255 = sub_2729F5724(v311, v211);
      v256 = v253[2];
      v257 = (v254 & 1) == 0;
      v258 = v256 + v257;
      if (__OFADD__(v256, v257))
      {
        goto LABEL_109;
      }

      v259 = v254;
      v244 = v238;
      if (v253[3] >= v258)
      {
        v185 = v317;
        if ((v252 & 1) == 0)
        {
          sub_2729F6080();
          v185 = v317;
        }

        v188 = v310;
      }

      else
      {
        sub_2729F579C(v258, v252);
        v260 = sub_2729F5724(v311, v211);
        if ((v259 & 1) != (v261 & 1))
        {
          goto LABEL_115;
        }

        v255 = v260;
        v188 = v310;
        v185 = v317;
      }

      v184 = v302;
      if (v259)
      {

        v262 = v318;
        (*(v303 + 40))(v318[7] + *(v303 + 72) * v255, v305, v188);
      }

      else
      {
        v262 = v318;
        v318[(v255 >> 6) + 8] |= 1 << v255;
        v263 = (v262[6] + 16 * v255);
        *v263 = v311;
        v263[1] = v211;
        v250(v262[7] + *(v303 + 72) * v255, v305, v188);
        v264 = v262[2];
        v114 = __OFADD__(v264, 1);
        v265 = v264 + 1;
        if (v114)
        {
          goto LABEL_113;
        }

        v262[2] = v265;
      }

      v89 = v315;
      v120 = v309;
      v266 = *v240;
      *v240 = v262;

      v88 = v316;
    }

    v244(&v319, 0);
    sub_2729F3DA8(v308, v312);
    (*v298)(v88, v188);
    sub_2729F91E0(v89);
  }

  v228 = (*(v225 + 88))(v223, v224);
  if (v228 != v280)
  {
    sub_2729F9410(v301, &qword_28089E1F8, &qword_2729FA920);
    (*(v225 + 8))(v223, v224);
    goto LABEL_82;
  }

  (*(v225 + 96))(v223, v224);
  v229 = *v223;
  v230 = v289;
  v231 = v293;
  sub_2729FA43C();
  v293 = v231;
  v89 = v315;
  v232 = v308;
  if (!v231)
  {
    v233 = sub_2729FA44C();
    (*(*(v233 - 8) + 56))(v230, 0, 1, v233);
    sub_2729FA39C();

    sub_2729F9410(v301, &qword_28089E1F8, &qword_2729FA920);
    v185 = v317;
    goto LABEL_83;
  }

  sub_2729F914C(v321);

  sub_2729F3DA8(v232, v312);

  sub_2729F3DA8(v271, v272);
  sub_2729F3DA8(v273, v274);
  sub_2729F3DA8(v282, v283);
  sub_2729F9410(v301, &qword_28089E1F8, &qword_2729FA920);
  (*v298)(v221, v227);
  sub_2729F91E0(v89);
  v269 = sub_2729FA3CC();
  (*(*(v269 - 8) + 8))(v313, v269);

  v267 = &v320;
LABEL_102:
  v270 = *(v267 - 32);
}

uint64_t sub_2729F2B98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28089E210, &qword_2729FA938);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v28 - v13;
  v15 = _s13ThumbnailInfoVMa();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v28 - v21;
  swift_beginAccess();
  sub_2729F2E38(a2, a3, a4[2], a4[3], a4[4], v14);
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    sub_2729F9410(v14, &qword_28089E210, &qword_2729FA938);
    swift_endAccess();
    sub_2729F923C(a1, v22);
  }

  else
  {
    sub_2729F917C(v14, v20);
    swift_endAccess();
    v23 = *(v15 + 20);
    v24 = *&v20[v23];
    if (v24 <= *(a1 + v23))
    {
      v24 = *(a1 + v23);
    }

    *&v20[v23] = v24;
    v25 = *(v15 + 24);
    if (v20[v25])
    {
      v26 = 1;
    }

    else
    {
      v26 = *(a1 + v25);
    }

    v20[v25] = v26;
    sub_2729F917C(v20, v22);
  }

  sub_2729F923C(v22, v12);
  (*(v16 + 56))(v12, 0, 1, v15);
  swift_beginAccess();

  sub_2729F2FFC(v12, a2, a3);
  swift_endAccess();
  return sub_2729F91E0(v22);
}

uint64_t sub_2729F2E38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v11 = *(a4 + 16);
  if (!a3)
  {
    if (v11)
    {
      v13 = 0;
      v22 = (a4 + 40);
      do
      {
        result = *(v22 - 1);
        if (result == a1 && *v22 == a2)
        {
          goto LABEL_4;
        }

        result = sub_2729FA57C();
        if (result)
        {
          goto LABEL_4;
        }

        ++v13;
        v22 += 2;
      }

      while (v11 != v13);
    }

LABEL_14:
    v24 = _s13ThumbnailInfoVMa();
    v18 = *(*(v24 - 8) + 56);
    v21 = v24;
    v19 = a6;
    v20 = 1;
    goto LABEL_15;
  }

  v13 = sub_2729F4A7C(a1, a2, a4 + 32, v11, (a3 + 16));
  v15 = v14;

  if (v15)
  {
    goto LABEL_14;
  }

  if ((v13 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_19;
  }

LABEL_4:
  if (v13 >= *(a5 + 16))
  {
LABEL_19:
    __break(1u);
    return result;
  }

  v17 = _s13ThumbnailInfoVMa();
  v25 = *(v17 - 8);
  sub_2729F923C(a5 + ((*(v25 + 80) + 32) & ~*(v25 + 80)) + *(v25 + 72) * v13, a6);
  v18 = *(v25 + 56);
  v19 = a6;
  v20 = 0;
  v21 = v17;
LABEL_15:

  return v18(v19, v20, 1, v21);
}

uint64_t sub_2729F2FFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = _s13ThumbnailInfoVMa();
  v8 = *(v7 - 8);
  v54 = v7;
  v55 = v8;
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v52 = &v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v53 = &v50 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v50 = &v50 - v15;
  MEMORY[0x28223BE20](v14);
  v51 = &v50 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28089E240, &qword_2729FA968);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17);
  v20 = &v50 - v19;
  v21 = *v3;
  v22 = v3[1];
  v23 = *(v22 + 16);
  if (!*v3)
  {
    if (v23)
    {
      v25 = 0;
      v32 = (v22 + 40);
      while (1)
      {
        v33 = *(v32 - 1) == a2 && *v32 == a3;
        if (v33 || (sub_2729FA57C() & 1) != 0)
        {
          break;
        }

        ++v25;
        v32 += 2;
        if (v23 == v25)
        {
          goto LABEL_12;
        }
      }

      v30 = &v20[*(v17 + 48)];
      v31 = a1;
      sub_2729F93A8(a1, v30, &qword_28089E210, &qword_2729FA938);
      v29 = 0;
      goto LABEL_21;
    }

LABEL_12:
    v30 = &v20[*(v17 + 48)];
    v31 = a1;
    sub_2729F93A8(a1, v30, &qword_28089E210, &qword_2729FA938);
LABEL_13:
    v34 = v55;
    if ((*(v55 + 48))(v30, 1, v54) == 1)
    {
      sub_2729F9410(v31, &qword_28089E210, &qword_2729FA938);
    }

    else
    {
      v36 = v53;
      sub_2729F917C(v30, v53);
      sub_2729F4340(a2, a3);

      v37 = v52;
      sub_2729F923C(v36, v52);
      v40 = v3[2];
      v39 = v3 + 2;
      v38 = v40;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *v39 = v40;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_2729F4778(0, *(v38 + 16) + 1, 1);
        v38 = *v39;
      }

      v43 = *(v38 + 16);
      v42 = *(v38 + 24);
      if (v43 >= v42 >> 1)
      {
        sub_2729F4778(v42 > 1, v43 + 1, 1);
      }

      sub_2729F9410(v31, &qword_28089E210, &qword_2729FA938);
      sub_2729F91E0(v53);
      v44 = *v39;
      *(v44 + 16) = v43 + 1;
      result = sub_2729F917C(v37, v44 + ((*(v34 + 80) + 32) & ~*(v34 + 80)) + *(v34 + 72) * v43);
      *v39 = v44;
    }

    return result;
  }

  v24 = *v3;

  v25 = sub_2729F4A7C(a2, a3, v22 + 32, v23, (v21 + 16));
  v27 = v26;
  v29 = v28;

  v30 = &v20[*(v17 + 48)];
  sub_2729F93A8(a1, v30, &qword_28089E210, &qword_2729FA938);
  v31 = a1;
  if (v27)
  {
    goto LABEL_13;
  }

LABEL_21:
  v46 = v54;
  v45 = v55;

  if ((*(v45 + 48))(v30, 1, v46) == 1)
  {
    sub_2729F6658(v25, v29);

    v47 = v50;
    sub_2729F67C0(v25, v50);
    sub_2729F9410(v31, &qword_28089E210, &qword_2729FA938);
    return sub_2729F91E0(v47);
  }

  v48 = v51;
  sub_2729F917C(v30, v51);
  v49 = v3[2];
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v49 = sub_2729F6978(v49);
  }

  result = sub_2729F9410(v31, &qword_28089E210, &qword_2729FA938);
  if ((v25 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v25 < v49[2])
  {
    result = sub_2729F9308(v48, v49 + ((*(v45 + 80) + 32) & ~*(v45 + 80)) + *(v45 + 72) * v25);
    v3[2] = v49;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t WalletOrderPreviewUnpacker.unpack(from:with:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_2729FA3FC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v10[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_2729FA38C();
  v11 = v8;
  v12 = a1;
  v13 = a2;
  sub_2729FA3CC();
  sub_2729FA3DC();
  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_2729F35E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v21[4] = a3;
  v21[3] = a2;
  v21[1] = a4;
  v24 = sub_2729FA1FC();
  v22 = *(v24 - 8);
  v5 = *(v22 + 64);
  MEMORY[0x28223BE20](v24);
  v7 = v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2729FA42C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = v21 - v14;
  v16 = [objc_opt_self() defaultManager];
  v21[2] = a1;
  sub_2729FA3EC();
  sub_2729FA40C();
  v17 = *(v9 + 8);
  v17(v15, v8);
  v18 = sub_2729FA4BC();

  LODWORD(v15) = [v16 isWritableFileAtPath_];

  if (v15)
  {
    sub_2729F9E0C();
    sub_2729FA3EC();
    sub_2729FA41C();
    v17(v13, v8);
    v23[3] = &type metadata for OrderPackageValidator;
    v23[4] = sub_2729F3C44();
    v19 = v21[5];
    sub_2729F9DDC();
    (*(v22 + 8))(v7, v24);
    if (v19)
    {
      return __swift_destroy_boxed_opaque_existential_1(v23);
    }

    else
    {
      __swift_destroy_boxed_opaque_existential_1(v23);
      sub_2729FA3CC();
      sub_2729F9DBC();
    }
  }

  else
  {
    sub_2729FA4AC();
    sub_2729F3BFC(&qword_28089E1D8, MEMORY[0x277CF30A0]);
    swift_allocError();
    sub_2729FA49C();
    return swift_willThrow();
  }
}

uint64_t sub_2729F39EC(uint64_t a1, uint64_t a2)
{
  v4 = sub_2729FA3FC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v10[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_2729FA38C();
  v11 = v8;
  v12 = a1;
  v13 = a2;
  sub_2729FA3CC();
  sub_2729FA3DC();
  return (*(v5 + 8))(v8, v4);
}

uint64_t getEnumTagSinglePayload for WalletOrderPreviewUnpacker(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for WalletOrderPreviewUnpacker(_WORD *result, int a2, int a3)
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

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

uint64_t sub_2729F3BFC(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_2729F3C44()
{
  result = qword_28089E1E0;
  if (!qword_28089E1E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28089E1E0);
  }

  return result;
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

uint64_t _s13ThumbnailInfoVMa()
{
  result = qword_28089E298;
  if (!qword_28089E298)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2729F3DA8(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_2729F3DFC(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

void sub_2729F3E50(uint64_t a1)
{
  v2 = sub_2729F4010();
  v3 = sub_2729F4018(&v18, a1, 0, 1, v2);
  v4 = *(a1 + 16);
  v5 = v18;
  if (v18 != v4)
  {
    if ((v18 & 0x8000000000000000) != 0)
    {
      goto LABEL_26;
    }

    if (v4 < v18)
    {
LABEL_27:
      __break(1u);
    }

    else
    {
      sub_2729F4BC8(a1, a1 + 32, 0, (2 * v18) | 1);
      v19 = v3;
      v20 = v6;
      if (*(a1 + 16) >= v4)
      {

        while (1)
        {
          if (v5 >= v4)
          {
            __break(1u);
LABEL_26:
            __break(1u);
            goto LABEL_27;
          }

          v7 = (a1 + 32 + 16 * v5);
          v9 = *v7;
          v8 = v7[1];
          v10 = v19;
          v11 = v20;
          v12 = *(v20 + 16);
          if (v19)
          {
            v13 = v7[1];

            sub_2729F4A7C(v9, v8, v11 + 32, v12, (v10 + 16));
            v15 = v14;

            if ((v15 & 1) == 0)
            {
              goto LABEL_8;
            }
          }

          else
          {
            if (v12)
            {
              v16 = (v20 + 40);
              do
              {
                v17 = *(v16 - 1) == v9 && *v16 == v8;
                if (v17 || (sub_2729FA57C() & 1) != 0)
                {
                  goto LABEL_9;
                }

                v16 += 2;
              }

              while (--v12);
            }
          }

          sub_2729F4340(v9, v8);
LABEL_8:

LABEL_9:
          if (++v5 == v4)
          {

            return;
          }
        }
      }
    }

    __break(1u);
  }
}

uint64_t sub_2729F4018(void *a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  v8 = *(a2 + 16);
  if (a4)
  {
    v9 = 0;
  }

  else
  {
    v9 = a3;
  }

  v10 = MEMORY[0x2743D1D00](*(a2 + 16));
  if (v10 <= v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = v10;
  }

  if (v11 <= a5)
  {
    v12 = a5;
  }

  else
  {
    v12 = v11;
  }

  if (v12 > 4)
  {
    v14 = MEMORY[0x2743D1D10]();
    sub_2729F4CA0(a2 + 32, v8, (v14 + 16));
    *a1 = v15;
    return v14;
  }

  else if (v8 >= 2)
  {
    v16 = sub_2729F40FC(a2 + 32, v8);
    result = 0;
    *a1 = v16;
  }

  else
  {
    result = 0;
    *a1 = v8;
  }

  return result;
}

char *sub_2729F40FC(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v18 = MEMORY[0x277D84F90];
  result = sub_2729F4758(0, a2 & ~(a2 >> 63), 0);
  if (v2)
  {
    if (v2 < 0)
    {
      __break(1u);
      return result;
    }

    v5 = 0;
    v6 = v18[2];
    v17 = a1;
    do
    {
      v7 = v5++;
      v8 = (a1 + 16 * v7);
      v9 = *v8;
      v10 = v8[1];
      v11 = v18 + 5;
      v12 = v6 + 1;
      while (--v12)
      {
        if (v9 != *(v11 - 1) || v10 != *v11)
        {
          v11 += 2;
          if ((sub_2729FA57C() & 1) == 0)
          {
            continue;
          }
        }

        return v7;
      }

      v14 = v18[2];
      v15 = v18[3];
      v6 = v14 + 1;

      if (v14 >= v15 >> 1)
      {
        sub_2729F4758((v15 > 1), v14 + 1, 1);
      }

      v18[2] = v6;
      v16 = &v18[2 * v14];
      v16[4] = v9;
      v16[5] = v10;
      a1 = v17;
    }

    while (v5 != v2);
  }

  return v2;
}

uint64_t sub_2729F424C(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = v2[1];
  v7 = *(v6 + 16);
  if (*v2)
  {
    v8 = *v2;

    sub_2729F4A7C(a1, a2, v6 + 32, v7, (v5 + 16));
    v10 = v9;

    if ((v10 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v7)
  {
    v12 = 0;
    v13 = (v6 + 40);
    do
    {
      v14 = *(v13 - 1) == a1 && *v13 == a2;
      if (v14 || (sub_2729FA57C() & 1) != 0)
      {
        return 0;
      }

      ++v12;
      v13 += 2;
    }

    while (v7 != v12);
  }

  sub_2729F4340(a1, a2);
  v15 = *(v2[1] + 16) - 1;
  return 1;
}

uint64_t sub_2729F4340(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v8 = v2[1];
  v6 = v2 + 1;
  v7 = v8;

  result = swift_isUniquelyReferenced_nonNull_native();
  *v6 = v8;
  if ((result & 1) == 0)
  {
    result = sub_2729F4758(0, *(v7 + 16) + 1, 1);
    v7 = *v6;
  }

  v11 = *(v7 + 16);
  v10 = *(v7 + 24);
  if (v11 >= v10 >> 1)
  {
    result = sub_2729F4758((v10 > 1), v11 + 1, 1);
    v7 = *v6;
  }

  *(v7 + 16) = v11 + 1;
  v12 = v7 + 16 * v11;
  *(v12 + 32) = a1;
  *(v12 + 40) = a2;
  v3[1] = v7;
  v13 = *v3;
  if (*v3)
  {
    swift_beginAccess();
    if (MEMORY[0x2743D1CD0](*(v13 + 16) & 0x3FLL) > v11)
    {
      v14 = *v3;
      result = swift_isUniquelyReferenced_native();
      v15 = *v3;
      if ((result & 1) == 0)
      {
        if (!v15)
        {
LABEL_16:
          __break(1u);
          return result;
        }

        v16 = *v3;
        v17 = sub_2729FA2AC();

        *v3 = v17;
        v15 = v17;
      }

      if (v15)
      {
        v18 = *(v15 + 16);
        v19 = *(*v6 + 16) + ~(*(v15 + 24) >> 6);
        return sub_2729FA24C();
      }

      __break(1u);
      goto LABEL_16;
    }
  }

  else if (v11 < 0xF)
  {
    return result;
  }

  return sub_2729F44B8();
}

uint64_t sub_2729F44B8()
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
    v6 = MEMORY[0x2743D1D00](v4);
    if (v2 <= v6)
    {
      v7 = v6;
    }

    else
    {
      v7 = v2;
    }

    v5 = sub_2729F4558(v3, v7, 0, v2);
  }

  else
  {
    v5 = 0;
  }

  *v0 = v5;
  return result;
}

uint64_t sub_2729F4558(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
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

  v8 = MEMORY[0x2743D1D00](v6);
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
    v10 = MEMORY[0x2743D1D10](v8, a4);
    sub_2729F45D8(a1, (v10 + 16));
    return v10;
  }

  return result;
}

uint64_t sub_2729F4628(uint64_t result, uint64_t a2, uint64_t *a3)
{
  v11 = result;
  if (a2)
  {
    if ((a2 & 0x8000000000000000) == 0)
    {
      v5 = 0;
      while (1)
      {
        v6 = (v11 + 16 * v5);
        v7 = *v6;
        v8 = v6[1];
        v9 = *a3;
        sub_2729FA5AC();

        sub_2729FA4CC();
        result = sub_2729FA5BC();
        if (__OFSUB__(1 << *a3, 1))
        {
          break;
        }

        v10 = sub_2729FA22C();

        if (v10)
        {
          while (1)
          {
            sub_2729FA27C();
          }
        }

        result = sub_2729FA26C();
        if (++v5 == a2)
        {
          return result;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  return result;
}

char *sub_2729F4758(char *a1, int64_t a2, char a3)
{
  result = sub_2729F4798(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_2729F4778(size_t a1, int64_t a2, char a3)
{
  result = sub_2729F48A4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_2729F4798(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28089E250, &qword_2729FA978);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_2729F48A4(size_t result, int64_t a2, char a3, void *a4)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28089E248, &qword_2729FA970);
  v10 = *(_s13ThumbnailInfoVMa() - 8);
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
  v15 = *(_s13ThumbnailInfoVMa() - 8);
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

uint64_t sub_2729F4A7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v9 = *a5;
  sub_2729FA5AC();
  sub_2729FA4CC();
  result = sub_2729FA5BC();
  if (__OFSUB__(1 << *a5, 1))
  {
    __break(1u);
  }

  else
  {
    sub_2729FA22C();
    result = sub_2729FA25C();
    if ((v11 & 1) == 0)
    {
      v12 = (a3 + 16 * result);
      if (*v12 != a1 || v12[1] != a2)
      {
        while (1)
        {
          v14 = result;
          if (sub_2729FA57C())
          {
            break;
          }

          sub_2729FA27C();
          result = sub_2729FA25C();
          if ((v15 & 1) == 0)
          {
            v16 = (a3 + 16 * result);
            if (*v16 != a1 || v16[1] != a2)
            {
              continue;
            }
          }

          return result;
        }

        return v14;
      }
    }
  }

  return result;
}

void sub_2729F4BC8(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
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
      if (v4 != a3)
      {
LABEL_7:
        swift_arrayInitWithCopy();
        return;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28089E250, &qword_2729FA978);
      v7 = swift_allocObject();
      v8 = _swift_stdlib_malloc_size(v7);
      v9 = v8 - 32;
      if (v8 < 32)
      {
        v9 = v8 - 17;
      }

      v7[2] = v5;
      v7[3] = 2 * (v9 >> 4);
      if (v4 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

uint64_t sub_2729F4CA0(uint64_t result, uint64_t a2, uint64_t *a3)
{
  if (!a2)
  {
    return 1;
  }

  if (a2 < 0)
  {
    goto LABEL_20;
  }

  v3 = a3;
  v4 = result;
  v5 = 0;
  v16 = result;
  while (2)
  {
    if (__OFADD__(v5, 1))
    {
      __break(1u);
      goto LABEL_19;
    }

    v17 = v5 + 1;
    v6 = (v4 + 16 * v5);
    v7 = *v6;
    v8 = v6[1];
    v9 = *v3;
    sub_2729FA5AC();

    sub_2729FA4CC();
    result = sub_2729FA5BC();
    if (__OFSUB__(1 << *v3, 1))
    {
LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
      return result;
    }

    sub_2729FA22C();

    v4 = v16;
    while (1)
    {
      v10 = sub_2729FA25C();
      if (v11)
      {
        break;
      }

      v12 = (v16 + 16 * v10);
      v13 = *v12 == *v6 && v12[1] == v6[1];
      if (v13 || (sub_2729FA57C() & 1) != 0)
      {
        return 0;
      }

      sub_2729FA27C();
    }

    result = sub_2729FA26C();
    ++v5;
    v3 = a3;
    if (v17 != a2)
    {
      continue;
    }

    return 1;
  }
}

uint64_t sub_2729F4E60(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v8 = *(*v3 + 40);
  sub_2729FA5AC();
  sub_2729FA4CC();
  v9 = sub_2729FA5BC();
  v10 = -1 << *(v7 + 32);
  v11 = v9 & ~v10;
  if ((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    while (1)
    {
      v13 = (*(v7 + 48) + 16 * v11);
      v14 = *v13 == a2 && v13[1] == a3;
      if (v14 || (sub_2729FA57C() & 1) != 0)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
      if (((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v18 = (*(v7 + 48) + 16 * v11);
    v19 = v18[1];
    *a1 = *v18;
    a1[1] = v19;

    return 0;
  }

  else
  {
LABEL_9:
    v15 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v3;

    sub_2729F5210(a2, a3, v11, isUniquelyReferenced_nonNull_native);
    *v3 = v20;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_2729F4FB0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28089E290, &qword_2729FA9B8);
  result = sub_2729FA53C();
  v6 = result;
  if (*(v3 + 16))
  {
    v31 = v2;
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v16 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v19 = (*(v3 + 48) + 16 * (v16 | (v7 << 6)));
      v20 = *v19;
      v21 = v19[1];
      v22 = *(v6 + 40);
      sub_2729FA5AC();
      sub_2729FA4CC();
      result = sub_2729FA5BC();
      v23 = -1 << *(v6 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v13 + 8 * (v24 >> 6))) == 0)
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
          v29 = *(v13 + 8 * v25);
          if (v29 != -1)
          {
            v14 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v24) & ~*(v13 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = (*(v6 + 48) + 16 * v14);
      *v15 = v20;
      v15[1] = v21;
      ++*(v6 + 16);
    }

    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v18 = v8[v7];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v11 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    v30 = 1 << *(v3 + 32);
    if (v30 >= 64)
    {
      bzero((v3 + 56), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v30;
    }

    v2 = v31;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_2729F5210(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_2729F4FB0(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_2729F5390();
      goto LABEL_16;
    }

    sub_2729F54EC(v8 + 1);
  }

  v10 = *v4;
  v11 = *(*v4 + 40);
  sub_2729FA5AC();
  sub_2729FA4CC();
  result = sub_2729FA5BC();
  v12 = -1 << *(v10 + 32);
  a3 = result & ~v12;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v13 = ~v12;
    do
    {
      v14 = (*(v10 + 48) + 16 * a3);
      if (*v14 == v7 && v14[1] == a2)
      {
        goto LABEL_19;
      }

      result = sub_2729FA57C();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v13;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v16 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v17 = (*(v16 + 48) + 16 * a3);
  *v17 = v7;
  v17[1] = a2;
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (!v19)
  {
    *(v16 + 16) = v20;
    return result;
  }

  __break(1u);
LABEL_19:
  result = sub_2729FA58C();
  __break(1u);
  return result;
}

void *sub_2729F5390()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28089E290, &qword_2729FA9B8);
  v2 = *v0;
  v3 = sub_2729FA52C();
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
    v10 = *(v2 + 56);
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
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

      v16 = *(v2 + 56 + 8 * v8);
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

uint64_t sub_2729F54EC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28089E290, &qword_2729FA9B8);
  result = sub_2729FA53C();
  v6 = result;
  if (*(v3 + 16))
  {
    v29 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v18 = (*(v3 + 48) + 16 * (v15 | (v7 << 6)));
      v19 = *v18;
      v20 = v18[1];
      v21 = *(v6 + 40);
      sub_2729FA5AC();

      sub_2729FA4CC();
      result = sub_2729FA5BC();
      v22 = -1 << *(v6 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v12 + 8 * v24);
          if (v28 != -1)
          {
            v13 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v6 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v29;
        goto LABEL_28;
      }

      v17 = *(v3 + 56 + 8 * v7);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v6;
  }

  return result;
}

unint64_t sub_2729F5724(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_2729FA5AC();
  sub_2729FA4CC();
  v6 = sub_2729FA5BC();

  return sub_2729F5FC8(a1, a2, v6);
}

uint64_t sub_2729F579C(uint64_t a1, int a2)
{
  v3 = v2;
  v49 = sub_2729FA3BC();
  v6 = *(v49 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v49);
  v48 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v10 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28089E258, &qword_2729FA980);
  v46 = a2;
  result = sub_2729FA55C();
  v12 = result;
  if (*(v9 + 16))
  {
    v13 = 0;
    v14 = (v9 + 64);
    v15 = 1 << *(v9 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(v9 + 64);
    v18 = (v15 + 63) >> 6;
    v42 = v2;
    v43 = (v6 + 16);
    v44 = v9;
    v45 = v6;
    v47 = (v6 + 32);
    v19 = result + 64;
    while (v17)
    {
      v22 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_17:
      v25 = v22 | (v13 << 6);
      v26 = *(v9 + 56);
      v27 = (*(v9 + 48) + 16 * v25);
      v29 = *v27;
      v28 = v27[1];
      v30 = *(v45 + 72);
      v31 = v26 + v30 * v25;
      if (v46)
      {
        (*v47)(v48, v31, v49);
      }

      else
      {
        (*v43)(v48, v31, v49);
      }

      v32 = *(v12 + 40);
      sub_2729FA5AC();
      sub_2729FA4CC();
      result = sub_2729FA5BC();
      v33 = -1 << *(v12 + 32);
      v34 = result & ~v33;
      v35 = v34 >> 6;
      if (((-1 << v34) & ~*(v19 + 8 * (v34 >> 6))) == 0)
      {
        v36 = 0;
        v37 = (63 - v33) >> 6;
        while (++v35 != v37 || (v36 & 1) == 0)
        {
          v38 = v35 == v37;
          if (v35 == v37)
          {
            v35 = 0;
          }

          v36 |= v38;
          v39 = *(v19 + 8 * v35);
          if (v39 != -1)
          {
            v20 = __clz(__rbit64(~v39)) + (v35 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v20 = __clz(__rbit64((-1 << v34) & ~*(v19 + 8 * (v34 >> 6)))) | v34 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v19 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      v21 = (*(v12 + 48) + 16 * v20);
      *v21 = v29;
      v21[1] = v28;
      result = (*v47)(*(v12 + 56) + v30 * v20, v48, v49);
      ++*(v12 + 16);
      v9 = v44;
    }

    v23 = v13;
    while (1)
    {
      v13 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v13 >= v18)
      {
        break;
      }

      v24 = v14[v13];
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v17 = (v24 - 1) & v24;
        goto LABEL_17;
      }
    }

    if ((v46 & 1) == 0)
    {

      v3 = v42;
      goto LABEL_36;
    }

    v40 = 1 << *(v9 + 32);
    v3 = v42;
    if (v40 >= 64)
    {
      bzero(v14, ((v40 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v14 = -1 << v40;
    }

    *(v9 + 16) = 0;
  }

LABEL_36:
  *v3 = v12;
  return result;
}

uint64_t sub_2729F5B1C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28089E268, &qword_2729FA990);
  v40 = a2;
  result = sub_2729FA55C();
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
      v20 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v23 = 16 * (v20 | (v9 << 6));
      v24 = (*(v5 + 48) + v23);
      v25 = *v24;
      v26 = v24[1];
      v27 = (*(v5 + 56) + v23);
      v28 = v27[1];
      v41 = *v27;
      if ((v40 & 1) == 0)
      {
      }

      v29 = *(v8 + 40);
      sub_2729FA5AC();
      sub_2729FA4CC();
      result = sub_2729FA5BC();
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
      v17 = 16 * v16;
      v18 = (*(v8 + 48) + v17);
      *v18 = v25;
      v18[1] = v26;
      v19 = (*(v8 + 56) + v17);
      *v19 = v41;
      v19[1] = v28;
      ++*(v8 + 16);
      v5 = v39;
    }

    v21 = v9;
    while (1)
    {
      v9 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v22 = v10[v9];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v13 = (v22 - 1) & v22;
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

unint64_t sub_2729F5DDC(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_2729FA51C() + 1) & ~v5;
    while (1)
    {
      v9 = *(a2 + 40);
      v10 = (*(a2 + 48) + 16 * v6);
      v11 = *v10;
      v12 = v10[1];
      sub_2729FA5AC();

      sub_2729FA4CC();
      v13 = sub_2729FA5BC();

      v14 = v13 & v7;
      if (v3 >= v8)
      {
        break;
      }

      if (v14 < v8)
      {
        goto LABEL_10;
      }

LABEL_11:
      v15 = *(a2 + 48);
      v16 = (v15 + 16 * v3);
      v17 = (v15 + 16 * v6);
      if (v3 != v6 || v16 >= v17 + 1)
      {
        *v16 = *v17;
      }

      v18 = *(a2 + 56);
      v19 = *(*(sub_2729FA3BC() - 8) + 72);
      v20 = v19 * v3;
      result = v18 + v19 * v3;
      v21 = v19 * v6;
      v22 = v18 + v19 * v6 + v19;
      if (v20 < v21 || result >= v22)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v20 == v21)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
      if (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    if (v14 < v8)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (v3 < v14)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_20:
  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v24 = *(a2 + 16);
  v25 = __OFSUB__(v24, 1);
  v26 = v24 - 1;
  if (v25)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v26;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_2729F5FC8(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_2729FA57C())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

char *sub_2729F6080()
{
  v1 = v0;
  v36 = sub_2729FA3BC();
  v38 = *(v36 - 8);
  v2 = *(v38 + 64);
  MEMORY[0x28223BE20](v36);
  v35 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28089E258, &qword_2729FA980);
  v4 = *v0;
  v5 = sub_2729FA54C();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = (v4 + 64);
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    v31 = v1;
    v32 = v4 + 64;
    if (v6 != v4 || result >= &v8[8 * v9])
    {
      result = memmove(result, v8, 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v37 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v4 + 64);
    v15 = (v12 + 63) >> 6;
    v33 = v38 + 32;
    v34 = v38 + 16;
    if (v14)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v39 = (v14 - 1) & v14;
LABEL_14:
        v19 = v16 | (v10 << 6);
        v20 = 16 * v19;
        v21 = (*(v4 + 48) + 16 * v19);
        v22 = *v21;
        v23 = v21[1];
        v24 = v38;
        v25 = *(v38 + 72) * v19;
        v26 = v35;
        v27 = v36;
        (*(v38 + 16))(v35, *(v4 + 56) + v25, v36);
        v28 = v37;
        v29 = (*(v37 + 48) + v20);
        *v29 = v22;
        v29[1] = v23;
        (*(v24 + 32))(*(v28 + 56) + v25, v26, v27);

        v14 = v39;
      }

      while (v39);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {

        v1 = v31;
        v6 = v37;
        goto LABEL_18;
      }

      v18 = *(v32 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v39 = (v18 - 1) & v18;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }

  return result;
}

void *sub_2729F6300()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28089E268, &qword_2729FA990);
  v2 = *v0;
  v3 = sub_2729FA54C();
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = (*(v2 + 56) + v17);
        v22 = *v21;
        v23 = v21[1];
        v24 = (*(v4 + 48) + v17);
        *v24 = v20;
        v24[1] = v19;
        v25 = (*(v4 + 56) + v17);
        *v25 = v22;
        v25[1] = v23;
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

uint64_t sub_2729F6478(uint64_t result, char a2)
{
  if (result < 0)
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  v3 = v2;
  v5 = result;
  v8 = v2[1];
  v6 = v2 + 1;
  v7 = v8;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v6 = v8;
  if (isUniquelyReferenced_nonNull_native && v5 <= *(v7 + 24) >> 1)
  {
    v10 = *v3;
    if (*v3)
    {
      goto LABEL_5;
    }
  }

  else
  {
    if (*(v7 + 16) <= v5)
    {
      v14 = v5;
    }

    else
    {
      v14 = *(v7 + 16);
    }

    sub_2729F4758(isUniquelyReferenced_nonNull_native, v14, 0);
    v7 = *v6;
    v10 = *v3;
    if (*v3)
    {
LABEL_5:
      swift_beginAccess();
      v11 = *(v10 + 16) & 0x3FLL;
      v12 = MEMORY[0x2743D1D00](v5);
      if (a2)
      {
        v13 = v12;
        if (v11 >= v12)
        {
          goto LABEL_20;
        }
      }

      else
      {
        v16 = v12;
        swift_beginAccess();
        v12 = v16;
        v13 = *(v10 + 24) & 0x3FLL;
        if (v11 >= v12)
        {
          goto LABEL_20;
        }
      }

LABEL_16:
      if (v13 <= v12)
      {
        v15 = v12;
      }

      else
      {
        v15 = v13;
      }

      goto LABEL_30;
    }
  }

  v12 = MEMORY[0x2743D1D00](v5);
  v11 = 0;
  if (a2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v12 > 0)
  {
    goto LABEL_16;
  }

LABEL_20:
  v17 = *(v7 + 16);
  if (v13 <= v12)
  {
    v18 = v12;
  }

  else
  {
    v18 = v13;
  }

  result = MEMORY[0x2743D1D00](*(v7 + 16));
  if (result <= v18)
  {
    v19 = v18;
  }

  else
  {
    v19 = result;
  }

  if (v19 < v11)
  {
    if (v13 <= v19)
    {
      v15 = v19;
    }

    else
    {
      v15 = v13;
    }

LABEL_30:
    v20 = sub_2729F4558(v7, v15, 0, v13);

    *v3 = v20;
    return result;
  }

  if (!v10 || (v21 = *v3, result = swift_isUniquelyReferenced_native(), (result & 1) != 0))
  {
    v22 = *v3;
    if (*v3)
    {
      goto LABEL_35;
    }

LABEL_39:
    if (!v13)
    {
      return result;
    }

    __break(1u);
    goto LABEL_41;
  }

  if (!*v3)
  {
LABEL_42:
    __break(1u);
    return result;
  }

  v23 = *v3;
  v22 = sub_2729FA2AC();

  *v3 = v22;
  if (!v22)
  {
    goto LABEL_39;
  }

LABEL_35:
  result = swift_beginAccess();
  if ((*(v22 + 24) & 0x3FLL) != v13)
  {
    *(v22 + 24) = *(v22 + 24) & 0xFFFFFFFFFFFFFFC0 | v13 & 0x3F;
  }

  return result;
}

unint64_t sub_2729F6658(int64_t a1, uint64_t a2)
{
  v4 = v2[1];
  v5 = *(v4 + 16);
  v6 = *v2;
  if (!*v2)
  {
    if (!v5)
    {
      goto LABEL_16;
    }

    return sub_2729F68DC(a1);
  }

  swift_beginAccess();
  if ((*(v6 + 16) & 0x3FLL) == (*(v6 + 24) & 0x3FLL))
  {
    if (!v5)
    {
      goto LABEL_16;
    }
  }

  else if (v5 <= MEMORY[0x2743D1CE0]())
  {
LABEL_16:
    v13 = sub_2729F68DC(a1);
    sub_2729F44B8();
    return v13;
  }

  v8 = *v2;
  result = swift_isUniquelyReferenced_native();
  v10 = *v2;
  if ((result & 1) == 0)
  {
    if (!v10)
    {
      goto LABEL_20;
    }

    v11 = *v2;
    v12 = sub_2729FA2AC();

    *v2 = v12;
    v10 = v12;
  }

  if (v10)
  {

    result = sub_2729F698C(a2, (v10 + 16), v10 + 32, v2);
    if (__OFADD__(a1, 1))
    {
      __break(1u);
    }

    else if (a1 + 1 >= a1)
    {

      sub_2729F6B84(a1, a1 + 1, v4, (v10 + 16));

      return sub_2729F68DC(a1);
    }

    __break(1u);
  }

  __break(1u);
LABEL_20:
  __break(1u);
  return result;
}

size_t sub_2729F67C0@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_2729F6978(v5);
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
    v9 = *(_s13ThumbnailInfoVMa() - 8);
    v10 = *(v9 + 72);
    v11 = v5 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + v10 * a1;
    result = sub_2729F917C(v11, a2);
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

uint64_t sub_2729F68DC(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_2729F6964(v3);
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
    v9 = *(v7 + 40);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

unint64_t sub_2729F698C(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v6 = a1;
  v23 = sub_2729FA22C();
  sub_2729FA27C();
  if (v23)
  {
    v7 = sub_2729FA23C();
    while (1)
    {
      result = sub_2729FA25C();
      if (v10)
      {
LABEL_23:
        __break(1u);
        return result;
      }

      if ((result & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_21:
        __break(1u);
LABEL_22:
        __break(1u);
        goto LABEL_23;
      }

      v11 = *(a4 + 8);
      if (result >= *(v11 + 16))
      {
        goto LABEL_21;
      }

      v12 = *a2;
      v13 = v11 + 16 * result;
      v14 = *(v13 + 32);
      v15 = *(v13 + 40);
      sub_2729FA5AC();

      sub_2729FA4CC();
      v16 = sub_2729FA5BC();

      v17 = 1 << *a2;
      v18 = v17 - 1;
      if (__OFSUB__(v17, 1))
      {
        goto LABEL_22;
      }

      v19 = v18 & v16;
      if (v6 >= v7)
      {
        break;
      }

      if (v19 < v7)
      {
        goto LABEL_14;
      }

LABEL_15:
      v20 = sub_2729FA25C();
      if ((v21 & 1) == 0)
      {
        v8 = ((v18 & ((v20 - (a2[1] >> 6)) >> 63)) + v20 - (a2[1] >> 6)) ^ v18;
      }

      v6 = a1;
      sub_2729FA24C();
LABEL_5:
      sub_2729FA27C();
    }

    if (v19 < v7)
    {
      goto LABEL_5;
    }

LABEL_14:
    if (v6 < v19)
    {
      goto LABEL_5;
    }

    goto LABEL_15;
  }

  return sub_2729FA24C();
}

uint64_t sub_2729F6B84(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v5 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    goto LABEL_58;
  }

  if (v5 >= 1)
  {
    v8 = result;
    v9 = *(a3 + 16);
    if (result < (v9 - v5) / 2)
    {
      result = MEMORY[0x2743D1CD0](*a4 & 0x3F);
      if (result / 3 > v8)
      {
        if (v8 < 0)
        {
LABEL_62:
          __break(1u);
          goto LABEL_63;
        }

        if (v9 < v8)
        {
LABEL_63:
          __break(1u);
          goto LABEL_64;
        }

        v10 = a3;

        if (v8)
        {
          v11 = 0;
          while (1)
          {
            v12 = (v10 + 32 + 16 * v11);
            v13 = *v12;
            v14 = v12[1];
            v15 = *a4;
            sub_2729FA5AC();

            sub_2729FA4CC();
            result = sub_2729FA5BC();
            if (__OFSUB__(1 << *a4, 1))
            {
              break;
            }

            if (sub_2729FA22C())
            {
              while (1)
              {
                v16 = sub_2729FA25C();
                if ((v17 & 1) == 0 && v16 == v11)
                {
                  break;
                }

                sub_2729FA27C();
              }
            }

            result = v11 + v5;
            if (__OFADD__(v11, v5))
            {
              goto LABEL_55;
            }

            ++v11;
            sub_2729FA26C();

            if (v11 == v8)
            {
              goto LABEL_17;
            }
          }

          __break(1u);
LABEL_55:
          __break(1u);
          goto LABEL_56;
        }

LABEL_17:

        goto LABEL_18;
      }

      sub_2729FA22C();
      v24 = sub_2729FA25C();
      if ((v25 & 1) != 0 || v24 >= v8)
      {
LABEL_33:
        result = sub_2729FA27C();
LABEL_18:
        v18 = a4[1];
        if (__OFSUB__(v18 >> 6, v5))
        {
LABEL_60:
          __break(1u);
          goto LABEL_61;
        }

        v19 = 1 << *a4;
        v20 = __OFSUB__(v19, 1);
        v21 = v19 - 1;
        if (v20)
        {
LABEL_61:
          __break(1u);
          goto LABEL_62;
        }

        v22 = (v21 & (((v18 >> 6) - v5) >> 63)) + (v18 >> 6) - v5;
        if (v22 < v21)
        {
          v21 = 0;
        }

        a4[1] = a4[1] & 0x3F | ((v22 - v21) << 6);
        return result;
      }

      if (!__OFADD__(v24, v5))
      {
        sub_2729FA26C();
        goto LABEL_33;
      }

      __break(1u);
LABEL_39:
      sub_2729FA22C();
      v26 = sub_2729FA25C();
      if ((v27 & 1) == 0 && v26 >= v4)
      {
        v20 = __OFSUB__(v26, v5);
        result = v26 - v5;
        if (v20)
        {
LABEL_56:
          __break(1u);
LABEL_57:
          __break(1u);
LABEL_58:
          __break(1u);
          goto LABEL_59;
        }

        sub_2729FA26C();
      }

      return sub_2729FA27C();
    }

    v4 = a2;
    v23 = v9 - a2;
    if (__OFSUB__(v9, a2))
    {
LABEL_59:
      __break(1u);
      goto LABEL_60;
    }

    result = MEMORY[0x2743D1CD0](*a4 & 0x3F);
    if (v23 >= result / 3)
    {
      goto LABEL_39;
    }

    if (v9 < v4)
    {
LABEL_64:
      __break(1u);
      goto LABEL_65;
    }

    if (v4 < 0)
    {
LABEL_65:
      __break(1u);
      return result;
    }

    if (v9 != v4)
    {
      do
      {
        v28 = (a3 + 32 + 16 * v4);
        v29 = *v28;
        v30 = v28[1];
        v31 = *a4;
        sub_2729FA5AC();

        sub_2729FA4CC();
        result = sub_2729FA5BC();
        if (__OFSUB__(1 << *a4, 1))
        {
          goto LABEL_57;
        }

        if (sub_2729FA22C())
        {
          while (1)
          {
            v32 = sub_2729FA25C();
            if ((v33 & 1) == 0 && v32 == v4)
            {
              break;
            }

            sub_2729FA27C();
          }
        }

        sub_2729FA26C();
      }

      while (++v4 != v9);
    }
  }

  return result;
}

uint64_t sub_2729F6FF0()
{
  v1 = sub_2729FA1EC();
  v17 = *(v1 - 8);
  v2 = *(v17 + 64);
  (MEMORY[0x28223BE20])();
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_2729FA05C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = (MEMORY[0x28223BE20])();
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v16 - v11;
  sub_2729F9DEC();
  v13 = sub_2729FA01C();
  if (v0)
  {
  }

  sub_2729F3DA8(v13, v14);
  (*(v6 + 32))(v12, v10, v5);
  sub_2729FA1DC();
  sub_2729FA1CC();

  (*(v17 + 8))(v4, v1);
  return (*(v6 + 8))(v12, v5);
}

uint64_t sub_2729F71F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v248 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28089E270, &qword_2729FA998);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v231 = &v219 - v5;
  v232 = sub_2729F9FAC();
  v230 = *(v232 - 8);
  v6 = *(v230 + 64);
  MEMORY[0x28223BE20](v232);
  v229 = &v219 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v268 = sub_2729F9E9C();
  v280 = *(v268 - 8);
  v8 = *(v280 + 64);
  MEMORY[0x28223BE20](v268);
  v267 = &v219 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2729F9FCC();
  v236 = *(v10 - 8);
  v237 = v10;
  v11 = *(v236 + 64);
  MEMORY[0x28223BE20](v10);
  v250 = &v219 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28089E278, &qword_2729FA9A0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v242 = &v219 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v243 = &v219 - v17;
  v264 = sub_2729FA04C();
  v225 = *(v264 - 8);
  v18 = *(v225 + 64);
  MEMORY[0x28223BE20](v264);
  v281 = &v219 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_2729FA18C();
  v227 = *(v20 - 8);
  v228 = v20;
  v21 = *(v227 + 64);
  MEMORY[0x28223BE20](v20);
  v226 = &v219 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_2729FA16C();
  v223 = *(v23 - 8);
  v224 = v23;
  v24 = *(v223 + 64);
  MEMORY[0x28223BE20](v23);
  v222 = &v219 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v262 = sub_2729FA14C();
  v260 = *(v262 - 8);
  v26 = *(v260 + 64);
  MEMORY[0x28223BE20](v262);
  v256 = &v219 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v279 = sub_2729FA1BC();
  v259 = *(v279 - 1);
  v28 = *(v259 + 64);
  MEMORY[0x28223BE20](v279);
  v263 = &v219 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28089E280, &qword_2729FA9A8);
  v31 = *(*(v30 - 8) + 64);
  MEMORY[0x28223BE20](v30 - 8);
  v235 = &v219 - v32;
  v33 = sub_2729F9F1C();
  v240 = *(v33 - 8);
  v241 = v33;
  v34 = *(v240 + 64);
  MEMORY[0x28223BE20](v33);
  v244 = &v219 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v269 = sub_2729F9FEC();
  v282 = *(v269 - 8);
  v36 = *(v282 + 64);
  v37 = MEMORY[0x28223BE20](v269);
  v278 = &v219 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v37);
  v285 = &v219 - v39;
  v287 = sub_2729F9F6C();
  v283 = *(v287 - 8);
  v40 = *(v283 + 64);
  v41 = MEMORY[0x28223BE20](v287);
  v43 = &v219 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = MEMORY[0x28223BE20](v41);
  v46 = &v219 - v45;
  MEMORY[0x28223BE20](v44);
  v48 = &v219 - v47;
  v257 = sub_2729F9ECC();
  v270 = *(v257 - 8);
  v49 = *(v270 + 64);
  v50 = MEMORY[0x28223BE20](v257);
  v249 = &v219 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v50);
  v284 = &v219 - v52;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28089E288, &qword_2729FA9B0);
  v54 = *(*(v53 - 8) + 64);
  v55 = MEMORY[0x28223BE20](v53 - 8);
  v255 = &v219 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = MEMORY[0x28223BE20](v55);
  v265 = &v219 - v58;
  v59 = MEMORY[0x28223BE20](v57);
  v286 = (&v219 - v60);
  MEMORY[0x28223BE20](v59);
  v246 = &v219 - v61;
  v62 = sub_2729F9E3C();
  v233 = *(v62 - 8);
  v234 = v62;
  v63 = *(v233 + 64);
  MEMORY[0x28223BE20](v62);
  v65 = &v219 - ((v64 + 15) & 0xFFFFFFFFFFFFFFF0);
  v247 = sub_2729FA0FC();
  v245 = *(v247 - 8);
  v66 = *(v245 + 64);
  MEMORY[0x28223BE20](v247);
  v68 = &v219 - ((v67 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = sub_2729F9EDC();
  v70 = *(v69 - 8);
  v71 = *(v70 + 64);
  MEMORY[0x28223BE20](v69);
  v73 = &v219 - ((v72 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v296 = MEMORY[0x277D84FA0];
  memset(&v296[8], 0, 48);
  sub_2729F3E50(MEMORY[0x277D84F90]);
  *&v296[56] = v74;
  v297 = v75;
  sub_2729F9DFC();
  if ((*(v70 + 88))(v73, v69) != *MEMORY[0x277CC6FA8])
  {

    (*(v70 + 8))(v73, v69);
LABEL_95:
    v216 = v248;
    v291 = *&v296[32];
    v292 = *&v296[48];
    v293 = v297;
    v289 = *v296;
    v290 = *&v296[16];
    v294[2] = *&v296[32];
    v294[3] = *&v296[48];
    v295 = v297;
    v294[0] = *v296;
    v294[1] = *&v296[16];
    sub_2729F9370(&v289, &v288);
    result = sub_2729F914C(v294);
    v217 = v292;
    *(v216 + 32) = v291;
    *(v216 + 48) = v217;
    *(v216 + 64) = v293;
    v218 = v290;
    *v216 = v289;
    *(v216 + 16) = v218;
    return result;
  }

  v221 = a1;
  (*(v70 + 96))(v73, v69);
  (*(v245 + 32))(v68, v73, v247);
  v258 = v68;
  sub_2729FA0DC();
  v76 = sub_2729F9E1C();
  sub_2729F4E60(v294, v76, v77);

  v78 = sub_2729F9E2C();
  if (v79)
  {
    *&v296[8] = v78;
    *&v296[16] = v79;
  }

  v220 = v65;
  v80 = sub_2729FA09C();
  v82 = v269;
  if (v81)
  {
    sub_2729F4E60(v294, v80, v81);
  }

  v83 = v246;
  sub_2729FA0AC();
  v84 = v286;
  sub_2729F93A8(v83, v286, &qword_28089E288, &qword_2729FA9B0);
  v85 = v257;
  v253 = *(v270 + 48);
  v254 = v270 + 48;
  v86 = v253(v84, 1, v257);
  v87 = v250;
  if (v86 == 1)
  {
    sub_2729F9410(v84, &qword_28089E288, &qword_2729FA9B0);
  }

  else
  {
    v88 = v270;
    v89 = v284;
    (*(v270 + 32))(v284, v84, v85);
    v90 = sub_2729F9EBC();
    if (v91)
    {
      sub_2729F4E60(v294, v90, v91);
    }

    (*(v88 + 8))(v89, v85);
    v87 = v250;
  }

  v92 = sub_2729FA0EC();
  v93 = *(v92 + 16);
  if (v93)
  {
    v286 = *(v283 + 16);
    v94 = *(v283 + 80);
    v277 = v92;
    v95 = v92 + ((v94 + 32) & ~v94);
    v284 = *(v283 + 72);
    v96 = (v283 + 8);
    (v286)(v48, v95, v287);
    while (1)
    {
      v98 = sub_2729F9F4C();
      sub_2729F4E60(v294, v98, v99);

      v100 = sub_2729F9F5C();
      if (v101)
      {
        sub_2729F4E60(v294, v100, v101);
      }

      v102 = sub_2729F9F3C();
      if (v103)
      {
        sub_2729F424C(v102, v103);
      }

      v97 = v287;
      (*v96)(v48, v287);
      v95 += v284;
      if (!--v93)
      {
        break;
      }

      (v286)(v48, v95, v97);
    }

    v87 = v250;
    v82 = v269;
  }

  else
  {
  }

  result = sub_2729FA07C();
  v277 = *(result + 16);
  if (v277)
  {
    v105 = 0;
    v275 = result + ((*(v282 + 80) + 32) & ~*(v282 + 80));
    v273 = v282 + 88;
    v274 = v282 + 16;
    v272 = *MEMORY[0x277CC7728];
    v271 = (v282 + 8);
    v266 = (v282 + 96);
    v261 = *MEMORY[0x277CC7720];
    v252 = (v260 + 32);
    v239 = (v270 + 32);
    v238 = (v270 + 8);
    v251 = (v260 + 8);
    v106 = v259;
    v259 += 8;
    v260 = v106 + 32;
    v286 = (v283 + 16);
    v107 = (v283 + 8);
    v276 = result;
    while (1)
    {
      if (v105 >= *(result + 16))
      {
        __break(1u);
        goto LABEL_97;
      }

      v108 = v282;
      v109 = *(v282 + 72);
      v284 = v105;
      v110 = *(v282 + 16);
      v111 = v285;
      v110(v285, v275 + v109 * v105, v82);
      v112 = v278;
      v110(v278, v111, v82);
      v113 = (*(v108 + 88))(v112, v82);
      if (v113 == v272)
      {
        break;
      }

      v119 = v265;
      if (v113 == v261)
      {
        (*v266)(v112, v82);
        v120 = v256;
        (*v252)(v256, v112, v262);
        v121 = sub_2729FA10C();
        sub_2729F4E60(v294, v121, v122);

        v123 = sub_2729FA11C();
        if (v124)
        {
          sub_2729F4E60(v294, v123, v124);
        }

        v125 = sub_2729FA12C();
        if (v126)
        {
          sub_2729F4E60(v294, v125, v126);
        }

        sub_2729FA13C();
        v127 = v255;
        sub_2729F93A8(v119, v255, &qword_28089E288, &qword_2729FA9B0);
        v128 = v257;
        if (v253(v127, 1, v257) == 1)
        {
          sub_2729F9410(v119, &qword_28089E288, &qword_2729FA9B0);
          (*v251)(v120, v262);
          sub_2729F9410(v127, &qword_28089E288, &qword_2729FA9B0);
        }

        else
        {
          v131 = v249;
          (*v239)(v249, v127, v128);
          v132 = sub_2729F9EBC();
          if (v133)
          {
            sub_2729F4E60(v294, v132, v133);
          }

          (*v238)(v131, v128);
          sub_2729F9410(v265, &qword_28089E288, &qword_2729FA9B0);
          (*v251)(v120, v262);
        }

        v82 = v269;
        goto LABEL_46;
      }

      v129 = v112;
      v130 = *v271;
      (*v271)(v285, v82);
      v130(v129, v82);
LABEL_26:
      result = v276;
      v105 = v284 + 1;
      if (v284 + 1 == v277)
      {

        v87 = v250;
        goto LABEL_57;
      }
    }

    (*v266)(v112, v82);
    v114 = v263;
    (*v260)(v263, v112, v279);
    v115 = sub_2729FA19C();
    if (v116)
    {
      sub_2729F4E60(v294, v115, v116);
    }

    v117 = sub_2729FA1AC();
    if (v118)
    {
      sub_2729F4E60(v294, v117, v118);
    }

    (*v259)(v114, v279);
LABEL_46:
    v134 = sub_2729F9FDC();
    v135 = *(v134 + 16);
    if (v135)
    {
      v136 = *(v283 + 80);
      v270 = v134;
      v137 = v134 + ((v136 + 32) & ~v136);
      v138 = *(v283 + 72);
      v139 = *(v283 + 16);
      v139(v46, v137, v287);
      while (1)
      {
        v141 = sub_2729F9F4C();
        sub_2729F4E60(v294, v141, v142);

        v143 = sub_2729F9F5C();
        if (v144)
        {
          sub_2729F4E60(v294, v143, v144);
        }

        v145 = sub_2729F9F3C();
        if (v146)
        {
          sub_2729F424C(v145, v146);
        }

        v140 = v287;
        (*v107)(v46, v287);
        v137 += v138;
        if (!--v135)
        {
          break;
        }

        v139(v46, v137, v140);
      }

      v82 = v269;
    }

    else
    {
    }

    (*v271)(v285, v82);
    goto LABEL_26;
  }

LABEL_57:
  v147 = v235;
  sub_2729FA0BC();
  v149 = v240;
  v148 = v241;
  v150 = (*(v240 + 48))(v147, 1, v241);
  v152 = v267;
  v151 = v268;
  v153 = v242;
  if (v150 == 1)
  {
    sub_2729F9410(v147, &qword_28089E280, &qword_2729FA9A8);
  }

  else
  {
    (*(v149 + 32))(v244, v147, v148);
    v154 = sub_2729F9EEC();
    v155 = *(v154 + 16);
    if (v155)
    {
      v156 = v224;
      v286 = *(v223 + 16);
      v157 = *(v223 + 80);
      v282 = v154;
      v158 = v154 + ((v157 + 32) & ~v157);
      v285 = *(v223 + 72);
      v284 = v223 + 8;
      v159 = v222;
      do
      {
        (v286)(v159, v158, v156);
        v160 = sub_2729FA15C();
        v162 = v161;
        (*v284)(v159, v156);
        sub_2729F4E60(v294, v160, v162);

        v158 += v285;
        --v155;
      }

      while (v155);
    }

    v163 = sub_2729F9F0C();
    v164 = *(v163 + 16);
    if (v164)
    {
      v165 = (v163 + 40);
      do
      {
        v166 = *(v165 - 1);
        v167 = *v165;

        sub_2729F4E60(v294, v166, v167);

        v165 += 2;
        --v164;
      }

      while (v164);
    }

    v168 = sub_2729F9EFC();
    v169 = *(v168 + 16);
    if (v169)
    {
      v170 = v228;
      v286 = *(v227 + 16);
      v171 = *(v227 + 80);
      v284 = v168;
      v172 = v168 + ((v171 + 32) & ~v171);
      v285 = *(v227 + 72);
      v173 = (v227 + 8);
      v174 = v226;
      v175 = (v225 + 8);
      do
      {
        (v286)(v174, v172, v170);
        sub_2729FA17C();
        (*v173)(v174, v170);
        v176 = sub_2729FA03C();
        sub_2729F4E60(v294, v176, v177);
        v178 = v281;

        (*v175)(v178, v264);
        v172 += v285;
        --v169;
      }

      while (v169);
    }

    (*(v240 + 8))(v244, v241);
    v152 = v267;
    v151 = v268;
    v87 = v250;
    v153 = v242;
  }

  v179 = v243;
  sub_2729FA06C();
  sub_2729F93A8(v179, v153, &qword_28089E278, &qword_2729FA9A0);
  v180 = v236;
  v181 = v237;
  if ((*(v236 + 48))(v153, 1, v237) == 1)
  {
    sub_2729F9410(v153, &qword_28089E278, &qword_2729FA9A0);
  }

  else
  {
    (*(v180 + 32))(v87, v153, v181);
    v182 = sub_2729F9FBC();
    if (v183)
    {
      sub_2729F4E60(v294, v182, v183);
    }

    (*(v180 + 8))(v87, v181);
  }

  result = sub_2729FA0CC();
  v184 = result;
  v284 = *(result + 16);
  if (!v284)
  {
LABEL_92:

    v204 = v231;
    v205 = v258;
    sub_2729FA08C();
    v206 = v230;
    v207 = v232;
    if ((*(v230 + 48))(v204, 1, v232) == 1)
    {

      sub_2729F9410(v243, &qword_28089E278, &qword_2729FA9A0);
      sub_2729F9410(v246, &qword_28089E288, &qword_2729FA9B0);
      (*(v233 + 8))(v220, v234);
      (*(v245 + 8))(v205, v247);
      sub_2729F9410(v204, &qword_28089E270, &qword_2729FA998);
    }

    else
    {
      v208 = v205;
      v209 = v229;
      (*(v206 + 32))(v229, v204, v207);
      v210 = sub_2729F9F7C();
      sub_2729F4E60(v294, v210, v211);

      *&v296[24] = sub_2729F9F9C();
      *&v296[32] = v212;
      v213 = sub_2729F9F8C();
      v215 = v214;

      (*(v206 + 8))(v209, v207);
      sub_2729F9410(v243, &qword_28089E278, &qword_2729FA9A0);
      sub_2729F9410(v246, &qword_28089E288, &qword_2729FA9B0);
      (*(v233 + 8))(v220, v234);
      (*(v245 + 8))(v208, v247);
      *&v296[40] = v213;
      *&v296[48] = v215;
    }

    goto LABEL_95;
  }

  v185 = 0;
  v282 = result + ((*(v280 + 80) + 32) & ~*(v280 + 80));
  v281 = (v280 + 16);
  v186 = (v283 + 8);
  v278 = result;
  v279 = (v280 + 8);
  while (v185 < *(v184 + 2))
  {
    (*(v280 + 16))(v152, v282 + *(v280 + 72) * v185, v151);
    v187 = sub_2729F9E6C();
    if (v188)
    {
      sub_2729F4E60(v294, v187, v188);
    }

    v189 = sub_2729F9E7C();
    if (v190)
    {
      sub_2729F4E60(v294, v189, v190);
    }

    v191 = sub_2729F9E8C();
    v192 = v191[2];
    if (v192)
    {
      v285 = v185;
      v193 = (*(v283 + 80) + 32) & ~*(v283 + 80);
      v286 = v191;
      v194 = v191 + v193;
      v195 = *(v283 + 72);
      v196 = *(v283 + 16);
      v196(v43, v191 + v193, v287);
      while (1)
      {
        v198 = sub_2729F9F4C();
        sub_2729F4E60(v294, v198, v199);

        v200 = sub_2729F9F5C();
        if (v201)
        {
          sub_2729F4E60(v294, v200, v201);
        }

        v202 = sub_2729F9F3C();
        if (v203)
        {
          sub_2729F424C(v202, v203);
        }

        v197 = v287;
        (*v186)(v43, v287);
        v194 += v195;
        if (!--v192)
        {
          break;
        }

        v196(v43, v194, v197);
      }

      v152 = v267;
      v151 = v268;
      v184 = v278;
      v185 = v285;
    }

    else
    {
    }

    ++v185;
    result = (*v279)(v152, v151);
    if (v185 == v284)
    {
      goto LABEL_92;
    }
  }

LABEL_97:
  __break(1u);
  return result;
}

unint64_t sub_2729F8CC4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28089E268, &qword_2729FA990);
    v3 = sub_2729FA56C();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_2729F5724(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v8;
      v12[1] = v7;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
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

uint64_t sub_2729F8DD8()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2729F8E20(uint64_t a1)
{
  v2 = _s13ThumbnailInfoVMa();
  v32 = *(v2 - 8);
  v3 = *(v32 + 64);
  v4 = MEMORY[0x28223BE20](v2 - 8);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v29 - v7;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28089E200, &qword_2729FA928);
  v9 = *(v33 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v33);
  v12 = (&v29 - v11);
  v13 = MEMORY[0x277D84F90];
  v35 = 0;
  v36 = MEMORY[0x277D84F90];
  v14 = *(a1 + 16);
  sub_2729F6478(v14, 0);
  v34 = v13;
  sub_2729F4778(0, v14, 0);
  v15 = v34;
  v31 = v14;
  if (!v14)
  {
    return v35;
  }

  v16 = 0;
  v30 = a1 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
  v29 = *(v9 + 72);
  while (1)
  {
    sub_2729F93A8(v30 + v29 * v16, v12, &qword_28089E200, &qword_2729FA928);
    v18 = *v12;
    v17 = v12[1];
    sub_2729F917C(v12 + *(v33 + 48), v8);
    v19 = v35;
    v20 = v36;
    v21 = *(v36 + 16);
    if (!v35)
    {
      break;
    }

    sub_2729F4A7C(v18, v17, v20 + 32, v21, (v19 + 16));
    v23 = v22;

    if ((v23 & 1) == 0)
    {
      goto LABEL_20;
    }

LABEL_14:
    sub_2729F4340(v18, v17);
    sub_2729F923C(v8, v6);
    v34 = v15;
    v28 = *(v15 + 16);
    v27 = *(v15 + 24);
    if (v28 >= v27 >> 1)
    {
      sub_2729F4778(v27 > 1, v28 + 1, 1);

      v15 = v34;
    }

    else
    {
    }

    ++v16;
    sub_2729F91E0(v8);
    *(v15 + 16) = v28 + 1;
    sub_2729F917C(v6, v15 + ((*(v32 + 80) + 32) & ~*(v32 + 80)) + *(v32 + 72) * v28);
    if (v16 == v31)
    {
      return v35;
    }
  }

  if (!v21)
  {
    goto LABEL_14;
  }

  v25 = (v36 + 40);
  while (1)
  {
    result = *(v25 - 1);
    if (result == v18 && *v25 == v17)
    {
      break;
    }

    result = sub_2729FA57C();
    if (result)
    {
      break;
    }

    v25 += 2;
    if (!--v21)
    {
      goto LABEL_14;
    }
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_2729F917C(uint64_t a1, uint64_t a2)
{
  v4 = _s13ThumbnailInfoVMa();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2729F91E0(uint64_t a1)
{
  v2 = _s13ThumbnailInfoVMa();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2729F923C(uint64_t a1, uint64_t a2)
{
  v4 = _s13ThumbnailInfoVMa();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2729F92A0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_2729F9308(uint64_t a1, uint64_t a2)
{
  v4 = _s13ThumbnailInfoVMa();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_2729F93A8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_2729F9410(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

__n128 __swift_memcpy72_8(uint64_t a1, uint64_t a2)
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

uint64_t sub_2729F9494(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
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

uint64_t sub_2729F94DC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2729F9550(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2729FA1FC();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24));
    if (v10 >= 2)
    {
      return ((v10 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_2729F9630(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_2729FA1FC();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24)) = a2 + 1;
  }

  return result;
}

uint64_t sub_2729F96E8()
{
  result = sub_2729FA1FC();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t WalletBlastDoorClient.__allocating_init()()
{
  v14 = sub_2729FA4EC();
  v0 = *(v14 - 8);
  v1 = *(v0 + 64);
  MEMORY[0x28223BE20](v14);
  v3 = v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_2729FA4DC();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v6 = sub_2729FA2EC();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = sub_2729FA31C();
  v13[1] = "WorkingDirectoryInvalid";
  v13[2] = v8;
  v9 = *MEMORY[0x277CF30B0];
  sub_2729F9A2C();
  v10 = v9;
  sub_2729FA2DC();
  v15 = MEMORY[0x277D84F90];
  sub_2729F9C78(&qword_28089E2B0, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28089E2B8, &qword_2729FAA90);
  sub_2729F9A78();
  sub_2729FA50C();
  (*(v0 + 104))(v3, *MEMORY[0x277D85260], v14);
  sub_2729FA4FC();
  v11 = sub_2729FA2FC();
  result = swift_allocObject();
  *(result + 16) = v11;
  return result;
}

unint64_t sub_2729F9A2C()
{
  result = qword_28089E2A8;
  if (!qword_28089E2A8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28089E2A8);
  }

  return result;
}

unint64_t sub_2729F9A78()
{
  result = qword_28089E2C0;
  if (!qword_28089E2C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28089E2B8, &qword_2729FAA90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28089E2C0);
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

uint64_t WalletBlastDoorClient.unpackOrderPreview(from:with:)()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28089E2C8, &qword_2729FAA98);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v8 - v3;
  v5 = *(v0 + 16);
  sub_2729FA3CC();
  v6 = sub_2729FA33C();
  (*(*(v6 - 8) + 56))(v4, 1, 1, v6);
  sub_2729F9C78(&qword_28089E1D0, MEMORY[0x277CF23B0]);
  sub_2729FA30C();
  return sub_2729F9CC0(v4);
}

uint64_t sub_2729F9C78(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2729F9CC0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28089E2C8, &qword_2729FAA98);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t WalletBlastDoorClient.deinit()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t WalletBlastDoorClient.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}