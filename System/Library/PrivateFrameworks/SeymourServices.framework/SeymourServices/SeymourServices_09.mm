uint64_t sub_226F82988(uint64_t a1, uint64_t a2)
{
  v25 = a1;
  v30 = sub_227669890();
  v26 = *(v30 - 8);
  v4 = *(v26 + 64);
  MEMORY[0x28223BE20](v30);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A830();
  sub_226E91B50(a2, v29);
  sub_226E9DD3C("CatalogDataStore::querySkillLevels", 34, 2, &dword_226E8E000, 0, v27);
  v7 = __swift_project_boxed_opaque_existential_0(v29, v29[3]);
  v8 = *v7;
  v9 = v7[1];
  v10 = *(v7 + 16);
  v11 = v7[3];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8F40, &qword_227672990);
  v13 = *(v12 + 48);
  v14 = *(v12 + 52);
  v15 = swift_allocObject();
  v16 = v8;
  v17 = v9;

  sub_22766A070();
  *(v15 + 16) = v16;
  *(v15 + 24) = v17;
  *(v15 + 32) = v10;
  *(v15 + 40) = v11;
  sub_226ED13FC(100);
  swift_setDeallocating();

  v18 = *(v15 + 40);

  v19 = qword_2813B2078;
  v20 = sub_22766A100();
  (*(*(v20 - 8) + 8))(v15 + v19, v20);
  v21 = *(*v15 + 48);
  v22 = *(*v15 + 52);
  swift_deallocClassInstance();
  if (v2)
  {
    __swift_project_boxed_opaque_existential_0(v27, v28);
    sub_227669930();
    swift_willThrow();
    v23 = v28;
    __swift_project_boxed_opaque_existential_0(v27, v28);
    sub_227669920();
  }

  else
  {
    sub_2276633A0();
    sub_226F89164(&unk_28139BCF8, MEMORY[0x277D4FF18]);
    v23 = sub_22766C5B0();

    __swift_project_boxed_opaque_existential_0(v27, v28);
    sub_227669930();
  }

  (*(v26 + 8))(v6, v30);
  __swift_destroy_boxed_opaque_existential_0(v27);
  __swift_destroy_boxed_opaque_existential_0(v29);
  return v23;
}

uint64_t sub_226F82D94(uint64_t a1, void *a2)
{
  v426 = a2;
  v3 = sub_2276624A0();
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3 - 8);
  v389 = v343 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v388 = v343 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8EF8, &qword_227672908);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v397 = v343 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8F00, &unk_227672910);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v396 = v343 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BB570, &unk_227670FC0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v395 = v343 - v16;
  v17 = sub_227662190();
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v394 = v343 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8F08, &qword_227672920);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20 - 8);
  v393 = v343 - v22;
  v400 = sub_2276645D0();
  v398 = *(v400 - 8);
  v23 = *(v398 + 64);
  v24 = MEMORY[0x28223BE20](v400);
  v392 = v343 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v401 = v343 - v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8F10, &qword_227672928);
  v28 = *(*(v27 - 8) + 64);
  v29 = MEMORY[0x28223BE20](v27 - 8);
  v391 = v343 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v409 = v343 - v31;
  v413 = sub_2276664D0();
  v412 = *(v413 - 8);
  v32 = *(v412 + 64);
  v33 = MEMORY[0x28223BE20](v413);
  v390 = v343 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = MEMORY[0x28223BE20](v33);
  v414 = v343 - v36;
  MEMORY[0x28223BE20](v35);
  v411 = v343 - v37;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8F18, &unk_227672930);
  v39 = *(*(v38 - 8) + 64);
  v40 = MEMORY[0x28223BE20](v38 - 8);
  v402 = v343 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v40);
  v408 = v343 - v42;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8F20, &qword_2276767D0);
  v44 = *(*(v43 - 8) + 64);
  v45 = MEMORY[0x28223BE20](v43 - 8);
  v405 = v343 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v45);
  v410 = v343 - v47;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8F28, qword_227672940);
  v49 = *(*(v48 - 8) + 64);
  MEMORY[0x28223BE20](v48 - 8);
  v406 = v343 - v50;
  v407 = sub_2276642E0();
  v399 = *(v407 - 8);
  v51 = *(v399 + 64);
  MEMORY[0x28223BE20](v407);
  v387 = v343 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  v421 = sub_22766B390();
  v423 = *(v421 - 8);
  v53 = *(v423 + 64);
  MEMORY[0x28223BE20](v421);
  v420 = (v343 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0));
  v55 = sub_227666B60();
  v56 = *(v55 - 8);
  v57 = *(v56 + 64);
  v58 = MEMORY[0x28223BE20](v55);
  v404 = v343 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = MEMORY[0x28223BE20](v58);
  v403 = v343 - v61;
  v62 = MEMORY[0x28223BE20](v60);
  v415 = v343 - v63;
  v64 = MEMORY[0x28223BE20](v62);
  v416 = v343 - v65;
  v66 = MEMORY[0x28223BE20](v64);
  v417 = (v343 - v67);
  v68 = MEMORY[0x28223BE20](v66);
  v424 = v343 - v69;
  v70 = MEMORY[0x28223BE20](v68);
  v428 = (v343 - v71);
  v72 = MEMORY[0x28223BE20](v70);
  v427 = v343 - v73;
  MEMORY[0x28223BE20](v72);
  v75 = v343 - v74;
  v76 = sub_227669890();
  v77 = *(v76 - 8);
  v78 = *(v77 + 64);
  MEMORY[0x28223BE20](v76);
  v80 = v343 - ((v79 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A830();
  sub_226E9DD3C("CatalogDataStore::queryCatalogWorkouts", 38, 2, &dword_226E8E000, 0, &v436);
  (*(v77 + 8))(v80, v76);
  v81 = *(a1 + 16);
  v432 = v55;
  v418 = a1;
  v419 = v56;
  v422 = v81;
  if (v81)
  {
    v82 = v56 + 16;
    v83 = *(v56 + 16);
    v84 = a1 + ((*(v56 + 80) + 32) & ~*(v56 + 80));
    v429 = *(v82 + 56);
    v430 = v83;
    v431 = v82;
    v85 = (v82 - 8);
    v86 = MEMORY[0x277D84F90];
    v83(v75, v84, v55);
    while (1)
    {
      v87 = sub_227666AD0();
      (*v85)(v75, v55);
      v88 = *(v87 + 16);
      v55 = *(v86 + 2);
      v89 = v55 + v88;
      if (__OFADD__(v55, v88))
      {
        break;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (!isUniquelyReferenced_nonNull_native || v89 > *(v86 + 3) >> 1)
      {
        if (v55 <= v89)
        {
          v91 = v55 + v88;
        }

        else
        {
          v91 = v55;
        }

        v86 = sub_226EB3F78(isUniquelyReferenced_nonNull_native, v91, 1, v86);
      }

      v55 = v432;
      if (*(v87 + 16))
      {
        if ((*(v86 + 3) >> 1) - *(v86 + 2) < v88)
        {
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          v182 = MEMORY[0x277D84F90];
LABEL_110:
          v190 = sub_226F3E6A8(v182);

          v191 = sub_226F7ADD4(v190);
          v192 = v426;
          v193 = v425;
          v194 = sub_226F8257C(v191, v426);
          if (v193)
          {

            v177 = &v415;
            goto LABEL_133;
          }

          v416 = v194;
          v425 = 0;

          v195 = __swift_project_boxed_opaque_existential_0(v192, v192[3]);
          v196 = *v195;
          v81 = v195[1];
          v197 = v420;
          sub_22766A730();
          sub_22766B370();
          (v384)(v197, v421);
          [v196 reset];
          [v81 reset];
          v198 = v422;
          if (v422)
          {
            v431 = *(v419 + 16);
            v81 = v418 + ((*(v419 + 80) + 32) & ~*(v419 + 80));
            v430 = *(v419 + 72);
            v147 = (v419 + 8);
            v199 = MEMORY[0x277D84F90];
            while (1)
            {
              v200 = v415;
              v431(v415, v81, v55);
              v145 = sub_227666AF0();
              (*v147)(v200, v55);
              v201 = *(v145 + 16);
              v125 = *(v199 + 2);
              v202 = v125 + v201;
              if (__OFADD__(v125, v201))
              {
                goto LABEL_221;
              }

              v203 = swift_isUniquelyReferenced_nonNull_native();
              if (!v203 || v202 > *(v199 + 3) >> 1)
              {
                if (v125 <= v202)
                {
                  v204 = v125 + v201;
                }

                else
                {
                  v204 = v125;
                }

                v199 = sub_226EB3F78(v203, v204, 1, v199);
              }

              v55 = v432;
              if (*(v145 + 16))
              {
                if ((*(v199 + 3) >> 1) - *(v199 + 2) < v201)
                {
                  goto LABEL_224;
                }

                swift_arrayInitWithCopy();

                if (v201)
                {
                  v205 = *(v199 + 2);
                  v93 = __OFADD__(v205, v201);
                  v206 = v205 + v201;
                  if (v93)
                  {
                    goto LABEL_225;
                  }

                  *(v199 + 2) = v206;
                }
              }

              else
              {

                if (v201)
                {
                  goto LABEL_222;
                }
              }

              v81 += v430;
              if (!--v198)
              {
                goto LABEL_131;
              }
            }
          }

LABEL_130:
          v199 = MEMORY[0x277D84F90];
LABEL_131:
          v207 = sub_226F3E6A8(v199);

          v208 = sub_226F7ADD4(v207);
          v209 = v426;
          v210 = v425;
          v211 = sub_226F82988(v208, v426);
          if (v210)
          {

            v177 = &v438;
            goto LABEL_133;
          }

          v381 = v211;
          v425 = 0;

          v214 = __swift_project_boxed_opaque_existential_0(v209, v209[3]);
          v215 = *v214;
          v216 = v214[1];
          v217 = v420;
          sub_22766A730();
          sub_22766B370();
          (v384)(v217, v421);
          [v215 reset];
          [v216 reset];
          v130 = MEMORY[0x277D84F90];
          v218 = v422;
          if (v422)
          {
            v435[0] = MEMORY[0x277D84F90];
            sub_226F1EF90(0, v422, 0);
            v130 = v435[0];
            v430 = *(v419 + 16);
            v219 = v418 + ((*(v419 + 80) + 32) & ~*(v419 + 80));
            v417 = *(v419 + 72);
            v431 = (v419 + 16);
            v220 = (v419 + 8);
            do
            {
              v221 = v428;
              v430(v428, v219, v55);
              v222 = sub_227666A50();
              v224 = v223;
              (*v220)(v221, v55);
              v435[0] = v130;
              v226 = *(v130 + 16);
              v225 = *(v130 + 24);
              if (v226 >= v225 >> 1)
              {
                sub_226F1EF90(v225 > 1, v226 + 1, 1);
                v130 = v435[0];
              }

              *(v130 + 16) = v226 + 1;
              v227 = v130 + 16 * v226;
              *(v227 + 32) = v222;
              *(v227 + 40) = v224;
              v219 += v417;
              --v218;
              v55 = v432;
            }

            while (v218);
LABEL_144:
            v209 = v426;
          }

          v228 = sub_226F3E6A8(v130);

          v229 = __swift_project_boxed_opaque_existential_0(v209, v209[3]);
          v230 = *v229;
          v231 = v229[1];
          v232 = *(v229 + 16);
          v233 = v229[3];
          v234 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8F30, &unk_22767F080);
          v235 = *(v234 + 48);
          v236 = *(v234 + 52);
          v81 = swift_allocObject();
          v125 = &qword_2813B2078;
          v237 = v230;
          v238 = v231;

          sub_22766A070();
          *(v81 + 16) = v237;
          *(v81 + 24) = v238;
          *(v81 + 32) = v232;
          *(v81 + 40) = v233;
          swift_getKeyPath();
          v435[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B94F0, &unk_227670BA0);
          v435[0] = v228;
          sub_226E99364(0, &qword_281398B40, 0x277CCA9C0);
          v382 = v228;

          v131 = sub_22766C820();
          sub_226E93170(v435, &v433, &unk_27D7BC990, &qword_227670A30);
          v239 = v434;
          if (!v434)
          {
            goto LABEL_150;
          }

          v240 = __swift_project_boxed_opaque_existential_0(&v433, v434);
          v241 = *(v239 - 8);
          v242 = *(v241 + 64);
          MEMORY[0x28223BE20](v240);
          v244 = v343 - ((v243 + 15) & 0xFFFFFFFFFFFFFFF0);
          (*(v241 + 16))(v244);
          v245 = sub_22766D170();
          (*(v241 + 8))(v244, v239);
          __swift_destroy_boxed_opaque_existential_0(&v433);
LABEL_151:
          v147 = v425;
          v246 = [objc_opt_self() expressionForConstantValue_];
          swift_unknownObjectRelease();
          [objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8F38 &qword_227672988))];

          sub_226E97D1C(v435, &unk_27D7BC990, &qword_227670A30);
          v247 = *v125;
          swift_beginAccess();
          v145 = sub_22766A080();
          v249 = v248;
          MEMORY[0x22AA985C0]();
          if (*((*v249 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v249 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            goto LABEL_227;
          }

          while (2)
          {
            sub_22766C3A0();
            (v145)(v435, 0);
            swift_endAccess();

            v250 = sub_2272355B8(100);
            if (v147)
            {

              swift_setDeallocating();

              v251 = *(v81 + 40);

              v252 = *v125;
              v253 = sub_22766A100();
              (*(*(v253 - 8) + 8))(v81 + v252, v253);
              v254 = *(*v81 + 48);
              v255 = *(*v81 + 52);
              swift_deallocClassInstance();
              goto LABEL_135;
            }

            v256 = v250;
            swift_setDeallocating();

            v257 = *(v81 + 40);

            v258 = *v125;
            v259 = sub_22766A100();
            (*(*(v259 - 8) + 8))(v81 + v258, v259);
            v260 = *(*v81 + 48);
            v261 = *(*v81 + 52);
            swift_deallocClassInstance();
            v262 = __swift_project_boxed_opaque_existential_0(v426, v426[3]);
            v263 = *v262;
            v264 = v262[1];
            v265 = v420;
            sub_22766A730();
            sub_22766B370();
            (v384)(v265, v421);
            [v263 reset];
            [v264 reset];
            v266 = v382 + 56;
            v267 = 1 << *(v382 + 32);
            if (v267 < 64)
            {
              v268 = ~(-1 << v267);
            }

            else
            {
              v268 = -1;
            }

            v125 = v268 & *(v382 + 56);
            v269 = (v267 + 63) >> 6;
            v426 = (v419 + 16);
            v428 = (v419 + 8);
            v375 = (v419 + 32);
            v385 = (v419 + 56);
            v423 = v256;
            v421 = (v256 + 56);
            v415 = (v412 + 16);
            v420 = (v412 + 32);
            v417 = (v412 + 8);
            v384 = (v412 + 56);
            v380 = (v419 + 48);
            v374 = (v412 + 48);
            v373 = (v398 + 48);
            v372 = (v398 + 32);
            v371 = (v398 + 16);
            v370 = (v398 + 8);
            v379 = (v399 + 56);
            v378 = (v399 + 48);
            v369 = (v399 + 32);

            v145 = 0;
            v81 = MEMORY[0x277D84F90];
            v377 = v266;
            v376 = v269;
            while (2)
            {
              v270 = v145;
              v271 = v418;
              v272 = v413;
              v273 = v410;
              if (v125)
              {
LABEL_159:
                v425 = v147;
                v145 = v270;
                v274 = v419;
LABEL_165:
                v275 = (*(v382 + 48) + ((v145 << 10) | (16 * __clz(__rbit64(v125)))));
                v276 = *v275;
                v430 = v275[1];
                v431 = v276;

                v147 = v422;
                if (v422)
                {
                  v398 = v125;
                  v277 = v271 + ((*(v274 + 80) + 32) & ~*(v274 + 80));
                  v278 = *(v274 + 72);
                  v279 = *(v274 + 16);
                  v280 = v432;
                  v281 = v403;
                  while (1)
                  {
                    v279(v281, v277, v280);
                    if (sub_227666A50() == v431 && v282 == v430)
                    {
                      break;
                    }

                    v283 = sub_22766D190();

                    if (v283)
                    {
                      goto LABEL_174;
                    }

                    v280 = v432;
                    (*v428)(v281, v432);
                    v277 += v278;
                    if (!--v147)
                    {
                      v284 = 1;
                      v272 = v413;
                      v273 = v410;
                      goto LABEL_175;
                    }
                  }

LABEL_174:
                  v285 = v281;
                  v273 = v410;
                  v280 = v432;
                  (*v375)(v410, v285, v432);
                  v284 = 0;
                  v272 = v413;
LABEL_175:
                  v125 = v398;
                }

                else
                {
                  v284 = 1;
                  v280 = v432;
                }

                v398 = (v125 - 1) & v125;
                (*v385)(v273, v284, 1, v280);
                v286 = 1 << *(v423 + 32);
                if (v286 < 64)
                {
                  v287 = ~(-1 << v286);
                }

                else
                {
                  v287 = -1;
                }

                v288 = v287 & *(v423 + 56);
                v289 = (v286 + 63) >> 6;

                v291 = 0;
                while (1)
                {
                  if (!v288)
                  {
                    while (1)
                    {
                      v125 = v291 + 1;
                      if (__OFADD__(v291, 1))
                      {
                        goto LABEL_223;
                      }

                      if (v125 >= v289)
                      {

                        v296 = 1;
                        goto LABEL_193;
                      }

                      v288 = *(v421 + 8 * v125);
                      ++v291;
                      if (v288)
                      {
                        goto LABEL_185;
                      }
                    }
                  }

                  v125 = v291;
LABEL_185:
                  v292 = v412;
                  v293 = v411;
                  (*(v412 + 16))(v411, *(v290 + 48) + *(v412 + 72) * (__clz(__rbit64(v288)) | (v125 << 6)), v272);
                  v147 = *(v292 + 32);
                  (v147)(v414, v293, v272);
                  if (sub_227666370() == v431 && v294 == v430)
                  {

                    goto LABEL_192;
                  }

                  v295 = sub_22766D190();

                  if (v295)
                  {
                    break;
                  }

                  v288 &= v288 - 1;
                  v272 = v413;
                  (*v417)(v414, v413);
                  v291 = v125;
                  v290 = v423;
                }

LABEL_192:
                v272 = v413;
                (v147)(v408, v414, v413);
                v296 = 0;
LABEL_193:
                v297 = v409;
                v298 = v408;
                v299 = (*v384)(v408, v296, 1, v272);
                v300 = v272;
                MEMORY[0x28223BE20](v299);
                v301 = v410;
                v341 = v410;
                v302 = v425;
                sub_227543A0C(sub_226F875CC, v429, v297);
                v425 = v302;
                v303 = v301;
                v304 = v405;
                sub_226E93170(v303, v405, &qword_27D7B8F20, &qword_2276767D0);
                v305 = v297;
                v306 = v432;
                if ((*v380)(v304, 1, v432) == 1)
                {

                  sub_226E97D1C(v305, &qword_27D7B8F10, &qword_227672928);
                  sub_226E97D1C(v298, &qword_27D7B8F18, &unk_227672930);
                  sub_226E97D1C(v304, &qword_27D7B8F20, &qword_2276767D0);
                  v272 = v300;
                  v273 = v410;
                  goto LABEL_200;
                }

                v307 = v404;
                (*v375)(v404, v304, v306);
                v308 = v402;
                sub_226E93170(v298, v402, &qword_27D7B8F18, &unk_227672930);
                v272 = v300;
                if ((*v374)(v308, 1, v300) == 1)
                {

                  sub_226E97D1C(v409, &qword_27D7B8F10, &qword_227672928);
                  sub_226E97D1C(v298, &qword_27D7B8F18, &unk_227672930);
                  sub_226E97D1C(v308, &qword_27D7B8F18, &unk_227672930);
                  (*v428)(v307, v306);
LABEL_199:
                  v273 = v410;
LABEL_200:
                  v313 = v406;
                  v314 = v407;
                  (*v379)(v406, 1, 1, v407);
                }

                else
                {
                  v309 = v390;
                  (*v420)(v390, v308, v272);
                  v310 = v409;
                  v311 = v391;
                  sub_226E93170(v409, v391, &qword_27D7B8F10, &qword_227672928);
                  v312 = v400;
                  if ((*v373)(v311, 1, v400) == 1)
                  {

                    (*v417)(v309, v272);
                    sub_226E97D1C(v310, &qword_27D7B8F10, &qword_227672928);
                    sub_226E97D1C(v408, &qword_27D7B8F18, &unk_227672930);
                    sub_226E97D1C(v311, &qword_27D7B8F10, &qword_227672928);
                    (*v428)(v404, v432);
                    goto LABEL_199;
                  }

                  v315 = (*v372)(v401, v311, v312);
                  MEMORY[0x28223BE20](v315);
                  v316 = v404;
                  v317 = v416;

                  v318 = v425;
                  v368 = sub_226F7AAEC(sub_226F875EC, v340, v317, MEMORY[0x277D53E10], sub_226ED62C0);
                  MEMORY[0x28223BE20](v368);
                  v319 = v386;

                  v367 = sub_226F7AAEC(sub_226F87648, v340, v319, MEMORY[0x277D53E88], sub_226F1F868);
                  MEMORY[0x28223BE20](v367);
                  v320 = v427;

                  v366 = sub_226F7AAEC(sub_226F876A4, v340, v320, MEMORY[0x277D4FE80], sub_226F1F6A8);
                  MEMORY[0x28223BE20](v366);
                  v321 = v381;

                  v365 = sub_226F7AAEC(sub_226F87700, v340, v321, MEMORY[0x277D4FF18], sub_226ED3590);
                  MEMORY[0x28223BE20](v365);
                  v322 = v424;

                  v364 = sub_226F7AAEC(sub_226F8775C, v340, v322, MEMORY[0x277D50278], sub_226F1F308);
                  MEMORY[0x28223BE20](v364);
                  v341 = v316;
                  v323 = v383;

                  v356 = sub_226F7AAEC(sub_226F877B8, v340, v323, MEMORY[0x277D53B20], sub_226F1F908);
                  v425 = v318;
                  v362 = sub_227666440();
                  v363 = sub_227666490();
                  v361 = sub_227666450();
                  v360 = sub_2276663E0();
                  v359 = sub_2276663F0();
                  v358 = sub_227666A70();
                  v357 = v324;
                  v352 = v325;
                  sub_227666410();
                  v355 = sub_2276663A0();
                  sub_227666A60();
                  sub_227666B40();
                  v354 = sub_227666B30();
                  v353 = sub_227666420();
                  v351 = sub_2276664C0();
                  v350 = v326;
                  v349 = sub_2276663B0();
                  v348 = sub_227666B50();
                  v347 = v327;
                  v344 = v328;
                  (*v371)(v392, v401, v312);
                  v346 = sub_227666460();
                  v345 = v329;
                  sub_227666400();
                  v343[5] = sub_227666390();
                  sub_2276664A0();
                  v330 = sub_227665DB0();
                  (*(*(v330 - 8) + 56))(v397, 1, 1, v330);
                  sub_227666380();
                  v343[4] = sub_227666470();
                  v343[3] = v331;
                  sub_2276663C0();
                  v343[2] = sub_2276664B0();
                  v343[1] = v332;
                  v343[0] = sub_227666480();
                  v334 = v333;
                  v335 = sub_2276663D0();
                  v336 = sub_227666B20();
                  v272 = v413;
                  v342 = v336;
                  v340[1] = v335;
                  v341 = v356;
                  v340[0] = v334;
                  v313 = v406;
                  sub_227664260();
                  (*v370)(v401, v400);
                  (*v417)(v309, v272);
                  sub_226E97D1C(v409, &qword_27D7B8F10, &qword_227672928);
                  sub_226E97D1C(v408, &qword_27D7B8F18, &unk_227672930);
                  v314 = v407;
                  (*v379)(v313, 0, 1, v407);
                  (*v428)(v316, v432);
                  v273 = v410;
                }

                sub_226E97D1C(v273, &qword_27D7B8F20, &qword_2276767D0);
                if ((*v378)(v313, 1, v314) != 1)
                {
                  v337 = *v369;
                  (*v369)(v387, v313, v314);
                  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                  {
                    v81 = sub_2273A5274(0, *(v81 + 16) + 1, 1, v81);
                  }

                  v339 = *(v81 + 16);
                  v338 = *(v81 + 24);
                  if (v339 >= v338 >> 1)
                  {
                    v81 = sub_2273A5274(v338 > 1, v339 + 1, 1, v81);
                  }

                  *(v81 + 16) = v339 + 1;
                  v337((v81 + ((*(v399 + 80) + 32) & ~*(v399 + 80)) + *(v399 + 72) * v339), v387, v407);
                  v147 = v425;
                  v266 = v377;
                  v269 = v376;
                  v125 = v398;
                  continue;
                }

                sub_226E97D1C(v313, &qword_27D7B8F28, qword_227672940);
                v270 = v145;
                v147 = v425;
                v266 = v377;
                v269 = v376;
                v125 = v398;
                v271 = v418;
                if (v398)
                {
                  goto LABEL_159;
                }
              }

              break;
            }

            v274 = v419;
            while (1)
            {
              v145 = v270 + 1;
              if (__OFADD__(v270, 1))
              {
                break;
              }

              if (v145 >= v269)
              {

                __swift_project_boxed_opaque_existential_0(&v436, v437);
                sub_227669930();
                __swift_destroy_boxed_opaque_existential_0(&v436);
                return v81;
              }

              v125 = *(v266 + 8 * v145);
              ++v270;
              if (v125)
              {
                v425 = v147;
                goto LABEL_165;
              }
            }

LABEL_226:
            __break(1u);
LABEL_227:
            sub_22766C360();
            continue;
          }
        }

        swift_arrayInitWithCopy();

        if (v88)
        {
          v92 = *(v86 + 2);
          v93 = __OFADD__(v92, v88);
          v94 = v92 + v88;
          if (v93)
          {
            goto LABEL_108;
          }

          *(v86 + 2) = v94;
        }
      }

      else
      {

        if (v88)
        {
          goto LABEL_87;
        }
      }

      v84 += v429;
      if (!--v81)
      {
        goto LABEL_19;
      }

      v430(v75, v84, v55);
    }

    __break(1u);
LABEL_87:
    __break(1u);
    goto LABEL_88;
  }

  v86 = MEMORY[0x277D84F90];
LABEL_19:
  v95 = sub_226F3E6A8(v86);

  v96 = *(v95 + 16);
  if (v96)
  {
    v97 = sub_2274CD6BC(*(v95 + 16), 0);
    v98 = sub_2274CDE20(v435, v97 + 4, v96, v95);
    sub_226EBB21C();
    if (v98 == v96)
    {
      goto LABEL_23;
    }

    __break(1u);
  }

  v97 = MEMORY[0x277D84F90];
LABEL_23:
  v99 = v426;
  v100 = v425;
  v101 = sub_226F7F05C(v97, v426);
  if (!v100)
  {
    v386 = v101;
    v425 = 0;
    v81 = 0x29287465736572;

    v102 = __swift_project_boxed_opaque_existential_0(v99, v99[3]);
    v103 = *v102;
    v104 = v102[1];
    v105 = v420;
    sub_22766A730();
    v385 = "outs(_:age:handle:)";
    sub_22766B370();
    v106 = *(v423 + 8);
    v423 += 8;
    v384 = v106;
    (v106)(v105, v421);
    [v103 reset];
    [v104 reset];
    v107 = MEMORY[0x277D84F90];
    v108 = v422;
    if (v422)
    {
      v435[0] = MEMORY[0x277D84F90];
      sub_226F1EF90(0, v422, 0);
      v107 = v435[0];
      v430 = *(v419 + 16);
      v109 = v418 + ((*(v419 + 80) + 32) & ~*(v419 + 80));
      v429 = *(v419 + 72);
      v431 = (v419 + 16);
      v110 = (v419 + 8);
      do
      {
        v111 = v428;
        v112 = v432;
        v430(v428, v109, v432);
        v113 = sub_227666A90();
        v115 = v114;
        (*v110)(v111, v112);
        v435[0] = v107;
        v81 = *(v107 + 16);
        v116 = *(v107 + 24);
        if (v81 >= v116 >> 1)
        {
          sub_226F1EF90(v116 > 1, v81 + 1, 1);
          v107 = v435[0];
        }

        *(v107 + 16) = v81 + 1;
        v117 = v107 + 16 * v81;
        *(v117 + 32) = v113;
        *(v117 + 40) = v115;
        v109 += v429;
        --v108;
      }

      while (v108);
      v55 = v432;
    }

    v118 = v426;
    v119 = v425;
    v120 = sub_226F803A8(v107, 0, 1, v426);
    if (!v119)
    {
      v429 = v120;
      v425 = 0;

      v121 = __swift_project_boxed_opaque_existential_0(v118, v118[3]);
      v122 = *v121;
      v123 = v121[1];
      v124 = v420;
      sub_22766A730();
      sub_22766B370();
      (v384)(v124, v421);
      [v122 reset];
      [v123 reset];
      v125 = v422;
      if (v422)
      {
        v431 = *(v419 + 16);
        v126 = v418 + ((*(v419 + 80) + 32) & ~*(v419 + 80));
        v430 = *(v419 + 72);
        v127 = (v419 + 8);
        v128 = MEMORY[0x277D84F90];
        while (1)
        {
          v129 = v427;
          v431(v427, v126, v55);
          v130 = sub_227666AE0();
          (*v127)(v129, v55);
          v131 = *(v130 + 16);
          v81 = *(v128 + 2);
          v55 = &v131[v81];
          if (__OFADD__(v81, v131))
          {
            break;
          }

          v132 = swift_isUniquelyReferenced_nonNull_native();
          if (!v132 || v55 > *(v128 + 3) >> 1)
          {
            if (v81 <= v55)
            {
              v133 = &v131[v81];
            }

            else
            {
              v133 = v81;
            }

            v128 = sub_226EB3F78(v132, v133, 1, v128);
          }

          v55 = v432;
          if (*(v130 + 16))
          {
            if ((*(v128 + 3) >> 1) - *(v128 + 2) < v131)
            {
              __break(1u);
              goto LABEL_144;
            }

            swift_arrayInitWithCopy();

            if (v131)
            {
              v134 = *(v128 + 2);
              v93 = __OFADD__(v134, v131);
              v135 = &v131[v134];
              if (v93)
              {
                __break(1u);
LABEL_148:
                __break(1u);
LABEL_149:
                __break(1u);
LABEL_150:
                v245 = 0;
                goto LABEL_151;
              }

              *(v128 + 2) = v135;
            }
          }

          else
          {

            if (v131)
            {
              goto LABEL_129;
            }
          }

          v126 += v430;
          if (!--v125)
          {
            goto LABEL_49;
          }
        }

        __break(1u);
LABEL_129:
        __break(1u);
        goto LABEL_130;
      }

      v128 = MEMORY[0x277D84F90];
LABEL_49:
      v136 = sub_226F3E6A8(v128);

      v137 = sub_226F7ADD4(v136);
      v138 = v426;
      v139 = v425;
      v140 = sub_226F80E80(v137, v426);
      if (v139)
      {
      }

      else
      {
        v427 = v140;
        v425 = 0;

        v141 = __swift_project_boxed_opaque_existential_0(v138, v138[3]);
        v142 = *v141;
        v143 = v141[1];
        v144 = v420;
        sub_22766A730();
        sub_22766B370();
        (v384)(v144, v421);
        [v142 reset];
        [v143 reset];
        v145 = v422;
        if (v422)
        {
          v431 = *(v419 + 16);
          v146 = v418 + ((*(v419 + 80) + 32) & ~*(v419 + 80));
          v430 = *(v419 + 72);
          v147 = (v419 + 8);
          v81 = MEMORY[0x277D84F90];
          while (1)
          {
            v148 = v424;
            v431(v424, v146, v55);
            v149 = sub_227666A80();
            (*v147)(v148, v55);
            v131 = *(v149 + 16);
            v125 = *(v81 + 16);
            v150 = &v131[v125];
            if (__OFADD__(v125, v131))
            {
              goto LABEL_148;
            }

            v151 = swift_isUniquelyReferenced_nonNull_native();
            if (!v151 || v150 > *(v81 + 24) >> 1)
            {
              if (v125 <= v150)
              {
                v152 = &v131[v125];
              }

              else
              {
                v152 = v125;
              }

              v81 = sub_226EB3F78(v151, v152, 1, v81);
            }

            v55 = v432;
            if (*(v149 + 16))
            {
              if ((*(v81 + 24) >> 1) - *(v81 + 16) < v131)
              {
                __break(1u);
LABEL_212:
                __break(1u);
LABEL_213:
                __break(1u);
LABEL_214:
                __break(1u);
LABEL_215:
                __break(1u);
LABEL_216:
                __break(1u);
LABEL_217:
                __break(1u);
LABEL_218:
                __break(1u);
LABEL_219:
                __break(1u);
LABEL_220:
                __break(1u);
LABEL_221:
                __break(1u);
LABEL_222:
                __break(1u);
LABEL_223:
                __break(1u);
LABEL_224:
                __break(1u);
LABEL_225:
                __break(1u);
                goto LABEL_226;
              }

              swift_arrayInitWithCopy();

              if (v131)
              {
                v153 = *(v81 + 16);
                v93 = __OFADD__(v153, v131);
                v154 = &v131[v153];
                if (v93)
                {
                  goto LABEL_212;
                }

                *(v81 + 16) = v154;
              }
            }

            else
            {

              if (v131)
              {
                goto LABEL_149;
              }
            }

            v146 += v430;
            if (!--v145)
            {
              goto LABEL_68;
            }
          }
        }

        v81 = MEMORY[0x277D84F90];
LABEL_68:
        v155 = sub_226F3E6A8(v81);

        v156 = sub_226F7ADD4(v155);
        v157 = v426;
        v158 = v425;
        v159 = sub_226F8128C(v156, v426);
        if (!v158)
        {
          v424 = v159;
          v425 = 0;

          v160 = __swift_project_boxed_opaque_existential_0(v157, v157[3]);
          v161 = *v160;
          v81 = v160[1];
          v162 = v420;
          sub_22766A730();
          sub_22766B370();
          (v384)(v162, v421);
          [v161 reset];
          [v81 reset];
          v163 = v422;
          if (v422)
          {
            v431 = *(v419 + 16);
            v81 = v418 + ((*(v419 + 80) + 32) & ~*(v419 + 80));
            v430 = *(v419 + 72);
            v147 = (v419 + 8);
            v164 = MEMORY[0x277D84F90];
            while (1)
            {
              v165 = v417;
              v431(v417, v81, v55);
              v145 = sub_227666AA0();
              (*v147)(v165, v55);
              v166 = *(v145 + 16);
              v125 = *(v164 + 2);
              v167 = v125 + v166;
              if (__OFADD__(v125, v166))
              {
                goto LABEL_213;
              }

              v168 = swift_isUniquelyReferenced_nonNull_native();
              if (!v168 || v167 > *(v164 + 3) >> 1)
              {
                if (v125 <= v167)
                {
                  v169 = v125 + v166;
                }

                else
                {
                  v169 = v125;
                }

                v164 = sub_226EB3F78(v168, v169, 1, v164);
              }

              v55 = v432;
              if (*(v145 + 16))
              {
                if ((*(v164 + 3) >> 1) - *(v164 + 2) < v166)
                {
                  goto LABEL_215;
                }

                swift_arrayInitWithCopy();

                if (v166)
                {
                  v170 = *(v164 + 2);
                  v93 = __OFADD__(v170, v166);
                  v171 = v170 + v166;
                  if (v93)
                  {
                    goto LABEL_216;
                  }

                  *(v164 + 2) = v171;
                }
              }

              else
              {

                if (v166)
                {
                  goto LABEL_214;
                }
              }

              v81 += v430;
              if (!--v163)
              {
                goto LABEL_89;
              }
            }
          }

LABEL_88:
          v164 = MEMORY[0x277D84F90];
LABEL_89:
          v172 = sub_226F3E6A8(v164);

          v173 = sub_226F7ADD4(v172);
          v174 = v426;
          v175 = v425;
          v176 = sub_226F81AA4(v173, 0, 1, v426);
          if (!v175)
          {
            v383 = v176;
            v425 = 0;

            v178 = __swift_project_boxed_opaque_existential_0(v174, v174[3]);
            v179 = *v178;
            v81 = v178[1];
            v180 = v420;
            sub_22766A730();
            sub_22766B370();
            (v384)(v180, v421);
            [v179 reset];
            [v81 reset];
            v181 = v422;
            if (v422)
            {
              v431 = *(v419 + 16);
              v81 = v418 + ((*(v419 + 80) + 32) & ~*(v419 + 80));
              v430 = *(v419 + 72);
              v147 = (v419 + 8);
              v182 = MEMORY[0x277D84F90];
              while (1)
              {
                v183 = v416;
                v431(v416, v81, v55);
                v145 = sub_227666AC0();
                (*v147)(v183, v55);
                v184 = *(v145 + 16);
                v125 = *(v182 + 2);
                v185 = v125 + v184;
                if (__OFADD__(v125, v184))
                {
                  goto LABEL_217;
                }

                v186 = swift_isUniquelyReferenced_nonNull_native();
                if (!v186 || v185 > *(v182 + 3) >> 1)
                {
                  if (v125 <= v185)
                  {
                    v187 = v125 + v184;
                  }

                  else
                  {
                    v187 = v125;
                  }

                  v182 = sub_226EB3F78(v186, v187, 1, v182);
                }

                v55 = v432;
                if (*(v145 + 16))
                {
                  if ((*(v182 + 3) >> 1) - *(v182 + 2) < v184)
                  {
                    goto LABEL_219;
                  }

                  swift_arrayInitWithCopy();

                  if (v184)
                  {
                    v188 = *(v182 + 2);
                    v93 = __OFADD__(v188, v184);
                    v189 = v188 + v184;
                    if (v93)
                    {
                      goto LABEL_220;
                    }

                    *(v182 + 2) = v189;
                  }
                }

                else
                {

                  if (v184)
                  {
                    goto LABEL_218;
                  }
                }

                v81 += v430;
                if (!--v181)
                {
                  goto LABEL_110;
                }
              }
            }

            goto LABEL_109;
          }

          v177 = &v439;
LABEL_133:
          v212 = *(v177 - 32);
          goto LABEL_134;
        }
      }
    }

LABEL_134:

    goto LABEL_135;
  }

LABEL_135:
  __swift_project_boxed_opaque_existential_0(&v436, v437);
  sub_227669930();
  __swift_destroy_boxed_opaque_existential_0(&v436);
  return v81;
}

char *sub_226F8616C(uint64_t a1, uint64_t a2)
{
  v58 = sub_227669890();
  v51 = *(v58 - 8);
  v4 = *(v51 + 64);
  MEMORY[0x28223BE20](v58);
  v6 = &v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A830();
  sub_226E91B50(a2, v57);
  v50 = v6;
  sub_226E9DD3C("CatalogDataStore::queryCatalogWorkoutReferencesMediaTypes", 57, 2, &dword_226E8E000, 0, v55);
  v7 = __swift_project_boxed_opaque_existential_0(v57, v57[3]);
  v8 = *v7;
  v9 = v7[1];
  LOBYTE(v6) = *(v7 + 16);
  v10 = v7[3];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8FC0, qword_22767B370);
  v12 = *(v11 + 48);
  v13 = *(v11 + 52);
  v14 = swift_allocObject();
  v15 = v8;
  v16 = v9;

  v17 = MEMORY[0x277D84F90];
  sub_22766A070();
  *(v14 + 16) = v15;
  *(v14 + 24) = v16;
  *(v14 + 32) = v6;
  *(v14 + 40) = v10;
  swift_getKeyPath();
  v18 = *(a1 + 16);
  if (v18)
  {
    v54[0] = v17;
    sub_226F1EFF0(0, v18, 0);
    v17 = v54[0];
    v19 = (a1 + 32);
    do
    {
      v20 = *v19++;
      v21 = sub_227664C10();
      v54[0] = v17;
      v24 = *(v17 + 16);
      v23 = *(v17 + 24);
      if (v24 >= v23 >> 1)
      {
        v48 = v21;
        v47 = v22;
        sub_226F1EFF0((v23 > 1), v24 + 1, 1);
        v22 = v47;
        v21 = v48;
        v17 = v54[0];
      }

      *(v17 + 16) = v24 + 1;
      v25 = v17 + 16 * v24;
      *(v25 + 32) = v21;
      *(v25 + 40) = v22;
      --v18;
    }

    while (v18);
  }

  v54[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8470, qword_227677CA0);
  v54[0] = v17;
  sub_226E99364(0, &qword_281398B40, 0x277CCA9C0);

  v26 = sub_22766C820();
  sub_226E93170(v54, v52, &unk_27D7BC990, &qword_227670A30);
  v27 = v53;
  if (v53)
  {
    v28 = __swift_project_boxed_opaque_existential_0(v52, v53);
    v29 = *(v27 - 8);
    v30 = *(v29 + 64);
    MEMORY[0x28223BE20](v28);
    v32 = &v47 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v29 + 16))(v32);
    v33 = sub_22766D170();
    (*(v29 + 8))(v32, v27);
    __swift_destroy_boxed_opaque_existential_0(v52);
  }

  else
  {
    v33 = 0;
  }

  v34 = [objc_opt_self() expressionForConstantValue_];
  swift_unknownObjectRelease();
  [objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BB900 &unk_22767CDD0))];

  sub_226E97D1C(v54, &unk_27D7BC990, &qword_227670A30);
  swift_beginAccess();
  v35 = sub_22766A080();
  v37 = v36;
  MEMORY[0x22AA985C0]();
  if (*((*v37 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v37 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v46 = *((*v37 & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_22766C360();
  }

  sub_22766C3A0();
  v35(v54, 0);
  swift_endAccess();

  v38 = v49;
  v39 = sub_226EE010C(100);
  swift_setDeallocating();

  v40 = *(v14 + 40);

  v41 = qword_2813B2078;
  v42 = sub_22766A100();
  (*(*(v42 - 8) + 8))(v14 + v41, v42);
  v43 = *(*v14 + 48);
  v44 = *(*v14 + 52);
  swift_deallocClassInstance();
  __swift_project_boxed_opaque_existential_0(v55, v56);
  sub_227669930();
  if (v38)
  {
    swift_willThrow();
    __swift_project_boxed_opaque_existential_0(v55, v56);
    sub_227669920();
  }

  (*(v51 + 8))(v50, v58);
  __swift_destroy_boxed_opaque_existential_0(v55);
  __swift_destroy_boxed_opaque_existential_0(v57);
  return v39;
}

void *sub_226F86808(char a1, void *a2)
{
  v5 = sub_22766B390();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A770();
  sub_22766B370();
  v10 = *(v6 + 8);
  v10(v9, v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9070, &qword_227672CE0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_227670CD0;
  *(inited + 32) = a1;
  v12 = sub_226F8616C(inited, a2);
  swift_setDeallocating();
  if (!v2)
  {
    v13 = __swift_project_boxed_opaque_existential_0(a2, a2[3]);
    v14 = *v13;
    v15 = v13[1];
    sub_22766A730();
    sub_22766B370();
    v10(v9, v5);
    [v14 reset];
    [v15 reset];
    v16 = *(v12 + 2);
    if (v16)
    {
      v17 = sub_2274CD7E0(*(v12 + 2), 0);
      v18 = *(sub_227666B60() - 8);
      v19 = sub_2274CDF78(&v21, (v17 + ((*(v18 + 80) + 32) & ~*(v18 + 80))), v16, v12);
      sub_226EBB21C();
      if (v19 == v16)
      {
LABEL_6:
        a2 = sub_226F82D94(v17, a2);

        return a2;
      }

      __break(1u);
    }

    v17 = MEMORY[0x277D84F90];
    goto LABEL_6;
  }

  return a2;
}

uint64_t sub_226F86AB0(uint64_t a1, uint64_t a2)
{
  v47 = sub_227669890();
  v40 = *(v47 - 8);
  v4 = *(v40 + 64);
  MEMORY[0x28223BE20](v47);
  v6 = v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A830();
  sub_226E91B50(a2, v46);
  sub_226E9DD3C("CatalogDataStore::queryCatalogWorkoutReferencesIdentifiers", 58, 2, &dword_226E8E000, 0, v44);
  v7 = __swift_project_boxed_opaque_existential_0(v46, v46[3]);
  v8 = *v7;
  v9 = v7[1];
  v10 = *(v7 + 16);
  v11 = v7[3];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8FC0, qword_22767B370);
  v13 = *(v12 + 48);
  v14 = *(v12 + 52);
  v15 = swift_allocObject();
  v16 = v8;
  v17 = v9;

  sub_22766A070();
  *(v15 + 16) = v16;
  *(v15 + 24) = v17;
  *(v15 + 32) = v10;
  *(v15 + 40) = v11;
  swift_getKeyPath();
  v39[0] = a1;
  v18 = sub_227073F2C(a1);
  v43[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8470, qword_227677CA0);
  v43[0] = v18;
  sub_226E99364(0, &qword_281398B40, 0x277CCA9C0);

  v19 = sub_22766C820();
  sub_226E93170(v43, v41, &unk_27D7BC990, &qword_227670A30);
  v20 = v42;
  if (v42)
  {
    v21 = __swift_project_boxed_opaque_existential_0(v41, v42);
    v22 = *(v20 - 8);
    v23 = *(v22 + 64);
    MEMORY[0x28223BE20](v21);
    v25 = v39 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v22 + 16))(v25);
    v26 = sub_22766D170();
    (*(v22 + 8))(v25, v20);
    __swift_destroy_boxed_opaque_existential_0(v41);
  }

  else
  {
    v26 = 0;
  }

  v27 = [objc_opt_self() expressionForConstantValue_];
  swift_unknownObjectRelease();
  [objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BB900 &unk_22767CDD0))];

  sub_226E97D1C(v43, &unk_27D7BC990, &qword_227670A30);
  swift_beginAccess();
  v28 = sub_22766A080();
  v30 = v29;
  MEMORY[0x22AA985C0]();
  if (*((*v30 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v30 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_22766C360();
  }

  sub_22766C3A0();
  v28(v43, 0);
  swift_endAccess();

  v31 = v39[1];
  sub_226EE010C(100);
  swift_setDeallocating();

  v32 = *(v15 + 40);

  v33 = qword_2813B2078;
  v34 = sub_22766A100();
  (*(*(v34 - 8) + 8))(v15 + v33, v34);
  v35 = *(*v15 + 48);
  v36 = *(*v15 + 52);
  swift_deallocClassInstance();
  if (v31)
  {
    __swift_project_boxed_opaque_existential_0(v44, v45);
    sub_227669930();
    swift_willThrow();
    v37 = v45;
    __swift_project_boxed_opaque_existential_0(v44, v45);
    sub_227669920();
  }

  else
  {
    sub_227666B60();
    sub_226F89164(&qword_28139B5D8, MEMORY[0x277D52828]);
    v37 = sub_22766C5B0();

    __swift_project_boxed_opaque_existential_0(v44, v45);
    sub_227669930();
  }

  (*(v40 + 8))(v6, v47);
  __swift_destroy_boxed_opaque_existential_0(v44);
  __swift_destroy_boxed_opaque_existential_0(v46);
  return v37;
}

uint64_t sub_226F87158(uint64_t a1, uint64_t *a2, char a3, void *a4)
{
  v67 = a2;
  v7 = sub_227666330();
  v66 = *(v7 - 8);
  v8 = *(v66 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = (v57 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = sub_22766B390();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = v57 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A770();
  sub_22766B370();
  v18 = *(v12 + 8);
  v17 = v12 + 8;
  v16 = v18;
  v18(v15, v11);
  v19 = a3 & 1;
  v20 = v68;
  v21 = a4;
  v22 = sub_226F7F468(a1, v67, v19, a4);
  if (!v20)
  {
    v23 = v22;
    v67 = v10;
    v68 = v7;
    v62 = 0;
    v24 = __swift_project_boxed_opaque_existential_0(v21, v21[3]);
    v63 = v16;
    v25 = v15;
    v26 = *v24;
    v27 = v24[1];
    sub_22766A730();
    v60 = "outs(_:age:handle:)";
    sub_22766B370();
    v61 = v25;
    v28 = v25;
    v29 = v63;
    v63(v28, v11);
    [v26 reset];
    [v27 reset];
    v30 = *(v23 + 16);
    if (v30)
    {
      v57[2] = v17;
      v58 = v11;
      v59 = v21;
      v69 = MEMORY[0x277D84F90];
      sub_226F1EF90(0, v30, 0);
      v31 = v23;
      v32 = v69;
      v33 = v67;
      v35 = v66 + 16;
      v34 = *(v66 + 16);
      v36 = *(v66 + 80);
      v57[1] = v31;
      v37 = v31 + ((v36 + 32) & ~v36);
      v65 = *(v66 + 72);
      v66 = v34;
      v64 = (v35 - 8);
      v38 = v68;
      do
      {
        v39 = v35;
        (v66)(v33, v37, v38);
        v40 = sub_227666310();
        v38 = v68;
        v41 = v40;
        v43 = v42;
        (*v64)(v33, v68);
        v69 = v32;
        v45 = *(v32 + 16);
        v44 = *(v32 + 24);
        if (v45 >= v44 >> 1)
        {
          sub_226F1EF90(v44 > 1, v45 + 1, 1);
          v38 = v68;
          v32 = v69;
        }

        *(v32 + 16) = v45 + 1;
        v46 = v32 + 16 * v45;
        *(v46 + 32) = v41;
        *(v46 + 40) = v43;
        v37 += v65;
        --v30;
        v35 = v39;
        v33 = v67;
      }

      while (v30);

      v11 = v58;
      v21 = v59;
      v29 = v63;
    }

    else
    {

      v32 = MEMORY[0x277D84F90];
    }

    v47 = v62;
    v48 = sub_226F86AB0(v32, v21);
    a1 = v47;
    if (!v47)
    {
      v49 = v48;

      v50 = __swift_project_boxed_opaque_existential_0(v21, v21[3]);
      v51 = v11;
      v52 = *v50;
      v53 = v50[1];
      v54 = v29;
      v55 = v61;
      sub_22766A730();
      sub_22766B370();
      v54(v55, v51);
      [v52 reset];
      [v53 reset];
      a1 = sub_226F82D94(v49, v21);
    }
  }

  return a1;
}

uint64_t sub_226F87830(void *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_22766D190() & 1;
  }
}

char *sub_226F87894(uint64_t a1)
{
  v29 = sub_227669890();
  v25 = *(v29 - 8);
  v3 = *(v25 + 64);
  MEMORY[0x28223BE20](v29);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A830();
  sub_226E91B50(a1, v28);
  sub_226E9DD3C("CatalogDataStore::queryAllCatalogProgramReferences", 50, 2, &dword_226E8E000, 0, v26);
  v6 = __swift_project_boxed_opaque_existential_0(v28, v28[3]);
  v7 = *v6;
  v8 = v6[1];
  v9 = *(v6 + 16);
  v10 = v6[3];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9008, &unk_227672BC0);
  v12 = *(v11 + 48);
  v13 = *(v11 + 52);
  v14 = swift_allocObject();
  v15 = v7;
  v16 = v8;

  sub_22766A070();
  *(v14 + 16) = v15;
  *(v14 + 24) = v16;
  *(v14 + 32) = v9;
  *(v14 + 40) = v10;
  v17 = sub_226EE12F0(100);
  swift_setDeallocating();

  v18 = *(v14 + 40);

  v19 = qword_2813B2078;
  v20 = sub_22766A100();
  (*(*(v20 - 8) + 8))(v14 + v19, v20);
  v21 = *(*v14 + 48);
  v22 = *(*v14 + 52);
  swift_deallocClassInstance();
  __swift_project_boxed_opaque_existential_0(v26, v27);
  sub_227669930();
  if (v1)
  {
    swift_willThrow();
    __swift_project_boxed_opaque_existential_0(v26, v27);
    sub_227669920();
  }

  (*(v25 + 8))(v5, v29);
  __swift_destroy_boxed_opaque_existential_0(v26);
  __swift_destroy_boxed_opaque_existential_0(v28);
  return v17;
}

char *sub_226F87C04(uint64_t a1)
{
  v29 = sub_227669890();
  v25 = *(v29 - 8);
  v3 = *(v25 + 64);
  MEMORY[0x28223BE20](v29);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A830();
  sub_226E91B50(a1, v28);
  sub_226E9DD3C("CatalogDataStore::queryAllBodyFocuses", 37, 2, &dword_226E8E000, 0, v26);
  v6 = __swift_project_boxed_opaque_existential_0(v28, v28[3]);
  v7 = *v6;
  v8 = v6[1];
  v9 = *(v6 + 16);
  v10 = v6[3];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8F48, &qword_227672998);
  v12 = *(v11 + 48);
  v13 = *(v11 + 52);
  v14 = swift_allocObject();
  v15 = v7;
  v16 = v8;

  sub_22766A070();
  *(v14 + 16) = v15;
  *(v14 + 24) = v16;
  *(v14 + 32) = v9;
  *(v14 + 40) = v10;
  v17 = sub_226ED85A4(100);
  swift_setDeallocating();

  v18 = *(v14 + 40);

  v19 = qword_2813B2078;
  v20 = sub_22766A100();
  (*(*(v20 - 8) + 8))(v14 + v19, v20);
  v21 = *(*v14 + 48);
  v22 = *(*v14 + 52);
  swift_deallocClassInstance();
  __swift_project_boxed_opaque_existential_0(v26, v27);
  sub_227669930();
  if (v1)
  {
    swift_willThrow();
    __swift_project_boxed_opaque_existential_0(v26, v27);
    sub_227669920();
  }

  (*(v25 + 8))(v5, v29);
  __swift_destroy_boxed_opaque_existential_0(v26);
  __swift_destroy_boxed_opaque_existential_0(v28);
  return v17;
}

uint64_t sub_226F87F74(uint64_t a1)
{
  v77 = sub_227669890();
  v3 = *(v77 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v77);
  v6 = &v62 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A830();
  sub_226E91B50(a1, v76);
  sub_226E9DD3C("CatalogDataStore::queryCatalogModalityKinds", 43, 2, &dword_226E8E000, 0, v74);
  v7 = __swift_project_boxed_opaque_existential_0(v76, v76[3]);
  v8 = *v7;
  v9 = v7[1];
  v10 = *(v7 + 16);
  v11 = v7[3];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8FB0, &qword_22767CDE0);
  v13 = *(v12 + 48);
  v14 = *(v12 + 52);
  v15 = swift_allocObject();
  v16 = v8;
  v17 = v9;

  sub_22766A070();
  *(v15 + 16) = v16;
  *(v15 + 24) = v17;
  *(v15 + 32) = v10;
  *(v15 + 40) = v11;
  KeyPath = swift_getKeyPath();
  v19 = swift_getKeyPath();
  sub_226F7D85C(KeyPath, v19, sub_227284724, sub_226F7DD4C);
  if (v1)
  {

    swift_setDeallocating();

    v21 = *(v15 + 40);

    v22 = qword_2813B2078;
    v23 = sub_22766A100();
    (*(*(v23 - 8) + 8))(v15 + v22, v23);
    v24 = *(*v15 + 48);
    v25 = *(*v15 + 52);
    swift_deallocClassInstance();
    __swift_project_boxed_opaque_existential_0(v74, v75);
    sub_227669930();
    swift_willThrow();
    v26 = v75;
    __swift_project_boxed_opaque_existential_0(v74, v75);
    sub_227669920();
    (*(v3 + 8))(v6, v77);
    __swift_destroy_boxed_opaque_existential_0(v74);
    __swift_destroy_boxed_opaque_existential_0(v76);
    return v26;
  }

  else
  {
    v27 = v20;
    v67 = v6;
    v68 = 0;
    v69 = v3;

    swift_setDeallocating();

    v28 = *(v15 + 40);

    v29 = qword_2813B2078;
    v30 = sub_22766A100();
    (*(*(v30 - 8) + 8))(v15 + v29, v30);
    v31 = *(*v15 + 48);
    v32 = *(*v15 + 52);
    swift_deallocClassInstance();
    v33 = 1 << *(v27 + 32);
    v34 = -1;
    if (v33 < 64)
    {
      v34 = ~(-1 << v33);
    }

    v35 = v34 & *(v27 + 64);
    v36 = (v33 + 63) >> 6;

    v37 = 0;
    v38 = MEMORY[0x277D84F90];
    if (!v35)
    {
      goto LABEL_8;
    }

    do
    {
LABEL_6:
      while (1)
      {
        v39 = __clz(__rbit64(v35));
        v35 &= v35 - 1;
        v40 = v39 | (v37 << 6);
        v41 = *(*(v27 + 56) + 8 * v40);
        if (v41[2])
        {
          break;
        }

        if (!v35)
        {
          goto LABEL_8;
        }
      }

      v43 = (*(v27 + 48) + 16 * v40);
      v44 = v43[1];
      v66 = *v43;
      v45 = v41[5];
      v70 = v41[4];
      v71 = v45;
      sub_226EC1E18();
      v65 = v44;

      sub_227663AE0();
      v46 = v72[0];
      v64 = v72[1];
      v63 = v73;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v38 = sub_2273A529C(0, v38[2] + 1, 1, v38);
      }

      v48 = v38[2];
      v47 = v38[3];
      v49 = v48 + 1;
      if (v48 >= v47 >> 1)
      {
        v62 = v48 + 1;
        v53 = v38;
        v54 = v48;
        v55 = sub_2273A529C((v47 > 1), v48 + 1, 1, v53);
        v48 = v54;
        v49 = v62;
        v38 = v55;
      }

      v38[2] = v49;
      v50 = &v38[5 * v48];
      v51 = v65;
      v50[4] = v66;
      v50[5] = v51;
      v52 = v64;
      v50[6] = v46;
      v50[7] = v52;
      *(v50 + 64) = v63;
    }

    while (v35);
    while (1)
    {
LABEL_8:
      v42 = v37 + 1;
      if (__OFADD__(v37, 1))
      {
        __break(1u);
        goto LABEL_25;
      }

      if (v42 >= v36)
      {
        break;
      }

      v35 = *(v27 + 64 + 8 * v42);
      ++v37;
      if (v35)
      {
        v37 = v42;
        goto LABEL_6;
      }
    }

    if (v38[2])
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8FE0, &unk_227672B70);
      v56 = sub_22766D010();
    }

    else
    {
      v56 = MEMORY[0x277D84F98];
    }

    v57 = v77;
    v72[0] = v56;
    v58 = v68;
    sub_226F7E3E0(v38, 1, v72);
    v59 = v69;
    v60 = v67;
    if (!v58)
    {
      v26 = v72[0];
      __swift_project_boxed_opaque_existential_0(v74, v75);
      sub_227669930();
      (*(v59 + 8))(v60, v57);
      __swift_destroy_boxed_opaque_existential_0(v74);
      __swift_destroy_boxed_opaque_existential_0(v76);
      return v26;
    }

LABEL_25:
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

char *sub_226F885E0(uint64_t a1)
{
  v29 = sub_227669890();
  v25 = *(v29 - 8);
  v3 = *(v25 + 64);
  MEMORY[0x28223BE20](v29);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A830();
  sub_226E91B50(a1, v28);
  sub_226E9DD3C("CatalogDataStore::queryAllCatalogThemes", 39, 2, &dword_226E8E000, 0, v26);
  v6 = __swift_project_boxed_opaque_existential_0(v28, v28[3]);
  v7 = *v6;
  v8 = v6[1];
  v9 = *(v6 + 16);
  v10 = v6[3];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8F80, &qword_227672A00);
  v12 = *(v11 + 48);
  v13 = *(v11 + 52);
  v14 = swift_allocObject();
  v15 = v7;
  v16 = v8;

  sub_22766A070();
  *(v14 + 16) = v15;
  *(v14 + 24) = v16;
  *(v14 + 32) = v9;
  *(v14 + 40) = v10;
  v17 = sub_227233DB8(100);
  swift_setDeallocating();

  v18 = *(v14 + 40);

  v19 = qword_2813B2078;
  v20 = sub_22766A100();
  (*(*(v20 - 8) + 8))(v14 + v19, v20);
  v21 = *(*v14 + 48);
  v22 = *(*v14 + 52);
  swift_deallocClassInstance();
  __swift_project_boxed_opaque_existential_0(v26, v27);
  sub_227669930();
  if (v1)
  {
    swift_willThrow();
    __swift_project_boxed_opaque_existential_0(v26, v27);
    sub_227669920();
  }

  (*(v25 + 8))(v5, v29);
  __swift_destroy_boxed_opaque_existential_0(v26);
  __swift_destroy_boxed_opaque_existential_0(v28);
  return v17;
}

char *sub_226F88950(uint64_t a1)
{
  v29 = sub_227669890();
  v25 = *(v29 - 8);
  v3 = *(v25 + 64);
  MEMORY[0x28223BE20](v29);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A830();
  sub_226E91B50(a1, v28);
  sub_226E9DD3C("CatalogDataStore::queryAllCatalogThemeCategories", 48, 2, &dword_226E8E000, 0, v26);
  v6 = __swift_project_boxed_opaque_existential_0(v28, v28[3]);
  v7 = *v6;
  v8 = v6[1];
  v9 = *(v6 + 16);
  v10 = v6[3];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9010, &unk_227672BD0);
  v12 = *(v11 + 48);
  v13 = *(v11 + 52);
  v14 = swift_allocObject();
  v15 = v7;
  v16 = v8;

  sub_22766A070();
  *(v14 + 16) = v15;
  *(v14 + 24) = v16;
  *(v14 + 32) = v9;
  *(v14 + 40) = v10;
  v17 = sub_2272358B8(100);
  swift_setDeallocating();

  v18 = *(v14 + 40);

  v19 = qword_2813B2078;
  v20 = sub_22766A100();
  (*(*(v20 - 8) + 8))(v14 + v19, v20);
  v21 = *(*v14 + 48);
  v22 = *(*v14 + 52);
  swift_deallocClassInstance();
  __swift_project_boxed_opaque_existential_0(v26, v27);
  sub_227669930();
  if (v1)
  {
    swift_willThrow();
    __swift_project_boxed_opaque_existential_0(v26, v27);
    sub_227669920();
  }

  (*(v25 + 8))(v5, v29);
  __swift_destroy_boxed_opaque_existential_0(v26);
  __swift_destroy_boxed_opaque_existential_0(v28);
  return v17;
}

char *sub_226F88CC0(void *a1)
{
  v2 = sub_22766B390();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A770();
  sub_22766B370();
  (*(v3 + 8))(v6, v2);
  v7 = __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  v8 = *v7;
  v9 = v7[1];
  v10 = *(v7 + 16);
  v11 = v7[3];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9020, &unk_227672BE0);
  v13 = *(v12 + 48);
  v14 = *(v12 + 52);
  v15 = swift_allocObject();
  v16 = v8;
  v17 = v9;

  sub_22766A070();
  *(v15 + 16) = v16;
  *(v15 + 24) = v17;
  *(v15 + 32) = v10;
  *(v15 + 40) = v11;
  v18 = sub_227235BB8(100);
  swift_setDeallocating();

  v19 = *(v15 + 40);

  v20 = qword_2813B2078;
  v21 = sub_22766A100();
  (*(*(v21 - 8) + 8))(v15 + v20, v21);
  v22 = *(*v15 + 48);
  v23 = *(*v15 + 52);
  swift_deallocClassInstance();
  return v18;
}

char *sub_226F88F0C(void *a1)
{
  v2 = sub_22766B390();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A770();
  sub_22766B370();
  (*(v3 + 8))(v6, v2);
  v7 = __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  v8 = *v7;
  v9 = v7[1];
  v10 = *(v7 + 16);
  v11 = v7[3];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8FD8, &unk_227672B10);
  v13 = *(v12 + 48);
  v14 = *(v12 + 52);
  v15 = swift_allocObject();
  v16 = v8;
  v17 = v9;

  sub_22766A070();
  *(v15 + 16) = v16;
  *(v15 + 24) = v17;
  *(v15 + 32) = v10;
  *(v15 + 40) = v11;
  v18 = sub_2272346B8(100);
  swift_setDeallocating();

  v19 = *(v15 + 40);

  v20 = qword_2813B2078;
  v21 = sub_22766A100();
  (*(*(v21 - 8) + 8))(v15 + v20, v21);
  v22 = *(*v15 + 48);
  v23 = *(*v15 + 52);
  swift_deallocClassInstance();
  return v18;
}

uint64_t sub_226F89164(unint64_t *a1, void (*a2)(uint64_t))
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

char *sub_226F891AC(uint64_t a1)
{
  v29 = sub_227669890();
  v25 = *(v29 - 8);
  v3 = *(v25 + 64);
  MEMORY[0x28223BE20](v29);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A830();
  sub_226E91B50(a1, v28);
  sub_226E9DD3C("CatalogDataStore::queryAllEquipment", 35, 2, &dword_226E8E000, 0, v26);
  v6 = __swift_project_boxed_opaque_existential_0(v28, v28[3]);
  v7 = *v6;
  v8 = v6[1];
  v9 = *(v6 + 16);
  v10 = v6[3];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8FB8, &unk_227672A60);
  v12 = *(v11 + 48);
  v13 = *(v11 + 52);
  v14 = swift_allocObject();
  v15 = v7;
  v16 = v8;

  sub_22766A070();
  *(v14 + 16) = v15;
  *(v14 + 24) = v16;
  *(v14 + 32) = v9;
  *(v14 + 40) = v10;
  v17 = sub_2272349B8(100);
  swift_setDeallocating();

  v18 = *(v14 + 40);

  v19 = qword_2813B2078;
  v20 = sub_22766A100();
  (*(*(v20 - 8) + 8))(v14 + v19, v20);
  v21 = *(*v14 + 48);
  v22 = *(*v14 + 52);
  swift_deallocClassInstance();
  __swift_project_boxed_opaque_existential_0(v26, v27);
  sub_227669930();
  if (v1)
  {
    swift_willThrow();
    __swift_project_boxed_opaque_existential_0(v26, v27);
    sub_227669920();
  }

  (*(v25 + 8))(v5, v29);
  __swift_destroy_boxed_opaque_existential_0(v26);
  __swift_destroy_boxed_opaque_existential_0(v28);
  return v17;
}

char *sub_226F8951C(uint64_t a1)
{
  v29 = sub_227669890();
  v25 = *(v29 - 8);
  v3 = *(v25 + 64);
  MEMORY[0x28223BE20](v29);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A830();
  sub_226E91B50(a1, v28);
  sub_226E9DD3C("CatalogDataStore::queryAllTrainerReferences", 43, 2, &dword_226E8E000, 0, v26);
  v6 = __swift_project_boxed_opaque_existential_0(v28, v28[3]);
  v7 = *v6;
  v8 = v6[1];
  v9 = *(v6 + 16);
  v10 = v6[3];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8F78, &qword_22767F0A0);
  v12 = *(v11 + 48);
  v13 = *(v11 + 52);
  v14 = swift_allocObject();
  v15 = v7;
  v16 = v8;

  sub_22766A070();
  *(v14 + 16) = v15;
  *(v14 + 24) = v16;
  *(v14 + 32) = v9;
  *(v14 + 40) = v10;
  v17 = sub_227233AB8(100);
  swift_setDeallocating();

  v18 = *(v14 + 40);

  v19 = qword_2813B2078;
  v20 = sub_22766A100();
  (*(*(v20 - 8) + 8))(v14 + v19, v20);
  v21 = *(*v14 + 48);
  v22 = *(*v14 + 52);
  swift_deallocClassInstance();
  __swift_project_boxed_opaque_existential_0(v26, v27);
  sub_227669930();
  if (v1)
  {
    swift_willThrow();
    __swift_project_boxed_opaque_existential_0(v26, v27);
    sub_227669920();
  }

  (*(v25 + 8))(v5, v29);
  __swift_destroy_boxed_opaque_existential_0(v26);
  __swift_destroy_boxed_opaque_existential_0(v28);
  return v17;
}

void sub_226F8988C(uint64_t a1, void *a2)
{
  v5 = sub_22766B390();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v55 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A770();
  sub_22766B370();
  v10 = *(v6 + 8);
  v10(v9, v5);
  v62 = a1;
  v11 = sub_226F7A024(a1, MEMORY[0x277D53B20], MEMORY[0x277D53AF8]);
  v12 = sub_226F420C8(v11);

  sub_22766A770();
  sub_22766B370();
  v10(v9, v5);
  v13 = __swift_project_boxed_opaque_existential_0(a2, a2[3]);
  sub_2275592A0(v12, v13[1], *(v13 + 16), v13[3]);

  if (v2)
  {
    return;
  }

  v14 = a2[3];
  v58 = a2;
  v15 = __swift_project_boxed_opaque_existential_0(a2, v14);
  v16 = *v15;
  v17 = v15[1];
  v18 = *(v15 + 16);
  v19 = v15[3];
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8F58, &qword_2276729A8);
  v21 = *(v20 + 48);
  v22 = *(v20 + 52);
  v23 = swift_allocObject();
  v24 = v16;
  v25 = v17;

  sub_22766A070();
  v56 = v25;
  v57 = v24;
  *(v23 + 16) = v24;
  *(v23 + 24) = v25;
  v61 = v18;
  *(v23 + 32) = v18;
  v60 = v19;
  *(v23 + 40) = v19;
  swift_getKeyPath();
  KeyPath = swift_getKeyPath();

  v27 = sub_226F7E828(v62, sub_226F921B4, KeyPath, MEMORY[0x277D53B20]);
  v59 = 0;

  v65[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8470, qword_227677CA0);
  v65[0] = v27;
  sub_226E99364(0, &qword_281398B40, 0x277CCA9C0);

  v28 = sub_22766C820();
  sub_226E93170(v65, v63, &unk_27D7BC990, &qword_227670A30);
  v29 = v64;
  if (v64)
  {
    v30 = __swift_project_boxed_opaque_existential_0(v63, v64);
    v31 = *(v29 - 8);
    v32 = *(v31 + 64);
    MEMORY[0x28223BE20](v30);
    v34 = &v55 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v31 + 16))(v34);
    v35 = sub_22766D170();
    (*(v31 + 8))(v34, v29);
    __swift_destroy_boxed_opaque_existential_0(v63);
  }

  else
  {
    v35 = 0;
  }

  v36 = [objc_opt_self() expressionForConstantValue_];
  swift_unknownObjectRelease();
  [objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8F60 &qword_2276729E0))];

  sub_226E97D1C(v65, &unk_27D7BC990, &qword_227670A30);
  v37 = qword_2813B2078;
  swift_beginAccess();
  v38 = sub_22766A080();
  v40 = v39;
  MEMORY[0x22AA985C0]();
  if (*((*v40 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v40 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_22766C360();
  }

  sub_22766C3A0();
  v38(v65, 0);
  swift_endAccess();

  v41 = sub_2275427C8(v23 + v37, v61, v60);
  if (!v41)
  {
    v50 = v59;
    v51 = sub_227284844(0);
    v43 = v50;
    if (!v50)
    {
      v52 = v51;
      [v51 setResultType_];
      sub_226E99364(0, &qword_281398AE0, 0x277CBE448);
      v53 = sub_22766C9E0();
      v54 = sub_226EDAB24(v53);

      sub_226EDAB78(v54, v56);

      v42 = v62;
      goto LABEL_10;
    }

LABEL_16:

    return;
  }

  v42 = v62;
  if (v41 != 1)
  {
    swift_willThrow();
    goto LABEL_16;
  }

  v43 = v59;
LABEL_10:
  v44 = MEMORY[0x277D53B20];
  v45 = sub_226F7A400(v42, MEMORY[0x277D53B20], MEMORY[0x277D51130], sub_226F1F6C8, MEMORY[0x277D4DB08]);
  v46 = sub_226F7A400(v42, v44, MEMORY[0x277D50C78], sub_226F1F8C8, MEMORY[0x277D4DB00]);
  v47 = v58;
  v48 = __swift_project_boxed_opaque_existential_0(v58, v58[3]);
  sub_22755A354(v45, v48[1], *(v48 + 16), v48[3]);

  if (!v43)
  {
    v49 = __swift_project_boxed_opaque_existential_0(v47, v47[3]);
    sub_22755A880(v46, v49[1], *(v49 + 16), v49[3]);
  }
}

void sub_226F8A004(uint64_t a1, void *a2)
{
  v5 = sub_22766B390();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v55 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A770();
  sub_22766B370();
  v10 = *(v6 + 8);
  v10(v9, v5);
  v62 = a1;
  v11 = sub_226F7A024(a1, MEMORY[0x277D50A30], MEMORY[0x277D50A10]);
  v12 = sub_226F420C8(v11);

  sub_22766A770();
  sub_22766B370();
  v10(v9, v5);
  v13 = __swift_project_boxed_opaque_existential_0(a2, a2[3]);
  sub_2275592A0(v12, v13[1], *(v13 + 16), v13[3]);

  if (v2)
  {
    return;
  }

  v14 = a2[3];
  v58 = a2;
  v15 = __swift_project_boxed_opaque_existential_0(a2, v14);
  v16 = *v15;
  v17 = v15[1];
  v18 = *(v15 + 16);
  v19 = v15[3];
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8F90, &qword_227672A10);
  v21 = *(v20 + 48);
  v22 = *(v20 + 52);
  v23 = swift_allocObject();
  v24 = v16;
  v25 = v17;

  sub_22766A070();
  v56 = v25;
  v57 = v24;
  *(v23 + 16) = v24;
  *(v23 + 24) = v25;
  v61 = v18;
  *(v23 + 32) = v18;
  v60 = v19;
  *(v23 + 40) = v19;
  swift_getKeyPath();
  KeyPath = swift_getKeyPath();

  v27 = sub_226F7E828(v62, sub_226F92188, KeyPath, MEMORY[0x277D50A30]);
  v59 = 0;

  v65[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8470, qword_227677CA0);
  v65[0] = v27;
  sub_226E99364(0, &qword_281398B40, 0x277CCA9C0);

  v28 = sub_22766C820();
  sub_226E93170(v65, v63, &unk_27D7BC990, &qword_227670A30);
  v29 = v64;
  if (v64)
  {
    v30 = __swift_project_boxed_opaque_existential_0(v63, v64);
    v31 = *(v29 - 8);
    v32 = *(v31 + 64);
    MEMORY[0x28223BE20](v30);
    v34 = &v55 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v31 + 16))(v34);
    v35 = sub_22766D170();
    (*(v31 + 8))(v34, v29);
    __swift_destroy_boxed_opaque_existential_0(v63);
  }

  else
  {
    v35 = 0;
  }

  v36 = [objc_opt_self() expressionForConstantValue_];
  swift_unknownObjectRelease();
  [objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8F98 &qword_227672A40))];

  sub_226E97D1C(v65, &unk_27D7BC990, &qword_227670A30);
  v37 = qword_2813B2078;
  swift_beginAccess();
  v38 = sub_22766A080();
  v40 = v39;
  MEMORY[0x22AA985C0]();
  if (*((*v40 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v40 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_22766C360();
  }

  sub_22766C3A0();
  v38(v65, 0);
  swift_endAccess();

  v41 = sub_227542810(v23 + v37, v61, v60);
  if (!v41)
  {
    v50 = v59;
    v51 = sub_2272848A4(0);
    v43 = v50;
    if (!v50)
    {
      v52 = v51;
      [v51 setResultType_];
      sub_226E99364(0, &qword_281398AE0, 0x277CBE448);
      v53 = sub_22766C9E0();
      v54 = sub_226EDAB24(v53);

      sub_226EDAB78(v54, v56);

      v42 = v62;
      goto LABEL_10;
    }

LABEL_16:

    return;
  }

  v42 = v62;
  if (v41 != 1)
  {
    swift_willThrow();
    goto LABEL_16;
  }

  v43 = v59;
LABEL_10:
  v44 = MEMORY[0x277D50A30];
  v45 = sub_226F7A400(v42, MEMORY[0x277D50A30], MEMORY[0x277D52AF8], sub_226EB5880, MEMORY[0x277D4DAE0]);
  v46 = sub_226F7A400(v42, v44, MEMORY[0x277D52758], sub_226F1F8A8, MEMORY[0x277D4DAD8]);
  v47 = v58;
  v48 = __swift_project_boxed_opaque_existential_0(v58, v58[3]);
  sub_22755ADBC(v45, v48[1], *(v48 + 16), v48[3]);

  if (!v43)
  {
    v49 = __swift_project_boxed_opaque_existential_0(v47, v47[3]);
    sub_22755B2F8(v46, v49[1], *(v49 + 16), v49[3]);
  }
}

void sub_226F8A77C(uint64_t a1, void *a2)
{
  v135 = a2;
  v4 = sub_2276642E0();
  v5 = *(v4 - 8);
  v132 = v4;
  v133 = v5;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v131 = v124 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_22766B390();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = v124 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A770();
  sub_22766B370();
  v13 = *(v9 + 8);
  v13(v12, v8);
  v134 = a1;
  v14 = sub_226F7A024(a1, MEMORY[0x277D50820], MEMORY[0x277D50790]);
  v15 = sub_226F420C8(v14);

  sub_22766A770();
  v16 = v135;
  sub_22766B370();
  v13(v12, v8);
  v17 = __swift_project_boxed_opaque_existential_0(v16, v16[3]);
  sub_2275592A0(v15, v17[1], *(v17 + 16), v17[3]);
  if (v2)
  {
LABEL_2:

    return;
  }

  v18 = sub_226F7A7DC(v134, MEMORY[0x277D50820], MEMORY[0x277D50790]);
  v130 = 0;
  v128 = MEMORY[0x22AA99A00]();
  v19 = __swift_project_boxed_opaque_existential_0(v16, v16[3]);
  v20 = *v19;
  v21 = v19[1];
  v22 = *(v19 + 16);
  v23 = v19[3];
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8FC0, qword_22767B370);
  v25 = *(v24 + 48);
  v26 = *(v24 + 52);
  v27 = swift_allocObject();
  v28 = &qword_2813B2078;
  v29 = v20;
  v30 = v21;

  sub_22766A070();
  v125 = v29;
  v126 = v23;
  v27[2] = v29;
  v27[3] = v30;
  v127 = v30;
  *(v27 + 32) = v22;
  v27[5] = v23;
  swift_getKeyPath();
  v139 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B84E0, &qword_22767C6B0);
  v138[0] = v18;
  v31 = sub_226E99364(0, &qword_281398B40, 0x277CCA9C0);
  v129 = v18;

  v124[1] = v31;
  v32 = sub_22766C820();
  sub_226E93170(v138, v136, &unk_27D7BC990, &qword_227670A30);
  v33 = v137;
  if (v137)
  {
    v34 = __swift_project_boxed_opaque_existential_0(v136, v137);
    v35 = *(v33 - 8);
    v36 = *(v35 + 64);
    MEMORY[0x28223BE20](v34);
    v38 = v124 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v35 + 16))(v38);
    v39 = sub_22766D170();
    (*(v35 + 8))(v38, v33);
    v28 = &qword_2813B2078;
    __swift_destroy_boxed_opaque_existential_0(v136);
  }

  else
  {
    v39 = 0;
  }

  v40 = objc_opt_self();
  v41 = [v40 expressionForConstantValue_];
  swift_unknownObjectRelease();
  v42 = [objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BB900 &unk_22767CDD0))];

  sub_226E97D1C(v138, &unk_27D7BC990, &qword_227670A30);
  swift_beginAccess();
  v43 = v42;
  v44 = sub_22766A080();
  v46 = v45;
  MEMORY[0x22AA985C0]();
  if (*((*v46 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v46 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    goto LABEL_21;
  }

  while (1)
  {
    sub_22766C3A0();
    v44(v138, 0);
    swift_endAccess();

    v47 = v130;
    v48 = sub_227284754(0);
    v44 = v47;
    if (v47)
    {

      objc_autoreleasePoolPop(v128);
      return;
    }

    v49 = v48;
    type metadata accessor for ManagedCatalogWorkoutReference();
    v50 = v127;
    v51 = sub_22766C9E0();

    swift_setDeallocating();
    v52 = *v28;
    v53 = sub_22766A100();
    (*(*(v53 - 8) + 8))(v27 + v52, v53);
    v54 = *(*v27 + 48);
    v55 = *(*v27 + 52);
    swift_deallocClassInstance();
    v124[0] = v40;
    if (v51 >> 62)
    {
      break;
    }

    v43 = *((v51 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v43)
    {
      goto LABEL_23;
    }

LABEL_11:
    v40 = 0;
    v28 = (v51 & 0xC000000000000001);
    while (1)
    {
      if (v28)
      {
        v56 = MEMORY[0x22AA991A0](v40, v51);
      }

      else
      {
        if (v40 >= *((v51 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_20;
        }

        v56 = *(v51 + 8 * v40 + 32);
      }

      v27 = v56;
      v57 = (v40 + 1);
      if (__OFADD__(v40, 1))
      {
        break;
      }

      [v56 setBodyFocusIdentifierss_];
      [v27 setContributorIdentifierss_];
      [v27 setEquipmentIdentifierss_];
      [v27 setMusicGenreIdentifierss_];
      [v27 setSkillLevelIdentifierss_];
      [v27 setThemeIdentifierss_];
      [v27 setTrainerIdentifierss_];

      ++v40;
      if (v57 == v43)
      {
        goto LABEL_23;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    sub_22766C360();
  }

  v43 = sub_22766CD20();
  if (v43)
  {
    goto LABEL_11;
  }

LABEL_23:

  objc_autoreleasePoolPop(v128);
  v58 = __swift_project_boxed_opaque_existential_0(v135, v135[3]);
  v59 = *v58;
  v60 = v58[1];
  v61 = *(v58 + 16);
  v62 = v58[3];
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8F30, &unk_22767F080);
  v64 = *(v63 + 48);
  v65 = *(v63 + 52);
  v66 = swift_allocObject();
  v67 = v59;
  v68 = v60;

  sub_22766A070();
  v126 = v68;
  v127 = v67;
  *(v66 + 16) = v67;
  *(v66 + 24) = v68;
  LODWORD(v130) = v61;
  *(v66 + 32) = v61;
  v128 = v62;
  *(v66 + 40) = v62;
  swift_getKeyPath();
  v69 = sub_227073F2C(v129);

  v139 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8470, qword_227677CA0);
  v138[0] = v69;

  v70 = sub_22766C820();
  sub_226E93170(v138, v136, &unk_27D7BC990, &qword_227670A30);
  v71 = v137;
  if (v137)
  {
    v72 = __swift_project_boxed_opaque_existential_0(v136, v137);
    v73 = *(v71 - 8);
    v74 = *(v73 + 64);
    MEMORY[0x28223BE20](v72);
    v76 = v124 - ((v75 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v73 + 16))(v76);
    v77 = sub_22766D170();
    (*(v73 + 8))(v76, v71);
    __swift_destroy_boxed_opaque_existential_0(v136);
  }

  else
  {
    v77 = 0;
  }

  v78 = [v124[0] expressionForConstantValue_];
  swift_unknownObjectRelease();
  [objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8F38 &qword_227672988))];

  sub_226E97D1C(v138, &unk_27D7BC990, &qword_227670A30);
  v79 = qword_2813B2078;
  swift_beginAccess();
  v80 = sub_22766A080();
  v82 = v81;
  MEMORY[0x22AA985C0]();
  if (*((*v82 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v82 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    goto LABEL_58;
  }

  while (1)
  {
    sub_22766C3A0();
    (v80)(v138, 0);
    swift_endAccess();

    v83 = sub_227542858(v66 + v79, v130, v128);
    if (!v83)
    {
      v90 = sub_22728488C(0);
      v84 = v135;
      v91 = v90;
      [v90 setResultType_];
      sub_226E99364(0, &qword_281398AE0, 0x277CBE448);
      v92 = sub_22766C9E0();
      v123 = sub_226EDAB24(v92);

      sub_226EDAB78(v123, v126);

      goto LABEL_30;
    }

    v84 = v135;
    if (v83 != 1)
    {
      break;
    }

LABEL_30:
    v85 = MEMORY[0x277D50820];
    v86 = v134;
    v87 = sub_226F7A400(v134, MEMORY[0x277D50820], MEMORY[0x277D52828], sub_226F1F928, MEMORY[0x277D4DAD0]);
    v88 = sub_226F7A400(v86, v85, MEMORY[0x277D52300], sub_226F1F8E8, MEMORY[0x277D4DAC8]);
    v89 = __swift_project_boxed_opaque_existential_0(v84, v84[3]);
    sub_2275598DC(v87, v89[1], *(v89 + 16), v89[3]);

    v93 = __swift_project_boxed_opaque_existential_0(v84, v84[3]);
    sub_227559E18(v88, v93[1], *(v93 + 16), v93[3]);

    v94 = v86;
    v96 = *(v86 + 56);
    v66 = v86 + 56;
    v95 = v96;
    v97 = 1 << *(v94 + 32);
    v98 = -1;
    if (v97 < 64)
    {
      v98 = ~(-1 << v97);
    }

    v99 = v98 & v95;
    v100 = (v97 + 63) >> 6;
    v101 = v133;
    v127 = (v133 + 8);
    v128 = (v133 + 16);

    v80 = 0;
    v130 = MEMORY[0x277D84F90];
    while (v99)
    {
      v102 = v131;
      v79 = v132;
LABEL_44:
      (*(v101 + 16))(v102, *(v134 + 48) + *(v101 + 72) * (__clz(__rbit64(v99)) | (v80 << 6)), v79);
      v104 = sub_2276642D0();
      (*(v101 + 8))(v102, v79);
      v105 = *(v104 + 16);
      v106 = v130[2];
      v107 = v106 + v105;
      if (__OFADD__(v106, v105))
      {
        __break(1u);
LABEL_60:
        __break(1u);
LABEL_61:
        __break(1u);
LABEL_62:
        __break(1u);
        return;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v109 = v130;
      if (!isUniquelyReferenced_nonNull_native || v107 > v130[3] >> 1)
      {
        if (v106 <= v107)
        {
          v110 = v106 + v105;
        }

        else
        {
          v110 = v106;
        }

        v109 = sub_2273A524C(isUniquelyReferenced_nonNull_native, v110, 1, v130);
      }

      v99 &= v99 - 1;
      v111 = *(v104 + 16);
      v130 = v109;
      if (v111)
      {
        v129 = (v109[3] >> 1) - v109[2];
        v112 = *(sub_2276692D0() - 8);
        if (v129 < v105)
        {
          goto LABEL_61;
        }

        v113 = (*(v112 + 80) + 32) & ~*(v112 + 80);
        v114 = *(v112 + 72);
        swift_arrayInitWithCopy();

        v101 = v133;
        if (v105)
        {
          v115 = v130[2];
          v116 = __OFADD__(v115, v105);
          v117 = v115 + v105;
          if (v116)
          {
            goto LABEL_62;
          }

          v130[2] = v117;
        }
      }

      else
      {

        v101 = v133;
        if (v105)
        {
          goto LABEL_60;
        }
      }
    }

    v102 = v131;
    v79 = v132;
    while (1)
    {
      v103 = v80 + 1;
      if (__OFADD__(v80, 1))
      {
        break;
      }

      if (v103 >= v100)
      {
        v118 = v134;

        v119 = sub_226F42C0C(v130);

        v120 = v135;
        sub_226F8988C(v119, v135);

        v121 = sub_226F7A400(v118, MEMORY[0x277D50820], MEMORY[0x277D50A30], sub_226F1F9E8, MEMORY[0x277D507F8]);
        v122 = sub_226F42DA8(v121);

        sub_226F8A004(v122, v120);
        goto LABEL_2;
      }

      v99 = *(v66 + 8 * v103);
      ++v80;
      if (v99)
      {
        v80 = v103;
        goto LABEL_44;
      }
    }

    __break(1u);
LABEL_58:
    sub_22766C360();
  }

  swift_willThrow();
}

uint64_t sub_226F8B794(uint64_t a1, void *a2)
{
  v4 = sub_227669890();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v153 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A830();
  sub_226E9DD3C("CatalogDataStore.insertCatalogChangeset", 39, 2, &dword_226E8E000, 1, v162);
  (*(v5 + 8))(v8, v4);
  v9 = *(sub_227664BF0() + 16);

  v163 = a1;
  v156 = a2;
  if (v9)
  {
    v10 = __swift_project_boxed_opaque_existential_0(a2, a2[3]);
    v11 = *v10;
    v12 = v10[1];
    v13 = *(v10 + 16);
    v14 = v10[3];
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8FC0, qword_22767B370);
    v16 = *(v15 + 48);
    v17 = *(v15 + 52);
    v18 = swift_allocObject();
    v19 = v11;
    v20 = v12;

    sub_22766A070();
    v153 = v20;
    v154 = v19;
    *(v18 + 16) = v19;
    *(v18 + 24) = v20;
    v155 = v13;
    *(v18 + 32) = v13;
    *(v18 + 40) = v14;
    swift_getKeyPath();
    v21 = sub_227664BF0();
    v22 = sub_227230638(v21);

    v161 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8588, &unk_227672CD0);
    v160[0] = v22;
    sub_226E99364(0, &qword_281398B40, 0x277CCA9C0);

    v23 = sub_22766C820();
    sub_226E93170(v160, v158, &unk_27D7BC990, &qword_227670A30);
    v24 = v159;
    if (v159)
    {
      v25 = __swift_project_boxed_opaque_existential_0(v158, v159);
      v26 = *(v24 - 8);
      v27 = *(v26 + 64);
      MEMORY[0x28223BE20](v25);
      v29 = &v153 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v26 + 16))(v29);
      v30 = sub_22766D170();
      (*(v26 + 8))(v29, v24);
      __swift_destroy_boxed_opaque_existential_0(v158);
    }

    else
    {
      v30 = 0;
    }

    v31 = [objc_opt_self() expressionForConstantValue_];
    swift_unknownObjectRelease();
    [objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BB900 &unk_22767CDD0))];

    sub_226E97D1C(v160, &unk_27D7BC990, &qword_227670A30);
    v32 = qword_2813B2078;
    swift_beginAccess();
    v33 = sub_22766A080();
    v35 = v34;
    MEMORY[0x22AA985C0]();
    if (*((*v35 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v35 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_22766C360();
    }

    sub_22766C3A0();
    v33(v160, 0);
    swift_endAccess();

    v36 = sub_227542978(v18 + v32, v155, v14);
    if (v36)
    {
      a1 = v163;
      if (v36 != 1)
      {
        goto LABEL_57;
      }
    }

    else
    {
      v59 = v157;
      v60 = sub_227284754(0);
      a1 = v163;
      if (v59)
      {
        goto LABEL_58;
      }

      v61 = v60;
      [v60 setResultType_];
      sub_226E99364(0, &qword_281398AE0, 0x277CBE448);
      v62 = sub_22766C9E0();
      v157 = 0;
      v63 = sub_226EDAB24(v62);

      sub_226EDAB78(v63, v153);
    }

    a2 = v156;
  }

  v37 = *(sub_227664BD0() + 16);

  if (v37)
  {
    v38 = __swift_project_boxed_opaque_existential_0(a2, a2[3]);
    v39 = *v38;
    v40 = v38[1];
    v41 = *(v38 + 16);
    v42 = v38[3];
    v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9008, &unk_227672BC0);
    v44 = *(v43 + 48);
    v45 = *(v43 + 52);
    v46 = swift_allocObject();
    v47 = v39;
    v48 = v40;

    sub_22766A070();
    v153 = v48;
    v154 = v47;
    *(v46 + 16) = v47;
    *(v46 + 24) = v48;
    v155 = v41;
    *(v46 + 32) = v41;
    *(v46 + 40) = v42;
    swift_getKeyPath();
    v49 = sub_227664BD0();
    v50 = sub_227230638(v49);

    v161 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8588, &unk_227672CD0);
    v160[0] = v50;
    sub_226E99364(0, &qword_281398B40, 0x277CCA9C0);

    v51 = sub_22766C820();
    sub_226E93170(v160, v158, &unk_27D7BC990, &qword_227670A30);
    v52 = v159;
    if (v159)
    {
      v53 = __swift_project_boxed_opaque_existential_0(v158, v159);
      v54 = *(v52 - 8);
      v55 = *(v54 + 64);
      MEMORY[0x28223BE20](v53);
      v57 = &v153 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v54 + 16))(v57);
      v58 = sub_22766D170();
      (*(v54 + 8))(v57, v52);
      __swift_destroy_boxed_opaque_existential_0(v158);
    }

    else
    {
      v58 = 0;
    }

    v64 = [objc_opt_self() expressionForConstantValue_];
    swift_unknownObjectRelease();
    [objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9078 &qword_227672D10))];

    sub_226E97D1C(v160, &unk_27D7BC990, &qword_227670A30);
    v65 = qword_2813B2078;
    swift_beginAccess();
    v66 = sub_22766A080();
    v68 = v67;
    MEMORY[0x22AA985C0]();
    if (*((*v68 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v68 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_22766C360();
    }

    sub_22766C3A0();
    v66(v160, 0);
    swift_endAccess();

    v69 = sub_227542930(v46 + v65, v155, v42);
    if (v69)
    {
      a1 = v163;
      if (v69 != 1)
      {
        goto LABEL_57;
      }
    }

    else
    {
      v92 = v157;
      v93 = sub_22728473C(0);
      a1 = v163;
      if (v92)
      {
        goto LABEL_58;
      }

      v94 = v93;
      [v93 setResultType_];
      sub_226E99364(0, &qword_281398AE0, 0x277CBE448);
      v95 = sub_22766C9E0();
      v157 = 0;
      v96 = sub_226EDAB24(v95);

      sub_226EDAB78(v96, v153);
    }

    a2 = v156;
  }

  v70 = *(sub_227664BC0() + 16);

  if (!v70)
  {
    goto LABEL_35;
  }

  v71 = __swift_project_boxed_opaque_existential_0(a2, a2[3]);
  v72 = *v71;
  v73 = v71[1];
  v74 = *(v71 + 16);
  v75 = v71[3];
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9028, &unk_22767F070);
  v77 = *(v76 + 48);
  v78 = *(v76 + 52);
  v79 = swift_allocObject();
  v80 = v72;
  v81 = v73;

  sub_22766A070();
  v153 = v81;
  v154 = v80;
  *(v79 + 16) = v80;
  *(v79 + 24) = v81;
  v155 = v74;
  *(v79 + 32) = v74;
  *(v79 + 40) = v75;
  swift_getKeyPath();
  v82 = sub_227664BC0();
  v83 = sub_227230638(v82);

  v161 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8588, &unk_227672CD0);
  v160[0] = v83;
  sub_226E99364(0, &qword_281398B40, 0x277CCA9C0);

  v84 = sub_22766C820();
  sub_226E93170(v160, v158, &unk_27D7BC990, &qword_227670A30);
  v85 = v159;
  if (v159)
  {
    v86 = __swift_project_boxed_opaque_existential_0(v158, v159);
    v87 = *(v85 - 8);
    v88 = *(v87 + 64);
    MEMORY[0x28223BE20](v86);
    v90 = &v153 - ((v89 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v87 + 16))(v90);
    v91 = sub_22766D170();
    (*(v87 + 8))(v90, v85);
    __swift_destroy_boxed_opaque_existential_0(v158);
  }

  else
  {
    v91 = 0;
  }

  v97 = [objc_opt_self() expressionForConstantValue_];
  swift_unknownObjectRelease();
  [objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9080 &qword_227672D40))];

  sub_226E97D1C(v160, &unk_27D7BC990, &qword_227670A30);
  v98 = qword_2813B2078;
  swift_beginAccess();
  v99 = sub_22766A080();
  v101 = v100;
  MEMORY[0x22AA985C0]();
  if (*((*v101 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v101 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_22766C360();
  }

  sub_22766C3A0();
  v99(v160, 0);
  swift_endAccess();

  v102 = sub_2275428E8(v79 + v98, v155, v75);
  if (!v102)
  {
    v126 = v157;
    v127 = sub_22728476C(0);
    a1 = v163;
    if (v126)
    {
      goto LABEL_58;
    }

    v128 = v127;
    [v127 setResultType_];
    sub_226E99364(0, &qword_281398AE0, 0x277CBE448);
    v129 = sub_22766C9E0();
    v157 = 0;
    v130 = sub_226EDAB24(v129);

    sub_226EDAB78(v130, v153);

    goto LABEL_34;
  }

  a1 = v163;
  if (v102 != 1)
  {
LABEL_57:
    swift_willThrow();
    goto LABEL_58;
  }

LABEL_34:
  a2 = v156;
LABEL_35:
  v103 = *(sub_227664BE0() + 16);

  if (!v103)
  {
    v125 = v157;
    goto LABEL_48;
  }

  v104 = __swift_project_boxed_opaque_existential_0(a2, a2[3]);
  v105 = *v104;
  v106 = v104[1];
  v107 = *(v104 + 16);
  v108 = v104[3];
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8F78, &qword_22767F0A0);
  v110 = *(v109 + 48);
  v111 = *(v109 + 52);
  v112 = swift_allocObject();
  v113 = v105;
  v114 = v106;

  sub_22766A070();
  v153 = v114;
  v154 = v113;
  *(v112 + 16) = v113;
  *(v112 + 24) = v114;
  v155 = v107;
  *(v112 + 32) = v107;
  *(v112 + 40) = v108;
  swift_getKeyPath();
  v115 = sub_227664BE0();
  v116 = sub_227230638(v115);

  v161 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8588, &unk_227672CD0);
  v160[0] = v116;
  sub_226E99364(0, &qword_281398B40, 0x277CCA9C0);

  v117 = sub_22766C820();
  sub_226E93170(v160, v158, &unk_27D7BC990, &qword_227670A30);
  v118 = v159;
  if (v159)
  {
    v119 = __swift_project_boxed_opaque_existential_0(v158, v159);
    v120 = *(v118 - 8);
    v121 = *(v120 + 64);
    MEMORY[0x28223BE20](v119);
    v123 = &v153 - ((v122 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v120 + 16))(v123);
    v124 = sub_22766D170();
    (*(v120 + 8))(v123, v118);
    __swift_destroy_boxed_opaque_existential_0(v158);
  }

  else
  {
    v124 = 0;
  }

  v131 = [objc_opt_self() expressionForConstantValue_];
  swift_unknownObjectRelease();
  [objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9088 &unk_227672D70))];

  sub_226E97D1C(v160, &unk_27D7BC990, &qword_227670A30);
  v132 = qword_2813B2078;
  swift_beginAccess();
  v133 = sub_22766A080();
  v135 = v134;
  MEMORY[0x22AA985C0]();
  if (*((*v135 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v135 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_22766C360();
  }

  sub_22766C3A0();
  v133(v160, 0);
  swift_endAccess();

  v136 = sub_2275428A0(v112 + v132, v155, v108);
  if (!v136)
  {
    v145 = v157;
    v146 = sub_22728482C(0);
    v125 = v145;
    a1 = v163;
    if (!v145)
    {
      v147 = v146;
      [v146 setResultType_];
      sub_226E99364(0, &qword_281398AE0, 0x277CBE448);
      v148 = sub_22766C9E0();
      v152 = sub_226EDAB24(v148);

      sub_226EDAB78(v152, v153);

      goto LABEL_47;
    }

LABEL_58:

    goto LABEL_59;
  }

  v125 = v157;
  a1 = v163;
  if (v136 != 1)
  {
    goto LABEL_57;
  }

LABEL_47:
  a2 = v156;
LABEL_48:
  v137 = *(sub_227664BB0() + 16);

  if (v137)
  {
    v139 = MEMORY[0x22AA99A00](v138);
    sub_226F7C604(a2, a1, v160);
    if (v125)
    {
      goto LABEL_56;
    }

    v125 = 0;
    objc_autoreleasePoolPop(v139);
  }

  v140 = *(sub_227664B90() + 16);

  if (!v140)
  {
    goto LABEL_54;
  }

  v139 = MEMORY[0x22AA99A00](v141);
  sub_226F7CC54(a2, a1, v160);
  if (v125)
  {
LABEL_56:
    objc_autoreleasePoolPop(v139);
    goto LABEL_59;
  }

  v125 = 0;
  objc_autoreleasePoolPop(v139);
LABEL_54:
  v142 = *(sub_227664B80() + 16);

  if (v142)
  {
    v139 = MEMORY[0x22AA99A00](v143);
    sub_226F7D270(a2, a1, v160);
    if (v125)
    {
      goto LABEL_56;
    }

    objc_autoreleasePoolPop(v139);
  }

  v149 = *(sub_227664BA0() + 16);

  if (v149)
  {
    v150 = __swift_project_boxed_opaque_existential_0(a2, a2[3]);
    v151 = sub_227664BA0();
    sub_22755CC38(v151, v150[1], *(v150 + 16), v150[3]);
  }

LABEL_59:
  __swift_project_boxed_opaque_existential_0(v162, v162[3]);
  sub_227669930();
  return __swift_destroy_boxed_opaque_existential_0(v162);
}

void sub_226F8CA70(uint64_t a1, void *a2)
{
  v32[0] = a1;
  v3 = sub_22766B390();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A770();
  sub_22766B370();
  (*(v4 + 8))(v7, v3);
  v8 = __swift_project_boxed_opaque_existential_0(a2, a2[3]);
  v9 = *v8;
  v10 = v8[1];
  v11 = v8[3];
  v12 = *(v8 + 16);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB910, &qword_22767B3B0);
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  v16 = swift_allocObject();
  v17 = v9;
  v18 = v10;

  sub_22766A070();
  *(v16 + 16) = v17;
  *(v16 + 24) = v18;
  *(v16 + 32) = v12;
  *(v16 + 40) = v11;
  v19 = qword_2813B2078;
  swift_beginAccess();
  v20 = sub_2275429C0(v16 + v19, v12, v11);
  if (v20)
  {
    if (v20 == 1)
    {

LABEL_4:
      v21 = __swift_project_boxed_opaque_existential_0(a2, a2[3]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9090, &qword_227672D80);
      v22 = sub_227665030();
      v23 = *(v22 - 8);
      v24 = *(v23 + 72);
      v25 = (*(v23 + 80) + 32) & ~*(v23 + 80);
      v26 = swift_allocObject();
      *(v26 + 16) = xmmword_227670CD0;
      (*(v23 + 16))(v26 + v25, v32[0], v22);
      sub_22755D9A0(v26, v21[1], *(v21 + 16), v21[3]);

      return;
    }

    swift_willThrow();
  }

  else
  {
    v27 = v32[5];
    v28 = sub_227284784(0);
    if (!v27)
    {
      v29 = v28;
      [v28 setResultType_];
      sub_226E99364(0, &qword_281398AE0, 0x277CBE448);
      v30 = sub_22766C9E0();
      v31 = sub_226EDAB24(v30);

      sub_226EDAB78(v31, v18);

      goto LABEL_4;
    }
  }
}

void sub_226F8CE04(void *a1)
{
  v2 = sub_22766B390();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v494 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A770();
  sub_22766B370();
  (*(v3 + 8))(v6, v2);
  v7 = a1[3];
  v495 = a1;
  v8 = __swift_project_boxed_opaque_existential_0(a1, v7);
  v9 = *v8;
  v10 = v8[1];
  v11 = v8[3];
  v12 = *(v8 + 16);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8F48, &qword_227672998);
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  v16 = swift_allocObject();
  v17 = v9;
  v18 = v10;

  sub_22766A070();
  *(v16 + 16) = v17;
  *(v16 + 24) = v18;
  *(v16 + 32) = v12;
  *(v16 + 40) = v11;
  v19 = qword_2813B2078;
  swift_beginAccess();
  v20 = sub_227542E58(v16 + v19, v12, v11);
  if (v20)
  {
    if (v20 != 1)
    {
      goto LABEL_82;
    }
  }

  else
  {
    v359 = v496;
    v360 = sub_22728491C(0);
    if (v359)
    {
      goto LABEL_81;
    }

    v361 = v360;
    [v360 setResultType_];
    sub_226E99364(0, &qword_281398AE0, 0x277CBE448);
    v362 = sub_22766C9E0();
    v496 = 0;
    v363 = sub_226EDAB24(v362);

    sub_226EDAB78(v363, v18);
  }

  v21 = __swift_project_boxed_opaque_existential_0(v495, v495[3]);
  v22 = *v21;
  v23 = v21[1];
  v24 = v21[3];
  v25 = *(v21 + 16);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9000, &qword_227672BB8);
  v27 = *(v26 + 48);
  v28 = *(v26 + 52);
  v29 = swift_allocObject();
  v30 = v22;
  v31 = v23;

  sub_22766A070();
  *(v29 + 16) = v30;
  *(v29 + 24) = v31;
  *(v29 + 32) = v25;
  *(v29 + 40) = v24;
  v32 = qword_2813B2078;
  swift_beginAccess();
  v33 = sub_227542E38(v29 + v32, v25, v24);
  if (v33)
  {
    if (v33 != 1)
    {
      goto LABEL_82;
    }
  }

  else
  {
    v364 = v496;
    v365 = sub_2272462A0(0);
    if (v364)
    {
      goto LABEL_81;
    }

    v366 = v365;
    [v365 setResultType_];
    sub_226E99364(0, &qword_281398AE0, 0x277CBE448);
    v367 = sub_22766C9E0();
    v496 = 0;
    v368 = sub_226EDAB24(v367);

    sub_226EDAB78(v368, v31);
  }

  v34 = __swift_project_boxed_opaque_existential_0(v495, v495[3]);
  v35 = *v34;
  v36 = v34[1];
  v37 = v34[3];
  v38 = *(v34 + 16);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8FC8, &qword_227672AA0);
  v40 = *(v39 + 48);
  v41 = *(v39 + 52);
  v42 = swift_allocObject();
  v43 = v35;
  v44 = v36;

  sub_22766A070();
  *(v42 + 16) = v43;
  *(v42 + 24) = v44;
  *(v42 + 32) = v38;
  *(v42 + 40) = v37;
  v45 = qword_2813B2078;
  swift_beginAccess();
  v46 = sub_227542DF0(v42 + v45, v38, v37);
  if (v46)
  {
    if (v46 != 1)
    {
      goto LABEL_82;
    }
  }

  else
  {
    v369 = v496;
    v370 = sub_2272848BC(0);
    if (v369)
    {
      goto LABEL_81;
    }

    v371 = v370;
    [v370 setResultType_];
    sub_226E99364(0, &qword_281398AE0, 0x277CBE448);
    v372 = sub_22766C9E0();
    v496 = 0;
    v373 = sub_226EDAB24(v372);

    sub_226EDAB78(v373, v44);
  }

  v47 = __swift_project_boxed_opaque_existential_0(v495, v495[3]);
  v48 = *v47;
  v49 = v47[1];
  v50 = v47[3];
  v51 = *(v47 + 16);
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8F90, &qword_227672A10);
  v53 = *(v52 + 48);
  v54 = *(v52 + 52);
  v55 = swift_allocObject();
  v56 = v48;
  v57 = v49;

  sub_22766A070();
  *(v55 + 16) = v56;
  *(v55 + 24) = v57;
  *(v55 + 32) = v51;
  *(v55 + 40) = v50;
  v58 = qword_2813B2078;
  swift_beginAccess();
  v59 = sub_227542810(v55 + v58, v51, v50);
  if (v59)
  {
    if (v59 != 1)
    {
      goto LABEL_82;
    }
  }

  else
  {
    v374 = v496;
    v375 = sub_2272848A4(0);
    if (v374)
    {
      goto LABEL_81;
    }

    v376 = v375;
    [v375 setResultType_];
    sub_226E99364(0, &qword_281398AE0, 0x277CBE448);
    v377 = sub_22766C9E0();
    v496 = 0;
    v378 = sub_226EDAB24(v377);

    sub_226EDAB78(v378, v57);
  }

  v60 = __swift_project_boxed_opaque_existential_0(v495, v495[3]);
  v61 = *v60;
  v62 = v60[1];
  v63 = v60[3];
  v64 = *(v60 + 16);
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8FB0, &qword_22767CDE0);
  v66 = *(v65 + 48);
  v67 = *(v65 + 52);
  v68 = swift_allocObject();
  v69 = v61;
  v70 = v62;

  sub_22766A070();
  *(v68 + 16) = v69;
  *(v68 + 24) = v70;
  *(v68 + 32) = v64;
  *(v68 + 40) = v63;
  v71 = qword_2813B2078;
  swift_beginAccess();
  v72 = sub_227542DA8(v68 + v71, v64, v63);
  if (v72)
  {
    if (v72 != 1)
    {
      goto LABEL_82;
    }
  }

  else
  {
    v379 = v496;
    v380 = sub_227284724(0);
    if (v379)
    {
      goto LABEL_81;
    }

    v381 = v380;
    [v380 setResultType_];
    sub_226E99364(0, &qword_281398AE0, 0x277CBE448);
    v382 = sub_22766C9E0();
    v496 = 0;
    v383 = sub_226EDAB24(v382);

    sub_226EDAB78(v383, v70);
  }

  v73 = __swift_project_boxed_opaque_existential_0(v495, v495[3]);
  v74 = *v73;
  v75 = v73[1];
  v76 = v73[3];
  v77 = *(v73 + 16);
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9008, &unk_227672BC0);
  v79 = *(v78 + 48);
  v80 = *(v78 + 52);
  v81 = swift_allocObject();
  v82 = v74;
  v83 = v75;

  sub_22766A070();
  *(v81 + 16) = v82;
  *(v81 + 24) = v83;
  *(v81 + 32) = v77;
  *(v81 + 40) = v76;
  v84 = qword_2813B2078;
  swift_beginAccess();
  v85 = sub_227542930(v81 + v84, v77, v76);
  if (v85)
  {
    if (v85 != 1)
    {
      goto LABEL_82;
    }
  }

  else
  {
    v384 = v496;
    v385 = sub_22728473C(0);
    if (v384)
    {
      goto LABEL_81;
    }

    v386 = v385;
    [v385 setResultType_];
    sub_226E99364(0, &qword_281398AE0, 0x277CBE448);
    v387 = sub_22766C9E0();
    v496 = 0;
    v388 = sub_226EDAB24(v387);

    sub_226EDAB78(v388, v83);
  }

  v86 = __swift_project_boxed_opaque_existential_0(v495, v495[3]);
  v87 = *v86;
  v88 = v86[1];
  v89 = v86[3];
  v90 = *(v86 + 16);
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB910, &qword_22767B3B0);
  v92 = *(v91 + 48);
  v93 = *(v91 + 52);
  v94 = swift_allocObject();
  v95 = v87;
  v96 = v88;

  sub_22766A070();
  *(v94 + 16) = v95;
  *(v94 + 24) = v96;
  *(v94 + 32) = v90;
  *(v94 + 40) = v89;
  v97 = qword_2813B2078;
  swift_beginAccess();
  v98 = sub_2275429C0(v94 + v97, v90, v89);
  if (v98)
  {
    if (v98 != 1)
    {
      goto LABEL_82;
    }
  }

  else
  {
    v389 = v496;
    v390 = sub_227284784(0);
    if (v389)
    {
      goto LABEL_81;
    }

    v391 = v390;
    [v390 setResultType_];
    sub_226E99364(0, &qword_281398AE0, 0x277CBE448);
    v392 = sub_22766C9E0();
    v496 = 0;
    v393 = sub_226EDAB24(v392);

    sub_226EDAB78(v393, v96);
  }

  v99 = __swift_project_boxed_opaque_existential_0(v495, v495[3]);
  v100 = *v99;
  v101 = v99[1];
  v102 = v99[3];
  v103 = *(v99 + 16);
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8F80, &qword_227672A00);
  v105 = *(v104 + 48);
  v106 = *(v104 + 52);
  v107 = swift_allocObject();
  v108 = v100;
  v109 = v101;

  sub_22766A070();
  *(v107 + 16) = v108;
  *(v107 + 24) = v109;
  *(v107 + 32) = v103;
  *(v107 + 40) = v102;
  v110 = qword_2813B2078;
  swift_beginAccess();
  v111 = sub_227542D60(v107 + v110, v103, v102);
  if (v111)
  {
    if (v111 != 1)
    {
      goto LABEL_82;
    }
  }

  else
  {
    v394 = v496;
    v395 = sub_227284904(0);
    if (v394)
    {
      goto LABEL_81;
    }

    v396 = v395;
    [v395 setResultType_];
    sub_226E99364(0, &qword_281398AE0, 0x277CBE448);
    v397 = sub_22766C9E0();
    v496 = 0;
    v408 = sub_226EDAB24(v397);

    sub_226EDAB78(v408, v109);
  }

  v112 = __swift_project_boxed_opaque_existential_0(v495, v495[3]);
  v113 = *v112;
  v114 = v112[1];
  v115 = v112[3];
  v116 = *(v112 + 16);
  v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9010, &unk_227672BD0);
  v118 = *(v117 + 48);
  v119 = *(v117 + 52);
  v120 = swift_allocObject();
  v121 = v113;
  v122 = v114;

  sub_22766A070();
  *(v120 + 16) = v121;
  *(v120 + 24) = v122;
  *(v120 + 32) = v116;
  *(v120 + 40) = v115;
  v123 = qword_2813B2078;
  swift_beginAccess();
  v124 = sub_227542D18(v120 + v123, v116, v115);
  if (v124)
  {
    if (v124 != 1)
    {
      goto LABEL_82;
    }
  }

  else
  {
    v398 = v496;
    v399 = sub_2272848EC(0);
    if (v398)
    {
      goto LABEL_81;
    }

    v400 = v399;
    [v399 setResultType_];
    sub_226E99364(0, &qword_281398AE0, 0x277CBE448);
    v401 = sub_22766C9E0();
    v496 = 0;
    v402 = sub_226EDAB24(v401);

    sub_226EDAB78(v402, v122);
  }

  v125 = __swift_project_boxed_opaque_existential_0(v495, v495[3]);
  v126 = *v125;
  v127 = v125[1];
  v128 = v125[3];
  v129 = *(v125 + 16);
  v130 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9018, &unk_22767F020);
  v131 = *(v130 + 48);
  v132 = *(v130 + 52);
  v133 = swift_allocObject();
  v134 = v126;
  v135 = v127;

  sub_22766A070();
  *(v133 + 16) = v134;
  *(v133 + 24) = v135;
  *(v133 + 32) = v129;
  *(v133 + 40) = v128;
  v136 = qword_2813B2078;
  swift_beginAccess();
  v137 = sub_227542CF8(v133 + v136, v129, v128);
  if (v137)
  {
    if (v137 != 1)
    {
      goto LABEL_82;
    }
  }

  else
  {
    v403 = v496;
    v404 = sub_227244EA0(0);
    if (v403)
    {
      goto LABEL_81;
    }

    v405 = v404;
    [v404 setResultType_];
    sub_226E99364(0, &qword_281398AE0, 0x277CBE448);
    v406 = sub_22766C9E0();
    v496 = 0;
    v407 = sub_226EDAB24(v406);

    sub_226EDAB78(v407, v135);
  }

  v138 = __swift_project_boxed_opaque_existential_0(v495, v495[3]);
  v139 = *v138;
  v140 = v138[1];
  v141 = v138[3];
  v142 = *(v138 + 16);
  v143 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9020, &unk_227672BE0);
  v144 = *(v143 + 48);
  v145 = *(v143 + 52);
  v146 = swift_allocObject();
  v147 = v139;
  v148 = v140;

  sub_22766A070();
  *(v146 + 16) = v147;
  *(v146 + 24) = v148;
  *(v146 + 32) = v142;
  *(v146 + 40) = v141;
  v149 = qword_2813B2078;
  swift_beginAccess();
  v150 = sub_227542CB0(v146 + v149, v142, v141);
  if (v150)
  {
    if (v150 != 1)
    {
      goto LABEL_82;
    }
  }

  else
  {
    v409 = v496;
    v410 = sub_227284934(0);
    if (v409)
    {
      goto LABEL_81;
    }

    v411 = v410;
    [v410 setResultType_];
    sub_226E99364(0, &qword_281398AE0, 0x277CBE448);
    v412 = sub_22766C9E0();
    v496 = 0;
    v413 = sub_226EDAB24(v412);

    sub_226EDAB78(v413, v148);
  }

  v151 = __swift_project_boxed_opaque_existential_0(v495, v495[3]);
  v152 = *v151;
  v153 = v151[1];
  v154 = v151[3];
  v155 = *(v151 + 16);
  v156 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9028, &unk_22767F070);
  v157 = *(v156 + 48);
  v158 = *(v156 + 52);
  v159 = swift_allocObject();
  v160 = v152;
  v161 = v153;

  sub_22766A070();
  *(v159 + 16) = v160;
  *(v159 + 24) = v161;
  *(v159 + 32) = v155;
  *(v159 + 40) = v154;
  v162 = qword_2813B2078;
  swift_beginAccess();
  v163 = sub_2275428E8(v159 + v162, v155, v154);
  if (v163)
  {
    if (v163 != 1)
    {
      goto LABEL_82;
    }
  }

  else
  {
    v414 = v496;
    v415 = sub_22728476C(0);
    if (v414)
    {
      goto LABEL_81;
    }

    v416 = v415;
    [v415 setResultType_];
    sub_226E99364(0, &qword_281398AE0, 0x277CBE448);
    v417 = sub_22766C9E0();
    v496 = 0;
    v418 = sub_226EDAB24(v417);

    sub_226EDAB78(v418, v161);
  }

  v164 = __swift_project_boxed_opaque_existential_0(v495, v495[3]);
  v165 = *v164;
  v166 = v164[1];
  v167 = v164[3];
  v168 = *(v164 + 16);
  v169 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8F30, &unk_22767F080);
  v170 = *(v169 + 48);
  v171 = *(v169 + 52);
  v172 = swift_allocObject();
  v173 = v165;
  v174 = v166;

  sub_22766A070();
  *(v172 + 16) = v173;
  *(v172 + 24) = v174;
  *(v172 + 32) = v168;
  *(v172 + 40) = v167;
  v175 = qword_2813B2078;
  swift_beginAccess();
  v176 = sub_227542858(v172 + v175, v168, v167);
  if (v176)
  {
    if (v176 != 1)
    {
      goto LABEL_82;
    }
  }

  else
  {
    v419 = v496;
    v420 = sub_22728488C(0);
    if (v419)
    {
      goto LABEL_81;
    }

    v421 = v420;
    [v420 setResultType_];
    sub_226E99364(0, &qword_281398AE0, 0x277CBE448);
    v422 = sub_22766C9E0();
    v496 = 0;
    v423 = sub_226EDAB24(v422);

    sub_226EDAB78(v423, v174);
  }

  v177 = __swift_project_boxed_opaque_existential_0(v495, v495[3]);
  v178 = *v177;
  v179 = v177[1];
  v180 = v177[3];
  v181 = *(v177 + 16);
  v182 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8FC0, qword_22767B370);
  v183 = *(v182 + 48);
  v184 = *(v182 + 52);
  v185 = swift_allocObject();
  v186 = v178;
  v187 = v179;

  sub_22766A070();
  *(v185 + 16) = v186;
  *(v185 + 24) = v187;
  *(v185 + 32) = v181;
  *(v185 + 40) = v180;
  v188 = qword_2813B2078;
  swift_beginAccess();
  v189 = sub_227542978(v185 + v188, v181, v180);
  if (v189)
  {
    if (v189 != 1)
    {
      goto LABEL_82;
    }
  }

  else
  {
    v424 = v496;
    v425 = sub_227284754(0);
    if (v424)
    {
      goto LABEL_81;
    }

    v426 = v425;
    [v425 setResultType_];
    sub_226E99364(0, &qword_281398AE0, 0x277CBE448);
    v427 = sub_22766C9E0();
    v496 = 0;
    v428 = sub_226EDAB24(v427);

    sub_226EDAB78(v428, v187);
  }

  v190 = __swift_project_boxed_opaque_existential_0(v495, v495[3]);
  v191 = *v190;
  v192 = v190[1];
  v193 = v190[3];
  v194 = *(v190 + 16);
  v195 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9030, &unk_227672BF0);
  v196 = *(v195 + 48);
  v197 = *(v195 + 52);
  v198 = swift_allocObject();
  v199 = v191;
  v200 = v192;

  sub_22766A070();
  *(v198 + 16) = v199;
  *(v198 + 24) = v200;
  *(v198 + 32) = v194;
  *(v198 + 40) = v193;
  v201 = qword_2813B2078;
  swift_beginAccess();
  v202 = sub_227542C90(v198 + v201, v194, v193);
  if (v202)
  {
    if (v202 != 1)
    {
      goto LABEL_82;
    }
  }

  else
  {
    v429 = v496;
    v430 = sub_2272444A0(0);
    if (v429)
    {
      goto LABEL_81;
    }

    v431 = v430;
    [v430 setResultType_];
    sub_226E99364(0, &qword_281398AE0, 0x277CBE448);
    v432 = sub_22766C9E0();
    v496 = 0;
    v433 = sub_226EDAB24(v432);

    sub_226EDAB78(v433, v200);
  }

  v203 = __swift_project_boxed_opaque_existential_0(v495, v495[3]);
  v204 = *v203;
  v205 = v203[1];
  v206 = v203[3];
  v207 = *(v203 + 16);
  v208 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8FB8, &unk_227672A60);
  v209 = *(v208 + 48);
  v210 = *(v208 + 52);
  v211 = swift_allocObject();
  v212 = v204;
  v213 = v205;

  sub_22766A070();
  *(v211 + 16) = v212;
  *(v211 + 24) = v213;
  *(v211 + 32) = v207;
  *(v211 + 40) = v206;
  v214 = qword_2813B2078;
  swift_beginAccess();
  v215 = sub_227542C48(v211 + v214, v207, v206);
  if (v215)
  {
    if (v215 != 1)
    {
      goto LABEL_82;
    }
  }

  else
  {
    v434 = v496;
    v435 = sub_227284874(0);
    if (v434)
    {
      goto LABEL_81;
    }

    v436 = v435;
    [v435 setResultType_];
    sub_226E99364(0, &qword_281398AE0, 0x277CBE448);
    v437 = sub_22766C9E0();
    v496 = 0;
    v438 = sub_226EDAB24(v437);

    sub_226EDAB78(v438, v213);
  }

  v216 = __swift_project_boxed_opaque_existential_0(v495, v495[3]);
  v217 = *v216;
  v218 = v216[1];
  v219 = v216[3];
  v220 = *(v216 + 16);
  v221 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9038, &unk_22767F030);
  v222 = *(v221 + 48);
  v223 = *(v221 + 52);
  v224 = swift_allocObject();
  v225 = v217;
  v226 = v218;

  sub_22766A070();
  *(v224 + 16) = v225;
  *(v224 + 24) = v226;
  *(v224 + 32) = v220;
  *(v224 + 40) = v219;
  v227 = qword_2813B2078;
  swift_beginAccess();
  v228 = sub_227542C28(v224 + v227, v220, v219);
  if (v228)
  {
    if (v228 != 1)
    {
      goto LABEL_82;
    }
  }

  else
  {
    v439 = v496;
    v440 = sub_227243AA0(0);
    if (v439)
    {
      goto LABEL_81;
    }

    v441 = v440;
    [v440 setResultType_];
    sub_226E99364(0, &qword_281398AE0, 0x277CBE448);
    v442 = sub_22766C9E0();
    v496 = 0;
    v443 = sub_226EDAB24(v442);

    sub_226EDAB78(v443, v226);
  }

  v229 = __swift_project_boxed_opaque_existential_0(v495, v495[3]);
  v230 = *v229;
  v231 = v229[1];
  v232 = v229[3];
  v233 = *(v229 + 16);
  v234 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9040, &unk_227672C00);
  v235 = *(v234 + 48);
  v236 = *(v234 + 52);
  v237 = swift_allocObject();
  v238 = v230;
  v239 = v231;

  sub_22766A070();
  *(v237 + 16) = v238;
  *(v237 + 24) = v239;
  *(v237 + 32) = v233;
  *(v237 + 40) = v232;
  v240 = qword_2813B2078;
  swift_beginAccess();
  v241 = sub_227542C08(v237 + v240, v233, v232);
  if (v241)
  {
    if (v241 != 1)
    {
      goto LABEL_82;
    }
  }

  else
  {
    v444 = v496;
    v445 = sub_2272435A0(0);
    if (v444)
    {
      goto LABEL_81;
    }

    v446 = v445;
    [v445 setResultType_];
    sub_226E99364(0, &qword_281398AE0, 0x277CBE448);
    v447 = sub_22766C9E0();
    v496 = 0;
    v448 = sub_226EDAB24(v447);

    sub_226EDAB78(v448, v239);
  }

  v242 = __swift_project_boxed_opaque_existential_0(v495, v495[3]);
  v243 = *v242;
  v244 = v242[1];
  v245 = v242[3];
  v246 = *(v242 + 16);
  v247 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8F88, &qword_227672A08);
  v248 = *(v247 + 48);
  v249 = *(v247 + 52);
  v250 = swift_allocObject();
  v251 = v243;
  v252 = v244;

  sub_22766A070();
  *(v250 + 16) = v251;
  *(v250 + 24) = v252;
  *(v250 + 32) = v246;
  *(v250 + 40) = v245;
  v253 = qword_2813B2078;
  swift_beginAccess();
  v254 = sub_227542BC0(v250 + v253, v246, v245);
  if (v254)
  {
    if (v254 != 1)
    {
      goto LABEL_82;
    }
  }

  else
  {
    v449 = v496;
    v450 = sub_22728485C(0);
    if (v449)
    {
      goto LABEL_81;
    }

    v451 = v450;
    [v450 setResultType_];
    sub_226E99364(0, &qword_281398AE0, 0x277CBE448);
    v452 = sub_22766C9E0();
    v496 = 0;
    v453 = sub_226EDAB24(v452);

    sub_226EDAB78(v453, v252);
  }

  v255 = __swift_project_boxed_opaque_existential_0(v495, v495[3]);
  v256 = *v255;
  v257 = v255[1];
  v258 = v255[3];
  v259 = *(v255 + 16);
  v260 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9048, &unk_22767F040);
  v261 = *(v260 + 48);
  v262 = *(v260 + 52);
  v263 = swift_allocObject();
  v264 = v256;
  v265 = v257;

  sub_22766A070();
  *(v263 + 16) = v264;
  *(v263 + 24) = v265;
  *(v263 + 32) = v259;
  *(v263 + 40) = v258;
  v266 = qword_2813B2078;
  swift_beginAccess();
  v267 = sub_227542BA0(v263 + v266, v259, v258);
  if (v267)
  {
    if (v267 != 1)
    {
      goto LABEL_82;
    }
  }

  else
  {
    v454 = v496;
    v455 = sub_2272430A0(0);
    if (v454)
    {
      goto LABEL_81;
    }

    v456 = v455;
    [v455 setResultType_];
    sub_226E99364(0, &qword_281398AE0, 0x277CBE448);
    v457 = sub_22766C9E0();
    v496 = 0;
    v458 = sub_226EDAB24(v457);

    sub_226EDAB78(v458, v265);
  }

  v268 = __swift_project_boxed_opaque_existential_0(v495, v495[3]);
  v269 = *v268;
  v270 = v268[1];
  v271 = v268[3];
  v272 = *(v268 + 16);
  v273 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8F40, &qword_227672990);
  v274 = *(v273 + 48);
  v275 = *(v273 + 52);
  v276 = swift_allocObject();
  v277 = v269;
  v278 = v270;

  sub_22766A070();
  *(v276 + 16) = v277;
  *(v276 + 24) = v278;
  *(v276 + 32) = v272;
  *(v276 + 40) = v271;
  v279 = qword_2813B2078;
  swift_beginAccess();
  v280 = sub_227542B58(v276 + v279, v272, v271);
  if (v280)
  {
    if (v280 != 1)
    {
      goto LABEL_82;
    }
  }

  else
  {
    v459 = v496;
    v460 = sub_2272848D4(0);
    if (v459)
    {
      goto LABEL_81;
    }

    v461 = v460;
    [v460 setResultType_];
    sub_226E99364(0, &qword_281398AE0, 0x277CBE448);
    v462 = sub_22766C9E0();
    v496 = 0;
    v463 = sub_226EDAB24(v462);

    sub_226EDAB78(v463, v278);
  }

  v281 = __swift_project_boxed_opaque_existential_0(v495, v495[3]);
  v282 = *v281;
  v283 = v281[1];
  v284 = v281[3];
  v285 = *(v281 + 16);
  v286 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9050, &unk_227672C10);
  v287 = *(v286 + 48);
  v288 = *(v286 + 52);
  v289 = swift_allocObject();
  v290 = v282;
  v291 = v283;

  sub_22766A070();
  *(v289 + 16) = v290;
  *(v289 + 24) = v291;
  *(v289 + 32) = v285;
  *(v289 + 40) = v284;
  v292 = qword_2813B2078;
  swift_beginAccess();
  v293 = sub_227542B38(v289 + v292, v285, v284);
  if (v293)
  {
    if (v293 != 1)
    {
      goto LABEL_82;
    }
  }

  else
  {
    v464 = v496;
    v465 = sub_227242BA0(0);
    if (v464)
    {
      goto LABEL_81;
    }

    v466 = v465;
    [v465 setResultType_];
    sub_226E99364(0, &qword_281398AE0, 0x277CBE448);
    v467 = sub_22766C9E0();
    v496 = 0;
    v468 = sub_226EDAB24(v467);

    sub_226EDAB78(v468, v291);
  }

  v294 = __swift_project_boxed_opaque_existential_0(v495, v495[3]);
  v295 = *v294;
  v296 = v294[1];
  v297 = v294[3];
  v298 = *(v294 + 16);
  v299 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9058, &unk_22767F050);
  v300 = *(v299 + 48);
  v301 = *(v299 + 52);
  v302 = swift_allocObject();
  v303 = v295;
  v304 = v296;

  sub_22766A070();
  *(v302 + 16) = v303;
  *(v302 + 24) = v304;
  *(v302 + 32) = v298;
  *(v302 + 40) = v297;
  v305 = qword_2813B2078;
  swift_beginAccess();
  v306 = sub_227542B18(v302 + v305, v298, v297);
  if (v306)
  {
    if (v306 != 1)
    {
      goto LABEL_82;
    }
  }

  else
  {
    v469 = v496;
    v470 = sub_2272426A0(0);
    if (v469)
    {
      goto LABEL_81;
    }

    v471 = v470;
    [v470 setResultType_];
    sub_226E99364(0, &qword_281398AE0, 0x277CBE448);
    v472 = sub_22766C9E0();
    v496 = 0;
    v473 = sub_226EDAB24(v472);

    sub_226EDAB78(v473, v304);
  }

  v307 = __swift_project_boxed_opaque_existential_0(v495, v495[3]);
  v308 = *v307;
  v309 = v307[1];
  v310 = v307[3];
  v311 = *(v307 + 16);
  v312 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9060, qword_227672C20);
  v313 = *(v312 + 48);
  v314 = *(v312 + 52);
  v315 = swift_allocObject();
  v316 = v308;
  v317 = v309;

  sub_22766A070();
  *(v315 + 16) = v316;
  *(v315 + 24) = v317;
  *(v315 + 32) = v311;
  *(v315 + 40) = v310;
  v318 = qword_2813B2078;
  swift_beginAccess();
  v319 = sub_227542A28(v315 + v318, v311, v310);
  if (v319)
  {
    if (v319 != 1)
    {
      goto LABEL_82;
    }
  }

  else
  {
    v474 = v496;
    v475 = sub_2272421A0(0);
    if (v474)
    {
      goto LABEL_81;
    }

    v476 = v475;
    [v475 setResultType_];
    sub_226E99364(0, &qword_281398AE0, 0x277CBE448);
    v477 = sub_22766C9E0();
    v496 = 0;
    v478 = sub_226EDAB24(v477);

    sub_226EDAB78(v478, v317);
  }

  v320 = __swift_project_boxed_opaque_existential_0(v495, v495[3]);
  v321 = *v320;
  v322 = v320[1];
  v323 = v320[3];
  v324 = *(v320 + 16);
  v325 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8F58, &qword_2276729A8);
  v326 = *(v325 + 48);
  v327 = *(v325 + 52);
  v328 = swift_allocObject();
  v329 = v321;
  v330 = v322;

  sub_22766A070();
  *(v328 + 16) = v329;
  *(v328 + 24) = v330;
  *(v328 + 32) = v324;
  *(v328 + 40) = v323;
  v331 = qword_2813B2078;
  swift_beginAccess();
  v332 = sub_2275427C8(v328 + v331, v324, v323);
  if (v332)
  {
    if (v332 != 1)
    {
      goto LABEL_82;
    }
  }

  else
  {
    v479 = v496;
    v480 = sub_227284844(0);
    if (v479)
    {
      goto LABEL_81;
    }

    v481 = v480;
    [v480 setResultType_];
    sub_226E99364(0, &qword_281398AE0, 0x277CBE448);
    v482 = sub_22766C9E0();
    v496 = 0;
    v483 = sub_226EDAB24(v482);

    sub_226EDAB78(v483, v330);
  }

  v333 = __swift_project_boxed_opaque_existential_0(v495, v495[3]);
  v334 = *v333;
  v335 = v333[1];
  v336 = v333[3];
  v337 = *(v333 + 16);
  v338 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8F78, &qword_22767F0A0);
  v339 = *(v338 + 48);
  v340 = *(v338 + 52);
  v341 = swift_allocObject();
  v342 = v334;
  v343 = v335;

  sub_22766A070();
  *(v341 + 16) = v342;
  *(v341 + 24) = v343;
  *(v341 + 32) = v337;
  *(v341 + 40) = v336;
  v344 = qword_2813B2078;
  swift_beginAccess();
  v345 = sub_2275428A0(v341 + v344, v337, v336);
  if (v345)
  {
    if (v345 == 1)
    {

      goto LABEL_79;
    }

LABEL_82:
    swift_willThrow();
    goto LABEL_81;
  }

  v484 = v496;
  v485 = sub_22728482C(0);
  if (v484)
  {
    goto LABEL_81;
  }

  v490 = v485;
  [v485 setResultType_];
  sub_226E99364(0, &qword_281398AE0, 0x277CBE448);
  v491 = sub_22766C9E0();
  v496 = 0;
  v492 = sub_226EDAB24(v491);

  sub_226EDAB78(v492, v343);

LABEL_79:
  v346 = __swift_project_boxed_opaque_existential_0(v495, v495[3]);
  v347 = *v346;
  v348 = v346[1];
  v349 = v346[3];
  v350 = *(v346 + 16);
  v351 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8FF8, &unk_22767F060);
  v352 = *(v351 + 48);
  v353 = *(v351 + 52);
  v354 = swift_allocObject();
  v355 = v347;
  v356 = v348;

  sub_22766A070();
  *(v354 + 16) = v355;
  *(v354 + 24) = v356;
  *(v354 + 32) = v350;
  *(v354 + 40) = v349;
  v357 = qword_2813B2078;
  swift_beginAccess();
  v358 = sub_227542A08(v354 + v357, v350, v349);
  if (v358)
  {
    if (v358 != 1)
    {
      swift_willThrow();
    }

    goto LABEL_81;
  }

  v486 = v496;
  v487 = sub_22728479C(0);
  if (v486)
  {
LABEL_81:

    return;
  }

  v488 = v487;
  [v487 setResultType_];
  sub_226E99364(0, &qword_281398AE0, 0x277CBE448);
  v489 = sub_22766C9E0();
  v493 = sub_226EDAB24(v489);

  sub_226EDAB78(v493, v356);
}

void sub_226F8F46C(void *a1)
{
  v3 = sub_22766B390();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A770();
  sub_22766B370();
  (*(v4 + 8))(v7, v3);
  v8 = __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  v9 = *v8;
  v10 = v8[1];
  v11 = v8[3];
  v12 = *(v8 + 16);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB910, &qword_22767B3B0);
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  v16 = swift_allocObject();
  v17 = v9;
  v18 = v10;

  sub_22766A070();
  *(v16 + 16) = v17;
  *(v16 + 24) = v18;
  *(v16 + 32) = v12;
  *(v16 + 40) = v11;
  v19 = qword_2813B2078;
  swift_beginAccess();
  v20 = sub_2275429C0(v16 + v19, v12, v11);
  if (v20)
  {
    if (v20 != 1)
    {
      swift_willThrow();
    }
  }

  else
  {
    v21 = sub_227284784(0);
    if (!v1)
    {
      v22 = v21;
      [v21 setResultType_];
      sub_226E99364(0, &qword_281398AE0, 0x277CBE448);
      v23 = sub_22766C9E0();
      v24 = sub_226EDAB24(v23);

      sub_226EDAB78(v24, v18);

      return;
    }
  }
}

void sub_226F8F718(void *a1)
{
  v3 = sub_22766B390();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A770();
  sub_22766B370();
  (*(v4 + 8))(v7, v3);
  v8 = __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  v9 = *v8;
  v10 = v8[1];
  v11 = v8[3];
  v12 = *(v8 + 16);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8FB0, &qword_22767CDE0);
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  v16 = swift_allocObject();
  v17 = v9;
  v18 = v10;

  sub_22766A070();
  *(v16 + 16) = v17;
  *(v16 + 24) = v18;
  *(v16 + 32) = v12;
  *(v16 + 40) = v11;
  v19 = qword_2813B2078;
  swift_beginAccess();
  v20 = sub_227542DA8(v16 + v19, v12, v11);
  if (v20)
  {
    if (v20 != 1)
    {
      swift_willThrow();
    }
  }

  else
  {
    v21 = sub_227284724(0);
    if (!v1)
    {
      v22 = v21;
      [v21 setResultType_];
      sub_226E99364(0, &qword_281398AE0, 0x277CBE448);
      v23 = sub_22766C9E0();
      v24 = sub_226EDAB24(v23);

      sub_226EDAB78(v24, v18);

      return;
    }
  }
}

void sub_226F8F9C4(void *a1)
{
  v3 = sub_22766B390();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A770();
  sub_22766B370();
  (*(v4 + 8))(v7, v3);
  v8 = __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  v9 = *v8;
  v10 = v8[1];
  v11 = v8[3];
  v12 = *(v8 + 16);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8F48, &qword_227672998);
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  v16 = swift_allocObject();
  v17 = v9;
  v18 = v10;

  sub_22766A070();
  *(v16 + 16) = v17;
  *(v16 + 24) = v18;
  *(v16 + 32) = v12;
  *(v16 + 40) = v11;
  v19 = qword_2813B2078;
  swift_beginAccess();
  v20 = sub_227542E58(v16 + v19, v12, v11);
  if (v20)
  {
    if (v20 != 1)
    {
      swift_willThrow();
    }
  }

  else
  {
    v21 = sub_22728491C(0);
    if (!v1)
    {
      v22 = v21;
      [v21 setResultType_];
      sub_226E99364(0, &qword_281398AE0, 0x277CBE448);
      v23 = sub_22766C9E0();
      v24 = sub_226EDAB24(v23);

      sub_226EDAB78(v24, v18);

      return;
    }
  }
}

void sub_226F8FC70(void *a1)
{
  v3 = sub_22766B390();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A770();
  sub_22766B370();
  (*(v4 + 8))(v7, v3);
  v8 = __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  v9 = *v8;
  v10 = v8[1];
  v11 = v8[3];
  v12 = *(v8 + 16);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8F80, &qword_227672A00);
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  v16 = swift_allocObject();
  v17 = v9;
  v18 = v10;

  sub_22766A070();
  *(v16 + 16) = v17;
  *(v16 + 24) = v18;
  *(v16 + 32) = v12;
  *(v16 + 40) = v11;
  v19 = qword_2813B2078;
  swift_beginAccess();
  v20 = sub_227542D60(v16 + v19, v12, v11);
  if (v20)
  {
    if (v20 != 1)
    {
      swift_willThrow();
    }
  }

  else
  {
    v21 = sub_227284904(0);
    if (!v1)
    {
      v22 = v21;
      [v21 setResultType_];
      sub_226E99364(0, &qword_281398AE0, 0x277CBE448);
      v23 = sub_22766C9E0();
      v24 = sub_226EDAB24(v23);

      sub_226EDAB78(v24, v18);

      return;
    }
  }
}

void sub_226F8FF1C(void *a1)
{
  v3 = sub_22766B390();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A770();
  sub_22766B370();
  (*(v4 + 8))(v7, v3);
  v8 = __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  v9 = *v8;
  v10 = v8[1];
  v11 = v8[3];
  v12 = *(v8 + 16);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9010, &unk_227672BD0);
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  v16 = swift_allocObject();
  v17 = v9;
  v18 = v10;

  sub_22766A070();
  *(v16 + 16) = v17;
  *(v16 + 24) = v18;
  *(v16 + 32) = v12;
  *(v16 + 40) = v11;
  v19 = qword_2813B2078;
  swift_beginAccess();
  v20 = sub_227542D18(v16 + v19, v12, v11);
  if (v20)
  {
    if (v20 != 1)
    {
      swift_willThrow();
    }
  }

  else
  {
    v21 = sub_2272848EC(0);
    if (!v1)
    {
      v22 = v21;
      [v21 setResultType_];
      sub_226E99364(0, &qword_281398AE0, 0x277CBE448);
      v23 = sub_22766C9E0();
      v24 = sub_226EDAB24(v23);

      sub_226EDAB78(v24, v18);

      return;
    }
  }
}

void sub_226F901C8(void *a1)
{
  v3 = sub_22766B390();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A770();
  sub_22766B370();
  (*(v4 + 8))(v7, v3);
  v8 = __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  v9 = *v8;
  v10 = v8[1];
  v11 = v8[3];
  v12 = *(v8 + 16);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9020, &unk_227672BE0);
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  v16 = swift_allocObject();
  v17 = v9;
  v18 = v10;

  sub_22766A070();
  *(v16 + 16) = v17;
  *(v16 + 24) = v18;
  *(v16 + 32) = v12;
  *(v16 + 40) = v11;
  v19 = qword_2813B2078;
  swift_beginAccess();
  v20 = sub_227542CB0(v16 + v19, v12, v11);
  if (v20)
  {
    if (v20 != 1)
    {
      swift_willThrow();
    }
  }

  else
  {
    v21 = sub_227284934(0);
    if (!v1)
    {
      v22 = v21;
      [v21 setResultType_];
      sub_226E99364(0, &qword_281398AE0, 0x277CBE448);
      v23 = sub_22766C9E0();
      v24 = sub_226EDAB24(v23);

      sub_226EDAB78(v24, v18);

      return;
    }
  }
}

void sub_226F90470(void *a1)
{
  v3 = sub_22766B390();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A770();
  sub_22766B370();
  (*(v4 + 8))(v7, v3);
  v8 = __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  v9 = *v8;
  v10 = v8[1];
  v11 = v8[3];
  v12 = *(v8 + 16);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8FD8, &unk_227672B10);
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  v16 = swift_allocObject();
  v17 = v9;
  v18 = v10;

  sub_22766A070();
  *(v16 + 16) = v17;
  *(v16 + 24) = v18;
  *(v16 + 32) = v12;
  *(v16 + 40) = v11;
  v19 = qword_2813B2078;
  swift_beginAccess();
  v20 = sub_227542EA0(v16 + v19, v12, v11);
  if (v20)
  {
    if (v20 != 1)
    {
      swift_willThrow();
    }
  }

  else
  {
    v21 = sub_227246CA0(0);
    if (!v1)
    {
      v22 = v21;
      [v21 setResultType_];
      sub_226E99364(0, &qword_281398AE0, 0x277CBE448);
      v23 = sub_22766C9E0();
      v24 = sub_226EDAB24(v23);

      sub_226EDAB78(v24, v18);

      return;
    }
  }
}

void sub_226F9071C(void *a1)
{
  v3 = sub_22766B390();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A770();
  sub_22766B370();
  (*(v4 + 8))(v7, v3);
  v8 = __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  v9 = *v8;
  v10 = v8[1];
  v11 = v8[3];
  v12 = *(v8 + 16);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8FB8, &unk_227672A60);
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  v16 = swift_allocObject();
  v17 = v9;
  v18 = v10;

  sub_22766A070();
  *(v16 + 16) = v17;
  *(v16 + 24) = v18;
  *(v16 + 32) = v12;
  *(v16 + 40) = v11;
  v19 = qword_2813B2078;
  swift_beginAccess();
  v20 = sub_227542C48(v16 + v19, v12, v11);
  if (v20)
  {
    if (v20 != 1)
    {
      swift_willThrow();
    }
  }

  else
  {
    v21 = sub_227284874(0);
    if (!v1)
    {
      v22 = v21;
      [v21 setResultType_];
      sub_226E99364(0, &qword_281398AE0, 0x277CBE448);
      v23 = sub_22766C9E0();
      v24 = sub_226EDAB24(v23);

      sub_226EDAB78(v24, v18);

      return;
    }
  }
}

void sub_226F909C8(void *a1)
{
  v3 = sub_22766B390();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A770();
  sub_22766B370();
  (*(v4 + 8))(v7, v3);
  v8 = __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  v9 = *v8;
  v10 = v8[1];
  v11 = v8[3];
  v12 = *(v8 + 16);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8F88, &qword_227672A08);
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  v16 = swift_allocObject();
  v17 = v9;
  v18 = v10;

  sub_22766A070();
  *(v16 + 16) = v17;
  *(v16 + 24) = v18;
  *(v16 + 32) = v12;
  *(v16 + 40) = v11;
  v19 = qword_2813B2078;
  swift_beginAccess();
  v20 = sub_227542BC0(v16 + v19, v12, v11);
  if (v20)
  {
    if (v20 != 1)
    {
      swift_willThrow();
    }
  }

  else
  {
    v21 = sub_22728485C(0);
    if (!v1)
    {
      v22 = v21;
      [v21 setResultType_];
      sub_226E99364(0, &qword_281398AE0, 0x277CBE448);
      v23 = sub_22766C9E0();
      v24 = sub_226EDAB24(v23);

      sub_226EDAB78(v24, v18);

      return;
    }
  }
}

void sub_226F90C74(void *a1)
{
  v3 = sub_22766B390();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A770();
  sub_22766B370();
  (*(v4 + 8))(v7, v3);
  v8 = __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  v9 = *v8;
  v10 = v8[1];
  v11 = v8[3];
  v12 = *(v8 + 16);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8F40, &qword_227672990);
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  v16 = swift_allocObject();
  v17 = v9;
  v18 = v10;

  sub_22766A070();
  *(v16 + 16) = v17;
  *(v16 + 24) = v18;
  *(v16 + 32) = v12;
  *(v16 + 40) = v11;
  v19 = qword_2813B2078;
  swift_beginAccess();
  v20 = sub_227542B58(v16 + v19, v12, v11);
  if (v20)
  {
    if (v20 != 1)
    {
      swift_willThrow();
    }
  }

  else
  {
    v21 = sub_2272848D4(0);
    if (!v1)
    {
      v22 = v21;
      [v21 setResultType_];
      sub_226E99364(0, &qword_281398AE0, 0x277CBE448);
      v23 = sub_22766C9E0();
      v24 = sub_226EDAB24(v23);

      sub_226EDAB78(v24, v18);

      return;
    }
  }
}

uint64_t sub_226F90F20(void *a1)
{
  v2 = __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  v3 = *v2;
  v4 = v2[1];
  v5 = *(v2 + 16);
  v6 = v2[3];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8FF8, &unk_22767F060);
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  v10 = swift_allocObject();
  v11 = v3;
  v12 = v4;

  sub_22766A070();
  *(v10 + 16) = v11;
  *(v10 + 24) = v12;
  *(v10 + 32) = v5;
  *(v10 + 40) = v6;
  KeyPath = swift_getKeyPath();
  v14 = sub_2273FC820(KeyPath);
  if (v1)
  {

    swift_setDeallocating();

    v15 = *(v10 + 40);

    v16 = qword_2813B2078;
    v17 = sub_22766A100();
    (*(*(v17 - 8) + 8))(v10 + v16, v17);
    v18 = *(*v10 + 48);
    v19 = *(*v10 + 52);
    return swift_deallocClassInstance();
  }

  else
  {
    v21 = sub_226F3E6A8(v14);

    swift_setDeallocating();

    v22 = *(v10 + 40);

    v23 = qword_2813B2078;
    v24 = sub_22766A100();
    (*(*(v24 - 8) + 8))(v10 + v23, v24);
    v25 = *(*v10 + 48);
    v26 = *(*v10 + 52);
    swift_deallocClassInstance();
    return v21;
  }
}

char *sub_226F91154(uint64_t a1, uint64_t a2)
{
  v4 = sub_227662750();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v54 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_227669890();
  v57 = *(v9 - 8);
  v58 = v9;
  v10 = *(v57 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v54 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A830();
  v59 = v5;
  v13 = *(v5 + 16);
  v66 = v4;
  v13(v8, a1, v4);
  sub_226E91B50(a2, v65);
  v55 = v12;
  sub_226E9DD3C("CatalogDataStore::queryLatestCatalogWorkoutReferencesReleasedSince", 66, 2, &dword_226E8E000, 0, v63);
  v14 = [objc_allocWithZone(MEMORY[0x277CCAA68]) init];
  v56 = v8;
  v15 = sub_2276626A0();
  v16 = [v14 stringFromDate_];

  v17 = sub_22766C000();
  v19 = v18;

  v20 = __swift_project_boxed_opaque_existential_0(v65, v65[3]);
  v21 = *v20;
  v22 = v20[1];
  v23 = *(v20 + 16);
  v24 = v20[3];
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8FC0, qword_22767B370);
  v26 = *(v25 + 48);
  v27 = *(v25 + 52);
  v28 = swift_allocObject();
  v29 = v21;
  v30 = v22;

  sub_22766A070();
  *(v28 + 16) = v29;
  *(v28 + 24) = v30;
  *(v28 + 32) = v23;
  *(v28 + 40) = v24;
  swift_getKeyPath();
  v62[3] = MEMORY[0x277D837D0];
  v62[0] = v17;
  v62[1] = v19;
  sub_226E99364(0, &qword_281398B40, 0x277CCA9C0);

  v31 = sub_22766C820();
  sub_226E93170(v62, v60, &unk_27D7BC990, &qword_227670A30);
  v32 = v61;
  if (v61)
  {
    v33 = __swift_project_boxed_opaque_existential_0(v60, v61);
    v34 = *(v32 - 8);
    v35 = *(v34 + 64);
    MEMORY[0x28223BE20](v33);
    v37 = v54 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v34 + 16))(v37);
    v38 = sub_22766D170();
    (*(v34 + 8))(v37, v32);
    __swift_destroy_boxed_opaque_existential_0(v60);
  }

  else
  {
    v38 = 0;
  }

  v39 = [objc_opt_self() expressionForConstantValue_];
  swift_unknownObjectRelease();
  v40 = [objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BB900 &unk_22767CDD0))];

  sub_226E97D1C(v62, &unk_27D7BC990, &qword_227670A30);
  swift_beginAccess();
  v41 = v40;
  v42 = sub_22766A080();
  v44 = v43;
  MEMORY[0x22AA985C0]();
  if (*((*v44 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v44 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v53 = *((*v44 & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_22766C360();
  }

  sub_22766C3A0();
  v42(v62, 0);
  swift_endAccess();

  v45 = v54[1];
  v46 = sub_226EE010C(100);

  swift_setDeallocating();
  v47 = *(v28 + 40);

  v48 = qword_2813B2078;
  v49 = sub_22766A100();
  (*(*(v49 - 8) + 8))(v28 + v48, v49);
  v50 = *(*v28 + 48);
  v51 = *(*v28 + 52);
  swift_deallocClassInstance();
  __swift_project_boxed_opaque_existential_0(v63, v64);
  sub_227669930();
  if (v45)
  {
    swift_willThrow();
    __swift_project_boxed_opaque_existential_0(v63, v64);
    sub_227669920();
  }

  (*(v59 + 8))(v56, v66);
  (*(v57 + 8))(v55, v58);
  __swift_destroy_boxed_opaque_existential_0(v63);
  __swift_destroy_boxed_opaque_existential_0(v65);
  return v46;
}

uint64_t sub_226F918B0(void *a1)
{
  v2 = __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  v3 = *v2;
  v4 = v2[1];
  v5 = *(v2 + 16);
  v6 = v2[3];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8FC0, qword_22767B370);
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  v10 = swift_allocObject();
  v11 = v3;
  v12 = v4;

  sub_22766A070();
  *(v10 + 16) = v11;
  *(v10 + 24) = v12;
  *(v10 + 32) = v5;
  *(v10 + 40) = v6;
  v13 = v10;
  v14 = sub_227284754(0);
  if (v1)
  {
  }

  else
  {
    v15 = v14;
    [v14 setResultType_];
    [v15 setFetchLimit_];
    [v15 setFetchOffset_];
    [v15 setIncludesSubentities_];
    sub_226E99364(0, &qword_28139D220, 0x277CCABB0);
    v13 = sub_22766C9D0();

    swift_setDeallocating();
    v17 = qword_2813B2078;
    v18 = sub_22766A100();
    (*(*(v18 - 8) + 8))(v10 + v17, v18);
    v19 = *(*v10 + 48);
    v20 = *(*v10 + 52);
    swift_deallocClassInstance();
  }

  return v13;
}

char *sub_226F91ACC(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = __swift_project_boxed_opaque_existential_0(a3, a3[3]);
  v4 = *v3;
  v5 = v3[1];
  v6 = *(v3 + 16);
  v7 = v3[3];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8FC0, qword_22767B370);
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  v11 = swift_allocObject();
  v12 = v4;
  v13 = v5;

  sub_22766A070();
  *(v11 + 16) = v12;
  *(v11 + 24) = v13;
  *(v11 + 32) = v6;
  *(v11 + 40) = v7;
  swift_getKeyPath();
  sub_227397FC8();

  swift_beginAccess();
  sub_22766A0D0();
  sub_22766A0F0();
  swift_endAccess();
  v14 = sub_226EE010C(100);

  return v14;
}

char *sub_226F91C44(uint64_t a1, uint64_t a2)
{
  v21[1] = a1;
  v25 = sub_227669890();
  v3 = *(v25 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v25);
  v6 = v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A830();
  sub_226E91B50(a2, v24);
  sub_226E9DD3C("CatalogDataStore::queryLatestCatalogWorkoutReferences", 53, 2, &dword_226E8E000, 0, v22);
  v7 = __swift_project_boxed_opaque_existential_0(v24, v24[3]);
  v8 = *v7;
  v9 = v7[1];
  v10 = *(v7 + 16);
  v11 = v7[3];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8FC0, qword_22767B370);
  v13 = *(v12 + 48);
  v14 = *(v12 + 52);
  v15 = swift_allocObject();
  v16 = v8;
  v17 = v9;

  sub_22766A070();
  *(v15 + 16) = v16;
  *(v15 + 24) = v17;
  *(v15 + 32) = v10;
  *(v15 + 40) = v11;
  swift_getKeyPath();
  sub_227397FC8();

  swift_beginAccess();
  sub_22766A0D0();
  swift_endAccess();
  v18 = v21[2];
  v19 = sub_226EE010C(100);

  __swift_project_boxed_opaque_existential_0(v22, v23);
  sub_227669930();
  if (v18)
  {
    swift_willThrow();
    __swift_project_boxed_opaque_existential_0(v22, v23);
    sub_227669920();
  }

  (*(v3 + 8))(v6, v25);
  __swift_destroy_boxed_opaque_existential_0(v22);
  __swift_destroy_boxed_opaque_existential_0(v24);
  return v19;
}

unint64_t sub_226F91F08(unint64_t result, char a2, void *a3)
{
  v3 = *(result + 16);
  if (!v3)
  {
    return result;
  }

  v4 = a3;
  for (i = (result + 48); ; i += 3)
  {
    v10 = *(i - 2);
    v9 = *(i - 1);
    v11 = *i;
    v12 = *v4;

    result = sub_226E92000(v10, v9);
    v14 = v12[2];
    v15 = (v13 & 1) == 0;
    v16 = __OFADD__(v14, v15);
    v17 = v14 + v15;
    if (v16)
    {
      break;
    }

    v18 = v13;
    if (v12[3] < v17)
    {
      sub_226FE40D8(v17, a2 & 1);
      v19 = *v4;
      result = sub_226E92000(v10, v9);
      if ((v18 & 1) != (v20 & 1))
      {
        goto LABEL_34;
      }

LABEL_11:
      v21 = *v4;
      if ((v18 & 1) == 0)
      {
        goto LABEL_25;
      }

      goto LABEL_12;
    }

    if (a2)
    {
      goto LABEL_11;
    }

    v31 = result;
    sub_226FF1114();
    result = v31;
    v4 = a3;
    v21 = *a3;
    if ((v18 & 1) == 0)
    {
LABEL_25:
      v21[(result >> 6) + 8] |= 1 << result;
      v32 = (v21[6] + 16 * result);
      *v32 = v10;
      v32[1] = v9;
      *(v21[7] + 8 * result) = v11;
      v33 = v21[2];
      v16 = __OFADD__(v33, 1);
      v34 = v33 + 1;
      if (v16)
      {
        goto LABEL_30;
      }

      v21[2] = v34;
      goto LABEL_5;
    }

LABEL_12:
    v22 = *(v21[7] + 8 * result);
    v23 = *(v11 + 16);
    v24 = *(v22 + 2);
    v25 = v24 + v23;
    if (__OFADD__(v24, v23))
    {
      goto LABEL_29;
    }

    v36 = result;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (!isUniquelyReferenced_nonNull_native || (v27 = *(v22 + 3) >> 1, v27 < v25))
    {
      if (v24 <= v25)
      {
        v28 = v24 + v23;
      }

      else
      {
        v28 = v24;
      }

      v22 = sub_226EB3F78(isUniquelyReferenced_nonNull_native, v28, 1, v22);
      v27 = *(v22 + 3) >> 1;
    }

    v4 = a3;
    if (*(v11 + 16))
    {
      if (v27 - *(v22 + 2) < v23)
      {
        goto LABEL_32;
      }

      swift_arrayInitWithCopy();

      if (v23)
      {
        v29 = *(v22 + 2);
        v16 = __OFADD__(v29, v23);
        v30 = v29 + v23;
        if (v16)
        {
          goto LABEL_33;
        }

        *(v22 + 2) = v30;
      }
    }

    else
    {

      if (v23)
      {
        goto LABEL_31;
      }
    }

    v7 = v21[7];
    v8 = *(v7 + 8 * v36);
    *(v7 + 8 * v36) = v22;

LABEL_5:
    a2 = 1;
    if (!--v3)
    {
      return result;
    }
  }

  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  result = sub_22766D220();
  __break(1u);
  return result;
}

uint64_t sub_226F921D4()
{
  v1 = *(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_226F92230@<X0>(uint64_t a1@<X8>)
{
  v27 = a1;
  v1 = sub_227664AE0();
  v2 = *(*(v1 - 8) + 64);
  v3 = MEMORY[0x28223BE20](v1);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v27 - v6;
  v8 = sub_2276624A0();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2276639A0();
  v13 = sub_227662380();
  v15 = v14;
  (*(v9 + 8))(v12, v8);
  if (v13 == 947204973 && v15 == 0xE400000000000000)
  {

    goto LABEL_12;
  }

  v17 = sub_22766D190();

  if (v17)
  {
LABEL_12:
    v19 = *(v28 + 16);
    if (!*(v19 + 16))
    {
      goto LABEL_18;
    }

    v20 = sub_226F3A004(1);
    if ((v22 & 1) == 0)
    {
      goto LABEL_18;
    }

    return sub_226E91B50(*(v19 + 56) + 40 * v20, v27);
  }

  sub_227663970();
  sub_226F322FC(v7, v5);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    sub_226F32360(v5);
    goto LABEL_16;
  }

  if (EnumCaseMultiPayload != 1)
  {
LABEL_16:
    v19 = *(v28 + 16);
    if (!*(v19 + 16))
    {
      goto LABEL_18;
    }

    v20 = sub_226F3A004(0);
    if ((v24 & 1) == 0)
    {
      goto LABEL_18;
    }

    return sub_226E91B50(*(v19 + 56) + 40 * v20, v27);
  }

  sub_226F32360(v5);
  v19 = *(v28 + 16);
  if (*(v19 + 16))
  {
    v20 = sub_226F3A004(2);
    if (v21)
    {
      return sub_226E91B50(*(v19 + 56) + 40 * v20, v27);
    }
  }

LABEL_18:
  v25 = sub_227663190();
  sub_226F92508();
  swift_allocError();
  (*(*(v25 - 8) + 104))(v26, *MEMORY[0x277D4FCF8], v25);
  return swift_willThrow();
}

unint64_t sub_226F92508()
{
  result = qword_27D7B9620;
  if (!qword_27D7B9620)
  {
    sub_227663190();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7B9620);
  }

  return result;
}

uint64_t sub_226F92560(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = *(a7 + 24);
  v18 = (v14 + *v14);
  v15 = v14[1];
  v16 = swift_task_alloc();
  *(v7 + 16) = v16;
  *v16 = v7;
  v16[1] = sub_226E92F34;

  return v18(a1, a3, a4, a6, a5, a7);
}

uint64_t sub_226F926B4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = (*(*(v4 - 8) + 80) + 40) & ~*(*(v4 - 8) + 80);
  v8 = (v1 + ((*(*(v4 - 8) + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = *v8;
  v10 = v8[1];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_226E93028;

  return sub_226F92560(a1, v1 + v7, v9, v10, v4, v5, v6);
}

void *sub_226F927E4(uint64_t a1)
{
  v2 = objc_opt_self();
  v3 = sub_22766BFD0();
  v4 = [v2 insertNewObjectForEntityForName:v3 inManagedObjectContext:a1];

  type metadata accessor for ManagedCatalogTheme();
  v5 = swift_dynamicCastClass();
  if (v5)
  {
    sub_227663A00();
    v6 = sub_22766BFD0();

    [v5 setIdentifier_];

    sub_227663A10();
    v7 = sub_22766BFD0();

    [v5 setName_];

    [v5 setSortOrder_];
  }

  else
  {

    v8 = sub_227664DD0();
    sub_226ECF2F4(&qword_28139B8D0, MEMORY[0x277D51040]);
    swift_allocError();
    (*(*(v8 - 8) + 104))(v9, *MEMORY[0x277D51000], v8);
    swift_willThrow();
  }

  return v5;
}

void *sub_226F929B0(uint64_t a1)
{
  v2 = sub_227662750();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = objc_opt_self();
  v8 = sub_22766BFD0();
  v9 = [v7 insertNewObjectForEntityForName:v8 inManagedObjectContext:a1];

  type metadata accessor for ManagedAchievementWeeklyStreak();
  v10 = swift_dynamicCastClass();
  if (v10)
  {
    v11 = sub_2276667A0();
    v12 = 0x7FFFFFFFLL;
    if (v11 < 0x7FFFFFFF)
    {
      v12 = v11;
    }

    if (v12 <= 0xFFFFFFFF80000000)
    {
      v13 = 0xFFFFFFFF80000000;
    }

    else
    {
      v13 = v12;
    }

    [v10 setLength_];
    sub_227666770();
    v14 = sub_2276626A0();
    (*(v3 + 8))(v6, v2);
    [v10 setFirstWeekdayOfStreakEnd_];
  }

  else
  {

    v15 = sub_227664DD0();
    sub_226ECF2F4(&qword_28139B8D0, MEMORY[0x277D51040]);
    swift_allocError();
    (*(*(v15 - 8) + 104))(v16, *MEMORY[0x277D51000], v15);
    swift_willThrow();
  }

  return v10;
}

void *sub_226F92BF8(uint64_t a1)
{
  v2 = objc_opt_self();
  v3 = sub_22766BFD0();
  v4 = [v2 insertNewObjectForEntityForName:v3 inManagedObjectContext:a1];

  type metadata accessor for ManagedAvailableAudioLanguageIdentifier();
  v5 = swift_dynamicCastClass();
  if (v5)
  {
    v6 = sub_22766BFD0();
    [v5 setIdentifier_];
  }

  else
  {

    v7 = sub_227664DD0();
    sub_226ECF2F4(&qword_28139B8D0, MEMORY[0x277D51040]);
    swift_allocError();
    (*(*(v7 - 8) + 104))(v8, *MEMORY[0x277D51000], v7);
    swift_willThrow();
  }

  return v5;
}

void *sub_226F92D7C(uint64_t a1)
{
  v2 = objc_opt_self();
  v3 = sub_22766BFD0();
  v4 = [v2 insertNewObjectForEntityForName:v3 inManagedObjectContext:a1];

  type metadata accessor for ManagedHealthKitSessionReference();
  v5 = swift_dynamicCastClass();
  if (v5)
  {
    sub_227667490();
    v6 = sub_22766BFD0();

    [v5 setSessionIdentifier_];

    sub_2276674B0();
    v7 = sub_22766BFD0();

    [v5 setWorkoutIdentifier_];
  }

  else
  {

    v8 = sub_227664DD0();
    sub_226ECF2F4(&qword_28139B8D0, MEMORY[0x277D51040]);
    swift_allocError();
    (*(*(v8 - 8) + 104))(v9, *MEMORY[0x277D51000], v8);
    swift_willThrow();
  }

  return v5;
}

void *sub_226F92F30(uint64_t a1)
{
  v2 = objc_opt_self();
  v3 = sub_22766BFD0();
  v4 = [v2 insertNewObjectForEntityForName:v3 inManagedObjectContext:a1];

  type metadata accessor for ManagedMusicGenre();
  v5 = swift_dynamicCastClass();
  if (v5)
  {
    sub_227663280();
    v6 = sub_22766BFD0();

    [v5 setIdentifier_];

    sub_227663290();
    v7 = sub_22766BFD0();

    [v5 setName_];
  }

  else
  {

    v8 = sub_227664DD0();
    sub_226ECF2F4(&qword_28139B8D0, MEMORY[0x277D51040]);
    swift_allocError();
    (*(*(v8 - 8) + 104))(v9, *MEMORY[0x277D51000], v8);
    swift_willThrow();
  }

  return v5;
}

void *sub_226F930E4(uint64_t a1)
{
  v2 = objc_opt_self();
  v3 = sub_22766BFD0();
  v4 = [v2 insertNewObjectForEntityForName:v3 inManagedObjectContext:a1];

  type metadata accessor for ManagedEstimatedCalories();
  v5 = swift_dynamicCastClass();
  if (v5)
  {
    v6 = sub_2276650C0();
    if (v6 >= 0x7FFFFFFF)
    {
      v7 = 0x7FFFFFFFLL;
    }

    else
    {
      v7 = v6;
    }

    [v5 setActivityType_];
    sub_2276650E0();
    [v5 setActiveCalorieRate_];
    sub_2276650D0();
    [v5 setBasalCalorieRate_];
  }

  else
  {

    v8 = sub_227664DD0();
    sub_226ECF2F4(&qword_28139B8D0, MEMORY[0x277D51040]);
    swift_allocError();
    (*(*(v8 - 8) + 104))(v9, *MEMORY[0x277D51000], v8);
    swift_willThrow();
  }

  return v5;
}

void *sub_226F93280(uint64_t a1)
{
  v2 = sub_227662750();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = objc_opt_self();
  v8 = sub_22766BFD0();
  v9 = [v7 insertNewObjectForEntityForName:v8 inManagedObjectContext:a1];

  type metadata accessor for ManagedCompletedMarketingVideo();
  v10 = swift_dynamicCastClass();
  if (v10)
  {
    sub_227666150();
    v11 = sub_22766BFD0();

    [v10 setIdentifier_];

    sub_227666160();
    v12 = sub_2276626A0();
    (*(v3 + 8))(v6, v2);
    [v10 setDateWatched_];
  }

  else
  {

    v13 = sub_227664DD0();
    sub_226ECF2F4(&qword_28139B8D0, MEMORY[0x277D51040]);
    swift_allocError();
    (*(*(v13 - 8) + 104))(v14, *MEMORY[0x277D51000], v13);
    swift_willThrow();
  }

  return v10;
}

void *sub_226F934CC(uint64_t a1)
{
  v2 = objc_opt_self();
  v3 = sub_22766BFD0();
  v4 = [v2 insertNewObjectForEntityForName:v3 inManagedObjectContext:a1];

  type metadata accessor for ManagedCatalogMetadataJournal();
  v5 = swift_dynamicCastClass();
  if (v5)
  {
    sub_227666310();
    v6 = sub_22766BFD0();

    [v5 setIdentifier_];

    sub_227666320();
    [v5 setTimestamp_];
  }

  else
  {

    v7 = sub_227664DD0();
    sub_226ECF2F4(&qword_28139B8D0, MEMORY[0x277D51040]);
    swift_allocError();
    (*(*(v7 - 8) + 104))(v8, *MEMORY[0x277D51000], v7);
    swift_willThrow();
  }

  return v5;
}

void *sub_226F93664(uint64_t a1)
{
  v2 = objc_opt_self();
  v3 = sub_22766BFD0();
  v4 = [v2 insertNewObjectForEntityForName:v3 inManagedObjectContext:a1];

  type metadata accessor for ManagedAudioLanguagePreference();
  v5 = swift_dynamicCastClass();
  if (v5)
  {
    sub_2276668E0();
    v6 = sub_22766BFD0();

    [v5 setLanguageIdentifier_];

    sub_2276668C0();
    [v5 setMachTimestamp_];
  }

  else
  {

    v7 = sub_227664DD0();
    sub_226ECF2F4(&qword_28139B8D0, MEMORY[0x277D51040]);
    swift_allocError();
    (*(*(v7 - 8) + 104))(v8, *MEMORY[0x277D51000], v7);
    swift_willThrow();
  }

  return v5;
}

void *sub_226F937FC(uint64_t a1)
{
  v2 = objc_opt_self();
  v3 = sub_22766BFD0();
  v4 = [v2 insertNewObjectForEntityForName:v3 inManagedObjectContext:a1];

  type metadata accessor for ManagedWorkoutPlanItem();
  v5 = swift_dynamicCastClass();
  if (v5)
  {
    v6 = sub_22766BFD0();
    [v5 setWorkout_];
  }

  else
  {

    v7 = sub_227664DD0();
    sub_226ECF2F4(&qword_28139B8D0, MEMORY[0x277D51040]);
    swift_allocError();
    (*(*(v7 - 8) + 104))(v8, *MEMORY[0x277D51000], v7);
    swift_willThrow();
  }

  return v5;
}

void *sub_226F93980(uint64_t a1)
{
  v21 = sub_2276627D0();
  v2 = *(v21 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v21);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_227662750();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = objc_opt_self();
  v12 = sub_22766BFD0();
  v13 = [v11 insertNewObjectForEntityForName:v12 inManagedObjectContext:a1];

  type metadata accessor for ManagedWorkoutPlanSummaryViewed();
  v14 = swift_dynamicCastClass();
  if (v14)
  {
    sub_227667410();
    v15 = sub_2276626A0();
    (*(v7 + 8))(v10, v6);
    [v14 setDateViewed_];

    sub_227667430();
    v16 = sub_227662790();
    (*(v2 + 8))(v5, v21);
    [v14 setPlanIdentifier_];
  }

  else
  {

    v17 = sub_227664DD0();
    sub_226ECF2F4(&qword_28139B8D0, MEMORY[0x277D51040]);
    swift_allocError();
    (*(*(v17 - 8) + 104))(v18, *MEMORY[0x277D51000], v17);
    swift_willThrow();
  }

  return v14;
}

void *sub_226F93C70(uint64_t a1)
{
  v2 = objc_opt_self();
  v3 = sub_22766BFD0();
  v4 = [v2 insertNewObjectForEntityForName:v3 inManagedObjectContext:a1];

  type metadata accessor for ManagedCatalogTipCategoryReference();
  v5 = swift_dynamicCastClass();
  if (v5)
  {
    sub_227667B10();
    v6 = sub_22766BFD0();

    [v5 setIdentifier_];

    sub_227667B20();
    v7 = sub_22766BFD0();

    [v5 setName_];
  }

  else
  {

    v8 = sub_227664DD0();
    sub_226ECF2F4(&qword_28139B8D0, MEMORY[0x277D51040]);
    swift_allocError();
    (*(*(v8 - 8) + 104))(v9, *MEMORY[0x277D51000], v8);
    swift_willThrow();
  }

  return v5;
}

void *sub_226F93E24(uint64_t a1)
{
  v2 = objc_opt_self();
  v3 = sub_22766BFD0();
  v4 = [v2 insertNewObjectForEntityForName:v3 inManagedObjectContext:a1];

  type metadata accessor for ManagedSampleContentArchivedSession();
  v5 = swift_dynamicCastClass();
  if (v5)
  {
    sub_227667E40();
    v6 = sub_22766BFD0();

    [v5 setWorkoutIdentifier_];

    sub_227667E20();
    v7 = sub_22766BFD0();

    [v5 setSessionIdentifier_];
  }

  else
  {

    v8 = sub_227664DD0();
    sub_226ECF2F4(&qword_28139B8D0, MEMORY[0x277D51040]);
    swift_allocError();
    (*(*(v8 - 8) + 104))(v9, *MEMORY[0x277D51000], v8);
    swift_willThrow();
  }

  return v5;
}

void *sub_226F93FD8(uint64_t a1)
{
  v2 = sub_227662750();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = objc_opt_self();
  v8 = sub_22766BFD0();
  v9 = [v7 insertNewObjectForEntityForName:v8 inManagedObjectContext:a1];

  type metadata accessor for ManagedRemoteBrowsingConnectionRecord();
  v10 = swift_dynamicCastClass();
  if (v10)
  {
    sub_2276686E0();
    v11 = sub_22766BFD0();

    [v10 setParticipantIdentifier_];

    sub_2276686F0();
    v12 = sub_2276626A0();
    (*(v3 + 8))(v6, v2);
    [v10 setTimestamp_];
  }

  else
  {

    v13 = sub_227664DD0();
    sub_226ECF2F4(&qword_28139B8D0, MEMORY[0x277D51040]);
    swift_allocError();
    (*(*(v13 - 8) + 104))(v14, *MEMORY[0x277D51000], v13);
    swift_willThrow();
  }

  return v10;
}

void *sub_226F94224(uint64_t a1)
{
  v2 = objc_opt_self();
  v3 = sub_22766BFD0();
  v4 = [v2 insertNewObjectForEntityForName:v3 inManagedObjectContext:a1];

  type metadata accessor for ManagedBodyFocus();
  v5 = swift_dynamicCastClass();
  if (v5)
  {
    sub_227669510();
    v6 = sub_22766BFD0();

    [v5 setIdentifier_];

    sub_227669520();
    v7 = sub_22766BFD0();

    [v5 setName_];
  }

  else
  {

    v8 = sub_227664DD0();
    sub_226ECF2F4(&qword_28139B8D0, MEMORY[0x277D51040]);
    swift_allocError();
    (*(*(v8 - 8) + 104))(v9, *MEMORY[0x277D51000], v8);
    swift_willThrow();
  }

  return v5;
}

void *sub_226F943D8(uint64_t a1)
{
  v2 = objc_opt_self();
  v3 = sub_22766BFD0();
  v4 = [v2 insertNewObjectForEntityForName:v3 inManagedObjectContext:a1];

  type metadata accessor for ManagedEquipment();
  v5 = swift_dynamicCastClass();
  if (v5)
  {
    sub_227669560();
    v6 = sub_22766BFD0();

    [v5 setIdentifier_];

    sub_227669570();
    v7 = sub_22766BFD0();

    [v5 setName_];
  }

  else
  {

    v8 = sub_227664DD0();
    sub_226ECF2F4(&qword_28139B8D0, MEMORY[0x277D51040]);
    swift_allocError();
    (*(*(v8 - 8) + 104))(v9, *MEMORY[0x277D51000], v8);
    swift_willThrow();
  }

  return v5;
}

void *sub_226F9458C(uint64_t a1)
{
  v3 = objc_opt_self();
  v4 = sub_22766BFD0();
  v5 = [v3 insertNewObjectForEntityForName:v4 inManagedObjectContext:a1];

  type metadata accessor for ManagedDirtySyncZone();
  v6 = swift_dynamicCastClass();
  if (v6)
  {
    sub_2276694C0();
    v7 = sub_22766BFD0();

    [v6 setZoneName_];

    v8 = v1 + *(type metadata accessor for DirtySyncZone() + 20);
    v9 = sub_2276626A0();
    [v6 setTimestamp_];
  }

  else
  {

    v10 = sub_227664DD0();
    sub_226ECF2F4(&qword_28139B8D0, MEMORY[0x277D51040]);
    swift_allocError();
    (*(*(v10 - 8) + 104))(v11, *MEMORY[0x277D51000], v10);
    swift_willThrow();
  }

  return v6;
}

void *sub_226F94740(uint64_t a1)
{
  v3 = objc_opt_self();
  v4 = sub_22766BFD0();
  v5 = [v3 insertNewObjectForEntityForName:v4 inManagedObjectContext:a1];

  type metadata accessor for ManagedSyncChangeTag();
  v6 = swift_dynamicCastClass();
  if (v6)
  {
    v7 = *v1;
    v8 = v1[1];
    v9 = sub_22766BFD0();
    [v6 setSyncIdentifier_];

    v10 = type metadata accessor for SyncChangeTag();
    v11 = v1;
    v12 = v1 + *(v10 + 20);
    sub_2276694C0();
    v13 = sub_22766BFD0();

    [v6 setZoneName_];

    v14 = (v11 + *(v10 + 24));
    v15 = *v14;
    v16 = v14[1];
    v17 = sub_22766BFD0();
    [v6 setEtag_];
  }

  else
  {

    v18 = sub_227664DD0();
    sub_226ECF2F4(&qword_28139B8D0, MEMORY[0x277D51040]);
    swift_allocError();
    (*(*(v18 - 8) + 104))(v19, *MEMORY[0x277D51000], v18);
    swift_willThrow();
  }

  return v6;
}

void *sub_226F9492C(uint64_t a1)
{
  v3 = objc_opt_self();
  v4 = sub_22766BFD0();
  v5 = [v3 insertNewObjectForEntityForName:v4 inManagedObjectContext:a1];

  type metadata accessor for ManagedKeyCertificate();
  v6 = swift_dynamicCastClass();
  if (v6)
  {
    sub_227662390();
    v7 = sub_22766BFD0();

    [v6 setRemoteURL_];

    v8 = (v1 + *(type metadata accessor for KeyCertificate() + 20));
    v9 = *v8;
    v10 = v8[1];
    v11 = sub_227662560();
    [v6 setData_];
  }

  else
  {

    v12 = sub_227664DD0();
    sub_226ECF2F4(&qword_28139B8D0, MEMORY[0x277D51040]);
    swift_allocError();
    (*(*(v12 - 8) + 104))(v13, *MEMORY[0x277D51000], v12);
    swift_willThrow();
  }

  return v6;
}

void *sub_226F94AE4(uint64_t a1)
{
  v2 = objc_opt_self();
  v3 = sub_22766BFD0();
  v4 = [v2 insertNewObjectForEntityForName:v3 inManagedObjectContext:a1];

  type metadata accessor for ManagedStreamingKeyNonce();
  v5 = swift_dynamicCastClass();
  if (v5)
  {
    v6 = sub_227662560();
    [v5 setSeed_];

    v7 = sub_22766BFD0();
    [v5 setWorkoutIdentifier_];
  }

  else
  {

    v8 = sub_227664DD0();
    sub_226ECF2F4(&qword_28139B8D0, MEMORY[0x277D51040]);
    swift_allocError();
    (*(*(v8 - 8) + 104))(v9, *MEMORY[0x277D51000], v8);
    swift_willThrow();
  }

  return v5;
}

void *sub_226F94CA0(uint64_t a1)
{
  v3 = objc_opt_self();
  v4 = sub_22766BFD0();
  v5 = [v3 insertNewObjectForEntityForName:v4 inManagedObjectContext:a1];

  type metadata accessor for ManagedSyncZoneChangeWindow();
  v6 = swift_dynamicCastClass();
  if (v6)
  {
    sub_2276694C0();
    v7 = sub_22766BFD0();

    [v6 setZoneName_];

    v8 = (v1 + *(type metadata accessor for SyncZoneChangeWindow() + 20));
    v9 = *v8;
    v10 = v8[1];
    v11 = sub_227662560();
    [v6 setChangeWindow_];
  }

  else
  {

    v12 = sub_227664DD0();
    sub_226ECF2F4(&qword_28139B8D0, MEMORY[0x277D51040]);
    swift_allocError();
    (*(*(v12 - 8) + 104))(v13, *MEMORY[0x277D51000], v12);
    swift_willThrow();
  }

  return v6;
}

void sub_226F94E58(void *a1, uint64_t a2)
{
  v98 = a1;
  v101 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8E40, &unk_227685580);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v96 = &v93 - v5;
  v99 = v2;
  v6 = sub_227667A00();
  v7 = v6;
  v8 = MEMORY[0x277D84F90];
  v102 = MEMORY[0x277D84F90];
  v9 = v6 + 64;
  v10 = 1 << *(v6 + 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & *(v6 + 64);
  v13 = (v10 + 63) >> 6;

  v14 = 0;
  v100 = v8;
  if (v12)
  {
    goto LABEL_8;
  }

  while (1)
  {
    v15 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      __break(1u);
      goto LABEL_61;
    }

    if (v15 >= v13)
    {
      break;
    }

    v12 = *(v9 + 8 * v15);
    ++v14;
    if (v12)
    {
      v14 = v15;
      do
      {
LABEL_8:
        v16 = __clz(__rbit64(v12)) | (v14 << 6);
        v17 = (*(v7 + 48) + 16 * v16);
        v18 = *v17;
        v19 = v17[1];
        v20 = *(*(v7 + 56) + 8 * v16);
        type metadata accessor for ManagedEnergyBurnedRecord();
        v21 = objc_allocWithZone(swift_getObjCClassFromMetadata());

        v22 = [v21 initWithContext_];
        v23 = sub_22766BFD0();
        [v22 setModalityIdentifier_];

        [v22 setEnergyBurned_];

        MEMORY[0x22AA985C0](v24);
        if (*((v102 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v102 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v25 = *((v102 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_22766C360();
        }

        v12 &= v12 - 1;
        sub_22766C3A0();
        v8 = v102;
      }

      while (v12);
    }
  }

  v95 = v8;

  v26 = sub_227667A40();
  v27 = v26;
  v28 = MEMORY[0x277D84F90];
  v102 = MEMORY[0x277D84F90];
  v29 = v26 + 64;
  v30 = 1 << *(v26 + 32);
  v31 = -1;
  if (v30 < 64)
  {
    v31 = ~(-1 << v30);
  }

  v32 = v31 & *(v26 + 64);
  v33 = (v30 + 63) >> 6;

  v34 = 0;
  if (v32)
  {
    goto LABEL_19;
  }

  while (1)
  {
    v35 = v34 + 1;
    if (__OFADD__(v34, 1))
    {
      break;
    }

    if (v35 >= v33)
    {
      v94 = v28;

      v48 = sub_227667A10();
      v49 = v48;
      v102 = MEMORY[0x277D84F90];
      v50 = v48 + 64;
      v51 = 1 << *(v48 + 32);
      v52 = -1;
      if (v51 < 64)
      {
        v52 = ~(-1 << v51);
      }

      v53 = v52 & *(v48 + 64);
      v54 = (v51 + 63) >> 6;

      v55 = 0;
      if (v53)
      {
        goto LABEL_35;
      }

      while (1)
      {
        v56 = v55 + 1;
        if (__OFADD__(v55, 1))
        {
          break;
        }

        if (v56 >= v54)
        {

          sub_227667A30();
          v68 = sub_22766BFD0();

          v69 = v98;
          [v98 setActivePlanFirstCompletedSessionIdentifier_];

          sub_227667A50();
          v70 = sub_22766BFD0();

          [v69 setActivePlanMostRecentlyCompletedSessionIdentifier_];

          sub_227073D0C(v95);

          v71 = objc_allocWithZone(MEMORY[0x277CBEB98]);
          v72 = sub_22766C2B0();

          v73 = [v71 initWithArray_];

          [v69 setCurrentBestEnergyBurnedPerModality_];
          v74 = v96;
          sub_2276679D0();
          v75 = sub_2276667B0();
          v76 = *(v75 - 8);
          if ((*(v76 + 48))(v74, 1, v75) == 1)
          {
            sub_226ED5C08(v74);
            v77 = 0;
          }

          else
          {
            v78 = v97;
            v79 = sub_226F929B0(v101);
            if (v78)
            {

              (*(v76 + 8))(v74, v75);
              return;
            }

            v77 = v79;
            v97 = 0;
            (*(v76 + 8))(v74, v75);
          }

          v80 = v98;
          [v98 setCurrentStreak_];

          v81 = sub_2276679E0();
          v82 = 0x7FFFFFFFLL;
          if (v81 < 0x7FFFFFFF)
          {
            v82 = v81;
          }

          if (v82 <= 0xFFFFFFFF80000000)
          {
            v83 = 0xFFFFFFFF80000000;
          }

          else
          {
            v83 = v82;
          }

          [v80 setLongestWeeklyStreak_];
          sub_227073D24(v94);

          v84 = objc_allocWithZone(MEMORY[0x277CBEB98]);
          v85 = sub_22766C2B0();

          v86 = [v84 initWithArray_];

          [v80 setNumberOfGuidedWorkoutsOver5MinutesPerModality_];
          v87 = sub_2276679F0();
          v88 = 0x7FFFFFFFLL;
          if (v87 < 0x7FFFFFFF)
          {
            v88 = v87;
          }

          if (v88 <= 0xFFFFFFFF80000000)
          {
            v89 = 0xFFFFFFFF80000000;
          }

          else
          {
            v89 = v88;
          }

          [v80 setNumberOfWorkoutsOver5Minutes_];
          sub_227073D3C(v100);

          v90 = objc_allocWithZone(MEMORY[0x277CBEB98]);
          v91 = sub_22766C2B0();

          v92 = [v90 initWithArray_];

          [v80 setNumberOfWorkoutsOver5MinutesPerModality_];
          return;
        }

        v53 = *(v50 + 8 * v56);
        ++v55;
        if (v53)
        {
          v55 = v56;
          do
          {
LABEL_35:
            v57 = __clz(__rbit64(v53)) | (v55 << 6);
            v58 = (*(v49 + 48) + 16 * v57);
            v60 = *v58;
            v59 = v58[1];
            v61 = *(*(v49 + 56) + 8 * v57);
            type metadata accessor for ManagedModalityWorkoutCount();
            v62 = objc_allocWithZone(swift_getObjCClassFromMetadata());

            v63 = [v62 initWithContext_];
            v64 = sub_22766BFD0();
            [v63 setModalityIdentifier_];

            v65 = 0x7FFFFFFFLL;
            if (v61 < 0x7FFFFFFF)
            {
              v65 = v61;
            }

            if (v65 <= 0xFFFFFFFF80000000)
            {
              v66 = 0xFFFFFFFF80000000;
            }

            else
            {
              v66 = v65;
            }

            [v63 setCount_];

            MEMORY[0x22AA985C0](v67);
            if (*((v102 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v102 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              sub_22766C360();
            }

            v53 &= v53 - 1;
            sub_22766C3A0();
            v100 = v102;
          }

          while (v53);
        }
      }

      goto LABEL_62;
    }

    v32 = *(v29 + 8 * v35);
    ++v34;
    if (v32)
    {
      v34 = v35;
      do
      {
LABEL_19:
        v36 = __clz(__rbit64(v32)) | (v34 << 6);
        v37 = (*(v27 + 48) + 16 * v36);
        v39 = *v37;
        v38 = v37[1];
        v40 = *(*(v27 + 56) + 8 * v36);
        type metadata accessor for ManagedGuidedWorkoutCount();
        v41 = objc_allocWithZone(swift_getObjCClassFromMetadata());

        v42 = [v41 initWithContext_];
        v43 = sub_22766BFD0();
        [v42 setModalityIdentifier_];

        v44 = 0x7FFFFFFFLL;
        if (v40 < 0x7FFFFFFF)
        {
          v44 = v40;
        }

        if (v44 <= 0xFFFFFFFF80000000)
        {
          v45 = 0xFFFFFFFF80000000;
        }

        else
        {
          v45 = v44;
        }

        [v42 setCount_];

        MEMORY[0x22AA985C0](v46);
        if (*((v102 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v102 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v47 = *((v102 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_22766C360();
        }

        v32 &= v32 - 1;
        sub_22766C3A0();
        v28 = v102;
      }

      while (v32);
    }
  }

LABEL_61:
  __break(1u);
LABEL_62:
  __break(1u);
}

uint64_t static AchievementEnvironmentCache.representativeSamples()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8E40, &unk_227685580);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v52 = v41 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v51 = v41 - v4;
  v50 = sub_227667A70();
  v5 = *(v50 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v50);
  v49 = v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_22766C090();
  sub_226F05E24();
  v9 = sub_22766CFA0();
  sub_226F5D274();
  v10 = sub_22766BE70();
  v11 = MEMORY[0x277D84F98];
  v87 = MEMORY[0x277D84F98];

  sub_226F9620C(v8, v9, &v87, sub_226F95EAC);
  swift_bridgeObjectRelease_n();
  v86 = v11;

  sub_226F9620C(v8, v10, &v86, sub_226F96034);

  swift_bridgeObjectRelease_n();
  v60 = sub_22766C090();
  v59 = sub_22766C090();
  v12 = v86;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9098, &qword_227679BC0);
  v13 = sub_22766C380();
  v13[2] = 3;
  v13[4] = v12;
  v13[5] = v12;
  v13[6] = v12;
  v14 = sub_2276667B0();
  v53 = v12;
  swift_bridgeObjectRetain_n();
  v54 = v14;
  v58 = sub_22766C320();
  v57 = sub_22766CFA0();
  v15 = v87;
  swift_bridgeObjectRetain_n();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B90A0, &qword_227672E88);
  v16 = sub_22766C380();
  v16[2] = 3;
  v16[4] = v15;
  v16[5] = v15;
  v16[6] = v15;
  swift_bridgeObjectRetain_n();
  v17 = sub_22766CFA0();
  v18 = sub_22766C380();
  v18[2] = 3;
  v18[4] = v15;
  v18[5] = v15;
  v18[6] = v15;
  v84 = v59;
  v85[0] = v60;
  v85[1] = v85;
  v85[2] = &v84;
  v82 = v58;
  v83 = v13;
  v85[3] = &v83;
  v85[4] = &v82;
  v80 = v16;
  v81 = v57;
  v85[5] = &v81;
  v85[6] = &v80;
  v78 = v18;
  v79 = v17;
  v85[7] = &v79;
  v85[8] = &v78;
  swift_bridgeObjectRetain_n();
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B84E0, &qword_22767C6B0);
  v71 = v70;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B90A8, &qword_227672E90);
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B90B0, &qword_227672E98);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B96F0, qword_227674920);
  v74 = v19;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B90B8, &qword_227672EA0);
  v76 = v19;
  v77 = v75;
  v62 = sub_226F5BF60(&qword_27D7B8500, &qword_27D7B84E0, &qword_22767C6B0);
  v63 = v62;
  v64 = sub_226F5BF60(&qword_27D7B90C0, &qword_27D7B90A8, &qword_227672E90);
  v65 = sub_226F5BF60(&qword_27D7B90C8, &qword_27D7B90B0, &qword_227672E98);
  v20 = sub_226F5BF60(&qword_27D7B8510, &qword_27D7B96F0, qword_227674920);
  v66 = v20;
  v67 = sub_226F5BF60(&qword_27D7B90D0, &qword_27D7B90B8, &qword_227672EA0);
  v68 = v20;
  v69 = v67;
  v21 = sub_2276638E0();

  v22 = *(v21 + 16);
  if (v22)
  {
    v61 = MEMORY[0x277D84F90];
    sub_226ECCDEC(0, v22, 0);
    v23 = v61;
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B90D8, &qword_227672EA8);
    v25 = 0;
    v43 = *(result - 8);
    v44 = result;
    v42 = v21 + ((*(v43 + 80) + 32) & ~*(v43 + 80));
    v26 = v54;
    v41[0] = v5 + 32;
    v41[1] = v54 - 8;
    v47 = v15;
    v48 = v5;
    v45 = v22;
    v46 = v21;
    while (v25 < *(v21 + 16))
    {
      v27 = (v42 + *(v43 + 72) * v25);
      v28 = *v27;
      v29 = v27[1];
      v30 = v27[3];
      v59 = v27[2];
      v60 = v28;
      v31 = v27[4];
      v56 = v29;
      v57 = v31;
      v32 = v44;
      v33 = *(v26 - 8);
      v34 = v51;
      (*(v33 + 16))(v51, v27 + v44[20], v26);
      (*(v33 + 56))(v34, 0, 1, v26);
      v55 = *(v27 + v32[24]);
      v35 = *(v27 + v32[28]);
      v36 = *(v27 + v32[32]);
      v37 = *(v27 + v32[36]);
      v58 = v23;
      sub_226ED5818(v34, v52);

      v38 = v49;
      v23 = v58;
      sub_227667A20();
      sub_226ED5C08(v34);
      v61 = v23;
      v40 = *(v23 + 16);
      v39 = *(v23 + 24);
      if (v40 >= v39 >> 1)
      {
        sub_226ECCDEC(v39 > 1, v40 + 1, 1);
        v23 = v61;
      }

      ++v25;
      *(v23 + 16) = v40 + 1;
      result = (*(v48 + 32))(v23 + ((*(v48 + 80) + 32) & ~*(v48 + 80)) + *(v48 + 72) * v40, v38, v50);
      v21 = v46;
      v26 = v54;
      if (v45 == v25)
      {

        return v23;
      }
    }

    __break(1u);
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return result;
}

uint64_t *sub_226F95EAC(uint64_t *result, uint64_t a2, void *a3)
{
  v3 = *(a2 + 16);
  if (!v3)
  {
    return result;
  }

  v5 = *result;
  v6 = result[1];
  v7 = (a2 + 32);
  while (1)
  {
    v10 = *v7++;
    v9 = v10;
    v11 = *a3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v13 = *a3;
    v27 = *a3;
    *a3 = 0x8000000000000000;
    v14 = sub_226E92000(v5, v6);
    v16 = v13[2];
    v17 = (v15 & 1) == 0;
    v18 = __OFADD__(v16, v17);
    v19 = v16 + v17;
    if (v18)
    {
      break;
    }

    v20 = v15;
    if (v13[3] < v19)
    {
      sub_226FE2228(v19, isUniquelyReferenced_nonNull_native);
      v14 = sub_226E92000(v5, v6);
      if ((v20 & 1) != (v21 & 1))
      {
        goto LABEL_18;
      }

LABEL_10:
      v22 = v27;
      if (v20)
      {
        goto LABEL_3;
      }

      goto LABEL_11;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_10;
    }

    v26 = v14;
    sub_226FF016C();
    v14 = v26;
    v22 = v27;
    if (v20)
    {
LABEL_3:
      *(v22[7] + 8 * v14) = v9;
      goto LABEL_4;
    }

LABEL_11:
    v22[(v14 >> 6) + 8] |= 1 << v14;
    v23 = (v22[6] + 16 * v14);
    *v23 = v5;
    v23[1] = v6;
    *(v22[7] + 8 * v14) = v9;
    v24 = v22[2];
    v18 = __OFADD__(v24, 1);
    v25 = v24 + 1;
    if (v18)
    {
      goto LABEL_17;
    }

    v22[2] = v25;

LABEL_4:
    v8 = *a3;
    *a3 = v22;

    if (!--v3)
    {
      return result;
    }
  }

  __break(1u);
LABEL_17:
  __break(1u);
LABEL_18:
  result = sub_22766D220();
  __break(1u);
  return result;
}

uint64_t *sub_226F96034(uint64_t *result, uint64_t a2, void *a3)
{
  v3 = *(a2 + 16);
  if (!v3)
  {
    return result;
  }

  v5 = *result;
  v6 = result[1];
  for (i = (a2 + 32); ; ++i)
  {
    v9 = *i;
    v10 = *a3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *a3;
    v26 = *a3;
    *a3 = 0x8000000000000000;
    v13 = sub_226E92000(v5, v6);
    v15 = v12[2];
    v16 = (v14 & 1) == 0;
    v17 = __OFADD__(v15, v16);
    v18 = v15 + v16;
    if (v17)
    {
      break;
    }

    v19 = v14;
    if (v12[3] < v18)
    {
      sub_226FE24C8(v18, isUniquelyReferenced_nonNull_native);
      v13 = sub_226E92000(v5, v6);
      if ((v19 & 1) != (v20 & 1))
      {
        goto LABEL_18;
      }

LABEL_10:
      v21 = v26;
      if (v19)
      {
        goto LABEL_3;
      }

      goto LABEL_11;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_10;
    }

    v25 = v13;
    sub_226FF02D4();
    v13 = v25;
    v21 = v26;
    if (v19)
    {
LABEL_3:
      *(v21[7] + 8 * v13) = v9;
      goto LABEL_4;
    }

LABEL_11:
    v21[(v13 >> 6) + 8] |= 1 << v13;
    v22 = (v21[6] + 16 * v13);
    *v22 = v5;
    v22[1] = v6;
    *(v21[7] + 8 * v13) = v9;
    v23 = v21[2];
    v17 = __OFADD__(v23, 1);
    v24 = v23 + 1;
    if (v17)
    {
      goto LABEL_17;
    }

    v21[2] = v24;

LABEL_4:
    v8 = *a3;
    *a3 = v21;

    if (!--v3)
    {
      return result;
    }
  }

  __break(1u);
LABEL_17:
  __break(1u);
LABEL_18:
  result = sub_22766D220();
  __break(1u);
  return result;
}

uint64_t sub_226F9620C(uint64_t result, uint64_t a2, uint64_t a3, void (*a4)(void *, uint64_t, uint64_t))
{
  v5 = *(result + 16);
  if (v5)
  {
    for (i = (result + 40); ; i += 2)
    {
      v10 = *i;
      v11[0] = *(i - 1);
      v11[1] = v10;

      a4(v11, a2, a3);
      if (v4)
      {
        break;
      }

      if (!--v5)
      {
        return result;
      }
    }
  }

  return result;
}

uint64_t sub_226F962B4(uint64_t a1)
{
  result = sub_226ECF2F4(&qword_2813A55B8, MEMORY[0x277D530A8]);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_226F9630C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8E40, &unk_227685580);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_226F9637C(uint64_t *a1)
{
  v1 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_226F963DC();
  }

  return result;
}

void sub_226F963DC()
{
  v17 = sub_22766B390();
  v1 = *(v17 - 8);
  v2 = *(v1 + 64);
  v3 = MEMORY[0x28223BE20](v17);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v16 - v6;
  v8 = *(v0 + 40);
  v9 = off_283AC2958;
  type metadata accessor for EngagementPushHandler();
  if (v9())
  {
    sub_22766A600();
    v10 = sub_22766B380();
    v11 = sub_22766C8B0();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_226E8E000, v10, v11, "[IAM] Handling AMS push", v12, 2u);
      MEMORY[0x22AA9A450](v12, -1, -1);
    }

    (*(v1 + 8))(v7, v17);
    off_283AC2960();
  }

  else
  {
    sub_22766A600();
    v13 = sub_22766B380();
    v14 = sub_22766C890();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_226E8E000, v13, v14, "[IAM] Received non AMS push", v15, 2u);
      MEMORY[0x22AA9A450](v15, -1, -1);
    }

    (*(v1 + 8))(v5, v17);
  }
}

uint64_t sub_226F96644()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[5];
  swift_unknownObjectRelease();
  v3 = v0[7];

  return swift_deallocClassInstance();
}

uint64_t sub_226F966B0(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, int a5, uint64_t a6)
{
  v72 = a5;
  v76 = a1;
  v67 = type metadata accessor for EngagementBadgeRemoved();
  v11 = *(*(v67 - 8) + 64);
  MEMORY[0x28223BE20](v67);
  v66 = &v62 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for EngagementBadgeAdded();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v65 = &v62 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_227662750();
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v68 = &v62 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = sub_2276646D0();
  v69 = *(v73 - 8);
  v19 = *(v69 + 64);
  MEMORY[0x28223BE20](v73);
  v71 = &v62 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_22766B390();
  v74 = *(v21 - 8);
  v75 = v21;
  v22 = *(v74 + 64);
  MEMORY[0x28223BE20](v21);
  v24 = &v62 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v27 = &v62 - v26;
  v70 = v6;
  v28 = *(v6 + 32);
  if (sub_2276693E0() == a3 && v29 == a4)
  {

LABEL_5:
    if (a6)
    {
      v31 = v76;
      if (*(a6 + 16) && (v32 = sub_226E92000(0x6163696669746F6ELL, 0xEE0064496E6F6974), (v33 & 1) != 0))
      {
        sub_226E97CC0(*(a6 + 56) + 32 * v32, v78);
        v34 = swift_dynamicCast();
        if (v34)
        {
          v35 = v77[0];
        }

        else
        {
          v35 = 0;
        }

        if (v34)
        {
          v36 = v77[1];
        }

        else
        {
          v36 = 0;
        }
      }

      else
      {
        v35 = 0;
        v36 = 0;
      }
    }

    else
    {
      v35 = 0;
      v36 = 0;
      v31 = v76;
    }

    v64 = v13;
    sub_22766A600();

    v37 = sub_22766B380();
    v38 = sub_22766C8B0();

    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v63 = a2;
      v41 = v35;
      v42 = v40;
      v77[0] = v40;
      *v39 = 136446722;
      *(v39 + 4) = sub_226E97AE8(v31, v63, v77);
      *(v39 + 12) = 1026;
      v43 = v72;
      *(v39 + 14) = v72 & 1;
      *(v39 + 18) = 2080;
      v78[0] = v41;
      v78[1] = v36;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBC30, &unk_2276720D0);
      v44 = sub_22766CB80();
      v46 = sub_226E97AE8(v44, v45, v77);

      *(v39 + 20) = v46;
      _os_log_impl(&dword_226E8E000, v37, v38, "[IAM] Received badge with identifier: %{public}s, enabled: %{BOOL,public}d, notificationID: %s", v39, 0x1Cu);
      swift_arrayDestroy();
      MEMORY[0x22AA9A450](v42, -1, -1);
      MEMORY[0x22AA9A450](v39, -1, -1);

      (*(v74 + 8))(v27, v75);
    }

    else
    {

      (*(v74 + 8))(v27, v75);
      v43 = v72;
    }

    v47 = v71;

    sub_227662740();
    sub_227664680();
    v49 = *(v70 + 16);
    v48 = *(v70 + 24);
    swift_getObjectType();
    v50 = *(v69 + 16);
    v51 = (v69 + 8);
    if (v43)
    {
      v52 = v65;
      v53 = v73;
      v50(v65, v47, v73);
      v54 = type metadata accessor for EngagementBadgeAdded;
      sub_226F96DEC(qword_2813A0F30, type metadata accessor for EngagementBadgeAdded);
      sub_2276699D0();
      v55 = v52;
    }

    else
    {
      v56 = v66;
      v53 = v73;
      v50(v66, v47, v73);
      v54 = type metadata accessor for EngagementBadgeRemoved;
      sub_226F96DEC(qword_28139FF68, type metadata accessor for EngagementBadgeRemoved);
      sub_2276699D0();
      v55 = v56;
    }

    sub_226F96E34(v55, v54);
    return (*v51)(v47, v53);
  }

  v30 = sub_22766D190();

  if (v30)
  {
    goto LABEL_5;
  }

  sub_22766A600();

  v58 = sub_22766B380();
  v59 = sub_22766C890();

  if (os_log_type_enabled(v58, v59))
  {
    v60 = swift_slowAlloc();
    v61 = swift_slowAlloc();
    v78[0] = v61;
    *v60 = 136446210;
    *(v60 + 4) = sub_226E97AE8(a3, a4, v78);
    _os_log_impl(&dword_226E8E000, v58, v59, "[IAM] Push handler received badge for unexpected bundle ID %{public}s", v60, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v61);
    MEMORY[0x22AA9A450](v61, -1, -1);
    MEMORY[0x22AA9A450](v60, -1, -1);
  }

  return (*(v74 + 8))(v24, v75);
}

uint64_t sub_226F96DEC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_226F96E34(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_226F96E94(id a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BB570, &unk_227670FC0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v28 - v7;
  v9 = sub_2276624A0();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = v28 - v15;
  v17 = [a1 contentRating];
  if (!v17)
  {
    goto LABEL_6;
  }

  v28[1] = a2;
  v28[2] = v2;
  v18 = v17;
  v28[0] = sub_22766C000();
  v20 = v19;

  v30 = a1;
  v21 = [a1 streamingURL];
  if (v21)
  {
    v22 = v21;
    sub_22766C000();
  }

  sub_227662310();
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {

    sub_226E97D1C(v8, &unk_27D7BB570, &unk_227670FC0);
    a1 = v30;
LABEL_6:
    v23 = sub_227664DD0();
    sub_226F97854(&qword_28139B8D0, MEMORY[0x277D51040]);
    swift_allocError();
    (*(*(v23 - 8) + 104))(v24, *MEMORY[0x277D51028], v23);
    swift_willThrow();

    return;
  }

  (*(v10 + 32))(v16, v8, v9);
  v28[3] = v28[0];
  v28[4] = v20;
  sub_226ED978C();
  sub_227663AE0();
  v25 = v29;
  v26 = [v30 streamingProgramIdentifier];
  if (v26)
  {
    LODWORD(v28[0]) = v25;
    v27 = v26;
    sub_22766C000();
  }

  (*(v10 + 16))(v14, v16, v9);
  sub_2276641D0();

  (*(v10 + 8))(v16, v9);
}

size_t static CatalogPreview.representativeSamples()()
{
  v35 = sub_2276624A0();
  v26 = *(v35 - 8);
  v0 = *(v26 + 64);
  MEMORY[0x28223BE20](v35);
  v34 = v25 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B90E0, &qword_227672F80);
  v2 = *(v33 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v33);
  v5 = v25 - v4;
  v32 = sub_227664210();
  v6 = *(v32 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v32);
  v9 = v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_226F976F8();
  sub_226ED978C();
  v10 = sub_227663B50();
  v11 = sub_22766C090();
  v12 = sub_2276622F0();
  v44 = v11;
  v45[0] = v10;
  v45[1] = v45;
  v45[2] = &v44;
  v43 = v12;
  v45[3] = &v43;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B90F0, &qword_227672F88);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B84E0, &qword_22767C6B0);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B90F8, &qword_227679D10);
  v37 = sub_226F5BF60(&qword_27D7B9100, &qword_27D7B90F0, &qword_227672F88);
  v38 = sub_226F5BF60(&qword_27D7B8500, &qword_27D7B84E0, &qword_22767C6B0);
  v39 = sub_226F5BF60(&qword_27D7B9108, &qword_27D7B90F8, &qword_227679D10);
  v13 = sub_2276638E0();

  v14 = *(v13 + 16);
  if (v14)
  {
    v36 = MEMORY[0x277D84F90];
    result = sub_226F1FA08(0, v14, 0);
    v16 = 0;
    v17 = v36;
    v27 = v13 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
    v26 += 16;
    v25[1] = v6 + 32;
    v30 = v6;
    v31 = v2;
    v28 = v14;
    v29 = v13;
    while (v16 < *(v13 + 16))
    {
      sub_226F9778C(v27 + *(v2 + 72) * v16, v5);
      v19 = *v5;
      v18 = *(v5 + 1);
      v20 = v5[16];
      v22 = *(v5 + 3);
      v21 = *(v5 + 4);
      (*v26)(v34, &v5[*(v33 + 64)], v35);
      sub_226EB396C(v19, v18, v20);

      sub_2276641D0();
      sub_226E97D1C(v5, &qword_27D7B90E0, &qword_227672F80);
      v36 = v17;
      v24 = *(v17 + 16);
      v23 = *(v17 + 24);
      if (v24 >= v23 >> 1)
      {
        sub_226F1FA08(v23 > 1, v24 + 1, 1);
        v17 = v36;
      }

      ++v16;
      *(v17 + 16) = v24 + 1;
      result = (*(v30 + 32))(v17 + ((*(v30 + 80) + 32) & ~*(v30 + 80)) + *(v30 + 72) * v24, v9, v32);
      v13 = v29;
      v2 = v31;
      if (v28 == v16)
      {

        return v17;
      }
    }

    __break(1u);
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return result;
}

unint64_t sub_226F976F8()
{
  result = qword_27D7B90E8;
  if (!qword_27D7B90E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7B90E8);
  }

  return result;
}

uint64_t sub_226F9778C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B90E0, &qword_227672F80);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_226F977FC(uint64_t a1)
{
  result = sub_226F97854(&qword_27D7B9110, MEMORY[0x277D50760]);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_226F97854(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_226F9789C(void *a1)
{
  v16[0] = a1;
  v1 = sub_2276624A0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2276641E0();
  v8 = v7;
  v16[3] = v6;
  v16[4] = v7;
  v10 = v9 & 1;
  v17 = v9 & 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B86E8, &qword_227671548);
  sub_227663AD0();
  v11 = sub_22766BFD0();
  sub_226EB2DFC(v6, v8, v10);

  v12 = v16[0];
  [v16[0] setContentRating_];

  sub_2276641C0();
  sub_227662390();
  (*(v2 + 8))(v5, v1);
  v13 = sub_22766BFD0();

  [v12 setStreamingURL_];

  sub_2276641F0();
  if (v14)
  {
    v15 = sub_22766BFD0();
  }

  else
  {
    v15 = 0;
  }

  [v12 setStreamingProgramIdentifier_];
}

uint64_t sub_226F97A88@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277D53D30];
  v3 = sub_2276694E0();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_226F97B08@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_227668D10();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_227667140();
  v7 = sub_227668D00();
  v9 = v8;
  result = (*(v3 + 8))(v6, v2);
  *a1 = v7;
  a1[1] = v9;
  return result;
}

uint64_t sub_226F97BE8(uint64_t a1)
{
  *(a1 + 24) = sub_226F97C50(&qword_2813A5630);
  result = sub_226F97C50(&qword_2813A5628);
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_226F97C50(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_227667170();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_226F97CAC@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277D53CD8];
  v3 = sub_2276694E0();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

unint64_t sub_226F97D2C@<X0>(_DWORD *a1@<X8>)
{
  result = sub_2276650C0();
  if (result >> 31)
  {
    __break(1u);
  }

  else
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_226F97D60(uint64_t a1)
{
  *(a1 + 24) = sub_226F97DC8(&qword_2813A5728);
  result = sub_226F97DC8(&qword_2813A5720);
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_226F97DC8(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_227665100();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

id sub_226F97E0C(uint64_t a1, uint64_t a2, char *a3, int a4)
{
  v45 = a1;
  v48 = a4;
  v54 = a3;
  v44 = a2;
  v4 = sub_227669A90();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9118, &qword_227673040);
  v55 = *(v50 - 8);
  v9 = *(v55 + 64);
  v10 = MEMORY[0x28223BE20](v50);
  v46 = &v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v47 = &v44 - v12;
  v13 = sub_2276624A0();
  v52 = v13;
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v44 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v44 - v19;
  sub_227662400();
  v53 = v20;
  sub_227662410();
  v21 = *(v14 + 8);
  v49 = v14 + 8;
  v51 = v21;
  v21(v18, v13);
  v22 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v23 = sub_2276623E0();
  v24 = [v22 initWithURL_];

  v25 = *(v5 + 104);
  v25(v8, *MEMORY[0x277D4F018], v4);
  v56 = 2;
  v26 = v24;
  v27 = MEMORY[0x277D83B88];
  sub_227669760();
  v25(v8, *MEMORY[0x277D4EF88], v4);
  v56 = 2048;
  v28 = v46;
  sub_227669760();
  v29 = sub_22766C9B0();
  v30 = sub_22766BFD0();

  [v26 setConfiguration_];

  [v26 setOption:v29 forKey:*MEMORY[0x277CBE240]];
  sub_226E99364(0, &qword_28139D220, 0x277CCABB0);
  v31 = sub_22766CB10();
  [v26 setOption:v31 forKey:*MEMORY[0x277CBE2D8]];

  v32 = sub_22766CB10();
  [v26 setOption:v32 forKey:*MEMORY[0x277CBE1D8]];

  v33 = sub_22766CB10();
  [v26 setOption:v33 forKey:*MEMORY[0x277CBE178]];

  v34 = sub_22766CB10();
  [v26 setOption:v34 forKey:*MEMORY[0x277CBE280]];

  v35 = v50;
  v36 = v47;
  sub_227669730();
  v37 = sub_22766C750();
  [v26 setOption:v37 forKey:*MEMORY[0x277CBE218]];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9120, &qword_227681EA0);
  v38 = swift_allocObject();
  *(v38 + 16) = xmmword_227670CD0;
  *(v38 + 56) = MEMORY[0x277D837D0];
  *(v38 + 32) = 0x70735F6568636163;
  *(v38 + 40) = 0xEB000000006C6C69;
  *(v38 + 88) = v27;
  sub_227669730();
  sub_226E99364(0, &qword_28139D2B0, 0x277CBEAC0);
  v39 = sub_22766C800();
  [v26 setOption:v39 forKey:*MEMORY[0x277CBE2E0]];

  [v26 setShouldAddStoreAsynchronously_];
  v41 = v51;
  v40 = v52;
  v51(v54, v52);
  v42 = *(v55 + 8);
  v42(v28, v35);
  v42(v36, v35);
  v41(v53, v40);
  return v26;
}

uint64_t sub_226F98408()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_226F986C8();
  }

  return result;
}

uint64_t sub_226F98460()
{
  v0 = sub_227667DA0();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v13 - v8;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_22766A510();
    sub_226F997EC(v4, v9);

    (*(v1 + 8))(v4, v0);
    v11 = sub_227669290();
    v12 = swift_allocObject();
    *(v12 + 16) = 0;
    *(v12 + 24) = 0;
    v11(sub_226EB4544, v12);

    return (*(v6 + 8))(v9, v5);
  }

  return result;
}

uint64_t sub_226F98670()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_226F98A30();
  }

  return result;
}

uint64_t sub_226F986C8()
{
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  v1 = *(v29 - 8);
  v2 = *(v1 + 64);
  v3 = MEMORY[0x28223BE20](v29);
  v4 = &v28 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v28 - v6;
  MEMORY[0x28223BE20](v5);
  v28 = &v28 - v8;
  v9 = sub_22766A8A0();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v0 + 192);
  v15 = sub_2276693C0();
  (*(v10 + 104))(v13, *MEMORY[0x277D4F908], v9);
  v16 = sub_226EC9A38(v13, v15);

  result = (*(v10 + 8))(v13, v9);
  if (v16)
  {
    v18 = *(v0 + 176);
    v19 = *(v0 + 184);
    __swift_project_boxed_opaque_existential_0((v0 + 152), v18);
    (*(v19 + 56))(v18, v19);
    v20 = v29;
    (*(v1 + 16))(v4, v7, v29);
    v21 = (*(v1 + 80) + 16) & ~*(v1 + 80);
    v22 = swift_allocObject();
    (*(v1 + 32))(v22 + v21, v4, v20);
    v23 = (v22 + ((v2 + v21 + 7) & 0xFFFFFFFFFFFFFFF8));
    *v23 = sub_226F99470;
    v23[1] = 0;
    v24 = v28;
    sub_227669270();
    v25 = *(v1 + 8);
    v25(v7, v20);
    v26 = sub_227669290();
    v27 = swift_allocObject();
    *(v27 + 16) = 0;
    *(v27 + 24) = 0;
    v26(sub_226EB4544, v27);

    return (v25)(v24, v20);
  }

  return result;
}

uint64_t sub_226F98A30()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA2B0, &unk_227670890);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x28223BE20](v1);
  v5 = &v37 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v7 = &v37 - v6;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BA270, &qword_2276708A0);
  v8 = *(v40 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v40);
  v39 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v37 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  v41 = *(v13 - 8);
  v42 = v13;
  v14 = *(v41 + 64);
  MEMORY[0x28223BE20](v13);
  v38 = &v37 - v15;
  v16 = *(v0 + 28);
  v43 = v0;
  v17 = *__swift_project_boxed_opaque_existential_0(v0 + 25, v16);
  v18 = OBJC_IVAR____TtC15SeymourServices33ServiceSubscriptionProviderBroker_state;
  swift_beginAccess();
  sub_226E92A44(v17 + v18, &v46);
  if (v47)
  {
    sub_226E92AB8(&v46, v45);
    sub_226E91B50(v45, v44);
    v19 = swift_allocObject();
    sub_226E92AB8(v44, v19 + 16);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB970, &qword_227670A50);
    sub_227669280();
    __swift_destroy_boxed_opaque_existential_0(v45);
  }

  else
  {
    sub_226F099DC();
    v20 = swift_allocError();
    *v21 = 0;
    *(swift_allocObject() + 16) = v20;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB970, &qword_227670A50);
    sub_227669280();
  }

  (*(v2 + 16))(v5, v7, v1);
  v22 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v23 = (v3 + v22 + 7) & 0xFFFFFFFFFFFFFFF8;
  v24 = swift_allocObject();
  (*(v2 + 32))(v24 + v22, v5, v1);
  v25 = (v24 + v23);
  *v25 = sub_226F98FC8;
  v25[1] = 0;
  sub_227665AD0();
  sub_227669270();
  (*(v2 + 8))(v7, v1);
  v26 = v39;
  v27 = v40;
  (*(v8 + 16))(v39, v12, v40);
  v28 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v29 = swift_allocObject();
  (*(v8 + 32))(v29 + v28, v26, v27);
  v30 = (v29 + ((v9 + v28 + 7) & 0xFFFFFFFFFFFFFFF8));
  v31 = v43;
  *v30 = sub_226F9B5D4;
  v30[1] = v31;

  v32 = v38;
  sub_227669270();
  (*(v8 + 8))(v12, v27);
  v33 = v42;
  v34 = sub_227669290();
  v35 = swift_allocObject();
  *(v35 + 16) = 0;
  *(v35 + 24) = 0;
  v34(sub_226E9F7B0, v35);

  return (*(v41 + 8))(v32, v33);
}

uint64_t sub_226F98FC8(void *a1)
{
  v2 = sub_227667900();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2276678E0();
  v7 = a1[3];
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, v7);
  (*(v8 + 8))(v6, v7, v8);
  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_226F990E4@<X0>(void *a1@<X1>, uint64_t a2@<X8>)
{
  v32[1] = a2;
  v3 = sub_22766B390();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = v32 - v10;
  MEMORY[0x28223BE20](v9);
  v13 = v32 - v12;
  v14 = sub_227662750();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = v32 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_227662740();
  v19 = sub_227665AA0();
  (*(v15 + 8))(v18, v14);
  if (v19)
  {
    sub_22766A740();
    v20 = sub_22766B380();
    v21 = sub_22766C8B0();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_226E8E000, v20, v21, "Subscription status subscribed. Not resetting metrics identifiers.", v22, 2u);
      MEMORY[0x22AA9A450](v22, -1, -1);
    }

    (*(v4 + 8))(v8, v3);
    return sub_2276692A0();
  }

  else
  {
    sub_22766A740();
    v24 = sub_22766B380();
    v25 = sub_22766C8B0();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&dword_226E8E000, v24, v25, "Subscription status not subscribed. Resetting metrics identifiers.", v26, 2u);
      MEMORY[0x22AA9A450](v26, -1, -1);
    }

    v27 = *(v4 + 8);
    v27(v13, v3);
    sub_22766A740();
    sub_22766B370();
    v27(v11, v3);
    v28 = a1[22];
    v29 = a1[23];
    __swift_project_boxed_opaque_existential_0(a1 + 19, v28);
    v30 = MEMORY[0x22AA8FAB0]();
    v31 = sub_226F42F44(v30);

    (*(v29 + 64))(v31, v28, v29);
  }
}

uint64_t sub_226F99470(uint64_t a1)
{
  v2 = sub_22766B390();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = v23 - v8;
  if (*(a1 + 8) == 1)
  {
    v10 = *a1;
    sub_22766A740();
    v11 = v10;
    v12 = sub_22766B380();
    v13 = sub_22766C890();
    sub_226EB4548(v10, 1);
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v24 = v15;
      *v14 = 136446210;
      swift_getErrorValue();
      v16 = MEMORY[0x22AA995D0](v23[2], v23[3]);
      v18 = sub_226E97AE8(v16, v17, &v24);

      *(v14 + 4) = v18;
      _os_log_impl(&dword_226E8E000, v12, v13, "Unable to fetch identifiers into cache: %{public}s", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v15);
      MEMORY[0x22AA9A450](v15, -1, -1);
      MEMORY[0x22AA9A450](v14, -1, -1);
    }

    return (*(v3 + 8))(v7, v2);
  }

  else
  {
    sub_22766A740();
    v20 = sub_22766B380();
    v21 = sub_22766C8B0();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_226E8E000, v20, v21, "Sucessfully fetched identifiers into cache", v22, 2u);
      MEMORY[0x22AA9A450](v22, -1, -1);
    }

    return (*(v3 + 8))(v9, v2);
  }
}

uint64_t sub_226F9974C()
{
  v1 = *__swift_project_boxed_opaque_existential_0((*(v0 + 16) + 32), *(*(v0 + 16) + 56));
  v2 = swift_task_alloc();
  *(v0 + 24) = v2;
  *v2 = v0;
  v2[1] = sub_226F10788;

  return sub_227106B2C();
}

uint64_t sub_226F997EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v46 = a2;
  v43 = a1;
  v2 = sub_227664D30();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v45 = &v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9138, &unk_227675CC0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v44 = &v42 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9140, &unk_22767F4E0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v42 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9148, &qword_2276730B0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v42 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9150, &unk_227675CD0);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v19 = &v42 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9158, &qword_2276730B8);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20 - 8);
  v23 = &v42 - v22;
  v24 = sub_227666180();
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v24);
  v28 = &v42 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_2276651A0();
  v30 = *(v29 - 8);
  v31 = *(v30 + 64);
  MEMORY[0x28223BE20](v29);
  v33 = &v42 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_227667DA0();
  (*(*(v34 - 8) + 16))(v28, v43, v34);
  (*(v25 + 104))(v28, *MEMORY[0x277D52108], v24);
  v35 = sub_227663260();
  (*(*(v35 - 8) + 56))(v23, 1, 1, v35);
  v36 = sub_227665970();
  (*(*(v36 - 8) + 56))(v19, 1, 1, v36);
  v37 = sub_2276659A0();
  (*(*(v37 - 8) + 56))(v15, 1, 1, v37);
  sub_227507A48();
  v38 = sub_2276651F0();
  (*(*(v38 - 8) + 56))(v11, 0, 1, v38);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9160, &qword_227675CE0);
  (*(*(v39 - 8) + 56))(v44, 1, 1, v39);
  v40 = sub_2276665E0();
  (*(*(v40 - 8) + 56))(v45, 1, 1, v40);
  sub_227665180();
  sub_226F99D48(v33, v46);
  return (*(v30 + 8))(v33, v29);
}

uint64_t sub_226F99D48@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a1;
  v26 = a2;
  v3 = sub_2276651A0();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9128, &unk_22767F4F0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v24 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v24 - v10;
  v12 = *__swift_project_boxed_opaque_existential_0((v2 + 112), *(v2 + 136));
  swift_beginAccess();
  sub_226F9B220(v12 + 280, &v29);
  if (v30)
  {
    sub_226E92AB8(&v29, v28);
    sub_226E91B50(v28, v27);
    v13 = swift_allocObject();
    sub_226E92AB8(v27, v13 + 16);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9130, &qword_2276730A8);
    sub_227669280();
    __swift_destroy_boxed_opaque_existential_0(v28);
  }

  else
  {
    v14 = sub_2276636A0();
    sub_226F09790();
    v15 = swift_allocError();
    (*(*(v14 - 8) + 104))(v16, *MEMORY[0x277D50048], v14);
    *(swift_allocObject() + 16) = v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9130, &qword_2276730A8);
    sub_227669280();
  }

  (*(v4 + 16))(&v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v25, v3);
  v17 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v18 = swift_allocObject();
  (*(v4 + 32))(v18 + v17, &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v3);
  v19 = v24;
  (*(v7 + 16))(v24, v11, v6);
  v20 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v21 = swift_allocObject();
  (*(v7 + 32))(v21 + v20, v19, v6);
  v22 = (v21 + ((v8 + v20 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v22 = sub_226F9B52C;
  v22[1] = v18;
  sub_227669270();
  return (*(v7 + 8))(v11, v6);
}

uint64_t sub_226F9A150()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0(v0 + 4);
  __swift_destroy_boxed_opaque_existential_0(v0 + 9);
  __swift_destroy_boxed_opaque_existential_0(v0 + 14);
  __swift_destroy_boxed_opaque_existential_0(v0 + 19);
  __swift_destroy_boxed_opaque_existential_0(v0 + 25);
  v2 = v0[30];

  return swift_deallocClassInstance();
}

uint64_t sub_226F9A1DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a1;
  v26 = a2;
  v3 = sub_227667830();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9128, &unk_22767F4F0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v24 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v24 - v10;
  v12 = *__swift_project_boxed_opaque_existential_0((v2 + 112), *(v2 + 136));
  swift_beginAccess();
  sub_226F9B220(v12 + 280, &v29);
  if (v30)
  {
    sub_226E92AB8(&v29, v28);
    sub_226E91B50(v28, v27);
    v13 = swift_allocObject();
    sub_226E92AB8(v27, v13 + 16);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9130, &qword_2276730A8);
    sub_227669280();
    __swift_destroy_boxed_opaque_existential_0(v28);
  }

  else
  {
    v14 = sub_2276636A0();
    sub_226F09790();
    v15 = swift_allocError();
    (*(*(v14 - 8) + 104))(v16, *MEMORY[0x277D50048], v14);
    *(swift_allocObject() + 16) = v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9130, &qword_2276730A8);
    sub_227669280();
  }

  (*(v4 + 16))(&v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v25, v3);
  v17 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v18 = swift_allocObject();
  (*(v4 + 32))(v18 + v17, &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v3);
  v19 = v24;
  (*(v7 + 16))(v24, v11, v6);
  v20 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v21 = swift_allocObject();
  (*(v7 + 32))(v21 + v20, v19, v6);
  v22 = (v21 + ((v8 + v20 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v22 = sub_226F9B2A4;
  v22[1] = v18;
  sub_227669270();
  return (*(v7 + 8))(v11, v6);
}

uint64_t sub_226F9A5E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a1;
  v26 = a2;
  v3 = sub_227666C40();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9128, &unk_22767F4F0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v24 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v24 - v10;
  v12 = *__swift_project_boxed_opaque_existential_0((v2 + 112), *(v2 + 136));
  swift_beginAccess();
  sub_226F9B220(v12 + 280, &v29);
  if (v30)
  {
    sub_226E92AB8(&v29, v28);
    sub_226E91B50(v28, v27);
    v13 = swift_allocObject();
    sub_226E92AB8(v27, v13 + 16);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9130, &qword_2276730A8);
    sub_227669280();
    __swift_destroy_boxed_opaque_existential_0(v28);
  }

  else
  {
    v14 = sub_2276636A0();
    sub_226F09790();
    v15 = swift_allocError();
    (*(*(v14 - 8) + 104))(v16, *MEMORY[0x277D50048], v14);
    *(swift_allocObject() + 16) = v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9130, &qword_2276730A8);
    sub_227669280();
  }

  (*(v4 + 16))(&v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v25, v3);
  v17 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v18 = swift_allocObject();
  (*(v4 + 32))(v18 + v17, &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v3);
  v19 = v24;
  (*(v7 + 16))(v24, v11, v6);
  v20 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v21 = swift_allocObject();
  (*(v7 + 32))(v21 + v20, v19, v6);
  v22 = (v21 + ((v8 + v20 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v22 = sub_226F9B3F4;
  v22[1] = v18;
  sub_227669270();
  return (*(v7 + 8))(v11, v6);
}

uint64_t sub_226F9A9EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a1;
  v26 = a2;
  v3 = sub_227664DB0();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9128, &unk_22767F4F0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v24 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v24 - v10;
  v12 = *__swift_project_boxed_opaque_existential_0((v2 + 112), *(v2 + 136));
  swift_beginAccess();
  sub_226F9B220(v12 + 280, &v29);
  if (v30)
  {
    sub_226E92AB8(&v29, v28);
    sub_226E91B50(v28, v27);
    v13 = swift_allocObject();
    sub_226E92AB8(v27, v13 + 16);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9130, &qword_2276730A8);
    sub_227669280();
    __swift_destroy_boxed_opaque_existential_0(v28);
  }

  else
  {
    v14 = sub_2276636A0();
    sub_226F09790();
    v15 = swift_allocError();
    (*(*(v14 - 8) + 104))(v16, *MEMORY[0x277D50048], v14);
    *(swift_allocObject() + 16) = v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9130, &qword_2276730A8);
    sub_227669280();
  }

  (*(v4 + 16))(&v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v25, v3);
  v17 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v18 = swift_allocObject();
  (*(v4 + 32))(v18 + v17, &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v3);
  v19 = v24;
  (*(v7 + 16))(v24, v11, v6);
  v20 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v21 = swift_allocObject();
  (*(v7 + 32))(v21 + v20, v19, v6);
  v22 = (v21 + ((v8 + v20 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v22 = sub_226F9B34C;
  v22[1] = v18;
  sub_227669270();
  return (*(v7 + 8))(v11, v6);
}

uint64_t sub_226F9ADF4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9128, &unk_22767F4F0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x28223BE20](v1);
  v5 = v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v7 = v17 - v6;
  v8 = *__swift_project_boxed_opaque_existential_0((v0 + 112), *(v0 + 136));
  swift_beginAccess();
  sub_226F9B220(v8 + 280, &v19);
  if (v20)
  {
    sub_226E92AB8(&v19, v18);
    sub_226E91B50(v18, v17);
    v9 = swift_allocObject();
    sub_226E92AB8(v17, v9 + 16);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9130, &qword_2276730A8);
    sub_227669280();
    __swift_destroy_boxed_opaque_existential_0(v18);
  }

  else
  {
    v10 = sub_2276636A0();
    sub_226F09790();
    v11 = swift_allocError();
    (*(*(v10 - 8) + 104))(v12, *MEMORY[0x277D50048], v10);
    *(swift_allocObject() + 16) = v11;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9130, &qword_2276730A8);
    sub_227669280();
  }

  (*(v2 + 16))(v5, v7, v1);
  v13 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v14 = swift_allocObject();
  (*(v2 + 32))(v14 + v13, v5, v1);
  v15 = (v14 + ((v3 + v13 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v15 = sub_226F9B114;
  v15[1] = 0;
  sub_227669270();
  return (*(v2 + 8))(v7, v1);
}

uint64_t sub_226F9B114(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, v1);
  return (*(v2 + 40))(v1, v2);
}

uint64_t sub_226F9B2A4(void *a1)
{
  v3 = *(sub_227667830() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = a1[3];
  v6 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, v5);
  return (*(v6 + 32))(v1 + v4, v5, v6);
}

uint64_t sub_226F9B34C(void *a1)
{
  v3 = *(sub_227664DB0() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = a1[3];
  v6 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, v5);
  return (*(v6 + 24))(v1 + v4, v5, v6);
}

uint64_t sub_226F9B3F4(void *a1)
{
  v3 = *(sub_227666C40() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = a1[3];
  v6 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, v5);
  return (*(v6 + 16))(v1 + v4, v5, v6);
}

uint64_t objectdestroy_20Tm(uint64_t (*a1)(void))
{
  v2 = a1(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 16) & ~v4;
  v6 = *(v3 + 64);
  (*(v3 + 8))(v1 + v5, v2);

  return MEMORY[0x2821FE8E8](v1, v5 + v6, v4 | 7);
}

uint64_t sub_226F9B52C(void *a1)
{
  v3 = *(sub_2276651A0() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = a1[3];
  v6 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, v5);
  return (*(v6 + 8))(v1 + v4, v5, v6);
}

uint64_t sub_226F9B604(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t, unint64_t, uint64_t, uint64_t))
{
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a3, a4) - 8);
  v9 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v10 = (v5 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];

  return a5(a1, a2, v5 + v9, v11, v12);
}

uint64_t sub_226F9B700(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(uint64_t))
{
  v40 = a3;
  v39 = a2(0);
  v5 = *(v39 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v39);
  v38 = v32 - v7;
  v8 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (v8)
  {
    v32[1] = v3;
    v45 = MEMORY[0x277D84F90];
    sub_226F1EF90(0, v8, 0);
    v10 = -1 << *(a1 + 32);
    v43 = a1 + 56;
    v44 = v45;
    result = sub_22766CC90();
    v11 = result;
    v12 = 0;
    v36 = v5 + 8;
    v37 = v5 + 16;
    v33 = a1 + 64;
    v34 = v8;
    v35 = v5;
    while ((v11 & 0x8000000000000000) == 0 && v11 < 1 << *(a1 + 32))
    {
      v15 = v11 >> 6;
      if ((*(v43 + 8 * (v11 >> 6)) & (1 << v11)) == 0)
      {
        goto LABEL_22;
      }

      v41 = *(a1 + 36);
      v16 = v38;
      v17 = v39;
      v18 = (*(v5 + 16))(v38, *(a1 + 48) + *(v5 + 72) * v11, v39);
      v42 = v40(v18);
      v20 = v19;
      result = (*(v5 + 8))(v16, v17);
      v21 = v44;
      v45 = v44;
      v23 = *(v44 + 16);
      v22 = *(v44 + 24);
      if (v23 >= v22 >> 1)
      {
        result = sub_226F1EF90(v22 > 1, v23 + 1, 1);
        v21 = v45;
      }

      *(v21 + 16) = v23 + 1;
      v24 = v21 + 16 * v23;
      *(v24 + 32) = v42;
      *(v24 + 40) = v20;
      v13 = 1 << *(a1 + 32);
      if (v11 >= v13)
      {
        goto LABEL_23;
      }

      v25 = *(v43 + 8 * v15);
      if ((v25 & (1 << v11)) == 0)
      {
        goto LABEL_24;
      }

      v44 = v21;
      if (v41 != *(a1 + 36))
      {
        goto LABEL_25;
      }

      v26 = v25 & (-2 << (v11 & 0x3F));
      if (v26)
      {
        v13 = __clz(__rbit64(v26)) | v11 & 0x7FFFFFFFFFFFFFC0;
        v14 = v34;
        v5 = v35;
      }

      else
      {
        v27 = v15 << 6;
        v28 = v15 + 1;
        v14 = v34;
        v29 = (v33 + 8 * v15);
        v5 = v35;
        while (v28 < (v13 + 63) >> 6)
        {
          v31 = *v29++;
          v30 = v31;
          v27 += 64;
          ++v28;
          if (v31)
          {
            result = sub_226EB526C(v11, v41, 0);
            v13 = __clz(__rbit64(v30)) + v27;
            goto LABEL_4;
          }
        }

        result = sub_226EB526C(v11, v41, 0);
      }

LABEL_4:
      ++v12;
      v11 = v13;
      if (v12 == v14)
      {
        return v44;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
  }

  return result;
}

uint64_t sub_226F9BA10(uint64_t a1)
{
  v44 = sub_227664530();
  v3 = *(v44 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v44);
  v43 = v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = sub_227664E40();
  v6 = *(v42 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v42);
  v9 = v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (v10)
  {
    v33[1] = v1;
    v49 = MEMORY[0x277D84F90];
    sub_226F1FA48(0, v10, 0);
    v12 = -1 << *(a1 + 32);
    v47 = a1 + 56;
    v48 = v49;
    result = sub_22766CC90();
    v13 = result;
    v14 = 0;
    v40 = v6;
    v41 = v3;
    v38 = v3 + 8;
    v39 = v3 + 16;
    v36 = a1;
    v37 = v6 + 32;
    v34 = a1 + 64;
    v35 = v10;
    while ((v13 & 0x8000000000000000) == 0 && v13 < 1 << *(a1 + 32))
    {
      v17 = v13 >> 6;
      if ((*(v47 + 8 * (v13 >> 6)) & (1 << v13)) == 0)
      {
        goto LABEL_22;
      }

      v18 = *(a1 + 36);
      v45 = v14;
      v46 = v18;
      v19 = v41;
      v20 = v43;
      v21 = v44;
      (*(v41 + 16))(v43, *(a1 + 48) + *(v41 + 72) * v13, v44);
      sub_227664510();
      sub_2276644F0();
      sub_227664490();
      sub_227664E30();
      (*(v19 + 8))(v20, v21);
      v22 = v48;
      v49 = v48;
      v24 = *(v48 + 16);
      v23 = *(v48 + 24);
      if (v24 >= v23 >> 1)
      {
        sub_226F1FA48(v23 > 1, v24 + 1, 1);
        v22 = v49;
      }

      *(v22 + 16) = v24 + 1;
      v25 = (*(v40 + 80) + 32) & ~*(v40 + 80);
      v48 = v22;
      result = (*(v40 + 32))(v22 + v25 + *(v40 + 72) * v24, v9, v42);
      a1 = v36;
      v15 = 1 << *(v36 + 32);
      if (v13 >= v15)
      {
        goto LABEL_23;
      }

      v26 = *(v47 + 8 * v17);
      if ((v26 & (1 << v13)) == 0)
      {
        goto LABEL_24;
      }

      if (v46 != *(v36 + 36))
      {
        goto LABEL_25;
      }

      v27 = v26 & (-2 << (v13 & 0x3F));
      if (v27)
      {
        v15 = __clz(__rbit64(v27)) | v13 & 0x7FFFFFFFFFFFFFC0;
        v16 = v35;
      }

      else
      {
        v28 = v17 << 6;
        v29 = v17 + 1;
        v16 = v35;
        v30 = (v34 + 8 * v17);
        while (v29 < (v15 + 63) >> 6)
        {
          v32 = *v30++;
          v31 = v32;
          v28 += 64;
          ++v29;
          if (v32)
          {
            result = sub_226EB526C(v13, v46, 0);
            v15 = __clz(__rbit64(v31)) + v28;
            goto LABEL_4;
          }
        }

        result = sub_226EB526C(v13, v46, 0);
      }

LABEL_4:
      v14 = v45 + 1;
      v13 = v15;
      if (v45 + 1 == v16)
      {
        return v48;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
  }

  return result;
}

uint64_t sub_226F9BDF8(uint64_t a1)
{
  v50 = sub_227664530();
  v2 = *(v50 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x28223BE20](v50);
  v49 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v4);
  v45 = &v43 - v7;
  MEMORY[0x28223BE20](v6);
  v44 = &v43 - v8;
  v9 = *(a1 + 16);
  v55 = MEMORY[0x277D84F90];
  sub_226F1EF90(0, v9, 0);
  v10 = a1 + 56;
  v11 = v55;
  v12 = -1;
  v13 = -1 << *(a1 + 32);
  if (-v13 < 64)
  {
    v12 = ~(-1 << -v13);
  }

  v14 = v12 & *(a1 + 56);
  v15 = (63 - v13) >> 6;
  v51 = a1;
  v52 = v2;
  v48 = v9;
  if (v9)
  {
    v46 = v2 + 8;
    v47 = v2 + 16;

    v16 = 0;
    v17 = 0;
    while (v14)
    {
      v18 = v11;
LABEL_11:
      v20 = v52;
      v21 = *(a1 + 48) + *(v52 + 72) * (__clz(__rbit64(v14)) | (v17 << 6));
      v22 = v49;
      v23 = v50;
      (*(v52 + 16))(v49, v21, v50);
      v24 = sub_2276644D0();
      v53 = v25;
      v54 = v24;
      (*(v20 + 8))(v22, v23);
      v11 = v18;
      v55 = v18;
      v27 = *(v18 + 16);
      v26 = *(v18 + 24);
      if (v27 >= v26 >> 1)
      {
        sub_226F1EF90(v26 > 1, v27 + 1, 1);
        v11 = v55;
      }

      ++v16;
      v14 &= v14 - 1;
      *(v11 + 16) = v27 + 1;
      v28 = v11 + 16 * v27;
      v29 = v53;
      *(v28 + 32) = v54;
      *(v28 + 40) = v29;
      a1 = v51;
      if (v16 == v48)
      {
        goto LABEL_16;
      }
    }

    while (1)
    {
      v19 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v19 >= v15)
      {
        goto LABEL_29;
      }

      v14 = *(v10 + 8 * v19);
      ++v17;
      if (v14)
      {
        v18 = v11;
        v17 = v19;
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  else
  {

    v17 = 0;
LABEL_16:
    v30 = v52;
    v53 = v52 + 16;
    v48 = v52 + 8;
    v49 = (v52 + 32);
    if (!v14)
    {
      goto LABEL_18;
    }

    do
    {
      v54 = v11;
LABEL_22:
      v32 = *(a1 + 48) + *(v30 + 72) * (__clz(__rbit64(v14)) | (v17 << 6));
      v33 = v45;
      v34 = v50;
      (*(v30 + 16))(v45, v32, v50);
      v35 = v44;
      (*(v30 + 32))(v44, v33, v34);
      v36 = sub_2276644D0();
      v38 = v37;
      (*(v30 + 8))(v35, v34);
      v11 = v54;
      v55 = v54;
      v40 = *(v54 + 16);
      v39 = *(v54 + 24);
      if (v40 >= v39 >> 1)
      {
        sub_226F1EF90(v39 > 1, v40 + 1, 1);
        v11 = v55;
      }

      v14 &= v14 - 1;
      *(v11 + 16) = v40 + 1;
      v41 = v11 + 16 * v40;
      *(v41 + 32) = v36;
      *(v41 + 40) = v38;
      a1 = v51;
      v30 = v52;
    }

    while (v14);
LABEL_18:
    while (1)
    {
      v31 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v31 >= v15)
      {

        return v11;
      }

      v14 = *(v10 + 8 * v31);
      ++v17;
      if (v14)
      {
        v54 = v11;
        v17 = v31;
        goto LABEL_22;
      }
    }
  }

  __break(1u);
LABEL_29:

  __break(1u);
  return result;
}

uint64_t sub_226F9C20C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_22766A060();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v25[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = sub_22766B390();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v25[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v12);
  v16 = &v25[-v15];
  sub_22766A730();
  sub_22766B370();
  v17 = *(v10 + 8);
  v17(v16, v9);
  if (*(a1 + 16))
  {
    v18 = sub_226F9B700(a1, MEMORY[0x277D50978], MEMORY[0x277D50950]);
    sub_226F3E6A8(v18);

    v19 = *(v2 + 136);
    v20 = *(v2 + 144);
    swift_getObjectType();
    sub_22766A050();
    sub_2276699D0();
    return (*(v5 + 8))(v8, v4);
  }

  else
  {
    sub_22766A730();
    v22 = sub_22766B380();
    v23 = sub_22766C8B0();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_226E8E000, v22, v23, "Empty archived sessions set, not publishing ArchivedSessionsUpdated", v24, 2u);
      MEMORY[0x22AA9A450](v24, -1, -1);
    }

    return (v17)(v14, v9);
  }
}