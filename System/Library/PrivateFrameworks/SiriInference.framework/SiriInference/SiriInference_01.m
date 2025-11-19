uint64_t sub_1DD3AB030(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1DD3AB5C8(&qword_1ECCDB6A8, type metadata accessor for MKError);

  return MEMORY[0x1EEDC3BA8](a1, a2, a3, v6);
}

uint64_t sub_1DD3AB0C0(uint64_t a1)
{
  v2 = sub_1DD3AB5C8(&qword_1EE1638A0, type metadata accessor for MLModelMetadataKey);
  v3 = sub_1DD3AB5C8(&qword_1ECCDB6D8, type metadata accessor for MLModelMetadataKey);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t sub_1DD3AB17C(uint64_t a1)
{
  v2 = sub_1DD3AB5C8(&qword_1ECCDB6E0, type metadata accessor for NLTag);
  v3 = sub_1DD3AB5C8(&qword_1ECCDB6E8, type metadata accessor for NLTag);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t sub_1DD3AB238@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_1DD63FDA8();

  *a2 = v5;
  return result;
}

uint64_t sub_1DD3AB280(uint64_t a1)
{
  v2 = sub_1DD3AB5C8(&qword_1ECCDB6F0, type metadata accessor for NLTagScheme);
  v3 = sub_1DD3AB5C8(&qword_1ECCDB6F8, type metadata accessor for NLTagScheme);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_1DD3AB354()
{
  result = qword_1ECCDB4E0;
  if (!qword_1ECCDB4E0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ECCDB4E0);
  }

  return result;
}

uint64_t sub_1DD3AB398()
{
  sub_1DD63FDD8();
  sub_1DD63FD28();
}

uint64_t sub_1DD3AB3EC()
{
  sub_1DD63FDD8();
  sub_1DD640E28();
  sub_1DD63FD28();
  v0 = sub_1DD640E78();

  return v0;
}

uint64_t sub_1DD3AB498(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1DD3AB4B8(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = a2 - 1;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 4) = v3;
  return result;
}

uint64_t sub_1DD3AB5C8(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1DD3ABBC8()
{
  result = qword_1ECCDB698;
  if (!qword_1ECCDB698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDB698);
  }

  return result;
}

uint64_t sub_1DD3ABCAC(uint64_t a1, id *a2)
{
  v3 = sub_1DD63FDC8();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_1DD3ABD2C()
{
  v0 = sub_1DD63FDD8();
  v1 = MEMORY[0x1E12B2330](v0);

  return v1;
}

uint64_t sub_1DD3ABD64(uint64_t a1, id *a2)
{
  result = sub_1DD63FDB8();
  *a2 = 0;
  return result;
}

uint64_t sub_1DD3ABDDC()
{
  sub_1DD63FDD8();
  v0 = sub_1DD63FDA8();

  return v0;
}

void sub_1DD3ABE78(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

void AddressIntentNode.toLocation()()
{
  OUTLINED_FUNCTION_18_4();
  v232 = v0;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDB7F0, &qword_1DD642F80);
  OUTLINED_FUNCTION_3(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_7_3();
  v239 = v5;
  OUTLINED_FUNCTION_6_2();
  v231 = sub_1DD63DD08();
  v6 = OUTLINED_FUNCTION_0(v231);
  v204 = v7;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_1();
  v203 = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDB7F8, &qword_1DD642F88);
  OUTLINED_FUNCTION_3(v11);
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_7_3();
  v238 = v15;
  OUTLINED_FUNCTION_6_2();
  v230 = sub_1DD63DC68();
  v16 = OUTLINED_FUNCTION_0(v230);
  v202 = v17;
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_1();
  v201 = v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDB800, &qword_1DD642F90);
  OUTLINED_FUNCTION_3(v21);
  v23 = *(v22 + 64);
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_7_3();
  v228 = v25;
  OUTLINED_FUNCTION_6_2();
  v229 = sub_1DD63E638();
  v26 = OUTLINED_FUNCTION_0(v229);
  v210 = v27;
  v29 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_1();
  *&v209 = v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDB808, &qword_1DD642F98);
  OUTLINED_FUNCTION_3(v31);
  v33 = *(v32 + 64);
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_7_3();
  v237 = v35;
  OUTLINED_FUNCTION_6_2();
  *&v222 = sub_1DD63E358();
  v36 = OUTLINED_FUNCTION_0(v222);
  *&v216 = v37;
  v39 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_1();
  *&v214 = v40;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDB810, &qword_1DD642FA0);
  OUTLINED_FUNCTION_3(v41);
  v43 = *(v42 + 64);
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v44);
  OUTLINED_FUNCTION_7_3();
  v235 = v45;
  OUTLINED_FUNCTION_6_2();
  v220 = sub_1DD63DD28();
  v46 = OUTLINED_FUNCTION_0(v220);
  *&v213 = v47;
  v49 = *(v48 + 64);
  MEMORY[0x1EEE9AC00](v46);
  OUTLINED_FUNCTION_1();
  *&v212 = v50;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDB818, &qword_1DD642FA8);
  OUTLINED_FUNCTION_3(v51);
  v53 = *(v52 + 64);
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v54);
  OUTLINED_FUNCTION_7_3();
  v233 = v55;
  OUTLINED_FUNCTION_6_2();
  v234 = sub_1DD63DEF8();
  v56 = OUTLINED_FUNCTION_0(v234);
  v215 = v57;
  v59 = *(v58 + 64);
  MEMORY[0x1EEE9AC00](v56);
  OUTLINED_FUNCTION_1();
  *&v211 = v60;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDB820, &qword_1DD642FB0);
  OUTLINED_FUNCTION_3(v61);
  v63 = *(v62 + 64);
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v64);
  OUTLINED_FUNCTION_7_3();
  v224 = v65;
  OUTLINED_FUNCTION_6_2();
  v66 = sub_1DD63E348();
  v67 = OUTLINED_FUNCTION_0(v66);
  v225 = v68;
  v226 = v67;
  v70 = *(v69 + 64);
  MEMORY[0x1EEE9AC00](v67);
  OUTLINED_FUNCTION_1();
  v221 = v71;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDB828, &qword_1DD642FB8);
  OUTLINED_FUNCTION_3(v72);
  v74 = *(v73 + 64);
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v75);
  v77 = &v196 - v76;
  v78 = sub_1DD63DCA8();
  v79 = OUTLINED_FUNCTION_0(v78);
  v223 = v80;
  v82 = *(v81 + 64);
  MEMORY[0x1EEE9AC00](v79);
  OUTLINED_FUNCTION_2();
  v85 = v84 - v83;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDB830, &qword_1DD642FC0);
  OUTLINED_FUNCTION_3(v86);
  v88 = *(v87 + 64);
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v89);
  v91 = &v196 - v90;
  v92 = sub_1DD63DC48();
  v93 = OUTLINED_FUNCTION_0(v92);
  v95 = v94;
  v97 = *(v96 + 64);
  MEMORY[0x1EEE9AC00](v93);
  OUTLINED_FUNCTION_2();
  v100 = v99 - v98;
  sub_1DD3AD724(v249);
  v101 = sub_1DD63E288();
  if ((v102 & 1) == 0)
  {
    v236 = v101;
    OUTLINED_FUNCTION_14_6();
    sub_1DD63E1E8();
    v103 = OUTLINED_FUNCTION_12_3();
    OUTLINED_FUNCTION_8(v103, v104, v92);
    if (v105)
    {
      sub_1DD3ADFD0(v91, &qword_1ECCDB830, &qword_1DD642FC0);
    }

    else
    {
      OUTLINED_FUNCTION_10_6();
      v106(v100, v91, v92);
      sub_1DD63DC38();
      v107 = sub_1DD640AA8();

      (*(v95 + 8))(v100, v92);
      if (v107 <= 3)
      {
        v108 = v107 | 0x10100;
        goto LABEL_8;
      }
    }
  }

  v236 = 0;
  v108 = 4;
LABEL_8:
  v227 = v108;
  v110 = v225;
  v109 = v226;
  v111 = v224;
  sub_1DD63E1F8();
  OUTLINED_FUNCTION_8(v77, 1, v78);
  if (v105)
  {
    sub_1DD3ADFD0(v77, &qword_1ECCDB828, &qword_1DD642FB8);
  }

  else
  {
    v112 = v223;
    OUTLINED_FUNCTION_9_2();
    v113(v85, v77, v78);
    sub_1DD63DC98();
    Country.Value.init(rawValue:)(v247);
    (*(v112 + 8))(v85, v78);
    if (v247[0] != 255)
    {
      v114 = (v247[0] << 16) | 0x303;
      goto LABEL_14;
    }
  }

  v114 = 4;
LABEL_14:
  LODWORD(v226) = v114;
  v115 = v234;
  v116 = v235;
  v117 = v233;
  v219 = sub_1DD63E298();
  v225 = v118;
  v218 = sub_1DD63E268();
  v224 = v119;
  v217 = sub_1DD63E248();
  v223 = v120;
  sub_1DD63E2A8();
  OUTLINED_FUNCTION_8(v111, 1, v109);
  if (v105)
  {
    sub_1DD3ADFD0(v111, &qword_1ECCDB820, &qword_1DD642FB0);
    v234 = 0;
    v121 = 0;
LABEL_21:
    v221 = 0;
    v233 = 0;
    goto LABEL_24;
  }

  OUTLINED_FUNCTION_10_6();
  v122 = v221;
  v123(v221, v111, v109);
  v124 = sub_1DD63E328();
  v121 = v125;
  if (!v125)
  {
    (*(v110 + 8))(v122, v109);
    v234 = 0;
    goto LABEL_21;
  }

  v234 = v124;
  v126 = sub_1DD63E338();
  v128 = v127;
  (*(v110 + 8))(v122, v109);
  v233 = v128;
  if (v128)
  {
    v221 = v126;
  }

  else
  {

    v233 = 0;
    v234 = 0;
    v121 = 0;
    v221 = 0;
  }

  v116 = v235;
LABEL_24:
  sub_1DD63E258();
  OUTLINED_FUNCTION_8(v117, 1, v115);
  if (v105)
  {
    sub_1DD3ADFD0(v117, &qword_1ECCDB818, &qword_1DD642FA8);
    v132 = v249;
  }

  else
  {
    v129 = v215;
    OUTLINED_FUNCTION_10_6();
    v130 = v211;
    v131(v211, v117, v115);
    sub_1DD3ACF5C();
    (*(v129 + 8))(v130, v115);
    memcpy(v247, v240, 0x106uLL);
    nullsub_1(v247);
    v132 = v247;
  }

  memcpy(v248, v132, sizeof(v248));
  v133 = v228;
  v215 = sub_1DD63E2C8();
  v228 = v134;
  sub_1DD63E2E8();
  v135 = OUTLINED_FUNCTION_16();
  v136 = v220;
  OUTLINED_FUNCTION_8(v135, v137, v220);
  if (v105)
  {
    sub_1DD3ADFD0(v116, &qword_1ECCDB810, &qword_1DD642FA0);
    v142 = 5;
  }

  else
  {
    v138 = v213;
    OUTLINED_FUNCTION_10_6();
    v139 = v212;
    v140(v212, v116, v136);
    v141._countAndFlagsBits = sub_1DD63DD18();
    Proximity.Value.init(rawValue:)(v141);
    (*(v138 + 8))(v139, v136);
    v142 = v247[0];
  }

  LODWORD(v220) = v142;
  OUTLINED_FUNCTION_14_6();
  sub_1DD63E2B8();
  v143 = OUTLINED_FUNCTION_12_3();
  v144 = v222;
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v143, v145, v222);
  v147 = v230;
  v235 = v121;
  if (EnumTagSinglePayload == 1)
  {
    sub_1DD3ADFD0(v237, &qword_1ECCDB808, &qword_1DD642F98);
    v148 = 0;
    v222 = xmmword_1DD642F70;
    v216 = 0u;
    v213 = 0u;
    v214 = 0u;
    v211 = 0u;
    v212 = 0u;
  }

  else
  {
    v149 = v216;
    v150 = v214;
    (*(v216 + 32))(v214, v237, v144);
    sub_1DD3AD184(v247);
    (*(v149 + 8))(v150, v144);
    v216 = *&v247[16];
    v222 = *v247;
    v213 = *&v247[48];
    v214 = *&v247[32];
    v211 = *&v247[80];
    v212 = *&v247[64];
    v148 = v247[96];
  }

  sub_1DD63E1D8();
  v151 = v229;
  OUTLINED_FUNCTION_8(v133, 1, v229);
  if (v105)
  {
    sub_1DD3ADFD0(v133, &qword_1ECCDB800, &qword_1DD642F90);
    v155 = 0;
    v210 = 0;
    v208 = 0;
    v209 = xmmword_1DD642F70;
    v206 = 0u;
    v207 = 0u;
    v205 = 0u;
  }

  else
  {
    OUTLINED_FUNCTION_9_2();
    v152(v209, v133, v151);
    sub_1DD3AD28C();
    v153 = OUTLINED_FUNCTION_15_3();
    v154(v153, v151);
    v209 = *v247;
    v205 = *&v247[48];
    v206 = *&v247[32];
    v207 = *&v247[16];
    v155 = *&v247[64];
    v210 = *&v247[72];
    v208 = *&v247[80];
  }

  OUTLINED_FUNCTION_14_6();
  sub_1DD63E228();
  v156 = OUTLINED_FUNCTION_12_3();
  OUTLINED_FUNCTION_8(v156, v157, v147);
  LODWORD(v237) = v148;
  v229 = v155;
  if (v105)
  {
    sub_1DD3ADFD0(v238, &qword_1ECCDB7F8, &qword_1DD642F88);
    goto LABEL_42;
  }

  v158 = v201;
  OUTLINED_FUNCTION_9_2();
  v159(v158, v238, v147);
  sub_1DD63DC58();
  v160 = sub_1DD640AA8();

  v161 = OUTLINED_FUNCTION_15_3();
  v162(v161, v147);
  if (!v160)
  {
    v163 = 0;
    goto LABEL_44;
  }

  if (v160 != 1)
  {
LABEL_42:
    v164 = 2;
    goto LABEL_45;
  }

  v163 = 1;
LABEL_44:
  v164 = v163 | 0x200;
LABEL_45:
  LODWORD(v238) = v164;
  OUTLINED_FUNCTION_14_6();
  sub_1DD63E2D8();
  v165 = OUTLINED_FUNCTION_12_3();
  v166 = v231;
  OUTLINED_FUNCTION_8(v165, v167, v231);
  if (v105)
  {
    sub_1DD3ADFD0(v239, &qword_1ECCDB7F0, &qword_1DD642F80);
LABEL_49:
    v171 = 1024;
    goto LABEL_51;
  }

  v168 = v203;
  v169 = v204;
  (*(v204 + 32))(v203, v239, v166);
  v170._countAndFlagsBits = sub_1DD63DCF8();
  ContinentName.Value.init(rawValue:)(v170);
  (*(v169 + 8))(v168, v166);
  if (v247[0] == 8)
  {
    goto LABEL_49;
  }

  v171 = v247[0] | 0x300;
LABEL_51:
  LODWORD(v239) = v171;
  v173 = v223;
  v172 = v224;
  v174 = v217;
  if (!v223)
  {
    v174 = 0;
  }

  v203 = v174;
  if (v223)
  {
    v175 = 771;
  }

  else
  {
    v175 = 0;
  }

  v176 = v218;
  if (!v224)
  {
    v176 = 0;
  }

  v200 = v176;
  v201 = v175;
  if (v224)
  {
    v177 = 771;
  }

  else
  {
    v177 = 0;
  }

  v178 = v225;
  v179 = v219;
  if (!v225)
  {
    v179 = 0;
  }

  v198 = v179;
  v199 = v177;
  if (v225)
  {
    v180 = 3;
  }

  else
  {
    v180 = 0;
  }

  v197 = v180;
  sub_1DD63E208();
  OUTLINED_FUNCTION_5_5();
  v230 = v182;
  v231 = v181;
  if (v105)
  {
    v183 = 0;
  }

  else
  {
    v183 = 3;
  }

  LODWORD(v219) = v183;
  v184 = sub_1DD63E218();
  v186 = v185;
  sub_1DD63E278();
  v218 = v187;
  OUTLINED_FUNCTION_5_5();
  v204 = v188;
  if (v105)
  {
    v189 = 0;
  }

  else
  {
    v189 = 771;
  }

  LODWORD(v217) = v189;
  if (v186)
  {
    v190 = v184;
  }

  else
  {
    v190 = 0;
  }

  v202 = v190;
  v191 = v228;
  if (v228)
  {
    v192 = v215;
  }

  else
  {
    v192 = 0;
  }

  sub_1DD63E238();
  v194 = v193;
  OUTLINED_FUNCTION_5_5();
  v215 = v195;
  memcpy(v241, v249, sizeof(v241));
  swift_bridgeObjectRelease_n();
  sub_1DD3AD738(0, 0);
  memcpy(v242, v241, 0x106uLL);
  sub_1DD3ADFD0(v242, &qword_1ECCDB838, &qword_1DD6570C0);
  v196 = xmmword_1DD642F70;
  v243[0] = xmmword_1DD642F70;
  memset(&v243[1], 0, 80);
  v244 = 0;
  sub_1DD3ADFD0(v243, &qword_1ECCDB840, &qword_1DD642FC8);
  v245[0] = v196;
  memset(&v245[1], 0, 64);
  v246 = 0;
  sub_1DD3ADFD0(v245, &qword_1ECCDB848, &qword_1DD642FD0);
  swift_bridgeObjectRelease_n();
  sub_1DD3AD77C(0, 0xF000000000000000);
  *v247 = v236;
  v247[10] = BYTE2(v227);
  *&v247[8] = v227;
  v247[13] = BYTE2(v226);
  *&v247[11] = v226;
  *&v247[16] = v197;
  *&v247[24] = v198;
  *&v247[32] = v178;
  *&v247[40] = v199;
  *&v247[48] = v200;
  *&v247[56] = v172;
  *&v247[64] = v201;
  *&v247[72] = v203;
  *&v247[80] = v173;
  *&v247[88] = v234;
  *&v247[96] = v235;
  *&v247[104] = v221;
  *&v247[112] = v233;
  memcpy(&v247[120], v248, 0x106uLL);
  *&v247[384] = v192;
  *&v247[392] = v191;
  v247[400] = v220;
  *&v247[408] = v222;
  *&v247[424] = v216;
  *&v247[440] = v214;
  *&v247[456] = v213;
  *&v247[472] = v212;
  *&v247[488] = v211;
  v247[504] = v237;
  *&v247[528] = v207;
  *&v247[512] = v209;
  *&v247[560] = v205;
  *&v247[544] = v206;
  *&v247[576] = v229;
  *&v247[584] = v210;
  *&v247[592] = v208;
  *&v247[600] = v239;
  *&v247[602] = v238;
  *&v247[608] = v230;
  *&v247[616] = v231;
  v247[624] = v219;
  *&v247[632] = v202;
  *&v247[640] = v186;
  *&v247[648] = v204;
  *&v247[656] = v218;
  *&v247[664] = v217;
  *&v247[672] = v215;
  *&v247[680] = v194;
  *&v247[688] = 515;
  *&v247[696] = 0;
  *&v247[704] = 0xF000000000000000;
  nullsub_1(v247);
  memcpy(v232, v247, 0x2C8uLL);
  OUTLINED_FUNCTION_17();
}

void sub_1DD3ACF5C()
{
  OUTLINED_FUNCTION_18_4();
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDB850, &qword_1DD642FD8);
  OUTLINED_FUNCTION_3(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_13_1();
  v7 = sub_1DD63E498();
  v8 = OUTLINED_FUNCTION_0(v7);
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_2();
  v15 = v14 - v13;
  sub_1DD3ADFA8(v36);
  v16 = sub_1DD63DEC8();
  v18 = v17;
  sub_1DD63DEE8();
  v19 = OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_8(v19, v20, v7);
  if (v21)
  {
    sub_1DD3ADFD0(v0, &qword_1ECCDB850, &qword_1DD642FD8);
    v22 = v36;
  }

  else
  {
    (*(v10 + 32))(v15, v0, v7);
    sub_1DD3AD7E8();
    (*(v10 + 8))(v15, v7);
    memcpy(v34, v33, 0xCEuLL);
    nullsub_1(v34);
    v22 = v34;
  }

  memcpy(v35, v22, sizeof(v35));
  if (v18)
  {
    v23 = 1028;
  }

  else
  {
    v23 = 0;
  }

  if (v18)
  {
    v24 = v16;
  }

  else
  {
    v24 = 0;
  }

  v25 = sub_1DD63DED8();
  v27 = v26;
  if (v26)
  {
    v28 = v25;
  }

  else
  {
    v28 = 0;
  }

  v29 = sub_1DD63DEB8();
  v31 = v30;
  if (v30)
  {
    v32 = v29;
  }

  else
  {
    v32 = 0;
  }

  memcpy((v2 + 56), v36, 0xCEuLL);
  *v2 = v28;
  *(v2 + 8) = v27;
  *(v2 + 16) = v32;
  *(v2 + 24) = v31;

  *(v2 + 32) = v24;
  *(v2 + 40) = v18;
  *(v2 + 48) = v23;
  memcpy(v34, (v2 + 56), 0xCEuLL);
  sub_1DD3ADFD0(v34, &qword_1ECCDB858, &qword_1DD642FE0);
  memcpy((v2 + 56), v35, 0xCEuLL);
  OUTLINED_FUNCTION_17();
}

void sub_1DD3AD184(uint64_t a1@<X8>)
{
  sub_1DD63E358();
  v24 = sub_1DD63E898();
  v3 = v2;
  OUTLINED_FUNCTION_11_0();
  v23 = sub_1DD63E8B8();
  v5 = v4;
  OUTLINED_FUNCTION_11_0();
  sub_1DD63E8A8();
  v7 = v6;
  OUTLINED_FUNCTION_5_5();
  v22 = v8;
  if (v9)
  {
    v10 = 0;
  }

  else
  {
    v10 = 268;
  }

  v21 = v10;
  OUTLINED_FUNCTION_11_0();
  v11 = sub_1DD63E8C8();
  v13 = v12;
  if (v12)
  {
    v14 = v11;
  }

  else
  {
    v14 = 0;
  }

  if (v12)
  {
    v15 = 268;
  }

  else
  {
    v15 = 0;
  }

  OUTLINED_FUNCTION_11_0();
  sub_1DD63E888();
  OUTLINED_FUNCTION_5_5();
  if (v9)
  {
    v18 = 0;
  }

  else
  {
    v18 = 12;
  }

  v19 = v23;
  v20 = v24;
  if (!v5)
  {
    v19 = 0;
  }

  if (!v3)
  {
    v20 = 0;
  }

  *a1 = v20;
  *(a1 + 8) = v3;
  *(a1 + 16) = v22;
  *(a1 + 24) = v7;
  *(a1 + 32) = v21;
  *(a1 + 40) = v19;
  *(a1 + 48) = v5;
  *(a1 + 56) = v14;
  *(a1 + 64) = v13;
  *(a1 + 72) = v15;
  *(a1 + 80) = v17;
  *(a1 + 88) = v16;
  *(a1 + 96) = v18;
}

void sub_1DD3AD28C()
{
  OUTLINED_FUNCTION_18_4();
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDB880, &qword_1DD643008);
  OUTLINED_FUNCTION_3(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v57 - v6;
  v65 = sub_1DD63DCC8();
  v8 = OUTLINED_FUNCTION_0(v65);
  v59 = v9;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_1();
  v58 = v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDB888, &unk_1DD643010);
  v14 = OUTLINED_FUNCTION_3(v13);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x1EEE9AC00](v14);
  v19 = &v57 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v57 - v20;
  v22 = sub_1DD63DC88();
  v23 = OUTLINED_FUNCTION_0(v22);
  v25 = v24;
  v27 = *(v26 + 64);
  v28 = MEMORY[0x1EEE9AC00](v23);
  v30 = &v57 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v32 = &v57 - v31;
  v62 = sub_1DD63E608();
  v64 = v33;
  v61 = sub_1DD63E628();
  v63 = v34;
  sub_1DD63E618();
  OUTLINED_FUNCTION_8(v21, 1, v22);
  if (v35)
  {
    sub_1DD3ADFD0(v21, &qword_1ECCDB888, &unk_1DD643010);
LABEL_5:
    v37 = 2304;
    goto LABEL_7;
  }

  (*(v25 + 32))(v32, v21, v22);
  v36._countAndFlagsBits = sub_1DD63DC78();
  StreetType.Value.init(rawValue:)(v36);
  (*(v25 + 8))(v32, v22);
  if (v66 == 180)
  {
    goto LABEL_5;
  }

  v37 = v66 | 0x800;
LABEL_7:
  v60 = sub_1DD63E5E8();
  v39 = v38;
  sub_1DD63E5F8();
  v40 = OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_8(v40, v41, v22);
  if (v35)
  {
    sub_1DD3ADFD0(v19, &qword_1ECCDB888, &unk_1DD643010);
LABEL_11:
    v43 = 2304;
    goto LABEL_13;
  }

  (*(v25 + 32))(v30, v19, v22);
  v42._countAndFlagsBits = sub_1DD63DC78();
  StreetType.Value.init(rawValue:)(v42);
  (*(v25 + 8))(v30, v22);
  if (v67 == 180)
  {
    goto LABEL_11;
  }

  v43 = v67 | 0x800;
LABEL_13:
  sub_1DD63E5D8();
  v44 = v65;
  OUTLINED_FUNCTION_8(v7, 1, v65);
  if (v35)
  {
    sub_1DD3ADFD0(v7, &qword_1ECCDB880, &qword_1DD643008);
    v48 = 1;
  }

  else
  {
    v46 = v58;
    v45 = v59;
    (*(v59 + 32))(v58, v7, v44);
    sub_1DD63DCB8();
    v47 = sub_1DD640AA8();

    (*(v45 + 8))(v46, v44);
    v48 = v47 != 0;
  }

  if (v39)
  {
    v49 = 5;
  }

  else
  {
    v49 = 0;
  }

  v50 = v60;
  v51 = v61;
  if (!v39)
  {
    v50 = 0;
  }

  v53 = v63;
  v52 = v64;
  if (v63)
  {
    v54 = 5;
  }

  else
  {
    v54 = 0;
  }

  if (!v63)
  {
    v51 = 0;
  }

  v55 = v62;
  if (!v64)
  {
    v55 = 0;
  }

  *v1 = v55;
  *(v1 + 8) = v52;
  if (v52)
  {
    v56 = 5124;
  }

  else
  {
    v56 = 0;
  }

  *(v1 + 16) = v56;
  *(v1 + 24) = v51;
  *(v1 + 32) = v53;
  *(v1 + 40) = v54;
  *(v1 + 41) = v37;
  *(v1 + 48) = v50;
  *(v1 + 56) = v39;
  *(v1 + 64) = v49;
  *(v1 + 65) = v43;
  *(v1 + 67) = v48;
  *(v1 + 72) = 0;
  *(v1 + 80) = 0;
  OUTLINED_FUNCTION_17();
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

uint64_t sub_1DD3AD738(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_1DD3AD77C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1DD3AD790(a1, a2);
  }

  return a1;
}

uint64_t sub_1DD3AD790(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

void sub_1DD3AD7E8()
{
  OUTLINED_FUNCTION_18_4();
  v133 = v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDB860, &qword_1DD642FE8);
  OUTLINED_FUNCTION_3(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_7_3();
  v137 = v6;
  OUTLINED_FUNCTION_6_2();
  v130 = sub_1DD63DC28();
  v7 = OUTLINED_FUNCTION_0(v130);
  v127 = v8;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_1();
  v126 = v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDB868, &qword_1DD642FF0);
  OUTLINED_FUNCTION_3(v12);
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_7_3();
  v128 = v16;
  OUTLINED_FUNCTION_6_2();
  v129 = sub_1DD63DC08();
  v17 = OUTLINED_FUNCTION_0(v129);
  v125 = v18;
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_1();
  v124 = v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDB870, &qword_1DD642FF8);
  OUTLINED_FUNCTION_3(v22);
  v24 = *(v23 + 64);
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v106 - v26;
  v138 = sub_1DD63E3F8();
  v28 = OUTLINED_FUNCTION_0(v138);
  v135 = v29;
  v31 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_2();
  v34 = v33 - v32;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDB878, &qword_1DD643000);
  OUTLINED_FUNCTION_3(v35);
  v37 = *(v36 + 64);
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_13_1();
  v39 = sub_1DD63DCE8();
  v40 = OUTLINED_FUNCTION_0(v39);
  v42 = *(v41 + 64);
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_2();
  v45 = v44 - v43;
  sub_1DD3ADFBC(v141);
  v46 = sub_1DD63E468();
  v136 = v47;
  if (v47)
  {
    v48 = v47;
    v49 = v46;

    v134 = v49;
    v50._countAndFlagsBits = v49;
    v50._object = v48;
    PersonPlaceName.BoundedValue.init(rawValue:)(v50);
    v51 = v140[0] | 0x30300;
  }

  else
  {
    v134 = 0;
    v51 = 0;
  }

  v131 = sub_1DD63E458();
  v132 = v52;
  sub_1DD63E488();
  v53 = OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_8(v53, v54, v39);
  if (v61)
  {
    sub_1DD3ADFD0(v0, &qword_1ECCDB878, &qword_1DD643000);
    LODWORD(v55) = 2;
  }

  else
  {
    OUTLINED_FUNCTION_9_2();
    v56(v45, v0, v39);
    sub_1DD63DCD8();
    v57 = sub_1DD640AA8();

    v58 = OUTLINED_FUNCTION_15_3();
    v59(v58, v39);
    if (v57)
    {
      v60 = v138;
      if (v57 == 1)
      {
        LODWORD(v55) = 1;
      }

      else
      {
        LODWORD(v55) = 2;
      }

      goto LABEL_12;
    }

    LODWORD(v55) = 0;
  }

  v60 = v138;
LABEL_12:
  sub_1DD63E478();
  OUTLINED_FUNCTION_8(v27, 1, v60);
  if (v61)
  {
    sub_1DD3ADFD0(v27, &qword_1ECCDB870, &qword_1DD642FF8);
    memcpy(v140, v141, sizeof(v140));
  }

  else
  {
    v123 = v55;
    (*(v135 + 32))(v34, v27, v60);
    sub_1DD63E3D8();
    OUTLINED_FUNCTION_5_5();
    v121 = v63;
    v122 = v62;
    if (v61)
    {
      v64 = 0;
    }

    else
    {
      v64 = 514;
    }

    v120 = v64;
    sub_1DD63E3B8();
    v119 = v65;
    OUTLINED_FUNCTION_5_5();
    v116 = v66;
    if (v61)
    {
      v67 = 0;
    }

    else
    {
      v67 = 514;
    }

    v118 = v67;
    sub_1DD63E3C8();
    v117 = v68;
    OUTLINED_FUNCTION_5_5();
    v114 = v69;
    if (v61)
    {
      v70 = 0;
    }

    else
    {
      v70 = 514;
    }

    v115 = v70;
    sub_1DD63E3A8();
    v72 = v71;
    OUTLINED_FUNCTION_5_5();
    v110 = v73;
    if (v61)
    {
      v74 = 0;
    }

    else
    {
      v74 = 514;
    }

    v112 = v74;
    sub_1DD63E3E8();
    v113 = v75;
    OUTLINED_FUNCTION_5_5();
    v109 = v76;
    if (v61)
    {
      v77 = 0;
    }

    else
    {
      v77 = 514;
    }

    v111 = v77;
    sub_1DD63E398();
    v79 = v78;
    OUTLINED_FUNCTION_5_5();
    v107 = v80;
    if (v61)
    {
      v81 = 0;
    }

    else
    {
      v81 = 514;
    }

    v108 = v81;
    v82 = v128;
    sub_1DD63E368();
    v83 = v82;
    v84 = v82;
    v85 = v129;
    OUTLINED_FUNCTION_8(v84, 1, v129);
    if (v61)
    {
      sub_1DD3ADFD0(v83, &qword_1ECCDB868, &qword_1DD642FF0);
      v86 = 768;
      v87 = v130;
    }

    else
    {
      v88 = v124;
      OUTLINED_FUNCTION_9_2();
      v89(v88, v83, v85);
      v90._countAndFlagsBits = sub_1DD63DBF8();
      OccupantNamePrefix.Value.init(rawValue:)(v90);
      v91 = OUTLINED_FUNCTION_15_3();
      v92(v91, v85);
      v87 = v130;
      if (v140[0] == 35)
      {
        v86 = 768;
      }

      else
      {
        v86 = v140[0] | 0x200;
      }
    }

    sub_1DD63E378();
    v93 = v137;
    OUTLINED_FUNCTION_8(v137, 1, v87);
    if (v61)
    {
      sub_1DD3ADFD0(v93, &qword_1ECCDB860, &qword_1DD642FE8);
      v94 = 768;
    }

    else
    {
      v95 = v126;
      v96 = v127;
      OUTLINED_FUNCTION_9_2();
      v97(v95, v93, v87);
      v98._countAndFlagsBits = sub_1DD63DC18();
      OccupantNamePostfix.Value.init(rawValue:)(v98);
      (*(v96 + 8))(v95, v87);
      if (v140[0] == 35)
      {
        v94 = 768;
      }

      else
      {
        v94 = v140[0] | 0x200;
      }

      v60 = v138;
    }

    v99 = sub_1DD63E388();
    v55 = v100;
    (*(v135 + 8))(v34, v60);
    if (v55)
    {
      v101 = v99;
    }

    else
    {
      v101 = 0;
    }

    v139[0] = v121;
    v139[1] = v122;
    if (v55)
    {
      v102 = 3;
    }

    else
    {
      v102 = 0;
    }

    LOWORD(v139[2]) = v120;
    v139[3] = v116;
    v139[4] = v119;
    LOWORD(v139[5]) = v118;
    v139[6] = v110;
    v139[7] = v72;
    LOWORD(v139[8]) = v112;
    v139[9] = v114;
    v139[10] = v117;
    LOWORD(v139[11]) = v115;
    v139[12] = v101;
    v139[13] = v55;
    LOBYTE(v139[14]) = v102;
    v139[15] = v109;
    v139[16] = v113;
    LOWORD(v139[17]) = v111;
    v139[18] = v107;
    v139[19] = v79;
    LOWORD(v139[20]) = v108;
    WORD1(v139[20]) = v86;
    WORD2(v139[20]) = v94;
    nullsub_1(v139);
    memcpy(v140, v139, sizeof(v140));
    LOBYTE(v55) = v123;
  }

  v103 = v131;
  v104 = v132;
  if (!v132)
  {
    v103 = 0;
  }

  v105 = v133;
  *v133 = v134;
  v105[1] = v136;
  *(v105 + 8) = v51;
  *(v105 + 18) = BYTE2(v51);
  *(v105 + 19) = v55;
  v105[3] = v103;
  v105[4] = v104;
  memcpy(v105 + 5, v140, 0xA6uLL);
  OUTLINED_FUNCTION_17();
}

uint64_t sub_1DD3ADF44(uint64_t a1, uint64_t a2)
{
  *(a1 + 16) = a2;
  *(a1 + 24) = 2 * a2;
  v3 = sub_1DD63F8B8();
  OUTLINED_FUNCTION_3(v3);
  v5 = *(v4 + 80);
  return a1;
}

uint64_t sub_1DD3ADFD0(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t AddressReference.Value.rawValue.getter()
{
  if (*v0)
  {
    result = 6647407;
  }

  else
  {
    result = 0x79627261656ELL;
  }

  *v0;
  return result;
}

uint64_t sub_1DD3AE0C8()
{
  sub_1DD63FDD8();
  OUTLINED_FUNCTION_37_1();
  sub_1DD63FDD8();
  OUTLINED_FUNCTION_38();
  v2 = v2 && v0 == v1;
  if (v2)
  {
    v3 = 1;
  }

  else
  {
    v3 = OUTLINED_FUNCTION_0_9();
  }

  return v3 & 1;
}

uint64_t sub_1DD3AE138()
{
  OUTLINED_FUNCTION_1_2();
  switch(v2)
  {
    case 2:
      OUTLINED_FUNCTION_4_4();
      break;
    case 3:
      OUTLINED_FUNCTION_23_1();
      v4 = v5 - 32;
      goto LABEL_5;
    case 4:
      OUTLINED_FUNCTION_23_1();
      v4 = v3 - 32;
LABEL_5:
      v0 = v4 | 0x8000000000000000;
      break;
    default:
      break;
  }

  OUTLINED_FUNCTION_11_6();
  switch(v9)
  {
    case 1:
      v7 = 28271;
      break;
    case 2:
      OUTLINED_FUNCTION_3_10();
      break;
    case 3:
      v7 = 0xD000000000000010;
      v10 = v8 - 32;
      goto LABEL_11;
    case 4:
      OUTLINED_FUNCTION_10_7();
LABEL_11:
      v1 = v10 | 0x8000000000000000;
      break;
    default:
      break;
  }

  if (v6 == v7 && v0 == v1)
  {
    v12 = 1;
  }

  else
  {
    v12 = OUTLINED_FUNCTION_0_9();
  }

  return v12 & 1;
}

uint64_t sub_1DD3AE238(char a1)
{
  v2 = 0xE800000000000000;
  switch(a1)
  {
    case 1:
      v2 = 0x80000001DD6688F0;
      break;
    case 2:
      v2 = 0x80000001DD668910;
      break;
    case 3:
      break;
    case 4:
      v2 = 0xED000064657A696CLL;
      break;
    default:
      v2 = 0x80000001DD6688D0;
      break;
  }

  OUTLINED_FUNCTION_28_0();
  switch(v9)
  {
    case 1:
      v1 = (v7 - 32) | 0x8000000000000000;
      v4 = 0xD000000000000017;
      break;
    case 2:
      v1 = (v6 - 32) | 0x8000000000000000;
      v4 = v5 + 6;
      break;
    case 3:
      break;
    case 4:
      v4 = 0x616974696E696E75;
      v1 = 0xED000064657A696CLL;
      break;
    default:
      v1 = (v8 - 32) | 0x8000000000000000;
      v4 = v5 + 1;
      break;
  }

  if (v3 == v4 && v2 == v1)
  {
    v11 = 1;
  }

  else
  {
    v11 = OUTLINED_FUNCTION_0_9();
  }

  return v11 & 1;
}

uint64_t sub_1DD3AE3B4(unsigned __int8 a1, char a2)
{
  v2 = 1953718640;
  v3 = 0xE400000000000000;
  v4 = a1;
  v5 = 1953718640;
  switch(v4)
  {
    case 1:
      v3 = 0xE700000000000000;
      v5 = 0x746E6573657270;
      break;
    case 2:
      v3 = 0xE600000000000000;
      v5 = 0x657275747566;
      break;
    case 3:
      v3 = 0xE700000000000000;
      v5 = 0x6E776F6E6B6E75;
      break;
    default:
      break;
  }

  v6 = 0xE400000000000000;
  switch(a2)
  {
    case 1:
      v6 = 0xE700000000000000;
      v2 = 0x746E6573657270;
      break;
    case 2:
      v6 = 0xE600000000000000;
      v2 = 0x657275747566;
      break;
    case 3:
      v6 = 0xE700000000000000;
      v2 = 0x6E776F6E6B6E75;
      break;
    default:
      break;
  }

  if (v5 == v2 && v3 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_0_9();
  }

  return v8 & 1;
}

uint64_t sub_1DD3AE4E8(char a1, char a2)
{
  if (*&aEverydayweekda[8 * a1] == *&aEverydayweekda[8 * a2])
  {
    v2 = 1;
  }

  else
  {
    v2 = sub_1DD640CD8();
  }

  swift_bridgeObjectRelease_n();
  return v2 & 1;
}

uint64_t sub_1DD3AE554(char a1, char a2)
{
  v2 = 0x65646F6370697ALL;
  if (a1)
  {
    OUTLINED_FUNCTION_15_4();
    if (v3)
    {
      v5 = 28265;
    }

    else
    {
      v5 = 1918985582;
    }

    if (v3)
    {
      v6 = v4;
    }

    else
    {
      v6 = 0xE400000000000000;
    }
  }

  else
  {
    v6 = 0xE700000000000000;
    v5 = 0x65646F6370697ALL;
  }

  if (a2)
  {
    OUTLINED_FUNCTION_15_4();
    if (v7)
    {
      v2 = 28265;
    }

    else
    {
      v2 = 1918985582;
    }

    if (v7)
    {
      v9 = v8;
    }

    else
    {
      v9 = 0xE400000000000000;
    }
  }

  else
  {
    v9 = 0xE700000000000000;
  }

  if (v5 == v2 && v6 == v9)
  {
    v11 = 1;
  }

  else
  {
    v11 = OUTLINED_FUNCTION_0_9();
  }

  return v11 & 1;
}

uint64_t sub_1DD3AE62C(unsigned __int8 a1, char a2)
{
  v2 = 0x7972746E756F63;
  v3 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v4 = 28265;
    }

    else
    {
      v4 = 1918985582;
    }

    if (v3 == 1)
    {
      v5 = 0xE200000000000000;
    }

    else
    {
      v5 = 0xE400000000000000;
    }
  }

  else
  {
    v5 = 0xE700000000000000;
    v4 = 0x7972746E756F63;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v2 = 28265;
    }

    else
    {
      v2 = 1918985582;
    }

    if (a2 == 1)
    {
      v6 = 0xE200000000000000;
    }

    else
    {
      v6 = 0xE400000000000000;
    }
  }

  else
  {
    v6 = 0xE700000000000000;
  }

  if (v4 == v2 && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_0_9();
  }

  return v8 & 1;
}

uint64_t sub_1DD3AE6F4(unsigned __int8 a1, char a2)
{
  v2 = 0x73656C696DLL;
  v3 = 0xE500000000000000;
  v4 = a1;
  v5 = 0x73656C696DLL;
  switch(v4)
  {
    case 1:
      v3 = 0xE600000000000000;
      v5 = 0x73726574656DLL;
      break;
    case 2:
      v5 = 0x6574656D6F6C696BLL;
      v3 = 0xEA00000000007372;
      break;
    case 3:
      v5 = 0x6C6163697475616ELL;
      v3 = 0xEE0073656C696D20;
      break;
    default:
      break;
  }

  v6 = 0xE500000000000000;
  switch(a2)
  {
    case 1:
      v6 = 0xE600000000000000;
      v2 = 0x73726574656DLL;
      break;
    case 2:
      v2 = 0x6574656D6F6C696BLL;
      v6 = 0xEA00000000007372;
      break;
    case 3:
      v2 = 0x6C6163697475616ELL;
      v6 = 0xEE0073656C696D20;
      break;
    default:
      break;
  }

  if (v5 == v2 && v3 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_0_9();
  }

  return v8 & 1;
}

uint64_t sub_1DD3AE848(unsigned __int8 a1, char a2)
{
  v4 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v5 = 0x79746E756F63;
    }

    else
    {
      v5 = 1918985582;
    }

    if (v4 == 1)
    {
      v2 = 0xE600000000000000;
    }

    else
    {
      v2 = 0xE400000000000000;
    }
  }

  else
  {
    v5 = OUTLINED_FUNCTION_14_7();
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v6 = 0x79746E756F63;
    }

    else
    {
      v6 = 1918985582;
    }

    if (a2 == 1)
    {
      v3 = 0xE600000000000000;
    }

    else
    {
      v3 = 0xE400000000000000;
    }
  }

  else
  {
    OUTLINED_FUNCTION_13_2();
  }

  if (v5 == v6 && v2 == v3)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_0_9();
  }

  return v8 & 1;
}

uint64_t sub_1DD3AE90C(unsigned __int8 a1, char a2)
{
  v4 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v5 = 0x6574617473;
    }

    else
    {
      v5 = 1918985582;
    }

    if (v4 == 1)
    {
      v2 = 0xE500000000000000;
    }

    else
    {
      v2 = 0xE400000000000000;
    }
  }

  else
  {
    v5 = OUTLINED_FUNCTION_14_7();
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v6 = 0x6574617473;
    }

    else
    {
      v6 = 1918985582;
    }

    if (a2 == 1)
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
    OUTLINED_FUNCTION_13_2();
  }

  if (v5 == v6 && v2 == v3)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_0_9();
  }

  return v8 & 1;
}

uint64_t sub_1DD3AE9D0(unsigned __int8 a1, char a2)
{
  v2 = 2037672291;
  v3 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v4 = 28265;
    }

    else
    {
      v4 = 1918985582;
    }

    if (v3 == 1)
    {
      v5 = 0xE200000000000000;
    }

    else
    {
      v5 = 0xE400000000000000;
    }
  }

  else
  {
    v5 = 0xE400000000000000;
    v4 = 2037672291;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v2 = 28265;
    }

    else
    {
      v2 = 1918985582;
    }

    if (a2 == 1)
    {
      v6 = 0xE200000000000000;
    }

    else
    {
      v6 = 0xE400000000000000;
    }
  }

  else
  {
    v6 = 0xE400000000000000;
  }

  if (v4 == v2 && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_0_9();
  }

  return v8 & 1;
}

uint64_t sub_1DD3AEA94()
{
  v0 = 0xE900000000000064;
  OUTLINED_FUNCTION_21();
  v3 = v2 & 0xFFFFFFFFFFFFLL | 0x656D000000000000;
  v5 = v4;
  v6 = v3;
  v7 = 0xE900000000000064;
  switch(v5)
  {
    case 1:
      v7 = 0xE800000000000000;
      v6 = 0x64657463656A6572;
      break;
    case 2:
      v6 = 0x656C6C65636E6163;
      break;
    case 3:
      v7 = 0xE500000000000000;
      v6 = 0x7465736E75;
      break;
    default:
      break;
  }

  switch(v1)
  {
    case 1:
      v0 = 0xE800000000000000;
      v3 = 0x64657463656A6572;
      break;
    case 2:
      v3 = 0x656C6C65636E6163;
      break;
    case 3:
      v0 = 0xE500000000000000;
      v3 = 0x7465736E75;
      break;
    default:
      break;
  }

  if (v6 == v3 && v7 == v0)
  {
    v9 = 1;
  }

  else
  {
    v9 = OUTLINED_FUNCTION_2_5();
  }

  return v9 & 1;
}

uint64_t sub_1DD3AEBC4()
{
  OUTLINED_FUNCTION_16_2();
  v3 = v2;
  v4 = 0xE900000000000074;
  switch(v5)
  {
    case 1:
      v3 = 0xD000000000000013;
      v4 = 0x80000001DD668A50;
      break;
    case 2:
      v4 = 0xE400000000000000;
      v3 = 1701736302;
      break;
    case 3:
      OUTLINED_FUNCTION_39();
      OUTLINED_FUNCTION_36();
      break;
    default:
      break;
  }

  switch(v1)
  {
    case 1:
      OUTLINED_FUNCTION_10_7();
      v0 = v6 | 0x8000000000000000;
      break;
    case 2:
      v0 = 0xE400000000000000;
      v2 = 1701736302;
      break;
    case 3:
      OUTLINED_FUNCTION_31_1();
      OUTLINED_FUNCTION_35_1();
      break;
    default:
      break;
  }

  if (v3 == v2 && v4 == v0)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_2_5();
  }

  return v8 & 1;
}

uint64_t sub_1DD3AECC8(unsigned __int8 a1, char a2)
{
  v2 = 0xE900000000000064;
  v3 = 0x636572726F636E69;
  v4 = 0xE900000000000074;
  v5 = a1;
  v6 = 0x636572726F636E69;
  v7 = "correctAutoselection";
  switch(v5)
  {
    case 1:
      v6 = 0xD000000000000012;
      v4 = 0x80000001DD668A10;
      break;
    case 2:
      break;
    case 3:
      v6 = OUTLINED_FUNCTION_20_1();
      break;
    case 4:
      OUTLINED_FUNCTION_39();
      OUTLINED_FUNCTION_35_1();
      break;
    default:
      v4 = 0x80000001DD6689F0;
      v6 = 0xD000000000000014;
      break;
  }

  v8 = v2 + 16;
  switch(a2)
  {
    case 1:
      OUTLINED_FUNCTION_10_7();
      v8 = v9 | 0x8000000000000000;
      break;
    case 2:
      break;
    case 3:
      OUTLINED_FUNCTION_18_5();
      break;
    case 4:
      OUTLINED_FUNCTION_31_1();
      OUTLINED_FUNCTION_36();
      break;
    default:
      v8 = (v7 - 32) | 0x8000000000000000;
      v3 = 0xD000000000000014;
      break;
  }

  if (v6 == v3 && v4 == v8)
  {
    v11 = 1;
  }

  else
  {
    v11 = OUTLINED_FUNCTION_0_9();
  }

  return v11 & 1;
}

uint64_t sub_1DD3AEE24(unsigned __int8 a1, char a2)
{
  v2 = 0xED00006E6F697463;
  v3 = 0x656C65736F747561;
  v4 = a1;
  v5 = 0x656C65736F747561;
  v6 = 0xED00006E6F697463;
  switch(v4)
  {
    case 1:
      v5 = 0x616D7269666E6F63;
      v6 = 0xEC0000006E6F6974;
      break;
    case 2:
      OUTLINED_FUNCTION_12_4();
      v5 = v7 | 1;
      break;
    case 3:
      v5 = OUTLINED_FUNCTION_8_0();
      break;
    default:
      break;
  }

  switch(a2)
  {
    case 1:
      OUTLINED_FUNCTION_21();
      v3 = v8 & 0xFFFFFFFFFFFFLL | 0x616D000000000000;
      v2 = 0xEC0000006E6F6974;
      break;
    case 2:
      OUTLINED_FUNCTION_9_3();
      v3 = v9 | 1;
      break;
    case 3:
      OUTLINED_FUNCTION_7_4();
      break;
    default:
      break;
  }

  if (v5 == v3 && v6 == v2)
  {
    v11 = 1;
  }

  else
  {
    v11 = OUTLINED_FUNCTION_2_5();
  }

  return v11 & 1;
}

uint64_t sub_1DD3AEF50(unsigned __int8 a1, char a2)
{
  v2 = 0x7473726966;
  v3 = 0xE500000000000000;
  v4 = a1;
  v5 = 0x7473726966;
  switch(v4)
  {
    case 1:
      v5 = 0x327478656ELL;
      break;
    case 2:
      v5 = 0x337265766FLL;
      break;
    case 3:
      v5 = OUTLINED_FUNCTION_26_3();
      v3 = 0xED0000726568744FLL;
      break;
    case 4:
      v5 = OUTLINED_FUNCTION_20_1();
      break;
    default:
      break;
  }

  v6 = 0xE500000000000000;
  switch(a2)
  {
    case 1:
      v2 = 0x327478656ELL;
      break;
    case 2:
      v2 = 0x337265766FLL;
      break;
    case 3:
      OUTLINED_FUNCTION_6_3();
      v6 = 0xED0000726568744FLL;
      break;
    case 4:
      OUTLINED_FUNCTION_18_5();
      break;
    default:
      break;
  }

  if (v5 == v2 && v3 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_0_9();
  }

  return v8 & 1;
}

uint64_t sub_1DD3AF07C()
{
  OUTLINED_FUNCTION_6_3();
  v3 = v0;
  if (v0)
  {
    if (v0 == 1)
    {
      v4 = 0x656E6F646E616261;
    }

    else
    {
      v4 = v2;
    }

    if (v3 == 1)
    {
      v5 = 0xE900000000000064;
    }

    else
    {
      v5 = 0xED0000726568744FLL;
    }
  }

  else
  {
    v5 = 0xE800000000000000;
    v4 = v2;
  }

  if (v1)
  {
    if (v1 == 1)
    {
      v2 = 0x656E6F646E616261;
      v6 = 0xE900000000000064;
    }

    else
    {
      v6 = 0xED0000726568744FLL;
    }
  }

  else
  {
    v6 = 0xE800000000000000;
  }

  if (v4 == v2 && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_0_9();
  }

  return v8 & 1;
}

uint64_t sub_1DD3AF160(unsigned __int8 a1, char a2)
{
  v2 = 0xED00006F69647541;
  v3 = 0x656D697465636166;
  v4 = a1;
  v5 = 0x656D697465636166;
  v6 = 0xED00006F69647541;
  switch(v4)
  {
    case 1:
      v6 = 0xED00006F65646956;
      v5 = 0x656D697465636166;
      break;
    case 2:
      v5 = 0x6C6143656E6F6870;
      v6 = 0xE90000000000006CLL;
      break;
    case 3:
      v6 = 0xE700000000000000;
      v5 = 0x6567617373656DLL;
      break;
    case 4:
      v5 = OUTLINED_FUNCTION_29_0();
      v6 = 0xEB00000000646569;
      break;
    default:
      break;
  }

  switch(a2)
  {
    case 1:
      v2 = 0xED00006F65646956;
      break;
    case 2:
      v3 = 0x6C6143656E6F6870;
      v2 = 0xE90000000000006CLL;
      break;
    case 3:
      v2 = 0xE700000000000000;
      v3 = 0x6567617373656DLL;
      break;
    case 4:
      OUTLINED_FUNCTION_27_1();
      v2 = 0xEB00000000646569;
      break;
    default:
      break;
  }

  if (v5 == v3 && v6 == v2)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_2_5();
  }

  return v8 & 1;
}

uint64_t sub_1DD3AF2D8(char a1, char a2)
{
  v2 = 7562617;
  if (a1)
  {
    OUTLINED_FUNCTION_34_2();
    if (v4 == 1)
    {
      v8 = v6;
    }

    else
    {
      v8 = v7;
    }

    if (v4 == 1)
    {
      v9 = v5;
    }

    else
    {
      v9 = (v3 - 32) | 0x8000000000000000;
    }
  }

  else
  {
    v9 = 0xE300000000000000;
    v8 = 7562617;
  }

  if (a2)
  {
    OUTLINED_FUNCTION_34_2();
    v15 = (v14 - 32) | 0x8000000000000000;
    if (v10 == 1)
    {
      v2 = v12;
    }

    else
    {
      v2 = v13;
    }

    if (v10 == 1)
    {
      v16 = v11;
    }

    else
    {
      v16 = v15;
    }
  }

  else
  {
    v16 = 0xE300000000000000;
  }

  if (v8 == v2 && v9 == v16)
  {
    v18 = 1;
  }

  else
  {
    v18 = OUTLINED_FUNCTION_0_9();
  }

  return v18 & 1;
}

uint64_t sub_1DD3AF3B8(unsigned __int8 a1, char a2)
{
  v2 = 0x74726F7073;
  v3 = 0xE500000000000000;
  v4 = a1;
  v5 = 0x74726F7073;
  switch(v4)
  {
    case 1:
      v3 = 0xE600000000000000;
      v5 = 0x65756761656CLL;
      break;
    case 2:
      v3 = 0xE400000000000000;
      v5 = 1835099508;
      break;
    case 3:
      v3 = 0xE700000000000000;
      v5 = 0x6574656C687461;
      break;
    case 4:
      v3 = 0xE300000000000000;
      v5 = 7105633;
      break;
    default:
      break;
  }

  v6 = 0xE500000000000000;
  switch(a2)
  {
    case 1:
      v6 = 0xE600000000000000;
      v2 = 0x65756761656CLL;
      break;
    case 2:
      v6 = 0xE400000000000000;
      v2 = 1835099508;
      break;
    case 3:
      v6 = 0xE700000000000000;
      v2 = 0x6574656C687461;
      break;
    case 4:
      v6 = 0xE300000000000000;
      v2 = 7105633;
      break;
    default:
      break;
  }

  if (v5 == v2 && v3 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_0_9();
  }

  return v8 & 1;
}

uint64_t sub_1DD3AF4FC()
{
  v0 = 0xEC0000006E6F6974;
  OUTLINED_FUNCTION_21();
  v3 = v2 & 0xFFFFFFFFFFFFLL | 0x616D000000000000;
  v5 = v4;
  v6 = v3;
  v7 = 0xEC0000006E6F6974;
  switch(v5)
  {
    case 1:
      v6 = OUTLINED_FUNCTION_8_0();
      break;
    case 2:
      break;
    case 3:
      v6 = 0x6F69747563657865;
      v7 = 0xE90000000000006ELL;
      break;
    case 4:
      v6 = 0x6E61486B63697571;
      v7 = 0xEB00000000707567;
      break;
    default:
      OUTLINED_FUNCTION_12_4();
      v6 = v8 | 1;
      break;
  }

  switch(v1)
  {
    case 1:
      OUTLINED_FUNCTION_7_4();
      break;
    case 2:
      break;
    case 3:
      v3 = 0x6F69747563657865;
      v0 = 0xE90000000000006ELL;
      break;
    case 4:
      v3 = 0x6E61486B63697571;
      v0 = 0xEB00000000707567;
      break;
    default:
      OUTLINED_FUNCTION_9_3();
      v3 = v9 | 1;
      break;
  }

  if (v6 == v3 && v7 == v0)
  {
    v11 = 1;
  }

  else
  {
    v11 = OUTLINED_FUNCTION_2_5();
  }

  return v11 & 1;
}

uint64_t sub_1DD3AF65C(unsigned __int8 a1, char a2)
{
  v2 = 0x746361746E6F63;
  v3 = 0xE700000000000000;
  v4 = a1;
  v5 = 0x746361746E6F63;
  switch(v4)
  {
    case 1:
      v5 = 0x636E656772656D65;
      v3 = 0xE900000000000079;
      break;
    case 2:
      v5 = 0x6C646E6148776172;
      v3 = 0xE900000000000065;
      break;
    case 3:
      v3 = 0xE600000000000000;
      v5 = 0x64726143656DLL;
      break;
    case 4:
      v5 = 0x6E6F436E776F6E6BLL;
      v3 = 0xEC00000074636174;
      break;
    default:
      break;
  }

  v6 = 0xE700000000000000;
  switch(a2)
  {
    case 1:
      v2 = 0x636E656772656D65;
      v6 = 0xE900000000000079;
      break;
    case 2:
      v2 = 0x6C646E6148776172;
      v6 = 0xE900000000000065;
      break;
    case 3:
      v6 = 0xE600000000000000;
      v2 = 0x64726143656DLL;
      break;
    case 4:
      v2 = 0x6E6F436E776F6E6BLL;
      v6 = 0xEC00000074636174;
      break;
    default:
      break;
  }

  if (v5 == v2 && v3 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_0_9();
  }

  return v8 & 1;
}

uint64_t sub_1DD3AF7EC(unsigned __int8 a1, char a2)
{
  v2 = 0x6D6F646E6172;
  v3 = 0xE600000000000000;
  v4 = a1;
  v5 = 0x6D6F646E6172;
  switch(v4)
  {
    case 1:
      v3 = 0xE800000000000000;
      v5 = 0x53554C506D6F7266;
      break;
    case 2:
      v3 = 0x80000001DD668AA0;
      v5 = 0xD00000000000001BLL;
      break;
    case 3:
      v5 = 0x6167654D6D6F7266;
      v3 = 0xEF524345656D6F64;
      break;
    case 4:
      v5 = 0xD000000000000011;
      v3 = 0x80000001DD668AD0;
      break;
    case 5:
      v3 = 0xE400000000000000;
      v5 = 1701736302;
      break;
    default:
      break;
  }

  v6 = 0xE600000000000000;
  switch(a2)
  {
    case 1:
      v6 = 0xE800000000000000;
      v2 = 0x53554C506D6F7266;
      break;
    case 2:
      v6 = 0x80000001DD668AA0;
      v2 = 0xD00000000000001BLL;
      break;
    case 3:
      v2 = 0x6167654D6D6F7266;
      v6 = 0xEF524345656D6F64;
      break;
    case 4:
      OUTLINED_FUNCTION_10_7();
      v6 = v7 | 0x8000000000000000;
      break;
    case 5:
      v6 = 0xE400000000000000;
      v2 = 1701736302;
      break;
    default:
      break;
  }

  if (v5 == v2 && v3 == v6)
  {
    v9 = 1;
  }

  else
  {
    v9 = OUTLINED_FUNCTION_0_9();
  }

  return v9 & 1;
}

uint64_t sub_1DD3AF99C(unsigned __int8 a1, char a2)
{
  v2 = 6775156;
  v3 = 0xE300000000000000;
  v4 = a1;
  v5 = 6775156;
  switch(v4)
  {
    case 1:
      v3 = 0xE200000000000000;
      v5 = 25705;
      break;
    case 2:
      v5 = 0x6974756C6F736572;
      v3 = 0xEA00000000006E6FLL;
      break;
    case 3:
      v5 = 7562345;
      break;
    case 4:
      v5 = OUTLINED_FUNCTION_26_3();
      v3 = 0xEA00000000006449;
      break;
    default:
      break;
  }

  v6 = 0xE300000000000000;
  switch(a2)
  {
    case 1:
      v6 = 0xE200000000000000;
      v2 = 25705;
      break;
    case 2:
      v2 = 0x6974756C6F736572;
      v6 = 0xEA00000000006E6FLL;
      break;
    case 3:
      v2 = 7562345;
      break;
    case 4:
      OUTLINED_FUNCTION_6_3();
      v6 = 0xEA00000000006449;
      break;
    default:
      break;
  }

  if (v5 == v2 && v3 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_0_9();
  }

  return v8 & 1;
}

uint64_t sub_1DD3AFAE0(__int16 a1, __int16 a2)
{
  sub_1DD538ED0(a1);
  OUTLINED_FUNCTION_37_1();
  sub_1DD538ED0(a2);
  OUTLINED_FUNCTION_38();
  v5 = v5 && v2 == v4;
  if (v5)
  {
    v6 = 1;
  }

  else
  {
    v6 = OUTLINED_FUNCTION_0_9();
  }

  return v6 & 1;
}

uint64_t sub_1DD3AFB50(char a1)
{
  if (a1)
  {
    v1 = "missingDataFromTaskId";
  }

  else
  {
    v1 = "SIRI_SUGGESTIONS_DOMAIN_GROUP_B";
  }

  v2 = v1 | 0x8000000000000000;
  OUTLINED_FUNCTION_22_1();
  if (v8)
  {
    v7 = v6;
  }

  else
  {
    v7 = v5;
  }

  v8 = v3 == v4 && v2 == (v7 | 0x8000000000000000);
  if (v8)
  {
    v9 = 1;
  }

  else
  {
    v9 = OUTLINED_FUNCTION_0_9();
  }

  return v9 & 1;
}

uint64_t sub_1DD3AFBE4()
{
  OUTLINED_FUNCTION_1_2();
  switch(v2)
  {
    case 1:
      v0 = 0xE800000000000000;
      break;
    case 2:
      OUTLINED_FUNCTION_4_4();
      break;
    case 3:
      v0 = 0xEC000000646F6F68;
      break;
    default:
      break;
  }

  OUTLINED_FUNCTION_11_6();
  switch(v5)
  {
    case 1:
      v1 = 0xE800000000000000;
      v4 = 0x7463697274736964;
      break;
    case 2:
      OUTLINED_FUNCTION_3_10();
      break;
    case 3:
      v4 = 0x726F62686769656ELL;
      v1 = 0xEC000000646F6F68;
      break;
    default:
      break;
  }

  if (v3 == v4 && v0 == v1)
  {
    v7 = 1;
  }

  else
  {
    v7 = OUTLINED_FUNCTION_0_9();
  }

  return v7 & 1;
}

uint64_t sub_1DD3AFCF8(unsigned __int8 a1, char a2)
{
  v2 = "Popularity";
  v3 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v4 = 0xD000000000000013;
    }

    else
    {
      v4 = 0xD000000000000011;
    }

    if (v3 == 1)
    {
      v5 = "missingRunTimeDataRecords";
    }

    else
    {
      v5 = "missingIntentEvents";
    }
  }

  else
  {
    v4 = 0xD000000000000019;
    v5 = "Popularity";
  }

  if (a2)
  {
    v2 = "missingRunTimeDataRecords";
    if (a2 == 1)
    {
      v6 = 0xD000000000000013;
    }

    else
    {
      v6 = 0xD000000000000011;
    }

    if (a2 != 1)
    {
      v2 = "missingIntentEvents";
    }
  }

  else
  {
    v6 = 0xD000000000000019;
  }

  if (v4 == v6 && (v5 | 0x8000000000000000) == (v2 | 0x8000000000000000))
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_0_9();
  }

  return v8 & 1;
}

uint64_t sub_1DD3AFDCC(char a1)
{
  v2 = 0xE800000000000000;
  switch(a1)
  {
    case 1:
      v2 = 0xEA00000000006E6FLL;
      break;
    case 3:
      v2 = 0xE90000000000006ELL;
      break;
    default:
      break;
  }

  OUTLINED_FUNCTION_28_0();
  switch(v5)
  {
    case 1:
      v4 = 0x7372655033766C6ELL;
      v1 = 0xEA00000000006E6FLL;
      break;
    case 2:
      v4 = 0x746E6567416F7375;
      break;
    case 3:
      v4 = 0x6F737265506F7375;
      v1 = 0xE90000000000006ELL;
      break;
    case 4:
      v4 = 0x6863726165536669;
      break;
    default:
      break;
  }

  if (v3 == v4 && v2 == v1)
  {
    v7 = 1;
  }

  else
  {
    v7 = OUTLINED_FUNCTION_0_9();
  }

  return v7 & 1;
}

uint64_t sub_1DD3AFF38(unsigned __int8 a1, char a2)
{
  v2 = 0x737961776C61;
  v3 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v4 = 0x6E49646E61436F6ELL;
    }

    else
    {
      v4 = 1701736302;
    }

    if (v3 == 1)
    {
      v5 = 0xEB00000000727243;
    }

    else
    {
      v5 = 0xE400000000000000;
    }
  }

  else
  {
    v5 = 0xE600000000000000;
    v4 = 0x737961776C61;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v2 = 0x6E49646E61436F6ELL;
    }

    else
    {
      v2 = 1701736302;
    }

    if (a2 == 1)
    {
      v6 = 0xEB00000000727243;
    }

    else
    {
      v6 = 0xE400000000000000;
    }
  }

  else
  {
    v6 = 0xE600000000000000;
  }

  if (v4 == v2 && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_0_9();
  }

  return v8 & 1;
}

uint64_t sub_1DD3B003C()
{
  OUTLINED_FUNCTION_16_2();
  v3 = v2;
  v4 = 0xE900000000000074;
  switch(v5)
  {
    case 1:
      v3 = 0xD000000000000011;
      v4 = 0x80000001DD669AF0;
      break;
    case 2:
      v4 = 0x80000001DD668A50;
      v3 = 0xD000000000000013;
      break;
    case 3:
      v4 = 0xE400000000000000;
      v3 = 1701736302;
      break;
    default:
      break;
  }

  switch(v1)
  {
    case 1:
      v2 = 0xD000000000000011;
      v0 = 0x80000001DD669AF0;
      break;
    case 2:
      v0 = 0x80000001DD668A50;
      v2 = 0xD000000000000013;
      break;
    case 3:
      v0 = 0xE400000000000000;
      v2 = 1701736302;
      break;
    default:
      break;
  }

  if (v3 == v2 && v4 == v0)
  {
    v7 = 1;
  }

  else
  {
    v7 = OUTLINED_FUNCTION_2_5();
  }

  return v7 & 1;
}

uint64_t sub_1DD3B017C(unsigned __int8 a1, char a2)
{
  v2 = 0x7472617473;
  v3 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v4 = 6581861;
    }

    else
    {
      v4 = 0x746573746F6ELL;
    }

    if (v3 == 1)
    {
      v5 = 0xE300000000000000;
    }

    else
    {
      v5 = 0xE600000000000000;
    }
  }

  else
  {
    v5 = 0xE500000000000000;
    v4 = 0x7472617473;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v2 = 6581861;
    }

    else
    {
      v2 = 0x746573746F6ELL;
    }

    if (a2 == 1)
    {
      v6 = 0xE300000000000000;
    }

    else
    {
      v6 = 0xE600000000000000;
    }
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  if (v4 == v2 && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_0_9();
  }

  return v8 & 1;
}

uint64_t sub_1DD3B0250(char a1)
{
  if (a1)
  {
    v1 = 0xE500000000000000;
  }

  else
  {
    v1 = 0xE400000000000000;
  }

  OUTLINED_FUNCTION_22_1();
  if (v7)
  {
    v6 = v4;
  }

  else
  {
    v6 = v5;
  }

  v7 = v2 == v3 && v1 == v6;
  if (v7)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_0_9();
  }

  return v8 & 1;
}

uint64_t sub_1DD3B02D4(char a1)
{
  if (a1)
  {
    v1 = 0xEB0000000065756CLL;
  }

  else
  {
    v1 = 0xE200000000000000;
  }

  OUTLINED_FUNCTION_22_1();
  if (v7)
  {
    v6 = v4;
  }

  else
  {
    v6 = v5;
  }

  v7 = v2 == v3 && v1 == v6;
  if (v7)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_0_9();
  }

  return v8 & 1;
}

uint64_t sub_1DD3B0360(unsigned __int8 a1, char a2)
{
  v2 = 0x6E6F6973726576;
  v3 = 0xE700000000000000;
  v4 = a1;
  v5 = 0x6E6F6973726576;
  switch(v4)
  {
    case 1:
      v5 = 0x646E6F6973726576;
      v3 = 0xEB00000000657461;
      break;
    case 2:
      v6 = 0x6164696C6F68;
      goto LABEL_6;
    case 3:
      v6 = 0x72746E756F63;
LABEL_6:
      v5 = v6 & 0xFFFFFFFFFFFFLL | 0x79000000000000;
      break;
    case 4:
      v5 = 0x6F666E4977656ELL;
      break;
    case 5:
      v5 = 0x7261646E656C6163;
      v3 = 0xE900000000000073;
      break;
    default:
      break;
  }

  v7 = 0xE700000000000000;
  switch(a2)
  {
    case 1:
      v2 = 0x646E6F6973726576;
      v7 = 0xEB00000000657461;
      break;
    case 2:
      v8 = 0x6164696C6F68;
      goto LABEL_13;
    case 3:
      v8 = 0x72746E756F63;
LABEL_13:
      v2 = v8 & 0xFFFFFFFFFFFFLL | 0x79000000000000;
      break;
    case 4:
      v2 = 0x6F666E4977656ELL;
      break;
    case 5:
      v2 = 0x7261646E656C6163;
      v7 = 0xE900000000000073;
      break;
    default:
      break;
  }

  if (v5 == v2 && v3 == v7)
  {
    v10 = 1;
  }

  else
  {
    v10 = OUTLINED_FUNCTION_0_9();
  }

  return v10 & 1;
}

uint64_t sub_1DD3B0510(char a1, char a2)
{
  v2 = (a1 & 1) == 0;
  if (a1)
  {
    v3 = 6647407;
  }

  else
  {
    v3 = 0x79627261656ELL;
  }

  if (v2)
  {
    v4 = 0xE600000000000000;
  }

  else
  {
    v4 = 0xE300000000000000;
  }

  if (a2)
  {
    v5 = 6647407;
  }

  else
  {
    v5 = 0x79627261656ELL;
  }

  if (a2)
  {
    v6 = 0xE300000000000000;
  }

  else
  {
    v6 = 0xE600000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1DD640CD8();
  }

  return v8 & 1;
}

uint64_t sub_1DD3B05A4(char a1, char a2)
{
  v2 = (a1 & 1) == 0;
  if (a1)
  {
    v3 = 1918985582;
  }

  else
  {
    v3 = 28265;
  }

  if (v2)
  {
    v4 = 0xE200000000000000;
  }

  else
  {
    v4 = 0xE400000000000000;
  }

  if (a2)
  {
    v5 = 1918985582;
  }

  else
  {
    v5 = 28265;
  }

  if (a2)
  {
    v6 = 0xE400000000000000;
  }

  else
  {
    v6 = 0xE200000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1DD640CD8();
  }

  return v8 & 1;
}

uint64_t sub_1DD3B0630(unsigned __int8 a1, char a2)
{
  v2 = 0xEB00000000746F68;
  v3 = 0x53656E4F69726973;
  v4 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v5 = 0x6D6D6F6365526C6DLL;
    }

    else
    {
      v5 = 0x6369736162;
    }

    if (v4 == 1)
    {
      v6 = 0xED00007265646E65;
    }

    else
    {
      v6 = 0xE500000000000000;
    }
  }

  else
  {
    v5 = 0x53656E4F69726973;
    v6 = 0xEB00000000746F68;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v3 = 0x6D6D6F6365526C6DLL;
    }

    else
    {
      v3 = 0x6369736162;
    }

    if (a2 == 1)
    {
      v2 = 0xED00007265646E65;
    }

    else
    {
      v2 = 0xE500000000000000;
    }
  }

  if (v5 == v3 && v6 == v2)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_2_5();
  }

  return v8 & 1;
}

uint64_t sub_1DD3B0734(unsigned __int8 a1, char a2)
{
  v2 = 0xEC00000073736572;
  v3 = 0x64646120656D6F68;
  v4 = a1;
  v5 = 0x64646120656D6F68;
  v6 = 0xEC00000073736572;
  v7 = "current location";
  switch(v4)
  {
    case 1:
      v5 = 0x646461206B726F77;
      v6 = 0xEC00000073736572;
      break;
    case 2:
      v5 = OUTLINED_FUNCTION_23_1();
      v8 = v7 - 32;
      goto LABEL_11;
    case 3:
      v6 = 0xE600000000000000;
      v5 = 0x79627261656ELL;
      break;
    case 4:
      v5 = 0x61206C6F6F686373;
      v6 = 0xEE00737365726464;
      break;
    case 5:
      v9 = 544045415;
      goto LABEL_8;
    case 6:
      v5 = 0x646120726568746FLL;
      v6 = 0xED00007373657264;
      break;
    case 7:
      v9 = 544829025;
LABEL_8:
      v5 = v9 | 0x7264646100000000;
      v6 = 0xEB00000000737365;
      break;
    case 8:
      v5 = OUTLINED_FUNCTION_23_1();
      v8 = (v10 - 32);
LABEL_11:
      v6 = v8 | 0x8000000000000000;
      break;
    default:
      break;
  }

  switch(a2)
  {
    case 1:
      v3 = 0x646461206B726F77;
      break;
    case 2:
      v3 = 0xD000000000000010;
      v11 = v7 - 32;
      goto LABEL_22;
    case 3:
      v2 = 0xE600000000000000;
      v3 = 0x79627261656ELL;
      break;
    case 4:
      v3 = 0x61206C6F6F686373;
      v2 = 0xEE00737365726464;
      break;
    case 5:
      v12 = 544045415;
      goto LABEL_19;
    case 6:
      v3 = 0x646120726568746FLL;
      v2 = 0xED00007373657264;
      break;
    case 7:
      v12 = 544829025;
LABEL_19:
      v3 = v12 | 0x7264646100000000;
      v2 = 0xEB00000000737365;
      break;
    case 8:
      OUTLINED_FUNCTION_10_7();
LABEL_22:
      v2 = v11 | 0x8000000000000000;
      break;
    default:
      break;
  }

  if (v5 == v3 && v6 == v2)
  {
    v14 = 1;
  }

  else
  {
    v14 = OUTLINED_FUNCTION_2_5();
  }

  return v14 & 1;
}

uint64_t sub_1DD3B0974(char a1)
{
  v2 = 0xE800000000000000;
  switch(a1)
  {
    case 1:
      v2 = 0xE500000000000000;
      break;
    case 3:
      v2 = 0xE600000000000000;
      break;
    case 4:
      OUTLINED_FUNCTION_29_0();
      v2 = 0xEB00000000646569;
      break;
    default:
      break;
  }

  OUTLINED_FUNCTION_28_0();
  switch(v5)
  {
    case 1:
      v1 = 0xE500000000000000;
      v4 = 0x656E6F6870;
      break;
    case 2:
      v4 = 0x73746361746E6F63;
      break;
    case 3:
      v1 = 0xE600000000000000;
      v4 = 0x794D646E6966;
      break;
    case 4:
      OUTLINED_FUNCTION_27_1();
      v1 = 0xEB00000000646569;
      break;
    default:
      break;
  }

  if (v3 == v4 && v2 == v1)
  {
    v7 = 1;
  }

  else
  {
    v7 = OUTLINED_FUNCTION_0_9();
  }

  return v7 & 1;
}

uint64_t sub_1DD3B0AD8(unsigned __int8 a1, char a2)
{
  v2 = 0xEC00000065746144;
  v3 = 0x6574756C6F736241;
  v4 = a1;
  v5 = 0x6574756C6F736241;
  v6 = 0xEC00000065746144;
  switch(v4)
  {
    case 1:
      v6 = 0xE800000000000000;
      v5 = 0x7473694C65746144;
      break;
    case 2:
      OUTLINED_FUNCTION_12_4();
      v5 = v7 | 3;
      break;
    case 3:
      v5 = OUTLINED_FUNCTION_8_0();
      break;
    default:
      break;
  }

  switch(a2)
  {
    case 1:
      v2 = 0xE800000000000000;
      v3 = 0x7473694C65746144;
      break;
    case 2:
      OUTLINED_FUNCTION_9_3();
      v3 = v8 | 3;
      break;
    case 3:
      OUTLINED_FUNCTION_7_4();
      break;
    default:
      break;
  }

  if (v5 == v3 && v6 == v2)
  {
    v10 = 1;
  }

  else
  {
    v10 = OUTLINED_FUNCTION_2_5();
  }

  return v10 & 1;
}

uint64_t sub_1DD3B0BF8()
{
  OUTLINED_FUNCTION_1_2();
  switch(v2)
  {
    case 1:
      OUTLINED_FUNCTION_17_3();
      goto LABEL_4;
    case 2:
      v0 = 1852795252;
LABEL_4:
      v0 = v0 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
      break;
    case 3:
      OUTLINED_FUNCTION_4_4();
      break;
    default:
      break;
  }

  OUTLINED_FUNCTION_11_6();
  switch(v5)
  {
    case 1:
      OUTLINED_FUNCTION_19_3();
      goto LABEL_10;
    case 2:
      v4 = 0x6365737265746E69;
      v1 = 1852795252;
LABEL_10:
      v1 = v1 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
      break;
    case 3:
      OUTLINED_FUNCTION_3_10();
      break;
    case 4:
      v4 = 28271;
      break;
    default:
      break;
  }

  if (v3 == v4 && v0 == v1)
  {
    v7 = 1;
  }

  else
  {
    v7 = OUTLINED_FUNCTION_0_9();
  }

  return v7 & 1;
}

uint64_t sub_1DD3B0CFC(char a1, char a2)
{
  v2 = (a1 & 1) == 0;
  if (a1)
  {
    v3 = 0xD000000000000012;
  }

  else
  {
    v3 = 0x697375427478656ELL;
  }

  if (v2)
  {
    v4 = 0xEF7961447373656ELL;
  }

  else
  {
    v4 = 0x80000001DD668CC0;
  }

  if (a2)
  {
    v5 = 0xD000000000000012;
  }

  else
  {
    v5 = 0x697375427478656ELL;
  }

  if (a2)
  {
    v6 = 0x80000001DD668CC0;
  }

  else
  {
    v6 = 0xEF7961447373656ELL;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_0_9();
  }

  return v8 & 1;
}

uint64_t sub_1DD3B0DA0(char a1)
{
  v2 = 0xE800000000000000;
  switch(a1)
  {
    case 1:
      v2 = 0xE700000000000000;
      break;
    case 2:
      v2 = 0xE600000000000000;
      break;
    case 3:
      v2 = 0xE500000000000000;
      break;
    case 4:
      v2 = 0xE500000000000000;
      break;
    case 5:
      OUTLINED_FUNCTION_23_1();
      v2 = (v3 - 32) | 0x8000000000000000;
      break;
    case 6:
      v2 = 0xE700000000000000;
      break;
    case 7:
      v2 = 0xE90000000000004ELL;
      break;
    case 9:
      v2 = 0xE600000000000000;
      break;
    case 10:
      v2 = 0xE700000000000000;
      break;
    case 11:
      v2 = 0xE300000000000000;
      break;
    default:
      break;
  }

  OUTLINED_FUNCTION_28_0();
  switch(v6)
  {
    case 1:
      v1 = 0xE700000000000000;
      v5 = 0x4553454E494843;
      break;
    case 2:
      v1 = 0xE600000000000000;
      v5 = 0x574552424548;
      break;
    case 3:
      v1 = 0xE500000000000000;
      v5 = 0x49524A4948;
      break;
    case 4:
      v1 = 0xE500000000000000;
      v5 = 0x55444E4948;
      break;
    case 5:
      OUTLINED_FUNCTION_10_7();
      v1 = v7 | 0x8000000000000000;
      break;
    case 6:
      v1 = 0xE700000000000000;
      v5 = 0x43494D414C5349;
      break;
    case 7:
      v5 = 0x4149524F47455247;
      v1 = 0xE90000000000004ELL;
      break;
    case 8:
      v5 = 0x4553454E4150414ALL;
      break;
    case 9:
      v1 = 0xE600000000000000;
      v5 = 0x4E41494C554ALL;
      break;
    case 10:
      v1 = 0xE700000000000000;
      v5 = 0x4E414953524550;
      break;
    case 11:
      v1 = 0xE300000000000000;
      v5 = 4411218;
      break;
    default:
      break;
  }

  if (v4 == v5 && v2 == v1)
  {
    v9 = 1;
  }

  else
  {
    v9 = OUTLINED_FUNCTION_0_9();
  }

  return v9 & 1;
}

uint64_t sub_1DD3B1024()
{
  v0 = 0xED00006163697265;
  OUTLINED_FUNCTION_33();
  v3 = v2 | 0x6D41206800000000;
  v5 = v4;
  v6 = v3;
  v7 = 0xED00006163697265;
  switch(v5)
  {
    case 1:
      v6 = 0x6D41206874756F53;
      v7 = 0xED00006163697265;
      break;
    case 2:
      v6 = 0x6369747261746E41;
      v7 = 0xE900000000000061;
      break;
    case 3:
      v7 = 0xE600000000000000;
      v6 = 0x616369726641;
      break;
    case 4:
      v7 = 0xE600000000000000;
      v6 = 0x65706F727545;
      break;
    case 5:
      v7 = 0xE400000000000000;
      v6 = 1634300737;
      break;
    case 6:
      v7 = 0xE700000000000000;
      v8 = 0x697361727545;
      goto LABEL_9;
    case 7:
      v7 = 0xE700000000000000;
      v8 = 0x696E6165634FLL;
LABEL_9:
      v6 = v8 & 0xFFFFFFFFFFFFLL | 0x61000000000000;
      break;
    default:
      break;
  }

  switch(v1)
  {
    case 1:
      OUTLINED_FUNCTION_30_2();
      v3 = v9 | 0x6D41206800000000;
      break;
    case 2:
      v3 = 0x6369747261746E41;
      v0 = 0xE900000000000061;
      break;
    case 3:
      v0 = 0xE600000000000000;
      v3 = 0x616369726641;
      break;
    case 4:
      v0 = 0xE600000000000000;
      v3 = 0x65706F727545;
      break;
    case 5:
      v0 = 0xE400000000000000;
      v3 = 1634300737;
      break;
    case 6:
      v0 = 0xE700000000000000;
      v10 = 0x697361727545;
      goto LABEL_18;
    case 7:
      v0 = 0xE700000000000000;
      v10 = 0x696E6165634FLL;
LABEL_18:
      v3 = v10 & 0xFFFFFFFFFFFFLL | 0x61000000000000;
      break;
    default:
      break;
  }

  if (v6 == v3 && v7 == v0)
  {
    v12 = 1;
  }

  else
  {
    v12 = OUTLINED_FUNCTION_2_5();
  }

  return v12 & 1;
}

uint64_t sub_1DD3B1204(char a1, char a2)
{
  v2 = 0xE900000000000074;
  v3 = 0x6E656E69746E6F63;
  if (a1)
  {
    OUTLINED_FUNCTION_15_4();
    if (v4)
    {
      v6 = 28265;
    }

    else
    {
      v6 = 1918985582;
    }

    if (v4)
    {
      v7 = v5;
    }

    else
    {
      v7 = 0xE400000000000000;
    }
  }

  else
  {
    v6 = 0x6E656E69746E6F63;
    v7 = 0xE900000000000074;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v3 = 28265;
    }

    else
    {
      v3 = 1918985582;
    }

    if (a2 == 1)
    {
      v2 = 0xE200000000000000;
    }

    else
    {
      v2 = 0xE400000000000000;
    }
  }

  if (v6 == v3 && v7 == v2)
  {
    v9 = 1;
  }

  else
  {
    v9 = OUTLINED_FUNCTION_2_5();
  }

  return v9 & 1;
}

uint64_t sub_1DD3B12CC(unsigned __int8 a1, char a2)
{
  v2 = 0x7265626D756ELL;
  v3 = 0xE600000000000000;
  v4 = a1;
  v5 = 0x7265626D756ELL;
  switch(v4)
  {
    case 1:
      v5 = 0x7954746565727473;
      v3 = 0xEA00000000006570;
      break;
    case 2:
      v5 = OUTLINED_FUNCTION_14_7();
      break;
    case 3:
      v5 = OUTLINED_FUNCTION_4_4();
      break;
    case 4:
      v3 = 0xE200000000000000;
      v5 = 28271;
      break;
    default:
      break;
  }

  v6 = 0xE600000000000000;
  switch(a2)
  {
    case 1:
      v2 = 0x7954746565727473;
      v6 = 0xEA00000000006570;
      break;
    case 2:
      OUTLINED_FUNCTION_13_2();
      break;
    case 3:
      OUTLINED_FUNCTION_3_10();
      break;
    case 4:
      v6 = 0xE200000000000000;
      v2 = 28271;
      break;
    default:
      break;
  }

  if (v5 == v2 && v3 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_0_9();
  }

  return v8 & 1;
}

uint64_t sub_1DD3B13E8(char a1, char a2)
{
  v2 = 0x7369206572656877;
  if (a1)
  {
    OUTLINED_FUNCTION_15_4();
    if (v3)
    {
      v5 = 28265;
    }

    else
    {
      v5 = 28271;
    }

    if (v3)
    {
      v6 = v4;
    }

    else
    {
      v6 = 0xE200000000000000;
    }
  }

  else
  {
    v6 = 0xE800000000000000;
    v5 = 0x7369206572656877;
  }

  if (a2)
  {
    OUTLINED_FUNCTION_15_4();
    if (v7)
    {
      v2 = 28265;
    }

    else
    {
      v2 = 28271;
    }

    if (v7)
    {
      v9 = v8;
    }

    else
    {
      v9 = 0xE200000000000000;
    }
  }

  else
  {
    v9 = 0xE800000000000000;
  }

  if (v5 == v2 && v6 == v9)
  {
    v11 = 1;
  }

  else
  {
    v11 = OUTLINED_FUNCTION_0_9();
  }

  return v11 & 1;
}

uint64_t sub_1DD3B14A0(char a1, char a2)
{
  if (a1)
  {
    OUTLINED_FUNCTION_15_4();
    if (v2)
    {
      v4 = 29545;
    }

    else
    {
      v4 = 1918985582;
    }

    if (v2)
    {
      v5 = v3;
    }

    else
    {
      v5 = 0xE400000000000000;
    }
  }

  else
  {
    v5 = 0xE200000000000000;
    v4 = 29793;
  }

  if (a2)
  {
    OUTLINED_FUNCTION_15_4();
    if (v6)
    {
      v8 = 29545;
    }

    else
    {
      v8 = 1918985582;
    }

    if (v6)
    {
      v9 = v7;
    }

    else
    {
      v9 = 0xE400000000000000;
    }
  }

  else
  {
    v9 = 0xE200000000000000;
    v8 = 29793;
  }

  if (v4 == v8 && v5 == v9)
  {
    v11 = 1;
  }

  else
  {
    v11 = OUTLINED_FUNCTION_0_9();
  }

  return v11 & 1;
}

uint64_t sub_1DD3B1554(char a1, char a2)
{
  v2 = (a1 & 1) == 0;
  if (a1)
  {
    v3 = 1918985582;
  }

  else
  {
    v3 = 29793;
  }

  if (v2)
  {
    v4 = 0xE200000000000000;
  }

  else
  {
    v4 = 0xE400000000000000;
  }

  if (a2)
  {
    v5 = 1918985582;
  }

  else
  {
    v5 = 29793;
  }

  if (a2)
  {
    v6 = 0xE400000000000000;
  }

  else
  {
    v6 = 0xE200000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_0_9();
  }

  return v8 & 1;
}

uint64_t sub_1DD3B15D4(unsigned __int8 a1, char a2)
{
  v4 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v5 = 0x6973736573736F70;
    }

    else
    {
      v5 = 1918985582;
    }

    if (v4 == 1)
    {
      v2 = 0xEA00000000006576;
    }

    else
    {
      v2 = 0xE400000000000000;
    }
  }

  else
  {
    v5 = OUTLINED_FUNCTION_14_7();
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v6 = 0x6973736573736F70;
    }

    else
    {
      v6 = 1918985582;
    }

    if (a2 == 1)
    {
      v3 = 0xEA00000000006576;
    }

    else
    {
      v3 = 0xE400000000000000;
    }
  }

  else
  {
    OUTLINED_FUNCTION_13_2();
  }

  if (v5 == v6 && v2 == v3)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_0_9();
  }

  return v8 & 1;
}

uint64_t sub_1DD3B16A8(char a1)
{
  if (a1)
  {
    v1 = 0xE200000000000000;
  }

  else
  {
    v1 = 0xE300000000000000;
  }

  OUTLINED_FUNCTION_22_1();
  if (v7)
  {
    v6 = v4;
  }

  else
  {
    v6 = v5;
  }

  v7 = v2 == v3 && v1 == v6;
  if (v7)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_0_9();
  }

  return v8 & 1;
}

uint64_t sub_1DD3B1754()
{
  v0 = 0xE900000000000074;
  OUTLINED_FUNCTION_30_2();
  v3 = v2 | 0x7361456800000000;
  v5 = v4;
  v6 = v3;
  v7 = 0xE900000000000074;
  switch(v5)
  {
    case 1:
      v8 = 1953656654;
      goto LABEL_9;
    case 2:
      v6 = 1953719639;
      v7 = 0xE400000000000000;
      break;
    case 3:
      v7 = 0xE500000000000000;
      v9 = 1953853267;
      goto LABEL_6;
    case 4:
      v7 = 0xE500000000000000;
      v9 = 1953656654;
LABEL_6:
      v6 = v9 & 0xFFFF0000FFFFFFFFLL | 0x6800000000;
      break;
    case 5:
      v8 = 1953853267;
LABEL_9:
      v6 = v8 | 0x7365576800000000;
      break;
    case 6:
      v7 = 0xE400000000000000;
      v6 = 1953718597;
      break;
    case 7:
      v6 = 0x7361456874726F4ELL;
      break;
    default:
      break;
  }

  switch(v1)
  {
    case 1:
      OUTLINED_FUNCTION_33();
      goto LABEL_19;
    case 2:
      v3 = 1953719639;
      v0 = 0xE400000000000000;
      break;
    case 3:
      v0 = 0xE500000000000000;
      OUTLINED_FUNCTION_30_2();
      goto LABEL_16;
    case 4:
      v0 = 0xE500000000000000;
      OUTLINED_FUNCTION_33();
LABEL_16:
      v3 = v11 & 0xFFFF0000FFFFFFFFLL | 0x6800000000;
      break;
    case 5:
      OUTLINED_FUNCTION_30_2();
LABEL_19:
      v3 = v10 | 0x7365576800000000;
      break;
    case 6:
      v0 = 0xE400000000000000;
      v3 = 1953718597;
      break;
    case 7:
      OUTLINED_FUNCTION_33();
      v3 = v12 | 0x7361456800000000;
      break;
    default:
      break;
  }

  if (v6 == v3 && v7 == v0)
  {
    v14 = 1;
  }

  else
  {
    v14 = OUTLINED_FUNCTION_2_5();
  }

  return v14 & 1;
}

uint64_t sub_1DD3B18F4()
{
  OUTLINED_FUNCTION_1_2();
  switch(v2)
  {
    case 1:
      OUTLINED_FUNCTION_17_3();
      v0 = v0 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
      break;
    case 2:
      OUTLINED_FUNCTION_4_4();
      break;
    default:
      break;
  }

  OUTLINED_FUNCTION_11_6();
  switch(v5)
  {
    case 1:
      OUTLINED_FUNCTION_19_3();
      v1 = v1 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
      break;
    case 2:
      OUTLINED_FUNCTION_3_10();
      break;
    case 3:
      v4 = 28271;
      break;
    default:
      break;
  }

  if (v3 == v4 && v0 == v1)
  {
    v7 = 1;
  }

  else
  {
    v7 = OUTLINED_FUNCTION_0_9();
  }

  return v7 & 1;
}

uint64_t sub_1DD3B19D8(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3();
  OUTLINED_FUNCTION_37_1();
  a3();
  OUTLINED_FUNCTION_38();
  v6 = v6 && v3 == v5;
  if (v6)
  {
    v7 = 1;
  }

  else
  {
    v7 = OUTLINED_FUNCTION_0_9();
  }

  return v7 & 1;
}

uint64_t sub_1DD3B1A88()
{
  OUTLINED_FUNCTION_22_1();
  if (v0 == v1)
  {
    v2 = 1;
  }

  else
  {
    v2 = sub_1DD640CD8();
  }

  swift_bridgeObjectRelease_n();
  return v2 & 1;
}

uint64_t sub_1DD3B1B14(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3();
  OUTLINED_FUNCTION_37_1();
  (a3)(a2);
  OUTLINED_FUNCTION_38();
  v7 = v7 && v3 == v6;
  if (v7)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_0_9();
  }

  return v8 & 1;
}

uint64_t sub_1DD3B1B90()
{
  sub_1DD63F598();
  sub_1DD3B2D1C();
  sub_1DD640098();
  sub_1DD640098();
  if (v5 == v3 && v6 == v4)
  {
    v1 = 1;
  }

  else
  {
    v1 = OUTLINED_FUNCTION_2_5();
  }

  return v1 & 1;
}

uint64_t sub_1DD3B1C58@<X0>(uint64_t *a1@<X8>)
{
  result = AddressReference.Value.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1DD3B1D3C@<X0>(char *a1@<X8>)
{
  v2 = sub_1DD640AA8();

  if (v2 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v2)
  {
    v4 = 0;
  }

  *a1 = v4;
  return result;
}

uint64_t AddressReference.Prefix.rawValue.getter()
{
  if (*v0)
  {
    result = 1918985582;
  }

  else
  {
    result = 28265;
  }

  *v0;
  return result;
}

uint64_t sub_1DD3B1DF4@<X0>(uint64_t *a1@<X8>)
{
  result = AddressReference.Prefix.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t static AddressReference.== infix(_:_:)(_BYTE *a1, unsigned __int8 *a2)
{
  v2 = a1[1];
  v3 = *a2;
  v4 = a2[1];
  v5 = *a1 == 0;
  if (*a1)
  {
    v6 = 6647407;
  }

  else
  {
    v6 = 0x79627261656ELL;
  }

  if (v5)
  {
    v7 = 0xE600000000000000;
  }

  else
  {
    v7 = 0xE300000000000000;
  }

  if (*a2)
  {
    v8 = 6647407;
  }

  else
  {
    v8 = 0x79627261656ELL;
  }

  if (*a2)
  {
    v9 = 0xE300000000000000;
  }

  else
  {
    v9 = 0xE600000000000000;
  }

  if (v6 == v8 && v7 == v9)
  {
  }

  else
  {
    v11 = OUTLINED_FUNCTION_2_5();

    result = 0;
    if ((v11 & 1) == 0)
    {
      return result;
    }
  }

  result = v4 == 2 && v2 == 2;
  if (v2 != 2 && v4 != 2)
  {

    return sub_1DD3B05A4(v2 & 1, v4 & 1);
  }

  return result;
}

uint64_t sub_1DD3B1FE0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x65756C6176 && a2 == 0xE500000000000000;
  if (v4 || (sub_1DD640CD8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x786966657270 && a2 == 0xE600000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_1DD640CD8();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1DD3B20A8(char a1)
{
  sub_1DD640E28();
  MEMORY[0x1E12B3140](a1 & 1);
  return sub_1DD640E78();
}

uint64_t sub_1DD3B20FC(char a1)
{
  if (a1)
  {
    return 0x786966657270;
  }

  else
  {
    return 0x65756C6176;
  }
}

uint64_t sub_1DD3B2134()
{
  v1 = *v0;
  sub_1DD640E28();
  MEMORY[0x1E12B3140](v1);
  return sub_1DD640E78();
}

uint64_t sub_1DD3B2180@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DD3B1FE0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DD3B21C8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1DD3B20A0();
  *a1 = result;
  return result;
}

uint64_t sub_1DD3B21F0(uint64_t a1)
{
  v2 = sub_1DD3B2620();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD3B222C(uint64_t a1)
{
  v2 = sub_1DD3B2620();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t AddressReference.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDB890, &qword_1DD643020);
  v5 = OUTLINED_FUNCTION_0(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v11 = &v15 - v10;
  v12 = *v1;
  v16 = v1[1];
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DD3B2620();
  sub_1DD640EF8();
  v20 = v12;
  v19 = 0;
  sub_1DD3B2674();
  sub_1DD640C68();
  if (!v2)
  {
    v18 = v16;
    v17 = 1;
    sub_1DD3B26C8();
    sub_1DD640C08();
  }

  return (*(v7 + 8))(v11, v4);
}

uint64_t AddressReference.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDB8B0, &qword_1DD643028);
  v6 = OUTLINED_FUNCTION_0(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v12 = &v17 - v11;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DD3B2620();
  sub_1DD640ED8();
  if (!v2)
  {
    v20 = 0;
    sub_1DD3B271C();
    OUTLINED_FUNCTION_32_0();
    sub_1DD640B78();
    v14 = v21;
    v18 = 1;
    sub_1DD3B2770();
    OUTLINED_FUNCTION_32_0();
    sub_1DD640B18();
    (*(v8 + 8))(v12, v5);
    v16 = v19;
    *a2 = v14;
    a2[1] = v16;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_1DD3B2620()
{
  result = qword_1ECCDB898;
  if (!qword_1ECCDB898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDB898);
  }

  return result;
}

unint64_t sub_1DD3B2674()
{
  result = qword_1ECCDB8A0;
  if (!qword_1ECCDB8A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDB8A0);
  }

  return result;
}

unint64_t sub_1DD3B26C8()
{
  result = qword_1ECCDB8A8;
  if (!qword_1ECCDB8A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDB8A8);
  }

  return result;
}

unint64_t sub_1DD3B271C()
{
  result = qword_1ECCDB8B8;
  if (!qword_1ECCDB8B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDB8B8);
  }

  return result;
}

unint64_t sub_1DD3B2770()
{
  result = qword_1ECCDB8C0;
  if (!qword_1ECCDB8C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDB8C0);
  }

  return result;
}

unint64_t sub_1DD3B27C8()
{
  result = qword_1ECCDB8C8;
  if (!qword_1ECCDB8C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDB8C8);
  }

  return result;
}

unint64_t sub_1DD3B2820()
{
  result = qword_1ECCDB8D0;
  if (!qword_1ECCDB8D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDB8D0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AddressReference(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFF)
  {
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = *(a1 + 2);
      if (!*(a1 + 2))
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 16)) - 65282;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v5 = v6 - 2;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for AddressReference(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 16) + 1;
    *result = a2 - 255;
    switch(v5)
    {
      case 1:
        *(result + 2) = v6;
        break;
      case 2:
        *(result + 2) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 2) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *(result + 2) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 2) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 2) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for StreamIdentifier(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFF)
  {
    if (a2 + 1 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 1) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 2;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v5 = v6 - 2;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *sub_1DD3B2A90(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1DD3B2B70()
{
  result = qword_1ECCDB8D8;
  if (!qword_1ECCDB8D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDB8D8);
  }

  return result;
}

unint64_t sub_1DD3B2BC8()
{
  result = qword_1ECCDB8E0;
  if (!qword_1ECCDB8E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDB8E0);
  }

  return result;
}

unint64_t sub_1DD3B2C20()
{
  result = qword_1ECCDB8E8;
  if (!qword_1ECCDB8E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDB8E8);
  }

  return result;
}

unint64_t sub_1DD3B2C74()
{
  result = qword_1ECCDB8F0;
  if (!qword_1ECCDB8F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDB8F0);
  }

  return result;
}

unint64_t sub_1DD3B2CC8()
{
  result = qword_1ECCDB8F8;
  if (!qword_1ECCDB8F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDB8F8);
  }

  return result;
}

unint64_t sub_1DD3B2D1C()
{
  result = qword_1EE160340;
  if (!qword_1EE160340)
  {
    sub_1DD63F598();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE160340);
  }

  return result;
}

uint64_t sub_1DD3B2F0C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDB900, &qword_1DD643680);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DD6435D0;
  *(inited + 32) = 0;
  *(inited + 40) = 0;
  *(inited + 48) = 2;
  v73 = 1;
  v72 = 1;
  type metadata accessor for DateTime();
  swift_allocObject();
  v1 = OUTLINED_FUNCTION_0_10();
  *(inited + 56) = DateTime.init(withStartHour:startMinute:startSecond:startMeridiem:endHour:endMinute:endSecond:endMeridiem:)(v1, v2, v3, v4, 5, 0, 0, v5);
  *(inited + 64) = xmmword_1DD6435E0;
  *(inited + 80) = 0;
  OUTLINED_FUNCTION_1_3();
  v6 = OUTLINED_FUNCTION_0_10();
  *(inited + 88) = OUTLINED_FUNCTION_3_6(v6, v7, v8, v9, 5, v10, v11, v12);
  *(inited + 96) = xmmword_1DD6435F0;
  *(inited + 112) = 0;
  OUTLINED_FUNCTION_1_3();
  v13 = OUTLINED_FUNCTION_0_10();
  *(inited + 120) = OUTLINED_FUNCTION_2_6(v13, v14, v15, v16, v17, v18, v19, v20);
  *(inited + 128) = xmmword_1DD643600;
  *(inited + 144) = 0;
  OUTLINED_FUNCTION_1_3();
  v21 = OUTLINED_FUNCTION_0_10();
  *(inited + 152) = OUTLINED_FUNCTION_3_6(v21, v22, v23, v24, 5, v25, v26, v27);
  *(inited + 160) = xmmword_1DD643610;
  *(inited + 176) = 0;
  OUTLINED_FUNCTION_1_3();
  v28 = OUTLINED_FUNCTION_0_10();
  *(inited + 184) = OUTLINED_FUNCTION_2_6(v28, v29, v30, v31, v32, v33, v34, v35);
  *(inited + 192) = xmmword_1DD643620;
  *(inited + 208) = 0;
  OUTLINED_FUNCTION_1_3();
  v36 = OUTLINED_FUNCTION_0_10();
  *(inited + 216) = DateTime.init(withStartHour:startMinute:startSecond:startMeridiem:endHour:endMinute:endSecond:endMeridiem:)(v36, v37, v38, v39, 6, 0, 0, v40);
  *(inited + 224) = xmmword_1DD643630;
  *(inited + 240) = 0;
  OUTLINED_FUNCTION_1_3();
  v41 = OUTLINED_FUNCTION_0_10();
  *(inited + 248) = OUTLINED_FUNCTION_2_6(v41, v42, v43, v44, v45, v46, v47, v48);
  *(inited + 256) = xmmword_1DD643640;
  *(inited + 272) = 0;
  OUTLINED_FUNCTION_1_3();
  v49 = OUTLINED_FUNCTION_0_10();
  *(inited + 280) = OUTLINED_FUNCTION_3_6(v49, v50, v51, v52, 1, v53, v54, v55);
  *(inited + 288) = xmmword_1DD643650;
  *(inited + 304) = 0;
  OUTLINED_FUNCTION_1_3();
  v56 = OUTLINED_FUNCTION_0_10();
  *(inited + 312) = DateTime.init(withStartHour:startMinute:startSecond:startMeridiem:endHour:endMinute:endSecond:endMeridiem:)(v56, v57, v58, v59, 6, 0, 0, v60);
  *(inited + 320) = xmmword_1DD643660;
  *(inited + 336) = 0;
  OUTLINED_FUNCTION_1_3();
  *(inited + 344) = OUTLINED_FUNCTION_3_6(3, 0, 0, &v73, 7, v61, v62, &v72);
  *(inited + 352) = xmmword_1DD643670;
  *(inited + 368) = 0;
  v73 = 1;
  v72 = 1;
  swift_allocObject();
  v63 = OUTLINED_FUNCTION_0_10();
  *(inited + 376) = OUTLINED_FUNCTION_2_6(v63, v64, v65, v66, v67, v68, v69, v70);
  sub_1DD3B3160();
  return sub_1DD63FC88();
}

unint64_t sub_1DD3B3160()
{
  result = qword_1ECCDB908;
  if (!qword_1ECCDB908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDB908);
  }

  return result;
}

uint64_t AirportLandmark.init(name:prefix:suffix:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char *a3@<X2>, char *a4@<X3>, uint64_t a5@<X8>)
{
  v5 = *a3;
  v6 = *a4;
  *a5 = result;
  *(a5 + 8) = a2;
  *(a5 + 16) = v5;
  *(a5 + 17) = v6;
  return result;
}

SiriInference::AirportLandmark::Prefix_optional __swiftcall AirportLandmark.Prefix.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1DD640AA8();

  v5 = 12;
  if (v3 < 0xC)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t AirportLandmark.Prefix.rawValue.getter()
{
  result = 0x656874206F74;
  switch(*v0)
  {
    case 1:
      result = 29793;
      break;
    case 2:
      result = 28265;
      break;
    case 3:
      result = 0x65687420726F66;
      break;
    case 4:
      result = 31074;
      break;
    case 5:
      result = 26223;
      break;
    case 6:
      result = 7499622;
      break;
    case 7:
      result = 1918985582;
      break;
    case 8:
      result = 28532;
      break;
    case 9:
      result = 0x656874207461;
      break;
    case 0xA:
      result = 0x656874206E69;
      break;
    case 0xB:
      result = 0x74726F70726961;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1DD3B332C@<X0>(uint64_t *a1@<X8>)
{
  result = AirportLandmark.Prefix.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t AirportLandmark.Suffix.init(rawValue:)@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_1DD640AA8();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_1DD3B3484@<X0>(BOOL *a1@<X8>, uint64_t *a2@<X0>)
{
  v3 = *a2;
  v2 = a2[1];
  return AirportLandmark.Suffix.init(rawValue:)(a1);
}

uint64_t AirportLandmark.name.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t static AirportLandmark.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 17);
  v4 = *(a2 + 16);
  v5 = *(a2 + 17);
  v6 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (!v6 && (sub_1DD640CD8() & 1) == 0)
  {
    goto LABEL_10;
  }

  if (v2 != 12)
  {
    if (v4 != 12)
    {
      v8 = sub_1DD3B0AC0(v2, v4);
      if (v3 & 1 | ((v8 & 1) == 0))
      {
        v7 = v8 & v5;
        return v7 & 1;
      }

LABEL_13:
      v7 = v5 ^ 1;
      return v7 & 1;
    }

LABEL_10:
    v7 = 0;
    return v7 & 1;
  }

  if (!((v4 != 12) | v3 & 1))
  {
    goto LABEL_13;
  }

  v7 = (v4 == 12) & v5;
  return v7 & 1;
}

uint64_t sub_1DD3B365C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v3 || (sub_1DD640CD8() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x786966657270 && a2 == 0xE600000000000000;
    if (v6 || (sub_1DD640CD8() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x786966667573 && a2 == 0xE600000000000000)
    {

      return 2;
    }

    else
    {
      v8 = sub_1DD640CD8();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_1DD3B3774(unsigned __int8 a1)
{
  sub_1DD640E28();
  MEMORY[0x1E12B3140](a1);
  return sub_1DD640E78();
}

uint64_t sub_1DD3B37BC(char a1)
{
  if (!a1)
  {
    return 1701667182;
  }

  if (a1 == 1)
  {
    return 0x786966657270;
  }

  return 0x786966667573;
}

uint64_t sub_1DD3B3814@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DD3B365C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DD3B383C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1DD3B376C();
  *a1 = result;
  return result;
}

uint64_t sub_1DD3B3864(uint64_t a1)
{
  v2 = sub_1DD3B3CD8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD3B38A0(uint64_t a1)
{
  v2 = sub_1DD3B3CD8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t AirportLandmark.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDB910, &qword_1DD643688);
  v5 = OUTLINED_FUNCTION_0(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v11 = &v22 - v10;
  v12 = *v1;
  v13 = v1[1];
  v14 = *(v1 + 16);
  v23 = *(v1 + 17);
  v24 = v14;
  v15 = a1[3];
  v16 = a1[4];
  v17 = a1;
  v19 = v18;
  __swift_project_boxed_opaque_existential_1(v17, v15);
  sub_1DD3B3CD8();
  sub_1DD640EF8();
  v29 = 0;
  sub_1DD640C18();
  if (!v2)
  {
    v20 = v23;
    v28 = v24;
    v27 = 1;
    sub_1DD3B3D2C();
    sub_1DD640C08();
    v26 = v20;
    v25 = 2;
    sub_1DD3B3D80();
    sub_1DD640C08();
  }

  return (*(v7 + 8))(v11, v19);
}

uint64_t AirportLandmark.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDB930, &qword_1DD643690);
  v6 = OUTLINED_FUNCTION_0(v5);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DD3B3CD8();
  sub_1DD640ED8();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v10 = sub_1DD640B28();
  v12 = v11;
  sub_1DD3B3DD4();
  OUTLINED_FUNCTION_3_4();
  sub_1DD3B3E28();
  OUTLINED_FUNCTION_3_4();
  v14 = OUTLINED_FUNCTION_0_0();
  v15(v14);
  *a2 = v10;
  *(a2 + 8) = v12;
  *(a2 + 16) = v17;
  *(a2 + 17) = v16;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_1DD3B3CD8()
{
  result = qword_1ECCDB918;
  if (!qword_1ECCDB918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDB918);
  }

  return result;
}

unint64_t sub_1DD3B3D2C()
{
  result = qword_1ECCDB920;
  if (!qword_1ECCDB920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDB920);
  }

  return result;
}

unint64_t sub_1DD3B3D80()
{
  result = qword_1ECCDB928;
  if (!qword_1ECCDB928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDB928);
  }

  return result;
}

unint64_t sub_1DD3B3DD4()
{
  result = qword_1ECCDB938;
  if (!qword_1ECCDB938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDB938);
  }

  return result;
}

unint64_t sub_1DD3B3E28()
{
  result = qword_1ECCDB940;
  if (!qword_1ECCDB940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDB940);
  }

  return result;
}

unint64_t sub_1DD3B3E80()
{
  result = qword_1ECCDB948;
  if (!qword_1ECCDB948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDB948);
  }

  return result;
}

unint64_t sub_1DD3B3ED8()
{
  result = qword_1ECCDB950;
  if (!qword_1ECCDB950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDB950);
  }

  return result;
}

__n128 __swift_memcpy18_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u16[0] = a2[1].n128_u16[0];
  *a1 = result;
  return result;
}

uint64_t sub_1DD3B3F40(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 18))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1DD3B3F80(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 18) = 1;
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

    *(result + 18) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AirportLandmark.Prefix(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF5)
  {
    if (a2 + 11 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 11) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 12;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xC;
  v5 = v6 - 12;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for AirportLandmark.Prefix(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 11 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 11) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF5)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF4)
  {
    v6 = ((a2 - 245) >> 8) + 1;
    *result = a2 + 11;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 11;
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AirportLandmark.Suffix(unsigned int *a1, int a2)
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

_BYTE *storeEnumTagSinglePayload for AirportLandmark.Suffix(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AirportLandmark.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFE)
  {
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 3;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v5 = v6 - 3;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for AirportLandmark.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1DD3B4398()
{
  result = qword_1ECCDB958;
  if (!qword_1ECCDB958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDB958);
  }

  return result;
}

unint64_t sub_1DD3B43F0()
{
  result = qword_1ECCDB960;
  if (!qword_1ECCDB960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDB960);
  }

  return result;
}

unint64_t sub_1DD3B4448()
{
  result = qword_1ECCDB968;
  if (!qword_1ECCDB968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDB968);
  }

  return result;
}

unint64_t sub_1DD3B449C()
{
  result = qword_1ECCDB970;
  if (!qword_1ECCDB970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDB970);
  }

  return result;
}

unint64_t sub_1DD3B44F0()
{
  result = qword_1ECCDB978;
  if (!qword_1ECCDB978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDB978);
  }

  return result;
}

__n128 __swift_memcpy34_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1DD3B455C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 34))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1DD3B459C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 34) = 1;
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

    *(result + 34) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_1DD3B45F0(NSObject *a1, uint64_t a2)
{
  v50 = sub_1DD63D0F8();
  v4 = *(v50 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v50);
  v7 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EE166510 != -1)
  {
LABEL_38:
    swift_once();
  }

  v8 = sub_1DD63F9F8();
  __swift_project_value_buffer(v8, qword_1EE16F0C8);
  v9 = a1;
  v10 = sub_1DD63F9D8();
  v11 = sub_1DD640368();

  v12 = os_log_type_enabled(v10, v11);
  v48 = a2;
  if (v12)
  {
    v13 = swift_slowAlloc();
    v47 = v4;
    v14 = v13;
    v15 = swift_slowAlloc();
    *&v53 = v15;
    *v14 = 136315138;
    v16 = v9;
    v46 = v7;
    v17 = v16;
    v18 = [v16 description];
    v19 = sub_1DD63FDD8();
    v21 = v20;

    v7 = v46;
    v22 = sub_1DD39565C(v19, v21, &v53);

    *(v14 + 4) = v22;
    _os_log_impl(&dword_1DD38D000, v10, v11, "[AlarmsDateTimeTaskSuccessEvaluable] Got CreateAlarmIntent: %s", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v15);
    OUTLINED_FUNCTION_0_1();
    v4 = v47;
    OUTLINED_FUNCTION_0_1();
  }

  v23 = [v9 intentResponse];
  if (!v23)
  {
    v53 = 0u;
    v54 = 0u;
LABEL_31:
    sub_1DD3ADFD0(&v53, &qword_1ECCDB980, &unk_1DD643DC0);
    goto LABEL_32;
  }

  v24 = v23;
  v25 = sub_1DD63FDA8();
  v26 = [v24 valueForKeyPath_];

  if (v26)
  {
    sub_1DD6406F8();
    swift_unknownObjectRelease();
  }

  else
  {
    v51 = 0u;
    v52 = 0u;
  }

  v53 = v51;
  v54 = v52;
  if (!*(&v52 + 1))
  {
    goto LABEL_31;
  }

  if (swift_dynamicCast())
  {
    a2 = *(&v51 + 1);
    v27 = sub_1DD3B4BE0(v51, *(&v51 + 1));
    v29 = v28;

    a1 = sub_1DD63F9D8();
    v30 = sub_1DD640368();

    v31 = os_log_type_enabled(a1, v30);
    v49 = v27;
    if (v31)
    {
      a2 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      *&v53 = v32;
      *a2 = 136315138;

      v33 = sub_1DD39565C(v27, v29, &v53);

      *(a2 + 4) = v33;
      _os_log_impl(&dword_1DD38D000, a1, v30, "[AlarmsDateTimeTaskSuccessEvaluable] Got alarm identifier: %s", a2, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v32);
      OUTLINED_FUNCTION_0_1();
      OUTLINED_FUNCTION_0_1();
    }

    v34 = sub_1DD5F3CA4(v48);
    v47 = sub_1DD3CC020(v34);
    if (!v47)
    {
LABEL_30:

      return;
    }

    v35 = 0;
    v48 = v34 & 0xC000000000000001;
    v46 = v34 & 0xFFFFFFFFFFFFFF8;
    v36 = (v4 + 8);
    while (1)
    {
      if (v48)
      {
        v37 = MEMORY[0x1E12B2C10](v35, v34);
      }

      else
      {
        if (v35 >= *(v46 + 16))
        {
          __break(1u);
          return;
        }

        v37 = *(v34 + 8 * v35 + 32);
      }

      v38 = v37;
      v39 = v35 + 1;
      if (__OFADD__(v35, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      a2 = [v37 alarmID];
      sub_1DD63D0D8();

      v4 = sub_1DD63D098();
      a1 = v40;
      (*v36)(v7, v50);
      if (v4 == v49 && a1 == v29)
      {
      }

      else
      {
        a2 = sub_1DD640CD8();

        if ((a2 & 1) == 0)
        {

          goto LABEL_29;
        }
      }

      a1 = [v38 eventType];

      if (a1 == 5 || a1 == 4)
      {
        goto LABEL_30;
      }

LABEL_29:
      ++v35;
      if (v39 == v47)
      {
        goto LABEL_30;
      }
    }
  }

LABEL_32:
  v42 = sub_1DD63F9D8();
  v43 = sub_1DD640368();
  if (os_log_type_enabled(v42, v43))
  {
    v44 = swift_slowAlloc();
    *v44 = 0;
    _os_log_impl(&dword_1DD38D000, v42, v43, "[AlarmsDateTimeTaskSuccessEvaluable] alarmIdentifier is nil", v44, 2u);
    OUTLINED_FUNCTION_0_1();
  }
}

uint64_t sub_1DD3B4BE0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDB988, &qword_1DD643B10);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v44 - v6;
  v8 = sub_1DD63C8B8();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v52 = &v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v44 - v14;
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v44 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDB990, &qword_1DD643B18);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v21 = &v44 - v20;
  sub_1DD63C8E8();
  v22 = sub_1DD63C8F8();
  if (__swift_getEnumTagSinglePayload(v21, 1, v22) == 1)
  {
    sub_1DD3ADFD0(v21, &unk_1ECCDB990, &qword_1DD643B18);
    goto LABEL_19;
  }

  v23 = sub_1DD63C8D8();
  result = (*(*(v22 - 8) + 8))(v21, v22);
  if (v23)
  {
    v45 = v17;
    v46 = v7;
    v47 = a1;
    v48 = a2;
    v25 = 0;
    v26 = *(v23 + 16);
    v53 = v9 + 16;
    v54 = v26;
    v27 = (v9 + 8);
    v50 = (v9 + 32);
    v51 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      while (1)
      {
        if (v54 == v25)
        {

          v7 = v46;
          sub_1DD558C24(v51, v46);

          EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v7, 1, v8);
          a1 = v47;
          if (EnumTagSinglePayload == 1)
          {
            goto LABEL_20;
          }

          v40 = v45;
          (*v50)(v45, v7, v8);
          v41 = sub_1DD63C8A8();
          v43 = v42;
          (*v27)(v40, v8);
          if (v43)
          {
            return v41;
          }

          goto LABEL_21;
        }

        if (v25 >= *(v23 + 16))
        {
          __break(1u);
          return result;
        }

        v28 = (*(v9 + 80) + 32) & ~*(v9 + 80);
        v29 = *(v9 + 72);
        (*(v9 + 16))(v15, v23 + v28 + v29 * v25, v8);
        if (sub_1DD63C898() != 25705 || v30 != 0xE200000000000000)
        {
          break;
        }

LABEL_14:
        v33 = *v50;
        (*v50)(v52, v15, v8);
        v34 = v51;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v55 = v34;
        v49 = v33;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1DD42A27C(0, *(v34 + 16) + 1, 1);
          v34 = v55;
        }

        v37 = *(v34 + 16);
        v36 = *(v34 + 24);
        v38 = v37 + 1;
        if (v37 >= v36 >> 1)
        {
          v51 = v37 + 1;
          sub_1DD42A27C(v36 > 1, v37 + 1, 1);
          v38 = v51;
          v34 = v55;
        }

        ++v25;
        *(v34 + 16) = v38;
        v51 = v34;
        result = (v49)(v34 + v28 + v37 * v29, v52, v8);
      }

      v32 = sub_1DD640CD8();

      if (v32)
      {
        goto LABEL_14;
      }

      result = (*v27)(v15, v8);
      ++v25;
    }
  }

LABEL_19:
  __swift_storeEnumTagSinglePayload(v7, 1, 1, v8);
LABEL_20:
  sub_1DD3ADFD0(v7, &qword_1ECCDB988, &qword_1DD643B10);
LABEL_21:

  return a1;
}

uint64_t sub_1DD3B508C()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t sub_1DD3B50BC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

void sub_1DD3B50F4(NSObject *a1, uint64_t a2)
{
  v3 = *v2;
  v4 = v2[1];
  v5 = *(v2 + 16);
  sub_1DD3B45F0(a1, a2);
}

uint64_t sub_1DD3B5148(uint64_t a1, uint64_t a2)
{
  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1DD3B5168, 0, 0);
}

void sub_1DD3B5168()
{
  v1 = 0;
  v2 = *(v0[7] + 24);
  v10 = *(v2 + 16);
  for (i = (v2 + 40); ; i += 3)
  {
    if (v10 == v1)
    {
      v6 = v0[6];
      *v6 = 0;
      v6[1] = 0;
      v7 = 3;
      goto LABEL_8;
    }

    if (v1 >= *(v2 + 16))
    {
      __break(1u);
      return;
    }

    v5 = *(i - 1);
    v4 = *i;
    v0[2] = v5;
    v0[3] = v4;
    v0[4] = 0x6C7070612E6D6F63;
    v0[5] = 0xE900000000000065;
    sub_1DD3B52B8();
    sub_1DD3B530C();

    if (sub_1DD63FD48())
    {
      break;
    }

    ++v1;
  }

  v7 = 0;
  v8 = v0[6];
  *v8 = v5;
  v8[1] = v4;
LABEL_8:
  *(v0[6] + 16) = v7;
  v9 = v0[1];

  v9();
}

unint64_t sub_1DD3B52B8()
{
  result = qword_1EE163960;
  if (!qword_1EE163960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE163960);
  }

  return result;
}

unint64_t sub_1DD3B530C()
{
  result = qword_1EE163970;
  if (!qword_1EE163970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE163970);
  }

  return result;
}

uint64_t sub_1DD3B5398(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1DD3B5438;

  return sub_1DD3B5148(a1, a2);
}

uint64_t sub_1DD3B5438()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t dispatch thunk of Always1pRule.resolve(features:)(uint64_t a1, uint64_t a2)
{
  v6 = *(*v2 + 88);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_1DD3B5438;

  return v10(a1, a2);
}

uint64_t sub_1DD3B56CC()
{
  v11[6] = *MEMORY[0x1E69E9840];
  v0 = [objc_allocWithZone(MEMORY[0x1E69ACF60]) init];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDB9A0, &qword_1DD64F780);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DD643B80;
  *(inited + 32) = [objc_opt_self() showInAppStringSearchResultsProtocol];
  if (sub_1DD3CC020(inited))
  {
    sub_1DD56B960(inited);
  }

  else
  {
    swift_setDeallocating();
    sub_1DD46CABC();
  }

  sub_1DD3B60AC();
  sub_1DD3B64E8(&unk_1ECCDB9B0, sub_1DD3B60AC);
  v2 = sub_1DD640258();

  v11[0] = 0;
  v3 = [v0 actionsConformingToSystemProtocols:v2 logicalType:1 bundleIdentifier:0 error:v11];

  v4 = v11[0];
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBA90, &qword_1DD643D20);
    v5 = sub_1DD63FC58();
    v6 = v4;

    v7 = sub_1DD3B60F0(v5);

    result = sub_1DD41B630(v7);
  }

  else
  {
    v9 = v11[0];
    sub_1DD63CD98();

    result = swift_willThrow();
  }

  v10 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1DD3B58E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1DD63C758();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v56 = v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDB9C0, &qword_1DD643B90);
  v8 = *(*(v66 - 8) + 64);
  MEMORY[0x1EEE9AC00](v66);
  v10 = v53 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBAB0, &qword_1DD643B98);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = v53 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v69 = v53 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v70 = v53 - v18;
  v19 = a3 + 64;
  v20 = 1 << *(a3 + 32);
  v21 = -1;
  if (v20 < 64)
  {
    v21 = ~(-1 << v20);
  }

  v22 = v21 & *(a3 + 64);
  v23 = (v20 + 63) >> 6;
  v54 = *MEMORY[0x1E69AC4C0];
  v65 = *MEMORY[0x1E695A228];
  v64 = (v5 + 104);
  v55 = (v5 + 32);
  v58 = (v5 + 8);
  v61 = a3;

  v24 = 0;
  v25 = 0;
  v68 = v14;
  v59 = v23;
  for (i = v19; ; v19 = i)
  {
LABEL_4:
    if (v22)
    {
      v26 = v24;
    }

    else
    {
      do
      {
        v26 = v24 + 1;
        if (__OFADD__(v24, 1))
        {
          __break(1u);
LABEL_34:
          __break(1u);
          return;
        }

        if (v26 >= v23)
        {

          return;
        }

        v22 = *(v19 + 8 * v26);
        ++v24;
      }

      while (!v22);
    }

    v27 = __clz(__rbit64(v22));
    v22 &= v22 - 1;
    v28 = *(*(v61 + 56) + ((v26 << 9) | (8 * v27)));
    v29 = [v28 systemProtocols];
    sub_1DD3B60AC();
    v30 = sub_1DD640118();

    v31 = [objc_opt_self() showInAppStringSearchResultsProtocol];
    v71 = v31;
    MEMORY[0x1EEE9AC00](v31);
    v53[-2] = &v71;
    sub_1DD450430(sub_1DD3B6458, &v53[-4], v30);
    v33 = v32;

    if ((v33 & 1) == 0)
    {
      goto LABEL_25;
    }

    v34 = [v28 systemProtocolMetadata];
    type metadata accessor for LNSystemProtocolIdentifier(0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDBA30, &unk_1DD643BA0);
    sub_1DD3B64E8(&qword_1ECCDB6B0, type metadata accessor for LNSystemProtocolIdentifier);
    v35 = sub_1DD63FC58();

    v36 = v69;
    if (!*(v35 + 16))
    {

LABEL_25:

      goto LABEL_26;
    }

    v67 = v28;
    v37 = sub_1DD400FBC(v54);
    if ((v38 & 1) == 0)
    {

      goto LABEL_26;
    }

    v39 = *(*(v35 + 56) + 8 * v37);
    swift_unknownObjectRetain();

    objc_opt_self();
    v40 = swift_dynamicCastObjCClass();
    if (v40)
    {
      break;
    }

    swift_unknownObjectRelease();
LABEL_26:
    v24 = v26;
    v23 = v59;
  }

  v53[0] = v25;
  v53[1] = v39;
  v41 = [v40 searchScopes];
  v42 = sub_1DD640118();

  v43 = 0;
  v62 = *(v42 + 16);
  v63 = v42;
  v44 = (v42 + 40);
  v45 = v67;
  while (1)
  {
    if (v62 == v43)
    {

      swift_unknownObjectRelease();

      v24 = v26;
      v23 = v59;
      v19 = i;
      v25 = v53[0];
      goto LABEL_4;
    }

    if (v43 >= *(v63 + 16))
    {
      goto LABEL_34;
    }

    v46 = *(v44 - 1);
    v47 = *v44;
    swift_bridgeObjectRetain_n();
    v48 = v70;
    sub_1DD63C748();
    (*v64)(v36, v65, v4);
    __swift_storeEnumTagSinglePayload(v36, 0, 1, v4);
    v49 = *(v66 + 48);
    sub_1DD3B6478(v48, v10);
    sub_1DD3B6478(v36, &v10[v49]);
    if (__swift_getEnumTagSinglePayload(v10, 1, v4) == 1)
    {
      break;
    }

    sub_1DD3B6478(v10, v68);
    if (__swift_getEnumTagSinglePayload(&v10[v49], 1, v4) == 1)
    {

      sub_1DD3ADFD0(v36, &qword_1ECCDBAB0, &qword_1DD643B98);
      sub_1DD3ADFD0(v70, &qword_1ECCDBAB0, &qword_1DD643B98);
      (*v58)(v68, v4);
      goto LABEL_21;
    }

    v50 = v36;
    v51 = v56;
    (*v55)(v56, &v10[v49], v4);
    sub_1DD3B64E8(&unk_1ECCDBA40, MEMORY[0x1E695A238]);
    v57 = sub_1DD63FD98();

    v52 = *v58;
    (*v58)(v51, v4);
    sub_1DD3ADFD0(v50, &qword_1ECCDBAB0, &qword_1DD643B98);
    sub_1DD3ADFD0(v70, &qword_1ECCDBAB0, &qword_1DD643B98);
    v52(v68, v4);
    sub_1DD3ADFD0(v10, &qword_1ECCDBAB0, &qword_1DD643B98);
    v45 = v67;
    if (v57)
    {
      goto LABEL_32;
    }

LABEL_23:
    v44 += 2;
    ++v43;
    v36 = v69;
  }

  sub_1DD3ADFD0(v36, &qword_1ECCDBAB0, &qword_1DD643B98);
  sub_1DD3ADFD0(v70, &qword_1ECCDBAB0, &qword_1DD643B98);
  if (__swift_getEnumTagSinglePayload(&v10[v49], 1, v4) != 1)
  {
LABEL_21:
    sub_1DD3ADFD0(v10, &unk_1ECCDB9C0, &qword_1DD643B90);
    v45 = v67;
    goto LABEL_23;
  }

  sub_1DD3ADFD0(v10, &qword_1ECCDBAB0, &qword_1DD643B98);
  v45 = v67;
LABEL_32:

  swift_unknownObjectRelease();
}

unint64_t sub_1DD3B60AC()
{
  result = qword_1ECCDBA80;
  if (!qword_1ECCDBA80)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ECCDBA80);
  }

  return result;
}

unint64_t *sub_1DD3B60F0(uint64_t a1)
{
  v2 = a1;
  v10[1] = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  v4 = ((1 << v3) + 63) >> 6;
  if ((v3 & 0x3Fu) > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v9 = swift_slowAlloc();
      v2 = sub_1DD3B63BC(v9, v4, v2);
      MEMORY[0x1E12B3DA0](v9, -1, -1);
      goto LABEL_5;
    }
  }

  MEMORY[0x1EEE9AC00](a1);
  v5 = (v10 - ((8 * v4 + 15) & 0x3FFFFFFFFFFFFFF0));
  sub_1DD57634C(0, v4, v5);
  sub_1DD3B6254(v5, v4, v2);
  if (v1)
  {
    swift_willThrow();
  }

  else
  {
    v2 = v6;
  }

LABEL_5:
  v7 = *MEMORY[0x1E69E9840];
  return v2;
}

void sub_1DD3B6254(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  v23 = 0;
  v4 = 0;
  v5 = a3 + 64;
  v6 = 1 << *(a3 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a3 + 64);
  v9 = (v6 + 63) >> 6;
  while (v8)
  {
    v10 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
LABEL_11:
    v13 = v10 | (v4 << 6);
    v14 = (*(a3 + 48) + 16 * v13);
    v15 = *v14;
    v16 = v14[1];
    v17 = *(*(a3 + 56) + 8 * v13);

    sub_1DD3B58E8(v15, v16, v17);
    v19 = v18;

    if (v19)
    {
      *(a1 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      if (__OFADD__(v23++, 1))
      {
        __break(1u);
LABEL_15:
        sub_1DD621BE0(a1, a2, v23, a3);
        return;
      }
    }
  }

  v11 = v4;
  while (1)
  {
    v4 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v4 >= v9)
    {
      goto LABEL_15;
    }

    v12 = *(v5 + 8 * v4);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v8 = (v12 - 1) & v12;
      goto LABEL_11;
    }
  }

  __break(1u);
}

unint64_t *sub_1DD3B63BC(unint64_t *result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v5 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    sub_1DD3B6254(v5, a2, a3);
    v7 = v6;

    return v7;
  }

  return result;
}

uint64_t sub_1DD3B6434(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  return sub_1DD586690() & 1;
}

uint64_t sub_1DD3B6478(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBAB0, &qword_1DD643B98);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DD3B64E8(unint64_t *a1, void (*a2)(uint64_t))
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

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_1DD3B6544(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 24))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1DD3B6584(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1DD3B65D8()
{
  result = qword_1ECCDBA68;
  if (!qword_1ECCDBA68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDBA68);
  }

  return result;
}

void *sub_1DD3B6660()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBA98, &qword_1DD643D28);
  v0 = (__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDBAA0, qword_1DD643D30) - 8);
  v1 = *(*v0 + 72);
  v2 = (*(*v0 + 80) + 32) & ~*(*v0 + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1DD643BB0;
  v4 = v3 + v2;
  v5 = v0[14];
  v6 = *MEMORY[0x1E695A228];
  v7 = sub_1DD63C758();
  v8 = *(*(v7 - 8) + 104);
  v8(v4, v6, v7);
  *(v4 + v5) = 1;
  v9 = v0[14];
  v8(v4 + v1, *MEMORY[0x1E695A220], v7);
  *(v4 + v1 + v9) = 2;
  v10 = v0[14];
  v8(v4 + 2 * v1, *MEMORY[0x1E695A218], v7);
  *(v4 + 2 * v1 + v10) = 4;
  v11 = v4 + 3 * v1;
  v12 = v0[14];
  v8(v11, *MEMORY[0x1E695A210], v7);
  *(v11 + v12) = 8;
  sub_1DD3B79A8(&unk_1ECCDC3C0, MEMORY[0x1E695A238]);
  result = sub_1DD63FC88();
  off_1ECCDBA60 = result;
  return result;
}

uint64_t sub_1DD3B687C(void (*a1)(uint64_t *), uint64_t a2, uint64_t a3, void (*a4)(char *, uint64_t, uint64_t), uint64_t a5)
{
  v61 = a5;
  v58 = a3;
  v59 = a4;
  v62[6] = *MEMORY[0x1E69E9840];
  v7 = sub_1DD63D4F8();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v56 = (&v52 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = [objc_allocWithZone(MEMORY[0x1E69ACF60]) init];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDB9A0, &qword_1DD64F780);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DD643B80;
  *(inited + 32) = [objc_opt_self() showInAppStringSearchResultsProtocol];
  v13 = sub_1DD3CC020(inited);
  v57 = a2;
  if (v13)
  {
    sub_1DD56B960(inited);
  }

  else
  {
    swift_setDeallocating();
    sub_1DD46CABC();
  }

  sub_1DD3B60AC();
  sub_1DD3B79A8(&unk_1ECCDB9B0, sub_1DD3B60AC);
  v14 = sub_1DD640258();

  v62[0] = 0;
  v15 = [v11 actionsConformingToSystemProtocols:v14 logicalType:1 bundleIdentifier:0 error:v62];

  v16 = v62[0];
  if (v15)
  {
    v53 = v8;
    v54 = a1;
    v55 = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBA90, &qword_1DD643D20);
    v60 = sub_1DD63FC58();
    v17 = v16;

    v18 = v61 + 56;
    v19 = 1 << *(v61 + 32);
    v20 = -1;
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    v21 = v20 & *(v61 + 56);
    v22 = (v19 + 63) >> 6;

    v23 = 0;
    v24 = MEMORY[0x1E69E7CC0];
    if (v21)
    {
      goto LABEL_12;
    }

    while (1)
    {
      v25 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
      }

      if (v25 >= v22)
      {
        break;
      }

      v21 = *(v18 + 8 * v25);
      ++v23;
      if (v21)
      {
        v23 = v25;
        do
        {
LABEL_12:
          v26 = v61;
          v27 = (*(v61 + 48) + ((v23 << 10) | (16 * __clz(__rbit64(v21)))));
          v28 = *v27;
          v29 = v27[1];

          sub_1DD3B6F88(v28, v29, v60, v58, v59, v26);
          v31 = v30;
          v33 = v32;
          v35 = v34;

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v38 = *(v24 + 16);
            sub_1DD3BE37C();
            v24 = v39;
          }

          v36 = *(v24 + 16);
          if (v36 >= *(v24 + 24) >> 1)
          {
            sub_1DD3BE37C();
            v24 = v40;
          }

          v21 &= v21 - 1;
          *(v24 + 16) = v36 + 1;
          v37 = (v24 + 24 * v36);
          v37[4] = v31;
          v37[5] = v33;
          v37[6] = v35;
        }

        while (v21);
      }
    }

    v41 = sub_1DD3B80F8(v24);
    v42 = v55;
    v43 = v56;
    *v56 = v41;
    v44 = v53;
    (*(v53 + 104))(v43, *MEMORY[0x1E69D2B60], v42);
    v54(v43);
    result = (*(v44 + 8))(v43, v42);
  }

  else
  {
    v46 = v62[0];
    v47 = sub_1DD63CD98();

    swift_willThrow();
    v48 = sub_1DD3B6D44(v61);
    v49 = sub_1DD3B80F8(v48);
    v50 = v56;
    *v56 = v49;
    (*(v8 + 104))(v50, *MEMORY[0x1E69D2B60], v7);
    a1(v50);
    result = (*(v8 + 8))(v50, v7);
  }

  v51 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1DD3B6D44(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (!v1)
  {
    return v2;
  }

  v3 = a1;
  v31 = MEMORY[0x1E69E7CC0];
  sub_1DD42B3E4(0, v1, 0);
  v2 = v31;
  result = sub_1DD55B198(v3);
  v7 = result;
  v8 = 0;
  v9 = v3 + 56;
  v25 = v3 + 64;
  v26 = v3 + 56;
  v27 = v3;
  if ((result & 0x8000000000000000) == 0)
  {
    while (v7 < 1 << *(v3 + 32))
    {
      v10 = v7 >> 6;
      if ((*(v9 + 8 * (v7 >> 6)) & (1 << v7)) == 0)
      {
        goto LABEL_24;
      }

      if (*(v3 + 36) != v5)
      {
        goto LABEL_25;
      }

      v30 = v6;
      v28 = v8;
      v29 = v5;
      v11 = (*(v3 + 48) + 16 * v7);
      v12 = *v11;
      v13 = v11[1];
      v15 = *(v31 + 16);
      v14 = *(v31 + 24);

      if (v15 >= v14 >> 1)
      {
        result = sub_1DD42B3E4((v14 > 1), v15 + 1, 1);
      }

      *(v31 + 16) = v15 + 1;
      v16 = (v31 + 24 * v15);
      v16[4] = v12;
      v16[5] = v13;
      v16[6] = -1;
      if (v30)
      {
        goto LABEL_29;
      }

      v9 = v26;
      v3 = v27;
      v17 = 1 << *(v27 + 32);
      if (v7 >= v17)
      {
        goto LABEL_26;
      }

      v18 = *(v26 + 8 * v10);
      if ((v18 & (1 << v7)) == 0)
      {
        goto LABEL_27;
      }

      if (*(v27 + 36) != v29)
      {
        goto LABEL_28;
      }

      v19 = v18 & (-2 << (v7 & 0x3F));
      if (v19)
      {
        v17 = __clz(__rbit64(v19)) | v7 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v20 = v10 << 6;
        v21 = v10 + 1;
        v22 = (v25 + 8 * v10);
        while (v21 < (v17 + 63) >> 6)
        {
          v24 = *v22++;
          v23 = v24;
          v20 += 64;
          ++v21;
          if (v24)
          {
            result = sub_1DD3AA558(v7, v29, 0);
            v17 = __clz(__rbit64(v23)) + v20;
            goto LABEL_19;
          }
        }

        result = sub_1DD3AA558(v7, v29, 0);
      }

LABEL_19:
      v8 = v28 + 1;
      if (v28 + 1 == v1)
      {
        return v2;
      }

      v6 = 0;
      v5 = *(v27 + 36);
      v7 = v17;
      if (v17 < 0)
      {
        break;
      }
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
LABEL_29:
  __break(1u);
  return result;
}

void sub_1DD3B6F88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(char *, uint64_t, uint64_t), uint64_t a6)
{
  v64 = a6;
  v61 = a4;
  v62 = a5;
  v9 = sub_1DD63C758();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = v58 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a3 + 16))
  {
    v14 = sub_1DD3978DC();
    if (v15)
    {
      v63 = v9;
      v58[0] = a1;
      v58[1] = a2;
      v16 = *(*(a3 + 56) + 8 * v14);
      v17 = v16 + 64;
      v18 = 1 << *(v16 + 32);
      v19 = -1;
      if (v18 < 64)
      {
        v19 = ~(-1 << v18);
      }

      v20 = v19 & *(v16 + 64);
      v21 = (v18 + 63) >> 6;
      v60 = v16;
      swift_bridgeObjectRetain_n();
      v22 = 0;
      v23 = MEMORY[0x1E69E7CC0];
      v59 = v10;
      while (v20)
      {
LABEL_12:
        v26 = *(*(v60 + 56) + ((v22 << 9) | (8 * __clz(__rbit64(v20)))));
        sub_1DD3B73E0(v26);
        v28 = v27;

        v29 = *(v28 + 16);
        v30 = *(v23 + 16);
        if (__OFADD__(v30, v29))
        {
LABEL_45:
          __break(1u);
LABEL_46:
          __break(1u);
LABEL_47:
          __break(1u);
          return;
        }

        if (!swift_isUniquelyReferenced_nonNull_native() || v30 + v29 > *(v23 + 24) >> 1)
        {
          sub_1DD3BE528();
          v23 = v31;
        }

        v10 = v59;
        v20 &= v20 - 1;
        if (*(v28 + 16))
        {
          v32 = *(v23 + 16);
          if ((*(v23 + 24) >> 1) - v32 < v29)
          {
            goto LABEL_46;
          }

          v33 = v23 + ((*(v59 + 80) + 32) & ~*(v59 + 80)) + *(v59 + 72) * v32;
          swift_arrayInitWithCopy();

          if (v29)
          {
            v34 = *(v23 + 16);
            v35 = __OFADD__(v34, v29);
            v36 = v34 + v29;
            if (v35)
            {
              goto LABEL_47;
            }

            *(v23 + 16) = v36;
          }
        }

        else
        {

          if (v29)
          {
            __break(1u);
            goto LABEL_43;
          }
        }
      }

      v24 = v63;
      while (1)
      {
        v25 = v22 + 1;
        if (__OFADD__(v22, 1))
        {
          __break(1u);
          goto LABEL_45;
        }

        if (v25 >= v21)
        {
          break;
        }

        v20 = *(v17 + 8 * v25);
        ++v22;
        if (v20)
        {
          v22 = v25;
          goto LABEL_12;
        }
      }

      v37 = *(v23 + 16);
      if (v37)
      {
        v40 = *(v10 + 16);
        v38 = v10 + 16;
        v39 = v40;
        v41 = v23 + ((*(v38 + 64) + 32) & ~*(v38 + 64));
        v64 = *(v38 + 56);
        v42 = (v38 - 8);
        v43 = MEMORY[0x1E69E7CC0];
        v62 = v40;
        do
        {
          v39(v13, v41, v24);
          if (qword_1ECCDB010 != -1)
          {
            swift_once();
          }

          v44 = off_1ECCDBA60;
          if (*(off_1ECCDBA60 + 2) && (sub_1DD3FE74C(), (v46 & 1) != 0))
          {
            v47 = v23;
            v48 = v38;
            v49 = *(v44[7] + 8 * v45);
            (*v42)(v13, v24);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v51 = v43[2];
              sub_1DD3BE460();
              v43 = v52;
            }

            v50 = v43[2];
            if (v50 >= v43[3] >> 1)
            {
              sub_1DD3BE460();
              v43 = v53;
            }

            v43[2] = v50 + 1;
            v43[v50 + 4] = v49;
            v38 = v48;
            v23 = v47;
            v39 = v62;
            v24 = v63;
          }

          else
          {
            (*v42)(v13, v24);
          }

          v41 += v64;
          --v37;
        }

        while (v37);
      }

      else
      {

        v43 = MEMORY[0x1E69E7CC0];
      }

      v54 = v43[2];
      if (v54)
      {
        v55 = 0;
        v56 = v43 + 4;
        do
        {
          v57 = *v56++;
          v55 |= v57;
          --v54;
        }

        while (v54);
      }
    }
  }

LABEL_43:
}

void sub_1DD3B73E0(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBAB0, &qword_1DD643B98);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v34 - v4;
  v6 = sub_1DD63C758();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = [a1 systemProtocols];
  sub_1DD3B60AC();
  v12 = sub_1DD640118();

  v13 = [objc_opt_self() showInAppStringSearchResultsProtocol];
  v42 = v13;
  v41 = &v42;
  sub_1DD450430(sub_1DD3B6458, v40, v12);
  LOBYTE(v11) = v14;

  if (v11)
  {
    v15 = [a1 systemProtocolMetadata];
    type metadata accessor for LNSystemProtocolIdentifier(0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDBA30, &unk_1DD643BA0);
    sub_1DD3B79A8(&qword_1ECCDB6B0, type metadata accessor for LNSystemProtocolIdentifier);
    v16 = sub_1DD63FC58();

    v17 = sub_1DD59B5F0(*MEMORY[0x1E69AC4C0], v16);

    if (v17)
    {
      objc_opt_self();
      v18 = swift_dynamicCastObjCClass();
      if (v18)
      {
        v39 = v10;
        v19 = [v18 searchScopes];
        v20 = sub_1DD640118();

        v21 = 0;
        v22 = *(v20 + 16);
        v37 = v7;
        v38 = (v7 + 32);
        v23 = v20 + 40;
        v24 = MEMORY[0x1E69E7CC0];
        v36 = v20 + 40;
LABEL_5:
        for (i = (v23 + 16 * v21); ; i += 2)
        {
          if (v22 == v21)
          {

            goto LABEL_17;
          }

          if (v21 >= *(v20 + 16))
          {
            break;
          }

          v27 = *(i - 1);
          v26 = *i;

          sub_1DD63C748();
          if (__swift_getEnumTagSinglePayload(v5, 1, v6) != 1)
          {
            v28 = *v38;
            (*v38)(v39, v5, v6);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v31 = *(v24 + 16);
              sub_1DD3BE528();
              v24 = v32;
            }

            v29 = *(v24 + 16);
            v30 = v29 + 1;
            if (v29 >= *(v24 + 24) >> 1)
            {
              v35 = v29 + 1;
              sub_1DD3BE528();
              v30 = v35;
              v24 = v33;
            }

            ++v21;
            *(v24 + 16) = v30;
            v28((v24 + ((*(v37 + 80) + 32) & ~*(v37 + 80)) + *(v37 + 72) * v29), v39, v6);
            v23 = v36;
            goto LABEL_5;
          }

          sub_1DD3B79F0(v5);
          ++v21;
        }

        __break(1u);
      }

      else
      {
LABEL_17:
        swift_unknownObjectRelease();
      }
    }
  }
}

uint64_t sub_1DD3B7834()
{
  v0 = qword_1ECCDBA50;

  return v0;
}

uint64_t sub_1DD3B788C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1DD3B7954();

  return MEMORY[0x1EEE40138](a1, a2, a3, a4, v8);
}

uint64_t sub_1DD3B78F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1DD3B7954();

  return MEMORY[0x1EEE40118](a1, a2, a3, a4, v8);
}

unint64_t sub_1DD3B7954()
{
  result = qword_1ECCDBA70;
  if (!qword_1ECCDBA70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDBA70);
  }

  return result;
}

uint64_t sub_1DD3B79A8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1DD3B79F0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBAB0, &qword_1DD643B98);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1DD3B7A58()
{
  if (!AFIsInternalInstall())
  {
    return MEMORY[0x1E69E7CC0];
  }

  v1 = *(v0 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v2 = sub_1DD63FDA8();
  v3 = [v1 stringForKey_];

  if (!v3)
  {
    return MEMORY[0x1E69E7CC0];
  }

  sub_1DD63FDD8();

  sub_1DD3B7F10();
  v4 = sub_1DD640638();

  return v4;
}

uint64_t sub_1DD3B7B40@<X0>(uint64_t a1@<X8>)
{
  if (*(v1 + 16))
  {
    v5 = *(v1 + 16);
    return sub_1DD3B7BC8(&v5, a1);
  }

  else
  {
    v4 = sub_1DD63D078();

    return __swift_storeEnumTagSinglePayload(a1, 1, 1, v4);
  }
}

uint64_t sub_1DD3B7BC8@<X0>(void **a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = sub_1DD63FDA8();
  v5 = [v3 objectForKey_];

  if (v5)
  {
    sub_1DD6406F8();
    swift_unknownObjectRelease();
  }

  else
  {
    v11 = 0u;
    v12 = 0u;
  }

  v13[0] = v11;
  v13[1] = v12;
  if (*(&v12 + 1))
  {
    v6 = sub_1DD63D078();
    v7 = swift_dynamicCast() ^ 1;
    v8 = a2;
    v9 = v6;
  }

  else
  {
    sub_1DD3ADFD0(v13, &qword_1ECCDB980, &unk_1DD643DC0);
    v9 = sub_1DD63D078();
    v8 = a2;
    v7 = 1;
  }

  return __swift_storeEnumTagSinglePayload(v8, v7, 1, v9);
}

uint64_t sub_1DD3B7CF0(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDEBC0, &qword_1DD6445A0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v12 - v5;
  v7 = *(v1 + 16);
  if (v7)
  {
    sub_1DD3B7EA0(a1, &v12 - v5);
    v8 = sub_1DD63D078();
    v9 = 0;
    if (__swift_getEnumTagSinglePayload(v6, 1, v8) != 1)
    {
      v9 = sub_1DD63CFA8();
      (*(*(v8 - 8) + 8))(v6, v8);
    }

    v10 = sub_1DD63FDA8();
    [v7 setValue:v9 forKey:v10];
    swift_unknownObjectRelease();
  }

  return sub_1DD3ADFD0(a1, &qword_1ECCDEBC0, &qword_1DD6445A0);
}

uint64_t sub_1DD3B7E44()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1DD3B7EA0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDEBC0, &qword_1DD6445A0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1DD3B7F10()
{
  result = qword_1EE166100;
  if (!qword_1EE166100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE166100);
  }

  return result;
}

uint64_t sub_1DD3B7F64()
{
  v1 = objc_allocWithZone(MEMORY[0x1E695E000]);
  *(v0 + 16) = sub_1DD3B7FC0(0xD000000000000024, 0x80000001DD66A020);
  return v0;
}

id sub_1DD3B7FC0(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = sub_1DD63FDA8();
  }

  else
  {
    v3 = 0;
  }

  v4 = [v2 initWithSuiteName_];

  return v4;
}

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1DD3B8038(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 40))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 32);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1DD3B808C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *(result + 32) = a2;
    }
  }

  return result;
}

uint64_t sub_1DD3B8120(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBB08, &qword_1DD643E90);
    v1 = sub_1DD640A78();
  }

  else
  {
    v1 = MEMORY[0x1E69E7CC8];
  }

  v4 = v1;

  sub_1DD3BAF0C(v2, 1, &v4, sub_1DD4E6410, &qword_1ECCDBB10, &qword_1DD643E98);

  return v4;
}

uint64_t sub_1DD3B81F8(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBB28, &qword_1DD654D00);
    v1 = sub_1DD640A78();
  }

  else
  {
    v1 = MEMORY[0x1E69E7CC8];
  }

  v4 = v1;

  sub_1DD3BAF0C(v2, 1, &v4, sub_1DD4E6424, &qword_1ECCDBB30, &qword_1DD643EB0);

  return v4;
}

uint64_t sub_1DD3B82F8(uint64_t a1, uint64_t *a2, uint64_t *a3, void (*a4)(uint64_t, uint64_t, uint64_t *))
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v5 = sub_1DD640A78();
  }

  else
  {
    v5 = MEMORY[0x1E69E7CC8];
  }

  v8 = v5;

  a4(v6, 1, &v8);

  return v8;
}

void *sub_1DD3B83AC()
{
  v0 = [objc_opt_self() sharedAnalytics];
  v1 = [v0 defaultMessageStream];

  v2 = swift_allocObject();
  *(v2 + 16) = v1;
  type metadata accessor for TrialAppRankerSELFConfigProvider();
  swift_allocObject();
  v3 = v1;
  v4 = sub_1DD5FE9FC();
  type metadata accessor for UserDefaultsAppRankerPersistentStorage();
  swift_allocObject();
  v5 = sub_1DD3B7F64();

  type metadata accessor for AppRankerSELFRecorder();
  result = swift_allocObject();
  result[2] = sub_1DD3BB650;
  result[3] = v2;
  result[4] = sub_1DD3BB658;
  result[5] = v4;
  result[6] = v5;
  result[7] = &off_1F58B0388;
  result[8] = sub_1DD3B860C;
  result[9] = 0;
  result[10] = sub_1DD3B86EC;
  result[11] = 0;
  result[12] = sub_1DD3B8618;
  result[13] = 0;
  return result;
}

void sub_1DD3B84FC(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBAC8, &qword_1DD643E60);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v12 - v8;
  sub_1DD3BB660(a2, &v12 - v8);
  v10 = sub_1DD63D0F8();
  v11 = 0;
  if (__swift_getEnumTagSinglePayload(v9, 1, v10) != 1)
  {
    v11 = sub_1DD63D0B8();
    (*(*(v10 - 8) + 8))(v9, v10);
  }

  [a3 emitMessage:a1 isolatedStreamUUID:v11];
}

id sub_1DD3B8618()
{
  result = [objc_opt_self() sharedConnection];
  if (result)
  {
    v1 = result;
    v2 = [result isDiagnosticSubmissionAllowed];

    return v2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1DD3B8678(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 40);
  os_unfair_lock_lock((v3 + 56));
  v4 = *(v3 + 16);
  v5 = *(v3 + 24);
  v6 = *(v3 + 32);
  v7 = *(v3 + 36);
  v9 = *(v3 + 40);
  v8 = *(v3 + 48);

  os_unfair_lock_unlock((v3 + 56));
  *a2 = v4;
  *(a2 + 8) = v5;
  *(a2 + 16) = v6;
  *(a2 + 20) = v7;
  *(a2 + 24) = v9;
  *(a2 + 32) = v8;
}

void sub_1DD3B86F0(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBAC8, &qword_1DD643E60);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  OUTLINED_FUNCTION_1_4();
  v7 = v5 - v6;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_16_3();
  v128 = v9;
  v10 = sub_1DD63D0F8();
  v11 = OUTLINED_FUNCTION_0(v10);
  v13 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_1_4();
  v129 = (v16 - v17);
  OUTLINED_FUNCTION_8_1();
  v19 = MEMORY[0x1EEE9AC00](v18);
  v21 = &v107 - v20;
  v22 = MEMORY[0x1EEE9AC00](v19);
  v24 = &v107 - v23;
  MEMORY[0x1EEE9AC00](v22);
  v127 = &v107 - v25;
  OUTLINED_FUNCTION_8_1();
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_16_3();
  v126 = v27;
  if ((sub_1DD3BA390() & 1) == 0)
  {
    return;
  }

  v28 = type metadata accessor for AppRankEvent(0);
  v29 = *(a1 + *(v28 + 28));
  if (!v29)
  {
    return;
  }

  v120 = v13;
  v121 = v1;
  v30 = *(a1 + *(v28 + 24));
  if (qword_1ECCDB018 != -1)
  {
    goto LABEL_63;
  }

LABEL_4:
  v31 = qword_1ECCDBAB8;
  if (qword_1ECCDB020 != -1)
  {
    swift_once();
  }

  v32 = sub_1DD3B9424(v29, v30, v31, qword_1ECCDBAC0, sub_1DD3B940C, 0, sub_1DD3B9418, 0, sub_1DD3B81F8, sub_1DD3BE624, sub_1DD3CC020);
  if (!v32)
  {
    return;
  }

  v35 = v33;
  v36 = v34;
  v125 = v30;
  v37 = v32;
  v38 = objc_allocWithZone(MEMORY[0x1E69CED00]);
  v122 = v37;

  v39 = [v38 init];
  if (v39)
  {
    v40 = v39;
    v116 = v21;
    v117 = v37;
    v119 = v36;
    v115 = v24;
    [v39 setIndependentSignal_];

    sub_1DD3BB50C(v41, v40, &qword_1ECCDBB20, 0x1E69CECF8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBAD0, &qword_1DD643E68);
    v118 = v40;
    v42 = sub_1DD63FC88();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBAD8, &qword_1DD643E70);
    v43 = sub_1DD63FC88();
    v44 = sub_1DD3B9424(v29, v125, v42, v43, sub_1DD3BA340, 0, sub_1DD3BA34C, 0, sub_1DD3B8120, sub_1DD3BE600, sub_1DD3CC020);
    v24 = v45;
    v47 = v46;

    if (v44)
    {
      v48 = objc_allocWithZone(MEMORY[0x1E69CED20]);
      v49 = v44;

      v114 = [v48 init];
      if (v114)
      {
        v109 = v44;
        v111 = v35;
        v112 = v10;
        v108 = v7;
        [v49 setDisambiguationAppsOrder_];
        v50 = type metadata accessor for AppRankSelectionEvent(0);
        v51 = a1 + *(v50 + 28);
        v52 = *(v51 + 8);
        v123 = v50;
        v124 = (v125 + 16);
        if (v52)
        {
          v51 = v125 + 16;
        }

        if (*v51 == *v51)
        {
          [v49 setNumDisambiguationApps_];
        }

        v113 = v49;
        v110 = v47;
        v30 = v125;
        v53 = *(v125 + 16);
        v10 = v24 & 0xFFFFFFFFFFFFFF8;
        if (v24 >= 0)
        {
          v54 = v24 & 0xFFFFFFFFFFFFFF8;
        }

        else
        {
          v54 = v24;
        }

        v107 = v54;
        v7 = v24 & 0xC000000000000001;

        v21 = 0;
        v29 = (v30 + 40);
        v55 = v24 >> 62;
        v125 = v24;
        while (v53 != v21)
        {
          if (v21 >= *v124)
          {
            __break(1u);
LABEL_62:
            __break(1u);
LABEL_63:
            swift_once();
            goto LABEL_4;
          }

          v56 = *(v29 - 1);
          v30 = *v29;
          if (v55)
          {
            v57 = sub_1DD6407B8();
          }

          else
          {
            v57 = *(v10 + 16);
          }

          if (v21 == v57)
          {
            break;
          }

          if (v7)
          {

            v59 = MEMORY[0x1E12B2C10](v21, v24);
          }

          else
          {
            if (v21 >= *(v10 + 16))
            {
              goto LABEL_62;
            }

            v58 = *(v24 + 8 * v21 + 32);

            v59 = v58;
          }

          v60 = v59;
          v61 = (a1 + *(v123 + 24));
          if (v56 == *v61 && v30 == v61[1])
          {
            v63 = 1;
          }

          else
          {
            v63 = sub_1DD640CD8();
          }

          [v60 setIsDisambiguatedApp_];
          if (v21 <= 0x7FFFFFFE)
          {
            [v60 setDisambiguationAppOrdinal_];
          }

          v29 += 2;
          ++v21;
          v24 = v125;
        }

        v65 = *(v121 + 40);
        (*(v121 + 32))(v131, v64);
        v66 = v113;
        if ((v133 & 1) == 0)
        {
          [v113 setTrialDeploymentId_];
        }

        v67 = v112;
        v68 = v128;
        v69 = v129;
        v70 = v114;
        v71 = &off_1E8655000;
        if (v134)
        {
          sub_1DD63D088();
          sub_1DD3BA6F8(v131);
          if (__swift_getEnumTagSinglePayload(v68, 1, v67) == 1)
          {
            sub_1DD3ADFD0(v68, &qword_1ECCDBAC8, &qword_1DD643E60);
          }

          else
          {
            v73 = v120;
            v74 = v69;
            v75 = v126;
            (*(v120 + 32))(v126, v68, v67);
            sub_1DD39638C(0, &qword_1EE1638C0, 0x1E69CF638);
            v76 = v127;
            (*(v73 + 16))(v127, v75, v67);
            v77 = v66;
            v78 = v76;
            v71 = &off_1E8655000;
            v79 = sub_1DD5A5500(v78);
            [v77 setTrialTreatmentId_];

            v80 = v75;
            v69 = v74;
            (*(v73 + 8))(v80, v67);
          }
        }

        v81 = v118;
        [v70 setPlayOnThirdPartyAppSignals_];
        [v70 setIndependentSignal_];

        sub_1DD3BB50C(v82, v70, &qword_1ECCDBAE8, 0x1E69CED10);
        v83 = [objc_allocWithZone(MEMORY[0x1E69CEBD8]) v71[418]];
        if (v83)
        {
          v84 = v83;
          v85 = [objc_allocWithZone(MEMORY[0x1E69CEBE0]) v71[418]];
          if (v85)
          {
            v86 = v115;
            v87 = v85;
            sub_1DD63D0E8();
            sub_1DD39638C(0, &qword_1EE1638C0, 0x1E69CF638);
            v88 = *(v120 + 16);
            v89 = v127;
            v88(v127, v86, v67);
            v90 = sub_1DD5A5500(v89);
            [v87 setInferenceId_];

            v128 = v87;
            [v84 setEventMetadata_];
            [v84 setVideoSmartAppSelectionDisambiguation_];
            sub_1DD63D0E8();
            if (qword_1EE166510 != -1)
            {
              OUTLINED_FUNCTION_0_3();
            }

            v91 = sub_1DD63F9F8();
            __swift_project_value_buffer(v91, qword_1EE16F0C8);
            v127 = v88;
            v88(v69, v86, v67);
            v92 = sub_1DD63F9D8();
            v93 = sub_1DD640368();
            if (os_log_type_enabled(v92, v93))
            {
              v94 = v69;
              v95 = swift_slowAlloc();
              v126 = swift_slowAlloc();
              v130 = v126;
              *v95 = 136315138;
              sub_1DD3BB588();
              v96 = sub_1DD640CB8();
              v98 = v97;
              OUTLINED_FUNCTION_15_5();
              (v88)(v94, v99);
              v100 = v96;
              v70 = v114;
              v101 = sub_1DD39565C(v100, v98, &v130);

              *(v95 + 4) = v101;
              _os_log_impl(&dword_1DD38D000, v92, v93, "AppRankerSELFRecorder will emit SELF message with Inference ID %s", v95, 0xCu);
              __swift_destroy_boxed_opaque_existential_1(v126);
              OUTLINED_FUNCTION_0_1();
              OUTLINED_FUNCTION_0_1();

              v102 = v112;
            }

            else
            {

              OUTLINED_FUNCTION_15_5();
              (v88)(v69, v67);
              v102 = v67;
            }

            v104 = *(v121 + 16);
            v103 = *(v121 + 24);
            v105 = v108;
            v106 = v116;
            (v127)(v108, v116, v102);
            __swift_storeEnumTagSinglePayload(v105, 0, 1, v102);
            v104(v84, v105);

            sub_1DD3BB4C0(v109);

            sub_1DD3BB4C0(v117);
            sub_1DD3ADFD0(v105, &qword_1ECCDBAC8, &qword_1DD643E60);
            (v88)(v106, v102);
            (v88)(v115, v102);
            return;
          }

          sub_1DD3BB4C0(v109);
          sub_1DD3BB4C0(v117);
        }

        else
        {
          sub_1DD3BB4C0(v109);
          sub_1DD3BB4C0(v117);
        }

        return;
      }

      sub_1DD3BB4C0(v44);
      sub_1DD3BB4C0(v117);
    }

    else
    {
      sub_1DD3BB4C0(v117);
    }
  }

  else
  {
    sub_1DD3BB4C0(v37);
  }

  v72 = v122;
}

uint64_t sub_1DD3B9424(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(int64_t *__return_ptr), uint64_t a6, void (*a7)(int64_t *__return_ptr, uint64_t), uint64_t a8, void (**a9)(char *, char *, uint64_t), uint64_t a10, uint64_t (*a11)(int64_t))
{
  v220 = a1;
  v230 = sub_1DD63D4F8();
  v16 = OUTLINED_FUNCTION_0(v230);
  v221 = v17;
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_1_4();
  v22 = (v20 - v21);
  v24 = MEMORY[0x1EEE9AC00](v23);
  v26 = &v200 - v25;
  MEMORY[0x1EEE9AC00](v24);
  v222 = &v200 - v27;
  OUTLINED_FUNCTION_8_1();
  MEMORY[0x1EEE9AC00](v28);
  v228 = &v200 - v29;
  OUTLINED_FUNCTION_8_1();
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_16_3();
  v219 = v31;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBAF0, &qword_1DD643E78);
  v33 = *(*(v32 - 8) + 64);
  MEMORY[0x1EEE9AC00](v32 - 8);
  OUTLINED_FUNCTION_1_4();
  v224 = (v34 - v35);
  OUTLINED_FUNCTION_8_1();
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_16_3();
  v223 = v37;
  a5(&v232);
  v38 = v232;
  if (!v232)
  {
    if (qword_1EE166510 == -1)
    {
      goto LABEL_16;
    }

    goto LABEL_114;
  }

  v205 = v26;
  v39 = *(a2 + 16);

  v41 = *(sub_1DD41859C(v40) + 16);

  if (v39 != v41)
  {
    if (qword_1EE166510 != -1)
    {
      OUTLINED_FUNCTION_0_3();
    }

    v60 = sub_1DD63F9F8();
    __swift_project_value_buffer(v60, qword_1EE16F0C8);
    v55 = sub_1DD63F9D8();
    v61 = sub_1DD640378();
    if (OUTLINED_FUNCTION_5_6(v61))
    {
      v62 = OUTLINED_FUNCTION_9();
      OUTLINED_FUNCTION_11_3(v62);
      v65 = "AppRankerSELFSerialization create has duplicate candidateAppBundleIds";
      goto LABEL_105;
    }

    goto LABEL_106;
  }

  v201 = v22;
  v209 = a3;
  v210 = a4;
  v211 = v38;
  v42 = 0;
  v202 = a11;
  v225 = a10;
  v227 = a9;
  v203 = a2;
  v43 = (a2 + 40);
  v44 = MEMORY[0x1E69E7CC0];
  v229 = v39;
  v226 = v43;
LABEL_4:
  v45 = &v43[2 * v42];
  for (i = v42; v39 != i; ++i)
  {
    if (i >= v39)
    {
      goto LABEL_110;
    }

    v42 = i + 1;
    if (__OFADD__(i, 1))
    {
      goto LABEL_111;
    }

    v47 = *(v45 - 1);
    v48 = *v45;

    a7(&v232, v49);
    v50 = v232;
    if (v232)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v44 = (v225)(0, *(v44 + 16) + 1, 1, v44);
      }

      v43 = v226;
      v52 = *(v44 + 16);
      v51 = *(v44 + 24);
      if (v52 >= v51 >> 1)
      {
        v44 = (v225)(v51 > 1, v52 + 1, 1, v44);
      }

      *(v44 + 16) = v52 + 1;
      v53 = (v44 + 24 * v52);
      v53[4] = v47;
      v53[5] = v48;
      v53[6] = v50;
      v39 = v229;
      goto LABEL_4;
    }

    v45 += 2;
    v39 = v229;
  }

  v66 = (v227)(v44);
  if (*(v66 + 16) == v39)
  {
    v67 = v220 + 64;
    v68 = 1 << *(v220 + 32);
    if (v68 < 64)
    {
      v69 = ~(-1 << v68);
    }

    else
    {
      v69 = -1;
    }

    v70 = v69 & *(v220 + 64);
    v71 = (v68 + 63) >> 6;
    v226 = (v221 + 32);
    v227 = (v221 + 16);
    v218 = (v221 + 88);
    v217 = *MEMORY[0x1E69D2B58];
    v207 = *MEMORY[0x1E69D2B60];
    v215 = (v221 + 8);
    v213 = (v221 + 96);
    v225 = v66;
    v206 = v66 + 64;
    v200 = v221 + 40;

    v38 = 0;
    v204 = MEMORY[0x1E69E7CC8];
    v72 = v230;
    v214 = v71;
    v216 = v67;
    if (v70)
    {
      while (1)
      {
        v73 = v38;
LABEL_32:
        v74 = __clz(__rbit64(v70));
        v70 &= v70 - 1;
        v75 = v74 | (v73 << 6);
        v76 = v221;
        v77 = (*(v220 + 48) + 16 * v75);
        v78 = *v77;
        v79 = v77[1];
        v80 = v219;
        (*(v221 + 16))(v219, *(v220 + 56) + *(v221 + 72) * v75, v72);
        v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBAF8, &qword_1DD643E80);
        v82 = v72;
        v83 = v81;
        v84 = *(v81 + 48);
        v85 = v224;
        *v224 = v78;
        v85[1] = v79;
        v86 = v85;
        (*(v76 + 32))(v85 + v84, v80, v82);
        __swift_storeEnumTagSinglePayload(v86, 0, 1, v83);

LABEL_33:
        v87 = v86;
        v88 = v223;
        sub_1DD3BB5E0(v87, v223);
        v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBAF8, &qword_1DD643E80);
        if (__swift_getEnumTagSinglePayload(v88, 1, v89) == 1)
        {

          v184 = 0;
          v185 = MEMORY[0x1E69E7CC0];
          v232 = MEMORY[0x1E69E7CC0];
          v186 = v203 + 40;
          v187 = v229;
          v188 = v225;
LABEL_89:
          v189 = (v186 + 16 * v184);
          while (v187 != v184)
          {
            if (v184 >= v187)
            {
              goto LABEL_112;
            }

            if (__OFADD__(v184, 1))
            {
              goto LABEL_113;
            }

            if (*(v188 + 16))
            {
              v190 = *(v189 - 1);
              v191 = *v189;

              v192 = sub_1DD3978DC();
              if (v193)
              {
                v194 = *(*(v188 + 56) + 8 * v192);

                MEMORY[0x1E12B23F0](v195);
                if (*((v232 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v232 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                {
                  sub_1DD640138();
                }

                sub_1DD640168();
                v185 = v232;
                ++v184;
                goto LABEL_89;
              }
            }

            ++v184;
            v189 += 2;
          }

          if (v187 == v202(v185))
          {
            return v211;
          }

          v38 = v211;
          if (qword_1EE166510 != -1)
          {
            goto LABEL_116;
          }

LABEL_103:
          v197 = sub_1DD63F9F8();
          __swift_project_value_buffer(v197, qword_1EE16F0C8);
          v55 = sub_1DD63F9D8();
          v198 = sub_1DD640378();
          if (!OUTLINED_FUNCTION_5_6(v198))
          {
            goto LABEL_106;
          }

          v199 = OUTLINED_FUNCTION_9();
          OUTLINED_FUNCTION_11_3(v199);
          v65 = "AppRankerSELFSerialization error creating ordered dependent signals";
LABEL_105:
          OUTLINED_FUNCTION_18(&dword_1DD38D000, v63, v64, v65);
          OUTLINED_FUNCTION_0_1();
          goto LABEL_106;
        }

        v72 = *v88;
        v90 = v88[1];
        v91 = *v226;
        v92 = v88 + *(v89 + 48);
        v93 = v228;
        v94 = v230;
        (*v226)(v228, v92, v230);
        v95 = *v227;
        v96 = v222;
        (*v227)(v222, v93, v94);
        v97 = (*v218)(v96, v94);
        if (v97 != v217)
        {
          break;
        }

        (*v213)(v96, v94);
        v98 = v209;
        if (!*(v209 + 16) || (v99 = *v96, OUTLINED_FUNCTION_4_5(), v100 = sub_1DD3978DC(), (v101 & 1) == 0))
        {
          v95(v205, v228, v230);
          v142 = v204;
          swift_isUniquelyReferenced_nonNull_native();
          v232 = v142;
          OUTLINED_FUNCTION_4_5();
          sub_1DD3978DC();
          OUTLINED_FUNCTION_7_5();
          if (__OFADD__(v145, v146))
          {
            __break(1u);
LABEL_116:
            OUTLINED_FUNCTION_0_3();
            goto LABEL_103;
          }

          v147 = v143;
          v148 = v144;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBB00, &qword_1DD643E88);
          if (sub_1DD640A08())
          {
            OUTLINED_FUNCTION_4_5();
            v212 = sub_1DD3978DC();
            v67 = v216;
            if ((v148 & 1) != (v149 & 1))
            {
              goto LABEL_120;
            }

            if (v148)
            {
LABEL_70:

              OUTLINED_FUNCTION_17_4();
              v151 = v150 + *(v221 + 72) * v212;
              v152 = *(v221 + 40);
              v153 = &v234;
LABEL_83:
              v72 = v230;
              v152(v151, *(v153 - 32), v230);
              v179 = OUTLINED_FUNCTION_3_11();
              v180(v179);
              goto LABEL_63;
            }
          }

          else
          {
            v212 = v147;
            v67 = v216;
            if (v148)
            {
              goto LABEL_70;
            }
          }

          v163 = v232;
          OUTLINED_FUNCTION_14_5(v232 + 8 * (v212 >> 6));
          v173 = (v171 + 16 * v172);
          *v173 = v72;
          v173[1] = v90;
          v174 = *(v163 + 56) + *(v221 + 72) * v172;
          OUTLINED_FUNCTION_12_5(&v234);
          v91();
          v175 = OUTLINED_FUNCTION_3_11();
          v176(v175);
          v177 = *(v163 + 16);
          v169 = __OFADD__(v177, 1);
          v170 = v177 + 1;
          if (v169)
          {
            goto LABEL_118;
          }

LABEL_80:
          v204 = v163;
          *(v163 + 16) = v170;
          goto LABEL_63;
        }

        v102 = v100;

        v103 = *(v98 + 56) + 16 * v102;
        v104 = *v103;
        v105 = *(v103 + 8);
        v231 = v99;
        v232 = v211;

        v104(&v232, &v231);

        v106 = *v215;
        v107 = OUTLINED_FUNCTION_6_4();
        v108(v107);
LABEL_62:
        v67 = v216;
LABEL_63:
        v71 = v214;
        if (!v70)
        {
          goto LABEL_28;
        }
      }

      v109 = v210;
      if (v97 != v207)
      {

        if (qword_1EE166510 != -1)
        {
          swift_once();
        }

        v132 = sub_1DD63F9F8();
        __swift_project_value_buffer(v132, qword_1EE16F0C8);
        v133 = sub_1DD63F9D8();
        v72 = sub_1DD640378();
        v134 = os_log_type_enabled(v133, v72);
        v67 = v216;
        if (v134)
        {
          v135 = OUTLINED_FUNCTION_9();
          *v135 = 0;
          _os_log_impl(&dword_1DD38D000, v133, v72, "AppRankerSELFSerialization unsupported SignalValue type", v135, 2u);
          OUTLINED_FUNCTION_0_1();
        }

        v136 = *v215;
        v137 = OUTLINED_FUNCTION_6_4();
        v136(v137);
        (v136)(v96, v72);
        goto LABEL_63;
      }

      (*v213)(v96, v230);
      v110 = *v96;
      if (*(v109 + 16))
      {
        OUTLINED_FUNCTION_4_5();
        v111 = sub_1DD3978DC();
        if (v112)
        {
          v113 = v111;

          v114 = *(v109 + 56) + 16 * v113;
          v115 = *(v114 + 8);
          v208 = *v114;
          v116 = v225;
          v117 = 1 << *(v225 + 32);
          if (v117 < 64)
          {
            v118 = ~(-1 << v117);
          }

          else
          {
            v118 = -1;
          }

          v119 = v118 & *(v225 + 64);
          v72 = (v117 + 63) >> 6;
          v212 = v115;

          v120 = 0;
          while (v119)
          {
            v121 = v119;
LABEL_52:
            v119 = (v121 - 1) & v121;
            if (*(v110 + 16))
            {
              v123 = __clz(__rbit64(v121)) | (v120 << 6);
              v124 = *(*(v116 + 56) + 8 * v123);
              v125 = (*(v116 + 48) + 16 * v123);
              v126 = *v125;
              v127 = v125[1];

              v128 = v124;
              v129 = sub_1DD3978DC();
              v131 = v130;

              if (v131)
              {
                v231 = *(*(v110 + 56) + 8 * v129);
                v232 = v128;
                v208(&v232, &v231);
              }

              v116 = v225;
            }
          }

          while (1)
          {
            v122 = v120 + 1;
            if (__OFADD__(v120, 1))
            {
              break;
            }

            if (v122 >= v72)
            {
              v138 = *v215;
              v139 = OUTLINED_FUNCTION_6_4();
              v140(v139);

              goto LABEL_62;
            }

            v121 = *(v206 + 8 * v122);
            ++v120;
            if (v121)
            {
              v120 = v122;
              v116 = v225;
              goto LABEL_52;
            }
          }

          __break(1u);
          goto LABEL_109;
        }
      }

      v95(v201, v228, v230);
      v154 = v204;
      LODWORD(v212) = swift_isUniquelyReferenced_nonNull_native();
      v232 = v154;
      OUTLINED_FUNCTION_4_5();
      sub_1DD3978DC();
      OUTLINED_FUNCTION_7_5();
      if (__OFADD__(v157, v158))
      {
        __break(1u);
LABEL_118:
        __break(1u);
LABEL_119:
        __break(1u);
LABEL_120:
        result = sub_1DD640D58();
        __break(1u);
        return result;
      }

      v159 = v155;
      v160 = v156;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBB00, &qword_1DD643E88);
      if (sub_1DD640A08())
      {
        OUTLINED_FUNCTION_4_5();
        v161 = sub_1DD3978DC();
        v67 = v216;
        if ((v160 & 1) != (v162 & 1))
        {
          goto LABEL_120;
        }

        v159 = v161;
        if (v160)
        {
LABEL_82:

          OUTLINED_FUNCTION_17_4();
          v151 = OUTLINED_FUNCTION_13_3(v178);
          v152 = *(v159 + 40);
          v153 = v233;
          goto LABEL_83;
        }
      }

      else
      {
        v67 = v216;
        if (v160)
        {
          goto LABEL_82;
        }
      }

      v163 = v232;
      OUTLINED_FUNCTION_14_5(v232 + 8 * (v159 >> 6));
      v165 = (v164 + 16 * v159);
      *v165 = v72;
      v165[1] = v90;
      OUTLINED_FUNCTION_13_3(*(v163 + 56));
      OUTLINED_FUNCTION_12_5(v233);
      v91();
      v166 = OUTLINED_FUNCTION_3_11();
      v167(v166);
      v168 = *(v163 + 16);
      v169 = __OFADD__(v168, 1);
      v170 = v168 + 1;
      if (v169)
      {
        goto LABEL_119;
      }

      goto LABEL_80;
    }

LABEL_28:
    while (1)
    {
      v73 = (v38 + 1);
      if (__OFADD__(v38, 1))
      {
        break;
      }

      if (v73 >= v71)
      {
        v141 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBAF8, &qword_1DD643E80);
        v86 = v224;
        __swift_storeEnumTagSinglePayload(v224, 1, 1, v141);
        v70 = 0;
        goto LABEL_33;
      }

      v70 = *(v67 + 8 * v73);
      ++v38;
      if (v70)
      {
        v38 = v73;
        goto LABEL_32;
      }
    }

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
    OUTLINED_FUNCTION_0_3();
LABEL_16:
    v54 = sub_1DD63F9F8();
    __swift_project_value_buffer(v54, qword_1EE16F0C8);
    v55 = sub_1DD63F9D8();
    v56 = sub_1DD640378();
    if (OUTLINED_FUNCTION_5_6(v56))
    {
      v57 = OUTLINED_FUNCTION_9();
      OUTLINED_FUNCTION_11_3(v57);
      OUTLINED_FUNCTION_18(&dword_1DD38D000, v58, v59, "AppRankerSELFSerialization create could not create independentSignals");
      OUTLINED_FUNCTION_0_1();
    }

    goto LABEL_107;
  }

  v38 = v211;
  if (qword_1EE166510 != -1)
  {
    OUTLINED_FUNCTION_0_3();
  }

  v181 = sub_1DD63F9F8();
  __swift_project_value_buffer(v181, qword_1EE16F0C8);
  v55 = sub_1DD63F9D8();
  v182 = sub_1DD640378();
  if (OUTLINED_FUNCTION_5_6(v182))
  {
    v183 = OUTLINED_FUNCTION_9();
    OUTLINED_FUNCTION_11_3(v183);
    v65 = "AppRankerSELFSerialization create could not create dependentSignals";
    goto LABEL_105;
  }

LABEL_106:

LABEL_107:
  return 0;
}