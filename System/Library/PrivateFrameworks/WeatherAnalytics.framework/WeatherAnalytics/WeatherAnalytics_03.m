uint64_t sub_220C33C4C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7BC30, &qword_220CA4AE0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v14 - v8;
  v10 = *(v2 + 16);
  sub_220CA0574();
  v11 = OBJC_IVAR____TtC16WeatherAnalytics16GeocodeTelemetry_geocodingTasks;
  swift_beginAccess();
  sub_220C34B5C(a1, *(v3 + v11), a2);
  swift_endAccess();
  v12 = sub_220C9F7D4();
  __swift_storeEnumTagSinglePayload(v9, 1, 1, v12);
  swift_beginAccess();
  sub_220C3331C(v9, a1);
  swift_endAccess();
  return sub_220CA0584();
}

void GeocodeTelemetry.geocodeTaskFailed(for:error:reverseGeocodeSource:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_16_1();
  a21 = v24;
  a22 = v25;
  v227 = v26;
  v220 = v27;
  v29 = v28;
  v213 = type metadata accessor for GeocodeTaskFailedEvent();
  v30 = OUTLINED_FUNCTION_1(v213);
  v32 = *(v31 + 64);
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_11();
  v214 = (v34 - v33);
  v35 = sub_220C9FCC4();
  v225 = OUTLINED_FUNCTION_3(v35);
  v226 = v36;
  v38 = *(v37 + 64);
  MEMORY[0x28223BE20](v225);
  OUTLINED_FUNCTION_3_4();
  v212 = v39 - v40;
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_6_3();
  v215 = v42;
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_6_3();
  OUTLINED_FUNCTION_1_7();
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_6_3();
  OUTLINED_FUNCTION_1_7();
  MEMORY[0x28223BE20](v45);
  v47 = &v195[-v46];
  v219 = type metadata accessor for GeocodeTaskCompletedEvent();
  v48 = OUTLINED_FUNCTION_1(v219);
  v50 = *(v49 + 64);
  MEMORY[0x28223BE20](v48);
  OUTLINED_FUNCTION_11();
  v224 = v52 - v51;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7BC30, &qword_220CA4AE0);
  v54 = OUTLINED_FUNCTION_14_1(v53);
  v56 = *(v55 + 64);
  MEMORY[0x28223BE20](v54);
  v58 = &v195[-v57];
  v59 = sub_220C9F7D4();
  v60 = OUTLINED_FUNCTION_3(v59);
  v62 = v61;
  v64 = *(v63 + 64);
  MEMORY[0x28223BE20](v60);
  OUTLINED_FUNCTION_3_4();
  v210 = v65 - v66;
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x28223BE20](v67);
  OUTLINED_FUNCTION_6_3();
  OUTLINED_FUNCTION_1_7();
  MEMORY[0x28223BE20](v68);
  OUTLINED_FUNCTION_6_3();
  OUTLINED_FUNCTION_1_7();
  MEMORY[0x28223BE20](v69);
  OUTLINED_FUNCTION_6_3();
  OUTLINED_FUNCTION_1_7();
  MEMORY[0x28223BE20](v70);
  OUTLINED_FUNCTION_6_3();
  OUTLINED_FUNCTION_1_7();
  MEMORY[0x28223BE20](v71);
  OUTLINED_FUNCTION_6_3();
  OUTLINED_FUNCTION_1_7();
  MEMORY[0x28223BE20](v72);
  OUTLINED_FUNCTION_13_2();
  v74 = MEMORY[0x28223BE20](v73);
  v76 = &v195[-v75];
  v77 = MEMORY[0x28223BE20](v74);
  v79 = &v195[-v78];
  MEMORY[0x28223BE20](v77);
  v81 = &v195[-v80];
  v206 = v29;
  sub_220C33C4C(v29, v58);
  if (__swift_getEnumTagSinglePayload(v58, 1, v59) != 1)
  {
    v82 = *(v62 + 32);
    v209 = v62 + 32;
    v208 = v82;
    v82(v81, v58, v59);
    v83 = v22[11];
    v84 = v22[12];
    v216 = v22;
    __swift_project_boxed_opaque_existential_1(v22 + 8, v83);
    sub_220C9FDD4();
    v211 = v62;
    v85 = *(v62 + 16);
    v85(v76, v81, v59);
    v223 = v79;
    v217 = v85;
    v218 = v62 + 16;
    v85(v23, v79, v59);
    v86 = v226;
    v87 = *(v226 + 16);
    v88 = v225;
    v221 = v226 + 16;
    v222 = v87;
    v87(v47, v227, v225);
    v89 = *(v86 + 88);
    v202 = v86 + 88;
    v201 = v89;
    v90 = v89(v47, v88);
    v200 = *MEMORY[0x277D7AB18];
    v91 = v81;
    if (v90 == v200)
    {
      v92 = 0;
      v93 = v216;
      v94 = v223;
      goto LABEL_10;
    }

    v95 = v47;
    v93 = v216;
    v94 = v223;
    if (v90 != *MEMORY[0x277D7AB10])
    {
      if (v90 == *MEMORY[0x277D7AB20])
      {
        v92 = 2;
        goto LABEL_10;
      }

      (*(v226 + 8))(v95, v225);
    }

    v92 = 1;
LABEL_10:
    v96 = v224;
    v97 = v208;
    v208(v224, v76, v59);
    v98 = v59;
    v99 = v219;
    v97(v96 + *(v219 + 20), v23, v98);
    v100 = v206;
    *(v96 + *(v99 + 24)) = v206;
    v101 = *(v99 + 28);
    v102 = v98;
    *(v96 + v101) = v92;
    v103 = OBJC_IVAR____TtC16WeatherAnalytics16GeocodeTelemetry_logger;
    v104 = v203;
    v219 = v91;
    v105 = v91;
    v107 = v217;
    v106 = v218;
    v217(v203, v105, v98);
    v108 = v204;
    v107(v204, v94, v98);
    v109 = OUTLINED_FUNCTION_12_0(&a13);
    v110 = v225;
    v222(v109, v227, v225);
    v111 = v100;
    v112 = v93;
    v199 = v103;
    v113 = sub_220CA0A64();
    v114 = sub_220CA0D84();
    v115 = os_log_type_enabled(v113, v114);
    v198 = v111;
    if (v115)
    {
      v116 = swift_slowAlloc();
      v196 = v114;
      v117 = v110;
      v118 = v116;
      v197 = swift_slowAlloc();
      v228[0] = v197;
      *v118 = 141559043;
      OUTLINED_FUNCTION_10_1();
      *(v118 + 4) = v119;
      *(v118 + 12) = 2081;
      v120 = [v111 description];
      v121 = sub_220CA0C24();
      v123 = v122;

      v124 = sub_220BFC484(v121, v123, v228);

      *(v118 + 14) = v124;
      *(v118 + 22) = 2048;
      sub_220C9F794();
      v126 = v125;
      v127 = v106;
      v128 = *(v211 + 8);
      (v128)(v104, v102);
      *(v118 + 24) = v126;
      *(v118 + 32) = 2048;
      v129 = v216;
      sub_220C9F794();
      v131 = v130;
      OUTLINED_FUNCTION_9_2();
      *(v132 - 256) = v128;
      v128();
      *(v118 + 34) = v131;
      *(v118 + 42) = 2080;
      v133 = OUTLINED_FUNCTION_12_0(&a17);
      v222(v133, v127, v117);
      v134 = sub_220CA0C34();
      v136 = v135;
      v205 = *(v226 + 8);
      v205(v127, v117);
      sub_220BFC484(v134, v136, v228);
      OUTLINED_FUNCTION_17_0();
      *(v118 + 44) = v134;
      _os_log_impl(&dword_220BF4000, v113, v196, "Submitting reverse-geocoding task completed event. Location=%{private,mask.hash}s, Start Time=%f, End Time=%f, reverseGeocodeSource=%s", v118, 0x34u);
      OUTLINED_FUNCTION_12_0(&v226);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_8();
      OUTLINED_FUNCTION_8();

      v137 = v214;
      v138 = v222;
    }

    else
    {

      v205 = *(v226 + 8);
      v205(v106, v110);
      v139 = *(v211 + 8);
      (v139)(v108, v102);
      OUTLINED_FUNCTION_9_2();
      *(v140 - 256) = v139;
      v139();
      v137 = v214;
      v117 = v110;
      v138 = v222;
      v129 = v112;
    }

    v141 = v129[6];
    v142 = v129[7];
    v143 = __swift_project_boxed_opaque_existential_1(v129 + 3, v141);
    (*(v142 + 8))(v224, v141, v142);
    v228[0] = v220;
    v144 = v220;
    v204 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7BD90, &qword_220CA5AD8);
    v197 = sub_220CA0C34();
    v203 = v145;
    v146 = OUTLINED_FUNCTION_11_4(&a15);
    v143(v146);
    v147 = v207;
    (v143)(v207, v223, v102);
    v148 = v215;
    v138(v215, v227, v117);
    v149 = v198;
    v150 = sub_220CA0A64();
    v151 = sub_220CA0D84();

    v152 = os_log_type_enabled(v150, v151);
    v214 = v149;
    if (v152)
    {
      v153 = swift_slowAlloc();
      LODWORD(v198) = v151;
      v113 = v153;
      v199 = swift_slowAlloc();
      v228[0] = v199;
      *v113 = 141559555;
      OUTLINED_FUNCTION_10_1();
      *(v113 + 4) = v154;
      *(v113 + 12) = 2081;
      v155 = [v149 description];
      v156 = sub_220CA0C24();
      v158 = v157;

      v159 = sub_220BFC484(v156, v158, v228);

      *(v113 + 14) = v159;
      *(v113 + 22) = 2048;
      sub_220C9F794();
      v161 = v160;
      OUTLINED_FUNCTION_9_2();
      v163 = *(v162 - 256);
      v163();
      *(v113 + 24) = v161;
      *(v113 + 32) = 2048;
      sub_220C9F794();
      v165 = v164;
      (v163)(v147, v102);
      *(v113 + 34) = v165;
      *(v113 + 42) = 2160;
      OUTLINED_FUNCTION_10_1();
      *(v113 + 44) = v166;
      *(v113 + 52) = 2081;
      sub_220BFC484(v197, v203, v228);
      OUTLINED_FUNCTION_17_0();
      *(v113 + 54) = 2048;
      *(v113 + 62) = 2080;
      v167 = OUTLINED_FUNCTION_12_0(&a17);
      v168 = v215;
      v169 = v225;
      v222(v167, v215, v225);
      v170 = sub_220CA0C34();
      v172 = v171;
      v205(v168, v169);
      sub_220BFC484(v170, v172, v228);
      OUTLINED_FUNCTION_17_0();
      *(v113 + 64) = v170;
      _os_log_impl(&dword_220BF4000, v150, v198, "Submitting reverse-geocoding task failed event. Location=%{private,mask.hash}s, Start Time=%f, End Time=%f, Error Description=%{private,mask.hash}s reverseGeocodeSource=%s", v113, 0x48u);
      OUTLINED_FUNCTION_12_0(v228);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_8();
      OUTLINED_FUNCTION_8();
    }

    else
    {

      v173 = v225;
      v205(v148, v225);
      OUTLINED_FUNCTION_9_2();
      v172 = *(v174 - 256);
      v172();
      (v172)(v113, v102);
      v169 = v173;
    }

    v175 = OUTLINED_FUNCTION_11_4(&a20);
    (v172)(v175);
    v176 = v210;
    (v172)(v210, v223, v102);
    v228[0] = v220;
    v177 = v220;
    v178 = sub_220CA0C34();
    v180 = v179;
    v181 = v212;
    v222(v212, v227, v169);
    v182 = v201(v181, v169);
    if (v182 == v200)
    {
      v183 = 0;
LABEL_23:
      v184 = v208;
      v208(v137, v113, v102);
      v185 = v213;
      v184(v137 + v213[5], v176, v102);
      v186 = v214;
      *(v137 + v185[6]) = v214;
      v187 = (v137 + v185[7]);
      *v187 = v178;
      v187[1] = v180;
      *(v137 + v185[8]) = v183;
      v188 = v216[6];
      v189 = v216[7];
      __swift_project_boxed_opaque_existential_1(v216 + 3, v188);
      v190 = *(v189 + 16);
      v191 = v186;
      v190(v137, v188, v189);
      sub_220C34DEC(v137, type metadata accessor for GeocodeTaskFailedEvent);
      OUTLINED_FUNCTION_5_3();
      sub_220C34DEC(v224, v192);
      OUTLINED_FUNCTION_9_2();
      v194 = *(v193 - 256);
      v194();
      (v194)(v219, v102);
      goto LABEL_24;
    }

    if (v182 != *MEMORY[0x277D7AB10])
    {
      if (v182 == *MEMORY[0x277D7AB20])
      {
        v183 = 2;
        goto LABEL_23;
      }

      v205(v181, v169);
    }

    v183 = 1;
    goto LABEL_23;
  }

  sub_220C34D84(v58);
LABEL_24:
  OUTLINED_FUNCTION_15_4();
}

uint64_t sub_220C34B5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*(a2 + 16) && (v5 = sub_220C34FC4(a1), (v6 & 1) != 0))
  {
    v7 = v5;
    v8 = *(a2 + 56);
    v9 = sub_220C9F7D4();
    (*(*(v9 - 8) + 16))(a3, v8 + *(*(v9 - 8) + 72) * v7, v9);
    v10 = a3;
    v11 = 0;
    v12 = v9;
  }

  else
  {
    v12 = sub_220C9F7D4();
    v10 = a3;
    v11 = 1;
  }

  return __swift_storeEnumTagSinglePayload(v10, v11, 1, v12);
}

char *sub_220C34C90(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7BD98, &qword_220CA5B70);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[v8] <= v12)
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

uint64_t sub_220C34D84(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7BC30, &qword_220CA4AE0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_220C34DEC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_1(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_220C34E78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = *v2;
  v6 = sub_220C34FC4(a1);
  if (v7)
  {
    v8 = v6;
    v9 = *v3;
    swift_isUniquelyReferenced_nonNull_native();
    v17 = *v3;
    v10 = *(*v3 + 24);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7BDA0, &qword_220CA5B78);
    sub_220CA0F64();

    v11 = *(v17 + 56);
    v12 = sub_220C9F7D4();
    (*(*(v12 - 8) + 32))(a2, v11 + *(*(v12 - 8) + 72) * v8, v12);
    sub_220C352D8();
    sub_220C3531C();
    sub_220CA0F74();
    *v3 = v17;
    v13 = a2;
    v14 = 0;
    v15 = v12;
  }

  else
  {
    v15 = sub_220C9F7D4();
    v13 = a2;
    v14 = 1;
  }

  return __swift_storeEnumTagSinglePayload(v13, v14, 1, v15);
}

unint64_t sub_220C34FC4(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  v5 = sub_220CA0EC4();

  return sub_220C35218(a1, v5);
}

id sub_220C35008(uint64_t a1, void *a2)
{
  v3 = v2;
  v5 = *v2;
  v6 = sub_220C34FC4(a2);
  if (__OFADD__(*(v5 + 16), (v7 & 1) == 0))
  {
    __break(1u);
    goto LABEL_13;
  }

  v8 = v6;
  v9 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7BDA0, &qword_220CA5B78);
  if ((sub_220CA0F64() & 1) == 0)
  {
    goto LABEL_5;
  }

  v10 = *v3;
  v11 = sub_220C34FC4(a2);
  if ((v9 & 1) != (v12 & 1))
  {
LABEL_13:
    sub_220C352D8();
    result = sub_220CA11A4();
    __break(1u);
    return result;
  }

  v8 = v11;
LABEL_5:
  v13 = *v3;
  if (v9)
  {
    v14 = v13[7];
    v15 = sub_220C9F7D4();
    v16 = *(v15 - 8);
    v17 = *(v16 + 40);
    v18 = v15;
    v19 = v14 + *(v16 + 72) * v8;

    return v17(v19, a1, v18);
  }

  else
  {
    sub_220C3516C(v8, a2, a1, v13);

    return a2;
  }
}

uint64_t sub_220C3516C(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  v7 = a4[7];
  v8 = sub_220C9F7D4();
  result = (*(*(v8 - 8) + 32))(v7 + *(*(v8 - 8) + 72) * a1, a3, v8);
  v10 = a4[2];
  v11 = __OFADD__(v10, 1);
  v12 = v10 + 1;
  if (v11)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v12;
  }

  return result;
}

unint64_t sub_220C35218(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = v2 + 64;
  v5 = ~(-1 << *(v2 + 32));
  for (i = a2 & v5; ((1 << i) & *(v4 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v5)
  {
    sub_220C352D8();
    v7 = *(*(v3 + 48) + 8 * i);
    v8 = sub_220CA0ED4();

    if (v8)
    {
      break;
    }
  }

  return i;
}

unint64_t sub_220C352D8()
{
  result = qword_2812D0F68;
  if (!qword_2812D0F68)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2812D0F68);
  }

  return result;
}

unint64_t sub_220C3531C()
{
  result = qword_2812D0F60;
  if (!qword_2812D0F60)
  {
    sub_220C352D8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812D0F60);
  }

  return result;
}

uint64_t sub_220C35374(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v9 = v8;
  v18 = OBJC_IVAR____TtC16WeatherAnalytics24WidgetSessionCoordinator_sessionKind;
  v26 = sub_220CA0434();
  v28 = *(v26 - 8);
  (*(v28 + 16))(v9 + v18, a1, v26);
  *(v9 + OBJC_IVAR____TtC16WeatherAnalytics24WidgetSessionCoordinator_sessionManager) = a2;

  *(v9 + 16) = sub_220CA0104();
  *(v9 + OBJC_IVAR____TtC16WeatherAnalytics24WidgetSessionCoordinator_client) = a3;
  sub_220BF92A0(a4, v9 + OBJC_IVAR____TtC16WeatherAnalytics24WidgetSessionCoordinator_identityService);
  sub_220BF92A0(a5, v9 + OBJC_IVAR____TtC16WeatherAnalytics24WidgetSessionCoordinator_cellularRadioAccessTechnologyProvider);
  sub_220BF92A0(a6, v9 + OBJC_IVAR____TtC16WeatherAnalytics24WidgetSessionCoordinator_locationAccessDataProvider);
  sub_220BF92A0(a7, v9 + OBJC_IVAR____TtC16WeatherAnalytics24WidgetSessionCoordinator_appConfigurationManager);
  sub_220BF92A0(a8, v9 + OBJC_IVAR____TtC16WeatherAnalytics24WidgetSessionCoordinator_privacySampler);
  v23 = a3;
  sub_220C3682C();
  sub_220C35E5C();
  v19 = *(v9 + OBJC_IVAR____TtC16WeatherAnalytics24WidgetSessionCoordinator_sessionManager);
  sub_220CA0094();
  sub_220C36A64();
  sub_220C36E18();
  sub_220C37778();
  v20 = a4[4];
  __swift_project_boxed_opaque_existential_1(a4, a4[3]);
  sub_220C393B8(&qword_2812CF608, type metadata accessor for WidgetSessionCoordinator);

  sub_220C9FC24();

  v21 = a7[4];
  __swift_project_boxed_opaque_existential_1(a7, a7[3]);
  sub_220C393B8(&qword_2812CF600, type metadata accessor for WidgetSessionCoordinator);

  sub_220C9FDA4();

  __swift_destroy_boxed_opaque_existential_1(a8);
  __swift_destroy_boxed_opaque_existential_1(a6);
  __swift_destroy_boxed_opaque_existential_1(a5);
  (*(v28 + 8))(a1, v26);
  __swift_destroy_boxed_opaque_existential_1(a7);
  __swift_destroy_boxed_opaque_existential_1(a4);
  return v9;
}

uint64_t WidgetSessionCoordinator.deinit()
{
  v1 = *(v0 + 16);

  v2 = OBJC_IVAR____TtC16WeatherAnalytics24WidgetSessionCoordinator_sessionKind;
  v3 = sub_220CA0434();
  OUTLINED_FUNCTION_0_2(v3);
  (*(v4 + 8))(v0 + v2);
  v5 = *(v0 + OBJC_IVAR____TtC16WeatherAnalytics24WidgetSessionCoordinator_sessionManager);

  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC16WeatherAnalytics24WidgetSessionCoordinator_identityService));
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC16WeatherAnalytics24WidgetSessionCoordinator_cellularRadioAccessTechnologyProvider));
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC16WeatherAnalytics24WidgetSessionCoordinator_locationAccessDataProvider));
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC16WeatherAnalytics24WidgetSessionCoordinator_appConfigurationManager));
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC16WeatherAnalytics24WidgetSessionCoordinator_privacySampler));
  return v0;
}

uint64_t WidgetSessionCoordinator.__deallocating_deinit()
{
  WidgetSessionCoordinator.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

Swift::Void __swiftcall WidgetSessionCoordinator.startSession()()
{
  v1 = v0;
  v2 = sub_220C9F7D4();
  v3 = OUTLINED_FUNCTION_3(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_220C9F804();
  v10 = OUTLINED_FUNCTION_3(v32);
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v10);
  v16 = &v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2812D1768 != -1)
  {
    swift_once();
  }

  v17 = sub_220CA0A84();
  __swift_project_value_buffer(v17, qword_2812D1770);

  v18 = sub_220CA0A64();
  v19 = sub_220CA0DA4();

  v20 = &unk_2812CF000;
  if (os_log_type_enabled(v18, v19))
  {
    v21 = swift_slowAlloc();
    v31 = v2;
    v22 = v21;
    v23 = swift_slowAlloc();
    v30 = v5;
    v24 = v23;
    v33 = v23;
    *v22 = 136315138;
    sub_220CA0434();
    sub_220C393B8(&qword_27CF7BDB0, MEMORY[0x277CEAE80]);
    v25 = sub_220CA1134();
    v27 = sub_220BFC484(v25, v26, &v33);

    *(v22 + 4) = v27;
    v20 = &unk_2812CF000;
    _os_log_impl(&dword_220BF4000, v18, v19, "Starting session of kind: %s", v22, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v24);
    v5 = v30;
    OUTLINED_FUNCTION_8();
    v2 = v31;
    OUTLINED_FUNCTION_8();
  }

  v28 = *(v1 + OBJC_IVAR____TtC16WeatherAnalytics24WidgetSessionCoordinator_sessionManager);
  v29 = v20[200];
  sub_220C9F7F4();
  sub_220C9F7E4();
  (*(v12 + 8))(v16, v32);
  sub_220C9F7C4();
  sub_220CA00C4();

  (*(v5 + 8))(v9, v2);
}

uint64_t sub_220C35A9C()
{
  OUTLINED_FUNCTION_1_3();
  v1 = *(*(v0 + 16) + OBJC_IVAR____TtC16WeatherAnalytics24WidgetSessionCoordinator_sessionManager);
  v2 = swift_task_alloc();
  *(v0 + 24) = v2;
  *v2 = v0;
  v2[1] = sub_220C35B34;

  return sub_220C35C80();
}

uint64_t sub_220C35B34()
{
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_3_2();
  v2 = *(v1 + 24);
  v3 = *v0;
  OUTLINED_FUNCTION_0_1();
  *v4 = v3;

  return MEMORY[0x2822009F8](sub_220C35C20, 0, 0);
}

uint64_t sub_220C35C20()
{
  OUTLINED_FUNCTION_1_3();
  v1 = *(v0 + 16);
  WidgetSessionCoordinator.startSession()();
  sub_220C35E5C();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_220C35C94()
{
  OUTLINED_FUNCTION_1_3();
  v1 = *(MEMORY[0x277D859E0] + 4);
  v2 = swift_task_alloc();
  *(v0 + 24) = v2;
  *v2 = v0;
  v2[1] = sub_220C35D5C;
  v3 = *(v0 + 16);

  return MEMORY[0x2822007B8]();
}

uint64_t sub_220C35D5C()
{
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_3_2();
  v2 = *(v1 + 24);
  v3 = *v0;
  OUTLINED_FUNCTION_0_1();
  *v4 = v3;

  return MEMORY[0x2822009F8](sub_220C35E48, 0, 0);
}

uint64_t sub_220C35E5C()
{
  v0 = sub_220C9FB84();
  v71 = *(v0 - 8);
  v72 = v0;
  v1 = *(v71 + 64);
  MEMORY[0x28223BE20](v0);
  v70 = &v64 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7BE00, &qword_220CA5D08);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v69 = &v64 - v5;
  v68 = sub_220C9F884();
  v74 = *(v68 - 8);
  v6 = *(v74 + 64);
  v7 = MEMORY[0x28223BE20](v68);
  v67 = &v64 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = &v64 - v9;
  v66 = sub_220C9F8A4();
  v76 = *(v66 - 8);
  v11 = *(v76 + 64);
  v12 = MEMORY[0x28223BE20](v66);
  v65 = &v64 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = &v64 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7BE08, &qword_220CA5D10);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v19 = &v64 - v18;
  v20 = sub_220C9F7D4();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20);
  v24 = &v64 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_220C9F954();
  v26 = *(v25 - 8);
  v27 = *(v26 + 64);
  MEMORY[0x28223BE20](v25);
  v29 = &v64 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_220C9F944();
  sub_220C9F7C4();
  v30 = sub_220C9F934();
  (*(v21 + 8))(v24, v20);
  result = (*(v26 + 8))(v29, v25);
  if (v30 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (v30 > 0x7FFFFFFF)
  {
LABEL_11:
    __break(1u);
    return result;
  }

  v75 = v30;
  sub_220C9F854();
  sub_220C9F894();
  v32 = *(v76 + 8);
  v33 = v66;
  v76 += 8;
  v32(v15, v66);
  sub_220C9F864();
  v34 = *(v74 + 8);
  v35 = v68;
  v34(v10, v68);
  v36 = sub_220C9F824();
  if (__swift_getEnumTagSinglePayload(v19, 1, v36) == 1)
  {
    sub_220C2CB7C(v19, &qword_27CF7BE08, &qword_220CA5D10);
    v64 = 0xE100000000000000;
    v74 = 45;
  }

  else
  {
    v74 = sub_220C9F814();
    v64 = v37;
    (*(*(v36 - 8) + 8))(v19, v36);
  }

  v38 = v69;
  v39 = v65;
  sub_220C9F854();
  v40 = v67;
  sub_220C9F894();
  v32(v39, v33);
  sub_220C9F874();
  v34(v40, v35);
  v41 = sub_220C9F844();
  if (__swift_getEnumTagSinglePayload(v38, 1, v41) == 1)
  {
    sub_220C2CB7C(v38, &qword_27CF7BE00, &qword_220CA5D08);
    v76 = 0xE100000000000000;
    v69 = 45;
  }

  else
  {
    v69 = sub_220C9F814();
    v76 = v42;
    (*(*(v41 - 8) + 8))(v38, v41);
  }

  v68 = 0x8000000220CB5220;
  v43 = v73;
  v44 = *(v73 + OBJC_IVAR____TtC16WeatherAnalytics24WidgetSessionCoordinator_cellularRadioAccessTechnologyProvider + 24);
  v45 = *(v73 + OBJC_IVAR____TtC16WeatherAnalytics24WidgetSessionCoordinator_cellularRadioAccessTechnologyProvider + 32);
  __swift_project_boxed_opaque_existential_1((v73 + OBJC_IVAR____TtC16WeatherAnalytics24WidgetSessionCoordinator_cellularRadioAccessTechnologyProvider), v44);
  (*(v45 + 8))(&v77 + 1, v44, v45);
  LODWORD(v67) = BYTE1(v77);
  v46 = *(v43 + OBJC_IVAR____TtC16WeatherAnalytics24WidgetSessionCoordinator_locationAccessDataProvider + 24);
  v47 = *(v43 + OBJC_IVAR____TtC16WeatherAnalytics24WidgetSessionCoordinator_locationAccessDataProvider + 32);
  __swift_project_boxed_opaque_existential_1((v43 + OBJC_IVAR____TtC16WeatherAnalytics24WidgetSessionCoordinator_locationAccessDataProvider), v46);
  (*(v47 + 8))(&v77, v46, v47);
  LODWORD(v66) = v77;
  v48 = (v43 + OBJC_IVAR____TtC16WeatherAnalytics24WidgetSessionCoordinator_appConfigurationManager);
  v49 = *(v43 + OBJC_IVAR____TtC16WeatherAnalytics24WidgetSessionCoordinator_appConfigurationManager + 32);
  __swift_project_boxed_opaque_existential_1((v43 + OBJC_IVAR____TtC16WeatherAnalytics24WidgetSessionCoordinator_appConfigurationManager), *(v43 + OBJC_IVAR____TtC16WeatherAnalytics24WidgetSessionCoordinator_appConfigurationManager + 24));
  v50 = v70;
  sub_220C9FD94();
  v65 = sub_220C9FB34();
  v51 = v72;
  v52 = *(v71 + 8);
  v52(v50, v72);
  v53 = v48[4];
  __swift_project_boxed_opaque_existential_1(v48, v48[3]);
  sub_220C9FD94();
  v71 = sub_220C9FB44();
  v52(v50, v51);
  v73 = *(v43 + OBJC_IVAR____TtC16WeatherAnalytics24WidgetSessionCoordinator_sessionManager);
  sub_220CA0104();
  v54 = swift_allocObject();
  v55 = v74;
  *(v54 + 16) = v75;
  v57 = v64;
  v56 = v65;
  *(v54 + 24) = v55;
  *(v54 + 32) = v57;
  v58 = v68;
  v59 = v69;
  v60 = v76;
  *(v54 + 40) = v69;
  *(v54 + 48) = v60;
  *(v54 + 56) = 0;
  *(v54 + 64) = 0xD000000000000018;
  *(v54 + 72) = v58;
  LOBYTE(v48) = v66;
  *(v54 + 80) = v66;
  LOBYTE(v46) = v67;
  *(v54 + 81) = v67;
  v61 = v71;
  *(v54 + 88) = v56;
  *(v54 + 96) = v61;

  sub_220CA0444();

  v62 = swift_allocObject();
  v63 = v74;
  *(v62 + 16) = v75;
  *(v62 + 24) = v63;
  *(v62 + 32) = v57;
  *(v62 + 40) = v59;
  *(v62 + 48) = v60;
  *(v62 + 56) = 0;
  *(v62 + 64) = 0xD000000000000018;
  *(v62 + 72) = v58;
  *(v62 + 80) = v48;
  *(v62 + 81) = v46;
  *(v62 + 88) = v56;
  *(v62 + 96) = v61;
  sub_220CA0094();
}

uint64_t sub_220C366B8()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_220C36748;

  return WidgetSessionCoordinator.restartSession()();
}

uint64_t sub_220C36748()
{
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_3_2();
  v2 = *(v1 + 16);
  v3 = *v0;
  OUTLINED_FUNCTION_0_1();
  *v4 = v3;

  v5 = *(v3 + 8);

  return v5();
}

uint64_t sub_220C3682C()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7BDE0, &qword_220CA5CE0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v20 - v5;
  v7 = *(v0 + OBJC_IVAR____TtC16WeatherAnalytics24WidgetSessionCoordinator_client);
  v8 = sub_220CA0414();
  v10 = v9;
  v11 = sub_220CA03F4();
  v20[0] = v8;
  v20[1] = v10;
  v20[2] = v11;
  v20[3] = v12;
  sub_220C38E3C();
  sub_220C9FF04();
  v13 = *(v1 + OBJC_IVAR____TtC16WeatherAnalytics24WidgetSessionCoordinator_sessionManager);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7BDD0, &qword_220CA5CD0);
  v14 = sub_220CA0054();
  v15 = *(v14 - 8);
  v16 = *(v15 + 72);
  v17 = (*(v15 + 80) + 32) & ~*(v15 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_220CA4A70;
  (*(v15 + 104))(v18 + v17, *MEMORY[0x277CEAD10], v14);
  sub_220CA00B4();

  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_220C36A64()
{
  v1 = v0;
  v2 = *v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7BDC0, &qword_220CA5CC8);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v24 - v6;
  v8 = sub_220C9F704();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2812D1700 != -1)
  {
    swift_once();
  }

  sub_220C393B8(&qword_2812CF5F8, type metadata accessor for WidgetSessionCoordinator);
  sub_220C9F994();
  sub_220C9F6F4();
  sub_220C38D40();
  v13 = sub_220CA0EF4();
  v15 = v14;
  (*(v9 + 8))(v12, v8);

  v16 = HIBYTE(v15) & 0xF;
  if ((v15 & 0x2000000000000000) == 0)
  {
    v16 = v13 & 0xFFFFFFFFFFFFLL;
  }

  if (!v16)
  {
  }

  v24[0] = v13;
  v24[1] = v15;
  sub_220C38D94();
  sub_220C9FF04();
  v17 = *(v1 + OBJC_IVAR____TtC16WeatherAnalytics24WidgetSessionCoordinator_sessionManager);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7BDD0, &qword_220CA5CD0);
  v18 = sub_220CA0054();
  v19 = *(v18 - 8);
  v20 = *(v19 + 72);
  v21 = (*(v19 + 80) + 32) & ~*(v19 + 80);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_220CA4A70;
  (*(v19 + 104))(v22 + v21, *MEMORY[0x277CEAD10], v18);
  sub_220CA00B4();

  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_220C36E18()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7BDE8, &unk_220CA5CE8);
  v69 = *(v0 - 8);
  v70 = v0;
  v1 = *(v69 + 64);
  MEMORY[0x28223BE20](v0);
  v68 = &v62 - v2;
  v3 = sub_220C9F8B4();
  v79 = *(v3 - 8);
  v80 = v3;
  v4 = *(v79 + 64);
  MEMORY[0x28223BE20](v3);
  v78 = &v62 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7BC30, &qword_220CA4AE0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v77 = &v62 - v8;
  v81 = sub_220C9F7D4();
  v84 = *(v81 - 8);
  v9 = *(v84 + 64);
  v10 = MEMORY[0x28223BE20](v81);
  v71 = &v62 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v75 = &v62 - v12;
  v82 = sub_220C9FB04();
  v13 = *(v82 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v82);
  v16 = &v62 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v76 = sub_220C9F924();
  v74 = *(v76 - 8);
  v17 = *(v74 + 8);
  MEMORY[0x28223BE20](v76);
  v19 = &v62 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_220C9F724();
  v72 = *(v20 - 8);
  v73 = v20;
  v21 = *(v72 + 64);
  MEMORY[0x28223BE20](v20);
  v23 = &v62 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_220C9F8F4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7BDF0, &qword_220CA5CF8);
  v24 = sub_220C9F904();
  v25 = *(v24 - 8);
  v26 = *(v25 + 72);
  v27 = (*(v25 + 80) + 32) & ~*(v25 + 80);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_220CA4A60;
  v29 = v28 + v27;
  v30 = *(v25 + 104);
  v30(v29, *MEMORY[0x277CC9988], v24);
  v30(v29 + v26, *MEMORY[0x277CC9998], v24);
  sub_220C38E90(v28);
  v31 = *(v83 + OBJC_IVAR____TtC16WeatherAnalytics24WidgetSessionCoordinator_identityService + 24);
  v32 = *(v83 + OBJC_IVAR____TtC16WeatherAnalytics24WidgetSessionCoordinator_identityService + 32);
  v64 = (v83 + OBJC_IVAR____TtC16WeatherAnalytics24WidgetSessionCoordinator_identityService);
  __swift_project_boxed_opaque_existential_1((v83 + OBJC_IVAR____TtC16WeatherAnalytics24WidgetSessionCoordinator_identityService), v31);
  sub_220C9FC34();
  v33 = v75;
  sub_220C9FAF4();
  v34 = *(v13 + 8);
  v66 = v16;
  v67 = v13 + 8;
  v63 = v34;
  v34(v16, v82);
  sub_220C9F8D4();
  v35 = v77;

  v36 = *(v84 + 8);
  v37 = v33;
  v38 = v81;
  v75 = (v84 + 8);
  v65 = v36;
  v36(v37, v81);
  v39 = *(v74 + 1);
  v40 = v76;
  v39(v19, v76);
  sub_220C9F714();
  v42 = v78;
  v41 = v79;
  v43 = v80;
  (*(v79 + 104))(v78, *MEMORY[0x277CC9830], v80);
  sub_220C9F8C4();
  (*(v41 + 8))(v42, v43);
  v80 = v23;
  sub_220C9F8E4();
  v39(v19, v40);
  if (__swift_getEnumTagSinglePayload(v35, 1, v38) == 1)
  {
    (*(v72 + 8))(v80, v73);
    return sub_220C2CB7C(v35, &qword_27CF7BC30, &qword_220CA4AE0);
  }

  (*(v84 + 32))(v71, v35, v38);
  result = sub_220C9F794();
  v46 = v45 * 1000.0;
  if ((*&v46 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v46 <= -9.22337204e18)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (v46 >= 9.22337204e18)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  v47 = v46;
  v79 = v46;
  v48 = v64[4];
  __swift_project_boxed_opaque_existential_1(v64, v64[3]);
  v49 = v66;
  sub_220C9FC34();
  v50 = sub_220C9FAD4();
  v77 = v51;
  v78 = v50;
  v52 = v51;
  v63(v49, v82);
  v84 = *(v83 + OBJC_IVAR____TtC16WeatherAnalytics24WidgetSessionCoordinator_sessionManager);
  v82 = sub_220CA0104();
  v85 = v50;
  v86 = v52;
  v87 = v47;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7BDD0, &qword_220CA5CD0);
  v53 = sub_220CA0054();
  v54 = *(v53 - 8);
  v55 = *(v54 + 72);
  v56 = (*(v54 + 80) + 32) & ~*(v54 + 80);
  v57 = swift_allocObject();
  v76 = xmmword_220CA4A70;
  *(v57 + 16) = xmmword_220CA4A70;
  v58 = *MEMORY[0x277CEAD10];
  v59 = *(v54 + 104);
  v59(v57 + v56, v58, v53);
  v74 = "Manager";
  sub_220C391D4();
  sub_220CA0454();

  v85 = v78;
  v86 = v77;
  v87 = v79;
  v60 = v68;
  sub_220C9FF04();
  v61 = swift_allocObject();
  *(v61 + 16) = v76;
  v59(v61 + v56, v58, v53);
  sub_220CA00B4();

  (*(v69 + 8))(v60, v70);
  v65(v71, v81);
  return (*(v72 + 8))(v80, v73);
}

uint64_t sub_220C37778()
{
  v1 = v0;
  v2 = sub_220C9FB04();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v0 + OBJC_IVAR____TtC16WeatherAnalytics24WidgetSessionCoordinator_sessionManager);
  sub_220CA0104();
  v8 = *(v1 + OBJC_IVAR____TtC16WeatherAnalytics24WidgetSessionCoordinator_identityService + 32);
  __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC16WeatherAnalytics24WidgetSessionCoordinator_identityService), *(v1 + OBJC_IVAR____TtC16WeatherAnalytics24WidgetSessionCoordinator_identityService + 24));
  sub_220C9FC34();
  v9 = sub_220C9FAE4();
  v11 = v10;
  (*(v3 + 8))(v6, v2);
  v12 = *(v1 + OBJC_IVAR____TtC16WeatherAnalytics24WidgetSessionCoordinator_privacySampler + 32);
  __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC16WeatherAnalytics24WidgetSessionCoordinator_privacySampler), *(v1 + OBJC_IVAR____TtC16WeatherAnalytics24WidgetSessionCoordinator_privacySampler + 24));
  result = sub_220C9FBD4();
  if (v14)
  {
    v15 = 0;
  }

  else
  {
    v15 = result;
  }

  if (v15 < 0xFFFFFFFF80000000)
  {
    __break(1u);
  }

  else if (v15 <= 0x7FFFFFFF)
  {
    v21[1] = v9;
    v21[2] = v11;
    v22 = v15;
    v23 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7BDD0, &qword_220CA5CD0);
    v16 = sub_220CA0054();
    v17 = *(v16 - 8);
    v18 = *(v17 + 72);
    v19 = (*(v17 + 80) + 32) & ~*(v17 + 80);
    v20 = swift_allocObject();
    *(v20 + 16) = xmmword_220CA4A70;
    (*(v17 + 104))(v20 + v19, *MEMORY[0x277CEAD10], v16);
    sub_220C39228();
    sub_220CA0454();
  }

  __break(1u);
  return result;
}

uint64_t sub_220C37A00(uint64_t a1)
{
  v24[1] = a1;
  v35 = *MEMORY[0x277D85DE8];
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7BDD8, &qword_220CA5CD8);
  v24[0] = *(v25 - 8);
  v1 = *(v24[0] + 64);
  MEMORY[0x28223BE20](v25);
  v3 = v24 - v2;
  if (qword_2812D1668 != -1)
  {
    swift_once();
  }

  v4 = qword_2812D1670;
  v5 = *algn_2812D1678;
  v6 = qword_2812D1680;
  v7 = unk_2812D1688;
  v8 = qword_2812D1690;
  v9 = unk_2812D1698;
  v10 = qword_2812D1670 == 5459817 && *algn_2812D1678 == 0xE300000000000000;
  v11 = 1;
  if (!v10 && (sub_220CA1154() & 1) == 0)
  {
    v11 = 3;
    if (v4 != 0x534F63616DLL || v5 != 0xE500000000000000)
    {
      if (sub_220CA1154())
      {
        v11 = 3;
      }

      else
      {
        v11 = 0;
      }
    }
  }

  bzero(&v26, 0x500uLL);
  uname(&v26);
  v13 = sub_220CA0C74();
  v15 = v14;
  sub_220CA05E4();
  if (sub_220CA05D4())
  {
    v16 = 1;
  }

  else
  {
    v16 = 2;
  }

  v27 = v13;
  v28 = v15;
  v29 = v11;
  v30 = v16;
  v31 = v6;
  v32 = v7;
  v33 = v8;
  v34 = v9;
  sub_220C38DE8();

  sub_220C9FF04();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7BDD0, &qword_220CA5CD0);
  v17 = sub_220CA0054();
  v18 = *(v17 - 8);
  v19 = *(v18 + 72);
  v20 = (*(v18 + 80) + 32) & ~*(v18 + 80);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_220CA4A70;
  (*(v18 + 104))(v21 + v20, *MEMORY[0x277CEAD10], v17);
  sub_220CA01A4();

  result = (*(v24[0] + 8))(v3, v25);
  v23 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_220C37D68(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8, uint64_t a9, char a10, char a11, uint64_t a12, uint64_t a13)
{
  v33 = a3;
  v34 = a5;
  HIDWORD(v32) = a2;
  v38 = a1;
  v36 = a8;
  v37 = a13;
  v35 = a12;
  v18 = type metadata accessor for SessionData();
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18);
  v21 = &v32 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_220C9FFB4())
  {
    v22 = a7;
  }

  else
  {
    a11 = 4;
    a10 = 5;
    v22 = 6;
  }

  v21[40] = 6;
  *(v21 + 32) = 1029;
  v23 = *(v18 + 44);
  v39 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7BE18, &qword_220CA5D20);
  sub_220CA02B4();
  v24 = *(v18 + 48);
  v39 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7BE20, &qword_220CA5D28);
  sub_220CA02B4();
  *v21 = HIDWORD(v32);
  v25 = v34;
  *(v21 + 1) = v33;
  *(v21 + 2) = a4;
  *(v21 + 3) = v25;
  *(v21 + 4) = a6;
  v21[40] = v22;
  *(v21 + 6) = v36;
  *(v21 + 7) = a9;
  v21[64] = a10;
  v21[65] = a11;
  v39 = v35;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7BE28, &qword_220CA5D30);
  sub_220CA02E4();
  v39 = v37;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7BE30, &qword_220CA5D38);
  sub_220CA02E4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7BDD0, &qword_220CA5CD0);
  v26 = sub_220CA0054();
  v27 = *(v26 - 8);
  v28 = *(v27 + 72);
  v29 = (*(v27 + 80) + 32) & ~*(v27 + 80);
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_220CA4A70;
  (*(v27 + 104))(v30 + v29, *MEMORY[0x277CEAD10], v26);
  sub_220C393B8(&qword_2812D1648, type metadata accessor for SessionData);
  sub_220C9FFC4();

  return sub_220C39400(v21);
}

uint64_t sub_220C38084(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8, uint64_t a9, char a10, char a11, uint64_t a12, uint64_t a13)
{
  v40 = a2;
  v48 = a1;
  v45 = a8;
  v46 = a13;
  v43 = a5;
  v44 = a12;
  v41 = a3;
  v42 = a9;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7BE10, &qword_220CA5D18);
  v49 = *(v18 - 8);
  v50 = v18;
  v19 = *(v49 + 64);
  MEMORY[0x28223BE20](v18);
  v47 = &v39[-v20];
  v21 = type metadata accessor for SessionData();
  v22 = *(*(v21 - 8) + 64);
  v23 = MEMORY[0x28223BE20](v21);
  v25 = &v39[-((v24 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v23);
  v27 = &v39[-v26];
  if (sub_220CA0194())
  {
    v28 = a7;
  }

  else
  {
    a11 = 4;
    a10 = 5;
    v28 = 6;
  }

  v27[40] = 6;
  *(v27 + 32) = 1029;
  v29 = *(v21 + 44);
  v51 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7BE18, &qword_220CA5D20);
  sub_220CA02B4();
  v30 = *(v21 + 48);
  v51 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7BE20, &qword_220CA5D28);
  sub_220CA02B4();
  *v27 = v40;
  *(v27 + 1) = v41;
  *(v27 + 2) = a4;
  *(v27 + 3) = v43;
  *(v27 + 4) = a6;
  v27[40] = v28;
  v31 = v42;
  *(v27 + 6) = v45;
  *(v27 + 7) = v31;
  v27[64] = a10;
  v27[65] = a11;
  v51 = v44;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7BE28, &qword_220CA5D30);
  sub_220CA02E4();
  v51 = v46;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7BE30, &qword_220CA5D38);
  sub_220CA02E4();
  sub_220C39354(v27, v25);
  sub_220C393B8(&qword_2812D1648, type metadata accessor for SessionData);
  v32 = v47;
  sub_220C9FF04();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7BDD0, &qword_220CA5CD0);
  v33 = sub_220CA0054();
  v34 = *(v33 - 8);
  v35 = *(v34 + 72);
  v36 = (*(v34 + 80) + 32) & ~*(v34 + 80);
  v37 = swift_allocObject();
  *(v37 + 16) = xmmword_220CA4A70;
  (*(v34 + 104))(v37 + v36, *MEMORY[0x277CEAD10], v33);
  sub_220CA01A4();

  (*(v49 + 8))(v32, v50);
  return sub_220C39400(v27);
}

uint64_t WidgetSessionCoordinator.identityService(_:didChangeUserIdentity:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = sub_220CA0A84();
  v6 = OUTLINED_FUNCTION_3(v5);
  v42 = v7;
  v43 = v6;
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v6);
  v40 = v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = v39 - v12;
  v14 = sub_220C9FD34();
  v15 = OUTLINED_FUNCTION_3(v14);
  v17 = v16;
  v19 = *(v18 + 64);
  v20 = MEMORY[0x28223BE20](v15);
  v22 = v39 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v24 = v39 - v23;
  v41 = a2;
  sub_220C9FC04();
  sub_220C9FD14();
  sub_220C393B8(&qword_27CF7BDB8, MEMORY[0x277D7AB28]);
  v25 = OUTLINED_FUNCTION_6_4();
  v26 = *(v17 + 8);
  v26(v22, v14);
  v26(v24, v14);
  if (v25)
  {
    sub_220CA0A54();
    v27 = sub_220CA0A64();
    v28 = sub_220CA0DA4();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v39[1] = v3;
      *v29 = 0;
      OUTLINED_FUNCTION_7_3(&dword_220BF4000, v30, v31, "Received a user identity change ... pushing new identifier onto trackers");
      OUTLINED_FUNCTION_8();
    }

    (*(v42 + 8))(v13, v43);
    sub_220C36E18();
  }

  sub_220C9FC04();
  sub_220C9FD24();
  v32 = OUTLINED_FUNCTION_6_4();
  v26(v22, v14);
  result = (v26)(v24, v14);
  if (v32)
  {
    v34 = v40;
    sub_220CA0A54();
    v35 = sub_220CA0A64();
    v36 = sub_220CA0DA4();
    if (os_log_type_enabled(v35, v36))
    {
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_7_3(&dword_220BF4000, v37, v38, "Received a private user identity change ... pushing new identifier onto trackers");
      OUTLINED_FUNCTION_8();
    }

    (*(v42 + 8))(v34, v43);
    return sub_220C37778();
  }

  return result;
}

uint64_t WidgetSessionCoordinator.appConfigurationDidRefresh(_:)()
{
  swift_allocObject();
  swift_weakInit();

  sub_220CA0754();
}

uint64_t sub_220C3885C()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_220C35E5C();
  }

  return result;
}

uint64_t sub_220C388B8(uint64_t a1)
{
  v2 = sub_220C9F7D4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7BE38, &unk_220CA5D40);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v15 - v10;
  (*(v8 + 16))(&v15 - v10, a1, v7);
  v12 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v13 = swift_allocObject();
  (*(v8 + 32))(v13 + v12, v11, v7);
  sub_220C9F7C4();
  sub_220CA00A4();

  return (*(v3 + 8))(v6, v2);
}

uint64_t dispatch thunk of WidgetSessionCoordinatorType.restartSession()(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 16);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_220C36748;

  return v9(a1, a2);
}

uint64_t type metadata accessor for WidgetSessionCoordinator()
{
  result = qword_2812CF5E8;
  if (!qword_2812CF5E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_220C38C68()
{
  result = sub_220CA0434();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

unint64_t sub_220C38D40()
{
  result = qword_2812D0F88;
  if (!qword_2812D0F88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812D0F88);
  }

  return result;
}

unint64_t sub_220C38D94()
{
  result = qword_27CF7BDC8;
  if (!qword_27CF7BDC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7BDC8);
  }

  return result;
}

unint64_t sub_220C38DE8()
{
  result = qword_2812D16B0;
  if (!qword_2812D16B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812D16B0);
  }

  return result;
}

unint64_t sub_220C38E3C()
{
  result = qword_2812D1008;
  if (!qword_2812D1008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812D1008);
  }

  return result;
}

uint64_t sub_220C38E90(uint64_t a1)
{
  v2 = sub_220C9F904();
  v34 = *(v2 - 8);
  v3 = *(v34 + 64);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v38 = &v29 - v7;
  if (!*(a1 + 16))
  {
    v9 = MEMORY[0x277D84FA0];
    goto LABEL_15;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7BDF8, &qword_220CA5D00);
  result = sub_220CA0F34();
  v9 = result;
  v33 = *(a1 + 16);
  if (!v33)
  {
LABEL_15:

    return v9;
  }

  v10 = 0;
  v37 = result + 56;
  v11 = *(v34 + 80);
  v31 = a1;
  v32 = a1 + ((v11 + 32) & ~v11);
  v36 = v34 + 16;
  v12 = (v34 + 8);
  v30 = (v34 + 32);
  while (v10 < *(a1 + 16))
  {
    v13 = *(v34 + 72);
    v35 = v10 + 1;
    v14 = *(v34 + 16);
    v14(v38, v32 + v13 * v10, v2);
    v15 = *(v9 + 40);
    sub_220C393B8(&qword_2812D1738, MEMORY[0x277CC99D0]);
    v16 = sub_220CA0BE4();
    v17 = ~(-1 << *(v9 + 32));
    while (1)
    {
      v18 = v16 & v17;
      v19 = (v16 & v17) >> 6;
      v20 = *(v37 + 8 * v19);
      v21 = 1 << (v16 & v17);
      if ((v21 & v20) == 0)
      {
        break;
      }

      v22 = v9;
      v14(v6, *(v9 + 48) + v18 * v13, v2);
      sub_220C393B8(&qword_2812D1730, MEMORY[0x277CC99D0]);
      v23 = sub_220CA0C04();
      v24 = *v12;
      (*v12)(v6, v2);
      if (v23)
      {
        result = (v24)(v38, v2);
        v9 = v22;
        goto LABEL_12;
      }

      v16 = v18 + 1;
      v9 = v22;
    }

    v25 = v38;
    *(v37 + 8 * v19) = v21 | v20;
    result = (*v30)(*(v9 + 48) + v18 * v13, v25, v2);
    v26 = *(v9 + 16);
    v27 = __OFADD__(v26, 1);
    v28 = v26 + 1;
    if (v27)
    {
      goto LABEL_17;
    }

    *(v9 + 16) = v28;
LABEL_12:
    v10 = v35;
    a1 = v31;
    if (v35 == v33)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_17:
  __break(1u);
  return result;
}

unint64_t sub_220C391D4()
{
  result = qword_2812D0FD8;
  if (!qword_2812D0FD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812D0FD8);
  }

  return result;
}

unint64_t sub_220C39228()
{
  result = qword_2812D1560;
  if (!qword_2812D1560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812D1560);
  }

  return result;
}

uint64_t objectdestroy_7Tm()
{
  v1 = v0[4];

  v2 = v0[6];

  v3 = v0[9];

  v4 = v0[11];

  v5 = v0[12];

  return MEMORY[0x2821FE8E8](v0, 104, 7);
}

uint64_t sub_220C39354(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SessionData();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_220C393B8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_220C39400(uint64_t a1)
{
  v2 = type metadata accessor for SessionData();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_220C39464()
{
  v0 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7BE38, &unk_220CA5D40) - 8) + 80);

  return sub_220C38AA4();
}

uint64_t ViewData.viewSessionID.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t ViewData.viewSessionID.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t sub_220C395E8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7373655377656976 && a2 == 0xED000044496E6F69;
  if (v4 || (sub_220CA1154() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6570795477656976 && a2 == 0xE800000000000000;
    if (v6 || (sub_220CA1154() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x6974634177656976 && a2 == 0xEA00000000006E6FLL)
    {

      return 2;
    }

    else
    {
      v8 = sub_220CA1154();

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

uint64_t sub_220C39708(char a1)
{
  if (!a1)
  {
    return 0x7373655377656976;
  }

  if (a1 == 1)
  {
    return 0x6570795477656976;
  }

  return 0x6974634177656976;
}

uint64_t sub_220C39778@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_220C395E8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_220C397A0(uint64_t a1)
{
  v2 = sub_220C399E0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_220C397DC(uint64_t a1)
{
  v2 = sub_220C399E0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ViewData.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7BE40, &qword_220CA5D50);
  v5 = OUTLINED_FUNCTION_3(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
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
  sub_220C399E0();
  sub_220CA1254();
  v29 = 0;
  sub_220CA10C4();
  if (!v2)
  {
    v20 = v23;
    v28 = v24;
    v27 = 1;
    sub_220C39A34();
    sub_220CA1104();
    v26 = v20;
    v25 = 2;
    sub_220C39A88();
    sub_220CA1104();
  }

  return (*(v7 + 8))(v11, v19);
}

unint64_t sub_220C399E0()
{
  result = qword_2812CE820;
  if (!qword_2812CE820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812CE820);
  }

  return result;
}

unint64_t sub_220C39A34()
{
  result = qword_2812CE7F8;
  if (!qword_2812CE7F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812CE7F8);
  }

  return result;
}

unint64_t sub_220C39A88()
{
  result = qword_2812D0840;
  if (!qword_2812D0840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812D0840);
  }

  return result;
}

uint64_t ViewData.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7BE48, &qword_220CA5D58);
  v6 = OUTLINED_FUNCTION_3(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220C399E0();
  sub_220CA1234();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v10 = sub_220CA0FF4();
  v12 = v11;
  sub_220C39CDC();
  OUTLINED_FUNCTION_2_5();
  sub_220C39D30();
  OUTLINED_FUNCTION_2_5();
  v14 = OUTLINED_FUNCTION_0_10();
  v15(v14);
  *a2 = v10;
  *(a2 + 8) = v12;
  *(a2 + 16) = v17;
  *(a2 + 17) = v16;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_220C39CDC()
{
  result = qword_27CF7BE50;
  if (!qword_27CF7BE50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7BE50);
  }

  return result;
}

unint64_t sub_220C39D30()
{
  result = qword_27CF7BE58;
  if (!qword_27CF7BE58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7BE58);
  }

  return result;
}

uint64_t sub_220C39DB4(uint64_t a1, int a2)
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

uint64_t sub_220C39DF4(uint64_t result, int a2, int a3)
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

_BYTE *storeEnumTagSinglePayload for ViewData.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_220C39F14()
{
  result = qword_27CF7BE60;
  if (!qword_27CF7BE60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7BE60);
  }

  return result;
}

unint64_t sub_220C39F6C()
{
  result = qword_2812CE810;
  if (!qword_2812CE810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812CE810);
  }

  return result;
}

unint64_t sub_220C39FC4()
{
  result = qword_2812CE818;
  if (!qword_2812CE818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812CE818);
  }

  return result;
}

uint64_t sub_220C3A018(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = *a1;
  return sub_220C3BB20();
}

unint64_t sub_220C3A028()
{
  result = qword_27CF7BE68;
  if (!qword_27CF7BE68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7BE68);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for DevicePlatform(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFB)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFA)
  {
    v6 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
          *result = a2 + 5;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_220C3A1CC()
{
  OUTLINED_FUNCTION_0_11();
  switch(v2)
  {
    case 1:
      v0 = 0xED0000646E756F72;
      break;
    case 2:
      v0 = 0xE900000000000074;
      break;
    case 3:
      v0 = 0xE500000000000000;
      break;
    case 4:
      v0 = 0xE800000000000000;
      break;
    default:
      break;
  }

  OUTLINED_FUNCTION_7_4();
  switch(v5)
  {
    case 1:
      v4 = 0x676B636142707061;
      v1 = 0xED0000646E756F72;
      break;
    case 2:
      v4 = 0x6975516563726F66;
      v1 = 0xE900000000000074;
      break;
    case 3:
      v1 = 0xE500000000000000;
      v4 = 0x6873617263;
      break;
    case 4:
      v1 = 0xE800000000000000;
      v4 = 0x6465726961706572;
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
    v7 = OUTLINED_FUNCTION_4_8();
  }

  return v7 & 1;
}

uint64_t sub_220C3A354()
{
  OUTLINED_FUNCTION_0_11();
  switch(v2)
  {
    case 1:
      v0 = 0xE400000000000000;
      break;
    case 2:
      v0 = 0xE800000000000000;
      OUTLINED_FUNCTION_26();
      break;
    case 3:
      v0 = 0xE300000000000000;
      break;
    case 4:
      v0 = 0xE600000000000000;
      break;
    default:
      break;
  }

  OUTLINED_FUNCTION_7_4();
  switch(v5)
  {
    case 1:
      v1 = 0xE400000000000000;
      v4 = 1953720684;
      break;
    case 2:
      v1 = 0xE800000000000000;
      OUTLINED_FUNCTION_24();
      break;
    case 3:
      v1 = 0xE300000000000000;
      v4 = 7364973;
      break;
    case 4:
      v1 = 0xE600000000000000;
      v4 = 0x6C6961746564;
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
    v7 = OUTLINED_FUNCTION_4_8();
  }

  return v7 & 1;
}

uint64_t sub_220C3A46C()
{
  OUTLINED_FUNCTION_1_9();
  v4 = v1;
  if (v1)
  {
    if (v1 == 1)
    {
      v5 = 1936744813;
    }

    else
    {
      v5 = 0x72656469766F7270;
    }

    if (v4 == 1)
    {
      v0 = 0xE400000000000000;
    }

    else
    {
      v0 = 0xE800000000000000;
    }
  }

  else
  {
    v5 = OUTLINED_FUNCTION_16_2(v1, v2, v3);
  }

  if (v2)
  {
    if (v2 == 1)
    {
      v3 = 1936744813;
    }

    else
    {
      v3 = 0x72656469766F7270;
    }

    if (v2 == 1)
    {
      v6 = 0xE400000000000000;
    }

    else
    {
      v6 = 0xE800000000000000;
    }
  }

  else
  {
    v6 = 0xE700000000000000;
  }

  if (v5 == v3 && v0 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_4_8();
  }

  return v8 & 1;
}

uint64_t sub_220C3A53C()
{
  OUTLINED_FUNCTION_8_3();
  switch(v2)
  {
    case 1:
      OUTLINED_FUNCTION_3_5(17);
      break;
    case 2:
      v0 = 0xEC0000006E6F6973;
      break;
    case 3:
      v0 = 0xE500000000000000;
      break;
    default:
      break;
  }

  OUTLINED_FUNCTION_7_4();
  switch(v5)
  {
    case 1:
      OUTLINED_FUNCTION_2_6();
      break;
    case 2:
      v4 = 0x73696D7265506F6ELL;
      v1 = 0xEC0000006E6F6973;
      break;
    case 3:
      v1 = 0xE500000000000000;
      v4 = 0x726568746FLL;
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
    v7 = OUTLINED_FUNCTION_4_8();
  }

  return v7 & 1;
}

uint64_t sub_220C3A66C()
{
  OUTLINED_FUNCTION_0_11();
  switch(v2)
  {
    case 1:
      v0 = 0xE400000000000000;
      break;
    case 2:
      v0 = 0xE800000000000000;
      break;
    case 3:
      v0 = 0xE800000000000000;
      break;
    case 4:
      v3 = "e";
      goto LABEL_8;
    case 5:
      v3 = "startingStopping";
LABEL_8:
      v0 = v3 | 0x8000000000000000;
      break;
    default:
      break;
  }

  OUTLINED_FUNCTION_7_4();
  switch(v8)
  {
    case 1:
      v1 = 0xE400000000000000;
      v5 = 1701736302;
      break;
    case 2:
      v1 = 0xE800000000000000;
      v10 = 0x697472617473;
      goto LABEL_14;
    case 3:
      v1 = 0xE800000000000000;
      v10 = 0x6970706F7473;
LABEL_14:
      v5 = v10 & 0xFFFFFFFFFFFFLL | 0x676E000000000000;
      break;
    case 4:
      v5 = 0xD000000000000010;
      v9 = v7 - 32;
      goto LABEL_16;
    case 5:
      v5 = 0xD000000000000010;
      v9 = v6 - 32;
LABEL_16:
      v1 = v9 | 0x8000000000000000;
      break;
    default:
      break;
  }

  if (v4 == v5 && v0 == v1)
  {
    v12 = 1;
  }

  else
  {
    v12 = OUTLINED_FUNCTION_4_8();
  }

  return v12 & 1;
}

uint64_t sub_220C3A7D4()
{
  OUTLINED_FUNCTION_0_11();
  switch(v2)
  {
    case 1:
      v0 = 0xE400000000000000;
      break;
    case 2:
      v0 = 0xE400000000000000;
      break;
    case 3:
      v0 = 0xEC000000656C6261;
      break;
    default:
      break;
  }

  OUTLINED_FUNCTION_7_4();
  switch(v5)
  {
    case 1:
      v1 = 0xE400000000000000;
      v4 = 1768319351;
      break;
    case 2:
      v1 = 0xE400000000000000;
      v4 = 1851881335;
      break;
    case 3:
      v4 = 0x6863616552746F6ELL;
      v1 = 0xEC000000656C6261;
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
    v7 = OUTLINED_FUNCTION_4_8();
  }

  return v7 & 1;
}

uint64_t sub_220C3A8EC(unsigned __int8 a1, char a2)
{
  v2 = 0xED00006174614472;
  v3 = 0x6568746165576F6ELL;
  v4 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v5 = 0x697461636F4C6F6ELL;
    }

    else
    {
      v5 = 0x726568746FLL;
    }

    if (v4 == 1)
    {
      v6 = 0xEE00617461446E6FLL;
    }

    else
    {
      v6 = 0xE500000000000000;
    }
  }

  else
  {
    v5 = 0x6568746165576F6ELL;
    v6 = 0xED00006174614472;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v3 = 0x697461636F4C6F6ELL;
    }

    else
    {
      v3 = 0x726568746FLL;
    }

    if (a2 == 1)
    {
      v2 = 0xEE00617461446E6FLL;
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
    v8 = OUTLINED_FUNCTION_13_3();
  }

  return v8 & 1;
}

uint64_t sub_220C3A9F4(unsigned __int8 a1, char a2)
{
  v2 = 0xEA00000000006564;
  v3 = 0x6953726576726573;
  v4 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v5 = 0x6953746E65696C63;
    }

    else
    {
      v5 = 0x6568636163;
    }

    if (v4 == 1)
    {
      v6 = 0xEA00000000006564;
    }

    else
    {
      v6 = 0xE500000000000000;
    }
  }

  else
  {
    v5 = 0x6953726576726573;
    v6 = 0xEA00000000006564;
  }

  if (a2)
  {
    v3 = a2 == 1 ? 0x6953746E65696C63 : 0x6568636163;
    if (a2 != 1)
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
    v8 = OUTLINED_FUNCTION_13_3();
  }

  return v8 & 1;
}

uint64_t sub_220C3AAD8(char a1, char a2)
{
  if (*&aUnknown_24[8 * a1] == *&aUnknown_24[8 * a2])
  {
    v2 = 1;
  }

  else
  {
    v2 = sub_220CA1154();
  }

  swift_bridgeObjectRelease_n();
  return v2 & 1;
}

uint64_t sub_220C3AB40(unsigned __int8 a1, char a2)
{
  v2 = 0x73776F626E696172;
  v3 = 0xE800000000000000;
  v4 = a1;
  v5 = 0x73776F626E696172;
  switch(v4)
  {
    case 1:
      v5 = 0x6E696E746867696CLL;
      v3 = 0xE900000000000067;
      break;
    case 2:
      v3 = 0xE300000000000000;
      v5 = 6778726;
      break;
    case 3:
      v3 = 0xE400000000000000;
      v5 = 1818845544;
      break;
    case 4:
      v3 = 0xE500000000000000;
      v5 = 0x656B6F6D73;
      break;
    case 5:
      v3 = 0xE400000000000000;
      v5 = 1702519144;
      break;
    default:
      break;
  }

  v6 = 0xE800000000000000;
  switch(a2)
  {
    case 1:
      v2 = 0x6E696E746867696CLL;
      v6 = 0xE900000000000067;
      break;
    case 2:
      v6 = 0xE300000000000000;
      v2 = 6778726;
      break;
    case 3:
      v6 = 0xE400000000000000;
      v2 = 1818845544;
      break;
    case 4:
      v6 = 0xE500000000000000;
      v2 = 0x656B6F6D73;
      break;
    case 5:
      v6 = 0xE400000000000000;
      v2 = 1702519144;
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
    v8 = OUTLINED_FUNCTION_4_8();
  }

  return v8 & 1;
}

uint64_t sub_220C3ACB0()
{
  OUTLINED_FUNCTION_10_2();
  OUTLINED_FUNCTION_8_3();
  switch(v2)
  {
    case 1:
      v0 = 0xE500000000000000;
      break;
    case 2:
      v0 = 0xE800000000000000;
      break;
    case 3:
      v0 = 0xE500000000000000;
      break;
    default:
      break;
  }

  OUTLINED_FUNCTION_7_4();
  switch(v5)
  {
    case 1:
      v1 = 0xE500000000000000;
      v4 = 0x746867696CLL;
      break;
    case 2:
      v1 = 0xE800000000000000;
      v4 = 0x6574617265646F6DLL;
      break;
    case 3:
      v1 = 0xE500000000000000;
      v4 = 0x7976616568;
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
    v7 = OUTLINED_FUNCTION_4_8();
  }

  return v7 & 1;
}

uint64_t sub_220C3ADCC()
{
  OUTLINED_FUNCTION_0_11();
  switch(v2)
  {
    case 1:
      OUTLINED_FUNCTION_19_0();
      break;
    case 2:
      OUTLINED_FUNCTION_3_5(18);
      break;
    case 3:
      OUTLINED_FUNCTION_5_4();
      OUTLINED_FUNCTION_21();
      break;
    case 4:
      OUTLINED_FUNCTION_5_4();
      OUTLINED_FUNCTION_22();
      break;
    default:
      break;
  }

  OUTLINED_FUNCTION_7_4();
  switch(v5)
  {
    case 1:
      OUTLINED_FUNCTION_18_0();
      break;
    case 2:
      OUTLINED_FUNCTION_2_6();
      break;
    case 3:
      OUTLINED_FUNCTION_6_5();
      OUTLINED_FUNCTION_28();
      break;
    case 4:
      OUTLINED_FUNCTION_6_5();
      OUTLINED_FUNCTION_29();
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
    v7 = OUTLINED_FUNCTION_4_8();
  }

  return v7 & 1;
}

uint64_t sub_220C3AEC4()
{
  OUTLINED_FUNCTION_1_9();
  v4 = v1;
  if (v1)
  {
    if (v1 == 1)
    {
      v5 = 0x657372616F63;
    }

    else
    {
      v5 = 0x65736963657270;
    }

    if (v4 == 1)
    {
      v0 = 0xE600000000000000;
    }

    else
    {
      v0 = 0xE700000000000000;
    }
  }

  else
  {
    v5 = OUTLINED_FUNCTION_16_2(v1, v2, v3);
  }

  if (v2)
  {
    if (v2 == 1)
    {
      v3 = 0x657372616F63;
    }

    else
    {
      v3 = 0x65736963657270;
    }

    if (v2 == 1)
    {
      v6 = 0xE600000000000000;
    }

    else
    {
      v6 = 0xE700000000000000;
    }
  }

  else
  {
    v6 = 0xE700000000000000;
  }

  if (v5 == v3 && v0 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_4_8();
  }

  return v8 & 1;
}

uint64_t sub_220C3AF9C(char a1, char a2)
{
  v2 = 0x72656D726177;
  if (a1)
  {
    OUTLINED_FUNCTION_15_5();
    v5 = v4 | 0x74726F7065520000;
    if (v3)
    {
      v6 = v5;
    }

    else
    {
      v6 = 0x7265646C6F63;
    }

    if (v3)
    {
      v7 = 0xEA00000000006465;
    }

    else
    {
      v7 = 0xE600000000000000;
    }
  }

  else
  {
    v7 = 0xE600000000000000;
    v6 = 0x72656D726177;
  }

  if (a2)
  {
    OUTLINED_FUNCTION_15_5();
    v10 = v9 | 0x74726F7065520000;
    if (v8)
    {
      v2 = v10;
    }

    else
    {
      v2 = 0x7265646C6F63;
    }

    if (v8)
    {
      v11 = 0xEA00000000006465;
    }

    else
    {
      v11 = 0xE600000000000000;
    }
  }

  else
  {
    v11 = 0xE600000000000000;
  }

  if (v6 == v2 && v7 == v11)
  {
    v13 = 1;
  }

  else
  {
    v13 = OUTLINED_FUNCTION_4_8();
  }

  return v13 & 1;
}

uint64_t sub_220C3B080()
{
  OUTLINED_FUNCTION_0_11();
  switch(v2)
  {
    case 2:
      v0 = 0xE800000000000000;
      break;
    case 3:
      v0 = 0xE600000000000000;
      break;
    default:
      break;
  }

  OUTLINED_FUNCTION_7_4();
  switch(v5)
  {
    case 1:
      OUTLINED_FUNCTION_10_2();
      break;
    case 2:
      v1 = 0xE800000000000000;
      v4 = 0x64656C6261736964;
      break;
    case 3:
      v1 = 0xE600000000000000;
      v4 = 0x657372616F63;
      break;
    case 4:
      v4 = 0x65736963657270;
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
    v7 = OUTLINED_FUNCTION_4_8();
  }

  return v7 & 1;
}

uint64_t sub_220C3B1B4()
{
  OUTLINED_FUNCTION_0_11();
  switch(v2)
  {
    case 1:
      OUTLINED_FUNCTION_19_0();
      break;
    case 2:
      OUTLINED_FUNCTION_3_5(18);
      break;
    case 3:
      OUTLINED_FUNCTION_5_4();
      OUTLINED_FUNCTION_21();
      break;
    case 4:
      OUTLINED_FUNCTION_5_4();
      OUTLINED_FUNCTION_22();
      break;
    case 5:
      v0 = 0xE600000000000000;
      break;
    case 6:
      v0 = 0xE800000000000000;
      break;
    default:
      break;
  }

  OUTLINED_FUNCTION_7_4();
  switch(v5)
  {
    case 1:
      OUTLINED_FUNCTION_18_0();
      break;
    case 2:
      OUTLINED_FUNCTION_2_6();
      break;
    case 3:
      OUTLINED_FUNCTION_6_5();
      OUTLINED_FUNCTION_28();
      break;
    case 4:
      OUTLINED_FUNCTION_6_5();
      OUTLINED_FUNCTION_29();
      break;
    case 5:
      v1 = 0xE600000000000000;
      v4 = 0x705565636166;
      break;
    case 6:
      v1 = 0xE800000000000000;
      v4 = 0x6E776F4465636166;
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
    v7 = OUTLINED_FUNCTION_4_8();
  }

  return v7 & 1;
}

uint64_t sub_220C3B304()
{
  OUTLINED_FUNCTION_0_11();
  switch(v2)
  {
    case 2:
      v0 = 0xEA00000000007469;
      break;
    case 3:
      v0 = 0xE600000000000000;
      break;
    default:
      break;
  }

  OUTLINED_FUNCTION_7_4();
  switch(v5)
  {
    case 1:
      v4 = 0x737569736C6563;
      break;
    case 2:
      v4 = 0x65686E6572686166;
      v1 = 0xEA00000000007469;
      break;
    case 3:
      v1 = 0xE600000000000000;
      v4 = 0x6E69766C656BLL;
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
    v7 = OUTLINED_FUNCTION_4_8();
  }

  return v7 & 1;
}

uint64_t sub_220C3B424()
{
  OUTLINED_FUNCTION_1_9();
  if (v1)
  {
    if (v1 == 1)
    {
      v5 = v4;
    }

    else
    {
      v5 = v4 + 2556;
    }

    v0 = 0xE800000000000000;
  }

  else
  {
    v5 = OUTLINED_FUNCTION_16_2(v1, v2, v3);
  }

  if (v2)
  {
    if (v2 == 1)
    {
      v3 = v4;
    }

    else
    {
      v3 = v4 + 2556;
    }

    v6 = 0xE800000000000000;
  }

  else
  {
    v6 = 0xE700000000000000;
  }

  if (v5 == v3 && v0 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_4_8();
  }

  return v8 & 1;
}

uint64_t sub_220C3B4DC()
{
  OUTLINED_FUNCTION_0_11();
  switch(v2)
  {
    case 1:
      v0 = 0xE300000000000000;
      break;
    case 2:
      v0 = 0xE300000000000000;
      break;
    case 3:
      v0 = 0xEA00000000007961;
      break;
    case 4:
      OUTLINED_FUNCTION_3_5(20);
      break;
    default:
      break;
  }

  OUTLINED_FUNCTION_7_4();
  switch(v5)
  {
    case 1:
      v1 = 0xE300000000000000;
      v4 = 7562359;
      break;
    case 2:
      v1 = 0xE300000000000000;
      v4 = 6518644;
      break;
    case 3:
      v4 = 0x6C7265764F70616DLL;
      v1 = 0xEA00000000007961;
      break;
    case 4:
      OUTLINED_FUNCTION_2_6();
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
    v7 = OUTLINED_FUNCTION_4_8();
  }

  return v7 & 1;
}

uint64_t sub_220C3B60C(unsigned __int8 a1, char a2)
{
  v2 = 1701736302;
  v3 = 0xE400000000000000;
  v4 = a1;
  v5 = 1701736302;
  switch(v4)
  {
    case 1:
      v5 = OUTLINED_FUNCTION_3_5(21);
      break;
    case 2:
      v5 = 0x6C41657265766573;
      v3 = 0xEB00000000747265;
      break;
    case 3:
      v5 = OUTLINED_FUNCTION_12_1();
      v3 = 0xEA00000000007974;
      break;
    case 4:
      v5 = 0x6B694C736C656566;
      v3 = 0xE900000000000065;
      break;
    default:
      break;
  }

  v6 = 0xE400000000000000;
  switch(a2)
  {
    case 1:
      OUTLINED_FUNCTION_2_6();
      break;
    case 2:
      v2 = 0x6C41657265766573;
      v6 = 0xEB00000000747265;
      break;
    case 3:
      OUTLINED_FUNCTION_11_5();
      v6 = 0xEA00000000007974;
      break;
    case 4:
      v2 = 0x6B694C736C656566;
      v6 = 0xE900000000000065;
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
    v8 = OUTLINED_FUNCTION_4_8();
  }

  return v8 & 1;
}

uint64_t sub_220C3B770()
{
  OUTLINED_FUNCTION_1_9();
  v4 = v1;
  if (v1)
  {
    if (v1 == 1)
    {
      v5 = 0x6E656E6F706D6F63;
    }

    else
    {
      v5 = 0x726F7463656C6573;
    }

    if (v4 == 1)
    {
      v0 = 0xE900000000000074;
    }

    else
    {
      v0 = 0xE800000000000000;
    }
  }

  else
  {
    v5 = OUTLINED_FUNCTION_16_2(v1, v2, v3);
  }

  if (v2)
  {
    if (v2 == 1)
    {
      v3 = 0x6E656E6F706D6F63;
    }

    else
    {
      v3 = 0x726F7463656C6573;
    }

    if (v2 == 1)
    {
      v6 = 0xE900000000000074;
    }

    else
    {
      v6 = 0xE800000000000000;
    }
  }

  else
  {
    v6 = 0xE700000000000000;
  }

  if (v5 == v3 && v0 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_4_8();
  }

  return v8 & 1;
}

uint64_t sub_220C3B858()
{
  OUTLINED_FUNCTION_0_11();
  switch(v2)
  {
    case 1:
      v0 = 0xE800000000000000;
      break;
    case 2:
    case 4:
      v0 = 0xE900000000000072;
      break;
    case 3:
      v0 = 0xEA00000000007275;
      break;
    default:
      break;
  }

  OUTLINED_FUNCTION_7_4();
  switch(v5)
  {
    case 1:
      v1 = 0xE800000000000000;
      v4 = 0x6F775479426F7774;
      break;
    case 2:
      v6 = 1114601332;
      goto LABEL_9;
    case 3:
      v4 = 0x6F46794272756F66;
      v1 = 0xEA00000000007275;
      break;
    case 4:
      v6 = 1115187571;
LABEL_9:
      v4 = v6 | 0x756F467900000000;
      v1 = 0xE900000000000072;
      break;
    default:
      break;
  }

  if (v3 == v4 && v0 == v1)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_4_8();
  }

  return v8 & 1;
}

uint64_t sub_220C3B9A8()
{
  OUTLINED_FUNCTION_1_9();
  v1 = 0xE700000000000000;
  switch(v2)
  {
    case 1:
      v1 = 0xE900000000000065;
      break;
    case 2:
      v3 = "nfig";
      goto LABEL_6;
    case 3:
      v3 = "homeScreenPageOne";
LABEL_6:
      v1 = v3 | 0x8000000000000000;
      break;
    case 4:
      v1 = 0x8000000220CB4710;
      break;
    case 5:
      v1 = 0x8000000220CB4730;
      break;
    default:
      break;
  }

  OUTLINED_FUNCTION_7_4();
  switch(v11)
  {
    case 1:
      v5 = 0x6761507961646F74;
      v0 = 0xE900000000000065;
      break;
    case 2:
      v12 = v10 - 32;
      goto LABEL_13;
    case 3:
      v12 = v9 - 32;
LABEL_13:
      v0 = v12 | 0x8000000000000000;
      v5 = 0xD000000000000011;
      break;
    case 4:
      v0 = (v8 - 32) | 0x8000000000000000;
      v5 = v6 + 2;
      break;
    case 5:
      v0 = (v7 - 32) | 0x8000000000000000;
      v5 = v6 + 3;
      break;
    default:
      break;
  }

  if (v4 == v5 && v1 == v0)
  {
    v14 = 1;
  }

  else
  {
    v14 = OUTLINED_FUNCTION_4_8();
  }

  return v14 & 1;
}

uint64_t sub_220C3BB20()
{
  OUTLINED_FUNCTION_0_11();
  switch(v2)
  {
    case 1:
      v0 = 0xE300000000000000;
      break;
    case 2:
      v0 = 0xE600000000000000;
      break;
    case 3:
      v0 = 0xE500000000000000;
      break;
    case 4:
      v0 = 0xE800000000000000;
      break;
    default:
      break;
  }

  OUTLINED_FUNCTION_7_4();
  switch(v5)
  {
    case 1:
      v1 = 0xE300000000000000;
      v4 = 5459817;
      break;
    case 2:
      v1 = 0xE600000000000000;
      v4 = 0x534F64615069;
      break;
    case 3:
      v1 = 0xE500000000000000;
      v4 = 0x534F63616DLL;
      break;
    case 4:
      v1 = 0xE800000000000000;
      v4 = 0x534F6E6F69736976;
      break;
    case 5:
      v4 = 0x534F6863746177;
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
    v7 = OUTLINED_FUNCTION_4_8();
  }

  return v7 & 1;
}

uint64_t sub_220C3BC80()
{
  OUTLINED_FUNCTION_1_9();
  v4 = v1;
  if (v1)
  {
    if (v1 == 1)
    {
      v5 = 0x7261626C6F6F74;
    }

    else
    {
      v5 = 0x6E656E6F706D6F63;
    }

    if (v4 == 1)
    {
      v0 = 0xE700000000000000;
    }

    else
    {
      v0 = 0xE900000000000074;
    }
  }

  else
  {
    v5 = OUTLINED_FUNCTION_16_2(v1, v2, v3);
  }

  if (v2)
  {
    if (v2 == 1)
    {
      v3 = 0x7261626C6F6F74;
    }

    else
    {
      v3 = 0x6E656E6F706D6F63;
    }

    if (v2 == 1)
    {
      v6 = 0xE700000000000000;
    }

    else
    {
      v6 = 0xE900000000000074;
    }
  }

  else
  {
    v6 = 0xE700000000000000;
  }

  if (v5 == v3 && v0 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_4_8();
  }

  return v8 & 1;
}

uint64_t sub_220C3BD80(char a1, char a2)
{
  v2 = 1701998445;
  if (a1)
  {
    OUTLINED_FUNCTION_15_5();
    v5 = v4 | 0x74726F7065520000;
    if (v3)
    {
      v6 = v5;
    }

    else
    {
      v6 = 1936942444;
    }

    if (v3)
    {
      v7 = 0xEA00000000006465;
    }

    else
    {
      v7 = 0xE400000000000000;
    }
  }

  else
  {
    v7 = 0xE400000000000000;
    v6 = 1701998445;
  }

  if (a2)
  {
    OUTLINED_FUNCTION_15_5();
    v10 = v9 | 0x74726F7065520000;
    if (v8)
    {
      v2 = v10;
    }

    else
    {
      v2 = 1936942444;
    }

    if (v8)
    {
      v11 = 0xEA00000000006465;
    }

    else
    {
      v11 = 0xE400000000000000;
    }
  }

  else
  {
    v11 = 0xE400000000000000;
  }

  if (v6 == v2 && v7 == v11)
  {
    v13 = 1;
  }

  else
  {
    v13 = OUTLINED_FUNCTION_4_8();
  }

  return v13 & 1;
}

uint64_t sub_220C3BE5C()
{
  v0 = 0xEB000000006C6C61;
  OUTLINED_FUNCTION_17_1();
  v3 = v2 & 0xFFFFFFFFFFFFLL | 0x6D53000000000000;
  v5 = v4;
  v6 = "accessoryRectangular";
  v7 = "accessoryCircular";
  v8 = v3;
  v9 = 0xEB000000006C6C61;
  v10 = "systemExtraLarge";
  switch(v5)
  {
    case 1:
      v8 = 0x654D6D6574737973;
      v9 = 0xEC0000006D756964;
      break;
    case 2:
      v8 = 0x614C6D6574737973;
      v9 = 0xEB00000000656772;
      break;
    case 3:
      v8 = 0xD000000000000010;
      v9 = 0x8000000220CB4970;
      break;
    case 4:
      v9 = 0x8000000220CB4990;
      v8 = 0xD000000000000011;
      break;
    case 5:
      v8 = OUTLINED_FUNCTION_27();
      v9 = 0xEF72656E726F4379;
      break;
    case 6:
      v9 = 0x8000000220CB49C0;
      v8 = 0xD000000000000014;
      break;
    case 7:
      v8 = OUTLINED_FUNCTION_27();
      v9 = 0xEF656E696C6E4979;
      break;
    case 8:
      v9 = 0xE700000000000000;
      v8 = 0x6E776F6E6B6E75;
      break;
    default:
      break;
  }

  switch(v1)
  {
    case 1:
      OUTLINED_FUNCTION_17_1();
      v3 = v11 & 0xFFFFFFFFFFFFLL | 0x654D000000000000;
      v0 = 0xEC0000006D756964;
      break;
    case 2:
      OUTLINED_FUNCTION_17_1();
      v3 = v12 & 0xFFFFFFFFFFFFLL | 0x614C000000000000;
      v0 = 0xEB00000000656772;
      break;
    case 3:
      v3 = 0xD000000000000010;
      v0 = (v10 - 32) | 0x8000000000000000;
      break;
    case 4:
      v0 = (v7 - 32) | 0x8000000000000000;
      v3 = 0xD000000000000011;
      break;
    case 5:
      OUTLINED_FUNCTION_23_0();
      v0 = 0xEF72656E726F4379;
      break;
    case 6:
      v0 = (v6 - 32) | 0x8000000000000000;
      v3 = 0xD000000000000014;
      break;
    case 7:
      OUTLINED_FUNCTION_23_0();
      v0 = 0xEF656E696C6E4979;
      break;
    case 8:
      v0 = 0xE700000000000000;
      OUTLINED_FUNCTION_1_9();
      break;
    default:
      break;
  }

  if (v8 == v3 && v9 == v0)
  {
    v14 = 1;
  }

  else
  {
    v14 = OUTLINED_FUNCTION_13_3();
  }

  return v14 & 1;
}

uint64_t sub_220C3C0A0()
{
  OUTLINED_FUNCTION_0_11();
  switch(v2)
  {
    case 1:
      v0 = 0xEB00000000746567;
      break;
    case 2:
      v0 = 0xE400000000000000;
      break;
    case 3:
      v0 = 0xE400000000000000;
      break;
    case 4:
      OUTLINED_FUNCTION_3_5(17);
      break;
    case 5:
      v0 = 0xE400000000000000;
      break;
    default:
      break;
  }

  OUTLINED_FUNCTION_7_4();
  switch(v5)
  {
    case 1:
      v4 = 0x6469577961646F74;
      v1 = 0xEB00000000746567;
      break;
    case 2:
      v1 = 0xE400000000000000;
      v4 = 1936744813;
      break;
    case 3:
      v1 = 0xE400000000000000;
      v4 = 1769105779;
      break;
    case 4:
      OUTLINED_FUNCTION_2_6();
      break;
    case 5:
      v1 = 0xE400000000000000;
      v4 = 1937204590;
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
    v7 = OUTLINED_FUNCTION_4_8();
  }

  return v7 & 1;
}

uint64_t sub_220C3C1F8()
{
  OUTLINED_FUNCTION_0_11();
  switch(v2)
  {
    case 1:
      OUTLINED_FUNCTION_12_1();
      v0 = 0xEA00000000007974;
      break;
    case 2:
      v3 = 0x726568746165;
      goto LABEL_5;
    case 3:
      OUTLINED_FUNCTION_25();
      v4 = 0x796C696144;
      goto LABEL_10;
    case 4:
      OUTLINED_FUNCTION_25();
      v3 = 0x796C72756F48;
LABEL_5:
      v0 = v3 & 0xFFFFFFFFFFFFLL | 0xEE00000000000000;
      break;
    case 5:
      OUTLINED_FUNCTION_3_5(16);
      break;
    case 7:
      v4 = 0x7265687461;
      goto LABEL_10;
    case 8:
      v4 = 0x65676E6168;
LABEL_10:
      v0 = v4 & 0xFFFFFFFFFFFFLL | 0xED00000000000000;
      break;
    default:
      break;
  }

  OUTLINED_FUNCTION_7_4();
  switch(v7)
  {
    case 1:
      OUTLINED_FUNCTION_11_5();
      v1 = 0xEA00000000007974;
      break;
    case 2:
      v6 = 0x57746E6572727563;
      v8 = 0x726568746165;
      goto LABEL_15;
    case 3:
      OUTLINED_FUNCTION_20();
      v9 = 0x796C696144;
      goto LABEL_21;
    case 4:
      OUTLINED_FUNCTION_20();
      v8 = 0x796C72756F48;
LABEL_15:
      v1 = v8 & 0xFFFFFFFFFFFFLL | 0xEE00000000000000;
      break;
    case 5:
      OUTLINED_FUNCTION_2_6();
      break;
    case 6:
      v6 = 0x79726F74736968;
      break;
    case 7:
      v6 = 0x6557657265766573;
      v9 = 0x7265687461;
      goto LABEL_21;
    case 8:
      v6 = 0x4372656874616577;
      v9 = 0x65676E6168;
LABEL_21:
      v1 = v9 & 0xFFFFFFFFFFFFLL | 0xED00000000000000;
      break;
    default:
      break;
  }

  if (v5 == v6 && v0 == v1)
  {
    v11 = 1;
  }

  else
  {
    v11 = OUTLINED_FUNCTION_4_8();
  }

  return v11 & 1;
}

uint64_t sub_220C3C418(char a1, char a2)
{
  v2 = 0x726574746562;
  if (a1)
  {
    OUTLINED_FUNCTION_15_5();
    v5 = v4 | 0x74726F7065520000;
    if (v3)
    {
      v6 = v5;
    }

    else
    {
      v6 = 0x6573726F77;
    }

    if (v3)
    {
      v7 = 0xEA00000000006465;
    }

    else
    {
      v7 = 0xE500000000000000;
    }
  }

  else
  {
    v7 = 0xE600000000000000;
    v6 = 0x726574746562;
  }

  if (a2)
  {
    OUTLINED_FUNCTION_15_5();
    v10 = v9 | 0x74726F7065520000;
    if (v8)
    {
      v2 = v10;
    }

    else
    {
      v2 = 0x6573726F77;
    }

    if (v8)
    {
      v11 = 0xEA00000000006465;
    }

    else
    {
      v11 = 0xE500000000000000;
    }
  }

  else
  {
    v11 = 0xE600000000000000;
  }

  if (v6 == v2 && v7 == v11)
  {
    v13 = 1;
  }

  else
  {
    v13 = OUTLINED_FUNCTION_4_8();
  }

  return v13 & 1;
}

uint64_t sub_220C3C4FC()
{
  OUTLINED_FUNCTION_1_9();
  v4 = v1;
  if (v1)
  {
    if (v1 == 1)
    {
      v5 = 0x695764656E6E6970;
    }

    else
    {
      v5 = 0x6B63617473;
    }

    if (v4 == 1)
    {
      v0 = 0xEC00000074656764;
    }

    else
    {
      v0 = 0xE500000000000000;
    }
  }

  else
  {
    v5 = OUTLINED_FUNCTION_16_2(v1, v2, v3);
  }

  if (v2)
  {
    if (v2 == 1)
    {
      v3 = 0x695764656E6E6970;
    }

    else
    {
      v3 = 0x6B63617473;
    }

    if (v2 == 1)
    {
      v6 = 0xEC00000074656764;
    }

    else
    {
      v6 = 0xE500000000000000;
    }
  }

  else
  {
    v6 = 0xE700000000000000;
  }

  if (v5 == v3 && v0 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_4_8();
  }

  return v8 & 1;
}

uint64_t sub_220C3C5E4()
{
  OUTLINED_FUNCTION_0_11();
  switch(v2)
  {
    case 1:
      v0 = 0xE900000000000068;
      break;
    case 2:
      v0 = 0xE500000000000000;
      break;
    case 3:
      OUTLINED_FUNCTION_26();
      v0 = 0xEB00000000706154;
      break;
    case 4:
      v0 = 0xEE006E6F69746167;
      break;
    default:
      break;
  }

  OUTLINED_FUNCTION_7_4();
  switch(v5)
  {
    case 1:
      v4 = 0x636E75614C707061;
      v1 = 0xE900000000000068;
      break;
    case 2:
      v1 = 0xE500000000000000;
      v4 = 0x6570697773;
      break;
    case 3:
      OUTLINED_FUNCTION_24();
      v1 = 0xEB00000000706154;
      break;
    case 4:
      v4 = 0x6976614E72657375;
      v1 = 0xEE006E6F69746167;
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
    v7 = OUTLINED_FUNCTION_4_8();
  }

  return v7 & 1;
}

uint64_t sub_220C3C74C(unsigned __int8 a1, char a2)
{
  v2 = 0xED00006E6F697461;
  v3 = 0x7469706963657270;
  v4 = a1;
  v5 = 0x7469706963657270;
  v6 = 0xED00006E6F697461;
  switch(v4)
  {
    case 1:
      v5 = 0x74617265706D6574;
      v6 = 0xEB00000000657275;
      break;
    case 2:
      v5 = OUTLINED_FUNCTION_12_1();
      v6 = 0xEA00000000007974;
      break;
    case 3:
      v6 = 0xE400000000000000;
      v5 = 1684957559;
      break;
    default:
      break;
  }

  switch(a2)
  {
    case 1:
      v3 = 0x74617265706D6574;
      v2 = 0xEB00000000657275;
      break;
    case 2:
      OUTLINED_FUNCTION_11_5();
      v2 = 0xEA00000000007974;
      break;
    case 3:
      v2 = 0xE400000000000000;
      v3 = 1684957559;
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
    v8 = OUTLINED_FUNCTION_13_3();
  }

  return v8 & 1;
}

uint64_t sub_220C3C888(char a1, char a2)
{
  v2 = (a1 & 1) == 0;
  if (a1)
  {
    v3 = 0x657263536C6C7566;
  }

  else
  {
    v3 = 0x64656E6E6970;
  }

  if (v2)
  {
    v4 = 0xE600000000000000;
  }

  else
  {
    v4 = 0xEA00000000006E65;
  }

  if (a2)
  {
    v5 = 0x657263536C6C7566;
  }

  else
  {
    v5 = 0x64656E6E6970;
  }

  if (a2)
  {
    v6 = 0xEA00000000006E65;
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
    v8 = OUTLINED_FUNCTION_4_8();
  }

  return v8 & 1;
}

uint64_t sub_220C3C934()
{
  OUTLINED_FUNCTION_10_2();
  OUTLINED_FUNCTION_8_3();
  switch(v2)
  {
    case 1:
      v0 = 0xE600000000000000;
      break;
    case 2:
      v0 = 0xE600000000000000;
      break;
    case 3:
      v0 = 0xE800000000000000;
      break;
    default:
      break;
  }

  OUTLINED_FUNCTION_7_4();
  switch(v5)
  {
    case 1:
      v1 = 0xE600000000000000;
      v6 = 1953653104;
      goto LABEL_9;
    case 2:
      v1 = 0xE600000000000000;
      v6 = 1953722221;
LABEL_9:
      v4 = v6 & 0xFFFF0000FFFFFFFFLL | 0x796C00000000;
      break;
    case 3:
      v1 = 0xE800000000000000;
      v4 = 0x747361637265766FLL;
      break;
    default:
      break;
  }

  if (v3 == v4 && v0 == v1)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_4_8();
  }

  return v8 & 1;
}

uint64_t sub_220C3CA48(unsigned __int8 a1, char a2)
{
  v2 = 0xE900000000000064;
  v3 = 0x6574656C706D6F63;
  v4 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v5 = 0x64656C696166;
    }

    else
    {
      v5 = 0x656E6F646E616261;
    }

    if (v4 == 1)
    {
      v6 = 0xE600000000000000;
    }

    else
    {
      v6 = 0xE900000000000064;
    }
  }

  else
  {
    v5 = 0x6574656C706D6F63;
    v6 = 0xE900000000000064;
  }

  if (a2)
  {
    v3 = a2 == 1 ? 0x64656C696166 : 0x656E6F646E616261;
    if (a2 == 1)
    {
      v2 = 0xE600000000000000;
    }
  }

  if (v5 == v3 && v6 == v2)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_13_3();
  }

  return v8 & 1;
}

uint64_t sub_220C3CB2C()
{
  OUTLINED_FUNCTION_8_3();
  switch(v2)
  {
    case 1:
      v0 = 0xE400000000000000;
      break;
    case 2:
      v0 = 0xEA00000000006576;
      break;
    case 3:
      v0 = 0xE500000000000000;
      break;
    case 4:
      v0 = 0xEB00000000657669;
      break;
    case 5:
      v0 = 0xEA00000000006465;
      break;
    default:
      break;
  }

  OUTLINED_FUNCTION_7_4();
  switch(v5)
  {
    case 1:
      v1 = 0xE400000000000000;
      v4 = 1869768058;
      break;
    case 2:
      v4 = 0x694679746E657774;
      v1 = 0xEA00000000006576;
      break;
    case 3:
      v1 = 0xE500000000000000;
      v4 = 0x7974666966;
      break;
    case 4:
      v4 = 0x4679746E65766573;
      v1 = 0xEB00000000657669;
      break;
    case 5:
      v4 = 0x72646E7548656E6FLL;
      v1 = 0xEA00000000006465;
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
    v7 = OUTLINED_FUNCTION_4_8();
  }

  return v7 & 1;
}

uint64_t sub_220C3CCEC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a3();
  v6 = v5;
  if (v4 == a3() && v6 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = OUTLINED_FUNCTION_4_8();
  }

  return v9 & 1;
}

uint64_t GeocodeTaskCompletedEvent.init(startTime:endTime:location:reverseGeocodeSource:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X3>, uint64_t a5@<X8>)
{
  v9 = *a4;
  v10 = sub_220C9F7D4();
  OUTLINED_FUNCTION_1(v10);
  v12 = *(v11 + 32);
  v12(a5, a1, v10);
  v13 = type metadata accessor for GeocodeTaskCompletedEvent();
  result = (v12)(a5 + v13[5], a2, v10);
  *(a5 + v13[6]) = a3;
  *(a5 + v13[7]) = v9;
  return result;
}

uint64_t type metadata accessor for GeocodeTaskCompletedEvent()
{
  result = qword_2812D12B0;
  if (!qword_2812D12B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t GeocodeTaskCompletedEvent.startTime.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_220C9F7D4();
  v4 = OUTLINED_FUNCTION_1(v3);
  v6 = *(v5 + 16);

  return v6(a1, v1, v4);
}

uint64_t GeocodeTaskCompletedEvent.startTime.setter()
{
  OUTLINED_FUNCTION_5();
  v2 = sub_220C9F7D4();
  v3 = OUTLINED_FUNCTION_1(v2);
  v5 = *(v4 + 40);

  return v5(v1, v0, v3);
}

uint64_t GeocodeTaskCompletedEvent.endTime.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for GeocodeTaskCompletedEvent() + 20);
  v4 = sub_220C9F7D4();
  v5 = OUTLINED_FUNCTION_1(v4);
  v7 = *(v6 + 16);

  return v7(a1, v1 + v3, v5);
}

uint64_t GeocodeTaskCompletedEvent.endTime.setter()
{
  OUTLINED_FUNCTION_5();
  v2 = *(type metadata accessor for GeocodeTaskCompletedEvent() + 20);
  v3 = sub_220C9F7D4();
  OUTLINED_FUNCTION_1(v3);
  v5 = *(v4 + 40);

  return v5(v1 + v2, v0);
}

uint64_t (*GeocodeTaskCompletedEvent.endTime.modify())()
{
  OUTLINED_FUNCTION_5();
  v0 = *(type metadata accessor for GeocodeTaskCompletedEvent() + 20);
  return nullsub_1;
}

id GeocodeTaskCompletedEvent.location.getter()
{
  v1 = *(v0 + *(type metadata accessor for GeocodeTaskCompletedEvent() + 24));

  return v1;
}

void GeocodeTaskCompletedEvent.location.setter()
{
  OUTLINED_FUNCTION_5();
  v2 = *(type metadata accessor for GeocodeTaskCompletedEvent() + 24);

  *(v1 + v2) = v0;
}

uint64_t (*GeocodeTaskCompletedEvent.location.modify())()
{
  OUTLINED_FUNCTION_5();
  v0 = *(type metadata accessor for GeocodeTaskCompletedEvent() + 24);
  return nullsub_1;
}

uint64_t GeocodeTaskCompletedEvent.reverseGeocodeSource.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for GeocodeTaskCompletedEvent();
  *a1 = *(v1 + *(result + 28));
  return result;
}

uint64_t GeocodeTaskCompletedEvent.reverseGeocodeSource.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for GeocodeTaskCompletedEvent();
  *(v1 + *(result + 28)) = v2;
  return result;
}

uint64_t (*GeocodeTaskCompletedEvent.reverseGeocodeSource.modify())()
{
  OUTLINED_FUNCTION_5();
  v0 = *(type metadata accessor for GeocodeTaskCompletedEvent() + 28);
  return nullsub_1;
}

uint64_t static GeocodeTaskCompletedEvent.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((sub_220C9F7A4() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for GeocodeTaskCompletedEvent();
  v5 = v4[5];
  if ((sub_220C9F7A4() & 1) == 0)
  {
    return 0;
  }

  sub_220BF9260(0, &qword_27CF7BE70, 0x277D82BB8);
  v6 = v4[6];
  v7 = *(a1 + v6);
  v8 = *(a2 + v6);
  if ((sub_220CA0ED4() & 1) == 0)
  {
    return 0;
  }

  v9 = v4[7];
  v10 = *(a2 + v9);
  v11 = *(a1 + v9);

  return sub_220C3A9F4(v11, v10);
}

uint64_t sub_220C3D2C4()
{
  result = sub_220C9F7D4();
  if (v1 <= 0x3F)
  {
    result = sub_220BF9260(319, &qword_2812D0F68, 0x277CE41F8);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t CurrentLocationUpdateTelemetryPayload.Success.init(startTime:endTime:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_220C9F7D4();
  OUTLINED_FUNCTION_1(v4);
  v9 = *(v5 + 32);
  v9(a2, a1, v4);
  updated = type metadata accessor for CurrentLocationUpdateTelemetryPayload.Success(0);
  v7 = OUTLINED_FUNCTION_5_5(updated);

  return (v9)(v7);
}

uint64_t CurrentLocationUpdateTelemetryPayload.Failure.init(startTime:endTime:reason:)@<X0>(uint64_t a1@<X0>, char *a2@<X2>, uint64_t a3@<X8>)
{
  v5 = *a2;
  v6 = sub_220C9F7D4();
  OUTLINED_FUNCTION_1(v6);
  v8 = *(v7 + 32);
  v8(a3, a1, v6);
  updated = type metadata accessor for CurrentLocationUpdateTelemetryPayload.Failure(0);
  v10 = OUTLINED_FUNCTION_5_5(updated);
  result = (v8)(v10);
  *(a3 + *(updated + 24)) = v5;
  return result;
}

_BYTE *storeEnumTagSinglePayload for CurrentLocationUpdateTelemetryPayload(_BYTE *result, int a2, int a3)
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

uint64_t sub_220C3D668()
{
  result = sub_220C9F7D4();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_220C3D6FC()
{
  result = sub_220C9F7D4();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_220C3D778()
{
  v2 = OUTLINED_FUNCTION_5();
  updated = type metadata accessor for CurrentLocationUpdateTelemetryPayload.Success(v2);
  v4 = *(updated - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](updated - 8);
  v6 = v1[7];
  __swift_project_boxed_opaque_existential_1(v1 + 3, v1[6]);
  v7 = OUTLINED_FUNCTION_2_7();
  if (v8(v7))
  {
    v9 = v1[2];
    sub_220C3E010(v0, &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
    v10 = (*(v4 + 80) + 16) & ~*(v4 + 80);
    v11 = swift_allocObject();
    OUTLINED_FUNCTION_7_5(v11);
    sub_220CA0444();
  }

  else
  {
    if (qword_2812D1768 != -1)
    {
      OUTLINED_FUNCTION_1_10();
    }

    v12 = sub_220CA0A84();
    __swift_project_value_buffer(v12, qword_2812D1770);
    v18 = sub_220CA0A64();
    v13 = sub_220CA0D84();
    if (os_log_type_enabled(v18, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      OUTLINED_FUNCTION_8_4(&dword_220BF4000, v15, v16, "Skipping logging of current location update success event; not part of sample.");
      MEMORY[0x223D95B30](v14, -1, -1);
    }
  }
}

uint64_t sub_220C3D97C()
{
  v0 = sub_220C9F804();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_220C9F7F4();
  sub_220C9F7E4();
  (*(v1 + 8))(v4, v0);
  sub_220C9FF74();

  type metadata accessor for CurrentLocationUpdateEvent(0);
  sub_220C3E280(&qword_27CF7BE88, type metadata accessor for CurrentLocationUpdateEvent);
  sub_220C9FF94();
  v5 = *(type metadata accessor for CurrentLocationUpdateTelemetryPayload.Success(0) + 20);
  sub_220C9FFA4();
  return sub_220C9FF84();
}

void sub_220C3DB04()
{
  v2 = OUTLINED_FUNCTION_5();
  updated = type metadata accessor for CurrentLocationUpdateTelemetryPayload.Failure(v2);
  v4 = *(updated - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](updated - 8);
  v6 = v1[7];
  __swift_project_boxed_opaque_existential_1(v1 + 3, v1[6]);
  v7 = OUTLINED_FUNCTION_2_7();
  if (v8(v7))
  {
    v9 = v1[2];
    sub_220C3E010(v0, &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
    v10 = (*(v4 + 80) + 16) & ~*(v4 + 80);
    v11 = swift_allocObject();
    OUTLINED_FUNCTION_7_5(v11);
    sub_220CA0444();
  }

  else
  {
    if (qword_2812D1768 != -1)
    {
      OUTLINED_FUNCTION_1_10();
    }

    v12 = sub_220CA0A84();
    __swift_project_value_buffer(v12, qword_2812D1770);
    v18 = sub_220CA0A64();
    v13 = sub_220CA0D84();
    if (os_log_type_enabled(v18, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      OUTLINED_FUNCTION_8_4(&dword_220BF4000, v15, v16, "Skipping logging of current location update failure event; not part of sample.");
      MEMORY[0x223D95B30](v14, -1, -1);
    }
  }
}

uint64_t sub_220C3DD08(uint64_t a1, uint64_t a2)
{
  v3 = sub_220C9F804();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v11[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_220C9F7F4();
  sub_220C9F7E4();
  (*(v4 + 8))(v7, v3);
  sub_220C9FF74();

  type metadata accessor for CurrentLocationUpdateFailedEvent(0);
  sub_220C3E280(&qword_27CF7BE78, type metadata accessor for CurrentLocationUpdateFailedEvent);
  sub_220C9FF94();
  updated = type metadata accessor for CurrentLocationUpdateTelemetryPayload.Failure(0);
  v11[15] = *(a2 + *(updated + 24));
  sub_220C3DFBC();
  sub_220C9FFC4();
  v9 = *(updated + 20);
  sub_220C9FFA4();
  return sub_220C9FF84();
}

uint64_t sub_220C3DEE4()
{
  v1 = *(v0 + 16);

  __swift_destroy_boxed_opaque_existential_1((v0 + 24));

  return MEMORY[0x2821FE8D8](v0, 64, 7);
}

unint64_t sub_220C3DFBC()
{
  result = qword_27CF7BE80;
  if (!qword_27CF7BE80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7BE80);
  }

  return result;
}

uint64_t sub_220C3E010(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_3_0();
  v6 = v5(v4);
  OUTLINED_FUNCTION_1(v6);
  (*(v7 + 16))(a2, v2);
  return a2;
}

uint64_t objectdestroyTm(uint64_t (*a1)(void))
{
  v2 = (a1(0) - 8);
  v3 = *(*v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(*v2 + 64);
  v6 = sub_220C9F7D4();
  OUTLINED_FUNCTION_1(v6);
  v8 = *(v7 + 8);
  v8(v1 + v4, v6);
  v8(v1 + v4 + v2[7], v6);

  return MEMORY[0x2821FE8E8](v1, v4 + v5, v3 | 7);
}

uint64_t sub_220C3E174(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_3_0();
  v6 = v5(v4);
  OUTLINED_FUNCTION_1(v6);
  (*(v7 + 32))(a2, v2);
  return a2;
}

uint64_t sub_220C3E1FC(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  v5 = OUTLINED_FUNCTION_5();
  v7 = *(v6(v5) - 8);
  v8 = v4 + ((*(v7 + 80) + 16) & ~*(v7 + 80));

  return a3(v3, v8);
}

uint64_t sub_220C3E280(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_220C3E314(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x6F73616552646E65 && a2 == 0xE90000000000006ELL)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_220CA1154();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_220C3E3B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_220C3E314(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_220C3E3E0(uint64_t a1)
{
  v2 = sub_220C3E598();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_220C3E41C(uint64_t a1)
{
  v2 = sub_220C3E598();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SessionEndData.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7BE90, &qword_220CA61E0);
  v4 = OUTLINED_FUNCTION_3(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v4);
  v10 = &v14 - v9;
  v11 = *v1;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220C3E598();
  sub_220CA1254();
  v15 = v11;
  sub_220C3E5EC();
  sub_220CA1104();
  return (*(v6 + 8))(v10, v3);
}

unint64_t sub_220C3E598()
{
  result = qword_2812D05A8;
  if (!qword_2812D05A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812D05A8);
  }

  return result;
}

unint64_t sub_220C3E5EC()
{
  result = qword_2812CE7E0;
  if (!qword_2812CE7E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812CE7E0);
  }

  return result;
}

uint64_t SessionEndData.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7BE98, &qword_220CA61E8);
  v6 = OUTLINED_FUNCTION_3(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  v12 = &v15 - v11;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220C3E598();
  sub_220CA1234();
  if (!v2)
  {
    sub_220C3E7A0();
    sub_220CA1034();
    (*(v8 + 8))(v12, v5);
    *a2 = v16;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_220C3E7A0()
{
  result = qword_27CF7BEA0;
  if (!qword_27CF7BEA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7BEA0);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SessionEndData(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SessionEndData.CodingKeys(_BYTE *result, int a2, int a3)
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

unint64_t sub_220C3E9A8()
{
  result = qword_27CF7BEA8;
  if (!qword_27CF7BEA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7BEA8);
  }

  return result;
}

unint64_t sub_220C3EA00()
{
  result = qword_2812D0598;
  if (!qword_2812D0598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812D0598);
  }

  return result;
}

unint64_t sub_220C3EA58()
{
  result = qword_2812D05A0;
  if (!qword_2812D05A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812D05A0);
  }

  return result;
}

uint64_t ComponentPositionData.init(row:column:)@<X0>(uint64_t result@<X0>, int a2@<W1>, _DWORD *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t sub_220C3EB1C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 7827314 && a2 == 0xE300000000000000;
  if (v3 || (sub_220CA1154() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E6D756C6F63 && a2 == 0xE600000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_220CA1154();

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

uint64_t sub_220C3EBE0(char a1)
{
  if (a1)
  {
    return 0x6E6D756C6F63;
  }

  else
  {
    return 7827314;
  }
}

uint64_t sub_220C3EC14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_220C3EB1C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_220C3EC3C(uint64_t a1)
{
  v2 = sub_220C3EE14();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_220C3EC78(uint64_t a1)
{
  v2 = sub_220C3EE14();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ComponentPositionData.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7BEB0, &qword_220CA63F0);
  v5 = OUTLINED_FUNCTION_3(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  v11 = &v15 - v10;
  v12 = *v1;
  v16 = v1[1];
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220C3EE14();
  sub_220CA1254();
  v18 = 0;
  sub_220CA1114();
  if (!v2)
  {
    v17 = 1;
    sub_220CA1114();
  }

  return (*(v7 + 8))(v11, v4);
}

unint64_t sub_220C3EE14()
{
  result = qword_2812CFC20;
  if (!qword_2812CFC20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812CFC20);
  }

  return result;
}

uint64_t ComponentPositionData.init(from:)@<X0>(uint64_t *a1@<X0>, _DWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7BEB8, &qword_220CA63F8);
  v6 = OUTLINED_FUNCTION_3(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  v12 = &v17 - v11;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220C3EE14();
  sub_220CA1234();
  if (!v2)
  {
    v19 = 0;
    v14 = sub_220CA1044();
    v18 = 1;
    v15 = sub_220CA1044();
    (*(v8 + 8))(v12, v5);
    *a2 = v14;
    a2[1] = v15;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t getEnumTagSinglePayload for ComponentPositionData(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for ComponentPositionData(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
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

  *(result + 8) = v3;
  return result;
}

_BYTE *storeEnumTagSinglePayload for ComponentPositionData.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_220C3F178()
{
  result = qword_27CF7BEC0;
  if (!qword_27CF7BEC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7BEC0);
  }

  return result;
}

unint64_t sub_220C3F1D0()
{
  result = qword_2812CFC10;
  if (!qword_2812CFC10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812CFC10);
  }

  return result;
}

unint64_t sub_220C3F228()
{
  result = qword_2812CFC18;
  if (!qword_2812CFC18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812CFC18);
  }

  return result;
}

uint64_t sub_220C3F2C8(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000014 && 0x8000000220CB5300 == a2)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_220CA1154();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_220C3F368@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_220C3F2C8(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_220C3F394(uint64_t a1)
{
  v2 = sub_220C3F54C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_220C3F3D0(uint64_t a1)
{
  v2 = sub_220C3F54C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ReverseGeocodingEventData.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7BEC8, &qword_220CA6630);
  v4 = OUTLINED_FUNCTION_3(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v4);
  v10 = &v14 - v9;
  v11 = *v1;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220C3F54C();
  sub_220CA1254();
  v15 = v11;
  sub_220C3F5A0();
  sub_220CA1104();
  return (*(v6 + 8))(v10, v3);
}

unint64_t sub_220C3F54C()
{
  result = qword_2812CF468;
  if (!qword_2812CF468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812CF468);
  }

  return result;
}

unint64_t sub_220C3F5A0()
{
  result = qword_27CF7BED0;
  if (!qword_27CF7BED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7BED0);
  }

  return result;
}

uint64_t ReverseGeocodingEventData.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7BED8, &qword_220CA6638);
  v6 = OUTLINED_FUNCTION_3(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  v12 = &v15 - v11;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220C3F54C();
  sub_220CA1234();
  if (!v2)
  {
    sub_220C3F754();
    sub_220CA1034();
    (*(v8 + 8))(v12, v5);
    *a2 = v16;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_220C3F754()
{
  result = qword_27CF7BEE0;
  if (!qword_27CF7BEE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7BEE0);
  }

  return result;
}

unint64_t sub_220C3F7AC()
{
  result = qword_2812CF440;
  if (!qword_2812CF440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812CF440);
  }

  return result;
}

unint64_t sub_220C3F804()
{
  result = qword_2812CF448;
  if (!qword_2812CF448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812CF448);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ReverseGeocodingEventData(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *storeEnumTagSinglePayload for ReverseGeocodingEventData.CodingKeys(_BYTE *result, int a2, int a3)
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

unint64_t sub_220C3FA14()
{
  result = qword_27CF7BEE8;
  if (!qword_27CF7BEE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7BEE8);
  }

  return result;
}

unint64_t sub_220C3FA6C()
{
  result = qword_2812CF458;
  if (!qword_2812CF458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812CF458);
  }

  return result;
}

unint64_t sub_220C3FAC4()
{
  result = qword_2812CF460;
  if (!qword_2812CF460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812CF460);
  }

  return result;
}

uint64_t Assembly.__allocating_init()()
{
  v0 = swift_allocObject();
  Assembly.init()();
  return v0;
}

uint64_t Assembly.deinit()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t Assembly.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

uint64_t NetworkEventData.taskDuration.getter()
{
  result = *(v0 + 40);
  v2 = *(v0 + 48);
  return result;
}

uint64_t NetworkEventData.taskDuration.setter(uint64_t result, char a2)
{
  *(v2 + 40) = result;
  *(v2 + 48) = a2 & 1;
  return result;
}

uint64_t NetworkEventData.bundleIdentifier.getter()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 96);

  return v1;
}

uint64_t NetworkEventData.bundleIdentifier.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 96);

  *(v2 + 88) = a1;
  *(v2 + 96) = a2;
  return result;
}

uint64_t NetworkEventData.providerListData.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(v1 + 104);

  *(v1 + 104) = v2;
  return result;
}

uint64_t NetworkEventData.cdnServer.getter()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 120);

  return v1;
}

uint64_t NetworkEventData.cdnServer.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 120);

  *(v2 + 112) = a1;
  *(v2 + 120) = a2;
  return result;
}

uint64_t NetworkEventData.iterationIndex.getter()
{
  result = *(v0 + 128);
  v2 = *(v0 + 136);
  return result;
}

uint64_t NetworkEventData.iterationIndex.setter(uint64_t result, char a2)
{
  *(v2 + 128) = result;
  *(v2 + 136) = a2 & 1;
  return result;
}

__n128 NetworkEventData.init(startTime:dnsDuration:connectDuration:requestDuration:responseDuration:taskDuration:responseSize:statusCode:errorCode:eventType:cellularRadioAccessTechnology:isProxyConnection:bundleIdentifier:providerListData:cdnServer:iterationIndex:wasRacingRequest:)@<Q0>(unint64_t a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, unint64_t a4@<X3>, unint64_t a5@<X4>, unint64_t a6@<X5>, char a7@<W6>, unint64_t a8@<X7>, __n128 *a9@<X8>, unint64_t a10, unint64_t a11, unsigned __int8 *a12, unsigned __int8 *a13, unsigned __int8 a14, unint64_t a15, unint64_t a16, unint64_t *a17, __n128 a18, unint64_t a19, char a20, unsigned __int8 a21)
{
  v22 = *a12;
  v23 = *a13;
  v24 = *a17;
  a9->n128_u64[0] = a1;
  a9->n128_u64[1] = a2;
  a9[1].n128_u64[0] = a3;
  a9[1].n128_u64[1] = a4;
  a9[2].n128_u64[0] = a5;
  a9[2].n128_u64[1] = a6;
  a9[3].n128_u8[0] = a7 & 1;
  a9[3].n128_u64[1] = a8;
  a9[4].n128_u64[0] = a10;
  a9[4].n128_u64[1] = a11;
  a9[5].n128_u8[0] = v22;
  a9[5].n128_u8[1] = v23;
  a9[5].n128_u8[2] = a14;
  a9[5].n128_u64[1] = a15;
  a9[6].n128_u64[0] = a16;

  a9[6].n128_u64[1] = v24;
  result = a18;
  a9[7] = a18;
  a9[8].n128_u64[0] = a19;
  a9[8].n128_u8[8] = a20 & 1;
  a9[8].n128_u8[9] = a21;
  return result;
}

uint64_t sub_220C400C8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6D69547472617473 && a2 == 0xE900000000000065;
  if (v4 || (sub_220CA1154() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x7461727544736E64 && a2 == 0xEB000000006E6F69;
    if (v6 || (sub_220CA1154() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x447463656E6E6F63 && a2 == 0xEF6E6F6974617275;
      if (v7 || (sub_220CA1154() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x4474736575716572 && a2 == 0xEF6E6F6974617275;
        if (v8 || (sub_220CA1154() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0xD000000000000010 && 0x8000000220CB5350 == a2;
          if (v9 || (sub_220CA1154() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x617275446B736174 && a2 == 0xEC0000006E6F6974;
            if (v10 || (sub_220CA1154() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x65736E6F70736572 && a2 == 0xEC000000657A6953;
              if (v11 || (sub_220CA1154() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0x6F43737574617473 && a2 == 0xEA00000000006564;
                if (v12 || (sub_220CA1154() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0x646F43726F727265 && a2 == 0xE900000000000065;
                  if (v13 || (sub_220CA1154() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 0x707954746E657665 && a2 == 0xE900000000000065;
                    if (v14 || (sub_220CA1154() & 1) != 0)
                    {

                      return 9;
                    }

                    else
                    {
                      v15 = a1 == 0xD00000000000001DLL && 0x8000000220CB5030 == a2;
                      if (v15 || (sub_220CA1154() & 1) != 0)
                      {

                        return 10;
                      }

                      else
                      {
                        v16 = a1 == 0xD000000000000011 && 0x8000000220CB5370 == a2;
                        if (v16 || (sub_220CA1154() & 1) != 0)
                        {

                          return 11;
                        }

                        else
                        {
                          v17 = a1 == 0xD000000000000010 && 0x8000000220CB5050 == a2;
                          if (v17 || (sub_220CA1154() & 1) != 0)
                          {

                            return 12;
                          }

                          else
                          {
                            v18 = a1 == 0xD000000000000010 && 0x8000000220CB5390 == a2;
                            if (v18 || (sub_220CA1154() & 1) != 0)
                            {

                              return 13;
                            }

                            else
                            {
                              v19 = a1 == 0x65767265536E6463 && a2 == 0xE900000000000072;
                              if (v19 || (sub_220CA1154() & 1) != 0)
                              {

                                return 14;
                              }

                              else
                              {
                                v20 = a1 == 0x6F69746172657469 && a2 == 0xEE007865646E496ELL;
                                if (v20 || (sub_220CA1154() & 1) != 0)
                                {

                                  return 15;
                                }

                                else if (a1 == 0xD000000000000010 && 0x8000000220CB4FF0 == a2)
                                {

                                  return 16;
                                }

                                else
                                {
                                  v22 = sub_220CA1154();

                                  if (v22)
                                  {
                                    return 16;
                                  }

                                  else
                                  {
                                    return 17;
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
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_220C40600(char a1)
{
  result = 0x6D69547472617473;
  switch(a1)
  {
    case 1:
      result = 0x7461727544736E64;
      break;
    case 2:
      v3 = 0x63656E6E6F63;
      goto LABEL_12;
    case 3:
      v3 = 0x736575716572;
LABEL_12:
      result = v3 & 0xFFFFFFFFFFFFLL | 0x4474000000000000;
      break;
    case 4:
      result = 0xD000000000000010;
      break;
    case 5:
      result = 0x617275446B736174;
      break;
    case 6:
      result = 0x65736E6F70736572;
      break;
    case 7:
      result = 0x6F43737574617473;
      break;
    case 8:
      result = 0x646F43726F727265;
      break;
    case 9:
      result = 0x707954746E657665;
      break;
    case 10:
      result = 0xD00000000000001DLL;
      break;
    case 11:
      result = 0xD000000000000011;
      break;
    case 12:
      result = 0xD000000000000010;
      break;
    case 13:
      result = 0xD000000000000010;
      break;
    case 14:
      result = 0x65767265536E6463;
      break;
    case 15:
      result = 0x6F69746172657469;
      break;
    case 16:
      result = 0xD000000000000010;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_220C407F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_220C400C8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_220C40820@<X0>(_BYTE *a1@<X8>)
{
  result = sub_220C405F8();
  *a1 = result;
  return result;
}

uint64_t sub_220C40848(uint64_t a1)
{
  v2 = sub_220C40D10();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_220C40884(uint64_t a1)
{
  v2 = sub_220C40D10();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t NetworkEventData.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7BEF8, &qword_220CA68A0);
  v4 = OUTLINED_FUNCTION_3(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v4);
  v10 = v33 - v9;
  v12 = *v1;
  v11 = v1[1];
  v13 = v1[3];
  v47 = v1[2];
  v48 = v11;
  v46 = v13;
  v14 = v1[4];
  v43 = v1[5];
  v44 = v14;
  v51 = *(v1 + 48);
  v15 = v1[7];
  v41 = v1[8];
  v42 = v15;
  v40 = v1[9];
  LODWORD(v15) = *(v1 + 80);
  v38 = *(v1 + 81);
  v39 = v15;
  v37 = *(v1 + 82);
  v16 = v1[12];
  v35 = v1[11];
  v36 = v16;
  v17 = v1[13];
  v33[0] = v1[14];
  v18 = v1[16];
  v33[1] = v1[15];
  v34 = v17;
  v45 = v18;
  v19 = *(v1 + 136);
  v20 = *(v1 + 137);
  v22 = a1[3];
  v21 = a1[4];
  v23 = a1;
  v25 = v24;
  __swift_project_boxed_opaque_existential_1(v23, v22);
  sub_220C40D10();
  sub_220CA1254();
  LOBYTE(v50) = 0;
  v26 = v49;
  sub_220CA1124();
  if (v26)
  {
    v27 = *(v6 + 8);
    v28 = v10;
    v29 = v25;
  }

  else
  {
    LODWORD(v49) = v19;
    OUTLINED_FUNCTION_6_7(1);
    sub_220CA1124();
    OUTLINED_FUNCTION_6_7(2);
    v48 = v10;
    sub_220CA1124();
    OUTLINED_FUNCTION_6_7(3);
    OUTLINED_FUNCTION_2_8();
    sub_220CA1124();
    OUTLINED_FUNCTION_6_7(4);
    OUTLINED_FUNCTION_2_8();
    sub_220CA1124();
    OUTLINED_FUNCTION_8_5(5);
    OUTLINED_FUNCTION_5_6();
    sub_220CA10B4();
    OUTLINED_FUNCTION_6_7(6);
    OUTLINED_FUNCTION_2_8();
    sub_220CA1124();
    OUTLINED_FUNCTION_6_7(7);
    OUTLINED_FUNCTION_2_8();
    sub_220CA1124();
    OUTLINED_FUNCTION_6_7(8);
    OUTLINED_FUNCTION_2_8();
    sub_220CA1124();
    LOBYTE(v50) = v39;
    v52 = 9;
    sub_220C40D64();
    OUTLINED_FUNCTION_2_8();
    sub_220CA1104();
    LOBYTE(v50) = v38;
    v52 = 10;
    sub_220C01050();
    OUTLINED_FUNCTION_2_8();
    sub_220CA1104();
    OUTLINED_FUNCTION_6_7(11);
    OUTLINED_FUNCTION_5_6();
    sub_220CA1084();
    OUTLINED_FUNCTION_8_5(12);
    OUTLINED_FUNCTION_5_6();
    sub_220CA10C4();
    v31 = v34;
    v50 = v34;
    v52 = 13;
    v32 = sub_220C40DB8();

    OUTLINED_FUNCTION_5_6();
    sub_220CA1094();

    if (v32)
    {
      v27 = *(v6 + 8);
      v28 = v48;
    }

    else
    {
      OUTLINED_FUNCTION_8_5(14);
      OUTLINED_FUNCTION_5_6();
      sub_220CA1074();
      OUTLINED_FUNCTION_8_5(15);
      OUTLINED_FUNCTION_5_6();
      sub_220CA10B4();
      OUTLINED_FUNCTION_6_7(16);
      OUTLINED_FUNCTION_5_6();
      sub_220CA1084();
      v27 = *(v6 + 8);
      v28 = v31;
    }

    v29 = v25;
  }

  return v27(v28, v29);
}

unint64_t sub_220C40D10()
{
  result = qword_2812D0220;
  if (!qword_2812D0220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812D0220);
  }

  return result;
}

unint64_t sub_220C40D64()
{
  result = qword_2812D01F0;
  if (!qword_2812D01F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812D01F0);
  }

  return result;
}

unint64_t sub_220C40DB8()
{
  result = qword_2812D01C0;
  if (!qword_2812D01C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812D01C0);
  }

  return result;
}

uint64_t NetworkEventData.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7BF00, &qword_220CA68A8);
  v5 = OUTLINED_FUNCTION_3(v62);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220C40D10();
  sub_220CA1234();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    v35 = a2;
    LOBYTE(v37[0]) = 0;
    OUTLINED_FUNCTION_4_9();
    v9 = sub_220CA1054();
    OUTLINED_FUNCTION_0_12(1);
    v34 = sub_220CA1054();
    OUTLINED_FUNCTION_0_12(2);
    v33 = sub_220CA1054();
    OUTLINED_FUNCTION_0_12(3);
    v32 = sub_220CA1054();
    OUTLINED_FUNCTION_0_12(4);
    v31 = sub_220CA1054();
    OUTLINED_FUNCTION_0_12(5);
    v30 = sub_220CA0FE4();
    v61 = v10 & 1;
    OUTLINED_FUNCTION_0_12(6);
    v29 = sub_220CA1054();
    OUTLINED_FUNCTION_0_12(7);
    v28 = sub_220CA1054();
    OUTLINED_FUNCTION_0_12(8);
    v27 = sub_220CA1054();
    v26 = v9;
    sub_220C41384();
    OUTLINED_FUNCTION_4_9();
    sub_220CA1034();
    sub_220C327F4();
    OUTLINED_FUNCTION_4_9();
    sub_220CA1034();
    OUTLINED_FUNCTION_1_11(11);
    v25 = sub_220CA0FB4();
    OUTLINED_FUNCTION_1_11(12);
    v24 = sub_220CA0FF4();
    v12 = v11;
    LOBYTE(v36[0]) = 13;
    sub_220C413D8();
    OUTLINED_FUNCTION_4_9();
    sub_220CA0FC4();
    v23 = v37[0];

    OUTLINED_FUNCTION_1_11(14);
    v22 = sub_220CA0FA4();
    v14 = v13;
    OUTLINED_FUNCTION_1_11(15);
    v21 = sub_220CA0FE4();
    v57 = v15 & 1;
    v56 = 16;
    OUTLINED_FUNCTION_4_9();
    v16 = sub_220CA0FB4();
    v17 = OUTLINED_FUNCTION_3_6();
    v18(v17);
    v36[0] = v26;
    v36[1] = v34;
    v36[2] = v33;
    v36[3] = v32;
    v36[4] = v31;
    v36[5] = v30;
    v20 = v61;
    LOBYTE(v36[6]) = v61;
    v36[7] = v29;
    v36[8] = v28;
    v36[9] = v27;
    LOWORD(v36[10]) = 0;
    BYTE2(v36[10]) = v25;
    v36[11] = v24;
    v36[12] = v12;
    v36[13] = v23;
    v36[14] = v22;
    v36[15] = v14;
    v36[16] = v21;
    LODWORD(v62) = v57;
    LOBYTE(v36[17]) = v57;
    BYTE1(v36[17]) = v16;
    memcpy(v35, v36, 0x8AuLL);
    sub_220C4142C(v36, v37);
    __swift_destroy_boxed_opaque_existential_1(a1);
    v37[0] = v26;
    v37[1] = v34;
    v37[2] = v33;
    v37[3] = v32;
    v37[4] = v31;
    v37[5] = v30;
    v38 = v20;
    *v39 = *v60;
    *&v39[3] = *&v60[3];
    v40 = v29;
    v41 = v28;
    v42 = v27;
    v43 = 0;
    v44 = 0;
    v45 = v25;
    v47 = v59;
    v46 = v58;
    v48 = v24;
    v49 = v12;
    v50 = v23;
    v51 = v22;
    v52 = v14;
    v53 = v21;
    v54 = v62;
    v55 = v16;
    return sub_220C41464(v37);
  }
}

unint64_t sub_220C41384()
{
  result = qword_27CF7BF08;
  if (!qword_27CF7BF08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7BF08);
  }

  return result;
}

unint64_t sub_220C413D8()
{
  result = qword_27CF7BF10;
  if (!qword_27CF7BF10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7BF10);
  }

  return result;
}

unint64_t sub_220C41498()
{
  result = qword_2812D01F8;
  if (!qword_2812D01F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812D01F8);
  }

  return result;
}

unint64_t sub_220C414F0()
{
  result = qword_2812D0200;
  if (!qword_2812D0200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812D0200);
  }

  return result;
}

uint64_t sub_220C4157C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 138))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 96);
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

uint64_t sub_220C415BC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 136) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 138) = 1;
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
      *(result + 96) = (a2 - 1);
      return result;
    }

    *(result + 138) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ComponentType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF0)
  {
    if (a2 + 16 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 16) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 17;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x11;
  v5 = v6 - 17;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for NetworkEventData.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 16 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 16) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF0)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xEF)
  {
    v6 = ((a2 - 240) >> 8) + 1;
    *result = a2 + 16;
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
          *result = a2 + 16;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_220C41798()
{
  result = qword_27CF7BF18;
  if (!qword_27CF7BF18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7BF18);
  }

  return result;
}

unint64_t sub_220C417F0()
{
  result = qword_2812D0210;
  if (!qword_2812D0210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812D0210);
  }

  return result;
}

unint64_t sub_220C41848()
{
  result = qword_2812D0218;
  if (!qword_2812D0218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812D0218);
  }

  return result;
}

uint64_t sub_220C4189C()
{
  v1 = *(v0 + 16);

  __swift_destroy_boxed_opaque_existential_1((v0 + 24));
  __swift_destroy_boxed_opaque_existential_1((v0 + 64));
  __swift_destroy_boxed_opaque_existential_1((v0 + 104));
  __swift_destroy_boxed_opaque_existential_1((v0 + 144));
  __swift_destroy_boxed_opaque_existential_1((v0 + 184));
  __swift_destroy_boxed_opaque_existential_1((v0 + 224));

  v2 = *(v0 + 272);

  v3 = *(v0 + 280);

  v4 = *(v0 + 288);

  return v0;
}

uint64_t sub_220C4190C()
{
  sub_220C4189C();

  return MEMORY[0x2821FE8D8](v0, 296, 7);
}

uint64_t sub_220C41940()
{
  v1 = v0[7];
  __swift_project_boxed_opaque_existential_1(v0 + 3, v0[6]);
  return sub_220CA06F4();
}

uint64_t sub_220C419CC(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v8 = *(a3 + 264);
  dispatch_group_enter(v8);
  v9 = *(a3 + 16);
  sub_220CA0104();
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = a4;
  *(v10 + 32) = a3;
  *(v10 + 40) = v8;
  *(v10 + 48) = a1;
  *(v10 + 56) = a2;

  v11 = v8;

  sub_220CA0444();
}

uint64_t sub_220C41AA8(uint64_t a1, uint64_t a2, char a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  v12 = sub_220C9F7D4();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v20 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = swift_allocObject();
  *(v17 + 16) = a3;
  *(v17 + 24) = a4;
  *(v17 + 32) = a5;
  *(v17 + 40) = a6;
  *(v17 + 48) = a7;

  v18 = a5;

  sub_220C9F7C4();
  sub_220CA00A4();

  return (*(v13 + 8))(v16, v12);
}

uint64_t sub_220C41BF8(char a1, uint64_t a2, NSObject *a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_220CA0B54();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_220CA0B94();
  v14 = *(v23 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v23);
  v17 = &v22 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    sub_220BFBA88();
  }

  dispatch_group_leave(a3);
  sub_220BFA50C();
  v18 = sub_220CA0DE4();
  v19 = swift_allocObject();
  *(v19 + 16) = a4;
  *(v19 + 24) = a5;
  aBlock[4] = sub_220C41F38;
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_220C01EFC;
  aBlock[3] = &block_descriptor_13;
  v20 = _Block_copy(aBlock);

  sub_220CA0B64();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_220BFF484();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7BF30, &qword_220CA6BB0);
  sub_220BFF510();
  sub_220CA0F14();
  MEMORY[0x223D95170](0, v17, v13, v20);
  _Block_release(v20);

  (*(v10 + 8))(v13, v9);
  return (*(v14 + 8))(v17, v23);
}

uint64_t sub_220C41EA0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7BF38, &qword_220CA6BB8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_220C41F38()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

WeatherAnalytics::MapViewOrigin_optional __swiftcall MapViewOrigin.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_220CA0F84();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t MapViewOrigin.rawValue.getter()
{
  v1 = 0x7261626C6F6F74;
  if (*v0 != 1)
  {
    v1 = 0x6E656E6F706D6F63;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6E776F6E6B6E75;
  }
}

uint64_t sub_220C42024(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = *a1;
  return sub_220C3BC80();
}

unint64_t sub_220C42034()
{
  result = qword_27CF7BF40;
  if (!qword_27CF7BF40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7BF40);
  }

  return result;
}

uint64_t sub_220C420AC@<X0>(uint64_t *a1@<X8>)
{
  result = MapViewOrigin.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

_BYTE *storeEnumTagSinglePayload for MapViewOrigin(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_220C42260()
{
  result = qword_27CF7BF48;
  if (!qword_27CF7BF48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7BF48);
  }

  return result;
}

uint64_t sub_220C4237C()
{
  v0 = sub_220CA0254();
  __swift_allocate_value_buffer(v0, qword_27CF7BF80);
  __swift_project_value_buffer(v0, qword_27CF7BF80);
  return sub_220CA0244();
}

uint64_t CurrentLocationUpdateEvent.timedData.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B610, &qword_220CA1EB0);
  OUTLINED_FUNCTION_1(v1);
  v3 = *(v2 + 16);
  v4 = OUTLINED_FUNCTION_6_0();

  return v5(v4, v0);
}

uint64_t CurrentLocationUpdateEvent.timedData.setter(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B610, &qword_220CA1EB0);
  v4 = OUTLINED_FUNCTION_1(v3);
  v6 = *(v5 + 40);

  return v6(v1, a1, v4);
}

uint64_t CurrentLocationUpdateEvent.privateUserData.getter()
{
  v0 = *(type metadata accessor for CurrentLocationUpdateEvent(0) + 20);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B7F0, &qword_220CA3150);
  OUTLINED_FUNCTION_1(v1);
  v3 = *(v2 + 16);
  v4 = OUTLINED_FUNCTION_6_0();

  return v5(v4);
}

uint64_t CurrentLocationUpdateEvent.privateUserData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for CurrentLocationUpdateEvent(0) + 20);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B7F0, &qword_220CA3150);
  OUTLINED_FUNCTION_1(v4);
  v6 = *(v5 + 40);

  return v6(v1 + v3, a1);
}

uint64_t CurrentLocationUpdateEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CEACF8];
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B610, &qword_220CA1EB0);
  OUTLINED_FUNCTION_1(v3);
  (*(v4 + 104))(a1, v2);
  v5 = *(type metadata accessor for CurrentLocationUpdateEvent(0) + 20);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B7F0, &qword_220CA3150);
  OUTLINED_FUNCTION_1(v6);
  v8 = *(v7 + 104);

  return v8(a1 + v5, v2);
}

uint64_t CurrentLocationUpdateEvent.Model.timedData.getter()
{
  v1 = sub_220CA04D4();
  OUTLINED_FUNCTION_1(v1);
  v3 = *(v2 + 16);
  v4 = OUTLINED_FUNCTION_6_0();

  return v5(v4, v0);
}

uint64_t CurrentLocationUpdateEvent.Model.privateUserData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for CurrentLocationUpdateEvent.Model(0) + 20));
  v5 = *v3;
  v4 = v3[1];
  v6 = *(v3 + 4);
  LOBYTE(v3) = *(v3 + 20);
  *a1 = v5;
  *(a1 + 8) = v4;
  *(a1 + 16) = v6;
  *(a1 + 20) = v3;
}

uint64_t CurrentLocationUpdateEvent.Model.init(timedData:privateUserData:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a2;
  v6 = a2[1];
  v7 = *(a2 + 4);
  v8 = *(a2 + 20);
  v9 = sub_220CA04D4();
  OUTLINED_FUNCTION_1(v9);
  (*(v10 + 32))(a3, a1);
  result = type metadata accessor for CurrentLocationUpdateEvent.Model(0);
  v12 = a3 + *(result + 20);
  *v12 = v5;
  *(v12 + 8) = v6;
  *(v12 + 16) = v7;
  *(v12 + 20) = v8;
  return result;
}

uint64_t sub_220C42888(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x74614464656D6974 && a2 == 0xE900000000000061;
  if (v4 || (sub_220CA1154() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x5565746176697270 && a2 == 0xEF61746144726573)
  {

    return 1;
  }

  else
  {
    v7 = sub_220CA1154();

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

uint64_t sub_220C42960(char a1)
{
  if (a1)
  {
    return 0x5565746176697270;
  }

  else
  {
    return 0x74614464656D6974;
  }
}

uint64_t sub_220C429B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_220C42888(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_220C429D8(uint64_t a1)
{
  v2 = sub_220C42C28();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_220C42A14(uint64_t a1)
{
  v2 = sub_220C42C28();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t CurrentLocationUpdateEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7BF98, &qword_220CA6CE0);
  v6 = OUTLINED_FUNCTION_3(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  v12 = &v19[-v11];
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220C42C28();
  sub_220CA1254();
  LOBYTE(v20) = 0;
  sub_220CA04D4();
  sub_220C315AC(&qword_2812D0D80);
  sub_220CA1104();
  if (!v2)
  {
    v14 = (v3 + *(type metadata accessor for CurrentLocationUpdateEvent.Model(0) + 20));
    v15 = *v14;
    v16 = v14[1];
    v17 = *(v14 + 4);
    LOBYTE(v14) = *(v14 + 20);
    v20 = v15;
    v21 = v16;
    v22 = v17;
    v23 = v14;
    v19[7] = 1;
    sub_220BFF788();

    sub_220CA1104();
  }

  return (*(v8 + 8))(v12, v5);
}

unint64_t sub_220C42C28()
{
  result = qword_27CF7BFA0;
  if (!qword_27CF7BFA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7BFA0);
  }

  return result;
}

uint64_t CurrentLocationUpdateEvent.Model.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v34 = a2;
  v38 = sub_220CA04D4();
  v4 = OUTLINED_FUNCTION_3(v38);
  v35 = v5;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7BFA8, &qword_220CA6CE8);
  v36 = OUTLINED_FUNCTION_3(v10);
  v37 = v11;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v36);
  updated = type metadata accessor for CurrentLocationUpdateEvent.Model(0);
  v15 = OUTLINED_FUNCTION_1(updated);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v32 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220C42C28();
  sub_220CA1234();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v33 = updated;
  v21 = v35;
  LOBYTE(v39) = 0;
  sub_220C315AC(&qword_2812D0D78);
  v22 = v38;
  sub_220CA1034();
  v23 = *(v21 + 32);
  v32 = v19;
  v23(v19, v9, v22);
  v43 = 1;
  sub_220BFF730();
  sub_220CA1034();
  v24 = OUTLINED_FUNCTION_1_12();
  v25(v24);
  v26 = v40;
  v27 = v41;
  v28 = v42;
  v29 = v32;
  v30 = &v32[*(v33 + 20)];
  *v30 = v39;
  *(v30 + 1) = v26;
  *(v30 + 4) = v27;
  v30[20] = v28;
  sub_220C42F98(v29, v34);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_220C42FFC(v29);
}

uint64_t sub_220C42F98(uint64_t a1, uint64_t a2)
{
  updated = type metadata accessor for CurrentLocationUpdateEvent.Model(0);
  (*(*(updated - 8) + 16))(a2, a1, updated);
  return a2;
}

uint64_t sub_220C42FFC(uint64_t a1)
{
  updated = type metadata accessor for CurrentLocationUpdateEvent.Model(0);
  (*(*(updated - 8) + 8))(a1, updated);
  return a1;
}

void sub_220C430C0()
{
  sub_220C05010();
  if (v0 <= 0x3F)
  {
    sub_220C43144();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_220C43144()
{
  if (!qword_2812D0E18)
  {
    sub_220BFF730();
    sub_220BFF788();
    v0 = sub_220CA0044();
    if (!v1)
    {
      atomic_store(v0, &qword_2812D0E18);
    }
  }
}

uint64_t sub_220C431D4()
{
  result = sub_220CA04D4();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for CurrentLocationUpdateEvent.Model.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_220C43328()
{
  result = qword_27CF7BFD0;
  if (!qword_27CF7BFD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7BFD0);
  }

  return result;
}

unint64_t sub_220C43380()
{
  result = qword_27CF7BFD8;
  if (!qword_27CF7BFD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7BFD8);
  }

  return result;
}

unint64_t sub_220C433D8()
{
  result = qword_27CF7BFE0;
  if (!qword_27CF7BFE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7BFE0);
  }

  return result;
}

uint64_t sub_220C4346C(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x6C6576656CLL && a2 == 0xE500000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_220CA1154();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_220C434F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_220C4346C(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_220C43524(uint64_t a1)
{
  v2 = sub_220C436C4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_220C43560(uint64_t a1)
{
  v2 = sub_220C436C4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ZoomData.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7BFE8, &qword_220CA6F00);
  v5 = OUTLINED_FUNCTION_0(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  v11 = &v15 - v10;
  v12 = *v1;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220C436C4();
  sub_220CA1254();
  sub_220CA10F4();
  return (*(v7 + 8))(v11, v2);
}

unint64_t sub_220C436C4()
{
  result = qword_27CF7BFF0;
  if (!qword_27CF7BFF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7BFF0);
  }

  return result;
}

uint64_t ZoomData.init(from:)@<X0>(uint64_t *a1@<X0>, _DWORD *a2@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7BFF8, &qword_220CA6F08);
  v7 = OUTLINED_FUNCTION_0(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v7);
  v13 = &v18 - v12;
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220C436C4();
  sub_220CA1234();
  if (!v2)
  {
    sub_220CA1024();
    v16 = v15;
    (*(v9 + 8))(v13, v3);
    *a2 = v16;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_220C43868()
{
  result = qword_27CF7C000;
  if (!qword_27CF7C000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7C000);
  }

  return result;
}

unint64_t sub_220C438C0()
{
  result = qword_27CF7C008;
  if (!qword_27CF7C008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7C008);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ZoomData.CodingKeys(_BYTE *result, int a2, int a3)
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

unint64_t sub_220C43A04()
{
  result = qword_27CF7C010;
  if (!qword_27CF7C010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7C010);
  }

  return result;
}

unint64_t sub_220C43A5C()
{
  result = qword_27CF7C018;
  if (!qword_27CF7C018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7C018);
  }

  return result;
}

unint64_t sub_220C43AB4()
{
  result = qword_27CF7C020;
  if (!qword_27CF7C020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7C020);
  }

  return result;
}

uint64_t ReverseGeocodingFailedEventData.errorDescription.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t ReverseGeocodingFailedEventData.errorDescription.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t sub_220C43BE0(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000010 && 0x8000000220CB54E0 == a2;
  if (v3 || (sub_220CA1154() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000014 && 0x8000000220CB5300 == a2)
  {

    return 1;
  }

  else
  {
    v7 = sub_220CA1154();

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

unint64_t sub_220C43CB4(char a1)
{
  if (a1)
  {
    return 0xD000000000000014;
  }

  else
  {
    return 0xD000000000000010;
  }
}

uint64_t sub_220C43CF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_220C43BE0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_220C43D1C(uint64_t a1)
{
  v2 = sub_220C43F1C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_220C43D58(uint64_t a1)
{
  v2 = sub_220C43F1C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ReverseGeocodingFailedEventData.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7C028, &qword_220CA7100);
  v5 = OUTLINED_FUNCTION_3(v4);
  v16 = v6;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = &v15 - v9;
  v11 = *v1;
  v12 = v1[1];
  v17 = *(v1 + 16);
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220C43F1C();
  sub_220CA1254();
  v20 = 0;
  sub_220CA10C4();
  if (!v2)
  {
    v19 = v17;
    v18 = 1;
    sub_220C3F5A0();
    sub_220CA1104();
  }

  return (*(v16 + 8))(v10, v4);
}

unint64_t sub_220C43F1C()
{
  result = qword_2812CEC38;
  if (!qword_2812CEC38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812CEC38);
  }

  return result;
}

uint64_t ReverseGeocodingFailedEventData.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7C030, &qword_220CA7108);
  v6 = OUTLINED_FUNCTION_3(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220C43F1C();
  sub_220CA1234();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v10 = sub_220CA0FF4();
  v12 = v11;
  sub_220C3F754();
  sub_220CA1034();
  v13 = OUTLINED_FUNCTION_0_3();
  v14(v13);
  *a2 = v10;
  *(a2 + 8) = v12;
  *(a2 + 16) = v16;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_220C4418C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 17))
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

uint64_t sub_220C441CC(uint64_t result, int a2, int a3)
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

_BYTE *storeEnumTagSinglePayload for ReverseGeocodingFailedEventData.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_220C442FC()
{
  result = qword_27CF7C038;
  if (!qword_27CF7C038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7C038);
  }

  return result;
}

unint64_t sub_220C44354()
{
  result = qword_2812CEC28;
  if (!qword_2812CEC28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812CEC28);
  }

  return result;
}

unint64_t sub_220C443AC()
{
  result = qword_2812CEC30;
  if (!qword_2812CEC30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812CEC30);
  }

  return result;
}

uint64_t sub_220C44440(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x6176414951417369 && a2 == 0xEE00656C62616C69)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_220CA1154();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_220C444E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_220C44440(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_220C44514(uint64_t a1)
{
  v2 = sub_220C446B4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_220C44550(uint64_t a1)
{
  v2 = sub_220C446B4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t AQIAvailabilityData.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7C040, &qword_220CA7330);
  v5 = OUTLINED_FUNCTION_0(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  v11 = &v15 - v10;
  v12 = *v1;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220C446B4();
  sub_220CA1254();
  sub_220CA10D4();
  return (*(v7 + 8))(v11, v2);
}

unint64_t sub_220C446B4()
{
  result = qword_2812CFDC0;
  if (!qword_2812CFDC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812CFDC0);
  }

  return result;
}

uint64_t AQIAvailabilityData.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7C048, &qword_220CA7338);
  v7 = OUTLINED_FUNCTION_0(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v7);
  v13 = &v17 - v12;
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220C446B4();
  sub_220CA1234();
  if (!v2)
  {
    v15 = sub_220CA1004();
    (*(v9 + 8))(v13, v3);
    *a2 = v15 & 1;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t getEnumTagSinglePayload for AQIAvailabilityData(unsigned __int8 *a1, unsigned int a2)
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
  v5 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for AQIAvailabilityData(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *storeEnumTagSinglePayload for AQIAvailabilityData.CodingKeys(_BYTE *result, int a2, int a3)
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

unint64_t sub_220C44AAC()
{
  result = qword_27CF7C050;
  if (!qword_27CF7C050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7C050);
  }

  return result;
}

unint64_t sub_220C44B04()
{
  result = qword_2812CFDB0;
  if (!qword_2812CFDB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812CFDB0);
  }

  return result;
}

unint64_t sub_220C44B5C()
{
  result = qword_2812CFDB8;
  if (!qword_2812CFDB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812CFDB8);
  }

  return result;
}

uint64_t sub_220C44BB0()
{
  v1 = sub_220C9FB84();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = v0[7];
  __swift_project_boxed_opaque_existential_1(v0 + 3, v0[6]);
  sub_220C9FD94();
  sub_220C02C4C();
  sub_220C9FB64();
  return (*(v2 + 8))(v5, v1);
}

uint64_t sub_220C44DAC()
{
  v0 = sub_220C9FD04();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_220C44BB0();
  sub_220C9FCD4();
  return (*(v1 + 8))(v4, v0);
}

uint64_t sub_220C44EFC()
{
  sub_220C9FAA4();
  sub_220C9FA94();
  v0 = sub_220C9FA84();

  return v0;
}

uint64_t sub_220C44F50()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 24));

  return MEMORY[0x2821FE8D8](v0, 64, 7);
}

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_220C44F9C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_220C44FDC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_220C4508C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = sub_220CA0A84();
  v6 = __swift_project_value_buffer(v5, a2);
  v7 = *(*(v5 - 8) + 16);

  return v7(a3, v6, v5);
}

uint64_t AQIData.scale.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return v1;
}

uint64_t AQIData.scale.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16);

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

uint64_t AQIData.init(index:category:scale:providerDataOrigination:)@<X0>(uint64_t result@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X4>, uint64_t a6@<X8>)
{
  v6 = *a5;
  *a6 = result;
  *(a6 + 4) = a2;
  *(a6 + 8) = a3;
  *(a6 + 16) = a4;
  *(a6 + 24) = v6;
  return result;
}

uint64_t sub_220C45260(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7865646E69 && a2 == 0xE500000000000000;
  if (v4 || (sub_220CA1154() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x79726F6765746163 && a2 == 0xE800000000000000;
    if (v6 || (sub_220CA1154() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x656C616373 && a2 == 0xE500000000000000;
      if (v7 || (sub_220CA1154() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0xD000000000000017 && 0x8000000220CB55B0 == a2)
      {

        return 3;
      }

      else
      {
        v9 = sub_220CA1154();

        if (v9)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

unint64_t sub_220C453B8(char a1)
{
  result = 0x7865646E69;
  switch(a1)
  {
    case 1:
      result = 0x79726F6765746163;
      break;
    case 2:
      result = 0x656C616373;
      break;
    case 3:
      result = 0xD000000000000017;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_220C4543C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_220C45260(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_220C45464(uint64_t a1)
{
  v2 = sub_220C456A8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_220C454A0(uint64_t a1)
{
  v2 = sub_220C456A8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t AQIData.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7C058, &qword_220CA7600);
  v5 = OUTLINED_FUNCTION_3(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  v11 = &v17 - v10;
  v12 = *v1;
  v20 = v1[1];
  v13 = *(v1 + 1);
  v18 = *(v1 + 2);
  v19 = v13;
  HIDWORD(v17) = *(v1 + 24);
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220C456A8();
  sub_220CA1254();
  v25 = 0;
  OUTLINED_FUNCTION_1_2();
  sub_220CA1114();
  if (!v2)
  {
    v15 = BYTE4(v17);
    v24 = 1;
    OUTLINED_FUNCTION_1_2();
    sub_220CA1114();
    v23 = 2;
    sub_220CA10C4();
    v22 = v15;
    v21 = 3;
    sub_220C456FC();
    OUTLINED_FUNCTION_1_2();
    sub_220CA1104();
  }

  return (*(v7 + 8))(v11, v4);
}

unint64_t sub_220C456A8()
{
  result = qword_2812CE858[0];
  if (!qword_2812CE858[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2812CE858);
  }

  return result;
}

unint64_t sub_220C456FC()
{
  result = qword_2812CF750;
  if (!qword_2812CF750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812CF750);
  }

  return result;
}

uint64_t AQIData.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7C060, &qword_220CA7608);
  v6 = OUTLINED_FUNCTION_3(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220C456A8();
  sub_220CA1234();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  OUTLINED_FUNCTION_2_9();
  v10 = sub_220CA1044();
  OUTLINED_FUNCTION_2_9();
  v11 = sub_220CA1044();
  OUTLINED_FUNCTION_2_9();
  v16 = sub_220CA0FF4();
  v17 = v12;
  sub_220C4596C();
  sub_220CA1034();
  v13 = OUTLINED_FUNCTION_0_10();
  v14(v13);
  *a2 = v10;
  *(a2 + 4) = v11;
  *(a2 + 8) = v16;
  *(a2 + 16) = v17;
  *(a2 + 24) = v18;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_220C4596C()
{
  result = qword_27CF7C068;
  if (!qword_27CF7C068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7C068);
  }

  return result;
}

__n128 __swift_memcpy25_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_220C45A0C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 25))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 16);
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

uint64_t sub_220C45A4C(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

_BYTE *storeEnumTagSinglePayload for AQIData.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_220C45B80()
{
  result = qword_27CF7C070;
  if (!qword_27CF7C070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7C070);
  }

  return result;
}

unint64_t sub_220C45BD8()
{
  result = qword_2812CE848;
  if (!qword_2812CE848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812CE848);
  }

  return result;
}

unint64_t sub_220C45C30()
{
  result = qword_2812CE850;
  if (!qword_2812CE850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812CE850);
  }

  return result;
}

WeatherAnalytics::WeatherDataLoadEventConclusion_optional __swiftcall WeatherDataLoadEventConclusion.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_220CA0F84();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t WeatherDataLoadEventConclusion.rawValue.getter()
{
  v1 = 0x64656C696166;
  if (*v0 != 1)
  {
    v1 = 0x656E6F646E616261;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6574656C706D6F63;
  }
}

unint64_t sub_220C45D48()
{
  result = qword_27CF7C078;
  if (!qword_27CF7C078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7C078);
  }

  return result;
}

uint64_t sub_220C45DC0@<X0>(uint64_t *a1@<X8>)
{
  result = WeatherDataLoadEventConclusion.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

_BYTE *storeEnumTagSinglePayload for WeatherDataLoadEventConclusion(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_220C45F74()
{
  result = qword_2812D09A8;
  if (!qword_2812D09A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812D09A8);
  }

  return result;
}

WeatherAnalytics::EmbedState_optional __swiftcall EmbedState.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_220CA0F84();

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

  *v2 = v5;
  return result;
}

uint64_t EmbedState.rawValue.getter()
{
  if (*v0)
  {
    result = 0x657263536C6C7566;
  }

  else
  {
    result = 0x64656E6E6970;
  }

  *v0;
  return result;
}

unint64_t sub_220C46078()
{
  result = qword_27CF7C080;
  if (!qword_27CF7C080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7C080);
  }

  return result;
}

uint64_t sub_220C460F0@<X0>(uint64_t *a1@<X8>)
{
  result = EmbedState.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

_BYTE *storeEnumTagSinglePayload for EmbedState(_BYTE *result, unsigned int a2, unsigned int a3)
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