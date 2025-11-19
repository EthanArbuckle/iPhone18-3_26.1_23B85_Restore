double sub_226326AF8@<D0>(_OWORD *a1@<X8>)
{
  v3 = v1 + OBJC_IVAR____TtC26VisualActionPredictionCore18VisualActionRanker____lazy_storage___weights;
  v4 = *(v1 + OBJC_IVAR____TtC26VisualActionPredictionCore18VisualActionRanker____lazy_storage___weights + 112);
  v40 = *(v1 + OBJC_IVAR____TtC26VisualActionPredictionCore18VisualActionRanker____lazy_storage___weights + 96);
  v41 = v4;
  v42 = *(v1 + OBJC_IVAR____TtC26VisualActionPredictionCore18VisualActionRanker____lazy_storage___weights + 128);
  v5 = *(v1 + OBJC_IVAR____TtC26VisualActionPredictionCore18VisualActionRanker____lazy_storage___weights + 48);
  v36 = *(v1 + OBJC_IVAR____TtC26VisualActionPredictionCore18VisualActionRanker____lazy_storage___weights + 32);
  v37 = v5;
  v6 = *(v1 + OBJC_IVAR____TtC26VisualActionPredictionCore18VisualActionRanker____lazy_storage___weights + 80);
  v38 = *(v1 + OBJC_IVAR____TtC26VisualActionPredictionCore18VisualActionRanker____lazy_storage___weights + 64);
  v39 = v6;
  v7 = *(v1 + OBJC_IVAR____TtC26VisualActionPredictionCore18VisualActionRanker____lazy_storage___weights + 16);
  v34 = *(v1 + OBJC_IVAR____TtC26VisualActionPredictionCore18VisualActionRanker____lazy_storage___weights);
  v35 = v7;
  if (sub_2262D66D8(&v34) == 1)
  {
    sub_226326C0C(v1, &v17);
    v29 = v21;
    v30 = v22;
    v31 = v23;
    v32 = v24;
    v25 = v17;
    v26 = v18;
    v27 = v19;
    v28 = v20;
    sub_22632EDB8(&v25);
    v8 = v32;
    *(v3 + 96) = v31;
    *(v3 + 112) = v8;
    *(v3 + 128) = v33;
    v9 = v28;
    *(v3 + 32) = v27;
    *(v3 + 48) = v9;
    v10 = v30;
    *(v3 + 64) = v29;
    *(v3 + 80) = v10;
    v11 = v26;
    *v3 = v25;
    *(v3 + 16) = v11;
  }

  else
  {
    v21 = v38;
    v22 = v39;
    v23 = v40;
    v24 = v41;
    v17 = v34;
    v18 = v35;
    v19 = v36;
    v20 = v37;
  }

  v12 = v22;
  a1[4] = v21;
  a1[5] = v12;
  v13 = v24;
  a1[6] = v23;
  a1[7] = v13;
  v14 = v18;
  *a1 = v17;
  a1[1] = v14;
  result = *&v19;
  v16 = v20;
  a1[2] = v19;
  a1[3] = v16;
  return result;
}

double sub_226326C0C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + OBJC_IVAR____TtC26VisualActionPredictionCore18VisualActionRanker_totalExecutionCount);
  v4 = v3 / (sub_22634AC08() + v3);
  v23 = sub_22634ACD8() * (1.0 - v4 + 1.0);
  v30 = sub_22634ADAC() * (1.0 - v4 + 1.0);
  v29 = sub_22634AE80() * (1.0 - v4 + 1.0);
  v22 = v4 * sub_22634AF54();
  v26 = v4 * sub_22634B028();
  v27 = v4 * sub_22634B0FC();
  v28 = v4 * sub_22634B1D0();
  v5 = v4 * sub_22634B2A4();
  v6 = v4 * sub_22634B378();
  v7 = v4 * sub_22634B44C();
  v8 = v4 * sub_22634B520();
  v9 = v4 * sub_22634B5F4();
  v10 = v4 * sub_22634B6C8();
  v25 = v5;
  v24 = (1.0 - v4) * sub_22634B79C();
  sub_2262D95CC();
  v12 = *(v11 + 16);
  if (!v12)
  {
    v14 = 0.0;
    goto LABEL_10;
  }

  if (v12 <= 3)
  {
    v13 = 0;
    v14 = 0.0;
LABEL_8:
    v18 = v12 - v13;
    v19 = (v11 + 8 * v13 + 32);
    do
    {
      v20 = *v19++;
      v14 = v14 + v20;
      --v18;
    }

    while (v18);
    goto LABEL_10;
  }

  v13 = v12 & 0x7FFFFFFFFFFFFFFCLL;
  v15 = (v11 + 48);
  v14 = 0.0;
  v16 = v12 & 0x7FFFFFFFFFFFFFFCLL;
  do
  {
    v17 = *v15;
    v14 = v14 + *(v15 - 2) + *(v15 - 1) + *v15 + v15[1];
    v15 += 4;
    v16 -= 4;
  }

  while (v16);
  if (v12 != v13)
  {
    goto LABEL_8;
  }

LABEL_10:

  *a2 = v23 / v14;
  *(a2 + 8) = v30 / v14;
  *(a2 + 16) = v29 / v14;
  *(a2 + 24) = v22 / v14;
  *(a2 + 32) = v26 / v14;
  *(a2 + 40) = v27 / v14;
  *(a2 + 48) = v28 / v14;
  *(a2 + 56) = v25 / v14;
  *(a2 + 64) = v6 / v14;
  *(a2 + 72) = v7 / v14;
  *(a2 + 80) = v8 / v14;
  *(a2 + 88) = v9 / v14;
  result = v24 / v14;
  *(a2 + 96) = v10 / v14;
  *(a2 + 104) = v24 / v14;
  *(a2 + 112) = 0;
  *(a2 + 120) = 0;
  return result;
}

uint64_t sub_226326E4C()
{
  v1 = OBJC_IVAR____TtC26VisualActionPredictionCore18VisualActionRanker____lazy_storage___shouldScopeByAppInFocus;
  v2 = *(v0 + OBJC_IVAR____TtC26VisualActionPredictionCore18VisualActionRanker____lazy_storage___shouldScopeByAppInFocus);
  if (v2 == 2)
  {
    LOBYTE(v2) = *(v0 + OBJC_IVAR____TtC26VisualActionPredictionCore18VisualActionRanker_appInFocus + 8) && (v3 = *(v0 + OBJC_IVAR____TtC26VisualActionPredictionCore18VisualActionRanker_appInFocusExecutionCount), v3 >= sub_22634A488());
    *(v0 + v1) = v2;
  }

  return v2 & 1;
}

id sub_226326EC4(uint64_t a1)
{
  v3 = sub_22635004C();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3);
  if (!v5)
  {
    return sub_226301FFC(*(v1 + 16));
  }

  v6 = *(v1 + 16);
  return sub_2263080C4(a1, v5);
}

unint64_t sub_2263270C4(uint64_t a1)
{
  v3 = sub_22634EECC();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + 16))
  {
    v8 = swift_allocObject();
    *(v8 + 16) = sub_2262FE004(MEMORY[0x277D84F90]);
    v17 = *(v1 + OBJC_IVAR____TtC26VisualActionPredictionCore18VisualActionRanker_appInFocusStream);
    sub_22634EE7C();
    v9 = sub_22634EE8C();
    (*(v4 + 8))(v7, v3);
    v10 = sub_22634EE8C();
    v11 = sub_22635055C();
    aBlock[4] = sub_22632EEF0;
    aBlock[5] = v8;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_22632C078;
    aBlock[3] = &block_descriptor_0;
    v12 = _Block_copy(aBlock);

    [v17 enumerateAppLaunchSessionsBetweenStartDate:v9 endDate:v10 limit:1000 shouldReverse:0 bundleIDsFilter:v11 block:v12];
    _Block_release(v12);

    swift_beginAccess();
    v13 = *(v8 + 16);

    return v13;
  }

  else
  {
    v15 = MEMORY[0x277D84F90];

    return sub_2262FE004(v15);
  }
}

void *sub_226327348(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v386 = a6;
  v372 = a5;
  v374 = a4;
  v380 = a3;
  v385 = a2;
  v423 = sub_22635004C();
  v9 = *(v423 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v423);
  v12 = &v367 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v379 = type metadata accessor for RankedVisualAction();
  v378 = *(v379 - 8);
  v13 = *(v378 + 64);
  MEMORY[0x28223BE20](v379);
  v391 = &v367 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v389 = type metadata accessor for VisualAction.Kind(0);
  v15 = *(*(v389 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v389);
  v387 = &v367 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v373 = &v367 - v19;
  MEMORY[0x28223BE20](v18);
  v375 = &v367 - v20;
  v392 = sub_22634F14C();
  v21 = *(v392 - 8);
  v22 = *(v21 + 64);
  v23 = MEMORY[0x28223BE20](v392);
  v371 = &v367 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x28223BE20](v23);
  v370 = &v367 - v26;
  MEMORY[0x28223BE20](v25);
  v376 = &v367 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D792FE0, &unk_226351C10);
  v29 = *(*(v28 - 8) + 64);
  v30 = MEMORY[0x28223BE20](v28 - 8);
  v377 = &v367 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = MEMORY[0x28223BE20](v30);
  v390 = &v367 - v33;
  v34 = MEMORY[0x28223BE20](v32);
  v394 = &v367 - v35;
  v36 = MEMORY[0x28223BE20](v34);
  v401 = &v367 - v37;
  MEMORY[0x28223BE20](v36);
  v410 = &v367 - v38;
  v453 = sub_22634F0EC();
  v39 = *(v453 - 8);
  v40 = *(v39 + 64);
  MEMORY[0x28223BE20](v453);
  v454 = &v367 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v449 = sub_22634F06C();
  v42 = *(v449 - 8);
  v43 = *(v42 + 64);
  v44 = MEMORY[0x28223BE20](v449);
  v393 = &v367 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = MEMORY[0x28223BE20](v44);
  v400 = &v367 - v47;
  v48 = MEMORY[0x28223BE20](v46);
  v405 = &v367 - v49;
  v50 = MEMORY[0x28223BE20](v48);
  v416 = &v367 - v51;
  v52 = MEMORY[0x28223BE20](v50);
  v402 = &v367 - v53;
  v54 = MEMORY[0x28223BE20](v52);
  v409 = &v367 - v55;
  v56 = MEMORY[0x28223BE20](v54);
  v438 = &v367 - v57;
  MEMORY[0x28223BE20](v56);
  v437 = &v367 - v58;
  v388 = type metadata accessor for VisualAction(0);
  v59 = *(*(v388 - 8) + 64);
  v60 = MEMORY[0x28223BE20](v388);
  MEMORY[0x28223BE20](v60);
  v64 = (&v367 - v62);
  v65 = *(a1 + 16);
  if (v65)
  {
    v422 = v63;
    v450 = 0;
    v425 = (v7 + OBJC_IVAR____TtC26VisualActionPredictionCore18VisualActionRanker_minorLabel);
    v399 = (v7 + OBJC_IVAR____TtC26VisualActionPredictionCore18VisualActionRanker_appInFocus);
    v413 = OBJC_IVAR____TtC26VisualActionPredictionCore18VisualActionRanker_majorLabel;
    v66 = *(v61 + 80);
    v398 = OBJC_IVAR____TtC26VisualActionPredictionCore18VisualActionRanker_sessionStart;
    v67 = a1 + ((v66 + 32) & ~v66);
    v452 = (v39 + 16);
    v439 = v42;
    v448 = v42 + 32;
    v369 = OBJC_IVAR____TtC26VisualActionPredictionCore18VisualActionRanker_totalExecutionCount;
    v383 = v21 + 16;
    v384 = v21;
    v382 = v21 + 8;
    v421 = (v9 + 8);
    v368 = OBJC_IVAR____TtC26VisualActionPredictionCore18VisualActionRanker_appInFocusExecutionCount;
    v424 = *(v61 + 72);
    v451 = *MEMORY[0x277D78238];
    v68 = *MEMORY[0x277D78288];
    v455 = xmmword_226351C90;
    v395 = MEMORY[0x277D84F90];
    v446 = v7;
    v426 = v12;
    v444 = (&v367 - v62);
    v447 = v68;
    while (1)
    {
      v443 = v65;
      v442 = v67;
      sub_22632EDC0(v67, v64, type metadata accessor for VisualAction);
      v69 = sub_22632ADB0(v64);
      sub_22632B2D8(v64);
      v71 = v70;
      sub_22632E540(v64);
      v73 = v72;
      v74 = v425[1];
      v440 = *v425;
      v75 = 0.0;
      v445 = v74;
      if (v74 == 0.0)
      {
        v105 = 0.0;
      }

      else
      {
        v76 = *(v7 + 16);
        v77 = sub_2262DBE60();
        v79 = v78;
        v80 = *v452;
        v441 = *&v76;
        v436 = *&v80;
        v80(v454, v76 + OBJC_IVAR____TtC26VisualActionPredictionCore14VectorDatabase_actionIdAttribute, v453);
        *&v81 = COERCE_DOUBLE(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793348, &unk_2263529F0));
        v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793350, &unk_2263543E0);
        v83 = (*(*(v82 - 8) + 80) + 32) & ~*(*(v82 - 8) + 80);
        v433 = *(*(v82 - 8) + 72);
        v435 = *&v81;
        v84 = swift_allocObject();
        *(v84 + 16) = v455;
        v85 = v84 + v83;
        v434 = v82;
        v86 = (v84 + v83 + *(v82 + 48));
        v87 = sub_22634F0CC();
        v88 = *(v87 - 8);
        v89 = *(v88 + 104);
        v432 = v87;
        v431 = v89;
        v430 = (v88 + 104);
        (v89)(v85, v451);
        *v86 = v77;
        v86[1] = v79;
        v90 = sub_22634F10C();
        v91 = *(v90 - 8);
        v429 = *(v91 + 104);
        v429(v86, v447, v90);
        v428 = *(v91 + 56);
        v428(v86, 0, 1, v90);
        sub_22634F05C();
        v92 = sub_2262DC96C(0, 1, 1, MEMORY[0x277D84F90]);
        v94 = v92[2];
        v93 = v92[3];
        if (v94 >= v93 >> 1)
        {
          v92 = sub_2262DC96C(v93 > 1, v94 + 1, 1, v92);
        }

        v95 = v439;
        v92[2] = v94 + 1;
        v96 = (*(v95 + 80) + 32) & ~*(v95 + 80);
        v97 = *(v95 + 72);
        v427 = *(v95 + 32);
        (v427)(v92 + v96 + v97 * v94, v437, v449);
        (*&v436)(v454, *&v441 + OBJC_IVAR____TtC26VisualActionPredictionCore14VectorDatabase_minorLabelAttribute, v453);
        v98 = swift_allocObject();
        *(v98 + 16) = v455;
        v99 = v98 + v83 + *(v434 + 48);
        v431();
        v100 = v445;
        *v99 = v440;
        *(v99 + 8) = v100;
        v429(v99, v447, v90);
        v428(v99, 0, 1, v90);

        sub_22634F05C();
        v102 = v92[2];
        v101 = v92[3];
        if (v102 >= v101 >> 1)
        {
          v92 = sub_2262DC96C(v101 > 1, v102 + 1, 1, v92);
        }

        v64 = v444;
        v92[2] = v102 + 1;
        (v427)(v92 + v96 + v102 * v97, v438, v449);
        *&v456 = v92;
        v103 = v450;
        v104 = sub_226302514(*&v441, &v456);
        if (v103)
        {
LABEL_24:

          v450 = 0;
          v149 = v426;
          goto LABEL_66;
        }

        v106 = v104;
        v450 = 0;

        v105 = v106;
        v7 = v446;
      }

      v107 = v413;
      v108 = v410;
      sub_22632C3D4(v7 + v413, v410);
      v109 = sub_22634F47C();
      v110 = *(v109 - 8);
      v111 = *(v110 + 48);
      v112 = v111(v108, 1, v109);
      sub_2262D67D8(v108, &qword_27D792FE0, &unk_226351C10);
      v412 = v110 + 48;
      v411 = v111;
      v414 = v109;
      v408 = v110;
      if (v112 != 1)
      {
        v441 = *(v7 + 16);
        v113 = sub_2262DBE60();
        v115 = v114;
        v116 = v401;
        sub_22632C3D4(v7 + v107, v401);
        if (v111(v116, 1, v109) == 1)
        {
          sub_2262D67D8(v116, &qword_27D792FE0, &unk_226351C10);
          v435 = 0.0;
          v436 = 0.0;
        }

        else
        {
          v435 = COERCE_DOUBLE(sub_22634F46C());
          v436 = *&v117;
          (*(v110 + 8))(v116, v109);
        }

        v118 = v451;
        v119 = *v452;
        (*v452)(v454, *&v441 + OBJC_IVAR____TtC26VisualActionPredictionCore14VectorDatabase_actionIdAttribute, v453);
        v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793348, &unk_2263529F0);
        v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793350, &unk_2263543E0);
        v122 = (*(*(v121 - 8) + 80) + 32) & ~*(*(v121 - 8) + 80);
        v432 = *(*(v121 - 8) + 72);
        v434 = v120;
        v123 = swift_allocObject();
        *(v123 + 16) = v455;
        v124 = v123 + v122;
        v433 = v121;
        v125 = (v123 + v122 + *(v121 + 48));
        v126 = sub_22634F0CC();
        v127 = *(v126 - 8);
        v128 = *(v127 + 104);
        v431 = v126;
        v430 = v128;
        v429 = (v127 + 104);
        (v128)(v124, v118);
        *v125 = v113;
        v125[1] = v115;
        v129 = sub_22634F10C();
        v130 = *(v129 - 8);
        v428 = *(v130 + 104);
        (v428)(v125, v447, v129);
        v427 = *(v130 + 56);
        (v427)(v125, 0, 1, v129);
        sub_22634F05C();
        v131 = sub_2262DC96C(0, 1, 1, MEMORY[0x277D84F90]);
        v133 = v131[2];
        v132 = v131[3];
        if (v133 >= v132 >> 1)
        {
          v131 = sub_2262DC96C(v132 > 1, v133 + 1, 1, v131);
        }

        v134 = v439;
        v131[2] = v133 + 1;
        v135 = (*(v134 + 80) + 32) & ~*(v134 + 80);
        v136 = *(v134 + 72);
        v137 = v131 + v135 + v136 * v133;
        v138 = *(v134 + 32);
        (v138)(v137, v409, v449);
        *&v456 = v131;
        if (v436 == 0.0)
        {
          v64 = v444;
        }

        else
        {
          v418 = v136;
          v419 = v135;
          v420 = v138;
          v139 = v119;
          v140 = v436;
          v139(v454, *&v441 + OBJC_IVAR____TtC26VisualActionPredictionCore14VectorDatabase_majorLabelAttribute, v453);
          v141 = swift_allocObject();
          *(v141 + 16) = v455;
          v142 = (v141 + v122 + *(v433 + 48));
          v430();
          *v142 = v435;
          v142[1] = v140;
          (v428)(v142, v447, v129);
          (v427)(v142, 0, 1, v129);
          sub_22634F05C();
          v144 = v131[2];
          v143 = v131[3];
          if (v144 >= v143 >> 1)
          {
            v131 = sub_2262DC96C(v143 > 1, v144 + 1, 1, v131);
          }

          v64 = v444;
          v145 = v420;
          v146 = v419;
          v147 = v418;
          v131[2] = v144 + 1;
          (v145)(v131 + v146 + v144 * v147, v402, v449);
          *&v456 = v131;
        }

        v103 = v450;
        v148 = sub_226302514(*&v441, &v456);
        v7 = v446;
        if (v103)
        {
          goto LABEL_24;
        }

        v150 = v148;
        v450 = 0;

        v75 = v150;
      }

      v441 = *(v7 + 16);
      v151 = sub_2262DBE60();
      v153 = v152;
      if (sub_226326E4C())
      {
        v154 = *v399;
        v155 = v399[1];
      }

      else
      {
        v154 = 0;
        v155 = 0;
      }

      v156 = v451;
      v157 = *&v441;
      v158 = *v452;
      v407 = *&v441 + OBJC_IVAR____TtC26VisualActionPredictionCore14VectorDatabase_actionIdAttribute;
      v435 = *&v158;
      (v158)(v454);
      v159 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793348, &unk_2263529F0);
      v160 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793350, &unk_2263543E0);
      v161 = *(*(v160 - 8) + 80);
      v162 = (v161 + 32) & ~v161;
      v433 = *(*(v160 - 8) + 72);
      v432 = v161;
      v434 = v159;
      v163 = swift_allocObject();
      *(v163 + 16) = v455;
      v417 = v162;
      v164 = v163 + v162;
      v427 = v160;
      v165 = (v164 + *(v160 + 48));
      v166 = sub_22634F0CC();
      v167 = *(v166 - 8);
      v168 = *(v167 + 104);
      v431 = v166;
      v420 = v168;
      v430 = (v167 + 104);
      (v168)(v164, v156);
      *v165 = v151;
      v165[1] = v153;
      v169 = sub_22634F10C();
      v170 = *(v169 - 8);
      v429 = *(v170 + 104);
      v418 = v170 + 104;
      v171 = v447;
      v429(v165, v447, v169);
      v172 = *(v170 + 56);
      v419 = v170 + 56;
      v173 = v165;
      v174 = v169;
      v428 = v172;
      v172(v173, 0, 1, v169);
      sub_22634F05C();
      v175 = sub_2262DC96C(0, 1, 1, MEMORY[0x277D84F90]);
      v177 = *(v175 + 2);
      v176 = *(v175 + 3);
      if (v177 >= v176 >> 1)
      {
        v175 = sub_2262DC96C(v176 > 1, v177 + 1, 1, v175);
      }

      v178 = v439;
      *(v175 + 2) = v177 + 1;
      v406 = *(v178 + 80);
      v179 = (v406 + 32) & ~v406;
      v436 = *(v178 + 72);
      v180 = &v175[v179 + *&v436 * v177];
      v181 = *(v178 + 32);
      v181(v180, v416, v449);
      *&v456 = v175;
      v182 = v446;
      v415 = v181;
      if (v155)
      {
        (*&v435)(v454, v157 + OBJC_IVAR____TtC26VisualActionPredictionCore14VectorDatabase_appInFocusAttribute, v453);
        v183 = v417;
        v184 = swift_allocObject();
        *(v184 + 16) = v455;
        v185 = (v184 + v183 + *(v427 + 48));
        v420();
        *v185 = v154;
        v185[1] = v155;
        v429(v185, v171, v169);
        v428(v185, 0, 1, v169);
        sub_22634F05C();
        v187 = *(v175 + 2);
        v186 = *(v175 + 3);
        if (v187 >= v186 >> 1)
        {
          v175 = sub_2262DC96C(v186 > 1, v187 + 1, 1, v175);
        }

        v188 = v415;
        *(v175 + 2) = v187 + 1;
        v188(&v175[v179 + v187 * *&v436], v405, v449);
        *&v456 = v175;
        v157 = *&v441;
        v182 = v446;
      }

      v103 = v450;
      v189 = sub_226302514(v157, &v456);
      v190 = v445;
      if (!v103)
      {
        v396 = v189;

        v404 = v174;
        v403 = v179;
        if (v190 == 0.0)
        {
          sub_22634EE5C();
          v214 = v213;
          v212 = v414;
          v215 = v182;
          goto LABEL_48;
        }

        v191 = sub_2262DBE60();
        v193 = v192;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7931E0, &qword_2263524F0);
        v397 = swift_allocObject();
        *(v397 + 16) = v455;
        (*&v435)(v454, v407, v453);
        v194 = v417;
        v195 = swift_allocObject();
        *(v195 + 16) = v455;
        v196 = v427;
        v197 = (v195 + v194 + *(v427 + 48));
        v198 = v420;
        v420();
        *v197 = v191;
        v197[1] = v193;
        v429(v197, v447, v404);
        v428(v197, 0, 1, v404);
        v450 = v193;

        v199 = v397;
        v200 = v454;
        sub_22634F05C();
        (*&v435)(v200, *&v441 + OBJC_IVAR____TtC26VisualActionPredictionCore14VectorDatabase_minorLabelAttribute, v453);
        v201 = swift_allocObject();
        *(v201 + 16) = v455;
        v202 = v201 + v194 + *(v196 + 48);
        v203 = v447;
        v198();
        v204 = v199;
        v205 = v404;
        v206 = v445;
        *v202 = v440;
        *(v202 + 8) = v206;
        v429(v202, v203, v205);
        v428(v202, 0, 1, v205);

        sub_22634F05C();
        v208 = v199[2];
        v207 = v199[3];
        if (v208 >= v207 >> 1)
        {
          v204 = sub_2262DC96C(v207 > 1, v208 + 1, 1, v199);
        }

        v209 = v415;
        *(v204 + 16) = v208 + 1;
        v209(v204 + v403 + v208 * *&v436, v400, v449);
        v465 = v204;

        v211 = sub_2263035CC(v210, &v465, v210);
        v212 = v414;
        if (*(v211 + 16))
        {
          v216 = v414;
          v217 = v384;
          v218 = v376;
          v219 = v392;
          (*(v384 + 16))(v376, v211 + ((*(v217 + 80) + 32) & ~*(v217 + 80)), v392);

          v220 = sub_22634F13C();
          v222 = v221;
          (*(v217 + 8))(v218, v219);
          if (v222 >> 60 != 15)
          {
            v223 = sub_22634ED1C();
            v224 = *(v223 + 48);
            v225 = *(v223 + 52);
            swift_allocObject();
            sub_22634ED0C();
            sub_22630BE08();
            sub_22634ECFC();

            v321 = *&v458;
            v215 = v446;
            sub_22634EE5C();
            v323 = v322;
            sub_2262D66C4(v220, v222);

            v214 = v323 - v321;
            v212 = v216;
            goto LABEL_48;
          }

          v212 = v216;
        }

        else
        {
        }

        v215 = v446;
        sub_22634EE5C();
        v214 = v226;

LABEL_48:
        v227 = v413;
        v228 = v394;
        sub_22632C3D4(v215 + v413, v394);
        v229 = v411;
        if (v411(v228, 1, v212) == 1)
        {
          sub_2262D67D8(v228, &qword_27D792FE0, &unk_226351C10);
          sub_22634EE5C();
          v231 = v230;
          v7 = v215;
          v232 = v447;
LABEL_65:
          v270 = sub_2262DBE60();
          v272 = v271;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7931E0, &qword_2263524F0);
          v273 = swift_allocObject();
          *(v273 + 16) = v455;
          (*&v435)(v454, v407, v453);
          v274 = v417;
          v275 = swift_allocObject();
          *(v275 + 16) = v455;
          v276 = (v275 + v274 + *(v427 + 48));
          v420();
          *v276 = v270;
          v276[1] = v272;
          v277 = v404;
          v429(v276, v232, v404);
          v428(v276, 0, 1, v277);

          sub_22634F05C();
          v465 = v273;

          v279 = sub_2263035CC(v278, &v465, v278);
          v450 = 0;
          if (!*(v279 + 16))
          {

            v64 = v444;
            goto LABEL_78;
          }

          v294 = v384;
          v295 = v371;
          v296 = v392;
          (*(v384 + 16))(v371, v279 + ((*(v294 + 80) + 32) & ~*(v294 + 80)), v392);

          v297 = sub_22634F13C();
          v299 = v298;
          (*(v294 + 8))(v295, v296);
          v64 = v444;
          if (v299 >> 60 == 15)
          {
LABEL_78:
            sub_22634EE5C();
            v440 = v304;
          }

          else
          {
            v300 = sub_22634ED1C();
            v301 = *(v300 + 48);
            v302 = *(v300 + 52);
            swift_allocObject();
            sub_22634ED0C();
            sub_22630BE08();
            v303 = v450;
            sub_22634ECFC();
            if (v303)
            {

              sub_2262D66C4(v297, v299);

              v450 = 0;
              goto LABEL_78;
            }

            v450 = 0;

            v441 = v214;
            v360 = *&v458;
            sub_22634EE5C();
            v362 = v361;
            sub_2262D66C4(v297, v299);

            v440 = v362 - v360;
            v214 = v441;
          }

          v305 = v414;
          v306 = 0.0;
          v441 = 0.0;
          if (v445 != 0.0)
          {
            v307 = sub_2262DBE60();
            if (*(v374 + 16))
            {
              v309 = sub_22633941C(v307, v308);
              v311 = v310;

              if (v311)
              {
                v441 = *(*(v374 + 56) + 8 * v309);
                goto LABEL_88;
              }
            }

            else
            {
            }

            sub_22632EDC0(v64 + *(v388 + 20), v375, type metadata accessor for VisualAction.Kind);
            if (swift_getEnumCaseMultiPayload() == 2)
            {
              v312 = sub_22634A700();
            }

            else
            {
              v312 = sub_22634A7D0();
            }

            v441 = v312;
            sub_22632EE90(v375, type metadata accessor for VisualAction.Kind);
          }

LABEL_88:
          v313 = v377;
          sub_22632C3D4(v7 + v413, v377);
          v314 = v411(v313, 1, v305);
          sub_2262D67D8(v313, &qword_27D792FE0, &unk_226351C10);
          if (v314 != 1)
          {
            v315 = sub_2262DBE60();
            if (*(v372 + 16))
            {
              v317 = sub_22633941C(v315, v316);
              v319 = v318;

              if (v319)
              {
                v306 = *(*(v372 + 56) + 8 * v317);
                goto LABEL_97;
              }
            }

            else
            {
            }

            sub_22632EDC0(v64 + *(v388 + 20), v373, type metadata accessor for VisualAction.Kind);
            if (swift_getEnumCaseMultiPayload() == 2)
            {
              v320 = sub_22634A700();
            }

            else
            {
              v320 = sub_22634A7D0();
            }

            v306 = v320;
            sub_22632EE90(v373, type metadata accessor for VisualAction.Kind);
          }

LABEL_97:
          v324 = sub_2262DBE60();
          if (*(v386 + 16))
          {
            v326 = sub_22633941C(v324, v325);
            v328 = v327;

            if (v328)
            {
              v435 = *(*(v386 + 56) + 8 * v326);
LABEL_105:
              v445 = v105;
              v330 = sub_2262DBE60();
              v332 = *(v385 + 16);
              v367 = v73;
              v436 = v306;
              if (v332)
              {
                v333 = sub_22633941C(v330, v331);
                v335 = v334;

                v336 = 0;
                if (v335)
                {
                  v336 = *(*(v385 + 56) + 8 * v333);
                }
              }

              else
              {

                v336 = 0;
              }

              v337 = v71;
              v338 = v380;
              v339 = 0.0;
              v340 = v69;
              if (*(v380 + 16))
              {
                v341 = sub_22633941C(*v64, v64[1]);
                if (v342)
                {
                  v339 = *(*(v338 + 56) + 8 * v341);
                }
              }

              v343 = v396;
              v344 = sub_22632EA30(v214);
              v345 = sub_22632EA30(v231);
              v346 = sub_22632EA30(v440);
              v347 = *(v7 + v369);
              v348 = *(v7 + v368);
              *&v456 = v340;
              *(&v456 + 1) = v337;
              *&v457 = v367;
              *(&v457 + 1) = v445;
              *&v458 = v75;
              *(&v458 + 1) = v343;
              *&v459 = v344;
              *(&v459 + 1) = v345;
              *&v460 = v346;
              *(&v460 + 1) = v441;
              *&v461 = v436;
              *(&v461 + 1) = v435;
              *&v462 = v336;
              *(&v462 + 1) = v339;
              *&v463 = v347;
              *(&v463 + 1) = v348;
              sub_22632EDB8(&v456);
              v349 = v391;
              sub_22632EDC0(v64, v391, type metadata accessor for VisualAction);
              v350 = v379;
              v351 = v349 + *(v379 + 20);
              v352 = v463;
              *(v351 + 96) = v462;
              *(v351 + 112) = v352;
              *(v351 + 128) = v464;
              v354 = v459;
              v353 = v460;
              *(v351 + 32) = v458;
              *(v351 + 48) = v354;
              v355 = v461;
              *(v351 + 64) = v353;
              *(v351 + 80) = v355;
              v356 = v457;
              *v351 = v456;
              *(v351 + 16) = v356;
              *(v349 + *(v350 + 24)) = 0;
              *(v349 + *(v350 + 28)) = 0;
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v395 = sub_2262DCC74(0, v395[2] + 1, 1, v395);
              }

              v358 = v395[2];
              v357 = v395[3];
              if (v358 >= v357 >> 1)
              {
                v395 = sub_2262DCC74(v357 > 1, v358 + 1, 1, v395);
              }

              v359 = v395;
              v395[2] = v358 + 1;
              sub_22632EE28(v391, v359 + ((*(v378 + 80) + 32) & ~*(v378 + 80)) + *(v378 + 72) * v358, type metadata accessor for RankedVisualAction);
              goto LABEL_70;
            }
          }

          else
          {
          }

          sub_22632EDC0(v64 + *(v388 + 20), v387, type metadata accessor for VisualAction.Kind);
          if (swift_getEnumCaseMultiPayload() == 2)
          {
            v329 = sub_22634A700();
          }

          else
          {
            v329 = sub_22634A7D0();
          }

          v435 = v329;
          sub_22632EE90(v387, type metadata accessor for VisualAction.Kind);
          goto LABEL_105;
        }

        sub_22634F46C();
        v397 = v408[1];
        (v397)(v228, v212);

        v408 = sub_2262DBE60();
        v450 = v233;
        v234 = v390;
        sub_22632C3D4(v215 + v227, v390);
        if (v229(v234, 1, v212) == 1)
        {
          sub_2262D67D8(v234, &qword_27D792FE0, &unk_226351C10);
          v381 = 0;
          v440 = 0.0;
        }

        else
        {
          v381 = sub_22634F46C();
          v440 = v235;
          (v397)(v234, v212);
        }

        v236 = v435;
        v237 = v427;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7931E0, &qword_2263524F0);
        v238 = v406 | 7;
        v406 = v403 + *&v436;
        v397 = v238;
        v239 = swift_allocObject();
        *(v239 + 16) = v455;
        v240 = v454;
        (*&v236)(v454, v407, v453);
        v241 = v417;
        v242 = swift_allocObject();
        *(v242 + 16) = v455;
        v243 = (v242 + v241 + *(v237 + 48));
        v420();
        v244 = v450;
        *v243 = v408;
        v243[1] = v244;
        v245 = v404;
        v429(v243, v447, v404);
        v246 = v243;
        v247 = v428;
        v428(v246, 0, 1, v245);

        sub_22634F05C();
        v408 = v239;
        v465 = v239;
        v248 = v440;
        if (v440 == 0.0)
        {
          v254 = v447;
          v257 = v408;
        }

        else
        {
          (*&v435)(v240, *&v441 + OBJC_IVAR____TtC26VisualActionPredictionCore14VectorDatabase_majorLabelAttribute, v453);
          v249 = swift_allocObject();
          *(v249 + 16) = v455;
          v250 = (v249 + v241 + *(v427 + 48));
          v420();
          *v250 = v381;
          *(v250 + 1) = v248;
          v429(v250, v447, v245);
          v247(v250, 0, 1, v245);

          sub_22634F05C();
          v251 = v408;
          v253 = v408[2];
          v252 = v408[3];
          v254 = v447;
          if (v253 >= v252 >> 1)
          {
            v251 = sub_2262DC96C(v252 > 1, v253 + 1, 1, v408);
          }

          v255 = v403;
          v256 = v415;
          v251[2] = v253 + 1;
          v257 = v251;
          v256(v251 + v255 + v253 * *&v436, v393, v449);
          v465 = v257;
        }

        v259 = sub_2263035CC(v258, &v465, v258);
        v408 = v257;
        if (*(v259 + 16))
        {
          v260 = v384;
          v261 = v370;
          v262 = v392;
          (*(v384 + 16))(v370, v259 + ((*(v260 + 80) + 32) & ~*(v260 + 80)), v392);

          v263 = sub_22634F13C();
          v265 = v264;
          (*(v260 + 8))(v261, v262);
          if (v265 >> 60 != 15)
          {
            v266 = sub_22634ED1C();
            v267 = *(v266 + 48);
            v268 = *(v266 + 52);
            swift_allocObject();
            sub_22634ED0C();
            sub_22630BE08();
            sub_22634ECFC();

            v363 = *&v458;
            sub_22634EE5C();
            v365 = v364;
            sub_2262D66C4(v263, v265);

            v231 = v365 - v363;
LABEL_64:

            v7 = v446;
            v232 = v254;
            goto LABEL_65;
          }
        }

        else
        {
        }

        sub_22634EE5C();
        v231 = v269;

        goto LABEL_64;
      }

      v450 = 0;
      v149 = v426;
      v64 = v444;
LABEL_66:
      sub_22634FFBC();
      v280 = v422;
      sub_22632EDC0(v64, v422, type metadata accessor for VisualAction);
      v281 = v103;
      v282 = sub_22635003C();
      v283 = sub_22635073C();

      if (os_log_type_enabled(v282, v283))
      {
        v284 = swift_slowAlloc();
        v285 = swift_slowAlloc();
        v286 = swift_slowAlloc();
        *&v456 = v286;
        *v284 = 136446466;
        v287 = sub_2262DBE60();
        v289 = v288;
        sub_22632EE90(v280, type metadata accessor for VisualAction);
        v290 = sub_226345004(v287, v289, &v456);

        *(v284 + 4) = v290;
        *(v284 + 12) = 2112;
        v291 = v103;
        v292 = _swift_stdlib_bridgeErrorToNSError();
        *(v284 + 14) = v292;
        *v285 = v292;
        _os_log_impl(&dword_2262B6000, v282, v283, "Unable to featurize action %{public}s: %@", v284, 0x16u);
        sub_2262D67D8(v285, &qword_27D793CC0, qword_226352A00);
        v293 = v285;
        v64 = v444;
        MEMORY[0x22AA7D570](v293, -1, -1);
        __swift_destroy_boxed_opaque_existential_1Tm(v286);
        MEMORY[0x22AA7D570](v286, -1, -1);
        MEMORY[0x22AA7D570](v284, -1, -1);
      }

      else
      {

        sub_22632EE90(v280, type metadata accessor for VisualAction);
      }

      (*v421)(v149, v423);
      v7 = v446;
LABEL_70:
      sub_22632EE90(v64, type metadata accessor for VisualAction);
      v67 = v442 + v424;
      v65 = v443 - 1;
      if (v443 == 1)
      {
        return v395;
      }
    }
  }

  return MEMORY[0x277D84F90];
}

void sub_22632A4A0(void *a1)
{
  v2 = type metadata accessor for RankedVisualAction();
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2);
  v7 = &v87 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a1[2];
  v9 = MEMORY[0x277D84F90];
  v92 = v8;
  v93 = a1;
  v89 = v5;
  v90 = v4;
  if (v8)
  {
    v10 = &v7[*(v4 + 20)];
    v11 = a1 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v12 = *(v5 + 72);
    v99 = xmmword_226352020;
    v100 = v12;
    do
    {
      sub_22632EDC0(v11, v7, type metadata accessor for RankedVisualAction);
      v13 = *(v10 + 7);
      v107 = *(v10 + 6);
      v108 = v13;
      v109 = v10[128];
      v14 = *(v10 + 3);
      v103 = *(v10 + 2);
      v104 = v14;
      v15 = *(v10 + 5);
      v105 = *(v10 + 4);
      v106 = v15;
      v16 = *(v10 + 1);
      v101 = *v10;
      v102 = v16;
      if (sub_2262D66D8(&v101) == 1)
      {
        sub_22632EE90(v7, type metadata accessor for RankedVisualAction);
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7930F8, &qword_2263524D0);
        v17 = swift_allocObject();
        v18 = v101;
        v19 = v102;
        v17[1] = v99;
        v17[2] = v18;
        v20 = v103;
        v21 = v104;
        v17[3] = v19;
        v17[4] = v20;
        v22 = v105;
        v23 = v106;
        v17[5] = v21;
        v17[6] = v22;
        v24 = v107;
        v17[7] = v23;
        v17[8] = v24;
        sub_22632EE90(v7, type metadata accessor for RankedVisualAction);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = sub_2262DCDA0(0, v9[2] + 1, 1, v9);
        }

        v26 = v9[2];
        v25 = v9[3];
        if (v26 >= v25 >> 1)
        {
          v9 = sub_2262DCDA0((v25 > 1), v26 + 1, 1, v9);
        }

        v9[2] = v26 + 1;
        v9[v26 + 4] = v17;
        v12 = v100;
      }

      v11 += v12;
      --v8;
    }

    while (v8);
  }

  v27 = v97;
  v28 = sub_22632B9DC(v9);
  if (v27)
  {
LABEL_12:

    return;
  }

  v29 = v28;

  if (__OFADD__(v92, 2))
  {
LABEL_83:
    __break(1u);
  }

  else
  {
    v30 = v29[2];
    if (v30 == v92 + 2)
    {
      v88 = 0;
      sub_226326AF8(v110);
      sub_2262D95CC();
      v32 = v31;
      v33 = MEMORY[0x277D84F90];
      *&v101 = MEMORY[0x277D84F90];
      sub_226316610(0, v30, 0);
      v34 = 0;
      v35 = v101;
      v36 = *(v32 + 16);
      v96 = v29 + 4;
      v97 = v36;
      v91 = v32 + 32;
      v94 = v30;
      v95 = v29;
      v98 = v32;
      while (1)
      {
        if (v34 == v30)
        {
          goto LABEL_78;
        }

        if (v34 >= v29[2])
        {
          goto LABEL_79;
        }

        v100 = v35;
        *&v99 = v34;
        v37 = v96[v34];
        v38 = v97 >= *(v37 + 16) ? *(v37 + 16) : v97;
        v111 = v33;

        sub_2263165F0(0, v38, 0);
        v39 = v38;
        v40 = v111;
        if (v38)
        {
          break;
        }

        v43 = v98;
LABEL_32:
        v51 = *(v37 + 16);
        if (v39 != v51)
        {
          v56 = v39 + 4;
          v35 = v100;
          while (1)
          {
            v57 = v56 - 4;
            if (v56 - 4 >= v51)
            {
              break;
            }

            v58 = *(v43 + 16);
            if (v57 == v58)
            {
              goto LABEL_34;
            }

            if (v57 >= v58)
            {
              goto LABEL_75;
            }

            v59 = *(v37 + 8 * v56);
            v60 = *(v43 + 8 * v56);
            v111 = v40;
            v62 = *(v40 + 16);
            v61 = *(v40 + 24);
            if (v62 >= v61 >> 1)
            {
              sub_2263165F0((v61 > 1), v62 + 1, 1);
              v43 = v98;
              v40 = v111;
            }

            *(v40 + 16) = v62 + 1;
            *(v40 + 8 * v62 + 32) = v59 * v60;
            v51 = *(v37 + 16);
            v63 = v56 - 3;
            ++v56;
            if (v63 == v51)
            {
              goto LABEL_34;
            }
          }

          __break(1u);
LABEL_75:
          __break(1u);
LABEL_76:
          __break(1u);
LABEL_77:
          __break(1u);
LABEL_78:
          __break(1u);
LABEL_79:
          __break(1u);
LABEL_80:
          __break(1u);
LABEL_81:
          __break(1u);
LABEL_82:
          __break(1u);
          goto LABEL_83;
        }

        v35 = v100;
LABEL_34:

        *&v101 = v35;
        v53 = *(v35 + 16);
        v52 = *(v35 + 24);
        v54 = v99;
        if (v53 >= v52 >> 1)
        {
          sub_226316610((v52 > 1), v53 + 1, 1);
          v54 = v99;
          v35 = v101;
        }

        v34 = v54 + 1;
        *(v35 + 16) = v53 + 1;
        v55 = v35 + 32;
        *(v35 + 32 + 8 * v53) = v40;
        v30 = v94;
        v29 = v95;
        v33 = MEMORY[0x277D84F90];
        if (v34 == v94)
        {

          v65 = v88;
          v66 = sub_22632EB64(v35);
          if (v65)
          {
            goto LABEL_12;
          }

          if (!v92)
          {

            goto LABEL_12;
          }

          v98 = v67;
          *&v99 = v66;
          v68 = v66 + 32;
          v69 = v67 + 32;

          v70 = 0;
          v100 = v35;
          while (v70 < *(v35 + 16))
          {
            v71 = *(v55 + 8 * v70);
            v72 = *(v71 + 16);
            if (v72)
            {
              v73 = 0;
              v74 = v71 + 32;
              v75 = *(v99 + 16);
              v76 = 0.0;
              do
              {
                if (v75 == v73)
                {
                  break;
                }

                if (v73 >= v75)
                {
                  goto LABEL_76;
                }

                v76 = v76 + (*(v74 + 8 * v73) - *(v68 + 8 * v73)) * (*(v74 + 8 * v73) - *(v68 + 8 * v73));
                ++v73;
              }

              while (v72 != v73);
              v77 = sqrt(v76);
              v78 = 0;
              v79 = *(v98 + 16);
              v80 = 0.0;
              do
              {
                if (v79 == v78)
                {
                  break;
                }

                if (v78 >= v79)
                {
                  goto LABEL_77;
                }

                v80 = v80 + (*(v74 + 8 * v78) - *(v69 + 8 * v78)) * (*(v74 + 8 * v78) - *(v69 + 8 * v78));
                ++v78;
              }

              while (v72 != v78);
            }

            else
            {
              v77 = 0.0;
              v80 = 0.0;
            }

            v81 = sqrt(v80);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v93 = sub_2262E8694(v93);
            }

            v82 = v93;
            if (v70 >= v93[2])
            {
              goto LABEL_81;
            }

            v83 = v81 / (v77 + v81 + 2.22044605e-16);
            v84 = v90;
            v85 = v93 + ((*(v89 + 80) + 32) & ~*(v89 + 80)) + *(v89 + 72) * v70;
            *&v85[*(v90 + 24)] = v83;
            v86 = sub_22634B870();
            if (v70 >= v82[2])
            {
              goto LABEL_82;
            }

            ++v70;
            v85[*(v84 + 28)] = v86 < v83;
            v35 = v100;
            if (v70 == v92)
            {
              goto LABEL_72;
            }
          }

          goto LABEL_80;
        }
      }

      v41 = 0;
      v42 = *(v37 + 16);
      v43 = v98;
      v44 = v91;
      while (v42 != v41)
      {
        if (v41 >= *(v37 + 16))
        {
          goto LABEL_69;
        }

        v45 = *(v43 + 16);
        if (v41 == v45)
        {
          goto LABEL_70;
        }

        if (v41 >= v45)
        {
          goto LABEL_71;
        }

        v46 = *(v37 + 32 + 8 * v41);
        v47 = *(v44 + 8 * v41);
        v111 = v40;
        v49 = *(v40 + 16);
        v48 = *(v40 + 24);
        if (v49 >= v48 >> 1)
        {
          v50 = v39;
          sub_2263165F0((v48 > 1), v49 + 1, 1);
          v39 = v50;
          v44 = v91;
          v43 = v98;
          v40 = v111;
        }

        ++v41;
        *(v40 + 16) = v49 + 1;
        *(v40 + 8 * v49 + 32) = v46 * v47;
        if (v39 == v41)
        {
          goto LABEL_32;
        }
      }

      __break(1u);
LABEL_69:
      __break(1u);
LABEL_70:
      __break(1u);
LABEL_71:
      __break(1u);
LABEL_72:

      goto LABEL_12;
    }

    sub_22632E4EC();
    swift_allocError();
    *v64 = 2;
    swift_willThrow();
  }
}

BOOL sub_22632AC40(uint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  v6 = type metadata accessor for RankedVisualAction();
  v7 = *(a1 + *(v6 + 24));
  v8 = *a3;
  if (*(*a3 + 16) && (v9 = sub_22633941C(*a1, a1[1]), (v10 & 1) != 0))
  {
    v11 = *(*(v8 + 56) + 8 * v9);
  }

  else
  {
    v11 = 0;
  }

  v12 = sub_2262DBE60();
  v14 = v13;
  v15 = *(a2 + *(v6 + 24));
  v16 = *a3;
  if (*(*a3 + 16) && (v17 = sub_22633941C(*a2, a2[1]), (v18 & 1) != 0))
  {
    v19 = *(*(v16 + 56) + 8 * v17);
  }

  else
  {
    v19 = 0;
  }

  v20 = sub_2262DBE60();
  if (v7 == v15)
  {
    if (v11 == v19)
    {
      if (v20 == v12 && v21 == v14)
      {

        return 0;
      }

      else
      {
        v23 = sub_226350C4C();

        return v23 & 1;
      }
    }

    else
    {

      return v19 < v11;
    }
  }

  else
  {

    return v15 < v7;
  }
}

double sub_22632ADB0(uint64_t a1)
{
  v3 = sub_22634F34C();
  v43 = *(v3 - 8);
  v4 = *(v43 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2263500AC();
  v42 = *(v7 - 8);
  v8 = *(v42 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for VisualAction.Kind.SystemTool(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for VisualAction.Kind(0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15);
  v18 = (&v41 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = 0.0;
  if (*(v1 + OBJC_IVAR____TtC26VisualActionPredictionCore18VisualActionRanker_minorLabel + 8))
  {
    v20 = type metadata accessor for VisualAction(0);
    sub_22632EDC0(a1 + *(v20 + 20), v18, type metadata accessor for VisualAction.Kind);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload <= 1)
    {
      if (!EnumCaseMultiPayload)
      {
        sub_22632EE28(v18, v14, type metadata accessor for VisualAction.Kind.SystemTool);
        v23 = sub_2262DA498();
        (*(v42 + 16))(v10, &v14[*(v11 + 20)], v7);
        sub_2262DB424();
        sub_22635091C();
        if (!*(v23 + 16) || (v24 = sub_226339494(v45), (v25 & 1) == 0))
        {

          sub_226315840(v45);
          sub_22632EE90(v14, type metadata accessor for VisualAction.Kind.SystemTool);
          return v19;
        }

        LOBYTE(v19) = *(*(v23 + 56) + v24);
        sub_226315840(v45);
        sub_22632EE90(v14, type metadata accessor for VisualAction.Kind.SystemTool);
        goto LABEL_22;
      }

      v31 = v18[1];
      v32 = v18[3];
      v33 = v18[5];
      v34 = v18[6];
      v35 = sub_2262DA498();
      v36 = 0x69746E4565766173;
      if (!v31)
      {
        v36 = 0x6E65635365766173;
      }

      v37 = 0xEA00000000007974;
      if (!v31)
      {
        v37 = 0xE900000000000065;
      }

      v44[0] = v36;
      v44[1] = v37;
      sub_22635091C();
      if (*(v35 + 16))
      {
        v38 = sub_226339494(v45);
        if (v39)
        {
          LOBYTE(v19) = *(*(v35 + 56) + v38);

          goto LABEL_21;
        }
      }
    }

    else
    {
      if (EnumCaseMultiPayload == 2)
      {
        v26 = v43;
        (*(v43 + 32))(v6, v18, v3);
        v27 = sub_22634F33C();
        (*(v26 + 8))(v6, v3);
        return v27;
      }

      if (EnumCaseMultiPayload == 3)
      {
        v22 = sub_22634FBEC();
        (*(*(v22 - 8) + 8))(v18, v22);
        return v19;
      }

      v28 = sub_2262DA498();
      strcpy(v44, "VisualSearch");
      BYTE5(v44[1]) = 0;
      HIWORD(v44[1]) = -5120;
      sub_22635091C();
      if (*(v28 + 16))
      {
        v29 = sub_226339494(v45);
        if (v30)
        {
          LOBYTE(v19) = *(*(v28 + 56) + v29);
LABEL_21:
          sub_226315840(v45);
LABEL_22:

          return *&v19;
        }
      }
    }

    sub_226315840(v45);
  }

  return v19;
}

uint64_t sub_22632B2D8(uint64_t a1)
{
  v64 = a1;
  v2 = sub_22634F34C();
  v62 = *(v2 - 8);
  v63 = v2;
  v3 = *(v62 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v58 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2263500AC();
  v60 = *(v6 - 8);
  v61 = v6;
  v7 = *(v60 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v58 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for VisualAction.Kind.SystemTool(0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v58 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for VisualAction.Kind(0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14);
  v17 = (&v58 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D792FE0, &unk_226351C10);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v21 = &v58 - v20;
  v22 = sub_22634F47C();
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22);
  v25 = &v58 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = v1 + OBJC_IVAR____TtC26VisualActionPredictionCore18VisualActionRanker_majorLabel;
  v28 = v27;
  sub_22632C3D4(v26, v21);
  if ((*(v28 + 48))(v21, 1, v22) == 1)
  {
    return sub_2262D67D8(v21, &qword_27D792FE0, &unk_226351C10);
  }

  v30 = *(v28 + 32);
  v59 = v25;
  v30(v25, v21, v22);
  v31 = type metadata accessor for VisualAction(0);
  sub_22632EDC0(v64 + *(v31 + 20), v17, type metadata accessor for VisualAction.Kind);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    v64 = v28;
    if (EnumCaseMultiPayload)
    {
      v47 = v17[1];
      v48 = v17[3];
      v49 = v17[5];
      v50 = v17[6];
      v51 = v59;
      v52 = sub_2262DA9E0();
      v53 = 0x69746E4565766173;
      if (!v47)
      {
        v53 = 0x6E65635365766173;
      }

      v54 = 0xEA00000000007974;
      if (!v47)
      {
        v54 = 0xE900000000000065;
      }

      v65[0] = v53;
      v65[1] = v54;
      sub_22635091C();
      if (*(v52 + 16))
      {
        v55 = sub_226339494(v66);
        if (v56)
        {
          v57 = *(*(v52 + 56) + v55);

          sub_226315840(v66);
          (*(v64 + 8))(v51, v22);
        }
      }

      sub_226315840(v66);
      return (*(v64 + 8))(v51, v22);
    }

    else
    {
      sub_22632EE28(v17, v13, type metadata accessor for VisualAction.Kind.SystemTool);
      v35 = v59;
      v36 = sub_2262DA9E0();
      (*(v60 + 16))(v9, &v13[*(v10 + 20)], v61);
      sub_2262DB424();
      sub_22635091C();
      if (*(v36 + 16))
      {
        v37 = sub_226339494(v66);
        if (v38)
        {
          v39 = *(*(v36 + 56) + v37);
          sub_226315840(v66);
          sub_22632EE90(v13, type metadata accessor for VisualAction.Kind.SystemTool);
          (*(v64 + 8))(v35, v22);
        }
      }

      sub_226315840(v66);
      sub_22632EE90(v13, type metadata accessor for VisualAction.Kind.SystemTool);
      return (*(v64 + 8))(v35, v22);
    }
  }

  else
  {
    v33 = v28;
    if (EnumCaseMultiPayload == 2)
    {
      v41 = v62;
      v40 = v63;
      (*(v62 + 32))(v5, v17, v63);
      sub_22634F33C();
      (*(v41 + 8))(v5, v40);
      return (*(v28 + 8))(v59, v22);
    }

    if (EnumCaseMultiPayload == 3)
    {
      (*(v28 + 8))(v59, v22);
      v34 = sub_22634FBEC();
      return (*(*(v34 - 8) + 8))(v17, v34);
    }

    v42 = v59;
    v43 = sub_2262DA9E0();
    strcpy(v65, "VisualSearch");
    BYTE5(v65[1]) = 0;
    HIWORD(v65[1]) = -5120;
    sub_22635091C();
    if (*(v43 + 16))
    {
      v44 = sub_226339494(v66);
      if (v45)
      {
        v46 = *(*(v43 + 56) + v44);
        sub_226315840(v66);
        (*(v33 + 8))(v42, v22);
      }
    }

    sub_226315840(v66);
    return (*(v33 + 8))(v42, v22);
  }
}

void *sub_22632B9DC(unint64_t a1)
{
  v3 = v2;
  v4 = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D792FE0, &unk_226351C10);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = (v47 - v8);
  v80 = 0u;
  v81 = 0u;
  v78 = 0u;
  v79 = 0u;
  v76 = 0u;
  v77 = 0u;
  v74 = 0u;
  v75 = 0u;
  sub_2262D95CC();
  v11 = v10;

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_57:
    a1 = sub_2262DCDA0(0, *(a1 + 16) + 1, 1, a1);
  }

  v13 = *(a1 + 16);
  v12 = *(a1 + 24);
  if (v13 >= v12 >> 1)
  {
    a1 = sub_2262DCDA0((v12 > 1), v13 + 1, 1, a1);
  }

  *(a1 + 16) = v13 + 1;
  *(a1 + 8 * v13 + 32) = v11;
  sub_22632C3D4(v4 + OBJC_IVAR____TtC26VisualActionPredictionCore18VisualActionRanker_majorLabel, v9);
  v14 = sub_22634F47C();
  v15 = (*(*(v14 - 8) + 48))(v9, 1, v14);
  sub_2262D67D8(v9, &qword_27D792FE0, &unk_226351C10);
  v16 = *(v4 + OBJC_IVAR____TtC26VisualActionPredictionCore18VisualActionRanker_minorLabel + 8);
  v17 = 1.0;
  if (v15 == 1)
  {
    v18 = 0.0;
  }

  else
  {
    v18 = 1.0;
  }

  v19 = 11.0;
  if (v15 == 1)
  {
    v20 = 0.0;
  }

  else
  {
    v20 = 11.0;
  }

  if (!v16)
  {
    v19 = 0.0;
  }

  v58 = v19;
  v59 = v20;
  v60 = 0x4026000000000000;
  v61 = 0;
  if (!v16)
  {
    v17 = 0.0;
  }

  v62 = 0;
  v63 = 0;
  v64 = v17;
  v65 = v18;
  v66 = 0x3FF0000000000000;
  v67 = v17;
  v68 = v18;
  v69 = 0x3FF0000000000000;
  v70 = v17;
  v72 = 0;
  v73 = 0;
  v71 = 0x4008000000000000;
  sub_2262D95CC();
  v23 = *(a1 + 16);
  v22 = *(a1 + 24);
  v50 = v23 + 1;
  if (v23 >= v22 >> 1)
  {
    v46 = v21;
    a1 = sub_2262DCDA0((v22 > 1), v50, 1, a1);
    v21 = v46;
  }

  *(a1 + 16) = v50;
  *(a1 + 32 + 8 * v23) = v21;
  v49 = *(*(a1 + 32) + 16);
  if (!v49)
  {
    return a1;
  }

  v47[1] = v3;

  v4 = 0;
  v54 = v23;
  v55 = v23 + 1;
  v9 = a1;
  v48 = a1;
  while (2)
  {
    v51 = v4 + 1;
    v57 = MEMORY[0x277D84F90];
    sub_2263165F0(0, v50, 0);
    v24 = 0;
    v11 = v57;
    do
    {
      v25 = *(a1 + 8 * v24 + 32);
      if (v4 >= *(v25 + 16))
      {
        __break(1u);
LABEL_53:
        __break(1u);
LABEL_54:
        __break(1u);
LABEL_55:
        __break(1u);
LABEL_56:
        __break(1u);
        goto LABEL_57;
      }

      v26 = *(v25 + 8 * v4 + 32);
      v57 = v11;
      v28 = *(v11 + 16);
      v27 = *(v11 + 24);
      if (v28 >= v27 >> 1)
      {
        sub_2263165F0((v27 > 1), v28 + 1, 1);
        v11 = v57;
      }

      ++v24;
      *(v11 + 16) = v28 + 1;
      *(v11 + 8 * v28 + 32) = v26;
    }

    while (v55 != v24);
    a1 = 0;
    v56 = v28 + 1;
    v52 = (v11 + 48);
    v53 = v11 + 32;
    do
    {
      if (v28 < 3)
      {
        v30 = 0;
        v31 = 0.0;
LABEL_32:
        v36 = v56 - v30;
        v37 = (v53 + 8 * v30);
        do
        {
          v38 = *v37++;
          v31 = v31 + v38 * v38;
          --v36;
        }

        while (v36);
        goto LABEL_34;
      }

      v31 = 0.0;
      v32 = (v28 + 1) & 0x7FFFFFFFFFFFFFFCLL;
      v33 = v52;
      do
      {
        v34 = vmulq_f64(v33[-1], v33[-1]);
        v35 = vmulq_f64(*v33, *v33);
        v31 = v31 + v34.f64[0] + v34.f64[1] + v35.f64[0] + v35.f64[1];
        v33 += 2;
        v32 -= 4;
      }

      while (v32);
      v30 = (v28 + 1) & 0x7FFFFFFFFFFFFFFCLL;
      if (v56 != v30)
      {
        goto LABEL_32;
      }

LABEL_34:
      v39 = sqrt(v31);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (v39 == 0.0)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v9 = sub_2262E8680(v9);
        }

        if (a1 >= v9[2])
        {
          goto LABEL_53;
        }

        v3 = v9 + 4;
        v41 = v9[a1 + 4];
        v42 = swift_isUniquelyReferenced_nonNull_native();
        v9[a1 + 4] = v41;
        if ((v42 & 1) == 0)
        {
          v41 = sub_2262E866C(v41);
          v3[a1] = v41;
        }

        if (v4 >= *(v41 + 2))
        {
          goto LABEL_54;
        }

        *&v41[8 * v4 + 32] = 0;
      }

      else
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v9 = sub_2262E8680(v9);
        }

        if (a1 >= v9[2])
        {
          goto LABEL_55;
        }

        v3 = v9 + 4;
        v43 = v9[a1 + 4];
        v44 = swift_isUniquelyReferenced_nonNull_native();
        v9[a1 + 4] = v43;
        if ((v44 & 1) == 0)
        {
          v43 = sub_2262E866C(v43);
          v3[a1] = v43;
        }

        if (v4 >= *(v43 + 2))
        {
          goto LABEL_56;
        }

        *&v43[8 * v4 + 32] = *&v43[8 * v4 + 32] / v39;
      }
    }

    while (a1++ != v54);

    v4 = v51;
    a1 = v48;
    if (v51 != v49)
    {
      continue;
    }

    break;
  }

  return v9;
}

uint64_t sub_22632BF00(void *a1, unint64_t a2)
{
  v4 = [a1 bundleID];
  v5 = sub_22635046C();
  v7 = v6;

  swift_beginAccess();
  v8 = *(a2 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *(a2 + 16);
  *(a2 + 16) = 0x8000000000000000;
  v11 = sub_22633941C(v5, v7);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_11;
  }

  v2 = v12;
  if (v10[3] < v16)
  {
    sub_2263366F4(v16, isUniquelyReferenced_nonNull_native);
    v11 = sub_22633941C(v5, v7);
    if ((v2 & 1) == (v17 & 1))
    {
      goto LABEL_6;
    }

    v11 = sub_226350C8C();
    __break(1u);
  }

  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_12;
  }

  while (1)
  {
LABEL_6:
    *(a2 + 16) = v10;
    if ((v2 & 1) == 0)
    {
      a2 = v11;
      sub_2262E3118(v11, v5, v7, 0, v10);

      v11 = a2;
    }

    v18 = v10[7];
    v19 = *(v18 + 8 * v11);
    v15 = __OFADD__(v19, 1);
    v20 = v19 + 1;
    if (!v15)
    {
      break;
    }

LABEL_11:
    __break(1u);
LABEL_12:
    v22 = v11;
    sub_226339F9C();
    v11 = v22;
  }

  *(v18 + 8 * v11) = v20;
  swift_endAccess();

  return 1;
}

uint64_t sub_22632C078(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  LOBYTE(v4) = v4();

  return v4 & 1;
}

uint64_t sub_22632C0D0()
{
  v1 = *(v0 + 2);

  v2 = OBJC_IVAR____TtC26VisualActionPredictionCore18VisualActionRanker_sessionStart;
  v3 = sub_22634EECC();
  (*(*(v3 - 8) + 8))(&v0[v2], v3);
  v4 = OBJC_IVAR____TtC26VisualActionPredictionCore18VisualActionRanker_visualContext;
  v5 = sub_22634F51C();
  (*(*(v5 - 8) + 8))(&v0[v4], v5);
  sub_2262D67D8(&v0[OBJC_IVAR____TtC26VisualActionPredictionCore18VisualActionRanker_majorLabel], &qword_27D792FE0, &unk_226351C10);
  v6 = *&v0[OBJC_IVAR____TtC26VisualActionPredictionCore18VisualActionRanker_minorLabel + 8];

  __swift_destroy_boxed_opaque_existential_1Tm(&v0[OBJC_IVAR____TtC26VisualActionPredictionCore18VisualActionRanker_engagementStream]);
  v7 = *&v0[OBJC_IVAR____TtC26VisualActionPredictionCore18VisualActionRanker_appInFocus + 8];

  v8 = *(*v0 + 48);
  v9 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for VisualActionRanker()
{
  result = qword_28137ED98;
  if (!qword_28137ED98)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_22632C270()
{
  v0 = sub_22634EECC();
  if (v1 <= 0x3F)
  {
    v6 = *(v0 - 8) + 64;
    v2 = sub_22634F51C();
    if (v3 <= 0x3F)
    {
      v7 = *(v2 - 8) + 64;
      sub_2262BA32C();
      if (v5 <= 0x3F)
      {
        v8 = *(v4 - 8) + 64;
        swift_updateClassMetadata2();
      }
    }
  }
}

uint64_t sub_22632C3D4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D792FE0, &unk_226351C10);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22632C444(void **a1, uint64_t *a2)
{
  v4 = *(type metadata accessor for RankedVisualAction() - 8);
  v5 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v5 = sub_2262DF510(v5);
  }

  v6 = v5[2];
  v8[0] = v5 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
  v8[1] = v6;
  result = sub_22632C4FC(v8, a2);
  *a1 = v5;
  return result;
}

uint64_t sub_22632C4FC(uint64_t *a1, uint64_t *a2)
{
  v4 = a1[1];
  result = sub_226350C0C();
  if (result < v4)
  {
    if (v4 >= -1)
    {
      v6 = result;
      v7 = v4 / 2;
      if (v4 <= 1)
      {
        v8 = MEMORY[0x277D84F90];
      }

      else
      {
        type metadata accessor for RankedVisualAction();
        v8 = sub_22635059C();
        *(v8 + 16) = v7;
      }

      v9 = *(type metadata accessor for RankedVisualAction() - 8);
      v10[0] = v8 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
      v10[1] = v7;
      sub_22632C9E4(v10, v11, a1, v6, a2);
      *(v8 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v4 < 0)
  {
    goto LABEL_12;
  }

  if (v4)
  {
    return sub_22632C634(0, v4, 1, a1, a2);
  }

  return result;
}

uint64_t sub_22632C634(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  v54 = type metadata accessor for RankedVisualAction();
  v10 = *(*(v54 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v54);
  v52 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = (&v43 - v14);
  result = MEMORY[0x28223BE20](v13);
  v19 = (&v43 - v18);
  v45 = a2;
  if (a3 != a2)
  {
    v20 = *a4;
    v21 = *(v17 + 72);
    v22 = *a4 + v21 * (a3 - 1);
    v50 = -v21;
    v51 = v20;
    v23 = a1 - a3;
    v44 = v21;
    v24 = v20 + v21 * a3;
    v53 = a5;
    v55 = v15;
LABEL_6:
    v48 = v22;
    v49 = a3;
    v46 = v24;
    v47 = v23;
    while (1)
    {
      sub_22632EDC0(v24, v19, type metadata accessor for RankedVisualAction);
      sub_22632EDC0(v22, v15, type metadata accessor for RankedVisualAction);
      v25 = *(v19 + *(v54 + 24));
      v26 = *a5;
      if (*(*a5 + 16) && (v27 = sub_22633941C(*v19, v19[1]), (v28 & 1) != 0))
      {
        v29 = *(*(v26 + 56) + 8 * v27);
      }

      else
      {
        v29 = 0;
      }

      v30 = sub_2262DBE60();
      v32 = v31;
      v33 = *(v55 + *(v54 + 24));
      v34 = *a5;
      if (*(*a5 + 16) && (v35 = sub_22633941C(*v55, v55[1]), (v36 & 1) != 0))
      {
        v37 = *(*(v34 + 56) + 8 * v35);
      }

      else
      {
        v37 = 0;
      }

      v38 = sub_2262DBE60();
      if (v25 != v33)
      {
        break;
      }

      if (v29 != v37)
      {

        v40 = v37 < v29;
        goto LABEL_22;
      }

      a5 = v53;
      if (v38 == v30 && v39 == v32)
      {

        v15 = v55;
        sub_22632EE90(v55, type metadata accessor for RankedVisualAction);
        result = sub_22632EE90(v19, type metadata accessor for RankedVisualAction);
LABEL_5:
        a3 = v49 + 1;
        v22 = v48 + v44;
        v23 = v47 - 1;
        v24 = v46 + v44;
        if (v49 + 1 == v45)
        {
          return result;
        }

        goto LABEL_6;
      }

      v40 = sub_226350C4C();

LABEL_23:
      v15 = v55;
      sub_22632EE90(v55, type metadata accessor for RankedVisualAction);
      result = sub_22632EE90(v19, type metadata accessor for RankedVisualAction);
      if ((v40 & 1) == 0)
      {
        goto LABEL_5;
      }

      if (!v51)
      {
        __break(1u);
        return result;
      }

      v41 = v52;
      sub_22632EE28(v24, v52, type metadata accessor for RankedVisualAction);
      swift_arrayInitWithTakeFrontToBack();
      result = sub_22632EE28(v41, v22, type metadata accessor for RankedVisualAction);
      v22 += v50;
      v24 += v50;
      if (__CFADD__(v23++, 1))
      {
        goto LABEL_5;
      }
    }

    v40 = v33 < v25;
LABEL_22:
    a5 = v53;
    goto LABEL_23;
  }

  return result;
}

uint64_t sub_22632C9E4(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v6 = v5;
  v169 = a5;
  v151 = a1;
  v9 = type metadata accessor for RankedVisualAction();
  v160 = *(v9 - 8);
  v10 = *(v160 + 64);
  v11 = MEMORY[0x28223BE20](v9);
  v154 = &v146 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v166 = &v146 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v170 = (&v146 - v16);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = (&v146 - v18);
  v20 = MEMORY[0x28223BE20](v17);
  v21 = MEMORY[0x28223BE20](v20);
  v163 = (&v146 - v22);
  v23 = MEMORY[0x28223BE20](v21);
  result = MEMORY[0x28223BE20](v23);
  v162 = a3;
  if (*(a3 + 8) < 1)
  {
    v30 = MEMORY[0x277D84F90];
LABEL_131:
    a3 = *v151;
    if (!*v151)
    {
      goto LABEL_171;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      goto LABEL_165;
    }

    goto LABEL_133;
  }

  v28 = *(a3 + 8);
  v148 = (&v146 - v25);
  v149 = v27;
  v164 = v26;
  v147 = a4;
  v29 = 0;
  v30 = MEMORY[0x277D84F90];
  v167 = v19;
  v168 = v9;
  while (1)
  {
    v161 = v28;
    v159 = v30;
    if (v29 + 1 >= v28)
    {
      v60 = v29 + 1;
    }

    else
    {
      v31 = *v162;
      v32 = *(v160 + 72);
      a3 = *v162 + v32 * (v29 + 1);
      v33 = v148;
      sub_22632EDC0(a3, v148, type metadata accessor for RankedVisualAction);
      v165 = v31;
      v34 = v31 + v32 * v29;
      v35 = v29;
      v36 = v149;
      sub_22632EDC0(v34, v149, type metadata accessor for RankedVisualAction);
      LODWORD(v158) = sub_22632AC40(v33, v36, v169);
      if (v6)
      {
        sub_22632EE90(v36, type metadata accessor for RankedVisualAction);
        sub_22632EE90(v33, type metadata accessor for RankedVisualAction);
      }

      v152 = 0;
      sub_22632EE90(v36, type metadata accessor for RankedVisualAction);
      result = sub_22632EE90(v33, type metadata accessor for RankedVisualAction);
      v150 = v35;
      v37 = v35 + 2;
      v38 = v165 + v32 * (v35 + 2);
      v39 = v161;
      v40 = v32;
      v165 = v32;
      while (v39 != v37)
      {
        v42 = v39;
        v43 = v163;
        sub_22632EDC0(v38, v163, type metadata accessor for RankedVisualAction);
        v44 = v164;
        sub_22632EDC0(a3, v164, type metadata accessor for RankedVisualAction);
        v45 = *(v43 + *(v168 + 24));
        v46 = *v169;
        if (*(*v169 + 16) && (v47 = sub_22633941C(*v43, v43[1]), (v48 & 1) != 0))
        {
          v49 = *(*(v46 + 56) + 8 * v47);
        }

        else
        {
          v49 = 0;
        }

        v50 = sub_2262DBE60();
        v52 = v51;
        v53 = *(v44 + *(v168 + 24));
        v54 = *v169;
        if (*(*v169 + 16) && (v55 = sub_22633941C(*v44, v44[1]), (v56 & 1) != 0))
        {
          v57 = *(*(v54 + 56) + 8 * v55);
        }

        else
        {
          v57 = 0;
        }

        v58 = sub_2262DBE60();
        if (v45 == v53)
        {
          if (v49 == v57)
          {
            if (v58 == v50 && v59 == v52)
            {

              v41 = 0;
            }

            else
            {
              v41 = sub_226350C4C();
            }
          }

          else
          {

            v41 = v57 < v49;
          }
        }

        else
        {

          v41 = v53 < v45;
        }

        v30 = v159;
        sub_22632EE90(v164, type metadata accessor for RankedVisualAction);
        result = sub_22632EE90(v163, type metadata accessor for RankedVisualAction);
        ++v37;
        v40 = v165;
        v38 += v165;
        a3 += v165;
        v19 = v167;
        v39 = v42;
        if ((v158 ^ v41))
        {
          v39 = v37 - 1;
          break;
        }
      }

      v6 = v152;
      v29 = v150;
      if ((v158 & 1) == 0)
      {
        goto LABEL_40;
      }

      if (v39 < v150)
      {
        goto LABEL_164;
      }

      if (v150 < v39)
      {
        v61 = v40 * (v39 - 1);
        v62 = v39 * v40;
        v63 = v39;
        v64 = v39;
        v65 = v150;
        v66 = v150 * v40;
        do
        {
          if (v65 != --v64)
          {
            v67 = *v162;
            if (!*v162)
            {
              goto LABEL_168;
            }

            a3 = v67 + v66;
            sub_22632EE28(v67 + v66, v154, type metadata accessor for RankedVisualAction);
            if (v66 < v61 || a3 >= (v67 + v62))
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v66 != v61)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            result = sub_22632EE28(v154, v67 + v61, type metadata accessor for RankedVisualAction);
            v6 = v152;
            v40 = v165;
          }

          ++v65;
          v61 -= v40;
          v62 -= v40;
          v66 += v40;
        }

        while (v65 < v64);
        v60 = v63;
        v19 = v167;
        v9 = v168;
        v29 = v150;
      }

      else
      {
LABEL_40:
        v60 = v39;
        v9 = v168;
      }
    }

    v68 = v162[1];
    if (v60 >= v68)
    {
      goto LABEL_51;
    }

    v161 = v60;
    v111 = __OFSUB__(v60, v29);
    v69 = v60 - v29;
    if (v111)
    {
      goto LABEL_161;
    }

    if (v69 < v147)
    {
      break;
    }

    a3 = v161;
    if (v161 < v29)
    {
      goto LABEL_160;
    }

LABEL_81:
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_2262DCB70(0, *(v30 + 2) + 1, 1, v30);
      v30 = result;
    }

    v97 = *(v30 + 2);
    v96 = *(v30 + 3);
    v98 = v97 + 1;
    if (v97 >= v96 >> 1)
    {
      result = sub_2262DCB70((v96 > 1), v97 + 1, 1, v30);
      v30 = result;
    }

    *(v30 + 2) = v98;
    v99 = &v30[16 * v97];
    *(v99 + 4) = v29;
    *(v99 + 5) = a3;
    v155 = a3;
    a3 = *v151;
    if (!*v151)
    {
      goto LABEL_170;
    }

    if (v97)
    {
      while (1)
      {
        v100 = v98 - 1;
        if (v98 >= 4)
        {
          break;
        }

        if (v98 == 3)
        {
          v101 = *(v30 + 4);
          v102 = *(v30 + 5);
          v111 = __OFSUB__(v102, v101);
          v103 = v102 - v101;
          v104 = v111;
LABEL_100:
          if (v104)
          {
            goto LABEL_149;
          }

          v117 = &v30[16 * v98];
          v119 = *v117;
          v118 = *(v117 + 1);
          v120 = __OFSUB__(v118, v119);
          v121 = v118 - v119;
          v122 = v120;
          if (v120)
          {
            goto LABEL_152;
          }

          v123 = &v30[16 * v100 + 32];
          v125 = *v123;
          v124 = *(v123 + 1);
          v111 = __OFSUB__(v124, v125);
          v126 = v124 - v125;
          if (v111)
          {
            goto LABEL_155;
          }

          if (__OFADD__(v121, v126))
          {
            goto LABEL_156;
          }

          if (v121 + v126 >= v103)
          {
            if (v103 < v126)
            {
              v100 = v98 - 2;
            }

            goto LABEL_121;
          }

          goto LABEL_114;
        }

        v127 = &v30[16 * v98];
        v129 = *v127;
        v128 = *(v127 + 1);
        v111 = __OFSUB__(v128, v129);
        v121 = v128 - v129;
        v122 = v111;
LABEL_114:
        if (v122)
        {
          goto LABEL_151;
        }

        v130 = &v30[16 * v100];
        v132 = *(v130 + 4);
        v131 = *(v130 + 5);
        v111 = __OFSUB__(v131, v132);
        v133 = v131 - v132;
        if (v111)
        {
          goto LABEL_154;
        }

        if (v133 < v121)
        {
          goto LABEL_3;
        }

LABEL_121:
        v138 = v100 - 1;
        if (v100 - 1 >= v98)
        {
          __break(1u);
LABEL_145:
          __break(1u);
LABEL_146:
          __break(1u);
LABEL_147:
          __break(1u);
LABEL_148:
          __break(1u);
LABEL_149:
          __break(1u);
LABEL_150:
          __break(1u);
LABEL_151:
          __break(1u);
LABEL_152:
          __break(1u);
LABEL_153:
          __break(1u);
LABEL_154:
          __break(1u);
LABEL_155:
          __break(1u);
LABEL_156:
          __break(1u);
LABEL_157:
          __break(1u);
LABEL_158:
          __break(1u);
LABEL_159:
          __break(1u);
LABEL_160:
          __break(1u);
LABEL_161:
          __break(1u);
LABEL_162:
          __break(1u);
          goto LABEL_163;
        }

        if (!*v162)
        {
          goto LABEL_167;
        }

        v139 = *&v30[16 * v138 + 32];
        v140 = *&v30[16 * v100 + 40];
        sub_22632D6D4(*v162 + *(v160 + 72) * v139, *v162 + *(v160 + 72) * *&v30[16 * v100 + 32], *v162 + *(v160 + 72) * v140, a3, v169);
        if (v6)
        {
        }

        if (v140 < v139)
        {
          goto LABEL_145;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v30 = sub_2262DECA8(v30);
        }

        if (v138 >= *(v30 + 2))
        {
          goto LABEL_146;
        }

        v141 = &v30[16 * v138];
        *(v141 + 4) = v139;
        *(v141 + 5) = v140;
        v171 = v30;
        result = sub_2262DEC1C(v100);
        v30 = v171;
        v98 = *(v171 + 2);
        if (v98 <= 1)
        {
          goto LABEL_3;
        }
      }

      v105 = &v30[16 * v98 + 32];
      v106 = *(v105 - 64);
      v107 = *(v105 - 56);
      v111 = __OFSUB__(v107, v106);
      v108 = v107 - v106;
      if (v111)
      {
        goto LABEL_147;
      }

      v110 = *(v105 - 48);
      v109 = *(v105 - 40);
      v111 = __OFSUB__(v109, v110);
      v103 = v109 - v110;
      v104 = v111;
      if (v111)
      {
        goto LABEL_148;
      }

      v112 = &v30[16 * v98];
      v114 = *v112;
      v113 = *(v112 + 1);
      v111 = __OFSUB__(v113, v114);
      v115 = v113 - v114;
      if (v111)
      {
        goto LABEL_150;
      }

      v111 = __OFADD__(v103, v115);
      v116 = v103 + v115;
      if (v111)
      {
        goto LABEL_153;
      }

      if (v116 >= v108)
      {
        v134 = &v30[16 * v100 + 32];
        v136 = *v134;
        v135 = *(v134 + 1);
        v111 = __OFSUB__(v135, v136);
        v137 = v135 - v136;
        if (v111)
        {
          goto LABEL_157;
        }

        if (v103 < v137)
        {
          v100 = v98 - 2;
        }

        goto LABEL_121;
      }

      goto LABEL_100;
    }

LABEL_3:
    v28 = v162[1];
    v29 = v155;
    if (v155 >= v28)
    {
      goto LABEL_131;
    }
  }

  if (__OFADD__(v29, v147))
  {
    goto LABEL_162;
  }

  if (v29 + v147 >= v68)
  {
    a3 = v68;
  }

  else
  {
    a3 = v29 + v147;
  }

  if (a3 < v29)
  {
LABEL_163:
    __break(1u);
LABEL_164:
    __break(1u);
LABEL_165:
    result = sub_2262DECA8(v30);
    v30 = result;
LABEL_133:
    v171 = v30;
    v142 = *(v30 + 2);
    if (v142 >= 2)
    {
      while (*v162)
      {
        v143 = *&v30[16 * v142];
        v144 = *&v30[16 * v142 + 24];
        sub_22632D6D4(*v162 + *(v160 + 72) * v143, *v162 + *(v160 + 72) * *&v30[16 * v142 + 16], *v162 + *(v160 + 72) * v144, a3, v169);
        if (v6)
        {
        }

        if (v144 < v143)
        {
          goto LABEL_158;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v30 = sub_2262DECA8(v30);
        }

        if (v142 - 2 >= *(v30 + 2))
        {
          goto LABEL_159;
        }

        v145 = &v30[16 * v142];
        *v145 = v143;
        *(v145 + 1) = v144;
        v171 = v30;
        result = sub_2262DEC1C(v142 - 1);
        v30 = v171;
        v142 = *(v171 + 2);
        if (v142 <= 1)
        {
        }
      }

      goto LABEL_169;
    }
  }

  v60 = v161;
  if (v161 == a3)
  {
LABEL_51:
    a3 = v60;
    if (v60 < v29)
    {
      goto LABEL_160;
    }

    goto LABEL_81;
  }

  v152 = v6;
  v70 = *v162;
  v71 = *(v160 + 72);
  v72 = *v162 + v71 * (v161 - 1);
  v73 = -v71;
  v150 = v29;
  v74 = v29 - v161;
  v165 = v70;
  v153 = v71;
  v75 = v70 + v161 * v71;
  v155 = a3;
LABEL_58:
  v156 = v75;
  v157 = v74;
  v76 = v75;
  v158 = v72;
  v77 = v72;
  while (1)
  {
    sub_22632EDC0(v76, v19, type metadata accessor for RankedVisualAction);
    sub_22632EDC0(v77, v170, type metadata accessor for RankedVisualAction);
    v78 = *(v19 + *(v9 + 24));
    v79 = *v169;
    if (*(*v169 + 16) && (v80 = sub_22633941C(*v19, v19[1]), (v81 & 1) != 0))
    {
      v82 = *(*(v79 + 56) + 8 * v80);
    }

    else
    {
      v82 = 0;
    }

    v83 = sub_2262DBE60();
    v85 = v84;
    v86 = *(v170 + *(v9 + 24));
    v87 = *v169;
    if (*(*v169 + 16))
    {
      v88 = sub_22633941C(*v170, v170[1]);
      v90 = (v89 & 1) != 0 ? *(*(v87 + 56) + 8 * v88) : 0;
    }

    else
    {
      v90 = 0;
    }

    v91 = sub_2262DBE60();
    if (v78 == v86)
    {
      if (v82 == v90)
      {
        if (v91 == v83 && v92 == v85)
        {

          sub_22632EE90(v170, type metadata accessor for RankedVisualAction);
          v19 = v167;
          sub_22632EE90(v167, type metadata accessor for RankedVisualAction);
          v9 = v168;
LABEL_57:
          v72 = v158 + v153;
          v74 = v157 - 1;
          a3 = v155;
          v75 = v156 + v153;
          if (++v161 == v155)
          {
            v6 = v152;
            v30 = v159;
            v29 = v150;
            if (v155 < v150)
            {
              goto LABEL_160;
            }

            goto LABEL_81;
          }

          goto LABEL_58;
        }

        v93 = sub_226350C4C();
      }

      else
      {

        v93 = v90 < v82;
      }
    }

    else
    {

      v93 = v86 < v78;
    }

    v9 = v168;
    sub_22632EE90(v170, type metadata accessor for RankedVisualAction);
    v19 = v167;
    result = sub_22632EE90(v167, type metadata accessor for RankedVisualAction);
    if ((v93 & 1) == 0)
    {
      goto LABEL_57;
    }

    if (!v165)
    {
      break;
    }

    v94 = v166;
    sub_22632EE28(v76, v166, type metadata accessor for RankedVisualAction);
    swift_arrayInitWithTakeFrontToBack();
    sub_22632EE28(v94, v77, type metadata accessor for RankedVisualAction);
    v77 += v73;
    v76 += v73;
    if (__CFADD__(v74++, 1))
    {
      goto LABEL_57;
    }
  }

  __break(1u);
LABEL_167:
  __break(1u);
LABEL_168:
  __break(1u);
LABEL_169:
  __break(1u);
LABEL_170:
  __break(1u);
LABEL_171:
  __break(1u);
  return result;
}

uint64_t sub_22632D6D4(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, uint64_t *a5)
{
  v79 = a5;
  v75 = a3;
  v80 = type metadata accessor for RankedVisualAction();
  v8 = *(*(v80 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v80);
  v77 = &v70 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v76 = (&v70 - v12);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = (&v70 - v14);
  result = MEMORY[0x28223BE20](v13);
  v18 = (&v70 - v17);
  v20 = *(v19 + 72);
  if (!v20)
  {
    __break(1u);
LABEL_93:
    __break(1u);
LABEL_94:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v20 == -1)
  {
    goto LABEL_93;
  }

  v21 = v75 - a2;
  if (v75 - a2 == 0x8000000000000000 && v20 == -1)
  {
    goto LABEL_94;
  }

  v22 = (a2 - a1) / v20;
  v83 = a1;
  v82 = a4;
  if (v22 >= v21 / v20)
  {
    v24 = v21 / v20 * v20;
    if (a4 < a2 || a2 + v24 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v44 = a4 + v24;
    if (v24 >= 1)
    {
      v45 = -v20;
      v46 = a4 + v24;
      v73 = a4;
      v74 = v45;
      v47 = v75;
      do
      {
        v71 = v44;
        v48 = a2;
        a2 += v45;
        v78 = a2;
        v75 = v48;
        while (1)
        {
          if (v48 <= a1)
          {
            v83 = v48;
            v81 = v71;
            goto LABEL_91;
          }

          v49 = v47;
          v72 = v44;
          v50 = v46 + v45;
          v51 = v76;
          sub_22632EDC0(v46 + v45, v76, type metadata accessor for RankedVisualAction);
          v52 = v77;
          sub_22632EDC0(a2, v77, type metadata accessor for RankedVisualAction);
          v53 = *(v51 + *(v80 + 24));
          v54 = *v79;
          if (!*(*v79 + 16))
          {
            goto LABEL_63;
          }

          v55 = sub_22633941C(*v51, v51[1]);
          if (v56)
          {
            v57 = *(*(v54 + 56) + 8 * v55);
          }

          else
          {
LABEL_63:
            v57 = 0;
          }

          v58 = sub_2262DBE60();
          v60 = v59;
          v61 = *(v52 + *(v80 + 24));
          v62 = *v79;
          if (*(*v79 + 16) && (v63 = sub_22633941C(*v52, v52[1]), (v64 & 1) != 0))
          {
            v65 = *(*(v62 + 56) + 8 * v63);
          }

          else
          {
            v65 = 0;
          }

          v66 = sub_2262DBE60();
          if (v53 == v61)
          {
            if (v57 == v65)
            {
              if (v66 == v58 && v67 == v60)
              {

                v68 = 0;
              }

              else
              {
                v68 = sub_226350C4C();
              }
            }

            else
            {

              v68 = v65 < v57;
            }
          }

          else
          {

            v68 = v61 < v53;
          }

          a2 = v78;
          v47 = v49 + v74;
          sub_22632EE90(v77, type metadata accessor for RankedVisualAction);
          sub_22632EE90(v76, type metadata accessor for RankedVisualAction);
          v69 = v73;
          if (v68)
          {
            break;
          }

          v44 = v50;
          if (v49 < v46 || v47 >= v46)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v49 != v46)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v46 = v50;
          v45 = v74;
          v48 = v75;
          if (v50 <= v69)
          {
            a2 = v75;
            goto LABEL_90;
          }
        }

        if (v49 < v75 || v47 >= v75)
        {
          swift_arrayInitWithTakeFrontToBack();
          v44 = v72;
        }

        else
        {
          v44 = v72;
          if (v49 != v75)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v45 = v74;
      }

      while (v46 > v69);
    }

LABEL_90:
    v83 = a2;
    v81 = v44;
  }

  else
  {
    v23 = v22 * v20;
    if (a4 < a1 || a1 + v23 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v77 = a4 + v23;
    v81 = a4 + v23;
    if (v23 >= 1 && a2 < v75)
    {
      v76 = v20;
      do
      {
        sub_22632EDC0(a2, v18, type metadata accessor for RankedVisualAction);
        sub_22632EDC0(a4, v15, type metadata accessor for RankedVisualAction);
        v26 = *(v18 + *(v80 + 24));
        v27 = *v79;
        v28 = *(*v79 + 16);
        v78 = a2;
        if (v28 && (v29 = sub_22633941C(*v18, v18[1]), (v30 & 1) != 0))
        {
          v31 = *(*(v27 + 56) + 8 * v29);
        }

        else
        {
          v31 = 0;
        }

        v32 = sub_2262DBE60();
        v34 = v33;
        v35 = *(v15 + *(v80 + 24));
        v36 = *v79;
        if (*(*v79 + 16) && (v37 = sub_22633941C(*v15, v15[1]), (v38 & 1) != 0))
        {
          v39 = *(*(v36 + 56) + 8 * v37);
        }

        else
        {
          v39 = 0;
        }

        v40 = sub_2262DBE60();
        if (v26 == v35)
        {
          if (v31 == v39)
          {
            if (v40 == v32 && v41 == v34)
            {

              sub_22632EE90(v15, type metadata accessor for RankedVisualAction);
              sub_22632EE90(v18, type metadata accessor for RankedVisualAction);
              a2 = v78;
              v42 = v76;
              goto LABEL_42;
            }

            v43 = sub_226350C4C();
          }

          else
          {

            v43 = v39 < v31;
          }
        }

        else
        {

          v43 = v35 < v26;
        }

        v42 = v76;
        sub_22632EE90(v15, type metadata accessor for RankedVisualAction);
        sub_22632EE90(v18, type metadata accessor for RankedVisualAction);
        a2 = v78;
        if (v43)
        {
          if (a1 < v78 || a1 >= v78 + v42)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != v78)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 += v42;
          goto LABEL_50;
        }

LABEL_42:
        if (a1 < a4 || a1 >= a4 + v42)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (a1 != a4)
        {
          swift_arrayInitWithTakeBackToFront();
        }

        v82 = a4 + v42;
        a4 += v42;
LABEL_50:
        a1 += v42;
        v83 = a1;
      }

      while (a4 < v77 && a2 < v75);
    }
  }

LABEL_91:
  sub_2262EA7A0(&v83, &v82, &v81);
  return 1;
}

uint64_t sub_22632DE60(uint64_t a1, uint64_t a2)
{
  v29 = a2;
  v3 = a1;
  v30 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 32);
  v5 = ((1 << v4) + 63) >> 6;
  if ((v4 & 0x3Fu) > 0xD)
  {
    goto LABEL_20;
  }

  while (1)
  {
    v26 = v5;
    v27 = v2;
    v25 = &v25;
    MEMORY[0x28223BE20](a1);
    v7 = &v25 - ((v6 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v7, v6);
    v28 = 0;
    v8 = 0;
    v9 = 1 << *(v3 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    while (v11)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_12:
      v5 = v13 | (v8 << 6);
      if (*(*v29 + 16))
      {
        v16 = (*(v3 + 48) + 16 * v5);
        v2 = *v16;
        v17 = v16[1];

        sub_22633941C(v2, v17);
        v19 = v18;

        if (v19)
        {
          continue;
        }
      }

      *&v7[(v5 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v5;
      if (__OFADD__(v28++, 1))
      {
        __break(1u);
LABEL_17:
        result = sub_22632E2C8(v7, v26, v28, v3);
        goto LABEL_18;
      }
    }

    v14 = v8;
    while (1)
    {
      v8 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v8 >= v12)
      {
        goto LABEL_17;
      }

      v15 = *(v3 + 56 + 8 * v8);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v11 = (v15 - 1) & v15;
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_20:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v23 = swift_slowAlloc();
  v24 = sub_22632E240(v23, v5, v3, v29);

  MEMORY[0x22AA7D570](v23, -1, -1);
  result = v24;
LABEL_18:
  v22 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_22632E0D8(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v23 = result;
  v24 = 0;
  v6 = 0;
  v7 = a3 + 56;
  v8 = 1 << *(a3 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(a3 + 56);
  v11 = (v8 + 63) >> 6;
  while (v10)
  {
    v12 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_11:
    v15 = v12 | (v6 << 6);
    if (*(*a4 + 16))
    {
      v16 = (*(a3 + 48) + 16 * v15);
      v17 = *v16;
      v18 = v16[1];

      sub_22633941C(v17, v18);
      v20 = v19;

      if (v20)
      {
        continue;
      }
    }

    *(v23 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
    if (__OFADD__(v24++, 1))
    {
      __break(1u);
LABEL_16:

      return sub_22632E2C8(v23, a2, v24, a3);
    }
  }

  v13 = v6;
  while (1)
  {
    v6 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v6 >= v11)
    {
      goto LABEL_16;
    }

    v14 = *(v7 + 8 * v6);
    ++v13;
    if (v14)
    {
      v12 = __clz(__rbit64(v14));
      v10 = (v14 - 1) & v14;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

void *sub_22632E240(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v5 = result;
      v6 = a2;
      v7 = a4;
      bzero(result, 8 * a2);
      result = v5;
      a2 = v6;
      a4 = v7;
    }

    v8 = sub_22632E0D8(result, a2, a3, a4);

    return v8;
  }

  return result;
}

uint64_t sub_22632E2C8(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = MEMORY[0x277D84FA0];
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793858, &unk_226355300);
  result = sub_22635094C();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  v30 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = (*(v4 + 48) + 16 * (v13 | (v11 << 6)));
    v17 = *v16;
    v18 = v16[1];
    v19 = *(v9 + 40);
    sub_226350CEC();

    sub_2263504EC();
    result = sub_226350D0C();
    v20 = -1 << *(v9 + 32);
    v21 = result & ~v20;
    v22 = v21 >> 6;
    if (((-1 << v21) & ~*(v12 + 8 * (v21 >> 6))) == 0)
    {
      v24 = 0;
      v25 = (63 - v20) >> 6;
      while (++v22 != v25 || (v24 & 1) == 0)
      {
        v26 = v22 == v25;
        if (v22 == v25)
        {
          v22 = 0;
        }

        v24 |= v26;
        v27 = *(v12 + 8 * v22);
        if (v27 != -1)
        {
          v23 = __clz(__rbit64(~v27)) + (v22 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v23 = __clz(__rbit64((-1 << v21) & ~*(v12 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
    v28 = (*(v9 + 48) + 16 * v23);
    *v28 = v17;
    v28[1] = v18;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v30;
    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

unint64_t sub_22632E4EC()
{
  result = qword_27D793B60;
  if (!qword_27D793B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D793B60);
  }

  return result;
}

uint64_t sub_22632E540(uint64_t a1)
{
  v2 = sub_22634F34C();
  v42 = *(v2 - 8);
  v3 = *(v42 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v43[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2263500AC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v43[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for VisualAction.Kind.SystemTool(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v43[-1] - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for VisualAction.Kind(0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15);
  v18 = (&v43[-1] - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = type metadata accessor for VisualAction(0);
  sub_22632EDC0(a1 + *(v19 + 20), v18, type metadata accessor for VisualAction.Kind);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v27 = v42;
      (*(v42 + 32))(v5, v18, v2);
      sub_22634F33C();
      return (*(v27 + 8))(v5, v2);
    }

    if (EnumCaseMultiPayload == 3)
    {
      v21 = sub_22634FBEC();
      return (*(*(v21 - 8) + 8))(v18, v21);
    }

    v28 = sub_2262DAF10();
    strcpy(v43, "VisualSearch");
    BYTE5(v43[1]) = 0;
    HIWORD(v43[1]) = -5120;
    sub_22635091C();
    if (*(v28 + 16))
    {
      v29 = sub_226339494(v44);
      if (v30)
      {
        v31 = *(*(v28 + 56) + v29);
LABEL_20:
        sub_226315840(v44);
      }
    }

LABEL_25:

    return sub_226315840(v44);
  }

  if (EnumCaseMultiPayload)
  {
    v32 = v18[1];
    v33 = v18[3];
    v34 = v18[5];
    v35 = v18[6];
    v36 = sub_2262DAF10();
    v37 = 0x69746E4565766173;
    if (!v32)
    {
      v37 = 0x6E65635365766173;
    }

    v38 = 0xEA00000000007974;
    if (!v32)
    {
      v38 = 0xE900000000000065;
    }

    v43[0] = v37;
    v43[1] = v38;
    sub_22635091C();
    if (*(v36 + 16))
    {
      v39 = sub_226339494(v44);
      if (v40)
      {
        v41 = *(*(v36 + 56) + v39);

        goto LABEL_20;
      }
    }

    goto LABEL_25;
  }

  sub_22632EE28(v18, v14, type metadata accessor for VisualAction.Kind.SystemTool);
  v23 = sub_2262DAF10();
  (*(v7 + 16))(v10, &v14[*(v11 + 20)], v6);
  sub_2262DB424();
  sub_22635091C();
  if (*(v23 + 16))
  {
    v24 = sub_226339494(v44);
    if (v25)
    {
      v26 = *(*(v23 + 56) + v24);
      sub_226315840(v44);
      sub_22632EE90(v14, type metadata accessor for VisualAction.Kind.SystemTool);
    }
  }

  sub_226315840(v44);
  return sub_22632EE90(v14, type metadata accessor for VisualAction.Kind.SystemTool);
}

double sub_22632EA30(double a1)
{
  result = 0.0;
  if (a1 >= 0.0)
  {
    v3 = a1 / 3600.0;
    if (a1 / 3600.0 >= 6.0)
    {
      if (v3 >= 24.0)
      {
        v9 = sub_22634A8A4();
        v10 = exp(v9 * -6.0);
        v11 = sub_22634A980();
        v6 = v10 * exp(v11 * -18.0);
        if (v3 >= 168.0)
        {
          v12 = sub_22634AA58();
          v6 = v6 * exp(v12 * -144.0);
          if (v3 + -168.0 <= 2190.0)
          {
            v7 = v3 + -168.0;
          }

          else
          {
            v7 = 2190.0;
          }

          v8 = sub_22634AB34();
        }

        else
        {
          v7 = v3 + -24.0;
          v8 = sub_22634AA58();
        }
      }

      else
      {
        v5 = sub_22634A8A4();
        v6 = exp(v5 * -6.0);
        v7 = v3 + -6.0;
        v8 = sub_22634A980();
      }

      return v6 * exp(-(v8 * v7));
    }

    else
    {
      v4 = -(sub_22634A8A4() * v3);

      return exp(v4);
    }
  }

  return result;
}

uint64_t sub_22632EB64(uint64_t a1)
{
  v28 = *(a1 + 16);
  if (v28)
  {
    v2 = a1 + 32;
    v1 = *(a1 + 32);
    v3 = *(v1 + 16);
    v4 = MEMORY[0x277D84F90];
    if (v3)
    {
      v5 = *(v1 + 16);
      v6 = sub_22635059C();
      *(v6 + 16) = v3;
      v30 = v6;
      v27 = v6 + 32;
      bzero((v6 + 32), 8 * v3);
      v7 = sub_22635059C();
      *(v7 + 16) = v3;
      v29 = v7;
      v25 = v7 + 32;
      bzero((v7 + 32), 8 * v3);
      v8 = 0;
      v26 = v3;
LABEL_4:
      v9 = v8 + 1;
      v10 = v4;
      v31 = v4;
      v11 = v28;
      sub_2263165F0(0, v28, 0);
      result = v31;
      v13 = v2;
      while (v8 < *(*v2 + 16))
      {
        v14 = *(*v2 + 8 * v8 + 32);
        v32 = result;
        v16 = *(result + 16);
        v15 = *(result + 24);
        if (v16 >= v15 >> 1)
        {
          sub_2263165F0((v15 > 1), v16 + 1, 1);
          result = v32;
        }

        *(result + 16) = v16 + 1;
        v17 = (result + 32);
        *(result + 32 + 8 * v16) = v14;
        v2 += 8;
        if (!--v11)
        {
          v18 = *v17;
          if (v16)
          {
            v19 = 0;
            v20 = v18;
            do
            {
              if (v20 < *(result + 40 + 8 * v19))
              {
                v20 = *(result + 40 + 8 * v19);
              }

              ++v19;
            }

            while (v16 != v19);
            v21 = (result + 40);
            v2 = v13;
            v4 = v10;
            do
            {
              v22 = *v21++;
              v23 = v22;
              if (v22 < v18)
              {
                v18 = v23;
              }

              --v16;
            }

            while (v16);
          }

          else
          {
            v20 = *v17;
            v2 = v13;
            v4 = v10;
          }

          if (v8 < *(v30 + 16))
          {
            *(v27 + 8 * v8) = v20;
            if (v8 < *(v29 + 16))
            {
              *(v25 + 8 * v8++) = v18;
              if (v9 != v26)
              {
                goto LABEL_4;
              }

              return v30;
            }

LABEL_29:
            __break(1u);
            return result;
          }

LABEL_28:
          __break(1u);
          goto LABEL_29;
        }
      }

      __break(1u);
      goto LABEL_28;
    }

    return MEMORY[0x277D84F90];
  }

  else
  {
    sub_22632E4EC();
    swift_allocError();
    *v24 = 1;
    swift_willThrow();
  }

  return v30;
}

uint64_t sub_22632EDC0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_22632EE28(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_22632EE90(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_22632EF24()
{
  result = qword_27D793B68;
  if (!qword_27D793B68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D793B68);
  }

  return result;
}

uint64_t sub_22632EF78()
{
  v1 = *(v0 + 112);

  swift_defaultActor_destroy();

  return swift_defaultActor_deallocate();
}

uint64_t sub_22632EFD4(uint64_t a1, uint64_t a2)
{
  v3[2] = a1;
  v3[3] = a2;
  v4 = sub_22634F41C();
  v3[4] = v4;
  v5 = *(v4 - 8);
  v3[5] = v5;
  v6 = *(v5 + 64) + 15;
  v3[6] = swift_task_alloc();
  v7 = sub_22634F43C();
  v3[7] = v7;
  v8 = *(v7 - 8);
  v3[8] = v8;
  v9 = *(v8 + 64) + 15;
  v3[9] = swift_task_alloc();
  v10 = sub_22634F55C();
  v3[10] = v10;
  v11 = *(v10 - 8);
  v3[11] = v11;
  v12 = *(v11 + 64) + 15;
  v3[12] = swift_task_alloc();
  v3[13] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22632F158, v2, 0);
}

uint64_t sub_22632F158()
{
  v2 = v0[12];
  v1 = v0[13];
  v3 = v0[10];
  v4 = v0[11];
  v5 = v0[3];
  sub_22634F59C();
  sub_22634F54C();
  sub_22632F450(&qword_28137E138, 255, MEMORY[0x277D78770]);
  LOBYTE(v5) = sub_22635089C();
  v6 = *(v4 + 8);
  v6(v2, v3);
  v6(v1, v3);
  if (v5)
  {
    v7 = v0[2];
    v8 = sub_22634F4BC();
    v9 = *(v8 + 16);
    if (v9)
    {
      v10 = v0[8];
      v12 = *(v10 + 16);
      v11 = v10 + 16;
      v13 = v8 + ((*(v11 + 64) + 32) & ~*(v11 + 64));
      v26 = *(v11 + 56);
      v27 = v12;
      v14 = (v0[5] + 8);
      do
      {
        v15 = v0[9];
        v17 = v0[6];
        v16 = v0[7];
        v18 = v0[4];
        v27(v15, v13, v16);
        sub_22634F42C();
        (*(v11 - 8))(v15, v16);
        (*v14)(v17, v18);
        v13 += v26;
        --v9;
      }

      while (v9);
    }
  }

  v20 = v0[12];
  v19 = v0[13];
  v21 = v0[9];
  v22 = v0[6];

  v23 = v0[1];
  v24 = MEMORY[0x277D84F90];

  return v23(v24);
}

uint64_t sub_22632F354(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_226316434;

  return sub_22632EFD4(a1, a2);
}

uint64_t sub_22632F3F8(uint64_t a1, uint64_t a2)
{
  result = sub_22632F450(qword_28137F948, a2, type metadata accessor for SystemToolActionProvider);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_22632F450(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_22632F498(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *v3;
  v24 = a3;
  v25 = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D793BC0, &qword_2263525D8);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v23 - v9;
  v11 = sub_22634FF9C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v23 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v23 - v17;
  swift_beginAccess();
  v19 = v3[14];
  if (*(v19 + 16) && (v20 = sub_22633941C(a1, a2), (v21 & 1) != 0))
  {
    (*(v12 + 16))(v18, *(v19 + 56) + *(v12 + 72) * v20, v11);
    (*(v12 + 32))(v24, v18, v11);
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    v22 = v26;
    sub_226330584(a1, a2, v16);
    if (!v22)
    {
      (*(v12 + 16))(v10, v16, v11);
      (*(v12 + 56))(v10, 0, 1, v11);
      swift_beginAccess();

      sub_2262DF948(v10, a1, a2);
      swift_endAccess();
      (*(v12 + 32))(v24, v16, v11);
    }
  }
}

void *sub_22632F740()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7939E0, &qword_2263548B0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v95 = &v76 - v4;
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D793BD0, &qword_226355528);
  v5 = *(v97 - 1);
  v6 = v5[8];
  MEMORY[0x28223BE20](v97);
  v8 = &v76 - v7;
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793B30, &unk_226354F10);
  v9 = *(v96 - 8);
  v10 = v9[8];
  v11 = MEMORY[0x28223BE20](v96);
  v82 = &v76 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v76 - v14;
  MEMORY[0x28223BE20](v13);
  v17 = &v76 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793BE0, &qword_226355A70);
  v86 = *(v18 - 8);
  v87 = v18;
  v19 = *(v86 + 64);
  v20 = MEMORY[0x28223BE20](v18);
  v85 = &v76 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v20);
  v83 = &v76 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v90 = &v76 - v25;
  v84 = v26;
  MEMORY[0x28223BE20](v24);
  v28 = &v76 - v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793BE8, &qword_226355530);
  v30 = *(*(v29 - 8) + 64);
  MEMORY[0x28223BE20](v29 - 8);
  swift_defaultActor_initialize();
  v0[14] = MEMORY[0x277D84F98];
  sub_22634FD8C();
  sub_22634FB6C();
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793BF0, &unk_226355538);
  v32 = *(v31 + 48);
  v33 = *(v31 + 52);
  swift_allocObject();
  v0[15] = sub_22634FB7C();
  v0[18] = MEMORY[0x277D84F90];
  v34 = v5[13];
  v79 = *MEMORY[0x277D85778];
  v35 = v97;
  v78 = v34;
  v34(v8);
  v91 = v28;
  sub_22635065C();
  v36 = v5[1];
  v80 = v8;
  v81 = v5 + 1;
  v77 = v36;
  v36(v8, v35);
  v37 = v9[2];
  v93 = v17;
  v38 = v96;
  v37(v15, v17, v96);
  v39 = type metadata accessor for AppWorkspaceObserver();
  v40 = objc_allocWithZone(v39);
  v37(&v40[OBJC_IVAR____TtC26VisualActionPredictionCore20AppWorkspaceObserver_continuation], v15, v38);
  v100.receiver = v40;
  v100.super_class = v39;
  v41 = objc_msgSendSuper2(&v100, sel_init);
  v42 = v9[1];
  v92 = v15;
  v94 = v9 + 1;
  v89 = v42;
  v42(v15, v38);
  v88 = v1;
  v1[16] = v41;
  v43 = objc_opt_self();
  v44 = v41;
  result = [v43 defaultWorkspace];
  if (result)
  {
    v46 = result;
    [result addObserver_];

    *(swift_allocObject() + 16) = v44;
    v76 = v44;
    v47 = v38;
    sub_22635066C();
    v48 = v80;
    v49 = v97;
    v78(v80, v79, v97);
    v50 = v90;
    v51 = v92;
    sub_22635065C();
    v77(v48, v49);
    v52 = v82;
    v37(v82, v51, v47);
    v53 = type metadata accessor for AppProtectionMonitor();
    v54 = objc_allocWithZone(v53);
    v37(&v54[OBJC_IVAR____TtC26VisualActionPredictionCore20AppProtectionMonitor_continuation], v52, v47);
    v99.receiver = v54;
    v99.super_class = v53;
    v55 = objc_msgSendSuper2(&v99, sel_init);
    v89(v52, v47);
    v56 = v88;
    v88[17] = v55;
    v57 = objc_opt_self();
    v97 = v55;
    v58 = [objc_msgSend(v57 subjectMonitorRegistry)];
    swift_unknownObjectRelease();
    v98 = v58;
    v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793BF8, &qword_226355548);
    v60 = *(v59 + 48);
    v61 = *(v59 + 52);
    swift_allocObject();
    v82 = sub_22634FD2C();

    sub_22635066C();
    v62 = sub_22635064C();
    (*(*(v62 - 8) + 56))(v95, 1, 1, v62);
    v64 = v86;
    v63 = v87;
    v65 = *(v86 + 16);
    v66 = v83;
    v65(v83, v91, v87);
    v67 = v85;
    v65(v85, v50, v63);
    v68 = *(v64 + 80);
    v69 = (v68 + 40) & ~v68;
    v70 = (v84 + v68 + v69) & ~v68;
    v71 = swift_allocObject();
    *(v71 + 2) = 0;
    *(v71 + 3) = 0;
    *(v71 + 4) = v56;
    v72 = *(v64 + 32);
    v72(&v71[v69], v66, v63);
    v72(&v71[v70], v67, v63);

    sub_2262FB4D4(0, 0, v95, &unk_226355558, v71);

    v73 = v96;
    v74 = v89;
    v89(v92, v96);
    v75 = *(v64 + 8);
    v75(v90, v63);
    v74(v93, v73);
    v75(v91, v63);
    return v56;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_22633000C(uint64_t a1, uint64_t a2)
{
  v3 = [objc_opt_self() defaultWorkspace];
  if (v3)
  {
    v4 = v3;
    [v3 removeObserver_];
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_2263300B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  return MEMORY[0x2822009F8](sub_2263300DC, a4, 0);
}

uint64_t sub_2263300DC()
{
  v1 = v0[4];
  v2 = v0[2];
  sub_226330148(v0[3]);
  sub_226330148(v1);
  v3 = v0[1];

  return v3();
}

uint64_t sub_226330148(uint64_t a1)
{
  v23 = *v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793BE0, &qword_226355A70);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v23 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7939E0, &qword_2263548B0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v23 - v10;
  sub_22635062C();
  v12 = sub_22635064C();
  (*(*(v12 - 8) + 56))(v11, 0, 1, v12);
  v13 = swift_allocObject();
  swift_weakInit();
  (*(v4 + 16))(v7, a1, v3);
  v14 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v15 = (v5 + v14 + 7) & 0xFFFFFFFFFFFFFFF8;
  v16 = swift_allocObject();
  *(v16 + 16) = 0;
  *(v16 + 24) = 0;
  (*(v4 + 32))(v16 + v14, v7, v3);
  *(v16 + v15) = v13;
  *(v16 + ((v15 + 15) & 0xFFFFFFFFFFFFFFF8)) = v23;
  v17 = sub_2262FB4D4(0, 0, v11, &unk_226355568, v16);
  swift_beginAccess();
  v18 = v1[18];

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v1[18] = v18;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v18 = sub_2262DD0D0(0, v18[2] + 1, 1, v18);
    v1[18] = v18;
  }

  v21 = v18[2];
  v20 = v18[3];
  if (v21 >= v20 >> 1)
  {
    v18 = sub_2262DD0D0((v20 > 1), v21 + 1, 1, v18);
  }

  v18[2] = v21 + 1;
  v18[v21 + 4] = v17;
  v1[18] = v18;
  swift_endAccess();
}

uint64_t sub_226330448()
{
  swift_beginAccess();
  v1 = *(v0 + 144);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = *(v0 + 144);

    v4 = 32;
    do
    {
      v5 = *(v1 + v4);

      sub_2263506BC();

      v4 += 8;
      --v2;
    }

    while (v2);
  }

  v6 = *(v0 + 112);

  v7 = *(v0 + 120);

  v8 = *(v0 + 144);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_226330534()
{
  sub_226330448();

  return swift_defaultActor_deallocate();
}

void sub_226330584(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v83 = a3;
  v5 = sub_22634FE9C();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v82 = v68 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_22634FF2C();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v84 = v68 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7930E0, &qword_226355500);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v79 = v68 - v13;
  v14 = sub_22634FE2C();
  v77 = *(v14 - 8);
  v78 = v14;
  v15 = *(v77 + 64);
  MEMORY[0x28223BE20](v14);
  v80 = v68 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_22634FF7C();
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v85 = v68 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_22634FF9C();
  v81 = *(v20 - 8);
  v21 = *(v81 + 64);
  v22 = MEMORY[0x28223BE20](v20);
  v24 = v68 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v26 = v68 - v25;
  v27 = sub_22634FF5C();
  v86 = *(v27 - 8);
  v28 = *(v86 + 64);
  v29 = MEMORY[0x28223BE20](v27);
  v31 = v68 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v33 = (v68 - v32);
  v34 = objc_allocWithZone(MEMORY[0x277CC1E70]);

  v35 = v87;
  v36 = sub_226334098(a1, a2, 1);
  if (v35)
  {
    return;
  }

  v74 = v31;
  v75 = v33;
  v70 = v24;
  v71 = 0;
  v72 = v26;
  v73 = v20;
  v76 = v27;
  v87 = v36;
  v69 = [v36 compatibilityObject];
  v37 = [v69 applicationType];
  v68[1] = a1;
  if (!v37)
  {
    v43 = MEMORY[0x277D78D48];
    v45 = v75;
    v44 = v76;
    v42 = v86;
    goto LABEL_17;
  }

  v38 = v37;
  v39 = sub_22635046C();
  v41 = v40;

  v42 = v86;
  if (v39 == 0x6C616E7265746E49 && v41 == 0xE800000000000000)
  {

    v43 = MEMORY[0x277D78D60];
    v45 = v75;
    v44 = v76;
    goto LABEL_17;
  }

  v46 = sub_226350C4C();
  v44 = v76;
  if (v46)
  {

    v43 = MEMORY[0x277D78D60];
LABEL_16:
    v45 = v75;
    goto LABEL_17;
  }

  if (v39 == 0x6D6574737953 && v41 == 0xE600000000000000 || (sub_226350C4C() & 1) != 0 || v39 == 0xD000000000000014 && 0x8000000226357840 == v41 || (sub_226350C4C() & 1) != 0)
  {

    v43 = MEMORY[0x277D78D58];
    goto LABEL_16;
  }

  v67 = v75;
  *v75 = v39;
  v67[1] = v41;
  v45 = v67;
  v43 = MEMORY[0x277D78D50];
LABEL_17:
  (*(v42 + 104))(v45, *v43, v44);
  v47 = v87;
  [v87 isLaunchProhibited];
  v48 = [v47 appTags];
  sub_22635056C();

  (*(v42 + 16))(v74, v45, v44);
  sub_22634FF6C();
  v49 = [v47 localizedName];
  sub_22635046C();

  v50 = [v47 iTunesMetadata];
  v51 = [v50 genreIdentifier];

  if ((v51 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v52 = v79;
    sub_22634FE1C();
    v53 = v77;
    v54 = v78;
    v55 = *(v77 + 48);
    if (v55(v52, 1, v78) == 1)
    {
      (*(v53 + 104))(v80, *MEMORY[0x277D78D10], v54);
      v56 = v55(v52, 1, v54) == 1;
      v57 = v52;
      v58 = v72;
      if (!v56)
      {
        sub_2262D67D8(v57, &qword_27D7930E0, &qword_226355500);
      }
    }

    else
    {
      (*(v53 + 32))(v80, v52, v54);
      v58 = v72;
    }

    sub_22634FE6C();
    sub_22634FE6C();

    sub_22634FEBC();
    v59 = [v87 applicationState];
    v60 = v70;
    sub_226331010(v58, v59, v70);

    v61 = v81;
    v62 = *(v81 + 8);
    v63 = v73;
    v62(v58, v73);
    (*(v61 + 32))(v58, v60, v63);
    v64 = objc_opt_self();
    v65 = sub_22635045C();
    v66 = [v64 applicationWithBundleIdentifier_];

    sub_22633149C(v58, v66, v83);
    v62(v58, v63);
    (*(v86 + 8))(v75, v76);
  }
}

uint64_t sub_226330DB4(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D793BC0, &qword_2263525D8);
  v5 = *(*(v4 - 8) + 64);
  result = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v27 - v7;
  v9 = *(a1 + 16);
  if (v9)
  {
    v10 = (a1 + 40);
    v11 = &unk_27D793BC0;
    do
    {
      v13 = *(v10 - 1);
      v14 = *v10;
      swift_beginAccess();
      v15 = *(v2 + 112);

      v16 = sub_22633941C(v13, v14);
      LOBYTE(v15) = v17;

      if (v15)
      {
        v18 = v11;
        v19 = *(v2 + 112);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v21 = *(v2 + 112);
        v27 = v21;
        *(v2 + 112) = 0x8000000000000000;
        if (!isUniquelyReferenced_nonNull_native)
        {
          sub_226339D1C();
          v21 = v27;
        }

        v22 = *(*(v21 + 48) + 16 * v16 + 8);

        v23 = *(v21 + 56);
        v24 = sub_22634FF9C();
        v25 = *(v24 - 8);
        (*(v25 + 32))(v8, v23 + *(v25 + 72) * v16, v24);
        sub_2262E23D0(v16, v21);
        v26 = *(v2 + 112);
        *(v2 + 112) = v21;

        (*(v25 + 56))(v8, 0, 1, v24);
        v11 = v18;
      }

      else
      {
        v12 = sub_22634FF9C();
        (*(*(v12 - 8) + 56))(v8, 1, 1, v12);
      }

      sub_2262D67D8(v8, v11, &qword_2263525D8);
      result = swift_endAccess();
      v10 += 2;
      --v9;
    }

    while (v9);
  }

  return result;
}

uint64_t sub_226331010@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v31[5] = a1;
  v31[6] = a3;
  v4 = sub_22634FE2C();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v31[4] = v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22634FE9C();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v31[3] = v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_22634FF7C();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v31[2] = v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_22634FF2C();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](v13);
  v18 = v31 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v16);
  v21 = v31 - v20;
  MEMORY[0x28223BE20](v19);
  v23 = v31 - v22;
  v31[7] = MEMORY[0x277D84F90];
  sub_2263344A4(&unk_28137E068, MEMORY[0x277D78D30]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D793BA0, &qword_226355518);
  sub_226334174(&qword_28137E018, &unk_27D793BA0, &qword_226355518);
  sub_2263508CC();
  if ([a2 isValid])
  {
    sub_22634FE7C();
    sub_22633186C(v21, v18);
    v24 = *(v14 + 8);
    v24(v18, v13);
    v24(v21, v13);
  }

  if ([a2 isInstalled])
  {
    sub_22634FE8C();
    sub_22633186C(v21, v18);
    v25 = *(v14 + 8);
    v25(v18, v13);
    v25(v21, v13);
  }

  if ([a2 isPlaceholder])
  {
    sub_22634FEEC();
    sub_22633186C(v21, v18);
    v26 = *(v14 + 8);
    v26(v18, v13);
    v26(v21, v13);
  }

  if ([a2 isRestricted])
  {
    sub_22634FEDC();
    sub_22633186C(v21, v18);
    v27 = *(v14 + 8);
    v27(v18, v13);
    v27(v21, v13);
  }

  v28 = sub_22634FECC();
  v31[0] = v29;
  v31[1] = v28;
  sub_22634FF8C();
  (*(v14 + 16))(v21, v23, v13);
  sub_22634FEAC();
  sub_22634FE5C();
  sub_22634FF3C();
  sub_22634FEBC();
  return (*(v14 + 8))(v23, v13);
}

uint64_t sub_22633149C@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v30[4] = a1;
  v30[6] = a3;
  v4 = sub_22634FE2C();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v30[5] = v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22634FF2C();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v30[3] = v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_22634FF7C();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = sub_22634FE9C();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v15);
  v31 = v30 - v19;
  MEMORY[0x28223BE20](v18);
  v21 = v30 - v20;
  v33 = MEMORY[0x277D84F90];
  sub_2263344A4(&qword_28137E080, MEMORY[0x277D78D18]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D793B78, &qword_226355508);
  sub_226334174(&qword_28137E020, &unk_27D793B78, &qword_226355508);
  v32 = v21;
  sub_2263508CC();
  if ([a2 isLocked])
  {
    sub_22634FE8C();
    v22 = v31;
    sub_226331B70(v31, v17);
    v23 = *(v13 + 8);
    v23(v17, v12);
    v23(v22, v12);
  }

  if ([a2 isHidden])
  {
    sub_22634FE7C();
    v24 = v31;
    sub_226331B70(v31, v17);
    v25 = *(v13 + 8);
    v25(v17, v12);
    v25(v24, v12);
  }

  v26 = sub_22634FECC();
  v30[1] = v27;
  v30[2] = v26;
  sub_22634FF8C();
  sub_22634FF4C();
  v28 = v32;
  (*(v13 + 16))(v31, v32, v12);
  sub_22634FE5C();
  sub_22634FF3C();
  sub_22634FEBC();
  return (*(v13 + 8))(v28, v12);
}

uint64_t sub_22633186C(uint64_t a1, uint64_t a2)
{
  v32 = a1;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D793BB0, &qword_226355520);
  v4 = *(*(v30 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v30);
  v31 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v8 = &v27 - v7;
  v9 = sub_22634FF2C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v27 - v15;
  v17 = *(v10 + 16);
  v29 = v2;
  v17(v14, v2, v9);
  v18 = MEMORY[0x277D78D30];
  v27 = sub_2263344A4(&unk_28137E068, MEMORY[0x277D78D30]);
  sub_2263508AC();
  v19 = v18;
  v20 = v30;
  sub_2263344A4(&qword_28137E078, v19);
  v28 = a2;
  v21 = sub_22635044C();
  v22 = *(v20 + 48);
  *v8 = (v21 & 1) == 0;
  if (v21)
  {
    (*(v10 + 32))(&v8[v22], v16, v9);
  }

  else
  {
    (*(v10 + 8))(v16, v9);
    v23 = v28;
    v17(&v8[v22], v28, v9);
    v17(v14, v23, v9);
    sub_2263508BC();
  }

  v24 = v31;
  sub_2262D6764(v8, v31, &unk_27D793BB0, &qword_226355520);
  v25 = *v24;
  (*(v10 + 32))(v32, &v24[*(v20 + 48)], v9);
  return v25;
}

uint64_t sub_226331B70(uint64_t a1, uint64_t a2)
{
  v32 = a1;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793B88, &qword_226355510);
  v4 = *(*(v30 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v30);
  v31 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v8 = &v27 - v7;
  v9 = sub_22634FE9C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v27 - v15;
  v17 = *(v10 + 16);
  v29 = v2;
  v17(v14, v2, v9);
  v18 = MEMORY[0x277D78D18];
  v27 = sub_2263344A4(&qword_28137E080, MEMORY[0x277D78D18]);
  sub_2263508AC();
  v19 = v18;
  v20 = v30;
  sub_2263344A4(&unk_27D793B90, v19);
  v28 = a2;
  v21 = sub_22635044C();
  v22 = *(v20 + 48);
  *v8 = (v21 & 1) == 0;
  if (v21)
  {
    (*(v10 + 32))(&v8[v22], v16, v9);
  }

  else
  {
    (*(v10 + 8))(v16, v9);
    v23 = v28;
    v17(&v8[v22], v28, v9);
    v17(v14, v23, v9);
    sub_2263508BC();
  }

  v24 = v31;
  sub_2262D6764(v8, v31, &qword_27D793B88, &qword_226355510);
  v25 = *v24;
  (*(v10 + 32))(v32, &v24[*(v20 + 48)], v9);
  return v25;
}

uint64_t sub_226331E74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[23] = a5;
  v6[24] = a6;
  v6[22] = a4;
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D793BC0, &qword_2263525D8) - 8) + 64) + 15;
  v6[25] = swift_task_alloc();
  v6[26] = swift_task_alloc();
  v8 = sub_22634FF9C();
  v6[27] = v8;
  v9 = *(v8 - 8);
  v6[28] = v9;
  v10 = *(v9 + 64) + 15;
  v6[29] = swift_task_alloc();
  v6[30] = swift_task_alloc();
  v6[31] = swift_task_alloc();
  v6[32] = swift_task_alloc();
  v6[33] = swift_task_alloc();
  v6[34] = swift_task_alloc();
  v6[35] = swift_task_alloc();
  v6[36] = swift_task_alloc();
  v11 = sub_22635004C();
  v6[37] = v11;
  v12 = *(v11 - 8);
  v6[38] = v12;
  v13 = *(v12 + 64) + 15;
  v6[39] = swift_task_alloc();
  v6[40] = swift_task_alloc();
  v6[41] = swift_task_alloc();
  v6[42] = swift_task_alloc();
  v6[43] = swift_task_alloc();
  v6[44] = swift_task_alloc();
  v14 = sub_22634FD8C();
  v6[45] = v14;
  v15 = *(v14 - 8);
  v6[46] = v15;
  v16 = *(v15 + 64) + 15;
  v6[47] = swift_task_alloc();
  v6[48] = swift_task_alloc();
  v6[49] = swift_task_alloc();
  v6[50] = swift_task_alloc();
  v17 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D793C00, &qword_226354420) - 8) + 64) + 15;
  v6[51] = swift_task_alloc();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793878, &qword_226354428);
  v6[52] = v18;
  v19 = *(v18 - 8);
  v6[53] = v19;
  v20 = *(v19 + 64) + 15;
  v6[54] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226332188, 0, 0);
}

uint64_t sub_226332188()
{
  v1 = *(v0 + 432);
  v2 = *(v0 + 176);
  v3 = *(v0 + 184);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793BE0, &qword_226355A70);
  sub_22635069C();
  swift_beginAccess();
  *(v0 + 600) = *MEMORY[0x277D78CB8];
  *(v0 + 604) = *MEMORY[0x277D78C98];
  *(v0 + 608) = *MEMORY[0x277D78CA0];
  *(v0 + 612) = *MEMORY[0x277D78CB0];
  *(v0 + 616) = *MEMORY[0x277D78CA8];
  *(v0 + 440) = 0;
  v4 = *(MEMORY[0x277D85798] + 4);
  v5 = swift_task_alloc();
  *(v0 + 448) = v5;
  *v5 = v0;
  v5[1] = sub_2263322C0;
  v6 = *(v0 + 432);
  v7 = *(v0 + 408);
  v8 = *(v0 + 416);

  return MEMORY[0x2822003E8](v7, 0, 0, v8);
}

uint64_t sub_2263322C0()
{
  v1 = *(*v0 + 448);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_2263323BC, 0, 0);
}

uint64_t sub_2263323BC()
{
  v158 = v0;
  v1 = *(v0 + 408);
  v2 = *(v0 + 360);
  v3 = *(v0 + 368);
  if ((*(v3 + 48))(v1, 1, v2) != 1)
  {
    v4 = *(v0 + 184);
    (*(v3 + 32))(*(v0 + 400), v1, v2);
    Strong = swift_weakLoadStrong();
    *(v0 + 456) = Strong;
    if (Strong)
    {
      v6 = Strong;
      v7 = *(v0 + 600);
      v9 = *(v0 + 392);
      v8 = *(v0 + 400);
      v10 = *(v0 + 360);
      v11 = *(v0 + 368);
      v12 = *(v11 + 16);
      *(v0 + 464) = v12;
      *(v0 + 472) = (v11 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
      v12(v9, v8, v10);
      v13 = (*(v11 + 88))(v9, v10);
      if (v13 == v7)
      {
        v14 = *(v0 + 392);
        v15 = *(v0 + 352);
        (*(*(v0 + 368) + 96))(v14, *(v0 + 360));
        v16 = *v14;
        sub_22634FFFC();

        v17 = sub_22635003C();
        v18 = sub_22635072C();

        v19 = os_log_type_enabled(v17, v18);
        v20 = *(v0 + 352);
        v22 = *(v0 + 296);
        v21 = *(v0 + 304);
        if (v19)
        {
          v151 = *(v0 + 352);
          v23 = swift_slowAlloc();
          v24 = swift_slowAlloc();
          v157 = v24;
          *v23 = 136315138;
          v25 = MEMORY[0x22AA7C630](v16, MEMORY[0x277D837D0]);
          v27 = v26;

          v28 = sub_226345004(v25, v27, &v157);

          *(v23 + 4) = v28;
          _os_log_impl(&dword_2262B6000, v17, v18, "App Installed: %s", v23, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v24);
          MEMORY[0x22AA7D570](v24, -1, -1);
          MEMORY[0x22AA7D570](v23, -1, -1);

          (*(v21 + 8))(v151, v22);
        }

        else
        {

          (*(v21 + 8))(v20, v22);
        }

        goto LABEL_14;
      }

      if (v13 == *(v0 + 604))
      {
        v39 = *(v0 + 392);
        v40 = *(v0 + 344);
        (*(*(v0 + 368) + 96))(v39, *(v0 + 360));
        v41 = *v39;
        *(v0 + 480) = *v39;
        sub_22634FFFC();

        v42 = sub_22635003C();
        v43 = sub_22635072C();

        v44 = os_log_type_enabled(v42, v43);
        v45 = *(v0 + 344);
        v47 = *(v0 + 296);
        v46 = *(v0 + 304);
        if (v44)
        {
          v153 = *(v0 + 344);
          v48 = swift_slowAlloc();
          v49 = swift_slowAlloc();
          v157 = v49;
          *v48 = 136315138;
          v50 = MEMORY[0x22AA7C630](v41, MEMORY[0x277D837D0]);
          v52 = sub_226345004(v50, v51, &v157);

          *(v48 + 4) = v52;
          _os_log_impl(&dword_2262B6000, v42, v43, "App Uninstalled: %s", v48, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v49);
          MEMORY[0x22AA7D570](v49, -1, -1);
          MEMORY[0x22AA7D570](v48, -1, -1);

          (*(v46 + 8))(v153, v47);
        }

        else
        {

          (*(v46 + 8))(v45, v47);
        }

        v80 = sub_226332FCC;
LABEL_22:
        v81 = v80;
        v82 = v6;
LABEL_39:

        return MEMORY[0x2822009F8](v81, v82, 0);
      }

      if (v13 == *(v0 + 608))
      {
        v66 = *(v0 + 392);
        v67 = *(v0 + 336);
        (*(*(v0 + 368) + 96))(v66, *(v0 + 360));
        v68 = *v66;
        *(v0 + 488) = *v66;
        sub_22634FFFC();

        v69 = sub_22635003C();
        v70 = sub_22635072C();

        v71 = os_log_type_enabled(v69, v70);
        v72 = *(v0 + 336);
        v74 = *(v0 + 296);
        v73 = *(v0 + 304);
        if (v71)
        {
          v154 = *(v0 + 336);
          v75 = swift_slowAlloc();
          v76 = swift_slowAlloc();
          v157 = v76;
          *v75 = 136315138;
          v77 = MEMORY[0x22AA7C630](v68, MEMORY[0x277D837D0]);
          v79 = sub_226345004(v77, v78, &v157);

          *(v75 + 4) = v79;
          _os_log_impl(&dword_2262B6000, v69, v70, "App State Changed: %s", v75, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v76);
          MEMORY[0x22AA7D570](v76, -1, -1);
          MEMORY[0x22AA7D570](v75, -1, -1);

          v62 = (*(v73 + 8))(v154, v74);
        }

        else
        {

          v62 = (*(v73 + 8))(v72, v74);
        }

        v97 = *(v68 + 16);
        *(v0 + 496) = v97;
        if (v97)
        {
          *(v0 + 504) = *(v0 + 440);
          *(v0 + 512) = 0;
          v98 = *(v0 + 488);
          if (v98[2])
          {
            v99 = *(v0 + 456);
            *(v0 + 520) = v98[4];
            *(v0 + 528) = v98[5];
            v100 = sub_226333044;
LABEL_38:
            v111 = v100;

            v81 = v111;
            v82 = v99;
            goto LABEL_39;
          }

          __break(1u);
          goto LABEL_48;
        }
      }

      else
      {
        if (v13 != *(v0 + 612))
        {
          if (v13 != *(v0 + 616))
          {
            v112 = *(v0 + 400);
            v113 = *(v0 + 384);
            v114 = *(v0 + 360);
            v115 = *(v0 + 312);
            sub_22634FFFC();
            v12(v113, v112, v114);
            v116 = sub_22635003C();
            v117 = sub_22635073C();
            v118 = os_log_type_enabled(v116, v117);
            v119 = *(v0 + 384);
            if (v118)
            {
              v120 = *(v0 + 368);
              v121 = *(v0 + 376);
              v122 = *(v0 + 360);
              v156 = *(v0 + 312);
              v148 = *(v0 + 304);
              v150 = *(v0 + 296);
              v123 = swift_slowAlloc();
              v146 = swift_slowAlloc();
              v157 = v146;
              *v123 = 136315138;
              v12(v121, v119, v122);
              v124 = sub_2263504CC();
              v125 = v117;
              v127 = v126;
              v128 = *(v120 + 8);
              v128(v119, v122);
              v129 = sub_226345004(v124, v127, &v157);

              *(v123 + 4) = v129;
              _os_log_impl(&dword_2262B6000, v116, v125, "Unknown App Event: %s", v123, 0xCu);
              __swift_destroy_boxed_opaque_existential_1Tm(v146);
              MEMORY[0x22AA7D570](v146, -1, -1);
              MEMORY[0x22AA7D570](v123, -1, -1);

              (*(v148 + 8))(v156, v150);
            }

            else
            {
              v130 = *(v0 + 360);
              v131 = *(v0 + 368);
              v133 = *(v0 + 304);
              v132 = *(v0 + 312);
              v134 = *(v0 + 296);

              v128 = *(v131 + 8);
              v128(v119, v130);
              (*(v133 + 8))(v132, v134);
            }

            v135 = *(v0 + 368) + 8;
            v128(*(v0 + 392), *(v0 + 360));
            goto LABEL_14;
          }

          v101 = *(v0 + 320);
          sub_22634FFFC();
          v102 = sub_22635003C();
          v103 = sub_22635072C();
          if (os_log_type_enabled(v102, v103))
          {
            v104 = swift_slowAlloc();
            *v104 = 0;
            _os_log_impl(&dword_2262B6000, v102, v103, "LaunchServices Database Reset", v104, 2u);
            MEMORY[0x22AA7D570](v104, -1, -1);
          }

          v105 = *(v0 + 320);
          v106 = *(v0 + 296);
          v107 = *(v0 + 304);

          (*(v107 + 8))(v105, v106);
          v80 = sub_226333D90;
          goto LABEL_22;
        }

        v83 = *(v0 + 392);
        v84 = *(v0 + 328);
        (*(*(v0 + 368) + 96))(v83, *(v0 + 360));
        v85 = *v83;
        *(v0 + 544) = *v83;
        sub_22634FFFC();

        v86 = sub_22635003C();
        v87 = sub_22635072C();

        v88 = os_log_type_enabled(v86, v87);
        v89 = *(v0 + 328);
        v91 = *(v0 + 296);
        v90 = *(v0 + 304);
        if (v88)
        {
          v155 = *(v0 + 328);
          v92 = swift_slowAlloc();
          v93 = swift_slowAlloc();
          v157 = v93;
          *v92 = 136315138;
          v94 = MEMORY[0x22AA7C630](v85, MEMORY[0x277D837D0]);
          v96 = sub_226345004(v94, v95, &v157);

          *(v92 + 4) = v96;
          _os_log_impl(&dword_2262B6000, v86, v87, "App Protection State Changed: %s", v92, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v93);
          MEMORY[0x22AA7D570](v93, -1, -1);
          MEMORY[0x22AA7D570](v92, -1, -1);

          v62 = (*(v90 + 8))(v155, v91);
        }

        else
        {

          v62 = (*(v90 + 8))(v89, v91);
        }

        v108 = *(v85 + 16);
        *(v0 + 552) = v108;
        if (v108)
        {
          v109 = *(v0 + 440);
          *(v0 + 568) = 0;
          *(v0 + 560) = v109;
          v110 = *(v0 + 544);
          if (v110[2])
          {
            v99 = *(v0 + 456);
            *(v0 + 576) = v110[4];
            *(v0 + 584) = v110[5];
            v100 = sub_2263336EC;
            goto LABEL_38;
          }

LABEL_48:
          __break(1u);
          return MEMORY[0x2822003E8](v62, v64, v65, v63);
        }
      }

LABEL_14:
      v53 = *(v0 + 440);
      v54 = *(v0 + 472);
      v55 = *(v0 + 400);
      v56 = *(v0 + 368);
      v57 = *(v0 + 360);
      v58 = *(*(v0 + 456) + 120);
      (*(v0 + 464))(*(v0 + 376), v55, v57);
      sub_22634FB8C();
      (*(v56 + 8))(v55, v57);

      *(v0 + 440) = v53;
      v59 = *(MEMORY[0x277D85798] + 4);
      v60 = swift_task_alloc();
      *(v0 + 448) = v60;
      *v60 = v0;
      v60[1] = sub_2263322C0;
      v61 = *(v0 + 432);
      v62 = *(v0 + 408);
      v63 = *(v0 + 416);
      v64 = 0;
      v65 = 0;

      return MEMORY[0x2822003E8](v62, v64, v65, v63);
    }

    (*(*(v0 + 368) + 8))(*(v0 + 400), *(v0 + 360));
    v29 = *(v0 + 408);
  }

  v31 = *(v0 + 392);
  v30 = *(v0 + 400);
  v33 = *(v0 + 376);
  v32 = *(v0 + 384);
  v35 = *(v0 + 344);
  v34 = *(v0 + 352);
  v36 = *(v0 + 336);
  v136 = *(v0 + 328);
  v137 = *(v0 + 320);
  v138 = *(v0 + 312);
  v139 = *(v0 + 288);
  v140 = *(v0 + 280);
  v141 = *(v0 + 272);
  v142 = *(v0 + 264);
  v143 = *(v0 + 256);
  v144 = *(v0 + 248);
  v145 = *(v0 + 240);
  v147 = *(v0 + 232);
  v149 = *(v0 + 208);
  v152 = *(v0 + 200);
  (*(*(v0 + 424) + 8))(*(v0 + 432), *(v0 + 416));

  v37 = *(v0 + 8);

  return v37();
}

uint64_t sub_226332FCC()
{
  v1 = *(v0 + 456);
  sub_226330DB4(*(v0 + 480));

  return MEMORY[0x2822009F8](sub_2263344EC, 0, 0);
}

uint64_t sub_226333044()
{
  v1 = v0[57];
  swift_beginAccess();
  v2 = *(v1 + 112);
  if (!*(v2 + 16) || (v3 = sub_22633941C(v0[65], v0[66]), (v4 & 1) == 0))
  {
    v22 = v0[66];
    swift_endAccess();

    v21 = v0[63];
    goto LABEL_6;
  }

  v76 = v0[65];
  v77 = v0[66];
  v78 = v0[63];
  v5 = v0[35];
  v6 = v0[36];
  v8 = v0[27];
  v7 = v0[28];
  v9 = v0[26];
  v10 = v0[24];
  v11 = *(v2 + 56);
  v12 = v7[9];
  v13 = v7[2];
  v13(v5, v11 + v12 * v3, v8);
  v14 = v8;
  v15 = v7[4];
  v15(v6, v5, v14);
  swift_endAccess();
  sub_226333F30(v6, v76, v77, v9);
  if (v78)
  {
    v16 = v0[66];
    v17 = v0[36];
    v18 = v0[27];
    v19 = v0[28];
    v20 = v0[26];

    (*(v19 + 8))(v17, v18);
    (*(v19 + 56))(v20, 1, 1, v18);
    sub_2262D67D8(v20, &unk_27D793BC0, &qword_2263525D8);
    v21 = 0;
    goto LABEL_6;
  }

  v79 = v12;
  v26 = v0[36];
  v27 = v0[34];
  v28 = v0[27];
  v29 = v0[26];
  (*(v0[28] + 56))(v29, 0, 1, v28);
  v15(v27, v29, v28);
  sub_2263344A4(&unk_27D793C10, MEMORY[0x277D78D68]);
  v30 = sub_22635044C();
  v31 = v0[66];
  if (v30)
  {
    v32 = v0[36];
    v33 = v0[34];
    v34 = v0[27];
    v35 = v0[28];
    v36 = v0[66];

    v37 = *(v35 + 8);
    v37(v33, v34);
    v37(v32, v34);
    v21 = 0;
    goto LABEL_6;
  }

  v38 = v0[65];
  v39 = v0[57];
  v41 = v0[33];
  v40 = v0[34];
  v42 = v0[27];
  swift_beginAccess();
  v13(v41, v40, v42);
  v43 = *(v39 + 112);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v45 = *(v39 + 112);
  v0[21] = v45;
  *(v39 + 112) = 0x8000000000000000;
  v23 = sub_22633941C(v38, v31);
  v46 = *(v45 + 16);
  v47 = (v24 & 1) == 0;
  v48 = __OFADD__(v46, v47);
  v49 = v46 + v47;
  if (v48)
  {
    __break(1u);
    goto LABEL_25;
  }

  v50 = v24;
  if (*(v45 + 24) >= v49)
  {
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v56 = v23;
      sub_226339D1C();
      v23 = v56;
    }

    goto LABEL_19;
  }

  v51 = v0[66];
  v52 = v0[65];
  sub_226336374(v49, isUniquelyReferenced_nonNull_native);
  v53 = v0[21];
  v23 = sub_22633941C(v52, v51);
  if ((v50 & 1) == (v54 & 1))
  {
LABEL_19:
    v57 = v0[66];
    v58 = v0[27];
    if (v50)
    {
      v59 = v0[33];
      v60 = v0[28];
      v61 = v23;
      v62 = v0[66];

      v63 = v0[21];
      (*(v60 + 40))(v63[7] + v61 * v79, v59, v58);
LABEL_23:
      v69 = v0[57];
      v70 = v0[36];
      v71 = v0[34];
      v72 = v0[27];
      v73 = v0[28];
      v74 = *(v69 + 112);
      *(v69 + 112) = v63;

      swift_endAccess();
      v75 = *(v73 + 8);
      v75(v71, v72);
      v75(v70, v72);
      v21 = 0;
LABEL_6:
      v0[67] = v21;
      v23 = sub_22633353C;
      v24 = 0;
      v25 = 0;

      return MEMORY[0x2822009F8](v23, v24, v25);
    }

    v64 = v0[65];
    v65 = v0[33];
    v63 = v0[21];
    v63[(v23 >> 6) + 8] |= 1 << v23;
    v66 = (v63[6] + 16 * v23);
    *v66 = v64;
    v66[1] = v57;
    v23 = (v15)(v63[7] + v23 * v79, v65, v58);
    v67 = v63[2];
    v48 = __OFADD__(v67, 1);
    v68 = v67 + 1;
    if (!v48)
    {
      v63[2] = v68;
      goto LABEL_23;
    }

LABEL_25:
    __break(1u);
    return MEMORY[0x2822009F8](v23, v24, v25);
  }

  return sub_226350C8C();
}

uint64_t sub_22633353C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 512) + 1;
  if (v5 == *(v4 + 496))
  {
    v6 = *(v4 + 488);

    v7 = *(v4 + 536);
    v8 = *(v4 + 472);
    v9 = *(v4 + 400);
    v10 = *(v4 + 368);
    v11 = *(v4 + 360);
    v12 = *(*(v4 + 456) + 120);
    (*(v4 + 464))(*(v4 + 376), v9, v11);
    sub_22634FB8C();
    (*(v10 + 8))(v9, v11);

    *(v4 + 440) = v7;
    v13 = *(MEMORY[0x277D85798] + 4);
    v14 = swift_task_alloc();
    *(v4 + 448) = v14;
    *v14 = v4;
    v14[1] = sub_2263322C0;
    v15 = *(v4 + 432);
    a1 = *(v4 + 408);
    a4 = *(v4 + 416);
    a2 = 0;
    a3 = 0;

    return MEMORY[0x2822003E8](a1, a2, a3, a4);
  }

  *(v4 + 504) = *(v4 + 536);
  *(v4 + 512) = v5;
  v16 = *(v4 + 488);
  if (v5 >= *(v16 + 16))
  {
    __break(1u);
    return MEMORY[0x2822003E8](a1, a2, a3, a4);
  }

  v17 = *(v4 + 456);
  v18 = v16 + 16 * v5;
  *(v4 + 520) = *(v18 + 32);
  *(v4 + 528) = *(v18 + 40);

  return MEMORY[0x2822009F8](sub_226333044, v17, 0);
}

uint64_t sub_2263336EC()
{
  v1 = v0[57];
  swift_beginAccess();
  v2 = *(v1 + 112);
  if (!*(v2 + 16) || (v3 = sub_22633941C(v0[72], v0[73]), (v4 & 1) == 0))
  {
    v22 = v0[73];
    swift_endAccess();

    v21 = v0[70];
    goto LABEL_6;
  }

  v76 = v0[72];
  v77 = v0[73];
  v78 = v0[70];
  v5 = v0[31];
  v6 = v0[32];
  v8 = v0[27];
  v7 = v0[28];
  v9 = v0[24];
  v10 = v0[25];
  v11 = *(v2 + 56);
  v12 = v7[9];
  v13 = v7[2];
  v13(v5, v11 + v12 * v3, v8);
  v14 = v8;
  v15 = v7[4];
  v15(v6, v5, v14);
  swift_endAccess();
  sub_226333FF0(v6, v10);
  if (v78)
  {
    v16 = v0[73];
    v17 = v0[32];
    v18 = v0[27];
    v19 = v0[28];
    v20 = v0[25];

    (*(v19 + 8))(v17, v18);
    (*(v19 + 56))(v20, 1, 1, v18);
    sub_2262D67D8(v20, &unk_27D793BC0, &qword_2263525D8);
    v21 = 0;
    goto LABEL_6;
  }

  v79 = v12;
  v26 = v0[32];
  v27 = v0[30];
  v28 = v0[27];
  v29 = v0[25];
  (*(v0[28] + 56))(v29, 0, 1, v28);
  v15(v27, v29, v28);
  sub_2263344A4(&unk_27D793C10, MEMORY[0x277D78D68]);
  v30 = sub_22635044C();
  v31 = v0[73];
  if (v30)
  {
    v32 = v0[32];
    v33 = v0[30];
    v34 = v0[27];
    v35 = v0[28];
    v36 = v0[73];

    v37 = *(v35 + 8);
    v37(v33, v34);
    v37(v32, v34);
    v21 = 0;
    goto LABEL_6;
  }

  v38 = v0[72];
  v39 = v0[57];
  v41 = v0[29];
  v40 = v0[30];
  v42 = v0[27];
  swift_beginAccess();
  v13(v41, v40, v42);
  v43 = *(v39 + 112);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v45 = *(v39 + 112);
  v0[20] = v45;
  *(v39 + 112) = 0x8000000000000000;
  v23 = sub_22633941C(v38, v31);
  v46 = *(v45 + 16);
  v47 = (v24 & 1) == 0;
  v48 = __OFADD__(v46, v47);
  v49 = v46 + v47;
  if (v48)
  {
    __break(1u);
    goto LABEL_25;
  }

  v50 = v24;
  if (*(v45 + 24) >= v49)
  {
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v56 = v23;
      sub_226339D1C();
      v23 = v56;
    }

    goto LABEL_19;
  }

  v51 = v0[73];
  v52 = v0[72];
  sub_226336374(v49, isUniquelyReferenced_nonNull_native);
  v53 = v0[20];
  v23 = sub_22633941C(v52, v51);
  if ((v50 & 1) == (v54 & 1))
  {
LABEL_19:
    v57 = v0[73];
    v58 = v0[27];
    if (v50)
    {
      v60 = v0[28];
      v59 = v0[29];
      v61 = v23;
      v62 = v0[73];

      v63 = v0[20];
      (*(v60 + 40))(v63[7] + v61 * v79, v59, v58);
LABEL_23:
      v69 = v0[57];
      v70 = v0[32];
      v71 = v0[30];
      v72 = v0[27];
      v73 = v0[28];
      v74 = *(v69 + 112);
      *(v69 + 112) = v63;

      swift_endAccess();
      v75 = *(v73 + 8);
      v75(v71, v72);
      v75(v70, v72);
      v21 = 0;
LABEL_6:
      v0[74] = v21;
      v23 = sub_226333BDC;
      v24 = 0;
      v25 = 0;

      return MEMORY[0x2822009F8](v23, v24, v25);
    }

    v64 = v0[72];
    v65 = v0[29];
    v63 = v0[20];
    v63[(v23 >> 6) + 8] |= 1 << v23;
    v66 = (v63[6] + 16 * v23);
    *v66 = v64;
    v66[1] = v57;
    v23 = (v15)(v63[7] + v23 * v79, v65, v58);
    v67 = v63[2];
    v48 = __OFADD__(v67, 1);
    v68 = v67 + 1;
    if (!v48)
    {
      v63[2] = v68;
      goto LABEL_23;
    }

LABEL_25:
    __break(1u);
    return MEMORY[0x2822009F8](v23, v24, v25);
  }

  return sub_226350C8C();
}

uint64_t sub_226333BDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 568) + 1;
  if (v5 == *(v4 + 552))
  {
    v6 = *(v4 + 544);

    v7 = *(v4 + 592);
    v8 = *(v4 + 472);
    v9 = *(v4 + 400);
    v10 = *(v4 + 368);
    v11 = *(v4 + 360);
    v12 = *(*(v4 + 456) + 120);
    (*(v4 + 464))(*(v4 + 376), v9, v11);
    sub_22634FB8C();
    (*(v10 + 8))(v9, v11);

    *(v4 + 440) = v7;
    v13 = *(MEMORY[0x277D85798] + 4);
    v14 = swift_task_alloc();
    *(v4 + 448) = v14;
    *v14 = v4;
    v14[1] = sub_2263322C0;
    v15 = *(v4 + 432);
    a1 = *(v4 + 408);
    a4 = *(v4 + 416);
    a2 = 0;
    a3 = 0;

    return MEMORY[0x2822003E8](a1, a2, a3, a4);
  }

  v16 = *(v4 + 592);
  *(v4 + 568) = v5;
  *(v4 + 560) = v16;
  v17 = *(v4 + 544);
  if (v5 >= *(v17 + 16))
  {
    __break(1u);
    return MEMORY[0x2822003E8](a1, a2, a3, a4);
  }

  v18 = *(v4 + 456);
  v19 = v17 + 16 * v5;
  *(v4 + 576) = *(v19 + 32);
  *(v4 + 584) = *(v19 + 40);

  return MEMORY[0x2822009F8](sub_2263336EC, v18, 0);
}

uint64_t sub_226333D90()
{
  v1 = *(v0 + 456);
  swift_beginAccess();
  v2 = *(v1 + 112);
  *(v1 + 112) = MEMORY[0x277D84F98];

  return MEMORY[0x2822009F8](sub_226333E1C, 0, 0);
}

uint64_t sub_226333E1C()
{
  v1 = *(v0 + 440);
  v2 = *(v0 + 472);
  v3 = *(v0 + 400);
  v4 = *(v0 + 368);
  v5 = *(v0 + 360);
  v6 = *(*(v0 + 456) + 120);
  (*(v0 + 464))(*(v0 + 376), v3, v5);
  sub_22634FB8C();
  (*(v4 + 8))(v3, v5);

  *(v0 + 440) = v1;
  v7 = *(MEMORY[0x277D85798] + 4);
  v8 = swift_task_alloc();
  *(v0 + 448) = v8;
  *v8 = v0;
  v8[1] = sub_2263322C0;
  v9 = *(v0 + 432);
  v10 = *(v0 + 408);
  v11 = *(v0 + 416);

  return MEMORY[0x2822003E8](v10, 0, 0, v11);
}

void sub_226333F30(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v9 = objc_allocWithZone(MEMORY[0x277CC1E70]);

  v10 = sub_226334098(a2, a3, 1);
  if (!v4)
  {
    v11 = v10;
    v12 = [v10 applicationState];
    sub_226331010(a1, v12, a4);
  }
}

void sub_226333FF0(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = objc_opt_self();
  v5 = sub_22635045C();
  v6 = [v4 applicationWithBundleIdentifier_];

  sub_22633149C(a1, v6, a2);
}

id sub_226334098(uint64_t a1, uint64_t a2, char a3)
{
  v11[1] = *MEMORY[0x277D85DE8];
  v5 = sub_22635045C();

  v11[0] = 0;
  v6 = [v3 initWithBundleIdentifier:v5 allowPlaceholder:a3 & 1 error:v11];

  if (v6)
  {
    v7 = v11[0];
  }

  else
  {
    v8 = v11[0];
    sub_22634EDAC();

    swift_willThrow();
  }

  v9 = *MEMORY[0x277D85DE8];
  return v6;
}

uint64_t sub_226334174(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_226334220(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793BE0, &qword_226355A70) - 8);
  v6 = *(v5 + 80);
  v7 = (v6 + 40) & ~v6;
  v8 = (*(v5 + 64) + v6 + v7) & ~v6;
  v9 = v1[2];
  v10 = v1[3];
  v11 = v1[4];
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_2262FF0E0;

  return sub_2263300B8(a1, v9, v10, v11, v1 + v7, v1 + v8);
}

uint64_t sub_22633435C(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793BE0, &qword_226355A70) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v1 + 16);
  v9 = *(v1 + 24);
  v10 = *(v1 + v7);
  v11 = *(v1 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8));
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_2262D641C;

  return sub_226331E74(a1, v8, v9, v1 + v6, v10, v11);
}

uint64_t sub_2263344A4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2263344F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 16);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = sub_226316434;

  return v13(a1, a2, a3, a4);
}

uint64_t EngagementStream.identifier.getter()
{
  v1 = [*v0 identifier];
  v2 = sub_22635046C();

  return v2;
}

void EngagementStream.init()(void *a1@<X8>)
{
  v2 = [objc_opt_self() atx:7257600.0 storeConfigWithMaxAge:?];
  type metadata accessor for VisualActionEvent();
  v3 = objc_allocWithZone(MEMORY[0x277CF1B30]);
  v4 = v2;
  v5 = sub_22635045C();
  v6 = [v3 initWithPrivateStreamIdentifier:v5 storeConfig:v4 eventDataClass:swift_getObjCClassFromMetadata()];

  *a1 = v6;
}

void EngagementStream.init(config:)(void *a1@<X0>, void *a2@<X8>)
{
  if (a1)
  {
    v4 = a1;
  }

  else
  {
    v4 = [objc_opt_self() atx:7257600.0 storeConfigWithMaxAge:?];
  }

  type metadata accessor for VisualActionEvent();
  v5 = objc_allocWithZone(MEMORY[0x277CF1B30]);
  v6 = a1;
  v7 = v4;
  v8 = sub_22635045C();
  v9 = [v5 initWithPrivateStreamIdentifier:v8 storeConfig:v7 eventDataClass:swift_getObjCClassFromMetadata()];

  *a2 = v9;
}

uint64_t EngagementStream.getEngagementRates(for:startTime:majorLabel:minorLabel:minimumSampleCount:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, double a7)
{
  v13 = *v7;
  v14 = swift_allocObject();
  v15 = MEMORY[0x277D84F98];
  *(v14 + 16) = MEMORY[0x277D84F98];
  v57 = v14 + 16;
  v16 = swift_allocObject();
  *(v16 + 16) = v15;
  v17 = v16 + 16;
  v67 = sub_22633BACC;
  v68 = 0;
  v61 = [v13 publisherFromStartTime_];
  aBlock = MEMORY[0x277D85DD0];
  v64 = 1107296256;
  v65 = sub_22633BAE0;
  v66 = &block_descriptor_1;
  v18 = _Block_copy(&aBlock);
  v19 = swift_allocObject();
  v19[2] = a1;
  v19[3] = a2;
  v19[4] = a3;
  v19[5] = a4;
  v19[6] = a5;
  v19[7] = v14;
  v19[8] = v16;
  v67 = sub_226335258;
  v68 = v19;
  aBlock = MEMORY[0x277D85DD0];
  v64 = 1107296256;
  v65 = sub_22633BAE0;
  v66 = &block_descriptor_7;
  v20 = _Block_copy(&aBlock);

  v21 = [v61 sinkWithCompletion:v18 receiveInput:v20];
  _Block_release(v20);
  _Block_release(v18);

  v22 = *(a1 + 16);
  if (!v22)
  {

    v55 = MEMORY[0x277D84F98];
LABEL_31:

    return v55;
  }

  v23 = (a1 + 40);
  v62 = MEMORY[0x277D84F98];
  v24 = v14;
  v25 = v14 + 16;
  while (1)
  {
    v27 = *(v23 - 1);
    v26 = *v23;
    swift_beginAccess();
    v28 = *v17;
    v29 = *(*v17 + 16);

    if (!v29 || (v30 = sub_22633941C(v27, v26), (v31 & 1) == 0))
    {
      swift_endAccess();
LABEL_4:

      goto LABEL_5;
    }

    v32 = *(*(v28 + 56) + 8 * v30);
    swift_endAccess();
    swift_beginAccess();
    v33 = *v25;
    if (*(*v25 + 16) && (v34 = sub_22633941C(v27, v26), (v35 & 1) != 0))
    {
      v36 = *(*(v33 + 56) + 8 * v34);
      swift_endAccess();
      if (v32 <= 0)
      {
        goto LABEL_4;
      }

      if (v36 <= 0 && v32 < a6)
      {
        goto LABEL_4;
      }
    }

    else
    {
      swift_endAccess();
      if (v32 < 1 || v32 < a6)
      {
        goto LABEL_4;
      }

      v36 = 0;
    }

    v59 = v36;
    v38 = v24;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    aBlock = v62;
    v40 = sub_22633941C(v27, v26);
    v42 = v62[2];
    v43 = (v41 & 1) == 0;
    v44 = __OFADD__(v42, v43);
    v45 = v42 + v43;
    if (v44)
    {
      break;
    }

    v46 = v41;
    if (v62[3] >= v45)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v54 = v40;
        sub_22633A104();
        v40 = v54;
      }
    }

    else
    {
      sub_226336994(v45, isUniquelyReferenced_nonNull_native);
      v40 = sub_22633941C(v27, v26);
      if ((v46 & 1) != (v47 & 1))
      {
        goto LABEL_34;
      }
    }

    v24 = v38;
    v25 = v57;
    v48 = v59 / v32;
    if (v46)
    {
      v49 = v40;

      v62 = aBlock;
      *(aBlock[7] + 8 * v49) = v48;
    }

    else
    {
      v50 = aBlock;
      aBlock[(v40 >> 6) + 8] |= 1 << v40;
      v51 = (v50[6] + 16 * v40);
      *v51 = v27;
      v51[1] = v26;
      *(v50[7] + 8 * v40) = v48;
      v52 = v50[2];
      v44 = __OFADD__(v52, 1);
      v53 = v52 + 1;
      if (v44)
      {
        goto LABEL_33;
      }

      v62 = v50;
      v50[2] = v53;
    }

LABEL_5:
    v23 += 2;
    if (!--v22)
    {

      v55 = v62;
      goto LABEL_31;
    }
  }

  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  result = sub_226350C8C();
  __break(1u);
  return result;
}

id EngagementStream.publisher(fromStartTime:)()
{
  v1 = [*v0 publisherFromStartTime_];

  return v1;
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_226334D2C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t *a8)
{
  v64 = a7;
  v15 = sub_22635004C();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v62 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = [a1 eventBody];
  if (!v20)
  {
    sub_22634FFBC();
    v30 = sub_22635003C();
    v31 = sub_22635073C();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&dword_2262B6000, v30, v31, "Failed to get eventBody from event. Unable to process this stream.", v32, 2u);
      MEMORY[0x22AA7D570](v32, -1, -1);
    }

    (*(v16 + 8))(v19, v15);
    return;
  }

  v21 = v20;
  v63 = a8;
  v22 = &v20[OBJC_IVAR____TtC26VisualActionPredictionCore17VisualActionEvent_actionId];
  v23 = *&v20[OBJC_IVAR____TtC26VisualActionPredictionCore17VisualActionEvent_actionId + 8];
  v66[0] = *&v20[OBJC_IVAR____TtC26VisualActionPredictionCore17VisualActionEvent_actionId];
  v66[1] = v23;
  MEMORY[0x28223BE20](v20);
  *(&v62 - 2) = v66;

  v24 = sub_22633B9A8(sub_22633BA54, (&v62 - 4), a2);

  if ((v24 & 1) == 0 || a4 && ((v25 = *&v21[OBJC_IVAR____TtC26VisualActionPredictionCore17VisualActionEvent_majorLabel + 8]) == 0 || (*&v21[OBJC_IVAR____TtC26VisualActionPredictionCore17VisualActionEvent_majorLabel] == a3 ? (v26 = v25 == a4) : (v26 = 0), !v26 && (sub_226350C4C() & 1) == 0)) || a6 && ((v27 = *&v21[OBJC_IVAR____TtC26VisualActionPredictionCore17VisualActionEvent_minorLabel + 8]) == 0 || (*&v21[OBJC_IVAR____TtC26VisualActionPredictionCore17VisualActionEvent_minorLabel] == a5 ? (v28 = v27 == a6) : (v28 = 0), !v28 && (sub_226350C4C() & 1) == 0)))
  {

    return;
  }

  if (v21[OBJC_IVAR____TtC26VisualActionPredictionCore17VisualActionEvent_outcome])
  {
    v29 = 0;
  }

  else
  {
    v33 = *v22;
    v29 = v22[1];
    v34 = v64;
    swift_beginAccess();

    v35 = *(v34 + 16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v65 = *(v34 + 16);
    v37 = v65;
    *(v34 + 16) = 0x8000000000000000;
    v38 = sub_22633941C(v33, v29);
    v40 = v37[2];
    v41 = (v39 & 1) == 0;
    v42 = __OFADD__(v40, v41);
    v43 = v40 + v41;
    if (v42)
    {
      __break(1u);
      goto LABEL_47;
    }

    LOBYTE(a4) = v39;
    if (v37[3] >= v43)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        goto LABEL_48;
      }
    }

    else
    {
      sub_2263366F4(v43, isUniquelyReferenced_nonNull_native);
      v37 = v65;
      v38 = sub_22633941C(v33, v29);
      if ((a4 & 1) != (v44 & 1))
      {
        goto LABEL_35;
      }
    }

    while (1)
    {
      *(v64 + 16) = v37;
      if ((a4 & 1) == 0)
      {
        v45 = v38;
        sub_2262E3118(v38, v33, v29, 0, v37);

        v38 = v45;
      }

      v46 = v37[7];
      v47 = *(v46 + 8 * v38);
      v42 = __OFADD__(v47, 1);
      v48 = v47 + 1;
      if (!v42)
      {
        break;
      }

LABEL_47:
      __break(1u);
LABEL_48:
      v61 = v38;
      sub_226339F9C();
      v38 = v61;
      v37 = v65;
    }

    *(v46 + 8 * v38) = v48;
    swift_endAccess();

    v29 = sub_2262B7EB0;
  }

  v33 = *v22;
  v34 = v22[1];
  v22 = v63;
  swift_beginAccess();

  v49 = v22[2];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v65 = v22[2];
  v37 = v65;
  v22[2] = 0x8000000000000000;
  v50 = sub_22633941C(v33, v34);
  v52 = v37[2];
  v53 = (v51 & 1) == 0;
  v42 = __OFADD__(v52, v53);
  v54 = v52 + v53;
  if (v42)
  {
    __break(1u);
    goto LABEL_43;
  }

  LOBYTE(a4) = v51;
  if (v37[3] >= v54)
  {
    goto LABEL_36;
  }

  sub_2263366F4(v54, isUniquelyReferenced_nonNull_native);
  v37 = v65;
  v50 = sub_22633941C(v33, v34);
  if ((a4 & 1) != (v55 & 1))
  {
LABEL_35:
    v50 = sub_226350C8C();
    __break(1u);
LABEL_36:
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      goto LABEL_44;
    }
  }

  v22[2] = v37;
  if (a4)
  {
    goto LABEL_39;
  }

LABEL_38:
  v56 = v50;
  sub_2262E3118(v50, v33, v34, 0, v37);

  v50 = v56;
LABEL_39:
  while (1)
  {
    v57 = v37[7];
    v58 = *(v57 + 8 * v50);
    v42 = __OFADD__(v58, 1);
    v59 = v58 + 1;
    if (!v42)
    {
      break;
    }

LABEL_43:
    __break(1u);
LABEL_44:
    v60 = v50;
    sub_226339F9C();
    v50 = v60;
    v37 = v65;
    v63[2] = v65;
    if ((a4 & 1) == 0)
    {
      goto LABEL_38;
    }
  }

  *(v57 + 8 * v50) = v59;
  swift_endAccess();

  sub_22633BAAC(v29);
}

void sub_22633526C(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

Swift::Double_optional __swiftcall EngagementStream.getEngagementRate(from:actionId:majorLabel:minorLabel:minimumSampleCount:)(Swift::Double from, Swift::String actionId, Swift::String_optional majorLabel, Swift::String_optional minorLabel, Swift::Int minimumSampleCount)
{
  object = minorLabel.value._object;
  countAndFlagsBits = majorLabel.value._countAndFlagsBits;
  v25 = minorLabel.value._countAndFlagsBits;
  v7 = majorLabel.value._object;
  v8 = actionId._object;
  v23 = actionId._countAndFlagsBits;
  v10 = *v5;
  v11 = swift_allocObject();
  *(v11 + 16) = 0;
  v12 = swift_allocObject();
  *(v12 + 16) = 0;
  v13 = [v10 publisherFromStartTime_];
  v30 = sub_22633BACC;
  v31 = 0;
  aBlock = MEMORY[0x277D85DD0];
  v27 = 1107296256;
  v28 = sub_22633BAE0;
  v29 = &block_descriptor_14;
  v14 = _Block_copy(&aBlock);
  v15 = swift_allocObject();
  v15[2] = v23;
  v15[3] = v8;
  v15[4] = countAndFlagsBits;
  v15[5] = v7;
  v15[6] = v25;
  v15[7] = object;
  v15[8] = v11;
  v15[9] = v12;
  v30 = sub_22633A26C;
  v31 = v15;
  aBlock = MEMORY[0x277D85DD0];
  v27 = 1107296256;
  v28 = sub_22633BAE0;
  v29 = &block_descriptor_20;
  v16 = _Block_copy(&aBlock);

  v17 = [v13 sinkWithCompletion:v14 receiveInput:v16];
  _Block_release(v16);
  _Block_release(v14);

  swift_beginAccess();
  v18 = *(v12 + 16);
  if (v18 < 1)
  {

LABEL_6:
    LOBYTE(v21) = 0;
    goto LABEL_7;
  }

  swift_beginAccess();
  v19 = *(v11 + 16);

  if (v19 <= 0 && v18 < minimumSampleCount)
  {
    goto LABEL_6;
  }

  v20 = v19 / v18;
  *&v21 = v20;
LABEL_7:
  result.value = v20;
  result.is_nil = v21;
  return result;
}

id sub_226335584(void *a1)
{
  v2 = sub_22635004C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [a1 error];
  if (result)
  {
    v8 = result;
    sub_22634FFBC();
    v9 = v8;
    v10 = sub_22635003C();
    v11 = sub_22635073C();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      *v12 = 138412290;
      v14 = v9;
      v15 = _swift_stdlib_bridgeErrorToNSError();
      *(v12 + 4) = v15;
      *v13 = v15;
      _os_log_impl(&dword_2262B6000, v10, v11, "Could not stream the visual action event stream: %@", v12, 0xCu);
      sub_22633B940(v13);
      MEMORY[0x22AA7D570](v13, -1, -1);
      MEMORY[0x22AA7D570](v12, -1, -1);
    }

    else
    {
      v14 = v10;
      v10 = v9;
    }

    return (*(v3 + 8))(v6, v2);
  }

  return result;
}

void sub_22633574C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v42 = a8;
  v43 = a6;
  v15 = sub_22635004C();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v40 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = [a1 eventBody];
  if (v20)
  {
    v21 = v20;
    v22 = *&v20[OBJC_IVAR____TtC26VisualActionPredictionCore17VisualActionEvent_actionId] == a2 && *&v20[OBJC_IVAR____TtC26VisualActionPredictionCore17VisualActionEvent_actionId + 8] == a3;
    if (v22 || (v41 = v20, v23 = sub_226350C4C(), v21 = v41, (v23 & 1) != 0))
    {
      if (!a5 || (v24 = *&v21[OBJC_IVAR____TtC26VisualActionPredictionCore17VisualActionEvent_majorLabel + 8]) != 0 && (*&v21[OBJC_IVAR____TtC26VisualActionPredictionCore17VisualActionEvent_majorLabel] == a4 ? (v25 = v24 == a5) : (v25 = 0), v25 || (v41 = v21, v26 = sub_226350C4C(), v21 = v41, (v26 & 1) != 0)))
      {
        if (!a7 || (v27 = *&v21[OBJC_IVAR____TtC26VisualActionPredictionCore17VisualActionEvent_minorLabel + 8]) != 0 && (*&v21[OBJC_IVAR____TtC26VisualActionPredictionCore17VisualActionEvent_minorLabel] == v43 ? (v28 = v27 == a7) : (v28 = 0), v28 || (v41 = v21, v29 = sub_226350C4C(), v21 = v41, (v29 & 1) != 0)))
        {
          v30 = v21[OBJC_IVAR____TtC26VisualActionPredictionCore17VisualActionEvent_outcome];

          if (!v30)
          {
            v31 = v42;
            swift_beginAccess();
            v32 = *(v31 + 16);
            v33 = __OFADD__(v32, 1);
            v34 = v32 + 1;
            if (v33)
            {
LABEL_34:
              __break(1u);
              return;
            }

            *(v31 + 16) = v34;
          }

          swift_beginAccess();
          v35 = *(a9 + 16);
          v33 = __OFADD__(v35, 1);
          v36 = v35 + 1;
          if (!v33)
          {
            *(a9 + 16) = v36;
            return;
          }

          __break(1u);
          goto LABEL_34;
        }
      }
    }
  }

  else
  {
    sub_22634FFBC();
    v37 = sub_22635003C();
    v38 = sub_22635073C();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      *v39 = 0;
      _os_log_impl(&dword_2262B6000, v37, v38, "Failed to get eventBody from event. Unable to process this stream.", v39, 2u);
      MEMORY[0x22AA7D570](v39, -1, -1);
    }

    (*(v16 + 8))(v19, v15);
  }
}

void EngagementStream.sendEvent(_:)(uint64_t a1)
{
  v3 = [*v1 source];
  [v3 sendEvent_];
}

id EngagementStream.source()()
{
  v1 = [*v0 source];

  return v1;
}

id EngagementStream.publisher(withStartTime:endTime:maxEvents:lastN:reversed:)(void *a1, void *a2, void *a3, void *a4, int a5)
{
  v30 = a5;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793C20, &unk_226351F80);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v14 = &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v29 - v15;
  v29 = *v5;
  [a1 doubleValue];
  sub_22634EE4C();
  v17 = sub_22634EECC();
  v18 = *(v17 - 8);
  v19 = *(v18 + 56);
  v19(v16, 0, 1, v17);
  [a2 doubleValue];
  sub_22634EE4C();
  v19(v14, 0, 1, v17);
  v20 = [a3 integerValue];
  v21 = [a4 integerValue];
  v22 = *(v18 + 48);
  v23 = 0;
  if (v22(v16, 1, v17) != 1)
  {
    v23 = sub_22634EE8C();
    (*(v18 + 8))(v16, v17);
  }

  if (v22(v14, 1, v17) == 1)
  {
    v24 = 0;
  }

  else
  {
    v24 = sub_22634EE8C();
    (*(v18 + 8))(v14, v17);
  }

  v25 = objc_allocWithZone(MEMORY[0x277CF1A50]);
  v26 = [v25 initWithStartDate:v23 endDate:v24 maxEvents:v20 lastN:v21 reversed:v30 & 1];

  v27 = [v29 publisherWithOptions_];
  return v27;
}

Swift::Void __swiftcall EngagementStream.clearAllData()()
{
  v1 = sub_22635004C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v0;
  aBlock[4] = sub_2262BA3D4;
  aBlock[5] = 0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_226335F70;
  aBlock[3] = &block_descriptor_23;
  v7 = _Block_copy(aBlock);

  [v6 pruneWithPredicateBlock_];
  _Block_release(v7);
  if (swift_isEscapingClosureAtFileLocation())
  {
    __break(1u);
  }

  else
  {
    sub_22634FFBC();
    v8 = sub_22635003C();
    v9 = sub_22635071C();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_2262B6000, v8, v9, "VisualActionPredictionFeedback stream cleared.", v10, 2u);
      MEMORY[0x22AA7D570](v10, -1, -1);
    }

    (*(v2 + 8))(v5, v1);
  }
}

uint64_t sub_226335F70(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  v7 = a2;
  LOBYTE(a3) = v6(a2, a3);

  return a3 & 1;
}

uint64_t sub_226335FCC(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

uint64_t sub_226336018(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = type metadata accessor for Analytics.Interval(0);
  v39 = *(v6 - 8);
  v7 = *(v39 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v41 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v10 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793C90, &qword_226355658);
  v40 = a2;
  result = sub_226350A8C();
  v12 = result;
  if (*(v9 + 16))
  {
    v38 = v3;
    v13 = 0;
    v14 = (v9 + 64);
    v15 = 1 << *(v9 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(v9 + 64);
    v18 = (v15 + 63) >> 6;
    v19 = result + 64;
    while (v17)
    {
      v21 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_17:
      v24 = v21 | (v13 << 6);
      v25 = *(*(v9 + 48) + v24);
      v26 = *(v39 + 72);
      v27 = *(v9 + 56) + v26 * v24;
      if (v40)
      {
        sub_22633B8D8(v27, v41, type metadata accessor for Analytics.Interval);
      }

      else
      {
        sub_22633B870(v27, v41, type metadata accessor for Analytics.Interval);
      }

      v28 = *(v12 + 40);
      sub_226350CEC();
      MEMORY[0x22AA7CDB0](v25);
      result = sub_226350D0C();
      v29 = -1 << *(v12 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v19 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v19 + 8 * v31);
          if (v35 != -1)
          {
            v20 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v20 = __clz(__rbit64((-1 << v30) & ~*(v19 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v19 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      *(*(v12 + 48) + v20) = v25;
      result = sub_22633B8D8(v41, *(v12 + 56) + v26 * v20, type metadata accessor for Analytics.Interval);
      ++*(v12 + 16);
    }

    v22 = v13;
    while (1)
    {
      v13 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v13 >= v18)
      {
        break;
      }

      v23 = v14[v13];
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v17 = (v23 - 1) & v23;
        goto LABEL_17;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_36;
    }

    v36 = 1 << *(v9 + 32);
    v3 = v38;
    if (v36 >= 64)
    {
      bzero((v9 + 64), ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v14 = -1 << v36;
    }

    *(v9 + 16) = 0;
  }

LABEL_36:
  *v3 = v12;
  return result;
}

uint64_t sub_226336374(uint64_t a1, int a2)
{
  v3 = v2;
  v49 = sub_22634FF9C();
  v6 = *(v49 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v49);
  v48 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v10 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793C58, &qword_226355640);
  v46 = a2;
  result = sub_226350A8C();
  v12 = result;
  if (*(v9 + 16))
  {
    v13 = 0;
    v14 = (v9 + 64);
    v15 = 1 << *(v9 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(v9 + 64);
    v18 = (v15 + 63) >> 6;
    v42 = v2;
    v43 = (v6 + 16);
    v44 = v9;
    v45 = v6;
    v47 = (v6 + 32);
    v19 = result + 64;
    while (v17)
    {
      v22 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_17:
      v25 = v22 | (v13 << 6);
      v26 = *(v9 + 56);
      v27 = (*(v9 + 48) + 16 * v25);
      v29 = *v27;
      v28 = v27[1];
      v30 = *(v45 + 72);
      v31 = v26 + v30 * v25;
      if (v46)
      {
        (*v47)(v48, v31, v49);
      }

      else
      {
        (*v43)(v48, v31, v49);
      }

      v32 = *(v12 + 40);
      sub_226350CEC();
      sub_2263504EC();
      result = sub_226350D0C();
      v33 = -1 << *(v12 + 32);
      v34 = result & ~v33;
      v35 = v34 >> 6;
      if (((-1 << v34) & ~*(v19 + 8 * (v34 >> 6))) == 0)
      {
        v36 = 0;
        v37 = (63 - v33) >> 6;
        while (++v35 != v37 || (v36 & 1) == 0)
        {
          v38 = v35 == v37;
          if (v35 == v37)
          {
            v35 = 0;
          }

          v36 |= v38;
          v39 = *(v19 + 8 * v35);
          if (v39 != -1)
          {
            v20 = __clz(__rbit64(~v39)) + (v35 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v20 = __clz(__rbit64((-1 << v34) & ~*(v19 + 8 * (v34 >> 6)))) | v34 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v19 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      v21 = (*(v12 + 48) + 16 * v20);
      *v21 = v29;
      v21[1] = v28;
      result = (*v47)(*(v12 + 56) + v30 * v20, v48, v49);
      ++*(v12 + 16);
      v9 = v44;
    }

    v23 = v13;
    while (1)
    {
      v13 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v13 >= v18)
      {
        break;
      }

      v24 = v14[v13];
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v17 = (v24 - 1) & v24;
        goto LABEL_17;
      }
    }

    if ((v46 & 1) == 0)
    {

      v3 = v42;
      goto LABEL_36;
    }

    v40 = 1 << *(v9 + 32);
    v3 = v42;
    if (v40 >= 64)
    {
      bzero(v14, ((v40 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v14 = -1 << v40;
    }

    *(v9 + 16) = 0;
  }

LABEL_36:
  *v3 = v12;
  return result;
}

uint64_t sub_2263366F4(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793848, &unk_226355680);
  v38 = a2;
  result = sub_226350A8C();
  v8 = result;
  if (*(v5 + 16))
  {
    v36 = v3;
    v37 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(*(v5 + 56) + 8 * v21);
      if ((v38 & 1) == 0)
      {
        v26 = v22[1];
      }

      v27 = *(v8 + 40);
      sub_226350CEC();
      sub_2263504EC();
      result = sub_226350D0C();
      v28 = -1 << *(v8 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v15 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v15 + 8 * v30);
          if (v34 != -1)
          {
            v16 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v29) & ~*(v15 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
      v5 = v37;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_35;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero(v10, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_226336994(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793840, &unk_226354360);
  v37 = a2;
  result = sub_226350A8C();
  v8 = result;
  if (*(v5 + 16))
  {
    v36 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(*(v5 + 56) + 8 * v21);
      if ((v37 & 1) == 0)
      {
        v26 = v22[1];
      }

      v27 = *(v8 + 40);
      sub_226350CEC();
      sub_2263504EC();
      result = sub_226350D0C();
      v28 = -1 << *(v8 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v15 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v15 + 8 * v30);
          if (v34 != -1)
          {
            v16 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v29) & ~*(v15 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v37 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_35;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero((v5 + 64), ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_226336CB0(uint64_t a1, int a2, uint64_t (*a3)(void), uint64_t *a4, uint64_t *a5, uint64_t (*a6)(void))
{
  v62 = a6;
  v9 = v6;
  v12 = a3(0);
  v55 = *(v12 - 8);
  v13 = *(v55 + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v61 = &v51 - v14;
  v15 = sub_22634EEFC();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v57 = &v51 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *v9;
  if (*(*v9 + 24) > a1)
  {
    v20 = *(*v9 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  v56 = a2;
  v21 = v19;
  result = sub_226350A8C();
  v23 = result;
  if (*(v19 + 16))
  {
    v60 = v15;
    v24 = 0;
    v25 = (v19 + 64);
    v26 = 1 << *(v19 + 32);
    if (v26 < 64)
    {
      v27 = ~(-1 << v26);
    }

    else
    {
      v27 = -1;
    }

    v28 = v27 & *(v19 + 64);
    v29 = (v26 + 63) >> 6;
    v51 = v9;
    v52 = (v16 + 16);
    v53 = v19;
    v54 = v16;
    v58 = (v16 + 32);
    v30 = result + 64;
    v31 = v57;
    while (v28)
    {
      v33 = __clz(__rbit64(v28));
      v28 &= v28 - 1;
LABEL_17:
      v36 = v33 | (v24 << 6);
      v37 = *(v21 + 48);
      v59 = *(v54 + 72);
      v38 = v37 + v59 * v36;
      if (v56)
      {
        (*v58)(v31, v38, v60);
        v39 = *(v21 + 56);
        v40 = *(v55 + 72);
        sub_22633B8D8(v39 + v40 * v36, v61, v62);
      }

      else
      {
        (*v52)(v31, v38, v60);
        v41 = *(v21 + 56);
        v40 = *(v55 + 72);
        sub_22633B870(v41 + v40 * v36, v61, v62);
      }

      v42 = *(v23 + 40);
      sub_22633B828(&qword_28137FA50, MEMORY[0x277CC95F0]);
      result = sub_22635040C();
      v43 = -1 << *(v23 + 32);
      v44 = result & ~v43;
      v45 = v44 >> 6;
      if (((-1 << v44) & ~*(v30 + 8 * (v44 >> 6))) == 0)
      {
        v46 = 0;
        v47 = (63 - v43) >> 6;
        v31 = v57;
        while (++v45 != v47 || (v46 & 1) == 0)
        {
          v48 = v45 == v47;
          if (v45 == v47)
          {
            v45 = 0;
          }

          v46 |= v48;
          v49 = *(v30 + 8 * v45);
          if (v49 != -1)
          {
            v32 = __clz(__rbit64(~v49)) + (v45 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v32 = __clz(__rbit64((-1 << v44) & ~*(v30 + 8 * (v44 >> 6)))) | v44 & 0x7FFFFFFFFFFFFFC0;
      v31 = v57;
LABEL_9:
      *(v30 + ((v32 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v32;
      (*v58)((*(v23 + 48) + v59 * v32), v31, v60);
      result = sub_22633B8D8(v61, *(v23 + 56) + v40 * v32, v62);
      ++*(v23 + 16);
      v21 = v53;
    }

    v34 = v24;
    while (1)
    {
      v24 = v34 + 1;
      if (__OFADD__(v34, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v24 >= v29)
      {
        break;
      }

      v35 = v25[v24];
      ++v34;
      if (v35)
      {
        v33 = __clz(__rbit64(v35));
        v28 = (v35 - 1) & v35;
        goto LABEL_17;
      }
    }

    if ((v56 & 1) == 0)
    {

      v9 = v51;
      goto LABEL_36;
    }

    v50 = 1 << *(v21 + 32);
    v9 = v51;
    if (v50 >= 64)
    {
      bzero(v25, ((v50 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v25 = -1 << v50;
    }

    *(v21 + 16) = 0;
  }

LABEL_36:
  *v9 = v23;
  return result;
}

uint64_t sub_226337124(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = sub_22634EEFC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v12 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D793CB0, &qword_226355678);
  v43 = a2;
  result = sub_226350A8C();
  v14 = result;
  if (*(v11 + 16))
  {
    v47 = v10;
    v39 = v3;
    v15 = 0;
    v16 = (v11 + 64);
    v17 = 1 << *(v11 + 32);
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v19 = v18 & *(v11 + 64);
    v20 = (v17 + 63) >> 6;
    v40 = (v7 + 16);
    v41 = v11;
    v42 = v7;
    v44 = (v7 + 32);
    v21 = result + 64;
    while (v19)
    {
      v23 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
LABEL_17:
      v26 = v23 | (v15 << 6);
      v27 = *(v11 + 48);
      v46 = *(v42 + 72);
      v28 = v27 + v46 * v26;
      if (v43)
      {
        (*v44)(v47, v28, v6);
        v45 = *(*(v11 + 56) + 8 * v26);
      }

      else
      {
        (*v40)(v47, v28, v6);
        v45 = *(*(v11 + 56) + 8 * v26);
      }

      v29 = *(v14 + 40);
      sub_22633B828(&qword_28137FA50, MEMORY[0x277CC95F0]);
      result = sub_22635040C();
      v30 = -1 << *(v14 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v21 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v21 + 8 * v32);
          if (v36 != -1)
          {
            v22 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v22 = __clz(__rbit64((-1 << v31) & ~*(v21 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v21 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      result = (*v44)(*(v14 + 48) + v46 * v22, v47, v6);
      *(*(v14 + 56) + 8 * v22) = v45;
      ++*(v14 + 16);
      v11 = v41;
    }

    v24 = v15;
    while (1)
    {
      v15 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v15 >= v20)
      {
        break;
      }

      v25 = v16[v15];
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v19 = (v25 - 1) & v25;
        goto LABEL_17;
      }
    }

    if ((v43 & 1) == 0)
    {

      v3 = v39;
      goto LABEL_36;
    }

    v37 = 1 << *(v11 + 32);
    v3 = v39;
    if (v37 >= 64)
    {
      bzero(v16, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v16 = -1 << v37;
    }

    *(v11 + 16) = 0;
  }

LABEL_36:
  *v3 = v14;
  return result;
}

uint64_t sub_226337500(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793830, &qword_226355650);
  v39 = a2;
  result = sub_226350A8C();
  v8 = result;
  if (*(v5 + 16))
  {
    v37 = v3;
    v38 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(*(v5 + 56) + 8 * v21);
      if ((v39 & 1) == 0)
      {
        v26 = v22[1];

        v27 = v25;
      }

      v28 = *(v8 + 40);
      sub_226350CEC();
      sub_2263504EC();
      result = sub_226350D0C();
      v29 = -1 << *(v8 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v15 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v15 + 8 * v31);
          if (v35 != -1)
          {
            v16 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v30) & ~*(v15 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
      v5 = v38;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v37;
      goto LABEL_35;
    }

    v36 = 1 << *(v5 + 32);
    v3 = v37;
    if (v36 >= 64)
    {
      bzero(v10, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v36;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_2263377E0(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = type metadata accessor for VisualAction(0);
  v43 = *(v6 - 8);
  v7 = *(v43 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v45 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v10 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D793C30, &unk_226355620);
  v44 = a2;
  result = sub_226350A8C();
  v12 = result;
  if (*(v9 + 16))
  {
    v41 = v3;
    v42 = v9;
    v13 = 0;
    v14 = (v9 + 64);
    v15 = 1 << *(v9 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(v9 + 64);
    v18 = (v15 + 63) >> 6;
    v19 = result + 64;
    while (v17)
    {
      v22 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_17:
      v25 = v22 | (v13 << 6);
      v26 = *(v9 + 56);
      v27 = (*(v9 + 48) + 16 * v25);
      v28 = *v27;
      v29 = v27[1];
      v30 = *(v43 + 72);
      v31 = v26 + v30 * v25;
      if (v44)
      {
        sub_22633B8D8(v31, v45, type metadata accessor for VisualAction);
      }

      else
      {
        sub_22633B870(v31, v45, type metadata accessor for VisualAction);
      }

      v32 = *(v12 + 40);
      sub_226350CEC();
      sub_2263504EC();
      result = sub_226350D0C();
      v33 = -1 << *(v12 + 32);
      v34 = result & ~v33;
      v35 = v34 >> 6;
      if (((-1 << v34) & ~*(v19 + 8 * (v34 >> 6))) == 0)
      {
        v36 = 0;
        v37 = (63 - v33) >> 6;
        while (++v35 != v37 || (v36 & 1) == 0)
        {
          v38 = v35 == v37;
          if (v35 == v37)
          {
            v35 = 0;
          }

          v36 |= v38;
          v39 = *(v19 + 8 * v35);
          if (v39 != -1)
          {
            v20 = __clz(__rbit64(~v39)) + (v35 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v20 = __clz(__rbit64((-1 << v34) & ~*(v19 + 8 * (v34 >> 6)))) | v34 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v19 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      v21 = (*(v12 + 48) + 16 * v20);
      *v21 = v28;
      v21[1] = v29;
      result = sub_22633B8D8(v45, *(v12 + 56) + v30 * v20, type metadata accessor for VisualAction);
      ++*(v12 + 16);
      v9 = v42;
    }

    v23 = v13;
    while (1)
    {
      v13 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v13 >= v18)
      {
        break;
      }

      v24 = v14[v13];
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v17 = (v24 - 1) & v24;
        goto LABEL_17;
      }
    }

    if ((v44 & 1) == 0)
    {

      v3 = v41;
      goto LABEL_36;
    }

    v40 = 1 << *(v9 + 32);
    v3 = v41;
    if (v40 >= 64)
    {
      bzero(v14, ((v40 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v14 = -1 << v40;
    }

    *(v9 + 16) = 0;
  }

LABEL_36:
  *v3 = v12;
  return result;
}

uint64_t sub_226337B58(uint64_t a1, int a2)
{
  v3 = v2;
  v57 = sub_22634F10C();
  v6 = *(v57 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v57);
  v56 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_22634F0EC();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v58 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v14 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793C70, &unk_226354340);
  v52 = a2;
  result = sub_226350A8C();
  v16 = result;
  if (*(v13 + 16))
  {
    v17 = 0;
    v18 = v10;
    v19 = (v13 + 64);
    v20 = 1 << *(v13 + 32);
    if (v20 < 64)
    {
      v21 = ~(-1 << v20);
    }

    else
    {
      v21 = -1;
    }

    v22 = v21 & *(v13 + 64);
    v23 = (v20 + 63) >> 6;
    v48 = (v18 + 16);
    v49 = v18;
    v46 = v3;
    v47 = v6 + 16;
    v50 = v13;
    v51 = v6;
    v53 = (v6 + 32);
    v54 = (v18 + 32);
    v24 = result + 64;
    v25 = v18;
    while (v22)
    {
      v27 = __clz(__rbit64(v22));
      v22 &= v22 - 1;
LABEL_17:
      v30 = v27 | (v17 << 6);
      v31 = *(v13 + 48);
      v55 = *(v25 + 72);
      v32 = v31 + v55 * v30;
      if (v52)
      {
        (*v54)(v58, v32, v9);
        v33 = *(v13 + 56);
        v34 = *(v51 + 72);
        (*(v51 + 32))(v56, v33 + v34 * v30, v57);
      }

      else
      {
        (*v48)(v58, v32, v9);
        v35 = *(v13 + 56);
        v34 = *(v51 + 72);
        (*(v51 + 16))(v56, v35 + v34 * v30, v57);
      }

      v36 = *(v16 + 40);
      sub_22633B828(&qword_27D793C78, MEMORY[0x277D78248]);
      result = sub_22635040C();
      v37 = -1 << *(v16 + 32);
      v38 = result & ~v37;
      v39 = v38 >> 6;
      if (((-1 << v38) & ~*(v24 + 8 * (v38 >> 6))) == 0)
      {
        v40 = 0;
        v41 = (63 - v37) >> 6;
        while (++v39 != v41 || (v40 & 1) == 0)
        {
          v42 = v39 == v41;
          if (v39 == v41)
          {
            v39 = 0;
          }

          v40 |= v42;
          v43 = *(v24 + 8 * v39);
          if (v43 != -1)
          {
            v26 = __clz(__rbit64(~v43)) + (v39 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v26 = __clz(__rbit64((-1 << v38) & ~*(v24 + 8 * (v38 >> 6)))) | v38 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v24 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
      (*v54)((*(v16 + 48) + v55 * v26), v58, v9);
      result = (*v53)(*(v16 + 56) + v34 * v26, v56, v57);
      ++*(v16 + 16);
      v25 = v49;
      v13 = v50;
    }

    v28 = v17;
    while (1)
    {
      v17 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v17 >= v23)
      {
        break;
      }

      v29 = v19[v17];
      ++v28;
      if (v29)
      {
        v27 = __clz(__rbit64(v29));
        v22 = (v29 - 1) & v29;
        goto LABEL_17;
      }
    }

    if ((v52 & 1) == 0)
    {

      v3 = v46;
      goto LABEL_36;
    }

    v44 = 1 << *(v13 + 32);
    v3 = v46;
    if (v44 >= 64)
    {
      bzero(v19, ((v44 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v19 = -1 << v44;
    }

    *(v13 + 16) = 0;
  }

LABEL_36:
  *v3 = v16;
  return result;
}

uint64_t sub_226338000(uint64_t a1, int a2)
{
  v3 = v2;
  v57 = sub_22634EEFC();
  v6 = *(v57 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v57);
  v56 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_22634F34C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v58 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v14 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793C98, &qword_226355660);
  v52 = a2;
  result = sub_226350A8C();
  v16 = result;
  if (*(v13 + 16))
  {
    v17 = 0;
    v18 = v10;
    v19 = (v13 + 64);
    v20 = 1 << *(v13 + 32);
    if (v20 < 64)
    {
      v21 = ~(-1 << v20);
    }

    else
    {
      v21 = -1;
    }

    v22 = v21 & *(v13 + 64);
    v23 = (v20 + 63) >> 6;
    v48 = (v18 + 16);
    v49 = v18;
    v46 = v3;
    v47 = v6 + 16;
    v50 = v13;
    v51 = v6;
    v53 = (v6 + 32);
    v54 = (v18 + 32);
    v24 = result + 64;
    v25 = v18;
    while (v22)
    {
      v27 = __clz(__rbit64(v22));
      v22 &= v22 - 1;
LABEL_17:
      v30 = v27 | (v17 << 6);
      v31 = *(v13 + 48);
      v55 = *(v25 + 72);
      v32 = v31 + v55 * v30;
      if (v52)
      {
        (*v54)(v58, v32, v9);
        v33 = *(v13 + 56);
        v34 = *(v51 + 72);
        (*(v51 + 32))(v56, v33 + v34 * v30, v57);
      }

      else
      {
        (*v48)(v58, v32, v9);
        v35 = *(v13 + 56);
        v34 = *(v51 + 72);
        (*(v51 + 16))(v56, v35 + v34 * v30, v57);
      }

      v36 = *(v16 + 40);
      sub_22633B828(&unk_27D793220, MEMORY[0x277D78638]);
      result = sub_22635040C();
      v37 = -1 << *(v16 + 32);
      v38 = result & ~v37;
      v39 = v38 >> 6;
      if (((-1 << v38) & ~*(v24 + 8 * (v38 >> 6))) == 0)
      {
        v40 = 0;
        v41 = (63 - v37) >> 6;
        while (++v39 != v41 || (v40 & 1) == 0)
        {
          v42 = v39 == v41;
          if (v39 == v41)
          {
            v39 = 0;
          }

          v40 |= v42;
          v43 = *(v24 + 8 * v39);
          if (v43 != -1)
          {
            v26 = __clz(__rbit64(~v43)) + (v39 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v26 = __clz(__rbit64((-1 << v38) & ~*(v24 + 8 * (v38 >> 6)))) | v38 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v24 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
      (*v54)((*(v16 + 48) + v55 * v26), v58, v9);
      result = (*v53)(*(v16 + 56) + v34 * v26, v56, v57);
      ++*(v16 + 16);
      v25 = v49;
      v13 = v50;
    }

    v28 = v17;
    while (1)
    {
      v17 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v17 >= v23)
      {
        break;
      }

      v29 = v19[v17];
      ++v28;
      if (v29)
      {
        v27 = __clz(__rbit64(v29));
        v22 = (v29 - 1) & v29;
        goto LABEL_17;
      }
    }

    if ((v52 & 1) == 0)
    {

      v3 = v46;
      goto LABEL_36;
    }

    v44 = 1 << *(v13 + 32);
    v3 = v46;
    if (v44 >= 64)
    {
      bzero(v19, ((v44 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v19 = -1 << v44;
    }

    *(v13 + 16) = 0;
  }

LABEL_36:
  *v3 = v16;
  return result;
}

uint64_t sub_2263384A8(uint64_t a1, int a2)
{
  v3 = v2;
  v57 = sub_22634FDDC();
  v6 = *(v57 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v57);
  v56 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_22634EEFC();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v58 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v14 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793828, &unk_226354330);
  v52 = a2;
  result = sub_226350A8C();
  v16 = result;
  if (*(v13 + 16))
  {
    v17 = 0;
    v18 = v10;
    v19 = (v13 + 64);
    v20 = 1 << *(v13 + 32);
    if (v20 < 64)
    {
      v21 = ~(-1 << v20);
    }

    else
    {
      v21 = -1;
    }

    v22 = v21 & *(v13 + 64);
    v23 = (v20 + 63) >> 6;
    v48 = (v18 + 16);
    v49 = v18;
    v46 = v3;
    v47 = v6 + 16;
    v50 = v13;
    v51 = v6;
    v53 = (v6 + 32);
    v54 = (v18 + 32);
    v24 = result + 64;
    v25 = v18;
    while (v22)
    {
      v27 = __clz(__rbit64(v22));
      v22 &= v22 - 1;
LABEL_17:
      v30 = v27 | (v17 << 6);
      v31 = *(v13 + 48);
      v55 = *(v25 + 72);
      v32 = v31 + v55 * v30;
      if (v52)
      {
        (*v54)(v58, v32, v9);
        v33 = *(v13 + 56);
        v34 = *(v51 + 72);
        (*(v51 + 32))(v56, v33 + v34 * v30, v57);
      }

      else
      {
        (*v48)(v58, v32, v9);
        v35 = *(v13 + 56);
        v34 = *(v51 + 72);
        (*(v51 + 16))(v56, v35 + v34 * v30, v57);
      }

      v36 = *(v16 + 40);
      sub_22633B828(&qword_28137FA50, MEMORY[0x277CC95F0]);
      result = sub_22635040C();
      v37 = -1 << *(v16 + 32);
      v38 = result & ~v37;
      v39 = v38 >> 6;
      if (((-1 << v38) & ~*(v24 + 8 * (v38 >> 6))) == 0)
      {
        v40 = 0;
        v41 = (63 - v37) >> 6;
        while (++v39 != v41 || (v40 & 1) == 0)
        {
          v42 = v39 == v41;
          if (v39 == v41)
          {
            v39 = 0;
          }

          v40 |= v42;
          v43 = *(v24 + 8 * v39);
          if (v43 != -1)
          {
            v26 = __clz(__rbit64(~v43)) + (v39 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v26 = __clz(__rbit64((-1 << v38) & ~*(v24 + 8 * (v38 >> 6)))) | v38 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v24 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
      (*v54)((*(v16 + 48) + v55 * v26), v58, v9);
      result = (*v53)(*(v16 + 56) + v34 * v26, v56, v57);
      ++*(v16 + 16);
      v25 = v49;
      v13 = v50;
    }

    v28 = v17;
    while (1)
    {
      v17 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v17 >= v23)
      {
        break;
      }

      v29 = v19[v17];
      ++v28;
      if (v29)
      {
        v27 = __clz(__rbit64(v29));
        v22 = (v29 - 1) & v29;
        goto LABEL_17;
      }
    }

    if ((v52 & 1) == 0)
    {

      v3 = v46;
      goto LABEL_36;
    }

    v44 = 1 << *(v13 + 32);
    v3 = v46;
    if (v44 >= 64)
    {
      bzero(v19, ((v44 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v19 = -1 << v44;
    }

    *(v13 + 16) = 0;
  }

LABEL_36:
  *v3 = v16;
  return result;
}

uint64_t sub_226338950(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D793C60, &qword_226355648);
  v38 = a2;
  result = sub_226350A8C();
  v8 = result;
  if (*(v5 + 16))
  {
    v36 = v3;
    v37 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(*(v5 + 56) + 8 * v21);
      if ((v38 & 1) == 0)
      {
        v26 = v22[1];
      }

      v27 = *(v8 + 40);
      sub_226350CEC();
      sub_2263504EC();
      result = sub_226350D0C();
      v28 = -1 << *(v8 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v15 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v15 + 8 * v30);
          if (v34 != -1)
          {
            v16 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v29) & ~*(v15 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
      v5 = v37;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_35;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero(v10, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_226338BF8(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = sub_22634EEFC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v12 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793C48, &qword_226355630);
  v43 = a2;
  result = sub_226350A8C();
  v14 = result;
  if (*(v11 + 16))
  {
    v47 = v10;
    v39 = v3;
    v15 = 0;
    v16 = (v11 + 64);
    v17 = 1 << *(v11 + 32);
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v19 = v18 & *(v11 + 64);
    v20 = (v17 + 63) >> 6;
    v40 = (v7 + 16);
    v41 = v11;
    v42 = v7;
    v44 = (v7 + 32);
    v21 = result + 64;
    while (v19)
    {
      v23 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
LABEL_17:
      v26 = v23 | (v15 << 6);
      v27 = *(v11 + 48);
      v46 = *(v42 + 72);
      v28 = v27 + v46 * v26;
      if (v43)
      {
        (*v44)(v47, v28, v6);
        v45 = *(*(v11 + 56) + 8 * v26);
      }

      else
      {
        (*v40)(v47, v28, v6);
        v45 = *(*(v11 + 56) + 8 * v26);
        swift_unknownObjectRetain();
      }

      v29 = *(v14 + 40);
      sub_22633B828(&qword_28137FA50, MEMORY[0x277CC95F0]);
      result = sub_22635040C();
      v30 = -1 << *(v14 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v21 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v21 + 8 * v32);
          if (v36 != -1)
          {
            v22 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v22 = __clz(__rbit64((-1 << v31) & ~*(v21 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v21 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      result = (*v44)(*(v14 + 48) + v46 * v22, v47, v6);
      *(*(v14 + 56) + 8 * v22) = v45;
      ++*(v14 + 16);
      v11 = v41;
    }

    v24 = v15;
    while (1)
    {
      v15 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v15 >= v20)
      {
        break;
      }

      v25 = v16[v15];
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v19 = (v25 - 1) & v25;
        goto LABEL_17;
      }
    }

    if ((v43 & 1) == 0)
    {

      v3 = v39;
      goto LABEL_36;
    }

    v37 = 1 << *(v11 + 32);
    v3 = v39;
    if (v37 >= 64)
    {
      bzero(v16, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v16 = -1 << v37;
    }

    *(v11 + 16) = 0;
  }

LABEL_36:
  *v3 = v14;
  return result;
}

uint64_t sub_226338FD4(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = sub_22634EEFC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v12 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793C50, &qword_226355638);
  v43 = a2;
  result = sub_226350A8C();
  v14 = result;
  if (*(v11 + 16))
  {
    v47 = v10;
    v39 = v3;
    v15 = 0;
    v16 = (v11 + 64);
    v17 = 1 << *(v11 + 32);
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v19 = v18 & *(v11 + 64);
    v20 = (v17 + 63) >> 6;
    v40 = (v7 + 16);
    v41 = v11;
    v42 = v7;
    v44 = (v7 + 32);
    v21 = result + 64;
    while (v19)
    {
      v23 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
LABEL_17:
      v26 = v23 | (v15 << 6);
      v27 = *(v11 + 48);
      v46 = *(v42 + 72);
      v28 = v27 + v46 * v26;
      if (v43)
      {
        (*v44)(v47, v28, v6);
        v45 = *(*(v11 + 56) + 8 * v26);
      }

      else
      {
        (*v40)(v47, v28, v6);
        v45 = *(*(v11 + 56) + 8 * v26);
      }

      v29 = *(v14 + 40);
      sub_22633B828(&qword_28137FA50, MEMORY[0x277CC95F0]);
      result = sub_22635040C();
      v30 = -1 << *(v14 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v21 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v21 + 8 * v32);
          if (v36 != -1)
          {
            v22 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v22 = __clz(__rbit64((-1 << v31) & ~*(v21 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v21 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      result = (*v44)(*(v14 + 48) + v46 * v22, v47, v6);
      *(*(v14 + 56) + 8 * v22) = v45;
      ++*(v14 + 16);
      v11 = v41;
    }

    v24 = v15;
    while (1)
    {
      v15 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v15 >= v20)
      {
        break;
      }

      v25 = v16[v15];
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v19 = (v25 - 1) & v25;
        goto LABEL_17;
      }
    }

    if ((v43 & 1) == 0)
    {

      v3 = v39;
      goto LABEL_36;
    }

    v37 = 1 << *(v11 + 32);
    v3 = v39;
    if (v37 >= 64)
    {
      bzero(v16, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v16 = -1 << v37;
    }

    *(v11 + 16) = 0;
  }

LABEL_36:
  *v3 = v14;
  return result;
}

unint64_t sub_2263393B0(unsigned __int8 a1)
{
  v3 = *(v1 + 40);
  sub_226350CEC();
  MEMORY[0x22AA7CDB0](a1);
  v4 = sub_226350D0C();

  return sub_226339754(a1, v4);
}

unint64_t sub_22633941C(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_226350CEC();
  sub_2263504EC();
  v6 = sub_226350D0C();

  return sub_2263397C4(a1, a2, v6);
}

unint64_t sub_226339494(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  v5 = sub_2263508FC();

  return sub_22633987C(a1, v5);
}

unint64_t sub_2263394D8(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  sub_22634EEFC();
  v5 = MEMORY[0x277CC95F0];
  sub_22633B828(&qword_28137FA50, MEMORY[0x277CC95F0]);
  v6 = sub_22635040C();
  return sub_226339944(a1, v6, MEMORY[0x277CC95F0], &qword_28137FA40, v5, MEMORY[0x277CC9610]);
}

unint64_t sub_2263395AC(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  sub_22634F34C();
  v5 = MEMORY[0x277D78638];
  sub_22633B828(&unk_27D793220, MEMORY[0x277D78638]);
  v6 = sub_22635040C();
  return sub_226339944(a1, v6, MEMORY[0x277D78638], &qword_27D793C40, v5, MEMORY[0x277D78648]);
}

unint64_t sub_226339680(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  sub_22634F0EC();
  v5 = MEMORY[0x277D78248];
  sub_22633B828(&qword_27D793C78, MEMORY[0x277D78248]);
  v6 = sub_22635040C();
  return sub_226339944(a1, v6, MEMORY[0x277D78248], &unk_27D793C80, v5, MEMORY[0x277D78258]);
}

unint64_t sub_226339754(unsigned __int8 a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_2263397C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_226350C4C())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_22633987C(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_22633B7CC(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x22AA7C9C0](v9, a1);
      sub_226315840(v9);
      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_226339944(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, void (*a5)(uint64_t), uint64_t a6)
{
  v25 = a5;
  v26 = a6;
  v24 = a4;
  v22[1] = a1;
  v8 = a3(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = v22 - v11;
  v23 = v6;
  v13 = -1 << *(v6 + 32);
  v14 = a2 & ~v13;
  v22[0] = v6 + 64;
  if ((*(v6 + 64 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v15 = ~v13;
    v18 = *(v9 + 16);
    v17 = v9 + 16;
    v16 = v18;
    v19 = *(v17 + 56);
    do
    {
      v16(v12, *(v23 + 48) + v19 * v14, v8);
      sub_22633B828(v24, v25);
      v20 = sub_22635044C();
      (*(v17 - 8))(v12, v8);
      if (v20)
      {
        break;
      }

      v14 = (v14 + 1) & v15;
    }

    while (((*(v22[0] + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) != 0);
  }

  return v14;
}

void *sub_226339AE4()
{
  v1 = v0;
  v2 = type metadata accessor for Analytics.Interval(0);
  v28 = *(v2 - 8);
  v3 = *(v28 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v27 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793C90, &qword_226355658);
  v5 = *v0;
  v6 = sub_226350A7C();
  v7 = v6;
  if (*(v5 + 16))
  {
    v26 = v1;
    result = (v6 + 64);
    v9 = v5 + 64;
    v10 = ((1 << *(v7 + 32)) + 63) >> 6;
    if (v7 != v5 || result >= v9 + 8 * v10)
    {
      result = memmove(result, (v5 + 64), 8 * v10);
    }

    v11 = 0;
    v12 = *(v5 + 16);
    v29 = v7;
    *(v7 + 16) = v12;
    v13 = 1 << *(v5 + 32);
    v14 = *(v5 + 64);
    v15 = -1;
    if (v13 < 64)
    {
      v15 = ~(-1 << v13);
    }

    v16 = v15 & v14;
    v17 = (v13 + 63) >> 6;
    if ((v15 & v14) != 0)
    {
      do
      {
        v18 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
LABEL_14:
        v21 = v18 | (v11 << 6);
        v22 = *(*(v5 + 48) + v21);
        v23 = v27;
        v24 = *(v28 + 72) * v21;
        sub_22633B870(*(v5 + 56) + v24, v27, type metadata accessor for Analytics.Interval);
        v25 = v29;
        *(*(v29 + 48) + v21) = v22;
        result = sub_22633B8D8(v23, *(v25 + 56) + v24, type metadata accessor for Analytics.Interval);
      }

      while (v16);
    }

    v19 = v11;
    while (1)
    {
      v11 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v11 >= v17)
      {

        v1 = v26;
        v7 = v29;
        goto LABEL_18;
      }

      v20 = *(v9 + 8 * v11);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v7;
  }

  return result;
}

char *sub_226339D1C()
{
  v1 = v0;
  v36 = sub_22634FF9C();
  v38 = *(v36 - 8);
  v2 = *(v38 + 64);
  MEMORY[0x28223BE20](v36);
  v35 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793C58, &qword_226355640);
  v4 = *v0;
  v5 = sub_226350A7C();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = (v4 + 64);
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    v31 = v1;
    v32 = v4 + 64;
    if (v6 != v4 || result >= &v8[8 * v9])
    {
      result = memmove(result, v8, 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v37 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v4 + 64);
    v15 = (v12 + 63) >> 6;
    v33 = v38 + 32;
    v34 = v38 + 16;
    if (v14)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v39 = (v14 - 1) & v14;
LABEL_14:
        v19 = v16 | (v10 << 6);
        v20 = 16 * v19;
        v21 = (*(v4 + 48) + 16 * v19);
        v22 = *v21;
        v23 = v21[1];
        v24 = v38;
        v25 = *(v38 + 72) * v19;
        v26 = v35;
        v27 = v36;
        (*(v38 + 16))(v35, *(v4 + 56) + v25, v36);
        v28 = v37;
        v29 = (*(v37 + 48) + v20);
        *v29 = v22;
        v29[1] = v23;
        (*(v24 + 32))(*(v28 + 56) + v25, v26, v27);

        v14 = v39;
      }

      while (v39);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {

        v1 = v31;
        v6 = v37;
        goto LABEL_18;
      }

      v18 = *(v32 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v39 = (v18 - 1) & v18;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }

  return result;
}

void *sub_226339F9C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793848, &unk_226355680);
  v2 = *v0;
  v3 = sub_226350A7C();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = *(*(v2 + 56) + 8 * v17);
        v22 = (*(v4 + 48) + 16 * v17);
        *v22 = v20;
        v22[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v21;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}