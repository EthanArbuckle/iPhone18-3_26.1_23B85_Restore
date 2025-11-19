uint64_t sub_231D27548@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = sub_231D27588(8uLL, a1, a2);
  result = sub_231D2761C(v4, v5, v6, v7);
  *a3 = result;
  a3[1] = v9;
  return result;
}

unint64_t sub_231D27588(unint64_t result, uint64_t a2, uint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v5 = result;
    if (a2)
    {
      v6 = a3 - a2;
    }

    else
    {
      v6 = 0;
    }

    result = sub_231D27AD4(0, v6, a2, a3);
    if (!v5 || result >= v5)
    {
      result = sub_231D27AA8(0, v5, a2, a3);
      v6 = result;
    }

    if ((v6 & 0x8000000000000000) == 0)
    {
      return 0;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_231D2761C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74B88, &qword_231E1C380);
  v15[3] = v8;
  v15[4] = sub_231D278D8();
  v9 = swift_allocObject();
  v15[0] = v9;
  v9[2] = a1;
  v9[3] = a2;
  v9[4] = a3;
  v9[5] = a4;
  v10 = __swift_project_boxed_opaque_existential_0(v15, v8);
  v12 = *v10;
  v13 = v10[1];
  sub_231E12210();
  __swift_destroy_boxed_opaque_existential_0(v15);
  return v14;
}

void sub_231D27708(uint64_t a1, unint64_t a2)
{
  switch(a2 >> 62)
  {
    case 1uLL:
      v5 = a1 >> 32;
      if (a1 >> 32 < a1)
      {
        goto LABEL_9;
      }

      a1 = a1;
      v4 = v5;
      goto LABEL_7;
    case 2uLL:
      v3 = *(a1 + 24);
      a1 = *(a1 + 16);
      v4 = v3;
LABEL_7:
      sub_231D279F8(a1, v4);
      if (v2)
      {
        goto LABEL_8;
      }

      return;
    default:
      sub_231D27954();
      if (!v2)
      {
        return;
      }

LABEL_8:

      __break(1u);
LABEL_9:
      __break(1u);
      return;
  }
}

uint64_t sub_231D277A4@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  if (!result)
  {
    goto LABEL_4;
  }

  v4 = a2 - result;
  if (a2 == result)
  {
    result = 0;
LABEL_4:
    v5 = 0xC000000000000000;
    goto LABEL_5;
  }

  if (v4 <= 14)
  {
    result = sub_231E0F790();
    v5 = v7 & 0xFFFFFFFFFFFFFFLL;
  }

  else if (v4 >= 0x7FFFFFFF)
  {
    result = MEMORY[0x23837ACB0]();
    v5 = v8 | 0x8000000000000000;
  }

  else
  {
    result = MEMORY[0x23837ACD0]();
    v5 = v6 | 0x4000000000000000;
  }

LABEL_5:
  *a3 = result;
  a3[1] = v5;
  return result;
}

unint64_t sub_231D2781C()
{
  result = qword_2814CAF78;
  if (!qword_2814CAF78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DD74460, &qword_231E1C990);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814CAF78);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_231D278D8()
{
  result = qword_27DD74B90;
  if (!qword_27DD74B90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DD74B88, &qword_231E1C380);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD74B90);
  }

  return result;
}

uint64_t sub_231D27954()
{
  v2 = *MEMORY[0x277D85DE8];
  sub_231E11500();
  sub_231D27B08();
  result = sub_231E11490();
  v1 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_231D279F8(uint64_t a1, uint64_t a2)
{
  result = sub_231E0F530();
  if (!result || (result = sub_231E0F550(), !__OFSUB__(a1, result)))
  {
    if (!__OFSUB__(a2, a1))
    {
      sub_231E0F540();
      sub_231E11500();
      sub_231D27B08();
      return sub_231E11490();
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_231D27AA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = __OFADD__(a1, a2);
  result = a1 + a2;
  if (v4)
  {
    __break(1u);
LABEL_8:
    __break(1u);
    return result;
  }

  v6 = a4 - a3;
  if (!a3)
  {
    v6 = 0;
  }

  if (result < 0 || v6 < result)
  {
    goto LABEL_8;
  }

  return result;
}

uint64_t sub_231D27AD4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 - a3;
  if (!a3)
  {
    v4 = 0;
  }

  if (result < 0 || v4 < result)
  {
    __break(1u);
  }

  else if ((a2 & 0x8000000000000000) == 0 && v4 >= a2)
  {
    return a2 - result;
  }

  __break(1u);
  return result;
}

unint64_t sub_231D27B08()
{
  result = qword_27DD74B98;
  if (!qword_27DD74B98)
  {
    sub_231E11500();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD74B98);
  }

  return result;
}

void sub_231D27B64(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  v6 = objc_autoreleasePoolPush();
  v7 = OUTLINED_FUNCTION_18_0();
  sub_231D27BEC(v7, v8, a4, v9, a3, v10);

  objc_autoreleasePoolPop(v6);
}

void sub_231D27BEC(void *a1@<X0>, void *a2@<X1>, unsigned __int8 a3@<W2>, int a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v457 = a5;
  LODWORD(v456) = a4;
  v454 = a6;
  LODWORD(v455) = a3;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74A78, &unk_231E1E3E0);
  v10 = OUTLINED_FUNCTION_47(v9);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_6_12(&v412 - v13);
  v431 = sub_231E10070();
  v14 = OUTLINED_FUNCTION_24(v431);
  v430 = v15;
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_6_12(v19 - v18);
  v445 = sub_231E10470();
  v20 = OUTLINED_FUNCTION_24(v445);
  v446 = v21;
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_6_12(v25 - v24);
  v447 = sub_231E10400();
  v26 = OUTLINED_FUNCTION_24(v447);
  v439 = v27;
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_139();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_25_5();
  OUTLINED_FUNCTION_6_12(v31);
  v458 = sub_231E0F950();
  v32 = OUTLINED_FUNCTION_24(v458);
  v436 = v33;
  v35 = *(v34 + 64);
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_4_1();
  v435 = v37 - v36;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&dword_27DD74AD0, &qword_231E16C40);
  v39 = OUTLINED_FUNCTION_47(v38);
  v41 = *(v40 + 64);
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_139();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_10_0();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_10_0();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_10_0();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v45);
  OUTLINED_FUNCTION_25_5();
  OUTLINED_FUNCTION_6_12(v46);
  v418 = sub_231E0FA50();
  v47 = OUTLINED_FUNCTION_24(v418);
  v417 = v48;
  v50 = *(v49 + 64);
  MEMORY[0x28223BE20](v47);
  OUTLINED_FUNCTION_4_1();
  v53 = v52 - v51;
  v419 = sub_231E10DB0();
  v54 = OUTLINED_FUNCTION_24(v419);
  v416 = v55;
  v57 = *(v56 + 64);
  MEMORY[0x28223BE20](v54);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_6_12(v59 - v58);
  v459 = sub_231E10E30();
  v60 = OUTLINED_FUNCTION_24(v459);
  v450 = v61;
  v63 = *(v62 + 64);
  MEMORY[0x28223BE20](v60);
  OUTLINED_FUNCTION_139();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v64);
  OUTLINED_FUNCTION_10_0();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v65);
  OUTLINED_FUNCTION_10_0();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v66);
  OUTLINED_FUNCTION_10_0();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v67);
  OUTLINED_FUNCTION_10_0();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v68);
  OUTLINED_FUNCTION_10_0();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v69);
  OUTLINED_FUNCTION_10_0();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v70);
  OUTLINED_FUNCTION_25_5();
  OUTLINED_FUNCTION_6_12(v71);
  v72 = sub_231E11670();
  v73 = OUTLINED_FUNCTION_47(v72);
  v75 = *(v74 + 64);
  MEMORY[0x28223BE20](v73);
  OUTLINED_FUNCTION_4_1();
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD73F98, &unk_231E170E0);
  v77 = OUTLINED_FUNCTION_47(v76);
  v79 = *(v78 + 64);
  MEMORY[0x28223BE20](v77);
  OUTLINED_FUNCTION_139();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v80);
  OUTLINED_FUNCTION_10_0();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v81);
  OUTLINED_FUNCTION_10_0();
  OUTLINED_FUNCTION_9();
  v83 = MEMORY[0x28223BE20](v82);
  v85 = &v412 - v84;
  MEMORY[0x28223BE20](v83);
  OUTLINED_FUNCTION_25_5();
  v462 = v86;
  v87 = sub_231E10210();
  v464 = OUTLINED_FUNCTION_24(v87);
  v465 = v88;
  v90 = *(v89 + 64);
  MEMORY[0x28223BE20](v464);
  OUTLINED_FUNCTION_139();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v91);
  OUTLINED_FUNCTION_25_5();
  v470 = v92;
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&dword_27DD73FA0, &dword_231E13460);
  v94 = OUTLINED_FUNCTION_47(v93);
  v96 = *(v95 + 64);
  MEMORY[0x28223BE20](v94);
  OUTLINED_FUNCTION_139();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v97);
  v99 = &v412 - v98;
  v100 = [a1 attributeSet];
  sub_231DF3D04(0, a2);
  v461 = v99;
  sub_231D177B0(v101, v99);

  sub_231DF3D04(1, a2);
  v453 = v102;
  sub_231DF3D04(2, a2);
  v452 = v103;
  sub_231DF3D04(3, a2);
  v451 = v104;
  v463 = v100;
  v440 = sub_231CC33AC(v100, &selRef_bundleID);
  v106 = v105;
  v107 = MEMORY[0x277D42280];
  v108 = MEMORY[0x277D42278];
  v449 = a1;
  if (v455 != 1)
  {
    v442 = v105;
    v106 = sub_231D2A448([a1 attributeSet]);
    v116 = v115;
    v85 = sub_231D2A4B8([a1 attributeSet]);
    v118 = v117;
    if (v456)
    {

      v109 = v463;
      v119 = [v463 contentSnippet];
      v113 = v458;
      if (v119)
      {
        v120 = v119;
        v121 = sub_231E11620();
        v106 = v122;
        v123 = OUTLINED_FUNCTION_15_9();
        sub_231CF4340(v123, v124);

        v125 = v470;
        *v470 = v121;
        v125[1] = v106;
        v126 = *v107;
        OUTLINED_FUNCTION_24_4();
      }

      else
      {
        v157 = OUTLINED_FUNCTION_15_9();
        sub_231CF4340(v157, v158);
        v159 = *v108;
        OUTLINED_FUNCTION_24_4();
        v127 = v470;
      }

      v128(v127);
      v151 = v462;
      OUTLINED_FUNCTION_14_6();
      OUTLINED_FUNCTION_41_5();
      goto LABEL_28;
    }

    v145 = sub_231CE227C(v440, v442);
    v109 = v463;
    if (v145)
    {
      OUTLINED_FUNCTION_14_6();
      if (v116)
      {
        v146 = OUTLINED_FUNCTION_15_9();
        sub_231CF4340(v146, v147);
        v148 = v470;
        *v470 = v106;
        v148[1] = v116;
        v149 = *MEMORY[0x277D42268];
        OUTLINED_FUNCTION_24_4();
      }

      else
      {
        if (v118 >> 60 == 15)
        {
          OUTLINED_FUNCTION_30_5();
          OUTLINED_FUNCTION_31_4();
          OUTLINED_FUNCTION_32_4();

          sub_231CB4EEC();
          OUTLINED_FUNCTION_0_18();
          v174 = v414;
          v175 = v107;
          v176 = v459;
          v177(v414);

          v178 = sub_231E10E10();
          sub_231E11AD0();

          if (OUTLINED_FUNCTION_33_8())
          {
            OUTLINED_FUNCTION_9_1();
            v179 = OUTLINED_FUNCTION_13_8();
            *&v469[0] = v179;
            *v108 = 136446210;
            v180 = sub_231DE2398(v175);
            v182 = sub_231CB5000(v180, v181, v469);

            *(v108 + 1) = v182;
            OUTLINED_FUNCTION_8_9(&dword_231CAE000, v183, v184, "%{public}s Unable to create MailEntity, plain text body or HTML body not provided");
            __swift_destroy_boxed_opaque_existential_0(v179);
            OUTLINED_FUNCTION_30();
            OUTLINED_FUNCTION_12_8();

            (*(v85 + 1))(v174, v459);
          }

          else
          {

            (*(v85 + 1))(v174, v176);
          }

          goto LABEL_73;
        }

        sub_231E11660();
        OUTLINED_FUNCTION_15_9();
        sub_231E11640();
        if (!v350 || (type metadata accessor for EmailFrameworkMailFetcher(), OUTLINED_FUNCTION_18_0(), v351 = sub_231CBBDA0(), v106 = v352, , !v106))
        {
          v358 = sub_231CB4EEC();
          v359 = v413;
          v360 = v459;
          (*(v450 + 16))(v413, v358, v459);

          v361 = sub_231E10E10();
          v362 = sub_231E11AD0();

          if (os_log_type_enabled(v361, v362))
          {
            v363 = OUTLINED_FUNCTION_9_1();
            v364 = swift_slowAlloc();
            *&v469[0] = v364;
            *v363 = 136446210;
            v365 = sub_231DE2398(v107);
            v107 = sub_231CB5000(v365, v366, v469);

            *(v363 + 4) = v107;
            OUTLINED_FUNCTION_14_6();
            _os_log_impl(&dword_231CAE000, v361, v362, "%{public}s First attempt at HTML parsing failed, falling back to old parsing approach", v363, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v364);
            OUTLINED_FUNCTION_12_8();
            OUTLINED_FUNCTION_30();

            (*(v450 + 8))(v413, v459);
          }

          else
          {

            (*(v450 + 8))(v359, v360);
          }

          v388 = type metadata accessor for QuotedRegionHtmlParser();
          v389 = sub_231D1DE64();
          sub_231DC5114();
          v390 = v416;
          v391 = OUTLINED_FUNCTION_28_3(v416);
          v393 = *(v392 - 256);
          v395 = v394(v391);
          MEMORY[0x28223BE20](v395);
          OUTLINED_FUNCTION_43_7("QuotedRegions.Parsing", v396, v397, sub_231D2A528);
          v460 = v6;
          v398 = *(v390 + 8);
          v106 = v390 + 8;
          v398(v388, v393);
          swift_beginAccess();
          v399 = v389[4];
          v400 = v470;
          *v470 = v389[3];
          v400[1] = v399;
          v401 = *MEMORY[0x277D42268];
          (*(v465 + 104))();

          if (v107)
          {
            sub_231DDABDC();
          }

          v402 = OUTLINED_FUNCTION_15_9();
          sub_231CF4340(v402, v403);

          v151 = v462;
          OUTLINED_FUNCTION_41_5();
          goto LABEL_23;
        }

        v353 = OUTLINED_FUNCTION_15_9();
        sub_231CF4340(v353, v354);
        v355 = v470;
        *v470 = v351;
        v355[1] = v106;
        v356 = *MEMORY[0x277D42268];
        OUTLINED_FUNCTION_24_4();
      }

      v150();
      v151 = v462;
    }

    else
    {
      v155 = OUTLINED_FUNCTION_15_9();
      sub_231CF4340(v155, v156);

      (*(v465 + 104))(v470, *v108, v464);
      v151 = v462;
      OUTLINED_FUNCTION_14_6();
    }

    OUTLINED_FUNCTION_41_5();
LABEL_23:
    v113 = v458;
LABEL_28:
    sub_231E10290();
    OUTLINED_FUNCTION_105();
    __swift_storeEnumTagSinglePayload(v160, v161, v162, v163);
    goto LABEL_41;
  }

  *&v467 = 0;
  if (v456)
  {
    v109 = v463;
    v110 = sub_231CC33AC(v463, &selRef_contentSnippet);
    v112 = v465;
    v113 = v458;
    if (v111)
    {
      v114 = v470;
      *v470 = v110;
      v114[1] = v111;
      (*(v112 + 104))(v114, *v107, v464);
    }

    else
    {
      (*(v465 + 104))(v470, *v108, v464);
    }

    v151 = v462;
    OUTLINED_FUNCTION_14_6();
    goto LABEL_37;
  }

  v469[0] = 0uLL;
  v109 = v463;
  sub_231D26174(v463);
  v113 = v458;
  if (v129 >> 60 == 15)
  {
    goto LABEL_18;
  }

  v130 = objc_allocWithZone(MEMORY[0x277D41E10]);
  v131 = OUTLINED_FUNCTION_18_0();
  sub_231CF4400(v131, v132);
  OUTLINED_FUNCTION_18_0();
  v133 = sub_231E0F820();
  v134 = [v130 initWithData:v133 encoding:4];

  v109 = v463;
  v135 = OUTLINED_FUNCTION_18_0();
  sub_231CF4340(v135, v136);
  v137 = OUTLINED_FUNCTION_18_0();
  sub_231CF4340(v137, v138);
  if (!v134)
  {
LABEL_18:
    v134 = 0;
    v469[0] = 0uLL;
    OUTLINED_FUNCTION_14_6();
    goto LABEL_19;
  }

  v139 = [v134 quotedRegions];
  sub_231E0FA30();

  v140 = sub_231E0FA40();
  (*(v417 + 8))(v53, v418);
  OUTLINED_FUNCTION_14_6();
  if ((v140 & 1) == 0)
  {
    sub_231DC5114();
    v185 = v416;
    v186 = OUTLINED_FUNCTION_28_3(v416);
    v188 = *(v187 - 256);
    v190 = v189(v186);
    v456 = &v412;
    MEMORY[0x28223BE20](v190);
    OUTLINED_FUNCTION_43_7("QuotedRegions.Parsing", v191, v192, sub_231D2A418);
    v460 = v6;
    (*(v185 + 8))(v140, v419);
    v144 = *(&v469[0] + 1);
    if (*(&v469[0] + 1))
    {
      goto LABEL_35;
    }

LABEL_19:
    v152 = sub_231CC33AC(v109, &selRef_textContentNoCopy);
    if (!v153)
    {
      OUTLINED_FUNCTION_30_5();
      OUTLINED_FUNCTION_31_4();
      OUTLINED_FUNCTION_32_4();

      sub_231CB4EEC();
      OUTLINED_FUNCTION_0_18();
      v164 = v421;
      v165 = v459;
      v166(v421);

      v167 = v164;
      v168 = sub_231E10E10();
      sub_231E11AD0();
      OUTLINED_FUNCTION_37_5();
      if (OUTLINED_FUNCTION_33_8())
      {
        v169 = OUTLINED_FUNCTION_9_1();
        v170 = swift_slowAlloc();
        v466 = v170;
        *v169 = 136446210;
        v171 = sub_231DE2398(v107);
        v173 = sub_231CB5000(v171, v172, &v466);

        *(v169 + 4) = v173;
        _os_log_impl(&dword_231CAE000, v168, v167, "%{public}s Unable to create MailEntity, plain text body missing and HTML body either missing or failed to parse", v169, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v170);
        OUTLINED_FUNCTION_30();
        OUTLINED_FUNCTION_30();

        (*(v85 + 1))(v421, v459);
      }

      else
      {

        (*(v85 + 1))(v164, v165);
      }

      sub_231CC154C(v461, &dword_27DD73FA0, &dword_231E13460);
      sub_231E10340();
      OUTLINED_FUNCTION_105();
      __swift_storeEnumTagSinglePayload(v301, v302, v303, v304);

      return;
    }

    v154 = v152;
    v144 = v153;

    goto LABEL_36;
  }

  v141 = [v134 textContent];
  v142 = sub_231E11620();
  v144 = v143;

  *&v469[0] = v142;
  *(&v469[0] + 1) = v144;
  v113 = v458;
  if (!v144)
  {
    goto LABEL_19;
  }

LABEL_35:
  v154 = *&v469[0];

LABEL_36:
  v193 = v470;
  *v470 = v154;
  v193[1] = v144;
  v194 = *MEMORY[0x277D42268];
  OUTLINED_FUNCTION_24_4();
  v195();

  v151 = v462;
LABEL_37:
  if (v467)
  {
    *v85 = v467;
    v196 = *MEMORY[0x277D42290];
    v197 = sub_231E10290();
    OUTLINED_FUNCTION_12(v197);
    (*(v198 + 104))(v85, v196, v197);
    v199 = v85;
    v200 = 0;
    v201 = 1;
    v202 = v197;
  }

  else
  {
    sub_231E10290();
    OUTLINED_FUNCTION_105();
  }

  __swift_storeEnumTagSinglePayload(v199, v200, v201, v202);
  sub_231CB37DC(v85, v151, &qword_27DD73F98, &unk_231E170E0);
LABEL_41:
  v203 = sub_231CC33AC(v109, &selRef_uniqueIdentifier);
  if (!v204)
  {
    OUTLINED_FUNCTION_30_5();
    OUTLINED_FUNCTION_31_4();
    OUTLINED_FUNCTION_32_4();

    sub_231CB4EEC();
    OUTLINED_FUNCTION_0_18();
    v213 = OUTLINED_FUNCTION_5_13();
    v214(v213);

    v215 = sub_231E10E10();
    sub_231E11AE0();
    OUTLINED_FUNCTION_37_5();
    if (OUTLINED_FUNCTION_33_8())
    {
      OUTLINED_FUNCTION_9_1();
      v216 = OUTLINED_FUNCTION_13_8();
      OUTLINED_FUNCTION_27_4(v216);
      v217 = OUTLINED_FUNCTION_38_4(4.8751e-34);
      v219 = v113;
      v220 = v109;
      v221 = OUTLINED_FUNCTION_36_4(v217, v218);

      *(v151 + 4) = v221;
      OUTLINED_FUNCTION_8_9(&dword_231CAE000, v222, v223, "%{public}s Unable to create MailEntity, no unique identifier");
      OUTLINED_FUNCTION_17_0();
      OUTLINED_FUNCTION_12_8();

      (*(v85 + 1))(v443, v219);
      goto LABEL_68;
    }

    goto LABEL_69;
  }

  v205 = v204;
  v455 = v203;
  v443 = sub_231CC33AC(v109, &selRef_accountIdentifier);
  v456 = v206;
  v207 = sub_231CC33AC(v449, &selRef_bundleID);
  v209 = v208;
  v210 = sub_231CC7B14();
  if (!v209)
  {
    goto LABEL_53;
  }

  if (v207 == *v210 && v209 == v210[1])
  {

    goto LABEL_52;
  }

  v212 = sub_231E12100();

  if (v212)
  {
LABEL_52:
    if (v456)
    {
      goto LABEL_53;
    }

    OUTLINED_FUNCTION_30_5();
    OUTLINED_FUNCTION_31_4();
    OUTLINED_FUNCTION_32_4();

    sub_231CB4EEC();
    OUTLINED_FUNCTION_0_18();
    v235 = OUTLINED_FUNCTION_5_13();
    v236(v235);

    v215 = sub_231E10E10();
    sub_231E11AE0();
    OUTLINED_FUNCTION_37_5();
    if (OUTLINED_FUNCTION_33_8())
    {
      OUTLINED_FUNCTION_9_1();
      v237 = OUTLINED_FUNCTION_13_8();
      OUTLINED_FUNCTION_27_4(v237);
      v238 = OUTLINED_FUNCTION_38_4(4.8751e-34);
      OUTLINED_FUNCTION_36_4(v238, v239);
      OUTLINED_FUNCTION_34_5();
      *(v151 + 4) = v109;
      OUTLINED_FUNCTION_8_9(&dword_231CAE000, v240, v241, "%{public}s Unable to create MailEntity, no account identifier");
      OUTLINED_FUNCTION_17_0();
      OUTLINED_FUNCTION_12_8();

      (*(v205 + 8))(v434, v113);
      goto LABEL_68;
    }

LABEL_69:

    v269 = OUTLINED_FUNCTION_19_5();
    v270(v269);
    sub_231CC154C(v151, &qword_27DD73F98, &unk_231E170E0);
    v271 = OUTLINED_FUNCTION_39_3();
LABEL_72:
    v272(v271);
LABEL_73:
    sub_231CC154C(v461, &dword_27DD73FA0, &dword_231E13460);
    OUTLINED_FUNCTION_42_5();
    OUTLINED_FUNCTION_105();
    __swift_storeEnumTagSinglePayload(v275, v276, v277, v278);
    return;
  }

LABEL_53:
  v224 = [v109 mailDateReceived];
  v225 = &off_278947000;
  if (v224)
  {
    v226 = v224;
    v227 = v107;
    v228 = v435;
    sub_231E0F910();

    v229 = *(v436 + 32);
    v230 = v448;
    v229(v448, v228, v113);
    OUTLINED_FUNCTION_35_4(v230, 0);
    v225 = v441;
    v229(v441, v230, v113);
    v231 = v225;
    v232 = OUTLINED_FUNCTION_21_4();
    __swift_storeEnumTagSinglePayload(v232, v233, v234, v113);
    OUTLINED_FUNCTION_26_4();
  }

  else
  {
    v242 = 1;
    OUTLINED_FUNCTION_105();
    __swift_storeEnumTagSinglePayload(v243, v244, v245, v113);
    v246 = [v109 contentCreationDate];
    if (v246)
    {
      v225 = v246;
      v227 = v107;
      v247 = v423;
      sub_231E0F910();

      v242 = 0;
      OUTLINED_FUNCTION_26_4();
    }

    else
    {
      v227 = v107;
      OUTLINED_FUNCTION_26_4();
      v247 = v423;
    }

    OUTLINED_FUNCTION_35_4(v247, v242);
    v231 = v441;
    sub_231CB37DC(v247, v441, &dword_27DD74AD0, &qword_231E16C40);
    v248 = v448;
    if (__swift_getEnumTagSinglePayload(v448, 1, v113) != 1)
    {
      sub_231CC154C(v248, &dword_27DD74AD0, &qword_231E16C40);
    }
  }

  if (__swift_getEnumTagSinglePayload(v231, 1, v113) == 1)
  {

    OUTLINED_FUNCTION_30_5();
    OUTLINED_FUNCTION_31_4();
    OUTLINED_FUNCTION_32_4();

    sub_231CC154C(v231, &dword_27DD74AD0, &qword_231E16C40);
    sub_231CB4EEC();
    OUTLINED_FUNCTION_0_18();
    v249 = OUTLINED_FUNCTION_5_13();
    v250(v249);

    v251 = sub_231E10E10();
    sub_231E11AE0();

    v252 = OUTLINED_FUNCTION_33_8();
    v253 = v463;
    if (!v252)
    {

      v273 = OUTLINED_FUNCTION_19_5();
      v274(v273);
      v268 = v151;
      goto LABEL_71;
    }

    OUTLINED_FUNCTION_9_1();
    v254 = OUTLINED_FUNCTION_13_8();
    OUTLINED_FUNCTION_27_4(v254);
    v255 = OUTLINED_FUNCTION_38_4(4.8751e-34);
    OUTLINED_FUNCTION_36_4(v255, v256);
    OUTLINED_FUNCTION_34_5();
    *(v151 + 4) = v253;
    OUTLINED_FUNCTION_8_9(&dword_231CAE000, v257, v258, "%{public}s Unable to create MailEntity, no date");
    OUTLINED_FUNCTION_17_0();
    OUTLINED_FUNCTION_12_8();

    (*(v205 + 8))(v106, v459);
LABEL_68:
    v268 = v462;
LABEL_71:
    sub_231CC154C(v268, &qword_27DD73F98, &unk_231E170E0);
    v271 = OUTLINED_FUNCTION_20_6();
    goto LABEL_72;
  }

  sub_231CC154C(v231, &dword_27DD74AD0, &qword_231E16C40);
  v259 = v432;
  sub_231CC6A58(v461, v432, &dword_27DD73FA0, &dword_231E13460);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v259, 1, v225);
  v109 = v463;
  if (EnumTagSinglePayload == 1)
  {

    OUTLINED_FUNCTION_30_5();
    OUTLINED_FUNCTION_31_4();
    OUTLINED_FUNCTION_32_4();

    sub_231CC154C(v259, &dword_27DD73FA0, &dword_231E13460);
    sub_231CB4EEC();
    OUTLINED_FUNCTION_0_18();
    v261 = OUTLINED_FUNCTION_5_13();
    v262(v261);

    v215 = sub_231E10E10();
    sub_231E11AF0();
    OUTLINED_FUNCTION_37_5();
    if (OUTLINED_FUNCTION_33_8())
    {
      OUTLINED_FUNCTION_9_1();
      v263 = OUTLINED_FUNCTION_13_8();
      OUTLINED_FUNCTION_27_4(v263);
      v264 = OUTLINED_FUNCTION_38_4(4.8751e-34);
      OUTLINED_FUNCTION_36_4(v264, v265);
      OUTLINED_FUNCTION_34_5();
      *(v151 + 4) = v109;
      OUTLINED_FUNCTION_8_9(&dword_231CAE000, v266, v267, "%{public}s Unable to create MailEntity, missing sender handle");
      OUTLINED_FUNCTION_17_0();
      OUTLINED_FUNCTION_12_8();

      (*(v205 + 8))(v424, v113);
      goto LABEL_68;
    }

    goto LABEL_69;
  }

  (*(v439 + 32))(v438, v259, v225);
  v279 = v151;
  v280 = v422;
  sub_231CC6A58(v279, v422, &qword_27DD73F98, &unk_231E170E0);
  v281 = sub_231E10290();
  v282 = __swift_getEnumTagSinglePayload(v280, 1, v281);
  v442 = v106;
  v421 = v205;
  if (v282 != 1)
  {
    v283 = v415;
    sub_231CC6A58(v280, v415, &qword_27DD73F98, &unk_231E170E0);
    v284 = *(v281 - 8);
    v285 = (*(v284 + 88))(v283, v281);
    if (v285 != *MEMORY[0x277D42288] && v285 == *MEMORY[0x277D42290])
    {
      (*(v284 + 96))(v283, v281);
      v336 = *v283;
      v337 = *(*v283 + 16);
      if (v337)
      {
        *&v469[0] = MEMORY[0x277D84F90];
        sub_231CC686C(0, v337, 0);
        v338 = *&v469[0];
        v448 = *(v446 + 16);
        v339 = (*(v446 + 80) + 32) & ~*(v446 + 80);
        v436 = v336;
        v340 = v336 + v339;
        v441 = *(v446 + 72);
        v446 += 16;
        v341 = (v446 - 8);
        do
        {
          v342 = v444;
          v343 = v445;
          v448(v444, v340, v445);
          v344 = sub_231E10450();
          v346 = v345;
          (*v341)(v342, v343);
          *&v469[0] = v338;
          v348 = *(v338 + 16);
          v347 = *(v338 + 24);
          if (v348 >= v347 >> 1)
          {
            sub_231CC686C((v347 > 1), v348 + 1, 1);
            v338 = *&v469[0];
          }

          *(v338 + 16) = v348 + 1;
          v349 = v338 + 16 * v348;
          *(v349 + 32) = v344;
          *(v349 + 40) = v346;
          v340 += v441;
          --v337;
        }

        while (v337);

        v357 = v464;
        OUTLINED_FUNCTION_14_6();
        OUTLINED_FUNCTION_41_5();
        v205 = v421;
      }

      else
      {
        v357 = v464;
        v367 = *v283;

        v338 = MEMORY[0x277D84F90];
      }

      v368 = sub_231DC3C70(v338);

      v225 = v470;
      sub_231E10200();
      if (v369)
      {
        v225 = v369;
        v370 = sub_231E116F0();
      }

      else
      {
        v370 = 0;
      }

      v109 = v463;
      OUTLINED_FUNCTION_26_4();
      v288 = v357;
      v371 = v370 + v368;
      v372 = v458;
      if (__OFADD__(v370, v368))
      {
        __break(1u);
        return;
      }

      v280 = v422;
      if (!v371)
      {

        OUTLINED_FUNCTION_30_5();
        OUTLINED_FUNCTION_31_4();
        OUTLINED_FUNCTION_32_4();

        sub_231CB4EEC();
        OUTLINED_FUNCTION_0_18();
        v373 = OUTLINED_FUNCTION_5_13();
        v374(v373);

        v375 = sub_231E10E10();
        sub_231E11AF0();
        OUTLINED_FUNCTION_37_5();
        if (OUTLINED_FUNCTION_33_8())
        {
          OUTLINED_FUNCTION_9_1();
          v376 = OUTLINED_FUNCTION_13_8();
          OUTLINED_FUNCTION_27_4(v376);
          v377 = OUTLINED_FUNCTION_38_4(4.8751e-34);
          v379 = v205;
          v380 = v109;
          v381 = OUTLINED_FUNCTION_36_4(v377, v378);

          *(v280 + 4) = v381;
          OUTLINED_FUNCTION_8_9(&dword_231CAE000, v382, v383, "%{public}s Unable to create MailEntity, empty");
          OUTLINED_FUNCTION_17_0();
          v280 = v422;
          OUTLINED_FUNCTION_30();

          (*(v379 + 8))(v412, v372);
          v384 = OUTLINED_FUNCTION_7_12();
          v385(v384);
          sub_231CC154C(v462, &qword_27DD73F98, &unk_231E170E0);
          v386 = OUTLINED_FUNCTION_20_6();
        }

        else
        {

          v404 = OUTLINED_FUNCTION_19_5();
          v405(v404);
          v406 = OUTLINED_FUNCTION_7_12();
          v407(v406);
          sub_231CC154C(v462, &qword_27DD73F98, &unk_231E170E0);
          v386 = OUTLINED_FUNCTION_39_3();
        }

        v387(v386);
        sub_231CC154C(v461, &dword_27DD73FA0, &dword_231E13460);
        OUTLINED_FUNCTION_42_5();
        OUTLINED_FUNCTION_105();
        __swift_storeEnumTagSinglePayload(v408, v409, v410, v411);
        sub_231CC154C(v280, &qword_27DD73F98, &unk_231E170E0);
        return;
      }

      goto LABEL_81;
    }

    v287 = *(v284 + 8);
    v225 = (v284 + 8);
    v287(v283, v281);
    OUTLINED_FUNCTION_26_4();
  }

  v288 = v464;
LABEL_81:
  sub_231CC154C(v280, &qword_27DD73F98, &unk_231E170E0);
  [v109 mailCategories];
  sub_231E10060();
  v458 = sub_231CC33AC(v109, &selRef_domainIdentifier);
  v457 = v289;
  v290 = v443;
  if (!v456)
  {
    v290 = 0;
  }

  v450 = v290;
  if (v456)
  {
    v291 = v456;
  }

  else
  {
    v291 = 0xE000000000000000;
  }

  v456 = v291;
  v448 = sub_231CE122C(v109, &selRef_accountHandles);
  (*(v439 + 16))(v428, v438, v225);
  v292 = sub_231CC33AC(v109, &selRef_subject);
  if (v293)
  {
    v294 = v292;
  }

  else
  {
    v294 = 0;
  }

  v446 = v294;
  if (v293)
  {
    v295 = v293;
  }

  else
  {
    v295 = 0xE000000000000000;
  }

  v445 = v295;
  (*(v465 + 16))(v425, v470, v288);
  v296 = [v109 isPartiallyDownloaded];
  v297 = v427;
  v298 = v449;
  if (v296)
  {
    v299 = OUTLINED_FUNCTION_23_5(v296);

    v300 = v299 ^ 1;
  }

  else
  {
    v300 = 1;
  }

  LODWORD(v444) = v300;
  v305 = sub_231CE122C(v109, &selRef_mailboxIdentifiers);
  v306 = MEMORY[0x277D84F90];
  if (v305)
  {
    v306 = v305;
  }

  v443 = v306;
  v459 = sub_231D2E5A0();
  v441 = sub_231CC33AC(v109, &selRef_mailConversationID);
  v436 = v307;
  v308 = [v109 contentCreationDate];
  if (v308)
  {
    v309 = v308;
    v310 = v426;
    sub_231E0F910();

    v311 = 0;
  }

  else
  {
    v311 = 1;
    v310 = v426;
  }

  v312 = 1;
  OUTLINED_FUNCTION_35_4(v310, v311);
  v313 = [v109 mailDateReceived];
  if (v313)
  {
    v314 = v313;
    sub_231E0F910();

    v312 = 0;
  }

  OUTLINED_FUNCTION_35_4(v297, v312);
  v315 = v431;
  (*(v430 + 16))(v429, v437, v431);
  v316 = OUTLINED_FUNCTION_21_4();
  __swift_storeEnumTagSinglePayload(v316, v317, v318, v315);
  v319 = [v109 isNew];
  if (v319)
  {
    LODWORD(v435) = OUTLINED_FUNCTION_23_5(v319);
  }

  else
  {
    LODWORD(v435) = 2;
  }

  v320 = [v109 isTwoFactorCode];
  if (v320)
  {
    LODWORD(v434) = OUTLINED_FUNCTION_23_5(v320);
  }

  else
  {
    LODWORD(v434) = 2;
  }

  v321 = [v109 isFromMe];
  if (v321)
  {
    v433 = OUTLINED_FUNCTION_23_5(v321);
  }

  else
  {
    v433 = 2;
  }

  LODWORD(v432) = OUTLINED_FUNCTION_23_5([v109 isLikelyJunk]);

  v322 = [v109 mailRead];
  if (v322)
  {
    LODWORD(v424) = OUTLINED_FUNCTION_23_5(v322);
  }

  else
  {
    LODWORD(v424) = 2;
  }

  v323 = [v109 mailVIP];
  if (v323)
  {
    LODWORD(v423) = OUTLINED_FUNCTION_23_5(v323);
  }

  else
  {
    LODWORD(v423) = 2;
  }

  v324 = [v109 mailFlagged];
  if (v324)
  {
    LODWORD(v422) = OUTLINED_FUNCTION_23_5(v324);
  }

  else
  {
    LODWORD(v422) = 2;
  }

  [v298 isUpdate];
  sub_231DF7374();
  v325 = sub_231E115F0();

  v326 = [v109 attributeForKey_];

  if (v326)
  {
    sub_231E11C80();
    swift_unknownObjectRelease();
  }

  else
  {
    v467 = 0u;
    v468 = 0u;
  }

  v469[0] = v467;
  v469[1] = v468;
  if (*(&v468 + 1))
  {
    swift_dynamicCast();
  }

  else
  {
    sub_231CC154C(v469, &dword_27DD741E0, &qword_231E15D70);
  }

  [v109 protectionClass];
  v327 = v462;
  sub_231CC6A58(v462, v420, &qword_27DD73F98, &unk_231E170E0);
  sub_231E10310();

  (*(v430 + 8))(v437, v431);
  v328 = OUTLINED_FUNCTION_7_12();
  v329(v328);
  sub_231CC154C(v327, &qword_27DD73F98, &unk_231E170E0);
  v330 = OUTLINED_FUNCTION_20_6();
  v331(v330);
  sub_231CC154C(v461, &dword_27DD73FA0, &dword_231E13460);
  sub_231E10340();
  v332 = OUTLINED_FUNCTION_21_4();
  __swift_storeEnumTagSinglePayload(v332, v333, v334, v335);
}

uint64_t sub_231D2A11C(void *a1, uint64_t *a2, uint64_t *a3, void *a4)
{
  v8 = sub_231E11670();
  v9 = OUTLINED_FUNCTION_24(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_4_1();
  v16 = v15 - v14;
  type metadata accessor for QuotedRegionHtmlParser();
  v17 = sub_231D1DE64();
  sub_231D26174(a1);
  if (v18 >> 60 == 15)
  {
  }

  else
  {
    sub_231E11660();
    v20 = OUTLINED_FUNCTION_83();
    sub_231D1CBD0(v20, v21, v16);
    (*(v11 + 8))(v16, v8);
    swift_beginAccess();
    v22 = *a2;
    *a2 = v17[2];

    if (*a2 && *(*a2 + 16))
    {
      v23 = OUTLINED_FUNCTION_83();
      sub_231CF4340(v23, v24);
      swift_beginAccess();
      v26 = v17[3];
      v25 = v17[4];

      v27 = a3[1];
      *a3 = v26;
      a3[1] = v25;
    }

    else if (a4)
    {
      v28 = [a4 textContent];
      v29 = sub_231E11620();
      v31 = v30;
      v32 = OUTLINED_FUNCTION_83();
      sub_231CF4340(v32, v33);

      v34 = a3[1];
      *a3 = v29;
      a3[1] = v31;
    }

    else
    {
      v35 = OUTLINED_FUNCTION_83();
      sub_231CF4340(v35, v36);

      v37 = a3[1];
      *a3 = 0;
      a3[1] = 0;
    }
  }
}

uint64_t sub_231D2A344(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_231E11670();
  v6 = OUTLINED_FUNCTION_24(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_4_1();
  v13 = v12 - v11;
  sub_231E11660();
  sub_231D1CBD0(a2, a3, v13);
  return (*(v8 + 8))(v13, v5);
}

uint64_t sub_231D2A448(void *a1)
{
  v2 = [a1 textContentNoCopy];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_231E11620();

  return v3;
}

uint64_t sub_231D2A4B8(void *a1)
{
  v2 = [a1 HTMLContentDataNoCopy];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_231E0F840();

  return v3;
}

uint64_t OUTLINED_FUNCTION_7_12()
{
  v1 = *(*(v0 - 416) + 8);
  result = *(v0 - 424);
  v3 = *(v0 - 352);
  return result;
}

void OUTLINED_FUNCTION_8_9(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

void OUTLINED_FUNCTION_12_8()
{

  JUMPOUT(0x23837E1D0);
}

uint64_t OUTLINED_FUNCTION_13_8()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_31_4()
{
  v2 = *(v0 - 312);
}

uint64_t OUTLINED_FUNCTION_32_4()
{
  v2 = *(v0 - 304);
}

BOOL OUTLINED_FUNCTION_33_8()
{

  return os_log_type_enabled(v0, v1);
}

uint64_t OUTLINED_FUNCTION_34_5()
{
}

uint64_t OUTLINED_FUNCTION_35_4(uint64_t a1, uint64_t a2)
{

  return __swift_storeEnumTagSinglePayload(a1, a2, 1, v2);
}

uint64_t OUTLINED_FUNCTION_36_4(uint64_t a1, unint64_t a2)
{

  return sub_231CB5000(a1, a2, (v2 - 128));
}

uint64_t OUTLINED_FUNCTION_37_5()
{
}

uint64_t OUTLINED_FUNCTION_38_4(float a1)
{
  *v1 = a1;

  return sub_231DE2398(v2);
}

uint64_t OUTLINED_FUNCTION_42_5()
{
  v2 = *(v0 - 248);
  v3 = *(v0 - 296);

  return sub_231E10340();
}

uint64_t OUTLINED_FUNCTION_43_7(const char *a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  v6 = *(v4 - 248);

  return sub_231DC58D0(a1, 21, 2, a4);
}

uint64_t sub_231D2A754()
{
  OUTLINED_FUNCTION_18();
  v0[2] = v1;
  v0[3] = v2;
  v3 = sub_231E0FD90();
  v0[4] = v3;
  OUTLINED_FUNCTION_6(v3);
  v0[5] = v4;
  v6 = *(v5 + 64) + 15;
  v0[6] = swift_task_alloc();
  v0[7] = swift_task_alloc();
  v0[8] = swift_task_alloc();
  v0[9] = swift_task_alloc();
  v7 = sub_231E0F780();
  v0[10] = v7;
  OUTLINED_FUNCTION_6(v7);
  v0[11] = v8;
  v10 = *(v9 + 64) + 15;
  v0[12] = swift_task_alloc();
  v0[13] = swift_task_alloc();
  v0[14] = swift_task_alloc();
  v0[15] = swift_task_alloc();
  v11 = sub_231E10E30();
  v0[16] = v11;
  OUTLINED_FUNCTION_6(v11);
  v0[17] = v12;
  v14 = *(v13 + 64) + 15;
  v0[18] = swift_task_alloc();
  v0[19] = swift_task_alloc();
  v0[20] = swift_task_alloc();
  v0[21] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_231D2A91C, 0, 0);
}

uint64_t sub_231D2A91C()
{
  v62 = v0;
  v1 = v0[21];
  v2 = v0[16];
  v3 = v0[17];
  v4 = v0[15];
  v5 = v0[10];
  v6 = v0[11];
  v7 = v0[5];
  v57 = v0[4];
  v59 = v0[9];
  v9 = v0[2];
  v8 = v0[3];
  v10 = sub_231CB4EEC();
  v0[22] = v10;
  v11 = *(v3 + 16);
  v0[23] = v11;
  v0[24] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v11(v1, v10, v2);
  v12 = *(v6 + 16);
  v0[25] = v12;
  v0[26] = (v6 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v12(v4, v9, v5);
  v13 = *(v7 + 16);
  v0[27] = v13;
  v0[28] = (v7 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v13(v59, v8, v57);
  v14 = sub_231E10E10();
  v58 = sub_231E11AF0();
  v15 = os_log_type_enabled(v14, v58);
  v16 = v0[21];
  v17 = v0[17];
  v60 = v0[16];
  v18 = v0[15];
  v19 = v0[10];
  v20 = v0[11];
  v21 = v0[9];
  v23 = v0[4];
  v22 = v0[5];
  if (v15)
  {
    v56 = v0[17];
    v24 = swift_slowAlloc();
    v61 = OUTLINED_FUNCTION_68();
    *v24 = 136643075;
    OUTLINED_FUNCTION_0_19();
    sub_231D2C3CC(v25, v26);
    log = v14;
    v55 = v16;
    v27 = sub_231E120D0();
    v29 = v28;
    v53 = v23;
    v30 = v21;
    v31 = *(v20 + 8);
    v32 = OUTLINED_FUNCTION_48();
    v31(v32);
    v33 = sub_231CB5000(v27, v29, &v61);

    *(v24 + 4) = v33;
    *(v24 + 12) = 2082;
    OUTLINED_FUNCTION_1_14();
    sub_231D2C3CC(v34, v35);
    sub_231E120D0();
    v36 = *(v22 + 8);
    v36(v30, v53);
    v37 = OUTLINED_FUNCTION_48();
    v40 = sub_231CB5000(v37, v38, v39);

    *(v24 + 14) = v40;
    _os_log_impl(&dword_231CAE000, log, v58, "Requesting caption for attachment: %{sensitive}s; type: %{public}s", v24, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_30();
    OUTLINED_FUNCTION_30();

    v41 = *(v56 + 8);
    v41(v55, v60);
  }

  else
  {

    v36 = *(v22 + 8);
    v36(v21, v23);
    v31 = *(v20 + 8);
    v42 = OUTLINED_FUNCTION_48();
    v31(v42);
    v41 = *(v17 + 8);
    v41(v16, v60);
  }

  v0[30] = v31;
  v0[31] = v36;
  v0[29] = v41;
  v43 = v0[2];
  v44 = [objc_allocWithZone(MEMORY[0x277D26858]) initWithModelType:4 safetyType:1];
  v0[32] = v44;
  v0[33] = [objc_opt_self() service];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD73FB0, &qword_231E23560);
  v45 = swift_allocObject();
  v0[34] = v45;
  *(v45 + 16) = xmmword_231E13420;
  *(v45 + 32) = v44;
  v46 = v44;
  v47 = sub_231E0F740();
  v49 = v48;
  v0[35] = v48;
  v50 = swift_task_alloc();
  v0[36] = v50;
  *v50 = v0;
  v50[1] = sub_231D2AD44;
  v51 = v0[2];

  return sub_231D2B9A8(v45, v51, v47, v49);
}

uint64_t sub_231D2AD44()
{
  v2 = *v1;
  v3 = *v1;
  OUTLINED_FUNCTION_4();
  *v4 = v3;
  v5 = v2[36];
  *v4 = *v1;
  v3[37] = v0;

  v6 = v2[35];
  v7 = v2[34];
  if (v0)
  {
    v8 = v3[32];

    v9 = sub_231D2B598;
  }

  else
  {

    v9 = sub_231D2AEA0;
  }

  return MEMORY[0x2822009F8](v9, 0, 0);
}

uint64_t sub_231D2AEA0()
{
  v128 = v0;
  v1 = sub_231D2C414(*(v0 + 256));
  if (!v1)
  {
LABEL_12:
    v125 = *(v0 + 224);
    v122 = *(v0 + 216);
    v47 = *(v0 + 200);
    v46 = *(v0 + 208);
    v48 = *(v0 + 192);
    v49 = *(v0 + 104);
    v50 = *(v0 + 80);
    v51 = *(v0 + 56);
    v53 = *(v0 + 24);
    v52 = *(v0 + 32);
    v54 = *(v0 + 16);
    (*(v0 + 184))(*(v0 + 152), *(v0 + 176), *(v0 + 128));
    v47(v49, v54, v50);
    v122(v51, v53, v52);
    v55 = sub_231E10E10();
    v110 = sub_231E11AD0();
    v126 = v55;
    v56 = os_log_type_enabled(v55, v110);
    v57 = *(v0 + 240);
    logb = *(v0 + 248);
    v119 = *(v0 + 256);
    v58 = *(v0 + 232);
    v59 = *(v0 + 128);
    v123 = *(v0 + 136);
    v60 = *(v0 + 104);
    v61 = *(v0 + 80);
    v62 = *(v0 + 88);
    v63 = *(v0 + 56);
    v64 = *(v0 + 32);
    v113 = *(v0 + 40);
    if (v56)
    {
      v106 = *(v0 + 264);
      v108 = *(v0 + 152);
      v65 = swift_slowAlloc();
      v127 = OUTLINED_FUNCTION_68();
      *v65 = 136643075;
      OUTLINED_FUNCTION_0_19();
      sub_231D2C3CC(v66, v67);
      v103 = v59;
      v104 = v58;
      v68 = sub_231E120D0();
      v70 = v69;
      v71 = OUTLINED_FUNCTION_48();
      v57(v71);
      v72 = sub_231CB5000(v68, v70, &v127);

      *(v65 + 4) = v72;
      *(v65 + 12) = 2082;
      OUTLINED_FUNCTION_1_14();
      sub_231D2C3CC(v73, v74);
      sub_231E120D0();
      v75 = OUTLINED_FUNCTION_10_9();
      v76(v75);
      v77 = OUTLINED_FUNCTION_48();
      v80 = sub_231CB5000(v77, v78, v79);

      *(v65 + 14) = v80;
      _os_log_impl(&dword_231CAE000, v126, v110, "Did not retrieve caption for attachment: %{sensitive}s; type: %{public}s", v65, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_30();
      OUTLINED_FUNCTION_30();

      v104(v108, v103);
    }

    else
    {

      v81 = OUTLINED_FUNCTION_10_9();
      v82(v81);
      v83 = OUTLINED_FUNCTION_48();
      v57(v83);
      v84 = OUTLINED_FUNCTION_9_8();
      v58(v84, v59);
    }

    v124 = 0;
    v121 = 0;
    goto LABEL_16;
  }

  v2 = v1;
  result = sub_231CBA138(v1);
  if (!result)
  {

    goto LABEL_12;
  }

  if ((v2 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x23837D2A0](0, v2);
  }

  else
  {
    if (!*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v4 = *(v2 + 32);
  }

  v5 = v4;

  objc_opt_self();
  v6 = swift_dynamicCastObjCClass();
  if (!v6 || (v7 = sub_231D2C48C(v6), !v8))
  {

    goto LABEL_12;
  }

  v118 = v5;
  v121 = v8;
  v124 = v7;
  v111 = *(v0 + 216);
  loga = *(v0 + 224);
  v10 = *(v0 + 200);
  v9 = *(v0 + 208);
  v11 = *(v0 + 192);
  v12 = *(v0 + 112);
  v13 = *(v0 + 80);
  v14 = *(v0 + 64);
  v16 = *(v0 + 24);
  v15 = *(v0 + 32);
  v17 = *(v0 + 16);
  (*(v0 + 184))(*(v0 + 160), *(v0 + 176), *(v0 + 128));
  v10(v12, v17, v13);
  v111(v14, v16, v15);
  v18 = sub_231E10E10();
  v102 = sub_231E11AF0();
  log = v18;
  v19 = os_log_type_enabled(v18, v102);
  v107 = *(v0 + 264);
  v109 = *(v0 + 256);
  v20 = *(v0 + 240);
  v21 = *(v0 + 232);
  v22 = *(v0 + 160);
  v23 = *(v0 + 128);
  v112 = *(v0 + 136);
  v24 = *(v0 + 112);
  v26 = *(v0 + 80);
  v25 = *(v0 + 88);
  v27 = *(v0 + 64);
  v29 = *(v0 + 32);
  v28 = *(v0 + 40);
  v105 = *(v0 + 248);
  if (v19)
  {
    v101 = *(v0 + 128);
    v30 = swift_slowAlloc();
    v127 = OUTLINED_FUNCTION_68();
    *v30 = 136643075;
    OUTLINED_FUNCTION_0_19();
    sub_231D2C3CC(v31, v32);
    v99 = v22;
    v100 = v21;
    v33 = sub_231E120D0();
    v35 = v34;
    v36 = OUTLINED_FUNCTION_12_9();
    v20(v36);
    v37 = sub_231CB5000(v33, v35, &v127);

    *(v30 + 4) = v37;
    *(v30 + 12) = 2082;
    OUTLINED_FUNCTION_1_14();
    sub_231D2C3CC(v38, v39);
    v40 = sub_231E120D0();
    v42 = v41;
    v43 = OUTLINED_FUNCTION_9_8();
    v44(v43, v29);
    v45 = sub_231CB5000(v40, v42, &v127);

    *(v30 + 14) = v45;
    _os_log_impl(&dword_231CAE000, log, v102, "Retrieved caption for attachment: %{sensitive}s; type: %{public}s", v30, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_30();
    OUTLINED_FUNCTION_30();

    v100(v99, v101);
  }

  else
  {

    v96 = OUTLINED_FUNCTION_9_8();
    v97(v96, v29);
    v98 = OUTLINED_FUNCTION_12_9();
    v20(v98);
    v21(v22, v23);
  }

LABEL_16:
  v86 = *(v0 + 160);
  v85 = *(v0 + 168);
  v88 = *(v0 + 144);
  v87 = *(v0 + 152);
  v90 = *(v0 + 112);
  v89 = *(v0 + 120);
  v92 = *(v0 + 96);
  v91 = *(v0 + 104);
  v94 = *(v0 + 64);
  v93 = *(v0 + 72);
  logc = *(v0 + 56);
  v120 = *(v0 + 48);

  OUTLINED_FUNCTION_34();

  return v95(v124, v121);
}

uint64_t sub_231D2B598()
{
  v77 = v0;
  v1 = *(v0 + 256);
  v70 = *(v0 + 224);
  v73 = *(v0 + 296);
  v68 = *(v0 + 216);
  v64 = *(v0 + 200);
  v66 = *(v0 + 208);
  v3 = *(v0 + 184);
  v2 = *(v0 + 192);
  v4 = *(v0 + 176);
  v5 = *(v0 + 144);
  v6 = *(v0 + 128);
  v7 = *(v0 + 96);
  v8 = *(v0 + 80);
  v60 = *(v0 + 48);
  v62 = *(v0 + 32);
  v58 = *(v0 + 24);
  v9 = *(v0 + 16);

  v3(v5, v4, v6);
  v64(v7, v9, v8);
  v68(v60, v58, v62);
  v10 = v73;
  v11 = sub_231E10E10();
  LOBYTE(v9) = sub_231E11AD0();

  v63 = v9;
  v74 = v11;
  v12 = os_log_type_enabled(v11, v9);
  v13 = *(v0 + 240);
  v67 = *(v0 + 248);
  v69 = *(v0 + 296);
  v14 = *(v0 + 232);
  v15 = *(v0 + 144);
  v71 = *(v0 + 136);
  v16 = *(v0 + 128);
  v18 = *(v0 + 88);
  v17 = *(v0 + 96);
  v19 = *(v0 + 80);
  v20 = *(v0 + 48);
  v65 = *(v0 + 40);
  v21 = *(v0 + 32);
  if (v12)
  {
    v61 = *(v0 + 128);
    v22 = swift_slowAlloc();
    v56 = swift_slowAlloc();
    v76 = OUTLINED_FUNCTION_68();
    *v22 = 136643331;
    OUTLINED_FUNCTION_0_19();
    sub_231D2C3CC(v23, v24);
    v57 = v15;
    v59 = v14;
    v25 = sub_231E120D0();
    v27 = v26;
    v28 = OUTLINED_FUNCTION_12_9();
    v13(v28);
    v29 = sub_231CB5000(v25, v27, &v76);

    *(v22 + 4) = v29;
    *(v22 + 12) = 2082;
    OUTLINED_FUNCTION_1_14();
    sub_231D2C3CC(v30, v31);
    v32 = sub_231E120D0();
    v34 = v33;
    v35 = OUTLINED_FUNCTION_11_11();
    v36(v35);
    v37 = sub_231CB5000(v32, v34, &v76);

    *(v22 + 14) = v37;
    *(v22 + 22) = 2112;
    v38 = v69;
    v39 = _swift_stdlib_bridgeErrorToNSError();
    *(v22 + 24) = v39;
    *v56 = v39;
    _os_log_impl(&dword_231CAE000, v74, v63, "Failed to retrieve caption for attachment: %{sensitive}s; type: %{public}s; error: %@", v22, 0x20u);
    sub_231CC340C(v56);
    OUTLINED_FUNCTION_30();
    swift_arrayDestroy();
    OUTLINED_FUNCTION_30();
    OUTLINED_FUNCTION_30();

    v59(v57, v61);
  }

  else
  {

    v40 = OUTLINED_FUNCTION_11_11();
    v41(v40);
    v42 = OUTLINED_FUNCTION_12_9();
    v13(v42);
    v43 = OUTLINED_FUNCTION_9_8();
    v14(v43, v16);
  }

  v45 = *(v0 + 160);
  v44 = *(v0 + 168);
  v47 = *(v0 + 144);
  v46 = *(v0 + 152);
  v49 = *(v0 + 112);
  v48 = *(v0 + 120);
  v51 = *(v0 + 96);
  v50 = *(v0 + 104);
  v53 = *(v0 + 64);
  v52 = *(v0 + 72);
  v72 = *(v0 + 56);
  v75 = *(v0 + 48);

  OUTLINED_FUNCTION_34();

  return v54(0, 0);
}

uint64_t sub_231D2B9A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[9] = a4;
  v5[10] = v4;
  v5[7] = a2;
  v5[8] = a3;
  v5[6] = a1;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t sub_231D2B9C4()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 80);
  v3 = *(v0 + 64);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74BA8, &qword_231E1C420);
  v10 = *(v0 + 48);
  inited = swift_initStackObject();
  *(v0 + 88) = inited;
  *(inited + 24) = 0;
  *(inited + 16) = 0;
  *(inited + 20) = 1;
  v5 = swift_task_alloc();
  *(v0 + 96) = v5;
  *(v5 + 16) = inited;
  *(v5 + 24) = v2;
  *(v5 + 32) = v10;
  *(v5 + 48) = v3;
  *(v5 + 56) = v1;
  v6 = swift_task_alloc();
  *(v0 + 104) = v6;
  *(v6 + 16) = inited;
  *(v6 + 24) = v2;
  v7 = *(MEMORY[0x277D85A10] + 4);
  v8 = swift_task_alloc();
  *(v0 + 112) = v8;
  *v8 = v0;
  v8[1] = sub_231D2BB20;

  return MEMORY[0x282200830]();
}

uint64_t sub_231D2BB20()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21();
  v3 = v2;
  v4 = v2[14];
  v5 = *v1;
  OUTLINED_FUNCTION_4();
  *v6 = v5;
  v3[15] = v0;

  if (v0)
  {
    v7 = sub_231D2BC34;
  }

  else
  {
    v9 = v3[12];
    v8 = v3[13];

    v7 = OUTLINED_FUNCTION_9_7;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_231D2BC34()
{
  OUTLINED_FUNCTION_18();
  v2 = v0[12];
  v1 = v0[13];

  v3 = v0[1];
  v4 = v0[15];

  return v3();
}

uint64_t sub_231D2BC9C()
{
  OUTLINED_FUNCTION_18();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_231D2BD34;

  return sub_231D2A754();
}

uint64_t sub_231D2BD34()
{
  OUTLINED_FUNCTION_18();
  v2 = v1;
  v4 = v3;
  OUTLINED_FUNCTION_21();
  v6 = *(v5 + 16);
  v7 = *v0;
  OUTLINED_FUNCTION_4();
  *v8 = v7;

  OUTLINED_FUNCTION_34();

  return v9(v4, v2);
}

uint64_t sub_231D2BE24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[6] = a6;
  v7[7] = a7;
  v7[4] = a4;
  v7[5] = a5;
  v7[2] = a2;
  v7[3] = a3;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t sub_231D2BE40()
{
  v2 = *(v0 + 48);
  v1 = *(v0 + 56);
  v3 = swift_task_alloc();
  *(v0 + 64) = v3;
  v4 = *(v0 + 32);
  *(v3 + 16) = *(v0 + 16);
  *(v3 + 32) = v4;
  *(v3 + 48) = v2;
  *(v3 + 56) = v1;
  v5 = *(MEMORY[0x277D85A40] + 4);
  v6 = swift_task_alloc();
  *(v0 + 72) = v6;
  *v6 = v0;
  v6[1] = sub_231D2BF3C;

  return MEMORY[0x2822008A0]();
}

uint64_t sub_231D2BF3C()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21();
  v3 = v2;
  v4 = *(v2 + 72);
  v5 = *v1;
  OUTLINED_FUNCTION_4();
  *v6 = v5;
  *(v3 + 80) = v0;

  if (v0)
  {
    v7 = sub_231D2C0C0;
  }

  else
  {
    v8 = *(v3 + 64);

    v7 = sub_231D2C048;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_231D2C048()
{
  OUTLINED_FUNCTION_18();
  v1 = *(v0 + 16);
  os_unfair_lock_lock((v1 + 24));
  *(v1 + 16) = 0;
  *(v1 + 20) = 1;
  os_unfair_lock_unlock((v1 + 24));
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_231D2C0C0()
{
  OUTLINED_FUNCTION_18();
  v1 = v0[8];

  v2 = v0[1];
  v3 = v0[10];

  return v2();
}

void sub_231D2C120(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7)
{
  v22 = a2;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74BB0, &qword_231E234D0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v21 - v13;
  sub_231CC1784(0, &qword_2814CAF50, 0x277D26878);
  v15 = sub_231E11850();
  v16 = sub_231E0F720();
  if (a6)
  {
    a6 = sub_231E115F0();
  }

  (*(v11 + 16))(v14, a7, v10);
  v17 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v18 = swift_allocObject();
  (*(v11 + 32))(v18 + v17, v14, v10);
  aBlock[4] = sub_231D2C704;
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_231D2C354;
  aBlock[3] = &block_descriptor_2;
  v19 = _Block_copy(aBlock);

  v20 = [v22 performRequests:v15 onImageURL:v16 withIdentifier:a6 completionHandler:v19];
  _Block_release(v19);

  *a1 = v20;
  *(a1 + 4) = 0;
}

void sub_231D2C354(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v7 = a3;
  v6(a2, a3);
}

uint64_t sub_231D2C3CC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_231D2C414(void *a1)
{
  v2 = [a1 results];

  if (!v2)
  {
    return 0;
  }

  sub_231CC1784(0, &qword_27DD74BA0, 0x277D26880);
  v3 = sub_231E11870();

  return v3;
}

uint64_t sub_231D2C48C(void *a1)
{
  v1 = [a1 caption];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_231E11620();

  return v3;
}

uint64_t sub_231D2C500()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v7 = v0[6];
  v6 = v0[7];
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = sub_231D26584;

  return sub_231D2BE24(v8, v2, v3, v4, v5, v7, v6);
}

void sub_231D2C5C0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  os_unfair_lock_lock(v1 + 6);
  sub_231D2C614(&v1[4]._os_unfair_lock_opaque);
  os_unfair_lock_unlock(v1 + 6);
}

unsigned int *sub_231D2C614(unsigned int *result)
{
  v2 = result;
  if ((result[1] & 1) == 0)
  {
    result = [*(v1 + 16) cancelRequestID_];
  }

  *v2 = 0;
  *(v2 + 4) = 1;
  return result;
}

void sub_231D2C664()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 40);
  v4 = *(v0 + 48);
  os_unfair_lock_lock(v1 + 6);
  sub_231D2C6D0(&v1[4]);
  os_unfair_lock_unlock(v1 + 6);
}

uint64_t sub_231D2C704(uint64_t a1, void *a2)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74BB0, &qword_231E234D0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  if (!a2)
  {
    return sub_231E11940();
  }

  v5 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74BB0, &qword_231E234D0);
  return sub_231E11930();
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_231D2C7E0(uint64_t a1, int a2)
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

uint64_t sub_231D2C800(uint64_t result, int a2, int a3)
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

void type metadata accessor for os_unfair_lock_s()
{
  if (!qword_2814CBDB0)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_2814CBDB0);
    }
  }
}

uint64_t sub_231D2C8B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __int128 *a3@<X2>, void *a4@<X8>)
{
  *a4 = a1;
  a4[1] = a2;
  return sub_231CB6D84(a3, (a4 + 2));
}

uint64_t sub_231D2C8C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[4] = a4;
  v5[5] = v4;
  v5[2] = a1;
  v5[3] = a3;
  v6 = sub_231E0F950();
  v5[6] = v6;
  v7 = *(v6 - 8);
  v5[7] = v7;
  v8 = *(v7 + 64) + 15;
  v5[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_231D2C984, 0, 0);
}

uint64_t sub_231D2C984()
{
  if (sub_231D2CF78(1, v0[4], sub_231D2D37C, &type metadata for SummarizationManager.Option, sub_231D2D3D0) || (v1 = v0[5], v2 = sub_231E108E0(), v2 == 2) || (v2 & 1) == 0)
  {
    OUTLINED_FUNCTION_2_15();
    goto LABEL_8;
  }

  v3 = v0[5];
  v4 = sub_231E10910();
  v6 = v5;
  v0[9] = v5;
  if (!v5)
  {
    goto LABEL_8;
  }

  v7 = v4;
  sub_231DAA834(v4, v5);
  v9 = v8;
  type metadata accessor for AssetManager();
  sub_231D45490();
  v11 = sub_231D2CF78(v9, v10, sub_231D2D2D4, &type metadata for AppCategoryID, sub_231D2D328);

  if (v11)
  {
LABEL_6:

LABEL_8:
    v12 = v0[8];

    v13 = OUTLINED_FUNCTION_0_20();

    return v14(v13);
  }

  sub_231D45834();
  v17 = sub_231D24924(v7, v6, v16);

  if (v17)
  {
    goto LABEL_8;
  }

  v18 = v0[5];
  v19 = v0[2];
  v20 = *v19;
  v21 = *(*v19 + 16);
  sub_231E109B0();
  if (v22)
  {
    v23 = sub_231E116F0();
  }

  else
  {
    v23 = 0;
  }

  v24 = v0[5];
  sub_231E10920();
  sub_231D14A1C();
  v26 = v25;

  v27 = v23 + v26;
  if (__OFADD__(v23, v26))
  {
    __break(1u);
    goto LABEL_34;
  }

  result = sub_231DC3C70(v20);
  v28 = __OFADD__(v27, result);
  v29 = v27 + result;
  if (v28)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  result = sub_231DC3C70(*(v0[2] + 8));
  v30 = v29 + result;
  if (__OFADD__(v29, result))
  {
LABEL_35:
    __break(1u);
    return result;
  }

  if (v21)
  {
LABEL_20:

    OUTLINED_FUNCTION_2_15();
    goto LABEL_8;
  }

  v31 = sub_231CC8B18();
  if (v32)
  {
    v31 = sub_231D11754();
  }

  if (v30 < v31)
  {
    goto LABEL_6;
  }

  v33 = v0[5];
  v34 = sub_231E10A00();
  if (v35)
  {
    v36 = v34;
    v37 = v35;
    v38 = v0[5];
    v39 = sub_231E108E0();
    if (v39 == 2 || (v39 & 1) == 0)
    {
    }

    else
    {
      v41 = v0[7];
      v40 = v0[8];
      v53 = v0[6];
      v42 = v0[2];
      v43 = v42[5];
      v44 = v42[6];
      __swift_project_boxed_opaque_existential_0(v42 + 2, v43);
      sub_231D11E04();
      sub_231E0F8F0();
      v45 = (*(v44 + 16))(v36, v37, v7, v6, v40, v43, v44);

      v34 = (*(v41 + 8))(v40, v53);
      if (v45)
      {
        goto LABEL_20;
      }
    }
  }

  v46 = v0[8];
  v47 = v0[3];
  sub_231DB0818(v34);
  v48 = *(*v47 + 136);
  v54 = (v48 + *v48);
  v49 = v48[1];
  v50 = swift_task_alloc();
  v0[10] = v50;
  *v50 = v0;
  v50[1] = sub_231D2CDFC;
  v51 = v0[8];
  v52 = v0[3];

  return (v54)(v7, v6, v51, 0);
}

uint64_t sub_231D2CDFC()
{
  OUTLINED_FUNCTION_1_15();
  v2 = v1;
  v3 = v1[10];
  v4 = v1[9];
  v5 = v1[8];
  v6 = v1[7];
  v7 = v1[6];
  v12 = *v0;

  (*(v6 + 8))(v5, v7);
  v8 = v2[8];

  v9 = OUTLINED_FUNCTION_0_20();

  return v10(v9);
}

BOOL sub_231D2CF78(uint64_t a1, uint64_t a2, void (*a3)(void), uint64_t a4, void (*a5)(void))
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v7 = *(a2 + 40);
  a3();
  v8 = sub_231E11550();
  v9 = ~(-1 << *(a2 + 32));
  do
  {
    v10 = v8 & v9;
    v11 = (1 << (v8 & v9)) & *(a2 + 56 + (((v8 & v9) >> 3) & 0xFFFFFFFFFFFFFF8));
    v12 = v11 != 0;
    if (!v11)
    {
      break;
    }

    v15 = *(*(a2 + 48) + v10);
    a5();
    v13 = sub_231E115D0();
    v8 = v10 + 1;
  }

  while ((v13 & 1) == 0);
  return v12;
}

uint64_t sub_231D2D07C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_231D2D128;

  return sub_231D2C8C0(a1, v9, a3, a4);
}

uint64_t sub_231D2D128()
{
  OUTLINED_FUNCTION_1_15();
  v2 = *(v1 + 16);
  v6 = *v0;

  v3 = OUTLINED_FUNCTION_0_20();

  return v4(v3);
}

__n128 __swift_memcpy56_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_231D2D238(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 56))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_231D2D278(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

unint64_t sub_231D2D2D4()
{
  result = qword_2814CB790;
  if (!qword_2814CB790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814CB790);
  }

  return result;
}

unint64_t sub_231D2D328()
{
  result = qword_2814CB788;
  if (!qword_2814CB788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814CB788);
  }

  return result;
}

unint64_t sub_231D2D37C()
{
  result = qword_2814CBBA8;
  if (!qword_2814CBBA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814CBBA8);
  }

  return result;
}

unint64_t sub_231D2D3D0()
{
  result = qword_2814CBBA0;
  if (!qword_2814CBBA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814CBBA0);
  }

  return result;
}

uint64_t sub_231D2D43C()
{
  v0 = swift_allocObject();
  *(v0 + 16) = [objc_allocWithZone(MEMORY[0x277D1F4C0]) init];
  return v0;
}

uint64_t sub_231D2D48C()
{
  v1 = sub_231E10DB0();
  v0[2] = v1;
  v2 = *(v1 - 8);
  v0[3] = v2;
  v3 = *(v2 + 64) + 15;
  v0[4] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_231D2D548, 0, 0);
}

uint64_t sub_231D2D548()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = v0[2];
  v4 = sub_231DC4F9C();
  (*(v2 + 16))(v1, v4, v3);
  sub_231DC58D0("Mail.KnownSenderResolution", 26, 2, nullsub_1);
  (*(v2 + 8))(v1, v3);

  v5 = v0[1];

  return v5(2);
}

uint64_t sub_231D2D63C()
{

  return swift_deallocClassInstance();
}

uint64_t sub_231D2D674()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_231CC2A9C;

  return sub_231D2D48C();
}

uint64_t sub_231D2D724(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[9] = a4;
  v5[10] = v4;
  v5[7] = a2;
  v5[8] = a3;
  v5[6] = a1;
  return MEMORY[0x2822009F8](sub_231D2D74C, 0, 0);
}

uint64_t sub_231D2D74C()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 56);
  v3 = swift_task_alloc();
  *(v0 + 88) = v3;
  *(v3 + 16) = *(v0 + 64);
  *(v3 + 32) = v1;
  *(v3 + 40) = v2;
  v4 = swift_task_alloc();
  *(v0 + 96) = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74BB8, &qword_231E1E1C0);
  *v4 = v0;
  v4[1] = sub_231D2D848;
  v5 = *(v0 + 48);

  return sub_231DDB61C();
}

void sub_231D2D848()
{
  v2 = *v1;
  v3 = *(*v1 + 96);
  v4 = *v1;
  OUTLINED_FUNCTION_4();
  *v5 = v4;

  if (v0)
  {
  }

  else
  {
    v6 = *(v2 + 88);

    MEMORY[0x2822009F8](sub_231D2D97C, 0, 0);
  }
}

uint64_t sub_231D2D97C()
{
  v1 = v0[9];
  v2 = v0[10];
  v3 = v0[8];
  v4 = v0[5];
  v5 = v0[6];
  sub_231E10780();
  sub_231E10770();
  sub_231D14B68();
  LOBYTE(v1) = v6;

  LOBYTE(v2) = v1 & 1;
  v7 = OBJC_IVAR____TtC22ProactiveSummarization22SummarizationAnalytics_captioningResult;
  swift_beginAccess();
  *(v5 + v7) = v2;
  OUTLINED_FUNCTION_19();

  return v8();
}

uint64_t sub_231D2DA38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v6 = sub_231E107F0();
  v5[7] = v6;
  v7 = *(v6 - 8);
  v5[8] = v7;
  v8 = *(v7 + 64) + 15;
  v5[9] = swift_task_alloc();
  v5[10] = swift_task_alloc();
  v5[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_231D2DB18, 0, 0);
}

uint64_t sub_231D2DB18()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);
  v3 = *(v0 + 24);
  v4 = sub_231E10770();
  *(v0 + 96) = v4;
  v5 = *(v4 + 16);
  *(v0 + 104) = v5;
  if (v5)
  {
    v6 = 0;
    v7 = *(v0 + 64);
    v8 = *(v7 + 80);
    *(v0 + 160) = v8;
    v9 = *(v7 + 72);
    *(v0 + 112) = v9;
    v10 = *(v7 + 16);
    *(v0 + 120) = v10;
    v11 = MEMORY[0x277D84F90];
    while (1)
    {
      *(v0 + 136) = v6;
      *(v0 + 144) = v11;
      *(v0 + 128) = 0;
      v10(*(v0 + 88), v4 + ((v8 + 32) & ~v8) + v9 * v6, *(v0 + 56));
      if (sub_231D14050() && sub_231D1265C() >= 1)
      {
        break;
      }

      v12 = OUTLINED_FUNCTION_3_15();
      v13(v12);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v11 = OUTLINED_FUNCTION_1_16();
      }

      v15 = *(v11 + 16);
      v14 = *(v11 + 24);
      if (v15 >= v14 >> 1)
      {
        v16 = sub_231D2E2AC(v14 > 1, v15 + 1, 1, v11);
      }

      else
      {
        v16 = v11;
      }

      v18 = *(v0 + 64);
      v17 = *(v0 + 72);
      v20 = *(v0 + 104);
      v19 = *(v0 + 112);
      v21 = *(v0 + 56);
      v22 = *(v0 + 136) + 1;
      v23 = (*(v0 + 160) + 32) & ~*(v0 + 160);
      (*(v18 + 8))(*(v0 + 88), v21);
      *(v16 + 16) = v15 + 1;
      v24 = v16 + v23;
      v11 = v16;
      (*(v18 + 32))(v24 + v19 * v15, v17, v21);
      if (v22 == v20)
      {
        v26 = *(v0 + 96);

        goto LABEL_14;
      }

      v6 = *(v0 + 136) + 1;
      v9 = *(v0 + 112);
      v10 = *(v0 + 120);
      LOBYTE(v8) = *(v0 + 160);
      v4 = *(v0 + 96);
      v25 = *(v0 + 64);
    }

    v29 = swift_task_alloc();
    *(v0 + 152) = v29;
    *v29 = v0;
    v30 = OUTLINED_FUNCTION_0_21(v29);

    return sub_231D140EC(v30, v31);
  }

  else
  {

LABEL_14:
    OUTLINED_FUNCTION_5_14();

    OUTLINED_FUNCTION_19();

    return v27();
  }
}

uint64_t sub_231D2DD94()
{
  v1 = *(*v0 + 152);
  v2 = *v0;
  OUTLINED_FUNCTION_4();
  *v3 = v2;

  return MEMORY[0x2822009F8](sub_231D2DE88, 0, 0);
}

uint64_t sub_231D2DE88()
{
  v1 = *(v0 + 144);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v3 = *(v0 + 144);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v3 = OUTLINED_FUNCTION_1_16();
  }

  v5 = *(v3 + 16);
  v4 = *(v3 + 24);
  v6 = v5 + 1;
  if (v5 >= v4 >> 1)
  {
    v3 = sub_231D2E2AC(v4 > 1, v5 + 1, 1, v3);
  }

  v7 = (v0 + 80);
  v25 = *(v0 + 128) + 1;
  while (1)
  {
    v26 = *v7;
    v9 = *(v0 + 104);
    v8 = *(v0 + 112);
    v10 = *(v0 + 56);
    v11 = *(v0 + 64);
    v12 = *(v0 + 136) + 1;
    v13 = (*(v0 + 160) + 32) & ~*(v0 + 160);
    (*(v11 + 8))(*(v0 + 88), v10);
    *(v3 + 16) = v6;
    (*(v11 + 32))(v3 + v13 + v8 * v5, v26, v10);
    if (v12 == v9)
    {
      break;
    }

    v14 = *(v0 + 136) + 1;
    *(v0 + 136) = v14;
    *(v0 + 144) = v3;
    *(v0 + 128) = v25;
    v15 = *(v0 + 64) + 16;
    (*(v0 + 120))(*(v0 + 88), *(v0 + 96) + ((*(v0 + 160) + 32) & ~*(v0 + 160)) + *(v0 + 112) * v14, *(v0 + 56));
    if (sub_231D14050() && v25 < sub_231D1265C())
    {
      v22 = swift_task_alloc();
      *(v0 + 152) = v22;
      *v22 = v0;
      v23 = OUTLINED_FUNCTION_0_21();

      return sub_231D140EC(v23, v24);
    }

    v16 = OUTLINED_FUNCTION_3_15();
    v17(v16);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v3 = OUTLINED_FUNCTION_1_16();
    }

    v5 = *(v3 + 16);
    v18 = *(v3 + 24);
    v6 = v5 + 1;
    v7 = (v0 + 72);
    if (v5 >= v18 >> 1)
    {
      v3 = sub_231D2E2AC(v18 > 1, v5 + 1, 1, v3);
      v7 = (v0 + 72);
    }
  }

  v19 = *(v0 + 96);

  OUTLINED_FUNCTION_5_14();

  OUTLINED_FUNCTION_19();

  return v20();
}

uint64_t sub_231D2E104(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_231D2E1C4;

  return sub_231D2DA38(a1, v7, v6, v4, v5);
}

uint64_t sub_231D2E1C4()
{
  v1 = *(*v0 + 16);
  v2 = *v0;
  OUTLINED_FUNCTION_4();
  *v3 = v2;

  OUTLINED_FUNCTION_19();

  return v4();
}

size_t sub_231D2E2AC(size_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
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

  v8 = *(a4 + 16);
  v9 = sub_231D2E398(v8, v7);
  v10 = *(sub_231E107F0() - 8);
  if (v5)
  {
    v11 = (*(v10 + 80) + 32) & ~*(v10 + 80);
    sub_231D2E494(a4 + v11, v8, v9 + v11);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v9;
}

size_t sub_231D2E398(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74BC0, &qword_231E1C578);
  v4 = *(sub_231E107F0() - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v7);
  if (v5)
  {
    if (result - v6 != 0x8000000000000000 || v5 != -1)
    {
      v7[2] = a1;
      v7[3] = 2 * ((result - v6) / v5);
      return v7;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_231D2E494(unint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a3 < a1 || (result = sub_231E107F0(), a1 + *(*(result - 8) + 72) * a2 <= a3))
  {
    sub_231E107F0();

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (a3 != a1)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

size_t OUTLINED_FUNCTION_1_16()
{
  v2 = *(v0 + 16) + 1;

  return sub_231D2E2AC(0, v2, 1, v0);
}

uint64_t OUTLINED_FUNCTION_3_15()
{
  v1 = v0[15];
  v2 = v0[11];
  result = v0[9];
  v4 = v0[7];
  return result;
}

uint64_t sub_231D2E5A0()
{
  v1 = v0;
  v2 = sub_231E10E30();
  v3 = OUTLINED_FUNCTION_24(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3);
  v9 = &v63 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74458, &qword_231E15D38);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v73 = &v63 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74A70, &qword_231E1C0B8);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &v63 - v15;
  v17 = sub_231E107F0();
  v18 = OUTLINED_FUNCTION_24(v17);
  v64 = v19;
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v18);
  v72 = &v63 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_231CE1178([v0 attributeSet], &selRef_attachmentPaths);
  v24 = MEMORY[0x277D84F90];
  if (v23)
  {
    v25 = v23;
  }

  else
  {
    v25 = MEMORY[0x277D84F90];
  }

  v26 = sub_231CE1178([v1 attributeSet], &selRef_attachmentNames);
  if (v26)
  {
    v27 = v26;
  }

  else
  {
    v27 = v24;
  }

  v28 = sub_231CE1178([v1 attributeSet], &selRef_attachmentTypes);
  if (v28)
  {
    v29 = v28;
  }

  else
  {
    v29 = v24;
  }

  v30 = v29;
  result = sub_231CE1178([v1 attributeSet], &selRef_attachmentCaptions);
  if (result)
  {
    v32 = result;
  }

  else
  {
    v32 = v24;
  }

  v65 = v32;
  v74 = v25;
  v75 = v27;
  v33 = *(v25 + 16);
  if (v33 != *(v27 + 16) || v33 != *(v30 + 16))
  {

    v52 = sub_231DC4C74();
    (*(v5 + 16))(v9, v52, v2);
    v53 = v1;
    v54 = sub_231E10E10();
    v55 = sub_231E11AD0();

    if (os_log_type_enabled(v54, v55))
    {
      v56 = swift_slowAlloc();
      v57 = swift_slowAlloc();
      v78 = v57;
      *v56 = 136315138;
      v58 = [v53 uniqueIdentifier];
      v59 = sub_231E11620();
      v61 = v60;

      v62 = sub_231CB5000(v59, v61, &v78);

      *(v56 + 4) = v62;
      _os_log_impl(&dword_231CAE000, v54, v55, "Mismatched attachment attributes for item with id: %s", v56, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v57);
      MEMORY[0x23837E1D0](v57, -1, -1);
      MEMORY[0x23837E1D0](v56, -1, -1);
    }

    (*(v5 + 8))(v9, v2);
    return MEMORY[0x277D84F90];
  }

  if (!v33)
  {

    v36 = MEMORY[0x277D84F90];
LABEL_37:

    return v36;
  }

  v34 = 0;
  v35 = 0;
  v71 = *(v65 + 16);
  v66 = (v64 + 32);
  v36 = MEMORY[0x277D84F90];
  v69 = v17;
  v70 = v16;
  v67 = v33;
  v68 = v30;
  while (1)
  {
    v77 = v36;
    if (v71 != v33)
    {
LABEL_23:
      v76 = 0;
      goto LABEL_24;
    }

    if (v35 >= *(v65 + 16))
    {
      break;
    }

    v37 = *(v65 + v34 + 40);
    v38 = HIBYTE(v37) & 0xF;
    if ((v37 & 0x2000000000000000) == 0)
    {
      v38 = *(v65 + v34 + 32) & 0xFFFFFFFFFFFFLL;
    }

    if (!v38)
    {
      goto LABEL_23;
    }

    v39 = *(v65 + v34 + 40);
    v76 = *(v65 + v34 + 32);

LABEL_24:
    v41 = *(v30 + v34 + 32);
    v40 = *(v30 + v34 + 40);
    v42 = sub_231E0FD90();
    __swift_storeEnumTagSinglePayload(v73, 1, 1, v42);
    v44 = *(v75 + v34 + 32);
    v43 = *(v75 + v34 + 40);
    v45 = *(v74 + v34 + 32);
    v46 = *(v74 + v34 + 40);

    v47 = v70;
    sub_231E107C0();
    v48 = v69;
    if (__swift_getEnumTagSinglePayload(v47, 1, v69) == 1)
    {
      result = sub_231D2EBEC(v47);
      v36 = v77;
    }

    else
    {
      v49 = *v66;
      (*v66)(v72, v47, v48);
      v36 = v77;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v36 = sub_231D2E2AC(0, *(v36 + 16) + 1, 1, v36);
      }

      v51 = *(v36 + 16);
      v50 = *(v36 + 24);
      if (v51 >= v50 >> 1)
      {
        v36 = sub_231D2E2AC(v50 > 1, v51 + 1, 1, v36);
      }

      *(v36 + 16) = v51 + 1;
      result = (v49)(v36 + ((*(v64 + 80) + 32) & ~*(v64 + 80)) + *(v64 + 72) * v51, v72, v48);
    }

    ++v35;
    v34 += 16;
    v33 = v67;
    v30 = v68;
    if (v67 == v35)
    {

      goto LABEL_37;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_231D2EBEC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74A70, &qword_231E1C0B8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_231D2EC54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v10 = swift_allocObject();
  *(v10 + 16) = 0;
  v21 = sub_231D2EE2C;
  v22 = 0;
  v17 = MEMORY[0x277D85DD0];
  v18 = 1107296256;
  v19 = sub_231D2F010;
  v20 = &block_descriptor_3;
  v11 = _Block_copy(&v17);
  v12 = swift_allocObject();
  v12[2] = a3;
  v12[3] = a4;
  v12[4] = a1;
  v12[5] = a2;
  v12[6] = v10;
  v21 = sub_231D2F090;
  v22 = v12;
  v17 = MEMORY[0x277D85DD0];
  v18 = 1107296256;
  v19 = sub_231D2F250;
  v20 = &block_descriptor_6_0;
  v13 = _Block_copy(&v17);

  v14 = [a5 sinkWithCompletion:v11 shouldContinue:v13];
  _Block_release(v13);
  _Block_release(v11);

  swift_beginAccess();
  v15 = *(v10 + 16);

  return v15;
}

id sub_231D2EE2C(void *a1)
{
  v2 = sub_231E10E30();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [a1 error];
  if (result)
  {
    v8 = result;
    v9 = sub_231CB4EEC();
    (*(v3 + 16))(v6, v9, v2);
    v10 = v8;
    v11 = sub_231E10E10();
    v12 = sub_231E11AD0();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      *v13 = 138412290;
      v15 = v10;
      v16 = _swift_stdlib_bridgeErrorToNSError();
      *(v13 + 4) = v16;
      *v14 = v16;
      _os_log_impl(&dword_231CAE000, v11, v12, "Could not scan app intent stream to find recent user-initiated interactions: %@", v13, 0xCu);
      sub_231CC340C(v14);
      MEMORY[0x23837E1D0](v14, -1, -1);
      MEMORY[0x23837E1D0](v13, -1, -1);
    }

    else
    {
      v15 = v11;
      v11 = v10;
    }

    return (*(v3 + 8))(v6, v2);
  }

  return result;
}

void sub_231D2F010(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_231D2F090(void *a1)
{
  v2 = v1[2];
  v3 = v1[3];
  v5 = v1[4];
  v4 = v1[5];
  v6 = v1[6];
  v7 = [a1 eventBody];
  if (!v7)
  {
    return 1;
  }

  v8 = v7;
  v9 = sub_231CC33AC(v7, &selRef_bundleID);
  if (!v10)
  {
    goto LABEL_26;
  }

  if (v9 == v2 && v10 == v3)
  {
  }

  else
  {
    v12 = sub_231E12100();

    if ((v12 & 1) == 0)
    {
      goto LABEL_26;
    }
  }

  if ([v8 interactionDirection] != 2)
  {
    goto LABEL_26;
  }

  v13 = sub_231CC33AC(v8, &selRef_intentClass);
  if (!v14)
  {
    goto LABEL_26;
  }

  if (v13 == 0xD000000000000013 && v14 == 0x8000000231E32780)
  {
  }

  else
  {
    v16 = sub_231E12100();

    if ((v16 & 1) == 0)
    {
      goto LABEL_26;
    }
  }

  v17 = sub_231CC33AC(v8, &selRef_groupIdentifier);
  if (!v18)
  {
LABEL_26:

    return 1;
  }

  if (v17 == v5 && v18 == v4)
  {

LABEL_30:
    swift_beginAccess();
    result = 0;
    *(v6 + 16) = 1;
    return result;
  }

  v20 = sub_231E12100();

  if (v20)
  {
    goto LABEL_30;
  }

  return 1;
}

uint64_t sub_231D2F250(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  LOBYTE(v4) = v4();

  return v4 & 1;
}

uint64_t sub_231D2F2D4(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = swift_allocObject();
  OUTLINED_FUNCTION_301();
  sub_231D2F338(v6, v7, v8, a4);
  return v5;
}

uint64_t sub_231D2F338(void *__src, __int128 *a2, __int128 *a3, char a4)
{
  v5 = v4;
  memcpy((v5 + 16), __src, 0x80uLL);
  type metadata accessor for SpotlightReader();
  sub_231CE10BC(__src, &v11);
  *(v5 + 144) = sub_231DF7564();
  sub_231CB6D84(a2, v5 + 152);
  sub_231CB6D84(a3, v5 + 192);
  *(v5 + 232) = a4;
  return v5;
}

uint64_t sub_231D2F3D8()
{
  OUTLINED_FUNCTION_18();
  v1[57] = v2;
  v1[58] = v0;
  v1[56] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74510, &qword_231E1E2D0);
  OUTLINED_FUNCTION_47(v4);
  v6 = *(v5 + 64);
  v1[59] = OUTLINED_FUNCTION_55();
  v7 = sub_231E106A0();
  v1[60] = v7;
  OUTLINED_FUNCTION_6(v7);
  v1[61] = v8;
  v10 = *(v9 + 64);
  v1[62] = OUTLINED_FUNCTION_55();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74BC8, &qword_231E1C5D0);
  v1[63] = v11;
  OUTLINED_FUNCTION_6(v11);
  v1[64] = v12;
  v14 = *(v13 + 64);
  v1[65] = OUTLINED_FUNCTION_55();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74BD0, &qword_231E1C5D8);
  v1[66] = v15;
  OUTLINED_FUNCTION_6(v15);
  v1[67] = v16;
  v18 = *(v17 + 64);
  v1[68] = OUTLINED_FUNCTION_55();
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74BD8, &unk_231E1C5E0);
  v1[69] = v19;
  OUTLINED_FUNCTION_6(v19);
  v1[70] = v20;
  v22 = *(v21 + 64);
  v1[71] = OUTLINED_FUNCTION_55();
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74BE0, &qword_231E1CC20);
  OUTLINED_FUNCTION_47(v23);
  v25 = *(v24 + 64);
  v1[72] = OUTLINED_FUNCTION_55();
  v26 = sub_231E10A30();
  v1[73] = v26;
  OUTLINED_FUNCTION_6(v26);
  v1[74] = v27;
  v29 = *(v28 + 64);
  v1[75] = OUTLINED_FUNCTION_55();
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74BE8, &qword_231E1C5F0);
  v1[76] = v30;
  OUTLINED_FUNCTION_6(v30);
  v1[77] = v31;
  v33 = *(v32 + 64);
  v1[78] = OUTLINED_FUNCTION_55();
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74BF0, &qword_231E1C5F8);
  v1[79] = v34;
  OUTLINED_FUNCTION_6(v34);
  v1[80] = v35;
  v37 = *(v36 + 64);
  v1[81] = OUTLINED_FUNCTION_55();
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74BF8, &unk_231E1C600);
  v1[82] = v38;
  OUTLINED_FUNCTION_6(v38);
  v1[83] = v39;
  v41 = *(v40 + 64);
  v1[84] = OUTLINED_FUNCTION_55();
  v42 = sub_231E0FA50();
  v1[85] = v42;
  OUTLINED_FUNCTION_6(v42);
  v1[86] = v43;
  v45 = *(v44 + 64);
  v1[87] = OUTLINED_FUNCTION_55();
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74C00, &unk_231E203C0);
  OUTLINED_FUNCTION_47(v46);
  v48 = *(v47 + 64);
  v1[88] = OUTLINED_FUNCTION_55();
  v49 = sub_231E10010();
  v1[89] = v49;
  OUTLINED_FUNCTION_6(v49);
  v1[90] = v50;
  v52 = *(v51 + 64);
  v1[91] = OUTLINED_FUNCTION_69();
  v1[92] = swift_task_alloc();
  v1[93] = swift_task_alloc();
  v1[94] = swift_task_alloc();
  v1[95] = swift_task_alloc();
  v53 = sub_231E10290();
  v1[96] = v53;
  OUTLINED_FUNCTION_6(v53);
  v1[97] = v54;
  v56 = *(v55 + 64);
  v1[98] = OUTLINED_FUNCTION_55();
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD73F98, &unk_231E170E0);
  OUTLINED_FUNCTION_47(v57);
  v59 = *(v58 + 64);
  v1[99] = OUTLINED_FUNCTION_69();
  v1[100] = swift_task_alloc();
  v60 = sub_231E10210();
  v1[101] = v60;
  OUTLINED_FUNCTION_6(v60);
  v1[102] = v61;
  v63 = *(v62 + 64);
  v1[103] = OUTLINED_FUNCTION_69();
  v1[104] = swift_task_alloc();
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74580, &qword_231E17110);
  OUTLINED_FUNCTION_47(v64);
  v66 = *(v65 + 64);
  v1[105] = OUTLINED_FUNCTION_55();
  v67 = sub_231E10D10();
  v1[106] = v67;
  OUTLINED_FUNCTION_6(v67);
  v1[107] = v68;
  v70 = *(v69 + 64);
  v1[108] = OUTLINED_FUNCTION_55();
  v71 = sub_231E10340();
  v1[109] = v71;
  OUTLINED_FUNCTION_6(v71);
  v1[110] = v72;
  v74 = *(v73 + 64);
  v1[111] = OUTLINED_FUNCTION_69();
  v1[112] = swift_task_alloc();
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74C08, &unk_231E1C610);
  v1[113] = v75;
  OUTLINED_FUNCTION_6(v75);
  v1[114] = v76;
  v78 = *(v77 + 64);
  v1[115] = OUTLINED_FUNCTION_69();
  v1[116] = swift_task_alloc();
  v79 = sub_231E10CF0();
  v1[117] = v79;
  OUTLINED_FUNCTION_6(v79);
  v1[118] = v80;
  v82 = *(v81 + 64);
  v1[119] = OUTLINED_FUNCTION_55();
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74470, &qword_231E17120);
  OUTLINED_FUNCTION_47(v83);
  v85 = *(v84 + 64);
  v1[120] = OUTLINED_FUNCTION_69();
  v1[121] = swift_task_alloc();
  v1[122] = swift_task_alloc();
  v1[123] = swift_task_alloc();
  v1[124] = swift_task_alloc();
  v1[125] = swift_task_alloc();
  v86 = sub_231E106F0();
  v1[126] = v86;
  OUTLINED_FUNCTION_6(v86);
  v1[127] = v87;
  v89 = *(v88 + 64);
  v1[128] = OUTLINED_FUNCTION_69();
  v1[129] = swift_task_alloc();
  v1[130] = swift_task_alloc();
  v1[131] = swift_task_alloc();
  v1[132] = swift_task_alloc();
  v90 = sub_231E0FE20();
  v1[133] = v90;
  OUTLINED_FUNCTION_6(v90);
  v1[134] = v91;
  v93 = *(v92 + 64);
  v1[135] = OUTLINED_FUNCTION_69();
  v1[136] = swift_task_alloc();
  v1[137] = swift_task_alloc();
  v1[138] = swift_task_alloc();
  v1[139] = swift_task_alloc();
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74C10, &qword_231E1C620);
  v1[140] = v94;
  OUTLINED_FUNCTION_6(v94);
  v1[141] = v95;
  v97 = *(v96 + 64);
  v1[142] = OUTLINED_FUNCTION_69();
  v1[143] = swift_task_alloc();
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74C18, &qword_231E1C628);
  v1[144] = v98;
  OUTLINED_FUNCTION_6(v98);
  v1[145] = v99;
  v101 = *(v100 + 64);
  v1[146] = OUTLINED_FUNCTION_69();
  v1[147] = swift_task_alloc();
  v102 = sub_231E0FF70();
  v1[148] = v102;
  OUTLINED_FUNCTION_6(v102);
  v1[149] = v103;
  v105 = *(v104 + 64);
  v1[150] = OUTLINED_FUNCTION_55();
  v106 = sub_231E0FE90();
  v1[151] = v106;
  OUTLINED_FUNCTION_6(v106);
  v1[152] = v107;
  v109 = *(v108 + 64);
  v1[153] = OUTLINED_FUNCTION_55();
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74C20, &unk_231E1C630);
  OUTLINED_FUNCTION_47(v110);
  v112 = *(v111 + 64);
  v1[154] = OUTLINED_FUNCTION_69();
  v1[155] = swift_task_alloc();
  v113 = sub_231E10C90();
  v1[156] = v113;
  OUTLINED_FUNCTION_6(v113);
  v1[157] = v114;
  v116 = *(v115 + 64);
  v1[158] = OUTLINED_FUNCTION_69();
  v1[159] = swift_task_alloc();
  v1[160] = swift_task_alloc();
  v1[161] = swift_task_alloc();
  v117 = sub_231E10E30();
  v1[162] = v117;
  OUTLINED_FUNCTION_6(v117);
  v1[163] = v118;
  v120 = *(v119 + 64);
  v1[164] = OUTLINED_FUNCTION_69();
  v1[165] = swift_task_alloc();
  v1[166] = swift_task_alloc();
  v1[167] = swift_task_alloc();
  v1[168] = swift_task_alloc();
  v1[169] = swift_task_alloc();
  v1[170] = swift_task_alloc();
  v1[171] = swift_task_alloc();
  v1[172] = swift_task_alloc();
  v1[173] = swift_task_alloc();
  v1[174] = swift_task_alloc();
  v121 = sub_231E10CC0();
  v1[175] = v121;
  OUTLINED_FUNCTION_6(v121);
  v1[176] = v122;
  v124 = *(v123 + 64);
  v1[177] = OUTLINED_FUNCTION_69();
  v1[178] = swift_task_alloc();
  v1[179] = swift_task_alloc();
  v1[180] = swift_task_alloc();
  v125 = OUTLINED_FUNCTION_10();

  return MEMORY[0x2822009F8](v125, v126, v127);
}

uint64_t sub_231D2FF20()
{
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_57_0();
  v1 = v0[180];
  v392 = v0[179];
  v2 = v0[176];
  v3 = v0[175];
  v4 = v0[174];
  v5 = v0[163];
  v6 = v0[162];
  v7 = v0[57];
  v8 = *(v2 + 16);
  v0[181] = v8;
  v0[182] = (v2 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  OUTLINED_FUNCTION_263();
  v8();
  v0[183] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74E20, &qword_231E13890);
  v9 = swift_allocObject();
  v0[184] = v9;
  *(v9 + 16) = xmmword_231E1C5A0;
  OUTLINED_FUNCTION_101_3();
  *(v11 + 32) = v10 + 1;
  *(v11 + 40) = v12;
  OUTLINED_FUNCTION_171_0();
  *(v13 + 48) = v14;
  *(v13 + 56) = v15;
  OUTLINED_FUNCTION_171_0();
  *(v17 + 64) = v16 + 9;
  *(v17 + 72) = v18;
  OUTLINED_FUNCTION_171_0();
  v20[10] = v19 - 5;
  v20[11] = v21;
  v20[12] = v19 - 2;
  v20[13] = 0x8000000231E327C0;
  OUTLINED_FUNCTION_171_0();
  *(v22 + 112) = v23;
  *(v22 + 120) = v24;
  OUTLINED_FUNCTION_171_0();
  *(v26 + 128) = v25 - 4;
  *(v26 + 136) = v27;
  OUTLINED_FUNCTION_171_0();
  *(v29 + 144) = v28 + 5;
  *(v29 + 152) = v30;
  OUTLINED_FUNCTION_171_0();
  *(v31 + 160) = v32;
  *(v31 + 168) = v33;
  OUTLINED_FUNCTION_171_0();
  *(v34 + 176) = v35;
  *(v34 + 184) = v36;
  OUTLINED_FUNCTION_171_0();
  *(v38 + 192) = v37 - 7;
  *(v38 + 200) = v39;
  v40 = *MEMORY[0x277CC23A0];
  *(v9 + 208) = sub_231E11620();
  *(v9 + 216) = v41;
  v42 = *MEMORY[0x277CC23A8];
  *(v9 + 224) = sub_231E11620();
  *(v9 + 232) = v43;
  v44 = *MEMORY[0x277CC23B0];
  *(v9 + 240) = sub_231E11620();
  *(v9 + 248) = v45;
  v46 = *MEMORY[0x277CC23C8];
  *(v9 + 256) = sub_231E11620();
  *(v9 + 264) = v47;
  v48 = *MEMORY[0x277CC23D0];
  *(v9 + 272) = sub_231E11620();
  *(v9 + 280) = v49;
  v50 = *MEMORY[0x277CC23E0];
  *(v9 + 288) = sub_231E11620();
  *(v9 + 296) = v51;
  v52 = *MEMORY[0x277CC23E8];
  *(v9 + 304) = sub_231E11620();
  *(v9 + 312) = v53;
  v54 = *MEMORY[0x277CC2488];
  *(v9 + 320) = sub_231E11620();
  *(v9 + 328) = v55;
  v56 = *MEMORY[0x277CC2490];
  *(v9 + 336) = sub_231E11620();
  *(v9 + 344) = v57;
  v58 = *MEMORY[0x277CC2498];
  *(v9 + 352) = sub_231E11620();
  *(v9 + 360) = v59;
  v60 = *MEMORY[0x277CC24A0];
  *(v9 + 368) = sub_231E11620();
  *(v9 + 376) = v61;
  v62 = *MEMORY[0x277CC24A8];
  *(v9 + 384) = sub_231E11620();
  *(v9 + 392) = v63;
  v64 = *MEMORY[0x277CC24B0];
  *(v9 + 400) = sub_231E11620();
  *(v9 + 408) = v65;
  v66 = *MEMORY[0x277CC24C0];
  *(v9 + 416) = sub_231E11620();
  *(v9 + 424) = v67;
  v68 = *MEMORY[0x277CC24C8];
  *(v9 + 432) = sub_231E11620();
  *(v9 + 440) = v69;
  v70 = *MEMORY[0x277CC24D8];
  *(v9 + 448) = sub_231E11620();
  *(v9 + 456) = v71;
  v72 = *MEMORY[0x277CC24E0];
  *(v9 + 464) = sub_231E11620();
  *(v9 + 472) = v73;
  v74 = *MEMORY[0x277CC2500];
  *(v9 + 480) = sub_231E11620();
  *(v9 + 488) = v75;
  v76 = *MEMORY[0x277CC2640];
  *(v9 + 496) = sub_231E11620();
  *(v9 + 504) = v77;
  v78 = *MEMORY[0x277CC2648];
  *(v9 + 512) = sub_231E11620();
  *(v9 + 520) = v79;
  v80 = *MEMORY[0x277CC2658];
  *(v9 + 528) = sub_231E11620();
  *(v9 + 536) = v81;
  v82 = *MEMORY[0x277CC2650];
  *(v9 + 544) = sub_231E11620();
  *(v9 + 552) = v83;
  v84 = *MEMORY[0x277CC2660];
  *(v9 + 560) = sub_231E11620();
  *(v9 + 568) = v85;
  v86 = *MEMORY[0x277CC2670];
  *(v9 + 576) = sub_231E11620();
  *(v9 + 584) = v87;
  v88 = *MEMORY[0x277CC2678];
  *(v9 + 592) = sub_231E11620();
  *(v9 + 600) = v89;
  v90 = *MEMORY[0x277CC26C0];
  *(v9 + 608) = sub_231E11620();
  *(v9 + 616) = v91;
  v92 = *MEMORY[0x277CC2770];
  *(v9 + 624) = sub_231E11620();
  *(v9 + 632) = v93;
  v94 = *MEMORY[0x277CC2780];
  *(v9 + 640) = sub_231E11620();
  *(v9 + 648) = v95;
  v96 = *MEMORY[0x277CC2A80];
  *(v9 + 656) = sub_231E11620();
  *(v9 + 664) = v97;
  v98 = *MEMORY[0x277CC2BD8];
  *(v9 + 672) = sub_231E11620();
  *(v9 + 680) = v99;
  v100 = *MEMORY[0x277CC2C48];
  *(v9 + 688) = sub_231E11620();
  *(v9 + 696) = v101;
  v102 = *MEMORY[0x277CC2C70];
  *(v9 + 704) = sub_231E11620();
  *(v9 + 712) = v103;
  v104 = *MEMORY[0x277CC2C78];
  *(v9 + 720) = sub_231E11620();
  *(v9 + 728) = v105;
  v106 = *MEMORY[0x277CC2C80];
  *(v9 + 736) = sub_231E11620();
  *(v9 + 744) = v107;
  v108 = *MEMORY[0x277CC2C90];
  *(v9 + 752) = sub_231E11620();
  *(v9 + 760) = v109;
  v110 = *MEMORY[0x277CC2C98];
  *(v9 + 768) = sub_231E11620();
  *(v9 + 776) = v111;
  v112 = *MEMORY[0x277CC2CB0];
  *(v9 + 784) = sub_231E11620();
  *(v9 + 792) = v113;
  v114 = *MEMORY[0x277CC2CB8];
  *(v9 + 800) = sub_231E11620();
  *(v9 + 808) = v115;
  v116 = *MEMORY[0x277CC2D68];
  *(v9 + 816) = sub_231E11620();
  *(v9 + 824) = v117;
  v118 = *MEMORY[0x277CC2D58];
  *(v9 + 832) = sub_231E11620();
  *(v9 + 840) = v119;
  v120 = *MEMORY[0x277CC2D60];
  *(v9 + 848) = sub_231E11620();
  *(v9 + 856) = v121;
  v122 = *MEMORY[0x277CC2D80];
  *(v9 + 864) = sub_231E11620();
  *(v9 + 872) = v123;
  v124 = *MEMORY[0x277CC2D90];
  *(v9 + 880) = sub_231E11620();
  *(v9 + 888) = v125;
  v126 = *MEMORY[0x277CC2D98];
  *(v9 + 896) = sub_231E11620();
  *(v9 + 904) = v127;
  v128 = *MEMORY[0x277CC2DA0];
  *(v9 + 912) = sub_231E11620();
  *(v9 + 920) = v129;
  v130 = *MEMORY[0x277CC2DA8];
  *(v9 + 928) = sub_231E11620();
  *(v9 + 936) = v131;
  v132 = *MEMORY[0x277CC2DB0];
  *(v9 + 944) = sub_231E11620();
  *(v9 + 952) = v133;
  v134 = *MEMORY[0x277CC2DB8];
  *(v9 + 960) = sub_231E11620();
  *(v9 + 968) = v135;
  v136 = *MEMORY[0x277CC2DF8];
  *(v9 + 976) = sub_231E11620();
  *(v9 + 984) = v137;
  v138 = *MEMORY[0x277CC2E00];
  *(v9 + 992) = sub_231E11620();
  *(v9 + 1000) = v139;
  v140 = *MEMORY[0x277CC2FA0];
  *(v9 + 1008) = sub_231E11620();
  *(v9 + 1016) = v141;
  v142 = *MEMORY[0x277CC2FA8];
  *(v9 + 1024) = sub_231E11620();
  *(v9 + 1032) = v143;
  v144 = *MEMORY[0x277CC2FB8];
  *(v9 + 1040) = sub_231E11620();
  *(v9 + 1048) = v145;
  v146 = *MEMORY[0x277CC2FC0];
  *(v9 + 1056) = sub_231E11620();
  *(v9 + 1064) = v147;
  v148 = *MEMORY[0x277CC2FD8];
  *(v9 + 1072) = sub_231E11620();
  *(v9 + 1080) = v149;
  v150 = *MEMORY[0x277CC3010];
  *(v9 + 1088) = sub_231E11620();
  *(v9 + 1096) = v151;
  v152 = *MEMORY[0x277CC3018];
  *(v9 + 1104) = sub_231E11620();
  *(v9 + 1112) = v153;
  v154 = *MEMORY[0x277CC3020];
  *(v9 + 1120) = sub_231E11620();
  *(v9 + 1128) = v155;
  v156 = *MEMORY[0x277CC3028];
  *(v9 + 1136) = sub_231E11620();
  *(v9 + 1144) = v157;
  v158 = *MEMORY[0x277CC3108];
  *(v9 + 1152) = sub_231E11620();
  *(v9 + 1160) = v159;
  v160 = *MEMORY[0x277CC3110];
  *(v9 + 1168) = sub_231E11620();
  *(v9 + 1176) = v161;
  v162 = *MEMORY[0x277CC3118];
  *(v9 + 1184) = sub_231E11620();
  *(v9 + 1192) = v163;
  v164 = *MEMORY[0x277CC3140];
  *(v9 + 1200) = sub_231E11620();
  *(v9 + 1208) = v165;
  v166 = *MEMORY[0x277CC3148];
  *(v9 + 1216) = sub_231E11620();
  *(v9 + 1224) = v167;
  v168 = *MEMORY[0x277CC3150];
  *(v9 + 1232) = sub_231E11620();
  *(v9 + 1240) = v169;
  v170 = *MEMORY[0x277CC3160];
  *(v9 + 1248) = sub_231E11620();
  *(v9 + 1256) = v171;
  v172 = *MEMORY[0x277CC3158];
  *(v9 + 1264) = sub_231E11620();
  *(v9 + 1272) = v173;
  v174 = *MEMORY[0x277CC3168];
  *(v9 + 1280) = sub_231E11620();
  *(v9 + 1288) = v175;
  v176 = *MEMORY[0x277CC3170];
  *(v9 + 1296) = sub_231E11620();
  *(v9 + 1304) = v177;
  v178 = *MEMORY[0x277CC3198];
  *(v9 + 1312) = sub_231E11620();
  *(v9 + 1320) = v179;
  v180 = *MEMORY[0x277CC31A8];
  *(v9 + 1328) = sub_231E11620();
  *(v9 + 1336) = v181;
  v182 = *MEMORY[0x277CC31B0];
  *(v9 + 1344) = sub_231E11620();
  *(v9 + 1352) = v183;
  v184 = *MEMORY[0x277CC31F0];
  *(v9 + 1360) = sub_231E11620();
  *(v9 + 1368) = v185;
  v186 = *MEMORY[0x277CC3208];
  *(v9 + 1376) = sub_231E11620();
  *(v9 + 1384) = v187;
  v188 = *MEMORY[0x277CC32C0];
  *(v9 + 1392) = sub_231E11620();
  *(v9 + 1400) = v189;
  v190 = *MEMORY[0x277CC32D0];
  *(v9 + 1408) = sub_231E11620();
  *(v9 + 1416) = v191;
  v192 = *MEMORY[0x277CC32D8];
  *(v9 + 1424) = sub_231E11620();
  *(v9 + 1432) = v193;
  v194 = *MEMORY[0x277CC32E8];
  *(v9 + 1440) = sub_231E11620();
  *(v9 + 1448) = v195;
  v196 = *MEMORY[0x277CC32F8];
  *(v9 + 1456) = sub_231E11620();
  *(v9 + 1464) = v197;
  v198 = *MEMORY[0x277CC3318];
  *(v9 + 1472) = sub_231E11620();
  *(v9 + 1480) = v199;
  v200 = *MEMORY[0x277CC2C68];
  *(v9 + 1488) = sub_231E11620();
  *(v9 + 1496) = v201;
  v202 = v0;
  *(v9 + 1504) = sub_231E11620();
  *(v9 + 1512) = v203;
  v204 = *MEMORY[0x277CC3210];
  *(v9 + 1520) = sub_231E11620();
  *(v9 + 1528) = v205;
  v206 = *MEMORY[0x277CC2638];
  *(v9 + 1536) = sub_231E11620();
  *(v9 + 1544) = v207;
  v208 = sub_231CB4EEC();
  v0[185] = v208;
  v209 = *(v5 + 16);
  v0[186] = v209;
  v0[187] = (v5 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v209(v4, v208, v6);
  OUTLINED_FUNCTION_263();
  v8();
  v210 = sub_231E10E10();
  v211 = sub_231E11AF0();
  v212 = os_log_type_enabled(v210, v211);
  v213 = v0[179];
  v214 = v0[176];
  v215 = v0[175];
  v216 = v0[174];
  v217 = v202[163];
  v218 = v202[162];
  if (v212)
  {
    v393 = v202;
    v219 = OUTLINED_FUNCTION_9_1();
    v389 = v218;
    v220 = OUTLINED_FUNCTION_67();
    v395 = v220;
    *v219 = 136315138;
    v387 = v216;
    v221 = sub_231E10C80();
    v385 = v211;
    v223 = v222;
    v224 = OUTLINED_FUNCTION_302();
    v225(v224);
    v226 = sub_231CB5000(v221, v223, &v395);

    *(v219 + 4) = v226;
    _os_log_impl(&dword_231CAE000, v210, v385, "ModelInputContentBuilder: Handling request: %s", v219, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v220);
    OUTLINED_FUNCTION_30();
    v202 = v393;
    OUTLINED_FUNCTION_30();

    v227 = *(v217 + 8);
    v227(v387, v389);
  }

  else
  {

    v228 = OUTLINED_FUNCTION_302();
    v229(v228);
    v227 = *(v217 + 8);
    v227(v216, v218);
  }

  v202[189] = v215;
  v202[188] = v227;
  v230 = v202[161];
  v231 = v202[157];
  v232 = v202[156];
  v233 = v202[57];
  sub_231E10CA0();
  v202[190] = *(v231 + 88);
  v202[191] = (v231 + 88) & 0xFFFFFFFFFFFFLL | 0xA3B5000000000000;
  v234 = OUTLINED_FUNCTION_33();
  v236 = v235(v234);
  v237 = *MEMORY[0x277D424D8];
  *(v202 + 480) = *MEMORY[0x277D424D8];
  if (v236 == v237)
  {
    v238 = v202[161];
    v239 = v202[156];
    v240 = v202[155];
    v241 = v202[57];
    v242 = *(v202[157] + 96);
    v202[192] = v242;
    v242(v238, v239);
    v244 = *v238;
    v243 = v238[1];
    sub_231E10CB0();
    v245 = sub_231E10D50();
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v240, 1, v245);
    v247 = v202[155];
    if (EnumTagSinglePayload == 1)
    {
      sub_231CC154C(v202[155], &qword_27DD74C20, &unk_231E1C630);
LABEL_18:
      v273 = v202[183];
      v274 = v202[58];
      v275 = v274[18];
      v276 = swift_allocObject();
      v202[198] = v276;
      *(v276 + 16) = xmmword_231E138E0;
      *(v276 + 32) = v244;
      *(v276 + 40) = v243;
      v277 = v274[6];
      v278 = v274[7];
      v279 = v274[8];
      v280 = v274[9];
      v281 = swift_task_alloc();
      v202[199] = v281;
      *v281 = v202;
      OUTLINED_FUNCTION_144_1(v281);
      v282 = v202[184];
      OUTLINED_FUNCTION_299();
LABEL_34:
      OUTLINED_FUNCTION_44();

      return sub_231DFA704();
    }

    v264 = sub_231E10D40();
    OUTLINED_FUNCTION_56_6(v245);
    (*(v265 + 8))(v247, v245);
    if (v264 == 2 || (v264 & 1) == 0)
    {
      goto LABEL_18;
    }

    v266 = *(v202[58] + 144);
    type metadata accessor for SpotlightWriter();
    OUTLINED_FUNCTION_112_3();
    sub_231CDBB24();
    if (v267)
    {
      v268 = v267;

      v243 = v268;
    }

    v202[193] = v243;
    v269 = swift_task_alloc();
    v202[194] = v269;
    *v269 = v202;
    v269[1] = sub_231D313F0;
    OUTLINED_FUNCTION_57();
    OUTLINED_FUNCTION_44();

    return sub_231DFB0B0(v270, v271);
  }

  else
  {
    if (v236 != *MEMORY[0x277D424C8])
    {
      if (v236 == *MEMORY[0x277D424E0])
      {
        v283 = v202[161];
        v284 = v202[156];
        v285 = v202[154];
        v286 = v202[57];
        v287 = *(v202[157] + 96);
        v202[207] = v287;
        v287(v283, v284);
        v289 = *v283;
        v288 = v283[1];
        sub_231E10CB0();
        v290 = sub_231E10D50();
        v291 = __swift_getEnumTagSinglePayload(v285, 1, v290);
        v292 = v202[154];
        if (v291 == 1)
        {
          sub_231CC154C(v202[154], &qword_27DD74C20, &unk_231E1C630);
        }

        else
        {
          v307 = sub_231E10D40();
          OUTLINED_FUNCTION_56_6(v290);
          v309 = *(v308 + 8);
          v310 = OUTLINED_FUNCTION_207();
          v311(v310);
          if (v307 != 2 && (v307 & 1) != 0)
          {
            type metadata accessor for SpotlightWriter();
            v312 = sub_231CDBB24();
            if (v313)
            {
              v314 = v312;
              v315 = v313;

              v289 = v314;
              v288 = v315;
            }
          }
        }

        v316 = v202[58];
        v317 = OUTLINED_FUNCTION_304();
        v202[208] = v317;
        *(v317 + 16) = xmmword_231E138E0;
        *(v317 + 32) = v289;
        *(v317 + 40) = v288;
        v318 = v316[10];
        v319 = v316[11];
        v320 = v316[12];
        v321 = v316[13];
        v305 = swift_task_alloc();
        v202[209] = v305;
        *v305 = v202;
        v306 = sub_231D36158;
      }

      else
      {
        if (v236 != *MEMORY[0x277D424C0] && v236 != *MEMORY[0x277D424D0])
        {
          v323 = v202[180];
          v324 = v202[176];
          v325 = v202[175];
          v326 = v202[161];
          v327 = v202[157];
          v328 = v202[156];
          v329 = v202[56];

          sub_231D3EA58(v323, v329);
          v330 = OUTLINED_FUNCTION_140_0();
          v215(v330);
          v331 = *(v327 + 8);
          v332 = OUTLINED_FUNCTION_70();
          v333(v332);
          v334 = v202[180];
          v335 = v202;
          v336 = v202[179];
          v337 = v335[178];
          v338 = v335[177];
          v339 = v335[174];
          OUTLINED_FUNCTION_1_17();
          v342 = v335[166];
          v343 = v335[165];
          v344 = v335[164];
          v345 = v335[161];
          v346 = v335[160];
          v347 = v335[159];
          v348 = v335[158];
          v349 = v335[155];
          v350 = v335[154];
          v351 = v335[153];
          v352 = v335[150];
          v353 = v335[147];
          v354 = v335[146];
          v355 = v335[143];
          v356 = v335[142];
          v357 = v335[139];
          v358 = v335[138];
          v359 = v335[137];
          v360 = v335[136];
          v361 = v335[135];
          v362 = v335[132];
          v363 = v335[131];
          v364 = v335[130];
          v365 = v335[129];
          v366 = v335[128];
          v367 = v335[125];
          v368 = v335[124];
          v369 = v335[123];
          v370 = v335[122];
          v371 = v335[121];
          v372 = v335[120];
          v373 = v335[119];
          v374 = v335[116];
          v375 = v335[115];
          v376 = v335[112];
          v377 = v335[111];
          v378 = v335[108];
          v379 = v335[105];
          v380 = v335[104];
          OUTLINED_FUNCTION_49_6();
          OUTLINED_FUNCTION_106_3();

          OUTLINED_FUNCTION_88_3();
          OUTLINED_FUNCTION_44();

          __asm { BRAA            X1, X16 }
        }

        v294 = v202[161];
        v295 = v202[156];
        v296 = v202[58];
        v297 = *(v202[157] + 96);
        v202[203] = v297;
        v297(v294, v295);
        v299 = *v294;
        v298 = v294[1];
        v300 = OUTLINED_FUNCTION_304();
        v202[204] = v300;
        *(v300 + 16) = xmmword_231E138E0;
        *(v300 + 32) = v299;
        *(v300 + 40) = v298;
        v301 = v296[2];
        v302 = v296[3];
        v303 = v296[4];
        v304 = v296[5];
        v305 = swift_task_alloc();
        v202[205] = v305;
        *v305 = v202;
        v306 = sub_231D33F88;
      }

      v305[1] = v306;
      OUTLINED_FUNCTION_150_1();
      goto LABEL_34;
    }

    v248 = v202[161];
    v249 = v202[157];
    v250 = v202[156];
    v251 = v202[152];
    v381 = v202[151];
    v382 = v202[153];
    v252 = v202[150];
    v253 = v215;
    v254 = v202[149];
    v386 = v202[143];
    v255 = v202[141];
    v383 = v202[148];
    v384 = v202[140];
    v391 = v202[132];
    v256 = v202[127];
    v388 = v202[139];
    v390 = v202[126];
    v257 = v202[176] + 8;
    v394 = v202[58];
    (v253)(v202[180], v202[175]);

    (*(v249 + 96))(v248, v250);
    v258 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74C28, &unk_231E1C640) + 48);
    (*(v251 + 32))(v382, v248, v381);
    (*(v254 + 32))(v252, v248 + v258, v383);
    (*(v255 + 104))(v386, *MEMORY[0x277D42408], v384);
    sub_231E0FF60();
    (*(v256 + 104))(v391, *MEMORY[0x277D423A8], v390);
    v259 = swift_task_alloc();
    v202[201] = v259;
    *v259 = v202;
    v259[1] = sub_231D337F0;
    v260 = v202[153];
    OUTLINED_FUNCTION_44();

    return sub_231D72FA0(v261);
  }
}

uint64_t sub_231D313F0()
{
  OUTLINED_FUNCTION_50_0();
  v3 = v2;
  v5 = v4;
  v6 = *v1;
  v7 = *v1;
  OUTLINED_FUNCTION_4();
  *v8 = v7;
  v9 = v6[194];
  *v8 = *v1;
  v7[195] = v0;

  v10 = v6[193];
  if (v0)
  {
    v11 = OUTLINED_FUNCTION_42_6();
    v12(v11);
  }

  else
  {

    v7[196] = v3;
    v7[197] = v5;
  }

  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_106();

  return MEMORY[0x2822009F8](v13, v14, v15);
}

uint64_t sub_231D3154C()
{
  OUTLINED_FUNCTION_50_0();
  v1 = v0[197];
  v2 = v0[196];
  v3 = v0[183];
  v4 = v0[58];
  v5 = v4[18];
  v6 = swift_allocObject();
  v0[198] = v6;
  *(v6 + 16) = xmmword_231E138E0;
  *(v6 + 32) = v1;
  *(v6 + 40) = v2;
  v7 = v4[6];
  v8 = v4[7];
  v9 = v4[8];
  v10 = v4[9];
  v11 = swift_task_alloc();
  v0[199] = v11;
  *v11 = v0;
  OUTLINED_FUNCTION_144_1(v11);
  v12 = v0[184];
  OUTLINED_FUNCTION_155_2();
  OUTLINED_FUNCTION_106();

  return sub_231DFA704();
}

uint64_t sub_231D31620()
{
  OUTLINED_FUNCTION_29();
  v2 = *v1;
  OUTLINED_FUNCTION_4();
  *v3 = v2;
  v2[31] = v1;
  v2[32] = v4;
  v2[33] = v0;
  OUTLINED_FUNCTION_223();
  v6 = *(v5 + 1592);
  *v7 = *v1;
  v2[200] = v0;

  OUTLINED_FUNCTION_223();
  v9 = *(v8 + 1584);
  if (v0)
  {
    v10 = OUTLINED_FUNCTION_42_6();
    v11(v10);
  }

  else
  {
    v12 = *(v8 + 1584);
  }

  OUTLINED_FUNCTION_31();

  return MEMORY[0x2822009F8](v13, v14, v15);
}

uint64_t sub_231D31768(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_142();
  OUTLINED_FUNCTION_57_0();
  v19 = *(v14 + 1600);
  v20 = *(v14 + 256);
  v21 = OUTLINED_FUNCTION_269(*(v14 + 1536));
  v22 = sub_231D3EE08(v21);
  OUTLINED_FUNCTION_272(v22);
  if (!v12)
  {
    v67 = OUTLINED_FUNCTION_31_5();
    v68(v67);

    OUTLINED_FUNCTION_147_1();
    (v18)();
    v69 = OUTLINED_FUNCTION_186();
    v70(v69);
    v71 = sub_231E10E10();
    v72 = sub_231E11AD0();
    OUTLINED_FUNCTION_230(v72);
    OUTLINED_FUNCTION_62_1();
    if (v73)
    {
      v74 = OUTLINED_FUNCTION_9_1();
      v75 = OUTLINED_FUNCTION_67();
      OUTLINED_FUNCTION_232(v75);
      *v74 = 136446210;
      sub_231E10C80();
      v76 = OUTLINED_FUNCTION_86_3();
      (v15)(v76);
      v77 = OUTLINED_FUNCTION_259();
      sub_231CB5000(v77, v78, v79);
      OUTLINED_FUNCTION_112_3();

      *(v74 + 4) = v16;
      OUTLINED_FUNCTION_3_7();
      _os_log_impl(v80, v81, v82, v83, v84, 0xCu);
      OUTLINED_FUNCTION_8_0();
      OUTLINED_FUNCTION_11();

      v85 = OUTLINED_FUNCTION_251();
      v86(v85);
    }

    else
    {

      v119 = OUTLINED_FUNCTION_91_3();
      (v15)(v119);
      v120 = OUTLINED_FUNCTION_245();
      (v13)(v120);
    }

    *(v14 + 344) = OUTLINED_FUNCTION_278();
    *(v14 + 352) = v121;
    OUTLINED_FUNCTION_78_1();
    OUTLINED_FUNCTION_277();
    OUTLINED_FUNCTION_276();
    v122 = *(v14 + 352);
    *v15 = *(v14 + 344);
    *(v15 + 8) = v122;
    v123 = *MEMORY[0x277D42140];
    v124 = sub_231E0FDE0();
    OUTLINED_FUNCTION_6_0(v124);
    v126 = *(v125 + 104);
    v127 = v15;
LABEL_17:
    v128 = v123;
LABEL_18:
    v126(v127, v128);
    goto LABEL_74;
  }

  v23 = OUTLINED_FUNCTION_28_4();
  OUTLINED_FUNCTION_191(v23, *MEMORY[0x277D421D8]);
  v25 = v24();
  v26 = OUTLINED_FUNCTION_84_2(v25, *MEMORY[0x277D423A8]);
  v27(v26);
  v28 = sub_231E0F5F0();
  OUTLINED_FUNCTION_48_5(v28);
  v29 = OUTLINED_FUNCTION_255();
  v31 = v30(v29);
  if (v31 != v752)
  {
    if (v31 == *MEMORY[0x277D424C8])
    {
      v87 = *(v14 + 1512);
      v753 = *(v14 + 1496);
      OUTLINED_FUNCTION_87_3();
      OUTLINED_FUNCTION_35_5();
      OUTLINED_FUNCTION_85_2();
      v88();

      v89 = OUTLINED_FUNCTION_80();
      v759(v89);
      OUTLINED_FUNCTION_69_3();
      (v18)();
      v90 = sub_231E10E10();
      sub_231E11AE0();
      OUTLINED_FUNCTION_205();
      if (os_log_type_enabled(v90, v91))
      {
        v92 = OUTLINED_FUNCTION_16_1();
        OUTLINED_FUNCTION_226(v92);
        OUTLINED_FUNCTION_219(&dword_231CAE000, v93, v94, "Programmer Error: mailManualSummary should not reach here");
        OUTLINED_FUNCTION_49_2();
      }

      v95 = *(v14 + 1504);
      v96 = *(v14 + 1360);
      v97 = *(v14 + 1304);
      v98 = *(v14 + 1296);
      v750 = *(v14 + 1280);
      v754 = *(v14 + 1216);
      v761 = *(v14 + 1208);
      v745 = *(v14 + 1192);
      v747 = *(v14 + 1184);
      OUTLINED_FUNCTION_25_6();
      OUTLINED_FUNCTION_83_2();
      v99 = OUTLINED_FUNCTION_252();
      v95(v99);
      LODWORD(v98) = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74C28, &unk_231E1C640) + 48);

      v100 = OUTLINED_FUNCTION_48();
      sub_231CC154C(v100, v101, &qword_231E17120);
      OUTLINED_FUNCTION_131_1();
      sub_231CC154C(v102, v103, v104);
      OUTLINED_FUNCTION_131_1();
      sub_231CC154C(v105, v106, v107);
      (*(v13 + 8))();
      v108 = OUTLINED_FUNCTION_229();
      v109(v108);
      OUTLINED_FUNCTION_76_2();
      *v16 = v110;
      v16[1] = 0x8000000231E32860;
      v111 = *MEMORY[0x277D42140];
      v112 = sub_231E0FDE0();
      OUTLINED_FUNCTION_6_0(v112);
      v114 = *(v113 + 104);
      v115 = OUTLINED_FUNCTION_233();
      v116(v115);
      v117 = OUTLINED_FUNCTION_180();
      v118(v117);
      goto LABEL_73;
    }

    OUTLINED_FUNCTION_177_0();
    v132 = v132 || v129 == v130;
    if (!v132 && v129 != v131)
    {
      v762 = *(v14 + 1512);
      v134 = *(v14 + 1472);
      v135 = *(v14 + 1440);
      v746 = *(v14 + 1408);
      v748 = *(v14 + 1400);
      v136 = *(v14 + 1256);
      v751 = *(v14 + 1248);
      v755 = *(v14 + 1280);
      OUTLINED_FUNCTION_25_6();
      OUTLINED_FUNCTION_107_3();

      sub_231D3EA58(v135, v12);

      OUTLINED_FUNCTION_284();
      v137 = OUTLINED_FUNCTION_57();
      sub_231CC154C(v137, v138, &qword_231E17120);
      v139 = OUTLINED_FUNCTION_48();
      sub_231CC154C(v139, v140, &qword_231E17120);
      (*(v18 + 8))();
      v141 = OUTLINED_FUNCTION_229();
      v142(v141);
      v143 = OUTLINED_FUNCTION_175_0();
      v144(v143);
      v126 = *(v136 + 8);
      v128 = v751;
      v127 = v755;
      goto LABEL_18;
    }
  }

  v32 = OUTLINED_FUNCTION_92_2();
  v33(v32);
  OUTLINED_FUNCTION_208();
  v760 = v12;
  if (v19 >= 2)
  {
    OUTLINED_FUNCTION_66_4();
    v34 = *(v14 + 1384);
    v35 = OUTLINED_FUNCTION_231();
    v36(v35);

    v37 = sub_231E10E10();
    v38 = sub_231E11AE0();

    os_log_type_enabled(v37, v38);
    OUTLINED_FUNCTION_184();
    if (v39)
    {
      OUTLINED_FUNCTION_9_1();
      OUTLINED_FUNCTION_151_1();
      v766 = swift_slowAlloc();
      v40 = OUTLINED_FUNCTION_90_3(4.8149e-34);
      *(v12 + 4) = sub_231CB5000(v40, v12, v41);
      OUTLINED_FUNCTION_182(&dword_231CAE000, v42, v38, "Found more than one item for the spotlight id: %s. Continuing anyway using only the first item.");
      __swift_destroy_boxed_opaque_existential_0(v766);
      OUTLINED_FUNCTION_30();
      OUTLINED_FUNCTION_49_2();
    }

    v43 = OUTLINED_FUNCTION_113_2();
    v17(v43);
  }

  OUTLINED_FUNCTION_183();
  v44 = [v758 attributeSet];
  *(v14 + 1704) = v44;
  v45 = v44;
  v46 = [v45 summarizationContentTopic];
  sub_231D41110(v46);

  v47 = &qword_27DD74470;
  OUTLINED_FUNCTION_143_1();
  sub_231CC154C(v48, v49, v50);
  OUTLINED_FUNCTION_131_1();
  sub_231D42DEC(v51, v52, v53, &qword_231E17120);
  OUTLINED_FUNCTION_273([v45 summarizationContentTopLine]);

  v54 = OUTLINED_FUNCTION_80();
  sub_231CC154C(v54, v55, &qword_231E17120);
  OUTLINED_FUNCTION_209();
  sub_231D42DEC(v56, v57, v58, &qword_231E17120);
  OUTLINED_FUNCTION_273([v45 summarizationContentSynopsis]);

  OUTLINED_FUNCTION_143_1();
  sub_231CC154C(v59, v60, v61);
  v62 = OUTLINED_FUNCTION_116_3();
  sub_231D42DEC(v62, v63, &qword_27DD74470, &qword_231E17120);
  v64 = [v45 isUrgent];
  if (v64)
  {
    v65 = v64;
    v66 = [v64 BOOLValue];
  }

  else
  {
    v66 = 2;
  }

  *(v14 + 1924) = v66;
  v145 = OUTLINED_FUNCTION_100_3();
  v146 = OUTLINED_FUNCTION_82();
  v148 = [v146 v147];

  if (v148)
  {
    OUTLINED_FUNCTION_275();
    swift_unknownObjectRelease();
  }

  else
  {
    OUTLINED_FUNCTION_152_0();
  }

  OUTLINED_FUNCTION_172_0();
  v149 = MEMORY[0x277D84F70];
  if (v150)
  {
    OUTLINED_FUNCTION_216();
    v151 = *(v14 + 392);
    v152 = *(v14 + 400);
    OUTLINED_FUNCTION_228();
    if (v132)
    {
      v154 = 0;
    }
  }

  else
  {
    sub_231CC154C(v14 + 56, &dword_27DD741E0, &qword_231E15D70);
    OUTLINED_FUNCTION_227();
  }

  *(v14 + 1720) = v154;
  *(v14 + 1712) = v153;
  v155 = OUTLINED_FUNCTION_100_3();
  v156 = OUTLINED_FUNCTION_82();
  v158 = [v156 v157];

  if (v158)
  {
    OUTLINED_FUNCTION_275();
    swift_unknownObjectRelease();
  }

  else
  {
    OUTLINED_FUNCTION_152_0();
  }

  OUTLINED_FUNCTION_174_0();
  if (v159)
  {
    OUTLINED_FUNCTION_215();
    v160 = *(v14 + 376);
    v161 = *(v14 + 384);
    OUTLINED_FUNCTION_228();
  }

  else
  {
    sub_231CC154C(v14 + 88, &dword_27DD741E0, &qword_231E15D70);
    OUTLINED_FUNCTION_227();
  }

  *(v14 + 1744) = OUTLINED_FUNCTION_274(v162);
  *(v14 + 1752) = v163;
  sub_231CE22E0([v45 summarizationStatus]);
  OUTLINED_FUNCTION_79_1();
  if (!v132 & v164)
  {
    v165 = OUTLINED_FUNCTION_40_4();
    (v149)(v165);
    v166 = OUTLINED_FUNCTION_127_1();
    v167(v166);
  }

  else
  {
    OUTLINED_FUNCTION_192();
    v149 = v168;
    sub_231CE2318(v169, v170, v168, &qword_27DD74470);
    v171 = OUTLINED_FUNCTION_116_3();
    sub_231CB6F48(v171, v172, v149);
    v173 = OUTLINED_FUNCTION_40_4();
    (v149)(v173);
  }

  v174 = OUTLINED_FUNCTION_77_1();
  v175(v174);
  sub_231DE8E10([v45 urgencyStatus]);
  OUTLINED_FUNCTION_80_1();
  if (!v132 & v164)
  {
    v179 = OUTLINED_FUNCTION_40_4();
    (v149)(v179);
    v180 = OUTLINED_FUNCTION_128_1();
    v181(v180);
  }

  else
  {
    OUTLINED_FUNCTION_222(v176, v177, v178);
    OUTLINED_FUNCTION_281();
    v182 = OUTLINED_FUNCTION_40_4();
    (v149)(v182);
  }

  v183 = OUTLINED_FUNCTION_75_1();
  v184(v183);
  v185 = [v45 summarizedIdentifiers];
  v186 = MEMORY[0x277D84FA0];
  if (v185)
  {
    OUTLINED_FUNCTION_58_5();
    v47 = sub_231E11870();

    v766 = v186;

    v188 = OUTLINED_FUNCTION_271(v187);
    OUTLINED_FUNCTION_214(v188);

    sub_231E10CA0();
    v189 = OUTLINED_FUNCTION_70();
    if ((unk_231E15000)(v189) != v17)
    {
      v201 = OUTLINED_FUNCTION_167_0();
      v202(v201);
      v203 = swift_task_alloc();
      *(v14 + 1784) = v203;
      *v203 = v14;
      OUTLINED_FUNCTION_30_6(v203);
      OUTLINED_FUNCTION_95_3();

      return sub_231D3EE84();
    }

    OUTLINED_FUNCTION_217();

    v190 = *(v149 + 8);
    v191 = OUTLINED_FUNCTION_140_0();
    v192(v191);
  }

  else
  {
    OUTLINED_FUNCTION_140_1();
    v193 = OUTLINED_FUNCTION_59_0();
    (off_278947000)(v193);

    v45 = sub_231E10E10();
    v194 = sub_231E11AF0();

    os_log_type_enabled(v45, v194);
    OUTLINED_FUNCTION_169_0();
    if (v195)
    {
      OUTLINED_FUNCTION_9_1();
      v749 = v155;
      OUTLINED_FUNCTION_151_1();
      v196 = swift_slowAlloc();
      OUTLINED_FUNCTION_232(v196);
      v197 = OUTLINED_FUNCTION_90_3(4.8149e-34);
      v17 = sub_231CB5000(v197, v760, v198);

      *(v155 + 4) = v17;
      OUTLINED_FUNCTION_182(&dword_231CAE000, v199, v194, "Entity with spotlightIdentifier: %s had no summarized identifiers. No need to query spotlight again.");
      OUTLINED_FUNCTION_8_0();
      OUTLINED_FUNCTION_49_2();
    }

    else
    {
    }

    v200 = OUTLINED_FUNCTION_82_0();
    (v155)(v200);
    v186 = v758;
    v206 = v758;
    v209 = OUTLINED_FUNCTION_270(v206, v207, v208, MEMORY[0x277D84F90]);
    v210 = OUTLINED_FUNCTION_164_0(v209);
    if (v164)
    {
      v593 = OUTLINED_FUNCTION_44_6(v214);
      v210 = sub_231D41480(v593, v594, v595, v596);
      v213 = v210;
    }

    OUTLINED_FUNCTION_115_2(v210, v211, v212, v213);
  }

  OUTLINED_FUNCTION_241();
  v215 = MEMORY[0x277D84F90];
  OUTLINED_FUNCTION_163_0(v216, v217, v218, v219);
  do
  {
    OUTLINED_FUNCTION_238(v220);
    if (v132)
    {
      break;
    }

    OUTLINED_FUNCTION_161_0(v221, v222, v223, v224);
  }

  while (!v132);
  OUTLINED_FUNCTION_73_2(v221, v222, v223, v224);
  v225 = OUTLINED_FUNCTION_25();
  v226 = (unk_231E15000)(v225);
  if (v226 == v17)
  {
    v227 = *(v14 + 1696);
    OUTLINED_FUNCTION_21_5();
    OUTLINED_FUNCTION_57_4();
    v228();
    v230 = v215[1];
    v229 = v215 + 1;
    v231 = OUTLINED_FUNCTION_25();
    v233 = v232(v231);
    v234 = sub_231D27B60(v233);
    OUTLINED_FUNCTION_105_3(v234);
    OUTLINED_FUNCTION_154_1(v47);
    if (!v132)
    {
      v292 = OUTLINED_FUNCTION_93_3();
      v293(v292);
      if (v227[232])
      {
        if (v227[232] == 1)
        {
          OUTLINED_FUNCTION_283();
          v294 = OUTLINED_FUNCTION_18_7();
          v295 = *(v294 + 8);
          OUTLINED_FUNCTION_41_6(v294 + 8);
          v763 = v296 + *v296;
          v298 = *(v297 + 4);
          v299 = swift_task_alloc();
          *(v14 + 1864) = v299;
          *v299 = v14;
          OUTLINED_FUNCTION_7_13(v299);
          OUTLINED_FUNCTION_95_3();

          __asm { BRAA            X3, X16 }
        }

        OUTLINED_FUNCTION_283();
        v400 = OUTLINED_FUNCTION_18_7();
        v401 = *(v400 + 16);
        OUTLINED_FUNCTION_41_6(v400 + 16);
        v764 = v402 + *v402;
        v404 = *(v403 + 4);
        v405 = swift_task_alloc();
        *(v14 + 1888) = v405;
        *v405 = v14;
        OUTLINED_FUNCTION_7_13(v405);
        OUTLINED_FUNCTION_95_3();

        __asm { BRAA            X3, X16 }
      }

      if ([*(v14 + 1704) summarizedIdentifiers])
      {
        OUTLINED_FUNCTION_239();
        sub_231E11870();

        v396 = OUTLINED_FUNCTION_271(v395);

        v397 = sub_231D3F7BC(v396);
        *(v14 + 1832) = v397;
        *(v14 + 1840) = v186;
        OUTLINED_FUNCTION_101_3();
        v398 = sub_231E115F0();
        v399 = [v227 attributeForKey_];

        if (v399)
        {
          OUTLINED_FUNCTION_308();
          swift_unknownObjectRelease();
        }

        else
        {
          OUTLINED_FUNCTION_152_0();
        }

        OUTLINED_FUNCTION_173_0();
        if (v524)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74C98, &qword_231E1C6A8);
          if (OUTLINED_FUNCTION_165())
          {
            OUTLINED_FUNCTION_237();
            if (v525)
            {
              OUTLINED_FUNCTION_160_0();
              OUTLINED_FUNCTION_114_0();
              if (v132)
              {
                v526 = *(v14 + 464);
                v527 = v526[27];
                v528 = v526[28];
                v529 = OUTLINED_FUNCTION_33_9(v526 + 24);
                v530 = *(v529 + 24);
                OUTLINED_FUNCTION_41_6(v529 + 24);
                v765 = v531 + *v531;
                v533 = *(v532 + 4);
                v534 = swift_task_alloc();
                *(v14 + 1856) = v534;
                *v534 = v14;
                OUTLINED_FUNCTION_13_9(v534);
                OUTLINED_FUNCTION_50_4();
                OUTLINED_FUNCTION_122_1();
                OUTLINED_FUNCTION_95_3();

                __asm { BRAA            X4, X16 }
              }

              OUTLINED_FUNCTION_3_16();

              OUTLINED_FUNCTION_195();
              OUTLINED_FUNCTION_71_3();
              sub_231CC154C(v570, v571, v572);
              OUTLINED_FUNCTION_71_3();
              sub_231CC154C(v573, v574, v575);
              OUTLINED_FUNCTION_71_3();
              sub_231CC154C(v576, v577, v578);
              v579 = OUTLINED_FUNCTION_12_10();
              v580(v579);
              v581 = OUTLINED_FUNCTION_20_7();
              v582(v581);
              OUTLINED_FUNCTION_101_3();
              v584 = (v583 + 48);
            }

            else
            {
              OUTLINED_FUNCTION_3_16();

              OUTLINED_FUNCTION_195();
              OUTLINED_FUNCTION_71_3();
              sub_231CC154C(v556, v557, v558);
              OUTLINED_FUNCTION_71_3();
              sub_231CC154C(v559, v560, v561);
              OUTLINED_FUNCTION_71_3();
              sub_231CC154C(v562, v563, v564);
              v565 = OUTLINED_FUNCTION_12_10();
              v566(v565);
              v567 = OUTLINED_FUNCTION_20_7();
              v568(v567);
              OUTLINED_FUNCTION_101_3();
              v584 = (v569 + 5);
            }

            off_278947000 = v584;
            off_278947008 = v398;
            v585 = *MEMORY[0x277D42140];
            v586 = sub_231E0FDE0();
            OUTLINED_FUNCTION_6_0(v586);
            v588 = *(v587 + 104);
            v589 = OUTLINED_FUNCTION_233();
            v590(v589);
            v591 = OUTLINED_FUNCTION_202();
            v592(v591);
            goto LABEL_74;
          }

          OUTLINED_FUNCTION_99_2();
        }

        else
        {
          OUTLINED_FUNCTION_99_2();

          sub_231CC154C(v14 + 120, &dword_27DD741E0, &qword_231E15D70);
        }

        OUTLINED_FUNCTION_34_6();

        v537 = OUTLINED_FUNCTION_48();
        sub_231CC154C(v537, v538, &qword_231E17120);
        OUTLINED_FUNCTION_150_1();
        sub_231CC154C(v539, v540, v541);
        OUTLINED_FUNCTION_150_1();
        sub_231CC154C(v542, v543, v544);
        v545 = OUTLINED_FUNCTION_234();
        v546(v545);
        v547 = OUTLINED_FUNCTION_158_0();
        v548(v547);
        OUTLINED_FUNCTION_101_3();
        *v398 = v549 + 7;
        v398[1] = 0x8000000231E32910;
        v550 = *MEMORY[0x277D42140];
        v551 = sub_231E0FDE0();
        OUTLINED_FUNCTION_6_0(v551);
        v553 = *(v552 + 104);
        v554 = OUTLINED_FUNCTION_102_0();
        v555(v554);
        (off_278947008)(v760);
      }

      else
      {
        OUTLINED_FUNCTION_27_5();

        OUTLINED_FUNCTION_294();
        OUTLINED_FUNCTION_69_3();
        sub_231CC154C(v435, v436, v437);
        OUTLINED_FUNCTION_69_3();
        sub_231CC154C(v438, v439, v440);
        OUTLINED_FUNCTION_69_3();
        sub_231CC154C(v441, v442, v443);
        v444 = OUTLINED_FUNCTION_12_10();
        v445(v444);
        v446 = OUTLINED_FUNCTION_20_7();
        v447(v446);
        OUTLINED_FUNCTION_101_3();
        OUTLINED_FUNCTION_296(v448);
        v449 = *MEMORY[0x277D42140];
        v450 = sub_231E0FDE0();
        OUTLINED_FUNCTION_6_0(v450);
        v452 = *(v451 + 104);
        v453 = OUTLINED_FUNCTION_102_0();
        v454(v453);
        v455 = v155[1];
        v456 = OUTLINED_FUNCTION_202();
        v457(v456);
      }

LABEL_74:
      OUTLINED_FUNCTION_0_22();
      OUTLINED_FUNCTION_6_13();
      OUTLINED_FUNCTION_23_6();

      OUTLINED_FUNCTION_19();
      OUTLINED_FUNCTION_95_3();

      return v285(v284, v285, v286, v287, v288, v289, v290, v291, a9, a10, a11, a12);
    }

    OUTLINED_FUNCTION_52_5();

    sub_231CC154C(v20, &qword_27DD74580, &qword_231E17110);
    v235 = OUTLINED_FUNCTION_67_4();
    (v229)(v235);
    v236 = v760;
    v237 = sub_231E10E10();
    v238 = sub_231E11AD0();

    if (OUTLINED_FUNCTION_85())
    {
      OUTLINED_FUNCTION_72_2();
      v239 = OUTLINED_FUNCTION_199();
      OUTLINED_FUNCTION_298(v239);
      LODWORD(off_278947000) = 136315138;
      v240 = [v17 uniqueIdentifier];
      sub_231E11620();
      OUTLINED_FUNCTION_192();

      v241 = OUTLINED_FUNCTION_116_3();
      sub_231CB5000(v241, v242, v243);
      OUTLINED_FUNCTION_307();
      *(&off_278947000 + 4) = v240;
      OUTLINED_FUNCTION_159_0();
      _os_log_impl(v244, v245, v246, v247, v248, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v47);
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_30();

      v249 = OUTLINED_FUNCTION_236();
      v250(v249);
    }

    else
    {
      OUTLINED_FUNCTION_218();
      v334 = OUTLINED_FUNCTION_25();
      v238(v334);
    }

    v767 = OUTLINED_FUNCTION_38_5();
    v768 = v335;
    OUTLINED_FUNCTION_78_1();
    OUTLINED_FUNCTION_280();
    v336 = [&unk_231E15000 uniqueIdentifier];
    sub_231E11620();
    OUTLINED_FUNCTION_268();

    v337 = OUTLINED_FUNCTION_70();
    MEMORY[0x23837CC20](v337);

    OUTLINED_FUNCTION_69_3();
    sub_231CC154C(v338, v339, v340);
    OUTLINED_FUNCTION_69_3();
    sub_231CC154C(v341, v342, v343);
    OUTLINED_FUNCTION_69_3();
    sub_231CC154C(v344, v345, v346);
    v347 = OUTLINED_FUNCTION_36_5();
    (v758)(v347);
    v348 = OUTLINED_FUNCTION_43_8();
    v349(v348);
    *v236 = v767;
    v236[1] = v768;
    v123 = *MEMORY[0x277D42140];
    v350 = sub_231E0FDE0();
    OUTLINED_FUNCTION_6_0(v350);
    v126 = *(v351 + 104);
    v127 = v236;
    goto LABEL_17;
  }

  if (v226 == *MEMORY[0x277D424C8])
  {
    v251 = OUTLINED_FUNCTION_29_5();
    v252(v251);

    v253 = OUTLINED_FUNCTION_116_3();
    v749(v253);
    v254 = OUTLINED_FUNCTION_67_4();
    v752(v254);
    v255 = sub_231E10E10();
    sub_231E11AD0();
    OUTLINED_FUNCTION_205();
    if (os_log_type_enabled(v255, v256))
    {
      v257 = OUTLINED_FUNCTION_16_1();
      OUTLINED_FUNCTION_226(v257);
      OUTLINED_FUNCTION_220(&dword_231CAE000, v258, v259, "Programmer Error: mailManualSummary should not reach here");
      OUTLINED_FUNCTION_49_2();
    }

    OUTLINED_FUNCTION_24_5();
    v260 = OUTLINED_FUNCTION_235();
    (v20)(v260);
    v261 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74C28, &unk_231E1C640) + 48);

    v262 = OUTLINED_FUNCTION_48();
    sub_231CC154C(v262, v263, &qword_231E17120);
    OUTLINED_FUNCTION_153_1();
    sub_231CC154C(v264, v265, v266);
    OUTLINED_FUNCTION_153_1();
    sub_231CC154C(v267, v268, v269);
    v270 = OUTLINED_FUNCTION_157_0();
    v744(v270);
    v271 = OUTLINED_FUNCTION_156_2();
    v272(v271);
    OUTLINED_FUNCTION_76_2();
    *v215 = v273;
    v215[1] = 0x8000000231E32860;
    v274 = *MEMORY[0x277D42140];
    v275 = sub_231E0FDE0();
    OUTLINED_FUNCTION_6_0(v275);
    v277 = *(v276 + 104);
    v278 = OUTLINED_FUNCTION_267();
    v279(v278);
    v280 = OUTLINED_FUNCTION_247();
    v281(v280);
LABEL_73:
    v282 = OUTLINED_FUNCTION_179_0();
    v283(v282);
    goto LABEL_74;
  }

  if (v226 != *MEMORY[0x277D424E0])
  {
    if (v226 == *MEMORY[0x277D424C0] || v226 == *MEMORY[0x277D424D0])
    {
      v353 = OUTLINED_FUNCTION_19_6();
      v354(v353);
      v355 = OUTLINED_FUNCTION_246();
      v356(v355);
      isa = v45[13].isa;
      v357 = v45 + 13;
      v359 = OUTLINED_FUNCTION_123_1();
      v360(v359);
      v361 = OUTLINED_FUNCTION_250();
      v362(v361);
      v363 = OUTLINED_FUNCTION_249();
      v364(v363);
      v365 = v758[2];
      if (v365)
      {
        v757 = *(v14 + 624);
        v366 = *(v14 + 616);
        v367 = *(v14 + 592);
        OUTLINED_FUNCTION_26_5();
        OUTLINED_FUNCTION_265();
        v369 = v368;
        sub_231D41D3C(v370, v371, v372);
        OUTLINED_FUNCTION_248();
        LODWORD(v741) = *MEMORY[0x277D423E0];
        v740 = *MEMORY[0x277D423F0];
        v20 = v366 + 104;
        v738 = *MEMORY[0x277D423E8];
        v373 = (v369 + 48);
        OUTLINED_FUNCTION_254(*MEMORY[0x277D423F8]);
        do
        {
          v374 = *(v373 - 1);
          if (*v373)
          {
            v375 = OUTLINED_FUNCTION_61_4();
            v376(v375);
          }

          else
          {
            v377 = *(v14 + 584);
            v378 = *(v14 + 576);
            v379 = *(v373 - 2);
            v380 = OUTLINED_FUNCTION_65_3();
            sub_231D1E298(v380, 1, v378);
            OUTLINED_FUNCTION_141_1();
            if (v132)
            {
              sub_231CC154C(*(v14 + 576), &qword_27DD74BE0, &qword_231E1CC20);
              v357 = [v357 uniqueIdentifier];
              sub_231E11620();
              OUTLINED_FUNCTION_102_1();
              v381 = OUTLINED_FUNCTION_54_0();
              sub_231D42B30(v381, v382, 0);

              v388 = OUTLINED_FUNCTION_60_4();
            }

            else
            {
              v383 = OUTLINED_FUNCTION_68_4();
              v374(v383);
              v384 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74C60, &qword_231E1C680);
              v385 = OUTLINED_FUNCTION_178_0(v384);
              v374(v385);
              v386 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74C68, &qword_231E1C688);
              OUTLINED_FUNCTION_6_0(v386);
              (*(v387 + 104))(v378 + v377, v741);
              v388 = OUTLINED_FUNCTION_81_3();
              v390 = v740;
            }

            v389(v388, v390, v760);
          }

          OUTLINED_FUNCTION_176_0();
          if (v164)
          {
            v394 = OUTLINED_FUNCTION_2_12(v391);
            OUTLINED_FUNCTION_282(v394);
          }

          v392 = OUTLINED_FUNCTION_46_4();
          v393(v392);
          v373 += 24;
          --v365;
        }

        while (v365);
      }

      OUTLINED_FUNCTION_14_7();
      OUTLINED_FUNCTION_155_2();
      sub_231D42F54(v458, v459, v460, v461);
      OUTLINED_FUNCTION_155_2();
      sub_231D42F54(v462, v463, v464, v465);
      v466 = OUTLINED_FUNCTION_139_0();
      v474 = OUTLINED_FUNCTION_118_3(v466, v467, v468, v469, v470, v471, v472, v473, v597, v600, v603, v606, v609, v612, v615, v618, v621, v624, v627, v630, v633, v636, v639, v642, v645, v648, v651, v654, v657, v660, v663, v666, v669, v672, v675, v678, v681, v684, v687, v690, v693, v696, v699, v702, v705, v708, v711);
      v475(v474);
      OUTLINED_FUNCTION_15_10();
      sub_231D42B40(v476, v477);
      v478 = OUTLINED_FUNCTION_37_6();
      v486 = OUTLINED_FUNCTION_54_5(v478, v479, v480, v481, v482, v483, v484, v485, v598, v601, v604, v607, v610, v613, v616, v619, v622, v625, v628, v631, v634, v637, v640, v643, v646, v649, v652, v655, v658, v661, v664, v667, v670, v673, v676, v679, v682, v685, v688, v691, v694, v697, v700, v703, v706, v709, v712, v714, v716, v718, v720, v722, v724, v726, v728, v730, v731, v732);
      v488 = v487(v486);
      v495 = OUTLINED_FUNCTION_162(v488, *MEMORY[0x277D424E8], v489, v490, v491, v492, v493, v494, v599, v602, v605, v608, v611, v614, v617, v620, v623, v626, v629, v632, v635, v638, v641, v644, v647, v650, v653, v656, v659, v662, v665, v668, v671, v674, v677, v680, v683, v686, v689, v692, v695, v698, v701, v704, v707, v710, v713, v715, v717, v719, v721, v723, v725, v727, v729);
      v496(v495);
      sub_231E10D00();

      v497 = *(v20 + 8);
      v498 = OUTLINED_FUNCTION_59_0();
      v499(v498);
      OUTLINED_FUNCTION_134_1();
      sub_231CC154C(v500, v501, v502);
      OUTLINED_FUNCTION_134_1();
      sub_231CC154C(v503, v504, v505);
      OUTLINED_FUNCTION_134_1();
      sub_231CC154C(v506, v507, v508);
      v509 = OUTLINED_FUNCTION_36_5();
      (v758)(v509);
      v510 = OUTLINED_FUNCTION_43_8();
      v511(v510);
      v512 = OUTLINED_FUNCTION_8_10();
      v513(v512);
      v514 = *MEMORY[0x277D421B0];
      v515 = sub_231E0FE10();
      OUTLINED_FUNCTION_6_0(v515);
      v517 = *(v516 + 104);
      v518 = OUTLINED_FUNCTION_48();
      v519(v518);
      v520 = *MEMORY[0x277D42148];
      v521 = sub_231E0FDE0();
      OUTLINED_FUNCTION_6_0(v521);
      v523 = *(v522 + 104);
      v127 = OUTLINED_FUNCTION_48();
    }

    else
    {
      OUTLINED_FUNCTION_22_5();

      sub_231D3EA58(v186, &off_278947000);

      OUTLINED_FUNCTION_69_3();
      sub_231CC154C(v408, v409, v410);
      OUTLINED_FUNCTION_69_3();
      sub_231CC154C(v411, v412, v413);
      OUTLINED_FUNCTION_69_3();
      sub_231CC154C(v414, v415, v416);
      v417 = OUTLINED_FUNCTION_59_5();
      v743(v417);
      v418 = OUTLINED_FUNCTION_32_5();
      v752(v418);
      v419 = OUTLINED_FUNCTION_119_1();
      v420(v419);
      v127 = OUTLINED_FUNCTION_243();
    }

    goto LABEL_18;
  }

  OUTLINED_FUNCTION_21_5();
  OUTLINED_FUNCTION_189();
  v302();
  v303 = *(v186 + 8);
  v304 = OUTLINED_FUNCTION_48();
  v305(v304);
  v306 = v758[2];
  if (v306)
  {
    v756 = *(v14 + 520);
    v307 = *(v14 + 512);
    v308 = *(v14 + 488);
    v309 = OUTLINED_FUNCTION_26_5();
    OUTLINED_FUNCTION_279(v309);
    OUTLINED_FUNCTION_256();
    v739 = *MEMORY[0x277D423E0];
    v737 = *MEMORY[0x277D423F0];
    v310 = (v307 + 104);
    v736 = *MEMORY[0x277D423E8];
    v311 = &off_278947030;
    OUTLINED_FUNCTION_253(*MEMORY[0x277D423F8]);
    do
    {
      v312 = *(v311 - 2);
      v313 = *(v311 - 1);
      if (*v311)
      {
        v314 = OUTLINED_FUNCTION_64_2();
        v315(v314);
      }

      else
      {
        v317 = *(v14 + 472);
        v316 = *(v14 + 480);
        v318 = v312;
        v319 = OUTLINED_FUNCTION_55_3();
        sub_231D164A4(v319, v320, v321);
        OUTLINED_FUNCTION_142_1();
        if (v132)
        {
          sub_231CC154C(*(v14 + 472), &qword_27DD74510, &qword_231E1E2D0);
          v310 = [v310 uniqueIdentifier];
          sub_231E11620();
          OUTLINED_FUNCTION_185();

          v327 = OUTLINED_FUNCTION_63_3();
        }

        else
        {
          v322 = OUTLINED_FUNCTION_70_3();
          (v312)(v322);
          v323 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74C48, &qword_231E1C670) + 48);
          v324 = OUTLINED_FUNCTION_109_2();
          (v312)(v324);
          v325 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74C50, &qword_231E1C678);
          OUTLINED_FUNCTION_6_0(v325);
          (*(v326 + 104))(v317 + v323, v739);
          v327 = OUTLINED_FUNCTION_89_2();
          v329 = v737;
        }

        v328(v327, v329, v760);
      }

      OUTLINED_FUNCTION_188();
      if (v164)
      {
        v333 = OUTLINED_FUNCTION_2_12(v330);
        OUTLINED_FUNCTION_221(v333);
        v310 = v215;
        v215 = v766;
      }

      v331 = OUTLINED_FUNCTION_47_5();
      v332(v331);
      v311 += 24;
      --v306;
    }

    while (v306);
  }

  else
  {

    v215 = MEMORY[0x277D84F90];
  }

  v421 = *(v14 + 464);
  *(v14 + 416) = v215;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74C30, &qword_231E1C650);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74C38, &qword_231E1C658);
  OUTLINED_FUNCTION_151_1();
  v422 = swift_task_alloc();
  OUTLINED_FUNCTION_190(v422);
  v423 = *(MEMORY[0x277D858E8] + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_58_0();
  *(v14 + 1912) = v424;
  *v424 = v425;
  OUTLINED_FUNCTION_9_9(v424);
  OUTLINED_FUNCTION_45_2();
  OUTLINED_FUNCTION_44();

  return MEMORY[0x282200600](v426, v427, v428, v429, v430, v431, v432, v433, a9, a10, a11, a12);
}

uint64_t sub_231D337F0()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_15();
  *v2 = v1;
  v4 = *(v3 + 1608);
  *v2 = *v0;
  *(v1 + 1616) = v5;

  v6 = OUTLINED_FUNCTION_10();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_231D338DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_57_0();
  v13 = v12[202];
  v14 = *(v13 + 16);
  if (v14)
  {
    v15 = v12[114];
    v16 = v12[110];
    v100 = MEMORY[0x277D84F90];
    OUTLINED_FUNCTION_265();
    sub_231D41D9C(v17, v18, v19);
    v20 = *(v16 + 16);
    v16 += 16;
    v21 = *(v16 + 64);
    OUTLINED_FUNCTION_79();
    v23 = v13 + v22;
    v95 = *(v16 + 56);
    v97 = v24;
    v93 = (v16 + 16);
    v91 = *MEMORY[0x277D423D0];
    v87 = *MEMORY[0x277D423F0];
    do
    {
      v25 = v12[116];
      v26 = v12[113];
      v27 = v12[112];
      v28 = v12[109];
      v97(v27, v23, v28);
      v29 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74C70, &qword_231E1C690) + 48);
      (*v93)(v25, v27, v28);
      v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74C78, &qword_231E1C698);
      OUTLINED_FUNCTION_6_0(v30);
      (*(v31 + 104))(v25 + v29, v91);
      (*(v15 + 104))(v25, v87, v26);
      v33 = *(v100 + 16);
      v32 = *(v100 + 24);
      if (v33 >= v32 >> 1)
      {
        v38 = OUTLINED_FUNCTION_2_12(v32);
        sub_231D41D9C(v38, v33 + 1, 1);
      }

      v34 = v12[116];
      v35 = v12[113];
      *(v100 + 16) = v33 + 1;
      v36 = *(v15 + 80);
      OUTLINED_FUNCTION_79();
      (*(v15 + 32))(v100 + v37 + *(v15 + 72) * v33);
      v23 += v95;
      --v14;
    }

    while (v14);
  }

  v39 = v12[202];

  v80 = v12[181];
  v81 = v12[182];
  v40 = v12[178];
  v78 = v12[175];
  v98 = v12[151];
  v99 = v12[153];
  v41 = v12[150];
  v92 = v12[149];
  v94 = v12[148];
  v96 = v12[152];
  v42 = v12[145];
  v86 = v12[147];
  v88 = v12[144];
  v84 = v12[139];
  v85 = v12[143];
  v82 = v12[125];
  v83 = v12[132];
  v43 = v12[124];
  v44 = v12[123];
  v45 = v12[119];
  v46 = v12[118];
  v79 = v12[109];
  v47 = v12[57];
  v89 = v12[117];
  v90 = v12[56];
  sub_231E0FF20();
  sub_231E0FF30();
  sub_231E0FF40();
  v80(v40, v47, v78);
  OUTLINED_FUNCTION_16_8();
  sub_231D42B40(v48, v49);
  sub_231E108D0();
  v50 = *(v42 + 16);
  v51 = OUTLINED_FUNCTION_259();
  v52(v51);
  (*(v46 + 104))(v45, *MEMORY[0x277D424F0], v89);
  sub_231E10D00();
  v53 = *(v42 + 8);
  v54 = OUTLINED_FUNCTION_33();
  v55(v54);
  (*(v92 + 8))(v41, v94);
  (*(v96 + 8))(v99, v98);
  v56 = *MEMORY[0x277D421B0];
  v57 = sub_231E0FE10();
  OUTLINED_FUNCTION_6_0(v57);
  v59 = *(v58 + 104);
  v60 = OUTLINED_FUNCTION_59_0();
  v61(v60);
  v62 = *MEMORY[0x277D42148];
  v63 = sub_231E0FDE0();
  OUTLINED_FUNCTION_6_0(v63);
  v65 = *(v64 + 104);
  v66 = OUTLINED_FUNCTION_59_0();
  v67(v66);
  OUTLINED_FUNCTION_0_22();
  OUTLINED_FUNCTION_6_13();
  v77 = v12[104];
  OUTLINED_FUNCTION_49_6();
  OUTLINED_FUNCTION_106_3();

  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_44();

  return v69(v68, v69, v70, v71, v72, v73, v74, v75, a9, a10, a11, a12);
}

uint64_t sub_231D33F88()
{
  OUTLINED_FUNCTION_29();
  v2 = *v1;
  OUTLINED_FUNCTION_4();
  *v3 = v2;
  v2[34] = v1;
  v2[35] = v4;
  v2[36] = v0;
  OUTLINED_FUNCTION_223();
  v6 = *(v5 + 1640);
  *v7 = *v1;
  v2[206] = v0;

  OUTLINED_FUNCTION_223();
  v9 = *(v8 + 1632);
  if (v0)
  {
    v10 = OUTLINED_FUNCTION_42_6();
    v11(v10);
  }

  else
  {
    v12 = *(v8 + 1632);
  }

  OUTLINED_FUNCTION_31();

  return MEMORY[0x2822009F8](v13, v14, v15);
}

uint64_t sub_231D340D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_142();
  OUTLINED_FUNCTION_57_0();
  v19 = *(v14 + 1648);
  v20 = *(v14 + 280);
  v21 = OUTLINED_FUNCTION_269(*(v14 + 1624));
  v22 = sub_231D3EE08(v21);
  OUTLINED_FUNCTION_272(v22);
  if (!v12)
  {
    v67 = OUTLINED_FUNCTION_31_5();
    v68(v67);

    OUTLINED_FUNCTION_147_1();
    (v18)();
    v69 = OUTLINED_FUNCTION_186();
    v70(v69);
    v71 = sub_231E10E10();
    v72 = sub_231E11AD0();
    OUTLINED_FUNCTION_230(v72);
    OUTLINED_FUNCTION_62_1();
    if (v73)
    {
      v74 = OUTLINED_FUNCTION_9_1();
      v75 = OUTLINED_FUNCTION_67();
      OUTLINED_FUNCTION_232(v75);
      *v74 = 136446210;
      sub_231E10C80();
      v76 = OUTLINED_FUNCTION_86_3();
      (v15)(v76);
      v77 = OUTLINED_FUNCTION_259();
      sub_231CB5000(v77, v78, v79);
      OUTLINED_FUNCTION_112_3();

      *(v74 + 4) = v16;
      OUTLINED_FUNCTION_3_7();
      _os_log_impl(v80, v81, v82, v83, v84, 0xCu);
      OUTLINED_FUNCTION_8_0();
      OUTLINED_FUNCTION_11();

      v85 = OUTLINED_FUNCTION_251();
      v86(v85);
    }

    else
    {

      v119 = OUTLINED_FUNCTION_91_3();
      (v15)(v119);
      v120 = OUTLINED_FUNCTION_245();
      (v13)(v120);
    }

    *(v14 + 344) = OUTLINED_FUNCTION_278();
    *(v14 + 352) = v121;
    OUTLINED_FUNCTION_78_1();
    OUTLINED_FUNCTION_277();
    OUTLINED_FUNCTION_276();
    v122 = *(v14 + 352);
    *v15 = *(v14 + 344);
    *(v15 + 8) = v122;
    v123 = *MEMORY[0x277D42140];
    v124 = sub_231E0FDE0();
    OUTLINED_FUNCTION_6_0(v124);
    v126 = *(v125 + 104);
    v127 = v15;
LABEL_17:
    v128 = v123;
LABEL_18:
    v126(v127, v128);
    goto LABEL_74;
  }

  v23 = OUTLINED_FUNCTION_28_4();
  OUTLINED_FUNCTION_191(v23, *MEMORY[0x277D421D8]);
  v25 = v24();
  v26 = OUTLINED_FUNCTION_84_2(v25, *MEMORY[0x277D423A8]);
  v27(v26);
  v28 = sub_231E0F5F0();
  OUTLINED_FUNCTION_48_5(v28);
  v29 = OUTLINED_FUNCTION_255();
  v31 = v30(v29);
  if (v31 != v752)
  {
    if (v31 == *MEMORY[0x277D424C8])
    {
      v87 = *(v14 + 1512);
      v753 = *(v14 + 1496);
      OUTLINED_FUNCTION_87_3();
      OUTLINED_FUNCTION_35_5();
      OUTLINED_FUNCTION_85_2();
      v88();

      v89 = OUTLINED_FUNCTION_80();
      v759(v89);
      OUTLINED_FUNCTION_69_3();
      (v18)();
      v90 = sub_231E10E10();
      sub_231E11AE0();
      OUTLINED_FUNCTION_205();
      if (os_log_type_enabled(v90, v91))
      {
        v92 = OUTLINED_FUNCTION_16_1();
        OUTLINED_FUNCTION_226(v92);
        OUTLINED_FUNCTION_219(&dword_231CAE000, v93, v94, "Programmer Error: mailManualSummary should not reach here");
        OUTLINED_FUNCTION_49_2();
      }

      v95 = *(v14 + 1504);
      v96 = *(v14 + 1360);
      v97 = *(v14 + 1304);
      v98 = *(v14 + 1296);
      v750 = *(v14 + 1280);
      v754 = *(v14 + 1216);
      v761 = *(v14 + 1208);
      v745 = *(v14 + 1192);
      v747 = *(v14 + 1184);
      OUTLINED_FUNCTION_25_6();
      OUTLINED_FUNCTION_83_2();
      v99 = OUTLINED_FUNCTION_252();
      v95(v99);
      LODWORD(v98) = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74C28, &unk_231E1C640) + 48);

      v100 = OUTLINED_FUNCTION_48();
      sub_231CC154C(v100, v101, &qword_231E17120);
      OUTLINED_FUNCTION_131_1();
      sub_231CC154C(v102, v103, v104);
      OUTLINED_FUNCTION_131_1();
      sub_231CC154C(v105, v106, v107);
      (*(v13 + 8))();
      v108 = OUTLINED_FUNCTION_229();
      v109(v108);
      OUTLINED_FUNCTION_76_2();
      *v16 = v110;
      v16[1] = 0x8000000231E32860;
      v111 = *MEMORY[0x277D42140];
      v112 = sub_231E0FDE0();
      OUTLINED_FUNCTION_6_0(v112);
      v114 = *(v113 + 104);
      v115 = OUTLINED_FUNCTION_233();
      v116(v115);
      v117 = OUTLINED_FUNCTION_180();
      v118(v117);
      goto LABEL_73;
    }

    OUTLINED_FUNCTION_177_0();
    v132 = v132 || v129 == v130;
    if (!v132 && v129 != v131)
    {
      v762 = *(v14 + 1512);
      v134 = *(v14 + 1472);
      v135 = *(v14 + 1440);
      v746 = *(v14 + 1408);
      v748 = *(v14 + 1400);
      v136 = *(v14 + 1256);
      v751 = *(v14 + 1248);
      v755 = *(v14 + 1280);
      OUTLINED_FUNCTION_25_6();
      OUTLINED_FUNCTION_107_3();

      sub_231D3EA58(v135, v12);

      OUTLINED_FUNCTION_284();
      v137 = OUTLINED_FUNCTION_57();
      sub_231CC154C(v137, v138, &qword_231E17120);
      v139 = OUTLINED_FUNCTION_48();
      sub_231CC154C(v139, v140, &qword_231E17120);
      (*(v18 + 8))();
      v141 = OUTLINED_FUNCTION_229();
      v142(v141);
      v143 = OUTLINED_FUNCTION_175_0();
      v144(v143);
      v126 = *(v136 + 8);
      v128 = v751;
      v127 = v755;
      goto LABEL_18;
    }
  }

  v32 = OUTLINED_FUNCTION_92_2();
  v33(v32);
  OUTLINED_FUNCTION_208();
  v760 = v12;
  if (v19 >= 2)
  {
    OUTLINED_FUNCTION_66_4();
    v34 = *(v14 + 1384);
    v35 = OUTLINED_FUNCTION_231();
    v36(v35);

    v37 = sub_231E10E10();
    v38 = sub_231E11AE0();

    os_log_type_enabled(v37, v38);
    OUTLINED_FUNCTION_184();
    if (v39)
    {
      OUTLINED_FUNCTION_9_1();
      OUTLINED_FUNCTION_151_1();
      v766 = swift_slowAlloc();
      v40 = OUTLINED_FUNCTION_90_3(4.8149e-34);
      *(v12 + 4) = sub_231CB5000(v40, v12, v41);
      OUTLINED_FUNCTION_182(&dword_231CAE000, v42, v38, "Found more than one item for the spotlight id: %s. Continuing anyway using only the first item.");
      __swift_destroy_boxed_opaque_existential_0(v766);
      OUTLINED_FUNCTION_30();
      OUTLINED_FUNCTION_49_2();
    }

    v43 = OUTLINED_FUNCTION_113_2();
    v17(v43);
  }

  OUTLINED_FUNCTION_183();
  v44 = [v758 attributeSet];
  *(v14 + 1704) = v44;
  v45 = v44;
  v46 = [v45 summarizationContentTopic];
  sub_231D41110(v46);

  v47 = &qword_27DD74470;
  OUTLINED_FUNCTION_143_1();
  sub_231CC154C(v48, v49, v50);
  OUTLINED_FUNCTION_131_1();
  sub_231D42DEC(v51, v52, v53, &qword_231E17120);
  OUTLINED_FUNCTION_273([v45 summarizationContentTopLine]);

  v54 = OUTLINED_FUNCTION_80();
  sub_231CC154C(v54, v55, &qword_231E17120);
  OUTLINED_FUNCTION_209();
  sub_231D42DEC(v56, v57, v58, &qword_231E17120);
  OUTLINED_FUNCTION_273([v45 summarizationContentSynopsis]);

  OUTLINED_FUNCTION_143_1();
  sub_231CC154C(v59, v60, v61);
  v62 = OUTLINED_FUNCTION_116_3();
  sub_231D42DEC(v62, v63, &qword_27DD74470, &qword_231E17120);
  v64 = [v45 isUrgent];
  if (v64)
  {
    v65 = v64;
    v66 = [v64 BOOLValue];
  }

  else
  {
    v66 = 2;
  }

  *(v14 + 1924) = v66;
  v145 = OUTLINED_FUNCTION_100_3();
  v146 = OUTLINED_FUNCTION_82();
  v148 = [v146 v147];

  if (v148)
  {
    OUTLINED_FUNCTION_275();
    swift_unknownObjectRelease();
  }

  else
  {
    OUTLINED_FUNCTION_152_0();
  }

  OUTLINED_FUNCTION_172_0();
  v149 = MEMORY[0x277D84F70];
  if (v150)
  {
    OUTLINED_FUNCTION_216();
    v151 = *(v14 + 392);
    v152 = *(v14 + 400);
    OUTLINED_FUNCTION_228();
    if (v132)
    {
      v154 = 0;
    }
  }

  else
  {
    sub_231CC154C(v14 + 56, &dword_27DD741E0, &qword_231E15D70);
    OUTLINED_FUNCTION_227();
  }

  *(v14 + 1720) = v154;
  *(v14 + 1712) = v153;
  v155 = OUTLINED_FUNCTION_100_3();
  v156 = OUTLINED_FUNCTION_82();
  v158 = [v156 v157];

  if (v158)
  {
    OUTLINED_FUNCTION_275();
    swift_unknownObjectRelease();
  }

  else
  {
    OUTLINED_FUNCTION_152_0();
  }

  OUTLINED_FUNCTION_174_0();
  if (v159)
  {
    OUTLINED_FUNCTION_215();
    v160 = *(v14 + 376);
    v161 = *(v14 + 384);
    OUTLINED_FUNCTION_228();
  }

  else
  {
    sub_231CC154C(v14 + 88, &dword_27DD741E0, &qword_231E15D70);
    OUTLINED_FUNCTION_227();
  }

  *(v14 + 1744) = OUTLINED_FUNCTION_274(v162);
  *(v14 + 1752) = v163;
  sub_231CE22E0([v45 summarizationStatus]);
  OUTLINED_FUNCTION_79_1();
  if (!v132 & v164)
  {
    v165 = OUTLINED_FUNCTION_40_4();
    (v149)(v165);
    v166 = OUTLINED_FUNCTION_127_1();
    v167(v166);
  }

  else
  {
    OUTLINED_FUNCTION_192();
    v149 = v168;
    sub_231CE2318(v169, v170, v168, &qword_27DD74470);
    v171 = OUTLINED_FUNCTION_116_3();
    sub_231CB6F48(v171, v172, v149);
    v173 = OUTLINED_FUNCTION_40_4();
    (v149)(v173);
  }

  v174 = OUTLINED_FUNCTION_77_1();
  v175(v174);
  sub_231DE8E10([v45 urgencyStatus]);
  OUTLINED_FUNCTION_80_1();
  if (!v132 & v164)
  {
    v179 = OUTLINED_FUNCTION_40_4();
    (v149)(v179);
    v180 = OUTLINED_FUNCTION_128_1();
    v181(v180);
  }

  else
  {
    OUTLINED_FUNCTION_222(v176, v177, v178);
    OUTLINED_FUNCTION_281();
    v182 = OUTLINED_FUNCTION_40_4();
    (v149)(v182);
  }

  v183 = OUTLINED_FUNCTION_75_1();
  v184(v183);
  v185 = [v45 summarizedIdentifiers];
  v186 = MEMORY[0x277D84FA0];
  if (v185)
  {
    OUTLINED_FUNCTION_58_5();
    v47 = sub_231E11870();

    v766 = v186;

    v188 = OUTLINED_FUNCTION_271(v187);
    OUTLINED_FUNCTION_214(v188);

    sub_231E10CA0();
    v189 = OUTLINED_FUNCTION_70();
    if ((unk_231E15000)(v189) != v17)
    {
      v201 = OUTLINED_FUNCTION_167_0();
      v202(v201);
      v203 = swift_task_alloc();
      *(v14 + 1784) = v203;
      *v203 = v14;
      OUTLINED_FUNCTION_30_6(v203);
      OUTLINED_FUNCTION_95_3();

      return sub_231D3EE84();
    }

    OUTLINED_FUNCTION_217();

    v190 = *(v149 + 8);
    v191 = OUTLINED_FUNCTION_140_0();
    v192(v191);
  }

  else
  {
    OUTLINED_FUNCTION_140_1();
    v193 = OUTLINED_FUNCTION_59_0();
    (off_278947000)(v193);

    v45 = sub_231E10E10();
    v194 = sub_231E11AF0();

    os_log_type_enabled(v45, v194);
    OUTLINED_FUNCTION_169_0();
    if (v195)
    {
      OUTLINED_FUNCTION_9_1();
      v749 = v155;
      OUTLINED_FUNCTION_151_1();
      v196 = swift_slowAlloc();
      OUTLINED_FUNCTION_232(v196);
      v197 = OUTLINED_FUNCTION_90_3(4.8149e-34);
      v17 = sub_231CB5000(v197, v760, v198);

      *(v155 + 4) = v17;
      OUTLINED_FUNCTION_182(&dword_231CAE000, v199, v194, "Entity with spotlightIdentifier: %s had no summarized identifiers. No need to query spotlight again.");
      OUTLINED_FUNCTION_8_0();
      OUTLINED_FUNCTION_49_2();
    }

    else
    {
    }

    v200 = OUTLINED_FUNCTION_82_0();
    (v155)(v200);
    v186 = v758;
    v206 = v758;
    v209 = OUTLINED_FUNCTION_270(v206, v207, v208, MEMORY[0x277D84F90]);
    v210 = OUTLINED_FUNCTION_164_0(v209);
    if (v164)
    {
      v593 = OUTLINED_FUNCTION_44_6(v214);
      v210 = sub_231D41480(v593, v594, v595, v596);
      v213 = v210;
    }

    OUTLINED_FUNCTION_115_2(v210, v211, v212, v213);
  }

  OUTLINED_FUNCTION_241();
  v215 = MEMORY[0x277D84F90];
  OUTLINED_FUNCTION_163_0(v216, v217, v218, v219);
  do
  {
    OUTLINED_FUNCTION_238(v220);
    if (v132)
    {
      break;
    }

    OUTLINED_FUNCTION_161_0(v221, v222, v223, v224);
  }

  while (!v132);
  OUTLINED_FUNCTION_73_2(v221, v222, v223, v224);
  v225 = OUTLINED_FUNCTION_25();
  v226 = (unk_231E15000)(v225);
  if (v226 == v17)
  {
    v227 = *(v14 + 1696);
    OUTLINED_FUNCTION_21_5();
    OUTLINED_FUNCTION_57_4();
    v228();
    v230 = v215[1];
    v229 = v215 + 1;
    v231 = OUTLINED_FUNCTION_25();
    v233 = v232(v231);
    v234 = sub_231D27B60(v233);
    OUTLINED_FUNCTION_105_3(v234);
    OUTLINED_FUNCTION_154_1(v47);
    if (!v132)
    {
      v292 = OUTLINED_FUNCTION_93_3();
      v293(v292);
      if (v227[232])
      {
        if (v227[232] == 1)
        {
          OUTLINED_FUNCTION_283();
          v294 = OUTLINED_FUNCTION_18_7();
          v295 = *(v294 + 8);
          OUTLINED_FUNCTION_41_6(v294 + 8);
          v763 = v296 + *v296;
          v298 = *(v297 + 4);
          v299 = swift_task_alloc();
          *(v14 + 1864) = v299;
          *v299 = v14;
          OUTLINED_FUNCTION_7_13(v299);
          OUTLINED_FUNCTION_95_3();

          __asm { BRAA            X3, X16 }
        }

        OUTLINED_FUNCTION_283();
        v400 = OUTLINED_FUNCTION_18_7();
        v401 = *(v400 + 16);
        OUTLINED_FUNCTION_41_6(v400 + 16);
        v764 = v402 + *v402;
        v404 = *(v403 + 4);
        v405 = swift_task_alloc();
        *(v14 + 1888) = v405;
        *v405 = v14;
        OUTLINED_FUNCTION_7_13(v405);
        OUTLINED_FUNCTION_95_3();

        __asm { BRAA            X3, X16 }
      }

      if ([*(v14 + 1704) summarizedIdentifiers])
      {
        OUTLINED_FUNCTION_239();
        sub_231E11870();

        v396 = OUTLINED_FUNCTION_271(v395);

        v397 = sub_231D3F7BC(v396);
        *(v14 + 1832) = v397;
        *(v14 + 1840) = v186;
        OUTLINED_FUNCTION_101_3();
        v398 = sub_231E115F0();
        v399 = [v227 attributeForKey_];

        if (v399)
        {
          OUTLINED_FUNCTION_308();
          swift_unknownObjectRelease();
        }

        else
        {
          OUTLINED_FUNCTION_152_0();
        }

        OUTLINED_FUNCTION_173_0();
        if (v524)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74C98, &qword_231E1C6A8);
          if (OUTLINED_FUNCTION_165())
          {
            OUTLINED_FUNCTION_237();
            if (v525)
            {
              OUTLINED_FUNCTION_160_0();
              OUTLINED_FUNCTION_114_0();
              if (v132)
              {
                v526 = *(v14 + 464);
                v527 = v526[27];
                v528 = v526[28];
                v529 = OUTLINED_FUNCTION_33_9(v526 + 24);
                v530 = *(v529 + 24);
                OUTLINED_FUNCTION_41_6(v529 + 24);
                v765 = v531 + *v531;
                v533 = *(v532 + 4);
                v534 = swift_task_alloc();
                *(v14 + 1856) = v534;
                *v534 = v14;
                OUTLINED_FUNCTION_13_9(v534);
                OUTLINED_FUNCTION_50_4();
                OUTLINED_FUNCTION_122_1();
                OUTLINED_FUNCTION_95_3();

                __asm { BRAA            X4, X16 }
              }

              OUTLINED_FUNCTION_3_16();

              OUTLINED_FUNCTION_195();
              OUTLINED_FUNCTION_71_3();
              sub_231CC154C(v570, v571, v572);
              OUTLINED_FUNCTION_71_3();
              sub_231CC154C(v573, v574, v575);
              OUTLINED_FUNCTION_71_3();
              sub_231CC154C(v576, v577, v578);
              v579 = OUTLINED_FUNCTION_12_10();
              v580(v579);
              v581 = OUTLINED_FUNCTION_20_7();
              v582(v581);
              OUTLINED_FUNCTION_101_3();
              v584 = (v583 + 48);
            }

            else
            {
              OUTLINED_FUNCTION_3_16();

              OUTLINED_FUNCTION_195();
              OUTLINED_FUNCTION_71_3();
              sub_231CC154C(v556, v557, v558);
              OUTLINED_FUNCTION_71_3();
              sub_231CC154C(v559, v560, v561);
              OUTLINED_FUNCTION_71_3();
              sub_231CC154C(v562, v563, v564);
              v565 = OUTLINED_FUNCTION_12_10();
              v566(v565);
              v567 = OUTLINED_FUNCTION_20_7();
              v568(v567);
              OUTLINED_FUNCTION_101_3();
              v584 = (v569 + 5);
            }

            off_278947000 = v584;
            off_278947008 = v398;
            v585 = *MEMORY[0x277D42140];
            v586 = sub_231E0FDE0();
            OUTLINED_FUNCTION_6_0(v586);
            v588 = *(v587 + 104);
            v589 = OUTLINED_FUNCTION_233();
            v590(v589);
            v591 = OUTLINED_FUNCTION_202();
            v592(v591);
            goto LABEL_74;
          }

          OUTLINED_FUNCTION_99_2();
        }

        else
        {
          OUTLINED_FUNCTION_99_2();

          sub_231CC154C(v14 + 120, &dword_27DD741E0, &qword_231E15D70);
        }

        OUTLINED_FUNCTION_34_6();

        v537 = OUTLINED_FUNCTION_48();
        sub_231CC154C(v537, v538, &qword_231E17120);
        OUTLINED_FUNCTION_150_1();
        sub_231CC154C(v539, v540, v541);
        OUTLINED_FUNCTION_150_1();
        sub_231CC154C(v542, v543, v544);
        v545 = OUTLINED_FUNCTION_234();
        v546(v545);
        v547 = OUTLINED_FUNCTION_158_0();
        v548(v547);
        OUTLINED_FUNCTION_101_3();
        *v398 = v549 + 7;
        v398[1] = 0x8000000231E32910;
        v550 = *MEMORY[0x277D42140];
        v551 = sub_231E0FDE0();
        OUTLINED_FUNCTION_6_0(v551);
        v553 = *(v552 + 104);
        v554 = OUTLINED_FUNCTION_102_0();
        v555(v554);
        (off_278947008)(v760);
      }

      else
      {
        OUTLINED_FUNCTION_27_5();

        OUTLINED_FUNCTION_294();
        OUTLINED_FUNCTION_69_3();
        sub_231CC154C(v435, v436, v437);
        OUTLINED_FUNCTION_69_3();
        sub_231CC154C(v438, v439, v440);
        OUTLINED_FUNCTION_69_3();
        sub_231CC154C(v441, v442, v443);
        v444 = OUTLINED_FUNCTION_12_10();
        v445(v444);
        v446 = OUTLINED_FUNCTION_20_7();
        v447(v446);
        OUTLINED_FUNCTION_101_3();
        OUTLINED_FUNCTION_296(v448);
        v449 = *MEMORY[0x277D42140];
        v450 = sub_231E0FDE0();
        OUTLINED_FUNCTION_6_0(v450);
        v452 = *(v451 + 104);
        v453 = OUTLINED_FUNCTION_102_0();
        v454(v453);
        v455 = v155[1];
        v456 = OUTLINED_FUNCTION_202();
        v457(v456);
      }

LABEL_74:
      OUTLINED_FUNCTION_0_22();
      OUTLINED_FUNCTION_6_13();
      OUTLINED_FUNCTION_23_6();

      OUTLINED_FUNCTION_19();
      OUTLINED_FUNCTION_95_3();

      return v285(v284, v285, v286, v287, v288, v289, v290, v291, a9, a10, a11, a12);
    }

    OUTLINED_FUNCTION_52_5();

    sub_231CC154C(v20, &qword_27DD74580, &qword_231E17110);
    v235 = OUTLINED_FUNCTION_67_4();
    (v229)(v235);
    v236 = v760;
    v237 = sub_231E10E10();
    v238 = sub_231E11AD0();

    if (OUTLINED_FUNCTION_85())
    {
      OUTLINED_FUNCTION_72_2();
      v239 = OUTLINED_FUNCTION_199();
      OUTLINED_FUNCTION_298(v239);
      LODWORD(off_278947000) = 136315138;
      v240 = [v17 uniqueIdentifier];
      sub_231E11620();
      OUTLINED_FUNCTION_192();

      v241 = OUTLINED_FUNCTION_116_3();
      sub_231CB5000(v241, v242, v243);
      OUTLINED_FUNCTION_307();
      *(&off_278947000 + 4) = v240;
      OUTLINED_FUNCTION_159_0();
      _os_log_impl(v244, v245, v246, v247, v248, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v47);
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_30();

      v249 = OUTLINED_FUNCTION_236();
      v250(v249);
    }

    else
    {
      OUTLINED_FUNCTION_218();
      v334 = OUTLINED_FUNCTION_25();
      v238(v334);
    }

    v767 = OUTLINED_FUNCTION_38_5();
    v768 = v335;
    OUTLINED_FUNCTION_78_1();
    OUTLINED_FUNCTION_280();
    v336 = [&unk_231E15000 uniqueIdentifier];
    sub_231E11620();
    OUTLINED_FUNCTION_268();

    v337 = OUTLINED_FUNCTION_70();
    MEMORY[0x23837CC20](v337);

    OUTLINED_FUNCTION_69_3();
    sub_231CC154C(v338, v339, v340);
    OUTLINED_FUNCTION_69_3();
    sub_231CC154C(v341, v342, v343);
    OUTLINED_FUNCTION_69_3();
    sub_231CC154C(v344, v345, v346);
    v347 = OUTLINED_FUNCTION_36_5();
    (v758)(v347);
    v348 = OUTLINED_FUNCTION_43_8();
    v349(v348);
    *v236 = v767;
    v236[1] = v768;
    v123 = *MEMORY[0x277D42140];
    v350 = sub_231E0FDE0();
    OUTLINED_FUNCTION_6_0(v350);
    v126 = *(v351 + 104);
    v127 = v236;
    goto LABEL_17;
  }

  if (v226 == *MEMORY[0x277D424C8])
  {
    v251 = OUTLINED_FUNCTION_29_5();
    v252(v251);

    v253 = OUTLINED_FUNCTION_116_3();
    v749(v253);
    v254 = OUTLINED_FUNCTION_67_4();
    v752(v254);
    v255 = sub_231E10E10();
    sub_231E11AD0();
    OUTLINED_FUNCTION_205();
    if (os_log_type_enabled(v255, v256))
    {
      v257 = OUTLINED_FUNCTION_16_1();
      OUTLINED_FUNCTION_226(v257);
      OUTLINED_FUNCTION_220(&dword_231CAE000, v258, v259, "Programmer Error: mailManualSummary should not reach here");
      OUTLINED_FUNCTION_49_2();
    }

    OUTLINED_FUNCTION_24_5();
    v260 = OUTLINED_FUNCTION_235();
    (v20)(v260);
    v261 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74C28, &unk_231E1C640) + 48);

    v262 = OUTLINED_FUNCTION_48();
    sub_231CC154C(v262, v263, &qword_231E17120);
    OUTLINED_FUNCTION_153_1();
    sub_231CC154C(v264, v265, v266);
    OUTLINED_FUNCTION_153_1();
    sub_231CC154C(v267, v268, v269);
    v270 = OUTLINED_FUNCTION_157_0();
    v744(v270);
    v271 = OUTLINED_FUNCTION_156_2();
    v272(v271);
    OUTLINED_FUNCTION_76_2();
    *v215 = v273;
    v215[1] = 0x8000000231E32860;
    v274 = *MEMORY[0x277D42140];
    v275 = sub_231E0FDE0();
    OUTLINED_FUNCTION_6_0(v275);
    v277 = *(v276 + 104);
    v278 = OUTLINED_FUNCTION_267();
    v279(v278);
    v280 = OUTLINED_FUNCTION_247();
    v281(v280);
LABEL_73:
    v282 = OUTLINED_FUNCTION_179_0();
    v283(v282);
    goto LABEL_74;
  }

  if (v226 != *MEMORY[0x277D424E0])
  {
    if (v226 == *MEMORY[0x277D424C0] || v226 == *MEMORY[0x277D424D0])
    {
      v353 = OUTLINED_FUNCTION_19_6();
      v354(v353);
      v355 = OUTLINED_FUNCTION_246();
      v356(v355);
      isa = v45[13].isa;
      v357 = v45 + 13;
      v359 = OUTLINED_FUNCTION_123_1();
      v360(v359);
      v361 = OUTLINED_FUNCTION_250();
      v362(v361);
      v363 = OUTLINED_FUNCTION_249();
      v364(v363);
      v365 = v758[2];
      if (v365)
      {
        v757 = *(v14 + 624);
        v366 = *(v14 + 616);
        v367 = *(v14 + 592);
        OUTLINED_FUNCTION_26_5();
        OUTLINED_FUNCTION_265();
        v369 = v368;
        sub_231D41D3C(v370, v371, v372);
        OUTLINED_FUNCTION_248();
        LODWORD(v741) = *MEMORY[0x277D423E0];
        v740 = *MEMORY[0x277D423F0];
        v20 = v366 + 104;
        v738 = *MEMORY[0x277D423E8];
        v373 = (v369 + 48);
        OUTLINED_FUNCTION_254(*MEMORY[0x277D423F8]);
        do
        {
          v374 = *(v373 - 1);
          if (*v373)
          {
            v375 = OUTLINED_FUNCTION_61_4();
            v376(v375);
          }

          else
          {
            v377 = *(v14 + 584);
            v378 = *(v14 + 576);
            v379 = *(v373 - 2);
            v380 = OUTLINED_FUNCTION_65_3();
            sub_231D1E298(v380, 1, v378);
            OUTLINED_FUNCTION_141_1();
            if (v132)
            {
              sub_231CC154C(*(v14 + 576), &qword_27DD74BE0, &qword_231E1CC20);
              v357 = [v357 uniqueIdentifier];
              sub_231E11620();
              OUTLINED_FUNCTION_102_1();
              v381 = OUTLINED_FUNCTION_54_0();
              sub_231D42B30(v381, v382, 0);

              v388 = OUTLINED_FUNCTION_60_4();
            }

            else
            {
              v383 = OUTLINED_FUNCTION_68_4();
              v374(v383);
              v384 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74C60, &qword_231E1C680);
              v385 = OUTLINED_FUNCTION_178_0(v384);
              v374(v385);
              v386 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74C68, &qword_231E1C688);
              OUTLINED_FUNCTION_6_0(v386);
              (*(v387 + 104))(v378 + v377, v741);
              v388 = OUTLINED_FUNCTION_81_3();
              v390 = v740;
            }

            v389(v388, v390, v760);
          }

          OUTLINED_FUNCTION_176_0();
          if (v164)
          {
            v394 = OUTLINED_FUNCTION_2_12(v391);
            OUTLINED_FUNCTION_282(v394);
          }

          v392 = OUTLINED_FUNCTION_46_4();
          v393(v392);
          v373 += 24;
          --v365;
        }

        while (v365);
      }

      OUTLINED_FUNCTION_14_7();
      OUTLINED_FUNCTION_155_2();
      sub_231D42F54(v458, v459, v460, v461);
      OUTLINED_FUNCTION_155_2();
      sub_231D42F54(v462, v463, v464, v465);
      v466 = OUTLINED_FUNCTION_139_0();
      v474 = OUTLINED_FUNCTION_118_3(v466, v467, v468, v469, v470, v471, v472, v473, v597, v600, v603, v606, v609, v612, v615, v618, v621, v624, v627, v630, v633, v636, v639, v642, v645, v648, v651, v654, v657, v660, v663, v666, v669, v672, v675, v678, v681, v684, v687, v690, v693, v696, v699, v702, v705, v708, v711);
      v475(v474);
      OUTLINED_FUNCTION_15_10();
      sub_231D42B40(v476, v477);
      v478 = OUTLINED_FUNCTION_37_6();
      v486 = OUTLINED_FUNCTION_54_5(v478, v479, v480, v481, v482, v483, v484, v485, v598, v601, v604, v607, v610, v613, v616, v619, v622, v625, v628, v631, v634, v637, v640, v643, v646, v649, v652, v655, v658, v661, v664, v667, v670, v673, v676, v679, v682, v685, v688, v691, v694, v697, v700, v703, v706, v709, v712, v714, v716, v718, v720, v722, v724, v726, v728, v730, v731, v732);
      v488 = v487(v486);
      v495 = OUTLINED_FUNCTION_162(v488, *MEMORY[0x277D424E8], v489, v490, v491, v492, v493, v494, v599, v602, v605, v608, v611, v614, v617, v620, v623, v626, v629, v632, v635, v638, v641, v644, v647, v650, v653, v656, v659, v662, v665, v668, v671, v674, v677, v680, v683, v686, v689, v692, v695, v698, v701, v704, v707, v710, v713, v715, v717, v719, v721, v723, v725, v727, v729);
      v496(v495);
      sub_231E10D00();

      v497 = *(v20 + 8);
      v498 = OUTLINED_FUNCTION_59_0();
      v499(v498);
      OUTLINED_FUNCTION_134_1();
      sub_231CC154C(v500, v501, v502);
      OUTLINED_FUNCTION_134_1();
      sub_231CC154C(v503, v504, v505);
      OUTLINED_FUNCTION_134_1();
      sub_231CC154C(v506, v507, v508);
      v509 = OUTLINED_FUNCTION_36_5();
      (v758)(v509);
      v510 = OUTLINED_FUNCTION_43_8();
      v511(v510);
      v512 = OUTLINED_FUNCTION_8_10();
      v513(v512);
      v514 = *MEMORY[0x277D421B0];
      v515 = sub_231E0FE10();
      OUTLINED_FUNCTION_6_0(v515);
      v517 = *(v516 + 104);
      v518 = OUTLINED_FUNCTION_48();
      v519(v518);
      v520 = *MEMORY[0x277D42148];
      v521 = sub_231E0FDE0();
      OUTLINED_FUNCTION_6_0(v521);
      v523 = *(v522 + 104);
      v127 = OUTLINED_FUNCTION_48();
    }

    else
    {
      OUTLINED_FUNCTION_22_5();

      sub_231D3EA58(v186, &off_278947000);

      OUTLINED_FUNCTION_69_3();
      sub_231CC154C(v408, v409, v410);
      OUTLINED_FUNCTION_69_3();
      sub_231CC154C(v411, v412, v413);
      OUTLINED_FUNCTION_69_3();
      sub_231CC154C(v414, v415, v416);
      v417 = OUTLINED_FUNCTION_59_5();
      v743(v417);
      v418 = OUTLINED_FUNCTION_32_5();
      v752(v418);
      v419 = OUTLINED_FUNCTION_119_1();
      v420(v419);
      v127 = OUTLINED_FUNCTION_243();
    }

    goto LABEL_18;
  }

  OUTLINED_FUNCTION_21_5();
  OUTLINED_FUNCTION_189();
  v302();
  v303 = *(v186 + 8);
  v304 = OUTLINED_FUNCTION_48();
  v305(v304);
  v306 = v758[2];
  if (v306)
  {
    v756 = *(v14 + 520);
    v307 = *(v14 + 512);
    v308 = *(v14 + 488);
    v309 = OUTLINED_FUNCTION_26_5();
    OUTLINED_FUNCTION_279(v309);
    OUTLINED_FUNCTION_256();
    v739 = *MEMORY[0x277D423E0];
    v737 = *MEMORY[0x277D423F0];
    v310 = (v307 + 104);
    v736 = *MEMORY[0x277D423E8];
    v311 = &off_278947030;
    OUTLINED_FUNCTION_253(*MEMORY[0x277D423F8]);
    do
    {
      v312 = *(v311 - 2);
      v313 = *(v311 - 1);
      if (*v311)
      {
        v314 = OUTLINED_FUNCTION_64_2();
        v315(v314);
      }

      else
      {
        v317 = *(v14 + 472);
        v316 = *(v14 + 480);
        v318 = v312;
        v319 = OUTLINED_FUNCTION_55_3();
        sub_231D164A4(v319, v320, v321);
        OUTLINED_FUNCTION_142_1();
        if (v132)
        {
          sub_231CC154C(*(v14 + 472), &qword_27DD74510, &qword_231E1E2D0);
          v310 = [v310 uniqueIdentifier];
          sub_231E11620();
          OUTLINED_FUNCTION_185();

          v327 = OUTLINED_FUNCTION_63_3();
        }

        else
        {
          v322 = OUTLINED_FUNCTION_70_3();
          (v312)(v322);
          v323 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74C48, &qword_231E1C670) + 48);
          v324 = OUTLINED_FUNCTION_109_2();
          (v312)(v324);
          v325 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74C50, &qword_231E1C678);
          OUTLINED_FUNCTION_6_0(v325);
          (*(v326 + 104))(v317 + v323, v739);
          v327 = OUTLINED_FUNCTION_89_2();
          v329 = v737;
        }

        v328(v327, v329, v760);
      }

      OUTLINED_FUNCTION_188();
      if (v164)
      {
        v333 = OUTLINED_FUNCTION_2_12(v330);
        OUTLINED_FUNCTION_221(v333);
        v310 = v215;
        v215 = v766;
      }

      v331 = OUTLINED_FUNCTION_47_5();
      v332(v331);
      v311 += 24;
      --v306;
    }

    while (v306);
  }

  else
  {

    v215 = MEMORY[0x277D84F90];
  }

  v421 = *(v14 + 464);
  *(v14 + 416) = v215;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74C30, &qword_231E1C650);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74C38, &qword_231E1C658);
  OUTLINED_FUNCTION_151_1();
  v422 = swift_task_alloc();
  OUTLINED_FUNCTION_190(v422);
  v423 = *(MEMORY[0x277D858E8] + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_58_0();
  *(v14 + 1912) = v424;
  *v424 = v425;
  OUTLINED_FUNCTION_9_9(v424);
  OUTLINED_FUNCTION_45_2();
  OUTLINED_FUNCTION_44();

  return MEMORY[0x282200600](v426, v427, v428, v429, v430, v431, v432, v433, a9, a10, a11, a12);
}

uint64_t sub_231D36158()
{
  OUTLINED_FUNCTION_29();
  v2 = *v1;
  OUTLINED_FUNCTION_4();
  *v3 = v2;
  v2[37] = v1;
  v2[38] = v4;
  v2[39] = v0;
  OUTLINED_FUNCTION_223();
  v6 = *(v5 + 1672);
  *v7 = *v1;
  v2[210] = v0;

  OUTLINED_FUNCTION_223();
  v9 = *(v8 + 1664);
  if (v0)
  {
    v10 = OUTLINED_FUNCTION_42_6();
    v11(v10);
  }

  else
  {
    v12 = *(v8 + 1664);
  }

  OUTLINED_FUNCTION_31();

  return MEMORY[0x2822009F8](v13, v14, v15);
}

uint64_t sub_231D362A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_142();
  OUTLINED_FUNCTION_57_0();
  v19 = *(v14 + 1680);
  v20 = *(v14 + 304);
  v21 = OUTLINED_FUNCTION_269(*(v14 + 1656));
  v22 = sub_231D3EE08(v21);
  OUTLINED_FUNCTION_272(v22);
  if (!v12)
  {
    v67 = OUTLINED_FUNCTION_31_5();
    v68(v67);

    OUTLINED_FUNCTION_147_1();
    (v18)();
    v69 = OUTLINED_FUNCTION_186();
    v70(v69);
    v71 = sub_231E10E10();
    v72 = sub_231E11AD0();
    OUTLINED_FUNCTION_230(v72);
    OUTLINED_FUNCTION_62_1();
    if (v73)
    {
      v74 = OUTLINED_FUNCTION_9_1();
      v75 = OUTLINED_FUNCTION_67();
      OUTLINED_FUNCTION_232(v75);
      *v74 = 136446210;
      sub_231E10C80();
      v76 = OUTLINED_FUNCTION_86_3();
      (v15)(v76);
      v77 = OUTLINED_FUNCTION_259();
      sub_231CB5000(v77, v78, v79);
      OUTLINED_FUNCTION_112_3();

      *(v74 + 4) = v16;
      OUTLINED_FUNCTION_3_7();
      _os_log_impl(v80, v81, v82, v83, v84, 0xCu);
      OUTLINED_FUNCTION_8_0();
      OUTLINED_FUNCTION_11();

      v85 = OUTLINED_FUNCTION_251();
      v86(v85);
    }

    else
    {

      v119 = OUTLINED_FUNCTION_91_3();
      (v15)(v119);
      v120 = OUTLINED_FUNCTION_245();
      (v13)(v120);
    }

    *(v14 + 344) = OUTLINED_FUNCTION_278();
    *(v14 + 352) = v121;
    OUTLINED_FUNCTION_78_1();
    OUTLINED_FUNCTION_277();
    OUTLINED_FUNCTION_276();
    v122 = *(v14 + 352);
    *v15 = *(v14 + 344);
    *(v15 + 8) = v122;
    v123 = *MEMORY[0x277D42140];
    v124 = sub_231E0FDE0();
    OUTLINED_FUNCTION_6_0(v124);
    v126 = *(v125 + 104);
    v127 = v15;
LABEL_17:
    v128 = v123;
LABEL_18:
    v126(v127, v128);
    goto LABEL_74;
  }

  v23 = OUTLINED_FUNCTION_28_4();
  OUTLINED_FUNCTION_191(v23, *MEMORY[0x277D421D8]);
  v25 = v24();
  v26 = OUTLINED_FUNCTION_84_2(v25, *MEMORY[0x277D423A8]);
  v27(v26);
  v28 = sub_231E0F5F0();
  OUTLINED_FUNCTION_48_5(v28);
  v29 = OUTLINED_FUNCTION_255();
  v31 = v30(v29);
  if (v31 != v752)
  {
    if (v31 == *MEMORY[0x277D424C8])
    {
      v87 = *(v14 + 1512);
      v753 = *(v14 + 1496);
      OUTLINED_FUNCTION_87_3();
      OUTLINED_FUNCTION_35_5();
      OUTLINED_FUNCTION_85_2();
      v88();

      v89 = OUTLINED_FUNCTION_80();
      v759(v89);
      OUTLINED_FUNCTION_69_3();
      (v18)();
      v90 = sub_231E10E10();
      sub_231E11AE0();
      OUTLINED_FUNCTION_205();
      if (os_log_type_enabled(v90, v91))
      {
        v92 = OUTLINED_FUNCTION_16_1();
        OUTLINED_FUNCTION_226(v92);
        OUTLINED_FUNCTION_219(&dword_231CAE000, v93, v94, "Programmer Error: mailManualSummary should not reach here");
        OUTLINED_FUNCTION_49_2();
      }

      v95 = *(v14 + 1504);
      v96 = *(v14 + 1360);
      v97 = *(v14 + 1304);
      v98 = *(v14 + 1296);
      v750 = *(v14 + 1280);
      v754 = *(v14 + 1216);
      v761 = *(v14 + 1208);
      v745 = *(v14 + 1192);
      v747 = *(v14 + 1184);
      OUTLINED_FUNCTION_25_6();
      OUTLINED_FUNCTION_83_2();
      v99 = OUTLINED_FUNCTION_252();
      v95(v99);
      LODWORD(v98) = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74C28, &unk_231E1C640) + 48);

      v100 = OUTLINED_FUNCTION_48();
      sub_231CC154C(v100, v101, &qword_231E17120);
      OUTLINED_FUNCTION_131_1();
      sub_231CC154C(v102, v103, v104);
      OUTLINED_FUNCTION_131_1();
      sub_231CC154C(v105, v106, v107);
      (*(v13 + 8))();
      v108 = OUTLINED_FUNCTION_229();
      v109(v108);
      OUTLINED_FUNCTION_76_2();
      *v16 = v110;
      v16[1] = 0x8000000231E32860;
      v111 = *MEMORY[0x277D42140];
      v112 = sub_231E0FDE0();
      OUTLINED_FUNCTION_6_0(v112);
      v114 = *(v113 + 104);
      v115 = OUTLINED_FUNCTION_233();
      v116(v115);
      v117 = OUTLINED_FUNCTION_180();
      v118(v117);
      goto LABEL_73;
    }

    OUTLINED_FUNCTION_177_0();
    v132 = v132 || v129 == v130;
    if (!v132 && v129 != v131)
    {
      v762 = *(v14 + 1512);
      v134 = *(v14 + 1472);
      v135 = *(v14 + 1440);
      v746 = *(v14 + 1408);
      v748 = *(v14 + 1400);
      v136 = *(v14 + 1256);
      v751 = *(v14 + 1248);
      v755 = *(v14 + 1280);
      OUTLINED_FUNCTION_25_6();
      OUTLINED_FUNCTION_107_3();

      sub_231D3EA58(v135, v12);

      OUTLINED_FUNCTION_284();
      v137 = OUTLINED_FUNCTION_57();
      sub_231CC154C(v137, v138, &qword_231E17120);
      v139 = OUTLINED_FUNCTION_48();
      sub_231CC154C(v139, v140, &qword_231E17120);
      (*(v18 + 8))();
      v141 = OUTLINED_FUNCTION_229();
      v142(v141);
      v143 = OUTLINED_FUNCTION_175_0();
      v144(v143);
      v126 = *(v136 + 8);
      v128 = v751;
      v127 = v755;
      goto LABEL_18;
    }
  }

  v32 = OUTLINED_FUNCTION_92_2();
  v33(v32);
  OUTLINED_FUNCTION_208();
  v760 = v12;
  if (v19 >= 2)
  {
    OUTLINED_FUNCTION_66_4();
    v34 = *(v14 + 1384);
    v35 = OUTLINED_FUNCTION_231();
    v36(v35);

    v37 = sub_231E10E10();
    v38 = sub_231E11AE0();

    os_log_type_enabled(v37, v38);
    OUTLINED_FUNCTION_184();
    if (v39)
    {
      OUTLINED_FUNCTION_9_1();
      OUTLINED_FUNCTION_151_1();
      v766 = swift_slowAlloc();
      v40 = OUTLINED_FUNCTION_90_3(4.8149e-34);
      *(v12 + 4) = sub_231CB5000(v40, v12, v41);
      OUTLINED_FUNCTION_182(&dword_231CAE000, v42, v38, "Found more than one item for the spotlight id: %s. Continuing anyway using only the first item.");
      __swift_destroy_boxed_opaque_existential_0(v766);
      OUTLINED_FUNCTION_30();
      OUTLINED_FUNCTION_49_2();
    }

    v43 = OUTLINED_FUNCTION_113_2();
    v17(v43);
  }

  OUTLINED_FUNCTION_183();
  v44 = [v758 attributeSet];
  *(v14 + 1704) = v44;
  v45 = v44;
  v46 = [v45 summarizationContentTopic];
  sub_231D41110(v46);

  v47 = &qword_27DD74470;
  OUTLINED_FUNCTION_143_1();
  sub_231CC154C(v48, v49, v50);
  OUTLINED_FUNCTION_131_1();
  sub_231D42DEC(v51, v52, v53, &qword_231E17120);
  OUTLINED_FUNCTION_273([v45 summarizationContentTopLine]);

  v54 = OUTLINED_FUNCTION_80();
  sub_231CC154C(v54, v55, &qword_231E17120);
  OUTLINED_FUNCTION_209();
  sub_231D42DEC(v56, v57, v58, &qword_231E17120);
  OUTLINED_FUNCTION_273([v45 summarizationContentSynopsis]);

  OUTLINED_FUNCTION_143_1();
  sub_231CC154C(v59, v60, v61);
  v62 = OUTLINED_FUNCTION_116_3();
  sub_231D42DEC(v62, v63, &qword_27DD74470, &qword_231E17120);
  v64 = [v45 isUrgent];
  if (v64)
  {
    v65 = v64;
    v66 = [v64 BOOLValue];
  }

  else
  {
    v66 = 2;
  }

  *(v14 + 1924) = v66;
  v145 = OUTLINED_FUNCTION_100_3();
  v146 = OUTLINED_FUNCTION_82();
  v148 = [v146 v147];

  if (v148)
  {
    OUTLINED_FUNCTION_275();
    swift_unknownObjectRelease();
  }

  else
  {
    OUTLINED_FUNCTION_152_0();
  }

  OUTLINED_FUNCTION_172_0();
  v149 = MEMORY[0x277D84F70];
  if (v150)
  {
    OUTLINED_FUNCTION_216();
    v151 = *(v14 + 392);
    v152 = *(v14 + 400);
    OUTLINED_FUNCTION_228();
    if (v132)
    {
      v154 = 0;
    }
  }

  else
  {
    sub_231CC154C(v14 + 56, &dword_27DD741E0, &qword_231E15D70);
    OUTLINED_FUNCTION_227();
  }

  *(v14 + 1720) = v154;
  *(v14 + 1712) = v153;
  v155 = OUTLINED_FUNCTION_100_3();
  v156 = OUTLINED_FUNCTION_82();
  v158 = [v156 v157];

  if (v158)
  {
    OUTLINED_FUNCTION_275();
    swift_unknownObjectRelease();
  }

  else
  {
    OUTLINED_FUNCTION_152_0();
  }

  OUTLINED_FUNCTION_174_0();
  if (v159)
  {
    OUTLINED_FUNCTION_215();
    v160 = *(v14 + 376);
    v161 = *(v14 + 384);
    OUTLINED_FUNCTION_228();
  }

  else
  {
    sub_231CC154C(v14 + 88, &dword_27DD741E0, &qword_231E15D70);
    OUTLINED_FUNCTION_227();
  }

  *(v14 + 1744) = OUTLINED_FUNCTION_274(v162);
  *(v14 + 1752) = v163;
  sub_231CE22E0([v45 summarizationStatus]);
  OUTLINED_FUNCTION_79_1();
  if (!v132 & v164)
  {
    v165 = OUTLINED_FUNCTION_40_4();
    (v149)(v165);
    v166 = OUTLINED_FUNCTION_127_1();
    v167(v166);
  }

  else
  {
    OUTLINED_FUNCTION_192();
    v149 = v168;
    sub_231CE2318(v169, v170, v168, &qword_27DD74470);
    v171 = OUTLINED_FUNCTION_116_3();
    sub_231CB6F48(v171, v172, v149);
    v173 = OUTLINED_FUNCTION_40_4();
    (v149)(v173);
  }

  v174 = OUTLINED_FUNCTION_77_1();
  v175(v174);
  sub_231DE8E10([v45 urgencyStatus]);
  OUTLINED_FUNCTION_80_1();
  if (!v132 & v164)
  {
    v179 = OUTLINED_FUNCTION_40_4();
    (v149)(v179);
    v180 = OUTLINED_FUNCTION_128_1();
    v181(v180);
  }

  else
  {
    OUTLINED_FUNCTION_222(v176, v177, v178);
    OUTLINED_FUNCTION_281();
    v182 = OUTLINED_FUNCTION_40_4();
    (v149)(v182);
  }

  v183 = OUTLINED_FUNCTION_75_1();
  v184(v183);
  v185 = [v45 summarizedIdentifiers];
  v186 = MEMORY[0x277D84FA0];
  if (v185)
  {
    OUTLINED_FUNCTION_58_5();
    v47 = sub_231E11870();

    v766 = v186;

    v188 = OUTLINED_FUNCTION_271(v187);
    OUTLINED_FUNCTION_214(v188);

    sub_231E10CA0();
    v189 = OUTLINED_FUNCTION_70();
    if ((unk_231E15000)(v189) != v17)
    {
      v201 = OUTLINED_FUNCTION_167_0();
      v202(v201);
      v203 = swift_task_alloc();
      *(v14 + 1784) = v203;
      *v203 = v14;
      OUTLINED_FUNCTION_30_6(v203);
      OUTLINED_FUNCTION_95_3();

      return sub_231D3EE84();
    }

    OUTLINED_FUNCTION_217();

    v190 = *(v149 + 8);
    v191 = OUTLINED_FUNCTION_140_0();
    v192(v191);
  }

  else
  {
    OUTLINED_FUNCTION_140_1();
    v193 = OUTLINED_FUNCTION_59_0();
    (off_278947000)(v193);

    v45 = sub_231E10E10();
    v194 = sub_231E11AF0();

    os_log_type_enabled(v45, v194);
    OUTLINED_FUNCTION_169_0();
    if (v195)
    {
      OUTLINED_FUNCTION_9_1();
      v749 = v155;
      OUTLINED_FUNCTION_151_1();
      v196 = swift_slowAlloc();
      OUTLINED_FUNCTION_232(v196);
      v197 = OUTLINED_FUNCTION_90_3(4.8149e-34);
      v17 = sub_231CB5000(v197, v760, v198);

      *(v155 + 4) = v17;
      OUTLINED_FUNCTION_182(&dword_231CAE000, v199, v194, "Entity with spotlightIdentifier: %s had no summarized identifiers. No need to query spotlight again.");
      OUTLINED_FUNCTION_8_0();
      OUTLINED_FUNCTION_49_2();
    }

    else
    {
    }

    v200 = OUTLINED_FUNCTION_82_0();
    (v155)(v200);
    v186 = v758;
    v206 = v758;
    v209 = OUTLINED_FUNCTION_270(v206, v207, v208, MEMORY[0x277D84F90]);
    v210 = OUTLINED_FUNCTION_164_0(v209);
    if (v164)
    {
      v593 = OUTLINED_FUNCTION_44_6(v214);
      v210 = sub_231D41480(v593, v594, v595, v596);
      v213 = v210;
    }

    OUTLINED_FUNCTION_115_2(v210, v211, v212, v213);
  }

  OUTLINED_FUNCTION_241();
  v215 = MEMORY[0x277D84F90];
  OUTLINED_FUNCTION_163_0(v216, v217, v218, v219);
  do
  {
    OUTLINED_FUNCTION_238(v220);
    if (v132)
    {
      break;
    }

    OUTLINED_FUNCTION_161_0(v221, v222, v223, v224);
  }

  while (!v132);
  OUTLINED_FUNCTION_73_2(v221, v222, v223, v224);
  v225 = OUTLINED_FUNCTION_25();
  v226 = (unk_231E15000)(v225);
  if (v226 == v17)
  {
    v227 = *(v14 + 1696);
    OUTLINED_FUNCTION_21_5();
    OUTLINED_FUNCTION_57_4();
    v228();
    v230 = v215[1];
    v229 = v215 + 1;
    v231 = OUTLINED_FUNCTION_25();
    v233 = v232(v231);
    v234 = sub_231D27B60(v233);
    OUTLINED_FUNCTION_105_3(v234);
    OUTLINED_FUNCTION_154_1(v47);
    if (!v132)
    {
      v292 = OUTLINED_FUNCTION_93_3();
      v293(v292);
      if (v227[232])
      {
        if (v227[232] == 1)
        {
          OUTLINED_FUNCTION_283();
          v294 = OUTLINED_FUNCTION_18_7();
          v295 = *(v294 + 8);
          OUTLINED_FUNCTION_41_6(v294 + 8);
          v763 = v296 + *v296;
          v298 = *(v297 + 4);
          v299 = swift_task_alloc();
          *(v14 + 1864) = v299;
          *v299 = v14;
          OUTLINED_FUNCTION_7_13(v299);
          OUTLINED_FUNCTION_95_3();

          __asm { BRAA            X3, X16 }
        }

        OUTLINED_FUNCTION_283();
        v400 = OUTLINED_FUNCTION_18_7();
        v401 = *(v400 + 16);
        OUTLINED_FUNCTION_41_6(v400 + 16);
        v764 = v402 + *v402;
        v404 = *(v403 + 4);
        v405 = swift_task_alloc();
        *(v14 + 1888) = v405;
        *v405 = v14;
        OUTLINED_FUNCTION_7_13(v405);
        OUTLINED_FUNCTION_95_3();

        __asm { BRAA            X3, X16 }
      }

      if ([*(v14 + 1704) summarizedIdentifiers])
      {
        OUTLINED_FUNCTION_239();
        sub_231E11870();

        v396 = OUTLINED_FUNCTION_271(v395);

        v397 = sub_231D3F7BC(v396);
        *(v14 + 1832) = v397;
        *(v14 + 1840) = v186;
        OUTLINED_FUNCTION_101_3();
        v398 = sub_231E115F0();
        v399 = [v227 attributeForKey_];

        if (v399)
        {
          OUTLINED_FUNCTION_308();
          swift_unknownObjectRelease();
        }

        else
        {
          OUTLINED_FUNCTION_152_0();
        }

        OUTLINED_FUNCTION_173_0();
        if (v524)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74C98, &qword_231E1C6A8);
          if (OUTLINED_FUNCTION_165())
          {
            OUTLINED_FUNCTION_237();
            if (v525)
            {
              OUTLINED_FUNCTION_160_0();
              OUTLINED_FUNCTION_114_0();
              if (v132)
              {
                v526 = *(v14 + 464);
                v527 = v526[27];
                v528 = v526[28];
                v529 = OUTLINED_FUNCTION_33_9(v526 + 24);
                v530 = *(v529 + 24);
                OUTLINED_FUNCTION_41_6(v529 + 24);
                v765 = v531 + *v531;
                v533 = *(v532 + 4);
                v534 = swift_task_alloc();
                *(v14 + 1856) = v534;
                *v534 = v14;
                OUTLINED_FUNCTION_13_9(v534);
                OUTLINED_FUNCTION_50_4();
                OUTLINED_FUNCTION_122_1();
                OUTLINED_FUNCTION_95_3();

                __asm { BRAA            X4, X16 }
              }

              OUTLINED_FUNCTION_3_16();

              OUTLINED_FUNCTION_195();
              OUTLINED_FUNCTION_71_3();
              sub_231CC154C(v570, v571, v572);
              OUTLINED_FUNCTION_71_3();
              sub_231CC154C(v573, v574, v575);
              OUTLINED_FUNCTION_71_3();
              sub_231CC154C(v576, v577, v578);
              v579 = OUTLINED_FUNCTION_12_10();
              v580(v579);
              v581 = OUTLINED_FUNCTION_20_7();
              v582(v581);
              OUTLINED_FUNCTION_101_3();
              v584 = (v583 + 48);
            }

            else
            {
              OUTLINED_FUNCTION_3_16();

              OUTLINED_FUNCTION_195();
              OUTLINED_FUNCTION_71_3();
              sub_231CC154C(v556, v557, v558);
              OUTLINED_FUNCTION_71_3();
              sub_231CC154C(v559, v560, v561);
              OUTLINED_FUNCTION_71_3();
              sub_231CC154C(v562, v563, v564);
              v565 = OUTLINED_FUNCTION_12_10();
              v566(v565);
              v567 = OUTLINED_FUNCTION_20_7();
              v568(v567);
              OUTLINED_FUNCTION_101_3();
              v584 = (v569 + 5);
            }

            off_278947000 = v584;
            off_278947008 = v398;
            v585 = *MEMORY[0x277D42140];
            v586 = sub_231E0FDE0();
            OUTLINED_FUNCTION_6_0(v586);
            v588 = *(v587 + 104);
            v589 = OUTLINED_FUNCTION_233();
            v590(v589);
            v591 = OUTLINED_FUNCTION_202();
            v592(v591);
            goto LABEL_74;
          }

          OUTLINED_FUNCTION_99_2();
        }

        else
        {
          OUTLINED_FUNCTION_99_2();

          sub_231CC154C(v14 + 120, &dword_27DD741E0, &qword_231E15D70);
        }

        OUTLINED_FUNCTION_34_6();

        v537 = OUTLINED_FUNCTION_48();
        sub_231CC154C(v537, v538, &qword_231E17120);
        OUTLINED_FUNCTION_150_1();
        sub_231CC154C(v539, v540, v541);
        OUTLINED_FUNCTION_150_1();
        sub_231CC154C(v542, v543, v544);
        v545 = OUTLINED_FUNCTION_234();
        v546(v545);
        v547 = OUTLINED_FUNCTION_158_0();
        v548(v547);
        OUTLINED_FUNCTION_101_3();
        *v398 = v549 + 7;
        v398[1] = 0x8000000231E32910;
        v550 = *MEMORY[0x277D42140];
        v551 = sub_231E0FDE0();
        OUTLINED_FUNCTION_6_0(v551);
        v553 = *(v552 + 104);
        v554 = OUTLINED_FUNCTION_102_0();
        v555(v554);
        (off_278947008)(v760);
      }

      else
      {
        OUTLINED_FUNCTION_27_5();

        OUTLINED_FUNCTION_294();
        OUTLINED_FUNCTION_69_3();
        sub_231CC154C(v435, v436, v437);
        OUTLINED_FUNCTION_69_3();
        sub_231CC154C(v438, v439, v440);
        OUTLINED_FUNCTION_69_3();
        sub_231CC154C(v441, v442, v443);
        v444 = OUTLINED_FUNCTION_12_10();
        v445(v444);
        v446 = OUTLINED_FUNCTION_20_7();
        v447(v446);
        OUTLINED_FUNCTION_101_3();
        OUTLINED_FUNCTION_296(v448);
        v449 = *MEMORY[0x277D42140];
        v450 = sub_231E0FDE0();
        OUTLINED_FUNCTION_6_0(v450);
        v452 = *(v451 + 104);
        v453 = OUTLINED_FUNCTION_102_0();
        v454(v453);
        v455 = v155[1];
        v456 = OUTLINED_FUNCTION_202();
        v457(v456);
      }

LABEL_74:
      OUTLINED_FUNCTION_0_22();
      OUTLINED_FUNCTION_6_13();
      OUTLINED_FUNCTION_23_6();

      OUTLINED_FUNCTION_19();
      OUTLINED_FUNCTION_95_3();

      return v285(v284, v285, v286, v287, v288, v289, v290, v291, a9, a10, a11, a12);
    }

    OUTLINED_FUNCTION_52_5();

    sub_231CC154C(v20, &qword_27DD74580, &qword_231E17110);
    v235 = OUTLINED_FUNCTION_67_4();
    (v229)(v235);
    v236 = v760;
    v237 = sub_231E10E10();
    v238 = sub_231E11AD0();

    if (OUTLINED_FUNCTION_85())
    {
      OUTLINED_FUNCTION_72_2();
      v239 = OUTLINED_FUNCTION_199();
      OUTLINED_FUNCTION_298(v239);
      LODWORD(off_278947000) = 136315138;
      v240 = [v17 uniqueIdentifier];
      sub_231E11620();
      OUTLINED_FUNCTION_192();

      v241 = OUTLINED_FUNCTION_116_3();
      sub_231CB5000(v241, v242, v243);
      OUTLINED_FUNCTION_307();
      *(&off_278947000 + 4) = v240;
      OUTLINED_FUNCTION_159_0();
      _os_log_impl(v244, v245, v246, v247, v248, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v47);
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_30();

      v249 = OUTLINED_FUNCTION_236();
      v250(v249);
    }

    else
    {
      OUTLINED_FUNCTION_218();
      v334 = OUTLINED_FUNCTION_25();
      v238(v334);
    }

    v767 = OUTLINED_FUNCTION_38_5();
    v768 = v335;
    OUTLINED_FUNCTION_78_1();
    OUTLINED_FUNCTION_280();
    v336 = [&unk_231E15000 uniqueIdentifier];
    sub_231E11620();
    OUTLINED_FUNCTION_268();

    v337 = OUTLINED_FUNCTION_70();
    MEMORY[0x23837CC20](v337);

    OUTLINED_FUNCTION_69_3();
    sub_231CC154C(v338, v339, v340);
    OUTLINED_FUNCTION_69_3();
    sub_231CC154C(v341, v342, v343);
    OUTLINED_FUNCTION_69_3();
    sub_231CC154C(v344, v345, v346);
    v347 = OUTLINED_FUNCTION_36_5();
    (v758)(v347);
    v348 = OUTLINED_FUNCTION_43_8();
    v349(v348);
    *v236 = v767;
    v236[1] = v768;
    v123 = *MEMORY[0x277D42140];
    v350 = sub_231E0FDE0();
    OUTLINED_FUNCTION_6_0(v350);
    v126 = *(v351 + 104);
    v127 = v236;
    goto LABEL_17;
  }

  if (v226 == *MEMORY[0x277D424C8])
  {
    v251 = OUTLINED_FUNCTION_29_5();
    v252(v251);

    v253 = OUTLINED_FUNCTION_116_3();
    v749(v253);
    v254 = OUTLINED_FUNCTION_67_4();
    v752(v254);
    v255 = sub_231E10E10();
    sub_231E11AD0();
    OUTLINED_FUNCTION_205();
    if (os_log_type_enabled(v255, v256))
    {
      v257 = OUTLINED_FUNCTION_16_1();
      OUTLINED_FUNCTION_226(v257);
      OUTLINED_FUNCTION_220(&dword_231CAE000, v258, v259, "Programmer Error: mailManualSummary should not reach here");
      OUTLINED_FUNCTION_49_2();
    }

    OUTLINED_FUNCTION_24_5();
    v260 = OUTLINED_FUNCTION_235();
    (v20)(v260);
    v261 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74C28, &unk_231E1C640) + 48);

    v262 = OUTLINED_FUNCTION_48();
    sub_231CC154C(v262, v263, &qword_231E17120);
    OUTLINED_FUNCTION_153_1();
    sub_231CC154C(v264, v265, v266);
    OUTLINED_FUNCTION_153_1();
    sub_231CC154C(v267, v268, v269);
    v270 = OUTLINED_FUNCTION_157_0();
    v744(v270);
    v271 = OUTLINED_FUNCTION_156_2();
    v272(v271);
    OUTLINED_FUNCTION_76_2();
    *v215 = v273;
    v215[1] = 0x8000000231E32860;
    v274 = *MEMORY[0x277D42140];
    v275 = sub_231E0FDE0();
    OUTLINED_FUNCTION_6_0(v275);
    v277 = *(v276 + 104);
    v278 = OUTLINED_FUNCTION_267();
    v279(v278);
    v280 = OUTLINED_FUNCTION_247();
    v281(v280);
LABEL_73:
    v282 = OUTLINED_FUNCTION_179_0();
    v283(v282);
    goto LABEL_74;
  }

  if (v226 != *MEMORY[0x277D424E0])
  {
    if (v226 == *MEMORY[0x277D424C0] || v226 == *MEMORY[0x277D424D0])
    {
      v353 = OUTLINED_FUNCTION_19_6();
      v354(v353);
      v355 = OUTLINED_FUNCTION_246();
      v356(v355);
      isa = v45[13].isa;
      v357 = v45 + 13;
      v359 = OUTLINED_FUNCTION_123_1();
      v360(v359);
      v361 = OUTLINED_FUNCTION_250();
      v362(v361);
      v363 = OUTLINED_FUNCTION_249();
      v364(v363);
      v365 = v758[2];
      if (v365)
      {
        v757 = *(v14 + 624);
        v366 = *(v14 + 616);
        v367 = *(v14 + 592);
        OUTLINED_FUNCTION_26_5();
        OUTLINED_FUNCTION_265();
        v369 = v368;
        sub_231D41D3C(v370, v371, v372);
        OUTLINED_FUNCTION_248();
        LODWORD(v741) = *MEMORY[0x277D423E0];
        v740 = *MEMORY[0x277D423F0];
        v20 = v366 + 104;
        v738 = *MEMORY[0x277D423E8];
        v373 = (v369 + 48);
        OUTLINED_FUNCTION_254(*MEMORY[0x277D423F8]);
        do
        {
          v374 = *(v373 - 1);
          if (*v373)
          {
            v375 = OUTLINED_FUNCTION_61_4();
            v376(v375);
          }

          else
          {
            v377 = *(v14 + 584);
            v378 = *(v14 + 576);
            v379 = *(v373 - 2);
            v380 = OUTLINED_FUNCTION_65_3();
            sub_231D1E298(v380, 1, v378);
            OUTLINED_FUNCTION_141_1();
            if (v132)
            {
              sub_231CC154C(*(v14 + 576), &qword_27DD74BE0, &qword_231E1CC20);
              v357 = [v357 uniqueIdentifier];
              sub_231E11620();
              OUTLINED_FUNCTION_102_1();
              v381 = OUTLINED_FUNCTION_54_0();
              sub_231D42B30(v381, v382, 0);

              v388 = OUTLINED_FUNCTION_60_4();
            }

            else
            {
              v383 = OUTLINED_FUNCTION_68_4();
              v374(v383);
              v384 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74C60, &qword_231E1C680);
              v385 = OUTLINED_FUNCTION_178_0(v384);
              v374(v385);
              v386 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74C68, &qword_231E1C688);
              OUTLINED_FUNCTION_6_0(v386);
              (*(v387 + 104))(v378 + v377, v741);
              v388 = OUTLINED_FUNCTION_81_3();
              v390 = v740;
            }

            v389(v388, v390, v760);
          }

          OUTLINED_FUNCTION_176_0();
          if (v164)
          {
            v394 = OUTLINED_FUNCTION_2_12(v391);
            OUTLINED_FUNCTION_282(v394);
          }

          v392 = OUTLINED_FUNCTION_46_4();
          v393(v392);
          v373 += 24;
          --v365;
        }

        while (v365);
      }

      OUTLINED_FUNCTION_14_7();
      OUTLINED_FUNCTION_155_2();
      sub_231D42F54(v458, v459, v460, v461);
      OUTLINED_FUNCTION_155_2();
      sub_231D42F54(v462, v463, v464, v465);
      v466 = OUTLINED_FUNCTION_139_0();
      v474 = OUTLINED_FUNCTION_118_3(v466, v467, v468, v469, v470, v471, v472, v473, v597, v600, v603, v606, v609, v612, v615, v618, v621, v624, v627, v630, v633, v636, v639, v642, v645, v648, v651, v654, v657, v660, v663, v666, v669, v672, v675, v678, v681, v684, v687, v690, v693, v696, v699, v702, v705, v708, v711);
      v475(v474);
      OUTLINED_FUNCTION_15_10();
      sub_231D42B40(v476, v477);
      v478 = OUTLINED_FUNCTION_37_6();
      v486 = OUTLINED_FUNCTION_54_5(v478, v479, v480, v481, v482, v483, v484, v485, v598, v601, v604, v607, v610, v613, v616, v619, v622, v625, v628, v631, v634, v637, v640, v643, v646, v649, v652, v655, v658, v661, v664, v667, v670, v673, v676, v679, v682, v685, v688, v691, v694, v697, v700, v703, v706, v709, v712, v714, v716, v718, v720, v722, v724, v726, v728, v730, v731, v732);
      v488 = v487(v486);
      v495 = OUTLINED_FUNCTION_162(v488, *MEMORY[0x277D424E8], v489, v490, v491, v492, v493, v494, v599, v602, v605, v608, v611, v614, v617, v620, v623, v626, v629, v632, v635, v638, v641, v644, v647, v650, v653, v656, v659, v662, v665, v668, v671, v674, v677, v680, v683, v686, v689, v692, v695, v698, v701, v704, v707, v710, v713, v715, v717, v719, v721, v723, v725, v727, v729);
      v496(v495);
      sub_231E10D00();

      v497 = *(v20 + 8);
      v498 = OUTLINED_FUNCTION_59_0();
      v499(v498);
      OUTLINED_FUNCTION_134_1();
      sub_231CC154C(v500, v501, v502);
      OUTLINED_FUNCTION_134_1();
      sub_231CC154C(v503, v504, v505);
      OUTLINED_FUNCTION_134_1();
      sub_231CC154C(v506, v507, v508);
      v509 = OUTLINED_FUNCTION_36_5();
      (v758)(v509);
      v510 = OUTLINED_FUNCTION_43_8();
      v511(v510);
      v512 = OUTLINED_FUNCTION_8_10();
      v513(v512);
      v514 = *MEMORY[0x277D421B0];
      v515 = sub_231E0FE10();
      OUTLINED_FUNCTION_6_0(v515);
      v517 = *(v516 + 104);
      v518 = OUTLINED_FUNCTION_48();
      v519(v518);
      v520 = *MEMORY[0x277D42148];
      v521 = sub_231E0FDE0();
      OUTLINED_FUNCTION_6_0(v521);
      v523 = *(v522 + 104);
      v127 = OUTLINED_FUNCTION_48();
    }

    else
    {
      OUTLINED_FUNCTION_22_5();

      sub_231D3EA58(v186, &off_278947000);

      OUTLINED_FUNCTION_69_3();
      sub_231CC154C(v408, v409, v410);
      OUTLINED_FUNCTION_69_3();
      sub_231CC154C(v411, v412, v413);
      OUTLINED_FUNCTION_69_3();
      sub_231CC154C(v414, v415, v416);
      v417 = OUTLINED_FUNCTION_59_5();
      v743(v417);
      v418 = OUTLINED_FUNCTION_32_5();
      v752(v418);
      v419 = OUTLINED_FUNCTION_119_1();
      v420(v419);
      v127 = OUTLINED_FUNCTION_243();
    }

    goto LABEL_18;
  }

  OUTLINED_FUNCTION_21_5();
  OUTLINED_FUNCTION_189();
  v302();
  v303 = *(v186 + 8);
  v304 = OUTLINED_FUNCTION_48();
  v305(v304);
  v306 = v758[2];
  if (v306)
  {
    v756 = *(v14 + 520);
    v307 = *(v14 + 512);
    v308 = *(v14 + 488);
    v309 = OUTLINED_FUNCTION_26_5();
    OUTLINED_FUNCTION_279(v309);
    OUTLINED_FUNCTION_256();
    v739 = *MEMORY[0x277D423E0];
    v737 = *MEMORY[0x277D423F0];
    v310 = (v307 + 104);
    v736 = *MEMORY[0x277D423E8];
    v311 = &off_278947030;
    OUTLINED_FUNCTION_253(*MEMORY[0x277D423F8]);
    do
    {
      v312 = *(v311 - 2);
      v313 = *(v311 - 1);
      if (*v311)
      {
        v314 = OUTLINED_FUNCTION_64_2();
        v315(v314);
      }

      else
      {
        v317 = *(v14 + 472);
        v316 = *(v14 + 480);
        v318 = v312;
        v319 = OUTLINED_FUNCTION_55_3();
        sub_231D164A4(v319, v320, v321);
        OUTLINED_FUNCTION_142_1();
        if (v132)
        {
          sub_231CC154C(*(v14 + 472), &qword_27DD74510, &qword_231E1E2D0);
          v310 = [v310 uniqueIdentifier];
          sub_231E11620();
          OUTLINED_FUNCTION_185();

          v327 = OUTLINED_FUNCTION_63_3();
        }

        else
        {
          v322 = OUTLINED_FUNCTION_70_3();
          (v312)(v322);
          v323 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74C48, &qword_231E1C670) + 48);
          v324 = OUTLINED_FUNCTION_109_2();
          (v312)(v324);
          v325 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74C50, &qword_231E1C678);
          OUTLINED_FUNCTION_6_0(v325);
          (*(v326 + 104))(v317 + v323, v739);
          v327 = OUTLINED_FUNCTION_89_2();
          v329 = v737;
        }

        v328(v327, v329, v760);
      }

      OUTLINED_FUNCTION_188();
      if (v164)
      {
        v333 = OUTLINED_FUNCTION_2_12(v330);
        OUTLINED_FUNCTION_221(v333);
        v310 = v215;
        v215 = v766;
      }

      v331 = OUTLINED_FUNCTION_47_5();
      v332(v331);
      v311 += 24;
      --v306;
    }

    while (v306);
  }

  else
  {

    v215 = MEMORY[0x277D84F90];
  }

  v421 = *(v14 + 464);
  *(v14 + 416) = v215;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74C30, &qword_231E1C650);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74C38, &qword_231E1C658);
  OUTLINED_FUNCTION_151_1();
  v422 = swift_task_alloc();
  OUTLINED_FUNCTION_190(v422);
  v423 = *(MEMORY[0x277D858E8] + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_58_0();
  *(v14 + 1912) = v424;
  *v424 = v425;
  OUTLINED_FUNCTION_9_9(v424);
  OUTLINED_FUNCTION_45_2();
  OUTLINED_FUNCTION_44();

  return MEMORY[0x282200600](v426, v427, v428, v429, v430, v431, v432, v433, a9, a10, a11, a12);
}

uint64_t sub_231D38328()
{
  OUTLINED_FUNCTION_50_0();
  OUTLINED_FUNCTION_21();
  v3 = v2;
  OUTLINED_FUNCTION_15();
  *v4 = v3;
  v6 = *(v5 + 1784);
  *v4 = *v1;
  *(v3 + 1792) = v7;
  *(v3 + 1800) = v0;

  if (v0)
  {
    v8 = *(v3 + 1776);
    v9 = *(v3 + 1752);
    v10 = *(v3 + 1736);
    v11 = *(v3 + 1720);
    v12 = *(v3 + 1472);
    v13 = *(v3 + 1408) + 8;
    (*(v3 + 1512))(*(v3 + 1440), *(v3 + 1400));
  }

  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_106();

  return MEMORY[0x2822009F8](v14, v15, v16);
}

uint64_t sub_231D38498(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_142();
  OUTLINED_FUNCTION_57_0();
  v16 = sub_231CBA138(*(v12 + 1792));
  v24 = *(v12 + 1792);
  isUniquelyReferenced_nonNull_native = &off_278947000;
  v639 = v12;
  v641 = v16;
  if (!v16)
  {
    v49 = *(v12 + 1472);

    v27 = MEMORY[0x277D84F98];
LABEL_20:
    v560 = v12 + 416;

    v50 = *(v12 + 1776);
    v51 = *(v50 + 16);
    if (v51)
    {
      v52 = (v50 + 40);
      v53 = MEMORY[0x277D84F90];
      v593 = 136315138;
      v605 = *(v12 + 1304) + 8;
      do
      {
        v54 = *(v52 - 1);
        v55 = *v52;
        v56 = *(v27 + 16);

        if (v56 && (v57 = sub_231CE0CA4(v54, v55), (v58 & 1) != 0))
        {
          v59 = v57;

          v60 = *(*(v27 + 56) + 8 * v59);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v84 = *(v53 + 2);
            v85 = OUTLINED_FUNCTION_0_1();
            v53 = sub_231D41480(v85, v86, v87, v53);
          }

          v62 = *(v53 + 2);
          v61 = *(v53 + 3);
          v63 = v62 + 1;
          if (v62 >= v61 >> 1)
          {
            v88 = OUTLINED_FUNCTION_44_6(v61);
            v53 = sub_231D41480(v88, v89, v90, v53);
          }

          v55 = 0;
          v64 = 0;
        }

        else
        {
          v641 = v54;
          OUTLINED_FUNCTION_66_4();
          v65 = *(v12 + 1376);
          v66 = OUTLINED_FUNCTION_231();
          v67(v66);

          v68 = sub_231E10E10();
          v69 = sub_231E11AD0();

          v70 = OUTLINED_FUNCTION_85();
          v616 = *(v12 + 1376);
          v630 = *(v12 + 1504);
          v71 = *(v12 + 1296);
          if (v70)
          {
            v72 = OUTLINED_FUNCTION_9_1();
            v73 = v53;
            v74 = OUTLINED_FUNCTION_67();
            *&v658[0] = v74;
            *v72 = 136315138;
            *(v72 + 4) = sub_231CB5000(v641, v55, v658);
            _os_log_impl(&dword_231CAE000, v68, v69, "Didn't find spotlightId: %s when querying for the summarized identifiers in Spotlight.", v72, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v74);
            v53 = v73;
            v12 = v639;
            OUTLINED_FUNCTION_30();
            OUTLINED_FUNCTION_30();
          }

          v630(v616, v71);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v77 = *(v53 + 2);
            v78 = OUTLINED_FUNCTION_0_1();
            v53 = sub_231D41480(v78, v79, v80, v53);
          }

          v60 = v641;
          v62 = *(v53 + 2);
          v75 = *(v53 + 3);
          v63 = v62 + 1;
          if (v62 >= v75 >> 1)
          {
            v81 = OUTLINED_FUNCTION_44_6(v75);
            v53 = sub_231D41480(v81, v82, v83, v53);
          }

          v64 = 1;
        }

        *(v53 + 2) = v63;
        v76 = &v53[24 * v62];
        *(v76 + 4) = v60;
        *(v76 + 5) = v55;
        v76[48] = v64;
        v52 += 2;
        --v51;
      }

      while (v51);
      v91 = *(v12 + 1776);
    }

    else
    {

      v53 = MEMORY[0x277D84F90];
    }

    v92 = 0;
    v27 = *(v12 + 1800);
    *(v12 + 1808) = v53;
    v93 = *(v53 + 2);
    *(v12 + 1816) = v93;
    v94 = 48;
    do
    {
      v95 = v92;
      *(v12 + 1824) = v92;
      if (v93 == v92)
      {
        break;
      }

      ++v92;
      v96 = v53[v94];
      v94 += 24;
    }

    while (v96 != 1);
    v631 = v53;
    v97 = v12;
    v98 = *(v12 + 1920);
    v99 = *(v12 + 1528);
    v100 = *(v12 + 1520);
    v101 = *(v12 + 1264);
    v102 = *(v97 + 1248);
    v103 = *(v97 + 456);
    sub_231E10CA0();
    v104 = v100(v101, v102);
    if (v104 == v98)
    {
      v105 = *(v97 + 1696);
      v106 = *(v97 + 1264);
      v107 = *(v97 + 1256);
      v15 = *(v97 + 1248);
      v108 = *(v97 + 872);
      v109 = *(v97 + 840);
      v110 = *(v97 + 1408) + 8;
      v14 = *(v97 + 464);
      (*(v97 + 1512))(*(v97 + 1440), *(v97 + 1400));
      v111 = (*(v107 + 8))(v106, v15);
      v112 = sub_231D27B60(v111);
      OUTLINED_FUNCTION_105_3(v112);
      OUTLINED_FUNCTION_154_1(v109);
      if (v278)
      {
        v113 = *(v97 + 1752);
        v114 = *(v97 + 1736);
        v115 = *(v97 + 1720);
        v642 = *(v97 + 1696);
        v116 = *(v97 + 1496);
        v117 = *(v97 + 1488);
        v118 = *(v97 + 1480);
        v119 = *(v97 + 1328);
        v120 = *(v97 + 1296);
        v121 = *(v97 + 840);

        sub_231CC154C(v121, &qword_27DD74580, &qword_231E17110);
        OUTLINED_FUNCTION_131_1();
        v117();
        v122 = v642;
        v123 = sub_231E10E10();
        v124 = sub_231E11AD0();

        if (os_log_type_enabled(v123, v124))
        {
          v125 = *(v97 + 1696);
          v643 = *(v97 + 1504);
          v126 = *(v97 + 1304);
          v617 = *(v97 + 1296);
          v632 = *(v97 + 1328);
          OUTLINED_FUNCTION_9_1();
          v127 = OUTLINED_FUNCTION_199();
          OUTLINED_FUNCTION_298(v127);
          *v119 = 136315138;
          v128 = [v125 uniqueIdentifier];
          sub_231E11620();
          OUTLINED_FUNCTION_102_1();

          v129 = sub_231CB5000(v121, v116, v658);

          *(v119 + 4) = v129;
          _os_log_impl(&dword_231CAE000, v123, v124, "Failed conversion CSSearchableItem to MailEntity; uniqueId: %s", v119, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v120);
          OUTLINED_FUNCTION_11();
          OUTLINED_FUNCTION_30();

          v643(v632, v617);
        }

        else
        {
          v231 = *(v97 + 1504);
          v232 = *(v97 + 1328);
          v233 = *(v97 + 1304);
          v234 = *(v97 + 1296);

          v231(v232, v234);
        }

        v648 = *(v97 + 1760);
        v235 = *(v97 + 1704);
        v236 = *(v97 + 1696);
        v621 = *(v97 + 1104);
        v634 = *(v97 + 1768);
        v608 = *(v97 + 1064);
        v586 = *(v97 + 1048);
        v596 = *(v97 + 1072);
        v237 = *(v639 + 1016);
        v576 = *(v639 + 1008);
        v238 = *(v639 + 976);
        v239 = *(v639 + 968);
        v240 = *(v639 + 960);
        v241 = *(v639 + 448);
        *&v658[0] = sub_231D4134C(62);
        *(&v658[0] + 1) = v242;
        MEMORY[0x23837CC20](0xD00000000000003CLL, 0x8000000231E328A0);
        v243 = [v236 uniqueIdentifier];
        v244 = sub_231E11620();
        v246 = v245;

        MEMORY[0x23837CC20](v244, v246);

        v247 = v658[0];
        OUTLINED_FUNCTION_133_1();
        sub_231CC154C(v248, v249, v250);
        OUTLINED_FUNCTION_133_1();
        sub_231CC154C(v251, v252, v253);
        v254 = OUTLINED_FUNCTION_109_2();
        sub_231CC154C(v254, v255, &qword_231E17120);
        v144 = v639;
        v634(v586, v576);
        v256 = OUTLINED_FUNCTION_293();
        v257(v256);
        *v241 = v247;
        v258 = *MEMORY[0x277D42140];
        v259 = sub_231E0FDE0();
        OUTLINED_FUNCTION_6_0(v259);
        v261 = *(v260 + 104);
        v262 = OUTLINED_FUNCTION_59_0();
        v263(v262);
      }

      else
      {
        v174 = *(v97 + 464);
        (*(*(v97 + 880) + 32))(*(v97 + 888), *(v97 + 840), *(v97 + 872));
        if (*(v174 + 232))
        {
          if (*(v174 + 232) == 1)
          {
            v175 = *(v97 + 464);

            v176 = OUTLINED_FUNCTION_18_7();
            v177 = *(v176 + 8);
            OUTLINED_FUNCTION_41_6(v176 + 8);
            v646 = v178 + *v178;
            v180 = *(v179 + 4);
            v181 = swift_task_alloc();
            *(v97 + 1864) = v181;
            *v181 = v97;
            v181[1] = sub_231D3BEC8;
            OUTLINED_FUNCTION_10_10(*(v97 + 888));
            OUTLINED_FUNCTION_95_3();
          }

          else
          {
            v334 = *(v97 + 464);

            v335 = OUTLINED_FUNCTION_18_7();
            v336 = *(v335 + 16);
            OUTLINED_FUNCTION_41_6(v335 + 16);
            v652 = v337 + *v337;
            v339 = *(v338 + 4);
            v340 = swift_task_alloc();
            *(v97 + 1888) = v340;
            *v340 = v97;
            v340[1] = sub_231D3C960;
            OUTLINED_FUNCTION_10_10(*(v97 + 888));
            OUTLINED_FUNCTION_95_3();
          }

          return v185(v182, v183, v184, v185, v186, v187, v188, v189, a9, a10, a11, a12);
        }

        v325 = [*(v97 + 1704) summarizedIdentifiers];
        if (v325)
        {
          v326 = v325;
          v327 = *(v97 + 1704);
          v328 = *(v97 + 888);
          isUniquelyReferenced_nonNull_native = "maryAndPriorityDisabled";
          sub_231E11870();

          *&v658[0] = MEMORY[0x277D84FA0];

          v330 = sub_231D411F4(v329);

          v13 = v639;

          v331 = sub_231D3F7BC(v330);
          *(v639 + 1832) = v331;
          *(v639 + 1840) = v27;
          v332 = sub_231E115F0();
          v333 = [v327 attributeForKey_];

          if (v333)
          {
            OUTLINED_FUNCTION_308();
            swift_unknownObjectRelease();
          }

          else
          {
            OUTLINED_FUNCTION_152_0();
          }

          v430 = v658[0];
          *(v639 + 136) = v658[1];
          *(v639 + 120) = v430;
          if (*(v639 + 144))
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74C98, &qword_231E1C6A8);
            if (swift_dynamicCast())
            {
              v431 = *(v639 + 440);
              *(v639 + 432) = v431;
              if (*(v431 + 16))
              {
                *(v639 + 1925) = *(v431 + 32);
                sub_231D42BCC(0, 1);
                v432 = *(v331 + 16);
                v433 = *(v639 + 432);
                *(v639 + 1848) = v433;
                if (v432 == *(v433 + 16))
                {
                  v434 = *(v639 + 464);
                  v435 = v434[27];
                  v436 = v434[28];
                  v637 = (OUTLINED_FUNCTION_33_9(v434 + 24) + 24);
                  v656 = *v637 + **v637;
                  v437 = (*v637)[1];
                  v438 = swift_task_alloc();
                  *(v639 + 1856) = v438;
                  *v438 = v639;
                  OUTLINED_FUNCTION_13_9(v438);
                  v439 = *(v639 + 888);
                  OUTLINED_FUNCTION_95_3();

                  return v444(v440, v441, v442, v443, v444, v445, v446, v447, a9, a10, a11, a12);
                }

                OUTLINED_FUNCTION_96_3();

                OUTLINED_FUNCTION_195();
                OUTLINED_FUNCTION_133_1();
                sub_231CC154C(v489, v490, v491);
                OUTLINED_FUNCTION_133_1();
                sub_231CC154C(v492, v493, v494);
                OUTLINED_FUNCTION_133_1();
                sub_231CC154C(v495, v496, v497);
                v498 = OUTLINED_FUNCTION_59_5();
                (v593)(v498);
                v499 = OUTLINED_FUNCTION_12_10();
                v500(v499);
                OUTLINED_FUNCTION_300();
                v488 = v501 + 55;
              }

              else
              {
LABEL_121:
                OUTLINED_FUNCTION_96_3();

                OUTLINED_FUNCTION_195();
                OUTLINED_FUNCTION_133_1();
                sub_231CC154C(v475, v476, v477);
                OUTLINED_FUNCTION_133_1();
                sub_231CC154C(v478, v479, v480);
                OUTLINED_FUNCTION_133_1();
                sub_231CC154C(v481, v482, v483);
                v484 = OUTLINED_FUNCTION_59_5();
                (v593)(v484);
                v485 = OUTLINED_FUNCTION_12_10();
                v486(v485);
                OUTLINED_FUNCTION_300();
                v488 = v487 + 12;
              }

              *v13 = v488;
              *(v13 + 8) = v27;
              v502 = *MEMORY[0x277D42140];
              v503 = sub_231E0FDE0();
              OUTLINED_FUNCTION_6_0(v503);
              v505 = v13;
              v144 = v639;
              (*(v504 + 104))(v505, v502);
              (*(isUniquelyReferenced_nonNull_native + 1))(v641, v616);
              goto LABEL_74;
            }

            OUTLINED_FUNCTION_305();
          }

          else
          {
            OUTLINED_FUNCTION_305();

            sub_231CC154C(v639 + 120, &dword_27DD741E0, &qword_231E15D70);
          }

          v615 = *(v639 + 1768);
          v628 = *(v639 + 1760);
          v448 = *(v639 + 1696);
          v592 = *(v639 + 1064);
          v603 = *(v639 + 1104);
          v574 = *(v639 + 1048);
          v583 = *(v639 + 1072);
          v449 = *(v639 + 1016);
          v450 = *(v639 + 1008);
          v451 = *(v639 + 976);
          v452 = *(v639 + 968);
          v453 = *(v639 + 960);
          v657 = *(v639 + 888);
          v454 = *(v639 + 880);
          v638 = *(v639 + 872);
          v455 = *(v639 + 448);

          OUTLINED_FUNCTION_294();
          OUTLINED_FUNCTION_71_3();
          sub_231CC154C(v456, v457, v458);
          OUTLINED_FUNCTION_71_3();
          sub_231CC154C(v459, v460, v461);
          OUTLINED_FUNCTION_71_3();
          sub_231CC154C(v462, v463, v464);
          v615(v574, v450);
          v628(v603, v592);
          OUTLINED_FUNCTION_300();
          OUTLINED_FUNCTION_296(v465);
          v144 = v639;
          v466 = *MEMORY[0x277D42140];
          v467 = sub_231E0FDE0();
          OUTLINED_FUNCTION_6_0(v467);
          v469 = *(v468 + 104);
          v470 = OUTLINED_FUNCTION_102_0();
          v471(v470);
          v472 = *(v454 + 8);
          v473 = OUTLINED_FUNCTION_202();
          v474(v473);
        }

        else
        {
          v613 = *(v97 + 1760);
          v365 = *(v97 + 1752);
          v366 = *(v97 + 1736);
          v367 = *(v97 + 1720);
          v368 = *(v97 + 1704);
          v369 = *(v97 + 1696);
          v590 = *(v97 + 1104);
          v601 = *(v97 + 1768);
          v572 = *(v97 + 1072);
          v581 = *(v97 + 1064);
          v552 = *(v97 + 1016);
          v558 = *(v97 + 1008);
          v565 = *(v97 + 1048);
          v370 = *(v97 + 976);
          v371 = *(v639 + 968);
          v372 = *(v639 + 960);
          v654 = *(v639 + 888);
          v373 = *(v639 + 880);
          v626 = *(v639 + 872);
          v374 = *(v639 + 448);

          OUTLINED_FUNCTION_266();
          sub_231CC154C(v375, v376, v377);
          v144 = v639;
          OUTLINED_FUNCTION_266();
          sub_231CC154C(v378, v379, v380);
          OUTLINED_FUNCTION_266();
          sub_231CC154C(v381, v382, v383);
          v384 = OUTLINED_FUNCTION_59_5();
          v601(v384);
          v385 = OUTLINED_FUNCTION_12_10();
          v386(v385);
          OUTLINED_FUNCTION_300();
          *v374 = v387 + 21;
          v374[1] = 0x8000000231E328E0;
          v388 = *MEMORY[0x277D42140];
          v389 = sub_231E0FDE0();
          OUTLINED_FUNCTION_6_0(v389);
          v391 = *(v390 + 104);
          v392 = OUTLINED_FUNCTION_267();
          v393(v392);
          (*(v373 + 8))(v654, v626);
        }
      }
    }

    else if (v104 == *MEMORY[0x277D424C8])
    {
      v130 = *(v639 + 1752);
      v131 = *(v639 + 1736);
      v132 = *(v639 + 1720);
      v133 = *(v639 + 1688);
      v644 = *(v639 + 1496);
      v618 = *(v639 + 1488);
      v134 = *(v639 + 1480);
      v135 = *(v639 + 1320);
      v136 = *(v639 + 1296);
      v137 = *(v639 + 1264);
      v138 = *(v639 + 1256);
      v139 = *(v639 + 1408) + 8;
      v140 = *(v639 + 1248);
      (*(v639 + 1512))(*(v639 + 1440), *(v639 + 1400));

      v133(v137, v140);
      v618(v135, v134, v136);
      v141 = sub_231E10E10();
      sub_231E11AD0();
      OUTLINED_FUNCTION_205();
      if (os_log_type_enabled(v141, v142))
      {
        v143 = OUTLINED_FUNCTION_16_1();
        *v143 = 0;
        _os_log_impl(&dword_231CAE000, v141, v135, "Programmer Error: mailManualSummary should not reach here", v143, 2u);
        OUTLINED_FUNCTION_30();
      }

      v144 = v639;
      v584 = *(v639 + 1768);
      v594 = *(v639 + 1760);
      v529 = *(v639 + 1704);
      v533 = *(v639 + 1696);
      v145 = *(v639 + 1504);
      v146 = *(v639 + 1320);
      v147 = *(v639 + 1304);
      v148 = *(v639 + 1296);
      v619 = *(v639 + 1264);
      v633 = *(v639 + 1216);
      v645 = *(v639 + 1208);
      v149 = *(v639 + 1192);
      v606 = *(v639 + 1184);
      v567 = *(v639 + 1064);
      v575 = *(v639 + 1104);
      v553 = *(v639 + 1048);
      v561 = *(v639 + 1072);
      v542 = *(v639 + 1016);
      v547 = *(v639 + 1008);
      v537 = *(v639 + 976);
      v150 = *(v639 + 968);
      v151 = *(v639 + 960);
      v152 = *(v639 + 448);

      v145(v146, v148);
      v153 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74C28, &unk_231E1C640) + 48);

      OUTLINED_FUNCTION_301();
      sub_231CC154C(v154, v155, v156);
      OUTLINED_FUNCTION_301();
      sub_231CC154C(v157, v158, v159);
      OUTLINED_FUNCTION_301();
      sub_231CC154C(v160, v161, v162);
      v584(v553, v547);
      v163 = OUTLINED_FUNCTION_157_0();
      v594(v163);
      *v152 = 0xD000000000000039;
      v152[1] = 0x8000000231E32860;
      v164 = *MEMORY[0x277D42140];
      v165 = sub_231E0FDE0();
      OUTLINED_FUNCTION_6_0(v165);
      v167 = *(v166 + 104);
      v168 = OUTLINED_FUNCTION_267();
      v169(v168);
      (*(v149 + 8))(v619 + v153, v606);
      v170 = OUTLINED_FUNCTION_179_0();
      v171(v170);
    }

    else
    {
      v190 = v639;
      if (v104 == *MEMORY[0x277D424E0])
      {
        v191 = OUTLINED_FUNCTION_203();
        v192(v191);
        (*(v27 + 8))(v103, v101);
        v193 = *(v631 + 2);
        if (v193)
        {
          v620 = *(v639 + 520);
          v194 = *(v639 + 512);
          v195 = *(v639 + 488);
          v595 = *(v639 + 464);
          *&v658[0] = MEMORY[0x277D84F90];
          OUTLINED_FUNCTION_265();
          sub_231D41CFC(v196, v197, v198);
          v199 = *&v658[0];
          v554 = (v195 + 32);
          v548 = *MEMORY[0x277D423E0];
          v543 = *MEMORY[0x277D423F0];
          v200 = (v194 + 104);
          v538 = *MEMORY[0x277D423E8];
          v201 = v631 + 48;
          v568 = *MEMORY[0x277D423F8];
          v607 = v194;
          v585 = (v194 + 104);
          do
          {
            v202 = *(v201 - 2);
            v203 = *(v201 - 1);
            if (*v201)
            {
              v204 = v190[63];
              *v190[65] = v202;
              *(v620 + 8) = v203;
              (*v200)();
            }

            else
            {
              v205 = v190;
              v208 = v190 + 59;
              v207 = v190[59];
              v206 = v208[1];
              v209 = v202;
              sub_231D164A4((v595 + 152), 1, v207);
              EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v207, 1, v206);
              v211 = v205[65];
              v647 = v205[63];
              if (EnumTagSinglePayload == 1)
              {
                sub_231CC154C(v205[59], &qword_27DD74510, &qword_231E1E2D0);
                v212 = [v209 uniqueIdentifier];
                v213 = sub_231E11620();
                v215 = v214;
                sub_231D42B30(v202, v203, 0);

                *v211 = v213;
                *(v620 + 8) = v215;
                v200 = v585;
                (*v585)(v211, v538, v647);
              }

              else
              {
                v216 = v205[62];
                v218 = v205[59];
                v217 = v205[60];
                sub_231D42B30(v202, v203, 0);
                v219 = *v554;
                v220 = OUTLINED_FUNCTION_207();
                (v219)(v220);
                v221 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74C48, &qword_231E1C670) + 48);
                OUTLINED_FUNCTION_133_1();
                v219();
                v222 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74C50, &qword_231E1C678);
                OUTLINED_FUNCTION_6_0(v222);
                (*(v223 + 104))(v211 + v221, v548);
                v200 = v585;
                (*v585)(v211, v543, v647);
              }

              v190 = v205;
              v194 = v607;
            }

            *&v658[0] = v199;
            v225 = *(v199 + 16);
            v224 = *(v199 + 24);
            if (v225 >= v224 >> 1)
            {
              v230 = OUTLINED_FUNCTION_2_12(v224);
              sub_231D41CFC(v230, v225 + 1, 1);
              v199 = *&v658[0];
            }

            v226 = v190[65];
            v227 = v190[63];
            *(v199 + 16) = v225 + 1;
            v228 = *(v194 + 80);
            OUTLINED_FUNCTION_79();
            (*(v194 + 32))(v199 + v229 + *(v194 + 72) * v225);
            v201 += 24;
            --v193;
          }

          while (v193);
        }

        else
        {

          v199 = MEMORY[0x277D84F90];
        }

        v360 = v190[58];
        v190[52] = v199;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74C30, &qword_231E1C650);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74C38, &qword_231E1C658);
        OUTLINED_FUNCTION_151_1();
        v361 = swift_task_alloc();
        v190[238] = v361;
        *(v361 + 16) = v560;
        *(v361 + 24) = v360;
        v362 = *(MEMORY[0x277D858E8] + 4);
        v363 = swift_task_alloc();
        v190[239] = v363;
        *v363 = v190;
        OUTLINED_FUNCTION_9_9(v363);
        OUTLINED_FUNCTION_45_2();
        OUTLINED_FUNCTION_44();

        return MEMORY[0x282200600](v16, v17, v18, v19, v20, v21, v22, v23, a9, a10, a11, a12);
      }

      v278 = v104 == *MEMORY[0x277D424C0] || v104 == *MEMORY[0x277D424D0];
      if (v278)
      {
        v279 = OUTLINED_FUNCTION_203();
        v588 = *(v639 + 1080);
        v598 = *(v639 + 1104);
        v280 = *(v639 + 1072);
        v650 = *(v639 + 1048);
        v623 = *(v639 + 1024);
        v281 = *(v639 + 1016);
        v610 = *(v639 + 1008);
        v570 = *(v639 + 648);
        v578 = *(v639 + 1064);
        v282 = *(v639 + 640);
        v283 = *(v639 + 632);
        v284(v279);
        (*(v27 + 8))(v103, v101);
        v285 = MEMORY[0x277D42408];
        if (v93 != v95)
        {
          v285 = MEMORY[0x277D42400];
        }

        (*(v282 + 104))(v570, *v285, v283);
        (*(v280 + 16))(v588, v598, v578);
        (*(v281 + 16))(v623, v650, v610);
        v286 = *(v631 + 2);
        if (v286)
        {
          v651 = *(v639 + 624);
          v287 = *(v639 + 616);
          v288 = *(v639 + 592);
          v611 = *(v639 + 464);
          *&v658[0] = MEMORY[0x277D84F90];
          v289 = v658;
          sub_231D41D3C(0, v286, 0);
          v290 = *&v658[0];
          v563 = (v288 + 32);
          v556 = *MEMORY[0x277D423E0];
          v550 = *MEMORY[0x277D423F0];
          v291 = (v287 + 104);
          v545 = *MEMORY[0x277D423E8];
          v292 = v631 + 48;
          v579 = *MEMORY[0x277D423F8];
          v624 = v287;
          v599 = (v287 + 104);
          do
          {
            v294 = *(v292 - 2);
            v293 = *(v292 - 1);
            if (*v292)
            {
              v295 = *(v639 + 608);
              **(v639 + 624) = v294;
              *(v651 + 8) = v293;
              (*v291)();
            }

            else
            {
              v296 = *(v639 + 584);
              v297 = *(v639 + 576);
              v298 = v294;
              v299 = OUTLINED_FUNCTION_55_3();
              sub_231D1E298(v299, v300, v301);
              v302 = __swift_getEnumTagSinglePayload(v297, 1, v296);
              v303 = *(v639 + 624);
              v304 = *(v639 + 608);
              if (v302 == 1)
              {
                sub_231CC154C(*(v639 + 576), &qword_27DD74BE0, &qword_231E1CC20);
                v289 = [v289 uniqueIdentifier];
                v305 = sub_231E11620();
                v307 = v306;
                v308 = OUTLINED_FUNCTION_54_0();
                sub_231D42B30(v308, v309, 0);

                *v303 = v305;
                *(v651 + 8) = v307;
                v291 = v599;
                (*v599)(v303, v545, v304);
              }

              else
              {
                v289 = *(v639 + 600);
                v310 = *(v639 + 584);
                v311 = *(v639 + 576);
                v312 = OUTLINED_FUNCTION_54_0();
                sub_231D42B30(v312, v313, 0);
                v314 = *v563;
                (*v563)(v289, v311, v310);
                v315 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74C60, &qword_231E1C680) + 48);
                OUTLINED_FUNCTION_133_1();
                v314();
                v316 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74C68, &qword_231E1C688);
                OUTLINED_FUNCTION_6_0(v316);
                (*(v317 + 104))(v303 + v315, v556);
                v291 = v599;
                (*v599)(v303, v550, v304);
              }

              v287 = v624;
            }

            *&v658[0] = v290;
            v319 = *(v290 + 16);
            v318 = *(v290 + 24);
            if (v319 >= v318 >> 1)
            {
              v324 = OUTLINED_FUNCTION_2_12(v318);
              v289 = v658;
              sub_231D41D3C(v324, v319 + 1, 1);
              v290 = *&v658[0];
            }

            v320 = *(v639 + 624);
            v321 = *(v639 + 608);
            *(v290 + 16) = v319 + 1;
            v322 = *(v287 + 80);
            OUTLINED_FUNCTION_79();
            (*(v287 + 32))(v290 + v323 + *(v287 + 72) * v319);
            v292 += 24;
            --v286;
          }

          while (v286);
        }

        v144 = v639;
        v636 = *(v639 + 1768);
        v655 = *(v639 + 1760);
        v536 = *(v639 + 1744);
        v541 = *(v639 + 1752);
        v524 = *(v639 + 1728);
        v526 = *(v639 + 1736);
        v522 = *(v639 + 1712);
        v520 = *(v639 + 1924);
        v559 = *(v639 + 1704);
        v566 = *(v639 + 1696);
        v509 = *(v639 + 1448);
        v510 = *(v639 + 1456);
        v507 = *(v639 + 1424);
        v508 = *(v639 + 1400);
        v627 = *(v639 + 1104);
        v518 = *(v639 + 1080);
        v614 = *(v639 + 1064);
        v591 = *(v639 + 1048);
        v602 = *(v639 + 1072);
        v515 = *(v639 + 1024);
        v573 = *(v639 + 1016);
        v582 = *(v639 + 1008);
        v394 = *(v639 + 992);
        v395 = *(v639 + 984);
        v396 = *(v639 + 968);
        v397 = *(v639 + 960);
        v516 = *(v639 + 952);
        v513 = *(v639 + 944);
        v528 = *(v639 + 936);
        v532 = *(v639 + 864);
        v398 = *(v639 + 664);
        v514 = *(v639 + 656);
        v511 = *(v639 + 648);
        v512 = *(v639 + 672);
        v506 = *(v639 + 584);
        v399 = *(v639 + 456);
        sub_231D42F54(*(v639 + 976), *(v639 + 1000), &qword_27DD74470, &qword_231E17120);
        sub_231D42F54(v396, v394, &qword_27DD74470, &qword_231E17120);
        OUTLINED_FUNCTION_266();
        sub_231D42F54(v400, v401, v402, &qword_231E17120);
        v509(v507, v399, v508);
        OUTLINED_FUNCTION_15_10();
        sub_231D42B40(v403, v404);
        sub_231E108D0();
        v405 = *(v398 + 16);
        v406 = OUTLINED_FUNCTION_57();
        v407(v406);
        (*(v513 + 104))(v516, *MEMORY[0x277D424E8], v528);
        sub_231E10D00();

        v408 = *(v398 + 8);
        v409 = OUTLINED_FUNCTION_59_0();
        v410(v409);
        OUTLINED_FUNCTION_69_3();
        sub_231CC154C(v411, v412, v413);
        OUTLINED_FUNCTION_69_3();
        sub_231CC154C(v414, v415, v416);
        OUTLINED_FUNCTION_69_3();
        sub_231CC154C(v417, v418, v419);
        v420 = OUTLINED_FUNCTION_32_5();
        v636(v420);
        v421 = OUTLINED_FUNCTION_293();
        v422(v421);
        v423 = *(v639 + 448);
        (*(v144[107] + 32))(v144[56], v144[108], v144[106]);
        v424 = *MEMORY[0x277D421B0];
        v425 = sub_231E0FE10();
        OUTLINED_FUNCTION_6_0(v425);
        (*(v426 + 104))(v423, v424);
        v427 = *MEMORY[0x277D42148];
        v428 = sub_231E0FDE0();
        OUTLINED_FUNCTION_6_0(v428);
        (*(v429 + 104))(v423);
      }

      else
      {
        v341 = *(v639 + 1752);
        v342 = *(v639 + 1736);
        v343 = *(v639 + 1720);
        v344 = *(v639 + 1704);
        v345 = *(v639 + 1696);
        v612 = *(v639 + 1512);
        v625 = *(v639 + 1760);
        v346 = *(v639 + 1440);
        v571 = *(v639 + 1408);
        v580 = *(v639 + 1768);
        v653 = *(v639 + 1264);
        v347 = *(v639 + 1256);
        v589 = *(v639 + 1400);
        v600 = *(v639 + 1248);
        v557 = *(v639 + 1064);
        v564 = *(v639 + 1104);
        v546 = *(v639 + 1048);
        v551 = *(v639 + 1072);
        v535 = *(v639 + 1016);
        v540 = *(v639 + 1008);
        v531 = *(v639 + 976);
        v348 = *(v639 + 968);
        v349 = *(v639 + 960);
        v350 = *(v639 + 448);

        sub_231D3EA58(v346, v350);

        v144 = v639;
        v351 = OUTLINED_FUNCTION_109_2();
        sub_231CC154C(v351, v352, &qword_231E17120);
        OUTLINED_FUNCTION_133_1();
        sub_231CC154C(v353, v354, v355);
        OUTLINED_FUNCTION_133_1();
        sub_231CC154C(v356, v357, v358);
        v580(v546, v540);
        v359 = OUTLINED_FUNCTION_59_5();
        v625(v359);
        v612(v346, v589);
        (*(v347 + 8))(v653, v600);
      }
    }

LABEL_74:
    v264 = v144[180];
    v265 = v144[179];
    v266 = v144[178];
    v267 = v144[177];
    v268 = v144;
    v269 = v144[174];
    OUTLINED_FUNCTION_1_17();
    OUTLINED_FUNCTION_5_15();
    v517 = v268[104];
    v519 = v268[103];
    v521 = v268[100];
    v523 = v268[99];
    v525 = v268[98];
    v527 = v268[95];
    v530 = v268[94];
    v534 = v268[93];
    v539 = v268[92];
    v544 = v268[91];
    v549 = v268[88];
    v555 = v268[87];
    v562 = v268[84];
    v569 = v268[81];
    v577 = v268[78];
    v587 = v268[75];
    v597 = v268[72];
    v609 = v268[71];
    v622 = v268[68];
    v635 = v268[65];
    v640 = v268[62];
    v649 = v268[59];

    OUTLINED_FUNCTION_19();
    OUTLINED_FUNCTION_95_3();

    return v271(v270, v271, v272, v273, v274, v275, v276, v277, a9, a10, a11, a12);
  }

  v26 = 0;
  v616 = v24 & 0xFFFFFFFFFFFFFF8;
  v629 = v24 & 0xC000000000000001;
  v27 = MEMORY[0x277D84F98];
  v604 = v24 + 32;
  while (1)
  {
    if (v629)
    {
      v28 = MEMORY[0x23837D2A0](v26, *(v12 + 1792));
    }

    else
    {
      if (v26 >= *(v616 + 16))
      {
        goto LABEL_125;
      }

      v28 = *(v604 + 8 * v26);
    }

    v29 = v28;
    v30 = v26 + 1;
    if (__OFADD__(v26, 1))
    {
      __break(1u);
LABEL_120:
      __break(1u);
      goto LABEL_121;
    }

    v31 = [v28 *(isUniquelyReferenced_nonNull_native + 424)];
    v32 = sub_231E11620();
    v15 = v33;

    v14 = v29;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v658[0] = v27;
    v34 = sub_231CE0CA4(v32, v15);
    v36 = *(v27 + 16);
    v37 = (v35 & 1) == 0;
    v27 = v36 + v37;
    if (__OFADD__(v36, v37))
    {
      goto LABEL_120;
    }

    v13 = v34;
    v38 = v35;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74CA0, &qword_231E1C6B8);
    if (sub_231E11EA0())
    {
      v39 = sub_231CE0CA4(v32, v15);
      if ((v38 & 1) != (v40 & 1))
      {
        OUTLINED_FUNCTION_95_3();

        return sub_231E12160();
      }

      v13 = v39;
    }

    if ((v38 & 1) == 0)
    {
      break;
    }

    v27 = *&v658[0];
    v41 = *(*&v658[0] + 56);
    v42 = *(v41 + 8 * v13);
    *(v41 + 8 * v13) = v14;

LABEL_16:
    ++v26;
    v278 = v30 == v641;
    v12 = v639;
    isUniquelyReferenced_nonNull_native = &off_278947000;
    if (v278)
    {
      v47 = *(v639 + 1792);
      v48 = *(v639 + 1472);

      goto LABEL_20;
    }
  }

  v27 = *&v658[0];
  *(*&v658[0] + 8 * (v13 >> 6) + 64) |= 1 << v13;
  v43 = (*(v27 + 48) + 16 * v13);
  *v43 = v32;
  v43[1] = v15;
  *(*(v27 + 56) + 8 * v13) = v14;

  v44 = *(v27 + 16);
  v45 = __OFADD__(v44, 1);
  v46 = v44 + 1;
  if (!v45)
  {
    *(v27 + 16) = v46;
    goto LABEL_16;
  }

  __break(1u);
LABEL_125:
  __break(1u);
  return MEMORY[0x282200600](v16, v17, v18, v19, v20, v21, v22, v23, a9, a10, a11, a12);
}

uint64_t sub_231D3A8D4()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21();
  v2 = *(v1 + 1856);
  v3 = *v0;
  OUTLINED_FUNCTION_4();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_10();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_231D3A9B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_57_0();
  v16 = *(v12 + 1925);
  v17 = *(v12 + 888);
  v18 = *(v12 + 832);
  v19 = *(v12 + 816);
  v20 = *(v12 + 808);
  sub_231E102C0();
  sub_231E10220();
  v21 = *(v19 + 88);
  v22 = OUTLINED_FUNCTION_25();
  v24 = v23(v22);
  if (v24 != *MEMORY[0x277D42268])
  {
    v53 = v24;
    if (v24 == *MEMORY[0x277D42280])
    {
      v54 = *(v12 + 1848);
      v55 = *(v12 + 1832);
      v56 = *(v12 + 1808);
      v57 = *(v12 + 832);
      v58 = *(v12 + 816);
      v59 = *(v12 + 808);

      v60 = *(v58 + 8);
      v61 = OUTLINED_FUNCTION_33();
      v62(v61);
    }

    else
    {
      if (v24 == *MEMORY[0x277D42278])
      {
        v63 = *(v12 + 1848);
        v64 = *(v12 + 1832);
        v65 = *(v12 + 1808);
      }

      else
      {
        v95 = *(v12 + 1848);
        v96 = *(v12 + 1832);
        v97 = *(v12 + 1808);
        if (v53 != *MEMORY[0x277D42270])
        {
          v268 = *MEMORY[0x277D42260];

          if (v53 != v268)
          {
            v269 = OUTLINED_FUNCTION_297();
            v270(v269);
          }

          goto LABEL_17;
        }
      }
    }

LABEL_17:
    v98 = *(v12 + 1696);
    OUTLINED_FUNCTION_66_4();
    v99 = *(v12 + 1352);
    v100 = OUTLINED_FUNCTION_231();
    v101(v100);
    v102 = v98;
    v103 = sub_231E10E10();
    v104 = sub_231E11AD0();

    if (os_log_type_enabled(v103, v104))
    {
      v629 = *(v12 + 1352);
      v634 = *(v12 + 1504);
      v613 = *(v12 + 1696);
      v617 = *(v12 + 1304);
      v622 = *(v12 + 1296);
      v105 = *(v12 + 888);
      v106 = *(v12 + 824);
      v107 = *(v12 + 816);
      v108 = *(v12 + 808);
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v640[0] = v15;
      *v14 = 136315394;
      swift_beginAccess();
      sub_231E10220();
      swift_endAccess();
      v109 = sub_231E101F0();
      v111 = v110;
      v112 = *(v107 + 8);
      v113 = OUTLINED_FUNCTION_259();
      v114(v113);
      v115 = sub_231CB5000(v109, v111, v640);

      *(v14 + 4) = v115;
      *(v14 + 12) = 2080;
      v116 = [v613 uniqueIdentifier];
      sub_231E11620();
      v118 = v117;

      v119 = OUTLINED_FUNCTION_33();
      v122 = sub_231CB5000(v119, v120, v121);

      *(v14 + 14) = v122;
      OUTLINED_FUNCTION_3_7();
      _os_log_impl(v123, v124, v125, v126, v127, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_30();
      OUTLINED_FUNCTION_11();

      v634(v629, v622);
    }

    else
    {
      v118 = *(v12 + 1504);
      v122 = *(v12 + 1352);
      v104 = *(v12 + 1304);
      v128 = *(v12 + 1296);

      v129 = OUTLINED_FUNCTION_140_0();
      v118(v129);
    }

    v130 = *(v12 + 1696);
    OUTLINED_FUNCTION_242();
    v78 = [v131 uniqueIdentifier];
    sub_231E11620();
    OUTLINED_FUNCTION_268();

    *v122 = v118;
    v122[1] = v104;
    v132 = *MEMORY[0x277D423F8];
    v133 = *(v14 + 104);
    v134 = OUTLINED_FUNCTION_82();
    v135(v134);
    goto LABEL_21;
  }

  v25 = *(v12 + 1832);
  v26 = OUTLINED_FUNCTION_297();
  v27(v26);
  if (!*(v25 + 16))
  {
    v66 = *(v12 + 1848);
    v67 = *(v12 + 1832);
    v68 = *(v12 + 1808);
    v69 = *(v12 + 920);
    v70 = *(v12 + 912);
    v71 = *(v12 + 904);
    v72 = *(v12 + 888);
    v73 = *(v12 + 880);
    v74 = *(v12 + 872);

    v75 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74C70, &qword_231E1C690) + 48);
    v76 = *(v73 + 16);
    OUTLINED_FUNCTION_209();
    v77();
    v78 = *MEMORY[0x277D423D0];
    v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74C78, &qword_231E1C698);
    OUTLINED_FUNCTION_6_0(v79);
    (*(v80 + 104))(v69 + v75, v78);
    v81 = *MEMORY[0x277D423F0];
    v82 = *(v70 + 104);
    v15 = (v70 + 104);
    v83 = OUTLINED_FUNCTION_82();
    v84(v83);
LABEL_21:
    v610 = *(v12 + 1768);
    v614 = *(v12 + 1760);
    v585 = *(v12 + 1744);
    v588 = *(v12 + 1752);
    v573 = *(v12 + 1728);
    v575 = *(v12 + 1736);
    OUTLINED_FUNCTION_262();
    v598 = v136;
    v604 = *(v12 + 1696);
    OUTLINED_FUNCTION_170_0();
    v577 = v137;
    v583 = *(v12 + 1152);
    v539 = *(v12 + 1136);
    v138 = *(v12 + 1128);
    v139 = *(v12 + 1120);
    v596 = *(v12 + 1104);
    v524 = *(v12 + 1088);
    v140 = *(v12 + 1072);
    v593 = *(v12 + 1064);
    v581 = *(v12 + 1048);
    v514 = *(v12 + 1032);
    v635 = *(v12 + 1016);
    v579 = *(v12 + 1008);
    OUTLINED_FUNCTION_168_0(v141);
    v623 = v143;
    v630 = v142;
    OUTLINED_FUNCTION_194();
    v618 = v144;
    OUTLINED_FUNCTION_290();
    v607 = v145;
    v601 = *(v12 + 880);
    OUTLINED_FUNCTION_204();
    v146();
    v147 = *(v140 + 16);
    OUTLINED_FUNCTION_69_3();
    v148();
    v149 = *(v635 + 16);
    OUTLINED_FUNCTION_263();
    v150();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74C80, &qword_231E1C6A0);
    v151 = *(v78 + 72);
    v152 = *(v78 + 80);
    v153 = OUTLINED_FUNCTION_213();
    v154 = OUTLINED_FUNCTION_295(v153, xmmword_231E138E0);
    v155(v154, v618, v15);
    OUTLINED_FUNCTION_240(v623, v509);
    OUTLINED_FUNCTION_240(v630, v519);
    v156 = OUTLINED_FUNCTION_240(v504, v529);
    v164 = OUTLINED_FUNCTION_289(v156, v157, v158, v159, v160, v161, v162, v163, v353, v358, v363, v368, v373, v378, v382, v386, v390, v394, v399, v404, v409, v414, v419, v424, v429, v434, v439, v444, v449, v454, v459, v464, v469, v474, v479, v484, v489, v494, v499, v504, v509, v514, v519, v524, v529, v534, v539, v544, v549);
    v165(v164);
    OUTLINED_FUNCTION_16_8();
    v168 = sub_231D42B40(v166, v167);
    v169 = v535;
    OUTLINED_FUNCTION_117_3(v168, v170, v171, v172, v173, v174, v175, v176, v354, v359, v364, v369, v374, v575, v15, v535, v168, v395, v400, v405, v410, v415, v420, v425, v430, v435, v440, v445, v450, v455, v460, v465, v470, v475, v480, v485, v490, v495, v500, v505, v510, v515, v520, v525, v530, v535, v540, v545, v550, v553, v556, v559, v562, v565, v567, v568, v569, v570, v571);
    OUTLINED_FUNCTION_225(v177, v178, v179, v180, v181, v182, v183, v184, v355, v360, v365, v370, v375, v379, v383, v387, v391, v396, v401, v406, v411, v416, v421, v426, v431, v436, v441, v446, v451, v456, v461, v466, v471, v476, v481, v486, v491, v496, v501, v506, v511, v516, v521, v526, v531, v536, v541);
    v185 = sub_231E108D0();
    v193 = OUTLINED_FUNCTION_264(v185, v186, v187, v188, v189, v190, v191, v192, v356, v361, v366, v371, v376, v380, v384, v388, v392, v397, v402, v407, v412, v417, v422, v427, v432, v437, v442, v447, v452, v457, v462, v467, v472, v477, v482, v487, v492, v497, v502, v507, v512, v517, v522, v527, v532, v537, v542, v546, v551, v554, v557, v560, v563);
    v195 = v194(v193);
    v202 = OUTLINED_FUNCTION_288(v195, *MEMORY[0x277D424F0], v196, v197, v198, v199, v200, v201, v357, v362, v367, v372, v377, v381, v385, v389, v393, v398, v403, v408, v413, v418, v423, v428, v433, v438, v443, v448, v453, v458, v463, v468, v473, v478, v483, v488, v493, v498, v503, v508, v513, v518, v523, v528, v533, v538, v543, v547, v552, v555, v558, v561, v564, v566);
    v203(v202);
    sub_231E10D00();

    v204 = *(v577 + 8);
    v205 = OUTLINED_FUNCTION_109_2();
    v206(v205);
    (*(v78 + 8))(v618, v548);
    OUTLINED_FUNCTION_147_1();
    sub_231CC154C(v207, v208, v209);
    OUTLINED_FUNCTION_147_1();
    sub_231CC154C(v210, v211, v212);
    OUTLINED_FUNCTION_147_1();
    sub_231CC154C(v213, v214, v215);
    v610(v581, v579);
    v614(v596, v593);
    (*(v601 + 8))(v607, v169);
    v216 = OUTLINED_FUNCTION_8_10();
    v217(v216);
    v218 = *MEMORY[0x277D421B0];
    v219 = sub_231E0FE10();
    OUTLINED_FUNCTION_6_0(v219);
    v221 = *(v220 + 104);
    v222 = OUTLINED_FUNCTION_48();
    v223(v222);
    v224 = *MEMORY[0x277D42148];
    v225 = sub_231E0FDE0();
    OUTLINED_FUNCTION_6_0(v225);
    v227 = *(v226 + 104);
    v228 = OUTLINED_FUNCTION_48();
    v229(v228);
    OUTLINED_FUNCTION_0_22();
    OUTLINED_FUNCTION_5_15();
    v572 = *(v12 + 832);
    v574 = *(v12 + 824);
    v576 = *(v12 + 800);
    v578 = *(v12 + 792);
    v580 = *(v12 + 784);
    v582 = *(v12 + 760);
    v584 = *(v12 + 752);
    v586 = *(v12 + 744);
    v589 = *(v12 + 736);
    v591 = *(v12 + 728);
    v594 = *(v12 + 704);
    v597 = *(v12 + 696);
    v599 = *(v12 + 672);
    v602 = *(v12 + 648);
    v605 = *(v12 + 624);
    v608 = *(v12 + 600);
    v611 = *(v12 + 576);
    v615 = *(v12 + 568);
    v619 = *(v12 + 544);
    v624 = *(v12 + 520);
    v631 = *(v12 + 496);
    v636 = *(v12 + 472);

    OUTLINED_FUNCTION_19();
    OUTLINED_FUNCTION_44();

    return v231(v230, v231, v232, v233, v234, v235, v236, v237, a9, a10, a11, a12);
  }

  v28 = *(v12 + 888);
  v29 = *(v12 + 800);
  v30 = *(v12 + 768);
  sub_231E10080();
  if (__swift_getEnumTagSinglePayload(v29, 1, v30))
  {
    v31 = *(v12 + 1848);
    v32 = *(v12 + 1808);
    sub_231CC154C(*(v12 + 800), &qword_27DD73F98, &unk_231E170E0);
LABEL_5:

    v33 = *(v12 + 1832);
    v34 = *(v12 + 1696);
    OUTLINED_FUNCTION_66_4();
    v35 = *(v12 + 1296);
    v36(*(v12 + 1336));
    v37 = v34;

    v38 = sub_231E10E10();
    v39 = sub_231E11AD0();

    v40 = OUTLINED_FUNCTION_85();
    v15 = *(v12 + 1832);
    if (v40)
    {
      v41 = *(v12 + 1696);
      v628 = *(v12 + 1336);
      v633 = *(v12 + 1504);
      v42 = *(v12 + 1304);
      v43 = *(v12 + 1296);
      swift_slowAlloc();
      v14 = OUTLINED_FUNCTION_199();
      v640[0] = v14;
      *v13 = 134218242;
      v44 = v15[2];

      *(v13 + 4) = v44;

      *(v13 + 12) = 2080;
      v15 = [v41 uniqueIdentifier];
      sub_231E11620();
      OUTLINED_FUNCTION_192();

      v45 = OUTLINED_FUNCTION_116_3();
      sub_231CB5000(v45, v46, v47);
      OUTLINED_FUNCTION_307();
      *(v13 + 14) = v15;
      OUTLINED_FUNCTION_159_0();
      _os_log_impl(v48, v49, v50, v51, v52, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v14);
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_30();

      v633(v628, v43);
    }

    else
    {
      v39 = *(v12 + 1504);
      v85 = *(v12 + 1336);
      v13 = *(v12 + 1304);
      v86 = *(v12 + 1296);
      v87 = *(v12 + 1832);
      swift_bridgeObjectRelease_n();

      v88 = OUTLINED_FUNCTION_25();
      v39(v88);
    }

    v89 = *(v12 + 1696);
    OUTLINED_FUNCTION_242();
    v78 = [v90 uniqueIdentifier];
    sub_231E11620();
    OUTLINED_FUNCTION_268();

    *v38 = v39;
    v38[1] = v13;
    v91 = *MEMORY[0x277D423F8];
    v92 = *(v14 + 104);
    v93 = OUTLINED_FUNCTION_82();
    v94(v93);
    goto LABEL_21;
  }

  v239 = *(v12 + 800);
  v240 = *(v12 + 784);
  v241 = *(v12 + 776);
  v242 = *(v12 + 768);
  v243 = *(v241 + 16);
  v244 = OUTLINED_FUNCTION_59_0();
  v245(v244);
  sub_231CC154C(v239, &qword_27DD73F98, &unk_231E170E0);
  v246 = sub_231E10270();
  v247 = *(v241 + 8);
  v13 = v241 + 8;
  v248 = OUTLINED_FUNCTION_25();
  v249(v248);
  if (!v246)
  {
    v336 = *(v12 + 1848);
    v337 = *(v12 + 1808);
    goto LABEL_5;
  }

  v625 = *(v246 + 16);
  if (!v625)
  {
    v338 = *(v12 + 1848);
    v339 = *(v12 + 1808);

    goto LABEL_5;
  }

  v250 = 0;
  v251 = *(v12 + 720);
  v637 = v251;
  v252 = (v251 + 8);
  v595 = (v251 + 32);
  v253 = *(v12 + 1840);
  v592 = MEMORY[0x277D84F90];
  while (v625 != v250)
  {
    v254 = *(v12 + 1832);
    v255 = *(v12 + 760);
    v256 = *(v12 + 712);
    sub_231D42A68(v250, 1, v246);
    v257 = (*(v637 + 80) + 32) & ~*(v637 + 80);
    v258 = *(v637 + 72);
    (*(v637 + 16))(v255, v246 + v257 + v258 * v250, v256);
    *(v12 + 360) = sub_231E10000();
    *(v12 + 368) = v259;
    v260 = swift_task_alloc();
    *(v260 + 16) = v12 + 360;
    LOBYTE(v254) = sub_231D162D0(sub_231D163AC, v260, v254);

    v261 = *(v12 + 760);
    if (v254)
    {
      v616 = *v595;
      (*v595)(*(v12 + 752), *(v12 + 760), *(v12 + 712));
      v262 = v592;
      v640[0] = v592;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_231D41D7C(0, *(v592 + 16) + 1, 1);
        v262 = v640[0];
      }

      v264 = *(v262 + 16);
      v263 = *(v262 + 24);
      if (v264 >= v263 >> 1)
      {
        v267 = OUTLINED_FUNCTION_2_12(v263);
        sub_231D41D7C(v267, v264 + 1, 1);
        v262 = v640[0];
      }

      ++v250;
      v265 = *(v12 + 752);
      v266 = *(v12 + 712);
      *(v262 + 16) = v264 + 1;
      v592 = v262;
      (v616)(v262 + v257 + v264 * v258, v265, v266);
    }

    else
    {
      (*v252)(*(v12 + 760), *(v12 + 712));
      ++v250;
    }
  }

  v271 = *(v12 + 1848);
  v272 = *(v12 + 1832);
  v273 = *(v12 + 1304);

  v275 = sub_231D3F93C(v274);
  v276 = *(v272 + 16);
  v620 = v271 + 32;

  v277 = 0;
  v278 = v272 + 40;
  v590 = MEMORY[0x277D84F90];
  v600 = v276;
  v603 = v275;
  v587 = v272 + 40;
LABEL_38:
  v279 = (v278 + 16 * v277);
  while (1)
  {
    if (v276 == v277)
    {
      v340 = *(v12 + 1848);
LABEL_61:

      v341 = *(v12 + 1848);
      v15 = *(v12 + 1832);
      v342 = *(v12 + 1808);
      v627 = *(v12 + 920);
      v632 = *(v12 + 912);
      v638 = *(v12 + 904);
      v343 = *(v12 + 888);
      v344 = *(v12 + 880);
      v621 = *(v12 + 872);
      v345 = *(v12 + 792);
      v346 = *(v12 + 776);
      v347 = *(v12 + 768);

      v639 = v590;
      sub_231D3FCB0(&v639, v15);

      *v345 = v590;
      (*(v346 + 104))(v345, *MEMORY[0x277D42288], v347);
      __swift_storeEnumTagSinglePayload(v345, 0, 1, v347);
      sub_231E10090();
      v348 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74C70, &qword_231E1C690) + 48);
      v349 = *(v344 + 16);
      v78 = v344 + 16;
      v349(v627, v343, v621);
      v350 = *MEMORY[0x277D423D0];
      v351 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74C78, &qword_231E1C698);
      OUTLINED_FUNCTION_6_0(v351);
      (*(v352 + 104))(v627 + v348, v350);
      (*(v632 + 104))(v627, *MEMORY[0x277D423F0], v638);
      goto LABEL_21;
    }

    if (v277 >= *(*(v12 + 1832) + 16))
    {
      break;
    }

    result = *(v12 + 1848);
    v280 = *(result + 16);
    if (v277 == v280)
    {
      goto LABEL_61;
    }

    if (v277 >= v280)
    {
      goto LABEL_63;
    }

    v281 = *(v279 - 1);
    v282 = *v279;
    v626 = v279;
    v283 = *(v620 + v277);
    v284 = *(v275 + 16);

    if (v284 && (v285 = sub_231CE0CA4(v281, v282), (v286 & 1) != 0) && *(*(*(v275 + 56) + 8 * v285) + 16))
    {
      v287 = *(v12 + 728);
      v288 = *(v12 + 712);
      v289 = *(v12 + 704);
      v290 = (*(v637 + 80) + 32) & ~*(v637 + 80);
      v291 = *(v637 + 16);
      v292 = OUTLINED_FUNCTION_82();
      v293(v292);
      v294 = *(v637 + 32);
      OUTLINED_FUNCTION_71_3();
      v295();
      sub_231E0FFD0();
      v296 = 0;
    }

    else
    {
      v297 = *(v12 + 1696);
      OUTLINED_FUNCTION_66_4();
      v298 = *(v12 + 1344);
      v299 = OUTLINED_FUNCTION_231();
      v300(v299);
      v301 = v297;

      v302 = sub_231E10E10();
      v303 = sub_231E11AD0();

      if (os_log_type_enabled(v302, v303))
      {
        v304 = *(v12 + 1696);
        v609 = *(v12 + 1344);
        v612 = *(v12 + 1504);
        v606 = *(v12 + 1296);
        v305 = swift_slowAlloc();
        v640[0] = swift_slowAlloc();
        *v305 = 136315394;
        *(v305 + 4) = sub_231CB5000(v281, v282, v640);
        *(v305 + 12) = 2080;
        v306 = [v304 uniqueIdentifier];
        sub_231E11620();

        v307 = OUTLINED_FUNCTION_113_2();
        v310 = sub_231CB5000(v307, v308, v309);

        *(v305 + 14) = v310;
        _os_log_impl(&dword_231CAE000, v302, v303, "Missing email from thread with id: %s; uniqueId: %s", v305, 0x16u);
        swift_arrayDestroy();
        v276 = v600;
        OUTLINED_FUNCTION_30();
        v275 = v603;
        OUTLINED_FUNCTION_30();

        v612(v609, v606);
      }

      else
      {
        v311 = *(v12 + 1504);
        v312 = *(v12 + 1344);
        v313 = *(v12 + 1296);

        v314 = OUTLINED_FUNCTION_25();
        v311(v314);
      }

      v296 = 1;
    }

    v315 = *(v12 + 712);
    v316 = *(v12 + 704);
    __swift_storeEnumTagSinglePayload(v316, v296, 1, v315);

    if (__swift_getEnumTagSinglePayload(v316, 1, v315) != 1)
    {
      v317 = *(v12 + 744);
      v318 = *v595;
      (*v595)(*(v12 + 736), *(v12 + 704), *(v12 + 712));
      v319 = OUTLINED_FUNCTION_48();
      v318(v319);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v328 = *(v590 + 16);
        v329 = OUTLINED_FUNCTION_0_1();
        v590 = sub_231D41394(v329, v330, v331, v332);
      }

      v321 = *(v590 + 16);
      v320 = *(v590 + 24);
      if (v321 >= v320 >> 1)
      {
        v333 = OUTLINED_FUNCTION_44_6(v320);
        v590 = sub_231D41394(v333, v334, v335, v590);
      }

      ++v277;
      v322 = *(v12 + 744);
      v323 = *(v12 + 712);
      *(v590 + 16) = v321 + 1;
      v324 = *(v637 + 80);
      OUTLINED_FUNCTION_79();
      result = (v318)(v326 + v325 + *(v327 + 72) * v321);
      v278 = v587;
      goto LABEL_38;
    }

    result = sub_231CC154C(*(v12 + 704), &qword_27DD74C00, &unk_231E203C0);
    v279 = v626 + 2;
    ++v277;
  }

  __break(1u);
LABEL_63:
  __break(1u);
  return result;
}