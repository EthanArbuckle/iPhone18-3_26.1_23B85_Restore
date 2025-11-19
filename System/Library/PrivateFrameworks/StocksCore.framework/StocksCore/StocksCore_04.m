uint64_t storeEnumTagSinglePayload for ChartRange(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 10 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 10) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF6)
  {
    v4 = 0;
  }

  if (a2 > 0xF5)
  {
    v5 = ((a2 - 246) >> 8) + 1;
    *result = a2 + 10;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 10;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_1DAA9C550()
{
  v5 = *v0;
  sub_1DAA581BC(0, &qword_1ECBE99C8, sub_1DAA9CB70, MEMORY[0x1E69D6B18]);
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  swift_allocObject();
  return sub_1DACB8B44();
}

uint64_t getEnumTagSinglePayload for ChartRange(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF6)
  {
    goto LABEL_17;
  }

  if (a2 + 10 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 10) >> 8 < 0xFF)
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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 10;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 10;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 10;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xB;
  v8 = v6 - 11;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_1DAA9C670@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DAA485B8(0, &unk_1EE1253C0, &protocolRef_FCJSONRecordSourceType);
  if (qword_1EE123758 != -1)
  {
    swift_once();
  }

  result = sub_1DACB8224();
  if (result)
  {
    v6 = result;
    v7 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_1DAA44440(0, qword_1EE125E60);
    result = sub_1DACB8254();
    if (v11)
    {
      v8 = type metadata accessor for StockEntityService();
      v9 = swift_allocObject();
      *(v9 + 16) = v6;
      result = sub_1DAA4D460(&v10, v9 + 24);
      a2[3] = v8;
      a2[4] = &off_1F5686DC0;
      *a2 = v9;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1DAA9C7C0(void *a1, void *a2, uint64_t *a3, uint64_t *a4)
{
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DAA485B8(0, &qword_1EE125488, &protocolRef_FCContentContext);
  result = sub_1DACB8244();
  if (result)
  {
    v10 = result;
    v11 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_1DAA420F4(0, &unk_1EE125358, 0x1E69B5378);
    if (*a2 != -1)
    {
      swift_once();
    }

    v12 = *a3;
    v13 = *a4;
    result = sub_1DACB8224();
    if (result)
    {
      v14 = result;
      v15 = [v10 recordSourceWithSchema_];
      swift_unknownObjectRelease();

      return v15;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_1DAA9C930(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  sub_1DAA49A38(0, &qword_1EE125280, MEMORY[0x1E6969530]);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[15];
LABEL_7:
    v14 = *(v10 + 56);

    v14(a1 + v11, a2, a2, v9);
    return;
  }

  sub_1DAA49A38(0, &qword_1EE1263D0, MEMORY[0x1E6968FB0]);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[18];
    goto LABEL_7;
  }

  sub_1DAA49A38(0, &qword_1EE1239E8, MEMORY[0x1E6969BC0]);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a4[20];
    goto LABEL_7;
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[26]) = (a2 - 1);
  }

  else
  {
    v15 = sub_1DACB7CC4();
    v16 = *(*(v15 - 8) + 56);
    v17 = a1 + a4[28];

    v16(v17, a2, a2, v15);
  }
}

void sub_1DAA9CB70()
{
  if (!qword_1EE11FC60)
  {
    sub_1DAA614EC(255, &qword_1EE123EA0, MEMORY[0x1E69E62F8]);
    v0 = sub_1DACB91A4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE11FC60);
    }
  }
}

_OWORD *sub_1DAA9CBF4()
{
  sub_1DAAA12F0(0, &qword_1EE123B50, MEMORY[0x1E69E6F90]);
  v1 = swift_allocObject();
  v2 = v0[4];
  v17 = v0[5];
  v3 = v17;
  v18 = v2;
  v1[1] = xmmword_1DACD6260;
  v1[2] = v2;
  v5 = v0[7];
  v16 = v0[6];
  v4 = v16;
  v1[3] = v3;
  v1[4] = v4;
  v7 = v0[9];
  v14 = v0[8];
  v6 = v14;
  v15 = v5;
  v1[5] = v5;
  v1[6] = v6;
  v8 = v0[9];
  v12 = v0[10];
  v9 = v12;
  v13 = v7;
  v1[7] = v8;
  v1[8] = v9;
  sub_1DAAA1344(&v18, v11);
  sub_1DAAA1344(&v17, v11);
  sub_1DAAA1344(&v16, v11);
  sub_1DAAA1344(&v15, v11);
  sub_1DAAA1344(&v14, v11);
  sub_1DAAA1344(&v13, v11);
  sub_1DAAA1344(&v12, v11);
  return v1;
}

uint64_t sub_1DAA9CCDC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v448 = a3;
  v445 = a2;
  v442 = a1;
  v385 = a4;
  v4 = MEMORY[0x1E69E6720];
  sub_1DAA7BD0C(0, &qword_1EE1239E8, MEMORY[0x1E6969BC0], MEMORY[0x1E69E6720]);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v5 - 8);
  v383 = &v363 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v384 = &v363 - v9;
  v434 = MEMORY[0x1E6969530];
  sub_1DAA7BD0C(0, &qword_1EE125280, MEMORY[0x1E6969530], v4);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x1EEE9AC00](v10 - 8);
  v380 = &v363 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v381 = &v363 - v15;
  v16 = MEMORY[0x1EEE9AC00](v14);
  v402 = &v363 - v17;
  v18 = MEMORY[0x1EEE9AC00](v16);
  v401 = &v363 - v19;
  v20 = MEMORY[0x1EEE9AC00](v18);
  v441 = &v363 - v21;
  MEMORY[0x1EEE9AC00](v20);
  v398 = &v363 - v22;
  sub_1DAA7BD0C(0, qword_1EE123840, type metadata accessor for QuoteDetail, v4);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x1EEE9AC00](v23 - 8);
  v382 = &v363 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x1EEE9AC00](v25);
  v375 = &v363 - v28;
  v29 = MEMORY[0x1EEE9AC00](v27);
  v364 = &v363 - v30;
  v31 = MEMORY[0x1EEE9AC00](v29);
  v378 = &v363 - v32;
  v33 = MEMORY[0x1EEE9AC00](v31);
  v411 = &v363 - v34;
  v35 = MEMORY[0x1EEE9AC00](v33);
  v410 = &v363 - v36;
  v37 = MEMORY[0x1EEE9AC00](v35);
  v386 = &v363 - v38;
  v39 = MEMORY[0x1EEE9AC00](v37);
  v409 = &v363 - v40;
  v41 = MEMORY[0x1EEE9AC00](v39);
  v408 = &v363 - v42;
  v43 = MEMORY[0x1EEE9AC00](v41);
  v374 = &v363 - v44;
  v45 = MEMORY[0x1EEE9AC00](v43);
  v407 = &v363 - v46;
  v47 = MEMORY[0x1EEE9AC00](v45);
  v373 = &v363 - v48;
  v49 = MEMORY[0x1EEE9AC00](v47);
  v406 = &v363 - v50;
  v51 = MEMORY[0x1EEE9AC00](v49);
  v372 = &v363 - v52;
  v53 = MEMORY[0x1EEE9AC00](v51);
  v404 = &v363 - v54;
  v55 = MEMORY[0x1EEE9AC00](v53);
  v371 = &v363 - v56;
  v57 = MEMORY[0x1EEE9AC00](v55);
  v403 = &v363 - v58;
  v59 = MEMORY[0x1EEE9AC00](v57);
  v370 = &v363 - v60;
  v61 = MEMORY[0x1EEE9AC00](v59);
  v400 = &v363 - v62;
  v63 = MEMORY[0x1EEE9AC00](v61);
  v369 = &v363 - v64;
  v65 = MEMORY[0x1EEE9AC00](v63);
  v368 = &v363 - v66;
  v67 = MEMORY[0x1EEE9AC00](v65);
  v367 = &v363 - v68;
  v69 = MEMORY[0x1EEE9AC00](v67);
  v366 = &v363 - v70;
  MEMORY[0x1EEE9AC00](v69);
  v365 = &v363 - v71;
  v444 = type metadata accessor for Quote;
  sub_1DAA7BD0C(0, qword_1EE120250, type metadata accessor for Quote, v4);
  v73 = *(*(v72 - 8) + 64);
  v74 = MEMORY[0x1EEE9AC00](v72 - 8);
  v379 = &v363 - ((v75 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = MEMORY[0x1EEE9AC00](v74);
  v377 = &v363 - v77;
  v78 = MEMORY[0x1EEE9AC00](v76);
  v397 = &v363 - v79;
  v80 = MEMORY[0x1EEE9AC00](v78);
  v396 = &v363 - v81;
  v82 = MEMORY[0x1EEE9AC00](v80);
  v395 = &v363 - v83;
  v84 = MEMORY[0x1EEE9AC00](v82);
  v394 = &v363 - v85;
  v86 = MEMORY[0x1EEE9AC00](v84);
  v392 = &v363 - v87;
  v88 = MEMORY[0x1EEE9AC00](v86);
  v391 = &v363 - v89;
  v90 = MEMORY[0x1EEE9AC00](v88);
  v389 = &v363 - v91;
  MEMORY[0x1EEE9AC00](v90);
  v388 = &v363 - v92;
  v93 = MEMORY[0x1E695A360];
  sub_1DAA7BD0C(0, &qword_1EE11F180, MEMORY[0x1E695A360], v4);
  v95 = *(*(v94 - 8) + 64);
  v96 = MEMORY[0x1EEE9AC00](v94 - 8);
  v412 = &v363 - ((v97 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = MEMORY[0x1EEE9AC00](v96);
  v417 = &v363 - v99;
  v100 = MEMORY[0x1EEE9AC00](v98);
  v405 = &v363 - v101;
  v102 = MEMORY[0x1EEE9AC00](v100);
  v416 = &v363 - v103;
  v104 = MEMORY[0x1EEE9AC00](v102);
  v415 = &v363 - v105;
  v106 = MEMORY[0x1EEE9AC00](v104);
  v399 = &v363 - v107;
  v108 = MEMORY[0x1EEE9AC00](v106);
  v414 = &v363 - v109;
  v110 = MEMORY[0x1EEE9AC00](v108);
  v393 = &v363 - v111;
  v112 = MEMORY[0x1EEE9AC00](v110);
  v443 = &v363 - v113;
  v114 = MEMORY[0x1EEE9AC00](v112);
  v390 = &v363 - v115;
  v116 = MEMORY[0x1EEE9AC00](v114);
  v447 = &v363 - v117;
  MEMORY[0x1EEE9AC00](v116);
  v413 = &v363 - v118;
  v387 = type metadata accessor for SymbolEntity;
  sub_1DAA7BD0C(0, qword_1EE11EF28, type metadata accessor for SymbolEntity, v4);
  v120 = *(*(v119 - 8) + 64);
  v121 = MEMORY[0x1EEE9AC00](v119 - 8);
  v419 = (&v363 - ((v122 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v121);
  v418 = &v363 - v123;
  v124 = sub_1DACB78E4();
  v125 = *(v124 - 8);
  v126 = *(v125 + 64);
  MEMORY[0x1EEE9AC00](v124);
  v128 = &v363 - ((v127 + 15) & 0xFFFFFFFFFFFFFFF0);
  v129 = sub_1DACB7E44();
  v130 = *(*(v129 - 8) + 64);
  MEMORY[0x1EEE9AC00](v129 - 8);
  v131 = sub_1DACB92E4();
  v132 = *(*(v131 - 8) + 64);
  MEMORY[0x1EEE9AC00](v131 - 8);
  v133 = sub_1DACB7904();
  v134 = *(*(v133 - 8) + 64);
  MEMORY[0x1EEE9AC00](v133 - 8);
  sub_1DAAA113C(0, &qword_1EE11F1E0, qword_1EE11EF28, type metadata accessor for SymbolEntity, sub_1DAAA11C4);
  sub_1DACB9284();
  sub_1DACB7DF4();
  v135 = *MEMORY[0x1E6968DF0];
  v136 = *(v125 + 104);
  v136(v128, v135, v124);
  sub_1DACB7914();
  sub_1DAAA15D8(&unk_1EE11EF70, type metadata accessor for SymbolEntity);
  v440 = sub_1DACB6F04();
  sub_1DAAA113C(0, &qword_1EE11F1D8, &qword_1EE11F180, v93, sub_1DAAA16DC);
  v138 = v137;
  sub_1DACB9284();
  sub_1DACB7DF4();
  v136(v128, v135, v124);
  sub_1DACB7914();
  v439 = sub_1DACB6F14();
  sub_1DACB9284();
  sub_1DACB7DF4();
  v136(v128, v135, v124);
  sub_1DACB7914();
  v438 = sub_1DACB6F14();
  sub_1DACB9284();
  sub_1DACB7DF4();
  v136(v128, v135, v124);
  sub_1DACB7914();
  v437 = sub_1DACB6F14();
  sub_1DACB9284();
  sub_1DACB7DF4();
  v136(v128, v135, v124);
  sub_1DACB7914();
  v446 = v138;
  v436 = sub_1DACB6F14();
  sub_1DACB9284();
  sub_1DACB7DF4();
  v136(v128, v135, v124);
  sub_1DACB7914();
  v435 = sub_1DACB6F14();
  sub_1DAAA113C(0, &unk_1EE11F1E8, &qword_1EE125280, v434, sub_1DAAA1870);
  v140 = v139;
  sub_1DACB9284();
  sub_1DACB7DF4();
  v136(v128, v135, v124);
  sub_1DACB7914();
  v434 = sub_1DACB6F24();
  sub_1DACB9284();
  sub_1DACB7DF4();
  v136(v128, v135, v124);
  sub_1DACB7914();
  v420 = v140;
  v433 = sub_1DACB6F24();
  sub_1DACB9284();
  sub_1DACB7DF4();
  v136(v128, v135, v124);
  sub_1DACB7914();
  v432 = sub_1DACB6F24();
  sub_1DACB9284();
  sub_1DACB7DF4();
  v136(v128, v135, v124);
  sub_1DACB7914();
  v431 = sub_1DACB6F14();
  sub_1DACB9284();
  sub_1DACB7DF4();
  v136(v128, v135, v124);
  sub_1DACB7914();
  v430 = sub_1DACB6F14();
  sub_1DACB9284();
  sub_1DACB7DF4();
  v136(v128, v135, v124);
  sub_1DACB7914();
  v429 = sub_1DACB6F14();
  sub_1DACB9284();
  sub_1DACB7DF4();
  v136(v128, v135, v124);
  sub_1DACB7914();
  v428 = sub_1DACB6F14();
  sub_1DACB9284();
  sub_1DACB7DF4();
  v136(v128, v135, v124);
  sub_1DACB7914();
  v427 = sub_1DACB6F14();
  sub_1DAAA1AEC();
  sub_1DACB9284();
  sub_1DACB7DF4();
  v136(v128, v135, v124);
  sub_1DACB7914();
  v426 = sub_1DACB6F44();
  sub_1DAAA2198();
  sub_1DACB9284();
  sub_1DACB7DF4();
  v136(v128, v135, v124);
  sub_1DACB7914();
  v425 = sub_1DACB6F54();
  sub_1DACB9284();
  sub_1DACB7DF4();
  v136(v128, v135, v124);
  sub_1DACB7914();
  v424 = sub_1DACB6F54();
  sub_1DACB9284();
  sub_1DACB7DF4();
  v136(v128, v135, v124);
  sub_1DACB7914();
  v423 = sub_1DACB6F44();
  sub_1DACB9284();
  sub_1DACB7DF4();
  v136(v128, v135, v124);
  sub_1DACB7914();
  v422 = sub_1DACB6F44();
  sub_1DACB9284();
  sub_1DACB7DF4();
  v136(v128, v135, v124);
  sub_1DACB7914();
  v421 = sub_1DACB6F14();
  sub_1DACB9284();
  sub_1DACB7DF4();
  v136(v128, v135, v124);
  sub_1DACB7914();
  v420 = sub_1DACB6F24();
  sub_1DAAA2870();
  sub_1DACB9284();
  sub_1DACB7DF4();
  v136(v128, v135, v124);
  v141 = v445;
  sub_1DACB7914();
  v376 = sub_1DACB6F34();
  v142 = v418;
  sub_1DAAA2C80(v442, v418);
  v143 = type metadata accessor for SymbolEntity();
  (*(*(v143 - 8) + 56))(v142, 0, 1, v143);
  v144 = v387;
  sub_1DAAA2D3C(v142, v419, qword_1EE11EF28, v387);
  sub_1DACB6EE4();
  v145 = v388;
  sub_1DAAA2DBC(v142, qword_1EE11EF28, v144);
  v146 = v141;
  sub_1DAAA2D3C(v141, v145, qword_1EE120250, v444);
  v147 = type metadata accessor for Quote();
  v148 = *(v147 - 1);
  v149 = *(v148 + 48);
  v150 = v148 + 48;
  v444 = v147;
  v151 = v149;
  if ((v149)(v145, 1) == 1)
  {
    sub_1DAAA2DBC(v145, qword_1EE120250, type metadata accessor for Quote);
    v152 = 1;
    v153 = v390;
    goto LABEL_9;
  }

  v154 = *v145;
  v155 = *(v145 + 8);
  sub_1DAA88E38(v145, type metadata accessor for Quote);
  v153 = v390;
  if ((v155 & 1) == 0)
  {
    v156 = v365;
    sub_1DAAA2D3C(v448, v365, qword_1EE123840, type metadata accessor for QuoteDetail);
    v157 = type metadata accessor for QuoteDetail();
    if ((*(*(v157 - 8) + 48))(v156, 1, v157) == 1)
    {
      sub_1DAAA2DBC(v156, qword_1EE123840, type metadata accessor for QuoteDetail);
    }

    else
    {
      v158 = (v156 + *(v157 + 68));
      v159 = *v158;
      v160 = v158[1];
      sub_1DACB71E4();
      v161 = sub_1DAA88E38(v156, type metadata accessor for QuoteDetail);
      if (v160)
      {
        MEMORY[0x1E12775A0](v161, v154);
        sub_1DACB7124();
        v152 = 0;
        goto LABEL_9;
      }
    }
  }

  v152 = 1;
LABEL_9:
  v162 = sub_1DACB7134();
  v163 = *(v162 - 8);
  v164 = *(v163 + 56);
  v165 = v413;
  v446 = v163 + 56;
  v166 = v164;
  v164(v413, v152, 1, v162);
  v167 = MEMORY[0x1E695A360];
  sub_1DAAA2D3C(v165, v447, &qword_1EE11F180, MEMORY[0x1E695A360]);
  sub_1DACB6EE4();
  sub_1DAAA2DBC(v165, &qword_1EE11F180, v167);
  v168 = v389;
  sub_1DAAA2D3C(v146, v389, qword_1EE120250, type metadata accessor for Quote);
  v169 = v150;
  if (v151(v168, 1, v444) == 1)
  {
    sub_1DAAA2DBC(v168, qword_1EE120250, type metadata accessor for Quote);
    v170 = 1;
    v171 = v146;
    v172 = v151;
LABEL_15:
    v177 = v444;
    goto LABEL_16;
  }

  v173 = *(v168 + 16);
  v174 = *(v168 + 24);
  sub_1DAA88E38(v168, type metadata accessor for Quote);
  v171 = v146;
  if (v174)
  {
    v170 = 1;
    v172 = v151;
    goto LABEL_15;
  }

  v175 = v366;
  sub_1DAAA2D3C(v448, v366, qword_1EE123840, type metadata accessor for QuoteDetail);
  v176 = type metadata accessor for QuoteDetail();
  v172 = v151;
  if ((*(*(v176 - 8) + 48))(v175, 1, v176) == 1)
  {
    sub_1DAAA2DBC(v175, qword_1EE123840, type metadata accessor for QuoteDetail);
    v170 = 1;
    goto LABEL_15;
  }

  v197 = (v175 + *(v176 + 68));
  v198 = *v197;
  v199 = v197[1];
  sub_1DACB71E4();
  v200 = sub_1DAA88E38(v175, type metadata accessor for QuoteDetail);
  v177 = v444;
  if (v199)
  {
    MEMORY[0x1E12775A0](v200, v173);
    sub_1DACB7124();
    v170 = 0;
  }

  else
  {
    v170 = 1;
  }

LABEL_16:
  v166(v153, v170, 1, v162);
  v178 = MEMORY[0x1E695A360];
  sub_1DAAA2D3C(v153, v447, &qword_1EE11F180, MEMORY[0x1E695A360]);
  sub_1DACB6EE4();
  sub_1DAAA2DBC(v153, &qword_1EE11F180, v178);
  v179 = v391;
  sub_1DAAA2D3C(v171, v391, qword_1EE120250, type metadata accessor for Quote);
  if (v172(v179, 1, v177) == 1)
  {
    v180 = qword_1EE120250;
    v181 = type metadata accessor for Quote;
    v182 = v179;
LABEL_18:
    sub_1DAAA2DBC(v182, v180, v181);
LABEL_20:
    v185 = 1;
    goto LABEL_21;
  }

  v183 = *(v179 + 32);
  v184 = *(v179 + 40);
  sub_1DAA88E38(v179, type metadata accessor for Quote);
  if (v184)
  {
    goto LABEL_20;
  }

  v195 = v367;
  sub_1DAAA2D3C(v448, v367, qword_1EE123840, type metadata accessor for QuoteDetail);
  v196 = type metadata accessor for QuoteDetail();
  if ((*(*(v196 - 8) + 48))(v195, 1, v196) == 1)
  {
    v180 = qword_1EE123840;
    v181 = type metadata accessor for QuoteDetail;
    v182 = v195;
    goto LABEL_18;
  }

  v355 = (v195 + *(v196 + 68));
  v356 = *v355;
  v357 = v355[1];
  sub_1DACB71E4();
  v358 = sub_1DAA88E38(v195, type metadata accessor for QuoteDetail);
  if (!v357)
  {
    goto LABEL_20;
  }

  MEMORY[0x1E12775A0](v358, v183);
  sub_1DACB7124();
  v185 = 0;
LABEL_21:
  v186 = v443;
  v166(v443, v185, 1, v162);
  v187 = MEMORY[0x1E695A360];
  sub_1DAAA2D3C(v186, v447, &qword_1EE11F180, MEMORY[0x1E695A360]);
  sub_1DACB6EE4();
  sub_1DAAA2DBC(v186, &qword_1EE11F180, v187);
  v188 = v392;
  sub_1DAAA2D3C(v171, v392, qword_1EE120250, type metadata accessor for Quote);
  if (v172(v188, 1, v177) == 1)
  {
    sub_1DAAA2DBC(v188, qword_1EE120250, type metadata accessor for Quote);
    v189 = 1;
    v190 = v393;
    goto LABEL_33;
  }

  v191 = *(v188 + 48);
  v192 = *(v188 + 56);
  sub_1DAA88E38(v188, type metadata accessor for Quote);
  v190 = v393;
  if ((v192 & 1) == 0)
  {
    v193 = v368;
    sub_1DAAA2D3C(v448, v368, qword_1EE123840, type metadata accessor for QuoteDetail);
    v194 = type metadata accessor for QuoteDetail();
    if ((*(*(v194 - 8) + 48))(v193, 1, v194) == 1)
    {
      sub_1DAAA2DBC(v193, qword_1EE123840, type metadata accessor for QuoteDetail);
    }

    else
    {
      v201 = (v193 + *(v194 + 68));
      v202 = *v201;
      v203 = v201[1];
      sub_1DACB71E4();
      v204 = sub_1DAA88E38(v193, type metadata accessor for QuoteDetail);
      if (v203)
      {
        MEMORY[0x1E12775A0](v204, v191);
        sub_1DACB7124();
        v189 = 0;
        goto LABEL_33;
      }
    }
  }

  v189 = 1;
LABEL_33:
  v166(v190, v189, 1, v162);
  v205 = MEMORY[0x1E695A360];
  sub_1DAAA2D3C(v190, v447, &qword_1EE11F180, MEMORY[0x1E695A360]);
  sub_1DACB6EE4();
  sub_1DAAA2DBC(v190, &qword_1EE11F180, v205);
  v206 = v394;
  sub_1DAAA2D3C(v171, v394, qword_1EE120250, type metadata accessor for Quote);
  if (v172(v206, 1, v177) == 1)
  {
    v207 = qword_1EE120250;
    v208 = type metadata accessor for Quote;
    v209 = v206;
LABEL_35:
    sub_1DAAA2DBC(v209, v207, v208);
    goto LABEL_37;
  }

  v210 = *(v206 + 64);
  v211 = *(v206 + 72);
  sub_1DAA88E38(v206, type metadata accessor for Quote);
  if (v211)
  {
    goto LABEL_37;
  }

  v250 = v369;
  sub_1DAAA2D3C(v448, v369, qword_1EE123840, type metadata accessor for QuoteDetail);
  v251 = type metadata accessor for QuoteDetail();
  if ((*(*(v251 - 8) + 48))(v250, 1, v251) == 1)
  {
    v207 = qword_1EE123840;
    v208 = type metadata accessor for QuoteDetail;
    v209 = v250;
    goto LABEL_35;
  }

  v359 = (v250 + *(v251 + 68));
  v360 = *v359;
  v361 = v359[1];
  sub_1DACB71E4();
  v362 = sub_1DAA88E38(v250, type metadata accessor for QuoteDetail);
  if (v361)
  {
    MEMORY[0x1E12775A0](v362, v210);
    sub_1DACB7124();
    v212 = 0;
    goto LABEL_38;
  }

LABEL_37:
  v212 = 1;
LABEL_38:
  v213 = v414;
  v443 = v162;
  v166(v414, v212, 1, v162);
  v214 = MEMORY[0x1E695A360];
  sub_1DAAA2D3C(v213, v447, &qword_1EE11F180, MEMORY[0x1E695A360]);
  sub_1DACB6EE4();
  sub_1DAAA2DBC(v213, &qword_1EE11F180, v214);
  v215 = v395;
  sub_1DAAA2D3C(v171, v395, qword_1EE120250, type metadata accessor for Quote);
  v216 = v166;
  if (v172(v215, 1, v177) == 1)
  {
    sub_1DAAA2DBC(v215, qword_1EE120250, type metadata accessor for Quote);
    v217 = sub_1DACB7CC4();
    v218 = v398;
    (*(*(v217 - 8) + 56))(v398, 1, 1, v217);
  }

  else
  {
    v218 = v398;
    sub_1DAAA2D3C(v215 + v177[13], v398, &qword_1EE125280, MEMORY[0x1E6969530]);
    sub_1DAA88E38(v215, type metadata accessor for Quote);
  }

  v219 = v441;
  v220 = MEMORY[0x1E6969530];
  sub_1DAAA2D3C(v218, v441, &qword_1EE125280, MEMORY[0x1E6969530]);
  sub_1DACB6EE4();
  sub_1DAAA2DBC(v218, &qword_1EE125280, v220);
  v221 = v396;
  sub_1DAAA2D3C(v171, v396, qword_1EE120250, type metadata accessor for Quote);
  if (v172(v221, 1, v177) == 1)
  {
    sub_1DAAA2DBC(v221, qword_1EE120250, type metadata accessor for Quote);
    v222 = sub_1DACB7CC4();
    v223 = v401;
    (*(*(v222 - 8) + 56))(v401, 1, 1, v222);
  }

  else
  {
    v223 = v401;
    sub_1DAAA2D3C(v221 + v177[14], v401, &qword_1EE125280, MEMORY[0x1E6969530]);
    sub_1DAA88E38(v221, type metadata accessor for Quote);
  }

  v224 = MEMORY[0x1E6969530];
  sub_1DAAA2D3C(v223, v219, &qword_1EE125280, MEMORY[0x1E6969530]);
  sub_1DACB6EE4();
  sub_1DAAA2DBC(v223, &qword_1EE125280, v224);
  v225 = v397;
  sub_1DAAA2D3C(v171, v397, qword_1EE120250, type metadata accessor for Quote);
  v226 = v172(v225, 1, v177);
  v419 = v172;
  if (v226 == 1)
  {
    sub_1DAAA2DBC(v225, qword_1EE120250, type metadata accessor for Quote);
    v227 = sub_1DACB7CC4();
    v228 = v402;
    (*(*(v227 - 8) + 56))(v402, 1, 1, v227);
  }

  else
  {
    v228 = v402;
    sub_1DAAA2D3C(v225 + v177[15], v402, &qword_1EE125280, MEMORY[0x1E6969530]);
    sub_1DAA88E38(v225, type metadata accessor for Quote);
  }

  v229 = v399;
  v230 = MEMORY[0x1E6969530];
  sub_1DAAA2D3C(v228, v219, &qword_1EE125280, MEMORY[0x1E6969530]);
  sub_1DACB6EE4();
  sub_1DAAA2DBC(v228, &qword_1EE125280, v230);
  v231 = v400;
  sub_1DAAA2D3C(v448, v400, qword_1EE123840, type metadata accessor for QuoteDetail);
  v232 = type metadata accessor for QuoteDetail();
  v233 = *(*(v232 - 1) + 48);
  if (v233(v231, 1, v232) == 1)
  {
    goto LABEL_48;
  }

  v234 = *v231;
  v235 = *(v231 + 8);
  sub_1DAA88E38(v231, type metadata accessor for QuoteDetail);
  if (v235)
  {
    goto LABEL_50;
  }

  v231 = v370;
  sub_1DAAA2D3C(v448, v370, qword_1EE123840, type metadata accessor for QuoteDetail);
  if (v233(v231, 1, v232) == 1)
  {
LABEL_48:
    sub_1DAAA2DBC(v231, qword_1EE123840, type metadata accessor for QuoteDetail);
  }

  else
  {
    v252 = (v231 + v232[17]);
    v253 = *v252;
    v254 = v252[1];
    sub_1DACB71E4();
    v255 = sub_1DAA88E38(v231, type metadata accessor for QuoteDetail);
    if (v254)
    {
      MEMORY[0x1E12775A0](v255, v234);
      sub_1DACB7124();
      v236 = 0;
      goto LABEL_51;
    }
  }

LABEL_50:
  v236 = 1;
LABEL_51:
  v216(v229, v236, 1, v443);
  v237 = MEMORY[0x1E695A360];
  sub_1DAAA2D3C(v229, v447, &qword_1EE11F180, MEMORY[0x1E695A360]);
  sub_1DACB6EE4();
  sub_1DAAA2DBC(v229, &qword_1EE11F180, v237);
  v238 = v403;
  sub_1DAAA2D3C(v448, v403, qword_1EE123840, type metadata accessor for QuoteDetail);
  if (v233(v238, 1, v232) == 1)
  {
    goto LABEL_52;
  }

  v239 = *(v238 + 16);
  v240 = *(v238 + 24);
  sub_1DAA88E38(v238, type metadata accessor for QuoteDetail);
  if (v240)
  {
    goto LABEL_54;
  }

  v238 = v371;
  sub_1DAAA2D3C(v448, v371, qword_1EE123840, type metadata accessor for QuoteDetail);
  if (v233(v238, 1, v232) == 1)
  {
LABEL_52:
    sub_1DAAA2DBC(v238, qword_1EE123840, type metadata accessor for QuoteDetail);
LABEL_54:
    v241 = 1;
    goto LABEL_55;
  }

  v256 = (v238 + v232[17]);
  v257 = *v256;
  v258 = v256[1];
  sub_1DACB71E4();
  v259 = sub_1DAA88E38(v238, type metadata accessor for QuoteDetail);
  if (!v258)
  {
    goto LABEL_54;
  }

  MEMORY[0x1E12775A0](v259, v239);
  sub_1DACB7124();
  v241 = 0;
LABEL_55:
  v242 = v415;
  v216(v415, v241, 1, v443);
  v243 = MEMORY[0x1E695A360];
  sub_1DAAA2D3C(v242, v447, &qword_1EE11F180, MEMORY[0x1E695A360]);
  sub_1DACB6EE4();
  sub_1DAAA2DBC(v242, &qword_1EE11F180, v243);
  v244 = v404;
  sub_1DAAA2D3C(v448, v404, qword_1EE123840, type metadata accessor for QuoteDetail);
  v245 = v233(v244, 1, v232);
  v418 = v169;
  if (v245 == 1)
  {
LABEL_56:
    v246 = v216;
    sub_1DAAA2DBC(v244, qword_1EE123840, type metadata accessor for QuoteDetail);
LABEL_57:
    v247 = 1;
    goto LABEL_71;
  }

  v248 = *(v244 + 32);
  v249 = *(v244 + 40);
  sub_1DAA88E38(v244, type metadata accessor for QuoteDetail);
  if (v249)
  {
    v247 = 1;
    v246 = v216;
  }

  else
  {
    v244 = v372;
    sub_1DAAA2D3C(v448, v372, qword_1EE123840, type metadata accessor for QuoteDetail);
    if (v233(v244, 1, v232) == 1)
    {
      goto LABEL_56;
    }

    v260 = (v244 + v232[17]);
    v261 = *v260;
    v262 = v260[1];
    sub_1DACB71E4();
    v263 = sub_1DAA88E38(v244, type metadata accessor for QuoteDetail);
    v246 = v216;
    if (!v262)
    {
      goto LABEL_57;
    }

    MEMORY[0x1E12775A0](v263, v248);
    sub_1DACB7124();
    v247 = 0;
  }

LABEL_71:
  v265 = v443;
  v264 = v444;
  v266 = v416;
  v246(v416, v247, 1, v443);
  v267 = MEMORY[0x1E695A360];
  sub_1DAAA2D3C(v266, v447, &qword_1EE11F180, MEMORY[0x1E695A360]);
  sub_1DACB6EE4();
  sub_1DAAA2DBC(v266, &qword_1EE11F180, v267);
  v268 = v406;
  sub_1DAAA2D3C(v448, v406, qword_1EE123840, type metadata accessor for QuoteDetail);
  if (v233(v268, 1, v232) == 1)
  {
    v269 = v405;
LABEL_73:
    sub_1DAAA2DBC(v268, qword_1EE123840, type metadata accessor for QuoteDetail);
    goto LABEL_75;
  }

  v270 = *(v268 + 48);
  v271 = *(v268 + 56);
  sub_1DAA88E38(v268, type metadata accessor for QuoteDetail);
  v269 = v405;
  if (v271)
  {
    goto LABEL_75;
  }

  v268 = v373;
  sub_1DAAA2D3C(v448, v373, qword_1EE123840, type metadata accessor for QuoteDetail);
  if (v233(v268, 1, v232) == 1)
  {
    goto LABEL_73;
  }

  v291 = (v268 + v232[17]);
  v292 = *v291;
  v293 = v291[1];
  sub_1DACB71E4();
  v294 = sub_1DAA88E38(v268, type metadata accessor for QuoteDetail);
  if (v293)
  {
    MEMORY[0x1E12775A0](v294, v270);
    sub_1DACB7124();
    v272 = 0;
    goto LABEL_76;
  }

LABEL_75:
  v272 = 1;
LABEL_76:
  v246(v269, v272, 1, v265);
  v273 = MEMORY[0x1E695A360];
  sub_1DAAA2D3C(v269, v447, &qword_1EE11F180, MEMORY[0x1E695A360]);
  sub_1DACB6EE4();
  sub_1DAAA2DBC(v269, &qword_1EE11F180, v273);
  v274 = v407;
  sub_1DAAA2D3C(v448, v407, qword_1EE123840, type metadata accessor for QuoteDetail);
  if (v233(v274, 1, v232) == 1)
  {
    goto LABEL_77;
  }

  v275 = *(v274 + 64);
  v276 = *(v274 + 72);
  sub_1DAA88E38(v274, type metadata accessor for QuoteDetail);
  if (v276)
  {
    goto LABEL_79;
  }

  v274 = v374;
  sub_1DAAA2D3C(v448, v374, qword_1EE123840, type metadata accessor for QuoteDetail);
  if (v233(v274, 1, v232) == 1)
  {
LABEL_77:
    sub_1DAAA2DBC(v274, qword_1EE123840, type metadata accessor for QuoteDetail);
LABEL_79:
    v277 = 1;
    goto LABEL_80;
  }

  v295 = (v274 + v232[17]);
  v296 = *v295;
  v297 = v295[1];
  sub_1DACB71E4();
  v298 = sub_1DAA88E38(v274, type metadata accessor for QuoteDetail);
  if (!v297)
  {
    goto LABEL_79;
  }

  MEMORY[0x1E12775A0](v298, v275);
  sub_1DACB7124();
  v277 = 0;
LABEL_80:
  v278 = v417;
  v246(v417, v277, 1, v265);
  v279 = MEMORY[0x1E695A360];
  sub_1DAAA2D3C(v278, v447, &qword_1EE11F180, MEMORY[0x1E695A360]);
  sub_1DACB6EE4();
  sub_1DAAA2DBC(v278, &qword_1EE11F180, v279);
  v280 = v408;
  sub_1DAAA2D3C(v448, v408, qword_1EE123840, type metadata accessor for QuoteDetail);
  if (v233(v280, 1, v232) == 1)
  {
    sub_1DAAA2DBC(v280, qword_1EE123840, type metadata accessor for QuoteDetail);
    v281 = 0;
    v282 = 1;
  }

  else
  {
    v281 = *(v280 + 80);
    v282 = *(v280 + 88);
    sub_1DAA88E38(v280, type metadata accessor for QuoteDetail);
  }

  v283 = v411;
  v284 = v410;
  v449 = v281;
  LOBYTE(v450) = v282;
  sub_1DACB6EE4();
  v285 = v409;
  sub_1DAAA2D3C(v448, v409, qword_1EE123840, type metadata accessor for QuoteDetail);
  if (v233(v285, 1, v232) == 1)
  {
    sub_1DAAA2DBC(v285, qword_1EE123840, type metadata accessor for QuoteDetail);
LABEL_86:
    v287 = 0;
    v290 = 1;
    goto LABEL_95;
  }

  v286 = v285;
  v287 = *(v285 + 96);
  v288 = *(v286 + 104);
  result = sub_1DAA88E38(v286, type metadata accessor for QuoteDetail);
  if (v288)
  {
    goto LABEL_86;
  }

  if (v287 < 0)
  {
    __break(1u);
    goto LABEL_140;
  }

  v290 = 0;
LABEL_95:
  v449 = v287;
  LOBYTE(v450) = v290;
  sub_1DACB6EE4();
  v299 = v386;
  sub_1DAAA2D3C(v448, v386, qword_1EE123840, type metadata accessor for QuoteDetail);
  if (v233(v299, 1, v232) != 1)
  {
    v300 = v299;
    v301 = *(v299 + 112);
    v302 = *(v300 + 120);
    result = sub_1DAA88E38(v300, type metadata accessor for QuoteDetail);
    if (v302)
    {
      goto LABEL_98;
    }

    if ((v301 & 0x8000000000000000) == 0)
    {
      v303 = 0;
      goto LABEL_101;
    }

LABEL_140:
    __break(1u);
    return result;
  }

  sub_1DAAA2DBC(v299, qword_1EE123840, type metadata accessor for QuoteDetail);
LABEL_98:
  v301 = 0;
  v303 = 1;
LABEL_101:
  v449 = v301;
  LOBYTE(v450) = v303;
  sub_1DACB6EE4();
  sub_1DAAA2D3C(v448, v284, qword_1EE123840, type metadata accessor for QuoteDetail);
  if (v233(v284, 1, v232) == 1)
  {
    sub_1DAAA2DBC(v284, qword_1EE123840, type metadata accessor for QuoteDetail);
    v304 = 0;
    v305 = 1;
  }

  else
  {
    v304 = *(v284 + 128);
    v305 = *(v284 + 136);
    sub_1DAA88E38(v284, type metadata accessor for QuoteDetail);
  }

  v449 = v304;
  LOBYTE(v450) = v305;
  sub_1DACB6EE4();
  sub_1DAAA2D3C(v448, v283, qword_1EE123840, type metadata accessor for QuoteDetail);
  if (v233(v283, 1, v232) == 1)
  {
    sub_1DAAA2DBC(v283, qword_1EE123840, type metadata accessor for QuoteDetail);
    v306 = 0;
    v307 = 1;
  }

  else
  {
    v306 = *(v283 + 144);
    v307 = *(v283 + 152);
    sub_1DAA88E38(v283, type metadata accessor for QuoteDetail);
  }

  v449 = v306;
  LOBYTE(v450) = v307;
  sub_1DACB6EE4();
  v308 = v378;
  sub_1DAAA2D3C(v448, v378, qword_1EE123840, type metadata accessor for QuoteDetail);
  if (v233(v308, 1, v232) == 1)
  {
    goto LABEL_108;
  }

  v309 = *(v308 + 160);
  v310 = *(v308 + 168);
  sub_1DAA88E38(v308, type metadata accessor for QuoteDetail);
  if (v310)
  {
    goto LABEL_110;
  }

  v308 = v364;
  sub_1DAAA2D3C(v448, v364, qword_1EE123840, type metadata accessor for QuoteDetail);
  if (v233(v308, 1, v232) == 1)
  {
LABEL_108:
    sub_1DAAA2DBC(v308, qword_1EE123840, type metadata accessor for QuoteDetail);
LABEL_110:
    v311 = 1;
    goto LABEL_111;
  }

  v326 = (v308 + v232[17]);
  v327 = *v326;
  v328 = v326[1];
  sub_1DACB71E4();
  v329 = sub_1DAA88E38(v308, type metadata accessor for QuoteDetail);
  if (!v328)
  {
    goto LABEL_110;
  }

  MEMORY[0x1E12775A0](v329, v309);
  sub_1DACB7124();
  v311 = 0;
LABEL_111:
  v312 = v412;
  v246(v412, v311, 1, v265);
  v313 = MEMORY[0x1E695A360];
  sub_1DAAA2D3C(v312, v447, &qword_1EE11F180, MEMORY[0x1E695A360]);
  sub_1DACB6EE4();
  sub_1DAAA2DBC(v312, &qword_1EE11F180, v313);
  v314 = v377;
  sub_1DAAA2D3C(v445, v377, qword_1EE120250, type metadata accessor for Quote);
  if (v419(v314, 1, v264) == 1)
  {
    sub_1DAAA2DBC(v314, qword_1EE120250, type metadata accessor for Quote);
    v315 = sub_1DACB7CC4();
    v316 = v380;
    (*(*(v315 - 8) + 56))(v380, 1, 1, v315);
    v317 = v383;
    v318 = v382;
    v319 = v381;
    goto LABEL_114;
  }

  v316 = v380;
  sub_1DAAA2D3C(v314 + *(v264 + 20), v380, &qword_1EE125280, MEMORY[0x1E6969530]);
  sub_1DAA88E38(v314, type metadata accessor for Quote);
  v320 = sub_1DACB7CC4();
  v321 = *(v320 - 8);
  v322 = (*(v321 + 48))(v316, 1, v320);
  v317 = v383;
  v318 = v382;
  v319 = v381;
  if (v322 == 1)
  {
LABEL_114:
    v323 = v375;
    sub_1DAAA2D3C(v448, v375, qword_1EE123840, type metadata accessor for QuoteDetail);
    if (v233(v323, 1, v232) == 1)
    {
      sub_1DAAA2DBC(v323, qword_1EE123840, type metadata accessor for QuoteDetail);
      v324 = sub_1DACB7CC4();
      (*(*(v324 - 8) + 56))(v319, 1, 1, v324);
    }

    else
    {
      sub_1DAAA2D3C(v323 + v232[15], v319, &qword_1EE125280, MEMORY[0x1E6969530]);
      sub_1DAA88E38(v323, type metadata accessor for QuoteDetail);
    }

    v325 = sub_1DACB7CC4();
    if ((*(*(v325 - 8) + 48))(v316, 1, v325) != 1)
    {
      sub_1DAAA2DBC(v316, &qword_1EE125280, MEMORY[0x1E6969530]);
    }

    goto LABEL_123;
  }

  (*(v321 + 32))(v381, v316, v320);
  (*(v321 + 56))(v319, 0, 1, v320);
LABEL_123:
  v330 = MEMORY[0x1E6969530];
  sub_1DAAA2D3C(v319, v441, &qword_1EE125280, MEMORY[0x1E6969530]);
  sub_1DACB6EE4();
  sub_1DAAA2DBC(v319, &qword_1EE125280, v330);
  v331 = v379;
  sub_1DAAA2D3C(v445, v379, qword_1EE120250, type metadata accessor for Quote);
  if (v419(v331, 1, v264) == 1)
  {
    sub_1DAAA2DBC(v331, qword_1EE120250, type metadata accessor for Quote);
    v332 = sub_1DACB7F54();
    v333 = *(v332 - 8);
    v334 = *(v333 + 56);
    v334(v317, 1, 1, v332);
    sub_1DAAA2D3C(v448, v318, qword_1EE123840, type metadata accessor for QuoteDetail);
    if (v233(v318, 1, v232) == 1)
    {
      sub_1DAAA2DBC(v318, qword_1EE123840, type metadata accessor for QuoteDetail);
      v335 = v384;
      v334(v384, 1, 1, v332);
    }

    else
    {
      v335 = v384;
      sub_1DAAA2D3C(v318 + v232[20], v384, &qword_1EE1239E8, MEMORY[0x1E6969BC0]);
      sub_1DAA88E38(v318, type metadata accessor for QuoteDetail);
    }

    if ((*(v333 + 48))(v317, 1, v332) != 1)
    {
      sub_1DAAA2DBC(v317, &qword_1EE1239E8, MEMORY[0x1E6969BC0]);
    }
  }

  else
  {
    v336 = *(v264 + 24);
    v332 = sub_1DACB7F54();
    v337 = *(v332 - 8);
    (*(v337 + 16))(v317, v331 + v336, v332);
    sub_1DAA88E38(v331, type metadata accessor for Quote);
    v338 = *(v337 + 56);
    v338(v317, 0, 1, v332);
    v335 = v384;
    (*(v337 + 32))(v384, v317, v332);
    v338(v335, 0, 1, v332);
  }

  sub_1DACB7F54();
  v339 = *(v332 - 8);
  if ((*(v339 + 48))(v335, 1, v332) == 1)
  {
    sub_1DAAA2DBC(v335, &qword_1EE1239E8, MEMORY[0x1E6969BC0]);
    v340 = 0;
    v341 = 0;
  }

  else
  {
    v340 = sub_1DACB7F04();
    v341 = v342;
    (*(v339 + 8))(v335, v332);
  }

  v449 = v340;
  v450 = v341;
  v343 = v376;
  sub_1DACB6EE4();
  sub_1DAAA2DBC(v448, qword_1EE123840, type metadata accessor for QuoteDetail);
  sub_1DAAA2DBC(v445, qword_1EE120250, type metadata accessor for Quote);
  result = sub_1DAA88E38(v442, type metadata accessor for SymbolEntity);
  v344 = v385;
  v345 = v439;
  *v385 = v440;
  v344[1] = v345;
  v346 = v437;
  v344[2] = v438;
  v344[3] = v346;
  v347 = v435;
  v344[4] = v436;
  v344[5] = v347;
  v348 = v433;
  v344[6] = v434;
  v344[7] = v348;
  v349 = v431;
  v344[8] = v432;
  v344[9] = v349;
  v350 = v429;
  v344[10] = v430;
  v344[11] = v350;
  v351 = v427;
  v344[12] = v428;
  v344[13] = v351;
  v352 = v425;
  v344[14] = v426;
  v344[15] = v352;
  v353 = v423;
  v344[16] = v424;
  v344[17] = v353;
  v354 = v421;
  v344[18] = v422;
  v344[19] = v354;
  v344[20] = v420;
  v344[21] = v343;
  return result;
}

uint64_t sub_1DAAA0BF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = sub_1DACB8FB4();
  v26 = *(v10 - 8);
  v11 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_1DACB9004();
  v14 = *(v25 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v25);
  v17 = &v24 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = swift_allocObject();
  *(v18 + 16) = a1;
  *(v18 + 24) = a2;
  v19 = *(a5 + 16);
  v20 = swift_allocObject();
  v20[2] = a6;
  v20[3] = sub_1DAA73914;
  v20[4] = v18;
  aBlock[4] = sub_1DAC928D0;
  aBlock[5] = v20;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1DAA5796C;
  aBlock[3] = &block_descriptor_39;
  v21 = _Block_copy(aBlock);
  sub_1DACB71F4();
  sub_1DACB71E4();
  sub_1DACB8FD4();
  v27 = MEMORY[0x1E69E7CC0];
  sub_1DAA572FC(&qword_1EE124040, MEMORY[0x1E69E7F60]);
  v22 = MEMORY[0x1E69E7F60];
  sub_1DAA581BC(0, &qword_1EE123EC0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
  sub_1DAA57E98(&qword_1EE123EB0, &qword_1EE123EC0, v22);
  sub_1DACB9BB4();
  MEMORY[0x1E1277440](0, v17, v13, v21);
  _Block_release(v21);
  (*(v26 + 8))(v13, v10);
  (*(v14 + 8))(v17, v25);
}

uint64_t sub_1DAAA0F1C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1DAAA0F54()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

id sub_1DAAA0F94()
{
  if (qword_1EE123758 != -1)
  {
    swift_once();
  }

  v17 = xmmword_1EE13E428;
  v18 = *&qword_1EE13E438;
  v19 = xmmword_1EE13E448;
  v13 = xmmword_1EE13E3E8;
  v14 = *&qword_1EE13E3F8;
  v15 = xmmword_1EE13E408;
  v16 = *&qword_1EE13E418;
  v9 = xmmword_1EE13E3A8;
  v10 = *&qword_1EE13E3B8;
  v11 = xmmword_1EE13E3C8;
  v12 = *&qword_1EE13E3D8;
  v0 = xmmword_1EE13E408;
  sub_1DAA9CBF4();
  sub_1DAA4E470(0, &qword_1EE123B50);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1DACC1D20;
  *(v1 + 32) = v0;
  v2 = objc_allocWithZone(MEMORY[0x1E69B5378]);
  sub_1DACB71E4();
  v3 = sub_1DACB92F4();
  v4 = sub_1DACB92F4();
  v5 = sub_1DACB9634();

  v6 = sub_1DACB9634();

  v7 = [v2 initWithRecordType:v3 recordIDPrefix:v4 keys:v5 localizableKeys:{v6, v9, v10, v11, v12, v13, v14, v15, v16, v17, v18, v19}];

  return v7;
}

void sub_1DAAA113C(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t), void (*a5)(void))
{
  if (!*a2)
  {
    sub_1DAA7BD0C(255, a3, a4, MEMORY[0x1E69E6720]);
    a5();
    v7 = sub_1DACB6F64();
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_1DAAA11C4()
{
  result = qword_1EE11EF20;
  if (!qword_1EE11EF20)
  {
    sub_1DAAA1440(255, qword_1EE11EF28, type metadata accessor for SymbolEntity);
    sub_1DAAA14B8(&qword_1EE123548, type metadata accessor for SymbolEntity);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE11EF20);
  }

  return result;
}

void sub_1DAAA129C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void))
{
  if (!*a2)
  {
    v4 = a3(0, MEMORY[0x1E69E6158]);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1DAAA12F0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void))
{
  if (!*a2)
  {
    v4 = a3(0, MEMORY[0x1E69E6158]);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1DAAA13A0()
{
  v4 = *v0;
  sub_1DAAA167C();
  sub_1DACB8BB4();
  v1 = sub_1DACB89D4();
  v2 = sub_1DACB8A54();

  return v2;
}

void sub_1DAAA1440(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1DACB9AF4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1DAAA14B8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1DAAA1500(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1DAAA1548(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1DAAA1590(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1DAAA15D8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1DAAA1620(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1DAAA167C()
{
  if (!qword_1EE11FCD8)
  {
    v0 = sub_1DACB91A4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE11FCD8);
    }
  }
}

unint64_t sub_1DAAA16DC()
{
  result = qword_1EE11F178;
  if (!qword_1EE11F178)
  {
    sub_1DAA7BD0C(255, &qword_1EE11F180, MEMORY[0x1E695A360], MEMORY[0x1E69E6720]);
    sub_1DAAA15D8(&qword_1EE11F188, MEMORY[0x1E695A360]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE11F178);
  }

  return result;
}

uint64_t sub_1DAAA17B4@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DAA485B8(0, &unk_1EE11F890, &protocolRef_FCFeedPersonalizing);
  result = sub_1DACB8244();
  if (result)
  {
    v5 = result;
    v6 = type metadata accessor for FeedPersonalizerHeadlineScorer();
    result = swift_allocObject();
    *(result + 16) = v5;
    a2[3] = v6;
    a2[4] = &off_1F568D800;
    *a2 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_1DAAA1870()
{
  result = qword_1EE11F100;
  if (!qword_1EE11F100)
  {
    sub_1DAA7BD0C(255, &qword_1EE125280, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
    sub_1DAAA15D8(&qword_1EE11F108, MEMORY[0x1E6969530]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE11F100);
  }

  return result;
}

uint64_t sub_1DAAA1948(uint64_t a1, uint64_t a2)
{
  sub_1DAAA1C0C();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 16);
  swift_getObjectType();
  v9 = sub_1DACB81B4();
  (*(*(v9 - 8) + 56))(v7, 1, 1, v9);
  v10 = sub_1DAAA2240(a2);
  sub_1DAAA3F64(v7);
  return v10;
}

uint64_t sub_1DAAA1A5C(unint64_t *a1, unint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_1DAA49218(255, a2);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1DAAA1AEC()
{
  if (!qword_1EE11F1C8)
  {
    v0 = MEMORY[0x1E69E63B0];
    sub_1DAA49218(255, &qword_1EE11F998);
    sub_1DAAA1A5C(&qword_1EE11D110, &qword_1EE11F998, v0, sub_1DAAA1BB8);
    v1 = sub_1DACB6F64();
    if (!v2)
    {
      atomic_store(v1, &qword_1EE11F1C8);
    }
  }
}

unint64_t sub_1DAAA1BB8()
{
  result = qword_1EE11D248;
  if (!qword_1EE11D248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE11D248);
  }

  return result;
}

void sub_1DAAA1C0C()
{
  if (!qword_1EE120028)
  {
    sub_1DACB81B4();
    v0 = sub_1DACB9AF4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE120028);
    }
  }
}

uint64_t sub_1DAAA1C64(uint64_t a1)
{
  v34 = a1;
  v33 = sub_1DACB81D4();
  v30 = *(v33 - 8);
  v31 = v30;
  v2 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v33);
  v32 = v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_1DACB9924();
  v4 = *(*(v29 - 8) + 64);
  MEMORY[0x1EEE9AC00](v29);
  v28 = v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1DACB9944();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1DACB9004();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  *(v1 + 16) = MEMORY[0x1E69E7CC8];
  v13 = sub_1DAA420F4(0, &qword_1EE123DE8, 0x1E69E9610);
  v26[1] = "gHistory";
  v26[2] = v13;
  sub_1DACB8FF4();
  (*(v7 + 104))(v10, *MEMORY[0x1E69E8098], v6);
  v35 = MEMORY[0x1E69E7CC0];
  sub_1DAA57344(&unk_1EE123DF0, MEMORY[0x1E69E8030]);
  v14 = MEMORY[0x1E69E8030];
  v15 = MEMORY[0x1E69E62F8];
  sub_1DAA5802C(0, &qword_1EE123E78, MEMORY[0x1E69E8030], MEMORY[0x1E69E62F8]);
  sub_1DAA57424(&qword_1EE123E70, &qword_1EE123E78, v14);
  sub_1DACB9BB4();
  v16 = sub_1DACB9974();
  v17 = v27;
  *(v27 + 24) = v16;
  v18 = MEMORY[0x1E69D6420];
  sub_1DAA5802C(0, &qword_1EE1252D0, MEMORY[0x1E69D6420], MEMORY[0x1E69E6F90]);
  v19 = *(v30 + 72);
  v20 = (*(v31 + 80) + 32) & ~*(v31 + 80);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_1DACC1D20;
  sub_1DACB81C4();
  v35 = v21;
  sub_1DAA57344(&qword_1EE1255D0, MEMORY[0x1E69D6420]);
  sub_1DAA5802C(0, &qword_1EE125540, v18, v15);
  sub_1DAA57424(&qword_1EE125530, &qword_1EE125540, v18);
  sub_1DACB9BB4();
  sub_1DAA5802C(0, &qword_1EE11D480, sub_1DAAA2108, MEMORY[0x1E69D6A80]);
  v23 = *(v22 + 48);
  v24 = *(v22 + 52);
  swift_allocObject();
  *(v17 + 32) = sub_1DACB8914();
  return v17;
}

void sub_1DAAA2108()
{
  if (!qword_1EE11D330)
  {
    sub_1DAAA27C8();
    sub_1DAAA2BCC();
    sub_1DAAA2C20();
    v0 = sub_1DACB8E44();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE11D330);
    }
  }
}

void sub_1DAAA2198()
{
  if (!qword_1EE11F1C0)
  {
    v0 = MEMORY[0x1E69E6530];
    sub_1DAA49218(255, &unk_1EE11F970);
    sub_1DAAA1A5C(&qword_1EE11D0E8, &unk_1EE11F970, v0, sub_1DAAA281C);
    v1 = sub_1DACB6F64();
    if (!v2)
    {
      atomic_store(v1, &qword_1EE11F1C0);
    }
  }
}

uint64_t sub_1DAAA2240(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC8];
  if (!v1)
  {
LABEL_15:
    v26 = sub_1DACB71E4();
    sub_1DAAA2918(v26);

    sub_1DAAA2CE8();
    sub_1DAAA2E2C();

    *(swift_allocObject() + 16) = v2;
    v27 = sub_1DACB89D4();
    sub_1DAAA167C();
    sub_1DAAA3DA0();
    v28 = sub_1DACB8B64();

    return v28;
  }

  v3 = (a1 + 40);
  while (1)
  {
    v8 = *(v3 - 1);
    v7 = *v3;
    v9 = sub_1DACB93B4();
    v11 = v10;
    swift_bridgeObjectRetain_n();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v13 = sub_1DAA4BF3C(v9, v11);
    v15 = v2[2];
    v16 = (v14 & 1) == 0;
    v17 = __OFADD__(v15, v16);
    v18 = v15 + v16;
    if (v17)
    {
      break;
    }

    v19 = v14;
    if (v2[3] < v18)
    {
      sub_1DAAA2514(v18, isUniquelyReferenced_nonNull_native);
      v13 = sub_1DAA4BF3C(v9, v11);
      if ((v19 & 1) != (v20 & 1))
      {
        goto LABEL_18;
      }

LABEL_10:
      if (v19)
      {
        goto LABEL_3;
      }

      goto LABEL_11;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_10;
    }

    v25 = v13;
    sub_1DAB65314();
    v13 = v25;
    if (v19)
    {
LABEL_3:
      v4 = v13;

      v5 = (v2[7] + 16 * v4);
      v6 = v5[1];
      *v5 = v8;
      v5[1] = v7;

      goto LABEL_4;
    }

LABEL_11:
    v2[(v13 >> 6) + 8] |= 1 << v13;
    v21 = (v2[6] + 16 * v13);
    *v21 = v9;
    v21[1] = v11;
    v22 = (v2[7] + 16 * v13);
    *v22 = v8;
    v22[1] = v7;

    v23 = v2[2];
    v17 = __OFADD__(v23, 1);
    v24 = v23 + 1;
    if (v17)
    {
      goto LABEL_17;
    }

    v2[2] = v24;
LABEL_4:
    v3 += 2;
    if (!--v1)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_17:
  __break(1u);
LABEL_18:
  result = sub_1DACBA1F4();
  __break(1u);
  return result;
}

uint64_t sub_1DAAA24DC()
{
  v1 = *(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1DAAA2514(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_1DAA4BEE0();
  v40 = a2;
  result = sub_1DACB9E84();
  v8 = result;
  if (*(v5 + 16))
  {
    v38 = v3;
    v39 = v5;
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
      v20 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v23 = 16 * (v20 | (v9 << 6));
      v24 = (*(v5 + 48) + v23);
      v25 = *v24;
      v26 = v24[1];
      v27 = (*(v5 + 56) + v23);
      v28 = v27[1];
      v41 = *v27;
      if ((v40 & 1) == 0)
      {
        sub_1DACB71E4();
        sub_1DACB71E4();
      }

      v29 = *(v8 + 40);
      sub_1DACBA284();
      sub_1DACB9404();
      result = sub_1DACBA2C4();
      v30 = -1 << *(v8 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v15 + 8 * (v31 >> 6))) == 0)
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
          v36 = *(v15 + 8 * v32);
          if (v36 != -1)
          {
            v16 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v31) & ~*(v15 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = 16 * v16;
      v18 = (*(v8 + 48) + v17);
      *v18 = v25;
      v18[1] = v26;
      v19 = (*(v8 + 56) + v17);
      *v19 = v41;
      v19[1] = v28;
      ++*(v8 + 16);
      v5 = v39;
    }

    v21 = v9;
    while (1)
    {
      v9 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v22 = v10[v9];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v13 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_35;
    }

    v37 = 1 << *(v5 + 32);
    v3 = v38;
    if (v37 >= 64)
    {
      bzero(v10, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v37;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

unint64_t sub_1DAAA27C8()
{
  result = qword_1EE11E630;
  if (!qword_1EE11E630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE11E630);
  }

  return result;
}

unint64_t sub_1DAAA281C()
{
  result = qword_1EE11D240;
  if (!qword_1EE11D240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE11D240);
  }

  return result;
}

void sub_1DAAA2870()
{
  if (!qword_1EE11F1D0)
  {
    v0 = MEMORY[0x1E69E6158];
    sub_1DAA49218(255, &qword_1EE123FD0);
    sub_1DAAA1A5C(&qword_1EE11D1A0, &qword_1EE123FD0, v0, sub_1DAA8D9E8);
    v1 = sub_1DACB6F64();
    if (!v2)
    {
      atomic_store(v1, &qword_1EE11F1D0);
    }
  }
}

uint64_t sub_1DAAA2918(uint64_t a1)
{
  v1 = a1;
  v2 = *(a1 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v31 = MEMORY[0x1E69E7CC0];
    sub_1DAA5859C(0, v2, 0);
    v30 = v31;
    v4 = v1 + 64;
    v5 = -1 << *(v1 + 32);
    result = sub_1DACB9BC4();
    v6 = result;
    v7 = 0;
    v25 = v1 + 72;
    v26 = v2;
    v27 = v1 + 64;
    v28 = v1;
    while ((v6 & 0x8000000000000000) == 0 && v6 < 1 << *(v1 + 32))
    {
      v9 = v6 >> 6;
      if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) == 0)
      {
        goto LABEL_24;
      }

      v29 = *(v1 + 36);
      v10 = (*(v1 + 48) + 16 * v6);
      v12 = *v10;
      v11 = v10[1];
      v13 = qword_1EE123758;
      sub_1DACB71E4();
      if (v13 != -1)
      {
        swift_once();
      }

      MEMORY[0x1E1276F20](qword_1EE13E3B8, unk_1EE13E3C0);
      sub_1DACB9204();
      MEMORY[0x1E1276F20](v12, v11);

      v14 = v30;
      v16 = *(v30 + 16);
      v15 = *(v30 + 24);
      if (v16 >= v15 >> 1)
      {
        result = sub_1DAA5859C((v15 > 1), v16 + 1, 1);
        v14 = v30;
      }

      *(v14 + 16) = v16 + 1;
      v17 = v14 + 16 * v16;
      *(v17 + 32) = 0;
      *(v17 + 40) = 0xE000000000000000;
      v1 = v28;
      v8 = 1 << *(v28 + 32);
      if (v6 >= v8)
      {
        goto LABEL_25;
      }

      v4 = v27;
      v18 = *(v27 + 8 * v9);
      if ((v18 & (1 << v6)) == 0)
      {
        goto LABEL_26;
      }

      v30 = v14;
      if (v29 != *(v28 + 36))
      {
        goto LABEL_27;
      }

      v19 = v18 & (-2 << (v6 & 0x3F));
      if (v19)
      {
        v8 = __clz(__rbit64(v19)) | v6 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v20 = v9 << 6;
        v21 = v9 + 1;
        v22 = (v25 + 8 * v9);
        while (v21 < (v8 + 63) >> 6)
        {
          v24 = *v22++;
          v23 = v24;
          v20 += 64;
          ++v21;
          if (v24)
          {
            result = sub_1DAAA2C74(v6, v29, 0);
            v8 = __clz(__rbit64(v23)) + v20;
            goto LABEL_4;
          }
        }

        result = sub_1DAAA2C74(v6, v29, 0);
      }

LABEL_4:
      ++v7;
      v6 = v8;
      if (v7 == v26)
      {
        return v30;
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
  }

  return result;
}

unint64_t sub_1DAAA2BCC()
{
  result = qword_1EE11E638;
  if (!qword_1EE11E638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE11E638);
  }

  return result;
}

unint64_t sub_1DAAA2C20()
{
  result = qword_1EE11E5A0;
  if (!qword_1EE11E5A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE11E5A0);
  }

  return result;
}

uint64_t sub_1DAAA2C74(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_1DAAA2C80(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SymbolEntity();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1DAAA2CE8()
{
  result = qword_1EE123748;
  if (!qword_1EE123748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE123748);
  }

  return result;
}

uint64_t sub_1DAAA2D3C(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_1DAA7BD0C(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1DAAA2DBC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1DAA7BD0C(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1DAAA2E2C()
{
  sub_1DACB91A4();
  sub_1DACB8B74();
  return sub_1DACB8B34();
}

unint64_t sub_1DAAA2ECC()
{
  result = qword_1EE11E580;
  if (!qword_1EE11E580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE11E580);
  }

  return result;
}

uint64_t sub_1DAAA2F6C(uint64_t a1, uint64_t a2, int *a3)
{
  sub_1DAA49A38(0, &qword_1EE125280, MEMORY[0x1E6969530]);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = *(v6 - 8);
    v9 = a3[15];
LABEL_7:
    v12 = *(v8 + 48);

    return v12(a1 + v9, a2, v7);
  }

  sub_1DAA49A38(0, &qword_1EE1263D0, MEMORY[0x1E6968FB0]);
  if (*(*(v10 - 8) + 84) == a2)
  {
    v7 = v10;
    v8 = *(v10 - 8);
    v9 = a3[18];
    goto LABEL_7;
  }

  sub_1DAA49A38(0, &qword_1EE1239E8, MEMORY[0x1E6969BC0]);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v7 = v11;
    v8 = *(v11 - 8);
    v9 = a3[20];
    goto LABEL_7;
  }

  if (a2 == 0x7FFFFFFF)
  {
    v14 = *(a1 + a3[26]);
    if (v14 >= 0xFFFFFFFF)
    {
      LODWORD(v14) = -1;
    }

    return (v14 + 1);
  }

  else
  {
    v15 = sub_1DACB7CC4();
    v16 = *(*(v15 - 8) + 48);
    v17 = a1 + a3[28];

    return v16(v17, a2, v15);
  }
}

void sub_1DAAA3188(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v17 = swift_allocObject();
  v17[2] = a8;
  v17[3] = a9;
  v17[4] = a10;
  v17[5] = a1;
  v17[6] = a2;
  sub_1DACB71F4();
  v18 = sub_1DAAA33F4(a5);
  v19 = sub_1DACB9634();
  v20 = swift_allocObject();
  v20[2] = a8;
  v20[3] = a9;
  v20[4] = a10;
  v20[5] = sub_1DABAF454;
  v20[6] = v17;
  v20[7] = a3;
  v20[8] = a4;
  v20[9] = a7;
  aBlock[4] = sub_1DABAF48C;
  aBlock[5] = v20;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1DABAE648;
  aBlock[3] = &block_descriptor_13;
  v21 = _Block_copy(aBlock);
  sub_1DACB71F4();
  sub_1DACB71E4();

  [a6 fetchRecordsWithIDs:v19 cachePolicy:v18 completion:v21];
  _Block_release(v21);
}

uint64_t sub_1DAAA331C()
{
  v1 = *(v0 + 48);

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1DAAA3354()
{
  v1 = v0[6];

  v2 = v0[8];

  v3 = v0[9];

  return MEMORY[0x1EEE6BDD0](v0, 80, 7);
}

unint64_t sub_1DAAA339C()
{
  result = qword_1EE11E570;
  if (!qword_1EE11E570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE11E570);
  }

  return result;
}

id sub_1DAAA33F4(uint64_t a1)
{
  sub_1DAAA1C0C();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1DACB81B4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = (&v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v20 - v12;
  sub_1DAAA3874(a1, v5, sub_1DAAA1C0C);
  if ((*(v7 + 48))(v5, 1, v6) != 1)
  {
    (*(v7 + 32))(v13, v5, v6);
    (*(v7 + 16))(v11, v13, v6);
    v16 = (*(v7 + 88))(v11, v6);
    if (v16 == *MEMORY[0x1E69D63D8])
    {
      (*(v7 + 96))(v11, v6);
      v17 = *v11;
      v18 = [objc_allocWithZone(MEMORY[0x1E69B51F8]) init];
      [v18 setCachePolicy_];
      [v18 setMaximumCachedAge_];
      goto LABEL_15;
    }

    if (v16 == *MEMORY[0x1E69D63E0])
    {
      (*(v7 + 96))(v11, v6);
      v19 = [objc_opt_self() cachePolicyWithSoftMaxAge_];
    }

    else if (v16 == *MEMORY[0x1E69D63C0])
    {
      v19 = [objc_opt_self() ignoreCacheCachePolicy];
    }

    else
    {
      if (v16 != *MEMORY[0x1E69D63D0])
      {
        if (v16 != *MEMORY[0x1E69D63C8])
        {
          result = sub_1DACB9E44();
          __break(1u);
          return result;
        }

        v18 = [objc_allocWithZone(MEMORY[0x1E69B51F8]) init];
        [v18 setCachePolicy_];
        [v18 setMaximumCachedAge_];
LABEL_15:
        (*(v7 + 8))(v13, v6);
        return v18;
      }

      v19 = [objc_opt_self() cachedOnlyCachePolicy];
    }

    v18 = v19;
    goto LABEL_15;
  }

  sub_1DAAA3938(v5, sub_1DAAA1C0C);
  v14 = [objc_opt_self() defaultCachePolicy];

  return v14;
}

unint64_t sub_1DAAA3820()
{
  result = qword_1EE11E578;
  if (!qword_1EE11E578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE11E578);
  }

  return result;
}

uint64_t sub_1DAAA3874(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_1DAAA38DC()
{
  result = qword_1EE122608;
  if (!qword_1EE122608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE122608);
  }

  return result;
}

uint64_t sub_1DAAA3938(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1DAAA3998(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v29 = MEMORY[0x1E69E7CC0];
    sub_1DACB9D64();
    v4 = (a1 + 32);
    for (i = v2 - 1; ; --i)
    {
      v6 = v4[5];
      v7 = v4[7];
      v25 = v4[6];
      v26 = v7;
      v8 = v4[7];
      v27 = v4[8];
      v9 = v4[1];
      v10 = v4[3];
      v21 = v4[2];
      v22 = v10;
      v11 = v4[3];
      v12 = v4[5];
      v23 = v4[4];
      v24 = v12;
      v13 = v4[1];
      v19 = *v4;
      v20 = v13;
      v28[6] = v25;
      v28[7] = v8;
      v28[8] = v4[8];
      v28[2] = v21;
      v28[3] = v11;
      v28[4] = v23;
      v28[5] = v6;
      v28[0] = v19;
      v28[1] = v9;
      if (sub_1DAA9B6F0(v28) == 1)
      {
        v14 = *sub_1DAA9B6E0(v28);
        v18[2] = v21;
        v18[3] = v22;
        v18[0] = v19;
        v18[1] = v20;
        v18[7] = v26;
        v18[8] = v27;
        v18[5] = v24;
        v18[6] = v25;
        v18[4] = v23;
        v15 = *sub_1DAA9B6E0(v18);
      }

      else
      {
        v16 = *sub_1DAA9B6E0(v28);
      }

      swift_unknownObjectRetain();
      sub_1DACB9D34();
      v17 = *(v29 + 16);
      sub_1DACB9D74();
      sub_1DACB9D84();
      sub_1DACB9D44();
      if (!i)
      {
        break;
      }

      v4 += 9;
    }

    return v29;
  }

  return result;
}

unint64_t sub_1DAAA3AEC()
{
  result = qword_1EE11E590;
  if (!qword_1EE11E590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE11E590);
  }

  return result;
}

unint64_t sub_1DAAA3B40()
{
  result = qword_1EE1225F0;
  if (!qword_1EE1225F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1225F0);
  }

  return result;
}

unint64_t sub_1DAAA3BA0()
{
  result = qword_1EE1225E8;
  if (!qword_1EE1225E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1225E8);
  }

  return result;
}

unint64_t sub_1DAAA3BF4()
{
  result = qword_1EE11E598;
  if (!qword_1EE11E598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE11E598);
  }

  return result;
}

uint64_t sub_1DAAA3C4C(SEL *a1)
{
  v3 = v1[7];
  v10[6] = v1[6];
  v10[7] = v3;
  v10[8] = v1[8];
  v4 = v1[3];
  v10[2] = v1[2];
  v10[3] = v4;
  v5 = v1[5];
  v10[4] = v1[4];
  v10[5] = v5;
  v6 = v1[1];
  v10[0] = *v1;
  v10[1] = v6;
  sub_1DAA9B6F0(v10);
  v7 = [*sub_1DAA9B6E0(v10) *a1];
  v8 = sub_1DACB9324();

  return v8;
}

unint64_t sub_1DAAA3CF8()
{
  result = qword_1EE11E588;
  if (!qword_1EE11E588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE11E588);
  }

  return result;
}

unint64_t sub_1DAAA3D4C()
{
  result = qword_1EE122600;
  if (!qword_1EE122600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE122600);
  }

  return result;
}

unint64_t sub_1DAAA3DA0()
{
  result = qword_1EE11FCD0;
  if (!qword_1EE11FCD0)
  {
    sub_1DAAA167C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE11FCD0);
  }

  return result;
}

uint64_t sub_1DAAA3DF8@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DAA485B8(0, &qword_1EE125488, &protocolRef_FCContentContext);
  result = sub_1DACB8244();
  if (!result)
  {
    __break(1u);
    goto LABEL_6;
  }

  v6 = result;
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DAA44440(0, qword_1EE1207A0);
  result = sub_1DACB8254();
  if (!v14)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DAA44440(0, &qword_1EE125910);
  result = sub_1DACB8254();
  if (v12)
  {
    v9 = type metadata accessor for NewsFeedService();
    v10 = swift_allocObject();
    *(v10 + 16) = v6;
    sub_1DAA4D460(&v13, v10 + 24);
    result = sub_1DAA4D460(&v11, v10 + 64);
    a2[3] = v9;
    a2[4] = &protocol witness table for NewsFeedService;
    *a2 = v10;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_1DAAA3F64(uint64_t a1)
{
  sub_1DAAA1C0C();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1DAAA3FC0()
{
  result = qword_1EE1225F8;
  if (!qword_1EE1225F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1225F8);
  }

  return result;
}

unint64_t sub_1DAAA4074()
{
  result = qword_1EE1225E0;
  if (!qword_1EE1225E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1225E0);
  }

  return result;
}

uint64_t sub_1DAAA40EC()
{
  v13 = sub_1DACB9944();
  v0 = *(v13 - 8);
  v1 = *(v0 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1DACB9924();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v6 = sub_1DACB9004();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v12 = sub_1DAA57C58();
  sub_1DACB8FE4();
  v15 = MEMORY[0x1E69E7CC0];
  sub_1DAA572FC(&unk_1EE123DF0, MEMORY[0x1E69E8030]);
  v8 = MEMORY[0x1E69E8030];
  sub_1DAA58158(0, &qword_1EE123E78, MEMORY[0x1E69E8030], MEMORY[0x1E69E62F8]);
  sub_1DAA57E34(&qword_1EE123E70, &qword_1EE123E78, v8);
  sub_1DACB9BB4();
  (*(v0 + 104))(v3, *MEMORY[0x1E69E8090], v13);
  v9 = sub_1DACB9974();
  v10 = v14;
  *(v14 + 16) = v9;
  return v10;
}

unint64_t sub_1DAAA436C()
{
  result = qword_1EE1225D8;
  if (!qword_1EE1225D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1225D8);
  }

  return result;
}

unint64_t sub_1DAAA4420()
{
  result = qword_1EE1225D0;
  if (!qword_1EE1225D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1225D0);
  }

  return result;
}

uint64_t sub_1DAAA4474()
{
  v13 = sub_1DACB9944();
  v0 = *(v13 - 8);
  v1 = *(v0 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1DACB9924();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v6 = sub_1DACB9004();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v12 = sub_1DAA57C58();
  sub_1DACB8FE4();
  v15 = MEMORY[0x1E69E7CC0];
  sub_1DAA572FC(&unk_1EE123DF0, MEMORY[0x1E69E8030]);
  v8 = MEMORY[0x1E69E8030];
  sub_1DAA581BC(0, &qword_1EE123E78, MEMORY[0x1E69E8030], MEMORY[0x1E69E62F8]);
  sub_1DAA57E98(&qword_1EE123E70, &qword_1EE123E78, v8);
  sub_1DACB9BB4();
  (*(v0 + 104))(v3, *MEMORY[0x1E69E8090], v13);
  v9 = sub_1DACB9974();
  v10 = v14;
  *(v14 + 16) = v9;
  return v10;
}

uint64_t sub_1DAAA4700()
{
  sub_1DAAA474C();

  return sub_1DACB6D04();
}

unint64_t sub_1DAAA474C()
{
  result = qword_1EE11E9E0;
  if (!qword_1EE11E9E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE11E9E0);
  }

  return result;
}

double sub_1DAAA47A0(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    *(a1 + 136) = 0;
    result = 0.0;
    *(a1 + 120) = 0u;
    *(a1 + 104) = 0u;
    *(a1 + 88) = 0u;
    *(a1 + 72) = 0u;
    *(a1 + 56) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(a1 + 144) = 1;
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
      result = 0.0;
      *(a1 + 64) = 0u;
      *(a1 + 80) = 0u;
      *(a1 + 32) = 0u;
      *(a1 + 48) = 0u;
      *a1 = 0u;
      *(a1 + 16) = 0u;
      *(a1 + 96) = 0;
      *(a1 + 104) = 2 * -a2;
      *(a1 + 112) = 0u;
      *(a1 + 128) = 0u;
      return result;
    }

    *(a1 + 144) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1DAAA4820()
{
  result = qword_1EE11E9D8;
  if (!qword_1EE11E9D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE11E9D8);
  }

  return result;
}

uint64_t sub_1DAAA4874(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 144))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 104) >> 1;
  if (v2 > 0x80000000)
  {
    v3 = ~v2;
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

uint64_t sub_1DAAA48D0@<X0>(uint64_t a1@<X8>)
{
  v30 = a1;
  v2 = MEMORY[0x1E69E6720];
  sub_1DAA7BD0C(0, &qword_1EE11F170, MEMORY[0x1E695A3E8], MEMORY[0x1E69E6720]);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v29 = &v27 - v5;
  sub_1DAA7BD0C(0, &qword_1EE123A80, MEMORY[0x1E6968E10], v2);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v27 - v8;
  v28 = sub_1DACB7904();
  v10 = *(v28 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v28);
  v12 = type metadata accessor for SymbolEntity();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DAA7BD0C(0, qword_1EE11EF28, type metadata accessor for SymbolEntity, v2);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v20 = &v27 - v19;
  v21 = sub_1DACB92C4();
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v23 = *v1;
  sub_1DACB92B4();
  sub_1DACB92A4();
  sub_1DACB6ED4();
  if ((*(v13 + 48))(v20, 1, v12))
  {
    sub_1DAAA2DBC(v20, qword_1EE11EF28, type metadata accessor for SymbolEntity);
  }

  else
  {
    sub_1DAAA2C80(v20, v16);
    sub_1DAAA2DBC(v20, qword_1EE11EF28, type metadata accessor for SymbolEntity);
    v24 = *(v16 + 2);
    sub_1DACB6ED4();
    sub_1DAA88E38(v16, type metadata accessor for SymbolEntity);
  }

  sub_1DACB9294();

  sub_1DACB92A4();
  sub_1DACB78F4();
  sub_1DACB78D4();
  (*(v10 + 56))(v9, 0, 1, v28);
  v25 = sub_1DACB7164();
  (*(*(v25 - 8) + 56))(v29, 1, 1, v25);
  return sub_1DACB7174();
}

uint64_t sub_1DAAA4D1C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 168) = 0;
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
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 176) = 1;
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

    *(result + 176) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1DAAA4D88(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 176))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

int64_t sub_1DAAA4DD0(int64_t result)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v1 = result;
    v2 = MEMORY[0x1E69E7CC0];
    if (result)
    {
      v23 = MEMORY[0x1E69E7CC0];
      sub_1DAAA50F8(0, result, 0);
      v2 = v23;
      do
      {
        v3 = sub_1DAAA525C(1);
        if (qword_1EE11EA20 != -1)
        {
          swift_once();
        }

        v20 = xmmword_1EE11EA88;
        v21 = xmmword_1EE11EA98;
        v22 = qword_1EE11EAA8;
        v16 = xmmword_1EE11EA48;
        v17 = xmmword_1EE11EA58;
        v18 = xmmword_1EE11EA68;
        v19 = xmmword_1EE11EA78;
        v14 = xmmword_1EE11EA28;
        v15 = xmmword_1EE11EA38;
        sub_1DAAA5860(&v14, v13);
        v23 = v2;
        v5 = *(v2 + 16);
        v4 = *(v2 + 24);
        if (v5 >= v4 >> 1)
        {
          sub_1DAAA50F8((v4 > 1), v5 + 1, 1);
          v2 = v23;
        }

        *&v13[88] = v19;
        *&v13[104] = v20;
        *&v13[120] = v21;
        *&v13[24] = v15;
        *&v13[40] = v16;
        *&v13[56] = v17;
        *&v13[72] = v18;
        *&v13[136] = v22;
        *&v13[8] = v14;
        *v13 = v3;
        sub_1DAAA58BC(v13);
        *(v2 + 16) = v5 + 1;
        v6 = (v2 + 144 * v5);
        v6[2] = *v13;
        v7 = *&v13[16];
        v8 = *&v13[32];
        v9 = *&v13[64];
        v6[5] = *&v13[48];
        v6[6] = v9;
        v6[3] = v7;
        v6[4] = v8;
        v10 = *&v13[80];
        v11 = *&v13[96];
        v12 = *&v13[128];
        v6[9] = *&v13[112];
        v6[10] = v12;
        v6[7] = v10;
        v6[8] = v11;
        --v1;
      }

      while (v1);
    }

    return v2;
  }

  return result;
}

__n128 __swift_memcpy176_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  result = a2[7];
  v8 = a2[8];
  v9 = a2[10];
  *(a1 + 144) = a2[9];
  *(a1 + 160) = v9;
  *(a1 + 112) = result;
  *(a1 + 128) = v8;
  return result;
}

char *sub_1DAAA4FB8(char *result, int64_t a2, char a3, char *a4)
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
    sub_1DAA495C0(0, &qword_1EE11F4E8, &type metadata for Headline, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 144);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[144 * v8])
    {
      memmove(v12, v13, 144 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1DAAA50F8(char *a1, int64_t a2, char a3)
{
  result = sub_1DAAA4FB8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_1DAAA5118(_OWORD *a1, _OWORD *a2)
{
  v3 = a1[7];
  v22[6] = a1[6];
  v22[7] = v3;
  v22[8] = a1[8];
  v4 = a1[3];
  v22[2] = a1[2];
  v22[3] = v4;
  v5 = a1[5];
  v22[4] = a1[4];
  v22[5] = v5;
  v6 = a1[1];
  v22[0] = *a1;
  v22[1] = v6;
  sub_1DAA9B6F0(v22);
  v7 = [*sub_1DAA9B6E0(v22) identifier];
  v8 = sub_1DACB9324();
  v10 = v9;

  v11 = a2[7];
  v21[6] = a2[6];
  v21[7] = v11;
  v21[8] = a2[8];
  v12 = a2[3];
  v21[2] = a2[2];
  v21[3] = v12;
  v13 = a2[5];
  v21[4] = a2[4];
  v21[5] = v13;
  v14 = a2[1];
  v21[0] = *a2;
  v21[1] = v14;
  sub_1DAA9B6F0(v21);
  v15 = [*sub_1DAA9B6E0(v21) identifier];
  v16 = sub_1DACB9324();
  v18 = v17;

  if (v8 == v16 && v10 == v18)
  {
    v19 = 1;
  }

  else
  {
    v19 = sub_1DACBA174();
  }

  return v19 & 1;
}

id sub_1DAAA525C(char a1)
{
  v2 = sub_1DACB7CC4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1DACB7D04();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = [objc_allocWithZone(MEMORY[0x1E69B5310]) init];
  sub_1DACB6D04();
  sub_1DACB7CE4();
  (*(v8 + 8))(v11, v7);
  v13 = sub_1DACB92F4();

  [v12 setArticleID_];

  sub_1DAAA55BC(0x140000000ALL);
  v14 = sub_1DACB92F4();

  [v12 setTitle_];

  sub_1DAAA55BC(0x140000000ALL);
  v15 = sub_1DACB92F4();

  [v12 setShortExcerpt_];

  sub_1DAAA55BC(0x140000000ALL);
  v16 = sub_1DACB92F4();

  [v12 setSourceName_];

  sub_1DAA82C34(1);
  v17 = sub_1DACB7C04();
  (*(v3 + 8))(v6, v2);
  [v12 setPublishDate_];

  sub_1DAAA55BC(0x300000001);
  v18 = sub_1DACB92F4();

  [v12 setAccessoryText_];

  if (a1)
  {
    [v12 setHasThumbnail_];
    v19 = [objc_allocWithZone(type metadata accessor for StubAssetHandle()) init];
    v20 = [objc_opt_self() headlineThumbnailWithAssetHandle:v19 thumbnailSize:{1000.0, 1000.0}];

    [v12 setThumbnail_];
  }

  return v12;
}

uint64_t sub_1DAAA55BC(uint64_t a1)
{
  v1 = a1;
  v2 = arc4random_uniform(HIDWORD(a1));
  if (v2 <= v1)
  {
    v3 = v1;
  }

  else
  {
    v3 = v2;
  }

  if (v3)
  {
    v14 = MEMORY[0x1E69E7CC0];
    sub_1DAA5859C(0, v3, 0);
    v4 = v14;
    do
    {
      v5 = sub_1DAA58424(0x800000003);
      v15 = v4;
      v8 = *(v4 + 16);
      v7 = *(v4 + 24);
      if (v8 >= v7 >> 1)
      {
        v10 = v5;
        v11 = v6;
        sub_1DAA5859C((v7 > 1), v8 + 1, 1);
        v6 = v11;
        v5 = v10;
        v4 = v15;
      }

      *(v4 + 16) = v8 + 1;
      v9 = v4 + 16 * v8;
      *(v9 + 32) = v5;
      *(v9 + 40) = v6;
      --v3;
    }

    while (v3);
  }

  sub_1DAA613E8();
  sub_1DAA587CC();
  v12 = sub_1DACB9214();

  return v12;
}

double sub_1DAAA5824()
{
  *&xmmword_1EE11EA28 = MEMORY[0x1E69E7CC0];
  result = 0.0;
  *(&xmmword_1EE11EA28 + 8) = 0u;
  *(&xmmword_1EE11EA38 + 8) = 0u;
  *(&xmmword_1EE11EA48 + 8) = 0u;
  *(&xmmword_1EE11EA58 + 8) = 0u;
  *(&xmmword_1EE11EA68 + 8) = 0u;
  *(&xmmword_1EE11EA78 + 1) = 0u;
  *(&xmmword_1EE11EA88 + 8) = 0u;
  *(&xmmword_1EE11EA98 + 8) = 0u;
  return result;
}

uint64_t sub_1DAAA58CC()
{
  v1 = *v0;
  sub_1DACB82E4();
  sub_1DACB71F4();
  sub_1DACB82D4();

  sub_1DAA61630(0, &qword_1EE11FDF0, MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69D6B18]);
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  return sub_1DACB8AE4();
}

uint64_t sub_1DAAA5970()
{
  v61 = sub_1DACB7CC4();
  v1 = *(v61 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v61);
  v60 = v52 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = type metadata accessor for EarningsCalendarEventModel();
  v55 = *(v59 - 8);
  v4 = *(v55 + 64);
  MEMORY[0x1EEE9AC00](v59);
  v54 = v52 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DAA5D42C(0, &qword_1EE11D1A8, sub_1DAA62C68, MEMORY[0x1E69E6720]);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x1EEE9AC00](v6 - 8);
  v10 = (v52 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v8);
  v62 = (v52 - v11);
  if (qword_1EE11DF88 != -1)
  {
    goto LABEL_30;
  }

  while (1)
  {
    v12 = qword_1EE13E268;
    sub_1DACB9914();
    v52[1] = v12;
    v53 = MEMORY[0x1E69E7CC0];
    sub_1DACB8C64();
    swift_beginAccess();
    v52[0] = v0;
    v13 = *(v0 + 24);
    v14 = v13 + 64;
    v15 = 1 << *(v13 + 32);
    v16 = -1;
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    v17 = v16 & *(v13 + 64);
    v18 = (v15 + 63) >> 6;
    v57 = (v1 + 8);
    v58 = (v1 + 16);
    v56 = v13;
    sub_1DACB71E4();
    v19 = 0;
LABEL_5:
    v20 = v19;
    if (v17)
    {
      break;
    }

LABEL_7:
    if (v18 <= v20 + 1)
    {
      v22 = v20 + 1;
    }

    else
    {
      v22 = v18;
    }

    v23 = v22 - 1;
    while (1)
    {
      v21 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v21 >= v18)
      {
        sub_1DAA62C68(0);
        v31 = v41;
        (*(*(v41 - 8) + 56))(v10, 1, 1, v41);
        v17 = 0;
        goto LABEL_15;
      }

      v17 = *(v14 + 8 * v21);
      ++v20;
      if (v17)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_30:
    swift_once();
  }

  while (1)
  {
    v21 = v20;
LABEL_14:
    v24 = __clz(__rbit64(v17));
    v17 &= v17 - 1;
    v25 = v24 | (v21 << 6);
    v26 = (*(v56 + 48) + 16 * v25);
    v27 = *v26;
    v28 = v26[1];
    v29 = v54;
    sub_1DABB2464(*(v56 + 56) + *(v55 + 72) * v25, v54, type metadata accessor for EarningsCalendarEventModel);
    sub_1DAA62C68(0);
    v31 = v30;
    v32 = *(v30 + 48);
    *v10 = v27;
    v10[1] = v28;
    sub_1DAA7C5C4(v29, v10 + v32, type metadata accessor for EarningsCalendarEventModel);
    (*(*(v31 - 8) + 56))(v10, 0, 1, v31);
    sub_1DACB71E4();
    v23 = v21;
LABEL_15:
    v33 = v62;
    sub_1DAAA60D8(v10, v62);
    sub_1DAA62C68(0);
    if ((*(*(v31 - 8) + 48))(v33, 1, v31) == 1)
    {
      break;
    }

    v34 = v23;
    v35 = v33;
    v37 = *v33;
    v36 = v33[1];
    v1 = v35 + *(v31 + 48);
    v0 = v60;
    v38 = v61;
    (*v58)(v60, v1 + *(v59 + 24), v61);
    sub_1DABB24CC(v1, type metadata accessor for EarningsCalendarEventModel);
    sub_1DACB7C34();
    v40 = v39;
    (*v57)(v0, v38);
    if (v40 < 0.0)
    {
      v19 = v34;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        v42 = v53;
      }

      else
      {
        v42 = sub_1DAA9A3B0(0, *(v53 + 2) + 1, 1, v53);
      }

      v0 = *(v42 + 2);
      v43 = *(v42 + 3);
      v1 = v0 + 1;
      if (v0 >= v43 >> 1)
      {
        v42 = sub_1DAA9A3B0((v43 > 1), v0 + 1, 1, v42);
      }

      *(v42 + 2) = v1;
      v53 = v42;
      v44 = &v42[16 * v0];
      *(v44 + 4) = v37;
      *(v44 + 5) = v36;
      goto LABEL_5;
    }

    v20 = v34;
    if (!v17)
    {
      goto LABEL_7;
    }
  }

  v45 = v53;
  if (*(v53 + 2))
  {
    sub_1DAA41D64();
    v46 = swift_allocObject();
    *(v46 + 16) = xmmword_1DACC1D20;
    v63 = v45;
    v47 = MEMORY[0x1E69E6158];
    sub_1DAA61630(0, &qword_1EE123EA0, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
    sub_1DAA587CC();
    sub_1DACB71E4();
    v48 = sub_1DACB9214();
    v50 = v49;
    *(v46 + 56) = v47;
    *(v46 + 64) = sub_1DAA443C8();
    *(v46 + 32) = v48;
    *(v46 + 40) = v50;
    sub_1DACB9914();
    sub_1DACB8C64();

    sub_1DABB1988(v45);
  }

  else
  {

    sub_1DACB9914();
    return sub_1DACB8C64();
  }
}

uint64_t sub_1DAAA6004()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = [v0 bundleIdentifier];

  if (v1)
  {
    sub_1DACB9324();
  }

  sub_1DAA41DCC();
  result = sub_1DACB9AE4();
  qword_1EE13E268 = result;
  return result;
}

uint64_t sub_1DAAA60D8(uint64_t a1, uint64_t a2)
{
  sub_1DAA5D42C(0, &qword_1EE11D1A8, sub_1DAA62C68, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DAAA61B4@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = sub_1DACB9324();
  *a1 = result;
  a1[1] = v5;
  return result;
}

uint64_t sub_1DAAA61E0()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1DAAA6260()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1DAAA62A0()
{
  v1 = (type metadata accessor for ForYouConfigRecord(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = *(v0 + v3 + 8);

  v6 = (v0 + v3 + v1[7]);
  v7 = *v6;

  v8 = *(type metadata accessor for ForYouConfigRecord.Configuration.TopStories(0) + 20);
  v9 = sub_1DACB7CC4();
  (*(*(v9 - 8) + 8))(&v6[v8], v9);
  v10 = *(v0 + v3 + v1[8]);

  v11 = *(v0 + v3 + v1[9] + 8);

  v12 = *(v0 + v3 + v1[10]);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1DAAA63D0()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1DAAA6410()
{
  v1 = sub_1DACB7F54();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1DAAA6498()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1DAAA64D0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_1DACB6FD4();
  *a2 = result;
  return result;
}

uint64_t sub_1DAAA64FC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  result = sub_1DACB6FB4();
  *a2 = v5;
  return result;
}

uint64_t sub_1DAAA65B0()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1DAAA6684()
{
  v1 = *(v0 + 40);

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1DAAA66C4()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1DAAA66FC()
{
  v1 = *(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1DAAA6734()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 48);

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1DAAA6788(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1DACB7CC4();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 20);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = type metadata accessor for RawAttributionSource(0);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 28);

      return v14(v15, a2, v13);
    }
  }
}

void *sub_1DAAA68AC(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = sub_1DACB7CC4();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 20);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = type metadata accessor for RawAttributionSource(0);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 28);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_1DAAA69FC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_1DACB6FD4();
  *a2 = result;
  return result;
}

double sub_1DAAA6A28@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  sub_1DACB6FB4();
  *a2 = v5;
  result = *&v6;
  *(a2 + 8) = v6;
  return result;
}

uint64_t sub_1DAAA6B0C()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1DAAA6B4C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1DAAA6BA0()
{
  v1 = *(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1DAAA6BD8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(a1 + 16);
  result = sub_1DACB6EF4();
  *a2 = result;
  return result;
}

uint64_t sub_1DAAA6C04()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1DAAA6C40()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1DAAA6C78()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

double sub_1DAAA6CB8@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  *a1 = xmmword_1DACC57A0;
  return result;
}

void sub_1DAAA6CDC()
{
  if (MEMORY[0x1E69E7D58])
  {
    sub_1DAB0FE6C(0, &qword_1ECBE6F80, sub_1DAB0FE38, MEMORY[0x1E69E8300]);
  }
}

uint64_t sub_1DAAA6D48()
{
  if (v0[3])
  {

    v1 = v0[4];

    v2 = v0[6];
  }

  v3 = v0[9];

  v4 = v0[10];

  v5 = v0[12];

  v6 = v0[15];

  v7 = v0[17];

  return MEMORY[0x1EEE6BDD0](v0, 144, 7);
}

uint64_t sub_1DAAA6DBC()
{
  v1 = v0[3];

  v2 = v0[4];

  v3 = v0[6];

  if (v0[9])
  {

    v4 = v0[10];

    v5 = v0[12];
  }

  v6 = v0[15];

  v7 = v0[17];

  return MEMORY[0x1EEE6BDD0](v0, 144, 7);
}

uint64_t sub_1DAAA6E30()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[7];

  v4 = v0[8];

  v5 = v0[10];

  v6 = v0[13];

  v7 = v0[15];

  return MEMORY[0x1EEE6BDD0](v0, 128, 7);
}

uint64_t sub_1DAAA6E98()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[7];

  v4 = v0[9];

  v5 = v0[12];

  v6 = v0[14];

  v7 = v0[16];

  v8 = v0[18];

  if (v0[20])
  {

    v9 = v0[22];

    v10 = v0[24];

    v11 = v0[26];

    v12 = v0[29];

    v13 = v0[31];

    v14 = v0[33];

    v15 = v0[35];
  }

  v16 = v0[37];

  v17 = v0[38];

  v18 = v0[40];

  v19 = v0[43];

  v20 = v0[45];

  return MEMORY[0x1EEE6BDD0](v0, 368, 7);
}

uint64_t sub_1DAAA6F74()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[7];

  v4 = v0[9];

  v5 = v0[12];

  v6 = v0[14];

  v7 = v0[16];

  v8 = v0[18];

  v9 = v0[20];

  v10 = v0[21];

  v11 = v0[23];

  if (v0[26])
  {

    v12 = v0[28];

    v13 = v0[30];

    v14 = v0[32];

    v15 = v0[35];

    v16 = v0[37];

    v17 = v0[39];

    v18 = v0[41];
  }

  v19 = v0[43];

  v20 = v0[45];

  return MEMORY[0x1EEE6BDD0](v0, 368, 7);
}

uint64_t sub_1DAAA7054()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[6];

  v4 = v0[8];

  v5 = v0[10];

  v6 = v0[13];

  v7 = v0[15];

  v8 = v0[17];

  v9 = v0[19];

  v10 = v0[21];

  v11 = v0[22];

  v12 = v0[24];

  v13 = v0[27];

  v14 = v0[29];

  return MEMORY[0x1EEE6BDD0](v0, 240, 7);
}

uint64_t sub_1DAAA70F4()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[7];

  v4 = v0[9];

  v5 = v0[12];

  v6 = v0[14];

  v7 = v0[16];

  v8 = v0[18];

  v9 = v0[20];

  v10 = v0[21];

  v11 = v0[23];

  v12 = v0[26];

  v13 = v0[28];

  return MEMORY[0x1EEE6BDD0](v0, 232, 7);
}

uint64_t sub_1DAAA718C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1DAAA71C4()
{
  v1 = v0[3];

  v2 = v0[4];

  v3 = v0[6];

  v4 = v0[8];

  v5 = v0[10];

  v6 = v0[12];

  return MEMORY[0x1EEE6BDD0](v0, 104, 7);
}

uint64_t sub_1DAAA7224()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1DAAA725C()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[6];

  v4 = v0[7];

  v5 = v0[9];

  v6 = v0[12];

  return MEMORY[0x1EEE6BDD0](v0, 104, 7);
}

uint64_t sub_1DAAA72CC()
{
  v1 = v0[3];

  v2 = v0[4];

  v3 = v0[6];

  v4 = v0[9];

  v5 = v0[11];

  v6 = v0[13];

  return MEMORY[0x1EEE6BDD0](v0, 112, 7);
}

uint64_t sub_1DAAA732C()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[7];

  v4 = v0[9];

  v5 = v0[10];

  v6 = v0[12];

  return MEMORY[0x1EEE6BDD0](v0, 106, 7);
}

uint64_t sub_1DAAA73F0()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 48);

  v3 = *(v0 + 64);

  return MEMORY[0x1EEE6BDD0](v0, 72, 7);
}

uint64_t sub_1DAAA74A0()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[7];

  v4 = v0[9];

  v5 = v0[12];

  v6 = v0[14];

  v7 = v0[16];

  v8 = v0[18];

  if (v0[20])
  {

    v9 = v0[22];

    v10 = v0[24];

    v11 = v0[26];

    v12 = v0[29];

    v13 = v0[31];

    v14 = v0[33];

    v15 = v0[35];
  }

  v16 = v0[37];

  v17 = v0[39];

  return MEMORY[0x1EEE6BDD0](v0, 320, 7);
}

uint64_t sub_1DAAA7568()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[6];

  v4 = v0[8];

  v5 = v0[10];

  v6 = v0[13];

  v7 = v0[15];

  v8 = v0[17];

  v9 = v0[19];

  v10 = v0[21];

  v11 = v0[23];

  return MEMORY[0x1EEE6BDD0](v0, 192, 7);
}

uint64_t sub_1DAAA75F0()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1DAAA76CC()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1DAAA7704()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[7];

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_1DAAA774C()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1DAAA7784()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[6];

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1DAAA780C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1DACB7CC4();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1DAAA7878(uint64_t a1, uint64_t a2)
{
  v4 = sub_1DACB7CC4();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1DAAA78F4()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1DAAA793C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_1DACB6FD4();
  *a2 = result;
  return result;
}

uint64_t sub_1DAAA7968@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(a1 + 8);
  result = sub_1DACB6FD4();
  *a2 = result;
  return result;
}

double sub_1DAAA79BC@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 8);
  sub_1DACB6FB4();
  *a2 = v5;
  result = *&v6;
  *(a2 + 8) = v6;
  return result;
}

uint64_t sub_1DAAA7A80()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1DAAA7AC8()
{
  v1 = *(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 25, 7);
}

uint64_t sub_1DAAA7B4C()
{
  swift_unknownObjectUnownedDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1DAAA7B84()
{
  if (*(v0 + 24))
  {
    v1 = *(v0 + 32);
  }

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1DAAA7BD4()
{
  if (*(v0 + 24))
  {
    v1 = *(v0 + 32);
  }

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1DAAA7C1C()
{
  if (*(v0 + 16))
  {
    v1 = *(v0 + 24);
  }

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1DAAA7C5C()
{
  if (*(v0 + 16))
  {
    v1 = *(v0 + 24);
  }

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1DAAA7CB4()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1DAAA7CEC()
{
  v1 = *(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1DAAA7D2C()
{
  v1 = 1802658148;
  if (*v0 != 1)
  {
    v1 = 0x6574616C706D6574;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x746867696CLL;
  }
}

uint64_t sub_1DAAA7D7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DAB4C41C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DAAA7E80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 12)
  {
    v4 = *(a1 + 8) >> 60;
    if (((4 * v4) & 0xC) != 0)
    {
      return 16 - ((4 * v4) & 0xC | (v4 >> 2));
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = type metadata accessor for RawAttributionSourceLogo.Unresolved.Variant(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

void *sub_1DAAA7F38(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 12)
  {
    *result = 0;
    result[1] = (((-a2 >> 2) & 3) - 4 * a2) << 60;
  }

  else
  {
    v7 = type metadata accessor for RawAttributionSourceLogo.Unresolved.Variant(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1DAAA7FE8()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1DAAA8030()
{
  v1 = sub_1DACB7CC4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64) + v4;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 1, v3 | 7);
}

uint64_t sub_1DAAA80BC()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 33, 7);
}

uint64_t sub_1DAAA8108()
{
  v1 = *(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1DAAA8148()
{
  v1 = (type metadata accessor for NewsFeedRequest() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = *(v0 + v3 + 8);

  v6 = v1[8];
  v7 = sub_1DACB7CC4();
  v8 = *(*(v7 - 8) + 8);
  v8(v0 + v3 + v6, v7);
  v8(v0 + v3 + v1[9], v7);
  v9 = (v0 + v3 + v1[10]);
  v10 = v9[1];

  v11 = v9[3];

  v12 = v9[5];

  v13 = v9[7];

  v14 = v9[10];

  v15 = v9[12];

  v16 = v9[14];

  v17 = v9[16];

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1DAAA82A8()
{
  v1 = *(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 81, 7);
}

uint64_t sub_1DAAA832C()
{
  v1 = *(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1DAAA8364(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1DACB7CC4();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1DAAA8410(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1DACB7CC4();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1DAAA84B4()
{
  v1 = *(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1DAAA84EC()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1DAAA852C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1DAAA8564()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1DAAA85A4()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[6];

  v4 = v0[8];

  return MEMORY[0x1EEE6BDD0](v0, 72, 7);
}

uint64_t sub_1DAAA85F4()
{
  v1 = *(v0 + 64);
  if (v1 <= 2)
  {
    if (*(v0 + 64))
    {
      if (v1 == 1)
      {
        v4 = *(v0 + 16);
        swift_unknownObjectRelease();
      }

      else if (v1 == 2)
      {
        __swift_destroy_boxed_opaque_existential_1((v0 + 16));
      }
    }

    else
    {
      v3 = *(v0 + 16);
      swift_unknownObjectRelease();
      __swift_destroy_boxed_opaque_existential_1((v0 + 24));
    }
  }

  else
  {
    if (*(v0 + 64) <= 6u)
    {
      if (v1 != 3 && v1 != 6)
      {
        goto LABEL_13;
      }

LABEL_12:
      v2 = *(v0 + 16);

      goto LABEL_13;
    }

    if (v1 == 7 || v1 == 8)
    {
      goto LABEL_12;
    }
  }

LABEL_13:

  return MEMORY[0x1EEE6BDD0](v0, 65, 7);
}

uint64_t sub_1DAAA86AC()
{
  v1 = *(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1DAAA86E4()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1DAAA871C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 16);
  result = sub_1DACB6ED4();
  *a2 = v5;
  a2[1] = v6;
  return result;
}

uint64_t sub_1DAAA8758(uint64_t *a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v4 = *a1;
  v5 = a1[1];
  sub_1DACB71E4();
  return sub_1DACB6EE4();
}

uint64_t sub_1DAAA8794@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 24);
  result = sub_1DACB6ED4();
  *a2 = v5;
  a2[1] = v6;
  return result;
}

uint64_t sub_1DAAA87D0(uint64_t *a1, uint64_t a2)
{
  v2 = *(a2 + 24);
  v4 = *a1;
  v5 = a1[1];
  sub_1DACB71E4();
  return sub_1DACB6EE4();
}

uint64_t sub_1DAAA880C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 32);
  result = sub_1DACB6ED4();
  *a2 = v5;
  a2[1] = v6;
  return result;
}

uint64_t sub_1DAAA8848(uint64_t *a1, uint64_t a2)
{
  v2 = *(a2 + 32);
  v4 = *a1;
  v5 = a1[1];
  sub_1DACB71E4();
  return sub_1DACB6EE4();
}

uint64_t sub_1DAAA88CC()
{
  if (v0[3] >= 2uLL)
  {

    v1 = v0[5];

    v2 = v0[7];

    v3 = v0[9];

    v4 = v0[12];

    v5 = v0[14];

    v6 = v0[16];

    v7 = v0[18];
  }

  return MEMORY[0x1EEE6BDD0](v0, 152, 7);
}

uint64_t sub_1DAAA8944()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1DAAA897C()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1DAAA89C4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(a1 + 8);
  result = sub_1DACB6EF4();
  *a2 = result;
  return result;
}

uint64_t sub_1DAAA89F0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(a1 + 16);
  result = sub_1DACB6EF4();
  *a2 = result;
  return result;
}

uint64_t sub_1DAAA8A1C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(a1 + 24);
  result = sub_1DACB6EF4();
  *a2 = result;
  return result;
}

uint64_t sub_1DAAA8A48()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1DAAA8A94()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1DAAA8AD4()
{
  v1 = sub_1DACB81A4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1DAAA8B9C()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

double sub_1DAAA8C34@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *a1;
  sub_1DACB6FB4();
  *a2 = v5;
  a2[1] = v6;
  result = *&v7;
  a2[2] = v7;
  a2[3] = v8;
  return result;
}

uint64_t sub_1DAAA8C7C@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + 8);
  result = sub_1DACB6FB4();
  *a2 = v5;
  return result;
}

uint64_t sub_1DAAA8D4C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_1DACB6FD4();
  *a2 = result;
  return result;
}

uint64_t sub_1DAAA8D78@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(a1 + 8);
  result = sub_1DACB6FD4();
  *a2 = result;
  return result;
}

uint64_t sub_1DAAA8DA8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  result = sub_1DACB6ED4();
  *a2 = v5;
  a2[1] = v6;
  return result;
}

uint64_t sub_1DAAA8DE8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 8);
  result = sub_1DACB6ED4();
  *a2 = v5;
  a2[1] = v6;
  return result;
}

double sub_1DAAA8E2C@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *a1;
  sub_1DACB6FB4();
  result = *&v5;
  *a2 = v5;
  return result;
}

uint64_t sub_1DAAA8E6C@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + 8);
  result = sub_1DACB6FB4();
  *a2 = v5;
  return result;
}

uint64_t sub_1DAAA8EAC@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + 16);
  result = sub_1DACB6FB4();
  *a2 = v5;
  return result;
}

uint64_t sub_1DAAA8EEC@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + 24);
  result = sub_1DACB6FB4();
  *a2 = v5;
  return result;
}

uint64_t sub_1DAAA8FBC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_1DACB6FD4();
  *a2 = result;
  return result;
}

uint64_t sub_1DAAA8FE8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(a1 + 8);
  result = sub_1DACB6FD4();
  *a2 = result;
  return result;
}

uint64_t sub_1DAAA9014@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(a1 + 24);
  result = sub_1DACB6FD4();
  *a2 = result;
  return result;
}

uint64_t sub_1DAAA9040@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(a1 + 16);
  result = sub_1DACB6FD4();
  *a2 = result;
  return result;
}

uint64_t sub_1DAAA9078@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  result = sub_1DACB6ED4();
  *a2 = v5;
  a2[1] = v6;
  return result;
}

uint64_t sub_1DAAA90B8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 8);
  result = sub_1DACB6ED4();
  *a2 = v5;
  a2[1] = v6;
  return result;
}

uint64_t sub_1DAAA90F8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 16);
  result = sub_1DACB6ED4();
  *a2 = v5;
  a2[1] = v6;
  return result;
}

uint64_t sub_1DAAA9138@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 24);
  result = sub_1DACB6ED4();
  *a2 = v5;
  a2[1] = v6;
  return result;
}

uint64_t sub_1DAAA9224(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1DACB7CC4();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1DAAA92D0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1DACB7CC4();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1DAAA9384()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[6];

  v4 = v0[8];

  v5 = v0[10];

  v6 = v0[13];

  v7 = v0[15];

  v8 = v0[17];

  v9 = v0[19];

  return MEMORY[0x1EEE6BDD0](v0, 160, 7);
}

uint64_t sub_1DAAA93FC()
{
  v1 = (type metadata accessor for EarningsCalendarEventModel() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 160) & ~v2;
  v4 = *(*v1 + 64);
  v5 = *(v0 + 2);

  v6 = *(v0 + 4);

  v7 = *(v0 + 6);

  v8 = *(v0 + 8);

  v9 = *(v0 + 10);

  v10 = *(v0 + 13);

  v11 = *(v0 + 15);

  v12 = *(v0 + 17);

  v13 = *(v0 + 19);

  v14 = *&v0[v3 + 8];

  v15 = *&v0[v3 + 24];

  v16 = v1[8];
  v17 = sub_1DACB7CC4();
  (*(*(v17 - 8) + 8))(&v0[v3 + v16], v17);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1DAAA9534()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

void sub_1DAAA9574()
{
  if (MEMORY[0x1E69E7D58])
  {
    sub_1DABB2914();
  }
}

void sub_1DAAA95B0()
{
  if (MEMORY[0x1E69E7D58])
  {
    sub_1DABB2998(0, &qword_1ECBE8580, sub_1DABB2964, MEMORY[0x1E69E8300]);
  }
}

uint64_t sub_1DAAA961C()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 24));

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_1DAAA965C()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1DAAA9694()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1DAAA96D4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_1DACB6FD4();
  *a2 = result;
  return result;
}

uint64_t sub_1DAAA9700@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  result = sub_1DACB6FB4();
  *a2 = v5;
  a2[1] = v6;
  return result;
}

uint64_t sub_1DAAA9740@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 8);
  result = sub_1DACB6FB4();
  *a2 = v5;
  return result;
}

uint64_t sub_1DAAA983C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(a1 + 8);
  result = sub_1DACB6FD4();
  *a2 = result;
  return result;
}

uint64_t sub_1DAAA9868(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1DACB7CC4();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_1DACB7AB4();
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 24) + 8);
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_1DAAA9978(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_1DACB7CC4();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = sub_1DACB7AB4();
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24) + 8) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_1DAAA9A84@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_1DACB6FD4();
  *a2 = result;
  return result;
}

uint64_t sub_1DAAA9B6C()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1DAAA9BAC()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1DAAA9BE4()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1DAAA9C24()
{
  v1 = *(v0 + 16);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  v6 = sub_1DACB8204();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v4 + v5 + v8) & ~v8;
  v10 = v3 | v8;
  v11 = (*(v7 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  v12 = *(v0 + 32);

  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);

  return MEMORY[0x1EEE6BDD0](v0, v11 + 9, v10 | 7);
}

uint64_t sub_1DAAA9D78()
{
  v1 = *(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1DAAA9DB8()
{
  v1 = *(v0 + 16);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);
  v6 = sub_1DACB8204();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v4 + v5 + v8) & ~v8;
  v10 = v3 | v8;
  v11 = (*(v7 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);

  return MEMORY[0x1EEE6BDD0](v0, v11 + 9, v10 | 7);
}

uint64_t sub_1DAAA9F64()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1DAAA9F9C()
{
  v1 = *(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1DAAA9FD4()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 40);

  v3 = *(v0 + 48);

  v4 = *(v0 + 64);

  return MEMORY[0x1EEE6BDD0](v0, 72, 7);
}

uint64_t sub_1DAAAA038()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1DAAAA070(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 56);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    sub_1DAA492B4();
    v10 = v9;
    v11 = *(*(v9 - 8) + 48);
    v12 = a1 + *(a3 + 36);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_1DAAAA128(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 56) = a2;
  }

  else
  {
    sub_1DAA492B4();
    v8 = v7;
    v9 = *(*(v7 - 8) + 56);
    v10 = v5 + *(a4 + 36);

    return v9(v10, a2, a2, v8);
  }

  return result;
}

uint64_t sub_1DAAAA1EC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_1DACB6FD4();
  *a2 = result;
  return result;
}

uint64_t sub_1DAAAA218@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(a1 + 8);
  result = sub_1DACB6FD4();
  *a2 = result;
  return result;
}

double sub_1DAAAA26C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 8);
  sub_1DACB6FB4();
  *a2 = v5;
  result = *&v6;
  *(a2 + 8) = v6;
  return result;
}

uint64_t sub_1DAAAA308()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1DAAAA344()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 40);

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1DAAAA384()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  v3 = *(v0 + 32);

  v4 = *(v0 + 40);

  v5 = *(v0 + 48);

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_1DAAAA3E4()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[6];

  v4 = v0[8];

  v5 = v0[10];

  v6 = v0[13];

  v7 = v0[15];

  v8 = v0[17];

  v9 = v0[19];

  return MEMORY[0x1EEE6BDD0](v0, 169, 7);
}

uint64_t sub_1DAAAA45C()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  v3 = *(v0 + 48);

  v4 = *(v0 + 64);

  v5 = *(v0 + 80);

  v6 = *(v0 + 104);

  v7 = *(v0 + 120);

  v8 = *(v0 + 136);

  v9 = *(v0 + 152);

  v10 = *(v0 + 160);

  v11 = *(v0 + 168);

  v12 = *(v0 + 176);

  v13 = *(v0 + 184);

  v14 = *(v0 + 192);

  return MEMORY[0x1EEE6BDD0](v0, 208, 7);
}

uint64_t sub_1DAAAA504()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[7];

  v4 = v0[9];

  v5 = v0[12];

  v6 = v0[14];

  v7 = v0[16];

  v8 = v0[18];

  return MEMORY[0x1EEE6BDD0](v0, 152, 7);
}

uint64_t sub_1DAAAA574()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[6];

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1DAAAA5BC()
{
  v1 = v0[3];

  v2 = v0[4];

  v3 = v0[6];

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1DAAAA62C()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[7];

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_1DAAAA67C()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1DAAAA6B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1DACB7AB4();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = sub_1DACB7CC4();
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 32);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_1DAAAA7DC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1DACB7AB4();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  else
  {
    v11 = sub_1DACB7CC4();
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 32);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_1DAAAA908()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[5];

  v4 = v0[7];

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_1DAAAA958()
{
  sub_1DABF43C4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t get_enum_tag_for_layout_string_10StocksCore24YahooQuoteDetailResponseV5ValueVy_SuGSg_0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1DAAAAAC8()
{
  if (*v0)
  {
    result = 0x6465736F707865;
  }

  else
  {
    result = 25705;
  }

  *v0;
  return result;
}

uint64_t sub_1DAAAAAFC()
{
  v1 = *(v0 + 16);

  v4 = *(v0 + 152);
  v5 = *(v0 + 160);
  v3 = *(v0 + 136);
  sub_1DAC040B8(*(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88), *(v0 + 96), *(v0 + 104), *(v0 + 112), *(v0 + 120), *(v0 + 128));

  return MEMORY[0x1EEE6BDD0](v0, 176, 7);
}

uint64_t sub_1DAAAAB80()
{
  v4 = *(v0 + 144);
  v5 = *(v0 + 152);
  v3 = *(v0 + 128);
  sub_1DAC040B8(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88), *(v0 + 96), *(v0 + 104), *(v0 + 112), *(v0 + 120));
  v1 = *(v0 + 160);

  return MEMORY[0x1EEE6BDD0](v0, 168, 7);
}

uint64_t sub_1DAAAABEC()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1DAAAAC28()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[6];

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1DAAAAC70()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1DAAAAEE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 112);
  result = sub_1DACB6ED4();
  *a2 = v5;
  *(a2 + 8) = v6;
  return result;
}

uint64_t sub_1DAAAAF30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 120);
  result = sub_1DACB6ED4();
  *a2 = v5;
  *(a2 + 8) = v6;
  return result;
}

uint64_t sub_1DAAAAF78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 128);
  result = sub_1DACB6ED4();
  *a2 = v5;
  *(a2 + 8) = v6;
  return result;
}

uint64_t sub_1DAAAAFC0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 136);
  result = sub_1DACB6ED4();
  *a2 = v5;
  *(a2 + 8) = v6;
  return result;
}

uint64_t sub_1DAAAB008@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 144);
  result = sub_1DACB6ED4();
  *a2 = v5;
  *(a2 + 8) = v6;
  return result;
}

double sub_1DAAAB0A0@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *(a1 + 168);
  sub_1DACB6ED4();
  result = *&v5;
  *a2 = v5;
  return result;
}

uint64_t sub_1DAAAB0E0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1DACB79C4();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1DAAAB11C()
{
  v1 = *(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1DAAAB154()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1DAAAB18C()
{
  v1 = *(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1DAAAB1C4()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 48);

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1DAAAB218()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_1DAAAB254()
{
  v1 = sub_1DACB7AB4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1DAAAB2DC()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1DAAAB314()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1DAAAB34C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1DAAAB384()
{
  MEMORY[0x1E1278D10](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1DAAAB3BC()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[6];

  v4 = v0[7];

  v5 = v0[9];

  v6 = v0[10];

  return MEMORY[0x1EEE6BDD0](v0, 88, 7);
}

uint64_t sub_1DAAAB41C()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[5];

  v4 = v0[7];

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_1DAAAB47C()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[6];

  v4 = v0[8];

  v5 = v0[10];

  v6 = v0[13];

  v7 = v0[15];

  v8 = v0[17];

  v9 = v0[19];

  return MEMORY[0x1EEE6BDD0](v0, 160, 7);
}

uint64_t sub_1DAAAB4F4()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1DAAAB530()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1DAAAB568()
{
  MEMORY[0x1E1278D10](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1DAAAB5A0()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1DAAAB5E0()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[5];

  v4 = v0[7];

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_1DAAAB630()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1DAAAB668(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1DAA49A8C(0, &qword_1EE125280, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 48) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

void sub_1DAAAB764(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_1DAA49A8C(0, &qword_1EE125280, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    v10(a1, a2, a2, v8);
  }

  else
  {
    *(a1 + *(a4 + 48) + 8) = a2;
  }
}

uint64_t sub_1DAAAB850()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1DAAAB888()
{
  MEMORY[0x1E1278D10](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1DAAAB8C0()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[5];

  v4 = v0[7];

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

BOOL sub_1DAAABA10(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v6 = *(a1 + 32);
  v3 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v3;
  v8 = *(a2 + 32);
  return sub_1DAC3C194(v5, v7);
}

uint64_t sub_1DAAABA74@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_1DACB6FD4();
  *a2 = result;
  return result;
}

uint64_t sub_1DAAABB3C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1DACB7CC4();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

void *sub_1DAAABBE8(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_1DACB7CC4();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1DAAABC8C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1DAAABCC4()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1DAAABD04()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1DAAABD40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for ForYouConfigRecord.Configuration(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1DAAABDEC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for ForYouConfigRecord.Configuration(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1DAAABE90(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ForYouConfigRecord.Configuration.TopStories(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1DAAABEFC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ForYouConfigRecord.Configuration.TopStories(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1DAAABF6C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1DACB7CC4();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_1DAAAC018(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_1DACB7CC4();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1DAAAC0BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    sub_1DAC4E944(0, &qword_1EE125280, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
    v9 = v8;
    v10 = *(*(v8 - 8) + 48);
    v11 = a1 + *(a3 + 20);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_1DAAAC19C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    sub_1DAC4E944(0, &qword_1EE125280, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
    v8 = v7;
    v9 = *(*(v7 - 8) + 56);
    v10 = v5 + *(a4 + 20);

    return v9(v10, a2, a2, v8);
  }

  return result;
}

uint64_t sub_1DAAAC270()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1DAAAC2AC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(a1 + 16);
  result = sub_1DACB6EF4();
  *a2 = result;
  return result;
}

uint64_t sub_1DAAAC2D8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(a1 + 24);
  result = sub_1DACB6EF4();
  *a2 = result;
  return result;
}

uint64_t sub_1DAAAC304@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(a1 + 32);
  result = sub_1DACB6EF4();
  *a2 = result;
  return result;
}

uint64_t sub_1DAAAC340()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[7];

  v4 = v0[9];

  v5 = v0[12];

  v6 = v0[14];

  v7 = v0[16];

  v8 = v0[18];

  return MEMORY[0x1EEE6BDD0](v0, 152, 7);
}

uint64_t sub_1DAAAC3B8()
{
  v1 = sub_1DACB7CC4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 57) & ~v3;
  v5 = *(v2 + 64);
  v6 = sub_1DACB8204();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v4 + v5 + v8) & ~v8;
  v10 = v3 | v8;
  v11 = (*(v7 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  v12 = *(v0 + 3);

  v13 = *(v0 + 4);

  v14 = *(v0 + 6);

  (*(v2 + 8))(&v0[v4], v1);
  (*(v7 + 8))(&v0[v9], v6);
  v15 = *&v0[v11 + 8];

  return MEMORY[0x1EEE6BDD0](v0, v11 + 16, v10 | 7);
}

uint64_t sub_1DAAAC530()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[7];

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_1DAAAC578()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1DAAAC5B0()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1DAAAC5F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1DACB7AB4();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1DAAAC6B8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1DACB7AB4();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1DAAAC778()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1DAAAC7B0()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1DAAAC7F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = sub_1DACB87B4();
  v7 = *(*(v6 - 8) + 48);

  return v7(a1, a2, v6);
}

uint64_t sub_1DAAAC860(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = sub_1DACB87B4();
  v8 = *(*(v7 - 8) + 56);

  return v8(a1, a2, a2, v7);
}

uint64_t sub_1DAAAC8D4()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1DAAAC90C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1DAAAC944()
{
  MEMORY[0x1E1278D10](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1DAAAC97C()
{
  v1 = *(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1DAAAC9B4()
{
  v1 = *(v0 + 40);

  v2 = *(v0 + 56);

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_1DAAACA00()
{
  v1 = sub_1DACB7CC4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  v6 = sub_1DACB8204();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v4 + v5 + v8) & ~v8;
  v10 = *(v7 + 64);
  v11 = v3 | v8;
  v12 = *(v0 + 24);

  v13 = *(v0 + 32);

  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);

  return MEMORY[0x1EEE6BDD0](v0, v9 + v10, v11 | 7);
}

uint64_t sub_1DAAACB5C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1DAAACB94()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1DAAACBE0()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1DAAACC20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    sub_1DAA5311C(0, &qword_1EE1263D0, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
    v9 = v8;
    v10 = *(*(v8 - 8) + 48);
    v11 = a1 + *(a3 + 20);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_1DAAACD00(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    sub_1DAA5311C(0, &qword_1EE1263D0, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
    v8 = v7;
    v9 = *(*(v7 - 8) + 56);
    v10 = v5 + *(a4 + 20);

    return v9(v10, a2, a2, v8);
  }

  return result;
}

uint64_t sub_1DAAAD030()
{
  v1 = *(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1DAAAD068(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    sub_1DAA4691C(0, &qword_1EE11FF70, MEMORY[0x1E69D6A58], MEMORY[0x1E69E6720]);
    v9 = v8;
    v10 = *(*(v8 - 8) + 48);
    v11 = a1 + *(a3 + 68);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_1DAAAD148(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    sub_1DAA4691C(0, &qword_1EE11FF70, MEMORY[0x1E69D6A58], MEMORY[0x1E69E6720]);
    v8 = v7;
    v9 = *(*(v7 - 8) + 56);
    v10 = v5 + *(a4 + 68);

    return v9(v10, a2, a2, v8);
  }

  return result;
}

uint64_t sub_1DAAAD21C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1DAAAD25C()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[7];

  v4 = v0[8];

  v5 = v0[10];

  return MEMORY[0x1EEE6BDD0](v0, 90, 7);
}

uint64_t sub_1DAAAD2B4()
{
  v1 = v0[3];

  v2 = v0[4];

  v3 = v0[6];

  v4 = v0[9];

  return MEMORY[0x1EEE6BDD0](v0, 80, 7);
}

uint64_t sub_1DAAAD304()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[5];

  v4 = v0[7];

  return MEMORY[0x1EEE6BDD0](v0, 66, 7);
}

uint64_t sub_1DAAAD354()
{
  v1 = v0[3];

  v2 = v0[4];

  v3 = v0[6];

  v4 = v0[8];

  return MEMORY[0x1EEE6BDD0](v0, 72, 7);
}

uint64_t sub_1DAAAD3A4()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[7];

  v4 = v0[9];

  v5 = v0[12];

  v6 = v0[14];

  v7 = v0[16];

  v8 = v0[18];

  if (v0[20])
  {

    v9 = v0[22];

    v10 = v0[24];

    v11 = v0[26];

    v12 = v0[29];

    v13 = v0[31];

    v14 = v0[33];

    v15 = v0[35];
  }

  v16 = v0[37];

  v17 = v0[38];

  v18 = v0[40];

  return MEMORY[0x1EEE6BDD0](v0, 330, 7);
}

uint64_t sub_1DAAAD470()
{
  v1 = v0[3];

  v2 = v0[4];

  v3 = v0[6];

  v4 = v0[9];

  v5 = v0[11];

  v6 = v0[13];

  v7 = v0[15];

  v8 = v0[18];

  v9 = v0[20];

  v10 = v0[22];

  v11 = v0[24];

  if (v0[26])
  {

    v12 = v0[28];

    v13 = v0[30];

    v14 = v0[32];

    v15 = v0[35];

    v16 = v0[37];

    v17 = v0[39];

    v18 = v0[41];
  }

  return MEMORY[0x1EEE6BDD0](v0, 336, 7);
}

uint64_t sub_1DAAAD548()
{
  v1 = v0[3];

  v2 = v0[4];

  v3 = v0[6];

  if (v0[9])
  {

    v4 = v0[10];

    v5 = v0[12];
  }

  return MEMORY[0x1EEE6BDD0](v0, 106, 7);
}

uint64_t sub_1DAAAD5AC()
{
  if (v0[3])
  {

    v1 = v0[4];

    v2 = v0[6];
  }

  return MEMORY[0x1EEE6BDD0](v0, 58, 7);
}

uint64_t sub_1DAAAD5F8()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1DAAAD638()
{
  v1 = *(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1DAAAD670()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  v4 = v0[6];

  v5 = v0[9];

  v6 = v0[10];

  v7 = v0[12];

  return MEMORY[0x1EEE6BDD0](v0, 106, 7);
}

uint64_t sub_1DAAAD6D8()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  v3 = *(v0 + 48);

  v4 = *(v0 + 72);

  v5 = *(v0 + 80);

  return MEMORY[0x1EEE6BDD0](v0, 88, 7);
}

uint64_t sub_1DAAAD738()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  v4 = v0[5];

  v5 = v0[7];

  v6 = v0[10];

  v7 = v0[11];

  v8 = v0[13];

  return MEMORY[0x1EEE6BDD0](v0, 114, 7);
}

uint64_t sub_1DAAAD820(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    sub_1DAA53180(0, &qword_1EE1263D0, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
    v9 = v8;
    v10 = *(*(v8 - 8) + 48);
    v11 = a1 + *(a3 + 72);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_1DAAAD900(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    sub_1DAA53180(0, &qword_1EE1263D0, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
    v8 = v7;
    v9 = *(*(v7 - 8) + 56);
    v10 = v5 + *(a4 + 72);

    return v9(v10, a2, a2, v8);
  }

  return result;
}

uint64_t sub_1DAAAD9D4()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1DAAADA0C()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 40);

  v3 = *(v0 + 56);

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_1DAAADA68()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1DAAADAA0()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1DAAADAE0()
{
  v1 = type metadata accessor for RawAttributionSourceLogo.Unresolved(0);
  v18 = *(*(v1 - 8) + 80);
  v16 = *(*(v1 - 8) + 64);
  v19 = sub_1DACB8204();
  v2 = *(v19 - 8);
  v3 = *(v2 + 80);
  v15 = *(v2 + 64);
  v4 = *(v0 + 16);

  v20 = v0;
  v17 = (v18 + 24) & ~v18;
  v5 = v0 + v17;
  v6 = sub_1DACB7AB4();
  v7 = (*(v6 - 8) + 8);
  v14 = *v7;
  (*v7)(v0 + v17, v6);
  v8 = *(v1 + 20);
  v9 = type metadata accessor for RawAttributionSourceLogo.Unresolved.Variant(0);
  v10 = *(*(v9 - 8) + 48);
  if (!v10(v0 + v17 + v8, 1, v9))
  {
    v14(v5 + v8, v6);
  }

  v11 = *(v1 + 24);
  if (!v10(v5 + v11, 1, v9))
  {
    v14(v5 + v11, v6);
  }

  v12 = (((v16 + v17 + 7) & 0xFFFFFFFFFFFFFFF8) + v3 + 8) & ~v3;
  (*(v2 + 8))(v20 + v12, v19);

  return MEMORY[0x1EEE6BDD0](v20, v12 + v15, v18 | v3 | 7);
}

uint64_t sub_1DAAADD2C()
{
  v1 = sub_1DACB7AB4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 56) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = sub_1DACB8204();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v5 + v8 + 8) & ~v8;
  v10 = *(v7 + 64);
  v11 = v3 | v8;
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);

  return MEMORY[0x1EEE6BDD0](v0, v9 + v10, v11 | 7);
}

uint64_t sub_1DAAADE8C()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1DAAADECC()
{
  v1 = sub_1DACB7AB4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = sub_1DACB8204();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (((v5 + 47) & 0xFFFFFFFFFFFFFFF8) + v8 + 8) & ~v8;
  v10 = *(v7 + 64);
  v11 = v3 | v8;
  (*(v2 + 8))(v0 + v4, v1);
  __swift_destroy_boxed_opaque_existential_1((v0 + v5));
  (*(v7 + 8))(v0 + v9, v6);

  return MEMORY[0x1EEE6BDD0](v0, v9 + v10, v11 | 7);
}

void sub_1DAAB4874(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_1(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0x16u);
}

void sub_1DAAB5BC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1DAABB9B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39)
{
  _Block_object_dispose(&a39, 8);
  _Block_object_dispose((v39 - 208), 8);
  _Block_object_dispose((v39 - 176), 8);
  _Unwind_Resume(a1);
}

void sub_1DAABC7B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_0_0(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0x16u);
}

void OUTLINED_FUNCTION_1_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

void sub_1DAACBDCC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v1 + 40));
  _Unwind_Resume(a1);
}

__CFString *OAuthURLEncodedString(CFStringRef originalString)
{
  v1 = CFURLCreateStringByAddingPercentEscapes(*MEMORY[0x1E695E480], originalString, 0, @":/?#[]@!$&’()*+,;='", 0x8000100u);

  return v1;
}

id ParameterString(void *a1)
{
  v22 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  obj = [v1 allKeys];
  v3 = [obj countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v18;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v18 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v17 + 1) + 8 * i);
        v8 = MEMORY[0x1E696AEC0];
        v9 = [v1 objectForKeyedSubscript:v7];
        v10 = OAuthURLEncodedString(v9);
        v11 = [v8 stringWithFormat:@"%@=%@", v7, v10];
        [v2 addObject:v11];
      }

      v4 = [obj countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v4);
  }

  v12 = [v2 sortedArrayUsingSelector:sel_compare_];
  v13 = [v12 componentsJoinedByString:@"&"];

  v14 = *MEMORY[0x1E69E9840];

  return v13;
}

id ProductVersion()
{
  if (ProductVersion_onceToken != -1)
  {
    ProductVersion_cold_1();
  }

  v1 = ProductVersion_ProductVersion;

  return v1;
}

void __ProductVersion_block_invoke()
{
  v3 = [objc_alloc(MEMORY[0x1E695DF20]) initWithContentsOfFile:@"/System/Library/CoreServices/SystemVersion.plist"];
  v0 = [v3 objectForKey:@"ProductVersion"];
  v1 = [v0 copy];
  v2 = ProductVersion_ProductVersion;
  ProductVersion_ProductVersion = v1;
}

id ClientInfo()
{
  if (ClientInfo_onceToken != -1)
  {
    ClientInfo_cold_1();
  }

  v1 = ClientInfo_ClientInfo;

  return v1;
}

void __ClientInfo_block_invoke()
{
  v0 = MEMORY[0x1E696AEC0];
  v3 = ProductVersion();
  v1 = [v0 stringWithFormat:@"vendor=Apple model=Stocks; version=1.0.0.%@", v3];;
  v2 = ClientInfo_ClientInfo;
  ClientInfo_ClientInfo = v1;
}

id DeviceInfo()
{
  if (DeviceInfo_onceToken != -1)
  {
    DeviceInfo_cold_1();
  }

  v1 = DeviceInfo_DeviceInfo;

  return v1;
}

void __DeviceInfo_block_invoke()
{
  v0 = MEMORY[0x1E696AEC0];
  v3 = ProductVersion();
  v1 = [v0 stringWithFormat:@"make=Apple model=iPhone; os=iPhone; osver=%@", v3];;
  v2 = DeviceInfo_DeviceInfo;
  DeviceInfo_DeviceInfo = v1;
}

id _ConsumerSecret()
{
  if (_ConsumerSecret_onceToken != -1)
  {
    _ConsumerSecret_cold_1();
  }

  v1 = _ConsumerSecret_ConsumerSecretString;

  return v1;
}

id CreateCredential()
{
  v0 = objc_alloc_init(MEMORY[0x1E69B7B60]);
  [v0 setConsumerKey:@"dj0yJmk9cU51ZlhUZ2ZneDBJJmQ9WVdrOU1rOVVlWE5vTkhNbWNHbzlNQS0tJnM9Y29uc3VtZXJzZWNyZXQmeD1hNw--"];
  v1 = _ConsumerSecret();
  [v0 setConsumerSecret:v1];

  v2 = [v0 consumerKey];
  if (!v2)
  {
    CreateCredential_cold_2();
  }

  v3 = [v0 consumerSecret];
  if (!v3)
  {
    CreateCredential_cold_1();
  }

  return v0;
}

void *StocksLogForCategory(uint64_t a1)
{
  if (StocksLogForCategory_onceToken != -1)
  {
    StocksLogForCategory_cold_1();
  }

  v2 = StocksLogForCategory_loggingTypes;
  v3 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a1];
  v4 = [v2 objectForKey:v3];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = MEMORY[0x1E69E9C10];
  }

  v7 = v6;

  return v6;
}

void __StocksLogForCategory_block_invoke()
{
  v7 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:5];
  v0 = os_log_create("com.apple.stocks", "serviceLogging");
  [v7 scw_safelySetObjectAllowingNil:v0 forKey:&unk_1F56A9308];

  v1 = os_log_create("com.apple.stocks", "syncLogging");
  [v7 scw_safelySetObjectAllowingNil:v1 forKey:&unk_1F56A9320];

  v2 = os_log_create("com.apple.stocks", "duetLogging");
  [v7 scw_safelySetObjectAllowingNil:v2 forKey:&unk_1F56A9338];

  v3 = os_log_create("com.apple.stocks", "widgetLogging");
  [v7 scw_safelySetObjectAllowingNil:v3 forKey:&unk_1F56A9350];

  v4 = os_log_create("com.apple.stocks", "watchlistLogging");
  [v7 scw_safelySetObjectAllowingNil:v4 forKey:&unk_1F56A9368];

  v5 = [v7 copy];
  v6 = StocksLogForCategory_loggingTypes;
  StocksLogForCategory_loggingTypes = v5;
}

void *char_from_uchar(uint64_t a1, int a2)
{
  if (!ucnv_open())
  {
    return 0;
  }

  MaxCharSize = ucnv_getMaxCharSize();
  v4 = malloc_type_malloc((a2 + 10) * MaxCharSize, 0x100004077774924uLL);
  if (v4)
  {
    ucnv_fromUChars();
    ucnv_close();
  }

  return v4;
}

void *formattedCountWithLocale(uint64_t a1, uint64_t a2, int a3, int a4)
{
  unum_open();
  unum_setAttribute();
  if (a4)
  {
    unum_setAttribute();
  }

  else
  {
    unum_setAttribute();
    if (a3)
    {
      goto LABEL_5;
    }
  }

  unum_setAttribute();
LABEL_5:
  unum_formatInt64();
  v6 = char_from_uchar(0, 0);
  free(0);
  unum_close();
  return v6;
}

void OUTLINED_FUNCTION_3(void *a1, NSObject *a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint8_t buf)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &buf, 0x26u);
}

uint64_t *sub_1DAAD1E24()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  __swift_destroy_boxed_opaque_existential_1(v0 + 7);
  v1 = v0[12];
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v0 + 14);
  v2 = v0[19];
  swift_unknownObjectRelease();
  return v0;
}

uint64_t sub_1DAAD1E64()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  __swift_destroy_boxed_opaque_existential_1(v0 + 7);
  v1 = v0[12];
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v0 + 14);
  v2 = v0[19];
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_1DAAD1EBC()
{
  v1 = v0;
  sub_1DAA41DCC();
  v2 = sub_1DACB9AD4();
  sub_1DACB9914();
  sub_1DACB8C64();

  type metadata accessor for ForYouConfigRecord(0);
  sub_1DACB8BB4();
  sub_1DACB71F4();
  v3 = sub_1DACB89D4();
  sub_1DAAD4674();
  sub_1DACB8A54();

  v4 = swift_allocObject();
  *(v4 + 16) = sub_1DAAD4708;
  *(v4 + 24) = v1;
  sub_1DACB71F4();
  v5 = sub_1DACB89D4();
  sub_1DAA48854(0, &qword_1EE11FAA0, &type metadata for Headline, MEMORY[0x1E69E62F8]);
  sub_1DACB8A64();

  sub_1DACB71F4();
  v6 = sub_1DACB89D4();
  sub_1DACB8A54();

  v7 = sub_1DACB89D4();
  sub_1DACB8A64();

  v8 = sub_1DACB89D4();
  v9 = sub_1DACB8AA4();

  return v9;
}

uint64_t sub_1DAAD2120(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ForYouConfigRecord(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  sub_1DAA41D64();
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1DACC1D20;
  v18 = 0;
  v19 = 0xE000000000000000;
  sub_1DACB9DD4();
  *(v7 + 56) = MEMORY[0x1E69E6158];
  *(v7 + 64) = sub_1DAA443C8();
  *(v7 + 32) = 0;
  *(v7 + 40) = 0xE000000000000000;
  sub_1DAA41DCC();
  v8 = sub_1DACB9AD4();
  sub_1DACB9914();
  sub_1DACB8C64();

  v16 = a2;
  v17 = a1;
  sub_1DAAD4E00();
  sub_1DACB8BB4();
  v9 = sub_1DACB89D4();
  sub_1DAA48854(0, &qword_1EE11FAA0, &type metadata for Headline, MEMORY[0x1E69E62F8]);
  sub_1DACB8A64();

  sub_1DAA89A58(a1, &v15[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)], type metadata accessor for ForYouConfigRecord);
  v10 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v11 = swift_allocObject();
  sub_1DAAD4E90(&v15[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)], v11 + v10);
  v12 = sub_1DACB89D4();
  sub_1DAAD4674();
  v13 = sub_1DACB8A64();

  return v13;
}

uint64_t sub_1DAAD23DC(uint64_t a1, unint64_t a2)
{
  sub_1DAA41D64();
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1DACC1D20;
  v10 = *(a2 + 16);
  v5 = sub_1DACBA114();
  v7 = v6;
  *(v4 + 56) = MEMORY[0x1E69E6158];
  *(v4 + 64) = sub_1DAA443C8();
  *(v4 + 32) = v5;
  *(v4 + 40) = v7;
  sub_1DAA41DCC();
  v8 = sub_1DACB9AD4();
  sub_1DACB9914();
  sub_1DACB8C64();

  return sub_1DAAD24DC(a1, a2);
}

uint64_t sub_1DAAD24DC(uint64_t a1, unint64_t a2)
{
  v3 = a2;
  v4 = *(a2 + 16);
  v84 = v4;
  if (v4)
  {
    *&v91[0] = MEMORY[0x1E69E7CC0];
    v5 = v4;
    sub_1DACB9D64();
    v6 = v3;
    v7 = (v3 + 32);
    for (i = v5 - 1; ; --i)
    {
      v9 = v7[5];
      v10 = v7[7];
      v108 = v7[6];
      v109 = v10;
      v11 = v7[1];
      v12 = v7[3];
      v104 = v7[2];
      v105 = v12;
      v13 = v7[3];
      v14 = v7[5];
      v106 = v7[4];
      v107 = v14;
      v15 = v7[1];
      v102 = *v7;
      v103 = v15;
      v116 = v9;
      v117 = v108;
      v16 = v7[8];
      v118 = v7[7];
      v119 = v16;
      v112 = v11;
      v113 = v104;
      v114 = v13;
      v115 = v106;
      v110 = v16;
      v111 = v102;
      if (sub_1DAA9B6F0(&v111) == 1)
      {
        v17 = *sub_1DAA9B6E0(&v111);
        v95 = v104;
        v96 = v105;
        v93 = v102;
        v94 = v103;
        v100 = v109;
        v101 = v110;
        v98 = v107;
        v99 = v108;
        v97 = v106;
        v18 = *sub_1DAA9B6E0(&v93);
      }

      else
      {
        v19 = *sub_1DAA9B6E0(&v111);
      }

      swift_unknownObjectRetain();
      sub_1DACB9D34();
      v20 = *(*&v91[0] + 16);
      sub_1DACB9D74();
      sub_1DACB9D84();
      sub_1DACB9D44();
      if (!i)
      {
        break;
      }

      v7 += 9;
    }

    v3 = v6;
  }

  [*(v2 + 152) configuration];
  sub_1DAA485B8(0, &qword_1EE11F880, &protocolRef_FCHeadlineProviding);
  v21 = sub_1DACB9634();
  sub_1DAAD3104();
  sub_1DAA485B8(0, &qword_1EE11D0A8, &protocolRef_FCHeadlineMetadata);
  v22 = sub_1DACB9114();

  v23 = FCAssignHeadlineMetadata();

  if (v23)
  {

    v24 = sub_1DACB9644();

    if (v24 >> 62)
    {
      goto LABEL_36;
    }

    v25 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
    for (j = v3; v25; j = v3)
    {
      v3 = 0;
      v86 = v24 & 0xFFFFFFFFFFFFFF8;
      v87 = v24 & 0xC000000000000001;
      v26 = MEMORY[0x1E69E7CC8];
      v85 = v24;
      while (v87)
      {
        v29 = MEMORY[0x1E12777A0](v3, v24);
        v30 = v3 + 1;
        if (__OFADD__(v3, 1))
        {
          goto LABEL_32;
        }

LABEL_18:
        v88 = v30;
        v31 = [v29 identifier];
        v24 = sub_1DACB9324();
        v33 = v32;

        swift_unknownObjectRetain();
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v111 = v26;
        v36 = sub_1DAA4BF3C(v24, v33);
        v37 = v26;
        v38 = v26[2];
        v39 = (v35 & 1) == 0;
        v40 = v38 + v39;
        if (__OFADD__(v38, v39))
        {
          goto LABEL_34;
        }

        v41 = v35;
        if (v37[3] >= v40)
        {
          if (isUniquelyReferenced_nonNull_native)
          {
            if (v35)
            {
              goto LABEL_13;
            }
          }

          else
          {
            sub_1DAB65174();
            if (v41)
            {
              goto LABEL_13;
            }
          }
        }

        else
        {
          sub_1DAB60384(v40, isUniquelyReferenced_nonNull_native);
          v42 = sub_1DAA4BF3C(v24, v33);
          if ((v41 & 1) != (v43 & 1))
          {
            goto LABEL_59;
          }

          v36 = v42;
          if (v41)
          {
LABEL_13:

            v26 = v111;
            v27 = *(v111 + 56);
            v28 = *(v27 + 8 * v36);
            *(v27 + 8 * v36) = v29;
            swift_unknownObjectRelease();
            swift_unknownObjectRelease();
            goto LABEL_14;
          }
        }

        v26 = v111;
        *(v111 + 8 * (v36 >> 6) + 64) |= 1 << v36;
        v44 = (v26[6] + 16 * v36);
        *v44 = v24;
        v44[1] = v33;
        *(v26[7] + 8 * v36) = v29;
        swift_unknownObjectRelease();
        v45 = v26[2];
        v46 = __OFADD__(v45, 1);
        v47 = v45 + 1;
        if (v46)
        {
          goto LABEL_35;
        }

        v26[2] = v47;
LABEL_14:
        ++v3;
        v24 = v85;
        if (v88 == v25)
        {
          goto LABEL_38;
        }
      }

      if (v3 >= *(v86 + 16))
      {
        goto LABEL_33;
      }

      v29 = *(v24 + 8 * v3 + 32);
      swift_unknownObjectRetain();
      v30 = v3 + 1;
      if (!__OFADD__(v3, 1))
      {
        goto LABEL_18;
      }

LABEL_32:
      __break(1u);
LABEL_33:
      __break(1u);
LABEL_34:
      __break(1u);
LABEL_35:
      __break(1u);
LABEL_36:
      v25 = sub_1DACB9E14();
    }

    v26 = MEMORY[0x1E69E7CC8];
LABEL_38:

    if (v84)
    {
      v48 = v26;
      v92 = MEMORY[0x1E69E7CC0];
      sub_1DAAA50F8(0, v84, 0);
      v49 = v92;
      v50 = (j + 32);
      for (k = v84 - 1; ; --k)
      {
        v52 = v50[5];
        v53 = v50[7];
        v108 = v50[6];
        v109 = v53;
        v54 = v50[1];
        v55 = v50[3];
        v104 = v50[2];
        v105 = v55;
        v56 = v50[3];
        v57 = v50[5];
        v106 = v50[4];
        v107 = v57;
        v58 = v50[1];
        v102 = *v50;
        v103 = v58;
        v116 = v52;
        v117 = v108;
        v59 = v50[8];
        v118 = v50[7];
        v119 = v59;
        v112 = v54;
        v113 = v104;
        v114 = v56;
        v115 = v106;
        v110 = v59;
        v111 = v102;
        if (sub_1DAA9B6F0(&v111) == 1)
        {
          v60 = *sub_1DAA9B6E0(&v111);
          v95 = v104;
          v96 = v105;
          v93 = v102;
          v94 = v103;
          v100 = v109;
          v101 = v110;
          v98 = v107;
          v99 = v108;
          v97 = v106;
          v61 = *sub_1DAA9B6E0(&v93);
        }

        else
        {
          v60 = *sub_1DAA9B6E0(&v111);
        }

        swift_unknownObjectRetain();
        sub_1DAAD4CCC(&v102, v91);
        v62 = [v60 identifier];
        swift_unknownObjectRelease();
        v63 = sub_1DACB9324();
        v65 = v64;

        if (!v48[2])
        {
          break;
        }

        v66 = sub_1DAA4BF3C(v63, v65);
        v68 = v67;

        if ((v68 & 1) == 0)
        {
          goto LABEL_48;
        }

        v69 = *(v48[7] + 8 * v66);
        v91[6] = v108;
        v91[7] = v109;
        v91[8] = v110;
        v91[2] = v104;
        v91[3] = v105;
        v91[4] = v106;
        v91[5] = v107;
        v91[0] = v102;
        v91[1] = v103;
        if (sub_1DAA9B6F0(v91) == 1)
        {
          sub_1DAA9B6E0(v91);
          swift_unknownObjectRetain();
          sub_1DAAD4D28(&v102);
          *&v90[0] = v69;
          sub_1DAAD4DD0(v90);
        }

        else
        {
          v72 = sub_1DAA9B6E0(v91);
          swift_unknownObjectRetain();
          sub_1DAAA5860(v72 + 8, v89);
          sub_1DAAD4D28(&v102);
          *&v90[0] = v69;
          memmove(v90 + 8, (v72 + 8), 0x88uLL);
          sub_1DAAA58BC(v90);
        }

        v99 = v90[6];
        v100 = v90[7];
        v101 = v90[8];
        v95 = v90[2];
        v96 = v90[3];
        v97 = v90[4];
        v98 = v90[5];
        v71 = v90[0];
        v70 = v90[1];
LABEL_51:
        v93 = v71;
        v94 = v70;
        v92 = v49;
        v74 = *(v49 + 16);
        v73 = *(v49 + 24);
        if (v74 >= v73 >> 1)
        {
          sub_1DAAA50F8((v73 > 1), v74 + 1, 1);
          v49 = v92;
        }

        *(v49 + 16) = v74 + 1;
        v75 = (v49 + 144 * v74);
        v75[2] = v93;
        v76 = v94;
        v77 = v95;
        v78 = v97;
        v75[5] = v96;
        v75[6] = v78;
        v75[3] = v76;
        v75[4] = v77;
        v79 = v98;
        v80 = v99;
        v81 = v101;
        v75[9] = v100;
        v75[10] = v81;
        v75[7] = v79;
        v75[8] = v80;
        if (!k)
        {
          swift_unknownObjectRelease();

          return v49;
        }

        v50 += 9;
      }

LABEL_48:
      v99 = v108;
      v100 = v109;
      v101 = v110;
      v95 = v104;
      v96 = v105;
      v97 = v106;
      v98 = v107;
      v71 = v102;
      v70 = v103;
      goto LABEL_51;
    }

    swift_unknownObjectRelease();

    return MEMORY[0x1E69E7CC0];
  }

  else
  {
    __break(1u);
LABEL_59:
    result = sub_1DACBA1F4();
    __break(1u);
  }

  return result;
}

uint64_t sub_1DAAD2C7C(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  sub_1DAA41D64();
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1DACC1D20;
  v16 = *(v3 + 16);
  v5 = sub_1DACBA114();
  v7 = v6;
  *(v4 + 56) = MEMORY[0x1E69E6158];
  *(v4 + 64) = sub_1DAA443C8();
  *(v4 + 32) = v5;
  *(v4 + 40) = v7;
  sub_1DAA41DCC();
  v8 = sub_1DACB9AD4();
  sub_1DACB9914();
  sub_1DACB8C64();

  v9 = *(a2 + 96);
  v10 = *(a2 + 104);
  ObjectType = swift_getObjectType();
  (*(v10 + 24))(ObjectType, v10);
  v12 = swift_allocObject();
  *(v12 + 16) = a2;
  *(v12 + 24) = v3;
  sub_1DACB71F4();
  sub_1DACB71E4();
  v13 = sub_1DACB89D4();
  sub_1DAA48854(0, &qword_1EE11FAA0, &type metadata for Headline, MEMORY[0x1E69E62F8]);
  v14 = sub_1DACB8A54();

  return v14;
}

uint64_t sub_1DAAD2E38@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  sub_1DAA41D64();
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1DACC1D20;
  v10 = *(v3 + 16);
  v5 = sub_1DACBA114();
  v7 = v6;
  *(v4 + 56) = MEMORY[0x1E69E6158];
  *(v4 + 64) = sub_1DAA443C8();
  *(v4 + 32) = v5;
  *(v4 + 40) = v7;
  sub_1DAA41DCC();
  v8 = sub_1DACB9AD4();
  sub_1DACB9914();
  sub_1DACB8C64();

  *a2 = v3;
  return sub_1DACB71E4();
}

void sub_1DAAD2F38()
{
  sub_1DACB9904();
  sub_1DAA41D64();
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1DACC1D20;
  sub_1DAA4436C(0, &qword_1EE123B10);
  sub_1DACB9DD4();
  *(v0 + 56) = MEMORY[0x1E69E6158];
  *(v0 + 64) = sub_1DAA443C8();
  *(v0 + 32) = 0;
  *(v0 + 40) = 0xE000000000000000;
  sub_1DAA41DCC();
  v1 = sub_1DACB9AD4();
  sub_1DACB8C64();
}

uint64_t sub_1DAAD303C(void *a1, uint64_t a2)
{
  v3 = a1[10];
  v4 = a1[11];
  __swift_project_boxed_opaque_existential_1(a1 + 7, v3);
  v5 = *(a2 + *(type metadata accessor for ForYouConfigRecord(0) + 24));
  sub_1DAAD4FA4(v9);
  v7[6] = v9[6];
  v7[7] = v9[7];
  v8 = v10;
  v7[2] = v9[2];
  v7[3] = v9[3];
  v7[4] = v9[4];
  v7[5] = v9[5];
  v7[0] = v9[0];
  v7[1] = v9[1];
  return (*(v4 + 8))(v5, v7, v3, v4);
}

uint64_t sub_1DAAD3104()
{
  sub_1DAA492B4();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v53 = &v45 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for ForYouConfigRecord.Configuration.TopStories.Article(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = (&v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = type metadata accessor for ForYouConfigRecord.Configuration(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = (&v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = type metadata accessor for ForYouConfigRecord(0);
  sub_1DAA89A58(v0 + *(v13 + 20), v12, type metadata accessor for ForYouConfigRecord.Configuration);
  v14 = *v12;
  sub_1DACB71E4();
  sub_1DAA89CD4(v12, type metadata accessor for ForYouConfigRecord.Configuration.TopStories);
  v52 = *(v14 + 16);
  if (!v52)
  {
    v18 = MEMORY[0x1E69E7CC8];
LABEL_17:

    return v18;
  }

  v15 = 0;
  v16 = *(v4 + 20);
  v50 = (v8 + *(v4 + 24));
  v51 = v16;
  v17 = *(v5 + 80);
  v18 = MEMORY[0x1E69E7CC8];
  v48 = v5;
  v49 = v14 + ((v17 + 32) & ~v17);
  v46 = v14;
  v47 = v8;
  while (v15 < *(v14 + 16))
  {
    sub_1DAA89A58(v49 + *(v5 + 72) * v15, v8, type metadata accessor for ForYouConfigRecord.Configuration.TopStories.Article);
    v22 = *v8;
    v21 = v8[1];
    v23 = v53;
    sub_1DAA89A58(v8 + v51, v53, sub_1DAA492B4);
    v24 = *v50;
    v25 = v50[1];
    v26 = _s16HeadlineMetadataCMa();
    v27 = objc_allocWithZone(v26);
    sub_1DAA89A58(v23, &v27[OBJC_IVAR____TtCV10StocksCore18ForYouConfigRecordP33_FB30AEA7B56282916E4430A3993C597516HeadlineMetadata_displayDate], sub_1DAA492B4);
    v28 = &v27[OBJC_IVAR____TtCV10StocksCore18ForYouConfigRecordP33_FB30AEA7B56282916E4430A3993C597516HeadlineMetadata_storyType];
    *v28 = v24;
    *(v28 + 1) = v25;
    v29 = &v27[OBJC_IVAR____TtCV10StocksCore18ForYouConfigRecordP33_FB30AEA7B56282916E4430A3993C597516HeadlineMetadata_title];
    *v29 = 0;
    *(v29 + 1) = 0;
    v55.receiver = v27;
    v55.super_class = v26;
    sub_1DACB71E4();
    v30 = objc_msgSendSuper2(&v55, sel_init);
    sub_1DAA89CD4(v23, sub_1DAA492B4);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v54 = v18;
    v32 = sub_1DAA4BF3C(v22, v21);
    v34 = v18[2];
    v35 = (v33 & 1) == 0;
    v36 = __OFADD__(v34, v35);
    v37 = v34 + v35;
    if (v36)
    {
      goto LABEL_19;
    }

    v38 = v33;
    if (v18[3] < v37)
    {
      sub_1DAB60368(v37, isUniquelyReferenced_nonNull_native);
      v32 = sub_1DAA4BF3C(v22, v21);
      if ((v38 & 1) != (v39 & 1))
      {
        goto LABEL_21;
      }

LABEL_11:
      v18 = v54;
      if (v38)
      {
        goto LABEL_3;
      }

      goto LABEL_12;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_11;
    }

    v43 = v32;
    sub_1DAB65158();
    v32 = v43;
    v18 = v54;
    if (v38)
    {
LABEL_3:
      v19 = v18[7];
      v20 = *(v19 + 8 * v32);
      *(v19 + 8 * v32) = v30;
      swift_unknownObjectRelease();
      goto LABEL_4;
    }

LABEL_12:
    v18[(v32 >> 6) + 8] |= 1 << v32;
    v40 = (v18[6] + 16 * v32);
    *v40 = v22;
    v40[1] = v21;
    *(v18[7] + 8 * v32) = v30;
    v41 = v18[2];
    v36 = __OFADD__(v41, 1);
    v42 = v41 + 1;
    if (v36)
    {
      goto LABEL_20;
    }

    v18[2] = v42;
    sub_1DACB71E4();
LABEL_4:
    ++v15;
    v8 = v47;
    sub_1DAA89CD4(v47, type metadata accessor for ForYouConfigRecord.Configuration.TopStories.Article);
    v5 = v48;
    v14 = v46;
    if (v52 == v15)
    {
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  result = sub_1DACBA1F4();
  __break(1u);
  return result;
}

uint64_t sub_1DAAD353C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = *a1;
  v5 = a1[1];
  v7 = a1[2];
  v8 = a1[3];
  v9 = a1[4];
  v10 = *(a2 + 152);
  v11 = type metadata accessor for NewsUserProfileShim();
  v12 = objc_allocWithZone(v11);
  v13 = &v12[OBJC_IVAR____TtC10StocksCoreP33_6F15235305946077A82EB95D8E9A724719NewsUserProfileShim_userProfile];
  *v13 = v6;
  *(v13 + 1) = v5;
  *(v13 + 2) = v7;
  *(v13 + 3) = v8;
  *(v13 + 4) = v9;
  v69.receiver = v12;
  v69.super_class = v11;
  sub_1DACB71E4();
  sub_1DACB71E4();
  sub_1DACB71E4();
  sub_1DACB71E4();
  v14 = v9;
  v15 = objc_msgSendSuper2(&v69, sel_init);
  v16 = [objc_allocWithZone(MEMORY[0x1E69B5420]) initWithPurchaseProvider:v15 bundleSubscriptionProvider:v15 configurationManager:v10];

  sub_1DAA48854(0, &qword_1EE11F518, &type metadata for HeadlineCondition, MEMORY[0x1E69E6F90]);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_1DACC1D30;
  *(v17 + 32) = v16;
  sub_1DAA4D678(a2 + 112, v17 + 40);
  *(v17 + 80) = 0;
  *(v17 + 88) = v5;
  *(v17 + 136) = 3;
  *(v17 + 144) = 3;
  *(v17 + 152) = 0u;
  *(v17 + 168) = 0u;
  *(v17 + 184) = 0;
  *(v17 + 192) = 9;
  *(v17 + 200) = 0u;
  *(v17 + 216) = 0u;
  *(v17 + 232) = 0u;
  *(v17 + 248) = 9;
  v67[0] = v17;
  v68 = 6;
  sub_1DAAD4C70(v67, v66);
  v18 = *(a3 + 16);
  v19 = v16;
  result = sub_1DACB71E4();
  if (v18)
  {
    v21 = 0;
    v22 = MEMORY[0x1E69E7CC0];
    do
    {
      v23 = (a3 + 32 + 144 * v21);
      v24 = v21;
      while (1)
      {
        if (v24 >= v18)
        {
          __break(1u);
LABEL_18:
          __break(1u);
          return result;
        }

        v25 = v23[7];
        v63 = v23[6];
        v64 = v25;
        v65 = v23[8];
        v26 = v23[3];
        v59 = v23[2];
        v60 = v26;
        v27 = v23[5];
        v61 = v23[4];
        v62 = v27;
        v28 = v23[1];
        v57 = *v23;
        v58 = v28;
        v21 = v24 + 1;
        if (__OFADD__(v24, 1))
        {
          goto LABEL_18;
        }

        v29 = v23[7];
        v56[6] = v23[6];
        v56[7] = v29;
        v56[8] = v23[8];
        v30 = v23[3];
        v56[2] = v23[2];
        v56[3] = v30;
        v31 = v23[5];
        v56[4] = v23[4];
        v56[5] = v31;
        v32 = v23[1];
        v56[0] = *v23;
        v56[1] = v32;
        sub_1DAAD4CCC(&v57, v55);
        if ((sub_1DAC78658(v56) & 1) == 0)
        {
          break;
        }

        result = sub_1DAAD4D28(&v57);
        ++v24;
        v23 += 9;
        if (v21 == v18)
        {
          goto LABEL_16;
        }
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      v70 = v22;
      if ((result & 1) == 0)
      {
        result = sub_1DAAA50F8(0, *(v22 + 16) + 1, 1);
        v22 = v70;
      }

      v34 = *(v22 + 16);
      v33 = *(v22 + 24);
      if (v34 >= v33 >> 1)
      {
        result = sub_1DAAA50F8((v33 > 1), v34 + 1, 1);
        v22 = v70;
      }

      *(v22 + 16) = v34 + 1;
      v35 = (v22 + 144 * v34);
      v35[2] = v57;
      v36 = v58;
      v37 = v59;
      v38 = v61;
      v35[5] = v60;
      v35[6] = v38;
      v35[3] = v36;
      v35[4] = v37;
      v39 = v62;
      v40 = v63;
      v41 = v65;
      v35[9] = v64;
      v35[10] = v41;
      v35[7] = v39;
      v35[8] = v40;
    }

    while (v21 != v18);
  }

  else
  {
    v22 = MEMORY[0x1E69E7CC0];
  }

LABEL_16:
  sub_1DAAD4D7C(v66);
  sub_1DAA41D64();
  v42 = swift_allocObject();
  *(v42 + 16) = xmmword_1DACC1D40;
  *&v57 = v18;
  v43 = sub_1DACBA114();
  v45 = v44;
  v46 = MEMORY[0x1E69E6158];
  *(v42 + 56) = MEMORY[0x1E69E6158];
  v47 = sub_1DAA443C8();
  *(v42 + 64) = v47;
  *(v42 + 32) = v43;
  *(v42 + 40) = v45;
  *&v57 = *(v22 + 16);
  v48 = sub_1DACBA114();
  *(v42 + 96) = v46;
  *(v42 + 104) = v47;
  *(v42 + 72) = v48;
  *(v42 + 80) = v49;
  sub_1DAA41DCC();
  v50 = sub_1DACB9AD4();
  sub_1DACB9914();
  sub_1DACB8C64();

  *&v57 = v22;
  sub_1DAAD4BD8();
  v52 = *(v51 + 48);
  v53 = *(v51 + 52);
  swift_allocObject();
  v54 = sub_1DACB8AE4();

  sub_1DAAD4D7C(v67);
  return v54;
}

id sub_1DAAD3B08(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = (a1 + *a3);
  if (v3[1])
  {
    v4 = *v3;
    v5 = v3[1];
    sub_1DACB71E4();
    v6 = sub_1DACB92F4();
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

id sub_1DAAD3BA4()
{
  v2.receiver = v0;
  v2.super_class = _s16HeadlineMetadataCMa();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1DAAD3C64()
{
  sub_1DAAD4BD8();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  return sub_1DACB8AE4();
}

uint64_t sub_1DAAD3CBC(uint64_t a1, id *a2)
{
  result = sub_1DACB9304();
  *a2 = 0;
  return result;
}

uint64_t sub_1DAAD3D34(uint64_t a1, id *a2)
{
  v3 = sub_1DACB9314();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_1DAAD3DB4@<X0>(uint64_t *a1@<X8>)
{
  sub_1DACB9324();
  v2 = sub_1DACB92F4();

  *a1 = v2;
  return result;
}

uint64_t sub_1DAAD3DF8()
{
  v1 = *v0;
  v2 = sub_1DACB9324();
  v3 = MEMORY[0x1E1276F90](v2);

  return v3;
}

uint64_t sub_1DAAD3E34()
{
  v1 = *v0;
  sub_1DACB9324();
  sub_1DACB9404();
}

uint64_t sub_1DAAD3E88()
{
  v1 = *v0;
  sub_1DACB9324();
  sub_1DACBA284();
  sub_1DACB9404();
  v2 = sub_1DACBA2C4();

  return v2;
}

uint64_t sub_1DAAD3F0C(uint64_t a1)
{
  v2 = sub_1DAA69AC4(&qword_1EE11D218, type metadata accessor for CKError);

  return MEMORY[0x1EEDC3BE0](a1, v2);
}

uint64_t sub_1DAAD3F78(uint64_t a1)
{
  v2 = sub_1DAA69AC4(&qword_1EE11D218, type metadata accessor for CKError);

  return MEMORY[0x1EEDC3B98](a1, v2);
}

uint64_t sub_1DAAD3FE4(void *a1, uint64_t a2)
{
  v4 = sub_1DAA69AC4(&qword_1EE11D218, type metadata accessor for CKError);
  v5 = a1;

  return MEMORY[0x1EEDC3B88](v5, a2, v4);
}

uint64_t sub_1DAAD4098(uint64_t a1, uint64_t a2)
{
  v4 = sub_1DAA69AC4(&qword_1EE11D218, type metadata accessor for CKError);

  return MEMORY[0x1EEDC3BC8](a1, a2, v4);
}

uint64_t sub_1DAAD4114()
{
  v2 = *v0;
  sub_1DACBA284();
  sub_1DACB91F4();
  return sub_1DACBA2C4();
}

void *sub_1DAAD4174@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_1DAAD4184(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = sub_1DACB9324();
  v6 = v5;
  if (v4 == sub_1DACB9324() && v6 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_1DACBA174();
  }

  return v9 & 1;
}

uint64_t sub_1DAAD420C(uint64_t a1)
{
  v2 = sub_1DAA69AC4(&qword_1EE11D070, type metadata accessor for CIImageRepresentationOption);
  v3 = sub_1DAA69AC4(&unk_1ECBE6348, type metadata accessor for CIImageRepresentationOption);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t sub_1DAAD42C8(uint64_t a1)
{
  v2 = sub_1DAA69AC4(&qword_1EE11D220, type metadata accessor for CKError);

  return MEMORY[0x1EEDC6AD0](a1, v2);
}

uint64_t sub_1DAAD4334(uint64_t a1)
{
  v2 = sub_1DAA69AC4(&qword_1EE11D220, type metadata accessor for CKError);

  return MEMORY[0x1EEDC6AC0](a1, v2);
}

uint64_t sub_1DAAD43A4(uint64_t a1)
{
  v2 = sub_1DAA69AC4(&qword_1EE11D218, type metadata accessor for CKError);

  return MEMORY[0x1EEDC3B70](a1, v2);
}

uint64_t sub_1DAAD4410(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1DAA69AC4(&qword_1EE11D218, type metadata accessor for CKError);

  return MEMORY[0x1EEDC3BA8](a1, a2, a3, v6);
}

uint64_t sub_1DAAD4494@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_1DACB92F4();

  *a2 = v5;
  return result;
}

uint64_t sub_1DAAD44DC(uint64_t a1)
{
  v2 = sub_1DAA69AC4(&qword_1EE11F8C0, type metadata accessor for FileAttributeKey);
  v3 = sub_1DAA69AC4(&qword_1ECBE6358, type metadata accessor for FileAttributeKey);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t sub_1DAAD4598(uint64_t result)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v1 = result;
    if (result)
    {
      sub_1DAA4436C(0, &qword_1EE123B00);
      result = sub_1DACB96C4();
      *(result + 16) = v1;
    }

    else
    {
      return MEMORY[0x1E69E7CC0];
    }
  }

  return result;
}

uint64_t sub_1DAAD45FC()
{
  v1 = v0[5];
  v2 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v1);
  return (*(v2 + 8))(v1, v2);
}

void sub_1DAAD4674()
{
  if (!qword_1EE11E808)
  {
    type metadata accessor for ForYouConfigRecord(255);
    sub_1DAA48854(255, &qword_1EE11FAA0, &type metadata for Headline, MEMORY[0x1E69E62F8]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EE11E808);
    }
  }
}

uint64_t sub_1DAAD4710@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v6 = *(v2 + 16);
  v5 = *(v2 + 24);
  sub_1DAAD4674();
  result = v6(a1, *(a1 + *(v7 + 48)));
  *a2 = result;
  return result;
}

uint64_t _s16HeadlineMetadataCMa()
{
  result = qword_1EE11E818;
  if (!qword_1EE11E818)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1DAAD4830()
{
  sub_1DAA492B4();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

unint64_t sub_1DAAD4AF4()
{
  result = qword_1EE11D238;
  if (!qword_1EE11D238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE11D238);
  }

  return result;
}

void sub_1DAAD4BD8()
{
  if (!qword_1EE11D3E0)
  {
    sub_1DAA48854(255, &qword_1EE11FAA0, &type metadata for Headline, MEMORY[0x1E69E62F8]);
    v0 = sub_1DACB8B74();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE11D3E0);
    }
  }
}

void sub_1DAAD4E00()
{
  if (!qword_1EE11FAB0)
  {
    sub_1DAA48854(255, &qword_1EE11FAA0, &type metadata for Headline, MEMORY[0x1E69E62F8]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EE11FAB0);
    }
  }
}

uint64_t sub_1DAAD4E90(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ForYouConfigRecord(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DAAD4EF4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for ForYouConfigRecord(0) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *a1;
  sub_1DAAD4674();
  v9 = *(v8 + 48);
  sub_1DAA89A58(v2 + v6, a2, type metadata accessor for ForYouConfigRecord);
  *(a2 + v9) = v7;
  return sub_1DACB71E4();
}

double sub_1DAAD4FA4(uint64_t a1)
{
  *(a1 + 128) = 0;
  result = 0.0;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

unint64_t StocksIntentType.debugDescription.getter()
{
  v1 = type metadata accessor for SymbolEntity();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = (v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = *v0;
  v6 = v0[2] >> 61;
  if (v6 <= 1)
  {
    v7 = v0[1];
    v16 = 0;
    v17 = 0xE000000000000000;
    if (v6)
    {
      sub_1DACB9C94();

      v8 = 0x80000001DACE3420;
      v9 = 0xD000000000000021;
    }

    else
    {
      sub_1DACB9C94();

      v8 = 0x80000001DACE3450;
      v9 = 0xD00000000000001CLL;
    }

    v18 = v9;
    v19 = v8;
    sub_1DACB6FB4();
    v13 = *v4;
    v14 = v4[1];
    sub_1DACB71E4();
    sub_1DAAD5434(v4);
    MEMORY[0x1E1276F20](v13, v14);

    MEMORY[0x1E1276F20](0x6C6863746177202CLL, 0xEC0000003D747369);
  }

  else
  {
    if (v6 == 2)
    {
      v16 = 0;
      v17 = 0xE000000000000000;
      sub_1DACB9C94();

      v16 = 0xD000000000000018;
      v17 = 0x80000001DACE33E0;
      sub_1DACB6FB4();
      v10 = *v4;
      v11 = v4[1];
      sub_1DACB71E4();
      sub_1DAAD5434(v4);
      MEMORY[0x1E1276F20](v10, v11);

      MEMORY[0x1E1276F20](41, 0xE100000000000000);
      return v16;
    }

    if (v6 != 3)
    {
      return 0xD000000000000010;
    }

    v16 = 0;
    v17 = 0xE000000000000000;
    sub_1DACB9C94();

    v18 = 0xD00000000000001ELL;
    v19 = 0x80000001DACE33C0;
  }

  sub_1DACB6FB4();
  sub_1DACB6ED4();

  MEMORY[0x1E1276F20](v15[1], v15[2]);

  MEMORY[0x1E1276F20](41, 0xE100000000000000);
  return v18;
}

uint64_t sub_1DAAD5434(uint64_t a1)
{
  v2 = type metadata accessor for SymbolEntity();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t get_enum_tag_for_layout_string_10StocksCore0A10IntentTypeO(void *a1)
{
  v1 = a1[2];
  if (v1 >= 0)
  {
    return v1 >> 61;
  }

  else
  {
    return (*a1 >> 3) + 4;
  }
}

uint64_t sub_1DAAD54B4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x1FFFFB && *(a1 + 24))
  {
    return (*a1 + 2097148);
  }

  if (((((*(a1 + 16) >> 43) >> 18) | (8 * ((*a1 >> 57) & 0x78 | *a1 & 7 | (*(a1 + 8) >> 50) & 0x3C00 | ((*(a1 + 8) & 7) << 7) | (*(a1 + 16) >> 43) & 0x20000 | ((*(a1 + 16) & 7) << 14)))) ^ 0x1FFFFF) >= 0x1FFFFB)
  {
    v3 = -1;
  }

  else
  {
    v3 = (((*(a1 + 16) >> 43) >> 18) | (8 * ((*a1 >> 57) & 0x78 | *a1 & 7 | (*(a1 + 8) >> 50) & 0x3C00 | ((*(a1 + 8) & 7) << 7) | (*(a1 + 16) >> 43) & 0x20000 | ((*(a1 + 16) & 7) << 14)))) ^ 0x1FFFFF;
  }

  return (v3 + 1);
}

uint64_t sub_1DAAD553C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x1FFFFB)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 2097148;
    if (a3 >= 0x1FFFFC)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x1FFFFC)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      v3 = ((-a2 >> 3) & 0x3FFFF) - (a2 << 18);
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
      v4 = vdupq_n_s64(v3);
      *(result + 8) = vorrq_s8(vandq_s8(vshlq_u64(v4, xmmword_1DACC24A0), vdupq_n_s64(7uLL)), vandq_s8(vshlq_u64(v4, xmmword_1DACC24B0), vdupq_n_s64(0xF000000000000000)));
    }
  }

  return result;
}

int8x16_t sub_1DAAD55F4(uint64_t a1, uint64_t a2)
{
  if (a2 < 4)
  {
    v3 = *(a1 + 16) & 0xFFFFFFFFFFFFFF8 | (a2 << 61);
    result = vandq_s8(*a1, vdupq_n_s64(0xFFFFFFFFFFFFFF8uLL));
    *a1 = result;
    *(a1 + 16) = v3;
  }

  else
  {
    *a1 = 8 * (a2 - 4);
    result.i64[0] = 0;
    *(a1 + 8) = xmmword_1DACC24C0;
  }

  return result;
}

uint64_t type metadata accessor for SDSChartOperation()
{
  result = qword_1EE11E9E8;
  if (!qword_1EE11E9E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1DAAD5698()
{
  result = sub_1DACB7CC4();
  if (v1 <= 0x3F)
  {
    v3 = *(result - 8) + 64;
    result = sub_1DACB8204();
    if (v2 <= 0x3F)
    {
      v4 = *(result - 8) + 64;
      result = swift_initClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

void sub_1DAAD57B0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = __swift_project_boxed_opaque_existential_1(&v2[qword_1EE11EA18], *&v2[qword_1EE11EA18 + 24]);
  sub_1DAA7BCA8(0, &qword_1EE123B40, sub_1DAA4BD7C, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  v8 = inited;
  *(inited + 16) = xmmword_1DACC2610;
  *(inited + 32) = 0x6C6F626D7973;
  *(inited + 40) = 0xE600000000000000;
  v9 = *&v3[qword_1EE11E9F8 + 8];
  *(inited + 48) = *&v3[qword_1EE11E9F8];
  *(inited + 56) = v9;
  *(inited + 64) = 0x65676E6172;
  *(inited + 72) = 0xE500000000000000;
  v10 = v3[qword_1EE11EA00];
  if (v10 <= 4)
  {
    if (v3[qword_1EE11EA00] <= 1u)
    {
      v11 = 0xE200000000000000;
      if (v3[qword_1EE11EA00])
      {
        v12 = 25653;
      }

      else
      {
        v12 = 25649;
      }
    }

    else if (v10 == 2)
    {
      v11 = 0xE200000000000000;
      v12 = 27953;
    }

    else if (v10 == 3)
    {
      v11 = 0xE200000000000000;
      v12 = 27955;
    }

    else
    {
      v11 = 0xE200000000000000;
      v12 = 27958;
    }
  }

  else if (v3[qword_1EE11EA00] > 7u)
  {
    if (v10 == 8)
    {
      v11 = 0xE200000000000000;
      v12 = 31029;
    }

    else if (v10 == 9)
    {
      v11 = 0xE300000000000000;
      v12 = 7942193;
    }

    else
    {
      v11 = 0xE300000000000000;
      v12 = 7889261;
    }
  }

  else if (v10 == 5)
  {
    v11 = 0xE300000000000000;
    v12 = 6583417;
  }

  else if (v10 == 6)
  {
    v11 = 0xE200000000000000;
    v12 = 31025;
  }

  else
  {
    v11 = 0xE200000000000000;
    v12 = 31026;
  }

  *(inited + 80) = v12;
  *(inited + 88) = v11;
  *(inited + 96) = 0x74655361746164;
  *(inited + 104) = 0xE700000000000000;
  *(inited + 112) = 0x7472616863;
  *(inited + 120) = 0xE500000000000000;
  sub_1DACB71E4();
  v13 = sub_1DAA4BDD8(v8);
  swift_setDeallocating();
  sub_1DAA4BD7C();
  swift_arrayDestroy();
  v14 = *v6;
  v15 = sub_1DABF30CC(2, v13, &v3[qword_1EE11EA08], &v3[qword_1EE11EA10]);

  v16 = (v15 + *((*MEMORY[0x1E69E7D40] & *v15) + qword_1EE13E480 + 16));
  v17 = *v16;
  v18 = v16[1];
  *v16 = sub_1DAAD5AF0;
  v16[1] = 0;
  sub_1DAA4F910(v17);
  v19 = swift_allocObject();
  v19[2] = a1;
  v19[3] = a2;
  v19[4] = v3;
  v20 = v15;
  sub_1DACB71F4();
  v21 = v3;
  sub_1DACB8304();

  [v20 start];
}

uint64_t sub_1DAAD5B3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_1DAAD8184();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1E69D6AF8];
  sub_1DAA7BCA8(0, &qword_1EE11FEE0, sub_1DAAD8184, MEMORY[0x1E69D6AF8]);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v28 - v13;
  sub_1DAAD8348(a2, &v28 - v13, &qword_1EE11FEE0, sub_1DAAD8184, v10, sub_1DAA7BCA8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1DAAD8234(v14, &qword_1EE11FEE0, sub_1DAAD8184, MEMORY[0x1E69D6AF8], sub_1DAA7BCA8);
    sub_1DAA8C2EC();
    v16 = a3 + *(v15 + 48);
    v17 = sub_1DACB8754();
    (*(*(v17 - 8) + 16))(a3, a1, v17);
    *v16 = xmmword_1DACC2620;
    v18 = MEMORY[0x1E69E7CC0];
    *(v16 + 16) = MEMORY[0x1E69E7CC0];
    *(v16 + 24) = v18;
    type metadata accessor for NetworkEvent();
    *(v16 + 32) = 0;
    *(v16 + 40) = 0;
  }

  else
  {
    sub_1DAAD87CC(v14, v9, sub_1DAAD8184);
    v19 = sub_1DACB8754();
    (*(*(v19 - 8) + 16))(a3, a1, v19);
    sub_1DAAD83BC(0, &qword_1EE11FF88, &type metadata for SDSQuoteResponse, MEMORY[0x1E69D68E0]);
    sub_1DACB8794();
    v20 = v28;
    sub_1DAA75E60(v29, v30);
    v21 = *(v20 + 16);

    sub_1DACB8794();

    v22 = v30;
    if (v30)
    {
      v23 = v29;
    }

    else
    {
      v23 = 0;
    }

    sub_1DAA8C2EC();
    v25 = (a3 + *(v24 + 48));
    sub_1DAAD8294(v9, sub_1DAAD8184);
    *v25 = 1;
    v25[1] = v21;
    v26 = MEMORY[0x1E69E7CC0];
    v25[2] = MEMORY[0x1E69E7CC0];
    v25[3] = v26;
    v25[4] = v23;
    v25[5] = v22;
    type metadata accessor for NetworkEvent();
  }

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1DAAD5EA8(uint64_t a1, void (*a2)(void **), uint64_t a3, uint64_t a4)
{
  v27[1] = a4;
  v29 = a2;
  v5 = type metadata accessor for Chart(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v28 = v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DAAD8184();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1E69D6AF8];
  sub_1DAA7BCA8(0, &qword_1EE11D458, type metadata accessor for Chart, MEMORY[0x1E69D6AF8]);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = (v27 - v15);
  sub_1DAA7BCA8(0, &qword_1EE11FEE0, sub_1DAAD8184, v12);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17);
  v20 = (v27 - v19);
  sub_1DAAD8348(a1, v27 - v19, &qword_1EE11FEE0, sub_1DAAD8184, v12, sub_1DAA7BCA8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v21 = *v20;
    *v16 = *v20;
    swift_storeEnumTagMultiPayload();
    v22 = v21;
    v29(v16);

    return sub_1DAAD8234(v16, &qword_1EE11D458, type metadata accessor for Chart, MEMORY[0x1E69D6AF8], sub_1DAA7BCA8);
  }

  else
  {
    v24 = v29;
    v25 = v11;
    sub_1DAAD87CC(v20, v11, sub_1DAAD8184);
    sub_1DAAD83BC(0, &qword_1EE11FF88, &type metadata for SDSQuoteResponse, MEMORY[0x1E69D68E0]);
    sub_1DACB8794();
    v26 = v28;
    sub_1DAAD6420(&v30, v28);
    v34 = v30;
    sub_1DAAD8234(&v34, &unk_1EE11FB38, &type metadata for SDSQuoteResponse.SDSQuoteResponseItem, MEMORY[0x1E69E62F8], sub_1DAAD83BC);
    v35[0] = v31;
    v35[1] = v32;
    v36 = v33;
    sub_1DAAD8234(v35, &qword_1EE125140, &type metadata for SDSMetadata, MEMORY[0x1E69E6720], sub_1DAAD83BC);
    sub_1DAA83594(v26, v16, type metadata accessor for Chart);
    swift_storeEnumTagMultiPayload();
    v24(v16);
    sub_1DAAD8234(v16, &qword_1EE11D458, type metadata accessor for Chart, MEMORY[0x1E69D6AF8], sub_1DAA7BCA8);
    sub_1DAAD8294(v26, type metadata accessor for Chart);
    return sub_1DAAD8294(v25, sub_1DAAD8184);
  }
}

uint64_t sub_1DAAD6420@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for Chart.Entry(0);
  v103 = *(v5 - 8);
  v104 = v5;
  v6 = *(v103 + 64);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v102 = &v83 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v98 = &v83 - v9;
  v10 = type metadata accessor for Chart(0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10);
  v96 = (&v83 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v95 = sub_1DACB7CC4();
  v94 = *(v95 - 8);
  v13 = *(v94 + 64);
  MEMORY[0x1EEE9AC00](v95);
  v93 = &v83 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DAA49610();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v97 = &v83 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DAA7BCA8(0, &qword_1EE1239E8, MEMORY[0x1E6969BC0], MEMORY[0x1E69E6720]);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v21 = &v83 - v20;
  v111 = sub_1DACB7F54();
  v100 = *(v111 - 8);
  v22 = *(v100 + 64);
  v23 = MEMORY[0x1EEE9AC00](v111);
  v92 = &v83 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x1EEE9AC00](v23);
  v26 = &v83 - v25;
  MEMORY[0x1EEE9AC00](v24);
  v99 = &v83 - v27;
  v28 = *a1;
  v29 = *(*a1 + 16);
  if (!v29)
  {
LABEL_7:
    sub_1DAAD82F4();
    swift_allocError();
    *v34 = 0;
    *(v34 + 8) = 0;
LABEL_15:
    *(v34 + 16) = 3;
    return swift_willThrow();
  }

  v30 = &v2[qword_1EE11E9F8];
  while (1)
  {
    v106 = *(v28 + 32);
    v31 = *(v28 + 48);
    v32 = *(v28 + 64);
    v33 = *(v28 + 80);
    v110 = *(v28 + 96);
    v108 = v32;
    v109 = v33;
    v107 = v31;
    if (*(v28 + 752) == *v30 && *(v28 + 760) == v30[1])
    {
      break;
    }

    if (sub_1DACBA174())
    {
      break;
    }

    v28 += 776;
    if (!--v29)
    {
      goto LABEL_7;
    }
  }

  if (!v107)
  {
    sub_1DAAD82F4();
    swift_allocError();
    *v34 = xmmword_1DACC2620;
    goto LABEL_15;
  }

  v88 = v107;
  v85 = v10;
  v91 = a2;
  v86 = *(&v106 + 1);
  v87 = v106;
  v90 = v110;
  v35 = v108;
  v36 = *(&v107 + 1);
  v37 = v2[qword_1EE11EA00] == 0;
  v89 = v2[qword_1EE11EA00] != 0;
  if (v37)
  {
    v38 = *(&v109 + 1);
  }

  else
  {
    v38 = 0;
  }

  v39 = v109;
  sub_1DAAD8348(&v106, v105, &unk_1EE11EAF0, &type metadata for SDSQuoteResponse.SDSQuoteResponseChartItem, MEMORY[0x1E69E6720], sub_1DAAD83BC);
  v40 = v101;
  sub_1DAAD72E4(v36, v35, *(&v35 + 1), v39, v21);
  if (v40)
  {
    return sub_1DAAD8234(&v106, &unk_1EE11EAF0, &type metadata for SDSQuoteResponse.SDSQuoteResponseChartItem, MEMORY[0x1E69E6720], sub_1DAAD83BC);
  }

  v84 = v38;
  v42 = v100;
  v43 = v111;
  if ((*(v100 + 48))(v21, 1, v111) != 1)
  {
    (*(v42 + 32))(v99, v21, v43);
    v51 = swift_allocObject();
    *(v51 + 16) = v2;
    v53 = v2;
    v52 = sub_1DAAD87A0;
    goto LABEL_20;
  }

  sub_1DAAD8234(v21, &qword_1EE1239E8, MEMORY[0x1E6969BC0], MEMORY[0x1E69E6720], sub_1DAA7BCA8);
  if (qword_1EE123A08 != -1)
  {
    goto LABEL_37;
  }

  while (1)
  {
    v44 = __swift_project_value_buffer(v43, qword_1EE13E458);
    v45 = v100;
    v46 = *(v100 + 16);
    v46(v99, v44, v111);
    v46(v26, v44, v111);
    v47 = (*(v45 + 80) + 16) & ~*(v45 + 80);
    v48 = swift_allocObject();
    v49 = v48 + v47;
    v43 = v111;
    v50 = v26;
    v51 = v48;
    (*(v45 + 32))(v49, v50, v111);
    v52 = sub_1DAAD840C;
LABEL_20:
    v54 = v52;
    v55 = sub_1DAAD8488(v88, v52, v51);
    v56 = v90;
    v57 = v89;
    v101 = v55;
    v58 = v97;
    sub_1DAAD6FEC(v87, v86, v54, v97);
    v88 = v51;
    v90 = v57 | v56;
    sub_1DAAD8234(&v106, &unk_1EE11EAF0, &type metadata for SDSQuoteResponse.SDSQuoteResponseChartItem, MEMORY[0x1E69E6720], sub_1DAAD83BC);
    v59 = v58;
    v60 = *(v100 + 16);
    v61 = v92;
    v60(v92, v99, v43);
    v62 = v93;
    sub_1DACB7CB4();
    v63 = v96;
    v64 = v101;
    *v96 = v101;
    v65 = v85;
    sub_1DAA83594(v59, &v63[v85[5]], sub_1DAA49610);
    v66 = &v63[v65[6]];
    *v66 = v84;
    v66[8] = v90 & 1;
    v60(&v63[v65[7]], v61, v111);
    (*(v94 + 16))(&v63[v65[8]], v62, v95);
    v26 = *(v64 + 16);
    sub_1DACB71E4();
    v67 = MEMORY[0x1E69E7CC0];
    if (!v26)
    {
      break;
    }

    v43 = 0;
    v68 = MEMORY[0x1E69E7CC0];
    v69 = v98;
    v70 = v91;
    v71 = v101;
    while (v43 < *(v71 + 16))
    {
      v72 = (*(v103 + 80) + 32) & ~*(v103 + 80);
      v73 = *(v103 + 72);
      sub_1DAA83594(v71 + v72 + v73 * v43, v69, type metadata accessor for Chart.Entry);
      v74 = v69 + *(v104 + 36);
      if ((*(v74 + 8) & 1) != 0 || *v74 <= 0.0)
      {
        sub_1DAAD8294(v69, type metadata accessor for Chart.Entry);
      }

      else
      {
        sub_1DAAD87CC(v69, v102, type metadata accessor for Chart.Entry);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v105[0] = v68;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1DAA83020(0, *(v68 + 16) + 1, 1);
          v68 = v105[0];
        }

        v77 = *(v68 + 16);
        v76 = *(v68 + 24);
        if (v77 >= v76 >> 1)
        {
          sub_1DAA83020(v76 > 1, v77 + 1, 1);
          v68 = v105[0];
        }

        *(v68 + 16) = v77 + 1;
        sub_1DAAD87CC(v102, v68 + v72 + v77 * v73, type metadata accessor for Chart.Entry);
        v70 = v91;
        v69 = v98;
      }

      ++v43;
      v71 = v101;
      if (v26 == v43)
      {
        goto LABEL_33;
      }
    }

    __break(1u);
LABEL_37:
    swift_once();
  }

  v68 = MEMORY[0x1E69E7CC0];
  v70 = v91;
LABEL_33:

  v78 = *(v68 + 16);

  (*(v94 + 8))(v93, v95);
  v79 = *(v100 + 8);
  v80 = v111;
  v79(v92, v111);
  sub_1DAAD8294(v97, sub_1DAA49610);
  v79(v99, v80);
  v81 = &unk_1F567C238;
  if (!v78)
  {
    v81 = v67;
  }

  v82 = v96;
  *(v96 + v85[9]) = v81;
  sub_1DAAD87CC(v82, v70, type metadata accessor for Chart);
}

uint64_t sub_1DAAD6FEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(uint64_t)@<X2>, char *a4@<X8>)
{
  v38 = a4;
  v39 = a1;
  sub_1DAA82998();
  v7 = v6;
  v8 = *(*(v6 - 8) + 64);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v35 - v12;
  v14 = sub_1DACB7CC4();
  v40 = *(v14 - 8);
  v15 = *(v40 + 64);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = &v35 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v35 - v19;
  v21 = v41;
  result = a3(a2);
  if (!v21)
  {
    v36 = v11;
    v37 = v13;
    v23 = v7;
    a3(v39);
    v41 = 0;
    sub_1DAA49674();
    v24 = v14;
    result = sub_1DACB9244();
    if (result)
    {
      v25 = v40;
      v26 = *(v40 + 32);
      v27 = v37;
      v26(v37, v20, v14);
      v28 = v23;
      v26((v27 + *(v23 + 48)), v18, v14);
      v29 = v36;
      sub_1DAA83594(v27, v36, sub_1DAA82998);
      v30 = *(v28 + 48);
      v26(v38, v29, v24);
      v31 = *(v25 + 8);
      v31(v29 + v30, v24);
      sub_1DAAD87CC(v27, v29, sub_1DAA82998);
      v32 = v24;
      v33 = *(v28 + 48);
      sub_1DAA49610();
      v26(&v38[*(v34 + 36)], (v29 + v33), v32);
      return (v31)(v29, v32);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}