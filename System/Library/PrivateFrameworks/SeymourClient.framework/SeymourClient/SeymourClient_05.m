uint64_t Termination.applyingTimestampOffset(_:)()
{
  sub_1B4F64E24();

  return sub_1B4F64E34();
}

uint64_t sub_1B4E4928C()
{
  sub_1B4F64E24();

  return sub_1B4F64E34();
}

uint64_t CadenceMetric.applyingTimestampOffset(_:)()
{
  sub_1B4F65254();

  return sub_1B4F65264();
}

uint64_t sub_1B4E49344()
{
  sub_1B4F65254();

  return sub_1B4F65264();
}

uint64_t ResourceGating.release(throwing:)(void *a1, uint64_t a2, uint64_t a3)
{
  swift_getAssociatedTypeWitness();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8F5130, &qword_1B4F71530);
  v6 = sub_1B4F68F14();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6, v9);
  v11 = &v15 - v10;
  *(&v15 - v10) = a1;
  swift_storeEnumTagMultiPayload();
  v12 = *(a3 + 48);
  v13 = a1;
  v12(v11, a2, a3);
  return (*(v7 + 8))(v11, v6);
}

uint64_t ResourceGating.release(returning:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8F5130, &qword_1B4F71530);
  v7 = sub_1B4F68F14();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v11 = MEMORY[0x1EEE9AC00](v7, v10);
  v13 = &v15 - v12;
  (*(*(AssociatedTypeWitness - 8) + 16))(&v15 - v12, a1, AssociatedTypeWitness, v11);
  swift_storeEnumTagMultiPayload();
  (*(a3 + 48))(v13, a2, a3);
  return (*(v8 + 8))(v13, v7);
}

uint64_t dispatch thunk of ResourceGating.fetch()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 32);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_1B4DE13F0;

  return v11(a1, a2, a3);
}

uint64_t SessionUpdate.applyingTimestampOffset(_:)@<X0>(uint64_t a1@<X8>)
{
  v443 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4068, &qword_1B4F6A5C0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8, v4);
  v456 = &v409 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v447 = &v409 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4070, &unk_1B4F788E0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8, v11);
  v442 = &v409 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v14);
  v444 = &v409 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4060, &unk_1B4F788D0);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8, v18);
  v441 = &v409 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20, v21);
  v471 = &v409 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4078, &qword_1B4F6A5C8);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x1EEE9AC00](v23 - 8, v25);
  v440 = &v409 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27, v28);
  v470 = &v409 - v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4080, &unk_1B4F788F0);
  v31 = *(*(v30 - 8) + 64);
  MEMORY[0x1EEE9AC00](v30 - 8, v32);
  v439 = &v409 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v34, v35);
  v469 = &v409 - v36;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4088, &qword_1B4F6A5D0);
  v38 = *(*(v37 - 8) + 64);
  MEMORY[0x1EEE9AC00](v37 - 8, v39);
  v41 = &v409 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v42, v43);
  v436 = &v409 - v44;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F41B8, &qword_1B4F6A678);
  v46 = *(*(v45 - 8) + 64);
  MEMORY[0x1EEE9AC00](v45 - 8, v47);
  v415 = &v409 - v48;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F51D8, &unk_1B4F78900);
  v50 = *(*(v49 - 8) + 64);
  MEMORY[0x1EEE9AC00](v49 - 8, v51);
  v435 = &v409 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v53, v54);
  v468 = &v409 - v55;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4090, &qword_1B4F6A5D8);
  v57 = *(*(v56 - 8) + 64);
  MEMORY[0x1EEE9AC00](v56 - 8, v58);
  v431 = &v409 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v60, v61);
  v467 = &v409 - v62;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F40A8, &qword_1B4F6A5E8);
  v64 = *(*(v63 - 8) + 64);
  MEMORY[0x1EEE9AC00](v63 - 8, v65);
  v414 = &v409 - v66;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F40B0, &unk_1B4F78920);
  v68 = *(*(v67 - 8) + 64);
  MEMORY[0x1EEE9AC00](v67 - 8, v69);
  v430 = &v409 - ((v70 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v71, v72);
  v466 = &v409 - v73;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F40A0, &qword_1B4F6A5E0);
  v75 = *(*(v74 - 8) + 64);
  MEMORY[0x1EEE9AC00](v74 - 8, v76);
  v429 = &v409 - ((v77 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v78, v79);
  v465 = &v409 - v80;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F40B8, &qword_1B4F6A5F0);
  v82 = *(*(v81 - 8) + 64);
  MEMORY[0x1EEE9AC00](v81 - 8, v83);
  v428 = &v409 - ((v84 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v85, v86);
  v464 = &v409 - v87;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F40C0, &unk_1B4F78930);
  v89 = *(*(v88 - 8) + 64);
  MEMORY[0x1EEE9AC00](v88 - 8, v90);
  v446 = &v409 - ((v91 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v92, v93);
  v463 = &v409 - v94;
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F51E0, &qword_1B4F71248);
  v96 = *(*(v95 - 8) + 64);
  MEMORY[0x1EEE9AC00](v95 - 8, v97);
  v413 = &v409 - v98;
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F51E8, &qword_1B4F71250);
  v100 = *(*(v99 - 8) + 64);
  MEMORY[0x1EEE9AC00](v99 - 8, v101);
  v412 = &v409 - v102;
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F40C8, &qword_1B4F6A5F8);
  v104 = *(*(v103 - 8) + 64);
  MEMORY[0x1EEE9AC00](v103 - 8, v105);
  v438 = &v409 - ((v106 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v107, v108);
  v110 = &v409 - v109;
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F40D0, &unk_1B4F78940);
  v112 = *(*(v111 - 8) + 64);
  MEMORY[0x1EEE9AC00](v111 - 8, v113);
  v427 = &v409 - ((v114 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v115, v116);
  v462 = &v409 - v117;
  v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F40D8, &qword_1B4F6A600);
  v119 = *(*(v118 - 8) + 64);
  MEMORY[0x1EEE9AC00](v118 - 8, v120);
  v426 = &v409 - ((v121 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v122, v123);
  v461 = &v409 - v124;
  v125 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F40E0, &unk_1B4F78950);
  v126 = *(*(v125 - 8) + 64);
  MEMORY[0x1EEE9AC00](v125 - 8, v127);
  v445 = &v409 - ((v128 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v129, v130);
  v460 = &v409 - v131;
  v132 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F40E8, &qword_1B4F6A608);
  v133 = *(*(v132 - 8) + 64);
  MEMORY[0x1EEE9AC00](v132 - 8, v134);
  v425 = &v409 - ((v135 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v136, v137);
  v459 = &v409 - v138;
  v139 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F40F0, &unk_1B4F78960);
  v140 = *(*(v139 - 8) + 64);
  MEMORY[0x1EEE9AC00](v139 - 8, v141);
  v424 = &v409 - ((v142 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v143, v144);
  v458 = &v409 - v145;
  v146 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F72D0, &qword_1B4F6A610);
  v147 = *(*(v146 - 8) + 64);
  MEMORY[0x1EEE9AC00](v146 - 8, v148);
  v423 = &v409 - ((v149 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v150, v151);
  v457 = &v409 - v152;
  v153 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F40F8, &unk_1B4F78970);
  v154 = *(*(v153 - 8) + 64);
  MEMORY[0x1EEE9AC00](v153 - 8, v155);
  v422 = &v409 - ((v156 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v157, v158);
  v160 = &v409 - v159;
  v161 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4100, &qword_1B4F6A618);
  v162 = *(*(v161 - 8) + 64);
  MEMORY[0x1EEE9AC00](v161 - 8, v163);
  v411 = &v409 - v164;
  v165 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4108, &qword_1B4F6A620);
  v166 = *(*(v165 - 8) + 64);
  MEMORY[0x1EEE9AC00](v165 - 8, v167);
  v410 = &v409 - v168;
  v169 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4110, &qword_1B4F6A628);
  v170 = *(*(v169 - 8) + 64);
  MEMORY[0x1EEE9AC00](v169 - 8, v171);
  v409 = &v409 - v172;
  v173 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4118, &qword_1B4F6A630);
  v174 = *(*(v173 - 8) + 64);
  MEMORY[0x1EEE9AC00](v173 - 8, v175);
  v421 = &v409 - ((v176 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v177, v178);
  v455 = &v409 - v179;
  v180 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4128, &qword_1B4F6A638);
  v181 = *(*(v180 - 8) + 64);
  MEMORY[0x1EEE9AC00](v180 - 8, v182);
  v420 = &v409 - ((v183 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v184, v185);
  v454 = &v409 - v186;
  v187 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4120, &unk_1B4F78980);
  v188 = *(*(v187 - 8) + 64);
  MEMORY[0x1EEE9AC00](v187 - 8, v189);
  v419 = &v409 - ((v190 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v191, v192);
  v453 = &v409 - v193;
  v194 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4130, &unk_1B4F78990);
  v195 = *(*(v194 - 8) + 64);
  MEMORY[0x1EEE9AC00](v194 - 8, v196);
  v418 = &v409 - ((v197 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v198, v199);
  v452 = &v409 - v200;
  v201 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4138, &qword_1B4F6A640);
  v202 = *(*(v201 - 8) + 64);
  MEMORY[0x1EEE9AC00](v201 - 8, v203);
  v417 = &v409 - ((v204 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v205, v206);
  v451 = &v409 - v207;
  v208 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4140, qword_1B4F789A0);
  v209 = *(*(v208 - 8) + 64);
  MEMORY[0x1EEE9AC00](v208 - 8, v210);
  v416 = &v409 - ((v211 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v212, v213);
  v450 = &v409 - v214;
  v215 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4148, &qword_1B4F6A648);
  v216 = *(*(v215 - 8) + 64);
  MEMORY[0x1EEE9AC00](v215 - 8, v217);
  v219 = &v409 - ((v218 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v220, v221);
  v223 = &v409 - v222;
  v224 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4150, &qword_1B4F6A650);
  v225 = *(*(v224 - 8) + 64);
  MEMORY[0x1EEE9AC00](v224 - 8, v226);
  v228 = &v409 - v227;
  v229 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F7050, &qword_1B4F71500);
  v230 = *(*(v229 - 8) + 64);
  MEMORY[0x1EEE9AC00](v229 - 8, v231);
  v233 = &v409 - ((v232 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v234, v235);
  v449 = &v409 - v236;
  v432 = sub_1B4F65434();
  v434 = sub_1B4F65444();
  v433 = v237;
  v472 = v1;
  sub_1B4F65384();
  v238 = sub_1B4F65184();
  v239 = *(v238 - 8);
  v240 = (*(v239 + 48))(v233, 1, v238);
  v437 = v41;
  v448 = v110;
  if (v240 == 1)
  {
    sub_1B4DD2BC4(v233, &qword_1EB8F7050, &qword_1B4F71500);
    v241 = 1;
    v242 = v449;
  }

  else
  {
    v243 = sub_1B4F65CA4();
    (*(*(v243 - 8) + 56))(v228, 1, 1, v243);
    v244 = sub_1B4F64EF4();
    v245 = *(*(v244 - 8) + 56);
    v245(v223, 1, 1, v244);
    v245(v219, 1, 1, v244);
    sub_1B4F65134();
    v246 = v449;
    sub_1B4F65174();
    sub_1B4DD2BC4(v219, &qword_1EB8F4148, &qword_1B4F6A648);
    sub_1B4DD2BC4(v223, &qword_1EB8F4148, &qword_1B4F6A648);
    sub_1B4DD2BC4(v228, &qword_1EB8F4150, &qword_1B4F6A650);
    (*(v239 + 8))(v233, v238);
    v241 = 0;
    v242 = v246;
  }

  (*(v239 + 56))(v242, v241, 1, v238);
  v247 = v416;
  sub_1B4F65464();
  v248 = v247;
  v249 = sub_1B4F663B4();
  v250 = *(v249 - 8);
  v251 = (*(v250 + 48))(v248, 1, v249);
  v252 = v458;
  v253 = v454;
  v254 = v452;
  v255 = v419;
  if (v251 == 1)
  {
    sub_1B4DD2BC4(v248, &qword_1EB8F4140, qword_1B4F789A0);
    v256 = 1;
    v257 = v450;
  }

  else
  {
    sub_1B4F66394();
    v257 = v450;
    sub_1B4F663A4();
    (*(v250 + 8))(v248, v249);
    v256 = 0;
  }

  (*(v250 + 56))(v257, v256, 1, v249);
  v258 = v417;
  sub_1B4F65484();
  v259 = sub_1B4F66754();
  v260 = *(v259 - 8);
  if ((*(v260 + 48))(v258, 1, v259) == 1)
  {
    sub_1B4DD2BC4(v258, &qword_1EB8F4138, &qword_1B4F6A640);
    v261 = 1;
    v262 = v460;
    v263 = v451;
  }

  else
  {
    sub_1B4F66714();
    v263 = v451;
    sub_1B4F66744();
    (*(v260 + 8))(v258, v259);
    v261 = 0;
    v262 = v460;
  }

  (*(v260 + 56))(v263, v261, 1, v259);
  v264 = v418;
  sub_1B4F65394();
  v265 = sub_1B4F65274();
  v266 = *(v265 - 8);
  if ((*(v266 + 48))(v264, 1, v265) == 1)
  {
    sub_1B4DD2BC4(v264, &qword_1EB8F4130, &unk_1B4F78990);
    v267 = 1;
  }

  else
  {
    sub_1B4F65254();
    sub_1B4F65264();
    (*(v266 + 8))(v264, v265);
    v267 = 0;
  }

  v268 = v446;
  (*(v266 + 56))(v254, v267, 1, v265);
  sub_1B4F653E4();
  v269 = sub_1B4F65AD4();
  v270 = *(v269 - 8);
  if ((*(v270 + 48))(v255, 1, v269) == 1)
  {
    sub_1B4DD2BC4(v255, &qword_1EB8F4120, &unk_1B4F78980);
    v271 = 1;
    v272 = v453;
  }

  else
  {
    sub_1B4F65AB4();
    v272 = v453;
    sub_1B4F65AC4();
    (*(v270 + 8))(v255, v269);
    v271 = 0;
  }

  (*(v270 + 56))(v272, v271, 1, v269);
  v273 = v420;
  sub_1B4F654F4();
  v274 = sub_1B4F67AF4();
  v275 = *(v274 - 8);
  if ((*(v275 + 48))(v273, 1, v274) == 1)
  {
    sub_1B4DD2BC4(v273, &qword_1EB8F4128, &qword_1B4F6A638);
    v276 = 1;
  }

  else
  {
    sub_1B4F67AD4();
    sub_1B4F67AE4();
    (*(v275 + 8))(v273, v274);
    v276 = 0;
  }

  v277 = v445;
  (*(v275 + 56))(v253, v276, 1, v274);
  v278 = v421;
  sub_1B4F65454();
  v279 = sub_1B4F66014();
  v280 = *(v279 - 8);
  if ((*(v280 + 48))(v278, 1, v279) == 1)
  {
    sub_1B4DD2BC4(v278, &qword_1EB8F4118, &qword_1B4F6A630);
    v281 = 1;
    v282 = v455;
  }

  else
  {
    v283 = sub_1B4F669F4();
    v284 = v160;
    v285 = v409;
    (*(*(v283 - 8) + 56))(v409, 1, 1, v283);
    v286 = sub_1B4F66A54();
    v287 = v410;
    (*(*(v286 - 8) + 56))(v410, 1, 1, v286);
    v288 = sub_1B4F66BA4();
    v289 = v252;
    v290 = v262;
    v291 = v411;
    (*(*(v288 - 8) + 56))(v411, 1, 1, v288);
    v292 = v278;
    sub_1B4F65FF4();
    v282 = v455;
    sub_1B4F66004();
    v293 = v291;
    v262 = v290;
    v252 = v289;
    sub_1B4DD2BC4(v293, &qword_1EB8F4100, &qword_1B4F6A618);
    sub_1B4DD2BC4(v287, &qword_1EB8F4108, &qword_1B4F6A620);
    v294 = v285;
    v268 = v446;
    v160 = v284;
    v277 = v445;
    sub_1B4DD2BC4(v294, &qword_1EB8F4110, &qword_1B4F6A628);
    (*(v280 + 8))(v292, v279);
    v281 = 0;
  }

  (*(v280 + 56))(v282, v281, 1, v279);
  v295 = v422;
  sub_1B4F653B4();
  v296 = sub_1B4F65854();
  v297 = *(v296 - 8);
  if ((*(v297 + 48))(v295, 1, v296) == 1)
  {
    sub_1B4DD2BC4(v295, &qword_1EB8F40F8, &unk_1B4F78970);
    v298 = 1;
  }

  else
  {
    sub_1B4F65814();
    sub_1B4F65844();
    (*(v297 + 8))(v295, v296);
    v298 = 0;
  }

  v299 = v438;
  v300 = *(v297 + 56);
  v438 = v160;
  v300(v160, v298, 1, v296);
  v301 = v423;
  sub_1B4F65374();
  v302 = sub_1B4F64FD4();
  v303 = *(v302 - 8);
  if ((*(v303 + 48))(v301, 1, v302) == 1)
  {
    sub_1B4DD2BC4(v301, &qword_1EB8F72D0, &qword_1B4F6A610);
    v304 = 1;
    v305 = v457;
  }

  else
  {
    v306 = v301;
    sub_1B4F64F94();
    v305 = v457;
    sub_1B4F64FC4();
    (*(v303 + 8))(v306, v302);
    v304 = 0;
  }

  (*(v303 + 56))(v305, v304, 1, v302);
  v307 = v424;
  sub_1B4F65414();
  v308 = sub_1B4F65D04();
  v309 = *(v308 - 8);
  if ((*(v309 + 48))(v307, 1, v308) == 1)
  {
    sub_1B4DD2BC4(v307, &qword_1EB8F40F0, &unk_1B4F78960);
    v310 = 1;
  }

  else
  {
    sub_1B4F65CE4();
    sub_1B4F65CF4();
    (*(v309 + 8))(v307, v308);
    v310 = 0;
  }

  v311 = v426;
  (*(v309 + 56))(v252, v310, 1, v308);
  v312 = v425;
  sub_1B4F654C4();
  v313 = sub_1B4F66B74();
  v314 = *(v313 - 8);
  if ((*(v314 + 48))(v312, 1, v313) == 1)
  {
    sub_1B4DD2BC4(v312, &qword_1EB8F40E8, &qword_1B4F6A608);
    v315 = 1;
    v316 = v459;
  }

  else
  {
    v317 = v312;
    sub_1B4F66B54();
    v316 = v459;
    sub_1B4F66B64();
    (*(v314 + 8))(v317, v313);
    v315 = 0;
  }

  (*(v314 + 56))(v316, v315, 1, v313);
  sub_1B4F653F4();
  v318 = sub_1B4F65B84();
  v319 = *(v318 - 8);
  if ((*(v319 + 48))(v277, 1, v318) == 1)
  {
    sub_1B4DD2BC4(v277, &qword_1EB8F40E0, &unk_1B4F78950);
    v320 = 1;
  }

  else
  {
    sub_1B4F65B64();
    sub_1B4F65B74();
    (*(v319 + 8))(v277, v318);
    v320 = 0;
  }

  v321 = v430;
  (*(v319 + 56))(v262, v320, 1, v318);
  sub_1B4F65334();
  v322 = sub_1B4F64AA4();
  v323 = *(v322 - 8);
  if ((*(v323 + 48))(v311, 1, v322) == 1)
  {
    sub_1B4DD2BC4(v311, &qword_1EB8F40D8, &qword_1B4F6A600);
    v324 = 1;
    v325 = v461;
  }

  else
  {
    sub_1B4F64A84();
    v325 = v461;
    sub_1B4F64A94();
    (*(v323 + 8))(v311, v322);
    v324 = 0;
  }

  (*(v323 + 56))(v325, v324, 1, v322);
  v326 = v427;
  sub_1B4F65474();
  v327 = sub_1B4F66454();
  v328 = *(v327 - 8);
  v329 = (*(v328 + 48))(v326, 1, v327);
  v330 = v462;
  if (v329 == 1)
  {
    sub_1B4DD2BC4(v326, &qword_1EB8F40D0, &unk_1B4F78940);
    v331 = 1;
  }

  else
  {
    sub_1B4F66424();
    sub_1B4F66444();
    (*(v328 + 8))(v326, v327);
    v331 = 0;
  }

  v332 = v431;
  (*(v328 + 56))(v330, v331, 1, v327);
  sub_1B4F65314();
  v333 = sub_1B4F65DB4();
  v334 = *(v333 - 8);
  if ((*(v334 + 48))(v299, 1, v333) == 1)
  {
    sub_1B4DD2BC4(v299, &qword_1EB8F40C8, &qword_1B4F6A5F8);
    v335 = 1;
    v336 = v437;
    v337 = v448;
  }

  else
  {
    v338 = sub_1B4F65F04();
    v339 = v412;
    (*(*(v338 - 8) + 56))(v412, 1, 1, v338);
    v340 = sub_1B4F65EF4();
    v341 = v299;
    v342 = v413;
    (*(*(v340 - 8) + 56))(v413, 1, 1, v340);
    sub_1B4F65D94();
    v337 = v448;
    sub_1B4F65DA4();
    sub_1B4DD2BC4(v342, &qword_1EB8F51E0, &qword_1B4F71248);
    sub_1B4DD2BC4(v339, &qword_1EB8F51E8, &qword_1B4F71250);
    (*(v334 + 8))(v341, v333);
    v335 = 0;
    v336 = v437;
  }

  (*(v334 + 56))(v337, v335, 1, v333);
  sub_1B4F65324();
  v343 = sub_1B4F66E84();
  v344 = *(v343 - 8);
  if ((*(v344 + 48))(v268, 1, v343) == 1)
  {
    sub_1B4DD2BC4(v268, &qword_1EB8F40C0, &unk_1B4F78930);
    v345 = 1;
    v346 = v463;
  }

  else
  {
    v347 = v268;
    sub_1B4F66E64();
    v346 = v463;
    sub_1B4F66E74();
    (*(v344 + 8))(v347, v343);
    v345 = 0;
  }

  v348 = v464;
  (*(v344 + 56))(v346, v345, 1, v343);
  v349 = v428;
  sub_1B4F65344();
  v350 = sub_1B4F64B04();
  v351 = *(v350 - 8);
  if ((*(v351 + 48))(v349, 1, v350) == 1)
  {
    sub_1B4DD2BC4(v349, &qword_1EB8F40B8, &qword_1B4F6A5F0);
    v352 = 1;
  }

  else
  {
    sub_1B4F64AE4();
    sub_1B4F64AF4();
    (*(v351 + 8))(v349, v350);
    v352 = 0;
  }

  v353 = v429;
  (*(v351 + 56))(v348, v352, 1, v350);
  sub_1B4F653C4();
  v354 = sub_1B4F65894();
  v355 = *(v354 - 8);
  v356 = (*(v355 + 48))(v353, 1, v354);
  v357 = v439;
  v358 = v468;
  if (v356 == 1)
  {
    sub_1B4DD2BC4(v353, &qword_1EB8F40A0, &qword_1B4F6A5E0);
    v359 = 1;
    v360 = v465;
  }

  else
  {
    sub_1B4F65874();
    v360 = v465;
    sub_1B4F65884();
    (*(v355 + 8))(v353, v354);
    v359 = 0;
  }

  (*(v355 + 56))(v360, v359, 1, v354);
  sub_1B4F654E4();
  v361 = sub_1B4F67A34();
  v362 = *(v361 - 8);
  if ((*(v362 + 48))(v321, 1, v361) == 1)
  {
    sub_1B4DD2BC4(v321, &qword_1EB8F40B0, &unk_1B4F78920);
    v363 = 1;
    v364 = v466;
  }

  else
  {
    sub_1B4F67A04();
    v365 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4160, &qword_1B4F6A660);
    v366 = v414;
    (*(*(v365 - 8) + 56))(v414, 1, 1, v365);
    v364 = v466;
    sub_1B4F67A24();
    sub_1B4DD2BC4(v366, &qword_1EB8F40A8, &qword_1B4F6A5E8);
    (*(v362 + 8))(v321, v361);
    v363 = 0;
  }

  (*(v362 + 56))(v364, v363, 1, v361);
  sub_1B4F65494();
  v367 = sub_1B4F66914();
  v368 = *(v367 - 8);
  if ((*(v368 + 48))(v332, 1, v367) == 1)
  {
    sub_1B4DD2BC4(v332, &qword_1EB8F4090, &qword_1B4F6A5D8);
    v369 = 1;
    v370 = v467;
  }

  else
  {
    sub_1B4F668F4();
    v370 = v467;
    sub_1B4F66904();
    (*(v368 + 8))(v332, v367);
    v369 = 0;
  }

  v371 = v436;
  (*(v368 + 56))(v370, v369, 1, v367);
  v372 = v435;
  sub_1B4F65354();
  v373 = sub_1B4F64E14();
  v374 = *(v373 - 8);
  if ((*(v374 + 48))(v372, 1, v373) == 1)
  {
    sub_1B4DD2BC4(v372, &qword_1EB8F51D8, &unk_1B4F78900);
    v375 = 1;
  }

  else
  {
    v376 = v372;
    sub_1B4F64DD4();
    v377 = sub_1B4F65A94();
    v378 = v415;
    (*(*(v377 - 8) + 56))(v415, 1, 1, v377);
    v477 = 1;
    v476 = 1;
    v475 = 1;
    v474 = 1;
    v473 = 1;
    sub_1B4F64DF4();
    sub_1B4DD2BC4(v378, &qword_1EB8F41B8, &qword_1B4F6A678);
    (*(v374 + 8))(v376, v373);
    v375 = 0;
  }

  v379 = v444;
  (*(v374 + 56))(v358, v375, 1, v373);
  sub_1B4F65364();
  v380 = sub_1B4F64E44();
  v381 = *(v380 - 8);
  if ((*(v381 + 48))(v336, 1, v380) == 1)
  {
    sub_1B4DD2BC4(v336, &qword_1EB8F4088, &qword_1B4F6A5D0);
    v382 = 1;
  }

  else
  {
    sub_1B4F64E24();
    sub_1B4F64E34();
    (*(v381 + 8))(v336, v380);
    v382 = 0;
  }

  (*(v381 + 56))(v371, v382, 1, v380);
  sub_1B4F65404();
  v383 = sub_1B4F65C34();
  v384 = *(v383 - 8);
  v385 = (*(v384 + 48))(v357, 1, v383);
  v386 = v470;
  if (v385 == 1)
  {
    sub_1B4DD2BC4(v357, &qword_1EB8F4080, &unk_1B4F788F0);
    v387 = 1;
    v388 = v469;
  }

  else
  {
    sub_1B4F65C14();
    v388 = v469;
    sub_1B4F65C24();
    (*(v384 + 8))(v357, v383);
    v387 = 0;
  }

  (*(v384 + 56))(v388, v387, 1, v383);
  v389 = v440;
  sub_1B4F653D4();
  v390 = sub_1B4F66084();
  v391 = *(v390 - 8);
  if ((*(v391 + 48))(v389, 1, v390) == 1)
  {
    sub_1B4DD2BC4(v389, &qword_1EB8F4078, &qword_1B4F6A5C8);
    v392 = 1;
  }

  else
  {
    sub_1B4F66054();
    sub_1B4F66064();
    (*(v391 + 8))(v389, v390);
    v392 = 0;
  }

  (*(v391 + 56))(v386, v392, 1, v390);
  v393 = v441;
  sub_1B4F654A4();
  v394 = sub_1B4F66964();
  v395 = *(v394 - 8);
  v396 = (*(v395 + 48))(v393, 1, v394);
  v397 = v442;
  if (v396 == 1)
  {
    sub_1B4DD2BC4(v393, &qword_1EB8F4060, &unk_1B4F788D0);
    v398 = 1;
    v399 = v471;
  }

  else
  {
    sub_1B4F66944();
    v399 = v471;
    sub_1B4F66954();
    (*(v395 + 8))(v393, v394);
    v398 = 0;
  }

  (*(v395 + 56))(v399, v398, 1, v394);
  sub_1B4F654B4();
  v400 = sub_1B4F66AC4();
  v401 = *(v400 - 8);
  if ((*(v401 + 48))(v397, 1, v400) == 1)
  {
    sub_1B4DD2BC4(v397, &qword_1EB8F4070, &unk_1B4F788E0);
    v402 = 1;
  }

  else
  {
    sub_1B4F66AA4();
    sub_1B4F66AB4();
    (*(v401 + 8))(v397, v400);
    v402 = 0;
  }

  (*(v401 + 56))(v379, v402, 1, v400);
  v403 = v456;
  sub_1B4F654D4();
  v404 = sub_1B4F679A4();
  v405 = *(v404 - 8);
  if ((*(v405 + 48))(v403, 1, v404) == 1)
  {
    sub_1B4DD2BC4(v456, &qword_1EB8F4068, &qword_1B4F6A5C0);
    v406 = 1;
  }

  else
  {
    v407 = v456;
    sub_1B4F67974();
    sub_1B4F67994();
    (*(v405 + 8))(v407, v404);
    v406 = 0;
  }

  (*(v405 + 56))(v447, v406, 1, v404);
  sub_1B4F653A4();
  return sub_1B4F65424();
}

uint64_t RemoteBrowsingGuestEnvironmentReceived.environment.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1B4F67284();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t type metadata accessor for RemoteBrowsingGuestEnvironmentReceived()
{
  result = qword_1EB8F51F0;
  if (!qword_1EB8F51F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1B4E4CA60()
{
  result = sub_1B4F67284();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t RemoteBrowsingGuestAuthenticationCompleted.handshake.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1B4F67474();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t type metadata accessor for RemoteBrowsingGuestAuthenticationCompleted()
{
  result = qword_1EB8F5200;
  if (!qword_1EB8F5200)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1B4E4CCD0()
{
  result = sub_1B4F67474();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

Swift::Void __swiftcall TextOutputStreamLog.write(_:)(Swift::String a1)
{
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;
  if (qword_1EDB724A8 != -1)
  {
    swift_once();
  }

  v3 = sub_1B4F67C54();
  __swift_project_value_buffer(v3, qword_1EDB72490);

  oslog = sub_1B4F67C34();
  v4 = sub_1B4F685E4();

  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v8 = v6;
    *v5 = 136446210;
    *(v5 + 4) = sub_1B4DC4F88(countAndFlagsBits, object, &v8);
    _os_log_impl(&dword_1B4DC2000, oslog, v4, "%{public}s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v6);
    MEMORY[0x1B8C831D0](v6, -1, -1);
    MEMORY[0x1B8C831D0](v5, -1, -1);
  }
}

uint64_t sub_1B4E4CECC(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](a1, a2);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v8 + 24);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v12, v8);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(v15 + 32);
  v17 = sub_1B4F68F14();
  v18 = *(*(v17 - 8) + 64);
  v20 = MEMORY[0x1EEE9AC00](v17, v19);
  v22 = &v25 - v21;
  (*(v23 + 16))(&v25 - v21, a1, v17, v20);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v10 + 32))(v14, v22, v9);
    return sub_1B4F682A4();
  }

  else
  {
    (*(v4 + 32))(v7, v22, v3);
    return sub_1B4F682B4();
  }
}

uint64_t TransportClient.sendRequest(_:)(_WORD *a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 24) = a3;
  *(v4 + 32) = v3;
  *(v4 + 16) = a2;
  *(v4 + 64) = *a1;
  return MEMORY[0x1EEE6DFA0](sub_1B4E4D134, 0, 0);
}

uint64_t sub_1B4E4D134()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v0 + 40) = v3;
  *(v3 + 16) = *(v0 + 16);
  *(v3 + 32) = v2;
  *(v3 + 40) = v1;
  v4 = *(MEMORY[0x1E69E8920] + 4);
  v5 = swift_task_alloc();
  *(v0 + 48) = v5;
  *v5 = v0;
  v5[1] = sub_1B4E4D240;
  v6 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DE38](v5, 0, 0, 0x75716552646E6573, 0xEF293A5F28747365, sub_1B4E4D638, v3, v6);
}

uint64_t sub_1B4E4D240()
{
  v2 = *v1;
  v3 = *(*v1 + 48);
  v7 = *v1;
  *(*v1 + 56) = v0;

  if (v0)
  {
    v4 = sub_1B4E4D35C;
  }

  else
  {
    v5 = *(v2 + 40);

    v4 = sub_1B4E4E614;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1B4E4D35C()
{
  v1 = v0[5];

  v2 = v0[1];
  v3 = v0[7];

  return v2();
}

uint64_t sub_1B4E4D3C0(uint64_t a1, uint64_t a2, __int16 a3, uint64_t a4, uint64_t a5)
{
  v26 = a4;
  v27 = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8F7160, &unk_1B4F7C290);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7, v10);
  v12 = &v25 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8F6930, &unk_1B4F6CC10);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v17 = MEMORY[0x1EEE9AC00](v13, v16);
  v19 = &v25 - v18;
  v28 = a3;
  (*(a5 + 8))(&v28, v26, a5, v17);
  (*(v8 + 16))(v12, v27, v7);
  v20 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v21 = swift_allocObject();
  (*(v8 + 32))(v21 + v20, v12, v7);
  v22 = sub_1B4F67654();
  v23 = swift_allocObject();
  *(v23 + 16) = sub_1B4E4E618;
  *(v23 + 24) = v21;

  v22(sub_1B4DDDFD0, v23);

  return (*(v14 + 8))(v19, v13);
}

uint64_t TransportClient.sendRequest<A>(_:payload:)(_WORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v8 + 56) = a7;
  *(v8 + 64) = v7;
  *(v8 + 40) = a5;
  *(v8 + 48) = a6;
  *(v8 + 24) = a3;
  *(v8 + 32) = a4;
  *(v8 + 16) = a2;
  *(v8 + 96) = *a1;
  return MEMORY[0x1EEE6DFA0](sub_1B4E4D67C, 0, 0);
}

uint64_t sub_1B4E4D67C()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v0 + 72) = v3;
  v4 = *(v0 + 40);
  v5 = *(v0 + 56);
  *(v3 + 16) = *(v0 + 24);
  *(v3 + 32) = v4;
  *(v3 + 48) = v5;
  *(v3 + 64) = v1;
  *(v3 + 72) = v2;
  v6 = *(MEMORY[0x1E69E8920] + 4);
  v7 = swift_task_alloc();
  *(v0 + 80) = v7;
  *v7 = v0;
  v7[1] = sub_1B4E4D78C;
  v8 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DE38](v7, 0, 0, 0xD000000000000017, 0x80000001B4F80F20, sub_1B4E4DB98, v3, v8);
}

uint64_t sub_1B4E4D78C()
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v7 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    v4 = sub_1B4E4D8A8;
  }

  else
  {
    v5 = *(v2 + 72);

    v4 = sub_1B4DEDE88;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1B4E4D8A8()
{
  v1 = v0[9];

  v2 = v0[1];
  v3 = v0[11];

  return v2();
}

uint64_t sub_1B4E4D90C(uint64_t a1, uint64_t a2, __int16 a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v32 = a6;
  v33 = a8;
  v34 = a5;
  v35 = a1;
  v30 = a4;
  v31 = a2;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8F7160, &unk_1B4F7C290);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11, v14);
  v16 = &v29 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8F6930, &unk_1B4F6CC10);
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  v21 = MEMORY[0x1EEE9AC00](v17, v20);
  v23 = &v29 - v22;
  v36 = a3;
  (*(a7 + 16))(&v36, v30, v32, v33, a9, v34, a7, v21);
  (*(v12 + 16))(v16, v35, v11);
  v24 = (*(v12 + 80) + 16) & ~*(v12 + 80);
  v25 = swift_allocObject();
  (*(v12 + 32))(v25 + v24, v16, v11);
  v26 = sub_1B4F67654();
  v27 = swift_allocObject();
  *(v27 + 16) = sub_1B4E4E50C;
  *(v27 + 24) = v25;

  v26(sub_1B4DDE050, v27);

  return (*(v18 + 8))(v23, v17);
}

uint64_t sub_1B4E4DBD0(uint64_t a1)
{
  if (*(a1 + 8))
  {
    v1 = *a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8F7160, &unk_1B4F7C290);
    return sub_1B4F682A4();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8F7160, &unk_1B4F7C290);
    return sub_1B4F682B4();
  }
}

uint64_t sub_1B4E4DC4C()
{
  v2 = *(*v1 + 80);
  v3 = *v1;
  v3[11] = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1B4E4E61C, 0, 0);
  }

  else
  {
    v4 = v3[9];

    v5 = v3[1];

    return v5();
  }
}

uint64_t TransportClient.sendRequest<A, B>(_:payload:)(uint64_t a1, _WORD *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v9 + 88) = v12;
  *(v9 + 96) = v8;
  *(v9 + 72) = v11;
  *(v9 + 56) = a7;
  *(v9 + 64) = a8;
  *(v9 + 40) = a5;
  *(v9 + 48) = a6;
  *(v9 + 24) = a3;
  *(v9 + 32) = a4;
  *(v9 + 16) = a1;
  *(v9 + 128) = *a2;
  return MEMORY[0x1EEE6DFA0](sub_1B4E4DDD0, 0, 0);
}

uint64_t sub_1B4E4DDD0()
{
  v1 = *(v0 + 128);
  v2 = *(v0 + 96);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v0 + 104) = v4;
  v5 = *(v0 + 48);
  v6 = *(v0 + 64);
  v7 = *(v0 + 80);
  *(v4 + 16) = *(v0 + 32);
  *(v4 + 32) = v5;
  *(v4 + 48) = v6;
  *(v4 + 64) = v7;
  *(v4 + 80) = v2;
  *(v4 + 88) = v1;
  *(v4 + 96) = v3;
  v8 = *(MEMORY[0x1E69E8920] + 4);
  v9 = swift_task_alloc();
  *(v0 + 112) = v9;
  *v9 = v0;
  v9[1] = sub_1B4E4DEEC;
  v10 = *(v0 + 48);
  v11 = *(v0 + 16);

  return MEMORY[0x1EEE6DE38](v11, 0, 0, 0xD000000000000017, 0x80000001B4F80F20, sub_1B4E4E318, v4, v10);
}

uint64_t sub_1B4E4DEEC()
{
  v2 = *(*v1 + 112);
  v3 = *v1;
  v3[15] = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1B4E4E028, 0, 0);
  }

  else
  {
    v4 = v3[13];

    v5 = v3[1];

    return v5();
  }
}

uint64_t sub_1B4E4E028()
{
  v1 = v0[13];

  v2 = v0[1];
  v3 = v0[15];

  return v2();
}

uint64_t sub_1B4E4E08C(uint64_t a1, uint64_t a2, __int16 a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v48 = a6;
  v49 = a2;
  v45 = a4;
  v46 = a1;
  v44 = a12;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8F5130, &qword_1B4F71530);
  v43 = sub_1B4F682C4();
  v16 = *(v43 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v43, v18);
  v20 = &v38 - v19;
  v39 = &v38 - v19;
  v40 = a7;
  v47 = sub_1B4F67674();
  v50 = *(v47 - 8);
  v21 = *(v50 + 64);
  v23 = MEMORY[0x1EEE9AC00](v47, v22);
  v41 = a8;
  v42 = &v38 - v24;
  v51 = a3;
  v25 = *(a8 + 32);
  v37 = a8;
  v26 = v48;
  v27 = a7;
  v28 = v44;
  v25(&v51, v45, v48, v27, a9, a10, a11, v44, v23, a5, v37);
  v29 = v20;
  v30 = v43;
  (*(v16 + 16))(v29, v46, v43);
  v31 = (*(v16 + 80) + 80) & ~*(v16 + 80);
  v32 = swift_allocObject();
  *(v32 + 2) = a5;
  *(v32 + 3) = v26;
  v33 = v41;
  *(v32 + 4) = v40;
  *(v32 + 5) = v33;
  *(v32 + 6) = a9;
  *(v32 + 7) = a10;
  *(v32 + 8) = a11;
  *(v32 + 9) = v28;
  (*(v16 + 32))(&v32[v31], v39, v30);
  v34 = v47;
  v35 = v42;
  sub_1B4F67644();

  return (*(v50 + 8))(v35, v34);
}

uint64_t sub_1B4E4E3DC(uint64_t a1)
{
  v3 = *(v1 + 32);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8F5130, &qword_1B4F71530);
  v4 = sub_1B4F682C4();
  v5 = v1 + ((*(*(v4 - 8) + 80) + 80) & ~*(*(v4 - 8) + 80));
  return sub_1B4E4CECC(a1, v4);
}

uint64_t sub_1B4E4E474(uint64_t a1)
{
  v3 = *(v1 + 24);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8F5130, &qword_1B4F71530);
  v4 = sub_1B4F682C4();
  v5 = v1 + ((*(*(v4 - 8) + 80) + 56) & ~*(*(v4 - 8) + 80));
  return sub_1B4E4CECC(a1, v4);
}

uint64_t objectdestroy_13Tm()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8F7160, &unk_1B4F7C290);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1B4E4E620(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8F7040, &qword_1B4F71150);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8, v11);
  v13 = v28 - v12;
  sub_1B4E21A90(a3, v28 - v12, &unk_1EB8F7040, &qword_1B4F71150);
  v14 = sub_1B4F68324();
  v15 = *(v14 - 8);
  v16 = (*(v15 + 48))(v13, 1, v14);

  if (v16 == 1)
  {
    sub_1B4DD2BC4(v13, &unk_1EB8F7040, &qword_1B4F71150);
  }

  else
  {
    sub_1B4F68314();
    (*(v15 + 8))(v13, v14);
  }

  v18 = *(a5 + 16);
  v17 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v18)
  {
    swift_getObjectType();
    v19 = sub_1B4F68274();
    v21 = v20;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v22 = sub_1B4F67FB4() + 32;
      v23 = swift_allocObject();
      *(v23 + 16) = a4;
      *(v23 + 24) = a5;

      if (v21 | v19)
      {
        v29[0] = 0;
        v29[1] = 0;
        v24 = v29;
        v29[2] = v19;
        v29[3] = v21;
      }

      else
      {
        v24 = 0;
      }

      v28[1] = 7;
      v28[2] = v24;
      v28[3] = v22;
      v26 = swift_task_create();

      sub_1B4DD2BC4(a3, &unk_1EB8F7040, &qword_1B4F71150);

      return v26;
    }
  }

  else
  {
    v19 = 0;
    v21 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1B4DD2BC4(a3, &unk_1EB8F7040, &qword_1B4F71150);
  v25 = swift_allocObject();
  *(v25 + 16) = a4;
  *(v25 + 24) = a5;
  if (v21 | v19)
  {
    v29[4] = 0;
    v29[5] = 0;
    v29[6] = v19;
    v29[7] = v21;
  }

  return swift_task_create();
}

uint64_t ActivityRingsQuerying.fetchActivityRings(timeout:)(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  *(v4 + 24) = a4;
  *(v4 + 16) = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F5210, &qword_1B4F71438);
  *(v4 + 32) = v7;
  v8 = *(v7 - 8);
  *(v4 + 40) = v8;
  *(v4 + 48) = *(v8 + 64);
  *(v4 + 56) = swift_task_alloc();
  v9 = swift_task_alloc();
  *(v4 + 64) = v9;
  v10 = swift_task_alloc();
  *(v4 + 72) = v10;
  *v10 = v4;
  v10[1] = sub_1B4E4EA54;

  return sub_1B4E4EF2C(v9, a2, a3);
}

uint64_t sub_1B4E4EA54()
{
  v1 = *(*v0 + 72);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1B4E4EB50, 0, 0);
}

uint64_t sub_1B4E4EB50()
{
  v1 = v0[7];
  v2 = v0[5];
  v3 = v0[4];
  v4 = v0[3];
  (*(v2 + 16))(v1, v0[8], v3);
  v5 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v6 = swift_allocObject();
  v0[10] = v6;
  (*(v2 + 32))(v6 + v5, v1, v3);
  v7 = swift_task_alloc();
  v0[11] = v7;
  v7[2] = &unk_1B4F71450;
  v7[3] = v6;
  v7[4] = v4;
  v8 = *(MEMORY[0x1E69E8920] + 4);
  v9 = swift_task_alloc();
  v0[12] = v9;
  v10 = sub_1B4F65184();
  *v9 = v0;
  v9[1] = sub_1B4E4ECD4;
  v11 = v0[2];

  return MEMORY[0x1EEE6DE38](v11, 0, 0, 0xD00000000000001FLL, 0x80000001B4F80F40, sub_1B4E51508, v7, v10);
}

uint64_t sub_1B4E4ECD4()
{
  v2 = *v1;
  v3 = *(*v1 + 96);
  v8 = *v1;
  *(*v1 + 104) = v0;

  if (v0)
  {
    v4 = sub_1B4E4EE80;
  }

  else
  {
    v5 = *(v2 + 80);
    v6 = *(v2 + 88);

    v4 = sub_1B4E4EDF8;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1B4E4EDF8()
{
  v1 = v0[7];
  (*(v0[5] + 8))(v0[8], v0[4]);

  v2 = v0[1];

  return v2();
}

uint64_t sub_1B4E4EE80()
{
  v1 = v0[10];
  v2 = v0[11];
  v4 = v0[7];
  v3 = v0[8];
  v5 = v0[4];
  v6 = v0[5];

  (*(v6 + 8))(v3, v5);

  v7 = v0[1];
  v8 = v0[13];

  return v7();
}

uint64_t sub_1B4E4EF2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F5280, &qword_1B4F71558);
  v4[6] = v5;
  v6 = *(v5 - 8);
  v4[7] = v6;
  v7 = *(v6 + 64) + 15;
  v4[8] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B4E4EFFC, 0, 0);
}

uint64_t sub_1B4E4EFFC()
{
  v2 = *(v0 + 56);
  v1 = *(v0 + 64);
  v4 = *(v0 + 40);
  v3 = *(v0 + 48);
  v5 = *(v0 + 16);
  v6 = swift_task_alloc();
  *(v6 + 16) = *(v0 + 24);
  *(v6 + 32) = v4;
  sub_1B4F65184();
  (*(v2 + 104))(v1, *MEMORY[0x1E69E8790], v3);
  sub_1B4F68494();

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_1B4E4F0F4(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F7050, &qword_1B4F71500) - 8) + 64) + 15;
  v2[4] = swift_task_alloc();
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F5250, &qword_1B4F71538) - 8) + 64) + 15;
  v2[5] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F5210, &qword_1B4F71438);
  v2[6] = v5;
  v6 = *(v5 - 8);
  v2[7] = v6;
  v7 = *(v6 + 64) + 15;
  v2[8] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F5258, &qword_1B4F71540);
  v2[9] = v8;
  v9 = *(v8 - 8);
  v2[10] = v9;
  v10 = *(v9 + 64) + 15;
  v2[11] = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F5260, &qword_1B4F71548);
  v2[12] = v11;
  v12 = *(v11 - 8);
  v2[13] = v12;
  v13 = *(v12 + 64) + 15;
  v2[14] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B4E4F300, 0, 0);
}

uint64_t sub_1B4E4F300()
{
  v1 = v0[14];
  v3 = v0[10];
  v2 = v0[11];
  v4 = v0[9];
  v5 = v0[5];
  (*(v0[7] + 16))(v0[8], v0[3], v0[6]);
  sub_1B4E21468(&qword_1EB8F5268, &qword_1EB8F5210, &qword_1B4F71438);
  sub_1B4F68C24();
  MEMORY[0x1B8C82470](v4);
  sub_1B4F68454();
  sub_1B4F68BD4();
  (*(v3 + 8))(v2, v4);
  sub_1B4F68C14();
  v6 = swift_task_alloc();
  v0[15] = v6;
  *v6 = v0;
  v6[1] = sub_1B4E4F4B4;
  v7 = v0[14];
  v8 = v0[4];

  return sub_1B4E4F918(v8, 0, 0);
}

uint64_t sub_1B4E4F4B4()
{
  v2 = *(*v1 + 120);
  v5 = *v1;
  *(*v1 + 128) = v0;

  if (v0)
  {
    v3 = sub_1B4E4F778;
  }

  else
  {
    v3 = sub_1B4E4F5C8;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1B4E4F5C8()
{
  v1 = v0[4];
  (*(v0[13] + 8))(v0[14], v0[12]);
  v2 = sub_1B4F65184();
  v3 = *(v2 - 8);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    sub_1B4E527B4();
    swift_allocError();
    *v4 = 1;
    swift_willThrow();
    v5 = v0[14];
    v6 = v0[11];
    v7 = v0[8];
    v9 = v0[4];
    v8 = v0[5];
  }

  else
  {
    v11 = v0[14];
    v12 = v0[11];
    v13 = v0[8];
    v14 = v0[5];
    (*(v3 + 32))(v0[2], v0[4], v2);
  }

  v10 = v0[1];

  return v10();
}

uint64_t sub_1B4E4F778()
{
  (*(v0[13] + 8))(v0[14], v0[12]);
  v1 = v0[16];
  v2 = v0[14];
  v3 = v0[11];
  v4 = v0[8];
  v6 = v0[4];
  v5 = v0[5];

  v7 = v0[1];

  return v7();
}

uint64_t sub_1B4E4F830(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F5210, &qword_1B4F71438) - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1B4DE0D94;

  return sub_1B4E4F0F4(a1, v1 + v5);
}

uint64_t sub_1B4E4F918(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[13] = a3;
  v4[14] = v3;
  v4[11] = a1;
  v4[12] = a2;
  if (a2)
  {
    swift_getObjectType();
    v5 = sub_1B4F68274();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v4[15] = v5;
  v4[16] = v7;

  return MEMORY[0x1EEE6DFA0](sub_1B4E4F9B0, v5, v7);
}

uint64_t sub_1B4E4F9B0()
{
  v1 = v0[14];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F5260, &qword_1B4F71548);
  if (sub_1B4F68BD4())
  {
    v2 = v0[14];
    v3 = sub_1B4F68BF4();
    --*v4;
    v3(v0 + 2, 0);
    v0[17] = sub_1B4F68BE4();
    v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F5250, &qword_1B4F71538);
    v6 = sub_1B4E21468(&qword_1EB8F5278, &qword_1EB8F5250, &qword_1B4F71538);
    v7 = *(MEMORY[0x1E69E85B0] + 4);
    v8 = swift_task_alloc();
    v0[18] = v8;
    *v8 = v0;
    v8[1] = sub_1B4E4FB94;
    v9 = v0[12];
    v10 = v0[13];
    v11 = v0[11];

    return MEMORY[0x1EEE6D8D0](v11, v9, v10, v0 + 10, v5, v6);
  }

  else
  {
    v12 = v0[11];
    v13 = sub_1B4F65184();
    (*(*(v13 - 8) + 56))(v12, 1, 1, v13);
    v14 = v0[1];

    return v14();
  }
}

uint64_t sub_1B4E4FB94()
{
  v2 = *v1;
  v3 = *(*v1 + 144);
  v4 = *v1;

  if (v0)
  {
    v5 = *(v2 + 120);
    v6 = *(v2 + 128);

    return MEMORY[0x1EEE6DFA0](sub_1B4E4FCD8, v5, v6);
  }

  else
  {
    (*(v2 + 136))();
    v7 = *(v4 + 8);

    return v7();
  }
}

uint64_t sub_1B4E4FCD8()
{
  v1 = *(v0 + 80);
  (*(v0 + 136))();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t ActivityRingsQuerying.makeActivityRingsObserver(streamHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a1;
  v4[3] = a2;
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8F7040, &qword_1B4F71150) - 8) + 64) + 15;
  v4[4] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F5218, &qword_1B4F71468);
  v4[5] = v8;
  v9 = *(v8 - 8);
  v4[6] = v9;
  v4[7] = *(v9 + 64);
  v4[8] = swift_task_alloc();
  v4[9] = swift_task_alloc();
  v10 = swift_task_alloc();
  v4[10] = v10;
  v11 = swift_task_alloc();
  v4[11] = v11;
  *v11 = v4;
  v11[1] = sub_1B4E4FEC0;

  return ActivityRingsQuerying.makeActivityRingsStream()(v10, a3, a4);
}

uint64_t sub_1B4E4FEC0()
{
  v1 = *(*v0 + 88);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1B4E4FFBC, 0, 0);
}

uint64_t sub_1B4E4FFBC()
{
  v1 = v0[9];
  v2 = v0[10];
  v3 = v0[7];
  v4 = v0[8];
  v5 = v0[5];
  v6 = v0[6];
  v8 = v0[3];
  v7 = v0[4];
  v17 = v0[2];
  v9 = *(v6 + 16);
  v9(v1, v2, v5);
  type metadata accessor for ActivityRingsObserver();
  v18 = swift_allocObject();
  v10 = sub_1B4F68324();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v9(v4, v1, v5);
  v11 = (*(v6 + 80) + 48) & ~*(v6 + 80);
  v12 = swift_allocObject();
  *(v12 + 2) = 0;
  *(v12 + 3) = 0;
  *(v12 + 4) = v17;
  *(v12 + 5) = v8;
  (*(v6 + 32))(&v12[v11], v4, v5);

  v13 = sub_1B4E4E620(0, 0, v7, &unk_1B4F71478, v12);
  v14 = *(v6 + 8);
  v14(v1, v5);
  v14(v2, v5);
  *(v18 + 16) = v13;

  v15 = v0[1];

  return v15(v18);
}

uint64_t ActivityRingsQuerying.makeActivityRingsStream()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F5220, &unk_1B4F71480);
  v4[6] = v5;
  v6 = *(v5 - 8);
  v4[7] = v6;
  v7 = *(v6 + 64) + 15;
  v4[8] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B4E5028C, 0, 0);
}

uint64_t sub_1B4E5028C()
{
  v2 = *(v0 + 56);
  v1 = *(v0 + 64);
  v4 = *(v0 + 40);
  v3 = *(v0 + 48);
  v5 = *(v0 + 16);
  v6 = swift_task_alloc();
  *(v6 + 16) = *(v0 + 24);
  *(v6 + 32) = v4;
  sub_1B4F65184();
  (*(v2 + 104))(v1, *MEMORY[0x1E69E8650], v3);
  sub_1B4F683A4();

  v7 = *(v0 + 8);

  return v7();
}

void sub_1B4E50384(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v26 = a4;
  v27 = a2;
  v25 = a1;
  v6 = *(a3 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](a1, a2);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F5228, &qword_1B4F714A8);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v12 = MEMORY[0x1EEE9AC00](v8, v11);
  v14 = &v25 - v13;
  (*(v9 + 16))(&v25 - v13, a1, v8, v12);
  v15 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v16 = swift_allocObject();
  (*(v9 + 32))(v16 + v15, v14, v8);
  v17 = v27;
  (*(v26 + 16))(v28, a3);
  v19 = v29;
  v18 = v30;
  __swift_project_boxed_opaque_existential_1(v28, v29);
  v20 = (*(v18 + 8))(sub_1B4E51644, v16, v19, v18);
  __swift_destroy_boxed_opaque_existential_1Tm(v28);
  (*(v6 + 16))(&v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v17, a3);
  v21 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v22 = swift_allocObject();
  v23 = v26;
  *(v22 + 16) = a3;
  *(v22 + 24) = v23;
  (*(v6 + 32))(v22 + v21, &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), a3);
  *(v22 + ((v7 + v21 + 7) & 0xFFFFFFFFFFFFFFF8)) = v20;
  v24 = v20;
  sub_1B4F68344();
  (*(*(v23 + 8) + 8))(v24, a3);
}

void sub_1B4E50674(uint64_t a1, uint64_t a2)
{
  v35 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F5230, &qword_1B4F714B0);
  v33 = *(v3 - 8);
  v34 = v3;
  v4 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v33 - v6;
  v8 = sub_1B4F65184();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8, v11);
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v33 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F5238, &qword_1B4F714B8);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18, v20);
  v22 = (&v33 - v21);
  sub_1B4E21A90(a1, &v33 - v21, &qword_1EB8F5238, &qword_1B4F714B8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v23 = *v22;
    if (qword_1EDB6DFA8 != -1)
    {
      swift_once();
    }

    v24 = sub_1B4F67C54();
    __swift_project_value_buffer(v24, qword_1EDB6DFB0);
    v25 = v23;
    v26 = sub_1B4F67C34();
    v27 = sub_1B4F685E4();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v38 = v29;
      *v28 = 136315138;
      swift_getErrorValue();
      v30 = MEMORY[0x1B8C826C0](v36, v37);
      v32 = sub_1B4DC4F88(v30, v31, &v38);

      *(v28 + 4) = v32;
      _os_log_impl(&dword_1B4DC2000, v26, v27, "HealthStore: An error occurred while loading ActivityRings: %s.", v28, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v29);
      MEMORY[0x1B8C831D0](v29, -1, -1);
      MEMORY[0x1B8C831D0](v28, -1, -1);
    }

    else
    {
    }
  }

  else
  {
    (*(v9 + 32))(v17, v22, v8);
    (*(v9 + 16))(v13, v17, v8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F5228, &qword_1B4F714A8);
    sub_1B4F68364();
    (*(v33 + 8))(v7, v34);
    (*(v9 + 8))(v17, v8);
  }
}

void sub_1B4E50A40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v26 = a4;
  v27 = a2;
  v25 = a1;
  v6 = *(a3 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](a1, a2);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F5288, &qword_1B4F71560);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v12 = MEMORY[0x1EEE9AC00](v8, v11);
  v14 = &v25 - v13;
  (*(v9 + 16))(&v25 - v13, a1, v8, v12);
  v15 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v16 = swift_allocObject();
  (*(v9 + 32))(v16 + v15, v14, v8);
  v17 = v27;
  (*(v26 + 16))(v28, a3);
  v19 = v29;
  v18 = v30;
  __swift_project_boxed_opaque_existential_1(v28, v29);
  v20 = (*(v18 + 8))(sub_1B4E52814, v16, v19, v18);
  __swift_destroy_boxed_opaque_existential_1Tm(v28);
  (*(v6 + 16))(&v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v17, a3);
  v21 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v22 = swift_allocObject();
  v23 = v26;
  *(v22 + 16) = a3;
  *(v22 + 24) = v23;
  (*(v6 + 32))(v22 + v21, &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), a3);
  *(v22 + ((v7 + v21 + 7) & 0xFFFFFFFFFFFFFFF8)) = v20;
  v24 = v20;
  sub_1B4F68464();
  (*(*(v23 + 8) + 8))(v24, a3);
}

uint64_t sub_1B4E50D30(uint64_t a1, uint64_t a2)
{
  v36 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F5290, &qword_1B4F71568);
  v34 = *(v3 - 8);
  v35 = v3;
  v4 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v34 - v6;
  v8 = sub_1B4F65184();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8, v11);
  v13 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v34 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F5238, &qword_1B4F714B8);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18, v20);
  v22 = (&v34 - v21);
  sub_1B4E21A90(a1, &v34 - v21, &qword_1EB8F5238, &qword_1B4F714B8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v23 = *v22;
    if (qword_1EDB6DFA8 != -1)
    {
      swift_once();
    }

    v24 = sub_1B4F67C54();
    __swift_project_value_buffer(v24, qword_1EDB6DFB0);
    v25 = v23;
    v26 = sub_1B4F67C34();
    v27 = sub_1B4F685C4();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v39 = v29;
      *v28 = 136315138;
      swift_getErrorValue();
      v30 = MEMORY[0x1B8C826C0](v37, v38);
      v32 = sub_1B4DC4F88(v30, v31, &v39);

      *(v28 + 4) = v32;
      _os_log_impl(&dword_1B4DC2000, v26, v27, "HealthStore: An error occurred while loading ActivityRings: %s", v28, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v29);
      MEMORY[0x1B8C831D0](v29, -1, -1);
      MEMORY[0x1B8C831D0](v28, -1, -1);
    }

    v39 = v23;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F5288, &qword_1B4F71560);
    return sub_1B4F68484();
  }

  else
  {
    (*(v9 + 32))(v17, v22, v8);
    (*(v9 + 16))(v13, v17, v8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F5288, &qword_1B4F71560);
    sub_1B4F68474();
    (*(v34 + 8))(v7, v35);
    return (*(v9 + 8))(v17, v8);
  }
}

uint64_t sub_1B4E51110(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8F7040, &qword_1B4F71150);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8, v9);
  v11 = v21 - v10;
  sub_1B4E21A90(a1, v21 - v10, &unk_1EB8F7040, &qword_1B4F71150);
  v12 = sub_1B4F68324();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_1B4DD2BC4(v11, &unk_1EB8F7040, &qword_1B4F71150);
    if (*(a3 + 16))
    {
LABEL_3:
      v14 = *(a3 + 24);
      swift_getObjectType();
      swift_unknownObjectRetain();
      v15 = sub_1B4F68274();
      v17 = v16;
      swift_unknownObjectRelease();
      goto LABEL_6;
    }
  }

  else
  {
    sub_1B4F68314();
    (*(v13 + 8))(v11, v12);
    if (*(a3 + 16))
    {
      goto LABEL_3;
    }
  }

  v15 = 0;
  v17 = 0;
LABEL_6:
  v18 = *v4;
  sub_1B4F65184();
  v19 = (v17 | v15);
  if (v17 | v15)
  {
    v22[0] = 0;
    v22[1] = 0;
    v19 = v22;
    v22[2] = v15;
    v22[3] = v17;
  }

  v21[1] = 1;
  v21[2] = v19;
  v21[3] = v18;
  swift_task_create();
}

uint64_t sub_1B4E51300(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F5240, &qword_1B4F714D8);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8, v11);
  v13 = &v23 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8F7040, &qword_1B4F71150);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8, v16);
  v18 = &v23 - v17;
  v19 = sub_1B4F68324();
  (*(*(v19 - 8) + 56))(v18, 1, 1, v19);
  (*(v9 + 16))(v13, a1, v8);
  v20 = (*(v9 + 80) + 56) & ~*(v9 + 80);
  v21 = swift_allocObject();
  *(v21 + 16) = 0;
  *(v21 + 24) = 0;
  *(v21 + 32) = a2;
  *(v21 + 40) = a3;
  *(v21 + 48) = a4;
  (*(v9 + 32))(v21 + v20, v13, v8);

  sub_1B4E4E620(0, 0, v18, &unk_1B4F714E8, v21);
}

uint64_t sub_1B4E51514(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F5218, &qword_1B4F71468) - 8);
  v5 = (*(v4 + 80) + 48) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1B4DE0D94;

  return sub_1B4E5F468(a1, v6, v7, v8, v9, v1 + v5);
}

uint64_t sub_1B4E5166C(uint64_t a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 48) = a7;
  *(v7 + 40) = a2;
  *(v7 + 24) = a5;
  *(v7 + 32) = a6;
  *(v7 + 16) = a1;
  return MEMORY[0x1EEE6DFA0](sub_1B4E51698, 0, 0);
}

uint64_t sub_1B4E51698()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 40);
  v3 = sub_1B4F65184();
  v4 = swift_task_alloc();
  *(v0 + 56) = v4;
  *(v4 + 16) = *(v0 + 24);
  *(v4 + 32) = v2;
  *(v4 + 40) = v1;
  v5 = *(MEMORY[0x1E69E88A0] + 4);
  v6 = swift_task_alloc();
  *(v0 + 64) = v6;
  *v6 = v0;
  v6[1] = sub_1B4E517A8;
  v7 = *(v0 + 16);

  return MEMORY[0x1EEE6DD58](v7, v3);
}

void sub_1B4E517A8()
{
  v2 = *v1;
  v3 = *(*v1 + 64);
  v4 = *v1;

  if (v0)
  {
  }

  else
  {
    v5 = *(v2 + 56);

    v6 = *(v4 + 8);

    v6();
  }
}

uint64_t sub_1B4E518DC(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 56) = a6;
  *(v6 + 48) = a1;
  *(v6 + 32) = a4;
  *(v6 + 40) = a5;
  *(v6 + 24) = a3;
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F7050, &qword_1B4F71500) - 8) + 64) + 15;
  *(v6 + 64) = swift_task_alloc();
  v8 = sub_1B4F65184();
  *(v6 + 72) = v8;
  v9 = *(v8 - 8);
  *(v6 + 80) = v9;
  v10 = *(v9 + 64) + 15;
  *(v6 + 88) = swift_task_alloc();
  *(v6 + 96) = swift_task_alloc();
  v11 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8F7040, &qword_1B4F71150) - 8) + 64) + 15;
  *(v6 + 104) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B4E51A24, 0, 0);
}

uint64_t sub_1B4E51A24()
{
  v1 = v0[13];
  v2 = v0[6];
  v4 = v0[4];
  v3 = v0[5];
  v5 = v0[3];
  v6 = sub_1B4F68324();
  v7 = *(*(v6 - 8) + 56);
  v7(v1, 1, 1, v6);
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = v4;
  v8[5] = v3;

  sub_1B4E51110(v1, &unk_1B4F71510, v8);
  sub_1B4DD2BC4(v1, &unk_1EB8F7040, &qword_1B4F71150);
  v7(v1, 1, 1, v6);
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = v2;
  sub_1B4E51110(v1, &unk_1B4F71520, v9);
  sub_1B4DD2BC4(v1, &unk_1EB8F7040, &qword_1B4F71150);
  v10 = *(MEMORY[0x1E69E8708] + 4);
  v11 = swift_task_alloc();
  v0[14] = v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F5248, &qword_1B4F71528);
  *v11 = v0;
  v11[1] = sub_1B4E51C24;
  v13 = v0[8];
  v14 = v0[3];

  return MEMORY[0x1EEE6DAC8](v13, 0, 0, v12);
}

uint64_t sub_1B4E51C24()
{
  v2 = *(*v1 + 112);
  v5 = *v1;
  *(*v1 + 120) = v0;

  if (v0)
  {
    v3 = sub_1B4E51F38;
  }

  else
  {
    v3 = sub_1B4E51D38;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1B4E51D38()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 80);
  v3 = *(v0 + 64);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_1B4DD2BC4(v3, &qword_1EB8F7050, &qword_1B4F71500);
    return sub_1B4F68B24();
  }

  else
  {
    v6 = *(v0 + 88);
    v5 = *(v0 + 96);
    v7 = *(v0 + 56);
    (*(v2 + 32))(v5, v3, v1);
    (*(v2 + 16))(v6, v5, v1);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F5240, &qword_1B4F714D8);
    sub_1B4F682B4();
    (*(v2 + 8))(v5, v1);
    v8 = *(v0 + 96);
    v9 = *(v0 + 104);
    v10 = *(v0 + 88);
    v12 = *(v0 + 64);
    v11 = *(v0 + 72);
    v13 = **(v0 + 24);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F5130, &qword_1B4F71530);
    sub_1B4F68434();

    v14 = *(v0 + 8);

    return v14();
  }
}

uint64_t sub_1B4E51F38()
{
  v1 = *(v0 + 56);
  *(v0 + 16) = *(v0 + 120);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F5240, &qword_1B4F714D8);
  sub_1B4F682A4();
  v2 = *(v0 + 96);
  v3 = *(v0 + 104);
  v4 = *(v0 + 88);
  v6 = *(v0 + 64);
  v5 = *(v0 + 72);
  v7 = **(v0 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F5130, &qword_1B4F71530);
  sub_1B4F68434();

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_1B4E52034(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v9 = (a4 + *a4);
  v6 = a4[1];
  v7 = swift_task_alloc();
  *(v4 + 16) = v7;
  *v7 = v4;
  v7[1] = sub_1B4DE13F0;

  return v9(a1);
}

uint64_t sub_1B4E5214C(unint64_t a1)
{
  v3 = *(v1 + 16) * 1000000000.0;
  if (COERCE__INT64(fabs(v3)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (v3 <= -1.0)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v3 >= 1.84467441e19)
  {
LABEL_9:
    __break(1u);
    return MEMORY[0x1EEE6DA60](a1);
  }

  v4 = v3;
  v5 = *(MEMORY[0x1E69E86C8] + 4);
  v6 = swift_task_alloc();
  *(v1 + 24) = v6;
  *v6 = v1;
  v6[1] = sub_1B4E52234;
  a1 = v4;

  return MEMORY[0x1EEE6DA60](a1);
}

uint64_t sub_1B4E52234()
{
  v2 = *(*v1 + 24);
  v3 = *v1;

  if (v0)
  {
    v4 = *(v3 + 8);

    return v4();
  }

  else
  {

    return MEMORY[0x1EEE6DFA0](sub_1B4E52364, 0, 0);
  }
}

uint64_t sub_1B4E52364()
{
  sub_1B4F682D4();
  sub_1B4E5275C();
  swift_allocError();
  sub_1B4F67EC4();
  swift_willThrow();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1B4E523FC(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F5240, &qword_1B4F714D8) - 8);
  v5 = (*(v4 + 80) + 56) & ~*(v4 + 80);
  v6 = *(v1 + 2);
  v7 = *(v1 + 3);
  v8 = *(v1 + 4);
  v9 = *(v1 + 5);
  v10 = v1[6];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_1B4DE13F0;

  return sub_1B4E5166C(a1, v10, v6, v7, v8, v9, v1 + v5);
}

uint64_t sub_1B4E52514(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 2);
  v7 = *(v2 + 3);
  v8 = v2[4];
  v9 = *(v2 + 5);
  v10 = swift_task_alloc();
  *(v3 + 16) = v10;
  *v10 = v3;
  v10[1] = sub_1B4DE13F0;

  return sub_1B4E518DC(v8, a1, a2, v6, v7, v9);
}

uint64_t sub_1B4E525E0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1B4DE0D94;

  return sub_1B4E52034(a1, v4, v5, v7);
}

uint64_t sub_1B4E526A0()
{
  v2 = *(v0 + 2);
  v3 = *(v0 + 3);
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1B4DE0D94;

  return sub_1B4E5212C(v4);
}

unint64_t sub_1B4E5275C()
{
  result = qword_1EDB6DBF8;
  if (!qword_1EDB6DBF8)
  {
    sub_1B4F682D4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB6DBF8);
  }

  return result;
}

unint64_t sub_1B4E527B4()
{
  result = qword_1EB8F5270;
  if (!qword_1EB8F5270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F5270);
  }

  return result;
}

uint64_t sub_1B4E5283C(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a2, a3) - 8);
  v7 = v4 + ((*(v6 + 80) + 16) & ~*(v6 + 80));

  return a4(a1, v7);
}

uint64_t objectdestroy_14Tm()
{
  v1 = *(*(v0 + 16) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = (*(v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v1 + 8))(v0 + v3);

  return MEMORY[0x1EEE6BDD0](v0, v4 + 8, v2 | 7);
}

id static Platform.current.getter()
{
  result = MobileGestalt_get_current_device();
  if (result)
  {
    v1 = result;
    deviceClassNumber = MobileGestalt_get_deviceClassNumber();

    return (deviceClassNumber == 3);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void Platform.systemVersion.getter()
{
  v0 = MobileGestalt_get_current_device();
  if (v0)
  {
    v1 = v0;
    v2 = MobileGestalt_copy_buildVersion_obj();

    if (v2)
    {
      sub_1B4F67F74();

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t Platform.storeDemoMode.getter()
{
  v7 = *MEMORY[0x1E69E9840];
  keyExistsAndHasValidFormat = 0;
  v0 = sub_1B4F67F64();
  v1 = sub_1B4F67F64();
  AppBooleanValue = CFPreferencesGetAppBooleanValue(v0, v1, &keyExistsAndHasValidFormat);

  if (keyExistsAndHasValidFormat)
  {
    v3 = AppBooleanValue == 0;
  }

  else
  {
    v3 = 1;
  }

  result = !v3;
  v5 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t AudioLanguagePreferenceUpdated.preference.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1B4F66754();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t AudioLanguagePreferenceUpdated.init(preference:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1B4F66754();
  v5 = *(*(v4 - 8) + 32);

  return v5(a2, a1, v4);
}

uint64_t type metadata accessor for AudioLanguagePreferenceUpdated()
{
  result = qword_1EDB70620;
  if (!qword_1EDB70620)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1B4E52CDC()
{
  result = sub_1B4F66754();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

SeymourClient::UserDefaultsKeys_optional __swiftcall UserDefaultsKeys.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1B4F68D84();

  v5 = 0;
  v6 = 81;
  switch(v3)
  {
    case 0:
      goto LABEL_95;
    case 1:
      v5 = 1;
      goto LABEL_95;
    case 2:
      v5 = 2;
      goto LABEL_95;
    case 3:
      v5 = 3;
      goto LABEL_95;
    case 4:
      v5 = 4;
      goto LABEL_95;
    case 5:
      v5 = 5;
      goto LABEL_95;
    case 6:
      v5 = 6;
      goto LABEL_95;
    case 7:
      v5 = 7;
      goto LABEL_95;
    case 8:
      v5 = 8;
      goto LABEL_95;
    case 9:
      v5 = 9;
      goto LABEL_95;
    case 10:
      v5 = 10;
      goto LABEL_95;
    case 11:
      v5 = 11;
      goto LABEL_95;
    case 12:
      v5 = 12;
      goto LABEL_95;
    case 13:
      v5 = 13;
      goto LABEL_95;
    case 14:
      v5 = 14;
      goto LABEL_95;
    case 15:
      v5 = 15;
      goto LABEL_95;
    case 16:
      v5 = 16;
      goto LABEL_95;
    case 17:
      v5 = 17;
      goto LABEL_95;
    case 18:
      v5 = 18;
      goto LABEL_95;
    case 19:
      v5 = 19;
      goto LABEL_95;
    case 20:
      v5 = 20;
      goto LABEL_95;
    case 21:
      v5 = 21;
      goto LABEL_95;
    case 22:
      v5 = 22;
      goto LABEL_95;
    case 23:
      v5 = 23;
      goto LABEL_95;
    case 24:
      v5 = 24;
      goto LABEL_95;
    case 25:
      v5 = 25;
      goto LABEL_95;
    case 26:
      v5 = 26;
      goto LABEL_95;
    case 27:
      v5 = 27;
      goto LABEL_95;
    case 28:
      v5 = 28;
      goto LABEL_95;
    case 29:
      v5 = 29;
      goto LABEL_95;
    case 30:
      v5 = 30;
      goto LABEL_95;
    case 31:
      v5 = 31;
      goto LABEL_95;
    case 32:
      v5 = 32;
      goto LABEL_95;
    case 33:
      v5 = 33;
      goto LABEL_95;
    case 34:
      v5 = 34;
      goto LABEL_95;
    case 35:
      v5 = 35;
      goto LABEL_95;
    case 36:
      v5 = 36;
      goto LABEL_95;
    case 37:
      v5 = 37;
      goto LABEL_95;
    case 38:
      v5 = 38;
      goto LABEL_95;
    case 39:
      v5 = 39;
      goto LABEL_95;
    case 40:
      v5 = 40;
      goto LABEL_95;
    case 41:
      v5 = 41;
      goto LABEL_95;
    case 42:
      v5 = 42;
      goto LABEL_95;
    case 43:
      v5 = 43;
      goto LABEL_95;
    case 44:
      v5 = 44;
      goto LABEL_95;
    case 45:
      v5 = 45;
      goto LABEL_95;
    case 46:
      v5 = 46;
      goto LABEL_95;
    case 47:
      v5 = 47;
      goto LABEL_95;
    case 48:
      v5 = 48;
      goto LABEL_95;
    case 49:
      v5 = 49;
      goto LABEL_95;
    case 50:
      v5 = 50;
      goto LABEL_95;
    case 51:
      v5 = 51;
      goto LABEL_95;
    case 52:
      v5 = 52;
      goto LABEL_95;
    case 53:
      v5 = 53;
      goto LABEL_95;
    case 54:
      v5 = 54;
      goto LABEL_95;
    case 55:
      v5 = 55;
      goto LABEL_95;
    case 56:
      v5 = 56;
      goto LABEL_95;
    case 57:
      v5 = 57;
      goto LABEL_95;
    case 58:
      v5 = 58;
      goto LABEL_95;
    case 59:
      v5 = 59;
      goto LABEL_95;
    case 60:
      v5 = 60;
      goto LABEL_95;
    case 61:
      v5 = 61;
      goto LABEL_95;
    case 62:
      v5 = 62;
      goto LABEL_95;
    case 63:
      v5 = 63;
      goto LABEL_95;
    case 64:
      v5 = 64;
      goto LABEL_95;
    case 65:
      v5 = 65;
      goto LABEL_95;
    case 66:
      v5 = 66;
      goto LABEL_95;
    case 67:
      v5 = 67;
      goto LABEL_95;
    case 68:
      v5 = 68;
      goto LABEL_95;
    case 69:
      v5 = 69;
      goto LABEL_95;
    case 70:
      v5 = 70;
      goto LABEL_95;
    case 71:
      v5 = 71;
      goto LABEL_95;
    case 72:
      v5 = 72;
      goto LABEL_95;
    case 73:
      v5 = 73;
      goto LABEL_95;
    case 74:
      v5 = 74;
      goto LABEL_95;
    case 75:
      v5 = 75;
      goto LABEL_95;
    case 76:
      v5 = 76;
      goto LABEL_95;
    case 77:
      v5 = 77;
      goto LABEL_95;
    case 78:
      v5 = 78;
      goto LABEL_95;
    case 79:
      v5 = 79;
      goto LABEL_95;
    case 80:
      v5 = 80;
LABEL_95:
      v6 = v5;
      break;
    case 81:
      break;
    case 82:
      v6 = 82;
      break;
    case 83:
      v6 = 83;
      break;
    case 84:
      v6 = 84;
      break;
    case 85:
      v6 = 85;
      break;
    case 86:
      v6 = 86;
      break;
    case 87:
      v6 = 87;
      break;
    case 88:
      v6 = 88;
      break;
    case 89:
      v6 = 89;
      break;
    case 90:
      v6 = 90;
      break;
    case 91:
      v6 = 91;
      break;
    case 92:
      v6 = 92;
      break;
    case 93:
      v6 = 93;
      break;
    case 94:
      v6 = 94;
      break;
    case 95:
      v6 = 95;
      break;
    case 96:
      v6 = 96;
      break;
    case 97:
      v6 = 97;
      break;
    case 98:
      v6 = 98;
      break;
    default:
      v6 = 99;
      break;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_1B4E530E4(char *a1, char *a2)
{
  v10 = *a1;
  v9 = *a2;
  v2 = UserDefaultsKeys.rawValue.getter();
  v4 = v3;
  if (v2 == UserDefaultsKeys.rawValue.getter() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_1B4F68D54();
  }

  return v7 & 1;
}

unint64_t sub_1B4E53184()
{
  result = qword_1EB8F5298;
  if (!qword_1EB8F5298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F5298);
  }

  return result;
}

uint64_t sub_1B4E531D8()
{
  v1 = *v0;
  sub_1B4F68E84();
  UserDefaultsKeys.rawValue.getter();
  sub_1B4F67FE4();

  return sub_1B4F68EC4();
}

uint64_t sub_1B4E53240()
{
  v2 = *v0;
  UserDefaultsKeys.rawValue.getter();
  sub_1B4F67FE4();
}

uint64_t sub_1B4E532A4()
{
  v1 = *v0;
  sub_1B4F68E84();
  UserDefaultsKeys.rawValue.getter();
  sub_1B4F67FE4();

  return sub_1B4F68EC4();
}

unint64_t sub_1B4E53314@<X0>(unint64_t *a1@<X8>)
{
  result = UserDefaultsKeys.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for UserDefaultsKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0x9E)
  {
    goto LABEL_17;
  }

  if (a2 + 98 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 98) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 98;
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

      return (*a1 | (v4 << 8)) - 98;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 98;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x63;
  v8 = v6 - 99;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for UserDefaultsKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 98 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 98) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0x9E)
  {
    v4 = 0;
  }

  if (a2 > 0x9D)
  {
    v5 = ((a2 - 158) >> 8) + 1;
    *result = a2 + 98;
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
    *result = a2 + 98;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

void sub_1B4E53494()
{
  v1 = v0;
  if (qword_1EDB724A8 != -1)
  {
    swift_once();
  }

  v2 = sub_1B4F67C54();
  __swift_project_value_buffer(v2, qword_1EDB72490);

  oslog = sub_1B4F67C34();
  v3 = sub_1B4F685C4();

  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v13 = v5;
    *v4 = 136446210;
    v6 = [*(v1 + 24) serviceName];
    if (v6)
    {
      v7 = v6;
      v8 = sub_1B4F67F74();
      v10 = v9;
    }

    else
    {
      v10 = 0xEB00000000646569;
      v8 = 0x6669636570736E75;
    }

    v11 = sub_1B4DC4F88(v8, v10, &v13);

    *(v4 + 4) = v11;
    _os_log_impl(&dword_1B4DC2000, oslog, v3, "XPC connection (%{public}s) interrupted", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v5);
    MEMORY[0x1B8C831D0](v5, -1, -1);
    MEMORY[0x1B8C831D0](v4, -1, -1);
  }
}

uint64_t sub_1B4E53644(uint64_t a1, void (*a2)(void))
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    a2();
  }

  return result;
}

void sub_1B4E536A4()
{
  v1 = v0;
  v2 = *(v0 + 32);
  os_unfair_lock_lock(*(v2 + 16));
  if (*(v0 + 48))
  {
    *(v0 + 48) = 0;
    v3 = *(v0 + 16);
    TransportDispatchService.unregisterAll()();
    v4 = *(v1 + 24);
    [v4 setInterruptionHandler_];
    [v4 setInvalidationHandler_];
    [v4 invalidate];
  }

  os_unfair_lock_unlock(*(v2 + 16));
  if (qword_1EDB724A8 != -1)
  {
    swift_once();
  }

  v5 = sub_1B4F67C54();
  __swift_project_value_buffer(v5, qword_1EDB72490);

  oslog = sub_1B4F67C34();
  v6 = sub_1B4F685C4();

  if (os_log_type_enabled(oslog, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v16 = v8;
    *v7 = 136446210;
    v9 = [*(v1 + 24) serviceName];
    if (v9)
    {
      v10 = v9;
      v11 = sub_1B4F67F74();
      v13 = v12;
    }

    else
    {
      v13 = 0xEB00000000646569;
      v11 = 0x6669636570736E75;
    }

    v14 = sub_1B4DC4F88(v11, v13, &v16);

    *(v7 + 4) = v14;
    _os_log_impl(&dword_1B4DC2000, oslog, v6, "XPC connection (%{public}s) invalidated", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v8);
    MEMORY[0x1B8C831D0](v8, -1, -1);
    MEMORY[0x1B8C831D0](v7, -1, -1);
  }
}

void *XPCClient.deinit()
{
  v1 = v0;
  v2 = *(v0 + 32);
  os_unfair_lock_lock(*(v2 + 16));
  if (*(v0 + 48) == 2)
  {
    *(v0 + 48) = 1;
    [*(v0 + 24) suspend];
  }

  os_unfair_lock_unlock(*(v2 + 16));
  os_unfair_lock_lock(*(v2 + 16));
  if (*(v0 + 48))
  {
    *(v0 + 48) = 0;
    v3 = *(v0 + 16);
    TransportDispatchService.unregisterAll()();
    v4 = v1[3];
    [v4 setInterruptionHandler_];
    [v4 setInvalidationHandler_];
    [v4 invalidate];
  }

  os_unfair_lock_unlock(*(v2 + 16));
  v5 = v1[2];

  v6 = v1[3];

  v7 = v1[5];
  swift_unknownObjectRelease();
  v8 = v1[8];

  v9 = v1[10];

  return v1;
}

Swift::Void __swiftcall XPCClient.deactivate()()
{
  v1 = *(v0 + 32);
  os_unfair_lock_lock(*(v1 + 16));
  if (*(v0 + 48) == 2)
  {
    *(v0 + 48) = 1;
    [*(v0 + 24) suspend];
  }

  v2 = *(v1 + 16);

  os_unfair_lock_unlock(v2);
}

Swift::Void __swiftcall XPCClient.invalidate()()
{
  v1 = *(v0 + 32);
  os_unfair_lock_lock(*(v1 + 16));
  if (*(v0 + 48))
  {
    *(v0 + 48) = 0;
    v2 = v0;
    v3 = *(v0 + 16);
    TransportDispatchService.unregisterAll()();
    v4 = *(v2 + 24);
    [v4 setInterruptionHandler_];
    [v4 setInvalidationHandler_];
    [v4 invalidate];
  }

  v5 = *(v1 + 16);

  os_unfair_lock_unlock(v5);
}

uint64_t sub_1B4E53AA8(uint64_t a1, void (*a2)(uint64_t, void), uint64_t a3, char a4)
{
  v9 = sub_1B4F67D54();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9, v12);
  v14 = v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1B4F67D74();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15, v17);
  v21 = v40 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + 40))
  {
    v22 = *(a1 + 40);
    v23 = swift_unknownObjectRetain();
    a2(v23, 0);
    return swift_unknownObjectRelease();
  }

  else
  {
    v41 = v21;
    v42 = v19;
    v43 = v10;
    v44 = v18;
    v25 = a3;
    if (*(a1 + 48) != 2)
    {
      goto LABEL_6;
    }

    v26 = *(a1 + 24);
    v27 = swift_allocObject();
    *(v27 + 16) = a1;
    *(v27 + 24) = a4 & 1;
    *(v27 + 32) = a2;
    *(v27 + 40) = a3;
    v49 = sub_1B4E56914;
    v50 = v27;
    aBlock = MEMORY[0x1E69E9820];
    v46 = 1107296256;
    v47 = sub_1B4E54594;
    v48 = &block_descriptor_193;
    v28 = _Block_copy(&aBlock);

    v29 = [v26 remoteObjectProxyWithErrorHandler_];
    _Block_release(v28);
    sub_1B4F68894();
    swift_unknownObjectRelease();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8F7610, &qword_1B4F71818);
    if (swift_dynamicCast())
    {
      v30 = swift_unknownObjectRetain();
      a2(v30, 0);
      return swift_unknownObjectRelease_n();
    }

    else
    {
LABEL_6:
      if (qword_1EDB724A8 != -1)
      {
        swift_once();
      }

      v40[1] = v4;
      v31 = sub_1B4F67C54();
      __swift_project_value_buffer(v31, qword_1EDB72490);
      v32 = sub_1B4F67C34();
      v33 = sub_1B4F685C4();
      if (os_log_type_enabled(v32, v33))
      {
        v34 = swift_slowAlloc();
        *v34 = 0;
        _os_log_impl(&dword_1B4DC2000, v32, v33, "TransportServer unavailable", v34, 2u);
        MEMORY[0x1B8C831D0](v34, -1, -1);
      }

      v35 = *(*(a1 + 16) + 16);
      v36 = swift_allocObject();
      *(v36 + 16) = a2;
      *(v36 + 24) = v25;
      v49 = sub_1B4E56920;
      v50 = v36;
      aBlock = MEMORY[0x1E69E9820];
      v46 = 1107296256;
      v47 = sub_1B4DCA7B0;
      v48 = &block_descriptor_186;
      v37 = _Block_copy(&aBlock);

      v38 = v35;
      v39 = v41;
      sub_1B4F67D64();
      v51 = MEMORY[0x1E69E7CC0];
      sub_1B4DE15DC(&qword_1EDB71F90, 255, MEMORY[0x1E69E7F60]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8F6870, &qword_1B4F710C0);
      sub_1B4DCBA40();
      sub_1B4F688A4();
      MEMORY[0x1B8C81F10](0, v39, v14, v37);
      _Block_release(v37);

      (*(v43 + 8))(v14, v9);
      (*(v42 + 8))(v39, v44);
    }
  }
}

void sub_1B4E53FBC(void *a1, uint64_t a2, int a3, void (*a4)(uint64_t, void), uint64_t a5)
{
  v10 = sub_1B4F67D54();
  v53 = *(v10 - 8);
  v11 = *(v53 + 64);
  MEMORY[0x1EEE9AC00](v10, v12);
  v51 = &v44[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v52 = sub_1B4F67D74();
  v50 = *(v52 - 8);
  v14 = *(v50 + 64);
  MEMORY[0x1EEE9AC00](v52, v15);
  v17 = &v44[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_1EDB724A8 != -1)
  {
    swift_once();
  }

  v18 = sub_1B4F67C54();
  v19 = __swift_project_value_buffer(v18, qword_1EDB72490);

  v20 = a1;
  v49 = v19;
  v21 = sub_1B4F67C34();
  v22 = sub_1B4F685C4();

  if (os_log_type_enabled(v21, v22))
  {
    v45 = a3;
    v46 = a4;
    v47 = v10;
    v48 = a5;
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    aBlock[0] = v24;
    *v23 = 136446466;
    v25 = [*(a2 + 24) serviceName];
    if (v25)
    {
      v26 = v25;
      v27 = sub_1B4F67F74();
      v29 = v28;
    }

    else
    {
      v29 = 0xE900000000000029;
      v27 = 0x6E776F6E6B6E7528;
    }

    v30 = sub_1B4DC4F88(v27, v29, aBlock);

    *(v23 + 4) = v30;
    *(v23 + 12) = 2082;
    swift_getErrorValue();
    v31 = MEMORY[0x1B8C826C0](v54, v55);
    v33 = sub_1B4DC4F88(v31, v32, aBlock);

    *(v23 + 14) = v33;
    _os_log_impl(&dword_1B4DC2000, v21, v22, "Error getting remoteObjectProxy from %{public}s: %{public}s", v23, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1B8C831D0](v24, -1, -1);
    MEMORY[0x1B8C831D0](v23, -1, -1);

    a5 = v48;
    v10 = v47;
    a4 = v46;
    if ((v45 & 1) == 0)
    {
      goto LABEL_14;
    }
  }

  else
  {

    if ((a3 & 1) == 0)
    {
      goto LABEL_14;
    }
  }

  swift_getErrorValue();
  if (sub_1B4F68DE4() != 4097)
  {
LABEL_14:
    v38 = *(*(a2 + 16) + 16);
    v39 = swift_allocObject();
    v39[2] = a4;
    v39[3] = a5;
    v39[4] = a1;
    aBlock[4] = sub_1B4E56808;
    aBlock[5] = v39;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1B4DCA7B0;
    aBlock[3] = &block_descriptor_179;
    v40 = _Block_copy(aBlock);
    v41 = a1;
    v42 = v38;

    sub_1B4F67D64();
    v56 = MEMORY[0x1E69E7CC0];
    sub_1B4DE15DC(&qword_1EDB71F90, 255, MEMORY[0x1E69E7F60]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8F6870, &qword_1B4F710C0);
    sub_1B4DCBA40();
    v43 = v51;
    sub_1B4F688A4();
    MEMORY[0x1B8C81F10](0, v17, v43, v40);
    _Block_release(v40);

    (*(v53 + 8))(v43, v10);
    (*(v50 + 8))(v17, v52);

    return;
  }

  v34 = sub_1B4F67C34();
  v35 = sub_1B4F685C4();
  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    *v36 = 0;
    _os_log_impl(&dword_1B4DC2000, v34, v35, "Retrying remoteObjectProxy, previous connection was interrupted", v36, 2u);
    MEMORY[0x1B8C831D0](v36, -1, -1);
  }

  v37 = *(a2 + 32);
  os_unfair_lock_lock(*(v37 + 16));
  sub_1B4E53AA8(a2, a4, a5, 0);
  os_unfair_lock_unlock(*(v37 + 16));
}

void sub_1B4E54594(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

void sub_1B4E545FC(void (*a1)(void *, uint64_t))
{
  v2 = sub_1B4F658F4();
  sub_1B4DE15DC(&qword_1EB8F7600, 255, MEMORY[0x1E69CB508]);
  v3 = swift_allocError();
  (*(*(v2 - 8) + 104))(v4, *MEMORY[0x1E69CB4E0], v2);
  a1(v3, 1);
}

uint64_t XPCClient.sendRequest(_:)(__int16 *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4588, &qword_1B4F6CE40);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3, v6);
  v7 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v20 - v10;
  v12 = *a1;
  v13 = swift_allocObject();
  *(v13 + 16) = v1;
  *(v13 + 24) = 1;

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8F7610, &qword_1B4F71818);
  sub_1B4F675F4();
  v14 = swift_allocObject();
  *(v14 + 16) = v12;
  *(v14 + 24) = v1;
  (*(v4 + 16))(v7, v11, v3);
  v15 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v16 = (v5 + v15 + 7) & 0xFFFFFFFFFFFFFFF8;
  v17 = swift_allocObject();
  (*(v4 + 32))(v17 + v15, v7, v3);
  v18 = (v17 + v16);
  *v18 = sub_1B4DD9D5C;
  v18[1] = v14;

  sub_1B4F675F4();
  return (*(v4 + 8))(v11, v3);
}

uint64_t sub_1B4E54930(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  if (a2)
  {

    v7 = v4;
    v4 = sub_1B4F64894();
    v9 = v8;
  }

  else
  {

    v9 = 0xF000000000000000;
  }

  v10 = a3;
  v6(v4, v9, a3);

  sub_1B4DD2B5C(v4, v9);
}

uint64_t sub_1B4E549DC(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v32 = a7;
  v33 = a5;
  v12 = sub_1B4F67D54();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12, v15);
  v17 = &v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1B4F67D74();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v18, v21);
  v23 = &v30 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v30 = v19;
    v31 = v18;
    v25 = *(result + 16);

    v26 = *(v25 + 16);

    v27 = swift_allocObject();
    v27[2] = v33;
    v27[3] = a6;
    v27[4] = a3;
    aBlock[4] = a8;
    aBlock[5] = v27;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1B4DCA7B0;
    aBlock[3] = a9;
    v28 = _Block_copy(aBlock);

    v29 = a3;
    sub_1B4F67D64();
    v34 = MEMORY[0x1E69E7CC0];
    sub_1B4DE15DC(&qword_1EDB71F90, 255, MEMORY[0x1E69E7F60]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8F6870, &qword_1B4F710C0);
    sub_1B4DCBA40();
    sub_1B4F688A4();
    MEMORY[0x1B8C81F10](0, v23, v17, v28);
    _Block_release(v28);

    (*(v13 + 8))(v17, v12);
    (*(v30 + 8))(v23, v31);
  }

  return result;
}

void sub_1B4E54CD8(void (*a1)(void *, void), int a2, id a3)
{
  v4 = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F5130, &qword_1B4F71530);
  sub_1B4F68EF4();
  a1(v5, v6);
  sub_1B4DDC730(v5, v6);
}

uint64_t sub_1B4E54D68(uint64_t a1, unint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v38 = a5;
  v39 = a8;
  v37 = a7;
  v40 = a1;
  v12 = sub_1B4F67D54();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12, v15);
  v17 = &v35 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1B4F67D74();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v18, v21);
  v23 = &v35 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v35 = v13;
    v36 = v18;
    v25 = v12;
    v26 = a2;
    v27 = *(result + 16);

    v28 = *(v27 + 16);

    v29 = swift_allocObject();
    v30 = v38;
    v31 = v39;
    v29[2] = v37;
    v29[3] = v31;
    v29[4] = a9;
    v29[5] = v30;
    v32 = v40;
    v29[6] = a6;
    v29[7] = v32;
    v29[8] = v26;
    v29[9] = a3;
    aBlock[4] = sub_1B4E56684;
    aBlock[5] = v29;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1B4DCA7B0;
    aBlock[3] = &block_descriptor_119;
    v33 = _Block_copy(aBlock);

    sub_1B4DD3000(v32, v26);
    v34 = a3;
    sub_1B4F67D64();
    v41 = MEMORY[0x1E69E7CC0];
    sub_1B4DE15DC(&qword_1EDB71F90, 255, MEMORY[0x1E69E7F60]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8F6870, &qword_1B4F710C0);
    sub_1B4DCBA40();
    sub_1B4F688A4();
    MEMORY[0x1B8C81F10](0, v23, v17, v33);
    _Block_release(v33);

    (*(v35 + 8))(v17, v25);
    (*(v19 + 8))(v23, v36);
  }

  return result;
}

uint64_t sub_1B4E550B0(void (*a1)(char *), uint64_t a2, uint64_t a3, unint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v20[1] = a8;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8F5130, &qword_1B4F71530);
  v12 = sub_1B4F68F14();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12, v15);
  v17 = v20 - v16;
  sub_1B4DD3000(a3, a4);
  v18 = a5;
  sub_1B4F68ED4();
  a1(v17);
  return (*(v13 + 8))(v17, v12);
}

uint64_t sub_1B4E55204(uint64_t a1, unint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v43 = a7;
  v44 = a8;
  v45 = a5;
  v46 = a1;
  v15 = sub_1B4F67D54();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15, v18);
  v20 = &v38 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_1B4F67D74();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v21, v24);
  v26 = &v38 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v40 = v16;
    v41 = v22;
    v42 = v21;
    v38 = a3;
    v39 = v15;
    v28 = a6;
    v29 = *(result + 16);

    v30 = *(v29 + 16);

    v31 = swift_allocObject();
    v32 = v44;
    v31[2] = v43;
    v31[3] = v32;
    v31[4] = a9;
    v31[5] = a10;
    v31[6] = a11;
    v31[7] = a12;
    v33 = v46;
    v31[8] = v45;
    v31[9] = v28;
    v31[10] = v33;
    v31[11] = a2;
    v34 = v38;
    v31[12] = v38;
    aBlock[4] = sub_1B4E565CC;
    aBlock[5] = v31;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1B4DCA7B0;
    aBlock[3] = &block_descriptor_103;
    v35 = _Block_copy(aBlock);

    sub_1B4DD3000(v33, a2);
    v36 = v34;
    sub_1B4F67D64();
    v47 = MEMORY[0x1E69E7CC0];
    sub_1B4DE15DC(&qword_1EDB71F90, 255, MEMORY[0x1E69E7F60]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8F6870, &qword_1B4F710C0);
    sub_1B4DCBA40();
    v37 = v39;
    sub_1B4F688A4();
    MEMORY[0x1B8C81F10](0, v26, v20, v35);
    _Block_release(v35);

    (*(v40 + 8))(v20, v37);
    (*(v41 + 8))(v26, v42);
  }

  return result;
}

uint64_t sub_1B4E55560(void (*a1)(char *), uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v17 = a1;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8F5130, &qword_1B4F71530);
  v8 = sub_1B4F68F14();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8, v11);
  v13 = &v16 - v12;
  sub_1B4DD3000(a3, a4);
  v14 = a5;
  sub_1B4F68ED4();
  v17(v13);
  return (*(v9 + 8))(v13, v8);
}

uint64_t XPCClient.broadcastEvent<A>(_:payload:)(unsigned __int8 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v43 = a4;
  v44 = a5;
  v41 = a2;
  v8 = *(a3 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](a1, a2);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4588, &qword_1B4F6CE40);
  v10 = *(v42 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v42, v12);
  v40 = &v38[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = &v38[-v15];
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8F6930, &unk_1B4F6CC10);
  v18 = *(v17 - 8);
  v45 = v17;
  v46 = v18;
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17, v20);
  v22 = &v38[-v21];
  v39 = *a1;
  v23 = swift_allocObject();
  *(v23 + 16) = v5;
  *(v23 + 24) = 1;

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8F7610, &qword_1B4F71818);
  sub_1B4F675F4();
  (*(v8 + 16))(&v38[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)], v41, a3);
  v24 = (*(v8 + 80) + 41) & ~*(v8 + 80);
  v25 = swift_allocObject();
  v27 = v43;
  v26 = v44;
  *(v25 + 16) = a3;
  *(v25 + 24) = v27;
  *(v25 + 32) = v26;
  *(v25 + 40) = v39;
  (*(v8 + 32))(v25 + v24, &v38[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)], a3);
  v28 = swift_allocObject();
  *(v28 + 16) = sub_1B4E56330;
  *(v28 + 24) = v25;
  v29 = v40;
  v30 = v42;
  (*(v10 + 16))(v40, v16, v42);
  v31 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v32 = swift_allocObject();
  (*(v10 + 32))(v32 + v31, v29, v30);
  v33 = (v32 + ((v11 + v31 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v33 = sub_1B4E56918;
  v33[1] = v28;
  sub_1B4F675F4();
  (*(v10 + 8))(v16, v30);
  v34 = v45;
  v35 = sub_1B4F67654();
  v36 = swift_allocObject();
  *(v36 + 16) = 0;
  *(v36 + 24) = 0;
  v35(sub_1B4E56960, v36);

  return (*(v46 + 8))(v22, v34);
}

void sub_1B4E55EA8(void **a1, char a2)
{
  v4 = *a1;
  v5 = sub_1B4F66E04();
  if (v2)
  {

    v7 = 0;
  }

  else
  {
    v8 = v5;
    v9 = v6;
    v7 = sub_1B4F64884();
    sub_1B4DD2B70(v8, v9);
  }

  [v4 receiveEvent:qword_1B4F72510[a2] data:v7];
}

uint64_t static XPCClient.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  sub_1B4DE1BDC();
  v4 = *(a1 + 24);
  v5 = *(a2 + 24);
  return sub_1B4F68764() & 1;
}

uint64_t XPCClient.hashValue.getter()
{
  sub_1B4F68E84();
  v1 = *(v0 + 24);
  sub_1B4F68774();
  return sub_1B4F68EC4();
}

uint64_t sub_1B4E5616C()
{
  v1 = *v0;
  sub_1B4F68E84();
  v2 = *(v1 + 24);
  sub_1B4F68774();
  return sub_1B4F68EC4();
}

uint64_t sub_1B4E561DC()
{
  v1 = *v0;
  sub_1B4F68E84();
  v2 = *(v1 + 24);
  sub_1B4F68774();
  return sub_1B4F68EC4();
}

uint64_t sub_1B4E56220(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  sub_1B4DE1BDC();
  v4 = *(v2 + 24);
  v5 = *(v3 + 24);
  return sub_1B4F68764() & 1;
}

uint64_t sub_1B4E56268(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v5 = *a1;
  v6 = swift_allocObject();
  v6[2] = a2;
  v6[3] = a3;
  v6[4] = v5;

  swift_unknownObjectRetain();

  return sub_1B4F675F4();
}

void sub_1B4E56330(void **a1)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  v4 = *(*(*(v1 + 16) - 8) + 80);
  sub_1B4E55EA8(a1, *(v1 + 40));
}

uint64_t getEnumTagSinglePayload for XPCClient.ConnectionState(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for XPCClient.ConnectionState(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1B4E5653C()
{
  result = qword_1EB8F52A0;
  if (!qword_1EB8F52A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F52A0);
  }

  return result;
}

uint64_t sub_1B4E565CC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  v6 = *(v0 + 56);
  v5 = *(v0 + 40);
  return sub_1B4E55560(*(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88), *(v0 + 96));
}

uint64_t objectdestroy_105Tm(void (*a1)(void))
{
  a1(*(v1 + 40));
  v2 = *(v1 + 56);

  return MEMORY[0x1EEE6BDD0](v1, 64, 7);
}

uint64_t objectdestroy_128Tm(void (*a1)(void))
{
  a1(*(v1 + 16));
  v2 = *(v1 + 32);

  return MEMORY[0x1EEE6BDD0](v1, 40, 7);
}

uint64_t objectdestroy_87Tm(void (*a1)(void))
{
  v3 = *(v1 + 24);

  a1(*(v1 + 32));

  return MEMORY[0x1EEE6BDD0](v1, 40, 7);
}

uint64_t objectdestroy_169Tm()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 40);

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t HealthKitStandaloneMindfulSessionJobAdded.healthKitStandaloneMindfulSessionJob.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1B4F674F4();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t HealthKitStandaloneMindfulSessionJobAdded.init(healthKitStandaloneMindfulSessionJob:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1B4F674F4();
  v5 = *(*(v4 - 8) + 32);

  return v5(a2, a1, v4);
}

uint64_t type metadata accessor for HealthKitStandaloneMindfulSessionJobAdded()
{
  result = qword_1EDB70330;
  if (!qword_1EDB70330)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1B4E56AC0()
{
  result = sub_1B4F674F4();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void *RecommendationClient.__allocating_init(eventHub:queue:)(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = objc_allocWithZone(MEMORY[0x1E696B0B8]);
  v7 = a3;
  v8 = sub_1B4F67F64();
  v9 = [v6 initWithMachServiceName:v8 options:0];

  type metadata accessor for XPCClient();
  swift_allocObject();
  v10 = sub_1B4DC42B8(v9, v7);

  v11 = *(v10 + 32);
  os_unfair_lock_lock(*(v11 + 16));
  if (*(v10 + 48) == 1)
  {
    *(v10 + 48) = 2;
    [*(v10 + 24) resume];
  }

  os_unfair_lock_unlock(*(v11 + 16));
  v12 = swift_allocObject();
  v13 = sub_1B4E592D0(v10, a1, a2, v12);

  return v13;
}

uint64_t sub_1B4E56C80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v6 = *(result + 40);
    v7 = *(result + 48);
    swift_unknownObjectRetain();

    ObjectType = swift_getObjectType();
    (*(v7 + 8))(ObjectType, a2, a3, ObjectType, v7);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t RecommendationClient.deinit()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);
  swift_unknownObjectRelease();
  return v0;
}

uint64_t RecommendationClient.__deallocating_deinit()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t RecommendationClient.deduplicateOnboardingSurveyResults()()
{
  v1 = v0;
  if (qword_1EDB70468 != -1)
  {
    swift_once();
  }

  v2 = sub_1B4F67C54();
  __swift_project_value_buffer(v2, qword_1EDB70470);
  v3._countAndFlagsBits = 0xD000000000000028;
  v3._object = 0x80000001B4F810C0;
  v4._object = 0x80000001B4F810F0;
  v4._countAndFlagsBits = 0xD000000000000024;
  Logger.trace(file:function:)(v3, v4);
  v5 = *(v0 + 16);
  v6 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  v9 = 177;
  return (*(v6 + 8))(&v9, ObjectType, v6);
}

uint64_t RecommendationClient.deleteAllOnboardingSurveyResults()()
{
  v1 = v0;
  if (qword_1EDB70468 != -1)
  {
    swift_once();
  }

  v2 = sub_1B4F67C54();
  __swift_project_value_buffer(v2, qword_1EDB70470);
  v3._countAndFlagsBits = 0xD000000000000028;
  v3._object = 0x80000001B4F810C0;
  v4._object = 0x80000001B4F81120;
  v4._countAndFlagsBits = 0xD000000000000022;
  Logger.trace(file:function:)(v3, v4);
  v5 = *(v0 + 16);
  v6 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  v9 = 173;
  return (*(v6 + 8))(&v9, ObjectType, v6);
}

uint64_t RecommendationClient.evaluateAllRecommendations()()
{
  v1 = v0;
  if (qword_1EDB70468 != -1)
  {
    swift_once();
  }

  v2 = sub_1B4F67C54();
  __swift_project_value_buffer(v2, qword_1EDB70470);
  v3._countAndFlagsBits = 0xD000000000000028;
  v3._object = 0x80000001B4F810C0;
  v4._object = 0x80000001B4F81150;
  v4._countAndFlagsBits = 0xD00000000000001CLL;
  Logger.trace(file:function:)(v3, v4);
  v5 = *(v0 + 16);
  v6 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  v9 = 164;
  return (*(v6 + 8))(&v9, ObjectType, v6);
}

uint64_t RecommendationClient.evaluateRecommendedGuidedAudioWorkouts()()
{
  v1 = v0;
  if (qword_1EDB70468 != -1)
  {
    swift_once();
  }

  v2 = sub_1B4F67C54();
  __swift_project_value_buffer(v2, qword_1EDB70470);
  v3._object = 0x80000001B4F810C0;
  v4._object = 0x80000001B4F81170;
  v3._countAndFlagsBits = 0xD000000000000028;
  v4._countAndFlagsBits = 0xD000000000000028;
  Logger.trace(file:function:)(v3, v4);
  v5 = *(v0 + 16);
  v6 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  v13 = 168;
  v8 = *(v6 + 24);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F52A8, &qword_1B4F72730);
  v10 = sub_1B4E2F2A0(&qword_1EDB70150, &qword_1EB8F52A8, &qword_1B4F72730);
  v11 = sub_1B4E594C8();
  return v8(&v13, v9, v10, v11, ObjectType, v6);
}

uint64_t RecommendationClient.fetchRemoteForYouCanvas()()
{
  v1 = v0;
  if (qword_1EDB70448 != -1)
  {
    swift_once();
  }

  v2 = sub_1B4F67C54();
  __swift_project_value_buffer(v2, qword_1EDB70450);
  v3._countAndFlagsBits = 0xD000000000000028;
  v3._object = 0x80000001B4F810C0;
  v4._object = 0x80000001B4F811A0;
  v4._countAndFlagsBits = 0xD000000000000019;
  Logger.trace(file:function:)(v3, v4);
  v5 = *(v0 + 16);
  v6 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  v11 = 99;
  v8 = *(v6 + 24);
  v9 = sub_1B4F664F4();
  return v8(&v11, v9, MEMORY[0x1E69CC358], MEMORY[0x1E69CC360], ObjectType, v6);
}

uint64_t RecommendationClient.fetchOnboardingDetail()()
{
  v1 = v0;
  if (qword_1EDB70468 != -1)
  {
    swift_once();
  }

  v2 = sub_1B4F67C54();
  __swift_project_value_buffer(v2, qword_1EDB70470);
  v3._countAndFlagsBits = 0xD000000000000028;
  v3._object = 0x80000001B4F810C0;
  v4._object = 0x80000001B4F811C0;
  v4._countAndFlagsBits = 0xD000000000000017;
  Logger.trace(file:function:)(v3, v4);
  v5 = *(v0 + 16);
  v6 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  v11 = 174;
  v8 = *(v6 + 24);
  v9 = sub_1B4F65DC4();
  return v8(&v11, v9, MEMORY[0x1E69CB7D0], MEMORY[0x1E69CB7D8], ObjectType, v6);
}

uint64_t RecommendationClient.fetchPersonalizationInferenceResponse(options:)(uint64_t a1)
{
  v2 = v1;
  if (qword_1EDB70448 != -1)
  {
    swift_once();
  }

  v4 = sub_1B4F67C54();
  __swift_project_value_buffer(v4, qword_1EDB70450);
  v5._object = 0x80000001B4F810C0;
  v6._countAndFlagsBits = 0xD00000000000002FLL;
  v6._object = 0x80000001B4F811E0;
  v5._countAndFlagsBits = 0xD000000000000028;
  Logger.trace(file:function:)(v5, v6);
  v7 = *(v1 + 16);
  v8 = *(v2 + 24);
  ObjectType = swift_getObjectType();
  v14 = 169;
  v10 = *(v8 + 32);
  v11 = sub_1B4F67574();
  v12 = sub_1B4F673B4();
  return v10(&v14, a1, v11, v12, MEMORY[0x1E69CD220], MEMORY[0x1E69CD228], MEMORY[0x1E69CD030], MEMORY[0x1E69CD038], ObjectType, v8);
}

uint64_t RecommendationClient.fetchPersonalizedWorkoutPlans(request:)(uint64_t a1)
{
  v2 = v1;
  if (qword_1EDB70448 != -1)
  {
    swift_once();
  }

  v4 = sub_1B4F67C54();
  __swift_project_value_buffer(v4, qword_1EDB70450);
  v5._countAndFlagsBits = 0xD000000000000028;
  v5._object = 0x80000001B4F810C0;
  v6._object = 0x80000001B4F81210;
  v6._countAndFlagsBits = 0xD000000000000027;
  Logger.trace(file:function:)(v5, v6);
  v7 = *(v1 + 16);
  v8 = *(v2 + 24);
  ObjectType = swift_getObjectType();
  v14 = 178;
  v10 = *(v8 + 32);
  v11 = sub_1B4F674A4();
  v12 = sub_1B4F66A84();
  return v10(&v14, a1, v11, v12, MEMORY[0x1E69CD148], MEMORY[0x1E69CD150], MEMORY[0x1E69CC990], MEMORY[0x1E69CC998], ObjectType, v8);
}

uint64_t RecommendationClient.fetchPersonalizationAwardProgressReferences()()
{
  v1 = v0;
  if (qword_1EDB70448 != -1)
  {
    swift_once();
  }

  v2 = sub_1B4F67C54();
  __swift_project_value_buffer(v2, qword_1EDB70450);
  v3._object = 0x80000001B4F810C0;
  v4._countAndFlagsBits = 0xD00000000000002DLL;
  v4._object = 0x80000001B4F81240;
  v3._countAndFlagsBits = 0xD000000000000028;
  Logger.trace(file:function:)(v3, v4);
  v5 = *(v0 + 16);
  v6 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  v13 = 175;
  v8 = *(v6 + 24);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F52B0, &qword_1B4F72738);
  v10 = sub_1B4E5954C();
  v11 = sub_1B4E595D0();
  return v8(&v13, v9, v10, v11, ObjectType, v6);
}

uint64_t RecommendationClient.makePersonalizationInferenceRequest(options:)(uint64_t a1)
{
  v2 = v1;
  if (qword_1EDB70448 != -1)
  {
    swift_once();
  }

  v4 = sub_1B4F67C54();
  __swift_project_value_buffer(v4, qword_1EDB70450);
  v5._object = 0x80000001B4F810C0;
  v6._countAndFlagsBits = 0xD00000000000002DLL;
  v6._object = 0x80000001B4F81270;
  v5._countAndFlagsBits = 0xD000000000000028;
  Logger.trace(file:function:)(v5, v6);
  v7 = *(v1 + 16);
  v8 = *(v2 + 24);
  ObjectType = swift_getObjectType();
  v14 = 170;
  v10 = *(v8 + 32);
  v11 = sub_1B4F67574();
  v12 = sub_1B4F67374();
  return v10(&v14, a1, v11, v12, MEMORY[0x1E69CD220], MEMORY[0x1E69CD228], MEMORY[0x1E69CCFC8], MEMORY[0x1E69CCFD0], ObjectType, v8);
}

uint64_t RecommendationClient.queryAllRecommendations()()
{
  v1 = v0;
  if (qword_1EDB70468 != -1)
  {
    swift_once();
  }

  v2 = sub_1B4F67C54();
  __swift_project_value_buffer(v2, qword_1EDB70470);
  v3._countAndFlagsBits = 0xD000000000000028;
  v3._object = 0x80000001B4F810C0;
  v4._object = 0x80000001B4F812A0;
  v4._countAndFlagsBits = 0xD000000000000019;
  Logger.trace(file:function:)(v3, v4);
  v5 = *(v0 + 16);
  v6 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  v13 = 165;
  v8 = *(v6 + 24);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F52D0, &qword_1B4F72740);
  v10 = sub_1B4E59684();
  v11 = sub_1B4E59708();
  return v8(&v13, v9, v10, v11, ObjectType, v6);
}

uint64_t RecommendationClient.queryAllOnboardingSurveyResults()()
{
  v1 = v0;
  if (qword_1EDB70468 != -1)
  {
    swift_once();
  }

  v2 = sub_1B4F67C54();
  __swift_project_value_buffer(v2, qword_1EDB70470);
  v3._countAndFlagsBits = 0xD000000000000028;
  v3._object = 0x80000001B4F810C0;
  v4._object = 0x80000001B4F812C0;
  v4._countAndFlagsBits = 0xD000000000000021;
  Logger.trace(file:function:)(v3, v4);
  v5 = *(v0 + 16);
  v6 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  v13 = 176;
  v8 = *(v6 + 24);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F52F0, &qword_1B4F72748);
  v10 = sub_1B4E597BC();
  v11 = sub_1B4E59840();
  return v8(&v13, v9, v10, v11, ObjectType, v6);
}

uint64_t RecommendationClient.queryOnboardingSurveyResult()()
{
  v1 = v0;
  if (qword_1EDB70468 != -1)
  {
    swift_once();
  }

  v2 = sub_1B4F67C54();
  __swift_project_value_buffer(v2, qword_1EDB70470);
  v3._countAndFlagsBits = 0xD000000000000028;
  v3._object = 0x80000001B4F810C0;
  v4._object = 0x80000001B4F812F0;
  v4._countAndFlagsBits = 0xD00000000000001DLL;
  Logger.trace(file:function:)(v3, v4);
  v5 = *(v0 + 16);
  v6 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  v11 = 171;
  v8 = *(v6 + 24);
  v9 = sub_1B4F66604();
  return v8(&v11, v9, MEMORY[0x1E69CC510], MEMORY[0x1E69CC518], ObjectType, v6);
}

uint64_t RecommendationClient.queryRecommendations(for:)(char a1)
{
  v2 = v1;
  if (qword_1EDB70468 != -1)
  {
    swift_once();
  }

  v4 = sub_1B4F67C54();
  __swift_project_value_buffer(v4, qword_1EDB70470);
  v5._countAndFlagsBits = 0xD000000000000028;
  v5._object = 0x80000001B4F810C0;
  v6._object = 0x80000001B4F81310;
  v6._countAndFlagsBits = 0xD00000000000001ALL;
  Logger.trace(file:function:)(v5, v6);
  v7 = *(v1 + 16);
  v8 = *(v2 + 24);
  ObjectType = swift_getObjectType();
  v16 = 166;
  v15 = a1;
  v10 = *(v8 + 32);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F52D0, &qword_1B4F72740);
  v12 = sub_1B4E59684();
  v13 = sub_1B4E59708();
  return v10(&v16, &v15, MEMORY[0x1E69CC6E8], v11, MEMORY[0x1E69CC6D8], MEMORY[0x1E69CC6E0], v12, v13, ObjectType, v8);
}

uint64_t RecommendationClient.queryRelatedWorkouts(_:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (qword_1EDB70468 != -1)
  {
    swift_once();
  }

  v6 = sub_1B4F67C54();
  __swift_project_value_buffer(v6, qword_1EDB70470);
  v7._countAndFlagsBits = 0xD000000000000028;
  v7._object = 0x80000001B4F810C0;
  v8._object = 0x80000001B4F81330;
  v8._countAndFlagsBits = 0xD000000000000018;
  Logger.trace(file:function:)(v7, v8);
  v9 = *(v2 + 16);
  v10 = *(v3 + 24);
  ObjectType = swift_getObjectType();
  v18 = 167;
  v17[0] = a1;
  v17[1] = a2;
  v12 = *(v10 + 32);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F5310, &qword_1B4F72750);
  v14 = sub_1B4E2F2A0(&qword_1EDB6DBC0, &qword_1EB8F5310, &qword_1B4F72750);
  v15 = sub_1B4E598F4();
  return v12(&v18, v17, MEMORY[0x1E69E6158], v13, MEMORY[0x1E69CD450], MEMORY[0x1E69CD458], v14, v15, ObjectType, v10);
}

uint64_t RecommendationClient.updateOnboardingSurveyResult(_:)(uint64_t a1)
{
  v2 = v1;
  if (qword_1EDB70468 != -1)
  {
    swift_once();
  }

  v4 = sub_1B4F67C54();
  __swift_project_value_buffer(v4, qword_1EDB70470);
  v5._countAndFlagsBits = 0xD000000000000028;
  v5._object = 0x80000001B4F810C0;
  v6._object = 0x80000001B4F81350;
  v6._countAndFlagsBits = 0xD000000000000020;
  Logger.trace(file:function:)(v5, v6);
  v7 = *(v1 + 16);
  v8 = *(v2 + 24);
  ObjectType = swift_getObjectType();
  v13 = 172;
  v10 = *(v8 + 16);
  v11 = sub_1B4F66604();
  return v10(&v13, a1, v11, MEMORY[0x1E69CC510], MEMORY[0x1E69CC518], ObjectType, v8);
}

uint64_t sub_1B4E58034()
{
  v1 = *v0;
  if (qword_1EDB70468 != -1)
  {
    swift_once();
  }

  v2 = sub_1B4F67C54();
  __swift_project_value_buffer(v2, qword_1EDB70470);
  v3._countAndFlagsBits = 0xD000000000000028;
  v3._object = 0x80000001B4F810C0;
  v4._object = 0x80000001B4F810F0;
  v4._countAndFlagsBits = 0xD000000000000024;
  Logger.trace(file:function:)(v3, v4);
  v5 = *(v1 + 16);
  v6 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  v9 = 177;
  return (*(v6 + 8))(&v9, ObjectType, v6);
}

uint64_t sub_1B4E58120()
{
  v1 = *v0;
  if (qword_1EDB70468 != -1)
  {
    swift_once();
  }

  v2 = sub_1B4F67C54();
  __swift_project_value_buffer(v2, qword_1EDB70470);
  v3._countAndFlagsBits = 0xD000000000000028;
  v3._object = 0x80000001B4F810C0;
  v4._object = 0x80000001B4F81120;
  v4._countAndFlagsBits = 0xD000000000000022;
  Logger.trace(file:function:)(v3, v4);
  v5 = *(v1 + 16);
  v6 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  v9 = 173;
  return (*(v6 + 8))(&v9, ObjectType, v6);
}

uint64_t sub_1B4E5820C()
{
  v1 = *v0;
  if (qword_1EDB70468 != -1)
  {
    swift_once();
  }

  v2 = sub_1B4F67C54();
  __swift_project_value_buffer(v2, qword_1EDB70470);
  v3._countAndFlagsBits = 0xD000000000000028;
  v3._object = 0x80000001B4F810C0;
  v4._object = 0x80000001B4F81150;
  v4._countAndFlagsBits = 0xD00000000000001CLL;
  Logger.trace(file:function:)(v3, v4);
  v5 = *(v1 + 16);
  v6 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  v9 = 164;
  return (*(v6 + 8))(&v9, ObjectType, v6);
}

uint64_t sub_1B4E582F8()
{
  v1 = *v0;
  if (qword_1EDB70468 != -1)
  {
    swift_once();
  }

  v2 = sub_1B4F67C54();
  __swift_project_value_buffer(v2, qword_1EDB70470);
  v3._object = 0x80000001B4F810C0;
  v4._object = 0x80000001B4F81170;
  v3._countAndFlagsBits = 0xD000000000000028;
  v4._countAndFlagsBits = 0xD000000000000028;
  Logger.trace(file:function:)(v3, v4);
  v5 = *(v1 + 16);
  v6 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  v13 = 168;
  v8 = *(v6 + 24);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F52A8, &qword_1B4F72730);
  v10 = sub_1B4E2F2A0(&qword_1EDB70150, &qword_1EB8F52A8, &qword_1B4F72730);
  v11 = sub_1B4E594C8();
  return v8(&v13, v9, v10, v11, ObjectType, v6);
}

uint64_t sub_1B4E5844C()
{
  v1 = *v0;
  if (qword_1EDB70448 != -1)
  {
    swift_once();
  }

  v2 = sub_1B4F67C54();
  __swift_project_value_buffer(v2, qword_1EDB70450);
  v3._countAndFlagsBits = 0xD000000000000028;
  v3._object = 0x80000001B4F810C0;
  v4._object = 0x80000001B4F811A0;
  v4._countAndFlagsBits = 0xD000000000000019;
  Logger.trace(file:function:)(v3, v4);
  v5 = *(v1 + 16);
  v6 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  v11 = 99;
  v8 = *(v6 + 24);
  v9 = sub_1B4F664F4();
  return v8(&v11, v9, MEMORY[0x1E69CC358], MEMORY[0x1E69CC360], ObjectType, v6);
}

uint64_t sub_1B4E58560()
{
  v1 = *v0;
  if (qword_1EDB70468 != -1)
  {
    swift_once();
  }

  v2 = sub_1B4F67C54();
  __swift_project_value_buffer(v2, qword_1EDB70470);
  v3._countAndFlagsBits = 0xD000000000000028;
  v3._object = 0x80000001B4F810C0;
  v4._object = 0x80000001B4F811C0;
  v4._countAndFlagsBits = 0xD000000000000017;
  Logger.trace(file:function:)(v3, v4);
  v5 = *(v1 + 16);
  v6 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  v11 = 174;
  v8 = *(v6 + 24);
  v9 = sub_1B4F65DC4();
  return v8(&v11, v9, MEMORY[0x1E69CB7D0], MEMORY[0x1E69CB7D8], ObjectType, v6);
}

uint64_t sub_1B4E58674(uint64_t a1)
{
  v3 = *v1;
  if (qword_1EDB70448 != -1)
  {
    swift_once();
  }

  v4 = sub_1B4F67C54();
  __swift_project_value_buffer(v4, qword_1EDB70450);
  v5._object = 0x80000001B4F810C0;
  v6._countAndFlagsBits = 0xD00000000000002FLL;
  v6._object = 0x80000001B4F811E0;
  v5._countAndFlagsBits = 0xD000000000000028;
  Logger.trace(file:function:)(v5, v6);
  v7 = *(v3 + 16);
  v8 = *(v3 + 24);
  ObjectType = swift_getObjectType();
  v14 = 169;
  v10 = *(v8 + 32);
  v11 = sub_1B4F67574();
  v12 = sub_1B4F673B4();
  return v10(&v14, a1, v11, v12, MEMORY[0x1E69CD220], MEMORY[0x1E69CD228], MEMORY[0x1E69CD030], MEMORY[0x1E69CD038], ObjectType, v8);
}

uint64_t sub_1B4E587B4(uint64_t a1)
{
  v3 = *v1;
  if (qword_1EDB70448 != -1)
  {
    swift_once();
  }

  v4 = sub_1B4F67C54();
  __swift_project_value_buffer(v4, qword_1EDB70450);
  v5._countAndFlagsBits = 0xD000000000000028;
  v5._object = 0x80000001B4F810C0;
  v6._object = 0x80000001B4F81210;
  v6._countAndFlagsBits = 0xD000000000000027;
  Logger.trace(file:function:)(v5, v6);
  v7 = *(v3 + 16);
  v8 = *(v3 + 24);
  ObjectType = swift_getObjectType();
  v14 = 178;
  v10 = *(v8 + 32);
  v11 = sub_1B4F674A4();
  v12 = sub_1B4F66A84();
  return v10(&v14, a1, v11, v12, MEMORY[0x1E69CD148], MEMORY[0x1E69CD150], MEMORY[0x1E69CC990], MEMORY[0x1E69CC998], ObjectType, v8);
}

uint64_t sub_1B4E588F4()
{
  v1 = *v0;
  if (qword_1EDB70448 != -1)
  {
    swift_once();
  }

  v2 = sub_1B4F67C54();
  __swift_project_value_buffer(v2, qword_1EDB70450);
  v3._object = 0x80000001B4F810C0;
  v4._countAndFlagsBits = 0xD00000000000002DLL;
  v4._object = 0x80000001B4F81240;
  v3._countAndFlagsBits = 0xD000000000000028;
  Logger.trace(file:function:)(v3, v4);
  v5 = *(v1 + 16);
  v6 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  v13 = 175;
  v8 = *(v6 + 24);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F52B0, &qword_1B4F72738);
  v10 = sub_1B4E5954C();
  v11 = sub_1B4E595D0();
  return v8(&v13, v9, v10, v11, ObjectType, v6);
}

uint64_t sub_1B4E58A28(uint64_t a1)
{
  v3 = *v1;
  if (qword_1EDB70448 != -1)
  {
    swift_once();
  }

  v4 = sub_1B4F67C54();
  __swift_project_value_buffer(v4, qword_1EDB70450);
  v5._object = 0x80000001B4F810C0;
  v6._countAndFlagsBits = 0xD00000000000002DLL;
  v6._object = 0x80000001B4F81270;
  v5._countAndFlagsBits = 0xD000000000000028;
  Logger.trace(file:function:)(v5, v6);
  v7 = *(v3 + 16);
  v8 = *(v3 + 24);
  ObjectType = swift_getObjectType();
  v14 = 170;
  v10 = *(v8 + 32);
  v11 = sub_1B4F67574();
  v12 = sub_1B4F67374();
  return v10(&v14, a1, v11, v12, MEMORY[0x1E69CD220], MEMORY[0x1E69CD228], MEMORY[0x1E69CCFC8], MEMORY[0x1E69CCFD0], ObjectType, v8);
}

uint64_t sub_1B4E58B6C()
{
  v1 = *v0;
  if (qword_1EDB70468 != -1)
  {
    swift_once();
  }

  v2 = sub_1B4F67C54();
  __swift_project_value_buffer(v2, qword_1EDB70470);
  v3._countAndFlagsBits = 0xD000000000000028;
  v3._object = 0x80000001B4F810C0;
  v4._object = 0x80000001B4F812A0;
  v4._countAndFlagsBits = 0xD000000000000019;
  Logger.trace(file:function:)(v3, v4);
  v5 = *(v1 + 16);
  v6 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  v13 = 165;
  v8 = *(v6 + 24);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F52D0, &qword_1B4F72740);
  v10 = sub_1B4E59684();
  v11 = sub_1B4E59708();
  return v8(&v13, v9, v10, v11, ObjectType, v6);
}

uint64_t sub_1B4E58C9C()
{
  v1 = *v0;
  if (qword_1EDB70468 != -1)
  {
    swift_once();
  }

  v2 = sub_1B4F67C54();
  __swift_project_value_buffer(v2, qword_1EDB70470);
  v3._countAndFlagsBits = 0xD000000000000028;
  v3._object = 0x80000001B4F810C0;
  v4._object = 0x80000001B4F812C0;
  v4._countAndFlagsBits = 0xD000000000000021;
  Logger.trace(file:function:)(v3, v4);
  v5 = *(v1 + 16);
  v6 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  v13 = 176;
  v8 = *(v6 + 24);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F52F0, &qword_1B4F72748);
  v10 = sub_1B4E597BC();
  v11 = sub_1B4E59840();
  return v8(&v13, v9, v10, v11, ObjectType, v6);
}

uint64_t sub_1B4E58DCC()
{
  v1 = *v0;
  if (qword_1EDB70468 != -1)
  {
    swift_once();
  }

  v2 = sub_1B4F67C54();
  __swift_project_value_buffer(v2, qword_1EDB70470);
  v3._countAndFlagsBits = 0xD000000000000028;
  v3._object = 0x80000001B4F810C0;
  v4._object = 0x80000001B4F812F0;
  v4._countAndFlagsBits = 0xD00000000000001DLL;
  Logger.trace(file:function:)(v3, v4);
  v5 = *(v1 + 16);
  v6 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  v11 = 171;
  v8 = *(v6 + 24);
  v9 = sub_1B4F66604();
  return v8(&v11, v9, MEMORY[0x1E69CC510], MEMORY[0x1E69CC518], ObjectType, v6);
}

uint64_t sub_1B4E58EE0(char a1)
{
  v3 = *v1;
  if (qword_1EDB70468 != -1)
  {
    swift_once();
  }

  v4 = sub_1B4F67C54();
  __swift_project_value_buffer(v4, qword_1EDB70470);
  v5._countAndFlagsBits = 0xD000000000000028;
  v5._object = 0x80000001B4F810C0;
  v6._object = 0x80000001B4F81310;
  v6._countAndFlagsBits = 0xD00000000000001ALL;
  Logger.trace(file:function:)(v5, v6);
  v7 = *(v3 + 16);
  v8 = *(v3 + 24);
  ObjectType = swift_getObjectType();
  v16 = 166;
  v15 = a1;
  v10 = *(v8 + 32);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F52D0, &qword_1B4F72740);
  v12 = sub_1B4E59684();
  v13 = sub_1B4E59708();
  return v10(&v16, &v15, MEMORY[0x1E69CC6E8], v11, MEMORY[0x1E69CC6D8], MEMORY[0x1E69CC6E0], v12, v13, ObjectType, v8);
}

uint64_t sub_1B4E59030(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  if (qword_1EDB70468 != -1)
  {
    swift_once();
  }

  v6 = sub_1B4F67C54();
  __swift_project_value_buffer(v6, qword_1EDB70470);
  v7._countAndFlagsBits = 0xD000000000000028;
  v7._object = 0x80000001B4F810C0;
  v8._object = 0x80000001B4F81330;
  v8._countAndFlagsBits = 0xD000000000000018;
  Logger.trace(file:function:)(v7, v8);
  v9 = *(v5 + 16);
  v10 = *(v5 + 24);
  ObjectType = swift_getObjectType();
  v18 = 167;
  v17[0] = a1;
  v17[1] = a2;
  v12 = *(v10 + 32);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F5310, &qword_1B4F72750);
  v14 = sub_1B4E2F2A0(&qword_1EDB6DBC0, &qword_1EB8F5310, &qword_1B4F72750);
  v15 = sub_1B4E598F4();
  return v12(&v18, v17, MEMORY[0x1E69E6158], v13, MEMORY[0x1E69CD450], MEMORY[0x1E69CD458], v14, v15, ObjectType, v10);
}

uint64_t sub_1B4E591AC(uint64_t a1)
{
  v3 = *v1;
  if (qword_1EDB70468 != -1)
  {
    swift_once();
  }

  v4 = sub_1B4F67C54();
  __swift_project_value_buffer(v4, qword_1EDB70470);
  v5._countAndFlagsBits = 0xD000000000000028;
  v5._object = 0x80000001B4F810C0;
  v6._object = 0x80000001B4F81350;
  v6._countAndFlagsBits = 0xD000000000000020;
  Logger.trace(file:function:)(v5, v6);
  v7 = *(v3 + 16);
  v8 = *(v3 + 24);
  ObjectType = swift_getObjectType();
  v13 = 172;
  v10 = *(v8 + 16);
  v11 = sub_1B4F66604();
  return v10(&v13, a1, v11, MEMORY[0x1E69CC510], MEMORY[0x1E69CC518], ObjectType, v8);
}

void *sub_1B4E592D0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[2] = a1;
  a4[3] = &protocol witness table for XPCClient;
  a4[4] = &protocol witness table for XPCClient;
  a4[5] = a2;
  a4[6] = a3;
  ObjectType = swift_getObjectType();
  v11 = a1;
  v10 = 17;
  v7 = swift_allocObject();
  swift_weakInit();

  swift_unknownObjectRetain();

  TransportDispatching.register(event:handler:)(&v10, sub_1B4E59A98, v7, ObjectType, &protocol witness table for XPCClient);

  v11 = a1;
  v10 = 18;
  v8 = swift_allocObject();
  swift_weakInit();

  TransportDispatching.register(event:handler:)(&v10, sub_1B4E59A9C, v8, ObjectType, &protocol witness table for XPCClient);

  swift_unknownObjectRelease();
  return a4;
}

void *sub_1B4E59448(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = swift_allocObject();

  return sub_1B4DC74D4(a1, a2, a3, v13, a5, a6, a7);
}

unint64_t sub_1B4E594C8()
{
  result = qword_1EDB70148;
  if (!qword_1EDB70148)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8F52A8, &qword_1B4F72730);
    sub_1B4DC53AC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB70148);
  }

  return result;
}

unint64_t sub_1B4E5954C()
{
  result = qword_1EB8F52B8;
  if (!qword_1EB8F52B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8F52B0, &qword_1B4F72738);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F52B8);
  }

  return result;
}

unint64_t sub_1B4E595D0()
{
  result = qword_1EB8F52C0;
  if (!qword_1EB8F52C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8F52B0, &qword_1B4F72738);
    sub_1B4E599A8(&qword_1EB8F52C8, MEMORY[0x1E69CD200]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F52C0);
  }

  return result;
}

unint64_t sub_1B4E59684()
{
  result = qword_1EB8F52D8;
  if (!qword_1EB8F52D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8F52D0, &qword_1B4F72740);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F52D8);
  }

  return result;
}

unint64_t sub_1B4E59708()
{
  result = qword_1EB8F52E0;
  if (!qword_1EB8F52E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8F52D0, &qword_1B4F72740);
    sub_1B4E599A8(&qword_1EB8F52E8, MEMORY[0x1E69CB4A8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F52E0);
  }

  return result;
}

unint64_t sub_1B4E597BC()
{
  result = qword_1EB8F52F8;
  if (!qword_1EB8F52F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8F52F0, &qword_1B4F72748);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F52F8);
  }

  return result;
}

unint64_t sub_1B4E59840()
{
  result = qword_1EB8F5300;
  if (!qword_1EB8F5300)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8F52F0, &qword_1B4F72748);
    sub_1B4E599A8(&qword_1EB8F5308, MEMORY[0x1E69CC528]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F5300);
  }

  return result;
}

unint64_t sub_1B4E598F4()
{
  result = qword_1EDB6DBB8;
  if (!qword_1EDB6DBB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8F5310, &qword_1B4F72750);
    sub_1B4E599A8(&qword_1EDB70050, MEMORY[0x1E69CC888]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB6DBB8);
  }

  return result;
}

uint64_t sub_1B4E599A8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t HeartRateDeviceConnection.applyingTimestampOffset(_:)()
{
  sub_1B4F66B54();

  return sub_1B4F66B64();
}

uint64_t sub_1B4E59B08()
{
  sub_1B4F66B54();

  return sub_1B4F66B64();
}

uint64_t RemoteBrowsingJournalEntry.property.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for RemoteBrowsingJournalEntry();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8, v5);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B4E59C58(v1, v7);
  return sub_1B4E5AF18(v7, a1, type metadata accessor for RemoteBrowsingJournalProperty);
}

uint64_t type metadata accessor for RemoteBrowsingJournalEntry()
{
  result = qword_1EDB6E700;
  if (!qword_1EDB6E700)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1B4E59C58(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RemoteBrowsingJournalEntry();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B4E59CD4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B4E5BA6C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B4E59D08(uint64_t a1)
{
  v2 = sub_1B4E5A530();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B4E59D44(uint64_t a1)
{
  v2 = sub_1B4E5A530();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B4E59D80(uint64_t a1)
{
  v2 = sub_1B4E5A62C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B4E59DBC(uint64_t a1)
{
  v2 = sub_1B4E5A62C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B4E59DF8(uint64_t a1)
{
  v2 = sub_1B4E5A5D8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B4E59E34(uint64_t a1)
{
  v2 = sub_1B4E5A5D8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B4E59E70(uint64_t a1)
{
  v2 = sub_1B4E5A584();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B4E59EAC(uint64_t a1)
{
  v2 = sub_1B4E5A584();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t RemoteBrowsingJournalEntry.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F5318, &qword_1B4F727C0);
  v57 = *(v2 - 8);
  v58 = v2;
  v3 = *(v57 + 64);
  MEMORY[0x1EEE9AC00](v2, v4);
  v56 = &v49 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F5320, &qword_1B4F727C8);
  v54 = *(v6 - 8);
  v55 = v6;
  v7 = *(v54 + 64);
  MEMORY[0x1EEE9AC00](v6, v8);
  v53 = &v49 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F5328, &qword_1B4F727D0);
  v51 = *(v10 - 8);
  v52 = v10;
  v11 = *(v51 + 64);
  MEMORY[0x1EEE9AC00](v10, v12);
  v50 = &v49 - v13;
  v60 = type metadata accessor for RemoteBrowsingJournalProperty();
  v14 = *(*(v60 - 8) + 64);
  MEMORY[0x1EEE9AC00](v60, v15);
  v49 = &v49 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17, v18);
  v20 = &v49 - v19;
  MEMORY[0x1EEE9AC00](v21, v22);
  v24 = &v49 - v23;
  v25 = type metadata accessor for RemoteBrowsingJournalEntry();
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x1EEE9AC00](v25, v27);
  v29 = &v49 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F5330, &qword_1B4F727D8);
  v30 = *(v61 - 8);
  v31 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v61, v32);
  v34 = &v49 - v33;
  v35 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B4E5A530();
  sub_1B4F68F54();
  sub_1B4E59C58(v59, v29);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v37 = (v30 + 8);
  if (!EnumCaseMultiPayload)
  {
    sub_1B4E5AF18(v29, v24, type metadata accessor for RemoteBrowsingJournalProperty);
    v62 = 0;
    sub_1B4E5A62C();
    v42 = v50;
    v39 = v61;
    sub_1B4F68CB4();
    sub_1B4E5B560(&qword_1EB8F5348, type metadata accessor for RemoteBrowsingJournalProperty);
    v43 = v52;
    sub_1B4F68CE4();
    (*(v51 + 8))(v42, v43);
    v41 = v24;
    goto LABEL_5;
  }

  if (EnumCaseMultiPayload == 1)
  {
    sub_1B4E5AF18(v29, v20, type metadata accessor for RemoteBrowsingJournalProperty);
    v63 = 1;
    sub_1B4E5A5D8();
    v38 = v53;
    v39 = v61;
    sub_1B4F68CB4();
    sub_1B4E5B560(&qword_1EB8F5348, type metadata accessor for RemoteBrowsingJournalProperty);
    v40 = v55;
    sub_1B4F68CE4();
    (*(v54 + 8))(v38, v40);
    v41 = v20;
LABEL_5:
    sub_1B4E5BBE0(v41, type metadata accessor for RemoteBrowsingJournalProperty);
    return (*v37)(v34, v39);
  }

  v45 = v49;
  sub_1B4E5AF18(v29, v49, type metadata accessor for RemoteBrowsingJournalProperty);
  v64 = 2;
  sub_1B4E5A584();
  v46 = v56;
  v47 = v61;
  sub_1B4F68CB4();
  sub_1B4E5B560(&qword_1EB8F5348, type metadata accessor for RemoteBrowsingJournalProperty);
  v48 = v58;
  sub_1B4F68CE4();
  (*(v57 + 8))(v46, v48);
  sub_1B4E5BBE0(v45, type metadata accessor for RemoteBrowsingJournalProperty);
  return (*v37)(v34, v47);
}

unint64_t sub_1B4E5A530()
{
  result = qword_1EB8F5338;
  if (!qword_1EB8F5338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F5338);
  }

  return result;
}

unint64_t sub_1B4E5A584()
{
  result = qword_1EB8F5340;
  if (!qword_1EB8F5340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F5340);
  }

  return result;
}

unint64_t sub_1B4E5A5D8()
{
  result = qword_1EB8F5350;
  if (!qword_1EB8F5350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F5350);
  }

  return result;
}

unint64_t sub_1B4E5A62C()
{
  result = qword_1EB8F5358;
  if (!qword_1EB8F5358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F5358);
  }

  return result;
}

uint64_t RemoteBrowsingJournalEntry.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v83 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F5360, &qword_1B4F727E0);
  v4 = *(v3 - 8);
  v78 = v3;
  v79 = v4;
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3, v6);
  v82 = &v69 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F5368, &qword_1B4F727E8);
  v9 = *(v8 - 8);
  v76 = v8;
  v77 = v9;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8, v11);
  v81 = &v69 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F5370, &qword_1B4F727F0);
  v74 = *(v13 - 8);
  v75 = v13;
  v14 = *(v74 + 64);
  MEMORY[0x1EEE9AC00](v13, v15);
  v80 = &v69 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F5378, &unk_1B4F727F8);
  v84 = *(v17 - 8);
  v85 = v17;
  v18 = *(v84 + 64);
  MEMORY[0x1EEE9AC00](v17, v19);
  v21 = &v69 - v20;
  v22 = type metadata accessor for RemoteBrowsingJournalEntry();
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x1EEE9AC00](v22, v24);
  v26 = &v69 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27, v28);
  v30 = &v69 - v29;
  MEMORY[0x1EEE9AC00](v31, v32);
  v34 = &v69 - v33;
  MEMORY[0x1EEE9AC00](v35, v36);
  v38 = &v69 - v37;
  v40 = a1[3];
  v39 = a1[4];
  v87 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v40);
  sub_1B4E5A530();
  v41 = v86;
  sub_1B4F68F44();
  if (!v41)
  {
    v70 = v30;
    v71 = v34;
    v72 = v26;
    v43 = v80;
    v42 = v81;
    v86 = 0;
    v73 = v22;
    v45 = v82;
    v44 = v83;
    v46 = v85;
    v47 = sub_1B4F68CA4();
    v48 = (2 * *(v47 + 16)) | 1;
    v88 = v47;
    v89 = v47 + 32;
    v90 = 0;
    v91 = v48;
    v49 = sub_1B4E2DC08();
    if (v49 == 3 || v90 != v91 >> 1)
    {
      v53 = sub_1B4F68A04();
      swift_allocError();
      v55 = v54;
      v56 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F47C8, &qword_1B4F6DED0) + 48);
      *v55 = v73;
      sub_1B4F68C64();
      sub_1B4F689F4();
      (*(*(v53 - 8) + 104))(v55, *MEMORY[0x1E69E6AF8], v53);
      swift_willThrow();
    }

    else
    {
      if (v49)
      {
        if (v49 == 1)
        {
          v92 = 1;
          sub_1B4E5A5D8();
          v50 = v86;
          sub_1B4F68C54();
          v51 = v44;
          v52 = v84;
          if (v50)
          {
            goto LABEL_9;
          }

          v86 = v38;
          type metadata accessor for RemoteBrowsingJournalProperty();
          sub_1B4E5B560(&qword_1EB8F5380, type metadata accessor for RemoteBrowsingJournalProperty);
          v66 = v70;
          v67 = v76;
          sub_1B4F68C94();
          (*(v77 + 8))(v42, v67);
          (*(v52 + 8))(v21, v85);
          swift_unknownObjectRelease();
          swift_storeEnumTagMultiPayload();
          v59 = v66;
        }

        else
        {
          v92 = 2;
          sub_1B4E5A584();
          v61 = v45;
          v62 = v86;
          sub_1B4F68C54();
          v63 = v84;
          if (v62)
          {
            goto LABEL_9;
          }

          v51 = v44;
          v86 = v38;
          type metadata accessor for RemoteBrowsingJournalProperty();
          sub_1B4E5B560(&qword_1EB8F5380, type metadata accessor for RemoteBrowsingJournalProperty);
          v64 = v72;
          v65 = v78;
          sub_1B4F68C94();
          (*(v79 + 8))(v61, v65);
          (*(v63 + 8))(v21, v46);
          swift_unknownObjectRelease();
          swift_storeEnumTagMultiPayload();
          v59 = v64;
        }

LABEL_17:
        v68 = v86;
        sub_1B4E5AF18(v59, v86, type metadata accessor for RemoteBrowsingJournalEntry);
        sub_1B4E5AF18(v68, v51, type metadata accessor for RemoteBrowsingJournalEntry);
        return __swift_destroy_boxed_opaque_existential_1Tm(v87);
      }

      v92 = 0;
      sub_1B4E5A62C();
      v58 = v86;
      sub_1B4F68C54();
      if (!v58)
      {
        v86 = v38;
        type metadata accessor for RemoteBrowsingJournalProperty();
        sub_1B4E5B560(&qword_1EB8F5380, type metadata accessor for RemoteBrowsingJournalProperty);
        v59 = v71;
        v60 = v75;
        sub_1B4F68C94();
        (*(v74 + 8))(v43, v60);
        (*(v84 + 8))(v21, v46);
        swift_unknownObjectRelease();
        swift_storeEnumTagMultiPayload();
        v51 = v44;
        goto LABEL_17;
      }
    }

LABEL_9:
    (*(v84 + 8))(v21, v46);
    swift_unknownObjectRelease();
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(v87);
}

uint64_t sub_1B4E5AF18(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t RemoteBrowsingJournalEntry.hash(into:)(__int128 *a1)
{
  v2 = v1;
  v4 = type metadata accessor for RemoteBrowsingJournalProperty();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8, v6);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for RemoteBrowsingJournalEntry();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = &v15 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B4E59C58(v2, v13);
  LODWORD(v2) = swift_getEnumCaseMultiPayload();
  sub_1B4E5AF18(v13, v8, type metadata accessor for RemoteBrowsingJournalProperty);
  MEMORY[0x1B8C82740](v2);
  RemoteBrowsingJournalProperty.hash(into:)(a1);
  return sub_1B4E5BBE0(v8, type metadata accessor for RemoteBrowsingJournalProperty);
}

uint64_t RemoteBrowsingJournalEntry.hashValue.getter()
{
  sub_1B4F68E84();
  RemoteBrowsingJournalEntry.hash(into:)(v1);
  return sub_1B4F68EC4();
}

uint64_t sub_1B4E5B11C()
{
  sub_1B4F68E84();
  RemoteBrowsingJournalEntry.hash(into:)(v1);
  return sub_1B4F68EC4();
}

uint64_t sub_1B4E5B160()
{
  sub_1B4F68E84();
  RemoteBrowsingJournalEntry.hash(into:)(v1);
  return sub_1B4F68EC4();
}

uint64_t _s13SeymourClient26RemoteBrowsingJournalEntryO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RemoteBrowsingJournalProperty();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8, v6);
  v43 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v42 - v10;
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v42 - v14;
  v16 = type metadata accessor for RemoteBrowsingJournalEntry();
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16, v18);
  v20 = &v42 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21, v22);
  v24 = &v42 - v23;
  MEMORY[0x1EEE9AC00](v25, v26);
  v28 = &v42 - v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F53F0, &unk_1B4F72D88);
  v30 = *(*(v29 - 8) + 64);
  MEMORY[0x1EEE9AC00](v29 - 8, v31);
  v33 = &v42 - v32;
  v35 = *(v34 + 56);
  sub_1B4E59C58(a1, &v42 - v32);
  sub_1B4E59C58(a2, &v33[v35]);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_1B4E59C58(v33, v24);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        sub_1B4E5AF18(&v33[v35], v11, type metadata accessor for RemoteBrowsingJournalProperty);
        v37 = _s13SeymourClient29RemoteBrowsingJournalPropertyO2eeoiySbAC_ACtFZ_0(v24, v11);
        sub_1B4E5BBE0(v11, type metadata accessor for RemoteBrowsingJournalProperty);
        v38 = v24;
LABEL_12:
        sub_1B4E5BBE0(v38, type metadata accessor for RemoteBrowsingJournalProperty);
        sub_1B4E5BBE0(v33, type metadata accessor for RemoteBrowsingJournalEntry);
        return v37 & 1;
      }

      v20 = v24;
    }

    else
    {
      sub_1B4E59C58(v33, v20);
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        v39 = &v33[v35];
        v40 = v43;
        sub_1B4E5AF18(v39, v43, type metadata accessor for RemoteBrowsingJournalProperty);
        v37 = _s13SeymourClient29RemoteBrowsingJournalPropertyO2eeoiySbAC_ACtFZ_0(v20, v40);
        sub_1B4E5BBE0(v40, type metadata accessor for RemoteBrowsingJournalProperty);
        v38 = v20;
        goto LABEL_12;
      }
    }
  }

  else
  {
    sub_1B4E59C58(v33, v28);
    if (!swift_getEnumCaseMultiPayload())
    {
      sub_1B4E5AF18(&v33[v35], v15, type metadata accessor for RemoteBrowsingJournalProperty);
      v37 = _s13SeymourClient29RemoteBrowsingJournalPropertyO2eeoiySbAC_ACtFZ_0(v28, v15);
      sub_1B4E5BBE0(v15, type metadata accessor for RemoteBrowsingJournalProperty);
      v38 = v28;
      goto LABEL_12;
    }

    v20 = v28;
  }

  sub_1B4E5BBE0(v20, type metadata accessor for RemoteBrowsingJournalProperty);
  sub_1B4E5BB78(v33);
  v37 = 0;
  return v37 & 1;
}

uint64_t sub_1B4E5B560(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1B4E5B5A8()
{
  result = type metadata accessor for RemoteBrowsingJournalProperty();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_1B4E5B650()
{
  result = qword_1EB8F5390;
  if (!qword_1EB8F5390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F5390);
  }

  return result;
}

unint64_t sub_1B4E5B6A8()
{
  result = qword_1EB8F5398;
  if (!qword_1EB8F5398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F5398);
  }

  return result;
}

unint64_t sub_1B4E5B700()
{
  result = qword_1EB8F53A0;
  if (!qword_1EB8F53A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F53A0);
  }

  return result;
}

unint64_t sub_1B4E5B758()
{
  result = qword_1EB8F53A8;
  if (!qword_1EB8F53A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F53A8);
  }

  return result;
}

unint64_t sub_1B4E5B7B0()
{
  result = qword_1EB8F53B0;
  if (!qword_1EB8F53B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F53B0);
  }

  return result;
}

unint64_t sub_1B4E5B808()
{
  result = qword_1EB8F53B8;
  if (!qword_1EB8F53B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F53B8);
  }

  return result;
}

unint64_t sub_1B4E5B860()
{
  result = qword_1EB8F53C0;
  if (!qword_1EB8F53C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F53C0);
  }

  return result;
}

unint64_t sub_1B4E5B8B8()
{
  result = qword_1EB8F53C8;
  if (!qword_1EB8F53C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F53C8);
  }

  return result;
}

unint64_t sub_1B4E5B910()
{
  result = qword_1EB8F53D0;
  if (!qword_1EB8F53D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F53D0);
  }

  return result;
}

unint64_t sub_1B4E5B968()
{
  result = qword_1EB8F53D8;
  if (!qword_1EB8F53D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F53D8);
  }

  return result;
}

unint64_t sub_1B4E5B9C0()
{
  result = qword_1EB8F53E0;
  if (!qword_1EB8F53E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F53E0);
  }

  return result;
}

unint64_t sub_1B4E5BA18()
{
  result = qword_1EB8F53E8;
  if (!qword_1EB8F53E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F53E8);
  }

  return result;
}

uint64_t sub_1B4E5BA6C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x747265736E69 && a2 == 0xE600000000000000;
  if (v4 || (sub_1B4F68D54() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x65766F6D6572 && a2 == 0xE600000000000000 || (sub_1B4F68D54() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x657461647075 && a2 == 0xE600000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_1B4F68D54();

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

uint64_t sub_1B4E5BB78(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F53F0, &unk_1B4F72D88);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B4E5BBE0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t AnalyticsErrorTransformable<>.errorCode.getter(uint64_t a1)
{
  v2 = *(*(a1 - 8) + 64);
  v3 = MEMORY[0x1EEE9AC00](a1, v1);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v3);
  return sub_1B4F67F94();
}

uint64_t AnalyticsErrorTransformable<>.errorDomain.getter()
{
  swift_getDynamicType();
  swift_getMetatypeMetadata();
  return sub_1B4F67F94();
}

uint64_t sub_1B4E5BEE0(uint64_t a1)
{
  v2 = *(*(a1 - 8) + 64);
  v3 = MEMORY[0x1EEE9AC00](a1, v1);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v3);
  return sub_1B4F67F94();
}

uint64_t PersonalizationInferenceRequestHashes.init(canvas:catalogData:userAwardData:userData:userHistoryData:userLibraryData:userOnboardingData:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v109 = a7;
  v110 = a6;
  v111 = a5;
  v112 = a4;
  v108 = sub_1B4F67E24();
  v13 = *(v108 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v108, v15);
  v107 = v84 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1B4F664F4();
  v18 = sub_1B4F66E04();
  if (v8)
  {

LABEL_3:
    v20 = v111;
    v30 = sub_1B4F67434();
    (*(*(v30 - 8) + 8))(v109, v30);
    v31 = sub_1B4F67264();
    (*(*(v31 - 8) + 8))(v110, v31);
    v32 = sub_1B4F67254();
    (*(*(v32 - 8) + 8))(v20, v32);
    v33 = sub_1B4F668E4();
    (*(*(v33 - 8) + 8))(v112, v33);
    v34 = sub_1B4F66EA4();
    (*(*(v34 - 8) + 8))(a2, v34);
    return (*(*(v17 - 8) + 8))(a1, v17);
  }

  v21 = v18;
  v22 = v19;
  v103 = a3;
  v104 = v17;
  v100 = a8;
  v106 = a1;
  sub_1B4DD3014(v18, v19);
  v23 = v107;
  sub_1B4E5D3A0(v21, v22, v21, v22, 100000, v107);
  v113 = sub_1B4E5C9F8(v23);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F52A8, &qword_1B4F72730);
  v101 = sub_1B4E5D5B8();
  v102 = v24;
  v99 = sub_1B4F67F34();
  v26 = v25;
  sub_1B4DD2B70(v21, v22);
  v27 = *(v13 + 8);
  v27(v23, v108);

  v28 = sub_1B4F66EA4();
  v105 = a2;
  v29 = sub_1B4F66E04();
  v96 = v26;
  v97 = v13 + 8;
  v36 = v29;
  v98 = v27;
  v38 = v37;
  sub_1B4DD3014(v29, v37);
  v39 = v107;
  sub_1B4E5D3A0(v36, v38, v36, v38, 100000, v107);
  v113 = sub_1B4E5C9F8(v39);
  v95 = sub_1B4F67F34();
  v41 = v40;
  v42 = v38;
  v43 = v98;
  sub_1B4DD2B70(v36, v42);
  v43(v39, v108);

  v113 = v103;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F5490, &qword_1B4F730D8);
  sub_1B4E5D61C();
  v44 = sub_1B4F671D4();
  v17 = v104;
  v94 = v41;
  v45 = v44;
  v47 = v46;
  sub_1B4DD3014(v44, v46);
  v48 = v107;
  sub_1B4E5D3A0(v45, v47, v45, v47, 100000, v107);
  v49 = sub_1B4E5C9F8(v48);
  v93 = 0;
  v113 = v49;
  v92 = sub_1B4F67F34();
  v51 = v50;
  sub_1B4DD2B70(v45, v47);
  v98(v48, v108);

  v52 = sub_1B4F668E4();
  v53 = v93;
  v54 = sub_1B4F66E04();
  if (v53)
  {

    a2 = v105;
    a1 = v106;
    goto LABEL_3;
  }

  v91 = v52;
  v103 = v51;
  v93 = v28;
  v56 = v54;
  v57 = v55;
  sub_1B4DD3014(v54, v55);
  v58 = v107;
  sub_1B4E5D3A0(v56, v57, v56, v57, 100000, v107);
  v113 = sub_1B4E5C9F8(v58);
  v90 = sub_1B4F67F34();
  v60 = v59;
  sub_1B4DD2B70(v56, v57);
  v98(v58, v108);

  v61 = sub_1B4F67254();
  v62 = sub_1B4F66E04();
  v88 = v61;
  v89 = v60;
  v63 = v62;
  v65 = v64;
  sub_1B4DD3014(v62, v64);
  v66 = v107;
  sub_1B4E5D3A0(v63, v65, v63, v65, 100000, v107);
  v113 = sub_1B4E5C9F8(v66);
  v67 = sub_1B4F67F34();
  v69 = v68;
  sub_1B4DD2B70(v63, v65);
  v70 = v98;
  v98(v66, v108);

  v71 = sub_1B4F67264();
  v72 = sub_1B4F66E04();
  v84[2] = v67;
  v87 = v69;
  v85 = v71;
  v73 = v72;
  v74 = v70;
  v76 = v75;
  sub_1B4DD3014(v72, v75);
  v77 = v107;
  sub_1B4E5D3A0(v73, v76, v73, v76, 100000, v107);
  v113 = sub_1B4E5C9F8(v77);
  v84[1] = sub_1B4F67F34();
  v86 = v78;
  sub_1B4DD2B70(v73, v76);
  v74(v77, v108);

  v79 = sub_1B4F67434();
  v80 = sub_1B4F66E04();
  v82 = v81;
  sub_1B4DD3014(v80, v81);
  v83 = v107;
  sub_1B4E5D3A0(v80, v82, v80, v82, 100000, v107);
  v113 = sub_1B4E5C9F8(v83);
  v102 = sub_1B4F67F34();
  sub_1B4DD2B70(v80, v82);
  v98(v83, v108);

  sub_1B4F67554();
  (*(*(v79 - 8) + 8))(v109, v79);
  (*(*(v85 - 8) + 8))(v110);
  (*(*(v88 - 8) + 8))(v111);
  (*(*(v91 - 8) + 8))(v112);
  (*(*(v93 - 8) + 8))(v105);
  return (*(*(v17 - 8) + 8))(v106, v17);
}

uint64_t sub_1B4E5C9F8(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1B4F67E24();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B4E5D698(&qword_1EDB6DC00, MEMORY[0x1E69666B0]);
  v10 = sub_1B4F680D4();
  v40 = MEMORY[0x1E69E7CC0];
  sub_1B4E257A4(0, v10 & ~(v10 >> 63), 0);
  v11 = v40;
  (*(v5 + 16))(v9, a1, v4);
  result = sub_1B4F680C4();
  if ((v10 & 0x8000000000000000) == 0)
  {
    v13 = v39;
    if (v10)
    {
      v35 = v1;
      v14 = v38;
      *&v37 = *(v38 + 16);
      v36 = xmmword_1B4F6CF50;
      v15 = v39;
      while (v37 != v15)
      {
        if (v13 < 0)
        {
          goto LABEL_21;
        }

        if (v15 >= *(v14 + 16))
        {
          goto LABEL_22;
        }

        v16 = *(v14 + 32 + v15);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F5498, qword_1B4F730E0);
        v17 = swift_allocObject();
        *(v17 + 16) = v36;
        *(v17 + 56) = MEMORY[0x1E69E7508];
        *(v17 + 64) = MEMORY[0x1E69E7558];
        *(v17 + 32) = v16;
        result = sub_1B4F67F84();
        v40 = v11;
        v20 = *(v11 + 16);
        v19 = *(v11 + 24);
        if (v20 >= v19 >> 1)
        {
          v34 = result;
          v22 = v18;
          sub_1B4E257A4((v19 > 1), v20 + 1, 1);
          v18 = v22;
          result = v34;
          v11 = v40;
        }

        *(v11 + 16) = v20 + 1;
        v21 = v11 + 16 * v20;
        *(v21 + 32) = result;
        *(v21 + 40) = v18;
        ++v15;
        if (!--v10)
        {
          v39 = v15;
          v2 = v35;
          goto LABEL_12;
        }
      }

      __break(1u);
LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
    }

    else
    {
      v15 = v39;
LABEL_12:
      v23 = v38;
      v24 = *(v38 + 16);
      if (v15 == v24)
      {
LABEL_13:

        return v11;
      }

      v37 = xmmword_1B4F6CF50;
      while (v15 < v24)
      {
        v25 = v15 + 1;
        v26 = *(v23 + 32 + v15);
        v39 = v25;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F5498, qword_1B4F730E0);
        v27 = swift_allocObject();
        *(v27 + 16) = v37;
        *(v27 + 56) = MEMORY[0x1E69E7508];
        *(v27 + 64) = MEMORY[0x1E69E7558];
        *(v27 + 32) = v26;
        result = sub_1B4F67F84();
        v40 = v11;
        v30 = *(v11 + 16);
        v29 = *(v11 + 24);
        if (v30 >= v29 >> 1)
        {
          *&v36 = result;
          v32 = v2;
          v33 = v28;
          sub_1B4E257A4((v29 > 1), v30 + 1, 1);
          v28 = v33;
          v2 = v32;
          result = v36;
          v11 = v40;
        }

        *(v11 + 16) = v30 + 1;
        v31 = v11 + 16 * v30;
        *(v31 + 32) = result;
        *(v31 + 40) = v28;
        v24 = *(v23 + 16);
        v15 = v39;
        if (v39 == v24)
        {
          goto LABEL_13;
        }
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1B4E5CDA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v55 = a4;
  v53 = a2;
  v58[4] = *MEMORY[0x1E69E9840];
  v48 = sub_1B4F64854();
  v51 = *(v48 - 8);
  v9 = *(v51 + 64);
  MEMORY[0x1EEE9AC00](v48, v10);
  v12 = &v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1B4F67E14();
  v46 = *(v13 - 8);
  v14 = *(v46 + 64);
  MEMORY[0x1EEE9AC00](v13, v15);
  v17 = &v45 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1B4E5D698(qword_1EDB6DC08, MEMORY[0x1E6966688]);
  sub_1B4F67E04();
  v54 = a1;
  if (a1)
  {
    v56 = v17;
    v57 = v18;
    v19 = a3 >> 62;
    v45 = v5;
    if ((a3 >> 62) > 1)
    {
      v22 = v48;
      v23 = a5;
      if (v19 == 2)
      {
        v25 = *(v53 + 16);
        v24 = *(v53 + 24);
        v26 = __OFSUB__(v24, v25);
        v20 = v24 - v25;
        if (v26)
        {
          goto LABEL_46;
        }

        if (v20 >= 1)
        {
LABEL_13:
          v27 = 0;
          LODWORD(v53) = *MEMORY[0x1E6969010];
          v28 = v51;
          v51 += 8;
          v52 = (v28 + 104);
          v47 = v23;
          v49 = v20;
          v50 = v13;
          while (1)
          {
            if (__OFSUB__(v20, v27))
            {
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
              __break(1u);
LABEL_47:
              __break(1u);
            }

            v29 = v20 - v27 >= v55 ? v55 : v20 - v27;
            (*v52)(v12, v53, v22);
            sub_1B4F64844();
            if (!v29)
            {
              break;
            }

            v30 = sub_1B4F64784();
            v31 = *(v30 + 48);
            v32 = *(v30 + 52);
            swift_allocObject();

            v33 = sub_1B4F64734();
            v34 = sub_1B4F64774();
            *v35 |= 0x8000000000000000;
            v34(v58, 0);
            v36 = sub_1B4EF9DA8(v33, v29);
            v38 = v37;

            (*v51)(v12, v22);
            v39 = v38 >> 62;
            if ((v38 >> 62) > 1)
            {
              if (v39 == 2)
              {
                v41 = *(v36 + 16);
                v42 = *(v36 + 24);

                if (sub_1B4F64744() && __OFSUB__(v41, sub_1B4F64764()))
                {
                  goto LABEL_44;
                }

                if (__OFSUB__(v42, v41))
                {
                  goto LABEL_43;
                }

LABEL_36:
                sub_1B4F64754();
                v13 = v50;
                sub_1B4F67DD4();
                sub_1B4DD2B70(v36, v38);
                sub_1B4DD2B70(v36, v38);
                v22 = v48;
                v26 = __OFADD__(v27, v29);
                v27 += v29;
                if (v26)
                {
                  goto LABEL_41;
                }

                goto LABEL_37;
              }

              goto LABEL_29;
            }

            if (v39)
            {
              if (v36 >> 32 < v36)
              {
                goto LABEL_42;
              }

              if (sub_1B4F64744() && __OFSUB__(v36, sub_1B4F64764()))
              {
                goto LABEL_45;
              }

              goto LABEL_36;
            }

            v58[0] = v36;
            LOWORD(v58[1]) = v38;
            BYTE2(v58[1]) = BYTE2(v38);
            BYTE3(v58[1]) = BYTE3(v38);
            BYTE4(v58[1]) = BYTE4(v38);
            BYTE5(v58[1]) = BYTE5(v38);
            v13 = v50;
LABEL_30:
            sub_1B4F67DD4();
            sub_1B4DD2B70(v36, v38);
            sub_1B4DD2B70(v36, v38);
            v26 = __OFADD__(v27, v29);
            v27 += v29;
            if (v26)
            {
              goto LABEL_41;
            }

LABEL_37:
            v20 = v49;
            if (v27 >= v49)
            {
              goto LABEL_38;
            }
          }

          v40 = sub_1B4F64844();
          v40(v54 + v27, 0);

          (*v51)(v12, v22);
          v36 = 0;
          v38 = 0xC000000000000000;
LABEL_29:
          v13 = v50;
          memset(v58, 0, 14);
          goto LABEL_30;
        }
      }
    }

    else
    {
      if (v19)
      {
        if (__OFSUB__(HIDWORD(v53), v53))
        {
          goto LABEL_47;
        }

        v20 = HIDWORD(v53) - v53;
      }

      else
      {
        v20 = BYTE6(a3);
      }

      v22 = v48;
      v23 = a5;
      if (v20 >= 1)
      {
        goto LABEL_13;
      }
    }

LABEL_38:
    v21 = v56;
    sub_1B4F67DE4();
  }

  else
  {
    v21 = v17;
    sub_1B4F67DE4();
  }

  result = (*(v46 + 8))(v21, v13);
  v44 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1B4E5D3A0@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v6 = a4;
  v7 = a3;
  v20[2] = *MEMORY[0x1E69E9840];
  v8 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v8 != 2)
    {
      memset(v20, 0, 14);
      v9 = v20;
      goto LABEL_16;
    }

    v10 = a6;
    v11 = a5;
    v13 = *(a1 + 16);
    v12 = *(a1 + 24);
    v14 = sub_1B4F64744();
    if (v14)
    {
      v15 = sub_1B4F64764();
      if (__OFSUB__(v13, v15))
      {
LABEL_19:
        __break(1u);
        goto LABEL_20;
      }

      v14 += v13 - v15;
    }

    if (!__OFSUB__(v12, v13))
    {
      goto LABEL_14;
    }

LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (v8)
  {
    v16 = a1;
    if (a1 >> 32 >= a1)
    {
      v10 = a6;
      v11 = a5;
      v14 = sub_1B4F64744();
      if (!v14)
      {
LABEL_14:
        sub_1B4F64754();
        a6 = v10;
        v9 = v14;
        a3 = v7;
        a4 = v6;
        a5 = v11;
        goto LABEL_16;
      }

      v17 = sub_1B4F64764();
      if (!__OFSUB__(v16, v17))
      {
        v14 += v16 - v17;
        goto LABEL_14;
      }

LABEL_20:
      __break(1u);
    }

    __break(1u);
    goto LABEL_18;
  }

  v20[0] = a1;
  LOWORD(v20[1]) = a2;
  BYTE2(v20[1]) = BYTE2(a2);
  BYTE3(v20[1]) = BYTE3(a2);
  BYTE4(v20[1]) = BYTE4(a2);
  BYTE5(v20[1]) = BYTE5(a2);
  v9 = v20;
LABEL_16:
  sub_1B4E5CDA0(v9, a3, a4, a5, a6);
  result = sub_1B4DD2B70(v7, v6);
  v19 = *MEMORY[0x1E69E9840];
  return result;
}

unint64_t sub_1B4E5D5B8()
{
  result = qword_1EDB6DB98;
  if (!qword_1EDB6DB98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8F52A8, &qword_1B4F72730);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB6DB98);
  }

  return result;
}

unint64_t sub_1B4E5D61C()
{
  result = qword_1EDB6DBA0;
  if (!qword_1EDB6DBA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8F5490, &qword_1B4F730D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB6DBA0);
  }

  return result;
}

uint64_t sub_1B4E5D698(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t ServiceSubscription.dictionary()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F54A0, &qword_1B4F730F8);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8, v2);
  v111 = &v107 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = &v107 - v6;
  v8 = sub_1B4F64964();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8, v11);
  v107 = &v107 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v14);
  v108 = &v107 - v15;
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = &v107 - v18;
  v20 = sub_1B4E2BEAC(MEMORY[0x1E69E7CC0]);
  *&v116 = 0xD000000000000012;
  *(&v116 + 1) = 0x80000001B4F813B0;
  sub_1B4F68954();
  v21 = sub_1B4F66244();
  v22 = MEMORY[0x1E69E7360];
  v117 = MEMORY[0x1E69E7360];
  *&v116 = v21;
  sub_1B4E2C940(&v116, v115);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v114 = v20;
  sub_1B4E5E6C8(v115, v118, isUniquelyReferenced_nonNull_native);
  sub_1B4DF4850(v118);
  v24 = v114;
  *&v116 = 0xD000000000000018;
  *(&v116 + 1) = 0x80000001B4F813D0;
  v25 = v9;
  sub_1B4F68954();
  v26 = sub_1B4F662B4();
  v117 = v22;
  *&v116 = v26;
  sub_1B4E2C940(&v116, v115);
  v27 = swift_isUniquelyReferenced_nonNull_native();
  v114 = v24;
  sub_1B4E5E6C8(v115, v118, v27);
  sub_1B4DF4850(v118);
  v28 = v114;
  sub_1B4F66234();
  v29 = *(v9 + 48);
  v113 = v8;
  v109 = v29;
  v110 = v9 + 48;
  v30 = v29(v7, 1, v8);
  v31 = MEMORY[0x1E69E63B0];
  v112 = v25;
  if (v30 == 1)
  {
    sub_1B4E5ECFC(v7);
  }

  else
  {
    v32 = v113;
    (*(v25 + 32))(v19, v7, v113);
    *&v116 = 0xD000000000000013;
    *(&v116 + 1) = 0x80000001B4F81590;
    sub_1B4F68954();
    sub_1B4F64924();
    sub_1B4F684A4();
    v117 = v31;
    *&v116 = v33;
    sub_1B4E2C940(&v116, v115);
    v34 = swift_isUniquelyReferenced_nonNull_native();
    v114 = v28;
    sub_1B4E5E6C8(v115, v118, v34);
    sub_1B4DF4850(v118);
    v28 = v114;
    (*(v25 + 8))(v19, v32);
  }

  v35 = sub_1B4F662C4();
  if ((v36 & 1) == 0)
  {
    v37 = v35;
    *&v116 = 0xD00000000000001DLL;
    *(&v116 + 1) = 0x80000001B4F81570;
    sub_1B4F68954();
    v117 = MEMORY[0x1E69E7360];
    *&v116 = v37;
    sub_1B4E2C940(&v116, v115);
    v38 = swift_isUniquelyReferenced_nonNull_native();
    v114 = v28;
    sub_1B4E5E6C8(v115, v118, v38);
    sub_1B4DF4850(v118);
    v28 = v114;
  }

  v39 = sub_1B4F662F4();
  if (v40)
  {
    v41 = v31;
  }

  else
  {
    v42 = v39;
    *&v116 = 0xD00000000000001FLL;
    *(&v116 + 1) = 0x80000001B4F81550;
    sub_1B4F68954();
    v41 = v31;
    v117 = v31;
    *&v116 = v42;
    sub_1B4E2C940(&v116, v115);
    v43 = swift_isUniquelyReferenced_nonNull_native();
    v114 = v28;
    sub_1B4E5E6C8(v115, v118, v43);
    sub_1B4DF4850(v118);
    v28 = v114;
  }

  *&v116 = 0xD00000000000001BLL;
  *(&v116 + 1) = 0x80000001B4F813F0;
  v44 = MEMORY[0x1E69E6158];
  sub_1B4F68954();
  v45 = sub_1B4F66254();
  v46 = MEMORY[0x1E69E6370];
  v117 = MEMORY[0x1E69E6370];
  LOBYTE(v116) = v45 & 1;
  sub_1B4E2C940(&v116, v115);
  v47 = swift_isUniquelyReferenced_nonNull_native();
  v114 = v28;
  sub_1B4E5E6C8(v115, v118, v47);
  sub_1B4DF4850(v118);
  v48 = v114;
  *&v116 = 0xD000000000000017;
  *(&v116 + 1) = 0x80000001B4F81410;
  sub_1B4F68954();
  v49 = sub_1B4F66334();
  v117 = v46;
  LOBYTE(v116) = v49 & 1;
  sub_1B4E2C940(&v116, v115);
  v50 = swift_isUniquelyReferenced_nonNull_native();
  v114 = v48;
  sub_1B4E5E6C8(v115, v118, v50);
  sub_1B4DF4850(v118);
  v51 = v114;
  *&v116 = 0xD000000000000018;
  *(&v116 + 1) = 0x80000001B4F81430;
  sub_1B4F68954();
  v52 = v108;
  sub_1B4F64954();
  v53 = ServiceSubscription.isSubscribed(date:)();
  v108 = *(v112 + 8);
  (v108)(v52, v113);
  v117 = v46;
  LOBYTE(v116) = v53;
  sub_1B4E2C940(&v116, v115);
  v54 = swift_isUniquelyReferenced_nonNull_native();
  v114 = v51;
  sub_1B4E5E6C8(v115, v118, v54);
  sub_1B4DF4850(v118);
  v55 = v114;
  v56 = sub_1B4F66324();
  if (v57)
  {
    v58 = v56;
    v59 = v57;
    *&v116 = 0xD000000000000014;
    *(&v116 + 1) = 0x80000001B4F81530;
    sub_1B4F68954();
    v117 = v44;
    *&v116 = v58;
    *(&v116 + 1) = v59;
    sub_1B4E2C940(&v116, v115);
    v60 = swift_isUniquelyReferenced_nonNull_native();
    v114 = v55;
    sub_1B4E5E6C8(v115, v118, v60);
    sub_1B4DF4850(v118);
    v55 = v114;
  }

  v61 = sub_1B4F66274();
  v63 = v41;
  if (v62)
  {
    v64 = v61;
    v65 = v62;
    v66 = HIBYTE(v62) & 0xF;
    if ((v62 & 0x2000000000000000) == 0)
    {
      v66 = v61 & 0xFFFFFFFFFFFFLL;
    }

    if (v66)
    {
      *&v116 = 0xD000000000000017;
      *(&v116 + 1) = 0x80000001B4F81510;
      sub_1B4F68954();
      v117 = v44;
      *&v116 = v64;
      *(&v116 + 1) = v65;
      sub_1B4E2C940(&v116, v115);
      v67 = swift_isUniquelyReferenced_nonNull_native();
      v114 = v55;
      sub_1B4E5E6C8(v115, v118, v67);
      sub_1B4DF4850(v118);
      v55 = v114;
    }

    else
    {
    }
  }

  v68 = sub_1B4F662E4();
  v69 = v111;
  if ((v70 & 1) == 0)
  {
    v71 = v68;
    *&v116 = 0xD00000000000001BLL;
    *(&v116 + 1) = 0x80000001B4F814F0;
    sub_1B4F68954();
    v117 = MEMORY[0x1E69E7360];
    *&v116 = v71;
    sub_1B4E2C940(&v116, v115);
    v72 = swift_isUniquelyReferenced_nonNull_native();
    v114 = v55;
    sub_1B4E5E6C8(v115, v118, v72);
    sub_1B4DF4850(v118);
    v55 = v114;
  }

  v73 = sub_1B4F662A4();
  if ((v74 & 1) == 0)
  {
    v75 = v73;
    *&v116 = 0xD00000000000001CLL;
    *(&v116 + 1) = 0x80000001B4F814D0;
    sub_1B4F68954();
    v117 = v41;
    *&v116 = v75;
    sub_1B4E2C940(&v116, v115);
    v76 = swift_isUniquelyReferenced_nonNull_native();
    v114 = v55;
    sub_1B4E5E6C8(v115, v118, v76);
    sub_1B4DF4850(v118);
    v55 = v114;
  }

  v77 = sub_1B4F66294();
  if ((v78 & 1) == 0)
  {
    v79 = v77;
    *&v116 = 0xD000000000000011;
    *(&v116 + 1) = 0x80000001B4F814B0;
    sub_1B4F68954();
    v117 = MEMORY[0x1E69E7360];
    *&v116 = v79;
    sub_1B4E2C940(&v116, v115);
    v80 = swift_isUniquelyReferenced_nonNull_native();
    v114 = v55;
    sub_1B4E5E6C8(v115, v118, v80);
    sub_1B4DF4850(v118);
    v55 = v114;
  }

  v81 = sub_1B4F66304();
  if ((v82 & 1) == 0)
  {
    v83 = v81;
    *&v116 = 0xD00000000000001FLL;
    *(&v116 + 1) = 0x80000001B4F81490;
    sub_1B4F68954();
    v117 = MEMORY[0x1E69E7360];
    *&v116 = v83;
    sub_1B4E2C940(&v116, v115);
    v84 = swift_isUniquelyReferenced_nonNull_native();
    v114 = v55;
    sub_1B4E5E6C8(v115, v118, v84);
    sub_1B4DF4850(v118);
    v55 = v114;
  }

  sub_1B4F66344();
  if (v109(v69, 1, v113) == 1)
  {
    sub_1B4E5ECFC(v69);
  }

  else
  {
    v85 = v113;
    v86 = v44;
    v87 = v107;
    (*(v112 + 32))(v107, v69, v113);
    *&v116 = 0xD000000000000015;
    *(&v116 + 1) = 0x80000001B4F81470;
    sub_1B4F68954();
    sub_1B4F64924();
    sub_1B4F684A4();
    v117 = v63;
    *&v116 = v88;
    sub_1B4E2C940(&v116, v115);
    v89 = swift_isUniquelyReferenced_nonNull_native();
    v114 = v55;
    sub_1B4E5E6C8(v115, v118, v89);
    sub_1B4DF4850(v118);
    v55 = v114;
    v90 = v87;
    v44 = v86;
    (v108)(v90, v85);
  }

  v91 = sub_1B4F662D4();
  if (v92)
  {
    v93 = v91;
    v94 = v92;
    v95 = HIBYTE(v92) & 0xF;
    if ((v92 & 0x2000000000000000) == 0)
    {
      v95 = v91 & 0xFFFFFFFFFFFFLL;
    }

    if (v95)
    {
      *&v116 = 0xD00000000000001ELL;
      *(&v116 + 1) = 0x80000001B4F81450;
      sub_1B4F68954();
      v117 = v44;
      *&v116 = v93;
      *(&v116 + 1) = v94;
      sub_1B4E2C940(&v116, v115);
      v96 = swift_isUniquelyReferenced_nonNull_native();
      v114 = v55;
      sub_1B4E5E6C8(v115, v118, v96);
      sub_1B4DF4850(v118);
      v55 = v114;
    }

    else
    {
    }
  }

  if (qword_1EDB703E0 != -1)
  {
    swift_once();
  }

  v97 = sub_1B4F67C54();
  __swift_project_value_buffer(v97, qword_1EDB703E8);
  v98 = sub_1B4F67C34();
  v99 = sub_1B4F685B4();
  if (os_log_type_enabled(v98, v99))
  {
    v100 = swift_slowAlloc();
    v101 = swift_slowAlloc();
    v118[0] = v101;
    *v100 = 136315138;

    v102 = sub_1B4F67F04();
    v104 = v103;

    v105 = sub_1B4DC4F88(v102, v104, v118);

    *(v100 + 4) = v105;
    _os_log_impl(&dword_1B4DC2000, v98, v99, "Metric subscription fields generated: %s", v100, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v101);
    MEMORY[0x1B8C831D0](v101, -1, -1);
    MEMORY[0x1B8C831D0](v100, -1, -1);
  }

  return v55;
}

uint64_t sub_1B4E5E444(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  result = sub_1B4DF4344(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_14;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = result;
      sub_1B4E281EC();
      result = v19;
      goto LABEL_8;
    }

    sub_1B4E26064(v16, a4 & 1);
    v20 = *v5;
    result = sub_1B4DF4344(a2, a3);
    if ((v17 & 1) != (v21 & 1))
    {
LABEL_14:
      result = sub_1B4F68DB4();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v22 = *v5;
  if (v17)
  {
    *(v22[7] + 8 * result) = a1;
  }

  else
  {
    sub_1B4F0CD3C(result, a2, a3, a1, v22);
  }

  return result;
}

uint64_t sub_1B4E5E574(__int128 *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1B4DF4344(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_1B4E28BB4();
      v11 = v19;
      goto LABEL_8;
    }

    sub_1B4E26F14(v16, a4 & 1);
    v20 = *v5;
    v11 = sub_1B4DF4344(a2, a3);
    if ((v17 & 1) != (v21 & 1))
    {
LABEL_16:
      result = sub_1B4F68DB4();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v22 = *v5;
  if (v17)
  {
    v23 = (v22[7] + 40 * v11);
    __swift_destroy_boxed_opaque_existential_1Tm(v23);

    return sub_1B4DC933C(a1, v23);
  }

  else
  {
    sub_1B4F0CD84(v11, a2, a3, a1, v22);
  }
}

_OWORD *sub_1B4E5E6C8(_OWORD *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = sub_1B4DF4440(a2);
  v11 = *(v8 + 16);
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_15;
  }

  v14 = v9;
  v15 = *(v8 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      sub_1B4E28EB8();
      goto LABEL_7;
    }

    sub_1B4E271D8(v13, a3 & 1);
    v19 = *v4;
    v20 = sub_1B4DF4440(a2);
    if ((v14 & 1) == (v21 & 1))
    {
      v10 = v20;
      v16 = *v4;
      if (v14)
      {
        goto LABEL_8;
      }

LABEL_13:
      sub_1B4DF47F4(a2, v22);
      return sub_1B4F0CDF4(v10, v22, a1, v16);
    }

LABEL_15:
    result = sub_1B4F68DB4();
    __break(1u);
    return result;
  }

LABEL_7:
  v16 = *v4;
  if ((v14 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v17 = (v16[7] + 32 * v10);
  __swift_destroy_boxed_opaque_existential_1Tm(v17);

  return sub_1B4E2C940(a1, v17);
}

uint64_t sub_1B4E5E814(uint64_t a1, uint64_t a2, char a3, double a4)
{
  v5 = v4;
  v10 = *v4;
  result = sub_1B4DF4344(a1, a2);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_14;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a3 & 1) == 0)
  {
    if (v18 >= v16 && (a3 & 1) == 0)
    {
      v19 = result;
      sub_1B4E29324();
      result = v19;
      goto LABEL_8;
    }

    sub_1B4E279C0(v16, a3 & 1);
    v20 = *v5;
    result = sub_1B4DF4344(a1, a2);
    if ((v17 & 1) != (v21 & 1))
    {
LABEL_14:
      result = sub_1B4F68DB4();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v22 = *v5;
  if (v17)
  {
    *(v22[7] + 8 * result) = a4;
  }

  else
  {
    sub_1B4F0CE70(result, a1, a2, v22, a4);
  }

  return result;
}

_OWORD *sub_1B4E5E93C(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1B4DF4344(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_1B4E29614();
      v11 = v19;
      goto LABEL_8;
    }

    sub_1B4E27F34(v16, a4 & 1);
    v20 = *v5;
    v11 = sub_1B4DF4344(a2, a3);
    if ((v17 & 1) != (v21 & 1))
    {
LABEL_16:
      result = sub_1B4F68DB4();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v22 = *v5;
  if (v17)
  {
    v23 = (v22[7] + 32 * v11);
    __swift_destroy_boxed_opaque_existential_1Tm(v23);

    return sub_1B4E2C940(a1, v23);
  }

  else
  {
    sub_1B4F0CEB8(v11, a2, a3, a1, v22);
  }
}

unint64_t sub_1B4E5EA8C(uint64_t a1, uint64_t a2, __int16 a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1B4DCE3F0(a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_1B4E2905C();
      v11 = v19;
      goto LABEL_8;
    }

    sub_1B4E27490(v16, a4 & 1);
    v20 = *v5;
    v11 = sub_1B4DCE3F0(a3);
    if ((v17 & 1) != (v21 & 1))
    {
LABEL_16:
      result = sub_1B4F68DB4();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v22 = *v5;
  if (v17)
  {
    v23 = (v22[7] + 16 * v11);
    v24 = v23[1];
    *v23 = a1;
    v23[1] = a2;
  }

  else
  {

    return sub_1B4F0CF24(v11, a3, a1, a2, v22);
  }
}

unint64_t sub_1B4E5EBC4(uint64_t a1, uint64_t a2, char a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1B4DC51CC(a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_1B4E291C0();
      v11 = v19;
      goto LABEL_8;
    }

    sub_1B4E27728(v16, a4 & 1);
    v20 = *v5;
    v11 = sub_1B4DC51CC(a3);
    if ((v17 & 1) != (v21 & 1))
    {
LABEL_16:
      result = sub_1B4F68DB4();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v22 = *v5;
  if (v17)
  {
    v23 = (v22[7] + 16 * v11);
    v24 = v23[1];
    *v23 = a1;
    v23[1] = a2;
  }

  else
  {

    return sub_1B4F0CF6C(v11, a3, a1, a2, v22);
  }
}

uint64_t sub_1B4E5ECFC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F54A0, &qword_1B4F730F8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t MultiUserBeginActivityRequested.activity.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1B4F65EF4();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t MultiUserBeginActivityRequested.init(activity:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1B4F65EF4();
  v5 = *(*(v4 - 8) + 32);

  return v5(a2, a1, v4);
}

uint64_t type metadata accessor for MultiUserBeginActivityRequested()
{
  result = qword_1EDB6E310;
  if (!qword_1EDB6E310)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

BOOL StringProtocol.isEmptyOrWhiteSpace.getter()
{
  v0 = sub_1B4F64634();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0, v3);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B4F64624();
  v6 = sub_1B4F68854();
  v8 = v7;
  (*(v1 + 8))(v5, v0);

  v9 = HIBYTE(v8) & 0xF;
  if ((v8 & 0x2000000000000000) == 0)
  {
    v9 = v6 & 0xFFFFFFFFFFFFLL;
  }

  return v9 == 0;
}

BOOL Optional<A>.isEmptyOrWhiteSpace.getter(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4F64634();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a2)
  {
    return 1;
  }

  v15[0] = a1;
  v15[1] = a2;
  sub_1B4F64624();
  sub_1B4DCAC7C();
  v10 = sub_1B4F68854();
  v12 = v11;
  (*(v5 + 8))(v9, v4);

  v13 = HIBYTE(v12) & 0xF;
  if ((v12 & 0x2000000000000000) == 0)
  {
    v13 = v10 & 0xFFFFFFFFFFFFLL;
  }

  return v13 == 0;
}

uint64_t RemoteParticipantUpdated.participant.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1B4F65F84();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t RemoteParticipantUpdated.init(participant:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1B4F65F84();
  v5 = *(*(v4 - 8) + 32);

  return v5(a2, a1, v4);
}

uint64_t type metadata accessor for RemoteParticipantUpdated()
{
  result = qword_1EB8F54A8;
  if (!qword_1EB8F54A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1B4E5F3FC()
{
  result = sub_1B4F65F84();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1B4E5F468(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6)
{
  v11 = (a4 + *a4);
  v8 = a4[1];
  v9 = swift_task_alloc();
  *(v6 + 16) = v9;
  *v9 = v6;
  v9[1] = sub_1B4DE13F0;

  return v11(a6);
}

uint64_t ActivityRingsObserver.deinit()
{
  v1 = *(v0 + 16);

  sub_1B4F683B4();

  v2 = *(v0 + 16);

  return v0;
}

uint64_t ActivityRingsObserver.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  sub_1B4F683B4();

  v2 = *(v0 + 16);

  return swift_deallocClassInstance();
}

unint64_t sub_1B4E5F678@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = _s13SeymourClient19DataProtectionClassO8rawValueACSgSi_tcfC_0(*a1);
  *a2 = result;
  return result;
}

unint64_t _s13SeymourClient19DataProtectionClassO8rawValueACSgSi_tcfC_0(unint64_t result)
{
  if (result >= 4)
  {
    return 4;
  }

  return result;
}

unint64_t sub_1B4E5F720()
{
  result = qword_1EB8F54B8;
  if (!qword_1EB8F54B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F54B8);
  }

  return result;
}

uint64_t Collection<>.parallelForEach(parallelism:block:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[6] = a5;
  v6[7] = v5;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1B4E5F8C8, 0, 0);
}

uint64_t sub_1B4E5F8C8()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = swift_allocObject();
  v0[8] = v3;
  *(v3 + 16) = *(v0 + 5);
  *(v3 + 32) = v2;
  *(v3 + 40) = v1;

  v4 = swift_task_alloc();
  v0[9] = v4;
  *v4 = v0;
  v4[1] = sub_1B4E5F9C8;
  v5 = v0[6];
  v6 = v0[7];
  v7 = v0[5];
  v8 = v0[2];
  v9 = MEMORY[0x1E69E7CA8] + 8;

  return Collection<>.parallelMap<A>(parallelism:transform:)(v8, &unk_1B4F733D0, v3, v7, v9, v5);
}

uint64_t sub_1B4E5F9C8()
{
  v2 = *(*v1 + 72);
  v3 = *v1;
  v3[10] = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1B4E5FB24, 0, 0);
  }

  else
  {
    v4 = v3[8];

    v5 = v3[1];

    return v5();
  }
}

uint64_t sub_1B4E5FB24()
{
  v1 = v0[8];

  v2 = v0[1];
  v3 = v0[10];

  return v2();
}

uint64_t sub_1B4E5FB88(uint64_t a1, uint64_t a2, int *a3)
{
  v8 = (a3 + *a3);
  v5 = a3[1];
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_1B4DE13F0;

  return v8(a2);
}

uint64_t sub_1B4E5FC7C(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v9 = v2[4];
  v8 = v2[5];
  v10 = swift_task_alloc();
  *(v3 + 16) = v10;
  *v10 = v3;
  v10[1] = sub_1B4DE0D94;

  return sub_1B4E5FB88(a1, a2, v9);
}

uint64_t Collection<>.parallelMap<A>(parallelism:transform:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[8] = a6;
  v7[9] = v6;
  v7[6] = a4;
  v7[7] = a5;
  v7[4] = a2;
  v7[5] = a3;
  v7[3] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1B4E5FD70, 0, 0);
}

uint64_t sub_1B4E5FD70()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);
  v3 = *(v0 + 48);
  v4 = *(v0 + 56);
  sub_1B4F68574();
  v5 = sub_1B4F68804();
  v7 = v6;
  *(v0 + 80) = v5;
  *(v0 + 88) = v6;
  v8 = sub_1B4F687F4();
  if (!v8)
  {
    return sub_1B4F68B24();
  }

  v9 = v8;
  v11 = *(v0 + 64);
  v10 = *(v0 + 72);
  v13 = *(v0 + 48);
  v12 = *(v0 + 56);
  v20 = *(v0 + 24);
  v19 = *(v0 + 32);
  v14 = sub_1B4F68574();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v15 = swift_task_alloc();
  *(v0 + 96) = v15;
  *(v15 + 16) = v13;
  *(v15 + 24) = v12;
  *(v15 + 32) = v11;
  *(v15 + 40) = v10;
  *(v15 + 48) = v19;
  *(v15 + 64) = v20;
  *(v15 + 72) = v9;
  *(v15 + 80) = v14;
  *(v15 + 88) = v5;
  *(v15 + 96) = v7;
  sub_1B4F68254();
  v16 = *(MEMORY[0x1E69E88A0] + 4);
  v17 = swift_task_alloc();
  *(v0 + 104) = v17;
  *v17 = v0;
  v17[1] = sub_1B4E5FF7C;

  return MEMORY[0x1EEE6DD58](v0 + 16, TupleTypeMetadata2);
}

uint64_t sub_1B4E5FF7C()
{
  v2 = *v1;
  v3 = *(*v1 + 104);
  v7 = *v1;
  *(*v1 + 112) = v0;

  if (v0)
  {
    v4 = sub_1B4E60108;
  }

  else
  {
    v5 = *(v2 + 96);

    v4 = sub_1B4E60098;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1B4E60098()
{
  v1 = v0[10];
  v2 = v0[11];
  v3 = v0[7];
  v4 = v0[2];
  sub_1B4F687E4();
  v5 = v0[1];

  return v5(v4);
}

uint64_t sub_1B4E60108()
{
  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[10];
  v4 = v0[7];

  sub_1B4F687E4();
  v5 = v0[1];
  v6 = v0[14];

  return v5();
}

uint64_t sub_1B4E6018C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[15] = v21;
  v8[16] = v22;
  v8[13] = v19;
  v8[14] = v20;
  v8[11] = a8;
  v8[12] = v18;
  v8[9] = a6;
  v8[10] = a7;
  v8[7] = a4;
  v8[8] = a5;
  v8[5] = a2;
  v8[6] = a3;
  v8[4] = a1;
  v8[17] = swift_getTupleTypeMetadata2();
  v9 = sub_1B4F687D4();
  v8[18] = v9;
  v10 = *(v9 - 8);
  v8[19] = v10;
  v11 = *(v10 + 64) + 15;
  v8[20] = swift_task_alloc();
  v12 = *(v21 - 8);
  v8[21] = v12;
  v8[22] = v12;
  v13 = *(v12 + 64) + 15;
  v8[23] = swift_task_alloc();
  v8[24] = swift_task_alloc();
  v8[25] = *(v22 + 8);
  v14 = sub_1B4F68B74();
  v8[26] = v14;
  v15 = *(*(v14 - 8) + 64) + 15;
  v8[27] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B4E60338, 0, 0);
}

uint64_t sub_1B4E60338()
{
  v2 = v0[26];
  v1 = v0[27];
  v3 = v0[25];
  v4 = v0[14];
  v5 = v0[9];
  v6 = v0[6];
  sub_1B4F68B64();
  v7 = swift_allocBox();
  v0[28] = v7;
  MEMORY[0x1B8C819A0](v4, v3);
  v8 = sub_1B4F68B44();
  if (v5 < 0)
  {
    __break(1u);
  }

  else
  {
    if (v0[9])
    {
      v12 = 0;
      do
      {
        v13 = v0[9];
        ++v12;
        sub_1B4E60B28(v7, v0[5], v0[7], v0[8], v0[14], v0[15], v0[16]);
      }

      while (v12 != v13);
    }

    v14 = v0[17];
    v0[29] = 0;
    v15 = *(MEMORY[0x1E69E8708] + 4);
    v16 = swift_task_alloc();
    v0[30] = v16;
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8F5130, &qword_1B4F71530);
    v11 = sub_1B4F68444();
    *v16 = v0;
    v16[1] = sub_1B4E604BC;
    v8 = v0[20];
    v17 = v0[5];
    v9 = 0;
    v10 = 0;
  }

  return MEMORY[0x1EEE6DAC8](v8, v9, v10, v11);
}

uint64_t sub_1B4E604BC()
{
  v2 = *(*v1 + 240);
  v5 = *v1;
  *(*v1 + 248) = v0;

  if (v0)
  {
    v3 = sub_1B4E60988;
  }

  else
  {
    v3 = sub_1B4E605D0;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1B4E605D0()
{
  v1 = v0[20];
  v2 = v0[17];
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) != 1)
  {
    v17 = v0[23];
    v16 = v0[24];
    v18 = v0[22];
    v37 = v0[21];
    v38 = v0[29];
    v19 = v0[15];
    v20 = v0[10];
    v21 = *v1;
    (*(v18 + 32))(v16, &v1[*(v2 + 48)], v19);
    v22 = v20 + *(v18 + 72) * v21;
    (*(v18 + 16))(v17, v16, v19);
    v3 = (*(v37 + 32))(v22, v17, v19);
    if (!__OFADD__(v38, 1))
    {
      if ((sub_1B4F683C4() & 1) == 0)
      {
        sub_1B4E60B28(v0[28], v0[5], v0[7], v0[8], v0[14], v0[15], v0[16]);
      }

      (*(v0[22] + 8))(v0[24], v0[15]);
      v0[29] = v38 + 1;
      v23 = v0[17];
      v24 = *(MEMORY[0x1E69E8708] + 4);
      v25 = swift_task_alloc();
      v0[30] = v25;
      __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8F5130, &qword_1B4F71530);
      v6 = sub_1B4F68444();
      *v25 = v0;
      v25[1] = sub_1B4E604BC;
      v3 = v0[20];
      v26 = v0[5];
      v4 = 0;
      v5 = 0;

      return MEMORY[0x1EEE6DAC8](v3, v4, v5, v6);
    }

    __break(1u);
LABEL_16:
    __break(1u);
    return MEMORY[0x1EEE6DAC8](v3, v4, v5, v6);
  }

  (*(v0[19] + 8))(v1, v0[18]);
  v3 = sub_1B4F683C4();
  if ((v3 & 1) == 0)
  {
    v27 = v0[13];
    if (v0[11] == v27)
    {
      v28 = v0[27];
      v29 = v0[28];
      v31 = v0[23];
      v30 = v0[24];
      v32 = v0[20];
      v33 = v0[15];
      v34 = v0[4];
      v0[2] = v0[12];
      v0[3] = v27;
      sub_1B4F68814();
      swift_getWitnessTable();
      v35 = sub_1B4F68264();

      *v34 = v35;

      v15 = v0[1];
      goto LABEL_12;
    }

    goto LABEL_16;
  }

  v8 = v0[28];
  v7 = v0[29];
  v9 = v0[15];
  v10 = v0[10];
  sub_1B4F687B4();
  sub_1B4F682D4();
  sub_1B4E5275C();
  swift_allocError();
  sub_1B4F67EC4();
  swift_willThrow();

  v11 = v0[27];
  v13 = v0[23];
  v12 = v0[24];
  v14 = v0[20];

  v15 = v0[1];
LABEL_12:

  return v15();
}

uint64_t sub_1B4E60988()
{
  v1 = v0[28];

  v2 = v0[31];
  v3 = v0[27];
  v5 = v0[23];
  v4 = v0[24];
  v6 = v0[20];

  v7 = v0[1];

  return v7();
}

uint64_t sub_1B4E60A1C(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 32);
  v6 = *(v2 + 40);
  v7 = *(v2 + 48);
  v8 = *(v2 + 56);
  v9 = *(v2 + 64);
  v10 = *(v2 + 72);
  v11 = *(v2 + 80);
  v14 = *(v2 + 88);
  v15 = *(v2 + 16);
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_1B4DE0D94;

  return sub_1B4E6018C(a1, a2, v6, v7, v8, v9, v10, v11);
}

uint64_t sub_1B4E60B28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v52 = a4;
  v53 = a6;
  v50 = a3;
  v54 = a2;
  v55 = a1;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8F7040, &qword_1B4F71150);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8, v11);
  v57 = &v47 - v12;
  v51 = a7;
  v13 = *(a7 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v47 = sub_1B4F687D4();
  v16 = *(v47 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v47, v18);
  v20 = (&v47 - v19);
  v21 = swift_getTupleTypeMetadata2();
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x1EEE9AC00](v21, v23);
  v25 = (&v47 - v24);
  v48 = *(AssociatedTypeWitness - 8);
  v26 = *(v48 + 64);
  MEMORY[0x1EEE9AC00](v27, v28);
  v29 = &v47 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30, v31);
  v56 = &v47 - v32;
  v49 = a5;
  sub_1B4F68B64();
  swift_projectBox();
  swift_beginAccess();
  sub_1B4F68B54();
  swift_endAccess();
  if ((*(*(TupleTypeMetadata2 - 8) + 48))(v20, 1, TupleTypeMetadata2) == 1)
  {
    return (*(v16 + 8))(v20, v47);
  }

  v34 = *(TupleTypeMetadata2 + 48);
  v35 = *(v21 + 48);
  *v25 = *v20;
  v36 = v48;
  v37 = *(v48 + 32);
  v37(v25 + v35, v20 + v34, AssociatedTypeWitness);
  v55 = *v25;
  v38 = v56;
  v37(v56, v25 + *(v21 + 48), AssociatedTypeWitness);
  v39 = sub_1B4F68324();
  (*(*(v39 - 8) + 56))(v57, 1, 1, v39);
  (*(v36 + 16))(v29, v38, AssociatedTypeWitness);
  v40 = (*(v36 + 80) + 72) & ~*(v36 + 80);
  v41 = swift_allocObject();
  *(v41 + 2) = 0;
  *(v41 + 3) = 0;
  v42 = v52;
  v43 = v53;
  *(v41 + 4) = v49;
  *(v41 + 5) = v43;
  v44 = v50;
  *(v41 + 6) = v51;
  *(v41 + 7) = v44;
  *(v41 + 8) = v42;
  v37(&v41[v40], v29, AssociatedTypeWitness);
  *&v41[(v26 + v40 + 7) & 0xFFFFFFFFFFFFFFF8] = v55;

  swift_getTupleTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8F5130, &qword_1B4F71530);
  v45 = sub_1B4F68444();
  v46 = v57;
  sub_1B4E663D0(v57, &unk_1B4F73428, v41, v45);
  sub_1B4E6341C(v46);
  return (*(v36 + 8))(v56, AssociatedTypeWitness);
}

uint64_t sub_1B4E60FEC(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[3] = a7;
  v7[4] = v18;
  v7[2] = a1;
  v10 = *(v18 - 8);
  v7[5] = v10;
  v11 = *(v10 + 64) + 15;
  v12 = swift_task_alloc();
  v7[6] = v12;
  v16 = (a4 + *a4);
  v13 = a4[1];
  v14 = swift_task_alloc();
  v7[7] = v14;
  *v14 = v7;
  v14[1] = sub_1B4E61158;

  return v16(v12, a6);
}

uint64_t sub_1B4E61158()
{
  v2 = *(*v1 + 56);
  v5 = *v1;
  *(*v1 + 64) = v0;

  if (v0)
  {
    v3 = sub_1B4E6132C;
  }

  else
  {
    v3 = sub_1B4E6126C;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1B4E6126C()
{
  v2 = v0[5];
  v1 = v0[6];
  v4 = v0[3];
  v3 = v0[4];
  v5 = v0[2];
  v6 = *(swift_getTupleTypeMetadata2() + 48);
  *v5 = v4;
  (*(v2 + 32))(&v5[v6], v1, v3);

  v7 = v0[1];

  return v7();
}

uint64_t sub_1B4E6132C()
{
  v1 = v0[6];

  v2 = v0[1];
  v3 = v0[8];

  return v2();
}

uint64_t Collection<>.parallelCompactMap<A>(parallelism:transform:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[4] = a5;
  v6[5] = a6;
  v6[3] = a4;
  v12 = swift_task_alloc();
  v6[6] = v12;
  v13 = sub_1B4F687D4();
  v6[7] = v13;
  *v12 = v6;
  v12[1] = sub_1B4E61488;

  return Collection<>.parallelMap<A>(parallelism:transform:)(a1, a2, a3, a4, v13, a6);
}

uint64_t sub_1B4E61488(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 48);
  v6 = *v2;
  *(*v2 + 64) = v1;

  if (v1)
  {
    v7 = *(v6 + 8);

    return v7();
  }

  else
  {
    *(v4 + 72) = a1;

    return MEMORY[0x1EEE6DFA0](sub_1B4E615D8, 0, 0);
  }
}

uint64_t sub_1B4E615D8()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 56);
  v3 = *(v0 + 24);
  *(v0 + 16) = *(v0 + 72);
  v4 = swift_task_alloc();
  v5 = *(v0 + 32);
  *(v4 + 16) = v3;
  *(v4 + 24) = v5;
  sub_1B4F68254();
  swift_getWitnessTable();
  v6 = sub_1B4F680E4();

  v7 = *(v0 + 8);

  return v7(v6);
}

uint64_t sub_1B4E616EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(v2 + 24);
  v6 = sub_1B4F687D4();
  return (*(*(v6 - 8) + 16))(a2, a1, v6);
}

uint64_t Collection<>.parallelFilter(parallelism:predicate:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[6] = a5;
  v6[7] = v5;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1B4E61788, 0, 0);
}

uint64_t sub_1B4E61788()
{
  v1 = v0[5];
  v2 = v0[6];
  v4 = v0[3];
  v3 = v0[4];
  v5 = swift_allocObject();
  v0[8] = v5;
  v5[2] = v1;
  v5[3] = v2;
  v5[4] = v4;
  v5[5] = v3;

  v6 = swift_task_alloc();
  v0[9] = v6;
  v7 = *(v2 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  *v6 = v0;
  v6[1] = sub_1B4E618A8;
  v9 = v0[6];
  v10 = v0[7];
  v11 = v0[5];
  v12 = v0[2];

  return Collection<>.parallelCompactMap<A>(parallelism:transform:)(v12, &unk_1B4F73408, v5, v11, AssociatedTypeWitness, v9);
}

uint64_t sub_1B4E618A8(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 72);
  v6 = *v2;
  *(*v2 + 80) = v1;

  if (v1)
  {

    return MEMORY[0x1EEE6DFA0](sub_1B4E5FB24, 0, 0);
  }

  else
  {
    v7 = *(v4 + 64);

    v8 = *(v6 + 8);

    return v8(a1);
  }
}

uint64_t sub_1B4E61A00(uint64_t a1, uint64_t a2, int *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[4] = a5;
  v6[5] = a6;
  v6[2] = a1;
  v6[3] = a2;
  v11 = (a3 + *a3);
  v8 = a3[1];
  v9 = swift_task_alloc();
  v6[6] = v9;
  *v9 = v6;
  v9[1] = sub_1B4E61AFC;

  return v11(a2);
}

uint64_t sub_1B4E61AFC(char a1)
{
  v4 = *v2;
  v5 = *(*v2 + 48);
  v6 = *v2;

  if (v1)
  {
    v7 = *(v6 + 8);

    return v7();
  }

  else
  {
    *(v4 + 56) = a1 & 1;

    return MEMORY[0x1EEE6DFA0](sub_1B4E61C4C, 0, 0);
  }
}

uint64_t sub_1B4E61C4C()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 32);
  v3 = *(*(v0 + 40) + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  if (v1 == 1)
  {
    (*(*(AssociatedTypeWitness - 8) + 16))(*(v0 + 16), *(v0 + 24), AssociatedTypeWitness);
    v6 = 0;
  }

  else
  {
    v6 = 1;
  }

  (*(v5 + 56))(*(v0 + 16), v6, 1, AssociatedTypeWitness);
  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_1B4E61D4C(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v9 = v2[4];
  v8 = v2[5];
  v10 = swift_task_alloc();
  *(v3 + 16) = v10;
  *v10 = v3;
  v10[1] = sub_1B4DE0D94;

  return sub_1B4E61A00(a1, a2, v9, v8, v6, v7);
}

uint64_t Collection<>.asyncCompactMap<A>(predicate:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[6] = a4;
  v6[7] = v5;
  v6[4] = a2;
  v6[5] = a3;
  v6[3] = a1;
  v10 = sub_1B4F687D4();
  v6[8] = v10;
  v11 = *(v10 - 8);
  v6[9] = v11;
  v12 = *(v11 + 64) + 15;
  v6[10] = swift_task_alloc();
  v13 = *(a4 - 8);
  v6[11] = v13;
  v14 = *(v13 + 64) + 15;
  v6[12] = swift_task_alloc();
  v6[13] = swift_task_alloc();
  v6[14] = *(a5 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6[15] = AssociatedTypeWitness;
  v16 = *(AssociatedTypeWitness - 8);
  v6[16] = v16;
  v17 = *(v16 + 64) + 15;
  v6[17] = swift_task_alloc();
  v18 = *(*(sub_1B4F687D4() - 8) + 64) + 15;
  v6[18] = swift_task_alloc();
  v19 = *(a3 - 8);
  v6[19] = v19;
  v20 = *(v19 + 64) + 15;
  v6[20] = swift_task_alloc();
  v21 = swift_getAssociatedTypeWitness();
  v6[21] = v21;
  v22 = *(v21 - 8);
  v6[22] = v22;
  v23 = *(v22 + 64) + 15;
  v6[23] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B4E620CC, 0, 0);
}

uint64_t sub_1B4E620CC()
{
  v1 = v0[23];
  v3 = v0[19];
  v2 = v0[20];
  v4 = v0[14];
  v5 = v0[6];
  v6 = v0[7];
  v7 = v0[5];
  v0[2] = sub_1B4F67EB4();
  (*(v3 + 16))(v2, v6, v7);
  sub_1B4F680C4();
  v8 = v0[23];
  v9 = v0[21];
  v10 = v0[18];
  v11 = v0[15];
  v12 = v0[16];
  v13 = v0[14];
  v14 = v0[5];
  swift_getAssociatedConformanceWitness();
  sub_1B4F68834();
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    v15 = v0[20];
    v17 = v0[17];
    v16 = v0[18];
    v19 = v0[12];
    v18 = v0[13];
    v20 = v0[10];
    (*(v0[22] + 8))(v0[23], v0[21]);
    v21 = v0[2];

    v22 = v0[1];

    return v22(v21);
  }

  else
  {
    v24 = v0[3];
    (*(v0[16] + 32))(v0[17], v0[18], v0[15]);
    v30 = (v24 + *v24);
    v25 = v24[1];
    v26 = swift_task_alloc();
    v0[24] = v26;
    *v26 = v0;
    v26[1] = sub_1B4E62358;
    v27 = v0[17];
    v28 = v0[10];
    v29 = v0[4];

    return v30(v28, v27);
  }
}

uint64_t sub_1B4E62358()
{
  v2 = *v1;
  v3 = *(*v1 + 192);
  v7 = *v1;
  *(*v1 + 200) = v0;

  if (v0)
  {
    v4 = *(v2 + 16);

    v5 = sub_1B4E627B0;
  }

  else
  {
    v5 = sub_1B4E62474;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1B4E62474()
{
  v1 = v0[10];
  v2 = v0[11];
  v3 = v0[6];
  v4 = (*(v2 + 48))(v1, 1, v3);
  v6 = v0[16];
  v5 = v0[17];
  v7 = v0[15];
  if (v4 == 1)
  {
    v8 = v0[8];
    v9 = v0[9];
    (*(v6 + 8))(v0[17], v0[15]);
    (*(v9 + 8))(v1, v8);
  }

  else
  {
    v11 = v0[12];
    v10 = v0[13];
    (*(v2 + 32))(v10, v1, v3);
    (*(v2 + 16))(v11, v10, v3);
    sub_1B4F68254();
    sub_1B4F68244();
    (*(v2 + 8))(v10, v3);
    (*(v6 + 8))(v5, v7);
  }

  v12 = v0[23];
  v13 = v0[21];
  v14 = v0[18];
  v15 = v0[15];
  v16 = v0[16];
  v17 = v0[14];
  v18 = v0[5];
  swift_getAssociatedConformanceWitness();
  sub_1B4F68834();
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    v19 = v0[20];
    v21 = v0[17];
    v20 = v0[18];
    v23 = v0[12];
    v22 = v0[13];
    v24 = v0[10];
    (*(v0[22] + 8))(v0[23], v0[21]);
    v25 = v0[2];

    v26 = v0[1];

    return v26(v25);
  }

  else
  {
    v28 = v0[3];
    (*(v0[16] + 32))(v0[17], v0[18], v0[15]);
    v34 = (v28 + *v28);
    v29 = v28[1];
    v30 = swift_task_alloc();
    v0[24] = v30;
    *v30 = v0;
    v30[1] = sub_1B4E62358;
    v31 = v0[17];
    v32 = v0[10];
    v33 = v0[4];

    return v34(v32, v31);
  }
}

uint64_t sub_1B4E627B0()
{
  v2 = v0[22];
  v1 = v0[23];
  v4 = v0[20];
  v3 = v0[21];
  v5 = v0[18];
  v7 = v0[12];
  v6 = v0[13];
  v8 = v0[10];
  (*(v0[16] + 8))(v0[17], v0[15]);
  (*(v2 + 8))(v1, v3);

  v9 = v0[1];
  v10 = v0[25];

  return v9();
}

uint64_t Set.asyncFilter(predicate:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[11] = a4;
  v5[12] = a5;
  v5[9] = a2;
  v5[10] = a3;
  v5[8] = a1;
  v6 = *(a4 - 8);
  v5[13] = v6;
  v7 = *(v6 + 64) + 15;
  v5[14] = swift_task_alloc();
  v5[15] = swift_task_alloc();
  v5[16] = swift_task_alloc();
  v8 = *(*(sub_1B4F687D4() - 8) + 64) + 15;
  v5[17] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B4E629B4, 0, 0);
}

uint64_t sub_1B4E629B4()
{
  v1 = v0[11];
  v2 = v0[12];
  v3 = v0[10];
  v0[7] = sub_1B4F67ED4();
  if ((v3 & 0xC000000000000001) != 0)
  {
    v5 = v0[11];
    v4 = v0[12];
    if (v0[10] < 0)
    {
      v6 = v0[10];
    }

    swift_unknownObjectRetain();
    sub_1B4F688E4();
    result = sub_1B4F68544();
    v3 = v0[2];
    v8 = v0[3];
    v10 = v0[4];
    v9 = v0[5];
    v11 = v0[6];
  }

  else
  {
    v12 = -1 << *(v0[10] + 32);
    v13 = v0[10];
    v15 = *(v13 + 56);
    v8 = v13 + 56;
    v14 = v15;
    v10 = ~v12;
    v16 = -v12;
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    else
    {
      v17 = -1;
    }

    v11 = v17 & v14;

    v9 = 0;
  }

  v0[18] = v3;
  v0[19] = v8;
  v18 = v0[13];
  v0[21] = v9;
  v0[22] = v11;
  v0[20] = v10;
  if (v3 < 0)
  {
    if (sub_1B4F68914())
    {
      v20 = v0[17];
      v21 = v0[11];
      sub_1B4F68D44();
      swift_unknownObjectRelease();
LABEL_20:
      v0[23] = v9;
      v0[24] = v11;
      v24 = v0[16];
      v25 = v0[17];
      v26 = v0[13];
      v27 = v0[11];
      v28 = v0[8];
      (*(v26 + 56))(v25, 0, 1, v27);
      (*(v26 + 32))(v24, v25, v27);
      v41 = (v28 + *v28);
      v29 = v28[1];
      v30 = swift_task_alloc();
      v0[25] = v30;
      *v30 = v0;
      v30[1] = sub_1B4E62D24;
      v31 = v0[16];
      v32 = v0[9];

      return v41(v31);
    }

    v33 = v0[19];
    v34 = v0[20];
    v35 = v0[18];
    v18 = v0[13];
LABEL_24:
    v36 = v0[16];
    v38 = v0[14];
    v37 = v0[15];
    (*(v18 + 56))(v0[17], 1, 1, v0[11]);
    sub_1B4E632A0();
    v39 = v0[7];

    v40 = v0[1];

    return v40(v39);
  }

  else
  {
    if (v11)
    {
      v19 = v9;
LABEL_19:
      v23 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      (*(v18 + 16))(v0[17], *(v3 + 48) + *(v18 + 72) * (v23 | (v19 << 6)), v0[11]);
      goto LABEL_20;
    }

    v22 = v9;
    while (1)
    {
      v19 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        break;
      }

      if (v19 >= ((v10 + 64) >> 6))
      {
        goto LABEL_24;
      }

      v11 = *(v8 + 8 * v19);
      ++v22;
      if (v11)
      {
        v9 = v19;
        goto LABEL_19;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1B4E62D24(char a1)
{
  v4 = *v2;
  v5 = *(*v2 + 200);
  v6 = *v2;
  *(*v2 + 208) = v1;

  if (v1)
  {
    v7 = *(v4 + 56);

    v8 = sub_1B4E631E0;
  }

  else
  {
    *(v4 + 216) = a1 & 1;
    v8 = sub_1B4E62E58;
  }

  return MEMORY[0x1EEE6DFA0](v8, 0, 0);
}

uint64_t sub_1B4E62E58()
{
  v1 = *(v0 + 128);
  if (*(v0 + 216))
  {
    v2 = *(v0 + 120);
    v3 = *(v0 + 104);
    v4 = *(v0 + 88);
    (*(v3 + 16))(*(v0 + 112), *(v0 + 128), v4);
    sub_1B4F68554();
    sub_1B4F68534();
    v5 = *(v3 + 8);
    v5(v2, v4);
    result = (v5)(v1, v4);
  }

  else
  {
    result = (*(*(v0 + 104) + 8))(*(v0 + 128), *(v0 + 88));
  }

  v7 = *(v0 + 184);
  v8 = *(v0 + 192);
  *(v0 + 168) = v7;
  *(v0 + 176) = v8;
  v9 = *(v0 + 144);
  if (v9 < 0)
  {
    if (sub_1B4F68914())
    {
      v11 = *(v0 + 136);
      v12 = *(v0 + 88);
      sub_1B4F68D44();
      swift_unknownObjectRelease();
LABEL_15:
      *(v0 + 184) = v7;
      *(v0 + 192) = v8;
      v15 = *(v0 + 128);
      v16 = *(v0 + 136);
      v17 = *(v0 + 104);
      v18 = *(v0 + 88);
      v19 = *(v0 + 64);
      (*(v17 + 56))(v16, 0, 1, v18);
      (*(v17 + 32))(v15, v16, v18);
      v32 = (v19 + *v19);
      v20 = v19[1];
      v21 = swift_task_alloc();
      *(v0 + 200) = v21;
      *v21 = v0;
      v21[1] = sub_1B4E62D24;
      v22 = *(v0 + 128);
      v23 = *(v0 + 72);

      return v32(v22);
    }

    v24 = *(v0 + 160);
    v25 = *(v0 + 144);
LABEL_19:
    v26 = *(v0 + 152);
    v27 = *(v0 + 128);
    v29 = *(v0 + 112);
    v28 = *(v0 + 120);
    (*(*(v0 + 104) + 56))(*(v0 + 136), 1, 1, *(v0 + 88));
    sub_1B4E632A0();
    v30 = *(v0 + 56);

    v31 = *(v0 + 8);

    return v31(v30);
  }

  else
  {
    if (v8)
    {
      v10 = v7;
LABEL_14:
      v14 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
      (*(*(v0 + 104) + 16))(*(v0 + 136), *(v9 + 48) + *(*(v0 + 104) + 72) * (v14 | (v10 << 6)), *(v0 + 88));
      goto LABEL_15;
    }

    v13 = v7;
    while (1)
    {
      v10 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v10 >= ((*(v0 + 160) + 64) >> 6))
      {
        goto LABEL_19;
      }

      v8 = *(*(v0 + 152) + 8 * v10);
      ++v13;
      if (v8)
      {
        v7 = v10;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1B4E631E0()
{
  v1 = v0[21];
  v2 = v0[22];
  v3 = v0[19];
  v4 = v0[20];
  v6 = v0[17];
  v5 = v0[18];
  v8 = v0[15];
  v7 = v0[16];
  v10 = v0[13];
  v9 = v0[14];
  v11 = v0[11];
  sub_1B4E632A0();
  (*(v10 + 8))(v7, v11);

  v12 = v0[1];
  v13 = v0[26];

  return v12();
}

uint64_t sub_1B4E632A8(uint64_t a1)
{
  v3 = v1[4];
  v14 = v1[5];
  v4 = *(v1[6] + 8);
  v5 = *(swift_getAssociatedTypeWitness() - 8);
  v6 = (*(v5 + 80) + 72) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[7];
  v10 = v1[8];
  v11 = *(v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = sub_1B4DE13F0;

  return sub_1B4E60FEC(a1, v7, v8, v9, v10, v1 + v6, v11);
}

uint64_t sub_1B4E6341C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8F7040, &qword_1B4F71150);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t MultiUserSessionIdentitiesUpdated.sessionIdentities.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1B4F66E84();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t MultiUserSessionIdentitiesUpdated.init(sessionIdentities:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1B4F66E84();
  v5 = *(*(v4 - 8) + 32);

  return v5(a2, a1, v4);
}

uint64_t type metadata accessor for MultiUserSessionIdentitiesUpdated()
{
  result = qword_1EDB70590;
  if (!qword_1EDB70590)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t MediaMomentEnded.mediaMoment.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1B4F64D34();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t MediaMomentEnded.init(mediaMoment:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1B4F64D34();
  v5 = *(*(v4 - 8) + 32);

  return v5(a2, a1, v4);
}

uint64_t type metadata accessor for MediaMomentEnded()
{
  result = qword_1EB8F54C0;
  if (!qword_1EB8F54C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1B4E63824()
{
  result = sub_1B4F64D34();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t static ProgressDisplayPreference.default()()
{
  v0 = sub_1B4F674E4();
  v1 = *(*(v0 - 8) + 64);
  v3 = MEMORY[0x1EEE9AC00](v0, v2);
  (*(v5 + 104))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x1E69CD198], v3);
  return sub_1B4F66B94();
}

uint64_t ActivityMoveMode.healthKitRawValue.getter(char a1)
{
  if (a1)
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

uint64_t sub_1B4E639AC(uint64_t a1)
{
  if (a1 == 1)
  {
    return 0;
  }

  if (a1 == 2)
  {
    return 1;
  }

  sub_1B4F689C4();
  MEMORY[0x1B8C818C0](0xD00000000000001FLL, 0x80000001B4F81780);
  type metadata accessor for HKActivityMoveMode(0);
  sub_1B4F68AD4();
  result = sub_1B4F68B24();
  __break(1u);
  return result;
}

uint64_t sub_1B4E63A84(uint64_t a1)
{
  if ((a1 - 1) < 3)
  {
    return (a1 - 1) & 1;
  }

  sub_1B4F689C4();
  MEMORY[0x1B8C818C0](0xD00000000000001ALL, 0x80000001B4F81760);
  type metadata accessor for HKFitnessMode(0);
  sub_1B4F68AD4();
  result = sub_1B4F68B24();
  __break(1u);
  return result;
}

unint64_t sub_1B4E63B88()
{
  result = qword_1EB8F54D0;
  if (!qword_1EB8F54D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F54D0);
  }

  return result;
}

uint64_t AssetLoadStatus.init<A>(result:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F54D8, &unk_1B4F735F0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8, v4);
  v6 = v38 - v5;
  v7 = sub_1B4F64A54();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7, v10);
  v12 = v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = v38 - v15;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8F5130, &qword_1B4F71530);
  v17 = sub_1B4F68F14();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  v21 = MEMORY[0x1EEE9AC00](v17, v20);
  v23 = (v38 - v22);
  (*(v18 + 16))(v38 - v22, a1, v17, v21);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v30 = *(v18 + 8);
    v30(a1, v17);
    v30(v23, v17);
    return 5;
  }

  v24 = *v23;
  v38[9] = v24;
  v25 = v24;
  v26 = swift_dynamicCast();
  v27 = *(v8 + 56);
  if (v26)
  {
    v38[0] = a1;
    v27(v6, 0, 1, v7);
    v28 = *(v8 + 32);
    v28(v16, v6, v7);
    v28(v12, v16, v7);
    if ((*(v8 + 88))(v12, v7) == *MEMORY[0x1E69CAEF8])
    {
      (*(v18 + 8))(v38[0], v17);

      (*(v8 + 8))(v12, v7);
      return 4;
    }

    (*(v8 + 8))(v12, v7);
    a1 = v38[0];
  }

  else
  {
    v27(v6, 1, 1, v7);
    sub_1B4E64060(v6);
  }

  swift_getErrorValue();
  v31 = sub_1B4F68DF4();
  v33 = v32;
  v34 = *MEMORY[0x1E696A978];
  if (v31 == sub_1B4F67F74() && v33 == v35)
  {
  }

  else
  {
    v36 = sub_1B4F68D54();

    if ((v36 & 1) == 0)
    {
      (*(v18 + 8))(a1, v17);

      return 6;
    }
  }

  swift_getErrorValue();
  v37 = sub_1B4F68DE4();

  (*(v18 + 8))(a1, v17);
  if (v37 == -999)
  {
    return 8;
  }

  return 6;
}

uint64_t sub_1B4E64060(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F54D8, &unk_1B4F735F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B4E640C8(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (!v1)
  {
    return v2;
  }

  v28 = MEMORY[0x1E69E7CC0];
  sub_1B4E257A4(0, v1, 0);
  v2 = v28;
  v4 = -1 << *(a1 + 32);
  v27 = a1 + 56;
  result = sub_1B4F688B4();
  v6 = result;
  v7 = 0;
  v26 = v1;
  while ((v6 & 0x8000000000000000) == 0 && v6 < 1 << *(a1 + 32))
  {
    v10 = v6 >> 6;
    if ((*(v27 + 8 * (v6 >> 6)) & (1 << v6)) == 0)
    {
      goto LABEL_21;
    }

    v11 = *(a1 + 36);
    v12 = *(*(a1 + 48) + v6);
    result = sub_1B4F652E4();
    v15 = *(v28 + 16);
    v14 = *(v28 + 24);
    if (v15 >= v14 >> 1)
    {
      v24 = v13;
      v25 = result;
      sub_1B4E257A4((v14 > 1), v15 + 1, 1);
      v13 = v24;
      result = v25;
    }

    *(v28 + 16) = v15 + 1;
    v16 = v28 + 16 * v15;
    *(v16 + 32) = result;
    *(v16 + 40) = v13;
    v8 = 1 << *(a1 + 32);
    if (v6 >= v8)
    {
      goto LABEL_22;
    }

    v17 = *(v27 + 8 * v10);
    if ((v17 & (1 << v6)) == 0)
    {
      goto LABEL_23;
    }

    if (v11 != *(a1 + 36))
    {
      goto LABEL_24;
    }

    v18 = v17 & (-2 << (v6 & 0x3F));
    if (v18)
    {
      v8 = __clz(__rbit64(v18)) | v6 & 0x7FFFFFFFFFFFFFC0;
      v9 = v26;
    }

    else
    {
      v19 = v10 << 6;
      v20 = v10 + 1;
      v9 = v26;
      v21 = (a1 + 64 + 8 * v10);
      while (v20 < (v8 + 63) >> 6)
      {
        v23 = *v21++;
        v22 = v23;
        v19 += 64;
        ++v20;
        if (v23)
        {
          result = sub_1B4DF3104(v6, v11, 0);
          v8 = __clz(__rbit64(v22)) + v19;
          goto LABEL_4;
        }
      }

      result = sub_1B4DF3104(v6, v11, 0);
    }

LABEL_4:
    ++v7;
    v6 = v8;
    if (v7 == v9)
    {
      return v2;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

uint64_t ContentRestrictionObserver.__allocating_init(eventHub:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  ContentRestrictionObserver.init(eventHub:)(a1, a2);
  return v4;
}

void *ContentRestrictionObserver.init(eventHub:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  sub_1B4DEE984();
  v7 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F54E0, &unk_1B4F73600);
  v8 = swift_allocObject();
  *(v8 + 24) = 0;
  *(v8 + 16) = v7;
  v3[5] = v8;
  v3[2] = a1;
  v3[3] = a2;
  type metadata accessor for SubscriptionToken();
  v9 = swift_allocObject();
  *(v9 + 24) = 0;
  swift_unknownObjectWeakInit();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F41F8, &qword_1B4F6CA20);
  v10 = swift_allocObject();
  *(v10 + 24) = 0;
  *(v10 + 16) = MEMORY[0x1E69E7CC0];
  *(v9 + 24) = a2;
  *(v9 + 32) = v10;
  swift_unknownObjectWeakAssign();
  v3[4] = v9;
  ObjectType = swift_getObjectType();
  v12 = swift_allocObject();
  swift_weakInit();
  v13 = *(a2 + 24);
  swift_unknownObjectRetain();

  v13(v15, &type metadata for ManagedProfileEffectiveSettingsChanged, v9, sub_1B4E64AC0, v12, &type metadata for ManagedProfileEffectiveSettingsChanged, &protocol witness table for ManagedProfileEffectiveSettingsChanged, ObjectType, a2);
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1Tm(v15);

  return v3;
}

uint64_t sub_1B4E644DC()
{
  if (qword_1EDB724A8 != -1)
  {
    swift_once();
  }

  v0 = sub_1B4F67C54();
  __swift_project_value_buffer(v0, qword_1EDB72490);
  v1 = sub_1B4F67C34();
  v2 = sub_1B4F685E4();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_1B4DC2000, v1, v2, "[ContentRestrictionObserver] Recieved update that content restrictions were changed.", v3, 2u);
    MEMORY[0x1B8C831D0](v3, -1, -1);
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1B4E645F0();
  }

  return result;
}

void sub_1B4E645F0()
{
  if (qword_1EDB724A8 != -1)
  {
    swift_once();
  }

  v1 = sub_1B4F67C54();
  __swift_project_value_buffer(v1, qword_1EDB72490);
  v2._countAndFlagsBits = 0xD00000000000002ELL;
  v2._object = 0x80000001B4F81820;
  v3._object = 0x80000001B4F81850;
  v3._countAndFlagsBits = 0xD00000000000001DLL;
  Logger.trace(file:function:)(v2, v3);
  v4 = *(v0 + 40);
  os_unfair_lock_lock((v4 + 24));
  sub_1B4E64B18((v4 + 16));

  os_unfair_lock_unlock((v4 + 24));
}

void sub_1B4E646D0(uint64_t *a1, uint64_t a2)
{
  v4 = sub_1B4F670E4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = _s13SeymourClient26ContentRestrictionObserverC012queryAllowedC7RatingsShy0A4Core0C6RatingOGyF_0();
  v11 = *a1;
  if (sub_1B4EDE7B0(*a1, v10))
  {
  }

  else
  {
    v33 = v11;
    if (qword_1EDB724A8 != -1)
    {
      swift_once();
    }

    v34 = v5;
    v12 = sub_1B4F67C54();
    __swift_project_value_buffer(v12, qword_1EDB72490);

    v13 = sub_1B4F67C34();
    v14 = sub_1B4F685E4();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v32 = a1;
      v30 = v16;
      v35 = v16;
      *v15 = 136446210;
      sub_1B4DCF604();
      v17 = sub_1B4F68514();
      v31 = a2;
      v19 = sub_1B4DC4F88(v17, v18, &v35);
      a2 = v31;

      *(v15 + 4) = v19;
      _os_log_impl(&dword_1B4DC2000, v13, v14, "[ContentRestrictionObserver] Allowed content ratings changed, updating to %{public}s", v15, 0xCu);
      v20 = v30;
      __swift_destroy_boxed_opaque_existential_1Tm(v30);
      v21 = v20;
      a1 = v32;
      MEMORY[0x1B8C831D0](v21, -1, -1);
      MEMORY[0x1B8C831D0](v15, -1, -1);
    }

    v23 = *(a2 + 16);
    v22 = *(a2 + 24);
    ObjectType = swift_getObjectType();

    sub_1B4F670D4();
    (*(v22 + 8))(v9, v4, &protocol witness table for AllowedContentRatingsUpdated, ObjectType, v22);
    (*(v34 + 8))(v9, v4);
    *a1 = v10;
    v25 = objc_opt_self();

    v26 = [v25 standardUserDefaults];
    sub_1B4E640C8(v10);

    v27 = sub_1B4F681B4();

    v28 = sub_1B4F67F64();
    [v26 setValue:v27 forKey:v28];
  }
}

void *ContentRestrictionObserver.deinit()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[5];

  return v0;
}

uint64_t ContentRestrictionObserver.__deallocating_deinit()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[5];

  return swift_deallocClassInstance();
}

uint64_t RemoteParticipantConnectionRejected.rejection.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1B4F67524();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t RemoteParticipantConnectionRejected.init(rejection:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1B4F67524();
  v5 = *(*(v4 - 8) + 32);

  return v5(a2, a1, v4);
}

uint64_t type metadata accessor for RemoteParticipantConnectionRejected()
{
  result = qword_1EDB6E1F0;
  if (!qword_1EDB6E1F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1B4E64C8C()
{
  result = sub_1B4F67524();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t withTimeout<A>(seconds:operation:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5)
{
  *(v5 + 40) = a3;
  *(v5 + 48) = a4;
  *(v5 + 32) = a2;
  *(v5 + 24) = a5;
  *(v5 + 16) = a1;
  return MEMORY[0x1EEE6DFA0](sub_1B4E64D38, 0, 0);
}

uint64_t sub_1B4E64D38()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 24);
  v3 = swift_task_alloc();
  *(v0 + 56) = v3;
  v4 = *(v0 + 32);
  *(v3 + 16) = v1;
  *(v3 + 24) = v4;
  *(v3 + 40) = v2;
  v5 = *(MEMORY[0x1E69E8920] + 4);
  v6 = swift_task_alloc();
  *(v0 + 64) = v6;
  *v6 = v0;
  v6[1] = sub_1B4E64E3C;
  v7 = *(v0 + 48);
  v8 = *(v0 + 16);

  return MEMORY[0x1EEE6DE38](v8, 0, 0, 0xD00000000000001FLL, 0x80000001B4F80F40, sub_1B4E65204, v3, v7);
}

uint64_t sub_1B4E64E3C()
{
  v2 = *(*v1 + 64);
  v3 = *v1;
  v3[9] = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1B4E64F78, 0, 0);
  }

  else
  {
    v4 = v3[7];

    v5 = v3[1];

    return v5();
  }
}

uint64_t sub_1B4E64F78()
{
  v1 = v0[7];

  v2 = v0[1];
  v3 = v0[9];

  return v2();
}

uint64_t sub_1B4E64FDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8F5130, &qword_1B4F71530);
  v10 = sub_1B4F682C4();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10, v13);
  v15 = &v25 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8F7040, &qword_1B4F71150);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8, v18);
  v20 = &v25 - v19;
  v21 = sub_1B4F68324();
  (*(*(v21 - 8) + 56))(v20, 1, 1, v21);
  (*(v11 + 16))(v15, a1, v10);
  v22 = (*(v11 + 80) + 64) & ~*(v11 + 80);
  v23 = swift_allocObject();
  *(v23 + 16) = 0;
  *(v23 + 24) = 0;
  *(v23 + 32) = a4;
  *(v23 + 40) = a2;
  *(v23 + 48) = a3;
  *(v23 + 56) = a5;
  (*(v11 + 32))(v23 + v22, v15, v10);

  sub_1B4E4E620(0, 0, v20, &unk_1B4F73708, v23);
}

uint64_t sub_1B4E65214(uint64_t a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 48) = a7;
  *(v8 + 56) = a8;
  *(v8 + 40) = a2;
  *(v8 + 24) = a5;
  *(v8 + 32) = a6;
  *(v8 + 16) = a1;
  return MEMORY[0x1EEE6DFA0](sub_1B4E65240, 0, 0);
}

uint64_t sub_1B4E65240()
{
  v2 = *(v0 + 48);
  v1 = *(v0 + 56);
  v3 = *(v0 + 40);
  v4 = swift_task_alloc();
  *(v0 + 64) = v4;
  v5 = *(v0 + 24);
  *(v4 + 16) = v1;
  *(v4 + 24) = v5;
  *(v4 + 40) = v3;
  *(v4 + 48) = v2;
  sub_1B4E61390(v1, MEMORY[0x1E69E7CA8] + 8);
  v6 = *(MEMORY[0x1E69E88A0] + 4);
  v7 = swift_task_alloc();
  *(v0 + 72) = v7;
  *v7 = v0;
  v7[1] = sub_1B4E65358;
  v8 = *(v0 + 56);
  v9 = *(v0 + 16);

  return MEMORY[0x1EEE6DD58](v9, v8);
}

void sub_1B4E65358()
{
  v2 = *v1;
  v3 = *(*v1 + 72);
  v4 = *v1;

  if (v0)
  {
  }

  else
  {
    v5 = *(v2 + 64);

    v6 = *(v4 + 8);

    v6();
  }
}