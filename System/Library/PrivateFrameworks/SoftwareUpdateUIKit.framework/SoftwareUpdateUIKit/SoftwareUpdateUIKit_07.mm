uint64_t sub_26AF97B6C()
{
  v1 = [objc_opt_self() sharedDefaults];
  v2 = [v1 shouldShowComingSoonTip];
  MEMORY[0x277D82BD8](v1);
  return v2;
}

uint64_t sub_26AF97BD4()
{
  v1 = [objc_opt_self() sharedDefaults];
  v2 = [v1 shouldHideComingSoonTip];
  MEMORY[0x277D82BD8](v1);
  return v2;
}

uint64_t sub_26AF97C3C()
{
  v1 = [objc_opt_self() sharedDefaults];
  v2 = [v1 comingSoonTipTitle];
  if (v2)
  {
    sub_26B079E00();
    MEMORY[0x277D82BD8](v2);
  }

  MEMORY[0x277D82BD8](v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DC400);
  return sub_26B079E60();
}

uint64_t sub_26AF97D50()
{
  v1 = [objc_opt_self() sharedDefaults];
  v2 = [v1 comingSoonTipMessage];
  if (v2)
  {
    sub_26B079E00();
    MEMORY[0x277D82BD8](v2);
  }

  MEMORY[0x277D82BD8](v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DC400);
  return sub_26B079E60();
}

uint64_t sub_26AF97E64()
{
  v1 = [objc_opt_self() sharedDefaults];
  v2 = [v1 comingSoonTipImageSystemName];
  if (v2)
  {
    sub_26B079E00();
    MEMORY[0x277D82BD8](v2);
  }

  MEMORY[0x277D82BD8](v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DC400);
  return sub_26B079E60();
}

uint64_t sub_26AF97F78()
{
  v1 = [objc_opt_self() sharedDefaults];
  v2 = [v1 comingSoonTipLearnMoreLink];
  if (v2)
  {
    sub_26B079E00();
    MEMORY[0x277D82BD8](v2);
  }

  MEMORY[0x277D82BD8](v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DC400);
  return sub_26B079E60();
}

uint64_t sub_26AF9808C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v143 = a1;
  v144 = a2;
  v145 = a3;
  v146 = a4;
  v147 = a5;
  v148 = a6;
  v149 = a7;
  v150 = a8;
  v151 = sub_26AF9BB2C;
  v153 = sub_26AF9BD0C;
  v155 = sub_26AF9BD58;
  v157 = sub_26AF99CC0;
  v158 = sub_26AF9BE58;
  v160 = sub_26AF9BB74;
  v162 = sub_26AF9BF58;
  v164 = sub_26AF9BBC0;
  v166 = sub_26AF9C058;
  v168 = sub_26AF9BC0C;
  v170 = sub_26AF9C158;
  v175 = sub_26AF9BC58;
  v179 = sub_26AF9C258;
  v181 = sub_26AF9BC90;
  v183 = sub_26AF9BCC4;
  v185 = sub_26AF9BDA4;
  v187 = sub_26AF9BDDC;
  v189 = sub_26AF9BE10;
  v191 = sub_26AF9BEA4;
  v193 = sub_26AF9BEDC;
  v195 = sub_26AF9BF10;
  v197 = sub_26AF9BFA4;
  v199 = sub_26AF9BFDC;
  v201 = sub_26AF9C010;
  v203 = sub_26AF9C0A4;
  v205 = sub_26AF9C0DC;
  v207 = sub_26AF9C110;
  v209 = sub_26AF9C1A4;
  v211 = sub_26AF9C1DC;
  v213 = sub_26AF9C210;
  v216 = sub_26AF9C2A4;
  v238 = 0;
  v239 = 0;
  v236 = 0;
  v237 = 0;
  v234 = 0;
  v235 = 0;
  v232 = 0;
  v233 = 0;
  v231 = 0;
  v136 = 0;
  v137 = sub_26B078580();
  v138 = *(v137 - 8);
  v139 = v137 - 8;
  v140 = (*(v138 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v143);
  v141 = v102 - v140;
  v238 = v8;
  v239 = v9;
  v236 = v10;
  v237 = v11;
  v234 = v12;
  v235 = v13;
  v232 = v14;
  v233 = v15;
  v231 = v16;
  sub_26B078550();
  MEMORY[0x277D82BE0](v142);
  v177 = 7;
  v152 = swift_allocObject();
  *(v152 + 16) = v142;
  sub_26B078640();
  v176 = 32;
  v17 = swift_allocObject();
  v18 = v144;
  v161 = v17;
  *(v17 + 16) = v143;
  *(v17 + 24) = v18;
  sub_26B078640();
  v19 = swift_allocObject();
  v20 = v146;
  v165 = v19;
  *(v19 + 16) = v145;
  *(v19 + 24) = v20;
  sub_26B078640();
  v21 = swift_allocObject();
  v22 = v148;
  v169 = v21;
  *(v21 + 16) = v147;
  *(v21 + 24) = v22;
  sub_26B078640();
  v23 = swift_allocObject();
  v24 = v150;
  v178 = v23;
  *(v23 + 16) = v149;
  *(v23 + 24) = v24;
  v220 = sub_26B078570();
  v221 = sub_26B07A2A0();
  v173 = 17;
  v182 = swift_allocObject();
  v172 = 32;
  *(v182 + 16) = 32;
  v184 = swift_allocObject();
  v174 = 8;
  *(v184 + 16) = 8;
  v25 = swift_allocObject();
  v26 = v152;
  v154 = v25;
  *(v25 + 16) = v151;
  *(v25 + 24) = v26;
  v27 = swift_allocObject();
  v28 = v154;
  v156 = v27;
  *(v27 + 16) = v153;
  *(v27 + 24) = v28;
  v29 = swift_allocObject();
  v30 = v156;
  v186 = v29;
  *(v29 + 16) = v155;
  *(v29 + 24) = v30;
  v188 = swift_allocObject();
  *(v188 + 16) = v172;
  v190 = swift_allocObject();
  *(v190 + 16) = v174;
  v31 = swift_allocObject();
  v159 = v31;
  *(v31 + 16) = v157;
  *(v31 + 24) = 0;
  v32 = swift_allocObject();
  v33 = v159;
  v192 = v32;
  *(v32 + 16) = v158;
  *(v32 + 24) = v33;
  v194 = swift_allocObject();
  *(v194 + 16) = v172;
  v196 = swift_allocObject();
  *(v196 + 16) = v174;
  v34 = swift_allocObject();
  v35 = v161;
  v163 = v34;
  *(v34 + 16) = v160;
  *(v34 + 24) = v35;
  v36 = swift_allocObject();
  v37 = v163;
  v198 = v36;
  *(v36 + 16) = v162;
  *(v36 + 24) = v37;
  v200 = swift_allocObject();
  *(v200 + 16) = v172;
  v202 = swift_allocObject();
  *(v202 + 16) = v174;
  v38 = swift_allocObject();
  v39 = v165;
  v167 = v38;
  *(v38 + 16) = v164;
  *(v38 + 24) = v39;
  v40 = swift_allocObject();
  v41 = v167;
  v204 = v40;
  *(v40 + 16) = v166;
  *(v40 + 24) = v41;
  v206 = swift_allocObject();
  *(v206 + 16) = v172;
  v208 = swift_allocObject();
  *(v208 + 16) = v174;
  v42 = swift_allocObject();
  v43 = v169;
  v171 = v42;
  *(v42 + 16) = v168;
  *(v42 + 24) = v43;
  v44 = swift_allocObject();
  v45 = v171;
  v210 = v44;
  *(v44 + 16) = v170;
  *(v44 + 24) = v45;
  v212 = swift_allocObject();
  *(v212 + 16) = v172;
  v214 = swift_allocObject();
  *(v214 + 16) = v174;
  v46 = swift_allocObject();
  v47 = v178;
  v180 = v46;
  *(v46 + 16) = v175;
  *(v46 + 24) = v47;
  v48 = swift_allocObject();
  v49 = v180;
  v217 = v48;
  *(v48 + 16) = v179;
  *(v48 + 24) = v49;
  v219 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DBB00);
  v215 = sub_26B07A760();
  v218 = v50;

  v51 = v182;
  v52 = v218;
  *v218 = v181;
  v52[1] = v51;

  v53 = v184;
  v54 = v218;
  v218[2] = v183;
  v54[3] = v53;

  v55 = v186;
  v56 = v218;
  v218[4] = v185;
  v56[5] = v55;

  v57 = v188;
  v58 = v218;
  v218[6] = v187;
  v58[7] = v57;

  v59 = v190;
  v60 = v218;
  v218[8] = v189;
  v60[9] = v59;

  v61 = v192;
  v62 = v218;
  v218[10] = v191;
  v62[11] = v61;

  v63 = v194;
  v64 = v218;
  v218[12] = v193;
  v64[13] = v63;

  v65 = v196;
  v66 = v218;
  v218[14] = v195;
  v66[15] = v65;

  v67 = v198;
  v68 = v218;
  v218[16] = v197;
  v68[17] = v67;

  v69 = v200;
  v70 = v218;
  v218[18] = v199;
  v70[19] = v69;

  v71 = v202;
  v72 = v218;
  v218[20] = v201;
  v72[21] = v71;

  v73 = v204;
  v74 = v218;
  v218[22] = v203;
  v74[23] = v73;

  v75 = v206;
  v76 = v218;
  v218[24] = v205;
  v76[25] = v75;

  v77 = v208;
  v78 = v218;
  v218[26] = v207;
  v78[27] = v77;

  v79 = v210;
  v80 = v218;
  v218[28] = v209;
  v80[29] = v79;

  v81 = v212;
  v82 = v218;
  v218[30] = v211;
  v82[31] = v81;

  v83 = v214;
  v84 = v218;
  v218[32] = v213;
  v84[33] = v83;

  v85 = v217;
  v86 = v218;
  v218[34] = v216;
  v86[35] = v85;
  sub_26AEA3B2C();

  if (os_log_type_enabled(v220, v221))
  {
    v87 = v136;
    v129 = sub_26B07A420();
    v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DCED0);
    v130 = sub_26AEA3B70(0);
    v131 = sub_26AEA3B70(6);
    v132 = &v226;
    v226 = v129;
    v133 = &v225;
    v225 = v130;
    v134 = &v224;
    v224 = v131;
    sub_26AEA3BC4(2, &v226);
    sub_26AEA3BC4(6, v132);
    v222 = v181;
    v223 = v182;
    sub_26AEA3BD8(&v222, v132, v133, v134);
    v135 = v87;
    if (v87)
    {

      __break(1u);
    }

    else
    {
      v222 = v183;
      v223 = v184;
      sub_26AEA3BD8(&v222, &v226, &v225, &v224);
      v127 = 0;
      v222 = v185;
      v223 = v186;
      sub_26AEA3BD8(&v222, &v226, &v225, &v224);
      v126 = 0;
      v222 = v187;
      v223 = v188;
      sub_26AEA3BD8(&v222, &v226, &v225, &v224);
      v125 = 0;
      v222 = v189;
      v223 = v190;
      sub_26AEA3BD8(&v222, &v226, &v225, &v224);
      v124 = 0;
      v222 = v191;
      v223 = v192;
      sub_26AEA3BD8(&v222, &v226, &v225, &v224);
      v123 = 0;
      v222 = v193;
      v223 = v194;
      sub_26AEA3BD8(&v222, &v226, &v225, &v224);
      v122 = 0;
      v222 = v195;
      v223 = v196;
      sub_26AEA3BD8(&v222, &v226, &v225, &v224);
      v121 = 0;
      v222 = v197;
      v223 = v198;
      sub_26AEA3BD8(&v222, &v226, &v225, &v224);
      v120 = 0;
      v222 = v199;
      v223 = v200;
      sub_26AEA3BD8(&v222, &v226, &v225, &v224);
      v119 = 0;
      v222 = v201;
      v223 = v202;
      sub_26AEA3BD8(&v222, &v226, &v225, &v224);
      v118 = 0;
      v222 = v203;
      v223 = v204;
      sub_26AEA3BD8(&v222, &v226, &v225, &v224);
      v117 = 0;
      v222 = v205;
      v223 = v206;
      sub_26AEA3BD8(&v222, &v226, &v225, &v224);
      v116 = 0;
      v222 = v207;
      v223 = v208;
      sub_26AEA3BD8(&v222, &v226, &v225, &v224);
      v115 = 0;
      v222 = v209;
      v223 = v210;
      sub_26AEA3BD8(&v222, &v226, &v225, &v224);
      v114 = 0;
      v222 = v211;
      v223 = v212;
      sub_26AEA3BD8(&v222, &v226, &v225, &v224);
      v113 = 0;
      v222 = v213;
      v223 = v214;
      sub_26AEA3BD8(&v222, &v226, &v225, &v224);
      v112 = 0;
      v222 = v216;
      v223 = v217;
      sub_26AEA3BD8(&v222, &v226, &v225, &v224);
      _os_log_impl(&dword_26AE88000, v220, v221, "%s.%s: Setting up the Mocked Coming Soon tip with:\n    title: %s\n    content: %s\n    imageSystemName: %s\n    learnMoreLink: %s", v129, 0x3Eu);
      sub_26AEA3C24(v130);
      sub_26AEA3C24(v131);
      sub_26B07A400();
    }
  }

  else
  {
  }

  v88 = MEMORY[0x277D82BD8](v220);
  (*(v138 + 8))(v141, v137, v88);
  v111 = 1;
  sub_26AF90FE0(1);
  sub_26B078640();
  v102[1] = &v230;
  v89 = sub_26AF913F4();
  v90 = v144;
  v103 = v89;
  *v91 = v143;
  v91[1] = v90;

  v109 = 0;
  v103();
  sub_26B078640();
  v104 = &v229;
  v92 = sub_26AF913F4();
  v93 = v146;
  v105 = v92;
  *(v94 + 16) = v145;
  *(v94 + 24) = v93;

  v105();
  sub_26B078640();
  v106 = &v228;
  v95 = sub_26AF913F4();
  v96 = v150;
  v107 = v95;
  *(v97 + 32) = v149;
  *(v97 + 40) = v96;

  v107();
  sub_26B078640();
  v108 = &v227;
  v98 = sub_26AF913F4();
  v99 = v148;
  v110 = v98;
  *(v100 + 48) = v147;
  *(v100 + 56) = v99;

  v110();
  return sub_26AFE8298();
}

uint64_t sub_26AF99D24()
{
  sub_26B078640();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DC400);
  return sub_26B079E60();
}

uint64_t sub_26AF99D88()
{
  sub_26B078640();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DC400);
  return sub_26B079E60();
}

uint64_t sub_26AF99DEC()
{
  sub_26B078640();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DC400);
  return sub_26B079E60();
}

char *TipsManager.init()()
{
  v3 = 0;
  *OBJC_IVAR____TtC19SoftwareUpdateUIKit11TipsManager_inManualControl = 0;
  sub_26AFEA910(&v3[OBJC_IVAR____TtC19SoftwareUpdateUIKit11TipsManager_constellationComingSoonTip]);
  nullsub_66();
  sub_26AFE820C(&v3[OBJC_IVAR____TtC19SoftwareUpdateUIKit11TipsManager_mockedComingSoonTip]);
  v2.receiver = v3;
  v2.super_class = type metadata accessor for TipsManager();
  v1 = objc_msgSendSuper2(&v2, sel_init);
  MEMORY[0x277D82BE0](v1);
  v3 = v1;
  MEMORY[0x277D82BD8](v1);
  return v1;
}

id TipsManager.__deallocating_deinit()
{
  v3 = v0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TipsManager();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_26AF9A398@<X0>(uint64_t (*a1)(void)@<X0>, _DWORD *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

uint64_t sub_26AF9A460(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v9 = *(v3 + 16);
  v10 = *(v3 + 24);
  v4 = sub_26AF9A4D4();
  v5 = MEMORY[0x277D849A8];

  return sub_26B06A188(a1, a2, a3, v9, v10, v5, v4);
}

unint64_t sub_26AF9A4D4()
{
  v2 = qword_2803DD950;
  if (!qword_2803DD950)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DD950);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_26AF9A5DC()
{
  result = *(v0 + 16);
  sub_26AF97AFC();
  return result;
}

uint64_t sub_26AF9ADA4(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v9 = *(v3 + 16);
  v10 = *(v3 + 24);
  v4 = sub_26AF9A4D4();
  v5 = MEMORY[0x277D849A8];

  return sub_26B06A188(a1, a2, a3, v9, v10, v5, v4);
}

uint64_t sub_26AF9AFA4(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v9 = *(v3 + 16);
  v10 = *(v3 + 24);
  v4 = sub_26AF9A4D4();
  v5 = MEMORY[0x277D849A8];

  return sub_26B06A188(a1, a2, a3, v9, v10, v5, v4);
}

uint64_t sub_26AF9B744()
{
  result = *(v0 + 16);
  sub_26AF97A8C();
  return result;
}

uint64_t sub_26AF9BB74()
{
  result = *(v0 + 16);
  sub_26AF99CF0();
  return result;
}

uint64_t View.withSUUIEnvironmentContext(manager:reactivePlatform:reactiveAnalyticsReporter:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v15 = a6;
  v12 = a1;
  v13 = a2;
  v14 = a3;
  v16 = a4;
  v18 = a5;
  v23 = 0;
  v22 = 0;
  v21 = 0;
  v20 = 0;
  v24 = a4;
  v17 = type metadata accessor for SUUIEnvironmentContextModifier();
  v11 = (*(*(v17 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v12);
  v19 = &v11 - v11;
  v23 = v7;
  v22 = v8;
  v21 = v9;
  v20 = v6;

  sub_26AF9D234(v12, v13, v14, v19);
  MEMORY[0x26D66C890](v19, v16, v17, v18);
  return sub_26AF9D2A4(v19);
}

uint64_t type metadata accessor for SUUIEnvironmentContextModifier()
{
  v1 = qword_2803DDA10;
  if (!qword_2803DDA10)
  {
    return swift_getSingletonMetadata();
  }

  return v1;
}

uint64_t sub_26AF9C610@<X0>(uint64_t a1@<X8>)
{
  v5 = a1;
  v8 = 0;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD968);
  v4 = (*(*(v6 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v3);
  v7 = &v3 - v4;
  v8 = v1;
  sub_26AF9D384(v1, (&v3 - v4));
  sub_26B078A10();
  return sub_26AF9D458(v7);
}

uint64_t sub_26AF9C70C(uint64_t a1)
{
  v6 = a1;
  v8 = 0;
  v7 = 0;
  v4[0] = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD968) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v6);
  v5 = v4 - v4[0];
  v8 = v2;
  v7 = v1;
  sub_26AF9D384(v2, (v4 - v4[0]));
  sub_26AF9D4F4(v5, v4[1]);
  return sub_26AF9D458(v6);
}

uint64_t SUUIEnvironmentContextModifier.manager.getter()
{
  v2 = *(v0 + *(type metadata accessor for SUUIEnvironmentContextModifier() + 20));

  return v2;
}

uint64_t SUUIEnvironmentContextModifier.reactivePlatform.getter()
{
  v2 = *(v0 + *(type metadata accessor for SUUIEnvironmentContextModifier() + 24));

  return v2;
}

uint64_t SUUIEnvironmentContextModifier.reactiveAnalyticsReporter.getter()
{
  v2 = *(v0 + *(type metadata accessor for SUUIEnvironmentContextModifier() + 28));

  return v2;
}

uint64_t SUUIEnvironmentContextModifier.body(content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v49 = a2;
  v11[1] = a1;
  v3 = v2;
  v42 = v3;
  v25 = sub_26AF9DA70;
  v60 = 0;
  v59 = 0;
  v58 = 0;
  v43 = type metadata accessor for SUUIEnvironmentContextModifier();
  v12 = *(v43 - 1);
  v20 = v12;
  v21 = *(v12 + 64);
  v13 = (v21 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v43);
  v23 = v11 - v13;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD970);
  v14 = (*(*(v28 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v28);
  v31 = v11 - v14;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD978);
  v15 = (*(*(v33 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v33);
  v36 = v11 - v15;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD980);
  v16 = (*(*(v38 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v38);
  v41 = v11 - v16;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD988);
  v17 = (*(*(v45 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v45);
  v48 = v11 - v17;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD990);
  v18 = (*(*(v50 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v42);
  v52 = v11 - v18;
  v19 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v6);
  v53 = v11 - v19;
  v60 = v11 - v19;
  v59 = a1;
  v58 = v7;
  sub_26AF9D67C(v7, v8);
  v22 = (*(v20 + 80) + 16) & ~*(v20 + 80);
  v26 = swift_allocObject();
  sub_26AF9D95C(v23, (v26 + v22));
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD998);
  sub_26AF9DAD4();
  sub_26B0796C0();
  v9 = v42;
  sub_26AEB3258(v25);
  KeyPath = swift_getKeyPath();
  v27 = *(v9 + v43[6]);

  v29 = &v57;
  sub_26B0784C0();

  sub_26AF9DB8C();
  sub_26B079430();
  sub_26AF9DC30(v29);

  sub_26AF9DC6C(v31);
  v35 = swift_getKeyPath();
  v32 = *(v42 + v43[6]);

  v34 = &v56;
  v56 = v32;
  sub_26AF9DD7C();
  sub_26B079430();
  sub_26AF9DEAC();

  sub_26AF9DED8(v36);
  v40 = swift_getKeyPath();
  v37 = *(v42 + v43[5]);

  v39 = &v55;
  v55 = v37;
  sub_26AF9E038();
  sub_26B079430();
  sub_26AEECDD4();

  sub_26AF9E168(v41);
  v47 = swift_getKeyPath();
  v44 = *(v42 + v43[7]);

  v46 = &v54;
  v54 = v44;
  sub_26AF9E300();
  sub_26B079430();
  sub_26AF3ED48();

  sub_26AF9E430(v48);
  v51 = sub_26AF9E5D0();
  sub_26AE9463C(v52, v50, v53);
  sub_26AF9E700(v52);
  sub_26AF9E8D8(v53, v52);
  sub_26AE94B4C(v52, v50, v49);
  sub_26AF9E700(v52);
  return sub_26AF9E700(v53);
}

uint64_t sub_26AF9CF78(uint64_t a1)
{
  v5 = a1;
  v6 = sub_26AF9F320;
  v12 = 0;
  v10 = sub_26B079120();
  v7 = *(v10 - 8);
  v8 = v10 - 8;
  v4 = (*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v10);
  v9 = &v3 - v4;
  v12 = a1;
  sub_26AF9C610(&v3 - v4);
  v11 = v5;
  sub_26B079110();
  return (*(v7 + 8))(v9, v10);
}

uint64_t sub_26AF9D070(void *a1)
{
  type metadata accessor for SUUIEnvironmentContextModifier();

  MEMORY[0x277D82BE0](a1);
  ReactiveUIManager.presentingViewController.setter(a1);
}

uint64_t sub_26AF9D0EC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v6 = a2;
  v4[1] = a1;
  v11 = sub_26B078D30();
  v9 = *(v11 - 8);
  v10 = v11 - 8;
  v5 = (*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x28223BE20](v11);
  v8 = v4 - v5;
  (*(v9 + 16))(v4 - v5, v2);
  v7 = &v12;
  EnvironmentValues.platform.getter();
  memcpy(v6, v7, 0x28uLL);
  return (*(v9 + 8))(v8, v11);
}

int *sub_26AF9D234@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  swift_getKeyPath();
  sub_26B078A30();
  result = type metadata accessor for SUUIEnvironmentContextModifier();
  *(a4 + result[5]) = a1;
  *(a4 + result[6]) = a2;
  *(a4 + result[7]) = a3;
  return result;
}

uint64_t sub_26AF9D2A4(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DC970);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v1 = sub_26B079120();
    (*(*(v1 - 8) + 8))(a1);
  }

  else
  {
  }

  type metadata accessor for SUUIEnvironmentContextModifier();

  return a1;
}

void *sub_26AF9D384(uint64_t *a1, void *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DC970);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v2 = sub_26B079120();
    (*(*(v2 - 8) + 16))(a2, a1);
  }

  else
  {
    v4 = *a1;

    *a2 = v4;
  }

  swift_storeEnumTagMultiPayload();
  return a2;
}

uint64_t sub_26AF9D458(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DC970);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v1 = sub_26B079120();
    (*(*(v1 - 8) + 8))(a1);
  }

  else
  {
  }

  return a1;
}

void *sub_26AF9D4F4(const void *a1, void *a2)
{
  if (a2 != a1)
  {
    sub_26AF9D5E0(a2);
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DC970);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v2 = sub_26B079120();
      (*(*(v2 - 8) + 32))(a2, a1);
      swift_storeEnumTagMultiPayload();
    }

    else
    {
      memcpy(a2, a1, *(*(v4 - 8) + 64));
    }
  }

  return a2;
}

uint64_t sub_26AF9D5E0(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DC970);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v1 = sub_26B079120();
    (*(*(v1 - 8) + 8))(a1);
  }

  else
  {
  }

  return a1;
}

void *sub_26AF9D67C(uint64_t *a1, void *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DC970);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v2 = sub_26B079120();
    (*(*(v2 - 8) + 16))(a2, a1);
  }

  else
  {
    v11 = *a1;

    *a2 = v11;
  }

  swift_storeEnumTagMultiPayload();
  v6 = type metadata accessor for SUUIEnvironmentContextModifier();
  v4 = v6[5];
  v5 = *(a1 + v4);

  *(a2 + v4) = v5;
  v7 = v6[6];
  v8 = *(a1 + v7);

  *(a2 + v7) = v8;
  v9 = v6[7];
  v10 = *(a1 + v9);

  result = a2;
  *(a2 + v9) = v10;
  return result;
}

uint64_t sub_26AF9D7E4()
{
  v0 = *(*(type metadata accessor for SUUIEnvironmentContextModifier() - 8) + 80);
  v4 = (v0 + 16) & ~v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DC970);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v1 = sub_26B079120();
    (*(*(v1 - 8) + 8))(v3 + v4);
  }

  else
  {
  }

  return swift_deallocObject();
}

char *sub_26AF9D95C(char *a1, char *a2)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DC970);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v2 = sub_26B079120();
    (*(*(v2 - 8) + 32))(a2, a1);
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    memcpy(a2, a1, *(*(v7 - 8) + 64));
  }

  v3 = type metadata accessor for SUUIEnvironmentContextModifier();
  result = a2;
  *&a2[v3[5]] = *&a1[v3[5]];
  *&a2[v3[6]] = *&a1[v3[6]];
  *&a2[v3[7]] = *&a1[v3[7]];
  return result;
}

uint64_t sub_26AF9DA70()
{
  v1 = *(type metadata accessor for SUUIEnvironmentContextModifier() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_26AF9CF78(v2);
}

unint64_t sub_26AF9DAD4()
{
  v2 = qword_2803DD9A0;
  if (!qword_2803DD9A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DD998);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DD9A0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_26AF9DB8C()
{
  v2 = qword_2803DD9A8;
  if (!qword_2803DD9A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DD970);
    sub_26AF9DAD4();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DD9A8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_26AF9DC30(uint64_t a1)
{
  if (*(a1 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return a1;
}

uint64_t sub_26AF9DC6C(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD998);
  (*(*(v1 - 8) + 8))(a1);
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD970) + 36);
  if (*(a1 + v4))
  {
  }

  if (*(a1 + v4 + 16))
  {
  }

  return a1;
}

unint64_t sub_26AF9DD7C()
{
  v2 = qword_2803DD9B0;
  if (!qword_2803DD9B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DD978);
    sub_26AF9DB8C();
    sub_26AF9DE24();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DD9B0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_26AF9DE24()
{
  v2 = qword_2803DD9B8;
  if (!qword_2803DD9B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DD9C0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DD9B8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_26AF9DED8(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD998);
  (*(*(v1 - 8) + 8))(a1);
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD970) + 36);
  if (*(a1 + v5))
  {
  }

  if (*(a1 + v5 + 16))
  {
  }

  v3 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD978) + 36);

  if (*(v3 + 32))
  {
    __swift_destroy_boxed_opaque_existential_1(v3 + 8);
  }

  return a1;
}

unint64_t sub_26AF9E038()
{
  v2 = qword_2803DD9C8;
  if (!qword_2803DD9C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DD980);
    sub_26AF9DD7C();
    sub_26AF9E0E0();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DD9C8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_26AF9E0E0()
{
  v2 = qword_2803DD9D0;
  if (!qword_2803DD9D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DD9D8);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DD9D0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_26AF9E168(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD998);
  (*(*(v1 - 8) + 8))(a1);
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD970) + 36);
  if (*(a1 + v5))
  {
  }

  if (*(a1 + v5 + 16))
  {
  }

  v3 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD978) + 36);

  if (*(v3 + 32))
  {
    __swift_destroy_boxed_opaque_existential_1(v3 + 8);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD980);

  return a1;
}

unint64_t sub_26AF9E300()
{
  v2 = qword_2803DD9E0;
  if (!qword_2803DD9E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DD988);
    sub_26AF9E038();
    sub_26AF9E3A8();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DD9E0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_26AF9E3A8()
{
  v2 = qword_2803DD9E8;
  if (!qword_2803DD9E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DD9F0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DD9E8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_26AF9E430(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD998);
  (*(*(v1 - 8) + 8))(a1);
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD970) + 36);
  if (*(a1 + v5))
  {
  }

  if (*(a1 + v5 + 16))
  {
  }

  v3 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD978) + 36);

  if (*(v3 + 32))
  {
    __swift_destroy_boxed_opaque_existential_1(v3 + 8);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD980);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD988);

  return a1;
}

unint64_t sub_26AF9E5D0()
{
  v2 = qword_2803DD9F8;
  if (!qword_2803DD9F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DD990);
    sub_26AF9E300();
    sub_26AF9E678();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DD9F8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_26AF9E678()
{
  v2 = qword_2803DDA00;
  if (!qword_2803DDA00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DDA08);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DDA00);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_26AF9E700(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD998);
  (*(*(v1 - 8) + 8))(a1);
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD970) + 36);
  if (*(a1 + v5))
  {
  }

  if (*(a1 + v5 + 16))
  {
  }

  v3 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD978) + 36);

  if (*(v3 + 32))
  {
    __swift_destroy_boxed_opaque_existential_1(v3 + 8);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD980);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD988);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD990);

  return a1;
}

uint64_t sub_26AF9E8D8(uint64_t a1, uint64_t a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD998);
  (*(*(v2 - 8) + 16))(a2, a1);
  v35 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD970) + 36);
  if (*(a1 + v35))
  {
    v31 = *(a1 + v35);
    v32 = *(a1 + v35 + 8);

    v3 = (a2 + v35);
    *v3 = v31;
    v3[1] = v32;
  }

  else
  {
    *(a2 + v35) = *(a1 + v35);
  }

  v29 = a2 + v35;
  v30 = a1 + v35;
  if (*(a1 + v35 + 16))
  {
    v27 = *(v30 + 16);
    v28 = *(a1 + v35 + 24);

    *(v29 + 16) = v27;
    *(a2 + v35 + 24) = v28;
  }

  else
  {
    *(v29 + 16) = *(v30 + 16);
  }

  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD978);
  v23 = (a2 + *(v4 + 36));
  v24 = (a1 + *(v4 + 36));
  v22 = *v24;

  *v23 = v22;
  v25 = v23 + 1;
  v26 = v24 + 1;
  if (v24[4])
  {
    v5 = v24[4];
    v23[4] = v5;
    v23[5] = v24[5];
    (**(v5 - 8))(v25, v26);
  }

  else
  {
    memcpy(v25, v26, 0x28uLL);
  }

  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD980);
  v12 = (a2 + *(v6 + 36));
  v11 = (a1 + *(v6 + 36));
  v10 = *v11;

  *v12 = v10;
  v13 = v11[1];

  v12[1] = v13;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD988);
  v16 = (a2 + *(v7 + 36));
  v15 = (a1 + *(v7 + 36));
  v14 = *v15;

  *v16 = v14;
  v17 = v15[1];

  v16[1] = v17;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD990);
  v20 = (a2 + *(v8 + 36));
  v19 = (a1 + *(v8 + 36));
  v18 = *v19;

  *v20 = v18;
  v21 = v19[1];

  result = a2;
  v20[1] = v21;
  return result;
}

uint64_t sub_26AF9ED30(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD968);
  if (a2 == *(*(v9 - 8) + 84))
  {
    return (*(*(v9 - 8) + 48))(a1, a2, v9);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v4 = -1;
    if (*(a1 + *(a3 + 20)) < 0x100000000uLL)
    {
      v4 = *(a1 + *(a3 + 20));
    }

    return (v4 + 1);
  }

  else
  {
    __break(1u);
  }

  return v5;
}

uint64_t sub_26AF9EE7C(uint64_t a1, unsigned int a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD968);
  if (a3 == *(*(result - 8) + 84))
  {
    return (*(*(result - 8) + 56))(a1, a2, a2, result);
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 20)) = a2 - 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_26AF9EF78()
{
  v5 = sub_26AF9F0B0();
  if (v0 <= 0x3F)
  {
    v5 = type metadata accessor for ReactiveUIManager();
    if (v1 <= 0x3F)
    {
      v5 = sub_26B078530();
      if (v2 <= 0x3F)
      {
        v5 = sub_26AF9F14C();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return v5;
}

uint64_t sub_26AF9F0B0()
{
  v4 = qword_2803DDA20;
  if (!qword_2803DDA20)
  {
    sub_26B079120();
    v3 = sub_26B078A20();
    v4 = v3;
    if (!v0)
    {
      v1 = v3;
      atomic_store(v3, &qword_2803DDA20);
      return v1;
    }
  }

  return v4;
}

uint64_t sub_26AF9F14C()
{
  v4 = qword_2803DDA28;
  if (!qword_2803DDA28)
  {
    type metadata accessor for ReactiveAnalyticsReporter();
    v3 = sub_26B07A430();
    v4 = v3;
    if (!v0)
    {
      v1 = v3;
      atomic_store(v3, &qword_2803DDA28);
      return v1;
    }
  }

  return v4;
}

uint64_t sub_26AF9F200()
{
  type metadata accessor for SUUIEnvironmentContextModifier();
  sub_26B078BF0();
  sub_26AF070EC();
  return swift_getWitnessTable();
}

void *sub_26AF9F28C(void *a1, void *a2)
{
  if (a1[3])
  {
    v2 = a1[3];
    a2[3] = v2;
    a2[4] = a1[4];
    (**(v2 - 8))();
  }

  else
  {
    memcpy(a2, a1, 0x28uLL);
  }

  return a2;
}

uint64_t dispatch thunk of DeepLinkProviding.handleDeepLink(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = v3;
  *(v3 + 16) = v3;
  v9 = (*(a3 + 8) + **(a3 + 8));
  v4 = swift_task_alloc();
  *(v6 + 24) = v4;
  *v4 = *(v6 + 16);
  v4[1] = sub_26AF9F47C;

  return v9(a1, a2, a3);
}

uint64_t sub_26AF9F47C()
{
  v3 = *v0;
  *(v3 + 16) = *v0;

  v1 = *(*(v3 + 16) + 8);

  return v1();
}

uint64_t AlternateUpdateContentView.init(presenting:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v17 = a2;
  v16 = a1;
  v22 = 0;
  v21 = 0;
  updated = type metadata accessor for AlternateUpdateContentView();
  v11 = (*(*(updated - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v16);
  v18 = (&v10 - v11);
  v22 = &v10 - v11;
  v21 = v2;
  swift_getKeyPath();
  sub_26B078A30();
  v12 = *(updated + 20);
  swift_getKeyPath();
  sub_26B078A30();
  v3 = updated;
  v4 = v20;
  v5 = v18 + v12;
  *v5 = v19;
  v13 = 1;
  v5[8] = v4 & 1;
  v14 = *(v3 + 24);
  v6 = sub_26AF9FAF0();
  v7 = v18 + v14;
  *v7 = v6 & v13;
  *(v7 + 1) = v8;
  sub_26AF9FE1C();
  sub_26AFA4748(v18, v17);
  return sub_26AF7D8E8(v18);
}

uint64_t type metadata accessor for AlternateUpdateContentView()
{
  v1 = qword_2803DDA98;
  if (!qword_2803DDA98)
  {
    return swift_getSingletonMetadata();
  }

  return v1;
}

uint64_t sub_26AF9F7C0@<X0>(uint64_t a1@<X8>)
{
  v5 = a1;
  v8 = 0;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DEB80);
  v4 = (*(*(v6 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v3);
  v7 = &v3 - v4;
  v8 = v1;
  sub_26AE9181C(v1, (&v3 - v4));
  sub_26B078A10();
  return sub_26AE918F0(v7);
}

uint64_t sub_26AF9F8BC(uint64_t a1)
{
  v6 = a1;
  v8 = 0;
  v7 = 0;
  v4[0] = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DEB80) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v6);
  v5 = v4 - v4[0];
  v8 = v2;
  v7 = v1;
  sub_26AE9181C(v2, (v4 - v4[0]));
  sub_26AE91A90(v5, v4[1]);
  return sub_26AE918F0(v6);
}

uint64_t sub_26AF9F974()
{
  type metadata accessor for AlternateUpdateContentView();

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DB510);
  sub_26B078A10();

  return v1;
}

uint64_t sub_26AF9FA10()
{
  v2 = *(v0 + *(type metadata accessor for AlternateUpdateContentView() + 20));

  return v2;
}

uint64_t sub_26AF9FA64(uint64_t a1, char a2)
{

  v3 = v2 + *(type metadata accessor for AlternateUpdateContentView() + 20);
  *v3 = a1;
  *(v3 + 8) = a2 & 1;
}

uint64_t sub_26AF9FB44()
{
  type metadata accessor for AlternateUpdateContentView();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DC9D0);
  sub_26B0798B0();

  return v1 & 1;
}

uint64_t sub_26AF9FBDC()
{
  type metadata accessor for AlternateUpdateContentView();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DC9D0);
  sub_26B0798C0();
  sub_26AE91DC8();
}

uint64_t sub_26AF9FCA0()
{
  type metadata accessor for AlternateUpdateContentView();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DC9D0);
  sub_26B0798D0();

  return v1;
}

uint64_t sub_26AF9FD50()
{
  v2 = *(v0 + *(type metadata accessor for AlternateUpdateContentView() + 24));

  return v2 & 1;
}

uint64_t sub_26AF9FDA4(char a1, uint64_t a2)
{

  v3 = v2 + *(type metadata accessor for AlternateUpdateContentView() + 24);
  *v3 = a1;
  *(v3 + 8) = a2;
}

uint64_t AlternateUpdateContentView.presentedDescriptor.getter()
{
  v13 = 0;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDE20);
  v7 = *(v10 - 8);
  v8 = v10 - 8;
  v5 = (*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v10);
  v0 = &v4 - v5;
  v9 = &v4 - v5;
  v13 = v1;
  updated = type metadata accessor for AlternateUpdateContentView();
  (*(v7 + 16))(v0, v6 + *(updated + 28), v10);
  sub_26B079AD0();
  v11 = v12;
  (*(v7 + 8))(v9, v10);
  return v11;
}

uint64_t sub_26AF9FFB4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v8 = a2;
  v6 = a1;
  v7 = (*(*(type metadata accessor for AlternateUpdateContentView() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v6);
  v9 = &v6 - v7;
  sub_26AFA4748(v2, (&v6 - v7));
  updated = AlternateUpdateContentView.presentedDescriptor.getter();
  v4 = v9;
  *v8 = updated;
  return sub_26AF7D8E8(v4);
}

uint64_t AlternateUpdateContentView.presentedDescriptor.setter()
{

  type metadata accessor for AlternateUpdateContentView();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDE20);
  sub_26B079AE0();
}

void (*AlternateUpdateContentView.presentedDescriptor.modify(void *a1))(void **a1)
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  type metadata accessor for AlternateUpdateContentView();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDE20);
  v2[4] = sub_26B079AC0();
  return sub_26AFA01E0;
}

void sub_26AFA01E0(void **a1)
{
  v1 = *a1;
  v1[4](v1, 0);
  free(v1);
}

uint64_t AlternateUpdateContentView.$presentedDescriptor.getter@<X0>(uint64_t a1@<X8>)
{
  v5[2] = a1;
  v10 = 0;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDE20);
  v6 = *(v9 - 8);
  v7 = v9 - 8;
  v5[0] = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v9);
  v1 = v5 - v5[0];
  v8 = v5 - v5[0];
  v10 = v2;
  updated = type metadata accessor for AlternateUpdateContentView();
  (*(v6 + 16))(v1, v5[1] + *(updated + 28), v9);
  sub_26B079AF0();
  return (*(v6 + 8))(v8, v9);
}

uint64_t sub_26AFA0380@<X0>(uint64_t a1@<X8>)
{
  v4 = *(type metadata accessor for AlternateUpdateContentView() + 28);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDE20);
  return (*(*(v2 - 8) + 16))(a1, v1 + v4);
}

uint64_t sub_26AFA0404(uint64_t a1)
{
  v11 = a1;
  v13 = 0;
  v12 = 0;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDE20);
  v8 = *(v10 - 8);
  v9 = v10 - 8;
  v6 = (*(v8 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x28223BE20](v10);
  v7 = &v6 - v6;
  v13 = v3;
  v12 = v1;
  (*(v8 + 16))(v2);
  updated = type metadata accessor for AlternateUpdateContentView();
  (*(v8 + 40))(v1 + *(updated + 28), v7, v10);
  return (*(v8 + 8))(v11, v10);
}

uint64_t AlternateUpdateContentView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v22 = a1;
  v41 = sub_26AFA4C5C;
  v23 = MEMORY[0x277CDE888];
  v108 = 0;
  v107 = 0;
  v62 = 0;
  updated = type metadata accessor for AlternateUpdateContentView();
  v24 = *(updated - 8);
  v37 = v24;
  v38 = *(v24 + 64);
  v25 = (v38 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](updated);
  v40 = v20 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDA30);
  v27 = *(v26 - 8);
  v28 = v26 - 8;
  v29 = (*(v27 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v26);
  v66 = v20 - v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDA38);
  v31 = (*(*(v30 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v69);
  v32 = v20 - v31;
  v33 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v3);
  v34 = v20 - v33;
  v35 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v5);
  v36 = v20 - v35;
  v108 = v20 - v35;
  v107 = v6;
  sub_26AFA4748(v6, v7);
  v8 = *(v37 + 80);
  v58 = 16;
  v39 = (v8 + 16) & ~v8;
  v42 = swift_allocObject();
  sub_26AFA4AE0(v40, (v42 + v39));
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDA40);
  v44 = sub_26AFA4CDC();
  v9 = sub_26AF44F30();
  v65 = 1;
  AdaptiveScrollView.init(enabledWhen:content:)(v9 & 1, v41, v42, v43, v99);
  v50 = v97;
  v97[0] = v99[0];
  v97[1] = v99[1];
  v98 = v100;
  v10 = [objc_opt_self() systemGroupedBackgroundColor];
  v11 = sub_26B079750();
  v49 = &v96;
  v96 = v11;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDA50);
  v47 = sub_26AFA4D64();
  v46 = MEMORY[0x277CE0F78];
  v48 = MEMORY[0x277CE0F60];
  sub_26AEF8488();
  sub_26B0793C0();
  sub_26AEF8E10();
  sub_26AFA4DEC();
  v54 = v92;
  v92[0] = v101;
  v92[1] = v102;
  v93 = v103;
  v94 = v104;
  v95 = v105;
  v51 = sub_26AF9FB44();
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDA60);
  v53 = sub_26AFA4E18();
  v12 = sub_26AF4DBD4();
  v55 = v106;
  View.visibilityTransition(when:duration:)(v51 & 1, v52, v53, v106, v12);
  sub_26AFA4EC0();
  v56 = __dst;
  v57 = 57;
  memcpy(__dst, v55, 0x39uLL);
  v74 = v91;
  memcpy(v91, __dst, 0x39uLL);
  sub_26B079D00();
  v64 = sub_26B078E10();
  v59 = v13;
  v60 = v14;
  v61 = v15;
  v63 = *sub_26B02D0D0();
  MEMORY[0x277D82BE0](v63);
  v87 = 0;
  v88 = 0;
  v89 = 0;
  v90 = v65 & 1;
  v83 = sub_26B0792C0();
  v84 = v16;
  v85 = v17;
  v86 = v18;
  v70 = v83;
  v71 = v16;
  v72 = v17;
  v73 = v18;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDA70);
  v68 = sub_26AFA4EF8();
  v79 = v70;
  v80 = v71;
  v81 = v72 & 1 & v65;
  v82 = v73;
  sub_26B0794E0();
  sub_26AE95AFC(v70, v71, v72 & 1);

  sub_26AFA5044();
  v75 = sub_26AF9F974();
  v76 = ReactiveUIManager.isPreferredUpdatePromotedAsAlternate()();

  if (v76)
  {
    v21 = 11;
  }

  else
  {
    v21 = 10;
  }

  v20[0] = v21;
  v77 = v67;
  v78 = v68;
  swift_getOpaqueTypeConformance2();
  View.analyticsForNavigation(_:)(v20[0], v26);
  (*(v27 + 8))(v66, v26);
  v20[1] = sub_26AFA5088();
  sub_26AE9463C(v34, v30, v36);
  sub_26AFA5180(v34);
  sub_26AFA521C(v36, v32);
  sub_26AE94B4C(v32, v30, v22);
  sub_26AFA5180(v32);
  return sub_26AFA5180(v36);
}

uint64_t sub_26AFA0C30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v39 = a3;
  v23 = a2;
  v31 = 0;
  v13 = sub_26AFA6684;
  v29 = MEMORY[0x277CDEB28];
  v30 = nullsub_58;
  v51 = 0;
  v50 = 0;
  v49 = 0;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDAA8);
  v8 = (*(*(v17 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v17);
  v22 = &v8 - v8;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDAB0);
  v9 = (*(*(v27 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v27);
  v24 = &v8 - v9;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDAB8);
  v35 = *(v38 - 8);
  v36 = v38 - 8;
  v10 = (*(v35 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v38);
  v37 = &v8 - v10;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDA40);
  v11 = (*(*(v40 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v40);
  v42 = &v8 - v11;
  v12 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v8 - v11);
  v43 = &v8 - v12;
  v51 = &v8 - v12;
  v50 = a1;
  v49 = v5;
  v14 = &v44;
  v45 = v5;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDAC0);
  v16 = sub_26AFA668C();
  sub_26AF4D96C();
  v18 = 0;
  v20 = 0;
  sub_26B079980();
  sub_26B078AE0();
  v19 = v6;
  v21 = sub_26AFA6714();
  sub_26AEAABD4();
  sub_26B079600();
  sub_26AFA679C(v22);
  v28 = sub_26AFA68F4();
  sub_26B079550();
  sub_26AFA6998(v24);
  v25 = sub_26AF9F974();
  v26 = *(v25 + OBJC_IVAR____TtC19SoftwareUpdateUIKit17ReactiveUIManager_refreshPublisher);

  v34 = &v48;
  v48 = v26;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DCF10);
  v46 = v27;
  v47 = v28;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_26AF6863C();
  sub_26B079720();

  (*(v35 + 8))(v37, v38);
  v41 = sub_26AFA4CDC();
  sub_26AE9463C(v42, v40, v43);
  sub_26AFA6AF0(v42);
  sub_26AFA6B9C(v43, v42);
  sub_26AE94B4C(v42, v40, v39);
  sub_26AFA6AF0(v42);
  return sub_26AFA6AF0(v43);
}

uint64_t sub_26AFA1170@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v64 = a2;
  v45 = a1;
  v18 = sub_26AFA6C9C;
  v38 = MEMORY[0x277CDE800];
  v53 = sub_26AFA7084;
  v82 = 0;
  v81 = 0;
  v68 = __b;
  v58 = 73;
  v40 = 0;
  memset(__b, 0, 0x49uLL);
  v28 = 0;
  v8 = *(type metadata accessor for AlternateUpdateContentView() - 8);
  v46 = v8;
  v47 = *(v8 + 64);
  v9 = (v47 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0);
  v49 = &v8 - v9;
  v30 = sub_26B078FF0();
  v20 = *(v30 - 8);
  v21 = v30 - 8;
  v10 = (*(v20 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v30);
  v29 = &v8 - v10;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDAF8);
  v22 = *(v25 - 8);
  v23 = v25 - 8;
  v11 = (*(v22 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v25);
  v24 = &v8 - v11;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDB00);
  v33 = *(v36 - 8);
  v34 = v36 - 8;
  v12 = (*(v33 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v36);
  v35 = &v8 - v12;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDAE0);
  v41 = *(v44 - 8);
  v42 = v44 - 8;
  v13 = (*(v41 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v44);
  v43 = &v8 - v13;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDB08);
  v14 = (*(*(v60 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v45);
  v67 = &v8 - v14;
  v15 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v3);
  v69 = &v8 - v15;
  v82 = &v8 - v15;
  v81 = v4;
  v16 = v70;
  v70[2] = v4;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DD0C0);
  sub_26AF8AC30();
  sub_26B079240();
  v19 = sub_26B079190();
  v26 = sub_26AFA6CA4();
  sub_26AF0CF00();
  MEMORY[0x26D66C680](v19, v28, v40, v29, v25, v26);
  v32 = *(v20 + 8);
  v31 = v20 + 8;
  v32(v29, v30);
  (*(v22 + 8))(v24, v25);
  v27 = sub_26B079180();
  v79 = v25;
  v80 = v26;
  v39 = 1;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_26AF0CF00();
  MEMORY[0x26D66C680](v27, v28, v40, v29, v36, OpaqueTypeConformance2);
  v32(v29, v30);
  (*(v33 + 8))(v35, v36);
  v77 = v36;
  v78 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  sub_26B079700();
  (*(v41 + 8))(v43, v44);
  v62 = sub_26AFA6D2C();
  sub_26AE9463C(v67, v60, v69);
  sub_26AFA6E5C(v67);
  updated = AlternateUpdateContentView.presentedDescriptor.getter();
  v50 = sub_26AF9FCA0();
  v51 = v5;
  v52 = v6;
  sub_26AFA4748(v45, v49);
  v48 = (*(v46 + 80) + 16) & ~*(v46 + 80);
  v54 = swift_allocObject();
  sub_26AFA4AE0(v49, (v54 + v48));
  v56 = v75;
  AvailableUpdateView.init(presenting:isContentReady:onUpdateRequested:)(updated, v50, v51, v52 & 1, v53, v54, v75);
  v57 = __dst;
  memcpy(__dst, v56, v58);
  v59 = v74;
  memcpy(v74, v57, v58);
  v63 = sub_26AF71CC0();
  v61 = &type metadata for AvailableUpdateView;
  sub_26AE9463C(v59, &type metadata for AvailableUpdateView, v68);
  sub_26AF78E54(v59);
  sub_26AFA70FC(v69, v67);
  v65 = v73;
  v73[0] = v67;
  v66 = v72;
  sub_26AF78EE4(v68, v72);
  v73[1] = v66;
  v71[0] = v60;
  v71[1] = v61;
  v70[4] = v62;
  v70[5] = v63;
  sub_26AFD49C4(v65, 2uLL, v71, v64);
  sub_26AF78E54(v66);
  sub_26AFA6E5C(v67);
  sub_26AF78E54(v68);
  return sub_26AFA6E5C(v69);
}

uint64_t sub_26AFA18B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v30 = a2;
  v31 = a1;
  v32 = MEMORY[0x277CE1A90];
  v33 = MEMORY[0x277CE1A88];
  v85 = 0;
  v84 = 0;
  v83 = 0;
  v69 = 0;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD820);
  v35 = *(v34 - 8);
  v36 = v34 - 8;
  v37 = (*(v35 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v34);
  v38 = v11 - v37;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DD138);
  v40 = *(v39 - 8);
  v41 = v39 - 8;
  v42 = (*(v40 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v39);
  v43 = v11 - v42;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD828);
  v45 = (*(*(v44 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v44);
  v46 = v11 - v45;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD130);
  v48 = *(v47 - 8);
  v49 = v47 - 8;
  v50 = (*(v48 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v47);
  v51 = v11 - v50;
  v52 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v11 - v50);
  v53 = v11 - v52;
  v54 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v11 - v52);
  v55 = v11 - v54;
  v85 = v11 - v54;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DD0C0);
  v57 = (*(*(v56 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v56);
  v58 = v11 - v57;
  v59 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v11 - v57);
  v60 = v11 - v59;
  v61 = (v6 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v11 - v59);
  v62 = v11 - v61;
  v84 = v11 - v61;
  v83 = a1;
  v63 = sub_26AF9F974();
  v64 = ReactiveUIManager.currentState.getter();

  v67 = &v82;
  v82 = v64;
  v65 = &v81;
  v81 = 4;
  v66 = type metadata accessor for SUUIStatefulUIState();
  v68 = sub_26AE9BA40();
  if (sub_26B07A790())
  {
    v29 = 1;
  }

  else
  {
    v27 = sub_26AF9F974();
    v28 = ReactiveUIManager.currentState.getter();

    v80[10] = v28;
    v80[9] = 3;
    v29 = sub_26B07A790();
  }

  if (v29)
  {
    v13 = *sub_26AF90E54();
    MEMORY[0x277D82BE0](v13);
    v14 = v80;
    sub_26AF91B10(v80);
    MEMORY[0x277D82BD8](v13);
    sub_26AF9F5A4();
    sub_26B078620();
    v7 = sub_26AF9F5C0();
    v15 = &v79;
    v79 = v7;
    v17 = sub_26AF8A83C();
    v16 = MEMORY[0x277CE0F78];
    v18 = MEMORY[0x277CE0F60];
    sub_26B079350();
    sub_26AEF8E10();
    (*(v35 + 8))(v38, v34);
    v75 = v34;
    v76 = v16;
    v77 = v17;
    v78 = v18;
    v23 = 1;
    swift_getOpaqueTypeConformance2();
    sub_26B079660();
    (*(v40 + 8))(v43, v39);
    v8 = sub_26AF9F5D8();
    v19 = &v74;
    v74 = v8;
    v21 = sub_26AF8A730();
    v20 = MEMORY[0x277CE04F8];
    v22 = MEMORY[0x277CE04E8];
    sub_26B079360();
    sub_26AFA74BC(v46);
    v70 = v44;
    v71 = v20;
    v72 = v21;
    v73 = v22;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    sub_26AE9463C(v53, v47, v55);
    v25 = *(v48 + 8);
    v26 = v48 + 8;
    v25(v53, v47);
    v69 = v53;
    v12 = *(v48 + 16);
    v11[1] = v48 + 16;
    v12(v51, v55, v47);
    sub_26AE94B4C(v51, v47, v53);
    v25(v51, v47);
    v12(v58, v53, v47);
    (*(v48 + 56))(v58, 0, 1, v47);
    sub_26AF09CCC(v58, v47, v60);
    sub_26AFA71A0(v58);
    sub_26AFA7254(v60, v62);
    v25(v53, v47);
    v25(v55, v47);
  }

  else
  {
    (*(v48 + 56))(v58, 1, 1, v47);
    v9 = sub_26AF8A730();
    v80[5] = v44;
    v80[6] = MEMORY[0x277CE04F8];
    v80[7] = v9;
    v80[8] = MEMORY[0x277CE04E8];
    swift_getOpaqueTypeConformance2();
    sub_26AF09CCC(v58, v47, v60);
    sub_26AFA71A0(v58);
    sub_26AFA7254(v60, v62);
  }

  sub_26AFA7388(v62, v60);
  sub_26AF8AC30();
  sub_26AE94B4C(v60, v56, v30);
  sub_26AFA71A0(v60);
  return sub_26AFA71A0(v62);
}

uint64_t sub_26AFA23DC(uint64_t *a1, uint64_t a2)
{
  v7 = 0;
  v8 = 0;
  v6 = 0;
  v2 = *(a1 + 8);
  v7 = *a1;
  v8 = v2;
  v6 = a2;
  v4 = v7;
  v5 = v2;
  return sub_26AFA2438(&v4);
}

uint64_t sub_26AFA2438(uint64_t a1)
{
  v225 = a1;
  v181 = sub_26AFA54BC;
  v182 = sub_26AFA55CC;
  v183 = sub_26AFA5618;
  v184 = sub_26AFA4660;
  v185 = sub_26AFA5718;
  v186 = sub_26AFA5550;
  v187 = sub_26AFA5584;
  v188 = sub_26AFA5664;
  v189 = sub_26AFA569C;
  v190 = sub_26AFA56D0;
  v191 = sub_26AFA5764;
  v192 = sub_26AFA5930;
  v193 = sub_26AFA5A3C;
  v194 = sub_26AFA5A88;
  v195 = sub_26AFA4614;
  v196 = sub_26AFA5B88;
  v197 = sub_26AFA59C0;
  v198 = sub_26AFA59F4;
  v199 = sub_26AFA5AD4;
  v200 = sub_26AFA5B0C;
  v201 = sub_26AFA5B40;
  v202 = sub_26AFA5BD4;
  v203 = sub_26AFA5DA0;
  v204 = sub_26AFA5EAC;
  v205 = sub_26AFA5EF8;
  v206 = sub_26AFA45C8;
  v207 = sub_26AFA5FF8;
  v208 = sub_26AFA5E30;
  v209 = sub_26AFA5E64;
  v210 = sub_26AFA5F44;
  v211 = sub_26AFA5F7C;
  v212 = sub_26AFA5FB0;
  v213 = sub_26AFA6044;
  v260 = 0;
  v261 = 0;
  v259 = 0;
  v214 = 0;
  v239 = 0;
  v215 = sub_26B078AD0();
  v216 = *(v215 - 8);
  v217 = v215 - 8;
  v218 = (*(v216 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0);
  v219 = v80 - v218;
  v220 = *(type metadata accessor for AlternateUpdateContentView() - 8);
  v221 = v220;
  v222 = *(v220 + 64);
  v223 = (v222 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v239);
  v224 = v80 - v223;
  v226 = sub_26B078580();
  v227 = *(v226 - 8);
  v228 = v226 - 8;
  v229 = (*(v227 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v225);
  v230 = v80 - v229;
  v231 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v3);
  v232 = v80 - v231;
  v233 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v5);
  v234 = v80 - v233;
  v235 = *v6;
  v236 = *(v6 + 8);
  v260 = v235;
  v261 = v236;
  v259 = v1;
  v237 = sub_26AF9F974();
  v238 = ReactiveUIManager.environmentOptions.getter();

  v258[1] = v238;
  v241 = v258;
  v258[0] = 4;
  v240 = type metadata accessor for SUUIStatefulUIEnvironmentOptions();
  sub_26AE9BB40();
  result = sub_26B07A980();
  if (result)
  {
    v256[1] = v235;
    v257 = v236;
    if (UpdateActionResult.success.getter())
    {
      v178 = sub_26AF9F974();
      v179 = ReactiveUIManager.hasHiddenDescriptors.getter();

      if (v179)
      {
        sub_26B078550();
        sub_26AFA4748(v180, v224);
        v157 = (*(v221 + 80) + 16) & ~*(v221 + 80);
        v165 = 7;
        v158 = swift_allocObject();
        sub_26AFA4AE0(v224, (v158 + v157));
        v176 = sub_26B078570();
        v177 = sub_26B07A2A0();
        v162 = 17;
        v167 = swift_allocObject();
        v161 = 32;
        *(v167 + 16) = 32;
        v168 = swift_allocObject();
        v163 = 8;
        *(v168 + 16) = 8;
        v164 = 32;
        v8 = swift_allocObject();
        v9 = v158;
        v159 = v8;
        *(v8 + 16) = v203;
        *(v8 + 24) = v9;
        v10 = swift_allocObject();
        v11 = v159;
        v160 = v10;
        *(v10 + 16) = v204;
        *(v10 + 24) = v11;
        v12 = swift_allocObject();
        v13 = v160;
        v169 = v12;
        *(v12 + 16) = v205;
        *(v12 + 24) = v13;
        v170 = swift_allocObject();
        *(v170 + 16) = v161;
        v171 = swift_allocObject();
        *(v171 + 16) = v163;
        v14 = swift_allocObject();
        v166 = v14;
        *(v14 + 16) = v206;
        *(v14 + 24) = 0;
        v15 = swift_allocObject();
        v16 = v166;
        v173 = v15;
        *(v15 + 16) = v207;
        *(v15 + 24) = v16;
        v175 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DBB00);
        v172 = sub_26B07A760();
        v174 = v17;

        v18 = v167;
        v19 = v174;
        *v174 = v208;
        v19[1] = v18;

        v20 = v168;
        v21 = v174;
        v174[2] = v209;
        v21[3] = v20;

        v22 = v169;
        v23 = v174;
        v174[4] = v210;
        v23[5] = v22;

        v24 = v170;
        v25 = v174;
        v174[6] = v211;
        v25[7] = v24;

        v26 = v171;
        v27 = v174;
        v174[8] = v212;
        v27[9] = v26;

        v28 = v173;
        v29 = v174;
        v174[10] = v213;
        v29[11] = v28;
        sub_26AEA3B2C();

        if (os_log_type_enabled(v176, v177))
        {
          v30 = v214;
          v149 = sub_26B07A420();
          v148 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DCED0);
          v150 = sub_26AEA3B70(0);
          v151 = sub_26AEA3B70(2);
          v153 = &v246;
          v246 = v149;
          v154 = &v245;
          v245 = v150;
          v155 = &v244;
          v244 = v151;
          v152 = 2;
          sub_26AEA3BC4(2, &v246);
          sub_26AEA3BC4(v152, v153);
          v242 = v208;
          v243 = v167;
          sub_26AEA3BD8(&v242, v153, v154, v155);
          v156 = v30;
          if (v30)
          {

            __break(1u);
          }

          else
          {
            v242 = v209;
            v243 = v168;
            sub_26AEA3BD8(&v242, &v246, &v245, &v244);
            v147 = 0;
            v242 = v210;
            v243 = v169;
            sub_26AEA3BD8(&v242, &v246, &v245, &v244);
            v146 = 0;
            v242 = v211;
            v243 = v170;
            sub_26AEA3BD8(&v242, &v246, &v245, &v244);
            v145 = 0;
            v242 = v212;
            v243 = v171;
            sub_26AEA3BD8(&v242, &v246, &v245, &v244);
            v144 = 0;
            v242 = v213;
            v243 = v173;
            sub_26AEA3BD8(&v242, &v246, &v245, &v244);
            _os_log_impl(&dword_26AE88000, v176, v177, "%s.%s: Alternate update: update initiated, dismissing slow roll screen.", v149, 0x16u);
            sub_26AEA3C24(v150);
            sub_26AEA3C24(v151);
            sub_26B07A400();
          }
        }

        else
        {
        }

        v31 = MEMORY[0x277D82BD8](v176);
        (*(v227 + 8))(v234, v226, v31);
        sub_26AF9F7C0(v219);
        sub_26B078AC0();
        return (*(v216 + 8))(v219, v215);
      }

      else
      {
        sub_26B078550();
        sub_26AFA4748(v180, v224);
        v123 = (*(v221 + 80) + 16) & ~*(v221 + 80);
        v131 = 7;
        v124 = swift_allocObject();
        sub_26AFA4AE0(v224, (v124 + v123));
        v142 = sub_26B078570();
        v143 = sub_26B07A2A0();
        v128 = 17;
        v133 = swift_allocObject();
        v127 = 32;
        *(v133 + 16) = 32;
        v134 = swift_allocObject();
        v129 = 8;
        *(v134 + 16) = 8;
        v130 = 32;
        v32 = swift_allocObject();
        v33 = v124;
        v125 = v32;
        *(v32 + 16) = v192;
        *(v32 + 24) = v33;
        v34 = swift_allocObject();
        v35 = v125;
        v126 = v34;
        *(v34 + 16) = v193;
        *(v34 + 24) = v35;
        v36 = swift_allocObject();
        v37 = v126;
        v135 = v36;
        *(v36 + 16) = v194;
        *(v36 + 24) = v37;
        v136 = swift_allocObject();
        *(v136 + 16) = v127;
        v137 = swift_allocObject();
        *(v137 + 16) = v129;
        v38 = swift_allocObject();
        v132 = v38;
        *(v38 + 16) = v195;
        *(v38 + 24) = 0;
        v39 = swift_allocObject();
        v40 = v132;
        v139 = v39;
        *(v39 + 16) = v196;
        *(v39 + 24) = v40;
        v141 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DBB00);
        v138 = sub_26B07A760();
        v140 = v41;

        v42 = v133;
        v43 = v140;
        *v140 = v197;
        v43[1] = v42;

        v44 = v134;
        v45 = v140;
        v140[2] = v198;
        v45[3] = v44;

        v46 = v135;
        v47 = v140;
        v140[4] = v199;
        v47[5] = v46;

        v48 = v136;
        v49 = v140;
        v140[6] = v200;
        v49[7] = v48;

        v50 = v137;
        v51 = v140;
        v140[8] = v201;
        v51[9] = v50;

        v52 = v139;
        v53 = v140;
        v140[10] = v202;
        v53[11] = v52;
        sub_26AEA3B2C();

        if (os_log_type_enabled(v142, v143))
        {
          v54 = v214;
          v115 = sub_26B07A420();
          v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DCED0);
          v116 = sub_26AEA3B70(0);
          v117 = sub_26AEA3B70(2);
          v119 = &v251;
          v251 = v115;
          v120 = &v250;
          v250 = v116;
          v121 = &v249;
          v249 = v117;
          v118 = 2;
          sub_26AEA3BC4(2, &v251);
          sub_26AEA3BC4(v118, v119);
          v247 = v197;
          v248 = v133;
          sub_26AEA3BD8(&v247, v119, v120, v121);
          v122 = v54;
          if (v54)
          {

            __break(1u);
          }

          else
          {
            v247 = v198;
            v248 = v134;
            sub_26AEA3BD8(&v247, &v251, &v250, &v249);
            v113 = 0;
            v247 = v199;
            v248 = v135;
            sub_26AEA3BD8(&v247, &v251, &v250, &v249);
            v112 = 0;
            v247 = v200;
            v248 = v136;
            sub_26AEA3BD8(&v247, &v251, &v250, &v249);
            v111 = 0;
            v247 = v201;
            v248 = v137;
            sub_26AEA3BD8(&v247, &v251, &v250, &v249);
            v110 = 0;
            v247 = v202;
            v248 = v139;
            sub_26AEA3BD8(&v247, &v251, &v250, &v249);
            _os_log_impl(&dword_26AE88000, v142, v143, "%s.%s: Alternate update: update initiated but the alternate descriptor wasn't marked as hidden. Skipping on dismissal.", v115, 0x16u);
            sub_26AEA3C24(v116);
            sub_26AEA3C24(v117);
            sub_26B07A400();
          }
        }

        else
        {
        }

        v55 = MEMORY[0x277D82BD8](v142);
        return (*(v227 + 8))(v232, v226, v55);
      }
    }

    else
    {
      sub_26B078550();
      sub_26AFA4748(v180, v224);
      v89 = (*(v221 + 80) + 16) & ~*(v221 + 80);
      v97 = 7;
      v90 = swift_allocObject();
      sub_26AFA4AE0(v224, (v90 + v89));
      v108 = sub_26B078570();
      v109 = sub_26B07A2A0();
      v94 = 17;
      v99 = swift_allocObject();
      v93 = 32;
      *(v99 + 16) = 32;
      v100 = swift_allocObject();
      v95 = 8;
      *(v100 + 16) = 8;
      v96 = 32;
      v56 = swift_allocObject();
      v57 = v90;
      v91 = v56;
      *(v56 + 16) = v181;
      *(v56 + 24) = v57;
      v58 = swift_allocObject();
      v59 = v91;
      v92 = v58;
      *(v58 + 16) = v182;
      *(v58 + 24) = v59;
      v60 = swift_allocObject();
      v61 = v92;
      v101 = v60;
      *(v60 + 16) = v183;
      *(v60 + 24) = v61;
      v102 = swift_allocObject();
      *(v102 + 16) = v93;
      v103 = swift_allocObject();
      *(v103 + 16) = v95;
      v62 = swift_allocObject();
      v98 = v62;
      *(v62 + 16) = v184;
      *(v62 + 24) = 0;
      v63 = swift_allocObject();
      v64 = v98;
      v105 = v63;
      *(v63 + 16) = v185;
      *(v63 + 24) = v64;
      v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DBB00);
      v104 = sub_26B07A760();
      v106 = v65;

      v66 = v99;
      v67 = v106;
      *v106 = v186;
      v67[1] = v66;

      v68 = v100;
      v69 = v106;
      v106[2] = v187;
      v69[3] = v68;

      v70 = v101;
      v71 = v106;
      v106[4] = v188;
      v71[5] = v70;

      v72 = v102;
      v73 = v106;
      v106[6] = v189;
      v73[7] = v72;

      v74 = v103;
      v75 = v106;
      v106[8] = v190;
      v75[9] = v74;

      v76 = v105;
      v77 = v106;
      v106[10] = v191;
      v77[11] = v76;
      sub_26AEA3B2C();

      if (os_log_type_enabled(v108, v109))
      {
        v78 = v214;
        v81 = sub_26B07A420();
        v80[5] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DCED0);
        v82 = sub_26AEA3B70(0);
        v83 = sub_26AEA3B70(2);
        v85 = v256;
        v256[0] = v81;
        v86 = &v255;
        v255 = v82;
        v87 = &v254;
        v254 = v83;
        v84 = 2;
        sub_26AEA3BC4(2, v256);
        sub_26AEA3BC4(v84, v85);
        v252 = v186;
        v253 = v99;
        sub_26AEA3BD8(&v252, v85, v86, v87);
        v88 = v78;
        if (v78)
        {

          __break(1u);
        }

        else
        {
          v252 = v187;
          v253 = v100;
          sub_26AEA3BD8(&v252, v256, &v255, &v254);
          v80[4] = 0;
          v252 = v188;
          v253 = v101;
          sub_26AEA3BD8(&v252, v256, &v255, &v254);
          v80[3] = 0;
          v252 = v189;
          v253 = v102;
          sub_26AEA3BD8(&v252, v256, &v255, &v254);
          v80[2] = 0;
          v252 = v190;
          v253 = v103;
          sub_26AEA3BD8(&v252, v256, &v255, &v254);
          v80[1] = 0;
          v252 = v191;
          v253 = v105;
          sub_26AEA3BD8(&v252, v256, &v255, &v254);
          _os_log_impl(&dword_26AE88000, v108, v109, "%s.%s: Alternate update: update initiated failed/cancelled, not dismissing slow roll.", v81, 0x16u);
          sub_26AEA3C24(v82);
          sub_26AEA3C24(v83);
          sub_26B07A400();
        }
      }

      else
      {
      }

      v79 = MEMORY[0x277D82BD8](v108);
      return (*(v227 + 8))(v230, v226, v79);
    }
  }

  return result;
}

void *sub_26AFA4748(uint64_t *a1, void *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DB520);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v2 = sub_26B078AD0();
    (*(*(v2 - 8) + 16))(a2, a1);
  }

  else
  {
    v15 = *a1;

    *a2 = v15;
  }

  swift_storeEnumTagMultiPayload();
  updated = type metadata accessor for AlternateUpdateContentView();
  v9 = a2 + updated[5];
  v3 = a1 + updated[5];
  v7 = *v3;
  v8 = v3[8];

  *v9 = v7;
  v9[8] = v8 & 1;
  v11 = a2 + updated[6];
  v4 = a1 + updated[6];
  *v11 = *v4;
  v12 = *(v4 + 1);

  *(v11 + 1) = v12;
  v14 = a2 + updated[7];
  v13 = a1 + updated[7];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDE20);
  (*(*(v5 - 8) + 16))(v14, v13);
  return a2;
}

uint64_t sub_26AFA4920()
{
  updated = type metadata accessor for AlternateUpdateContentView();
  v0 = *(*(updated - 8) + 80);
  v7 = (v0 + 16) & ~v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DB520);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v1 = sub_26B078AD0();
    (*(*(v1 - 8) + 8))(v5 + v7);
  }

  else
  {
  }

  v4 = v5 + v7 + *(updated + 28);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDE20);
  (*(*(v2 - 8) + 8))(v4);
  return swift_deallocObject();
}

char *sub_26AFA4AE0(char *a1, char *a2)
{
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DB520);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v2 = sub_26B078AD0();
    (*(*(v2 - 8) + 32))(a2, a1);
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    memcpy(a2, a1, *(*(v12 - 8) + 64));
  }

  updated = type metadata accessor for AlternateUpdateContentView();
  v4 = &a2[updated[5]];
  v5 = &a1[updated[5]];
  *v4 = *v5;
  v4[8] = v5[8];
  *&a2[updated[6]] = *&a1[updated[6]];
  v9 = &a2[updated[7]];
  v8 = &a1[updated[7]];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDE20);
  (*(*(v6 - 8) + 32))(v9, v8);
  return a2;
}

uint64_t sub_26AFA4C5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  updated = type metadata accessor for AlternateUpdateContentView();
  v4 = v2 + ((*(*(updated - 8) + 80) + 16) & ~*(*(updated - 8) + 80));

  return sub_26AFA0C30(a1, v4, a2);
}

unint64_t sub_26AFA4CDC()
{
  v2 = qword_2803DDA48;
  if (!qword_2803DDA48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DDA40);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DDA48);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_26AFA4D64()
{
  v2 = qword_2803DDA58;
  if (!qword_2803DDA58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DDA50);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DDA58);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_26AFA4E18()
{
  v2 = qword_2803DDA68;
  if (!qword_2803DDA68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DDA60);
    sub_26AFA4D64();
    sub_26AEF9014();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DDA68);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_26AFA4EF8()
{
  v2 = qword_2803DDA78;
  if (!qword_2803DDA78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DDA70);
    sub_26AFA4FA0();
    sub_26AF6B6FC();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DDA78);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_26AFA4FA0()
{
  v2 = qword_2803DDA80;
  if (!qword_2803DDA80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DDA88);
    sub_26AFA4E18();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DDA80);
    return WitnessTable;
  }

  return v2;
}

void __spoils<X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> sub_26AFA5044()
{
}

unint64_t sub_26AFA5088()
{
  v2 = qword_2803DDA90;
  if (!qword_2803DDA90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DDA38);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DDA70);
    sub_26AFA4EF8();
    swift_getOpaqueTypeConformance2();
    sub_26AF1B358();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DDA90);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_26AFA5180(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDA30);
  (*(*(v1 - 8) + 8))(a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDA38);
  sub_26AF072D8();
  return a1;
}

uint64_t sub_26AFA521C(uint64_t a1, uint64_t a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDA30);
  (*(*(v2 - 8) + 16))(a2, a1);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDA38);
  v4 = a1 + *(v3 + 36);
  v9 = a2 + *(v3 + 36);
  *v9 = *v4;
  v7 = *(v4 + 8);
  v8 = *(v4 + 16);
  sub_26AF07734();
  result = a2;
  *(v9 + 8) = v7;
  *(v9 + 16) = v8 & 1;
  return result;
}

uint64_t sub_26AFA52FC()
{
  updated = type metadata accessor for AlternateUpdateContentView();
  v0 = *(*(updated - 8) + 80);
  v7 = (v0 + 16) & ~v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DB520);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v1 = sub_26B078AD0();
    (*(*(v1 - 8) + 8))(v5 + v7);
  }

  else
  {
  }

  v4 = v5 + v7 + *(updated + 28);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDE20);
  (*(*(v2 - 8) + 8))(v4);
  return swift_deallocObject();
}

uint64_t sub_26AFA54BC()
{
  type metadata accessor for AlternateUpdateContentView();

  return sub_26AFA4644();
}

uint64_t sub_26AFA5770()
{
  updated = type metadata accessor for AlternateUpdateContentView();
  v0 = *(*(updated - 8) + 80);
  v7 = (v0 + 16) & ~v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DB520);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v1 = sub_26B078AD0();
    (*(*(v1 - 8) + 8))(v5 + v7);
  }

  else
  {
  }

  v4 = v5 + v7 + *(updated + 28);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDE20);
  (*(*(v2 - 8) + 8))(v4);
  return swift_deallocObject();
}

uint64_t sub_26AFA5930()
{
  type metadata accessor for AlternateUpdateContentView();

  return sub_26AFA45F8();
}

uint64_t sub_26AFA5BE0()
{
  updated = type metadata accessor for AlternateUpdateContentView();
  v0 = *(*(updated - 8) + 80);
  v7 = (v0 + 16) & ~v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DB520);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v1 = sub_26B078AD0();
    (*(*(v1 - 8) + 8))(v5 + v7);
  }

  else
  {
  }

  v4 = v5 + v7 + *(updated + 28);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDE20);
  (*(*(v2 - 8) + 8))(v4);
  return swift_deallocObject();
}

uint64_t sub_26AFA5DA0()
{
  type metadata accessor for AlternateUpdateContentView();

  return sub_26AFA45AC();
}

uint64_t sub_26AFA60DC(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DEB80);
  if (a2 == *(*(v11 - 8) + 84))
  {
    return (*(*(v11 - 8) + 48))(a1, a2, v11);
  }

  else if (a2 == 2147483646)
  {
    v6 = -1;
    if (*(a1 + *(a3 + 24) + 8) < 0x100000000uLL)
    {
      v6 = *(a1 + *(a3 + 24) + 8);
    }

    v3 = v6 - 1;
    if (v6 - 1 < 0)
    {
      v3 = -1;
    }

    return (v3 + 1);
  }

  else
  {
    v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDE20);
    if (a2 == *(*(v5 - 8) + 84))
    {
      return (*(*(v5 - 8) + 48))(a1 + *(a3 + 28), a2, v5);
    }

    else
    {
      __break(1u);
    }
  }

  return v7;
}

uint64_t sub_26AFA62DC(uint64_t a1, unsigned int a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DEB80);
  if (a3 == *(*(result - 8) + 84))
  {
    return (*(*(result - 8) + 56))(a1, a2, a2, result);
  }

  if (a3 == 2147483646)
  {
    *(a1 + *(a4 + 24) + 8) = a2;
  }

  else
  {
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDE20);
    if (a3 == *(*(result - 8) + 84))
    {
      return (*(*(result - 8) + 56))(a1 + *(a4 + 28), a2, a2, result);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_26AFA6484()
{
  v5 = sub_26AE96BE8();
  if (v0 <= 0x3F)
  {
    v5 = sub_26AE96B4C();
    if (v1 <= 0x3F)
    {
      v5 = sub_26AE96C84();
      if (v2 <= 0x3F)
      {
        v5 = sub_26AFA65BC();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return v5;
}

uint64_t sub_26AFA65BC()
{
  v4 = qword_2803DE610;
  if (!qword_2803DE610)
  {
    type metadata accessor for ReactiveDescriptor();
    v3 = sub_26B079B10();
    v4 = v3;
    if (!v0)
    {
      v1 = v3;
      atomic_store(v3, &qword_2803DE610);
      return v1;
    }
  }

  return v4;
}

unint64_t sub_26AFA668C()
{
  v2 = qword_2803DDAC8;
  if (!qword_2803DDAC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DDAC0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DDAC8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_26AFA6714()
{
  v2 = qword_2803DDAD0;
  if (!qword_2803DDAD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DDAA8);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DDAD0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_26AFA679C(uint64_t a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDAD8) + 44);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDAE0);
  (*(*(v1 - 8) + 8))();
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDAE8) + 48);

  if (*(a1 + v3 + v5 + 40))
  {
  }

  if (*(a1 + v3 + v5 + 64))
  {
  }

  return a1;
}

unint64_t sub_26AFA68F4()
{
  v2 = qword_2803DDAF0;
  if (!qword_2803DDAF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DDAB0);
    sub_26AFA6714();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DDAF0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_26AFA6998(uint64_t a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDAD8) + 44);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDAE0);
  (*(*(v1 - 8) + 8))();
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDAE8) + 48);

  if (*(a1 + v3 + v5 + 40))
  {
  }

  if (*(a1 + v3 + v5 + 64))
  {
  }

  return a1;
}

uint64_t sub_26AFA6AF0(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDAB8);
  (*(*(v1 - 8) + 8))(a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDA40);

  return a1;
}

uint64_t sub_26AFA6B9C(uint64_t a1, uint64_t a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDAB8);
  (*(*(v2 - 8) + 16))(a2, a1);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDA40);
  v6 = *(v8 + 52);
  v7 = *(a1 + v6);

  *(a2 + v6) = v7;
  v10 = *(v8 + 56);
  v11 = *(a1 + v10);
  v12 = *(a1 + v10 + 8);

  result = a2;
  v4 = (a2 + v10);
  *v4 = v11;
  v4[1] = v12;
  return result;
}

unint64_t sub_26AFA6CA4()
{
  v2 = qword_2803DDB10;
  if (!qword_2803DDB10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DDAF8);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DDB10);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_26AFA6D2C()
{
  v2 = qword_2803DDB18;
  if (!qword_2803DDB18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DDB08);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DDB00);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DDAF8);
    sub_26AFA6CA4();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DDB18);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_26AFA6E5C(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDAE0);
  (*(*(v1 - 8) + 8))(a1);
  return a1;
}

uint64_t sub_26AFA6EC4()
{
  updated = type metadata accessor for AlternateUpdateContentView();
  v0 = *(*(updated - 8) + 80);
  v7 = (v0 + 16) & ~v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DB520);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v1 = sub_26B078AD0();
    (*(*(v1 - 8) + 8))(v5 + v7);
  }

  else
  {
  }

  v4 = v5 + v7 + *(updated + 28);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDE20);
  (*(*(v2 - 8) + 8))(v4);
  return swift_deallocObject();
}

uint64_t sub_26AFA7084(uint64_t *a1)
{
  updated = type metadata accessor for AlternateUpdateContentView();
  v3 = v1 + ((*(*(updated - 8) + 80) + 16) & ~*(*(updated - 8) + 80));

  return sub_26AFA23DC(a1, v3);
}

uint64_t sub_26AFA70FC(uint64_t a1, uint64_t a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDAE0);
  (*(*(v2 - 8) + 16))(a2, a1);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDB08);
  result = a2;
  *(a2 + *(v3 + 36)) = *(a1 + *(v3 + 36));
  return result;
}

uint64_t sub_26AFA71A0(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD130);
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1))
  {
    (*(v4 + 8))(a1, v3);
  }

  return a1;
}

void *sub_26AFA7254(const void *a1, void *a2)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD130);
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a1, 1))
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DD0C0);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v7 + 32))(a2, a1, v6);
    (*(v7 + 56))(a2, 0, 1, v6);
  }

  return a2;
}

void *sub_26AFA7388(const void *a1, void *a2)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD130);
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a1, 1))
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DD0C0);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v7 + 16))(a2, a1, v6);
    (*(v7 + 56))(a2, 0, 1, v6);
  }

  return a2;
}

uint64_t sub_26AFA74BC(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DD138);
  (*(*(v1 - 8) + 8))(a1);
  return a1;
}

BOOL static DeepLinkContext.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 112) == *(a2 + 112) && (type metadata accessor for DeepLinkRequest(), v6 = *(a1 + 120), , v5 = *(a2 + 120), , v7 = static DeepLinkRequest.== infix(_:_:)(v6, v5), , , (v7 & 1) != 0))
  {

    v4 = sub_26B07A7F0();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    return (v4 & 1) != 0;
  }

  else
  {
    return 0;
  }
}

uint64_t DeepLinkContext.request.getter()
{
  v2 = *(v0 + 120);

  return v2;
}

uint64_t DeepLinkContext.reactiveManager.getter()
{
  v2 = *(v0 + 128);

  return v2;
}

uint64_t sub_26AFA774C@<X0>(uint64_t *a1@<X8>)
{

  *a1 = sub_26AFA7810();
}

uint64_t sub_26AFA77A8(uint64_t *a1)
{
  sub_26AFA7D38(a1, &v3);
  v2 = v3;

  sub_26AFA786C(v2);
}

uint64_t sub_26AFA7810()
{
  swift_beginAccess();
  v2 = *(v0 + 136);
  sub_26B078640();
  swift_endAccess();
  return v2;
}

uint64_t sub_26AFA786C(uint64_t a1)
{
  sub_26B078640();
  swift_beginAccess();
  *(v1 + 136) = a1;

  swift_endAccess();
}

uint64_t DeepLinkContext.init(request:reactiveManager:stateChangeTimeout:)(uint64_t a1, uint64_t a2, double a3)
{
  swift_defaultActor_initialize();
  sub_26B0788B0();
  sub_26AFA7A40();
  *(v3 + 136) = sub_26B079C50();

  *(v3 + 120) = a1;

  *(v3 + 128) = a2;
  *(v3 + 112) = a3;

  return v8;
}

unint64_t sub_26AFA7A40()
{
  v2 = qword_2803DEF60;
  if (!qword_2803DEF60)
  {
    sub_26B0788B0();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DEF60);
    return WitnessTable;
  }

  return v2;
}

uint64_t DeepLinkContext.deinit()
{

  sub_26AFA7B10();
  swift_defaultActor_destroy();
  return v1;
}

void *sub_26AFA7D38(uint64_t *a1, void *a2)
{
  v4 = *a1;
  sub_26B078640();
  result = a2;
  *a2 = v4;
  return result;
}

uint64_t UpToDateView<>.init(label:actions:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(uint64_t)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v24 = a7;
  v17 = a1;
  v25 = a2;
  v18 = a3;
  v19 = a4;
  v27 = a5;
  v22 = a6;
  v16 = sub_26AFA99EC;
  v36 = 0;
  v34 = 0;
  v35 = 0;
  v32 = 0;
  v33 = 0;
  v41 = a5;
  v20 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DBFC8);
  v21 = sub_26AEB3370();
  v37 = v20;
  v38 = v27;
  v39 = v21;
  v40 = v22;
  v28 = type metadata accessor for UpToDateView();
  v14 = *(*(v28 - 8) + 64);
  v13 = (v14 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v25);
  v23 = &v13 - v13;
  v15 = v13;
  MEMORY[0x28223BE20](v7);
  v26 = (&v13 - v15);
  v36 = &v13 - v15;
  v34 = v8;
  v35 = v9;
  v32 = v10;
  v33 = v11;

  v30 = v17;
  v31 = v25;
  UpToDateView.init(_:actions:)(v16, v29, v18, v19, v20, v27, v23);

  sub_26AFA99F8(v23, v26, v27, v28);
  sub_26AFA9AC4(v26, v24, v27, v28);

  return sub_26AFA9BB8(v26, v27, v28);
}

{
  v24 = a7;
  v17 = a1;
  v25 = a2;
  v18 = a3;
  v19 = a4;
  v27 = a5;
  v22 = a6;
  v16 = sub_26AFAA2A0;
  v36 = 0;
  v34 = 0;
  v35 = 0;
  v32 = 0;
  v33 = 0;
  v41 = a5;
  v20 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DBFC8);
  v21 = sub_26AEB3370();
  v37 = v20;
  v38 = v27;
  v39 = v21;
  v40 = v22;
  v28 = type metadata accessor for UpToDateView();
  v14 = *(*(v28 - 8) + 64);
  v13 = (v14 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v25);
  v23 = &v13 - v13;
  v15 = v13;
  MEMORY[0x28223BE20](v7);
  v26 = (&v13 - v15);
  v36 = &v13 - v15;
  v34 = v8;
  v35 = v9;
  v32 = v10;
  v33 = v11;
  sub_26B078640();
  v30 = v17;
  v31 = v25;
  UpToDateView.init(_:actions:)(v16, v29, v18, v19, v20, v27, v23);

  sub_26AFA99F8(v23, v26, v27, v28);
  sub_26AFA9AC4(v26, v24, v27, v28);

  return sub_26AFA9BB8(v26, v27, v28);
}

uint64_t sub_26AFA7F8C()
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DBFB8);
  sub_26B078A10();

  return v1;
}

uint64_t sub_26AFA802C()
{
  v2 = *v0;

  return v2;
}

uint64_t sub_26AFA8084(uint64_t a1, char a2)
{

  *v2 = a1;
  *(v2 + 8) = a2 & 1;
}

uint64_t UpToDateView.init(_:actions:)@<X0>(void (*a1)(void)@<X0>, uint64_t a2@<X1>, void (*a3)(uint64_t)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v34 = a7;
  v25 = a1;
  v30 = a3;
  v26 = a4;
  v35 = a5;
  v36 = a6;
  v45 = 0;
  v43 = 0;
  v44 = 0;
  v41 = 0;
  v42 = 0;
  v51 = a5;
  v50 = a6;
  v31 = *(a6 - 8);
  v32 = a6 - 8;
  v22 = (*(v31 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](a1);
  v33 = &v21 - v22;
  v27 = *(v8 - 8);
  v28 = v8 - 8;
  v23 = (*(v27 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v21 - v22);
  v29 = &v21 - v23;
  v46 = v9;
  v47 = v10;
  v48 = v11;
  v49 = v12;
  v37 = type metadata accessor for UpToDateView();
  v24 = (*(*(v37 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v25);
  v38 = (&v21 - v24);
  v45 = &v21 - v24;
  v43 = v13;
  v44 = a2;
  v41 = v14;
  v42 = v15;
  swift_getKeyPath();
  sub_26B078A30();
  v16 = v25;
  v17 = v38;
  v18 = v40;
  *v38 = v39;
  *(v17 + 8) = v18 & 1;
  v16();
  v19 = (*(v27 + 32))(v38 + *(v37 + 52), v29, v35);
  v30(v19);
  (*(v31 + 32))(v38 + *(v37 + 56), v33, v36);
  return sub_26AFA9C98(v38, v34, v35, v36, v37);
}

uint64_t UpToDateView.body.getter@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a2;
  v10 = a1;
  v17 = sub_26AFA9E08;
  v13 = sub_26AFA9E30;
  v14 = sub_26AFA9E58;
  v22 = MEMORY[0x277CDE158];
  v48 = 0;
  v47 = 0;
  v15 = a1[2];
  v56 = v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DDB20);
  v11 = v10[3];
  v55 = v11;
  v12 = v10[4];
  v20 = sub_26AFA9D68();
  v21 = v10[5];
  v49 = v15;
  v50 = v16;
  v51 = v11;
  v52 = v12;
  v53 = v20;
  v54 = v21;
  v29 = sub_26B079010();
  v23 = *(v29 - 8);
  v24 = v29 - 8;
  v19 = *(v23 + 64);
  v18 = (v19 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](sub_26AFA9E08);
  v27 = &v9 - v18;
  MEMORY[0x28223BE20](v3);
  v28 = &v9 - v4;
  v48 = &v9 - v4;
  v47 = v2;
  v42 = v5;
  v43 = v6;
  v44 = v7;
  v45 = v21;
  v46 = v2;
  v37 = v5;
  v38 = v6;
  v39 = v7;
  v40 = v21;
  v41 = v2;
  v32 = v5;
  v33 = v6;
  v34 = v7;
  v35 = v21;
  v36 = v2;
  sub_26B079000();
  WitnessTable = swift_getWitnessTable();
  sub_26AE9463C(v27, v29, v28);
  v31 = *(v23 + 8);
  v30 = v23 + 8;
  v31(v27, v29);
  (*(v23 + 16))(v27, v28, v29);
  sub_26AE94B4C(v27, v29, v25);
  v31(v27, v29);
  return (v31)(v28, v29);
}

uint64_t sub_26AFA87B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v22 = a5;
  v17 = a1;
  v26 = a2;
  v23 = a4;
  v34 = 0;
  v33 = 0;
  v36 = a2;
  v35 = a3;
  v18 = *(a2 - 8);
  v19 = a2 - 8;
  v15 = v18[8];
  v14 = (v15 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](a1);
  v24 = &v13 - v14;
  v16 = v14;
  MEMORY[0x28223BE20](v5);
  v25 = &v13 - v16;
  v34 = &v13 - v16;
  v33 = v6;
  v29 = v7;
  v30 = v8;
  v31 = v9;
  v32 = v10;
  v11 = *(type metadata accessor for UpToDateView() + 52);
  v21 = v18[2];
  v20 = v18 + 2;
  v21(v24, v17 + v11, v26);
  sub_26AE9463C(v24, v26, v25);
  v28 = v18[1];
  v27 = v18 + 1;
  v28(v24, v26);
  v21(v24, v25, v26);
  sub_26AE94B4C(v24, v26, v22);
  v28(v24, v26);
  return (v28)(v25, v26);
}

uint64_t sub_26AFA89B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v26 = a6;
  v53 = a2;
  v52 = a3;
  v49[10] = a1;
  v41 = a2;
  v42 = a3;
  v43 = a4;
  v44 = a5;
  v6 = type metadata accessor for UpToDateView();
  v20 = v45;
  sub_26AFA8C10(v6, v45);
  v16 = v46;
  v17 = v47;
  v7 = __swift_project_boxed_opaque_existential_1(v45, v46);
  v15 = *(v16 - 8);
  v14 = (*(v15 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v8 = MEMORY[0x28223BE20](v7);
  v18 = &v13 - v14;
  (*(v15 + 16))(v8);
  v37 = sub_26B0792E0();
  v38 = v9;
  v39 = v10;
  v40 = v11;
  v19 = v34;
  v34[0] = v37;
  v34[1] = v9;
  v35 = v10 & 1;
  v36 = v11;
  v21 = &v48;
  sub_26B079660();
  sub_26AE95B40(v19);
  __swift_destroy_boxed_opaque_existential_1(v20);
  v22 = __dst;
  v25 = 73;
  memcpy(__dst, v21, 0x49uLL);
  v23 = v33;
  memcpy(v33, __dst, 0x49uLL);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDB20);
  v28 = sub_26AFA9D68();
  v30 = v49;
  sub_26AE9463C(v23, v27, v49);
  sub_26AFAA8B8(v23);
  v24 = v51;
  memcpy(v51, v30, v25);
  sub_26AFAA900(v24, &v32);
  v29 = v31;
  memcpy(v31, v24, v25);
  sub_26AE94B4C(v29, v27, v26);
  sub_26AFAA8B8(v29);
  return sub_26AFAA8B8(v30);
}

uint64_t sub_26AFA8C10@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v41 = a2;
  v24 = a1;
  v34 = "The parameter is the OS version";
  v50 = 0;
  v36 = 0;
  v16 = (*(*(sub_26B078300() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0);
  v38 = &v16 - v16;
  v17 = (*(*(sub_26B079DE0() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v36);
  v35 = &v16 - v17;
  v31 = sub_26B079DC0();
  v29 = *(v31 - 8);
  v30 = v31 - 8;
  v20 = *(v29 + 64);
  v18 = (v20 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v24);
  v33 = &v16 - v18;
  v19 = (v20 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v2);
  v28 = &v16 - v19;
  v21 = (v20 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v3);
  v32 = &v16 - v21;
  v50 = v4;
  v49 = *(v5 + 16);
  v48 = *(v5 + 24);
  v22 = 7;
  sub_26B079DB0();
  v26 = 1;
  sub_26B079D00();
  v23 = v6;
  sub_26B079DA0();

  v46 = sub_26AFA9234();
  v47 = v7;
  v39 = MEMORY[0x277D837D0];
  sub_26B079FC0();
  v25 = v8;
  sub_26B079D90();

  sub_26B079D00();
  v27 = v9;
  sub_26B079DA0();

  (*(v29 + 16))(v28, v32, v31);
  (*(v29 + 32))(v33, v28, v31);
  (*(v29 + 8))(v32, v31);
  sub_26B079DD0();
  v37 = *sub_26B02D0D0();
  MEMORY[0x277D82BE0](v37);
  sub_26AEFB5C4();
  v43 = v34;
  v44 = 31;
  v45 = 2;
  v42 = sub_26B079E40();
  v40 = v10;
  v41[3] = v39;
  v11 = sub_26AE95974();
  v12 = v40;
  v13 = v41;
  v14 = v11;
  result = v42;
  v41[4] = v14;
  *v13 = result;
  v13[1] = v12;
  return result;
}

uint64_t sub_26AFA9038@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v22 = a5;
  v17 = a1;
  v26 = a3;
  v23 = a4;
  v34 = 0;
  v33 = 0;
  v36 = a2;
  v35 = a3;
  v18 = *(a3 - 8);
  v19 = a3 - 8;
  v15 = v18[8];
  v14 = (v15 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](a1);
  v24 = &v13 - v14;
  v16 = v14;
  MEMORY[0x28223BE20](v5);
  v25 = &v13 - v16;
  v34 = &v13 - v16;
  v33 = v6;
  v29 = v7;
  v30 = v8;
  v31 = v9;
  v32 = v10;
  v11 = *(type metadata accessor for UpToDateView() + 56);
  v21 = v18[2];
  v20 = v18 + 2;
  v21(v24, v17 + v11, v26);
  sub_26AE9463C(v24, v26, v25);
  v28 = v18[1];
  v27 = v18 + 1;
  v28(v24, v26);
  v21(v24, v25, v26);
  sub_26AE94B4C(v24, v26, v22);
  v28(v24, v26);
  return (v28)(v25, v26);
}

uint64_t sub_26AFA9234()
{
  sub_26AFA7F8C();
  v10 = sub_26B078500();

  if (v10)
  {
    sub_26B07A740();
    v0 = sub_26B079D00();
    MEMORY[0x26D66D910](v0);

    sub_26AFA7F8C();
    sub_26B0784E0();

    sub_26B07A720();
    sub_26AE9BCC0();
    v1 = sub_26B079D00();
    MEMORY[0x26D66D910](v1);

    sub_26AFA7F8C();
    sub_26B0784D0();

    sub_26B07A720();
    sub_26AE9BCC0();
    v2 = sub_26B079D00();
    MEMORY[0x26D66D910](v2);

    sub_26B078640();
    sub_26AEB9F6C();
    return sub_26B079EB0();
  }

  else
  {
    sub_26AFA7F8C();
    sub_26B078520();

    v8 = sub_26B079F30();

    if (v8)
    {
      sub_26AFA7F8C();
      v7 = sub_26B0784E0();

      return v7;
    }

    else
    {
      sub_26B07A740();
      v3 = sub_26B079D00();
      MEMORY[0x26D66D910](v3);

      sub_26AFA7F8C();
      sub_26B0784E0();

      sub_26B07A720();
      sub_26AE9BCC0();
      v4 = sub_26B079D00();
      MEMORY[0x26D66D910](v4);

      sub_26AFA7F8C();
      sub_26B078520();

      sub_26B07A720();
      sub_26AE9BCC0();
      v5 = sub_26B079D00();
      MEMORY[0x26D66D910](v5);

      sub_26B078640();
      sub_26AEB9F6C();
      return sub_26B079EB0();
    }
  }
}

uint64_t sub_26AFA9720@<X0>(void (*a1)(void)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v23 = a3;
  v12 = a1;
  v20 = a2;
  v35 = 0;
  v33 = 0;
  v34 = 0;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DBFC8);
  v21 = *(v27 - 8);
  v22 = v27 - 8;
  v10 = (*(v21 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v12);
  v25 = &v10 - v10;
  v11 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v5);
  v26 = &v10 - v11;
  v35 = &v10 - v11;
  v33 = v6;
  v34 = a2;

  v19 = &v30;
  v12();
  v15 = v31;
  v16 = v32;
  v7 = __swift_project_boxed_opaque_existential_1(v19, v31);
  v14 = *(v15 - 8);
  v13 = (*(v14 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v8 = MEMORY[0x28223BE20](v7);
  v17 = &v10 - v13;
  (*(v14 + 16))(v8);
  v18 = sub_26B079D00();
  sub_26B079890();
  v24 = sub_26AEB3370();
  sub_26AE9463C(v25, v27, v26);
  v29 = *(v21 + 8);
  v28 = v21 + 8;
  v29(v25, v27);
  __swift_destroy_boxed_opaque_existential_1(v19);

  (*(v21 + 16))(v25, v26, v27);
  sub_26AE94B4C(v25, v27, v23);
  v29(v25, v27);
  return (v29)(v26, v27);
}

uint64_t sub_26AFA99F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *a2 = *a1;
  *(a2 + 8) = *(a1 + 8);
  (*(*(*(a4 + 16) - 8) + 32))(a2 + *(a4 + 52), a1 + *(a4 + 52));
  (*(*(a3 - 8) + 32))(a2 + *(a4 + 56), a1 + *(a4 + 56));
  return a2;
}

uint64_t sub_26AFA9AC4(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *a1;
  v6 = *(a1 + 8);

  *a2 = v5;
  *(a2 + 8) = v6 & 1;
  (*(*(*(a4 + 16) - 8) + 16))(a2 + *(a4 + 52), a1 + *(a4 + 52));
  (*(*(a3 - 8) + 16))(a2 + *(a4 + 56), a1 + *(a4 + 56));
  return a2;
}

uint64_t sub_26AFA9BB8(uint64_t a1, uint64_t a2, uint64_t a3)
{

  (*(*(*(a3 + 16) - 8) + 8))(a1 + *(a3 + 52));
  (*(*(a2 - 8) + 8))(a1 + *(a3 + 56));
  return a1;
}

uint64_t sub_26AFA9C98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *a2 = *a1;
  *(a2 + 8) = *(a1 + 8);
  (*(*(a3 - 8) + 32))(a2 + *(a5 + 52), a1 + *(a5 + 52));
  (*(*(a4 - 8) + 32))(a2 + *(a5 + 56), a1 + *(a5 + 56));
  return a2;
}

unint64_t sub_26AFA9D68()
{
  v2 = qword_2803DDB28[0];
  if (!qword_2803DDB28[0])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DDB20);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, qword_2803DDB28);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_26AFAA070@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v18 = a3;
  v11 = a1;
  v12 = a2;
  v28 = 0;
  v26 = 0;
  v27 = 0;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DBFC8);
  v16 = *(v22 - 8);
  v17 = v22 - 8;
  v9 = *(v16 + 64);
  v8 = (v9 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v12);
  v20 = &v8 - v8;
  v10 = v8;
  MEMORY[0x28223BE20](v3);
  v21 = &v8 - v10;
  v28 = &v8 - v10;
  v26 = v4;
  v27 = v5;
  sub_26B078640();
  v15 = v25;
  v25[0] = v11;
  v25[1] = v12;
  v13 = sub_26B079D00();
  v14 = v6;
  sub_26AE95974();
  sub_26B079890();
  v19 = sub_26AEB3370();
  sub_26AE9463C(v20, v22, v21);
  v24 = *(v16 + 8);
  v23 = v16 + 8;
  v24(v20, v22);
  (*(v16 + 16))(v20, v21, v22);
  sub_26AE94B4C(v20, v22, v18);
  v24(v20, v22);
  return (v24)(v21, v22);
}

uint64_t sub_26AFAA350()
{
  v4 = sub_26AF7BC6C();
  if (v0 <= 0x3F)
  {
    v4 = swift_checkMetadataState();
    if (v1 <= 0x3F)
    {
      v4 = swift_checkMetadataState();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return v4;
}

uint64_t sub_26AFAA49C(uint64_t a1, unsigned int a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v3 = 255 - *(a1 + 8);
    if (v3 >= 0xFE)
    {
      v3 = -1;
    }

    return v3 + 1;
  }

  else
  {
    v6 = *(a3 + 16);
    if (a2 == *(*(v6 - 8) + 84))
    {
      return (*(*(v6 - 8) + 48))(a1 + *(a3 + 52), a2, v6);
    }

    else
    {
      v5 = *(a3 + 24);
      if (a2 == *(*(v5 - 8) + 84))
      {
        return (*(*(v5 - 8) + 48))(a1 + *(a3 + 56), a2, v5);
      }

      else
      {
        __break(1u);
      }
    }
  }

  return v7;
}

uint64_t sub_26AFAA664(uint64_t result, unsigned int a2, int a3, uint64_t a4)
{
  if (a3 == 254)
  {
    *(result + 8) = ~(a2 - 1);
  }

  else
  {
    v5 = *(a4 + 16);
    if (a3 == *(*(v5 - 8) + 84))
    {
      return (*(*(v5 - 8) + 56))(result + *(a4 + 52), a2, a2, v5);
    }

    else
    {
      v4 = *(a4 + 24);
      if (a3 == *(*(v4 - 8) + 84))
      {
        return (*(*(v4 - 8) + 56))(result + *(a4 + 56), a2, a2, v4);
      }

      else
      {
        __break(1u);
      }
    }
  }

  return result;
}

uint64_t sub_26AFAA7F8()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DDB20);
  sub_26AFA9D68();
  sub_26B079010();
  return swift_getWitnessTable();
}

uint64_t sub_26AFAA8B8(uint64_t a1)
{
  sub_26AE95AFC(*a1, *(a1 + 8), *(a1 + 16) & 1);

  return a1;
}

uint64_t sub_26AFAA900(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  sub_26AE95D28(*a1, v4, v5 & 1);
  *a2 = v3;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5 & 1;
  v7 = *(a1 + 24);
  sub_26B078640();
  *(a2 + 24) = v7;
  memcpy((a2 + 32), (a1 + 32), 0x29uLL);
  return a2;
}

uint64_t sub_26AFAA9A4@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_unknownObjectRetain();
  swift_getObjectType();
  *a2 = [v3 isAutoDownload];
  return swift_unknownObjectRelease();
}

uint64_t sub_26AFAAA08()
{
  sub_26AF07734();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DC9C0);
  sub_26B078A10();
  sub_26AF072D8();
  return v1;
}

uint64_t sub_26AFAAA98()
{
  v2 = *v0;
  sub_26AF07734();
  return v2;
}

uint64_t sub_26AFAAAD8(uint64_t a1, char a2)
{
  sub_26AF07734();
  *v2 = a1;
  *(v2 + 8) = a2 & 1;
  sub_26AF072D8();
  return sub_26AF072D8();
}

uint64_t sub_26AFAAB3C()
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DBFB8);
  sub_26B078A10();

  return v1;
}

uint64_t sub_26AFAABCC()
{
  v2 = *(v0 + 16);

  return v2;
}

uint64_t sub_26AFAAC08(uint64_t a1, char a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2 & 1;
}

uint64_t sub_26AFAAC58()
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DB510);
  sub_26B078A10();

  return v1;
}

uint64_t sub_26AFAACDC()
{
  v2 = *(v0 + 32);

  return v2;
}

uint64_t sub_26AFAAD18(uint64_t a1, char a2)
{

  *(v2 + 32) = a1;
  *(v2 + 40) = a2 & 1;
}

uint64_t sub_26AFAAD68()
{
  v2 = *(v0 + 48);

  return v2;
}

uint64_t sub_26AFAAD94(uint64_t a1)
{

  *(v1 + 48) = a1;
}

uint64_t sub_26AFAADD0@<X0>(uint64_t a1@<X8>)
{
  v7 = a1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DC130);
  v5 = (*(*(v8 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v8);
  v1 = (&v4 - v5);
  v9 = &v4 - v5;
  updated = type metadata accessor for AvailableUpdateProactiveSuggestionView();
  sub_26AEC26F8((v6 + *(updated + 32)), v1);
  sub_26B078A10();
  return sub_26AEC27CC(v9);
}

uint64_t type metadata accessor for AvailableUpdateProactiveSuggestionView()
{
  v1 = qword_2803DDCC8;
  if (!qword_2803DDCC8)
  {
    return swift_getSingletonMetadata();
  }

  return v1;
}

uint64_t sub_26AFAAF3C(uint64_t a1)
{
  v8 = a1;
  v6 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DC130) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v8);
  v7 = &v5 - v6;
  sub_26AEC26F8(v2, (&v5 - v6));
  updated = type metadata accessor for AvailableUpdateProactiveSuggestionView();
  sub_26AEC2950(v7, (v1 + *(updated + 32)));
  return sub_26AEC27CC(v8);
}

uint64_t sub_26AFAB040()
{
  type metadata accessor for AvailableUpdateProactiveSuggestionView();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DC9D0);
  sub_26B0798B0();

  return v1 & 1;
}

uint64_t sub_26AFAB0D0()
{
  type metadata accessor for AvailableUpdateProactiveSuggestionView();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DC9D0);
  sub_26B0798C0();
  sub_26AE91DC8();
}

uint64_t sub_26AFAB17C()
{
  type metadata accessor for AvailableUpdateProactiveSuggestionView();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DC9D0);
  sub_26B0798D0();

  return v1;
}

uint64_t sub_26AFAB224()
{
  v2 = *(v0 + *(type metadata accessor for AvailableUpdateProactiveSuggestionView() + 36));

  return v2 & 1;
}

uint64_t sub_26AFAB270(char a1, uint64_t a2)
{

  v3 = v2 + *(type metadata accessor for AvailableUpdateProactiveSuggestionView() + 36);
  *v3 = a1;
  *(v3 + 8) = a2;
}

BOOL sub_26AFAB2CC(char a1, char a2)
{
  if (a1)
  {
    switch(a1)
    {
      case 1:
        v4 = 1;
        break;
      case 2:
        v4 = 2;
        break;
      case 3:
        v4 = 3;
        break;
      default:
        v4 = 4;
        break;
    }
  }

  else
  {
    v4 = 0;
  }

  if (a2)
  {
    switch(a2)
    {
      case 1:
        v3 = 1;
        break;
      case 2:
        v3 = 2;
        break;
      case 3:
        v3 = 3;
        break;
      default:
        v3 = 4;
        break;
    }
  }

  else
  {
    v3 = 0;
  }

  return v4 == v3;
}

unint64_t sub_26AFAB58C()
{
  v2 = qword_2803DDBC0;
  if (!qword_2803DDBC0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DDBC0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_26AFAB67C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a2;
  v25 = a1;
  v34 = 0;
  v33 = 0;
  updated = type metadata accessor for AvailableUpdateProactiveSuggestionView();
  v19 = (*(*(updated - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v25);
  v26 = (&v18 - v19);
  v34 = &v18 - v19;
  v33 = v2;
  swift_getKeyPath();
  sub_26B078A30();
  v3 = v26;
  v4 = v32;
  *v26 = v31;
  v22 = 1;
  *(v3 + 8) = v4 & 1;
  swift_getKeyPath();
  sub_26B078A30();
  v5 = v22;
  v6 = v26;
  v7 = v30;
  v26[2] = v29;
  *(v6 + 24) = v7 & 1 & v5;
  swift_getKeyPath();
  sub_26B078A30();
  v8 = updated;
  v9 = v22;
  v10 = v26;
  v11 = v28;
  v26[4] = v27;
  *(v10 + 40) = v11 & 1 & v9;
  v20 = *(v8 + 32);
  swift_getKeyPath();
  sub_26B078A30();
  v23 = *(updated + 36);
  v12 = sub_26AFAAFEC();
  v13 = v26 + v23;
  *v13 = v12 & v22;
  *(v13 + 1) = v14;

  v15 = v26;
  v16 = v24;
  v26[6] = v25;
  sub_26AFB4A80(v15, v16);

  return sub_26AFB4CA8(v26);
}

uint64_t sub_26AFAB8DC@<X0>(uint64_t a1@<X8>)
{
  v25 = a1;
  v16 = sub_26AFB50D4;
  v34 = 0;
  v33 = 0;
  updated = type metadata accessor for AvailableUpdateProactiveSuggestionView();
  v6 = *(updated - 8);
  v11 = v6;
  v12 = *(v6 + 64);
  v7 = (v12 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](updated);
  v14 = &v6 - v7;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDBC8);
  v23 = *(v29 - 8);
  v24 = v29 - 8;
  v8 = (*(v23 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v29);
  v27 = &v6 - v8;
  v9 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v6 - v8);
  v28 = &v6 - v9;
  v34 = &v6 - v9;
  v33 = v1;
  v4 = sub_26AFABC30();
  v22 = &v32;
  v32 = v4;
  KeyPath = swift_getKeyPath();
  sub_26AFB4A80(v10, v14);
  v13 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v17 = swift_allocObject();
  sub_26AFB4F68(v14, v17 + v13);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDBD0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDBD8);
  v20 = sub_26AFB5154();
  v21 = sub_26AFAB58C();
  sub_26AFB51DC();
  sub_26B079A40();
  v26 = sub_26AFB584C();
  sub_26AE9463C(v27, v29, v28);
  v31 = *(v23 + 8);
  v30 = v23 + 8;
  v31(v27, v29);
  (*(v23 + 16))(v27, v28, v29);
  sub_26AE94B4C(v27, v29, v25);
  v31(v27, v29);
  return (v31)(v28, v29);
}

uint64_t sub_26AFABC30()
{
  v80 = v0;
  v79 = sub_26B07A760();

  v48 = ReactiveDescriptor.currentState.getter();
  v78 = v48;

  v77 = v48;
  v76 = 3;
  type metadata accessor for SUUIStatefulDescriptorState();
  sub_26AE9B8C0();
  if (sub_26B07A790())
  {
    v1 = sub_26B07A760();
    *v2 = 4;
    sub_26AEA3B2C();
    sub_26AFB596C();
    return v1;
  }

  v44 = *(v47 + 32);
  v43 = *(v47 + 40);

  v74 = v44;
  v75 = v43 & 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DB510);
  sub_26B078A10();

  v45 = ReactiveUIManager.currentState.getter();

  v73 = v45;
  v72 = 4;
  type metadata accessor for SUUIStatefulUIState();
  sub_26AE9BA40();
  if (sub_26B07A790())
  {

    sub_26B078A10();

    updated = ReactiveUIManager.isPreferredUpdatePromotedAsAlternate()();

    if (updated)
    {

      ReactiveDescriptor.currentState.getter();

      v41 = sub_26B07A790();
    }

    else
    {
      v41 = 0;
    }

    v40 = v41 ^ 1;
  }

  else
  {
    v40 = 0;
  }

  if (v40)
  {

    v38 = ReactiveDescriptor.hasAnyError.getter();

    v39 = v38;
  }

  else
  {
    v39 = 0;
  }

  if (v39)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDBD0);
    sub_26B07A090();
  }

  v36 = *(v47 + 32);
  v35 = *(v47 + 40);

  v70 = v36;
  v71 = v35 & 1;
  sub_26B078A10();

  v37 = ReactiveUIManager.currentState.getter();

  v69 = v37;
  v68 = 4;
  sub_26AE9AD9C();
  if ((sub_26B079D70() & 1) == 0)
  {
    v34 = 1;
    goto LABEL_25;
  }

  v31 = *(v47 + 32);
  v30 = *(v47 + 40);

  v66 = v31;
  v67 = v30 & 1;
  sub_26B078A10();

  v32 = ReactiveUIManager.targetedDescriptor.getter();

  v33 = *(v47 + 48);

  v64 = v32;
  v65 = v33;
  if (!v32)
  {
    if (!v65)
    {
      sub_26AF7E684();
      v29 = 1;
      goto LABEL_22;
    }

    goto LABEL_23;
  }

  sub_26AF7E6B0(&v64, v50);
  if (!v65)
  {

LABEL_23:
    sub_26AF7E5D0();
    v29 = 0;
    goto LABEL_22;
  }

  v49 = v65;
  type metadata accessor for ReactiveDescriptor();
  v28 = static ReactiveDescriptor.== infix(_:_:)(v50[0], v49);

  sub_26AF7E684();
  v29 = v28;
LABEL_22:

  v34 = v29 ^ 1;
LABEL_25:
  if (v34)
  {
    v26 = v79;
    sub_26B078640();
    v50[1] = v26;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDBD0);
    sub_26AFB58E4();
    v27 = sub_26B07A250();

    if (v27)
    {
      v3 = sub_26B07A760();
      *v4 = 0;
      sub_26AEA3B2C();
      v25 = v3;
    }

    else
    {
      v24 = v79;
      sub_26B078640();
      v25 = v24;
    }

    sub_26AFB596C();
    return v25;
  }

  else
  {
    v63 = v48;
    v62 = 2;
    if (sub_26B07A790())
    {
      v23 = 1;
    }

    else
    {
      v23 = sub_26B07A370();
    }

    if (v23)
    {
      v21 = *(v47 + 32);
      v20 = *(v47 + 40);

      v53 = v21;
      v54 = v20 & 1;
      sub_26B078A10();

      v22 = ReactiveUIManager.currentDownload.getter();

      if (v22)
      {
        KeyPath = swift_getKeyPath();
        ReactiveDownload.subscript.getter(KeyPath, &v51);
        v18 = v51;

        v19 = v18 & 1;
      }

      else
      {
        v19 = 2;
      }

      v52 = v19;
      if (v19 == 2)
      {
        v16 = 0;
      }

      else
      {
        v16 = v52;
      }

      v15 = v16;
    }

    else
    {
      v15 = 0;
    }

    if (v15)
    {
      v55 = 2;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDBD0);
      sub_26B07A090();
    }

    v61 = v48;
    v60 = 4;
    if (sub_26B07A790())
    {
      v13 = *(v47 + 32);
      v12 = *(v47 + 40);

      v57 = v13;
      v58 = v12 & 1;
      sub_26B078A10();

      v14 = ReactiveUIManager.isTargetedUpdateScheduledForAutoInstall()();

      if (v14)
      {
        v56 = 3;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDBD0);
        sub_26B07A090();
      }
    }

    v10 = v79;
    sub_26B078640();
    v59 = v10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDBD0);
    sub_26AFB58E4();
    v11 = sub_26B07A250();

    if (v11)
    {
      v5 = sub_26B07A760();
      *v6 = 0;
      sub_26AEA3B2C();
      v9 = v5;
    }

    else
    {
      v8 = v79;
      sub_26B078640();
      v9 = v8;
    }

    sub_26AFB596C();
    return v9;
  }
}

uint64_t sub_26AFAC624@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v12 = a3;
  v8 = a1;
  v19 = 0;
  v18 = 0;
  v17 = 0;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDBD8);
  v10 = *(*(v13 - 8) + 64);
  v9 = (v10 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v8);
  v15 = &v8 - v9;
  v11 = v9;
  MEMORY[0x28223BE20](v4);
  v16 = &v8 - v11;
  v19 = &v8 - v11;
  LODWORD(v5) = *v5;
  v18 = v5;
  v17 = a2;
  sub_26AFAC774(v5, v6);
  v14 = sub_26AFB51DC();
  sub_26AE9463C(v15, v13, v16);
  sub_26AFB60B0(v15);
  sub_26AFB5D30(v16, v15);
  sub_26AE94B4C(v15, v13, v12);
  sub_26AFB60B0(v15);
  return sub_26AFB60B0(v16);
}

uint64_t sub_26AFAC774@<X0>(unsigned int a1@<W0>, uint64_t a2@<X8>)
{
  v60 = a2;
  v96 = a1;
  v61 = MEMORY[0x277CDEDF8];
  v128 = 0;
  v127 = 0;
  v126 = 0;
  v125 = 0;
  v124 = 0;
  v123 = 0;
  v122 = 0;
  v121 = 0;
  v120 = 0;
  v119 = 0;
  v102 = 0;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDC70);
  v63 = (*(*(v62 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v62);
  v64 = &v28 - v63;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDC80);
  v66 = (*(*(v65 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v65);
  v67 = &v28 - v66;
  v68 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v28 - v66);
  v69 = &v28 - v68;
  v70 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v28 - v68);
  v71 = &v28 - v70;
  v128 = &v28 - v70;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDC60);
  v73 = *(v72 - 8);
  v74 = v72 - 8;
  v75 = (v73[8] + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v72);
  v76 = &v28 - v75;
  v77 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v28 - v75);
  v78 = &v28 - v77;
  v79 = (v6 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v28 - v77);
  v80 = &v28 - v79;
  v127 = &v28 - v79;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDC08);
  v82 = (*(*(v81 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v81);
  v83 = &v28 - v82;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDBF8);
  v85 = (*(*(v84 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v84);
  v86 = &v28 - v85;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDCA0);
  v88 = *(v87 - 8);
  v89 = v87 - 8;
  v90 = (v88[8] + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v87);
  v91 = &v28 - v90;
  v92 = (v7 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v28 - v90);
  v93 = &v28 - v92;
  v94 = (v8 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v28 - v92);
  v95 = &v28 - v94;
  v126 = &v28 - v94;
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDBD8);
  v98 = (*(*(v97 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v96);
  v99 = &v28 - v98;
  v100 = (v9 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v10);
  v101 = &v28 - v100;
  v125 = &v28 - v100;
  v124 = v11;
  v123 = v2;
  if (v11)
  {
    switch(v96)
    {
      case 1u:
        sub_26AFB0E8C(v69);
        v39 = sub_26AFB57B4();
        sub_26AE9463C(v69, v65, v71);
        sub_26AFB6640(v69);
        v120 = v69;
        sub_26AFB66F4(v71, v67);
        sub_26AE94B4C(v67, v65, v69);
        sub_26AFB6640(v67);
        sub_26AFB66F4(v69, v67);
        v20 = sub_26AFB5660();
        sub_26AE94BB0(v67, v65, v72, v39, v20, v64);
        sub_26AFB6640(v67);
        v38 = sub_26AFB5328();
        v21 = sub_26AFB570C();
        sub_26AE94CA8(v64, v81, v62, v38, v21, v86);
        sub_26AFB62F8(v64);
        v22 = sub_26AFB5280();
        sub_26AE94BB0(v86, v84, MEMORY[0x277CE1428], v22, MEMORY[0x277CE1410], v99);
        sub_26AFB6424(v86);
        sub_26AFB59B0(v99, v101);
        sub_26AFB6640(v69);
        sub_26AFB6640(v71);
        break;
      case 2u:
        sub_26AFB061C(v78);
        v47 = sub_26AFB5660();
        sub_26AE9463C(v78, v72, v80);
        v48 = v73[1];
        v49 = v73 + 1;
        v48(v78, v72);
        v119 = v78;
        v41 = v73[2];
        v40 = v73 + 2;
        v41(v76, v80, v72);
        sub_26AE94B4C(v76, v72, v78);
        v48(v76, v72);
        v41(v76, v78, v72);
        v42 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_2803DDC10);
        v43 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DC748);
        v44 = sub_26AFB5484();
        v45 = sub_26AE95974();
        v16 = sub_26AEFDA40();
        v111 = v42;
        v112 = MEMORY[0x277D837D0];
        v113 = v43;
        v114 = MEMORY[0x277CE0BD8];
        v115 = v44;
        v116 = v45;
        v117 = v16;
        v118 = MEMORY[0x277CE0BC8];
        OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
        sub_26AE94CA8(v76, v87, v72, OpaqueTypeConformance2, v47, v83);
        v48(v76, v72);
        v46 = sub_26AFB5328();
        v18 = sub_26AFB570C();
        sub_26AE94BB0(v83, v81, v62, v46, v18, v86);
        sub_26AFB6828(v83);
        v19 = sub_26AFB5280();
        sub_26AE94BB0(v86, v84, MEMORY[0x277CE1428], v19, MEMORY[0x277CE1410], v99);
        sub_26AFB6424(v86);
        sub_26AFB59B0(v99, v101);
        v48(v78, v72);
        v48(v80, v72);
        break;
      case 3u:
        sub_26AFAD9DC(v93);
        v53 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_2803DDC10);
        v54 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DC748);
        v55 = sub_26AFB5484();
        v56 = sub_26AE95974();
        v12 = sub_26AEFDA40();
        v103 = v53;
        v104 = MEMORY[0x277D837D0];
        v105 = v54;
        v106 = MEMORY[0x277CE0BD8];
        v107 = v55;
        v108 = v56;
        v109 = v12;
        v110 = MEMORY[0x277CE0BC8];
        v57 = swift_getOpaqueTypeConformance2();
        sub_26AE9463C(v93, v87, v95);
        v58 = v88[1];
        v59 = v88 + 1;
        v58(v93, v87);
        v102 = v93;
        v51 = v88[2];
        v50 = v88 + 2;
        v51(v91, v95, v87);
        sub_26AE94B4C(v91, v87, v93);
        v58(v91, v87);
        v51(v91, v93, v87);
        v13 = sub_26AFB5660();
        sub_26AE94BB0(v91, v87, v72, v57, v13, v83);
        v58(v91, v87);
        v52 = sub_26AFB5328();
        v14 = sub_26AFB570C();
        sub_26AE94BB0(v83, v81, v62, v52, v14, v86);
        sub_26AFB6828(v83);
        v15 = sub_26AFB5280();
        sub_26AE94BB0(v86, v84, MEMORY[0x277CE1428], v15, MEMORY[0x277CE1410], v99);
        sub_26AFB6424(v86);
        sub_26AFB59B0(v99, v101);
        v58(v93, v87);
        v58(v95, v87);
        break;
      default:
        v122 = v80;
        sub_26AFB1AB8(v78);
        v35 = sub_26AFB5660();
        sub_26AE9463C(v78, v72, v80);
        v36 = v73[1];
        v37 = v73 + 1;
        v36(v78, v72);
        v121 = v78;
        v33 = v73[2];
        v32 = v73 + 2;
        v33(v76, v80, v72);
        sub_26AE94B4C(v76, v72, v78);
        v36(v76, v72);
        v33(v76, v78, v72);
        v23 = sub_26AFB57B4();
        sub_26AE94CA8(v76, v65, v72, v23, v35, v64);
        v36(v76, v72);
        v34 = sub_26AFB5328();
        v24 = sub_26AFB570C();
        sub_26AE94CA8(v64, v81, v62, v34, v24, v86);
        sub_26AFB62F8(v64);
        v25 = sub_26AFB5280();
        sub_26AE94BB0(v86, v84, MEMORY[0x277CE1428], v25, MEMORY[0x277CE1410], v99);
        sub_26AFB6424(v86);
        sub_26AFB59B0(v99, v101);
        v36(v78, v72);
        v36(v80, v72);
        break;
    }
  }

  else
  {
    sub_26B079B90();
    v29 = MEMORY[0x277CE1428];
    v30 = MEMORY[0x277CE1410];
    sub_26AE9463C(v31, MEMORY[0x277CE1428], v31);
    sub_26AE94B4C(v31, v29, v31);
    v26 = sub_26AFB5280();
    sub_26AE94CA8(v31, v84, v29, v26, v30, v99);
    sub_26AFB59B0(v99, v101);
  }

  sub_26AFB5D30(v101, v99);
  sub_26AFB51DC();
  sub_26AE94B4C(v99, v97, v60);
  sub_26AFB60B0(v99);
  return sub_26AFB60B0(v101);
}

uint64_t sub_26AFAD9DC@<X0>(uint64_t a1@<X8>)
{
  v47 = a1;
  v29 = 0;
  v16 = sub_26AFB6908;
  v26 = sub_26AFB6910;
  v28 = sub_26AFB044C;
  v44 = MEMORY[0x277CDEDF8];
  v74 = 0;
  v73 = 0;
  v21 = 0;
  v9 = (*(*(sub_26B078300() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0);
  v20 = &v8 - v9;
  v2 = sub_26B079DE0();
  v10 = (*(*(v2 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v2);
  v18 = &v8 - v10;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DDC10);
  v33 = *(v36 - 8);
  v34 = v36 - 8;
  v11 = (*(v33 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v36);
  v35 = &v8 - v11;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDCA0);
  v45 = *(v51 - 8);
  v46 = v51 - 8;
  v12 = (*(v45 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v51);
  v49 = &v8 - v12;
  v13 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v8 - v12);
  v50 = &v8 - v13;
  v74 = &v8 - v13;
  v73 = v1;
  v14 = &v56;
  v57 = v1;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDC30);
  sub_26AFB5530();
  sub_26B079A90();
  *&v17[1] = 1;
  sub_26B079D00();
  sub_26B079D80();
  v19 = *sub_26B02D0D0();
  MEMORY[0x277D82BE0](v19);
  sub_26AEFB5C4();
  v71[2] = 0;
  v71[3] = 0;
  v72 = *v17 & 0x100;
  v4 = sub_26B079E40();
  v32 = v71;
  v71[0] = v4;
  v71[1] = v5;
  v6 = (v1 + *(type metadata accessor for AvailableUpdateProactiveSuggestionView() + 36));
  v22 = *v6;
  v23 = *(v6 + 1);

  v69 = v22;
  v70 = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DC9D0);
  sub_26B0798D0();
  v30 = v66;
  v31 = v67;
  v25 = v68;

  v27 = &v54;
  v55 = v24;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DC748);
  v40 = sub_26AFB5484();
  v41 = sub_26AE95974();
  v42 = sub_26AEFDA40();
  v37 = MEMORY[0x277D837D0];
  v39 = MEMORY[0x277CE0BD8];
  v43 = MEMORY[0x277CE0BC8];
  sub_26B0795E0();

  sub_26AE9BCC0();
  (*(v33 + 8))(v35, v36);
  v58 = v36;
  v59 = v37;
  v60 = v38;
  v61 = v39;
  v62 = v40;
  v63 = v41;
  v64 = v42;
  v65 = v43;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_26AE9463C(v49, v51, v50);
  v53 = *(v45 + 8);
  v52 = v45 + 8;
  v53(v49, v51);
  (*(v45 + 16))(v49, v50, v51);
  sub_26AE94B4C(v49, v51, v47);
  v53(v49, v51);
  return (v53)(v50, v51);
}

uint64_t sub_26AFAE188@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v40 = a2;
  v55 = a1;
  v100 = 0;
  v64 = 0;
  v60 = sub_26B079DC0();
  v58 = *(v60 - 8);
  v59 = v60 - 8;
  v41 = (*(v58 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0);
  v62 = v18 - v41;
  v42 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v3);
  v57 = v18 - v42;
  v43 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v5);
  v61 = v18 - v43;
  v44 = (*(*(sub_26B078300() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v64);
  v66 = v18 - v44;
  v45 = (*(*(sub_26B079DE0() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v55);
  v63 = v18 - v45;
  v100 = v6;
  v67 = 1;
  sub_26B079D00();
  sub_26B079D80();
  v46 = *sub_26B02D0D0();
  MEMORY[0x277D82BE0](v46);
  sub_26AEFB5C4();
  v94[2] = 0;
  v94[3] = 0;
  v95 = 0;
  v72 = 1;
  v96 = v67 & 1;
  v47 = sub_26B079E40();
  v48 = v7;
  v54 = 85;
  sub_26B079DB0();
  sub_26B079D00();
  v49 = v8;
  sub_26B079DA0();

  v50 = *(v55 + 48);

  KeyPath = swift_getKeyPath();
  ReactiveDescriptor.subscript.getter(KeyPath, v94);
  v51 = v94[0];
  v52 = v94[1];

  sub_26B079D90();

  sub_26B079D00();
  v56 = v9;
  sub_26B079DA0();

  (*(v58 + 16))(v57, v61, v60);
  (*(v58 + 32))(v62, v57, v60);
  (*(v58 + 8))(v61, v60);
  sub_26B079DD0();
  v65 = *sub_26B02D0D0();
  MEMORY[0x277D82BE0](v65);
  sub_26AEFB5C4();
  v91[3] = 0;
  v91[4] = 0;
  v92 = 0;
  v93 = v67 & 1;
  v68 = sub_26B079E40();
  v69 = v10;
  v71 = sub_26B079D00();
  v70 = v11;
  v12 = sub_26B079790();
  ProactiveSuggestionView.Icon.init(systemName:fill:)(v71, v70, v12, MEMORY[0x277CE0BD8], MEMORY[0x277CE11C8], MEMORY[0x277CE0BD8], MEMORY[0x277CE11C8], v91);
  v90[0] = v91[0];
  v90[1] = v91[1];
  v90[2] = v91[2];
  v13 = sub_26AFABC30();
  v76 = &v89;
  v89 = v13;
  v75 = &v88;
  v88 = v72;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDBD0);
  v74 = sub_26AFB8E98();
  sub_26AFB7C60();
  v77 = sub_26B07A010();
  sub_26AFB596C();
  if (v77)
  {
    v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDD08);
    v37 = sub_26B07A760();
    sub_26AFAE980(v14);
    v15 = v37;
  }

  else
  {
    v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDD08);
    v35 = sub_26B07A760();
    v34 = v16;
    sub_26AFAEBE4(v16);
    sub_26AFAE980(v34 + *(*(v36 - 8) + 72));
    v15 = v35;
  }

  sub_26AEA3B2C();
  v39 = v15;
  v18[0] = v97;
  ProactiveSuggestionView<>.init(title:description:icon:actions:)(v47, v48, v68, v69, v90, v15, v97);
  v18[1] = v85;
  v18[2] = 80;
  memcpy(v85, v18[0], sizeof(v85));
  v24 = v84;
  memcpy(v84, v85, sizeof(v84));
  v20 = *(v55 + 32);
  v19 = *(v55 + 40);

  v82 = v20;
  v83 = v19 & 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DB510);
  sub_26B078A10();
  v21 = v81;

  v23 = ReactiveUIManager.isBusy.getter();

  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DDC40);
  sub_26AFB55D8();
  v25 = &v98;
  sub_26B0796A0();
  sub_26AFB7CDC(v24);
  v26 = v86;
  v29 = 104;
  memcpy(v86, v25, sizeof(v86));
  v27 = v80;
  memcpy(v80, v86, sizeof(v80));
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDC30);
  v31 = sub_26AFB5530();
  v33 = v99;
  sub_26AE9463C(v27, v30, v99);
  sub_26AFB8F20(v27);
  v28 = v87;
  memcpy(v87, v33, v29);
  sub_26AFB8FE0(v28, &v79);
  v32 = v78;
  memcpy(v78, v28, v29);
  sub_26AE94B4C(v32, v30, v40);
  sub_26AFB8F20(v32);
  return sub_26AFB8F20(v33);
}

uint64_t sub_26AFAE980@<X0>(uint64_t a1@<X8>)
{
  v15 = a1;
  v16 = 0;
  v20 = sub_26AFB43EC;
  v18 = sub_26AFB6AC4;
  v21 = 0;
  v9 = 0;
  updated = type metadata accessor for AvailableUpdateProactiveSuggestionView();
  v6 = *(updated - 8);
  v11 = v6;
  v12 = *(v6 + 64);
  v7 = (v12 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](updated);
  v14 = &v6 - v7;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DC758);
  v8 = (*(*(v3 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v3);
  v17 = &v6 - v8;
  v21 = v1;
  sub_26B078960();
  v4 = sub_26B078980();
  (*(*(v4 - 8) + 56))(v17, 0, 1);
  sub_26AFB4A80(v10, v14);
  v13 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v19 = swift_allocObject();
  sub_26AFB4F68(v14, v19 + v13);
  return ProactiveSuggestionView.Action.init(label:role:action:)(v20, v16, v17, v18, v19, MEMORY[0x277CE0BD8], MEMORY[0x277CE11C8], MEMORY[0x277CE0BD8], v15, MEMORY[0x277CE11C8], MEMORY[0x277CE0BD8], MEMORY[0x277CE0BC8], MEMORY[0x277CE11C0], MEMORY[0x277CE0BC8], MEMORY[0x277CE11C0], MEMORY[0x277CE0BC8]);
}

uint64_t sub_26AFAEBE4@<X0>(uint64_t a1@<X8>)
{
  v14 = a1;
  v15 = 0;
  v19 = sub_26AFB3760;
  v17 = sub_26AFB6CD4;
  v20 = 0;
  v7 = 0;
  updated = type metadata accessor for AvailableUpdateProactiveSuggestionView();
  v5 = *(updated - 8);
  v10 = v5;
  v11 = *(v5 + 64);
  v6 = (v11 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](updated);
  v13 = &v5 - v6;
  v8 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DC758) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v7);
  v16 = &v5 - v8;
  v20 = v1;
  v3 = sub_26B078980();
  (*(*(v3 - 8) + 56))(v16, 1);
  sub_26AFB4A80(v9, v13);
  v12 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v18 = swift_allocObject();
  sub_26AFB4F68(v13, v18 + v12);
  return ProactiveSuggestionView.Action.init(label:role:action:)(v19, v15, v16, v17, v18, MEMORY[0x277CE0BD8], MEMORY[0x277CE11C8], MEMORY[0x277CE0BD8], v14, MEMORY[0x277CE11C8], MEMORY[0x277CE0BD8], MEMORY[0x277CE0BC8], MEMORY[0x277CE11C0], MEMORY[0x277CE0BC8], MEMORY[0x277CE11C0], MEMORY[0x277CE0BC8]);
}

uint64_t sub_26AFAEE48@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  v44 = a1;
  v50 = sub_26AFB89BC;
  v24 = sub_26AFB00F8;
  v72 = 0;
  v71 = 0;
  v68 = 0;
  v39 = 0;
  updated = type metadata accessor for AvailableUpdateProactiveSuggestionView();
  v25 = *(updated - 8);
  v45 = v25;
  v46 = *(v25 + 64);
  v26 = (v46 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](updated);
  v48 = &v17 - v26;
  v27 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DC758) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v39);
  v49 = &v17 - v27;
  v28 = (*(*(sub_26B078300() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v39);
  v38 = &v17 - v28;
  v3 = sub_26B079DE0();
  v29 = (*(*(v3 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v3);
  v36 = &v17 - v29;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DDD20);
  v56 = *(v58 - 8);
  v57 = v58 - 8;
  v30 = (v56[8] + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v44);
  v31 = &v17 - v30;
  v32 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v5);
  v33 = &v17 - v32;
  v34 = (v6 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v7);
  v61 = &v17 - v34;
  v35 = (v8 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v9);
  v54 = &v17 - v35;
  v72 = &v17 - v35;
  v71 = v10;
  *&v40[1] = 1;
  sub_26B079D00();
  sub_26B079D80();
  v37 = *sub_26B02D0D0();
  MEMORY[0x277D82BE0](v37);
  sub_26AEFB5C4();
  v69[2] = 0;
  v69[3] = 0;
  v70 = *v40 & 0x100;
  v11 = sub_26B079E40();
  v52 = v69;
  v69[0] = v11;
  v69[1] = v12;
  sub_26B078960();
  v41 = sub_26B078980();
  v13 = *(v41 - 8);
  v42 = *(v13 + 56);
  v43 = v13 + 56;
  v42(v49, 0, *&v40[1]);
  sub_26AFB4A80(v44, v48);
  v47 = (*(v45 + 80) + 16) & ~*(v45 + 80);
  v51 = swift_allocObject();
  sub_26AFB4F68(v48, v51 + v47);
  v53 = sub_26AE95974();
  sub_26B079910();
  v55 = sub_26AE9C224();
  sub_26AE9463C(v61, v58, v54);
  v59 = v56[1];
  v60 = v56 + 1;
  v59(v61, v58);
  v68 = v61;
  v18 = 0x100000000;
  sub_26B079D00();
  sub_26B079D80();
  v17 = *sub_26B02D0D0();
  MEMORY[0x277D82BE0](v17);
  sub_26AEFB5C4();
  v66[2] = 0;
  v66[3] = 0;
  v67 = *(&v18 + 3) & 0x100;
  v14 = sub_26B079E40();
  v19 = v66;
  v66[0] = v14;
  v66[1] = v15;
  sub_26B078970();
  (v42)(v49, v18, HIDWORD(v18), v41);
  sub_26B079910();
  sub_26AE9463C(v33, v58, v61);
  v59(v33, v58);
  v21 = v56[2];
  v20 = v56 + 2;
  v21(v33, v54, v58);
  v22 = v65;
  v65[0] = v33;
  v21(v31, v61, v58);
  v65[1] = v31;
  v64[0] = v58;
  v64[1] = v58;
  v62 = v55;
  v63 = v55;
  sub_26AFD49C4(v22, 2uLL, v64, v23);
  v59(v31, v58);
  v59(v33, v58);
  v59(v61, v58);
  return (v59)(v54, v58);
}

uint64_t sub_26AFAF6EC(uint64_t *a1)
{
  v41 = a1;
  v48 = 0;
  v56 = 0;
  v34 = 0;
  updated = type metadata accessor for AvailableUpdateProactiveSuggestionView();
  v35 = *(updated - 8);
  v36 = v35;
  v37 = *(v35 + 64);
  MEMORY[0x28223BE20](updated - 8);
  v38 = &v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DCC00) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v48);
  v40 = &v14 - v39;
  v42 = sub_26B078580();
  v43 = *(v42 - 8);
  v44 = v43;
  MEMORY[0x28223BE20](v41);
  v45 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = v4;
  sub_26B078550();
  v50 = sub_26B078570();
  v46 = v50;
  v49 = sub_26B07A2A0();
  v47 = v49;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DBB00);
  v51 = sub_26B07A760();
  if (os_log_type_enabled(v50, v49))
  {
    v5 = v34;
    v25 = sub_26B07A420();
    v21 = v25;
    v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DCED0);
    v23 = 0;
    v26 = sub_26AEA3B70(0);
    v24 = v26;
    v27 = sub_26AEA3B70(v23);
    v55 = v25;
    v54 = v26;
    v53 = v27;
    v28 = 0;
    v29 = &v55;
    sub_26AEA3BC4(0, &v55);
    sub_26AEA3BC4(v28, v29);
    v52 = v51;
    v30 = &v14;
    MEMORY[0x28223BE20](&v14);
    v31 = &v14 - 6;
    *(&v14 - 4) = v6;
    *(&v14 - 3) = &v54;
    *(&v14 - 2) = &v53;
    v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DBB10);
    sub_26AE9CC18();
    sub_26B079FF0();
    v33 = v5;
    if (v5)
    {
      __break(1u);
    }

    else
    {
      _os_log_impl(&dword_26AE88000, v46, v47, "User Action: Clicked 'Cancel Auto Install' on the updateScheduledView confirmation Dialog", v21, 2u);
      v19 = 0;
      sub_26AEA3C24(v24);
      sub_26AEA3C24(v27);
      sub_26B07A400();

      v20 = v33;
    }
  }

  else
  {

    v20 = v34;
  }

  (*(v44 + 8))(v45, v42);
  sub_26B07A140();
  v16 = 0;
  v7 = sub_26B07A160();
  (*(*(v7 - 8) + 56))(v40, 0, 1);
  sub_26AFB4A80(v41, v38);
  v15 = (*(v36 + 80) + 32) & ~*(v36 + 80);
  v8 = swift_allocObject();
  v9 = v15;
  v10 = v16;
  v11 = v8;
  v12 = v38;
  v17 = v11;
  *(v11 + 16) = v16;
  *(v11 + 24) = v10;
  sub_26AFB4F68(v12, v11 + v9);
  v18 = sub_26AFF12B8(v16, v16, v40, &unk_26B08DC70, v17, MEMORY[0x277D839B0]);
  sub_26AEA08A4(v40);
}

uint64_t sub_26AFAFC88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[8] = a4;
  v4[7] = a1;
  v4[4] = v4;
  v4[5] = 0;
  v4[5] = a4;
  return MEMORY[0x2822009F8](sub_26AFAFCC8, 0, 0);
}

uint64_t sub_26AFAFCC8()
{
  *(v0 + 32) = v0;
  sub_26B07A130();
  *(v0 + 72) = sub_26B07A120();
  v3 = sub_26B07A0C0();

  return MEMORY[0x2822009F8](sub_26AFAFD68, v3, v1);
}

uint64_t sub_26AFAFD68()
{
  v1 = *(v0 + 64);
  *(v0 + 32) = v0;
  v5 = *(v1 + 32);
  v4 = *(v1 + 40);

  *(v0 + 16) = v5;
  *(v0 + 24) = v4 & 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DB510);
  sub_26B078A10();
  *(v0 + 80) = *(v0 + 48);

  v2 = swift_task_alloc();
  *(v6 + 88) = v2;
  *v2 = *(v6 + 32);
  v2[1] = sub_26AFAFE88;

  return ReactiveUIManager.unscheduleTargetedUpdate(delegate:)(0);
}

uint64_t sub_26AFAFE88(char a1)
{
  v5 = *v2;
  *(v5 + 32) = *v2;
  *(v5 + 25) = a1;
  *(v5 + 96) = v1;

  if (v1)
  {
    v3 = sub_26AFB005C;
  }

  else
  {

    v3 = sub_26AFB000C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_26AFB000C()
{
  v1 = *(v0 + 25);
  v2 = *(v0 + 56);
  *(v0 + 32) = v0;
  *v2 = v1;
  return (*(*(v0 + 32) + 8))();
}

uint64_t sub_26AFB005C()
{
  *(v0 + 32) = v0;

  v1 = *(*(v0 + 32) + 8);

  return v1();
}

uint64_t sub_26AFB00F8()
{
  v26 = 0;
  v19 = 0;
  v20 = sub_26B078580();
  v21 = *(v20 - 8);
  v22 = v21;
  MEMORY[0x28223BE20](v20 - 8);
  v23 = v4 - ((v0 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26B078550();
  v28 = sub_26B078570();
  v24 = v28;
  v27 = sub_26B07A2A0();
  v25 = v27;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DBB00);
  v29 = sub_26B07A760();
  if (os_log_type_enabled(v28, v27))
  {
    v1 = v19;
    v10 = sub_26B07A420();
    v6 = v10;
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DCED0);
    v8 = 0;
    v11 = sub_26AEA3B70(0);
    v9 = v11;
    v12 = sub_26AEA3B70(v8);
    v33 = v10;
    v32 = v11;
    v31 = v12;
    v13 = 0;
    v14 = &v33;
    sub_26AEA3BC4(0, &v33);
    sub_26AEA3BC4(v13, v14);
    v30 = v29;
    v15 = v4;
    MEMORY[0x28223BE20](v4);
    v16 = &v4[-6];
    v4[-4] = v2;
    v4[-3] = &v32;
    v4[-2] = &v31;
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DBB10);
    sub_26AE9CC18();
    sub_26B079FF0();
    v18 = v1;
    if (v1)
    {
      __break(1u);
    }

    else
    {
      _os_log_impl(&dword_26AE88000, v24, v25, "User Action: Clicked 'Don’t Cancel' on the updateScheduledView's confirmation Dialog in AvailableUpdateProactiveSuggestionView", v6, 2u);
      v4[1] = 0;
      sub_26AEA3C24(v9);
      sub_26AEA3C24(v12);
      sub_26B07A400();

      v5 = v18;
    }
  }

  else
  {

    v5 = v19;
  }

  return (*(v22 + 8))(v23, v20);
}

uint64_t sub_26AFB044C@<X0>(uint64_t a1@<X8>)
{
  v25 = 0u;
  v26 = 0u;
  HIBYTE(v8) = 1;
  sub_26B079D00();
  sub_26B078E10();
  v1 = sub_26B02D0D0();
  MEMORY[0x277D82BE0](*v1);
  v22 = 0;
  v23 = 0;
  v24 = v8 & 0x100;
  v18 = sub_26B0792C0();
  v19 = v2;
  v20 = v3;
  v21 = v4;
  v15[0] = v18;
  v15[1] = v2;
  v16 = v3 & 1;
  v17 = v4;
  v11 = MEMORY[0x277CE0BD8];
  sub_26AE9463C(v15, MEMORY[0x277CE0BD8], &v25);
  sub_26AE95B40(v15);
  v6 = v25;
  v7 = v26;
  v9 = *(&v26 + 1);
  sub_26AE95D28(v25, *(&v25 + 1), v26 & 1);
  sub_26B078640();
  v12 = v6;
  v13 = v7 & 1;
  v14 = v9;
  sub_26AE94B4C(&v12, v11, a1);
  sub_26AE95B40(&v12);
  return sub_26AE95B40(&v25);
}

uint64_t sub_26AFB061C@<X0>(uint64_t a1@<X8>)
{
  v11 = a1;
  v8 = sub_26AFB6D38;
  v21 = 0;
  v20 = 0;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDC60);
  v9 = *(v15 - 8);
  v10 = v15 - 8;
  v4 = (*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v15);
  v13 = &v4 - v4;
  v5 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v4 - v4);
  v14 = &v4 - v5;
  v21 = &v4 - v5;
  v20 = v1;
  v6 = &v18;
  v19 = v1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DDC40);
  sub_26AFB55D8();
  sub_26B079A90();
  v12 = sub_26AFB5660();
  sub_26AE9463C(v13, v15, v14);
  v17 = *(v9 + 8);
  v16 = v9 + 8;
  v17(v13, v15);
  (*(v9 + 16))(v13, v14, v15);
  sub_26AE94B4C(v13, v15, v11);
  v17(v13, v15);
  return (v17)(v14, v15);
}

uint64_t sub_26AFB0818@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v34 = a2;
  v52 = 0;
  v38 = v51;
  v33 = 80;
  memset(v51, 0, sizeof(v51));
  v16 = 0;
  v12 = (*(*(sub_26B078300() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0);
  v18 = &v12 - v12;
  v3 = sub_26B079DE0();
  v13 = (*(*(v3 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v3);
  v15 = &v12 - v13;
  v52 = a1;
  v19 = 1;
  sub_26B079D00();
  sub_26B079D80();
  v14 = *sub_26B02D0D0();
  MEMORY[0x277D82BE0](v14);
  sub_26AEFB5C4();
  v46 = 0;
  v47 = 0;
  v48 = 0;
  v49 = v19 & 1;
  v28 = sub_26B079E40();
  v24 = v4;
  sub_26B079D00();
  sub_26B079D80();
  v17 = *sub_26B02D0D0();
  MEMORY[0x277D82BE0](v17);
  sub_26AEFB5C4();
  v43[3] = 0;
  v43[4] = 0;
  v44 = 0;
  v45 = v19 & 1;
  v25 = sub_26B079E40();
  v26 = v5;
  v21 = sub_26B079D00();
  v20 = v6;
  v7 = [objc_opt_self() tertiaryLabelColor];
  v8 = sub_26B079750();
  ProactiveSuggestionView.Icon.init(systemName:fill:)(v21, v20, v8, MEMORY[0x277CE0BD8], MEMORY[0x277CE11C8], MEMORY[0x277CE0BD8], MEMORY[0x277CE11C8], v43);
  v27 = v42;
  v42[0] = v43[0];
  v42[1] = v43[1];
  v42[2] = v43[2];
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDD08);
  v22 = sub_26B07A760();
  sub_26AFB0C28(v9);
  v10 = v22;
  sub_26AEA3B2C();
  v29 = v50;
  ProactiveSuggestionView<>.init(title:description:icon:actions:)(v28, v24, v25, v26, v27, v10, v50);
  v30 = __dst;
  memcpy(__dst, v29, v33);
  v31 = v41;
  memcpy(v41, v30, v33);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DDC40);
  v36 = sub_26AFB55D8();
  sub_26AE9463C(v31, v35, v38);
  sub_26AFB7CDC(v31);
  v32 = v54;
  memcpy(v54, v38, v33);
  sub_26AFB7D84(v32, &v40);
  v37 = v39;
  memcpy(v39, v32, v33);
  sub_26AE94B4C(v37, v35, v34);
  sub_26AFB7CDC(v37);
  return sub_26AFB7CDC(v38);
}

uint64_t sub_26AFB0C28@<X0>(uint64_t a1@<X8>)
{
  v14 = a1;
  v15 = 0;
  v19 = sub_26AFB207C;
  v17 = sub_26AFB6EEC;
  v20 = 0;
  v7 = 0;
  updated = type metadata accessor for AvailableUpdateProactiveSuggestionView();
  v5 = *(updated - 8);
  v10 = v5;
  v11 = *(v5 + 64);
  v6 = (v11 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](updated);
  v13 = &v5 - v6;
  v8 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DC758) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v7);
  v16 = &v5 - v8;
  v20 = v1;
  v3 = sub_26B078980();
  (*(*(v3 - 8) + 56))(v16, 1);
  sub_26AFB4A80(v9, v13);
  v12 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v18 = swift_allocObject();
  sub_26AFB4F68(v13, v18 + v12);
  return ProactiveSuggestionView.Action.init(label:role:action:)(v19, v15, v16, v17, v18, MEMORY[0x277CE0BD8], MEMORY[0x277CE11C8], MEMORY[0x277CE0BD8], v14, MEMORY[0x277CE11C8], MEMORY[0x277CE0BD8], MEMORY[0x277CE0BC8], MEMORY[0x277CE11C0], MEMORY[0x277CE0BC8], MEMORY[0x277CE11C0], MEMORY[0x277CE0BC8]);
}

uint64_t sub_26AFB0E8C@<X0>(uint64_t a1@<X8>)
{
  v16 = a1;
  v37 = 0;
  v36 = 0;
  v35 = 0;
  v34 = 0;
  v33 = 0;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDC60);
  v18 = *(v17 - 8);
  v19 = v18;
  v21 = *(v18 + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v23 = (v21 + 15) & 0xFFFFFFFFFFFFFFF0;
  v20 = v6 - v23;
  MEMORY[0x28223BE20](v6 - v23);
  v22 = v6 - v23;
  MEMORY[0x28223BE20](v2);
  v24 = v6 - v23;
  v37 = v6 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDC80);
  v27 = *(*(v25 - 8) + 64);
  MEMORY[0x28223BE20](v25 - 8);
  v29 = (v27 + 15) & 0xFFFFFFFFFFFFFFF0;
  v26 = v6 - v29;
  MEMORY[0x28223BE20](v6 - v29);
  v28 = v6 - v29;
  MEMORY[0x28223BE20](v6 - v29);
  v30 = v6 - v29;
  v36 = v6 - v29;
  v35 = v1;
  v31 = *(v1 + 48);

  v32 = ReactiveDescriptor.updateError.getter();
  if (v32)
  {
    v15 = v32;
    v11 = v32;
    v34 = v32;

    v3 = v11;
    v10 = v6;
    MEMORY[0x28223BE20](v6);
    v8 = &v6[-4];
    v6[-2] = v11;
    v6[-1] = v4;
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DDC40);
    sub_26AFB55D8();
    sub_26B079A90();

    v12 = sub_26AFB5660();
    sub_26AE9463C(v22, v17, v24);
    v13 = *(v19 + 8);
    v14 = (v19 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v13(v22, v17);
    v33 = v22;
    v7 = *(v19 + 16);
    v6[1] = v19 + 16;
    v7(v20, v24, v17);
    sub_26AE94B4C(v20, v17, v22);
    v13(v20, v17);
    v7(v26, v22, v17);
    (*(v19 + 56))(v26, 0, 1, v17);
    sub_26AF09CCC(v26, v17, v28);
    sub_26AFB6640(v26);
    sub_26AFB6F50(v28, v30);
    v13(v22, v17);
    v13(v24, v17);
  }

  else
  {

    (*(v19 + 56))(v26, 1, 1, v17);
    sub_26AFB5660();
    sub_26AF09CCC(v26, v17, v28);
    sub_26AFB6640(v26);
    sub_26AFB6F50(v28, v30);
  }

  sub_26AFB66F4(v30, v28);
  sub_26AFB57B4();
  sub_26AE94B4C(v28, v25, v16);
  sub_26AFB6640(v28);
  return sub_26AFB6640(v30);
}

uint64_t sub_26AFB1348@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  memset(__b, 0, sizeof(__b));
  v51 = a1;
  v50 = a2;
  v33 = *(a2 + 48);

  v32 = *(v33 + 24);
  MEMORY[0x277D82BE0](v32);

  v36 = *(a2 + 32);
  v35 = *(a2 + 40);

  v46 = v36;
  v47 = v35 & 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DB510);
  sub_26B078A10();

  v37 = ReactiveUIManager.currentDownload.getter();

  if (v37)
  {
    v28 = *(v37 + 16);
    MEMORY[0x277D82BE0](v28);

    swift_getObjectType();
    v29 = v28;
  }

  else
  {
    v29 = 0;
  }

  v21 = SUUIStatefulError.heading(_:download:)(v32, v29);
  v22 = v3;
  swift_unknownObjectRelease();
  MEMORY[0x277D82BD8](v32);
  v24 = *(a2 + 48);

  v23 = *(v24 + 24);
  MEMORY[0x277D82BE0](v23);

  sub_26AFAAB3C();
  v26 = *(a2 + 32);
  v25 = *(a2 + 40);

  v44[4] = v26;
  v45 = v25 & 1;
  sub_26B078A10();

  v27 = ReactiveUIManager.currentDownload.getter();

  if (v27)
  {
    MEMORY[0x277D82BE0](*(v27 + 16));

    swift_getObjectType();
  }

  v15 = SUUIStatefulError.body(_:platform:download:)(v23);
  v16 = v4;
  swift_unknownObjectRelease();

  MEMORY[0x277D82BD8](v23);
  v18 = sub_26B079D00();
  v17 = v5;
  v6 = sub_26B0797A0();
  v9 = MEMORY[0x277CE11C0];
  v10 = MEMORY[0x277CE0BC8];
  v11 = MEMORY[0x277CE11C0];
  ProactiveSuggestionView.Icon.init(systemName:fill:)(v18, v17, v6, MEMORY[0x277CE0BD8], MEMORY[0x277CE11C8], MEMORY[0x277CE0BD8], MEMORY[0x277CE11C8], v44);
  v43[0] = v44[0];
  v43[1] = v44[1];
  v43[2] = v44[2];
  v19 = [a1 traits];
  swift_getObjectType();
  v20 = [v19 insufficientDiskSpace];
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDD08);
  if (v20)
  {
    v13 = sub_26B07A760();
    sub_26AFB1854(v7);
    sub_26AEA3B2C();
    v14 = v13;
  }

  else
  {
    v14 = sub_26B079C40();
  }

  ProactiveSuggestionView<>.init(title:description:icon:actions:)(v21, v22, v15, v16, v43, v14, v48);
  memcpy(__dst, v48, sizeof(__dst));
  memcpy(v40, __dst, sizeof(v40));
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DDC40);
  sub_26AFB55D8();
  sub_26AE9463C(v40, v12, __b);
  sub_26AFB7CDC(v40);
  memcpy(v42, __b, sizeof(v42));
  sub_26AFB7D84(v42, v39);
  memcpy(v38, v42, sizeof(v38));
  sub_26AE94B4C(v38, v12, a3);
  sub_26AFB7CDC(v38);
  return sub_26AFB7CDC(__b);
}

uint64_t sub_26AFB1854@<X0>(uint64_t a1@<X8>)
{
  v14 = a1;
  v15 = 0;
  v19 = sub_26AFB2D00;
  v17 = sub_26AFB723C;
  v20 = 0;
  v7 = 0;
  updated = type metadata accessor for AvailableUpdateProactiveSuggestionView();
  v5 = *(updated - 8);
  v10 = v5;
  v11 = *(v5 + 64);
  v6 = (v11 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](updated);
  v13 = &v5 - v6;
  v8 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DC758) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v7);
  v16 = &v5 - v8;
  v20 = v1;
  v3 = sub_26B078980();
  (*(*(v3 - 8) + 56))(v16, 1);
  sub_26AFB4A80(v9, v13);
  v12 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v18 = swift_allocObject();
  sub_26AFB4F68(v13, v18 + v12);
  return ProactiveSuggestionView.Action.init(label:role:action:)(v19, v15, v16, v17, v18, MEMORY[0x277CE0BD8], MEMORY[0x277CE11C8], MEMORY[0x277CE0BD8], v14, MEMORY[0x277CE11C8], MEMORY[0x277CE0BD8], MEMORY[0x277CE0BC8], MEMORY[0x277CE11C0], MEMORY[0x277CE0BC8], MEMORY[0x277CE11C0], MEMORY[0x277CE0BC8]);
}

uint64_t sub_26AFB1AB8@<X0>(uint64_t a1@<X8>)
{
  v11 = a1;
  v6 = 0;
  v8 = sub_26AFB1CAC;
  v19 = 0;
  v18 = 0;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDC60);
  v9 = *(v15 - 8);
  v10 = v15 - 8;
  v4 = (*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v15);
  v13 = &v4 - v4;
  v5 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v4 - v4);
  v14 = &v4 - v5;
  v19 = &v4 - v5;
  v18 = v1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DDC40);
  sub_26AFB55D8();
  sub_26B079A90();
  v12 = sub_26AFB5660();
  sub_26AE9463C(v13, v15, v14);
  v17 = *(v9 + 8);
  v16 = v9 + 8;
  v17(v13, v15);
  (*(v9 + 16))(v13, v14, v15);
  sub_26AE94B4C(v13, v15, v11);
  v17(v13, v15);
  return (v17)(v14, v15);
}

uint64_t sub_26AFB1CAC@<X0>(uint64_t a1@<X8>)
{
  v29 = a1;
  v33 = __b;
  v28 = 80;
  memset(__b, 0, sizeof(__b));
  v13 = 0;
  v9 = (*(*(sub_26B078300() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0);
  v15 = &v8 - v9;
  v1 = sub_26B079DE0();
  v10 = (*(*(v1 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v1);
  v12 = &v8 - v10;
  v16 = 1;
  sub_26B079D00();
  sub_26B079D80();
  v11 = *sub_26B02D0D0();
  MEMORY[0x277D82BE0](v11);
  sub_26AEFB5C4();
  v41 = 0;
  v42 = 0;
  v43 = 0;
  v44 = v16 & 1;
  v23 = sub_26B079E40();
  v19 = v2;
  sub_26B079D00();
  sub_26B079D80();
  v14 = *sub_26B02D0D0();
  MEMORY[0x277D82BE0](v14);
  sub_26AEFB5C4();
  v38[3] = 0;
  v38[4] = 0;
  v39 = 0;
  v40 = v16 & 1;
  v20 = sub_26B079E40();
  v21 = v3;
  v18 = sub_26B079D00();
  v17 = v4;
  v5 = sub_26B0797A0();
  ProactiveSuggestionView.Icon.init(systemName:fill:)(v18, v17, v5, MEMORY[0x277CE0BD8], MEMORY[0x277CE11C8], MEMORY[0x277CE0BD8], MEMORY[0x277CE11C8], v38);
  v22 = v37;
  v37[0] = v38[0];
  v37[1] = v38[1];
  v37[2] = v38[2];
  v6 = sub_26AFB2048();
  v24 = v45;
  ProactiveSuggestionView<>.init(title:description:icon:actions:)(v23, v19, v20, v21, v22, v6, v45);
  v25 = __dst;
  memcpy(__dst, v24, v28);
  v26 = v36;
  memcpy(v36, v25, v28);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DDC40);
  v31 = sub_26AFB55D8();
  sub_26AE9463C(v26, v30, v33);
  sub_26AFB7CDC(v26);
  v27 = v48;
  memcpy(v48, v33, v28);
  sub_26AFB7D84(v27, &v35);
  v32 = v34;
  memcpy(v34, v27, v28);
  sub_26AE94B4C(v32, v30, v29);
  sub_26AFB7CDC(v32);
  return sub_26AFB7CDC(v33);
}

uint64_t sub_26AFB207C@<X0>(uint64_t a1@<X8>)
{
  v25 = 0u;
  v26 = 0u;
  HIBYTE(v8) = 1;
  sub_26B079D00();
  sub_26B078E10();
  v1 = sub_26B02D0D0();
  MEMORY[0x277D82BE0](*v1);
  v22 = 0;
  v23 = 0;
  v24 = v8 & 0x100;
  v18 = sub_26B0792C0();
  v19 = v2;
  v20 = v3;
  v21 = v4;
  v15[0] = v18;
  v15[1] = v2;
  v16 = v3 & 1;
  v17 = v4;
  v11 = MEMORY[0x277CE0BD8];
  sub_26AE9463C(v15, MEMORY[0x277CE0BD8], &v25);
  sub_26AE95B40(v15);
  v6 = v25;
  v7 = v26;
  v9 = *(&v26 + 1);
  sub_26AE95D28(v25, *(&v25 + 1), v26 & 1);
  sub_26B078640();
  v12 = v6;
  v13 = v7 & 1;
  v14 = v9;
  sub_26AE94B4C(&v12, v11, a1);
  sub_26AE95B40(&v12);
  return sub_26AE95B40(&v25);
}

uint64_t sub_26AFB224C(uint64_t *a1)
{
  v41 = a1;
  v48 = 0;
  v56 = 0;
  v34 = 0;
  updated = type metadata accessor for AvailableUpdateProactiveSuggestionView();
  v35 = *(updated - 8);
  v36 = v35;
  v37 = *(v35 + 64);
  MEMORY[0x28223BE20](updated - 8);
  v38 = &v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DCC00) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v48);
  v40 = &v14 - v39;
  v42 = sub_26B078580();
  v43 = *(v42 - 8);
  v44 = v43;
  MEMORY[0x28223BE20](v41);
  v45 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = v4;
  sub_26B078550();
  v50 = sub_26B078570();
  v46 = v50;
  v49 = sub_26B07A2A0();
  v47 = v49;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DBB00);
  v51 = sub_26B07A760();
  if (os_log_type_enabled(v50, v49))
  {
    v5 = v34;
    v25 = sub_26B07A420();
    v21 = v25;
    v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DCED0);
    v23 = 0;
    v26 = sub_26AEA3B70(0);
    v24 = v26;
    v27 = sub_26AEA3B70(v23);
    v55 = v25;
    v54 = v26;
    v53 = v27;
    v28 = 0;
    v29 = &v55;
    sub_26AEA3BC4(0, &v55);
    sub_26AEA3BC4(v28, v29);
    v52 = v51;
    v30 = &v14;
    MEMORY[0x28223BE20](&v14);
    v31 = &v14 - 6;
    *(&v14 - 4) = v6;
    *(&v14 - 3) = &v54;
    *(&v14 - 2) = &v53;
    v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DBB10);
    sub_26AE9CC18();
    sub_26B079FF0();
    v33 = v5;
    if (v5)
    {
      __break(1u);
    }

    else
    {
      _os_log_impl(&dword_26AE88000, v46, v47, "User Action: Clicked 'Install Once Downloaded' on the automaticUpdateInProgressView in AvailableUpdateProactiveSuggestionView", v21, 2u);
      v19 = 0;
      sub_26AEA3C24(v24);
      sub_26AEA3C24(v27);
      sub_26B07A400();

      v20 = v33;
    }
  }

  else
  {

    v20 = v34;
  }

  (*(v44 + 8))(v45, v42);
  sub_26B07A140();
  v16 = 0;
  v7 = sub_26B07A160();
  (*(*(v7 - 8) + 56))(v40, 0, 1);
  sub_26AFB4A80(v41, v38);
  v15 = (*(v36 + 80) + 32) & ~*(v36 + 80);
  v8 = swift_allocObject();
  v9 = v15;
  v10 = v16;
  v11 = v8;
  v12 = v38;
  v17 = v11;
  *(v11 + 16) = v16;
  *(v11 + 24) = v10;
  sub_26AFB4F68(v12, v11 + v9);
  v18 = sub_26AFF12B8(v16, v16, v40, &unk_26B08DC48, v17, MEMORY[0x277D839B0]);
  sub_26AEA08A4(v40);
}

uint64_t sub_26AFB27E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[8] = a4;
  v4[7] = a1;
  v4[4] = v4;
  v4[5] = 0;
  v4[5] = a4;
  return MEMORY[0x2822009F8](sub_26AFB2828, 0, 0);
}

uint64_t sub_26AFB2828()
{
  *(v0 + 32) = v0;
  sub_26B07A130();
  *(v0 + 72) = sub_26B07A120();
  v3 = sub_26B07A0C0();

  return MEMORY[0x2822009F8](sub_26AFB28C8, v3, v1);
}

uint64_t sub_26AFB28C8()
{
  v1 = *(v0 + 64);
  *(v0 + 32) = v0;
  v4 = *(v1 + 32);
  v3 = *(v1 + 40);

  *(v0 + 16) = v4;
  *(v0 + 24) = v3 & 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DB510);
  sub_26B078A10();
  *(v0 + 80) = *(v0 + 48);

  return MEMORY[0x2822009F8](sub_26AFB29A4, 0, 0);
}

uint64_t sub_26AFB29A4()
{
  v1 = v0[8];
  v0[4] = v0;
  v5 = *(v1 + 48);
  v0[11] = v5;

  v2 = swift_task_alloc();
  *(v4 + 96) = v2;
  *v2 = *(v4 + 32);
  v2[1] = sub_26AFB2A70;

  return ReactiveUIManager.promoteTargetedUpdate(_:delegate:)(v5, 0);
}

uint64_t sub_26AFB2A70(char a1)
{
  v5 = *v2;
  *(v5 + 32) = *v2;
  *(v5 + 25) = a1;
  *(v5 + 104) = v1;

  if (v1)
  {
    v3 = sub_26AFB2C54;
  }

  else
  {

    v3 = sub_26AFB2C04;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_26AFB2C04()
{
  v1 = *(v0 + 25);
  v2 = *(v0 + 56);
  *(v0 + 32) = v0;
  *v2 = v1;
  return (*(*(v0 + 32) + 8))();
}

uint64_t sub_26AFB2C54()
{
  *(v0 + 32) = v0;

  v1 = *(*(v0 + 32) + 8);

  return v1();
}

uint64_t sub_26AFB2D00@<X0>(uint64_t a1@<X8>)
{
  v25 = 0u;
  v26 = 0u;
  HIBYTE(v8) = 1;
  sub_26B079D00();
  sub_26B078E10();
  v1 = sub_26B02D0D0();
  MEMORY[0x277D82BE0](*v1);
  v22 = 0;
  v23 = 0;
  v24 = v8 & 0x100;
  v18 = sub_26B0792C0();
  v19 = v2;
  v20 = v3;
  v21 = v4;
  v15[0] = v18;
  v15[1] = v2;
  v16 = v3 & 1;
  v17 = v4;
  v11 = MEMORY[0x277CE0BD8];
  sub_26AE9463C(v15, MEMORY[0x277CE0BD8], &v25);
  sub_26AE95B40(v15);
  v6 = v25;
  v7 = v26;
  v9 = *(&v26 + 1);
  sub_26AE95D28(v25, *(&v25 + 1), v26 & 1);
  sub_26B078640();
  v12 = v6;
  v13 = v7 & 1;
  v14 = v9;
  sub_26AE94B4C(&v12, v11, a1);
  sub_26AE95B40(&v12);
  return sub_26AE95B40(&v25);
}

uint64_t sub_26AFB2ED0(uint64_t *a1)
{
  v53 = a1;
  v60 = 0;
  v72 = 0;
  v71 = 0;
  v39 = 0;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DC130);
  v41 = (*(*(v40 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0);
  v42 = (&v12 - v41);
  v43 = sub_26B078B00();
  v44 = *(v43 - 8);
  v45 = v44;
  MEMORY[0x28223BE20](v43 - 8);
  v46 = &v12 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DC9E0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v60);
  v48 = &v12 - v47;
  v49 = sub_26B0781B0();
  v50 = *(v49 - 8);
  v51 = v50;
  MEMORY[0x28223BE20](v60);
  v52 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = v52;
  v54 = sub_26B078580();
  v55 = *(v54 - 8);
  v56 = v55;
  MEMORY[0x28223BE20](v53);
  v57 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = v4;
  sub_26B078550();
  v62 = sub_26B078570();
  v58 = v62;
  v61 = sub_26B07A2A0();
  v59 = v61;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DBB00);
  v63 = sub_26B07A760();
  if (os_log_type_enabled(v62, v61))
  {
    v5 = v39;
    v30 = sub_26B07A420();
    v26 = v30;
    v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DCED0);
    v28 = 0;
    v31 = sub_26AEA3B70(0);
    v29 = v31;
    v32 = sub_26AEA3B70(v28);
    v67[0] = v30;
    v66 = v31;
    v65 = v32;
    v33 = 0;
    v34 = v67;
    sub_26AEA3BC4(0, v67);
    sub_26AEA3BC4(v33, v34);
    v64 = v63;
    v35 = &v12;
    MEMORY[0x28223BE20](&v12);
    v36 = &v12 - 6;
    *(&v12 - 4) = v6;
    *(&v12 - 3) = &v66;
    *(&v12 - 2) = &v65;
    v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DBB10);
    sub_26AE9CC18();
    sub_26B079FF0();
    v38 = v5;
    if (v5)
    {
      __break(1u);
    }

    else
    {
      _os_log_impl(&dword_26AE88000, v58, v59, "User Action: Clicked 'Manage Storage' on errorView in in AvailableUpdateProactiveSuggestionView", v26, 2u);
      v24 = 0;
      sub_26AEA3C24(v29);
      sub_26AEA3C24(v32);
      sub_26B07A400();

      v25 = v38;
    }
  }

  else
  {

    v25 = v39;
  }

  (*(v56 + 8))(v57, v54);
  v20 = *v53;
  v21 = *(v53 + 8);
  sub_26AF07734();
  v69 = v20;
  v70 = v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DC9C0);
  sub_26B078A10();
  v23 = v68;
  v22 = v68;
  sub_26AF072D8();
  if (v23)
  {
    v19 = v22;
    v15 = v22;
    v16 = v53[6];

    v17 = ReactiveDescriptor.role.getter();

    v67[2] = v17;
    v67[1] = 0;
    v18 = type metadata accessor for SUUIStatefulDescriptorRole();
    sub_26AF2D17C();
    v7 = sub_26B07A790();
    if (v7)
    {
      v14 = 18;
    }

    else
    {
      v14 = 25;
    }

    ReactiveAnalyticsReporter.submitNavigation(_:)(v14);
  }

  v13 = 1;
  sub_26B079D00();
  v12 = v8;
  sub_26B0781A0();

  if ((*(v51 + 48))(v48, v13, v49) == 1)
  {
    return sub_26AEC02C0(v48);
  }

  v10 = v42;
  (*(v51 + 32))(v52, v48, v49);
  updated = type metadata accessor for AvailableUpdateProactiveSuggestionView();
  sub_26AEC26F8((v53 + *(updated + 32)), v10);
  sub_26B078A10();
  sub_26AEC27CC(v42);
  sub_26B078AF0();
  (*(v45 + 8))(v46, v43);
  return (*(v51 + 8))(v52, v49);
}

uint64_t sub_26AFB3760@<X0>(uint64_t a1@<X8>)
{
  v25 = 0u;
  v26 = 0u;
  HIBYTE(v8) = 1;
  sub_26B079D00();
  sub_26B078E10();
  v1 = sub_26B02D0D0();
  MEMORY[0x277D82BE0](*v1);
  v22 = 0;
  v23 = 0;
  v24 = v8 & 0x100;
  v18 = sub_26B0792C0();
  v19 = v2;
  v20 = v3;
  v21 = v4;
  v15[0] = v18;
  v15[1] = v2;
  v16 = v3 & 1;
  v17 = v4;
  v11 = MEMORY[0x277CE0BD8];
  sub_26AE9463C(v15, MEMORY[0x277CE0BD8], &v25);
  sub_26AE95B40(v15);
  v6 = v25;
  v7 = v26;
  v9 = *(&v26 + 1);
  sub_26AE95D28(v25, *(&v25 + 1), v26 & 1);
  sub_26B078640();
  v12 = v6;
  v13 = v7 & 1;
  v14 = v9;
  sub_26AE94B4C(&v12, v11, a1);
  sub_26AE95B40(&v12);
  return sub_26AE95B40(&v25);
}

uint64_t sub_26AFB3930(uint64_t *a1)
{
  v42 = a1;
  v49 = 0;
  v57 = 0;
  v35 = 0;
  updated = type metadata accessor for AvailableUpdateProactiveSuggestionView();
  v36 = *(updated - 8);
  v37 = v36;
  v38 = *(v36 + 64);
  MEMORY[0x28223BE20](updated - 8);
  v39 = &v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DCC00) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v49);
  v41 = &v15 - v40;
  v43 = sub_26B078580();
  v44 = *(v43 - 8);
  v45 = v44;
  MEMORY[0x28223BE20](v42);
  v46 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = v4;
  sub_26B078550();
  v51 = sub_26B078570();
  v47 = v51;
  v50 = sub_26B07A2A0();
  v48 = v50;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DBB00);
  v52 = sub_26B07A760();
  if (os_log_type_enabled(v51, v50))
  {
    v5 = v35;
    v26 = sub_26B07A420();
    v22 = v26;
    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DCED0);
    v24 = 0;
    v27 = sub_26AEA3B70(0);
    v25 = v27;
    v28 = sub_26AEA3B70(v24);
    v56 = v26;
    v55 = v27;
    v54 = v28;
    v29 = 0;
    v30 = &v56;
    sub_26AEA3BC4(0, &v56);
    sub_26AEA3BC4(v29, v30);
    v53 = v52;
    v31 = &v15;
    MEMORY[0x28223BE20](&v15);
    v32 = &v15 - 6;
    *(&v15 - 4) = v6;
    *(&v15 - 3) = &v55;
    *(&v15 - 2) = &v54;
    v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DBB10);
    sub_26AE9CC18();
    sub_26B079FF0();
    v34 = v5;
    if (v5)
    {
      __break(1u);
    }

    else
    {
      _os_log_impl(&dword_26AE88000, v47, v48, "User Action: Clicked 'Update Now' in updateScheduledView in AvailableUpdateProactiveSuggestionView", v22, 2u);
      v20 = 0;
      sub_26AEA3C24(v25);
      sub_26AEA3C24(v28);
      sub_26B07A400();

      v21 = v34;
    }
  }

  else
  {

    v21 = v35;
  }

  (*(v45 + 8))(v46, v43);
  sub_26B07A140();
  v18 = 0;
  v7 = sub_26B07A160();
  (*(*(v7 - 8) + 56))(v41, 0, 1);
  sub_26AFB4A80(v42, v39);
  v16 = (*(v37 + 80) + 32) & ~*(v37 + 80);
  v8 = swift_allocObject();
  v9 = v16;
  v10 = v18;
  v11 = v8;
  v12 = v39;
  v17 = v11;
  *(v11 + 16) = v18;
  *(v11 + 24) = v10;
  sub_26AFB4F68(v12, v11 + v9);
  v13 = sub_26AFB874C();
  v19 = sub_26AFF12B8(v18, v18, v41, &unk_26B08DC58, v17, v13);
  sub_26AEA08A4(v41);
}

uint64_t sub_26AFB3ED4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[8] = a4;
  v4[7] = a1;
  v4[4] = v4;
  v4[5] = 0;
  v4[5] = a4;
  return MEMORY[0x2822009F8](sub_26AFB3F14, 0, 0);
}

uint64_t sub_26AFB3F14()
{
  *(v0 + 32) = v0;
  sub_26B07A130();
  *(v0 + 72) = sub_26B07A120();
  v3 = sub_26B07A0C0();

  return MEMORY[0x2822009F8](sub_26AFB3FB4, v3, v1);
}

uint64_t sub_26AFB3FB4()
{
  v1 = *(v0 + 64);
  *(v0 + 32) = v0;
  v4 = *(v1 + 32);
  v3 = *(v1 + 40);

  *(v0 + 16) = v4;
  *(v0 + 24) = v3 & 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DB510);
  sub_26B078A10();
  *(v0 + 80) = *(v0 + 48);

  return MEMORY[0x2822009F8](sub_26AFB4090, 0, 0);
}

uint64_t sub_26AFB4090()
{
  v1 = v0[8];
  v0[4] = v0;
  v5 = *(v1 + 48);
  v0[11] = v5;

  v2 = swift_task_alloc();
  *(v4 + 96) = v2;
  *v2 = *(v4 + 32);
  v2[1] = sub_26AFB415C;

  return ReactiveUIManager.install(_:delegate:)(v5, 0);
}

uint64_t sub_26AFB415C(uint64_t a1)
{
  v5 = *v2;
  v5[4] = *v2;
  v5[13] = a1;
  v5[14] = v1;

  if (v1)
  {
    v3 = sub_26AFB4340;
  }

  else
  {

    v3 = sub_26AFB42F0;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_26AFB42F0()
{
  v1 = v0[13];
  v2 = v0[7];
  v0[4] = v0;
  *v2 = v1;
  return (*(v0[4] + 8))();
}

uint64_t sub_26AFB4340()
{
  *(v0 + 32) = v0;

  v1 = *(*(v0 + 32) + 8);

  return v1();
}

uint64_t sub_26AFB43EC@<X0>(uint64_t a1@<X8>)
{
  v25 = 0u;
  v26 = 0u;
  HIBYTE(v8) = 1;
  sub_26B079D00();
  sub_26B078E10();
  v1 = sub_26B02D0D0();
  MEMORY[0x277D82BE0](*v1);
  v22 = 0;
  v23 = 0;
  v24 = v8 & 0x100;
  v18 = sub_26B0792C0();
  v19 = v2;
  v20 = v3;
  v21 = v4;
  v15[0] = v18;
  v15[1] = v2;
  v16 = v3 & 1;
  v17 = v4;
  v11 = MEMORY[0x277CE0BD8];
  sub_26AE9463C(v15, MEMORY[0x277CE0BD8], &v25);
  sub_26AE95B40(v15);
  v6 = v25;
  v7 = v26;
  v9 = *(&v26 + 1);
  sub_26AE95D28(v25, *(&v25 + 1), v26 & 1);
  sub_26B078640();
  v12 = v6;
  v13 = v7 & 1;
  v14 = v9;
  sub_26AE94B4C(&v12, v11, a1);
  sub_26AE95B40(&v12);
  return sub_26AE95B40(&v25);
}

uint64_t sub_26AFB45BC(uint64_t a1)
{
  v27 = a1;
  v34 = 0;
  v45 = 0;
  v26 = 0;
  v28 = sub_26B078580();
  v29 = *(v28 - 8);
  v30 = v29;
  MEMORY[0x28223BE20](v27);
  v31 = &v7[-((v1 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v45 = v2;
  sub_26B078550();
  v36 = sub_26B078570();
  v32 = v36;
  v35 = sub_26B07A2A0();
  v33 = v35;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DBB00);
  v37 = sub_26B07A760();
  if (os_log_type_enabled(v36, v35))
  {
    v3 = v26;
    v17 = sub_26B07A420();
    v13 = v17;
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DCED0);
    v15 = 0;
    v18 = sub_26AEA3B70(0);
    v16 = v18;
    v19 = sub_26AEA3B70(v15);
    v41 = v17;
    v40 = v18;
    v39 = v19;
    v20 = 0;
    v21 = &v41;
    sub_26AEA3BC4(0, &v41);
    sub_26AEA3BC4(v20, v21);
    v38 = v37;
    v22 = v7;
    MEMORY[0x28223BE20](v7);
    v23 = &v7[-48];
    *&v7[-32] = v4;
    *&v7[-24] = &v40;
    *&v7[-16] = &v39;
    v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DBB10);
    sub_26AE9CC18();
    sub_26B079FF0();
    v25 = v3;
    if (v3)
    {
      __break(1u);
    }

    else
    {
      _os_log_impl(&dword_26AE88000, v32, v33, "User Action: Clicked 'Cancel Update' in updateScheduledView in AvailableUpdateProactiveSuggestionView", v13, 2u);
      v11 = 0;
      sub_26AEA3C24(v16);
      sub_26AEA3C24(v19);
      sub_26B07A400();

      v12 = v25;
    }
  }

  else
  {

    v12 = v26;
  }

  (*(v30 + 8))(v31, v28);
  v5 = (v27 + *(type metadata accessor for AvailableUpdateProactiveSuggestionView() + 36));
  v8 = *v5;
  v10 = *(v5 + 1);

  v43 = v8;
  v44 = v10;
  v42 = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DC9D0);
  v9 = &v43;
  sub_26B0798C0();
  sub_26AE91DC8();
}

uint64_t sub_26AFB4A80(uint64_t *a1, uint64_t a2)
{
  v8 = *a1;
  v9 = *(a1 + 8);
  sub_26AF07734();
  *a2 = v8;
  *(a2 + 8) = v9 & 1;
  v10 = a1[2];
  v11 = *(a1 + 24);

  *(a2 + 16) = v10;
  *(a2 + 24) = v11 & 1;
  v12 = a1[4];
  v13 = *(a1 + 40);

  *(a2 + 32) = v12;
  *(a2 + 40) = v13 & 1;
  v15 = a1[6];

  *(a2 + 48) = v15;
  updated = type metadata accessor for AvailableUpdateProactiveSuggestionView();
  v17 = *(updated + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DDBB0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v2 = sub_26B078B00();
    (*(*(v2 - 8) + 16))();
  }

  else
  {
    v7 = *(a1 + v17);

    *(a2 + v17) = v7;
  }

  swift_storeEnumTagMultiPayload();
  v3 = *(updated + 36);
  v5 = a2 + v3;
  *(a2 + v3) = *(a1 + v3);
  v6 = *(a1 + v3 + 8);

  result = a2;
  *(v5 + 8) = v6;
  return result;
}

uint64_t sub_26AFB4CA8(uint64_t a1)
{
  sub_26AF072D8();

  v3 = *(type metadata accessor for AvailableUpdateProactiveSuggestionView() + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DDBB0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v1 = sub_26B078B00();
    (*(*(v1 - 8) + 8))(a1 + v3);
  }

  else
  {
  }

  return a1;
}

uint64_t sub_26AFB4DBC()
{
  updated = type metadata accessor for AvailableUpdateProactiveSuggestionView();
  v0 = *(*(updated - 8) + 80);
  v4 = (v0 + 16) & ~v0;
  sub_26AF072D8();

  v6 = *(updated + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DDBB0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v1 = sub_26B078B00();
    (*(*(v1 - 8) + 8))(v3 + v4 + v6);
  }

  else
  {
  }

  return swift_deallocObject();
}

__n128 sub_26AFB4F68(uint64_t a1, uint64_t a2)
{
  *a2 = *a1;
  *(a2 + 8) = *(a1 + 8);
  *(a2 + 16) = *(a1 + 16);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 32) = *(a1 + 32);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 48) = *(a1 + 48);
  updated = type metadata accessor for AvailableUpdateProactiveSuggestionView();
  v6 = *(updated + 32);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DDBB0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v2 = sub_26B078B00();
    (*(*(v2 - 8) + 32))();
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    memcpy((a2 + v6), (a1 + v6), *(*(v8 - 8) + 64));
  }

  result = *(a1 + *(updated + 36));
  *(a2 + *(updated + 36)) = result;
  return result;
}

uint64_t sub_26AFB50D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  updated = type metadata accessor for AvailableUpdateProactiveSuggestionView();
  v4 = v2 + ((*(*(updated - 8) + 80) + 16) & ~*(*(updated - 8) + 80));

  return sub_26AFAC624(a1, v4, a2);
}

unint64_t sub_26AFB5154()
{
  v2 = qword_2803DDBE0;
  if (!qword_2803DDBE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DDBD0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DDBE0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_26AFB51DC()
{
  v2 = qword_2803DDBE8;
  if (!qword_2803DDBE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DDBD8);
    sub_26AFB5280();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DDBE8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_26AFB5280()
{
  v2 = qword_2803DDBF0;
  if (!qword_2803DDBF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DDBF8);
    sub_26AFB5328();
    sub_26AFB570C();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DDBF0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_26AFB5328()
{
  v2 = qword_2803DDC00;
  if (!qword_2803DDC00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DDC08);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_2803DDC10);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DC748);
    sub_26AFB5484();
    sub_26AE95974();
    sub_26AEFDA40();
    swift_getOpaqueTypeConformance2();
    sub_26AFB5660();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DDC00);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_26AFB5484()
{
  v2 = qword_2803DDC20;
  if (!qword_2803DDC20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_2803DDC10);
    sub_26AFB5530();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DDC20);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_26AFB5530()
{
  v2 = qword_2803DDC28;
  if (!qword_2803DDC28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DDC30);
    sub_26AFB55D8();
    sub_26AE9C354();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DDC28);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_26AFB55D8()
{
  v2 = qword_2803DDC38;
  if (!qword_2803DDC38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_2803DDC40);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DDC38);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_26AFB5660()
{
  v2 = qword_2803DDC58;
  if (!qword_2803DDC58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DDC60);
    sub_26AFB55D8();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DDC58);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_26AFB570C()
{
  v2 = qword_2803DDC68;
  if (!qword_2803DDC68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DDC70);
    sub_26AFB57B4();
    sub_26AFB5660();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DDC68);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_26AFB57B4()
{
  v2 = qword_2803DDC78;
  if (!qword_2803DDC78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DDC80);
    sub_26AFB5660();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DDC78);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_26AFB584C()
{
  v2 = qword_2803DDC88;
  if (!qword_2803DDC88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DDBC8);
    sub_26AFB51DC();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DDC88);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_26AFB58E4()
{
  v2 = qword_2803DDC98;
  if (!qword_2803DDC98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DDBD0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DDC98);
    return WitnessTable;
  }

  return v2;
}

void *sub_26AFB59B0(const void *a1, void *a2)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDCA8);
  if (swift_getEnumCaseMultiPayload())
  {
    memcpy(a2, a1, *(*(v10 - 8) + 64));
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDCB0);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDCC0);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDC60);
        (*(*(v4 - 8) + 32))(a2, a1);
        swift_storeEnumTagMultiPayload();
      }

      else
      {
        v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDC60);
        v7 = *(v6 - 8);
        if ((*(v7 + 48))(a1, 1))
        {
          v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDC80);
          memcpy(a2, a1, *(*(v3 - 8) + 64));
        }

        else
        {
          (*(v7 + 32))(a2, a1, v6);
          (*(v7 + 56))(a2, 0, 1, v6);
        }

        swift_storeEnumTagMultiPayload();
      }

      swift_storeEnumTagMultiPayload();
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDCB8);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDC60);
      }

      else
      {
        v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDCA0);
      }

      (*(*(v2 - 8) + 32))(a2, a1);
      swift_storeEnumTagMultiPayload();
      swift_storeEnumTagMultiPayload();
    }

    swift_storeEnumTagMultiPayload();
  }

  return a2;
}

void *sub_26AFB5D30(const void *a1, void *a2)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDCA8);
  if (swift_getEnumCaseMultiPayload())
  {
    memcpy(a2, a1, *(*(v10 - 8) + 64));
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDCB0);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDCC0);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDC60);
        (*(*(v4 - 8) + 16))(a2, a1);
        swift_storeEnumTagMultiPayload();
      }

      else
      {
        v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDC60);
        v7 = *(v6 - 8);
        if ((*(v7 + 48))(a1, 1))
        {
          v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDC80);
          memcpy(a2, a1, *(*(v3 - 8) + 64));
        }

        else
        {
          (*(v7 + 16))(a2, a1, v6);
          (*(v7 + 56))(a2, 0, 1, v6);
        }

        swift_storeEnumTagMultiPayload();
      }

      swift_storeEnumTagMultiPayload();
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDCB8);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDC60);
      }

      else
      {
        v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDCA0);
      }

      (*(*(v2 - 8) + 16))(a2, a1);
      swift_storeEnumTagMultiPayload();
      swift_storeEnumTagMultiPayload();
    }

    swift_storeEnumTagMultiPayload();
  }

  return a2;
}

uint64_t sub_26AFB60B0(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDCA8);
  if (!swift_getEnumCaseMultiPayload())
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDCB0);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDCC0);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDC60);
        (*(*(v2 - 8) + 8))(a1);
      }

      else
      {
        v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDC60);
        v5 = *(v4 - 8);
        if (!(*(v5 + 48))(a1, 1))
        {
          (*(v5 + 8))(a1, v4);
        }
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDCB8);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDC60);
      }

      else
      {
        v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDCA0);
      }

      (*(*(v1 - 8) + 8))(a1);
    }
  }

  return a1;
}

uint64_t sub_26AFB62F8(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDCC0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDC60);
    (*(*(v1 - 8) + 8))(a1);
  }

  else
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDC60);
    v4 = *(v3 - 8);
    if (!(*(v4 + 48))(a1, 1))
    {
      (*(v4 + 8))(a1, v3);
    }
  }

  return a1;
}

uint64_t sub_26AFB6424(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDCB0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDCC0);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDC60);
      (*(*(v2 - 8) + 8))(a1);
    }

    else
    {
      v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDC60);
      v5 = *(v4 - 8);
      if (!(*(v5 + 48))(a1, 1))
      {
        (*(v5 + 8))(a1, v4);
      }
    }
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDCB8);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDC60);
    }

    else
    {
      v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDCA0);
    }

    (*(*(v1 - 8) + 8))(a1);
  }

  return a1;
}

uint64_t sub_26AFB6640(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDC60);
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1))
  {
    (*(v4 + 8))(a1, v3);
  }

  return a1;
}

void *sub_26AFB66F4(const void *a1, void *a2)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDC60);
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a1, 1))
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDC80);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v7 + 16))(a2, a1, v6);
    (*(v7 + 56))(a2, 0, 1, v6);
  }

  return a2;
}

uint64_t sub_26AFB6828(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDCB8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDC60);
  }

  else
  {
    v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDCA0);
  }

  (*(*(v1 - 8) + 8))(a1);
  return a1;
}

uint64_t sub_26AFB6918()
{
  updated = type metadata accessor for AvailableUpdateProactiveSuggestionView();
  v0 = *(*(updated - 8) + 80);
  v4 = (v0 + 16) & ~v0;
  sub_26AF072D8();

  v6 = *(updated + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DDBB0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v1 = sub_26B078B00();
    (*(*(v1 - 8) + 8))(v3 + v4 + v6);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_26AFB6AC4()
{
  v1 = *(type metadata accessor for AvailableUpdateProactiveSuggestionView() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_26AFB45BC(v2);
}

uint64_t sub_26AFB6B28()
{
  updated = type metadata accessor for AvailableUpdateProactiveSuggestionView();
  v0 = *(*(updated - 8) + 80);
  v4 = (v0 + 16) & ~v0;
  sub_26AF072D8();

  v6 = *(updated + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DDBB0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v1 = sub_26B078B00();
    (*(*(v1 - 8) + 8))(v3 + v4 + v6);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_26AFB6CD4()
{
  v1 = *(type metadata accessor for AvailableUpdateProactiveSuggestionView() - 8);
  v2 = (v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80)));

  return sub_26AFB3930(v2);
}

uint64_t sub_26AFB6D40()
{
  updated = type metadata accessor for AvailableUpdateProactiveSuggestionView();
  v0 = *(*(updated - 8) + 80);
  v4 = (v0 + 16) & ~v0;
  sub_26AF072D8();

  v6 = *(updated + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DDBB0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v1 = sub_26B078B00();
    (*(*(v1 - 8) + 8))(v3 + v4 + v6);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_26AFB6EEC()
{
  v1 = *(type metadata accessor for AvailableUpdateProactiveSuggestionView() - 8);
  v2 = (v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80)));

  return sub_26AFB224C(v2);
}

void *sub_26AFB6F50(const void *a1, void *a2)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDC60);
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a1, 1))
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDC80);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v7 + 32))(a2, a1, v6);
    (*(v7 + 56))(a2, 0, 1, v6);
  }

  return a2;
}

uint64_t sub_26AFB7090()
{
  updated = type metadata accessor for AvailableUpdateProactiveSuggestionView();
  v0 = *(*(updated - 8) + 80);
  v4 = (v0 + 16) & ~v0;
  sub_26AF072D8();

  v6 = *(updated + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DDBB0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v1 = sub_26B078B00();
    (*(*(v1 - 8) + 8))(v3 + v4 + v6);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_26AFB723C()
{
  v1 = *(type metadata accessor for AvailableUpdateProactiveSuggestionView() - 8);
  v2 = (v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80)));

  return sub_26AFB2ED0(v2);
}

uint64_t sub_26AFB72C8(uint64_t a1, unsigned int a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v6 = -1;
    if (*(a1 + 48) < 0x100000000uLL)
    {
      v6 = *(a1 + 48);
    }

    return (v6 + 1);
  }

  else
  {
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DC130);
    if (a2 == *(*(v4 - 8) + 84))
    {
      return (*(*(v4 - 8) + 48))(a1 + *(a3 + 32), a2, v4);
    }

    else
    {
      __break(1u);
    }
  }

  return v5;
}

uint64_t sub_26AFB7414(uint64_t result, unsigned int a2, int a3, uint64_t a4)
{
  v4 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 48) = a2 - 1;
  }

  else
  {
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DC130);
    if (a3 == *(*(result - 8) + 84))
    {
      return (*(*(result - 8) + 56))(v4 + *(a4 + 32), a2, a2, result);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_26AFB7510()
{
  v7 = sub_26AFB76B0();
  if (v0 <= 0x3F)
  {
    v7 = sub_26AF7BC6C();
    if (v1 <= 0x3F)
    {
      v7 = sub_26AE96B4C();
      if (v2 <= 0x3F)
      {
        v7 = type metadata accessor for ReactiveDescriptor();
        if (v3 <= 0x3F)
        {
          v7 = sub_26AED59A8();
          if (v4 <= 0x3F)
          {
            v7 = sub_26AE96C84();
            if (v5 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
              return 0;
            }
          }
        }
      }
    }
  }

  return v7;
}

uint64_t sub_26AFB76B0()
{
  v4 = qword_2803DDCD8;
  if (!qword_2803DDCD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_2803DDCE0);
    v3 = sub_26B078A20();
    v4 = v3;
    if (!v0)
    {
      v1 = v3;
      atomic_store(v3, &qword_2803DDCD8);
      return v1;
    }
  }

  return v4;
}

uint64_t sub_26AFB7754(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 <= 0xFB)
    {
      goto LABEL_15;
    }

    v7 = ((a2 + 4) >> 8) + 1;
    v8 = 1;
    if (v7 >= 0x100)
    {
      if (v7 >= 0x10000)
      {
        v2 = 4;
      }

      else
      {
        v2 = 2;
      }

      v8 = v2;
    }

    if (v8 == 1)
    {
      v6 = a1[1];
    }

    else
    {
      v6 = v8 == 2 ? *(a1 + 1) : *(a1 + 1);
    }

    if (v6)
    {
      v5 = (*a1 | ((v6 - 1) << 8)) + 251;
    }

    else
    {
LABEL_15:
      v3 = *a1 - 5;
      if (v3 < 0)
      {
        v3 = -1;
      }

      v5 = v3;
    }
  }

  else
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *sub_26AFB78BC(_BYTE *result, unsigned int a2, unsigned int a3)
{
  v7 = 0;
  if (a3 > 0xFB)
  {
    v5 = ((a3 + 4) >> 8) + 1;
    v6 = 1;
    if (v5 >= 0x100)
    {
      if (v5 >= 0x10000)
      {
        v3 = 4;
      }

      else
      {
        v3 = 2;
      }

      v6 = v3;
    }

    v7 = v6;
  }

  if (a2 > 0xFB)
  {
    v4 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
    if (v7)
    {
      if (v7 == 1)
      {
        result[1] = v4;
      }

      else if (v7 == 2)
      {
        *(result + 1) = v4;
      }

      else
      {
        *(result + 1) = v4;
      }
    }
  }

  else
  {
    if (v7)
    {
      if (v7 == 1)
      {
        result[1] = 0;
      }

      else if (v7 == 2)
      {
        *(result + 1) = 0;
      }

      else
      {
        *(result + 1) = 0;
      }
    }

    if (a2)
    {
      *result = a2 + 4;
    }
  }

  return result;
}

uint64_t sub_26AFB7AF8()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_2803DDC10);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DC748);
  sub_26AFB5484();
  sub_26AE95974();
  sub_26AEFDA40();
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_26AFB7C60()
{
  v2 = qword_2803DDD00;
  if (!qword_2803DDD00)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DDD00);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_26AFB7CDC(uint64_t a1)
{
  if (*(a1 + 24))
  {
    sub_26AE95AFC(*a1, *(a1 + 8), *(a1 + 16) & 1);
  }

  if (*(a1 + 56))
  {
    sub_26AE95AFC(*(a1 + 32), *(a1 + 40), *(a1 + 48) & 1);
  }

  return a1;
}

uint64_t sub_26AFB7D84(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 24))
  {
    v9 = *a1;
    v10 = *(a1 + 8);
    v11 = *(a1 + 16);
    sub_26AE95D28(*a1, v10, v11 & 1);
    *a2 = v9;
    *(a2 + 8) = v10;
    *(a2 + 16) = v11 & 1;
    v12 = *(a1 + 24);
    sub_26B078640();
    *(a2 + 24) = v12;
  }

  else
  {
    *a2 = *a1;
    *(a2 + 16) = *(a1 + 16);
  }

  if (*(a1 + 56))
  {
    v5 = *(a1 + 32);
    v6 = *(a1 + 40);
    v7 = *(a1 + 48);
    sub_26AE95D28(v5, v6, v7 & 1);
    *(a2 + 32) = v5;
    *(a2 + 40) = v6;
    *(a2 + 48) = v7 & 1;
    v8 = *(a1 + 56);
    sub_26B078640();
    *(a2 + 56) = v8;
  }

  else
  {
    *(a2 + 32) = *(a1 + 32);
    *(a2 + 48) = *(a1 + 48);
  }

  v3 = *(a1 + 64);

  *(a2 + 64) = v3;
  v4 = *(a1 + 72);

  result = a2;
  *(a2 + 72) = v4;
  return result;
}

uint64_t sub_26AFB7F34()
{
  updated = type metadata accessor for AvailableUpdateProactiveSuggestionView();
  v0 = *(*(updated - 8) + 80);
  v4 = (v0 + 32) & ~v0;
  swift_unknownObjectRelease();
  sub_26AF072D8();

  v6 = *(updated + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DDBB0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v1 = sub_26B078B00();
    (*(*(v1 - 8) + 8))(v3 + v4 + v6);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_26AFB80EC(uint64_t a1)
{
  v6 = v2;
  *(v2 + 16) = v2;
  v3 = *(type metadata accessor for AvailableUpdateProactiveSuggestionView() - 8);
  v9 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v7 = *(v1 + 16);
  v8 = *(v1 + 24);
  v4 = swift_task_alloc();
  *(v6 + 24) = v4;
  *v4 = *(v6 + 16);
  v4[1] = sub_26AFB8200;

  return sub_26AFB27E8(a1, v7, v8, v1 + v9);
}

uint64_t sub_26AFB8200()
{
  v3 = *v0;
  *(v3 + 16) = *v0;

  v1 = *(*(v3 + 16) + 8);

  return v1();
}

uint64_t sub_26AFB8358()
{
  updated = type metadata accessor for AvailableUpdateProactiveSuggestionView();
  v0 = *(*(updated - 8) + 80);
  v4 = (v0 + 32) & ~v0;
  swift_unknownObjectRelease();
  sub_26AF072D8();

  v6 = *(updated + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DDBB0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v1 = sub_26B078B00();
    (*(*(v1 - 8) + 8))(v3 + v4 + v6);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_26AFB8510(uint64_t a1)
{
  v6 = v2;
  *(v2 + 16) = v2;
  v3 = *(type metadata accessor for AvailableUpdateProactiveSuggestionView() - 8);
  v9 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v7 = *(v1 + 16);
  v8 = *(v1 + 24);
  v4 = swift_task_alloc();
  *(v6 + 24) = v4;
  *v4 = *(v6 + 16);
  v4[1] = sub_26AFB8624;

  return sub_26AFB3ED4(a1, v7, v8, v1 + v9);
}

uint64_t sub_26AFB8624()
{
  v3 = *v0;
  *(v3 + 16) = *v0;

  v1 = *(*(v3 + 16) + 8);

  return v1();
}

unint64_t sub_26AFB874C()
{
  v2 = qword_2803DDD18;
  if (!qword_2803DDD18)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_2803DDD18);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t sub_26AFB8810()
{
  updated = type metadata accessor for AvailableUpdateProactiveSuggestionView();
  v0 = *(*(updated - 8) + 80);
  v4 = (v0 + 16) & ~v0;
  sub_26AF072D8();

  v6 = *(updated + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DDBB0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v1 = sub_26B078B00();
    (*(*(v1 - 8) + 8))(v3 + v4 + v6);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_26AFB89BC()
{
  v1 = *(type metadata accessor for AvailableUpdateProactiveSuggestionView() - 8);
  v2 = (v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80)));

  return sub_26AFAF6EC(v2);
}

uint64_t sub_26AFB8A50()
{
  updated = type metadata accessor for AvailableUpdateProactiveSuggestionView();
  v0 = *(*(updated - 8) + 80);
  v4 = (v0 + 32) & ~v0;
  swift_unknownObjectRelease();
  sub_26AF072D8();

  v6 = *(updated + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DDBB0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v1 = sub_26B078B00();
    (*(*(v1 - 8) + 8))(v3 + v4 + v6);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_26AFB8C08(uint64_t a1)
{
  v6 = v2;
  *(v2 + 16) = v2;
  v3 = *(type metadata accessor for AvailableUpdateProactiveSuggestionView() - 8);
  v9 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v7 = *(v1 + 16);
  v8 = *(v1 + 24);
  v4 = swift_task_alloc();
  *(v6 + 24) = v4;
  *v4 = *(v6 + 16);
  v4[1] = sub_26AFB8D1C;

  return sub_26AFAFC88(a1, v7, v8, v1 + v9);
}

uint64_t sub_26AFB8D1C()
{
  v3 = *v0;
  *(v3 + 16) = *v0;

  v1 = *(*(v3 + 16) + 8);

  return v1();
}

unint64_t sub_26AFB8E98()
{
  v2 = qword_2803DDD30;
  if (!qword_2803DDD30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DDBD0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DDD30);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_26AFB8F20(uint64_t a1)
{
  if (*(a1 + 24))
  {
    sub_26AE95AFC(*a1, *(a1 + 8), *(a1 + 16) & 1);
  }

  if (*(a1 + 56))
  {
    sub_26AE95AFC(*(a1 + 32), *(a1 + 40), *(a1 + 48) & 1);
  }

  return a1;
}

uint64_t sub_26AFB8FE0(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 24))
  {
    v12 = *a1;
    v13 = *(a1 + 8);
    v14 = *(a1 + 16);
    sub_26AE95D28(*a1, v13, v14 & 1);
    *a2 = v12;
    *(a2 + 8) = v13;
    *(a2 + 16) = v14 & 1;
    v15 = *(a1 + 24);
    sub_26B078640();
    *(a2 + 24) = v15;
  }

  else
  {
    *a2 = *a1;
    *(a2 + 16) = *(a1 + 16);
  }

  if (*(a1 + 56))
  {
    v8 = *(a1 + 32);
    v9 = *(a1 + 40);
    v10 = *(a1 + 48);
    sub_26AE95D28(v8, v9, v10 & 1);
    *(a2 + 32) = v8;
    *(a2 + 40) = v9;
    *(a2 + 48) = v10 & 1;
    v11 = *(a1 + 56);
    sub_26B078640();
    *(a2 + 56) = v11;
  }

  else
  {
    *(a2 + 32) = *(a1 + 32);
    *(a2 + 48) = *(a1 + 48);
  }

  v3 = *(a1 + 64);

  *(a2 + 64) = v3;
  v4 = *(a1 + 72);

  *(a2 + 72) = v4;
  v5 = *(a1 + 80);

  *(a2 + 80) = v5;
  v6 = *(a1 + 88);
  v7 = *(a1 + 96);

  result = a2;
  *(a2 + 88) = v6;
  *(a2 + 96) = v7;
  return result;
}

uint64_t sub_26AFB9204@<X0>(uint64_t a1@<X8>)
{
  v3 = *MEMORY[0x277CE0FE0];
  v1 = sub_26B079840();
  return (*(*(v1 - 8) + 104))(a1, v3);
}

uint64_t sub_26AFB9270@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *a1;
  swift_unknownObjectRetain();
  swift_getObjectType();
  v6 = [v4 updateName];
  *a2 = sub_26B079E00();
  a2[1] = v2;
  MEMORY[0x277D82BD8](v6);
  return swift_unknownObjectRelease();
}

uint64_t UpdateSummaryView.presentedDescriptor.getter()
{
  v2 = *v0;

  return v2;
}

uint64_t UpdateSummaryView.presentedDescriptor.setter(uint64_t a1)
{

  *v1 = a1;
}

uint64_t sub_26AFB93C8()
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DB510);
  sub_26B078A10();

  return v1;
}

uint64_t sub_26AFB9454()
{
  v2 = *(v0 + 8);

  return v2;
}

uint64_t sub_26AFB9498(uint64_t a1, char a2)
{

  *(v2 + 8) = a1;
  *(v2 + 16) = a2 & 1;
}

uint64_t sub_26AFB9518()
{
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  v4 = *(v0 + 40);
  v5 = *(v0 + 48);
  v6 = *(v0 + 56);
  sub_26AFB9610(v2, v3, v4, v5, v6 & 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDD60);
  sub_26B078A10();
  sub_26AFB9674(v2, v3, v4, v5, v6 & 1);
  return v7;
}

uint64_t sub_26AFB9610(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5)
  {
  }
}

uint64_t sub_26AFB9674(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5)
  {
  }
}

uint64_t sub_26AFB96D8@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  v5 = *(v1 + 40);
  v6 = *(v1 + 48);
  v7 = *(v1 + 56);
  result = sub_26AFB9610(v3, v4, v5, v6, v7 & 1);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  *(a1 + 32) = v7 & 1;
  return result;
}

uint64_t sub_26AFB9764(uint64_t *a1)
{
  v5 = 0;
  v6 = a1;
  sub_26AFB97B4(a1, v4);
  sub_26AFB983C(a1, v1 + 24);
  return sub_26AFB98B0(a1);
}

uint64_t sub_26AFB97B4(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  v7 = *(a1 + 32);
  sub_26AFB9610(*a1, v4, v5, v6, v7 & 1);
  result = a2;
  *a2 = v3;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5;
  *(a2 + 24) = v6;
  *(a2 + 32) = v7 & 1;
  return result;
}

uint64_t sub_26AFB983C(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = a1[2];
  v6 = a1[3];
  v7 = *(a1 + 32);
  v8 = *a2;
  v9 = *(a2 + 8);
  v10 = *(a2 + 16);
  v11 = *(a2 + 24);
  v12 = *(a2 + 32);
  *a2 = v3;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5;
  *(a2 + 24) = v6;
  *(a2 + 32) = v7 & 1;
  sub_26AFB9674(v8, v9, v10, v11, v12 & 1);
  return a2;
}

double sub_26AFB9938()
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDD68);
  sub_26B0798B0();

  return v1;
}

uint64_t sub_26AFB99BC()
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDD68);
  sub_26B0798C0();
  sub_26AFB9A68();
}

double sub_26AFB9A94()
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDD68);
  sub_26B0798D0();

  return v1;
}

double sub_26AFB9B30()
{
  v2 = *(v0 + 64);

  return v2;
}

uint64_t sub_26AFB9B70(uint64_t a1, double a2)
{

  *(v2 + 64) = a2;
  *(v2 + 72) = a1;
}

double sub_26AFB9C18()
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDD68);
  sub_26B0798B0();

  return v1;
}

uint64_t sub_26AFB9C9C()
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDD68);
  sub_26B0798C0();
  sub_26AFB9A68();
}

double sub_26AFB9D48()
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDD68);
  sub_26B0798D0();

  return v1;
}

double sub_26AFB9DE4()
{
  v2 = *(v0 + 80);

  return v2;
}

uint64_t sub_26AFB9E24(uint64_t a1, double a2)
{

  *(v2 + 80) = a2;
  *(v2 + 88) = a1;
}

uint64_t sub_26AFB9E88()
{
  v2 = *(v0 + 96);
  sub_26AEC1EF4(v2, *(v0 + 104));
  return v2;
}

uint64_t sub_26AFB9ED4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  memset(__b, 0, 0x71uLL);
  swift_getKeyPath();
  sub_26B078A30();
  __b[1] = v20;
  LOBYTE(__b[2]) = v21 & 1;
  swift_getKeyPath();
  sub_26B078A30();
  __b[3] = v15;
  __b[4] = v16;
  __b[5] = v17;
  __b[6] = v18;
  LOBYTE(__b[7]) = v19 & 1;
  sub_26B079730();
  v5 = sub_26AFB98F4();
  __b[8] = v6;
  __b[9] = v5;
  sub_26B079730();
  v7 = sub_26AFB9BD4();
  __b[10] = v8;
  __b[11] = v7;

  __b[0] = a1;
  sub_26AEC1EF4(a2, a3);
  __b[12] = a2;
  __b[13] = a3;
  LOBYTE(__b[14]) = a4;
  sub_26AFBDE64(__b, a5);
  sub_26AED4828(a2, a3);

  return sub_26AFBE008(__b);
}

uint64_t UpdateSummaryView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v31 = a1;
  v11 = sub_26AFBE0A4;
  v39 = 0;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDD70);
  v5 = (*(*(v19 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v19);
  v22 = &v4 - v5;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDD78);
  v6 = (*(*(v23 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v23);
  v25 = &v4 - v6;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDD80);
  v7 = (*(*(v28 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v28);
  v30 = &v4 - v7;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDD88);
  v8 = (*(*(v32 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v32);
  v34 = &v4 - v8;
  v9 = (v1 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v4 - v8);
  v35 = &v4 - v9;
  v39 = &v4 - v9;
  v15 = v40;
  v16 = 113;
  memcpy(v40, v2, 0x71uLL);
  memcpy(__dst, v10, sizeof(__dst));
  v14 = sub_26B078E60();
  sub_26AFBDE64(v15, &v38);
  v12 = v36;
  v36[2] = v15;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDD90);
  sub_26AFBE0AC();
  sub_26B079980();
  sub_26AFBE008(v15);
  memcpy(&v37, v15, v16);
  v21 = sub_26AFB93C8();
  v17 = v40[0];

  v18 = *(v17 + 24);
  MEMORY[0x277D82BE0](v18);

  v20 = [v18 descriptor];
  MEMORY[0x277D82BD8](v18);
  sub_26AFBE134();
  View.withSUUIReactiveUpdateDialogs(manager:presentedDescriptor:)(v21, v20, v19);
  swift_unknownObjectRelease();

  sub_26AFBE1BC(v22);
  v24 = sub_26B079180();
  sub_26AFBE7E4();
  v26 = 0;
  v27 = 1;
  sub_26B079680();
  sub_26AFBE904(v25);
  v29 = sub_26B079160();
  sub_26AFBEEF4();
  sub_26B079680();
  sub_26AFBEF98(v30);
  v33 = sub_26AFBF588();
  sub_26AE9463C(v34, v32, v35);
  sub_26AFBF62C(v34);
  sub_26AFBFC1C(v35, v34);
  sub_26AE94B4C(v34, v32, v31);
  sub_26AFBF62C(v34);
  return sub_26AFBF62C(v35);
}

uint64_t sub_26AFBA4D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v20 = a2;
  v11 = a1;
  v33 = 0;
  v32 = 0;
  v31 = 0;
  v17 = type metadata accessor for ReleaseNotesSummaryView();
  v7 = (*(*(v17 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v17);
  v22 = (&v6 - v7);
  v8 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v6 - v7);
  v24 = (&v6 - v8);
  v33 = &v6 - v8;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDE68);
  v9 = (*(*(v16 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v16);
  v23 = &v6 - v9;
  v10 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v6 - v9);
  v25 = &v6 - v10;
  v32 = &v6 - v10;
  v31 = v4;
  memcpy(__dst, v4, sizeof(__dst));
  sub_26AFBA7F4(v23);
  v18 = sub_26AFC0808();
  sub_26AE9463C(v23, v16, v25);
  sub_26AFC0890(v23);
  v12 = *v11;

  v13 = *(v11 + 96);
  v14 = *(v11 + 104);
  v15 = *(v11 + 112);
  sub_26AEC1EF4(v13, v14);
  sub_26AF25BA4(v12, v13, v14, v15, v22);
  v19 = sub_26AFC48C8();
  sub_26AE9463C(v22, v17, v24);
  sub_26AF2933C(v22);
  sub_26AFC0CE4(v25, v23);
  v21 = v29;
  v29[0] = v23;
  sub_26AF29160(v24, v22);
  v29[1] = v22;
  v28[0] = v16;
  v28[1] = v17;
  v26 = v18;
  v27 = v19;
  sub_26AFD49C4(v21, 2uLL, v28, v20);
  sub_26AF2933C(v22);
  sub_26AFC0890(v23);
  sub_26AF2933C(v24);
  return sub_26AFC0890(v25);
}

uint64_t sub_26AFBA7F4@<X0>(uint64_t a1@<X8>)
{
  v13 = a1;
  v8 = sub_26AFC0778;
  v20 = 0;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDE68);
  v4 = (*(*(v14 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v14);
  v16 = &v4 - v4;
  v5 = (v1 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v4 - v4);
  v17 = &v4 - v5;
  v20 = &v4 - v5;
  v12 = v21;
  v7 = 113;
  memcpy(v21, v2, 0x71uLL);
  memcpy(__dst, v6, sizeof(__dst));
  v11 = sub_26B078D90();
  sub_26AFBDE64(v12, &v19);
  v9 = v18;
  v18[2] = v12;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDE70);
  sub_26AFC0780();
  sub_26B079940();
  sub_26AFBE008(v12);
  v15 = sub_26AFC0808();
  sub_26AE9463C(v16, v14, v17);
  sub_26AFC0890(v16);
  sub_26AFC0CE4(v17, v16);
  sub_26AE94B4C(v16, v14, v13);
  sub_26AFC0890(v16);
  return sub_26AFC0890(v17);
}

uint64_t sub_26AFBA9C8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v112 = v196;
  v151 = a1;
  v113 = a2;
  v128 = 0;
  v201 = 0;
  v200 = 0;
  v199 = 0;
  v198 = 0;
  v183 = 0;
  v177 = 0;
  v176 = 0;
  v175 = 0;
  v161 = 0;
  v2 = *a1;
  v3 = *(a1 + 1);
  v4 = *(a1 + 2);
  v205 = *(a1 + 3);
  v204 = v4;
  v203 = v3;
  v202 = v2;
  v5 = *(a1 + 4);
  v6 = *(a1 + 5);
  v7 = *(a1 + 6);
  v209 = *(a1 + 112);
  v208 = v7;
  v207 = v6;
  v206 = v5;
  v213 = v205;
  v212 = v204;
  v211 = v203;
  v210 = v202;
  v217 = v209;
  v216 = v7;
  v215 = v6;
  v214 = v5;
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDF00);
  v115 = (*(*(v114 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v114 - 8);
  v116 = v53 - v115;
  v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDE60);
  v118 = *(*(v117 - 8) + 64);
  MEMORY[0x28223BE20](v117 - 8);
  v120 = (v118 + 15) & 0xFFFFFFFFFFFFFFF0;
  v119 = v53 - v120;
  MEMORY[0x28223BE20](v8);
  v121 = v53 - v120;
  v201 = v53 - v120;
  v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DDE88);
  v123 = (*(*(v122 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v122 - 8);
  v124 = v53 - v123;
  v125 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDDE8);
  v126 = (*(*(v125 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v125 - 8);
  v127 = v53 - v126;
  v129 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDDF0);
  v131 = *(*(v129 - 8) + 64);
  MEMORY[0x28223BE20](v128);
  v133 = (v131 + 15) & 0xFFFFFFFFFFFFFFF0;
  v130 = v53 - v133;
  MEMORY[0x28223BE20](v9);
  v132 = v53 - v133;
  MEMORY[0x28223BE20](v10);
  v134 = v53 - v133;
  v200 = v53 - v133;
  v135 = sub_26B079840();
  v136 = *(v135 - 8);
  v137 = v136;
  MEMORY[0x28223BE20](v135 - 8);
  v138 = v53 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v139 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDDC0);
  v140 = (*(*(v139 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v139 - 8);
  v141 = v53 - v140;
  v142 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDDC8);
  v143 = (*(*(v142 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v142 - 8);
  v144 = v53 - v143;
  v145 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDE58);
  v147 = *(*(v145 - 8) + 64);
  MEMORY[0x28223BE20](v145 - 8);
  v149 = (v147 + 15) & 0xFFFFFFFFFFFFFFF0;
  v146 = v53 - v149;
  MEMORY[0x28223BE20](v53 - v149);
  v148 = v53 - v149;
  MEMORY[0x28223BE20](v12);
  v150 = v53 - v149;
  v199 = v53 - v149;
  v152 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDF08);
  v153 = *(*(v152 - 8) + 64);
  MEMORY[0x28223BE20](v151);
  v155 = (v153 + 15) & 0xFFFFFFFFFFFFFFF0;
  v154 = (v53 - v155);
  MEMORY[0x28223BE20](v13);
  v156 = (v53 - v155);
  v198 = v53 - v155;
  v158 = *v14;

  KeyPath = swift_getKeyPath();
  ReactiveDescriptor.subscript.getter(KeyPath, &v197);
  v160 = v197;
  v159 = v197;

  if (v160)
  {
    v111 = v159;
    v107 = v159;
    swift_getObjectType();
    v15 = [v107 updateIcon];
    v108 = v15;
    if (v15)
    {
      v106 = v108;
      v101 = v108;
      v102 = sub_26B0781D0();
      v103 = v16;

      v104 = v102;
      v105 = v103;
    }

    else
    {
      v104 = 0;
      v105 = 0xF000000000000000;
    }

    v100 = v105;
    v99 = v104;
    swift_unknownObjectRelease();

    v109 = v99;
    v110 = v100;
  }

  else
  {

    v109 = 0;
    v110 = 0xF000000000000000;
  }

  v97 = v110;
  v98 = v109;
  if (v110 >> 60 == 15)
  {
    goto LABEL_14;
  }

  v95 = v98;
  v96 = v97;
  v93 = v97;
  v92 = v98;
  v176 = v98;
  v177 = v97;
  sub_26AF7E238();
  sub_26AE961DC(v92, v93);
  v17 = sub_26AFB91A8(v92, v93);
  v94 = v17;
  if (!v17)
  {
    sub_26AE96418(v92, v93);
LABEL_14:
    v30 = v124;
    v31 = v112;
    v32 = v151;
    v33 = *v151;
    v34 = *(v151 + 1);
    v35 = *(v151 + 2);
    *(v112 + 3) = *(v151 + 3);
    v31[2] = v35;
    v31[1] = v34;
    *v31 = v33;
    v36 = *(v32 + 4);
    v37 = *(v32 + 5);
    v38 = *(v32 + 6);
    v196[112] = *(v32 + 112);
    v31[6] = v38;
    v31[5] = v37;
    v31[4] = v36;
    sub_26AFBB8D4(v30);
    v58 = 0;
    v195 = 0;
    sub_26AFC1784();
    View.suuiIdentifiable(_:)();
    sub_26AFC18B8(v124);
    v59 = 1;
    sub_26B079D00();
    v64 = sub_26B078E10();
    v61 = v39;
    v60 = v40;
    v62 = v41;
    v63 = *sub_26B02D0D0();
    v42 = v63;
    v192 = 0;
    v193 = 0;
    LOBYTE(v194) = v58;
    HIBYTE(v194) = v59;
    LOWORD(v52) = v194;
    v51 = 0;
    v188 = sub_26B0792C0();
    v189 = v43;
    v190 = v44;
    v191 = v45;
    v65 = v188;
    v66 = v43;
    v67 = v44;
    v68 = v45;
    sub_26AFC25A4();
    v184 = v65;
    v185 = v66;
    v186 = v67;
    v187 = v68;
    sub_26B079520();
    sub_26AE95AFC(v65, v66, v67);

    sub_26AFC264C(v127);
    v69 = sub_26AFC2788();
    sub_26AE9463C(v132, v129, v134);
    sub_26AFC2830(v132);
    v183 = v132;
    sub_26AFC29B0(v134, v130);
    sub_26AE94B4C(v130, v129, v132);
    sub_26AFC2830(v130);
    sub_26AFC29B0(v132, v130);
    v46 = sub_26AFC2B84();
    sub_26AE94CA8(v130, v145, v129, v46, v69, v154);
    sub_26AFC2830(v130);
    sub_26AFC2D74(v154, v156);
    sub_26AFC2830(v132);
    sub_26AFC2830(v134);
    goto LABEL_15;
  }

  v91 = v94;
  v70 = v94;
  v175 = v94;
  v18 = v94;
  v75 = sub_26B079820();
  v71 = sub_26AFB91F0();
  v72 = v19;
  v73 = v20;
  v74 = v21;
  sub_26AFB9204(v138);
  v76 = sub_26B079850();
  (*(v137 + 8))(v138, v135);

  v174 = v76;
  v88 = 0;
  v173 = 0;
  v77 = &v174;
  View.suuiIdentifiable(_:)();
  sub_26AF1FC54();
  v78 = 1;
  sub_26B079D00();
  v83 = sub_26B078E10();
  v80 = v22;
  v79 = v23;
  v81 = v24;
  v82 = *sub_26B02D0D0();
  v25 = v82;
  v170 = 0;
  v171 = 0;
  LOBYTE(v172) = v88;
  HIBYTE(v172) = v78;
  LOWORD(v52) = v172;
  v51 = 0;
  v166 = sub_26B0792C0();
  v167 = v26;
  v168 = v27;
  v169 = v28;
  v84 = v166;
  v85 = v26;
  v86 = v27;
  v87 = v28;
  sub_26AFC2CD0();
  v162 = v84;
  v163 = v85;
  v164 = v86;
  v165 = v87;
  sub_26B079520();
  sub_26AE95AFC(v84, v85, v86);

  sub_26AFC3F70(v141);
  v89 = sub_26AFC2C28();
  sub_26AEC96D4();
  sub_26B0795F0();
  sub_26AFC3FF8(v144);
  v90 = sub_26AFC2B84();
  sub_26AE9463C(v148, v145, v150);
  sub_26AFC40C8(v148);
  v161 = v148;
  sub_26AFC4198(v150, v146);
  sub_26AE94B4C(v146, v145, v148);
  sub_26AFC40C8(v146);
  sub_26AFC4198(v148, v146);
  v29 = sub_26AFC2788();
  sub_26AE94BB0(v146, v145, v129, v90, v29, v154);
  sub_26AFC40C8(v146);
  sub_26AFC2D74(v154, v156);
  sub_26AFC40C8(v148);
  sub_26AFC40C8(v150);

  sub_26AE96418(v92, v93);
LABEL_15:
  v53[2] = sub_26B078E60();
  sub_26AFBDE64(v151, &v182);
  v53[3] = v53;
  MEMORY[0x28223BE20](v53);
  v53[0] = v50;
  v53[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDF40);
  sub_26AFC30B8();
  v55 = 0;
  v56 = 1;
  sub_26B079980();
  sub_26AFBE008(v151);
  v54 = sub_26AFC3140();
  v47 = sub_26AEAABD4();
  v52 = v54;
  v51 = v114;
  v50[1] = v48;
  v50[0] = v47;
  sub_26B079600();
  sub_26AFC31C8(v116);
  v57 = sub_26AFC3364();
  sub_26AE9463C(v119, v117, v121);
  sub_26AFC3408(v119);
  sub_26AFC35A4(v156, v154);
  v181[0] = v154;
  sub_26AFC38EC(v121, v119);
  v181[1] = v119;
  v180[0] = v152;
  v180[1] = v117;
  v178 = sub_26AFC3C68();
  v179 = v57;
  sub_26AFD49C4(v181, 2uLL, v180, v113);
  sub_26AFC3408(v119);
  sub_26AFC3D10(v154);
  sub_26AFC3408(v121);
  return sub_26AFC3D10(v156);
}

uint64_t sub_26AFBB8D4@<X0>(uint64_t a1@<X8>)
{
  v28 = a1;
  v29 = MEMORY[0x277CDEAE8];
  v75 = 0;
  v74 = 0;
  v73 = 0;
  v72 = 0;
  v66 = 0;
  v60 = 0;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDDE0);
  v31 = *(v30 - 8);
  v32 = v30 - 8;
  v33 = (v31[8] + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v30);
  v34 = v14 - v33;
  v35 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v14 - v33);
  v36 = v14 - v35;
  v37 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v14 - v35);
  v38 = v14 - v37;
  v75 = v14 - v37;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDDD8);
  v40 = *(v39 - 8);
  v41 = v39 - 8;
  v42 = (v40[8] + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v39);
  v43 = v14 - v42;
  v44 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v14 - v42);
  v45 = v14 - v44;
  v46 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v14 - v44);
  v47 = v14 - v46;
  v74 = v14 - v46;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DDE88);
  v49 = (*(*(v48 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v48);
  v50 = v14 - v49;
  v51 = (v6 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v14 - v49);
  v52 = v14 - v51;
  v73 = v14 - v51;
  memcpy(__dst, v1, 0x71uLL);
  v72 = v1;
  v53 = __dst[0];

  v54 = ReactiveDescriptor.currentState.getter();

  v57 = &v71;
  v71 = v54;
  v55 = &v70;
  v70 = 2;
  v56 = type metadata accessor for SUUIStatefulDescriptorState();
  sub_26AE9B8C0();
  if (sub_26B07A790())
  {
    memcpy(v63, __dst, sizeof(v63));
    sub_26AFBC600(v45);
    v24 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DDEA8);
    v7 = sub_26AFC14DC();
    v61 = v24;
    v62 = v7;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    sub_26AE9463C(v45, v39, v47);
    v26 = v40[1];
    v27 = v40 + 1;
    v26(v45, v39);
    v60 = v45;
    v22 = v40[2];
    v21 = v40 + 2;
    v22(v43, v47, v39);
    sub_26AE94B4C(v43, v39, v45);
    v26(v43, v39);
    v22(v43, v45, v39);
    v23 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DDE98);
    v8 = sub_26AFC1454();
    v58 = v23;
    v59 = v8;
    v9 = swift_getOpaqueTypeConformance2();
    sub_26AE94BB0(v43, v39, v30, OpaqueTypeConformance2, v9, v50);
    v26(v43, v39);
    sub_26AFC1564(v50, v52);
    v26(v45, v39);
    v26(v47, v39);
  }

  else
  {
    memcpy(v69, __dst, sizeof(v69));
    sub_26AFBC99C(v36);
    v17 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DDE98);
    v10 = sub_26AFC1454();
    v67 = v17;
    v68 = v10;
    v18 = swift_getOpaqueTypeConformance2();
    sub_26AE9463C(v36, v30, v38);
    v19 = v31[1];
    v20 = v31 + 1;
    v19(v36, v30);
    v66 = v36;
    v15 = v31[2];
    v14[1] = v31 + 2;
    v15(v34, v38, v30);
    sub_26AE94B4C(v34, v30, v36);
    v19(v34, v30);
    v15(v34, v36, v30);
    v16 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DDEA8);
    v11 = sub_26AFC14DC();
    v64 = v16;
    v65 = v11;
    v12 = swift_getOpaqueTypeConformance2();
    sub_26AE94CA8(v34, v39, v30, v12, v18, v50);
    v19(v34, v30);
    sub_26AFC1564(v50, v52);
    v19(v36, v30);
    v19(v38, v30);
  }

  sub_26AFC1674(v52, v50);
  sub_26AFC1784();
  sub_26AE94B4C(v50, v48, v28);
  sub_26AFC18B8(v50);
  return sub_26AFC18B8(v52);
}

uint64_t sub_26AFBC054@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v49 = a2;
  v38 = a1;
  v86 = 0;
  v85 = 0;
  v84 = 0;
  v42 = &v64;
  v64 = 0;
  v65 = 0;
  v40 = 0;
  updated = type metadata accessor for UpdateStatusView();
  v15 = (*(*(updated - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](updated);
  v51 = &v14 - v15;
  v16 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v14 - v15);
  v53 = &v14 - v16;
  v86 = &v14 - v16;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DB598);
  v17 = (*(*(v36 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v36);
  v37 = &v14 - v17;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDE10);
  v18 = (*(*(v43 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v38);
  v52 = &v14 - v18;
  v19 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v4);
  v54 = &v14 - v19;
  v85 = &v14 - v19;
  v84 = v5;
  v20 = *v5;

  KeyPath = swift_getKeyPath();
  ReactiveDescriptor.subscript.getter(KeyPath, v83);
  v21 = v83[0];
  v22 = v83[1];

  v23 = v82;
  v82[0] = v21;
  v82[1] = v22;
  sub_26AE95974();
  v78 = sub_26B0792E0();
  v79 = v6;
  v80 = v7;
  v81 = v8;
  v26 = v78;
  v27 = v6;
  v28 = v7;
  v29 = v8;

  v25 = *sub_26AFBC5A0();

  v74 = v26;
  v75 = v27;
  v34 = 1;
  v41 = 1;
  v76 = v28 & 1;
  v77 = v29;
  v70 = sub_26B0792A0();
  v71 = v9;
  v72 = v10;
  v73 = v11;
  v30 = v70;
  v31 = v9;
  v32 = v10;
  v33 = v11;

  sub_26AE95AFC(v26, v27, v28 & 1);

  v35 = v67;
  v67[0] = v30;
  v67[1] = v31;
  v68 = v32 & 1 & v41;
  v69 = v33;
  v66 = v34;
  View.suuiIdentifiable(_:)();
  sub_26AE95B40(v35);
  sub_26AE958D0();
  sub_26B079710();
  sub_26AE95B88(v37);
  v46 = sub_26AFC42EC();
  sub_26AE9463C(v52, v43, v54);
  sub_26AFC441C(v52);
  v39 = *v38;

  sub_26AFFA160(v39, v51);
  v47 = sub_26AFC44E8();
  sub_26AE9463C(v51, updated, v53);
  sub_26AFC4568(v51);
  v62 = sub_26B079970();
  v63 = v12 & 1 & v41;
  v45 = MEMORY[0x277CE1180];
  v48 = MEMORY[0x277CE1170];
  sub_26AE9463C(&v62, MEMORY[0x277CE1180], v42);
  sub_26AFC4618(v54, v52);
  v50 = v61;
  v61[0] = v52;
  sub_26AFC4778(v53, v51);
  v61[1] = v51;
  v59 = v64;
  v60 = v65;
  v61[2] = &v59;
  v58[0] = v43;
  v58[1] = updated;
  v58[2] = v45;
  v55 = v46;
  v56 = v47;
  v57 = v48;
  sub_26AFD49C4(v50, 3uLL, v58, v49);
  sub_26AFC4568(v51);
  sub_26AFC441C(v52);
  sub_26AFC4568(v53);
  return sub_26AFC441C(v54);
}

uint64_t *sub_26AFBC5A0()
{
  if (qword_2803DB470 != -1)
  {
    swift_once();
  }

  return &qword_2803DDD40;
}

uint64_t sub_26AFBC600@<X0>(uint64_t a1@<X8>)
{
  v27 = a1;
  v9 = sub_26AFC1998;
  v24 = MEMORY[0x277CDEAE8];
  v38 = 0;
  v20 = sub_26B0790A0();
  v17 = *(v20 - 8);
  v18 = v20 - 8;
  v4 = (*(v17 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v20);
  v19 = &v4 - v4;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDDD8);
  v25 = *(v31 - 8);
  v26 = v31 - 8;
  v5 = (*(v25 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v31);
  v29 = &v4 - v5;
  v6 = (v1 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v4 - v5);
  v30 = &v4 - v6;
  v38 = &v4 - v6;
  v13 = v39;
  v8 = 113;
  memcpy(v39, v2, 0x71uLL);
  memcpy(v40, v7, sizeof(v40));
  sub_26AFBDE64(v39, &v36);
  v10 = v34;
  v34[2] = v13;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDEC0);
  v12 = sub_26AFC19A0();
  sub_26AF5C6C0();
  v14 = &v37;
  sub_26B0799A0();
  sub_26AFBE008(v13);
  v15 = __dst;
  v16 = 184;
  memcpy(__dst, v14, sizeof(__dst));
  v21 = v35;
  memcpy(v35, __dst, sizeof(v35));
  sub_26B079090();
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDEA8);
  v23 = sub_26AFC14DC();
  sub_26B079540();
  (*(v17 + 8))(v19, v20);
  sub_26AFC1A28(v21);
  v34[3] = v22;
  v34[4] = v23;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_26AE9463C(v29, v31, v30);
  v33 = *(v25 + 8);
  v32 = v25 + 8;
  v33(v29, v31);
  (*(v25 + 16))(v29, v30, v31);
  sub_26AE94B4C(v29, v31, v27);
  v33(v29, v31);
  return (v33)(v30, v31);
}

uint64_t sub_26AFBC99C@<X0>(uint64_t a1@<X8>)
{
  v25 = a1;
  v10 = sub_26AFC1AF8;
  v22 = MEMORY[0x277CDEAE8];
  v35 = 0;
  v18 = sub_26B0790A0();
  v15 = *(v18 - 8);
  v16 = v18 - 8;
  v5 = (*(v15 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v18);
  v17 = &v4 - v5;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDDE0);
  v23 = *(v29 - 8);
  v24 = v29 - 8;
  v6 = (*(v23 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v29);
  v27 = &v4 - v6;
  v7 = (v1 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v4 - v6);
  v28 = &v4 - v7;
  v35 = &v4 - v7;
  v14 = v36;
  v9 = 113;
  memcpy(v36, v2, 0x71uLL);
  memcpy(__dst, v8, sizeof(__dst));
  sub_26AFBDE64(v36, v34);
  v11 = v32;
  v32[2] = v14;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDED0);
  v13 = sub_26AFC1B00();
  sub_26AF5C6C0();
  sub_26B0799A0();
  sub_26AFBE008(v14);
  v19 = v33;
  v33[0] = v34[15];
  v33[1] = v34[16];
  v33[2] = v34[17];
  v33[3] = v34[18];
  v33[4] = v34[19];
  v33[5] = v34[20];
  sub_26B079090();
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDE98);
  v21 = sub_26AFC1454();
  sub_26B079540();
  (*(v15 + 8))(v17, v18);
  sub_26AFC1B88();
  v32[4] = v20;
  v32[5] = v21;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_26AE9463C(v27, v29, v28);
  v31 = *(v23 + 8);
  v30 = v23 + 8;
  v31(v27, v29);
  (*(v23 + 16))(v27, v28, v29);
  sub_26AE94B4C(v27, v29, v25);
  v31(v27, v29);
  return (v31)(v28, v29);
}

uint64_t *sub_26AFBCD38@<X0>(void *__src@<X0>, uint64_t a2@<X8>)
{
  v64[0] = 0;
  v64[1] = __src;
  memcpy(__dst, __src, sizeof(__dst));
  v6 = sub_26AFB9518();

  v62 = v6;
  v13 = MEMORY[0x277CE1088];
  sub_26AE9463C(&v62, MEMORY[0x277CE1088], v64);
  sub_26AF1FC54();
  memcpy(v55, __src, sizeof(v55));
  sub_26AFB9518();
  v7 = v2;

  v54 = v7;
  memcpy(v53, __src, sizeof(v53));
  sub_26AFB9C18();
  sub_26AFBD3A8();
  sub_26B0794B0();
  sub_26AF1FC54();
  v49 = v56;
  v50 = v57;
  v51 = v58;
  v52 = v59;
  sub_26AFBDE64(__src, v48);
  v8 = swift_allocObject();
  memcpy((v8 + 16), __src, 0x71uLL);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDEE0);
  sub_26AFC2174();
  sub_26B0796C0();
  sub_26AEB3258(sub_26AFC216C);
  sub_26AFC2214();
  memcpy(v65, v60, sizeof(v65));
  memcpy(v47, v65, sizeof(v47));
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDEF0);
  sub_26AFC2240();
  sub_26AE9463C(v47, v15, v61);
  sub_26AFC22E4(v47);
  memcpy(v41, __src, sizeof(v41));
  sub_26AFB9518();
  v9 = v3;

  v40 = v9;
  memcpy(v39, __src, sizeof(v39));
  sub_26AFB9938();
  sub_26AFBD3A8();
  sub_26B0794B0();
  sub_26AF1FC54();
  v38[0] = v42;
  v38[1] = v43;
  v38[2] = v44;
  v38[3] = v45;
  sub_26AE9463C(v38, v14, v46);
  sub_26AFC2214();
  memcpy(v31, __src, sizeof(v31));
  sub_26AFB9518();
  v10 = v4;

  v30 = v10;
  memcpy(v29, __src, sizeof(v29));
  sub_26AFB9938();
  sub_26AFBD3A8();
  sub_26B0794B0();
  sub_26AF1FC54();
  v25 = v32;
  v26 = v33;
  v27 = v34;
  v28 = v35;
  sub_26AFBDE64(__src, v24);
  v12 = swift_allocObject();
  memcpy((v12 + 16), __src, 0x71uLL);
  sub_26B0796C0();
  sub_26AEB3258(sub_26AFC23EC);
  sub_26AFC2214();
  memcpy(v66, v36, sizeof(v66));
  memcpy(v23, v66, sizeof(v23));
  sub_26AE9463C(v23, v15, v37);
  sub_26AFC22E4(v23);
  sub_26AFC2098(v64, &v21);
  v22[0] = &v21;
  sub_26AFC23F4(v61, v20);
  v22[1] = v20;
  sub_26AFC24EC(v46, v19);
  v22[2] = v19;
  sub_26AFC23F4(v37, v18);
  v22[3] = v18;
  v17[0] = v13;
  v17[1] = v15;
  v17[2] = v14;
  v17[3] = v15;
  sub_26AFD49C4(v22, 4uLL, v17, a2);
  sub_26AFC22E4(v18);
  sub_26AFC2214();
  sub_26AFC22E4(v20);
  sub_26AF1FC54();
  sub_26AFC22E4(v37);
  sub_26AFC2214();
  sub_26AFC22E4(v61);
  result = v64;
  sub_26AF1FC54();
  return result;
}

uint64_t sub_26AFBD3CC(void *__src)
{
  memcpy(__dst, __src, sizeof(__dst));
  memcpy(v5, __dst, sizeof(v5));
  sub_26B079B80();
  sub_26B079B50();

  sub_26AFBDE64(__src, v3);
  sub_26B078B20();
  sub_26AFBE008(__src);
}

uint64_t sub_26AFBD4D0(uint64_t *a1)
{
  v5 = a1;
  sub_26AFBDE64(a1, v4);
  memcpy(__dst, a1, 0x71uLL);
  sub_26B079730();
  sub_26AFB9C9C();
  return sub_26AFBE008(__dst);
}

uint64_t sub_26AFBD54C(void *__src)
{
  memcpy(__dst, __src, sizeof(__dst));
  memcpy(v5, __dst, sizeof(v5));
  sub_26B079B80();
  sub_26B079B50();

  sub_26AFBDE64(__src, v3);
  sub_26B078B20();
  sub_26AFBE008(__src);
}

uint64_t sub_26AFBD644(uint64_t *a1)
{
  v5 = a1;
  sub_26AFBDE64(a1, v4);
  memcpy(__dst, a1, 0x71uLL);
  sub_26B079730();
  sub_26AFB99BC();
  return sub_26AFBE008(__dst);
}

uint64_t *sub_26AFBD6C0@<X0>(void *__src@<X0>, uint64_t a2@<X8>)
{
  v30[0] = 0;
  v27 = 0;
  v24 = 0;
  v21 = 0;
  v30[1] = __src;
  memcpy(__dst, __src, sizeof(__dst));
  v6 = sub_26AFB9518();

  v28 = v6;
  v11 = MEMORY[0x277CE1088];
  sub_26AE9463C(&v28, MEMORY[0x277CE1088], v30);
  sub_26AF1FC54();
  memcpy(v26, __src, sizeof(v26));
  sub_26AFB9518();
  v7 = v2;

  v25 = v7;
  sub_26AE9463C(&v25, v11, &v27);
  sub_26AF1FC54();
  memcpy(v23, __src, sizeof(v23));
  sub_26AFB9518();
  v8 = v3;

  v22 = v8;
  sub_26AE9463C(&v22, v11, &v24);
  sub_26AF1FC54();
  memcpy(v20, __src, sizeof(v20));
  sub_26AFB9518();
  v10 = v4;

  v19 = v10;
  sub_26AE9463C(&v19, v11, &v21);
  sub_26AF1FC54();
  sub_26AFC2098(v30, &v17);
  v18[0] = &v17;
  sub_26AFC2098(&v27, &v16);
  v18[1] = &v16;
  sub_26AFC2098(&v24, &v15);
  v18[2] = &v15;
  sub_26AFC2098(&v21, &v14);
  v18[3] = &v14;
  v13[0] = v11;
  v13[1] = v11;
  v13[2] = v11;
  v13[3] = v11;
  sub_26AFD49C4(v18, 4uLL, v13, a2);
  sub_26AF1FC54();
  sub_26AF1FC54();
  sub_26AF1FC54();
  sub_26AF1FC54();
  sub_26AF1FC54();
  sub_26AF1FC54();
  sub_26AF1FC54();
  result = v30;
  sub_26AF1FC54();
  return result;
}