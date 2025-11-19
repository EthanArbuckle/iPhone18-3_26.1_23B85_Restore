unint64_t sub_25F127D20(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = HIBYTE(a4) & 0xF;
  if ((a4 & 0x2000000000000000) == 0)
  {
    v4 = a3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v4)
  {
    return 0;
  }

  v7 = 4 * v4;
  v8 = 15;
  while (sub_25F1791AC() != a1 || v9 != a2)
  {
    v10 = sub_25F17983C();

    if (v10)
    {
      return v8;
    }

    v8 = sub_25F17913C();
    if (v7 == v8 >> 14)
    {
      return 0;
    }
  }

  return v8;
}

uint64_t sub_25F127E10(unint64_t a1, uint64_t a2, unint64_t a3)
{
  v3 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (4 * v3 < a1 >> 14)
  {
    __break(1u);
  }

  return MEMORY[0x2821FBFB0]();
}

uint64_t sub_25F127E5C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_25F17793C();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_25F127E88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, NSObject **a4@<X3>, uint64_t a5@<X8>)
{
  v6 = v5;
  v300 = a4;
  v319 = a2;
  v305 = a5;
  v294 = sub_25F178A0C();
  v9 = *(v294 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v294);
  v290 = &v264 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v291 = &v264 - v13;
  v292 = sub_25F178A2C();
  v287 = *(v292 - 8);
  v14 = *(v287 + 64);
  v15 = MEMORY[0x28223BE20](v292);
  v289 = &v264 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v293 = &v264 - v17;
  v303 = sub_25F1788DC();
  v286 = *(v303 - 8);
  v18 = *(v286 + 64);
  MEMORY[0x28223BE20](v303);
  v302 = &v264 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_25F17895C();
  *&v285 = *(v20 - 8);
  v21 = *(v285 + 64);
  v22 = MEMORY[0x28223BE20](v20);
  v295 = &v264 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v22);
  v298 = &v264 - v25;
  MEMORY[0x28223BE20](v24);
  v304 = &v264 - v26;
  v296 = sub_25F17792C();
  v313 = *(v296 - 8);
  v27 = *(v313 + 64);
  MEMORY[0x28223BE20](v296);
  v307 = &v264 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_25F178B1C();
  v309 = *(v29 - 8);
  v310 = v29;
  v30 = *(v309 + 64);
  v31 = MEMORY[0x28223BE20](v29);
  v299 = &v264 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31);
  v321 = &v264 - v33;
  v320 = sub_25F17888C();
  v315 = *(v320 - 8);
  v34 = *(v315 + 64);
  v35 = MEMORY[0x28223BE20](v320);
  v312 = &v264 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = MEMORY[0x28223BE20](v35);
  v301 = (&v264 - v38);
  v39 = MEMORY[0x28223BE20](v37);
  v288 = &v264 - v40;
  v41 = MEMORY[0x28223BE20](v39);
  v297 = &v264 - v42;
  MEMORY[0x28223BE20](v41);
  v311 = &v264 - v43;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD48708, &qword_25F180728);
  v45 = *(*(v44 - 8) + 64);
  MEMORY[0x28223BE20](v44 - 8);
  v47 = &v264 - v46;
  v318 = sub_25F1779DC();
  v48 = *(*(v318 - 8) + 64);
  v49 = MEMORY[0x28223BE20](v318);
  v50 = MEMORY[0x28223BE20](v49);
  v51 = MEMORY[0x28223BE20](v50);
  v53 = &v264 - v52;
  MEMORY[0x28223BE20](v51);
  v55 = MEMORY[0x28223BE20](&v264 - v54);
  v306 = (&v264 - v56);
  v57 = MEMORY[0x28223BE20](v55);
  v58 = MEMORY[0x28223BE20](v57);
  v60 = &v264 - v59;
  v61 = MEMORY[0x28223BE20](v58);
  v67 = &v264 - v66;
  v68 = *a3;
  if (*(*a3 + 16))
  {
    v283 = v62;
    v314 = a3;
    *&v280 = v61;
    v281 = v53;
    v278 = v65;
    v279 = v64;
    v277 = v9;
    v69 = *v6;
    v70 = v6[1];
    v316 = v63;
    v317 = v69;
    v308 = v6;

    v71 = a1;
    v72 = a1;
    v73 = v319;
    v74 = sub_25F0C8D24(v71, v319);
    if (v75)
    {
      v282 = v20;
      v76 = v316;
      v77 = *(v68 + 56) + v316[9].isa * v74;
      v284 = v72;
      v78 = v47;
      v79 = v316 + 2;
      isa = v316[2].isa;
      v81 = v318;
      isa(v60, v77, v318);
      (v76[4].isa)(v67, v60, v81);
      v82 = v81;
      sub_25F16AF88(v284, v73, v78);
      sub_25F0B7E94(v78, &qword_27FD48708, &qword_25F180728);
      v83 = v311;
      sub_25F17885C();
      v84 = v283;
      isa(v283, v67, v82);
      v85 = v306;
      v284 = v67;
      v276 = v79;
      v275 = isa;
      isa(v306, v67, v82);
      v86 = v83;

      v87 = sub_25F17887C();
      v88 = sub_25F17952C();

      v89 = os_log_type_enabled(v87, v88);
      v314 = v70;
      if (v89)
      {
        v90 = swift_slowAlloc();
        v319 = swift_slowAlloc();
        v324 = v319;
        *v90 = 136446722;
        *(v90 + 4) = sub_25F0BECF0(v317, v70, &v324);
        *(v90 + 12) = 2080;
        v274 = v87;
        v91 = sub_25F17793C();
        v93 = v92;
        v94 = v316[1].isa;
        v95 = v84;
        v96 = v88;
        v97 = v318;
        v94(v95, v318);
        v98 = sub_25F0BECF0(v91, v93, &v324);

        *(v90 + 14) = v98;
        *(v90 + 22) = 2080;
        v99 = sub_25F17798C();
        if (v100)
        {
          v101 = v99;
        }

        else
        {
          v101 = 0x6E776F6E6B6E753CLL;
        }

        if (v100)
        {
          v102 = v100;
        }

        else
        {
          v102 = 0xE90000000000003ELL;
        }

        v283 = v94;
        v94(v85, v97);
        v70 = v314;
        v103 = sub_25F0BECF0(v101, v102, &v324);

        *(v90 + 24) = v103;
        v104 = v274;
        _os_log_impl(&dword_25F0B3000, v274, v96, "%{public}s: Loading JIT symbols from targetDescription %s, buildable: %s", v90, 0x20u);
        v105 = v319;
        swift_arrayDestroy();
        MEMORY[0x25F8D6230](v105, -1, -1);
        MEMORY[0x25F8D6230](v90, -1, -1);
      }

      else
      {

        v112 = v316[1].isa;
        v97 = v318;
        v112(v85, v318);
        v283 = v112;
        v112(v84, v97);
      }

      v311 = *(v315 + 8);
      (v311)(v86, v320);
      v113 = v328;
      v114 = v307;
      v115 = v284;
      sub_25F126020(v284, v321);
      v116 = v313;
      if (v113)
      {
        v283(v115, v97);
      }

      v328 = 0;
      v117 = sub_25F17794C();
      v118 = *(v116 + 104);
      v119 = v296;
      v118(v114, *MEMORY[0x277D40B28], v296);
      v120 = sub_25F12B30C(v114, v117);
      v121 = v119;

      v122 = *(v116 + 8);
      v122(v114, v121);
      if (v120)
      {
        v123 = 1;
      }

      else
      {
        v124 = v121;
        v125 = sub_25F17794C();
        v118(v114, *MEMORY[0x277D40B20], v124);
        v126 = sub_25F12B30C(v114, v125);

        v122(v114, v124);
        if (v126)
        {
          v123 = 2;
        }

        else
        {
          v123 = 0;
        }
      }

      LODWORD(v307) = v123;
      v127 = v301;
      v128 = v297;
      v129 = *(sub_25F17799C() + 16);

      v130 = v328;
      if (v129)
      {
        sub_25F17885C();
        v127 = v280;
        v131 = v318;
        v132 = v275;
        v275(v280, v115, v318);
        v133 = v281;
        v132(v281, v115, v131);

        v134 = sub_25F17887C();
        v135 = sub_25F17952C();

        if (os_log_type_enabled(v134, v135))
        {
          v136 = swift_slowAlloc();
          v319 = swift_slowAlloc();
          v324 = v319;
          *v136 = 136446722;
          *(v136 + 4) = sub_25F0BECF0(v317, v70, &v324);
          *(v136 + 12) = 2082;
          LODWORD(v313) = v135;
          v322 = sub_25F17799C();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD48748, &qword_25F180738);
          sub_25F0B7D00(&qword_27FD48750, &qword_27FD48748, &qword_25F180738);
          sub_25F1794DC();
          v306 = v134;
          v137 = sub_25F1794CC();
          v139 = v138;

          v140 = v127;
          v127 = v128;
          v141 = v283;
          v283(v140, v318);
          v142 = sub_25F0BECF0(v137, v139, &v324);

          *(v136 + 14) = v142;
          *(v136 + 22) = 2080;
          v143 = sub_25F17793C();
          v145 = v144;
          v141(v133, v318);
          v70 = v314;
          v146 = sub_25F0BECF0(v143, v145, &v324);

          *(v136 + 24) = v146;
          v147 = v306;
          _os_log_impl(&dword_25F0B3000, v306, v313, "%{public}s: Loading %{public}s for %s", v136, 0x20u);
          v148 = v319;
          swift_arrayDestroy();
          MEMORY[0x25F8D6230](v148, -1, -1);
          v149 = v136;
          v130 = v328;
          MEMORY[0x25F8D6230](v149, -1, -1);

          v150 = v127;
        }

        else
        {

          v151 = v283;
          v283(v133, v131);
          v151(v127, v131);
          v150 = v128;
        }

        (v311)(v150, v320);
        v152 = sub_25F17799C();
        v154 = v152;
        v306 = *(v152 + 16);
        if (v306)
        {
          v155 = 0;
          v297 = v308[3];
          v296 = v315 + 8;
          v156 = (v152 + 56);
          *&v153 = 136315138;
          v280 = v153;
          v157 = v288;
          v281 = v152;
          while (v155 < *(v154 + 16))
          {
            v158 = *v156;
            v319 = *(v156 - 1);
            v127 = *(v156 - 2);

            sub_25F17885C();

            v159 = sub_25F17887C();
            v160 = sub_25F17952C();

            v313 = v127;

            if (os_log_type_enabled(v159, v160))
            {
              v161 = swift_slowAlloc();
              v162 = swift_slowAlloc();
              v328 = v130;
              v163 = v162;
              v324 = v162;
              *v161 = v280;

              v127 = sub_25F0BECF0(v319, v158, &v324);

              *(v161 + 4) = v127;
              _os_log_impl(&dword_25F0B3000, v159, v160, "Loading static archive %s into XOJIT", v161, 0xCu);
              __swift_destroy_boxed_opaque_existential_1Tm(v163);
              v164 = v163;
              v130 = v328;
              MEMORY[0x25F8D6230](v164, -1, -1);
              v165 = v161;
              v154 = v281;
              MEMORY[0x25F8D6230](v165, -1, -1);
            }

            (v311)(v157, v320);
            v70 = v314;
            sub_25F12FA6C(v319, v158, v319, v158, v321, v307, v317, v314, v297);
            if (v130)
            {

              (*(v309 + 8))(v321, v310);
              return (v283)(v284, v318);
            }

            v155 = (v155 + 1);

            v156 += 4;
            if (v306 == v155)
            {
              goto LABEL_35;
            }
          }

          __break(1u);
LABEL_82:
          __break(1u);
LABEL_83:
          v155 = sub_25F116148(0, v155[2].isa + 1, 1, v155);
LABEL_66:
          v230 = v155[2].isa;
          v229 = v155[3].isa;
          if (v230 >= v229 >> 1)
          {
            v155 = sub_25F116148(v229 > 1, v230 + 1, 1, v155);
          }

          v283(v284, v127);
          v155[2].isa = (v230 + 1);
          v231 = *(v309 + 32);
          v232 = v155 + ((*(v309 + 80) + 32) & ~*(v309 + 80)) + *(v309 + 72) * v230;
          v233 = v310;
          v231(v232, v299, v310);
          *v300 = v155;
          return (v231)(v305, v321, v233);
        }

LABEL_35:

        v127 = v301;
      }

      v166 = v284;
      v167 = *(sub_25F17795C() + 16);

      if (v167)
      {
        sub_25F17885C();
        v168 = v278;
        v169 = v318;
        v170 = v275;
        v275(v278, v166, v318);
        v171 = v279;
        v170(v279, v166, v169);

        v155 = sub_25F17887C();
        v172 = sub_25F17952C();

        if (os_log_type_enabled(v155, v172))
        {
          v173 = swift_slowAlloc();
          v328 = v130;
          v174 = v173;
          v319 = swift_slowAlloc();
          v324 = v319;
          *v174 = 136446722;
          v175 = sub_25F0BECF0(v317, v70, &v324);
          LODWORD(v313) = v172;
          v176 = v175;

          *(v174 + 4) = v176;
          *(v174 + 12) = 2082;
          v322 = sub_25F17795C();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD48738, &qword_25F180730);
          sub_25F0B7D00(&qword_27FD48740, &qword_27FD48738, &qword_25F180730);
          sub_25F1794DC();
          v127 = v171;
          v177 = sub_25F1794CC();
          v179 = v178;

          v180 = v168;
          v181 = v283;
          v283(v180, v318);
          v182 = sub_25F0BECF0(v177, v179, &v324);

          *(v174 + 14) = v182;
          *(v174 + 22) = 2080;
          v183 = sub_25F17793C();
          v185 = v184;
          v181(v171, v318);
          v186 = sub_25F0BECF0(v183, v185, &v324);

          *(v174 + 24) = v186;
          _os_log_impl(&dword_25F0B3000, v155, v313, "%{public}s: Loading %{public}s for %s", v174, 0x20u);
          v187 = v319;
          swift_arrayDestroy();
          MEMORY[0x25F8D6230](v187, -1, -1);
          v188 = v174;
          v130 = v328;
          MEMORY[0x25F8D6230](v188, -1, -1);

          v189 = v301;
        }

        else
        {

          v155 = v316 + 1;
          v190 = v283;
          v283(v171, v169);
          v190(v168, v169);
          v189 = v127;
        }

        (v311)(v189, v320);
        v191 = v312;
        v192 = sub_25F17795C();
        v194 = v192;
        v274 = *(v192 + 16);
        if (v274)
        {
          v195 = 0;
          v196 = v308[4];
          v296 = v308[3];
          v270 = v196;
          v281 = (v315 + 8);
          LODWORD(v280) = *MEMORY[0x277D7E8E0];
          v279 = (v286 + 104);
          v286 += 8;
          v278 = (v285 + 16);
          v276 = (v285 + 88);
          LODWORD(v275) = *MEMORY[0x277D7E900];
          v273 = *MEMORY[0x277D7E8F8];
          v272 = *MEMORY[0x277D7E8F0];
          v271 = (v287 + 8);
          v287 = v285 + 8;
          v265 = *MEMORY[0x277D7E930];
          v269 = (v277 + 104);
          v268 = (v277 + 32);
          v266 = *MEMORY[0x277D7E920];
          v267 = (v277 + 8);
          v197 = (v192 + 72);
          LODWORD(v277) = *MEMORY[0x277D7E928];
          *&v193 = 136446978;
          v285 = v193;
          v288 = v192;
          while (1)
          {
            if (v195 >= *(v194 + 2))
            {
              goto LABEL_82;
            }

            v198 = *(v197 - 4);
            v199 = *(v197 - 3);
            v201 = *(v197 - 2);
            v200 = *(v197 - 1);
            LODWORD(v319) = *v197;
            v301 = v195;
            v297 = v197;
            if (v198)
            {
              v202 = v199;
              v306 = *(v197 - 5);
              v203 = v198;
            }

            else
            {

              v198 = 0;
              v202 = v199;
              v306 = v199;
              v203 = v201;
            }

            v308 = v198;
            swift_bridgeObjectRetain_n();

            v313 = v200;

            sub_25F17885C();
            v204 = v314;

            v205 = sub_25F17887C();
            v206 = sub_25F17952C();

            if (os_log_type_enabled(v205, v206))
            {
              v207 = swift_slowAlloc();
              v208 = swift_slowAlloc();
              v328 = v130;
              v209 = v208;
              v324 = v208;
              *v207 = v285;
              *(v207 + 4) = sub_25F0BECF0(v317, v204, &v324);
              *(v207 + 12) = 2080;
              *(v207 + 14) = sub_25F0BECF0(v202, v201, &v324);
              *(v207 + 22) = 2080;
              *(v207 + 24) = sub_25F0BECF0(v306, v203, &v324);
              *(v207 + 32) = 1024;
              *(v207 + 34) = v319;
              _os_log_impl(&dword_25F0B3000, v205, v206, "%{public}s: Loading %s, identifier %s, forReplacement: %{BOOL}d", v207, 0x26u);
              swift_arrayDestroy();
              v210 = v209;
              v130 = v328;
              v155 = v303;
              v211 = v304;
              MEMORY[0x25F8D6230](v210, -1, -1);
              MEMORY[0x25F8D6230](v207, -1, -1);

              (v311)(v312, v320);
              v212 = v201;
            }

            else
            {

              (v311)(v191, v320);
              v212 = v201;
              v211 = v304;
              v155 = v303;
            }

            v213 = v302;
            (*v279)(v302, v280, v155);
            v127 = v211;
            v306 = v202;
            v328 = v203;
            sub_25F17896C();
            v214 = v130;
            v315 = v212;
            if (v130)
            {
              break;
            }

            (*v286)(v213, v155);
            v215 = *v278;
            if (v319)
            {
              v216 = v298;
              v217 = v127;
              v218 = v282;
              v215(v298, v127, v282);
              v219 = (v276->isa)(v216, v218);
              v191 = v312;
              if (v219 == v275)
              {
                sub_25F130550();
                v214 = swift_allocError();
                v251 = v306;
                v234 = v315;
                *v236 = v306;
                *(v236 + 8) = v234;
                *(v236 + 16) = 1;
LABEL_73:
                swift_willThrow();

                (*v287)(v217, v282);
LABEL_77:
                v322 = v251;
                v323 = v234;

                v252 = v214;
                sub_25F1304A8();
                sub_25F1781BC();

                v253 = v326;
                v254 = v327;
                v255 = __swift_project_boxed_opaque_existential_1(&v324, v326);
                v256 = *(v253 - 8);
                v257 = *(v256 + 64);
                MEMORY[0x28223BE20](v255);
                v259 = &v264 - ((v258 + 15) & 0xFFFFFFFFFFFFFFF0);
                (*(v256 + 16))(v259);
                v260 = *(*(v254 + 8) + 8);
                v261 = sub_25F17981C();
                v262 = v318;
                if (v261)
                {
                  (*(v256 + 8))(v259, v253);
                }

                else
                {
                  swift_allocError();
                  (*(v256 + 32))(v263, v259, v253);
                }

                swift_willThrow();

                __swift_destroy_boxed_opaque_existential_1Tm(&v324);

                (*(v309 + 8))(v321, v310);
                return (v283)(v284, v262);
              }

              if (v219 == v273)
              {
                v324 = 0;
                v325 = 0xE000000000000000;
                v234 = v315;

                v237 = v282;
                sub_25F17976C();
                v238 = v324;
                v239 = v325;
                sub_25F1305A4();
                v214 = swift_allocError();
                v251 = v306;
                *v240 = v306;
                v240[1] = v234;
                v240[2] = 0xD000000000000024;
                v240[3] = 0x800000025F1866C0;
                v240[4] = v238;
                v240[5] = v239;
                swift_willThrow();

                (*v287)(v217, v237);
                goto LABEL_77;
              }

              if (v219 != v272)
              {
                v324 = 0;
                v325 = 0xE000000000000000;
                v234 = v315;

                v241 = v282;
                sub_25F17976C();
                v242 = v324;
                v243 = v325;
                sub_25F1304FC();
                v214 = swift_allocError();
                v251 = v306;
                *v244 = v306;
                v244[1] = v234;
                v244[2] = v242;
                v244[3] = v243;
                swift_willThrow();

                v245 = *v287;
                (*v287)(v217, v241);
                v245(v298, v241);
                goto LABEL_77;
              }

              sub_25F178A3C();
              v130 = 0;
              (*v287)(v127, v282);
            }

            else
            {
              v220 = v295;
              v217 = v127;
              v221 = v282;
              v215(v295, v127, v282);
              v222 = (v276->isa)(v220, v221);
              v223 = v294;
              v191 = v312;
              if (v222 == v275)
              {
                sub_25F130550();
                v214 = swift_allocError();
                v251 = v306;
                v234 = v315;
                *v235 = v306;
                *(v235 + 8) = v234;
                *(v235 + 16) = 0;
                goto LABEL_73;
              }

              if (v222 == v273)
              {
                sub_25F178A7C();
                v224 = v277;
                if (v307)
                {
                  v224 = v266;
                  if (v307 != 1)
                  {
                    v224 = v265;
                  }
                }

                v225 = v290;
                (*v269)(v290, v224, v223);
                v226 = v291;
                (*v268)(v291, v225, v223);
                v227 = v293;
                sub_25F1789FC();
                v228 = v223;
                v130 = 0;

                (*v267)(v226, v228);
                (*v271)(v227, v292);
                (*v287)(v127, v282);

                v191 = v312;
              }

              else
              {
                if (v222 != v272)
                {
                  v324 = 0;
                  v325 = 0xE000000000000000;
                  v234 = v315;

                  v246 = v282;
                  sub_25F17976C();
                  v247 = v324;
                  v248 = v325;
                  sub_25F1304FC();
                  v214 = swift_allocError();
                  v251 = v306;
                  *v249 = v306;
                  v249[1] = v234;
                  v249[2] = v247;
                  v249[3] = v248;
                  swift_willThrow();

                  v250 = *v287;
                  (*v287)(v217, v246);
                  v250(v295, v246);
                  goto LABEL_77;
                }

                v127 = v289;
                sub_25F178A7C();
                sub_25F178A1C();
                v130 = 0;

                (*v271)(v127, v292);
                (*v287)(v217, v282);
              }
            }

            v194 = v288;
            v195 = (&v301->isa + 1);

            v197 = v297 + 48;
            if (v274 == v195)
            {
              goto LABEL_65;
            }
          }

          (*v286)(v213, v155);
          v234 = v212;
          v251 = v306;
          goto LABEL_77;
        }
      }

LABEL_65:

      v127 = v318;
      (*(v309 + 16))(v299, v321, v310);
      v155 = *v300;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        goto LABEL_66;
      }

      goto LABEL_83;
    }

    v6 = v308;
    a1 = v72;
  }

  v106 = v6[5];
  v107 = v319;
  if (*(v106 + 16))
  {
    v108 = sub_25F0C8D24(a1, v319);
    if (v109)
    {
      return (*(v309 + 16))(v305, *(v106 + 56) + *(v309 + 72) * v108, v310);
    }
  }

  sub_25F12F700();
  swift_allocError();
  *v111 = a1;
  v111[1] = v107;
  swift_willThrow();
}

uint64_t sub_25F12A358(uint64_t a1)
{
  v3 = v2;
  v4 = v1;
  v6 = sub_25F17888C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = v41 - v13;
  MEMORY[0x28223BE20](v12);
  v16 = v41 - v15;
  v17 = *(v4 + 8);
  v45 = *v4;
  if (*(v4 + 16) - 1 > 1)
  {
    v41[1] = a1;
    v42 = v7;
    *(v4 + 16) = 1;
    v43 = "(-mainExecutable)?$";
    v44 = v6;
    sub_25F17885C();

    v22 = sub_25F17887C();
    v23 = sub_25F17952C();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v41[0] = "How do I preview from Xcode";
      v26 = v25;
      v46 = v25;
      *v24 = 136446210;
      *(v24 + 4) = sub_25F0BECF0(v45, v17, &v46);
      _os_log_impl(&dword_25F0B3000, v22, v23, "%{public}s: Requesting initial jit link", v24, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v26);
      v27 = v26;
      v3 = v2;
      MEMORY[0x25F8D6230](v27, -1, -1);
      MEMORY[0x25F8D6230](v24, -1, -1);
    }

    v28 = *(v42 + 8);
    v28(v14, v44);
    v29 = *(v4 + 24);
    result = sub_25F178AAC();
    if (!v3)
    {
      if (!result)
      {
        return result;
      }

      v31 = result;
      sub_25F130714();
      v3 = swift_allocError();
      *v32 = v31;
      swift_willThrow();
    }

    sub_25F17885C();

    v33 = v3;
    v34 = sub_25F17887C();
    v35 = sub_25F17953C();

    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v46 = v38;
      *v36 = 136446722;
      *(v36 + 4) = sub_25F0BECF0(v45, v17, &v46);
      *(v36 + 12) = 2082;
      *(v36 + 14) = sub_25F0BECF0(0xD00000000000002BLL, v43 | 0x8000000000000000, &v46);
      *(v36 + 22) = 2114;
      v39 = v3;
      v40 = _swift_stdlib_bridgeErrorToNSError();
      *(v36 + 24) = v40;
      *v37 = v40;
      sub_25F0B7E94(v37, &qword_27FD473D0, &unk_25F17C540);
      MEMORY[0x25F8D6230](v37, -1, -1);
      swift_arrayDestroy();
      MEMORY[0x25F8D6230](v38, -1, -1);
      MEMORY[0x25F8D6230](v36, -1, -1);
    }

    v28(v11, v44);
  }

  else
  {
    sub_25F17885C();

    v18 = sub_25F17887C();
    v19 = sub_25F17953C();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v46 = v21;
      *v20 = 136446210;
      *(v20 + 4) = sub_25F0BECF0(v45, v17, &v46);
      _os_log_impl(&dword_25F0B3000, v18, v19, "%{public}s: Initial jit link already invoked", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v21);
      MEMORY[0x25F8D6230](v21, -1, -1);
      MEMORY[0x25F8D6230](v20, -1, -1);
    }

    (*(v7 + 8))(v16, v6);
    sub_25F130768();
    swift_allocError();
  }

  return swift_willThrow();
}

void sub_25F12A8B4(uint64_t a1)
{
  v3 = v2;
  v4 = v1;
  v105 = sub_25F178B1C();
  v107 = *(v105 - 8);
  v6 = *(v107 + 64);
  v7 = MEMORY[0x28223BE20](v105);
  v9 = v90 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v104 = v90 - v10;
  v106 = sub_25F17888C();
  v108 = *(v106 - 8);
  v11 = *(v108 + 64);
  v12 = MEMORY[0x28223BE20](v106);
  v14 = v90 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v12);
  v94 = v90 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v19 = v90 - v18;
  MEMORY[0x28223BE20](v17);
  v109 = v90 - v20;
  v21 = sub_25F17835C();
  v102 = *(v21 - 8);
  v103 = v21;
  v22 = *(v102 + 64);
  MEMORY[0x28223BE20](v21);
  v101 = v90 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD487B0, &unk_25F180760);
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x28223BE20](v24 - 8);
  v27 = v90 - v26;
  v28 = sub_25F177FBC();
  v29 = *(v28 - 8);
  v30 = *(v29 + 64);
  v31 = MEMORY[0x28223BE20](v28);
  v33 = v90 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = *(a1 + 16);
  if (v34)
  {
    v98 = v9;
    v99 = a1;
    v110 = v34;
    v97 = v19;
    v90[0] = v14;
    v35 = *v4;
    v36 = v4[1];
    v37 = v4;
    v38 = v31;
    v90[1] = sub_25F1782EC();
    sub_25F1782DC();
    v92 = v29;
    v93 = v38;
    (*(v29 + 56))(v27, 1, 1, v38);
    v39 = v101;
    sub_25F17831C();
    v91 = v33;
    v40 = v35;
    sub_25F1782CC();

    (*(v102 + 8))(v39, v103);
    sub_25F0B7E94(v27, &qword_27FD487B0, &unk_25F180760);
    sub_25F17885C();

    v41 = sub_25F17887C();
    v42 = sub_25F17952C();

    v43 = os_log_type_enabled(v41, v42);
    v102 = v36;
    v96 = v35;
    if (v43)
    {
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v111 = v45;
      *v44 = 136446210;
      *(v44 + 4) = sub_25F0BECF0(v40, v36, &v111);
      _os_log_impl(&dword_25F0B3000, v41, v42, "%{public}s: Running new initializers.", v44, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v45);
      v46 = v45;
      v3 = v2;
      MEMORY[0x25F8D6230](v46, -1, -1);
      v47 = v108;
      MEMORY[0x25F8D6230](v44, -1, -1);

      v103 = *(v47 + 8);
      v108 = v47 + 8;
      v103(v109, v106);
    }

    else
    {

      v103 = *(v108 + 8);
      v108 += 8;
      v48 = v103(v109, v106);
    }

    v50 = v104;
    v49 = v105;
    v51 = v37[3];
    v100 = *(v107 + 16);
    v101 = v51;
    v52 = v98;
    v53 = (v99 + ((*(v107 + 80) + 32) & ~*(v107 + 80)));
    v109 = (v107 + 8);
    v107 += 16;
    v99 = *(v107 + 56);
    v48.n128_u64[0] = 136446466;
    v95 = v48;
    v54 = v97;
    v55 = v110;
    while (v55)
    {
      v110 = v55;
      v56 = v100;
      v100(v50, v53, v49);
      sub_25F17885C();
      v56(v52, v50, v49);
      v57 = v49;
      v58 = v102;

      v59 = v54;
      v60 = sub_25F17887C();
      v61 = sub_25F17952C();

      if (os_log_type_enabled(v60, v61))
      {
        v62 = swift_slowAlloc();
        v63 = swift_slowAlloc();
        v98 = v3;
        v64 = v63;
        v111 = v63;
        *v62 = v95.n128_u32[0];
        *(v62 + 4) = sub_25F0BECF0(v96, v58, &v111);
        *(v62 + 12) = 2080;
        v65 = sub_25F178B0C();
        v67 = v66;
        v68 = *v109;
        (*v109)(v52, v105);
        v69 = sub_25F0BECF0(v65, v67, &v111);
        v49 = v105;

        *(v62 + 14) = v69;
        _os_log_impl(&dword_25F0B3000, v60, v61, "%{public}s: Running for %s", v62, 0x16u);
        swift_arrayDestroy();
        v70 = v64;
        v3 = v98;
        MEMORY[0x25F8D6230](v70, -1, -1);
        MEMORY[0x25F8D6230](v62, -1, -1);

        v54 = v97;
        v103(v97, v106);
      }

      else
      {

        v68 = *v109;
        (*v109)(v52, v57);
        v103(v59, v106);
        v54 = v59;
        v49 = v57;
      }

      v50 = v104;
      v71 = v3;
      sub_25F178A8C();
      if (v3)
      {
        v110 = v68;
        v78 = v90[0];
        sub_25F17885C();
        v79 = v102;

        v80 = v3;
        v81 = sub_25F17887C();
        v82 = sub_25F17953C();

        if (os_log_type_enabled(v81, v82))
        {
          v83 = swift_slowAlloc();
          v84 = swift_slowAlloc();
          v85 = swift_slowAlloc();
          v111 = v85;
          *v83 = v95.n128_u32[0];
          *(v83 + 4) = sub_25F0BECF0(v96, v79, &v111);
          *(v83 + 12) = 2112;
          v86 = v71;
          v87 = _swift_stdlib_bridgeErrorToNSError();
          *(v83 + 14) = v87;
          *v84 = v87;
          _os_log_impl(&dword_25F0B3000, v81, v82, "%{public}s: Failed running new initializers: %@", v83, 0x16u);
          sub_25F0B7E94(v84, &qword_27FD473D0, &unk_25F17C540);
          MEMORY[0x25F8D6230](v84, -1, -1);
          __swift_destroy_boxed_opaque_existential_1Tm(v85);
          v88 = v85;
          v49 = v105;
          MEMORY[0x25F8D6230](v88, -1, -1);
          MEMORY[0x25F8D6230](v83, -1, -1);
        }

        v103(v78, v106);
        swift_willThrow();
        (v110)(v50, v49);
        goto LABEL_18;
      }

      (v68)(v50, v49);
      v53 += v99;
      v55 = v110 - 1;
      if (v110 == 1)
      {
        v72 = v94;
        sub_25F17885C();
        v73 = v102;

        v74 = sub_25F17887C();
        v75 = sub_25F17952C();

        if (os_log_type_enabled(v74, v75))
        {
          v76 = swift_slowAlloc();
          v77 = swift_slowAlloc();
          v111 = v77;
          *v76 = 136446210;
          *(v76 + 4) = sub_25F0BECF0(v96, v73, &v111);
          _os_log_impl(&dword_25F0B3000, v74, v75, "%{public}s: Finished running new initializers", v76, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v77);
          MEMORY[0x25F8D6230](v77, -1, -1);
          MEMORY[0x25F8D6230](v76, -1, -1);
        }

        v103(v72, v106);
LABEL_18:
        sub_25F1782DC();
        v89 = v91;
        sub_25F1782BC();

        (*(v92 + 8))(v89, v93);
        return;
      }
    }

    __break(1u);
  }
}

uint64_t sub_25F12B30C(uint64_t a1, uint64_t a2)
{
  v3 = sub_25F17792C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a2 + 16) && (v8 = *(a2 + 40), sub_25F12E2B8(&qword_27FD48760, MEMORY[0x277D40B30]), v9 = sub_25F17901C(), v10 = -1 << *(a2 + 32), v11 = v9 & ~v10, v20 = a2 + 56, ((*(a2 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0))
  {
    v19 = a2;
    v12 = ~v10;
    v13 = v4 + 16;
    v14 = *(v4 + 16);
    v15 = *(v13 + 56);
    v16 = (v13 - 8);
    do
    {
      v14(v7, *(v19 + 48) + v15 * v11, v3);
      sub_25F12E2B8(&qword_27FD48768, MEMORY[0x277D40B30]);
      v17 = sub_25F17904C();
      (*v16)(v7, v3);
      if (v17)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
    }

    while (((*(v20 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  else
  {
    v17 = 0;
  }

  return v17 & 1;
}

unint64_t sub_25F12B524()
{
  v1 = *v0;
  v2 = v0[1];
  sub_25F1796DC();

  MEMORY[0x25F8D50D0](v1, v2);
  return 0xD00000000000002ELL;
}

uint64_t sub_25F12B5A0(uint64_t a1)
{
  v2 = sub_25F1305F8();

  return MEMORY[0x2821A0810](a1, v2);
}

uint64_t sub_25F12B5DC(uint64_t a1)
{
  v2 = sub_25F1305F8();

  return MEMORY[0x2821A07F0](a1, v2);
}

unint64_t sub_25F12B618()
{
  v1 = *v0;
  v2 = v0[1];
  sub_25F1796DC();

  MEMORY[0x25F8D50D0](v1, v2);
  return 0xD00000000000002BLL;
}

uint64_t sub_25F12B6A8(uint64_t a1)
{
  v2 = sub_25F1304A8();

  return MEMORY[0x2821A0810](a1, v2);
}

uint64_t sub_25F12B6E4(uint64_t a1)
{
  v2 = sub_25F1304A8();

  return MEMORY[0x2821A07F0](a1, v2);
}

uint64_t sub_25F12B720(uint64_t a1, uint64_t a2)
{
  sub_25F1796DC();
  MEMORY[0x25F8D50D0](0x203A68746170, 0xE600000000000000);
  MEMORY[0x25F8D50D0](a1, a2);
  MEMORY[0x25F8D50D0](0x203A65726568770ALL, 0xE800000000000000);
  sub_25F17976C();
  return 0;
}

uint64_t sub_25F12B7E4()
{
  v1 = *v0;
  v2 = v0[1];
  sub_25F1796DC();
  MEMORY[0x25F8D50D0](0xD000000000000035, 0x800000025F1869C0);
  MEMORY[0x25F8D50D0](v1, v2);
  return 0;
}

uint64_t sub_25F12B870(uint64_t a1)
{
  v2 = sub_25F132CDC();

  return MEMORY[0x2821A0810](a1, v2);
}

uint64_t sub_25F12B8AC(uint64_t a1)
{
  v2 = sub_25F132CDC();

  return MEMORY[0x2821A07F0](a1, v2);
}

uint64_t sub_25F12B8E8()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  sub_25F1796DC();

  MEMORY[0x25F8D50D0](v1, v2);
  MEMORY[0x25F8D50D0](0x203A646E696B0ALL, 0xE700000000000000);
  MEMORY[0x25F8D50D0](v3, v4);
  return 0x203A68746170;
}

uint64_t sub_25F12B994(uint64_t a1)
{
  v2 = sub_25F132D30();

  return MEMORY[0x2821A0810](a1, v2);
}

uint64_t sub_25F12B9D0(uint64_t a1)
{
  v2 = sub_25F132D30();

  return MEMORY[0x2821A07F0](a1, v2);
}

uint64_t sub_25F12BA0C()
{
  v1 = v0;
  sub_25F1796DC();

  MEMORY[0x25F8D50D0](*v1, v1[1]);
  MEMORY[0x25F8D50D0](0x657463657078650ALL, 0xEB00000000203A64);
  MEMORY[0x25F8D50D0](v1[2], v1[3]);
  MEMORY[0x25F8D50D0](0x3A6C61757463610ALL, 0xE900000000000020);
  MEMORY[0x25F8D50D0](v1[4], v1[5]);
  return 0x203A68746170;
}

uint64_t sub_25F12BAD0()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = v0[2];
  return sub_25F12BA0C();
}

uint64_t sub_25F12BB0C(uint64_t a1)
{
  v2 = sub_25F132C88();

  return MEMORY[0x2821A0810](a1, v2);
}

uint64_t sub_25F12BB48(uint64_t a1)
{
  v2 = sub_25F132C88();

  return MEMORY[0x2821A07F0](a1, v2);
}

uint64_t sub_25F12BBFC(uint64_t a1)
{
  v2 = sub_25F132D84();

  return MEMORY[0x2821A0810](a1, v2);
}

uint64_t sub_25F12BC38(uint64_t a1)
{
  v2 = sub_25F132D84();

  return MEMORY[0x2821A07F0](a1, v2);
}

uint64_t sub_25F12BC74()
{
  v1 = v0;
  sub_25F1796DC();

  v2 = type metadata accessor for PreviewsJITLinkerState.TargetDescriptionWithDuplicateInstallNameEncountered(0);
  v3 = v0 + *(v2 + 20);
  v4 = sub_25F1779CC();
  MEMORY[0x25F8D50D0](v4);

  MEMORY[0x25F8D50D0](0x7465677261740A0ALL, 0xEB000000000A3A32);
  v5 = v1 + *(v2 + 24);
  v6 = sub_25F1779CC();
  MEMORY[0x25F8D50D0](v6);

  return 0x3A31746567726174;
}

unint64_t sub_25F12BD50()
{
  sub_25F1796DC();

  MEMORY[0x25F8D50D0](*v0, v0[1]);
  return 0xD00000000000002FLL;
}

uint64_t sub_25F12BE20(uint64_t a1)
{
  v2 = sub_25F12E2B8(&qword_27FD48A50, type metadata accessor for PreviewsJITLinkerState.TargetDescriptionWithDuplicateInstallNameEncountered);

  return MEMORY[0x2821A0810](a1, v2);
}

uint64_t sub_25F12BE8C(uint64_t a1)
{
  v2 = sub_25F12E2B8(&qword_27FD48A50, type metadata accessor for PreviewsJITLinkerState.TargetDescriptionWithDuplicateInstallNameEncountered);

  return MEMORY[0x2821A07F0](a1, v2);
}

unint64_t sub_25F12BEF8()
{
  sub_25F1796DC();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD48A68, &qword_25F182060);
  sub_25F0B7D00(&qword_27FD48A70, &qword_27FD48A68, &qword_25F182060);
  sub_25F0B7DB8();
  v0 = sub_25F1791EC();
  v2 = v1;

  MEMORY[0x25F8D50D0](v0, v2);

  return 0xD000000000000016;
}

uint64_t sub_25F12C018@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v2 = *a1;
  v3 = a1[1];
  *a2 = v2;
  a2[1] = v3;
}

unint64_t sub_25F12C048()
{
  sub_25F11D014(*v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD48A58, &qword_25F182058);
  sub_25F0B7D00(&qword_27FD48A60, &qword_27FD48A58, &qword_25F182058);
  v1 = sub_25F17903C();
  v3 = v2;

  MEMORY[0x25F8D50D0](v1, v3);

  return 0xD000000000000013;
}

uint64_t sub_25F12C138(uint64_t a1)
{
  v2 = sub_25F132DD8();

  return MEMORY[0x2821A0810](a1, v2);
}

uint64_t sub_25F12C174(uint64_t a1)
{
  v2 = sub_25F132DD8();

  return MEMORY[0x2821A07F0](a1, v2);
}

uint64_t sub_25F12C1B0(uint64_t *a1, uint64_t *a2, char a3, uint64_t a4, uint64_t a5)
{
  v46 = a5;
  v9 = sub_25F1787BC();
  v44 = *(v9 - 8);
  v45 = v9;
  v10 = *(v44 + 64);
  MEMORY[0x28223BE20](v9);
  v43 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_25F17892C();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_25F17888C();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  v20 = MEMORY[0x28223BE20](v17);
  v22 = &v38 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a3)
  {
    v41 = v20;
    v42 = a4;
    sub_25F17885C();
    (*(v13 + 16))(v16, a1, v12);
    v23 = sub_25F17887C();
    v24 = sub_25F17951C();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v40 = a1;
      v26 = v25;
      v38 = swift_slowAlloc();
      v48 = v38;
      *v26 = 136315394;
      v27 = sub_25F1788FC();
      v39 = a2;
      v29 = v28;
      (*(v13 + 8))(v16, v12);
      v30 = sub_25F0BECF0(v27, v29, &v48);
      a2 = v39;

      *(v26 + 4) = v30;
      *(v26 + 12) = 2048;
      *(v26 + 14) = a2;
      _os_log_impl(&dword_25F0B3000, v23, v24, "+ new symbol: %s -> %llx", v26, 0x16u);
      v31 = v38;
      __swift_destroy_boxed_opaque_existential_1Tm(v38);
      MEMORY[0x25F8D6230](v31, -1, -1);
      v32 = v26;
      a1 = v40;
      MEMORY[0x25F8D6230](v32, -1, -1);
    }

    else
    {

      (*(v13 + 8))(v16, v12);
    }

    (*(v18 + 8))(v22, v41);
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v34 = *(result + 16);

    sub_25F17890C();
    v47 = v34;
    v35 = v43;
    v36 = sub_25F1787CC();
    MEMORY[0x28223BE20](v36);
    *(&v38 - 2) = a2;
    *(&v38 - 1) = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD486A8, &qword_25F1806D0);
    sub_25F0B7D00(&qword_27FD486B8, &qword_27FD486A8, &qword_25F1806D0);
    sub_25F17855C();
    (*(v44 + 8))(v35, v45);
    v37 = swift_allocObject();
    v37[2] = v46;
    v37[3] = v34;
    v37[4] = a2;

    sub_25F1788EC();
  }

  return result;
}

uint64_t sub_25F12C68C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD48858, &qword_25F180790);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v12 - v7;
  v9 = sub_25F17892C();
  v10 = *(v9 - 8);
  (*(v10 + 16))(v8, a3, v9);
  (*(v10 + 56))(v8, 0, 1, v9);
  return sub_25F16A2A0(v8, a2);
}

uint64_t sub_25F12C7A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_25F1787BC();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  result = MEMORY[0x28223BE20](a1);
  v14 = v16 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (result)
  {
    result = memcmp(result, (a3 + 32), *(a3 + 16));
    if (!result)
    {
      v16[1] = a4;
      v15 = sub_25F1787CC();
      MEMORY[0x28223BE20](v15);
      v16[-2] = a5;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD486A8, &qword_25F1806D0);
      sub_25F0B7D00(&qword_27FD486B8, &qword_27FD486A8, &qword_25F1806D0);
      sub_25F17855C();
      return (*(v10 + 8))(v14, v9);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_25F12C984(uint64_t a1, uint64_t a2)
{
  v4 = sub_25F17888C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = v19 - v10;
  if (*(a1 + 24) == 1)
  {
    sub_25F17885C();
    v12 = sub_25F17887C();
    v13 = sub_25F17952C();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 134349056;
      *(v14 + 4) = a2;
      _os_log_impl(&dword_25F0B3000, v12, v13, "Swift entry section pointer symbol found %{public}llx.", v14, 0xCu);
      MEMORY[0x25F8D6230](v14, -1, -1);
    }

    result = (*(v5 + 8))(v11, v4);
    *(a1 + 16) = a2;
    *(a1 + 24) = 0;
  }

  else
  {
    sub_25F17885C();
    v16 = sub_25F17887C();
    v17 = sub_25F17953C();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_25F0B3000, v16, v17, "Swift entry section pointer symbol encountered more than once. Ignoring.", v18, 2u);
      MEMORY[0x25F8D6230](v18, -1, -1);
    }

    return (*(v5 + 8))(v9, v4);
  }

  return result;
}

uint64_t sub_25F12CBAC(uint64_t a1)
{
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD486C8, &qword_25F1806E8);
  v2 = *(*(v30 - 8) + 64);
  v3 = MEMORY[0x28223BE20](v30);
  v29 = (&v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v3);
  v28 = &v26 - v5;
  v6 = *(a1 + 8);
  v7 = *(v6 + 64);
  v27 = v6 + 64;
  v8 = 1 << *(v6 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & v7;
  v11 = (v8 + 63) >> 6;
  v31 = v6;

  v13 = 0;
  for (i = v28; v10; result = sub_25F0B7E94(v25, &qword_27FD486C8, &qword_25F1806E8))
  {
    v15 = v13;
LABEL_9:
    v16 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
    v17 = v16 | (v15 << 6);
    v18 = *(v31 + 56);
    v32 = *(*(v31 + 48) + 8 * v17);
    v19 = sub_25F17892C();
    v20 = *(v19 - 8);
    v21 = v18 + *(v20 + 72) * v17;
    v22 = v30;
    v23 = *(v30 + 48);
    (*(v20 + 16))(&i[v23], v21, v19);
    v24 = *(v22 + 48);
    v25 = v29;
    *v29 = v32;
    (*(v20 + 32))(v25 + v24, &i[v23], v19);
    sub_25F17891C();
  }

  while (1)
  {
    v15 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v15 >= v11)
    {
    }

    v10 = *(v27 + 8 * v15);
    ++v13;
    if (v10)
    {
      v13 = v15;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_25F12CDF0()
{
  v1 = sub_25F1787BC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8[1] = *(v0 + 16);

  sub_25F1787CC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD486A8, &qword_25F1806D0);
  sub_25F0B7D00(&qword_27FD486B8, &qword_27FD486A8, &qword_25F1806D0);
  sub_25F17855C();
  (*(v2 + 8))(v5, v1);

  v6 = *(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_25F12CFB4@<X0>(uint64_t a1@<X0>, char **a2@<X8>)
{
  v3 = a2;
  v4 = *(a1 + 8);
  v5 = *(v4 + 16);
  if (v5)
  {
    v6 = sub_25F147534(v5, 0);
    v7 = sub_25F148278(v11, v6 + 4, v5, v4);
    swift_bridgeObjectRetain_n();
    sub_25F0C03C0();
    if (v7 != v5)
    {
      __break(1u);
      goto LABEL_8;
    }

    v2 = v11[6];
    v3 = a2;
  }

  else
  {
    v8 = *(a1 + 8);

    v6 = MEMORY[0x277D84F90];
  }

  v11[0] = v6;
  sub_25F12ECEC(v11);
  v6 = v2;
  if (!v2)
  {

    *v3 = v11[0];
    return result;
  }

LABEL_8:

  __break(1u);
  return result;
}

uint64_t sub_25F12D0CC(uint64_t a1)
{
  v3 = sub_25F1787BC();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v9[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = *(v1 + 16);

  sub_25F1787CC();
  v10 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD486A8, &qword_25F1806D0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD486D0, &qword_25F1806F0);
  sub_25F0B7D00(&qword_27FD486B8, &qword_27FD486A8, &qword_25F1806D0);
  sub_25F17854C();
  (*(v4 + 8))(v7, v3);

  return v12;
}

unint64_t sub_25F12D284@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = sub_25F17892C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  result = MEMORY[0x28223BE20](v6);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(a1 + 8);
  if (*(v12 + 16) && (result = sub_25F0C8DC0(a2), (v13 & 1) != 0))
  {
    (*(v7 + 16))(v11, *(v12 + 56) + *(v7 + 72) * result, v6);
    v14 = sub_25F1788FC();
    v16 = v15;
    result = (*(v7 + 8))(v11, v6);
    *a3 = v14;
    a3[1] = v16;
  }

  else
  {
    *a3 = 0;
    a3[1] = 0;
  }

  return result;
}

uint64_t sub_25F12D3BC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD486C0, &qword_25F1806E0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v18 - v6;
  v8 = *(a1 + 8);
  sub_25F12D518(v8, (v18 - v6));
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD486C8, &qword_25F1806E8);
  v10 = (*(*(v9 - 8) + 48))(v7, 1, v9);
  result = sub_25F0B7E94(v7, &qword_27FD486C0, &qword_25F1806E0);
  if (v10 == 1)
  {
    v12 = 0;
LABEL_5:
    *a2 = v12;
    return result;
  }

  v13 = sub_25F17892C();
  v14 = *(v13 - 8);
  result = v13 - 8;
  v15 = *(v14 + 64);
  v16 = v15 + 8;
  if (__OFADD__(v15, 8))
  {
    __break(1u);
  }

  else
  {
    v17 = *(v8 + 16);
    v12 = v17 * v16;
    if ((v17 * v16) >> 64 == (v17 * v16) >> 63)
    {
      goto LABEL_5;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_25F12D518@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD486C8, &qword_25F1806E8);
  v16 = *(v4 - 8);
  v5 = *(v16 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v15 - v6;
  v8 = -1 << *(a1 + 32);
  v9 = sub_25F17967C();
  if (v9 == 1 << *(a1 + 32))
  {
    v10 = *(v16 + 56);

    return v10(a2, 1, 1, v4);
  }

  else
  {
    v12 = *(v4 + 48);
    *a2 = sub_25F12F600(&v7[v12], v9, *(a1 + 36), 0, a1);
    v13 = *(v4 + 48);
    v14 = sub_25F17892C();
    (*(*(v14 - 8) + 32))(a2 + v13, &v7[v12], v14);
    return (*(v16 + 56))(a2, 0, 1, v4);
  }
}

uint64_t sub_25F12D6CC@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = *(result + 24);
  *a2 = *(result + 16);
  *(a2 + 8) = v2;
  return result;
}

uint64_t sub_25F12D704()
{
  v1 = sub_25F1787BC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7[2] = *(*v0 + 16);

  sub_25F1787CC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD486A8, &qword_25F1806D0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD486D8, &qword_25F1806F8);
  sub_25F0B7D00(&qword_27FD486B8, &qword_27FD486A8, &qword_25F1806D0);
  sub_25F17854C();
  (*(v2 + 8))(v5, v1);

  return v7[3];
}

uint64_t sub_25F12D900()
{
  v1 = sub_25F1787BC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7[2] = *(*v0 + 16);

  sub_25F1787CC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD486A8, &qword_25F1806D0);
  sub_25F0B7D00(&qword_27FD486B8, &qword_27FD486A8, &qword_25F1806D0);
  sub_25F17854C();
  (*(v2 + 8))(v5, v1);

  return v7[3];
}

uint64_t sub_25F12DA98()
{
  v1 = sub_25F1787BC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7[1] = *(*v0 + 16);

  sub_25F1787CC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD486A8, &qword_25F1806D0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD486B0, &qword_25F1806D8);
  sub_25F0B7D00(&qword_27FD486B8, &qword_27FD486A8, &qword_25F1806D0);
  sub_25F17854C();
  (*(v2 + 8))(v5, v1);

  return v7[2];
}

uint64_t sub_25F12DC50()
{
  v1 = *(v0 + 16);
  v2 = sub_25F17767C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 40) & ~v4;
  v6 = *(v1 - 8);
  v7 = *(v6 + 80);
  v8 = (v5 + *(v3 + 64) + v7) & ~v7;
  v9 = v4 | v7;
  v10 = (*(v6 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = *(v0 + 32);

  (*(v3 + 8))(v0 + v5, v2);
  (*(v6 + 8))(v0 + v8, v1);
  v12 = *(v0 + v10 + 8);

  return MEMORY[0x2821FE8E8](v0, v10 + 16, v9 | 7);
}

uint64_t sub_25F12DDB0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(sub_25F17767C() - 8);
  v4 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  v5 = (v4 + *(v3 + 64) + *(*(v1 - 8) + 80)) & ~*(*(v1 - 8) + 80);
  v6 = v0 + ((*(*(v1 - 8) + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8);
  return sub_25F11F4CC(*(v0 + 32), v0 + v4, v0 + v5, *v6, *(v6 + 8), v1, v2);
}

uint64_t sub_25F12DEB8()
{
  v1 = sub_25F17767C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);
  v8 = *(v0 + v5);

  v9 = *(v0 + v6 + 8);

  return MEMORY[0x2821FE8E8](v0, v6 + 16, v3 | 7);
}

uint64_t sub_25F12DFAC@<X0>(_BYTE *a1@<X8>)
{
  v3 = *(sub_25F17767C() - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  return sub_25F121224(*(v1 + 16), v1 + v4, *(v1 + v5), *(v1 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 8), a1);
}

uint64_t sub_25F12E058()
{
  v1 = sub_25F17767C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 56) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 2);

  v7 = *(v0 + 4);

  v8 = *(v0 + 6);

  (*(v2 + 8))(&v0[v4], v1);
  v9 = *&v0[v5 + 8];

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

uint64_t sub_25F12E144(uint64_t a1)
{
  v3 = v2;
  v4 = *(sub_25F17767C() - 8);
  v5 = (*(v4 + 80) + 56) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = v1[6];
  v11 = (v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v13 = *v11;
  v12 = v11[1];
  v14 = swift_task_alloc();
  *(v3 + 16) = v14;
  *v14 = v3;
  v14[1] = sub_25F0C10CC;

  return sub_25F122D28(a1, v6, v7, v8, v9, v10, v1 + v5, v13);
}

uint64_t block_copy_helper_5(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_25F12E2B8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t dispatch thunk of PreviewsJITLinker.loadTargetDescriptions<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(*v3 + 176);
  v12 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_25F0BF3E4;

  return v12(a1, a2, a3);
}

uint64_t dispatch thunk of PreviewsJITLinker.updateTargetDescriptions(_:)(uint64_t a1)
{
  v4 = *(*v1 + 184);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_25F12E594;

  return v8(a1);
}

uint64_t sub_25F12E594(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

__n128 __swift_memcpy25_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_25F12E724(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 25))
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

uint64_t sub_25F12E76C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 25) = 1;
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

    *(result + 25) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

size_t sub_25F12E7D0(size_t result, int64_t a2, char a3, void *a4)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FD48860, &qword_25F180798);
  v10 = *(sub_25F1776AC() - 8);
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
  v15 = *(sub_25F1776AC() - 8);
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

char *sub_25F12E9A8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD486F0, &unk_25F17F870);
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

char *sub_25F12EAB4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD486E8, &unk_25F180708);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

void *sub_25F12EBB8(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD486F8, &qword_25F180718);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[4 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 32 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD48700, &qword_25F180720);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_25F12ECEC(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_25F12F6D8(v2);
  }

  v3 = *(v2 + 2);
  v18[0] = (v2 + 32);
  v18[1] = v3;
  result = sub_25F1797FC();
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = -1;
      v9 = 1;
      v10 = v2 + 32;
      do
      {
        v11 = *&v2[8 * v9 + 32];
        v12 = v8;
        v13 = v10;
        do
        {
          v14 = *v13;
          if (v11 >= *v13)
          {
            break;
          }

          *v13 = v11;
          *(v13 + 1) = v14;
          v13 -= 8;
        }

        while (!__CFADD__(v12++, 1));
        ++v9;
        v10 += 8;
        --v8;
      }

      while (v9 != v3);
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      v7 = sub_25F17926C();
      *(v7 + 16) = v6;
    }

    else
    {
      v7 = MEMORY[0x277D84F90];
    }

    v16[0] = v7 + 32;
    v16[1] = v6;
    sub_25F12EE20(v16, v17, v18, v5);
    *(v7 + 16) = 0;
  }

  *a1 = v2;
  return result;
}

uint64_t sub_25F12EE20(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v83 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x277D84F90];
LABEL_88:
    v5 = *v83;
    if (!*v83)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_122:
      result = sub_25F12F5EC(v8);
      v8 = result;
    }

    v75 = (v8 + 16);
    v76 = *(v8 + 16);
    if (v76 >= 2)
    {
      while (*a3)
      {
        v77 = (v8 + 16 * v76);
        v78 = *v77;
        v79 = &v75[2 * v76];
        v80 = v79[1];
        sub_25F12F36C((*a3 + 8 * *v77), (*a3 + 8 * *v79), (*a3 + 8 * v80), v5);
        if (v4)
        {
        }

        if (v80 < v78)
        {
          goto LABEL_114;
        }

        if (v76 - 2 >= *v75)
        {
          goto LABEL_115;
        }

        *v77 = v78;
        v77[1] = v80;
        v81 = *v75 - v76;
        if (*v75 < v76)
        {
          goto LABEL_116;
        }

        v76 = *v75 - 1;
        result = memmove(v79, v79 + 2, 16 * v81);
        *v75 = v76;
        if (v76 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  v82 = a4;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = *(*a3 + 8 * v7);
      v11 = *(*a3 + 8 * v9);
      v12 = v9 + 2;
      v13 = v10;
      while (v6 != v12)
      {
        v14 = *(*a3 + 8 * v12);
        v15 = (v10 < v11) ^ (v14 >= v13);
        ++v12;
        v13 = v14;
        if ((v15 & 1) == 0)
        {
          v7 = v12 - 1;
          if (v10 >= v11)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v7 = v6;
      if (v10 >= v11)
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
        v16 = v7 - 1;
        v17 = v9;
        do
        {
          if (v17 != v16)
          {
            v20 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v18 = *(v20 + 8 * v17);
            *(v20 + 8 * v17) = *(v20 + 8 * v16);
            *(v20 + 8 * v16) = v18;
          }
        }

        while (++v17 < v16--);
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
      result = sub_25F116170(0, *(v8 + 16) + 1, 1, v8);
      v8 = result;
    }

    v5 = *(v8 + 16);
    v29 = *(v8 + 24);
    v30 = v5 + 1;
    if (v5 >= v29 >> 1)
    {
      result = sub_25F116170((v29 > 1), v5 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 16) = v30;
    v31 = v8 + 32;
    v32 = (v8 + 32 + 16 * v5);
    *v32 = v9;
    v32[1] = v7;
    v84 = *v83;
    if (!*v83)
    {
      goto LABEL_127;
    }

    if (v5)
    {
      while (1)
      {
        v5 = v30 - 1;
        if (v30 >= 4)
        {
          break;
        }

        if (v30 == 3)
        {
          v33 = *(v8 + 32);
          v34 = *(v8 + 40);
          v43 = __OFSUB__(v34, v33);
          v35 = v34 - v33;
          v36 = v43;
LABEL_57:
          if (v36)
          {
            goto LABEL_104;
          }

          v49 = (v8 + 16 * v30);
          v51 = *v49;
          v50 = v49[1];
          v52 = __OFSUB__(v50, v51);
          v53 = v50 - v51;
          v54 = v52;
          if (v52)
          {
            goto LABEL_106;
          }

          v55 = (v31 + 16 * v5);
          v57 = *v55;
          v56 = v55[1];
          v43 = __OFSUB__(v56, v57);
          v58 = v56 - v57;
          if (v43)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v53, v58))
          {
            goto LABEL_111;
          }

          if (v53 + v58 >= v35)
          {
            if (v35 < v58)
            {
              v5 = v30 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v30 < 2)
        {
          goto LABEL_112;
        }

        v59 = (v8 + 16 * v30);
        v61 = *v59;
        v60 = v59[1];
        v43 = __OFSUB__(v60, v61);
        v53 = v60 - v61;
        v54 = v43;
LABEL_72:
        if (v54)
        {
          goto LABEL_108;
        }

        v62 = (v31 + 16 * v5);
        v64 = *v62;
        v63 = v62[1];
        v43 = __OFSUB__(v63, v64);
        v65 = v63 - v64;
        if (v43)
        {
          goto LABEL_110;
        }

        if (v65 < v53)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v5 - 1 >= v30)
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

        v70 = (v31 + 16 * (v5 - 1));
        v71 = *v70;
        v72 = (v31 + 16 * v5);
        v73 = v72[1];
        sub_25F12F36C((*a3 + 8 * *v70), (*a3 + 8 * *v72), (*a3 + 8 * v73), v84);
        if (v4)
        {
        }

        if (v73 < v71)
        {
          goto LABEL_99;
        }

        if (v5 > *(v8 + 16))
        {
          goto LABEL_100;
        }

        *v70 = v71;
        v70[1] = v73;
        v74 = *(v8 + 16);
        if (v5 >= v74)
        {
          goto LABEL_101;
        }

        v30 = v74 - 1;
        result = memmove((v31 + 16 * v5), v72 + 2, 16 * (v74 - 1 - v5));
        *(v8 + 16) = v74 - 1;
        if (v74 <= 2)
        {
          goto LABEL_3;
        }
      }

      v37 = v31 + 16 * v30;
      v38 = *(v37 - 64);
      v39 = *(v37 - 56);
      v43 = __OFSUB__(v39, v38);
      v40 = v39 - v38;
      if (v43)
      {
        goto LABEL_102;
      }

      v42 = *(v37 - 48);
      v41 = *(v37 - 40);
      v43 = __OFSUB__(v41, v42);
      v35 = v41 - v42;
      v36 = v43;
      if (v43)
      {
        goto LABEL_103;
      }

      v44 = (v8 + 16 * v30);
      v46 = *v44;
      v45 = v44[1];
      v43 = __OFSUB__(v45, v46);
      v47 = v45 - v46;
      if (v43)
      {
        goto LABEL_105;
      }

      v43 = __OFADD__(v35, v47);
      v48 = v35 + v47;
      if (v43)
      {
        goto LABEL_107;
      }

      if (v48 >= v40)
      {
        v66 = (v31 + 16 * v5);
        v68 = *v66;
        v67 = v66[1];
        v43 = __OFSUB__(v67, v68);
        v69 = v67 - v68;
        if (v43)
        {
          goto LABEL_113;
        }

        if (v35 < v69)
        {
          v5 = v30 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v6 = a3[1];
    a4 = v82;
    if (v7 >= v6)
    {
      goto LABEL_88;
    }
  }

  v21 = *a3;
  v22 = *a3 + 8 * v7 - 8;
  v23 = v9 - v7;
LABEL_30:
  v24 = *(v21 + 8 * v7);
  v25 = v23;
  v26 = v22;
  while (1)
  {
    v27 = *v26;
    if (v24 >= *v26)
    {
LABEL_29:
      ++v7;
      v22 += 8;
      --v23;
      if (v7 != v6)
      {
        goto LABEL_30;
      }

      v7 = v6;
      goto LABEL_37;
    }

    if (!v21)
    {
      break;
    }

    *v26 = v24;
    v26[1] = v27;
    --v26;
    if (__CFADD__(v25++, 1))
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

uint64_t sub_25F12F36C(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 7;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 3;
  v11 = a3 - __src;
  v12 = a3 - __src + 7;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 3;
  if (v10 < v12 >> 3)
  {
    if (a4 != __dst || &__dst[8 * v10] <= a4)
    {
      memmove(a4, __dst, 8 * v10);
    }

    v14 = &v4[8 * v10];
    if (v8 < 8)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_35;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v15 = *v6;
      if (*v6 < *v4)
      {
        break;
      }

      v15 = *v4;
      v16 = v7 == v4;
      v4 += 8;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 8;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v16 = v7 == v6;
    v6 += 8;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[8 * v13] <= a4)
  {
    memmove(a4, __src, 8 * v13);
  }

  v14 = &v4[8 * v13];
  if (v11 >= 8 && v6 > v7)
  {
LABEL_24:
    v17 = v6 - 8;
    v5 -= 8;
    v18 = v14;
    do
    {
      v19 = v5 + 8;
      v21 = *(v18 - 8);
      v18 -= 8;
      v20 = v21;
      if (v21 < *v17)
      {
        if (v19 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (v6 -= 8, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_35;
        }

        goto LABEL_24;
      }

      if (v19 != v14)
      {
        *v5 = v20;
      }

      v5 -= 8;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_35:
  v22 = v14 - v4 + (v14 - v4 < 0 ? 7uLL : 0);
  if (v6 != v4 || v6 >= &v4[v22 & 0xFFFFFFFFFFFFFFF8])
  {
    memmove(v6, v4, 8 * (v22 >> 3));
  }

  return 1;
}

uint64_t sub_25F12F560(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_25F12F5EC(v3);
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

uint64_t sub_25F12F600(uint64_t result, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  if (a2 < 0 || 1 << *(a5 + 32) <= a2)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a5 + 8 * (a2 >> 6) + 64) >> a2) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a5 + 36) == a3)
  {
    v6 = result;
    v7 = *(a5 + 56);
    v8 = *(*(a5 + 48) + 8 * a2);
    v9 = sub_25F17892C();
    (*(*(v9 - 8) + 16))(v6, v7 + *(*(v9 - 8) + 72) * a2, v9);
    return v8;
  }

LABEL_8:
  __break(1u);
  return result;
}

unint64_t sub_25F12F700()
{
  result = qword_27FD48710;
  if (!qword_27FD48710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD48710);
  }

  return result;
}

uint64_t sub_25F12F754(uint64_t a1, int a2)
{
  v3 = v2;
  LODWORD(v4) = a2;
  v6 = sub_25F1790AC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v26[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = sub_25F17888C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v26[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = sub_25F0ED3D8(MEMORY[0x277D84F90]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD48848, &qword_25F180788);
  v17 = swift_allocObject();
  *(v17 + 44) = 0;
  *(v17 + 16) = a1;
  *(v17 + 24) = v16;
  *(v17 + 32) = 0;
  *(v17 + 40) = 1;
  *(v3 + 16) = v17;

  if (v4)
  {
    v28 = v6;
    sub_25F17885C();
    v18 = sub_25F17887C();
    v19 = sub_25F17951C();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v27 = v4;
      v4 = v20;
      *v20 = 0;
      _os_log_impl(&dword_25F0B3000, v18, v19, "All JIT symbols will be logged", v20, 2u);
      v21 = v4;
      LOBYTE(v4) = v27;
      MEMORY[0x25F8D6230](v21, -1, -1);
    }

    (*(v12 + 8))(v15, v11);
    v6 = v28;
  }

  v29 = 0xD00000000000001DLL;
  v30 = 0x800000025F186800;
  sub_25F17909C();
  sub_25F0B7DB8();
  v22 = sub_25F17965C();
  result = (*(v7 + 8))(v10, v6);
  if (v22)
  {
    v24 = swift_allocObject();
    swift_weakInit();
    v25 = swift_allocObject();
    *(v25 + 16) = v4 & 1;
    *(v25 + 24) = v24;
    *(v25 + 32) = v22;

    sub_25F178ABC();

    return v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_25F12FA6C(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unint64_t a8, uint64_t a9)
{
  v87 = a7;
  v79 = a6;
  v82 = a5;
  v88 = a3;
  v106 = a1;
  v97 = a9;
  v12 = sub_25F178A0C();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v12);
  v78 = &v78 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v80 = &v78 - v17;
  v83 = sub_25F178A2C();
  v81 = *(v83 - 8);
  v18 = *(v81 + 64);
  MEMORY[0x28223BE20](v83);
  v98 = &v78 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_25F1788DC();
  v94 = *(v20 - 8);
  v95 = v20;
  v21 = *(v94 + 64);
  MEMORY[0x28223BE20](v20);
  v93 = &v78 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_25F17895C();
  v24 = *(v23 - 8);
  v89 = v23;
  v90 = v24;
  v25 = *(v24 + 64);
  v26 = MEMORY[0x28223BE20](v23);
  v86 = &v78 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v99 = &v78 - v28;
  v29 = sub_25F17888C();
  v91 = *(v29 - 8);
  v92 = v29;
  v30 = *(v91 + 64);
  MEMORY[0x28223BE20](v29);
  v32 = &v78 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25F17885C();

  v33 = sub_25F17887C();
  v34 = sub_25F17952C();

  v35 = a8;

  v36 = os_log_type_enabled(v33, v34);
  v85 = v12;
  v84 = v13;
  if (v36)
  {
    v37 = swift_slowAlloc();
    v38 = a4;
    v39 = swift_slowAlloc();
    v102 = v39;
    *v37 = 136446722;
    *(v37 + 4) = sub_25F0BECF0(v87, v35, &v102);
    *(v37 + 12) = 2080;
    *(v37 + 14) = sub_25F0BECF0(v106, a2, &v102);
    *(v37 + 22) = 2080;
    *(v37 + 24) = sub_25F0BECF0(v88, v38, &v102);
    _os_log_impl(&dword_25F0B3000, v33, v34, "%{public}s: Loading static archive %s with identifier %s", v37, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x25F8D6230](v39, -1, -1);
    MEMORY[0x25F8D6230](v37, -1, -1);
  }

  (*(v91 + 8))(v32, v92);
  v41 = v93;
  v40 = v94;
  v42 = v95;
  (*(v94 + 104))(v93, *MEMORY[0x277D7E8E8], v95);
  v43 = v99;
  v44 = v96;
  v45 = sub_25F17896C();
  v46 = v44;
  v47 = v98;
  if (v44)
  {
    (*(v40 + 8))(v41, v42);
  }

  else
  {
    v96 = v45;
    (*(v40 + 8))(v41, v42);
    v48 = v89;
    v49 = v90;
    v50 = v86;
    (*(v90 + 16))(v86, v43, v89);
    v51 = (*(v49 + 88))(v50, v48);
    if (v51 == *MEMORY[0x277D7E900])
    {
      sub_25F130550();
      v46 = swift_allocError();
      *v52 = v106;
      *(v52 + 8) = a2;
      *(v52 + 16) = 2;
      swift_willThrow();

      (*(v90 + 8))(v43, v89);
    }

    else
    {
      if (v51 == *MEMORY[0x277D7E8F8])
      {
        sub_25F178A7C();
        v53 = v47;
        v54 = v84;
        v55 = v78;
        v56 = v85;
        (*(v84 + 104))(v78, **(&unk_279A7F5A8 + v79), v85);
        v57 = v80;
        (*(v54 + 32))(v80, v55, v56);
        sub_25F1789FC();

        (*(v54 + 8))(v57, v56);
        (*(v81 + 8))(v53, v83);
        return (*(v90 + 8))(v43, v89);
      }

      if (v51 == *MEMORY[0x277D7E8F0])
      {
        v102 = 0;
        v103 = 0xE000000000000000;

        v58 = v89;
        sub_25F17976C();
        v59 = v102;
        v60 = v103;
        sub_25F1305A4();
        v46 = swift_allocError();
        *v61 = v106;
        v61[1] = a2;
        v61[2] = 0x65766968637261;
        v61[3] = 0xE700000000000000;
        v61[4] = v59;
        v61[5] = v60;
        swift_willThrow();

        (*(v90 + 8))(v43, v58);
      }

      else
      {
        v102 = 0;
        v103 = 0xE000000000000000;

        v62 = v89;
        sub_25F17976C();
        v63 = v102;
        v64 = v103;
        sub_25F1304FC();
        v46 = swift_allocError();
        *v65 = v106;
        v65[1] = a2;
        v65[2] = v63;
        v65[3] = v64;
        swift_willThrow();

        v66 = *(v90 + 8);
        v66(v43, v62);
        v66(v86, v62);
      }
    }
  }

  v100 = v106;
  v101 = a2;

  v67 = v46;
  sub_25F1305F8();
  sub_25F1781BC();

  v68 = v104;
  v69 = v105;
  v70 = __swift_project_boxed_opaque_existential_1(&v102, v104);
  v71 = *(v68 - 8);
  v72 = *(v71 + 64);
  MEMORY[0x28223BE20](v70);
  v74 = &v78 - ((v73 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v71 + 16))(v74);
  v75 = *(*(v69 + 8) + 8);
  if (sub_25F17981C())
  {
    (*(v71 + 8))(v74, v68);
  }

  else
  {
    swift_allocError();
    (*(v71 + 32))(v76, v74, v68);
  }

  swift_willThrow();

  return __swift_destroy_boxed_opaque_existential_1Tm(&v102);
}

unint64_t sub_25F1304A8()
{
  result = qword_27FD48718;
  if (!qword_27FD48718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD48718);
  }

  return result;
}

unint64_t sub_25F1304FC()
{
  result = qword_27FD48720;
  if (!qword_27FD48720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD48720);
  }

  return result;
}

unint64_t sub_25F130550()
{
  result = qword_27FD48728;
  if (!qword_27FD48728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD48728);
  }

  return result;
}

unint64_t sub_25F1305A4()
{
  result = qword_27FD48730;
  if (!qword_27FD48730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD48730);
  }

  return result;
}

unint64_t sub_25F1305F8()
{
  result = qword_27FD48758;
  if (!qword_27FD48758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD48758);
  }

  return result;
}

unint64_t sub_25F13066C()
{
  result = qword_27FD48788;
  if (!qword_27FD48788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD48788);
  }

  return result;
}

unint64_t sub_25F1306C0()
{
  result = qword_27FD48790;
  if (!qword_27FD48790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD48790);
  }

  return result;
}

unint64_t sub_25F130714()
{
  result = qword_27FD487A0;
  if (!qword_27FD487A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD487A0);
  }

  return result;
}

unint64_t sub_25F130768()
{
  result = qword_27FD487A8;
  if (!qword_27FD487A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD487A8);
  }

  return result;
}

unint64_t sub_25F1307BC()
{
  result = qword_27FD487B8;
  if (!qword_27FD487B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD487B8);
  }

  return result;
}

uint64_t sub_25F130830()
{
  v1 = sub_25F17767C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 56) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 2);

  v7 = *(v0 + 4);

  v8 = *(v0 + 6);

  (*(v2 + 8))(&v0[v4], v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_25F13097C()
{
  v1 = sub_25F17767C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 80) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 2);

  v7 = *(v0 + 3);

  v8 = *(v0 + 5);

  v9 = *(v0 + 7);

  v10 = *(v0 + 9);

  (*(v2 + 8))(&v0[v4], v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_25F130B48(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD48708, &qword_25F180728);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_25F130BB8(char *a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v5 = v4;
  v99 = a4;
  v103 = a3;
  v94 = a2;
  v102 = sub_25F178B1C();
  v105 = *(v102 - 8);
  v7 = *(v105 + 64);
  v8 = MEMORY[0x28223BE20](v102);
  v96 = v87 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = v87 - v10;
  v104 = sub_25F17888C();
  v95 = *(v104 - 8);
  v12 = *(v95 + 64);
  v13 = MEMORY[0x28223BE20](v104);
  v15 = v87 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v13);
  v91 = v87 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v93 = v87 - v19;
  MEMORY[0x28223BE20](v18);
  v100 = v87 - v20;
  v98 = sub_25F17835C();
  v21 = *(v98 - 1);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v98);
  v24 = v87 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD487B0, &unk_25F180760);
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x28223BE20](v25 - 8);
  v28 = v87 - v27;
  v29 = sub_25F177FBC();
  v30 = *(v29 - 8);
  v31 = *(v30 + 64);
  v32 = MEMORY[0x28223BE20](v29);
  v34 = v87 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v106 = a1;
  if (*(a1 + 2))
  {
    v107 = *(a1 + 2);
    v87[0] = v15;
    v101 = v11;
    v35 = v32;
    v87[1] = sub_25F1782EC();
    sub_25F1782DC();
    v89 = v30;
    v90 = v35;
    (*(v30 + 56))(v28, 1, 1, v35);
    v36 = v24;
    sub_25F17832C();
    v88 = v34;
    v37 = v94;
    v38 = v103;
    sub_25F1782CC();

    (*(v21 + 8))(v36, v98);
    sub_25F0B7E94(v28, &qword_27FD487B0, &unk_25F180760);
    v39 = v100;
    sub_25F17885C();

    v40 = sub_25F17887C();
    v41 = sub_25F17952C();

    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v108 = v43;
      *v42 = 136446210;
      *(v42 + 4) = sub_25F0BECF0(v37, v38, &v108);
      _os_log_impl(&dword_25F0B3000, v40, v41, "%{public}s: Applying pending updates.", v42, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v43);
      MEMORY[0x25F8D6230](v43, -1, -1);
      MEMORY[0x25F8D6230](v42, -1, -1);
    }

    v44 = v95 + 8;
    v100 = *(v95 + 8);
    v45 = (v100)(v39, v104);
    v47 = v101;
    v46 = v102;
    v48 = v93;
    v49 = *(v105 + 16);
    v50 = &v106[(*(v105 + 80) + 32) & ~*(v105 + 80)];
    v105 += 16;
    v106 = (v105 - 8);
    v97 = *(v105 + 56);
    v98 = v49;
    v45.n128_u64[0] = 136446466;
    v92 = v45;
    v51 = v96;
    v52 = v107;
    v95 = v44;
    while (v52)
    {
      v107 = v52;
      v53 = v98;
      v98(v47, v50, v46);
      sub_25F17885C();
      v53(v51, v47, v46);
      v54 = v103;

      v55 = v48;
      v56 = sub_25F17887C();
      v57 = sub_25F17952C();

      if (os_log_type_enabled(v56, v57))
      {
        v58 = swift_slowAlloc();
        v96 = v5;
        v59 = v58;
        v60 = swift_slowAlloc();
        v108 = v60;
        *v59 = v92.n128_u32[0];
        *(v59 + 4) = sub_25F0BECF0(v94, v54, &v108);
        *(v59 + 12) = 2080;
        v61 = sub_25F178B0C();
        v63 = v62;
        v64 = *v106;
        (*v106)(v51, v102);
        v65 = sub_25F0BECF0(v61, v63, &v108);
        v46 = v102;

        *(v59 + 14) = v65;
        _os_log_impl(&dword_25F0B3000, v56, v57, "%{public}s: Applying for %s", v59, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x25F8D6230](v60, -1, -1);
        v66 = v59;
        v5 = v96;
        MEMORY[0x25F8D6230](v66, -1, -1);

        v48 = v93;
        (v100)(v93, v104);
      }

      else
      {

        v64 = *v106;
        (*v106)(v51, v46);
        (v100)(v55, v104);
        v48 = v55;
      }

      v47 = v101;
      sub_25F178A4C();
      if (v5)
      {
        v107 = v64;
        v73 = v87[0];
        sub_25F17885C();
        v74 = v103;

        v75 = v5;
        v76 = sub_25F17887C();
        v77 = sub_25F17953C();

        if (os_log_type_enabled(v76, v77))
        {
          v78 = swift_slowAlloc();
          v79 = swift_slowAlloc();
          v80 = swift_slowAlloc();
          v108 = v80;
          *v78 = v92.n128_u32[0];
          *(v78 + 4) = sub_25F0BECF0(v94, v74, &v108);
          *(v78 + 12) = 2112;
          v81 = v5;
          v82 = _swift_stdlib_bridgeErrorToNSError();
          *(v78 + 14) = v82;
          *v79 = v82;
          _os_log_impl(&dword_25F0B3000, v76, v77, "%{public}s: Failed applying pending updates: %@", v78, 0x16u);
          sub_25F0B7E94(v79, &qword_27FD473D0, &unk_25F17C540);
          MEMORY[0x25F8D6230](v79, -1, -1);
          __swift_destroy_boxed_opaque_existential_1Tm(v80);
          v83 = v80;
          v47 = v101;
          MEMORY[0x25F8D6230](v83, -1, -1);
          MEMORY[0x25F8D6230](v78, -1, -1);

          v84 = v73;
          v85 = v104;
          v46 = v102;
        }

        else
        {

          v84 = v73;
          v85 = v104;
        }

        (v100)(v84, v85);
        swift_willThrow();
        (v107)(v47, v46);
        goto LABEL_18;
      }

      (v64)(v47, v46);
      v50 += v97;
      v52 = v107 - 1;
      if (v107 == 1)
      {
        v67 = v91;
        sub_25F17885C();
        v68 = v103;

        v69 = sub_25F17887C();
        v70 = sub_25F17952C();

        if (os_log_type_enabled(v69, v70))
        {
          v71 = swift_slowAlloc();
          v72 = swift_slowAlloc();
          v108 = v72;
          *v71 = 136446210;
          *(v71 + 4) = sub_25F0BECF0(v94, v68, &v108);
          _os_log_impl(&dword_25F0B3000, v69, v70, "%{public}s: Finished applying pending updates", v71, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v72);
          MEMORY[0x25F8D6230](v72, -1, -1);
          MEMORY[0x25F8D6230](v71, -1, -1);
        }

        (v100)(v67, v104);
LABEL_18:
        sub_25F1782DC();
        v86 = v88;
        sub_25F1782BC();

        (*(v89 + 8))(v86, v90);
        return;
      }
    }

    __break(1u);
  }
}

unint64_t sub_25F1315D8()
{
  result = qword_27FD47E08;
  if (!qword_27FD47E08)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27FD47E08);
  }

  return result;
}

uint64_t sub_25F131644()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_25F13169C()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_25F1316D4()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_25F13173C()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

void sub_25F131818()
{
  sub_25F17722C();
  if (v0 <= 0x3F)
  {
    sub_25F1318AC();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_25F1318AC()
{
  if (!qword_27FD48880)
  {
    v0 = sub_25F17960C();
    if (!v1)
    {
      atomic_store(v0, &qword_27FD48880);
    }
  }
}

uint64_t sub_25F1319B8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 17))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_25F131A00(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 17) = 1;
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

    *(result + 17) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  if (a2 == 0x7FFFFFFF)
  {
    v5 = *(a1 + 8);
    if (v5 >= 0xFFFFFFFF)
    {
      LODWORD(v5) = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = a4(0);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 20);

    return v10(v11, a2, v9);
  }
}

uint64_t __swift_store_extra_inhabitant_indexTm(uint64_t result, uint64_t a2, int a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = a5(0);
    v9 = *(*(v8 - 8) + 56);
    v10 = v6 + *(a4 + 20);

    return v9(v10, a2, a2, v8);
  }

  return result;
}

uint64_t sub_25F131C30()
{
  result = sub_25F1779DC();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_index_62Tm(uint64_t a1, uint64_t a2)
{
  v4 = sub_25F17767C();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t __swift_store_extra_inhabitant_index_63Tm(uint64_t a1, uint64_t a2)
{
  v4 = sub_25F17767C();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_25F131DC8()
{
  result = sub_25F17767C();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_25F131E48()
{
  result = qword_27FD488E0;
  if (!qword_27FD488E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD488E0);
  }

  return result;
}

unint64_t sub_25F131F7C()
{
  result = qword_27FD488F8;
  if (!qword_27FD488F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD488F8);
  }

  return result;
}

unint64_t sub_25F131FD4()
{
  result = qword_27FD48900;
  if (!qword_27FD48900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD48900);
  }

  return result;
}

unint64_t sub_25F132108()
{
  result = qword_27FD48918;
  if (!qword_27FD48918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD48918);
  }

  return result;
}

unint64_t sub_25F132160()
{
  result = qword_27FD48920;
  if (!qword_27FD48920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD48920);
  }

  return result;
}

unint64_t sub_25F1321B8()
{
  result = qword_27FD48928;
  if (!qword_27FD48928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD48928);
  }

  return result;
}

unint64_t sub_25F132214()
{
  result = qword_27FD48930;
  if (!qword_27FD48930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD48930);
  }

  return result;
}

unint64_t sub_25F13226C()
{
  result = qword_27FD48938;
  if (!qword_27FD48938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD48938);
  }

  return result;
}

unint64_t sub_25F1322C8()
{
  result = qword_27FD48940;
  if (!qword_27FD48940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD48940);
  }

  return result;
}

unint64_t sub_25F132320()
{
  result = qword_27FD48948;
  if (!qword_27FD48948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD48948);
  }

  return result;
}

unint64_t sub_25F13237C()
{
  result = qword_27FD48950;
  if (!qword_27FD48950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD48950);
  }

  return result;
}

unint64_t sub_25F1323D4()
{
  result = qword_27FD48958;
  if (!qword_27FD48958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD48958);
  }

  return result;
}

unint64_t sub_25F13242C()
{
  result = qword_27FD48960;
  if (!qword_27FD48960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD48960);
  }

  return result;
}

unint64_t sub_25F132488()
{
  result = qword_27FD48968;
  if (!qword_27FD48968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD48968);
  }

  return result;
}

unint64_t sub_25F1324E0()
{
  result = qword_27FD48970;
  if (!qword_27FD48970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD48970);
  }

  return result;
}

unint64_t sub_25F132538()
{
  result = qword_27FD48978;
  if (!qword_27FD48978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD48978);
  }

  return result;
}

unint64_t sub_25F132594()
{
  result = qword_27FD48980;
  if (!qword_27FD48980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD48980);
  }

  return result;
}

unint64_t sub_25F1325EC()
{
  result = qword_27FD48988;
  if (!qword_27FD48988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD48988);
  }

  return result;
}

unint64_t sub_25F132648()
{
  result = qword_27FD48990;
  if (!qword_27FD48990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD48990);
  }

  return result;
}

unint64_t sub_25F1326A0()
{
  result = qword_27FD48998;
  if (!qword_27FD48998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD48998);
  }

  return result;
}

unint64_t sub_25F132980()
{
  result = qword_27FD489D0;
  if (!qword_27FD489D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD489D0);
  }

  return result;
}

unint64_t sub_25F1329D8()
{
  result = qword_27FD489D8;
  if (!qword_27FD489D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD489D8);
  }

  return result;
}

unint64_t sub_25F132A30()
{
  result = qword_27FD489E0;
  if (!qword_27FD489E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD489E0);
  }

  return result;
}

unint64_t sub_25F132A88()
{
  result = qword_27FD489E8;
  if (!qword_27FD489E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD489E8);
  }

  return result;
}

unint64_t sub_25F132AE0()
{
  result = qword_27FD489F0;
  if (!qword_27FD489F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD489F0);
  }

  return result;
}

unint64_t sub_25F132B38()
{
  result = qword_27FD489F8;
  if (!qword_27FD489F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD489F8);
  }

  return result;
}

unint64_t sub_25F132B8C()
{
  result = qword_27FD48A18;
  if (!qword_27FD48A18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD48A18);
  }

  return result;
}

unint64_t sub_25F132BE0()
{
  result = qword_27FD48A20;
  if (!qword_27FD48A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD48A20);
  }

  return result;
}

unint64_t sub_25F132C34()
{
  result = qword_27FD48A28;
  if (!qword_27FD48A28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD48A28);
  }

  return result;
}

unint64_t sub_25F132C88()
{
  result = qword_27FD48A30;
  if (!qword_27FD48A30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD48A30);
  }

  return result;
}

unint64_t sub_25F132CDC()
{
  result = qword_27FD48A38;
  if (!qword_27FD48A38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD48A38);
  }

  return result;
}

unint64_t sub_25F132D30()
{
  result = qword_27FD48A40;
  if (!qword_27FD48A40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD48A40);
  }

  return result;
}

unint64_t sub_25F132D84()
{
  result = qword_27FD48A48;
  if (!qword_27FD48A48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD48A48);
  }

  return result;
}

unint64_t sub_25F132DD8()
{
  result = qword_27FD48A78;
  if (!qword_27FD48A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD48A78);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PreviewsJITLinkerState.InvalidLinkerInputFile.Location(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

unint64_t sub_25F132ED0()
{
  result = qword_27FD48A88;
  if (!qword_27FD48A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD48A88);
  }

  return result;
}

uint64_t CanvasUpdateResult.staticChromeType.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 44);
  v5 = sub_25F17719C();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t CanvasUpdateResult.makeStaticOutput.getter(uint64_t a1)
{
  v2 = (v1 + *(a1 + 48));
  v3 = *v2;
  v4 = v2[1];

  return v3;
}

uint64_t CanvasUpdateResult.controlConfiguration.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2 + *(a1 + 52);
  v4 = *(v3 + 48);
  v5 = *(v3 + 16);
  *a2 = *v3;
  *(a2 + 16) = v5;
  *(a2 + 32) = *(v3 + 32);
  *(a2 + 48) = v4;
}

uint64_t CanvasUpdateResult.init(hostedOutput:staticChromeType:makeStaticOutput:controlConfiguration:controlStates:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, __int128 *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>, uint64_t a9)
{
  v15 = *(a5 + 6);
  (*(*(a7 - 8) + 32))(a8, a1, a7);
  updated = type metadata accessor for CanvasUpdateResult();
  v17 = updated[11];
  v18 = sub_25F17719C();
  v25 = a5[1];
  v26 = *a5;
  v24 = a5[2];
  (*(*(v18 - 8) + 32))(a8 + v17, a2, v18);
  v19 = (a8 + updated[12]);
  *v19 = a3;
  v19[1] = a4;
  v20 = a8 + updated[13];
  *v20 = v26;
  *(v20 + 16) = v25;
  *(v20 + 32) = v24;
  *(v20 + 48) = v15;
  v21 = *(*(a9 - 8) + 32);
  v22 = a8 + updated[14];

  return v21(v22, a6, a9);
}

uint64_t CanvasUpdateResult.init<>(hostedOutput:staticChromeType:makeStaticOutput:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v25 = a4;
  v26 = a6;
  v12 = sub_25F17719C();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v24 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(a5 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v15);
  v21 = &v24 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v18 + 16))(v21, a1, a5);
  (*(v13 + 32))(v17, a2, v12);
  (*(v18 + 8))(a1, a5);
  *&v27 = MEMORY[0x277D84F90];
  *(&v27 + 1) = nullsub_1;
  v28 = 0;
  v29 = sub_25F157D78;
  v30 = 0;
  v31 = sub_25F157D84;
  v32 = 0;
  return CanvasUpdateResult.init(hostedOutput:staticChromeType:makeStaticOutput:controlConfiguration:controlStates:)(v21, v17, a3, v25, &v27, v22, a5, a7, MEMORY[0x277D84F78] + 8);
}

uint64_t CanvasUpdateResult.init<>(hostedOutput:staticChromeType:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_25F17719C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(a3 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v11);
  v17 = &v20 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v14 + 16))(v17, a1, a3);
  (*(v9 + 32))(v13, a2, v8);
  (*(v14 + 8))(a1, a3);
  *&v21 = MEMORY[0x277D84F90];
  *(&v21 + 1) = nullsub_1;
  v22 = 0;
  v23 = sub_25F157D78;
  v24 = 0;
  v25 = sub_25F157D84;
  v26 = 0;
  return CanvasUpdateResult.init(hostedOutput:staticChromeType:makeStaticOutput:controlConfiguration:controlStates:)(v17, v13, sub_25F133718, 0, &v21, v18, a3, a4, MEMORY[0x277D84F78] + 8);
}

uint64_t CanvasUpdateResult.init<>(staticChromeType:makeStaticOutput:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_25F17719C();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = (*(v12 + 32))(v11, a1);
  *&v17 = MEMORY[0x277D84F90];
  *(&v17 + 1) = nullsub_1;
  v18 = 0;
  v19 = sub_25F157D78;
  v20 = 0;
  v21 = sub_25F157D84;
  v22 = 0;
  return CanvasUpdateResult.init(hostedOutput:staticChromeType:makeStaticOutput:controlConfiguration:controlStates:)(v13, v11, a2, a3, &v17, v14, MEMORY[0x277D84F78] + 8, a4, MEMORY[0x277D84F78] + 8);
}

uint64_t CanvasUpdateResult.init<>(staticChromeType:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_25F17719C();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27FD48A90, &qword_25F1820F0);
  v6 = (a2 + *(result + 48));
  *v6 = sub_25F1339C4;
  v6[1] = 0;
  v7 = (a2 + *(result + 52));
  *v7 = MEMORY[0x277D84F90];
  v7[1] = nullsub_1;
  v7[2] = 0;
  v7[3] = sub_25F157D78;
  v7[4] = 0;
  v7[5] = sub_25F157D84;
  v7[6] = 0;
  return result;
}

uint64_t CanvasUpdateResult.init<>(hostedOutput:staticChromeType:controlConfiguration:controlStates:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v7 = *(a3 + 48);
  v8 = *(a3 + 16);
  v10[0] = *a3;
  v10[1] = v8;
  v10[2] = *(a3 + 32);
  v11 = v7;
  return CanvasUpdateResult.init(hostedOutput:staticChromeType:makeStaticOutput:controlConfiguration:controlStates:)(a1, a2, sub_25F133AB0, 0, v10, a4, a5, a7, a6);
}

uint64_t CanvasUpdateResult.init<>(staticChromeType:makeStaticOutput:controlConfiguration:controlStates:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X6>, uint64_t a7@<X8>)
{
  v7 = *(a4 + 48);
  v8 = *(a4 + 16);
  v10[0] = *a4;
  v10[1] = v8;
  v10[2] = *(a4 + 32);
  v11 = v7;
  return CanvasUpdateResult.init(hostedOutput:staticChromeType:makeStaticOutput:controlConfiguration:controlStates:)(a1, a1, a2, a3, v10, a5, MEMORY[0x277D84F78] + 8, a7, a6);
}

uint64_t CanvasUpdateResult.init<>(staticChromeType:controlConfiguration:controlStates:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v5 = *(a2 + 48);
  v6 = *(a2 + 16);
  v8[0] = *a2;
  v8[1] = v6;
  v8[2] = *(a2 + 32);
  v9 = v5;
  return CanvasUpdateResult.init(hostedOutput:staticChromeType:makeStaticOutput:controlConfiguration:controlStates:)(a1, a1, sub_25F133C00, 0, v8, a3, MEMORY[0x277D84F78] + 8, a5, a4);
}

uint64_t CanvasUpdateOutput.hostedOutput.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_25F177F8C();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t CanvasUpdateOutput.staticChromeType.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for CanvasUpdateOutput() + 20);
  v4 = sub_25F17719C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t CanvasUpdateOutput.makeStaticOutput.getter()
{
  v1 = (v0 + *(type metadata accessor for CanvasUpdateOutput() + 24));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t CanvasUpdateOutput.controlDescriptions.getter()
{
  v1 = *(v0 + *(type metadata accessor for CanvasUpdateOutput() + 28));
}

uint64_t CanvasUpdateOutput.controlStates.getter()
{
  v1 = *(v0 + *(type metadata accessor for CanvasUpdateOutput() + 32));
}

uint64_t sub_25F133E08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  sub_25F133E60(a1, a2, a3);
  return v6;
}

void *sub_25F133E60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = *(*v3 + 80);
  v8 = *(*v3 + 88);
  v18 = *(*(v8 + 16) + 8);
  sub_25F17828C();
  *(v3 + 64) = sub_25F17827C();
  *(v3 + 72) = 0u;
  *(v3 + 88) = 0u;
  *(v3 + 104) = 0u;
  *(v3 + 116) = 0u;
  *(v3 + 132) = 1;
  *(v3 + 136) = 0;
  *(v3 + 16) = a1;
  *(v3 + 24) = a2;
  v9 = sub_25F1776AC();
  v10 = *(v9 - 8);
  v11 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v12 = (*(v10 + 64) + v11 + 7) & 0xFFFFFFFFFFFFFFF8;
  v13 = swift_allocObject();
  *(v13 + 16) = v7;
  *(v13 + 24) = v8;
  (*(v10 + 32))(v13 + v11, a3, v9);
  v14 = (v13 + v12);
  *v14 = a1;
  v14[1] = a2;
  v4[4] = &unk_25F1823A0;
  v4[5] = v13;
  v15 = swift_allocObject();
  *(v15 + 16) = a1;
  *(v15 + 24) = a2;
  v4[6] = sub_25F13C0B8;
  v4[7] = v15;
  swift_unknownObjectRetain_n();
  return v4;
}

uint64_t sub_25F134034(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[2] = sub_25F17930C();
  v7[3] = sub_25F1792FC();
  v15 = *(a5 + 8);
  v16 = *(a7 + 56);
  v20 = (v16 + *v16);
  v17 = v16[1];
  v18 = swift_task_alloc();
  v7[4] = v18;
  *v18 = v7;
  v18[1] = sub_25F1341B0;

  return v20(a1, a3, a4, v15, a2, a6, a7);
}

uint64_t sub_25F1341B0()
{
  v2 = v0;
  v3 = *(*v1 + 32);
  v4 = *(*v1 + 24);
  v5 = *(*v1 + 16);
  v10 = *v1;
  *(*v1 + 40) = v2;

  v7 = sub_25F1792CC();
  if (v2)
  {
    v8 = sub_25F134370;
  }

  else
  {
    v8 = sub_25F13430C;
  }

  return MEMORY[0x2822009F8](v8, v7, v6);
}

uint64_t sub_25F13430C()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_25F134370()
{
  v1 = v0[3];

  v2 = v0[1];
  v3 = v0[5];

  return v2();
}

uint64_t sub_25F134410(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = v8;
  v78 = a8;
  v81 = a7;
  v80 = a6;
  v79 = a4;
  v77 = a3;
  v84 = a2;
  v72 = a1;
  v82 = *v8;
  v75 = sub_25F177F8C();
  v88 = *(v75 - 8);
  v76 = *(v88 + 64);
  MEMORY[0x28223BE20](v75);
  v87 = v59 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = sub_25F177FFC();
  v89 = *(v83 - 8);
  v13 = *(v89 + 64);
  MEMORY[0x28223BE20](v83);
  v15 = v59 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_25F177D2C();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v69 = v18;
  v19 = v59 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *a1;
  *(v8 + 32) = *a1;
  *(v8 + 132) = 0;
  v21 = *(v17 + 16);
  v66 = v17 + 16;
  v67 = v21;
  v86 = v19;
  v63 = a5;
  v23 = v22;
  v85 = v22;
  (v21)(v19, a5);
  v70 = *(v17 + 80);
  v24 = (v70 + 40) & ~v70;
  v71 = v70 | 7;
  v25 = swift_allocObject();
  v26 = v82;
  v27 = *(v82 + 80);
  v25[2] = v27;
  v82 = *(v26 + 88);
  v25[3] = v82;
  v25[4] = v9;
  v28 = *(v17 + 32);
  v73 = v17 + 32;
  v74 = v28;
  v28(v25 + v24, v19, v23);

  sub_25F10436C();

  v29 = v9[8];
  LODWORD(v93) = v20;
  v90 = v9;
  v91 = v72;
  v68 = sub_25F17825C();
  v30 = swift_allocObject();
  v31 = v82;
  *(v30 + 16) = v27;
  *(v30 + 24) = v31;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD48BB8, &qword_25F182348);
  sub_25F1008A0();
  sub_25F1785BC();

  v33 = v89 + 8;
  v32 = *(v89 + 8);
  v34 = v83;
  v32(v15, v83);
  v65 = v32;
  v89 = v33;
  sub_25F177FCC();
  sub_25F17875C();

  v61 = v15;
  v32(v15, v34);
  v64 = v9;
  v35 = *(v9 + 11);
  v93 = *(v9 + 9);
  v94 = v35;
  v95 = *(v9 + 13);
  v96 = v9[15];
  v36 = v27;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  type metadata accessor for CanvasControlConfiguration();
  v84 = sub_25F17960C();
  v72 = *(v84 - 8);
  v37 = *(v72 + 2);
  v59[1] = v72 + 4;
  v60 = v37;
  v37(&v92, &v93, v84);
  sub_25F177FDC();
  v38 = v88;
  v39 = v75;
  (*(v88 + 16))(v87, v77, v75);
  v67(v86, v63, v85);
  sub_25F0BEC1C(v78, &v92);
  v40 = (*(v38 + 80) + 32) & ~*(v38 + 80);
  v41 = (v76 + v40 + 7) & 0xFFFFFFFFFFFFFFF8;
  v42 = (v41 + 15) & 0xFFFFFFFFFFFFFFF8;
  v43 = (v70 + v42 + 56) & ~v70;
  v44 = (v69 + v43 + 7) & 0xFFFFFFFFFFFFFFF8;
  v45 = swift_allocObject();
  v46 = v82;
  *(v45 + 16) = v36;
  *(v45 + 24) = v46;
  (*(v88 + 32))(v45 + v40, v87, v39);
  *(v45 + v41) = v79;
  v47 = v45 + v42;
  *(v47 + 48) = v96;
  v48 = v95;
  *(v47 + 16) = v94;
  *(v47 + 32) = v48;
  *v47 = v93;
  v74(v45 + v43, v86, v85);
  v49 = (v45 + v44);
  v50 = v81;
  *v49 = v80;
  v49[1] = v50;
  sub_25F0C0C84(&v92, v45 + ((v44 + 23) & 0xFFFFFFFFFFFFFFF8));
  v60(&v92, &v93, v84);
  swift_getAssociatedTypeWitness();
  v51 = *(v46 + 16);
  v52 = v46;
  swift_getAssociatedTypeWitness();
  type metadata accessor for CanvasUpdateResult();

  v53 = v61;
  sub_25F1786AC();

  v54 = v83;
  v55 = v65;
  v65(v53, v83);

  sub_25F17860C();

  v56 = swift_allocObject();
  *(v56 + 16) = v36;
  *(v56 + 24) = v52;
  type metadata accessor for CanvasUpdateOutput();
  sub_25F177FCC();
  v57 = sub_25F1785EC();

  (*(v72 + 1))(&v93, v84);
  v55(v53, v54);
  return v57;
}

uint64_t sub_25F134D80(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD480F8, &qword_25F17F060);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v10 - v6;
  sub_25F177D0C();
  v8 = sub_25F134E50(a1, a2, v7);
  sub_25F0B7E94(v7, &qword_27FD480F8, &qword_25F17F060);
  return v8 & 1;
}

uint64_t sub_25F134E50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v61 = a3;
  v66 = a1;
  v53 = *v3;
  v5 = *(v53 + 80);
  v6 = sub_25F17960C();
  v51 = *(v6 - 8);
  v52 = v6;
  v7 = *(v51 + 64);
  v8 = MEMORY[0x28223BE20](v6);
  v54 = &v49 - v9;
  v55 = *(v5 - 8);
  v10 = *(v55 + 64);
  MEMORY[0x28223BE20](v8);
  v50 = &v49 - v11;
  v12 = sub_25F1774BC();
  v63 = *(v12 - 8);
  v64 = v12;
  v13 = *(v63 + 64);
  MEMORY[0x28223BE20](v12);
  v62 = &v49 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_25F17757C();
  v59 = *(v15 - 8);
  v60 = v15;
  v16 = *(v59 + 64);
  MEMORY[0x28223BE20](v15);
  v57 = &v49 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD480F8, &qword_25F17F060);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v58 = &v49 - v20;
  v21 = sub_25F177CBC();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  v24 = MEMORY[0x28223BE20](v21);
  v65 = &v49 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x28223BE20](v24);
  v28 = &v49 - v27;
  MEMORY[0x28223BE20](v26);
  v30 = &v49 - v29;
  sub_25F177C9C();
  sub_25F13BE44(&qword_27FD48098, MEMORY[0x277D40C50]);
  v31 = a2;
  sub_25F1791FC();
  sub_25F1791FC();
  v56 = v5;
  if (v69 == v67 && v70 == v68)
  {
    v32 = 1;
  }

  else
  {
    v32 = sub_25F17983C();
  }

  v33 = *(v22 + 8);
  v33(v30, v21);

  if (v32)
  {
    sub_25F1372D4(v66);
LABEL_12:
    v36 = 1;
    return v36 & 1;
  }

  sub_25F177CAC();
  v34 = v31;
  sub_25F1791FC();
  sub_25F1791FC();
  if (v69 == v67 && v70 == v68)
  {
    v33(v28, v21);

LABEL_11:
    sub_25F137680(v66);
    goto LABEL_12;
  }

  v35 = sub_25F17983C();
  v33(v28, v21);

  if (v35)
  {
    goto LABEL_11;
  }

  v38 = v65;
  sub_25F177C8C();
  sub_25F1791FC();
  sub_25F1791FC();
  if (v69 == v67 && v70 == v68)
  {
    v33(v38, v21);

LABEL_18:
    v40 = v58;
    sub_25F0B7E2C(v61, v58, &qword_27FD480F8, &qword_25F17F060);
    v42 = v59;
    v41 = v60;
    if ((*(v59 + 48))(v40, 1, v60) != 1)
    {
      v43 = v57;
      (*(v42 + 32))(v57, v40, v41);
      v69 = 0x2D6C6C656873;
      v70 = 0xE600000000000000;
      sub_25F13BE44(&qword_27FD48BC8, MEMORY[0x277D40810]);
      v44 = sub_25F17980C();
      MEMORY[0x25F8D50D0](v44);

      (*(v42 + 8))(v43, v41);
    }

    sub_25F1777AC();
    (*(v63 + 16))(v62, v66, v64);
    sub_25F17779C();

    goto LABEL_12;
  }

  v39 = sub_25F17983C();
  v33(v38, v21);

  if (v39)
  {
    goto LABEL_18;
  }

  v45 = v54;
  sub_25F137120(v54);
  v47 = v55;
  v46 = v56;
  if ((*(v55 + 48))(v45, 1, v56) == 1)
  {
    (*(v51 + 8))(v45, v52);
    v36 = 0;
  }

  else
  {
    v48 = v50;
    (*(v47 + 32))(v50, v45, v46);
    v36 = (*(*(*(v53 + 88) + 16) + 32))(v66, v34, v46);
    (*(v47 + 8))(v48, v46);
  }

  return v36 & 1;
}

uint64_t sub_25F135640(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v5 = type metadata accessor for PreviewAgentConnector();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD46BB0, &qword_25F17AF30);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = v19 - v10;
  v12 = *(v4 + 80);
  v19[1] = sub_25F17873C();
  v13 = sub_25F17932C();
  (*(*(v13 - 8) + 56))(v11, 1, 1, v13);
  sub_25F13BA58(a2, v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PreviewAgentConnector);
  v14 = (*(v6 + 80) + 40) & ~*(v6 + 80);
  v15 = swift_allocObject();
  v15[2] = v12;
  v16 = *(v4 + 88);
  v15[3] = v16;
  v15[4] = a1;
  sub_25F13BCD8(v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v15 + v14, type metadata accessor for PreviewAgentConnector);
  v17 = swift_allocObject();
  *(v17 + 16) = v12;
  *(v17 + 24) = v16;

  return sub_25F17870C();
}

uint64_t sub_25F1358C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_25F1358E4, 0, 0);
}

uint64_t sub_25F1358E4()
{
  sub_25F17930C();
  *(v0 + 40) = sub_25F1792FC();
  v2 = sub_25F1792CC();

  return MEMORY[0x2822009F8](sub_25F135978, v2, v1);
}

uint64_t sub_25F135978()
{
  v1 = v0[5];
  v2 = v0[3];

  v3 = *(v2 + 32);
  v4 = *(v2 + 40);
  v10 = (v3 + *v3);
  v5 = v3[1];
  v6 = swift_task_alloc();
  v0[6] = v6;
  *v6 = v0;
  v6[1] = sub_25F135A78;
  v7 = v0[4];
  v8 = v0[2];

  return v10(v8, v7);
}

uint64_t sub_25F135A78()
{
  v1 = *(*v0 + 48);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_25F135B6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(uint64_t *), uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v42 = a5;
  v43 = a8;
  v38 = a7;
  v39 = a6;
  v35 = a4;
  v33 = a3;
  v41 = a1;
  v46 = sub_25F177D7C();
  v44 = *(v46 - 8);
  v12 = *(v44 + 64);
  MEMORY[0x28223BE20](v46);
  v40 = &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v14 = sub_25F17960C();
  v37 = *(v14 - 8);
  v15 = *(v37 + 64);
  MEMORY[0x28223BE20](v14);
  v36 = &v29 - v16;
  v17 = *(a10 + 16);
  v18 = swift_getAssociatedTypeWitness();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  v22 = &v29 - v21;
  v23 = (*(v17 + 48))(a2, a9, v17);
  if (!v10)
  {
    v30 = v19;
    v31 = v18;
    v32 = v14;
    v45[0] = v33;
    MEMORY[0x28223BE20](v23);
    *(&v29 - 4) = a9;
    *(&v29 - 3) = a10;
    *(&v29 - 2) = v35;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD48BC0, &unk_25F182350);
    v24 = v36;
    sub_25F100B94(sub_25F13B290, (&v29 - 6), MEMORY[0x277D84A98], AssociatedTypeWitness, v25, v36);
    v45[3] = a9;
    v45[4] = a10;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v45);
    (*(*(a9 - 8) + 16))(boxed_opaque_existential_1, v41, a9);
    v27 = v40;
    v39(v45);
    __swift_destroy_boxed_opaque_existential_1Tm(v45);
    v18 = (*(a10 + 48))(v22, v24, v42, v27, v43, a9, a10);
    (*(v44 + 8))(v27, v46);
    (*(v37 + 8))(v24, v32);
    (*(v30 + 8))(v22, v31);
  }

  return v18;
}

uint64_t sub_25F135F9C@<X0>(void *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v11 = *a2;
  v12 = a2[2];
  v13 = a2[6];
  v45 = a2[4];
  v46 = v13;
  v14 = sub_25F17888C();
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v14);
  v19 = &v39 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v11)
  {
    v43 = v17;
    v44 = v16;
    v47 = a4;
    v48 = a3;
    v20 = *a1;
    (a2[1])(*a1);
    if (!v5)
    {
      AssociatedTypeWitness = swift_getAssociatedTypeWitness();
      return (*(*(AssociatedTypeWitness - 8) + 56))(a5, 0, 1, AssociatedTypeWitness);
    }

    if (*(v20 + 16))
    {
      v41 = v5;
      v42 = a5;
      sub_25F17886C();

      swift_getAssociatedTypeWitness();
      type metadata accessor for CanvasControlConfiguration();
      v21 = sub_25F17960C();
      v22 = *(v21 - 8);
      (*(v22 + 16))(v49, a2, v21);
      v23 = sub_25F17887C();
      v24 = sub_25F17953C();

      (*(v22 + 8))(a2, v21);
      v25 = v23;
      v40 = v24;
      if (os_log_type_enabled(v23, v24))
      {
        v26 = swift_slowAlloc();
        v39 = swift_slowAlloc();
        v51 = v39;
        *v26 = 136315394;
        v27 = sub_25F1774FC();
        v28 = MEMORY[0x25F8D51C0](v20, v27);
        v30 = sub_25F0BECF0(v28, v29, &v51);

        *(v26 + 4) = v30;
        *(v26 + 12) = 2080;
        v31 = *(a2 + 1);
        v49[0] = *a2;
        v49[1] = v31;
        v49[2] = *(a2 + 2);
        v50 = a2[6];

        v32 = sub_25F1790BC();
        v34 = sub_25F0BECF0(v32, v33, &v51);

        *(v26 + 14) = v34;
        _os_log_impl(&dword_25F0B3000, v25, v40, "Failed to decode state: %s, for configuration: %s", v26, 0x16u);
        v35 = v39;
        swift_arrayDestroy();
        MEMORY[0x25F8D6230](v35, -1, -1);
        MEMORY[0x25F8D6230](v26, -1, -1);
      }

      (*(v43 + 8))(v19, v44);
      a5 = v42;
    }

    else
    {
    }
  }

  v38 = swift_getAssociatedTypeWitness();
  return (*(*(v38 - 8) + 56))(a5, 1, 1, v38);
}

uint64_t sub_25F136420(uint64_t a1, void *a2)
{
  v4 = *(*a2 + 88);
  v5 = *(*a2 + 80);
  swift_getAssociatedTypeWitness();
  v6 = *(v4 + 16);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  v7 = a1 + *(type metadata accessor for CanvasUpdateResult() + 52);
  v8 = *(v7 + 48);
  v9 = a2[9];
  v10 = a2[10];
  v11 = a2[11];
  v12 = a2[12];
  v13 = a2[13];
  v14 = a2[14];
  v15 = a2[15];
  v16 = *(v7 + 16);
  *(a2 + 9) = *v7;
  *(a2 + 11) = v16;
  *(a2 + 13) = *(v7 + 32);
  a2[15] = v8;

  return sub_25F13B230(v9);
}

uint64_t sub_25F1365A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v32 = a1;
  swift_getAssociatedTypeWitness();
  v8 = *(a3 + 16);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  updated = type metadata accessor for CanvasUpdateResult();
  v10 = *(updated - 1);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](updated);
  v13 = &v30 - v12;
  v14 = *(a3 + 40);
  v33 = a4;
  v14(a1, a2, a3);
  v31 = updated[11];
  v15 = type metadata accessor for CanvasUpdateOutput();
  v16 = v15[5];
  v17 = sub_25F17719C();
  v18 = a4 + v16;
  v19 = v32;
  (*(*(v17 - 8) + 16))(v18, v32 + v31, v17);
  (*(v10 + 16))(v13, v19, updated);
  v20 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v21 = swift_allocObject();
  *(v21 + 16) = a2;
  *(v21 + 24) = a3;
  (*(v10 + 32))(v21 + v20, v13, updated);
  v22 = updated[14];
  v23 = (v19 + updated[13]);
  v24 = *v23;
  v25 = v23[3];
  v26 = v23[4];

  result = v25(v19 + v22);
  v28 = v33;
  v29 = (v33 + v15[6]);
  *v29 = sub_25F13B100;
  v29[1] = v21;
  *(v28 + v15[7]) = v24;
  *(v28 + v15[8]) = result;
  return result;
}

uint64_t sub_25F136828(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_25F177FFC();
  v17 = *(v7 - 8);
  v8 = *(v17 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getAssociatedTypeWitness();
  v11 = *(a3 + 16);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  v12 = a1 + *(type metadata accessor for CanvasUpdateResult() + 48);
  v13 = *(v12 + 8);
  (*v12)();
  if (!v3)
  {
    v14 = swift_allocObject();
    *(v14 + 16) = a2;
    *(v14 + 24) = a3;
    sub_25F177F8C();
    sub_25F1008A0();
    a3 = sub_25F1785BC();

    (*(v17 + 8))(v10, v7);
  }

  return a3;
}

uint64_t sub_25F136A5C(uint64_t result)
{
  if (*(v1 + 136))
  {
    *(swift_allocObject() + 16) = result;

    sub_25F17860C();
  }

  return result;
}

uint64_t sub_25F136AF8(uint64_t a1, int a2)
{
  v34 = a2;
  v33 = a1;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD480A8, &qword_25F17EFA0);
  v2 = *(v32 - 8);
  v30[1] = *(v2 + 64);
  MEMORY[0x28223BE20](v32);
  v31 = v30 - v3;
  v4 = sub_25F17781C();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_25F17888C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = v30 - v14;
  sub_25F17886C();
  v16 = sub_25F17887C();
  v17 = sub_25F17955C();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 67240192;
    *(v18 + 4) = v34;
    _os_log_impl(&dword_25F0B3000, v16, v17, "Notifying host that crash occurred for %{public}d", v18, 8u);
    MEMORY[0x25F8D6230](v18, -1, -1);
  }

  v19 = *(v9 + 8);
  v19(v15, v8);
  *v7 = v34;
  v7[4] = 0;
  swift_storeEnumTagMultiPayload();
  v20 = v32;
  sub_25F17746C();
  sub_25F10297C(v7);
  sub_25F17886C();
  v21 = sub_25F17887C();
  v22 = sub_25F17955C();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    *v23 = 67240192;
    *(v23 + 4) = v34;
    _os_log_impl(&dword_25F0B3000, v21, v22, "Gathering crash details for %{public}d", v23, 8u);
    MEMORY[0x25F8D6230](v23, -1, -1);
  }

  v19(v13, v8);
  sub_25F176FCC();
  v24 = sub_25F176FBC();
  v25 = v34;
  sub_25F176F9C();

  v26 = v31;
  (*(v2 + 16))(v31, v33, v20);
  v27 = (*(v2 + 80) + 20) & ~*(v2 + 80);
  v28 = swift_allocObject();
  *(v28 + 16) = v25;
  (*(v2 + 32))(v28 + v27, v26, v20);
  sub_25F17860C();
}

uint64_t sub_25F136EEC(uint64_t a1, int a2)
{
  v4 = sub_25F17781C();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_25F17888C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25F17886C();
  v13 = sub_25F17887C();
  v14 = sub_25F17955C();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 67240192;
    *(v15 + 4) = a2;
    _os_log_impl(&dword_25F0B3000, v13, v14, "Sending host crash details for %{public}d", v15, 8u);
    MEMORY[0x25F8D6230](v15, -1, -1);
  }

  (*(v9 + 8))(v12, v8);
  v16 = sub_25F177EAC();
  (*(*(v16 - 8) + 16))(v7, a1, v16);
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD480A8, &qword_25F17EFA0);
  sub_25F17746C();
  return sub_25F10297C(v7);
}

uint64_t sub_25F137120@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = *v1;
  v7 = *(v2 + 128);
  v8 = *(v2 + 132);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD48090, &unk_25F17EF60);
  return sub_25F100B94(sub_25F13BE8C, v2, MEMORY[0x277D84A98], *(v4 + 80), v5, a1);
}

uint64_t sub_25F1371CC@<X0>(int *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *a2;
  v5 = *a1;
  v6 = a2[8];
  sub_25F17826C();
  v7 = *(v4 + 80);
  sub_25F17873C();
  sub_25F17900C();

  if (!v9)
  {
    return (*(*(v7 - 8) + 56))(a3, 1, 1, v7);
  }

  sub_25F17861C();
}

uint64_t sub_25F1372D4(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = sub_25F1774BC();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_25F17888C();
  v34 = *(v9 - 8);
  v35 = v9;
  v10 = *(v34 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25F17886C();

  v13 = sub_25F17887C();
  v14 = sub_25F17952C();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v31 = v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    v16 = v15;
    v17 = swift_slowAlloc();
    v30[1] = v7;
    v18 = v17;
    v36 = v17;
    *v16 = 136315138;
    v19 = *v2;
    v33 = a1;
    v20 = *(v19 + 80);

    v21 = sub_25F17992C();
    v32 = v5;
    v22 = v4;
    v24 = v23;

    v25 = sub_25F0BECF0(v21, v24, &v36);
    v4 = v22;
    v5 = v32;

    *(v16 + 4) = v25;
    a1 = v33;
    _os_log_impl(&dword_25F0B3000, v13, v14, "Received incoming control events message stream for %s", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v18);
    MEMORY[0x25F8D6230](v18, -1, -1);
    v26 = v16;
    v8 = v31;
    MEMORY[0x25F8D6230](v26, -1, -1);
  }

  else
  {
  }

  (*(v34 + 8))(v12, v35);
  sub_25F17780C();
  (*(v6 + 16))(v8, a1, v5);
  v27 = (*(v6 + 80) + 40) & ~*(v6 + 80);
  v28 = swift_allocObject();
  *(v28 + 2) = *(v4 + 80);
  *(v28 + 3) = *(v4 + 88);
  *(v28 + 4) = v2;
  (*(v6 + 32))(&v28[v27], v8, v5);
  sub_25F13BE44(&qword_27FD48BD0, MEMORY[0x277D40A60]);

  sub_25F17745C();
}

uint64_t sub_25F137680(uint64_t a1)
{
  v2 = v1;
  v4 = sub_25F17888C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25F17886C();

  v9 = sub_25F17887C();
  v10 = sub_25F17955C();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v22 = a1;
    v23 = v12;
    v13 = v12;
    *v11 = 136315138;
    v14 = *(*v2 + 80);

    v15 = sub_25F17992C();
    v17 = v16;

    v18 = sub_25F0BECF0(v15, v17, &v23);

    *(v11 + 4) = v18;
    _os_log_impl(&dword_25F0B3000, v9, v10, "Received incoming remote events message stream for %s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v13);
    MEMORY[0x25F8D6230](v13, -1, -1);
    MEMORY[0x25F8D6230](v11, -1, -1);
  }

  else
  {
  }

  (*(v5 + 8))(v8, v4);
  sub_25F17781C();
  sub_25F177B5C();
  sub_25F13BE44(&qword_27FD480A0, MEMORY[0x277D40AA8]);
  sub_25F13BE44(&qword_27FD48BE0, MEMORY[0x277D40BC0]);

  v19 = sub_25F17744C();

  v20 = v2[17];
  v2[17] = v19;
}

uint64_t sub_25F13795C(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v26 = *a3;
  v6 = sub_25F177B5C();
  v24 = *(v6 - 8);
  v7 = *(v24 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD483D8, &qword_25F17F828);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v12 = &v23 - v11;
  v25 = sub_25F177FFC();
  v13 = *(v25 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v25);
  v16 = &v23 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25F177FDC();
  sub_25F0B7E2C(a2, v12, &qword_27FD483D8, &qword_25F17F828);
  v17 = MEMORY[0x277D40BC0];
  sub_25F13BA58(a1, &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), MEMORY[0x277D40BC0]);
  v18 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v19 = (v10 + *(v24 + 80) + v18) & ~*(v24 + 80);
  v20 = swift_allocObject();
  v21 = v26;
  *(v20 + 16) = *(v26 + 80);
  *(v20 + 24) = *(v21 + 88);
  sub_25F117154(v12, v20 + v18);
  sub_25F13BCD8(&v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v20 + v19, v17);
  *(v20 + ((v7 + v19 + 7) & 0xFFFFFFFFFFFFFFF8)) = a3;

  sub_25F177FEC();

  return (*(v13 + 8))(v16, v25);
}

void sub_25F137C44(uint64_t a1, size_t a2, const __CFData *a3)
{
  v125 = a3;
  Width = a2;
  v133 = a1;
  v3 = sub_25F177EAC();
  v128 = *(v3 - 8);
  v4 = *(v128 + 64);
  v5 = MEMORY[0x28223BE20](v3);
  v120 = &v114 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v122 = &v114 - v8;
  v9 = MEMORY[0x28223BE20](v7);
  v130 = &v114 - v10;
  MEMORY[0x28223BE20](v9);
  v129 = &v114 - v11;
  v121 = sub_25F17775C();
  v117 = *(v121 - 8);
  v12 = *(v117 + 64);
  v13 = MEMORY[0x28223BE20](v121);
  v115 = &v114 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v116 = &v114 - v16;
  MEMORY[0x28223BE20](v15);
  v119 = &v114 - v17;
  v18 = sub_25F17888C();
  v131 = *(v18 - 8);
  v132 = v18;
  v19 = *(v131 + 64);
  v20 = MEMORY[0x28223BE20](v18);
  v123 = &v114 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v20);
  Height = &v114 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v118 = &v114 - v25;
  MEMORY[0x28223BE20](v24);
  v124 = &v114 - v26;
  v27 = sub_25F177B5C();
  v28 = *(*(v27 - 8) + 64);
  MEMORY[0x28223BE20](v27 - 8);
  v30 = &v114 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD483D8, &qword_25F17F828);
  v32 = *(*(v31 - 8) + 64);
  MEMORY[0x28223BE20](v31 - 8);
  v34 = &v114 - v33;
  v35 = sub_25F1774AC();
  v36 = *(v35 - 8);
  v37 = *(v36 + 64);
  MEMORY[0x28223BE20](v35);
  v39 = &v114 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25F17930C();
  sub_25F1792FC();
  sub_25F1792EC();

  sub_25F0B7E2C(v133, v34, &qword_27FD483D8, &qword_25F17F828);
  if ((*(v36 + 48))(v34, 1, v35) == 1)
  {
    sub_25F0B7E94(v34, &qword_27FD483D8, &qword_25F17F828);
  }

  else
  {
    (*(v36 + 32))(v39, v34, v35);
    sub_25F13BA58(Width, v30, MEMORY[0x277D40BC0]);
    v40 = v128;
    v41 = (*(v128 + 48))(v30, 1, v3);
    v114 = v39;
    if (v41 == 1)
    {
      v42 = v124;
      sub_25F17884C();
      v43 = v125;

      v44 = sub_25F17887C();
      v45 = sub_25F17955C();
      if (os_log_type_enabled(v44, v45))
      {
        v46 = swift_slowAlloc();
        v47 = swift_slowAlloc();
        v135[0] = v47;
        *v46 = 136315394;
        v48 = *(*v43 + 80);
        v49 = sub_25F17992C();
        v50 = v36;
        v52 = v51;

        v53 = sub_25F0BECF0(v49, v52, v135);

        *(v46 + 4) = v53;
        *(v46 + 12) = 2080;
        v134 = *(v43 + 1);
        swift_unknownObjectRetain();
        __swift_instantiateConcreteTypeFromMangledNameV2(qword_27FD48BF8, &unk_25F182388);
        v54 = sub_25F1790BC();
        v56 = sub_25F0BECF0(v54, v55, v135);

        *(v46 + 14) = v56;
        v36 = v50;
        _os_log_impl(&dword_25F0B3000, v44, v45, "Received screenshot request %s, scene: %s", v46, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x25F8D6230](v47, -1, -1);
        MEMORY[0x25F8D6230](v46, -1, -1);
      }

      else
      {
      }

      v68 = *(v131 + 8);
      v68(v42, v132);
      v70 = *(v43 + 2);
      v69 = *(v43 + 3);
      ObjectType = swift_getObjectType();
      v80 = (*(*(v69 + 8) + 88))(ObjectType);
      v81 = CGImageGetDataProvider(v80);
      if (v81 && (v82 = v81, v83 = CGDataProviderCopyData(v81), v82, v83))
      {
        v133 = v36;
        v130 = v35;
        v84 = v83;
        v85 = MEMORY[0x25F8D2D50]();
        v128 = v86;
        v129 = v85;
        v125 = v84;

        Width = CGImageGetWidth(v80);
        Height = CGImageGetHeight(v80);
        CGImageGetBytesPerRow(v80);
        CGImageGetBitmapInfo(v80);
        CGImageGetBitsPerComponent(v80);
        CGImageGetBitsPerPixel(v80);
        v87 = CGImageGetColorSpace(v80);
        if (v87 && (v88 = v87, v89 = CGColorSpaceCopyName(v87), v88, v89))
        {
          sub_25F17908C();
        }

        else
        {
          v93 = *MEMORY[0x277CBF4B8];
          sub_25F17908C();
        }

        v94 = v119;
        sub_25F17774C();
        v95 = v118;
        sub_25F17884C();
        v96 = v117;
        v97 = *(v117 + 16);
        v98 = v116;
        v99 = v121;
        v97(v116, v94, v121);
        v100 = sub_25F17887C();
        LODWORD(v129) = sub_25F17955C();
        if (os_log_type_enabled(v100, v129))
        {
          v101 = swift_slowAlloc();
          v102 = swift_slowAlloc();
          *&v134 = v102;
          *v101 = 136315138;
          v97(v115, v98, v121);
          v103 = sub_25F1790BC();
          v105 = v104;
          v106 = v98;
          v107 = *(v96 + 8);
          v107(v106, v121);
          v108 = sub_25F0BECF0(v103, v105, &v134);

          *(v101 + 4) = v108;
          _os_log_impl(&dword_25F0B3000, v100, v129, "Responding to screenshot request with %s", v101, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v102);
          MEMORY[0x25F8D6230](v102, -1, -1);
          v109 = v101;
          v99 = v121;
          MEMORY[0x25F8D6230](v109, -1, -1);

          v110 = v118;
        }

        else
        {

          v111 = v98;
          v107 = *(v96 + 8);
          v107(v111, v99);
          v110 = v95;
        }

        v68(v110, v132);
        sub_25F13BE44(&qword_27FD48BF0, MEMORY[0x277D409F8]);
        v112 = v119;
        v113 = v114;
        sub_25F17748C();

        v107(v112, v99);
        (*(v133 + 8))(v113, v130);
      }

      else
      {
        (*(v36 + 8))(v114, v35);
      }
    }

    else
    {
      v57 = v3;
      v58 = v129;
      (*(v40 + 32))(v129, v30, v57);
      sub_25F17845C();
      sub_25F17844C();
      sub_25F177E9C();
      v59 = sub_25F17842C();

      if (v59)
      {
        sub_25F17809C();
        sub_25F17844C();
        sub_25F177E9C();
        sub_25F17841C();

        sub_25F17886C();
        v60 = v122;
        (*(v40 + 16))(v122, v58, v57);
        v61 = sub_25F17887C();
        v62 = sub_25F17955C();
        if (os_log_type_enabled(v61, v62))
        {
          v63 = swift_slowAlloc();
          v133 = v36;
          v64 = v63;
          *v63 = 67109120;
          v65 = sub_25F177E9C();
          v66 = *(v40 + 8);
          v66(v60, v57);
          *(v64 + 1) = v65;
          _os_log_impl(&dword_25F0B3000, v61, v62, "Responding to symbolication request with an augmented crash for pid: %d", v64, 8u);
          v67 = v64;
          v36 = v133;
          MEMORY[0x25F8D6230](v67, -1, -1);
        }

        else
        {
          v66 = *(v40 + 8);
          v66(v60, v57);
        }

        v90 = Height;
      }

      else
      {
        v72 = *(v40 + 16);
        v72(v130, v58, v57);
        sub_25F17886C();
        v73 = v120;
        v72(v120, v58, v57);
        v74 = sub_25F17887C();
        v75 = v40;
        v76 = v57;
        v77 = sub_25F17955C();
        if (os_log_type_enabled(v74, v77))
        {
          v78 = swift_slowAlloc();
          *v78 = 67109120;
          v79 = sub_25F177E9C();
          v66 = *(v75 + 8);
          v66(v73, v76);
          *(v78 + 4) = v79;
          _os_log_impl(&dword_25F0B3000, v74, v77, "Responding to symbolication request with an unaugmented crash for pid: %d. No matching symbol table found", v78, 8u);
          MEMORY[0x25F8D6230](v78, -1, -1);
        }

        else
        {
          v66 = *(v75 + 8);
          v66(v73, v76);
        }

        v57 = v76;

        v90 = v123;
      }

      (*(v131 + 8))(v90, v132);
      sub_25F13BE44(&qword_27FD48BE8, MEMORY[0x277D403F0]);
      v91 = v130;
      v92 = v114;
      sub_25F17748C();
      v66(v91, v57);
      v66(v129, v57);
      (*(v36 + 8))(v92, v35);
    }
  }
}

uint64_t sub_25F138A30(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v68 = a4;
  v60 = a2;
  v64 = *a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD483D8, &qword_25F17F828);
  v65 = *(v6 - 8);
  v61 = *(v65 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v67 = &v53[-v7];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD46BB0, &qword_25F17AF30);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v66 = &v53[-v10];
  v11 = sub_25F17780C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v11);
  v62 = v15;
  v63 = &v53[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v14);
  v17 = &v53[-v16];
  v18 = sub_25F17888C();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  v22 = &v53[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_25F17886C();
  v69 = v12;
  v70 = v11;
  v23 = *(v12 + 16);
  v23(v17, a1, v11);
  swift_retain_n();
  v24 = sub_25F17887C();
  v25 = sub_25F17952C();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v58 = v18;
    v27 = v26;
    v57 = swift_slowAlloc();
    v71 = v57;
    *v27 = 136315394;
    sub_25F13BE44(&qword_27FD48BD8, MEMORY[0x277D40A60]);
    v55 = v24;
    v54 = v25;
    v28 = v70;
    v29 = sub_25F17980C();
    v59 = a1;
    v56 = v19;
    v31 = v30;
    (*(v69 + 8))(v17, v28);
    v32 = sub_25F0BECF0(v29, v31, &v71);
    a1 = v59;

    *(v27 + 4) = v32;
    *(v27 + 12) = 2080;
    v33 = *(*a3 + 80);
    v34 = sub_25F17992C();
    v36 = v35;

    v37 = sub_25F0BECF0(v34, v36, &v71);

    *(v27 + 14) = v37;
    v38 = v55;
    _os_log_impl(&dword_25F0B3000, v55, v54, "Received '%s' via control events message stream for %s", v27, 0x16u);
    v39 = v57;
    swift_arrayDestroy();
    MEMORY[0x25F8D6230](v39, -1, -1);
    MEMORY[0x25F8D6230](v27, -1, -1);

    (*(v56 + 8))(v22, v58);
  }

  else
  {

    (*(v69 + 8))(v17, v70);
    (*(v19 + 8))(v22, v18);
  }

  v40 = sub_25F17932C();
  v41 = v66;
  (*(*(v40 - 8) + 56))(v66, 1, 1, v40);
  v42 = v63;
  v43 = v70;
  v23(v63, a1, v70);
  v44 = v67;
  sub_25F0B7E2C(v60, v67, &qword_27FD483D8, &qword_25F17F828);
  sub_25F17930C();

  v45 = sub_25F1792FC();
  v46 = v69;
  v47 = (*(v69 + 80) + 56) & ~*(v69 + 80);
  v48 = (v62 + *(v65 + 80) + v47) & ~*(v65 + 80);
  v49 = swift_allocObject();
  v50 = MEMORY[0x277D85700];
  *(v49 + 2) = v45;
  *(v49 + 3) = v50;
  v51 = v64;
  *(v49 + 4) = *(v64 + 80);
  *(v49 + 5) = *(v51 + 88);
  *(v49 + 6) = a3;
  (*(v46 + 32))(&v49[v47], v42, v43);
  sub_25F117154(v44, &v49[v48]);
  sub_25F0CD9E8(0, 0, v41, &unk_25F182378, v49);
  sub_25F1774BC();
  sub_25F13BE44(&qword_27FD480D0, MEMORY[0x277D40750]);

  sub_25F17802C();
}

uint64_t sub_25F1390CC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  v6[5] = *a4;
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD483D8, &qword_25F17F828) - 8) + 64) + 15;
  v6[6] = swift_task_alloc();
  v8 = sub_25F17780C();
  v6[7] = v8;
  v9 = *(v8 - 8);
  v6[8] = v9;
  v10 = *(v9 + 64) + 15;
  v6[9] = swift_task_alloc();
  v11 = sub_25F17888C();
  v6[10] = v11;
  v12 = *(v11 - 8);
  v6[11] = v12;
  v13 = *(v12 + 64) + 15;
  v6[12] = swift_task_alloc();
  sub_25F17930C();
  v6[13] = sub_25F1792FC();
  v15 = sub_25F1792CC();

  return MEMORY[0x2822009F8](sub_25F139280, v15, v14);
}

uint64_t sub_25F139280()
{
  v65 = v0;
  v1 = v0[13];
  v2 = v0[2];

  v3 = v2[9];
  if (v3)
  {
    v5 = v2[14];
    v4 = v2[15];
    v6 = v2[13];
    v7 = v2[11];
    v60 = v2[10];
    v62 = v2[12];
    v9 = v0[3];
    v8 = v0[4];
    v10 = v0[2];
    v11 = *(v10 + 48);
    v12 = *(v10 + 56);

    v5(v9, v8, v11, v12);
    sub_25F13B230(v3);
  }

  else
  {
    v13 = v0[5];
    v14 = *(v13 + 80);
    v15 = *(v13 + 88);
    type metadata accessor for CanvasBox.UnknownControlConfiguration();
    swift_getWitnessTable();
    v16 = swift_allocError();
    swift_willThrow();
    v17 = v0[12];
    v19 = v0[8];
    v18 = v0[9];
    v20 = v0[7];
    v22 = v0[2];
    v21 = v0[3];
    sub_25F17886C();
    (*(v19 + 16))(v18, v21, v20);
    swift_retain_n();
    v23 = v16;
    v24 = sub_25F17887C();
    LOBYTE(v17) = sub_25F17953C();

    v63 = v17;
    v25 = os_log_type_enabled(v24, v17);
    v26 = v0[11];
    v27 = v0[12];
    v28 = v0[9];
    v29 = v0[10];
    v31 = v0[7];
    v30 = v0[8];
    v32 = v0[2];
    if (v25)
    {
      v57 = v24;
      v33 = swift_slowAlloc();
      v56 = swift_slowAlloc();
      v61 = swift_slowAlloc();
      v64[0] = v61;
      *v33 = 136446722;
      sub_25F13BE44(&qword_27FD48BD8, MEMORY[0x277D40A60]);
      v58 = v29;
      v59 = v27;
      v34 = sub_25F17980C();
      v36 = v35;
      (*(v30 + 8))(v28, v31);
      v37 = sub_25F0BECF0(v34, v36, v64);

      *(v33 + 4) = v37;
      *(v33 + 12) = 2082;
      v38 = *(*v32 + 80);
      v39 = sub_25F17992C();
      v41 = v40;

      v42 = sub_25F0BECF0(v39, v41, v64);

      *(v33 + 14) = v42;
      *(v33 + 22) = 2112;
      v43 = v16;
      v44 = _swift_stdlib_bridgeErrorToNSError();
      *(v33 + 24) = v44;
      *v56 = v44;
      _os_log_impl(&dword_25F0B3000, v57, v63, "Error handling control event '%{public}s' for %{public}s: %@", v33, 0x20u);
      sub_25F0B7E94(v56, &qword_27FD473D0, &unk_25F17C540);
      MEMORY[0x25F8D6230](v56, -1, -1);
      swift_arrayDestroy();
      MEMORY[0x25F8D6230](v61, -1, -1);
      MEMORY[0x25F8D6230](v33, -1, -1);

      (*(v26 + 8))(v59, v58);
    }

    else
    {
      v45 = v0[2];

      (*(v30 + 8))(v28, v31);
      (*(v26 + 8))(v27, v29);
    }

    v46 = v0[6];
    sub_25F0B7E2C(v0[4], v46, &qword_27FD483D8, &qword_25F17F828);
    v47 = sub_25F1774AC();
    v48 = *(v47 - 8);
    v49 = (*(v48 + 48))(v46, 1, v47);
    v50 = v0[6];
    if (v49 == 1)
    {

      sub_25F0B7E94(v50, &qword_27FD483D8, &qword_25F17F828);
    }

    else
    {
      sub_25F17747C();

      (*(v48 + 8))(v50, v47);
    }
  }

  v51 = v0[12];
  v52 = v0[9];
  v53 = v0[6];

  v54 = v0[1];

  return v54();
}

uint64_t sub_25F1397AC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821A0810](a1, WitnessTable);
}

uint64_t sub_25F139800(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821A07F0](a1, WitnessTable);
}

void *sub_25F139854()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[5];

  v3 = v0[7];

  v4 = v0[8];

  v5 = v0[10];
  v6 = v0[11];
  v7 = v0[12];
  v8 = v0[13];
  v9 = v0[14];
  v10 = v0[15];
  sub_25F13B230(v0[9]);
  v11 = v0[17];

  return v0;
}

uint64_t sub_25F1398A8()
{
  sub_25F139854();

  return swift_deallocClassInstance();
}

uint64_t sub_25F1398DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  result = sub_25F133E08(a1, a2, a3);
  *a4 = result;
  return result;
}

uint64_t type metadata accessor for CanvasUpdateOutput()
{
  result = qword_27FD48B18;
  if (!qword_27FD48B18)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t dispatch thunk of static CanvasContentProvider.create(for:in:using:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v15 = *(a7 + 56);
  v19 = (v15 + *v15);
  v16 = v15[1];
  v17 = swift_task_alloc();
  *(v7 + 16) = v17;
  *v17 = v7;
  v17[1] = sub_25F0BF3E4;

  return v19(a1, a2, a3, a4, a5, a6, a7);
}

unint64_t sub_25F139BD8(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v4 <= 0x3F)
  {
    result = sub_25F17719C();
    if (v5 <= 0x3F)
    {
      result = sub_25F105150();
      if (v6 <= 0x3F)
      {
        v7 = *(a1 + 32);
        result = type metadata accessor for CanvasControlConfiguration();
        if (v8 <= 0x3F)
        {
          result = swift_checkMetadataState();
          if (v9 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
            return 0;
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_25F139CB4(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v6 = *(a3 + 16);
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  v9 = *(sub_25F17719C() - 8);
  v10 = v9;
  v11 = *(v9 + 84);
  if (v11 <= v8)
  {
    v12 = v8;
  }

  else
  {
    v12 = *(v9 + 84);
  }

  v13 = *(a3 + 32);
  v14 = *(v13 - 8);
  v15 = *(v9 + 80);
  v16 = *(v9 + 64);
  v17 = *(v14 + 80);
  if (v12 <= *(v14 + 84))
  {
    v12 = *(v14 + 84);
  }

  if (v12 <= 0x7FFFFFFF)
  {
    v18 = 0x7FFFFFFF;
  }

  else
  {
    v18 = v12;
  }

  if (!a2)
  {
    return 0;
  }

  v19 = *(v7 + 64) + v15;
  v20 = v16 + 7;
  v21 = v17 + 56;
  if (a2 <= v18)
  {
    goto LABEL_33;
  }

  v22 = ((v21 + ((((v20 + (v19 & ~v15)) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)) & ~v17) + *(v14 + 64);
  v23 = 8 * v22;
  if (v22 > 3)
  {
    goto LABEL_12;
  }

  v26 = ((a2 - v18 + ~(-1 << v23)) >> v23) + 1;
  if (HIWORD(v26))
  {
    v24 = *(a1 + v22);
    if (v24)
    {
      goto LABEL_20;
    }
  }

  else
  {
    if (v26 <= 0xFF)
    {
      if (v26 < 2)
      {
        goto LABEL_33;
      }

LABEL_12:
      v24 = *(a1 + v22);
      if (!*(a1 + v22))
      {
        goto LABEL_33;
      }

LABEL_20:
      v27 = (v24 - 1) << v23;
      if (v22 > 3)
      {
        v27 = 0;
      }

      if (v22)
      {
        if (v22 <= 3)
        {
          v28 = ((v21 + ((((v20 + (v19 & ~v15)) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8)) & ~v17) + *(v14 + 64);
        }

        else
        {
          v28 = 4;
        }

        if (v28 > 2)
        {
          if (v28 == 3)
          {
            v29 = *a1 | (*(a1 + 2) << 16);
          }

          else
          {
            v29 = *a1;
          }
        }

        else if (v28 == 1)
        {
          v29 = *a1;
        }

        else
        {
          v29 = *a1;
        }
      }

      else
      {
        v29 = 0;
      }

      return v18 + (v29 | v27) + 1;
    }

    v24 = *(a1 + v22);
    if (*(a1 + v22))
    {
      goto LABEL_20;
    }
  }

LABEL_33:
  if (v8 == v18)
  {
    v30 = *(v7 + 48);
    v31 = a1;
    v32 = v8;
    v13 = v6;
LABEL_35:

    return v30(v31, v32, v13);
  }

  v33 = (a1 + v19) & ~v15;
  if (v11 == v18)
  {
    v34 = *(v10 + 48);

    return v34(v33);
  }

  else
  {
    v35 = ((v20 + v33) & 0xFFFFFFFFFFFFFFF8);
    if ((v12 & 0x80000000) != 0)
    {
      v30 = *(v14 + 48);
      v31 = (v21 + ((v35 + 23) & 0xFFFFFFFFFFFFFFF8)) & ~v17;
      v32 = *(v14 + 84);
      goto LABEL_35;
    }

    v36 = *v35;
    if (*v35 >= 0xFFFFFFFF)
    {
      LODWORD(v36) = -1;
    }

    return (v36 + 1);
  }
}

void sub_25F139FFC(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = *(a4 + 16);
  v9 = *(v8 - 8);
  v10 = *(v9 + 84);
  v11 = *(sub_25F17719C() - 8);
  v12 = v11;
  v13 = *(v11 + 84);
  if (v13 <= v10)
  {
    v14 = v10;
  }

  else
  {
    v14 = *(v11 + 84);
  }

  v15 = *(a4 + 32);
  v16 = *(v15 - 8);
  v17 = *(v16 + 84);
  v18 = *(v9 + 64);
  v19 = *(v11 + 80);
  v20 = *(v11 + 64);
  v21 = *(v16 + 80);
  if (v14 <= v17)
  {
    v22 = *(v16 + 84);
  }

  else
  {
    v22 = v14;
  }

  if (v22 <= 0x7FFFFFFF)
  {
    v23 = 0x7FFFFFFF;
  }

  else
  {
    v23 = v22;
  }

  v24 = ((v21 + 56 + ((((v20 + 7 + ((v18 + v19) & ~v19)) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)) & ~v21) + *(v16 + 64);
  if (a3 <= v23)
  {
    v25 = 0;
  }

  else if (v24 <= 3)
  {
    v28 = ((a3 - v23 + ~(-1 << (8 * v24))) >> (8 * v24)) + 1;
    if (HIWORD(v28))
    {
      v25 = 4;
    }

    else
    {
      if (v28 < 0x100)
      {
        v29 = 1;
      }

      else
      {
        v29 = 2;
      }

      if (v28 >= 2)
      {
        v25 = v29;
      }

      else
      {
        v25 = 0;
      }
    }
  }

  else
  {
    v25 = 1;
  }

  if (v23 < a2)
  {
    v26 = ~v23 + a2;
    if (v24 < 4)
    {
      v27 = (v26 >> (8 * v24)) + 1;
      if (v24)
      {
        v30 = v26 & ~(-1 << (8 * v24));
        bzero(a1, v24);
        if (v24 != 3)
        {
          if (v24 == 2)
          {
            *a1 = v30;
            if (v25 > 1)
            {
LABEL_57:
              if (v25 == 2)
              {
                *&a1[v24] = v27;
              }

              else
              {
                *&a1[v24] = v27;
              }

              return;
            }
          }

          else
          {
            *a1 = v26;
            if (v25 > 1)
            {
              goto LABEL_57;
            }
          }

          goto LABEL_54;
        }

        *a1 = v30;
        a1[2] = BYTE2(v30);
      }

      if (v25 > 1)
      {
        goto LABEL_57;
      }
    }

    else
    {
      bzero(a1, v24);
      *a1 = v26;
      v27 = 1;
      if (v25 > 1)
      {
        goto LABEL_57;
      }
    }

LABEL_54:
    if (v25)
    {
      a1[v24] = v27;
    }

    return;
  }

  if (v25 > 1)
  {
    if (v25 != 2)
    {
      *&a1[v24] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_37;
    }

    *&a1[v24] = 0;
  }

  else if (v25)
  {
    a1[v24] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_37;
  }

  if (!a2)
  {
    return;
  }

LABEL_37:
  if (v10 == v23)
  {
    v31 = *(v9 + 56);
    v32 = a1;
    v33 = a2;
    v34 = v10;
    v15 = v8;
LABEL_39:

    v31(v32, v33, v34, v15);
    return;
  }

  v35 = &a1[v18 + v19] & ~v19;
  if (v13 != v23)
  {
    v37 = ((v20 + 7 + v35) & 0xFFFFFFFFFFFFFFF8);
    if ((v22 & 0x80000000) == 0)
    {
      if ((a2 & 0x80000000) != 0)
      {
        *v37 = a2 & 0x7FFFFFFF;
        v37[1] = 0;
      }

      else
      {
        *v37 = (a2 - 1);
      }

      return;
    }

    v31 = *(v16 + 56);
    v32 = (v21 + 56 + ((v37 + 23) & 0xFFFFFFFFFFFFFFF8)) & ~v21;
    v33 = a2;
    v34 = v17;
    goto LABEL_39;
  }

  v36 = *(v12 + 56);

  v36(v35, a2);
}

uint64_t sub_25F13A460(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_25F177F8C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_25F17719C();
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 24));
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_25F13A580(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_25F177F8C();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = sub_25F17719C();
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24)) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

void sub_25F13A688()
{
  sub_25F177F8C();
  if (v0 <= 0x3F)
  {
    sub_25F17719C();
    if (v1 <= 0x3F)
    {
      sub_25F105150();
      if (v2 <= 0x3F)
      {
        sub_25F13A78C(319, &qword_27FD48B28, MEMORY[0x277D40B88]);
        if (v3 <= 0x3F)
        {
          sub_25F13A78C(319, qword_27FD48B30, MEMORY[0x277D40758]);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_25F13A78C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_25F1792BC();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_25F13A878(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25F13A8CC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD480A8, &qword_25F17EFA0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 20) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_25F13A960(uint64_t a1)
{
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD480A8, &qword_25F17EFA0) - 8) + 80);
  v4 = *(v1 + 16);

  return sub_25F136EEC(a1, v4);
}

uint64_t sub_25F13A9E0(void (*a1)(void))
{
  a1();

  return _swift_stdlib_bridgeErrorToNSError();
}

void sub_25F13AA18(void **a1, void **a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = a4();
  v7 = *a1;
  *v7 = v6;
  *a1 = v7 + 1;
  v8 = *a2;
  if (*a2)
  {
    *v8 = v6;
    *a2 = v8 + 1;
  }

  else
  {
  }
}

uint64_t sub_25F13AAA4(uint64_t a1, uint64_t a2)
{
  v5 = *(*(sub_25F177D2C() - 8) + 80);
  v6 = *(v2 + 32);

  return sub_25F134D80(a1, a2);
}

uint64_t sub_25F13AB54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v7 = *(v2 + 16);
  *(a2 + 24) = v7;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a2);
  v5 = *(*(v7 - 8) + 16);

  return v5(boxed_opaque_existential_1, a1);
}

uint64_t sub_25F13ABD0()
{
  v1 = sub_25F177F8C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = sub_25F177D2C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 80);
  v20 = *(v8 + 64);
  (*(v2 + 8))(v0 + v4, v1);
  v10 = *(v0 + v5);

  v11 = (v0 + v6);
  if (*(v0 + v6))
  {

    v12 = v11[2];

    v13 = v11[4];

    v14 = v11[6];
  }

  v15 = (v6 + v9 + 56) & ~v9;
  v16 = (v20 + v15 + 7) & 0xFFFFFFFFFFFFFFF8;
  v17 = (v16 + 23) & 0xFFFFFFFFFFFFFFF8;
  (*(v8 + 8))(v0 + v15, v7);
  v18 = *(v0 + v16 + 8);

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + v17));

  return MEMORY[0x2821FE8E8](v0, v17 + 40, v3 | v9 | 7);
}

uint64_t sub_25F13AD94(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(sub_25F177F8C() - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(sub_25F177D2C() - 8);
  v10 = (v8 + *(v9 + 80) + 56) & ~*(v9 + 80);
  v11 = (*(v9 + 64) + v10 + 7) & 0xFFFFFFFFFFFFFFF8;
  return sub_25F135B6C(a1, v1 + v6, *(v1 + v7), v1 + v8, v1 + v10, *(v1 + v11), *(v1 + v11 + 8), v1 + ((v11 + 23) & 0xFFFFFFFFFFFFFFF8), v3, v4);
}

uint64_t sub_25F13AF00()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = *(v2 + 16);
  swift_getAssociatedTypeWitness();
  v5 = swift_getAssociatedTypeWitness();
  v6 = (type metadata accessor for CanvasUpdateResult() - 8);
  v7 = *(*v6 + 80);
  v8 = (v7 + 32) & ~v7;
  v9 = *(*v6 + 64);
  (*(*(AssociatedTypeWitness - 8) + 8))(v0 + v8, AssociatedTypeWitness);
  v10 = v6[13];
  v11 = sub_25F17719C();
  (*(*(v11 - 8) + 8))(v0 + v8 + v10, v11);
  v12 = *(v0 + v8 + v6[14] + 8);

  v13 = (v0 + v8 + v6[15]);
  v14 = *v13;

  v15 = v13[2];

  v16 = v13[4];

  v17 = v13[6];

  (*(*(v5 - 8) + 8))(v0 + v8 + v6[16], v5);

  return MEMORY[0x2821FE8E8](v0, v8 + v9, v7 | 7);
}

uint64_t sub_25F13B100()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  swift_getAssociatedTypeWitness();
  v3 = *(v2 + 16);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  v4 = *(type metadata accessor for CanvasUpdateResult() - 8);
  return sub_25F136828(v0 + ((*(v4 + 80) + 32) & ~*(v4 + 80)), v1, v2);
}

uint64_t sub_25F13B230(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_25F13B2B4()
{
  v1 = (type metadata accessor for PreviewAgentConnector() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = *(*v1 + 64);
  v5 = *(v0 + 32);

  v6 = v1[7];
  v7 = sub_25F17767C();
  (*(*(v7 - 8) + 8))(v0 + v3 + v6, v7);
  v8 = (v0 + v3 + v1[8]);
  v9 = *v8;

  v10 = v8[1];

  v11 = v8[2];

  v12 = v8[3];

  v13 = v8[4];

  v14 = v8[5];

  v15 = v8[6];

  v16 = v8[7];

  v17 = v8[8];

  v18 = v8[9];

  v19 = v8[10];

  v20 = v8[11];

  v21 = v8[12];

  v22 = v8[13];

  v23 = v8[14];

  v24 = v8[15];

  v25 = *(v0 + v3 + v1[9] + 8);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_25F13B43C(uint64_t a1)
{
  v4 = *(type metadata accessor for PreviewAgentConnector() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = *(v1 + 32);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_25F0C10CC;

  return sub_25F1358C0(a1, v6, v1 + v5);
}

uint64_t sub_25F13B520()
{
  v2 = *(v0 + 16);
  v3 = *(*(*(v0 + 24) + 16) + 8);
  return sub_25F17800C();
}

uint64_t objectdestroy_13Tm(uint64_t (*a1)(void))
{
  v2 = a1(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 40) & ~v4;
  v6 = *(v3 + 64);
  v7 = *(v1 + 32);

  (*(v3 + 8))(v1 + v5, v2);

  return MEMORY[0x2821FE8E8](v1, v5 + v6, v4 | 7);
}

uint64_t sub_25F13B678(uint64_t a1, uint64_t a2)
{
  v5 = *(sub_25F1774BC() - 8);
  v6 = *(v2 + 32);
  v7 = v2 + ((*(v5 + 80) + 40) & ~*(v5 + 80));

  return sub_25F138A30(a1, a2, v6, v7);
}

uint64_t sub_25F13B6FC()
{
  v1 = sub_25F17780C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 56) & ~v3;
  v5 = v4 + *(v2 + 64);
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD483D8, &qword_25F17F828) - 8);
  v7 = *(v6 + 80);
  v8 = (v5 + v7) & ~v7;
  v9 = *(v6 + 64);
  v10 = *(v0 + 16);
  swift_unknownObjectRelease();
  v11 = *(v0 + 48);

  (*(v2 + 8))(v0 + v4, v1);
  v12 = sub_25F1774AC();
  v13 = *(v12 - 8);
  if (!(*(v13 + 48))(v0 + v8, 1, v12))
  {
    (*(v13 + 8))(v0 + v8, v12);
  }

  return MEMORY[0x2821FE8E8](v0, v8 + v9, v3 | v7 | 7);
}

uint64_t sub_25F13B8A8(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_25F17780C() - 8);
  v6 = (*(v5 + 80) + 56) & ~*(v5 + 80);
  v7 = v6 + *(v5 + 64);
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD483D8, &qword_25F17F828) - 8);
  v9 = (v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = v1[2];
  v11 = v1[3];
  v12 = v1[6];
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_25F0BF3E4;

  return sub_25F1390CC(a1, v10, v11, v12, v1 + v6, v1 + v9);
}

uint64_t sub_25F13BA58(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_25F13BAC0()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD483D8, &qword_25F17F828) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(v1 + 64);
  v5 = *(sub_25F177B5C() - 8);
  v6 = *(v5 + 80);
  v7 = (v3 + v4 + v6) & ~v6;
  v8 = *(v5 + 64);
  v9 = sub_25F1774AC();
  v10 = *(v9 - 8);
  if (!(*(v10 + 48))(v0 + v3, 1, v9))
  {
    (*(v10 + 8))(v0 + v3, v9);
  }

  v11 = sub_25F177EAC();
  v12 = *(v11 - 8);
  if (!(*(v12 + 48))(v0 + v7, 1, v11))
  {
    (*(v12 + 8))(v0 + v7, v11);
  }

  v13 = (v8 + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v14 = *(v0 + v13);

  return MEMORY[0x2821FE8E8](v0, v13 + 8, v2 | v6 | 7);
}

uint64_t sub_25F13BCD8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_25F13BD40()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD483D8, &qword_25F17F828) - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(sub_25F177B5C() - 8);
  v5 = (v2 + v3 + *(v4 + 80)) & ~*(v4 + 80);
  v6 = *(v0 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_25F137C44(v0 + v2, v0 + v5, v6);
}

uint64_t sub_25F13BE44(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_25F13BEAC()
{
  v1 = sub_25F1776AC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  v6 = *(v0 + v5);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

uint64_t sub_25F13BF48(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = *(v2 + 24);
  v8 = *(sub_25F1776AC() - 8);
  v9 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v10 = (v2 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_25F0C10CC;

  return sub_25F134034(a1, a2, v2 + v9, v11, v12, v6, v7);
}

uint64_t sub_25F13C080()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_25F13C0B8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  ObjectType = swift_getObjectType();
  return (*(v2 + 16))(ObjectType, v2);
}

uint64_t Agent.agentBundle.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + OBJC_IVAR____TtC15PreviewShellKit5Agent_batchIdentity;
  v4 = *(type metadata accessor for BatchIdentity(0) + 20);
  v5 = sub_25F17767C();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t sub_25F13C224(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_25F17767C();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v2[6] = *(v4 + 64);
  v2[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25F13C2EC, 0, 0);
}

uint64_t sub_25F13C2EC()
{
  v1 = v0[6];
  v2 = v0[7];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[3];
  v6 = v5[5];
  v18 = v5[4];
  v19 = v0[2];
  v7 = v5[3];
  v8 = OBJC_IVAR____TtC15PreviewShellKit5Agent_batchIdentity;
  v9 = type metadata accessor for BatchIdentity(0);
  v20 = v5[6];
  (*(v4 + 16))(v2, v7 + v8 + *(v9 + 20), v3);
  v10 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v11 = (v1 + v10 + 7) & 0xFFFFFFFFFFFFFFF8;
  v12 = swift_allocObject();
  v0[8] = v12;
  *(v12 + 16) = v5;
  (*(v4 + 32))(v12 + v10, v2, v3);
  *(v12 + v11) = v19;
  v13 = (v12 + ((v11 + 15) & 0xFFFFFFFFFFFFFFF8));
  *v13 = v18;
  v13[1] = v6;
  v14 = *(MEMORY[0x277D40608] + 4);

  v15 = swift_task_alloc();
  v0[9] = v15;
  *v15 = v0;
  v15[1] = sub_25F13C4A4;
  v16 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2821A0D70](v15, sub_25F14A5C8, v12, v16);
}

uint64_t sub_25F13C4A4()
{
  v2 = *(*v1 + 72);
  v3 = *(*v1 + 64);
  v6 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    v4 = sub_25F13C638;
  }

  else
  {
    v4 = sub_25F13C5D4;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_25F13C5D4()
{
  v1 = *(v0 + 56);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_25F13C638()
{
  v1 = v0[7];

  v2 = v0[1];
  v3 = v0[10];

  return v2();
}

uint64_t sub_25F13C69C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v6 = v5;
  v72 = a5;
  v68 = a4;
  v10 = sub_25F1787BC();
  v70 = *(v10 - 8);
  v71 = v10;
  v11 = *(v70 + 64);
  MEMORY[0x28223BE20](v10);
  v69 = &v63 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_25F1787FC();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v63 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_25F17888C();
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18);
  v22 = &v63 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = a1[8];
  if (v23)
  {
    v66 = v20;
    v67 = v17;
    v24 = a1[11];
    v25 = a1[12];
    v26 = a1[9];
    v27 = a1[10];
    v76 = a1[7];
    v77 = v23;
    v78 = v26;
    *&v79 = v27;
    *(&v79 + 1) = v24;
    v80 = v25;

    sub_25F13CD90(a3);
    if (v6)
    {
      v65 = v14;
      sub_25F17885C();

      v28 = v6;
      v29 = sub_25F17887C();
      v30 = sub_25F17953C();

      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        v32 = swift_slowAlloc();
        v64 = v13;
        v33 = v32;
        v34 = swift_slowAlloc();
        v73[0] = v34;
        *v31 = 136446466;
        *(v31 + 4) = sub_25F0BECF0(v68, v72, v73);
        *(v31 + 12) = 2112;
        v35 = v6;
        v36 = _swift_stdlib_bridgeErrorToNSError();
        *(v31 + 14) = v36;
        *v33 = v36;
        _os_log_impl(&dword_25F0B3000, v29, v30, "%{public}s: Failed loading target descriptions: %@", v31, 0x16u);
        sub_25F0B7E94(v33, &qword_27FD473D0, &unk_25F17C540);
        v37 = v33;
        v13 = v64;
        MEMORY[0x25F8D6230](v37, -1, -1);
        __swift_destroy_boxed_opaque_existential_1Tm(v34);
        MEMORY[0x25F8D6230](v34, -1, -1);
        MEMORY[0x25F8D6230](v31, -1, -1);
      }

      (*(v66 + 8))(v22, v18);
      v81 = a1[14];

      v38 = v69;
      sub_25F1787CC();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD487C8, &qword_25F1827F0);
      sub_25F0B7D00(&qword_27FD487D0, &qword_27FD487C8, &qword_25F1827F0);
      sub_25F17856C();
      (*(v70 + 8))(v38, v71);

      v39 = v67;
      sub_25F1787DC();
      v40 = v6;
      sub_25F148850(&qword_27FD487D8, MEMORY[0x277D40580]);
      sub_25F1781BC();

      (*(v65 + 8))(v39, v13);
      v41 = v74;
      v42 = v75;
      v43 = __swift_project_boxed_opaque_existential_1(v73, v74);
      v44 = *(v41 - 8);
      v45 = *(v44 + 64);
      MEMORY[0x28223BE20](v43);
      v47 = &v63 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v44 + 16))(v47);
      v48 = *(*(v42 + 8) + 8);
      if (sub_25F17981C())
      {
        (*(v44 + 8))(v47, v41);
      }

      else
      {
        swift_allocError();
        (*(v44 + 32))(v62, v47, v41);
      }

      swift_willThrow();

      return __swift_destroy_boxed_opaque_existential_1Tm(v73);
    }

    else
    {
      v53 = v77;
      v54 = v78;
      v55 = v80;
      v56 = a1[7];
      v57 = a1[8];
      v58 = a1[9];
      v59 = a1[10];
      v60 = a1[11];
      v61 = a1[12];
      a1[7] = v76;
      a1[8] = v53;
      a1[9] = v54;
      *(a1 + 5) = v79;
      a1[12] = v55;
      return sub_25F11D8DC(v56, v57);
    }
  }

  else
  {
    type metadata accessor for PreviewsJITLinker.InvalidatedError(0);
    sub_25F148850(&qword_27FD487E0, type metadata accessor for PreviewsJITLinker.InvalidatedError);
    swift_allocError();
    v50 = v49;
    v51 = sub_25F17767C();
    (*(*(v51 - 8) + 16))(v50, a2, v51);
    return swift_willThrow();
  }
}

uint64_t sub_25F13CD90(uint64_t a1)
{
  v131 = a1;
  v140 = sub_25F178B1C();
  v130 = *(v140 - 8);
  v2 = *(v130 + 64);
  v3 = MEMORY[0x28223BE20](v140);
  v129 = v122 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v133 = v122 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD48708, &qword_25F180728);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6 - 8);
  v136 = v122 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v139 = v122 - v10;
  v145 = sub_25F1779DC();
  v128 = *(v145 - 1);
  v11 = *(v128 + 64);
  v12 = MEMORY[0x28223BE20](v145);
  v132 = v122 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v141 = v122 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v122[0] = v122 - v17;
  MEMORY[0x28223BE20](v16);
  v138 = v122 - v18;
  v144 = sub_25F17888C();
  v142 = *(v144 - 1);
  v19 = *(v142 + 64);
  MEMORY[0x28223BE20](v144);
  v134 = v122 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v137 = sub_25F17835C();
  isa = v137[-1].isa;
  v22 = *(isa + 8);
  MEMORY[0x28223BE20](v137);
  v24 = v122 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD487B0, &unk_25F180760);
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x28223BE20](v25 - 8);
  v28 = v122 - v27;
  v29 = sub_25F177FBC();
  v30 = *(v29 - 8);
  v31 = *(v30 + 64);
  MEMORY[0x28223BE20](v29);
  v33 = v122 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = *v1;
  v34 = v1[1];
  v135 = v1;
  v122[1] = sub_25F1782EC();
  sub_25F1782DC();
  v124 = v30;
  v36 = v30;
  v37 = v131;
  v38 = *(v36 + 56);
  v125 = v29;
  v38(v28, 1, 1, v29);
  sub_25F17833C();
  v123 = v33;
  v39 = v134;
  v127 = v35;
  sub_25F1782CC();

  (*(isa + 1))(v24, v137);
  sub_25F0B7E94(v28, &qword_27FD487B0, &unk_25F180760);
  sub_25F17885C();
  v148 = v37;

  v40 = sub_25F17887C();
  v41 = sub_25F17952C();

  if (os_log_type_enabled(v40, v41))
  {
    v42 = swift_slowAlloc();
    v137 = swift_slowAlloc();
    v147[0] = v137;
    *v42 = 136446466;
    *(v42 + 4) = sub_25F0BECF0(v127, v34, v147);
    *(v42 + 12) = 2082;
    LODWORD(v127) = v41;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD48D78, &qword_25F1827F8);
    sub_25F0B7D00(&qword_27FD48D80, &qword_27FD48D78, &qword_25F1827F8);
    sub_25F1794DC();
    v43 = sub_25F1794CC();
    v45 = v44;

    v46 = sub_25F0BECF0(v43, v45, v147);

    *(v42 + 14) = v46;
    _os_log_impl(&dword_25F0B3000, v40, v127, "%{public}s: Loading %{public}s", v42, 0x16u);
    v47 = v137;
    swift_arrayDestroy();
    MEMORY[0x25F8D6230](v47, -1, -1);
    MEMORY[0x25F8D6230](v42, -1, -1);
  }

  else
  {
  }

  (*(v142 + 8))(v39, v144);
  v48 = sub_25F0ED6C8(MEMORY[0x277D84F90]);
  v148 = v48;
  v49 = v138;
  v137 = *(v37 + 16);
  if (!v137)
  {
LABEL_24:
    v142 = v128 + 16;
    v78 = (v128 + 56);
    v147[0] = MEMORY[0x277D84F90];
    v79 = (v128 + 48);
    v80 = (v128 + 32);
    v81 = (v128 + 8);
    v144 = (v130 + 8);

    v82 = 0;
    while (1)
    {
      v83 = v136;
      if (v82 == v137)
      {
        v84 = 1;
        v82 = v137;
      }

      else
      {
        if (v82 >= v137)
        {
          goto LABEL_49;
        }

        (*(v128 + 16))(v139, v131 + ((*(v128 + 80) + 32) & ~*(v128 + 80)) + *(v128 + 72) * v82, v145);
        v76 = __OFADD__(v82, 1);
        v82 = (v82 + 1);
        if (v76)
        {
          goto LABEL_50;
        }

        v84 = 0;
      }

      v85 = v139;
      v86 = v145;
      (*v78)(v139, v84, 1, v145);
      sub_25F130B48(v85, v83);
      if ((*v79)(v83, 1, v86) == 1)
      {
        break;
      }

      v87 = v132;
      (*v80)(v132, v83, v86);
      v88 = sub_25F17793C();
      v90 = v89;
      (*v81)(v87, v86);
      v91 = v133;
      v92 = v143;
      sub_25F127E88(v88, v90, &v148, v147, v133);
      v143 = v92;
      if (v92)
      {

        goto LABEL_40;
      }

      (*v144)(v91, v140);
    }

    v93 = v147[0];
    v94 = v147[0][2].isa;
    if (v94)
    {
      v146 = MEMORY[0x277D84F90];
      sub_25F0C97D8(0, v94, 0);
      v145 = *(v130 + 16);
      v95 = v146;
      v96 = v93 + ((*(v130 + 80) + 32) & ~*(v130 + 80));
      v130 += 16;
      v142 = *(v130 + 56);
      do
      {
        v97 = v129;
        v98 = v140;
        (v145)(v129, v96, v140);
        v99 = sub_25F178B0C();
        v101 = v100;
        (*v144)(v97, v98);
        v146 = v95;
        v103 = *(v95 + 16);
        v102 = *(v95 + 24);
        if (v103 >= v102 >> 1)
        {
          sub_25F0C97D8((v102 > 1), v103 + 1, 1);
          v95 = v146;
        }

        *(v95 + 16) = v103 + 1;
        v104 = v95 + 16 * v103;
        *(v104 + 32) = v99;
        *(v104 + 40) = v101;
        v96 += v142;
        v94 = (v94 - 1);
      }

      while (v94);
    }

    else
    {

      v95 = MEMORY[0x277D84F90];
    }

    v118 = v143;
    sub_25F12A358(v95);
    v115 = v125;
    v116 = v124;
    v117 = v123;
    if (v118)
    {
    }

    else
    {

      v120 = v148;
      if (v148[2].isa)
      {
        sub_25F1307BC();
        swift_allocError();
        *v121 = v120;
        swift_willThrow();
      }

      else
      {
      }
    }

    goto LABEL_44;
  }

  v50 = v48;
  v142 = *(v128 + 16);
  v51 = v131 + ((*(v128 + 80) + 32) & ~*(v128 + 80));
  v127 = (v128 + 32);
  v52 = *(v128 + 72);
  v134 = (v128 + 8);
  v144 = (v128 + 16);
  v126 = (v128 + 40);
  v53 = v137;
  (v142)(v138, v51, v145);
  while (1)
  {
    v55 = sub_25F17793C();
    if (v50[2].isa)
    {
      break;
    }

LABEL_13:
    v60 = sub_25F17793C();
    v62 = v61;
    (v142)(v141, v49, v145);
    v63 = v148;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v147[0] = v63;
    v66 = sub_25F0C8D24(v60, v62);
    v67 = v63[2].isa;
    v68 = (v65 & 1) == 0;
    v69 = v67 + v68;
    if (__OFADD__(v67, v68))
    {
      __break(1u);
LABEL_49:
      __break(1u);
LABEL_50:
      __break(1u);
LABEL_51:
      __break(1u);
LABEL_52:
      result = sub_25F17985C();
      __break(1u);
      return result;
    }

    v70 = v65;
    if (v63[3].isa >= v69)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        if (v65)
        {
          goto LABEL_6;
        }
      }

      else
      {
        sub_25F1706A4();
        if (v70)
        {
          goto LABEL_6;
        }
      }
    }

    else
    {
      sub_25F16C3E8(v69, isUniquelyReferenced_nonNull_native);
      v71 = sub_25F0C8D24(v60, v62);
      if ((v70 & 1) != (v72 & 1))
      {
        goto LABEL_52;
      }

      v66 = v71;
      if (v70)
      {
LABEL_6:

        v50 = v147[0];
        v54 = v145;
        (*v126)(v147[0][7].isa + v66 * v52, v141, v145);
        v49 = v138;
        (*v134)(v138, v54);
        goto LABEL_7;
      }
    }

    v50 = v147[0];
    v147[0][(v66 >> 6) + 8].isa = (v147[0][(v66 >> 6) + 8].isa | (1 << v66));
    v73 = (v50[6].isa + 16 * v66);
    *v73 = v60;
    v73[1] = v62;
    v74 = v145;
    (*v127)(v50[7].isa + v66 * v52, v141, v145);
    v49 = v138;
    (*v134)(v138, v74);
    v75 = v50[2].isa;
    v76 = __OFADD__(v75, 1);
    v77 = (v75 + 1);
    if (v76)
    {
      goto LABEL_51;
    }

    v50[2].isa = v77;
LABEL_7:
    v148 = v50;
    v51 += v52;
    v53 = (v53 - 1);
    if (!v53)
    {
      goto LABEL_24;
    }

    (v142)(v49, v51, v145);
  }

  v57 = sub_25F0C8D24(v55, v56);
  v59 = v58;

  if ((v59 & 1) == 0)
  {
    goto LABEL_13;
  }

  v105 = v50[7].isa + v57 * v52;
  v106 = v122[0];
  v107 = v145;
  v108 = v142;
  (v142)(v122[0], v105, v145);
  v143 = sub_25F17793C();
  v110 = v109;
  v111 = type metadata accessor for PreviewsJITLinkerState.TargetDescriptionWithDuplicateInstallNameEncountered(0);
  sub_25F148850(&qword_27FD487C0, type metadata accessor for PreviewsJITLinkerState.TargetDescriptionWithDuplicateInstallNameEncountered);
  swift_allocError();
  v113 = v112;
  *v112 = v143;
  v112[1] = v110;
  v108(v112 + *(v111 + 20), v106, v107);
  v108(v113 + *(v111 + 24), v49, v107);
  swift_willThrow();
  v114 = *v134;
  (*v134)(v106, v107);
  v114(v49, v107);

LABEL_40:
  v115 = v125;
  v116 = v124;
  v117 = v123;
LABEL_44:
  sub_25F1782DC();
  sub_25F1782BC();

  return (*(v116 + 8))(v117, v115);
}

uint64_t sub_25F13DBC0@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_25F177E8C();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t BatchIdentity.workspaceID.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t BatchIdentity.workspaceID.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t BatchIdentity.agentBundle.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for BatchIdentity(0) + 20);
  v4 = sub_25F17767C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t BatchIdentity.agentBundle.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for BatchIdentity(0) + 20);
  v4 = sub_25F17767C();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t BatchIdentity.agentRole.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for BatchIdentity(0) + 24);
  v4 = sub_25F17773C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t BatchIdentity.agentRole.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for BatchIdentity(0) + 24);
  v4 = sub_25F17773C();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t BatchIdentity.agentProcessType.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for BatchIdentity(0) + 28);
  v4 = sub_25F17722C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t BatchIdentity.agentProcessType.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for BatchIdentity(0) + 28);
  v4 = sub_25F17722C();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t BatchIdentity.agentBootstrapMode.setter(char a1)
{
  result = type metadata accessor for BatchIdentity(0);
  *(v1 + *(result + 32)) = a1 & 1;
  return result;
}

uint64_t BatchIdentity.init(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = sub_25F17769C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  *a3 = sub_25F1773BC();
  a3[1] = v11;
  sub_25F1773CC();
  v12 = type metadata accessor for BatchIdentity(0);
  v13 = a3 + v12[5];
  sub_25F17768C();
  (*(v7 + 8))(v10, v6);
  v14 = a3 + v12[6];
  sub_25F1773FC();
  v15 = a3 + v12[7];
  sub_25F1773AC();
  v16 = sub_25F1773DC();
  v17 = sub_25F17741C();
  (*(*(v17 - 8) + 8))(a1, v17);
  *(a3 + v12[8]) = v16 & 1;
  return sub_25F149EDC(a2, a3 + v12[9], MEMORY[0x277D406A0]);
}

uint64_t BatchIdentity.hash(into:)()
{
  v1 = v0;
  v2 = *v0;
  v3 = v0[1];
  sub_25F17911C();
  v4 = type metadata accessor for BatchIdentity(0);
  v5 = v4[5];
  sub_25F17767C();
  sub_25F148850(&qword_27FD48C80, MEMORY[0x277D408A0]);
  sub_25F17902C();
  v6 = v4[6];
  sub_25F17773C();
  sub_25F148850(&qword_27FD48C88, MEMORY[0x277D409D0]);
  sub_25F17902C();
  v7 = v4[7];
  sub_25F17722C();
  sub_25F148850(&qword_27FD471F0, MEMORY[0x277D406E8]);
  sub_25F17902C();
  v10 = *(v1 + v4[8]);
  sub_25F148898();
  sub_25F17902C();
  v8 = v4[9];
  sub_25F1771BC();
  sub_25F148850(&qword_27FD48C98, MEMORY[0x277D406A0]);
  return sub_25F17902C();
}

uint64_t BatchIdentity.hashValue.getter()
{
  v1 = v0;
  sub_25F1798CC();
  v2 = *v0;
  v3 = v0[1];
  sub_25F17911C();
  v4 = type metadata accessor for BatchIdentity(0);
  v5 = v4[5];
  sub_25F17767C();
  sub_25F148850(&qword_27FD48C80, MEMORY[0x277D408A0]);
  sub_25F17902C();
  v6 = v4[6];
  sub_25F17773C();
  sub_25F148850(&qword_27FD48C88, MEMORY[0x277D409D0]);
  sub_25F17902C();
  v7 = v4[7];
  sub_25F17722C();
  sub_25F148850(&qword_27FD471F0, MEMORY[0x277D406E8]);
  sub_25F17902C();
  v10 = *(v1 + v4[8]);
  sub_25F148898();
  sub_25F17902C();
  v8 = v4[9];
  sub_25F1771BC();
  sub_25F148850(&qword_27FD48C98, MEMORY[0x277D406A0]);
  sub_25F17902C();
  return sub_25F17990C();
}

uint64_t sub_25F13E744(uint64_t a1, int *a2)
{
  v4 = v2;
  v5 = *v2;
  v6 = v2[1];
  sub_25F17911C();
  v7 = a2[5];
  sub_25F17767C();
  sub_25F148850(&qword_27FD48C80, MEMORY[0x277D408A0]);
  sub_25F17902C();
  v8 = a2[6];
  sub_25F17773C();
  sub_25F148850(&qword_27FD48C88, MEMORY[0x277D409D0]);
  sub_25F17902C();
  v9 = a2[7];
  sub_25F17722C();
  sub_25F148850(&qword_27FD471F0, MEMORY[0x277D406E8]);
  sub_25F17902C();
  v12 = *(v4 + a2[8]);
  sub_25F148898();
  sub_25F17902C();
  v10 = a2[9];
  sub_25F1771BC();
  sub_25F148850(&qword_27FD48C98, MEMORY[0x277D406A0]);
  return sub_25F17902C();
}

uint64_t sub_25F13E914(uint64_t a1, int *a2)
{
  v4 = v2;
  sub_25F1798CC();
  v5 = *v2;
  v6 = v2[1];
  sub_25F17911C();
  v7 = a2[5];
  sub_25F17767C();
  sub_25F148850(&qword_27FD48C80, MEMORY[0x277D408A0]);
  sub_25F17902C();
  v8 = a2[6];
  sub_25F17773C();
  sub_25F148850(&qword_27FD48C88, MEMORY[0x277D409D0]);
  sub_25F17902C();
  v9 = a2[7];
  sub_25F17722C();
  sub_25F148850(&qword_27FD471F0, MEMORY[0x277D406E8]);
  sub_25F17902C();
  v12 = *(v4 + a2[8]);
  sub_25F148898();
  sub_25F17902C();
  v10 = a2[9];
  sub_25F1771BC();
  sub_25F148850(&qword_27FD48C98, MEMORY[0x277D406A0]);
  sub_25F17902C();
  return sub_25F17990C();
}

uint64_t Agent.jitBootstrapConnectionIdentifier.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + OBJC_IVAR____TtC15PreviewShellKit5Agent_jitBootstrapConnectionIdentifier + 8);
  *a1 = *(v1 + OBJC_IVAR____TtC15PreviewShellKit5Agent_jitBootstrapConnectionIdentifier);
  a1[1] = v2;
}

uint64_t Agent.jitBootstrapAgentServer.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + OBJC_IVAR____TtC15PreviewShellKit5Agent_jitBootstrapAgentServer + 8);
  *a1 = *(v1 + OBJC_IVAR____TtC15PreviewShellKit5Agent_jitBootstrapAgentServer);
  a1[1] = v2;
}

uint64_t Agent.jitBootstrapTimeout.getter()
{
  result = *(v0 + OBJC_IVAR____TtC15PreviewShellKit5Agent_jitBootstrapTimeout);
  v2 = *(v0 + OBJC_IVAR____TtC15PreviewShellKit5Agent_jitBootstrapTimeout + 8);
  return result;
}

unint64_t Agent.pid.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD48188, &qword_25F182550);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = v13 - v3;
  v5 = *(v0 + OBJC_IVAR____TtC15PreviewShellKit5Agent_processFuture);
  sub_25F17861C();
  v6 = type metadata accessor for Process(0);
  v7 = (*(*(v6 - 8) + 48))(v4, 1, v6);
  if (v7 == 1)
  {
    sub_25F0B7E94(v4, &qword_27FD48188, &qword_25F182550);
    v8 = 0;
  }

  else
  {
    v9 = &v4[*(v6 + 24)];
    v10 = *(v9 + 1);
    v13[0] = *v9;
    v13[1] = v10;
    v14 = v9[32];
    v11 = sub_25F177CDC();
    sub_25F1489A4(v4, type metadata accessor for Process);
    v8 = v11;
  }

  return v8 | ((v7 == 1) << 32);
}

uint64_t Agent.deviceType.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + OBJC_IVAR____TtC15PreviewShellKit5Agent_batchIdentity;
  v4 = type metadata accessor for BatchIdentity(0);
  return sub_25F1488EC(v3 + *(v4 + 36), a1, MEMORY[0x277D406A0]);
}

uint64_t Agent.__allocating_init(launcher:batchIdentity:jitBootstrapAgentServer:jitBootstrapTimeout:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v39 = a5;
  v37 = a2;
  v38 = a4;
  *&v35 = a3;
  v36 = a1;
  v6 = sub_25F177FFC();
  v40 = *(v6 - 8);
  v41 = v6;
  v7 = *(v40 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_25F176DFC();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v5 + 48);
  v16 = *(v5 + 52);
  v17 = swift_allocObject();
  v18 = sub_25F1782AC();
  v19 = *(v18 + 48);
  v20 = *(v18 + 52);
  swift_allocObject();
  *(v17 + 16) = sub_25F17829C();
  sub_25F177E7C();
  v21 = (v17 + OBJC_IVAR____TtC15PreviewShellKit5Agent_jitBootstrapConnectionIdentifier);
  sub_25F176DEC();
  v22 = sub_25F176DDC();
  v24 = v23;
  v25 = *(v11 + 8);
  v35 = *v35;
  v25(v14, v10);
  *v21 = v22;
  v21[1] = v24;
  v26 = OBJC_IVAR____TtC15PreviewShellKit5Agent_processFuture;
  v27 = OBJC_IVAR____TtC15PreviewShellKit5Agent_processPromise;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD481A8, qword_25F17F300);
  *(v17 + v26) = sub_25F17867C();
  *(v17 + v27) = v28;
  v29 = OBJC_IVAR____TtC15PreviewShellKit5Agent_updates;
  *(v17 + v29) = sub_25F0ED8B4(MEMORY[0x277D84F90]);
  v30 = v36;
  sub_25F0BEC1C(v36, v17 + OBJC_IVAR____TtC15PreviewShellKit5Agent_launcher);
  v31 = v37;
  sub_25F1488EC(v37, v17 + OBJC_IVAR____TtC15PreviewShellKit5Agent_batchIdentity, type metadata accessor for BatchIdentity);
  *(v17 + OBJC_IVAR____TtC15PreviewShellKit5Agent_jitBootstrapAgentServer) = v35;
  v32 = v17 + OBJC_IVAR____TtC15PreviewShellKit5Agent_jitBootstrapTimeout;
  *v32 = v38;
  *(v32 + 8) = v39 & 1;
  v42 = v17;
  sub_25F177FDC();
  sub_25F148850(&qword_27FD47EA0, type metadata accessor for Agent);

  sub_25F17801C();

  (*(v40 + 8))(v9, v41);
  v33 = *(v17 + OBJC_IVAR____TtC15PreviewShellKit5Agent_processFuture);

  sub_25F17860C();

  sub_25F1489A4(v31, type metadata accessor for BatchIdentity);
  __swift_destroy_boxed_opaque_existential_1Tm(v30);
  return v17;
}

void *Agent.init(launcher:batchIdentity:jitBootstrapAgentServer:jitBootstrapTimeout:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v6 = v5;
  v36 = a5;
  v34 = a2;
  v35 = a4;
  *&v32 = a3;
  v33 = a1;
  v38 = *v5;
  v39 = sub_25F177FFC();
  v37 = *(v39 - 8);
  v7 = *(v37 + 64);
  MEMORY[0x28223BE20](v39);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_25F176DFC();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_25F1782AC();
  v16 = *(v15 + 48);
  v17 = *(v15 + 52);
  swift_allocObject();
  v5[2] = sub_25F17829C();
  sub_25F177E7C();
  v18 = (v5 + OBJC_IVAR____TtC15PreviewShellKit5Agent_jitBootstrapConnectionIdentifier);
  sub_25F176DEC();
  v19 = sub_25F176DDC();
  v21 = v20;
  v22 = *(v11 + 8);
  v32 = *v32;
  v22(v14, v10);
  *v18 = v19;
  v18[1] = v21;
  v23 = OBJC_IVAR____TtC15PreviewShellKit5Agent_processFuture;
  v24 = OBJC_IVAR____TtC15PreviewShellKit5Agent_processPromise;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD481A8, qword_25F17F300);
  *(v6 + v23) = sub_25F17867C();
  *(v6 + v24) = v25;
  v26 = OBJC_IVAR____TtC15PreviewShellKit5Agent_updates;
  *(v6 + v26) = sub_25F0ED8B4(MEMORY[0x277D84F90]);
  v27 = v33;
  sub_25F0BEC1C(v33, v6 + OBJC_IVAR____TtC15PreviewShellKit5Agent_launcher);
  v28 = v34;
  sub_25F1488EC(v34, v6 + OBJC_IVAR____TtC15PreviewShellKit5Agent_batchIdentity, type metadata accessor for BatchIdentity);
  *(v6 + OBJC_IVAR____TtC15PreviewShellKit5Agent_jitBootstrapAgentServer) = v32;
  v29 = v6 + OBJC_IVAR____TtC15PreviewShellKit5Agent_jitBootstrapTimeout;
  *v29 = v35;
  v29[8] = v36 & 1;
  v40 = v6;
  sub_25F177FDC();
  sub_25F148850(&qword_27FD47EA0, type metadata accessor for Agent);

  sub_25F17801C();

  (*(v37 + 8))(v9, v39);
  v30 = *(v6 + OBJC_IVAR____TtC15PreviewShellKit5Agent_processFuture);

  sub_25F17860C();

  sub_25F1489A4(v28, type metadata accessor for BatchIdentity);
  __swift_destroy_boxed_opaque_existential_1Tm(v27);
  return v6;
}

uint64_t sub_25F13F568(uint64_t a1)
{
  v2 = type metadata accessor for Agent.Update(0);
  v61 = *(v2 - 8);
  v62 = v2;
  v3 = *(v61 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v58 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD48D90, &qword_25F182810);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v58 - v9;
  v11 = sub_25F17888C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v58 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25F17884C();

  v16 = sub_25F17887C();
  v17 = sub_25F17955C();

  LODWORD(v64) = v17;
  v18 = os_log_type_enabled(v16, v17);
  v19 = &unk_27FD48000;
  if (v18)
  {
    v20 = swift_slowAlloc();
    v63 = v12;
    v21 = v20;
    v59 = swift_slowAlloc();
    v65[0] = v59;
    *v21 = 136315394;
    v22 = type metadata accessor for BatchIdentity(0);
    v60 = v11;
    v23 = *(v22 + 20);
    sub_25F17767C();
    v58 = v6;
    sub_25F148850(&qword_27FD47EC0, MEMORY[0x277D408A0]);
    v24 = sub_25F17980C();
    v26 = sub_25F0BECF0(v24, v25, v65);

    *(v21 + 4) = v26;
    *(v21 + 12) = 2080;
    v27 = *(a1 + OBJC_IVAR____TtC15PreviewShellKit5Agent_processFuture);
    sub_25F17863C();
    sub_25F0B7D00(&qword_27FD48D98, &qword_27FD48D90, &qword_25F182810);
    v28 = v58;
    v29 = sub_25F17980C();
    v31 = v30;
    (*(v7 + 8))(v10, v28);
    v32 = sub_25F0BECF0(v29, v31, v65);

    *(v21 + 14) = v32;
    v19 = &unk_27FD48000;
    _os_log_impl(&dword_25F0B3000, v16, v64, "agent (%s invalidated with current process future state %s", v21, 0x16u);
    v33 = v59;
    swift_arrayDestroy();
    MEMORY[0x25F8D6230](v33, -1, -1);
    MEMORY[0x25F8D6230](v21, -1, -1);

    (*(v63 + 8))(v15, v60);
  }

  else
  {

    (*(v12 + 8))(v15, v11);
  }

  v34 = *(a1 + v19[404]);
  v35 = "/Library/Caches/com.apple.xbs/Sources/UITestingAgent/OS/PreviewShell/Sources/PreviewShellKit/Process.swift";
  v36 = "init(launcher:batchIdentity:jitBootstrapAgentServer:jitBootstrapTimeout:)";
  sub_25F17866C();
  v37 = OBJC_IVAR____TtC15PreviewShellKit5Agent_updates;
  swift_beginAccess();
  v38 = *(a1 + v37);
  v39 = *(v38 + 64);
  v59 = v38 + 64;
  v40 = 1 << *(v38 + 32);
  v41 = -1;
  if (v40 < 64)
  {
    v41 = ~(-1 << v40);
  }

  v42 = v41 & v39;
  v58 = (v40 + 63) >> 6;
  result = swift_bridgeObjectRetain_n();
  v44 = 0;
  v60 = v38;
  while (v42)
  {
LABEL_12:
    v46 = __clz(__rbit64(v42));
    v42 &= v42 - 1;
    v47 = *(v38 + 56);
    v48 = (v44 << 9) | (8 * v46);
    result = *(v47 + v48);
    v49 = *(result + 16);
    if (v49)
    {
      v63 = *(v47 + v48);
      v64 = v42;
      v50 = v61;
      v51 = *(v62 + 24);
      v52 = result + ((*(v61 + 80) + 32) & ~*(v61 + 80));

      v53 = v36;
      v54 = v5;
      v55 = v35;
      v56 = *(v50 + 72);
      do
      {
        sub_25F1488EC(v52, v54, type metadata accessor for Agent.Update);
        v57 = *(v54 + v51);
        sub_25F17866C();
        sub_25F1489A4(v54, type metadata accessor for Agent.Update);
        v52 += v56;
        --v49;
      }

      while (v49);

      v35 = v55;
      v5 = v54;
      v36 = v53;
      v38 = v60;
      v42 = v64;
    }
  }

  while (1)
  {
    v45 = v44 + 1;
    if (__OFADD__(v44, 1))
    {
      break;
    }

    if (v45 >= v58)
    {
    }

    v42 = *(v59 + 8 * v45);
    ++v44;
    if (v42)
    {
      v44 = v45;
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_25F13FB54(uint64_t a1, void *a2)
{
  v63 = *a2;
  v64 = a2;
  v3 = sub_25F1780FC();
  v70 = *(v3 - 8);
  v71 = v3;
  v4 = *(v70 + 64);
  MEMORY[0x28223BE20](v3);
  v76 = &v63 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Process(0);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6);
  v69 = &v63 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v65 = &v63 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v63 - v13;
  MEMORY[0x28223BE20](v12);
  v16 = &v63 - v15;
  v73 = sub_25F17888C();
  v17 = *(v73 - 8);
  v18 = *(v17 + 64);
  v19 = MEMORY[0x28223BE20](v73);
  v67 = &v63 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v19);
  v75 = &v63 - v22;
  MEMORY[0x28223BE20](v21);
  v24 = &v63 - v23;
  sub_25F17884C();
  sub_25F1488EC(a1, v16, type metadata accessor for Process);
  v68 = a1;
  sub_25F1488EC(a1, v14, type metadata accessor for Process);
  v25 = sub_25F17887C();
  v26 = sub_25F17955C();
  v27 = os_log_type_enabled(v25, v26);
  v72 = v6;
  v66 = v17;
  if (v27)
  {
    v28 = swift_slowAlloc();
    v74 = swift_slowAlloc();
    *&v77 = v74;
    *v28 = 136446466;
    sub_25F177E8C();
    sub_25F148850(&qword_27FD481A0, MEMORY[0x277D403A8]);
    v29 = sub_25F17980C();
    v31 = v30;
    sub_25F1489A4(v16, type metadata accessor for Process);
    v32 = sub_25F0BECF0(v29, v31, &v77);
    v6 = v72;

    *(v28 + 4) = v32;
    *(v28 + 12) = 1026;
    v33 = &v14[*(v6 + 24)];
    v34 = *(v33 + 1);
    v92 = *v33;
    v93 = v34;
    v94 = v33[32];
    LODWORD(v32) = sub_25F177CDC();
    v17 = v66;
    sub_25F1489A4(v14, type metadata accessor for Process);
    *(v28 + 14) = v32;
    _os_log_impl(&dword_25F0B3000, v25, v26, "Taking active preview assertion for %{public}s with pid %{public}d", v28, 0x12u);
    v35 = v74;
    __swift_destroy_boxed_opaque_existential_1Tm(v74);
    MEMORY[0x25F8D6230](v35, -1, -1);
    MEMORY[0x25F8D6230](v28, -1, -1);
  }

  else
  {
    sub_25F1489A4(v14, type metadata accessor for Process);

    sub_25F1489A4(v16, type metadata accessor for Process);
  }

  v36 = v73;
  v74 = *(v17 + 8);
  (v74)(v24, v73);
  v73 = sub_25F1770AC();
  sub_25F17709C();
  v37 = v68;
  v38 = v68 + *(v6 + 24);
  v91 = *(v38 + 32);
  v39 = *(v38 + 16);
  v89 = *v38;
  v90 = v39;
  sub_25F177CDC();
  sub_25F17706C();

  *(&v78 + 1) = v63;
  v79 = sub_25F148850(&qword_27FD47EA0, type metadata accessor for Agent);
  *&v77 = v64;

  sub_25F1780DC();
  __swift_destroy_boxed_opaque_existential_1Tm(&v77);
  sub_25F17884C();
  v40 = v65;
  sub_25F1488EC(v37, v65, type metadata accessor for Process);
  v41 = sub_25F17887C();
  v42 = sub_25F17952C();
  v43 = os_log_type_enabled(v41, v42);
  v44 = v69;
  if (v43)
  {
    v45 = v36;
    v46 = swift_slowAlloc();
    *v46 = 67240192;
    v47 = v40 + *(v72 + 24);
    LOBYTE(v79) = *(v47 + 32);
    v48 = *(v47 + 16);
    v77 = *v47;
    v78 = v48;
    v49 = sub_25F177CDC();
    sub_25F1489A4(v40, type metadata accessor for Process);
    *(v46 + 4) = v49;
    _os_log_impl(&dword_25F0B3000, v41, v42, "Taking subordinate process assertion for pid %{public}d", v46, 8u);
    v50 = v46;
    v36 = v45;
    MEMORY[0x25F8D6230](v50, -1, -1);
  }

  else
  {
    sub_25F1489A4(v40, type metadata accessor for Process);
  }

  (v74)(v75, v36);
  sub_25F17709C();
  v51 = *(v38 + 16);
  v86 = *v38;
  v87 = v51;
  v88 = *(v38 + 32);
  sub_25F177CDC();
  sub_25F17707C();

  v52 = v67;
  sub_25F17884C();
  sub_25F1488EC(v37, v44, type metadata accessor for Process);
  v53 = sub_25F17887C();
  v54 = sub_25F17952C();
  if (os_log_type_enabled(v53, v54))
  {
    v55 = v36;
    v56 = swift_slowAlloc();
    *v56 = 67240192;
    v57 = v44 + *(v72 + 24);
    v85 = *(v57 + 32);
    v58 = *(v57 + 16);
    v83 = *v57;
    v84 = v58;
    v59 = sub_25F177CDC();
    sub_25F1489A4(v44, type metadata accessor for Process);
    *(v56 + 4) = v59;
    _os_log_impl(&dword_25F0B3000, v53, v54, "Taking frontboard visibility assertion for pid %{public}d", v56, 8u);
    v60 = v56;
    v36 = v55;
    MEMORY[0x25F8D6230](v60, -1, -1);
  }

  else
  {
    sub_25F1489A4(v44, type metadata accessor for Process);
  }

  (v74)(v52, v36);
  sub_25F17709C();
  v61 = *(v38 + 16);
  v80 = *v38;
  v81 = v61;
  v82 = *(v38 + 32);
  sub_25F177CDC();
  sub_25F17708C();

  return (*(v70 + 8))(v76, v71);
}

uint64_t Agent.description.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD48188, &qword_25F182550);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = v17 - v3;
  *&v19 = 0;
  *(&v19 + 1) = 0xE000000000000000;
  sub_25F1796DC();
  v18 = v19;
  MEMORY[0x25F8D50D0](0x6920746E6567413CLL, 0xEB00000000203A64);
  sub_25F177E8C();
  sub_25F148850(&qword_27FD481A0, MEMORY[0x277D403A8]);
  v5 = sub_25F17980C();
  MEMORY[0x25F8D50D0](v5);

  MEMORY[0x25F8D50D0](0x203A646970202CLL, 0xE700000000000000);
  v6 = *(v0 + OBJC_IVAR____TtC15PreviewShellKit5Agent_processFuture);
  sub_25F17861C();
  v7 = type metadata accessor for Process(0);
  if ((*(*(v7 - 8) + 48))(v4, 1, v7) == 1)
  {
    sub_25F0B7E94(v4, &qword_27FD48188, &qword_25F182550);
    v8 = -1;
  }

  else
  {
    v9 = &v4[*(v7 + 24)];
    v10 = *(v9 + 1);
    v19 = *v9;
    v20 = v10;
    v21 = v9[32];
    v8 = sub_25F177CDC();
    sub_25F1489A4(v4, type metadata accessor for Process);
  }

  v17[3] = v8;
  v11 = sub_25F17980C();
  MEMORY[0x25F8D50D0](v11);

  MEMORY[0x25F8D50D0](0xD000000000000010, 0x800000025F186E30);
  v12 = type metadata accessor for BatchIdentity(0);
  v13 = *(v12 + 20);
  sub_25F17767C();
  sub_25F148850(&qword_27FD47EC0, MEMORY[0x277D408A0]);
  v14 = sub_25F17980C();
  MEMORY[0x25F8D50D0](v14);

  MEMORY[0x25F8D50D0](0x3A65707974202C27, 0xEA00000000002720);
  v15 = *(v12 + 36);
  sub_25F1771BC();
  sub_25F17976C();
  MEMORY[0x25F8D50D0](15911, 0xE200000000000000);
  return v18;
}

uint64_t Agent.launch(with:killing:)(uint64_t a1, uint64_t a2)
{
  v135 = a2;
  v141 = a1;
  v138 = sub_25F177FFC();
  v3 = *(v138 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v138);
  v6 = &v127 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v134 = sub_25F17741C();
  v133 = *(v134 - 8);
  v7 = *(v133 + 64);
  MEMORY[0x28223BE20](v134);
  v131 = v8;
  v132 = &v127 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD46BB0, &qword_25F17AF30);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v139 = &v127 - v11;
  v12 = sub_25F17888C();
  v13 = *(v12 - 8);
  v144 = v12;
  v145 = v13;
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v12);
  v143 = &v127 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  *&v142 = &v127 - v18;
  MEMORY[0x28223BE20](v17);
  v20 = &v127 - v19;
  v21 = v2 + OBJC_IVAR____TtC15PreviewShellKit5Agent_batchIdentity;
  v22 = type metadata accessor for BatchIdentity(0);
  v23 = *(v21 + *(v22 + 32));
  sub_25F17884C();

  v24 = sub_25F17887C();
  v25 = sub_25F17955C();
  v140 = v2;

  v26 = os_log_type_enabled(v24, v25);
  v136 = v6;
  v137 = v3;
  if (v26)
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v147 = v28;
    *v27 = 136446466;
    v29 = sub_25F177B4C();
    v31 = sub_25F0BECF0(v29, v30, &v147);

    *(v27 + 4) = v31;
    *(v27 + 12) = 2080;
    v32 = *(v22 + 20);
    sub_25F17767C();
    sub_25F148850(&qword_27FD47EC0, MEMORY[0x277D408A0]);
    v33 = sub_25F17980C();
    v35 = sub_25F0BECF0(v33, v34, &v147);

    *(v27 + 14) = v35;
    _os_log_impl(&dword_25F0B3000, v24, v25, "Preparing to launch agent in %{public}s mode: %s", v27, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x25F8D6230](v28, -1, -1);
    MEMORY[0x25F8D6230](v27, -1, -1);
  }

  v146 = *(v145 + 8);
  v146(v20, v144);
  v36 = sub_25F17739C();
  v37 = v143;
  if (*(v36 + 16) && (v38 = sub_25F0C8D24(0xD000000000000024, 0x800000025F186E50), (v39 & 1) != 0))
  {
    v40 = *(v36 + 56) + 16 * v38;
    v41 = *v40;
    v42 = *(v40 + 8);
  }

  else
  {
    v41 = 0;
    v42 = 0;
  }

  v147 = v41;
  v148 = v42;
  MEMORY[0x28223BE20](v43);
  v125 = &v147;
  v44 = sub_25F1480DC(sub_25F148A04, &v123, &unk_287150ED8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD486D0, &qword_25F1806F0);
  swift_arrayDestroy();

  v45 = sub_25F17739C();
  v46 = *(v45 + 16);
  v130 = v44;
  if (v46 && (v47 = sub_25F0C8D24(0xD00000000000001ELL, 0x800000025F186E80), (v48 & 1) != 0))
  {
    v49 = *(v45 + 56) + 16 * v47;
    v51 = *v49;
    v50 = *(v49 + 8);
  }

  else
  {
    v51 = 0;
    v50 = 0;
  }

  v147 = v51;
  v148 = v50;
  MEMORY[0x28223BE20](v52);
  v125 = &v147;
  v53 = sub_25F1480DC(sub_25F14AA54, &v123, &unk_287150F18);
  swift_arrayDestroy();

  v54 = sub_25F17739C();
  v55 = *(v54 + 16);
  v129 = v53;
  if (v55 && (v56 = sub_25F0C8D24(0xD000000000000020, 0x800000025F186EA0), (v57 & 1) != 0))
  {
    v58 = *(v54 + 56) + 16 * v56;
    v59 = *v58;
    v60 = *(v58 + 8);
  }

  else
  {
    v59 = 0;
    v60 = 0;
  }

  v147 = v59;
  v148 = v60;
  MEMORY[0x28223BE20](v61);
  v125 = &v147;
  v62 = sub_25F1480DC(sub_25F14AA54, &v123, &unk_287150F58);
  swift_arrayDestroy();

  if (v62)
  {
    v63 = v142;
    sub_25F17884C();
    v64 = sub_25F17887C();
    v65 = sub_25F17951C();
    if (os_log_type_enabled(v64, v65))
    {
      v66 = swift_slowAlloc();
      *v66 = 0;
      _os_log_impl(&dword_25F0B3000, v64, v65, "Logging shell environment:", v66, 2u);
      MEMORY[0x25F8D6230](v66, -1, -1);
    }

    v145 += 8;
    v146(v63, v144);
    v67 = [objc_opt_self() processInfo];
    v68 = [v67 environment];

    v69 = sub_25F178FDC();
    v70 = *(v69 + 16);
    if (v70)
    {
      v71 = sub_25F1475B8(*(v69 + 16), 0);
      v72 = sub_25F148378(&v147, v71 + 4, v70, v69);
      v73 = v149;

      sub_25F0C03C0();
      if (v72 != v70)
      {
        __break(1u);

        __break(1u);
        return result;
      }

      v37 = v143;
    }

    else
    {
      v71 = MEMORY[0x277D84F90];
    }

    v147 = v71;
    sub_25F14768C(&v147);

    v128 = v147;
    v75 = v147[2];
    v76 = v144;
    if (v75)
    {
      v77 = v128 + 7;
      *&v74 = 136315394;
      v142 = v74;
      do
      {
        v78 = *(v77 - 3);
        v79 = *(v77 - 2);
        v81 = *(v77 - 1);
        v80 = *v77;

        sub_25F17884C();

        v82 = sub_25F17887C();
        v83 = sub_25F17951C();

        if (os_log_type_enabled(v82, v83))
        {
          v84 = swift_slowAlloc();
          v85 = swift_slowAlloc();
          v147 = v85;
          *v84 = v142;
          v86 = sub_25F0BECF0(v78, v79, &v147);

          *(v84 + 4) = v86;
          *(v84 + 12) = 2080;
          v87 = sub_25F0BECF0(v81, v80, &v147);

          *(v84 + 14) = v87;
          _os_log_impl(&dword_25F0B3000, v82, v83, "    %s: %s", v84, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x25F8D6230](v85, -1, -1);
          v88 = v84;
          v37 = v143;
          v76 = v144;
          MEMORY[0x25F8D6230](v88, -1, -1);
        }

        else
        {
        }

        v146(v37, v76);
        v77 += 4;
        --v75;
      }

      while (v75);
    }
  }

  v89 = sub_25F17739C();
  if (*(v89 + 16))
  {
    v90 = sub_25F0C8D24(0xD00000000000002BLL, 0x800000025F186ED0);
    if (v91)
    {
      v92 = (*(v89 + 56) + 16 * v90);
      v93 = *v92;
      v94 = v92[1];

      sub_25F17830C();
    }
  }

  type metadata accessor for LegacyPidPromiseFuture();
  v95 = swift_allocObject();
  v147 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD48CC0, &qword_25F182568);
  v96 = sub_25F17883C();
  *(v95 + 16) = v96;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD48CC8, &qword_25F182570);

  v124 = sub_25F148A48;
  v125 = v96;
  LOBYTE(v123) = 2;
  v97 = sub_25F1786BC();

  *(v95 + 24) = v97;
  v145 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD48CD0, &qword_25F182578);
  *&v142 = sub_25F17932C();
  v98 = *(v142 - 8);
  v143 = *(v98 + 56);
  v144 = v98 + 56;
  (v143)(v139, 1, 1, v142);
  v99 = v133;
  v128 = *(v133 + 16);
  v100 = v132;
  v101 = v134;
  (v128)(v132, v141, v134);
  v102 = *(v99 + 80);
  v103 = v131;
  v104 = swift_allocObject();
  v105 = v140;
  *(v104 + 16) = v140;
  *(v104 + 24) = v95;
  v146 = v95;
  v133 = *(v99 + 32);
  (v133)(v104 + ((v102 + 32) & ~v102), v100, v101);

  v125 = nullsub_1;
  v126 = 0;
  v123 = &unk_25F182588;
  v124 = v104;
  v106 = v139;
  v145 = sub_25F17870C();
  (v143)(v106, 1, 1, v142);
  (v128)(v100, v141, v101);
  v107 = (v102 + 24) & ~v102;
  v108 = swift_allocObject();
  *(v108 + 16) = v146;
  (v133)(v108 + v107, v100, v101);
  v109 = v108 + ((v103 + v107 + 7) & 0xFFFFFFFFFFFFFFF8);
  *v109 = v105;
  *(v109 + 8) = (v130 & 1) == 0;
  *(v109 + 9) = v129 & 1;
  v110 = swift_allocObject();
  *(v110 + 16) = &unk_25F182598;
  *(v110 + 24) = v108;

  v124 = v110;
  v125 = (MEMORY[0x277D84F78] + 8);
  v123 = &unk_25F1825A8;
  v111 = sub_25F17865C();
  v143 = v111;

  sub_25F0B7E94(v106, &qword_27FD46BB0, &qword_25F17AF30);
  v112 = v136;
  sub_25F177FDC();
  v113 = swift_allocObject();
  v114 = v135;
  *(v113 + 16) = v105;
  *(v113 + 24) = v114;
  v115 = swift_allocObject();
  *(v115 + 16) = sub_25F148F60;
  *(v115 + 24) = v113;
  v116 = type metadata accessor for Process(0);

  v124 = v115;
  v125 = v116;
  v123 = sub_25F148F68;
  v117 = sub_25F17864C();
  v144 = v117;

  v118 = v138;
  v119 = *(v137 + 8);
  v119(v112, v138);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD46D60, &qword_25F180310);
  v124 = v111;
  v125 = v117;
  LOBYTE(v123) = 2;
  sub_25F17871C();
  sub_25F177FCC();
  v124 = 0;
  v125 = v116;
  v123 = sub_25F144094;
  sub_25F1785BC();

  v119(v112, v118);
  v120 = *(v140 + OBJC_IVAR____TtC15PreviewShellKit5Agent_processPromise);
  sub_25F177FCC();
  sub_25F17875C();
  v119(v112, v118);

  sub_25F1785DC();

  sub_25F177FCC();
  v124 = 0;
  v125 = MEMORY[0x277D40CB0];
  v123 = sub_25F1442FC;
  v121 = sub_25F1785BC();

  v119(v112, v118);
  return v121;
}

uint64_t sub_25F1417FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD48D60, &qword_25F1827E0) + 48);
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_25F0C10CC;

  return sub_25F1418D8(a1, a1 + v8, a3, a4);
}

uint64_t sub_25F1418D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[13] = a4;
  v5[14] = v4;
  v5[11] = a2;
  v5[12] = a3;
  v5[10] = a1;
  v6 = sub_25F17888C();
  v5[15] = v6;
  v7 = *(v6 - 8);
  v5[16] = v7;
  v8 = *(v7 + 64) + 15;
  v5[17] = swift_task_alloc();
  v5[18] = swift_task_alloc();
  v5[19] = swift_task_alloc();
  v9 = sub_25F17767C();
  v5[20] = v9;
  v10 = *(v9 - 8);
  v5[21] = v10;
  v11 = *(v10 + 64) + 15;
  v5[22] = swift_task_alloc();
  v5[23] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25F141A20, 0, 0);
}

uint64_t sub_25F141A20()
{
  v72 = v0;
  v2 = v0[13];
  v1 = v0[14];
  v3 = sub_25F17739C();
  v4 = OBJC_IVAR____TtC15PreviewShellKit5Agent_batchIdentity;
  v0[24] = OBJC_IVAR____TtC15PreviewShellKit5Agent_batchIdentity;
  v5 = v1 + v4;
  v6 = type metadata accessor for BatchIdentity(0);
  v7 = v6;
  v0[25] = v6;
  v64 = v0[23];
  v66 = v0[22];
  v9 = v0[20];
  v8 = v0[21];
  v68 = v0[19];
  if (*(v5 + *(v6 + 32)) == 1)
  {
    v10 = v0[14];
    v12 = *(v10 + OBJC_IVAR____TtC15PreviewShellKit5Agent_jitBootstrapConnectionIdentifier);
    v11 = *(v10 + OBJC_IVAR____TtC15PreviewShellKit5Agent_jitBootstrapConnectionIdentifier + 8);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v71 = v3;
    sub_25F16F150(v12, v11, 0xD000000000000029, 0x800000025F1870D0, isUniquelyReferenced_nonNull_native);
    v0[26] = v3;
    v14 = *(v8 + 16);
    v14(v64, v5 + *(v7 + 20), v9);
    sub_25F17885C();
    v14(v66, v64, v9);

    v15 = sub_25F17887C();
    v16 = sub_25F17952C();

    v17 = os_log_type_enabled(v15, v16);
    v19 = v0[21];
    v18 = v0[22];
    v20 = v0[19];
    v21 = v0[20];
    v22 = &unk_27FD52000;
    v24 = v0[15];
    v23 = v0[16];
    if (v17)
    {
      v69 = v0[19];
      v25 = v0[14];
      v67 = v0[15];
      v26 = swift_slowAlloc();
      v65 = swift_slowAlloc();
      v71 = v65;
      *v26 = 136446466;
      sub_25F0BEC1C(v25 + OBJC_IVAR____TtC15PreviewShellKit5Agent_launcher, (v0 + 2));
      __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
      DynamicType = swift_getDynamicType();
      v28 = v0[6];
      __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
      v0[7] = DynamicType;
      v0[8] = v28;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD48D88, &qword_25F182808);
      v29 = sub_25F1790BC();
      v31 = sub_25F0BECF0(v29, v30, &v71);

      *(v26 + 4) = v31;
      *(v26 + 12) = 2080;
      sub_25F148850(&qword_27FD47EC0, MEMORY[0x277D408A0]);
      v32 = sub_25F17980C();
      v34 = v33;
      v35 = v21;
      v36 = v15;
      v37 = v16;
      v38 = *(v19 + 8);
      v38(v18, v35);
      v39 = sub_25F0BECF0(v32, v34, &v71);
      v22 = &unk_27FD52000;

      *(v26 + 14) = v39;
      _os_log_impl(&dword_25F0B3000, v36, v37, "Asking for launcher %{public}s for bootstrap method of: %s", v26, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x25F8D6230](v65, -1, -1);
      MEMORY[0x25F8D6230](v26, -1, -1);

      v40 = *(v23 + 8);
      v40(v69, v67);
    }

    else
    {

      v38 = *(v19 + 8);
      v38(v18, v21);
      v40 = *(v23 + 8);
      v40(v20, v24);
    }

    v0[27] = v40;
    v0[28] = v38;
    v54 = (v0[14] + v22[230]);
    v55 = v54[3];
    v56 = v54[4];
    __swift_project_boxed_opaque_existential_1(v54, v55);
    v57 = *(v56 + 24);
    v70 = (v57 + *v57);
    v58 = v57[1];
    v59 = swift_task_alloc();
    v0[29] = v59;
    *v59 = v0;
    v59[1] = sub_25F142000;
    v60 = v0[23];

    return (v70)(v0 + 9, v60, v55, v56);
  }

  else
  {
    v62 = v0[18];
    v63 = v0[17];
    v41 = v0[13];
    v42 = v0[10];
    v61 = v0[11];
    v43 = v0[14] + v4;
    v44 = *(v6 + 20);
    v45 = type metadata accessor for PreviewAgentLaunchConfiguration(0);
    (*(v8 + 16))(v42 + v45[9], v43 + v44, v9);
    v46 = *(v7 + 24);
    v47 = sub_25F17773C();
    (*(*(v47 - 8) + 16))(v42, v43 + v46, v47);
    v48 = v42 + v45[6];
    sub_25F17737C();
    v49 = sub_25F17740C();
    v50 = (v42 + v45[5]);
    *v50 = 0xD00000000000004FLL;
    v50[1] = 0x800000025F183FC0;
    *(v42 + v45[7]) = v3;
    *(v42 + v45[8]) = v49;
    v51 = (v42 + v45[10]);
    *v51 = sub_25F144340;
    v51[1] = 0;
    *v61 = 1;

    v52 = v0[1];

    return v52();
  }
}

uint64_t sub_25F142000()
{
  v2 = *v1;
  v3 = *(*v1 + 232);
  v7 = *v1;
  *(*v1 + 240) = v0;

  if (v0)
  {
    v4 = *(v2 + 208);

    v5 = sub_25F1424F8;
  }

  else
  {
    v5 = sub_25F14211C;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_25F14211C()
{
  v1 = v0[9];
  v56 = v1;
  if (v1)
  {
    v2 = v0[18];
    v51 = v1;
    sub_25F17885C();
    v3 = sub_25F17887C();
    v4 = sub_25F17952C();
    v5 = os_log_type_enabled(v3, v4);
    v7 = v0[27];
    v6 = v0[28];
    v53 = v0[23];
    v9 = v0[20];
    v8 = v0[21];
    v10 = v0[18];
    v12 = v0[15];
    v11 = v0[16];
    if (v5)
    {
      v49 = v0[28];
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_25F0B3000, v3, v4, "Bootstrap method is running board identity", v13, 2u);
      MEMORY[0x25F8D6230](v13, -1, -1);

      v7(v10, v12);
      v49(v53, v9);
    }

    else
    {

      v7(v10, v12);
      v6(v53, v9);
    }

    v26 = 0;
    v27 = sub_25F144360;
  }

  else
  {
    v14 = v0[17];
    sub_25F17885C();
    v15 = sub_25F17887C();
    v16 = sub_25F17952C();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_25F0B3000, v15, v16, "Bootstrap method is legacy pid", v17, 2u);
      MEMORY[0x25F8D6230](v17, -1, -1);
    }

    v18 = v0[27];
    v54 = v0[28];
    v19 = v0[23];
    v20 = v0[20];
    v21 = v0[21];
    v23 = v0[16];
    v22 = v0[17];
    v24 = v0[15];
    v25 = v0[12];

    v18(v22, v24);
    v54(v19, v20);
    swift_retain_n();
    v26 = v0[12];
    v27 = sub_25F14A674;
  }

  v28 = v0[25];
  v45 = v0[26];
  v46 = v0[23];
  v29 = v0[21];
  v30 = v0[20];
  v47 = v0[22];
  v48 = v0[19];
  v50 = v0[18];
  v52 = v0[17];
  v55 = v27;
  v31 = v0[13];
  v32 = v0[10];
  v44 = v0[11];
  v33 = v0[14] + v0[24];
  v34 = *(v28 + 20);
  v35 = type metadata accessor for PreviewAgentLaunchConfiguration(0);
  (*(v29 + 16))(v32 + v35[9], v33 + v34, v30);
  v36 = *(v28 + 24);
  v37 = sub_25F17773C();
  (*(*(v37 - 8) + 16))(v32, v33 + v36, v37);
  v38 = v32 + v35[6];
  sub_25F17737C();
  v39 = sub_25F17740C();

  v40 = (v32 + v35[5]);
  *v40 = 0xD00000000000004FLL;
  v40[1] = 0x800000025F183FC0;
  *(v32 + v35[7]) = v45;
  *(v32 + v35[8]) = v39;
  v41 = (v32 + v35[10]);
  *v41 = v55;
  v41[1] = v26;
  *v44 = v56;

  v42 = v0[1];

  return v42();
}

uint64_t sub_25F1424F8()
{
  v1 = *(v0 + 176);
  v3 = *(v0 + 144);
  v2 = *(v0 + 152);
  v4 = *(v0 + 136);
  v5 = *(v0 + 168) + 8;
  (*(v0 + 224))(*(v0 + 184), *(v0 + 160));

  v6 = *(v0 + 8);
  v7 = *(v0 + 240);

  return v6();
}

uint64_t sub_25F1425B4(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, char a7)
{
  *(v7 + 33) = a7;
  *(v7 + 27) = a6;
  *(v7 + 56) = a4;
  *(v7 + 64) = a5;
  *(v7 + 48) = a3;
  v9 = sub_25F17741C();
  *(v7 + 72) = v9;
  v10 = *(v9 - 8);
  *(v7 + 80) = v10;
  v11 = *(v10 + 64) + 15;
  *(v7 + 88) = swift_task_alloc();
  *(v7 + 96) = swift_task_alloc();
  v12 = sub_25F17888C();
  *(v7 + 104) = v12;
  v13 = *(v12 - 8);
  *(v7 + 112) = v13;
  v14 = *(v13 + 64) + 15;
  *(v7 + 120) = swift_task_alloc();
  *(v7 + 128) = swift_task_alloc();
  *(v7 + 136) = swift_task_alloc();
  v15 = swift_task_alloc();
  v16 = *a2;
  *(v7 + 144) = v15;
  *(v7 + 152) = v16;

  return MEMORY[0x2822009F8](sub_25F142714, 0, 0);
}

uint64_t sub_25F142714()
{
  v84 = v0;
  v1 = *(v0 + 152);
  if (v1 == 1)
  {
    v6 = *(v0 + 136);
    v5 = *(v0 + 144);
    v8 = *(v0 + 120);
    v7 = *(v0 + 128);
    v10 = *(v0 + 88);
    v9 = *(v0 + 96);

    v11 = *(v0 + 8);
  }

  else
  {
    if (!v1)
    {
      v2 = *(*(v0 + 48) + 24);
      v3 = *(MEMORY[0x277D40550] + 4);
      v4 = swift_task_alloc();
      *(v0 + 160) = v4;
      *v4 = v0;
      v4[1] = sub_25F142DE8;

      return MEMORY[0x2821A0BA0](v0 + 28);
    }

    *(v0 + 176) = v1;
    v12 = *(v0 + 56);
    sub_25F14A470(v1);
    v13 = v1;
    v14 = *(sub_25F1773EC() + 16);

    if (v14)
    {
      v15 = *(v0 + 136);
      v17 = *(v0 + 88);
      v16 = *(v0 + 96);
      v18 = *(v0 + 72);
      v19 = *(v0 + 80);
      v20 = *(v0 + 56);
      sub_25F17885C();
      v21 = *(v19 + 16);
      v21(v16, v20, v18);
      v21(v17, v20, v18);
      v22 = sub_25F17887C();
      v23 = sub_25F17955C();
      v24 = os_log_type_enabled(v22, v23);
      v81 = *(v0 + 136);
      v25 = *(v0 + 104);
      v26 = *(v0 + 112);
      v28 = *(v0 + 88);
      v27 = *(v0 + 96);
      v29 = *(v0 + 72);
      v30 = *(v0 + 80);
      if (v24)
      {
        log = v22;
        v31 = swift_slowAlloc();
        v75 = swift_slowAlloc();
        v83[0] = v75;
        *v31 = 134349314;
        v74 = v23;
        v32 = *(sub_25F1773EC() + 16);

        v79 = v25;
        v33 = *(v30 + 8);
        v33(v27, v29);
        *(v31 + 4) = v32;
        *(v31 + 12) = 2080;
        v34 = *(sub_25F1773EC() + 16);

        v35 = v34 == 1;
        if (v34 == 1)
        {
          v36 = 0;
        }

        else
        {
          v36 = 115;
        }

        if (v35)
        {
          v37 = 0xE000000000000000;
        }

        else
        {
          v37 = 0xE100000000000000;
        }

        v33(v28, v29);
        v38 = sub_25F0BECF0(v36, v37, v83);

        *(v31 + 14) = v38;
        _os_log_impl(&dword_25F0B3000, log, v74, "Loading JIT symbols from %{public}ld target descriptions%s", v31, 0x16u);
        __swift_destroy_boxed_opaque_existential_1Tm(v75);
        MEMORY[0x25F8D6230](v75, -1, -1);
        MEMORY[0x25F8D6230](v31, -1, -1);

        v39 = *(v26 + 8);
        v39(v81, v79);
      }

      else
      {
        v49 = *(v30 + 8);
        v49(*(v0 + 96), *(v0 + 72));

        v49(v28, v29);
        v39 = *(v26 + 8);
        v39(v81, v25);
      }

      if (qword_27FD46800 != -1)
      {
        swift_once();
      }

      v50 = *(v0 + 33);
      v51 = *(v0 + 27);
      *(v0 + 184) = sub_25F0F5498(*(v0 + 64));
      v58 = *(v0 + 128);
      v59 = *(v0 + 64);
      sub_25F17885C();

      v60 = sub_25F17887C();
      v61 = sub_25F17955C();

      v62 = os_log_type_enabled(v60, v61);
      v63 = *(v0 + 128);
      v64 = *(v0 + 104);
      v82 = *(v0 + 112);
      if (v62)
      {
        loga = *(v0 + 128);
        v65 = *(v0 + 64);
        v80 = v50;
        v66 = swift_slowAlloc();
        v76 = v64;
        v67 = swift_slowAlloc();
        v83[0] = v67;
        *v66 = 136315138;
        *(v66 + 4) = sub_25F0BECF0(*(v65 + OBJC_IVAR____TtC15PreviewShellKit5Agent_jitBootstrapConnectionIdentifier), *(v65 + OBJC_IVAR____TtC15PreviewShellKit5Agent_jitBootstrapConnectionIdentifier + 8), v83);
        _os_log_impl(&dword_25F0B3000, v60, v61, "JITManager: Initializing for %s", v66, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v67);
        MEMORY[0x25F8D6230](v67, -1, -1);
        v68 = v66;
        v50 = v80;
        MEMORY[0x25F8D6230](v68, -1, -1);

        v70 = v76;
        v69 = loga;
      }

      else
      {

        v69 = v63;
        v70 = v64;
      }

      v39(v69, v70);
      v71 = *(v0 + 152) == 0;
      *(v0 + 16) = v1;
      *(v0 + 24) = v71;
      *(v0 + 25) = v51;
      *(v0 + 26) = v50;
      v72 = swift_task_alloc();
      *(v0 + 192) = v72;
      *v72 = v0;
      v72[1] = sub_25F143670;

      return sub_25F0F5848((v0 + 16), (v0 + 25));
    }

    v40 = *(v0 + 120);
    sub_25F17885C();
    v41 = sub_25F17887C();
    v42 = sub_25F17953C();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      *v43 = 0;
      _os_log_impl(&dword_25F0B3000, v41, v42, "No target descriptions provided in launch payload.", v43, 2u);
      MEMORY[0x25F8D6230](v43, -1, -1);
    }

    v44 = *(v0 + 152);
    v46 = *(v0 + 112);
    v45 = *(v0 + 120);
    v47 = *(v0 + 104);

    (*(v46 + 8))(v45, v47);
    sub_25F14A480();
    swift_allocError();
    *v48 = 0u;
    v48[1] = 0u;
    swift_willThrow();
    sub_25F0F26EC(v1, v44 == 0);
    sub_25F14A460(v44);
    v53 = *(v0 + 136);
    v52 = *(v0 + 144);
    v55 = *(v0 + 120);
    v54 = *(v0 + 128);
    v57 = *(v0 + 88);
    v56 = *(v0 + 96);

    v11 = *(v0 + 8);
  }

  return v11();
}