uint64_t sub_21E04F108(uint64_t a1)
{
  v14[0] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAB490);
  v2 = MEMORY[0x277D83E88];
  if (!swift_dynamicCast())
  {
    v16 = 0;
    memset(v15, 0, sizeof(v15));
    v5 = &unk_27CEAB498;
    v6 = v15;
LABEL_6:
    sub_21DF23614(v6, v5);
    v17[3] = v2;
    v17[4] = sub_21E05B090();
    v17[0] = a1;
    v7 = __swift_project_boxed_opaque_existential_1(v17, v2);
    v8 = MEMORY[0x28223BE20](v7);
    (*(v10 + 16))(v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v8);
    v4 = sub_21E142254();
    goto LABEL_7;
  }

  sub_21DF0DBF0(v15, v17);
  sub_21DFA7E94(v17, v14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAB4A8);
  if ((swift_dynamicCast() & 1) == 0)
  {
    __swift_destroy_boxed_opaque_existential_0(v17);
    v13 = 0;
    memset(v12, 0, sizeof(v12));
    v5 = &unk_27CEAB4B0;
    v6 = v12;
    goto LABEL_6;
  }

  sub_21DF0DBF0(v12, v15);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAAEF8);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_21E145380;
  sub_21DFA7E94(v15, v3 + 32);
  v4 = sub_21E142144();

  __swift_destroy_boxed_opaque_existential_0(v15);
LABEL_7:
  __swift_destroy_boxed_opaque_existential_0(v17);
  return v4;
}

uint64_t sub_21E04F36C(uint64_t a1)
{
  v14[0] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAB490);
  v2 = MEMORY[0x277D83B88];
  if (!swift_dynamicCast())
  {
    v16 = 0;
    memset(v15, 0, sizeof(v15));
    v5 = &unk_27CEAB498;
    v6 = v15;
LABEL_6:
    sub_21DF23614(v6, v5);
    v17[3] = v2;
    v17[4] = sub_21E05A918();
    v17[0] = a1;
    v7 = __swift_project_boxed_opaque_existential_1(v17, v2);
    v8 = MEMORY[0x28223BE20](v7);
    (*(v10 + 16))(v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v8);
    v4 = sub_21E142254();
    goto LABEL_7;
  }

  sub_21DF0DBF0(v15, v17);
  sub_21DFA7E94(v17, v14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAB4A8);
  if ((swift_dynamicCast() & 1) == 0)
  {
    __swift_destroy_boxed_opaque_existential_0(v17);
    v13 = 0;
    memset(v12, 0, sizeof(v12));
    v5 = &unk_27CEAB4B0;
    v6 = v12;
    goto LABEL_6;
  }

  sub_21DF0DBF0(v12, v15);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAAEF8);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_21E145380;
  sub_21DFA7E94(v15, v3 + 32);
  v4 = sub_21E142144();

  __swift_destroy_boxed_opaque_existential_0(v15);
LABEL_7:
  __swift_destroy_boxed_opaque_existential_0(v17);
  return v4;
}

uint64_t ConfigSlider.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v261 = a2;
  v204 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAB2B0);
  MEMORY[0x28223BE20](v204);
  v205 = (&v200 - v4);
  v228 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAB2B8);
  MEMORY[0x28223BE20](v228);
  v206 = &v200 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAB2C0);
  MEMORY[0x28223BE20](v6 - 8);
  v210 = &v200 - v7;
  v209 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAB108);
  v208 = *(v209 - 8);
  MEMORY[0x28223BE20](v209);
  v211 = &v200 - v8;
  v224 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAB2C8);
  MEMORY[0x28223BE20](v224);
  v226 = &v200 - v9;
  v212 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAB2D0);
  MEMORY[0x28223BE20](v212);
  v213 = &v200 - v10;
  v225 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAB2D8);
  MEMORY[0x28223BE20](v225);
  v214 = &v200 - v11;
  v260 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAB2E0);
  MEMORY[0x28223BE20](v260);
  v229 = &v200 - v12;
  v223 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAB2E8);
  MEMORY[0x28223BE20](v223);
  v215 = (&v200 - v13);
  v227 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAB2F0);
  v217 = *(v227 - 8);
  MEMORY[0x28223BE20](v227);
  v216 = &v200 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAB2F8);
  MEMORY[0x28223BE20](v15 - 8);
  v202 = &v200 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v219 = &v200 - v18;
  v221 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAB300);
  v220 = *(v221 - 8);
  MEMORY[0x28223BE20](v221);
  v203 = &v200 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v222 = &v200 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAB308);
  MEMORY[0x28223BE20](v22 - 8);
  v233 = &v200 - v23;
  v232 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAB310);
  v231 = *(v232 - 8);
  MEMORY[0x28223BE20](v232);
  v234 = &v200 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAB318);
  MEMORY[0x28223BE20](v25 - 8);
  v238 = &v200 - v26;
  v237 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAB320);
  v236 = *(v237 - 8);
  MEMORY[0x28223BE20](v237);
  v239 = &v200 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAB328);
  MEMORY[0x28223BE20](v28 - 8);
  v243 = &v200 - v29;
  v242 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAB330);
  v241 = *(v242 - 8);
  MEMORY[0x28223BE20](v242);
  v244 = &v200 - v30;
  v257 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAB338);
  MEMORY[0x28223BE20](v257);
  v259 = &v200 - v31;
  v248 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAB340);
  MEMORY[0x28223BE20](v248);
  v251 = &v200 - v32;
  v246 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAB348);
  MEMORY[0x28223BE20](v246);
  v247 = &v200 - v33;
  v249 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAB350);
  MEMORY[0x28223BE20](v249);
  v250 = &v200 - v34;
  v258 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAB358);
  MEMORY[0x28223BE20](v258);
  v255 = &v200 - v35;
  v245 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAB360);
  MEMORY[0x28223BE20](v245);
  v256 = (&v200 - v36);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAB368);
  v253 = *(v37 - 8);
  v254 = v37;
  MEMORY[0x28223BE20](v37);
  v252 = &v200 - v38;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAB370);
  MEMORY[0x28223BE20](v39 - 8);
  v41 = &v200 - v40;
  v42 = *(a1 - 8);
  MEMORY[0x28223BE20](v43);
  v201 = &v200 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v45);
  v207 = &v200 - v46;
  MEMORY[0x28223BE20](v47);
  v218 = &v200 - v48;
  MEMORY[0x28223BE20](v49);
  v230 = &v200 - v50;
  MEMORY[0x28223BE20](v51);
  v235 = &v200 - v52;
  MEMORY[0x28223BE20](v53);
  v55 = &v200 - v54;
  MEMORY[0x28223BE20](v56);
  v58 = &v200 - v57;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAB378);
  v60 = *(v59 - 8);
  v61 = MEMORY[0x28223BE20](v59);
  v63 = &v200 - v62;
  v64 = v2;
  v240 = *(v42 + 16);
  v240(v58, v2, a1, v61);
  v65 = swift_dynamicCast();
  v66 = *(v60 + 56);
  if (v65)
  {
    v66(v41, 0, 1, v59);
    v200 = v63;
    sub_21DF3DE9C(v41, v63, &qword_27CEAB378);
    v67 = sub_21E1401C4();
    v68 = v256;
    *v256 = v67;
    *(v68 + 8) = 0;
    *(v68 + 16) = 1;
    v69 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CEAB3C0);
    v70 = sub_21E055948(v63, (v68 + *(v69 + 44)));
    MEMORY[0x28223BE20](v70);
    *(&v200 - 2) = v63;
    v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7CE0);
    v72 = sub_21DF23E5C(&qword_27CEAB3A8, &qword_27CEAB360);
    v73 = sub_21DF23E5C(&qword_27CEA7CF8, &qword_27CEA7CE0);
    v74 = v252;
    v75 = v245;
    sub_21E140EA4();
    sub_21DF23614(v68, &qword_27CEAB360);
    v77 = v253;
    v76 = v254;
    (*(v253 + 16))(v247, v74, v254);
    swift_storeEnumTagMultiPayload();
    v262 = v75;
    v263 = v71;
    v264 = v72;
    v265 = v73;
    swift_getOpaqueTypeConformance2();
    v78 = v250;
    sub_21E1402F4();
    sub_21DF236C0(v78, v251, &qword_27CEAB350);
    swift_storeEnumTagMultiPayload();
    sub_21E0522A0();
    v79 = v255;
    sub_21E1402F4();
    sub_21DF23614(v78, &qword_27CEAB350);
    sub_21DF236C0(v79, v259, &qword_27CEAB358);
    swift_storeEnumTagMultiPayload();
    sub_21E05221C();
    sub_21E0523F4();
    sub_21E1402F4();
    sub_21DF23614(v79, &qword_27CEAB358);
    (*(v77 + 8))(v74, v76);
    return sub_21DF23614(v200, &qword_27CEAB378);
  }

  v66(v41, 1, 1, v59);
  sub_21DF23614(v41, &qword_27CEAB370);
  v81 = a1;
  v82 = v240;
  (v240)(v55, v2, a1);
  v83 = v243;
  v84 = v242;
  v85 = swift_dynamicCast();
  v86 = *(v241 + 56);
  if (v85)
  {
    v86(v83, 0, 1, v84);
    v87 = v244;
    sub_21DF3DE9C(v83, v244, &qword_27CEAB330);
    v88 = sub_21E1401C4();
    v89 = v256;
    *v256 = v88;
    *(v89 + 8) = 0;
    *(v89 + 16) = 1;
    v90 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CEAB3C0);
    sub_21E0553A0(v87, (v89 + *(v90 + 44)));
    MEMORY[0x28223BE20](v91);
    *(&v200 - 2) = v87;
    v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7CE0);
    v93 = sub_21DF23E5C(&qword_27CEAB3A8, &qword_27CEAB360);
    v94 = sub_21DF23E5C(&qword_27CEA7CF8, &qword_27CEA7CE0);
    v95 = v252;
    v96 = v245;
    sub_21E140EA4();
    sub_21DF23614(v89, &qword_27CEAB360);
    v98 = v253;
    v97 = v254;
    (*(v253 + 16))(v247, v95, v254);
    swift_storeEnumTagMultiPayload();
    v262 = v96;
    v263 = v92;
    v264 = v93;
    v265 = v94;
    swift_getOpaqueTypeConformance2();
    v99 = v250;
    sub_21E1402F4();
    sub_21DF236C0(v99, v251, &qword_27CEAB350);
    swift_storeEnumTagMultiPayload();
    sub_21E0522A0();
    v100 = v255;
    sub_21E1402F4();
    sub_21DF23614(v99, &qword_27CEAB350);
    sub_21DF236C0(v100, v259, &qword_27CEAB358);
    swift_storeEnumTagMultiPayload();
    sub_21E05221C();
    sub_21E0523F4();
    sub_21E1402F4();
    sub_21DF23614(v100, &qword_27CEAB358);
    (*(v98 + 8))(v95, v97);
    return sub_21DF23614(v244, &qword_27CEAB330);
  }

  v86(v83, 1, 1, v84);
  sub_21DF23614(v83, &qword_27CEAB328);
  v82(v235, v2, v81);
  v101 = v238;
  v102 = v237;
  v103 = swift_dynamicCast();
  v104 = *(v236 + 56);
  v105 = v256;
  if (v103)
  {
    v104(v101, 0, 1, v102);
    v106 = v239;
    sub_21DF3DE9C(v101, v239, &qword_27CEAB320);
    *v105 = sub_21E1401C4();
    *(v105 + 8) = 0;
    *(v105 + 16) = 1;
    v107 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CEAB3C0);
    v108 = sub_21E054E20(v106, (v105 + *(v107 + 44)));
    MEMORY[0x28223BE20](v108);
    *(&v200 - 2) = v106;
    v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7CE0);
    v110 = sub_21DF23E5C(&qword_27CEAB3A8, &qword_27CEAB360);
    v111 = sub_21DF23E5C(&qword_27CEA7CF8, &qword_27CEA7CE0);
    v112 = v252;
    v113 = v245;
    sub_21E140EA4();
    sub_21DF23614(v105, &qword_27CEAB360);
    v115 = v253;
    v114 = v254;
    (*(v253 + 16))(v247, v112, v254);
    swift_storeEnumTagMultiPayload();
    v262 = v113;
    v263 = v109;
    v264 = v110;
    v265 = v111;
    swift_getOpaqueTypeConformance2();
    v116 = v250;
    sub_21E1402F4();
    sub_21DF236C0(v116, v251, &qword_27CEAB350);
    swift_storeEnumTagMultiPayload();
    sub_21E0522A0();
    v117 = v255;
    sub_21E1402F4();
    sub_21DF23614(v116, &qword_27CEAB350);
    sub_21DF236C0(v117, v259, &qword_27CEAB358);
    swift_storeEnumTagMultiPayload();
    sub_21E05221C();
    sub_21E0523F4();
    sub_21E1402F4();
    sub_21DF23614(v117, &qword_27CEAB358);
    (*(v115 + 8))(v112, v114);
    return sub_21DF23614(v239, &qword_27CEAB320);
  }

  v104(v101, 1, 1, v102);
  sub_21DF23614(v101, &qword_27CEAB318);
  v82(v230, v64, v81);
  v118 = v233;
  v119 = v232;
  v120 = swift_dynamicCast();
  v121 = *(v231 + 56);
  if (v120)
  {
    v121(v118, 0, 1, v119);
    v122 = v234;
    sub_21DF3DE9C(v118, v234, &qword_27CEAB310);
    *v105 = sub_21E1401C4();
    *(v105 + 8) = 0;
    *(v105 + 16) = 1;
    v123 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CEAB3C0);
    sub_21E054878(v122, (v105 + *(v123 + 44)));
    MEMORY[0x28223BE20](v124);
    *(&v200 - 2) = v122;
    v125 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7CE0);
    v126 = sub_21DF23E5C(&qword_27CEAB3A8, &qword_27CEAB360);
    v127 = sub_21DF23E5C(&qword_27CEA7CF8, &qword_27CEA7CE0);
    v128 = v252;
    v129 = v245;
    sub_21E140EA4();
    sub_21DF23614(v105, &qword_27CEAB360);
    v131 = v253;
    v130 = v254;
    (*(v253 + 16))(v247, v128, v254);
    swift_storeEnumTagMultiPayload();
    v262 = v129;
    v263 = v125;
    v264 = v126;
    v265 = v127;
    swift_getOpaqueTypeConformance2();
    v132 = v250;
    sub_21E1402F4();
    sub_21DF236C0(v132, v251, &qword_27CEAB350);
    swift_storeEnumTagMultiPayload();
    sub_21E0522A0();
    v133 = v255;
    sub_21E1402F4();
    sub_21DF23614(v132, &qword_27CEAB350);
    sub_21DF236C0(v133, v259, &qword_27CEAB358);
    swift_storeEnumTagMultiPayload();
    sub_21E05221C();
    sub_21E0523F4();
    sub_21E1402F4();
    sub_21DF23614(v133, &qword_27CEAB358);
    (*(v131 + 8))(v128, v130);
    return sub_21DF23614(v234, &qword_27CEAB310);
  }

  v121(v118, 1, 1, v119);
  sub_21DF23614(v118, &qword_27CEAB308);
  v82(v218, v64, v81);
  v134 = v219;
  v135 = v221;
  v136 = swift_dynamicCast();
  v137 = *(v220 + 56);
  if (v136)
  {
    v137(v134, 0, 1, v135);
    v138 = v222;
    sub_21DF3DE9C(v134, v222, &qword_27CEAB300);
    v139 = sub_21E1401C4();
    v140 = v215;
    *v215 = v139;
    *(v140 + 8) = 0;
    *(v140 + 16) = 1;
    v141 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAB3B8);
    v142 = sub_21E0588D4(v138, (v140 + *(v141 + 44)));
    MEMORY[0x28223BE20](v142);
    *(&v200 - 2) = v138;
    v143 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7CE0);
    v144 = sub_21DF23E5C(&qword_27CEAB380, &qword_27CEAB2E8);
    v145 = sub_21DF23E5C(&qword_27CEA7CF8, &qword_27CEA7CE0);
    v146 = v216;
    v147 = v223;
    sub_21E140EA4();
    sub_21DF23614(v140, &qword_27CEAB2E8);
    v148 = v217;
    v149 = v227;
    (*(v217 + 16))(v213, v146, v227);
    swift_storeEnumTagMultiPayload();
    v262 = v147;
    v263 = v143;
    v264 = v144;
    v265 = v145;
    swift_getOpaqueTypeConformance2();
    v150 = v214;
    sub_21E1402F4();
    sub_21DF236C0(v150, v226, &qword_27CEAB2D8);
    swift_storeEnumTagMultiPayload();
    sub_21E051F6C();
    sub_21E0520C0();
    v151 = v229;
    sub_21E1402F4();
    sub_21DF23614(v150, &qword_27CEAB2D8);
    sub_21DF236C0(v151, v259, &qword_27CEAB2E0);
    swift_storeEnumTagMultiPayload();
    sub_21E05221C();
    sub_21E0523F4();
    sub_21E1402F4();
    sub_21DF23614(v151, &qword_27CEAB2E0);
    (*(v148 + 8))(v146, v149);
    v152 = &v254;
    return sub_21DF23614(*(v152 - 32), &qword_27CEAB300);
  }

  v137(v134, 1, 1, v135);
  sub_21DF23614(v134, &qword_27CEAB2F8);
  v82(v207, v64, v81);
  v153 = v210;
  v154 = v209;
  v155 = swift_dynamicCast();
  v156 = *(v208 + 56);
  if (v155)
  {
    v156(v153, 0, 1, v154);
    v157 = v211;
    sub_21DF3DE9C(v153, v211, &qword_27CEAB108);
    v158 = sub_21E1401C4();
    v159 = v215;
    *v215 = v158;
    *(v159 + 8) = 0;
    *(v159 + 16) = 1;
    v160 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAB3B8);
    v161 = sub_21E058470(v157, (v159 + *(v160 + 44)));
    MEMORY[0x28223BE20](v161);
    *(&v200 - 2) = v157;
    v162 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7CE0);
    v163 = sub_21DF23E5C(&qword_27CEAB380, &qword_27CEAB2E8);
    v164 = sub_21DF23E5C(&qword_27CEA7CF8, &qword_27CEA7CE0);
    v165 = v216;
    v166 = v223;
    sub_21E140EA4();
    sub_21DF23614(v159, &qword_27CEAB2E8);
    v167 = v217;
    v168 = v227;
    (*(v217 + 16))(v213, v165, v227);
    swift_storeEnumTagMultiPayload();
    v262 = v166;
    v263 = v162;
    v264 = v163;
    v265 = v164;
    swift_getOpaqueTypeConformance2();
    v169 = v214;
    sub_21E1402F4();
    sub_21DF236C0(v169, v226, &qword_27CEAB2D8);
    swift_storeEnumTagMultiPayload();
    sub_21E051F6C();
    sub_21E0520C0();
    v170 = v229;
    sub_21E1402F4();
    sub_21DF23614(v169, &qword_27CEAB2D8);
    sub_21DF236C0(v170, v259, &qword_27CEAB2E0);
    swift_storeEnumTagMultiPayload();
    sub_21E05221C();
    sub_21E0523F4();
    sub_21E1402F4();
    sub_21DF23614(v170, &qword_27CEAB2E0);
    (*(v167 + 8))(v165, v168);
    return sub_21DF23614(v211, &qword_27CEAB108);
  }

  else
  {
    v156(v153, 1, 1, v154);
    sub_21DF23614(v153, &qword_27CEAB2C0);
    v82(v201, v64, v81);
    v171 = v202;
    if (swift_dynamicCast())
    {
      v137(v171, 0, 1, v135);
      v172 = v171;
      v173 = v203;
      sub_21DF3DE9C(v172, v203, &qword_27CEAB300);
      v174 = sub_21E1401C4();
      v175 = v215;
      *v215 = v174;
      *(v175 + 8) = 0;
      *(v175 + 16) = 1;
      v176 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAB3B8);
      v177 = sub_21E0588D4(v173, (v175 + *(v176 + 44)));
      MEMORY[0x28223BE20](v177);
      *(&v200 - 2) = v173;
      v178 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7CE0);
      v179 = sub_21DF23E5C(&qword_27CEAB380, &qword_27CEAB2E8);
      v180 = sub_21DF23E5C(&qword_27CEA7CF8, &qword_27CEA7CE0);
      v181 = v216;
      v182 = v223;
      sub_21E140EA4();
      sub_21DF23614(v175, &qword_27CEAB2E8);
      v183 = v217;
      v184 = v227;
      (*(v217 + 16))(v205, v181, v227);
      swift_storeEnumTagMultiPayload();
      v262 = v182;
      v263 = v178;
      v264 = v179;
      v265 = v180;
      swift_getOpaqueTypeConformance2();
      v185 = v206;
      sub_21E1402F4();
      sub_21DF236C0(v185, v226, &qword_27CEAB2B8);
      swift_storeEnumTagMultiPayload();
      sub_21E051F6C();
      sub_21E0520C0();
      v186 = v229;
      sub_21E1402F4();
      sub_21DF23614(v185, &qword_27CEAB2B8);
      sub_21DF236C0(v186, v259, &qword_27CEAB2E0);
      swift_storeEnumTagMultiPayload();
      sub_21E05221C();
      sub_21E0523F4();
      sub_21E1402F4();
      sub_21DF23614(v186, &qword_27CEAB2E0);
      (*(v183 + 8))(v181, v184);
      v152 = &v235;
      return sub_21DF23614(*(v152 - 32), &qword_27CEAB300);
    }

    v137(v171, 1, 1, v135);
    sub_21DF23614(v171, &qword_27CEAB2F8);
    v262 = 0;
    v263 = 0xE000000000000000;
    sub_21E142884();

    v262 = 0xD00000000000001CLL;
    v263 = 0x800000021E15D600;
    MEMORY[0x223D52A60](*(v64 + *(v81 + 72)), *(v64 + *(v81 + 72) + 8));
    v262 = sub_21E141434();
    v187 = sub_21E140C24();
    v189 = v188;
    v191 = v190;
    v193 = v192;

    v194 = v205;
    *v205 = v187;
    v194[1] = v189;
    *(v194 + 16) = v191 & 1;
    v194[3] = v193;
    swift_storeEnumTagMultiPayload();
    sub_21DF42BEC(v187, v189, v191 & 1);

    v195 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA7CE0);
    v196 = sub_21DF23E5C(&qword_27CEAB380, &qword_27CEAB2E8);
    v197 = sub_21DF23E5C(&qword_27CEA7CF8, &qword_27CEA7CE0);
    v262 = v223;
    v263 = v195;
    v264 = v196;
    v265 = v197;
    swift_getOpaqueTypeConformance2();
    v198 = v206;
    sub_21E1402F4();
    sub_21DF236C0(v198, v226, &qword_27CEAB2B8);
    swift_storeEnumTagMultiPayload();
    sub_21E051F6C();
    sub_21E0520C0();
    v199 = v229;
    sub_21E1402F4();
    sub_21DF23614(v198, &qword_27CEAB2B8);
    sub_21DF236C0(v199, v259, &qword_27CEAB2E0);
    swift_storeEnumTagMultiPayload();
    sub_21E05221C();
    sub_21E0523F4();
    sub_21E1402F4();
    sub_21DF3DE8C(v187, v189, v191 & 1);

    return sub_21DF23614(v199, &qword_27CEAB2E0);
  }
}

unint64_t sub_21E051F6C()
{
  result = qword_27CEAB388;
  if (!qword_27CEAB388)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEAB2D8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEAB2E8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA7CE0);
    sub_21DF23E5C(&qword_27CEAB380, &qword_27CEAB2E8);
    sub_21DF23E5C(&qword_27CEA7CF8, &qword_27CEA7CE0);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEAB388);
  }

  return result;
}

unint64_t sub_21E0520C0()
{
  result = qword_27CEAB390;
  if (!qword_27CEAB390)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEAB2B8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEAB2E8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA7CE0);
    sub_21DF23E5C(&qword_27CEAB380, &qword_27CEAB2E8);
    sub_21DF23E5C(&qword_27CEA7CF8, &qword_27CEA7CE0);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEAB390);
  }

  return result;
}

unint64_t sub_21E05221C()
{
  result = qword_27CEAB398;
  if (!qword_27CEAB398)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEAB358);
    sub_21E0522A0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEAB398);
  }

  return result;
}

unint64_t sub_21E0522A0()
{
  result = qword_27CEAB3A0;
  if (!qword_27CEAB3A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEAB350);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEAB360);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA7CE0);
    sub_21DF23E5C(&qword_27CEAB3A8, &qword_27CEAB360);
    sub_21DF23E5C(&qword_27CEA7CF8, &qword_27CEA7CE0);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEAB3A0);
  }

  return result;
}

unint64_t sub_21E0523F4()
{
  result = qword_27CEAB3B0;
  if (!qword_27CEAB3B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEAB2E0);
    sub_21E051F6C();
    sub_21E0520C0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEAB3B0);
  }

  return result;
}

uint64_t sub_21E052484()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAB310);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAB4D8);
  result = MEMORY[0x223D52200](&v18);
  v4 = *(v0 + *(v1 + 68));
  if (v4 == v18)
  {
    return 0;
  }

  v5 = (v0 + *(v1 + 76));
  v7 = *v5;
  v6 = v5[1];
  v11 = v6 >= *v5;
  v8 = v6 - *v5;
  if (!v11)
  {
    __break(1u);
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v9 = v8 / 0x64;
  v10 = v4 - v8 / 0x64;
  if (v4 < v9)
  {
    goto LABEL_34;
  }

  if (v10 < v7)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v11 = v18 < v7 || v18 >= v10;
  if (!v11)
  {
    v18 = 11560;
    v19 = 0xE200000000000000;
    MEMORY[0x223D52200](&v17, v2);
    result = v4 - v17;
    if (v4 >= v17)
    {
LABEL_32:
      v16 = sub_21E04EC40(result);
      MEMORY[0x223D52A60](v16);

      MEMORY[0x223D52A60](41, 0xE100000000000000);
      return v18;
    }

    __break(1u);
LABEL_31:
    v18 = 11048;
    v19 = 0xE200000000000000;
    MEMORY[0x223D52200](&v17, v2);
    result = v17 - v4;
    if (v17 < v4)
    {
LABEL_39:
      __break(1u);
      return result;
    }

    goto LABEL_32;
  }

  v12 = v4 + v9;
  if (__CFADD__(v4, v9))
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  if (v6 < v12)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  if (v18 >= v12 && v6 >= v18)
  {
    goto LABEL_31;
  }

  if (v12 < v10)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  if (v18 < v10 || v18 >= v12)
  {
    return 1066895586;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_21E052658()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAB320);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAB4C8);
  result = MEMORY[0x223D52200](&v18);
  v4 = *(v0 + *(v1 + 68));
  if (v4 == v18)
  {
    return 0;
  }

  v5 = (v0 + *(v1 + 76));
  v7 = *v5;
  v6 = v5[1];
  v8 = v6 - *v5;
  if (v6 < v7)
  {
    __break(1u);
    goto LABEL_34;
  }

  v9 = v8 / 0x64;
  v10 = v4 - v8 / 0x64;
  if (v4 < v9)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  if (v10 < v7)
  {
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  if (v18 >= v7 && v18 < v10)
  {
    v18 = 11560;
    v19 = 0xE200000000000000;
    MEMORY[0x223D52200](&v17, v2);
    LODWORD(result) = v4 - v17;
    if (v4 >= v17)
    {
      goto LABEL_31;
    }

    __break(1u);
LABEL_30:
    v18 = 11048;
    v19 = 0xE200000000000000;
    MEMORY[0x223D52200](&v17, v2);
    result = v17 - v4;
    if (v17 >= v4)
    {
LABEL_31:
      v16 = sub_21E04EEA4(result);
      MEMORY[0x223D52A60](v16);

      MEMORY[0x223D52A60](41, 0xE100000000000000);
      return v18;
    }

LABEL_39:
    __break(1u);
    return result;
  }

  v12 = v4 + v9;
  if (__CFADD__(v4, v9))
  {
    goto LABEL_36;
  }

  if (v6 < v12)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  if (v18 >= v12 && v6 >= v18)
  {
    goto LABEL_30;
  }

  if (v12 < v10)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  if (v18 < v10 || v18 >= v12)
  {
    return 1066895586;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_21E052820()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAB330);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAB4B8);
  result = MEMORY[0x223D52200](&v18);
  v4 = *(v0 + *(v1 + 68));
  if (v4 == v18)
  {
    return 0;
  }

  v5 = (v0 + *(v1 + 76));
  v7 = *v5;
  v6 = v5[1];
  v11 = v6 >= *v5;
  v8 = v6 - *v5;
  if (!v11)
  {
    __break(1u);
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v9 = v8 / 0x64;
  v10 = v4 - v8 / 0x64;
  if (v4 < v9)
  {
    goto LABEL_34;
  }

  if (v10 < v7)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v11 = v18 < v7 || v18 >= v10;
  if (!v11)
  {
    v18 = 11560;
    v19 = 0xE200000000000000;
    MEMORY[0x223D52200](&v17, v2);
    result = v4 - v17;
    if (v4 >= v17)
    {
LABEL_32:
      v16 = sub_21E04F108(result);
      MEMORY[0x223D52A60](v16);

      MEMORY[0x223D52A60](41, 0xE100000000000000);
      return v18;
    }

    __break(1u);
LABEL_31:
    v18 = 11048;
    v19 = 0xE200000000000000;
    MEMORY[0x223D52200](&v17, v2);
    result = v17 - v4;
    if (v17 < v4)
    {
LABEL_39:
      __break(1u);
      return result;
    }

    goto LABEL_32;
  }

  v12 = v4 + v9;
  if (__CFADD__(v4, v9))
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  if (v6 < v12)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  if (v18 >= v12 && v6 >= v18)
  {
    goto LABEL_31;
  }

  if (v12 < v10)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  if (v18 < v10 || v18 >= v12)
  {
    return 1066895586;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_21E0529F4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAB378);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6F58);
  result = MEMORY[0x223D52200](&v19);
  v4 = *(v0 + *(v1 + 68));
  if (v4 == v19)
  {
    return 0;
  }

  v5 = (v0 + *(v1 + 76));
  v7 = *v5;
  v6 = v5[1];
  v8 = __OFSUB__(v6, *v5);
  v9 = v6 - *v5;
  if (v8)
  {
    __break(1u);
    goto LABEL_35;
  }

  v10 = v9 / 100;
  v11 = v4 - v9 / 100;
  if (__OFSUB__(v4, v10))
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  if (v11 < v7)
  {
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  if (v19 >= v7 && v19 < v11)
  {
    v19 = 11560;
    v20 = 0xE200000000000000;
    MEMORY[0x223D52200](&v18, v2);
    result = v4 - v18;
    if (!__OFSUB__(v4, v18))
    {
      goto LABEL_32;
    }

    __break(1u);
LABEL_31:
    v19 = 11048;
    v20 = 0xE200000000000000;
    MEMORY[0x223D52200](&v18, v2);
    result = v18 - v4;
    if (!__OFSUB__(v18, v4))
    {
LABEL_32:
      v17 = sub_21E04F36C(result);
      MEMORY[0x223D52A60](v17);

      MEMORY[0x223D52A60](41, 0xE100000000000000);
      return v19;
    }

LABEL_40:
    __break(1u);
    return result;
  }

  v13 = v4 + v10;
  if (__OFADD__(v4, v10))
  {
    goto LABEL_37;
  }

  if (v6 < v13)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  if (v19 >= v13 && v6 >= v19)
  {
    goto LABEL_31;
  }

  if (v13 < v11)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  if (v19 < v11 || v19 >= v13)
  {
    return 1066895586;
  }

  else
  {
    return 0;
  }
}

void *sub_21E052BCC()
{
  v1 = sub_21E141424();
  v61 = *(v1 - 8);
  v62 = v1;
  MEMORY[0x28223BE20](v1);
  v63 = &v56 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_21E13FF94();
  v64 = *(v3 - 8);
  v65 = v3;
  MEMORY[0x28223BE20](v3);
  v60 = &v56 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v66 = &v56 - v6;
  v7 = sub_21E13F444();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v56 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v56 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAB320);
  *&v15 = v14[16];
  v16 = *(v0 + v14[17]);
  v17 = (v0 + v14[19]);
  v19 = *v17;
  v18 = v17[1];
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAB4C8);
  v68 = v15;
  MEMORY[0x223D52200]((v69 + 4));
  if (HIDWORD(v69[0]) == v19)
  {
    v20 = 0.0;
    v21 = 0.0;
    if (v19 == v16)
    {
      goto LABEL_24;
    }

LABEL_3:
    v20 = 0.5;
    v22 = 0.0;
    if (v18 == v16)
    {
      goto LABEL_24;
    }

    goto LABEL_19;
  }

  if (v16 == v19)
  {
    if (HIDWORD(v69[0]) == v16)
    {
      v21 = 0.5;
      v20 = 0.0;
      goto LABEL_24;
    }

    v20 = 0.5;
    v21 = 0.5;
    v22 = 0.5;
    if (v18 == v16)
    {
      goto LABEL_24;
    }

LABEL_19:
    v24 = (HIDWORD(v69[0]) - v16) / (v18 - v16);
    v20 = 1.0;
    if (v24 < 1.0)
    {
      if (v24 < 0.0)
      {
        v20 = 0.0;
      }

      else
      {
        v20 = (HIDWORD(v69[0]) - v16) / (v18 - v16);
      }
    }

    goto LABEL_23;
  }

  v23 = (v16 - v19);
  v22 = (HIDWORD(v69[0]) - v19) / v23;
  v21 = 1.0;
  v20 = 0.0;
  if (v22 >= 1.0)
  {
    if (HIDWORD(v69[0]) == v16)
    {
      goto LABEL_24;
    }

    v20 = 0.5;
    v22 = 1.0;
    if (v18 == v16)
    {
      goto LABEL_24;
    }

    goto LABEL_19;
  }

  if (v22 >= 0.0)
  {
    if (HIDWORD(v69[0]) == v16)
    {
LABEL_23:
      v21 = v22;
      goto LABEL_24;
    }

    v20 = 0.5;
    v21 = (HIDWORD(v69[0]) - v19) / v23;
    if (v18 == v16)
    {
      goto LABEL_24;
    }

    goto LABEL_19;
  }

  v21 = 0.0;
  if (HIDWORD(v69[0]) != v16)
  {
    goto LABEL_3;
  }

LABEL_24:
  sub_21E04E2E8(v13);
  (*(v8 + 104))(v10, *MEMORY[0x277CDF3D0], v7);
  v25 = sub_21E13F434();
  v26 = *(v8 + 8);
  v26(v10, v7);
  v26(v13, v7);
  if (v25)
  {
    v27 = sub_21E141484();
  }

  else
  {
    v27 = _s20VisualIntelligenceUI17PinStyleProvidingPAAE15foregroundColor9isEnabled05SwiftC00H0VSb_tF_0();
  }

  v28 = v27;
  result = MEMORY[0x223D52200](v69, v67);
  v30 = v19 - 2;
  if (v19 < 2)
  {
    __break(1u);
    goto LABEL_64;
  }

  if (!v16)
  {
LABEL_64:
    __break(1u);
    goto LABEL_65;
  }

  v31 = v16 - 1;
  if (v16 - 1 < v30)
  {
LABEL_65:
    __break(1u);
LABEL_66:
    __break(1u);
    goto LABEL_67;
  }

  if (LODWORD(v69[0]) >= v30 && LODWORD(v69[0]) < v31)
  {
    v68 = 1.0 - v21;
    sub_21E04E4E8(&qword_27CEAB320, v66);
    sub_21E141534();
    sub_21E141554();
    v58 = v32;
    v57 = v32;
    sub_21E141574();
    v59 = v33;
    *&v60 = v33;
    sub_21E141564();
    LODWORD(v67) = v34;
    v35 = *MEMORY[0x277CE0EE0];
    v36 = v62;
    v37 = *(v61 + 104);
    v38 = v63;
    v37(v63, v35, v62);
    sub_21E141594();
    sub_21E141534();
    sub_21E141554();
    sub_21E141574();
    sub_21E141564();
    if (v39.n128_f32[0] >= *&v67)
    {
      v51 = *&v67;
    }

    else
    {
      v51 = v39.n128_f32[0];
    }

    if (*&v67 > v39.n128_f32[0])
    {
      v52 = *&v67;
    }

    else
    {
      v52 = v39.n128_f32[0];
    }

    if (v51 != v52)
    {
      v39.n128_f64[0] = v51 + v68 / (v52 - v51);
    }

    (v37)(v38, v35, v36, v39);
    v53 = sub_21E141594();

    (*(v64 + 8))(v66, v65);
    return v53;
  }

  if (v16 == -1)
  {
    goto LABEL_66;
  }

  v40 = v18 + 2;
  if (v18 >= 0xFFFFFFFE)
  {
LABEL_67:
    __break(1u);
    goto LABEL_68;
  }

  v41 = v16 + 1;
  if (v40 < v16 + 1)
  {
LABEL_68:
    __break(1u);
    goto LABEL_69;
  }

  if (LODWORD(v69[0]) >= v41 && v40 >= LODWORD(v69[0]))
  {
    v68 = v20;
    sub_21E04E4E8(&qword_27CEAB320, v60);
    sub_21E141534();
    sub_21E141554();
    v58 = v42;
    v57 = v42;
    sub_21E141574();
    v59 = v43;
    *&v66 = v43;
    sub_21E141564();
    LODWORD(v67) = v44;
    v45 = *MEMORY[0x277CE0EE0];
    v46 = v62;
    v47 = *(v61 + 104);
    v48 = v63;
    v47(v63, v45, v62);
    sub_21E141594();
    sub_21E141534();
    sub_21E141554();
    sub_21E141574();
    sub_21E141564();
    if (v49.n128_f32[0] >= *&v67)
    {
      v54 = *&v67;
    }

    else
    {
      v54 = v49.n128_f32[0];
    }

    if (*&v67 > v49.n128_f32[0])
    {
      v55 = *&v67;
    }

    else
    {
      v55 = v49.n128_f32[0];
    }

    if (v54 != v55)
    {
      v49.n128_f64[0] = v54 + v68 / (v55 - v54);
    }

    (v47)(v48, v45, v46, v49);
    v53 = sub_21E141594();

    (*(v64 + 8))(v60, v65);
    return v53;
  }

  if (v41 >= v31)
  {
    if (LODWORD(v69[0]) < v31 || LODWORD(v69[0]) >= v41)
    {
      v50 = sub_21E1414F4();

      return v50;
    }

    return v28;
  }

LABEL_69:
  __break(1u);
  return result;
}

int *sub_21E053540(uint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v80 = *&a4;
  v8 = v4;
  v9 = sub_21E141424();
  v76 = *(v9 - 8);
  v77 = v9;
  MEMORY[0x28223BE20](v9);
  v78 = &v70 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_21E13FF94();
  v79 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v13 = &v70 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  *&v72 = &v70 - v15;
  v16 = sub_21E13F444();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v70 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v22 = &v70 - v21;
  v74 = *&a1;
  v75 = a2;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(a1);
  v24 = *(v8 + result[17]);
  if (v24 < 0)
  {
    __break(1u);
    goto LABEL_79;
  }

  v71 = v13;
  v25 = v8 + result[19];
  v26 = *v25;
  if ((*v25 & 0x8000000000000000) != 0)
  {
LABEL_79:
    __break(1u);
    goto LABEL_80;
  }

  v81 = *(v25 + 8);
  if ((*&v81 & 0x8000000000000000) != 0)
  {
LABEL_80:
    __break(1u);
    goto LABEL_81;
  }

  v73 = v11;
  *&v27 = result[16];
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  v80 = v27;
  result = MEMORY[0x223D52200](v82);
  if ((v82[0] & 0x8000000000000000) != 0)
  {
LABEL_81:
    __break(1u);
LABEL_82:
    __break(1u);
    goto LABEL_83;
  }

  if (v82[0] == v26)
  {
    v29 = 0.0;
    v30 = 0.0;
    if (v24 == v26)
    {
      goto LABEL_26;
    }

    goto LABEL_7;
  }

  v32 = v24 - v26;
  if (v24 == v26)
  {
    if (v82[0] == v24)
    {
      v30 = 0.5;
      v29 = 0.0;
      goto LABEL_26;
    }

    v29 = 0.5;
    v30 = 0.5;
    v31 = 0.5;
    goto LABEL_20;
  }

  v31 = (v82[0] - v26) / v32;
  v30 = 1.0;
  v29 = 0.0;
  if (v31 >= 1.0)
  {
    if (v82[0] == v24)
    {
      goto LABEL_26;
    }

    v29 = 0.5;
    v31 = 1.0;
    goto LABEL_20;
  }

  if (v31 >= 0.0)
  {
    if (v82[0] == v24)
    {
LABEL_25:
      v30 = v31;
      goto LABEL_26;
    }

    v29 = 0.5;
    v30 = (v82[0] - v26) / v32;
LABEL_20:
    if (*&v81 == v24)
    {
      goto LABEL_26;
    }

    v33 = (v82[0] - v24) / (*&v81 - v24);
    v29 = 1.0;
    if (v33 < 1.0)
    {
      if (v33 < 0.0)
      {
        v29 = 0.0;
      }

      else
      {
        v29 = (v82[0] - v24) / (*&v81 - v24);
      }
    }

    goto LABEL_25;
  }

  v30 = 0.0;
  if (v82[0] != v24)
  {
LABEL_7:
    v29 = 0.5;
    v31 = 0.0;
    goto LABEL_20;
  }

LABEL_26:
  sub_21E04E2E8(v22);
  (*(v17 + 104))(v19, *MEMORY[0x277CDF3D0], v16);
  v34 = sub_21E13F434();
  v35 = *(v17 + 8);
  v35(v19, v16);
  v35(v22, v16);
  if (v34)
  {
    v36 = sub_21E141484();
  }

  else
  {
    v36 = _s20VisualIntelligenceUI17PinStyleProvidingPAAE15foregroundColor9isEnabled05SwiftC00H0VSb_tF_0();
  }

  v37 = v36;
  result = MEMORY[0x223D52200](v82, v28);
  v38 = v26 - 2;
  if (v26 < 2)
  {
    goto LABEL_82;
  }

  if (!v24)
  {
LABEL_83:
    __break(1u);
    goto LABEL_84;
  }

  v39 = v24 - 1;
  if (v24 - 1 < v38)
  {
LABEL_84:
    __break(1u);
LABEL_85:
    __break(1u);
    goto LABEL_86;
  }

  if (v82[0] >= v38 && v82[0] < v39)
  {
    v81 = 1.0 - v30;
    v40 = *&v72;
    sub_21E04E4E8(*&v74, *&v72);
    sub_21E141534();
    sub_21E141554();
    *&v75 = v41;
    v74 = v41;
    sub_21E141574();
    *&v80 = v42;
    v70 = v42;
    sub_21E141564();
    LODWORD(v71) = v43;
    v44 = *MEMORY[0x277CE0EE0];
    v45 = v77;
    v46 = *(v76 + 104);
    v47 = v78;
    v46(v78, v44, v77);
    sub_21E141594();
    sub_21E141534();
    sub_21E141554();
    v49 = v48;
    v50 = v48;
    sub_21E141574();
    sub_21E141564();
    if (v49 >= *&v75)
    {
      v52 = v74;
    }

    else
    {
      v52 = v50;
    }

    if (*&v75 > v49)
    {
      v50 = v74;
    }

    if (v52 == v50)
    {
      v53 = v79;
      v54 = v81;
    }

    else
    {
      v54 = v81;
      v53 = v79;
    }

    if (v51.n128_f32[0] >= *&v71)
    {
      v65 = *&v71;
    }

    else
    {
      v65 = v51.n128_f32[0];
    }

    if (*&v71 > v51.n128_f32[0])
    {
      v66 = *&v71;
    }

    else
    {
      v66 = v51.n128_f32[0];
    }

    if (v65 != v66)
    {
      v51.n128_f64[0] = v65 + v54 / (v66 - v65);
    }

LABEL_76:
    (v46)(v47, v44, v45, v51);
    v69 = sub_21E141594();

    (*(v53 + 8))(v40, v73);
    return v69;
  }

  v55 = v24 + 1;
  if (__OFADD__(v24, 1))
  {
    goto LABEL_85;
  }

  if ((v55 & 0x8000000000000000) != 0)
  {
LABEL_86:
    __break(1u);
    goto LABEL_87;
  }

  if (*&v81 + 2 < v55)
  {
LABEL_87:
    __break(1u);
    goto LABEL_88;
  }

  if (v82[0] >= v55 && (*&v81 + 2) >= v82[0])
  {
    v72 = v29;
    v40 = v71;
    sub_21E04E4E8(*&v74, v71);
    sub_21E141534();
    sub_21E141554();
    *&v74 = v56;
    v70 = v56;
    sub_21E141574();
    *&v75 = v57;
    v80 = v57;
    sub_21E141564();
    LODWORD(v81) = v58;
    v44 = *MEMORY[0x277CE0EE0];
    v45 = v77;
    v46 = *(v76 + 104);
    v47 = v78;
    v46(v78, v44, v77);
    sub_21E141594();
    sub_21E141534();
    sub_21E141554();
    v60 = v59;
    v61 = v59;
    sub_21E141574();
    sub_21E141564();
    if (v60 >= *&v74)
    {
      v62 = v70;
    }

    else
    {
      v62 = v61;
    }

    if (*&v74 > v60)
    {
      v61 = v70;
    }

    if (v62 == v61)
    {
      v53 = v79;
      v63 = v72;
    }

    else
    {
      v63 = v72;
      v53 = v79;
    }

    if (v51.n128_f32[0] >= *&v81)
    {
      v67 = *&v81;
    }

    else
    {
      v67 = v51.n128_f32[0];
    }

    if (*&v81 > v51.n128_f32[0])
    {
      v68 = *&v81;
    }

    else
    {
      v68 = v51.n128_f32[0];
    }

    if (v67 != v68)
    {
      v51.n128_f64[0] = v67 + v63 / (v68 - v67);
    }

    goto LABEL_76;
  }

  if (v55 >= v39)
  {
    if (v82[0] < v39 || v82[0] >= v55)
    {
      v64 = sub_21E1414F4();

      return v64;
    }

    return v37;
  }

LABEL_88:
  __break(1u);
  return result;
}

void *sub_21E053EBC()
{
  v80 = sub_21E141424();
  v84 = *(v80 - 8);
  MEMORY[0x28223BE20](v80);
  v81 = &v74 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_21E13FF94();
  v78 = *(v2 - 8);
  v79 = v2;
  MEMORY[0x28223BE20](v2);
  v77 = &v74 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  *&v82 = &v74 - v5;
  v6 = sub_21E13F444();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v74 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v74 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAB378);
  v14 = *(v0 + *(v13 + 68));
  v15 = (v0 + *(v13 + 76));
  v17 = *v15;
  v16 = v15[1];
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6F58);
  v85 = v0;
  result = MEMORY[0x223D52200](v86);
  if (v86[0] == v17)
  {
    v20 = v12;
    v21 = v6;
    v22 = 0.0;
    v23 = 0.0;
    if (v17 == *&v14)
    {
      goto LABEL_28;
    }

LABEL_3:
    v22 = 0.5;
    v24 = 0.0;
    if (v16 == *&v14)
    {
      goto LABEL_28;
    }

    goto LABEL_21;
  }

  if (*&v14 == v17)
  {
    v20 = v12;
    v21 = v6;
    if (v86[0] == *&v14)
    {
      v23 = 0.5;
      v22 = 0.0;
      goto LABEL_28;
    }

    v22 = 0.5;
    v23 = 0.5;
    v24 = 0.5;
    if (v16 == *&v14)
    {
      goto LABEL_28;
    }

LABEL_21:
    v25 = v86[0] - *&v14;
    if (__OFSUB__(v86[0], *&v14))
    {
LABEL_88:
      __break(1u);
      goto LABEL_89;
    }

    v26 = v16 - *&v14;
    if (__OFSUB__(v16, *&v14))
    {
LABEL_90:
      __break(1u);
      goto LABEL_91;
    }

    v27 = v25 / v26;
    v22 = 1.0;
    if (v27 < 1.0)
    {
      if (v27 < 0.0)
      {
        v22 = 0.0;
      }

      else
      {
        v22 = v25 / v26;
      }
    }

    goto LABEL_27;
  }

  if (__OFSUB__(v86[0], v17))
  {
LABEL_87:
    __break(1u);
    goto LABEL_88;
  }

  if (__OFSUB__(*&v14, v17))
  {
LABEL_89:
    __break(1u);
    goto LABEL_90;
  }

  v24 = (v86[0] - v17) / (*&v14 - v17);
  v23 = 1.0;
  v20 = v12;
  v21 = v6;
  v22 = 0.0;
  if (v24 >= 1.0)
  {
    if (v86[0] == *&v14)
    {
      goto LABEL_28;
    }

    v22 = 0.5;
    v24 = 1.0;
    if (v16 == *&v14)
    {
      goto LABEL_28;
    }

    goto LABEL_21;
  }

  if (v24 >= 0.0)
  {
    if (v86[0] == *&v14)
    {
LABEL_27:
      v23 = v24;
      goto LABEL_28;
    }

    v22 = 0.5;
    v23 = (v86[0] - v17) / (*&v14 - v17);
    if (v16 == *&v14)
    {
      goto LABEL_28;
    }

    goto LABEL_21;
  }

  v23 = 0.0;
  if (v86[0] != *&v14)
  {
    goto LABEL_3;
  }

LABEL_28:
  v83 = v14;
  v28 = v20;
  sub_21E04E2E8(v20);
  (*(v7 + 104))(v9, *MEMORY[0x277CDF3D0], v21);
  v29 = sub_21E13F434();
  v30 = *(v7 + 8);
  v30(v9, v21);
  v30(v28, v21);
  if (v29)
  {
    v31 = sub_21E141484();
  }

  else
  {
    v31 = _s20VisualIntelligenceUI17PinStyleProvidingPAAE15foregroundColor9isEnabled05SwiftC00H0VSb_tF_0();
  }

  v32 = v31;
  v33 = v84;
  result = MEMORY[0x223D52200](v86, v18);
  v34 = v17 - 2;
  if (__OFSUB__(v17, 2))
  {
    __break(1u);
    goto LABEL_82;
  }

  v35 = *&v83 - 1;
  if (__OFSUB__(*&v83, 1))
  {
LABEL_82:
    __break(1u);
    goto LABEL_83;
  }

  if (v35 < v34)
  {
LABEL_83:
    __break(1u);
LABEL_84:
    __break(1u);
    goto LABEL_85;
  }

  if (v86[0] >= v34 && v86[0] < v35)
  {
    v84 = 1.0 - v23;
    sub_21E04E4E8(&qword_27CEAB378, *&v82);
    sub_21E141534();
    sub_21E141554();
    v76 = v36;
    v75 = v36;
    sub_21E141574();
    *&v77 = v37;
    v83 = v37;
    sub_21E141564();
    LODWORD(v85) = v38;
    v39 = *MEMORY[0x277CE0EE0];
    v40 = *(*&v33 + 104);
    v42 = v80;
    v41 = v81;
    v40(v81, v39, v80);
    sub_21E141594();
    sub_21E141534();
    sub_21E141554();
    v44 = v43;
    v45 = v43;
    sub_21E141574();
    sub_21E141564();
    if (v44 >= v76)
    {
      v47 = v75;
    }

    else
    {
      v47 = v45;
    }

    if (v76 > v44)
    {
      v45 = v75;
    }

    if (v47 == v45)
    {
      v49 = v78;
      v48 = v79;
      v50 = v84;
    }

    else
    {
      v50 = v84;
      v49 = v78;
      v48 = v79;
    }

    if (v46.n128_f32[0] >= *&v85)
    {
      v69 = *&v85;
    }

    else
    {
      v69 = v46.n128_f32[0];
    }

    if (*&v85 > v46.n128_f32[0])
    {
      v70 = *&v85;
    }

    else
    {
      v70 = v46.n128_f32[0];
    }

    if (v69 != v70)
    {
      v46.n128_f64[0] = v69 + v50 / (v70 - v69);
    }

    (v40)(v41, v39, v42, v46);
    v71 = sub_21E141594();

    (*(v49 + 8))(COERCE_DOUBLE(*&v82), v48);
    return v71;
  }

  v51 = *&v83 + 1;
  if (__OFADD__(*&v83, 1))
  {
    goto LABEL_84;
  }

  v52 = v16 + 2;
  if (__OFADD__(v16, 2))
  {
LABEL_85:
    __break(1u);
    goto LABEL_86;
  }

  if (v52 < v51)
  {
LABEL_86:
    __break(1u);
    goto LABEL_87;
  }

  if (v86[0] >= v51 && v52 >= v86[0])
  {
    v82 = v22;
    sub_21E04E4E8(&qword_27CEAB378, v77);
    sub_21E141534();
    sub_21E141554();
    v76 = v53;
    v75 = v53;
    sub_21E141574();
    *&v83 = v54;
    v84 = v54;
    sub_21E141564();
    LODWORD(v85) = v55;
    v56 = *MEMORY[0x277CE0EE0];
    v57 = *(*&v33 + 104);
    v59 = v80;
    v58 = v81;
    v57(v81, v56, v80);
    sub_21E141594();
    sub_21E141534();
    sub_21E141554();
    v61 = v60;
    v62 = v60;
    sub_21E141574();
    sub_21E141564();
    if (v61 >= v76)
    {
      v64 = v75;
    }

    else
    {
      v64 = v62;
    }

    if (v76 > v61)
    {
      v62 = v75;
    }

    if (v64 == v62)
    {
      v66 = v78;
      v65 = v79;
      v67 = v82;
    }

    else
    {
      v67 = v82;
      v66 = v78;
      v65 = v79;
    }

    if (v63.n128_f32[0] >= *&v85)
    {
      v72 = *&v85;
    }

    else
    {
      v72 = v63.n128_f32[0];
    }

    if (*&v85 > v63.n128_f32[0])
    {
      v73 = *&v85;
    }

    else
    {
      v73 = v63.n128_f32[0];
    }

    if (v72 != v73)
    {
      v63.n128_f64[0] = v72 + v67 / (v73 - v72);
    }

    (v57)(v58, v56, v59, v63);
    v71 = sub_21E141594();

    (*(v66 + 8))(v77, v65);
    return v71;
  }

  if (v51 >= v35)
  {
    if (v86[0] < v35 || v86[0] >= v51)
    {
      v68 = sub_21E1414F4();

      return v68;
    }

    return v32;
  }

LABEL_91:
  __break(1u);
  return result;
}

void sub_21E054878(uint64_t a1@<X0>, char *a2@<X8>)
{
  v48 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAB310);
  v4 = *(v3 - 8);
  v49 = v3 - 8;
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v42 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAB460);
  v46 = *(v7 - 8);
  v47 = v7;
  MEMORY[0x28223BE20](v7);
  v45 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v43 = &v42 - v10;
  v44 = sub_21E140004();
  LOBYTE(v63) = 1;
  sub_21DF16078(a1, v59);
  *&v58[7] = v59[0];
  *&v58[23] = v59[1];
  *&v58[39] = v59[2];
  *&v58[55] = v59[3];
  v50 = v63;
  v51 = sub_21E053540(&qword_27CEAB310, &unk_21E150618, &qword_27CEAB4D8, &unk_21E1507A8);
  sub_21DF236C0(a1, v6, &qword_27CEAB310);
  sub_21E1423C4();
  v11 = sub_21E1423B4();
  v12 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v13 = swift_allocObject();
  v14 = MEMORY[0x277D85700];
  *(v13 + 16) = v11;
  *(v13 + 24) = v14;
  sub_21DF3DE9C(v6, v13 + v12, &qword_27CEAB310);
  sub_21DF236C0(a1, v6, &qword_27CEAB310);
  v15 = sub_21E1423B4();
  v16 = swift_allocObject();
  *(v16 + 16) = v15;
  *(v16 + 24) = MEMORY[0x277D85700];
  sub_21DF3DE9C(v6, v16 + v12, &qword_27CEAB310);
  v17 = sub_21E141A04();
  v18 = (a1 + *(v49 + 84));
  v19 = v18[1];
  if (*v18 > v19)
  {
    __break(1u);
    goto LABEL_6;
  }

  v21 = MEMORY[0x28223BE20](v17).n128_u64[0];
  v55 = v22;
  v56 = v23;
  v57 = v24;
  v53 = v21;
  v54 = v25;
  v52 = 0x3FF0000000000000;
  if (v20 < 0)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v63 = v20;
  v63 = sub_21E142AB4();
  v64 = v26;
  v65 = 0;
  v27 = MEMORY[0x277D84F90];
  *(&v66 + 7) = MEMORY[0x277D84F90];
  if ((v19 & 0x8000000000000000) == 0)
  {
    v60 = v19;
    v60 = sub_21E142AB4();
    v61 = v28;
    LOBYTE(v62[0]) = 0;
    *(&v62[0] + 1) = v27;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAB468);
    sub_21E05A834();
    sub_21DFD30A4();
    v29 = v43;
    sub_21E1418C4();
    v31 = v45;
    v30 = v46;
    v32 = *(v46 + 16);
    v33 = v47;
    v32(v45, v29, v47);
    v34 = v44;
    v60 = v44;
    v61 = 0;
    LOBYTE(v62[0]) = v50;
    *(v62 + 1) = *v58;
    *(&v62[3] + 1) = *&v58[48];
    *(&v62[2] + 1) = *&v58[32];
    *(&v62[1] + 1) = *&v58[16];
    *&v62[4] = *&v58[63];
    *(&v62[4] + 1) = v51;
    v35 = v62[0];
    v36 = v48;
    *v48 = v44;
    *(v36 + 1) = v35;
    v37 = v62[1];
    v38 = v62[2];
    v39 = v62[4];
    *(v36 + 4) = v62[3];
    *(v36 + 5) = v39;
    *(v36 + 2) = v37;
    *(v36 + 3) = v38;
    v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAB488);
    v32(&v36[*(v40 + 48)], v31, v33);
    sub_21DF236C0(&v60, &v63, &qword_27CEAB468);
    v41 = *(v30 + 8);
    v41(v29, v33);
    v41(v31, v33);
    v63 = v34;
    v64 = 0;
    v65 = v50;
    v67 = *&v58[16];
    v68 = *&v58[32];
    *v69 = *&v58[48];
    v66 = *v58;
    *&v69[15] = *&v58[63];
    v70 = v51;
    sub_21DF23614(&v63, &qword_27CEAB468);
    return;
  }

LABEL_7:
  __break(1u);
}

uint64_t sub_21E054E20@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v48 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAB320);
  v4 = *(v3 - 8);
  v49 = v3 - 8;
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v42 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAB460);
  v46 = *(v7 - 8);
  v47 = v7;
  MEMORY[0x28223BE20](v7);
  v45 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v43 = &v42 - v10;
  v44 = sub_21E140004();
  LOBYTE(v63) = 1;
  sub_21E056168(a1, v59);
  *&v58[7] = v59[0];
  *&v58[23] = v59[1];
  *&v58[39] = v59[2];
  *&v58[55] = v59[3];
  v50 = v63;
  v51 = sub_21E052BCC();
  sub_21DF236C0(a1, v6, &qword_27CEAB320);
  sub_21E1423C4();
  v11 = sub_21E1423B4();
  v12 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v13 = swift_allocObject();
  v14 = MEMORY[0x277D85700];
  *(v13 + 16) = v11;
  *(v13 + 24) = v14;
  sub_21DF3DE9C(v6, v13 + v12, &qword_27CEAB320);
  sub_21DF236C0(a1, v6, &qword_27CEAB320);
  v15 = sub_21E1423B4();
  v16 = swift_allocObject();
  *(v16 + 16) = v15;
  *(v16 + 24) = MEMORY[0x277D85700];
  sub_21DF3DE9C(v6, v16 + v12, &qword_27CEAB320);
  result = sub_21E141A04();
  v18 = (a1 + *(v49 + 84));
  v19 = v18[1];
  if (*v18 > v19)
  {
    __break(1u);
  }

  else
  {
    v20 = MEMORY[0x28223BE20](result).n128_u64[0];
    v55 = v21;
    v56 = v22;
    v57 = v23;
    v53 = v20;
    v54 = v24;
    v52 = 0x3FF0000000000000;
    v63 = v25;
    v63 = sub_21E142AB4();
    v64 = v26;
    v65 = 0;
    v27 = MEMORY[0x277D84F90];
    *(&v66 + 7) = MEMORY[0x277D84F90];
    v60 = v19;
    v60 = sub_21E142AB4();
    v61 = v28;
    LOBYTE(v62[0]) = 0;
    *(&v62[0] + 1) = v27;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAB468);
    sub_21E05A834();
    sub_21DFD30A4();
    v29 = v43;
    sub_21E1418C4();
    v31 = v45;
    v30 = v46;
    v32 = *(v46 + 16);
    v33 = v47;
    v32(v45, v29, v47);
    v34 = v44;
    v60 = v44;
    v61 = 0;
    LOBYTE(v62[0]) = v50;
    *(v62 + 1) = *v58;
    *(&v62[3] + 1) = *&v58[48];
    *(&v62[2] + 1) = *&v58[32];
    *(&v62[1] + 1) = *&v58[16];
    *&v62[4] = *&v58[63];
    *(&v62[4] + 1) = v51;
    v35 = v62[0];
    v36 = v48;
    *v48 = v44;
    *(v36 + 1) = v35;
    v37 = v62[1];
    v38 = v62[2];
    v39 = v62[4];
    *(v36 + 4) = v62[3];
    *(v36 + 5) = v39;
    *(v36 + 2) = v37;
    *(v36 + 3) = v38;
    v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAB488);
    v32(&v36[*(v40 + 48)], v31, v33);
    sub_21DF236C0(&v60, &v63, &qword_27CEAB468);
    v41 = *(v30 + 8);
    v41(v29, v33);
    v41(v31, v33);
    v63 = v34;
    v64 = 0;
    v65 = v50;
    v67 = *&v58[16];
    v68 = *&v58[32];
    *v69 = *&v58[48];
    v66 = *v58;
    *&v69[15] = *&v58[63];
    v70 = v51;
    return sub_21DF23614(&v63, &qword_27CEAB468);
  }

  return result;
}

void sub_21E0553A0(uint64_t a1@<X0>, char *a2@<X8>)
{
  v48 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAB330);
  v4 = *(v3 - 8);
  v49 = v3 - 8;
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v42 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAB460);
  v46 = *(v7 - 8);
  v47 = v7;
  MEMORY[0x28223BE20](v7);
  v45 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v43 = &v42 - v10;
  v44 = sub_21E140004();
  LOBYTE(v63) = 1;
  sub_21DF1637C(a1, v59);
  *&v58[7] = v59[0];
  *&v58[23] = v59[1];
  *&v58[39] = v59[2];
  *&v58[55] = v59[3];
  v50 = v63;
  v51 = sub_21E053540(&qword_27CEAB330, &unk_21E150638, &qword_27CEAB4B8, &unk_21E150798);
  sub_21DF236C0(a1, v6, &qword_27CEAB330);
  sub_21E1423C4();
  v11 = sub_21E1423B4();
  v12 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v13 = swift_allocObject();
  v14 = MEMORY[0x277D85700];
  *(v13 + 16) = v11;
  *(v13 + 24) = v14;
  sub_21DF3DE9C(v6, v13 + v12, &qword_27CEAB330);
  sub_21DF236C0(a1, v6, &qword_27CEAB330);
  v15 = sub_21E1423B4();
  v16 = swift_allocObject();
  *(v16 + 16) = v15;
  *(v16 + 24) = MEMORY[0x277D85700];
  sub_21DF3DE9C(v6, v16 + v12, &qword_27CEAB330);
  v17 = sub_21E141A04();
  v18 = (a1 + *(v49 + 84));
  v19 = v18[1];
  if (*v18 > v19)
  {
    __break(1u);
    goto LABEL_6;
  }

  v21 = MEMORY[0x28223BE20](v17).n128_u64[0];
  v55 = v22;
  v56 = v23;
  v57 = v24;
  v53 = v21;
  v54 = v25;
  v52 = 0x3FF0000000000000;
  if (v20 < 0)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v63 = v20;
  v63 = sub_21E142AB4();
  v64 = v26;
  v65 = 0;
  v27 = MEMORY[0x277D84F90];
  *(&v66 + 7) = MEMORY[0x277D84F90];
  if ((v19 & 0x8000000000000000) == 0)
  {
    v60 = v19;
    v60 = sub_21E142AB4();
    v61 = v28;
    LOBYTE(v62[0]) = 0;
    *(&v62[0] + 1) = v27;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAB468);
    sub_21E05A834();
    sub_21DFD30A4();
    v29 = v43;
    sub_21E1418C4();
    v31 = v45;
    v30 = v46;
    v32 = *(v46 + 16);
    v33 = v47;
    v32(v45, v29, v47);
    v34 = v44;
    v60 = v44;
    v61 = 0;
    LOBYTE(v62[0]) = v50;
    *(v62 + 1) = *v58;
    *(&v62[3] + 1) = *&v58[48];
    *(&v62[2] + 1) = *&v58[32];
    *(&v62[1] + 1) = *&v58[16];
    *&v62[4] = *&v58[63];
    *(&v62[4] + 1) = v51;
    v35 = v62[0];
    v36 = v48;
    *v48 = v44;
    *(v36 + 1) = v35;
    v37 = v62[1];
    v38 = v62[2];
    v39 = v62[4];
    *(v36 + 4) = v62[3];
    *(v36 + 5) = v39;
    *(v36 + 2) = v37;
    *(v36 + 3) = v38;
    v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAB488);
    v32(&v36[*(v40 + 48)], v31, v33);
    sub_21DF236C0(&v60, &v63, &qword_27CEAB468);
    v41 = *(v30 + 8);
    v41(v29, v33);
    v41(v31, v33);
    v63 = v34;
    v64 = 0;
    v65 = v50;
    v67 = *&v58[16];
    v68 = *&v58[32];
    *v69 = *&v58[48];
    v66 = *v58;
    *&v69[15] = *&v58[63];
    v70 = v51;
    sub_21DF23614(&v63, &qword_27CEAB468);
    return;
  }

LABEL_7:
  __break(1u);
}

uint64_t sub_21E055948@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v48 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAB378);
  v4 = *(v3 - 8);
  v49 = v3 - 8;
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v42 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAB460);
  v46 = *(v7 - 8);
  v47 = v7;
  MEMORY[0x28223BE20](v7);
  v45 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v43 = &v42 - v10;
  v44 = sub_21E140004();
  LOBYTE(v63) = 1;
  sub_21DF16680(a1, v59);
  *&v58[7] = v59[0];
  *&v58[23] = v59[1];
  *&v58[39] = v59[2];
  *&v58[55] = v59[3];
  v50 = v63;
  v51 = sub_21E053EBC();
  sub_21DF236C0(a1, v6, &qword_27CEAB378);
  sub_21E1423C4();
  v11 = sub_21E1423B4();
  v12 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v13 = swift_allocObject();
  v14 = MEMORY[0x277D85700];
  *(v13 + 16) = v11;
  *(v13 + 24) = v14;
  sub_21DF3DE9C(v6, v13 + v12, &qword_27CEAB378);
  sub_21DF236C0(a1, v6, &qword_27CEAB378);
  v15 = sub_21E1423B4();
  v16 = swift_allocObject();
  *(v16 + 16) = v15;
  *(v16 + 24) = MEMORY[0x277D85700];
  sub_21DF3DE9C(v6, v16 + v12, &qword_27CEAB378);
  result = sub_21E141A04();
  v18 = (a1 + *(v49 + 84));
  v19 = v18[1];
  if (*v18 > v19)
  {
    __break(1u);
  }

  else
  {
    v20 = MEMORY[0x28223BE20](result).n128_u64[0];
    v55 = v21;
    v56 = v22;
    v57 = v23;
    v53 = v20;
    v54 = v24;
    v52 = 0x3FF0000000000000;
    v63 = v25;
    v63 = sub_21E142AB4();
    v64 = v26;
    v65 = 0;
    v27 = MEMORY[0x277D84F90];
    *(&v66 + 7) = MEMORY[0x277D84F90];
    v60 = v19;
    v60 = sub_21E142AB4();
    v61 = v28;
    LOBYTE(v62[0]) = 0;
    *(&v62[0] + 1) = v27;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAB468);
    sub_21E05A834();
    sub_21DFD30A4();
    v29 = v43;
    sub_21E1418C4();
    v31 = v45;
    v30 = v46;
    v32 = *(v46 + 16);
    v33 = v47;
    v32(v45, v29, v47);
    v34 = v44;
    v60 = v44;
    v61 = 0;
    LOBYTE(v62[0]) = v50;
    *(v62 + 1) = *v58;
    *(&v62[3] + 1) = *&v58[48];
    *(&v62[2] + 1) = *&v58[32];
    *(&v62[1] + 1) = *&v58[16];
    *&v62[4] = *&v58[63];
    *(&v62[4] + 1) = v51;
    v35 = v62[0];
    v36 = v48;
    *v48 = v44;
    *(v36 + 1) = v35;
    v37 = v62[1];
    v38 = v62[2];
    v39 = v62[4];
    *(v36 + 4) = v62[3];
    *(v36 + 5) = v39;
    *(v36 + 2) = v37;
    *(v36 + 3) = v38;
    v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAB488);
    v32(&v36[*(v40 + 48)], v31, v33);
    sub_21DF236C0(&v60, &v63, &qword_27CEAB468);
    v41 = *(v30 + 8);
    v41(v29, v33);
    v41(v31, v33);
    v63 = v34;
    v64 = 0;
    v65 = v50;
    v67 = *&v58[16];
    v68 = *&v58[32];
    *v69 = *&v58[48];
    v66 = *v58;
    *&v69[15] = *&v58[63];
    v70 = v51;
    return sub_21DF23614(&v63, &qword_27CEAB468);
  }

  return result;
}

__n128 sub_21E055EC8@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_21E140004();
  sub_21DF16078(a1, v8);
  *&v7[7] = v8[0];
  *&v7[23] = v8[1];
  *&v7[39] = v8[2];
  *&v7[55] = v8[3];
  v5 = sub_21E053540(&qword_27CEAB310, &unk_21E150618, &qword_27CEAB4D8, &unk_21E1507A8);
  *(a2 + 33) = *&v7[16];
  result = *&v7[32];
  *(a2 + 49) = *&v7[32];
  *(a2 + 65) = *&v7[48];
  *a2 = v4;
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  *(a2 + 17) = *v7;
  *(a2 + 80) = *&v7[63];
  *(a2 + 88) = v5;
  return result;
}

__n128 sub_21E055F80@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_21E140004();
  sub_21E056168(a1, v8);
  *&v7[7] = v8[0];
  *&v7[23] = v8[1];
  *&v7[39] = v8[2];
  *&v7[55] = v8[3];
  v5 = sub_21E052BCC();
  *(a2 + 33) = *&v7[16];
  result = *&v7[32];
  *(a2 + 49) = *&v7[32];
  *(a2 + 65) = *&v7[48];
  *a2 = v4;
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  *(a2 + 17) = *v7;
  *(a2 + 80) = *&v7[63];
  *(a2 + 88) = v5;
  return result;
}

__n128 sub_21E056018@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_21E140004();
  sub_21DF1637C(a1, v8);
  *&v7[7] = v8[0];
  *&v7[23] = v8[1];
  *&v7[39] = v8[2];
  *&v7[55] = v8[3];
  v5 = sub_21E053540(&qword_27CEAB330, &unk_21E150638, &qword_27CEAB4B8, &unk_21E150798);
  *(a2 + 33) = *&v7[16];
  result = *&v7[32];
  *(a2 + 49) = *&v7[32];
  *(a2 + 65) = *&v7[48];
  *a2 = v4;
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  *(a2 + 17) = *v7;
  *(a2 + 80) = *&v7[63];
  *(a2 + 88) = v5;
  return result;
}

__n128 sub_21E0560D0@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_21E140004();
  sub_21DF16680(a1, v8);
  *&v7[7] = v8[0];
  *&v7[23] = v8[1];
  *&v7[39] = v8[2];
  *&v7[55] = v8[3];
  v5 = sub_21E053EBC();
  *(a2 + 33) = *&v7[16];
  result = *&v7[32];
  *(a2 + 49) = *&v7[32];
  *(a2 + 65) = *&v7[48];
  *a2 = v4;
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  *(a2 + 17) = *v7;
  *(a2 + 80) = *&v7[63];
  *(a2 + 88) = v5;
  return result;
}

uint64_t sub_21E056168@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_21E140AD4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAB320) + 72));
  v9 = v8[1];
  v38 = *v8;
  v39 = v9;

  MEMORY[0x223D52A60](8250, 0xE200000000000000);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAB4C8);
  MEMORY[0x223D52200](&v37, v10);
  v11 = sub_21E04EEA4(v37);
  MEMORY[0x223D52A60](v11);

  sub_21E140A74();
  v33 = sub_21E140C44();
  v34 = v12;
  v32 = v13;
  v35 = v14;

  sub_21E052658();
  (*(v5 + 104))(v7, *MEMORY[0x277CE0A98], v4);
  MEMORY[0x223D51250](0, 0xE000000000000000, v7, 12.0);
  (*(v5 + 8))(v7, v4);
  v15 = sub_21E140C44();
  v17 = v16;
  LOBYTE(v5) = v18;

  v19 = sub_21E140C04();
  v21 = v20;
  LOBYTE(a1) = v22;
  v24 = v23;
  sub_21DF3DE8C(v15, v17, v5 & 1);

  v36 = v32 & 1;
  LOBYTE(v38) = v32 & 1;
  LOBYTE(v17) = a1 & 1;
  LOBYTE(v37) = a1 & 1;
  v26 = v33;
  v25 = v34;
  sub_21DF42BEC(v33, v34, v32 & 1);
  v27 = v35;

  sub_21DF42BEC(v19, v21, v17);

  sub_21DF3DE8C(v19, v21, v17);

  sub_21DF3DE8C(v26, v25, v36);

  v29 = v38;
  v30 = v37;
  *a2 = v26;
  *(a2 + 8) = v25;
  *(a2 + 16) = v29;
  *(a2 + 24) = v27;
  *(a2 + 32) = v19;
  *(a2 + 40) = v21;
  *(a2 + 48) = v30;
  *(a2 + 56) = v24;
  return result;
}

uint64_t sub_21E05646C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAB310);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v13 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAB2A8);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v13 - v7;
  sub_21E13F344();
  v9 = sub_21E13F354();
  (*(*(v9 - 8) + 56))(v8, 0, 1, v9);
  sub_21DF236C0(a1, v5, &qword_27CEAB310);
  v10 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v11 = swift_allocObject();
  sub_21DF3DE9C(v5, v11 + v10, &qword_27CEAB310);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7CF0);
  sub_21DF23E5C(&qword_280F68D98, &qword_27CEA7CF0);
  return sub_21E141754();
}

uint64_t sub_21E05669C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAB320);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v13 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAB2A8);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v13 - v7;
  sub_21E13F344();
  v9 = sub_21E13F354();
  (*(*(v9 - 8) + 56))(v8, 0, 1, v9);
  sub_21DF236C0(a1, v5, &qword_27CEAB320);
  v10 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v11 = swift_allocObject();
  sub_21DF3DE9C(v5, v11 + v10, &qword_27CEAB320);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7CF0);
  sub_21DF23E5C(&qword_280F68D98, &qword_27CEA7CF0);
  return sub_21E141754();
}

uint64_t sub_21E0568CC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAB330);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v13 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAB2A8);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v13 - v7;
  sub_21E13F344();
  v9 = sub_21E13F354();
  (*(*(v9 - 8) + 56))(v8, 0, 1, v9);
  sub_21DF236C0(a1, v5, &qword_27CEAB330);
  v10 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v11 = swift_allocObject();
  sub_21DF3DE9C(v5, v11 + v10, &qword_27CEAB330);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7CF0);
  sub_21DF23E5C(&qword_280F68D98, &qword_27CEA7CF0);
  return sub_21E141754();
}

uint64_t sub_21E056AFC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAB378);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v13 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAB2A8);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v13 - v7;
  sub_21E13F344();
  v9 = sub_21E13F354();
  (*(*(v9 - 8) + 56))(v8, 0, 1, v9);
  sub_21DF236C0(a1, v5, &qword_27CEAB378);
  v10 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v11 = swift_allocObject();
  sub_21DF3DE9C(v5, v11 + v10, &qword_27CEAB378);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7CF0);
  sub_21DF23E5C(&qword_280F68D98, &qword_27CEA7CF0);
  return sub_21E141754();
}

uint64_t sub_21E056D2C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAB320);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAB4C8);
  return sub_21E1419D4();
}

uint64_t sub_21E056D98(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(a4);
  return sub_21E1419D4();
}

uint64_t sub_21E056E30()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAB108);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAB4E8);
  result = MEMORY[0x223D52200](&v18);
  v4 = (v0 + *(v1 + 76));
  v5 = v4[1];
  v6 = (v5 - *v4) / 100.0;
  v7 = v6 + v6;
  v8 = *v4 - (v6 + v6);
  v9 = *(v0 + *(v1 + 68));
  v10 = v9 - v6;
  if (v8 > (v9 - v6))
  {
    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
    return result;
  }

  if (*&v18 < v10 && v8 <= *&v18)
  {
    v18 = 11560;
    v19 = 0xE200000000000000;
    MEMORY[0x223D52200](&v17, v2);
    v15 = v9 - v17;
LABEL_17:
    v16 = sub_21E04E6F8(v15);
    MEMORY[0x223D52A60](v16);

    MEMORY[0x223D52A60](41, 0xE100000000000000);
    return v18;
  }

  v12 = v9 + v6;
  v13 = v5 + v7;
  if (v12 > v13)
  {
    goto LABEL_19;
  }

  if (v12 <= *&v18 && *&v18 <= v13)
  {
    v18 = 11048;
    v19 = 0xE200000000000000;
    MEMORY[0x223D52200](&v17, v2);
    v15 = v17 - v9;
    goto LABEL_17;
  }

  if (v10 > v12)
  {
    goto LABEL_20;
  }

  if (v10 <= *&v18 && *&v18 < v12)
  {
    return 0;
  }

  else
  {
    return 1066895586;
  }
}

uint64_t sub_21E056FD4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAB300);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAB518);
  result = MEMORY[0x223D52200](&v18);
  v4 = (v0 + *(v1 + 76));
  v5 = v4[1];
  v6 = (v5 - *v4) / 100.0;
  v7 = v6 + v6;
  v8 = *v4 - (v6 + v6);
  v9 = *(v0 + *(v1 + 68));
  v10 = v9 - v6;
  if (v8 > v9 - v6)
  {
    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
    return result;
  }

  if (*&v18 < v10 && v8 <= *&v18)
  {
    v18 = 11560;
    v19 = 0xE200000000000000;
    MEMORY[0x223D52200](&v17, v2);
    v15 = v9 - v17;
LABEL_17:
    v16 = sub_21E04E99C(v15);
    MEMORY[0x223D52A60](v16);

    MEMORY[0x223D52A60](41, 0xE100000000000000);
    return v18;
  }

  v12 = v9 + v6;
  v13 = v5 + v7;
  if (v12 > v13)
  {
    goto LABEL_19;
  }

  if (v12 <= *&v18 && *&v18 <= v13)
  {
    v18 = 11048;
    v19 = 0xE200000000000000;
    MEMORY[0x223D52200](&v17, v2);
    v15 = v17 - v9;
    goto LABEL_17;
  }

  if (v10 > v12)
  {
    goto LABEL_20;
  }

  if (v10 <= *&v18 && *&v18 < v12)
  {
    return 0;
  }

  else
  {
    return 1066895586;
  }
}

void *sub_21E057178()
{
  v1 = sub_21E141424();
  v70 = *(v1 - 8);
  v71 = v1;
  MEMORY[0x28223BE20](v1);
  v72 = v63 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_21E13FF94();
  v73 = *(v3 - 8);
  v74 = v3;
  MEMORY[0x28223BE20](v3);
  *&v69 = v63 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = v63 - v6;
  v8 = sub_21E13F444();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v63 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = v63 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAB108);
  v16 = *(v0 + *(v15 + 68));
  v17 = v16;
  v18 = (v0 + *(v15 + 76));
  v20 = *v18;
  v19 = v18[1];
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAB4E8);
  MEMORY[0x223D52200]((v75 + 4));
  v22 = *(v75 + 1);
  if (v16 == v20)
  {
    if (*(v75 + 1) >= 1.0)
    {
      v24 = 1.0;
      v25 = 1.0;
      v23 = 1.0;
      if (v19 == v16)
      {
        goto LABEL_32;
      }

      goto LABEL_26;
    }

    v23 = *(v75 + 1);
    if (*(v75 + 1) < 0.0)
    {
      v24 = 0.0;
      v25 = 0.0;
      v23 = 0.0;
      if (v19 == v16)
      {
        goto LABEL_32;
      }

      goto LABEL_26;
    }

LABEL_15:
    if (v19 == v16)
    {
      v25 = 1.0;
      if (*(v75 + 1) >= 1.0)
      {
        goto LABEL_32;
      }

LABEL_20:
      if (*(v75 + 1) < 0.0)
      {
        v25 = 0.0;
      }

      else
      {
        v25 = *(v75 + 1);
      }

      goto LABEL_32;
    }

    v24 = v23;
    goto LABEL_26;
  }

  v23 = (v22 - v20) / (v17 - v20);
  v24 = 1.0;
  if (v23 < 1.0)
  {
    if (v23 < 0.0)
    {
      if (v19 == v16)
      {
        if (*(v75 + 1) >= 1.0)
        {
          v23 = 0.0;
          v25 = 1.0;
        }

        else
        {
          v23 = 0.0;
          if (*(v75 + 1) < 0.0)
          {
            v25 = 0.0;
          }

          else
          {
            v25 = *(v75 + 1);
          }
        }

        goto LABEL_32;
      }

      v24 = 0.0;
      goto LABEL_26;
    }

    goto LABEL_15;
  }

  if (v19 == v16)
  {
    v23 = 1.0;
    if (*(v75 + 1) >= 1.0)
    {
      v25 = 1.0;
      goto LABEL_32;
    }

    goto LABEL_20;
  }

LABEL_26:
  v26 = (v22 - v17) / (v19 - v17);
  v27 = 0.0;
  if (v26 >= 0.0)
  {
    v27 = v26;
  }

  if (v26 >= 1.0)
  {
    v25 = 1.0;
  }

  else
  {
    v25 = v27;
  }

  v23 = v24;
LABEL_32:
  sub_21E04E2E8(v14);
  (*(v9 + 104))(v11, *MEMORY[0x277CDF3D0], v8);
  v28 = sub_21E13F434();
  v29 = *(v9 + 8);
  v29(v11, v8);
  v29(v14, v8);
  if (v28)
  {
    v30 = sub_21E141484();
  }

  else
  {
    v30 = _s20VisualIntelligenceUI17PinStyleProvidingPAAE15foregroundColor9isEnabled05SwiftC00H0VSb_tF_0();
  }

  v31 = v30;
  v32 = (v19 - v20) / 100.0;
  result = MEMORY[0x223D52200](v75, v21);
  v34 = v20 - (v32 + v32);
  v35 = v16 - v32;
  if (v34 > (v16 - v32))
  {
    __break(1u);
LABEL_74:
    __break(1u);
    goto LABEL_75;
  }

  if (v34 <= *v75 && *v75 < v35)
  {
    v69 = sin((1.0 - v23) * 1.57079633);
    sub_21E04E4E8(&qword_27CEAB108, v7);
    sub_21E141534();
    sub_21E141554();
    v65 = v42;
    v64 = v42;
    sub_21E141574();
    *&v66 = v43;
    v67 = v43;
    sub_21E141564();
    LODWORD(v68) = v44;
    v45 = *MEMORY[0x277CE0EE0];
    v46 = v71;
    v47 = *(v70 + 104);
    v48 = v72;
    v47(v72, v45, v71);
    sub_21E141594();
    sub_21E141534();
    sub_21E141554();
    sub_21E141574();
    sub_21E141564();
    if (v49.n128_f32[0] >= *&v68)
    {
      v58 = *&v68;
    }

    else
    {
      v58 = v49.n128_f32[0];
    }

    if (*&v68 > v49.n128_f32[0])
    {
      v59 = *&v68;
    }

    else
    {
      v59 = v49.n128_f32[0];
    }

    if (v58 != v59)
    {
      v49.n128_f64[0] = v58 + v69 / (v59 - v58);
    }

    (v47)(v48, v45, v46, v49);
    v60 = sub_21E141594();

    (*(v73 + 8))(v7, v74);
    return v60;
  }

  v37 = v16 + v32;
  v38 = v19 + (v32 + v32);
  if ((v16 + v32) > v38)
  {
    goto LABEL_74;
  }

  if (v37 <= *v75 && *v75 <= v38)
  {
    v68 = sin(v25 * 1.57079633);
    sub_21E04E4E8(&qword_27CEAB108, *&v69);
    sub_21E141534();
    sub_21E141554();
    *&v67 = v50;
    v66 = v50;
    sub_21E141574();
    *&v63[1] = v51;
    v64 = v51;
    sub_21E141564();
    v65 = v52;
    v53 = *MEMORY[0x277CE0EE0];
    v54 = v71;
    v55 = *(v70 + 104);
    v56 = v72;
    v55(v72, v53, v71);
    sub_21E141594();
    sub_21E141534();
    sub_21E141554();
    sub_21E141574();
    sub_21E141564();
    if (v57.n128_f32[0] >= v65)
    {
      v61 = v65;
    }

    else
    {
      v61 = v57.n128_f32[0];
    }

    if (v65 > v57.n128_f32[0])
    {
      v62 = v65;
    }

    else
    {
      v62 = v57.n128_f32[0];
    }

    if (v61 != v62)
    {
      v57.n128_f64[0] = v61 + v68 / (v62 - v61);
    }

    (v55)(v56, v53, v54, v57);
    v60 = sub_21E141594();

    (*(v73 + 8))(COERCE_DOUBLE(*&v69), v74);
    return v60;
  }

  if (v35 <= v37)
  {
    if (v35 > *v75 || *v75 >= v37)
    {
      v41 = sub_21E1414F4();

      return v41;
    }

    return v31;
  }

LABEL_75:
  __break(1u);
  return result;
}

void *sub_21E057B14()
{
  v1 = sub_21E141424();
  v68 = *(v1 - 8);
  v69 = v1;
  MEMORY[0x28223BE20](v1);
  v70 = v61 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_21E13FF94();
  v71 = *(v3 - 8);
  v72 = v3;
  MEMORY[0x28223BE20](v3);
  *&v67 = v61 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = v61 - v6;
  v8 = sub_21E13F444();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v61 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = v61 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAB300);
  v16 = *(v0 + *(v15 + 68));
  v17 = (v0 + *(v15 + 76));
  v19 = *v17;
  v18 = v17[1];
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAB518);
  MEMORY[0x223D52200](v73);
  if (v16 == v19)
  {
    v21 = 1.0;
    if (v73[0] >= 1.0)
    {
      v22 = 1.0;
      if (v18 == v16)
      {
        goto LABEL_30;
      }

      goto LABEL_25;
    }

    v22 = v73[0];
    if (v73[0] < 0.0)
    {
      v21 = 0.0;
      v22 = 0.0;
      if (v18 == v16)
      {
        goto LABEL_30;
      }

      goto LABEL_25;
    }

    goto LABEL_15;
  }

  v22 = (v73[0] - v19) / (v16 - v19);
  v21 = 1.0;
  if (v22 >= 1.0)
  {
    if (v18 == v16)
    {
      v22 = 1.0;
      if (v73[0] >= 1.0)
      {
        goto LABEL_30;
      }

      goto LABEL_20;
    }

LABEL_25:
    v22 = v21;
    v23 = (v73[0] - v16) / (v18 - v16);
    v24 = 0.0;
    if (v23 >= 0.0)
    {
      v24 = (v73[0] - v16) / (v18 - v16);
    }

    if (v23 >= 1.0)
    {
      v21 = 1.0;
    }

    else
    {
      v21 = v24;
    }

    goto LABEL_30;
  }

  if (v22 >= 0.0)
  {
LABEL_15:
    if (v18 == v16)
    {
      if (v73[0] >= v21)
      {
        goto LABEL_30;
      }

LABEL_20:
      if (v73[0] < 0.0)
      {
        v21 = 0.0;
      }

      else
      {
        v21 = v73[0];
      }

      goto LABEL_30;
    }

    v21 = v22;
    goto LABEL_25;
  }

  if (v18 != v16)
  {
    v21 = 0.0;
    goto LABEL_25;
  }

  v22 = 0.0;
  if (v73[0] < 1.0)
  {
    if (v73[0] < 0.0)
    {
      v21 = 0.0;
    }

    else
    {
      v21 = v73[0];
    }
  }

LABEL_30:
  sub_21E04E2E8(v14);
  (*(v9 + 104))(v11, *MEMORY[0x277CDF3D0], v8);
  v25 = sub_21E13F434();
  v26 = *(v9 + 8);
  v26(v11, v8);
  v26(v14, v8);
  if (v25)
  {
    v27 = sub_21E141484();
  }

  else
  {
    v27 = _s20VisualIntelligenceUI17PinStyleProvidingPAAE15foregroundColor9isEnabled05SwiftC00H0VSb_tF_0();
  }

  v28 = v27;
  v29 = (v18 - v19) / 100.0;
  result = MEMORY[0x223D52200](v73, v20);
  v31 = v19 - (v29 + v29);
  v32 = v16 - v29;
  if (v31 > v16 - v29)
  {
    __break(1u);
LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

  if (v31 <= v73[0] && v73[0] < v32)
  {
    v67 = sin((1.0 - v22) * 1.57079633);
    sub_21E04E4E8(&qword_27CEAB300, v7);
    sub_21E141534();
    sub_21E141554();
    v63 = v39;
    v62 = v39;
    sub_21E141574();
    *&v64 = v40;
    v65 = v40;
    sub_21E141564();
    LODWORD(v66) = v41;
    v42 = *MEMORY[0x277CE0EE0];
    v43 = v69;
    v44 = *(v68 + 104);
    v45 = v70;
    v44(v70, v42, v69);
    sub_21E141594();
    sub_21E141534();
    sub_21E141554();
    sub_21E141574();
    sub_21E141564();
    if (v46.n128_f32[0] >= *&v66)
    {
      v56 = *&v66;
    }

    else
    {
      v56 = v46.n128_f32[0];
    }

    if (*&v66 > v46.n128_f32[0])
    {
      v57 = *&v66;
    }

    else
    {
      v57 = v46.n128_f32[0];
    }

    if (v56 != v57)
    {
      v46.n128_f64[0] = v56 + v67 / (v57 - v56);
    }

    (v44)(v45, v42, v43, v46);
    v58 = sub_21E141594();

    (*(v71 + 8))(v7, v72);
    return v58;
  }

  v34 = v16 + v29;
  v35 = v18 + v29 + v29;
  if (v16 + v29 > v35)
  {
    goto LABEL_71;
  }

  if (v34 <= v73[0] && v73[0] <= v35)
  {
    v66 = sin(v21 * 1.57079633);
    v47 = v67;
    sub_21E04E4E8(&qword_27CEAB300, *&v67);
    sub_21E141534();
    sub_21E141554();
    *&v65 = v48;
    v64 = v48;
    sub_21E141574();
    *&v61[1] = v49;
    v62 = v49;
    sub_21E141564();
    v63 = v50;
    v51 = *MEMORY[0x277CE0EE0];
    v52 = v69;
    v53 = *(v68 + 104);
    v54 = v70;
    v53(v70, v51, v69);
    sub_21E141594();
    sub_21E141534();
    sub_21E141554();
    sub_21E141574();
    sub_21E141564();
    if (v55.n128_f32[0] >= v63)
    {
      v59 = v63;
    }

    else
    {
      v59 = v55.n128_f32[0];
    }

    if (v63 > v55.n128_f32[0])
    {
      v60 = v63;
    }

    else
    {
      v60 = v55.n128_f32[0];
    }

    if (v59 != v60)
    {
      v55.n128_f64[0] = v59 + v66 / (v60 - v59);
    }

    (v53)(v54, v51, v52, v55);
    v58 = sub_21E141594();

    (*(v71 + 8))(COERCE_DOUBLE(*&v47), v72);
    return v58;
  }

  if (v32 <= v34)
  {
    if (v32 > v73[0] || v73[0] >= v34)
    {
      v38 = sub_21E1414F4();

      return v38;
    }

    return v28;
  }

LABEL_72:
  __break(1u);
  return result;
}

uint64_t sub_21E058470@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAB108);
  v5 = v4 - 8;
  v39 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v39 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAB4F0);
  v9 = *(v8 - 8);
  v44 = v8;
  v45 = v9;
  MEMORY[0x28223BE20](v8);
  v43 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v46 = &v39 - v12;
  v42 = sub_21E140004();
  LOBYTE(v58) = 1;
  sub_21E058D48(a1, v54);
  *&v53[7] = v54[0];
  *&v53[23] = v54[1];
  *&v53[39] = v54[2];
  *&v53[55] = v54[3];
  v40 = v58;
  v41 = sub_21E057178();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAB4E8);
  sub_21E1419F4();
  v13 = v58;
  v14 = v59;
  v15 = *v60;
  v16 = (a1 + *(v5 + 84));
  v17 = *v16;
  v18 = v16[1];
  v47 = a1;
  sub_21DF236C0(a1, v7, &qword_27CEAB108);
  v19 = (*(v39 + 80) + 16) & ~*(v39 + 80);
  v20 = swift_allocObject();
  sub_21DF3DE9C(v7, v20 + v19, &qword_27CEAB108);
  v50 = v13;
  v51 = v14;
  v52 = v15;
  v48 = v17;
  v49 = v18;
  v58 = sub_21E04E6F8(v17);
  v59 = v21;
  v60[0] = 0;
  v22 = MEMORY[0x277D84F90];
  *&v60[8] = MEMORY[0x277D84F90];
  v55 = sub_21E04E6F8(v18);
  v56 = v23;
  LOBYTE(v57[0]) = 0;
  *(&v57[0] + 1) = v22;
  sub_21E05B590();
  v24 = v46;
  sub_21E1418B4();
  v25 = *(v45 + 16);
  v26 = v43;
  v27 = v24;
  v28 = v44;
  v25(v43, v27, v44);
  v30 = v41;
  v29 = v42;
  v55 = v42;
  v56 = 0;
  v31 = v40;
  LOBYTE(v57[0]) = v40;
  *(v57 + 1) = *v53;
  *(&v57[3] + 1) = *&v53[48];
  *(&v57[2] + 1) = *&v53[32];
  *(&v57[1] + 1) = *&v53[16];
  *&v57[4] = *&v53[63];
  *(&v57[4] + 1) = v41;
  v32 = v57[0];
  *a2 = v42;
  *(a2 + 1) = v32;
  v33 = v57[1];
  v34 = v57[2];
  v35 = v57[4];
  *(a2 + 4) = v57[3];
  *(a2 + 5) = v35;
  *(a2 + 2) = v33;
  *(a2 + 3) = v34;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAB500);
  v25(&a2[*(v36 + 48)], v26, v28);
  sub_21DF236C0(&v55, &v58, &qword_27CEAB468);
  v37 = *(v45 + 8);
  v37(v46, v28);
  v37(v26, v28);
  v58 = v29;
  v59 = 0;
  v60[0] = v31;
  v61 = *&v53[16];
  v62 = *&v53[32];
  *v63 = *&v53[48];
  *&v60[1] = *v53;
  *&v63[15] = *&v53[63];
  v64 = v30;
  return sub_21DF23614(&v58, &qword_27CEAB468);
}

uint64_t sub_21E0588D4@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAB300);
  v5 = v4 - 8;
  v36 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v36 - v6;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAB4F0);
  v43 = *(v37 - 8);
  MEMORY[0x28223BE20](v37);
  v42 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v39 = &v36 - v10;
  v41 = sub_21E140004();
  LOBYTE(v55) = 1;
  sub_21E05904C(a1, v51);
  *&v50[7] = v51[0];
  *&v50[23] = v51[1];
  *&v50[39] = v51[2];
  *&v50[55] = v51[3];
  v38 = v55;
  v40 = sub_21E057B14();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAB518);
  sub_21E1419F4();
  v11 = v55;
  v12 = v56;
  v13 = *v57;
  v14 = (a1 + *(v5 + 84));
  v15 = *v14;
  v16 = v14[1];
  v44 = a1;
  sub_21DF236C0(a1, v7, &qword_27CEAB300);
  v17 = (*(v36 + 80) + 16) & ~*(v36 + 80);
  v18 = swift_allocObject();
  sub_21DF3DE9C(v7, v18 + v17, &qword_27CEAB300);
  v47 = v11;
  v48 = v12;
  v49 = v13;
  v45 = v15;
  v46 = v16;
  v55 = sub_21E04E99C(v15);
  v56 = v19;
  v57[0] = 0;
  v20 = MEMORY[0x277D84F90];
  *&v57[8] = MEMORY[0x277D84F90];
  v52 = sub_21E04E99C(v16);
  v53 = v21;
  LOBYTE(v54[0]) = 0;
  *(&v54[0] + 1) = v20;
  sub_21DFD30A4();
  v22 = v39;
  sub_21E1418B4();
  v23 = v42;
  v24 = *(v43 + 16);
  v25 = v37;
  v24(v42, v22, v37);
  v27 = v40;
  v26 = v41;
  v52 = v41;
  v53 = 0;
  v28 = v38;
  LOBYTE(v54[0]) = v38;
  *(v54 + 1) = *v50;
  *(&v54[3] + 1) = *&v50[48];
  *(&v54[2] + 1) = *&v50[32];
  *(&v54[1] + 1) = *&v50[16];
  *&v54[4] = *&v50[63];
  *(&v54[4] + 1) = v40;
  v29 = v54[0];
  *a2 = v41;
  *(a2 + 1) = v29;
  v30 = v54[1];
  v31 = v54[2];
  v32 = v54[4];
  *(a2 + 4) = v54[3];
  *(a2 + 5) = v32;
  *(a2 + 2) = v30;
  *(a2 + 3) = v31;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAB500);
  v24(&a2[*(v33 + 48)], v23, v25);
  sub_21DF236C0(&v52, &v55, &qword_27CEAB468);
  v34 = *(v43 + 8);
  v34(v22, v25);
  v34(v23, v25);
  v55 = v26;
  v56 = 0;
  v57[0] = v28;
  v58 = *&v50[16];
  v59 = *&v50[32];
  *v60 = *&v50[48];
  *&v57[1] = *v50;
  *&v60[15] = *&v50[63];
  v61 = v27;
  return sub_21DF23614(&v55, &qword_27CEAB468);
}

uint64_t sub_21E058D48@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_21E140AD4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAB108) + 72));
  v9 = v8[1];
  v38 = *v8;
  v39 = v9;

  MEMORY[0x223D52A60](8250, 0xE200000000000000);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAB4E8);
  MEMORY[0x223D52200](&v37, v10);
  v11 = sub_21E04E6F8(*&v37);
  MEMORY[0x223D52A60](v11);

  sub_21E140A74();
  v33 = sub_21E140C44();
  v34 = v12;
  v32 = v13;
  v35 = v14;

  sub_21E056E30();
  (*(v5 + 104))(v7, *MEMORY[0x277CE0A98], v4);
  MEMORY[0x223D51250](0, 0xE000000000000000, v7, 12.0);
  (*(v5 + 8))(v7, v4);
  v15 = sub_21E140C44();
  v17 = v16;
  LOBYTE(v5) = v18;

  v19 = sub_21E140C04();
  v21 = v20;
  LOBYTE(a1) = v22;
  v24 = v23;
  sub_21DF3DE8C(v15, v17, v5 & 1);

  v36 = v32 & 1;
  LOBYTE(v38) = v32 & 1;
  LOBYTE(v17) = a1 & 1;
  LOBYTE(v37) = a1 & 1;
  v26 = v33;
  v25 = v34;
  sub_21DF42BEC(v33, v34, v32 & 1);
  v27 = v35;

  sub_21DF42BEC(v19, v21, v17);

  sub_21DF3DE8C(v19, v21, v17);

  sub_21DF3DE8C(v26, v25, v36);

  v29 = v38;
  v30 = v37;
  *a2 = v26;
  *(a2 + 8) = v25;
  *(a2 + 16) = v29;
  *(a2 + 24) = v27;
  *(a2 + 32) = v19;
  *(a2 + 40) = v21;
  *(a2 + 48) = v30;
  *(a2 + 56) = v24;
  return result;
}

uint64_t sub_21E05904C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_21E140AD4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAB300) + 72));
  v9 = v8[1];
  v38 = *v8;
  v39 = v9;

  MEMORY[0x223D52A60](8250, 0xE200000000000000);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAB518);
  MEMORY[0x223D52200](&v37, v10);
  v11 = sub_21E04E99C(v37);
  MEMORY[0x223D52A60](v11);

  sub_21E140A74();
  v33 = sub_21E140C44();
  v34 = v12;
  v32 = v13;
  v35 = v14;

  sub_21E056FD4();
  (*(v5 + 104))(v7, *MEMORY[0x277CE0A98], v4);
  MEMORY[0x223D51250](0, 0xE000000000000000, v7, 12.0);
  (*(v5 + 8))(v7, v4);
  v15 = sub_21E140C44();
  v17 = v16;
  LOBYTE(v5) = v18;

  v19 = sub_21E140C04();
  v21 = v20;
  LOBYTE(a1) = v22;
  v24 = v23;
  sub_21DF3DE8C(v15, v17, v5 & 1);

  v36 = v32 & 1;
  LOBYTE(v38) = v32 & 1;
  LOBYTE(v17) = a1 & 1;
  LOBYTE(v37) = a1 & 1;
  v26 = v33;
  v25 = v34;
  sub_21DF42BEC(v33, v34, v32 & 1);
  v27 = v35;

  sub_21DF42BEC(v19, v21, v17);

  sub_21DF3DE8C(v19, v21, v17);

  sub_21DF3DE8C(v26, v25, v36);

  v29 = v38;
  v30 = LOBYTE(v37);
  *a2 = v26;
  *(a2 + 8) = v25;
  *(a2 + 16) = v29;
  *(a2 + 24) = v27;
  *(a2 + 32) = v19;
  *(a2 + 40) = v21;
  *(a2 + 48) = v30;
  *(a2 + 56) = v24;
  return result;
}

uint64_t sub_21E059350(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAB108);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v13 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAB2A8);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v13 - v7;
  sub_21E13F344();
  v9 = sub_21E13F354();
  (*(*(v9 - 8) + 56))(v8, 0, 1, v9);
  sub_21DF236C0(a1, v5, &qword_27CEAB108);
  v10 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v11 = swift_allocObject();
  sub_21DF3DE9C(v5, v11 + v10, &qword_27CEAB108);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7CF0);
  sub_21DF23E5C(&qword_280F68D98, &qword_27CEA7CF0);
  return sub_21E141754();
}

uint64_t sub_21E059580(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAB300);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v13 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAB2A8);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v13 - v7;
  sub_21E13F344();
  v9 = sub_21E13F354();
  (*(*(v9 - 8) + 56))(v8, 0, 1, v9);
  sub_21DF236C0(a1, v5, &qword_27CEAB300);
  v10 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v11 = swift_allocObject();
  sub_21DF3DE9C(v5, v11 + v10, &qword_27CEAB300);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7CF0);
  sub_21DF23E5C(&qword_280F68D98, &qword_27CEA7CF0);
  return sub_21E141754();
}

void sub_21E05982C()
{
  sub_21E059EBC(319, &qword_280F69040, MEMORY[0x277CDF3E0]);
  if (v0 <= 0x3F)
  {
    sub_21E059EBC(319, &qword_27CEAB448, MEMORY[0x277CE0040]);
    if (v1 <= 0x3F)
    {
      sub_21E141A24();
      if (v2 <= 0x3F)
      {
        swift_checkMetadataState();
        if (v3 <= 0x3F)
        {
          sub_21E142064();
          if (v4 <= 0x3F)
          {
            sub_21DFB9568();
            if (v5 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

uint64_t sub_21E059964(int *a1, unsigned int a2, uint64_t a3)
{
  v6 = *(*(sub_21E13F444() - 8) + 64);
  if (v6 <= 8)
  {
    v7 = 8;
  }

  else
  {
    v7 = v6;
  }

  v8 = *(sub_21E13FF94() - 8);
  if (*(v8 + 64) <= 8uLL)
  {
    v9 = 8;
  }

  else
  {
    v9 = *(v8 + 64);
  }

  v10 = *(*(a3 + 16) - 8);
  v11 = *(v10 + 84);
  v12 = *(v8 + 80);
  v13 = *(v10 + 80);
  if (v11 <= 0x7FFFFFFF)
  {
    v15 = 0x7FFFFFFF;
  }

  else
  {
    v15 = *(v10 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v16 = v12 & 0xF8 | 7;
  v17 = v7 + v16 + 1;
  v18 = v9 + 1;
  v19 = v13 | 7;
  if (v15 >= a2)
  {
    goto LABEL_33;
  }

  v14 = *(v10 + 64);
  v20 = ((v14 + 7 + ((v14 + v13) & ~v13) + ((v13 + 16 + ((v14 + 7 + ((v14 + v13 + ((v13 + 16) & ~v13) + ((v19 + v18 + (v17 & ~v16)) & ~v19)) & ~v13)) & 0xFFFFFFFFFFFFFFF8)) & ~v13)) & 0xFFFFFFFFFFFFFFF8) + 16;
  v21 = v20 & 0xFFFFFFF8;
  if ((v20 & 0xFFFFFFF8) != 0)
  {
    v22 = 2;
  }

  else
  {
    v22 = a2 - v15 + 1;
  }

  if (v22 >= 0x10000)
  {
    v23 = 4;
  }

  else
  {
    v23 = 2;
  }

  if (v22 < 0x100)
  {
    v23 = 1;
  }

  if (v22 >= 2)
  {
    v24 = v23;
  }

  else
  {
    v24 = 0;
  }

  if (v24 > 1)
  {
    if (v24 == 2)
    {
      v25 = *(a1 + v20);
      if (!v25)
      {
        goto LABEL_33;
      }
    }

    else
    {
      v25 = *(a1 + v20);
      if (!v25)
      {
        goto LABEL_33;
      }
    }

LABEL_30:
    v27 = v25 - 1;
    if (v21)
    {
      v27 = 0;
      v28 = *a1;
    }

    else
    {
      v28 = 0;
    }

    return v15 + (v28 | v27) + 1;
  }

  if (v24)
  {
    v25 = *(a1 + v20);
    if (v25)
    {
      goto LABEL_30;
    }
  }

LABEL_33:
  v29 = ((((((a1 + v17) & ~v16) + v18 + v19) & ~v19) + 15) & 0xFFFFFFFFFFFFFFF8);
  if ((v11 & 0x80000000) != 0)
  {
    v31 = *(v10 + 48);

    return v31((v29 + v13 + 8) & ~v13);
  }

  else
  {
    v30 = *v29;
    if (v30 >= 0xFFFFFFFF)
    {
      LODWORD(v30) = -1;
    }

    return (v30 + 1);
  }
}

void sub_21E059BF4(_DWORD *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = *(*(sub_21E13F444() - 8) + 64);
  if (v8 <= 8)
  {
    v9 = 8;
  }

  else
  {
    v9 = v8;
  }

  v10 = *(sub_21E13FF94() - 8);
  if (*(v10 + 64) <= 8uLL)
  {
    v11 = 8;
  }

  else
  {
    v11 = *(v10 + 64);
  }

  v12 = *(*(a4 + 16) - 8);
  v13 = *(v12 + 84);
  v14 = *(v10 + 80);
  v15 = *(v12 + 80);
  if (v13 <= 0x7FFFFFFF)
  {
    v17 = 0x7FFFFFFF;
  }

  else
  {
    v17 = *(v12 + 84);
  }

  v18 = v14 & 0xF8 | 7;
  v19 = v9 + v18 + 1;
  v20 = v11 + 1;
  v16 = *(v12 + 64);
  v21 = ((v16 + 7 + ((v16 + v15) & ~v15) + ((v15 + 16 + ((v16 + 7 + ((v16 + v15 + ((v15 + 16) & ~v15) + (((v15 | 7) + v20 + (v19 & ~v18)) & ~(v15 | 7))) & ~v15)) & 0xFFFFFFFFFFFFFFF8)) & ~v15)) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v17 >= a3)
  {
    v24 = 0;
    v25 = a2 - v17;
    if (a2 <= v17)
    {
      goto LABEL_23;
    }
  }

  else
  {
    if (((v16 + 7 + ((v16 + v15) & ~v15) + ((v15 + 16 + ((v16 + 7 + ((v16 + v15 + ((v15 + 16) & ~v15) + (((v15 | 7) + v20 + (v19 & ~v18)) & ~(v15 | 7))) & ~v15)) & 0xFFFFFFF8)) & ~v15)) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v22 = a3 - v17 + 1;
    }

    else
    {
      v22 = 2;
    }

    if (v22 >= 0x10000)
    {
      v23 = 4;
    }

    else
    {
      v23 = 2;
    }

    if (v22 < 0x100)
    {
      v23 = 1;
    }

    if (v22 >= 2)
    {
      v24 = v23;
    }

    else
    {
      v24 = 0;
    }

    v25 = a2 - v17;
    if (a2 <= v17)
    {
LABEL_23:
      if (v24 > 1)
      {
        if (v24 != 2)
        {
          *(a1 + v21) = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_39;
        }

        *(a1 + v21) = 0;
      }

      else if (v24)
      {
        *(a1 + v21) = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_39;
      }

      if (!a2)
      {
        return;
      }

LABEL_39:
      v28 = ((((((a1 + v19) & ~v18) + v20 + (v15 | 7)) & ~(v15 | 7)) + 15) & 0xFFFFFFFFFFFFFFF8);
      if ((v13 & 0x80000000) != 0)
      {
        v30 = *(v12 + 56);

        v30((v28 + v15 + 8) & ~v15, a2);
      }

      else
      {
        if ((a2 & 0x80000000) != 0)
        {
          v29 = a2 & 0x7FFFFFFF;
        }

        else
        {
          v29 = (a2 - 1);
        }

        *v28 = v29;
      }

      return;
    }
  }

  if (v21)
  {
    v26 = 1;
  }

  else
  {
    v26 = v25;
  }

  if (v21)
  {
    v27 = ~v17 + a2;
    bzero(a1, v21);
    *a1 = v27;
  }

  if (v24 > 1)
  {
    if (v24 == 2)
    {
      *(a1 + v21) = v26;
    }

    else
    {
      *(a1 + v21) = v26;
    }
  }

  else if (v24)
  {
    *(a1 + v21) = v26;
  }
}

void sub_21E059EBC(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_21E13F464();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_21E059F10()
{
  result = qword_27CEAB450;
  if (!qword_27CEAB450)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEAB458);
    sub_21E05221C();
    sub_21E0523F4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEAB450);
  }

  return result;
}

uint64_t sub_21E059FC0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAB108);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAB4E8);
  sub_21E1419D4();
  return (*(a1 + *(v2 + 80)))(0);
}

uint64_t sub_21E05A050(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAB300);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAB518);
  sub_21E1419D4();
  return (*(a1 + *(v2 + 80)))(0);
}

uint64_t sub_21E05A10C()
{
  sub_21E1400D4();
  sub_21E141684();
}

BOOL sub_21E05A1D4(uint64_t a1, double a2)
{
  v3 = LODWORD(a2);
  v4 = (*&a2 >> 52) & 0x7FFLL;
  v5 = *&a2 & 0xFFFFFFFFFFFFFLL;
  v6 = v4 | *&a2 & 0xFFFFFFFFFFFFFLL;
  if (!v6)
  {
    v7 = 0;
    result = 1;
    goto LABEL_25;
  }

  LODWORD(v6) = 0;
  v7 = 1;
  if (v4 == 2047)
  {
    result = 0;
  }

  else
  {
    result = 0;
    if (a2 > -1.0)
    {
      v9 = sub_21E142494();
      if (v9 > 31)
      {
        LODWORD(v6) = 0;
        result = 0;
        v7 = 1;
        goto LABEL_25;
      }

      v10 = v9;
      v11 = sub_21E142474();
      v12 = v11 + __clz(__rbit64(v5));
      v6 = v10 - v12;
      if (__OFSUB__(v10, v12))
      {
        __break(1u);
      }

      else
      {
        if (v12 <= 31)
        {
          if (v6 < -32 || v6 > 32)
          {
LABEL_9:
            LODWORD(v6) = 0;
            v13 = 0;
            if ((v10 & 0x8000000000000000) == 0)
            {
              goto LABEL_23;
            }

            goto LABEL_24;
          }

          if (v6 < 0)
          {
            if (v6 == -32)
            {
              goto LABEL_9;
            }

            LODWORD(v6) = v3 >> (v12 - v10);
          }

          else
          {
            if (v6 == 32)
            {
              goto LABEL_9;
            }

            LODWORD(v6) = v3 << v6;
          }

LABEL_21:
          if ((v10 & 0x8000000000000000) == 0)
          {
LABEL_23:
            v13 = 1 << v10;
            goto LABEL_24;
          }

          v13 = 0;
LABEL_24:
          v7 = 0;
          LODWORD(v6) = v6 | v13;
          result = v10 >= v11;
          goto LABEL_25;
        }

        if ((v6 - 65) <= 0xFFFFFFFFFFFFFF7ELL)
        {
          LODWORD(v6) = 0;
          goto LABEL_21;
        }

        if ((v6 & 0x8000000000000000) == 0)
        {
          if (v6 >= 0x40)
          {
            LODWORD(v6) = 0;
          }

          else
          {
            v6 = v5 << v6;
          }

          goto LABEL_21;
        }
      }

      if (v6 <= 0xFFFFFFFFFFFFFFC0)
      {
        LODWORD(v6) = 0;
      }

      else
      {
        v6 = v5 >> (v12 - v10);
      }

      goto LABEL_21;
    }
  }

LABEL_25:
  *a1 = v6;
  *(a1 + 4) = v7;
  return result;
}

BOOL sub_21E05A344(uint64_t a1, double a2)
{
  v3 = (*&a2 >> 52) & 0x7FFLL;
  v4 = *&a2 & 0xFFFFFFFFFFFFFLL;
  v5 = v3 | *&a2 & 0xFFFFFFFFFFFFFLL;
  if (v5)
  {
    result = 0;
    v5 = 0;
    v7 = 1;
    if (v3 != 2047 && a2 > -1.0)
    {
      v8 = sub_21E142494();
      if (v8 <= 63)
      {
        v9 = v8;
        v10 = sub_21E142474();
        v11 = v10 + __clz(__rbit64(v4));
        v12 = v9 - v11;
        if (__OFSUB__(v9, v11))
        {
          __break(1u);
        }

        else
        {
          if (v11 > 63)
          {
            if (v12 < -64 || v12 > 64)
            {
              goto LABEL_12;
            }
          }

          else if (v12 < -64 || v12 > 64)
          {
            goto LABEL_12;
          }

          if ((v12 & 0x8000000000000000) == 0)
          {
            if (v12 != 64)
            {
              v13 = v4 << v12;
              if (v9 < 0)
              {
LABEL_17:
                v14 = 0;
                goto LABEL_24;
              }

LABEL_23:
              v14 = 1 << v9;
              goto LABEL_24;
            }

            goto LABEL_12;
          }
        }

        if (v12 != -64)
        {
          v13 = v4 >> (v11 - v9);
          if (v9 < 0)
          {
            goto LABEL_17;
          }

          goto LABEL_23;
        }

LABEL_12:
        v13 = 0;
        v14 = 0;
        if (v9 < 0)
        {
LABEL_24:
          v7 = 0;
          result = v9 >= v10;
          v5 = v13 | v14;
          goto LABEL_25;
        }

        goto LABEL_23;
      }

      v5 = 0;
      result = 0;
      v7 = 1;
    }
  }

  else
  {
    v7 = 0;
    result = 1;
  }

LABEL_25:
  *a1 = v5;
  *(a1 + 8) = v7;
  return result;
}

BOOL sub_21E05A484(uint64_t a1, double a2)
{
  v4 = (*&a2 >> 52) & 0x7FFLL;
  v5 = *&a2 & 0xFFFFFFFFFFFFFLL;
  v6 = v4 | *&a2 & 0xFFFFFFFFFFFFFLL;
  if (!v6)
  {
    v14 = 0;
    result = 1;
    goto LABEL_35;
  }

  if (v4 == 2047)
  {
    goto LABEL_38;
  }

  v7 = sub_21E142494();
  if (v7 > 63)
  {
    goto LABEL_38;
  }

  v8 = v7;
  v9 = sub_21E142474();
  result = v8 >= v9;
  v11 = v9 + __clz(__rbit64(v5));
  v12 = v8 - v11;
  if (__OFSUB__(v8, v11))
  {
    __break(1u);
    goto LABEL_37;
  }

  if (v11 <= 63)
  {
    if (v12 < -64 || v12 > 64)
    {
LABEL_8:
      if (v8 != 63)
      {
        if (v8 < -64)
        {
          do
          {
            v13 = 0;
            v14 = 0;
LABEL_29:
            v14 |= v13;
LABEL_30:
            if (a2 >= 0.0)
            {
              if ((v14 & 0x8000000000000000) == 0)
              {
                goto LABEL_34;
              }
            }

            else
            {
              if ((v14 & 0x8000000000000000) == 0)
              {
                goto LABEL_32;
              }

              __break(1u);
            }

            __break(1u);
LABEL_42:
            ;
          }

          while (v8 != -64);
          goto LABEL_15;
        }

        goto LABEL_17;
      }

LABEL_37:
      if (a2 >= 0.0)
      {
LABEL_38:
        v14 = 0;
        result = 0;
        LOBYTE(v6) = 1;
        goto LABEL_35;
      }

LABEL_50:
      LOBYTE(v6) = 0;
      v14 = 0x8000000000000000;
      goto LABEL_35;
    }

    if ((v12 & 0x8000000000000000) == 0)
    {
      if (v12 == 64)
      {
        goto LABEL_8;
      }

LABEL_24:
      v14 = v5 << v12;
      if (v8 != 63)
      {
        goto LABEL_25;
      }

      goto LABEL_48;
    }

    if (v12 == -64)
    {
      goto LABEL_8;
    }

LABEL_47:
    v14 = v5 >> (v11 - v8);
    if (v8 != 63)
    {
LABEL_25:
      if (v8 >= -64)
      {
        if ((v8 & 0x8000000000000000) == 0)
        {
LABEL_28:
          v13 = 1 << v8;
          goto LABEL_29;
        }

        if (v8 == -64)
        {
          goto LABEL_30;
        }
      }

      v13 = 0;
      goto LABEL_29;
    }

LABEL_48:
    if (a2 >= 0.0 || v14)
    {
      goto LABEL_38;
    }

    goto LABEL_50;
  }

  if (v12 >= -64 && v12 <= 64)
  {
    if (v12 < 0)
    {
      if (v12 != -64)
      {
        goto LABEL_47;
      }
    }

    else if (v12 != 64)
    {
      goto LABEL_24;
    }
  }

  if (v8 == 63)
  {
    goto LABEL_37;
  }

  if (v8 >= -64)
  {
LABEL_17:
    if (v8 < 0)
    {
      goto LABEL_42;
    }

    v14 = 0;
    goto LABEL_28;
  }

LABEL_15:
  v14 = 0;
  if (a2 < 0.0)
  {
LABEL_32:
    LOBYTE(v6) = 0;
    v14 = -v14;
  }

  else
  {
LABEL_34:
    LOBYTE(v6) = 0;
  }

LABEL_35:
  *a1 = v14;
  *(a1 + 8) = v6;
  return result;
}

double sub_21E05A674@<D0>(double *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAB320);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAB4C8);
  MEMORY[0x223D52200](&v5, v2);
  LODWORD(v3) = v5;
  result = v3;
  *a1 = result;
  return result;
}

double sub_21E05A6EC@<D0>(uint64_t *a1@<X3>, uint64_t *a2@<X5>, double *a3@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a1);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  MEMORY[0x223D52200](&v7, v5);
  result = v7;
  *a3 = v7;
  return result;
}

double sub_21E05A764@<D0>(double *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAB378);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6F58);
  MEMORY[0x223D52200](&v4, v2);
  result = v4;
  *a1 = v4;
  return result;
}

unint64_t sub_21E05A834()
{
  result = qword_27CEAB470;
  if (!qword_27CEAB470)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEAB468);
    sub_21DF23E5C(&qword_27CEAB478, &qword_27CEAB480);
    sub_21DF23E5C(&qword_27CEA97F0, &qword_27CEA97F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEAB470);
  }

  return result;
}

unint64_t sub_21E05A918()
{
  result = qword_27CEAB4A0;
  if (!qword_27CEAB4A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEAB4A0);
  }

  return result;
}

uint64_t sub_21E05A96C(double a1)
{
  sub_21E05A344(&v2, a1);
  if (v3)
  {
    v2 = 0;
    v3 = 0xE000000000000000;
    sub_21E142884();
    MEMORY[0x223D52A60](0x656C62756F44, 0xE600000000000000);
    MEMORY[0x223D52A60](0xD00000000000001ELL, 0x800000021E15D640);
    MEMORY[0x223D52A60](0x3436746E4955, 0xE600000000000000);
    MEMORY[0x223D52A60](0xD00000000000002ELL, 0x800000021E15D660);
    result = sub_21E1429C4();
    __break(1u);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAB310);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAB4D8);
    return sub_21E1419D4();
  }

  return result;
}

uint64_t sub_21E05AAB0(double a1)
{
  sub_21E05A1D4(v2, a1);
  if ((v2[0] & 0x100000000) != 0)
  {
    v2[0] = 0;
    v2[1] = 0xE000000000000000;
    sub_21E142884();
    MEMORY[0x223D52A60](0x656C62756F44, 0xE600000000000000);
    MEMORY[0x223D52A60](0xD00000000000001ELL, 0x800000021E15D640);
    MEMORY[0x223D52A60](0x3233746E4955, 0xE600000000000000);
    MEMORY[0x223D52A60](0xD00000000000002ELL, 0x800000021E15D660);
    result = sub_21E1429C4();
    __break(1u);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAB320);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAB4C8);
    return sub_21E1419D4();
  }

  return result;
}

uint64_t sub_21E05ABF4(double a1)
{
  sub_21E05A344(&v2, a1);
  if (v3)
  {
    v2 = 0;
    v3 = 0xE000000000000000;
    sub_21E142884();
    MEMORY[0x223D52A60](0x656C62756F44, 0xE600000000000000);
    MEMORY[0x223D52A60](0xD00000000000001ELL, 0x800000021E15D640);
    MEMORY[0x223D52A60](1953384789, 0xE400000000000000);
    MEMORY[0x223D52A60](0xD00000000000002ELL, 0x800000021E15D660);
    result = sub_21E1429C4();
    __break(1u);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAB330);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAB4B8);
    return sub_21E1419D4();
  }

  return result;
}

uint64_t sub_21E05AD34(double a1)
{
  sub_21E05A484(&v2, a1);
  if (v3)
  {
    v2 = 0;
    v3 = 0xE000000000000000;
    sub_21E142884();
    MEMORY[0x223D52A60](0x656C62756F44, 0xE600000000000000);
    MEMORY[0x223D52A60](0xD00000000000001ELL, 0x800000021E15D640);
    MEMORY[0x223D52A60](7630409, 0xE300000000000000);
    MEMORY[0x223D52A60](0xD00000000000002ELL, 0x800000021E15D660);
    result = sub_21E1429C4();
    __break(1u);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAB378);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6F58);
    return sub_21E1419D4();
  }

  return result;
}

uint64_t sub_21E05B000(unint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t (*a4)(uint64_t, __n128))
{
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a2) - 8);
  v7.n128_u64[0] = *a1;
  v8 = v4 + ((*(v6 + 80) + 32) & ~*(v6 + 80));

  return a4(v8, v7);
}

unint64_t sub_21E05B090()
{
  result = qword_27CEAB4C0;
  if (!qword_27CEAB4C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEAB4C0);
  }

  return result;
}

uint64_t sub_21E05B10C(uint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a1) - 8);
  v5 = v3 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return a3(v5);
}

uint64_t sub_21E05B1A4(uint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a1) - 8);
  v5 = *(v3 + 16);
  v6 = *(v3 + 24);
  v7 = v3 + ((*(v4 + 80) + 32) & ~*(v4 + 80));

  return a3(v5, v6, v7);
}

unint64_t sub_21E05B258()
{
  result = qword_27CEAB4D0;
  if (!qword_27CEAB4D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEAB4D0);
  }

  return result;
}

uint64_t objectdestroy_7Tm_0(uint64_t *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(a1);
  v3 = (*(*(v2 - 8) + 80) + 32) & ~*(*(v2 - 8) + 80);
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAD070);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_21E13F444();
    (*(*(v4 - 8) + 8))(v1 + v3, v4);
  }

  else
  {
  }

  v5 = *(v2 + 60);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAB140);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_21E13FF94();
    (*(*(v6 - 8) + 8))(v1 + v3 + v5, v6);
  }

  else
  {
  }

  return swift_deallocObject();
}

unint64_t sub_21E05B4EC()
{
  result = qword_27CEAB4E0;
  if (!qword_27CEAB4E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEAB4E0);
  }

  return result;
}

unint64_t sub_21E05B590()
{
  result = qword_27CEAB4F8;
  if (!qword_27CEAB4F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEAB4F8);
  }

  return result;
}

uint64_t sub_21E05B620@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(v2 + 16);
  v5 = (v4 + *(__swift_instantiateConcreteTypeFromMangledNameV2(a1) + 72));
  v6 = v5[1];
  *a2 = *v5;
  *(a2 + 8) = v6;
  *(a2 + 16) = 0;
  *(a2 + 24) = MEMORY[0x277D84F90];
}

uint64_t objectdestroyTm_18(uint64_t *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(a1);
  v3 = (*(*(v2 - 8) + 80) + 16) & ~*(*(v2 - 8) + 80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAD070);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_21E13F444();
    (*(*(v4 - 8) + 8))(v1 + v3, v4);
  }

  else
  {
  }

  v5 = *(v2 + 60);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAB140);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_21E13FF94();
    (*(*(v6 - 8) + 8))(v1 + v3 + v5, v6);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t ConfigFormLabelStyle.makeBody(configuration:)@<X0>(uint64_t a1@<X8>)
{
  *a1 = sub_21E13FFE4();
  *(a1 + 8) = 0x4014000000000000;
  *(a1 + 16) = 0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAB520);
  sub_21E05B9CC(a1 + *(v2 + 44));
  v3 = sub_21E140AC4();
  KeyPath = swift_getKeyPath();
  v5 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAB528) + 36));
  *v5 = KeyPath;
  v5[1] = v3;
  LOBYTE(v3) = sub_21E140974();
  sub_21E13F374();
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAB530);
  v15 = a1 + *(result + 36);
  *v15 = v3;
  *(v15 + 8) = v7;
  *(v15 + 16) = v9;
  *(v15 + 24) = v11;
  *(v15 + 32) = v13;
  *(v15 + 40) = 0;
  return result;
}

uint64_t sub_21E05B9CC@<X0>(uint64_t a1@<X8>)
{
  v25 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAB558);
  v2 = v1 - 8;
  MEMORY[0x28223BE20](v1);
  v4 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v24 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAB560);
  v9 = v8 - 8;
  MEMORY[0x28223BE20](v8);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v24 - v13;
  sub_21E140574();
  v15 = &v14[*(v9 + 44)];
  v16 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAB568) + 28);
  sub_21E1401E4();
  v17 = sub_21E1401F4();
  (*(*(v17 - 8) + 56))(v15 + v16, 0, 1, v17);
  *v15 = swift_getKeyPath();
  sub_21E140594();
  v18 = &v7[*(v2 + 44)];
  v19 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAA068) + 28);
  v20 = sub_21E140C34();
  (*(*(v20 - 8) + 56))(v18 + v19, 1, 1, v20);
  *v18 = swift_getKeyPath();
  sub_21DF236C0(v14, v11, &qword_27CEAB560);
  sub_21DF236C0(v7, v4, &qword_27CEAB558);
  v21 = v25;
  sub_21DF236C0(v11, v25, &qword_27CEAB560);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAB570);
  sub_21DF236C0(v4, v21 + *(v22 + 48), &qword_27CEAB558);
  sub_21DF23614(v7, &qword_27CEAB558);
  sub_21DF23614(v14, &qword_27CEAB560);
  sub_21DF23614(v4, &qword_27CEAB558);
  return sub_21DF23614(v11, &qword_27CEAB560);
}

uint64_t sub_21E05BCBC@<X0>(uint64_t a1@<X8>)
{
  *a1 = sub_21E13FFE4();
  *(a1 + 8) = 0x4014000000000000;
  *(a1 + 16) = 0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAB520);
  sub_21E05B9CC(a1 + *(v2 + 44));
  v3 = sub_21E140AC4();
  KeyPath = swift_getKeyPath();
  v5 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAB528) + 36));
  *v5 = KeyPath;
  v5[1] = v3;
  LOBYTE(v3) = sub_21E140974();
  sub_21E13F374();
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAB530);
  v15 = a1 + *(result + 36);
  *v15 = v3;
  *(v15 + 8) = v7;
  *(v15 + 16) = v9;
  *(v15 + 24) = v11;
  *(v15 + 32) = v13;
  *(v15 + 40) = 0;
  return result;
}

unint64_t sub_21E05BDDC()
{
  result = qword_27CEAB538;
  if (!qword_27CEAB538)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEAB530);
    sub_21E05BE68();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEAB538);
  }

  return result;
}

unint64_t sub_21E05BE68()
{
  result = qword_27CEAB540;
  if (!qword_27CEAB540)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEAB528);
    sub_21DF23E5C(&qword_27CEAB548, &qword_27CEAB550);
    sub_21DF23E5C(&qword_280F68DD0, &qword_27CEA75E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEAB540);
  }

  return result;
}

uint64_t sub_21E05BF98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6, uint64_t (*a7)(char *))
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(a5);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v14 - v11;
  sub_21DF236C0(a1, &v14 - v11, a5);
  return a7(v12);
}

uint64_t ConfigTextField.init(_:text:initialValue:onChange:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, uint64_t a10, uint64_t a11)
{
  *a9 = result;
  a9[1] = a2;
  a9[2] = a3;
  a9[3] = a4;
  a9[4] = a5;
  a9[5] = a6;
  a9[6] = a7;
  a9[7] = a8;
  a9[8] = a10;
  a9[9] = a11;
  return result;
}

uint64_t ConfigTextField.body.getter@<X0>(uint64_t a1@<X8>)
{
  v29 = a1;
  v26 = sub_21E13F504();
  v25 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v3 = &v22 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAB588);
  v4 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v6 = &v22 - v5;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAB590);
  v28 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v23 = &v22 - v7;
  v8 = v1[3];
  v37 = v1[2];
  v38 = v8;
  v9 = v1[4];
  v10 = v1[1];
  v35 = *v1;
  v36 = v10;
  v39 = v9;
  v40 = v35;
  v11 = v10;
  v12 = v37;
  v30 = v35;
  sub_21E05C488(&v40, v34);
  sub_21DF252E0();

  sub_21E141DB4();
  sub_21E13F4F4();
  v13 = sub_21E05C4E4();
  v14 = v24;
  sub_21E140E44();
  (*(v25 + 8))(v3, v26);
  (*(v4 + 8))(v6, v14);
  v34[0] = v11;
  v34[1] = v12;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAB5A0);
  MEMORY[0x223D52200](v33, v15);
  v31 = v33[0];
  v32 = v33[1];
  v16 = swift_allocObject();
  v17 = v38;
  v16[3] = v37;
  v16[4] = v17;
  v16[5] = v39;
  v18 = v36;
  v16[1] = v35;
  v16[2] = v18;
  sub_21E05C580(&v35, &v30);
  *&v30 = v14;
  *(&v30 + 1) = v13;
  swift_getOpaqueTypeConformance2();
  v19 = v27;
  v20 = v23;
  sub_21E141324();

  return (*(v28 + 8))(v20, v19);
}

unint64_t sub_21E05C4E4()
{
  result = qword_27CEAB598;
  if (!qword_27CEAB598)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEAB588);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEAB598);
  }

  return result;
}

uint64_t sub_21E05C548(uint64_t a1, void *a2)
{
  v3 = *(v2 + 80);
  if (v3)
  {
    return v3(*a2, a2[1]);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_SSIegg_Sg(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_21E05C5EC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
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

uint64_t sub_21E05C634(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t ConfigToggle.init(_:isOn:initialValue:onChange:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, char a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  *a9 = result;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 33) = a6;
  *(a9 + 40) = a7;
  *(a9 + 48) = a8;
  return result;
}

uint64_t ConfigToggle.body.getter@<X0>(uint64_t a1@<X8>)
{
  v29 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAB5A8);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v24 - v4;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAB5B0);
  v24 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v7 = &v24 - v6;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAB5B8);
  v27 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v26 = &v24 - v8;
  v9 = v1[2];
  v39 = v1[1];
  v40 = v9;
  v38 = *v1;
  v41 = *(v1 + 6);
  v10 = v39;
  v11 = v9;
  v30 = &v38;

  sub_21E141904();
  v31 = v10;
  LOBYTE(v32) = v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA8380);
  MEMORY[0x223D52200](&v36);
  if (v36 == (BYTE1(v40) & 1))
  {
    sub_21E1409F4();
  }

  else
  {
    sub_21E1409E4();
  }

  v13 = sub_21DF23E5C(qword_27CEAB5C0, &qword_27CEAB5A8);
  sub_21E140D84();
  (*(v3 + 8))(v5, v2);
  v36 = v10;
  v37 = v11;
  MEMORY[0x223D52200](&v35, v12);
  v34 = v35;
  v14 = swift_allocObject();
  v15 = v39;
  *(v14 + 16) = v38;
  *(v14 + 32) = v15;
  *(v14 + 48) = v40;
  *(v14 + 64) = v41;
  sub_21E048D8C(&v38, &v31);
  *&v31 = v2;
  *(&v31 + 1) = v13;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v17 = MEMORY[0x277D839B0];
  v18 = MEMORY[0x277D839C8];
  v19 = v26;
  v20 = v25;
  sub_21E141324();

  v21 = (*(v24 + 8))(v7, v20);
  MEMORY[0x28223BE20](v21);
  *(&v24 - 2) = &v38;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7CE0);
  *&v31 = v20;
  *(&v31 + 1) = v17;
  v32 = OpaqueTypeConformance2;
  v33 = v18;
  swift_getOpaqueTypeConformance2();
  sub_21DF23E5C(&qword_27CEA7CF8, &qword_27CEA7CE0);
  v22 = v28;
  sub_21E140EA4();
  return (*(v27 + 8))(v19, v22);
}

uint64_t sub_21E05CBD4@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = v2[1];
  *a1 = *v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = 0;
  *(a1 + 24) = MEMORY[0x277D84F90];
}

uint64_t sub_21E05CBF4(uint64_t a1, unsigned __int8 *a2)
{
  v3 = *(v2 + 56);
  if (v3)
  {
    return v3(*a2);
  }

  return result;
}

uint64_t sub_21E05CC28(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAB2A8);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v10[-v3 - 8];
  sub_21E13F344();
  v5 = sub_21E13F354();
  (*(*(v5 - 8) + 56))(v4, 0, 1, v5);
  v6 = swift_allocObject();
  v7 = *(a1 + 16);
  *(v6 + 16) = *a1;
  *(v6 + 32) = v7;
  *(v6 + 48) = *(a1 + 32);
  *(v6 + 64) = *(a1 + 48);
  sub_21E048D8C(a1, v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7CF0);
  sub_21DF23E5C(&qword_280F68D98, &qword_27CEA7CF0);
  return sub_21E141754();
}

uint64_t get_enum_tag_for_layout_string_SbIegy_Sg(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t objectdestroyTm_19()
{

  if (*(v0 + 56))
  {
  }

  return swift_deallocObject();
}

uint64_t static Configurable<>.configurationForm(configuration:initialValue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v16[1] = a3;
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v9 = v16 - v8;
  v10 = sub_21E141A24();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = v16 - v12;
  v14 = swift_checkMetadataState();
  (*(v11 + 16))(v13, a1, v10);
  (*(v7 + 16))(v9, a2, AssociatedTypeWitness);
  return (*(AssociatedConformanceWitness + 32))(v13, v9, v14, AssociatedConformanceWitness);
}

uint64_t sub_21E05D128@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X4>, uint64_t (*a5)(void)@<X6>, uint64_t a6@<X8>)
{
  sub_21DF236C0(a1, a6, a4);
  v10 = a5(0);
  v11 = *(*(a3 - 8) + 16);
  v12 = a6 + *(v10 + 20);

  return v11(v12, a2, a3);
}

uint64_t sub_21E05D1E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v19[1] = a2;
  v4 = *(a1 + 16);
  v5 = sub_21E141A24();
  v19[0] = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = v19 - v6;
  v8 = *(a1 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v12 = v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = v19 - v14;
  sub_21E1419F4();
  (*(v8 + 32))(v7, v2 + *(a1 + 36), v4, v8);
  (*(v19[0] + 8))(v7, v5);
  v16 = *(swift_getAssociatedConformanceWitness() + 8);
  sub_21DFE2A0C(v12, AssociatedTypeWitness, v16);
  v17 = *(v10 + 8);
  v17(v12, AssociatedTypeWitness);
  sub_21DFE2A0C(v15, AssociatedTypeWitness, v16);
  return (v17)(v15, AssociatedTypeWitness);
}

uint64_t sub_21E05D430@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_21E141A24();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  type metadata accessor for ConfigurationFormView();
  return sub_21E13D894();
}

uint64_t Binding<A>.configurationForm.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = MEMORY[0x28223BE20](a1);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v7, v2, a1, v5);
  return sub_21E05D430(v7, a2);
}

uint64_t sub_21E05D5E0()
{
  result = sub_21E141A24();
  if (v1 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_21E05D670(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (v5 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v9 = a2 - v8;
  if (a2 <= v8)
  {
    goto LABEL_26;
  }

  v7 = *(*(*(a3 + 16) - 8) + 64);
  v10 = ((v7 + v6 + ((v6 + 16) & ~v6)) & ~v6) + v7;
  v11 = 8 * v10;
  if (v10 <= 3)
  {
    v14 = ((v9 + ~(-1 << v11)) >> v11) + 1;
    if (HIWORD(v14))
    {
      v12 = *(a1 + v10);
      if (!v12)
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v14 > 0xFF)
    {
      v12 = *(a1 + v10);
      if (!*(a1 + v10))
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v14 < 2)
    {
LABEL_26:
      v16 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
      if ((v5 & 0x80000000) != 0)
      {
        return (*(v4 + 48))((v16 + v6 + 8) & ~v6);
      }

      v17 = *v16;
      if (v17 >= 0xFFFFFFFF)
      {
        LODWORD(v17) = -1;
      }

      return (v17 + 1);
    }
  }

  v12 = *(a1 + v10);
  if (!*(a1 + v10))
  {
    goto LABEL_26;
  }

LABEL_15:
  v15 = (v12 - 1) << v11;
  if (v10 > 3)
  {
    v15 = 0;
  }

  if (v10)
  {
    if (v10 > 3)
    {
      LODWORD(v10) = 4;
    }

    if (v10 > 2)
    {
      if (v10 == 3)
      {
        LODWORD(v10) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v10) = *a1;
      }
    }

    else if (v10 == 1)
    {
      LODWORD(v10) = *a1;
    }

    else
    {
      LODWORD(v10) = *a1;
    }
  }

  return v8 + (v10 | v15) + 1;
}

void sub_21E05D808(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(v6 + 80);
  v10 = ((*(*(*(a4 + 16) - 8) + 64) + v9 + ((v9 + 16) & ~v9)) & ~v9) + *(*(*(a4 + 16) - 8) + 64);
  v11 = a3 >= v8;
  v12 = a3 - v8;
  if (v12 != 0 && v11)
  {
    if (v10 <= 3)
    {
      v16 = ((v12 + ~(-1 << (8 * v10))) >> (8 * v10)) + 1;
      if (HIWORD(v16))
      {
        v13 = 4;
      }

      else
      {
        if (v16 < 0x100)
        {
          v17 = 1;
        }

        else
        {
          v17 = 2;
        }

        if (v16 >= 2)
        {
          v13 = v17;
        }

        else
        {
          v13 = 0;
        }
      }
    }

    else
    {
      v13 = 1;
    }
  }

  else
  {
    v13 = 0;
  }

  if (v8 < a2)
  {
    v14 = ~v8 + a2;
    if (v10 < 4)
    {
      v15 = (v14 >> (8 * v10)) + 1;
      if (v10)
      {
        v18 = v14 & ~(-1 << (8 * v10));
        bzero(a1, v10);
        if (v10 != 3)
        {
          if (v10 == 2)
          {
            *a1 = v18;
            if (v13 > 1)
            {
LABEL_47:
              if (v13 == 2)
              {
                *&a1[v10] = v15;
              }

              else
              {
                *&a1[v10] = v15;
              }

              return;
            }
          }

          else
          {
            *a1 = v14;
            if (v13 > 1)
            {
              goto LABEL_47;
            }
          }

          goto LABEL_44;
        }

        *a1 = v18;
        a1[2] = BYTE2(v18);
      }

      if (v13 > 1)
      {
        goto LABEL_47;
      }
    }

    else
    {
      bzero(a1, v10);
      *a1 = v14;
      v15 = 1;
      if (v13 > 1)
      {
        goto LABEL_47;
      }
    }

LABEL_44:
    if (v13)
    {
      a1[v10] = v15;
    }

    return;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *&a1[v10] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *&a1[v10] = 0;
  }

  else if (v13)
  {
    a1[v10] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return;
  }

LABEL_31:
  v19 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
  if ((v7 & 0x80000000) != 0)
  {
    v21 = *(v6 + 56);

    v21((v19 + v9 + 8) & ~v9);
  }

  else
  {
    if ((a2 & 0x80000000) != 0)
    {
      v20 = a2 & 0x7FFFFFFF;
    }

    else
    {
      v20 = a2 - 1;
    }

    *v19 = v20;
  }
}

uint64_t sub_21E05DAD8@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 20);
  v6 = *a2;
  v7 = *(a2 + 1);
  *a3 = *a1;
  *(a3 + 8) = v3;
  *(a3 + 16) = v4;
  *(a3 + 20) = v5;
  *(a3 + 24) = v6;
  *(a3 + 28) = v7;
}

uint64_t sub_21E05DB60@<X0>(uint64_t *a1@<X0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = *(a1 + 16);
  v6 = *(a1 + 17);
  v7 = *(a1 + 18);
  v9 = a1[3];
  v8 = a1[4];
  v10 = *a2;
  v11 = a2[1];
  v12 = a2[2];
  v13 = *(a2 + 1);
  v14 = *(a2 + 2);
  *a3 = v3;
  *(a3 + 8) = v4;
  *(a3 + 16) = v5;
  *(a3 + 17) = v6;
  *(a3 + 18) = v7;
  *(a3 + 24) = v9;
  *(a3 + 32) = v8;
  *(a3 + 40) = v10;
  *(a3 + 41) = v11;
  *(a3 + 42) = v12;
  *(a3 + 48) = v13;
  *(a3 + 56) = v14;
}

uint64_t sub_21E05DBF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  v57 = a6;
  v58 = a3;
  v52 = a5;
  v53 = a4;
  v54 = a1;
  v55 = a2;
  v56 = a7;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7740);
  v8 = *(v60 - 8);
  v59 = v60 - 8;
  v61 = v8;
  v62 = v8;
  MEMORY[0x28223BE20](v60 - 8);
  v51 = v49 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAB670);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v14 = v49 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAB6C8);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = v49 - v16;
  sub_21DF236C0(a3, v14, &qword_27CEAB670);
  sub_21E1423C4();

  v18 = sub_21E1423B4();
  v19 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v20 = (v19 + v12 + 7) & 0xFFFFFFFFFFFFFFF8;
  v21 = swift_allocObject();
  v22 = MEMORY[0x277D85700];
  *(v21 + 16) = v18;
  *(v21 + 24) = v22;
  sub_21DF3DE9C(v14, v21 + v19, &qword_27CEAB670);
  v23 = (v21 + v20);
  v25 = v57;
  v24 = v58;
  *v23 = v52;
  v23[1] = v25;
  sub_21DF236C0(v24, v14, &qword_27CEAB670);
  v26 = sub_21E1423B4();
  v27 = swift_allocObject();
  *(v27 + 16) = v26;
  *(v27 + 24) = MEMORY[0x277D85700];
  sub_21DF3DE9C(v14, v27 + v19, &qword_27CEAB670);
  v52 = v17;
  sub_21E141A04();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7748);
  v28 = (*(v62 + 80) + 32) & ~*(v62 + 80);
  v60 = v61[9];
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_21E145380;
  v30 = sub_21E13DAB4();
  v31 = *(v30 - 8);
  v32 = *(v31 + 56);
  v59 = v28;
  v61 = v32;
  v62 = (v31 + 56);
  (v32)(v29 + v28, 1, 1, v30);
  v65 = v29;
  sub_21E05FC04(&qword_27CEAB6D0, MEMORY[0x277D79018]);
  sub_21E142894();
  v33 = v64;
  v34 = *(v64 + 16);
  if (v34)
  {
    v63 = MEMORY[0x277D84F90];
    sub_21DF5C21C(0, v34, 0);
    v35 = v63;
    v49[1] = v33;
    v50 = v31;
    v36 = v31 + 16;
    v37 = *(v31 + 16);
    v38 = v33 + ((*(v31 + 80) + 32) & ~*(v31 + 80));
    v39 = *(v36 + 56);
    v40 = v51;
    do
    {
      v37(v40, v38, v30);
      (v61)(v40, 0, 1, v30);
      v63 = v35;
      v42 = *(v35 + 16);
      v41 = *(v35 + 24);
      if (v42 >= v41 >> 1)
      {
        sub_21DF5C21C(v41 > 1, v42 + 1, 1);
        v40 = v51;
        v35 = v63;
      }

      *(v35 + 16) = v42 + 1;
      sub_21DF3DE9C(v40, v35 + v59 + v42 * v60, &qword_27CEA7740);
      v38 += v39;
      --v34;
    }

    while (v34);

    v31 = v50;
  }

  else
  {

    v35 = MEMORY[0x277D84F90];
  }

  sub_21DF5B350(v35);

  sub_21DF23614(v58, &qword_27CEAB670);
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAB668);
  v44 = v43[12];
  v45 = v56;
  (*(v31 + 32))(v56 + v44, v53, v30);
  (v61)(v45 + v44, 0, 1, v30);
  v46 = v65;
  v47 = v55;
  *v45 = v54;
  v45[1] = v47;
  result = sub_21DF3DE9C(v52, v45 + v43[11], &qword_27CEAB6C8);
  *(v45 + v43[13]) = v46;
  return result;
}

uint64_t sub_21E05E1B4@<X0>(uint64_t (*a1)(char *)@<X3>, uint64_t a2@<X8>)
{
  v4 = sub_21E13DAB4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAB670);
  MEMORY[0x223D52200](v8);
  if (a1(v7))
  {
    (*(v5 + 8))(v7, v4);
    v9 = 1;
  }

  else
  {
    (*(v5 + 32))(a2, v7, v4);
    v9 = 0;
  }

  return (*(v5 + 56))(a2, v9, 1, v4);
}

uint64_t sub_21E05E304(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7740);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v13 - v3;
  v5 = sub_21E13DAB4();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v13 - v10;
  sub_21DF236C0(a1, v4, &qword_27CEA7740);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    return sub_21DF23614(v4, &qword_27CEA7740);
  }

  (*(v6 + 32))(v11, v4, v5);
  (*(v6 + 16))(v8, v11, v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAB670);
  sub_21E1419D4();
  return (*(v6 + 8))(v11, v5);
}

uint64_t CVCoordinatorConfigurationForm.init(configuration:initialValue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_21DF3DE9C(a1, a3, &qword_27CEAB650);
  v5 = *(type metadata accessor for CVCoordinatorConfigurationForm() + 20);
  v6 = sub_21E13DAC4();
  v7 = *(*(v6 - 8) + 32);

  return v7(a3 + v5, a2, v6);
}

uint64_t type metadata accessor for CVCoordinatorConfigurationForm()
{
  result = qword_27CEAB6A0;
  if (!qword_27CEAB6A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t CVCoordinatorConfigurationForm.body.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v66 = a1;
  v3 = sub_21E13DFE4();
  v64 = *(v3 - 8);
  v65 = v3;
  MEMORY[0x28223BE20](v3);
  v62 = &v52 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAB658);
  MEMORY[0x28223BE20](v5 - 8);
  v61 = &v52 - v6;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAB650);
  MEMORY[0x28223BE20](v58);
  v56 = &v52 - v7;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAB660) - 8;
  MEMORY[0x28223BE20](v60);
  v63 = &v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v57 = (&v52 - v10);
  v11 = sub_21E13DAB4();
  v12 = *(v11 - 8);
  v54 = v11;
  v55 = v12;
  MEMORY[0x28223BE20](v11);
  v53 = &v52 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAB668);
  MEMORY[0x28223BE20](v14 - 8);
  v59 = &v52 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v67 = (&v52 - v17);
  v18 = type metadata accessor for CVCoordinatorConfigurationForm();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAB670);
  MEMORY[0x28223BE20](v21 - 8);
  v52 = &v52 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v68 = &v52 - v24;
  sub_21E05F07C(v1, &v52 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_21E1423C4();
  v25 = sub_21E1423B4();
  v26 = *(v19 + 80);
  v27 = (v26 + 32) & ~v26;
  v28 = swift_allocObject();
  v29 = MEMORY[0x277D85700];
  *(v28 + 16) = v25;
  *(v28 + 24) = v29;
  sub_21E05F0E0(&v52 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0), v28 + v27);
  sub_21E05F07C(v1, &v52 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v30 = sub_21E1423B4();
  v31 = swift_allocObject();
  *(v31 + 16) = v30;
  *(v31 + 24) = v29;
  sub_21E05F0E0(&v52 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0), v31 + v27);
  v32 = v68;
  v33 = v54;
  sub_21E141A04();
  v34 = v52;
  sub_21DF236C0(v32, v52, &qword_27CEAB670);
  v35 = v53;
  (*(v55 + 104))(v53, *MEMORY[0x277D79010], v33);
  sub_21E05F07C(v2, &v52 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v36 = swift_allocObject();
  sub_21E05F0E0(&v52 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0), v36 + ((v26 + 16) & ~v26));
  sub_21E05DBF4(0x6573657250205643, 0xE900000000000074, v34, v35, sub_21E05F640, v36, v67);
  v37 = v56;
  sub_21E1419F4();
  swift_getKeyPath();
  v38 = v61;
  sub_21E1419E4();

  sub_21DF23614(v37, &qword_27CEAB650);
  v39 = v62;
  sub_21E13DA64();
  v40 = v57;
  *v57 = 0xD000000000000014;
  *(v40 + 8) = 0x800000021E15D690;
  v41 = v60;
  sub_21DF236C0(v38, v40 + *(v60 + 52), &qword_27CEAB658);
  v42 = *(v41 + 56);
  v43 = v41;
  v45 = v64;
  v44 = v65;
  (*(v64 + 16))(v40 + v42, v39, v65);
  sub_21E05FC04(&qword_27CEAB678, MEMORY[0x277D792F0]);
  sub_21E142894();
  (*(v45 + 8))(v39, v44);
  sub_21DF23614(v38, &qword_27CEAB658);
  *(v40 + *(v43 + 60)) = v69;
  v46 = v67;
  v47 = v59;
  sub_21DF236C0(v67, v59, &qword_27CEAB668);
  v48 = v63;
  sub_21DF236C0(v40, v63, &qword_27CEAB660);
  v49 = v66;
  sub_21DF236C0(v47, v66, &qword_27CEAB668);
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAB680);
  sub_21DF236C0(v48, v49 + *(v50 + 48), &qword_27CEAB660);
  sub_21DF23614(v40, &qword_27CEAB660);
  sub_21DF23614(v46, &qword_27CEAB668);
  sub_21DF23614(v68, &qword_27CEAB670);
  sub_21DF23614(v48, &qword_27CEAB660);
  return sub_21DF23614(v47, &qword_27CEAB668);
}

uint64_t sub_21E05EDAC@<X0>(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  v27 = a1;
  v21 = a2;
  v26 = sub_21E13DAC4();
  v2 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v25 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = &v21 - v5;
  v7 = sub_21E13DAB4();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_21E13DAA4();
  v24 = *(result + 16);
  if (v24)
  {
    v12 = 0;
    v13 = (v2 + 8);
    v22 = (v8 + 8);
    v23 = v8 + 16;
    while (v12 < *(result + 16))
    {
      v14 = result;
      (*(v8 + 16))(v10, result + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v12, v7);
      v28 = 1;
      sub_21E13DA94();
      v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAB650);
      v16 = v25;
      MEMORY[0x223D52200](v15);
      v17 = MEMORY[0x223D4E2C0](v6, v16);
      v18 = *v13;
      v19 = v16;
      v20 = v26;
      (*v13)(v19, v26);
      v18(v6, v20);
      if (v17)
      {

        return (*(v8 + 32))(v21, v10, v7);
      }

      ++v12;
      (*v22)(v10, v7);
      result = v14;
      if (v24 == v12)
      {
        goto LABEL_6;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_6:

    return (*(v8 + 104))(v21, *MEMORY[0x277D79010], v7);
  }

  return result;
}

uint64_t sub_21E05F07C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CVCoordinatorConfigurationForm();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21E05F0E0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CVCoordinatorConfigurationForm();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21E05F144@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for CVCoordinatorConfigurationForm() - 8);
  v4 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));

  return sub_21E05EDAC(v4, a1);
}

uint64_t sub_21E05F1B8()
{
  v0 = sub_21E13DAC4();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v8[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v4);
  v6 = &v8[-v5];
  v8[12] = 1;
  sub_21E13DA94();
  (*(v1 + 16))(v3, v6, v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAB650);
  sub_21E1419D4();
  return (*(v1 + 8))(v6, v0);
}

uint64_t objectdestroyTm_20()
{
  v1 = (type metadata accessor for CVCoordinatorConfigurationForm() - 8);
  v2 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  swift_unknownObjectRelease();

  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAB650) + 32);
  v4 = sub_21E13DAC4();
  v5 = *(*(v4 - 8) + 8);
  v5(v0 + v2 + v3, v4);
  v5(v0 + v2 + v1[7], v4);

  return swift_deallocObject();
}

uint64_t sub_21E05F438()
{
  type metadata accessor for CVCoordinatorConfigurationForm();

  return sub_21E05F1B8();
}

BOOL sub_21E05F4AC()
{
  v0 = sub_21E13DAC4();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v11[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v4);
  v6 = &v11[-v5];
  v11[12] = 1;
  sub_21E13DA94();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAB650);
  MEMORY[0x223D52200](v7);
  sub_21E05FC04(&qword_27CEAB6D8, MEMORY[0x277D79030]);
  v8 = sub_21E142074();
  v9 = *(v1 + 8);
  v9(v3, v0);
  v9(v6, v0);
  return (v8 & 1) == 0;
}

BOOL sub_21E05F640()
{
  type metadata accessor for CVCoordinatorConfigurationForm();

  return sub_21E05F4AC();
}

uint64_t sub_21E05F6B0(uint64_t a1)
{
  v2 = sub_21E13DFE4();
  v3 = MEMORY[0x28223BE20](v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  return sub_21E13DA74();
}

uint64_t sub_21E05F7C0(uint64_t a1)
{
  result = sub_21E05FC04(&qword_27CEAB690, MEMORY[0x277D79030]);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_21E05F860@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  sub_21DF3DE9C(a1, a4, &qword_27CEAB650);
  v7 = *(a3 + 20);
  v8 = sub_21E13DAC4();
  v9 = *(*(v8 - 8) + 32);

  return v9(a4 + v7, a2, v8);
}

uint64_t sub_21E05F8F4(uint64_t a1)
{
  result = sub_21E05FC04(&qword_27CEAB698, type metadata accessor for CVCoordinatorConfigurationForm);
  *(a1 + 8) = result;
  return result;
}

void sub_21E05F994()
{
  sub_21E05FA18();
  if (v0 <= 0x3F)
  {
    sub_21E13DAC4();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_21E05FA18()
{
  if (!qword_27CEAB6B0)
  {
    sub_21E13DAC4();
    v0 = sub_21E141A24();
    if (!v1)
    {
      atomic_store(v0, &qword_27CEAB6B0);
    }
  }
}

unint64_t sub_21E05FA70()
{
  result = qword_27CEAB6B8;
  if (!qword_27CEAB6B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEAB6C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEAB6B8);
  }

  return result;
}

uint64_t sub_21E05FAD4@<X0>(uint64_t a1@<X8>)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAB670) - 8);
  v4 = *(v1 + ((*(v3 + 64) + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_21E05E1B4(v4, a1);
}

uint64_t sub_21E05FB84(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAB670);

  return sub_21E05E304(a1);
}

uint64_t sub_21E05FC04(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_21E05FCBC()
{
  if (*v0)
  {
    return 0xD000000000000027;
  }

  else
  {
    return 0xD000000000000011;
  }
}

uint64_t sub_21E05FCF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000011 && 0x800000021E15D6F0 == a2 || (sub_21E142B14() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0xD000000000000027 && 0x800000021E15D710 == a2)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_21E142B14();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
  return result;
}

uint64_t sub_21E05FDF4(uint64_t a1)
{
  v2 = sub_21E060000();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21E05FE30(uint64_t a1)
{
  v2 = sub_21E060000();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t FocusSelectionConfiguration.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAB6E0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21E060000();
  sub_21E142C74();
  v8[15] = 0;
  sub_21E142A84();
  if (!v1)
  {
    v8[14] = 1;
    sub_21E142A94();
  }

  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_21E060000()
{
  result = qword_27CEAB6E8;
  if (!qword_27CEAB6E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEAB6E8);
  }

  return result;
}

uint64_t FocusSelectionConfiguration.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAB6F0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v13[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21E060000();
  sub_21E142C64();
  if (!v2)
  {
    v13[15] = 0;
    v9 = sub_21E142A54();
    v13[14] = 1;
    sub_21E142A64();
    v12 = v11;
    (*(v6 + 8))(v8, v5);
    *a2 = v9 & 1;
    *(a2 + 4) = v12;
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

float FocusSelectionConfigurationForm.init(configuration:initialValue:)@<S0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  result = *(a1 + 20);
  v6 = *a2;
  v7 = *(a2 + 1);
  *a3 = *a1;
  *(a3 + 8) = v3;
  *(a3 + 16) = v4;
  *(a3 + 20) = result;
  *(a3 + 24) = v6;
  *(a3 + 28) = v7;
  return result;
}

uint64_t FocusSelectionConfigurationForm.body.getter@<X0>(uint64_t a1@<X8>)
{
  v44 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAB108);
  v3 = (v2 - 8);
  MEMORY[0x28223BE20](v2);
  v43 = &v37[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v5);
  v7 = &v37[-v6];
  v9 = *v1;
  v8 = v1[1];
  v10 = *(v1 + 16);
  v11 = *(v1 + 5);
  v42 = *(v1 + 24);
  v12 = *(v1 + 7);
  v41 = 0x800000021E15D6B0;
  *&v48 = v9;
  *(&v48 + 1) = v8;
  LOBYTE(v49) = v10;
  DWORD1(v49) = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAB6F8);
  sub_21E1419F4();
  v13 = v52;
  v14 = v53;
  v15 = v54;
  v16 = HIDWORD(v54);
  swift_getKeyPath();
  *&v48 = v13;
  *(&v48 + 1) = v14;
  LOBYTE(v49) = v15;
  DWORD1(v49) = v16;
  sub_21E1419E4();

  v40 = v45;
  v39 = v46;
  v38 = v47;
  *&v48 = v9;
  *(&v48 + 1) = v8;
  LOBYTE(v49) = v10;
  DWORD1(v49) = v11;
  sub_21E1419F4();
  v17 = v52;
  v18 = v53;
  v19 = v54;
  v20 = HIDWORD(v54);
  swift_getKeyPath();
  *&v48 = v17;
  *(&v48 + 1) = v18;
  LOBYTE(v49) = v19;
  DWORD1(v49) = v20;
  sub_21E1419E4();

  v21 = v46;
  v22 = v47;
  v23 = v7 + v3[18];
  *v23 = v45;
  *(v23 + 1) = v21;
  *(v23 + 4) = v22;
  *(v7 + v3[19]) = v12;
  *(v7 + v3[21]) = 0x3F00000000000000;
  *v7 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAD070);
  swift_storeEnumTagMultiPayload();
  v24 = v3[17];
  *(v7 + v24) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAB140);
  swift_storeEnumTagMultiPayload();
  v25 = (v7 + v3[20]);
  *v25 = 0xD00000000000001ELL;
  v25[1] = 0x800000021E15D6D0;
  v26 = (v7 + v3[22]);
  *v26 = nullsub_3;
  v26[1] = 0;
  v27 = v43;
  sub_21E060664(v7, v43);
  v28 = v41;
  *&v48 = 0xD000000000000013;
  *(&v48 + 1) = v41;
  v29 = v40;
  v30 = v39;
  *&v49 = v40;
  *(&v49 + 1) = v39;
  v31 = v38;
  LOBYTE(v50) = v38;
  LOBYTE(v8) = v42;
  BYTE1(v50) = v42;
  *(&v50 + 1) = 0;
  v51 = 0;
  v32 = v44;
  *(v44 + 48) = 0;
  v33 = v49;
  *v32 = v48;
  v32[1] = v33;
  v32[2] = v50;
  v34 = v32;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAB700);
  sub_21E060664(v27, v34 + *(v35 + 48));
  sub_21E048D8C(&v48, &v52);
  sub_21E0606D4(v7);
  sub_21E0606D4(v27);
  v52 = 0xD000000000000013;
  v53 = v28;
  v54 = v29;
  v55 = v30;
  v56 = v31;
  v57 = v8;
  v58 = 0;
  v59 = 0;
  return sub_21E048DE8(&v52);
}

uint64_t sub_21E060664(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAB108);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21E0606D4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAB108);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_21E060740()
{
  result = qword_27CEAB708;
  if (!qword_27CEAB708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEAB708);
  }

  return result;
}

unint64_t sub_21E060798()
{
  result = qword_27CEAB710;
  if (!qword_27CEAB710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEAB710);
  }

  return result;
}

unint64_t sub_21E0607F0()
{
  result = qword_27CEAB718;
  if (!qword_27CEAB718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEAB718);
  }

  return result;
}

unint64_t sub_21E060848()
{
  result = qword_27CEAB720;
  if (!qword_27CEAB720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEAB720);
  }

  return result;
}

unint64_t sub_21E06089C(uint64_t a1)
{
  result = sub_21E0608C4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_21E0608C4()
{
  result = qword_27CEAB728;
  if (!qword_27CEAB728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEAB728);
  }

  return result;
}

float sub_21E06091C@<S0>(uint64_t a1@<X0>, float *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a2;
  result = a2[1];
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  v7 = *(a1 + 20);
  *a3 = *a1;
  *(a3 + 8) = v5;
  *(a3 + 16) = v6;
  *(a3 + 20) = v7;
  *(a3 + 24) = v3;
  *(a3 + 28) = result;
  return result;
}

unint64_t sub_21E060948(uint64_t a1)
{
  result = sub_21E060970();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_21E060970()
{
  result = qword_27CEAB730;
  if (!qword_27CEAB730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEAB730);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for FocusSelectionConfiguration(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[8])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for FocusSelectionConfiguration(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_21E060A94(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_21E060ADC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_21E060B2C()
{
  result = qword_27CEAB738;
  if (!qword_27CEAB738)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEAB740);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEAB738);
  }

  return result;
}

unint64_t sub_21E060BA4()
{
  result = qword_27CEAB748;
  if (!qword_27CEAB748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEAB748);
  }

  return result;
}

unint64_t sub_21E060BFC()
{
  result = qword_27CEAB750;
  if (!qword_27CEAB750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEAB750);
  }

  return result;
}

unint64_t sub_21E060C54()
{
  result = qword_27CEAB758;
  if (!qword_27CEAB758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEAB758);
  }

  return result;
}

uint64_t TrackManagerConfigurationForm.init(configuration:initialValue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_21E060D30(a1, a3);
  v5 = *(type metadata accessor for TrackManagerConfigurationForm() + 20);
  v6 = sub_21E13D904();
  v7 = *(*(v6 - 8) + 32);

  return v7(a3 + v5, a2, v6);
}

uint64_t sub_21E060D30(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAB648);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for TrackManagerConfigurationForm()
{
  result = qword_27CEAB778;
  if (!qword_27CEAB778)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t TrackManagerConfigurationForm.body.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAB648);
  MEMORY[0x28223BE20](v2);
  v4 = v16 - v3;
  sub_21E1419F4();
  swift_getKeyPath();
  sub_21E1419E4();

  sub_21E060FC8(v4);
  v5 = v16[1];
  v6 = v16[2];
  v7 = v17;
  type metadata accessor for TrackManagerConfigurationForm();
  sub_21E13D8E4();
  v9 = v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAB108);
  v11 = a1 + v10[16];
  *v11 = v5;
  *(v11 + 1) = v6;
  *(v11 + 4) = v7;
  *(a1 + v10[17]) = v9;
  *(a1 + v10[19]) = 0x3F80000000000000;
  *a1 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAD070);
  swift_storeEnumTagMultiPayload();
  v12 = v10[15];
  *(a1 + v12) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAB140);
  result = swift_storeEnumTagMultiPayload();
  v14 = (a1 + v10[18]);
  *v14 = 0xD000000000000011;
  v14[1] = 0x800000021E15D740;
  v15 = (a1 + v10[20]);
  *v15 = nullsub_3;
  v15[1] = 0;
  return result;
}

uint64_t sub_21E060FC8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAB648);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21E061078(uint64_t a1)
{
  result = sub_21E0611F4(&qword_27CEAB768, MEMORY[0x277D78F18]);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_21E061118@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  sub_21E060D30(a1, a4);
  v7 = *(a3 + 20);
  v8 = sub_21E13D904();
  v9 = *(*(v8 - 8) + 32);

  return v9(a4 + v7, a2, v8);
}

uint64_t sub_21E06119C(uint64_t a1)
{
  result = sub_21E0611F4(&qword_27CEAB770, type metadata accessor for TrackManagerConfigurationForm);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_21E0611F4(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_21E061284()
{
  sub_21E061308();
  if (v0 <= 0x3F)
  {
    sub_21E13D904();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_21E061308()
{
  if (!qword_27CEAB788)
  {
    sub_21E13D904();
    v0 = sub_21E141A24();
    if (!v1)
    {
      atomic_store(v0, &qword_27CEAB788);
    }
  }
}

unint64_t sub_21E061360()
{
  result = qword_27CEAB790;
  if (!qword_27CEAB790)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEAB108);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEAB790);
  }

  return result;
}

void static VIUIConfiguration.factorySettings.getter(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 2) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
}

unint64_t sub_21E0613D8()
{
  v1 = 0xD00000000000001DLL;
  if (*v0 != 2)
  {
    v1 = 0xD000000000000015;
  }

  v2 = 0xD00000000000001BLL;
  if (!*v0)
  {
    v2 = 0xD000000000000017;
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

uint64_t sub_21E06144C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_21E062D30(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_21E061480(uint64_t a1)
{
  v2 = sub_21E06255C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21E0614BC(uint64_t a1)
{
  v2 = sub_21E06255C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t VIUIConfiguration.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAB798);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v10 - v6;
  v12 = *(v1 + 1);
  v11 = *(v1 + 2);
  v8 = *(v1 + 8);
  v10[1] = *(v1 + 16);
  v10[2] = v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21E06255C();
  sub_21E142C74();
  v16 = 0;
  sub_21E142A84();
  if (v2)
  {
    return (*(v5 + 8))(v7, v4);
  }

  v15 = 1;
  sub_21E142A84();
  v14 = 2;
  sub_21E142A84();
  v13 = 3;
  sub_21E142A74();
  return (*(v5 + 8))(v7, v4);
}

uint64_t VIUIConfiguration.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAB7A8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v18 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21E06255C();
  sub_21E142C64();
  if (!v2)
  {
    v25 = 0;
    v9 = sub_21E142A54();
    v24 = 1;
    v10 = sub_21E142A54();
    v23 = 2;
    v21 = sub_21E142A54();
    v22 = 3;
    v11 = sub_21E142A44();
    v14 = v13;
    v19 = v10 & 1;
    v20 = v9 & 1;
    v15 = v21 & 1;
    v16 = v11;
    (*(v6 + 8))(v8, v5);
    v17 = v19;
    *a2 = v20;
    *(a2 + 1) = v17;
    *(a2 + 2) = v15;
    *(a2 + 8) = v16;
    *(a2 + 16) = v14;
  }

  __swift_destroy_boxed_opaque_existential_0(a1);
}

void sub_21E06191C(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 2) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
}

__n128 VIUIConfigurationForm.init(configuration:initialValue:)@<Q0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 17);
  v6 = *(a1 + 18);
  v7 = *a2;
  v8 = a2[1];
  v9 = a2[2];
  *a3 = *a1;
  *(a3 + 8) = v3;
  *(a3 + 16) = v4;
  *(a3 + 17) = v5;
  *(a3 + 18) = v6;
  *(a3 + 24) = *(a1 + 24);
  *(a3 + 40) = v7;
  *(a3 + 41) = v8;
  *(a3 + 42) = v9;
  result = *(a2 + 8);
  *(a3 + 48) = result;
  return result;
}

uint64_t VIUIConfigurationForm.body.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v81 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAB7B0);
  v75 = *(v3 - 8);
  v76 = v3;
  MEMORY[0x28223BE20](v3);
  v72 = &v71 - v4;
  *(&v82 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAB7B8);
  v78 = *(*(&v82 + 1) - 8);
  MEMORY[0x28223BE20](*(&v82 + 1));
  v74 = &v71 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v73 = &v71 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAB7C0);
  MEMORY[0x28223BE20](v8 - 8);
  v80 = &v71 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v90 = &v71 - v11;
  v12 = v1[1];
  v13 = v12;
  v122 = *v1;
  v123 = v12;
  v14 = v1[3];
  v124 = v1[2];
  v125 = v14;
  v15 = v1[1];
  v126 = *v1;
  v127 = v15;
  v128 = *(v1 + 4);
  v117 = v122;
  v118 = v13;
  v119 = *(v1 + 4);
  *&v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAB7C8);
  sub_21E1419F4();
  v16 = v91;
  v17 = v92;
  v18 = BYTE1(v92);
  v19 = BYTE2(v92);
  v21 = *(&v92 + 1);
  v20 = v93;
  swift_getKeyPath();
  v117 = v16;
  LOBYTE(v118) = v17;
  BYTE1(v118) = v18;
  BYTE2(v118) = v19;
  *(&v118 + 1) = v21;
  v119 = v20;
  sub_21E1419E4();

  v88 = v110;
  v89 = v109;
  v86 = BYTE8(v124);
  v87 = v111;
  v85 = BYTE9(v124);
  v79 = BYTE10(v124);
  v22 = v2[1];
  v117 = *v2;
  v118 = v22;
  v119 = *(v2 + 4);
  sub_21E1419F4();
  v23 = v91;
  v84 = v91;
  v24 = v92;
  v25 = BYTE1(v92);
  v26 = BYTE2(v92);
  v28 = *(&v92 + 1);
  v27 = v93;
  swift_getKeyPath();
  v117 = v23;
  LOBYTE(v118) = v24;
  BYTE1(v118) = v25;
  BYTE2(v118) = v26;
  *(&v118 + 1) = v28;
  v119 = v27;
  v29 = v82;
  sub_21E1419E4();

  v83 = v110;
  v84 = v109;
  v77 = v111;
  v30 = v2[1];
  v91 = *v2;
  v92 = v30;
  v93 = *(v2 + 4);
  v31 = v29;
  MEMORY[0x223D52200](&v117, v29);
  v32 = BYTE1(v117);

  if (v32 == 1)
  {
    v33 = swift_allocObject();
    v34 = v123;
    v33[1] = v122;
    v33[2] = v34;
    v35 = v125;
    v33[3] = v124;
    v33[4] = v35;
    MEMORY[0x28223BE20](v33);
    *(&v71 - 2) = &v122;
    sub_21E062698(&v122, &v91);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAB7D8);
    sub_21E0626D0();
    v36 = v72;
    sub_21E141764();
    v37 = v2[1];
    v91 = *v2;
    v92 = v37;
    v93 = *(v2 + 4);
    MEMORY[0x223D52200](&v117, v31);
    v38 = v118;
    v39 = v36;
    if (v118)
    {
    }

    v40 = v38 == 0;
    KeyPath = swift_getKeyPath();
    v42 = swift_allocObject();
    *(v42 + 16) = v40;
    v43 = v74;
    (*(v75 + 32))(v74, v39, v76);
    v44 = *(&v82 + 1);
    v45 = (v43 + *(*(&v82 + 1) + 36));
    *v45 = KeyPath;
    v45[1] = sub_21E06274C;
    v45[2] = v42;
    v46 = v73;
    sub_21E062764(v43, v73);
    v47 = v46;
    v48 = v90;
    sub_21E062764(v47, v90);
    v49 = 0;
  }

  else
  {
    v49 = 1;
    v48 = v90;
    v44 = *(&v82 + 1);
  }

  (*(v78 + 56))(v48, v49, 1, v44);
  v76 = 0x800000021E15D780;
  *(&v82 + 1) = 0x800000021E15D760;
  v78 = 0x800000021E15D7A0;
  v117 = v126;
  v118 = v127;
  v119 = v128;
  sub_21E1419F4();
  v50 = v91;
  v51 = v92;
  v52 = BYTE1(v92);
  v53 = BYTE2(v92);
  v54 = *(&v92 + 1);
  v55 = v93;
  swift_getKeyPath();
  v117 = v50;
  LOBYTE(v118) = v51;
  BYTE1(v118) = v52;
  BYTE2(v118) = v53;
  *(&v118 + 1) = v54;
  v119 = v55;
  sub_21E1419E4();

  v57 = v109;
  v56 = v110;
  LODWORD(v75) = v111;
  v58 = v80;
  sub_21E0625B0(v90, v80);
  *&v82 = 0xD00000000000001ALL;
  v96 = __PAIR128__(*(&v82 + 1), 0xD00000000000001ALL);
  *&v97 = v89;
  *(&v97 + 1) = v88;
  LOBYTE(v98) = v87;
  BYTE1(v98) = v86;
  *(&v98 + 2) = v129;
  WORD3(v98) = v130;
  *(&v98 + 1) = 0;
  v99 = 0;
  v59 = v81;
  *(v81 + 48) = 0;
  v60 = v97;
  *v59 = v96;
  *(v59 + 16) = v60;
  *(v59 + 32) = v98;
  v61 = v76;
  *&v100 = 0xD00000000000001ELL;
  *(&v100 + 1) = v76;
  *&v101 = v84;
  *(&v101 + 1) = v83;
  LOBYTE(v55) = v77;
  LOBYTE(v102) = v77;
  BYTE1(v102) = v85;
  HIWORD(v102) = v132;
  *(&v102 + 2) = v131;
  v103 = 0;
  v104 = 0;
  v62 = v100;
  v63 = v101;
  v64 = v102;
  *(v59 + 104) = 0;
  *(v59 + 88) = v64;
  *(v59 + 72) = v63;
  *(v59 + 56) = v62;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAB7D0);
  sub_21E0625B0(v58, v59 + *(v65 + 64));
  v66 = v59 + *(v65 + 80);
  v67 = v78;
  *&v105 = 0xD00000000000001ELL;
  *(&v105 + 1) = v78;
  *&v106 = v57;
  *(&v106 + 1) = v56;
  v68 = v56;
  LOBYTE(v56) = v75;
  LOBYTE(v107) = v75;
  LOBYTE(v65) = v79;
  BYTE1(v107) = v79;
  *(&v107 + 1) = 0;
  v108 = 0;
  v69 = v106;
  *v66 = v105;
  *(v66 + 16) = v69;
  *(v66 + 32) = v107;
  *(v66 + 48) = 0;
  sub_21E048D8C(&v96, &v91);
  sub_21E048D8C(&v100, &v91);
  sub_21E048D8C(&v105, &v91);
  sub_21E062620(v90);
  v109 = 0xD00000000000001ELL;
  v110 = v67;
  v111 = v57;
  v112 = v68;
  v113 = v56;
  v114 = v65;
  v115 = 0;
  v116 = 0;
  sub_21E048DE8(&v109);
  sub_21E062620(v58);
  *&v117 = 0xD00000000000001ELL;
  *(&v117 + 1) = v61;
  *&v118 = v84;
  *(&v118 + 1) = v83;
  LOBYTE(v119) = v55;
  BYTE1(v119) = v85;
  *(&v119 + 2) = v131;
  HIWORD(v119) = v132;
  v120 = 0;
  v121 = 0;
  sub_21E048DE8(&v117);
  v91 = v82;
  *&v92 = v89;
  *(&v92 + 1) = v88;
  LOBYTE(v93) = v87;
  BYTE1(v93) = v86;
  *(&v93 + 2) = v129;
  HIWORD(v93) = v130;
  v94 = 0;
  v95 = 0;
  return sub_21E048DE8(&v91);
}

void sub_21E062200(__int128 *a1)
{
  v5 = *a1;
  v6 = a1[1];
  v7 = *(a1 + 4);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAB7C8);
  MEMORY[0x223D52200](v8, v1);
  if (v9)
  {
    v2 = HIBYTE(v9) & 0xF;
    if ((v9 & 0x2000000000000000) == 0)
    {
      v2 = v8[1] & 0xFFFFFFFFFFFFLL;
    }

    if (v2)
    {
      v3 = [objc_opt_self() generalPasteboard];
      v4 = sub_21E1420F4();

      [v3 setString_];
    }

    else
    {
    }
  }
}

double sub_21E0622E0@<D0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[1];
  v16 = *a1;
  v17 = v3;
  v18 = *(a1 + 4);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAB7C8);
  MEMORY[0x223D52200](&v11, v4);
  v5 = v13;
  if (!v13)
  {
    goto LABEL_6;
  }

  v6 = v12;

  v7 = HIBYTE(v5) & 0xF;
  if ((v5 & 0x2000000000000000) == 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFLL;
  }

  if (v7)
  {
    v11 = 0xD000000000000016;
    v12 = 0x800000021E15D870;
    v13 = 0;
    v14 = MEMORY[0x277D84F90];
    v15 = 0;
  }

  else
  {
LABEL_6:
    v11 = 0xD000000000000027;
    v12 = 0x800000021E15D840;
    v13 = 0;
    v14 = MEMORY[0x277D84F90];
    v15 = 1;
  }

  sub_21E1402F4();
  result = *&v16;
  v9 = v17;
  v10 = v18;
  *a2 = v16;
  *(a2 + 16) = v9;
  *(a2 + 32) = v10;
  return result;
}

__n128 sub_21E0623F8@<Q0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 17);
  v6 = *(a1 + 18);
  v7 = *a2;
  v8 = a2[1];
  v9 = a2[2];
  *a3 = *a1;
  *(a3 + 8) = v3;
  *(a3 + 16) = v4;
  *(a3 + 17) = v5;
  *(a3 + 18) = v6;
  *(a3 + 24) = *(a1 + 24);
  *(a3 + 40) = v7;
  *(a3 + 41) = v8;
  *(a3 + 42) = v9;
  result = *(a2 + 8);
  *(a3 + 48) = result;
  return result;
}

uint64_t sub_21E062448@<X0>(_BYTE *a1@<X8>)
{
  result = sub_21E13FF24();
  *a1 = result & 1;
  return result;
}

uint64_t _s20VisualIntelligenceUI17VIUIConfigurationV2eeoiySbAC_ACtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  result = 0;
  if (*a1 == *a2 && ((a1[1] ^ a2[1]) & 1) == 0 && ((a1[2] ^ a2[2]) & 1) == 0)
  {
    v4 = *(a1 + 2);
    v5 = *(a2 + 2);
    if (v4)
    {
      if (v5)
      {
        if (*(a1 + 1) == *(a2 + 1) && v4 == v5)
        {
          return 1;
        }

        if (sub_21E142B14())
        {
          return 1;
        }
      }
    }

    else if (!v5)
    {
      return 1;
    }

    return 0;
  }

  return result;
}

unint64_t sub_21E06255C()
{
  result = qword_27CEAB7A0;
  if (!qword_27CEAB7A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEAB7A0);
  }

  return result;
}

uint64_t sub_21E0625B0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAB7C0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21E062620(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAB7C0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_21E0626D0()
{
  result = qword_27CEAB7E0;
  if (!qword_27CEAB7E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEAB7D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEAB7E0);
  }

  return result;
}

uint64_t sub_21E062764(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAB7B8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_21E0627D8()
{
  result = qword_27CEAB7E8;
  if (!qword_27CEAB7E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEAB7E8);
  }

  return result;
}

unint64_t sub_21E062830()
{
  result = qword_27CEAB7F0;
  if (!qword_27CEAB7F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEAB7F0);
  }

  return result;
}

unint64_t sub_21E062888()
{
  result = qword_27CEAB7F8;
  if (!qword_27CEAB7F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEAB7F8);
  }

  return result;
}

unint64_t sub_21E0628E0()
{
  result = qword_27CEAB800;
  if (!qword_27CEAB800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEAB800);
  }

  return result;
}

unint64_t sub_21E062934(uint64_t a1)
{
  result = sub_21E06295C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_21E06295C()
{
  result = qword_27CEAB808;
  if (!qword_27CEAB808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEAB808);
  }

  return result;
}

unint64_t sub_21E0629B4(uint64_t a1)
{
  result = sub_21E0629DC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_21E0629DC()
{
  result = qword_27CEAB810;
  if (!qword_27CEAB810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEAB810);
  }

  return result;
}

uint64_t sub_21E062A4C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 24))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 16);
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

uint64_t sub_21E062AA8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

uint64_t sub_21E062B0C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_21E062B54(uint64_t result, int a2, int a3)
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

unint64_t sub_21E062BB4()
{
  result = qword_27CEAB818;
  if (!qword_27CEAB818)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEAB820);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEAB818);
  }

  return result;
}

unint64_t sub_21E062C2C()
{
  result = qword_27CEAB828;
  if (!qword_27CEAB828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEAB828);
  }

  return result;
}

unint64_t sub_21E062C84()
{
  result = qword_27CEAB830;
  if (!qword_27CEAB830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEAB830);
  }

  return result;
}

unint64_t sub_21E062CDC()
{
  result = qword_27CEAB838;
  if (!qword_27CEAB838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEAB838);
  }

  return result;
}

uint64_t sub_21E062D30(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000017 && 0x800000021E15D7C0 == a2;
  if (v3 || (sub_21E142B14() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD00000000000001BLL && 0x800000021E15D7E0 == a2 || (sub_21E142B14() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD00000000000001DLL && 0x800000021E15D800 == a2 || (sub_21E142B14() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000015 && 0x800000021E15D820 == a2)
  {

    return 3;
  }

  else
  {
    v6 = sub_21E142B14();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t type metadata accessor for VIUIDeveloperMenu()
{
  result = qword_27CEAB848;
  if (!qword_27CEAB848)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21E062F20()
{
  sub_21E062F9C();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_21E062F9C()
{
  if (!qword_27CEAB858)
  {
    type metadata accessor for NewSaliencyModel();
    v0 = sub_21E141AF4();
    if (!v1)
    {
      atomic_store(v0, &qword_27CEAB858);
    }
  }
}

uint64_t sub_21E063010@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v53 = a1;
  v3 = sub_21E140684();
  v51 = *(v3 - 8);
  v52 = v3;
  MEMORY[0x28223BE20](v3);
  v45 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = sub_21E1403F4();
  v44 = *(v43 - 8);
  MEMORY[0x28223BE20](v43);
  v6 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAB8A0);
  v39 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v38 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAB8A8);
  v41 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = &v38 - v11;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAB8B0);
  v42 = *(v40 - 8);
  MEMORY[0x28223BE20](v40);
  v14 = &v38 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAB8B8);
  v46 = *(v15 - 8);
  v47 = v15;
  MEMORY[0x28223BE20](v15);
  v17 = &v38 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAB8C0);
  v49 = *(v18 - 8);
  v50 = v18;
  MEMORY[0x28223BE20](v18);
  v48 = &v38 - v19;
  v54 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAB8C8);
  sub_21DF23E5C(&qword_27CEAB8D0, &qword_27CEAB8C8);
  sub_21E140AE4();
  v20 = sub_21DF23E5C(&qword_27CEAB8D8, &qword_27CEAB8A0);
  sub_21E1410E4();
  (*(v39 + 8))(v9, v7);
  sub_21E1403E4();
  v55 = v7;
  v56 = v20;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v22 = MEMORY[0x277CDE0D0];
  v23 = v43;
  sub_21E1413C4();
  (*(v44 + 8))(v6, v23);
  v24 = v12;
  v25 = v45;
  (*(v41 + 8))(v24, v10);
  v55 = v10;
  v56 = v23;
  v57 = OpaqueTypeConformance2;
  v58 = v22;
  v26 = v40;
  v27 = swift_getOpaqueTypeConformance2();
  sub_21E141184();
  (*(v42 + 8))(v14, v26);
  sub_21E140674();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA82D8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21E147C80;
  LOBYTE(OpaqueTypeConformance2) = sub_21E1408F4();
  *(inited + 32) = OpaqueTypeConformance2;
  v29 = sub_21E1408D4();
  *(inited + 33) = v29;
  sub_21E1408E4();
  sub_21E1408E4();
  if (sub_21E1408E4() != OpaqueTypeConformance2)
  {
    sub_21E1408E4();
  }

  sub_21E1408E4();
  if (sub_21E1408E4() != v29)
  {
    sub_21E1408E4();
  }

  v55 = v26;
  v56 = v27;
  swift_getOpaqueTypeConformance2();
  v30 = v47;
  v31 = v48;
  sub_21E140FE4();
  (*(v51 + 8))(v25, v52);
  (*(v46 + 8))(v17, v30);
  sub_21E140924();
  sub_21E13F374();
  v55 = v32;
  v56 = v33;
  v57 = v34;
  v58 = v35;
  v59 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAB8E0);
  v36 = v53;
  sub_21E1405A4();
  return (*(v49 + 32))(v36, v31, v50);
}

uint64_t sub_21E06375C@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v45 = a2;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAB8E8);
  v64 = *(v59 - 8);
  MEMORY[0x28223BE20](v59);
  v53 = &v39 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v50 = &v39 - v5;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAB8F0);
  v63 = *(v60 - 8);
  MEMORY[0x28223BE20](v60);
  v52 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v54 = &v39 - v8;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAB8F8);
  v62 = *(v57 - 8);
  MEMORY[0x28223BE20](v57);
  v56 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v39 - v11;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAB900);
  v61 = *(v58 - 8);
  MEMORY[0x28223BE20](v58);
  v55 = &v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v47 = &v39 - v15;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAB908);
  v51 = *(v48 - 8);
  MEMORY[0x28223BE20](v48);
  v46 = &v39 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v49 = &v39 - v18;
  v69 = a1;
  v70 = xmmword_21E151700;
  v71 = 0;
  v19 = MEMORY[0x277D84F90];
  v72 = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAB910);
  sub_21DF23E5C(&qword_27CEAB918, &qword_27CEAB910);
  sub_21E141AB4();
  v68 = a1;
  v70 = xmmword_21E151710;
  v71 = 0;
  v72 = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAB920);
  sub_21DF23E5C(&qword_27CEAB928, &qword_27CEAB920);
  sub_21E141AB4();
  v67 = a1;
  v70 = xmmword_21E151720;
  v71 = 0;
  v72 = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAB930);
  sub_21DF23E5C(&qword_27CEAB938, &qword_27CEAB930);
  v44 = v12;
  sub_21E141AB4();
  v66 = a1;
  v70 = xmmword_21E151730;
  v71 = 0;
  v72 = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAB940);
  sub_21DF23E5C(&qword_27CEAB948, &qword_27CEAB940);
  sub_21E141AB4();
  v65 = a1;
  *&v70 = 0xD000000000000013;
  *(&v70 + 1) = 0x800000021E15D290;
  v71 = 0;
  v72 = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAB950);
  sub_21DF23E5C(&qword_27CEAB958, &qword_27CEAB950);
  v20 = v50;
  sub_21E141AB4();
  v21 = *(v51 + 16);
  v22 = v46;
  v23 = v48;
  v21(v46, v49, v48);
  v43 = *(v61 + 16);
  v43(v55, v47, v58);
  v42 = *(v62 + 16);
  v42(v56, v12, v57);
  v41 = *(v63 + 16);
  v24 = v52;
  v41(v52, v54, v60);
  v40 = *(v64 + 16);
  v40(v53, v20, v59);
  v25 = v45;
  v21(v45, v22, v23);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAB960);
  v43(&v25[v26[12]], v55, v58);
  v42(&v25[v26[16]], v56, v57);
  v27 = v60;
  v41(&v25[v26[20]], v24, v60);
  v28 = v53;
  v29 = v59;
  v40(&v25[v26[24]], v53, v59);
  v30 = *(v64 + 8);
  v64 += 8;
  v30(v50, v29);
  v31 = *(v63 + 8);
  v63 += 8;
  v31(v54, v27);
  v32 = *(v62 + 8);
  v62 += 8;
  v33 = v57;
  v32(v44, v57);
  v34 = *(v61 + 8);
  v61 += 8;
  v35 = v58;
  v34(v47, v58);
  v36 = *(v51 + 8);
  v37 = v48;
  v36(v49, v48);
  v30(v28, v59);
  v31(v52, v60);
  v32(v56, v33);
  v34(v55, v35);
  return (v36)(v46, v37);
}

uint64_t sub_21E0641CC@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAB0B8);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v13 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAB970);
  MEMORY[0x28223BE20](v5);
  v7 = &v13 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAB840);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v13 - v10;
  type metadata accessor for VIUIDeveloperMenu();
  sub_21E141AC4();
  swift_getKeyPath();
  sub_21E141AE4();

  (*(v9 + 8))(v11, v8);
  swift_getKeyPath();
  sub_21E1419E4();

  sub_21DF23614(v7, &qword_27CEAB970);
  sub_21DF236C0(v4, a1, &qword_27CEAB0B8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAB910);
  sub_21E13E9C4();
  sub_21E065950(&qword_27CEAB0C0, MEMORY[0x277D795B0]);
  sub_21E13D894();
  return sub_21DF23614(v4, &qword_27CEAB0B8);
}

uint64_t sub_21E06446C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21E065950(&qword_280F6B250, type metadata accessor for NewSaliencyModel);
  sub_21E13D3C4();

  v4 = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__appConfiguration;
  swift_beginAccess();
  v5 = sub_21E13E3D4();
  return (*(*(v5 - 8) + 16))(a2, v3 + v4, v5);
}

uint64_t sub_21E064564(uint64_t a1)
{
  v2 = sub_21E13E3D4();
  v3 = MEMORY[0x28223BE20](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v5, a1, v3);
  return sub_21E0C80B8(v5);
}

uint64_t sub_21E064630@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAB100);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v13 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAB970);
  MEMORY[0x28223BE20](v5);
  v7 = &v13 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAB840);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v13 - v10;
  type metadata accessor for VIUIDeveloperMenu();
  sub_21E141AC4();
  swift_getKeyPath();
  sub_21E141AE4();

  (*(v9 + 8))(v11, v8);
  swift_getKeyPath();
  sub_21E1419E4();

  sub_21DF23614(v7, &qword_27CEAB970);
  sub_21DF236C0(v4, a1, &qword_27CEAB100);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAB920);
  sub_21E13DA04();
  sub_21E065950(&qword_27CEAB158, MEMORY[0x277D78FF0]);
  sub_21E13D894();
  return sub_21DF23614(v4, &qword_27CEAB100);
}

uint64_t sub_21E0648D0@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAB190);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v13 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAB970);
  MEMORY[0x28223BE20](v5);
  v7 = &v13 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAB840);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v13 - v10;
  type metadata accessor for VIUIDeveloperMenu();
  sub_21E141AC4();
  swift_getKeyPath();
  sub_21E141AE4();

  (*(v9 + 8))(v11, v8);
  swift_getKeyPath();
  sub_21E1419E4();

  sub_21DF23614(v7, &qword_27CEAB970);
  sub_21DF236C0(v4, a1, &qword_27CEAB190);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAB930);
  sub_21E13DB94();
  sub_21E065950(&qword_27CEAB1F0, MEMORY[0x277D790D8]);
  sub_21E13D894();
  return sub_21DF23614(v4, &qword_27CEAB190);
}

uint64_t sub_21E064B70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(char *))
{
  v8 = a5(0);
  MEMORY[0x28223BE20](v8);
  v10 = &v13 - v9;
  (*(v11 + 16))(&v13 - v9, a1);
  return a6(v10);
}

__n128 sub_21E064C40@<Q0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAB840);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v11 - v4;
  type metadata accessor for VIUIDeveloperMenu();
  sub_21E141AC4();
  swift_getKeyPath();
  sub_21E141AE4();

  (*(v3 + 8))(v5, v2);
  v6 = v11[2];
  v7 = v12;
  v8 = v13;
  v9 = v14;
  result = v15;
  *a1 = v11[1];
  *(a1 + 8) = v6;
  *(a1 + 16) = v7;
  *(a1 + 17) = v8;
  *(a1 + 18) = v9;
  *(a1 + 24) = result;
  *(a1 + 40) = 0;
  *(a1 + 42) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  return result;
}

uint64_t sub_21E064D8C@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAB840);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v14 - v4;
  type metadata accessor for VIUIDeveloperMenu();
  sub_21E141AC4();
  swift_getKeyPath();
  sub_21E141AE4();

  (*(v3 + 8))(v5, v2);
  v6 = v20;
  v7 = v21;
  v8 = v22;
  swift_getKeyPath();
  v17 = v6;
  v18 = v7;
  v19 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAB968);
  sub_21E1419E4();

  v9 = v14[1];
  v10 = v14[2];
  v11 = v15;
  v12 = v16;

  *a1 = v9;
  *(a1 + 8) = v10;
  *(a1 + 16) = v11;
  *(a1 + 20) = v12;
  *(a1 + 24) = 0;
  *(a1 + 28) = 1045220557;
  return result;
}

uint64_t sub_21E064F64()
{
  v0 = sub_21E140054();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v16 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_21E1405E4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAB860);
  MEMORY[0x28223BE20](v8);
  v10 = v16 - v9;
  sub_21E1405F4();
  sub_21E140044();
  sub_21E065950(&qword_280F68E08, MEMORY[0x277CDE278]);
  sub_21E065950(&qword_280F68E88, MEMORY[0x277CDDE78]);
  sub_21E140DA4();
  (*(v1 + 8))(v3, v0);
  (*(v5 + 8))(v7, v4);
  sub_21E141CC4();
  sub_21E13F664();
  v11 = &v10[*(v8 + 36)];
  v12 = v18;
  *v11 = v17;
  *(v11 + 1) = v12;
  *(v11 + 2) = v19;
  sub_21E141C84();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAB868);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAB870);
  v13 = sub_21E0654D0();
  v14 = sub_21E06560C();
  v16[0] = v8;
  v16[1] = MEMORY[0x277CE1120];
  v16[2] = v13;
  v16[3] = v14;
  swift_getOpaqueTypeConformance2();
  sub_21E065660();
  sub_21E141354();
  return sub_21DF178C4(v10);
}

uint64_t sub_21E0652E4()
{
  v0 = sub_21E1419A4();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = &v9 - v5;
  sub_21E141974();
  sub_21E141954();
  v7 = *(v1 + 8);
  v7(v3, v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAB860);
  sub_21E0654D0();
  sub_21E06560C();
  sub_21E140E54();
  return (v7)(v6, v0);
}

uint64_t sub_21E065444@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAB870) + 36);
  sub_21E141BF4();
  *(v4 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAB898) + 56)) = 256;

  return sub_21DF1792C(a1, a2);
}

unint64_t sub_21E0654D0()
{
  result = qword_27CEAB878;
  if (!qword_27CEAB878)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEAB860);
    sub_21E1405E4();
    sub_21E140054();
    sub_21E065950(&qword_280F68E08, MEMORY[0x277CDE278]);
    sub_21E065950(&qword_280F68E88, MEMORY[0x277CDDE78]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEAB878);
  }

  return result;
}

unint64_t sub_21E06560C()
{
  result = qword_27CEAB880;
  if (!qword_27CEAB880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEAB880);
  }

  return result;
}

unint64_t sub_21E065660()
{
  result = qword_27CEAB888;
  if (!qword_27CEAB888)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEAB870);
    sub_21E0654D0();
    sub_21DF23E5C(&qword_27CEAB890, &qword_27CEAB898);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEAB888);
  }

  return result;
}

unint64_t sub_21E065748()
{
  result = qword_27CEAB978;
  if (!qword_27CEAB978)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEAB8E0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEAB8B8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEAB8B0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEAB8A8);
    sub_21E1403F4();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEAB8A0);
    sub_21DF23E5C(&qword_27CEAB8D8, &qword_27CEAB8A0);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_21E065950(&qword_27CEA73D8, MEMORY[0x277CE0660]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEAB978);
  }

  return result;
}

uint64_t sub_21E065950(unint64_t *a1, void (*a2)(uint64_t))
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

void static HapticFeedback.generateImpactFeedback(style:)(uint64_t a1)
{
  v1 = [objc_allocWithZone(MEMORY[0x277D755F0]) initWithStyle_];
  [v1 impactOccurred];
}

void static HapticFeedback.generateNotificationFeedback(type:)(uint64_t a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x277D757B8]) init];
  [v2 notificationOccurred_];
}

void static HapticFeedback.generateButtonFeedback()()
{
  v0 = [objc_opt_self() defaultConfiguration];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAB980);
  v1 = sub_21E142B54();
  v2 = sub_21E1420F4();
  v3 = [v0 tweakedConfigurationForCaller:v1 usage:v2];

  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAB988);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21E147C70;
  v5 = v3;
  v6 = MEMORY[0x277D837D0];
  sub_21E142824();
  *(inited + 96) = v6;
  *(inited + 72) = 0x6D6F74737563;
  *(inited + 80) = 0xE600000000000000;
  sub_21E142824();
  *(inited + 168) = MEMORY[0x277D83B88];
  *(inited + 144) = 29527;
  sub_21E142824();
  v7 = sub_21DF26FFC(&unk_282F3C3E0);
  sub_21E065DC4(&unk_282F3C400);
  *(inited + 240) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAB998);
  *(inited + 216) = v7;
  sub_21DF27100(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6C18);
  swift_arrayDestroy();
  v8 = sub_21E141FF4();

  v9 = [objc_opt_self() feedbackWithDictionaryRepresentation_];

  [v5 setInteractionStartedFeedback_];
  v10 = [v5 interactionStartedFeedback];
  [v5 setInteractionEndedFeedback_];

  v11 = [objc_allocWithZone(MEMORY[0x277D75E20]) initWithConfiguration_];
  [v11 _setOutputMode_];
  [v11 userInteractionStarted];
}

uint64_t sub_21E065DC4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAB990);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t Pin.init(pin:style:maxWidth:)@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v11 = *a2;
  *a6 = swift_getKeyPath();
  *(a6 + 8) = 0;
  v12 = type metadata accessor for Pin();
  v13 = v12[10];
  *(a6 + v13) = 1;
  v14 = a6 + v12[11];
  result = (*(*(a5 - 8) + 32))(a6 + v12[9], a1, a5);
  *(a6 + v13) = v11;
  *v14 = a3;
  *(v14 + 8) = a4 & 1;
  return result;
}

uint64_t PinStyle.hashValue.getter()
{
  v1 = *v0;
  sub_21E142C14();
  MEMORY[0x223D53460](v1);
  return sub_21E142C44();
}

uint64_t sub_21E065FC8()
{
  v1 = sub_21E13FF94();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v8[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = *v0;
  if (*(v0 + 8) != 1)
  {

    sub_21E142574();
    v6 = sub_21E1408C4();
    sub_21E13F184();

    sub_21E13FF84();
    swift_getAtKeyPath();
    sub_21DFE0F78(v5, 0);
    (*(v2 + 8))(v4, v1);
    LOBYTE(v5) = v8[15];
  }

  return v5 & 1;
}

double Pin.body.getter@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = sub_21E065FC8();
  v7 = *(a1 + 16);
  v8 = *(a1 + 24);
  v9 = *(v8 + 40);
  *&v52 = v9(v6 & 1, v7, v8);
  sub_21E0685B4();
  v38 = sub_21E1415C4();
  v34 = *(a1 + 40);
  sub_21E13F4E4();
  v10 = v60;
  v11 = v61;
  v12 = v62;
  v37 = v63;
  v13 = v64;
  v14 = sub_21E141CC4();
  v35 = v15;
  v36 = v14;
  v16 = sub_21E065FC8();
  *&v52 = v9(v16 & 1, v7, v8);
  sub_21E1415C4();
  v17 = sub_21E141514();

  v33 = sub_21E141CC4();
  v19 = v18;
  sub_21E141CC4();
  v20 = sub_21E13FCE4();
  v21 = MEMORY[0x223D52580](v20, 0.5, 1.0, 0.0);
  v22 = *(v2 + v34);
  v23 = sub_21E141CC4();
  v25 = v24;
  sub_21E0664CC(v3, v7, v8, &v40);
  v48[2] = v42;
  v48[3] = v43;
  v48[0] = v40;
  v48[1] = v41;
  v45[0] = v40;
  v45[1] = v41;
  v45[2] = v42;
  v45[3] = v43;
  *&v46 = v44;
  *(&v46 + 1) = v23;
  v47 = v25;
  *(&v59[1] + 7) = v41;
  *(v59 + 7) = v40;
  *(&v59[5] + 7) = v25;
  *(&v59[4] + 7) = v46;
  *(&v59[3] + 7) = v43;
  *(&v59[2] + 7) = v42;
  v49 = v44;
  v50 = v23;
  v51 = v25;
  sub_21E068608(v45, v39);
  sub_21E068678(v48);
  *a2 = v17;
  *(a2 + 8) = 256;
  *(a2 + 16) = v10;
  *(a2 + 24) = v11;
  *(a2 + 32) = v12;
  *(a2 + 40) = v37;
  *(a2 + 48) = v13;
  *(a2 + 56) = v38;
  *(a2 + 64) = 256;
  *(a2 + 72) = v36;
  *(a2 + 80) = v35;
  *(a2 + 88) = v33;
  *(a2 + 96) = v19;
  v26 = v53;
  *(a2 + 104) = v52;
  *(a2 + 120) = v26;
  v27 = v55;
  *(a2 + 136) = v54;
  v28 = v56;
  v29 = v57;
  *(a2 + 200) = v58;
  *(a2 + 184) = v29;
  *(a2 + 168) = v28;
  *(a2 + 152) = v27;
  *(a2 + 216) = v21;
  *(a2 + 224) = v22;
  *(a2 + 304) = *(&v59[4] + 15);
  v30 = v59[4];
  *(a2 + 273) = v59[3];
  *(a2 + 289) = v30;
  v31 = v59[1];
  *(a2 + 257) = v59[2];
  result = *v59;
  *(a2 + 225) = v59[0];
  *(a2 + 241) = v31;
  return result;
}

uint64_t sub_21E0664CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_21E13FB84();
  v48 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v45 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEABAB8);
  v49 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v46 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v47 = &v38 - v13;
  v14 = sub_21E141624();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = type metadata accessor for Pin();
  if (*(a1 + *(result + 40)) == 1)
  {
    v44 = v10;
    v19 = *(a3 + 16);
    v42 = v8;
    v19(a2, a3);
    sub_21E141634();
    (*(v15 + 104))(v17, *MEMORY[0x277CE0FE0], v14);
    v43 = sub_21E141664();

    (*(v15 + 8))(v17, v14);
    *&v20 = (*(a3 + 24))(a2, a3);
    v41 = v20;
    *&v21 = (*(a3 + 32))(a2, a3);
    v40 = v21;
    v23 = v22;
    LOBYTE(v50) = 1;
    v39 = 1;
    v24 = sub_21E065FC8();
    v25 = (*(a3 + 48))(v24 & 1, a2, a3);
    _s20VisualIntelligenceUI17PinStyleProvidingPAAE6anchor05SwiftC09UnitPointVvg_0();
    v26 = v45;
    v27 = sub_21E13FB94();
    MEMORY[0x223D52580](v27, 0.5, 1.0, 0.0);
    v28 = sub_21E068F44(&qword_27CEABAC0, MEMORY[0x277CDFAE8]);
    v29 = v47;
    v30 = v42;
    sub_21E13F424();

    v31 = v30;
    (*(v48 + 8))(v26, v30);
    v32 = v49;
    v33 = v44;
    (*(v49 + 16))(v46, v29, v44);
    v50 = v31;
    v51 = v28;
    swift_getOpaqueTypeConformance2();
    v34 = sub_21E13F704();
    result = (*(v32 + 8))(v29, v33);
    v35 = v39;
    *&v37 = v41;
    v36 = v43;
    *(&v37 + 1) = v40;
  }

  else
  {
    v36 = 0;
    v25 = 0;
    v34 = 0;
    v35 = 0;
    v37 = 0uLL;
    v23 = 0;
  }

  *a4 = v36;
  *(a4 + 8) = 0;
  *(a4 + 16) = v35;
  *(a4 + 24) = v37;
  *(a4 + 32) = v37;
  *(a4 + 48) = v23;
  *(a4 + 56) = v25;
  *(a4 + 64) = v34;
  return result;
}

uint64_t sub_21E066994(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    if (a1 <= 6u)
    {
      if (a1 == 5)
      {
        return sub_21E1414B4();
      }

      return sub_21E141454();
    }

    if (a1 == 7)
    {
      return sub_21E141444();
    }

    else if (a1 == 8)
    {
      return sub_21E141494();
    }

    else
    {
      return sub_21E141474();
    }
  }

  else if (a1 <= 1u)
  {
    if (a1)
    {
      return sub_21E141504();
    }

    else
    {
      return sub_21E141464();
    }
  }

  else
  {
    if (a1 != 2)
    {
      if (a1 == 3)
      {
        return sub_21E1414D4();
      }

      return sub_21E141454();
    }

    return sub_21E141434();
  }
}

uint64_t sub_21E066A00(uint64_t a1, uint64_t a2)
{
  v4 = 0x662E726568736177;
  if ((a1 != 0x636E61696C707061 || a2 != 0xE900000000000065) && (sub_21E142B14() & 1) == 0)
  {
    v4 = 0x656E616C70726961;
    if ((a1 != 0x7466617263726961 || a2 != 0xE800000000000000) && (sub_21E142B14() & 1) == 0)
    {
      v4 = 0x656469732E726163;
      if ((a1 != 0x69626F6D6F747561 || a2 != 0xEA0000000000656CLL) && (sub_21E142B14() & 1) == 0)
      {
        v4 = 0x6C69662E64726962;
        if ((a1 != 1685219682 || a2 != 0xE400000000000000) && (sub_21E142B14() & 1) == 0)
        {
          if (a1 == 0x656C74746F62 && a2 == 0xE600000000000000 || (sub_21E142B14() & 1) != 0)
          {
            return 0xD000000000000010;
          }

          else
          {
            v4 = 0x6C6C69662E676F64;
            if ((a1 != 0x656E696E6163 || a2 != 0xE600000000000000) && (sub_21E142B14() & 1) == 0)
            {
              v4 = 0x747865742E636F64;
              if ((a1 != 0x746E656D75636F64 || a2 != 0xE800000000000000) && (sub_21E142B14() & 1) == 0)
              {
                v4 = 0xD000000000000010;
                if (a1 == 0xD000000000000010 && 0x800000021E15D9C0 == a2 || (sub_21E142B14() & 1) != 0)
                {
                  return 0x79616C70736964;
                }

                else if (a1 == 0xD000000000000014 && 0x800000021E15D9E0 == a2 || (sub_21E142B14() & 1) != 0)
                {
                  return 0x672E656E6F687069;
                }

                else if (a1 == 0x656E696C6566 && a2 == 0xE600000000000000 || (sub_21E142B14() & 1) != 0)
                {
                  return 0x6C6C69662E746163;
                }

                else if (a1 == 0x7265776F6C66 && a2 == 0xE600000000000000 || (sub_21E142B14() & 1) != 0)
                {
                  return 0x6C69662E6661656CLL;
                }

                else if (a1 == 1685024614 && a2 == 0xE400000000000000 || (sub_21E142B14() & 1) != 0)
                {
                  return 0x696E6B2E6B726F66;
                }

                else if (a1 == 0x727574696E727566 && a2 == 0xE900000000000065 || (sub_21E142B14() & 1) != 0)
                {
                  return 0xD000000000000011;
                }

                else if (a1 == 0x656C706F6570 && a2 == 0xE600000000000000 || (sub_21E142B14() & 1) != 0)
                {
                  return 0x662E6E6F73726570;
                }

                else if (a1 == 1852270963 && a2 == 0xE400000000000000 || (sub_21E142B14() & 1) != 0)
                {
                  return 0xD000000000000012;
                }

                else if (a1 == 0xD000000000000010 && 0x800000021E15DA00 == a2 || (sub_21E142B14() & 1) != 0)
                {
                  return 0x6C6C6162746F6F66;
                }

                else if ((a1 != 1819242356 || a2 != 0xE400000000000000) && (sub_21E142B14() & 1) == 0)
                {
                  v4 = 0x662E746F72726163;
                  if ((a1 != 0x6C62617465676576 || a2 != 0xE900000000000065) && (sub_21E142B14() & 1) == 0)
                  {
                    if (a1 == 0x6172637265746177 && a2 == 0xEA00000000007466 || (sub_21E142B14() & 1) != 0)
                    {
                      return 0x74616F626C696173;
                    }

                    else
                    {
                      return 0x6E6F697473657571;
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return v4;
}

uint64_t sub_21E0670C0()
{
  v0 = sub_21E13D844();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_21E13DD74();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21E13E1B4();
  sub_21E13DD64();
  (*(v5 + 8))(v7, v4);
  v8 = (*(v1 + 88))(v3, v0);
  if (v8 == *MEMORY[0x277D78E48] || v8 == *MEMORY[0x277D78E18] || v8 == *MEMORY[0x277D78E30])
  {
    return 0x646E696677656976;
  }

  v12 = v8;
  if (v8 == *MEMORY[0x277D78E28])
  {
    return 0x776569762E746F64;
  }

  result = 0x6569762E74786574;
  if (v12 != *MEMORY[0x277D78E20])
  {
    if (v12 == *MEMORY[0x277D78E38])
    {
      return 0xD000000000000011;
    }

    else if (v12 == *MEMORY[0x277D78E40])
    {
      return 0xD000000000000012;
    }

    else if (v12 != *MEMORY[0x277D78DF8])
    {
      (*(v1 + 8))(v3, v0);
      return 0xD000000000000028;
    }
  }

  return result;
}

uint64_t CVDetection.systemImage.getter()
{
  v1 = v0;
  v2 = sub_21E13E1E4();
  v42 = *(v2 - 8);
  v43 = v2;
  MEMORY[0x28223BE20](v2);
  v41 = &v41 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_21E13E2F4();
  v45 = *(v4 - 8);
  v46 = v4;
  MEMORY[0x28223BE20](v4);
  v44 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAB020);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v41 - v8;
  v10 = sub_21E13E9E4();
  v49 = *(v10 - 8);
  v50 = v10;
  MEMORY[0x28223BE20](v10);
  v12 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_21E13E1C4();
  v47 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v15 = &v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_21E13D874();
  v17 = *(v16 - 8);
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *(v17 + 16);
  v48 = v1;
  v21(v20, v1, v16, v18);
  v22 = (*(v17 + 88))(v20, v16);
  if (v22 == *MEMORY[0x277D78EB0])
  {
    (*(v17 + 96))(v20, v16);
    v23 = swift_projectBox();
    (*(v7 + 16))(v9, v23, v6);
    v24 = sub_21E13DD14();
    v26 = sub_21E066A00(v24, v25);

    (*(v7 + 8))(v9, v6);
LABEL_8:

    return v26;
  }

  if (v22 == *MEMORY[0x277D78E58])
  {
    (*(v17 + 96))(v20, v16);
    v27 = swift_projectBox();
    v29 = v49;
    v28 = v50;
    (*(v49 + 16))(v12, v27, v50);
    v30 = sub_21E13E9D4();
LABEL_5:
    v26 = v30;
    (*(v29 + 8))(v12, v28);
    goto LABEL_8;
  }

  if (v22 == *MEMORY[0x277D78E80])
  {
    (*(v17 + 96))(v20, v16);
    v31 = swift_projectBox();
    v32 = v47;
    (*(v47 + 16))(v15, v31, v13);
    v26 = sub_21E0670C0();
    (*(v32 + 8))(v15, v13);
    goto LABEL_8;
  }

  if (v22 == *MEMORY[0x277D78E98])
  {
    (*(v17 + 96))(v20, v16);
    v34 = swift_projectBox();
    v36 = v44;
    v35 = v45;
    v37 = v46;
    (*(v45 + 16))(v44, v34, v46);
    v38 = sub_21E13E2E4();
    v26 = sub_21E066A00(v38, v39);

    (*(v35 + 8))(v36, v37);
    goto LABEL_8;
  }

  if (v22 == *MEMORY[0x277D78E90])
  {
    (*(v17 + 96))(v20, v16);
    v40 = swift_projectBox();
    v12 = v41;
    v29 = v42;
    v28 = v43;
    (*(v42 + 16))(v41, v40, v43);
    v30 = sub_21E13E1D4();
    goto LABEL_5;
  }

  if (v22 == *MEMORY[0x277D78E88])
  {
    goto LABEL_15;
  }

  if (v22 == *MEMORY[0x277D78EA0])
  {
    (*(v17 + 8))(v20, v16);
    return 0x65646F637271;
  }

  if (v22 == *MEMORY[0x277D78EA8])
  {
    (*(v17 + 8))(v20, v16);
    return 0x70696C63707061;
  }

  if (v22 == *MEMORY[0x277D78E60])
  {
    goto LABEL_15;
  }

  if (v22 == *MEMORY[0x277D78E68] || v22 == *MEMORY[0x277D78DE0] || v22 == *MEMORY[0x277D78EB8])
  {
    (*(v17 + 8))(v20, v16);
    return 0xD000000000000018;
  }

  if (v22 == *MEMORY[0x277D78E70] || v22 == *MEMORY[0x277D78E78])
  {
LABEL_15:
    v26 = 0xD000000000000016;
    (*(v17 + 8))(v20, v16);
    return v26;
  }

  result = sub_21E142B04();
  __break(1u);
  return result;
}

uint64_t sub_21E067B88(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x636E61696C707061 && a2 == 0xE900000000000065;
  if (v4 || (sub_21E142B14() & 1) != 0)
  {
LABEL_6:

    return 6;
  }

  if (a1 == 0x7466617263726961 && a2 == 0xE800000000000000 || (sub_21E142B14() & 1) != 0 || a1 == 0x69626F6D6F747561 && a2 == 0xEA0000000000656CLL || (sub_21E142B14() & 1) != 0)
  {
    goto LABEL_13;
  }

  if (a1 == 1685219682 && a2 == 0xE400000000000000 || (sub_21E142B14() & 1) != 0)
  {
    goto LABEL_17;
  }

  if (a1 == 0x656C74746F62 && a2 == 0xE600000000000000 || (sub_21E142B14() & 1) != 0)
  {
    goto LABEL_21;
  }

  if (a1 == 0x656E696E6163 && a2 == 0xE600000000000000 || (sub_21E142B14() & 1) != 0)
  {
    goto LABEL_17;
  }

  if (a1 == 0x746E656D75636F64 && a2 == 0xE800000000000000 || (sub_21E142B14() & 1) != 0)
  {

    return 1;
  }

  if (a1 == 0xD000000000000010 && 0x800000021E15D9C0 == a2 || (sub_21E142B14() & 1) != 0 || a1 == 0xD000000000000014 && 0x800000021E15D9E0 == a2 || (sub_21E142B14() & 1) != 0)
  {

    return 2;
  }

  if (a1 == 0x656E696C6566 && a2 == 0xE600000000000000 || (sub_21E142B14() & 1) != 0)
  {
LABEL_17:

    return 0;
  }

  if (a1 == 0x7265776F6C66 && a2 == 0xE600000000000000 || (sub_21E142B14() & 1) != 0)
  {
    goto LABEL_42;
  }

  if (a1 == 1685024614 && a2 == 0xE400000000000000 || (sub_21E142B14() & 1) != 0)
  {
LABEL_21:

    return 3;
  }

  if (a1 == 0x727574696E727566 && a2 == 0xE900000000000065 || (sub_21E142B14() & 1) != 0)
  {
    goto LABEL_49;
  }

  if (a1 == 0x656C706F6570 && a2 == 0xE600000000000000 || (sub_21E142B14() & 1) != 0)
  {

    return 7;
  }

  else
  {
    if (a1 == 1852270963 && a2 == 0xE400000000000000 || (sub_21E142B14() & 1) != 0 || a1 == 0xD000000000000010 && 0x800000021E15DA00 == a2 || (sub_21E142B14() & 1) != 0)
    {
LABEL_49:

      return 4;
    }

    if (a1 == 1819242356 && a2 == 0xE400000000000000 || (sub_21E142B14() & 1) != 0)
    {
      goto LABEL_6;
    }

    if (a1 == 0x6C62617465676576 && a2 == 0xE900000000000065 || (sub_21E142B14() & 1) != 0)
    {
LABEL_42:

      return 5;
    }

    if (a1 == 0x6172637265746177 && a2 == 0xEA00000000007466)
    {
LABEL_13:

      return 8;
    }

    v6 = sub_21E142B14();

    if (v6)
    {
      return 8;
    }

    else
    {
      return 9;
    }
  }
}

uint64_t _s22VisualIntelligenceCore11CVDetectionO0aB2UIE15backgroundColor9isEnabled05SwiftE00G0VSb_tF_0()
{
  v1 = v0;
  v2 = sub_21E13E2F4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAB020);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v27 - v8;
  v10 = sub_21E13D874();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v14, v1, v10, v12);
  v15 = (*(v11 + 88))(v14, v10);
  if (v15 == *MEMORY[0x277D78EB0])
  {
    (*(v11 + 96))(v14, v10);
    v16 = swift_projectBox();
    (*(v7 + 16))(v9, v16, v6);
    v17 = sub_21E13DD14();
    v19 = sub_21E067B88(v17, v18);
    v20 = sub_21E066994(v19);
    (*(v7 + 8))(v9, v6);
LABEL_3:

    return v20;
  }

  if (v15 == *MEMORY[0x277D78E58])
  {
    goto LABEL_5;
  }

  if (v15 == *MEMORY[0x277D78E80])
  {
    (*(v11 + 8))(v14, v10);
    return _s20VisualIntelligenceUI17PinStyleProvidingPAAE15foregroundColor9isEnabled05SwiftC00H0VSb_tF_0();
  }

  else
  {
    if (v15 == *MEMORY[0x277D78E98])
    {
      (*(v11 + 96))(v14, v10);
      v22 = swift_projectBox();
      (*(v3 + 16))(v5, v22, v2);
      v23 = sub_21E13E2E4();
      v25 = sub_21E067B88(v23, v24);
      v20 = sub_21E066994(v25);
      (*(v3 + 8))(v5, v2);
      goto LABEL_3;
    }

    if (v15 == *MEMORY[0x277D78E90])
    {
LABEL_5:
      (*(v11 + 8))(v14, v10);
      return sub_21E1414D4();
    }

    if (v15 == *MEMORY[0x277D78E88])
    {
      (*(v11 + 8))(v14, v10);
      return sub_21E1414E4();
    }

    else if (v15 == *MEMORY[0x277D78EA0] || v15 == *MEMORY[0x277D78EA8])
    {
      (*(v11 + 8))(v14, v10);
      return sub_21E1414B4();
    }

    else if (v15 == *MEMORY[0x277D78E60])
    {
      (*(v11 + 8))(v14, v10);
      return sub_21E1414F4();
    }

    else if (v15 == *MEMORY[0x277D78E68] || v15 == *MEMORY[0x277D78DE0] || v15 == *MEMORY[0x277D78EB8])
    {
      (*(v11 + 8))(v14, v10);
      return sub_21E141434();
    }

    else if (v15 == *MEMORY[0x277D78E70] || v15 == *MEMORY[0x277D78E78])
    {
      (*(v11 + 8))(v14, v10);
      return sub_21E141504();
    }

    else
    {
      result = sub_21E142B04();
      __break(1u);
    }
  }

  return result;
}

unint64_t sub_21E0685B4()
{
  result = qword_27CEAB9A0;
  if (!qword_27CEAB9A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEAB9A0);
  }

  return result;
}

uint64_t sub_21E068608(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAB9A8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21E068678(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAB9A8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_21E0686E4()
{
  result = qword_27CEAB9B0;
  if (!qword_27CEAB9B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEAB9B0);
  }

  return result;
}

uint64_t sub_21E0687C0(uint64_t a1)
{
  result = sub_21E068F44(qword_27CEAB9C8, MEMORY[0x277D78EC0]);
  *(a1 + 8) = result;
  return result;
}

void sub_21E06888C()
{
  sub_21E068CCC(319, &qword_27CEABA50, MEMORY[0x277D839B0], MEMORY[0x277CDF468]);
  if (v0 <= 0x3F)
  {
    swift_checkMetadataState();
    if (v1 <= 0x3F)
    {
      sub_21E068CCC(319, &qword_27CEABA58, MEMORY[0x277D85048], MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}