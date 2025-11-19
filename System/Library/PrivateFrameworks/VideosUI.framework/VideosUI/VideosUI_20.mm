uint64_t sub_1E379E704(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1E379E788()
{
  result = qword_1EE2898E8;
  if (!qword_1EE2898E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF299A8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF299B0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF299B8);
    sub_1E32752B0(&qword_1EE288968, &qword_1ECF299B0);
    sub_1E32752B0(qword_1EE23BF20, &qword_1ECF299B8);
    swift_getOpaqueTypeConformance2();
    sub_1E379E8E4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2898E8);
  }

  return result;
}

unint64_t sub_1E379E8E4()
{
  result = qword_1EE2575C8[0];
  if (!qword_1EE2575C8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE2575C8);
  }

  return result;
}

uint64_t sub_1E379E938@<X0>(uint64_t *a1@<X8>)
{
  v4 = v1[2];
  v3 = v1[3];
  v6 = v1[4];
  v5 = v1[5];
  OUTLINED_FUNCTION_10_9();
  v7 = swift_allocObject();
  v7[2] = v4;
  v7[3] = v3;
  v7[4] = v6;
  v7[5] = v5;

  v8 = v6;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF299D0);
  swift_getOpaqueTypeConformance2();
  result = nullsub_1(v9, v10);
  *a1 = result;
  a1[1] = v12;
  return result;
}

uint64_t objectdestroy_19Tm()
{

  OUTLINED_FUNCTION_10_9();

  return swift_deallocObject();
}

uint64_t type metadata accessor for PlaybackMediaShowcasingMetadataView()
{
  result = qword_1EE290F30;
  if (!qword_1EE290F30)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1E379EBAC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_1E4201AB4();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF299D8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v17 - v9;
  sub_1E3743538(v2, &v17 - v9, &qword_1ECF299D8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_1E4200B44();
    return (*(*(v11 - 8) + 32))(a1, v10, v11);
  }

  else
  {
    v13 = sub_1E4206804();
    v14 = sub_1E42026D4();
    if (os_log_type_enabled(v14, v13))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v18 = v16;
      *v15 = 136315138;
      *(v15 + 4) = sub_1E3270FC8(0x686353726F6C6F43, 0xEB00000000656D65, &v18);
      _os_log_impl(&dword_1E323F000, v14, v13, "Accessing Environment<%s>'s value outside of being installed on a View. This will always read the default value and will not update.", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v16);
      MEMORY[0x1E69143B0](v16, -1, -1);
      MEMORY[0x1E69143B0](v15, -1, -1);
    }

    sub_1E4201AA4();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t sub_1E379EE60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void), uint64_t (*a6)(uint64_t))
{
  a5(0);
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_26_2();
  v9 = OUTLINED_FUNCTION_74();
  v10(v9);
  return a6(v6);
}

uint64_t sub_1E379EF14()
{
  type metadata accessor for PlaybackMediaShowcasingMetadataView();
  OUTLINED_FUNCTION_64_5();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF294E0);
  sub_1E42038F4();
  if (v1)
  {
    return sub_1E4201D44();
  }

  else
  {
    return sub_1E4201D54();
  }
}

uint64_t sub_1E379EF88@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_184();
  *(a1 + 16) = v13;
  *(a1 + 24) = v14;
  sub_1E3A2532C();
  OUTLINED_FUNCTION_184();
  *(a1 + 32) = v13;
  *(a1 + 40) = v14;
  v2 = type metadata accessor for PlaybackMediaShowcasingMetadataView();
  v3 = v2[8];
  *(a1 + v3) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF299D8);
  swift_storeEnumTagMultiPayload();
  v4 = v2[9];
  *(a1 + v4) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28C18);
  swift_storeEnumTagMultiPayload();
  v5 = objc_opt_self();
  if (([v5 isPad] & 1) == 0)
  {
    [v5 isPhone];
  }

  v6 = a1 + v2[10];
  OUTLINED_FUNCTION_184();
  *v6 = v13;
  *(v6 + 8) = v14;
  v7 = v2[11];
  type metadata accessor for TextBadgePresenter();
  v8 = OUTLINED_FUNCTION_106();
  *(a1 + v7) = sub_1E3789F30(v8);
  v9 = a1 + v2[12];
  *v9 = 0u;
  *(v9 + 16) = 0u;
  *(v9 + 32) = 0u;
  *(v9 + 48) = 0u;
  *(v9 + 64) = 0u;
  *(v9 + 80) = 2;
  *(v9 + 88) = 0;
  type metadata accessor for MediaShowcasingMetadataPresenter(0);
  OUTLINED_FUNCTION_19_17();
  sub_1E37ADD34(v10);
  result = sub_1E42010C4();
  *a1 = result;
  *(a1 + 8) = v12;
  *(a1 + 48) = sub_1E379F17C;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  return result;
}

void sub_1E379F1A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_31_1();
  a19 = v24;
  a20 = v25;
  v273 = v26;
  v256 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF299E8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_44();
  v258 = v28;
  v270 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF299F0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_44();
  v259 = v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF299F8);
  OUTLINED_FUNCTION_6_4(v31, &a18);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_17_3(v33);
  v255 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29A00);
  OUTLINED_FUNCTION_0_10();
  v240 = v34;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_17_3(v36);
  v257 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29A08);
  OUTLINED_FUNCTION_0_10();
  v241 = v37;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_17_3(v39);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29A10);
  OUTLINED_FUNCTION_6_4(v40, v275);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v41);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_17_3(v42);
  v248 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29A18);
  OUTLINED_FUNCTION_0_10();
  v237 = v43;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v44);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_17_3(v45);
  v249 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29A20);
  OUTLINED_FUNCTION_0_10();
  v242 = v46;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v47);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_17_3(v48);
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29A28);
  OUTLINED_FUNCTION_6_4(v49, &v274);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v50);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_17_3(v51);
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29A30);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v53);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_17_3(v54);
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29A38);
  OUTLINED_FUNCTION_6_4(v55, &v272);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v56);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_17_3(v57);
  v244 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29A40);
  OUTLINED_FUNCTION_0_10();
  v232 = v58;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v59);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_17_3(v60);
  v247 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29A48);
  OUTLINED_FUNCTION_0_10();
  v236 = v61;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v62);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_17_3(v63);
  v64 = type metadata accessor for PlaybackMediaShowcasingMetadataView();
  v260 = *(v64 - 8);
  v65 = *(v260 + 64);
  MEMORY[0x1EEE9AC00](v64 - 8);
  OUTLINED_FUNCTION_152_0(&v224 - ((v65 + 15) & 0xFFFFFFFFFFFFFFF0));
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29A50);
  OUTLINED_FUNCTION_6_4(v66, &a13);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v67);
  OUTLINED_FUNCTION_49_2();
  v252 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29A58);
  OUTLINED_FUNCTION_0_10();
  v227 = v68;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v69);
  OUTLINED_FUNCTION_8_4();
  v253 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29A60);
  OUTLINED_FUNCTION_0_10();
  v231 = v70;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v71);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_17_3(v72);
  v266 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29A68);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v73);
  OUTLINED_FUNCTION_44();
  v268 = v74;
  v262 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29A70);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v75);
  OUTLINED_FUNCTION_44();
  v264 = v76;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29A78);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v77);
  OUTLINED_FUNCTION_19_2();
  v263 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29A80);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v78);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_17_3(v79);
  v267 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29A88);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v80);
  OUTLINED_FUNCTION_44();
  v265 = v81;
  v251 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29A90);
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v82);
  OUTLINED_FUNCTION_50_1();
  v272 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29A98);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v83);
  OUTLINED_FUNCTION_44();
  v269 = v84;
  v85 = v20;
  if (sub_1E392583C())
  {
    OUTLINED_FUNCTION_26_0();
    v87 = *(v86 + 392);
    v271 = v88;
    v89 = v87();
    if (v89)
    {
      v90 = v89;
      v226 = v52;
      type metadata accessor for MediaShowcasingMetadataLayout();
      OUTLINED_FUNCTION_20_2();
      v91 = swift_dynamicCastClass();
      if (v91)
      {
        v101 = v91;
        v225 = v90;
        switch(*(v91 + 120))
        {
          case 4:
          case 5:
            nullsub_1(v99, v100);
            v102 = OUTLINED_FUNCTION_13_8();
            v103(v102);
            OUTLINED_FUNCTION_170_0();
            swift_storeEnumTagMultiPayload();
            OUTLINED_FUNCTION_5_1();
            v104 = sub_1E37A08CC();
            OUTLINED_FUNCTION_110_0(v104, &a13);
            v105 = OUTLINED_FUNCTION_12_27();
            OUTLINED_FUNCTION_110_0(v105, &a16);
            OUTLINED_FUNCTION_11_26();
            sub_1E4201F44();
            OUTLINED_FUNCTION_18_5();
            sub_1E3743538(v106, v107, v108);
            OUTLINED_FUNCTION_149_0();
            sub_1E37A07A8();
            sub_1E37A0D28();
            sub_1E4201F44();
            OUTLINED_FUNCTION_82();
            sub_1E325F69C(v109, v110);
            OUTLINED_FUNCTION_18_5();
            sub_1E3743538(v111, v112, v113);
            swift_storeEnumTagMultiPayload();
            sub_1E37A071C();
            sub_1E37A10D4();
            v22 = v269;
            sub_1E4201F44();
            OUTLINED_FUNCTION_185();

            OUTLINED_FUNCTION_82();
            sub_1E325F69C(v114, v115);
            v116 = OUTLINED_FUNCTION_142_0();
            v117(v116);
            break;
          case 6:
            OUTLINED_FUNCTION_153();
            OUTLINED_FUNCTION_123_1();
            sub_1E37A134C();
            OUTLINED_FUNCTION_1_58();
            OUTLINED_FUNCTION_146_3();
            OUTLINED_FUNCTION_16_14();
            OUTLINED_FUNCTION_181_0();
            OUTLINED_FUNCTION_0_25();
            sub_1E37ADCDC(v21, v172);
            v173 = sub_1E37A0ED0();
            v174 = v243;
            OUTLINED_FUNCTION_74();
            v175 = OUTLINED_FUNCTION_51_1();
            v176 = OUTLINED_FUNCTION_143_1(v175);
            sub_1E40AB6EC(v176);

            sub_1E325F69C(v22, &qword_1ECF29A38);
            v274 = v174;
            v275[0] = v173;
            OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
            v178 = OUTLINED_FUNCTION_81_0();
            v22 = v244;
            sub_1E418F2CC(v178, v244, OpaqueTypeConformance2);
            OUTLINED_FUNCTION_15_5();
            v179 = OUTLINED_FUNCTION_124();
            v180(v179);
            OUTLINED_FUNCTION_130_1();
            v181(v246, v85, v247);
            swift_storeEnumTagMultiPayload();
            v274 = v22;
            v275[0] = OpaqueTypeConformance2;
            OUTLINED_FUNCTION_68_6();
            swift_getOpaqueTypeConformance2();
            OUTLINED_FUNCTION_9_0();
            v183 = sub_1E37AE398(v182);
            OUTLINED_FUNCTION_110_0(v183, v275);
            v184 = swift_getOpaqueTypeConformance2();
            OUTLINED_FUNCTION_110_0(v184, &a10);
            swift_getOpaqueTypeConformance2();
            OUTLINED_FUNCTION_153();
            goto LABEL_16;
          case 7:
            v131 = sub_1E4201B84();
            v132 = v233;
            *v233 = v131;
            v132[1] = 0;
            *(v132 + 16) = 1;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29BF0);
            OUTLINED_FUNCTION_100_0();
            sub_1E37A6108(v85, v271, v101);
            OUTLINED_FUNCTION_1_58();
            OUTLINED_FUNCTION_146_3();
            OUTLINED_FUNCTION_16_14();
            OUTLINED_FUNCTION_181_0();
            OUTLINED_FUNCTION_0_25();
            sub_1E37ADCDC(v21, v133);
            OUTLINED_FUNCTION_9_0();
            OUTLINED_FUNCTION_55_0();
            v22 = sub_1E37AE398(v134);
            v135 = v245;
            OUTLINED_FUNCTION_124();
            v136 = OUTLINED_FUNCTION_51_1();
            v137 = OUTLINED_FUNCTION_143_1(v136);
            OUTLINED_FUNCTION_131_1(v137);

            OUTLINED_FUNCTION_55_0();
            sub_1E325F69C(v138, v139);
            v274 = v135;
            v275[0] = v22;
            v140 = swift_getOpaqueTypeConformance2();
            v141 = OUTLINED_FUNCTION_81_0();
            v142 = v248;
            sub_1E418F2CC(v141, v248, v140);
            OUTLINED_FUNCTION_15_5();
            v143 = OUTLINED_FUNCTION_47_4();
            v144(v143);
            OUTLINED_FUNCTION_130_1();
            v145(v246, v85, v249);
            swift_storeEnumTagMultiPayload();
            v146 = sub_1E37A0ED0();
            OUTLINED_FUNCTION_110_0(v146, &v272);
            v147 = swift_getOpaqueTypeConformance2();
            OUTLINED_FUNCTION_110_0(v147, &v273);
            OUTLINED_FUNCTION_68_6();
            swift_getOpaqueTypeConformance2();
            v274 = v142;
            v275[0] = v140;
            swift_getOpaqueTypeConformance2();
            OUTLINED_FUNCTION_153();
LABEL_16:
            sub_1E4201F44();
            OUTLINED_FUNCTION_12_12();
            sub_1E3743538(v185, v186, v187);
            swift_storeEnumTagMultiPayload();
            sub_1E37A07A8();
            sub_1E37A0D28();
            OUTLINED_FUNCTION_116_2();
            OUTLINED_FUNCTION_21_1();
            sub_1E325F69C(v188, v189);
            OUTLINED_FUNCTION_12_12();
            sub_1E3743538(v190, v191, v192);
            OUTLINED_FUNCTION_165_1();
            goto LABEL_18;
          case 8:
            v193 = OUTLINED_FUNCTION_123_1();
            sub_1E37A16F4(v193, v194, v195, v196, v197, v198, v199, v200, v224, v225, v226, v227, v228, v229, v230, v231, v232, v233, v234, v235, v236, v237, v238, v239);
            OUTLINED_FUNCTION_1_58();
            OUTLINED_FUNCTION_146_3();
            OUTLINED_FUNCTION_16_14();
            OUTLINED_FUNCTION_181_0();
            OUTLINED_FUNCTION_0_25();
            sub_1E37ADCDC(v21, v201);
            OUTLINED_FUNCTION_66_6();
            OUTLINED_FUNCTION_55_0();
            v22 = sub_1E37A0F88(v202);
            v203 = v254;
            OUTLINED_FUNCTION_124();
            v204 = OUTLINED_FUNCTION_51_1();
            v205 = OUTLINED_FUNCTION_143_1(v204);
            OUTLINED_FUNCTION_131_1(v205);

            OUTLINED_FUNCTION_55_0();
            sub_1E325F69C(v206, v207);
            v274 = v203;
            v275[0] = v22;
            v208 = OUTLINED_FUNCTION_12_27();
            v209 = OUTLINED_FUNCTION_81_0();
            v210 = v255;
            sub_1E418F2CC(v209, v255, v208);
            OUTLINED_FUNCTION_15_5();
            v211 = OUTLINED_FUNCTION_154_0();
            v212(v211);
            OUTLINED_FUNCTION_130_1();
            v213(v258, v85, v257);
            swift_storeEnumTagMultiPayload();
            v274 = v210;
            v275[0] = v208;
            OUTLINED_FUNCTION_11_26();
            sub_1E4201F44();
            OUTLINED_FUNCTION_12_12();
            sub_1E3743538(v214, v215, v216);
            OUTLINED_FUNCTION_165_1();
LABEL_18:
            swift_storeEnumTagMultiPayload();
            sub_1E37A071C();
            sub_1E37A10D4();
            OUTLINED_FUNCTION_58_6();
            OUTLINED_FUNCTION_185();

            OUTLINED_FUNCTION_21_1();
            sub_1E325F69C(v217, v218);
            v219 = OUTLINED_FUNCTION_159();
            v220(v219);
            break;
          case 9:
          case 0xA:
            swift_storeEnumTagMultiPayload();
            OUTLINED_FUNCTION_66_6();
            v124 = sub_1E37A0F88(v123);
            OUTLINED_FUNCTION_110_0(v124, &a18);
            v125 = OUTLINED_FUNCTION_12_27();
            v274 = v255;
            v275[0] = v125;
            OUTLINED_FUNCTION_11_26();
            sub_1E4201F44();
            OUTLINED_FUNCTION_12_12();
            sub_1E3743538(v126, v127, v128);
            OUTLINED_FUNCTION_165_1();
            swift_storeEnumTagMultiPayload();
            sub_1E37A071C();
            sub_1E37A10D4();
            OUTLINED_FUNCTION_58_6();
            OUTLINED_FUNCTION_185();

            OUTLINED_FUNCTION_21_1();
            sub_1E325F69C(v129, v130);
            break;
          default:
            sub_1E37A1AC0(v85, v92, v93, v94, v95, v96, v97, v98, v224, v225, v226, v227, v228, v229, v230, v231, v232, v233, v234, v235);
            OUTLINED_FUNCTION_1_58();
            v148 = v261;
            sub_1E37AD3C4(v85, v261);
            OUTLINED_FUNCTION_16_14();
            OUTLINED_FUNCTION_181_0();
            OUTLINED_FUNCTION_0_25();
            sub_1E37ADCDC(v148, v149);
            v150 = sub_1E37A08CC();
            v151 = v250;
            OUTLINED_FUNCTION_171_0();
            v152 = OUTLINED_FUNCTION_51_1();
            v153 = OUTLINED_FUNCTION_143_1(v152);
            sub_1E40AB6EC(v153);

            sub_1E325F69C(v23, &qword_1ECF29A50);
            v274 = v151;
            v275[0] = v150;
            v154 = OUTLINED_FUNCTION_12_27();
            v155 = OUTLINED_FUNCTION_81_0();
            v156 = v252;
            sub_1E418F2CC(v155, v252, v154);
            OUTLINED_FUNCTION_15_5();
            v157(v22, v156);
            v158 = OUTLINED_FUNCTION_169_0();
            v159(v158);
            OUTLINED_FUNCTION_170_0();
            swift_storeEnumTagMultiPayload();
            OUTLINED_FUNCTION_5_1();
            v274 = v156;
            v275[0] = v154;
            OUTLINED_FUNCTION_11_26();
            OUTLINED_FUNCTION_153();
            sub_1E4201F44();
            OUTLINED_FUNCTION_12_12();
            sub_1E3743538(v160, v161, v162);
            OUTLINED_FUNCTION_149_0();
            sub_1E37A07A8();
            sub_1E37A0D28();
            OUTLINED_FUNCTION_116_2();
            OUTLINED_FUNCTION_21_1();
            sub_1E325F69C(v163, v164);
            OUTLINED_FUNCTION_12_12();
            sub_1E3743538(v165, v166, v167);
            OUTLINED_FUNCTION_165_1();
            swift_storeEnumTagMultiPayload();
            sub_1E37A071C();
            sub_1E37A10D4();
            OUTLINED_FUNCTION_58_6();
            OUTLINED_FUNCTION_185();

            OUTLINED_FUNCTION_21_1();
            sub_1E325F69C(v168, v169);
            v170 = OUTLINED_FUNCTION_160_1();
            v171(v170);
            break;
        }

        sub_1E3741EA0(v22, v273, &qword_1ECF29A98);
        v221 = OUTLINED_FUNCTION_22_1();
        __swift_storeEnumTagSinglePayload(v221, v222, v223, v272);
        OUTLINED_FUNCTION_25_2();
        return;
      }
    }
  }

  OUTLINED_FUNCTION_32_2();
  OUTLINED_FUNCTION_25_2();

  __swift_storeEnumTagSinglePayload(v118, v119, v120, v121);
}

unint64_t sub_1E37A05D8()
{
  result = qword_1ECF29AA8;
  if (!qword_1ECF29AA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF29AB0);
    sub_1E37A0664();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF29AA8);
  }

  return result;
}

unint64_t sub_1E37A0664()
{
  result = qword_1ECF29AB8;
  if (!qword_1ECF29AB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF29AC0);
    sub_1E37AE398(&unk_1ECF29AC8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF29AB8);
  }

  return result;
}

unint64_t sub_1E37A071C()
{
  result = qword_1ECF29AD8;
  if (!qword_1ECF29AD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF29A88);
    sub_1E37A07A8();
    sub_1E37A0D28();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF29AD8);
  }

  return result;
}

unint64_t sub_1E37A07A8()
{
  result = qword_1ECF29AE0;
  if (!qword_1ECF29AE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF29A80);
    swift_getOpaqueTypeConformance2();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF29A58);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF29A50);
    sub_1E37A08CC();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF29AE0);
  }

  return result;
}

unint64_t sub_1E37A08CC()
{
  result = qword_1ECF29AE8;
  if (!qword_1ECF29AE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF29A50);
    sub_1E37A684C(&unk_1ECF29AF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF29AE8);
  }

  return result;
}

unint64_t sub_1E37A097C()
{
  result = qword_1ECF29B00;
  if (!qword_1ECF29B00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF29B08);
    sub_1E37A0A20();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF29B00);
  }

  return result;
}

unint64_t sub_1E37A0A20()
{
  result = qword_1ECF29B10;
  if (!qword_1ECF29B10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF29B18);
    sub_1E37A0AAC();
    sub_1E37A0B8C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF29B10);
  }

  return result;
}

unint64_t sub_1E37A0AAC()
{
  result = qword_1ECF29B20;
  if (!qword_1ECF29B20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF29B28);
    sub_1E37AE398(&unk_1ECF29B30);
    sub_1E37AE398(&unk_1ECF29B40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF29B20);
  }

  return result;
}

unint64_t sub_1E37A0B8C()
{
  result = qword_1ECF29B50;
  if (!qword_1ECF29B50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF29B58);
    sub_1E37AE398(&unk_1ECF29B60);
    sub_1E37A0F88(&unk_1ECF29B70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF29B50);
  }

  return result;
}

unint64_t sub_1E37A0C70()
{
  result = qword_1ECF29B80;
  if (!qword_1ECF29B80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF29B88);
    sub_1E37AE398(&unk_1ECF29B90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF29B80);
  }

  return result;
}

unint64_t sub_1E37A0D28()
{
  result = qword_1ECF29BA0;
  if (!qword_1ECF29BA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF29A30);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF29A40);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF29A38);
    sub_1E37A0ED0();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF29A18);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF29A10);
    sub_1E37AE398(&unk_1ECF29BE0);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF29BA0);
  }

  return result;
}

unint64_t sub_1E37A0ED0()
{
  result = qword_1ECF29BA8;
  if (!qword_1ECF29BA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF29A38);
    sub_1E37A0F88(&unk_1ECF29BB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF29BA8);
  }

  return result;
}

unint64_t sub_1E37A0F88(uint64_t a1)
{
  result = OUTLINED_FUNCTION_48_0(a1);
  if (!result)
  {
    v5 = v4;
    v6 = OUTLINED_FUNCTION_40_2(0, v3);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v6);
    v5();
    sub_1E37AE398(&qword_1EE2887D0);
    OUTLINED_FUNCTION_60();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_1E37A101C()
{
  result = qword_1ECF29BC0;
  if (!qword_1ECF29BC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF29BC8);
    sub_1E37AE398(&unk_1ECF29BD0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF29BC0);
  }

  return result;
}

unint64_t sub_1E37A10D4()
{
  result = qword_1ECF29BE8;
  if (!qword_1ECF29BE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF299F0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF29A00);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF299F8);
    sub_1E37A0F88(&unk_1ECF29AA0);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF29BE8);
  }

  return result;
}

uint64_t sub_1E37A1214(double a1)
{
  v2 = [objc_opt_self() sharedInstance];
  v3 = [v2 appWindow];

  if (v3)
  {
    [v3 bounds];
    a1 = v4;
  }

  type metadata accessor for PlaybackMediaShowcasingMetadataView();
  OUTLINED_FUNCTION_64_5();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF294E0);
  sub_1E4203904();
  type metadata accessor for LayoutGrid();
  sub_1E3A2579C(a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29C18);
  return sub_1E4203904();
}

void sub_1E37A134C()
{
  OUTLINED_FUNCTION_93();
  *&v47 = v4;
  v51 = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29EF8);
  v7 = OUTLINED_FUNCTION_17_2(v6);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_4_6();
  v10 = v8 - v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v46 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29BD8);
  OUTLINED_FUNCTION_17_2(v14);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_20_1();
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29BC8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_26_2();
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29BB8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_8_4();
  *v3 = sub_1E4201D54();
  *(v3 + 8) = 0;
  *(v3 + 16) = 1;
  v18 = v3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29F00) + 44);
  *v13 = sub_1E4201B84();
  *(v13 + 1) = 0;
  v13[16] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29F08);
  v50 = v0;
  sub_1E37A77A8();
  v19 = OUTLINED_FUNCTION_13_8();
  sub_1E3743538(v19, v20, &qword_1ECF29EF8);
  *v18 = 0;
  *(v18 + 8) = 1;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29F10);
  sub_1E3743538(v10, v18 + *(v21 + 48), &qword_1ECF29EF8);
  v22 = OUTLINED_FUNCTION_170_0();
  sub_1E325F69C(v22, v23);
  sub_1E325F69C(v10, &qword_1ECF29EF8);
  v24 = sub_1E4202724();
  OUTLINED_FUNCTION_8();
  (*(v25 + 152))(v52);
  v26 = v53;
  v27 = 0uLL;
  v28 = 0uLL;
  if ((v53 & 1) == 0)
  {
    sub_1E3952BE0(v52[0], v52[1], v52[2], v52[3]);
    sub_1E4200A54();
    *(&v28 + 1) = v29;
    *(&v27 + 1) = v30;
  }

  v46 = v28;
  v47 = v27;
  v31 = OUTLINED_FUNCTION_171_0();
  sub_1E3741EA0(v31, v32, v33);
  v34 = v1 + *(v49 + 36);
  *v34 = v24;
  v35 = v47;
  *(v34 + 24) = v46;
  *(v34 + 8) = v35;
  *(v34 + 40) = v26 & 1;
  KeyPath = swift_getKeyPath();
  v37 = (v2 + *(v48 + 36));
  v38 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF291E0) + 28);
  v39 = *MEMORY[0x1E697DBA8];
  sub_1E4200B44();
  OUTLINED_FUNCTION_2();
  (*(v40 + 104))(v37 + v38, v39);
  *v37 = KeyPath;
  v41 = OUTLINED_FUNCTION_75();
  sub_1E3741EA0(v41, v42, v43);
  v44 = sub_1E39256E8();
  v45 = v51;
  sub_1E3741EA0(v2, v51, &qword_1ECF29BB8);
  *(v45 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29A38) + 36)) = v44;
  OUTLINED_FUNCTION_54_0();
}

void sub_1E37A16F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_9_4();
  a23 = v29;
  a24 = v30;
  v76 = v24;
  v75[1] = v31;
  v77 = v32;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29FD8);
  v34 = OUTLINED_FUNCTION_17_2(v33);
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_83_0();
  MEMORY[0x1EEE9AC00](v35);
  v37 = v75 - v36;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29AD0);
  OUTLINED_FUNCTION_17_2(v38);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_20_1();
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29AC0);
  OUTLINED_FUNCTION_6_4(v40, &a18);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v41);
  OUTLINED_FUNCTION_26_2();
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29AB0);
  OUTLINED_FUNCTION_6_4(v42, &a19);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v43);
  OUTLINED_FUNCTION_19_2();
  *v27 = sub_1E4201D54();
  *(v27 + 8) = 0;
  *(v27 + 16) = 1;
  v44 = v27 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29FE0) + 44);
  *v37 = sub_1E4201B84();
  *(v37 + 1) = 0;
  v37[16] = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29FE8);
  sub_1E37A7F88();
  v45 = OUTLINED_FUNCTION_115();
  sub_1E3743538(v45, v46, &qword_1ECF29FD8);
  *v44 = 0;
  *(v44 + 8) = 1;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29FF0);
  sub_1E3743538(v28, v44 + *(v47 + 48), &qword_1ECF29FD8);
  v48 = OUTLINED_FUNCTION_142_0();
  sub_1E325F69C(v48, v49);
  v50 = OUTLINED_FUNCTION_159();
  sub_1E325F69C(v50, v51);
  OUTLINED_FUNCTION_8();
  v53 = v78;
  (*(v52 + 176))(v78);
  if (v79)
  {
    v53 = MEMORY[0x1E69DDCE0];
    v55.n128_u64[0] = *(MEMORY[0x1E69DDCE0] + 8);
    v56.n128_u64[0] = *(MEMORY[0x1E69DDCE0] + 16);
    v57.n128_u64[0] = *(MEMORY[0x1E69DDCE0] + 24);
  }

  else
  {
    v55.n128_u64[0] = v78[1];
    v56.n128_u64[0] = v78[2];
    v57.n128_u64[0] = v78[3];
  }

  v54.n128_u64[0] = *v53;
  j_nullsub_1(v54, v55, v56, v57);
  OUTLINED_FUNCTION_3();
  v58 = sub_1E4202734();
  v59 = OUTLINED_FUNCTION_171_0();
  sub_1E3741EA0(v59, v60, v61);
  OUTLINED_FUNCTION_141();
  v63 = (v26 + v62);
  *v63 = v58;
  OUTLINED_FUNCTION_11_4(v63);
  sub_1E4203DA4();
  OUTLINED_FUNCTION_13_22();
  v64 = OUTLINED_FUNCTION_74();
  sub_1E3741EA0(v64, v65, v66);
  OUTLINED_FUNCTION_141();
  memcpy((v25 + v67), v80, 0x70uLL);
  KeyPath = swift_getKeyPath();
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF299F8);
  v70 = v77;
  v71 = (v77 + *(v69 + 36));
  v72 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF291E0) + 28);
  v73 = *MEMORY[0x1E697DBA8];
  sub_1E4200B44();
  OUTLINED_FUNCTION_2();
  (*(v74 + 104))(v71 + v72, v73);
  *v71 = KeyPath;
  sub_1E3741EA0(v25, v70, &qword_1ECF29AB0);
  OUTLINED_FUNCTION_10_3();
}

void sub_1E37A1AC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_31_1();
  a19 = v24;
  a20 = v25;
  v144 = v26;
  v142 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29A90);
  OUTLINED_FUNCTION_0_10();
  v138 = v27;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_20_1();
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29B98);
  OUTLINED_FUNCTION_17_2(v29);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_17_3(v31);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29B88);
  OUTLINED_FUNCTION_6_4(v32, &a9);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_17_3(v34);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29B78);
  v36 = OUTLINED_FUNCTION_6_4(v35, &a18);
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_2_5();
  v133 = v37;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_25_3();
  OUTLINED_FUNCTION_17_3(v39);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29C20);
  OUTLINED_FUNCTION_6_4(v40, &a15);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v41);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_17_3(v42);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29B58);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v43);
  OUTLINED_FUNCTION_44();
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29B68);
  OUTLINED_FUNCTION_6_4(v44, &a16);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v45);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_17_3(v46);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29B48);
  OUTLINED_FUNCTION_6_4(v47, &a14);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v48);
  OUTLINED_FUNCTION_14_5();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29C28);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v49);
  OUTLINED_FUNCTION_44();
  v140 = v50;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29C30);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v51);
  OUTLINED_FUNCTION_44();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29C38);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v52);
  OUTLINED_FUNCTION_49_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29B28);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v53);
  OUTLINED_FUNCTION_50_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29B18);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v54);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_152_0(v55);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29B38);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v56);
  OUTLINED_FUNCTION_8_4();
  v143 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29B08);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v57);
  OUTLINED_FUNCTION_44();
  v141 = v58;
  if (sub_1E392583C())
  {
    OUTLINED_FUNCTION_26_0();
    if ((*(v59 + 392))())
    {
      type metadata accessor for MediaShowcasingMetadataLayout();
      OUTLINED_FUNCTION_20_2();
      v60 = swift_dynamicCastClass();
      if (v60)
      {
        if (*(v60 + 120) - 4 >= 7)
        {
          switch(*(v60 + 120))
          {
            case 1:
              *v23 = sub_1E4201B84();
              *(v23 + 8) = 0;
              *(v23 + 16) = 1;
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29C50);
              OUTLINED_FUNCTION_100_0();
              OUTLINED_FUNCTION_136_0();
              sub_1E37A4508();
              v91 = OUTLINED_FUNCTION_99_0();
              sub_1E3743538(v91, v92, &qword_1ECF29B48);
              OUTLINED_FUNCTION_120();
              swift_storeEnumTagMultiPayload();
              sub_1E37AE398(&unk_1ECF29B30);
              sub_1E37AE398(&unk_1ECF29B40);
              OUTLINED_FUNCTION_125_1();
              OUTLINED_FUNCTION_47_4();
              sub_1E4201F44();
              OUTLINED_FUNCTION_96_2();
              sub_1E3743538(v93, v94, v95);
              swift_storeEnumTagMultiPayload();
              sub_1E37A0AAC();
              sub_1E37A0B8C();
              sub_1E4201F44();
              OUTLINED_FUNCTION_55_0();
              sub_1E325F69C(v96, v97);
              sub_1E3743538(v139, v140, &qword_1ECF29B18);
              OUTLINED_FUNCTION_149_0();
              sub_1E37A0A20();
              OUTLINED_FUNCTION_5_1();
              v63 = v141;
              OUTLINED_FUNCTION_127_0();
              sub_1E4201F44();
              OUTLINED_FUNCTION_151_3();

              sub_1E325F69C(v139, &qword_1ECF29B18);
              v76 = v23;
              v77 = &qword_1ECF29B48;
              break;
            case 2:
              *v131 = sub_1E4201B84();
              *(v131 + 8) = 0;
              *(v131 + 16) = 0;
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29C48);
              sub_1E37ABE40();
              sub_1E3743538(v131, v136, &qword_1ECF29B68);
              swift_storeEnumTagMultiPayload();
              OUTLINED_FUNCTION_9_0();
              OUTLINED_FUNCTION_164();
              sub_1E37AE398(v78);
              OUTLINED_FUNCTION_70_5();
              sub_1E37A0F88(v79);
              sub_1E4201F44();
              OUTLINED_FUNCTION_96_2();
              sub_1E3743538(v80, v81, v82);
              swift_storeEnumTagMultiPayload();
              sub_1E37A0AAC();
              sub_1E37A0B8C();
              OUTLINED_FUNCTION_132_0();
              OUTLINED_FUNCTION_55_0();
              sub_1E325F69C(v83, v84);
              OUTLINED_FUNCTION_96_2();
              sub_1E3743538(v85, v86, v87);
              OUTLINED_FUNCTION_149_0();
              sub_1E37A0A20();
              OUTLINED_FUNCTION_5_1();
              v63 = v141;
              OUTLINED_FUNCTION_127_0();
              sub_1E4201F44();
              OUTLINED_FUNCTION_151_3();

              OUTLINED_FUNCTION_55_0();
              sub_1E325F69C(v88, v89);
              v76 = v131;
              v77 = &qword_1ECF29B68;
              break;
            case 3:
              *v132 = sub_1E4201D54();
              *(v132 + 8) = 0;
              *(v132 + 16) = 1;
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29C40);
              sub_1E37AAC4C();
              type metadata accessor for PlaybackMediaShowcasingMetadataView();
              OUTLINED_FUNCTION_64_5();
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF294E0);
              sub_1E42038F4();
              if (v145 == 1)
              {
                v90 = sub_1E4202724();
                v63 = v141;
              }

              else
              {
                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28BA8);
                inited = swift_initStackObject();
                *(inited + 16) = xmmword_1E4299720;
                v99 = sub_1E4202724();
                *(inited + 32) = v99;
                v100 = sub_1E4202754();
                *(inited + 33) = v100;
                v90 = sub_1E4202774();
                sub_1E4202774();
                v63 = v141;
                if (sub_1E4202774() != v99)
                {
                  v90 = sub_1E4202774();
                }

                sub_1E4202774();
                if (sub_1E4202774() != v100)
                {
                  v90 = sub_1E4202774();
                }
              }

              sub_1E3741EA0(v132, v134, &qword_1ECF29B98);
              OUTLINED_FUNCTION_141();
              *(v134 + v101) = v90;
              KeyPath = swift_getKeyPath();
              v103 = (v133 + *(v137 + 36));
              v104 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF291E0) + 28);
              v105 = *MEMORY[0x1E697DBA8];
              sub_1E4200B44();
              OUTLINED_FUNCTION_2();
              (*(v106 + 104))(v103 + v104, v105);
              *v103 = KeyPath;
              v107 = OUTLINED_FUNCTION_146();
              sub_1E3741EA0(v107, v108, v109);
              OUTLINED_FUNCTION_19_1();
              sub_1E3741EA0(v110, v111, v112);
              OUTLINED_FUNCTION_12_12();
              sub_1E3743538(v113, v114, v115);
              swift_storeEnumTagMultiPayload();
              OUTLINED_FUNCTION_9_0();
              sub_1E37AE398(v116);
              OUTLINED_FUNCTION_70_5();
              OUTLINED_FUNCTION_21_1();
              sub_1E37A0F88(v117);
              sub_1E4201F44();
              OUTLINED_FUNCTION_96_2();
              sub_1E3743538(v118, v119, v120);
              swift_storeEnumTagMultiPayload();
              sub_1E37A0AAC();
              sub_1E37A0B8C();
              OUTLINED_FUNCTION_132_0();
              OUTLINED_FUNCTION_55_0();
              sub_1E325F69C(v121, v122);
              OUTLINED_FUNCTION_96_2();
              sub_1E3743538(v123, v124, v125);
              OUTLINED_FUNCTION_149_0();
              sub_1E37A0A20();
              OUTLINED_FUNCTION_5_1();
              OUTLINED_FUNCTION_127_0();
              sub_1E4201F44();
              OUTLINED_FUNCTION_151_3();
              OUTLINED_FUNCTION_180();
              OUTLINED_FUNCTION_55_0();
              sub_1E325F69C(v126, v127);
              v76 = v135;
              v77 = &qword_1ECF29B78;
              break;
            default:
              *v20 = sub_1E4201B84();
              *(v20 + 8) = 0;
              *(v20 + 16) = 0;
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29C58);
              OUTLINED_FUNCTION_136_0();
              sub_1E37A2988();
              sub_1E3743538(v20, v22, &qword_1ECF29B38);
              OUTLINED_FUNCTION_120();
              swift_storeEnumTagMultiPayload();
              sub_1E37AE398(&unk_1ECF29B30);
              sub_1E37AE398(&unk_1ECF29B40);
              OUTLINED_FUNCTION_125_1();
              OUTLINED_FUNCTION_47_4();
              sub_1E4201F44();
              OUTLINED_FUNCTION_96_2();
              sub_1E3743538(v71, v72, v73);
              swift_storeEnumTagMultiPayload();
              sub_1E37A0AAC();
              sub_1E37A0B8C();
              sub_1E4201F44();
              OUTLINED_FUNCTION_55_0();
              sub_1E325F69C(v74, v75);
              sub_1E3743538(v139, v140, &qword_1ECF29B18);
              OUTLINED_FUNCTION_149_0();
              sub_1E37A0A20();
              OUTLINED_FUNCTION_5_1();
              v63 = v141;
              sub_1E4201F44();
              OUTLINED_FUNCTION_151_3();

              sub_1E325F69C(v139, &qword_1ECF29B18);
              v76 = v20;
              v77 = &qword_1ECF29B38;
              break;
          }

          sub_1E325F69C(v76, v77);
        }

        else
        {
          nullsub_1(v61, v62);
          (*(v138 + 16))(v140, v21, v142);
          swift_storeEnumTagMultiPayload();
          sub_1E37A0A20();
          OUTLINED_FUNCTION_5_1();
          v63 = v141;
          sub_1E4201F44();
          OUTLINED_FUNCTION_151_3();
          OUTLINED_FUNCTION_180();
          v64 = OUTLINED_FUNCTION_138_0();
          v65(v64);
        }

        sub_1E3741EA0(v63, v144, &qword_1ECF29B08);
        v128 = OUTLINED_FUNCTION_22_1();
        __swift_storeEnumTagSinglePayload(v128, v129, v130, v143);
        OUTLINED_FUNCTION_25_2();
        return;
      }

      OUTLINED_FUNCTION_180();
    }
  }

  OUTLINED_FUNCTION_32_2();
  OUTLINED_FUNCTION_25_2();

  __swift_storeEnumTagSinglePayload(v66, v67, v68, v69);
}

void sub_1E37A2988()
{
  OUTLINED_FUNCTION_31_1();
  OUTLINED_FUNCTION_91_1(v5, v6);
  OUTLINED_FUNCTION_82_3();
  v34 = v7;
  MEMORY[0x1EEE9AC00](v8);
  v31 = OUTLINED_FUNCTION_43_8(&v29);
  OUTLINED_FUNCTION_0_10();
  v10 = v9;
  v29 = v9;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_74_1();
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29C60);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_14_5();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29C68);
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_2_5();
  v35 = v14;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_34_1();
  v16 = sub_1E379EF14();
  OUTLINED_FUNCTION_129_0(v16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29C70);
  OUTLINED_FUNCTION_100_0();
  v30 = v1;
  sub_1E37A2CAC(v1, v33, v4);
  v17 = OUTLINED_FUNCTION_51_6();
  v18(v17);
  OUTLINED_FUNCTION_1_58();
  OUTLINED_FUNCTION_148_0();
  OUTLINED_FUNCTION_16_14();
  swift_allocObject();
  OUTLINED_FUNCTION_0_25();
  sub_1E37ADCDC(v10, v19);
  OUTLINED_FUNCTION_1();
  sub_1E37AE398(v20);
  OUTLINED_FUNCTION_135();
  v21 = OUTLINED_FUNCTION_51_1();
  OUTLINED_FUNCTION_39_8(v21);

  v22 = OUTLINED_FUNCTION_85_2();
  v23(v22);
  sub_1E325F69C(v3, &qword_1ECF29C60);
  OUTLINED_FUNCTION_25_17((v30 + *(v2 + 48)));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF294E0);
  OUTLINED_FUNCTION_147_0();
  v24 = OUTLINED_FUNCTION_26_15();
  (v2)(v24);
  v25 = OUTLINED_FUNCTION_84_3();
  (v2)(v25);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29C80);
  v27 = OUTLINED_FUNCTION_24_7(v26);
  v0(v27);
  v28 = OUTLINED_FUNCTION_157_0();
  v0(v28);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E37A313C()
{
  OUTLINED_FUNCTION_31_1();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28CB8);
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_26_2();
  OUTLINED_FUNCTION_36();
  v4 = *(v3 + 488);
  v5 = v4();
  if (v5)
  {
    v0 = sub_1E373E010(23, v5);

    if (v0)
    {
      if (*v0 == _TtC8VideosUI13TextViewModel)
      {
        goto LABEL_8;
      }
    }
  }

  v6 = (v4)(v5);
  if (v6)
  {
    sub_1E373E010(24, v6);
    OUTLINED_FUNCTION_122();

    if (v0)
    {
      if (*v0 != _TtC8VideosUI13TextViewModel)
      {
LABEL_12:

        goto LABEL_13;
      }

LABEL_8:
      if (sub_1E3C27528())
      {
        OUTLINED_FUNCTION_106();
        type metadata accessor for TextLayout();
        OUTLINED_FUNCTION_20_2();
        if (swift_dynamicCastClass())
        {

          OUTLINED_FUNCTION_18();
          sub_1E3F23370();

          v7 = OUTLINED_FUNCTION_114_0();
          v8(v7);
          v9 = OUTLINED_FUNCTION_22_1();
          __swift_storeEnumTagSinglePayload(v9, v10, v11, v1);
          OUTLINED_FUNCTION_25_2();
          return;
        }
      }

      goto LABEL_12;
    }
  }

LABEL_13:
  OUTLINED_FUNCTION_48_3();
  OUTLINED_FUNCTION_25_2();

  __swift_storeEnumTagSinglePayload(v12, v13, v14, v15);
}

void sub_1E37A3384(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_93();
  a21 = v24;
  a22 = v25;
  v27 = v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29CB0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_17_3(v30);
  sub_1E42037D4();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_74_1();
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29CC0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_21_3();
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29CC8);
  OUTLINED_FUNCTION_0_10();
  v80 = v34;
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_2_5();
  v79 = v36;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_25_3();
  OUTLINED_FUNCTION_17_3(v38);
  OUTLINED_FUNCTION_36();
  if ((*(v39 + 392))())
  {
    type metadata accessor for MediaShowcasingMetadataLayout();
    v40 = swift_dynamicCastClass();
    if (v40)
    {
      v78 = v40;
      if (sub_1E3926038())
      {
        OUTLINED_FUNCTION_26_0();
        v42 = (*(v41 + 392))();

        if (v42)
        {
          type metadata accessor for ImageLayout();
          v43 = swift_dynamicCastClass();
          if (v43)
          {
            v44 = v43;
            v75 = v27;
            v45 = sub_1E39258D4();
            if (!v45)
            {
              v45 = *sub_1E418A748();
            }

            v46 = v45;
            (*(*v44 + 2288))();
            v77 = v46;
            sub_1E381AC64();
            OUTLINED_FUNCTION_111_0();
            v47(v22);
            OUTLINED_FUNCTION_5_8();
            OUTLINED_FUNCTION_32_0();
            sub_1E4203824();
            OUTLINED_FUNCTION_122();

            v48 = OUTLINED_FUNCTION_114_0();
            v49(v48);
            v87[5] = v46;

            v50 = MEMORY[0x1E6981748];
            v51 = MEMORY[0x1E6981710];
            OUTLINED_FUNCTION_114_0();
            v52 = OUTLINED_FUNCTION_51_1();
            OUTLINED_FUNCTION_114_0();
            v53 = OUTLINED_FUNCTION_18();
            sub_1E3C8F60C(v44, v52 & 1, v53 & 1, v50, v51);

            sub_1E4203DA4();
            OUTLINED_FUNCTION_59();
            OUTLINED_FUNCTION_179_0();
            v54 = (v23 + *(v32 + 36));
            *v54 = v84;
            v54[1] = v85;
            v54[2] = v86;
            if (sub_1E3926038())
            {
              OUTLINED_FUNCTION_26_0();
              (*(v55 + 904))();
            }

            sub_1E37AC740();
            sub_1E3E03528();

            sub_1E325F69C(v23, &qword_1ECF29CC0);
            if (sub_1E3CCE24C(*(v78 + 120)) && [objc_opt_self() isMac])
            {
              OUTLINED_FUNCTION_8();
              (*(v61 + 152))(v87);
              sub_1E4203DA4();
              OUTLINED_FUNCTION_59();
              OUTLINED_FUNCTION_178_1();
              v76 = 0;
              v62 = 1;
            }

            else
            {
              OUTLINED_FUNCTION_113_2(&a12);
              v62 = 0;
              v76 = 1;
            }

            v63 = *(v80 + 16);
            v63(v79, v83, v81);
            v64 = OUTLINED_FUNCTION_87_2();
            (v63)(v64);
            v65 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29CD0) + 48);

            OUTLINED_FUNCTION_180();

            v66 = (v82 + v65);
            *v66 = 0;
            v66[1] = v62;
            OUTLINED_FUNCTION_174(v82 + v65);
            OUTLINED_FUNCTION_112_3(v67);
            *(v68 + 64) = v76;
            v69 = *(v80 + 8);
            v70 = OUTLINED_FUNCTION_157_0();
            v69(v70);
            v71 = OUTLINED_FUNCTION_168();
            v69(v71);
            sub_1E3741EA0(v82, v75, &qword_1ECF29CB0);
            v72 = OUTLINED_FUNCTION_22_1();
            __swift_storeEnumTagSinglePayload(v72, v73, v74, v28);
            OUTLINED_FUNCTION_54_0();
            return;
          }
        }
      }
    }
  }

  OUTLINED_FUNCTION_48_3();
  OUTLINED_FUNCTION_54_0();

  __swift_storeEnumTagSinglePayload(v56, v57, v58, v59);
}

void sub_1E37A3AB0()
{
  OUTLINED_FUNCTION_93();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29CD8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_8_4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29CE0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_44();
  v94 = v9;
  v10 = OUTLINED_FUNCTION_138();
  type metadata accessor for MediaTags(v10);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_5();
  v14 = v13 - v12;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29CE8);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_2_5();
  v93 = v17;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_25_3();
  v96 = v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29CF0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_44();
  v98 = v22;
  if ((*(*v4 + 392))())
  {
    v97 = v20;
    type metadata accessor for MediaShowcasingMetadataLayout();
    v23 = swift_dynamicCastClass();
    if (v23)
    {
      v24 = v23;
      v91 = v6;
      if ((*(*v4 + 552))())
      {
        *(&v103 + 1) = &unk_1F5D7BE68;
        *&v104 = &off_1F5D7BC48;
        LOBYTE(v102) = 6;
        sub_1E3F9F164(&v102);

        __swift_destroy_boxed_opaque_existential_1(&v102);
        if (*(&v100 + 1))
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770);
          if (swift_dynamicCast())
          {
            v25 = *(v102 + 16);

            if (v25)
            {
              if (sub_1E3CCE24C(*(v24 + 120)) && (OUTLINED_FUNCTION_183_0(), v26 > 0.0))
              {
                OUTLINED_FUNCTION_183_0();
                sub_1E4203DA4();
                OUTLINED_FUNCTION_59();
                OUTLINED_FUNCTION_52_1();
                OUTLINED_FUNCTION_161_1();
                v110 = 1;
                v109 = v27;
                v108 = v28;
                v111 = 0;
                OUTLINED_FUNCTION_103_2(v29);
                v101 = 0;
              }

              else
              {
                type metadata accessor for ViewRepresentableProperties();
                OUTLINED_FUNCTION_17_16();
                sub_1E37ADD34(v45);
                v46 = sub_1E4200BC4() + OBJC_IVAR____TtC8VideosUI27ViewRepresentableProperties_firstBaselineFromTop;
                OUTLINED_FUNCTION_25();
                swift_beginAccess();
                v47 = *v46;
                LOBYTE(v46) = *(v46 + 8);

                v48 = 0uLL;
                v49 = -1;
                if (v46)
                {
                  v50 = 0uLL;
                  v51 = 0uLL;
                  v52 = 0uLL;
LABEL_26:
                  v86 = v52;
                  v87 = v51;
                  v88 = v50;
                  v89 = v49;
                  v90 = v48;
                  type metadata accessor for ViewRepresentableProperties();
                  OUTLINED_FUNCTION_17_16();
                  sub_1E37ADD34(v56);

                  v57 = v2;
                  sub_1E4200BC4();
                  v58 = OUTLINED_FUNCTION_154_0();
                  sub_1E3820C20(v58, v59, 0, v60, 40, v61);
                  v62 = [v57 textLayout];
                  v84 = [v62 blendMode];

                  sub_1E37AD0DC(v84, *(v24 + 120));
                  sub_1E37ADD34(&unk_1EE23BD30);
                  LOBYTE(v102) = 0;
                  sub_1E37B93F0();
                  sub_1E37ADE2C(v14, type metadata accessor for MediaTags);
                  v63 = v4[3];
                  v64 = (v96 + *(v15 + 52));
                  *v64 = v4[2];
                  v64[1] = v63;
                  v65 = *(v24 + 120);

                  if ((sub_1E3CCE22C(v65) & 1) != 0 && (OUTLINED_FUNCTION_183_0(), v66 > 0.0))
                  {
                    OUTLINED_FUNCTION_183_0();
                    sub_1E4203DA4();
                    OUTLINED_FUNCTION_59();
                    OUTLINED_FUNCTION_52_1();
                    v92 = 0;
                    v95 = v102;
                    v83 = v104;
                    v85 = v103;
                    v110 = 1;
                    v109 = BYTE8(v102);
                    v108 = BYTE8(v103);
                    v67 = 1;
                    v68 = BYTE8(v102);
                    v81 = BYTE8(v103);
                    v82 = *(&v104 + 1);
                    LOBYTE(v99) = 0;
                  }

                  else
                  {
                    v95 = 0;
                    v83 = 0;
                    v85 = 0;
                    v81 = 0;
                    v82 = 0;
                    v68 = 0;
                    v67 = 0;
                    v92 = 1;
                  }

                  sub_1E3743538(v96, v93, &qword_1ECF29CE8);
                  *v94 = v90;
                  *(v94 + 16) = v88;
                  *(v94 + 32) = v87;
                  *(v94 + 48) = v86;
                  *(v94 + 64) = v89;
                  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29D00);
                  sub_1E3743538(v93, v94 + *(v69 + 48), &qword_1ECF29CE8);
                  v70 = v94 + *(v69 + 64);
                  *v70 = 0;
                  *(v70 + 8) = v67;
                  *(v70 + 16) = v95;
                  *(v70 + 24) = v68;
                  *(v70 + 32) = v85;
                  *(v70 + 40) = v81;
                  *(v70 + 48) = v83;
                  *(v70 + 56) = v82;
                  *(v70 + 64) = v92;
                  sub_1E325F69C(v93, &qword_1ECF29CE8);
                  v71 = OUTLINED_FUNCTION_168();
                  sub_1E3743538(v71, v72, &qword_1ECF29CE0);
                  swift_storeEnumTagMultiPayload();
                  v4 = &qword_1ECF28D60;
                  v73 = OUTLINED_FUNCTION_120();
                  __swift_instantiateConcreteTypeFromMangledNameV2(v73);
                  OUTLINED_FUNCTION_6_1();
                  sub_1E37AE398(v74);
                  sub_1E37AD240(&qword_1EE2897B8);
                  OUTLINED_FUNCTION_140_4();
                  OUTLINED_FUNCTION_18_5();
                  sub_1E4201F44();

                  v75 = OUTLINED_FUNCTION_89_2();
                  sub_1E325F69C(v75, v76);
                  sub_1E325F69C(v96, &qword_1ECF29CE8);
                  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29CF8);
                  OUTLINED_FUNCTION_114();
                  __swift_storeEnumTagSinglePayload(v77, v78, v79, v80);
                  v41 = v97;
                  v6 = v91;
                  goto LABEL_20;
                }

                v50 = 0uLL;
                v51 = 0uLL;
                v52 = 0uLL;
                if (v47 <= 0.0)
                {
                  goto LABEL_26;
                }

                [v2 margin];
                sub_1E4203DA4();
                OUTLINED_FUNCTION_59();
                OUTLINED_FUNCTION_52_1();
                OUTLINED_FUNCTION_161_1();
                v109 = 1;
                v108 = v53;
                v107 = v54;
                v110 = 1;
                OUTLINED_FUNCTION_103_2(v55);
                v101 = 1;
              }

              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28D60);
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29D08);
              sub_1E37AD240(&qword_1EE2897B8);
              sub_1E37AD240(&qword_1EE289A20);
              sub_1E4201F44();
              v48 = v102;
              v50 = v103;
              v51 = v104;
              v52 = v105;
              v49 = v106;
              goto LABEL_26;
            }
          }

LABEL_16:
          if (sub_1E3CCE22C(*(v24 + 120)))
          {
            [v2 margin];
            sub_1E4203DA4();
            OUTLINED_FUNCTION_59();
            OUTLINED_FUNCTION_52_1();
            v35 = v102;
            LOBYTE(v99) = 1;
            v112 = BYTE8(v102);
            v111 = BYTE8(v103);
            *v0 = 0;
            *(v0 + 8) = 1;
            OUTLINED_FUNCTION_163_0(v35);
            *(v0 + 48) = v104;
            swift_storeEnumTagMultiPayload();
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28D60);
            OUTLINED_FUNCTION_6_1();
            sub_1E37AE398(v36);
            OUTLINED_FUNCTION_82();
            sub_1E37AD240(v37);
            OUTLINED_FUNCTION_140_4();
            sub_1E4201F44();

            v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29CF8);
            v39 = v4;
            v40 = 0;
          }

          else
          {

            v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29CF8);
            v4 = v98;
            v39 = v98;
            v40 = 1;
          }

          __swift_storeEnumTagSinglePayload(v39, v40, 1, v38);
          v41 = v97;
LABEL_20:
          sub_1E3741EA0(v4, v6, &qword_1ECF29CF0);
          OUTLINED_FUNCTION_114();
          __swift_storeEnumTagSinglePayload(v42, v43, v44, v41);
          OUTLINED_FUNCTION_54_0();
          return;
        }
      }

      else
      {
        v99 = 0u;
        v100 = 0u;
      }

      sub_1E325F69C(&v99, &unk_1ECF296E0);
      goto LABEL_16;
    }
  }

  OUTLINED_FUNCTION_32_2();
  OUTLINED_FUNCTION_54_0();

  __swift_storeEnumTagSinglePayload(v30, v31, v32, v33);
}

void sub_1E37A4508()
{
  OUTLINED_FUNCTION_31_1();
  OUTLINED_FUNCTION_91_1(v3, v4);
  OUTLINED_FUNCTION_82_3();
  v27[6] = v5;
  MEMORY[0x1EEE9AC00](v6);
  v27[2] = OUTLINED_FUNCTION_43_8(v27);
  OUTLINED_FUNCTION_0_10();
  v8 = v7;
  v27[0] = v7;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_74_1();
  v27[4] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29D10);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_14_5();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29D18);
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_2_5();
  v27[7] = v12;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_34_1();
  v14 = sub_1E379EF14();
  OUTLINED_FUNCTION_129_0(v14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29D20);
  OUTLINED_FUNCTION_100_0();
  OUTLINED_FUNCTION_175_0();
  sub_1E37A4820();
  v15 = OUTLINED_FUNCTION_51_6();
  v16(v15);
  OUTLINED_FUNCTION_1_58();
  OUTLINED_FUNCTION_148_0();
  OUTLINED_FUNCTION_16_14();
  swift_allocObject();
  OUTLINED_FUNCTION_0_25();
  sub_1E37ADCDC(v8, v17);
  OUTLINED_FUNCTION_1();
  sub_1E37AE398(v18);
  OUTLINED_FUNCTION_135();
  v19 = OUTLINED_FUNCTION_51_1();
  OUTLINED_FUNCTION_39_8(v19);

  v20 = OUTLINED_FUNCTION_85_2();
  v21(v20);
  sub_1E325F69C(v2, &qword_1ECF29D10);
  OUTLINED_FUNCTION_25_17((v27[1] + *(v1 + 48)));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF294E0);
  OUTLINED_FUNCTION_147_0();
  v22 = OUTLINED_FUNCTION_26_15();
  (v1)(v22);
  v23 = OUTLINED_FUNCTION_84_3();
  (v1)(v23);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29D30);
  v25 = OUTLINED_FUNCTION_24_7(v24);
  v0(v25);
  v26 = OUTLINED_FUNCTION_157_0();
  v0(v26);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E37A4820()
{
  OUTLINED_FUNCTION_31_1();
  v3 = v2;
  v5 = v4;
  v81 = v6;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29D38);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_44();
  v77 = v8;
  OUTLINED_FUNCTION_138();
  v9 = sub_1E4201B04();
  OUTLINED_FUNCTION_0_10();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_25_3();
  v15 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29D40);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_44();
  v18 = v17;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29D48);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_2_5();
  v76 = v20;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_25_3();
  v23 = v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29D50);
  v25 = OUTLINED_FUNCTION_17_2(v24);
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_2_5();
  v75 = v26;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_25_3();
  v78 = v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29C90);
  v30 = OUTLINED_FUNCTION_17_2(v29);
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_2_5();
  v74 = v31;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_34_1();
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29D58);
  v34 = OUTLINED_FUNCTION_17_2(v33);
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_2_5();
  v79 = v35;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_23_8();
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29D60);
  v38 = OUTLINED_FUNCTION_17_2(v37);
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_25_3();
  sub_1E37A4FA4(v5, v3);
  if (sub_1E3925B38())
  {
    v40 = 1;
  }

  else
  {
    v72 = v0;
    sub_1E37A3AB0();
    if ([objc_opt_self() isPhone])
    {
      v41 = 1;
      v42 = v73;
      v43 = v78;
    }

    else
    {
      sub_1E37A51D4(v5, 15);
      sub_1E37AD314();
      OUTLINED_FUNCTION_150_0();
      sub_1E325F69C(v18, &qword_1ECF29D40);
      sub_1E4201AF4();
      v44 = OUTLINED_FUNCTION_120();
      v45(v44);
      OUTLINED_FUNCTION_10_24();
      sub_1E37ADD34(v46);
      OUTLINED_FUNCTION_47_4();
      v47 = sub_1E4200E14();
      (*(v11 + 8))(v15, v9);
      v42 = v73;
      *(v23 + *(v73 + 36)) = v47;
      v43 = v78;
      sub_1E3741EA0(v23, v78, &qword_1ECF29D48);
      v41 = 0;
    }

    __swift_storeEnumTagSinglePayload(v43, v41, 1, v42);
    sub_1E37A51D4(v5, 16);
    sub_1E37AD314();
    OUTLINED_FUNCTION_150_0();
    sub_1E325F69C(v18, &qword_1ECF29D40);
    sub_1E4201AF4();
    v48 = OUTLINED_FUNCTION_120();
    v49(v48);
    OUTLINED_FUNCTION_10_24();
    sub_1E37ADD34(v50);
    OUTLINED_FUNCTION_47_4();
    v51 = sub_1E4200E14();
    (*(v11 + 8))(v15, v9);
    *(v23 + *(v42 + 36)) = v51;
    sub_1E3743538(v1, v74, &qword_1ECF29C90);
    sub_1E3743538(v78, v75, &qword_1ECF29D50);
    sub_1E3743538(v23, v76, &qword_1ECF29D48);
    sub_1E3743538(v74, v77, &qword_1ECF29C90);
    v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29D88);
    sub_1E3743538(v75, v77 + *(v52 + 48), &qword_1ECF29D50);
    sub_1E3743538(v76, v77 + *(v52 + 64), &qword_1ECF29D48);
    v53 = OUTLINED_FUNCTION_169_0();
    sub_1E325F69C(v53, v54);
    sub_1E325F69C(v78, &qword_1ECF29D50);
    sub_1E325F69C(v1, &qword_1ECF29C90);
    v55 = OUTLINED_FUNCTION_115();
    sub_1E325F69C(v55, v56);
    sub_1E325F69C(v75, &qword_1ECF29D50);
    OUTLINED_FUNCTION_55_0();
    sub_1E325F69C(v57, v58);
    v0 = v72;
    sub_1E3741EA0(v77, v72, &qword_1ECF29D38);
    v40 = 0;
  }

  __swift_storeEnumTagSinglePayload(v0, v40, 1, v80);
  OUTLINED_FUNCTION_19_1();
  sub_1E3743538(v59, v60, v61);
  sub_1E3743538(v0, v79, &qword_1ECF29D58);
  OUTLINED_FUNCTION_19_1();
  sub_1E3743538(v62, v63, v64);
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29D90);
  sub_1E3743538(v79, v81 + *(v65 + 48), &qword_1ECF29D58);
  v66 = OUTLINED_FUNCTION_89_2();
  sub_1E325F69C(v66, v67);
  OUTLINED_FUNCTION_21_1();
  sub_1E325F69C(v68, v69);
  sub_1E325F69C(v79, &qword_1ECF29D58);
  OUTLINED_FUNCTION_21_1();
  sub_1E325F69C(v70, v71);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E37A51D4(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_26_0();
  v5 = (*(v4 + 488))();
  if (v5)
  {
    v12 = sub_1E373E010(a2, v5);

    if (v12)
    {
      if (*v12 == _TtC8VideosUI13TextViewModel && sub_1E3C27528())
      {
        type metadata accessor for TextLayout();
        v13 = swift_dynamicCastClass();
        if (v13)
        {
          v14 = v13;
          type metadata accessor for PlaybackMediaShowcasingMetadataView();
          OUTLINED_FUNCTION_64_5();
          LOBYTE(v20) = v15;
          v21 = v16;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF294E0);
          sub_1E42038F4();
          if (HIBYTE(v19))
          {
            v17 = 1;
          }

          else
          {
            v17 = 5;
          }

          (*(*v14 + 1984))(v17);
        }
      }
    }
  }

  sub_1E37A5384(a1, a2, v6, v7, v8, v9, v10, v11, v18, v19, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29, vars0, vars8);
}

void sub_1E37A5384(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_93();
  a21 = v23;
  a22 = v24;
  v26 = v25;
  v28 = v27;
  v141 = v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29D78);
  OUTLINED_FUNCTION_6_4(v30, &a13);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_17_3(v32);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29D98);
  v34 = OUTLINED_FUNCTION_6_4(v33, &v150);
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_25_3();
  OUTLINED_FUNCTION_17_3(v36);
  v37 = sub_1E42012F4();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_5();
  v41 = v40 - v39;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29DA0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v42);
  OUTLINED_FUNCTION_50_1();
  type metadata accessor for ScaledBaselineRelativeSpacer();
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v43);
  OUTLINED_FUNCTION_5();
  v46 = v45 - v44;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29DA8);
  OUTLINED_FUNCTION_6_4(v47, &v149);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v48);
  OUTLINED_FUNCTION_31_2();
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29DB0);
  OUTLINED_FUNCTION_6_4(v49, v148);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v50);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_17_3(v51);
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29DB8);
  v53 = OUTLINED_FUNCTION_17_2(v52);
  MEMORY[0x1EEE9AC00](v53);
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v54);
  OUTLINED_FUNCTION_25_3();
  OUTLINED_FUNCTION_17_3(v55);
  v56 = (*(*v28 + 488))();
  if (v56)
  {
    v57 = sub_1E373E010(v26, v56);

    if (v57)
    {
      if (*v57 == _TtC8VideosUI13TextViewModel && sub_1E3C27528())
      {
        OUTLINED_FUNCTION_106();
        type metadata accessor for TextLayout();
        OUTLINED_FUNCTION_20_2();
        v58 = swift_dynamicCastClass();
        if (v58)
        {
          v135 = v58;
          if ((*(*v28 + 392))())
          {
            type metadata accessor for MediaShowcasingMetadataLayout();
            OUTLINED_FUNCTION_20_2();
            v59 = swift_dynamicCastClass();
            OUTLINED_FUNCTION_176();
            if (v59)
            {
              if (sub_1E3CCE24C(*(v59 + 120)))
              {
                OUTLINED_FUNCTION_8();
                (*(v60 + 152))(&v142);
                if (![objc_opt_self() isTV])
                {
                  OUTLINED_FUNCTION_38_7();
                  OUTLINED_FUNCTION_79_4();
LABEL_36:
                  sub_1E4203DA4();
                  OUTLINED_FUNCTION_59();
                  OUTLINED_FUNCTION_178_1();
                  v82 = *&v142;
                  LOBYTE(v147[0]) = 1;
                  LOBYTE(v145) = v143;
                  *v138 = 0;
                  *(v138 + 8) = 1;
                  OUTLINED_FUNCTION_163_0(v82);
                  *(v138 + 48) = v144;
                  swift_storeEnumTagMultiPayload();
                  v83 = OUTLINED_FUNCTION_32_0();
                  __swift_instantiateConcreteTypeFromMangledNameV2(v83);
                  OUTLINED_FUNCTION_21_1();
                  sub_1E37AD240(v84);
                  OUTLINED_FUNCTION_63_5();
                  sub_1E37A684C(v85);
                  sub_1E4201F44();
                  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29DC0);
                  OUTLINED_FUNCTION_114();
                  __swift_storeEnumTagSinglePayload(v86, v87, v88, v89);
                  goto LABEL_43;
                }

                (*(*v28 + 552))();
                OUTLINED_FUNCTION_38_7();
                OUTLINED_FUNCTION_79_4();
                if (v61)
                {
                  v148[1] = &unk_1F5D7BE68;
                  v149 = &off_1F5D7BC48;
                  LOBYTE(v147[0]) = 6;
                  sub_1E3F9F164(v147);

                  __swift_destroy_boxed_opaque_existential_1(v147);
                  if (*(&v146 + 1))
                  {
                    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770);
                    if (swift_dynamicCast())
                    {
                      v62 = *(v147[0] + 16);

                      if (v62)
                      {
                        goto LABEL_36;
                      }
                    }

                    goto LABEL_35;
                  }
                }

                else
                {
                  v145 = 0u;
                  v146 = 0u;
                }

                sub_1E325F69C(&v145, &unk_1ECF296E0);
LABEL_35:
                OUTLINED_FUNCTION_8();
                (*(v81 + 1592))(23);
                goto LABEL_36;
              }

              if (!sub_1E3C27528() || (OUTLINED_FUNCTION_26_0(), (*(v68 + 152))(&v142), , (v144 & 1) != 0) || (v69 = v142, v142 <= 0.0))
              {
                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29DC0);
                OUTLINED_FUNCTION_32_2();
                __swift_storeEnumTagSinglePayload(v77, v78, v79, v80);
                OUTLINED_FUNCTION_38_7();
LABEL_42:
                OUTLINED_FUNCTION_79_4();
LABEL_43:
                OUTLINED_FUNCTION_18();
                sub_1E3F23370();
                *(v37 + *(v59 + 36)) = 256;
                if (v22())
                {
                  v105 = swift_dynamicCastClass();
                  if (v105 && (sub_1E3CCE22C(*(v105 + 120)) & 1) != 0)
                  {
                    OUTLINED_FUNCTION_8();
                    (*(v106 + 152))(&v145);
                    sub_1E4203DA4();
                    OUTLINED_FUNCTION_59();
                    sub_1E4200D94();

                    v137 = 0;
                    v136 = 1;
LABEL_49:
                    OUTLINED_FUNCTION_19_1();
                    sub_1E3743538(v107, v108, v109);
                    OUTLINED_FUNCTION_96_2();
                    sub_1E3743538(v110, v111, v112);
                    OUTLINED_FUNCTION_19_1();
                    sub_1E3743538(v113, v114, v115);
                    v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29DC8);
                    OUTLINED_FUNCTION_96_2();
                    sub_1E3743538(v117, v118, v119);
                    v120 = *(v116 + 64);
                    OUTLINED_FUNCTION_176();

                    v121 = (v139 + v120);
                    *v121 = 0;
                    v121[1] = v136;
                    OUTLINED_FUNCTION_174(v139 + v120);
                    OUTLINED_FUNCTION_112_3(v122);
                    *(v123 + 64) = v137;
                    OUTLINED_FUNCTION_55_0();
                    sub_1E325F69C(v124, v125);
                    OUTLINED_FUNCTION_21_1();
                    sub_1E325F69C(v126, v127);
                    OUTLINED_FUNCTION_55_0();
                    sub_1E325F69C(v128, v129);
                    OUTLINED_FUNCTION_21_1();
                    sub_1E325F69C(v130, v131);
                    sub_1E3741EA0(v139, v141, &qword_1ECF29D78);
                    v132 = OUTLINED_FUNCTION_22_1();
                    __swift_storeEnumTagSinglePayload(v132, v133, v134, v140);
                    OUTLINED_FUNCTION_54_0();
                    return;
                  }
                }

                OUTLINED_FUNCTION_113_2(&a9);
                v136 = 0;
                v137 = 1;
                goto LABEL_49;
              }

              type metadata accessor for ViewRepresentableProperties();
              OUTLINED_FUNCTION_17_16();
              sub_1E37ADD34(v70);
              v71 = sub_1E4200BC4() + OBJC_IVAR____TtC8VideosUI27ViewRepresentableProperties_bottomBaseline;
              OUTLINED_FUNCTION_25();
              swift_beginAccess();
              v72 = *v71;
              LOBYTE(v71) = *(v71 + 8);

              if (v71 & 1) != 0 || (sub_1E3CCE22C(*(v59 + 120)))
              {
                type metadata accessor for PlaybackMediaShowcasingMetadataView();
                sub_1E3746E10(v41);
                v73 = sub_1E3B02A04();
                OUTLINED_FUNCTION_15_5();
                v74(v41, v37);
                if (v73)
                {
                  sub_1E3CCE22C(*(v59 + 120));
                  v75 = 1;
                  OUTLINED_FUNCTION_118_1();
                  if (v76)
                  {
                    goto LABEL_41;
                  }

                  goto LABEL_40;
                }
              }

              else
              {
                v69 = v69 - v72;
              }

              OUTLINED_FUNCTION_118_1();
LABEL_40:
              OUTLINED_FUNCTION_176();

              sub_1E40E4DF0(v135, v46, v69);
              v90 = OUTLINED_FUNCTION_13_8();
              sub_1E37AD3C4(v90, v91);
              OUTLINED_FUNCTION_114_0();
              swift_storeEnumTagMultiPayload();
              sub_1E37ADD34(&unk_1EE249C10);
              OUTLINED_FUNCTION_142_0();
              sub_1E4201F44();
              sub_1E37ADE2C(v46, type metadata accessor for ScaledBaselineRelativeSpacer);
              v75 = 0;
LABEL_41:
              v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29DD0);
              __swift_storeEnumTagSinglePayload(v22, v75, 1, v92);
              OUTLINED_FUNCTION_19_1();
              sub_1E3743538(v93, v94, v95);
              OUTLINED_FUNCTION_98();
              swift_storeEnumTagMultiPayload();
              v96 = OUTLINED_FUNCTION_34();
              __swift_instantiateConcreteTypeFromMangledNameV2(v96);
              OUTLINED_FUNCTION_55_0();
              sub_1E37AD240(v97);
              OUTLINED_FUNCTION_63_5();
              OUTLINED_FUNCTION_21_1();
              sub_1E37A684C(v98);
              OUTLINED_FUNCTION_98();
              sub_1E4201F44();
              OUTLINED_FUNCTION_21_1();
              sub_1E325F69C(v99, v100);
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29DC0);
              OUTLINED_FUNCTION_114();
              __swift_storeEnumTagSinglePayload(v101, v102, v103, v104);
              goto LABEL_42;
            }
          }

          else
          {
            OUTLINED_FUNCTION_176();
          }
        }
      }
    }
  }

  OUTLINED_FUNCTION_32_2();
  OUTLINED_FUNCTION_54_0();

  __swift_storeEnumTagSinglePayload(v63, v64, v65, v66);
}

uint64_t sub_1E37A6428(double a1)
{
  v2 = type metadata accessor for PlaybackMediaShowcasingMetadataView();
  OUTLINED_FUNCTION_17_2(v2);
  OUTLINED_FUNCTION_135_0();
  return sub_1E37A1214(a1);
}

void sub_1E37A64D8()
{
  sub_1E37A6684();
  if (v1 <= 0x3F)
  {
    OUTLINED_FUNCTION_23_15(v0, &qword_1EE288680, MEMORY[0x1E69E7DE0]);
    if (v3 <= 0x3F)
    {
      OUTLINED_FUNCTION_23_15(v2, &qword_1EE288690, &unk_1F5D6AC00);
      if (v4 <= 0x3F)
      {
        sub_1E37A6718();
        if (v5 <= 0x3F)
        {
          sub_1E37A67AC(319, &qword_1EE289EC0, MEMORY[0x1E697DBD0]);
          if (v6 <= 0x3F)
          {
            sub_1E37A67AC(319, &qword_1EE289EB0, MEMORY[0x1E697E730]);
            if (v8 <= 0x3F)
            {
              OUTLINED_FUNCTION_23_15(v7, &qword_1EE288668, MEMORY[0x1E69E6370]);
              if (v9 <= 0x3F)
              {
                type metadata accessor for TextBadgePresenter();
                if (v10 <= 0x3F)
                {
                  sub_1E37A67FC(319, qword_1EE27C0E8, &type metadata for ButtonViewContext, MEMORY[0x1E69E6720]);
                  if (v11 <= 0x3F)
                  {
                    swift_cvw_initStructMetadataWithLayoutString();
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

void sub_1E37A6684()
{
  if (!qword_1EE289D08)
  {
    type metadata accessor for MediaShowcasingMetadataPresenter(255);
    sub_1E37ADD34(&unk_1EE241948);
    v0 = sub_1E42010F4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE289D08);
    }
  }
}

void sub_1E37A6718()
{
  if (!qword_1EE289E28)
  {
    type metadata accessor for ViewRepresentableProperties();
    sub_1E37ADD34(&qword_1EE24D450);
    v0 = sub_1E4200BE4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE289E28);
    }
  }
}

void sub_1E37A67AC(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    OUTLINED_FUNCTION_20_2();
    v4 = sub_1E4200B94();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1E37A67FC(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

unint64_t sub_1E37A684C(uint64_t a1)
{
  result = OUTLINED_FUNCTION_48_0(a1);
  if (!result)
  {
    v5 = v4;
    v6 = OUTLINED_FUNCTION_40_2(0, v3);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v6);
    v5();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_1E37A68C0()
{
  result = qword_1ECF29C10;
  if (!qword_1ECF29C10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF29A98);
    sub_1E37A071C();
    sub_1E37A10D4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF29C10);
  }

  return result;
}

void sub_1E37A694C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_9_4();
  a23 = v26;
  a24 = v27;
  v29 = v28;
  v31 = v30;
  v109 = v32;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29F80);
  v34 = OUTLINED_FUNCTION_17_2(v33);
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_2_5();
  v110 = v35;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_25_3();
  OUTLINED_FUNCTION_152_0(v37);
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29C90);
  v39 = OUTLINED_FUNCTION_17_2(v38);
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_2_5();
  v107 = v40;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v41);
  OUTLINED_FUNCTION_25_3();
  v108 = v42;
  OUTLINED_FUNCTION_138();
  sub_1E4201B04();
  OUTLINED_FUNCTION_0_10();
  v102 = v44;
  v103 = v43;
  MEMORY[0x1EEE9AC00](v43);
  OUTLINED_FUNCTION_2_5();
  v101 = v45;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v46);
  OUTLINED_FUNCTION_78();
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29D40);
  OUTLINED_FUNCTION_6_4(v47, &a22);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v48);
  OUTLINED_FUNCTION_50_1();
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29F88);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v49);
  OUTLINED_FUNCTION_2_5();
  v105 = v50;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v51);
  OUTLINED_FUNCTION_25_3();
  v111 = v52;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29F90);
  OUTLINED_FUNCTION_17_2(v53);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v54);
  OUTLINED_FUNCTION_31_2();
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29F98);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v56);
  OUTLINED_FUNCTION_2_5();
  v104 = v57;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v58);
  v60 = &v99 - v59;
  MEMORY[0x1EEE9AC00](v61);
  OUTLINED_FUNCTION_25_3();
  v63 = v62;
  sub_1E37A6FC4(v31, v29);
  OUTLINED_FUNCTION_8();
  (*(v64 + 152))(v112);
  if (v113)
  {
    OUTLINED_FUNCTION_5_8();
  }

  else
  {
    v67.n128_u64[0] = v112[2];
    v68.n128_u64[0] = v112[3];
    v65.n128_u64[0] = v112[0];
    v66.n128_u64[0] = v112[1];
    j_nullsub_1(v65, v66, v67, v68);
  }

  OUTLINED_FUNCTION_3();
  v69 = sub_1E4202734();
  v70 = OUTLINED_FUNCTION_123_1();
  sub_1E3741EA0(v70, v71, v72);
  v73 = &v60[*(v55 + 36)];
  *v73 = v69;
  OUTLINED_FUNCTION_11_4(v73);
  v74 = v63;
  v99 = v63;
  sub_1E3741EA0(v60, v63, &qword_1ECF29F98);
  sub_1E37A51D4(v31, 15);
  sub_1E37AD314();
  v75 = v111;
  OUTLINED_FUNCTION_156_2();
  sub_1E38838AC(v76, v77, v78, v79, v80);
  sub_1E325F69C(v24, &qword_1ECF29D40);
  sub_1E4201AF4();
  v81 = v102;
  v82 = v103;
  (*(v102 + 16))(v101, v25, v103);
  OUTLINED_FUNCTION_10_24();
  sub_1E37ADD34(v83);
  v84 = sub_1E4200E14();
  (*(v81 + 8))(v25, v82);
  *(v75 + *(v100 + 36)) = v84;
  v85 = v108;
  sub_1E37A3AB0();
  v86 = v106;
  sub_1E37A71F0();
  v87 = v104;
  sub_1E3743538(v74, v104, &qword_1ECF29F98);
  v88 = v105;
  sub_1E3743538(v75, v105, &qword_1ECF29F88);
  v89 = v107;
  sub_1E3743538(v85, v107, &qword_1ECF29C90);
  v90 = v110;
  sub_1E3743538(v86, v110, &qword_1ECF29F80);
  v91 = v86;
  v92 = v89;
  v93 = v109;
  sub_1E3743538(v87, v109, &qword_1ECF29F98);
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29FA0);
  sub_1E3743538(v88, v93 + v94[12], &qword_1ECF29F88);
  sub_1E3743538(v92, v93 + v94[16], &qword_1ECF29C90);
  sub_1E3743538(v90, v93 + v94[20], &qword_1ECF29F80);
  sub_1E325F69C(v91, &qword_1ECF29F80);
  sub_1E325F69C(v85, &qword_1ECF29C90);
  sub_1E325F69C(v111, &qword_1ECF29F88);
  sub_1E325F69C(v99, &qword_1ECF29F98);
  sub_1E325F69C(v90, &qword_1ECF29F80);
  sub_1E325F69C(v92, &qword_1ECF29C90);
  v95 = OUTLINED_FUNCTION_74();
  sub_1E325F69C(v95, v96);
  v97 = OUTLINED_FUNCTION_139_0();
  sub_1E325F69C(v97, v98);
  OUTLINED_FUNCTION_10_3();
}

void sub_1E37A71F0()
{
  OUTLINED_FUNCTION_93();
  v70 = v0;
  v76 = v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29FA8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_44();
  v74 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28CB8);
  OUTLINED_FUNCTION_0_10();
  v72 = v6;
  v73 = v5;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_2_5();
  v71 = v7;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_25_3();
  v75 = v9;
  OUTLINED_FUNCTION_138();
  v10 = type metadata accessor for ScaledBaselineRelativeSpacer();
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_5();
  v14 = v13 - v12;
  sub_1E42012F4();
  OUTLINED_FUNCTION_0_10();
  v69 = v15;
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_5();
  v19 = v18 - v17;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29FB0);
  v21 = OUTLINED_FUNCTION_17_2(v20);
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_4_6();
  v24 = v22 - v23;
  MEMORY[0x1EEE9AC00](v25);
  v27 = v65 - v26;
  OUTLINED_FUNCTION_36();
  v29 = (*(v28 + 488))();
  if (v29)
  {
    v30 = sub_1E373E010(14, v29);

    if (v30)
    {
      if (*v30 == _TtC8VideosUI13TextViewModel)
      {
        OUTLINED_FUNCTION_8();
        v32 = (*(v31 + 392))();
        if (v32)
        {
          v33 = v32;
          type metadata accessor for MediaShowcasingMetadataLayout();
          v34 = swift_dynamicCastClass();
          if (v34)
          {
            v68 = v34;
            if (sub_1E3C27528())
            {
              OUTLINED_FUNCTION_106();
              type metadata accessor for TextLayout();
              OUTLINED_FUNCTION_20_2();
              if (swift_dynamicCastClass())
              {
                v65[2] = v33;
                OUTLINED_FUNCTION_26_0();
                v36 = *(v35 + 152);
                v66 = v37;
                v67 = v36;
                v65[1] = v35 + 152;

                (v67)(&v77, v38);
                v67 = v30;

                if (v78)
                {
                  v39 = 0.0;
                }

                else
                {
                  v39 = v77;
                }

                type metadata accessor for PlaybackMediaShowcasingMetadataView();
                sub_1E3746E10(v19);
                v40 = sub_1E3B02A04();
                v41 = OUTLINED_FUNCTION_124();
                v42(v41);
                if (v40 & 1) != 0 && (sub_1E3CCE22C(*(v68 + 120)))
                {
                  v43 = 1;
                }

                else
                {

                  sub_1E40E4DF0(v66, v14, v39);
                  sub_1E37ADCDC(v14, v27);
                  v43 = 0;
                }

                __swift_storeEnumTagSinglePayload(v27, v43, 1, v10);
                OUTLINED_FUNCTION_18();
                v44 = v75;
                sub_1E3F23370();
                v45 = OUTLINED_FUNCTION_159();
                sub_1E3743538(v45, v46, v47);
                v49 = v71;
                v48 = v72;
                v50 = *(v72 + 16);
                v51 = v73;
                v50(v71, v44, v73);
                v52 = v74;
                sub_1E3743538(v24, v74, &qword_1ECF29FB0);
                v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29FB8);
                v50(v52 + *(v53 + 48), v49, v51);

                v54 = *(v48 + 8);
                v54(v75, v51);
                sub_1E325F69C(v27, &qword_1ECF29FB0);
                v54(v49, v51);
                v55 = OUTLINED_FUNCTION_98();
                sub_1E325F69C(v55, v56);
                sub_1E3741EA0(v52, v76, &qword_1ECF29FA8);
                v57 = OUTLINED_FUNCTION_22_1();
                __swift_storeEnumTagSinglePayload(v57, v58, v59, v2);
                OUTLINED_FUNCTION_54_0();
                return;
              }
            }
          }
        }
      }
    }
  }

  OUTLINED_FUNCTION_48_3();
  OUTLINED_FUNCTION_54_0();

  __swift_storeEnumTagSinglePayload(v60, v61, v62, v63);
}

void sub_1E37A77A8()
{
  OUTLINED_FUNCTION_31_1();
  v60 = v2;
  v61 = v3;
  v52 = v4;
  v6 = v5;
  type metadata accessor for PlaybackMediaShowcasingMetadataView();
  OUTLINED_FUNCTION_162_1();
  v54 = v7;
  MEMORY[0x1EEE9AC00](v8);
  v53 = v9;
  OUTLINED_FUNCTION_43_8(&v51);
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_5();
  v13 = v12 - v11;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29F18);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_14_5();
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29F20);
  OUTLINED_FUNCTION_0_10();
  v16 = v15;
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_2_5();
  v59 = v18;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_25_3();
  v55 = v20;
  v21 = v6 + *(v0 + 48);
  v23 = *(v21 + 8);
  v63 = *v21;
  v22 = v63;
  v64 = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF294E0);
  OUTLINED_FUNCTION_147_0();
  HIDWORD(v51) = v62;
  v63 = v22;
  v64 = v23;
  sub_1E42038F4();
  if (v62 == 1)
  {
    v24 = sub_1E4201D44();
  }

  else
  {
    v24 = sub_1E4201D54();
  }

  v25 = v24;
  v26 = [objc_opt_self() isTV];
  v27 = 0x4018000000000000;
  if (!v26)
  {
    v27 = 0;
  }

  *v1 = v25;
  *(v1 + 8) = v27;
  *(v1 + 16) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29F28);
  OUTLINED_FUNCTION_100_0();
  sub_1E37A7C00(v6, v52);
  OUTLINED_FUNCTION_111_0();
  v28(v13);
  OUTLINED_FUNCTION_1_58();
  v29 = v56;
  sub_1E37AD3C4(v6, v56);
  OUTLINED_FUNCTION_16_14();
  v30 = (v53 + v25 + 7) & 0xFFFFFFFFFFFFFFF8;
  v31 = swift_allocObject();
  OUTLINED_FUNCTION_0_25();
  sub_1E37ADCDC(v29, v32);
  *(v31 + v30) = v60;
  OUTLINED_FUNCTION_1();
  v34 = sub_1E37AE398(v33);

  v35 = v57;
  OUTLINED_FUNCTION_138_0();
  v36 = OUTLINED_FUNCTION_51_1();
  v37 = v55;
  sub_1E3D951F8(v13, v36 & 1, sub_1E37AD6B8, v31, v35, v34);

  v38 = OUTLINED_FUNCTION_120();
  v39(v38);
  v40 = OUTLINED_FUNCTION_134_0();
  sub_1E325F69C(v40, v41);
  v42 = *(v16 + 16);
  v44 = v58;
  v43 = v59;
  v45 = OUTLINED_FUNCTION_168();
  v42(v45);
  v46 = v61;
  *v61 = 0;
  v47 = BYTE4(v51);
  *(v46 + 8) = BYTE4(v51);
  *(v46 + 9) = v47 ^ 1;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29F38);
  (v42)(v46 + *(v48 + 48), v43, v44);
  v49 = v46 + *(v48 + 64);
  *v49 = 0;
  v49[8] = 1;
  v50 = *(v16 + 8);
  v50(v37, v44);
  v50(v43, v44);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E37A7F88()
{
  OUTLINED_FUNCTION_9_4();
  v71[1] = v3;
  v5 = v4;
  v7 = v6;
  v83 = v8;
  v81 = type metadata accessor for PlaybackMediaShowcasingMetadataView();
  OUTLINED_FUNCTION_0_10();
  v76 = v9;
  MEMORY[0x1EEE9AC00](v10);
  v77 = v11;
  OUTLINED_FUNCTION_17_3(v71 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v80 = sub_1E4201274();
  OUTLINED_FUNCTION_0_10();
  v79 = v12;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_17_3(v15 - v14);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29FF8);
  OUTLINED_FUNCTION_17_2(v16);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_14_5();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A000);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_20_1();
  v71[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A008);
  OUTLINED_FUNCTION_0_10();
  v71[0] = v20;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_44();
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A010);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_19_2();
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A018);
  OUTLINED_FUNCTION_0_10();
  v73 = v24;
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_2_5();
  v75 = v26;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_25_3();
  OUTLINED_FUNCTION_17_3(v28);
  v29 = sub_1E4201D54();
  OUTLINED_FUNCTION_8();
  (*(v30 + 176))(v87);
  v31 = v87[2];
  v32 = v88 & 1;
  if (v88)
  {
    v31 = 0;
  }

  *v2 = v29;
  *(v2 + 8) = v31;
  *(v2 + 16) = v32;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A020);
  OUTLINED_FUNCTION_100_0();
  v82 = v5;
  sub_1E37A8648();
  v33 = v89;
  (*(*v7 + 152))(v89);
  if (v90)
  {
    v33 = MEMORY[0x1E69DDCE0];
    v35.n128_u64[0] = *(MEMORY[0x1E69DDCE0] + 8);
    v36.n128_u64[0] = *(MEMORY[0x1E69DDCE0] + 16);
    v37.n128_u64[0] = *(MEMORY[0x1E69DDCE0] + 24);
  }

  else
  {
    v35.n128_u64[0] = v89[1];
    v36.n128_u64[0] = v89[2];
    v37.n128_u64[0] = v89[3];
  }

  v34.n128_u64[0] = *v33;
  j_nullsub_1(v34, v35, v36, v37);
  OUTLINED_FUNCTION_3();
  v38 = sub_1E4202734();
  sub_1E3741EA0(v2, v1, &qword_1ECF29FF8);
  v39 = (v1 + *(v18 + 36));
  *v39 = v38;
  OUTLINED_FUNCTION_11_4(v39);
  sub_1E37AD914();
  OUTLINED_FUNCTION_156_2();
  sub_1E38838AC(v40, v41, v42, v43, v44);
  sub_1E325F69C(v1, &qword_1ECF2A000);
  sub_1E42036E4();
  swift_getKeyPath();
  v45 = v0 + *(v22 + 36);
  OUTLINED_FUNCTION_114_0();
  sub_1E37A979C();

  v46 = sub_1E4203DA4();
  v48 = v47;
  v49 = (v45 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A038) + 36));
  *v49 = v46;
  v49[1] = v48;
  v50 = OUTLINED_FUNCTION_169_0();
  v51(v50);
  v52 = v79;
  OUTLINED_FUNCTION_111_0();
  v53 = v78;
  v54 = v80;
  v55(v78);
  OUTLINED_FUNCTION_1_58();
  v56 = v72;
  sub_1E37AD3C4(v82, v72);
  OUTLINED_FUNCTION_16_14();
  v57 = swift_allocObject();
  OUTLINED_FUNCTION_0_25();
  sub_1E37ADCDC(v56, v58);
  v59 = sub_1E37ADBE8();
  v60 = OUTLINED_FUNCTION_51_1();
  v61 = v71[2];
  sub_1E3D951F8(v53, v60 & 1, sub_1E37ADB78, v57, v22, v59);

  (*(v52 + 8))(v53, v54);
  sub_1E325F69C(v0, &qword_1ECF2A010);
  OUTLINED_FUNCTION_64_5();
  v85 = v62;
  v86 = v63;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF294E0);
  sub_1E42038F4();
  LOBYTE(v57) = v84;
  LOBYTE(v59) = v84 ^ 1;
  v64 = v73;
  v65 = *(v73 + 16);
  (v65)(v75, v61, v74);
  v66 = v83;
  OUTLINED_FUNCTION_167_0();
  v65();
  v67 = v66 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A050) + 48);
  *v67 = 0;
  *(v67 + 8) = v59;
  *(v67 + 9) = v57;
  v68 = *(v64 + 8);
  v69 = OUTLINED_FUNCTION_160_1();
  v68(v69);
  v70 = OUTLINED_FUNCTION_146();
  v68(v70);
  OUTLINED_FUNCTION_10_3();
}

void sub_1E37A8648()
{
  OUTLINED_FUNCTION_93();
  v65 = v1;
  v3 = v2;
  v5 = v4;
  v72 = v6;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A080);
  OUTLINED_FUNCTION_0_10();
  v64 = v7;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_44();
  v63 = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A088);
  v11 = OUTLINED_FUNCTION_17_2(v10);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_2_5();
  v71 = v12;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_25_3();
  v69 = v14;
  OUTLINED_FUNCTION_138();
  sub_1E4201B04();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_4_6();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_78();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A090);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v61 - v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A098);
  OUTLINED_FUNCTION_0_10();
  v67 = v22;
  v68 = v21;
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_2_5();
  v66 = v23;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_77_0();
  *v20 = sub_1E4201B84();
  *(v20 + 1) = 0;
  v20[16] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A0A0);
  v62 = v5;
  v25 = v65;
  sub_1E37A8C80();
  sub_1E4201AF4();
  v26 = OUTLINED_FUNCTION_171_0();
  v27(v26);
  OUTLINED_FUNCTION_10_24();
  sub_1E37ADD34(v28);
  OUTLINED_FUNCTION_146();
  v29 = sub_1E4200E14();
  v30 = OUTLINED_FUNCTION_87_2();
  v31(v30);
  *&v20[*(v17 + 36)] = v29;
  sub_1E37ADE84();
  v32 = 1;
  sub_1E4202E74();
  v33 = sub_1E325F69C(v20, &qword_1ECF2A090);
  v34 = (*(*v3 + 488))(v33);
  if (!v34)
  {
    goto LABEL_5;
  }

  v35 = sub_1E373E010(59, v34);

  if (!v35)
  {
    v32 = 1;
LABEL_5:
    v47 = v69;
    v46 = v70;
    goto LABEL_6;
  }

  v36 = *(v25 + 208);
  v37 = type metadata accessor for PlaybackMediaShowcasingMetadataView();
  memcpy(v76, (v62 + *(v37 + 48)), 0x5AuLL);
  v78 = 0u;
  v79 = 0u;
  v77 = 1;
  v80 = 0;
  v74 = 0;
  memset(v73, 0, sizeof(v73));

  sub_1E3743538(v76, v75, &qword_1ECF299E0);
  v38 = sub_1E383C8A8();
  v39 = sub_1E383C8B0();
  v40 = sub_1E383C8FC(v35, v36, v76, v39, &v77, 0, 1, v73, v75, v38);
  (*(*v35 + 320))(v40);
  sub_1E37ADF68();
  v41 = v63;
  v42 = OUTLINED_FUNCTION_75();
  sub_1E40A7FF0(v42, v43, 0, v44, v45);

  sub_1E37ADFBC(v75);
  v47 = v69;
  v46 = v70;
  (*(v64 + 32))(v69, v41, v70);
  v32 = 0;
LABEL_6:
  __swift_storeEnumTagSinglePayload(v47, v32, 1, v46);
  v49 = v66;
  v48 = v67;
  v50 = *(v67 + 16);
  v51 = v0;
  v52 = v68;
  v50(v66, v51, v68);
  v53 = v71;
  sub_1E3743538(v47, v71, &qword_1ECF2A088);
  v54 = v72;
  v55 = OUTLINED_FUNCTION_139_0();
  (v50)(v55);
  v56 = v54 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A0C8) + 48);
  sub_1E3743538(v53, v56, &qword_1ECF2A088);
  sub_1E325F69C(v47, &qword_1ECF2A088);
  v57 = *(v48 + 8);
  v58 = OUTLINED_FUNCTION_170_0();
  v57(v58);
  v59 = OUTLINED_FUNCTION_168();
  sub_1E325F69C(v59, v60);
  (v57)(v49, v52);
  OUTLINED_FUNCTION_54_0();
}

void sub_1E37A8C80()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v1;
  v40 = v3;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A0D0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_2_5();
  v41 = v5;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_25_3();
  v8 = v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A0D8);
  OUTLINED_FUNCTION_17_2(v9);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_31_2();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A0E0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_20_1();
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A0E8);
  OUTLINED_FUNCTION_0_10();
  v14 = v13;
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_2_5();
  v17 = v16;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_25_3();
  v20 = v19;
  sub_1E37A9058();
  v21 = sub_1E3926038();
  if (v21)
  {
    OUTLINED_FUNCTION_8();
    v23 = (*(v22 + 824))();
  }

  else
  {
    v23 = 0;
  }

  v24 = OUTLINED_FUNCTION_123_1();
  sub_1E3741EA0(v24, v25, v26);
  v27 = v0 + *(v11 + 52);
  *v27 = v23;
  *(v27 + 8) = v21 == 0;
  OUTLINED_FUNCTION_69();
  v29 = sub_1E37AE398(v28);
  sub_1E40A7FF0(0x676F6C5F6D616574, 0xE90000000000006FLL, 9, v11, v29);
  sub_1E325F69C(v0, &qword_1ECF2A0E0);
  v30 = sub_1E37A9650(v8);
  *(v8 + *(v39 + 52)) = (*(*v2 + 1560))(v30);
  v31 = *(v14 + 16);
  v32 = OUTLINED_FUNCTION_134_0();
  v31(v32);
  sub_1E3743538(v8, v41, &qword_1ECF2A0D0);
  (v31)(v40, v17, v38);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A0F8);
  sub_1E3743538(v41, v40 + *(v33 + 48), &qword_1ECF2A0D0);
  sub_1E325F69C(v8, &qword_1ECF2A0D0);
  v34 = *(v14 + 8);
  v34(v20, v38);
  v35 = OUTLINED_FUNCTION_124();
  sub_1E325F69C(v35, v36);
  v37 = OUTLINED_FUNCTION_99_0();
  (v34)(v37);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E37A9058()
{
  OUTLINED_FUNCTION_31_1();
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A170);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_19_2();
  v5 = sub_1E42037D4();
  OUTLINED_FUNCTION_0_10();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_5();
  v11 = v10 - v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A178);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_49_2();
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A180);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_4_6();
  v16 = v14 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v18 = sub_1E39258D4();
  if (v18)
  {
    v59 = v18;
    sub_1E381AC64();
    (*(v7 + 104))(v11, *MEMORY[0x1E6981630], v5);
    OUTLINED_FUNCTION_5_8();
    OUTLINED_FUNCTION_135();
    v19 = sub_1E4203824();

    v20 = OUTLINED_FUNCTION_102_3();
    v21(v20);
    v64 = v19;
    LOWORD(v65) = 257;
    v22 = *(v3 + 184);
    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A1B0);
    v24 = sub_1E37AE314();
    OUTLINED_FUNCTION_87_2();
    v25 = OUTLINED_FUNCTION_51_1();
    OUTLINED_FUNCTION_87_2();
    v26 = OUTLINED_FUNCTION_18();
    sub_1E3C8F60C(v22, v25 & 1, v26 & 1, v23, v24);

    *(v1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A1A8) + 36)) = 256;
    v27 = (*(*v22 + 200))();
    (*(*v22 + 304))(v27);
    sub_1E4203DA4();
    OUTLINED_FUNCTION_59();
    sub_1E4200D94();
    OUTLINED_FUNCTION_141();
    v29 = (v1 + v28);
    v30 = v65;
    *v29 = v64;
    v29[1] = v30;
    v29[2] = v66;
    v31 = sub_1E4202784();
    (*(*v22 + 176))(&v67);
    v32 = v68;
    v33 = 0uLL;
    v34 = 0uLL;
    if ((v68 & 1) == 0)
    {
      sub_1E4200A54();
      *(&v34 + 1) = v35;
      *(&v33 + 1) = v36;
    }

    v57 = v34;
    v58 = v33;
    sub_1E3741EA0(v1, v16, &qword_1ECF2A178);
    v37 = v16 + *(v60 + 36);
    *v37 = v31;
    *(v37 + 24) = v57;
    *(v37 + 8) = v58;
    *(v37 + 40) = v32 & 1;
    OUTLINED_FUNCTION_19_1();
    sub_1E3741EA0(v38, v39, v40);
    OUTLINED_FUNCTION_19_1();
    sub_1E3743538(v41, v42, v43);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A188);
    sub_1E37AE108();
    sub_1E37AE3D4();
    sub_1E4201F44();

    OUTLINED_FUNCTION_21_1();
    sub_1E325F69C(v44, v45);
  }

  else
  {
    sub_1E4203704();
    v46 = sub_1E4203734();

    KeyPath = swift_getKeyPath();
    OUTLINED_FUNCTION_8();
    (*(v48 + 200))();
    OUTLINED_FUNCTION_36();
    (*(v49 + 304))();
    sub_1E4203DA4();
    OUTLINED_FUNCTION_59();
    sub_1E4200D94();
    v50 = sub_1E4202784();
    OUTLINED_FUNCTION_8();
    (*(v51 + 176))(&v64);
    v52 = v66;
    v53 = 0uLL;
    v54 = 0uLL;
    if ((v66 & 1) == 0)
    {
      sub_1E4200A54();
      *(&v53 + 1) = v55;
      *(&v54 + 1) = v56;
    }

    LOBYTE(v67) = v52 & 1;
    *v0 = KeyPath;
    *(v0 + 8) = v46;
    *(v0 + 16) = v61;
    *(v0 + 32) = v62;
    *(v0 + 48) = v63;
    *(v0 + 64) = v50;
    *(v0 + 72) = v53;
    *(v0 + 88) = v54;
    *(v0 + 104) = v52 & 1;
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A188);
    sub_1E37AE108();
    sub_1E37AE3D4();
    OUTLINED_FUNCTION_19_1();
    sub_1E4201F44();
  }

  OUTLINED_FUNCTION_25_2();
}

void *sub_1E37A9650@<X0>(uint64_t a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_34();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v3);
  OUTLINED_FUNCTION_17_2(v4);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_8_4();
  v6 = sub_1E4201D54();
  OUTLINED_FUNCTION_8();
  (*(v7 + 152))(v17);
  v8 = v17[2];
  v9 = v18 & 1;
  if (v18)
  {
    v8 = 0;
  }

  *v1 = v6;
  *(v1 + 8) = v8;
  *(v1 + 16) = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A108);
  v10 = OUTLINED_FUNCTION_123_1();
  sub_1E37A9D40(v10);
  sub_1E4203DA4();
  OUTLINED_FUNCTION_94_4();
  v17[1] = 0;
  LOBYTE(v17[0]) = v11;
  OUTLINED_FUNCTION_13_22();
  OUTLINED_FUNCTION_96_2();
  sub_1E3741EA0(v12, v13, v14);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A110);
  return memcpy((a1 + *(v15 + 36)), __src, 0x70uLL);
}

void sub_1E37A979C()
{
  OUTLINED_FUNCTION_93();
  v4 = v3;
  v6 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A058);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_44();
  v51 = v8;
  OUTLINED_FUNCTION_138();
  v47 = sub_1E4203D34();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_5();
  v12 = v11 - v10;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A060);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_29_1();
  MEMORY[0x1EEE9AC00](v14);
  v49 = sub_1E4201534();
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_4_6();
  v18 = (v16 - v17);
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_34_1();
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A068);
  OUTLINED_FUNCTION_0_10();
  v21 = v20;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_26_2();
  v48 = v6;
  v23 = v4;
  if (sub_1E39DFFC8())
  {
    OUTLINED_FUNCTION_8();
    (*(v24 + 552))(&v53);
    v25 = 0.0;
    if ((v57 & 1) == 0)
    {
      v25 = sub_1E3952BE8(v53, v54, v55, v56);
    }

    v26 = *(v49 + 20);
    v27 = *MEMORY[0x1E697F468];
    sub_1E4201C44();
    OUTLINED_FUNCTION_2();
    (*(v28 + 104))(v2 + v26, v27);
    *v2 = v25;
    v2[1] = v25;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28990);
    sub_1E37413C4();
    OUTLINED_FUNCTION_62_5();
    sub_1E37ADD34(v29);
    sub_1E3E36744();
    sub_1E37ADE2C(v2, MEMORY[0x1E697EAF0]);
    (*(v21 + 16))(v51, v0, v50);
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_72_7();
    sub_1E37ADD74();
    sub_1E4201F44();
    (*(v21 + 8))(v0, v50);
  }

  else
  {
    sub_1E4203D14();
    OUTLINED_FUNCTION_8();
    (*(v30 + 552))(&v53);
    v31 = 0.0;
    if ((v57 & 1) == 0)
    {
      v31 = sub_1E3952BE8(v53, v54, v55, v56);
    }

    v32 = *(v49 + 20);
    v33 = *MEMORY[0x1E697F468];
    sub_1E4201C44();
    OUTLINED_FUNCTION_2();
    (*(v34 + 104))(v18 + v32, v33);
    *v18 = v31;
    v18[1] = v31;
    v35 = v1 + *(v52 + 36);
    OUTLINED_FUNCTION_155_0();
    v36(v35, v12, v47);
    v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A070);
    sub_1E37ADCDC(v18, &v35[*(v37 + 52)]);
    *&v35[*(v37 + 56)] = 256;
    *v1 = v48;
    v1[1] = v23;
    OUTLINED_FUNCTION_19_1();
    sub_1E3741EA0(v38, v39, v40);
    OUTLINED_FUNCTION_19_1();
    sub_1E3743538(v41, v42, v43);
    swift_storeEnumTagMultiPayload();

    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF28990);
    sub_1E37413C4();
    OUTLINED_FUNCTION_62_5();
    sub_1E37ADD34(v44);
    OUTLINED_FUNCTION_72_7();
    sub_1E37ADD74();
    sub_1E4201F44();
    OUTLINED_FUNCTION_21_1();
    sub_1E325F69C(v45, v46);
  }

  OUTLINED_FUNCTION_54_0();
}

void sub_1E37A9F68()
{
  OUTLINED_FUNCTION_31_1();
  v37 = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28CB8);
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_50_1();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A140);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_21_3();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A160);
  OUTLINED_FUNCTION_0_10();
  v36 = v9;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_8_4();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A168);
  OUTLINED_FUNCTION_0_10();
  v35 = v12;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_31_2();
  OUTLINED_FUNCTION_36();
  v15 = (*(v14 + 488))();
  if (v15)
  {
    v16 = sub_1E373E010(23, v15);

    if (v16)
    {
      if (*v16 == _TtC8VideosUI13TextViewModel && sub_1E3C27528())
      {
        type metadata accessor for TextLayout();
        OUTLINED_FUNCTION_20_2();
        if (swift_dynamicCastClass())
        {
          OUTLINED_FUNCTION_18();
          OUTLINED_FUNCTION_47_4();
          sub_1E3F23370();
          sub_1E4203DB4();
          OUTLINED_FUNCTION_94_4();
          OUTLINED_FUNCTION_13_22();
          OUTLINED_FUNCTION_155_0();
          v17(v3, v0, v5);
          memcpy((v3 + *(v7 + 36)), v38, 0x70uLL);
          v18 = *(*v16 + 320);

          v20 = v18(v19);
          v22 = v21;

          if (v22)
          {
            v23 = v20;
          }

          else
          {
            v23 = 0x7469745F6C747563;
          }

          if (v22)
          {
            v24 = v22;
          }

          else
          {
            v24 = 0xEA0000000000656CLL;
          }

          v25 = sub_1E37AE064();
          sub_1E40A7FF0(v23, v24, 6, v7, v25);

          sub_1E325F69C(v3, &qword_1ECF2A140);
          sub_1E3C27024();
          if (v26)
          {
            sub_1E32822E0();
            sub_1E4207194();

            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2C420);
            sub_1E37AE398(&qword_1EE23B510);
            sub_1E4205DF4();
          }

          swift_getOpaqueTypeConformance2();
          sub_1E3E03528();

          (*(v36 + 8))(v1, 0);
          (*(v35 + 32))(v37, v2, v11);
          v27 = OUTLINED_FUNCTION_22_1();
          __swift_storeEnumTagSinglePayload(v27, v28, v29, v11);
          OUTLINED_FUNCTION_25_2();
          return;
        }
      }
    }
  }

  OUTLINED_FUNCTION_48_3();
  OUTLINED_FUNCTION_25_2();

  __swift_storeEnumTagSinglePayload(v30, v31, v32, v33);
}

void sub_1E37AA4C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_31_1();
  a19 = v22;
  a20 = v23;
  v25 = v24;
  v27 = v26;
  v29 = v28;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28CB8);
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_17_3(v31);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A140);
  OUTLINED_FUNCTION_6_4(v32, &a12);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_14_5();
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A148);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_26_2();
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A150);
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_49_2();
  v38 = *(v27 + 8);
  v39 = OBJC_IVAR____TtC8VideosUI32MediaShowcasingMetadataPresenter_metadataIndex;
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  v40 = *(v38 + v39);
  if (__OFADD__(v40, 1))
  {
    __break(1u);
    goto LABEL_19;
  }

  v88 = v21;
  v89 = v34;
  v90 = v20;
  v91 = v36;
  v41 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
  v42 = [v41 vui_languageAwareDescription];

  sub_1E4205F14();
  v43 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
  v44 = [v43 vui_languageAwareDescription];

  v45 = sub_1E4205F14();
  v47 = v46;

  v48 = (*(*v25 + 488))();
  if (!v48)
  {
    goto LABEL_6;
  }

  sub_1E373E010(15, v48);
  OUTLINED_FUNCTION_122();

  if (v25 && *v25 != _TtC8VideosUI13TextViewModel)
  {

LABEL_6:
    v25 = 0;
  }

  v49 = [objc_opt_self() sharedInstance];
  if (v49)
  {
    v50 = v49;
    sub_1E3741090(0xD000000000000014, 0x80000001E425C3E0, v49);
    v52 = v51;

    if (v52)
    {
      v87 = v29;
      sub_1E32822E0();
      OUTLINED_FUNCTION_25();
      v53 = OUTLINED_FUNCTION_177_0();
      v54 = v47;
      v56 = v55;

      v92[0] = v53;
      v92[1] = v56;
      v93 = v45;
      v94 = v54;
      OUTLINED_FUNCTION_25();
      v57 = OUTLINED_FUNCTION_177_0();
      v59 = v58;

      if (v25)
      {

        v60 = sub_1E3C2877C(v57, v59, 0);
        v62 = v61;
        v64 = v63;

        sub_1E37AE010(v60, v62, v64);
        OUTLINED_FUNCTION_18();
        sub_1E3F23370();
        sub_1E4203DB4();
        OUTLINED_FUNCTION_94_4();
        LOBYTE(v87) = v65;
        OUTLINED_FUNCTION_13_22();
        OUTLINED_FUNCTION_155_0();
        v66 = OUTLINED_FUNCTION_138_0();
        v67(v66);
        OUTLINED_FUNCTION_141();
        memcpy(v68, v92, 0x70uLL);
        OUTLINED_FUNCTION_25();
        swift_beginAccess();
        OUTLINED_FUNCTION_34();
        v93 = sub_1E4207944();
        v94 = v69;
        MEMORY[0x1E69109E0](45, 0xE100000000000000);
        sub_1E39261F4();
        OUTLINED_FUNCTION_34();
        v70 = sub_1E4207944();
        MEMORY[0x1E69109E0](v70);

        v71 = v93;
        v72 = v94;
        sub_1E3741EA0(0, v90, &qword_1ECF2A140);
        v73 = (v90 + *(v89 + 52));
        *v73 = v71;
        v73[1] = v72;
        v74 = *(*v25 + 320);

        v76 = v74(v75);
        v78 = v77;

        if (v78)
        {
          v79 = v78;
        }

        else
        {
          v76 = 0x6275735F6C747563;
          v79 = 0xED0000656C746974;
        }

        OUTLINED_FUNCTION_69();
        v81 = sub_1E37AE398(v80);
        sub_1E40A7FF0(v76, v79, 6, v89, v81);

        v82 = OUTLINED_FUNCTION_89_2();
        sub_1E325F69C(v82, v83);
        OUTLINED_FUNCTION_155_0();
        v29 = v87;
        v84 = v91;
        v85(v87, v88, v91);
        v86 = 0;
        goto LABEL_17;
      }

      v86 = 1;
    }

    else
    {

      v86 = 1;
    }

    v84 = v91;
LABEL_17:
    __swift_storeEnumTagSinglePayload(v29, v86, 1, v84);
    OUTLINED_FUNCTION_25_2();
    return;
  }

LABEL_19:
  __break(1u);
}

void sub_1E37AAC4C()
{
  OUTLINED_FUNCTION_31_1();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29E70);
  OUTLINED_FUNCTION_17_2(v4);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_49_2();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29E78);
  v7 = v6 - 8;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_47_2();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_29_1();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_23_8();
  *v1 = sub_1E4201B84();
  *(v1 + 8) = 0;
  *(v1 + 16) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29E80);
  sub_1E37AAE30();
  sub_1E4203DA4();
  OUTLINED_FUNCTION_13_22();
  v10 = OUTLINED_FUNCTION_98();
  sub_1E3741EA0(v10, v11, &qword_1ECF29E70);
  memcpy((v0 + *(v7 + 44)), v25, 0x70uLL);
  OUTLINED_FUNCTION_18_5();
  sub_1E3741EA0(v12, v13, v14);
  OUTLINED_FUNCTION_102_3();
  OUTLINED_FUNCTION_18_5();
  sub_1E3743538(v15, v16, v17);
  *v3 = 0;
  *(v3 + 8) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29E88);
  OUTLINED_FUNCTION_18_5();
  sub_1E3743538(v18, v19, v20);
  OUTLINED_FUNCTION_82();
  sub_1E325F69C(v21, v22);
  OUTLINED_FUNCTION_82();
  sub_1E325F69C(v23, v24);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E37AAE30()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v1;
  v30 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29E90);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_21_3();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29E98);
  OUTLINED_FUNCTION_0_10();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_47_2();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v30 - v10;
  *v0 = sub_1E4201D44();
  *(v0 + 8) = 0;
  *(v0 + 16) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29EA0);
  v12 = OUTLINED_FUNCTION_146();
  sub_1E37AB07C(v12);
  OUTLINED_FUNCTION_1();
  sub_1E37AE398(v13);
  OUTLINED_FUNCTION_156_2();
  sub_1E38838AC(v14, v15, v16, v17, v18);
  v19 = OUTLINED_FUNCTION_160_1();
  sub_1E325F69C(v19, v20);
  v21 = type metadata accessor for PlaybackMediaShowcasingMetadataView();
  OUTLINED_FUNCTION_25_17((v2 + *(v21 + 40)));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF294E0);
  OUTLINED_FUNCTION_147_0();
  v22 = v31;
  LOBYTE(v2) = v31 ^ 1;
  v23 = *(v7 + 16);
  v24 = OUTLINED_FUNCTION_75();
  v23(v24);
  v25 = v30;
  v26 = OUTLINED_FUNCTION_114_0();
  v23(v26);
  v27 = v25 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29EB0) + 48);
  *v27 = 0;
  *(v27 + 8) = v2;
  *(v27 + 9) = v22;
  v28 = *(v7 + 8);
  v28(v11, v5);
  v29 = OUTLINED_FUNCTION_74();
  (v28)(v29);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E37AB384(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_31_1();
  a19 = v24;
  a20 = v25;
  v107 = v26;
  v28 = v27;
  v30 = v29;
  v111 = v31;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29EE0);
  v33 = OUTLINED_FUNCTION_17_2(v32);
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_83_0();
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_77_0();
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29C90);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_2_5();
  v112 = v36;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_25_3();
  OUTLINED_FUNCTION_152_0(v38);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29C98);
  OUTLINED_FUNCTION_6_4(v39, &a17);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_8_4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29CA0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v41);
  OUTLINED_FUNCTION_19_2();
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29210);
  OUTLINED_FUNCTION_6_4(v42, &a16);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v43);
  OUTLINED_FUNCTION_31_2();
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29CA8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v45);
  OUTLINED_FUNCTION_20_1();
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29EE8);
  v47 = OUTLINED_FUNCTION_17_2(v46);
  MEMORY[0x1EEE9AC00](v47);
  OUTLINED_FUNCTION_2_5();
  v108 = v48;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v49);
  OUTLINED_FUNCTION_25_3();
  v113 = v50;
  if (sub_1E3925B38())
  {
    v51 = 1;
    v52 = v113;
  }

  else
  {
    v103 = v22;
    v104 = v23;
    v53 = (*(*v28 + 488))();
    if (v53 && (v54 = sub_1E373E010(39, v53), , v54))
    {

      sub_1E37A3384(v28, v55, v56, v57, v58, v59, v60, v61, v102, v103, v23, v105, v106, v107, v108, v109, v111, v112, v30, v113, v114, v115[0]);
      OUTLINED_FUNCTION_164();
      sub_1E3743538(v62, v63, v64);
      OUTLINED_FUNCTION_34();
      swift_storeEnumTagMultiPayload();
      sub_1E37AC5F4();
      sub_1E37AC690();
      OUTLINED_FUNCTION_117_0();
      v65 = v20;
      v66 = &qword_1ECF29C98;
    }

    else
    {
      sub_1E37A313C();
      OUTLINED_FUNCTION_164();
      sub_1E3743538(v67, v68, v69);
      OUTLINED_FUNCTION_34();
      swift_storeEnumTagMultiPayload();
      sub_1E37AC5F4();
      sub_1E37AC690();
      OUTLINED_FUNCTION_117_0();
      v65 = OUTLINED_FUNCTION_135();
    }

    sub_1E325F69C(v65, v66);
    v52 = v113;
    sub_1E3741EA0(v21, v113, &qword_1ECF29CA8);
    v51 = 0;
    v23 = v104;
    v22 = v103;
  }

  __swift_storeEnumTagSinglePayload(v52, v51, 1, v44);
  sub_1E37A3AB0();
  if (!(*(*v28 + 552))())
  {
    v116 = 0u;
    v117 = 0u;
    goto LABEL_17;
  }

  v115[3] = &unk_1F5D7BE68;
  v115[4] = &off_1F5D7BC48;
  LOBYTE(v115[0]) = 6;
  sub_1E3F9F164(v115);

  __swift_destroy_boxed_opaque_existential_1(v115);
  if (!*(&v117 + 1))
  {
LABEL_17:
    sub_1E325F69C(&v116, &unk_1ECF296E0);
    goto LABEL_18;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_18:
    v73 = 0;
LABEL_19:
    OUTLINED_FUNCTION_32_2();
    __swift_storeEnumTagSinglePayload(v82, v83, v84, v109);
    v110 = v73;
    goto LABEL_20;
  }

  sub_1E3744600(v115[0]);

  v70 = objc_allocWithZone(VUIContentMetadata);
  v71 = OUTLINED_FUNCTION_20_2();
  v72 = sub_1E37AD294(v71);
  v73 = v72;
  v74 = *(v107 + 112);
  if (!v74 || !v72)
  {
    goto LABEL_19;
  }

  v75 = v72;
  v76 = v74;
  sub_1E37AD648(v75);
  if (!v77 || (, (v78 = [v75 episodeNumber]) == 0))
  {

    goto LABEL_19;
  }

  OUTLINED_FUNCTION_154_0();
  sub_1E37A3AB0();

  sub_1E3741EA0(v112, v22, &qword_1ECF29C90);
  OUTLINED_FUNCTION_114();
  __swift_storeEnumTagSinglePayload(v79, v80, v81, v109);
  v110 = v75;
LABEL_20:
  sub_1E37ABAC8();
  sub_1E3743538(v52, v108, &qword_1ECF29EE8);
  OUTLINED_FUNCTION_158();
  sub_1E3743538(v85, v86, v87);
  v88 = OUTLINED_FUNCTION_115();
  sub_1E3743538(v88, v89, v90);
  sub_1E3743538(v108, v111, &qword_1ECF29EE8);
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29EF0);
  OUTLINED_FUNCTION_158();
  sub_1E3743538(v92, v93, v94);
  sub_1E3743538(v23, v111 + *(v91 + 64), &qword_1ECF29EE0);
  v95 = *(v91 + 80);

  memcpy((v111 + v95), v115, 0x41uLL);
  sub_1E325F69C(v22, &qword_1ECF29EE0);
  sub_1E325F69C(v114, &qword_1ECF29C90);
  sub_1E325F69C(v113, &qword_1ECF29EE8);
  v96 = OUTLINED_FUNCTION_75();
  sub_1E325F69C(v96, v97);
  v98 = OUTLINED_FUNCTION_99_0();
  sub_1E325F69C(v98, v99);
  OUTLINED_FUNCTION_21_1();
  sub_1E325F69C(v100, v101);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E37ABAC8()
{
  OUTLINED_FUNCTION_9_4();
  v2 = v1;
  OUTLINED_FUNCTION_173();
  v3 = sub_1E42012F4();
  OUTLINED_FUNCTION_0_10();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_5();
  v9 = v8 - v7;
  v10 = (*(*v2 + 488))();
  if (!v10 || (v11 = sub_1E373E010(91, v10), , !v11) || (OUTLINED_FUNCTION_8(), v13 = (*(v12 + 464))(), v14 = , !v13))
  {

    v13 = MEMORY[0x1E69E7CC0];
  }

  if (!(*(*v2 + 392))(v14))
  {

LABEL_12:
    v19 = 0;
    v21 = 0;
    v27 = 0;
    v26 = 0;
    v25 = 0;
    v23 = 0uLL;
    v24 = 1;
    goto LABEL_13;
  }

  type metadata accessor for MediaShowcasingMetadataLayout();
  if (!swift_dynamicCastClass())
  {

    goto LABEL_12;
  }

  OUTLINED_FUNCTION_8();
  (*(v15 + 152))(v29);
  if ((v30 & 1) == 0)
  {
    sub_1E3952BD8(v29[0], v29[1], v29[2]);
  }

  sub_1E3798694(v13);

  OUTLINED_FUNCTION_8();
  v17 = *(v16 + 304);

  v17(v18);

  type metadata accessor for PlaybackMediaShowcasingMetadataView();
  sub_1E3746E10(v9);
  sub_1E3B02A04();
  (*(v5 + 8))(v9, v3);
  sub_1E4203DA4();
  OUTLINED_FUNCTION_59();
  OUTLINED_FUNCTION_52_1();
  v19 = v31;
  v20 = v32;
  v21 = v33;
  v22 = v34;
  v28 = v35;

  v23 = v28;
  v24 = 0;
  v25 = 1;
  v26 = v20;
  v27 = v22;
LABEL_13:
  *v0 = 0;
  *(v0 + 8) = v25;
  *(v0 + 16) = v19;
  *(v0 + 24) = v26;
  *(v0 + 32) = v21;
  *(v0 + 40) = v27;
  *(v0 + 48) = v23;
  *(v0 + 64) = v24;
  OUTLINED_FUNCTION_10_3();
}

void sub_1E37ABE40()
{
  OUTLINED_FUNCTION_31_1();
  v112 = v2;
  v120 = v3;
  v5 = v4;
  v122 = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29DD8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_44();
  v119 = v9;
  v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29DE0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_44();
  v109 = v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29DE8);
  v13 = OUTLINED_FUNCTION_17_2(v12);
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_2_5();
  v107 = v14;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_25_3();
  v105 = v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29DF0);
  v18 = OUTLINED_FUNCTION_17_2(v17);
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_2_5();
  v108 = v19;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_25_3();
  v106 = v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29DF8);
  v23 = OUTLINED_FUNCTION_17_2(v22);
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_2_5();
  v117 = v24;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_25_3();
  v116 = v26;
  OUTLINED_FUNCTION_138();
  type metadata accessor for PlaybackMediaShowcasingMetadataView();
  OUTLINED_FUNCTION_0_10();
  v110 = v28;
  v111 = v27;
  v30 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v27);
  v31 = &v103 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_1E4201274();
  OUTLINED_FUNCTION_0_10();
  v34 = v33;
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_5();
  v38 = v37 - v36;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29E00);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_19_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29E08);
  OUTLINED_FUNCTION_0_10();
  v114 = v42;
  v115 = v41;
  MEMORY[0x1EEE9AC00](v41);
  OUTLINED_FUNCTION_2_5();
  v113 = v43;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v44);
  OUTLINED_FUNCTION_77_0();
  v121 = v5;
  if (sub_1E3925B38())
  {
    OUTLINED_FUNCTION_32_2();
    OUTLINED_FUNCTION_25_2();

    __swift_storeEnumTagSinglePayload(v45, v46, v47, v48);
  }

  else
  {
    v104 = v7;
    v50 = v121;
    *v0 = sub_1E379EF14();
    *(v0 + 8) = 0;
    *(v0 + 16) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29E10);
    sub_1E37AC7FC(v50, v120, v112);
    (*(v34 + 104))(v38, *MEMORY[0x1E697E668], v32);
    OUTLINED_FUNCTION_1_58();
    sub_1E37AD3C4(v50, &v103 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0));
    OUTLINED_FUNCTION_16_14();
    v51 = swift_allocObject();
    OUTLINED_FUNCTION_0_25();
    sub_1E37ADCDC(v31, v52);
    OUTLINED_FUNCTION_1();
    v54 = sub_1E37AE398(v53);
    OUTLINED_FUNCTION_138_0();
    v55 = OUTLINED_FUNCTION_51_1();
    v112 = v1;
    sub_1E3D951F8(v38, v55 & 1, sub_1E37AE5F8, v51, v39, v54);

    v56 = v32;
    v57 = 1;
    (*(v34 + 8))(v38, v56);
    v58 = OUTLINED_FUNCTION_169_0();
    sub_1E325F69C(v58, v59);
    OUTLINED_FUNCTION_64_5();
    v124 = v60;
    v125 = v61;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF294E0);
    sub_1E42038F4();
    v62 = v116;
    if ((v123 & 1) == 0)
    {
      v63 = sub_1E4201D64();
      v64 = v106;
      *v106 = v63;
      v64[1] = 0;
      *(v64 + 16) = 1;
      v65 = v64 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29E20) + 44);
      sub_1E37ACB38();
      OUTLINED_FUNCTION_12_12();
      sub_1E3743538(v66, v67, v68);
      *v65 = 0;
      v65[8] = 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29E28);
      OUTLINED_FUNCTION_19_1();
      sub_1E3743538(v69, v70, v71);
      OUTLINED_FUNCTION_21_1();
      sub_1E325F69C(v72, v73);
      OUTLINED_FUNCTION_21_1();
      sub_1E325F69C(v74, v75);
      OUTLINED_FUNCTION_12_12();
      sub_1E3743538(v76, v77, v78);
      v79 = v109;
      *v109 = 0;
      *(v79 + 8) = 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29E30);
      OUTLINED_FUNCTION_19_1();
      sub_1E3743538(v80, v81, v82);
      OUTLINED_FUNCTION_21_1();
      sub_1E325F69C(v83, v84);
      OUTLINED_FUNCTION_21_1();
      sub_1E325F69C(v85, v86);
      sub_1E3741EA0(v79, v62, &qword_1ECF29DE0);
      v57 = 0;
    }

    __swift_storeEnumTagSinglePayload(v62, v57, 1, v118);
    v88 = v113;
    v87 = v114;
    v89 = *(v114 + 16);
    v90 = v112;
    v91 = v62;
    v92 = v115;
    v89(v113, v112, v115);
    v93 = v117;
    sub_1E3743538(v91, v117, &qword_1ECF29DF8);
    v94 = v119;
    v89(v119, v88, v92);
    v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29E38);
    sub_1E3743538(v93, v94 + *(v95 + 48), &qword_1ECF29DF8);
    sub_1E325F69C(v91, &qword_1ECF29DF8);
    v96 = *(v87 + 8);
    v96(v90, v92);
    OUTLINED_FUNCTION_21_1();
    sub_1E325F69C(v97, v98);
    v99 = OUTLINED_FUNCTION_159();
    (v96)(v99);
    sub_1E3741EA0(v94, v122, &qword_1ECF29DD8);
    v100 = OUTLINED_FUNCTION_22_1();
    __swift_storeEnumTagSinglePayload(v100, v101, v102, v104);
    OUTLINED_FUNCTION_25_2();
  }
}

unint64_t sub_1E37AC5F4()
{
  result = qword_1EE285DD8;
  if (!qword_1EE285DD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF29210);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE285DD8);
  }

  return result;
}

unint64_t sub_1E37AC690()
{
  result = qword_1EE288388;
  if (!qword_1EE288388)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF29C98);
    sub_1E37AE398(&unk_1EE288390);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE288388);
  }

  return result;
}

unint64_t sub_1E37AC740()
{
  result = qword_1EE2899A0;
  if (!qword_1EE2899A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF29CC0);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2899A0);
  }

  return result;
}

void sub_1E37ACB38()
{
  OUTLINED_FUNCTION_9_4();
  v4 = v3;
  v5 = sub_1E42037D4();
  OUTLINED_FUNCTION_0_10();
  v56 = v6;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_74_1();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29CC0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_31_2();
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29E40);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_26_2();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29E48);
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_44();
  v13 = sub_1E3925954();
  if (!v13)
  {
    goto LABEL_13;
  }

  v14 = v13;
  v15 = (*(*v4 + 488))();
  if (v15 && (sub_1E373E010(40, v15), OUTLINED_FUNCTION_122(), , v4))
  {
    type metadata accessor for ImageViewModel();
    v16 = swift_dynamicCastClass();
    if (!v16)
    {
LABEL_12:

      goto LABEL_13;
    }

    v17 = v16;
    v18 = *(*v16 + 392);

    v55 = v17;
    v18(v19);
    OUTLINED_FUNCTION_122();

    if (v18)
    {
      type metadata accessor for ImageLayout();
      if (swift_dynamicCastClass())
      {
        OUTLINED_FUNCTION_26_0();
        v53 = v21;
        (*(v20 + 2288))();
        v54 = v14;
        sub_1E381AC64();
        (*(v56 + 104))(v0, *MEMORY[0x1E6981630], v5);
        OUTLINED_FUNCTION_5_8();
        OUTLINED_FUNCTION_32_0();
        sub_1E4203824();
        OUTLINED_FUNCTION_122();

        (*(v56 + 8))(v0, v5);
        *&v58 = v18;

        v22 = MEMORY[0x1E6981748];
        v23 = MEMORY[0x1E6981710];
        OUTLINED_FUNCTION_142_0();
        v24 = OUTLINED_FUNCTION_51_1();
        OUTLINED_FUNCTION_142_0();
        v25 = OUTLINED_FUNCTION_18();
        sub_1E3C8F60C(v53, v24 & 1, v25 & 1, v22, v23);

        sub_1E4203DA4();
        OUTLINED_FUNCTION_59();
        OUTLINED_FUNCTION_179_0();
        v26 = (v2 + *(v8 + 36));
        *v26 = v58;
        v26[1] = v59;
        v26[2] = v60;
        v27 = *(*v53 + 152);

        v27(v61, v28);
        v29 = v61[0];
        v30 = v61[1];
        v31 = v61[2];
        v32 = v61[3];

        if (v62)
        {
          OUTLINED_FUNCTION_5_8();
        }

        else
        {
          v33.n128_u64[0] = v29;
          v34.n128_u64[0] = v30;
          v35.n128_u64[0] = v31;
          v36.n128_u64[0] = v32;
          j_nullsub_1(v33, v34, v35, v36);
        }

        OUTLINED_FUNCTION_3();
        v42 = sub_1E4202734();
        v43 = OUTLINED_FUNCTION_102_3();
        v46 = sub_1E3741EA0(v43, v44, v45);
        v47 = v1 + *(v57 + 36);
        *v47 = v42;
        *(v47 + 8) = v29;
        *(v47 + 16) = v30;
        *(v47 + 24) = v31;
        *(v47 + 32) = v32;
        *(v47 + 40) = 0;
        (*(*v55 + 904))(v46);
        sub_1E37AD554();
        sub_1E3E03528();

        sub_1E325F69C(v1, &qword_1ECF29E40);
        v48 = OUTLINED_FUNCTION_139_0();
        v49(v48);
        OUTLINED_FUNCTION_114();
        __swift_storeEnumTagSinglePayload(v50, v51, v52, v11);
        OUTLINED_FUNCTION_10_3();
        return;
      }

      goto LABEL_12;
    }
  }

  else
  {
  }

LABEL_13:
  OUTLINED_FUNCTION_48_3();
  OUTLINED_FUNCTION_10_3();

  __swift_storeEnumTagSinglePayload(v37, v38, v39, v40);
}

uint64_t sub_1E37AD0DC(uint64_t a1, unsigned __int8 a2)
{
  v5 = sub_1E4200B44();
  OUTLINED_FUNCTION_0_10();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_4_6();
  v11 = v9 - v10;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_78();
  if (sub_1E3CCE24C(a2) && (TVAppFeature.isEnabled.getter(20) & 1) != 0)
  {
    return 0;
  }

  if (a1 == 27)
  {
    type metadata accessor for PlaybackMediaShowcasingMetadataView();
    sub_1E379EBAC(v2);
    OUTLINED_FUNCTION_111_0();
    v13(v11);
    OUTLINED_FUNCTION_74();
    v14 = sub_1E4200B34();
    v15 = *(v7 + 8);
    v16 = OUTLINED_FUNCTION_13_8();
    v15(v16);
    (v15)(v2, v5);
    if (v14)
    {
      return 27;
    }

    else
    {
      return 26;
    }
  }

  return a1;
}

unint64_t sub_1E37AD240(uint64_t a1)
{
  result = OUTLINED_FUNCTION_48_0(a1);
  if (!result)
  {
    v4 = OUTLINED_FUNCTION_40_2(0, v3);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v4);
    OUTLINED_FUNCTION_60();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

id sub_1E37AD294(uint64_t a1)
{
  if (a1)
  {
    v2 = sub_1E4205C44();
  }

  else
  {
    v2 = 0;
  }

  v3 = [v1 initWithDictionary_];

  return v3;
}

unint64_t sub_1E37AD314()
{
  result = qword_1ECF29D68;
  if (!qword_1ECF29D68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF29D40);
    sub_1E37AE398(&unk_1ECF29D70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF29D68);
  }

  return result;
}

uint64_t sub_1E37AD3C4(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_106();
  v4(v3);
  OUTLINED_FUNCTION_2();
  v5 = OUTLINED_FUNCTION_32_0();
  v6(v5);
  return a2;
}

unint64_t sub_1E37AD41C()
{
  result = qword_1EE288FF8;
  if (!qword_1EE288FF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF29DD0);
    sub_1E37ADD34(&unk_1EE249C10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE288FF8);
  }

  return result;
}

void sub_1E37AD4D0(double a1, double a2, double a3, double a4)
{
  v6 = type metadata accessor for PlaybackMediaShowcasingMetadataView();
  OUTLINED_FUNCTION_17_2(v6);
  OUTLINED_FUNCTION_135_0();
  sub_1E37A1214(a3);
  if (sub_1E3925640() != a4)
  {
    sub_1E39256B8();
  }
}

unint64_t sub_1E37AD554()
{
  result = qword_1ECF29E50;
  if (!qword_1ECF29E50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF29E40);
    sub_1E37AC740();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF29E50);
  }

  return result;
}

uint64_t sub_1E37AD5E0()
{
  v0 = type metadata accessor for PlaybackMediaShowcasingMetadataView();
  OUTLINED_FUNCTION_17_2(v0);
  OUTLINED_FUNCTION_135_0();
  return sub_1E39256B8();
}

uint64_t sub_1E37AD648(void *a1)
{
  v2 = [a1 title];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_1E4205F14();

  return v3;
}

uint64_t sub_1E37AD6B8()
{
  v2 = *(OUTLINED_FUNCTION_95_2() - 8);
  v3 = *(v0 + ((*(v2 + 64) + ((*(v2 + 80) + 16) & ~*(v2 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8));
  v10.origin.x = OUTLINED_FUNCTION_2_0();
  CGRectGetMinY(v10);
  v4 = sub_1E39256B8();
  (*(*v3 + 152))(v8, v4);
  v6.n128_u64[0] = 0;
  if ((v9 & 1) == 0)
  {
    v6.n128_f64[0] = sub_1E3952BE0(v8[0], v8[1], v8[2], v8[3]);
  }

  v5.n128_u64[0] = v1;
  nullsub_1(v6, v5);
  return sub_1E3925DD4();
}

uint64_t sub_1E37AD7C8()
{
  v4 = OUTLINED_FUNCTION_95_2();
  OUTLINED_FUNCTION_17_2(v4);
  OUTLINED_FUNCTION_135_0();
  v5 = sub_1E3925640();
  v7.origin.x = OUTLINED_FUNCTION_2_0();
  if (v5 != CGRectGetHeight(v7))
  {
    v8.origin.x = OUTLINED_FUNCTION_2_0();
    CGRectGetHeight(v8);
    sub_1E39256B8();
  }

  v9.origin.x = sub_1E3925D6C();
  v10.origin.x = v3;
  v10.origin.y = v2;
  v10.size.width = v1;
  v10.size.height = v0;
  if (!CGRectEqualToRect(v9, v10))
  {
    OUTLINED_FUNCTION_2_0();
    sub_1E3925DD4();
  }

  return sub_1E37A1214(v1);
}

unint64_t sub_1E37AD888()
{
  result = qword_1ECF29FD0;
  if (!qword_1ECF29FD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF29FC8);
    sub_1E37AC5F4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF29FD0);
  }

  return result;
}

unint64_t sub_1E37AD914()
{
  result = qword_1ECF2A028;
  if (!qword_1ECF2A028)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2A000);
    sub_1E37AE398(&unk_1ECF2A030);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2A028);
  }

  return result;
}

uint64_t objectdestroyTm_2()
{
  type metadata accessor for PlaybackMediaShowcasingMetadataView();
  OUTLINED_FUNCTION_144();
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  sub_1E3264CE0();
  v4 = *(v0 + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF299D8);
  if (OUTLINED_FUNCTION_182_0() == 1)
  {
    sub_1E4200B44();
    OUTLINED_FUNCTION_2();
    (*(v5 + 8))(v3 + v4);
  }

  else
  {
  }

  v6 = *(v0 + 36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28C18);
  if (OUTLINED_FUNCTION_182_0() == 1)
  {
    sub_1E42012F4();
    OUTLINED_FUNCTION_2();
    (*(v7 + 8))(v3 + v6);
  }

  else
  {
  }

  OUTLINED_FUNCTION_137_1();
  if (v8)
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1E37ADB78()
{
  v0 = OUTLINED_FUNCTION_95_2();
  OUTLINED_FUNCTION_17_2(v0);
  OUTLINED_FUNCTION_135_0();
  OUTLINED_FUNCTION_2_0();
  sub_1E3925DD4();
  return sub_1E39256B8();
}

unint64_t sub_1E37ADBE8()
{
  result = qword_1ECF2A040;
  if (!qword_1ECF2A040)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2A010);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2A000);
    sub_1E37AD914();
    swift_getOpaqueTypeConformance2();
    sub_1E37AE398(&unk_1ECF2A048);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2A040);
  }

  return result;
}

uint64_t sub_1E37ADCDC(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_106();
  v4(v3);
  OUTLINED_FUNCTION_2();
  v5 = OUTLINED_FUNCTION_32_0();
  v6(v5);
  return a2;
}

unint64_t sub_1E37ADD34(uint64_t a1)
{
  result = OUTLINED_FUNCTION_48_0(a1);
  if (!result)
  {
    v3(255);
    OUTLINED_FUNCTION_20_2();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_1E37ADD74()
{
  result = qword_1ECF2A078;
  if (!qword_1ECF2A078)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2A060);
    sub_1E37413C4();
    sub_1E37AE398(&unk_1EE288758);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2A078);
  }

  return result;
}

uint64_t sub_1E37ADE2C(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_2();
  (*(v3 + 8))(a1);
  return a1;
}

unint64_t sub_1E37ADE84()
{
  result = qword_1ECF2A0A8;
  if (!qword_1ECF2A0A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2A090);
    sub_1E37AE398(&unk_1ECF2A0B0);
    sub_1E37AE398(&unk_1EE2889D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2A0A8);
  }

  return result;
}

unint64_t sub_1E37ADF68()
{
  result = qword_1EE275780;
  if (!qword_1EE275780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE275780);
  }

  return result;
}

void sub_1E37AE010(void *a1, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    sub_1E37AE024(a1, a2, a3);
  }
}

void sub_1E37AE024(void *a1, uint64_t a2, char a3)
{
  switch(a3)
  {
    case 0:
    case 1:

      break;
    case 2:
    case 3:

      break;
    default:
      return;
  }
}

unint64_t sub_1E37AE064()
{
  result = qword_1EE289C98;
  if (!qword_1EE289C98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2A140);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE289C98);
  }

  return result;
}

unint64_t sub_1E37AE108()
{
  result = qword_1ECF2A190;
  if (!qword_1ECF2A190)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2A180);
    sub_1E37AE194();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2A190);
  }

  return result;
}

unint64_t sub_1E37AE194()
{
  result = qword_1ECF2A198;
  if (!qword_1ECF2A198)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2A178);
    sub_1E37AE220();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2A198);
  }

  return result;
}

unint64_t sub_1E37AE220()
{
  result = qword_1ECF2A1A0;
  if (!qword_1ECF2A1A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2A1A8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2A1B0);
    sub_1E37AE314();
    swift_getOpaqueTypeConformance2();
    sub_1E37AE398(&qword_1EE289E00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2A1A0);
  }

  return result;
}

unint64_t sub_1E37AE314()
{
  result = qword_1EE289828;
  if (!qword_1EE289828)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2A1B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE289828);
  }

  return result;
}

unint64_t sub_1E37AE398(uint64_t a1)
{
  result = OUTLINED_FUNCTION_48_0(a1);
  if (!result)
  {
    v4 = OUTLINED_FUNCTION_40_2(0, v3);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v4);
    OUTLINED_FUNCTION_20_2();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_1E37AE3D4()
{
  result = qword_1ECF2A1C0;
  if (!qword_1ECF2A1C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2A188);
    sub_1E37AE460();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2A1C0);
  }

  return result;
}

unint64_t sub_1E37AE460()
{
  result = qword_1ECF2A1C8;
  if (!qword_1ECF2A1C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2A1D0);
    sub_1E37AE4EC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2A1C8);
  }

  return result;
}

unint64_t sub_1E37AE4EC()
{
  result = qword_1ECF2A1D8;
  if (!qword_1ECF2A1D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2A1E0);
    sub_1E37AE5A4();
    sub_1E37AE398(&qword_1EE288788);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2A1D8);
  }

  return result;
}

unint64_t sub_1E37AE5A4()
{
  result = qword_1ECF2A1E8;
  if (!qword_1ECF2A1E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2A1E8);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_58_6()
{

  return sub_1E4201F44();
}

uint64_t OUTLINED_FUNCTION_91_1@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  *(v2 - 136) = a1;
  *(v2 - 112) = a2;

  return type metadata accessor for PlaybackMediaShowcasingMetadataView();
}

uint64_t OUTLINED_FUNCTION_95_2()
{

  return type metadata accessor for PlaybackMediaShowcasingMetadataView();
}

__n128 OUTLINED_FUNCTION_103_2@<Q0>(unint64_t a1@<X8>)
{
  v4[12].n128_u64[0] = 0;
  v4[12].n128_u8[8] = v5;
  v4[13].n128_u64[0] = a1;
  v4[13].n128_u8[8] = v1;
  v4[14].n128_u64[0] = v2;
  v4[14].n128_u8[8] = v3;
  result = *(v6 - 120);
  v4[15] = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_110_0@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(v2 - 104) = *(a2 - 256);
  *(v2 - 96) = result;
  return result;
}

void OUTLINED_FUNCTION_112_3(void *a1@<X8>)
{
  v4 = *(v1 - 256);
  a1[4] = v2;
  a1[5] = v4;
  v5 = *(v3 - 384);
  a1[6] = *(v3 - 376);
  a1[7] = v5;
}

void OUTLINED_FUNCTION_113_2(uint64_t a1@<X8>)
{
  *(a1 - 256) = 0;
  *(v1 - 368) = 0;
  *(v1 - 376) = 0;
  *(v1 - 384) = 0;
}

uint64_t OUTLINED_FUNCTION_116_2()
{

  return sub_1E4201F44();
}

uint64_t OUTLINED_FUNCTION_117_0()
{

  return sub_1E4201F44();
}

uint64_t OUTLINED_FUNCTION_131_1(char a1)
{

  return sub_1E40AB6EC(a1);
}

uint64_t OUTLINED_FUNCTION_132_0()
{

  return sub_1E4201F44();
}

uint64_t OUTLINED_FUNCTION_146_3()
{
  v3 = *(v1 - 208);

  return sub_1E37AD3C4(v0, v3);
}

uint64_t OUTLINED_FUNCTION_147_0()
{

  return sub_1E42038F4();
}

uint64_t OUTLINED_FUNCTION_148_0()
{
  v3 = *(v1 - 152);

  return sub_1E37AD3C4(v0, v3);
}

uint64_t OUTLINED_FUNCTION_149_0()
{

  return swift_storeEnumTagMultiPayload();
}

uint64_t OUTLINED_FUNCTION_150_0()
{

  return sub_1E3883AF4(v0);
}

void OUTLINED_FUNCTION_163_0(uint64_t a1@<X8>)
{
  *(v4 + 16) = a1;
  *(v4 + 24) = v1;
  *(v4 + 32) = v2;
  *(v4 + 40) = v3;
}

void OUTLINED_FUNCTION_174(uint64_t a1@<X8>)
{
  v3 = *(v1 - 256);
  *(a1 + 16) = v2;
  *(a1 + 24) = v3;
}

uint64_t OUTLINED_FUNCTION_175_0()
{
  result = *(v1 - 136);
  *(v1 - 168) = v0;
  return result;
}

uint64_t OUTLINED_FUNCTION_177_0()
{

  return sub_1E42071F4();
}

uint64_t OUTLINED_FUNCTION_178_1()
{

  return sub_1E4200D94();
}

uint64_t OUTLINED_FUNCTION_179_0()
{

  return sub_1E4200D94();
}

uint64_t OUTLINED_FUNCTION_180()
{
}

uint64_t OUTLINED_FUNCTION_181_0()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_182_0()
{

  return swift_getEnumCaseMultiPayload();
}

id OUTLINED_FUNCTION_183_0()
{

  return [v1 (v0 + 1454)];
}

uint64_t OUTLINED_FUNCTION_184()
{

  return sub_1E42038E4();
}

uint64_t OUTLINED_FUNCTION_185()
{
}

uint64_t sub_1E37AEAD8(char a1)
{
  result = 0x7964616572;
  switch(a1)
  {
    case 1:
      result = OUTLINED_FUNCTION_31_9();
      break;
    case 2:
      result = OUTLINED_FUNCTION_29_6();
      break;
    case 3:
      result = OUTLINED_FUNCTION_28_12();
      break;
    case 4:
      result = OUTLINED_FUNCTION_30_11();
      break;
    case 5:
      result = OUTLINED_FUNCTION_10_25();
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1E37AEB9C()
{
  v0 = sub_1E4207784();

  if (v0 >= 6)
  {
    return 6;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1E37AEBF4(unsigned __int8 a1, char a2)
{
  v2 = 0x7964616572;
  v3 = 0xE500000000000000;
  v4 = a1;
  v5 = 0x7964616572;
  switch(v4)
  {
    case 1:
      v3 = 0xE700000000000000;
      v5 = 0x676E696E6E7572;
      break;
    case 2:
      v5 = 0x65646E6570737573;
      goto LABEL_6;
    case 3:
      v5 = 0x656C6C65636E6163;
LABEL_6:
      v3 = 0xE900000000000064;
      break;
    case 4:
      v3 = 0xE800000000000000;
      v5 = 0x64656873696E6966;
      break;
    case 5:
      v3 = 0xE700000000000000;
      v5 = 0x6E776F6E6B6E75;
      break;
    default:
      break;
  }

  v6 = 0xE500000000000000;
  switch(a2)
  {
    case 1:
      v6 = 0xE700000000000000;
      v2 = 0x676E696E6E7572;
      break;
    case 2:
      v2 = 0x65646E6570737573;
      goto LABEL_13;
    case 3:
      v2 = 0x656C6C65636E6163;
LABEL_13:
      v6 = 0xE900000000000064;
      break;
    case 4:
      v6 = 0xE800000000000000;
      v2 = 0x64656873696E6966;
      break;
    case 5:
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
    v8 = sub_1E42079A4();
  }

  return v8 & 1;
}

uint64_t sub_1E37AEDA4(char a1)
{
  sub_1E4207B44();
  sub_1E37AEAD8(a1);
  sub_1E4206014();

  return sub_1E4207BA4();
}

uint64_t sub_1E37AEE10()
{
  sub_1E4206014();
}

uint64_t sub_1E37AEEFC(uint64_t a1, char a2)
{
  sub_1E4207B44();
  sub_1E37AEAD8(a2);
  sub_1E4206014();

  return sub_1E4207BA4();
}

uint64_t sub_1E37AEF5C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1E37AEB9C();
  *a1 = result;
  return result;
}

uint64_t sub_1E37AEF8C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1E37AEAD8(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1E37AEFC0()
{
  v5 = sub_1E3D441EC(*v0);
  __swift_project_boxed_opaque_existential_1(v0 + 1, *(v0 + 4));
  v1 = OUTLINED_FUNCTION_51_7();
  v3 = v2(v1);
  MEMORY[0x1E69109E0](v3);

  MEMORY[0x1E69109E0](32, 0xE100000000000000);

  return v5;
}

void sub_1E37AF054()
{
  OUTLINED_FUNCTION_31_1();
  v9 = sub_1E42069F4();
  OUTLINED_FUNCTION_0_10();
  v1 = v0;
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_5();
  v5 = v4 - v3;
  sub_1E4206974();
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_5();
  v7 = sub_1E4203FF4();
  MEMORY[0x1EEE9AC00](v7 - 8);
  OUTLINED_FUNCTION_5();
  sub_1E32ADE38();
  sub_1E4203FE4();
  sub_1E3274998(&qword_1EE23B1F0, MEMORY[0x1E69E8030]);
  v8 = OUTLINED_FUNCTION_39_9();
  __swift_instantiateConcreteTypeFromMangledNameV2(v8);
  sub_1E328FD38(&qword_1EE23B490, &unk_1ECF326B0);
  sub_1E42072E4();
  (*(v1 + 104))(v5, *MEMORY[0x1E69E8090], v9);
  qword_1EE2AAFD8 = sub_1E4206A44();
  OUTLINED_FUNCTION_25_2();
}

uint64_t *sub_1E37AF264()
{
  if (qword_1EE2A1590 != -1)
  {
    OUTLINED_FUNCTION_20_20();
  }

  return &qword_1EE2AAFD8;
}

uint64_t sub_1E37AF2A4()
{
  v1 = *(v0 + 72);
  v2 = 1;
  switch(v1)
  {
    case 1:
      goto LABEL_8;
    case 2:
      OUTLINED_FUNCTION_29_6();
      goto LABEL_7;
    case 3:
      OUTLINED_FUNCTION_28_12();
      goto LABEL_7;
    case 4:
      OUTLINED_FUNCTION_30_11();
      goto LABEL_7;
    case 5:
      OUTLINED_FUNCTION_10_25();
      goto LABEL_7;
    default:
LABEL_7:
      v2 = sub_1E42079A4();
LABEL_8:

      return v2 & 1;
  }
}

uint64_t sub_1E37AF35C()
{
  switch(*(v0 + 72))
  {
    case 1:
      OUTLINED_FUNCTION_31_9();
      goto LABEL_7;
    case 2:

      goto LABEL_8;
    case 3:
      OUTLINED_FUNCTION_28_12();
      goto LABEL_7;
    case 4:
      OUTLINED_FUNCTION_30_11();
      goto LABEL_7;
    case 5:
      OUTLINED_FUNCTION_10_25();
      goto LABEL_7;
    default:
LABEL_7:
      v1 = OUTLINED_FUNCTION_17_17();

      if (v1)
      {
LABEL_8:
        v2 = 1;
      }

      else
      {
        sub_1E37AF890();
        type metadata accessor for ServiceRequest.SavedResponseType();
        sub_1E4206374();
        swift_getWitnessTable();
        v3 = sub_1E4206754();

        v2 = v3 ^ 1;
      }

      return v2 & 1;
  }
}

uint64_t sub_1E37AF4B8()
{
  v1 = *(v0 + 72);
  v2 = 1;
  switch(v1)
  {
    case 1:
      OUTLINED_FUNCTION_31_9();
      goto LABEL_6;
    case 2:
      OUTLINED_FUNCTION_29_6();
      goto LABEL_6;
    case 3:
      goto LABEL_7;
    case 4:
      OUTLINED_FUNCTION_30_11();
      goto LABEL_6;
    case 5:
      OUTLINED_FUNCTION_10_25();
      goto LABEL_6;
    default:
LABEL_6:
      v2 = OUTLINED_FUNCTION_17_17();
LABEL_7:

      return v2 & 1;
  }
}

uint64_t sub_1E37AF56C()
{
  v1 = *(v0 + 72);
  v2 = 1;
  switch(v1)
  {
    case 1:
      OUTLINED_FUNCTION_31_9();
      goto LABEL_7;
    case 2:
      OUTLINED_FUNCTION_29_6();
      goto LABEL_7;
    case 3:
      OUTLINED_FUNCTION_28_12();
      goto LABEL_7;
    case 4:
      goto LABEL_8;
    case 5:
      OUTLINED_FUNCTION_10_25();
      goto LABEL_7;
    default:
LABEL_7:
      v2 = sub_1E42079A4();
LABEL_8:

      return v2 & 1;
  }
}

uint64_t sub_1E37AF624()
{
  OUTLINED_FUNCTION_5_0();
  v1 = *(v0 + 56);

  return v1;
}

uint64_t sub_1E37AF668(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 56) = a1;
  *(v2 + 64) = a2;
}

uint64_t sub_1E37AF70C()
{
  sub_1E42074B4();

  v2 = (*(*v0 + 192))(v1);
  MEMORY[0x1E69109E0](v2);

  MEMORY[0x1E69109E0](3815998, 0xE300000000000000);
  return 0x5265636976726553;
}

uint64_t sub_1E37AF7F8(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 152) = a1;
}

uint64_t sub_1E37AF890()
{
  if (*(v0 + 160))
  {
    v1 = *(v0 + 160);
  }

  else
  {
    type metadata accessor for ServiceRequest.SavedResponseType();
    v1 = sub_1E4205C34();
    *(v0 + 160) = v1;
  }

  return v1;
}

uint64_t sub_1E37AF928(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  *(v8 + 72) = 0;
  *(v8 + 136) = 0u;
  *(v8 + 152) = 0u;
  v9 = *(a1 + 16);
  *(v8 + 80) = *a1;
  *(v8 + 96) = v9;
  *(v8 + 112) = *(a1 + 32);
  *(v8 + 128) = *(a1 + 48);
  sub_1E3251BE8(a2, v8 + 16);
  *(v8 + 56) = a3;
  *(v8 + 64) = a4;
  return v8;
}

uint64_t sub_1E37AF9B4()
{
  (*(*v0 + 376))();
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  sub_1E37B53A4(v0 + 80);

  return v0;
}

uint64_t sub_1E37AFA30()
{
  sub_1E37AF9B4();

  return MEMORY[0x1EEE6BDC0](v0, 168, 7);
}

void sub_1E37AFA64()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v0;
  v51 = *v0;
  v3 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_4_6();
  v9 = v7 - v8;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v49 - v11;
  v13 = sub_1E37AF70C();
  v15 = v14;
  if (sub_1E37AEAD8(v0[72]) == 0x7964616572 && v16 == 0xE500000000000000)
  {
  }

  else
  {
    sub_1E42079A4();
    OUTLINED_FUNCTION_73_1();
    if ((v1 & 1) == 0)
    {
      v18 = sub_1E324FBDC();
      (*(v5 + 16))(v9, v18, v3);

      v19 = sub_1E41FFC94();
      v20 = sub_1E4206814();

      if (os_log_type_enabled(v19, v20))
      {
        OUTLINED_FUNCTION_49_0();
        v52 = OUTLINED_FUNCTION_40_10();
        *v13 = 136446466;
        v21 = OUTLINED_FUNCTION_53();
        v24 = sub_1E3270FC8(v21, v22, v23);

        *(v13 + 4) = v24;
        OUTLINED_FUNCTION_59_3();
        v25 = v2[72];

        v26 = sub_1E37AEAD8(v25);
        v28 = sub_1E3270FC8(v26, v27, &v52);

        *(v13 + 14) = v28;
        OUTLINED_FUNCTION_71_8(&dword_1E323F000, v19, v20, "%{public}s trying to start a request which is not ready, state: %s");
        swift_arrayDestroy();
        OUTLINED_FUNCTION_6_0();
        OUTLINED_FUNCTION_21_0();
      }

      else
      {
      }

      (*(v5 + 8))(v9, v3);
      goto LABEL_15;
    }
  }

  v0[72] = 1;
  v29 = sub_1E324FBDC();
  (*(v5 + 16))(v12, v29, v3);

  v30 = sub_1E41FFC94();
  v31 = v15;
  v32 = sub_1E4206814();

  if (os_log_type_enabled(v30, v32))
  {
    v33 = OUTLINED_FUNCTION_49_0();
    v50 = v3;
    v34 = v33;
    v52 = swift_slowAlloc();
    *v34 = 136446466;
    *(v34 + 4) = sub_1E3270FC8(v13, v31, &v52);
    *(v34 + 12) = 2080;
    v49 = v31;
    v35 = sub_1E37AEFC0();
    v37 = v13;
    v38 = OUTLINED_FUNCTION_58_0(v35, v36);

    *(v34 + 14) = v38;
    v39 = v32;
    v40 = v49;
    _os_log_impl(&dword_1E323F000, v30, v39, "%{public}s performing model service request with: <%s>", v34, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_6_0();

    v41 = (*(v5 + 8))(v12, v50);
  }

  else
  {

    v41 = (*(v5 + 8))(v12, v3);
    v37 = v13;
    v40 = v31;
  }

  v42 = (*(*v2 + 192))(v41);
  v44 = v43;
  v45 = v51;
  v46 = *(v51 + 80);
  type metadata accessor for VideosEnginePromiseResponse();
  sub_1E3781F38();
  sub_1E42005F4();
  OUTLINED_FUNCTION_4_0();
  v47 = swift_allocObject();
  swift_weakInit();
  OUTLINED_FUNCTION_67_6();
  v48 = swift_allocObject();
  v48[2] = v46;
  v48[3] = *(v45 + 88);
  v48[4] = v47;
  v48[5] = v37;
  v48[6] = v40;
  v48[7] = v42;
  v48[8] = v44;
  sub_1E4200604();
LABEL_15:
  OUTLINED_FUNCTION_25_2();
}

void sub_1E37AFF2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  OUTLINED_FUNCTION_31_1();
  v22 = v21;
  v127 = v23;
  v128 = v24;
  v133 = v25;
  v129 = v26;
  v28 = v27;
  v131 = v29;
  type metadata accessor for VideosEnginePromiseResponse();
  sub_1E3781F38();
  OUTLINED_FUNCTION_32_10();
  v30 = sub_1E4207BC4();
  OUTLINED_FUNCTION_0_10();
  v125 = v31;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v32);
  v34 = v112 - v33;
  v35 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v37 = v36;
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_4_6();
  v41 = v39 - v40;
  MEMORY[0x1EEE9AC00](v42);
  OUTLINED_FUNCTION_25_3();
  v123 = v43;
  OUTLINED_FUNCTION_138();
  v126 = sub_1E41FFBF4();
  OUTLINED_FUNCTION_0_10();
  v124 = v44;
  v46 = *(v45 + 64);
  MEMORY[0x1EEE9AC00](v47);
  MEMORY[0x1EEE9AC00](v48);
  OUTLINED_FUNCTION_25_3();
  v132 = v49;
  OUTLINED_FUNCTION_5_0();
  Strong = swift_weakLoadStrong();
  v130 = v28;
  if (Strong)
  {
    v118 = v112 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
    v119 = v22;
    v121 = v37;
    v122 = v35;
    v51 = Strong;
    __swift_project_boxed_opaque_existential_1((Strong + 16), *(Strong + 40));
    v52 = OUTLINED_FUNCTION_74();
    v54 = v53(v52);
    if (v54)
    {
      v120 = v54;
      v117 = a21;
      v55 = VUISignpostLogObject();

      sub_1E41FFBB4();
      v125 = v51;
      v57 = *(v51 + 80);
      v56 = v51 + 80;
      v58 = sub_1E3D46AB8(v57);
      v60 = v59;
      __swift_project_boxed_opaque_existential_1((v56 + 8), *(v56 + 32));
      v61 = OUTLINED_FUNCTION_51_7();
      v63 = v62(v61);
      v65 = v64;
      v112[3] = sub_1E4206BA4();
      v66 = VUISignpostLogObject();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30870);
      v67 = swift_allocObject();
      *(v67 + 16) = xmmword_1E4297BD0;
      v68 = MEMORY[0x1E69E6158];
      *(v67 + 56) = MEMORY[0x1E69E6158];
      v69 = sub_1E3283528();
      v70 = v128;
      *(v67 + 32) = v127;
      *(v67 + 40) = v70;
      *(v67 + 96) = v68;
      *(v67 + 104) = v69;
      *(v67 + 64) = v69;
      *(v67 + 72) = v58;
      v116 = v58;
      *(v67 + 80) = v60;
      *(v67 + 136) = v68;
      *(v67 + 144) = v69;
      v114 = v63;
      *(v67 + 112) = v63;
      *(v67 + 120) = v65;

      v115 = v60;

      v113 = v65;

      OUTLINED_FUNCTION_62_6();
      OUTLINED_FUNCTION_61_4();
      sub_1E41FFB94();

      v71 = sub_1E324FBDC();
      v72 = v121;
      v73 = v122;
      v74 = v123;
      (*(v121 + 16))(v123, v71, v122);
      v75 = v133;

      v76 = sub_1E41FFC94();
      sub_1E4206814();

      if (OUTLINED_FUNCTION_56_4())
      {
        OUTLINED_FUNCTION_6_21();
        v134[0] = OUTLINED_FUNCTION_16_15();
        *v68 = 136446210;
        *(v68 + 4) = sub_1E3270FC8(v129, v75, v134);
        OUTLINED_FUNCTION_6_29();
        _os_log_impl(v77, v78, v79, v80, v81, 0xCu);
        OUTLINED_FUNCTION_9_22();
        OUTLINED_FUNCTION_51_2();
      }

      (*(v72 + 8))(v74, v73);
      sub_1E3D45418(1, v56, v120);
      v123 = v82;
      OUTLINED_FUNCTION_4_0();
      v122 = swift_allocObject();
      swift_weakInit();
      v83 = v124;
      v84 = v118;
      (*(v124 + 16))(v118, v132, v126);
      v85 = (*(v83 + 80) + 32) & ~*(v83 + 80);
      v86 = (v46 + v85 + 7) & 0xFFFFFFFFFFFFFFF8;
      v87 = (v86 + 23) & 0xFFFFFFFFFFFFFFF8;
      v88 = (v87 + 15) & 0xFFFFFFFFFFFFFFF8;
      v89 = (v88 + 23) & 0xFFFFFFFFFFFFFFF8;
      v90 = (v89 + 23) & 0xFFFFFFFFFFFFFFF8;
      v91 = swift_allocObject();
      v92 = v117;
      *(v91 + 16) = v119;
      *(v91 + 24) = v92;
      v93 = v91 + v85;
      v94 = v126;
      (*(v83 + 32))(v93, v84, v126);
      v95 = (v91 + v86);
      v96 = v128;
      v97 = v133;
      *v95 = v129;
      v95[1] = v97;
      *(v91 + v87) = v122;
      v98 = (v91 + v88);
      *v98 = v127;
      v98[1] = v96;
      v99 = (v91 + v89);
      v100 = v115;
      *v99 = v116;
      v99[1] = v100;
      v101 = (v91 + v90);
      v102 = v113;
      *v101 = v114;
      v101[1] = v102;
      v103 = (v91 + ((v90 + 23) & 0xFFFFFFFFFFFFFFF8));
      v104 = v130;
      *v103 = v131;
      v103[1] = v104;

      v105 = sub_1E41EC148(sub_1E37B5AE4, v91);

      (*(v83 + 8))(v132, v94);
      *(v125 + 144) = v105;

      goto LABEL_10;
    }

    v37 = v121;
    v35 = v122;
  }

  sub_1E324FBDC();
  OUTLINED_FUNCTION_22_6();
  v106(v41);
  v107 = v133;

  v108 = sub_1E41FFC94();
  v109 = v35;
  v110 = sub_1E42067F4();

  if (os_log_type_enabled(v108, v110))
  {
    v111 = OUTLINED_FUNCTION_6_21();
    v134[0] = OUTLINED_FUNCTION_100();
    *v111 = 136446210;
    *(v111 + 4) = sub_1E3270FC8(v129, v107, v134);
    _os_log_impl(&dword_1E323F000, v108, v110, "%{public}s failed to get app context, failing promise.", v111, 0xCu);
    OUTLINED_FUNCTION_72_8();
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_6_0();
  }

  (*(v37 + 8))(v41, v109);
  *v34 = 0xD00000000000001CLL;
  *(v34 + 1) = 0x80000001E425C540;
  v34[16] = 1;
  swift_storeEnumTagMultiPayload();
  v131(v34);
  (*(v125 + 8))(v34, v30);
LABEL_10:
  OUTLINED_FUNCTION_25_2();
}

void sub_1E37B06BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  OUTLINED_FUNCTION_31_1();
  v127 = v28;
  v128 = v29;
  v126 = v30;
  v138 = v31;
  v33 = v32;
  v35 = v34;
  v37 = v36;
  v39 = v38;
  v119 = a26;
  type metadata accessor for VideosEnginePromiseResponse();
  sub_1E3781F38();
  OUTLINED_FUNCTION_32_10();
  v120 = v40;
  v125 = sub_1E4207BC4();
  OUTLINED_FUNCTION_0_10();
  v124 = v41;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v42);
  OUTLINED_FUNCTION_44();
  v123 = v43;
  OUTLINED_FUNCTION_138();
  v118 = sub_1E41FFBF4();
  OUTLINED_FUNCTION_0_10();
  v117 = v44;
  MEMORY[0x1EEE9AC00](v45);
  v115 = v46;
  v116 = &v114 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  OUTLINED_FUNCTION_138();
  v47 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v49 = v48;
  MEMORY[0x1EEE9AC00](v50);
  OUTLINED_FUNCTION_4_6();
  v132 = v51 - v52;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v53);
  v121 = &v114 - v54;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v55);
  OUTLINED_FUNCTION_47_3();
  v56 = *(v39 + 8);
  v133 = *v39;
  v136 = v56;
  v122 = *(v39 + 16);
  v135 = *(v39 + 17);
  sub_1E4206B94();
  v57 = VUISignpostLogObject();
  OUTLINED_FUNCTION_61_4();
  v129 = v37;
  sub_1E41FFBA4();

  v58 = sub_1E324FBDC();
  v59 = *(v49 + 16);
  v134 = v58;
  (v59)(v27);

  v60 = sub_1E41FFC94();
  v61 = sub_1E4206814();

  v62 = os_log_type_enabled(v60, v61);
  v139 = v49;
  v131 = v35;
  v137 = v33;
  if (v62)
  {
    v63 = v35;
    v64 = OUTLINED_FUNCTION_6_21();
    v65 = OUTLINED_FUNCTION_100();
    v143[0] = v65;
    *v64 = 136446210;
    *(v64 + 4) = sub_1E3270FC8(v63, v33, v143);
    _os_log_impl(&dword_1E323F000, v60, v61, "%{public}s received promise operation response.", v64, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v65);
    OUTLINED_FUNCTION_21_0();
    OUTLINED_FUNCTION_6_0();

    v66 = *(v139 + 8);
  }

  else
  {

    v66 = *(v49 + 8);
  }

  v67 = OUTLINED_FUNCTION_63_0();
  v66(v67);
  OUTLINED_FUNCTION_5_0();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    *(Strong + 144) = 0;
  }

  v130 = a24;
  if (v135)
  {
    v69 = v132;
    v59();
    v70 = v137;

    v71 = v133;
    v72 = v136;
    v73 = v122;
    sub_1E37B5BC0(v133, v136, v122, 1);
    v74 = sub_1E41FFC94();
    v75 = sub_1E42067F4();

    if (os_log_type_enabled(v74, v75))
    {
      OUTLINED_FUNCTION_49_0();
      v114 = a25;
      v140[0] = OUTLINED_FUNCTION_40_10();
      *a25 = 136446466;
      *(a25 + 4) = sub_1E3270FC8(v131, v70, v140);
      OUTLINED_FUNCTION_59_3();
      v141[0] = v71;
      v141[1] = v136;
      v142 = v73;
      v76 = sub_1E4207AB4();
      v78 = sub_1E3270FC8(v76, v77, v140);

      *(a25 + 14) = v78;
      OUTLINED_FUNCTION_71_8(&dword_1E323F000, v74, v75, "%{public}s model service request failed with error:<%s>");
      swift_arrayDestroy();
      v72 = v136;
      OUTLINED_FUNCTION_6_0();
      OUTLINED_FUNCTION_6_0();

      v79 = v132;
    }

    else
    {

      v79 = v69;
    }

    (v66)(v79, v47);
    v112 = v123;
    *v123 = v71;
    v112[1] = v72;
    *(v112 + 16) = v73;
    v113 = v125;
    swift_storeEnumTagMultiPayload();
    v130(v112);
    (*(v124 + 8))(v112, v113);
    goto LABEL_22;
  }

  (v59)(v121, v134, v47);
  v80 = v137;

  v81 = sub_1E41FFC94();
  v82 = sub_1E4206814();

  v83 = os_log_type_enabled(v81, v82);
  v114 = a25;
  if (v83)
  {
    OUTLINED_FUNCTION_6_21();
    v84 = OUTLINED_FUNCTION_16_15();
    v141[0] = v84;
    *a24 = 136446210;
    *(a24 + 4) = sub_1E3270FC8(v131, v80, v141);
    _os_log_impl(&dword_1E323F000, v81, v82, "%{public}s promise operation request was successful.", a24, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v84);
    OUTLINED_FUNCTION_21_0();
    OUTLINED_FUNCTION_51_2();
  }

  v85 = OUTLINED_FUNCTION_53();
  v66(v85);
  OUTLINED_FUNCTION_5_0();
  v86 = swift_weakLoadStrong();
  if (v86)
  {
    *(v86 + 136) = v133;
  }

  sub_1E4206BA4();
  v87 = VUISignpostLogObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30870);
  v88 = swift_allocObject();
  *(v88 + 16) = xmmword_1E4297BD0;
  v89 = MEMORY[0x1E69E6158];
  *(v88 + 56) = MEMORY[0x1E69E6158];
  v90 = sub_1E3283528();
  v91 = v128;
  *(v88 + 32) = v126;
  *(v88 + 40) = v91;
  *(v88 + 96) = v89;
  *(v88 + 104) = v90;
  v92 = v127;
  *(v88 + 64) = v90;
  *(v88 + 72) = v92;
  *(v88 + 80) = a21;
  *(v88 + 136) = v89;
  *(v88 + 144) = v90;
  *(v88 + 112) = a22;
  *(v88 + 120) = a23;

  OUTLINED_FUNCTION_62_6();
  OUTLINED_FUNCTION_61_4();
  v93 = v129;
  sub_1E41FFB94();

  OUTLINED_FUNCTION_5_0();
  v94 = swift_weakLoadStrong();
  if (v94)
  {
    v95 = v94;
    OUTLINED_FUNCTION_5_0();
    v96 = swift_weakLoadStrong();
    if (v96)
    {
      v97 = *(v96 + 136);

      if (!v97)
      {
LABEL_21:
        *(v95 + 144) = v97;

        goto LABEL_22;
      }

      v99 = (*(*v97 + 232))(v98);

      if (v99)
      {
        v139 = a27;
        OUTLINED_FUNCTION_4_0();
        v136 = swift_allocObject();
        OUTLINED_FUNCTION_5_0();
        swift_weakLoadStrong();
        swift_weakInit();

        v100 = v117;
        v101 = *(v117 + 16);
        v138 = v99;
        v102 = v116;
        v103 = v118;
        v101(v116, v93, v118);
        v104 = (*(v100 + 80) + 32) & ~*(v100 + 80);
        v105 = (v115 + v104 + 7) & 0xFFFFFFFFFFFFFFF8;
        v106 = (v105 + 23) & 0xFFFFFFFFFFFFFFF8;
        v107 = swift_allocObject();
        v108 = v139;
        *(v107 + 16) = v119;
        *(v107 + 24) = v108;
        (*(v100 + 32))(v107 + v104, v102, v103);
        v109 = (v107 + v105);
        *v109 = v131;
        v109[1] = v80;
        *(v107 + v106) = v136;
        v110 = (v107 + ((v106 + 15) & 0xFFFFFFFFFFFFFFF8));
        v111 = v114;
        *v110 = v130;
        v110[1] = v111;

        v97 = sub_1E41EC148(sub_1E37B5BCC, v107);

        goto LABEL_21;
      }
    }

    v97 = 0;
    goto LABEL_21;
  }

LABEL_22:
  OUTLINED_FUNCTION_25_2();
}

void sub_1E37B10BC()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v18 = v2;
  v4 = v3;
  v5 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_5();
  v11 = v10 - v9;
  v21 = *(v4 + 8);
  v22 = *v4;
  v19 = *(v4 + 17);
  v20 = *(v4 + 16);
  sub_1E4206B94();
  v12 = VUISignpostLogObject();
  OUTLINED_FUNCTION_61_4();
  sub_1E41FFBA4();

  sub_1E324FBDC();
  OUTLINED_FUNCTION_22_6();
  v13(v11);

  v14 = sub_1E41FFC94();
  v15 = sub_1E4206814();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = OUTLINED_FUNCTION_6_21();
    v23 = OUTLINED_FUNCTION_100();
    *v16 = 136446210;
    *(v16 + 4) = sub_1E3270FC8(v18, v1, &v23);
    _os_log_impl(&dword_1E323F000, v14, v15, "%{public}s received model service response", v16, 0xCu);
    OUTLINED_FUNCTION_72_8();
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_6_0();
  }

  (*(v7 + 8))(v11, v5);
  OUTLINED_FUNCTION_5_0();
  if (swift_weakLoadStrong())
  {
    sub_1E37B130C(v22, v21, v20 | (v19 << 8));
  }

  OUTLINED_FUNCTION_5_0();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    *(Strong + 144) = 0;
  }

  OUTLINED_FUNCTION_25_2();
}

void sub_1E37B130C(uint64_t a1, uint64_t a2, __int16 a3)
{
  if ((a3 & 0x100) != 0)
  {
    sub_1E37B3384();
  }

  else
  {
    sub_1E37B2E80();
  }
}

void sub_1E37B1320()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v0;
  v3 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_47_2();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v33 - v8;
  v10 = sub_1E37AEAD8(*(v0 + 72));
  v12 = v11;
  if (v10 == 0x676E696E6E7572 && v11 == 0xE700000000000000)
  {
  }

  else
  {
    v14 = sub_1E42079A4();

    if ((v14 & 1) == 0)
    {
      sub_1E324FBDC();
      OUTLINED_FUNCTION_0_11();
      v15(v1);
      swift_retain_n();
      v16 = sub_1E41FFC94();
      v17 = sub_1E42067F4();
      if (os_log_type_enabled(v16, v17))
      {
        OUTLINED_FUNCTION_49_0();
        v34 = OUTLINED_FUNCTION_40_10();
        *v12 = 136446466;
        v18 = sub_1E37AF70C();
        v20 = OUTLINED_FUNCTION_58_0(v18, v19);

        *(v12 + 4) = v20;
        OUTLINED_FUNCTION_59_3();
        v21 = *(v2 + 72);

        v22 = sub_1E37AEAD8(v21);
        v24 = OUTLINED_FUNCTION_58_0(v22, v23);

        *(v12 + 14) = v24;
        OUTLINED_FUNCTION_71_8(&dword_1E323F000, v16, v17, "%{public}s request is not running so can't be suspended: current state: %s");
        swift_arrayDestroy();
        OUTLINED_FUNCTION_6_0();
        OUTLINED_FUNCTION_21_0();
      }

      else
      {
      }

      (*(v5 + 8))(v1, v3);
      goto LABEL_14;
    }
  }

  *(v2 + 72) = 2;
  sub_1E324FBDC();
  OUTLINED_FUNCTION_0_11();
  v25(v9);

  v26 = sub_1E41FFC94();
  v27 = sub_1E4206814();

  if (os_log_type_enabled(v26, v27))
  {
    v28 = OUTLINED_FUNCTION_6_21();
    v29 = OUTLINED_FUNCTION_100();
    v34 = v29;
    *v28 = 136446210;
    v30 = sub_1E37AF70C();
    v32 = OUTLINED_FUNCTION_58_0(v30, v31);

    *(v28 + 4) = v32;
    _os_log_impl(&dword_1E323F000, v26, v27, "%{public}s suspended request", v28, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v29);
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_6_0();
  }

  (*(v5 + 8))(v9, v3);
LABEL_14:
  OUTLINED_FUNCTION_25_2();
}

void sub_1E37B1630()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v0;
  v3 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_4_6();
  v9 = v7 - v8;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v38 - v11;
  v40 = sub_1E37AF70C();
  v41 = v13;
  if (sub_1E37AEAD8(*(v0 + 72)) != 0x65646E6570737573 || v14 != 0xE900000000000064)
  {
    OUTLINED_FUNCTION_17_17();
    OUTLINED_FUNCTION_73_1();
    if (v1)
    {
      goto LABEL_14;
    }

    v1 = 102;
    if (sub_1E37AEAD8(*(v0 + 72)) != 0x64656873696E6966 || v16 != 0xE800000000000000)
    {
      sub_1E42079A4();
      OUTLINED_FUNCTION_73_1();
      v18 = sub_1E324FBDC();
      (*(v5 + 16))(v9, v18, v3);

      v19 = v41;

      v20 = sub_1E41FFC94();
      v21 = sub_1E4206814();

      if (os_log_type_enabled(v20, v21))
      {
        OUTLINED_FUNCTION_49_0();
        v42 = OUTLINED_FUNCTION_40_10();
        *v5 = 136446466;
        v22 = sub_1E3270FC8(v40, v19, &v42);

        *(v5 + 4) = v22;
        OUTLINED_FUNCTION_59_3();
        v23 = *(v2 + 72);

        v24 = sub_1E37AEAD8(v23);
        v26 = sub_1E3270FC8(v24, v25, &v42);

        *(v5 + 14) = v26;
        OUTLINED_FUNCTION_71_8(&dword_1E323F000, v20, v21, "%{public}s trying to resume a request which is neither suspended nor finished:%s");
        swift_arrayDestroy();
        OUTLINED_FUNCTION_6_0();
        OUTLINED_FUNCTION_21_0();
      }

      else
      {
      }

      (*(v5 + 8))(v9, v3);
      goto LABEL_26;
    }
  }

LABEL_14:
  if (sub_1E37AEAD8(*(v0 + 72)) == 0x65646E6570737573 && v27 == 0xE900000000000064)
  {

LABEL_21:

    *(v0 + 72) = 1;
    goto LABEL_26;
  }

  OUTLINED_FUNCTION_17_17();
  OUTLINED_FUNCTION_73_1();
  if (v1)
  {
    goto LABEL_21;
  }

  sub_1E324FBDC();
  OUTLINED_FUNCTION_22_6();
  v29(v12);
  swift_retain_n();
  v30 = sub_1E41FFC94();
  v31 = sub_1E4206814();
  if (os_log_type_enabled(v30, v31))
  {
    v32 = OUTLINED_FUNCTION_49_0();
    v39 = OUTLINED_FUNCTION_100();
    v42 = v39;
    *v32 = 136446466;
    v33 = sub_1E37AF70C();
    v35 = OUTLINED_FUNCTION_58_0(v33, v34);

    *(v32 + 4) = v35;
    *(v32 + 12) = 2048;
    sub_1E37AF890();
    type metadata accessor for ServiceRequest.SavedResponseType();
    v36 = sub_1E4206334();

    *(v32 + 14) = v36;

    _os_log_impl(&dword_1E323F000, v30, v31, "%{public}s %ld saved responses.", v32, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v39);
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_6_0();
  }

  else
  {
  }

  (*(v5 + 8))(v12, v3);
  v42 = sub_1E37AF890();
  MEMORY[0x1EEE9AC00](v42);
  v37 = v41;
  *(&v38 - 4) = v40;
  *(&v38 - 3) = v37;
  *(&v38 - 2) = v0;
  type metadata accessor for ServiceRequest.SavedResponseType();
  sub_1E4206374();
  OUTLINED_FUNCTION_15_6();
  swift_getWitnessTable();
  sub_1E4206234();

  v42 = sub_1E37AF890();
  sub_1E4206364();
  sub_1E37AF918(v42);
LABEL_26:
  OUTLINED_FUNCTION_25_2();
}

void sub_1E37B1B80()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v1;
  v110 = v3;
  v107 = v4;
  v118 = v5;
  v6 = type metadata accessor for VideosEnginePromiseResponse();
  sub_1E3781F38();
  sub_1E4207BC4();
  OUTLINED_FUNCTION_0_10();
  v114 = v8;
  v115 = v7;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_44();
  v113 = v10;
  OUTLINED_FUNCTION_138();
  sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v111 = v12;
  v112 = v11;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_4_6();
  v106 = v13 - v14;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v15);
  v105 = &v102 - v16;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_25_3();
  v108 = v2;
  v109 = v18;
  OUTLINED_FUNCTION_32_10();
  v19 = type metadata accessor for ServiceRequest.SavedResponseType();
  OUTLINED_FUNCTION_0_10();
  v21 = v20;
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_47_2();
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v102 - v24;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1ECF2C3F0);
  v117 = v6;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  OUTLINED_FUNCTION_0_10();
  v116 = v27;
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_4_6();
  v31 = (v29 - v30);
  MEMORY[0x1EEE9AC00](v32);
  v34 = &v102 - v33;
  v36 = MEMORY[0x1EEE9AC00](v35);
  v38 = &v102 - v37;
  v39 = *(v21 + 16);
  (v39)(v25, v118, v19, v36);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v40 = *(v21 + 8);
    v40(v25, v19);
    v39(v0, v118, v19);
    OUTLINED_FUNCTION_74();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v41 = *v0;
      v42 = *(v0 + 8);
      v43 = *(v0 + 16);
      v118 = *(v0 + 24);

      v44 = sub_1E324FBDC();
      v45 = v111;
      v46 = v112;
      v47 = v106;
      (*(v111 + 16))(v106, v44, v112);
      v48 = v110;

      v49 = sub_1E41FFC94();
      v50 = sub_1E42067F4();

      if (os_log_type_enabled(v49, v50))
      {
        v51 = OUTLINED_FUNCTION_6_21();
        v117 = v41;
        v52 = v51;
        v53 = v42;
        v54 = OUTLINED_FUNCTION_100();
        v119 = v54;
        *v52 = 136446210;
        *(v52 + 4) = sub_1E3270FC8(v107, v48, &v119);
        _os_log_impl(&dword_1E323F000, v49, v50, "%{public}s there's no response saved, returning error.", v52, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v54);
        v42 = v53;
        OUTLINED_FUNCTION_6_0();
        v41 = v117;
        OUTLINED_FUNCTION_6_0();

        (*(v45 + 8))(v106, v46);
      }

      else
      {

        (*(v45 + 8))(v47, v46);
      }

      v87 = v113;
      *v113 = v41;
      v87[1] = v42;
      *(v87 + 16) = v43;
      swift_storeEnumTagMultiPayload();
      v88 = OUTLINED_FUNCTION_39_9();
      sub_1E3781F8C(v88, v89, v43);
      v118(v87);

      v90 = OUTLINED_FUNCTION_39_9();
      sub_1E37B5ACC(v90, v91, v43);

      v92 = OUTLINED_FUNCTION_74();
      v93(v92);
LABEL_17:
      *(v108 + 136) = 0;

      goto LABEL_18;
    }

    v70 = OUTLINED_FUNCTION_74();
    (v40)(v70);
  }

  else
  {
    v55 = v116;
    (*(v116 + 32))(v38, v25, TupleTypeMetadata2);
    v56 = *(v55 + 16);
    v56(v34, v38, TupleTypeMetadata2);
    v57 = &v34[*(TupleTypeMetadata2 + 48)];
    v58 = *v57;
    v106 = *(v57 + 1);
    v59 = v117;
    v103 = *(v117 - 8);
    v104 = v58;
    v60 = *(v103 + 8);
    v118 = v34;
    v60(v34, v117);
    v102 = v56;
    v56(v31, v38, TupleTypeMetadata2);

    v61 = *&v31[*(v59 + 28)];

    v60(v31, v59);
    if (!v61)
    {
      sub_1E324FBDC();
      OUTLINED_FUNCTION_65_3();
      v71 = v105;
      v72(v105);

      v73 = sub_1E41FFC94();
      sub_1E4206814();

      if (OUTLINED_FUNCTION_56_4())
      {
        OUTLINED_FUNCTION_6_21();
        v119 = OUTLINED_FUNCTION_16_15();
        *(v71 + 4) = OUTLINED_FUNCTION_70_6(4.8751e-34);
        OUTLINED_FUNCTION_6_29();
        _os_log_impl(v74, v75, v76, v77, v78, 0xCu);
        OUTLINED_FUNCTION_9_22();
        OUTLINED_FUNCTION_51_2();

        (*(v34 + 1))(v105, v39);
      }

      else
      {

        (*(v34 + 1))(v71, v39);
      }

      v94 = OUTLINED_FUNCTION_44_14();
      v95(v94);

      v96 = OUTLINED_FUNCTION_43_9();
      v97(v96);
      OUTLINED_FUNCTION_68_7();
      v104(v71);

      v98 = OUTLINED_FUNCTION_45_7();
      v99(v98);
      v100 = OUTLINED_FUNCTION_39_9();
      v101(v100);
      goto LABEL_17;
    }

    sub_1E324FBDC();
    OUTLINED_FUNCTION_65_3();
    v62 = v109;
    v63(v109);

    v64 = sub_1E41FFC94();
    sub_1E4206814();

    if (OUTLINED_FUNCTION_56_4())
    {
      OUTLINED_FUNCTION_6_21();
      v119 = OUTLINED_FUNCTION_16_15();
      *(v62 + 4) = OUTLINED_FUNCTION_70_6(4.8751e-34);
      OUTLINED_FUNCTION_6_29();
      _os_log_impl(v65, v66, v67, v68, v69, 0xCu);
      OUTLINED_FUNCTION_9_22();
      OUTLINED_FUNCTION_51_2();

      (*(v34 + 1))(v109, v39);
    }

    else
    {

      (*(v34 + 1))(v62, v39);
    }

    v79 = OUTLINED_FUNCTION_44_14();
    v80(v79);

    v81 = OUTLINED_FUNCTION_43_9();
    v82(v81);
    OUTLINED_FUNCTION_68_7();
    v104(v62);

    v83 = OUTLINED_FUNCTION_45_7();
    v84(v83);
    v85 = OUTLINED_FUNCTION_39_9();
    v86(v85);
  }

LABEL_18:
  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E37B2400()
{
  v1 = v0;
  *(v0 + 72) = 5;
  v6 = sub_1E37AF890();
  type metadata accessor for ServiceRequest.SavedResponseType();
  sub_1E4206374();
  sub_1E4206364();
  sub_1E37AF918(v6);
  v2 = *(v0 + 136);
  if (v2)
  {
    v3 = *(*v2 + 336);

    v3(v4);
  }

  *(v1 + 136) = 0;
}

uint64_t sub_1E37B26CC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30870);
  OUTLINED_FUNCTION_67_6();
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1E4297BE0;
  v2 = MEMORY[0x1E69E65A8];
  *(v1 + 56) = MEMORY[0x1E69E6530];
  *(v1 + 64) = v2;
  *(v1 + 32) = v0;

  return sub_1E4205F44();
}

uint64_t sub_1E37B2760()
{
  OUTLINED_FUNCTION_52_7();
  v10 = &unk_1F5D81370;
  v11 = &off_1F5D81210;
  v9[8] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF31B50);
  OUTLINED_FUNCTION_27_10();
  *(swift_allocObject() + 16) = xmmword_1E4297BE0;
  (*(*v0 + 320))();
  v9[0] = 0;
  v1 = OUTLINED_FUNCTION_7_46();
  sub_1E37B5450(v1, v8);
  type metadata accessor for DocumentServiceRequestContext();
  v2 = *(v0 + OBJC_IVAR____TtC8VideosUI29DocumentServiceRequestContext_controllerRef);
  v3 = *(v0 + OBJC_IVAR____TtC8VideosUI29DocumentServiceRequestContext_controllerRef + 8);

  MEMORY[0x1E69109E0](v2, v3);
  v4 = sub_1E37B53A4(v9);
  return OUTLINED_FUNCTION_55_6(v4, v5, v6);
}

uint64_t sub_1E37B2890()
{
  OUTLINED_FUNCTION_52_7();
  v10 = &unk_1F5D81370;
  v11 = &off_1F5D81210;
  v9[8] = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF31B50);
  OUTLINED_FUNCTION_27_10();
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1E4297BE0;
  (*(*v0 + 304))();
  v9[0] = 0;
  v12 = v1;
  sub_1E37B5450(v9, v8);
  type metadata accessor for CollectionServiceRequestContext();
  v2 = *(v0 + OBJC_IVAR____TtC8VideosUI31CollectionServiceRequestContext_requestType);

  if (v2 != 5)
  {
    ViewModelRequestType.rawValue.getter(v2);
  }

  type metadata accessor for ServiceRequest();
  v3 = OUTLINED_FUNCTION_74();
  MEMORY[0x1E69109E0](v3);

  v4 = sub_1E37B53A4(v9);
  return OUTLINED_FUNCTION_55_6(v4, v5, v6);
}

uint64_t sub_1E37B2A00(uint64_t a1)
{
  v10 = &unk_1F5D81400;
  v11 = &off_1F5D81220;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF31B50);
  OUTLINED_FUNCTION_27_10();
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1E4297BE0;
  (*(*a1 + 264))();
  v9[0] = 5;
  v12 = v2;
  type metadata accessor for ServiceRequest();
  sub_1E37B5450(v9, v8);
  v6 = type metadata accessor for SearchFragmentRequestContext();
  v7 = &off_1F5D8AF40;
  BYTE8(v4) = 0;
  *&v5 = a1;

  sub_1E42074B4();
  MEMORY[0x1E69109E0](0x7246686372616553, 0xEF2E746E656D6761);
  *&v4 = *(a1 + OBJC_IVAR____TtC8VideosUI28SearchFragmentRequestContext_requestType);
  sub_1E4207614();
  sub_1E37B53A4(v9);
  return sub_1E37AF928(v8, &v5, *(&v4 + 1), 0xE000000000000000);
}

uint64_t sub_1E37B2BA8()
{
  OUTLINED_FUNCTION_52_7();
  v8 = &unk_1F5D81490;
  v9 = &off_1F5D81230;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF31B50);
  OUTLINED_FUNCTION_27_10();
  *(swift_allocObject() + 16) = xmmword_1E4297BE0;
  (*(*v0 + 256))();
  v7[0] = 6;
  v1 = OUTLINED_FUNCTION_7_46();
  sub_1E37B5450(v1, v6);
  v4 = type metadata accessor for EpisodeCollectionServiceRequestContext();
  v5 = &off_1F5D8B008;
  *&v3 = v0;

  sub_1E37B53A4(v7);
  return sub_1E37AF928(v6, &v3, 0xD000000000000011, 0x80000001E425C430);
}

uint64_t sub_1E37B2CB8()
{
  OUTLINED_FUNCTION_52_7();
  v9 = &unk_1F5D81520;
  v10 = &off_1F5D81240;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF31B50);
  OUTLINED_FUNCTION_27_10();
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1E4297BE0;
  sub_1E3DAE148((v1 + 32));
  v8[0] = 7;
  v2 = OUTLINED_FUNCTION_7_46();
  sub_1E37B5450(v2, v7);
  v5 = type metadata accessor for AutoDownloadsServiceRequestContext();
  v6 = &off_1F5D85270;
  *&v4 = v0;

  sub_1E37B53A4(v8);
  return sub_1E37AF928(v7, &v4, 0x6E776F446F747541, 0xED00007364616F6CLL);
}

uint64_t sub_1E37B2D9C()
{
  OUTLINED_FUNCTION_52_7();
  v10 = &unk_1F5D815B0;
  v11 = &off_1F5D81250;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF31B50);
  OUTLINED_FUNCTION_27_10();
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1E4297BE0;
  sub_1E3C5F8F4((v1 + 32));
  v9[0] = 11;
  v2 = OUTLINED_FUNCTION_7_46();
  sub_1E37B5450(v2, v8);
  v6 = type metadata accessor for SportsCanonicalBannerScoreboardUpdate.RequestContext();
  v7 = &off_1F5D79988;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v5);
  sub_1E3781B94(v0, boxed_opaque_existential_1);
  sub_1E37B53A4(v9);
  return sub_1E37AF928(v8, &v5, 0xD000000000000019, 0x80000001E425C450);
}

void sub_1E37B2E80()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v1;
  v4 = v3;
  v43 = v5;
  v7 = v6;
  v45 = *v0;
  v8 = sub_1E4203FC4();
  OUTLINED_FUNCTION_0_10();
  v50 = v9;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_5();
  v48 = v12 - v11;
  OUTLINED_FUNCTION_138();
  v49 = sub_1E4203FF4();
  OUTLINED_FUNCTION_0_10();
  v47 = v13;
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_5();
  v46 = v16 - v15;
  OUTLINED_FUNCTION_138();
  v17 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v19 = v18;
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_5();
  v23 = v22 - v21;

  v24 = sub_1E37AF70C();
  v26 = v25;
  v27 = sub_1E324FBDC();
  v42 = v17;
  (*(v19 + 16))(v23, v27, v17);

  v28 = sub_1E41FFC94();
  v29 = sub_1E4206814();

  v44 = v24;
  if (os_log_type_enabled(v28, v29))
  {
    v41 = v4;
    v30 = OUTLINED_FUNCTION_49_0();
    v51[0] = swift_slowAlloc();
    *v30 = 136446466;
    *(v30 + 4) = sub_1E3270FC8(v24, v26, v51);
    *(v30 + 12) = 2080;
    v31 = sub_1E328692C(*(v7 + 16) == 0);
    v33 = v8;
    v34 = sub_1E3270FC8(v31, v32, v51);

    *(v30 + 14) = v34;
    v8 = v33;
    _os_log_impl(&dword_1E323F000, v28, v29, "%{public}s returned jsonDictionary, isEmpty:<%s>", v30, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_6_0();
    v4 = v41;
    OUTLINED_FUNCTION_6_0();
  }

  (*(v19 + 8))(v23, v42);
  if (qword_1EE2A1590 != -1)
  {
    OUTLINED_FUNCTION_20_20();
  }

  OUTLINED_FUNCTION_4_0();
  v35 = swift_allocObject();
  swift_weakInit();
  OUTLINED_FUNCTION_64_4();
  v36 = swift_allocObject();
  v36[2] = *(v45 + 80);
  v36[3] = *(v45 + 88);
  v36[4] = v35;
  v36[5] = v7;
  v36[6] = v7;
  v36[7] = v43;
  v36[8] = v44;
  v36[9] = v26;
  v36[10] = v4;
  v36[11] = v2;
  OUTLINED_FUNCTION_12_14(v36);
  v51[1] = 1107296256;
  v51[2] = sub_1E329EEC4;
  v51[3] = &block_descriptor_5;
  v37 = _Block_copy(v51);

  sub_1E4203FE4();
  OUTLINED_FUNCTION_4_2();
  sub_1E3274998(v38, v39);
  v40 = OUTLINED_FUNCTION_63_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(v40);
  sub_1E328FD38(&qword_1EE23B5D0, &qword_1ECF2A730);
  sub_1E42072E4();
  MEMORY[0x1E6911380](0, v46, v48, v37);
  _Block_release(v37);
  (*(v50 + 8))(v48, v8);
  (*(v47 + 8))(v46, v49);

  OUTLINED_FUNCTION_25_2();
}

void sub_1E37B3384()
{
  OUTLINED_FUNCTION_31_1();
  v48 = v1;
  v49 = v2;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v47 = *v0;
  v9 = sub_1E4203FC4();
  OUTLINED_FUNCTION_0_10();
  v53 = v10;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_5();
  v14 = v13 - v12;
  sub_1E4203FF4();
  OUTLINED_FUNCTION_0_10();
  v51 = v15;
  v52 = v16;
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_5();
  v50 = v18 - v17;
  OUTLINED_FUNCTION_138();
  v19 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v21 = v20;
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_5();
  v25 = v24 - v23;
  v55 = sub_1E37AF70C();
  v27 = v26;
  sub_1E324FBDC();
  OUTLINED_FUNCTION_48_4();
  v46 = v19;
  v28(v25);

  sub_1E3781F8C(v8, v6, v4);
  v29 = v6;
  v30 = sub_1E41FFC94();
  v31 = sub_1E42067F4();
  v54 = v27;

  v56 = v8;
  sub_1E37B5ACC(v8, v29, v4);
  if (os_log_type_enabled(v30, v31))
  {
    v45 = v9;
    v32 = OUTLINED_FUNCTION_49_0();
    v57 = swift_slowAlloc();
    *v32 = 136446466;
    *(v32 + 4) = sub_1E3270FC8(v55, v27, &v57);
    *(v32 + 12) = 2080;
    v58 = v8;
    v59 = v29;
    LOBYTE(v60) = v4;
    sub_1E3781F38();
    v33 = v29;
    v34 = sub_1E4207AB4();
    v36 = v14;
    v37 = sub_1E3270FC8(v34, v35, &v57);

    *(v32 + 14) = v37;
    v14 = v36;
    _os_log_impl(&dword_1E323F000, v30, v31, "%{public}s model service request failed with error:<%s>", v32, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_6_0();
    v9 = v45;
    OUTLINED_FUNCTION_6_0();

    (*(v21 + 8))(v25, v46);
  }

  else
  {

    (*(v21 + 8))(v25, v46);
    v33 = v29;
  }

  sub_1E32ADE38();
  v38 = sub_1E4206A04();
  OUTLINED_FUNCTION_4_0();
  v39 = swift_allocObject();
  swift_weakInit();
  OUTLINED_FUNCTION_64_4();
  v40 = swift_allocObject();
  *(v40 + 16) = *(v47 + 80);
  *(v40 + 24) = *(v47 + 88);
  *(v40 + 32) = v39;
  *(v40 + 40) = v48;
  *(v40 + 48) = v49;
  *(v40 + 56) = v56;
  *(v40 + 64) = v33;
  *(v40 + 72) = v4;
  *(v40 + 80) = v55;
  *(v40 + 88) = v54;
  OUTLINED_FUNCTION_12_14(v40);
  v59 = 1107296256;
  OUTLINED_FUNCTION_14_1();
  v60 = v41;
  v61 = &block_descriptor_47;
  v42 = _Block_copy(&v58);
  sub_1E3781F8C(v56, v33, v4);

  sub_1E4203FE4();
  v58 = MEMORY[0x1E69E7CC0];
  OUTLINED_FUNCTION_4_2();
  sub_1E3274998(v43, v44);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A730);
  sub_1E328FD38(&qword_1EE23B5D0, &qword_1ECF2A730);
  sub_1E42072E4();
  MEMORY[0x1E6911380](0, v50, v14, v42);
  _Block_release(v42);

  (*(v53 + 8))(v14, v9);
  (*(v52 + 8))(v50, v51);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E37B388C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_31_1();
  v146 = v23;
  v147 = v24;
  v145 = v25;
  v140 = v26;
  v129 = v27;
  v132 = v28;
  v141 = v29;
  type metadata accessor for VideosEnginePromiseResponse();
  sub_1E3781F38();
  OUTLINED_FUNCTION_32_10();
  v137 = sub_1E4207BC4();
  OUTLINED_FUNCTION_0_10();
  v134 = v30;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_44();
  v131 = v32;
  OUTLINED_FUNCTION_138();
  v139 = sub_1E4203FC4();
  OUTLINED_FUNCTION_0_10();
  v138 = v33;
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_5();
  v135 = v36 - v35;
  OUTLINED_FUNCTION_138();
  v136 = sub_1E4203FF4();
  OUTLINED_FUNCTION_0_10();
  v133 = v37;
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_5();
  v130 = v40 - v39;
  OUTLINED_FUNCTION_1_2();
  v144 = v41;
  v43 = *(v42 + 64);
  MEMORY[0x1EEE9AC00](v44);
  v128 = &v126 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v45);
  OUTLINED_FUNCTION_25_3();
  v142 = a21;
  v143 = v46;
  OUTLINED_FUNCTION_138();
  sub_1E4207104();
  OUTLINED_FUNCTION_0_10();
  v149 = v48;
  v150 = v47;
  MEMORY[0x1EEE9AC00](v47);
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_47_2();
  MEMORY[0x1EEE9AC00](v49);
  OUTLINED_FUNCTION_25_3();
  v151 = v50;
  OUTLINED_FUNCTION_138();
  v51 = sub_1E41FFBF4();
  OUTLINED_FUNCTION_0_10();
  v53 = v52;
  MEMORY[0x1EEE9AC00](v54);
  OUTLINED_FUNCTION_5();
  v57 = v56 - v55;
  v58 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v60 = v59;
  MEMORY[0x1EEE9AC00](v61);
  OUTLINED_FUNCTION_4_6();
  v148 = v62 - v63;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v64);
  v66 = &v126 - v65;
  OUTLINED_FUNCTION_5_0();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v68 = Strong;
    v126 = v60;
    v127 = v58;
    sub_1E4206B94();
    v69 = VUISignpostLogObject();
    sub_1E41FFBE4();
    sub_1E41FFBA4();

    v70 = (*(v53 + 8))(v57, v51);
    v71 = *(*v68 + 296);
    v72 = v71(v70);
    if (v72)
    {
      (*(*v72 + 208))(2, 0, 1);
    }

    sub_1E327F454(v68 + 16, v152);
    v73 = *(a22 + 8);

    v75 = v142;
    v76 = v73(v74, v152, v142, a22);
    v77 = v71(v76);
    if (v77)
    {
      (*(*v77 + 208))(3, 0, 1);
    }

    v79 = v149;
    v78 = v150;
    v80 = v151;
    (*(v149 + 16))(v22, v151, v150);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v22, 1, v75);
    v82 = v148;
    if (EnumTagSinglePayload == 1)
    {
      v149 = *(v79 + 8);
      (v149)(v22, v78);
      v83 = sub_1E324FBDC();
      v84 = v126;
      v85 = v127;
      (*(v126 + 16))(v82, v83, v127);
      v86 = v145;

      v87 = sub_1E41FFC94();
      sub_1E42067F4();

      if (OUTLINED_FUNCTION_56_4())
      {
        OUTLINED_FUNCTION_6_21();
        v152[0] = OUTLINED_FUNCTION_16_15();
        *v82 = 136446210;
        *(v82 + 4) = sub_1E3270FC8(v140, v86, v152);
        OUTLINED_FUNCTION_6_29();
        _os_log_impl(v88, v89, v90, v91, v92, 0xCu);
        OUTLINED_FUNCTION_9_22();
        OUTLINED_FUNCTION_51_2();

        (*(v84 + 8))(v148, v127);
      }

      else
      {

        (*(v84 + 8))(v82, v85);
      }

      v123 = v131;
      *v131 = 0xD00000000000003CLL;
      v123[1] = 0x80000001E425C5E0;
      *(v123 + 16) = 0;
      swift_storeEnumTagMultiPayload();
      v146(v123);

      v124 = OUTLINED_FUNCTION_45_7();
      v125(v124);
      (v149)(v80, v78);
    }

    else
    {
      v103 = v144;
      v137 = *(v144 + 32);
      v137(v143, v22, v75);
      sub_1E32ADE38();
      v148 = sub_1E4206A04();
      OUTLINED_FUNCTION_4_0();
      v104 = swift_allocObject();
      swift_weakInit();
      v141 = v68;
      v105 = v128;
      v106 = OUTLINED_FUNCTION_39_9();
      v107(v106);
      v108 = (*(v103 + 80) + 72) & ~*(v103 + 80);
      v109 = (v43 + v108 + 7) & 0xFFFFFFFFFFFFFFF8;
      v110 = swift_allocObject();
      v110[2] = v75;
      v110[3] = a22;
      v111 = v132;
      v110[4] = v104;
      v110[5] = v111;
      v112 = v140;
      v110[6] = v129;
      v110[7] = v112;
      v110[8] = v145;
      v137(v110 + v108, v105, v75);
      v113 = (v110 + v109);
      v114 = v147;
      *v113 = v146;
      v113[1] = v114;
      v152[4] = sub_1E37B5C98;
      v152[5] = v110;
      v152[0] = MEMORY[0x1E69E9820];
      v152[1] = 1107296256;
      OUTLINED_FUNCTION_14_1();
      v152[2] = v115;
      v152[3] = &block_descriptor_32;
      v116 = _Block_copy(v152);

      v117 = v130;
      sub_1E4203FE4();
      v152[0] = MEMORY[0x1E69E7CC0];
      OUTLINED_FUNCTION_4_2();
      sub_1E3274998(v118, v119);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A730);
      sub_1E328FD38(&qword_1EE23B5D0, &qword_1ECF2A730);
      v120 = v135;
      v121 = v139;
      sub_1E42072E4();
      v122 = v148;
      MEMORY[0x1E6911380](0, v117, v120, v116);
      _Block_release(v116);

      (*(v138 + 8))(v120, v121);
      (*(v133 + 8))(v117, v136);
      (*(v144 + 8))(v143, v75);
      (*(v149 + 8))(v151, v150);
    }
  }

  else
  {
    sub_1E324FBDC();
    OUTLINED_FUNCTION_22_6();
    v93(v66);
    v94 = sub_1E41FFC94();
    v95 = sub_1E42067F4();
    if (os_log_type_enabled(v94, v95))
    {
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_6_29();
      _os_log_impl(v96, v97, v98, v99, v100, 2u);
      OUTLINED_FUNCTION_51_2();
    }

    v101 = OUTLINED_FUNCTION_53();
    v102(v101);
  }

  OUTLINED_FUNCTION_25_2();
}

void sub_1E37B4330(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  OUTLINED_FUNCTION_31_1();
  v22 = v21;
  v121 = v23;
  v122 = v24;
  v118 = v25;
  v123 = v26;
  v115 = v27;
  v29 = v28;
  v30 = type metadata accessor for VideosEnginePromiseResponse();
  v111 = sub_1E3781F38();
  sub_1E4207BC4();
  OUTLINED_FUNCTION_0_10();
  v108 = v32;
  v109 = v31;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_44();
  v107 = v34;
  OUTLINED_FUNCTION_138();
  v35 = type metadata accessor for ServiceRequest.SavedResponseType();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_44();
  v112 = v37;
  OUTLINED_FUNCTION_1_2();
  v117 = v38;
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_5();
  v116 = v41 - v40;
  OUTLINED_FUNCTION_138();
  v42 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v44 = v43;
  MEMORY[0x1EEE9AC00](v45);
  OUTLINED_FUNCTION_4_6();
  v48 = v46 - v47;
  MEMORY[0x1EEE9AC00](v49);
  v51 = &v101 - v50;
  MEMORY[0x1EEE9AC00](v52);
  OUTLINED_FUNCTION_47_3();
  OUTLINED_FUNCTION_1_2();
  v120 = v53;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v54);
  OUTLINED_FUNCTION_44();
  v119 = v55;
  OUTLINED_FUNCTION_5_0();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v57 = Strong;
    v105 = v48;
    v114 = v29;
    v106 = v35;
    v110 = v42;
    v113 = v44;
    if (v29)
    {
      v102 = v30;

      sub_1E324FBDC();
      OUTLINED_FUNCTION_48_4();
      v104 = v58;
      (v58)(a21);
      v59 = v42;
      v60 = v123;

      v61 = sub_1E41FFC94();
      v62 = sub_1E4206814();

      if (os_log_type_enabled(v61, v62))
      {
        v63 = OUTLINED_FUNCTION_6_21();
        v64 = OUTLINED_FUNCTION_100();
        v124[0] = v64;
        *v63 = 136446210;
        *(v63 + 4) = sub_1E3270FC8(v115, v60, v124);
        _os_log_impl(&dword_1E323F000, v61, v62, "%{public}s there's still more data to come, will return partial response.", v63, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v64);
        OUTLINED_FUNCTION_51_2();
        OUTLINED_FUNCTION_6_0();
      }

      v103 = *(v44 + 8);
      v103(a21, v59);
      v65 = *v57;
      v66 = sub_1E37AF70C();
      v68 = v67;
      v69 = *(v65 + 80);
      type metadata accessor for VideosEnginePromiseResponse();
      sub_1E42005F4();
      OUTLINED_FUNCTION_4_0();
      v70 = swift_allocObject();
      swift_weakInit();
      OUTLINED_FUNCTION_27_10();
      v71 = swift_allocObject();
      v71[2] = v69;
      v71[3] = *(v65 + 88);
      v71[4] = v70;
      v29 = v114;
      v71[5] = v114;
      v71[6] = v66;
      v71[7] = v68;

      v72 = sub_1E4200604();
      (*(v117 + 16))(v116, v118, v22);
      v73 = v119;
      sub_1E3B9E8EC(v72, v119);

      v30 = v102;
      v74 = v123;
    }

    else
    {
      sub_1E324FBDC();
      OUTLINED_FUNCTION_48_4();
      v104 = v75;
      (v75)(v51);
      v76 = v123;

      v77 = sub_1E41FFC94();
      v78 = sub_1E4206814();

      if (os_log_type_enabled(v77, v78))
      {
        OUTLINED_FUNCTION_6_21();
        v124[0] = OUTLINED_FUNCTION_16_15();
        *v35 = 136446210;
        *(v35 + 4) = sub_1E3270FC8(v115, v76, v124);
        _os_log_impl(&dword_1E323F000, v77, v78, "%{public}s has finished getting all the data, will return full response.", v35, 0xCu);
        OUTLINED_FUNCTION_72_8();
        OUTLINED_FUNCTION_6_0();
        OUTLINED_FUNCTION_51_2();

        v79 = OUTLINED_FUNCTION_66_7();
        v81 = v110;
      }

      else
      {

        v79 = OUTLINED_FUNCTION_66_7();
        v81 = v42;
      }

      v103 = v80;
      v80(v79, v81);
      (*(v117 + 16))(v116, v118, v22);
      v73 = v119;
      sub_1E3B9E8EC(0, v119);
      v74 = v123;
    }

    if (sub_1E37AEAD8(*(v57 + 72)) == 0x65646E6570737573 && v82 == 0xE900000000000064)
    {

      v85 = v110;
    }

    else
    {
      v84 = OUTLINED_FUNCTION_17_17();

      v85 = v110;
      if ((v84 & 1) == 0)
      {
        v86 = v120;
        v87 = v107;
        (*(v120 + 16))(v107, v73, v30);
        swift_storeEnumTagMultiPayload();
        v121(v87);
        v88 = OUTLINED_FUNCTION_74();
        v89(v88);
        (*(v86 + 8))(v73, v30);
        if (!v29)
        {
          *(v57 + 72) = 4;
          *(v57 + 136) = 0;
        }

LABEL_22:

        goto LABEL_23;
      }
    }

    v90 = sub_1E324FBDC();
    v91 = v105;
    v104(v105, v90, v85);

    v92 = sub_1E41FFC94();
    sub_1E4206814();

    if (OUTLINED_FUNCTION_56_4())
    {
      OUTLINED_FUNCTION_6_21();
      v124[0] = OUTLINED_FUNCTION_16_15();
      MEMORY[0xE900000000000064] = 136446210;
      MEMORY[0xE900000000000068] = sub_1E3270FC8(v115, v74, v124);
      OUTLINED_FUNCTION_6_29();
      _os_log_impl(v93, v94, v95, v96, v97, 0xCu);
      OUTLINED_FUNCTION_9_22();
      OUTLINED_FUNCTION_51_2();
    }

    v103(v91, v85);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1ECF2C3F0);
    v98 = (v112 + *(swift_getTupleTypeMetadata2() + 48));
    v99 = v120;
    (*(v120 + 16))(v112, v73, v30);
    v100 = v122;
    *v98 = v121;
    v98[1] = v100;
    OUTLINED_FUNCTION_74();
    swift_storeEnumTagMultiPayload();

    v124[0] = sub_1E37AF890();
    sub_1E4206374();
    sub_1E4206354();
    sub_1E37AF918(v124[0]);
    (*(v99 + 8))(v73, v30);
    if (!v114)
    {
      *(v57 + 72) = 4;
    }

    goto LABEL_22;
  }

LABEL_23:
  OUTLINED_FUNCTION_25_2();
}

void sub_1E37B4BF4()
{
  OUTLINED_FUNCTION_31_1();
  v55 = v1;
  v56 = v2;
  v51 = v3;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  OUTLINED_FUNCTION_32_10();
  v52 = type metadata accessor for ServiceRequest.SavedResponseType();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_69_3();
  OUTLINED_FUNCTION_0_10();
  v53 = v14;
  v54 = v13;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_5();
  v17 = v16 - v15;
  type metadata accessor for VideosEnginePromiseResponse();
  sub_1E3781F38();
  OUTLINED_FUNCTION_32_10();
  v18 = sub_1E4207BC4();
  OUTLINED_FUNCTION_0_10();
  v20 = v19;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v47 - v22;
  OUTLINED_FUNCTION_5_0();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v25 = Strong;
    v47 = v9;
    v48 = v7;
    v49 = v5;
    v50 = v11;
    if (sub_1E37AEAD8(*(Strong + 72)) == 0x65646E6570737573 && v26 == 0xE900000000000064)
    {
    }

    else
    {
      v28 = OUTLINED_FUNCTION_17_17();

      if ((v28 & 1) == 0)
      {
        v29 = v48;
        *v23 = v47;
        *(v23 + 1) = v29;
        v30 = v49;
        v23[16] = v49;
        swift_storeEnumTagMultiPayload();
        v31 = OUTLINED_FUNCTION_53();
        sub_1E3781F8C(v31, v32, v30);
        v55(v23);
        (*(v20 + 8))(v23, v18);
        *(v25 + 136) = 0;

LABEL_19:
        *(v25 + 72) = 4;

        goto LABEL_20;
      }
    }

    if (sub_1E37AEAD8(*(v25 + 72)) == 0x65646E6570737573 && v33 == 0xE900000000000064)
    {

      v37 = v53;
      v36 = v54;
    }

    else
    {
      v35 = OUTLINED_FUNCTION_17_17();

      v37 = v53;
      v36 = v54;
      if ((v35 & 1) == 0)
      {
        goto LABEL_19;
      }
    }

    sub_1E324FBDC();
    OUTLINED_FUNCTION_0_11();
    v38(v17);

    v39 = sub_1E41FFC94();
    v40 = sub_1E4206814();

    v41 = os_log_type_enabled(v39, v40);
    v42 = v48;
    if (v41)
    {
      v43 = OUTLINED_FUNCTION_6_21();
      v57 = OUTLINED_FUNCTION_100();
      *v43 = 136446210;
      *(v43 + 4) = sub_1E3270FC8(v51, v56, &v57);
      _os_log_impl(&dword_1E323F000, v39, v40, "%{public}s saving failure service response.", v43, 0xCu);
      OUTLINED_FUNCTION_72_8();
      OUTLINED_FUNCTION_6_0();
      OUTLINED_FUNCTION_6_0();
    }

    (*(v37 + 8))(v17, v36);
    v44 = v50;
    v45 = v49;
    v46 = v47;
    *v0 = v47;
    *(v0 + 8) = v42;
    *(v0 + 16) = v45;
    *(v0 + 24) = v55;
    *(v0 + 32) = v44;
    swift_storeEnumTagMultiPayload();
    sub_1E3781F8C(v46, v42, v45);

    v57 = sub_1E37AF890();
    sub_1E4206374();
    sub_1E4206354();
    sub_1E37AF918(v57);
    goto LABEL_19;
  }

LABEL_20:
  OUTLINED_FUNCTION_25_2();
}

void sub_1E37B4FE8()
{
  OUTLINED_FUNCTION_31_1();
  v40 = v1;
  v41 = v2;
  v4 = v3;
  v35 = v5;
  v7 = v6;
  v8 = type metadata accessor for VideosEnginePromiseResponse();
  sub_1E3781F38();
  v9 = sub_1E4207BC4();
  OUTLINED_FUNCTION_0_10();
  v11 = v10;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v12);
  v13 = OUTLINED_FUNCTION_69_3();
  OUTLINED_FUNCTION_0_10();
  v15 = v14;
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_4_6();
  v19 = v17 - v18;
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_47_3();
  v37 = v7[1];
  v38 = *v7;
  v36 = *(v7 + 16);
  v21 = *(v7 + 17);
  OUTLINED_FUNCTION_5_0();
  Strong = swift_weakLoadStrong();
  sub_1E324FBDC();
  OUTLINED_FUNCTION_0_11();
  if (Strong)
  {
    v24 = v21;
    v23(v8);

    v25 = sub_1E41FFC94();
    v26 = sub_1E4206814();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = OUTLINED_FUNCTION_6_21();
      v28 = OUTLINED_FUNCTION_100();
      v42[0] = v28;
      *v27 = 136446210;
      *(v27 + 4) = sub_1E3270FC8(v35, v4, v42);
      _os_log_impl(&dword_1E323F000, v25, v26, "%{public}s received multipart model response.", v27, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v28);
      OUTLINED_FUNCTION_6_0();
      OUTLINED_FUNCTION_6_0();
    }

    v29 = OUTLINED_FUNCTION_63_0();
    v30(v29);
    sub_1E37B130C(v38, v37, v36 | (v24 << 8), v40, v41);
    *(Strong + 144) = 0;
  }

  else
  {
    v39 = v11;
    v23(v19);

    v31 = sub_1E41FFC94();
    v32 = sub_1E42067F4();

    if (OUTLINED_FUNCTION_56_4())
    {
      v33 = OUTLINED_FUNCTION_6_21();
      v34 = OUTLINED_FUNCTION_100();
      v42[0] = v34;
      *v33 = 136446210;
      *(v33 + 4) = sub_1E3270FC8(v35, v4, v42);
      _os_log_impl(&dword_1E323F000, v31, v32, "%{public}s serviceRequestPromiseWrappingVideosEnginePromise request not valid anymore.", v33, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v34);
      OUTLINED_FUNCTION_6_0();
      OUTLINED_FUNCTION_21_0();
    }

    (*(v15 + 8))(v19, v13);
    *v0 = 0xD000000000000025;
    *(v0 + 8) = 0x80000001E425C620;
    *(v0 + 16) = 1;
    swift_storeEnumTagMultiPayload();
    v40(v0);
    (*(v39 + 8))(v0, v9);
  }

  OUTLINED_FUNCTION_25_2();
}

unint64_t sub_1E37B548C()
{
  result = qword_1ECF2A1F0;
  if (!qword_1ECF2A1F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2A1F0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ServiceRequestState(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFB)
  {
    if (a2 + 5 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 5) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 6;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v5 = v6 - 6;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for ServiceRequestState(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1E37B5644(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 56))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 32);
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

uint64_t sub_1E37B5684(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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
      *(result + 32) = (a2 - 1);
      return result;
    }

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_1E37B5754()
{
  type metadata accessor for VideosEnginePromiseResponse();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1ECF2C3F0);
  swift_getTupleTypeMetadata2();
  if (v0 <= 0x3F)
  {
    sub_1E37B5A54();
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_1E37B5800()
{
  OUTLINED_FUNCTION_57_5();
  if (!(!v4 & v3))
  {
    v1 = v2;
  }

  if (v0 > 0xFE)
  {
    if ((v1 | 1u) <= 3)
    {
      v5 = ((v0 + 1) >> 8) + 1;
    }

    else
    {
      v5 = 2;
    }

    if (v5 >= 0x10000)
    {
      v6 = 4;
    }

    else
    {
      v6 = 2;
    }

    if (v5 < 0x100)
    {
      v6 = 1;
    }

    if (v5 >= 2)
    {
      v7 = v6;
    }

    else
    {
      v7 = 0;
    }

    switch(v7)
    {
      case 3:
        __break(1u);
        break;
      default:
        return;
    }
  }
}

void sub_1E37B58FC(unsigned int *a1)
{
  OUTLINED_FUNCTION_57_5();
  if (!(!v7 & v6))
  {
    v4 = v5;
  }

  v8 = v4 | 1;
  if (v3 < 0xFF)
  {
    v11 = 0;
  }

  else
  {
    if (v8 <= 3)
    {
      v9 = ((v3 + 1) >> 8) + 1;
    }

    else
    {
      v9 = 2;
    }

    if (v9 >= 0x10000)
    {
      v10 = 4;
    }

    else
    {
      v10 = 2;
    }

    if (v9 < 0x100)
    {
      v10 = 1;
    }

    if (v9 >= 2)
    {
      v11 = v10;
    }

    else
    {
      v11 = 0;
    }
  }

  if (v2 > 0xFE)
  {
    v12 = v2 - 255;
    v13 = (v2 - 255) >> 8;
    bzero(a1, v4 | 1);
    if (v8 <= 3)
    {
      v14 = v13 + 1;
    }

    else
    {
      v14 = 1;
    }

    if (v8 > 3)
    {
      *a1 = v12;
    }

    else
    {
      *a1 = v12;
    }

    switch(v11)
    {
      case 1:
        *(a1 + v8) = v14;
        break;
      case 2:
        *(a1 + v8) = v14;
        break;
      case 3:
LABEL_36:
        __break(1u);
        break;
      case 4:
        *(a1 + v8) = v14;
        break;
      default:
        return;
    }
  }

  else
  {
    switch(v11)
    {
      case 1:
        *(a1 + v8) = 0;
        if (!v2)
        {
          return;
        }

        goto LABEL_30;
      case 2:
        *(a1 + v8) = 0;
        goto LABEL_29;
      case 3:
        goto LABEL_36;
      case 4:
        *(a1 + v8) = 0;
        if (!v2)
        {
          return;
        }

        goto LABEL_30;
      default:
LABEL_29:
        if (v2)
        {
LABEL_30:
          *(a1 + v4) = -v2;
        }

        break;
    }
  }
}

void sub_1E37B5A54()
{
  if (!qword_1EE288230[0])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1ECF2C3F0);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, qword_1EE288230);
    }
  }
}

uint64_t sub_1E37B5ACC(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 5u)
  {
  }

  return result;
}

uint64_t sub_1E37B5BC0(uint64_t a1, uint64_t a2, unsigned __int8 a3, char a4)
{
  if (a4)
  {
    return sub_1E3781F8C(a1, a2, a3);
  }

  else
  {
  }
}

void sub_1E37B5BCC()
{
  sub_1E41FFBF4();
  OUTLINED_FUNCTION_34_13();
  OUTLINED_FUNCTION_53_9();

  sub_1E37B10BC();
}

uint64_t sub_1E37B5D30(uint64_t a1, uint64_t a2)
{
  v12 = *(v2 + 16);
  v6 = *(v2 + 48);
  v5 = *(v2 + 56);
  OUTLINED_FUNCTION_5_0();
  result = swift_weakLoadStrong();
  if (result)
  {
    v8 = result;
    OUTLINED_FUNCTION_4_0();
    v9 = swift_allocObject();
    OUTLINED_FUNCTION_5_0();
    swift_weakLoadStrong();
    swift_weakInit();

    OUTLINED_FUNCTION_67_6();
    v10 = swift_allocObject();
    *(v10 + 16) = v12;
    *(v10 + 32) = v9;
    *(v10 + 40) = v6;
    *(v10 + 48) = v5;
    *(v10 + 56) = a1;
    *(v10 + 64) = a2;

    v11 = sub_1E41EC148(sub_1E37B5EB0, v10);

    *(v8 + 144) = v11;
  }

  return result;
}

uint64_t objectdestroy_3Tm(void (*a1)(void))
{

  a1(*(v1 + 64));
  OUTLINED_FUNCTION_67_6();

  return swift_deallocObject();
}

uint64_t OUTLINED_FUNCTION_68_7()
{

  return swift_storeEnumTagMultiPayload();
}

uint64_t OUTLINED_FUNCTION_69_3()
{

  return sub_1E41FFCB4();
}

unint64_t OUTLINED_FUNCTION_70_6(float a1)
{
  *v1 = a1;
  v5 = *(v3 - 184);

  return sub_1E3270FC8(v5, v2, (v3 - 88));
}

uint64_t sub_1E37B5FBC@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x1E697F600];
  sub_1E4201CF4();
  OUTLINED_FUNCTION_2();
  v5 = *(v4 + 104);

  return v5(a1, v2, v3);
}

void sub_1E37B6028(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t a5@<X4>, int a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v281 = a7;
  LODWORD(v255) = a6;
  v254 = a5;
  v256 = a4;
  v239 = a3;
  v266 = a2;
  v241 = a9;
  v240 = sub_1E4201324();
  OUTLINED_FUNCTION_0_10();
  v238 = v11;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_5();
  v237 = v14 - v13;
  v276 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A1F8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_44();
  v235 = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A200);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_44();
  v267 = v18;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2A208);
  OUTLINED_FUNCTION_13_10();
  v19 = sub_1E42013A4();
  v272 = MEMORY[0x1E6980A18];
  v20 = sub_1E32752B0(&qword_1EE2887A0, &qword_1ECF2A208);
  v263 = a8;
  v310 = a8;
  v311 = v20;
  OUTLINED_FUNCTION_13_33();
  WitnessTable = swift_getWitnessTable();
  v312 = v19;
  v313 = WitnessTable;
  v22 = v19;
  v273 = v19;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v277 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2A210);
  v23 = sub_1E42013A4();
  v312 = v22;
  v313 = WitnessTable;
  v260 = WitnessTable;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v25 = sub_1E32752B0(&unk_1EE2887E0, &qword_1ECF2A210);
  v259 = OpaqueTypeConformance2;
  v308 = OpaqueTypeConformance2;
  v309 = v25;
  v236 = v25;
  v26 = v23;
  v27 = swift_getWitnessTable();
  v312 = v26;
  v313 = v27;
  v253 = v26;
  v28 = swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2A218);
  OUTLINED_FUNCTION_13_10();
  sub_1E42013A4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2A220);
  OUTLINED_FUNCTION_13_10();
  v275 = v28;
  sub_1E42013A4();
  sub_1E4201F54();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF28998);
  OUTLINED_FUNCTION_13_10();
  v270 = sub_1E42013A4();
  v274 = sub_1E4201F54();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2A228);
  OUTLINED_FUNCTION_13_10();
  v271 = sub_1E42013A4();
  v279 = sub_1E4201F54();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2A230);
  OUTLINED_FUNCTION_18_12();
  v29 = sub_1E42013A4();
  OUTLINED_FUNCTION_0_10();
  v229 = v30;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_44();
  v264 = v32;
  v312 = v26;
  v313 = v27;
  v262 = v27;
  v33 = swift_getOpaqueTypeConformance2();
  OUTLINED_FUNCTION_16_16();
  v35 = sub_1E32752B0(v34, &qword_1ECF2A218);
  v306 = v33;
  v307 = v35;
  v36 = swift_getWitnessTable();
  v37 = sub_1E32752B0(&qword_1EE288878, &qword_1ECF2A220);
  v304 = v33;
  v305 = v37;
  v38 = swift_getWitnessTable();
  v302 = v36;
  v303 = v38;
  OUTLINED_FUNCTION_15_28();
  v39 = swift_getWitnessTable();
  v40 = sub_1E32752B0(&qword_1EE288788, &qword_1ECF28998);
  v258 = v33;
  v300 = v33;
  v301 = v40;
  v41 = swift_getWitnessTable();
  v298 = v39;
  v299 = v41;
  v42 = v274;
  v43 = swift_getWitnessTable();
  v44 = sub_1E32752B0(&qword_1EE288778, &qword_1ECF2A228);
  v296 = v43;
  v297 = v44;
  v294 = swift_getWitnessTable();
  v257 = v43;
  v295 = v43;
  v45 = v279;
  v46 = swift_getWitnessTable();
  v47 = sub_1E32752B0(&qword_1EE288790, &qword_1ECF2A230);
  v261 = v46;
  v292 = v46;
  v293 = v47;
  v48 = swift_getWitnessTable();
  OUTLINED_FUNCTION_14_2();
  v50 = sub_1E32752B0(v49, &qword_1ECF2A1F8);
  v231 = v29;
  v312 = v29;
  v313 = v276;
  v270 = v50;
  v271 = v48;
  v314 = v48;
  v315 = v50;
  v51 = swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_0_10();
  v215 = v52;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v53);
  OUTLINED_FUNCTION_44();
  v269 = v54;
  sub_1E42015B4();
  OUTLINED_FUNCTION_18_12();
  v217 = v51;
  v55 = sub_1E42013A4();
  OUTLINED_FUNCTION_0_10();
  v218 = v56;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v57);
  OUTLINED_FUNCTION_44();
  v216 = v58;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2A238);
  OUTLINED_FUNCTION_18_12();
  v219 = v55;
  sub_1E42013A4();
  OUTLINED_FUNCTION_0_10();
  v221 = v59;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v60);
  OUTLINED_FUNCTION_44();
  v220 = v61;
  OUTLINED_FUNCTION_138();
  v222 = v62;
  v63 = sub_1E42013A4();
  OUTLINED_FUNCTION_0_10();
  v225 = v64;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v65);
  OUTLINED_FUNCTION_44();
  v224 = v66;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2A240);
  OUTLINED_FUNCTION_18_12();
  v226 = v63;
  v67 = sub_1E42013A4();
  OUTLINED_FUNCTION_0_10();
  v228 = v68;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v69);
  OUTLINED_FUNCTION_44();
  v227 = v70;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2A248);
  OUTLINED_FUNCTION_18_12();
  v230 = v67;
  sub_1E42013A4();
  OUTLINED_FUNCTION_0_10();
  v233 = v72;
  v234 = v71;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v73);
  OUTLINED_FUNCTION_44();
  v232 = v74;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A250);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v75);
  OUTLINED_FUNCTION_44();
  v268 = v76;
  OUTLINED_FUNCTION_138();
  v265 = sub_1E42012F4();
  OUTLINED_FUNCTION_0_10();
  v277 = v77;
  MEMORY[0x1EEE9AC00](v78);
  OUTLINED_FUNCTION_5();
  v272 = v80 - v79;
  OUTLINED_FUNCTION_138();
  swift_checkMetadataState();
  OUTLINED_FUNCTION_0_10();
  v243 = v82;
  v244 = v81;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v83);
  OUTLINED_FUNCTION_44();
  v242 = v84;
  OUTLINED_FUNCTION_138();
  swift_checkMetadataState();
  OUTLINED_FUNCTION_0_10();
  v246 = v86;
  v247 = v85;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v87);
  OUTLINED_FUNCTION_44();
  v245 = v88;
  OUTLINED_FUNCTION_138();
  swift_checkMetadataState();
  OUTLINED_FUNCTION_0_10();
  v248 = v90;
  v249 = v89;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v91);
  OUTLINED_FUNCTION_44();
  v273 = v92;
  OUTLINED_FUNCTION_1_2();
  v251 = v93;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v94);
  OUTLINED_FUNCTION_44();
  v250 = v95;
  v253 = *(v42 - 8);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v96);
  OUTLINED_FUNCTION_44();
  v252 = v97;
  v223 = *(v45 - 8);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v98);
  OUTLINED_FUNCTION_44();
  OpaqueTypeMetadata2 = v99;
  OUTLINED_FUNCTION_1_2();
  v101 = v100;
  MEMORY[0x1EEE9AC00](v102);
  OUTLINED_FUNCTION_4_6();
  v105 = (v103 - v104);
  MEMORY[0x1EEE9AC00](v106);
  v108 = &v215 - v107;
  v109 = sub_1E4201CF4();
  OUTLINED_FUNCTION_0_10();
  v111 = v110;
  MEMORY[0x1EEE9AC00](v112);
  OUTLINED_FUNCTION_5();
  v115 = v114 - v113;
  if (a1)
  {
    OUTLINED_FUNCTION_12_6();
    v117 = (*(v116 + 672))();
  }

  else
  {
    v117 = 0;
  }

  (*(v111 + 104))(v115, *MEMORY[0x1E697F608], v109);
  v118 = sub_1E4200B34();
  (*(v111 + 8))(v115, v109);
  if (a1)
  {
    v119 = v267;
    v120 = v117;
    if (v118)
    {
      OUTLINED_FUNCTION_12_6();
      v122 = (*(v121 + 1952))();
      if (v122)
      {
        v123 = v122;

        v120 = v123;
      }
    }
  }

  else
  {
    v119 = v267;
    v120 = v117;
  }

  if ((v255 & 1) != 0 && v120)
  {
    sub_1E3755B54();
    v124 = v120;
    v120 = sub_1E3E5F3B8(v124);
  }

  v255 = v120;
  switch(v256)
  {
    case 1:
      if (a1)
      {
        OUTLINED_FUNCTION_12_6();
        v126 = (*(v125 + 888))();
        if (v126)
        {
          goto LABEL_21;
        }
      }

      goto LABEL_22;
    case 2:
      if (!a1)
      {
        goto LABEL_22;
      }

      OUTLINED_FUNCTION_12_6();
      v126 = (*(v127 + 864))();
      if (!v126)
      {
        goto LABEL_22;
      }

      goto LABEL_21;
    case 3:
      if (!a1)
      {
        goto LABEL_22;
      }

      OUTLINED_FUNCTION_12_6();
      v126 = (*(v128 + 912))();
      if (!v126)
      {
        goto LABEL_22;
      }

LABEL_21:
      v129 = v126;
      break;
    default:
LABEL_22:
      v130 = v120;
      v129 = v120;
      break;
  }

  v131 = *(v101 + 16);
  v131(v108, v280, v281);
  v132 = swift_dynamicCast();
  if (v132)
  {
    sub_1E37434B8(v312, v313, v314);
  }

  v131(v105, v280, v281);
  if (swift_dynamicCast())
  {
    sub_1E37434B8(v312, v313, v314);

    LODWORD(v267) = v129 != 0;
  }

  else
  {
    LODWORD(v267) = 0;
  }

  v133 = v242;
  if (a1)
  {
    sub_1E3E3B878();
    sub_1E4203404();

    v135 = (*(*a1 + 2144))(v134);
    if (v135)
    {
      v136 = v135;
      [v135 doubleValue];
    }
  }

  else
  {
    sub_1E4203404();
  }

  v137 = v244;
  sub_1E42034C4();
  (*(v243 + 8))(v133, v137);
  if (a1)
  {
    OUTLINED_FUNCTION_12_6();
    (*(v138 + 1176))();
  }

  sub_1E4202E04();
  v139 = OUTLINED_FUNCTION_8_6();
  v140(v139);
  v141 = 0;
  if (a1)
  {
    v142 = v132 ^ 1;
    v143 = v265;
    if ((v142 & 1) == 0)
    {
      OUTLINED_FUNCTION_12_6();
      v141 = (*(v144 + 600))();
    }
  }

  else
  {
    v143 = v265;
  }

  v145 = v119;
  v146 = v249;
  v147 = v273;
  sub_1E3C42EB4(v141, 0, v249, v262, v250);

  (*(v248 + 8))(v147, v146);
  v256 = v129;
  if (a1)
  {
    OUTLINED_FUNCTION_12_6();
    (*(v148 + 696))();
    OUTLINED_FUNCTION_12_6();
    (*(v149 + 840))();
    v150 = v252;
    OUTLINED_FUNCTION_24_8();

    v151 = OUTLINED_FUNCTION_8_6();
    v153 = v152(v151);
    (*(*a1 + 720))(v153);
  }

  else
  {
    v150 = v252;
    OUTLINED_FUNCTION_24_8();
    v154 = OUTLINED_FUNCTION_8_6();
    v155(v154);
  }

  v156 = v274;
  sub_1E37B8438();
  (*(v253 + 8))(v150, v156);
  sub_1E37B89FC(a1);
  v157 = v276;
  if (a1 && (OUTLINED_FUNCTION_12_6(), v159 = (*(v158 + 1712))(), v159 != 13))
  {
    v167 = v268;
    sub_1E3B033CC(v159, v268);
    OUTLINED_FUNCTION_22_12();
    v160 = v272;
    v161 = v145;
    if (!v165)
    {
      (*(v277 + 32))(v272, v167, v143);
      goto LABEL_50;
    }
  }

  else
  {
    __swift_storeEnumTagSinglePayload(v268, 1, 1, v143);
    v160 = v272;
    v161 = v145;
  }

  v162 = sub_1E3B030C0();
  swift_beginAccess();
  v163 = v162;
  v164 = v268;
  (*(v277 + 16))(v160, v163, v143);
  OUTLINED_FUNCTION_22_12();
  if (!v165)
  {
    sub_1E325F6F0(v164, &qword_1ECF2A250);
  }

  if (!a1)
  {
    v166 = sub_1E4202BE4();
    __swift_storeEnumTagSinglePayload(v161, 1, 1, v166);
    goto LABEL_51;
  }

LABEL_50:
  sub_1E3E3B67C(v161);
LABEL_51:
  v168 = v264;
  sub_1E4203554();
  sub_1E325F6F0(v161, &qword_1ECF2A200);
  sub_1E37B8B2C();
  if (sub_1E4205E84())
  {
    v169 = v235;
    OUTLINED_FUNCTION_20_21();
    v170();
    v171 = v231;
    sub_1E4202FA4();
    sub_1E325F6F0(v169, &qword_1ECF2A1F8);
    (*(v229 + 8))(v168, v171);
    if (a1)
    {
      OUTLINED_FUNCTION_12_6();
      v173 = (*(v172 + 1904))();
    }

    else
    {
      v173 = 28;
    }

    v174 = v224;
    v312 = v171;
    v313 = v157;
    v314 = v271;
    v315 = v270;
    v175 = swift_getOpaqueTypeConformance2();
    v177 = v216;
    v176 = v217;
    v178 = v173;
    v179 = v269;
    sub_1E37B8B84(v178);
    (*(v215 + 8))(v179, v176);
    v290 = v175;
    v291 = MEMORY[0x1E697EBB8];
    OUTLINED_FUNCTION_4_1();
    v180 = v219;
    v181 = swift_getWitnessTable();
    v182 = v220;
    sub_1E42035A4();
    (*(v218 + 8))(v177, v180);
    if (a1)
    {
      OUTLINED_FUNCTION_12_6();
      (*(v183 + 2120))();
    }

    OUTLINED_FUNCTION_1_25();
    v186 = sub_1E32752B0(v184, v185);
    v288 = v181;
    v289 = v186;
    OUTLINED_FUNCTION_4_1();
    v187 = v222;
    v188 = swift_getWitnessTable();
    sub_1E4203144();
    (*(v221 + 8))(v182, v187);
    if (a1)
    {
      OUTLINED_FUNCTION_12_6();
      v190 = (*(v189 + 1976))();
    }

    else
    {
      v190 = 7;
    }

    v192 = v237;
    v191 = v238;
    v193 = v240;
    (*(v238 + 104))(v237, *MEMORY[0x1E697E7D8], v240);
    v194 = sub_1E4201314();
    (*(v191 + 8))(v192, v193);
    v286 = v188;
    v287 = v236;
    OUTLINED_FUNCTION_4_1();
    v195 = v226;
    v196 = swift_getWitnessTable();
    v197 = v227;
    sub_1E37B8C10(v190, v194 & 1, v195, v196);
    (*(v225 + 8))(v174, v195);
    if (a1)
    {
      OUTLINED_FUNCTION_12_6();
      (*(v198 + 2168))();
    }

    v199 = v272;
    OUTLINED_FUNCTION_1_25();
    v202 = sub_1E32752B0(v200, v201);
    v284 = v196;
    v285 = v202;
    OUTLINED_FUNCTION_4_1();
    v203 = v230;
    v204 = swift_getWitnessTable();
    v205 = v232;
    sub_1E37B8C6C();
    (*(v228 + 8))(v197, v203);
    if (a1 && (OUTLINED_FUNCTION_12_6(), (*(v206 + 176))(&v312), (v316 & 1) == 0))
    {
      v209.n128_u64[0] = v314;
      v210.n128_u64[0] = v315;
      v207.n128_u64[0] = v312;
      v208.n128_u64[0] = v313;
      j_nullsub_1(v207, v208, v209, v210);
    }

    else
    {
      OUTLINED_FUNCTION_5_8();
    }

    OUTLINED_FUNCTION_1_25();
    v213 = sub_1E32752B0(v211, v212);
    v282 = v204;
    v283 = v213;
    OUTLINED_FUNCTION_4_1();
    v214 = v234;
    swift_getWitnessTable();
    sub_1E42034D4();

    (*(v233 + 8))(v205, v214);
    (*(v277 + 8))(v199, v143);
    (*(v223 + 8))(OpaqueTypeMetadata2, v279);
  }

  else
  {
    __break(1u);
  }
}

void sub_1E37B796C()
{
  OUTLINED_FUNCTION_31_1();
  v129 = v0;
  v137 = v1;
  v138 = v2;
  v4 = v3;
  v6 = v5;
  v127 = v7;
  v120 = v8;
  v10 = v9;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF28998);
  OUTLINED_FUNCTION_18_12();
  v11 = sub_1E42013A4();
  OUTLINED_FUNCTION_0_10();
  WitnessTable = v12;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_4_6();
  v122 = v14 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v120 - v17;
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_25_3();
  v126 = v20;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2A220);
  OUTLINED_FUNCTION_18_12();
  v21 = sub_1E42013A4();
  OUTLINED_FUNCTION_0_10();
  v121 = v22;
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_4_6();
  v125 = v24 - v25;
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_25_3();
  v124 = v27;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2A218);
  OUTLINED_FUNCTION_13_10();
  v28 = sub_1E42013A4();
  v135 = v21;
  sub_1E4201F54();
  OUTLINED_FUNCTION_0_10();
  v30 = v29;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v31);
  v33 = &v120 - v32;
  v130 = v28;
  v34 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_4_6();
  v38 = v36 - v37;
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_25_3();
  v128 = v40;
  OUTLINED_FUNCTION_138();
  v134 = v41;
  v136 = v11;
  sub_1E4201F54();
  OUTLINED_FUNCTION_0_10();
  v132 = v43;
  v133 = v42;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v44);
  OUTLINED_FUNCTION_44();
  v131 = v45;
  if ((v6 & 1) != 0 || v10 == 4)
  {
    if (v127)
    {

      sub_1E3A9D168();
      if (v176)
      {
        v156 = v177;
        v157 = v178;
        v155 = v176;
        OUTLINED_FUNCTION_30_12();
        sub_1E325F6F0(&v176, &qword_1ECF2A260);
        OUTLINED_FUNCTION_17_18();
        v68 = sub_1E32752B0(v66, v67);
        v153 = v4;
        v154 = v68;
        OUTLINED_FUNCTION_13_33();
        v129 = v33;
        v69 = v135;
        WitnessTable = swift_getWitnessTable();
        v70 = v121;
        v126 = v30;
        v71 = *(v121 + 16);
        v73 = v124;
        v72 = v125;
        v71(v124, v125, v69);
        v128 = *(v70 + 8);
        v128(v72, v69);
        v71(v72, v73, v69);
        v65 = v4;
        v74 = sub_1E32752B0(&qword_1EE288880, &qword_1ECF2A218);
        v151 = v4;
        v152 = v74;
        v75 = v130;
        v76 = swift_getWitnessTable();
        v77 = v72;
        v78 = WitnessTable;
        sub_1E37B8E90(v77, v75, v69);
        v149 = v76;
        v150 = v78;
        OUTLINED_FUNCTION_2_25();
        v79 = v134;
        swift_getWitnessTable();
        OUTLINED_FUNCTION_1_25();
        v82 = sub_1E32752B0(v80, v81);
        v147 = v65;
        v148 = v82;
        swift_getWitnessTable();
        v61 = v131;
        v83 = v129;
        OUTLINED_FUNCTION_20_21();
        sub_1E37B8D98(v84, v85);

        (*(v126 + 8))(v83, v79);
        v86 = v128;
        v128(v125, v69);
        v86(v124, v69);
        goto LABEL_15;
      }
    }

    if (v6)
    {
      v87 = v120;
      if (v120)
      {
        v88 = v120;
      }

      else
      {
        v88 = *sub_1E3E5FD88();
      }

      v89 = v87;
      sub_1E38F08C4(v88);
    }

    v90 = v137;
    sub_1E4202FB4();

    OUTLINED_FUNCTION_1_25();
    v93 = sub_1E32752B0(v91, v92);
    v174 = v90;
    v175 = v93;
    v94 = v136;
    v129 = swift_getWitnessTable();
    v95 = WitnessTable;
    v96 = *(WitnessTable + 16);
    (v96)(v126, v18, v94);
    v128 = *(v95 + 8);
    v97 = v18;
    v65 = v90;
    v128(v97, v94);
    v98 = v122;
    OUTLINED_FUNCTION_20_21();
    v96();
    OUTLINED_FUNCTION_17_18();
    v101 = sub_1E32752B0(v99, v100);
    v172 = v90;
    v173 = v101;
    v102 = swift_getWitnessTable();
    v103 = sub_1E32752B0(&qword_1EE288878, &qword_1ECF2A220);
    v170 = v90;
    v171 = v103;
    v104 = swift_getWitnessTable();
    v168 = v102;
    v169 = v104;
    OUTLINED_FUNCTION_2_25();
    swift_getWitnessTable();
    v61 = v131;
    OUTLINED_FUNCTION_20_21();
    sub_1E37B8E90(v105, v106, v107);
    v108 = v128;
    v128(v98, v94);
    v108(v126, v94);
  }

  else
  {
    LODWORD(v176) = sub_1E41261D8(v10);
    OUTLINED_FUNCTION_30_12();
    v46 = sub_1E32752B0(&qword_1EE288880, &qword_1ECF2A218);
    v145 = v4;
    v146 = v46;
    OUTLINED_FUNCTION_4_1();
    v124 = v47;
    v126 = v30;
    v48 = v130;
    v125 = swift_getWitnessTable();
    v129 = v33;
    v49 = *(v34 + 16);
    v50 = v128;
    v49(v128, v38, v48);
    v127 = *(v34 + 8);
    v127(v38, v48);
    v49(v38, v50, v48);
    v51 = v4;
    v52 = sub_1E32752B0(&qword_1EE288878, &qword_1ECF2A220);
    v143 = v4;
    v144 = v52;
    v53 = swift_getWitnessTable();
    v54 = v129;
    v55 = v125;
    sub_1E37B8D98(v38, v48);
    v141 = v55;
    v142 = v53;
    OUTLINED_FUNCTION_2_25();
    v56 = v134;
    swift_getWitnessTable();
    OUTLINED_FUNCTION_1_25();
    v59 = sub_1E32752B0(v57, v58);
    v139 = v51;
    v140 = v59;
    swift_getWitnessTable();
    OUTLINED_FUNCTION_20_21();
    v61 = v60;
    sub_1E37B8D98(v62, v63);
    (*(v126 + 8))(v54, v56);
    v64 = v127;
    v127(v38, v48);
    v64(v128, v48);
    v65 = v51;
  }

LABEL_15:
  v109 = sub_1E32752B0(&qword_1EE288880, &qword_1ECF2A218);
  v166 = v65;
  v167 = v109;
  v110 = swift_getWitnessTable();
  v111 = sub_1E32752B0(&qword_1EE288878, &qword_1ECF2A220);
  v164 = v65;
  v165 = v111;
  v112 = swift_getWitnessTable();
  v162 = v110;
  v163 = v112;
  v113 = swift_getWitnessTable();
  OUTLINED_FUNCTION_1_25();
  v116 = sub_1E32752B0(v114, v115);
  v160 = v65;
  v161 = v116;
  v117 = swift_getWitnessTable();
  v158 = v113;
  v159 = v117;
  v118 = v133;
  swift_getWitnessTable();
  v119 = v132;
  (*(v132 + 16))(v138, v61, v118);
  (*(v119 + 8))(v61, v118);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E37B8438()
{
  OUTLINED_FUNCTION_31_1();
  WitnessTable = v0;
  v80 = v2;
  v81 = v1;
  v4 = v3;
  v74 = v5;
  v76 = v5;
  OUTLINED_FUNCTION_1_2();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_4_6();
  v11 = (v9 - v10);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v69 - v13;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2A228);
  OUTLINED_FUNCTION_18_12();
  v15 = sub_1E42013A4();
  OUTLINED_FUNCTION_0_10();
  v73 = v16;
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_4_6();
  v72 = v18 - v19;
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_25_3();
  v71 = v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A258);
  MEMORY[0x1EEE9AC00](v22 - 8);
  OUTLINED_FUNCTION_4_6();
  v25 = v23 - v24;
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v69 - v27;
  v29 = sub_1E4203D34();
  OUTLINED_FUNCTION_0_10();
  v75 = v30;
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_5();
  v34 = v33 - v32;
  OUTLINED_FUNCTION_138();
  v79 = sub_1E4201F54();
  OUTLINED_FUNCTION_0_10();
  v77 = v35;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v36);
  v38 = &v69 - v37;
  if (v76 == 11)
  {
    __swift_storeEnumTagSinglePayload(v28, 1, 1, v29);
LABEL_5:
    sub_1E325F6F0(v28, &qword_1ECF2A258);
    v40 = *(v7 + 16);
    v40(v14, WitnessTable, v4);
    v40(v11, v14, v4);
    OUTLINED_FUNCTION_1_25();
    v43 = sub_1E32752B0(v41, v42);
    v60 = v81;
    v88 = v81;
    v89 = v43;
    OUTLINED_FUNCTION_4_1();
    swift_getWitnessTable();
    v44 = OUTLINED_FUNCTION_134_0();
    sub_1E37B8E90(v44, v45, v4);
    v46 = *(v7 + 8);
    v46(v11, v4);
    v47 = OUTLINED_FUNCTION_23_16();
    (v46)(v47);
    goto LABEL_6;
  }

  sub_1E41263A0(v74, v28);
  OUTLINED_FUNCTION_22_12();
  if (v39)
  {
    goto LABEL_5;
  }

  v48 = *(v75 + 32);
  v70 = v34;
  v48(v34, v28, v29);
  swift_getKeyPath();
  OUTLINED_FUNCTION_20_21();
  v49();
  __swift_storeEnumTagSinglePayload(v25, 0, 1, v29);
  v50 = v72;
  v51 = v81;
  sub_1E4202DE4();

  sub_1E325F6F0(v25, &qword_1ECF2A258);
  OUTLINED_FUNCTION_1_25();
  v54 = sub_1E32752B0(v52, v53);
  v82 = v51;
  v83 = v54;
  OUTLINED_FUNCTION_4_1();
  WitnessTable = swift_getWitnessTable();
  v55 = v73;
  v56 = *(v73 + 16);
  v57 = v71;
  v56(v71, v50, v15);
  v58 = *(v55 + 8);
  v59 = OUTLINED_FUNCTION_134_0();
  v58(v59);
  v56(v50, v57, v15);
  v60 = v81;
  v61 = OUTLINED_FUNCTION_134_0();
  sub_1E37B8D98(v61, v62);
  v63 = OUTLINED_FUNCTION_134_0();
  v58(v63);
  (v58)(v57, v15);
  (*(v75 + 8))(v70, v29);
LABEL_6:
  OUTLINED_FUNCTION_1_25();
  v66 = sub_1E32752B0(v64, v65);
  v86 = v60;
  v87 = v66;
  OUTLINED_FUNCTION_4_1();
  v84 = swift_getWitnessTable();
  v85 = v60;
  OUTLINED_FUNCTION_2_25();
  v67 = v79;
  swift_getWitnessTable();
  v68 = v77;
  (*(v77 + 16))(v80, v38, v67);
  (*(v68 + 8))(v38, v67);
  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E37B89FC(uint64_t a1)
{
  if (a1)
  {
    v2 = (*(*a1 + 2048))(a1);
    v4 = v3;
  }

  else
  {
    v2 = 0;
    v4 = 1;
  }

  if (sub_1E3B028AC())
  {
    if (!a1)
    {
      return 0;
    }

    v5 = (*(*a1 + 2072))();
    if (v6)
    {
      return 0;
    }

    v2 = v5;
LABEL_15:
    if (v2)
    {
      return v2;
    }

    return 0;
  }

  if ((sub_1E3B02A04() & 1) == 0)
  {
    if (v4)
    {
      return v2;
    }

    goto LABEL_15;
  }

  if (!a1)
  {
    return 0;
  }

  v7 = (*(*a1 + 2096))();
  if (v8)
  {
    return 0;
  }

  v2 = v7;
  if (!v7)
  {
    return 0;
  }

  return v2;
}