unint64_t sub_2681FBB34()
{
  result = qword_28024F490;
  if (!qword_28024F490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024F490);
  }

  return result;
}

unint64_t sub_2681FBB88()
{
  result = qword_28024F498;
  if (!qword_28024F498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024F498);
  }

  return result;
}

unint64_t sub_2681FBBDC()
{
  result = qword_28024F4A0;
  if (!qword_28024F4A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024F4A0);
  }

  return result;
}

unint64_t sub_2681FBC30()
{
  result = qword_28024F4A8;
  if (!qword_28024F4A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024F4A8);
  }

  return result;
}

unint64_t sub_2681FBC84()
{
  result = qword_28024F4B0;
  if (!qword_28024F4B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024F4B0);
  }

  return result;
}

unint64_t sub_2681FBCD8()
{
  result = qword_28024F4B8;
  if (!qword_28024F4B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024F4B8);
  }

  return result;
}

unint64_t sub_2681FBD2C()
{
  result = qword_28024F4C0;
  if (!qword_28024F4C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024F4C0);
  }

  return result;
}

unint64_t sub_2681FBD80()
{
  result = qword_28024F4C8;
  if (!qword_28024F4C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024F4C8);
  }

  return result;
}

unint64_t sub_2681FBDD4()
{
  result = qword_28024F4D0;
  if (!qword_28024F4D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024F4D0);
  }

  return result;
}

unint64_t sub_2681FBE28()
{
  result = qword_28024F4D8;
  if (!qword_28024F4D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024F4D8);
  }

  return result;
}

unint64_t sub_2681FBE7C()
{
  result = qword_28024F4E0;
  if (!qword_28024F4E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024F4E0);
  }

  return result;
}

unint64_t sub_2681FBED0()
{
  result = qword_28024F4E8;
  if (!qword_28024F4E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024F4E8);
  }

  return result;
}

unint64_t sub_2681FBF24()
{
  result = qword_28024F4F0;
  if (!qword_28024F4F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024F4F0);
  }

  return result;
}

unint64_t sub_2681FBF78()
{
  result = qword_28024F4F8;
  if (!qword_28024F4F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024F4F8);
  }

  return result;
}

unint64_t sub_2681FBFCC()
{
  result = qword_28024F500;
  if (!qword_28024F500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024F500);
  }

  return result;
}

uint64_t Snippet.SectionHeading.hash(into:)()
{
  v1 = v0;
  v2 = sub_2683CB528();
  v3 = OUTLINED_FUNCTION_0_3(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_14_3();
  v10 = v9 - v8;
  v11 = type metadata accessor for Snippet.SectionHeading();
  v12 = OUTLINED_FUNCTION_1(v11);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_14_3();
  v17 = (v16 - v15);
  sub_2681F9B38(v1, v16 - v15);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      memcpy(__dst, v17, 0x61uLL);
      MEMORY[0x26D617190](3);
      memcpy(v27, __dst, sizeof(v27));
      Snippet.ReminderList.hash(into:)();
      return sub_26814F740(__dst);
    case 2u:
      v22 = *v17;
      v23 = v17[1];
      v24 = 4;
      goto LABEL_9;
    case 3u:
      v25 = *v17;
      v26 = v17[1];
      v24 = 10;
LABEL_9:
      MEMORY[0x26D617190](v24);
      sub_2683CFB48();

    case 4u:
      v21 = 0;
      goto LABEL_17;
    case 5u:
      v21 = 2;
      goto LABEL_17;
    case 6u:
      v21 = 5;
      goto LABEL_17;
    case 7u:
      v21 = 6;
      goto LABEL_17;
    case 8u:
      v21 = 7;
      goto LABEL_17;
    case 9u:
      v21 = 8;
      goto LABEL_17;
    case 0xAu:
      v21 = 9;
      goto LABEL_17;
    case 0xBu:
      v21 = 11;
      goto LABEL_17;
    case 0xCu:
      v21 = 12;
      goto LABEL_17;
    case 0xDu:
      v21 = 13;
LABEL_17:
      result = MEMORY[0x26D617190](v21);
      break;
    default:
      (*(v5 + 32))(v10, v17, v2);
      MEMORY[0x26D617190](1);
      OUTLINED_FUNCTION_7_17();
      sub_2681FD5F0(v18, v19);
      sub_2683CFA08();
      result = (*(v5 + 8))(v10, v2);
      break;
  }

  return result;
}

uint64_t Snippet.SectionHeading.hashValue.getter()
{
  sub_2683D0698();
  Snippet.SectionHeading.hash(into:)();
  return sub_2683D06D8();
}

uint64_t Snippet.SectionHeading.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v240 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024F508, &qword_2683DB9F0);
  OUTLINED_FUNCTION_0_38(v4, &v258);
  v241 = v5;
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_6_0(v9);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024F510, &qword_2683DB9F8);
  OUTLINED_FUNCTION_0_38(v10, &__src[80]);
  v229 = v11;
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_6_0(v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024F518, &qword_2683DBA00);
  OUTLINED_FUNCTION_0_38(v16, &__src[56]);
  v226 = v17;
  v19 = *(v18 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_6_0(v21);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024F520, &qword_2683DBA08);
  OUTLINED_FUNCTION_0_38(v22, &__src[64]);
  v208 = v23;
  v25 = *(v24 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_6_0(v27);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024F528, &qword_2683DBA10);
  OUTLINED_FUNCTION_0_38(v28, &__src[40]);
  v224 = v29;
  v31 = *(v30 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_6_0(v33);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024F530, &qword_2683DBA18);
  OUTLINED_FUNCTION_0_38(v34, &__src[24]);
  v222 = v35;
  v37 = *(v36 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_6_0(v39);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024F538, &qword_2683DBA20);
  OUTLINED_FUNCTION_0_38(v40, &__src[8]);
  v220 = v41;
  v43 = *(v42 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_6_0(v45);
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024F540, &qword_2683DBA28);
  OUTLINED_FUNCTION_0_38(v46, &v247);
  v218 = v47;
  v49 = *(v48 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v50);
  OUTLINED_FUNCTION_5_0();
  v245 = v51;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024F548, &qword_2683DBA30);
  OUTLINED_FUNCTION_0_38(v52, &v244);
  v215 = v53;
  v55 = *(v54 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v56);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_6_0(v57);
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024F550, &qword_2683DBA38);
  OUTLINED_FUNCTION_0_38(v58, &v245);
  v207 = v59;
  v61 = *(v60 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v62);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_6_0(v63);
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024F558, &qword_2683DBA40);
  OUTLINED_FUNCTION_0_38(v64, &v242);
  v213 = v65;
  v67 = *(v66 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v68);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_6_0(v69);
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024F560, &qword_2683DBA48);
  OUTLINED_FUNCTION_0_38(v70, &v239);
  v211 = v71;
  v73 = *(v72 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v74);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_6_0(v75);
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024F568, &qword_2683DBA50);
  OUTLINED_FUNCTION_0_38(v76, &v240);
  v206 = v77;
  v79 = *(v78 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v80);
  OUTLINED_FUNCTION_5_0();
  v244 = v81;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024F570, &qword_2683DBA58);
  OUTLINED_FUNCTION_0_38(v82, v237);
  v209 = v83;
  v85 = *(v84 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v86);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_6_0(v87);
  v246 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024F578, &unk_2683DBA60);
  OUTLINED_FUNCTION_0_3(v246);
  v243 = v88;
  v90 = *(v89 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v91);
  v93 = &v199 - v92;
  v242 = type metadata accessor for Snippet.SectionHeading();
  v94 = OUTLINED_FUNCTION_1(v242);
  v96 = *(v95 + 64);
  v97 = MEMORY[0x28223BE20](v94);
  v99 = &v199 - ((v98 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = MEMORY[0x28223BE20](v97);
  v102 = &v199 - v101;
  v103 = MEMORY[0x28223BE20](v100);
  v105 = &v199 - v104;
  MEMORY[0x28223BE20](v103);
  OUTLINED_FUNCTION_23_14();
  MEMORY[0x28223BE20](v106);
  v108 = &v199 - v107;
  v110 = a1[3];
  v109 = a1[4];
  v247 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v110);
  sub_2681FBB34();
  v111 = v251;
  sub_2683D06F8();
  if (v111)
  {
    goto LABEL_10;
  }

  v201 = v102;
  v204 = v2;
  v202 = v99;
  v203 = v105;
  v251 = v108;
  v112 = v246;
  v113 = v93;
  v114 = sub_2683D04B8();
  result = sub_268151B7C(v114, 0);
  if (v117 == v118 >> 1)
  {
    v119 = v243;
LABEL_9:
    v133 = v242;
    v134 = sub_2683D01D8();
    swift_allocError();
    v136 = v135;
    v137 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D690, &qword_2683D52C0) + 48);
    *v136 = v133;
    sub_2683D0428();
    sub_2683D01C8();
    (*(*(v134 - 8) + 104))(v136, *MEMORY[0x277D84160], v134);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v119 + 8))(v113, v112);
LABEL_10:
    v138 = v247;
    return __swift_destroy_boxed_opaque_existential_0(v138);
  }

  v205 = v93;
  v200 = 0;
  if (v117 < (v118 >> 1))
  {
    v120 = *(v116 + v117);
    sub_268151B68(v117 + 1);
    v122 = v121;
    v124 = v123;
    swift_unknownObjectRelease();
    v125 = v241;
    if (v122 == v124 >> 1)
    {
      v126 = v240;
      v127 = v200;
      v128 = v239;
      switch(v120)
      {
        case 1:
          __src[0] = 1;
          sub_2681FBF78();
          OUTLINED_FUNCTION_4_23();
          sub_2683CB528();
          OUTLINED_FUNCTION_7_17();
          sub_2681FD5F0(v162, v163);
          v164 = v204;
          OUTLINED_FUNCTION_25_12();
          sub_2683D04A8();
          swift_unknownObjectRelease();
          v190 = OUTLINED_FUNCTION_10_14(v233);
          v191(v190);
          v192 = OUTLINED_FUNCTION_9_20();
          v193(v192);
          swift_storeEnumTagMultiPayload();
          v194 = v164;
          goto LABEL_30;
        case 2:
          __src[0] = 2;
          sub_2681FBF24();
          OUTLINED_FUNCTION_3_24(&__src[96]);
          swift_unknownObjectRelease();
          v152 = OUTLINED_FUNCTION_6_24(&v238);
          v153(v152, v212);
          v154 = OUTLINED_FUNCTION_5_23();
          v155(v154);
          OUTLINED_FUNCTION_8_20();
          goto LABEL_27;
        case 3:
          __src[0] = 3;
          sub_2681FBED0();
          OUTLINED_FUNCTION_20_15(v249);
          v156 = v246;
          v157 = v205;
          sub_2683D0418();
          if (v127)
          {
            (*(v243 + 8))(v157, v156);
            swift_unknownObjectRelease();
            goto LABEL_10;
          }

          sub_26814FCE8();
          v176 = v214;
          OUTLINED_FUNCTION_25_12();
          sub_2683D04A8();
          v177 = (v213 + 8);
          swift_unknownObjectRelease();
          (*v177)(v125, v176);
          v187 = OUTLINED_FUNCTION_24_9();
          v188(v187);
          v189 = v203;
          memcpy(v203, __src, 0x61uLL);
          swift_storeEnumTagMultiPayload();
          v194 = v189;
LABEL_30:
          v124 = v251;
          sub_2681FD544(v194, v251);
LABEL_28:
          v182 = v247;
          sub_2681FD544(v124, v126);
          v138 = v182;
          break;
        case 4:
          __src[0] = 4;
          sub_2681FBE7C();
          OUTLINED_FUNCTION_20_15(&v250);
          OUTLINED_FUNCTION_4_23();
          v143 = v217;
          OUTLINED_FUNCTION_25_12();
          sub_2683D0478();
          swift_unknownObjectRelease();
          v183 = OUTLINED_FUNCTION_10_14(v234);
          v184(v183);
          v185 = OUTLINED_FUNCTION_9_20();
          v186(v185);
          OUTLINED_FUNCTION_22_10(v231);
          goto LABEL_29;
        case 5:
          __src[0] = 5;
          sub_2681FBE28();
          OUTLINED_FUNCTION_3_24(&v251);
          swift_unknownObjectRelease();
          v165 = OUTLINED_FUNCTION_6_24(&v243);
          v166(v165, v216);
          v167 = OUTLINED_FUNCTION_5_23();
          v168(v167);
          OUTLINED_FUNCTION_8_20();
          goto LABEL_27;
        case 6:
          __src[0] = 6;
          sub_2681FBDD4();
          OUTLINED_FUNCTION_4_23();
          swift_unknownObjectRelease();
          v172 = OUTLINED_FUNCTION_6_24(&v246);
          v173(v172, v219);
          v174 = OUTLINED_FUNCTION_5_23();
          v175(v174);
          OUTLINED_FUNCTION_8_20();
          goto LABEL_27;
        case 7:
          __src[0] = 7;
          sub_2681FBD80();
          OUTLINED_FUNCTION_3_24(&v252);
          swift_unknownObjectRelease();
          v158 = OUTLINED_FUNCTION_6_24(__src);
          v159(v158, v221);
          v160 = OUTLINED_FUNCTION_5_23();
          v161(v160);
          OUTLINED_FUNCTION_8_20();
          goto LABEL_27;
        case 8:
          __src[0] = 8;
          sub_2681FBD2C();
          OUTLINED_FUNCTION_3_24(&v253);
          swift_unknownObjectRelease();
          v178 = OUTLINED_FUNCTION_6_24(&__src[16]);
          v179(v178, v223);
          v180 = OUTLINED_FUNCTION_5_23();
          v181(v180);
          OUTLINED_FUNCTION_8_20();
          goto LABEL_27;
        case 9:
          __src[0] = 9;
          sub_2681FBCD8();
          OUTLINED_FUNCTION_3_24(&v254);
          swift_unknownObjectRelease();
          v148 = OUTLINED_FUNCTION_6_24(&__src[32]);
          v149(v148, v225);
          v150 = OUTLINED_FUNCTION_5_23();
          v151(v150);
          OUTLINED_FUNCTION_8_20();
          goto LABEL_27;
        case 10:
          __src[0] = 10;
          sub_2681FBC84();
          OUTLINED_FUNCTION_20_15(&v255);
          OUTLINED_FUNCTION_4_23();
          v143 = v228;
          OUTLINED_FUNCTION_25_12();
          sub_2683D0478();
          swift_unknownObjectRelease();
          v195 = OUTLINED_FUNCTION_10_14(v235);
          v196(v195);
          v197 = OUTLINED_FUNCTION_9_20();
          v198(v197);
          OUTLINED_FUNCTION_22_10(v232);
LABEL_29:
          swift_storeEnumTagMultiPayload();
          v194 = v143;
          goto LABEL_30;
        case 11:
          __src[0] = 11;
          sub_2681FBC30();
          OUTLINED_FUNCTION_3_24(&v256);
          swift_unknownObjectRelease();
          v139 = OUTLINED_FUNCTION_6_24(&__src[48]);
          v140(v139, v227);
          v141 = OUTLINED_FUNCTION_5_23();
          v142(v141);
          OUTLINED_FUNCTION_8_20();
          goto LABEL_27;
        case 12:
          __src[0] = 12;
          sub_2681FBBDC();
          OUTLINED_FUNCTION_3_24(&v257);
          swift_unknownObjectRelease();
          v144 = OUTLINED_FUNCTION_6_24(&__src[72]);
          v145(v144, v230);
          v146 = OUTLINED_FUNCTION_5_23();
          v147(v146);
          OUTLINED_FUNCTION_8_20();
          goto LABEL_27;
        case 13:
          __src[0] = 13;
          sub_2681FBB88();
          v169 = v238;
          OUTLINED_FUNCTION_4_23();
          swift_unknownObjectRelease();
          (*(v125 + 8))(v169, v128);
          v170 = OUTLINED_FUNCTION_5_23();
          v171(v170);
          OUTLINED_FUNCTION_8_20();
          goto LABEL_27;
        default:
          __src[0] = 0;
          sub_2681FBFCC();
          OUTLINED_FUNCTION_3_24(&__src[88]);
          swift_unknownObjectRelease();
          v129 = OUTLINED_FUNCTION_6_24(v236);
          v130(v129, v210);
          v131 = OUTLINED_FUNCTION_5_23();
          v132(v131);
          OUTLINED_FUNCTION_8_20();
LABEL_27:
          swift_storeEnumTagMultiPayload();
          goto LABEL_28;
      }

      return __swift_destroy_boxed_opaque_existential_0(v138);
    }

    v112 = v246;
    v119 = v243;
    v113 = v205;
    goto LABEL_9;
  }

  __break(1u);
  return result;
}

uint64_t sub_2681FD500()
{
  sub_2683D0698();
  Snippet.SectionHeading.hash(into:)();
  return sub_2683D06D8();
}

uint64_t sub_2681FD544(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Snippet.SectionHeading();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2681FD5F0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2681FD640()
{
  result = sub_2683CB528();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

_BYTE *_s14descr2878F8F29V14SectionHeadingO10CodingKeysOwst(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 13 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 13) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF2)
  {
    v6 = ((a2 - 243) >> 8) + 1;
    *result = a2 + 13;
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
          *result = a2 + 13;
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_2681FD830(_BYTE *result, int a2, int a3)
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

unint64_t sub_2681FD910()
{
  result = qword_28024F598;
  if (!qword_28024F598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024F598);
  }

  return result;
}

unint64_t sub_2681FD968()
{
  result = qword_28024F5A0;
  if (!qword_28024F5A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024F5A0);
  }

  return result;
}

unint64_t sub_2681FD9C0()
{
  result = qword_28024F5A8;
  if (!qword_28024F5A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024F5A8);
  }

  return result;
}

unint64_t sub_2681FDA18()
{
  result = qword_28024F5B0;
  if (!qword_28024F5B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024F5B0);
  }

  return result;
}

unint64_t sub_2681FDA70()
{
  result = qword_28024F5B8;
  if (!qword_28024F5B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024F5B8);
  }

  return result;
}

unint64_t sub_2681FDAC8()
{
  result = qword_28024F5C0;
  if (!qword_28024F5C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024F5C0);
  }

  return result;
}

unint64_t sub_2681FDB20()
{
  result = qword_28024F5C8;
  if (!qword_28024F5C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024F5C8);
  }

  return result;
}

unint64_t sub_2681FDB78()
{
  result = qword_28024F5D0;
  if (!qword_28024F5D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024F5D0);
  }

  return result;
}

unint64_t sub_2681FDBD0()
{
  result = qword_28024F5D8;
  if (!qword_28024F5D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024F5D8);
  }

  return result;
}

unint64_t sub_2681FDC28()
{
  result = qword_28024F5E0;
  if (!qword_28024F5E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024F5E0);
  }

  return result;
}

unint64_t sub_2681FDC80()
{
  result = qword_28024F5E8;
  if (!qword_28024F5E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024F5E8);
  }

  return result;
}

unint64_t sub_2681FDCD8()
{
  result = qword_28024F5F0;
  if (!qword_28024F5F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024F5F0);
  }

  return result;
}

unint64_t sub_2681FDD30()
{
  result = qword_28024F5F8;
  if (!qword_28024F5F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024F5F8);
  }

  return result;
}

unint64_t sub_2681FDD88()
{
  result = qword_28024F600;
  if (!qword_28024F600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024F600);
  }

  return result;
}

unint64_t sub_2681FDDE0()
{
  result = qword_28024F608;
  if (!qword_28024F608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024F608);
  }

  return result;
}

unint64_t sub_2681FDE38()
{
  result = qword_28024F610;
  if (!qword_28024F610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024F610);
  }

  return result;
}

unint64_t sub_2681FDE90()
{
  result = qword_28024F618;
  if (!qword_28024F618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024F618);
  }

  return result;
}

unint64_t sub_2681FDEE8()
{
  result = qword_28024F620;
  if (!qword_28024F620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024F620);
  }

  return result;
}

unint64_t sub_2681FDF40()
{
  result = qword_28024F628;
  if (!qword_28024F628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024F628);
  }

  return result;
}

unint64_t sub_2681FDF98()
{
  result = qword_28024F630;
  if (!qword_28024F630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024F630);
  }

  return result;
}

unint64_t sub_2681FDFF0()
{
  result = qword_28024F638;
  if (!qword_28024F638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024F638);
  }

  return result;
}

unint64_t sub_2681FE048()
{
  result = qword_28024F640;
  if (!qword_28024F640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024F640);
  }

  return result;
}

unint64_t sub_2681FE0A0()
{
  result = qword_28024F648;
  if (!qword_28024F648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024F648);
  }

  return result;
}

unint64_t sub_2681FE0F8()
{
  result = qword_28024F650;
  if (!qword_28024F650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024F650);
  }

  return result;
}

unint64_t sub_2681FE150()
{
  result = qword_28024F658;
  if (!qword_28024F658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024F658);
  }

  return result;
}

unint64_t sub_2681FE1A8()
{
  result = qword_28024F660;
  if (!qword_28024F660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024F660);
  }

  return result;
}

unint64_t sub_2681FE200()
{
  result = qword_28024F668;
  if (!qword_28024F668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024F668);
  }

  return result;
}

unint64_t sub_2681FE258()
{
  result = qword_28024F670;
  if (!qword_28024F670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024F670);
  }

  return result;
}

unint64_t sub_2681FE2B0()
{
  result = qword_28024F678;
  if (!qword_28024F678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024F678);
  }

  return result;
}

unint64_t sub_2681FE308()
{
  result = qword_28024F680;
  if (!qword_28024F680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024F680);
  }

  return result;
}

unint64_t sub_2681FE360()
{
  result = qword_28024F688;
  if (!qword_28024F688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024F688);
  }

  return result;
}

unint64_t sub_2681FE3B8()
{
  result = qword_28024F690;
  if (!qword_28024F690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024F690);
  }

  return result;
}

unint64_t sub_2681FE410()
{
  result = qword_28024F698;
  if (!qword_28024F698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024F698);
  }

  return result;
}

unint64_t sub_2681FE468()
{
  result = qword_28024F6A0;
  if (!qword_28024F6A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024F6A0);
  }

  return result;
}

unint64_t sub_2681FE4C0()
{
  result = qword_28024F6A8;
  if (!qword_28024F6A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024F6A8);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_0_38@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(a2 - 256) = result;
  v2 = *(result - 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_3_24@<X0>(uint64_t a1@<X8>)
{
  v3 = *(a1 - 256);
  v4 = *(v1 - 208);
  v5 = *(v1 - 576);

  return sub_2683D0418();
}

uint64_t OUTLINED_FUNCTION_4_23()
{
  v2 = *(v0 - 208);
  v3 = *(v0 - 576);

  return sub_2683D0418();
}

uint64_t OUTLINED_FUNCTION_8_20()
{
  result = *(v0 - 72);
  v2 = *(v0 - 240);
  return result;
}

uint64_t OUTLINED_FUNCTION_9_20()
{
  v1 = *(*(v0 - 232) + 8);
  result = *(v0 - 576);
  v3 = *(v0 - 208);
  return result;
}

uint64_t OUTLINED_FUNCTION_16_21()
{
  v2 = *(v0 - 320);
  v3 = *(v0 - 328);

  return sub_2683D04C8();
}

uint64_t OUTLINED_FUNCTION_19_17()
{

  return swift_getEnumCaseMultiPayload();
}

void *OUTLINED_FUNCTION_22_10@<X0>(uint64_t a1@<X8>)
{
  v4 = *(a1 - 256);
  *v4 = v1;
  v4[1] = v2;
  result = v4;
  v6 = *(v3 - 240);
  return result;
}

uint64_t OUTLINED_FUNCTION_24_9()
{
  v2 = *v0;
  result = *(v1 - 576);
  v4 = *(v1 - 208);
  return result;
}

uint64_t type metadata accessor for SearchForNotebookItemsV2CATsSimple()
{
  result = qword_28024F6B0;
  if (!qword_28024F6B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2681FE764()
{
  OUTLINED_FUNCTION_14();
  v1[2] = v2;
  v1[3] = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024E7C0, &unk_2683D6CA0);
  OUTLINED_FUNCTION_23(v3);
  v5 = *(v4 + 64);
  v1[4] = OUTLINED_FUNCTION_15_1();
  v6 = OUTLINED_FUNCTION_48();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_2681FE7E8()
{
  OUTLINED_FUNCTION_25();
  v17 = v1;
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_27_8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D260, &qword_2683D43F0);
  v2 = OUTLINED_FUNCTION_20();
  v3 = OUTLINED_FUNCTION_14_8(v2);
  v4 = OUTLINED_FUNCTION_10_12(v3, xmmword_2683D1EC0);
  OUTLINED_FUNCTION_29_8(v4, v5, &unk_28024E7C0, &unk_2683D6CA0);
  v6 = sub_2683CF168();
  OUTLINED_FUNCTION_13(v6);
  if (v7)
  {
    sub_26812C310(v0, &unk_28024E7C0, &unk_2683D6CA0);
    OUTLINED_FUNCTION_31_6();
  }

  else
  {
    OUTLINED_FUNCTION_34_7();
    OUTLINED_FUNCTION_16();
    v9 = *(v8 + 32);
    OUTLINED_FUNCTION_21();
    v10();
  }

  v11 = OUTLINED_FUNCTION_6(MEMORY[0x277D55C70]);
  v12 = OUTLINED_FUNCTION_22(v11);
  *v12 = v13;
  OUTLINED_FUNCTION_8(v12);
  v14 = OUTLINED_FUNCTION_18(39);

  return v15(v14);
}

uint64_t sub_2681FE91C()
{
  OUTLINED_FUNCTION_14();
  v1[2] = v2;
  v1[3] = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024E7C0, &unk_2683D6CA0);
  OUTLINED_FUNCTION_23(v3);
  v5 = *(v4 + 64);
  v1[4] = OUTLINED_FUNCTION_15_1();
  v6 = OUTLINED_FUNCTION_48();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_2681FE9A0()
{
  OUTLINED_FUNCTION_25();
  v17 = v1;
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_27_8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D260, &qword_2683D43F0);
  v2 = OUTLINED_FUNCTION_20();
  v3 = OUTLINED_FUNCTION_14_8(v2);
  v4 = OUTLINED_FUNCTION_10_12(v3, xmmword_2683D1EC0);
  OUTLINED_FUNCTION_29_8(v4, v5, &unk_28024E7C0, &unk_2683D6CA0);
  v6 = sub_2683CF168();
  OUTLINED_FUNCTION_13(v6);
  if (v7)
  {
    sub_26812C310(v0, &unk_28024E7C0, &unk_2683D6CA0);
    OUTLINED_FUNCTION_31_6();
  }

  else
  {
    OUTLINED_FUNCTION_34_7();
    OUTLINED_FUNCTION_16();
    v9 = *(v8 + 32);
    OUTLINED_FUNCTION_21();
    v10();
  }

  v11 = OUTLINED_FUNCTION_6(MEMORY[0x277D55C70]);
  v12 = OUTLINED_FUNCTION_22(v11);
  *v12 = v13;
  OUTLINED_FUNCTION_8(v12);
  v14 = OUTLINED_FUNCTION_18(46);

  return v15(v14);
}

uint64_t sub_2681FEAD4(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_0_1();
}

uint64_t sub_2681FEAE8()
{
  OUTLINED_FUNCTION_15();
  v1 = *(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D260, &qword_2683D43F0);
  v2 = OUTLINED_FUNCTION_20();
  *(v0 + 32) = v2;
  OUTLINED_FUNCTION_10_12(v2, xmmword_2683D1EC0);
  v3 = 0;
  if (v1)
  {
    v3 = sub_2683CEFE8();
  }

  else
  {
    v2[3].n128_u64[1] = 0;
    v2[4].n128_u64[0] = 0;
  }

  v2[3].n128_u64[0] = v1;
  v2[4].n128_u64[1] = v3;
  v9 = OUTLINED_FUNCTION_4_11(MEMORY[0x277D55C70]);

  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_28_10(v4);
  *v5 = v6;
  OUTLINED_FUNCTION_18_18(v5);
  v7 = OUTLINED_FUNCTION_18_20();

  return (v9)(v7);
}

uint64_t sub_2681FEBF0()
{
  OUTLINED_FUNCTION_14();
  v1[2] = v2;
  v1[3] = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024E7C0, &unk_2683D6CA0);
  OUTLINED_FUNCTION_23(v3);
  v5 = *(v4 + 64);
  v1[4] = OUTLINED_FUNCTION_15_1();
  v6 = OUTLINED_FUNCTION_48();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_2681FEC74()
{
  OUTLINED_FUNCTION_25();
  v17 = v1;
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_27_8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D260, &qword_2683D43F0);
  v2 = OUTLINED_FUNCTION_20();
  v3 = OUTLINED_FUNCTION_14_8(v2);
  v4 = OUTLINED_FUNCTION_10_12(v3, xmmword_2683D1EC0);
  OUTLINED_FUNCTION_29_8(v4, v5, &unk_28024E7C0, &unk_2683D6CA0);
  v6 = sub_2683CF168();
  OUTLINED_FUNCTION_13(v6);
  if (v7)
  {
    sub_26812C310(v0, &unk_28024E7C0, &unk_2683D6CA0);
    OUTLINED_FUNCTION_31_6();
  }

  else
  {
    OUTLINED_FUNCTION_34_7();
    OUTLINED_FUNCTION_16();
    v9 = *(v8 + 32);
    OUTLINED_FUNCTION_21();
    v10();
  }

  v11 = OUTLINED_FUNCTION_6(MEMORY[0x277D55C70]);
  v12 = OUTLINED_FUNCTION_22(v11);
  *v12 = v13;
  OUTLINED_FUNCTION_8(v12);
  v14 = OUTLINED_FUNCTION_18(40);

  return v15(v14);
}

uint64_t sub_2681FEDA8(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_0_1();
}

uint64_t sub_2681FEDBC()
{
  OUTLINED_FUNCTION_15();
  v1 = *(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D260, &qword_2683D43F0);
  v2 = OUTLINED_FUNCTION_20();
  *(v0 + 32) = v2;
  OUTLINED_FUNCTION_10_12(v2, xmmword_2683D1EC0);
  v3 = 0;
  if (v1)
  {
    v3 = sub_2683CF088();
  }

  else
  {
    v2[3].n128_u64[1] = 0;
    v2[4].n128_u64[0] = 0;
  }

  v2[3].n128_u64[0] = v1;
  v2[4].n128_u64[1] = v3;
  v9 = OUTLINED_FUNCTION_4_11(MEMORY[0x277D55C70]);

  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_28_10(v4);
  *v5 = v6;
  OUTLINED_FUNCTION_18_18(v5);
  v7 = OUTLINED_FUNCTION_18_20();

  return (v9)(v7);
}

uint64_t sub_2681FEEC4()
{
  OUTLINED_FUNCTION_14();
  v1[2] = v2;
  v1[3] = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024E7C0, &unk_2683D6CA0);
  OUTLINED_FUNCTION_23(v3);
  v5 = *(v4 + 64);
  v1[4] = OUTLINED_FUNCTION_15_1();
  v6 = OUTLINED_FUNCTION_48();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_2681FEF48()
{
  OUTLINED_FUNCTION_25();
  v17 = v1;
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_27_8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D260, &qword_2683D43F0);
  v2 = OUTLINED_FUNCTION_20();
  v3 = OUTLINED_FUNCTION_14_8(v2);
  v4 = OUTLINED_FUNCTION_10_12(v3, xmmword_2683D1EC0);
  OUTLINED_FUNCTION_29_8(v4, v5, &unk_28024E7C0, &unk_2683D6CA0);
  v6 = sub_2683CF168();
  OUTLINED_FUNCTION_13(v6);
  if (v7)
  {
    sub_26812C310(v0, &unk_28024E7C0, &unk_2683D6CA0);
    OUTLINED_FUNCTION_31_6();
  }

  else
  {
    OUTLINED_FUNCTION_34_7();
    OUTLINED_FUNCTION_16();
    v9 = *(v8 + 32);
    OUTLINED_FUNCTION_21();
    v10();
  }

  v11 = OUTLINED_FUNCTION_6(MEMORY[0x277D55C70]);
  v12 = OUTLINED_FUNCTION_22(v11);
  *v12 = v13;
  OUTLINED_FUNCTION_8(v12);
  v14 = OUTLINED_FUNCTION_18(38);

  return v15(v14);
}

uint64_t sub_2681FF07C()
{
  OUTLINED_FUNCTION_14();
  v1[2] = v2;
  v1[3] = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024E7C0, &unk_2683D6CA0);
  OUTLINED_FUNCTION_23(v3);
  v5 = *(v4 + 64);
  v1[4] = OUTLINED_FUNCTION_15_1();
  v6 = OUTLINED_FUNCTION_48();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_2681FF100()
{
  OUTLINED_FUNCTION_25();
  v17 = v1;
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_27_8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D260, &qword_2683D43F0);
  v2 = OUTLINED_FUNCTION_20();
  v3 = OUTLINED_FUNCTION_14_8(v2);
  v4 = OUTLINED_FUNCTION_10_12(v3, xmmword_2683D1EC0);
  OUTLINED_FUNCTION_29_8(v4, v5, &unk_28024E7C0, &unk_2683D6CA0);
  v6 = sub_2683CF168();
  OUTLINED_FUNCTION_13(v6);
  if (v7)
  {
    sub_26812C310(v0, &unk_28024E7C0, &unk_2683D6CA0);
    OUTLINED_FUNCTION_31_6();
  }

  else
  {
    OUTLINED_FUNCTION_34_7();
    OUTLINED_FUNCTION_16();
    v9 = *(v8 + 32);
    OUTLINED_FUNCTION_21();
    v10();
  }

  v11 = OUTLINED_FUNCTION_6(MEMORY[0x277D55C70]);
  v12 = OUTLINED_FUNCTION_22(v11);
  *v12 = v13;
  OUTLINED_FUNCTION_8(v12);
  v14 = OUTLINED_FUNCTION_18(37);

  return v15(v14);
}

uint64_t sub_2681FF234(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_0_1();
}

uint64_t sub_2681FF248()
{
  OUTLINED_FUNCTION_25();
  v10 = v1;
  OUTLINED_FUNCTION_15();
  v2 = *(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D260, &qword_2683D43F0);
  v3 = OUTLINED_FUNCTION_20();
  *(v0 + 32) = v3;
  OUTLINED_FUNCTION_4(v3, xmmword_2683D1EC0);
  v3[4].n128_u64[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D268, &unk_2683D1F70);
  v3[3].n128_u64[0] = v2;
  OUTLINED_FUNCTION_4_11(MEMORY[0x277D55C70]);

  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_28_10(v4);
  *v5 = v6;
  OUTLINED_FUNCTION_18_18(v5);
  v7 = OUTLINED_FUNCTION_17(44);

  return v8(v7);
}

uint64_t sub_2681FF34C(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_0_1();
}

uint64_t sub_2681FF360()
{
  OUTLINED_FUNCTION_25();
  v10 = v1;
  OUTLINED_FUNCTION_15();
  v2 = *(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D260, &qword_2683D43F0);
  v3 = OUTLINED_FUNCTION_20();
  *(v0 + 32) = v3;
  OUTLINED_FUNCTION_4(v3, xmmword_2683D1EC0);
  v3[4].n128_u64[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D268, &unk_2683D1F70);
  v3[3].n128_u64[0] = v2;
  OUTLINED_FUNCTION_4_11(MEMORY[0x277D55C70]);

  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_28_10(v4);
  *v5 = v6;
  OUTLINED_FUNCTION_18_18(v5);
  v7 = OUTLINED_FUNCTION_17(45);

  return v8(v7);
}

uint64_t sub_2681FF464(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_0_1();
}

uint64_t sub_2681FF478()
{
  OUTLINED_FUNCTION_25();
  v10 = v1;
  OUTLINED_FUNCTION_15();
  v2 = *(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D260, &qword_2683D43F0);
  v3 = OUTLINED_FUNCTION_20();
  *(v0 + 32) = v3;
  OUTLINED_FUNCTION_4(v3, xmmword_2683D1EC0);
  v3[4].n128_u64[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D268, &unk_2683D1F70);
  v3[3].n128_u64[0] = v2;
  OUTLINED_FUNCTION_4_11(MEMORY[0x277D55C70]);

  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_28_10(v4);
  *v5 = v6;
  OUTLINED_FUNCTION_18_18(v5);
  v7 = OUTLINED_FUNCTION_17(42);

  return v8(v7);
}

uint64_t sub_2681FF57C()
{
  OUTLINED_FUNCTION_7();
  *(v1 + 56) = v29;
  *(v1 + 64) = v0;
  *(v1 + 40) = v23;
  *(v1 + 48) = v28;
  *(v1 + 117) = v27;
  *(v1 + 116) = v26;
  *(v1 + 115) = v25;
  *(v1 + 114) = v24;
  *(v1 + 113) = v22;
  *(v1 + 24) = v2;
  *(v1 + 32) = v21;
  *(v1 + 112) = v20;
  *(v1 + 111) = v19;
  *(v1 + 110) = v18;
  *(v1 + 109) = v3;
  *(v1 + 108) = v4;
  *(v1 + 107) = v5;
  *(v1 + 106) = v6;
  *(v1 + 105) = v7;
  *(v1 + 104) = v8;
  *(v1 + 16) = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024E7C0, &unk_2683D6CA0);
  OUTLINED_FUNCTION_23(v10);
  v12 = *(v11 + 64);
  *(v1 + 72) = OUTLINED_FUNCTION_15_1();
  v13 = OUTLINED_FUNCTION_48();

  return MEMORY[0x2822009F8](v13, v14, v15);
}

uint64_t sub_2681FF67C()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D260, &qword_2683D43F0);
  v3 = swift_allocObject();
  *(v0 + 80) = v3;
  *(v3 + 16) = xmmword_2683D7770;
  *(v3 + 32) = 0x6554686372616573;
  *(v3 + 40) = 0xEA00000000007478;
  OUTLINED_FUNCTION_29_8(v3, v4, &unk_28024E7C0, &unk_2683D6CA0);
  v5 = sub_2683CF168();
  if (__swift_getEnumTagSinglePayload(v1, 1, v5) == 1)
  {
    sub_26812C310(*(v0 + 72), &unk_28024E7C0, &unk_2683D6CA0);
    *(v3 + 48) = 0u;
    *(v3 + 64) = 0u;
  }

  else
  {
    *(v3 + 72) = v5;
    __swift_allocate_boxed_opaque_existential_0((v3 + 48));
    OUTLINED_FUNCTION_16();
    v7 = *(v6 + 32);
    OUTLINED_FUNCTION_21();
    v8();
  }

  v9 = *(v0 + 105);
  v10 = *(v0 + 104);
  *(v3 + 80) = 0x6E6F707365527369;
  *(v3 + 88) = 0xEF7974706D456573;
  v11 = MEMORY[0x277D839B0];
  *(v3 + 96) = v10;
  *(v3 + 120) = v11;
  strcpy((v3 + 128), "taskListCount");
  *(v3 + 142) = -4864;
  if (v9)
  {
    v12 = 0;
    v13 = 0;
    *(v3 + 152) = 0;
    *(v3 + 160) = 0;
  }

  else
  {
    v12 = *(v0 + 24);
    v13 = MEMORY[0x277D839F8];
  }

  v14 = *(v0 + 113);
  v15 = *(v0 + 112);
  v16 = *(v0 + 111);
  v17 = *(v0 + 110);
  v18 = *(v0 + 109);
  v19 = *(v0 + 108);
  v20 = *(v0 + 107);
  v21 = *(v0 + 106);
  *(v3 + 144) = v12;
  *(v3 + 168) = v13;
  *(v3 + 176) = 0xD000000000000010;
  *(v3 + 184) = 0x80000002683FE240;
  *(v3 + 192) = v21;
  *(v3 + 216) = v11;
  *(v3 + 224) = 0x4F7365746F4E7369;
  *(v3 + 232) = 0xEB00000000796C6ELL;
  *(v3 + 240) = v20;
  *(v3 + 264) = v11;
  *(v3 + 272) = 0x4F736B7361547369;
  *(v3 + 280) = 0xEB00000000796C6ELL;
  *(v3 + 288) = v19;
  *(v3 + 312) = v11;
  *(v3 + 320) = 0x656C706D6F437369;
  *(v3 + 328) = 0xEB00000000646574;
  *(v3 + 336) = v18;
  *(v3 + 360) = v11;
  *(v3 + 368) = 0x79426575447369;
  *(v3 + 376) = 0xE700000000000000;
  *(v3 + 384) = v17;
  *(v3 + 408) = v11;
  *(v3 + 416) = 0x656767616C467369;
  *(v3 + 424) = 0xE900000000000064;
  *(v3 + 432) = v16;
  *(v3 + 456) = v11;
  *(v3 + 464) = 0xD000000000000010;
  *(v3 + 472) = 0x80000002683FE260;
  *(v3 + 480) = v15;
  *(v3 + 504) = v11;
  *(v3 + 512) = 0x6C6F687365726874;
  *(v3 + 520) = 0xE900000000000064;
  if (v14)
  {
    v22 = 0;
    v23 = 0;
    *(v3 + 536) = 0u;
  }

  else
  {
    v22 = *(v0 + 32);
    v23 = MEMORY[0x277D839F8];
  }

  v24 = *(v0 + 114);
  *(v3 + 528) = v22;
  *(v3 + 552) = v23;
  strcpy((v3 + 560), "totalItemCount");
  *(v3 + 575) = -18;
  if (v24)
  {
    v25 = 0;
    v26 = 0;
    *(v3 + 584) = 0u;
  }

  else
  {
    v25 = *(v0 + 40);
    v26 = MEMORY[0x277D839F8];
  }

  v27 = *(v0 + 48);
  v28 = *(v0 + 117);
  v29 = *(v0 + 116);
  v30 = *(v0 + 115);
  *(v3 + 576) = v25;
  *(v3 + 600) = v26;
  *(v3 + 608) = 0x7564656863537369;
  *(v3 + 616) = 0xEB0000000064656CLL;
  *(v3 + 648) = v11;
  *(v3 + 624) = v30;
  *(v3 + 656) = 0x7272756365527369;
  *(v3 + 664) = 0xEB00000000676E69;
  *(v3 + 696) = v11;
  *(v3 + 672) = v29;
  *(v3 + 704) = 0x656C676E69537369;
  *(v3 + 712) = 0xEB00000000796144;
  *(v3 + 744) = v11;
  *(v3 + 720) = v28;
  *(v3 + 752) = 7368801;
  *(v3 + 760) = 0xE300000000000000;
  if (v27)
  {
    v31 = sub_2683CF138();
    v32 = v27;
  }

  else
  {
    v32 = 0;
    v31 = 0;
    *(v3 + 776) = 0u;
  }

  v33 = *(v0 + 56);
  *(v3 + 768) = v32;
  *(v3 + 792) = v31;
  *(v3 + 800) = 0x7261646E656C6163;
  *(v3 + 808) = 0xE800000000000000;
  v34 = 0;
  if (v33)
  {
    v34 = sub_2683CEFE8();
  }

  else
  {
    *(v3 + 824) = 0u;
  }

  *(v3 + 816) = v33;
  *(v3 + 840) = v34;
  v35 = *(MEMORY[0x277D55C70] + 4);
  v39 = (*MEMORY[0x277D55C70] + MEMORY[0x277D55C70]);

  v36 = swift_task_alloc();
  *(v0 + 88) = v36;
  *v36 = v0;
  v36[1] = sub_2681FFB94;
  v37 = *(v0 + 64);

  return v39(0xD00000000000002ELL, 0x80000002683FE280, v3);
}

uint64_t sub_2681FFB94()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3();
  v3 = v2;
  OUTLINED_FUNCTION_2_0();
  *v4 = v3;
  v6 = *(v5 + 88);
  v7 = *v1;
  OUTLINED_FUNCTION_1_0();
  *v8 = v7;
  v3[12] = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_24();

    return MEMORY[0x2822009F8](v9, v10, v11);
  }

  else
  {
    v13 = v3[9];
    v12 = v3[10];

    v14 = OUTLINED_FUNCTION_10();

    return v15(v14);
  }
}

uint64_t sub_2681FFCC4()
{
  OUTLINED_FUNCTION_14();
  v2 = v0[9];
  v1 = v0[10];

  v3 = v0[1];
  v4 = v0[12];

  return v3();
}

uint64_t sub_2681FFD2C()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  OUTLINED_FUNCTION_21();
  return sub_2681FFD7C(v3, v4);
}

uint64_t sub_2681FFD7C(uint64_t a1, uint64_t a2)
{
  v5 = sub_2683CF238();
  v6 = OUTLINED_FUNCTION_19(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D258, &unk_2683D1F60);
  v14 = OUTLINED_FUNCTION_23(v13);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  sub_26812C2A8(a1, &v20 - v17, &qword_28024D258, &unk_2683D1F60);
  (*(v8 + 16))(v12, a2, v2);
  v18 = sub_2683CF178();
  (*(v8 + 8))(a2, v2);
  sub_26812C310(a1, &qword_28024D258, &unk_2683D1F60);
  return v18;
}

uint64_t sub_2681FFEF4(uint64_t a1, uint64_t a2)
{
  v5 = sub_2683CF238();
  v6 = OUTLINED_FUNCTION_19(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v2 + 48);
  v14 = *(v2 + 52);
  swift_allocObject();
  (*(v8 + 16))(v12, a2, v3);
  v15 = sub_2683CF188();
  (*(v8 + 8))(a2, v3);
  return v15;
}

double OUTLINED_FUNCTION_31_6()
{
  result = 0.0;
  *(v0 + 48) = 0u;
  *(v0 + 64) = 0u;
  return result;
}

uint64_t *OUTLINED_FUNCTION_34_7()
{
  *(v1 + 72) = v0;

  return __swift_allocate_boxed_opaque_existential_0((v1 + 48));
}

id sub_268200040(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024E440, &qword_2683D6CD0);
  v5 = OUTLINED_FUNCTION_0_3(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  v11 = &v28 - v10;
  v12 = *(a1 + 16);
  swift_bridgeObjectRetain_n();
  v29 = a2;
  for (i = 0; ; ++i)
  {
    if (v12 == i)
    {
      goto LABEL_13;
    }

    sub_268200AC4(a1 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * i, v11);
    v14 = [*&v11[*(v4 + 28) + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024E428 &qword_2683D6CB0) + 28)]];
    v15 = [v14 _geoMapItem];

    if (!v15)
    {
      sub_268200B34(v11);
LABEL_13:
      v27 = v29;

      swift_bridgeObjectRelease_n();
      return (v12 == i);
    }

    v16 = [v15 _placeDataAsData];
    if (v16)
    {
      v17 = v16;
      v18 = sub_2683CB468();
      v20 = v19;

      sub_268143054(v18, v20);
      swift_unknownObjectRelease();
      sub_268200B34(v11);
      continue;
    }

    result = [v15 name];
    if (!result)
    {
      break;
    }

    v22 = result;
    v23 = sub_2683CFA78();
    v25 = v24;

    swift_unknownObjectRelease();

    if ((v25 & 0x2000000000000000) != 0)
    {
      v26 = HIBYTE(v25) & 0xF;
    }

    else
    {
      v26 = v23 & 0xFFFFFFFFFFFFLL;
    }

    sub_268200B34(v11);
    if (!v26)
    {
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

void *sub_268200288@<X0>(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v74 = a2;
  v72 = a3;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024E440, &qword_2683D6CD0);
  v4 = *(*(v76 - 8) + 64);
  MEMORY[0x28223BE20](v76);
  v7 = (&v72 - v6);
  v8 = *(a1 + 16);
  v9 = MEMORY[0x277D84F90];
  if (!v8)
  {
LABEL_16:
    OUTLINED_FUNCTION_68_0();
    v69 = swift_allocObject();
    *(v69 + 16) = v9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280253370, &qword_2683F1B30);
    v70 = OUTLINED_FUNCTION_19_4();
    *(v70 + 16) = xmmword_2683D1EC0;
    *(v70 + 32) = &unk_2683DC918;
    *(v70 + 40) = v69;
    OUTLINED_FUNCTION_68_0();
    result = swift_allocObject();
    result[2] = v70;
    v71 = v72;
    *v72 = &unk_2683DC920;
    v71[1] = result;
    return result;
  }

  v10 = a1 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
  v75 = *(v5 + 72);
  v11 = &unk_279C3A000;
  v12 = &unk_279C3A000;
  v13 = &unk_280253370;
  v80 = xmmword_2683D1EC0;
  v73 = &v72 - v6;
  while (1)
  {
    v78 = v9;
    v14 = v13;
    sub_268200AC4(v10, v7);
    v15 = v7 + *(v76 + 28);
    v16 = *&v15[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024E428, &qword_2683D6CB0) + 28)];
    v17 = [v16 v11[312]];
    v18 = [v17 v12[443]];

    v79 = v18;
    if (!v18)
    {
      v60 = &unk_2683DC910;
      v59 = 0;
      goto LABEL_11;
    }

    v19 = v12;
    v20 = [v16 v11[312]];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024F6C0, &qword_2683DC928);
    inited = swift_initStackObject();
    OUTLINED_FUNCTION_4_24(inited);
    v22 = *v7;
    v23 = v7[1];
    *(v24 + 56) = &type metadata for DIStringValue;
    v25 = sub_268200DC4();
    inited[2].n128_u64[0] = v22;
    inited[2].n128_u64[1] = v23;
    v26 = v74;
    inited[4].n128_u64[0] = v25;
    inited[4].n128_u64[1] = v26;

    v27 = v26;
    v77 = v20;
    v28 = [v20 v19 + 494];
    if (!v28)
    {
      break;
    }

    v29 = [v28 _placeDataAsData];
    swift_unknownObjectRelease();
    if (!v29)
    {
      break;
    }

    v30 = sub_2683CB468();
    v32 = v31;

    sub_26814F3C8(v30, v32);
    v33 = sub_2682E3910(inited);
    swift_setDeallocating();
    sub_2681F55A8();
    v34 = swift_allocObject();
    v34[2] = v30;
    v34[3] = v32;
    v34[4] = v33;
    v13 = v14;
    __swift_instantiateConcreteTypeFromMangledNameV2(v14, &qword_2683F1B30);
    v35 = OUTLINED_FUNCTION_19_4();
    OUTLINED_FUNCTION_4_24(v35);
    *(v36 + 32) = &unk_2683DC950;
    *(v36 + 40) = v34;
    sub_268143054(v30, v32);
    OUTLINED_FUNCTION_68_0();
    v37 = swift_allocObject();
    *(v37 + 16) = v35;
    v38 = &unk_2683DC958;
LABEL_9:
    v56 = v38;
    __swift_instantiateConcreteTypeFromMangledNameV2(v13, &qword_2683F1B30);
    v57 = OUTLINED_FUNCTION_19_4();
    OUTLINED_FUNCTION_4_24(v57);
    *(v58 + 32) = v56;
    *(v58 + 40) = v37;
    swift_unknownObjectRelease();

    OUTLINED_FUNCTION_68_0();
    v59 = swift_allocObject();
    *(v59 + 16) = v57;
    v60 = &unk_2683DC940;
    v7 = v73;
LABEL_11:
    __swift_instantiateConcreteTypeFromMangledNameV2(v13, &qword_2683F1B30);
    v61 = OUTLINED_FUNCTION_19_4();
    OUTLINED_FUNCTION_4_24(v61);
    *(v62 + 32) = v60;
    *(v62 + 40) = v59;
    OUTLINED_FUNCTION_68_0();
    v63 = swift_allocObject();
    *(v63 + 16) = v61;

    v9 = v78;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_2682E511C(0, *(v9 + 16) + 1, 1, v9);
      v9 = v67;
    }

    v65 = *(v9 + 16);
    v64 = *(v9 + 24);
    if (v65 >= v64 >> 1)
    {
      sub_2682E511C(v64 > 1, v65 + 1, 1, v9);
      v9 = v68;
    }

    *(v9 + 16) = v65 + 1;
    v66 = v9 + 16 * v65;
    *(v66 + 32) = &unk_2683D8170;
    *(v66 + 40) = v63;
    sub_268200B34(v7);
    v10 += v75;
    --v8;
    v11 = &unk_279C3A000;
    v12 = &unk_279C3A000;
    if (!v8)
    {
      goto LABEL_16;
    }
  }

  result = [v79 name];
  if (result)
  {
    v40 = result;
    v13 = v14;
    sub_268200E18();
    v41 = sub_2683CFA78();
    v43 = v42;

    v44 = sub_2681C2F00(v41, v43, 0, 1);
    v45 = [v16 placemark];
    v46 = sub_2682B2068();
    v48 = v47;

    v49 = sub_2681C2F00(v46, v48, 0, 1);
    v50 = sub_2682E3910(inited);
    swift_setDeallocating();
    sub_2681F55A8();
    v51 = [objc_allocWithZone(MEMORY[0x277D4C5A8]) init];
    v52 = [v51 separatorStyle];

    v53 = swift_allocObject();
    *(v53 + 16) = 0;
    *(v53 + 24) = 1;
    *(v53 + 32) = v44;
    *(v53 + 40) = 0;
    *(v53 + 48) = 0;
    *(v53 + 56) = v49;
    *(v53 + 64) = 0;
    *(v53 + 72) = v52;
    *(v53 + 80) = 0;
    *(v53 + 88) = 0;
    *(v53 + 96) = MEMORY[0x277D84F90];
    *(v53 + 104) = v50;
    __swift_instantiateConcreteTypeFromMangledNameV2(v14, &qword_2683F1B30);
    v54 = OUTLINED_FUNCTION_19_4();
    OUTLINED_FUNCTION_4_24(v54);
    *(v55 + 32) = &unk_2683DC930;
    *(v55 + 40) = v53;
    OUTLINED_FUNCTION_68_0();
    v37 = swift_allocObject();
    *(v37 + 16) = v54;
    v38 = &unk_2683DC938;
    goto LABEL_9;
  }

  __break(1u);
  return result;
}

uint64_t sub_268200914(uint64_t a1, void *a2)
{
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024E440, &qword_2683D6CD0);
  v4 = OUTLINED_FUNCTION_0_3(v27);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v4);
  v10 = (&v24 - v9);
  v11 = *(a1 + 16);
  v12 = MEMORY[0x277D84F90];
  if (v11)
  {
    v25 = a2;
    v29 = MEMORY[0x277D84F90];
    sub_268390940(0, v11, 0);
    v12 = v29;
    v13 = a1 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
    v26 = *(v6 + 72);
    do
    {
      sub_268200AC4(v13, v10);
      v14 = v10[1];
      v28 = *v10;
      v15 = *(v27 + 28);

      v16 = sub_2683CF158();
      v18 = v17;
      sub_268200B34(v10);
      v29 = v12;
      v20 = *(v12 + 16);
      v19 = *(v12 + 24);
      if (v20 >= v19 >> 1)
      {
        sub_268390940((v19 > 1), v20 + 1, 1);
        v12 = v29;
      }

      *(v12 + 16) = v20 + 1;
      v21 = (v12 + 32 * v20);
      v21[4] = v28;
      v21[5] = v14;
      v21[6] = v16;
      v21[7] = v18;
      v13 += v26;
      --v11;
    }

    while (v11);
    a2 = v25;
  }

  v22 = a2;
  return v12;
}

uint64_t sub_268200AC4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024E440, &qword_2683D6CD0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_268200B34(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024E440, &qword_2683D6CD0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_268200B9C()
{
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_6_3(v0);
  *v1 = v2;
  v1[1] = sub_268200C38;

  return sub_268186518();
}

uint64_t sub_268200C38(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

uint64_t sub_268200D34()
{
  OUTLINED_FUNCTION_7();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_6_3(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_0_20(v1);

  return v4(v3);
}

unint64_t sub_268200DC4()
{
  result = qword_28024F6C8;
  if (!qword_28024F6C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024F6C8);
  }

  return result;
}

unint64_t sub_268200E18()
{
  result = qword_280253380;
  if (!qword_280253380)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280253380);
  }

  return result;
}

uint64_t sub_268200E5C()
{
  OUTLINED_FUNCTION_7();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_6_3(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_0_20(v1);

  return v4(v3);
}

uint64_t sub_268200EEC(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = a2[1];
  v5 = a2[2];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_268129B00;

  return sub_26833D8D8();
}

uint64_t sub_268200F9C()
{
  OUTLINED_FUNCTION_7();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_6_3(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_0_20(v1);

  return v4(v3);
}

__n128 OUTLINED_FUNCTION_4_24(__n128 *a1)
{
  result = *(v1 - 192);
  a1[1] = result;
  return result;
}

uint64_t sub_268201068()
{
  sub_2683D0408();
  OUTLINED_FUNCTION_9_10();

  if (v0 == 1)
  {
    v1 = 1;
  }

  else
  {
    v1 = 2;
  }

  if (v0)
  {
    return v1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2682010B8(char a1)
{
  if (a1)
  {
    return 0x736B736174;
  }

  else
  {
    return 0x676972547478656ELL;
  }
}

uint64_t sub_26820111C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_268201068();
  *a2 = result;
  return result;
}

uint64_t sub_26820114C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2682010B8(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_268201178()
{
  OUTLINED_FUNCTION_14();
  v1 = type metadata accessor for StringLocalizer();
  *(v0 + 56) = v1;
  v2 = *(*(v1 - 8) + 64);
  *(v0 + 64) = OUTLINED_FUNCTION_15_1();
  v3 = OUTLINED_FUNCTION_48();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_2682011F4()
{
  OUTLINED_FUNCTION_7();
  v1 = v0[8];
  sub_2683CCC48();
  v2 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
  OUTLINED_FUNCTION_9_10();
  sub_2683CC088();
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  if (qword_28024C8D0 != -1)
  {
    swift_once();
  }

  v3 = qword_28027C938;
  *(v0[8] + *(v0[7] + 20)) = qword_28027C938;
  v4 = v3;
  v5 = swift_task_alloc();
  v0[9] = v5;
  *v5 = v0;
  v5[1] = sub_268201324;
  v6 = v0[8];

  return sub_2681E5AB8();
}

uint64_t sub_268201324()
{
  OUTLINED_FUNCTION_7();
  v2 = v1;
  v4 = v3;
  OUTLINED_FUNCTION_42();
  v6 = *(v5 + 72);
  v7 = *(v5 + 64);
  v8 = *v0;
  OUTLINED_FUNCTION_26();
  *v9 = v8;

  sub_268203834(v7, type metadata accessor for StringLocalizer);

  v10 = *(v8 + 8);

  return v10(v4, v2);
}

uint64_t sub_268201460()
{
  OUTLINED_FUNCTION_7();
  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  OUTLINED_FUNCTION_13_18(v1);

  return sub_268201660();
}

uint64_t sub_2682014FC()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_2_13();
  *v2 = v1;
  v4 = *(v3 + 24);
  *v2 = *v0;
  *(v1 + 32) = v5;

  v6 = OUTLINED_FUNCTION_48();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_2682015E4()
{
  OUTLINED_FUNCTION_14();
  *(v0 + 16) = *(v0 + 32);
  sub_2683CBC28();
  sub_2683CBF28();
  OUTLINED_FUNCTION_9_10();

  OUTLINED_FUNCTION_37();

  return v1(v0 + 16);
}

uint64_t sub_268201660()
{
  OUTLINED_FUNCTION_14();
  v0[204] = v1;
  v0[203] = v2;
  v0[202] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024F6D0, &qword_2683DCA28);
  v0[205] = v4;
  OUTLINED_FUNCTION_3_1(v4);
  v0[206] = v5;
  v7 = *(v6 + 64);
  v0[207] = OUTLINED_FUNCTION_15_1();
  v8 = type metadata accessor for SnippetFormatter();
  v0[208] = v8;
  v9 = *(*(v8 - 8) + 64);
  v0[209] = OUTLINED_FUNCTION_15_1();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024F6D8, &qword_2683DCA30);
  v0[210] = v10;
  OUTLINED_FUNCTION_3_1(v10);
  v0[211] = v11;
  v13 = *(v12 + 64) + 15;
  v0[212] = swift_task_alloc();
  v0[213] = swift_task_alloc();
  v14 = *(*(sub_2683CF238() - 8) + 64);
  v0[214] = OUTLINED_FUNCTION_15_1();
  v15 = OUTLINED_FUNCTION_48();

  return MEMORY[0x2822009F8](v15, v16, v17);
}

uint64_t sub_2682017D0()
{
  v1 = *(v0 + 1712);
  v36 = *(v0 + 1704);
  v40 = *(v0 + 1688);
  v41 = *(v0 + 1696);
  v39 = *(v0 + 1680);
  v46 = *(v0 + 1672);
  v37 = *(v0 + 1664);
  v42 = *(v0 + 1656);
  v43 = *(v0 + 1616);
  v48 = *(v0 + 1624);
  sub_2683CCC48();
  type metadata accessor for SnoozeTasksCATs();
  OUTLINED_FUNCTION_29_6();
  OUTLINED_FUNCTION_10_8();
  v2 = sub_2683CF0B8();
  *(v0 + 1720) = v2;
  v35 = v2;
  type metadata accessor for SnoozeTasksCATsSimple();
  OUTLINED_FUNCTION_29_6();
  OUTLINED_FUNCTION_10_8();
  v3 = sub_2683CF198();
  *(v0 + 1728) = v3;
  v38 = v3;
  type metadata accessor for NotebookBaseCATs();
  OUTLINED_FUNCTION_29_6();
  OUTLINED_FUNCTION_10_8();
  v45 = sub_2683CF0B8();
  *(v0 + 1736) = v45;
  type metadata accessor for NotebookLabelsV2CATs();
  OUTLINED_FUNCTION_29_6();
  OUTLINED_FUNCTION_10_8();
  v4 = sub_2683CF0B8();
  *(v0 + 1744) = v4;
  v5 = type metadata accessor for SnoozeTasksCATPatternsExecutor();
  sub_2683CF228();
  OUTLINED_FUNCTION_10_8();
  v6 = sub_2683CF0B8();
  *(v0 + 1752) = v6;
  v7 = sub_2683CC548();
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  swift_allocObject();
  *(v0 + 1760) = sub_2683CC538();
  *(v0 + 1168) = &type metadata for SiriKitExecutionProvider;
  *(v0 + 1176) = &off_287907530;
  OUTLINED_FUNCTION_20_2();
  v10 = swift_allocObject();
  *(v0 + 1144) = v10;
  *(v10 + 40) = &type metadata for NotebookFeatureManager;
  *(v10 + 48) = &protocol witness table for NotebookFeatureManager;
  *(v0 + 1128) = sub_268372484;
  *(v0 + 1136) = 0;
  sub_26813CA00(v0 + 1384, v0 + 1424);
  *(v0 + 1488) = &type metadata for TCCTemplateProvider;
  *(v0 + 1496) = &off_287902CB8;
  *(v0 + 1528) = v5;
  *(v0 + 1536) = &off_287902B08;
  *(v0 + 1504) = v6;
  *(v0 + 1568) = &type metadata for NotebookFeatureManager;
  *(v0 + 1576) = &protocol witness table for NotebookFeatureManager;
  v47 = sub_268129504(0, &qword_28024D5B8, 0x277CD4160);
  sub_268129504(0, &qword_28024F6E0, 0x277CD4168);

  sub_2683CBEB8();
  v11 = *(v7 + 48);
  v12 = *(v7 + 52);
  swift_allocObject();
  v44 = sub_2683CC538();
  v13 = *(v0 + 1456);
  __swift_project_boxed_opaque_existential_1((v0 + 1424), *(v0 + 1448));
  v14 = v37[7];

  sub_2683CC088();
  *v46 = v45;
  v46[1] = v4;
  v46[2] = 0;
  v15 = v37[8];
  *(v46 + v15) = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
  v16 = v46 + v37[9];
  sub_2683CB768();
  sub_26813CA00(v0 + 1424, v0 + 976);
  *(v0 + 1048) = &type metadata for TCCTemplateProvider;
  *(v0 + 1056) = &off_287902CB8;
  *(v0 + 1016) = v4;
  v17 = [objc_allocWithZone(MEMORY[0x277CBDAB8]) init];
  *(v0 + 1272) = &unk_28790DB70;
  *(v0 + 1280) = &off_28790DB88;
  *(v0 + 1248) = v17;
  *(v0 + 1240) = [objc_allocWithZone(MEMORY[0x277D44850]) init];
  sub_26813CA00(v0 + 1424, v0 + 1072);
  *(v0 + 1064) = v35;
  *(v0 + 1112) = sub_268372484;
  *(v0 + 1120) = 0;
  sub_2682031DC();

  sub_2683CBD98();
  sub_2683CBE38();
  sub_26813CA00(v0 + 1424, v0 + 1288);
  *(v0 + 1328) = v35;
  sub_268203230(v0 + 1288, v0 + 1336);
  OUTLINED_FUNCTION_19_11();
  v18 = swift_allocObject();
  v19 = *(v0 + 1352);
  v18[1] = *(v0 + 1336);
  v18[2] = v19;
  v18[3] = *(v0 + 1368);

  sub_2683CBE78();
  *(v0 + 40) = v37;
  *(v0 + 48) = &off_28790D590;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v0 + 16));
  sub_268203294(v46, boxed_opaque_existential_0);
  sub_26813CA00(v0 + 1504, v0 + 56);
  sub_26813CA00(v0 + 1424, v0 + 96);
  *(v0 + 160) = v44;
  *(v0 + 200) = 1;
  *(v0 + 232) = &_s14descr2878F8F29V32RealReminderKitExtensionProviderVN;
  *(v0 + 240) = &off_2878FF928;
  OUTLINED_FUNCTION_19_11();
  v21 = swift_allocObject();
  *(v0 + 208) = v21;
  sub_26818EE34(v0 + 1240, v21 + 16);
  *(v0 + 272) = &type metadata for NotebookDisambiguationFlowProducer;
  *(v0 + 280) = &off_28790CD48;
  OUTLINED_FUNCTION_20_2();
  v22 = swift_allocObject();
  *(v0 + 248) = v22;
  sub_26813CA00(v0 + 1424, v22 + 16);
  *(v0 + 136) = v35;
  *(v0 + 144) = v38;
  *(v0 + 152) = v45;
  *(v0 + 288) = 0;
  sub_2682032F8(v0 + 16, v0 + 296);
  v23 = swift_allocObject();
  memcpy((v23 + 16), (v0 + 296), 0x118uLL);

  OUTLINED_FUNCTION_16_22();
  sub_2683CBE98();
  *(v0 + 1584) = v38;
  *(v0 + 1592) = v44;
  *(v0 + 1600) = sub_2681B86A4;
  *(v0 + 1608) = 0;
  sub_26820335C();

  sub_2683CBDD8();
  OUTLINED_FUNCTION_16_22();
  sub_2683CBE88();
  *(v0 + 912) = &type metadata for SiriKitExecutionProvider;
  *(v0 + 920) = &off_287907530;
  OUTLINED_FUNCTION_20_2();
  v24 = swift_allocObject();
  *(v0 + 888) = v24;
  sub_26813CA00(v0 + 1544, v24 + 16);
  *(v0 + 960) = &_s14descr2878F8F29V32RealReminderKitExtensionProviderVN;
  *(v0 + 968) = &off_2878FF928;
  OUTLINED_FUNCTION_19_11();
  v25 = swift_allocObject();
  *(v0 + 936) = v25;
  sub_26818EE34(v0 + 1240, v25 + 16);
  *(v0 + 880) = v38;
  *(v0 + 928) = v44;
  sub_2682033B0();
  sub_2683CBDA8();
  sub_2683CBE48();
  sub_26813CA00(v0 + 1424, v0 + 736);
  sub_26813CA00(v0 + 1464, v0 + 776);
  *(v0 + 840) = &type metadata for NotebookButtonProvider;
  *(v0 + 848) = &off_287902C78;
  v26 = swift_allocObject();
  *(v0 + 816) = v26;
  sub_26818EE98(v0 + 976, v26 + 16);
  *(v0 + 856) = v47;
  *(v0 + 864) = sub_2681B86A4;
  *(v0 + 872) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024F700, &qword_2683DCA38);
  sub_26818A0C8(&qword_28024F708, &qword_28024F700, &qword_2683DCA38);
  sub_2683CBDF8();
  OUTLINED_FUNCTION_16_22();
  sub_2683CBEA8();
  sub_26813CA00(v0 + 1424, v0 + 576);
  *(v0 + 640) = &type metadata for NotebookButtonProvider;
  *(v0 + 648) = &off_287902C78;
  v27 = swift_allocObject();
  *(v0 + 616) = v27;
  sub_26818EE98(v0 + 976, v27 + 16);
  *(v0 + 680) = &type metadata for CommonResponseGenerator;
  *(v0 + 688) = &off_287908850;
  OUTLINED_FUNCTION_20_2();
  v28 = swift_allocObject();
  *(v0 + 656) = v28;
  sub_26813CA00(v0 + 1424, v28 + 16);
  *(v0 + 720) = &type metadata for CommonLabelGenerator;
  *(v0 + 728) = &off_28790E058;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024F710, &qword_2683DCA40);
  sub_26818A0C8(&qword_28024F718, &qword_28024F710, &qword_2683DCA40);
  sub_2683CBDC8();
  sub_2681433DC(v0 + 576, &qword_28024F710, &qword_2683DCA40);
  OUTLINED_FUNCTION_16_22();
  sub_2683CBE68();

  sub_268203404(v0 + 1288);
  sub_268203458(v0 + 1064);
  sub_268203834(v46, type metadata accessor for SnippetFormatter);
  __swift_destroy_boxed_opaque_existential_0((v0 + 1544));
  __swift_destroy_boxed_opaque_existential_0((v0 + 1504));
  __swift_destroy_boxed_opaque_existential_0((v0 + 1464));
  sub_2681433DC(v0 + 736, &qword_28024F700, &qword_2683DCA38);
  sub_2682034AC(v0 + 880);
  sub_268203500(v0 + 16);
  sub_26818F1A8(v0 + 1240);
  sub_26818F000(v0 + 976);
  __swift_destroy_boxed_opaque_existential_0((v0 + 1424));
  sub_2683CBDB8();
  sub_2683CBE58();
  (*(v40 + 16))(v41, v36, v39);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024F720, &qword_2683DCA48);
  v30 = *(v29 + 48);
  v31 = *(v29 + 52);
  swift_allocObject();
  OUTLINED_FUNCTION_9_10();
  *(v0 + 1768) = sub_2683CBEC8();
  sub_268203554(v0 + 1128, v0 + 1184);
  sub_2682035B0();

  sub_2683CC2E8();
  v32 = swift_task_alloc();
  *(v0 + 1776) = v32;
  *(v32 + 16) = v43;
  *(v32 + 24) = v48;
  *(v32 + 40) = v42;
  v33 = swift_task_alloc();
  *(v0 + 1784) = v33;
  *v33 = v0;
  v33[1] = sub_26820220C;

  return sub_2681347D4(dword_2683DCA58);
}

uint64_t sub_26820220C()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_2_13();
  *v2 = v1;
  v4 = *(v3 + 1784);
  v5 = *(v3 + 1776);
  v6 = *v0;
  OUTLINED_FUNCTION_26();
  *v7 = v6;
  *(v9 + 1792) = v8;

  v10 = OUTLINED_FUNCTION_48();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_268202310()
{
  v1 = v0[221];
  v2 = v0[220];
  v3 = v0[219];
  v4 = v0[218];
  v5 = v0[217];
  v6 = v0[216];
  v7 = v0[215];
  v8 = v0[213];
  v17 = v0[214];
  v18 = v0[212];
  v9 = v0[211];
  v19 = v0[209];
  v16 = v0[207];
  v10 = v0[206];
  v14 = v0[210];
  v15 = v0[205];

  (*(v9 + 8))(v8, v14);
  sub_26820378C((v0 + 141));
  __swift_destroy_boxed_opaque_existential_0(v0 + 173);
  (*(v10 + 8))(v16, v15);

  OUTLINED_FUNCTION_37();
  v12 = v0[224];

  return v11(v12);
}

uint64_t sub_268202474(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x2822009F8](sub_268202498, 0, 0);
}

uint64_t sub_268202498()
{
  OUTLINED_FUNCTION_7();
  v1 = *(v0 + 16);
  v3 = v1[3];
  v2 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v3);
  v4 = swift_task_alloc();
  *(v0 + 48) = v4;
  *v4 = v0;
  v4[1] = sub_268202548;

  return sub_26820A9CC(v3, v2);
}

uint64_t sub_268202548()
{
  OUTLINED_FUNCTION_7();
  v3 = v2;
  OUTLINED_FUNCTION_42();
  v5 = v4;
  OUTLINED_FUNCTION_26();
  *v6 = v5;
  v8 = *(v7 + 48);
  v9 = *v1;
  OUTLINED_FUNCTION_26();
  *v10 = v9;

  if (v0)
  {
    v11 = *(v9 + 8);

    return v11();
  }

  else
  {
    v5[7] = v3;
    v13 = swift_task_alloc();
    v5[8] = v13;
    *v13 = v9;
    v13[1] = sub_2682026BC;
    v14 = v5[4];
    v15 = v5[5];
    v16 = v5[3];

    return sub_268202804();
  }
}

uint64_t sub_2682026BC()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_2_13();
  *v2 = v1;
  v4 = *(v3 + 64);
  *v2 = *v0;
  *(v1 + 72) = v5;

  v6 = OUTLINED_FUNCTION_48();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_2682027A4()
{
  OUTLINED_FUNCTION_14();

  OUTLINED_FUNCTION_37();
  v2 = *(v0 + 72);

  return v1(v2);
}

uint64_t sub_268202804()
{
  OUTLINED_FUNCTION_14();
  v0[13] = v1;
  v0[14] = v2;
  v0[11] = v3;
  v0[12] = v4;
  v5 = sub_2683CC668();
  v0[15] = v5;
  OUTLINED_FUNCTION_3_1(v5);
  v0[16] = v6;
  v8 = *(v7 + 64);
  v0[17] = OUTLINED_FUNCTION_15_1();
  v9 = sub_2683CBCE8();
  v0[18] = v9;
  OUTLINED_FUNCTION_3_1(v9);
  v0[19] = v10;
  v12 = *(v11 + 64);
  v0[20] = OUTLINED_FUNCTION_15_1();
  v13 = OUTLINED_FUNCTION_48();

  return MEMORY[0x2822009F8](v13, v14, v15);
}

uint64_t sub_2682028F8()
{
  OUTLINED_FUNCTION_14();
  sub_26813CA00(v0[12], (v0 + 2));
  v1 = swift_task_alloc();
  v0[21] = v1;
  *v1 = v0;
  v1[1] = sub_268202998;
  v2 = v0[11];

  return sub_2681A0B40(v2);
}

uint64_t sub_268202998()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_2_13();
  *v2 = v1;
  v4 = *(v3 + 168);
  *v2 = *v0;
  *(v1 + 176) = v5;

  v6 = OUTLINED_FUNCTION_48();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_268202A80()
{
  v1 = *(v0 + 176);
  v2 = *(v0 + 104);
  v3 = *(v0 + 112);
  v4 = *(v0 + 88);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024F6D0, &qword_2683DCA28);
  v5 = sub_2683CC2D8();
  v6 = v5;
  if (v1 == 1)
  {
    v8 = *(v0 + 152);
    v7 = *(v0 + 160);
    v9 = *(v0 + 136);
    v10 = *(v0 + 144);
    v11 = *(v0 + 120);
    v12 = *(v0 + 128);
    sub_2683CC658();
    sub_2683CBCC8();
    (*(v12 + 8))(v9, v11);
    v18 = sub_2683CBC98();
    (*(v8 + 8))(v7, v10);
    *(v0 + 64) = v6;
    *(v0 + 72) = v18;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024F730, &qword_2683DCA68);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DF18, &unk_2683D5B80);
    sub_26818A0C8(&qword_28024F738, &qword_28024F730, &qword_2683DCA68);
    sub_26818A0C8(&qword_28024E2F8, &qword_28024DF18, &unk_2683D5B80);
    *(v0 + 80) = sub_2683CBF68();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024F740, &qword_2683DCA70);
    sub_26818A0C8(&qword_28024F748, &qword_28024F740, &qword_2683DCA70);
    v13 = sub_2683CBF28();

    sub_2682037E0(v0 + 16);
  }

  else
  {
    *(v0 + 56) = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024F730, &qword_2683DCA68);
    sub_26818A0C8(&qword_28024F738, &qword_28024F730, &qword_2683DCA68);
    v13 = sub_2683CBF28();
    sub_2682037E0(v0 + 16);
  }

  v14 = *(v0 + 160);
  v15 = *(v0 + 136);

  OUTLINED_FUNCTION_37();

  return v16(v13);
}

uint64_t sub_268202D4C(char a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D4A8, &unk_2683D4D00);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_2683D1EC0;
  if (a1)
  {
    if (qword_28024CBE0 != -1)
    {
      swift_once();
    }

    v3 = sub_2681E1F9C();
  }

  else
  {
    if (qword_28024CBA0 != -1)
    {
      swift_once();
    }

    v3 = sub_2681E20C8();
  }

  *(v2 + 32) = v3;
  *(v2 + 40) = v4;
  return v2;
}

uint64_t sub_268202E2C(uint64_t a1, char a2)
{
  if (a2)
  {
    sub_26820316C(a1, v20);
    if (v21)
    {
      sub_2683CDBD8();
      if (OUTLINED_FUNCTION_0_33())
      {

        sub_2683CDDE8();

        if (v20[0])
        {
LABEL_10:

          v4 = sub_2683CD1A8();

          return v4;
        }
      }
    }

    else
    {
      sub_2681433DC(v20, &qword_28024E370, &unk_2683D9AA0);
    }
  }

  sub_26820316C(a1, v20);
  if (v21)
  {
    sub_2683CD938();
    if (OUTLINED_FUNCTION_0_33())
    {

      sub_2683CCFF8();

      if (v20[0])
      {
        goto LABEL_10;
      }
    }
  }

  else
  {
    sub_2681433DC(v20, &qword_28024E370, &unk_2683D9AA0);
  }

  if (qword_28024C8E0 != -1)
  {
    swift_once();
  }

  v5 = sub_2683CF7E8();
  __swift_project_value_buffer(v5, qword_28027C958);
  sub_26818F56C(a1, v20);
  v6 = sub_2683CF7C8();
  v7 = sub_2683CFE78();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v19 = v9;
    *v8 = 136315394;
    if (a2)
    {
      v10 = 0x736B736174;
    }

    else
    {
      v10 = 0x676972547478656ELL;
    }

    if (a2)
    {
      v11 = 0xE500000000000000;
    }

    else
    {
      v11 = 0xEF656D6954726567;
    }

    v12 = sub_2681610A0(v10, v11, &v19);

    *(v8 + 4) = v12;
    *(v8 + 12) = 2080;
    sub_26820316C(v20, v18);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024E370, &unk_2683D9AA0);
    v13 = sub_2683CFAD8();
    v15 = v14;
    sub_26818F5C8(v20);
    v16 = sub_2681610A0(v13, v15, &v19);

    *(v8 + 14) = v16;
    _os_log_impl(&dword_2680EB000, v6, v7, "[SnoozeTasks resolveSelectedEntity] Unable to resolve entity for %s from intent %s", v8, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26D617A40](v9, -1, -1);
    MEMORY[0x26D617A40](v8, -1, -1);
  }

  else
  {

    sub_26818F5C8(v20);
  }

  return 0;
}

uint64_t sub_26820316C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024E370, &unk_2683D9AA0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_2682031DC()
{
  result = qword_28024F6E8;
  if (!qword_28024F6E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024F6E8);
  }

  return result;
}

uint64_t sub_268203294(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SnippetFormatter();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_26820335C()
{
  result = qword_28024F6F0;
  if (!qword_28024F6F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024F6F0);
  }

  return result;
}

unint64_t sub_2682033B0()
{
  result = qword_28024F6F8;
  if (!qword_28024F6F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024F6F8);
  }

  return result;
}

unint64_t sub_2682035B0()
{
  result = qword_28024F728;
  if (!qword_28024F728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024F728);
  }

  return result;
}

uint64_t sub_268203604()
{
  OUTLINED_FUNCTION_7();
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v7 = OUTLINED_FUNCTION_13_18(v6);

  return sub_268202474(v7, v8, v5, v4);
}

uint64_t sub_2682036A0()
{
  OUTLINED_FUNCTION_14();
  v2 = v1;
  OUTLINED_FUNCTION_42();
  v4 = *(v3 + 16);
  v5 = *v0;
  OUTLINED_FUNCTION_26();
  *v6 = v5;

  OUTLINED_FUNCTION_37();

  return v7(v2);
}

uint64_t sub_268203834(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_0_9(v3);
  (*(v4 + 8))(a1);
  return a1;
}

_BYTE *storeEnumTagSinglePayload for SnoozeTasks.Parameter(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_268203978()
{
  result = qword_28024F750;
  if (!qword_28024F750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024F750);
  }

  return result;
}

uint64_t sub_2682039EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v72 = a3;
  v73 = a2;
  v68 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024F758, &qword_2683DCB40);
  v4 = OUTLINED_FUNCTION_23(v3);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v69 = &v63 - v7;
  v8 = sub_2683CB148();
  v9 = OUTLINED_FUNCTION_0_3(v8);
  v66 = v10;
  v67 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_14_3();
  v65 = v14 - v13;
  v71 = sub_2683CB168();
  v15 = OUTLINED_FUNCTION_0_3(v71);
  v17 = v16;
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_14_3();
  v22 = v21 - v20;
  v70 = sub_2683CB178();
  v23 = OUTLINED_FUNCTION_0_3(v70);
  v25 = v24;
  v27 = *(v26 + 64);
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_14_3();
  v30 = v29 - v28;
  v31 = sub_2683CB198();
  v32 = OUTLINED_FUNCTION_23(v31);
  v34 = *(v33 + 64);
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_14_3();
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D258, &unk_2683D1F60);
  v36 = OUTLINED_FUNCTION_23(v35);
  v38 = *(v37 + 64);
  MEMORY[0x28223BE20](v36);
  v40 = &v63 - v39;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024F760, &qword_2683DCB48);
  v42 = OUTLINED_FUNCTION_23(v41);
  v44 = *(v43 + 64);
  MEMORY[0x28223BE20](v42);
  v46 = &v63 - v45;
  v47 = sub_2683CB248();
  v48 = OUTLINED_FUNCTION_0_3(v47);
  v64 = v49;
  v51 = *(v50 + 64);
  v52 = MEMORY[0x28223BE20](v48);
  v54 = &v63 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v52);
  v56 = &v63 - v55;
  v57 = sub_2683CB438();
  __swift_storeEnumTagSinglePayload(v40, 1, 1, v57);
  (*(v25 + 104))(v30, *MEMORY[0x277CC8BB0], v70);
  (*(v17 + 104))(v22, *MEMORY[0x277CC8B98], v71);

  sub_2683CB188();
  sub_2683CB228();
  __swift_storeEnumTagSinglePayload(v46, 0, 1, v47);
  v58 = v64;
  (*(v64 + 32))(v56, v46, v47);
  sub_2682040B8(v68, v54);
  v59 = v65;
  sub_2683CB128();
  sub_268204F90(v69);
  (*(v66 + 8))(v59, v67);
  v60 = sub_2683CFAB8();
  v61 = *(v58 + 8);
  v61(v54, v47);
  v61(v56, v47);
  return v60;
}

uint64_t sub_268203ECC(uint64_t a1, unint64_t a2, unsigned int (*a3)(uint64_t))
{
  if ((a2 & 0x2000000000000000) != 0)
  {
    v4 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v4 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v4)
  {
    v8 = 0;
    v18 = a2 & 0xFFFFFFFFFFFFFFLL;
    v9 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
    while (1)
    {
      if ((a2 & 0x1000000000000000) != 0)
      {
        v13 = sub_2683D0168();
        v15 = v14;
      }

      else
      {
        if ((a2 & 0x2000000000000000) != 0)
        {
          v17[0] = a1;
          v17[1] = v18;
          v11 = v17 + v8;
          v13 = *(v17 + v8);
          if (*(v17 + v8) < 0)
          {
            switch(__clz(v13 ^ 0xFF))
            {
              case 0x1Au:
LABEL_19:
                v13 = v11[1] & 0x3F | ((v13 & 0x1F) << 6);
                v15 = 2;
                break;
              case 0x1Bu:
LABEL_20:
                v13 = ((v13 & 0xF) << 12) | ((v11[1] & 0x3F) << 6) | v11[2] & 0x3F;
                v15 = 3;
                break;
              case 0x1Cu:
LABEL_21:
                v13 = ((v13 & 0xF) << 18) | ((v11[1] & 0x3F) << 12) | ((v11[2] & 0x3F) << 6) | v11[3] & 0x3F;
                v15 = 4;
                break;
              default:
                goto LABEL_14;
            }

            goto LABEL_15;
          }
        }

        else
        {
          v10 = v9;
          if ((a1 & 0x1000000000000000) == 0)
          {
            v10 = sub_2683D01E8();
          }

          v11 = (v10 + v8);
          v12 = *(v10 + v8);
          v13 = *(v10 + v8);
          if (v12 < 0)
          {
            switch(__clz(v13 ^ 0xFF))
            {
              case 0x1Au:
                goto LABEL_19;
              case 0x1Bu:
                goto LABEL_20;
              case 0x1Cu:
                goto LABEL_21;
              default:
                break;
            }
          }
        }

LABEL_14:
        v15 = 1;
      }

LABEL_15:
      result = (v3 == 0) & a3(v13);
      if (result == 1)
      {
        v8 += v15;
        if (v8 < v4)
        {
          continue;
        }
      }

      return result;
    }
  }

  return 1;
}

uint64_t sub_2682040B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v94 = a1;
  v92 = a2;
  v2 = sub_2683CB278();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v117 = &v92 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v99 = sub_2683CAEA8();
  v101 = *(v99 - 8);
  v5 = *(v101 + 64);
  MEMORY[0x28223BE20](v99);
  v116 = &v92 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024F798, &qword_2683DCB68);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v98 = &v92 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D258, &unk_2683D1F60);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v115 = &v92 - v12;
  v126 = sub_2683CB438();
  v100 = *(v126 - 8);
  v13 = *(v100 + 64);
  MEMORY[0x28223BE20](v126);
  v15 = &v92 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024F758, &qword_2683DCB40);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v114 = &v92 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024F770, &qword_2683DCB58);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8);
  v113 = &v92 - v21;
  v112 = sub_2683CB148();
  v102 = *(v112 - 8);
  v22 = *(v102 + 64);
  MEMORY[0x28223BE20](v112);
  v111 = &v92 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v124 = sub_2683CB1D8();
  v118 = *(v124 - 8);
  v24 = *(v118 + 64);
  MEMORY[0x28223BE20](v124);
  v123 = &v92 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_2683CB1B8();
  v27 = *(v26 - 8);
  v28 = *(v27 + 64);
  v29 = MEMORY[0x28223BE20](v26);
  v106 = &v92 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v109 = &v92 - v31;
  v32 = sub_2683CB1E8();
  v33 = *(v32 - 8);
  v34 = *(v33 + 64);
  MEMORY[0x28223BE20](v32);
  v36 = &v92 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024F7A0, &qword_2683DCB70);
  v38 = v37 - 8;
  v39 = *(*(v37 - 8) + 64);
  MEMORY[0x28223BE20](v37);
  v41 = &v92 - v40;
  v122 = sub_2683CB248();
  v93 = *(v122 - 8);
  v42 = *(v93 + 64);
  v43 = MEMORY[0x28223BE20](v122);
  v108 = &v92 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v43);
  v121 = &v92 - v45;
  sub_2683CB238();
  v132 = MEMORY[0x277D84FA0];
  sub_2683CB1F8();
  (*(v33 + 16))(v41, v36, v32);
  v46 = *(v38 + 44);
  v47 = v32;
  v48 = sub_268205D84(&qword_28024F7A8, MEMORY[0x277CC8C08]);
  v119 = v41;
  v120 = v48;
  sub_2683CFDD8();
  (*(v33 + 8))(v36, v32);
  swift_beginAccess();
  v103 = 0;
  v118 += 8;
  v105 = (v27 + 16);
  v104 = (v27 + 32);
  v102 += 8;
  v97 = (v100 + 32);
  v96 = (v100 + 8);
  v95 = (v101 + 8);
  v101 = v93 + 8;
  v100 = v27 + 8;
  v110 = v26;
  v107 = v46;
  while (1)
  {
    v49 = v123;
    v50 = v119;
    sub_2683CFDF8();
    sub_268205D84(&qword_28024F7B0, MEMORY[0x277CC8BF8]);
    v51 = v47;
    v52 = v124;
    v53 = sub_2683CFA58();
    (*v118)(v49, v52);
    if (v53)
    {
      break;
    }

    v54 = v15;
    v55 = sub_2683CFE28();
    v56 = v109;
    (*v105)(v109);
    v55(&v130, 0);
    v57 = v51;
    sub_2683CFE08();
    v58 = v106;
    (*v104)(v106, v56, v26);
    sub_26820570C(&v133);
    v59 = v111;
    sub_2683CB128();
    v60 = v113;
    sub_2683CB1A8();
    sub_2683CB158();
    sub_2681433DC(v60, &qword_28024F770, &qword_2683DCB58);
    (*v102)(v59, v112);
    v61 = sub_2683CFAB8();
    v63 = v62;
    v128 = v61;
    v129 = v62;
    sub_268205CDC();
    v64 = v115;
    sub_2683CB1C8();
    if (__swift_getEnumTagSinglePayload(v64, 1, v126) == 1)
    {
      sub_2681433DC(v64, &qword_28024D258, &unk_2683D1F60);
      v15 = v54;
    }

    else
    {
      v15 = v54;
      (*v97)(v54, v64, v126);
      if (sub_268205DCC(v61, v63))
      {
        v130 = v61;
        v131 = v63;

        MEMORY[0x26D616690](10272, 0xE200000000000000);
        v65 = sub_2683CB3A8();
        MEMORY[0x26D616690](v65);

        MEMORY[0x26D616690](41, 0xE100000000000000);
        v66 = v130;
        v67 = v131;
      }

      else
      {
        v66 = sub_2683CB3A8();
        v67 = v68;
      }

      (*v96)(v54, v126);

      v128 = v66;
      v129 = v67;
    }

    v47 = v57;
    if ((v139 & 1) == 0)
    {
      v70 = v135;
      v69 = v136;
      v71 = v137;
      v72 = v138;
      if ((sub_2681F71F4(v135, v132) & 1) == 0)
      {
        sub_268205FEC(v70, v69, v71 & 1, v72, &v128, v94);
        swift_beginAccess();
        sub_2681597D8(&v127, v70);
        swift_endAccess();
      }
    }

    v73 = v125;
    if ((v134 & 1) == 0)
    {
      v74 = v133;
      if ((sub_2681F71F4(v133, v132) & 1) == 0)
      {
        sub_268206260(v58, v73, &v133, &v128);
        swift_beginAccess();
        sub_2681597D8(&v127, v74);
        swift_endAccess();
      }
    }

    sub_268205D30();
    sub_2683CB1C8();
    if ((v131 & 1) == 0 && (v130 & 0x40) != 0)
    {
      sub_2682065D8();
      v75 = v98;
      sub_2683CB1C8();
      v76 = sub_2683CB318();
      if (__swift_getEnumTagSinglePayload(v75, 1, v76) == 1)
      {
        sub_2681433DC(v75, &qword_28024F798, &qword_2683DCB68);
      }

      else
      {
        sub_2683CB2F8();
        (*(*(v76 - 8) + 8))(v75, v76);
      }

      v77 = sub_2683CFBF8();
      v130 = 10;
      v131 = 0xE100000000000000;
      MEMORY[0x26D616690](v77);

      v78 = v128;
      v79 = v129;
      v80 = v116;
      v81 = sub_2683CAE58();
      MEMORY[0x28223BE20](v81);
      *(&v92 - 2) = v80;
      v82 = v103;
      v83 = sub_2682055C4(sub_26820662C, (&v92 - 4), v78, v79);
      v103 = v82;
      if (v84)
      {
        v85 = 0;
        v86 = 0xE000000000000000;
      }

      else
      {
        v87 = sub_2682056C0(v83, v78, v79);
        v85 = MEMORY[0x26D616610](v87);
        v86 = v88;
      }

      (*v95)(v116, v99);
      MEMORY[0x26D616690](v85, v86);

      v128 = v130;
      v129 = v131;
    }

    sub_2683CB268();
    v89 = v108;
    sub_2683CB258();
    sub_268205D84(&qword_28024F7C8, MEMORY[0x277CC8C40]);
    v90 = v122;
    sub_2683CB218();
    (*v101)(v89, v90);

    v26 = v110;
    (*v100)(v58, v110);
  }

  sub_2681433DC(v50, &qword_28024F7A0, &qword_2683DCB70);
  (*(v93 + 32))(v92, v121, v122);
}

uint64_t sub_268204F90@<X0>(uint64_t a1@<X8>)
{
  v28[2] = a1;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024F768, &qword_2683DCB50);
  v2 = *(*(v30 - 8) + 64);
  v3 = MEMORY[0x28223BE20](v30);
  v5 = v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = v28 - v6;
  v8 = sub_2683CB208();
  v9 = *(v8 - 8);
  v10 = v9[8];
  MEMORY[0x28223BE20](v8);
  v12 = v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024F770, &qword_2683DCB58);
  v13 = *(*(v29 - 8) + 64);
  MEMORY[0x28223BE20](v29);
  v15 = v28 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024F778, &qword_2683DCB60);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v19 = v28 - v18;
  v20 = sub_2683CB148();
  v21 = sub_268205D84(&qword_28024F780, MEMORY[0x277CC8B30]);
  v31 = v20;
  v22 = v21;
  sub_2683CFDD8();
  sub_268205D84(&qword_28024F788, MEMORY[0x277CC8C20]);
  result = sub_2683CFA58();
  if (result)
  {
    sub_2683CFDF8();
    sub_268205D84(&qword_28024F790, MEMORY[0x277CC8C20]);
    result = sub_2683CFA48();
    if (result)
    {
      v28[1] = v1;
      v24 = v9[4];
      v24(v7, v19, v8);
      v28[0] = v22;
      v25 = v30;
      v24(&v7[*(v30 + 48)], v12, v8);
      sub_268205378(v7, v5);
      v26 = *(v25 + 48);
      v24(v15, v5, v8);
      v27 = v9[1];
      v27(&v5[v26], v8);
      sub_2682053E8(v7, v5);
      v24(&v15[*(v29 + 36)], &v5[*(v25 + 48)], v8);
      v27(v5, v8);
      sub_2683CFE18();
      return sub_2681433DC(v15, &qword_28024F770, &qword_2683DCB58);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_268205378(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024F768, &qword_2683DCB50);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2682053E8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024F768, &qword_2683DCB50);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

BOOL sub_268205458(uint64_t *a1, uint64_t a2)
{
  v4 = sub_2683CAEA8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = *a1;
  v7 = a1[1];
  (*(v5 + 16))(v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v4);
  v9 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v10 = swift_allocObject();
  (*(v5 + 32))(v10 + v9, v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v4);
  v11 = sub_268203ECC(v8, v7, sub_2682066A0);

  return (v11 & 1) == 0;
}

unint64_t sub_2682055C4(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3, unint64_t a4)
{
  v6 = HIBYTE(a4) & 0xF;
  if ((a4 & 0x2000000000000000) == 0)
  {
    v6 = a3 & 0xFFFFFFFFFFFFLL;
  }

  v13 = 4 * v6;
  for (i = 15; ; i = sub_2683CFB68())
  {
    if (i >> 14 == v13)
    {
      return 0;
    }

    v12[0] = sub_2683CFC08();
    v12[1] = v8;
    v9 = a1(v12);
    if (v4)
    {
      break;
    }

    v10 = v9;

    if (v10)
    {
      return i;
    }
  }

  return i;
}

unint64_t sub_2682056C0(unint64_t result, uint64_t a2, unint64_t a3)
{
  v3 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (4 * v3 >= result >> 14)
  {
    return sub_2683CFC18();
  }

  __break(1u);
  return result;
}

uint64_t sub_26820570C@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_2683CB308();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = (&v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = sub_2683CB2D8();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024F798, &qword_2683DCB68);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v35 - v14;
  sub_2682065D8();
  sub_2683CB1C8();
  v16 = sub_2683CB318();
  if (__swift_getEnumTagSinglePayload(v15, 1, v16) != 1)
  {
    v41 = a1;
    v25 = v3;
    v26 = sub_2683CB2E8();
    result = (*(*(v16 - 8) + 8))(v15, v16);
    v27 = 0;
    v47 = 0;
    v48 = 0;
    v55 = 0;
    v58 = *(v26 + 16);
    v57 = *MEMORY[0x277CC8D30];
    v56 = v8 + 16;
    v28 = *MEMORY[0x277CC8D38];
    v51 = *MEMORY[0x277CC8D48];
    v52 = v28;
    v29 = *MEMORY[0x277CC8D28];
    v45 = *MEMORY[0x277CC8D40];
    v46 = v29;
    v44 = *MEMORY[0x277CC8D58];
    v40 = *MEMORY[0x277CC8D50];
    v30 = *MEMORY[0x277CC8D08];
    v38 = *MEMORY[0x277CC8D18];
    v39 = v30;
    v49 = (v25 + 8);
    v37 = *MEMORY[0x277CC8D00];
    v50 = (v25 + 96);
    v42 = 2;
    v36 = *MEMORY[0x277CC8D10];
    v43 = -1;
    v53 = 1;
    v54 = 1;
    v35 = *MEMORY[0x277CC8D20];
    while (1)
    {
      if (v58 == v27)
      {

        if (v53)
        {
          v19 = 0;
          v20 = 0;
          v21 = 0;
          v22 = 0;
          v24 = 1;
          a1 = v41;
          v18 = v55;
          v23 = v54;
        }

        else
        {
          a1 = v41;
          v18 = v55;
          v23 = v54;
          if (v42 == 2 || (v42 & 1) == 0)
          {
            v20 = 0;
            v24 = 0;
            v21 = 1;
          }

          else
          {
            v21 = 0;
            v24 = 0;
            v20 = v47;
          }

          v19 = v48;
          v22 = v43;
        }

        goto LABEL_43;
      }

      if (v27 >= *(v26 + 16))
      {
        __break(1u);
LABEL_45:
        __break(1u);
LABEL_46:
        __break(1u);
        return result;
      }

      (*(v8 + 16))(v11, v26 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v27, v7);
      sub_2683CB2B8();
      result = (*(v25 + 88))(v6, v2);
      if (result == v57)
      {
        goto LABEL_7;
      }

      if (result == v52)
      {
        (*v50)(v6, v2);
        if (v53)
        {
          v47 = *v6;
          v48 = sub_2683CB2C8();
        }

        v53 = 0;
      }

      else
      {
        if (result == v51)
        {
          (*v49)(v6, v2);
LABEL_7:
          v55 = sub_2683CB2C8();
          v54 = 0;
          goto LABEL_28;
        }

        if (result == v46)
        {
LABEL_15:
          (*v49)(v6, v2);
          goto LABEL_28;
        }

        if (result != v45 && result != v44)
        {
          if (result == v40)
          {
            goto LABEL_7;
          }

          if (result == v39)
          {
            v32 = __OFADD__(v43++, 1);
            if (v32)
            {
              goto LABEL_45;
            }

            v33 = (v42 == 2) | v42;
LABEL_27:
            v42 = v33 & 1;
            goto LABEL_28;
          }

          if (result == v38)
          {
            v32 = __OFADD__(v43++, 1);
            if (v32)
            {
              goto LABEL_46;
            }

            v33 = v42;
            goto LABEL_27;
          }

          if (result == v37)
          {
            goto LABEL_7;
          }

          if (result != v36 && result != v35)
          {
            goto LABEL_15;
          }
        }
      }

LABEL_28:
      result = (*(v8 + 8))(v11, v7);
      ++v27;
    }
  }

  result = sub_2681433DC(v15, &qword_28024F798, &qword_2683DCB68);
  v18 = 0;
  v19 = 0;
  v20 = 0;
  v21 = 0;
  v22 = 0;
  v23 = 1;
  v24 = 1;
LABEL_43:
  *a1 = v18;
  *(a1 + 8) = v23 & 1;
  *(a1 + 16) = v19;
  *(a1 + 24) = v20;
  *(a1 + 32) = v21;
  *(a1 + 40) = v22;
  *(a1 + 48) = v24;
  return result;
}

unint64_t sub_268205CDC()
{
  result = qword_28024F7B8;
  if (!qword_28024F7B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024F7B8);
  }

  return result;
}

unint64_t sub_268205D30()
{
  result = qword_28024F7C0;
  if (!qword_28024F7C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024F7C0);
  }

  return result;
}

uint64_t sub_268205D84(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_268205DCC(uint64_t a1, uint64_t a2)
{
  v4 = sub_2683CAEA8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_2683CB3A8() == a1 && v9 == a2)
  {

    v12 = 0;
  }

  else
  {
    v11 = sub_2683D0598();

    v12 = 0;
    if ((v11 & 1) == 0)
    {
      v12 = 1;
      sub_2683CB3F8();
      if (v13)
      {
        v14 = sub_2683CFAF8();
        v16 = v15;

        v22 = v14;
        v23 = v16;
        sub_2683CAE68();
        sub_26812A1AC();
        v21[1] = sub_2683CFFE8();
        v17 = *(v5 + 8);
        v17(v8, v4);

        v22 = sub_2683CFAF8();
        v23 = v18;
        sub_2683CAE78();
        sub_2683CFFE8();
        v17(v8, v4);

        v19 = sub_2683CFBD8();

        v12 = v19 ^ 1;
      }
    }
  }

  return v12 & 1;
}

uint64_t sub_268205FEC(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t *a5, uint64_t a6)
{
  v10 = sub_2683CB668();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024F7D8, &qword_2683DCB78);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v33 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v33 - v18;
  if (a3)
  {
    v33 = 547520738;
    v34 = 0xA400000000000000;
    v20 = *a5;
    v21 = a5[1];

    MEMORY[0x26D616690](v20, v21);

    v22 = v34;
    v23 = a5[1];
    *a5 = v33;
    a5[1] = v22;
  }

  else
  {
    sub_2683CB5E8();
    sub_26820664C();
    sub_2683CB298();
    MEMORY[0x26D611D90](a6, v12);
    v25 = *(v13 + 8);
    v25(v17, v12);
    v33 = a2;
    v26 = sub_2683CB288();
    v28 = v27;
    v25(v19, v12);
    v33 = v26;
    v34 = v28;
    MEMORY[0x26D616690](8238, 0xE200000000000000);
    v29 = *a5;
    v30 = a5[1];

    MEMORY[0x26D616690](v29, v30);

    v31 = v34;
    v32 = a5[1];
    *a5 = v33;
    a5[1] = v31;
  }
}

uint64_t sub_268206260(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v36 = a4;
  v34 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024F798, &qword_2683DCB68);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v33 - v7;
  v9 = sub_2683CB208();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v33 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024F770, &qword_2683DCB58);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v20 = &v33 - v19;
  v35 = a1;
  sub_2683CB1A8();
  (*(v10 + 16))(v16, v20, v9);
  sub_2681433DC(v20, &qword_28024F770, &qword_2683DCB58);
  sub_2683CB138();
  sub_268205D84(&qword_28024F788, MEMORY[0x277CC8C20]);
  LOBYTE(v20) = sub_2683CFA58();
  v21 = *(v10 + 8);
  v21(v14, v9);
  result = (v21)(v16, v9);
  if ((v20 & 1) == 0)
  {
    *(v34 + 48);
    v23 = sub_2683CFBF8();
    v25 = v24;
    sub_2682065D8();
    sub_2683CB1C8();
    v26 = sub_2683CB318();
    if (__swift_getEnumTagSinglePayload(v8, 1, v26) == 1)
    {
      sub_2681433DC(v8, &qword_28024F798, &qword_2683DCB68);
    }

    else
    {
      sub_2683CB2F8();
      (*(*(v26 - 8) + 8))(v8, v26);
    }

    v27 = sub_2683CFBF8();
    v37 = v23;
    v38 = v25;
    MEMORY[0x26D616690](v27);

    v28 = v36;
    v29 = *v36;
    v30 = v36[1];

    MEMORY[0x26D616690](v29, v30);

    v31 = v38;
    v32 = v28[1];
    *v28 = v37;
    v28[1] = v31;
  }

  return result;
}

unint64_t sub_2682065D8()
{
  result = qword_28024F7D0;
  if (!qword_28024F7D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024F7D0);
  }

  return result;
}

unint64_t sub_26820664C()
{
  result = qword_28024F7E0;
  if (!qword_28024F7E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024F7E0);
  }

  return result;
}

uint64_t sub_2682066A0()
{
  v1 = sub_2683CAEA8();
  OUTLINED_FUNCTION_23(v1);
  v3 = v0 + ((*(v2 + 80) + 16) & ~*(v2 + 80));
  return sub_2683CAE98() & 1;
}

uint64_t sub_268206730()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024F7F8, &qword_2683DCC50);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_2683D1EC0;
  *(v1 + 56) = MEMORY[0x277D839B0];
  *(v1 + 32) = 1;
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_2682067C8()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t sub_2682067F8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2681B7480;

  return sub_268206714();
}

unint64_t sub_26820688C()
{
  result = qword_28024F7E8;
  if (!qword_28024F7E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024F7E8);
  }

  return result;
}

unint64_t sub_2682068E4()
{
  result = qword_28024F7F0;
  if (!qword_28024F7F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024F7F0);
  }

  return result;
}

uint64_t sub_268206948()
{
  v1 = sub_2683CCC18();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v0;
  v6 = *(v0 + 8);
  sub_2683CCB88();
  v7(v37, v5, 0);
  (*(v2 + 8))(v5, v1);
  sub_268167C34(v37, v36);
  if (v36[56] == 255)
  {
    goto LABEL_6;
  }

  sub_268167C34(v36, v32);
  if (v35 != 1)
  {
    if (v35 == 7)
    {
      v8 = vorrq_s8(v33, v34);
      if (!(*&vorr_s8(*v8.i8, *&vextq_s8(v8, v8, 8uLL)) | v32[2] | v32[1] | v32[0]))
      {
        if (qword_28024C8E0 != -1)
        {
          OUTLINED_FUNCTION_0_5();
        }

        v24 = sub_2683CF7E8();
        __swift_project_value_buffer(v24, qword_28027C958);
        v25 = sub_2683CF7C8();
        v26 = sub_2683CFE98();
        if (OUTLINED_FUNCTION_45(v26))
        {
          *swift_slowAlloc() = 0;
          OUTLINED_FUNCTION_9_6(&dword_2680EB000, v27, v28, "[SnoozeTasks FlowStrategy] returning .cancel()");
          OUTLINED_FUNCTION_25_0();
        }

        sub_2683CC298();
        goto LABEL_12;
      }
    }

    sub_26813A1A0(v32);
LABEL_6:
    if (qword_28024C8E0 != -1)
    {
      OUTLINED_FUNCTION_0_5();
    }

    v9 = sub_2683CF7E8();
    __swift_project_value_buffer(v9, qword_28027C958);
    sub_268167C34(v37, v32);
    v10 = sub_2683CF7C8();
    v11 = sub_2683CFE98();
    if (OUTLINED_FUNCTION_45(v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v31 = v13;
      *v12 = 136315138;
      sub_268167C34(v32, &v30);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D460, &qword_2683D5050);
      v14 = sub_2683CFAD8();
      v16 = v15;
      sub_268167CA4(v32);
      v17 = sub_2681610A0(v14, v16, &v31);

      *(v12 + 4) = v17;
      _os_log_impl(&dword_2680EB000, v10, v11, "[SnoozeTasks FlowStrategy] unsupported task, ignoring: %s", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v13);
      OUTLINED_FUNCTION_38();
      OUTLINED_FUNCTION_38();
    }

    else
    {

      sub_268167CA4(v32);
    }

    sub_2683CC2B8();
LABEL_12:
    sub_268167CA4(v37);
    return sub_268167CA4(v36);
  }

  if (qword_28024C8E0 != -1)
  {
    OUTLINED_FUNCTION_0_5();
  }

  v18 = sub_2683CF7E8();
  __swift_project_value_buffer(v18, qword_28027C958);
  v19 = sub_2683CF7C8();
  v20 = sub_2683CFE98();
  if (OUTLINED_FUNCTION_45(v20))
  {
    *swift_slowAlloc() = 0;
    OUTLINED_FUNCTION_9_6(&dword_2680EB000, v21, v22, "[SnoozeTasks FlowStrategy] returning .handle() for supported task");
    OUTLINED_FUNCTION_25_0();
  }

  sub_2683CC2A8();
  sub_268167CA4(v37);
  sub_26813A1A0(v32);
  return sub_268167CA4(v36);
}

uint64_t sub_268206D38(uint64_t a1, uint64_t a2)
{
  v3[40] = a2;
  v3[41] = v2;
  v3[39] = a1;
  return OUTLINED_FUNCTION_0_1();
}

uint64_t sub_268206D50()
{
  v24 = v2;
  v3 = *(v2 + 328);
  v4 = *(v3 + 8);
  (*v3)(*(v2 + 312), 0);
  sub_268167C34(v2 + 16, v2 + 80);
  v5 = *(v2 + 136);
  v6 = (v2 + 80);
  if (v5 == 1)
  {
    sub_268128148(v6, v2 + 272);
    OUTLINED_FUNCTION_10_15();
    v22 = (v7 + *v7);
    v8 = v7[1];
    v9 = swift_task_alloc();
    *(v2 + 336) = v9;
    *v9 = v2;
    v9[1] = sub_268207074;

    return v22(1, v0, v1);
  }

  else
  {
    if (v5 == 255)
    {
      sub_268167CA4(v6);
    }

    else
    {
      sub_26813A1A0(v6);
    }

    if (qword_28024C8E0 != -1)
    {
      OUTLINED_FUNCTION_0_5();
    }

    v11 = sub_2683CF7E8();
    __swift_project_value_buffer(v11, qword_28027C958);
    sub_268167C34(v2 + 16, v2 + 144);
    v12 = sub_2683CF7C8();
    v13 = sub_2683CFE78();
    if (OUTLINED_FUNCTION_45(v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v23 = v15;
      *v14 = 136315138;
      sub_268167C34(v2 + 144, v2 + 208);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D460, &qword_2683D5050);
      v16 = sub_2683CFAD8();
      v18 = v17;
      sub_268167CA4(v2 + 144);
      v19 = sub_2681610A0(v16, v18, &v23);

      *(v14 + 4) = v19;
      _os_log_impl(&dword_2680EB000, v12, v13, "[SnoozeTasks FlowStrategy] Did not get snoozeTasks task from parse. Got: %s", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v15);
      OUTLINED_FUNCTION_25_0();
      OUTLINED_FUNCTION_38();
    }

    else
    {

      sub_268167CA4(v2 + 144);
    }

    sub_26812C6B8();
    swift_allocError();
    *v20 = 0u;
    *(v20 + 16) = 0u;
    *(v20 + 32) = 4;
    swift_willThrow();
    sub_268167CA4(v2 + 16);
    v21 = *(v2 + 8);

    return v21();
  }
}

uint64_t sub_268207074()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_42();
  v2 = v1;
  v3 = *(v1 + 336);
  v6 = *v0;
  *(v2 + 344) = v4;

  return MEMORY[0x2822009F8](sub_26820716C, 0, 0);
}

uint64_t sub_26820716C()
{
  OUTLINED_FUNCTION_10_15();
  v7 = (v3 + *v3);
  v4 = v3[1];
  v5 = swift_task_alloc();
  *(v2 + 352) = v5;
  *v5 = v2;
  v5[1] = sub_26820727C;

  return (v7)(0, v0, v1);
}

uint64_t sub_26820727C()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_42();
  v2 = v1;
  v3 = *(v1 + 352);
  v6 = *v0;
  *(v2 + 360) = v4;

  return MEMORY[0x2822009F8](sub_268207374, 0, 0);
}

uint64_t sub_268207374()
{
  v22 = v0;
  if (*(v0 + 320))
  {
    v1 = sub_2682DDA40(*(v0 + 344));
  }

  else
  {
    v1 = *(v0 + 360);
  }

  v2 = v1;
  if (qword_28024C8E0 != -1)
  {
    OUTLINED_FUNCTION_0_5();
  }

  v3 = sub_2683CF7E8();
  __swift_project_value_buffer(v3, qword_28027C958);
  v4 = v2;
  v5 = sub_2683CF7C8();
  v6 = sub_2683CFE98();

  v7 = os_log_type_enabled(v5, v6);
  v8 = *(v0 + 344);
  if (v7)
  {
    v20 = *(v0 + 360);
    v19 = *(v0 + 344);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v21 = v10;
    *v9 = 136315138;
    v11 = v4;
    v12 = [v11 description];
    v13 = sub_2683CFA78();
    v15 = v14;

    v16 = sub_2681610A0(v13, v15, &v21);

    *(v9 + 4) = v16;
    _os_log_impl(&dword_2680EB000, v5, v6, "[SnoozeTasks FlowStrategy] Updated intent: %s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v10);
    OUTLINED_FUNCTION_38();
    OUTLINED_FUNCTION_25_0();
  }

  else
  {
  }

  sub_268167CA4(v0 + 16);
  __swift_destroy_boxed_opaque_existential_0((v0 + 272));
  OUTLINED_FUNCTION_37();

  return v17(v4);
}

uint64_t sub_268207578(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_0_1();
}

uint64_t sub_268207590()
{
  OUTLINED_FUNCTION_14();
  v1 = v0[3];
  v2 = v0[2];
  __swift_project_boxed_opaque_existential_1((v0[4] + 16), *(v0[4] + 40));
  sub_2682B28A0(v2, v1);
  OUTLINED_FUNCTION_37();

  return v3();
}

uint64_t sub_26820760C(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_268132F90;

  return sub_268206D38(a1, a2);
}

uint64_t sub_2682076B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(MEMORY[0x277D5BF48] + 4);
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_268193F14;

  return MEMORY[0x2821BB5D8](a1, a2, a3, a4);
}

uint64_t sub_268207774(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *(MEMORY[0x277D5B498] + 4);
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  *v12 = v5;
  v12[1] = sub_268193F14;

  return MEMORY[0x2821B9D90](a1, a2, a3, a4, a5);
}

uint64_t sub_268207840(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *(MEMORY[0x277D5B490] + 4);
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  *v12 = v5;
  v12[1] = sub_268193F14;

  return MEMORY[0x2821B9D88](a1, a2, a3, a4, a5);
}

uint64_t sub_26820790C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *(MEMORY[0x277D5B488] + 4);
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  *v12 = v5;
  v12[1] = sub_268193F14;

  return MEMORY[0x2821B9D80](a1, a2, a3, a4, a5);
}

uint64_t sub_2682079D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = *(MEMORY[0x277D5B480] + 4);
  v14 = swift_task_alloc();
  *(v6 + 16) = v14;
  *v14 = v6;
  v14[1] = sub_268193D88;

  return MEMORY[0x2821B9D78](a1, a2, a3, a4, a5, a6);
}

uint64_t sub_268207AB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = *(MEMORY[0x277D5B6D8] + 4);
  v14 = swift_task_alloc();
  *(v6 + 16) = v14;
  *v14 = v6;
  v14[1] = sub_268193F14;

  return MEMORY[0x2821BA0D8](a1, a2, a3, a4, a5, a6);
}

uint64_t sub_268207B90(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_268167A44;

  return sub_268207578(a1, a2);
}

unint64_t sub_268207C38()
{
  result = qword_28024F800;
  if (!qword_28024F800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024F800);
  }

  return result;
}

unint64_t sub_268207C90()
{
  result = qword_28024F808;
  if (!qword_28024F808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024F808);
  }

  return result;
}

unint64_t sub_268207CE8()
{
  result = qword_28024F810;
  if (!qword_28024F810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024F810);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_10_15()
{
  v1 = v0[38];
  __swift_project_boxed_opaque_existential_1(v0 + 34, v0[37]);
  result = v1 + 16;
  v3 = *(v1 + 16);
  return result;
}

uint64_t Snippet.Interaction.init<A, B>(record:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_2683CC858();
  *a2 = 0;
  a2[1] = 0;
  sub_2683CC828();
  v5 = sub_2683CF258();
  v7 = v6;

  if (v7)
  {
    v8 = v5;
  }

  else
  {
    v8 = 0;
  }

  v9 = a2[1];

  *a2 = v8;
  a2[1] = v7;
  sub_268207E90();
  v10 = sub_2683CC848();
  v11 = sub_2683CC818();
  sub_268208190(v10, v11);
  v12 = a2 + *(type metadata accessor for Snippet.Interaction() + 20);
  sub_2683CB7E8();
  v13 = *(*(v4 - 8) + 8);

  return v13(a1, v4);
}

unint64_t sub_268207E90()
{
  result = qword_28024F818;
  if (!qword_28024F818)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28024F818);
  }

  return result;
}

uint64_t Snippet.Interaction.app.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t Snippet.Interaction.app.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = v1[1];

  *v1 = v2;
  v1[1] = v3;
  return result;
}

void (*Snippet.Interaction.interaction.modify(void *a1))(void *a1)
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  v4 = v1 + *(type metadata accessor for Snippet.Interaction() + 20);
  v3[4] = sub_2683CB7F8();
  return sub_268146C38;
}

uint64_t Snippet.Interaction.init(app:interaction:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];

  *a2 = v3;
  a2[1] = v4;
  v5 = a2 + *(type metadata accessor for Snippet.Interaction() + 20);
  return sub_2683CB7E8();
}

uint64_t sub_26820808C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 7368801 && a2 == 0xE300000000000000;
  if (v3 || (sub_2683D0598() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7463617265746E69 && a2 == 0xEB000000006E6F69)
  {

    return 1;
  }

  else
  {
    v7 = sub_2683D0598();

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

uint64_t sub_268208158(char a1)
{
  if (a1)
  {
    return 0x7463617265746E69;
  }

  else
  {
    return 7368801;
  }
}

id sub_268208190(void *a1, void *a2)
{
  v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithIntent:a1 response:a2];

  return v4;
}

uint64_t type metadata accessor for Snippet.Interaction()
{
  result = qword_28024F858;
  if (!qword_28024F858)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_268208240@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_26820808C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_268208268(uint64_t a1)
{
  v2 = sub_2682084A4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2682082A4(uint64_t a1)
{
  v2 = sub_2682084A4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Snippet.Interaction.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024F820, &qword_2683DCDE0);
  v6 = OUTLINED_FUNCTION_0_3(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  v12 = &v17[-v11];
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2682084A4();
  sub_2683D0718();
  v14 = v3[1];
  v18 = *v3;
  v19 = v14;
  v17[15] = 0;
  sub_2682084F8();

  sub_2683D0508();

  if (!v2)
  {
    v15 = *(type metadata accessor for Snippet.Interaction() + 20);
    LOBYTE(v18) = 1;
    sub_2683CB828();
    sub_2682088A0(&qword_28024F838);
    sub_2683D0548();
  }

  return (*(v8 + 8))(v12, v5);
}

unint64_t sub_2682084A4()
{
  result = qword_28024F828;
  if (!qword_28024F828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024F828);
  }

  return result;
}

unint64_t sub_2682084F8()
{
  result = qword_28024F830;
  if (!qword_28024F830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024F830);
  }

  return result;
}

uint64_t Snippet.Interaction.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v33 = a2;
  v35 = sub_2683CB828();
  v4 = OUTLINED_FUNCTION_0_3(v35);
  v32 = v5;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024F840, &qword_2683DCDE8);
  v10 = OUTLINED_FUNCTION_0_3(v36);
  v34 = v11;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v10);
  v15 = &v29 - v14;
  v16 = type metadata accessor for Snippet.Interaction();
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16);
  v19 = &v29 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v19 = 0;
  *(v19 + 1) = 0;
  v20 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2682084A4();
  sub_2683D06F8();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_0(a1);
    v27 = *(v19 + 1);
  }

  else
  {
    v30 = v16;
    v31 = v9;
    v22 = v34;
    v21 = v35;
    v39 = 0;
    sub_26820884C();
    v23 = v36;
    sub_2683D0468();
    v24 = v37;
    v25 = v38;

    *v19 = v24;
    *(v19 + 1) = v25;
    LOBYTE(v37) = 1;
    sub_2682088A0(&qword_28024F850);
    v26 = v31;
    sub_2683D04A8();
    (*(v22 + 8))(v15, v23);
    (*(v32 + 32))(&v19[*(v30 + 20)], v26, v21);
    sub_2682088E4(v19, v33);
    __swift_destroy_boxed_opaque_existential_0(a1);
    return sub_268208948(v19);
  }
}

unint64_t sub_26820884C()
{
  result = qword_28024F848;
  if (!qword_28024F848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024F848);
  }

  return result;
}

uint64_t sub_2682088A0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_2683CB828();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2682088E4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Snippet.Interaction();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_268208948(uint64_t a1)
{
  v2 = type metadata accessor for Snippet.Interaction();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_2682089FC()
{
  sub_268208A80();
  if (v0 <= 0x3F)
  {
    sub_2683CB828();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_268208A80()
{
  if (!qword_28024F868)
  {
    v0 = sub_2683CFFA8();
    if (!v1)
    {
      atomic_store(v0, &qword_28024F868);
    }
  }
}

_BYTE *_s14descr2878F8F29V11InteractionV10CodingKeysOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_268208BB0()
{
  result = qword_28024F870;
  if (!qword_28024F870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024F870);
  }

  return result;
}

unint64_t sub_268208C08()
{
  result = qword_28024F878;
  if (!qword_28024F878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024F878);
  }

  return result;
}

unint64_t sub_268208C60()
{
  result = qword_28024F880;
  if (!qword_28024F880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024F880);
  }

  return result;
}

char *Snippet.Color.init(red:green:blue:colorSpace:)@<X0>(char *result@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>, double a5@<D2>)
{
  v5 = *result;
  *a2 = a3;
  *(a2 + 8) = a4;
  *(a2 + 16) = a5;
  *(a2 + 24) = v5;
  return result;
}

uint64_t sub_268208DA8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x5079616C70736964 && a2 == 0xE900000000000033;
  if (v4 || (sub_2683D0598() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1111970419 && a2 == 0xE400000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_2683D0598();

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

uint64_t sub_268208E78(char a1)
{
  if (a1)
  {
    return 1111970419;
  }

  else
  {
    return 0x5079616C70736964;
  }
}

uint64_t sub_268208EB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_268208DA8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_268208EDC(uint64_t a1)
{
  v2 = sub_2682092C4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_268208F18(uint64_t a1)
{
  v2 = sub_2682092C4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_268208F54(uint64_t a1)
{
  v2 = sub_26820936C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_268208F90(uint64_t a1)
{
  v2 = sub_26820936C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_268208FCC(uint64_t a1)
{
  v2 = sub_268209318();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_268209008(uint64_t a1)
{
  v2 = sub_268209318();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Snippet.Color.ColorSpace.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024F888, &qword_2683DCF70);
  v4 = OUTLINED_FUNCTION_0_3(v3);
  v34 = v5;
  v35 = v4;
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v8);
  v33 = &v31 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024F890, &qword_2683DCF78);
  v11 = OUTLINED_FUNCTION_0_3(v10);
  v31 = v12;
  v32 = v11;
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v15);
  v17 = &v31 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024F898, &qword_2683DCF80);
  OUTLINED_FUNCTION_0_3(v18);
  v20 = v19;
  v22 = *(v21 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v23);
  v25 = &v31 - v24;
  v26 = *v1;
  v27 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2682092C4();
  sub_2683D0718();
  v28 = (v20 + 8);
  if (v26)
  {
    v37 = 1;
    sub_268209318();
    v29 = v33;
    sub_2683D04C8();
    (*(v34 + 8))(v29, v35);
  }

  else
  {
    v36 = 0;
    sub_26820936C();
    sub_2683D04C8();
    (*(v31 + 8))(v17, v32);
  }

  return (*v28)(v25, v18);
}

unint64_t sub_2682092C4()
{
  result = qword_28024F8A0;
  if (!qword_28024F8A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024F8A0);
  }

  return result;
}

unint64_t sub_268209318()
{
  result = qword_28024F8A8;
  if (!qword_28024F8A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024F8A8);
  }

  return result;
}

unint64_t sub_26820936C()
{
  result = qword_28024F8B0;
  if (!qword_28024F8B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024F8B0);
  }

  return result;
}

uint64_t Snippet.Color.ColorSpace.hashValue.getter()
{
  v1 = *v0;
  sub_2683D0698();
  MEMORY[0x26D617190](v1);
  return sub_2683D06D8();
}

uint64_t Snippet.Color.ColorSpace.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v50 = a2;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024F8B8, &qword_2683DCF88);
  OUTLINED_FUNCTION_0_3(v52);
  v49 = v3;
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v6);
  v8 = v45 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024F8C0, &qword_2683DCF90);
  OUTLINED_FUNCTION_0_3(v9);
  v48 = v10;
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v13);
  v15 = v45 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024F8C8, &unk_2683DCF98);
  OUTLINED_FUNCTION_0_3(v16);
  v51 = v17;
  v19 = *(v18 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v20);
  v22 = v45 - v21;
  v23 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2682092C4();
  v24 = v53;
  sub_2683D06F8();
  if (v24)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v46 = v9;
  v47 = v15;
  v53 = a1;
  v25 = v52;
  v26 = sub_2683D04B8();
  result = sub_268151B7C(v26, 0);
  if (v29 == v30 >> 1)
  {
    v52 = result;
LABEL_9:
    v40 = sub_2683D01D8();
    swift_allocError();
    v42 = v41;
    v43 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D690, &qword_2683D52C0) + 48);
    *v42 = &type metadata for Snippet.Color.ColorSpace;
    sub_2683D0428();
    sub_2683D01C8();
    (*(*(v40 - 8) + 104))(v42, *MEMORY[0x277D84160], v40);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v51 + 8))(v22, v16);
    a1 = v53;
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v45[1] = 0;
  if (v29 >= (v30 >> 1))
  {
    __break(1u);
  }

  else
  {
    v31 = *(v28 + v29);
    v32 = sub_268151B68(v29 + 1);
    v34 = v33;
    v36 = v35;
    swift_unknownObjectRelease();
    if (v34 != v36 >> 1)
    {
      v52 = v32;
      goto LABEL_9;
    }

    v54 = v31;
    if (v31)
    {
      v56 = 1;
      sub_268209318();
      v37 = v8;
      OUTLINED_FUNCTION_97();
      v38 = v50;
      v39 = v51;
      swift_unknownObjectRelease();
      (*(v49 + 8))(v37, v25);
    }

    else
    {
      v55 = 0;
      sub_26820936C();
      v44 = v47;
      OUTLINED_FUNCTION_97();
      v38 = v50;
      v39 = v51;
      swift_unknownObjectRelease();
      (*(v48 + 8))(v44, v46);
    }

    (*(v39 + 8))(v22, v34);
    *v38 = v54;
    return __swift_destroy_boxed_opaque_existential_0(v53);
  }

  return result;
}

BOOL static Snippet.Color.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2 || *(a1 + 8) != *(a2 + 8) || *(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v5 = *(a1 + 24);
  v6 = *(a2 + 24);
  if (v5 != 2)
  {
    return v6 != 2 && ((v6 ^ v5) & 1) == 0;
  }

  return v6 == 2;
}

uint64_t sub_26820993C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 6579570 && a2 == 0xE300000000000000;
  if (v3 || (sub_2683D0598() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6E65657267 && a2 == 0xE500000000000000;
    if (v6 || (sub_2683D0598() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 1702194274 && a2 == 0xE400000000000000;
      if (v7 || (sub_2683D0598() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x617053726F6C6F63 && a2 == 0xEA00000000006563)
      {

        return 3;
      }

      else
      {
        v9 = sub_2683D0598();

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

uint64_t sub_268209A98(char a1)
{
  result = 6579570;
  switch(a1)
  {
    case 1:
      result = 0x6E65657267;
      break;
    case 2:
      result = 1702194274;
      break;
    case 3:
      result = 0x617053726F6C6F63;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_268209B14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_26820993C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_268209B3C(uint64_t a1)
{
  v2 = sub_26820A108();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_268209B78(uint64_t a1)
{
  v2 = sub_26820A108();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Snippet.Color.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024F8D0, &qword_2683DCFA8);
  OUTLINED_FUNCTION_0_3(v4);
  v6 = v5;
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v9);
  v11 = &v18 - v10;
  v13 = *v1;
  v12 = v1[1];
  v14 = v1[2];
  v15 = *(v1 + 24);
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26820A108();
  sub_2683D0718();
  v19 = v13;
  HIBYTE(v18) = 0;
  sub_26820A15C();
  OUTLINED_FUNCTION_2_27();
  if (!v2)
  {
    v19 = v12;
    HIBYTE(v18) = 1;
    OUTLINED_FUNCTION_2_27();
    v19 = v14;
    HIBYTE(v18) = 2;
    OUTLINED_FUNCTION_2_27();
    LOBYTE(v19) = v15;
    HIBYTE(v18) = 3;
    sub_26820A1B0();
    sub_2683D0508();
  }

  return (*(v6 + 8))(v11, v4);
}

uint64_t Snippet.Color.hash(into:)()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  if (*v0 == 0.0)
  {
    v1 = 0.0;
  }

  MEMORY[0x26D6171B0](*&v1);
  if (v2 == 0.0)
  {
    v5 = 0.0;
  }

  else
  {
    v5 = v2;
  }

  MEMORY[0x26D6171B0](*&v5);
  if (v3 == 0.0)
  {
    v6 = 0.0;
  }

  else
  {
    v6 = v3;
  }

  MEMORY[0x26D6171B0](*&v6);
  if (v4 == 2)
  {
    return sub_2683D06B8();
  }

  sub_2683D06B8();
  return MEMORY[0x26D617190](v4 & 1);
}

uint64_t Snippet.Color.hashValue.getter()
{
  v2 = *v0;
  v3 = *(v0 + 2);
  v4 = *(v0 + 24);
  sub_2683D0698();
  Snippet.Color.hash(into:)();
  return sub_2683D06D8();
}

uint64_t Snippet.Color.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024F8F0, &qword_2683DCFB0);
  OUTLINED_FUNCTION_0_3(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v10);
  v12 = &v19 - v11;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26820A108();
  sub_2683D06F8();
  if (!v2)
  {
    HIBYTE(v19) = 0;
    sub_26820A204();
    OUTLINED_FUNCTION_1_33();
    OUTLINED_FUNCTION_5_24();
    v14 = v20;
    HIBYTE(v19) = 1;
    OUTLINED_FUNCTION_1_33();
    OUTLINED_FUNCTION_5_24();
    v15 = v20;
    HIBYTE(v19) = 2;
    OUTLINED_FUNCTION_1_33();
    OUTLINED_FUNCTION_5_24();
    v17 = v20;
    HIBYTE(v19) = 3;
    sub_26820A258();
    OUTLINED_FUNCTION_1_33();
    sub_2683D0468();
    (*(v7 + 8))(v12, v5);
    v18 = v20;
    *a2 = v14;
    *(a2 + 8) = v15;
    *(a2 + 16) = v17;
    *(a2 + 24) = v18;
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t sub_26820A07C()
{
  v2 = *v0;
  v3 = *(v0 + 2);
  v4 = *(v0 + 24);
  sub_2683D0698();
  Snippet.Color.hash(into:)();
  return sub_2683D06D8();
}

unint64_t sub_26820A108()
{
  result = qword_28024F8D8;
  if (!qword_28024F8D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024F8D8);
  }

  return result;
}

unint64_t sub_26820A15C()
{
  result = qword_28024F8E0;
  if (!qword_28024F8E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024F8E0);
  }

  return result;
}

unint64_t sub_26820A1B0()
{
  result = qword_28024F8E8;
  if (!qword_28024F8E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024F8E8);
  }

  return result;
}

unint64_t sub_26820A204()
{
  result = qword_28024F8F8;
  if (!qword_28024F8F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024F8F8);
  }

  return result;
}

unint64_t sub_26820A258()
{
  result = qword_28024F900;
  if (!qword_28024F900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024F900);
  }

  return result;
}

unint64_t sub_26820A2B0()
{
  result = qword_28024F908;
  if (!qword_28024F908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024F908);
  }

  return result;
}

unint64_t sub_26820A308()
{
  result = qword_28024F910;
  if (!qword_28024F910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024F910);
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

uint64_t sub_26820A370(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFE && *(a1 + 25))
    {
      v2 = *a1 + 253;
    }

    else
    {
      v3 = *(a1 + 24);
      if (v3 <= 2)
      {
        v4 = 2;
      }

      else
      {
        v4 = *(a1 + 24);
      }

      v5 = v4 - 3;
      if (v3 < 2)
      {
        v2 = -1;
      }

      else
      {
        v2 = v5;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_26820A3BC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2 + 2;
    }
  }

  return result;
}

_BYTE *_s14descr2878F8F29V5ColorV10CodingKeysOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *sub_26820A500(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_26820A600()
{
  result = qword_28024F918;
  if (!qword_28024F918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024F918);
  }

  return result;
}

unint64_t sub_26820A658()
{
  result = qword_28024F920;
  if (!qword_28024F920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024F920);
  }

  return result;
}

unint64_t sub_26820A6B0()
{
  result = qword_28024F928;
  if (!qword_28024F928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024F928);
  }

  return result;
}

unint64_t sub_26820A708()
{
  result = qword_28024F930;
  if (!qword_28024F930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024F930);
  }

  return result;
}

unint64_t sub_26820A760()
{
  result = qword_28024F938;
  if (!qword_28024F938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024F938);
  }

  return result;
}

unint64_t sub_26820A7B8()
{
  result = qword_28024F940;
  if (!qword_28024F940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024F940);
  }

  return result;
}

unint64_t sub_26820A810()
{
  result = qword_28024F948;
  if (!qword_28024F948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024F948);
  }

  return result;
}

unint64_t sub_26820A868()
{
  result = qword_28024F950;
  if (!qword_28024F950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024F950);
  }

  return result;
}

unint64_t sub_26820A8C0()
{
  result = qword_28024F958;
  if (!qword_28024F958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024F958);
  }

  return result;
}

unint64_t sub_26820A918()
{
  result = qword_28024F960;
  if (!qword_28024F960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024F960);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_2_27()
{

  return sub_2683D0548();
}

uint64_t OUTLINED_FUNCTION_5_24()
{

  return sub_2683D04A8();
}

uint64_t sub_26820A9CC(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 16);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_26820AAE8;

  return (v9)(0, a1, a2);
}

uint64_t sub_26820AAE8(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

void sub_26820ABE8()
{
  v0 = sub_2683CB438();
  __swift_allocate_value_buffer(v0, qword_2814B1D10);
  __swift_project_value_buffer(v0, qword_2814B1D10);
  v1 = objc_opt_self();
  type metadata accessor for NotebookSuggestionsCATs();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  v4 = [v1 bundleTemplateDir_];

  if (v4)
  {
    sub_2683CFA78();

    sub_2683CB3B8();
  }

  else
  {
    __break(1u);
  }
}

uint64_t static SuggestionDialogUtil.templateDirectory.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_2814B1D08 != -1)
  {
    swift_once();
  }

  v2 = sub_2683CB438();
  v3 = __swift_project_value_buffer(v2, qword_2814B1D10);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

unint64_t SuggestionDialogUtil.DialogId.catId.getter()
{
  v1 = 0xEE007265646E696DLL;
  v2 = 0x6552657461657263;
  switch(*v0)
  {
    case 1:
      v1 = 0xEA00000000006574;
      v2 = 0x6F4E657461657263;
      break;
    case 2:
      v3 = "addReminderLocation";
      goto LABEL_7;
    case 3:
      v1 = 0xEF656D6954726564;
      v2 = 0x6E696D6552646461;
      break;
    case 4:
      v1 = 0x80000002683FA960;
      v2 = 0xD000000000000012;
      break;
    case 5:
      v3 = "markAsCompletedHint";
LABEL_7:
      v1 = (v3 - 32) | 0x8000000000000000;
      v2 = 0xD000000000000013;
      break;
    default:
      break;
  }

  MEMORY[0x26D616690](v2, v1);

  return 0xD000000000000014;
}

unint64_t SuggestionDialogUtil.DialogId.rawValue.getter()
{
  result = 0x6552657461657263;
  switch(*v0)
  {
    case 1:
      result = 0x6F4E657461657263;
      break;
    case 2:
      result = 0xD000000000000013;
      break;
    case 3:
      result = 0x6E696D6552646461;
      break;
    case 4:
      result = 0xD000000000000012;
      break;
    case 5:
      result = 0xD000000000000013;
      break;
    default:
      return result;
  }

  return result;
}

SiriNotebook::SuggestionDialogUtil::DialogId_optional __swiftcall SuggestionDialogUtil.DialogId.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_2683D0408();

  v5 = 6;
  if (v3 < 6)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_26820AFD8(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = *a1;
  return sub_2681E9968();
}

unint64_t sub_26820AFE8()
{
  result = qword_28024F968;
  if (!qword_28024F968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024F968);
  }

  return result;
}

unint64_t sub_26820B060@<X0>(unint64_t *a1@<X8>)
{
  result = SuggestionDialogUtil.DialogId.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

_BYTE *storeEnumTagSinglePayload for SuggestionDialogUtil(_BYTE *result, int a2, int a3)
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

uint64_t getEnumTagSinglePayload for SuggestionDialogUtil.DialogId(unsigned __int8 *a1, unsigned int a2)
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

_BYTE *storeEnumTagSinglePayload for SuggestionDialogUtil.DialogId(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

uint64_t sub_26820B2FC(uint64_t a1)
{
  *(v2 + 56) = a1;
  *(v2 + 64) = v1;
  return MEMORY[0x2822009F8](sub_26820B31C, 0, 0);
}

uint64_t sub_26820B31C()
{
  v1 = v0[8];
  v2 = [objc_allocWithZone(MEMORY[0x277D4C5A0]) init];
  v3 = *v1;
  v4 = v1[1];
  v5 = v2;
  sub_26820B598(v3, v4, v5);
  if (v1[3])
  {
    v6 = *(v0[8] + 16);
    v7 = sub_2683CFA68();
  }

  else
  {
    v7 = 0;
  }

  v8 = v0[8];
  [v5 setSubtitle_];

  [v5 setIsCentered_];
  [v5 setTitleAlign_];
  if (*(v8 + 48))
  {
    v9 = 0;
  }

  else
  {
    v10 = *(v0[8] + 40);
    sub_26820B5F0();
    v9 = sub_2683CFF38();
  }

  v11 = v0[7];
  v12 = v0[8];
  [v5 setTitleWeight_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D4A8, &unk_2683D4D00);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_2683D1EC0;
  v0[2] = v11;
  v0[3] = sub_26816B178;
  v0[4] = 0;
  v0[5] = sub_26816B19C;
  v0[6] = 0;
  v14 = v5;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024E840, &qword_2683D8200);
  sub_2681B4CB8();
  v15 = sub_2683CFA38();
  v17 = v16;

  *(v13 + 32) = v15;
  *(v13 + 40) = v17;
  sub_2681B2EE4(v13, v14);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024E868, &qword_2683D8210);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_2683D1EC0;
  *(v18 + 32) = sub_26839EEEC(v14, *(v12 + 64));
  *(v18 + 40) = v19;

  v20 = v0[1];

  return v20(v18);
}

void sub_26820B598(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_2683CFA68();
  [a3 setTitle_];
}

unint64_t sub_26820B5F0()
{
  result = qword_28024F970;
  if (!qword_28024F970)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28024F970);
  }

  return result;
}

uint64_t sub_26820B634(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 72))
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

uint64_t sub_26820B674(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t get_enum_tag_for_layout_string_11SiriKitFlow0A17CorrectionsClient_pSg(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_26820B6EC(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 384))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 40);
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

uint64_t sub_26820B72C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 376) = 0;
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 384) = 1;
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
      *(result + 40) = (a2 - 1);
      return result;
    }

    *(result + 384) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_26820B7E0(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_0_1();
}

uint64_t sub_26820B7F4()
{
  OUTLINED_FUNCTION_7();
  v1 = v0[3];
  v2 = v1[13];
  v3 = v1[14];
  OUTLINED_FUNCTION_39_6(v1 + 10);
  v5 = *(v4 + 48);
  v6 = OUTLINED_FUNCTION_13_19();
  if (v7(v6))
  {
    sub_2683CEC88();
    sub_2683CEC78();
    sub_2683CEC38();
    OUTLINED_FUNCTION_97_0();

    sub_2683CF698();
    v9 = v8;

    v0[4] = v9;
    if (v9)
    {
      v10 = swift_task_alloc();
      v0[5] = v10;
      *v10 = v0;
      v11 = OUTLINED_FUNCTION_27_9(v10);

      return sub_26820BC40(v11, v12, v13);
    }

    if (qword_28024C8E0 != -1)
    {
      OUTLINED_FUNCTION_0_5();
    }

    v15 = sub_2683CF7E8();
    __swift_project_value_buffer(v15, qword_28027C958);
    v16 = sub_2683CF7C8();
    v17 = sub_2683CFE78();
    if (OUTLINED_FUNCTION_43(v17))
    {
      *OUTLINED_FUNCTION_21_5() = 0;
      OUTLINED_FUNCTION_11_17(&dword_2680EB000, v18, v19, "[SuggestionsProvider] Missing or malformed request ID.");
      OUTLINED_FUNCTION_36();
    }
  }

  OUTLINED_FUNCTION_40();

  return v20();
}

uint64_t sub_26820B98C(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_26820B9AC, 0, 0);
}

uint64_t sub_26820B9AC()
{
  OUTLINED_FUNCTION_7();
  v1 = v0[3];
  v2 = v1[13];
  v3 = v1[14];
  OUTLINED_FUNCTION_39_6(v1 + 10);
  v5 = *(v4 + 48);
  v6 = OUTLINED_FUNCTION_13_19();
  if (v7(v6))
  {
    sub_2683CEC88();
    sub_2683CEC78();
    sub_2683CEC38();
    OUTLINED_FUNCTION_97_0();

    sub_2683CF698();
    v9 = v8;

    v0[4] = v9;
    if (v9)
    {
      v10 = swift_task_alloc();
      v0[5] = v10;
      *v10 = v0;
      v11 = OUTLINED_FUNCTION_27_9(v10);

      return sub_26820C188(v11, v12, v13);
    }

    if (qword_28024C8E0 != -1)
    {
      OUTLINED_FUNCTION_0_5();
    }

    v15 = sub_2683CF7E8();
    __swift_project_value_buffer(v15, qword_28027C958);
    v16 = sub_2683CF7C8();
    v17 = sub_2683CFE78();
    if (OUTLINED_FUNCTION_43(v17))
    {
      *OUTLINED_FUNCTION_21_5() = 0;
      OUTLINED_FUNCTION_11_17(&dword_2680EB000, v18, v19, "[SuggestionsProvider] Missing or malformed request ID.");
      OUTLINED_FUNCTION_36();
    }
  }

  OUTLINED_FUNCTION_40();

  return v20();
}

uint64_t sub_26820BB44()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_42();
  v2 = *(v1 + 40);
  v3 = *(v1 + 32);
  v4 = *v0;
  OUTLINED_FUNCTION_1_0();
  *v5 = v4;

  OUTLINED_FUNCTION_40();

  return v6();
}

uint64_t sub_26820BC40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[20] = a3;
  v4[21] = v3;
  v4[18] = a1;
  v4[19] = a2;
  return OUTLINED_FUNCTION_0_1();
}

uint64_t sub_26820BC58()
{
  OUTLINED_FUNCTION_7();
  v1 = *(v0 + 144);
  *(v0 + 176) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024EAA0, &qword_2683D4370);
  *(v0 + 136) = sub_2683CC848();
  sub_268129504(0, &qword_28024D340, 0x277CD4058);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024F990, &qword_2683DD878);
  OUTLINED_FUNCTION_41_0();
  if (swift_dynamicCast())
  {
    v2 = OUTLINED_FUNCTION_41_0();
    sub_268128148(v2, v3);
    v5 = *(v0 + 40);
    v4 = *(v0 + 48);
    __swift_project_boxed_opaque_existential_1((v0 + 16), v5);
    v6 = swift_task_alloc();
    *(v0 + 184) = v6;
    *v6 = v0;
    v7 = OUTLINED_FUNCTION_2_28(v6);

    return sub_2681653FC(v7, v8, v9, v5, v4);
  }

  else
  {
    *(v0 + 88) = 0;
    *(v0 + 56) = 0u;
    *(v0 + 72) = 0u;
    sub_2681433DC(v0 + 56, &qword_28024F998, &qword_2683DD880);
    OUTLINED_FUNCTION_50_3();
    v11 = sub_2683CC818();
    v12 = sub_268129504(0, &qword_28024D348, 0x277CD4060);
    *(v0 + 120) = v12;
    *(v0 + 128) = &off_2879034D0;
    *(v0 + 96) = v11;
    v13 = *__swift_project_boxed_opaque_existential_1((v0 + 96), v12);
    v14 = swift_task_alloc();
    *(v0 + 192) = v14;
    *v14 = v0;
    v15 = OUTLINED_FUNCTION_2_28(v14);

    return sub_26820C7A0(v15, v16, v17);
  }
}

uint64_t sub_26820BE4C()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_42();
  v2 = *(v1 + 184);
  v3 = *v0;
  OUTLINED_FUNCTION_1_0();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_48();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_26820BF30()
{
  OUTLINED_FUNCTION_14();
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  OUTLINED_FUNCTION_50_3();
  v1 = sub_2683CC818();
  v2 = sub_268129504(0, &qword_28024D348, 0x277CD4060);
  v0[15] = v2;
  v0[16] = &off_2879034D0;
  v0[12] = v1;
  v3 = *__swift_project_boxed_opaque_existential_1(v0 + 12, v2);
  v4 = swift_task_alloc();
  v0[24] = v4;
  *v4 = v0;
  v5 = OUTLINED_FUNCTION_2_28(v4);

  return sub_26820C7A0(v5, v6, v7);
}

uint64_t sub_26820C000()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_42();
  v2 = *(v1 + 192);
  v3 = *v0;
  OUTLINED_FUNCTION_1_0();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_48();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_26820C0E4()
{
  OUTLINED_FUNCTION_14();
  v1 = v0[22];
  v2 = v0[18];
  __swift_destroy_boxed_opaque_existential_0(v0 + 12);
  v0[25] = sub_2683CC848();
  v3 = swift_task_alloc();
  v0[26] = v3;
  *v3 = v0;
  OUTLINED_FUNCTION_2_28(v3);

  return sub_268165B28();
}

uint64_t sub_26820C188(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[20] = a3;
  v4[21] = v3;
  v4[18] = a1;
  v4[19] = a2;
  return MEMORY[0x2822009F8](sub_26820C1AC, 0, 0);
}

uint64_t sub_26820C1AC()
{
  OUTLINED_FUNCTION_14();
  v1 = v0[18];
  v0[22] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024F980, &qword_2683DD850);
  v2 = sub_2683CC848();
  v3 = sub_268129504(0, &qword_28024DD90, 0x277CD3A18);
  v0[5] = v3;
  v0[6] = &off_2879034C0;
  v0[2] = v2;
  v4 = *__swift_project_boxed_opaque_existential_1(v0 + 2, v3);
  v5 = swift_task_alloc();
  v0[23] = v5;
  *v5 = v0;
  v6 = OUTLINED_FUNCTION_2_28(v5);

  return sub_26820CD80(v6, v7, v8);
}

uint64_t sub_26820C28C()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_42();
  v2 = *(v1 + 184);
  v3 = *v0;
  OUTLINED_FUNCTION_1_0();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_48();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_26820C370()
{
  OUTLINED_FUNCTION_7();
  v1 = *(v0 + 176);
  v2 = *(v0 + 144);
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  *(v0 + 136) = sub_2683CC818();
  sub_268129504(0, &qword_28024F008, 0x277CD3A20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024F990, &qword_2683DD878);
  OUTLINED_FUNCTION_41_0();
  if (swift_dynamicCast())
  {
    v3 = OUTLINED_FUNCTION_41_0();
    sub_268128148(v3, v4);
    v6 = *(v0 + 80);
    v5 = *(v0 + 88);
    __swift_project_boxed_opaque_existential_1((v0 + 56), v6);
    v7 = swift_task_alloc();
    *(v0 + 192) = v7;
    *v7 = v0;
    v8 = OUTLINED_FUNCTION_2_28(v7);

    return sub_2681653FC(v8, v9, v10, v6, v5);
  }

  else
  {
    *(v0 + 128) = 0;
    *(v0 + 96) = 0u;
    *(v0 + 112) = 0u;
    sub_2681433DC(v0 + 96, &qword_28024F998, &qword_2683DD880);
    OUTLINED_FUNCTION_50_3();
    *(v0 + 200) = sub_2683CC848();
    v12 = swift_task_alloc();
    *(v0 + 208) = v12;
    *v12 = v0;
    OUTLINED_FUNCTION_2_28(v12);

    return sub_268165B28();
  }
}

uint64_t sub_26820C528()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_42();
  v2 = *(v1 + 192);
  v3 = *v0;
  OUTLINED_FUNCTION_1_0();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_48();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_26820C60C()
{
  OUTLINED_FUNCTION_14();
  __swift_destroy_boxed_opaque_existential_0(v0 + 7);
  OUTLINED_FUNCTION_50_3();
  v0[25] = sub_2683CC848();
  v1 = swift_task_alloc();
  v0[26] = v1;
  *v1 = v0;
  OUTLINED_FUNCTION_2_28(v1);

  return sub_268165B28();
}

uint64_t sub_26820C6A8()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_42();
  v2 = *(v1 + 208);
  v3 = *(v1 + 200);
  v4 = *v0;
  OUTLINED_FUNCTION_1_0();
  *v5 = v4;

  OUTLINED_FUNCTION_40();

  return v6();
}

uint64_t sub_26820C7A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[14] = a3;
  v4[15] = v3;
  v4[12] = a1;
  v4[13] = a2;
  return MEMORY[0x2822009F8](sub_26820C7C4, 0, 0);
}

uint64_t sub_26820C7C4()
{
  OUTLINED_FUNCTION_14();
  sub_26813CA00(*(v0 + 120) + 40, v0 + 56);
  swift_task_alloc();
  OUTLINED_FUNCTION_10_2();
  *(v0 + 128) = v1;
  *v1 = v2;
  OUTLINED_FUNCTION_38_8(v1);

  return sub_2681D973C();
}

uint64_t sub_26820C858()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_42();
  v2 = v1;
  OUTLINED_FUNCTION_2_0();
  *v3 = v2;
  v5 = *(v4 + 128);
  v6 = *v0;
  OUTLINED_FUNCTION_1_0();
  *v7 = v6;

  sub_268165AD4(v2 + 56);
  v8 = OUTLINED_FUNCTION_48();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_26820C93C()
{
  OUTLINED_FUNCTION_7();
  if (v0[5])
  {
    v1 = v0[6];
    OUTLINED_FUNCTION_39_6(v0 + 2);
    v3 = *(v2 + 8);
    v4 = OUTLINED_FUNCTION_13_19();
    v6 = v5(v4);
    v0[17] = v6;
    __swift_destroy_boxed_opaque_existential_0(v0 + 2);
    if (*(v6 + 16))
    {
      v7 = v0[15];
      v8 = v7[4];
      __swift_project_boxed_opaque_existential_1(v7, v7[3]);
      v9 = *(MEMORY[0x277D60588] + 4);
      v10 = swift_task_alloc();
      v0[18] = v10;
      v11 = *(v8 + 8);
      *v10 = v0;
      v12 = OUTLINED_FUNCTION_22_11(v10);

      return MEMORY[0x2821C5FE0](v12, v13, v14, v15, v16);
    }
  }

  else
  {
    sub_2681433DC((v0 + 2), &qword_28024DCD0, &unk_2683D4990);
  }

  OUTLINED_FUNCTION_40();

  return v17();
}

uint64_t sub_26820CA78()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_2_13();
  *v3 = v2;
  v5 = *(v4 + 144);
  v6 = *(v4 + 136);
  v7 = *v1;
  OUTLINED_FUNCTION_1_0();
  *v8 = v7;
  *(v9 + 152) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_24();

    return MEMORY[0x2822009F8](v10, v11, v12);
  }

  else
  {
    OUTLINED_FUNCTION_40();

    return v13();
  }
}

void sub_26820CBA8()
{
  if (qword_28024C8E0 != -1)
  {
    OUTLINED_FUNCTION_0_5();
  }

  v1 = v0[19];
  v2 = v0[14];
  v3 = sub_2683CF7E8();
  __swift_project_value_buffer(v3, qword_28027C958);

  v4 = v1;
  v5 = sub_2683CF7C8();
  v6 = sub_2683CFE78();

  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[19];
  if (v7)
  {
    v10 = v0[13];
    v9 = v0[14];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v18 = v13;
    *v11 = 136315394;
    *(v11 + 4) = sub_2681610A0(v10, v9, &v18);
    *(v11 + 12) = 2112;
    v14 = v8;
    v15 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 14) = v15;
    *v12 = v15;
    _os_log_impl(&dword_2680EB000, v5, v6, "[SuggestionsProvider] Failed to submit SiriSuggestion Execution Parameters for request %s: %@.", v11, 0x16u);
    sub_2681433DC(v12, &qword_28024DCD8, &qword_2683D5060);
    OUTLINED_FUNCTION_38();
    __swift_destroy_boxed_opaque_existential_0(v13);
    OUTLINED_FUNCTION_38();
    OUTLINED_FUNCTION_36();
  }

  else
  {
  }

  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_10_5();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_26820CD80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[14] = a3;
  v4[15] = v3;
  v4[12] = a1;
  v4[13] = a2;
  return MEMORY[0x2822009F8](sub_26820CDA4, 0, 0);
}

uint64_t sub_26820CDA4()
{
  OUTLINED_FUNCTION_14();
  sub_26813CA00(*(v0 + 120) + 40, v0 + 56);
  swift_task_alloc();
  OUTLINED_FUNCTION_10_2();
  *(v0 + 128) = v1;
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_38_8(v1);

  return sub_2681D8E78(v3, v4);
}

uint64_t sub_26820CE38()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_42();
  v2 = v1;
  OUTLINED_FUNCTION_2_0();
  *v3 = v2;
  v5 = *(v4 + 128);
  v6 = *v0;
  OUTLINED_FUNCTION_1_0();
  *v7 = v6;

  sub_268165AD4(v2 + 56);
  v8 = OUTLINED_FUNCTION_48();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_26820CF1C()
{
  OUTLINED_FUNCTION_7();
  if (v0[5])
  {
    v1 = v0[6];
    OUTLINED_FUNCTION_39_6(v0 + 2);
    v3 = *(v2 + 8);
    v4 = OUTLINED_FUNCTION_13_19();
    v6 = v5(v4);
    v0[17] = v6;
    __swift_destroy_boxed_opaque_existential_0(v0 + 2);
    if (*(v6 + 16))
    {
      v7 = v0[15];
      v8 = v7[4];
      __swift_project_boxed_opaque_existential_1(v7, v7[3]);
      v9 = *(MEMORY[0x277D60588] + 4);
      v10 = swift_task_alloc();
      v0[18] = v10;
      v11 = *(v8 + 8);
      *v10 = v0;
      v12 = OUTLINED_FUNCTION_22_11(v10);

      return MEMORY[0x2821C5FE0](v12, v13, v14, v15, v16);
    }
  }

  else
  {
    sub_2681433DC((v0 + 2), &qword_28024DCD0, &unk_2683D4990);
  }

  OUTLINED_FUNCTION_40();

  return v17();
}

uint64_t sub_26820D058()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_2_13();
  *v3 = v2;
  v5 = *(v4 + 144);
  v6 = *(v4 + 136);
  v7 = *v1;
  OUTLINED_FUNCTION_1_0();
  *v8 = v7;
  *(v9 + 152) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_24();

    return MEMORY[0x2822009F8](v10, v11, v12);
  }

  else
  {
    OUTLINED_FUNCTION_40();

    return v13();
  }
}

uint64_t sub_26820D188()
{
  OUTLINED_FUNCTION_14();
  v1[53] = v2;
  v1[54] = v0;
  v1[52] = v3;
  v4 = type metadata accessor for Snippet();
  v1[55] = v4;
  OUTLINED_FUNCTION_23(v4);
  v6 = *(v5 + 64) + 15;
  v1[56] = swift_task_alloc();
  v1[57] = swift_task_alloc();
  v1[58] = swift_task_alloc();
  v1[59] = swift_task_alloc();
  v7 = sub_2683CC9A8();
  v1[60] = v7;
  OUTLINED_FUNCTION_3_1(v7);
  v1[61] = v8;
  v10 = *(v9 + 64);
  v1[62] = OUTLINED_FUNCTION_15_1();
  v11 = sub_2683CC138();
  v1[63] = v11;
  OUTLINED_FUNCTION_3_1(v11);
  v1[64] = v12;
  v14 = *(v13 + 64) + 15;
  v1[65] = swift_task_alloc();
  v1[66] = swift_task_alloc();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024E760, &unk_2683D2BF0);
  OUTLINED_FUNCTION_23(v15);
  v17 = *(v16 + 64);
  v1[67] = OUTLINED_FUNCTION_15_1();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D588, &unk_2683D8DB0);
  OUTLINED_FUNCTION_23(v18);
  v20 = *(v19 + 64);
  v1[68] = OUTLINED_FUNCTION_15_1();
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D400, &qword_2683D2460);
  OUTLINED_FUNCTION_23(v21);
  v23 = *(v22 + 64);
  v1[69] = OUTLINED_FUNCTION_15_1();
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024E770, &qword_2683D80D0);
  OUTLINED_FUNCTION_3_1(v24);
  v1[70] = v25;
  v1[71] = *(v26 + 64);
  v1[72] = swift_task_alloc();
  v1[73] = swift_task_alloc();
  v1[74] = swift_task_alloc();
  v1[75] = swift_task_alloc();
  v1[76] = swift_task_alloc();
  v1[77] = swift_task_alloc();
  v1[78] = swift_task_alloc();
  v1[79] = swift_task_alloc();
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024F980, &qword_2683DD850);
  v1[80] = v27;
  OUTLINED_FUNCTION_3_1(v27);
  v1[81] = v28;
  v30 = *(v29 + 64);
  v1[82] = OUTLINED_FUNCTION_15_1();
  v31 = OUTLINED_FUNCTION_48();

  return MEMORY[0x2822009F8](v31, v32, v33);
}

uint64_t sub_26820D474()
{
  v69 = v0;
  if (qword_28024C8E0 != -1)
  {
    OUTLINED_FUNCTION_0_5();
  }

  v1 = *(v0 + 656);
  v2 = *(v0 + 648);
  v3 = *(v0 + 640);
  v4 = *(v0 + 424);
  v5 = sub_2683CF7E8();
  __swift_project_value_buffer(v5, qword_28027C958);
  (*(v2 + 16))(v1, v4, v3);
  v6 = sub_2683CF7C8();
  v7 = sub_2683CFE98();
  v8 = os_log_type_enabled(v6, v7);
  v9 = *(v0 + 656);
  v10 = *(v0 + 648);
  v11 = *(v0 + 640);
  if (v8)
  {
    buf = swift_slowAlloc();
    v66 = swift_slowAlloc();
    v68 = v66;
    *buf = 136315138;
    v12 = sub_2683CC818();
    v13 = [v12 description];
    v64 = v7;
    v14 = sub_2683CFA78();
    v16 = v15;

    (*(v10 + 8))(v9, v11);
    v17 = sub_2681610A0(v14, v16, &v68);

    *(buf + 4) = v17;
    _os_log_impl(&dword_2680EB000, v6, v64, "[AddTasks HandleIntentStrategy] Intent Response: %s", buf, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v66);
    OUTLINED_FUNCTION_38();
    OUTLINED_FUNCTION_38();
  }

  else
  {

    (*(v10 + 8))(v9, v11);
  }

  v18 = *(v0 + 432);
  if (v18[11])
  {
    v19 = *(v0 + 640);
    v20 = *(v0 + 424);
    v21 = sub_2683CC848();
    sub_268217A90(v21);

    v18 = *(v0 + 432);
  }

  v22 = v18[15];
  v23 = v18[16];
  OUTLINED_FUNCTION_39_6(v18 + 12);
  v25 = *(v24 + 24);
  v26 = OUTLINED_FUNCTION_13_19();
  if (v27(v26))
  {
    v28 = *(v0 + 640);
    v29 = *(v0 + 424);
    v30 = sub_2683CC818();
    v31 = sub_268210364(v30, &selRef_addedTasks, &qword_280253310, 0x277CD4220);
    if (v31)
    {
      v32 = sub_268229348(v31);

      if (v32 == 1)
      {
        v33 = sub_2683CF7C8();
        v34 = sub_2683CFE98();
        if (os_log_type_enabled(v33, v34))
        {
          *OUTLINED_FUNCTION_21_5() = 0;
          OUTLINED_FUNCTION_54_2(&dword_2680EB000, v35, v36, "[AddTasks HandleIntentStrategy] Registering correction");
          OUTLINED_FUNCTION_38();
        }

        v37 = *(v0 + 432);

        sub_2681340E8(v37, v0 + 256, &qword_28024F020, &unk_2683E6AA0);
        if (*(v0 + 280))
        {
          v38 = *(v0 + 640);
          v39 = *(v0 + 424);
          v40 = *(v0 + 432);
          sub_268128148((v0 + 256), v0 + 216);
          v41 = *(v0 + 248);
          __swift_project_boxed_opaque_existential_1((v0 + 216), *(v0 + 240));
          v42 = sub_2683CC818();
          v43 = sub_268210364(v42, &selRef_addedTasks, &qword_280253310, 0x277CD4220);
          if (v43)
          {
            v44 = v43;
          }

          else
          {
            v44 = MEMORY[0x277D84F90];
          }

          v45 = sub_2683CC828();
          sub_26813CA00(v40 + 136, v0 + 336);
          __swift_mutable_project_boxed_opaque_existential_1(v0 + 336, *(v0 + 360));
          *(v0 + 400) = &type metadata for NotebookFlowCreator;
          *(v0 + 408) = &off_287900FD8;
          v46 = type metadata accessor for CorrectingAddTasksFlow();
          v47 = *(v46 + 48);
          v48 = *(v46 + 52);
          v49 = swift_allocObject();
          __swift_mutable_project_boxed_opaque_existential_1(v0 + 376, &type metadata for NotebookFlowCreator);
          v50 = sub_2682103E0(v44, v45, v49);
          __swift_destroy_boxed_opaque_existential_0((v0 + 376));
          __swift_destroy_boxed_opaque_existential_0((v0 + 336));
          *(v0 + 320) = v46;
          *(v0 + 328) = sub_26821052C(&qword_28024F988, type metadata accessor for CorrectingAddTasksFlow);
          *(v0 + 296) = v50;
          sub_2683CBED8();
          __swift_destroy_boxed_opaque_existential_0((v0 + 296));
          __swift_destroy_boxed_opaque_existential_0((v0 + 216));
        }

        else
        {
          sub_2681433DC(v0 + 256, &qword_28024F020, &unk_2683E6AA0);
          v51 = sub_2683CF7C8();
          v52 = sub_2683CFE78();
          if (os_log_type_enabled(v51, v52))
          {
            *OUTLINED_FUNCTION_21_5() = 0;
            OUTLINED_FUNCTION_54_2(&dword_2680EB000, v53, v54, "[AddTasks HandleIntentStrategy] Failed to register correction, no corrections client");
            OUTLINED_FUNCTION_38();
          }
        }
      }
    }
  }

  v55 = sub_2683CF7C8();
  v56 = sub_2683CFE98();
  if (OUTLINED_FUNCTION_43(v56))
  {
    *OUTLINED_FUNCTION_21_5() = 0;
    OUTLINED_FUNCTION_11_17(&dword_2680EB000, v57, v58, "[AddTasks HandleIntentStrategy] Using modernized snippet");
    OUTLINED_FUNCTION_36();
  }

  v59 = *(v0 + 432);

  OUTLINED_FUNCTION_8_14(dword_2683DD858);
  v67 = v60;
  v61 = swift_task_alloc();
  *(v0 + 664) = v61;
  *v61 = v0;
  v61[1] = sub_26820D9E8;
  v62 = *(v0 + 424);

  return v67(v62);
}

uint64_t sub_26820D9E8()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_42();
  v2 = *(v1 + 664);
  v3 = *v0;
  OUTLINED_FUNCTION_1_0();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_48();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_26820DACC()
{
  OUTLINED_FUNCTION_7();
  v1 = v0[80];
  v2 = v0[53];
  v3 = sub_2683CC818();
  v0[84] = v3;
  v4 = sub_2683CC828();
  v0[85] = v4;
  v5 = sub_2683CC848();
  v6 = sub_268210364(v5, &selRef_taskTitles, &qword_28024CDB8, 0x277CD4188);
  if (v6)
  {
    v7 = sub_268229348(v6);

    v8 = v7 > 1;
  }

  else
  {
    v8 = 0;
  }

  v9 = swift_task_alloc();
  v0[86] = v9;
  *v9 = v0;
  v9[1] = sub_26820DBE0;
  v10 = v0[54];

  return sub_26820F2E0(v3, v4, v8);
}

uint64_t sub_26820DBE0()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_42();
  v3 = v2;
  OUTLINED_FUNCTION_2_0();
  *v4 = v3;
  v6 = *(v5 + 688);
  *v4 = *v1;
  v3[87] = v7;
  v3[88] = v0;

  if (!v0)
  {
    v8 = v3[85];
    v9 = v3[84];
  }

  OUTLINED_FUNCTION_24();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

void sub_26820DCF4()
{
  v1 = *(v0 + 640);
  v2 = *(v0 + 424);
  v3 = sub_2683CC818();
  v4 = sub_268210364(v3, &selRef_addedTasks, &qword_280253310, 0x277CD4220);
  if (v4)
  {
    v5 = v4;
    if (sub_2683ABE58(v4))
    {
      sub_2683ABE60(0, (v5 & 0xC000000000000001) == 0, v5);
      if ((v5 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x26D616C90](0, v5);
      }

      else
      {
        v6 = *(v5 + 32);
      }

      v7 = v6;

      v8 = v7;
      sub_2681A4078();

LABEL_8:
      v9 = *(v0 + 704);
      v10 = *(*(v0 + 432) + 256);
      sub_26820F964(*(v0 + 424), *(v0 + 632));
      if (v9)
      {
        v11 = *(v0 + 696);
        sub_2681433DC(v0 + 16, &qword_28024E7B8, &unk_2683D80E0);

        v12 = *(v0 + 656);
        v13 = *(v0 + 632);
        v14 = *(v0 + 624);
        v15 = *(v0 + 616);
        v16 = *(v0 + 608);
        v17 = *(v0 + 600);
        v18 = *(v0 + 592);
        v19 = *(v0 + 584);
        v20 = *(v0 + 576);
        v138 = *(v0 + 552);
        v140 = *(v0 + 544);
        v142 = *(v0 + 536);
        v144 = *(v0 + 528);
        v146 = *(v0 + 520);
        v148 = *(v0 + 496);
        v150 = *(v0 + 472);
        v152 = *(v0 + 464);
        v154 = *(v0 + 456);
        v155 = *(v0 + 448);

        OUTLINED_FUNCTION_40();
        OUTLINED_FUNCTION_72_0();

        __asm { BRAA            X1, X16 }
      }

      v23 = *(v0 + 640);
      v24 = *(v0 + 624);
      v25 = *(v0 + 552);
      v26 = *(v0 + 440);
      v27 = *(v0 + 424);
      v28 = 1;
      __swift_storeEnumTagSinglePayload(*(v0 + 632), 0, 1, v26);
      v29 = OUTLINED_FUNCTION_33_1();
      __swift_storeEnumTagSinglePayload(v29, v30, 1, v26);
      sub_2682EBD0C(v27);
      v31 = sub_2683CC528();
      __swift_storeEnumTagSinglePayload(v25, 0, 1, v31);
      v32 = sub_2683CC818();
      v33 = [v32 warnings];

      if (!v33)
      {
        v34 = *(v0 + 432);
        v35 = v34[10];
        __swift_project_boxed_opaque_existential_1(v34 + 6, v34[9]);
        OUTLINED_FUNCTION_13_19();
        v28 = sub_2683CC0B8();
      }

      v36 = *(v0 + 696);
      v37 = *(v0 + 544);
      v38 = *(v0 + 536);
      v153 = v28 & 1;
      v39 = *(v0 + 528);
      v40 = sub_2683CED08();
      __swift_storeEnumTagSinglePayload(v37, 1, 1, v40);
      sub_2683CC1D8();
      v41 = OUTLINED_FUNCTION_33_1();
      __swift_storeEnumTagSinglePayload(v41, v42, 1, v43);
      sub_2683CC108();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024EAB0, &unk_2683D2C10);
      v44 = swift_allocObject();
      *(v0 + 712) = v44;
      *(v44 + 16) = xmmword_2683D2250;
      *(v44 + 32) = v36;
      v45 = v36;
      if (sub_2683ABE58(v44))
      {
        sub_2683ABE60(0, (v44 & 0xC000000000000001) == 0, v44);
        if ((v44 & 0xC000000000000001) != 0)
        {
          v46 = MEMORY[0x26D616C90](0, v44);
        }

        else
        {
          v46 = *(v44 + 32);
        }

        v47 = v46;
        v48 = [v46 catId];

        v145 = sub_2683CFA78();
        v151 = v49;
      }

      else
      {
        v145 = 0;
        v151 = 0;
      }

      v50 = *(v0 + 632);
      v143 = v50;
      v51 = *(v0 + 616);
      v52 = *(v0 + 608);
      v53 = *(v0 + 568);
      v54 = *(v0 + 560);
      v136 = *(v0 + 552);
      v137 = *(v0 + 544);
      v55 = *(v0 + 520);
      v56 = *(v0 + 512);
      v134 = *(v0 + 504);
      v135 = *(v0 + 528);
      v139 = *(v0 + 536);
      v141 = *(v0 + 496);
      v147 = *(v0 + 440);
      v149 = *(v0 + 600);
      sub_2681340E8(*(v0 + 624), v51, &qword_28024E770, &qword_2683D80D0);
      sub_2681340E8(v50, v52, &qword_28024E770, &qword_2683D80D0);
      v57 = *(v54 + 80);
      v58 = (v57 + 24) & ~v57;
      v59 = (v53 + v57 + v58) & ~v57;
      v60 = swift_allocObject();
      *(v0 + 720) = v60;
      *(v60 + 16) = v10;
      sub_2681430AC(v51, v60 + v58);
      sub_2681430AC(v52, v60 + v59);
      (*(v56 + 16))(v55, v135, v134);
      v61 = swift_task_alloc();
      *(v61 + 16) = 0;
      *(v61 + 24) = 0;
      *(v61 + 32) = 0;
      *(v61 + 40) = v145;
      *(v61 + 48) = v151;
      *(v61 + 56) = v136;
      *(v61 + 64) = 2;
      *(v61 + 65) = v153;
      *(v61 + 72) = sub_26814311C;
      *(v61 + 80) = v60;
      *(v61 + 88) = 0;
      *(v61 + 96) = v137;
      *(v61 + 104) = 2;
      *(v61 + 112) = v139;

      sub_2683CC8E8();

      sub_2681340E8(v143, v149, &qword_28024E770, &qword_2683D80D0);
      if (__swift_getEnumTagSinglePayload(v149, 1, v147) == 1)
      {
        v62 = (v0 + 600);
      }

      else
      {
        v63 = *(v0 + 624);
        v64 = *(v0 + 600);
        v65 = *(v0 + 592);
        v66 = *(v0 + 472);
        v67 = *(v0 + 440);
        OUTLINED_FUNCTION_3_25();
        sub_268210574(v68, v69, v70);
        v71 = OUTLINED_FUNCTION_41_0();
        sub_2681340E8(v71, v72, v73, v74);
        if (__swift_getEnumTagSinglePayload(v65, 1, v67) != 1)
        {
          v103 = *(v0 + 592);
          v104 = *(v0 + 464);
          v105 = *(v0 + 472);
          v106 = *(v0 + 440);
          OUTLINED_FUNCTION_3_25();
          sub_268210574(v107, v104, v108);
          *(v0 + 160) = v106;
          OUTLINED_FUNCTION_8_21();
          v111 = sub_26821052C(v109, v110);
          *(v0 + 168) = v111;
          boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v0 + 136));
          sub_2681432C8(v105, boxed_opaque_existential_0);
          *(v0 + 200) = v106;
          *(v0 + 208) = v111;
          v113 = __swift_allocate_boxed_opaque_existential_0((v0 + 176));
          sub_2681432C8(v104, v113);
          OUTLINED_FUNCTION_8_14(MEMORY[0x277D5BD30]);
          swift_task_alloc();
          OUTLINED_FUNCTION_10_2();
          *(v0 + 728) = v114;
          *v114 = v115;
          v114[1] = sub_26820E6C0;
          v116 = *(v0 + 496);
          v117 = *(v0 + 416);
          OUTLINED_FUNCTION_72_0();

          __asm { BR              X5 }
        }

        v62 = (v0 + 592);
        sub_26814332C(*(v0 + 472));
      }

      v75 = *v62;
      v76 = *(v0 + 632);
      v77 = *(v0 + 584);
      v78 = *(v0 + 440);
      sub_2681433DC(v75, &qword_28024E770, &qword_2683D80D0);
      v79 = OUTLINED_FUNCTION_41_0();
      sub_2681340E8(v79, v80, &qword_28024E770, &qword_2683D80D0);
      EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v77, 1, v78);
      v82 = *(v0 + 440);
      if (EnumTagSinglePayload == 1)
      {
        v83 = *(v0 + 624);
        v84 = *(v0 + 576);
        sub_2681433DC(*(v0 + 584), &qword_28024E770, &qword_2683D80D0);
        sub_2681340E8(v83, v84, &qword_28024E770, &qword_2683D80D0);
        v85 = OUTLINED_FUNCTION_33_1();
        if (__swift_getEnumTagSinglePayload(v85, v86, v82) == 1)
        {
          sub_2681433DC(*(v0 + 576), &qword_28024E770, &qword_2683D80D0);
          OUTLINED_FUNCTION_8_14(MEMORY[0x277D5BD50]);
          swift_task_alloc();
          OUTLINED_FUNCTION_10_2();
          *(v0 + 752) = v87;
          *v87 = v88;
          v87[1] = sub_26820EEC8;
          v89 = *(v0 + 496);
          v90 = *(v0 + 416);
          OUTLINED_FUNCTION_72_0();

          __asm { BR              X3 }
        }

        v120 = *(v0 + 576);
        v121 = *(v0 + 440);
        v122 = *(v0 + 448);
        OUTLINED_FUNCTION_3_25();
        sub_268210574(v123, v122, v124);
        *(v0 + 80) = v121;
        OUTLINED_FUNCTION_8_21();
        *(v0 + 88) = sub_26821052C(v125, v126);
        v127 = __swift_allocate_boxed_opaque_existential_0((v0 + 56));
        sub_2681432C8(v122, v127);
        OUTLINED_FUNCTION_8_14(MEMORY[0x277D5BD40]);
        swift_task_alloc();
        OUTLINED_FUNCTION_10_2();
        *(v0 + 744) = v128;
        *v128 = v129;
        v128[1] = sub_26820EC20;
        v130 = *(v0 + 496);
        v131 = *(v0 + 416);
      }

      else
      {
        v93 = *(v0 + 456);
        OUTLINED_FUNCTION_3_25();
        sub_268210574(v94, v93, v95);
        *(v0 + 120) = v82;
        OUTLINED_FUNCTION_8_21();
        *(v0 + 128) = sub_26821052C(v96, v97);
        v98 = __swift_allocate_boxed_opaque_existential_0((v0 + 96));
        sub_2681432C8(v93, v98);
        OUTLINED_FUNCTION_8_14(MEMORY[0x277D5BD38]);
        swift_task_alloc();
        OUTLINED_FUNCTION_10_2();
        *(v0 + 736) = v99;
        *v99 = v100;
        v99[1] = sub_26820E978;
        v101 = *(v0 + 496);
        v102 = *(v0 + 416);
      }

      OUTLINED_FUNCTION_72_0();

      __asm { BR              X4 }
    }
  }

  *(v0 + 48) = 0;
  *(v0 + 16) = 0u;
  *(v0 + 32) = 0u;
  goto LABEL_8;
}

uint64_t sub_26820E6C0()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_42();
  v2 = v1;
  OUTLINED_FUNCTION_2_0();
  *v3 = v2;
  v5 = *(v4 + 728);
  v6 = *(v4 + 712);
  v7 = *v0;
  OUTLINED_FUNCTION_1_0();
  *v8 = v7;

  __swift_destroy_boxed_opaque_existential_0((v2 + 176));
  __swift_destroy_boxed_opaque_existential_0((v2 + 136));
  v9 = OUTLINED_FUNCTION_48();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_26820E7C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_82_0();
  v27 = v24[90];
  v28 = v24[58];
  v29 = v24[59];

  sub_26814332C(v28);
  sub_26814332C(v29);
  v30 = OUTLINED_FUNCTION_0_39();
  v31(v30);
  v32 = OUTLINED_FUNCTION_20_16();
  v33(v32);
  OUTLINED_FUNCTION_25_13();
  OUTLINED_FUNCTION_30_8();
  sub_2681433DC(v25, &unk_28024E760, &unk_2683D2BF0);
  sub_2681433DC(v26, &qword_28024D588, &unk_2683D8DB0);
  sub_2681433DC(v29, &qword_28024D400, &qword_2683D2460);

  sub_2681433DC((v24 + 2), &qword_28024E7B8, &unk_2683D80E0);

  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_24_3();

  return v35(v34, v35, v36, v37, v38, v39, v40, v41, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24);
}

uint64_t sub_26820E978()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_42();
  v2 = v1;
  OUTLINED_FUNCTION_2_0();
  *v3 = v2;
  v5 = *(v4 + 736);
  v6 = *(v4 + 712);
  v7 = *v0;
  OUTLINED_FUNCTION_1_0();
  *v8 = v7;

  __swift_destroy_boxed_opaque_existential_0((v2 + 96));
  v9 = OUTLINED_FUNCTION_48();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_26820EA78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_82_0();
  v27 = *(v24 + 720);
  v28 = *(v24 + 456);

  sub_26814332C(v28);
  v29 = OUTLINED_FUNCTION_0_39();
  v30(v29);
  v31 = OUTLINED_FUNCTION_20_16();
  v32(v31);
  OUTLINED_FUNCTION_25_13();
  OUTLINED_FUNCTION_30_8();
  sub_2681433DC(v25, &unk_28024E760, &unk_2683D2BF0);
  sub_2681433DC(v26, &qword_28024D588, &unk_2683D8DB0);
  sub_2681433DC(v28, &qword_28024D400, &qword_2683D2460);

  sub_2681433DC(v24 + 16, &qword_28024E7B8, &unk_2683D80E0);

  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_24_3();

  return v34(v33, v34, v35, v36, v37, v38, v39, v40, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24);
}

uint64_t sub_26820EC20()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_42();
  v2 = v1;
  OUTLINED_FUNCTION_2_0();
  *v3 = v2;
  v5 = *(v4 + 744);
  v6 = *(v4 + 712);
  v7 = *v0;
  OUTLINED_FUNCTION_1_0();
  *v8 = v7;

  __swift_destroy_boxed_opaque_existential_0((v2 + 56));
  v9 = OUTLINED_FUNCTION_48();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_26820ED20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_82_0();
  v27 = *(v24 + 720);
  v28 = *(v24 + 448);

  sub_26814332C(v28);
  v29 = OUTLINED_FUNCTION_0_39();
  v30(v29);
  v31 = OUTLINED_FUNCTION_20_16();
  v32(v31);
  OUTLINED_FUNCTION_25_13();
  OUTLINED_FUNCTION_30_8();
  sub_2681433DC(v25, &unk_28024E760, &unk_2683D2BF0);
  sub_2681433DC(v26, &qword_28024D588, &unk_2683D8DB0);
  sub_2681433DC(v28, &qword_28024D400, &qword_2683D2460);

  sub_2681433DC(v24 + 16, &qword_28024E7B8, &unk_2683D80E0);

  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_24_3();

  return v34(v33, v34, v35, v36, v37, v38, v39, v40, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24);
}

uint64_t sub_26820EEC8()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_42();
  v2 = *(v1 + 752);
  v3 = *(v1 + 712);
  v4 = *v0;
  OUTLINED_FUNCTION_1_0();
  *v5 = v4;

  v6 = OUTLINED_FUNCTION_48();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_26820EFC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_82_0();
  v28 = *(v25 + 720);

  v29 = OUTLINED_FUNCTION_0_39();
  v30(v29);
  v31 = OUTLINED_FUNCTION_20_16();
  v32(v31);
  OUTLINED_FUNCTION_25_13();
  OUTLINED_FUNCTION_30_8();
  sub_2681433DC(v26, &unk_28024E760, &unk_2683D2BF0);
  sub_2681433DC(v27, &qword_28024D588, &unk_2683D8DB0);
  sub_2681433DC(v24, &qword_28024D400, &qword_2683D2460);

  sub_2681433DC(v25 + 16, &qword_28024E7B8, &unk_2683D80E0);

  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_24_3();

  return v34(v33, v34, v35, v36, v37, v38, v39, v40, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24);
}

uint64_t sub_26820F164()
{
  v1 = v0[85];
  v2 = v0[84];

  v24 = v0[88];
  v3 = v0[82];
  v4 = v0[79];
  v5 = v0[78];
  v6 = v0[77];
  v7 = v0[76];
  v8 = v0[75];
  v9 = v0[74];
  v10 = v0[73];
  v11 = v0[72];
  v12 = v0[69];
  v15 = v0[68];
  v16 = v0[67];
  v17 = v0[66];
  v18 = v0[65];
  v19 = v0[62];
  v20 = v0[59];
  v21 = v0[58];
  v22 = v0[57];
  v23 = v0[56];

  OUTLINED_FUNCTION_40();

  return v13();
}

uint64_t sub_26820F2E0(uint64_t a1, uint64_t a2, char a3)
{
  *(v4 + 72) = a2;
  *(v4 + 80) = v3;
  *(v4 + 152) = a3;
  *(v4 + 64) = a1;
  return OUTLINED_FUNCTION_0_1();
}

uint64_t sub_26820F2FC()
{
  v1 = [*(v0 + 64) modifiedTaskList];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 title];

    if (v3)
    {
      type metadata accessor for NotebookReminderListConcept(0);
      v3 = sub_2681A2D2C(v3);
    }
  }

  else
  {
    v3 = 0;
  }

  *(v0 + 88) = v3;
  v4 = sub_2682E5D4C(*(v0 + 64));
  if (v4)
  {
    v5 = v4;
    v6 = *(v0 + 80);
    v7 = swift_task_alloc();
    *(v7 + 16) = v6;
    v8 = 0;
    sub_268152FB0(sub_2682105D4, v7, v5);
    OUTLINED_FUNCTION_97_0();
  }

  else
  {
    v8 = MEMORY[0x277D84F90];
  }

  *(v0 + 96) = v8;
  v9 = sub_2683ABE58(v8);
  v10 = *(v0 + 72);
  v11 = *(v0 + 80);
  if (v9)
  {
    v12 = *(v0 + 64);
    [v12 warnings];
    [v12 warnings];
    [v12 warnings];
    v13 = *(v11 + 40);
    sub_2683CF138();

    *(v0 + 104) = sub_26818F730(v14);
    v15 = swift_task_alloc();
    *(v0 + 112) = v15;
    *v15 = v0;
    v15[1] = sub_26820F59C;
    OUTLINED_FUNCTION_10_5();

    return sub_2683249F8(v16, v17, v18, v19, v20, v21);
  }

  else
  {

    v24 = *(v11 + 40);
    sub_2683CF138();
    OUTLINED_FUNCTION_97_0();

    *(v0 + 128) = sub_26818F730(v25);
    v26 = swift_task_alloc();
    *(v0 + 136) = v26;
    *v26 = v0;
    v26[1] = sub_26820F73C;
    v27 = *(v0 + 152);
    OUTLINED_FUNCTION_10_5();

    return sub_26832507C(v28, v29);
  }
}

uint64_t sub_26820F59C()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_2_13();
  *v3 = v2;
  v2[2] = v1;
  v2[3] = v4;
  v2[4] = v0;
  v6 = v5[14];
  v7 = v5[13];
  v8 = v5[12];
  v9 = *v1;
  OUTLINED_FUNCTION_1_0();
  *v10 = v9;
  *(v11 + 120) = v0;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x2822009F8](v12, v13, v14);
}

uint64_t sub_26820F6DC()
{
  OUTLINED_FUNCTION_14();
  v1 = *(v0 + 24);
  v2 = *(v0 + 88);

  v3 = OUTLINED_FUNCTION_1_16();

  return v4(v3);
}

uint64_t sub_26820F73C()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_42();
  v3 = v2;
  OUTLINED_FUNCTION_2_0();
  *v4 = v3;
  v3[5] = v1;
  v3[6] = v5;
  v3[7] = v0;
  v7 = *(v6 + 136);
  v8 = *v1;
  OUTLINED_FUNCTION_1_0();
  *v9 = v8;
  v3[18] = v0;

  if (!v0)
  {
    v10 = v3[16];
  }

  OUTLINED_FUNCTION_24();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_26820F844()
{
  OUTLINED_FUNCTION_14();
  v1 = *(v0 + 48);
  v2 = *(v0 + 88);

  v3 = OUTLINED_FUNCTION_1_16();

  return v4(v3);
}

uint64_t sub_26820F8A4()
{
  OUTLINED_FUNCTION_14();
  v1 = v0[16];

  v2 = v0[18];
  v3 = v0[11];

  OUTLINED_FUNCTION_40();

  return v4();
}

uint64_t sub_26820F908()
{
  OUTLINED_FUNCTION_14();
  v1 = *(v0 + 120);
  v2 = *(v0 + 88);

  OUTLINED_FUNCTION_40();

  return v3();
}

void sub_26820F964(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = v2;
  v7 = type metadata accessor for Snippet.Reminder(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v11 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024F980, &qword_2683DD850);
  v37 = a1;
  v13 = sub_2683CC818();
  v14 = sub_268210364(v13, &selRef_addedTasks, &qword_280253310, 0x277CD4220);
  v15 = MEMORY[0x277D84F90];
  if (v14)
  {
    v16 = v14;
  }

  else
  {
    v16 = MEMORY[0x277D84F90];
  }

  v17 = sub_268229348(v16);
  v38 = a2;
  v35 = v4;
  v36 = v12;
  if (v17)
  {
    v34 = v16;
    __dst[0] = v15;
    v42 = v17;
    sub_268390728();
    if (v42 < 0)
    {
      __break(1u);
      return;
    }

    v33 = v3;
    v18 = 0;
    v19 = __dst[0];
    v20 = v34;
    v21 = v34 & 0xC000000000000001;
    do
    {
      if (v21)
      {
        v22 = MEMORY[0x26D616C90](v18, v20);
      }

      else
      {
        v22 = *(v20 + 8 * v18 + 32);
      }

      sub_26834A288(v22, v11);
      __dst[0] = v19;
      v23 = *(v19 + 16);
      if (v23 >= *(v19 + 24) >> 1)
      {
        sub_268390728();
        v20 = v34;
        v19 = __dst[0];
      }

      ++v18;
      *(v19 + 16) = v23 + 1;
      sub_268210574(v11, v19 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v23, type metadata accessor for Snippet.Reminder);
    }

    while (v42 != v18);
  }

  else
  {

    v19 = MEMORY[0x277D84F90];
  }

  v24 = v37;
  v25 = sub_2683CC818();
  v26 = [v25 modifiedTaskList];

  sub_26834AB1C(v26, v40);
  sub_2683CC828();
  LOBYTE(v26) = sub_2681E73A0();

  if (v26)
  {
    v27 = v35;
    __swift_project_boxed_opaque_existential_1((v35 + 216), *(v35 + 240));
    sub_268154220();
    v29 = v28;

    __swift_project_boxed_opaque_existential_1((v27 + 216), *(v27 + 240));
    sub_268155334();
    v31 = v30;
    memcpy(v39, v40, sizeof(v39));
    sub_26814FB60(v40, __dst);
    sub_268158448(v31);

    sub_26814F740(v40);
    v32 = v38;
    *v38 = v29;
    memcpy(v32 + 1, v39, 0x61uLL);
    type metadata accessor for Snippet();
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    memcpy(__dst, v40, 0x61uLL);
    sub_26820FD28(v19, __dst, v24, &qword_28024F980, &qword_2683DD850, sub_268363B50, v38);

    sub_26814F740(v40);
  }
}

uint64_t sub_26820FD28@<X0>(uint64_t a1@<X0>, const void *a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, uint64_t *a5@<X4>, void (*a6)(char *)@<X5>, uint64_t a7@<X8>)
{
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v15 = v19 - v14;
  (*(v16 + 16))(v19 - v14, a3);
  v17 = *(type metadata accessor for Snippet.AddTasks3p() + 24);
  sub_2681340E8(a2, v19, &qword_28024D5C0, &unk_2683D2C80);
  a6(v15);
  *(a7 + 104) = 0;
  *(a7 + 88) = 0u;
  *(a7 + 72) = 0u;
  *(a7 + 56) = 0u;
  *(a7 + 40) = 0u;
  *(a7 + 24) = 0u;
  *(a7 + 8) = 0u;
  *a7 = a1;
  memset(v19, 0, sizeof(v19));
  v20 = 0;

  sub_2681433DC(v19, &qword_28024D5C0, &unk_2683D2C80);
  memcpy((a7 + 8), a2, 0x61uLL);
  type metadata accessor for Snippet();
  return swift_storeEnumTagMultiPayload();
}

void *sub_26820FEC0@<X0>(void **a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v6 = sub_2683CB668();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *a1;
  type metadata accessor for NotebookReminderConcept(0);
  v11 = a2[10];
  __swift_project_boxed_opaque_existential_1(a2 + 6, a2[9]);
  v12 = v10;
  sub_2683CC088();
  result = sub_268346118(v12, v9);
  *a3 = result;
  return result;
}

uint64_t sub_26820FFA0(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_0_1();
}

uint64_t sub_26820FFB8()
{
  OUTLINED_FUNCTION_14();
  v1 = v0[3];
  v2 = v0[2];
  __swift_project_boxed_opaque_existential_1((v0[4] + 176), *(v0[4] + 200));
  v3 = sub_2682B28A0(v2, v1);
  v4 = v0[1];

  return v4(v3);
}

uint64_t sub_268210038(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(MEMORY[0x277D5B3C8] + 4);
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_2681342AC;

  return MEMORY[0x2821B9C68](a1, a2, a3, a4);
}

uint64_t sub_2682100FC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2681342AC;

  return sub_26820D188();
}

uint64_t sub_2682101A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(MEMORY[0x277D5B3A0] + 4);
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_268133EC8;

  return MEMORY[0x2821B9C38](a1, a2, a3, a4);
}

uint64_t sub_268210268(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_26818C8B4;

  return sub_26820FFA0(a1, a2);
}

unint64_t sub_268210310()
{
  result = qword_28024F978;
  if (!qword_28024F978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024F978);
  }

  return result;
}

uint64_t sub_268210364(void *a1, SEL *a2, unint64_t *a3, uint64_t *a4)
{
  v7 = [a1 *a2];

  if (!v7)
  {
    return 0;
  }

  sub_268129504(0, a3, a4);
  v8 = sub_2683CFCA8();

  return v8;
}

uint64_t sub_2682103E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v13 = &type metadata for NotebookFlowCreator;
  v14 = &off_287900FD8;
  v6 = a3 + OBJC_IVAR____TtC12SiriNotebook22CorrectingAddTasksFlow_correctionsExitValue;
  strcpy((a3 + OBJC_IVAR____TtC12SiriNotebook22CorrectingAddTasksFlow_correctionsExitValue), "Initial value");
  *(v6 + 14) = -4864;
  v7 = *MEMORY[0x277D5BF08];
  v8 = sub_2683CC768();
  (*(*(v8 - 8) + 104))(v6, v7, v8);
  *(a3 + OBJC_IVAR____TtC12SiriNotebook22CorrectingAddTasksFlow_state) = 0;
  v9 = a3 + OBJC_IVAR____TtC12SiriNotebook22CorrectingAddTasksFlow_steeringTask;
  *(v9 + 48) = 0;
  *(v9 + 16) = 0u;
  *(v9 + 32) = 0u;
  *v9 = 0u;
  *(v9 + 56) = -1;
  v10 = (a3 + OBJC_IVAR____TtC12SiriNotebook22CorrectingAddTasksFlow_taskParser);
  *v10 = sub_268372484;
  v10[1] = 0;
  *(a3 + 16) = a1;
  *(a3 + 24) = a2;
  sub_268128148(&v12, a3 + OBJC_IVAR____TtC12SiriNotebook22CorrectingAddTasksFlow_notebookFlowCreator);
  return a3;
}

uint64_t sub_26821052C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_268210574(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  OUTLINED_FUNCTION_1(v5);
  (*(v6 + 32))(a2, a1);
  return a2;
}

uint64_t OUTLINED_FUNCTION_0_39()
{
  v15 = v0[87];
  v16 = v0[82];
  v2 = v0[79];
  v3 = v0[78];
  v17 = v0[77];
  v18 = v0[76];
  v19 = v0[75];
  v20 = v0[74];
  v21 = v0[73];
  v22 = v0[72];
  v4 = v0[69];
  v5 = v0[68];
  v6 = v0[67];
  v7 = v0[66];
  v9 = v0[63];
  v8 = v0[64];
  v10 = v0[61];
  v11 = v0[62];
  v12 = v0[60];
  v23 = v0[65];
  v24 = v0[59];
  v25 = v0[58];
  v26 = v0[57];
  *(v1 - 80) = v0[56];
  v13 = *(v10 + 8);
  return v11;
}

uint64_t OUTLINED_FUNCTION_2_28(uint64_t a1)
{
  *(a1 + 8) = v1;
  v4 = v3[20];
  v5 = v3[21];
  v6 = v3[19];
  return v2;
}

uint64_t OUTLINED_FUNCTION_22_11(uint64_t a1)
{
  *(a1 + 8) = v1;
  v3 = *(v2 + 112);
  return *(v2 + 104);
}

uint64_t OUTLINED_FUNCTION_25_13()
{

  return sub_2681433DC(v2, v1, v0);
}

uint64_t OUTLINED_FUNCTION_27_9(uint64_t a1)
{
  *(a1 + 8) = v1;
  v3 = *(v2 + 24);
  return *(v2 + 16);
}

uint64_t OUTLINED_FUNCTION_30_8()
{

  return sub_2681433DC(v2, v1, v0);
}

uint64_t OUTLINED_FUNCTION_38_8(uint64_t a1)
{
  *(a1 + 8) = v1;
  v3 = *(v2 + 96);
  return v2 + 16;
}

uint64_t OUTLINED_FUNCTION_50_3()
{
  result = *(v0 + 176);
  v2 = *(v0 + 144);
  return result;
}

void OUTLINED_FUNCTION_54_2(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v6, a4, v4, 2u);
}

id sub_2682107B4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = [a1 title];
  v9 = [v8 spokenPhrase];

  v10 = sub_2683CFA78();
  v48 = v11;
  v49 = v10;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024F318, &unk_2683DB7F0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2683D1EC0;
  *(inited + 32) = a3;
  *(inited + 40) = a4;
  v13 = MEMORY[0x277D84F90];
  v14 = *(inited + 40);
  if (v14)
  {
    v15 = *(inited + 32);
    v16 = *(inited + 40);

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_2682E4728(0, *(v13 + 16) + 1, 1, v13);
      v13 = v20;
    }

    v18 = *(v13 + 16);
    v17 = *(v13 + 24);
    if (v18 >= v17 >> 1)
    {
      sub_2682E4728(v17 > 1, v18 + 1, 1, v13);
      v13 = v21;
    }

    *(v13 + 16) = v18 + 1;
    v19 = v13 + 16 * v18;
    *(v19 + 32) = v15;
    *(v19 + 40) = v14;
  }

  swift_setDeallocating();
  sub_2681F55E4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024EAB0, &unk_2683D2C10);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_2683D2250;
  v23 = a1;

  v24 = sub_2681D2F90(v23, a2);
  v26 = v25;
  sub_268129504(0, &qword_28024D340, 0x277CD4058);

  v27 = OUTLINED_FUNCTION_0_40();
  v35 = sub_268175270(v27, v28, v29, v30, v31, v32, v33, v34, v44, v45, v46, v47, v24, v26);
  v36 = [v35 _metadata];
  if (v36)
  {
    v37 = v36;
    [v36 setBackgroundLaunch_];
  }

  v38 = [v35 _metadata];

  if (v38)
  {
    sub_2683CF258();
    if (v39)
    {
      v40 = sub_2683CFA68();
    }

    else
    {
      v40 = 0;
    }

    [v38 setLaunchId_];
  }

  sub_268129504(0, &unk_28024F9B0, 0x277D473F0);
  v41 = sub_2683CFF28();

  *(v22 + 32) = v41;
  v42 = sub_268210AC0(v49, v48, v13, v22);

  return v42;
}

id sub_268210AC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v9 = objc_allocWithZone(MEMORY[0x277D47A40]);
  v10 = v8;
  v11 = [v9 init];
  sub_2681C3150(a1, a2, v11);
  [v10 setTitle_];

  v12 = *(a3 + 16);
  if (v12)
  {
    v21 = MEMORY[0x277D84F90];
    sub_2683D0228();
    v13 = (a3 + 40);
    do
    {
      v14 = *(v13 - 1);
      v15 = *v13;
      v16 = objc_allocWithZone(MEMORY[0x277D47A40]);

      sub_2681C3150(v14, v15, [v16 init]);
      sub_2683D01F8();
      v17 = *(v21 + 16);
      sub_2683D0238();
      sub_2683D0248();
      sub_2683D0208();
      v13 += 2;
      --v12;
    }

    while (v12);

    v18 = v21;
  }

  else
  {

    v18 = MEMORY[0x277D84F90];
  }

  sub_268210F74(v18, v10);

  if (sub_2683ABE58(a4))
  {
    v19 = [objc_allocWithZone(MEMORY[0x277D47770]) init];
    sub_268210FF8(a4, v19);
    [v10 setAction_];
  }

  else
  {
  }

  return v10;
}

id sub_268210CA0(void *a1, uint64_t a2)
{
  v4 = [a1 title];
  v5 = [v4 spokenPhrase];

  v6 = sub_2683CFA78();
  v8 = v7;

  v9 = HIBYTE(v8) & 0xF;
  if ((v8 & 0x2000000000000000) == 0)
  {
    v9 = v6 & 0xFFFFFFFFFFFFLL;
  }

  if (!v9)
  {

    sub_2683B9E1C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280253390, &qword_2683E2550);
    sub_2681D8BC0();
    sub_2683CFA38();

    v10 = sub_2681E1D08(100);
    v6 = MEMORY[0x26D616610](v10);
    v8 = v11;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024EAB0, &unk_2683D2C10);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_2683D2250;
  v13 = a1;

  v14 = sub_2681D2F90(v13, a2);
  v16 = v15;
  sub_268129504(0, &qword_28024D340, 0x277CD4058);

  v17 = OUTLINED_FUNCTION_0_40();
  v25 = sub_268175270(v17, v18, v19, v20, v21, v22, v23, v24, v34, v35, v36, v37, v14, v16);
  v26 = [v25 _metadata];
  if (v26)
  {
    v27 = v26;
    [v26 setBackgroundLaunch_];
  }

  v28 = [v25 _metadata];

  if (v28)
  {
    sub_2683CF258();
    if (v29)
    {
      v30 = sub_2683CFA68();
    }

    else
    {
      v30 = 0;
    }

    [v28 setLaunchId_];
  }

  sub_268129504(0, &unk_28024F9B0, 0x277D473F0);
  v31 = sub_2683CFF28();

  *(v12 + 32) = v31;
  v32 = sub_268210AC0(v6, v8, MEMORY[0x277D84F90], v12);

  return v32;
}

void sub_268210F74(uint64_t a1, void *a2)
{
  sub_268129504(0, &qword_28024F9D0, 0x277D47A40);
  v3 = sub_2683CFC98();

  [a2 setDecoratedRows_];
}

void sub_268210FF8(uint64_t a1, void *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024E7F8, &unk_2683F0F30);
  v3 = sub_2683CFC98();

  [a2 setCommands_];
}

uint64_t type metadata accessor for AddTasksNLv3IntentWrapper()
{
  result = qword_28024F9D8;
  if (!qword_28024F9D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_268211118()
{
  result = type metadata accessor for NotebookNLv3Intent(319);
  if (v1 <= 0x3F)
  {
    result = sub_26812EB34(319, &qword_28024D380);
    if (v2 <= 0x3F)
    {
      result = sub_26812EB34(319, &qword_28024D388);
      if (v3 <= 0x3F)
      {
        result = sub_26812EB34(319, &qword_28024F9E8);
        if (v4 <= 0x3F)
        {
          result = sub_26812EB34(319, &qword_28024CDA0);
          if (v5 <= 0x3F)
          {
            result = sub_2683CB668();
            if (v6 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
              return 0;
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_26821123C()
{
  v0 = type metadata accessor for AppIntentNode(0);
  v1 = OUTLINED_FUNCTION_1(v0);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x28223BE20](v1);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v19 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024CE28, &qword_2683D1870);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9 - 8);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v19 - v14;
  sub_268356630();
  sub_26812958C(v15, v13);
  if (__swift_getEnumTagSinglePayload(v13, 1, v0) == 1)
  {
    sub_26812D9E0(v15, &qword_28024CE28, &qword_2683D1870);
    return 0;
  }

  else
  {
    sub_268213388(v13, v8);
    sub_2682133E4(v8, v6);
    sub_2683533F0();
    v16 = v17;
    sub_2683CD078();
    sub_2683CD058();
    sub_2681C18A0(&qword_28024CE30, type metadata accessor for AppIntentNode);
    sub_2683CD5C8();

    sub_268129770(v6, type metadata accessor for AppIntentNode);
    sub_268129770(v8, type metadata accessor for AppIntentNode);
    sub_26812D9E0(v15, &qword_28024CE28, &qword_2683D1870);
  }

  return v16;
}

uint64_t sub_2682114AC()
{
  OUTLINED_FUNCTION_14();
  *(v1 + 1720) = v0;
  *(v1 + 1712) = v2;
  *(v1 + 1898) = v3;
  v4 = type metadata accessor for AddTasksNLv3IntentWrapper();
  *(v1 + 1728) = v4;
  OUTLINED_FUNCTION_3_1(v4);
  *(v1 + 1736) = v5;
  *(v1 + 1744) = *(v6 + 64);
  *(v1 + 1752) = swift_task_alloc();
  *(v1 + 1760) = swift_task_alloc();
  v7 = type metadata accessor for NotebookNLv3Intent(0);
  *(v1 + 1768) = v7;
  OUTLINED_FUNCTION_3_1(v7);
  *(v1 + 1776) = v8;
  *(v1 + 1784) = *(v9 + 64);
  *(v1 + 1792) = swift_task_alloc();
  *(v1 + 1800) = swift_task_alloc();
  *(v1 + 1808) = swift_task_alloc();
  *(v1 + 1816) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2682115FC, 0, 0);
}

uint64_t sub_2682115FC()
{
  v46 = v0;
  if (*(v0 + 1898) == 1)
  {
    v1 = *(v0 + 1720);
    sub_2683B3C5C(*(v0 + 1816));
  }

  else
  {
    sub_2682133E4(*(v0 + 1720), *(v0 + 1816));
  }

  if (qword_28024C8D8 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 1816);
  v3 = *(v0 + 1808);
  v4 = sub_2683CF7E8();
  *(v0 + 1824) = v4;
  *(v0 + 1832) = __swift_project_value_buffer(v4, qword_28027C940);
  OUTLINED_FUNCTION_5_25();
  sub_2682133E4(v2, v3);
  v5 = sub_2683CF7C8();
  v6 = sub_2683CFE68();
  v7 = os_log_type_enabled(v5, v6);
  v8 = *(v0 + 1808);
  if (v7)
  {
    v9 = *(v0 + 1768);
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v45 = v11;
    *v10 = 136315138;
    OUTLINED_FUNCTION_0_29();
    sub_2681C18A0(v12, v13);
    v14 = sub_2683D0568();
    v16 = v15;
    OUTLINED_FUNCTION_0_41();
    sub_268129770(v8, v17);
    v18 = sub_2681610A0(v14, v16, &v45);

    *(v10 + 4) = v18;
    _os_log_impl(&dword_2680EB000, v5, v6, "[AddTasksNLv3IntentWrapper] attempting to parse %s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v11);
    OUTLINED_FUNCTION_38();
    OUTLINED_FUNCTION_38();
  }

  else
  {

    OUTLINED_FUNCTION_0_41();
    sub_268129770(v8, v19);
  }

  v44 = (v0 + 1336);
  v20 = *(v0 + 1816);
  v21 = *(v0 + 1800);
  v38 = *(v0 + 1784);
  v22 = *(v0 + 1776);
  v23 = *(v0 + 1760);
  v41 = *(v0 + 1792);
  v42 = *(v0 + 1752);
  v24 = *(v0 + 1744);
  v39 = v20;
  v25 = *(v0 + 1736);
  v43 = *(v0 + 1898);
  v40 = *(v0 + 1720);
  sub_2682133E4(v40, v23);
  OUTLINED_FUNCTION_5_25();
  sub_2682133E4(v20, v21);
  v26 = *(v25 + 80);
  v27 = (v26 + 16) & ~v26;
  v28 = *(v22 + 80);
  v29 = swift_allocObject();
  *(v0 + 1840) = v29;
  sub_268213388(v23, v29 + v27);
  sub_268213388(v21, v29 + ((v24 + v28 + v27) & ~v28));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024F9F0, &qword_2683DD930);
  swift_asyncLet_begin();
  sub_2682133E4(v39, v41);
  sub_2682133E4(v40, v42);
  v30 = (v28 + 16) & ~v28;
  v31 = swift_allocObject();
  *(v0 + 1848) = v31;
  sub_268213388(v41, v31 + v30);
  sub_268213388(v42, v31 + ((v38 + v26 + v30) & ~v26));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024F9F8, qword_2683FA040);
  swift_asyncLet_begin();
  v32 = v0 + 1336;
  if (v43 == 1)
  {
    *(v0 + 1368) = 0;
    *v44 = 0u;
    *(v0 + 1352) = 0u;
  }

  else
  {
    sub_26813CA00(*(v0 + 1720) + *(*(v0 + 1728) + 32), v44);
  }

  v33 = *(v0 + 1816);
  v34 = *(v0 + 1720);
  v35 = *(*(v0 + 1728) + 36);
  *(v0 + 1856) = sub_26836D148(v33, v32);
  sub_26812D9E0(v32, &qword_28024E2C8, &unk_2683D6950);
  *(v0 + 1864) = sub_26836D480(v33, v34 + v35);
  v36 = OUTLINED_FUNCTION_21_13();

  return MEMORY[0x282200930](v36);
}