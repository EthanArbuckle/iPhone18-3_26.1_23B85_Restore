uint64_t sub_220EF4E8C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    Strong = swift_unknownObjectWeakLoadStrong();

    if (Strong)
    {
      sub_220EDF670(a3, a4);
      return swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t sub_220EF4F24()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return swift_unknownObjectRelease();
}

uint64_t sub_220EF4F84()
{
  v0 = sub_220F5ADAC();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v0;
}

uint64_t sub_220EF4FEC()
{
  v0 = sub_220EF4F84();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t type metadata accessor for WindIntensityOverlayRenderer()
{
  result = qword_27CF9EA08;
  if (!qword_27CF9EA08)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_220EF50DC(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_220FC26C0();

  [a3 setLabel_];
}

unint64_t sub_220EF5140()
{
  result = qword_27CF9EA20;
  if (!qword_27CF9EA20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF9EA20);
  }

  return result;
}

unint64_t sub_220EF51F0()
{
  result = qword_27CF9F3A0;
  if (!qword_27CF9F3A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF9F3A0);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for WindIntensityOverlayRendererError(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_220EF5334()
{
  result = qword_27CF9EA40;
  if (!qword_27CF9EA40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF9EA40);
  }

  return result;
}

uint64_t sub_220EF53CC@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v5 = *(a1 + 16);
  v6 = a2(0);
  v7 = v6;
  if (v5)
  {
    (*(*(v6 - 8) + 16))(a3, a1 + ((*(*(v6 - 8) + 80) + 32) & ~*(*(v6 - 8) + 80)), v6);
    v8 = 0;
  }

  else
  {
    v8 = 1;
  }

  return __swift_storeEnumTagSinglePayload(a3, v8, 1, v7);
}

uint64_t sub_220EF5478@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9E630);
  sub_220E453D4(&qword_2812CA248, &qword_27CF9E630);
  sub_220FC2CC0();
  sub_220FC2CE0();
  if (v10[4] == v10[0])
  {
    v2 = sub_220FC0540();
    v3 = a1;
    v4 = 1;
  }

  else
  {
    v5 = sub_220FC2D00();
    v7 = v6;
    v8 = sub_220FC0540();
    (*(*(v8 - 8) + 16))(a1, v7, v8);
    v5(v10, 0);
    v3 = a1;
    v4 = 0;
    v2 = v8;
  }

  return __swift_storeEnumTagSinglePayload(v3, v4, 1, v2);
}

uint64_t sub_220EF55D0(uint64_t a1, unint64_t a2)
{
  v3 = a2 >> 62;
  v4 = 1;
  v6 = 0;
  switch(v3)
  {
    case 1uLL:
      v7 = a1;
      v8 = a1 >> 32;
      goto LABEL_6;
    case 2uLL:
      v7 = *(a1 + 16);
      v8 = *(a1 + 24);
LABEL_6:
      if (v7 != v8)
      {
        goto LABEL_8;
      }

      v6 = 0;
      v4 = 1;
      break;
    case 3uLL:
      return v6 | (v4 << 8);
    default:
      if ((a2 & 0xFF000000000000) != 0)
      {
LABEL_8:
        v6 = sub_220FC00F0();
        v4 = 0;
      }

      else
      {
        v6 = 0;
      }

      break;
  }

  return v6 | (v4 << 8);
}

uint64_t sub_220EF5670(uint64_t a1)
{
  v2 = sub_220EF6DAC(a1);
  v4 = v3;
  v6 = v5;
  v7 = sub_220EF6E0C(a1);
  v9 = v8;
  v11 = v10;
  v12 = sub_220EF70C8(v2, v4, v6 & 1, v7, v8, v10 & 1);
  sub_220EDAB04(v7, v9, v11 & 1);
  v13 = OUTLINED_FUNCTION_15_5();
  if (v12)
  {
    sub_220EDAB04(v13, v14, v15);
    return 0;
  }

  else
  {
    sub_220EF6EBC(v13, v14, v15, a1);
    v16 = v17;
    v18 = OUTLINED_FUNCTION_15_5();
    sub_220EDAB04(v18, v19, v20);
  }

  return v16;
}

double sub_220EF572C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(a1 + 16))
  {
    sub_220E1E2A8(a1 + 32, a2);
  }

  else
  {
    *(a2 + 32) = 0;
    result = 0.0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  return result;
}

uint64_t sub_220EF5750(uint64_t a1, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v2)
  {
    return sub_220FC28A0();
  }

  else
  {
    return 0;
  }
}

uint64_t MapLocationAccessibilityModelFactory.__allocating_init(temperatureFormatter:)(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

id MapLocationAccessibilityModelFactory.makeModel(from:location:overlayDescriptionKey:)(void *a1, void *a2, unsigned __int8 *a3)
{
  v227 = a3;
  v228 = a2;
  v226 = a1;
  sub_220FC2450();
  OUTLINED_FUNCTION_6();
  v212 = v4;
  v213 = v3;
  MEMORY[0x28223BE20](v3, v5);
  OUTLINED_FUNCTION_1();
  v211 = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9E5D0);
  v8 = OUTLINED_FUNCTION_8_0(v7);
  MEMORY[0x28223BE20](v8, v9);
  OUTLINED_FUNCTION_7_0(&v187[-v10]);
  v205 = sub_220FC2DB0();
  OUTLINED_FUNCTION_6();
  v203 = v11;
  MEMORY[0x28223BE20](v12, v13);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_7_0(v14);
  sub_220FC2DA0();
  OUTLINED_FUNCTION_6();
  v209 = v16;
  v210 = v15;
  MEMORY[0x28223BE20](v15, v17);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_2_4();
  MEMORY[0x28223BE20](v18, v19);
  OUTLINED_FUNCTION_12_0();
  OUTLINED_FUNCTION_10_13(v20);
  v207 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9D048);
  OUTLINED_FUNCTION_6();
  v206 = v21;
  MEMORY[0x28223BE20](v22, v23);
  v219 = &v187[-v24];
  OUTLINED_FUNCTION_2_2();
  sub_220FC0950();
  OUTLINED_FUNCTION_6();
  v221 = v26;
  v222 = v25;
  MEMORY[0x28223BE20](v25, v27);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_2_4();
  MEMORY[0x28223BE20](v28, v29);
  OUTLINED_FUNCTION_12_0();
  v220 = v30;
  v200 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9D050);
  OUTLINED_FUNCTION_6();
  v199 = v31;
  MEMORY[0x28223BE20](v32, v33);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_2_4();
  MEMORY[0x28223BE20](v34, v35);
  OUTLINED_FUNCTION_12_0();
  OUTLINED_FUNCTION_7_0(v36);
  v225 = sub_220FC05E0();
  OUTLINED_FUNCTION_6();
  v218 = v37;
  MEMORY[0x28223BE20](v38, v39);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_10_13(v40);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9EA50);
  v42 = OUTLINED_FUNCTION_8_0(v41);
  MEMORY[0x28223BE20](v42, v43);
  OUTLINED_FUNCTION_4();
  v215 = v44 - v45;
  MEMORY[0x28223BE20](v46, v47);
  v224 = &v187[-v48];
  MEMORY[0x28223BE20](v49, v50);
  v52 = &v187[-v51];
  MEMORY[0x28223BE20](v53, v54);
  OUTLINED_FUNCTION_12_0();
  v223 = v55;
  OUTLINED_FUNCTION_2_2();
  v189 = sub_220FC0820();
  OUTLINED_FUNCTION_6();
  v188 = v56;
  MEMORY[0x28223BE20](v57, v58);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_10_13(v59);
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9E638);
  v61 = OUTLINED_FUNCTION_8_0(v60);
  MEMORY[0x28223BE20](v61, v62);
  v214 = &v187[-v63];
  OUTLINED_FUNCTION_2_2();
  v216 = sub_220FC0540();
  OUTLINED_FUNCTION_6();
  v191 = v64;
  MEMORY[0x28223BE20](v65, v66);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_10_13(v67);
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9EA58);
  v69 = OUTLINED_FUNCTION_8_0(v68);
  MEMORY[0x28223BE20](v69, v70);
  OUTLINED_FUNCTION_4();
  v73 = v71 - v72;
  MEMORY[0x28223BE20](v74, v75);
  OUTLINED_FUNCTION_12_0();
  v217 = v76;
  OUTLINED_FUNCTION_2_2();
  v195 = sub_220FC08D0();
  OUTLINED_FUNCTION_6();
  v193 = v77;
  MEMORY[0x28223BE20](v78, v79);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_7_0(v80);
  v81 = sub_220FC0890();
  OUTLINED_FUNCTION_6();
  v192 = v82;
  MEMORY[0x28223BE20](v83, v84);
  OUTLINED_FUNCTION_3();
  v87 = v86 - v85;
  v88 = sub_220FC07C0();
  OUTLINED_FUNCTION_6();
  v194 = v89;
  MEMORY[0x28223BE20](v90, v91);
  OUTLINED_FUNCTION_3();
  v94 = v93 - v92;
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9D058);
  v96 = OUTLINED_FUNCTION_8_0(v95);
  MEMORY[0x28223BE20](v96, v97);
  OUTLINED_FUNCTION_4();
  v100 = v98 - v99;
  MEMORY[0x28223BE20](v101, v102);
  OUTLINED_FUNCTION_12_0();
  v104 = v103;
  OUTLINED_FUNCTION_2_2();
  type metadata accessor for MapLocationAccessibilityModelManager.WeatherRequestRepsonse();
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v105, v106);
  OUTLINED_FUNCTION_3();
  v109 = v108 - v107;
  LODWORD(v227) = *v227;
  sub_220EF6B7C(v226, v108 - v107);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v131 = v217;
      sub_220EEECFC(v109, v217, &qword_27CF9EA58);
      sub_220EE5BFC(v131, v73, &qword_27CF9EA58);
      v132 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9E630);
      if (__swift_getEnumTagSinglePayload(v73, 1, v132) == 1)
      {
        sub_220E3B2DC(v73, &qword_27CF9EA58);
        v133 = v214;
        __swift_storeEnumTagSinglePayload(v214, 1, 1, v216);
      }

      else
      {
        v133 = v214;
        sub_220EF5478(v214);
        (*(*(v132 - 8) + 8))(v73, v132);
        v179 = v216;
        if (__swift_getEnumTagSinglePayload(v133, 1, v216) != 1)
        {
          v183 = v191;
          v184 = v190;
          (*(v191 + 32))(v190, v133, v179);
          OUTLINED_FUNCTION_18_7();
          sub_220FC0500();
          sub_220FC0510();
          sub_220FC2BD0();
          v110 = v132;
          sub_220FC0810();
          OUTLINED_FUNCTION_9_14();
          (*(v188 + 8))(v132, v189);
          if (!v52)
          {
            if (qword_2812C5B30 != -1)
            {
              OUTLINED_FUNCTION_1_0();
            }

            v185 = qword_2812CE4B0;
            OUTLINED_FUNCTION_11_10();
            OUTLINED_FUNCTION_9_14();
          }

          (*(v183 + 8))(v184, v179);
          goto LABEL_30;
        }
      }

      sub_220E3B2DC(v133, &qword_27CF9E638);
      v110 = "ss direction abbreviation";
      if (qword_2812C5B30 != -1)
      {
        OUTLINED_FUNCTION_1_0();
      }

      v180 = qword_2812CE4B0;
      OUTLINED_FUNCTION_11_10();
      OUTLINED_FUNCTION_9_14();

LABEL_30:
      v144 = &qword_27CF9EA58;
      v145 = v131;
      goto LABEL_31;
    case 2u:
      OUTLINED_FUNCTION_19_7();
      sub_220EEECFC(v112, v113, v114);
      OUTLINED_FUNCTION_19_7();
      sub_220EE5BFC(v115, v116, v117);
      v118 = v225;
      if (__swift_getEnumTagSinglePayload(v52, 1, v225) == 1)
      {
        goto LABEL_9;
      }

      v134 = v218;
      v135 = v198;
      (*(v218 + 32))(v198, v52, v118);
      sub_220FC0C80();
      sub_220FC0C60();
      v226 = sub_220FC0C40();

      v136 = v196;
      sub_220FC0580();
      OUTLINED_FUNCTION_18_7();
      v137 = v200;
      sub_220FBFCD0();
      v224 = *(v199 + 8);
      v224(v136, v137);
      sub_220E1966C(0, &unk_2812C5CB0);
      v138 = sub_220FC30E0();
      v140 = v139;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9D070);
      v141 = swift_allocObject();
      *(v141 + 16) = xmmword_220FC8E10;
      *(v141 + 32) = v138;
      *(v141 + 40) = v140;
      *(v141 + 48) = sub_220FC05A0();
      *(v141 + 56) = v142;
      v229 = v141;
      v110 = &qword_27CF9D068;
      v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9D068);
      OUTLINED_FUNCTION_5_21();
      sub_220E453D4(v143, &qword_27CF9D068);
      OUTLINED_FUNCTION_17_7();
      OUTLINED_FUNCTION_9_14();

      v224(&qword_27CF9EA50, v137);
      (*(v134 + 8))(v135, v118);
      v144 = &qword_27CF9EA50;
      v145 = v223;
      goto LABEL_31;
    case 3u:
      OUTLINED_FUNCTION_19_7();
      sub_220EEECFC(v119, v120, v121);
      v122 = v215;
      OUTLINED_FUNCTION_19_7();
      sub_220EE5BFC(v123, v124, v125);
      v126 = v225;
      if (__swift_getEnumTagSinglePayload(v122, 1, v225) == 1)
      {
LABEL_9:
        OUTLINED_FUNCTION_20_8();
        sub_220E3B2DC(v127, v128);
        OUTLINED_FUNCTION_20_8();
        sub_220E3B2DC(v129, v130);
        v110 = 0;
        v52 = 0;
      }

      else
      {
        v146 = v197;
        sub_220FC05C0();
        (*(v218 + 8))(v122, v126);
        (*(v221 + 32))(v220, v146, v222);
        if (qword_2812C5B30 != -1)
        {
          OUTLINED_FUNCTION_1_0();
        }

        v147 = qword_2812CE4B0;
        v148 = sub_220FBFF80();
        v225 = v149;
        v226 = v148;

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9EBD0);
        v150 = swift_allocObject();
        *(v150 + 16) = xmmword_220FC8E10;
        sub_220FC0930();
        v151 = v203;
        v152 = v202;
        v153 = v205;
        (*(v203 + 104))(v202, *MEMORY[0x277D7B490], v205);
        v154 = sub_220FC03E0();
        v155 = v204;
        __swift_storeEnumTagSinglePayload(v204, 1, 1, v154);
        sub_220FC2C50();
        v156 = v201;
        sub_220FC2420();

        sub_220E3B2DC(v155, &qword_27CF9E5D0);
        (*(v151 + 8))(v152, v153);
        v157 = v208;
        sub_220FC2D90();
        v158 = v210;
        v223 = *(v209 + 8);
        v223(v156, v210);
        v160 = v211;
        v159 = v212;
        v161 = v213;
        (*(v212 + 104))(v211, *MEMORY[0x277D7B408], v213);
        sub_220FC0C80();
        sub_220FC0C60();
        sub_220EF6C5C();
        v162 = v207;
        v163 = v219;
        v164 = sub_220FBFCB0();
        v217 = v165;
        v218 = v164;

        (*(v159 + 8))(v160, v161);
        v223(v157, v158);
        (*(v206 + 8))(v163, v162);
        v166 = MEMORY[0x277D837D0];
        *(v150 + 56) = MEMORY[0x277D837D0];
        v52 = sub_220E69720();
        *(v150 + 64) = v52;
        v167 = v217;
        *(v150 + 32) = v218;
        *(v150 + 40) = v167;
        v168 = v220;
        v110 = v220;
        sub_220FC0910();
        v169 = sub_220FC0900();
        *(v150 + 96) = v166;
        *(v150 + 104) = v52;
        *(v150 + 72) = v169;
        *(v150 + 80) = v170;
        sub_220FC26D0();
        OUTLINED_FUNCTION_9_14();

        (*(v221 + 8))(v168, v222);
        v144 = &qword_27CF9EA50;
        v145 = v224;
LABEL_31:
        sub_220E3B2DC(v145, v144);
      }

      LOBYTE(v229) = v227;
      objc_allocWithZone(type metadata accessor for MapLocationAccessibilityModel());
      return sub_220F99AAC(v228, v110, v52, &v229);
    default:
      v52 = &unk_220FC9CB0;
      sub_220EEECFC(v109, v104, &qword_27CF9D058);
      sub_220EE5BFC(v104, v100, &qword_27CF9D058);
      if (__swift_getEnumTagSinglePayload(v100, 1, v88) == 1)
      {
        sub_220E3B2DC(v100, &qword_27CF9D058);
        v110 = "precipitation is expected";
        if (qword_2812C5B30 != -1)
        {
          OUTLINED_FUNCTION_1_0();
        }

        v111 = qword_2812CE4B0;
        OUTLINED_FUNCTION_11_10();
        OUTLINED_FUNCTION_9_14();
      }

      else
      {
        v171 = v194;
        (*(v194 + 32))(v94, v100, v88);
        sub_220FC07B0();
        v172 = sub_220FC0870();
        (*(v192 + 8))(v87, v81);
        if (v172)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9D070);
          v173 = swift_allocObject();
          *(v173 + 16) = xmmword_220FC8E10;
          v229 = sub_220FC07A0();
          sub_220EF6CB4();
          *(v173 + 32) = sub_220FC3400();
          *(v173 + 40) = v174;
          OUTLINED_FUNCTION_18_7();
          sub_220FC0790();
          sub_220FC08A0();
          OUTLINED_FUNCTION_9_14();
          v175 = OUTLINED_FUNCTION_13_9();
          v176(v175);
          *(v173 + 48) = v88;
          *(v173 + 56) = &unk_220FC9CB0;
          v229 = v173;
          v110 = &unk_220FCA700;
          v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9D068);
          OUTLINED_FUNCTION_5_21();
          OUTLINED_FUNCTION_20_8();
          sub_220E453D4(v177, v178);
          OUTLINED_FUNCTION_17_7();
          OUTLINED_FUNCTION_9_14();
        }

        else
        {
          OUTLINED_FUNCTION_18_7();
          sub_220FC0790();
          v110 = v88;
          sub_220FC08A0();
          OUTLINED_FUNCTION_9_14();
          v181 = OUTLINED_FUNCTION_13_9();
          v182(v181);
        }

        (*(v171 + 8))(v94, v88);
      }

      v144 = &qword_27CF9D058;
      v145 = v104;
      goto LABEL_31;
  }
}

uint64_t sub_220EF6B7C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MapLocationAccessibilityModelManager.WeatherRequestRepsonse();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t MapLocationAccessibilityModelFactory.__deallocating_deinit()
{

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

unint64_t sub_220EF6C5C()
{
  result = qword_27CF9E5E0;
  if (!qword_27CF9E5E0)
  {
    sub_220FC2DA0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF9E5E0);
  }

  return result;
}

unint64_t sub_220EF6CB4()
{
  result = qword_2812C5DD8;
  if (!qword_2812C5DD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812C5DD8);
  }

  return result;
}

uint64_t sub_220EF6DAC(uint64_t a1)
{
  if ((a1 & 0xC000000000000001) != 0)
  {
    return sub_220FC3470();
  }

  else
  {
    return sub_220FC3440();
  }
}

uint64_t sub_220EF6E0C(uint64_t a1)
{
  if ((a1 & 0xC000000000000001) != 0)
  {
    return sub_220FC3510();
  }

  else
  {
    return 1 << *(a1 + 32);
  }
}

uint64_t sub_220EF6E60(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  if (result < 0 || 1 << *(a4 + 32) <= result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a4 + 8 * (result >> 6) + 56) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a4 + 36) == a2)
  {
    return *(*(a4 + 48) + 32 * result);
  }

LABEL_8:
  __break(1u);
  return result;
}

void sub_220EF6EBC(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v6 = a1;
  if ((a4 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      if (a4 < 0)
      {
        v7 = a4;
      }

      else
      {
        v7 = a4 & 0xFFFFFFFFFFFFFF8;
      }

      MEMORY[0x223D9CA30](a1, a2, v7);
      sub_220E1966C(0, &qword_27CF9EA60);
      swift_dynamicCast();
      return;
    }

LABEL_26:
    __break(1u);
    return;
  }

  if (a3)
  {
    sub_220E1966C(0, &qword_27CF9EA60);
    if (sub_220FC34A0() == *(a4 + 36))
    {
      sub_220FC34B0();
      swift_dynamicCast();
      v4 = v14;
      v8 = sub_220FC3240();
      v9 = ~(-1 << *(a4 + 32));
      while (1)
      {
        v6 = v8 & v9;
        if (((*(a4 + 56 + (((v8 & v9) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v8 & v9)) & 1) == 0)
        {
          goto LABEL_25;
        }

        v10 = *(*(a4 + 48) + 8 * v6);
        v11 = sub_220FC3250();

        if (v11)
        {
          goto LABEL_18;
        }

        v8 = v6 + 1;
      }
    }

    __break(1u);
    goto LABEL_23;
  }

  if (a1 < 0 || 1 << *(a4 + 32) <= a1)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (((*(a4 + 8 * (a1 >> 6) + 56) >> a1) & 1) == 0)
  {
LABEL_24:
    __break(1u);
LABEL_25:

    __break(1u);
    goto LABEL_26;
  }

  if (*(a4 + 36) != a2)
  {
    __break(1u);
LABEL_18:
  }

  v12 = *(*(a4 + 48) + 8 * v6);

  v13 = v12;
}

BOOL sub_220EF70C8(uint64_t a1, int a2, char a3, uint64_t a4, int a5, char a6)
{
  if (a3)
  {
    if (a6)
    {
LABEL_9:
      JUMPOUT(0x223D9C9E0);
    }

LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (a6)
  {
    goto LABEL_8;
  }

  if (a2 != a5)
  {
    __break(1u);
    goto LABEL_8;
  }

  return a1 == a4;
}

uint64_t OUTLINED_FUNCTION_11_10()
{

  return sub_220FBFF80();
}

uint64_t OUTLINED_FUNCTION_17_7()
{

  return sub_220FC2670();
}

uint64_t sub_220EF7174()
{

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  return v0;
}

uint64_t sub_220EF71B4()
{
  sub_220EF7174();

  return MEMORY[0x2821FE8D8](v0, 56, 7);
}

void sub_220EF720C()
{
  if (*(v0 + OBJC_IVAR____TtC11WeatherMaps25InteractiveViewController_controlsVisiblity) == 3)
  {
    *(v0 + OBJC_IVAR____TtC11WeatherMaps25InteractiveViewController_controlsVisiblity) = 0;
    v1 = *(v0 + OBJC_IVAR____TtC11WeatherMaps25InteractiveViewController_scrubberOverlayViewController);
    if (v1)
    {
      v2 = [v1 view];
      if (!v2)
      {
        __break(1u);
        return;
      }

      v3 = v2;
      [v2 setHidden_];
    }

    v4 = *(v0 + OBJC_IVAR____TtC11WeatherMaps25InteractiveViewController_controlsView);
    if (v4)
    {
      [v4 setHidden_];
    }

    v5 = *(v0 + OBJC_IVAR____TtC11WeatherMaps25InteractiveViewController_contentStatusBannerViewController);
    if (v5)
    {
      v6 = [v5 view];
      if (v6)
      {
        v7 = v6;
        [v6 setHidden_];
      }
    }

    if (sub_220FC2300())
    {
      v8 = sub_220EF8494();
      [v8 setShowsAttribution_];
    }
  }
}

void sub_220EF7330(char a1, uint64_t a2, uint64_t a3)
{
  if (!v3[OBJC_IVAR____TtC11WeatherMaps25InteractiveViewController_controlsVisiblity] || (a1 & 1) != 0)
  {
    v3[OBJC_IVAR____TtC11WeatherMaps25InteractiveViewController_controlsVisiblity] = 1;
    v6 = OBJC_IVAR____TtC11WeatherMaps25InteractiveViewController_scrubberOverlayViewController;
    v7 = *&v3[OBJC_IVAR____TtC11WeatherMaps25InteractiveViewController_scrubberOverlayViewController];
    if (v7)
    {
      v8 = [v7 view];
      if (!v8)
      {
        __break(1u);
        goto LABEL_20;
      }

      v9 = v8;
      [v8 setAlpha_];
    }

    v10 = OBJC_IVAR____TtC11WeatherMaps25InteractiveViewController_controlsView;
    v11 = *&v3[OBJC_IVAR____TtC11WeatherMaps25InteractiveViewController_controlsView];
    if (v11)
    {
      [v11 setAlpha_];
      v12 = *&v3[v10];
      if (v12)
      {
        [v12 setHidden_];
      }
    }

    v13 = *&v3[v6];
    if (!v13)
    {
      goto LABEL_12;
    }

    v14 = [v13 view];
    if (v14)
    {
      v15 = v14;
      [v14 setHidden_];

LABEL_12:
      v16 = OBJC_IVAR____TtC11WeatherMaps25InteractiveViewController_contentStatusBannerViewController;
      v17 = *&v3[OBJC_IVAR____TtC11WeatherMaps25InteractiveViewController_contentStatusBannerViewController];
      if (!v17)
      {
        goto LABEL_17;
      }

      v18 = [v17 view];
      if (v18)
      {
        v19 = v18;
        [v18 setAlpha_];

        v20 = *&v3[v16];
        if (v20)
        {
          v21 = [v20 view];
          if (v21)
          {
            v22 = v21;
            [v21 setHidden_];

            goto LABEL_17;
          }

LABEL_22:
          __break(1u);
          return;
        }

LABEL_17:
        objc_opt_self();
        OUTLINED_FUNCTION_2_3();
        v23 = swift_allocObject();
        *(v23 + 16) = v3;
        v35 = sub_220F05630;
        v36 = v23;
        v31 = MEMORY[0x277D85DD0];
        v32 = 1107296256;
        v33 = sub_220F6DA78;
        v34 = &block_descriptor_134;
        v24 = _Block_copy(&v31);
        v25 = v3;

        OUTLINED_FUNCTION_69();
        v26 = swift_allocObject();
        v26[2] = v25;
        v26[3] = a2;
        v26[4] = a3;
        v35 = sub_220F05650;
        v36 = v26;
        v31 = MEMORY[0x277D85DD0];
        v32 = 1107296256;
        v33 = sub_220EFF6B0;
        v34 = &block_descriptor_140;
        v27 = _Block_copy(&v31);
        v28 = v25;
        sub_220E1AADC(a2);

        OUTLINED_FUNCTION_60_3();
        [v29 v30];
        _Block_release(v27);
        _Block_release(v24);
        return;
      }

LABEL_21:
      __break(1u);
      goto LABEL_22;
    }

LABEL_20:
    __break(1u);
    goto LABEL_21;
  }
}

void sub_220EF7604(uint64_t a1, char a2)
{
  v5 = sub_220FC1070();
  OUTLINED_FUNCTION_6();
  v7 = v6;
  MEMORY[0x28223BE20](v8, v9);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_57_4();
  type metadata accessor for InteractiveFocus();
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v10, v11);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_44_3();
  sub_220F057B4();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v13 = v2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9EC08) + 48);
      v14 = *v13;
      v15 = *(v13 + 8);
      (*(v7 + 32))(v3, v2, v5);
      sub_220F6AA58(v3);
      if (v15 == 1)
      {
        sub_220F01524(v3, *&v14 != 0, a2 & 1);
      }

      else
      {
        sub_220F01524(v3, 0, a2 & 1);
        sub_220F01BE8(a2 & 1, v14);
      }

      (*(v7 + 8))(v3, v5);
    }
  }

  else if ((*(v2 + 8) & 1) == 0)
  {
    sub_220F01BE8(a2 & 1, *v2);
  }
}

void sub_220EF77FC()
{
  OUTLINED_FUNCTION_29_2();
  v1 = v0;
  sub_220FC1070();
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v2, v3);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_57_4();
  v4 = sub_220EFE518(v1);
  if (v4)
  {
    v5 = v4;
    v6 = sub_220EF8494();
    v7 = [v6 viewForAnnotation_];

    if (v7)
    {
      if ([v7 _calloutView])
      {

        swift_unknownObjectRelease();
      }

      else
      {
        if (qword_2812C5EC8 != -1)
        {
          OUTLINED_FUNCTION_16();
        }

        v8 = sub_220FC17A0();
        OUTLINED_FUNCTION_23_0(v8, qword_2812C5ED0);
        OUTLINED_FUNCTION_66_1();
        v9();
        v10 = sub_220FC1780();
        v11 = sub_220FC2E10();
        if (os_log_type_enabled(v10, v11))
        {
          v12 = swift_slowAlloc();
          v21 = OUTLINED_FUNCTION_54_1();
          v22 = v21;
          *v12 = 141558275;
          *(v12 + 4) = 1752392040;
          *(v12 + 12) = 2081;
          v13 = sub_220FC1040();
          v15 = v14;
          v16 = OUTLINED_FUNCTION_45_4();
          v17(v16);
          v18 = sub_220E20FF8(v13, v15, &v22);

          *(v12 + 14) = v18;
          _os_log_impl(&dword_220E15000, v10, v11, "Unable to locate a callout view to show the popover for %{private,mask.hash}s", v12, 0x16u);
          __swift_destroy_boxed_opaque_existential_0(v21);
          OUTLINED_FUNCTION_15();
          OUTLINED_FUNCTION_15();

          swift_unknownObjectRelease();
        }

        else
        {

          swift_unknownObjectRelease();
          v19 = OUTLINED_FUNCTION_45_4();
          v20(v19);
        }
      }
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }

  OUTLINED_FUNCTION_22();
}

uint64_t sub_220EF7A74(uint64_t a1)
{
  v2 = v1;
  if (qword_2812C5EC8 != -1)
  {
    OUTLINED_FUNCTION_16();
  }

  v4 = sub_220FC17A0();
  __swift_project_value_buffer(v4, qword_2812C5ED0);
  OUTLINED_FUNCTION_60_2();

  v5 = sub_220FC1780();
  v6 = sub_220FC2E30();
  if (OUTLINED_FUNCTION_53_3(v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 134349056;
    *(v7 + 4) = *(a1 + 16);

    OUTLINED_FUNCTION_42_3();
    _os_log_impl(v8, v9, v10, v11, v12, 0xCu);
    OUTLINED_FUNCTION_15();
  }

  else
  {
  }

  *(v2 + OBJC_IVAR____TtC11WeatherMaps25InteractiveViewController_annotatedLocations) = a1;

  return sub_220F24314(v13);
}

void sub_220EF7C04()
{
  OUTLINED_FUNCTION_29_2();
  v2 = v0;
  v4 = v3;
  v5 = v3 & 1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CF9EB80);
  OUTLINED_FUNCTION_8_0(v6);
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v7, v8);
  OUTLINED_FUNCTION_26_7();
  v9 = type metadata accessor for WeatherMapOverlay();
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v10, v11);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_44_3();
  v12 = type metadata accessor for ScrubberStore.ViewModel(0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v13, v14);
  OUTLINED_FUNCTION_4();
  v17 = v15 - v16;
  MEMORY[0x28223BE20](v18, v19);
  v21 = &v37 - v20;
  MEMORY[0x28223BE20](v22, v23);
  v25 = &v37 - v24;
  if (*(v0 + OBJC_IVAR____TtC11WeatherMaps25InteractiveViewController_isUserInteractionEnabled) == v5)
  {
LABEL_20:
    OUTLINED_FUNCTION_22();
    return;
  }

  v37 = v0;
  v38 = v9;
  *(v0 + OBJC_IVAR____TtC11WeatherMaps25InteractiveViewController_isUserInteractionEnabled) = v5;
  v26 = sub_220EF8494();
  [v26 setUserInteractionEnabled_];

  v27 = *(v2 + OBJC_IVAR____TtC11WeatherMaps25InteractiveViewController_scrubberOverlayViewController);
  if (!v27)
  {
LABEL_5:
    v30 = *(v2 + OBJC_IVAR____TtC11WeatherMaps25InteractiveViewController_scrubberStore);
    OUTLINED_FUNCTION_10();
    if (v4)
    {
      swift_beginAccess();
      OUTLINED_FUNCTION_0_49();
      sub_220F057B4();
      v31 = v25[1];

      if ((v31 & 1) == 0 && sub_220EE3BB8())
      {
        v25[1] = 1;
        __swift_project_boxed_opaque_existential_1((v30 + OBJC_IVAR____TtC11WeatherMaps13ScrubberStore_scrubberForecastHintManager), *(v30 + OBJC_IVAR____TtC11WeatherMaps13ScrubberStore_scrubberForecastHintManager + 24));
        sub_220EE5DCC();
        v25[v12[12]] = v32 & 1;
        *&v25[v12[15]] = 0;
      }

      OUTLINED_FUNCTION_0_49();
      sub_220F057B4();
      sub_220EE3AE8(v21);
      OUTLINED_FUNCTION_1_44();
      sub_220F056E4(v25, v33);

      OUTLINED_FUNCTION_10();
      swift_beginAccess();
      sub_220E43574();
      if (__swift_getEnumTagSinglePayload(v1, 1, v38) == 1)
      {
        sub_220E3B2DC(v1, &unk_27CF9EB80);
      }

      else
      {
        v35 = v37;
        sub_220F0568C();
        if (*(v35 + 200) - 3 >= 3)
        {

          sub_220EE46C8();
        }

        sub_220F056E4(v35, type metadata accessor for WeatherMapOverlay);
      }
    }

    else
    {
      swift_beginAccess();
      OUTLINED_FUNCTION_0_49();
      sub_220F057B4();
      if (*(v17 + 1) == 1)
      {
        v34 = *(v17 + v12[21]);

        if ((v34 & 1) == 0 || !sub_220EE3BB8())
        {
          *(v17 + 1) = 0;
          *(v17 + v12[15]) = 0;
        }
      }

      else
      {
      }

      OUTLINED_FUNCTION_0_49();
      sub_220F057B4();
      sub_220EE3AE8(v21);
      OUTLINED_FUNCTION_1_44();
      sub_220F056E4(v17, v36);

      sub_220EE46C8();
    }

    goto LABEL_20;
  }

  v28 = [v27 view];
  if (v28)
  {
    v29 = v28;
    [v28 setUserInteractionEnabled_];

    goto LABEL_5;
  }

  __break(1u);
}

void sub_220EF7FF0(char a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC11WeatherMaps25InteractiveViewController_isMapFullscreen);
  *(v1 + OBJC_IVAR____TtC11WeatherMaps25InteractiveViewController_isMapFullscreen) = a1;
  sub_220EF8DA0(v2);
}

void sub_220EF8008()
{
  v1 = OBJC_IVAR____TtC11WeatherMaps25InteractiveViewController_controlsVisiblity;
  if (v0[OBJC_IVAR____TtC11WeatherMaps25InteractiveViewController_controlsVisiblity] != 3)
  {
    return;
  }

  v2 = v0;
  if ((v0[OBJC_IVAR____TtC11WeatherMaps25InteractiveViewController_supportsControlEffects] & 1) == 0)
  {
    sub_220F67368();
  }

  v0[v1] = 2;
  v3 = OBJC_IVAR____TtC11WeatherMaps25InteractiveViewController_scrubberOverlayViewController;
  v4 = *&v0[OBJC_IVAR____TtC11WeatherMaps25InteractiveViewController_scrubberOverlayViewController];
  if (v4)
  {
    v5 = [v4 view];
    if (!v5)
    {
      __break(1u);
      goto LABEL_23;
    }

    v6 = v5;
    [v5 setAlpha_];
  }

  v7 = OBJC_IVAR____TtC11WeatherMaps25InteractiveViewController_controlsView;
  v8 = *&v2[OBJC_IVAR____TtC11WeatherMaps25InteractiveViewController_controlsView];
  if (v8)
  {
    [v8 setAlpha_];
    v9 = *&v2[v7];
    if (v9)
    {
      [v9 setHidden_];
    }
  }

  v10 = *&v2[v3];
  if (v10)
  {
    v11 = [v10 view];
    if (v11)
    {
      v12 = v11;
      [v11 setHidden_];

      goto LABEL_13;
    }

LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

LABEL_13:
  v13 = OBJC_IVAR____TtC11WeatherMaps25InteractiveViewController_contentStatusBannerViewController;
  v14 = *&v2[OBJC_IVAR____TtC11WeatherMaps25InteractiveViewController_contentStatusBannerViewController];
  if (!v14)
  {
    goto LABEL_18;
  }

  v15 = [v14 view];
  if (!v15)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v16 = v15;
  [v15 setAlpha_];

  v17 = *&v2[v13];
  if (v17)
  {
    v18 = [v17 view];
    if (v18)
    {
      v19 = v18;
      [v18 setHidden_];

      goto LABEL_18;
    }

LABEL_25:
    __break(1u);
    return;
  }

LABEL_18:
  if (sub_220FC2300())
  {
    v20 = sub_220EF8494();
    [v20 setShowsAttribution_];
  }

  v21 = objc_opt_self();
  OUTLINED_FUNCTION_2_3();
  v22 = swift_allocObject();
  *(v22 + 16) = v2;
  v32 = sub_220F0552C;
  v33 = v22;
  v28 = MEMORY[0x277D85DD0];
  v29 = 1107296256;
  v30 = sub_220F6DA78;
  v31 = &block_descriptor_106;
  v23 = _Block_copy(&v28);
  v24 = v2;

  OUTLINED_FUNCTION_2_3();
  v25 = swift_allocObject();
  *(v25 + 16) = v24;
  v32 = sub_220F0554C;
  v33 = v25;
  v28 = MEMORY[0x277D85DD0];
  v29 = 1107296256;
  v30 = sub_220EFF6B0;
  v31 = &block_descriptor_112;
  v26 = _Block_copy(&v28);
  v27 = v24;

  [v21 animateWithDuration:v23 animations:v26 completion:0.3];
  _Block_release(v26);
  _Block_release(v23);
}

void sub_220EF830C()
{

  sub_220EE46C8();

  sub_220F6AC30(0, 0);
  sub_220F63D40();
}

void sub_220EF836C()
{
  OUTLINED_FUNCTION_29_2();
  v1 = OBJC_IVAR____TtC11WeatherMaps25InteractiveViewController_doNotForwardSelectedAnnotationToDelegate;
  *(v0 + OBJC_IVAR____TtC11WeatherMaps25InteractiveViewController_doNotForwardSelectedAnnotationToDelegate) = 1;
  v2 = sub_220EF8494();
  v3 = [v2 selectedAnnotations];

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CF9EF90);
  v4 = sub_220FC2970();

  v5 = sub_220F43CDC(v4);
  v6 = 0;
  v7 = OBJC_IVAR____TtC11WeatherMaps25InteractiveViewController____lazy_storage___mapView;
  while (1)
  {
    if (v5 == v6)
    {

      *(v0 + v1) = 0;
      OUTLINED_FUNCTION_22();
      return;
    }

    if ((v4 & 0xC000000000000001) != 0)
    {
      v8 = MEMORY[0x223D9CB30](v6, v4);
    }

    else
    {
      if (v6 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_11;
      }

      v8 = *(v4 + 8 * v6 + 32);
      swift_unknownObjectRetain();
    }

    if (__OFADD__(v6, 1))
    {
      break;
    }

    [*(v0 + v7) deselectAnnotation:v8 animated:1];
    swift_unknownObjectRelease();
    ++v6;
  }

  __break(1u);
LABEL_11:
  __break(1u);
}

id sub_220EF8494()
{
  v1 = OBJC_IVAR____TtC11WeatherMaps25InteractiveViewController____lazy_storage___mapView;
  v2 = *(v0 + OBJC_IVAR____TtC11WeatherMaps25InteractiveViewController____lazy_storage___mapView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC11WeatherMaps25InteractiveViewController____lazy_storage___mapView);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x277CD4EC8]) init];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

void sub_220EF8508()
{
  v1 = &v0[OBJC_IVAR____TtC11WeatherMaps25InteractiveViewController_preferredMapSize];
  if (v0[OBJC_IVAR____TtC11WeatherMaps25InteractiveViewController_preferredMapSize + 16])
  {
    v2 = [v0 view];
    if (!v2)
    {
LABEL_12:
      __break(1u);
      return;
    }

    v3 = v2;
    [v2 bounds];
    v5 = v4;
    v7 = v6;
  }

  else
  {
    v5 = *v1;
    v7 = v1[1];
  }

  v8 = sub_220EF8494();
  [v8 frame];
  v10 = v9;
  v12 = v11;

  if (v5 != v10 || v7 != v12)
  {
    v14 = objc_opt_self();
    v15 = *&v0[OBJC_IVAR____TtC11WeatherMaps25InteractiveViewController____lazy_storage___mapView];
    OUTLINED_FUNCTION_69();
    v16 = swift_allocObject();
    *(v16 + 16) = v15;
    *(v16 + 24) = v5;
    *(v16 + 32) = v7;
    v17 = swift_allocObject();
    *(v17 + 16) = sub_220F05798;
    *(v17 + 24) = v16;
    v20[4] = sub_220E56A04;
    v20[5] = v17;
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 1107296256;
    v20[2] = sub_220EE6934;
    v20[3] = &block_descriptor_156;
    v18 = _Block_copy(v20);
    v19 = v15;

    [v14 performWithoutAnimation_];
    _Block_release(v18);
    LOBYTE(v14) = swift_isEscapingClosureAtFileLocation();

    if (v14)
    {
      __break(1u);
      goto LABEL_12;
    }
  }
}

void sub_220EF8708()
{
  v1 = sub_220EF8494();
  sub_220EF8788(v0);
  if (v2)
  {
    v3 = sub_220FC26C0();
  }

  else
  {
    v3 = 0;
  }

  [v1 setAccessibilityLabel_];
}

uint64_t sub_220EF8788(uint64_t a1)
{
  v1 = *(a1 + OBJC_IVAR____TtC11WeatherMaps25InteractiveViewController_presentingOverlayKind);
  switch(v1)
  {
    case 5:
      if (qword_2812C5B30 == -1)
      {
        goto LABEL_11;
      }

      goto LABEL_12;
    case 4:
      if (qword_2812C5B30 == -1)
      {
        goto LABEL_11;
      }

      goto LABEL_12;
    case 3:
      if (qword_2812C5B30 == -1)
      {
        goto LABEL_11;
      }

      goto LABEL_12;
  }

  if (qword_2812C5B30 != -1)
  {
LABEL_12:
    swift_once();
  }

LABEL_11:
  v2 = qword_2812CE4B0;
  v3 = sub_220FBFF80();

  return v3;
}

void *sub_220EF89C4()
{
  v1 = OBJC_IVAR____TtC11WeatherMaps25InteractiveViewController____lazy_storage___backgroundEffectManagerBlur;
  if (*(v0 + OBJC_IVAR____TtC11WeatherMaps25InteractiveViewController____lazy_storage___backgroundEffectManagerBlur))
  {
    v2 = *(v0 + OBJC_IVAR____TtC11WeatherMaps25InteractiveViewController____lazy_storage___backgroundEffectManagerBlur);
  }

  else
  {
    v3 = v0;
    if (sub_220FC2300())
    {
      v4 = 4;
    }

    else
    {
      v4 = 1;
    }

    type metadata accessor for BackgroundEffectManager();
    swift_allocObject();
    v2 = sub_220E3D348(v4, 0xD000000000000017, 0x8000000220FE2560);
    *(v3 + v1) = v2;
  }

  return v2;
}

uint64_t sub_220EF8A74()
{
  swift_getObjectType();
  v1 = OBJC_IVAR____TtC11WeatherMaps25InteractiveViewController____lazy_storage___showDebugConsole;
  v2 = *(v0 + OBJC_IVAR____TtC11WeatherMaps25InteractiveViewController____lazy_storage___showDebugConsole);
  if (v2 == 2)
  {
    if (qword_2812CA228 != -1)
    {
      swift_once();
    }

    sub_220F05888(&unk_27CF9D568, type metadata accessor for InteractiveViewController);
    sub_220FC0A00();
    LOBYTE(v2) = v4;
    *(v0 + v1) = v4;
  }

  return v2 & 1;
}

void *sub_220EF8B4C(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = *(v2 + *a1);
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v7 = v2;
    type metadata accessor for BackgroundEffectManager();
    swift_allocObject();
    v5 = sub_220E3D348(a2, 0xD000000000000017, 0x8000000220FE2560);
    *(v7 + v3) = v5;
  }

  return v5;
}

id sub_220EF8BEC()
{
  v1 = sub_220FC03E0();
  OUTLINED_FUNCTION_6();
  v3 = v2;
  MEMORY[0x28223BE20](v4, v5);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_44_3();
  v6 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
  sub_220FC0380();
  v7 = sub_220FC0370();
  (*(v3 + 8))(v0, v1);
  [v6 setLocale_];

  [v6 setDoesRelativeDateFormatting_];
  [v6 setDateStyle_];
  [v6 setTimeStyle_];
  return v6;
}

void sub_220EF8D18()
{
  OUTLINED_FUNCTION_10();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_220EF8D68();
  }
}

void sub_220EF8DA0(int a1)
{
  v2 = v1[OBJC_IVAR____TtC11WeatherMaps25InteractiveViewController_isMapFullscreen];
  if (v2 != 2)
  {
    v3 = v1;
    if (a1 == 2 || ((v2 ^ a1) & 1) != 0)
    {
      v4 = *&v1[OBJC_IVAR____TtC11WeatherMaps25InteractiveViewController_controlsView];
      if (v4)
      {
        v4[OBJC_IVAR____TtC11WeatherMaps12ControlsView_shouldConsiderSafeArea] = v2 & 1;
        v5 = v4;
        sub_220EA5778(((v2 & 1) == 0));
      }

      v6 = [v3 view];
      if (v6)
      {
        v7 = v6;
        [v6 setNeedsLayout];
      }

      else
      {
        __break(1u);
      }
    }
  }
}

void sub_220EF8E8C()
{
  *(v0 + OBJC_IVAR____TtC11WeatherMaps25InteractiveViewController_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC11WeatherMaps25InteractiveViewController_controlsVisiblity) = 0;
  *(v0 + OBJC_IVAR____TtC11WeatherMaps25InteractiveViewController_isDismissing) = 0;
  *(v0 + OBJC_IVAR____TtC11WeatherMaps25InteractiveViewController____lazy_storage___mapView) = 0;
  v1 = v0 + OBJC_IVAR____TtC11WeatherMaps25InteractiveViewController_preferredMapSize;
  *v1 = 0;
  *(v1 + 8) = 0;
  *(v1 + 16) = 1;
  v2 = (v0 + OBJC_IVAR____TtC11WeatherMaps25InteractiveViewController_visibleMapRect);
  v3 = *(MEMORY[0x277CD4BB8] + 16);
  *v2 = *MEMORY[0x277CD4BB8];
  v2[1] = v3;
  *(v0 + OBJC_IVAR____TtC11WeatherMaps25InteractiveViewController_backgroundEffectView) = 0;
  v4 = OBJC_IVAR____TtC11WeatherMaps25InteractiveViewController_activeOverlay;
  v5 = type metadata accessor for WeatherMapOverlay();
  __swift_storeEnumTagSinglePayload(v0 + v4, 1, 1, v5);
  v6 = MEMORY[0x277D84F90];
  *(v0 + OBJC_IVAR____TtC11WeatherMaps25InteractiveViewController_annotatedLocations) = MEMORY[0x277D84F90];
  v7 = OBJC_IVAR____TtC11WeatherMaps25InteractiveViewController_selectedLocation;
  v8 = sub_220FC1070();
  __swift_storeEnumTagSinglePayload(v0 + v7, 1, 1, v8);
  *(v0 + OBJC_IVAR____TtC11WeatherMaps25InteractiveViewController_doNotForwardSelectedAnnotationToDelegate) = 0;
  *(v0 + OBJC_IVAR____TtC11WeatherMaps25InteractiveViewController_debugLabel) = 0;
  swift_unknownObjectWeakInit();
  v9 = v0 + OBJC_IVAR____TtC11WeatherMaps25InteractiveViewController_lastHoverLocation;
  *v9 = 0;
  *(v9 + 8) = 0;
  *(v9 + 16) = 0;
  *(v0 + OBJC_IVAR____TtC11WeatherMaps25InteractiveViewController_controlsView) = 0;
  *(v0 + OBJC_IVAR____TtC11WeatherMaps25InteractiveViewController_controlsAdded) = 0;
  *(v0 + OBJC_IVAR____TtC11WeatherMaps25InteractiveViewController_scrubberObserver) = 0;
  *(v0 + OBJC_IVAR____TtC11WeatherMaps25InteractiveViewController_scrubberOverlayViewController) = 0;
  *(v0 + OBJC_IVAR____TtC11WeatherMaps25InteractiveViewController_verticalSpacingAttributionToScrubber) = 0x4010000000000000;
  *(v0 + OBJC_IVAR____TtC11WeatherMaps25InteractiveViewController____lazy_storage___backgroundEffectManagerBlur) = 0;
  *(v0 + OBJC_IVAR____TtC11WeatherMaps25InteractiveViewController____lazy_storage___backgroundEffectManagerUltraThin) = 0;
  *(v0 + OBJC_IVAR____TtC11WeatherMaps25InteractiveViewController____lazy_storage___showDebugConsole) = 2;
  *(v0 + OBJC_IVAR____TtC11WeatherMaps25InteractiveViewController____lazy_storage___backgroundEffectManagerVibrancyFill) = 0;
  *(v0 + OBJC_IVAR____TtC11WeatherMaps25InteractiveViewController_contentStatusBannerViewController) = 0;
  v10 = (v0 + OBJC_IVAR____TtC11WeatherMaps25InteractiveViewController_pendingBannerReplacementBlock);
  *v10 = 0;
  v10[1] = 0;
  *(v0 + OBJC_IVAR____TtC11WeatherMaps25InteractiveViewController_backdropLayerBlur) = 0;
  *(v0 + OBJC_IVAR____TtC11WeatherMaps25InteractiveViewController_backdropLayerUltraThin) = 0;
  *(v0 + OBJC_IVAR____TtC11WeatherMaps25InteractiveViewController_wasPlayingBeforeBackgrounded) = 2;
  *(v0 + OBJC_IVAR____TtC11WeatherMaps25InteractiveViewController_wasPlayingBeforeSonification) = 2;
  v11 = OBJC_IVAR____TtC11WeatherMaps25InteractiveViewController_wasPlayingBeforeSonificationDate;
  v12 = sub_220FC02B0();
  __swift_storeEnumTagSinglePayload(v0 + v11, 1, 1, v12);
  *(v0 + OBJC_IVAR____TtC11WeatherMaps25InteractiveViewController_overlayIsLoading) = 0;
  *(v0 + OBJC_IVAR____TtC11WeatherMaps25InteractiveViewController_overlayLoadingWasInterruptedByUserInteraction) = 0;
  *(v0 + OBJC_IVAR____TtC11WeatherMaps25InteractiveViewController_refreshTimer) = 0;
  *(v0 + OBJC_IVAR____TtC11WeatherMaps25InteractiveViewController_controlsInitiallySized) = 0;
  v13 = OBJC_IVAR____TtC11WeatherMaps25InteractiveViewController_accessibilityFrameDateFormatter;
  *(v0 + v13) = sub_220EF8BEC();
  *(v0 + OBJC_IVAR____TtC11WeatherMaps25InteractiveViewController_maxBottomOffset) = 0x4034000000000000;
  v14 = (v0 + OBJC_IVAR____TtC11WeatherMaps25InteractiveViewController_onMapEventHandler);
  *v14 = 0;
  v14[1] = 0;
  *(v0 + OBJC_IVAR____TtC11WeatherMaps25InteractiveViewController_isMapFullscreen) = 2;
  *(v0 + OBJC_IVAR____TtC11WeatherMaps25InteractiveViewController_animationDelegates) = v6;
  sub_220FC3740();
  __break(1u);
}

void sub_220EF9180()
{
  if (qword_2812C7508 != -1)
  {
    swift_once();
  }

  v1 = sub_220EDDB94();

  v2 = (v1 & 1) != 0 && UIAccessibilityIsVoiceOverRunning();
  v3 = *(v0 + OBJC_IVAR____TtC11WeatherMaps25InteractiveViewController_overlayManager);
  if (v2 != *(v3 + 480))
  {
    v4 = *(v0 + OBJC_IVAR____TtC11WeatherMaps25InteractiveViewController_overlaySonifier + 8);
    ObjectType = swift_getObjectType();
    (*(v4 + 48))(v2, ObjectType, v4);
    *(v3 + 480) = v2;
    sub_220F63538();
    v6 = sub_220EF8494();
    v7 = [v6 _panningGestureRecognizer];

    if (v7)
    {
      [v7 setEnabled_];
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_220EF92F0()
{
  v2 = type metadata accessor for ScrubberStore.ViewModel(0);
  v3 = v2 - 8;
  MEMORY[0x28223BE20](v2, v4);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_40_3();
  MEMORY[0x28223BE20](v5, v6);
  OUTLINED_FUNCTION_41_2();

  IsVoiceOverRunning = UIAccessibilityIsVoiceOverRunning();
  OUTLINED_FUNCTION_10();
  swift_beginAccess();
  OUTLINED_FUNCTION_0_49();
  sub_220F057B4();
  *(v1 + *(v3 + 92)) = IsVoiceOverRunning;
  if (IsVoiceOverRunning)
  {
    *(v1 + 1) = sub_220EE3BB8();
  }

  OUTLINED_FUNCTION_0_49();
  sub_220F057B4();
  sub_220EE3AE8(v0);
  OUTLINED_FUNCTION_1_44();
  sub_220F056E4(v1, v8);

  sub_220EF9180();
}

void sub_220EF9500()
{
  ObjectType = swift_getObjectType();
  sub_220FC2340();
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v2, v3);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2_2();
  sub_220FC2390();
  OUTLINED_FUNCTION_6();
  v67 = v5;
  v68 = v4;
  MEMORY[0x28223BE20](v4, v6);
  OUTLINED_FUNCTION_3();
  v66 = v8 - v7;
  OUTLINED_FUNCTION_2_2();
  v69 = sub_220FC23B0();
  OUTLINED_FUNCTION_6();
  v64 = v9;
  MEMORY[0x28223BE20](v10, v11);
  OUTLINED_FUNCTION_4();
  v14 = v12 - v13;
  MEMORY[0x28223BE20](v15, v16);
  OUTLINED_FUNCTION_12_0();
  v18 = v17;
  v71.receiver = v0;
  v71.super_class = ObjectType;
  objc_msgSendSuper2(&v71, sel_viewDidLoad);
  if (qword_2812C5EC8 != -1)
  {
    OUTLINED_FUNCTION_16();
  }

  v19 = sub_220FC17A0();
  __swift_project_value_buffer(v19, qword_2812C5ED0);
  v20 = v0;
  v21 = sub_220FC1780();
  v22 = sub_220FC2E30();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v24 = OUTLINED_FUNCTION_54_1();
    aBlock[0] = v24;
    *v23 = 136446722;
    sub_220E561E0();
    v25 = sub_220FC38F0();
    v27 = sub_220E20FF8(v25, v26, aBlock);

    *(v23 + 4) = v27;
    *(v23 + 12) = 2050;
    *(v23 + 14) = *&v20[OBJC_IVAR____TtC11WeatherMaps25InteractiveViewController_selectedLocationZoomLevel];
    *(v23 + 22) = 1026;
    v28 = v20[OBJC_IVAR____TtC11WeatherMaps25InteractiveViewController_isUserInteractionEnabled];

    *(v23 + 24) = v28;
    _os_log_impl(&dword_220E15000, v21, v22, "InteractiveViewController's view did loading with configuration: presentingOverlayKind=%{public}s, selectedLocationZoomLevel=%{public}f, userInteractionEnabled=%{BOOL,public}d", v23, 0x1Cu);
    __swift_destroy_boxed_opaque_existential_0(v24);
    OUTLINED_FUNCTION_15();
    OUTLINED_FUNCTION_15();
  }

  else
  {
  }

  v29 = sub_220EF8494();
  v30 = OUTLINED_FUNCTION_70();
  if (!v30)
  {
    __break(1u);
    goto LABEL_15;
  }

  v31 = v30;
  [v30 bounds];
  OUTLINED_FUNCTION_9_8();

  v32 = OUTLINED_FUNCTION_0_0();
  [v33 v34];

  v35 = OBJC_IVAR____TtC11WeatherMaps25InteractiveViewController____lazy_storage___mapView;
  [*&v20[OBJC_IVAR____TtC11WeatherMaps25InteractiveViewController____lazy_storage___mapView] setDelegate_];
  v36 = OBJC_IVAR____TtC11WeatherMaps25InteractiveViewController_presentingOverlayKind;
  LOBYTE(aBlock[0]) = v20[OBJC_IVAR____TtC11WeatherMaps25InteractiveViewController_presentingOverlayKind];
  sub_220EF9D9C(aBlock);
  [*&v20[v35] setShowsCompass_];
  [*&v20[v35] _setShowsRoadLabels_];
  [*&v20[v35] _setShowsRoadShields_];
  [*&v20[v35] setShowsBuildings_];
  [*&v20[v35] setPitchEnabled_];
  v37 = *&v20[v35];
  sub_220E1966C(0, &qword_2812C5C10);
  v38 = v37;
  v39 = MEMORY[0x277D84F90];
  v40 = sub_220FB94AC();
  [v38 setPointOfInterestFilter_];

  [*&v20[v35] _setCanSelectPOIs_];
  [*&v20[v35] _setCanSelectAllLabels_];
  [*&v20[v35] _setAttributionLinkDisplayStyle_];
  v41 = [*&v20[v35] _mapLayer];
  if (!v41)
  {
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    return;
  }

  v42 = v41;
  [v41 setShowsHillshade_];

  if (sub_220FC2300())
  {
    [*&v20[v35] setShowsAttribution_];
  }

  [*&v20[v35] setTranslatesAutoresizingMaskIntoConstraints_];
  v43 = OUTLINED_FUNCTION_70();
  if (!v43)
  {
    goto LABEL_16;
  }

  v44 = v43;
  [v43 addSubview_];

  sub_220EF9180();
  v45 = qword_2812C5B30;
  v46 = *&v20[v35];
  if (v45 != -1)
  {
    OUTLINED_FUNCTION_1_0();
  }

  v47 = qword_2812CE4B0;
  OUTLINED_FUNCTION_10();
  v48 = sub_220FBFF80();
  v50 = v49;

  sub_220E56298(v48, v50, v46);
  v51 = sub_220F22204();
  sub_220F63928(v51);
  v52 = v20;
  sub_220F63260(v20, &off_283483268);
  v53 = v52;
  sub_220F63218(v20, &off_283483258);
  LOBYTE(aBlock[0]) = v20[v36];
  OUTLINED_FUNCTION_34_5(aBlock);
  sub_220E1966C(0, &qword_2812C5CA0);
  v63 = sub_220FC2FC0();
  sub_220FC23A0();
  sub_220FC23D0();
  v65 = *(v64 + 8);
  v65(v14, v69);
  OUTLINED_FUNCTION_2_3();
  v54 = swift_allocObject();
  *(v54 + 16) = v53;
  aBlock[4] = sub_220F055E0;
  aBlock[5] = v54;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_220F6DA78;
  aBlock[3] = &block_descriptor_118;
  v55 = _Block_copy(aBlock);
  v56 = v53;

  sub_220FC2350();
  aBlock[0] = v39;
  OUTLINED_FUNCTION_13_10();
  sub_220F05888(v57, v58);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CF9DBC0);
  OUTLINED_FUNCTION_9_15();
  sub_220E453D4(v59, v60);
  sub_220FC3430();
  OUTLINED_FUNCTION_43_2();
  MEMORY[0x223D9C4E0]();
  _Block_release(v55);

  v61 = OUTLINED_FUNCTION_45_4();
  v62(v61);
  (*(v67 + 8))(v66, v68);
  v65(v18, v69);
  __swift_project_boxed_opaque_existential_1(&v56[OBJC_IVAR____TtC11WeatherMaps25InteractiveViewController_locationMetadataManager], *&v56[OBJC_IVAR____TtC11WeatherMaps25InteractiveViewController_locationMetadataManager + 24]);
  sub_220F05888(&qword_27CF9EBD8, type metadata accessor for InteractiveViewController);
  sub_220FC0F50();
  sub_220EFAC7C();
  sub_220EFAD74();
}

void sub_220EF9D9C(unsigned __int8 *a1)
{
  v1 = *a1;
  v3 = sub_220EF8494();
  if (v1 == 5)
  {
    v2 = 2;
  }

  else
  {
    v2 = 1;
  }

  sub_220FB9524(v2);
}

void sub_220EF9DFC()
{
  OUTLINED_FUNCTION_29_2();
  v2 = v0;
  v3 = sub_220FC2340();
  OUTLINED_FUNCTION_6();
  v5 = v4;
  MEMORY[0x28223BE20](v6, v7);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_25_8();
  v8 = sub_220FC2390();
  OUTLINED_FUNCTION_6();
  v129 = v9;
  MEMORY[0x28223BE20](v10, v11);
  OUTLINED_FUNCTION_3();
  v128 = v13 - v12;
  OUTLINED_FUNCTION_2_2();
  v133 = sub_220FC23B0();
  OUTLINED_FUNCTION_6();
  v127 = v14;
  MEMORY[0x28223BE20](v15, v16);
  OUTLINED_FUNCTION_4();
  v126 = v17 - v18;
  OUTLINED_FUNCTION_64();
  MEMORY[0x28223BE20](v19, v20);
  OUTLINED_FUNCTION_12_0();
  v132 = v21;
  v22 = OUTLINED_FUNCTION_2_2();
  v121 = type metadata accessor for ScrubberStore.ViewModel(v22);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v23, v24);
  OUTLINED_FUNCTION_4();
  v130 = v25 - v26;
  OUTLINED_FUNCTION_64();
  MEMORY[0x28223BE20](v27, v28);
  OUTLINED_FUNCTION_12_0();
  v131 = v29;

  sub_220EF89C4();
  v30 = objc_allocWithZone(type metadata accessor for ScrubberOverlayViewController());
  v31 = OUTLINED_FUNCTION_61_4();
  v33 = sub_220F92E48(v31, v32);
  v34 = [v33 view];
  if (!v34)
  {
LABEL_51:
    __break(1u);
LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

  v35 = v34;
  [v34 setAlpha_];

  v36 = *&v2[OBJC_IVAR____TtC11WeatherMaps25InteractiveViewController_scrubberOverlayViewController];
  *&v2[OBJC_IVAR____TtC11WeatherMaps25InteractiveViewController_scrubberOverlayViewController] = v33;
  v140 = v33;

  v136 = OBJC_IVAR____TtC11WeatherMaps25InteractiveViewController_supportsControlEffects;
  v37 = v2[OBJC_IVAR____TtC11WeatherMaps25InteractiveViewController_supportsControlEffects];
  v38 = objc_allocWithZone(type metadata accessor for VariableBlurView());
  v39 = sub_220F1FFF8(v37, 2.0);
  v40 = OBJC_IVAR____TtC11WeatherMaps25InteractiveViewController_backgroundEffectView;
  v41 = *&v2[OBJC_IVAR____TtC11WeatherMaps25InteractiveViewController_backgroundEffectView];
  *&v2[OBJC_IVAR____TtC11WeatherMaps25InteractiveViewController_backgroundEffectView] = v39;

  v42 = v2[OBJC_IVAR____TtC11WeatherMaps25InteractiveViewController_isMapFullscreen];
  v124 = v5;
  v125 = v3;
  v122 = v1;
  v123 = v8;
  v134 = v40;
  if (v42 == 2)
  {
    LOBYTE(v42) = v2[OBJC_IVAR____TtC11WeatherMaps25InteractiveViewController_configuration + 113];
  }

  v43 = &v2[OBJC_IVAR____TtC11WeatherMaps25InteractiveViewController_configuration];
  v44 = *&v2[OBJC_IVAR____TtC11WeatherMaps25InteractiveViewController_configuration + 104];
  memcpy(v143, &v2[OBJC_IVAR____TtC11WeatherMaps25InteractiveViewController_configuration + 16], 0x58uLL);
  sub_220E7857C(&v2[OBJC_IVAR____TtC11WeatherMaps25InteractiveViewController_configuration], v142);
  Strong = swift_unknownObjectWeakLoadStrong();
  v45 = v142[18];

  sub_220E78628(v142);
  sub_220E7857C(v43, v141);
  v46 = swift_unknownObjectWeakLoadStrong();
  v47 = v141[16];
  sub_220E78628(v141);
  v48 = *&v2[OBJC_IVAR____TtC11WeatherMaps25InteractiveViewController____lazy_storage___backgroundEffectManagerBlur];

  v49 = sub_220EF8B4C(&OBJC_IVAR____TtC11WeatherMaps25InteractiveViewController____lazy_storage___backgroundEffectManagerUltraThin, 0);
  v50 = sub_220EF8B4C(&OBJC_IVAR____TtC11WeatherMaps25InteractiveViewController____lazy_storage___backgroundEffectManagerVibrancyFill, 3);
  v51 = objc_allocWithZone(type metadata accessor for ControlsView());
  v52 = sub_220EA5A54(v44, v143, Strong, v45, v46, v47, v48, v49, v50);
  v52[OBJC_IVAR____TtC11WeatherMaps12ControlsView_shouldConsiderSafeArea] = v42 & 1;
  v53 = v52;
  [v53 setAlpha_];
  v54 = OBJC_IVAR____TtC11WeatherMaps12ControlsView_progressBar;
  v55 = *&v53[OBJC_IVAR____TtC11WeatherMaps12ControlsView_progressBar];
  if (v55)
  {
    v56 = v55;
    v57 = sub_220E444F4();
    sub_220F7DC08(v57);
  }

  *&v53[OBJC_IVAR____TtC11WeatherMaps12ControlsView_delegate + 8] = &off_283483138;
  swift_unknownObjectWeakAssign();
  v58 = *&v2[OBJC_IVAR____TtC11WeatherMaps25InteractiveViewController_controlsView];
  *&v2[OBJC_IVAR____TtC11WeatherMaps25InteractiveViewController_controlsView] = v53;
  v59 = v53;

  v139 = v59;
  if ((sub_220FC2300() & 1) == 0 && v2[v136] == 1)
  {

    v60 = sub_220E3D3CC();

    v61 = sub_220E3D3CC();

    v62 = *&v2[OBJC_IVAR____TtC11WeatherMaps25InteractiveViewController_backdropLayerBlur];
    *&v2[OBJC_IVAR____TtC11WeatherMaps25InteractiveViewController_backdropLayerBlur] = v60;

    v63 = *&v2[OBJC_IVAR____TtC11WeatherMaps25InteractiveViewController_backdropLayerUltraThin];
    *&v2[OBJC_IVAR____TtC11WeatherMaps25InteractiveViewController_backdropLayerUltraThin] = v61;
    v59 = v139;
  }

  v64 = swift_unknownObjectRetain();
  sub_220F92C00(v64, &off_283483120);
  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_220E7F14C();
    swift_unknownObjectRelease();
  }

  if ((sub_220FC2300() & 1) == 0 && v2[v136] == 1)
  {
    v65 = *&v2[OBJC_IVAR____TtC11WeatherMaps25InteractiveViewController_backdropLayerBlur];
    if (v65)
    {
      v66 = *&v2[OBJC_IVAR____TtC11WeatherMaps25InteractiveViewController_backdropLayerUltraThin];
      if (v66)
      {
        v67 = v66;
        v68 = v65;
        v69 = [v2 view];
        if (!v69)
        {
LABEL_60:
          __break(1u);
          goto LABEL_61;
        }

        v70 = v69;
        v71 = [v69 layer];

        [v71 addSublayer_];
        v72 = [v2 view];
        if (!v72)
        {
LABEL_61:
          __break(1u);
          return;
        }

        v73 = v72;
        v74 = [v72 layer];

        [v74 addSublayer_];
        v59 = v139;
      }
    }
  }

  v75 = *&v2[v134];
  if (v75)
  {
    v76 = v75;
    [v76 setTranslatesAutoresizingMaskIntoConstraints_];
    v77 = [v76 layer];
    [v77 setCornerRadius_];

    v78 = [v2 view];
    if (!v78)
    {
LABEL_59:
      __break(1u);
      goto LABEL_60;
    }

    v79 = v78;
    [v78 addSubview_];

    v59 = v139;
  }

  [v59 setTranslatesAutoresizingMaskIntoConstraints_];
  v80 = OUTLINED_FUNCTION_70();
  if (!v80)
  {
    goto LABEL_52;
  }

  v81 = v80;
  [v80 addSubview_];

  [v2 addChildViewController_];
  v82 = [v140 view];
  if (!v82)
  {
LABEL_53:
    __break(1u);
    goto LABEL_54;
  }

  v83 = v82;
  [v82 setTranslatesAutoresizingMaskIntoConstraints_];

  v84 = OUTLINED_FUNCTION_70();
  if (!v84)
  {
LABEL_54:
    __break(1u);
    goto LABEL_55;
  }

  v85 = v84;
  v86 = [v140 view];
  if (!v86)
  {
LABEL_55:
    __break(1u);
LABEL_56:
    __break(1u);
LABEL_57:
    __break(1u);
LABEL_58:
    __break(1u);
    goto LABEL_59;
  }

  v87 = v86;
  [v85 addSubview_];

  [v140 didMoveToParentViewController_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9EBE0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_220FC9880;
  v89 = *&v53[v54];
  *(inited + 32) = v89;
  *(inited + 40) = v53;
  v90 = v89;
  *(inited + 48) = [v140 view];
  v91 = 0;
  *(inited + 56) = sub_220EF8494();
  v92 = MEMORY[0x277D84F90];
  v142[0] = MEMORY[0x277D84F90];
  while (v91 != 4)
  {
    if (v91 > 3)
    {
      __break(1u);
      goto LABEL_51;
    }

    v93 = *(inited + 8 * v91++ + 32);
    if (v93)
    {
      v94 = v93;
      MEMORY[0x223D9BEA0]();
      if (*((v142[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v142[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_220FC29C0();
      }

      sub_220FC29F0();
      v92 = v142[0];
    }
  }

  swift_setDeallocating();
  sub_220E5617C();
  v95 = OBJC_IVAR____TtC11WeatherMaps25InteractiveViewController____lazy_storage___mapView;
  [*&v2[OBJC_IVAR____TtC11WeatherMaps25InteractiveViewController____lazy_storage___mapView] setAccessibilityContainerType_];
  v96 = *&v53[v54];
  if (v96)
  {
    [v96 setAccessibilityContainerType_];
  }

  v97 = [v2 view];
  if (!v97)
  {
    goto LABEL_56;
  }

  v98 = v97;
  sub_220F77AE8(v92);
  sub_220F05570();

  v99 = sub_220F22204();
  sub_220F24DF0(v99);
  v100 = OBJC_IVAR____TtC11WeatherMaps25InteractiveViewController_presentingOverlayKind;
  LOBYTE(v142[0]) = v2[OBJC_IVAR____TtC11WeatherMaps25InteractiveViewController_presentingOverlayKind];
  sub_220F24C14(v142);
  [*&v2[v95] _zoomLevel];
  sub_220F24E5C(v101);
  sub_220EFC3AC();
  sub_220EFC450();
  sub_220EFC5C0();
  v102 = v2;
  sub_220F63260(v2, &off_283483268);
  v103 = v102;
  sub_220F63218(v2, &off_283483258);
  v104 = sub_220F22204();
  sub_220F63928(v104);
  LOBYTE(v142[0]) = v2[v100];
  OUTLINED_FUNCTION_34_5(v142);
  v105 = OBJC_IVAR____TtC11WeatherMaps25InteractiveViewController_isUserInteractionEnabled;
  [*&v2[v95] setUserInteractionEnabled_];
  v106 = [v140 view];

  if (!v106)
  {
    goto LABEL_57;
  }

  [v106 setUserInteractionEnabled_];

  if ((v103[v105] & 1) == 0)
  {
    OUTLINED_FUNCTION_10();
    swift_beginAccess();
    OUTLINED_FUNCTION_0_49();
    sub_220F057B4();
    if (*(v131 + 1) == 1)
    {
      v107 = *(v131 + *(v121 + 84));

      if ((v107 & 1) == 0 || !sub_220EE3BB8())
      {
        *(v131 + 1) = 0;
        *(v131 + *(v121 + 60)) = 0;
      }
    }

    else
    {
    }

    OUTLINED_FUNCTION_0_49();
    sub_220F057B4();
    sub_220EE3AE8(v130);
    OUTLINED_FUNCTION_1_44();
    sub_220F056E4(v131, v108);
  }

  v103[OBJC_IVAR____TtC11WeatherMaps25InteractiveViewController_controlsAdded] = 1;
  v109 = [v103 view];
  if (!v109)
  {
    goto LABEL_58;
  }

  v110 = v109;

  [v110 setNeedsLayout];

  v111 = sub_220EE3B58();

  v142[0] = v111;
  OUTLINED_FUNCTION_2_3();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9EBE8);
  sub_220E453D4(&unk_27CF9EBF0, &qword_27CF9EBE8);
  v112 = sub_220FC1A10();

  *&v103[OBJC_IVAR____TtC11WeatherMaps25InteractiveViewController_scrubberObserver] = v112;

  if (sub_220EF8A74())
  {
    sub_220EFC8BC();
  }

  OUTLINED_FUNCTION_2_3();
  v113 = swift_allocObject();
  *(v113 + 16) = v103;
  v103;
  sub_220EF7330(1, sub_220F0560C, v113);

  if (v2[v100] == 5)
  {
    sub_220E1966C(0, &qword_2812C5CA0);
    v135 = sub_220FC2FC0();
    sub_220FC23A0();
    sub_220FC23D0();
    v137 = *(v127 + 8);
    v137(v126, v133);
    OUTLINED_FUNCTION_2_3();
    v114 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v142[4] = sub_220F05614;
    v142[5] = v114;
    v142[0] = MEMORY[0x277D85DD0];
    v142[1] = 1107296256;
    OUTLINED_FUNCTION_21();
    v142[2] = v115;
    v142[3] = &block_descriptor_128;
    v116 = _Block_copy(v142);

    sub_220FC2350();
    v142[0] = MEMORY[0x277D84F90];
    OUTLINED_FUNCTION_13_10();
    sub_220F05888(v117, v118);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CF9DBC0);
    OUTLINED_FUNCTION_9_15();
    sub_220E453D4(v119, v120);
    sub_220FC3430();
    MEMORY[0x223D9C4E0](v132, v128, v122, v116);
    _Block_release(v116);

    (*(v124 + 8))(v122, v125);
    (*(v129 + 8))(v128, v123);
    v137(v132, v133);
  }

  else
  {
  }

  OUTLINED_FUNCTION_22();
}

void sub_220EFAC7C()
{
  v1 = objc_opt_self();
  v2 = [v1 defaultCenter];
  v3 = sub_220FC24A0();
  [v2 addObserver:v0 selector:sel_didMoveToForeground name:v3 object:0];

  v4 = [v1 defaultCenter];
  v5 = sub_220FC24B0();
  [v4 addObserver:v0 selector:sel_didMoveToBackground name:v5 object:0];
}

void sub_220EFAD74()
{
  v1 = sub_220EF8494();
  if (*(v0 + OBJC_IVAR____TtC11WeatherMaps25InteractiveViewController_presentingOverlayKind) == 5)
  {
    if (qword_27CF9C100 != -1)
    {
      swift_once();
    }

    v2 = qword_27CF9F1F8;
  }

  else
  {
    v3 = objc_allocWithZone(MEMORY[0x277D75348]);
    v2 = sub_220F3EA48(sub_220F055DC, 0);
  }

  v4 = v2;
  [v1 setBackgroundColor_];
}

void sub_220EFAE98(char a1)
{
  v3.receiver = v1;
  v3.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v3, sel_viewWillDisappear_, a1 & 1);
  [*&v1[OBJC_IVAR____TtC11WeatherMaps25InteractiveViewController_interaction] dismissMenu];
  sub_220F6AC30(0, 0);
}

void sub_220EFAF64()
{
  v1 = v0;
  v102.receiver = v0;
  v102.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v102, sel_viewDidLayoutSubviews);
  v2 = v0[OBJC_IVAR____TtC11WeatherMaps25InteractiveViewController_preferredMapSize + 16];
  v3 = sub_220EF8494();
  v4 = OUTLINED_FUNCTION_35_6();
  v5 = v4;
  if (v2 == 1)
  {
    if (v4)
    {
      [v4 bounds];

      [v3 frame];
      v6 = OUTLINED_FUNCTION_47_4();
      [v6 v7];
      goto LABEL_6;
    }

    __break(1u);
LABEL_58:
    __break(1u);
LABEL_59:
    __break(1u);
    goto LABEL_60;
  }

  if (!v4)
  {
    goto LABEL_58;
  }

  [v4 center];
  OUTLINED_FUNCTION_17_0();

  v8 = OUTLINED_FUNCTION_62_1();
  [v9 v10];
LABEL_6:

  if (v1[OBJC_IVAR____TtC11WeatherMaps25InteractiveViewController_controlsAdded] != 1)
  {
    return;
  }

  v12 = OBJC_IVAR____TtC11WeatherMaps25InteractiveViewController_controlsView;
  v13 = *&v1[OBJC_IVAR____TtC11WeatherMaps25InteractiveViewController_controlsView];
  if (v13)
  {
    v14 = OBJC_IVAR____TtC11WeatherMaps25InteractiveViewController_controlsInitiallySized;
    if ((v1[OBJC_IVAR____TtC11WeatherMaps25InteractiveViewController_controlsInitiallySized] & 1) == 0)
    {
      v15 = v13;
      v16 = OUTLINED_FUNCTION_23_6();
      if (!v16)
      {
LABEL_71:
        __break(1u);
        goto LABEL_72;
      }

      OUTLINED_FUNCTION_54_4(v16);
      OUTLINED_FUNCTION_9_8();

      OUTLINED_FUNCTION_47_4();
      v17 = OUTLINED_FUNCTION_0_0();
      [v18 v19];

      v1[v14] = 1;
    }
  }

  v20 = OBJC_IVAR____TtC11WeatherMaps25InteractiveViewController_backgroundEffectView;
  v21 = *&v1[OBJC_IVAR____TtC11WeatherMaps25InteractiveViewController_backgroundEffectView];
  if (!v21)
  {
    goto LABEL_24;
  }

  v22 = v1[OBJC_IVAR____TtC11WeatherMaps25InteractiveViewController_isMapFullscreen];
  if (v22 == 2)
  {
    LOBYTE(v22) = v1[OBJC_IVAR____TtC11WeatherMaps25InteractiveViewController_configuration + 113];
  }

  v5 = v21;
  [v5 frame];
  OUTLINED_FUNCTION_17_0();
  if (v22)
  {
    v23 = OUTLINED_FUNCTION_35_6();
    if (!v23)
    {
LABEL_72:
      __break(1u);
      goto LABEL_73;
    }

    v24 = v23;
    [v23 safeAreaInsets];
  }

  v25 = OUTLINED_FUNCTION_35_6();
  if (!v25)
  {
    goto LABEL_59;
  }

  v26 = v25;
  [v25 bounds];
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v34 = v33;

  v103.origin.x = v28;
  v103.origin.y = v30;
  v103.size.width = v32;
  v103.size.height = v34;
  CGRectGetWidth(v103);
  v35 = OUTLINED_FUNCTION_62_1();
  [v36 v37];

  v38 = sub_220EF8494();
  v3 = [v38 _mapLayer];

  if (!v3)
  {
LABEL_60:
    __break(1u);
    goto LABEL_61;
  }

  v39 = OUTLINED_FUNCTION_35_6();
  if (!v39)
  {
LABEL_61:
    __break(1u);
    goto LABEL_62;
  }

  v40 = v39;
  [v39 &selRef_newComputePipelineStateWithFunction_options_reflection_error_];
  v42 = v41;

  *&v43 = v42;
  OUTLINED_FUNCTION_69_2(v43, v44, sel_setLabelEdgeInsets_);

  if (![*&v1[OBJC_IVAR____TtC11WeatherMaps25InteractiveViewController____lazy_storage___mapView] _mapLayer])
  {
LABEL_62:
    __break(1u);
    goto LABEL_63;
  }

  v45 = OUTLINED_FUNCTION_23_6();
  if (!v45)
  {
LABEL_65:
    __break(1u);
LABEL_66:
    __break(1u);
    goto LABEL_67;
  }

  v46 = v45;
  [v45 &selRef_newComputePipelineStateWithFunction_options_reflection_error_];
  v48 = v47;

  *&v49 = v48;
  OUTLINED_FUNCTION_69_2(v49, v50, sel_setLabelEdgeWidths_);

  v51 = *&v1[v20];
  if (v51)
  {
    [v51 frame];
    MaxY = CGRectGetMaxY(v104);
  }

LABEL_24:
  v52 = *&v1[v12];
  if (v52)
  {
    v3 = v52;
    sub_220EA4830();
    if (v53 != 0.0)
    {
      sub_220EA4830();
      v55 = v54;
      v5 = v3;
      v56 = OUTLINED_FUNCTION_35_6();
      if (!v56)
      {
LABEL_73:
        __break(1u);
        goto LABEL_74;
      }

      v57 = v56;
      [v56 bounds];
      OUTLINED_FUNCTION_13_2();

      v105.origin.x = OUTLINED_FUNCTION_12_4();
      [v5 setFrame_];
    }
  }

  v58 = *&v1[OBJC_IVAR____TtC11WeatherMaps25InteractiveViewController_backdropLayerBlur];
  if (v58)
  {
    v59 = v58;
    v60 = OUTLINED_FUNCTION_23_6();
    if (v60)
    {
      OUTLINED_FUNCTION_54_4(v60);
      OUTLINED_FUNCTION_9_8();

      OUTLINED_FUNCTION_47_4();
      v61 = OUTLINED_FUNCTION_0_0();
      [v62 v63];

      goto LABEL_32;
    }

LABEL_63:
    __break(1u);
LABEL_64:
    __break(1u);
    goto LABEL_65;
  }

LABEL_32:
  v64 = *&v1[OBJC_IVAR____TtC11WeatherMaps25InteractiveViewController_backdropLayerUltraThin];
  if (!v64)
  {
    goto LABEL_35;
  }

  v65 = v64;
  v66 = OUTLINED_FUNCTION_23_6();
  if (!v66)
  {
    goto LABEL_64;
  }

  OUTLINED_FUNCTION_54_4(v66);
  OUTLINED_FUNCTION_9_8();

  OUTLINED_FUNCTION_47_4();
  v67 = OUTLINED_FUNCTION_0_0();
  [v68 v69];

LABEL_35:
  v70 = *&v1[OBJC_IVAR____TtC11WeatherMaps25InteractiveViewController_scrubberOverlayViewController];
  if (!v70)
  {
    goto LABEL_39;
  }

  if (![v70 view])
  {
    goto LABEL_66;
  }

  v71 = OUTLINED_FUNCTION_23_6();
  if (!v71)
  {
LABEL_67:
    __break(1u);
    goto LABEL_68;
  }

  OUTLINED_FUNCTION_54_4(v71);
  OUTLINED_FUNCTION_9_8();

  OUTLINED_FUNCTION_47_4();
  v72 = OUTLINED_FUNCTION_0_0();
  [v73 v74];

LABEL_39:
  v75 = *&v1[OBJC_IVAR____TtC11WeatherMaps25InteractiveViewController_debugLabel];
  if (!v75)
  {
    goto LABEL_42;
  }

  v76 = v75;
  v77 = OUTLINED_FUNCTION_23_6();
  if (!v77)
  {
LABEL_68:
    __break(1u);
LABEL_69:
    __break(1u);
    goto LABEL_70;
  }

  OUTLINED_FUNCTION_54_4(v77);
  v79 = v78;

  [v3 setFrame_];
LABEL_42:
  v80 = sub_220FC2300();
  v81 = OUTLINED_FUNCTION_35_6();
  v82 = v81;
  if (v80)
  {
    if (v81)
    {
      [v81 safeAreaInsets];

      sub_220FC1110();
      v84 = v83;
      v85 = sub_220FC2300();
      v86 = 16.0;
      if (v85)
      {
        v86 = 12.0;
      }

      if (v84 <= v86)
      {
        v84 = v86;
      }

      OUTLINED_FUNCTION_51_3();
      v87 = &v82[*(type metadata accessor for ScrubberStore.ViewModel(0) + 76)];
      *v87 = 0.0;
      v87[1] = v84;

      goto LABEL_55;
    }

    goto LABEL_69;
  }

  if (!v81)
  {
LABEL_70:
    __break(1u);
    goto LABEL_71;
  }

  [v81 safeAreaInsets];
  v89 = v88;

  v90 = sub_220EF8494();
  if (v89 == 0.0)
  {
    [v90 _setAttributionInsets_];
  }

  else
  {
    v91 = OUTLINED_FUNCTION_35_6();
    if (!v91)
    {
LABEL_74:
      __break(1u);
      return;
    }

    v92 = v91;
    [v91 safeAreaInsets];
    v94 = v93;

    [v90 _setAttributionInsets_];
  }

  v95 = sub_220EF8494();
  [v95 bounds];
  OUTLINED_FUNCTION_9_8();

  v106.origin.x = OUTLINED_FUNCTION_0_0();
  Width = CGRectGetWidth(v106);
  v97 = OBJC_IVAR____TtC11WeatherMaps25InteractiveViewController____lazy_storage___mapView;
  [*&v1[OBJC_IVAR____TtC11WeatherMaps25InteractiveViewController____lazy_storage___mapView] attributionFrame];
  v98 = Width - CGRectGetMaxX(v107);
  [*&v1[v97] bounds];
  Height = CGRectGetHeight(v108);
  [*&v1[v97] attributionFrame];
  v100 = Height - CGRectGetMinY(v109) + 4.0;
  OUTLINED_FUNCTION_51_3();
  v101 = (v97 + *(type metadata accessor for ScrubberStore.ViewModel(0) + 76));
  *v101 = v98;
  v101[1] = v100;
LABEL_55:
  sub_220EE3A34();

  sub_220EFB6E0();
}

void sub_220EFB6E0()
{
  v1 = (v0 + OBJC_IVAR____TtC11WeatherMaps25InteractiveViewController_pendingBannerReplacementBlock);
  v2 = *(v0 + OBJC_IVAR____TtC11WeatherMaps25InteractiveViewController_pendingBannerReplacementBlock);
  if (v2 && *(v0 + OBJC_IVAR____TtC11WeatherMaps25InteractiveViewController_backgroundEffectView))
  {
    *v1 = 0;
    v1[1] = 0;
    v2();

    sub_220E2DD2C(v2);
  }
}

void sub_220EFB79C()
{
  OUTLINED_FUNCTION_60_2();
  v3.receiver = v0;
  v3.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v3, sel_didMoveToParentViewController_, v0);
  Strong = swift_unknownObjectWeakLoadStrong();
  v2 = Strong;
  if (v0)
  {
    if (Strong)
    {

      if (v2 == v0)
      {
        return;
      }
    }
  }

  else
  {
    if (!Strong)
    {
      return;
    }
  }

  swift_unknownObjectWeakAssign();
  if (v0)
  {
    sub_220F6A4B8(0);
  }

  *(v0 + OBJC_IVAR____TtC11WeatherMaps25InteractiveViewController_isDismissing) = 0;
}

void sub_220EFB8BC()
{
  OUTLINED_FUNCTION_29_2();
  v2 = v0;
  OUTLINED_FUNCTION_60_2();
  ObjectType = swift_getObjectType();
  v4 = type metadata accessor for ScrubberStore.ViewModel(0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v5, v6);
  OUTLINED_FUNCTION_4();
  v9 = v7 - v8;
  MEMORY[0x28223BE20](v10, v11);
  OUTLINED_FUNCTION_41_2();
  v31.receiver = v0;
  v31.super_class = ObjectType;
  objc_msgSendSuper2(&v31, sel_traitCollectionDidChange_, v0);
  v12 = [objc_opt_self() sharedApplication];
  v13 = [v12 applicationState];

  if (v13 == 2)
  {
    if (qword_2812C5EC8 != -1)
    {
      OUTLINED_FUNCTION_16();
    }

    v14 = sub_220FC17A0();
    OUTLINED_FUNCTION_23_0(v14, qword_2812C5ED0);
    v15 = sub_220FC1780();
    v16 = sub_220FC2E30();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_220E15000, v15, v16, "Ignoring map base userInterfaceStyle request from background state.", v17, 2u);
      OUTLINED_FUNCTION_15();
    }
  }

  else
  {
    v18 = OUTLINED_FUNCTION_56_3();
    v19 = [v18 userInterfaceStyle];

    if (v19 != *(*&v2[OBJC_IVAR____TtC11WeatherMaps25InteractiveViewController_annotationManager] + OBJC_IVAR____TtC11WeatherMaps27WeatherMapAnnotationManager_userInterfaceStyle))
    {
      v20 = OUTLINED_FUNCTION_56_3();
      v21 = [v20 userInterfaceStyle];

      sub_220F24DF0(v21);

      v22 = OUTLINED_FUNCTION_56_3();
      v23 = [v22 userInterfaceStyle];

      OUTLINED_FUNCTION_10();
      swift_beginAccess();
      sub_220F057B4();
      *(v1 + *(v4 + 88)) = v23;
      sub_220F057B4();
      sub_220EE3AE8(v9);
      OUTLINED_FUNCTION_1_44();
      sub_220F056E4(v1, v24);

      v25 = *&v2[OBJC_IVAR____TtC11WeatherMaps25InteractiveViewController_controlsView];
      if (v25)
      {
        v26 = v25;
        v27 = OUTLINED_FUNCTION_56_3();
        v28 = [v27 userInterfaceStyle];

        sub_220EA589C(v28);
      }

      v29 = OUTLINED_FUNCTION_56_3();
      v30 = [v29 userInterfaceStyle];

      sub_220F63928(v30);
      sub_220EFAD74();
    }
  }

  OUTLINED_FUNCTION_22();
}

uint64_t sub_220EFBC50()
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = sub_220E7F2A8();
    swift_unknownObjectRelease();
    return v1;
  }

  return result;
}

void sub_220EFBCD4()
{
  OUTLINED_FUNCTION_29_2();
  ObjectType = swift_getObjectType();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9EBC0);
  OUTLINED_FUNCTION_8_0(v3);
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v4, v5);
  OUTLINED_FUNCTION_57_4();
  sub_220FC02B0();
  OUTLINED_FUNCTION_6();
  v31 = v7;
  v32 = v6;
  MEMORY[0x28223BE20](v6, v8);
  OUTLINED_FUNCTION_3();
  v11 = v10 - v9;
  v12 = type metadata accessor for ScrubberStore.ViewModel(0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v13, v14);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_44_3();
  v15 = OBJC_IVAR____TtC11WeatherMaps25InteractiveViewController_scrubberStore;
  OUTLINED_FUNCTION_10();
  swift_beginAccess();
  OUTLINED_FUNCTION_0_49();
  sub_220F057B4();
  v16 = sub_220EE3BB8();
  OUTLINED_FUNCTION_1_44();
  sub_220F056E4(v0, v17);
  if (v16)
  {
    v18 = *&v0[v15] + OBJC_IVAR____TtC11WeatherMaps13ScrubberStore_viewModel;
    OUTLINED_FUNCTION_10();
    swift_beginAccess();
    v19 = *(v18 + *(v12 + 40));

    sub_220EE46C8();

    if (v19)
    {
      OUTLINED_FUNCTION_10();
      swift_beginAccess();
      sub_220E43574();
      if (__swift_getEnumTagSinglePayload(v1, 1, v32) != 1)
      {
        (*(v31 + 32))(v11, v1, v32);
        v21 = *&v0[OBJC_IVAR____TtC11WeatherMaps25InteractiveViewController_accessibilityFrameDateFormatter];
        v22 = sub_220FC01D0();
        v23 = [v21 stringFromDate_];

        v24 = sub_220FC2700();
        v26 = v25;

        if (qword_2812C5B30 != -1)
        {
          OUTLINED_FUNCTION_1_0();
        }

        v27 = qword_2812CE4B0;
        OUTLINED_FUNCTION_10();
        sub_220FBFF80();

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9EBD0);
        v28 = swift_allocObject();
        *(v28 + 16) = xmmword_220FC8E30;
        *(v28 + 56) = MEMORY[0x277D837D0];
        *(v28 + 64) = sub_220E69720();
        *(v28 + 32) = v24;
        *(v28 + 40) = v26;
        OUTLINED_FUNCTION_43_2();
        sub_220FC2720();

        (*(v31 + 8))(v11, v32);
        goto LABEL_12;
      }

      sub_220E3B2DC(v1, &qword_27CF9EBC0);
      if (qword_2812C5B30 == -1)
      {
LABEL_8:
        v20 = qword_2812CE4B0;
        OUTLINED_FUNCTION_10();
        sub_220FBFF80();

LABEL_12:
        v29 = *MEMORY[0x277D76438];
        OUTLINED_FUNCTION_61_4();
        v30 = sub_220FC26C0();

        UIAccessibilityPostNotification(v29, v30);

        goto LABEL_13;
      }
    }

    else if (qword_2812C5B30 == -1)
    {
      goto LABEL_8;
    }

    OUTLINED_FUNCTION_1_0();
    goto LABEL_8;
  }

  v33.receiver = v0;
  v33.super_class = ObjectType;
  objc_msgSendSuper2(&v33, sel_accessibilityPerformMagicTap);
LABEL_13:
  OUTLINED_FUNCTION_22();
}

id sub_220EFC1CC()
{
  *(v0 + OBJC_IVAR____TtC11WeatherMaps25InteractiveViewController_appIsInForeground) = 0;
  v1 = *(v0 + OBJC_IVAR____TtC11WeatherMaps25InteractiveViewController_scrubberStore) + OBJC_IVAR____TtC11WeatherMaps13ScrubberStore_viewModel;
  OUTLINED_FUNCTION_10();
  swift_beginAccess();
  *(v0 + OBJC_IVAR____TtC11WeatherMaps25InteractiveViewController_wasPlayingBeforeBackgrounded) = *(v1 + *(type metadata accessor for ScrubberStore.ViewModel(0) + 40));

  sub_220EE46C8();

  sub_220F6A760();
  return [*(v0 + OBJC_IVAR____TtC11WeatherMaps25InteractiveViewController_interaction) dismissMenu];
}

void sub_220EFC2D8()
{
  *(v0 + OBJC_IVAR____TtC11WeatherMaps25InteractiveViewController_appIsInForeground) = 1;
  v1 = OBJC_IVAR____TtC11WeatherMaps25InteractiveViewController_wasPlayingBeforeBackgrounded;

  sub_220EE46C8();

  *(v0 + v1) = 2;
  sub_220F6A7E4();
}

void sub_220EFC3AC()
{
  v1 = *(v0 + OBJC_IVAR____TtC11WeatherMaps25InteractiveViewController_interaction);
  *(v1 + OBJC_IVAR____TtC11WeatherMaps22ContextMenuInteraction_weatherDataSource + 8) = &off_2834830E0;
  swift_unknownObjectWeakAssign();
  *(v1 + OBJC_IVAR____TtC11WeatherMaps22ContextMenuInteraction_weatherDelegate + 8) = &off_2834830B8;
  swift_unknownObjectWeakAssign();
  v2 = sub_220EF8494();
  [v2 addInteraction_];
}

void sub_220EFC450()
{
  v1 = sub_220EF8494();
  v2 = [v1 _pinchGestureRecognizer];

  if (!v2)
  {
    __break(1u);
    goto LABEL_8;
  }

  [v2 addTarget:v0 action:sel_mapGestureDidChange];

  v3 = OBJC_IVAR____TtC11WeatherMaps25InteractiveViewController____lazy_storage___mapView;
  v4 = [*(v0 + OBJC_IVAR____TtC11WeatherMaps25InteractiveViewController____lazy_storage___mapView) _panningGestureRecognizer];
  if (!v4)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v5 = v4;
  [v4 addTarget:v0 action:sel_mapGestureDidChange];

  v6 = [*(v0 + v3) _rotationGestureRecognizer];
  if (!v6)
  {
LABEL_9:
    __break(1u);
    return;
  }

  v7 = v6;
  [v6 addTarget:v0 action:sel_mapGestureDidChange];

  v8 = *(v0 + v3);
  v9 = *(v0 + OBJC_IVAR____TtC11WeatherMaps25InteractiveViewController_overlaySonifier + 8);
  ObjectType = swift_getObjectType();
  v11 = *(v9 + 72);
  v12 = v8;
  v13 = v11(ObjectType, v9);
  [v12 addGestureRecognizer_];
}

void sub_220EFC5C0()
{
  v3 = [objc_allocWithZone(MEMORY[0x277D75B80]) init];
  v1 = sub_220EF8494();
  v2 = [v1 _doubleTapGestureRecognizer];

  if (v2)
  {
    [v3 requireGestureRecognizerToFail_];

    [v3 addTarget:v0 action:sel_didTapMap_];
    [*(v0 + OBJC_IVAR____TtC11WeatherMaps25InteractiveViewController____lazy_storage___mapView) addGestureRecognizer_];
  }

  else
  {
    __break(1u);
  }
}

void sub_220EFC698(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9EBC0);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v5 = &v15 - v4;
  v6 = sub_220FC02B0();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v12 = Strong;
    v13 = type metadata accessor for ScrubberStore.ViewModel(0);
    sub_220E43574();
    if (__swift_getEnumTagSinglePayload(v5, 1, v6) == 1)
    {
      sub_220E3B2DC(v5, &qword_27CF9EBC0);
    }

    else
    {
      (*(v7 + 32))(v10, v5, v6);
      sub_220F6AD50(v10);
      (*(v7 + 8))(v10, v6);
    }

    if (*&v12[OBJC_IVAR____TtC11WeatherMaps25InteractiveViewController_refreshTimer])
    {
      v14 = *(a1 + *(v13 + 44));

      sub_220EEC91C(v14);
    }

    sub_220F6AC30(*(a1 + *(v13 + 40)), 0);
  }
}

void sub_220EFC8BC()
{
  v1 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  [v1 setTranslatesAutoresizingMaskIntoConstraints_];
  v2 = [v0 view];
  if (v2)
  {
    v3 = v2;
    [v2 addSubview_];

    v4 = [objc_opt_self() systemFontOfSize_];
    [v1 setFont_];

    v5 = objc_opt_self();
    v6 = [v5 greenColor];
    [v1 setTextColor_];

    [v1 setNumberOfLines_];
    v7 = [v5 blackColor];
    v8 = [v7 colorWithAlphaComponent_];

    [v1 setBackgroundColor_];
    v9 = *&v0[OBJC_IVAR____TtC11WeatherMaps25InteractiveViewController_debugLabel];
    *&v0[OBJC_IVAR____TtC11WeatherMaps25InteractiveViewController_debugLabel] = v1;
    v10 = v1;

    sub_220EFDD00();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_220EFCA78(char *a1)
{
  *(*&a1[OBJC_IVAR____TtC11WeatherMaps25InteractiveViewController_annotationManager] + 200) = &off_283483190;
  swift_unknownObjectWeakAssign();
  v2 = a1;
  return sub_220F2425C(a1, &off_2834831A0);
}

id sub_220EFCAD0()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  if (v0[OBJC_IVAR____TtC11WeatherMaps25InteractiveViewController_overlayIsLoading] == 1)
  {
    v3 = *&v0[OBJC_IVAR____TtC11WeatherMaps25InteractiveViewController_onMapEventHandler];
    if (v3)
    {
      v7 = 0x2000000000000001;
      v8 = 0u;
      v9 = 0u;
      v10 = 0u;
      v11 = 0u;

      v3(&v7);
      v4 = OUTLINED_FUNCTION_61_4();
      sub_220E2DD2C(v4);
    }
  }

  v5 = [objc_opt_self() defaultCenter];
  [v5 removeObserver_];

  v12.receiver = v1;
  v12.super_class = ObjectType;
  return objc_msgSendSuper2(&v12, sel_dealloc);
}

id sub_220EFCE6C(uint64_t a1, uint64_t a2, uint64_t (*a3)(id))
{
  *(a2 + OBJC_IVAR____TtC11WeatherMaps25InteractiveViewController_controlsVisiblity) = 3;
  sub_220EFB6E0();
  result = sub_220EFCEC4();
  if (a3)
  {
    return a3(result);
  }

  return result;
}

id sub_220EFCEC4()
{
  v1 = v0;
  if ((sub_220FC2300() & 1) == 0)
  {
    result = [v0 view];
    if (result)
    {
      v9 = result;
      [result safeAreaInsets];
      v11 = v10;

      v6 = v11 * -0.5;
      v5 = 0.0;
      v4 = 0.0;
LABEL_10:
      v7 = 0.0;
      goto LABEL_11;
    }

    __break(1u);
    goto LABEL_20;
  }

  v2 = *&v0[OBJC_IVAR____TtC11WeatherMaps25InteractiveViewController_controlsView];
  if (v2)
  {
    v3 = v2;
    sub_220EA57AC(v31);

    if ((v34 & 1) == 0)
    {
      v4 = v32;
      v12 = v33;
      result = [v1 view];
      if (result)
      {
        v13 = result;
        [result frame];
        v15 = v14;
        v17 = v16;
        v19 = v18;
        v21 = v20;

        v36.origin.x = v15;
        v36.origin.y = v17;
        v36.size.width = v19;
        v36.size.height = v21;
        Height = CGRectGetHeight(v36);
        result = [v1 view];
        if (result)
        {
          v23 = result;
          [result safeAreaInsets];
          v25 = v24;

          v6 = Height - v25 - v12;
          v5 = 0.0;
          goto LABEL_10;
        }

LABEL_21:
        __break(1u);
        return result;
      }

LABEL_20:
      __break(1u);
      goto LABEL_21;
    }
  }

  v5 = *MEMORY[0x277D768C8];
  v4 = *(MEMORY[0x277D768C8] + 8);
  v6 = *(MEMORY[0x277D768C8] + 16);
  v7 = *(MEMORY[0x277D768C8] + 24);
LABEL_11:
  if ((sub_220FC2300() & 1) != 0 && (v26 = sub_220EF8494(), [v26 _setAttributionInsets_], v26, v27 = OBJC_IVAR____TtC11WeatherMaps25InteractiveViewController____lazy_storage___mapView, (objc_msgSend(*&v1[OBJC_IVAR____TtC11WeatherMaps25InteractiveViewController____lazy_storage___mapView], sel_showsAttribution) & 1) == 0))
  {
    v30 = *&v1[v27];

    return [v30 setShowsAttribution_];
  }

  else
  {
    type metadata accessor for ViewAnimator();
    v28 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v29 = swift_allocObject();
    *(v29 + 16) = v28;
    *(v29 + 24) = v5;
    *(v29 + 32) = v4;
    *(v29 + 40) = v6;
    *(v29 + 48) = v7;

    sub_220F1AFD0(sub_220F0565C, v29, 0, 0);
  }
}

void sub_220EFD170(uint64_t a1, double a2)
{
  v4 = *(a1 + OBJC_IVAR____TtC11WeatherMaps25InteractiveViewController_scrubberOverlayViewController);
  if (v4)
  {
    v5 = [v4 view];
    if (!v5)
    {
      __break(1u);
      return;
    }

    v6 = v5;
    [v5 setAlpha_];
  }

  v7 = *(a1 + OBJC_IVAR____TtC11WeatherMaps25InteractiveViewController_controlsView);
  if (v7)
  {
    [v7 setAlpha_];
  }

  v8 = *(a1 + OBJC_IVAR____TtC11WeatherMaps25InteractiveViewController_contentStatusBannerViewController);
  if (v8)
  {
    v9 = [v8 view];
    if (v9)
    {
      v10 = v9;
      [v9 setAlpha_];
    }
  }
}

void sub_220EFD26C(double a1, double a2, double a3, double a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    v10 = sub_220EF8494();
    [v10 _setAttributionInsets_];
  }
}

id sub_220EFD3F4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for InteractiveViewController.OnCoreAnimationDidStart();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_220EFD440()
{
  v1 = v0;
  v2 = sub_220EF8494();
  v3 = [v2 _pinchGestureRecognizer];

  if (!v3)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v4 = sub_220EFD5D0();

  if (v4)
  {
    goto LABEL_7;
  }

  v5 = OBJC_IVAR____TtC11WeatherMaps25InteractiveViewController____lazy_storage___mapView;
  v6 = [*(v1 + OBJC_IVAR____TtC11WeatherMaps25InteractiveViewController____lazy_storage___mapView) _panningGestureRecognizer];
  if (!v6)
  {
    goto LABEL_15;
  }

  v7 = v6;
  v8 = sub_220EFD5D0();

  if (v8)
  {
    goto LABEL_7;
  }

  v9 = [*(v1 + v5) _rotationGestureRecognizer];
  if (v9)
  {
    v10 = v9;
    v11 = sub_220EFD5D0();

    if ((v11 & 1) == 0)
    {
      v12 = 2;
LABEL_13:
      *(*(v1 + OBJC_IVAR____TtC11WeatherMaps25InteractiveViewController_overlayManager) + 464) = v12;
      sub_220F632A8();
      return;
    }

LABEL_7:
    if (*(v1 + OBJC_IVAR____TtC11WeatherMaps25InteractiveViewController_overlayIsLoading) == 1)
    {
      v12 = 1;
      if ((*(v1 + OBJC_IVAR____TtC11WeatherMaps25InteractiveViewController_overlayLoadingWasInterruptedByUserInteraction) & 1) == 0)
      {
        *(v1 + OBJC_IVAR____TtC11WeatherMaps25InteractiveViewController_overlayLoadingWasInterruptedByUserInteraction) = 1;
        sub_220F6AE60();
        v13 = *(v1 + OBJC_IVAR____TtC11WeatherMaps25InteractiveViewController_onMapEventHandler);
        if (v13)
        {
          v14 = 0x2000000000000001;
          v15 = 0u;
          v16 = 0u;
          v17 = 0u;
          v18 = 0u;

          v13(&v14);
          sub_220E2DD2C(v13);
        }
      }
    }

    else
    {
      v12 = 1;
    }

    goto LABEL_13;
  }

LABEL_16:
  __break(1u);
}

id sub_220EFD5D0()
{
  result = [v0 state];
  if (result != 1)
  {
    return ([v0 state] == 2);
  }

  return result;
}

void sub_220EFD660(void *a1)
{
  v3 = [a1 view];
  [a1 locationInView_];
  v5 = v4;
  v7 = v6;

  v24 = v1;
  v8 = sub_220EF8494();
  v9 = [v8 annotations];

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CF9EF90);
  v10 = sub_220FC2970();

  v11 = MEMORY[0x277D84F90];
  v25 = MEMORY[0x277D84F90];
  v12 = sub_220F43CDC(v10);
  v13 = 0;
  v14 = OBJC_IVAR____TtC11WeatherMaps25InteractiveViewController____lazy_storage___mapView;
  while (v12 != v13)
  {
    if ((v10 & 0xC000000000000001) != 0)
    {
      v15 = MEMORY[0x223D9CB30](v13, v10);
    }

    else
    {
      if (v13 >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_28;
      }

      v15 = *(v10 + 8 * v13 + 32);
      swift_unknownObjectRetain();
    }

    v16 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      __break(1u);
LABEL_28:
      __break(1u);
LABEL_29:
      __break(1u);
LABEL_30:
      __break(1u);
      return;
    }

    v17 = [*(v24 + v14) viewForAnnotation_];
    v18 = swift_unknownObjectRelease();
    ++v13;
    if (v17)
    {
      MEMORY[0x223D9BEA0](v18);
      if (*((v25 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v25 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_220FC29C0();
      }

      sub_220FC29F0();
      v11 = v25;
      v13 = v16;
    }
  }

  v19 = sub_220F43CDC(v11);
  for (i = 0; v19 != i; ++i)
  {
    if ((v11 & 0xC000000000000001) != 0)
    {
      v21 = MEMORY[0x223D9CB30](i, v11);
    }

    else
    {
      if (i >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_30;
      }

      v21 = *(v11 + 8 * i + 32);
    }

    v22 = v21;
    if (__OFADD__(i, 1))
    {
      goto LABEL_29;
    }

    [v21 frame];
    v27.x = v5;
    v27.y = v7;
    v23 = CGRectContainsPoint(v28, v27);

    if (v23)
    {

      return;
    }
  }

  swift_retain_n();
  sub_220EE3FCC();
}

void sub_220EFD9B4(void *a1)
{
  v3 = type metadata accessor for ScrubberStore.ViewModel(0);
  MEMORY[0x28223BE20](v3, v4);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7, v8);
  v10 = &v27 - v9;
  MEMORY[0x28223BE20](v11, v12);
  v14 = &v27 - v13;
  v15 = sub_220EF8494();
  [a1 locationInView_];
  v17 = v16;
  v19 = v18;

  v21 = v1 + OBJC_IVAR____TtC11WeatherMaps25InteractiveViewController_lastHoverLocation;
  if ((*(v1 + OBJC_IVAR____TtC11WeatherMaps25InteractiveViewController_lastHoverLocation + 16) & 1) != 0 || (v20 = *v21, *v21 != v17) || (v20 = *(v21 + 8), v20 != v19))
  {
    *v21 = v17;
    *(v21 + 8) = v19;
    *(v21 + 16) = 0;
    v22 = [a1 state];
    if ((v22 - 1) < 2)
    {
      v23 = *(v1 + OBJC_IVAR____TtC11WeatherMaps25InteractiveViewController_scrubberStore);
      swift_beginAccess();
      sub_220F057B4();
      v24 = v14[1];

      if ((v24 & 1) == 0 && sub_220EE3BB8())
      {
        v14[1] = 1;
        __swift_project_boxed_opaque_existential_1((v23 + OBJC_IVAR____TtC11WeatherMaps13ScrubberStore_scrubberForecastHintManager), *(v23 + OBJC_IVAR____TtC11WeatherMaps13ScrubberStore_scrubberForecastHintManager + 24));
        sub_220EE5DCC();
        v14[v3[12]] = v25 & 1;
        *&v14[v3[15]] = 0;
      }

      v6 = v14;
LABEL_9:
      sub_220F057B4();
      sub_220EE3AE8(v10);
      sub_220F056E4(v6, type metadata accessor for ScrubberStore.ViewModel);

      return;
    }

    if (v22 == 3)
    {
      swift_beginAccess();
      sub_220F057B4();
      if (v6[1] == 1)
      {
        v26 = v6[v3[21]];

        if ((v26 & 1) == 0 || !sub_220EE3BB8())
        {
          v6[1] = 0;
          *&v6[v3[15]] = 0;
        }
      }

      else
      {
      }

      goto LABEL_9;
    }
  }
}

void sub_220EFDD00()
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9CEE8);
  OUTLINED_FUNCTION_8_0(v3);
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v4, v5);
  v7 = &v47 - v6;
  v51 = sub_220FC0760();
  OUTLINED_FUNCTION_6();
  v9 = v8;
  MEMORY[0x28223BE20](v10, v11);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_44_3();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CF9D6D0);
  OUTLINED_FUNCTION_8_0(v12);
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v13, v14);
  OUTLINED_FUNCTION_25_8();
  v15 = sub_220FC1070();
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v16, v17);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_62();
  v19 = *(v0 + OBJC_IVAR____TtC11WeatherMaps25InteractiveViewController_debugLabel);
  if (!v19)
  {
    return;
  }

  v50 = v18;
  v49 = v0;
  v20 = (v0 + OBJC_IVAR____TtC11WeatherMaps25InteractiveViewController_activeOverlay);
  OUTLINED_FUNCTION_10();
  swift_beginAccess();
  v21 = type metadata accessor for WeatherMapOverlay();
  if (__swift_getEnumTagSinglePayload(v20, 1, v21))
  {
    v22 = 1701736302;
    v23 = v19;
    v24 = 0xE400000000000000;
  }

  else
  {
    v48 = v9;
    memcpy(__dst, v20 + 2, sizeof(__dst));
    v25 = sub_220E435CC(__dst);
    sub_220E22B0C(__dst);
    switch(v25)
    {
      case 1:
        v32 = v19;
        v24 = 0xE500000000000000;
        v22 = 0x7261646172;
        goto LABEL_12;
      case 2:
        v30 = v19;
        v24 = 0xE800000000000000;
        v22 = 0x7473616365726F66;
        goto LABEL_12;
      case 3:
        v31 = v19;
        v24 = 0xEB00000000657275;
        v22 = 0x74617265706D6574;
        goto LABEL_12;
      case 4:
        v29 = v19;
        v24 = 0xE400000000000000;
        v22 = 1684957559;
LABEL_12:
        v9 = v48;
        break;
      default:
        EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v20, 1, v21);
        v9 = v48;
        if (EnumTagSinglePayload || (v27 = v20[1], v27 < 2))
        {
          v28 = v19;
          v24 = 0xE300000000000000;
          v22 = 4804929;
        }

        else
        {
          v44 = *v20;
          v53 = 0x2820495141;
          v54 = 0xE500000000000000;
          v45 = v19;
          sub_220EA10E4(v44, v27);
          MEMORY[0x223D9BD60](v44, v27);
          v46 = v44;
          v9 = v48;
          sub_220E5E3D0(v46, v27);
          MEMORY[0x223D9BD60](41, 0xE100000000000000);
          v22 = v53;
          v24 = v54;
        }

        break;
    }
  }

  v33 = sub_220EF8494();
  [v33 _zoomLevel];
  v35 = v34;

  v36 = v35 * 100.0;
  if (COERCE__INT64(fabs(v35 * 100.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_33;
  }

  if (v36 <= -9.22337204e18)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  if (v36 >= 9.22337204e18)
  {
LABEL_34:
    __break(1u);
    return;
  }

  OUTLINED_FUNCTION_10();
  swift_beginAccess();
  sub_220E43574();
  OUTLINED_FUNCTION_36_4(v2);
  if (v37)
  {
    v38 = 4271950;
    sub_220E3B2DC(v2, &unk_27CF9D6D0);
    v39 = 0xE300000000000000;
  }

  else
  {
    v48 = v22;
    v40 = v24;
    v41 = v50;
    (*(v50 + 32))(v1, v2, v15);
    sub_220EFE3D0(v1, v7);
    v42 = v51;
    v43 = __swift_getEnumTagSinglePayload(v7, 1, v51);
    if (v43 == 1)
    {
      v38 = 4271950;
      (*(v41 + 8))(v1, v15);
      sub_220E3B2DC(v7, &qword_27CF9CEE8);
      v39 = 0xE300000000000000;
      v24 = v40;
    }

    else
    {
      (*(v9 + 32))(v49, v7, v42);
      WeatherDataModel.rainExpectation.getter(&v53);
      v39 = 0xE900000000000072;
      v38 = 0x756F68207478656ELL;
      v24 = v40;
      switch(v53)
      {
        case 1:
          break;
        case 2:
          v39 = 0x8000000220FDCEB0;
          v38 = 0xD000000000000010;
          break;
        case 3:
          v39 = 0xEE007372756F6820;
          v38 = 0x786973207478656ELL;
          break;
        case 4:
          v39 = 0xE400000000000000;
          v38 = 1701736302;
          break;
        case 5:
          v39 = 0xE700000000000000;
          v38 = 0x6E776F6E6B6E75;
          break;
        default:
          v39 = 0xE300000000000000;
          v38 = 7827310;
          break;
      }

      (*(v9 + 8))(v49, v42);
      (*(v50 + 8))(v1, v15);
    }

    v22 = v48;
  }

  v53 = 0;
  v54 = 0xE000000000000000;
  sub_220FC35C0();
  MEMORY[0x223D9BD60](0x203A6D6F6F5ALL, 0xE600000000000000);
  sub_220FC2BF0();
  MEMORY[0x223D9BD60](0x79616C7265764F0ALL, 0xEA0000000000203ALL);
  MEMORY[0x223D9BD60](v22, v24);

  MEMORY[0x223D9BD60](0x203A6E6961520ALL, 0xE700000000000000);
  MEMORY[0x223D9BD60](v38, v39);

  sub_220F05198(v53, v54, v19);
}

uint64_t sub_220EFE3D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CF9EBA0);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v11[-v6];
  v12 = a1;

  sub_220EDBB50();

  v8 = type metadata accessor for WeatherMapAnnotatedLocationData(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    sub_220E3B2DC(v7, &unk_27CF9EBA0);
    v9 = sub_220FC0760();
    return __swift_storeEnumTagSinglePayload(a2, 1, 1, v9);
  }

  else
  {
    sub_220F05D10(a2);
    return sub_220F056E4(v7, type metadata accessor for WeatherMapAnnotatedLocationData);
  }
}

uint64_t sub_220EFE5CC()
{
  type metadata accessor for WeatherMapAnnotation();
  if (swift_dynamicCastClass())
  {
    swift_unknownObjectRetain();
    v0 = sub_220FBF098();
    v2 = v1;
    if (v0 == sub_220FC1020() && v2 == v3)
    {
      v5 = 1;
    }

    else
    {
      v5 = sub_220FC3940();
    }

    swift_unknownObjectRelease();
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

uint64_t sub_220EFE698(uint64_t a1, char a2)
{
  result = sub_220EFE518();
  if (result)
  {
    v5 = result;
    v6 = OBJC_IVAR____TtC11WeatherMaps25InteractiveViewController_doNotForwardSelectedAnnotationToDelegate;
    *(v2 + OBJC_IVAR____TtC11WeatherMaps25InteractiveViewController_doNotForwardSelectedAnnotationToDelegate) = 1;
    v7 = sub_220EF8494();
    [v7 selectAnnotation:v5 animated:a2 & 1];

    result = swift_unknownObjectRelease();
    *(v2 + v6) = 0;
  }

  return result;
}

uint64_t sub_220EFE710()
{
  v0 = sub_220FC1070();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_220F05E6C(v4);
  v5 = sub_220FC1020();
  v7 = v6;
  (*(v1 + 8))(v4, v0);
  if (v5 == sub_220FC1020() && v7 == v8)
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_220FC3940();
  }

  return v10 & 1;
}

uint64_t sub_220EFE850(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  v40 = a3;
  v41 = a4;
  v42 = a2;
  ObjectType = swift_getObjectType();
  v6 = sub_220FC1070();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6, v9);
  v43 = v4;
  v44 = a1;
  v36 = a1;
  sub_220FC1570();
  v10 = sub_220FC13B0();
  v38 = sub_220FC1520();

  v37 = sub_220E1966C(0, &qword_2812C5CA0);
  v29 = sub_220FC2FC0();
  v35 = *(v7 + 16);
  v11 = v6;
  v35(&v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v6);
  v12 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v13 = v12 + v8;
  v31 = v12;
  v14 = ((v12 + v8) & 0xFFFFFFFFFFFFFFF8) + 8;
  v33 = v14;
  v34 = (v12 + v8) & 0xFFFFFFFFFFFFFFF8;
  v15 = swift_allocObject();
  v32 = *(v7 + 32);
  v16 = v15 + v12;
  v17 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32(v16, v17, v11);
  *(v15 + v13) = v42;
  v18 = (v15 + v14);
  v19 = v40;
  v20 = v41;
  *v18 = v40;
  v18[1] = v20;
  sub_220E1AADC(v19);
  v21 = v29;
  v30 = sub_220FC14B0();

  v22 = sub_220FC2FC0();
  v35(v17, v36, v11);
  v23 = swift_allocObject();
  v32(v23 + v31, v17, v11);
  *(v23 + v13) = v42;
  v24 = (v23 + v33);
  v25 = v40;
  v26 = v41;
  *v24 = v40;
  v24[1] = v26;
  sub_220E1AADC(v25);
  sub_220FC14C0();
}

id sub_220EFEB68(_BYTE *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9CEE8);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v18[-1] - v6;
  sub_220E1E2A8(&a1[OBJC_IVAR____TtC11WeatherMaps25InteractiveViewController_cameraFocusFactory], v18);
  __swift_project_boxed_opaque_existential_1(v18, v18[3]);
  HIBYTE(v17) = a1[OBJC_IVAR____TtC11WeatherMaps25InteractiveViewController_presentingOverlayKind];
  result = [a1 view];
  if (result)
  {
    v9 = result;
    [result bounds];
    v11 = v10;
    v13 = v12;

    sub_220EFE3D0(a2, v7);
    v14 = sub_220FC0760();
    if (__swift_getEnumTagSinglePayload(v7, 1, v14) == 1)
    {
      sub_220E3B2DC(v7, &qword_27CF9CEE8);
      v15 = 6;
    }

    else
    {
      WeatherDataModel.rainExpectation.getter(&v17 + 6);
      v15 = BYTE6(v17);
      (*(*(v14 - 8) + 8))(v7, v14);
    }

    BYTE6(v17) = v15;
    v16 = sub_220F83268(a2, &v17 + 7, v11, v13);
    __swift_destroy_boxed_opaque_existential_0(v18);
    return v16;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_220EFED30(uint64_t a1, uint64_t a2, uint64_t a3, int a4, void (*a5)(void), uint64_t a6)
{
  v44 = a5;
  v45 = a6;
  v43 = a4;
  v38 = a2;
  v9 = sub_220FC1070();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v11);
  v13 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *a1;
  v14 = *(a1 + 8);
  v16 = *(a1 + 24);
  v40 = *(a1 + 16);
  v41 = v14;
  v39 = v16;
  v17 = *(a1 + 32);
  if (qword_2812C5EC8 != -1)
  {
    swift_once();
  }

  v18 = sub_220FC17A0();
  __swift_project_value_buffer(v18, qword_2812C5ED0);
  v19 = *(v10 + 16);
  v42 = a3;
  v19(v13, a3, v9);
  v20 = sub_220FC1780();
  v21 = sub_220FC2E30();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v37 = v6;
    v23 = v22;
    v36 = swift_slowAlloc();
    v51 = v36;
    *v23 = 136315394;
    v35 = v15;
    v46 = v15;
    v47 = v41;
    v48 = v40;
    v49 = v39;
    v50 = v17;
    sub_220F05404();
    v24 = sub_220FC38F0();
    v26 = sub_220E20FF8(v24, v25, &v51);

    *(v23 + 4) = v26;
    *(v23 + 12) = 2080;
    v27 = sub_220FC1020();
    v29 = v28;
    (*(v10 + 8))(v13, v9);
    v30 = sub_220E20FF8(v27, v29, &v51);

    *(v23 + 14) = v30;
    v15 = v35;
    _os_log_impl(&dword_220E15000, v20, v21, "Found camera focus. cameraFocus=%s, location=%s", v23, 0x16u);
    v31 = v36;
    swift_arrayDestroy();
    MEMORY[0x223D9DDF0](v31, -1, -1);
    MEMORY[0x223D9DDF0](v23, -1, -1);
  }

  else
  {

    (*(v10 + 8))(v13, v9);
  }

  if (v17)
  {
    sub_220EFF214(v43 & 1, v44, v45, v15, v41, v40, v39);
  }

  else
  {
    sub_220FC0FE0();
    sub_220EFF068(v43 & 1, v44, v45, v15, v32, v33);
  }
}

id sub_220EFF068(char a1, uint64_t (*a2)(id), uint64_t a3, double a4, double a5, double a6)
{
  v13 = sub_220EF8494();
  [v13 centerCoordinate];
  v15 = v14;
  v17 = v16;

  if (vabdd_f64(a5, v15) < 0.001 && vabdd_f64(a6, v17) < 0.001 && (result = [*(v6 + OBJC_IVAR____TtC11WeatherMaps25InteractiveViewController____lazy_storage___mapView) _zoomLevel], vabdd_f64(v19, a4) <= 0.1))
  {
    if (a2)
    {
      return a2(result);
    }
  }

  else
  {
    result = [*(v6 + OBJC_IVAR____TtC11WeatherMaps25InteractiveViewController____lazy_storage___mapView) setCenterCoordinate:a1 & 1 zoomLevel:a5 animated:{a6, a4}];
    if (a2)
    {
      if (a1)
      {
        v20 = swift_allocObject();
        *(v20 + 16) = a2;
        *(v20 + 24) = a3;
        sub_220E1AADC(a2);

        sub_220FC1190();
      }

      else
      {

        a2(v21);
      }

      return sub_220E2DD2C(a2);
    }
  }

  return result;
}

void sub_220EFF214(char a1, void (*a2)(void), uint64_t a3, double a4, double a5, double a6, double a7)
{
  v15 = sub_220EF8494();
  [v15 visibleMapRect];
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;

  if (v17 == a4 && v19 == a5 && v21 == a6 && v23 == a7)
  {
    if (a2)
    {
      a2();
    }
  }

  else
  {
    v27 = *(v7 + OBJC_IVAR____TtC11WeatherMaps25InteractiveViewController____lazy_storage___mapView);
    v28 = swift_allocObject();
    *(v28 + 16) = a2;
    *(v28 + 24) = a3;
    v31[4] = sub_220F05458;
    v31[5] = v28;
    v31[0] = MEMORY[0x277D85DD0];
    v31[1] = 1107296256;
    v31[2] = sub_220EFF6B0;
    v31[3] = &block_descriptor_13;
    v29 = _Block_copy(v31);
    v30 = v27;
    sub_220E1AADC(a2);

    [v30 _setVisibleMapRect_animated_completionHandler_];
    _Block_release(v29);
  }
}

id sub_220EFF3B0(void *a1, uint64_t a2, uint64_t a3, int a4, uint64_t (*a5)(id), uint64_t a6)
{
  v39 = a4;
  v40 = a2;
  v10 = sub_220FC1070();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10, v12);
  v14 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2812C5EC8 != -1)
  {
    swift_once();
  }

  v15 = sub_220FC17A0();
  __swift_project_value_buffer(v15, qword_2812C5ED0);
  (*(v11 + 16))(v14, a3, v10);
  v16 = a1;
  v17 = sub_220FC1780();
  v18 = sub_220FC2E10();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v38 = a6;
    v20 = v19;
    v21 = swift_slowAlloc();
    v37 = a5;
    v22 = v21;
    v41 = v21;
    *v20 = 136315394;
    swift_getErrorValue();
    v23 = sub_220FC39D0();
    v25 = sub_220E20FF8(v23, v24, &v41);

    *(v20 + 4) = v25;
    *(v20 + 12) = 2080;
    v26 = sub_220FC1020();
    v28 = v27;
    (*(v11 + 8))(v14, v10);
    v29 = sub_220E20FF8(v26, v28, &v41);

    *(v20 + 14) = v29;
    _os_log_impl(&dword_220E15000, v17, v18, "Unable to find best zoomLevel. error=%s, location=%s", v20, 0x16u);
    swift_arrayDestroy();
    v30 = v22;
    a5 = v37;
    MEMORY[0x223D9DDF0](v30, -1, -1);
    v31 = v20;
    a6 = v38;
    MEMORY[0x223D9DDF0](v31, -1, -1);
  }

  else
  {

    (*(v11 + 8))(v14, v10);
  }

  v32 = *(v40 + OBJC_IVAR____TtC11WeatherMaps25InteractiveViewController_selectedLocationZoomLevel);
  sub_220FC0FE0();
  return sub_220EFF068(v39 & 1, a5, a6, v32, v33, v34);
}

uint64_t sub_220EFF6B0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

uint64_t sub_220EFF778()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9DBB0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_220FCA7C0;
  sub_220E1966C(0, &qword_27CF9EBC8);
  OUTLINED_FUNCTION_32_5();
  *(v0 + 32) = sub_220EFF8B8(v1, v2, v3, v4);
  OUTLINED_FUNCTION_32_5();
  *(v0 + 40) = sub_220EFF8B8(v5, v6, v7, v8);
  OUTLINED_FUNCTION_32_5();
  *(v0 + 48) = sub_220EFF8B8(v9, v10, v11, v12);
  OUTLINED_FUNCTION_32_5();
  *(v0 + 56) = sub_220EFF8B8(v13, v14, v15, v16);
  OUTLINED_FUNCTION_32_5();
  *(v0 + 64) = sub_220EFF8B8(v17, v18, v19, v20);
  OUTLINED_FUNCTION_32_5();
  *(v0 + 72) = sub_220EFF8B8(v21, v22, v23, sel_zoomIn);
  OUTLINED_FUNCTION_32_5();
  *(v0 + 80) = sub_220EFF8B8(v24, v25, v26, sel_zoomIn);
  v27 = sub_220FC2700();
  *(v0 + 88) = sub_220EFF8B8(v27, v28, 0, sel_dismissFromKeyboard);
  return v0;
}

id sub_220EFF8B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_220FC26C0();

  v7 = [swift_getObjCClassFromMetadata() keyCommandWithInput:v6 modifierFlags:a3 action:a4];

  return v7;
}

uint64_t sub_220EFFA18(unsigned __int8 a1)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = a1;

    sub_220F317A4(&v3);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_220EFFB40(void (*a1)(uint64_t, uint64_t, double))
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = result;
    v4 = sub_220EF8494();
    [v4 _zoomLevel];
    v6 = v5;

    v7 = *(v3 + OBJC_IVAR____TtC11WeatherMaps24WeatherMapViewController_store);
    v8 = swift_retain_n();
    a1(v8, v7, v6);
    swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_220EFFC60()
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_220E7F308(v0);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_220EFFD88()
{
  OUTLINED_FUNCTION_10();
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = result;
    swift_unknownObjectRetain();

    sub_220F69AB4();
    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_220EFFDF4(__int128 *a1, __int128 *a2, uint64_t a3, unsigned __int8 a4)
{
  v4 = *(a3 + OBJC_IVAR____TtC11WeatherMaps25InteractiveViewController_onMapEventHandler);
  if (v4)
  {
    v5 = *(a2 + 2);
    v6 = *(a1 + 4);
    v8 = a4 | 0x5000000000000000;
    v7 = a1[1];
    v9 = *a1;
    v10 = v7;
    v11 = v6;
    v12 = *a2;
    v13 = v5;

    v4(&v8);
    sub_220E2DD2C(v4);
  }

  sub_220F6A610(1);
}

uint64_t sub_220EFFE9C()
{
  v2 = type metadata accessor for SonifierDataState(0);
  v3 = OUTLINED_FUNCTION_8_0(v2);
  MEMORY[0x28223BE20](v3, v4);
  OUTLINED_FUNCTION_3();
  v7 = v6 - v5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CF9EB80);
  OUTLINED_FUNCTION_8_0(v8);
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v9, v10);
  OUTLINED_FUNCTION_62();
  v11 = type metadata accessor for SonifierDataState.OverlayFrames(0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v12, v13);
  OUTLINED_FUNCTION_3();
  v16 = v15 - v14;
  OUTLINED_FUNCTION_10();
  swift_beginAccess();
  sub_220E43574();
  v17 = sub_220EF8494();
  [v17 frame];
  v19 = v18;
  v21 = v20;

  v22 = OBJC_IVAR____TtC11WeatherMaps25InteractiveViewController____lazy_storage___mapView;
  [*(v0 + OBJC_IVAR____TtC11WeatherMaps25InteractiveViewController____lazy_storage___mapView) visibleMapRect];
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  [*(v0 + v22) _zoomLevel];
  v32 = v31;
  [*(v0 + v22) _zoomScale];
  v34 = v33;
  sub_220E43574();
  v35 = (v16 + v11[5]);
  *v35 = v19;
  v35[1] = v21;
  v36 = v16 + v11[6];
  *v36 = v24;
  *(v36 + 8) = v26;
  *(v36 + 16) = v28;
  *(v36 + 24) = v30;
  *(v36 + 32) = 0;
  v37 = v16 + v11[7];
  *v37 = v32;
  *(v37 + 8) = 0;
  sub_220E3B2DC(v1, &unk_27CF9EB80);
  v38 = v16 + v11[8];
  *v38 = v34;
  *(v38 + 8) = 0;
  *(v16 + v11[9]) = 0;
  sub_220F057B4();
  OUTLINED_FUNCTION_50_4();
  __swift_storeEnumTagSinglePayload(v39, v40, v41, v11);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9D090);
  __swift_storeEnumTagSinglePayload(v7, 0, 3, v42);
  sub_220F005B8();
  sub_220F056E4(v7, type metadata accessor for SonifierDataState);
  return sub_220F056E4(v16, type metadata accessor for SonifierDataState.OverlayFrames);
}

void sub_220F00154()
{
  OUTLINED_FUNCTION_29_2();
  v3 = v2;
  v4 = sub_220FC0FD0();
  OUTLINED_FUNCTION_6();
  v6 = v5;
  MEMORY[0x28223BE20](v7, v8);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_26_7();
  v9 = sub_220FC1070();
  OUTLINED_FUNCTION_6();
  v11 = v10;
  MEMORY[0x28223BE20](v12, v13);
  OUTLINED_FUNCTION_3();
  v16 = v15 - v14;
  v17 = OBJC_IVAR____TtC11WeatherMaps25InteractiveViewController_selectedLocation;
  OUTLINED_FUNCTION_10();
  swift_beginAccess();
  if (__swift_getEnumTagSinglePayload(v0 + v17, 1, v9))
  {
    if (qword_2812C5EC8 != -1)
    {
      OUTLINED_FUNCTION_16();
    }

    v18 = sub_220FC17A0();
    OUTLINED_FUNCTION_23_0(v18, qword_2812C5ED0);
    v19 = sub_220FC1780();
    v20 = sub_220FC2E30();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_220E15000, v19, v20, "Not providing a map purpose - missing selectedLocation", v21, 2u);
      OUTLINED_FUNCTION_15();
    }

    *v3 = 0;
    *(v3 + 8) = 0;
    *(v3 + 16) = 2;
  }

  else
  {
    (*(v11 + 16))(v16, v0 + v17, v9);
    sub_220FC0FF0();
    (*(v11 + 8))(v16, v9);
    v22 = sub_220FC0FA0();
    v24 = v23;
    (*(v6 + 8))(v1, v4);
    *v3 = v22;
    *(v3 + 8) = v24;
    *(v3 + 16) = 0;
  }

  OUTLINED_FUNCTION_22();
}

uint64_t sub_220F00394()
{
  OUTLINED_FUNCTION_19();
  v0[4] = v1;
  v0[2] = v2;
  v0[3] = v3;
  sub_220FC2AB0();
  v0[5] = sub_220FC2AA0();
  OUTLINED_FUNCTION_60_2();
  v5 = sub_220FC2A30();
  v0[6] = v5;
  v0[7] = v4;

  return MEMORY[0x2822009F8](sub_220F00428, v5, v4);
}

uint64_t sub_220F00428()
{
  v1 = v0[3];
  v2 = (v0[2] + OBJC_IVAR____TtC11WeatherMaps25InteractiveViewController_overlaySonifier);
  v0[8] = *v2;
  v3 = v2[1];
  v0[9] = v3;
  v0[10] = swift_getObjectType();
  v0[11] = *(v1 + 40);
  v0[12] = *(v1 + 48);
  v0[13] = *(v3 + 104);
  v0[14] = (v3 + 104) & 0xFFFFFFFFFFFFLL | 0x650D000000000000;
  v5 = sub_220FC2A30();

  return MEMORY[0x2822009F8](sub_220F004EC, v5, v4);
}

uint64_t sub_220F004EC()
{
  OUTLINED_FUNCTION_19();
  (*(v0 + 104))(*(v0 + 80), *(v0 + 72), *(v0 + 88), *(v0 + 96), *(v0 + 32));
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return MEMORY[0x2822009F8](sub_220F0055C, v1, v2);
}

uint64_t sub_220F0055C()
{
  OUTLINED_FUNCTION_19();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_220F005B8()
{
  v1 = type metadata accessor for SonifierDataState(0);
  MEMORY[0x28223BE20](v1 - 8, v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CF9EB90);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v6 = &v13 - v5;
  v7 = sub_220FC2AE0();
  __swift_storeEnumTagSinglePayload(v6, 1, 1, v7);
  sub_220F057B4();
  sub_220FC2AB0();
  v8 = v0;
  v9 = sub_220FC2AA0();
  v10 = swift_allocObject();
  v11 = MEMORY[0x277D85700];
  v10[2] = v9;
  v10[3] = v11;
  v10[4] = v8;
  sub_220F0568C();
  sub_220F9BB1C(0, 0, v6, &unk_220FD2890, v10);
}

uint64_t sub_220F0078C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  sub_220FC2AB0();
  v5[4] = sub_220FC2AA0();
  v7 = sub_220FC2A30();
  v5[5] = v7;
  v5[6] = v6;

  return MEMORY[0x2822009F8](sub_220F00824, v7, v6);
}

uint64_t sub_220F00824()
{
  OUTLINED_FUNCTION_19();
  v1 = (v0[2] + OBJC_IVAR____TtC11WeatherMaps25InteractiveViewController_overlaySonifier);
  v0[7] = *v1;
  v2 = v1[1];
  v0[8] = v2;
  v0[9] = swift_getObjectType();
  v0[10] = *(v2 + 80);
  v0[11] = (v2 + 80) & 0xFFFFFFFFFFFFLL | 0xFFA4000000000000;
  v4 = sub_220FC2A30();

  return MEMORY[0x2822009F8](sub_220F008CC, v4, v3);
}

uint64_t sub_220F008CC()
{
  OUTLINED_FUNCTION_19();
  (*(v0 + 80))(*(v0 + 24), *(v0 + 72), *(v0 + 64));
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);

  return MEMORY[0x2822009F8](sub_220F00938, v1, v2);
}

uint64_t sub_220F00938()
{
  OUTLINED_FUNCTION_19();

  v1 = *(v0 + 8);

  return v1();
}

void sub_220F00994()
{
  OUTLINED_FUNCTION_29_2();
  v1 = v0;
  LODWORD(v3) = v2;
  v55 = v4;
  v6 = v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CF9D6D0);
  v8 = OUTLINED_FUNCTION_29(v7);
  v52 = v9;
  v11 = *(v10 + 64);
  v13 = MEMORY[0x28223BE20](v8, v12);
  v53 = &v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13, v14);
  OUTLINED_FUNCTION_12_0();
  v54 = v15;
  v16 = OUTLINED_FUNCTION_2_2();
  v17 = type metadata accessor for ScrubberStore.ViewModel(v16);
  v18 = OUTLINED_FUNCTION_8_0(v17);
  MEMORY[0x28223BE20](v18, v19);
  OUTLINED_FUNCTION_4();
  v22 = v20 - v21;
  MEMORY[0x28223BE20](v23, v24);
  v26 = &v49 - v25;
  v27 = *v6;
  if (qword_2812C5EC8 != -1)
  {
    OUTLINED_FUNCTION_16();
  }

  v28 = sub_220FC17A0();
  OUTLINED_FUNCTION_23_0(v28, qword_2812C5ED0);
  v29 = sub_220FC1780();
  v30 = sub_220FC2E30();
  v31 = os_log_type_enabled(v29, v30);
  v51 = v27;
  if (v31)
  {
    v32 = swift_slowAlloc();
    v50 = v3;
    v3 = v32;
    v33 = OUTLINED_FUNCTION_54_1();
    v58 = v33;
    *v3 = 136446210;
    v57[0] = v27;
    sub_220E561E0();
    v34 = sub_220FC38F0();
    v36 = v26;
    v37 = v22;
    v38 = v11;
    v39 = sub_220E20FF8(v34, v35, &v58);

    *(v3 + 4) = v39;
    v11 = v38;
    v22 = v37;
    v26 = v36;
    _os_log_impl(&dword_220E15000, v29, v30, "Updating overlayKind. Overlaykind=%{public}s", v3, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v33);
    OUTLINED_FUNCTION_15();
    LOBYTE(v3) = v50;
    OUTLINED_FUNCTION_15();
  }

  v40 = v1[OBJC_IVAR____TtC11WeatherMaps25InteractiveViewController_presentingOverlayKind];
  if (v40 == 5)
  {
    v41 = v51;
    if (v51 == 5)
    {
      goto LABEL_20;
    }

    goto LABEL_18;
  }

  v41 = v51;
  if (v40 == 4)
  {
    if (v51 == 4)
    {
      goto LABEL_20;
    }

    goto LABEL_18;
  }

  if (v40 == 3)
  {
    if (v51 == 3)
    {
      goto LABEL_20;
    }

    goto LABEL_18;
  }

  if ((v51 - 6) > 0xFCu || v40 != v51)
  {
LABEL_18:
    if (*&v1[OBJC_IVAR____TtC11WeatherMaps25InteractiveViewController_refreshTimer])
    {

      sub_220EEC7BC(0, 1);
    }
  }

LABEL_20:
  OUTLINED_FUNCTION_10();
  swift_beginAccess();
  sub_220F057B4();

  sub_220EE3D6C();
  sub_220F057B4();
  sub_220EE3AE8(v22);
  OUTLINED_FUNCTION_1_44();
  sub_220F056E4(v26, v43);

  v57[0] = v41;
  sub_220EF89B0(v57);
  v57[0] = v41;
  sub_220F24C14(v57);
  OUTLINED_FUNCTION_10();
  swift_beginAccess();
  v44 = v54;
  sub_220E43574();
  v56 = v41;
  sub_220EF9D9C(&v56);
  v56 = v41;
  v45 = v53;
  sub_220E43574();
  v46 = (*(v52 + 80) + 16) & ~*(v52 + 80);
  v47 = swift_allocObject();
  sub_220F04F80(v45, v47 + v46);
  *(v47 + ((v11 + v46 + 7) & 0xFFFFFFFFFFFFFFF8)) = v1;
  v48 = v1;
  sub_220F6AACC(&v56, v55 & 1, v3 & 1, sub_220F04FF0, v47);

  sub_220E3B2DC(v44, &unk_27CF9D6D0);
  OUTLINED_FUNCTION_22();
}

uint64_t sub_220F00E30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v20 = a5;
  v21 = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CF9D6D0);
  MEMORY[0x28223BE20](v7 - 8, v8);
  v10 = &v20 - v9;
  v11 = sub_220FC1070();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11, v13);
  v15 = &v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = swift_allocObject();
  *(v16 + 16) = a2;
  *(v16 + 24) = a3;
  sub_220E43574();
  if (__swift_getEnumTagSinglePayload(v10, 1, v11) != 1)
  {
    (*(v12 + 32))(v15, v10, v11);
    switch(v21)
    {
      case 1:
      case 2:
        v18 = sub_220FC3940();

        if (v18)
        {
          goto LABEL_7;
        }

        (*(v12 + 8))(v15, v11);
        goto LABEL_3;
      case 3:
        v19 = *(v12 + 8);

        v19(v15, v11);
        goto LABEL_3;
      default:

LABEL_7:

        sub_220EFE850(v15, 1, sub_220F0521C, v16);

        return (*(v12 + 8))(v15, v11);
    }
  }

  sub_220E3B2DC(v10, &unk_27CF9D6D0);
LABEL_3:
  sub_220F01140(a2, a3);
}

uint64_t sub_220F01140(uint64_t a1, uint64_t a2)
{
  v27 = sub_220FC2340();
  v30 = *(v27 - 8);
  MEMORY[0x28223BE20](v27, v4);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_220FC2390();
  v28 = *(v7 - 8);
  v29 = v7;
  MEMORY[0x28223BE20](v7, v8);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_220FC23B0();
  v26 = v11;
  v12 = *(v11 - 8);
  v14 = MEMORY[0x28223BE20](v11, v13);
  v16 = &v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14, v17);
  v19 = &v25 - v18;
  sub_220FC23A0();
  sub_220FC23D0();
  v25 = *(v12 + 8);
  v25(v16, v11);
  sub_220E1966C(0, &qword_2812C5CA0);
  v20 = sub_220FC2FC0();
  v21 = swift_allocObject();
  *(v21 + 16) = a1;
  *(v21 + 24) = a2;
  aBlock[4] = sub_220F058F8;
  aBlock[5] = v21;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_220F6DA78;
  aBlock[3] = &block_descriptor_85;
  v22 = _Block_copy(aBlock);

  sub_220FC2350();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_220F05888(&qword_2812C5E08, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CF9DBC0);
  sub_220E453D4(&qword_2812C5D88, &unk_27CF9DBC0);
  v23 = v27;
  sub_220FC3430();
  MEMORY[0x223D9C4E0](v19, v10, v6, v22);
  _Block_release(v22);

  (*(v30 + 8))(v6, v23);
  (*(v28 + 8))(v10, v29);
  return (v25)(v19, v26);
}

uint64_t sub_220F01524(uint64_t a1, int a2, int a3)
{
  v5 = v3;
  v71 = a2;
  v8 = sub_220FC1070();
  OUTLINED_FUNCTION_6();
  v10 = v9;
  MEMORY[0x28223BE20](v11, v12);
  v68 = v13;
  v69 = v65 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9EC10);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v15, v16);
  v18 = v65 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CF9D6D0);
  v20 = OUTLINED_FUNCTION_8_0(v19);
  MEMORY[0x28223BE20](v20, v21);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v22, v23);
  v25 = v65 - v24;
  MEMORY[0x28223BE20](v26, v27);
  OUTLINED_FUNCTION_41_2();
  v28 = *(v5 + OBJC_IVAR____TtC11WeatherMaps25InteractiveViewController_overlayIsLoading);
  v70 = v10;
  v30 = *(v10 + 16);
  v29 = v10 + 16;
  v72 = v30;
  if (v28 != 1)
  {
    goto LABEL_13;
  }

  v66 = a3;
  v67 = a1;
  OUTLINED_FUNCTION_43_2();
  v65[1] = v29;
  v31();
  OUTLINED_FUNCTION_50_4();
  __swift_storeEnumTagSinglePayload(v32, v33, v34, v8);
  OUTLINED_FUNCTION_10();
  swift_beginAccess();
  v35 = *(v14 + 48);
  sub_220E43574();
  sub_220E43574();
  OUTLINED_FUNCTION_36_4(v18);
  if (v36)
  {
    sub_220E3B2DC(v4, &unk_27CF9D6D0);
    OUTLINED_FUNCTION_36_4(&v18[v35]);
    a1 = v67;
    if (v36)
    {
      sub_220E3B2DC(v18, &unk_27CF9D6D0);
      LOBYTE(a3) = v66;
      goto LABEL_13;
    }
  }

  else
  {
    sub_220E43574();
    OUTLINED_FUNCTION_36_4(&v18[v35]);
    if (!v36)
    {
      v59 = v69;
      v60 = v70;
      (*(v70 + 32))(v69, &v18[v35], v8);
      sub_220F05888(&qword_2812CA078, MEMORY[0x277D7AB60]);
      v61 = sub_220FC26B0();
      v62 = *(v60 + 8);
      v62(v59, v8);
      sub_220E3B2DC(v4, &unk_27CF9D6D0);
      v62(v25, v8);
      OUTLINED_FUNCTION_66_1();
      sub_220E3B2DC(v63, v64);
      a1 = v67;
      LOBYTE(a3) = v66;
      if (v61)
      {
        goto LABEL_13;
      }

      goto LABEL_11;
    }

    sub_220E3B2DC(v4, &unk_27CF9D6D0);
    (*(v70 + 8))(v25, v8);
    a1 = v67;
  }

  sub_220E3B2DC(v18, &qword_27CF9EC10);
  LOBYTE(a3) = v66;
LABEL_11:
  v37 = *(v5 + OBJC_IVAR____TtC11WeatherMaps25InteractiveViewController_onMapEventHandler);
  if (v37)
  {
    v73 = 0x2000000000000001;
    v74 = 0u;
    v75 = 0u;
    v76 = 0u;
    v77 = 0u;

    v37(&v73);
    v38 = OUTLINED_FUNCTION_61_4();
    sub_220E2DD2C(v38);
  }

LABEL_13:
  OUTLINED_FUNCTION_43_2();
  v39();
  OUTLINED_FUNCTION_50_4();
  __swift_storeEnumTagSinglePayload(v40, v41, v42, v8);
  swift_beginAccess();
  sub_220E563B0();
  swift_endAccess();
  if (v71)
  {
    v43 = a3;
    if ((a3 & 1) == 0)
    {
      v44 = sub_220EF8494();
      sub_220FC0FE0();
      OUTLINED_FUNCTION_17_0();
      [*(v5 + OBJC_IVAR____TtC11WeatherMaps25InteractiveViewController____lazy_storage___mapView) _zoomLevel];
      v45 = OUTLINED_FUNCTION_62_1();
      [v46 v47];
    }

    OUTLINED_FUNCTION_2_3();
    v48 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v49 = v69;
    OUTLINED_FUNCTION_43_2();
    v72();
    v50 = v70;
    v51 = (*(v70 + 80) + 24) & ~*(v70 + 80);
    v52 = v51 + v68;
    v53 = swift_allocObject();
    *(v53 + 16) = v48;
    (*(v50 + 32))(v53 + v51, v49, v8);
    *(v53 + v52) = v43 & 1;

    sub_220EFE850(a1, v43 & 1, sub_220F0580C, v53);
  }

  else
  {
    v55 = sub_220EF8494();
    sub_220FC0FE0();
    OUTLINED_FUNCTION_17_0();
    [*(v5 + OBJC_IVAR____TtC11WeatherMaps25InteractiveViewController____lazy_storage___mapView) _zoomLevel];
    v56 = OUTLINED_FUNCTION_62_1();
    [v57 v58];

    return sub_220EFE698(a1, a3 & 1);
  }
}

void sub_220F01B78(uint64_t a1, uint64_t a2, char a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    sub_220EFE698(a2, a3 & 1);
  }
}

void sub_220F01BE8(char a1, double a2)
{
  v5 = sub_220EF8494();
  [v5 _zoomLevel];
  v7 = v6;

  if (v7 != a2)
  {
    v8 = *(v2 + OBJC_IVAR____TtC11WeatherMaps25InteractiveViewController____lazy_storage___mapView);
    [v8 centerCoordinate];
    [v8 setCenterCoordinate:a1 & 1 zoomLevel:? animated:?];
  }
}

void sub_220F01CAC(void *a1)
{
  sub_220EFDD00();
  [a1 _zoomLevel];
  sub_220F24E5C(v2);
}

uint64_t sub_220F01DFC()
{
  type metadata accessor for WeatherMapAnnotation();
  v1 = swift_dynamicCastClass();
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = *(v0 + OBJC_IVAR____TtC11WeatherMaps25InteractiveViewController_annotationManager);
  swift_unknownObjectRetain();
  sub_220F25ED8(v2);
  OUTLINED_FUNCTION_60_2();
  swift_unknownObjectRelease();
  return v3;
}

void sub_220F01EE4(void *a1)
{
  v2 = v1;
  v4 = &v1[OBJC_IVAR____TtC11WeatherMaps25InteractiveViewController_visibleMapRect];
  v5 = round(*&v1[OBJC_IVAR____TtC11WeatherMaps25InteractiveViewController_visibleMapRect + 16]);
  [a1 visibleMapRect];
  if (v5 != round(v6) || (OUTLINED_FUNCTION_52_4(), v5 != round(v7)) || (OUTLINED_FUNCTION_52_4(), v5 != round(v8)) || (OUTLINED_FUNCTION_52_4(), v5 != round(v9)))
  {
    [a1 visibleMapRect];
    *v4 = v10;
    *(v4 + 1) = v11;
    *(v4 + 2) = v12;
    *(v4 + 3) = v13;
    [a1 _zoomLevel];
    sub_220F24E5C(v14);
    v15 = OUTLINED_FUNCTION_71_2();
    [v15 heading];
    v17 = v16;

    if (v17 != 0.0)
    {
      [a1 _zoomLevel];
      if (v18 < 3.0)
      {
        v19 = OUTLINED_FUNCTION_71_2();
        [v19 centerCoordinate];
        OUTLINED_FUNCTION_17_0();

        v20 = OUTLINED_FUNCTION_71_2();
        [v20 centerCoordinateDistance];

        v21 = OUTLINED_FUNCTION_71_2();
        [v21 pitch];

        objc_opt_self();
        v22 = OUTLINED_FUNCTION_0_0();
        v25 = [v23 v24];
        [a1 setCamera:v25 animated:1];
      }
    }

    v26 = [v2 view];
    if (v26)
    {
      v27 = v26;
      v28 = [v26 window];

      if (v28)
      {
        v29 = [v28 screen];
        [v29 scale];
        v31 = v30;

        v32 = [v28 screen];
        [v32 nativeScale];
        v34 = v33;

        [a1 frame];
        sub_220F6A680(v35, v36, v37, v38, *v4, v4[1], v4[2], v4[3], v31, v34);
        if (UIAccessibilityIsVoiceOverRunning())
        {
          sub_220EFFE9C();
        }
      }

      sub_220F6A4B8(0);
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_220F0222C()
{
  OUTLINED_FUNCTION_29_2();
  v4 = v3;
  v5 = type metadata accessor for WeatherMapAnnotatedLocation(0);
  v6 = OUTLINED_FUNCTION_8_0(v5);
  MEMORY[0x28223BE20](v6, v7);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_40_3();
  MEMORY[0x28223BE20](v8, v9);
  v11 = &v65 - v10;
  v12 = sub_220FC1070();
  OUTLINED_FUNCTION_6();
  v14 = v13;
  MEMORY[0x28223BE20](v15, v16);
  OUTLINED_FUNCTION_3();
  v17 = OUTLINED_FUNCTION_25_8();
  type metadata accessor for WeatherMapAnnotatedLocationData(v17);
  OUTLINED_FUNCTION_6();
  v77 = v18;
  v78 = v19;
  MEMORY[0x28223BE20](v18, v20);
  OUTLINED_FUNCTION_4();
  v73 = v21 - v22;
  OUTLINED_FUNCTION_64();
  MEMORY[0x28223BE20](v23, v24);
  v26 = &v65 - v25;
  MEMORY[0x28223BE20](v27, v28);
  v30 = &v65 - v29;
  MEMORY[0x28223BE20](v31, v32);
  v72 = &v65 - v33;
  OUTLINED_FUNCTION_64();
  *&v36 = MEMORY[0x28223BE20](v34, v35).n128_u64[0];
  v38 = &v65 - v37;
  if ((*(v0 + OBJC_IVAR____TtC11WeatherMaps25InteractiveViewController_doNotForwardSelectedAnnotationToDelegate) & 1) != 0 || (v39 = [v4 annotation]) == 0)
  {
LABEL_27:
    OUTLINED_FUNCTION_22();
    return;
  }

  v40 = v39;
  type metadata accessor for WeatherMapAnnotation();
  if (swift_dynamicCastClass())
  {
    v71 = v11;
    v68 = v40;
    v41 = *(v0 + OBJC_IVAR____TtC11WeatherMaps25InteractiveViewController_annotatedLocations);
    v74 = *(v41 + 16);
    if (v74)
    {
      v65 = v0;
      v66 = v38;
      v67 = v1;
      v75 = v41 + ((*(v78 + 80) + 32) & ~*(v78 + 80));
      v69 = (v14 + 16);
      v70 = (v14 + 32);
      v42 = (v14 + 8);

      v43 = 0;
      while (1)
      {
        if (v43 >= *(v41 + 16))
        {
          __break(1u);
          return;
        }

        sub_220F057B4();
        OUTLINED_FUNCTION_45_4();
        sub_220F057B4();
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          OUTLINED_FUNCTION_12_12();
          v44 = v71;
          sub_220F0568C();
          (*v69)(v2, v44, v12);
          OUTLINED_FUNCTION_11_11();
          sub_220F056E4(v44, v45);
        }

        else
        {
          (*v70)(v2, v26, v12);
        }

        v46 = sub_220FC1020();
        v48 = v47;
        (*v42)(v2, v12);
        if (v46 == sub_220FBF098() && v48 == v49)
        {
          break;
        }

        v51 = sub_220FC3940();

        if (v51)
        {
          goto LABEL_21;
        }

        ++v43;
        OUTLINED_FUNCTION_10_14();
        sub_220F056E4(v30, v52);
        if (v74 == v43)
        {
          swift_unknownObjectRelease();

          goto LABEL_27;
        }
      }

LABEL_21:

      v54 = v73;
      sub_220F0568C();
      v55 = v66;
      sub_220F0568C();
      sub_220F057B4();
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v57 = v67;
      if (EnumCaseMultiPayload == 1)
      {
        OUTLINED_FUNCTION_12_12();
        sub_220F0568C();
        if (swift_unknownObjectWeakLoadStrong())
        {

          v58 = sub_220FC1020();
          v60 = v59;
          MEMORY[0x28223BE20](v58, v59);
          *(&v65 - 4) = v61;
          *(&v65 - 3) = v60;
          *(&v65 - 8) = 257;
          sub_220F32B5C(sub_220E81A10);
          swift_unknownObjectRelease();
        }

        swift_unknownObjectRelease();
        OUTLINED_FUNCTION_11_11();
        sub_220F056E4(v57, v64);
        OUTLINED_FUNCTION_10_14();
        v62 = v55;
      }

      else
      {
        sub_220F056E4(v55, type metadata accessor for WeatherMapAnnotatedLocationData);
        swift_unknownObjectRelease();
        v62 = v54;
        v63 = type metadata accessor for WeatherMapAnnotatedLocationData;
      }

      sub_220F056E4(v62, v63);
      goto LABEL_27;
    }
  }

  OUTLINED_FUNCTION_22();

  swift_unknownObjectRelease();
}

id sub_220F02850(uint64_t a1, uint64_t a2, void *a3)
{
  OUTLINED_FUNCTION_68_1();
  v7 = sub_220EF8494();
  [a3 convertPoint:v7 toCoordinateSpace:{v5, v4}];
  OUTLINED_FUNCTION_17_0();

  result = [v3 view];
  if (result)
  {
    v9 = result;
    [result safeAreaInsets];
    v11 = v10;

    [*&v3[OBJC_IVAR____TtC11WeatherMaps25InteractiveViewController____lazy_storage___mapView] bounds];
    v14.x = v4;
    v14.y = v5 - v11;
    v12 = CGRectContainsPoint(v15, v14);
    v13 = v4;
    if (!v12)
    {
      v13 = 0.0;
    }

    return *&v13;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_220F02934()
{
  OUTLINED_FUNCTION_29_2();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = sub_220FC2390();
  OUTLINED_FUNCTION_6();
  v10 = v9;
  MEMORY[0x28223BE20](v11, v12);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_62();
  __swift_project_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC11WeatherMaps25InteractiveViewController_mapLocationAccessibilityModelManager), *(v0 + OBJC_IVAR____TtC11WeatherMaps25InteractiveViewController_mapLocationAccessibilityModelManager + 24));
  sub_220F02AD0(&v18);
  sub_220FC2360();
  v13 = OUTLINED_FUNCTION_65_2();
  v14(v13);
  (*(v10 + 8))(v1, v8);
  sub_220E1966C(0, &qword_2812C5CA0);
  v15 = sub_220FC2FC0();
  OUTLINED_FUNCTION_69();
  v16 = swift_allocObject();
  v16[2] = v5;
  v16[3] = v3;
  v16[4] = v7;

  v17 = v7;
  sub_220FC1490();

  OUTLINED_FUNCTION_22();
}

void sub_220F02AD0(char *a1@<X8>)
{
  v2 = *(v1 + OBJC_IVAR____TtC11WeatherMaps25InteractiveViewController_presentingOverlayKind);
  if (v2 >= 6)
  {
    v3 = 1;
  }

  else
  {
    v3 = 0x30200010101uLL >> (8 * v2);
  }

  *a1 = v3;
}

uint64_t sub_220F02B00@<X0>(void *a1@<X2>, uint64_t a2@<X8>)
{
  v6 = v2;
  v9 = type metadata accessor for WeatherMapAnnotatedLocation(0);
  v10 = OUTLINED_FUNCTION_8_0(v9);
  MEMORY[0x28223BE20](v10, v11);
  OUTLINED_FUNCTION_3();
  v47 = v13 - v12;
  OUTLINED_FUNCTION_2_2();
  v14 = sub_220FC1070();
  OUTLINED_FUNCTION_6();
  v16 = v15;
  MEMORY[0x28223BE20](v17, v18);
  OUTLINED_FUNCTION_3();
  v19 = OUTLINED_FUNCTION_25_8();
  v50 = type metadata accessor for WeatherMapAnnotatedLocationData(v19);
  OUTLINED_FUNCTION_6();
  v21 = v20;
  MEMORY[0x28223BE20](v22, v23);
  OUTLINED_FUNCTION_4();
  *&v26 = MEMORY[0x28223BE20](v24, v25).n128_u64[0];
  v28 = v46 - v27;
  [a1 coordinate];
  MKMapPointForCoordinate(v51);
  OUTLINED_FUNCTION_17_0();
  v48 = a2;
  __swift_storeEnumTagSinglePayload(a2, 1, 1, v14);
  result = *(v6 + OBJC_IVAR____TtC11WeatherMaps25InteractiveViewController_annotatedLocations);
  v30 = *(result + 16);
  if (v30)
  {
    v31 = result + ((*(v21 + 80) + 32) & ~*(v21 + 80));
    v49 = *(v21 + 72);
    v32 = (v16 + 32);
    v33 = v16;
    v34 = (v16 + 16);
    v35 = (v33 + 8);
    v46[1] = result;

    v36 = INFINITY;
    do
    {
      sub_220F057B4();
      sub_220F057B4();
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        OUTLINED_FUNCTION_12_12();
        v37 = v47;
        sub_220F0568C();
        (*v34)(v3, v37, v14);
        OUTLINED_FUNCTION_11_11();
        sub_220F056E4(v37, v38);
      }

      else
      {
        OUTLINED_FUNCTION_66_1();
        v39();
      }

      sub_220FC0FE0();
      v53 = MKMapPointForCoordinate(v52);
      v54.x = v4;
      v54.y = v5;
      v40 = MKMetersBetweenMapPoints(v53, v54);
      OUTLINED_FUNCTION_10_14();
      sub_220F056E4(v28, v41);
      if (v40 >= v36)
      {
        (*v35)(v3, v14);
      }

      else
      {
        v42 = v48;
        sub_220E3B2DC(v48, &unk_27CF9D6D0);
        (*v32)(v42, v3, v14);
        OUTLINED_FUNCTION_50_4();
        __swift_storeEnumTagSinglePayload(v43, v44, v45, v14);
        v36 = v40;
      }

      v31 += v49;
      --v30;
    }

    while (v30);
  }

  return result;
}

void sub_220F02E44(uint64_t a1, uint64_t a2, uint64_t a3)
{

  sub_220EE4790(a3, 1);

  sub_220F6AD50(a3);
}

void sub_220F02EAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9EBC0);
  OUTLINED_FUNCTION_8_0(v7);
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v8, v9);
  if ((a5 & 1) == 0)
  {
    sub_220F6A868();
    v10 = *(v5 + OBJC_IVAR____TtC11WeatherMaps25InteractiveViewController_scrubberStore) + OBJC_IVAR____TtC11WeatherMaps13ScrubberStore_viewModel;
    OUTLINED_FUNCTION_10();
    swift_beginAccess();
    *(v5 + OBJC_IVAR____TtC11WeatherMaps25InteractiveViewController_wasPlayingBeforeSonification) = *(v10 + *(type metadata accessor for ScrubberStore.ViewModel(0) + 40));
    OUTLINED_FUNCTION_60_3();
    sub_220E43574();
    swift_beginAccess();
    OUTLINED_FUNCTION_60_3();
    sub_220E563B0();
    swift_endAccess();
    sub_220F6AC30(0, 1);
  }
}

void sub_220F02FFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if ((a5 & 1) == 0)
  {
    sub_220F6A868();
  }
}

void sub_220F03034()
{
  OUTLINED_FUNCTION_29_2();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9EBC0);
  v3 = OUTLINED_FUNCTION_8_0(v2);
  MEMORY[0x28223BE20](v3, v4);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_40_3();
  MEMORY[0x28223BE20](v5, v6);
  v8 = &v20 - v7;
  v9 = sub_220FC02B0();
  OUTLINED_FUNCTION_6();
  v11 = v10;
  MEMORY[0x28223BE20](v12, v13);
  OUTLINED_FUNCTION_3();
  v16 = v15 - v14;
  sub_220F6A908();
  OUTLINED_FUNCTION_10();
  swift_beginAccess();
  sub_220E43574();
  if (__swift_getEnumTagSinglePayload(v8, 1, v9) == 1)
  {
    sub_220E3B2DC(v8, &qword_27CF9EBC0);
  }

  else
  {
    OUTLINED_FUNCTION_66_1();
    v17();

    sub_220EE4790(v16, 0);

    sub_220F6AD50(v16);
    (*(v11 + 8))(v16, v9);
  }

  v18 = OBJC_IVAR____TtC11WeatherMaps25InteractiveViewController_wasPlayingBeforeSonification;
  v19 = *(v0 + OBJC_IVAR____TtC11WeatherMaps25InteractiveViewController_wasPlayingBeforeSonification);

  sub_220EE46C8();

  sub_220F6AC30(v19 & 1, 0);
  *(v0 + v18) = 2;
  __swift_storeEnumTagSinglePayload(v1, 1, 1, v9);
  swift_beginAccess();
  sub_220E563B0();
  swift_endAccess();
  OUTLINED_FUNCTION_22();
}

void sub_220F032A0()
{

  sub_220EE46C8();

  sub_220F6AC30(1, 1);
}

void sub_220F0333C()
{
  OUTLINED_FUNCTION_29_2();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = sub_220FC2390();
  OUTLINED_FUNCTION_6();
  v10 = v9;
  MEMORY[0x28223BE20](v11, v12);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_62();
  if (qword_2812C7508 != -1)
  {
    OUTLINED_FUNCTION_8_17();
  }

  v13 = sub_220EDDBD8();

  if (v13)
  {
    __swift_project_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC11WeatherMaps25InteractiveViewController_mapLocationAccessibilityModelManager), *(v0 + OBJC_IVAR____TtC11WeatherMaps25InteractiveViewController_mapLocationAccessibilityModelManager + 24));
    sub_220F02AD0(&v19);
    sub_220FC2370();
    v14 = OUTLINED_FUNCTION_65_2();
    v15(v14);
    (*(v10 + 8))(v1, v8);
    sub_220E1966C(0, &qword_2812C5CA0);
    v16 = sub_220FC2FC0();
    OUTLINED_FUNCTION_69();
    v17 = swift_allocObject();
    v17[2] = v5;
    v17[3] = v3;
    v17[4] = v7;

    v18 = v7;
    sub_220FC1490();
  }

  OUTLINED_FUNCTION_22();
}

unint64_t sub_220F035E4()
{
  if (qword_2812C7508 != -1)
  {
    OUTLINED_FUNCTION_8_17();
  }

  v0 = sub_220EDDBD8();

  if ((v0 & 1) == 0)
  {
    return 0;
  }

  sub_220F02AD0(&v2);
  result = 0xD000000000000022;
  switch(v2)
  {
    case 1:
      result = 0xD000000000000025;
      break;
    case 2:
      result = 0xD000000000000023;
      break;
    case 3:
      result = 0xD00000000000001CLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_220F03774(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 152))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 104);
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

uint64_t sub_220F037B4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 152) = 1;
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
      *(result + 104) = (a2 - 1);
      return result;
    }

    *(result + 152) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ControlsVisiblity(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_220F03908()
{
  result = qword_27CF9EB78;
  if (!qword_27CF9EB78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF9EB78);
  }

  return result;
}

void sub_220F0395C()
{
  OUTLINED_FUNCTION_29_2();
  v3 = sub_220FC2340();
  OUTLINED_FUNCTION_6();
  v21 = v4;
  MEMORY[0x28223BE20](v5, v6);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_26_7();
  v20 = sub_220FC2390();
  OUTLINED_FUNCTION_6();
  v8 = v7;
  MEMORY[0x28223BE20](v9, v10);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_57_4();
  sub_220E1966C(0, &qword_2812C5CA0);
  v11 = sub_220FC2FC0();
  OUTLINED_FUNCTION_2_3();
  v12 = swift_allocObject();
  *(v12 + 16) = v0;
  v22[4] = sub_220F054D0;
  v22[5] = v12;
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 1107296256;
  OUTLINED_FUNCTION_21();
  v22[2] = v13;
  v22[3] = &block_descriptor_94;
  v14 = _Block_copy(v22);
  v15 = v0;

  sub_220FC2350();
  v22[0] = MEMORY[0x277D84F90];
  OUTLINED_FUNCTION_13_10();
  sub_220F05888(v16, v17);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CF9DBC0);
  OUTLINED_FUNCTION_9_15();
  sub_220E453D4(v18, v19);
  sub_220FC3430();
  MEMORY[0x223D9C530](0, v2, v1, v14);
  _Block_release(v14);

  (*(v21 + 8))(v1, v3);
  (*(v8 + 8))(v2, v20);
  OUTLINED_FUNCTION_22();
}

void sub_220F03C0C()
{
  if (v0[OBJC_IVAR____TtC11WeatherMaps25InteractiveViewController_controlsVisiblity] == 3)
  {
    v1 = v0;
    v2 = OBJC_IVAR____TtC11WeatherMaps25InteractiveViewController_controlsView;
    v3 = *&v1[OBJC_IVAR____TtC11WeatherMaps25InteractiveViewController_controlsView];
    if (v3)
    {
      [v3 frame];
      v5 = *&v1[v2];
      if (v5)
      {
        v6 = v4;
        v7 = v5;
        sub_220EA4830();
        OUTLINED_FUNCTION_13_2();

        v11.origin.x = OUTLINED_FUNCTION_12_4();
        if (v6 != CGRectGetHeight(v11))
        {
          v8 = [v1 view];
          if (!v8)
          {
            __break(1u);
            return;
          }

          v9 = v8;
          [v8 setNeedsLayout];
        }
      }
    }

    sub_220EFCEC4();
  }
}

uint64_t sub_220F03D00(uint64_t a1, unsigned __int8 *a2)
{
  v2 = *a2;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v6 = v2;

    sub_220F317A4(&v6);

    swift_unknownObjectRelease();
  }

  v5 = v2;
  sub_220EF89B0(&v5);
  v4 = v2;
  OUTLINED_FUNCTION_34_5(&v4);
  result = UIAccessibilityIsVoiceOverRunning();
  if (result)
  {

    return sub_220EFFE9C();
  }

  return result;
}

uint64_t sub_220F03DD4()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v1 = *(Strong + OBJC_IVAR____TtC11WeatherMaps24WeatherMapViewController_previewViewController);
  if (!v1)
  {
    swift_unknownObjectRelease();
    return 0;
  }

  v3 = v1(v2);
  swift_unknownObjectRelease();
  sub_220E2DD2C(v1);
  return v3;
}

uint64_t sub_220F03E80(uint64_t a1, uint64_t a2)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v4 = result;
    v5 = *(result + OBJC_IVAR____TtC11WeatherMaps24WeatherMapViewController_store) + OBJC_IVAR____TtC11WeatherMaps15WeatherMapStore_viewModel;
    OUTLINED_FUNCTION_10();
    v6 = swift_beginAccess();
    v7 = *(v5 + 40);
    MEMORY[0x28223BE20](v6, v8);
    v12[2] = a2;

    v9 = sub_220F7788C(sub_220F0573C, v12, v7);

    if (v9)
    {
      swift_unknownObjectRelease();
      return 0;
    }

    v10 = *(v4 + OBJC_IVAR____TtC11WeatherMaps24WeatherMapViewController_canAddLocationHandler);
    if (v10)
    {

      v11 = v10(a2);
      sub_220E2DD2C(v10);
      swift_unknownObjectRelease();
      if ((v11 & 1) == 0)
      {
        return 0;
      }
    }

    else
    {
      swift_unknownObjectRelease();
    }

    return 1;
  }

  return result;
}

uint64_t sub_220F03FD8(uint64_t a1, uint64_t a2)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v4 = *(result + OBJC_IVAR____TtC11WeatherMaps24WeatherMapViewController_canViewLocationHandler);
    if (v4)
    {

      v5 = v4(a2);
      swift_unknownObjectRelease();
      sub_220E2DD2C(v4);
      if ((v5 & 1) == 0)
      {
        return 0;
      }
    }

    else
    {
      swift_unknownObjectRelease();
    }

    return 1;
  }

  return result;
}

BOOL sub_220F04078()
{
  if (*(*(v0 + OBJC_IVAR____TtC11WeatherMaps25InteractiveViewController_overlayManager) + 480))
  {
    return 0;
  }

  v3 = v0;
  OUTLINED_FUNCTION_68_1();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
LABEL_25:
    if (qword_2812C5EC8 != -1)
    {
LABEL_43:
      OUTLINED_FUNCTION_16();
    }

    v20 = sub_220FC17A0();
    OUTLINED_FUNCTION_23_0(v20, qword_2812C5ED0);
    v21 = sub_220FC1780();
    v22 = sub_220FC2E30();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = OUTLINED_FUNCTION_54_1();
      v41 = v24;
      *v23 = 136446210;
      v42.origin.x = v2;
      v42.origin.y = v1;
      type metadata accessor for CGPoint(0);
      v25 = sub_220FC2750();
      v27 = sub_220E20FF8(v25, v26, &v41);

      *(v23 + 4) = v27;
      _os_log_impl(&dword_220E15000, v21, v22, "Delegate did not permit displaying of context menu, point=%{public}s", v23, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v24);
      OUTLINED_FUNCTION_15();
      OUTLINED_FUNCTION_15();
    }

    return 0;
  }

  if (!*(Strong + OBJC_IVAR____TtC11WeatherMaps24WeatherMapViewController_locationActionHandler))
  {
    swift_unknownObjectRelease();
    goto LABEL_25;
  }

  v5 = sub_220EF8494();
  v6 = [v5 annotations];

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CF9EF90);
  v7 = sub_220FC2970();

  x = MEMORY[0x277D84F90];
  *&v42.origin.x = MEMORY[0x277D84F90];
  v9 = sub_220F43CDC(v7);
  v10 = 0;
  v40 = OBJC_IVAR____TtC11WeatherMaps25InteractiveViewController____lazy_storage___mapView;
  while (v9 != v10)
  {
    if ((v7 & 0xC000000000000001) != 0)
    {
      v11 = MEMORY[0x223D9CB30](v10, v7);
    }

    else
    {
      if (v10 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_40;
      }

      v11 = *(v7 + 8 * v10 + 32);
      swift_unknownObjectRetain();
    }

    v12 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      __break(1u);
LABEL_40:
      __break(1u);
LABEL_41:
      __break(1u);
LABEL_42:
      __break(1u);
      goto LABEL_43;
    }

    v13 = [*(v3 + v40) viewForAnnotation_];
    v14 = swift_unknownObjectRelease();
    ++v10;
    if (v13)
    {
      MEMORY[0x223D9BEA0](v14);
      if (*((*&v42.origin.x & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v42.origin.x & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_220FC29C0();
      }

      sub_220FC29F0();
      x = v42.origin.x;
      v10 = v12;
    }
  }

  v15 = sub_220F43CDC(*&x);
  v16 = 0;
  while (v15 != v16)
  {
    if ((*&x & 0xC000000000000001) != 0)
    {
      v17 = MEMORY[0x223D9CB30](v16, *&x);
    }

    else
    {
      if (v16 >= *((*&x & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_42;
      }

      v17 = *(*&x + 8 * v16 + 32);
    }

    v18 = v17;
    if (__OFADD__(v16, 1))
    {
      goto LABEL_41;
    }

    [v17 frame];
    v44.x = v2;
    v44.y = v1;
    v19 = CGRectContainsPoint(v46, v44);

    ++v16;
    if (v19)
    {

      v30 = 0;
      goto LABEL_34;
    }
  }

  v29 = *(v3 + v40);
  sub_220F26060(v29, &v42);

  if (v43)
  {
    v30 = 1;
  }

  else
  {
    v45.x = v2;
    v45.y = v1;
    v30 = !CGRectContainsPoint(v42, v45);
  }

LABEL_34:
  if (qword_2812C5EC8 != -1)
  {
    OUTLINED_FUNCTION_16();
  }

  v31 = sub_220FC17A0();
  OUTLINED_FUNCTION_23_0(v31, qword_2812C5ED0);
  v32 = sub_220FC1780();
  v33 = sub_220FC2E30();
  if (OUTLINED_FUNCTION_53_3(v33))
  {
    v34 = swift_slowAlloc();
    *v34 = 67240192;
    v34[1] = v30;
    OUTLINED_FUNCTION_42_3();
    _os_log_impl(v35, v36, v37, v38, v39, 8u);
    OUTLINED_FUNCTION_15();
  }

  swift_unknownObjectRelease();

  return v30;
}

void sub_220F044F8()
{
  OUTLINED_FUNCTION_68_1();
  v3 = sub_220EF8494();
  [v3 convertPoint:*(v0 + OBJC_IVAR____TtC11WeatherMaps25InteractiveViewController____lazy_storage___mapView) toCoordinateFromView:{v2, v1}];
  OUTLINED_FUNCTION_17_0();

  OUTLINED_FUNCTION_62_1();
}

uint64_t sub_220F04554()
{
  OUTLINED_FUNCTION_68_1();
  swift_getObjectType();
  if (qword_2812C5EC8 != -1)
  {
    OUTLINED_FUNCTION_16();
  }

  v2 = sub_220FC17A0();
  OUTLINED_FUNCTION_23_0(v2, qword_2812C5ED0);
  v3 = sub_220FC1780();
  v4 = sub_220FC2E30();
  if (OUTLINED_FUNCTION_53_3(v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 141558787;
    *(v5 + 4) = 1752392040;
    *(v5 + 12) = 2049;
    *(v5 + 14) = v1;
    *(v5 + 22) = 2160;
    *(v5 + 24) = 1752392040;
    *(v5 + 32) = 2049;
    *(v5 + 34) = v0;
    OUTLINED_FUNCTION_42_3();
    _os_log_impl(v6, v7, v8, v9, v10, 0x2Au);
    OUTLINED_FUNCTION_15();
  }

  MEMORY[0x28223BE20](v11, v12);
  sub_220FC1070();
  sub_220FC1570();
  sub_220E1966C(0, &qword_2812C5CA0);
  v13 = sub_220FC2FC0();
  v14 = swift_allocObject();
  *(v14 + 16) = v1;
  *(v14 + 24) = v0;
  v15 = sub_220FC14A0();

  return v15;
}

uint64_t sub_220F047B8(uint64_t a1, double a2, double a3)
{
  v6 = sub_220FC1070();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11, v12);
  v14 = &v27 - v13;
  if (qword_2812C5EC8 != -1)
  {
    swift_once();
  }

  v15 = sub_220FC17A0();
  __swift_project_value_buffer(v15, qword_2812C5ED0);
  v31 = *(v7 + 16);
  v31(v14, a1, v6);
  v16 = sub_220FC1780();
  v17 = sub_220FC2E30();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v29 = v10;
    v19 = v18;
    v28 = swift_slowAlloc();
    v32 = v28;
    *v19 = 141559299;
    *(v19 + 4) = 1752392040;
    *(v19 + 12) = 2049;
    *(v19 + 14) = a2;
    *(v19 + 22) = 2160;
    *(v19 + 24) = 1752392040;
    *(v19 + 32) = 2049;
    *(v19 + 34) = a3;
    *(v19 + 42) = 2160;
    *(v19 + 44) = 1752392040;
    *(v19 + 52) = 2081;
    v20 = sub_220FC1040();
    v30 = a1;
    v22 = v21;
    (*(v7 + 8))(v14, v6);
    v23 = sub_220E20FF8(v20, v22, &v32);
    a1 = v30;

    *(v19 + 54) = v23;
    _os_log_impl(&dword_220E15000, v16, v17, "Finishing reverse geocoding. coordinate: lat=%{private,mask.hash}f, long=%{private,mask.hash}f, location=%{private,mask.hash}s", v19, 0x3Eu);
    v24 = v28;
    __swift_destroy_boxed_opaque_existential_0(v28);
    MEMORY[0x223D9DDF0](v24, -1, -1);
    v25 = v19;
    v10 = v29;
    MEMORY[0x223D9DDF0](v25, -1, -1);
  }

  else
  {

    (*(v7 + 8))(v14, v6);
  }

  v31(v10, a1, v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9EC00);
  swift_allocObject();
  return sub_220FC14E0();
}

void sub_220F04ADC()
{
  OUTLINED_FUNCTION_29_2();
  v29 = v1;
  v3 = v2;
  type metadata accessor for WeatherMap.LocationAction(0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v4, v5);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_26_7();
  v6 = sub_220FC1070();
  OUTLINED_FUNCTION_6();
  v8 = v7;
  MEMORY[0x28223BE20](v9, v10);
  OUTLINED_FUNCTION_3();
  v13 = v12 - v11;
  if (qword_2812C5EC8 != -1)
  {
    OUTLINED_FUNCTION_16();
  }

  v14 = sub_220FC17A0();
  OUTLINED_FUNCTION_23_0(v14, qword_2812C5ED0);
  v27 = *(v8 + 16);
  v27(v13, v3, v6);
  v15 = sub_220FC1780();
  v16 = sub_220FC2E30();
  v28 = v3;
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = OUTLINED_FUNCTION_54_1();
    v30 = v18;
    *v17 = 141558275;
    *(v17 + 4) = 1752392040;
    *(v17 + 12) = 2081;
    v19 = sub_220FC1040();
    v26 = v0;
    v21 = v20;
    (*(v8 + 8))(v13, v6);
    v22 = sub_220E20FF8(v19, v21, &v30);
    v0 = v26;

    *(v17 + 14) = v22;
    _os_log_impl(&dword_220E15000, v15, v16, v29, v17, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v18);
    OUTLINED_FUNCTION_15();
    OUTLINED_FUNCTION_15();
  }

  else
  {

    (*(v8 + 8))(v13, v6);
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v24 = *(Strong + OBJC_IVAR____TtC11WeatherMaps24WeatherMapViewController_locationActionHandler);
    if (v24)
    {
      v27(v0, v28, v6);
      swift_storeEnumTagMultiPayload();

      v24(v0);
      sub_220E2DD2C(v24);
      swift_unknownObjectRelease();
      OUTLINED_FUNCTION_22_6();
      sub_220F056E4(v0, v25);
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }

  OUTLINED_FUNCTION_22();
}

uint64_t sub_220F04DD4()
{
  type metadata accessor for WeatherMap.LocationAction(0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v0, v1);
  OUTLINED_FUNCTION_3();
  v4 = v3 - v2;
  if (qword_2812C5EC8 != -1)
  {
    OUTLINED_FUNCTION_16();
  }

  v5 = sub_220FC17A0();
  OUTLINED_FUNCTION_23_0(v5, qword_2812C5ED0);
  v6 = sub_220FC1780();
  v7 = sub_220FC2E30();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_220E15000, v6, v7, "Dismissed context menu interaction.", v8, 2u);
    OUTLINED_FUNCTION_15();
  }

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v10 = *(result + OBJC_IVAR____TtC11WeatherMaps24WeatherMapViewController_locationActionHandler);
    if (v10)
    {
      swift_storeEnumTagMultiPayload();

      v10(v4);
      sub_220E2DD2C(v10);
      swift_unknownObjectRelease();
      OUTLINED_FUNCTION_22_6();
      return sub_220F056E4(v4, v11);
    }

    else
    {

      return swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t sub_220F04F80(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CF9D6D0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_220F04FF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CF9D6D0);
  OUTLINED_FUNCTION_29(v7);
  v9 = v8;
  v11 = v10;
  v12 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v13 = *(v3 + ((*(v11 + 64) + v12 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_220F00E30(a1, a2, a3, v3 + v12, v13);
}

uint64_t sub_220F050A8()
{
  v1 = type metadata accessor for SonifierDataState(0);
  OUTLINED_FUNCTION_8_0(v1);
  v2 = swift_task_alloc();
  *(v0 + 16) = v2;
  *v2 = v0;
  v2[1] = sub_220E566F8;
  OUTLINED_FUNCTION_60_3();

  return sub_220F0078C(v3, v4, v5, v6, v7);
}

void sub_220F05198(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_220FC26C0();

  [a3 setText_];
}

void sub_220F05240()
{
  v0 = sub_220FC1070();
  OUTLINED_FUNCTION_29(v0);
  OUTLINED_FUNCTION_38_5();
  v1 = OUTLINED_FUNCTION_45_4();
  sub_220EFED30(v1, v2, v3, v4, v5, v6);
}

uint64_t objectdestroy_69Tm()
{
  sub_220FC1070();
  OUTLINED_FUNCTION_2();
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = (v3 + *(v1 + 64)) & 0xFFFFFFFFFFFFFFF8;
  (*(v1 + 8))(v0 + v3);
  if (*(v0 + v4 + 8))
  {
  }

  return MEMORY[0x2821FE8E8](v0, v4 + 24, v2 | 7);
}

id sub_220F05370(void *a1, uint64_t a2)
{
  v4 = sub_220FC1070();
  OUTLINED_FUNCTION_29(v4);
  OUTLINED_FUNCTION_38_5();

  return sub_220EFF3B0(a1, a2, v5, v6, v7, v8);
}

unint64_t sub_220F05404()
{
  result = qword_27CF9EBB0;
  if (!qword_27CF9EBB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF9EBB0);
  }

  return result;
}

uint64_t sub_220F05458(uint64_t result)
{
  if (result)
  {
    v2 = *(v1 + 16);
    if (v2)
    {
      return v2();
    }
  }

  return result;
}

uint64_t block_copy_helper_13(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t objectdestroy_87Tm()
{

  OUTLINED_FUNCTION_69();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

void sub_220F05570()
{
  OUTLINED_FUNCTION_8_1();
  v1 = sub_220FC2960();

  [v0 setAccessibilityElements_];
}

uint64_t sub_220F0568C()
{
  OUTLINED_FUNCTION_8_1();
  v1(0);
  OUTLINED_FUNCTION_2();
  v2 = OUTLINED_FUNCTION_9();
  v3(v2);
  return v0;
}

uint64_t sub_220F056E4(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_2();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_220F057B4()
{
  OUTLINED_FUNCTION_8_1();
  v1(0);
  OUTLINED_FUNCTION_2();
  v2 = OUTLINED_FUNCTION_9();
  v3(v2);
  return v0;
}

void sub_220F0580C()
{
  v1 = sub_220FC1070();
  OUTLINED_FUNCTION_29(v1);
  v4 = *(v0 + 16);
  v5 = v0 + ((*(v2 + 80) + 24) & ~*(v2 + 80));
  v6 = *(v5 + *(v3 + 64));

  sub_220F01B78(v4, v5, v6);
}

uint64_t sub_220F05888(unint64_t *a1, void (*a2)(uint64_t))
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

id OUTLINED_FUNCTION_23_6()
{

  return [v0 (v1 + 2808)];
}

unsigned __int8 *OUTLINED_FUNCTION_34_5(unsigned __int8 *a1)
{

  return sub_220F6AACC(a1, 0, 0, 0, 0);
}

id OUTLINED_FUNCTION_35_6()
{

  return [v0 (v1 + 2808)];
}

uint64_t OUTLINED_FUNCTION_51_3()
{

  return swift_beginAccess();
}

id OUTLINED_FUNCTION_52_4()
{

  return [v1 (v0 + 3065)];
}

BOOL OUTLINED_FUNCTION_53_3(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

id OUTLINED_FUNCTION_54_4(void *a1)
{

  return [a1 (v1 + 3832)];
}

id OUTLINED_FUNCTION_56_3()
{

  return [v0 (v1 + 1016)];
}

id OUTLINED_FUNCTION_69_2(double a1, uint64_t a2, const char *a3)
{

  return [v3 a3];
}

id OUTLINED_FUNCTION_70()
{

  return [v1 (v0 + 2808)];
}

id OUTLINED_FUNCTION_71_2()
{

  return [v0 (v1 + 1223)];
}

uint64_t sub_220F05BD0()
{
  result = sub_220FC1070();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for WeatherMapAnnotatedLocation(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_220F05C8C()
{
  result = sub_220FC1070();
  if (v1 <= 0x3F)
  {
    result = sub_220FC0760();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_220F05D10@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for WeatherMapAnnotatedLocation(0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v4, v5);
  OUTLINED_FUNCTION_3();
  v6 = OUTLINED_FUNCTION_4_28();
  type metadata accessor for WeatherMapAnnotatedLocationData(v6);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v7, v8);
  OUTLINED_FUNCTION_3();
  v11 = v10 - v9;
  sub_220EDC548(v1, v10 - v9);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_220F06360(v11, v1);
    v12 = *(v3 + 20);
    v13 = sub_220FC0760();
    OUTLINED_FUNCTION_2();
    (*(v14 + 16))(a1, v1 + v12, v13);
    OUTLINED_FUNCTION_0_50();
    sub_220F063C4(v1, v15);
    return __swift_storeEnumTagSinglePayload(a1, 0, 1, v13);
  }

  else
  {
    v17 = sub_220FC0760();
    __swift_storeEnumTagSinglePayload(a1, 1, 1, v17);
    OUTLINED_FUNCTION_1_45();
    return sub_220F063C4(v11, v18);
  }
}

uint64_t sub_220F05E6C@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for WeatherMapAnnotatedLocation(0);
  MEMORY[0x28223BE20](v3 - 8, v4);
  OUTLINED_FUNCTION_3();
  v5 = OUTLINED_FUNCTION_4_28();
  type metadata accessor for WeatherMapAnnotatedLocationData(v5);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v6, v7);
  OUTLINED_FUNCTION_3();
  v10 = v9 - v8;
  sub_220EDC548(v1, v9 - v8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_220F06360(v10, v1);
    sub_220FC1070();
    OUTLINED_FUNCTION_2();
    (*(v11 + 16))(a1, v1);
    OUTLINED_FUNCTION_0_50();
    return sub_220F063C4(v1, v12);
  }

  else
  {
    sub_220FC1070();
    OUTLINED_FUNCTION_2();
    return (*(v14 + 32))(a1, v10);
  }
}

uint64_t sub_220F05FB8(uint64_t a1, uint64_t a2)
{
  v39 = a2;
  v38 = type metadata accessor for WeatherMapAnnotatedLocation(0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v4, v5);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_4_28();
  v6 = sub_220FC1070();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  OUTLINED_FUNCTION_3();
  v11 = v10 - v9;
  type metadata accessor for WeatherMapAnnotatedLocationData(0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v12, v13);
  v15 = &v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16, v17);
  v19 = &v38 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9EC18);
  MEMORY[0x28223BE20](v20 - 8, v21);
  v23 = &v38 - v22;
  v25 = *(v24 + 56);
  sub_220EDC548(a1, &v38 - v22);
  sub_220EDC548(v39, &v23[v25]);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_220EDC548(v23, v19);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      (*(v7 + 32))(v11, &v23[v25], v6);
      v30 = sub_220FC1010();
      v32 = *(v7 + 8);
      v32(v11, v6);
      v32(v19, v6);
      OUTLINED_FUNCTION_1_45();
      sub_220F063C4(v23, v33);
      return v30 & 1;
    }

    (*(v7 + 8))(v19, v6);
    goto LABEL_9;
  }

  sub_220EDC548(v23, v15);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    OUTLINED_FUNCTION_0_50();
    sub_220F063C4(v15, v31);
LABEL_9:
    sub_220F0641C(v23);
LABEL_13:
    v30 = 0;
    return v30 & 1;
  }

  sub_220F06360(&v23[v25], v2);
  if ((sub_220FC1010() & 1) == 0)
  {
    OUTLINED_FUNCTION_0_50();
    sub_220F063C4(v2, v34);
    goto LABEL_12;
  }

  v26 = sub_220FC0750();
  OUTLINED_FUNCTION_0_50();
  sub_220F063C4(v2, v27);
  if ((v26 & 1) == 0)
  {
LABEL_12:
    OUTLINED_FUNCTION_0_50();
    sub_220F063C4(v15, v35);
    OUTLINED_FUNCTION_1_45();
    sub_220F063C4(v23, v36);
    goto LABEL_13;
  }

  OUTLINED_FUNCTION_0_50();
  sub_220F063C4(v15, v28);
  OUTLINED_FUNCTION_1_45();
  sub_220F063C4(v23, v29);
  v30 = 1;
  return v30 & 1;
}

uint64_t sub_220F062F8()
{
  if ((sub_220FC1010() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for WeatherMapAnnotatedLocation(0);

  return sub_220FC0750();
}

uint64_t sub_220F06360(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WeatherMapAnnotatedLocation(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_220F063C4(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_2();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_220F0641C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9EC18);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_220F06484()
{
  v0 = sub_220FC0EA0();
  __swift_allocate_value_buffer(v0, qword_2812CE5C0);
  v1 = __swift_project_value_buffer(v0, qword_2812CE5C0);
  v2 = *MEMORY[0x277D7AAB0];
  v3 = *(*(v0 - 8) + 104);

  return v3(v1, v2, v0);
}

uint64_t sub_220F0650C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9EC30);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_220FD2990;
  sub_220EF6CB4();
  *(v0 + 32) = sub_220FC3400();
  *(v0 + 40) = v1;
  *(v0 + 48) = 0x30464542363623;
  *(v0 + 56) = 0xE700000000000000;
  *(v0 + 64) = 0;
  *(v0 + 72) = 0;
  *(v0 + 80) = 1;
  *(v0 + 88) = 0;
  *(v0 + 96) = 0;
  *(v0 + 104) = 0x32463143373623;
  *(v0 + 112) = 0xE700000000000000;
  *(v0 + 120) = 0x4008CCCCCCCCCCCDLL;
  *(v0 + 128) = 0;
  *(v0 + 136) = 1;
  *(v0 + 144) = sub_220FC3400();
  *(v0 + 152) = v2;
  *(v0 + 160) = 0x39464343303723;
  *(v0 + 168) = 0xE700000000000000;
  *(v0 + 176) = 0x4016000000000000;
  *(v0 + 184) = 0;
  *(v0 + 192) = 1;
  *(v0 + 200) = 0;
  *(v0 + 208) = 0;
  *(v0 + 216) = 0x46463444393723;
  *(v0 + 224) = 0xE700000000000000;
  *(v0 + 232) = 0x4020000000000000;
  *(v0 + 240) = 0;
  *(v0 + 248) = 1;
  *(v0 + 256) = 0;
  *(v0 + 264) = 0;
  *(v0 + 272) = 0x46464444383823;
  *(v0 + 280) = 0xE700000000000000;
  *(v0 + 288) = 0x402599999999999ALL;
  *(v0 + 296) = 0;
  *(v0 + 304) = 1;
  *(v0 + 312) = sub_220FC3400();
  *(v0 + 320) = v3;
  *(v0 + 328) = 0x46463145364123;
  *(v0 + 336) = 0xE700000000000000;
  *(v0 + 344) = 0x4031B33333333333;
  *(v0 + 352) = 0;
  *(v0 + 360) = 1;
  *(v0 + 368) = 0;
  *(v0 + 376) = 0;
  *(v0 + 384) = 0x46463546334323;
  *(v0 + 392) = 0xE700000000000000;
  *(v0 + 400) = 0x4038800000000000;
  *(v0 + 408) = 0;
  *(v0 + 416) = 1;
  *(v0 + 424) = 0;
  *(v0 + 432) = 0;
  *(v0 + 440) = 0x46463646434323;
  *(v0 + 448) = 0xE700000000000000;
  *(v0 + 456) = 0x403E000000000000;
  *(v0 + 464) = 0;
  *(v0 + 472) = 1;
  result = sub_220FC3400();
  *(v0 + 480) = result;
  *(v0 + 488) = v5;
  *(v0 + 496) = 0x46463646434323;
  *(v0 + 504) = 0xE700000000000000;
  *(v0 + 512) = 0x4040400000000000;
  *(v0 + 520) = 0;
  *(v0 + 528) = 1;
  qword_2812C9F90 = v0;
  return result;
}

uint64_t sub_220F06748()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9EC20);
  v0 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9EC28) - 8);
  v1 = (*(*v0 + 80) + 32) & ~*(*v0 + 80);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_220FC8E30;
  v3 = v2 + v1;
  v28 = v0[14];
  v4 = *MEMORY[0x277D7AAB0];
  v5 = sub_220FC0EA0();
  (*(*(v5 - 8) + 104))(v3, v4, v5);
  if (qword_2812C5B30 != -1)
  {
    swift_once();
  }

  v6 = qword_2812CE4B0;
  v27 = sub_220FBFF80();
  v8 = v7;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9EC30);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_220FD29A0;
  sub_220EF6CB4();
  *(v9 + 32) = sub_220FC3400();
  *(v9 + 40) = v10;
  *(v9 + 48) = 0x44423837303023;
  *(v9 + 56) = 0xE700000000000000;
  *(v9 + 64) = 0u;
  *(v9 + 80) = 1;
  *(v9 + 88) = 0u;
  *(v9 + 104) = 0x44423837303023;
  *(v9 + 112) = 0xE700000000000000;
  *(v9 + 120) = 0x3FD3333333333333;
  *(v9 + 128) = 0;
  *(v9 + 136) = 1;
  *(v9 + 144) = 0u;
  *(v9 + 160) = 0x44423837303023;
  *(v9 + 168) = 0xE700000000000000;
  *(v9 + 176) = 0x3FF8000000000000;
  *(v9 + 184) = 0;
  *(v9 + 192) = 1;
  *(v9 + 200) = 0u;
  *(v9 + 216) = 0x31434337303023;
  *(v9 + 224) = 0xE700000000000000;
  *(v9 + 232) = 0x400B333333333333;
  *(v9 + 240) = 0;
  *(v9 + 248) = 1;
  *(v9 + 256) = OUTLINED_FUNCTION_0_51();
  *(v9 + 264) = v11;
  *(v9 + 272) = 0x33434537303023;
  *(v9 + 280) = 0xE700000000000000;
  *(v9 + 288) = 0x4016000000000000;
  *(v9 + 296) = 0;
  *(v9 + 304) = 1;
  *(v9 + 312) = 0u;
  OUTLINED_FUNCTION_1_46();
  *(v9 + 328) = v12 | 0x35433000000000;
  *(v9 + 336) = 0xE700000000000000;
  *(v9 + 344) = 0x4020000000000000;
  *(v9 + 352) = 0;
  *(v9 + 360) = 1;
  *(v9 + 368) = v13;
  OUTLINED_FUNCTION_1_46();
  *(v9 + 384) = v14 | 0x38433300000000;
  *(v9 + 392) = 0xE700000000000000;
  *(v9 + 400) = 0x402599999999999ALL;
  *(v9 + 408) = 0;
  *(v9 + 416) = 1;
  *(v9 + 424) = v15;
  OUTLINED_FUNCTION_1_46();
  *(v9 + 440) = v16 | 0x44433900000000;
  *(v9 + 448) = 0xE700000000000000;
  *(v9 + 456) = 0x402BCCCCCCCCCCCDLL;
  *(v9 + 464) = 0;
  *(v9 + 472) = 1;
  *(v9 + 480) = OUTLINED_FUNCTION_0_51();
  *(v9 + 488) = v17;
  OUTLINED_FUNCTION_1_46();
  *(v9 + 496) = v18 | 0x45434100000000;
  *(v9 + 504) = 0xE700000000000000;
  *(v9 + 512) = 0x4031333333333333;
  *(v9 + 520) = 0;
  *(v9 + 528) = 1;
  *(v9 + 536) = 0u;
  OUTLINED_FUNCTION_1_46();
  *(v9 + 552) = v19 | 0x30444300000000;
  *(v9 + 560) = 0xE700000000000000;
  *(v9 + 568) = 0x4034CCCCCCCCCCCDLL;
  *(v9 + 576) = 0;
  *(v9 + 584) = 1;
  *(v9 + 592) = v20;
  OUTLINED_FUNCTION_1_46();
  *(v9 + 608) = v21 | 0x32444500000000;
  *(v9 + 616) = 0xE700000000000000;
  *(v9 + 624) = 0x4038800000000000;
  *(v9 + 632) = 0;
  *(v9 + 640) = 1;
  *(v9 + 648) = v22;
  *(v9 + 664) = 0x39443539303023;
  *(v9 + 672) = 0xE700000000000000;
  *(v9 + 680) = 0x403C800000000000;
  *(v9 + 688) = 0;
  *(v9 + 696) = 1;
  *(v9 + 704) = OUTLINED_FUNCTION_0_51();
  *(v9 + 712) = v23;
  *(v9 + 720) = 0x30454439303023;
  *(v9 + 728) = 0xE700000000000000;
  *(v9 + 736) = 0x4040400000000000;
  *(v9 + 744) = 0;
  *(v9 + 752) = 1;
  if (qword_2812C9F88 != -1)
  {
    swift_once();
  }

  v24 = qword_2812C9F90;
  v25 = v3 + v28;
  *v25 = 0x74726F6675616562;
  *(v25 + 8) = 0xE800000000000000;
  *(v25 + 16) = 0;
  *(v25 + 24) = 0;
  *(v25 + 32) = 0;
  *(v25 + 34) = v29;
  *(v25 + 38) = v30;
  *(v25 + 40) = v27;
  *(v25 + 48) = v8;
  *(v25 + 56) = v9;
  *(v25 + 64) = v24;
  *(v25 + 72) = 1;
  *(v25 + 73) = 0;
  *(v25 + 76) = 0;
  *(v25 + 80) = xmmword_220FD29B0;
  sub_220F06C58();

  result = sub_220FC2600();
  qword_2812CE5D8 = result;
  return result;
}

unint64_t sub_220F06C58()
{
  result = qword_2812CA0A8;
  if (!qword_2812CA0A8)
  {
    sub_220FC0EA0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812CA0A8);
  }

  return result;
}

void sub_220F06CB0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v186 = a4;
  v185 = a3;
  v6 = type metadata accessor for WeatherMapAnnotationPinView.ViewModel(0);
  v7 = v6 - 8;
  v213 = *(v6 - 8);
  v204 = *(v213 + 64);
  v9 = MEMORY[0x28223BE20](v6, v8);
  v215 = (v176 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v9, v11);
  v13 = v176 - v12;
  v14 = type metadata accessor for WeatherMapAnnotationViewModel();
  v15 = OUTLINED_FUNCTION_29(v14);
  v202 = v16;
  v18 = *(v17 + 64);
  v20 = MEMORY[0x28223BE20](v15, v19);
  v198 = v176 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v20, v21);
  v24 = v176 - v23;
  v214 = v176 - v23;
  MEMORY[0x28223BE20](v22, v25);
  v27 = v176 - v26;
  v28 = OBJC_IVAR____TtC11WeatherMaps24WeatherMapAnnotationView_viewModel;
  swift_beginAccess();
  OUTLINED_FUNCTION_1_3();
  v210 = v29;
  v212 = a1;
  sub_220F08EC8(a1 + v28, v27, v30);
  sub_220F86200(*(a2 + 27), v13);
  v211 = sub_220F860C0();
  v31 = v211 + OBJC_IVAR____TtC11WeatherMaps27WeatherMapAnnotationPinView_viewModel;
  swift_beginAccess();
  v32 = dbl_220FD29F8[v13[*(v7 + 36)]] / dbl_220FD29F8[v31[*(v7 + 36)]];
  OUTLINED_FUNCTION_2_3();
  v33 = swift_allocObject();
  v34 = MEMORY[0x277D84F90];
  v184 = v33;
  *(v33 + 16) = MEMORY[0x277D84F90];
  v201 = (v33 + 16);
  OUTLINED_FUNCTION_2_3();
  v35 = swift_allocObject();
  v183 = v35;
  *(v35 + 16) = v34;
  v203 = (v35 + 16);
  v229[0] = 0;
  v229[1] = 0;
  v228[0] = 0;
  v228[1] = 0;
  memset(v227, 0, sizeof(v227));
  v225 = 0;
  v226 = 0;
  v224 = 0;
  memset(v223, 0, sizeof(v223));
  v222[1] = 0;
  v222[0] = 0;
  v221 = 0;
  v36 = swift_allocObject();
  *(v36 + 24) = 0;
  v207 = v36;
  *(v36 + 16) = 0;
  v200 = v36 + 16;
  OUTLINED_FUNCTION_2_3();
  v37 = swift_allocObject();
  v205 = v37;
  *(v37 + 16) = 0;
  v199 = (v37 + 16);
  v209 = objc_opt_self();
  v206 = a2;
  v38 = v210;
  sub_220F08EC8(a2, v24, v210);
  OUTLINED_FUNCTION_8_19();
  v197 = v39;
  v208 = v13;
  sub_220F08EC8(v13, v215, v40);
  v187 = v27;
  sub_220F08EC8(v27, v176 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0), v38);
  OUTLINED_FUNCTION_25_9();
  v42 = (*(v41 + 80) + 24) & ~*(v41 + 80);
  v202 = ((v18 + 7 + v42) & 0xFFFFFFFFFFFFFFF8);
  OUTLINED_FUNCTION_4_29();
  v196 = v43;
  OUTLINED_FUNCTION_4_29();
  v195 = v44;
  OUTLINED_FUNCTION_4_29();
  v194 = v45;
  OUTLINED_FUNCTION_4_29();
  v193 = v46;
  OUTLINED_FUNCTION_21_5();
  v191 = v47 & 0xFFFFFFFFFFFFFFF8;
  OUTLINED_FUNCTION_4_29();
  v190 = v48;
  v188 = ((v48 + 15) & 0xFFFFFFFFFFFFFFF8);
  OUTLINED_FUNCTION_20_9();
  v50 = *(v49 + 80);
  v180 = v50 + 8;
  v52 = (v50 + 8 + v51) & ~v50;
  v182 = v53;
  v178 = v50;
  v179 = v204 + 7;
  OUTLINED_FUNCTION_27_8();
  v55 = v54 & 0xFFFFFFFFFFFFFFF8;
  v213 = v56;
  v57 = (v56 + (v54 & 0xFFFFFFFFFFFFFFF8) + 8) & ~v56;
  v204 = v58;
  OUTLINED_FUNCTION_1_47((v58 + v57) & 0xFFFFFFFFFFFFFFF8);
  v189 = v59;
  v60 = (v59 + 15) & 0xFFFFFFFFFFFFFFF8;
  v181 = v61;
  v62 = swift_allocObject();
  OUTLINED_FUNCTION_17_8();
  *(v63 + 16) = v64;
  v65 = v63 + v42;
  v66 = v210;
  sub_220F08F24(v214, v65, v210);
  OUTLINED_FUNCTION_6_18(v229);
  OUTLINED_FUNCTION_26_8();
  OUTLINED_FUNCTION_6_18(v67);
  OUTLINED_FUNCTION_6_18(&v225);
  OUTLINED_FUNCTION_6_18(&v224);
  OUTLINED_FUNCTION_6_18(v228);
  *(v62 + v7) = v227;
  *(v62 + v18) = &v226;
  OUTLINED_FUNCTION_6_18(v223);
  OUTLINED_FUNCTION_6_18(v222);
  OUTLINED_FUNCTION_6_18(&v221);
  sub_220F08F24(v215, v62 + v52, v197);
  OUTLINED_FUNCTION_23_7();
  *(v62 + a2) = v68;
  *(v62 + v55) = v200;
  sub_220F08F24(v198, v62 + v57, v66);
  *(v62 + v192) = v32;
  *&v189[v62] = v32;
  OUTLINED_FUNCTION_29_6();
  *(v62 + v60) = v69;
  OUTLINED_FUNCTION_22_7();
  *(v62 + ((v60 + 15) & 0xFFFFFFFFFFFFFFF8)) = v70;
  v71 = swift_allocObject();
  *(v71 + 16) = sub_220F08F80;
  *(v71 + 24) = v62;
  v192 = v62;
  v219 = sub_220E56A04;
  v220 = v71;
  v216 = MEMORY[0x277D85DD0];
  v217 = 1107296256;
  v218 = sub_220EE6934;
  v72 = OUTLINED_FUNCTION_19_8(&block_descriptor_14);
  OUTLINED_FUNCTION_17_8();
  v74 = v73;
  OUTLINED_FUNCTION_26_8();
  v76 = v75;

  [v209 performWithoutAnimation_];
  _Block_release(v72);
  LOBYTE(v60) = swift_isEscapingClosureAtFileLocation();

  if (v60)
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_20_9();
    v200 = ~v77;
    v212 = v74;
    v191 = ~v178;
    v78 = [objc_allocWithZone(MEMORY[0x277D75A60]) initWithMass:1.0 stiffness:300.0 damping:36.0 initialVelocity:{0.0, 0.0}];
    v211 = &v218;
    sub_220F084BC(v78, 0x6E6F697469736F70, 0xE800000000000000);
    OUTLINED_FUNCTION_18_8();
    sub_220FC3130();
    v79 = sub_220FC31F0();
    v210 = v71;
    [v71 setFromValue_];

    v80 = sub_220FC31F0();
    [v71 setToValue_];

    sub_220F084BC(v78, 0x73646E756F62, 0xE600000000000000);
    OUTLINED_FUNCTION_18_8();
    sub_220FC3120();
    OUTLINED_FUNCTION_10_15();
    v203 = v71;
    [v71 v81];

    sub_220FC3120();
    OUTLINED_FUNCTION_13_11();
    [v71 v82];

    OUTLINED_FUNCTION_14_9();
    v85 = sub_220F084BC(v78, v83, v84);
    v86 = OBJC_IVAR____TtC11WeatherMaps27WeatherMapAnnotationPinView_strokeLayer;
    [*&v76[OBJC_IVAR____TtC11WeatherMaps27WeatherMapAnnotationPinView_strokeLayer] cornerRadius];
    sub_220FC10D0();
    OUTLINED_FUNCTION_10_15();
    v202 = v85;
    [v85 v87];

    sub_220FC10D0();
    OUTLINED_FUNCTION_13_11();
    [v85 v88];

    v89 = sub_220F084BC(v78, 0x6957726564726F62, 0xEB00000000687464);
    [*&v76[v86] borderWidth];
    sub_220FC10D0();
    OUTLINED_FUNCTION_10_15();
    v201 = v89;
    [v89 v90];

    sub_220FC10D0();
    OUTLINED_FUNCTION_13_11();
    [v89 v91];

    v92 = sub_220F084BC(v78, 0x6E6F697469736F70, 0xE800000000000000);
    [*(*&v76[OBJC_IVAR____TtC11WeatherMaps27WeatherMapAnnotationPinView_backgroundView] + OBJC_IVAR____TtC11WeatherMaps34WeatherMapAnnotationBackgroundView_gradientLayer) position];
    sub_220FC31F0();
    OUTLINED_FUNCTION_10_15();
    v199 = v92;
    [v92 v93];

    sub_220FC31F0();
    OUTLINED_FUNCTION_13_11();
    [v92 v94];

    sub_220F084BC(v78, 0x73646E756F62, 0xE600000000000000);
    [OUTLINED_FUNCTION_24_7() bounds];
    sub_220FC3120();
    OUTLINED_FUNCTION_10_15();
    v198 = v92;
    [v92 v95];

    sub_220FC3120();
    OUTLINED_FUNCTION_13_11();
    [v92 v96];

    OUTLINED_FUNCTION_14_9();
    sub_220F084BC(v97, v98, v99);
    [OUTLINED_FUNCTION_24_7() cornerRadius];
    sub_220FC10D0();
    OUTLINED_FUNCTION_10_15();
    v197 = v92;
    [v92 v100];

    sub_220FC10D0();
    OUTLINED_FUNCTION_13_11();
    [v92 v101];

    v102 = sub_220F084BC(v78, 0x6E6F697469736F70, 0xE800000000000000);
    v103 = OBJC_IVAR____TtC11WeatherMaps27WeatherMapAnnotationPinView_outerShadowLayer;
    [*&v76[OBJC_IVAR____TtC11WeatherMaps27WeatherMapAnnotationPinView_outerShadowLayer] position];
    sub_220FC31F0();
    OUTLINED_FUNCTION_10_15();
    v196 = v102;
    [v102 v104];

    sub_220FC31F0();
    OUTLINED_FUNCTION_13_11();
    [v102 v105];

    v106 = sub_220F084BC(v78, 0x73646E756F62, 0xE600000000000000);
    v107 = *&v76[v103];
    v193 = v76;
    [v107 bounds];
    sub_220FC3120();
    OUTLINED_FUNCTION_10_15();
    v195 = v106;
    [v106 v108];

    sub_220FC3120();
    OUTLINED_FUNCTION_13_11();
    [v106 v109];

    v110 = sub_220F084BC(v78, 0x6150776F64616873, 0xEA00000000006874);
    v189 = v110;
    v111 = [*&v76[v103] shadowPath];
    OUTLINED_FUNCTION_10_15();
    [v110 v112];

    [v110 setToValue_];
    v190 = v78;
    [v78 ts_settlingDuration];
    v114 = v113;
    [v78 dampingRatio];
    v116 = v115;
    OUTLINED_FUNCTION_1_3();
    v194 = v117;
    sub_220F08EC8(v206, v214, v118);
    OUTLINED_FUNCTION_8_19();
    v188 = v119;
    sub_220F08EC8(v208, v215, v120);
    OUTLINED_FUNCTION_20_9();
    v177 = (v121 + 32) & v200;
    OUTLINED_FUNCTION_1_47((v204 + v177) & 0xFFFFFFFFFFFFFFF8);
    OUTLINED_FUNCTION_1_47(v122);
    OUTLINED_FUNCTION_1_47(v123);
    OUTLINED_FUNCTION_1_47(v124);
    OUTLINED_FUNCTION_1_47(v125);
    OUTLINED_FUNCTION_1_47(v126);
    OUTLINED_FUNCTION_1_47(v127);
    v176[1] = v128;
    OUTLINED_FUNCTION_27_8();
    OUTLINED_FUNCTION_21_5();
    v130 = v129 & 0xFFFFFFFFFFFFFFF8;
    v131 = (v180 + (v129 & 0xFFFFFFFFFFFFFFF8)) & v191;
    v132 = (v179 + v131) & 0xFFFFFFFFFFFFFFF8;
    v133 = (v132 + 15) & 0xFFFFFFFFFFFFFFF8;
    v134 = (v133 + 15) & 0xFFFFFFFFFFFFFFF8;
    v135 = swift_allocObject();
    OUTLINED_FUNCTION_17_8();
    *(v136 + 16) = v138;
    *(v136 + 24) = v137;
    sub_220F08F24(v214, v136 + v177, v194);
    OUTLINED_FUNCTION_6_18(v210);
    OUTLINED_FUNCTION_23_7();
    OUTLINED_FUNCTION_6_18(v139);
    OUTLINED_FUNCTION_22_7();
    OUTLINED_FUNCTION_6_18(v140);
    OUTLINED_FUNCTION_25_9();
    OUTLINED_FUNCTION_6_18(v141);
    OUTLINED_FUNCTION_29_6();
    OUTLINED_FUNCTION_6_18(v142);
    OUTLINED_FUNCTION_6_18(v198);
    OUTLINED_FUNCTION_6_18(v197);
    OUTLINED_FUNCTION_6_18(v196);
    *(&selRef_handleVoiceOverStatusDidChangeWithNotification_ + v135) = v195;
    v143 = v189;
    *&v92[v135] = v189;
    *&v76[v135] = v205;
    *(v135 + v130) = v207;
    sub_220F08F24(v215, v135 + v131, v188);
    *(v135 + v132) = v32;
    *(v135 + v133) = v32;
    v144 = v184;
    *(v135 + v134) = v184;
    v145 = v183;
    *(v135 + ((v134 + 15) & 0xFFFFFFFFFFFFFFF8)) = v183;
    v219 = sub_220F0924C;
    v220 = v135;
    OUTLINED_FUNCTION_7_16();
    *(v146 - 256) = v147;
    v217 = 1107296256;
    OUTLINED_FUNCTION_26_8();
    v218 = sub_220F6DA78;
    v191 = OUTLINED_FUNCTION_19_8(&block_descriptor_20);
    OUTLINED_FUNCTION_17_8();
    v149 = v148;
    v150 = v193;
    v215 = v210;
    OUTLINED_FUNCTION_23_7();
    v212 = v151;
    OUTLINED_FUNCTION_22_7();
    v210 = v152;
    OUTLINED_FUNCTION_25_9();
    v203 = v153;
    OUTLINED_FUNCTION_29_6();
    v202 = v154;
    v201 = v198;
    v199 = v197;
    v198 = v196;
    v197 = v195;
    v196 = v143;

    v155 = v214;
    v156 = v194;
    sub_220F08EC8(v206, v214, v194);
    OUTLINED_FUNCTION_20_9();
    v158 = (v157 + 40) & v200;
    v159 = (v204 + v158) & 0xFFFFFFFFFFFFFFF8;
    v160 = swift_allocObject();
    v160[2] = v144;
    v160[3] = v145;
    v160[4] = v149;
    sub_220F08F24(v155, v160 + v158, v156);
    *(v160 + v159) = v150;
    v161 = (v160 + ((v159 + 15) & 0xFFFFFFFFFFFFFFF8));
    v162 = v185;
    v163 = v186;
    *v161 = v185;
    v161[1] = v163;
    v219 = sub_220F093FC;
    v220 = v160;
    OUTLINED_FUNCTION_7_16();
    *(v164 - 256) = v165;
    v217 = 1107296256;
    OUTLINED_FUNCTION_26_8();
    v218 = sub_220EFF6B0;
    v166 = OUTLINED_FUNCTION_19_8(&block_descriptor_26_0);
    v167 = v149;
    v168 = v150;

    sub_220E1AADC(v162);

    v169 = v191;
    [v209 animateWithDuration:0 delay:v191 usingSpringWithDamping:v166 initialSpringVelocity:v114 options:0.0 animations:v116 completion:0.0];
    _Block_release(v166);
    _Block_release(v169);

    OUTLINED_FUNCTION_17_8();
    OUTLINED_FUNCTION_22_7();

    OUTLINED_FUNCTION_25_9();
    OUTLINED_FUNCTION_23_7();

    OUTLINED_FUNCTION_29_6();
    sub_220F0949C(v208, type metadata accessor for WeatherMapAnnotationPinView.ViewModel);
    sub_220F0949C(v187, type metadata accessor for WeatherMapAnnotationViewModel);

    v175 = v226;
  }
}

void sub_220F07EDC(void *a1, uint64_t a2, void *a3, char *a4, void *a5, void *a6, void *a7, void *a8, double a9, double a10, void **a11, void *a12, void *a13, void *a14, uint64_t a15, void *a16, void *a17, uint64_t a18, void **a19, void *a20)
{
  v93 = a5;
  v94 = a6;
  v102 = a19;
  v98 = a17;
  v99 = a18;
  v97 = a14;
  v95 = a15;
  v96 = a13;
  v28 = type metadata accessor for WeatherMapAnnotationPinView.ViewModel(0);
  v29 = v28 - 8;
  v31 = MEMORY[0x28223BE20](v28, v30);
  v92 = &v91 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31, v33);
  v100 = &v91 - v34;
  v35 = type metadata accessor for WeatherMapAnnotationViewModel();
  MEMORY[0x28223BE20](v35 - 8, v36);
  v38 = &v91 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_220F08EC8(a2, v38, type metadata accessor for WeatherMapAnnotationViewModel);
  sub_220F86050(v38);
  v101 = a1;
  [a1 layoutIfNeeded];
  v39 = *&a4[OBJC_IVAR____TtC11WeatherMaps27WeatherMapAnnotationPinView_strokeLayer];
  [v39 position];
  *a3 = v40;
  a3[1] = v41;
  [v39 borderWidth];
  *v93 = v42;
  [v39 cornerRadius];
  *v94 = v43;
  v44 = *&a4[OBJC_IVAR____TtC11WeatherMaps27WeatherMapAnnotationPinView_outerShadowLayer];
  [v44 position];
  *a7 = v45;
  a7[1] = v46;
  [v44 bounds];
  *a8 = v47;
  a8[1] = v48;
  a8[2] = v49;
  a8[3] = v50;
  v51 = a4;
  v52 = [v44 shadowPath];
  v53 = *a11;
  *a11 = v52;

  v54 = *&a4[OBJC_IVAR____TtC11WeatherMaps27WeatherMapAnnotationPinView_backgroundView];
  v55 = OBJC_IVAR____TtC11WeatherMaps34WeatherMapAnnotationBackgroundView_gradientLayer;
  [*(v54 + OBJC_IVAR____TtC11WeatherMaps34WeatherMapAnnotationBackgroundView_gradientLayer) bounds];
  *a12 = v56;
  a12[1] = v57;
  a12[2] = v58;
  a12[3] = v59;
  v60 = v95;
  [*(v54 + v55) position];
  v61 = v96;
  *v96 = v62;
  v61[1] = v63;
  [*(v54 + v55) cornerRadius];
  *v97 = v64;
  if (*(v60 + *(v29 + 36)) == 2)
  {
    v65 = v100;
    sub_220F08EC8(v60, v100, type metadata accessor for WeatherMapAnnotationPinView.ViewModel);
    v66 = objc_allocWithZone(type metadata accessor for WeatherMapAnnotationPinView(0));
    v67 = sub_220E461F8(v65);
    sub_220E45F18(v60);
    v68 = *&v67[OBJC_IVAR____TtC11WeatherMaps27WeatherMapAnnotationPinView_titleLabel];

    v69 = v68;
    MEMORY[0x223D9BEA0]();
    sub_220F095C0(*((*a16 & 0xFFFFFFFFFFFFFF8) + 0x10));
    sub_220FC29F0();
    [v51 addSubview_];
    [v69 setAlpha_];
    v70 = *&v51[OBJC_IVAR____TtC11WeatherMaps27WeatherMapAnnotationPinView_titleLabel];
    [v70 frame];
    [v69 setFrame_];
    [v69 center];
    v72 = v98;
    v71 = v99;
    *v98 = v73;
    v72[1] = v74;
    sub_220F08EC8(v71, v38, type metadata accessor for WeatherMapAnnotationViewModel);
    v75 = v101;
    sub_220F86050(v38);
    [v75 layoutIfNeeded];
    CGAffineTransformMakeScale(&v103, 1.0 / a9, 1.0 / a10);
    [v69 setTransform_];
    [v70 center];
    [v69 setCenter_];
  }

  else
  {
    v76 = *&a4[OBJC_IVAR____TtC11WeatherMaps27WeatherMapAnnotationPinView_titleLabel];
    [v76 center];
    v78 = v98;
    v77 = v99;
    *v98 = v79;
    v78[1] = v80;
    sub_220F08EC8(v77, v38, type metadata accessor for WeatherMapAnnotationViewModel);
    v81 = v101;
    sub_220F86050(v38);
    [v81 layoutIfNeeded];
    v82 = sub_220F860C0();
    v83 = OBJC_IVAR____TtC11WeatherMaps27WeatherMapAnnotationPinView_viewModel;
    swift_beginAccess();
    v84 = v82 + v83;
    v85 = v100;
    sub_220F08EC8(v84, v100, type metadata accessor for WeatherMapAnnotationPinView.ViewModel);

    v86 = v92;
    sub_220F08EC8(v85, v92, type metadata accessor for WeatherMapAnnotationPinView.ViewModel);
    v87 = objc_allocWithZone(type metadata accessor for WeatherMapAnnotationPinView(0));
    v88 = sub_220E461F8(v86);
    sub_220E45F18(v85);
    v89 = *&v88[OBJC_IVAR____TtC11WeatherMaps27WeatherMapAnnotationPinView_titleLabel];

    v69 = v89;
    MEMORY[0x223D9BEA0]();
    sub_220F095C0(*((*a20 & 0xFFFFFFFFFFFFFF8) + 0x10));
    sub_220FC29F0();
    [a4 addSubview_];
    [v76 frame];
    [v69 setFrame_];
    [v69 setAlpha_];
    sub_220F0949C(v85, type metadata accessor for WeatherMapAnnotationPinView.ViewModel);
  }

  v90 = *v102;
  *v102 = v69;
}

id sub_220F084BC(void *a1, uint64_t a2, uint64_t a3)
{
  sub_220F0951C();

  v6 = sub_220E3C264(a2, a3);
  [a1 mass];
  [v6 setMass_];
  [a1 stiffness];
  [v6 setStiffness_];
  [a1 damping];
  [v6 setDamping_];
  [v6 setInitialVelocity_];
  v7 = v6;
  [a1 ts_settlingDuration];
  [v7 setDuration_];

  return v7;
}

uint64_t sub_220F085B8(_BYTE *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, CGFloat a9, CGFloat a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  v55 = a4;
  v56 = a5;
  v28 = type metadata accessor for WeatherMapAnnotationViewModel();
  MEMORY[0x28223BE20](v28 - 8, v29);
  v31 = &v50 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  a1[OBJC_IVAR____TtC11WeatherMaps27WeatherMapAnnotationPinView_disablesImplicitAnimations] = 0;
  sub_220E45E14();
  sub_220F08EC8(a3, v31, type metadata accessor for WeatherMapAnnotationViewModel);
  sub_220F86050(v31);
  [a2 layoutIfNeeded];
  v32 = objc_opt_self();
  v33 = swift_allocObject();
  *(v33 + 16) = a1;
  v34 = swift_allocObject();
  *(v34 + 16) = sub_220F094F0;
  *(v34 + 24) = v33;
  *&aBlock.tx = sub_220F0965C;
  *&aBlock.ty = v34;
  *&aBlock.a = MEMORY[0x277D85DD0];
  *&aBlock.b = 1107296256;
  *&aBlock.c = sub_220EE6934;
  *&aBlock.d = &block_descriptor_36_0;
  v35 = _Block_copy(&aBlock);
  v36 = a1;

  [v32 performWithoutAnimation_];
  _Block_release(v35);
  LOBYTE(v32) = swift_isEscapingClosureAtFileLocation();

  if (v32)
  {
    __break(1u);
  }

  else
  {
    v54 = v33;
    v53 = a18;
    v51 = a14;
    v50 = a13;
    v52 = a15;
    v38 = objc_opt_self();
    [v38 begin];
    v39 = a8;
    v40 = *&v36[OBJC_IVAR____TtC11WeatherMaps27WeatherMapAnnotationPinView_strokeLayer];
    [v40 addAnimation:v55 forKey:0];
    [v40 addAnimation:v56 forKey:0];
    [v40 addAnimation:a6 forKey:0];
    [v40 addAnimation:a7 forKey:0];
    v41 = *&v36[OBJC_IVAR____TtC11WeatherMaps27WeatherMapAnnotationPinView_backgroundView];
    v42 = OBJC_IVAR____TtC11WeatherMaps34WeatherMapAnnotationBackgroundView_gradientLayer;
    [*(v41 + OBJC_IVAR____TtC11WeatherMaps34WeatherMapAnnotationBackgroundView_gradientLayer) addAnimation:v39 forKey:0];
    [*(v41 + v42) addAnimation:a11 forKey:0];
    [*(v41 + v42) addAnimation:a12 forKey:0];
    v43 = *&v36[OBJC_IVAR____TtC11WeatherMaps27WeatherMapAnnotationPinView_outerShadowLayer];
    [v43 addAnimation:v50 forKey:0];
    [v43 addAnimation:v51 forKey:0];
    [v43 addAnimation:v52 forKey:0];
    [v38 commit];
    swift_beginAccess();
    v44 = *(a16 + 16);
    if (v44)
    {
      swift_beginAccess();
      [v44 setCenter_];
    }

    if (*(v53 + *(type metadata accessor for WeatherMapAnnotationPinView.ViewModel(0) + 28)) == 2)
    {
      swift_beginAccess();
      v45 = *(a16 + 16);
      if (v45)
      {
        *&aBlock.a = 0x3FF0000000000000uLL;
        aBlock.c = 0.0;
        aBlock.d = 1.0;
        *&aBlock.tx = 0uLL;
        [v45 setTransform_];
      }
    }

    else
    {
      swift_beginAccess();
      v46 = *(a16 + 16);
      if (v46)
      {
        CGAffineTransformMakeScale(&aBlock, a9, a10);
        [v46 setTransform_];
      }
    }

    v47 = objc_allocWithZone(MEMORY[0x277D75D40]);
    v48 = sub_220F0915C(0, 0, 0.15, 0.25, 0.0, 0.75, 1.0);
    v49 = swift_allocObject();
    *(v49 + 16) = a19;
    *(v49 + 24) = a20;

    sub_220FC30F0();
  }

  return result;
}

uint64_t sub_220F08B08(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v4 = *(a1 + 16);
  result = sub_220F43CDC(v4);
  if (result)
  {
    v6 = result;
    if (result < 1)
    {
      __break(1u);
      goto LABEL_19;
    }

    for (i = 0; i != v6; ++i)
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x223D9CB30](i, v4);
      }

      else
      {
        v8 = *(v4 + 8 * i + 32);
      }

      v9 = v8;
      [v8 setAlpha_];
    }
  }

  swift_beginAccess();
  v10 = *(a2 + 16);
  result = sub_220F43CDC(v10);
  if (!result)
  {
    return result;
  }

  v11 = result;
  if (result < 1)
  {
LABEL_19:
    __break(1u);
    return result;
  }

  for (j = 0; j != v11; ++j)
  {
    if ((v10 & 0xC000000000000001) != 0)
    {
      v13 = MEMORY[0x223D9CB30](j, v10);
    }

    else
    {
      v13 = *(v10 + 8 * j + 32);
    }

    v14 = v13;
    [v13 setAlpha_];
  }
}

void sub_220F08C68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(uint64_t), uint64_t a8)
{
  v26 = a8;
  v27 = a5;
  v28 = a4;
  v29 = a7;
  v11 = type metadata accessor for WeatherMapAnnotationViewModel();
  MEMORY[0x28223BE20](v11 - 8, v12);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v15 = *(a2 + 16);
  v16 = sub_220F43CDC(v15);

  for (i = 0; v16 != i; ++i)
  {
    if ((v15 & 0xC000000000000001) != 0)
    {
      v18 = MEMORY[0x223D9CB30](i, v15);
    }

    else
    {
      if (i >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_21;
      }

      v18 = *(v15 + 8 * i + 32);
    }

    v19 = v18;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
LABEL_23:
      __break(1u);
      return;
    }

    [v18 removeFromSuperview];
  }

  swift_beginAccess();
  v20 = *(a3 + 16);
  v21 = sub_220F43CDC(v20);

  for (j = 0; v21 != j; ++j)
  {
    if ((v20 & 0xC000000000000001) != 0)
    {
      v23 = MEMORY[0x223D9CB30](j, v20);
    }

    else
    {
      if (j >= *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_23;
      }

      v23 = *(v20 + 8 * j + 32);
    }

    v24 = v23;
    if (__OFADD__(j, 1))
    {
      goto LABEL_22;
    }

    [v23 removeFromSuperview];
  }

  sub_220F08EC8(v27, v14, type metadata accessor for WeatherMapAnnotationViewModel);
  sub_220F86050(v14);
  *(a6 + OBJC_IVAR____TtC11WeatherMaps27WeatherMapAnnotationPinView_disablesImplicitAnimations) = 1;
  sub_220E45E14();
  if (v29)
  {
    v29(v25);
  }
}

uint64_t sub_220F08EC8(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_28_6();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_220F08F24(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_28_6();
  (*(v5 + 32))(a2, a1);
  return a2;
}

void sub_220F08F80()
{
  v7 = type metadata accessor for WeatherMapAnnotationViewModel();
  OUTLINED_FUNCTION_29(v7);
  v9 = *(v8 + 80);
  v11 = *(v10 + 64) + 7;
  OUTLINED_FUNCTION_4_29();
  v24 = v12;
  OUTLINED_FUNCTION_12_13();
  v23 = v13 & 0xFFFFFFFFFFFFFFF8;
  OUTLINED_FUNCTION_15_6();
  OUTLINED_FUNCTION_27_8();
  v15 = v14 & 0xFFFFFFFFFFFFFFF8;
  v16 = type metadata accessor for WeatherMapAnnotationPinView.ViewModel(0);
  OUTLINED_FUNCTION_29(v16);
  OUTLINED_FUNCTION_11_12();
  v17 &= 0xFFFFFFFFFFFFFFF8;
  v18 = (v9 + v17 + 8) & ~v9;
  v19 = (v11 + v18) & 0xFFFFFFFFFFFFFFF8;
  v20 = (v19 + 15) & 0xFFFFFFFFFFFFFFF8;
  sub_220F07EDC(*(v0 + 16), v0 + ((v9 + 24) & ~v9), *(v0 + ((v11 + ((v9 + 24) & ~v9)) & 0xFFFFFFFFFFFFFFF8)), *(v0 + v24), *(v0 + v3), *(v0 + v4), *(v0 + v5), *(v0 + v6), *(v0 + v19), *(v0 + v20), *(v0 + v23), *(v0 + v1), *(v0 + v2), *(v0 + v15), v0 + v22, *(v0 + v21), *(v0 + v17), v0 + v18, *(v0 + ((v20 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v0 + ((((v20 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t block_copy_helper_14(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id sub_220F0915C(uint64_t a1, uint64_t a2, double a3, double a4, double a5, double a6, double a7)
{
  if (a1)
  {
    v16[4] = a1;
    v16[5] = a2;
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 1107296256;
    v16[2] = sub_220F6DA78;
    v16[3] = &block_descriptor_42;
    v13 = _Block_copy(v16);
  }

  else
  {
    v13 = 0;
  }

  v14 = [v7 initWithDuration:v13 controlPoint1:a3 controlPoint2:a4 animations:{a5, a6, a7}];
  _Block_release(v13);
  return v14;
}

uint64_t sub_220F0924C()
{
  v7 = type metadata accessor for WeatherMapAnnotationViewModel();
  OUTLINED_FUNCTION_29(v7);
  v25 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v24 = (*(v9 + 64) + v25 + 7) & 0xFFFFFFFFFFFFFFF8;
  OUTLINED_FUNCTION_4_29();
  v22 = v10;
  OUTLINED_FUNCTION_4_29();
  v23 = v11;
  OUTLINED_FUNCTION_27_8();
  OUTLINED_FUNCTION_12_13();
  v13 = v12 & 0xFFFFFFFFFFFFFFF8;
  v14 = ((v12 & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  OUTLINED_FUNCTION_15_6();
  v16 = v15 & 0xFFFFFFFFFFFFFFF8;
  v17 = type metadata accessor for WeatherMapAnnotationPinView.ViewModel(0);
  OUTLINED_FUNCTION_29(v17);
  OUTLINED_FUNCTION_11_12();
  v18 &= 0xFFFFFFFFFFFFFFF8;
  return sub_220F085B8(*(v0 + 16), *(v0 + 24), v0 + v25, *(v0 + v24), *(v0 + v22), *(v0 + v23), *(v0 + v2), *(v0 + v3), *(v0 + v19), *(v0 + v18), *(v0 + v4), *(v0 + v5), *(v0 + v6), *(v0 + v13), *(v0 + v14), *(v0 + v1), *(v0 + v16), v0 + v20, *(v0 + ((v18 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v0 + ((((v18 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)));
}

void sub_220F093FC(uint64_t a1)
{
  v3 = type metadata accessor for WeatherMapAnnotationViewModel();
  OUTLINED_FUNCTION_29(v3);
  OUTLINED_FUNCTION_11_12();
  v6 = v1[2];
  v7 = v1[3];
  v9 = *(v1 + v8);
  v10 = v1[4];
  v11 = v1 + (v5 & 0xFFFFFFFFFFFFFFF8);
  v12 = *v11;
  v13 = *(v11 + 1);

  sub_220F08C68(a1, v6, v7, v10, v1 + v4, v9, v12, v13);
}

uint64_t sub_220F0949C(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_0_17();
  (*(v3 + 8))(a1);
  return a1;
}

unint64_t sub_220F0951C()
{
  result = qword_27CF9EC38;
  if (!qword_27CF9EC38)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27CF9EC38);
  }

  return result;
}

uint64_t sub_220F095C0(uint64_t result)
{
  if (result + 1 > *((*v1 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    return sub_220FC29C0();
  }

  return result;
}

uint64_t sub_220F09604(uint64_t result, uint64_t (*a2)(BOOL))
{
  v3 = *(*v2 + 24);
  if (result + 1 > (v3 >> 1))
  {
    result = a2(v3 > 1);
    *v2 = result;
  }

  return result;
}

void *OUTLINED_FUNCTION_19_8@<X0>(uint64_t a1@<X8>)
{
  *(v1 - 352) = a1;

  return _Block_copy((v1 - 376));
}

uint64_t sub_220F0978C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746E6572727563 && a2 == 0xE700000000000000;
  if (v4 || (sub_220FC3940() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x7472617473 && a2 == 0xE500000000000000;
    if (v6 || (sub_220FC3940() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x646165727073 && a2 == 0xE600000000000000;
      if (v7 || (sub_220FC3940() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x746E49656D617266 && a2 == 0xED00006C61767265)
      {

        return 3;
      }

      else
      {
        v9 = sub_220FC3940();

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

uint64_t sub_220F098E4(char a1)
{
  result = 0x746E6572727563;
  switch(a1)
  {
    case 1:
      result = 0x7472617473;
      break;
    case 2:
      result = 0x646165727073;
      break;
    case 3:
      result = 0x746E49656D617266;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_220F09974@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_220F0978C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_220F0999C(uint64_t a1)
{
  v2 = sub_220F0A318();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_220F099D8(uint64_t a1)
{
  v2 = sub_220F0A318();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_220F09A14(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9EC58);
  OUTLINED_FUNCTION_6();
  v5 = v4;
  MEMORY[0x28223BE20](v6, v7);
  v9 = &v13 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220F0A318();
  sub_220FC3AB0();
  v17 = 0;
  sub_220FC02B0();
  OUTLINED_FUNCTION_1_48();
  sub_220F0A3D0(v10, v11);
  OUTLINED_FUNCTION_3_29();
  if (!v1)
  {
    type metadata accessor for WeatherMapOverlayTimeConstraints();
    v16 = 1;
    OUTLINED_FUNCTION_3_29();
    v15 = 2;
    sub_220FC38C0();
    v14 = 3;
    sub_220FC38C0();
  }

  return (*(v5 + 8))(v9, v3);
}

uint64_t sub_220F09BF4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v39 = a2;
  v3 = sub_220FC02B0();
  OUTLINED_FUNCTION_6();
  v40 = v4;
  MEMORY[0x28223BE20](v5, v6);
  v8 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9, v10);
  v41 = &v37 - v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9EC40);
  OUTLINED_FUNCTION_6();
  v42 = v13;
  v43 = v12;
  MEMORY[0x28223BE20](v12, v14);
  v16 = &v37 - v15;
  v17 = type metadata accessor for WeatherMapOverlayTimeConstraints();
  MEMORY[0x28223BE20](v17, v18);
  v20 = &v37 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220F0A318();
  v44 = v16;
  v21 = v45;
  sub_220FC3AA0();
  if (v21)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v45 = a1;
  v38 = v20;
  v49 = 0;
  OUTLINED_FUNCTION_1_48();
  sub_220F0A3D0(v22, v23);
  v24 = v41;
  OUTLINED_FUNCTION_4_30();
  v41 = *(v40 + 32);
  (v41)(v38, v24, v3);
  v48 = 1;
  v25 = v8;
  OUTLINED_FUNCTION_4_30();
  v26 = v17;
  v27 = *(v17 + 20);
  v28 = v38;
  (v41)(&v38[v27], v25, v3);
  v47 = 2;
  sub_220FC3830();
  v29 = v28;
  *(v28 + *(v26 + 24)) = v30;
  v46 = 3;
  sub_220FC3830();
  v31 = v45;
  v33 = v32;
  v34 = OUTLINED_FUNCTION_0_52();
  v35(v34);
  *(v29 + *(v26 + 28)) = v33;
  sub_220E5ADF8(v29, v39);
  __swift_destroy_boxed_opaque_existential_0(v31);
  return sub_220E83244(v29);
}

BOOL sub_220F09FEC(uint64_t a1, uint64_t a2)
{
  if (sub_220FC0240() & 1) != 0 && (v4 = type metadata accessor for WeatherMapOverlayTimeConstraints(), (sub_220FC0240()) && *(a1 + *(v4 + 24)) == *(a2 + *(v4 + 24)))
  {
    return *(a1 + *(v4 + 28)) == *(a2 + *(v4 + 28));
  }

  else
  {
    return 0;
  }
}

uint64_t sub_220F0A0A4@<X0>(uint64_t *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9CA90);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_220FC9EF0;
  *(inited + 32) = 0x746E6572727563;
  *(inited + 40) = 0xE700000000000000;
  v4 = sub_220FC02B0();
  *(inited + 72) = v4;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((inited + 48));
  v6 = *(*(v4 - 8) + 16);
  v6(boxed_opaque_existential_1, v1, v4);
  *(inited + 80) = 0x7472617473;
  *(inited + 88) = 0xE500000000000000;
  v7 = type metadata accessor for WeatherMapOverlayTimeConstraints();
  v8 = *(v7 + 20);
  *(inited + 120) = v4;
  v9 = __swift_allocate_boxed_opaque_existential_1((inited + 96));
  v6(v9, v1 + v8, v4);
  *(inited + 128) = 0x646165727073;
  *(inited + 136) = 0xE600000000000000;
  v10 = *(v1 + *(v7 + 24));
  *(inited + 168) = MEMORY[0x277D839F8];
  *(inited + 144) = v10;
  sub_220FC2600();
  a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9EC68);
  a1[4] = sub_220F0A36C();
  __swift_allocate_boxed_opaque_existential_1(a1);
  return sub_220FC12A0();
}

uint64_t sub_220F0A264()
{
  sub_220F0A3D0(&qword_2812C8438, type metadata accessor for WeatherMapOverlayTimeConstraints);

  return sub_220FC1290();
}

unint64_t sub_220F0A318()
{
  result = qword_27CF9EC48;
  if (!qword_27CF9EC48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF9EC48);
  }

  return result;
}

unint64_t sub_220F0A36C()
{
  result = qword_2812C5F80;
  if (!qword_2812C5F80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CF9EC68);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812C5F80);
  }

  return result;
}

uint64_t sub_220F0A3D0(unint64_t *a1, void (*a2)(uint64_t))
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

_BYTE *storeEnumTagSinglePayload for WeatherMapOverlayTimeConstraints.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_220F0A4F8()
{
  result = qword_27CF9EC70;
  if (!qword_27CF9EC70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF9EC70);
  }

  return result;
}

unint64_t sub_220F0A550()
{
  result = qword_27CF9EC78;
  if (!qword_27CF9EC78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF9EC78);
  }

  return result;
}

unint64_t sub_220F0A5A8()
{
  result = qword_27CF9EC80;
  if (!qword_27CF9EC80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF9EC80);
  }

  return result;
}

uint64_t sub_220F0A624(void (*a1)(uint64_t *), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v21 = a1;
  v22 = a2;
  v20 = sub_220FC02B0();
  v23 = *(v20 - 8);
  MEMORY[0x28223BE20](v20, v7);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a4 - a3;
  if (__OFSUB__(a4, a3))
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v11 = MEMORY[0x277D84F90];
  if (!v10)
  {
    return v11;
  }

  v27 = MEMORY[0x277D84F90];
  sub_220F0B1E0(0, v10 & ~(v10 >> 63), 0);
  if ((v10 & 0x8000000000000000) == 0)
  {
    v25 = v4;
    v12 = 0;
    v11 = v27;
    v19 = v23 + 32;
    while (v12 < v10)
    {
      if (__OFADD__(v12, 1))
      {
        goto LABEL_15;
      }

      v24 = v12 + 1;
      v26 = a3 + v12;
      v13 = v9;
      v14 = v25;
      v21(&v26);
      v25 = v14;
      if (v14)
      {
        goto LABEL_20;
      }

      v27 = v11;
      v16 = *(v11 + 16);
      v15 = *(v11 + 24);
      if (v16 >= v15 >> 1)
      {
        sub_220F0B1E0(v15 > 1, v16 + 1, 1);
        v11 = v27;
      }

      *(v11 + 16) = v16 + 1;
      v17 = v11 + ((*(v23 + 80) + 32) & ~*(v23 + 80)) + *(v23 + 72) * v16;
      v9 = v13;
      (*(v23 + 32))(v17, v13, v20);
      if (a4 < a3)
      {
        goto LABEL_16;
      }

      ++v12;
      if ((a3 + v12 - 1) >= a4)
      {
        goto LABEL_17;
      }

      if (v24 == v10)
      {
        return v11;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

LABEL_19:
  __break(1u);
LABEL_20:

  __break(1u);
  return result;
}

uint64_t sub_220F0A84C(void (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v24 = a1;
  v25 = a2;
  v6 = type metadata accessor for WeatherMapAnnotatedLocationData(0);
  v7 = OUTLINED_FUNCTION_29(v6);
  v9 = v8;
  MEMORY[0x28223BE20](v7, v10);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(a3 + 16);
  v14 = MEMORY[0x277D84F90];
  if (!v13)
  {
    return v14;
  }

  v26 = MEMORY[0x277D84F90];
  sub_220F0B2D8(0, v13, 0);
  v14 = v26;
  v15 = sub_220FC1070();
  OUTLINED_FUNCTION_29(v15);
  v17 = a3 + ((*(v16 + 80) + 32) & ~*(v16 + 80));
  v23 = *(v18 + 72);
  while (1)
  {
    v24(v17);
    if (v4)
    {
      break;
    }

    v4 = 0;
    v26 = v14;
    v20 = *(v14 + 16);
    v19 = *(v14 + 24);
    if (v20 >= v19 >> 1)
    {
      sub_220F0B2D8(v19 > 1, v20 + 1, 1);
      v14 = v26;
    }

    *(v14 + 16) = v20 + 1;
    sub_220EDC5AC(v12, v14 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v20);
    v17 += v23;
    if (!--v13)
    {
      return v14;
    }
  }

  __break(1u);
  return result;
}

BOOL sub_220F0AA24(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  if (*(a1 + 8) == 1)
  {
    if (v4 != 1)
    {
      return 0;
    }
  }

  else
  {
    if (v4 == 1)
    {
      return 0;
    }

    v5 = *a2;

    v6 = sub_220FC0C10();
    sub_220E5E3D0(v5, v4);
    if ((v6 & 1) == 0)
    {
      return 0;
    }
  }

  memcpy(v12, (a1 + 16), sizeof(v12));
  memcpy(__dst, (a2 + 16), sizeof(__dst));
  if ((sub_220F17000(v12) & 1) == 0)
  {
    return 0;
  }

  v7 = *(a1 + 200);
  v8 = *(a2 + 200);
  switch(v7)
  {
    case 5:
      if (v8 == 5)
      {
        break;
      }

      return 0;
    case 4:
      if (v8 == 4)
      {
        break;
      }

      return 0;
    case 3:
      if (v8 != 3)
      {
        return 0;
      }

      break;
    default:
      if (v7 != v8 || (v8 - 6) >= 0xFFFFFFFD)
      {
        return 0;
      }

      break;
  }

  v9 = *(type metadata accessor for WeatherMapOverlay() + 28);

  return sub_220F09FEC(a1 + v9, a2 + v9);
}

uint64_t sub_220F0AB8C(uint64_t a1, uint64_t a2)
{
  if (a1 < 1)
  {
    return MEMORY[0x277D84F90];
  }

  if (a1 == 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9CF18);
    v3 = sub_220FC02B0();
    v4 = *(v3 - 8);
    v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_220FC8E30;
    v6 = type metadata accessor for WeatherMapOverlay();
    (*(v4 + 16))(v8 + v5, a2 + *(v6 + 28), v3);
  }

  else
  {
    MEMORY[0x28223BE20](a1, a2);
    v10[2] = a2;
    return sub_220F0A624(sub_220F0AD9C, v10, 0, v7);
  }

  return v8;
}

uint64_t sub_220F0ACF4()
{
  type metadata accessor for WeatherMapOverlay();
  type metadata accessor for WeatherMapOverlayTimeConstraints();
  return sub_220FC01C0();
}

char *sub_220F0ADBC(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[56 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_2_33(a3, result, 56 * a2);
  }

  return result;
}

char *sub_220F0AE00(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[24 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_53(a3, result);
  }

  return result;
}

char *sub_220F0AE24(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[32 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_53(a3, result);
  }

  return result;
}

char *sub_220F0AE5C(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[40 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_53(a3, result);
  }

  return result;
}

char *sub_220F0AE9C(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[56 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_53(a3, result);
  }

  return result;
}

char *sub_220F0AEC4(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[64 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_53(a3, result);
  }

  return result;
}

uint64_t sub_220F0AEFC(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  OUTLINED_FUNCTION_4_31();
  if (v8 && (result = (a4)(0), v5 + *(*(result - 8) + 72) * v4 > v6))
  {
    if (v6 != v5)
    {
      OUTLINED_FUNCTION_1_49();

      return swift_arrayInitWithTakeBackToFront();
    }
  }

  else
  {
    a4(0);
    OUTLINED_FUNCTION_1_49();

    return swift_arrayInitWithTakeFrontToBack();
  }

  return result;
}

char *sub_220F0AFB8(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[4 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_53(a3, result);
  }

  return result;
}

uint64_t sub_220F0B000(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  OUTLINED_FUNCTION_4_31();
  if (v8 && (result = __swift_instantiateConcreteTypeFromMangledNameV2(a4), v5 + *(*(result - 8) + 72) * v4 > v6))
  {
    if (v6 != v5)
    {
      OUTLINED_FUNCTION_1_49();

      return swift_arrayInitWithTakeBackToFront();
    }
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a4);
    OUTLINED_FUNCTION_1_49();

    return swift_arrayInitWithTakeFrontToBack();
  }

  return result;
}

char *sub_220F0B0D0(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[120 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_53(a3, result);
  }

  return result;
}

char *sub_220F0B0F8(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[184 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_53(a3, result);
  }

  return result;
}

void *sub_220F0B120(void *a1, int64_t a2, char a3)
{
  result = sub_220F0B4E8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_220F0B140(char *a1, int64_t a2, char a3)
{
  result = sub_220F0B618(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_220F0B160(char *a1, int64_t a2, char a3)
{
  result = sub_220F0B72C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_220F0B180(char *a1, int64_t a2, char a3)
{
  result = sub_220F0B840(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_220F0B1A0(char *a1, int64_t a2, char a3)
{
  result = sub_220F0B940(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_220F0B1C0(char *a1, int64_t a2, char a3)
{
  result = sub_220F0BA4C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_220F0B1E0(size_t a1, int64_t a2, char a3)
{
  result = sub_220F0BB88(a1, a2, a3, *v3, &qword_27CF9CF18, &unk_220FC9680, MEMORY[0x277CC9578], MEMORY[0x277CC9578]);
  *v3 = result;
  return result;
}

void *sub_220F0B238(void *a1, int64_t a2, char a3)
{
  result = sub_220F0BD48(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_220F0B258(char *a1, int64_t a2, char a3)
{
  result = sub_220F0BE7C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_220F0B278(void *a1, int64_t a2, char a3)
{
  result = sub_220F0BF84(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_220F0B298(char *a1, int64_t a2, char a3)
{
  result = sub_220F0C0BC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_220F0B2B8(char *a1, int64_t a2, char a3)
{
  result = sub_220F0C1C4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_220F0B2D8(size_t a1, int64_t a2, char a3)
{
  result = sub_220F0BB88(a1, a2, a3, *v3, &qword_27CF9ED08, &unk_220FD2D80, type metadata accessor for WeatherMapAnnotatedLocationData, type metadata accessor for WeatherMapAnnotatedLocationData);
  *v3 = result;
  return result;
}

size_t sub_220F0B330(size_t a1, int64_t a2, char a3)
{
  result = sub_220F0BB88(a1, a2, a3, *v3, &qword_27CF9ED18, &unk_220FD2DA0, type metadata accessor for LocationPickerViewModel.Row, type metadata accessor for LocationPickerViewModel.Row);
  *v3 = result;
  return result;
}

char *sub_220F0B388(char *a1, int64_t a2, char a3)
{
  result = sub_220F0C2DC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_220F0B3A8(char *a1, int64_t a2, char a3)
{
  result = sub_220F0C3DC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_220F0B3C8(char *a1, int64_t a2, char a3)
{
  result = sub_220F0C4DC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_220F0B3E8(char *a1, int64_t a2, char a3)
{
  result = sub_220F0C5DC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_220F0B408(char *a1, int64_t a2, char a3)
{
  result = sub_220F0C6D0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_220F0B428(char *a1, int64_t a2, char a3)
{
  result = sub_220F0C7CC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_220F0B448(void *a1, int64_t a2, char a3)
{
  result = sub_220F0C8E0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_220F0B468(char *a1, int64_t a2, char a3)
{
  result = sub_220F0CA10(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_220F0B488(char *a1, int64_t a2, char a3)
{
  result = sub_220F0CB0C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_220F0B4A8(char *a1, int64_t a2, char a3)
{
  result = sub_220F0CC14(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_220F0B4C8(void *a1, int64_t a2, char a3)
{
  result = sub_220F0CD1C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_220F0B4E8(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9CA80);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || &a4[2 * v8 + 4] <= v10 + 4)
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9CA78);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_220F0B618(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9EC30);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 56);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[56 * v8] <= v12)
    {
      memmove(v12, v13, 56 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_220F0B72C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9ECD8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[24 * v8] <= v12)
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}