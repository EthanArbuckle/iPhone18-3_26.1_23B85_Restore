uint64_t sub_1DD2AAD4C(unint64_t a1)
{
  v3 = sub_1DD287354();
  v4 = *v1;
  v5 = sub_1DD287354();
  v6 = __OFADD__(v5, v3);
  result = v5 + v3;
  if (v6)
  {
    __break(1u);
    goto LABEL_8;
  }

  sub_1DD2B33C4(result);
  v8 = *v1;
  v9 = *v1 & 0xFFFFFFFFFFFFFF8;
  sub_1DD2DAAD8(v9 + 8 * *(v9 + 0x10) + 32, (*(v9 + 0x18) >> 1) - *(v9 + 0x10), a1);
  v11 = v10;

  if (v11 < v3)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v11 < 1)
  {
LABEL_6:
    *v1 = v8;
    return result;
  }

  v12 = *(v9 + 16);
  v6 = __OFADD__(v12, v11);
  v13 = v12 + v11;
  if (!v6)
  {
    *(v9 + 16) = v13;
    goto LABEL_6;
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_1DD2AADF8(uint64_t a1)
{
  result = OUTLINED_FUNCTION_87(a1);
  if (v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  result = sub_1DD295334(result, 1, sub_1DD28541C);
  v6 = *v2;
  if (!*(v3 + 16))
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  if ((*(v6 + 24) >> 1) - *(v6 + 16) < v1)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  swift_arrayInitWithCopy();

  if (!v1)
  {
LABEL_8:
    *v2 = v6;
    return result;
  }

  v7 = *(v6 + 16);
  v5 = __OFADD__(v7, v1);
  v8 = v7 + v1;
  if (!v5)
  {
    *(v6 + 16) = v8;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_1DD2AAEBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v4 = sub_1DD28EFFC();
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = *(*(a3 + 56) + 8 * v4);
  return sub_1DD335860();
}

uint64_t sub_1DD2AAF0C(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v3 = sub_1DD2B2FB0(a1);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = *(*(a2 + 56) + 8 * v3);
  return sub_1DD335860();
}

uint64_t sub_1DD2AAF5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v4 = sub_1DD28EFFC();
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = *(*(a3 + 56) + 8 * v4);
}

void *sub_1DD2AAFAC(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v3 = sub_1DD2B3048(a1);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = *(*(a2 + 56) + 8 * v3);
  v6 = v5;
  return v5;
}

uint64_t sub_1DD2AAFF4@<X0>(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  if (*(a1 + 16) && (v4 = sub_1DD28EFFC(), (v5 & 1) != 0))
  {
    v6 = v4;
    v7 = *(a1 + 56);
    v8 = sub_1DD336350();
    OUTLINED_FUNCTION_1(v8);
    (*(v9 + 16))(a2, v7 + *(v9 + 72) * v6, v8);
    OUTLINED_FUNCTION_66_0();
    v13 = v8;
  }

  else
  {
    sub_1DD336350();
    OUTLINED_FUNCTION_24();
  }

  return __swift_storeEnumTagSinglePayload(v10, v11, v12, v13);
}

uint64_t sub_1DD2AB0A8(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v472 = a3;
  v469 = a2;
  OUTLINED_FUNCTION_83_2();
  v458 = sub_1DD334C70();
  v8 = OUTLINED_FUNCTION_1_0(v458);
  v457 = v9;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_17();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_35();
  OUTLINED_FUNCTION_17();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_35();
  OUTLINED_FUNCTION_17();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_35();
  OUTLINED_FUNCTION_17();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_35();
  OUTLINED_FUNCTION_17();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_50_0(v17);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD6778, &qword_1DD339728);
  v19 = OUTLINED_FUNCTION_36(v18);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_17();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_6_1(v23);
  v455 = sub_1DD336370();
  v24 = OUTLINED_FUNCTION_1_0(v455);
  v454 = v25;
  v27 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_17();
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_50_0(v29);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD6780, &unk_1DD339730);
  OUTLINED_FUNCTION_36(v30);
  v32 = *(v31 + 64);
  OUTLINED_FUNCTION_28();
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_50_0(v34);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD6788, &unk_1DD33A920);
  OUTLINED_FUNCTION_36(v35);
  v37 = *(v36 + 64);
  OUTLINED_FUNCTION_28();
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_6_1(v39);
  v453 = sub_1DD334C10();
  v40 = OUTLINED_FUNCTION_1_0(v453);
  v452 = v41;
  v43 = *(v42 + 64);
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_3_2();
  OUTLINED_FUNCTION_6_1(v44);
  v460 = sub_1DD334C50();
  v45 = OUTLINED_FUNCTION_1_0(v460);
  v461 = v46;
  v48 = *(v47 + 64);
  MEMORY[0x1EEE9AC00](v45);
  OUTLINED_FUNCTION_3_2();
  OUTLINED_FUNCTION_6_1(v49);
  v50 = sub_1DD336350();
  v51 = OUTLINED_FUNCTION_1_0(v50);
  v466 = v52;
  v54 = *(v53 + 64);
  MEMORY[0x1EEE9AC00](v51);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_17();
  MEMORY[0x1EEE9AC00](v55);
  OUTLINED_FUNCTION_35();
  OUTLINED_FUNCTION_17();
  MEMORY[0x1EEE9AC00](v56);
  OUTLINED_FUNCTION_35();
  OUTLINED_FUNCTION_17();
  MEMORY[0x1EEE9AC00](v57);
  OUTLINED_FUNCTION_35();
  v468 = v58;
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x1EEE9AC00](v59);
  OUTLINED_FUNCTION_35();
  v463 = v60;
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x1EEE9AC00](v61);
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_50_0(v62);
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD6350, &unk_1DD3396F0);
  v64 = OUTLINED_FUNCTION_36(v63);
  v66 = *(v65 + 64);
  MEMORY[0x1EEE9AC00](v64);
  OUTLINED_FUNCTION_6();
  v464 = v67;
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x1EEE9AC00](v68);
  OUTLINED_FUNCTION_35();
  OUTLINED_FUNCTION_17();
  MEMORY[0x1EEE9AC00](v69);
  OUTLINED_FUNCTION_35();
  OUTLINED_FUNCTION_17();
  MEMORY[0x1EEE9AC00](v70);
  v72 = &v422 - v71;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD6608, &qword_1DD339310);
  v74 = OUTLINED_FUNCTION_36(v73);
  v76 = *(v75 + 64);
  MEMORY[0x1EEE9AC00](v74);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_17();
  MEMORY[0x1EEE9AC00](v77);
  OUTLINED_FUNCTION_35();
  OUTLINED_FUNCTION_17();
  MEMORY[0x1EEE9AC00](v78);
  OUTLINED_FUNCTION_35();
  OUTLINED_FUNCTION_17();
  MEMORY[0x1EEE9AC00](v79);
  OUTLINED_FUNCTION_35();
  OUTLINED_FUNCTION_17();
  MEMORY[0x1EEE9AC00](v80);
  OUTLINED_FUNCTION_35();
  OUTLINED_FUNCTION_17();
  v82 = MEMORY[0x1EEE9AC00](v81);
  v84 = &v422 - v83;
  MEMORY[0x1EEE9AC00](v82);
  OUTLINED_FUNCTION_115_0();
  MEMORY[0x1EEE9AC00](v85);
  OUTLINED_FUNCTION_35();
  OUTLINED_FUNCTION_17();
  MEMORY[0x1EEE9AC00](v86);
  OUTLINED_FUNCTION_35();
  OUTLINED_FUNCTION_17();
  MEMORY[0x1EEE9AC00](v87);
  v89 = &v422 - v88;
  v470 = v4;
  v90 = sub_1DD2B3B70(v4);
  if (!v90)
  {
    return 0;
  }

  v91 = v90;
  v429 = a4;
  v467 = v5;
  v465 = v89;
  OUTLINED_FUNCTION_24();
  v462 = v50;
  __swift_storeEnumTagSinglePayload(v92, v93, v94, v50);
  v480 = MEMORY[0x1E69E7CC0];
  v95 = *MEMORY[0x1E69971D8];
  v96 = sub_1DD3365D0();
  v98 = v97;
  v99 = sub_1DD2E5EF8(v96, v97, v91);

  v100 = &unk_1EE02A000;
  if (v99)
  {
    sub_1DD28191C(v471 + OBJC_IVAR____TtC23SiriReferenceResolution18RRContextKitPuller_featureFlags, v477);
    v102 = v478;
    v101 = v479;
    v98 = __swift_project_boxed_opaque_existential_1(v477, v478);
    (*(v101 + 48))(v102, v101);
    OUTLINED_FUNCTION_94_0();
    if ((v101 & 1) == 0)
    {

      v140 = [v470 title];
      sub_1DD3365D0();
      OUTLINED_FUNCTION_36_2();

      OUTLINED_FUNCTION_64_0();
      String.md5String.getter();
      v142 = v141;
      v144 = v143;

      if (!v144)
      {
        v145 = OUTLINED_FUNCTION_89_0();
        v142 = sub_1DD3365D0();
        v144 = v146;
      }

      v147 = v467;
      v148 = OUTLINED_FUNCTION_89_0();
      v149 = sub_1DD3365D0();
      v151 = v150;

      v152 = v469;
      v153 = v472;
      v154 = sub_1DD2D0190(v142, v144, v469, v472, v149, v151);
      v6 = &selRef_createDirectoryAtURL_withIntermediateDirectories_attributes_error_;
      if (v147)
      {

        sub_1DD296084(v465, &qword_1ECCD6608, &qword_1DD339310);
        return v6;
      }

      v468 = v154;

      v230 = [v470 title];
      v231 = sub_1DD3365D0();
      v233 = v232;

      sub_1DD2D01EC(v142, v144, v152, v153, v231, v233);

      v311 = sub_1DD335E60();
      v312 = OUTLINED_FUNCTION_20_1();
      __swift_storeEnumTagSinglePayload(v312, v313, v314, v311);
      OUTLINED_FUNCTION_84_0();
      OUTLINED_FUNCTION_111_0();
      v363 = sub_1DD2B16A4(v315, v316, v317, v318, v319, v320, v321, v322, v72);
      v364 = v470;
      sub_1DD296084(v72, &qword_1ECCD6350, &unk_1DD3396F0);

      v467 = 0;
      if (v363)
      {
        if (([v364 isOnScreen] & 1) == 0)
        {
          OUTLINED_FUNCTION_17_2();
          sub_1DD335FE0();
        }

        v365 = sub_1DD2B28D4();
        MEMORY[0x1E12AC640](v365);
        OUTLINED_FUNCTION_118_0();
        if (v367)
        {
          OUTLINED_FUNCTION_45(v366);
          sub_1DD336830();
        }

        sub_1DD336860();
        v6 = v480;
      }

      else
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      v379 = [v364 title];
      sub_1DD3365D0();

      OUTLINED_FUNCTION_86_0();
      String.sha256String.getter();
      v381 = v380;
      v383 = v382;

      if (!v383)
      {
        v384 = [v364 title];
        sub_1DD3365D0();

        OUTLINED_FUNCTION_86_0();
        v381 = sub_1DD336680();
      }

      v385 = [v364 title];
      sub_1DD3365D0();

      v386 = v467;
      sub_1DD2D0230();
      if (!v386)
      {
        v463 = v387;

        v394 = [v470 title];
        sub_1DD3365D0();

        v395 = v432;
        v467 = v381;
        OUTLINED_FUNCTION_71_2();
        sub_1DD2D05B8();

        v396 = v430;
        v397 = v462;
        (*(v466 + 2))(v430, v395, v462);
        OUTLINED_FUNCTION_66_0();
        __swift_storeEnumTagSinglePayload(v398, v399, v400, v397);
        v401 = v431;
        OUTLINED_FUNCTION_24();
        __swift_storeEnumTagSinglePayload(v402, v403, v404, v311);
        sub_1DD335860();
        OUTLINED_FUNCTION_84_0();
        OUTLINED_FUNCTION_111_0();
        v413 = sub_1DD2B16A4(v405, v406, v407, v408, v409, v410, v411, v412, v401);
        v467 = 0;
        v415 = v413;

        sub_1DD296084(v401, &qword_1ECCD6350, &unk_1DD3396F0);
        sub_1DD296084(v396, &qword_1ECCD6608, &qword_1DD339310);
        v84 = v466;
        v416 = v462;
        if (v415)
        {
          OUTLINED_FUNCTION_17_2();
          v417 = sub_1DD335FE0();
          MEMORY[0x1E12AC640](v417);
          OUTLINED_FUNCTION_118_0();
          if (v367)
          {
            OUTLINED_FUNCTION_45(v418);
            sub_1DD336830();
          }

          sub_1DD336860();
          v6 = v480;
        }

        (*(v84 + 8))(v395, v416);
        v419 = OUTLINED_FUNCTION_49_0();
        sub_1DD296084(v419, v420, v421);
        LODWORD(v84) = 0;
        OUTLINED_FUNCTION_74_0();
        v100 = v465;
        goto LABEL_92;
      }

      OUTLINED_FUNCTION_49_0();
      OUTLINED_FUNCTION_31_4();
      sub_1DD296084(v388, v389, v390);
      v391 = OUTLINED_FUNCTION_21_2();
      sub_1DD296084(v391, v392, v393);
      goto LABEL_106;
    }
  }

  v103 = *MEMORY[0x1E69971E8];
  v104 = sub_1DD3365D0();
  OUTLINED_FUNCTION_70_0(v104, v105);
  OUTLINED_FUNCTION_32_0();

  if (v98)
  {
    v106 = OBJC_IVAR____TtC23SiriReferenceResolution18RRContextKitPuller_featureFlags;
    sub_1DD28191C(v471 + OBJC_IVAR____TtC23SiriReferenceResolution18RRContextKitPuller_featureFlags, v477);
    v107 = v478;
    v108 = v479;
    OUTLINED_FUNCTION_128_0();
    v109 = *(v108 + 48);
    v110 = OUTLINED_FUNCTION_32_0();
    v111(v110, v108);
    OUTLINED_FUNCTION_94_0();
    if ((v107 & 1) == 0)
    {

      v155 = v470;
      v156 = [v470 title];
      sub_1DD3365D0();
      OUTLINED_FUNCTION_129_0();
      OUTLINED_FUNCTION_112();
      if (sub_1DD3366A0())
      {

        v157 = OUTLINED_FUNCTION_89_0();
        sub_1DD3365D0();
        OUTLINED_FUNCTION_36_2();

        OUTLINED_FUNCTION_64_0();
        String.md5String.getter();
        OUTLINED_FUNCTION_121_0();

        if (!v108)
        {
          v158 = OUTLINED_FUNCTION_89_0();
          sub_1DD3365D0();
          OUTLINED_FUNCTION_121_0();
        }

        v159 = OUTLINED_FUNCTION_89_0();
        sub_1DD3365D0();
        OUTLINED_FUNCTION_129_0();
        v468 = v106;
        OUTLINED_FUNCTION_99_0();
        v160 = sub_1DD2D0BF4();
        if (!v5)
        {
          v463 = v160;

          v309 = [v155 title];
          sub_1DD3365D0();
          OUTLINED_FUNCTION_129_0();
          OUTLINED_FUNCTION_99_0();
          v131 = 0;
          v310 = sub_1DD2D0F48();
          OUTLINED_FUNCTION_92_0(v310, &qword_1ECCD6608, &qword_1DD339310);

          sub_1DD2B4714(v6, &unk_1EE02A000);
          LODWORD(v84) = 0;
          v6 = MEMORY[0x1E69E7CC0];
          v275 = v464;
          goto LABEL_103;
        }

        sub_1DD296084(v465, &qword_1ECCD6608, &qword_1DD339310);
      }

      else
      {
        v234 = sub_1DD334E30();
        OUTLINED_FUNCTION_59(v234);
        swift_allocObject();
        v235 = sub_1DD334E20();
        OUTLINED_FUNCTION_112();
        sub_1DD334E10();
        OUTLINED_FUNCTION_112();
        String.md5String.getter();
        v466 = &unk_1EE02A000;
        if (v237)
        {
          v238 = v236;
          v239 = v237;
        }

        else
        {

          v238 = &unk_1EE02A000;
          v239 = v107;
        }

        v100 = v472;
        v323 = v461;
        swift_bridgeObjectRetain_n();

        OUTLINED_FUNCTION_8();
        v324 = v459;
        sub_1DD334C30();
        v463 = v235;
        sub_1DD334BA0();
        (*(v323 + 8))(v324, v460);
        sub_1DD28191C(v471 + v106, v477);
        v325 = v238;
        v326 = v478;
        v327 = v479;
        __swift_project_boxed_opaque_existential_1(v477, v478);
        OUTLINED_FUNCTION_101(v327);
        v328(v326, v327);
        OUTLINED_FUNCTION_125_0();
        if (v235)
        {
          sub_1DD334BF0();
          v329 = OUTLINED_FUNCTION_20_1();
          __swift_storeEnumTagSinglePayload(v329, v330, v331, v332);
          sub_1DD3356D0();
          OUTLINED_FUNCTION_119_0();
          v334 = *(v333 - 256);
          OUTLINED_FUNCTION_24();
          __swift_storeEnumTagSinglePayload(v335, v336, v337, v338);

          OUTLINED_FUNCTION_56_0();
          v424 = v325;
          v425 = v239;
          v422 = v339;
          v423 = MEMORY[0x1E69E7CC0];
          v468 = v325;
          v340 = v469;
          OUTLINED_FUNCTION_75_0();
          sub_1DD334C00();
          v6 = v463;
          sub_1DD334BB0();
          OUTLINED_FUNCTION_41_1();
          OUTLINED_FUNCTION_97_0();
          v341();
          v342 = v239;
          v343 = v468;
        }

        else
        {
          v342 = v239;
          v343 = v325;
          v6 = v463;
          v340 = v469;
        }

        MEMORY[0x1E12AABB0](v6);
        v344 = v467;
        v345 = sub_1DD2D0F8C(v343, v342, v340, v100, v466, v107);
        v131 = v344;
        if (!v344)
        {
          v468 = v343;
          OUTLINED_FUNCTION_92_0(v345, &qword_1ECCD6608, &qword_1DD339310);

          sub_1DD2B4714(v84, v100);
          v6 = MEMORY[0x1E69E7CC0];
          LODWORD(v84) = 1;
          v275 = v464;
          goto LABEL_103;
        }

        sub_1DD296084(v465, &qword_1ECCD6608, &qword_1DD339310);

        OUTLINED_FUNCTION_102_0();
        swift_bridgeObjectRelease_n();
      }

      return v6;
    }
  }

  v112 = *MEMORY[0x1E69971A0];
  v113 = sub_1DD3365D0();
  OUTLINED_FUNCTION_70_0(v113, v114);
  OUTLINED_FUNCTION_32_0();

  v115 = MEMORY[0x1E69DADF0];
  v6 = MEMORY[0x1E69DAE70];
  if ((v98 & 1) == 0)
  {
    goto LABEL_8;
  }

  v116 = OBJC_IVAR____TtC23SiriReferenceResolution18RRContextKitPuller_featureFlags;
  sub_1DD28191C(v471 + OBJC_IVAR____TtC23SiriReferenceResolution18RRContextKitPuller_featureFlags, v477);
  v117 = v478;
  v84 = v479;
  OUTLINED_FUNCTION_128_0();
  v118 = *(v84 + 48);
  v119 = OUTLINED_FUNCTION_32_0();
  v120(v119, v84);
  OUTLINED_FUNCTION_94_0();
  if (v117)
  {
LABEL_8:
    v121 = *MEMORY[0x1E69971A8];
    v122 = sub_1DD3365D0();
    OUTLINED_FUNCTION_70_0(v122, v123);
    OUTLINED_FUNCTION_32_0();

    if ((v98 & 1) == 0)
    {
      goto LABEL_10;
    }

    sub_1DD28191C(v471 + OBJC_IVAR____TtC23SiriReferenceResolution18RRContextKitPuller_featureFlags, v477);
    v124 = v478;
    v84 = v479;
    OUTLINED_FUNCTION_128_0();
    v125 = *(v84 + 48);
    v126 = OUTLINED_FUNCTION_32_0();
    v127(v126, v84);
    OUTLINED_FUNCTION_94_0();
    if ((v124 & 1) == 0)
    {

      v224 = v470;
      v225 = [v470 extractedStartDateComponents];
      if (v225)
      {
        v226 = v225;
        v227 = v449;
        sub_1DD3344F0();

        v228 = 0;
        v229 = v450;
      }

      else
      {
        v228 = 1;
        v229 = v450;
        v227 = v449;
      }

      v280 = sub_1DD334570();
      v281 = 1;
      __swift_storeEnumTagSinglePayload(v227, v228, 1, v280);
      type metadata accessor for RRContextKitPuller();
      sub_1DD2AEA44();
      sub_1DD296084(v227, &qword_1ECCD6778, &qword_1DD339728);
      v282 = [v224 extractedEndDateComponents];
      if (v282)
      {
        v283 = v282;
        sub_1DD3344F0();

        v281 = 0;
      }

      __swift_storeEnumTagSinglePayload(v229, v281, 1, v280);
      sub_1DD2AEA44();
      sub_1DD296084(v229, &qword_1ECCD6778, &qword_1DD339728);
      v284 = sub_1DD335530();
      OUTLINED_FUNCTION_59(v284);
      swift_allocObject();
      v285 = sub_1DD335520();
      sub_1DD335860();
      sub_1DD335510();

      sub_1DD335860();
      sub_1DD335500();

      v286 = OUTLINED_FUNCTION_89_0();
      sub_1DD3365D0();
      OUTLINED_FUNCTION_67_0();

      OUTLINED_FUNCTION_79();
      String.md5String.getter();
      v288 = v287;
      v290 = v289;

      if (v290)
      {
        v468 = v288;
      }

      else
      {
        v291 = OUTLINED_FUNCTION_89_0();
        v468 = sub_1DD3365D0();
      }

      v131 = v467;

      MEMORY[0x1E12AABB0](v285);

      v6 = MEMORY[0x1E69E7CC0];
      LODWORD(v84) = 1;
    }

    else
    {
LABEL_10:
      v128 = *MEMORY[0x1E69971C8];
      v129 = sub_1DD3365D0();
      OUTLINED_FUNCTION_70_0(v129, v130);
      OUTLINED_FUNCTION_32_0();

      v131 = v467;
      v132 = v462;
      if (v98)
      {

        v134 = OUTLINED_FUNCTION_95_0(v133, sel_title);
        sub_1DD3365D0();
        OUTLINED_FUNCTION_36_2();

        OUTLINED_FUNCTION_64_0();
        String.md5String.getter();
        v6 = v135;
        v137 = v136;

        if (!v137)
        {
          v138 = [v84 title];
          v6 = sub_1DD3365D0();
        }

        v139 = [v84 title];
        sub_1DD3365D0();
        OUTLINED_FUNCTION_36_2();

        v477[0] = v98;
        v477[1] = v132;
        v475 = 10;
        v476 = 0xE100000000000000;
        v473 = 32;
        v474 = 0xE100000000000000;
        sub_1DD2B3FD4();
        OUTLINED_FUNCTION_106();
        sub_1DD336AE0();

        sub_1DD2D1350();
        if (!v131)
        {
          v468 = v6;

          LODWORD(v84) = 0;
          v6 = MEMORY[0x1E69E7CC0];
          v275 = v464;
          v100 = v465;
          goto LABEL_103;
        }

        sub_1DD296084(v465, &qword_1ECCD6608, &qword_1DD339310);

LABEL_138:

        return v6;
      }

      v161 = *MEMORY[0x1E69971D0];
      v162 = sub_1DD3365D0();
      OUTLINED_FUNCTION_70_0(v162, v163);
      OUTLINED_FUNCTION_32_0();

      v164 = *MEMORY[0x1E69971C0];
      v165 = sub_1DD3365D0();
      OUTLINED_FUNCTION_70_0(v165, v166);
      OUTLINED_FUNCTION_32_0();

      v276 = *MEMORY[0x1E69971B0];
      v277 = sub_1DD3365D0();
      OUTLINED_FUNCTION_70_0(v277, v278);
      OUTLINED_FUNCTION_32_0();

      v279 = v457;
      v346 = *MEMORY[0x1E69971B8];
      v347 = sub_1DD3365D0();
      OUTLINED_FUNCTION_70_0(v347, v348);
      OUTLINED_FUNCTION_32_0();

      if (v98)
      {

        v349 = v470;
        v350 = sub_1DD2B3BD0(v470);
        OUTLINED_FUNCTION_39_1(v350, v351);
        v352 = [v349 title];
        v466 = sub_1DD3365D0();

        sub_1DD2B3BD0(v349);
        OUTLINED_FUNCTION_121_0();
        v353 = OUTLINED_FUNCTION_7_0(*MEMORY[0x1E69D17A8], *(v279 + 104));
        v354(v353);
        sub_1DD334C60();
        v356 = v355;
        v357 = OUTLINED_FUNCTION_44_0(*(v279 + 8));
        v358(v357);
        OUTLINED_FUNCTION_46_1();
        if (!v5)
        {
          v463 = v359;

          v369 = OUTLINED_FUNCTION_95_0(v368, sel_title);
          v370 = sub_1DD3365D0();
          v466 = v371;
          v467 = v370;

          sub_1DD2B3BD0(v356);
          OUTLINED_FUNCTION_32_2();
          OUTLINED_FUNCTION_22_1(&v463);
          v84 = *(v372 - 256);
          OUTLINED_FUNCTION_42_2();
          v373();
          sub_1DD334C60();
          v374 = OUTLINED_FUNCTION_58_0();
          v375(v374);
          v100 = v466;
          OUTLINED_FUNCTION_110_0(&v462);
          sub_1DD2D29F0();
          v131 = 0;
          OUTLINED_FUNCTION_92_0(v376, &qword_1ECCD6608, &qword_1DD339310);

          v377 = OUTLINED_FUNCTION_64_0();
          sub_1DD2B4714(v377, v378);
          LODWORD(v84) = 0;
          v6 = MEMORY[0x1E69E7CC0];
          v275 = v464;
          OUTLINED_FUNCTION_108_0();
          goto LABEL_103;
        }

        sub_1DD296084(v465, &qword_1ECCD6608, &qword_1DD339310);

        OUTLINED_FUNCTION_49_0();
        goto LABEL_138;
      }

      v360 = *MEMORY[0x1E69971E0];
      v361 = sub_1DD3365D0();
      OUTLINED_FUNCTION_70_0(v361, v362);
      OUTLINED_FUNCTION_32_0();

      LODWORD(v84) = 0;
      v468 = 0;
      v6 = MEMORY[0x1E69E7CC0];
    }

LABEL_102:
    v275 = v464;
    v100 = v465;
    goto LABEL_103;
  }

  v84 = sub_1DD2B3C34(v470);
  if (!v84)
  {
    OUTLINED_FUNCTION_74_0();
    v6 = MEMORY[0x1E69E7CC0];
    v131 = v467;
    goto LABEL_102;
  }

  v431 = v116;
  v167 = sub_1DD3355C0();
  OUTLINED_FUNCTION_59(v167);
  swift_allocObject();
  v433 = sub_1DD3355B0();
  v444 = [objc_allocWithZone(MEMORY[0x1E695CF60]) init];
  v168 = v462;
  v169 = sub_1DD336530();
  v170 = 0;
  v172 = v84 + 64;
  v171 = *(v84 + 64);
  v173 = *(v84 + 32);
  v441 = *v115;
  v174 = 1 << v173;
  v175 = -1;
  v440 = *v6;
  if (v174 < 64)
  {
    v175 = ~(-1 << v174);
  }

  v437 = *MEMORY[0x1E696A910];
  v176 = v175 & v171;
  v177 = (v174 + 63) >> 6;
  v442 = v466 + 104;
  v445 = v466 + 32;
  v434 = v466 + 40;
  v432 = *MEMORY[0x1E696A918];
  v428 = *MEMORY[0x1E696A928];
  v426 = *MEMORY[0x1E696A930];
  v424 = *MEMORY[0x1E696A938];
  v423 = *MEMORY[0x1E695CC18];
  v425 = *MEMORY[0x1E695CC30];
  v427 = *MEMORY[0x1E695CC28];
  v430 = *MEMORY[0x1E695CC08];
  v435 = *MEMORY[0x1E695CC00];
  v178 = v472;
  v438 = v84 + 64;
  v436 = v177;
  v439 = v84;
  while (1)
  {
    v458 = v169;
    if (!v176)
    {
      break;
    }

    v179 = v168;
LABEL_35:
    v181 = __clz(__rbit64(v176)) | (v170 << 6);
    v182 = *(*(v84 + 48) + 8 * v181);
    v183 = (*(v84 + 56) + 16 * v181);
    v184 = *v183;
    v185 = v183[1];
    v186 = sub_1DD3365D0();
    v457 = v187;
    v188 = sub_1DD336340();
    v84 = swift_allocBox();
    v446 = v184;
    *v189 = v184;
    v189[1] = v185;
    OUTLINED_FUNCTION_22(v188);
    (*(v190 + 104))();
    v191 = v463;
    *v463 = v84;
    (*v442)(v191, v440, v179);
    v443 = *v445;
    v443(v468, v191, v179);
    v450 = v185;
    OUTLINED_FUNCTION_102_0();
    swift_bridgeObjectRetain_n();
    v449 = v182;
    v456 = v182;
    v192 = v458;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v477[0] = v192;
    v194 = v457;
    sub_1DD28EFFC();
    OUTLINED_FUNCTION_72_0();
    LODWORD(v84) = v197 + v198;
    if (__OFADD__(v197, v198))
    {
      __break(1u);
LABEL_155:
      __break(1u);
      goto LABEL_156;
    }

    v199 = v195;
    v200 = v196;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD6760, &qword_1DD339710);
    if (sub_1DD336CC0())
    {
      v201 = sub_1DD28EFFC();
      if ((v200 & 1) != (v202 & 1))
      {
        result = sub_1DD336E30();
        __break(1u);
        return result;
      }

      v199 = v201;
    }

    v203 = v477[0];
    if (v200)
    {
      v204 = v477[0];
      v205 = *(v477[0] + 56) + *(v466 + 9) * v199;
      v168 = v462;
      (*(v466 + 5))(v205, v468, v462);
    }

    else
    {
      *(v477[0] + 8 * (v199 >> 6) + 64) |= 1 << v199;
      v206 = (v203[6] + 16 * v199);
      *v206 = v186;
      v206[1] = v194;
      v207 = v203[7] + *(v466 + 9) * v199;
      v168 = v462;
      v443(v207, v468, v462);
      v208 = v203[2];
      v209 = __OFADD__(v208, 1);
      v197 = v208 + 1;
      if (v209)
      {
        goto LABEL_155;
      }

      v204 = v203;
      v203[2] = v197;
    }

    v178 = v472;
    sub_1DD3365D0();
    OUTLINED_FUNCTION_53_0();
    OUTLINED_FUNCTION_88_0();
    v211 = v211 && isUniquelyReferenced_nonNull_native == v210;
    if (v211)
    {

LABEL_70:
      OUTLINED_FUNCTION_15_1();
      OUTLINED_FUNCTION_32_0();

      v221 = &v464;
      goto LABEL_71;
    }

    OUTLINED_FUNCTION_14_2();
    OUTLINED_FUNCTION_126_0();

    if (v84)
    {
      goto LABEL_70;
    }

    sub_1DD3365D0();
    OUTLINED_FUNCTION_53_0();
    OUTLINED_FUNCTION_88_0();
    if (v211 && isUniquelyReferenced_nonNull_native == v212)
    {

LABEL_74:
      OUTLINED_FUNCTION_15_1();
      OUTLINED_FUNCTION_32_0();

      v221 = &v459;
      goto LABEL_71;
    }

    OUTLINED_FUNCTION_14_2();
    OUTLINED_FUNCTION_126_0();

    if (v84)
    {
      goto LABEL_74;
    }

    sub_1DD3365D0();
    OUTLINED_FUNCTION_53_0();
    OUTLINED_FUNCTION_88_0();
    if (v211 && isUniquelyReferenced_nonNull_native == v214)
    {

LABEL_76:
      OUTLINED_FUNCTION_15_1();
      OUTLINED_FUNCTION_32_0();

      v221 = &v456;
      goto LABEL_71;
    }

    OUTLINED_FUNCTION_14_2();
    OUTLINED_FUNCTION_126_0();

    if (v84)
    {
      goto LABEL_76;
    }

    sub_1DD3365D0();
    OUTLINED_FUNCTION_53_0();
    OUTLINED_FUNCTION_88_0();
    if (v211 && isUniquelyReferenced_nonNull_native == v216)
    {

LABEL_78:
      OUTLINED_FUNCTION_15_1();
      OUTLINED_FUNCTION_32_0();

      v221 = &v454;
LABEL_71:
      v222 = *(v221 - 32);
      OUTLINED_FUNCTION_124_0(v222, sel_setValue_forKey_);

      v169 = v204;
      v84 = v439;
      goto LABEL_72;
    }

    OUTLINED_FUNCTION_14_2();
    OUTLINED_FUNCTION_126_0();

    if (v84)
    {
      goto LABEL_78;
    }

    sub_1DD3365D0();
    OUTLINED_FUNCTION_53_0();
    OUTLINED_FUNCTION_88_0();
    if (v211 && isUniquelyReferenced_nonNull_native == v218)
    {

      v84 = v439;
LABEL_80:
      OUTLINED_FUNCTION_15_1();
      OUTLINED_FUNCTION_32_0();

      v223 = v423;
      OUTLINED_FUNCTION_124_0(v223, sel_setValue_forKey_);

      goto LABEL_81;
    }

    v220 = OUTLINED_FUNCTION_14_2();

    v84 = v439;
    if (v220)
    {
      goto LABEL_80;
    }

LABEL_81:
    v169 = v204;
LABEL_72:
    v176 &= v176 - 1;

    v172 = v438;
    v177 = v436;
  }

  while (1)
  {
    v180 = v170 + 1;
    if (__OFADD__(v170, 1))
    {
      __break(1u);
      sub_1DD296084(v465, &qword_1ECCD6608, &qword_1DD339310);
      return 0;
    }

    if (v180 >= v177)
    {
      break;
    }

    v176 = *(v172 + 8 * v180);
    ++v170;
    if (v176)
    {
      v179 = v168;
      v170 = v180;
      goto LABEL_35;
    }
  }

  v466 = [objc_allocWithZone(MEMORY[0x1E695CF68]) init];
  v240 = [v466 stringFromPostalAddress_];
  v241 = sub_1DD3365D0();
  v243 = v242;

  v244 = v433;
  sub_1DD3355A0();
  String.md5String.getter();
  if (v245)
  {
    OUTLINED_FUNCTION_36_2();

    v241 = v244;
    v243 = v170;
  }

  v468 = v241;
  OUTLINED_FUNCTION_102_0();
  swift_bridgeObjectRetain_n();

  OUTLINED_FUNCTION_8();
  v246 = v459;
  v247 = v469;
  sub_1DD334C30();
  v248 = v433;
  v249 = v433;
  sub_1DD334BA0();
  OUTLINED_FUNCTION_21(&v481);
  v250(v246, v460);
  sub_1DD28191C(v471 + v431, v477);
  v100 = v478;
  v84 = v479;
  __swift_project_boxed_opaque_existential_1(v477, v478);
  OUTLINED_FUNCTION_101(v84);
  v251(v100, v84);
  OUTLINED_FUNCTION_125_0();
  if (v249)
  {
    sub_1DD334BF0();
    OUTLINED_FUNCTION_24();
    __swift_storeEnumTagSinglePayload(v252, v253, v254, v255);
    sub_1DD3356D0();
    OUTLINED_FUNCTION_119_0();
    v100 = *(v256 - 256);
    OUTLINED_FUNCTION_24();
    __swift_storeEnumTagSinglePayload(v257, v258, v259, v260);

    OUTLINED_FUNCTION_56_0();
    v425 = v243;
    v424 = v468;
    v422 = v261;
    v423 = MEMORY[0x1E69E7CC0];
    v84 = v451;
    v178 = v472;
    sub_1DD334C00();
    v249 = v248;
    sub_1DD334BB0();
    OUTLINED_FUNCTION_41_1();
    OUTLINED_FUNCTION_97_0();
    v265(v262, v263, v264);
  }

  OUTLINED_FUNCTION_117_0();
  v463 = MEMORY[0x1E12AABB0](v248);
  OUTLINED_FUNCTION_63();
  v266 = swift_allocObject();
  *(v266 + 16) = v247;
  *(v266 + 24) = v178;
  strcpy((v266 + 32), "postalAddress");
  *(v266 + 46) = -4864;
  *v84 = v266;
  v267 = v454;
  v268 = v455;
  (*(v454 + 104))(v84, *MEMORY[0x1E69DB098], v455);
  sub_1DD336310();
  swift_allocBox();
  OUTLINED_FUNCTION_36_2();
  (*(v267 + 16))(v447, v84, v268);

  sub_1DD3362F0();

  v269 = (*(v267 + 8))(v84, v268);
  OUTLINED_FUNCTION_92_0(v269, &qword_1ECCD6608, &qword_1DD339310);
  v270 = v448;
  *v448 = v249;
  v271 = v462;
  (*v442)(v270, *MEMORY[0x1E69DAE58], v462);
  LODWORD(v84) = 1;
  OUTLINED_FUNCTION_66_0();
  __swift_storeEnumTagSinglePayload(v272, v273, v274, v271);
  sub_1DD2B4714(v270, v100);
  v6 = MEMORY[0x1E69E7CC0];
LABEL_92:
  v275 = v464;
  v131 = v467;
LABEL_103:
  if (sub_1DD287354())
  {
    sub_1DD296084(v100, &qword_1ECCD6608, &qword_1DD339310);

    goto LABEL_105;
  }

  sub_1DD335E60();
  OUTLINED_FUNCTION_24();
  __swift_storeEnumTagSinglePayload(v292, v293, v294, v295);
  v296 = v275;
  v297 = v470;
  OUTLINED_FUNCTION_84_0();
  OUTLINED_FUNCTION_111_0();
  v306 = sub_1DD2B16A4(v298, v299, v300, v301, v302, v303, v304, v305, v275);
  if (!v131)
  {
    v307 = v306;
    sub_1DD296084(v296, &qword_1ECCD6350, &unk_1DD3396F0);

    if (v307)
    {
      v308 = sub_1DD2B2A30();
      if (v308)
      {
        if (([v297 isOnScreen] & 1) == 0)
        {
          OUTLINED_FUNCTION_17_2();
          sub_1DD335FE0();
        }

        v308 = sub_1DD2B28D4();
      }

      MEMORY[0x1E12AC640](v308);
      v197 = *((v480 & 0xFFFFFFFFFFFFFF8) + 0x18);
      if (*((v480 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v197 >> 1)
      {
LABEL_156:
        OUTLINED_FUNCTION_45(v197);
        sub_1DD336830();
      }

      OUTLINED_FUNCTION_112();
      sub_1DD336860();
      v6 = v480;

      sub_1DD296084(v465, &qword_1ECCD6608, &qword_1DD339310);
      if (!v84)
      {
        return v6;
      }
    }

    else
    {
      sub_1DD296084(v100, &qword_1ECCD6608, &qword_1DD339310);
LABEL_105:

      if (!v84)
      {
        return v6;
      }
    }

LABEL_106:

    return v6;
  }

  sub_1DD296084(v275, &qword_1ECCD6350, &unk_1DD3396F0);
  sub_1DD296084(v100, &qword_1ECCD6608, &qword_1DD339310);

  if (v84)
  {
    goto LABEL_138;
  }

  return v6;
}

void sub_1DD2AEA44()
{
  OUTLINED_FUNCTION_23_0();
  v2 = v1;
  v3 = sub_1DD334830();
  v4 = OUTLINED_FUNCTION_1_0(v3);
  v79 = v5;
  v80 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_3_2();
  v78 = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD6798, &qword_1DD33A070);
  OUTLINED_FUNCTION_36(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_28();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_30();
  v81 = v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD6778, &qword_1DD339728);
  v15 = OUTLINED_FUNCTION_36(v14);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_6();
  v85 = v18;
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_35();
  v83 = v20;
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_35();
  v82 = v22;
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_35();
  v86 = v24;
  OUTLINED_FUNCTION_24_0();
  v26 = MEMORY[0x1EEE9AC00](v25);
  v28 = &v78 - v27;
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_115_0();
  v30 = MEMORY[0x1EEE9AC00](v29);
  v32 = &v78 - v31;
  MEMORY[0x1EEE9AC00](v30);
  v34 = &v78 - v33;
  v35 = sub_1DD335170();
  OUTLINED_FUNCTION_59(v35);
  swift_allocObject();
  v36 = sub_1DD335160();
  v37 = sub_1DD334F30();
  OUTLINED_FUNCTION_59(v37);
  swift_allocObject();
  v90 = sub_1DD334F20();
  v38 = sub_1DD335120();
  OUTLINED_FUNCTION_59(v38);
  swift_allocObject();
  v89 = sub_1DD335110();
  v91 = v2;
  sub_1DD27F164(v2, v34, &qword_1ECCD6778, &qword_1DD339728);
  v39 = sub_1DD334570();
  OUTLINED_FUNCTION_10_1(v34);
  if (v40)
  {
    sub_1DD296084(v34, &qword_1ECCD6778, &qword_1DD339728);
  }

  else
  {
    sub_1DD334510();
    OUTLINED_FUNCTION_9();
    (*(v41 + 8))(v34, v39);
  }

  v42 = v36;
  sub_1DD335100();
  sub_1DD335860();
  sub_1DD334EF0();

  OUTLINED_FUNCTION_91();
  v88 = sub_1DD335110();
  sub_1DD27F164(v91, v32, &qword_1ECCD6778, &qword_1DD339728);
  OUTLINED_FUNCTION_10_1(v32);
  if (v40)
  {
    sub_1DD296084(v32, &qword_1ECCD6778, &qword_1DD339728);
  }

  else
  {
    sub_1DD334540();
    OUTLINED_FUNCTION_9();
    (*(v43 + 8))(v32, v39);
  }

  sub_1DD335100();
  sub_1DD335860();
  sub_1DD334F00();

  OUTLINED_FUNCTION_91();
  v87 = sub_1DD335110();
  sub_1DD27F164(v91, v0, &qword_1ECCD6778, &qword_1DD339728);
  OUTLINED_FUNCTION_10_1(v0);
  v44 = v82;
  if (v40)
  {
    sub_1DD296084(v0, &qword_1ECCD6778, &qword_1DD339728);
  }

  else
  {
    sub_1DD334550();
    OUTLINED_FUNCTION_9();
    (*(v45 + 8))(v0, v39);
  }

  v46 = v86;
  sub_1DD335100();
  sub_1DD335860();
  sub_1DD334F10();

  v47 = sub_1DD3351A0();
  OUTLINED_FUNCTION_59(v47);
  swift_allocObject();
  v86 = sub_1DD335190();
  sub_1DD27F164(v91, v28, &qword_1ECCD6778, &qword_1DD339728);
  OUTLINED_FUNCTION_10_1(v28);
  if (v40)
  {
    v48 = &qword_1ECCD6778;
    v49 = &qword_1DD339728;
    v50 = v28;
LABEL_15:
    sub_1DD296084(v50, v48, v49);
LABEL_16:

    goto LABEL_17;
  }

  v51 = v81;
  sub_1DD334560();
  OUTLINED_FUNCTION_9();
  (*(v52 + 8))(v28, v39);
  v53 = sub_1DD3349F0();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v51, 1, v53);
  if (EnumTagSinglePayload == 1)
  {
    v48 = &qword_1ECCD6798;
    v49 = &qword_1DD33A070;
    v50 = v51;
    goto LABEL_15;
  }

  v72 = v42;
  v73 = v78;
  sub_1DD334820();
  sub_1DD3349B0();
  v75 = v74;
  v76 = v73;
  v42 = v72;
  (*(v79 + 8))(v76, v80);
  OUTLINED_FUNCTION_22(v53);
  (*(v77 + 8))(v81, v53);
  if (!v75)
  {
    goto LABEL_16;
  }

LABEL_17:
  sub_1DD335180();

  sub_1DD335860();
  sub_1DD334EE0();

  sub_1DD335860();
  sub_1DD335150();

  v55 = sub_1DD334ED0();
  OUTLINED_FUNCTION_59(v55);
  swift_allocObject();
  sub_1DD334EC0();
  OUTLINED_FUNCTION_91();
  sub_1DD335110();
  sub_1DD27F164(v91, v46, &qword_1ECCD6778, &qword_1DD339728);
  OUTLINED_FUNCTION_10_1(v46);
  v84 = v42;
  if (v40)
  {
    sub_1DD296084(v46, &qword_1ECCD6778, &qword_1DD339728);
  }

  else
  {
    sub_1DD334520();
    OUTLINED_FUNCTION_9();
    (*(v56 + 8))(v46, v39);
  }

  sub_1DD335100();
  sub_1DD335860();
  sub_1DD334EB0();

  OUTLINED_FUNCTION_91();
  sub_1DD335110();
  sub_1DD27F164(v91, v44, &qword_1ECCD6778, &qword_1DD339728);
  OUTLINED_FUNCTION_10_1(v44);
  if (v40)
  {
    sub_1DD296084(v44, &qword_1ECCD6778, &qword_1DD339728);
  }

  else
  {
    sub_1DD3344D0();
    OUTLINED_FUNCTION_9();
    v58 = *(v57 + 8);
    v59 = OUTLINED_FUNCTION_86_0();
    v60(v59);
  }

  sub_1DD335100();
  sub_1DD335860();
  sub_1DD334E90();

  v61 = sub_1DD335340();
  OUTLINED_FUNCTION_59(v61);
  swift_allocObject();
  sub_1DD335330();
  OUTLINED_FUNCTION_91();
  sub_1DD335110();
  v62 = v83;
  sub_1DD27F164(v91, v83, &qword_1ECCD6778, &qword_1DD339728);
  OUTLINED_FUNCTION_10_1(v62);
  if (v40)
  {
    sub_1DD296084(v62, &qword_1ECCD6778, &qword_1DD339728);
  }

  else
  {
    sub_1DD334530();
    OUTLINED_FUNCTION_9();
    v64 = *(v63 + 8);
    v65 = OUTLINED_FUNCTION_86_0();
    v66(v65);
  }

  sub_1DD335100();
  sub_1DD335860();
  sub_1DD335320();

  sub_1DD335860();
  sub_1DD334EA0();

  OUTLINED_FUNCTION_91();
  sub_1DD335110();
  v67 = v85;
  sub_1DD27F164(v91, v85, &qword_1ECCD6778, &qword_1DD339728);
  OUTLINED_FUNCTION_10_1(v67);
  if (v40)
  {
    sub_1DD296084(v67, &qword_1ECCD6778, &qword_1DD339728);
  }

  else
  {
    sub_1DD334500();
    OUTLINED_FUNCTION_9();
    v69 = *(v68 + 8);
    v70 = OUTLINED_FUNCTION_86_0();
    v71(v70);
  }

  sub_1DD335100();
  sub_1DD335860();
  sub_1DD334E80();

  sub_1DD335860();
  sub_1DD335140();

  OUTLINED_FUNCTION_102_0();

  OUTLINED_FUNCTION_24_1();
}

uint64_t sub_1DD2AF45C(void *a1)
{
  v111 = sub_1DD336100();
  v2 = OUTLINED_FUNCTION_1_0(v111);
  v107 = v3;
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_6();
  v110 = v6;
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_32_1();
  v109 = v8;
  v9 = sub_1DD336130();
  v10 = OUTLINED_FUNCTION_1_0(v9);
  v96 = v11;
  v97 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_3_2();
  v98 = v14;
  v15 = sub_1DD335CE0();
  v16 = OUTLINED_FUNCTION_1_0(v15);
  v18 = v17;
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_17();
  v22 = MEMORY[0x1EEE9AC00](v21);
  v24 = &v85 - v23;
  MEMORY[0x1EEE9AC00](v22);
  v26 = &v85 - v25;
  v27 = sub_1DD336150();
  v28 = OUTLINED_FUNCTION_1_0(v27);
  v30 = v29;
  v32 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_6();
  v106 = v33;
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_35();
  v108 = v35;
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x1EEE9AC00](v36);
  v38 = &v85 - v37;
  [a1 absoluteOriginOnScreen];
  [a1 absoluteOriginOnScreen];
  [a1 frameInWindow];
  [a1 frameInWindow];
  sub_1DD336140();
  v90 = v30;
  v39 = *(v30 + 16);
  v89 = v38;
  v112 = v27;
  v104 = v39;
  v105 = v30 + 16;
  (v39)(v26, v38, v27);
  v40 = *MEMORY[0x1E69D27F0];
  v41 = v18;
  v42 = *(v18 + 104);
  v94 = v18 + 104;
  v93 = v42;
  (v42)(v26, v40, v15);
  sub_1DD281748();
  v45 = *(v43 + 16);
  v44 = *(v43 + 24);
  v46 = v43;
  v47 = v45 + 1;
  if (v45 >= v44 >> 1)
  {
    OUTLINED_FUNCTION_45(v44);
    sub_1DD281748();
    v46 = v82;
  }

  *(v46 + 16) = v47;
  v50 = *(v41 + 32);
  v49 = v41 + 32;
  v48 = v50;
  v92 = (*(v49 + 48) + 32) & ~*(v49 + 48);
  v91 = *(v49 + 40);
  v95 = v49;
  (v50)(v46 + v92 + v91 * v45, v26, v15);
  v52 = v96;
  v51 = v97;
  v53 = v98;
  (*(v96 + 104))(v98, *MEMORY[0x1E69D2918], v97);
  (*(v52 + 16))(v24, v53, v51);
  v54 = *MEMORY[0x1E69D27E8];
  OUTLINED_FUNCTION_42_2();
  v93();
  v55 = *(v46 + 24);
  if ((v45 + 2) > (v55 >> 1))
  {
    OUTLINED_FUNCTION_45(v55);
    sub_1DD281748();
    v46 = v83;
  }

  *(v46 + 16) = v45 + 2;
  OUTLINED_FUNCTION_77_1();
  (v48)(v56 + v57 * v47, v24, v15);
  v58 = sub_1DD2B3DB4(a1, &selRef_associatedResults);
  if (!v58)
  {
    (*(v52 + 8))(v98, v51);
    OUTLINED_FUNCTION_21(&v114);
    v77(v89, v112);
    return v46;
  }

  v59 = v58;
  result = sub_1DD287354();
  v88 = v15;
  v87 = v46;
  v86 = v48;
  if (!result)
  {
LABEL_19:

    OUTLINED_FUNCTION_80_0(&v113);
    sub_1DD336160();
    v78 = *MEMORY[0x1E69D27F8];
    OUTLINED_FUNCTION_42_2();
    v93();
    OUTLINED_FUNCTION_117_0();
    v80 = *(v46 + 16);
    v79 = *(v46 + 24);
    if (v80 >= v79 >> 1)
    {
      OUTLINED_FUNCTION_45(v79);
      sub_1DD281748();
      v46 = v84;
    }

    (*(v96 + 8))(v98, v97);
    OUTLINED_FUNCTION_21(&v114);
    v81(v89, v112);
    *(v46 + 16) = v80 + 1;
    OUTLINED_FUNCTION_77_1();
    OUTLINED_FUNCTION_78_0();
    v86();
    return v46;
  }

  v61 = result;
  if (result >= 1)
  {
    v62 = 0;
    v101 = (v107 + 16);
    v102 = v59 & 0xC000000000000001;
    v100 = v107 + 8;
    v63 = (v90 + 8);
    v99 = v107 + 32;
    v64 = MEMORY[0x1E69E7CC0];
    v103 = v59;
    do
    {
      if (v102)
      {
        v65 = MEMORY[0x1E12ACA60](v62, v59);
      }

      else
      {
        v65 = *(v59 + 8 * v62 + 32);
      }

      v66 = v65;
      [v65 absoluteOriginOnScreen];
      [v66 absoluteOriginOnScreen];
      [v66 frameInWindow];
      [v66 frameInWindow];
      v46 = v108;
      sub_1DD336140();
      v67 = [v66 title];
      sub_1DD3365D0();

      v68 = OUTLINED_FUNCTION_47_1();
      v104(v68);
      v69 = v109;
      sub_1DD3360F0();
      (*v101)(v110, v69, v111);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v74 = *(v64 + 16);
        sub_1DD2BBAD4();
        v64 = v75;
      }

      v71 = *(v64 + 16);
      v70 = *(v64 + 24);
      if (v71 >= v70 >> 1)
      {
        OUTLINED_FUNCTION_45(v70);
        sub_1DD2BBAD4();
        v64 = v76;
      }

      ++v62;

      v72 = v107;
      v73 = v111;
      (*(v107 + 8))(v109, v111);
      (*v63)(v108, v112);
      *(v64 + 16) = v71 + 1;
      (*(v72 + 32))(v64 + ((*(v72 + 80) + 32) & ~*(v72 + 80)) + *(v72 + 72) * v71, v110, v73);
      v59 = v103;
    }

    while (v61 != v62);
    goto LABEL_19;
  }

  __break(1u);
  return result;
}

uint64_t sub_1DD2AFC9C()
{
  OUTLINED_FUNCTION_4();
  v1[22] = v2;
  v1[23] = v0;
  v3 = sub_1DD3357C0();
  v1[24] = v3;
  OUTLINED_FUNCTION_69_0(v3);
  v1[25] = v4;
  v6 = *(v5 + 64) + 15;
  v1[26] = swift_task_alloc();
  v7 = sub_1DD335CA0();
  v1[27] = v7;
  OUTLINED_FUNCTION_69_0(v7);
  v1[28] = v8;
  v10 = *(v9 + 64) + 15;
  v1[29] = swift_task_alloc();
  OUTLINED_FUNCTION_30_0();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t sub_1DD2AFDA0()
{
  if (qword_1EE027830 != -1)
  {
    OUTLINED_FUNCTION_38_1();
  }

  v1 = v0[29];
  v2 = v0[23];
  v3 = qword_1EE02A238;
  sub_1DD335C90();
  sub_1DD336A40();
  v4 = qword_1EE02A238;
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_55_0();
  sub_1DD335C70();

  v0[30] = OBJC_IVAR____TtC23SiriReferenceResolution18RRContextKitPuller_logger;
  v5 = sub_1DD335CB0();
  v6 = sub_1DD336940();
  if (OUTLINED_FUNCTION_34(v6))
  {
    v7 = OUTLINED_FUNCTION_69();
    OUTLINED_FUNCTION_68(v7);
    OUTLINED_FUNCTION_13_1();
    _os_log_impl(v8, v9, v10, v11, v12, 2u);
    OUTLINED_FUNCTION_28_1();
  }

  type metadata accessor for RRContextKitPuller();
  if (sub_1DD2B10E0())
  {
    v13 = [*(v0[23] + OBJC_IVAR____TtC23SiriReferenceResolution18RRContextKitPuller_client) newRequest];
    v0[31] = v13;
    [v13 setIncludeStructuredExtractionResults_];
    OUTLINED_FUNCTION_60();
    v14 = swift_allocObject();
    v0[32] = v14;
    *(v14 + 16) = v13;
    v15 = *(MEMORY[0x1E69D3548] + 4);
    v16 = v13;
    v17 = swift_task_alloc();
    v0[33] = v17;
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD6718, &unk_1DD339640);
    *v17 = v0;
    v17[1] = sub_1DD2B00C8;
    v19.n128_u64[0] = 1.0;

    return MEMORY[0x1EEE40F70](v0 + 18, &unk_1DD339638, v14, v18, v19);
  }

  else
  {
    v20 = sub_1DD335CB0();
    v21 = sub_1DD336930();
    if (OUTLINED_FUNCTION_34(v21))
    {
      v22 = OUTLINED_FUNCTION_69();
      OUTLINED_FUNCTION_68(v22);
      OUTLINED_FUNCTION_13_1();
      _os_log_impl(v23, v24, v25, v26, v27, 2u);
      OUTLINED_FUNCTION_28_1();
    }

    v28 = v0[29];

    sub_1DD336A30();
    v29 = qword_1EE02A238;
    OUTLINED_FUNCTION_55_0();
    sub_1DD335C80();

    v30 = v0[26];
    (*(v0[28] + 8))(v0[29], v0[27]);

    v31 = v0[1];
    v32 = MEMORY[0x1E69E7CC0];

    return v31(v32);
  }
}

uint64_t sub_1DD2B00C8()
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_81();
  v3 = v2;
  v4 = *(v2 + 264);
  v5 = *v1;
  OUTLINED_FUNCTION_0();
  *v6 = v5;
  *(v3 + 272) = v0;

  if (!v0)
  {
    v7 = *(v3 + 256);
  }

  OUTLINED_FUNCTION_30_0();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1DD2B01D0()
{
  v167 = v0;
  v2 = v0;
  v3 = v0[18];
  if (!v3)
  {
    v29 = OUTLINED_FUNCTION_90_0();
    v30 = sub_1DD336930();
    if (OUTLINED_FUNCTION_51(v30))
    {
      v31 = OUTLINED_FUNCTION_69();
      OUTLINED_FUNCTION_122(v31);
      OUTLINED_FUNCTION_37(&dword_1DD27A000, v32, v33, "ContextKit does not have any on-screen content extracted, returning...");
      OUTLINED_FUNCTION_52_0();
    }

    v34 = v0[31];
    v35 = v2[29];

    goto LABEL_11;
  }

  v4 = v3;
  v5 = [v4 error];
  v6 = &unk_1DD339000;
  v152 = v4;
  if (v5)
  {
    v7 = v2[30];
    v8 = v2[23];
    v9 = v5;
    v10 = sub_1DD335CB0();
    v11 = sub_1DD336950();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = OUTLINED_FUNCTION_50();
      v13 = swift_slowAlloc();
      v166[0] = v13;
      *v12 = 136315138;
      swift_getErrorValue();
      v15 = v2[11];
      v14 = v2[12];
      v16 = v2[13];
      v17 = sub_1DD336E40();
      v19 = sub_1DD27DBF0(v17, v18, v166);

      *(v12 + 4) = v19;
      v4 = v152;
      _os_log_impl(&dword_1DD27A000, v10, v11, "Failed to pull on-screen content from ContextKit, error: %s", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v13);
      OUTLINED_FUNCTION_54();
      OUTLINED_FUNCTION_54();
    }

    v20 = v2[31];
    sub_1DD2B4028();
    OUTLINED_FUNCTION_68_0();
    *v21 = 0;
    swift_willThrow();

    v23 = v2[28];
    v22 = v2[29];
    v25 = v2[26];
    v24 = v2[27];
    sub_1DD336A30();
    v26 = qword_1EE02A238;
    OUTLINED_FUNCTION_55_0();
    sub_1DD335C80();

    (*(v23 + 8))(v22, v24);

    v27 = v2[1];

    return v27();
  }

  v37 = sub_1DD2B3DB4(v4, &selRef_results);
  if (!v37)
  {
    v40 = OUTLINED_FUNCTION_90_0();
    v41 = sub_1DD336930();
    if (OUTLINED_FUNCTION_51(v41))
    {
      v42 = OUTLINED_FUNCTION_69();
      OUTLINED_FUNCTION_122(v42);
      OUTLINED_FUNCTION_37(&dword_1DD27A000, v43, v44, "ContextKit does not have any on-screen content extracted, returning...");
      OUTLINED_FUNCTION_52_0();
    }

    v34 = v2[31];
    v45 = v2[29];

LABEL_11:
    v36 = MEMORY[0x1E69E7CC0];
    goto LABEL_88;
  }

  v38 = v37;
  v155 = 0x6E776F6E6B6E55;
  v39 = sub_1DD2B3E20(v4);
  if (v39)
  {
    if (v39[2])
    {
      v155 = v39[4];
      v156 = v39[5];
    }

    else
    {
      v156 = 0xE700000000000000;
    }
  }

  else
  {
    v156 = 0xE700000000000000;
  }

  v46 = OUTLINED_FUNCTION_90_0();
  v47 = sub_1DD336940();
  if (OUTLINED_FUNCTION_34(v47))
  {
    v48 = OUTLINED_FUNCTION_69();
    OUTLINED_FUNCTION_68(v48);
    OUTLINED_FUNCTION_13_1();
    _os_log_impl(v49, v50, v51, v52, v53, 2u);
    OUTLINED_FUNCTION_54();
  }

  v165 = MEMORY[0x1E69E7CC0];
  v161 = v2;
  v154 = sub_1DD287354();
  v150 = v38;
  if (v154)
  {
    v54 = 0;
    v153 = v38 & 0xC000000000000001;
    v148 = v38 + 32;
    v149 = v38 & 0xFFFFFFFFFFFFFF8;
    v38 = v2[34];
    do
    {
      if (v153)
      {
        v55 = MEMORY[0x1E12ACA60](v54, v150);
      }

      else
      {
        v56 = *(v149 + 16);
        if (v54 >= v56)
        {
          goto LABEL_93;
        }

        v55 = *(v148 + 8 * v54);
      }

      v57 = __OFADD__(v54, 1);
      v58 = v54 + 1;
      if (v57)
      {
LABEL_92:
        __break(1u);
LABEL_93:
        __break(1u);
LABEL_94:
        __break(1u);
LABEL_95:
        __break(1u);
LABEL_96:
        __break(1u);
LABEL_97:
        OUTLINED_FUNCTION_45(v56);
        sub_1DD336830();
LABEL_71:
        sub_1DD336860();
        v2 = v161;
LABEL_72:
        v116 = *(v6 + v38);
        if (sub_1DD287354())
        {
          v117 = *(v6 + v38);

          sub_1DD2AAD4C(v118);
        }

        goto LABEL_74;
      }

      v157 = v58;
      v59 = v2[22];
      v60 = v2[23];
      v61 = v55;
      [v4 availableLayoutSize];
      v62 = sub_1DD2AB0A8(v61, v155, v156, v59);
      if (v38)
      {
        v63 = v2[30];
        v6 = v2[23];
        v64 = v61;
        v65 = v38;
        v66 = sub_1DD335CB0();
        v67 = sub_1DD336950();

        if (os_log_type_enabled(v66, v67))
        {
          v1 = swift_slowAlloc();
          v166[0] = swift_slowAlloc();
          *v1 = 136315394;
          v68 = [v64 title];
          sub_1DD3365D0();

          v69 = OUTLINED_FUNCTION_113();
          v72 = sub_1DD27DBF0(v69, v70, v71);

          *(v1 + 4) = v72;
          *(v1 + 12) = 2080;
          swift_getErrorValue();
          v74 = v2[8];
          v73 = v2[9];
          v75 = v2[10];
          v76 = sub_1DD336E40();
          v6 = sub_1DD27DBF0(v76, v77, v166);

          *(v1 + 14) = v6;
          _os_log_impl(&dword_1DD27A000, v66, v67, "Failed to build RREntity from on-screen content %s, error: %s", v1, 0x16u);
          swift_arrayDestroy();
          v4 = v152;
          OUTLINED_FUNCTION_54();
          OUTLINED_FUNCTION_54();

LABEL_53:
          goto LABEL_54;
        }
      }

      else
      {
        v78 = v62;
        v151 = v61;
        if (!v62)
        {
          v96 = v2[30];
          v6 = v2[23];
          v64 = v61;
          v97 = sub_1DD335CB0();
          v98 = sub_1DD336930();

          if (os_log_type_enabled(v97, v98))
          {
            v99 = OUTLINED_FUNCTION_50();
            v6 = swift_slowAlloc();
            v166[0] = v6;
            *v99 = 136315138;
            v100 = [v64 title];
            sub_1DD3365D0();
            OUTLINED_FUNCTION_32_2();

            v101 = sub_1DD27DBF0(v1, v4, v166);
            v4 = v152;

            *(v99 + 4) = v101;
            _os_log_impl(&dword_1DD27A000, v97, v98, "On-screen content %s does not contain necessary tags, skipping this one", v99, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v6);
            OUTLINED_FUNCTION_52_0();
            OUTLINED_FUNCTION_54();
          }

          goto LABEL_53;
        }

        v56 = v62 & 0xFFFFFFFFFFFFFF8;
        if (v62 >> 62)
        {
          v1 = sub_1DD336B60();
          if (!v1)
          {
LABEL_57:

            goto LABEL_54;
          }
        }

        else
        {
          v1 = *((v62 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (!v1)
          {
            goto LABEL_57;
          }
        }

        if (v1 < 1)
        {
          goto LABEL_96;
        }

        v79 = 0;
        v162 = v78 & 0xC000000000000001;
        v159 = v78;
        do
        {
          if (v162)
          {
            v80 = MEMORY[0x1E12ACA60](v79, v78);
          }

          else
          {
            v80 = *(v78 + 8 * v79 + 32);
          }

          v81 = v80;
          MEMORY[0x1E12AC640]();
          v82 = *((v165 & 0xFFFFFFFFFFFFFF8) + 0x18);
          if (*((v165 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v82 >> 1)
          {
            OUTLINED_FUNCTION_45(v82);
            sub_1DD336830();
          }

          v6 = v2[30];
          v83 = v2[23];
          OUTLINED_FUNCTION_85_0();
          sub_1DD336860();
          v84 = v81;
          v85 = sub_1DD335CB0();
          v86 = sub_1DD336930();

          if (os_log_type_enabled(v85, v86))
          {
            v87 = swift_slowAlloc();
            v166[0] = swift_slowAlloc();
            *v87 = 136315394;
            v88 = sub_1DD336010();
            v90 = v1;
            v91 = sub_1DD27DBF0(v88, v89, v166);

            *(v87 + 4) = v91;
            *(v87 + 12) = 2080;
            sub_1DD335ED0();
            v92 = sub_1DD335700();
            v6 = v93;

            v94 = v92;
            v1 = v90;
            v78 = v159;
            v95 = sub_1DD27DBF0(v94, v6, v166);

            *(v87 + 14) = v95;
            _os_log_impl(&dword_1DD27A000, v85, v86, "Pulled on-screen content %s of type %s successfully", v87, 0x16u);
            swift_arrayDestroy();
            v2 = v161;
            OUTLINED_FUNCTION_54();
            OUTLINED_FUNCTION_28_1();
          }

          else
          {
          }

          ++v79;
        }

        while (v1 != v79);

        v4 = v152;
      }

LABEL_54:
      v38 = 0;
      v54 = v157;
    }

    while (v157 != v154);
  }

  v102 = v2[23];

  v103 = *(v102 + OBJC_IVAR____TtC23SiriReferenceResolution18RRContextKitPuller_title + 8);
  if (v103)
  {
    v163 = *(v102 + OBJC_IVAR____TtC23SiriReferenceResolution18RRContextKitPuller_title);
    v104 = v2[23];
    v6 = OBJC_IVAR____TtC23SiriReferenceResolution18RRContextKitPuller_wikiPersons;
    swift_beginAccess();
    v105 = *(v6 + v104);
    if (sub_1DD287354())
    {
      v158 = v6;
      v160 = v104;
      v106 = *(v6 + v104);
      v107 = sub_1DD287354();

      v108 = 0;
      v38 = MEMORY[0x1E69E6158];
      while (1)
      {
        if (v107 == v108)
        {

          v2 = v161;
          v38 = v158;
          v6 = v160;
          goto LABEL_72;
        }

        if ((v106 & 0xC000000000000001) != 0)
        {
          v109 = MEMORY[0x1E12ACA60](v108, v106);
        }

        else
        {
          v56 = *((v106 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v108 >= v56)
          {
            goto LABEL_95;
          }

          v109 = *(v106 + 8 * v108 + 32);
        }

        v110 = v109;
        if (__OFADD__(v108, 1))
        {
          goto LABEL_94;
        }

        v161[14] = v163;
        v161[15] = v103;
        v111 = sub_1DD336010();
        v6 = v112;
        v161[16] = v111;
        v161[17] = v112;
        sub_1DD2B3FD4();
        v113 = sub_1DD336B00();

        if (v113)
        {
          break;
        }

        ++v108;
      }

      v38 = v158;
      v6 = v160;
      v114 = *(v158 + v160);
      *(v158 + v160) = MEMORY[0x1E69E7CC0];

      MEMORY[0x1E12AC640](v115);
      v56 = *((v165 & 0xFFFFFFFFFFFFFF8) + 0x18);
      if (*((v165 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v56 >> 1)
      {
        goto LABEL_97;
      }

      goto LABEL_71;
    }
  }

LABEL_74:
  v119 = v2[23];
  v120 = OBJC_IVAR____TtC23SiriReferenceResolution18RRContextKitPuller_rrVisualGroups;
  OUTLINED_FUNCTION_106();
  swift_beginAccess();
  v164 = v119;
  v121 = *(v119 + v120);
  v122 = *(v121 + 64);
  v123 = *(v121 + 32);
  OUTLINED_FUNCTION_62_0();
  v126 = v125 & v124;
  v128 = (63 - v127) >> 6;

  v129 = 0;
  while (v126)
  {
    v56 = v126;
LABEL_81:
    v126 = (v56 - 1) & v56;
    v131 = *(v164 + v120);
    if (*(v131 + 16))
    {
      v132 = (*(v121 + 48) + ((v129 << 10) | (16 * __clz(__rbit64(v56)))));
      v133 = *v132;
      v6 = v132[1];

      v38 = sub_1DD28EFFC();
      v135 = v134;

      if (v135)
      {
        v6 = *(*(v131 + 56) + 8 * v38);
        sub_1DD335860();

        sub_1DD335E00();
      }

      else
      {
      }
    }
  }

  while (1)
  {
    v130 = v129 + 1;
    if (__OFADD__(v129, 1))
    {
      __break(1u);
      goto LABEL_92;
    }

    if (v130 >= v128)
    {
      break;
    }

    v56 = *(v121 + 64 + 8 * v130);
    ++v129;
    if (v56)
    {
      v129 = v130;
      goto LABEL_81;
    }
  }

  v2 = v161;
  v136 = v161[30];
  v137 = v161[23];

  v138 = sub_1DD335CB0();
  v139 = sub_1DD336940();
  if (OUTLINED_FUNCTION_51(v139))
  {
    v140 = OUTLINED_FUNCTION_69();
    OUTLINED_FUNCTION_122(v140);
    OUTLINED_FUNCTION_37(&dword_1DD27A000, v141, v142, "Exiting RRContextKitPuller...");
    OUTLINED_FUNCTION_52_0();
  }

  v143 = v161[31];
  v144 = v161[29];

  v36 = v165;
LABEL_88:
  sub_1DD336A30();
  v145 = qword_1EE02A238;
  OUTLINED_FUNCTION_55_0();
  sub_1DD335C80();

  v146 = v2[26];
  (*(v2[28] + 8))(v2[29], v2[27]);

  v147 = v2[1];

  return v147(v36);
}

uint64_t sub_1DD2B0EE4()
{
  v1 = *(v0 + 272);
  v2 = *(v0 + 256);
  v3 = *(v0 + 208);
  v4 = *(v0 + 192);

  *(v0 + 152) = v1;
  v5 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD6568, &unk_1DD3397B0);
  OUTLINED_FUNCTION_47_1();
  if (swift_dynamicCast())
  {
    v6 = *(v0 + 240);
    v7 = *(v0 + 184);

    v8 = sub_1DD335CB0();
    v9 = sub_1DD336950();
    if (OUTLINED_FUNCTION_34(v9))
    {
      v10 = OUTLINED_FUNCTION_50();
      *v10 = 134217984;
      *(v10 + 4) = 0x3FF0000000000000;
      OUTLINED_FUNCTION_13_1();
      _os_log_impl(v11, v12, v13, v14, v15, 0xCu);
      OUTLINED_FUNCTION_28_1();
    }

    v16 = *(v0 + 248);
    v18 = *(v0 + 200);
    v17 = *(v0 + 208);
    v19 = *(v0 + 192);

    sub_1DD2B3F80();
    OUTLINED_FUNCTION_68_0();
    swift_willThrow();

    v20 = *(v18 + 8);
    v21 = OUTLINED_FUNCTION_47_1();
    v22(v21);
  }

  else
  {

    v23 = *(v0 + 272);
  }

  v25 = *(v0 + 224);
  v24 = *(v0 + 232);
  v27 = *(v0 + 208);
  v26 = *(v0 + 216);
  sub_1DD336A30();
  v28 = qword_1EE02A238;
  OUTLINED_FUNCTION_55_0();
  sub_1DD335C80();

  (*(v25 + 8))(v24, v26);

  v29 = *(v0 + 8);

  return v29();
}

uint64_t sub_1DD2B10E0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD62A0, &unk_1DD338D70);
  v1 = *(*(v0 - 8) + 64);
  v2 = MEMORY[0x1EEE9AC00](v0 - 8);
  v4 = &aBlock - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &aBlock - v5;
  v7 = swift_allocObject();
  *(v7 + 16) = 0;
  v8 = [BiomeLibrary() App];
  swift_unknownObjectRelease();
  v9 = [v8 InFocus];
  swift_unknownObjectRelease();
  v10 = sub_1DD334830();
  __swift_storeEnumTagSinglePayload(v6, 1, 1, v10);
  __swift_storeEnumTagSinglePayload(v4, 1, 1, v10);
  v11 = objc_allocWithZone(MEMORY[0x1E698F2D0]);
  v12 = sub_1DD29AC8C(v6, v4, 1, 1, 0);
  v13 = [v9 publisherWithOptions_];

  v28 = nullsub_1;
  v29 = 0;
  aBlock = MEMORY[0x1E69E9820];
  v25 = 1107296256;
  v26 = sub_1DD2E5EF4;
  v27 = &block_descriptor_68;
  v14 = _Block_copy(&aBlock);
  v28 = sub_1DD2B4784;
  v29 = v7;
  aBlock = MEMORY[0x1E69E9820];
  v25 = 1107296256;
  v26 = sub_1DD2E5EF4;
  v27 = &block_descriptor_71;
  v15 = _Block_copy(&aBlock);
  sub_1DD335860();

  v16 = [v13 sinkWithCompletion:v14 receiveInput:v15];
  _Block_release(v15);
  _Block_release(v14);

  swift_beginAccess();
  v17 = *(v7 + 16);
  if (!v17)
  {

LABEL_10:
    v22 = 0;
    return v22 & 1;
  }

  v18 = v17;
  v19 = sub_1DD2E5CEC(v18);
  if (!v20)
  {

    goto LABEL_10;
  }

  if (v19 == 0x6C7070612E6D6F63 && v20 == 0xEE00656D6F482E65)
  {
    v22 = 1;
  }

  else
  {
    v22 = sub_1DD336E00();
  }

  return v22 & 1;
}

uint64_t sub_1DD2B1458(uint64_t a1, uint64_t a2)
{
  *(v2 + 152) = a1;
  *(v2 + 160) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1DD2B1478, 0, 0);
}

uint64_t sub_1DD2B1478()
{
  OUTLINED_FUNCTION_48();
  v1 = v0[20];
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_1DD2B1568;
  swift_continuation_init();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD6770, &qword_1DD339720);
  OUTLINED_FUNCTION_27_1(v2);
  v0[11] = 1107296256;
  OUTLINED_FUNCTION_26_1();
  [v1 executeWithReply_];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1DD2B1568()
{
  OUTLINED_FUNCTION_4();
  v7 = *v0;
  v1 = *v0;
  OUTLINED_FUNCTION_0();
  *v2 = v1;
  OUTLINED_FUNCTION_30_0();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1DD2B1638(uint64_t a1, void *a2)
{
  v3 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  v4 = a2;

  return sub_1DD2B1684(v3, a2);
}

id sub_1DD2B16A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v73 = a7;
  v70 = a4;
  v71 = a5;
  v72 = a1;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD62A0, &unk_1DD338D70);
  OUTLINED_FUNCTION_36(v14);
  v16 = *(v15 + 64);
  OUTLINED_FUNCTION_28();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_30();
  v69 = v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD6348, &unk_1DD338E20);
  OUTLINED_FUNCTION_36(v19);
  v21 = *(v20 + 64);
  OUTLINED_FUNCTION_28();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_30();
  v68 = v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD6350, &unk_1DD3396F0);
  OUTLINED_FUNCTION_36(v24);
  v26 = *(v25 + 64);
  OUTLINED_FUNCTION_28();
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v63 - v28;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD6608, &qword_1DD339310);
  OUTLINED_FUNCTION_36(v30);
  v32 = *(v31 + 64);
  OUTLINED_FUNCTION_28();
  MEMORY[0x1EEE9AC00](v33);
  v35 = &v63 - v34;
  v36 = sub_1DD336220();
  v37 = OUTLINED_FUNCTION_1_0(v36);
  v39 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_10();
  v42 = v40 - v41;
  MEMORY[0x1EEE9AC00](v43);
  OUTLINED_FUNCTION_32_1();
  v47 = 0;
  if (a2 && a3)
  {
    v64 = v45;
    v65 = v46;
    v66 = v44;
    v67 = a8;
    sub_1DD27F164(v70, v35, &qword_1ECCD6608, &qword_1DD339310);
    sub_1DD27F164(a9, v29, &qword_1ECCD6350, &unk_1DD3396F0);
    swift_retain_n();

    v70 = a6;

    v47 = v71;
    OUTLINED_FUNCTION_84_0();
    sub_1DD2AF45C(v48);
    sub_1DD27D80C(0, &qword_1EE027548, 0x1E69971F8);
    sub_1DD3361D0();
    if (v9)
    {
    }

    else
    {
      v50 = v64;
      v49 = v65;
      v51 = v66;
      (*(v65 + 32))(v64, v42, v66);
      sub_1DD336240();
      v52 = v68;
      OUTLINED_FUNCTION_24();
      __swift_storeEnumTagSinglePayload(v53, v54, v55, v56);
      v47 = sub_1DD336190();
      sub_1DD296084(v52, &qword_1ECCD6348, &unk_1DD338E20);
      v57 = sub_1DD334830();
      OUTLINED_FUNCTION_1(v57);
      (*(v58 + 16))(v69, v67, v57);
      OUTLINED_FUNCTION_66_0();
      __swift_storeEnumTagSinglePayload(v59, v60, v61, v57);
      sub_1DD335EF0();

      (*(v49 + 8))(v50, v51);
    }
  }

  return v47;
}

uint64_t sub_1DD2B1A90()
{
  OUTLINED_FUNCTION_4();
  v1[10] = v0;
  v2 = sub_1DD3357C0();
  v1[11] = v2;
  OUTLINED_FUNCTION_69_0(v2);
  v1[12] = v3;
  v5 = *(v4 + 64) + 15;
  v1[13] = swift_task_alloc();
  OUTLINED_FUNCTION_30_0();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1DD2B1B40()
{
  OUTLINED_FUNCTION_48();
  v1 = v0[10];
  v0[14] = OBJC_IVAR____TtC23SiriReferenceResolution18RRContextKitPuller_logger;
  v2 = sub_1DD335CB0();
  v3 = sub_1DD336940();
  if (OUTLINED_FUNCTION_34(v3))
  {
    v4 = OUTLINED_FUNCTION_69();
    OUTLINED_FUNCTION_68(v4);
    OUTLINED_FUNCTION_13_1();
    _os_log_impl(v5, v6, v7, v8, v9, 2u);
    OUTLINED_FUNCTION_28_1();
  }

  v10 = v0[10];

  v11 = [*(v10 + OBJC_IVAR____TtC23SiriReferenceResolution18RRContextKitPuller_client) newRequest];
  v0[15] = v11;
  [v11 setIncludeStructuredExtractionResults_];
  [v11 setIncludePartsOfSpeech_];
  OUTLINED_FUNCTION_60();
  v12 = swift_allocObject();
  v0[16] = v12;
  *(v12 + 16) = v11;
  v13 = *(MEMORY[0x1E69D3548] + 4);
  v14 = v11;
  v15 = swift_task_alloc();
  v0[17] = v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD6718, &unk_1DD339640);
  *v15 = v0;
  v15[1] = sub_1DD2B1CD0;
  v17.n128_u64[0] = 1.0;

  return MEMORY[0x1EEE40F70](v0 + 7, &unk_1DD339660, v12, v16, v17);
}

uint64_t sub_1DD2B1CD0()
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_81();
  v3 = v2;
  v4 = *(v2 + 136);
  v5 = *v1;
  OUTLINED_FUNCTION_0();
  *v6 = v5;
  *(v3 + 144) = v0;

  if (!v0)
  {
    v7 = *(v3 + 128);
  }

  OUTLINED_FUNCTION_30_0();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

void sub_1DD2B1DD8()
{
  v66 = v0;
  v1 = v0;
  v2 = v0[7];
  if (!v2)
  {
    goto LABEL_10;
  }

  v3 = v2;
  v4 = sub_1DD2B3E78(v3);
  if (!v4)
  {

LABEL_10:
    v25 = v0[10] + v0[14];
    v26 = sub_1DD335CB0();
    v27 = sub_1DD336930();
    if (OUTLINED_FUNCTION_34(v27))
    {
      v28 = OUTLINED_FUNCTION_69();
      OUTLINED_FUNCTION_68(v28);
      OUTLINED_FUNCTION_13_1();
      _os_log_impl(v29, v30, v31, v32, v33, 2u);
      OUTLINED_FUNCTION_28_1();
    }

    v34 = v0[15];

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD6730, &qword_1DD339668);
    v35 = sub_1DD336530();

    goto LABEL_13;
  }

  v5 = v4;
  v64 = v3;
  v6 = [v3 error];
  if (v6)
  {
    v7 = v6;
    v8 = v0[14];
    v9 = v1[10];

    v10 = v7;
    v11 = sub_1DD335CB0();
    v12 = sub_1DD336950();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = OUTLINED_FUNCTION_50();
      v14 = swift_slowAlloc();
      v65 = v14;
      *v13 = 136315138;
      swift_getErrorValue();
      v16 = v1[2];
      v15 = v1[3];
      v17 = v1[4];
      v18 = sub_1DD336E40();
      v20 = sub_1DD27DBF0(v18, v19, &v65);

      *(v13 + 4) = v20;
      _os_log_impl(&dword_1DD27A000, v11, v12, "getOnScreenContent: failed to pull on-screen content from ContextKit, error: %s", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v14);
      OUTLINED_FUNCTION_54();
      OUTLINED_FUNCTION_54();
    }

    v21 = v1[15];
    sub_1DD2B4028();
    OUTLINED_FUNCTION_68_0();
    *v22 = 0;
    swift_willThrow();

    v23 = v1[13];

    v24 = v1[1];

    v24();
    return;
  }

  v38 = 0;
  v63 = v0 + 5;
  v39 = *(v5 + 64);
  v40 = *(v5 + 32);
  OUTLINED_FUNCTION_62_0();
  v44 = v43 & v42;
  v60 = (63 - v45) >> 6;
  v46 = v0[18];
  v35 = MEMORY[0x1E69E7CC8];
  v61 = v41;
  v62 = v5;
LABEL_17:
  v47 = v38;
  if (!v44)
  {
    goto LABEL_19;
  }

  do
  {
    v38 = v47;
LABEL_22:
    v48 = __clz(__rbit64(v44)) | (v38 << 6);
    v49 = (*(v5 + 48) + 16 * v48);
    v51 = *v49;
    v50 = v49[1];
    v52 = *(*(v5 + 56) + 8 * v48);
    v44 &= v44 - 1;
    v1[5] = *v49;
    v1[6] = v50;
    v53 = v1;
    v54 = swift_task_alloc();
    *(v54 + 16) = v63;

    v55 = sub_1DD2A8F28(sub_1DD2B4218, v54, &unk_1F589A800);

    if (v55)
    {
      swift_isUniquelyReferenced_nonNull_native();
      v65 = v35;
      sub_1DD2B36FC(v52, v51, v50);

      v1 = v53;
      v41 = v61;
      v5 = v62;
      goto LABEL_17;
    }

    v47 = v38;
    v1 = v53;
    v41 = v61;
    v5 = v62;
  }

  while (v44);
  while (1)
  {
LABEL_19:
    v38 = v47 + 1;
    if (__OFADD__(v47, 1))
    {
      __break(1u);
      return;
    }

    if (v38 >= v60)
    {
      break;
    }

    v44 = *(v41 + 8 * v38);
    ++v47;
    if (v44)
    {
      goto LABEL_22;
    }
  }

  v56 = sub_1DD2B3E20(v64);
  v57 = v1[15];
  if (v56)
  {
    sub_1DD2B260C(v56);
    v59 = v58;
    swift_isUniquelyReferenced_nonNull_native();
    v65 = v35;
    sub_1DD2B36FC(v59, 0x6449656C646E7562, 0xE900000000000073);
  }

LABEL_13:
  v36 = v1[13];

  v37 = v1[1];

  v37(v35);
}

uint64_t sub_1DD2B2278()
{
  v1 = *(v0 + 144);
  v2 = *(v0 + 128);
  v3 = *(v0 + 104);
  v4 = *(v0 + 88);

  *(v0 + 64) = v1;
  v5 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD6568, &unk_1DD3397B0);
  OUTLINED_FUNCTION_47_1();
  if (swift_dynamicCast())
  {
    v6 = *(v0 + 112);
    v7 = *(v0 + 80);

    v8 = sub_1DD335CB0();
    v9 = sub_1DD336950();
    if (OUTLINED_FUNCTION_34(v9))
    {
      v10 = OUTLINED_FUNCTION_50();
      *v10 = 134217984;
      *(v10 + 4) = 0x3FF0000000000000;
      OUTLINED_FUNCTION_13_1();
      _os_log_impl(v11, v12, v13, v14, v15, 0xCu);
      OUTLINED_FUNCTION_28_1();
    }

    v16 = *(v0 + 120);
    v18 = *(v0 + 96);
    v17 = *(v0 + 104);
    v19 = *(v0 + 88);

    sub_1DD2B3F80();
    OUTLINED_FUNCTION_68_0();
    swift_willThrow();

    v20 = *(v18 + 8);
    v21 = OUTLINED_FUNCTION_47_1();
    v22(v21);
  }

  else
  {

    v23 = *(v0 + 144);
  }

  v24 = *(v0 + 104);

  v25 = *(v0 + 8);

  return v25();
}

uint64_t sub_1DD2B240C(uint64_t a1, uint64_t a2)
{
  *(v2 + 152) = a1;
  *(v2 + 160) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1DD2B242C, 0, 0);
}

uint64_t sub_1DD2B242C()
{
  OUTLINED_FUNCTION_48();
  v1 = v0[20];
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_1DD2B251C;
  swift_continuation_init();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD6770, &qword_1DD339720);
  OUTLINED_FUNCTION_27_1(v2);
  v0[11] = 1107296256;
  OUTLINED_FUNCTION_26_1();
  [v1 executeWithReply_];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1DD2B251C()
{
  OUTLINED_FUNCTION_4();
  v7 = *v0;
  v1 = *v0;
  OUTLINED_FUNCTION_0();
  *v2 = v1;
  OUTLINED_FUNCTION_30_0();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

void sub_1DD2B260C(uint64_t a1)
{
  MEMORY[0x1E12AC760](*(a1 + 16), MEMORY[0x1E69E6158], MEMORY[0x1E69E6168]);
  OUTLINED_FUNCTION_109_0();
  while (1)
  {
    if (v2 == v1)
    {

      return;
    }

    if (v1 >= *(a1 + 16))
    {
      break;
    }

    ++v1;
    v6 = *(v3 - 1);
    v5 = *v3;

    OUTLINED_FUNCTION_78_0();
    sub_1DD2E05A8();

    v3 += 2;
  }

  __break(1u);
}

void sub_1DD2B26BC()
{
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_83_2();
  v4 = sub_1DD335C10();
  v5 = OUTLINED_FUNCTION_1_0(v4);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_10();
  v10 = v8 - v9;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_105_0();
  sub_1DD295558(&qword_1EE027A08, MEMORY[0x1E69A8FA8]);
  OUTLINED_FUNCTION_91_0();
  v12 = v0[2];
  if (v12)
  {
    OUTLINED_FUNCTION_50_1();
    do
    {
      v2(v10, v1, v4);
      sub_1DD2E06B8();
      v13 = *v0;
      v14 = OUTLINED_FUNCTION_85_0();
      v15(v14);
      v1 += v3;
      --v12;
    }

    while (v12);
  }

  else
  {
    OUTLINED_FUNCTION_32_0();
  }

  OUTLINED_FUNCTION_24_1();
}

void sub_1DD2B2818(uint64_t a1)
{
  v5 = *(a1 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD65F0, &qword_1DD3392F0);
  sub_1DD2B466C();
  OUTLINED_FUNCTION_91_0();
  OUTLINED_FUNCTION_109_0();
  while (1)
  {
    if (v2 == v1)
    {

      return;
    }

    if (v1 >= *(a1 + 16))
    {
      break;
    }

    ++v1;
    v7 = *(v3 - 1);
    v6 = *v3;

    OUTLINED_FUNCTION_78_0();
    sub_1DD2E0A68();

    v3 += 2;
  }

  __break(1u);
}

uint64_t sub_1DD2B28D4()
{
  v1 = v0;
  sub_1DD335ED0();
  v2 = sub_1DD335700();
  v4 = v3;

  v5 = OBJC_IVAR____TtC23SiriReferenceResolution18RRContextKitPuller_rrVisualGroups;
  OUTLINED_FUNCTION_106();
  swift_beginAccess();
  v6 = *(v0 + v5);

  v7 = OUTLINED_FUNCTION_85_0();
  v9 = sub_1DD2AAEBC(v7, v8, v6);

  if (!v9)
  {
    v10 = sub_1DD335E20();
    OUTLINED_FUNCTION_59(v10);
    swift_allocObject();
    v9 = sub_1DD335E10();
  }

  swift_beginAccess();
  v11 = *(v1 + v5);
  swift_isUniquelyReferenced_nonNull_native();
  v17 = *(v1 + v5);
  sub_1DD2B35C0(v9, v2, v4);
  *(v1 + v5) = v17;
  swift_endAccess();

  v12 = OUTLINED_FUNCTION_85_0();
  v14 = sub_1DD2AAEBC(v12, v13, v17);

  if (v14)
  {
    sub_1DD335FB0();
    if ((v16 & 1) == 0)
    {
      sub_1DD335DF0();
    }
  }

  return result;
}

uint64_t sub_1DD2B2A30()
{
  sub_1DD335ED0();
  v0 = sub_1DD335700();
  v2 = v1;

  OUTLINED_FUNCTION_46();
  v4 = v0 == 0xD000000000000014 && v3 == v2;
  if (v4 || (OUTLINED_FUNCTION_40_1() & 1) != 0)
  {
    goto LABEL_31;
  }

  OUTLINED_FUNCTION_46();
  v6 = v0 == 0xD000000000000012 && v5 == v2;
  if (v6 || (OUTLINED_FUNCTION_40_1() & 1) != 0 || ((OUTLINED_FUNCTION_46(), v0 == 0xD000000000000013) ? (v8 = v7 == v2) : (v8 = 0), v8 || (OUTLINED_FUNCTION_40_1() & 1) != 0 || (v0 == 0x505F6E6F6D6D6F63 ? (v9 = v2 == 0xED00006E6F737265) : (v9 = 0), v9 || (OUTLINED_FUNCTION_40_1() & 1) != 0 || ((OUTLINED_FUNCTION_46(), v0 == 0xD000000000000014) ? (v11 = v10 == v2) : (v11 = 0), v11 || (OUTLINED_FUNCTION_40_1() & 1) != 0 || (v0 == 0x555F6E6F6D6D6F63 ? (v12 = v2 == 0xEA00000000006972) : (v12 = 0), v12)))))
  {
LABEL_31:

    return 1;
  }

  else
  {
    OUTLINED_FUNCTION_40_1();
    OUTLINED_FUNCTION_32_0();

    return v0 & 1;
  }
}

void sub_1DD2B2B98(void *a1, uint64_t a2)
{
  v3 = [a1 eventBody];
  if (v3)
  {
    v5 = v3;
    if ([v3 starting])
    {
      swift_beginAccess();
      v4 = *(a2 + 16);
      *(a2 + 16) = v5;
    }

    else
    {
    }
  }
}

uint64_t RRContextKitPuller.deinit()
{
  v1 = OBJC_IVAR____TtC23SiriReferenceResolution18RRContextKitPuller_logger;
  v2 = sub_1DD335CD0();
  OUTLINED_FUNCTION_1(v2);
  (*(v3 + 8))(v0 + v1);

  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC23SiriReferenceResolution18RRContextKitPuller_featureFlags));
  v4 = *(v0 + OBJC_IVAR____TtC23SiriReferenceResolution18RRContextKitPuller_wikiPersons);

  v5 = *(v0 + OBJC_IVAR____TtC23SiriReferenceResolution18RRContextKitPuller_title + 8);

  v6 = *(v0 + OBJC_IVAR____TtC23SiriReferenceResolution18RRContextKitPuller_rrVisualGroups);

  return v0;
}

uint64_t RRContextKitPuller.__deallocating_deinit()
{
  RRContextKitPuller.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t sub_1DD2B2D38()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1DD2B2DD0;

  return sub_1DD2AFC9C();
}

uint64_t sub_1DD2B2DD0()
{
  OUTLINED_FUNCTION_4();
  v3 = v2;
  OUTLINED_FUNCTION_81();
  v5 = *(v4 + 16);
  v6 = *v1;
  OUTLINED_FUNCTION_0();
  *v7 = v6;

  v9 = *(v6 + 8);
  if (!v0)
  {
    v8 = v3;
  }

  return v9(v8);
}

uint64_t type metadata accessor for RRContextKitPuller()
{
  result = qword_1EE028ED8;
  if (!qword_1EE028ED8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1DD2B2F44()
{
  v1 = sub_1DD334830();
  OUTLINED_FUNCTION_36(v1);
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  v7 = v0[6];
  v8 = v0[7];
  v9 = v0[8];
  v10 = v0 + ((*(v2 + 80) + 72) & ~*(v2 + 80));

  sub_1DD2AA01C(v3, v4, v5, v6, v7, v8, v9, v10);
}

unint64_t sub_1DD2B2FB0(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  sub_1DD335D60();
  sub_1DD295558(&qword_1ECCD6740, MEMORY[0x1E69D2838]);
  v5 = sub_1DD336550();

  return sub_1DD2B30D0(a1, v5);
}

unint64_t sub_1DD2B3048(uint64_t a1)
{
  v3 = *(v1 + 40);
  v4 = sub_1DD336EB0();

  return sub_1DD2B328C(a1, v4);
}

unint64_t sub_1DD2B308C(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  v5 = sub_1DD336A90();

  return sub_1DD2B32EC(a1, v5);
}

unint64_t sub_1DD2B30D0(uint64_t a1, uint64_t a2)
{
  v14 = a1;
  v4 = sub_1DD335D60();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = v2 + 64;
  v13 = ~(-1 << *(v2 + 32));
  for (i = a2 & v13; ((1 << i) & *(v15 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v13)
  {
    (*(v5 + 16))(v8, *(v2 + 48) + *(v5 + 72) * i, v4);
    sub_1DD295558(&qword_1ECCD6748, MEMORY[0x1E69D2838]);
    v10 = sub_1DD336590();
    (*(v5 + 8))(v8, v4);
    if (v10)
    {
      break;
    }
  }

  return i;
}

unint64_t sub_1DD2B328C(uint64_t a1, uint64_t a2)
{
  v3 = ~(-1 << *(v2 + 32));
    ;
  }

  return i;
}

unint64_t sub_1DD2B32EC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = v2 + 64;
  v5 = ~(-1 << *(v2 + 32));
  for (i = a2 & v5; ((1 << i) & *(v4 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v5)
  {
    sub_1DD27D80C(0, &qword_1ECCD6758, 0x1E69AC7E0);
    v7 = *(*(v3 + 48) + 8 * i);
    v8 = sub_1DD336AA0();

    if (v8)
    {
      break;
    }
  }

  return i;
}

uint64_t sub_1DD2B33C4(uint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v1 = v3;
  if (result)
  {
    if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
    {
      v5 = v3 & 0xFFFFFFFFFFFFFF8;
      if (a1 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }

LABEL_10:
    sub_1DD336B60();
    goto LABEL_11;
  }

  if (v3 < 0 || (v3 & 0x4000000000000000) != 0)
  {
    goto LABEL_10;
  }

  v5 = v3 & 0xFFFFFFFFFFFFFF8;
LABEL_9:
  v6 = *(v5 + 16);
LABEL_11:
  result = sub_1DD336C20();
  *v1 = result;
  return result;
}

uint64_t sub_1DD2B3464(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  sub_1DD28EFFC();
  OUTLINED_FUNCTION_72_0();
  if (__OFADD__(v7, v8))
  {
    __break(1u);
    goto LABEL_13;
  }

  v9 = v5;
  v10 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD6760, &qword_1DD339710);
  if ((sub_1DD336CC0() & 1) == 0)
  {
    goto LABEL_5;
  }

  v11 = *v2;
  OUTLINED_FUNCTION_113();
  v12 = sub_1DD28EFFC();
  if ((v10 & 1) != (v13 & 1))
  {
LABEL_13:
    result = sub_1DD336E30();
    __break(1u);
    return result;
  }

  v9 = v12;
LABEL_5:
  if (v10)
  {
    v14 = *(*v2 + 56);
    v15 = sub_1DD336350();
    v16 = OUTLINED_FUNCTION_1(v15);
    v18 = *(v17 + 40);
    v19 = v16;
    v20 = v14 + *(v17 + 72) * v9;

    return v18(v20, a1, v19);
  }

  else
  {
    OUTLINED_FUNCTION_78_0();
    sub_1DD2B39C0(v22, v23, v24, a1, v25);
  }
}

uint64_t sub_1DD2B35C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_1DD28EFFC();
  if (__OFADD__(*(v8 + 16), (v10 & 1) == 0))
  {
    __break(1u);
    goto LABEL_13;
  }

  v11 = v9;
  v12 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD6738, &qword_1DD3396E8);
  if ((sub_1DD336CC0() & 1) == 0)
  {
    goto LABEL_5;
  }

  v13 = *v4;
  v14 = sub_1DD28EFFC();
  if ((v12 & 1) != (v15 & 1))
  {
LABEL_13:
    result = sub_1DD336E30();
    __break(1u);
    return result;
  }

  v11 = v14;
LABEL_5:
  v16 = *v4;
  if (v12)
  {
    v17 = v16[7];
    v18 = *(v17 + 8 * v11);
    *(v17 + 8 * v11) = a1;
  }

  else
  {
    sub_1DD2B3A70(v11, a2, a3, a1, v16);
  }
}

uint64_t sub_1DD2B36FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_1DD28EFFC();
  if (__OFADD__(*(v8 + 16), (v10 & 1) == 0))
  {
    __break(1u);
    goto LABEL_13;
  }

  v11 = v9;
  v12 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD6768, &qword_1DD339718);
  if ((sub_1DD336CC0() & 1) == 0)
  {
    goto LABEL_5;
  }

  v13 = *v4;
  v14 = sub_1DD28EFFC();
  if ((v12 & 1) != (v15 & 1))
  {
LABEL_13:
    result = sub_1DD336E30();
    __break(1u);
    return result;
  }

  v11 = v14;
LABEL_5:
  v16 = *v4;
  if (v12)
  {
    v17 = v16[7];
    v18 = *(v17 + 8 * v11);
    *(v17 + 8 * v11) = a1;
  }

  else
  {
    sub_1DD2B3A70(v11, a2, a3, a1, v16);
  }
}

void sub_1DD2B3838()
{
  OUTLINED_FUNCTION_23_0();
  v2 = v1;
  v4 = v3;
  OUTLINED_FUNCTION_83_2();
  v5 = sub_1DD335D60();
  v6 = OUTLINED_FUNCTION_1_0(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_12();
  v13 = v12 - v11;
  v14 = *v1;
  sub_1DD2B2FB0(v4);
  OUTLINED_FUNCTION_72_0();
  if (__OFADD__(v17, v18))
  {
    __break(1u);
    goto LABEL_11;
  }

  v19 = v15;
  v20 = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD6750, &unk_1DD339700);
  if ((sub_1DD336CC0() & 1) == 0)
  {
    goto LABEL_5;
  }

  v21 = *v2;
  v22 = sub_1DD2B2FB0(v4);
  if ((v20 & 1) != (v23 & 1))
  {
LABEL_11:
    sub_1DD336E30();
    __break(1u);
    return;
  }

  v19 = v22;
LABEL_5:
  v24 = *v2;
  if (v20)
  {
    v25 = v24[7];
    v26 = *(v25 + 8 * v19);
    *(v25 + 8 * v19) = v0;
    OUTLINED_FUNCTION_24_1();
  }

  else
  {
    (*(v8 + 16))(v13, v4, v5);
    sub_1DD2B3AB8(v19, v13, v0, v24);
    OUTLINED_FUNCTION_24_1();
  }
}

uint64_t sub_1DD2B39C0(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v8 = (a5[6] + 16 * a1);
  *v8 = a2;
  v8[1] = a3;
  v9 = a5[7];
  v10 = sub_1DD336350();
  result = (*(*(v10 - 8) + 32))(v9 + *(*(v10 - 8) + 72) * a1, a4, v10);
  v12 = a5[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v14;
  }

  return result;
}

unint64_t sub_1DD2B3A70(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  *(a5[7] + 8 * result) = a4;
  v6 = a5[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v8;
  }

  return result;
}

uint64_t sub_1DD2B3AB8(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_1DD335D60();
  result = (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  *(a4[7] + 8 * a1) = a3;
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

uint64_t sub_1DD2B3B70(void *a1)
{
  v1 = [a1 tags];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1DD336900();

  return v3;
}

uint64_t sub_1DD2B3BD0(void *a1)
{
  v1 = [a1 topicId];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1DD3365D0();

  return v3;
}

uint64_t sub_1DD2B3C34(void *a1)
{
  v1 = [a1 extractedAddressComponents];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  type metadata accessor for NSTextCheckingKey(0);
  sub_1DD295558(&qword_1ECCD63A8, type metadata accessor for NSTextCheckingKey);
  v3 = sub_1DD336510();

  return v3;
}

uint64_t sub_1DD2B3CD8(void *a1)
{
  v2 = [a1 donorBundleIdentifiers];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_1DD336810();

  return v3;
}

uint64_t sub_1DD2B3D3C(void *a1)
{
  v2 = [a1 results];

  if (!v2)
  {
    return 0;
  }

  sub_1DD27D80C(0, &qword_1EE027548, 0x1E69971F8);
  v3 = sub_1DD336810();

  return v3;
}

uint64_t sub_1DD2B3DB4(void *a1, SEL *a2)
{
  v2 = [a1 *a2];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  sub_1DD27D80C(0, &qword_1EE027548, 0x1E69971F8);
  v4 = sub_1DD336810();

  return v4;
}

uint64_t sub_1DD2B3E20(void *a1)
{
  v1 = [a1 donorBundleIdentifiers];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1DD336810();

  return v3;
}

uint64_t sub_1DD2B3E78(void *a1)
{
  v1 = [a1 partsOfSpeechToTexts];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD6730, &qword_1DD339668);
  v3 = sub_1DD336510();

  return v3;
}

uint64_t sub_1DD2B3EF4()
{
  OUTLINED_FUNCTION_4();
  v1 = *(v0 + 16);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_114_0(v2);
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_116_0(v3);

  return sub_1DD2B1458(v5, v6);
}

unint64_t sub_1DD2B3F80()
{
  result = qword_1EE0278D0;
  if (!qword_1EE0278D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0278D0);
  }

  return result;
}

unint64_t sub_1DD2B3FD4()
{
  result = qword_1ECCD6720;
  if (!qword_1ECCD6720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCD6720);
  }

  return result;
}

unint64_t sub_1DD2B4028()
{
  result = qword_1ECCD6728;
  if (!qword_1ECCD6728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCD6728);
  }

  return result;
}

uint64_t sub_1DD2B407C()
{
  OUTLINED_FUNCTION_4();
  v1 = *(v0 + 16);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_114_0(v2);
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_116_0(v3);

  return sub_1DD2B240C(v5, v6);
}

uint64_t sub_1DD2B4108()
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_81();
  v2 = *(v1 + 16);
  v3 = *v0;
  OUTLINED_FUNCTION_0();
  *v4 = v3;

  v5 = *(v3 + 8);

  return v5();
}

uint64_t sub_1DD2B4240()
{
  result = sub_1DD335CD0();
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

uint64_t dispatch thunk of RRContextKitPuller.pull(at:)()
{
  OUTLINED_FUNCTION_48();
  v2 = v1;
  v3 = *(*v0 + 256);
  v9 = (v3 + *v3);
  v4 = v3[1];
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_114_0(v5);
  *v6 = v7;
  v6[1] = sub_1DD2B47A4;

  return v9(v2);
}

uint64_t dispatch thunk of RRContextKitPuller.getOnScreenContent()()
{
  OUTLINED_FUNCTION_48();
  v1 = *(*v0 + 272);
  v7 = (v1 + *v1);
  v2 = v1[1];
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_114_0(v3);
  *v4 = v5;
  v4[1] = sub_1DD2B4580;

  return v7();
}

uint64_t sub_1DD2B4580()
{
  OUTLINED_FUNCTION_4();
  v2 = v1;
  OUTLINED_FUNCTION_81();
  v4 = *(v3 + 16);
  v5 = *v0;
  OUTLINED_FUNCTION_0();
  *v6 = v5;

  v7 = *(v5 + 8);

  return v7(v2);
}

unint64_t sub_1DD2B466C()
{
  result = qword_1EE0275A8;
  if (!qword_1EE0275A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECCD65F0, &qword_1DD3392F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0275A8);
  }

  return result;
}

uint64_t sub_1DD2B4714(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD6608, &qword_1DD339310);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t OUTLINED_FUNCTION_38_1()
{

  return swift_once();
}

void OUTLINED_FUNCTION_91_0()
{

  JUMPOUT(0x1E12AC760);
}

uint64_t OUTLINED_FUNCTION_92_0(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v5 = *(v3 - 240);

  return sub_1DD296084(v5, a2, a3);
}

id OUTLINED_FUNCTION_124_0(uint64_t a1, const char *a2)
{
  v6 = *(v4 - 432);

  return [v6 a2];
}

void *OUTLINED_FUNCTION_128_0()
{

  return __swift_project_boxed_opaque_existential_1((v1 - 144), v0);
}

void OUTLINED_FUNCTION_129_0()
{
}

uint64_t sub_1DD2B4928@<X0>(void *a1@<X8>)
{
  v3 = OBJC_IVAR____TtC23SiriReferenceResolution27RRVoiceShortcutClientPuller____lazy_storage___contactStore;
  swift_beginAccess();
  sub_1DD27F164(v1 + v3, &v6, &qword_1ECCD62B8, "de");
  if (v7)
  {
    return sub_1DD289CE4(&v6, a1);
  }

  sub_1DD296084(&v6, &qword_1ECCD62B8, "de");
  v5 = [objc_allocWithZone(MEMORY[0x1E695CE18]) init];
  a1[3] = sub_1DD2BAF8C();
  a1[4] = &protocol witness table for CNContactStore;
  *a1 = v5;
  sub_1DD28191C(a1, &v6);
  swift_beginAccess();
  sub_1DD29B6C8(&v6, v1 + v3);
  return swift_endAccess();
}

uint64_t RRVoiceShortcutClientPuller.__allocating_init()()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  RRVoiceShortcutClientPuller.init()();
  return v3;
}

uint64_t RRVoiceShortcutClientPuller.init()()
{
  v1 = sub_1DD335CD0();
  v2 = OUTLINED_FUNCTION_1_0(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_12();
  v9 = v8 - v7;
  v10 = v0 + OBJC_IVAR____TtC23SiriReferenceResolution27RRVoiceShortcutClientPuller____lazy_storage___contactStore;
  *v10 = 0u;
  *(v10 + 16) = 0u;
  *(v10 + 32) = 0;
  v11 = [objc_opt_self() sharedService];
  *(v0 + OBJC_IVAR____TtC23SiriReferenceResolution27RRVoiceShortcutClientPuller_onScreenContentService) = v11;
  type metadata accessor for RRVoiceShortcutClientPuller();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD67A0, &unk_1DD339750);
  sub_1DD336630();
  sub_1DD335CC0();
  (*(v4 + 32))(v0 + OBJC_IVAR____TtC23SiriReferenceResolution27RRVoiceShortcutClientPuller_logger, v9, v1);
  return v0;
}

uint64_t type metadata accessor for RRVoiceShortcutClientPuller()
{
  result = qword_1EE028B28;
  if (!qword_1EE028B28)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1DD2B4C04(uint64_t a1, void (*a2)(void *, uint64_t), uint64_t a3)
{
  v221 = a3;
  v222 = a2;
  *&v216 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD62A0, &unk_1DD338D70);
  OUTLINED_FUNCTION_36(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_28();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_50_0(v8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD67A8, &unk_1DD339760);
  OUTLINED_FUNCTION_36(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_28();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_6_1(v13);
  v212 = sub_1DD335DA0();
  v14 = OUTLINED_FUNCTION_1_0(v212);
  v210 = v15;
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_6_1(v19 - v18);
  v214 = sub_1DD334720();
  v20 = OUTLINED_FUNCTION_1_0(v214);
  v213 = v21;
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_17();
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_6_1(v25);
  v228 = sub_1DD3363A0();
  v26 = OUTLINED_FUNCTION_1_0(v228);
  v226 = v27;
  v29 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_12();
  v32 = (v31 - v30);
  v33 = sub_1DD336420();
  v34 = OUTLINED_FUNCTION_1_0(v33);
  p_isa = v35;
  v225 = v34;
  v37 = *(v36 + 64);
  v38 = MEMORY[0x1EEE9AC00](v34);
  v40 = v208 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_32_1();
  v223 = v41;
  v42 = sub_1DD335CA0();
  v43 = OUTLINED_FUNCTION_1_0(v42);
  v219 = v44;
  v220 = v43;
  v46 = *(v45 + 64);
  MEMORY[0x1EEE9AC00](v43);
  OUTLINED_FUNCTION_12();
  if (qword_1EE027618 != -1)
  {
    OUTLINED_FUNCTION_37_2();
  }

  v47 = qword_1EE02A1D8;
  sub_1DD335C90();
  sub_1DD336A40();
  v48 = qword_1EE02A1D8;
  v49 = MEMORY[0x1E69E7CC0];
  OUTLINED_FUNCTION_5();
  v218 = v50;
  sub_1DD335C70();

  v227 = v3;
  v229 = OBJC_IVAR____TtC23SiriReferenceResolution27RRVoiceShortcutClientPuller_logger;
  v51 = sub_1DD335CB0();
  v52 = sub_1DD336940();
  if (os_log_type_enabled(v51, v52))
  {
    v53 = swift_slowAlloc();
    *v53 = 0;
    _os_log_impl(&dword_1DD27A000, v51, v52, "Entering RRVoiceShortcutClientPuller...", v53, 2u);
    OUTLINED_FUNCTION_54();
  }

  v54 = dispatch_semaphore_create(0);
  v55 = swift_allocObject();
  *(v55 + 16) = 0;
  v56 = (v55 + 16);
  v235 = v49;
  v57 = v227;
  v58 = *&v227[OBJC_IVAR____TtC23SiriReferenceResolution27RRVoiceShortcutClientPuller_onScreenContentService];
  v59 = objc_allocWithZone(MEMORY[0x1E69E0C10]);
  v60 = v58;
  v61 = [v59 init];
  v62 = swift_allocObject();
  v62[2] = v54;
  v62[3] = v57;
  v62[4] = v55;
  v234[0] = sub_1DD2BABE8;
  v234[1] = v62;
  aBlock = MEMORY[0x1E69E9820];
  v231 = 1107296256;
  v232 = sub_1DD2B5F58;
  v233 = &block_descriptor_1;
  v63 = _Block_copy(&aBlock);
  v64 = v54;
  OUTLINED_FUNCTION_83_3();
  sub_1DD335860();
  v217 = v55;
  sub_1DD335860();

  [v60 getOnScreenContentWithOptions:v61 completionHandler:v63];
  _Block_release(v63);

  sub_1DD336410();
  *v32 = 500;
  v65 = v226;
  (*(v226 + 104))(v32, *MEMORY[0x1E69E7F38], v228);
  v66 = v223;
  MEMORY[0x1E12AC2C0](v40, v32);
  v67 = *(v65 + 8);
  v68 = OUTLINED_FUNCTION_19_0();
  v69(v68);
  v70 = v225;
  v71 = p_isa[1];
  v71(v40, v225);
  p_isa = &v54->isa;
  LOBYTE(v58) = sub_1DD336A50();
  v71(v66, v70);
  if (v58)
  {
    v72 = OUTLINED_FUNCTION_69_1();
    v73 = sub_1DD336950();
    if (os_log_type_enabled(v72, v73))
    {
      v74 = OUTLINED_FUNCTION_50();
      *v74 = 134217984;
      *(v74 + 4) = 500;
      OUTLINED_FUNCTION_55();
      _os_log_impl(v75, v76, v77, v78, v79, 0xCu);
      OUTLINED_FUNCTION_28_1();
    }

    sub_1DD2B3F80();
    v80 = OUTLINED_FUNCTION_68_0();
    v222(v80, 1);

    goto LABEL_63;
  }

  swift_beginAccess();
  if (!*v56)
  {
    goto LABEL_59;
  }

  v81 = *v56;
  v82 = [v81 applicationBundleIdentifier];
  v83 = sub_1DD3365D0();
  v85 = v84;

  v86 = [v81 file];
  v223 = v81;
  if (v86)
  {
    v87 = v86;
    v88 = [v86 fileURL];
    if (v88)
    {
      v89 = v88;
      v90 = v215;
      sub_1DD334700();

      v91 = sub_1DD2BAB88(v81, &selRef_photoAssetIdentifier);
      v93 = v92;
      v94 = OUTLINED_FUNCTION_67_1(v90, v91, v92);

      v95 = sub_1DD287354();
      v97 = v234;
      v208[0] = v87;
      if (!v95)
      {
        v102 = MEMORY[0x1E69E7CC0];
LABEL_46:

        OUTLINED_FUNCTION_21(&v239);
        v164 = &v241;
LABEL_49:
        v165 = *(v164 - 32);
        v166 = &v240;
        goto LABEL_50;
      }

      v98 = v95;
      if (v95 >= 1)
      {
        v99 = 0;
        v226 = v94 & 0xC000000000000001;
        *&v96 = 136315394;
        v216 = v96;
        do
        {
          if (v226)
          {
            v100 = MEMORY[0x1E12ACA60](v99, v94);
          }

          else
          {
            v100 = *(v94 + 8 * v99 + 32);
          }

          v101 = v100;
          OUTLINED_FUNCTION_100_0();
          if (*((v235 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v235 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_1DD336830();
          }

          OUTLINED_FUNCTION_112();
          sub_1DD336860();
          v102 = v235;
          v103 = v93;
          v104 = OUTLINED_FUNCTION_69_1();
          v105 = sub_1DD336930();

          if (os_log_type_enabled(v104, v105))
          {
            v93 = OUTLINED_FUNCTION_50_2();
            v106 = OUTLINED_FUNCTION_49_1();
            *v93 = OUTLINED_FUNCTION_59_0(v106).n128_u32[0];
            v107 = sub_1DD336010();
            v109 = OUTLINED_FUNCTION_97_1(v107, v108);

            *(v93 + 4) = v109;
            *(v93 + 12) = 2080;
            sub_1DD335ED0();
            v110 = sub_1DD335700();
            v111 = v98;
            v112 = v94;
            v114 = v113;

            v115 = sub_1DD27DBF0(v110, v114, &aBlock);
            v94 = v112;
            v98 = v111;

            *(v93 + 14) = v115;
            _os_log_impl(&dword_1DD27A000, v104, v105, "Pulled file %s of type %s successfully", v93, 0x16u);
            OUTLINED_FUNCTION_94_1();
            v102 = v228;
            OUTLINED_FUNCTION_54();
            OUTLINED_FUNCTION_54();
          }

          else
          {
          }

          ++v99;
        }

        while (v98 != v99);
        v81 = v223;
        goto LABEL_46;
      }

      __break(1u);
      goto LABEL_73;
    }
  }

  v116 = [v81 URL];
  if (v116)
  {
    v117 = v116;
    sub_1DD334700();

    OUTLINED_FUNCTION_30_0();
    v93 = OUTLINED_FUNCTION_67_1(v118, v119, v120);

    v121 = sub_1DD287354();
    if (v121)
    {
      v123 = v121;
      if (v121 < 1)
      {
LABEL_73:
        __break(1u);
LABEL_74:
        OUTLINED_FUNCTION_14_3(v97);
        sub_1DD336830();
LABEL_43:
        OUTLINED_FUNCTION_19_0();
        sub_1DD336860();
        v102 = v235;
        v154 = v93;
        v155 = OUTLINED_FUNCTION_69_1();
        v156 = sub_1DD336930();

        if (os_log_type_enabled(v155, v156))
        {
          v157 = OUTLINED_FUNCTION_50_2();
          aBlock = OUTLINED_FUNCTION_49_1();
          *v157 = 136315394;
          v158 = sub_1DD336010();
          OUTLINED_FUNCTION_97_1(v158, v159);

          v160 = OUTLINED_FUNCTION_92_1();
          v102 = sub_1DD335700();

          OUTLINED_FUNCTION_89_1();
          OUTLINED_FUNCTION_83_3();

          *(v157 + 14) = v160;
          OUTLINED_FUNCTION_91_1(&dword_1DD27A000, v161, v162, "Pulled contact %s of type %s successfully");
          swift_arrayDestroy();
          OUTLINED_FUNCTION_54();
          OUTLINED_FUNCTION_54();
        }

        else
        {
        }

        goto LABEL_60;
      }

      v124 = 0;
      v226 = v93 & 0xC000000000000001;
      *&v122 = 136315394;
      v216 = v122;
      do
      {
        if (v226)
        {
          v125 = OUTLINED_FUNCTION_112();
          v126 = MEMORY[0x1E12ACA60](v125);
        }

        else
        {
          v126 = *(v93 + 8 * v124 + 32);
        }

        v127 = v126;
        MEMORY[0x1E12AC640]();
        if (*((v235 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v235 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1DD336830();
        }

        sub_1DD336860();
        v102 = v235;
        v128 = v127;
        v129 = OUTLINED_FUNCTION_69_1();
        v130 = sub_1DD336930();

        if (os_log_type_enabled(v129, v130))
        {
          v131 = OUTLINED_FUNCTION_50_2();
          v132 = OUTLINED_FUNCTION_49_1();
          *v131 = OUTLINED_FUNCTION_59_0(v132).n128_u32[0];
          v133 = sub_1DD336010();
          v135 = OUTLINED_FUNCTION_97_1(v133, v134);

          *(v131 + 4) = v135;
          *(v131 + 12) = 2080;
          sub_1DD335ED0();
          v136 = sub_1DD335700();
          v137 = v123;
          v138 = v93;
          v140 = v139;

          v141 = sub_1DD27DBF0(v136, v140, &aBlock);
          v93 = v138;
          v123 = v137;

          *(v131 + 14) = v141;
          _os_log_impl(&dword_1DD27A000, v129, v130, "Pulled url %s of type %s successfully", v131, 0x16u);
          OUTLINED_FUNCTION_94_1();
          v102 = v228;
          OUTLINED_FUNCTION_54();
          v81 = v223;
          OUTLINED_FUNCTION_54();
        }

        else
        {
        }

        ++v124;
      }

      while (v123 != v124);
    }

    else
    {
      v102 = MEMORY[0x1E69E7CC0];
    }

    OUTLINED_FUNCTION_21(&v239);
    v164 = &v238;
    goto LABEL_49;
  }

  sub_1DD2BAB88(v81, &selRef_contactIdentifier);
  if (v142)
  {
    v93 = v142;
    sub_1DD2B4928(&aBlock);
    v143 = v234[0];
    __swift_project_boxed_opaque_existential_1(&aBlock, v233);
    v144 = *(v143 + 8);
    v145 = OUTLINED_FUNCTION_112();
    v147 = v146(v145);
    v149 = v148;
    __swift_destroy_boxed_opaque_existential_1(&aBlock);
    v150 = OUTLINED_FUNCTION_112();
    sub_1DD2B9FA8(v150, v151, v147, v149, v83, v85, v216);
    OUTLINED_FUNCTION_124();

    if (v57)
    {
      v152 = v57;
      OUTLINED_FUNCTION_100_0();
      OUTLINED_FUNCTION_13_2(v235);
      if (!v153)
      {
        goto LABEL_43;
      }

      goto LABEL_74;
    }

    goto LABEL_58;
  }

  v168 = sub_1DD2BAB88(v81, &selRef_chatRegistryContinuityKey);
  if (!v169 || (aBlock = v168, v231 = v169, sub_1DD2B3FD4(), sub_1DD336AF0(), v171 = v170, , !v171))
  {

LABEL_58:

    goto LABEL_59;
  }

  v172 = v211;
  sub_1DD335D90();
  v173 = OUTLINED_FUNCTION_64();
  v174 = v212;
  OUTLINED_FUNCTION_51_2(v173, v175, v212);
  if (v176)
  {

    sub_1DD296084(v172, &qword_1ECCD67A8, &unk_1DD339760);
LABEL_59:
    v102 = MEMORY[0x1E69E7CC0];
    goto LABEL_60;
  }

  v187 = v172;
  v188 = v210;
  v189 = v209;
  (*(v210 + 32))(v209, v187, v174);
  v190 = sub_1DD335D70();
  if (!v190)
  {
    (*(v188 + 8))(v189, v174);
    goto LABEL_58;
  }

  v191 = v190;
  v192 = sub_1DD334830();
  OUTLINED_FUNCTION_1(v192);
  (*(v193 + 16))(v208[1], v216, v192);
  OUTLINED_FUNCTION_66_0();
  __swift_storeEnumTagSinglePayload(v194, v195, v196, v192);
  sub_1DD335EF0();
  v197 = v191;
  OUTLINED_FUNCTION_100_0();
  OUTLINED_FUNCTION_13_2(v235);
  if (v153)
  {
    OUTLINED_FUNCTION_14_3(v198);
    sub_1DD336830();
  }

  OUTLINED_FUNCTION_19_0();
  sub_1DD336860();
  v102 = v235;
  v199 = v192;
  v200 = OUTLINED_FUNCTION_69_1();
  v201 = sub_1DD336930();

  if (!os_log_type_enabled(v200, v201))
  {

    OUTLINED_FUNCTION_21(v236);
    v165 = v209;
    v167 = v174;
    goto LABEL_51;
  }

  v202 = OUTLINED_FUNCTION_50_2();
  aBlock = OUTLINED_FUNCTION_49_1();
  *v202 = 136315394;
  v203 = sub_1DD336010();
  OUTLINED_FUNCTION_97_1(v203, v204);

  v205 = OUTLINED_FUNCTION_92_1();
  v102 = sub_1DD335700();

  OUTLINED_FUNCTION_89_1();
  OUTLINED_FUNCTION_83_3();

  *(v202 + 14) = v205;
  OUTLINED_FUNCTION_91_1(&dword_1DD27A000, v206, v207, "Pulled recipient %s of type %s successfully");
  swift_arrayDestroy();
  OUTLINED_FUNCTION_54();
  OUTLINED_FUNCTION_54();

  OUTLINED_FUNCTION_21(v236);
  v165 = v209;
  v166 = &v237;
LABEL_50:
  v167 = *(v166 - 32);
LABEL_51:
  v163(v165, v167);
LABEL_60:
  v222(v102, 0);

  v177 = OUTLINED_FUNCTION_69_1();
  v178 = sub_1DD336940();
  if (os_log_type_enabled(v177, v178))
  {
    *swift_slowAlloc() = 0;
    OUTLINED_FUNCTION_55();
    _os_log_impl(v179, v180, v181, v182, v183, 2u);
    OUTLINED_FUNCTION_28_1();
  }

LABEL_63:
  sub_1DD336A30();
  v184 = qword_1EE02A1D8;
  v185 = v218;
  sub_1DD335C80();

  return (*(v219 + 8))(v185, v220);
}

uint64_t sub_1DD2B5D58(void *a1, id a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a2)
  {
    v6 = a2;
    v7 = sub_1DD335CB0();
    v8 = sub_1DD336950();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v22 = v10;
      *v9 = 136315138;
      swift_getErrorValue();
      v11 = sub_1DD336E40();
      v13 = sub_1DD27DBF0(v11, v12, &v22);

      *(v9 + 4) = v13;
      _os_log_impl(&dword_1DD27A000, v7, v8, "Failed to pull on-screen content from WFOnScreenContentService, error: %s", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v10);
      MEMORY[0x1E12ADA30](v10, -1, -1);
      MEMORY[0x1E12ADA30](v9, -1, -1);
    }

    else
    {
    }
  }

  else
  {
    v16 = sub_1DD335CB0();
    v17 = sub_1DD336940();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_1DD27A000, v16, v17, "Pulled on-screen content from WFOnScreenContentService successfully", v18, 2u);
      MEMORY[0x1E12ADA30](v18, -1, -1);
    }

    swift_beginAccess();
    v19 = *(a5 + 16);
    *(a5 + 16) = a1;
    v20 = a1;
  }

  return sub_1DD336A60();
}

void sub_1DD2B5F58(uint64_t a1, void *a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  sub_1DD335860();
  v8 = a2;
  v7 = a3;
  v6(a2, a3);
}

uint64_t sub_1DD2B5FE4()
{
  OUTLINED_FUNCTION_4();
  v1[11] = v2;
  v1[12] = v0;
  v3 = sub_1DD3357C0();
  v1[13] = v3;
  OUTLINED_FUNCTION_69_0(v3);
  v1[14] = v4;
  v6 = *(v5 + 64);
  v1[15] = OUTLINED_FUNCTION_71();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD62A0, &unk_1DD338D70);
  OUTLINED_FUNCTION_36(v7);
  v9 = *(v8 + 64);
  v1[16] = OUTLINED_FUNCTION_71();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD67A8, &unk_1DD339760);
  OUTLINED_FUNCTION_36(v10);
  v12 = *(v11 + 64);
  v1[17] = OUTLINED_FUNCTION_71();
  v13 = sub_1DD335DA0();
  v1[18] = v13;
  OUTLINED_FUNCTION_69_0(v13);
  v1[19] = v14;
  v16 = *(v15 + 64);
  v1[20] = OUTLINED_FUNCTION_71();
  v17 = sub_1DD334720();
  v1[21] = v17;
  OUTLINED_FUNCTION_69_0(v17);
  v1[22] = v18;
  v20 = *(v19 + 64) + 15;
  v1[23] = swift_task_alloc();
  v1[24] = swift_task_alloc();
  v21 = sub_1DD335CA0();
  v1[25] = v21;
  OUTLINED_FUNCTION_69_0(v21);
  v1[26] = v22;
  v24 = *(v23 + 64);
  v1[27] = OUTLINED_FUNCTION_71();
  OUTLINED_FUNCTION_30_0();

  return MEMORY[0x1EEE6DFA0](v25, v26, v27);
}

uint64_t sub_1DD2B61DC()
{
  if (qword_1EE027618 != -1)
  {
    OUTLINED_FUNCTION_37_2();
  }

  v1 = v0[27];
  v2 = v0[12];
  v3 = qword_1EE02A1D8;
  sub_1DD335C90();
  sub_1DD336A40();
  v4 = qword_1EE02A1D8;
  OUTLINED_FUNCTION_5();
  sub_1DD335C70();

  v0[28] = OBJC_IVAR____TtC23SiriReferenceResolution27RRVoiceShortcutClientPuller_logger;
  v5 = sub_1DD335CB0();
  v6 = sub_1DD336940();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_1DD27A000, v5, v6, "Entering RRVoiceShortcutClientPuller...", v7, 2u);
    OUTLINED_FUNCTION_28_1();
  }

  v8 = v0[12];

  v9 = *(MEMORY[0x1E69D3548] + 4);
  sub_1DD335860();
  v10 = swift_task_alloc();
  v0[29] = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD67B0, &qword_1DD3397A8);
  *v10 = v0;
  v10[1] = sub_1DD2B63CC;
  v12 = v0[12];
  v13.n128_u64[0] = 0.5;

  return MEMORY[0x1EEE40F70](v0 + 9, &unk_1DD3397A0, v12, v11, v13);
}

uint64_t sub_1DD2B63CC()
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_81();
  v3 = v2;
  v4 = *(v2 + 232);
  v5 = *v1;
  OUTLINED_FUNCTION_0();
  *v6 = v5;
  *(v3 + 240) = v0;

  if (!v0)
  {
    v7 = *(v3 + 96);
  }

  OUTLINED_FUNCTION_30_0();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1DD2B64D4()
{
  v191 = v0;
  v1 = *(v0 + 72);
  v189 = MEMORY[0x1E69E7CC0];
  if (!v1)
  {
    v187 = MEMORY[0x1E69E7CC0];
    goto LABEL_43;
  }

  v2 = v1;
  v3 = [v2 applicationBundleIdentifier];
  v4 = sub_1DD3365D0();
  v6 = v5;

  v7 = [v2 file];
  v176 = v2;
  if (v7)
  {
    v8 = v7;
    v9 = [v7 fileURL];
    if (v9)
    {
      v10 = v9;
      v175 = v8;
      v11 = v188[24];
      v13 = v188[11];
      v12 = v188[12];
      sub_1DD334700();

      v14 = sub_1DD2BAB88(v2, &selRef_photoAssetIdentifier);
      v16 = sub_1DD2B79A0(v11, v14, v15, v4, v6, v13);

      v17 = sub_1DD287354();
      if (!v17)
      {
        v187 = MEMORY[0x1E69E7CC0];
LABEL_39:
        v116 = v188[24];
        v117 = v188[21];
        v118 = v188[22];

LABEL_42:

        (*(v118 + 8))(v116, v117);
        goto LABEL_43;
      }

      v20 = v17;
      if (v17 >= 1)
      {
        v21 = 0;
        v22 = v16 & 0xC000000000000001;
        *&v19 = 136315394;
        v179 = v19;
        v182 = v16 & 0xC000000000000001;
        v184 = v17;
        do
        {
          if (v22)
          {
            v23 = MEMORY[0x1E12ACA60](v21, v16);
          }

          else
          {
            v23 = *(v16 + 8 * v21 + 32);
          }

          v24 = v23;
          OUTLINED_FUNCTION_99_1();
          OUTLINED_FUNCTION_13_2(v189);
          if (v26)
          {
            OUTLINED_FUNCTION_14_3(v25);
            OUTLINED_FUNCTION_98_1();
          }

          v27 = v188[28];
          v28 = v188[12];
          OUTLINED_FUNCTION_19_0();
          sub_1DD336860();
          v29 = OUTLINED_FUNCTION_95_1();
          v30 = sub_1DD335CB0();
          v31 = sub_1DD336930();

          if (os_log_type_enabled(v30, v31))
          {
            v32 = OUTLINED_FUNCTION_50_2();
            v190 = OUTLINED_FUNCTION_49_1();
            *v32 = v179;
            v33 = sub_1DD336010();
            v41 = OUTLINED_FUNCTION_96_0(v33, v34, v35, v36, v37, v38, v39, v40, v175, v176, v179, *(&v179 + 1));

            *(v32 + 4) = v41;
            *(v32 + 12) = 2080;
            v42 = sub_1DD335ED0();
            v43 = sub_1DD335700();
            v44 = v16;
            v46 = v45;

            sub_1DD27DBF0(v43, v46, &v190);
            OUTLINED_FUNCTION_124();
            v16 = v44;

            *(v32 + 14) = v42;
            _os_log_impl(&dword_1DD27A000, v30, v31, "Pulled file %s of type %s successfully", v32, 0x16u);
            swift_arrayDestroy();
            v20 = v184;
            OUTLINED_FUNCTION_54();
            v22 = v182;
            OUTLINED_FUNCTION_54();
          }

          else
          {
          }

          ++v21;
        }

        while (v20 != v21);
        goto LABEL_39;
      }

      __break(1u);
      goto LABEL_63;
    }
  }

  v47 = [v2 URL];
  if (v47)
  {
    v48 = v47;
    v49 = v188[23];
    v51 = v188[11];
    v50 = v188[12];
    sub_1DD334700();

    OUTLINED_FUNCTION_30_0();
    v55 = sub_1DD2B79A0(v52, v53, v54, v4, v6, v51);

    v56 = sub_1DD287354();
    if (v56)
    {
      v58 = v56;
      if (v56 < 1)
      {
LABEL_63:
        __break(1u);
LABEL_64:
        OUTLINED_FUNCTION_14_3(v18);
        OUTLINED_FUNCTION_98_1();
LABEL_36:
        v97 = v188[28];
        v98 = v188[12];
        OUTLINED_FUNCTION_19_0();
        sub_1DD336860();
        v99 = OUTLINED_FUNCTION_95_1();
        v100 = sub_1DD335CB0();
        v101 = sub_1DD336930();

        if (os_log_type_enabled(v100, v101))
        {
          v102 = OUTLINED_FUNCTION_50_2();
          v190 = OUTLINED_FUNCTION_49_1();
          *v102 = 136315394;
          v103 = sub_1DD336010();
          v111 = OUTLINED_FUNCTION_96_0(v103, v104, v105, v106, v107, v108, v109, v110, v175, v176, v178, v181);

          *(v102 + 4) = v111;
          *(v102 + 12) = 2080;
          sub_1DD335ED0();
          v112 = sub_1DD335700();
          v114 = v113;

          v115 = sub_1DD27DBF0(v112, v114, &v190);

          *(v102 + 14) = v115;
          _os_log_impl(&dword_1DD27A000, v100, v101, "Pulled contact %s of type %s successfully", v102, 0x16u);
          swift_arrayDestroy();
          OUTLINED_FUNCTION_54();
          OUTLINED_FUNCTION_54();
        }

        else
        {
        }

        goto LABEL_43;
      }

      v59 = 0;
      v185 = v55 & 0xC000000000000001;
      *&v57 = 136315394;
      v180 = v57;
      v183 = v56;
      do
      {
        if (v185)
        {
          v60 = MEMORY[0x1E12ACA60](v59, v55);
        }

        else
        {
          v60 = *(v55 + 8 * v59 + 32);
        }

        v61 = v60;
        OUTLINED_FUNCTION_99_1();
        OUTLINED_FUNCTION_13_2(v189);
        if (v26)
        {
          OUTLINED_FUNCTION_14_3(v62);
          OUTLINED_FUNCTION_98_1();
        }

        v63 = v188[28];
        v64 = v188[12];
        OUTLINED_FUNCTION_19_0();
        sub_1DD336860();
        v65 = OUTLINED_FUNCTION_95_1();
        v66 = sub_1DD335CB0();
        v67 = sub_1DD336930();

        if (os_log_type_enabled(v66, v67))
        {
          v68 = v55;
          v69 = OUTLINED_FUNCTION_50_2();
          v190 = OUTLINED_FUNCTION_49_1();
          *v69 = v180;
          v70 = sub_1DD336010();
          v78 = OUTLINED_FUNCTION_96_0(v70, v71, v72, v73, v74, v75, v76, v77, v175, v176, v180, *(&v180 + 1));

          *(v69 + 4) = v78;
          *(v69 + 12) = 2080;
          sub_1DD335ED0();
          v79 = sub_1DD335700();
          v81 = v80;

          v82 = sub_1DD27DBF0(v79, v81, &v190);

          *(v69 + 14) = v82;
          _os_log_impl(&dword_1DD27A000, v66, v67, "Pulled url %s of type %s successfully", v69, 0x16u);
          swift_arrayDestroy();
          OUTLINED_FUNCTION_28_1();
          v55 = v68;
          v58 = v183;
          OUTLINED_FUNCTION_54();
        }

        else
        {
        }

        ++v59;
      }

      while (v58 != v59);
    }

    else
    {
      v187 = MEMORY[0x1E69E7CC0];
    }

    v118 = v188[22];
    v116 = v188[23];
    v117 = v188[21];

    goto LABEL_42;
  }

  sub_1DD2BAB88(v2, &selRef_contactIdentifier);
  if (v83)
  {
    v85 = v188[11];
    v84 = v188[12];
    sub_1DD2B4928(v188 + 2);
    v86 = v188[6];
    __swift_project_boxed_opaque_existential_1(v188 + 2, v188[5]);
    v87 = *(v86 + 8);
    v88 = OUTLINED_FUNCTION_77_2();
    v90 = v89(v88);
    v92 = v91;
    __swift_destroy_boxed_opaque_existential_1(v188 + 2);
    v93 = OUTLINED_FUNCTION_77_2();
    v95 = sub_1DD2B9FA8(v93, v94, v90, v92, v4, v6, v85);

    if (v95)
    {
      v96 = v95;
      OUTLINED_FUNCTION_99_1();
      OUTLINED_FUNCTION_13_2(v189);
      if (!v26)
      {
        goto LABEL_36;
      }

      goto LABEL_64;
    }

LABEL_54:
    v187 = MEMORY[0x1E69E7CC0];
    goto LABEL_43;
  }

  v131 = sub_1DD2BAB88(v2, &selRef_chatRegistryContinuityKey);
  if (!v132 || (v133 = v2, v188[7] = v131, v188[8] = v132, sub_1DD2B3FD4(), sub_1DD336AF0(), v135 = v134, , !v135))
  {

    goto LABEL_54;
  }

  v137 = v188[17];
  v136 = v188[18];
  sub_1DD335D90();
  OUTLINED_FUNCTION_51_2(v137, 1, v136);
  if (v138)
  {
    v139 = v188[17];

    sub_1DD296084(v139, &qword_1ECCD67A8, &unk_1DD339760);
    goto LABEL_54;
  }

  (*(v188[19] + 32))(v188[20], v188[17], v188[18]);
  v140 = sub_1DD335D70();
  if (!v140)
  {
    (*(v188[19] + 8))(v188[20], v188[18]);

    goto LABEL_54;
  }

  v141 = v140;
  v142 = v188[16];
  v143 = v188[11];
  v144 = sub_1DD334830();
  OUTLINED_FUNCTION_1(v144);
  (*(v145 + 16))(v142, v143, v144);
  OUTLINED_FUNCTION_66_0();
  __swift_storeEnumTagSinglePayload(v146, v147, v148, v144);
  sub_1DD335EF0();
  v149 = v141;
  OUTLINED_FUNCTION_99_1();
  OUTLINED_FUNCTION_13_2(v189);
  if (v26)
  {
    OUTLINED_FUNCTION_14_3(v150);
    OUTLINED_FUNCTION_98_1();
  }

  v151 = v188[28];
  v152 = v188[12];
  OUTLINED_FUNCTION_19_0();
  sub_1DD336860();
  v153 = OUTLINED_FUNCTION_95_1();
  v154 = sub_1DD335CB0();
  v155 = sub_1DD336930();

  v156 = os_log_type_enabled(v154, v155);
  v158 = v188[19];
  v157 = v188[20];
  v159 = v188[18];
  if (v156)
  {
    v160 = OUTLINED_FUNCTION_50_2();
    v190 = OUTLINED_FUNCTION_49_1();
    *v160 = 136315394;
    v186 = v159;
    v161 = v157;
    v162 = sub_1DD336010();
    v170 = OUTLINED_FUNCTION_96_0(v162, v163, v164, v165, v166, v167, v168, v169, v175, v176, v178, v181);

    *(v160 + 4) = v170;
    *(v160 + 12) = 2080;
    v171 = sub_1DD335ED0();
    v172 = sub_1DD335700();
    v174 = v173;

    sub_1DD27DBF0(v172, v174, &v190);
    OUTLINED_FUNCTION_124();

    *(v160 + 14) = v171;
    _os_log_impl(&dword_1DD27A000, v154, v155, "Pulled recipient %s of type %s successfully", v160, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_54();
    OUTLINED_FUNCTION_54();

    (*(v158 + 8))(v161, v186);
  }

  else
  {

    (*(v158 + 8))(v157, v159);
  }

LABEL_43:
  v120 = v188[26];
  v119 = v188[27];
  v122 = v188[24];
  v121 = v188[25];
  v123 = v188[23];
  v124 = v188[20];
  v126 = v188[16];
  v125 = v188[17];
  v127 = v188[15];
  v128 = v188[12];
  sub_1DD2B726C();
  (*(v120 + 8))(v119, v121);

  v129 = v188[1];

  return v129(v187);
}

uint64_t sub_1DD2B7054()
{
  v1 = *(v0 + 240);
  v2 = *(v0 + 120);
  v3 = *(v0 + 96);
  v4 = *(v0 + 104);

  *(v0 + 80) = v1;
  v5 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD6568, &unk_1DD3397B0);
  if (swift_dynamicCast())
  {
    v6 = *(v0 + 224);
    v7 = *(v0 + 96);

    v8 = sub_1DD335CB0();
    v9 = sub_1DD336950();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = OUTLINED_FUNCTION_50();
      *v10 = 134217984;
      *(v10 + 4) = 0x3FE0000000000000;
      _os_log_impl(&dword_1DD27A000, v8, v9, "Pulling on-screen content from WFOnScreenContentService has timed out after %f seconds", v10, 0xCu);
      OUTLINED_FUNCTION_28_1();
    }

    v12 = *(v0 + 112);
    v11 = *(v0 + 120);
    v13 = *(v0 + 104);

    sub_1DD2B3F80();
    OUTLINED_FUNCTION_68_0();
    swift_willThrow();
    (*(v12 + 8))(v11, v13);
  }

  else
  {

    v26 = *(v0 + 240);
  }

  v15 = *(v0 + 208);
  v14 = *(v0 + 216);
  v17 = *(v0 + 192);
  v16 = *(v0 + 200);
  v18 = *(v0 + 184);
  v19 = *(v0 + 160);
  v21 = *(v0 + 128);
  v20 = *(v0 + 136);
  v22 = *(v0 + 120);
  v23 = *(v0 + 96);
  sub_1DD2B726C();
  (*(v15 + 8))(v14, v16);

  v24 = *(v0 + 8);

  return v24();
}

void sub_1DD2B726C()
{
  sub_1DD336A30();
  if (qword_1EE027618 != -1)
  {
    swift_once();
  }

  v0 = qword_1EE02A1D8;
  sub_1DD335C80();

  oslog = sub_1DD335CB0();
  v1 = sub_1DD336940();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&dword_1DD27A000, oslog, v1, "Exiting RRVoiceShortcutClientPuller...", v2, 2u);
    MEMORY[0x1E12ADA30](v2, -1, -1);
  }
}

uint64_t sub_1DD2B739C(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1DD2B73BC, 0, 0);
}

uint64_t sub_1DD2B73BC()
{
  OUTLINED_FUNCTION_4();
  v1 = *(MEMORY[0x1E69E88D0] + 4);
  v2 = swift_task_alloc();
  v0[4] = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD67B0, &qword_1DD3397A8);
  *v2 = v0;
  v2[1] = sub_1DD2B7498;
  v3 = v0[2];
  v4 = v0[3];
  OUTLINED_FUNCTION_30_0();

  return MEMORY[0x1EEE6DDE0]();
}

uint64_t sub_1DD2B7498()
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_81();
  v2 = *(v1 + 32);
  v3 = *v0;
  OUTLINED_FUNCTION_0();
  *v4 = v3;

  v5 = *(v3 + 8);

  return v5();
}

void sub_1DD2B7580(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD67B8, &qword_1DD339820);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = aBlock - v7;
  v9 = *(a2 + OBJC_IVAR____TtC23SiriReferenceResolution27RRVoiceShortcutClientPuller_onScreenContentService);
  v10 = objc_allocWithZone(MEMORY[0x1E69E0C10]);
  v11 = v9;
  v12 = [v10 init];
  (*(v5 + 16))(v8, a1, v4);
  v13 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = a2;
  (*(v5 + 32))(v14 + v13, v8, v4);
  aBlock[4] = sub_1DD2BAEB0;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1DD2B5F58;
  aBlock[3] = &block_descriptor_22;
  v15 = _Block_copy(aBlock);
  sub_1DD335860();

  [v11 getOnScreenContentWithOptions:v12 completionHandler:v15];
  _Block_release(v15);
}

void sub_1DD2B778C(void *a1, id a2)
{
  if (a2)
  {
    v3 = a2;
    v4 = sub_1DD335CB0();
    v5 = sub_1DD336950();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v16 = v7;
      *v6 = 136315138;
      swift_getErrorValue();
      v8 = sub_1DD336E40();
      v10 = sub_1DD27DBF0(v8, v9, &v16);

      *(v6 + 4) = v10;
      _os_log_impl(&dword_1DD27A000, v4, v5, "Failed to pull on-screen content from WFOnScreenContentService, error: %s", v6, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v7);
      MEMORY[0x1E12ADA30](v7, -1, -1);
      MEMORY[0x1E12ADA30](v6, -1, -1);
    }

    v16 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD67B8, &qword_1DD339820);
    sub_1DD3368B0();
  }

  else
  {
    v12 = sub_1DD335CB0();
    v13 = sub_1DD336940();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_1DD27A000, v12, v13, "Pulled on-screen content from WFOnScreenContentService successfully", v14, 2u);
      MEMORY[0x1E12ADA30](v14, -1, -1);
    }

    v15 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD67B8, &qword_1DD339820);
    sub_1DD3368B0();
  }
}

uint64_t sub_1DD2B79A0(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, char *a5, uint64_t a6)
{
  v468 = a6;
  v476 = a5;
  v477 = a4;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD67C0, &qword_1DD339828);
  OUTLINED_FUNCTION_36(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_28();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_6_1(v13);
  v463 = sub_1DD3359D0();
  v14 = OUTLINED_FUNCTION_1_0(v463);
  v459 = v15;
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_17();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_50_0(v19);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD6780, &unk_1DD339730);
  OUTLINED_FUNCTION_36(v20);
  v22 = *(v21 + 64);
  OUTLINED_FUNCTION_28();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_50_0(v24);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD6788, &unk_1DD33A920);
  OUTLINED_FUNCTION_36(v25);
  v27 = *(v26 + 64);
  OUTLINED_FUNCTION_28();
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_6_1(v29);
  v452 = sub_1DD334C10();
  v30 = OUTLINED_FUNCTION_1_0(v452);
  v451 = v31;
  v33 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_6_1(v35 - v34);
  v456 = sub_1DD334C50();
  v36 = OUTLINED_FUNCTION_1_0(v456);
  v455 = v37;
  v39 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_6_1(v41 - v40);
  v460 = sub_1DD3350F0();
  v42 = OUTLINED_FUNCTION_1_0(v460);
  v450 = v43;
  v45 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](v42);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_17();
  MEMORY[0x1EEE9AC00](v46);
  OUTLINED_FUNCTION_35();
  OUTLINED_FUNCTION_17();
  MEMORY[0x1EEE9AC00](v47);
  OUTLINED_FUNCTION_35();
  OUTLINED_FUNCTION_17();
  MEMORY[0x1EEE9AC00](v48);
  v50 = v441 - v49;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD67C8, &unk_1DD339830);
  v52 = OUTLINED_FUNCTION_36(v51);
  v54 = *(v53 + 64);
  MEMORY[0x1EEE9AC00](v52);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_17();
  MEMORY[0x1EEE9AC00](v55);
  OUTLINED_FUNCTION_35();
  OUTLINED_FUNCTION_17();
  MEMORY[0x1EEE9AC00](v56);
  OUTLINED_FUNCTION_35();
  OUTLINED_FUNCTION_17();
  MEMORY[0x1EEE9AC00](v57);
  OUTLINED_FUNCTION_35();
  OUTLINED_FUNCTION_17();
  MEMORY[0x1EEE9AC00](v58);
  OUTLINED_FUNCTION_35();
  OUTLINED_FUNCTION_17();
  MEMORY[0x1EEE9AC00](v59);
  OUTLINED_FUNCTION_35();
  OUTLINED_FUNCTION_17();
  v61 = MEMORY[0x1EEE9AC00](v60);
  v63 = v441 - v62;
  MEMORY[0x1EEE9AC00](v61);
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_50_0(v64);
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD67D0, &unk_1DD33A930);
  v66 = OUTLINED_FUNCTION_36(v65);
  v68 = *(v67 + 64);
  MEMORY[0x1EEE9AC00](v66);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_17();
  MEMORY[0x1EEE9AC00](v69);
  OUTLINED_FUNCTION_35();
  OUTLINED_FUNCTION_17();
  MEMORY[0x1EEE9AC00](v70);
  OUTLINED_FUNCTION_35();
  OUTLINED_FUNCTION_17();
  MEMORY[0x1EEE9AC00](v71);
  OUTLINED_FUNCTION_35();
  OUTLINED_FUNCTION_17();
  v73 = MEMORY[0x1EEE9AC00](v72);
  v75 = v441 - v74;
  MEMORY[0x1EEE9AC00](v73);
  OUTLINED_FUNCTION_35();
  OUTLINED_FUNCTION_17();
  v77 = MEMORY[0x1EEE9AC00](v76);
  v79 = v441 - v78;
  MEMORY[0x1EEE9AC00](v77);
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_6_1(v80);
  v466 = sub_1DD3350E0();
  v81 = OUTLINED_FUNCTION_1_0(v466);
  v465 = v82;
  v84 = *(v83 + 64);
  MEMORY[0x1EEE9AC00](v81);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_17();
  MEMORY[0x1EEE9AC00](v85);
  OUTLINED_FUNCTION_35();
  OUTLINED_FUNCTION_17();
  MEMORY[0x1EEE9AC00](v86);
  OUTLINED_FUNCTION_35();
  OUTLINED_FUNCTION_17();
  MEMORY[0x1EEE9AC00](v87);
  OUTLINED_FUNCTION_35();
  OUTLINED_FUNCTION_17();
  v89 = MEMORY[0x1EEE9AC00](v88);
  v91 = v441 - v90;
  v92 = MEMORY[0x1EEE9AC00](v89);
  v94 = v441 - v93;
  MEMORY[0x1EEE9AC00](v92);
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_6_1(v95);
  v96 = sub_1DD335130();
  v97 = OUTLINED_FUNCTION_1_0(v96);
  v478 = v98;
  v479 = v97;
  v100 = *(v99 + 64);
  MEMORY[0x1EEE9AC00](v97);
  OUTLINED_FUNCTION_12();
  v480 = v102 - v101;
  v489 = MEMORY[0x1E69E7CC0];
  v461 = a1;
  if (a3)
  {
    v103 = a3;
  }

  else
  {
    a2 = sub_1DD3346B0();
    v103 = v104;
  }

  v105 = a2;
  v475 = v103;
  v470 = sub_1DD2D340C(a2, v103);
  v474 = v106;
  v107 = *MEMORY[0x1E69D20F0];
  v108 = *(v478 + 104);
  v472 = v478 + 104;
  v471 = v108;
  v108(v480, v107, v479);
  OUTLINED_FUNCTION_86_1();
  v110 = v477;
  v111 = v476;
  v112 = v477 == 0xD000000000000016 && v109 == v476;
  if (v112 || (sub_1DD336E00() & 1) != 0)
  {
    v113 = OUTLINED_FUNCTION_3_3();
    v114(v113);
    v115 = *MEMORY[0x1E69D2100];
    v116 = OUTLINED_FUNCTION_1_3();
    v117(v116);
    OUTLINED_FUNCTION_29_1();
    OUTLINED_FUNCTION_84_1();
    sub_1DD2D34CC();
    v111 = v50;
    if (v50)
    {
LABEL_10:
      LODWORD(v91) = 0;
      OUTLINED_FUNCTION_26_2(MEMORY[0x1E69E7CC0]);
LABEL_11:
      OUTLINED_FUNCTION_28_2();
LABEL_13:
      v126 = v474;
      v482 = v111;
      v127 = v111;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD6568, &unk_1DD3397B0);
      if (swift_dynamicCast() && v488 == 1)
      {

        v128 = sub_1DD335CB0();
        v129 = sub_1DD336950();

        if (os_log_type_enabled(v128, v129))
        {
          v130 = OUTLINED_FUNCTION_50();
          v131 = swift_slowAlloc();
          v486 = v131;
          *v130 = 136315138;
          v132 = sub_1DD27DBF0(v470, v126, &v486);

          *(v130 + 4) = v132;
          _os_log_impl(&dword_1DD27A000, v128, v129, "Failed to convert %s to USO", v130, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v131);
          OUTLINED_FUNCTION_29_1();
          OUTLINED_FUNCTION_54();
          OUTLINED_FUNCTION_54();
        }

        else
        {
        }

        OUTLINED_FUNCTION_45_1();
      }

      else
      {

        v133 = OBJC_IVAR____TtC23SiriReferenceResolution27RRVoiceShortcutClientPuller_logger;
        v134 = v111;

        v135 = &v63[v133];
        v136 = sub_1DD335CB0();
        v137 = sub_1DD336950();

        if (os_log_type_enabled(v136, v137))
        {
          v138 = OUTLINED_FUNCTION_50_2();
          v482 = OUTLINED_FUNCTION_49_1();
          *v138 = 136315394;
          sub_1DD27DBF0(v470, v126, &v482);
          OUTLINED_FUNCTION_83_3();

          *(v138 + 4) = v135;
          *(v138 + 12) = 2080;
          swift_getErrorValue();
          v139 = sub_1DD336E40();
          v141 = sub_1DD27DBF0(v139, v140, &v482);

          *(v138 + 14) = v141;
          OUTLINED_FUNCTION_28_2();
          OUTLINED_FUNCTION_90_1(&dword_1DD27A000, v142, v143, "Failed to build RRAnnotatedEntity from %s, error: %s");
          swift_arrayDestroy();
          OUTLINED_FUNCTION_54();
          OUTLINED_FUNCTION_29_1();
          OUTLINED_FUNCTION_54();
        }

        else
        {
        }

        OUTLINED_FUNCTION_45_1();
      }

      goto LABEL_30;
    }

    OUTLINED_FUNCTION_16_0();
    v119 = *(v118 - 256);
    OUTLINED_FUNCTION_23_1();
    sub_1DD2BA624(v120, v121, v122, v123, v124, v125);
    OUTLINED_FUNCTION_28_2();
    goto LABEL_37;
  }

  v144 = v110 == 0x6C7070612E6D6F63 && v111 == 0xEE007370614D2E65;
  if (v144 || (OUTLINED_FUNCTION_68_1() & 1) != 0)
  {
    v145 = OUTLINED_FUNCTION_3_3();
    v146(v145);
    v147 = *MEMORY[0x1E69D2108];
    v148 = OUTLINED_FUNCTION_1_3();
    v149(v148);
    OUTLINED_FUNCTION_29_1();
    OUTLINED_FUNCTION_84_1();
    sub_1DD2D3520();
    v111 = v50;
    if (v50)
    {
      goto LABEL_10;
    }

    OUTLINED_FUNCTION_16_0();
    v151 = *(v150 - 256);
    OUTLINED_FUNCTION_23_1();
    sub_1DD2BA624(v152, v153, v154, v155, v156, v157);
    OUTLINED_FUNCTION_28_2();
LABEL_37:
    MEMORY[0x1E12AC640]();
    OUTLINED_FUNCTION_9_3();
    if (v327)
    {
      OUTLINED_FUNCTION_22_2();
    }

    sub_1DD336860();
    OUTLINED_FUNCTION_20_2();

    v91 = 0;
    OUTLINED_FUNCTION_45_1();
    goto LABEL_40;
  }

  v187 = v110 == 0x6C7070612E6D6F63 && v111 == 0xEE007377656E2E65;
  if (!v187 && (OUTLINED_FUNCTION_68_1() & 1) == 0)
  {
    v295 = v110 == 0x6C7070612E6D6F63 && v111 == 0xEC00000076742E65;
    if (!v295 && (OUTLINED_FUNCTION_68_1() & 1) == 0)
    {
      v91 = 0;
      OUTLINED_FUNCTION_26_2(MEMORY[0x1E69E7CC0]);
      OUTLINED_FUNCTION_28_2();
LABEL_40:
      v171 = v464;
      goto LABEL_41;
    }

    v296 = v479;
    v297 = v480;
    (*(v478 + 8))(v480, v479);
    v471(v297, *MEMORY[0x1E69D20B0], v296);
    v298 = *MEMORY[0x1E69D2010];
    v299 = v465;
    v300 = *(v465 + 104);
    v301 = OUTLINED_FUNCTION_57_0();
    v303 = *(v302 - 256);
    v304(v301);
    v305 = *(v299 + 16);
    v306 = OUTLINED_FUNCTION_52_1();
    v307(v306);
    OUTLINED_FUNCTION_66_0();
    __swift_storeEnumTagSinglePayload(v308, v309, v310, v303);
    v311 = OUTLINED_FUNCTION_17_3(&v477);
    OUTLINED_FUNCTION_85_1(v311, v313, v314, *(v312 - 256));
    v315 = sub_1DD335260();
    OUTLINED_FUNCTION_51_1(v315);
    v316 = sub_1DD335250();
    sub_1DD27F164(v110, v75, &qword_1ECCD67D0, &unk_1DD33A930);
    v317 = OUTLINED_FUNCTION_64();
    OUTLINED_FUNCTION_51_2(v317, v318, v303);
    v63 = v473;
    if (v112)
    {
      sub_1DD296084(v75, &qword_1ECCD67D0, &unk_1DD33A930);
    }

    else
    {
      (*(v299 + 32))(v91, v75, v303);
      v360 = sub_1DD335560();
      OUTLINED_FUNCTION_51_1(v360);
      sub_1DD335550();
      OUTLINED_FUNCTION_74_1();
      sub_1DD335540();
      sub_1DD335860();
      sub_1DD335220();

      (*(v299 + 8))(v91, v303);
    }

    OUTLINED_FUNCTION_29_1();
    v361 = v444;
    sub_1DD27F164(v449, v444, &qword_1ECCD67C8, &unk_1DD339830);
    v362 = OUTLINED_FUNCTION_64();
    v363 = v460;
    OUTLINED_FUNCTION_51_2(v362, v364, v460);
    if (v112)
    {
      sub_1DD296084(v361, &qword_1ECCD67C8, &unk_1DD339830);
    }

    else
    {
      v365 = v450;
      v366 = *(v450 + 32);
      v367 = OUTLINED_FUNCTION_56_1();
      v368(v367);
      v369 = sub_1DD335590();
      OUTLINED_FUNCTION_51_1(v369);
      sub_1DD335580();
      OUTLINED_FUNCTION_74_1();
      sub_1DD335570();
      sub_1DD335860();
      sub_1DD335230();

      (*(v365 + 8))(v91, v363);
    }

    v171 = v464;

    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_35_1();
    sub_1DD334C30();
    sub_1DD334BA0();
    v370 = OUTLINED_FUNCTION_47_2();
    v371(v370);
    if (qword_1EE0275F0 != -1)
    {
      OUTLINED_FUNCTION_4_1();
    }

    sub_1DD28191C(&unk_1EE02A1A8, &v482);
    v372 = v484;
    v373 = v485;
    __swift_project_boxed_opaque_existential_1(&v482, v484);
    LOBYTE(v372) = (*(v373 + 40))(v372, v373);
    __swift_destroy_boxed_opaque_existential_1(&v482);
    if (v372)
    {
      sub_1DD334BF0();
      OUTLINED_FUNCTION_24();
      OUTLINED_FUNCTION_85_1(v374, v375, v376, v377);
      sub_1DD3356D0();
      OUTLINED_FUNCTION_78_1();
      v379 = *(v378 - 256);
      OUTLINED_FUNCTION_24();
      __swift_storeEnumTagSinglePayload(v380, v381, v382, v383);

      LOBYTE(v482) = 1;
      sub_1DD334C00();
      sub_1DD334BB0();
      v384 = *(v451 + 8);
      OUTLINED_FUNCTION_79_1();
      v385();
    }

    if (MEMORY[0x1E12AABB0](v316))
    {

      sub_1DD296084(v449, &qword_1ECCD67C8, &unk_1DD339830);
      sub_1DD296084(v447, &qword_1ECCD67D0, &unk_1DD33A930);
      OUTLINED_FUNCTION_16_0();
      v387 = *(v386 - 256);
      OUTLINED_FUNCTION_23_1();
      sub_1DD2BA624(v388, v389, v390, v391, v392, v393);
      MEMORY[0x1E12AC640]();
      OUTLINED_FUNCTION_9_3();
      if (v440)
      {
        OUTLINED_FUNCTION_22_2();
      }

      sub_1DD336860();
      OUTLINED_FUNCTION_20_2();
      goto LABEL_88;
    }

    sub_1DD2BAF38();
    v435 = OUTLINED_FUNCTION_68_0();
    OUTLINED_FUNCTION_30_1(v435, v436);

    sub_1DD296084(v449, &qword_1ECCD67C8, &unk_1DD339830);
    v294 = &v475;
LABEL_76:
    sub_1DD296084(*(v294 - 32), &qword_1ECCD67D0, &unk_1DD33A930);
    OUTLINED_FUNCTION_26_2(MEMORY[0x1E69E7CC0]);
    goto LABEL_13;
  }

  v188 = OUTLINED_FUNCTION_3_3();
  v189(v188);
  v190 = *MEMORY[0x1E69D20E8];
  v191 = OUTLINED_FUNCTION_1_3();
  v192(v191);
  v91 = v465;
  v193 = v467;
  v194 = v466;
  (*(v465 + 104))(v467, *MEMORY[0x1E69D1FE0], v466);
  v195 = v457;
  (*(v91 + 16))(v457, v193, v194);
  OUTLINED_FUNCTION_66_0();
  __swift_storeEnumTagSinglePayload(v196, v197, v198, v194);
  v199 = OUTLINED_FUNCTION_17_3(&v490);
  OUTLINED_FUNCTION_85_1(v199, v201, v202, *(v200 - 256));
  v203 = sub_1DD335260();
  OUTLINED_FUNCTION_51_1(v203);
  v204 = sub_1DD335250();
  sub_1DD27F164(v195, v79, &qword_1ECCD67D0, &unk_1DD33A930);
  OUTLINED_FUNCTION_51_2(v79, 1, v194);
  if (v112)
  {
    sub_1DD296084(v79, &qword_1ECCD67D0, &unk_1DD33A930);
  }

  else
  {
    (*(v91 + 32))(v94, v79, v194);
    v233 = sub_1DD335560();
    OUTLINED_FUNCTION_51_1(v233);
    sub_1DD335550();
    sub_1DD335540();
    sub_1DD335860();
    sub_1DD335220();

    (*(v91 + 8))(v94, v194);
  }

  sub_1DD27F164(v469, v63, &qword_1ECCD67C8, &unk_1DD339830);
  v234 = v460;
  OUTLINED_FUNCTION_51_2(v63, 1, v460);
  v111 = v476;
  if (v112)
  {
    sub_1DD296084(v63, &qword_1ECCD67C8, &unk_1DD339830);
  }

  else
  {
    OUTLINED_FUNCTION_32_3(&v479);
    v235(v50, v63, v234);
    v236 = sub_1DD335590();
    OUTLINED_FUNCTION_51_1(v236);
    sub_1DD335580();
    sub_1DD335570();
    sub_1DD335860();
    sub_1DD335230();
    OUTLINED_FUNCTION_73_1();
    (*(v91 + 8))(v50, v234);
  }

  v171 = v464;

  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_11_0();
  sub_1DD334C30();
  sub_1DD334BA0();
  v237 = OUTLINED_FUNCTION_47_2();
  v238(v237);
  v63 = v473;
  if (qword_1EE0275F0 != -1)
  {
    OUTLINED_FUNCTION_4_1();
  }

  sub_1DD28191C(&unk_1EE02A1A8, &v482);
  v239 = v484;
  v240 = v485;
  __swift_project_boxed_opaque_existential_1(&v482, v484);
  v241 = (*(v240 + 40))(v239, v240);
  __swift_destroy_boxed_opaque_existential_1(&v482);
  if (v241)
  {
    sub_1DD334BF0();
    OUTLINED_FUNCTION_54_1();
    v243 = *(v242 - 256);
    OUTLINED_FUNCTION_24();
    OUTLINED_FUNCTION_85_1(v244, v245, v246, v247);
    sub_1DD3356D0();
    OUTLINED_FUNCTION_78_1();
    v249 = *(v248 - 256);
    OUTLINED_FUNCTION_24();
    __swift_storeEnumTagSinglePayload(v250, v251, v252, v253);

    OUTLINED_FUNCTION_10_2();
    v441[0] = v254;
    v441[1] = MEMORY[0x1E69E7CC0];
    v171 = v464;
    sub_1DD334C00();
    sub_1DD334BB0();
    v255 = *(v451 + 8);
    OUTLINED_FUNCTION_79_1();
    v256();
  }

  if (!MEMORY[0x1E12AABB0](v204))
  {
    sub_1DD2BAF38();
    v292 = OUTLINED_FUNCTION_68_0();
    OUTLINED_FUNCTION_30_1(v292, v293);

    sub_1DD296084(v469, &qword_1ECCD67C8, &unk_1DD339830);
    v294 = &v485;
    goto LABEL_76;
  }

  OUTLINED_FUNCTION_81_1();

  sub_1DD296084(v469, &qword_1ECCD67C8, &unk_1DD339830);
  sub_1DD296084(v457, &qword_1ECCD67D0, &unk_1DD33A930);
  OUTLINED_FUNCTION_16_0();
  v258 = *(v257 - 256);
  OUTLINED_FUNCTION_63_1();
  sub_1DD2BA624(v259, v260, v261, v262, v263, v264);
  OUTLINED_FUNCTION_100_0();
  OUTLINED_FUNCTION_9_3();
  if (v327)
  {
    OUTLINED_FUNCTION_22_2();
  }

  OUTLINED_FUNCTION_77_2();
  sub_1DD336860();
  OUTLINED_FUNCTION_20_2();
LABEL_88:

  v91 = 1;
LABEL_41:
  sub_1DD3346A0();
  sub_1DD335980();
  v172 = v462;
  sub_1DD335970();
  v173 = OUTLINED_FUNCTION_64();
  v174 = v463;
  OUTLINED_FUNCTION_51_2(v173, v175, v463);
  v176 = v475;
  if (v112)
  {

    sub_1DD296084(v172, &qword_1ECCD67C0, &qword_1DD339828);
    goto LABEL_30;
  }

  LODWORD(v461) = v91;
  v464 = v105;
  OUTLINED_FUNCTION_32_3(&v487);
  v177 = v458;
  v178(v458, v172, v174);
  sub_1DD335990();
  v179 = sub_1DD3359C0();
  v181 = *(v91 + 8);
  v91 += 8;
  v180 = v181;
  v181(v171, v174);
  if (v179)
  {
    v462 = v180;
    v182 = OUTLINED_FUNCTION_3_3();
    v183(v182);
    v184 = *MEMORY[0x1E69D20D8];
    v185 = OUTLINED_FUNCTION_1_3();
    v186(v185);
    OUTLINED_FUNCTION_35_1();
    sub_1DD2D4640();
    OUTLINED_FUNCTION_16_0();
    v320 = *(v319 - 256);
    OUTLINED_FUNCTION_23_1();
    sub_1DD2BA624(v321, v322, v323, v324, v325, v326);

    MEMORY[0x1E12AC640](v394);
    OUTLINED_FUNCTION_9_3();
    if (v327)
    {
      OUTLINED_FUNCTION_22_2();
    }

    sub_1DD336860();
    OUTLINED_FUNCTION_20_2();

    v395 = OUTLINED_FUNCTION_66_2();
    v396(v395);
    OUTLINED_FUNCTION_28_2();
    OUTLINED_FUNCTION_45_1();
    OUTLINED_FUNCTION_29_1();
    goto LABEL_112;
  }

  sub_1DD3359B0();
  v205 = sub_1DD3359C0();
  v180(v171, v174);
  if ((v205 & 1) == 0)
  {
    sub_1DD3359A0();
    v265 = sub_1DD3359C0();
    v180(v171, v174);
    if ((v265 & 1) == 0)
    {
      v180(v177, v174);

      OUTLINED_FUNCTION_28_2();
LABEL_112:
      LODWORD(v91) = v461;
      goto LABEL_30;
    }

    v462 = v180;
    v459 = v91;
    v266 = OUTLINED_FUNCTION_3_3();
    v267(v266);
    v268 = *MEMORY[0x1E69D20D0];
    v269 = OUTLINED_FUNCTION_1_3();
    v270(v269);
    OUTLINED_FUNCTION_65_0();
    v271 = OUTLINED_FUNCTION_57_0();
    v213 = *(v272 - 256);
    v273(v271);
    if (v461)
    {
      v274 = OUTLINED_FUNCTION_60_1();
      v275(v274);
    }

    v276 = OUTLINED_FUNCTION_43_1();
    v176(v276);
    v277 = *(v111 + 2);
    v278 = OUTLINED_FUNCTION_56_1();
    v279(v278);
    OUTLINED_FUNCTION_66_0();
    __swift_storeEnumTagSinglePayload(v280, v281, v282, v213);
    v283 = OUTLINED_FUNCTION_17_3(&v476);
    v63 = *(v284 - 256);
    OUTLINED_FUNCTION_85_1(v283, v285, v286, v63);
    v287 = sub_1DD335260();
    OUTLINED_FUNCTION_51_1(v287);
    v288 = sub_1DD335250();
    v289 = v442;
    sub_1DD27F164(v91, v442, &qword_1ECCD67D0, &unk_1DD33A930);
    v290 = OUTLINED_FUNCTION_46_2();
    OUTLINED_FUNCTION_51_2(v290, v291, v213);
    if (v112)
    {
      sub_1DD296084(v289, &qword_1ECCD67D0, &unk_1DD33A930);
    }

    else
    {
      v397 = OUTLINED_FUNCTION_75_1(&v462);
      v176(v397);
      v398 = sub_1DD335560();
      OUTLINED_FUNCTION_51_1(v398);
      sub_1DD335550();
      sub_1DD335540();
      sub_1DD335860();
      sub_1DD335220();
      OUTLINED_FUNCTION_73_1();
      v399 = OUTLINED_FUNCTION_76_0();
      v400(v399);
    }

    OUTLINED_FUNCTION_45_1();
    OUTLINED_FUNCTION_29_1();
    v401 = v443;
    sub_1DD27F164(v448, v443, &qword_1ECCD67C8, &unk_1DD339830);
    v402 = OUTLINED_FUNCTION_46_2();
    OUTLINED_FUNCTION_51_2(v402, v403, v63);
    if (v112)
    {
      sub_1DD296084(v401, &qword_1ECCD67C8, &unk_1DD339830);
    }

    else
    {
      OUTLINED_FUNCTION_32_3(&v479);
      v404 = OUTLINED_FUNCTION_52_1();
      v405(v404);
      v406 = sub_1DD335590();
      OUTLINED_FUNCTION_51_1(v406);
      sub_1DD335580();
      sub_1DD335570();
      sub_1DD335860();
      sub_1DD335230();
      OUTLINED_FUNCTION_73_1();
      v407 = *(v91 + 8);
      LODWORD(v91) = v91 + 8;
      v407(v213, v63);
    }

    OUTLINED_FUNCTION_93_0();

    OUTLINED_FUNCTION_8();
    v408 = v454;
    OUTLINED_FUNCTION_11_0();
    sub_1DD334C30();
    sub_1DD334BA0();
    OUTLINED_FUNCTION_21(v483);
    v409(v408, v456);
    if (qword_1EE0275F0 != -1)
    {
      OUTLINED_FUNCTION_4_1();
    }

    sub_1DD28191C(&unk_1EE02A1A8, &v482);
    __swift_project_boxed_opaque_existential_1(&v482, v484);
    v410 = OUTLINED_FUNCTION_61_1();
    v412 = v411(v410);
    __swift_destroy_boxed_opaque_existential_1(&v482);
    OUTLINED_FUNCTION_29_1();
    if (v412)
    {
      sub_1DD334BF0();
      OUTLINED_FUNCTION_54_1();
      v63 = *(v413 - 256);
      OUTLINED_FUNCTION_24();
      OUTLINED_FUNCTION_85_1(v414, v415, v416, v417);
      sub_1DD3356D0();
      OUTLINED_FUNCTION_78_1();
      v419 = *(v418 - 256);
      OUTLINED_FUNCTION_24();
      __swift_storeEnumTagSinglePayload(v420, v421, v422, v423);

      OUTLINED_FUNCTION_10_2();
      OUTLINED_FUNCTION_38_2();
      OUTLINED_FUNCTION_74_1();
      sub_1DD334BB0();
      OUTLINED_FUNCTION_21(&v481);
      OUTLINED_FUNCTION_79_1();
      v424();
    }

    if (MEMORY[0x1E12AABB0](v288))
    {
      OUTLINED_FUNCTION_81_1();

      sub_1DD296084(v448, &qword_1ECCD67C8, &unk_1DD339830);
      v356 = &v474;
      goto LABEL_122;
    }

    sub_1DD2BAF38();
    v437 = OUTLINED_FUNCTION_68_0();
    OUTLINED_FUNCTION_30_1(v437, v438);

    sub_1DD296084(v448, &qword_1ECCD67C8, &unk_1DD339830);
    v359 = &v474;
LABEL_128:
    sub_1DD296084(*(v359 - 32), &qword_1ECCD67D0, &unk_1DD33A930);
    v439 = OUTLINED_FUNCTION_15_2();
    v213(v439);
    goto LABEL_11;
  }

  v462 = v180;
  v459 = v91;
  v206 = OUTLINED_FUNCTION_3_3();
  v207(v206);
  v208 = *MEMORY[0x1E69D20E0];
  v209 = OUTLINED_FUNCTION_1_3();
  v210(v209);
  OUTLINED_FUNCTION_65_0();
  v211 = OUTLINED_FUNCTION_57_0();
  v213 = *(v212 - 256);
  v214(v211);
  if (v461)
  {
    v215 = OUTLINED_FUNCTION_60_1();
    v216(v215);
  }

  v217 = OUTLINED_FUNCTION_43_1();
  v176(v217);
  v218 = *(v111 + 2);
  v219 = OUTLINED_FUNCTION_56_1();
  v220(v219);
  OUTLINED_FUNCTION_66_0();
  __swift_storeEnumTagSinglePayload(v221, v222, v223, v213);
  v224 = OUTLINED_FUNCTION_17_3(&v482);
  v63 = *(v225 - 256);
  OUTLINED_FUNCTION_85_1(v224, v226, v227, v63);
  v228 = sub_1DD335260();
  OUTLINED_FUNCTION_51_1(v228);
  v229 = sub_1DD335250();
  v230 = v445;
  sub_1DD27F164(v91, v445, &qword_1ECCD67D0, &unk_1DD33A930);
  v231 = OUTLINED_FUNCTION_46_2();
  OUTLINED_FUNCTION_51_2(v231, v232, v213);
  if (v112)
  {
    sub_1DD296084(v230, &qword_1ECCD67D0, &unk_1DD33A930);
  }

  else
  {
    v328 = OUTLINED_FUNCTION_75_1(&v466);
    v176(v328);
    v329 = sub_1DD335560();
    OUTLINED_FUNCTION_51_1(v329);
    sub_1DD335550();
    sub_1DD335540();
    sub_1DD335860();
    sub_1DD335220();
    OUTLINED_FUNCTION_73_1();
    v330 = OUTLINED_FUNCTION_76_0();
    v331(v330);
  }

  OUTLINED_FUNCTION_45_1();
  OUTLINED_FUNCTION_29_1();
  v332 = v446;
  sub_1DD27F164(v453, v446, &qword_1ECCD67C8, &unk_1DD339830);
  v333 = OUTLINED_FUNCTION_46_2();
  OUTLINED_FUNCTION_51_2(v333, v334, v63);
  if (v112)
  {
    sub_1DD296084(v332, &qword_1ECCD67C8, &unk_1DD339830);
  }

  else
  {
    OUTLINED_FUNCTION_32_3(&v479);
    v335 = OUTLINED_FUNCTION_52_1();
    v336(v335);
    v337 = sub_1DD335590();
    OUTLINED_FUNCTION_51_1(v337);
    sub_1DD335580();
    sub_1DD335570();
    sub_1DD335860();
    sub_1DD335230();
    OUTLINED_FUNCTION_73_1();
    v338 = *(v91 + 8);
    LODWORD(v91) = v91 + 8;
    v338(v213, v63);
  }

  OUTLINED_FUNCTION_93_0();

  OUTLINED_FUNCTION_8();
  v339 = v454;
  OUTLINED_FUNCTION_11_0();
  sub_1DD334C30();
  sub_1DD334BA0();
  OUTLINED_FUNCTION_21(v483);
  v340(v339, v456);
  if (qword_1EE0275F0 != -1)
  {
    OUTLINED_FUNCTION_4_1();
  }

  sub_1DD28191C(&unk_1EE02A1A8, &v482);
  __swift_project_boxed_opaque_existential_1(&v482, v484);
  v341 = OUTLINED_FUNCTION_61_1();
  v343 = v342(v341);
  __swift_destroy_boxed_opaque_existential_1(&v482);
  OUTLINED_FUNCTION_29_1();
  if (v343)
  {
    sub_1DD334BF0();
    OUTLINED_FUNCTION_54_1();
    v63 = *(v344 - 256);
    OUTLINED_FUNCTION_24();
    OUTLINED_FUNCTION_85_1(v345, v346, v347, v348);
    sub_1DD3356D0();
    OUTLINED_FUNCTION_78_1();
    v350 = *(v349 - 256);
    OUTLINED_FUNCTION_24();
    __swift_storeEnumTagSinglePayload(v351, v352, v353, v354);

    OUTLINED_FUNCTION_10_2();
    OUTLINED_FUNCTION_38_2();
    OUTLINED_FUNCTION_74_1();
    sub_1DD334BB0();
    OUTLINED_FUNCTION_21(&v481);
    OUTLINED_FUNCTION_79_1();
    v355();
  }

  if (!MEMORY[0x1E12AABB0](v229))
  {
    sub_1DD2BAF38();
    v357 = OUTLINED_FUNCTION_68_0();
    OUTLINED_FUNCTION_30_1(v357, v358);

    sub_1DD296084(v453, &qword_1ECCD67C8, &unk_1DD339830);
    v359 = &v478;
    goto LABEL_128;
  }

  OUTLINED_FUNCTION_81_1();

  sub_1DD296084(v453, &qword_1ECCD67C8, &unk_1DD339830);
  v356 = &v478;
LABEL_122:
  sub_1DD296084(*(v356 - 32), &qword_1ECCD67D0, &unk_1DD33A930);
  OUTLINED_FUNCTION_16_0();
  v426 = *(v425 - 256);
  OUTLINED_FUNCTION_63_1();
  sub_1DD2BA624(v427, v428, v429, v430, v431, v432);

  MEMORY[0x1E12AC640](v433);
  OUTLINED_FUNCTION_9_3();
  if (v327)
  {
    OUTLINED_FUNCTION_22_2();
  }

  OUTLINED_FUNCTION_77_2();
  sub_1DD336860();
  OUTLINED_FUNCTION_20_2();

  v434 = OUTLINED_FUNCTION_15_2();
  v213(v434);
  LODWORD(v91) = 1;
  OUTLINED_FUNCTION_28_2();
  OUTLINED_FUNCTION_29_1();
LABEL_30:
  OUTLINED_FUNCTION_11_0();
  sub_1DD2D4960();
  OUTLINED_FUNCTION_11_0();
  OUTLINED_FUNCTION_23_1();
  sub_1DD2BA624(v158, v159, v160, v161, v162, v163);

  MEMORY[0x1E12AC640](v166);
  OUTLINED_FUNCTION_13_2(v489);
  if (v327)
  {
    OUTLINED_FUNCTION_14_3(v167);
    sub_1DD336830();
  }

  sub_1DD336860();
  v168 = v489;

  v169 = OUTLINED_FUNCTION_53_1();
  v170(v169);
  if (v91)
  {
    OUTLINED_FUNCTION_21(&v489);
    v164(v467, v466);
  }

  return v168;
}

uint64_t sub_1DD2B9FA8(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD62A0, &unk_1DD338D70);
  OUTLINED_FUNCTION_36(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_28();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_30();
  v79 = v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD6348, &unk_1DD338E20);
  OUTLINED_FUNCTION_36(v14);
  v16 = *(v15 + 64);
  OUTLINED_FUNCTION_28();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_30();
  v76 = v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD6350, &unk_1DD3396F0);
  OUTLINED_FUNCTION_36(v19);
  v21 = *(v20 + 64);
  OUTLINED_FUNCTION_28();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_30();
  v78 = sub_1DD336220();
  v23 = OUTLINED_FUNCTION_1_0(v78);
  v77 = v24;
  v26 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_12();
  v29 = v28 - v27;
  v30 = sub_1DD334C50();
  v31 = OUTLINED_FUNCTION_1_0(v30);
  v33 = v32;
  v35 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_12();
  v36 = sub_1DD3350C0();
  OUTLINED_FUNCTION_51_1(v36);
  v37 = sub_1DD3350B0();
  OUTLINED_FUNCTION_86_1();
  v39 = a5 == 0xD00000000000001BLL && v38 == a6;
  if (!v39 && (sub_1DD336E00() & 1) == 0)
  {
    OUTLINED_FUNCTION_86_1();
    v41 = a5 == 0xD000000000000013 && v40 == a6;
    if (!v41 && (sub_1DD336E00() & 1) == 0)
    {
      OUTLINED_FUNCTION_86_1();
      v43 = a5 == 0xD000000000000015 && v42 == a6;
      if (!v43 && (sub_1DD336E00() & 1) == 0)
      {
      }
    }
  }

  sub_1DD3350A0();

  if (sub_1DD335090())
  {

    OUTLINED_FUNCTION_8();
    sub_1DD334C30();
    sub_1DD334BA0();

    v44 = *(v33 + 8);
    v45 = OUTLINED_FUNCTION_35_1();
    v46(v45);
  }

  else
  {
  }

  if (MEMORY[0x1E12AABB0](v37))
  {
    sub_1DD335E60();
    OUTLINED_FUNCTION_24();
    __swift_storeEnumTagSinglePayload(v47, v48, v49, v50);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD66C0, &qword_1DD339430);
    v51 = sub_1DD335CE0();
    OUTLINED_FUNCTION_1_0(v51);
    v53 = v52;
    v55 = *(v54 + 72);
    v56 = (*(v52 + 80) + 32) & ~*(v52 + 80);
    v57 = swift_allocObject();
    *(v57 + 16) = xmmword_1DD339380;
    v58 = *MEMORY[0x1E69D2918];
    v59 = sub_1DD336130();
    OUTLINED_FUNCTION_1(v59);
    (*(v60 + 104))(v57 + v56, v58);
    (*(v53 + 104))(v57 + v56, *MEMORY[0x1E69D27E8], v51);

    sub_1DD335860();
    sub_1DD3361E0();
    sub_1DD336240();
    OUTLINED_FUNCTION_24();
    __swift_storeEnumTagSinglePayload(v61, v62, v63, v64);
    v65 = sub_1DD336190();
    sub_1DD296084(v76, &qword_1ECCD6348, &unk_1DD338E20);
    v66 = sub_1DD334830();
    OUTLINED_FUNCTION_1(v66);
    (*(v67 + 16))(v79, a7, v66);
    OUTLINED_FUNCTION_66_0();
    __swift_storeEnumTagSinglePayload(v68, v69, v70, v66);
    sub_1DD335EF0();

    (*(v77 + 8))(v29, v78);
  }

  else
  {

    v71 = sub_1DD335CB0();
    v72 = sub_1DD336950();

    if (os_log_type_enabled(v71, v72))
    {
      v73 = OUTLINED_FUNCTION_50();
      v74 = swift_slowAlloc();
      v83 = v74;
      *v73 = 136315138;
      *(v73 + 4) = sub_1DD27DBF0(a1, a2, &v83);
      _os_log_impl(&dword_1DD27A000, v71, v72, "Failed to convert contact %s to USO", v73, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v74);
      OUTLINED_FUNCTION_54();
      OUTLINED_FUNCTION_54();
    }

    return 0;
  }

  return v65;
}

char *sub_1DD2BA624(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v62 = a6;
  v63 = a4;
  v64 = a5;
  v65 = a3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD62A0, &unk_1DD338D70);
  OUTLINED_FUNCTION_36(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_28();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_30();
  v61 = v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD6348, &unk_1DD338E20);
  OUTLINED_FUNCTION_36(v13);
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_28();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_30();
  v58 = v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD6350, &unk_1DD3396F0);
  OUTLINED_FUNCTION_36(v18);
  v20 = *(v19 + 64);
  OUTLINED_FUNCTION_28();
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v58 - v22;
  v24 = sub_1DD336220();
  v25 = OUTLINED_FUNCTION_1_0(v24);
  v59 = v26;
  v60 = v25;
  v28 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_12();
  v31 = v30 - v29;
  v66 = a1;
  v67 = a2;
  sub_1DD335E60();
  OUTLINED_FUNCTION_24();
  __swift_storeEnumTagSinglePayload(v32, v33, v34, v35);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD66C0, &qword_1DD339430);
  v36 = sub_1DD335CE0();
  OUTLINED_FUNCTION_1_0(v36);
  v38 = v37;
  v40 = *(v39 + 72);
  v41 = (*(v37 + 80) + 32) & ~*(v37 + 80);
  v42 = swift_allocObject();
  *(v42 + 16) = xmmword_1DD339380;
  v43 = *MEMORY[0x1E69D2918];
  v44 = sub_1DD336130();
  OUTLINED_FUNCTION_1(v44);
  (*(v45 + 104))(v42 + v41, v43);
  (*(v38 + 104))(v42 + v41, *MEMORY[0x1E69D27E8], v36);
  swift_bridgeObjectRetain_n();

  sub_1DD335860();
  v46 = v68;
  sub_1DD3361B0();
  if (!v46)
  {
    sub_1DD336240();
    v47 = v58;
    OUTLINED_FUNCTION_24();
    __swift_storeEnumTagSinglePayload(v48, v49, v50, v51);
    v23 = sub_1DD336190();
    sub_1DD296084(v47, &qword_1ECCD6348, &unk_1DD338E20);
    v52 = sub_1DD334830();
    OUTLINED_FUNCTION_1(v52);
    (*(v53 + 16))(v61, v62, v52);
    OUTLINED_FUNCTION_66_0();
    __swift_storeEnumTagSinglePayload(v54, v55, v56, v52);
    sub_1DD335EF0();
    (*(v59 + 8))(v31, v60);
  }

  return v23;
}

uint64_t RRVoiceShortcutClientPuller.deinit()
{
  v1 = OBJC_IVAR____TtC23SiriReferenceResolution27RRVoiceShortcutClientPuller_logger;
  v2 = sub_1DD335CD0();
  OUTLINED_FUNCTION_1(v2);
  (*(v3 + 8))(v0 + v1);

  sub_1DD296084(v0 + OBJC_IVAR____TtC23SiriReferenceResolution27RRVoiceShortcutClientPuller____lazy_storage___contactStore, &qword_1ECCD62B8, "de");
  return v0;
}

uint64_t RRVoiceShortcutClientPuller.__deallocating_deinit()
{
  RRVoiceShortcutClientPuller.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t sub_1DD2BAACC()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1DD2B2DD0;

  return sub_1DD2B5FE4();
}

uint64_t sub_1DD2BAB88(void *a1, SEL *a2)
{
  v2 = [a1 *a2];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = sub_1DD3365D0();

  return v4;
}

uint64_t sub_1DD2BABF4()
{
  OUTLINED_FUNCTION_4();
  v3 = v2;
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1DD2B4108;

  return sub_1DD2B739C(v3, v0);
}

uint64_t sub_1DD2BAC94()
{
  result = sub_1DD335CD0();
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

uint64_t dispatch thunk of RRVoiceShortcutClientPuller.pull(at:)()
{
  v2 = *(*v0 + 168);
  v7 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1DD2B4580;
  v5 = OUTLINED_FUNCTION_81_1();

  return v7(v5);
}

void sub_1DD2BAEB0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD67B8, &qword_1DD339820);
  OUTLINED_FUNCTION_36(v1);
  v3 = *(v2 + 80);
  v4 = *(v0 + 16);
  v5 = OUTLINED_FUNCTION_19_0();

  sub_1DD2B778C(v5, v6);
}

unint64_t sub_1DD2BAF38()
{
  result = qword_1ECCD67D8;
  if (!qword_1ECCD67D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCD67D8);
  }

  return result;
}

unint64_t sub_1DD2BAF8C()
{
  result = qword_1ECCD6338;
  if (!qword_1ECCD6338)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ECCD6338);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_37_2()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_38_2()
{
  v2 = *(v0 - 480);
  v3 = *(v0 - 256);

  return sub_1DD334C00();
}

void OUTLINED_FUNCTION_91_1(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 0x16u);
}

uint64_t OUTLINED_FUNCTION_92_1()
{
  *(v0 + 4) = v1;
  *(v0 + 12) = 2080;

  return sub_1DD335ED0();
}

uint64_t OUTLINED_FUNCTION_96_0(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);

  return sub_1DD27DBF0(a1, a2, va);
}

uint64_t OUTLINED_FUNCTION_97_1(uint64_t a1, unint64_t a2)
{

  return sub_1DD27DBF0(a1, a2, (v2 - 144));
}

uint64_t OUTLINED_FUNCTION_98_1()
{

  return sub_1DD336830();
}

void OUTLINED_FUNCTION_99_1()
{

  JUMPOUT(0x1E12AC640);
}

void String.md5String.getter()
{
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_10_3();
  v2 = sub_1DD3364D0();
  v3 = OUTLINED_FUNCTION_1_0(v2);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_12();
  v6 = sub_1DD3364E0();
  v7 = OUTLINED_FUNCTION_1_0(v6);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_7_1(v10, v50);
  v12 = MEMORY[0x1EEE9AC00](v11);
  v20 = OUTLINED_FUNCTION_22_3(v12, v13, v14, v15, v16, v17, v18, v19, v51);
  v21 = OUTLINED_FUNCTION_1_0(v20);
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_12();
  sub_1DD336610();
  OUTLINED_FUNCTION_35_2();
  v24 = OUTLINED_FUNCTION_18_1();
  v25(v24);
  OUTLINED_FUNCTION_33_1();
  if (!v27 & v26)
  {
    goto LABEL_4;
  }

  v28 = OUTLINED_FUNCTION_12_3();
  sub_1DD28B4F8(v28, v29);
  v30 = MEMORY[0x1E6966688];
  v31 = sub_1DD2BC314(&qword_1EE0275C0, MEMORY[0x1E6966688]);
  OUTLINED_FUNCTION_17_4(v31);
  v32 = OUTLINED_FUNCTION_12_3();
  sub_1DD28B4F8(v32, v33);
  OUTLINED_FUNCTION_3_4();
  OUTLINED_FUNCTION_12_3();
  OUTLINED_FUNCTION_29_2();
  sub_1DD2BC258(v34, v35, v36, v37, &qword_1EE0275C0, v30);
  OUTLINED_FUNCTION_40_2();
  OUTLINED_FUNCTION_25_0();
  v38 = OUTLINED_FUNCTION_31_5();
  v39(v38);
  v52 = v6;
  OUTLINED_FUNCTION_40_2();
  v40 = OUTLINED_FUNCTION_11_1();
  v41(v40);
  v42 = sub_1DD2BC314(&qword_1EE0275B8, MEMORY[0x1E69666B0]);
  OUTLINED_FUNCTION_36_3(v42);
  v43 = v0;
  v44 = MEMORY[0x1E69E7CC0];
  if (v55 == *(v54 + 16))
  {
LABEL_3:
    (*(v53 + 8))(v43);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD67E8, &qword_1DD339848);
    sub_1DD2BC1F4();
    OUTLINED_FUNCTION_24_2();
    sub_1DD28B488(v52, v1);

LABEL_4:
    OUTLINED_FUNCTION_24_1();
    return;
  }

  while ((v55 & 0x8000000000000000) == 0)
  {
    if (v55 >= *(v54 + 16))
    {
      goto LABEL_15;
    }

    v45 = *(v54 + 32 + v55);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD67E0, &qword_1DD339840);
    v46 = swift_allocObject();
    *(v46 + 16) = xmmword_1DD339380;
    *(v46 + 56) = MEMORY[0x1E69E7508];
    OUTLINED_FUNCTION_23_2(v46, MEMORY[0x1E69E7558]);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      OUTLINED_FUNCTION_20_3();
      v44 = v48;
    }

    v47 = *(v44 + 24);
    if (*(v44 + 16) >= v47 >> 1)
    {
      OUTLINED_FUNCTION_27_2(v47);
      v44 = v49;
    }

    OUTLINED_FUNCTION_19_1();
    if (v27)
    {
      goto LABEL_3;
    }
  }

  __break(1u);
LABEL_15:
  __break(1u);
}

void String.sha256String.getter()
{
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_10_3();
  v2 = sub_1DD3364C0();
  v3 = OUTLINED_FUNCTION_1_0(v2);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_12();
  v6 = sub_1DD3364B0();
  v7 = OUTLINED_FUNCTION_1_0(v6);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_7_1(v10, v50);
  v12 = MEMORY[0x1EEE9AC00](v11);
  v20 = OUTLINED_FUNCTION_22_3(v12, v13, v14, v15, v16, v17, v18, v19, v51);
  v21 = OUTLINED_FUNCTION_1_0(v20);
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_12();
  sub_1DD336610();
  OUTLINED_FUNCTION_35_2();
  v24 = OUTLINED_FUNCTION_18_1();
  v25(v24);
  OUTLINED_FUNCTION_33_1();
  if (!v27 & v26)
  {
    goto LABEL_4;
  }

  v28 = OUTLINED_FUNCTION_12_3();
  sub_1DD28B4F8(v28, v29);
  v30 = MEMORY[0x1E6966620];
  v31 = sub_1DD2BC314(&qword_1ECCD67F0, MEMORY[0x1E6966620]);
  OUTLINED_FUNCTION_17_4(v31);
  v32 = OUTLINED_FUNCTION_12_3();
  sub_1DD28B4F8(v32, v33);
  OUTLINED_FUNCTION_4_3();
  OUTLINED_FUNCTION_12_3();
  OUTLINED_FUNCTION_29_2();
  sub_1DD2BC258(v34, v35, v36, v37, &qword_1ECCD67F0, v30);
  OUTLINED_FUNCTION_40_2();
  OUTLINED_FUNCTION_25_0();
  v38 = OUTLINED_FUNCTION_31_5();
  v39(v38);
  v52 = v6;
  OUTLINED_FUNCTION_40_2();
  v40 = OUTLINED_FUNCTION_11_1();
  v41(v40);
  v42 = sub_1DD2BC314(&qword_1ECCD67F8, MEMORY[0x1E69663E0]);
  OUTLINED_FUNCTION_36_3(v42);
  v43 = v0;
  v44 = MEMORY[0x1E69E7CC0];
  if (v55 == *(v54 + 16))
  {
LABEL_3:
    (*(v53 + 8))(v43);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD67E8, &qword_1DD339848);
    sub_1DD2BC1F4();
    OUTLINED_FUNCTION_24_2();
    sub_1DD28B488(v52, v1);

LABEL_4:
    OUTLINED_FUNCTION_24_1();
    return;
  }

  while ((v55 & 0x8000000000000000) == 0)
  {
    if (v55 >= *(v54 + 16))
    {
      goto LABEL_15;
    }

    v45 = *(v54 + 32 + v55);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD67E0, &qword_1DD339840);
    v46 = swift_allocObject();
    *(v46 + 16) = xmmword_1DD339380;
    *(v46 + 56) = MEMORY[0x1E69E7508];
    OUTLINED_FUNCTION_23_2(v46, MEMORY[0x1E69E7558]);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      OUTLINED_FUNCTION_20_3();
      v44 = v48;
    }

    v47 = *(v44 + 24);
    if (*(v44 + 16) >= v47 >> 1)
    {
      OUTLINED_FUNCTION_27_2(v47);
      v44 = v49;
    }

    OUTLINED_FUNCTION_19_1();
    if (v27)
    {
      goto LABEL_3;
    }
  }

  __break(1u);
LABEL_15:
  __break(1u);
}

uint64_t Data.digest.getter@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  *a3 = a1;
  a3[1] = a2;
  return sub_1DD28B4F8(a1, a2);
}

void Data.Digest.MD5.getter()
{
  OUTLINED_FUNCTION_23_0();
  v1 = sub_1DD3364D0();
  v2 = OUTLINED_FUNCTION_1_0(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_12();
  v9 = v8 - v7;
  v10 = *v0;
  v11 = v0[1];
  v12 = MEMORY[0x1E6966688];
  v13 = sub_1DD2BC314(&qword_1EE0275C0, MEMORY[0x1E6966688]);
  OUTLINED_FUNCTION_21_3(v13);
  v14 = OUTLINED_FUNCTION_79();
  sub_1DD28B4F8(v14, v15);
  OUTLINED_FUNCTION_3_4();
  v16 = OUTLINED_FUNCTION_79();
  sub_1DD2BC258(v16, v17, v9, v18, &qword_1EE0275C0, v12);
  v19 = OUTLINED_FUNCTION_79();
  sub_1DD290274(v19, v20);
  OUTLINED_FUNCTION_34_1();
  (*(v4 + 8))(v9, v1);
  OUTLINED_FUNCTION_24_1();
}

void Data.Digest.SHA256.getter()
{
  OUTLINED_FUNCTION_23_0();
  v1 = sub_1DD3364C0();
  v2 = OUTLINED_FUNCTION_1_0(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_12();
  v9 = v8 - v7;
  v10 = *v0;
  v11 = v0[1];
  v12 = MEMORY[0x1E6966620];
  v13 = sub_1DD2BC314(&qword_1ECCD67F0, MEMORY[0x1E6966620]);
  OUTLINED_FUNCTION_21_3(v13);
  v14 = OUTLINED_FUNCTION_79();
  sub_1DD28B4F8(v14, v15);
  OUTLINED_FUNCTION_4_3();
  v16 = OUTLINED_FUNCTION_79();
  sub_1DD2BC258(v16, v17, v9, v18, &qword_1ECCD67F0, v12);
  v19 = OUTLINED_FUNCTION_79();
  sub_1DD290274(v19, v20);
  OUTLINED_FUNCTION_34_1();
  (*(v4 + 8))(v9, v1);
  OUTLINED_FUNCTION_24_1();
}

uint64_t Data.Digest.data.getter()
{
  v1 = *v0;
  sub_1DD28B4F8(*v0, *(v0 + 8));
  return v1;
}

void sub_1DD2BBAD4()
{
  OUTLINED_FUNCTION_16_1();
  if (v3)
  {
    OUTLINED_FUNCTION_15_3();
    if (v5 != v6)
    {
      if (v4 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_14_4();
    }
  }

  else
  {
    v4 = v2;
  }

  sub_1DD28735C(*(v0 + 16), v4, &qword_1ECCD6800, "Pa", MEMORY[0x1E69D28D0]);
  OUTLINED_FUNCTION_10_3();
  v7 = *(sub_1DD336100() - 8);
  if (v1)
  {
    OUTLINED_FUNCTION_26_3(MEMORY[0x1E69D28D0], (*(v7 + 80) + 32) & ~*(v7 + 80));
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_9_4();
  }
}

void sub_1DD2BBBE4(char a1, uint64_t a2, char a3, void *a4)
{
  if (a3)
  {
    OUTLINED_FUNCTION_6_0();
    if (v7 != v8)
    {
      OUTLINED_FUNCTION_30_2();
      if (v7)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_5_1();
    }
  }

  else
  {
    v6 = a2;
  }

  v9 = a4[2];
  if (v6 <= v9)
  {
    v10 = a4[2];
  }

  else
  {
    v10 = v6;
  }

  if (v10)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD6838, &qword_1DD339938);
    v11 = OUTLINED_FUNCTION_39_2();
    v12 = _swift_stdlib_malloc_size(v11);
    v11[2] = v9;
    v11[3] = 2 * ((v12 - 32) / 8);
  }

  else
  {
    v11 = MEMORY[0x1E69E7CC0];
  }

  if (a1)
  {
    if (v11 != a4 || &a4[v9 + 4] <= v11 + 4)
    {
      memmove(v11 + 4, a4 + 4, 8 * v9);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD6840, &qword_1DD339940);
    swift_arrayInitWithCopy();
  }
}

void sub_1DD2BBCF8(char a1, uint64_t a2, char a3, char *a4)
{
  if (a3)
  {
    OUTLINED_FUNCTION_6_0();
    if (v7 != v8)
    {
      OUTLINED_FUNCTION_30_2();
      if (v7)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_5_1();
    }
  }

  else
  {
    v6 = a2;
  }

  v9 = *(a4 + 2);
  if (v6 <= v9)
  {
    v10 = *(a4 + 2);
  }

  else
  {
    v10 = v6;
  }

  if (v10)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD6810, &qword_1DD33AC60);
    v11 = OUTLINED_FUNCTION_39_2();
    _swift_stdlib_malloc_size(v11);
    OUTLINED_FUNCTION_28_3();
    *(v11 + 2) = v9;
    *(v11 + 3) = v12;
  }

  else
  {
    v11 = MEMORY[0x1E69E7CC0];
  }

  v13 = v11 + 32;
  v14 = a4 + 32;
  if (a1)
  {
    if (v11 != a4 || &v14[16 * v9] <= v13)
    {
      memmove(v13, v14, 16 * v9);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v9);
  }
}

void sub_1DD2BBDD0()
{
  OUTLINED_FUNCTION_16_1();
  if (v3)
  {
    OUTLINED_FUNCTION_15_3();
    if (v5 != v6)
    {
      if (v4 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_14_4();
    }
  }

  else
  {
    v4 = v2;
  }

  sub_1DD28735C(*(v0 + 16), v4, &qword_1ECCD6808, &unk_1DD339900, MEMORY[0x1E69D2838]);
  OUTLINED_FUNCTION_10_3();
  v7 = *(sub_1DD335D60() - 8);
  if (v1)
  {
    OUTLINED_FUNCTION_26_3(MEMORY[0x1E69D2838], (*(v7 + 80) + 32) & ~*(v7 + 80));
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_9_4();
  }
}

void sub_1DD2BBEE0(char a1, uint64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  if (a3)
  {
    OUTLINED_FUNCTION_6_0();
    if (v13 != v14)
    {
      OUTLINED_FUNCTION_30_2();
      if (v13)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_5_1();
    }
  }

  else
  {
    v12 = a2;
  }

  v15 = a4[2];
  if (v12 <= v15)
  {
    v16 = a4[2];
  }

  else
  {
    v16 = v12;
  }

  if (v16)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v17 = swift_allocObject();
    v18 = _swift_stdlib_malloc_size(v17);
    v17[2] = v15;
    v17[3] = 2 * ((v18 - 32) / 40);
  }

  else
  {
    v17 = MEMORY[0x1E69E7CC0];
  }

  if (a1)
  {
    if (v17 != a4 || &a4[5 * v15 + 4] <= v17 + 4)
    {
      memmove(v17 + 4, a4 + 4, 40 * v15);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
    swift_arrayInitWithCopy();
  }
}

void *sub_1DD2BC004(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD6930, &qword_1DD339930);
  v4 = OUTLINED_FUNCTION_39_2();
  v5 = _swift_stdlib_malloc_size(v4);
  v4[2] = a1;
  v4[3] = (2 * ((v5 - 32) / 8)) | 1;
  return v4;
}

uint64_t sub_1DD2BC0C4(unint64_t a1, uint64_t a2, unint64_t a3, void (*a4)(void))
{
  if (a3 < a1 || (result = (a4)(0), a1 + *(*(result - 8) + 72) * a2 <= a3))
  {
    a4(0);
    OUTLINED_FUNCTION_32_4();

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (a3 != a1)
  {
    OUTLINED_FUNCTION_32_4();

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

char *sub_1DD2BC18C(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[8 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_2(a3, result);
  }

  return result;
}

char *sub_1DD2BC1AC(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[40 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_2(a3, result);
  }

  return result;
}

char *sub_1DD2BC1D4(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[16 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_2(a3, result);
  }

  return result;
}

unint64_t sub_1DD2BC1F4()
{
  result = qword_1EE0285F0;
  if (!qword_1EE0285F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECCD67E8, &qword_1DD339848);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0285F0);
  }

  return result;
}

void sub_1DD2BC258(uint64_t a1, unint64_t a2, uint64_t a3, void (*a4)(void), unint64_t *a5, void (*a6)(uint64_t))
{
  switch(a2 >> 62)
  {
    case 1uLL:
      v15 = a1 >> 32;
      if (a1 >> 32 < a1)
      {
        goto LABEL_11;
      }

      a1 = a1;
      v13 = a2 & 0x3FFFFFFFFFFFFFFFLL;
      v14 = v15;
      goto LABEL_9;
    case 2uLL:
      v12 = *(a1 + 24);
      v13 = a2 & 0x3FFFFFFFFFFFFFFFLL;
      a1 = *(a1 + 16);
      v14 = v12;
LABEL_9:
      sub_1DD2BC4F4(a1, v14, v13, a3, a4, a5, a6);
      if (v6)
      {
        goto LABEL_10;
      }

      return;
    case 3uLL:
      a1 = 0;
      v11 = 0;
      goto LABEL_5;
    default:
      v11 = a2 & 0xFFFFFFFFFFFFFFLL;
LABEL_5:
      sub_1DD2BC420(a1, v11, a3, a4, a5, a6);
      if (v6)
      {
LABEL_10:

        __break(1u);
LABEL_11:
        __break(1u);
      }

      return;
  }
}

uint64_t sub_1DD2BC314(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t get_enum_tag_for_layout_string_10Foundation4DataV15_RepresentationO(uint64_t a1)
{
  v1 = *(a1 + 8) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

uint64_t sub_1DD2BC378(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xD && *(a1 + 16))
    {
      v2 = *a1 + 12;
    }

    else
    {
      v2 = (((*(a1 + 8) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 8) >> 60) & 3))) ^ 0xF;
      if (v2 >= 0xC)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return v2 + 1;
}

uint64_t sub_1DD2BC3C4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *result = a2 - 13;
    *(result + 8) = 0;
    if (a3 >= 0xD)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

uint64_t sub_1DD2BC420(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void), unint64_t *a5, void (*a6)(uint64_t))
{
  v10 = *MEMORY[0x1E69E9840];
  a4(0);
  sub_1DD2BC314(a5, a6);
  result = sub_1DD336480();
  v9 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1DD2BC4F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void), unint64_t *a6, void (*a7)(uint64_t))
{
  result = sub_1DD3344A0();
  if (!result || (result = sub_1DD3344C0(), !__OFSUB__(a1, result)))
  {
    if (!__OFSUB__(a2, a1))
    {
      sub_1DD3344B0();
      a5(0);
      sub_1DD2BC314(a6, a7);
      return sub_1DD336480();
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t getEnumTagSinglePayload for ClientName(unsigned int *a1, int a2)
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

_BYTE *sub_1DD2BC63C(_BYTE *result, int a2, int a3)
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

uint64_t sub_1DD2BC6F0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = sub_1DD335860();
  return sub_1DD2BC764(v4);
}

uint64_t sub_1DD2BC71C()
{
  v1 = OBJC_IVAR___SRRReferenceResolutionClientInternal_referenceResolutionClient;
  swift_beginAccess();
  v2 = *(v0 + v1);
  return sub_1DD335860();
}

uint64_t sub_1DD2BC764(uint64_t a1)
{
  v3 = OBJC_IVAR___SRRReferenceResolutionClientInternal_referenceResolutionClient;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_1DD2BC81C()
{
  v0 = sub_1DD335CD0();
  __swift_allocate_value_buffer(v0, qword_1ECCD7278);
  __swift_project_value_buffer(v0, qword_1ECCD7278);
  type metadata accessor for ReferenceResolutionClientInternal();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD6878, qword_1DD339A28);
  sub_1DD336630();
  return sub_1DD335CC0();
}

id ReferenceResolutionClientInternal.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ReferenceResolutionClientInternal.init()()
{
  type metadata accessor for ReferenceResolutionClient();
  *&v0[OBJC_IVAR___SRRReferenceResolutionClientInternal_referenceResolutionClient] = ReferenceResolutionClient.__allocating_init()();
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ReferenceResolutionClientInternal();
  return objc_msgSendSuper2(&v2, sel_init);
}

id ReferenceResolutionClientInternal.__allocating_init(referenceResolutionClient:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  *&v3[OBJC_IVAR___SRRReferenceResolutionClientInternal_referenceResolutionClient] = a1;
  v5.receiver = v3;
  v5.super_class = v1;
  return objc_msgSendSuper2(&v5, sel_init);
}

id ReferenceResolutionClientInternal.init(referenceResolutionClient:)(uint64_t a1)
{
  *&v1[OBJC_IVAR___SRRReferenceResolutionClientInternal_referenceResolutionClient] = a1;
  v3.receiver = v1;
  v3.super_class = type metadata accessor for ReferenceResolutionClientInternal();
  return objc_msgSendSuper2(&v3, sel_init);
}

uint64_t sub_1DD2BCA4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[10] = a5;
  v6[11] = a6;
  v6[9] = a4;
  v7 = sub_1DD336220();
  v6[12] = v7;
  v8 = *(v7 - 8);
  v6[13] = v8;
  v9 = *(v8 + 64) + 15;
  v6[14] = swift_task_alloc();
  v6[15] = swift_task_alloc();
  v6[16] = swift_task_alloc();
  v10 = sub_1DD335D10();
  v6[17] = v10;
  v11 = *(v10 - 8);
  v6[18] = v11;
  v12 = *(v11 + 64) + 15;
  v6[19] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DD2BCB84, 0, 0);
}

uint64_t sub_1DD2BCB84()
{
  OUTLINED_FUNCTION_48();
  if (qword_1ECCD6240 != -1)
  {
    OUTLINED_FUNCTION_0_3();
  }

  v1 = sub_1DD335CD0();
  v0[20] = __swift_project_value_buffer(v1, qword_1ECCD7278);
  v2 = sub_1DD335CB0();
  v3 = sub_1DD336930();
  if (OUTLINED_FUNCTION_17_0(v3))
  {
    v4 = OUTLINED_FUNCTION_69();
    OUTLINED_FUNCTION_68(v4);
    OUTLINED_FUNCTION_16_2(&dword_1DD27A000, v5, v3, "starting collectSalientEntityStrings task");
    OUTLINED_FUNCTION_28_1();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD6838, &qword_1DD339938);
  v6 = swift_allocObject();
  v0[21] = v6;
  *(v6 + 16) = xmmword_1DD339380;
  *(v6 + 32) = sub_1DD336530();
  v7 = swift_task_alloc();
  v0[22] = v7;
  *v7 = v0;
  v7[1] = sub_1DD2BCCF4;
  v8 = v0[9];

  return sub_1DD2BD6B0((v0 + 5), v8);
}

uint64_t sub_1DD2BCCF4()
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_81();
  v3 = *(v2 + 176);
  v4 = *v1;
  OUTLINED_FUNCTION_0();
  *v5 = v4;
  *(v6 + 184) = v0;

  if (v0)
  {
    v7 = sub_1DD2BD4B4;
  }

  else
  {
    v7 = sub_1DD2BCDF8;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

void sub_1DD2BCDF8()
{
  v89 = v1;
  v2 = v1[5];
  v3 = v2[2];
  v80 = v2;
  if (v3)
  {
    v4 = v1[18];
    v83 = *(v4 + 16);
    v5 = v2 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v87 = (v1[13] + 8);
    v81 = (v4 + 8);
    v82 = *(v4 + 72);
    v6 = v1[21];

    while (1)
    {
      v85 = v3;
      v86 = v6;
      v7 = v1[16];
      v8 = v1[12];
      v84 = v5;
      v83(v1[19], v5, v1[17]);
      v9 = sub_1DD336530();
      sub_1DD335D00();
      v10 = sub_1DD336210();
      v12 = v11;
      v13 = *v87;
      (*v87)(v7, v8);
      if (v12)
      {
        v14 = v10;
      }

      else
      {
        v14 = 0x6E776F6E6B6E75;
      }

      if (v12)
      {
        v15 = v12;
      }

      else
      {
        v15 = 0xE700000000000000;
      }

      swift_isUniquelyReferenced_nonNull_native();
      v88 = v9;
      OUTLINED_FUNCTION_13_3();
      v16 = sub_1DD28EFFC();
      if (__OFADD__(*(v9 + 16), (v17 & 1) == 0))
      {
        __break(1u);
LABEL_49:
        __break(1u);
LABEL_50:
        __break(1u);
LABEL_51:
        __break(1u);
LABEL_52:
        __break(1u);
LABEL_53:
        __break(1u);
        return;
      }

      v18 = v16;
      v19 = v17;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD6870, &qword_1DD339A20);
      v20 = v88;
      if (sub_1DD336CC0())
      {
        OUTLINED_FUNCTION_13_3();
        v21 = sub_1DD28EFFC();
        if ((v19 & 1) != (v22 & 1))
        {
          goto LABEL_38;
        }

        v18 = v21;
      }

      if (v19)
      {
        v23 = (*(v88 + 56) + 16 * v18);
        v24 = v23[1];
        *v23 = v14;
        v23[1] = v15;
      }

      else
      {
        OUTLINED_FUNCTION_9_5(v88 + 8 * (v18 >> 6));
        v25 = (*(v88 + 48) + 16 * v18);
        *v25 = 0x6570795461746164;
        v25[1] = 0xE800000000000000;
        v26 = (*(v20 + 56) + 16 * v18);
        *v26 = v14;
        v26[1] = v15;
        v27 = *(v20 + 16);
        v28 = __OFADD__(v27, 1);
        v29 = v27 + 1;
        if (v28)
        {
          goto LABEL_51;
        }

        *(v20 + 16) = v29;
      }

      v30 = v1[19];
      v31 = v1[15];
      v32 = v1[12];
      sub_1DD335D00();
      sub_1DD336180();
      v33 = OUTLINED_FUNCTION_15_4();
      v13(v33);
      swift_isUniquelyReferenced_nonNull_native();
      v88 = v20;
      OUTLINED_FUNCTION_6_3();
      OUTLINED_FUNCTION_12_4();
      if (v28)
      {
        goto LABEL_49;
      }

      v34 = v88;
      if (OUTLINED_FUNCTION_22_4())
      {
        v35 = OUTLINED_FUNCTION_6_3();
        if ((v15 & 1) != (v36 & 1))
        {
          goto LABEL_38;
        }

        v32 = v35;
      }

      if (v15)
      {
        v37 = (*(v88 + 56) + 16 * v32);
        v38 = v37[1];
        *v37 = v19;
        v37[1] = v18;
      }

      else
      {
        OUTLINED_FUNCTION_9_5(v88 + 8 * (v32 >> 6));
        v39 = (*(v88 + 48) + 16 * v32);
        *v39 = 0x6C646E7542707061;
        v39[1] = 0xEB00000000644965;
        v40 = (*(v34 + 56) + 16 * v32);
        *v40 = v19;
        v40[1] = v18;
        v41 = *(v34 + 16);
        v28 = __OFADD__(v41, 1);
        v42 = v41 + 1;
        if (v28)
        {
          goto LABEL_52;
        }

        *(v34 + 16) = v42;
      }

      v43 = v1[19];
      v44 = v1[14];
      v45 = v1[12];
      sub_1DD335D00();
      sub_1DD336200();
      v46 = OUTLINED_FUNCTION_15_4();
      v13(v46);
      swift_isUniquelyReferenced_nonNull_native();
      v88 = v34;
      sub_1DD28EFFC();
      OUTLINED_FUNCTION_12_4();
      if (v28)
      {
        goto LABEL_50;
      }

      v47 = v88;
      if (OUTLINED_FUNCTION_22_4())
      {
        v48 = sub_1DD28EFFC();
        if ((v15 & 1) != (v49 & 1))
        {
LABEL_38:

          sub_1DD336E30();
          return;
        }

        v45 = v48;
      }

      if (v15)
      {
        v50 = (*(v88 + 56) + 16 * v45);
        v51 = v50[1];
        *v50 = v19;
        v50[1] = v18;
      }

      else
      {
        OUTLINED_FUNCTION_9_5(v88 + 8 * (v45 >> 6));
        v52 = (*(v88 + 48) + 16 * v45);
        *v52 = 25705;
        v52[1] = 0xE200000000000000;
        v53 = (*(v47 + 56) + 16 * v45);
        *v53 = v19;
        v53[1] = v18;
        v54 = *(v47 + 16);
        v28 = __OFADD__(v54, 1);
        v55 = v54 + 1;
        if (v28)
        {
          goto LABEL_53;
        }

        *(v47 + 16) = v55;
      }

      v6 = v86;
      v0 = v86[2];
      v56 = v86[3];
      if (v0 >= v56 >> 1)
      {
        sub_1DD2BBBE4(v56 > 1, (v0 + 1), 1, v86);
        v6 = v57;
      }

      (*v81)(v1[19], v1[17]);
      v6[2] = v0 + 1;
      v6[v0 + 4] = v47;
      v5 = &v84[v82];
      v3 = v85 - 1;
      if (v85 == 1)
      {
        sub_1DD2BED74(v80, 0);
        goto LABEL_41;
      }
    }
  }

  v6 = v1[21];
LABEL_41:
  v58 = v1[20];
  v59 = sub_1DD335CB0();
  v60 = sub_1DD336930();
  if (os_log_type_enabled(v59, v60))
  {
    v61 = OUTLINED_FUNCTION_69();
    OUTLINED_FUNCTION_68(v61);
    _os_log_impl(&dword_1DD27A000, v59, v60, "collectSalientEntityStrings has received entities", v0, 2u);
    OUTLINED_FUNCTION_28_1();
  }

  v62 = v1[20];

  v63 = sub_1DD335CB0();
  v64 = sub_1DD336930();
  if (OUTLINED_FUNCTION_17_0(v64))
  {
    v65 = OUTLINED_FUNCTION_50();
    v66 = swift_slowAlloc();
    v88 = v66;
    *v65 = 136315138;

    v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD6840, &qword_1DD339940);
    v68 = MEMORY[0x1E12AC670](v6, v67);
    v70 = v69;

    v71 = sub_1DD27DBF0(v68, v70, &v88);

    *(v65 + 4) = v71;
    _os_log_impl(&dword_1DD27A000, v63, v64, "Entities: %s", v65, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v66);
    OUTLINED_FUNCTION_54();
    OUTLINED_FUNCTION_54();
  }

  v73 = v1[10];
  v72 = v1[11];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD6840, &qword_1DD339940);
  v74 = sub_1DD336800();

  v73(v74);
  sub_1DD2BED74(v80, 0);

  v75 = v1[19];
  v76 = v1[15];
  v77 = v1[16];
  v78 = v1[14];

  OUTLINED_FUNCTION_3_5();

  v79();
}

uint64_t sub_1DD2BD4B4()
{
  OUTLINED_FUNCTION_10_4();
  v27 = v0;
  v1 = v0[23];
  v0[7] = v1;
  v2 = v0[20];
  v3 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD6568, &unk_1DD3397B0);
  swift_willThrowTypedImpl();
  v4 = v1;
  v5 = sub_1DD335CB0();
  v6 = sub_1DD336960();
  sub_1DD2BED74(v1, 1);
  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[23];
    v8 = OUTLINED_FUNCTION_50();
    v9 = swift_slowAlloc();
    v26 = v9;
    *v8 = 136315138;
    swift_getErrorValue();
    v11 = v0[2];
    v10 = v0[3];
    v12 = v0[4];
    v13 = sub_1DD336E40();
    v15 = sub_1DD27DBF0(v13, v14, &v26);

    *(v8 + 4) = v15;
    _os_log_impl(&dword_1DD27A000, v5, v6, "Error: %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v9);
    OUTLINED_FUNCTION_54();
    OUTLINED_FUNCTION_54();
  }

  v16 = v0[21];
  v18 = v0[10];
  v17 = v0[11];
  sub_1DD2BE784();
  v19 = MEMORY[0x1E12AC8C0](MEMORY[0x1E69E7CC0]);
  v18(v19);
  sub_1DD2BED74(v1, 1);

  sub_1DD2BED74(v1, 1);

  v20 = v0[19];
  v21 = v0[15];
  v22 = v0[16];
  v23 = v0[14];

  OUTLINED_FUNCTION_3_5();

  return v24();
}

uint64_t sub_1DD2BD6B0(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD6348, &unk_1DD338E20) - 8) + 64) + 15;
  v2[4] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DD2BD74C, 0, 0);
}

uint64_t sub_1DD2BD74C()
{
  OUTLINED_FUNCTION_48();
  v1 = v0[3];
  v2 = v0[4];
  v3 = sub_1DD336240();
  __swift_storeEnumTagSinglePayload(v2, 1, 1, v3);
  v9 = (*v1 + 280);
  v10 = (*v9 + **v9);
  v4 = (*v9)[1];
  v5 = swift_task_alloc();
  v0[5] = v5;
  *v5 = v0;
  v5[1] = sub_1DD2BD89C;
  v7 = v0[3];
  v6 = v0[4];

  return v10(v6);
}

uint64_t sub_1DD2BD89C(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;
  OUTLINED_FUNCTION_0();
  *v6 = v5;
  v7 = *(v4 + 40);
  *v6 = *v2;
  *(v5 + 48) = v1;

  v8 = *(v4 + 32);
  if (v1)
  {
    sub_1DD2825F0(v8, &qword_1ECCD6348, &unk_1DD338E20);
    v9 = sub_1DD2BDA64;
  }

  else
  {
    *(v5 + 56) = a1;
    sub_1DD2825F0(v8, &qword_1ECCD6348, &unk_1DD338E20);
    v9 = sub_1DD2BD9FC;
  }

  return MEMORY[0x1EEE6DFA0](v9, 0, 0);
}

uint64_t sub_1DD2BD9FC()
{
  OUTLINED_FUNCTION_4();
  v1 = *(v0 + 32);
  **(v0 + 16) = *(v0 + 56);

  OUTLINED_FUNCTION_3_5();

  return v2();
}

uint64_t sub_1DD2BDA64()
{
  OUTLINED_FUNCTION_4();
  v1 = *(v0 + 32);

  OUTLINED_FUNCTION_3_5();
  v3 = *(v0 + 48);

  return v2();
}

uint64_t sub_1DD2BDAC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD6858, "Ta");
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = v26 - v11;
  sub_1DD2BEC60(a3, v26 - v11);
  v13 = sub_1DD3368E0();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);
  sub_1DD335860();
  if (EnumTagSinglePayload == 1)
  {
    sub_1DD2825F0(v12, &qword_1ECCD6858, "Ta");
  }

  else
  {
    sub_1DD3368D0();
    (*(*(v13 - 8) + 8))(v12, v13);
  }

  v16 = *(a5 + 16);
  v15 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_1DD336890();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = sub_1DD336650() + 32;
      v21 = swift_allocObject();
      *(v21 + 16) = a4;
      *(v21 + 24) = a5;
      sub_1DD335860();
      if (v19 | v17)
      {
        v27[0] = 0;
        v27[1] = 0;
        v22 = v27;
        v27[2] = v17;
        v27[3] = v19;
      }

      else
      {
        v22 = 0;
      }

      v26[1] = 7;
      v26[2] = v22;
      v26[3] = v20;
      v24 = swift_task_create();

      sub_1DD2825F0(a3, &qword_1ECCD6858, "Ta");

      return v24;
    }
  }

  else
  {
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1DD2825F0(a3, &qword_1ECCD6858, "Ta");
  v23 = swift_allocObject();
  *(v23 + 16) = a4;
  *(v23 + 24) = a5;
  if (v19 | v17)
  {
    v27[4] = 0;
    v27[5] = 0;
    v27[6] = v17;
    v27[7] = v19;
  }

  return swift_task_create();
}

void sub_1DD2BDDF0(void (*a1)(void), uint64_t a2, const char *a3, uint64_t a4, uint64_t a5)
{
  v8 = v5;
  ObjectType = swift_getObjectType();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD6858, "Ta");
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v31 - v14;
  if (qword_1ECCD6240 != -1)
  {
    OUTLINED_FUNCTION_0_3();
  }

  v16 = sub_1DD335CD0();
  v31 = __swift_project_value_buffer(v16, qword_1ECCD7278);
  v17 = sub_1DD335CB0();
  v18 = sub_1DD336930();
  if (OUTLINED_FUNCTION_17_0(v18))
  {
    v19 = OUTLINED_FUNCTION_69();
    *v19 = 0;
    _os_log_impl(&dword_1DD27A000, v17, v18, a3, v19, 2u);
    OUTLINED_FUNCTION_54();
  }

  v20 = OBJC_IVAR___SRRReferenceResolutionClientInternal_referenceResolutionClient;
  swift_beginAccess();
  v21 = *(v8 + v20);
  sub_1DD335860();
  v22 = sub_1DD27D638();

  if (v22)
  {
    v23 = sub_1DD3368E0();
    __swift_storeEnumTagSinglePayload(v15, 1, 1, v23);
    v24 = swift_allocObject();
    v24[2] = 0;
    v24[3] = 0;
    v24[4] = v22;
    v24[5] = a1;
    v24[6] = a2;
    v24[7] = ObjectType;
    sub_1DD335860();
    sub_1DD2BDAC0(0, 0, v15, a5, v24);
  }

  else
  {
    v25 = a1;
    v26 = sub_1DD335CB0();
    v27 = sub_1DD336960();
    if (OUTLINED_FUNCTION_17_0(v27))
    {
      v28 = OUTLINED_FUNCTION_69();
      OUTLINED_FUNCTION_68(v28);
      OUTLINED_FUNCTION_16_2(&dword_1DD27A000, v29, v27, "Failed to collect salient entities because SiriReferenceResolutionService failed to initialize");
      OUTLINED_FUNCTION_28_1();
    }

    sub_1DD2BE784();
    v30 = MEMORY[0x1E12AC8C0](MEMORY[0x1E69E7CC0]);
    v25();
  }
}

uint64_t sub_1DD2BE078(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[7] = a5;
  v6[8] = a6;
  v6[6] = a4;
  return MEMORY[0x1EEE6DFA0](sub_1DD2BE09C, 0, 0);
}

uint64_t sub_1DD2BE09C()
{
  if (qword_1ECCD6240 != -1)
  {
    OUTLINED_FUNCTION_0_3();
  }

  v1 = sub_1DD335CD0();
  v0[9] = __swift_project_value_buffer(v1, qword_1ECCD7278);
  v2 = sub_1DD335CB0();
  v3 = sub_1DD336930();
  if (OUTLINED_FUNCTION_17_0(v3))
  {
    v4 = OUTLINED_FUNCTION_69();
    OUTLINED_FUNCTION_68(v4);
    OUTLINED_FUNCTION_16_2(&dword_1DD27A000, v5, v3, "starting collectOnScreenEntityStrings task");
    OUTLINED_FUNCTION_28_1();
  }

  v6 = v0[6];

  v7 = *(*v6 + 288);
  v12 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  v0[10] = v9;
  *v9 = v0;
  v9[1] = sub_1DD2BE240;
  v10 = v0[6];

  return v12();
}

uint64_t sub_1DD2BE240()
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_81();
  v3 = v2;
  v4 = *(v2 + 80);
  v8 = *v1;
  *(v3 + 88) = v5;
  *(v3 + 96) = v0;

  if (v0)
  {
    v6 = sub_1DD2BE480;
  }

  else
  {
    v6 = sub_1DD2BE34C;
  }

  return MEMORY[0x1EEE6DFA0](v6, 0, 0);
}

uint64_t sub_1DD2BE34C()
{
  OUTLINED_FUNCTION_10_4();
  v16 = v0;
  v1 = v0[11];
  v2 = v0[9];

  v3 = sub_1DD335CB0();
  v4 = sub_1DD336930();
  v5 = OUTLINED_FUNCTION_17_0(v4);
  v6 = v0[11];
  if (v5)
  {
    v7 = OUTLINED_FUNCTION_50();
    *v7 = 134217984;
    *(v7 + 4) = *(v6 + 16);

    _os_log_impl(&dword_1DD27A000, v3, v4, "collectOnScreenEntityStrings has received words, type count: %ld", v7, 0xCu);
    OUTLINED_FUNCTION_54();
  }

  else
  {
    v8 = v0[11];
  }

  v9 = v0[11];
  v11 = v0[7];
  v10 = v0[8];
  sub_1DD2BE784();
  v15[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD6868, &qword_1DD3399E8);
  v15[0] = v9;
  v12 = sub_1DD2BE600(v15);
  v11();

  OUTLINED_FUNCTION_3_5();

  return v13();
}

uint64_t sub_1DD2BE480()
{
  OUTLINED_FUNCTION_10_4();
  v22 = v0;
  v1 = v0[12];
  v2 = v0[9];
  v3 = v1;
  v4 = sub_1DD335CB0();
  v5 = sub_1DD336960();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[12];
    v7 = OUTLINED_FUNCTION_50();
    v8 = swift_slowAlloc();
    v21 = v8;
    *v7 = 136315138;
    swift_getErrorValue();
    v10 = v0[2];
    v9 = v0[3];
    v11 = v0[4];
    v12 = sub_1DD336E40();
    v14 = sub_1DD27DBF0(v12, v13, &v21);

    *(v7 + 4) = v14;
    _os_log_impl(&dword_1DD27A000, v4, v5, "Error: %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v8);
    OUTLINED_FUNCTION_54();
    OUTLINED_FUNCTION_54();
  }

  v15 = v0[12];
  v17 = v0[7];
  v16 = v0[8];
  sub_1DD2BE784();
  v18 = MEMORY[0x1E12AC8C0](MEMORY[0x1E69E7CC0]);
  v17();

  OUTLINED_FUNCTION_3_5();

  return v19();
}

id sub_1DD2BE600(uint64_t *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v2 = sub_1DD336DE0();
  v3 = [swift_getObjCClassFromMetadata() arrayWithObject_];
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v3;
}

uint64_t sub_1DD2BE6AC(void *a1, int a2, void *aBlock, uint64_t a4, uint64_t a5, void (*a6)(uint64_t, uint64_t))
{
  v9 = _Block_copy(aBlock);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  v11 = a1;
  a6(a5, v10);
}

id ReferenceResolutionClientInternal.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ReferenceResolutionClientInternal();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_1DD2BE784()
{
  result = qword_1ECCD6860;
  if (!qword_1ECCD6860)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ECCD6860);
  }

  return result;
}

uint64_t sub_1DD2BE7C8()
{
  OUTLINED_FUNCTION_10_4();
  OUTLINED_FUNCTION_20_4();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_2(v0);
  *v1 = v2;
  v1[1] = sub_1DD2BE86C;
  OUTLINED_FUNCTION_4_4();
  OUTLINED_FUNCTION_14_5();

  return sub_1DD2BCA4C(v3, v4, v5, v6, v7, v8);
}

uint64_t sub_1DD2BE86C()
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_81();
  v2 = *(v1 + 16);
  v3 = *v0;
  OUTLINED_FUNCTION_0();
  *v4 = v3;

  OUTLINED_FUNCTION_3_5();

  return v5();
}

uint64_t objectdestroyTm()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[6];

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_1DD2BE994()
{
  OUTLINED_FUNCTION_10_4();
  OUTLINED_FUNCTION_20_4();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_2(v0);
  *v1 = v2;
  v1[1] = sub_1DD2BEDE4;
  OUTLINED_FUNCTION_4_4();
  OUTLINED_FUNCTION_14_5();

  return sub_1DD2BE078(v3, v4, v5, v6, v7, v8);
}

uint64_t sub_1DD2BEB7C()
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_81();
  v2 = *(v1 + 16);
  v3 = *v0;
  OUTLINED_FUNCTION_0();
  *v4 = v3;

  OUTLINED_FUNCTION_3_5();

  return v5();
}

uint64_t sub_1DD2BEC60(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD6858, "Ta");
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DD2BECD0()
{
  OUTLINED_FUNCTION_48();
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_2(v3);
  *v4 = v5;
  v4[1] = sub_1DD2BE86C;
  v6 = OUTLINED_FUNCTION_4_4();

  return v7(v6);
}

void sub_1DD2BED74(id a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
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

uint64_t sub_1DD2BEE14()
{
  v0 = sub_1DD335CD0();
  __swift_allocate_value_buffer(v0, qword_1EE027D90);
  __swift_project_value_buffer(v0, qword_1EE027D90);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD6888, &unk_1DD339A50);
  sub_1DD336630();
  return sub_1DD335CC0();
}

id sub_1DD2BEEB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1DD336620();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = 0;
  if ([objc_opt_self() isSupportedUser])
  {
    v8 = sub_1DD334490();
    v9 = *(v8 + 48);
    v10 = *(v8 + 52);
    swift_allocObject();
    sub_1DD334480();
    sub_1DD336250();
    sub_1DD2BF318();
    v11 = &unk_1DD339000;
    v12 = sub_1DD334470();
    v14 = v13;

    sub_1DD336610();
    v15 = sub_1DD3365F0();
    if (v16)
    {
      v17 = v16;
      v41 = v14;
      v18 = v15;
      if (qword_1EE027D88 != -1)
      {
        OUTLINED_FUNCTION_0_4();
      }

      v19 = sub_1DD335CD0();
      __swift_project_value_buffer(v19, qword_1EE027D90);

      v20 = sub_1DD335CB0();
      v21 = sub_1DD336940();

      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        v23 = swift_slowAlloc();
        v42[0] = v23;
        *v22 = 136315138;
        *(v22 + 4) = sub_1DD27DBF0(v18, v17, v42);
        _os_log_impl(&dword_1DD27A000, v20, v21, "Going to write resolve response to Feature Store %s", v22, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v23);
        OUTLINED_FUNCTION_54();
        v11 = &unk_1DD339000;
        OUTLINED_FUNCTION_54();
      }

      v24 = objc_allocWithZone(MEMORY[0x1E699C0D0]);

      v25 = sub_1DD2BF6B8(v18, v17, a2, a3, 1);
      if (v25)
      {
        v7 = v25;
        sub_1DD2BF370(0xD000000000000011, 0x80000001DD33D610, v25);
        sub_1DD290274(v12, v41);
        return v7;
      }

      sub_1DD2BF7C4();
      v26 = swift_allocError();
      *v30 = 1;
      swift_willThrow();
      v28 = v12;
      v29 = v41;
    }

    else
    {
      sub_1DD2BF7C4();
      v26 = swift_allocError();
      *v27 = 0;
      swift_willThrow();
      v28 = v12;
      v29 = v14;
    }

    sub_1DD290274(v28, v29);
    if (qword_1EE027D88 != -1)
    {
      OUTLINED_FUNCTION_0_4();
    }

    v31 = sub_1DD335CD0();
    __swift_project_value_buffer(v31, qword_1EE027D90);
    v32 = v26;
    v33 = sub_1DD335CB0();
    v34 = sub_1DD336950();

    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v42[0] = v36;
      *v35 = v11[51];
      swift_getErrorValue();
      v37 = sub_1DD336E40();
      v39 = sub_1DD27DBF0(v37, v38, v42);

      *(v35 + 4) = v39;
      _os_log_impl(&dword_1DD27A000, v33, v34, "Failed to write resolve response to Feature Store, %s", v35, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v36);
      OUTLINED_FUNCTION_54();
      OUTLINED_FUNCTION_54();
    }

    else
    {
    }

    return 0;
  }

  return v7;
}

unint64_t sub_1DD2BF318()
{
  result = qword_1EE027A68;
  if (!qword_1EE027A68)
  {
    sub_1DD336250();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE027A68);
  }

  return result;
}

void sub_1DD2BF370(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v16[1] = *MEMORY[0x1E69E9840];
  v6 = objc_opt_self();
  v7 = sub_1DD2BF818(a1, a2, v6);
  if (v7 || (v7 = sub_1DD2BF570()) != 0)
  {
    v8 = v7;
    v16[0] = 0;
    if ([v7 insert:a3 error:v16])
    {
      v9 = v16[0];
    }

    else
    {
      v10 = v16[0];
      sub_1DD334670();

      swift_willThrow();
    }
  }

  else
  {
    if (qword_1EE027D88 != -1)
    {
      swift_once();
    }

    v12 = sub_1DD335CD0();
    __swift_project_value_buffer(v12, qword_1EE027D90);

    v8 = sub_1DD335CB0();
    v13 = sub_1DD336950();

    if (os_log_type_enabled(v8, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v16[0] = v15;
      *v14 = 136315138;
      *(v14 + 4) = sub_1DD27DBF0(a1, a2, v16);
      _os_log_impl(&dword_1DD27A000, v8, v13, "Failed to write to Feature Store because the stream %s cannot be found or created", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v15);
      MEMORY[0x1E12ADA30](v15, -1, -1);
      MEMORY[0x1E12ADA30](v14, -1, -1);
    }
  }

  v11 = *MEMORY[0x1E69E9840];
}

id sub_1DD2BF570()
{
  v0 = objc_allocWithZone(MEMORY[0x1E699C0D8]);
  v1 = sub_1DD2BF760(0xD000000000000011, 0x80000001DD33D610);
  if (qword_1EE027D88 != -1)
  {
    OUTLINED_FUNCTION_0_4();
  }

  v2 = sub_1DD335CD0();
  __swift_project_value_buffer(v2, qword_1EE027D90);
  v3 = sub_1DD335CB0();
  v4 = sub_1DD336930();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v8 = v6;
    *v5 = 136315138;
    *(v5 + 4) = sub_1DD27DBF0(0xD000000000000011, 0x80000001DD33D610, &v8);
    _os_log_impl(&dword_1DD27A000, v3, v4, "Successfully created Feature Store stream %s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v6);
    OUTLINED_FUNCTION_54();
    OUTLINED_FUNCTION_54();
  }

  return v1;
}

id sub_1DD2BF6B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!a2)
  {
    v8 = 0;
    if (a4)
    {
      goto LABEL_3;
    }

LABEL_5:
    v9 = 0;
    goto LABEL_6;
  }

  v8 = sub_1DD3365A0();

  if (!a4)
  {
    goto LABEL_5;
  }

LABEL_3:
  v9 = sub_1DD3365A0();

LABEL_6:
  v10 = [v5 initWithJsonStr:v8 interactionId:v9 dataVersion:a5];

  return v10;
}

id sub_1DD2BF760(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = sub_1DD3365A0();
  }

  else
  {
    v3 = 0;
  }

  v4 = [v2 initWithStreamId_];

  return v4;
}

unint64_t sub_1DD2BF7C4()
{
  result = qword_1ECCD6880;
  if (!qword_1ECCD6880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCD6880);
  }

  return result;
}

id sub_1DD2BF818(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_1DD3365A0();
  v5 = [a3 getWithStreamId_];

  return v5;
}

uint64_t RRIFUIContextPuller.__allocating_init()()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  RRIFUIContextPuller.init()();
  return v3;
}

uint64_t RRIFUIContextPuller.init()()
{
  v1 = sub_1DD335CD0();
  v2 = OUTLINED_FUNCTION_1_0(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_12();
  v9 = v8 - v7;
  v10 = v0 + OBJC_IVAR____TtC23SiriReferenceResolution19RRIFUIContextPuller_featureFlags;
  *(v10 + 24) = &type metadata for SRRFeatureFlagsImpl;
  *(v10 + 32) = &protocol witness table for SRRFeatureFlagsImpl;
  v11 = sub_1DD335AD0();
  OUTLINED_FUNCTION_59(v11);
  swift_allocObject();
  *(v0 + OBJC_IVAR____TtC23SiriReferenceResolution19RRIFUIContextPuller_client) = sub_1DD335AC0();
  type metadata accessor for RRIFUIContextPuller();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD6890, &qword_1DD339A90);
  sub_1DD336630();
  sub_1DD335CC0();
  (*(v4 + 32))(v0 + OBJC_IVAR____TtC23SiriReferenceResolution19RRIFUIContextPuller_logger, v9, v1);
  return v0;
}

uint64_t type metadata accessor for RRIFUIContextPuller()
{
  result = qword_1EE027FB0;
  if (!qword_1EE027FB0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1DD2BFA58()
{
  OUTLINED_FUNCTION_4();
  v1[8] = v2;
  v1[9] = v0;
  v3 = sub_1DD3357C0();
  v1[10] = v3;
  OUTLINED_FUNCTION_69_0(v3);
  v1[11] = v4;
  v6 = *(v5 + 64);
  v1[12] = OUTLINED_FUNCTION_71();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD6898, &unk_1DD339AA0);
  v1[13] = v7;
  OUTLINED_FUNCTION_36(v7);
  v9 = *(v8 + 64);
  v1[14] = OUTLINED_FUNCTION_71();
  v10 = sub_1DD335C60();
  v1[15] = v10;
  OUTLINED_FUNCTION_69_0(v10);
  v1[16] = v11;
  v13 = *(v12 + 64);
  v1[17] = OUTLINED_FUNCTION_71();
  v14 = sub_1DD335B10();
  v1[18] = v14;
  OUTLINED_FUNCTION_69_0(v14);
  v1[19] = v15;
  v17 = *(v16 + 64) + 15;
  v1[20] = swift_task_alloc();
  v1[21] = swift_task_alloc();
  v1[22] = swift_task_alloc();
  v18 = sub_1DD335CA0();
  v1[23] = v18;
  OUTLINED_FUNCTION_69_0(v18);
  v1[24] = v19;
  v21 = *(v20 + 64);
  v1[25] = OUTLINED_FUNCTION_71();

  return MEMORY[0x1EEE6DFA0](sub_1DD2BFC38, 0, 0);
}

uint64_t sub_1DD2BFC38()
{
  if (qword_1EE027818 != -1)
  {
    swift_once();
  }

  v1 = v0[25];
  v2 = v0[9];
  v3 = qword_1EE02A220;
  sub_1DD335C90();
  sub_1DD336A40();
  v4 = qword_1EE02A220;
  sub_1DD335C70();

  v0[26] = OBJC_IVAR____TtC23SiriReferenceResolution19RRIFUIContextPuller_logger;
  v5 = sub_1DD335CB0();
  v6 = sub_1DD336940();
  if (OUTLINED_FUNCTION_34(v6))
  {
    v7 = OUTLINED_FUNCTION_69();
    OUTLINED_FUNCTION_68(v7);
    OUTLINED_FUNCTION_13_1();
    _os_log_impl(v8, v9, v10, v11, v12, 2u);
    OUTLINED_FUNCTION_20();
    MEMORY[0x1E12ADA30](v13, v14, v15);
  }

  v16 = v0[9];

  v17 = *(MEMORY[0x1E69D3548] + 4);
  sub_1DD335860();
  v18 = swift_task_alloc();
  v0[27] = v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD68A0, &unk_1DD339AD8);
  *v18 = v0;
  v18[1] = sub_1DD2BFE2C;
  v20 = v0[9];
  v21.n128_u64[0] = 0.5;

  return MEMORY[0x1EEE40F70](v0 + 5, &unk_1DD339AD0, v20, v19, v21);
}

uint64_t sub_1DD2BFE2C()
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_81();
  v3 = v2;
  v4 = *(v2 + 216);
  v5 = *v1;
  OUTLINED_FUNCTION_0();
  *v6 = v5;
  *(v3 + 224) = v0;

  if (v0)
  {
    v7 = sub_1DD2C087C;
  }

  else
  {
    v8 = *(v3 + 72);

    v7 = sub_1DD2BFF38;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

void sub_1DD2BFF38()
{
  v137 = v0;
  v1 = v0[5];
  v2 = v0[9] + v0[26];
  if (!v1)
  {
    v89 = sub_1DD335CB0();
    v90 = sub_1DD336930();
    if (OUTLINED_FUNCTION_34(v90))
    {
      v91 = OUTLINED_FUNCTION_69();
      OUTLINED_FUNCTION_68(v91);
      OUTLINED_FUNCTION_13_1();
      _os_log_impl(v92, v93, v94, v95, v96, 2u);
      OUTLINED_FUNCTION_20();
      MEMORY[0x1E12ADA30]();
    }

    v134 = MEMORY[0x1E69E7CC0];
LABEL_42:
    v107 = v0[24];
    v108 = v0[25];
    v110 = v0[22];
    v109 = v0[23];
    v112 = v0[20];
    v111 = v0[21];
    v113 = v0[17];
    v129 = v0[14];
    v133 = v0[12];
    sub_1DD336A30();
    v114 = qword_1EE02A220;
    sub_1DD335C80();

    (*(v107 + 8))(v108, v109);

    v115 = v0[1];

    v115(v134);
    return;
  }

  v3 = sub_1DD335CB0();
  v4 = sub_1DD336940();
  if (OUTLINED_FUNCTION_34(v4))
  {
    v5 = OUTLINED_FUNCTION_69();
    OUTLINED_FUNCTION_68(v5);
    OUTLINED_FUNCTION_13_1();
    _os_log_impl(v6, v7, v8, v9, v10, 2u);
    OUTLINED_FUNCTION_20();
    MEMORY[0x1E12ADA30]();
  }

  v135 = MEMORY[0x1E69E7CC0];
  v124 = *(v1 + 16);
  if (!v124)
  {
    v134 = MEMORY[0x1E69E7CC0];
LABEL_39:
    v97 = v0[26];
    v98 = v0[9];

    v99 = sub_1DD335CB0();
    v100 = sub_1DD336940();
    if (OUTLINED_FUNCTION_34(v100))
    {
      v101 = OUTLINED_FUNCTION_69();
      OUTLINED_FUNCTION_68(v101);
      OUTLINED_FUNCTION_13_1();
      _os_log_impl(v102, v103, v104, v105, v106, 2u);
      OUTLINED_FUNCTION_20();
      MEMORY[0x1E12ADA30]();
    }

    goto LABEL_42;
  }

  v11 = 0;
  v12 = v0[19];
  v122 = v1 + ((*(v12 + 80) + 32) & ~*(v12 + 80));
  v123 = v12;
  v121 = (v12 + 8);
  v116 = (v0[16] + 8);
  v134 = MEMORY[0x1E69E7CC0];
  v13 = v0[28];
  v120 = v1;
  v126 = v0;
  while (v11 < *(v1 + 16))
  {
    v15 = v0[8];
    v14 = v0[9];
    v125 = v11;
    v16 = *(v123 + 16);
    v16(v0[22], v122 + *(v123 + 72) * v11, v0[18]);
    sub_1DD2C0BBC();
    if (v13)
    {
      v18 = v0[26];
      v19 = v0[9];
      v16(v0[20], v0[22], v0[18]);
      v20 = v13;
      v21 = sub_1DD335CB0();
      v22 = sub_1DD336950();

      v23 = os_log_type_enabled(v21, v22);
      v24 = v0[22];
      v25 = v0[20];
      v26 = v0[18];
      if (!v23)
      {

        v67 = *v121;
        (*v121)(v25, v26);
        v67(v24, v26);
        goto LABEL_28;
      }

      v27 = v0[17];
      v130 = v0[22];
      v29 = v0[14];
      v28 = v0[15];
      v117 = v0[13];
      v30 = v0[18];
      v31 = swift_slowAlloc();
      v136[0] = swift_slowAlloc();
      *v31 = 136380931;
      v118 = v22;
      sub_1DD335AE0();
      sub_1DD335C50();
      v32 = *v116;
      v33 = OUTLINED_FUNCTION_79_0();
      v34(v33);
      v35 = sub_1DD336630();
      v37 = v36;
      v38 = *v121;
      v39 = OUTLINED_FUNCTION_77_2();
      v38(v39);
      v40 = sub_1DD27DBF0(v35, v37, v136);

      *(v31 + 4) = v40;
      *(v31 + 12) = 2080;
      swift_getErrorValue();
      v42 = v0[2];
      v41 = v0[3];
      v43 = v0[4];
      v44 = sub_1DD336E40();
      v46 = sub_1DD27DBF0(v44, v45, v136);

      *(v31 + 14) = v46;
      _os_log_impl(&dword_1DD27A000, v21, v118, "Failed to build RREntity from on-screen content %{private}s, error: %s", v31, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_20();
      MEMORY[0x1E12ADA30]();
      OUTLINED_FUNCTION_20();
      MEMORY[0x1E12ADA30]();

      (v38)(v130, v30);
    }

    else
    {
      v47 = v17;
      if (v17)
      {
        if (v17 >> 62)
        {
          v48 = sub_1DD336B60();
          if (v48)
          {
LABEL_14:
            if (v48 < 1)
            {
              goto LABEL_46;
            }

            v49 = 0;
            v127 = v47 & 0xC000000000000001;
            v131 = v48;
            do
            {
              if (v127)
              {
                v50 = MEMORY[0x1E12ACA60](v49, v47);
              }

              else
              {
                v50 = *(v47 + 8 * v49 + 32);
              }

              v51 = v50;
              MEMORY[0x1E12AC640]();
              v52 = *((v135 & 0xFFFFFFFFFFFFFF8) + 0x18);
              if (*((v135 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v52 >> 1)
              {
                OUTLINED_FUNCTION_45(v52);
                sub_1DD336830();
              }

              v53 = v0[26];
              v54 = v0[9];
              OUTLINED_FUNCTION_77_2();
              sub_1DD336860();
              v134 = v135;
              v55 = v51;
              v56 = sub_1DD335CB0();
              v57 = sub_1DD336930();

              if (os_log_type_enabled(v56, v57))
              {
                v58 = swift_slowAlloc();
                v136[0] = swift_slowAlloc();
                *v58 = 136315394;
                v59 = sub_1DD336010();
                v61 = sub_1DD27DBF0(v59, v60, v136);

                *(v58 + 4) = v61;
                *(v58 + 12) = 2080;
                sub_1DD335ED0();
                v62 = sub_1DD335700();
                v63 = v47;
                v65 = v64;

                v66 = sub_1DD27DBF0(v62, v65, v136);
                v47 = v63;

                *(v58 + 14) = v66;
                _os_log_impl(&dword_1DD27A000, v56, v57, "Pulled on-screen content %s of type %s from UIContext successfully", v58, 0x16u);
                swift_arrayDestroy();
                v0 = v126;
                OUTLINED_FUNCTION_20();
                MEMORY[0x1E12ADA30]();
                OUTLINED_FUNCTION_20();
                MEMORY[0x1E12ADA30]();
              }

              else
              {
              }

              ++v49;
            }

            while (v131 != v49);
            v1 = v120;
          }
        }

        else
        {
          v48 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v48)
          {
            goto LABEL_14;
          }
        }

        v68 = v0[22];
        v69 = v0[18];

        (*v121)(v68, v69);
        goto LABEL_28;
      }

      v70 = v0[26];
      v71 = v0[9];
      v16(v0[21], v0[22], v0[18]);
      v72 = sub_1DD335CB0();
      v73 = sub_1DD336930();
      v74 = os_log_type_enabled(v72, v73);
      v76 = v0[21];
      v75 = v0[22];
      v77 = v0[18];
      if (v74)
      {
        v78 = v0[17];
        v128 = v0[15];
        v132 = v0[22];
        v80 = v0[13];
        v79 = v0[14];
        v81 = swift_slowAlloc();
        v119 = v77;
        v82 = swift_slowAlloc();
        v136[0] = v82;
        *v81 = 136380675;
        sub_1DD335AE0();
        sub_1DD335C50();
        (*v116)(v78, v128);
        v83 = sub_1DD336630();
        v85 = v84;
        v86 = *v121;
        (*v121)(v76, v119);
        v87 = sub_1DD27DBF0(v83, v85, v136);

        *(v81 + 4) = v87;
        _os_log_impl(&dword_1DD27A000, v72, v73, "On-screen UIElement %{private}s does not contain necessary content in UIContext, skipping this one", v81, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v82);
        OUTLINED_FUNCTION_20();
        MEMORY[0x1E12ADA30]();
        OUTLINED_FUNCTION_20();
        MEMORY[0x1E12ADA30]();

        v86(v132, v119);
      }

      else
      {

        v88 = *v121;
        (*v121)(v76, v77);
        v88(v75, v77);
      }
    }

    v1 = v120;
LABEL_28:
    v13 = 0;
    v11 = v125 + 1;
    if (v125 + 1 == v124)
    {
      goto LABEL_39;
    }
  }

  __break(1u);
LABEL_46:
  __break(1u);
}

uint64_t sub_1DD2C087C()
{
  v1 = *(v0 + 224);
  v2 = *(v0 + 96);
  v3 = *(v0 + 72);
  v4 = *(v0 + 80);

  *(v0 + 48) = v1;
  v5 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD6568, &unk_1DD3397B0);
  if (swift_dynamicCast())
  {
    v6 = *(v0 + 208);
    v7 = *(v0 + 72);

    v8 = sub_1DD335CB0();
    v9 = sub_1DD336950();
    if (OUTLINED_FUNCTION_34(v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 134217984;
      *(v10 + 4) = 0x3FE0000000000000;
      OUTLINED_FUNCTION_13_1();
      _os_log_impl(v11, v12, v13, v14, v15, 0xCu);
      OUTLINED_FUNCTION_20();
      MEMORY[0x1E12ADA30]();
    }

    v17 = *(v0 + 88);
    v16 = *(v0 + 96);
    v18 = *(v0 + 80);

    sub_1DD2B3F80();
    swift_allocError();
    swift_willThrow();
    (*(v17 + 8))(v16, v18);
  }

  else
  {

    v31 = *(v0 + 224);
  }

  v19 = *(v0 + 192);
  v20 = *(v0 + 200);
  v22 = *(v0 + 176);
  v21 = *(v0 + 184);
  v24 = *(v0 + 160);
  v23 = *(v0 + 168);
  v25 = *(v0 + 136);
  v29 = *(v0 + 112);
  v30 = *(v0 + 96);
  sub_1DD336A30();
  v26 = qword_1EE02A220;
  sub_1DD335C80();

  (*(v19 + 8))(v20, v21);

  OUTLINED_FUNCTION_3_5();

  return v27();
}

uint64_t sub_1DD2C0AD0(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1DD2C0AF0, 0, 0);
}

uint64_t sub_1DD2C0AF0()
{
  v1 = *(v0 + 24);
  sub_1DD335C00();
  sub_1DD2B26BC();
  v2 = sub_1DD335B30();
  OUTLINED_FUNCTION_59(v2);
  swift_allocObject();
  sub_1DD335B20();
  v3 = *(v1 + OBJC_IVAR____TtC23SiriReferenceResolution19RRIFUIContextPuller_client);
  v4 = sub_1DD335AB0();

  **(v0 + 16) = v4;
  OUTLINED_FUNCTION_3_5();

  return v5();
}