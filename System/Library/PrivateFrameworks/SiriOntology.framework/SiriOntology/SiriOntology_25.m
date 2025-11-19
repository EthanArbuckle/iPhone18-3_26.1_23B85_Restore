uint64_t static Graph.getNamesForTaskNodeName(name:)(uint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  v6 = *a3;
  v5 = a3[1];
  v7 = a3[4];
  if (v7 && (v8 = v7[3]) != 0)
  {
    v9 = v7[9];
    v31 = v7[8];
    v10 = v7[6];
    v11 = v7[7];
    v12 = v7[4];
    v13 = v7[5];
    v14 = v7[2];

    v15 = v31;
    result = v14;
  }

  else
  {
    result = sub_1C05EFD14(v6, v5);
    if (v17)
    {
      v8 = v17;
      v10 = v18;
      v11 = v19;
      v9 = 0xE600000000000000;
      v15 = 0x797469746E45;
      v13 = 0xE400000000000000;
      v12 = 1651664214;
    }

    else
    {
      sub_1C051D6F4();
      v20 = sub_1C095DB3C();
      if (v20[2] != 2)
      {

        sub_1C079B4FC();
        swift_allocError();
        *v27 = v6;
        *(v27 + 8) = v5;
        *(v27 + 16) = 2;
        swift_willThrow();
      }

      v29 = v20[4];
      v30 = v20[5];
      v21 = v20;

      result = sub_1C095D8DC();
      v28 = result;
      v23 = v21;
      if (v21[2] < 2uLL)
      {
        __break(1u);
        return result;
      }

      v8 = v22;
      v24 = v23[6];
      v25 = v23[7];

      v10 = sub_1C095D8DC();
      v11 = v26;
      v9 = 0xE600000000000000;
      v15 = 0x797469746E45;
      v13 = 0xE400000000000000;
      v12 = 1651664214;
      result = v28;
    }
  }

  *a1 = result;
  a1[1] = v8;
  a1[2] = v12;
  a1[3] = v13;
  a1[4] = 0;
  *a2 = v10;
  a2[1] = v11;
  a2[2] = v15;
  a2[3] = v9;
  a2[4] = 0;
  return result;
}

uint64_t Graph.protobufDataSiriNl()()
{
  v2 = type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  Graph.protobufGraphSiriNl(vocabManager:)(0, v5);
  if (!v1)
  {
    sub_1C079B680();
    v0 = sub_1C095D58C();
    sub_1C079B5B8(v5, type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph);
  }

  return v0;
}

uint64_t sub_1C0798000(void *a1, uint64_t a2)
{
  v402 = a2;
  v3 = type metadata accessor for Siri_Nl_Core_Protocol_UtteranceSpan(0);
  v414 = *(v3 - 8);
  v4 = *(v414 + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v458 = &v372 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Siri_Nl_Core_Protocol_UtteranceAlignment(0);
  v422 = *(v6 - 8);
  v7 = *(v422 + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v439 = &v372 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v442 = sub_1C095D2EC();
  v389 = *(v442 - 8);
  v9 = *(v389 + 64);
  MEMORY[0x1EEE9AC00](v442);
  v421 = &v372 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE1E830, &qword_1C09933E0);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x1EEE9AC00](v11 - 8);
  v438 = &v372 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v437 = &v372 - v15;
  v455 = type metadata accessor for Siri_Nl_Core_Protocol_UsoEntityIdentifier(0);
  v390 = *(v455 - 1);
  v16 = *(v390 + 64);
  MEMORY[0x1EEE9AC00](v455);
  v18 = (&v372 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16D90, &qword_1C0970458);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v412 = &v372 - v21;
  v434 = type metadata accessor for Siri_Nl_Core_Protocol_UsoLabel(0);
  v399 = *(v434 - 8);
  v22 = *(v399 + 64);
  MEMORY[0x1EEE9AC00](v434);
  v409 = (&v372 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16DA0, &qword_1C0997A60);
  v25 = *(*(v24 - 8) + 64);
  v26 = MEMORY[0x1EEE9AC00](v24 - 8);
  v423 = &v372 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x1EEE9AC00](v26);
  v382 = &v372 - v29;
  v30 = MEMORY[0x1EEE9AC00](v28);
  v416 = &v372 - v31;
  v32 = MEMORY[0x1EEE9AC00](v30);
  v408 = &v372 - v33;
  MEMORY[0x1EEE9AC00](v32);
  v429 = (&v372 - v34);
  v446 = type metadata accessor for Siri_Nl_Core_Protocol_UsoEdgeLabel(0);
  v398 = *(v446 - 8);
  v35 = *(v398 + 64);
  v36 = MEMORY[0x1EEE9AC00](v446);
  v419 = &v372 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = MEMORY[0x1EEE9AC00](v36);
  v383 = &v372 - v39;
  v40 = MEMORY[0x1EEE9AC00](v38);
  v427 = &v372 - v41;
  v42 = MEMORY[0x1EEE9AC00](v40);
  v426 = &v372 - v43;
  MEMORY[0x1EEE9AC00](v42);
  v425 = &v372 - v44;
  v424 = type metadata accessor for Siri_Nl_Core_Protocol_UsoEdge(0);
  v397 = *(v424 - 8);
  v45 = *(v397 + 64);
  MEMORY[0x1EEE9AC00](v424);
  v451 = &v372 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  v392 = sub_1C095D2AC();
  v457 = *(v392 - 8);
  v47 = *(v457 + 8);
  MEMORY[0x1EEE9AC00](v392);
  v385 = &v372 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16DC0, &unk_1C0997A50);
  v50 = *(*(v49 - 8) + 64);
  v51 = MEMORY[0x1EEE9AC00](v49 - 8);
  v384 = &v372 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v51);
  v391 = &v372 - v53;
  v440 = sub_1C095D32C();
  v54 = *(v440 - 8);
  v55 = *(v54 + 64);
  v56 = MEMORY[0x1EEE9AC00](v440);
  v420 = &v372 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v56);
  v387 = &v372 - v58;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16D68, &unk_1C09933C0);
  v60 = *(*(v59 - 8) + 64);
  v61 = MEMORY[0x1EEE9AC00](v59 - 8);
  v430 = &v372 - ((v62 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = MEMORY[0x1EEE9AC00](v61);
  v436 = &v372 - v64;
  v65 = MEMORY[0x1EEE9AC00](v63);
  v386 = &v372 - v66;
  MEMORY[0x1EEE9AC00](v65);
  v395 = &v372 - v67;
  v431 = sub_1C095D26C();
  v454 = *(v431 - 1);
  v68 = *(v454 + 8);
  v69 = MEMORY[0x1EEE9AC00](v431);
  v379 = &v372 - ((v70 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = MEMORY[0x1EEE9AC00](v69);
  v394 = &v372 - v72;
  v73 = MEMORY[0x1EEE9AC00](v71);
  v401 = &v372 - v74;
  v75 = MEMORY[0x1EEE9AC00](v73);
  v381 = &v372 - v76;
  v77 = MEMORY[0x1EEE9AC00](v75);
  v405 = &v372 - v78;
  v79 = MEMORY[0x1EEE9AC00](v77);
  v417 = &v372 - v80;
  MEMORY[0x1EEE9AC00](v79);
  v413 = &v372 - v81;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16B58, &unk_1C099B6A0);
  v83 = *(*(v82 - 8) + 64);
  v84 = MEMORY[0x1EEE9AC00](v82 - 8);
  v378 = &v372 - ((v85 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = MEMORY[0x1EEE9AC00](v84);
  v393 = &v372 - v87;
  v88 = MEMORY[0x1EEE9AC00](v86);
  v400 = &v372 - v89;
  v90 = MEMORY[0x1EEE9AC00](v88);
  v406 = &v372 - v91;
  v92 = MEMORY[0x1EEE9AC00](v90);
  v380 = &v372 - v93;
  v94 = MEMORY[0x1EEE9AC00](v92);
  v404 = &v372 - v95;
  v96 = MEMORY[0x1EEE9AC00](v94);
  v98 = &v372 - v97;
  MEMORY[0x1EEE9AC00](v96);
  v428 = (&v372 - v99);
  v432 = type metadata accessor for Siri_Nl_Core_Protocol_UsoNode(0);
  v100 = *(v432 - 1);
  v101 = v100[8];
  MEMORY[0x1EEE9AC00](v432);
  v103 = &v372 - ((v102 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Graph();
  swift_allocObject();
  result = Graph.init()();
  v105 = result;
  v415 = a1;
  v106 = *a1;
  v107 = *(*a1 + 16);
  v456 = result;
  *&v459 = v18;
  v388 = v54;
  v450 = v107;
  if (v107)
  {
    v449 = (v106 + ((*(v100 + 80) + 32) & ~*(v100 + 80)));
    swift_beginAccess();
    v108 = 0;
    v444 = (v454 + 48);
    v410 = (v454 + 32);
    v418 = (v454 + 8);
    v435 = v457 + 48;
    v377 = (v54 + 48);
    v373 = v457 + 32;
    v374 = (v54 + 32);
    v375 = v457 + 8;
    v376 = (v54 + 8);
    v457 = MEMORY[0x1E69E7CC0];
    v452 = v103;
    v411 = v98;
    v448 = v100;
    v447 = v106;
    while (1)
    {
      if (v108 >= *(v106 + 16))
      {
        __break(1u);
        goto LABEL_231;
      }

      sub_1C079B618(&v449[v100[9] * v108], v103, type metadata accessor for Siri_Nl_Core_Protocol_UsoNode);
      v109 = *v103;
      if (!v109)
      {
        break;
      }

      if (qword_1EBE154C8 != -1)
      {
        swift_once();
      }

      v110 = off_1EBE154D0;
      if (*(off_1EBE154D0 + 2) < v109)
      {
        goto LABEL_224;
      }

      v433 = off_1EBE154D0 + 32;
      v111 = off_1EBE154D0 + 40 * v109 + 32;
      v113 = *(v111 - 5);
      v112 = *(off_1EBE154D0 + 5 * v109);
      v54 = *(v111 - 3);
      v114 = *(v111 - 2);
      v115 = *(v111 - 1);
      v116 = qword_1ED5D7C68;
      v454 = v112;

      swift_bridgeObjectRetain_n();
      v453 = v115;

      if (v116 != -1)
      {
        swift_once();
      }

      v117 = v54 == qword_1ED5D7C80 && v114 == unk_1ED5D7C88;
      v118 = v435;
      if (v117)
      {

LABEL_35:
        v141 = *(v105 + 32);
        result = swift_unownedRetainStrong();
        if (!v141)
        {
          goto LABEL_241;
        }

        swift_unownedRetain();

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v457 = sub_1C0578380(0, *(v457 + 2) + 1, 1, v457);
        }

        v143 = *(v457 + 2);
        v142 = *(v457 + 3);
        v144 = v143 + 1;
        if (v143 >= v142 >> 1)
        {
          v457 = sub_1C0578380((v142 > 1), v143 + 1, 1, v457);
        }

LABEL_116:

LABEL_117:

        goto LABEL_118;
      }

      v119 = sub_1C095DF3C();

      if (v119)
      {
        goto LABEL_35;
      }

      v441 = v113;
      v443 = v114;
      if (qword_1ED5D7CA0 != -1)
      {
        swift_once();
      }

      v120 = xmmword_1ED5D7CB8;
      v121 = *(&xmmword_1ED5D7CB8 + 1);
      v122 = qword_1ED5D7CC8;
      v123 = v441 == xmmword_1ED5D7CA8 && v454 == *(&xmmword_1ED5D7CA8 + 1);
      if (v123 || (sub_1C095DF3C() & 1) != 0)
      {
        v124 = v54 == v120 && v443 == v121;
        if (v124 || (sub_1C095DF3C() & 1) != 0)
        {
          if (v453)
          {
            if (v122)
            {

              swift_retain_n();
              v125 = sub_1C05C97E4(v453, v122);

              if (v125)
              {
LABEL_30:
                v126 = *(v432 + 9);
                v127 = v452;
                v128 = v395;
                sub_1C05149F8(&v452[v126], v395, &qword_1EBE16D68, &unk_1C09933C0);
                v129 = v440;
                v445 = *v377;
                v130 = (v445)(v128, 1, v440);
                sub_1C05145B4(v128, &qword_1EBE16D68, &unk_1C09933C0);
                if (v130 == 1)
                {
                  v131 = 0;
                  v132 = 0;
                }

                else
                {
                  v196 = v386;
                  sub_1C05149F8(&v127[v126], v386, &qword_1EBE16D68, &unk_1C09933C0);
                  v197 = v445;
                  if ((v445)(v196, 1, v129) == 1)
                  {
                    v198 = v387;
                    sub_1C095D31C();
                    if (v197(v196, 1, v129) != 1)
                    {
                      sub_1C05145B4(v196, &qword_1EBE16D68, &unk_1C09933C0);
                    }
                  }

                  else
                  {
                    v198 = v387;
                    (*v374)(v387, v196, v129);
                  }

                  v131 = sub_1C095D2FC();
                  v132 = v208;
                  (*v376)(v198, v129);
                }

                v209 = *(v452 + 5);
                v462 = xmmword_1ED5D7CA8;
                v463 = xmmword_1ED5D7CB8;
                *&v464 = qword_1ED5D7CC8;

                v105 = v456;
                v141 = sub_1C0514CE0(&v462, v131, v132, 1, v209);

                goto LABEL_111;
              }
            }
          }

          else if (!v122)
          {
            goto LABEL_30;
          }
        }
      }

      if (qword_1ED5BDED8 != -1)
      {
        swift_once();
      }

      v164 = xmmword_1ED5BDEF0;
      v165 = *(&xmmword_1ED5BDEF0 + 1);
      v166 = qword_1ED5BDF00;
      if (v441 == xmmword_1ED5BDEE0 && v454 == *(&xmmword_1ED5BDEE0 + 1) || (sub_1C095DF3C()) && (v54 == v164 && v443 == v165 || (sub_1C095DF3C()))
      {
        if (v453)
        {
          if (v166)
          {

            swift_retain_n();
            v167 = sub_1C05C97E4(v453, v166);

            if (v167)
            {
LABEL_75:
              v168 = *(v432 + 10);
              v169 = v452;
              v170 = v391;
              sub_1C05149F8(&v452[v168], v391, &qword_1EBE16DC0, &unk_1C0997A50);
              v171 = v392;
              v441 = *v118;
              v172 = (v441)(v170, 1, v392);
              sub_1C05145B4(v170, &qword_1EBE16DC0, &unk_1C0997A50);
              LODWORD(v445) = v172;
              if (v172 == 1)
              {
                v173 = 0;
                v105 = v456;
                v174 = 1;
              }

              else
              {
                v203 = &v169[v168];
                v204 = v384;
                sub_1C05149F8(v203, v384, &qword_1EBE16DC0, &unk_1C0997A50);
                v205 = v441;
                if ((v441)(v204, 1, v171) == 1)
                {
                  v206 = v385;
                  sub_1C095D29C();
                  v207 = v205(v204, 1, v171);
                  v105 = v456;
                  v174 = v445;
                  if (v207 != 1)
                  {
                    sub_1C05145B4(v204, &qword_1EBE16DC0, &unk_1C0997A50);
                  }
                }

                else
                {
                  v206 = v385;
                  (*v373)(v385, v204, v171);
                  v105 = v456;
                  v174 = v445;
                }

                v173 = sub_1C095D27C();
                (*v375)(v206, v171);
              }

              v462 = xmmword_1ED5BDEE0;
              v463 = xmmword_1ED5BDEF0;
              *&v464 = qword_1ED5BDF00;

              v141 = sub_1C0514CE0(&v462, v173, v174 == 1, 0, MEMORY[0x1E69E7CC0]);
LABEL_111:
              v54 = v464;

LABEL_112:

              swift_unownedRetain();

              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v457 = sub_1C0578380(0, *(v457 + 2) + 1, 1, v457);
              }

              v143 = *(v457 + 2);
              v210 = *(v457 + 3);
              v144 = v143 + 1;
              if (v143 >= v210 >> 1)
              {
                v457 = sub_1C0578380((v210 > 1), v143 + 1, 1, v457);
              }

              goto LABEL_116;
            }
          }
        }

        else if (!v166)
        {
          goto LABEL_75;
        }
      }

      v407 = v54;
      v54 = *(v432 + 11);
      v175 = v406;
      sub_1C05149F8(&v452[v54], v406, &qword_1EBE16B58, &unk_1C099B6A0);
      v176 = v431;
      v403 = *v444;
      v177 = v403(v175, 1, v431);
      sub_1C05145B4(v175, &qword_1EBE16B58, &unk_1C099B6A0);
      if (v177 == 1)
      {
        *&v462 = v441;
        *(&v462 + 1) = v454;
        *&v463 = v407;
        *(&v463 + 1) = v443;
        *&v464 = v453;
        v105 = v456;
        v141 = sub_1C0514CE0(&v462, 0, 0, 255, MEMORY[0x1E69E7CC0]);
        goto LABEL_112;
      }

      v445 = v108;
      v396 = v54;
      v178 = v400;
      sub_1C05149F8(&v452[v54], v400, &qword_1EBE16B58, &unk_1C099B6A0);
      v179 = v403;
      if (v403(v178, 1, v176) == 1)
      {
        v180 = v401;
        sub_1C095D25C();
        if (v179(v178, 1, v176) != 1)
        {
          sub_1C05145B4(v178, &qword_1EBE16B58, &unk_1C099B6A0);
        }
      }

      else
      {
        v180 = v401;
        (*v410)(v401, v178, v176);
      }

      v181 = v417;
      sub_1C095D21C();
      v182 = MEMORY[0x1C68DD0C0](v180, v181);
      v183 = *v418;
      (*v418)(v181, v176);
      (v183)(v180, v176);
      if (v182)
      {
        v184 = 0;
        v185 = *(v452 + 3);
        v186 = 0xE400000000000000;
        v187 = *(v452 + 4);
        v188 = 1651664214;
        v108 = v445;
        v189 = v454;
        v190 = v407;
      }

      else
      {
        v372 = v183;
        v191 = v176;
        v192 = v393;
        sub_1C05149F8(&v452[v396], v393, &qword_1EBE16B58, &unk_1C099B6A0);
        v193 = v403;
        v194 = v403(v192, 1, v176);
        v108 = v445;
        if (v194 == 1)
        {
          v195 = v394;
          sub_1C095D25C();
          if (v193(v192, 1, v176) != 1)
          {
            sub_1C05145B4(v192, &qword_1EBE16B58, &unk_1C099B6A0);
          }
        }

        else
        {
          v195 = v394;
          (*v410)(v394, v192, v176);
        }

        v199 = v195;
        v200 = sub_1C095D23C();
        result = (v372)(v199, v191);
        v190 = v407;
        if ((v200 & 0x80000000) != 0)
        {
          goto LABEL_239;
        }

        if (!v200 || v110[2] < v200)
        {
          v54 = v378;
          sub_1C05149F8(&v452[v396], v378, &qword_1EBE16B58, &unk_1C099B6A0);
          v106 = v431;
          v366 = v403;
          if (v403(v54, 1, v431) == 1)
          {
            v367 = v379;
            sub_1C095D25C();
            v368 = v366(v54, 1, v106);
            v105 = v456;
            v369 = v106;
            if (v368 != 1)
            {
              sub_1C05145B4(v54, &qword_1EBE16B58, &unk_1C099B6A0);
            }

            goto LABEL_233;
          }

LABEL_232:
          v367 = v379;
          (*v410)(v379, v54, v106);
          v105 = v456;
          v369 = v106;
LABEL_233:
          v370 = sub_1C095D23C();
          result = (v372)(v367, v369);
          if ((v370 & 0x80000000) == 0)
          {
            sub_1C079B4FC();
            swift_allocError();
            *v371 = v370;
            *(v371 + 8) = 0;
            *(v371 + 16) = 0;
            swift_willThrow();

            sub_1C079B5B8(v415, type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph);
            v355 = type metadata accessor for Siri_Nl_Core_Protocol_UsoNode;
            v356 = v452;
            goto LABEL_225;
          }

LABEL_242:
          __break(1u);
          return result;
        }

        v201 = &v433[40 * v200];
        v185 = *(v201 - 5);
        v187 = *(v201 - 4);
        v188 = *(v201 - 3);
        v186 = *(v201 - 2);
        v184 = *(v201 - 1);

        v189 = v454;
      }

      v461[0] = v185;
      v461[1] = v187;
      v461[2] = v188;
      v461[3] = v186;
      v461[4] = v184;
      v460[0] = v441;
      v460[1] = v189;
      v460[2] = v190;
      v460[3] = v443;
      v460[4] = v453;

      static Graph.createTaskNameWithMetaData(verbName:entityName:)(v461, v460, &v462);
      v445 = v184;

      v441 = v186;

      v54 = *(&v463 + 1);
      v141 = sub_1C0514CE0(&v462, 0, 0, 255, MEMORY[0x1E69E7CC0]);

      swift_unownedRetain();

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v457 = sub_1C0578380(0, *(v457 + 2) + 1, 1, v457);
      }

      v143 = *(v457 + 2);
      v202 = *(v457 + 3);
      v144 = v143 + 1;
      if (v143 >= v202 >> 1)
      {
        v457 = sub_1C0578380((v202 > 1), v143 + 1, 1, v457);
      }

      v105 = v456;
LABEL_118:
      ++v108;

      v211 = v457;
      *(v457 + 2) = v144;
      v212 = &v211[16 * v143];
      *(v212 + 4) = v105;
      *(v212 + 5) = v141;
      v103 = v452;
      result = sub_1C079B5B8(v452, type metadata accessor for Siri_Nl_Core_Protocol_UsoNode);
      v18 = v459;
      v100 = v448;
      v106 = v447;
      if (v450 == v108)
      {
        goto LABEL_121;
      }
    }

    v445 = v108;
    v133 = *(v432 + 11);
    v134 = v428;
    sub_1C05149F8(&v133[v103], v428, &qword_1EBE16B58, &unk_1C099B6A0);
    v135 = *v444;
    v54 = v431;
    v136 = (*v444)(v134, 1, v431);
    sub_1C05145B4(v134, &qword_1EBE16B58, &unk_1C099B6A0);
    if (v136 == 1)
    {
      v137 = *(v103 + 1);
      v138 = *(v103 + 2);

      v139 = 0xE600000000000000;
      v140 = 0x797469746E45;
      v108 = v445;
    }

    else
    {
      v454 = v133;
      v145 = v411;
      sub_1C05149F8(&v133[v103], v411, &qword_1EBE16B58, &unk_1C099B6A0);
      if (v135(v145, 1, v54) == 1)
      {
        v146 = v413;
        sub_1C095D25C();
        v147 = v135;
        v148 = v135(v145, 1, v54);
        v149 = v54;
        v108 = v445;
        if (v148 != 1)
        {
          sub_1C05145B4(v145, &qword_1EBE16B58, &unk_1C099B6A0);
        }
      }

      else
      {
        v147 = v135;
        v146 = v413;
        (*v410)(v413, v145, v54);
        v149 = v54;
        v108 = v445;
      }

      v54 = v417;
      sub_1C095D21C();
      v150 = MEMORY[0x1C68DD0C0](v146, v54);
      v151 = *v418;
      (*v418)(v54, v149);
      v453 = v151;
      (v151)(v146, v149);
      v103 = v452;
      if ((v150 & 1) == 0)
      {
        v153 = v404;
        sub_1C05149F8(&v454[v452], v404, &qword_1EBE16B58, &unk_1C099B6A0);
        v154 = v147(v153, 1, v149);
        v443 = v147;
        if (v154 == 1)
        {
          v155 = v405;
          sub_1C095D25C();
          if (v147(v153, 1, v149) != 1)
          {
            sub_1C05145B4(v153, &qword_1EBE16B58, &unk_1C099B6A0);
          }
        }

        else
        {
          v155 = v405;
          (*v410)(v405, v153, v149);
        }

        v156 = v155;
        v157 = sub_1C095D23C();
        v158 = v149;
        v159 = v453;
        result = (v453)(v156, v158);
        if ((v157 & 0x80000000) != 0)
        {
          goto LABEL_238;
        }

        if (qword_1EBE154C8 != -1)
        {
          swift_once();
        }

        v105 = v456;
        if (!v157 || *(off_1EBE154D0 + 2) < v157)
        {
          v359 = v380;
          sub_1C05149F8(&v454[v103], v380, &qword_1EBE16B58, &unk_1C099B6A0);
          v360 = v431;
          v361 = v443;
          if ((v443)(v359, 1, v431) == 1)
          {
            v362 = v381;
            sub_1C095D25C();
            v363 = v361(v359, 1, v360);
            v364 = v360;
            if (v363 != 1)
            {
              sub_1C05145B4(v359, &qword_1EBE16B58, &unk_1C099B6A0);
            }
          }

          else
          {
            v362 = v381;
            (*v410)(v381, v359, v360);
            v364 = v360;
          }

          LODWORD(v109) = sub_1C095D23C();
          result = (v159)(v362, v364);
          if ((v109 & 0x80000000) == 0)
          {
            v109 = v109;
LABEL_224:
            sub_1C079B4FC();
            swift_allocError();
            *v365 = v109;
            *(v365 + 8) = 0;
            *(v365 + 16) = 0;
            swift_willThrow();

            sub_1C079B5B8(v415, type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph);
            v355 = type metadata accessor for Siri_Nl_Core_Protocol_UsoNode;
            v356 = v103;
            goto LABEL_225;
          }

          goto LABEL_240;
        }

        v160 = (off_1EBE154D0 + 40 * v157);
        v161 = *v160;
        v162 = v160[2];
        v54 = v160[3];
        *&v462 = *(v160 - 1);
        *(&v462 + 1) = v161;

        swift_bridgeObjectRetain_n();

        MEMORY[0x1C68DD690](14906, 0xE200000000000000);
        MEMORY[0x1C68DD690](*(v103 + 1), *(v103 + 2));
        v138 = *(&v462 + 1);
        v137 = v462;

        v139 = 0xE400000000000000;
        v140 = 1802723668;
        goto LABEL_58;
      }

      v152 = *(v452 + 4);
      *&v462 = *(v452 + 3);
      *(&v462 + 1) = v152;

      MEMORY[0x1C68DD690](14906, 0xE200000000000000);
      MEMORY[0x1C68DD690](*(v103 + 1), *(v103 + 2));
      v138 = *(&v462 + 1);
      v137 = v462;
      v139 = 0xE400000000000000;
      v140 = 1802723668;
    }

    v105 = v456;
LABEL_58:
    *&v462 = v137;
    *(&v462 + 1) = v138;
    *&v463 = v140;
    *(&v463 + 1) = v139;
    *&v464 = 0;

    v141 = sub_1C0514CE0(&v462, 0, 0, 255, MEMORY[0x1E69E7CC0]);

    swift_unownedRetain();

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v457 = sub_1C0578380(0, *(v457 + 2) + 1, 1, v457);
    }

    v143 = *(v457 + 2);
    v163 = *(v457 + 3);
    v144 = v143 + 1;
    if (v143 >= v163 >> 1)
    {
      v457 = sub_1C0578380((v163 > 1), v143 + 1, 1, v457);
    }

    goto LABEL_117;
  }

  v457 = MEMORY[0x1E69E7CC0];
LABEL_121:
  v433 = v415[1];
  v213 = *(v433 + 2);
  v214 = v434;
  v215 = v446;
  v216 = v429;
  if (!v213)
  {
LABEL_163:
    v106 = v415[2];
    v54 = *(v106 + 16);
    if (v54)
    {
      v285 = (*(v390 + 80) + 32) & ~*(v390 + 80);
      v435 = *(v390 + 72);
      sub_1C079B618(v106 + v285, v18, type metadata accessor for Siri_Nl_Core_Protocol_UsoEntityIdentifier);
      v286 = *v18;
      if (*(v457 + 2) <= v286)
      {
LABEL_231:
        __break(1u);
        goto LABEL_232;
      }

      v432 = (v388 + 48);
      v433 = v457 + 32;
      v431 = (v388 + 8);
      v434 = v389 + 48;
      v427 = (v389 + 32);
      v428 = (v388 + 32);
      v429 = (v389 + 8);
      v106 += &v435[v285];
      while (1)
      {
        v443 = v106;
        v454 = v54;
        v287 = &v433[16 * v286];
        v289 = *v287;
        v288 = *(v287 + 1);
        v290 = *(v18 + 4);
        v449 = *(v18 + 3);
        v291 = *(v18 + 2);
        v448 = *(v18 + 1);
        v447 = *(v18 + 5);
        LODWORD(v446) = *(v18 + 48);
        v441 = v455[9];
        v292 = v436;
        sub_1C05149F8(v18 + v441, v436, &qword_1EBE16D68, &unk_1C09933C0);
        v293 = v440;
        v444 = *v432;
        LODWORD(v445) = (v444)(v292, 1, v440);
        v452 = v289;

        v453 = v288;
        swift_unownedRetain();
        v451 = v290;

        v450 = v291;

        sub_1C05145B4(v292, &qword_1EBE16D68, &unk_1C09933C0);
        if (v445 == 1)
        {
          v445 = 0;
          v444 = 0;
          v294 = v434;
          v18 = v459;
        }

        else
        {
          v18 = v459;
          v295 = v430;
          sub_1C05149F8(v459 + v441, v430, &qword_1EBE16D68, &unk_1C09933C0);
          v296 = v444;
          if ((v444)(v295, 1, v293) == 1)
          {
            v297 = v420;
            sub_1C095D31C();
            v298 = (v296)(v295, 1, v293);
            v294 = v434;
            if (v298 != 1)
            {
              sub_1C05145B4(v430, &qword_1EBE16D68, &unk_1C09933C0);
            }
          }

          else
          {
            v297 = v420;
            (*v428)(v420, v295, v293);
            v294 = v434;
          }

          v445 = sub_1C095D2FC();
          v444 = v299;
          (*v431)(v297, v293);
        }

        v300 = v455[10];
        v301 = v437;
        sub_1C05149F8(v18 + v300, v437, &qword_1EBE1E830, &qword_1C09933E0);
        v302 = *v294;
        v303 = (*v294)(v301, 1, v442);
        sub_1C05145B4(v301, &qword_1EBE1E830, &qword_1C09933E0);
        v304 = 0;
        v305 = v453;
        if (v303 != 1)
        {
          v306 = v438;
          sub_1C05149F8(v18 + v300, v438, &qword_1EBE1E830, &qword_1C09933E0);
          v307 = v442;
          if (v302(v306, 1, v442) == 1)
          {
            v308 = v421;
            sub_1C095D2DC();
            v309 = v302(v438, 1, v307);
            v310 = v308;
            if (v309 != 1)
            {
              sub_1C05145B4(v438, &qword_1EBE1E830, &qword_1C09933E0);
            }
          }

          else
          {
            v310 = v421;
            (*v427)(v421, v306, v307);
          }

          sub_1C095D2BC();
          v304 = v311;
          (*v429)(v310, v307);
          v18 = v459;
        }

        v312 = v18 + v455[11];
        v313 = *v312;
        v314 = v312[4];
        if (v314)
        {
          v313 = 0;
        }

        v315 = v18 + v455[12];
        v316 = *v315;
        v317 = v315[4];
        if (v317)
        {
          v316 = 0;
        }

        v318 = 7;
        if (v447 < 7)
        {
          v318 = v447;
        }

        if (v446)
        {
          v318 = v447;
        }

        v467 = 1;
        v470 = v303 == 1;
        v469 = v314;
        v468 = v317;
        *&v462 = v449;
        *(&v462 + 1) = v451;
        *&v463 = v448;
        *(&v463 + 1) = v450;
        *&v464 = v445;
        *(&v464 + 1) = v444;
        *&v465 = v304;
        BYTE8(v465) = v303 == 1;
        BYTE9(v465) = v318;
        HIDWORD(v465) = v313;
        v466[0] = v314;
        *&v466[4] = v316;
        v466[8] = v317;
        *&v466[16] = 0;
        v466[24] = 1;
        swift_unownedRetainStrong();
        swift_beginAccess();
        v319 = *(v305 + 104);
        sub_1C0518B04(&v462, v461);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(v305 + 104) = v319;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v319 = sub_1C0519CF8(0, *(v319 + 2) + 1, 1, v319);
          *(v305 + 104) = v319;
        }

        v105 = v456;
        v321 = v454;
        v323 = *(v319 + 2);
        v322 = *(v319 + 3);
        if (v323 >= v322 >> 1)
        {
          v319 = sub_1C0519CF8((v322 > 1), v323 + 1, 1, v319);
        }

        *(v319 + 2) = v323 + 1;
        v324 = &v319[96 * v323];
        v325 = v463;
        *(v324 + 2) = v462;
        *(v324 + 3) = v325;
        v326 = v464;
        v327 = v465;
        v328 = *v466;
        *(v324 + 105) = *&v466[9];
        *(v324 + 5) = v327;
        *(v324 + 6) = v328;
        *(v324 + 4) = v326;
        *(v305 + 104) = v319;
        swift_endAccess();
        sub_1C0518B60(&v462);
        sub_1C079B5B8(v18, type metadata accessor for Siri_Nl_Core_Protocol_UsoEntityIdentifier);

        result = swift_unownedRelease();
        v54 = (v321 - 1);
        if (!v54)
        {
          break;
        }

        v106 = &v435[v443];
        sub_1C079B618(v443, v18, type metadata accessor for Siri_Nl_Core_Protocol_UsoEntityIdentifier);
        v286 = *v18;
        if (*(v457 + 2) <= v286)
        {
          goto LABEL_231;
        }
      }
    }

    v329 = v415[3];
    v330 = v439;
    v453 = *(v329 + 2);
    if (!v453)
    {
LABEL_212:

      sub_1C079B5B8(v415, type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph);

      return v105;
    }

    v331 = 0;
    v451 = v457 + 32;
    v452 = v329;
    while (v331 < *(v329 + 2))
    {
      sub_1C079B618(&v329[((*(v422 + 80) + 32) & ~*(v422 + 80)) + *(v422 + 72) * v331], v330, type metadata accessor for Siri_Nl_Core_Protocol_UtteranceAlignment);
      v332 = *(v330 + 4);
      if (*(v457 + 2) <= v332)
      {
        sub_1C079B4FC();
        swift_allocError();
        *v354 = xmmword_1C0999870;
        *(v354 + 16) = 3;
        swift_willThrow();

        sub_1C079B5B8(v415, type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph);
        v355 = type metadata accessor for Siri_Nl_Core_Protocol_UtteranceAlignment;
        v356 = v330;
        goto LABEL_225;
      }

      v455 = v331;
      v333 = &v451[16 * v332];
      v334 = *v333;
      v335 = *(v333 + 1);
      v336 = *(v330 + 1);
      v337 = *(v336 + 16);
      v454 = v334;
      if (v337)
      {
        v338 = v414;
        v339 = v336 + ((*(v414 + 80) + 32) & ~*(v414 + 80));

        swift_unownedRetain();
        v340 = *(v338 + 72);
        v341 = MEMORY[0x1E69E7CC0];
        do
        {
          v342 = v458;
          sub_1C079B618(v339, v458, type metadata accessor for Siri_Nl_Core_Protocol_UtteranceSpan);
          v459 = *v342;
          v343 = *(v342 + 16);
          sub_1C079B5B8(v342, type metadata accessor for Siri_Nl_Core_Protocol_UtteranceSpan);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v341 = sub_1C0578264(0, *(v341 + 2) + 1, 1, v341);
          }

          v345 = *(v341 + 2);
          v344 = *(v341 + 3);
          if (v345 >= v344 >> 1)
          {
            v341 = sub_1C0578264((v344 > 1), v345 + 1, 1, v341);
          }

          *(v341 + 2) = v345 + 1;
          v346 = &v341[24 * v345];
          *(v346 + 2) = v459;
          *(v346 + 6) = v343;
          v339 += v340;
          --v337;
        }

        while (v337);
      }

      else
      {

        swift_unownedRetain();
        v341 = MEMORY[0x1E69E7CC0];
      }

      v347 = *v439;
      swift_unownedRetainStrong();
      v348 = *(v335 + 112);

      v349 = swift_isUniquelyReferenced_nonNull_native();
      *(v335 + 112) = v348;
      if ((v349 & 1) == 0)
      {
        v348 = sub_1C052233C(0, *(v348 + 2) + 1, 1, v348);
        *(v335 + 112) = v348;
      }

      v351 = *(v348 + 2);
      v350 = *(v348 + 3);
      if (v351 >= v350 >> 1)
      {
        v348 = sub_1C052233C((v350 > 1), v351 + 1, 1, v348);
      }

      *(v348 + 2) = v351 + 1;
      v352 = &v348[16 * v351];
      *(v352 + 8) = v347;
      v331 = (v455 + 1);
      *(v352 + 5) = v341;
      *(v335 + 112) = v348;

      v330 = v439;
      sub_1C079B5B8(v439, type metadata accessor for Siri_Nl_Core_Protocol_UtteranceAlignment);

      result = swift_unownedRelease();
      v105 = v456;
      v329 = v452;
      if (v331 == v453)
      {
        goto LABEL_212;
      }
    }

    __break(1u);
LABEL_236:
    __break(1u);
LABEL_237:
    __break(1u);
LABEL_238:
    __break(1u);
LABEL_239:
    __break(1u);
LABEL_240:
    __break(1u);
LABEL_241:
    __break(1u);
    goto LABEL_242;
  }

  v217 = 0;
  v452 = &v433[(*(v397 + 80) + 32) & ~*(v397 + 80)];
  v428 = *(v397 + 72);
  v218 = (v398 + 48);
  v435 = (v399 + 56);
  v418 = (v399 + 48);
  v431 = (v213 - 1);
  v432 = v457 + 32;
  v450 = (v398 + 48);
  while (1)
  {
    v445 = v217;
    v219 = v451;
    sub_1C079B618(v452, v451, type metadata accessor for Siri_Nl_Core_Protocol_UsoEdge);
    v453 = *(v424 + 28);
    sub_1C05149F8(&v219[v453], v216, &qword_1EBE16DA0, &qword_1C0997A60);
    v220 = *v218;
    v221 = (*v218)(v216, 1, v215);
    v454 = v220;
    if (v221 == 1)
    {
      v222 = v425;
      *v425 = 0;
      v223 = &v222[*(v215 + 24)];
      _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
      (*v435)(&v222[*(v215 + 28)], 1, 1, v214);
      v224 = v220(v216, 1, v215);
      v226 = v426;
      v225 = v427;
      if (v224 != 1)
      {
        sub_1C05145B4(v216, &qword_1EBE16DA0, &qword_1C0997A60);
      }
    }

    else
    {
      v222 = v425;
      sub_1C079B550(v216, v425, type metadata accessor for Siri_Nl_Core_Protocol_UsoEdgeLabel);
      v226 = v426;
      v225 = v427;
    }

    v227 = *v222;
    sub_1C079B5B8(v222, type metadata accessor for Siri_Nl_Core_Protocol_UsoEdgeLabel);
    if (!v227)
    {
      v233 = v408;
      sub_1C05149F8(&v219[v453], v408, &qword_1EBE16DA0, &qword_1C0997A60);
      v234 = v454;
      v235 = (v454)(v233, 1, v215);
      v236 = v418;
      if (v235 == 1)
      {
        *v226 = 0;
        v237 = &v226[*(v215 + 24)];
        _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
        (*v435)(&v226[*(v215 + 28)], 1, 1, v214);
        v238 = (v234)(v233, 1, v215);
        v239 = v412;
        v232 = v432;
        if (v238 != 1)
        {
          sub_1C05145B4(v233, &qword_1EBE16DA0, &qword_1C0997A60);
        }
      }

      else
      {
        sub_1C079B550(v233, v226, type metadata accessor for Siri_Nl_Core_Protocol_UsoEdgeLabel);
        v239 = v412;
        v232 = v432;
      }

      sub_1C05149F8(&v226[*(v446 + 28)], v239, &qword_1EBE16D90, &qword_1C0970458);
      v246 = *v236;
      if ((*v236)(v239, 1, v214) == 1)
      {
        v247 = v409;
        *v409 = 0;
        v247[1] = 0xE000000000000000;
        v248 = v247 + *(v214 + 20);
        _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
        sub_1C079B5B8(v226, type metadata accessor for Siri_Nl_Core_Protocol_UsoEdgeLabel);
        v249 = v246(v239, 1, v214);
        v250 = v247;
        v245 = v423;
        if (v249 != 1)
        {
          sub_1C05145B4(v412, &qword_1EBE16D90, &qword_1C0970458);
        }
      }

      else
      {
        sub_1C079B5B8(v226, type metadata accessor for Siri_Nl_Core_Protocol_UsoEdgeLabel);
        v250 = v409;
        sub_1C079B550(v239, v409, type metadata accessor for Siri_Nl_Core_Protocol_UsoLabel);
        v245 = v423;
      }

      v251 = v250[1];
      v444 = *v250;
      v448 = v251;

      sub_1C079B5B8(v250, type metadata accessor for Siri_Nl_Core_Protocol_UsoLabel);
      v449 = 0;
      v447 = 0xE800000000000000;
      v244 = 0x746E656D75677241;
      goto LABEL_145;
    }

    v228 = v416;
    sub_1C05149F8(&v219[v453], v416, &qword_1EBE16DA0, &qword_1C0997A60);
    v229 = v454;
    if ((v454)(v228, 1, v215) == 1)
    {
      *v225 = 0;
      v230 = &v225[*(v215 + 24)];
      _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
      (*v435)(&v225[*(v215 + 28)], 1, 1, v214);
      v231 = (v229)(v228, 1, v215);
      v232 = v432;
      if (v231 != 1)
      {
        sub_1C05145B4(v228, &qword_1EBE16DA0, &qword_1C0997A60);
      }
    }

    else
    {
      sub_1C079B550(v228, v225, type metadata accessor for Siri_Nl_Core_Protocol_UsoEdgeLabel);
      v232 = v432;
    }

    v240 = *v225;
    sub_1C079B5B8(v225, type metadata accessor for Siri_Nl_Core_Protocol_UsoEdgeLabel);
    if (qword_1EBE154C8 == -1)
    {
      if (!v240)
      {
        break;
      }

      goto LABEL_137;
    }

    swift_once();
    if (!v240)
    {
      break;
    }

LABEL_137:
    if (*(off_1EBE154D0 + 2) < v240)
    {
      break;
    }

    v241 = (off_1EBE154D0 + 40 * v240);
    v242 = *v241;
    v444 = *(v241 - 1);
    v244 = v241[1];
    v243 = v241[2];
    v449 = v241[3];

    v448 = v242;

    v447 = v243;

    v245 = v423;
LABEL_145:
    v252 = *v219;
    v253 = *(v457 + 2);
    if (v253 <= v252 || (v254 = *(v219 + 1), v253 <= v254))
    {
      sub_1C079B4FC();
      swift_allocError();
      *v353 = 0;
      *(v353 + 8) = 0;
      *(v353 + 16) = 3;
      swift_willThrow();

      v105 = v456;

      goto LABEL_217;
    }

    v443 = v244;
    v255 = *&v232[16 * v252 + 8];
    v256 = *(swift_unownedRetainStrong() + 56);

    if (*(v457 + 2) <= v254)
    {
      goto LABEL_236;
    }

    v257 = *&v232[16 * v254 + 8];
    v441 = *(swift_unownedRetainStrong() + 56);

    sub_1C05149F8(&v451[v453], v245, &qword_1EBE16DA0, &qword_1C0997A60);
    v258 = v245;
    v259 = v245;
    v260 = v446;
    v261 = v454;
    if ((v454)(v258, 1, v446) == 1)
    {
      v262 = v419;
      *v419 = 0;
      v263 = *(v260 + 24);
      v264 = v449;

      v265 = v448;

      v266 = v447;

      _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
      (*v435)(&v262[*(v260 + 28)], 1, 1, v434);
      v267 = v260;
      v268 = v262;
      if ((v261)(v259, 1, v267) != 1)
      {
        sub_1C05145B4(v259, &qword_1EBE16DA0, &qword_1C0997A60);
      }
    }

    else
    {
      v268 = v419;
      sub_1C079B550(v259, v419, type metadata accessor for Siri_Nl_Core_Protocol_UsoEdgeLabel);
      v264 = v449;

      v265 = v448;

      v266 = v447;
    }

    v269 = *(v268 + 1);
    sub_1C079B5B8(v268, type metadata accessor for Siri_Nl_Core_Protocol_UsoEdgeLabel);
    *&v462 = v256;
    *(&v462 + 1) = v441;
    LODWORD(v463) = v269;
    *(&v463 + 1) = v444;
    *&v464 = v265;
    *(&v464 + 1) = v443;
    *&v465 = v266;
    *(&v465 + 1) = v264;
    v270 = v456;
    swift_beginAccess();
    v271 = *(v270 + 16);

    sub_1C0514AC4(&v462, v461);
    v272 = swift_isUniquelyReferenced_nonNull_native();
    *(v270 + 16) = v271;
    v216 = v429;
    if ((v272 & 1) == 0)
    {
      v271 = sub_1C0514F9C(0, *(v271 + 2) + 1, 1, v271);
      *(v456 + 16) = v271;
    }

    v274 = *(v271 + 2);
    v273 = *(v271 + 3);
    if (v274 >= v273 >> 1)
    {
      v271 = sub_1C0514F9C((v273 > 1), v274 + 1, 1, v271);
    }

    *(v271 + 2) = v274 + 1;
    v275 = &v271[64 * v274];
    v276 = v462;
    v277 = v463;
    v278 = v465;
    *(v275 + 4) = v464;
    *(v275 + 5) = v278;
    *(v275 + 2) = v276;
    *(v275 + 3) = v277;
    v279 = v456;
    *(v456 + 16) = v271;
    v105 = v279;
    swift_endAccess();

    sub_1C0514A70(&v462);

    result = sub_1C079B5B8(v451, type metadata accessor for Siri_Nl_Core_Protocol_UsoEdge);
    v18 = v459;
    v214 = v434;
    v215 = v446;
    if (v431 == v445)
    {
      goto LABEL_163;
    }

    v217 = v445 + 1;
    v280 = *(v433 + 2);
    v452 = v428 + v452;
    v218 = v450;
    if ((v445 + 1) >= v280)
    {
      goto LABEL_237;
    }
  }

  v281 = v382;
  sub_1C05149F8(&v219[v453], v382, &qword_1EBE16DA0, &qword_1C0997A60);
  v282 = v454;
  if ((v454)(v281, 1, v215) == 1)
  {
    v283 = v383;
    *v383 = 0;
    v284 = &v283[*(v215 + 24)];
    _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
    (*v435)(&v283[*(v215 + 28)], 1, 1, v214);
    if ((v282)(v281, 1, v215) != 1)
    {
      sub_1C05145B4(v281, &qword_1EBE16DA0, &qword_1C0997A60);
    }
  }

  else
  {
    v283 = v383;
    sub_1C079B550(v281, v383, type metadata accessor for Siri_Nl_Core_Protocol_UsoEdgeLabel);
  }

  v357 = *v283;
  sub_1C079B5B8(v283, type metadata accessor for Siri_Nl_Core_Protocol_UsoEdgeLabel);
  sub_1C079B4FC();
  swift_allocError();
  *v358 = v357;
  *(v358 + 8) = 0;
  *(v358 + 16) = 0;
  swift_willThrow();
  v105 = v456;

LABEL_217:

  sub_1C079B5B8(v415, type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph);
  v355 = type metadata accessor for Siri_Nl_Core_Protocol_UsoEdge;
  v356 = v219;
LABEL_225:
  sub_1C079B5B8(v356, v355);

  return v105;
}

unint64_t sub_1C079B4FC()
{
  result = qword_1EBE1F9A0;
  if (!qword_1EBE1F9A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE1F9A0);
  }

  return result;
}

uint64_t sub_1C079B550(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1C079B5B8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1C079B618(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_1C079B680()
{
  result = qword_1EBE1E8F8;
  if (!qword_1EBE1E8F8)
  {
    type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE1E8F8);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_12SiriOntology5GraphC23ProtobufConversionErrorO(uint64_t a1)
{
  if ((*(a1 + 16) & 3) == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

uint64_t sub_1C079B6F4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 17))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 16);
  if (v3 <= 3)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1C079B73C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 16) = 0;
    *result = a2 - 253;
    *(result + 8) = 0;
    if (a3 >= 0xFD)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_1C079B780(uint64_t result, unsigned int a2)
{
  if (a2 >= 3)
  {
    *result = a2 - 3;
    *(result + 8) = 0;
    LOBYTE(a2) = 3;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t DynamicTask.nodeName.getter()
{
  v1 = v0[3];
  v2 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v1);
  return (*(v2 + 16))(v1, v2);
}

uint64_t DynamicTask<A>.init(verbName:entityName:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{

  MEMORY[0x1C68DD690](14906, 0xE200000000000000);

  MEMORY[0x1C68DD690](a3, a4);

  a5[3] = &type metadata for BuilderNode;
  a5[4] = &off_1F3FA1508;
  result = swift_allocObject();
  *a5 = result;
  *(result + 64) = 0;
  *(result + 72) = 0;
  *(result + 80) = 1;
  v9 = MEMORY[0x1E69E7CC0];
  *(result + 88) = MEMORY[0x1E69E7CC0];
  *(result + 96) = v9;
  *(result + 104) = v9;
  *(result + 112) = v9;
  *(result + 16) = a1;
  *(result + 24) = a2;
  *(result + 32) = 1802723668;
  *(result + 40) = 0xE400000000000000;
  *(result + 48) = 0;
  *(result + 56) = 0;
  return result;
}

uint64_t DynamicTask.name.getter()
{
  v1 = v0[3];
  v2 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v1);
  return (*(v2 + 16))(v1, v2);
}

uint64_t DynamicTask.verbName.getter()
{
  v1 = v0[3];
  v2 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v1);
  (*(v2 + 16))(&v7, v1, v2);

  sub_1C051D6F4();
  v3 = sub_1C095DB3C();

  if (v3[2])
  {
    v4 = v3[4];
    v5 = v3[5];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

uint64_t DynamicTask.entityName.getter()
{
  v1 = v0[3];
  v2 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v1);
  (*(v2 + 16))(&v9, v1, v2);

  sub_1C051D6F4();
  v3 = sub_1C095DB3C();

  v4 = *(v3 + 16);
  if (v4)
  {
    v5 = (v3 + 16 + 16 * v4);
    v6 = *v5;
    v7 = v5[1];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

uint64_t DynamicTask.init(taskName:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  a3[3] = &type metadata for BuilderNode;
  a3[4] = &off_1F3FA1508;
  result = swift_allocObject();
  *a3 = result;
  *(result + 64) = 0;
  *(result + 72) = 0;
  *(result + 80) = 1;
  v7 = MEMORY[0x1E69E7CC0];
  *(result + 88) = MEMORY[0x1E69E7CC0];
  *(result + 96) = v7;
  *(result + 104) = v7;
  *(result + 112) = v7;
  *(result + 16) = a1;
  *(result + 24) = a2;
  *(result + 32) = 1802723668;
  *(result + 40) = 0xE400000000000000;
  *(result + 48) = 0;
  *(result + 56) = 0;
  return result;
}

double DynamicTask<A>.init<A>(_:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(a1 + 24))
  {
    sub_1C0526080(a1, v8);
    v4 = type metadata accessor for DynamicTask();
    (*(*(v4 - 8) + 8))(a1, v4);
    sub_1C0531D80(v8, v9);
    sub_1C0531D80(v9, a2);
  }

  else
  {
    type metadata accessor for DynamicTask();
    v7 = sub_1C095DB0C();
    (*(*(v7 - 8) + 8))(a1, v7);
    *(a2 + 32) = 0;
    result = 0.0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  return result;
}

double sub_1C079BCD0@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v27 = a4;
  v7 = a1[3];
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v7);
  (*(v8 + 16))(&v30, v7, v8);
  v10 = v30;
  v9 = v31;

  v11 = *(a3 + 8);
  v12 = *(v11 + 8);
  v12(v29, a2, v11);
  v14 = v29[0];
  v13 = v29[1];

  if (v10 == v14 && v9 == v13)
  {
  }

  else
  {
    v15 = sub_1C095DF3C();

    if ((v15 & 1) == 0)
    {
      v12(v29, a2, v11);
      v16 = v29[2];

      v17 = a1[3];
      v18 = a1[4];
      __swift_project_boxed_opaque_existential_1(a1, v17);
      (*(v18 + 16))(&v30, v17, v18);
      v19 = v30;
      v20 = v31;

      v28[0] = v19;
      v28[1] = v20;
      MEMORY[0x1EEE9AC00](v21);
      v26[2] = v28;
      LOBYTE(v17) = sub_1C0576198(sub_1C0771CDC, v26, v16);

      if ((v17 & 1) == 0)
      {
        __swift_destroy_boxed_opaque_existential_1(a1);
        v25 = v27;
        *(v27 + 32) = 0;
        result = 0.0;
        *v25 = 0u;
        v25[1] = 0u;
        return result;
      }
    }
  }

  sub_1C0526080(a1, v32);
  v22 = v32[1];
  v23 = v27;
  *v27 = v32[0];
  *(v23 + 16) = v22;
  *(v23 + 32) = v33;
  __swift_destroy_boxed_opaque_existential_1(a1);
  return result;
}

double DynamicTask<A>.init<A>(_:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  sub_1C0526080(a1, v12);
  sub_1C079BCD0(v12, a2, a3, &v13);
  v8 = type metadata accessor for DynamicTask();
  (*(*(v8 - 8) + 8))(a1, v8);
  if (*(&v14 + 1))
  {
    result = *&v13;
    v10 = v14;
    *a4 = v13;
    *(a4 + 16) = v10;
    *(a4 + 32) = v15;
  }

  else
  {
    type metadata accessor for DynamicTask();
    v11 = sub_1C095DB0C();
    (*(*(v11 - 8) + 8))(&v13, v11);
    *(a4 + 32) = 0;
    result = 0.0;
    *a4 = 0u;
    *(a4 + 16) = 0u;
  }

  return result;
}

uint64_t sub_1C079C038()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t PersonIntentNode.intentNode.getter@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  v2 = v1[1];
  v4 = v1[2];
  v5 = v1[3];
  *a1 = v3;
  a1[1] = v2;
  a1[2] = v4;
  a1[3] = v5;
}

__n128 PersonIntentNode.init(intentNode:ontologyNode:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *(a1 + 24);
  *a3 = *a1;
  result = *(a1 + 8);
  *(a3 + 8) = result;
  *(a3 + 24) = v3;
  *(a3 + 32) = a2;
  return result;
}

uint64_t static PersonIntentNode.from(intentNode:ontologyNode:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  *a3 = *a1;
  a3[1] = v3;
  a3[2] = v4;
  a3[3] = v5;
  a3[4] = a2;
}

uint64_t sub_1C079C1F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  inited = swift_initStaticObject();
  v9 = *(*(a2 + 8) + 8);

  return IntentNodeTraversable.value<A>(forNode:)(inited, a1, v9, a5);
}

uint64_t Siri_Nl_Core_Protocol_RequestID.id.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t Siri_Nl_Core_Protocol_RequestID.id.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t Siri_Nl_Core_Protocol_RequestID.nluRequestID.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17420, &qword_1C0993380);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v12 - v5;
  v7 = type metadata accessor for Siri_Nl_Core_Protocol_RequestID();
  sub_1C079C48C(v1 + *(v7 + 28), v6);
  v8 = type metadata accessor for Siri_Nl_Core_Protocol_UUID();
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return sub_1C079C4FC(v6, a1);
  }

  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 1;
  v10 = a1 + *(v8 + 28);
  _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return sub_1C05145B4(v6, &qword_1EBE17420, &qword_1C0993380);
  }

  return result;
}

uint64_t type metadata accessor for Siri_Nl_Core_Protocol_RequestID()
{
  result = qword_1EBE1F9E0;
  if (!qword_1EBE1F9E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C079C48C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17420, &qword_1C0993380);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C079C4FC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Siri_Nl_Core_Protocol_UUID();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C079C560@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17420, &qword_1C0993380);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v13 - v6;
  v8 = type metadata accessor for Siri_Nl_Core_Protocol_RequestID();
  sub_1C079C48C(a1 + *(v8 + 28), v7);
  v9 = type metadata accessor for Siri_Nl_Core_Protocol_UUID();
  v10 = *(*(v9 - 8) + 48);
  if (v10(v7, 1, v9) != 1)
  {
    return sub_1C079C4FC(v7, a2);
  }

  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 1;
  v11 = a2 + *(v9 + 28);
  _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
  result = (v10)(v7, 1, v9);
  if (result != 1)
  {
    return sub_1C05145B4(v7, &qword_1EBE17420, &qword_1C0993380);
  }

  return result;
}

uint64_t sub_1C079C6A8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Siri_Nl_Core_Protocol_UUID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C079CB6C(a1, v8);
  v9 = *(type metadata accessor for Siri_Nl_Core_Protocol_RequestID() + 28);
  sub_1C05145B4(a2 + v9, &qword_1EBE17420, &qword_1C0993380);
  sub_1C079C4FC(v8, a2 + v9);
  return (*(v5 + 56))(a2 + v9, 0, 1, v4);
}

uint64_t Siri_Nl_Core_Protocol_RequestID.nluRequestID.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Siri_Nl_Core_Protocol_RequestID() + 28);
  sub_1C05145B4(v1 + v3, &qword_1EBE17420, &qword_1C0993380);
  sub_1C079C4FC(a1, v1 + v3);
  v4 = type metadata accessor for Siri_Nl_Core_Protocol_UUID();
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*Siri_Nl_Core_Protocol_RequestID.nluRequestID.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17420, &qword_1C0993380) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for Siri_Nl_Core_Protocol_UUID();
  v5[2] = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  v5[3] = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v5[5] = v13;
  v15 = *(type metadata accessor for Siri_Nl_Core_Protocol_RequestID() + 28);
  *(v5 + 12) = v15;
  sub_1C079C48C(v1 + v15, v8);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    *v14 = 0;
    *(v14 + 8) = 0;
    *(v14 + 16) = 0;
    *(v14 + 24) = 1;
    v17 = v14 + *(v9 + 28);
    _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
    if (v16(v8, 1, v9) != 1)
    {
      sub_1C05145B4(v8, &qword_1EBE17420, &qword_1C0993380);
    }
  }

  else
  {
    sub_1C079C4FC(v8, v14);
  }

  return sub_1C079CA54;
}

void sub_1C079CA54(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 12);
  v4 = (*a1)[4];
  v5 = (*a1)[5];
  v6 = (*a1)[2];
  v7 = (*a1)[3];
  v9 = **a1;
  v8 = (*a1)[1];
  if (a2)
  {
    sub_1C079CB6C((*a1)[5], v4);
    sub_1C05145B4(v9 + v3, &qword_1EBE17420, &qword_1C0993380);
    sub_1C079C4FC(v4, v9 + v3);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
    sub_1C079CBD0(v5);
  }

  else
  {
    sub_1C05145B4(v9 + v3, &qword_1EBE17420, &qword_1C0993380);
    sub_1C079C4FC(v5, v9 + v3);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
  }

  free(v5);
  free(v4);
  free(v8);

  free(v2);
}

uint64_t sub_1C079CB6C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Siri_Nl_Core_Protocol_UUID();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C079CBD0(uint64_t a1)
{
  v2 = type metadata accessor for Siri_Nl_Core_Protocol_UUID();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

BOOL Siri_Nl_Core_Protocol_RequestID.hasNluRequestID.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17420, &qword_1C0993380);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v9 - v3;
  v5 = type metadata accessor for Siri_Nl_Core_Protocol_RequestID();
  sub_1C079C48C(v0 + *(v5 + 28), v4);
  v6 = type metadata accessor for Siri_Nl_Core_Protocol_UUID();
  v7 = (*(*(v6 - 8) + 48))(v4, 1, v6) != 1;
  sub_1C05145B4(v4, &qword_1EBE17420, &qword_1C0993380);
  return v7;
}

Swift::Void __swiftcall Siri_Nl_Core_Protocol_RequestID.clearNluRequestID()()
{
  v1 = *(type metadata accessor for Siri_Nl_Core_Protocol_RequestID() + 28);
  sub_1C05145B4(v0 + v1, &qword_1EBE17420, &qword_1C0993380);
  v2 = type metadata accessor for Siri_Nl_Core_Protocol_UUID();
  v3 = *(*(v2 - 8) + 56);

  v3(v0 + v1, 1, 1, v2);
}

uint64_t Siri_Nl_Core_Protocol_RequestID.connectionID.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t Siri_Nl_Core_Protocol_RequestID.connectionID.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t Siri_Nl_Core_Protocol_RequestID.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Siri_Nl_Core_Protocol_RequestID() + 24);
  v4 = sub_1C095D38C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t Siri_Nl_Core_Protocol_RequestID.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Siri_Nl_Core_Protocol_RequestID() + 24);
  v4 = sub_1C095D38C();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t Siri_Nl_Core_Protocol_RequestID.init()@<X0>(char *a1@<X8>)
{
  *a1 = 0;
  *(a1 + 1) = 0xE000000000000000;
  *(a1 + 2) = 0;
  *(a1 + 3) = 0xE000000000000000;
  v2 = type metadata accessor for Siri_Nl_Core_Protocol_RequestID();
  v3 = &a1[*(v2 + 24)];
  _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
  v4 = *(v2 + 28);
  v5 = type metadata accessor for Siri_Nl_Core_Protocol_UUID();
  v6 = *(*(v5 - 8) + 56);

  return v6(&a1[v4], 1, 1, v5);
}

uint64_t sub_1C079D01C()
{
  v0 = sub_1C095D6EC();
  __swift_allocate_value_buffer(v0, qword_1EBE1F9A8);
  __swift_project_value_buffer(v0, qword_1EBE1F9A8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16C30, &qword_1C096E820);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16C38, &qword_1C0972E20) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C0971210;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "id";
  *(v6 + 8) = 2;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69D26E0];
  v8 = sub_1C095D6BC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "nlu_request_id";
  *(v10 + 1) = 14;
  v10[16] = 2;
  v11 = *MEMORY[0x1E69D26E8];
  v9();
  v12 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 11;
  *v12 = "connection_id";
  *(v12 + 8) = 13;
  *(v12 + 16) = 2;
  v9();
  return sub_1C095D6CC();
}

uint64_t static Siri_Nl_Core_Protocol_RequestID._protobuf_nameMap.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EBE158B8 != -1)
  {
    swift_once();
  }

  v2 = sub_1C095D6EC();
  v3 = __swift_project_value_buffer(v2, qword_1EBE1F9A8);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t Siri_Nl_Core_Protocol_RequestID.decodeMessage<A>(decoder:)()
{
  while (1)
  {
    result = sub_1C095D41C();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 11:
        goto LABEL_8;
      case 2:
        sub_1C079D380();
        break;
      case 1:
LABEL_8:
        sub_1C095D50C();
        break;
    }
  }
}

uint64_t sub_1C079D380()
{
  v0 = *(type metadata accessor for Siri_Nl_Core_Protocol_RequestID() + 28);
  type metadata accessor for Siri_Nl_Core_Protocol_UUID();
  sub_1C079DF74(&qword_1EBE18230, type metadata accessor for Siri_Nl_Core_Protocol_UUID);
  return sub_1C095D55C();
}

uint64_t Siri_Nl_Core_Protocol_RequestID.traverse<A>(visitor:)()
{
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17420, &qword_1C0993380);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v20 - v5;
  v7 = type metadata accessor for Siri_Nl_Core_Protocol_UUID();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v0;
  v13 = v0[1];
  v14 = HIBYTE(v13) & 0xF;
  if ((v13 & 0x2000000000000000) == 0)
  {
    v14 = *v0 & 0xFFFFFFFFFFFFLL;
  }

  if (v14)
  {
    result = sub_1C095D66C();
    if (v1)
    {
      return result;
    }

    v2 = 0;
  }

  v21 = type metadata accessor for Siri_Nl_Core_Protocol_RequestID();
  sub_1C079C48C(v0 + *(v21 + 28), v6);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_1C05145B4(v6, &qword_1EBE17420, &qword_1C0993380);
    v16 = v2;
  }

  else
  {
    sub_1C079C4FC(v6, v11);
    sub_1C079DF74(&qword_1EBE18230, type metadata accessor for Siri_Nl_Core_Protocol_UUID);
    v16 = v2;
    sub_1C095D6AC();
    result = sub_1C079CBD0(v11);
    if (v2)
    {
      return result;
    }
  }

  v17 = v0[3];
  v18 = HIBYTE(v17) & 0xF;
  if ((v17 & 0x2000000000000000) == 0)
  {
    v18 = v0[2] & 0xFFFFFFFFFFFFLL;
  }

  if (!v18 || (result = sub_1C095D66C(), !v16))
  {
    v19 = v0 + *(v21 + 24);
    return sub_1C095D36C();
  }

  return result;
}

uint64_t Siri_Nl_Core_Protocol_RequestID.hashValue.getter()
{
  sub_1C095DFEC();
  type metadata accessor for Siri_Nl_Core_Protocol_RequestID();
  sub_1C079DF74(&qword_1EBE1F9C0, type metadata accessor for Siri_Nl_Core_Protocol_RequestID);
  sub_1C095D71C();
  return sub_1C095E03C();
}

uint64_t sub_1C079D728@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  *a2 = 0;
  *(a2 + 1) = 0xE000000000000000;
  *(a2 + 2) = 0;
  *(a2 + 3) = 0xE000000000000000;
  v4 = &a2[*(a1 + 24)];
  _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
  v5 = *(a1 + 28);
  v6 = type metadata accessor for Siri_Nl_Core_Protocol_UUID();
  v7 = *(*(v6 - 8) + 56);

  return v7(&a2[v5], 1, 1, v6);
}

uint64_t sub_1C079D800(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C079DF74(&qword_1EBE1F9F0, type metadata accessor for Siri_Nl_Core_Protocol_RequestID);

  return MEMORY[0x1EEE3F548](a1, a2, v4);
}

uint64_t sub_1C079D87C@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EBE158B8 != -1)
  {
    swift_once();
  }

  v2 = sub_1C095D6EC();
  v3 = __swift_project_value_buffer(v2, qword_1EBE1F9A8);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1C079D924(uint64_t a1)
{
  v2 = sub_1C079DF74(&qword_1EBE1F9D0, type metadata accessor for Siri_Nl_Core_Protocol_RequestID);

  return MEMORY[0x1EEE3F638](a1, v2);
}

uint64_t sub_1C079D990()
{
  sub_1C079DF74(&qword_1EBE1F9D0, type metadata accessor for Siri_Nl_Core_Protocol_RequestID);

  return sub_1C095D5AC();
}

uint64_t _s12SiriOntology0A27_Nl_Core_Protocol_RequestIDV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v4 = type metadata accessor for Siri_Nl_Core_Protocol_UUID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17420, &qword_1C0993380);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v25 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16D60, &unk_1C0970430);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v25 - v15;
  if ((*a1 != *a2 || a1[1] != a2[1]) && (sub_1C095DF3C() & 1) == 0)
  {
    goto LABEL_10;
  }

  v17 = type metadata accessor for Siri_Nl_Core_Protocol_RequestID();
  v18 = *(v17 + 28);
  v19 = *(v13 + 48);
  sub_1C079C48C(a1 + v18, v16);
  sub_1C079C48C(a2 + v18, &v16[v19]);
  v20 = *(v5 + 48);
  if (v20(v16, 1, v4) != 1)
  {
    sub_1C079C48C(v16, v12);
    if (v20(&v16[v19], 1, v4) != 1)
    {
      sub_1C079C4FC(&v16[v19], v8);
      v22 = static Siri_Nl_Core_Protocol_UUID.== infix(_:_:)(v12, v8);
      sub_1C079CBD0(v8);
      sub_1C079CBD0(v12);
      sub_1C05145B4(v16, &qword_1EBE17420, &qword_1C0993380);
      if ((v22 & 1) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_12;
    }

    sub_1C079CBD0(v12);
LABEL_9:
    sub_1C05145B4(v16, &qword_1EBE16D60, &unk_1C0970430);
    goto LABEL_10;
  }

  if (v20(&v16[v19], 1, v4) != 1)
  {
    goto LABEL_9;
  }

  sub_1C05145B4(v16, &qword_1EBE17420, &qword_1C0993380);
LABEL_12:
  if (a1[2] == a2[2] && a1[3] == a2[3] || (sub_1C095DF3C() & 1) != 0)
  {
    v23 = *(v17 + 24);
    sub_1C095D38C();
    sub_1C079DF74(&qword_1EBE16B78, MEMORY[0x1E69D26B8]);
    v21 = sub_1C095D73C();
    return v21 & 1;
  }

LABEL_10:
  v21 = 0;
  return v21 & 1;
}

void sub_1C079DE88()
{
  sub_1C095D38C();
  if (v0 <= 0x3F)
  {
    sub_1C079DF1C();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1C079DF1C()
{
  if (!qword_1EBE1EEA0)
  {
    type metadata accessor for Siri_Nl_Core_Protocol_UUID();
    v0 = sub_1C095DB0C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBE1EEA0);
    }
  }
}

uint64_t sub_1C079DF74(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t NLIntent.protobufData.getter()
{
  v0 = sub_1C095D39C();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0);
  v2 = type metadata accessor for Com_Apple_Siri_Product_Proto_ProtoIntent(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C079E24C(v5);
  sub_1C0773D08();
  v6 = sub_1C095D58C();
  sub_1C07A5774(v5, type metadata accessor for Com_Apple_Siri_Product_Proto_ProtoIntent);
  return v6;
}

uint64_t sub_1C079E24C@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17780, &qword_1C0999E30);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v147 - v5;
  v7 = type metadata accessor for Com_Apple_Siri_Product_Proto_NLState(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = (&v147 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
  v12 = *(type metadata accessor for Com_Apple_Siri_Product_Proto_ProtoIntent(0) + 20);
  if (qword_1EBE15030 != -1)
  {
    swift_once();
  }

  *(a1 + v12) = qword_1EBE15038;
  v13 = *(v1 + 48);
  v148 = a1;
  v149 = v1;
  if (v13)
  {

    v14 = v1;
    v15 = *(v1 + 64);
    if (!v15)
    {
      goto LABEL_12;
    }

    goto LABEL_9;
  }

  v16 = *(v1 + 40);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v18 = *(a1 + v12);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v19 = type metadata accessor for Com_Apple_Siri_Product_Proto_ProtoIntent._StorageClass(0);
    v20 = *(v19 + 48);
    v21 = *(v19 + 52);
    swift_allocObject();
    v18 = sub_1C05A53E0(v18);
    *(a1 + v12) = v18;
  }

  swift_beginAccess();
  *(v18 + 16) = v16;
  v14 = v149;
  v15 = *(v149 + 64);
  if (v15)
  {
LABEL_9:
    v22 = *(v14 + 56);

    v23 = v148;
    v24 = *(v148 + v12);
    v25 = swift_isUniquelyReferenced_nonNull_native();
    v26 = *(v23 + v12);
    if ((v25 & 1) == 0)
    {
      v27 = type metadata accessor for Com_Apple_Siri_Product_Proto_ProtoIntent._StorageClass(0);
      v28 = *(v27 + 48);
      v29 = *(v27 + 52);
      swift_allocObject();
      v26 = sub_1C05A53E0(v26);
      *(v23 + v12) = v26;
    }

    swift_beginAccess();
    v30 = *(v26 + 32);
    *(v26 + 24) = v22;
    *(v26 + 32) = v15;

    v14 = v149;
  }

LABEL_12:
  v31 = *(v14 + 72);
  v32 = v148;
  v33 = *(v148 + v12);
  v34 = swift_isUniquelyReferenced_nonNull_native();
  v35 = *(v32 + v12);
  if ((v34 & 1) == 0)
  {
    v36 = type metadata accessor for Com_Apple_Siri_Product_Proto_ProtoIntent._StorageClass(0);
    v37 = *(v36 + 48);
    v38 = *(v36 + 52);
    swift_allocObject();
    v35 = sub_1C05A53E0(v35);
    *(v32 + v12) = v35;
  }

  swift_beginAccess();
  *(v35 + 40) = v31;
  v39 = *(v14 + 73);
  v40 = *(v32 + v12);
  v41 = swift_isUniquelyReferenced_nonNull_native();
  v42 = *(v32 + v12);
  if ((v41 & 1) == 0)
  {
    v43 = type metadata accessor for Com_Apple_Siri_Product_Proto_ProtoIntent._StorageClass(0);
    v44 = *(v43 + 48);
    v45 = *(v43 + 52);
    swift_allocObject();
    v42 = sub_1C05A53E0(v42);
    *(v32 + v12) = v42;
  }

  swift_beginAccess();
  *(v42 + 41) = v39;
  v46 = *(v14 + 74);
  v47 = *(v32 + v12);
  v48 = swift_isUniquelyReferenced_nonNull_native();
  v49 = *(v32 + v12);
  if ((v48 & 1) == 0)
  {
    v50 = type metadata accessor for Com_Apple_Siri_Product_Proto_ProtoIntent._StorageClass(0);
    v51 = *(v50 + 48);
    v52 = *(v50 + 52);
    swift_allocObject();
    v49 = sub_1C05A53E0(v49);
    *(v32 + v12) = v49;
  }

  result = swift_beginAccess();
  *(v49 + 42) = v46;
  if ((*(v14 + 88) & 1) == 0)
  {
    v54 = *(v14 + 80);
    if ((v54 & 0x8000000000000000) != 0)
    {
      __break(1u);
LABEL_67:
      __break(1u);
      goto LABEL_68;
    }

    if (HIDWORD(v54))
    {
LABEL_68:
      __break(1u);
      goto LABEL_69;
    }

    v55 = *(v32 + v12);
    v56 = swift_isUniquelyReferenced_nonNull_native();
    v57 = *(v32 + v12);
    if ((v56 & 1) == 0)
    {
      v58 = type metadata accessor for Com_Apple_Siri_Product_Proto_ProtoIntent._StorageClass(0);
      v59 = *(v58 + 48);
      v60 = *(v58 + 52);
      swift_allocObject();
      v57 = sub_1C05A53E0(v57);
      *(v32 + v12) = v57;
    }

    swift_beginAccess();
    *(v57 + 44) = v54;
  }

  v61 = *(v14 + 89);
  v62 = *(v32 + v12);
  v63 = swift_isUniquelyReferenced_nonNull_native();
  v64 = *(v32 + v12);
  if ((v63 & 1) == 0)
  {
    v65 = type metadata accessor for Com_Apple_Siri_Product_Proto_ProtoIntent._StorageClass(0);
    v66 = *(v65 + 48);
    v67 = *(v65 + 52);
    swift_allocObject();
    v64 = sub_1C05A53E0(v64);
    *(v32 + v12) = v64;
  }

  result = swift_beginAccess();
  *(v64 + 48) = v61;
  if ((*(v14 + 104) & 1) == 0)
  {
    v68 = *(v14 + 96);
    if ((v68 & 0x8000000000000000) == 0)
    {
      if (!HIDWORD(v68))
      {
        v69 = *(v32 + v12);
        v70 = swift_isUniquelyReferenced_nonNull_native();
        v71 = *(v32 + v12);
        if ((v70 & 1) == 0)
        {
          v72 = type metadata accessor for Com_Apple_Siri_Product_Proto_ProtoIntent._StorageClass(0);
          v73 = *(v72 + 48);
          v74 = *(v72 + 52);
          swift_allocObject();
          v71 = sub_1C05A53E0(v71);
          *(v32 + v12) = v71;
        }

        swift_beginAccess();
        *(v71 + 52) = v68;
        goto LABEL_32;
      }

LABEL_69:
      __break(1u);
      return result;
    }

    goto LABEL_67;
  }

LABEL_32:
  if ((*(v14 + 105) & 1) == 0)
  {
    *v11 = 0;
    v11[1] = 0xE000000000000000;
    v75 = MEMORY[0x1E69E7CC0];
    v11[2] = sub_1C058BA64(MEMORY[0x1E69E7CC0]);
    v11[3] = sub_1C058BC4C(v75);
    v76 = v11 + *(v7 + 28);
    _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
    v77 = *(v32 + v12);
    v78 = swift_isUniquelyReferenced_nonNull_native();
    v79 = *(v32 + v12);
    if ((v78 & 1) == 0)
    {
      v80 = type metadata accessor for Com_Apple_Siri_Product_Proto_ProtoIntent._StorageClass(0);
      v81 = *(v80 + 48);
      v82 = *(v80 + 52);
      swift_allocObject();
      v79 = sub_1C05A53E0(v79);
      *(v32 + v12) = v79;
    }

    sub_1C07A57D4(v11, v6, type metadata accessor for Com_Apple_Siri_Product_Proto_NLState);
    (*(v8 + 56))(v6, 0, 1, v7);
    v83 = OBJC_IVAR____TtCV12SiriOntology40Com_Apple_Siri_Product_Proto_ProtoIntentP33_942AB7175EC71BF9D0D08DC04D18C2E013_StorageClass__nlState;
    swift_beginAccess();
    sub_1C051F9D4(v6, v79 + v83, &qword_1EBE17780, &qword_1C0999E30);
    swift_endAccess();
    v14 = v149;
  }

  if (*(v14 + 106) <= 1u)
  {
    if (*(v14 + 106))
    {
      v84 = 2;
    }

    else
    {
      v84 = 1;
    }

    goto LABEL_42;
  }

  if (*(v14 + 106) == 2)
  {
    v84 = 3;
LABEL_42:
    v85 = *(v32 + v12);
    v86 = swift_isUniquelyReferenced_nonNull_native();
    v87 = *(v32 + v12);
    if ((v86 & 1) == 0)
    {
      v88 = type metadata accessor for Com_Apple_Siri_Product_Proto_ProtoIntent._StorageClass(0);
      v89 = *(v88 + 48);
      v90 = *(v88 + 52);
      swift_allocObject();
      v87 = sub_1C05A53E0(v87);
      *(v32 + v12) = v87;
    }

    v91 = v87 + OBJC_IVAR____TtCV12SiriOntology40Com_Apple_Siri_Product_Proto_ProtoIntentP33_942AB7175EC71BF9D0D08DC04D18C2E013_StorageClass__mitigatorClassification;
    swift_beginAccess();
    *v91 = v84;
    *(v91 + 8) = 1;
    v14 = v149;
  }

  v92 = *(v14 + 120);
  if (v92)
  {
    v93 = *(v14 + 112);
    v94 = *(v14 + 120);

    v95 = *(v32 + v12);
    v96 = swift_isUniquelyReferenced_nonNull_native();
    v97 = *(v32 + v12);
    if ((v96 & 1) == 0)
    {
      v98 = type metadata accessor for Com_Apple_Siri_Product_Proto_ProtoIntent._StorageClass(0);
      v99 = *(v98 + 48);
      v100 = *(v98 + 52);
      swift_allocObject();
      v97 = sub_1C05A53E0(v97);
      *(v32 + v12) = v97;
    }

    v101 = (v97 + OBJC_IVAR____TtCV12SiriOntology40Com_Apple_Siri_Product_Proto_ProtoIntentP33_942AB7175EC71BF9D0D08DC04D18C2E013_StorageClass__strippedVoiceTrigger);
    swift_beginAccess();
    v102 = v101[1];
    *v101 = v93;
    v101[1] = v92;
  }

  v103 = *(v14 + 128);
  v104 = *(v32 + v12);
  v105 = swift_isUniquelyReferenced_nonNull_native();
  v106 = *(v32 + v12);
  if ((v105 & 1) == 0)
  {
    v107 = type metadata accessor for Com_Apple_Siri_Product_Proto_ProtoIntent._StorageClass(0);
    v108 = *(v107 + 48);
    v109 = *(v107 + 52);
    swift_allocObject();
    v106 = sub_1C05A53E0(v106);
    *(v32 + v12) = v106;
  }

  v110 = OBJC_IVAR____TtCV12SiriOntology40Com_Apple_Siri_Product_Proto_ProtoIntentP33_942AB7175EC71BF9D0D08DC04D18C2E013_StorageClass__invalidVoiceTrigger;
  swift_beginAccess();
  *(v106 + v110) = v103;
  v111 = *(v149 + 129);
  v112 = *(v32 + v12);
  v113 = swift_isUniquelyReferenced_nonNull_native();
  v114 = *(v32 + v12);
  if ((v113 & 1) == 0)
  {
    v115 = type metadata accessor for Com_Apple_Siri_Product_Proto_ProtoIntent._StorageClass(0);
    v116 = *(v115 + 48);
    v117 = *(v115 + 52);
    swift_allocObject();
    v114 = sub_1C05A53E0(v114);
    *(v32 + v12) = v114;
  }

  v118 = OBJC_IVAR____TtCV12SiriOntology40Com_Apple_Siri_Product_Proto_ProtoIntentP33_942AB7175EC71BF9D0D08DC04D18C2E013_StorageClass__suggested;
  swift_beginAccess();
  *(v114 + v118) = v111;
  v119 = *(v149 + 136);
  v120 = *(v119 + 16);
  v121 = MEMORY[0x1E69E7CC0];
  if (v120)
  {
    v150 = MEMORY[0x1E69E7CC0];
    sub_1C0600C80(0, v120, 0);
    v121 = v150;
    v122 = (v119 + 32);
    v123 = *(v150 + 16);
    v124 = 16 * v123;
    do
    {
      if (*v122)
      {
        v125 = 2;
      }

      else
      {
        v125 = 1;
      }

      v150 = v121;
      v126 = *(v121 + 24);
      v127 = v123 + 1;
      if (v123 >= v126 >> 1)
      {
        sub_1C0600C80((v126 > 1), v123 + 1, 1);
        v121 = v150;
      }

      *(v121 + 16) = v127;
      v128 = v121 + v124;
      *(v128 + 32) = v125;
      *(v128 + 40) = 1;
      v124 += 16;
      ++v122;
      v123 = v127;
      --v120;
    }

    while (v120);
  }

  v129 = v148;
  v130 = *(v148 + v12);
  v131 = swift_isUniquelyReferenced_nonNull_native();
  v132 = *(v129 + v12);
  if ((v131 & 1) == 0)
  {
    v133 = type metadata accessor for Com_Apple_Siri_Product_Proto_ProtoIntent._StorageClass(0);
    v134 = *(v133 + 48);
    v135 = *(v133 + 52);
    swift_allocObject();
    v132 = sub_1C05A53E0(v132);
    *(v129 + v12) = v132;
  }

  v136 = OBJC_IVAR____TtCV12SiriOntology40Com_Apple_Siri_Product_Proto_ProtoIntentP33_942AB7175EC71BF9D0D08DC04D18C2E013_StorageClass__metaDomainAction;
  swift_beginAccess();
  v137 = *(v132 + v136);
  *(v132 + v136) = v121;

  v138 = sub_1C079EB4C();
  v139 = *(v129 + v12);
  v140 = swift_isUniquelyReferenced_nonNull_native();
  v141 = *(v129 + v12);
  if ((v140 & 1) == 0)
  {
    v142 = type metadata accessor for Com_Apple_Siri_Product_Proto_ProtoIntent._StorageClass(0);
    v143 = *(v142 + 48);
    v144 = *(v142 + 52);
    swift_allocObject();
    v141 = sub_1C05A53E0(v141);
    *(v129 + v12) = v141;
  }

  v145 = OBJC_IVAR____TtCV12SiriOntology40Com_Apple_Siri_Product_Proto_ProtoIntentP33_942AB7175EC71BF9D0D08DC04D18C2E013_StorageClass__intentTree;
  swift_beginAccess();
  v146 = *(v141 + v145);
  *(v141 + v145) = v138;
}

uint64_t sub_1C079EB4C()
{
  sub_1C0526080(v0, v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16E98, &unk_1C0970660);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE1FA00, &qword_1C099BAE8);
  if (swift_dynamicCast())
  {
    sub_1C0531D80(v5, v8);
    v1 = v9;
    v2 = v10;
    __swift_project_boxed_opaque_existential_1(v8, v9);
    v3 = (*(v2 + 8))(0, 0xFFFFFFFFLL, v1, v2);
    __swift_destroy_boxed_opaque_existential_1(v8);
    return v3;
  }

  else
  {
    v6 = 0;
    memset(v5, 0, sizeof(v5));
    sub_1C05145B4(v5, &qword_1EBE1FA08, &unk_1C099BAF0);
    result = sub_1C095DD0C();
    __break(1u);
  }

  return result;
}

uint64_t sub_1C079EC90@<X0>(uint64_t a1@<X8>)
{
  v20 = a1;
  v2 = type metadata accessor for Com_Apple_Siri_Product_Proto_TerminalElement(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = (&v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = type metadata accessor for Com_Apple_Siri_Product_Proto_Element(0);
  v7 = v6 - 8;
  v8 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v1;
  v12 = v1[1];
  *v10 = 0;
  *(v10 + 1) = 0xE000000000000000;
  *(v10 + 2) = MEMORY[0x1E69E7CC0];
  v13 = *(v7 + 32);
  v14 = type metadata accessor for Com_Apple_Siri_Product_Proto_Element.OneOf_Node(0);
  v15 = *(*(v14 - 8) + 56);
  v19 = *(v1 + 1);
  v15(&v10[v13], 1, 1, v14);
  v16 = &v10[*(v7 + 36)];
  _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
  *v10 = v11;
  *(v10 + 1) = v12;
  v17 = v19;
  *(v10 + 2) = v19;
  v21 = v11;
  v22 = v12;
  v23 = v17;

  sub_1C079EEAC(v5);
  sub_1C05145B4(&v10[v13], &qword_1EBE16E00, &qword_1C099BAE0);
  sub_1C07A57D4(v5, &v10[v13], type metadata accessor for Com_Apple_Siri_Product_Proto_TerminalElement);
  swift_storeEnumTagMultiPayload();
  v15(&v10[v13], 0, 1, v14);
  sub_1C07A570C(v10, v20, type metadata accessor for Com_Apple_Siri_Product_Proto_Element);
  return sub_1C07A5774(v10, type metadata accessor for Com_Apple_Siri_Product_Proto_Element);
}

uint64_t sub_1C079EEAC@<X0>(void *a1@<X8>)
{
  v3 = type metadata accessor for Com_Apple_Siri_Product_Proto_ElementValue(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x1EEE9AC00](v3 - 8);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v19 - v9;
  v11 = *(v1 + 24);
  v12 = *(v11 + 16);
  v13 = MEMORY[0x1E69E7CC0];
  if (v12)
  {
    v14 = (v11 + 32);
    do
    {
      memcpy(v22, v14, 0x540uLL);
      memcpy(v21, v14, sizeof(v21));
      sub_1C0575738(v22, &v20);
      sub_1C079F0E4(v10);
      sub_1C07A570C(v10, v8, type metadata accessor for Com_Apple_Siri_Product_Proto_ElementValue);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v13 = sub_1C05791EC(0, v13[2] + 1, 1, v13);
      }

      v16 = v13[2];
      v15 = v13[3];
      if (v16 >= v15 >> 1)
      {
        v13 = sub_1C05791EC(v15 > 1, v16 + 1, 1, v13);
      }

      sub_1C0575770(v22);
      sub_1C07A5774(v10, type metadata accessor for Com_Apple_Siri_Product_Proto_ElementValue);
      v13[2] = v16 + 1;
      sub_1C07A57D4(v8, v13 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v16, type metadata accessor for Com_Apple_Siri_Product_Proto_ElementValue);
      v14 += 1344;
      --v12;
    }

    while (v12);
  }

  *a1 = MEMORY[0x1E69E7CC0];
  v17 = a1 + *(type metadata accessor for Com_Apple_Siri_Product_Proto_TerminalElement(0) + 20);
  result = _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
  *a1 = v13;
  return result;
}

uint64_t sub_1C079F0E4@<X0>(uint64_t a1@<X8>)
{
  v53 = type metadata accessor for Com_Apple_Siri_Product_Proto_Value(0);
  v51 = *(v53 - 8);
  v3 = *(v51 + 64);
  v4 = MEMORY[0x1EEE9AC00](v53);
  v45 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v44 = &v39 - v7;
  MEMORY[0x1EEE9AC00](v6);
  v43 = &v39 - v8;
  v9 = type metadata accessor for Com_Apple_Siri_Product_Proto_OriginalElementValue(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v48 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for Com_Apple_Siri_Product_Proto_Origin(0);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v40 = &v39 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  memcpy(v57, v1, sizeof(v57));
  v17 = v1[66];
  memcpy(v58, v1 + 67, 0x309uLL);
  v18 = v1[166];
  v46 = v1[165];
  v47 = v18;
  v52 = v1[167];
  *a1 = MEMORY[0x1E69E7CC0];
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v19 = type metadata accessor for Com_Apple_Siri_Product_Proto_ElementValue(0);
  v20 = v19[6];

  sub_1C05149F8(v58, v59, &qword_1EBE16C78, &qword_1C096E850);
  _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
  v21 = v19[7];
  v22 = *(v14 + 56);
  v41 = v13;
  v39 = v22;
  v22(a1 + v21, 1, 1, v13);
  v23 = v19[8];
  v24 = *(v10 + 56);
  v49 = v10 + 56;
  v50 = v9;
  v24(a1 + v23, 1, 1, v9);
  v25 = *(v51 + 56);
  v51 = v19[9];
  v42 = v25;
  v25(a1 + v51, 1, 1, v53);
  *a1 = v17;
  memcpy(v59, v58, 0x309uLL);
  if (sub_1C0573614(v59) != 1)
  {
    memcpy(v54, v59, 0x309uLL);
    v26 = v40;
    sub_1C079F670(v40);
    sub_1C05145B4(v58, &qword_1EBE16C78, &qword_1C096E850);
    sub_1C05145B4(a1 + v21, &qword_1EBE17768, &unk_1C0971250);
    sub_1C07A57D4(v26, a1 + v21, type metadata accessor for Com_Apple_Siri_Product_Proto_Origin);
    v39(a1 + v21, 0, 1, v41);
  }

  v27 = v52;
  if (v52)
  {
    v28 = v48;
    *v48 = 0;
    *(v28 + 8) = 0;
    *(v28 + 16) = 0xE000000000000000;
    v29 = v50;
    v30 = *(v50 + 24);

    _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
    *v28 = v46 & 1;
    *(v28 + 8) = v47;
    *(v28 + 16) = v27;
    sub_1C05145B4(a1 + v23, &qword_1EBE17770, &unk_1C099BB00);
    sub_1C07A57D4(v28, a1 + v23, type metadata accessor for Com_Apple_Siri_Product_Proto_OriginalElementValue);
    v24(a1 + v23, 0, 1, v29);
  }

  memcpy(v54, v57, 0x20AuLL);
  if (sub_1C0573598(v54) != 1)
  {
    memcpy(v56, v54, 0x20AuLL);
    v31 = sub_1C057363C(v56);
    sub_1C05272F0(v56);
    *(a1 + 8) = v31 + 1;
    *(a1 + 16) = 1;
  }

  memcpy(v56, v57, 0x20AuLL);
  result = sub_1C0573598(v56);
  if (result != 1)
  {
    memcpy(v55, v56, sizeof(v55));
    v33 = v44;
    sub_1C079FA08(v44);
    v34 = v33;
    v35 = v43;
    sub_1C07A57D4(v34, v43, type metadata accessor for Com_Apple_Siri_Product_Proto_Value);
    v36 = v35;
    v37 = v45;
    sub_1C07A57D4(v36, v45, type metadata accessor for Com_Apple_Siri_Product_Proto_Value);
    v38 = v51;
    sub_1C05145B4(a1 + v51, &qword_1EBE17778, &unk_1C0971260);
    sub_1C07A57D4(v37, a1 + v38, type metadata accessor for Com_Apple_Siri_Product_Proto_Value);
    return v42(a1 + v38, 0, 1, v53);
  }

  return result;
}

_OWORD *sub_1C079F670@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for Com_Apple_Siri_Product_Proto_MatchingSpan(0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Com_Apple_Siri_Product_Proto_DerivedOrigin(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v1;
  v11 = v1 + 8;
  v12 = v13;
  memcpy(v33, v11, 0x301uLL);
  *a1 = 0;
  v14 = 1;
  *(a1 + 8) = 1;
  v15 = type metadata accessor for Com_Apple_Siri_Product_Proto_Origin(0);
  v16 = (a1 + *(v15 + 20));
  v17 = type metadata accessor for Com_Apple_Siri_Product_Proto_Origin.OneOf_OriginDetail(0);
  v18 = *(v17 - 8);
  v19 = *(v18 + 56);
  v27[1] = v18 + 56;
  v28 = v19;
  v19(v16, 1, 1, v17);
  v20 = a1 + *(v15 + 24);
  _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
  if (v13 > 4)
  {
    if (v12 <= 6)
    {
      if (v12 == 5)
      {
        v14 = 6;
      }

      else
      {
        v14 = 7;
      }
    }

    else if (v12 == 7)
    {
      v14 = 8;
    }

    else
    {
      if (v12 != 8)
      {
        goto LABEL_19;
      }

      v14 = 9;
    }
  }

  else if (v12 <= 1)
  {
    if (v12)
    {
      v14 = 2;
    }
  }

  else if (v12 == 2)
  {
    v14 = 3;
  }

  else if (v12 == 3)
  {
    v14 = 4;
  }

  else
  {
    v14 = 5;
  }

  *a1 = v14;
  *(a1 + 8) = 1;
LABEL_19:
  memcpy(v32, v11, 0x301uLL);
  result = sub_1C05757D8(v32);
  if (result == 1)
  {
    return result;
  }

  memcpy(v31, v32, 0x301uLL);
  v22 = sub_1C0573F8C(v31);
  result = sub_1C0527300(v31);
  if (v22)
  {
    if (v22 == 1)
    {
      memcpy(v30, result, sizeof(v30));
      sub_1C07A3450(v6);
      sub_1C05145B4(v16, &qword_1EBE17760, &unk_1C099BB10);
      sub_1C07A57D4(v6, v16, type metadata accessor for Com_Apple_Siri_Product_Proto_MatchingSpan);
    }

    else
    {
      v25 = *(result + 4);
      if (!v25)
      {
        return sub_1C05145B4(v33, &qword_1EBE16C80, &qword_1C096E858);
      }

      v26 = result[1];
      *v30 = *result;
      *&v30[16] = v26;
      *&v30[32] = v25;
      sub_1C07A2578(result);
      sub_1C05145B4(v16, &qword_1EBE17760, &unk_1C099BB10);
      sub_1C07A57D4(v10, v16, type metadata accessor for Com_Apple_Siri_Product_Proto_DerivedOrigin);
    }
  }

  else
  {
    v23 = *(result + 1);
    if (!v23)
    {
      return result;
    }

    v24 = *result;
    memcpy(v30, v33, sizeof(v30));
    sub_1C05757F0(v30, &v29);
    sub_1C05145B4(v16, &qword_1EBE17760, &unk_1C099BB10);
    *v16 = v24;
    v16[1] = v23;
  }

  swift_storeEnumTagMultiPayload();
  return v28(v16, 0, 1, v17);
}

uint64_t *sub_1C079FA08@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for Com_Apple_Siri_Product_Proto_SemanticValue(0);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = (&v143 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v143 - v9;
  v11 = type metadata accessor for Com_Apple_Siri_Product_Proto_ScalarValue(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v143 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for Com_Apple_Siri_Product_Proto_DateTime(0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v18 = &v143 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE1F7F8, &unk_1C0999E50);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v145 = (&v143 - v21);
  memcpy(v147, v2, 0x20AuLL);
  _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
  v22 = type metadata accessor for Com_Apple_Siri_Product_Proto_Value(0);
  v23 = *(v22 + 20);
  if (qword_1EBE15458 != -1)
  {
    v142 = *(v22 + 20);
    swift_once();
    v23 = v142;
  }

  v24 = v23;
  *(a1 + v23) = qword_1EBE15460;
  memcpy(v148, v2, 0x20AuLL);
  v25 = sub_1C057363C(v148);
  result = sub_1C05272F0(v148);
  if (v25 > 3)
  {
    if (v25 <= 5)
    {
      if (v25 != 4)
      {
        memcpy(v146, result, 0x20AuLL);

        sub_1C07A0A1C(v18);
        v61 = *(a1 + v24);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v63 = *(a1 + v24);
        if (isUniquelyReferenced_nonNull_native)
        {
          v64 = v145;
        }

        else
        {
          v123 = type metadata accessor for Com_Apple_Siri_Product_Proto_Value._StorageClass(0);
          v124 = *(v123 + 48);
          v125 = *(v123 + 52);
          v126 = swift_allocObject();
          v127 = OBJC_IVAR____TtCV12SiriOntology34Com_Apple_Siri_Product_Proto_ValueP33_FC4EE5074104C85BFB570AF81C8E8EC613_StorageClass__value;
          v128 = type metadata accessor for Com_Apple_Siri_Product_Proto_Value.OneOf_Value(0);
          (*(*(v128 - 8) + 56))(v126 + v127, 1, 1, v128);
          v129 = OBJC_IVAR____TtCV12SiriOntology34Com_Apple_Siri_Product_Proto_ValueP33_FC4EE5074104C85BFB570AF81C8E8EC613_StorageClass__value;
          swift_beginAccess();
          v130 = v63 + v129;
          v64 = v145;
          sub_1C05149F8(v130, v145, &qword_1EBE1F7F8, &unk_1C0999E50);
          swift_beginAccess();
          sub_1C051F9D4(v64, v126 + v127, &qword_1EBE1F7F8, &unk_1C0999E50);
          swift_endAccess();

          *(a1 + v24) = v126;
          v63 = v126;
        }

        sub_1C07A57D4(v18, v64, type metadata accessor for Com_Apple_Siri_Product_Proto_DateTime);
        v131 = type metadata accessor for Com_Apple_Siri_Product_Proto_Value.OneOf_Value(0);
        swift_storeEnumTagMultiPayload();
        (*(*(v131 - 8) + 56))(v64, 0, 1, v131);
        v132 = OBJC_IVAR____TtCV12SiriOntology34Com_Apple_Siri_Product_Proto_ValueP33_FC4EE5074104C85BFB570AF81C8E8EC613_StorageClass__value;
        swift_beginAccess();
        sub_1C051F9D4(v64, v63 + v132, &qword_1EBE1F7F8, &unk_1C0999E50);
        return swift_endAccess();
      }

      v27 = *result;
      v28 = result[1];

      sub_1C05735AC(v147, v146);
      v43 = *(a1 + v24);
      v44 = swift_isUniquelyReferenced_nonNull_native();
      v31 = *(a1 + v24);
      if (v44)
      {
        v32 = v145;
        goto LABEL_47;
      }

LABEL_46:
      v112 = type metadata accessor for Com_Apple_Siri_Product_Proto_Value._StorageClass(0);
      v113 = *(v112 + 48);
      v114 = *(v112 + 52);
      v115 = swift_allocObject();
      v144 = v27;
      v116 = v115;
      v117 = OBJC_IVAR____TtCV12SiriOntology34Com_Apple_Siri_Product_Proto_ValueP33_FC4EE5074104C85BFB570AF81C8E8EC613_StorageClass__value;
      v118 = type metadata accessor for Com_Apple_Siri_Product_Proto_Value.OneOf_Value(0);
      (*(*(v118 - 8) + 56))(v116 + v117, 1, 1, v118);
      v119 = OBJC_IVAR____TtCV12SiriOntology34Com_Apple_Siri_Product_Proto_ValueP33_FC4EE5074104C85BFB570AF81C8E8EC613_StorageClass__value;
      swift_beginAccess();
      v120 = v31 + v119;
      v32 = v145;
      sub_1C05149F8(v120, v145, &qword_1EBE1F7F8, &unk_1C0999E50);
      swift_beginAccess();
      sub_1C051F9D4(v32, v116 + v117, &qword_1EBE1F7F8, &unk_1C0999E50);
      swift_endAccess();

      *(a1 + v24) = v116;
      v31 = v116;
      v27 = v144;
      goto LABEL_47;
    }

    if (v25 != 6)
    {
      if (v25 == 7)
      {
        v27 = *result;
        v28 = result[1];

        sub_1C05735AC(v147, v146);
        v29 = *(a1 + v24);
        v30 = swift_isUniquelyReferenced_nonNull_native();
        v31 = *(a1 + v24);
        if (v30)
        {
          v32 = v145;
LABEL_47:
          *v32 = v27;
          v32[1] = v28;
          v121 = type metadata accessor for Com_Apple_Siri_Product_Proto_Value.OneOf_Value(0);
          swift_storeEnumTagMultiPayload();
          (*(*(v121 - 8) + 56))(v32, 0, 1, v121);
          v122 = OBJC_IVAR____TtCV12SiriOntology34Com_Apple_Siri_Product_Proto_ValueP33_FC4EE5074104C85BFB570AF81C8E8EC613_StorageClass__value;
          swift_beginAccess();
          v92 = v31 + v122;
          v111 = v32;
          goto LABEL_53;
        }

        goto LABEL_46;
      }

      v54 = result[1];
      v144 = *result;
      v56 = result[2];
      v55 = result[3];
      *v8 = 0;
      v8[1] = 0xE000000000000000;
      v8[2] = 0;
      v8[3] = 0xE000000000000000;
      v8[4] = 0;
      v8[5] = 0xE000000000000000;
      v8[6] = MEMORY[0x1E69E7CC0];
      v57 = *(v4 + 32);

      _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
      if (v54)
      {
        *v8 = v144;
        v8[1] = v54;
      }

      v8[2] = v56;
      v8[3] = v55;
      sub_1C07A57D4(v8, v10, type metadata accessor for Com_Apple_Siri_Product_Proto_SemanticValue);

      v58 = *(a1 + v24);
      v59 = swift_isUniquelyReferenced_nonNull_native();
      v60 = *(a1 + v24);
      if (v59)
      {
        v37 = v145;
      }

      else
      {
        v101 = type metadata accessor for Com_Apple_Siri_Product_Proto_Value._StorageClass(0);
        v102 = *(v101 + 48);
        v103 = *(v101 + 52);
        v104 = swift_allocObject();
        v105 = OBJC_IVAR____TtCV12SiriOntology34Com_Apple_Siri_Product_Proto_ValueP33_FC4EE5074104C85BFB570AF81C8E8EC613_StorageClass__value;
        v106 = type metadata accessor for Com_Apple_Siri_Product_Proto_Value.OneOf_Value(0);
        (*(*(v106 - 8) + 56))(v104 + v105, 1, 1, v106);
        v107 = OBJC_IVAR____TtCV12SiriOntology34Com_Apple_Siri_Product_Proto_ValueP33_FC4EE5074104C85BFB570AF81C8E8EC613_StorageClass__value;
        swift_beginAccess();
        v108 = v60 + v107;
        v37 = v145;
        sub_1C05149F8(v108, v145, &qword_1EBE1F7F8, &unk_1C0999E50);
        swift_beginAccess();
        sub_1C051F9D4(v37, v104 + v105, &qword_1EBE1F7F8, &unk_1C0999E50);
        swift_endAccess();

        *(a1 + v24) = v104;
        v60 = v104;
      }

      sub_1C07A57D4(v10, v37, type metadata accessor for Com_Apple_Siri_Product_Proto_SemanticValue);
      v109 = type metadata accessor for Com_Apple_Siri_Product_Proto_Value.OneOf_Value(0);
      swift_storeEnumTagMultiPayload();
      (*(*(v109 - 8) + 56))(v37, 0, 1, v109);
      v110 = OBJC_IVAR____TtCV12SiriOntology34Com_Apple_Siri_Product_Proto_ValueP33_FC4EE5074104C85BFB570AF81C8E8EC613_StorageClass__value;
      swift_beginAccess();
      v92 = v60 + v110;
LABEL_45:
      v111 = v37;
LABEL_53:
      sub_1C051F9D4(v111, v92, &qword_1EBE1F7F8, &unk_1C0999E50);
      return swift_endAccess();
    }

    v45 = *result;

    sub_1C07A19F8(v14);
    v46 = *(a1 + v24);
    v47 = swift_isUniquelyReferenced_nonNull_native();
    v41 = *(a1 + v24);
    if (v47)
    {
      v42 = v145;
    }

    else
    {
      v65 = type metadata accessor for Com_Apple_Siri_Product_Proto_Value._StorageClass(0);
      v66 = *(v65 + 48);
      v67 = *(v65 + 52);
      v68 = swift_allocObject();
      v69 = OBJC_IVAR____TtCV12SiriOntology34Com_Apple_Siri_Product_Proto_ValueP33_FC4EE5074104C85BFB570AF81C8E8EC613_StorageClass__value;
      v70 = type metadata accessor for Com_Apple_Siri_Product_Proto_Value.OneOf_Value(0);
      (*(*(v70 - 8) + 56))(v68 + v69, 1, 1, v70);
      v71 = OBJC_IVAR____TtCV12SiriOntology34Com_Apple_Siri_Product_Proto_ValueP33_FC4EE5074104C85BFB570AF81C8E8EC613_StorageClass__value;
      swift_beginAccess();
      v72 = v41 + v71;
      v42 = v145;
      sub_1C05149F8(v72, v145, &qword_1EBE1F7F8, &unk_1C0999E50);
      swift_beginAccess();
      sub_1C051F9D4(v42, v68 + v69, &qword_1EBE1F7F8, &unk_1C0999E50);
      swift_endAccess();

      *(a1 + v24) = v68;
      v41 = v68;
    }

    sub_1C07A57D4(v14, v42, type metadata accessor for Com_Apple_Siri_Product_Proto_ScalarValue);
    v73 = type metadata accessor for Com_Apple_Siri_Product_Proto_Value.OneOf_Value(0);
LABEL_52:
    swift_storeEnumTagMultiPayload();
    (*(*(v73 - 8) + 56))(v42, 0, 1, v73);
    v141 = OBJC_IVAR____TtCV12SiriOntology34Com_Apple_Siri_Product_Proto_ValueP33_FC4EE5074104C85BFB570AF81C8E8EC613_StorageClass__value;
    swift_beginAccess();
    v92 = v41 + v141;
    v111 = v42;
    goto LABEL_53;
  }

  if (v25 <= 1)
  {
    if (v25)
    {
      v48 = *result;

      v49 = *(a1 + v24);
      v50 = swift_isUniquelyReferenced_nonNull_native();
      v36 = *(a1 + v24);
      if (v50)
      {
        v37 = v145;
      }

      else
      {
        v83 = type metadata accessor for Com_Apple_Siri_Product_Proto_Value._StorageClass(0);
        v84 = *(v83 + 48);
        v85 = *(v83 + 52);
        v86 = swift_allocObject();
        v87 = OBJC_IVAR____TtCV12SiriOntology34Com_Apple_Siri_Product_Proto_ValueP33_FC4EE5074104C85BFB570AF81C8E8EC613_StorageClass__value;
        v88 = type metadata accessor for Com_Apple_Siri_Product_Proto_Value.OneOf_Value(0);
        (*(*(v88 - 8) + 56))(v86 + v87, 1, 1, v88);
        v89 = OBJC_IVAR____TtCV12SiriOntology34Com_Apple_Siri_Product_Proto_ValueP33_FC4EE5074104C85BFB570AF81C8E8EC613_StorageClass__value;
        swift_beginAccess();
        v90 = v36 + v89;
        v37 = v145;
        sub_1C05149F8(v90, v145, &qword_1EBE1F7F8, &unk_1C0999E50);
        swift_beginAccess();
        sub_1C051F9D4(v37, v86 + v87, &qword_1EBE1F7F8, &unk_1C0999E50);
        swift_endAccess();

        *(a1 + v24) = v86;
        v36 = v86;
      }

      *v37 = v48;
      v82 = type metadata accessor for Com_Apple_Siri_Product_Proto_Value.OneOf_Value(0);
    }

    else
    {
      v33 = *result;

      v34 = *(a1 + v24);
      v35 = swift_isUniquelyReferenced_nonNull_native();
      v36 = *(a1 + v24);
      if (v35)
      {
        v37 = v145;
      }

      else
      {
        v74 = type metadata accessor for Com_Apple_Siri_Product_Proto_Value._StorageClass(0);
        v75 = *(v74 + 48);
        v76 = *(v74 + 52);
        v77 = swift_allocObject();
        v78 = OBJC_IVAR____TtCV12SiriOntology34Com_Apple_Siri_Product_Proto_ValueP33_FC4EE5074104C85BFB570AF81C8E8EC613_StorageClass__value;
        v79 = type metadata accessor for Com_Apple_Siri_Product_Proto_Value.OneOf_Value(0);
        (*(*(v79 - 8) + 56))(v77 + v78, 1, 1, v79);
        v80 = OBJC_IVAR____TtCV12SiriOntology34Com_Apple_Siri_Product_Proto_ValueP33_FC4EE5074104C85BFB570AF81C8E8EC613_StorageClass__value;
        swift_beginAccess();
        v81 = v36 + v80;
        v37 = v145;
        sub_1C05149F8(v81, v145, &qword_1EBE1F7F8, &unk_1C0999E50);
        swift_beginAccess();
        sub_1C051F9D4(v37, v77 + v78, &qword_1EBE1F7F8, &unk_1C0999E50);
        swift_endAccess();

        *(a1 + v24) = v77;
        v36 = v77;
      }

      *v37 = v33;
      v82 = type metadata accessor for Com_Apple_Siri_Product_Proto_Value.OneOf_Value(0);
    }

    swift_storeEnumTagMultiPayload();
    (*(*(v82 - 8) + 56))(v37, 0, 1, v82);
    v91 = OBJC_IVAR____TtCV12SiriOntology34Com_Apple_Siri_Product_Proto_ValueP33_FC4EE5074104C85BFB570AF81C8E8EC613_StorageClass__value;
    swift_beginAccess();
    v92 = v36 + v91;
    goto LABEL_45;
  }

  if (v25 != 2)
  {
    v51 = *result;

    v52 = *(a1 + v24);
    v53 = swift_isUniquelyReferenced_nonNull_native();
    v41 = *(a1 + v24);
    if (v53)
    {
      v42 = v145;
    }

    else
    {
      v93 = type metadata accessor for Com_Apple_Siri_Product_Proto_Value._StorageClass(0);
      v94 = *(v93 + 48);
      v95 = *(v93 + 52);
      v96 = swift_allocObject();
      v97 = OBJC_IVAR____TtCV12SiriOntology34Com_Apple_Siri_Product_Proto_ValueP33_FC4EE5074104C85BFB570AF81C8E8EC613_StorageClass__value;
      v98 = type metadata accessor for Com_Apple_Siri_Product_Proto_Value.OneOf_Value(0);
      (*(*(v98 - 8) + 56))(v96 + v97, 1, 1, v98);
      v99 = OBJC_IVAR____TtCV12SiriOntology34Com_Apple_Siri_Product_Proto_ValueP33_FC4EE5074104C85BFB570AF81C8E8EC613_StorageClass__value;
      swift_beginAccess();
      v100 = v41 + v99;
      v42 = v145;
      sub_1C05149F8(v100, v145, &qword_1EBE1F7F8, &unk_1C0999E50);
      swift_beginAccess();
      sub_1C051F9D4(v42, v96 + v97, &qword_1EBE1F7F8, &unk_1C0999E50);
      swift_endAccess();

      *(a1 + v24) = v96;
      v41 = v96;
    }

    *v42 = v51;
    v73 = type metadata accessor for Com_Apple_Siri_Product_Proto_Value.OneOf_Value(0);
    goto LABEL_52;
  }

  v38 = *result;
  if (*result < 0xFFFFFFFF80000000)
  {
    __break(1u);
  }

  else if (v38 <= 0x7FFFFFFF)
  {

    v39 = *(a1 + v24);
    v40 = swift_isUniquelyReferenced_nonNull_native();
    v41 = *(a1 + v24);
    if (v40)
    {
      v42 = v145;
    }

    else
    {
      v133 = type metadata accessor for Com_Apple_Siri_Product_Proto_Value._StorageClass(0);
      v134 = *(v133 + 48);
      v135 = *(v133 + 52);
      v136 = swift_allocObject();
      v137 = OBJC_IVAR____TtCV12SiriOntology34Com_Apple_Siri_Product_Proto_ValueP33_FC4EE5074104C85BFB570AF81C8E8EC613_StorageClass__value;
      v138 = type metadata accessor for Com_Apple_Siri_Product_Proto_Value.OneOf_Value(0);
      (*(*(v138 - 8) + 56))(v136 + v137, 1, 1, v138);
      v139 = OBJC_IVAR____TtCV12SiriOntology34Com_Apple_Siri_Product_Proto_ValueP33_FC4EE5074104C85BFB570AF81C8E8EC613_StorageClass__value;
      swift_beginAccess();
      v140 = v41 + v139;
      v42 = v145;
      sub_1C05149F8(v140, v145, &qword_1EBE1F7F8, &unk_1C0999E50);
      swift_beginAccess();
      sub_1C051F9D4(v42, v136 + v137, &qword_1EBE1F7F8, &unk_1C0999E50);
      swift_endAccess();

      *(a1 + v24) = v136;
      v41 = v136;
    }

    *v42 = v38;
    v73 = type metadata accessor for Com_Apple_Siri_Product_Proto_Value.OneOf_Value(0);
    goto LABEL_52;
  }

  __break(1u);
  return result;
}

uint64_t sub_1C07A0A1C@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17C70, &unk_1C099BB30);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v182 = &v160 - v5;
  v6 = type metadata accessor for Com_Apple_Siri_Product_Proto_Time(0);
  v180 = *(v6 - 8);
  v181 = v6;
  v7 = *(v180 + 64);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v179 = &v160 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v178 = &v160 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17C68, &unk_1C0973580);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v163 = &v160 - v13;
  v176 = type metadata accessor for Com_Apple_Siri_Product_Proto_Recurrence(0);
  v162 = *(v176 - 8);
  v14 = *(v162 + 64);
  MEMORY[0x1EEE9AC00](v176);
  v190 = &v160 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17C60, &unk_1C099BB40);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v171 = &v160 - v18;
  v19 = type metadata accessor for Com_Apple_Siri_Product_Proto_Interval(0);
  v169 = *(v19 - 8);
  v170 = v19;
  v20 = *(v169 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v189 = &v160 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17C58, &unk_1C0973570);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v168 = &v160 - v24;
  v187 = type metadata accessor for Com_Apple_Siri_Product_Proto_Duration(0);
  v167 = *(v187 - 8);
  v25 = *(v167 + 64);
  v26 = MEMORY[0x1EEE9AC00](v187);
  v28 = &v160 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v186 = &v160 - v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17C50, &unk_1C099BB50);
  v31 = *(*(v30 - 8) + 64);
  MEMORY[0x1EEE9AC00](v30 - 8);
  v33 = &v160 - v32;
  v184 = type metadata accessor for Com_Apple_Siri_Product_Proto_Date(0);
  v34 = *(v184 - 8);
  v35 = *(v34 + 64);
  v36 = MEMORY[0x1EEE9AC00](v184);
  v38 = &v160 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v36);
  v40 = &v160 - v39;
  v41 = *(v1 + 264);
  v42 = *(v1 + 280);
  v216 = *(v1 + 248);
  v217 = v41;
  v218 = v42;
  v219 = *(v1 + 296);
  v43 = *(v1 + 200);
  v212 = *(v1 + 184);
  v213 = v43;
  v44 = *(v1 + 232);
  v214 = *(v1 + 216);
  v215 = v44;
  v45 = *(v1 + 168);
  v210 = *(v1 + 152);
  v211 = v45;
  v46 = *(v1 + 38);
  v183 = *(v1 + 156);
  v166 = *(v1 + 40);
  v185 = *(v1 + 82);
  v161 = *(v1 + 42);
  v188 = *(v1 + 172);
  v47 = *(v1 + 44);
  v48 = *(v1 + 45);
  v49 = v1[24];
  v220 = v1[23];
  v221 = v49;
  v222[0] = v1[25];
  *(v222 + 15) = *(v1 + 415);
  v50 = *(v1 + 53);
  v164 = v47;
  v165 = v50;
  v51 = *(v1 + 54);
  v174 = v48;
  v175 = v51;
  *(v225 + 15) = *(v1 + 487);
  v52 = *(v1 + 472);
  v224 = *(v1 + 456);
  v225[0] = v52;
  v223 = *(v1 + 440);
  v53 = *(v1 + 62);
  v177 = *(v1 + 504);
  v54 = *(v1 + 64);
  v191 = v53;
  v192 = v54;
  LODWORD(v53) = *(v1 + 520);
  v172 = *(v1 + 521);
  v173 = v53;
  _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
  v55 = *(type metadata accessor for Com_Apple_Siri_Product_Proto_DateTime(0) + 20);
  if (qword_1EBE155E0 != -1)
  {
    swift_once();
  }

  *(a1 + v55) = qword_1EBE17C18;
  v56 = v1[7];
  v232 = v1[6];
  v233 = v56;
  v234 = v1[8];
  v235 = *(v1 + 144);
  v57 = v1[3];
  v228 = v1[2];
  v229 = v57;
  v58 = v1[5];
  v230 = v1[4];
  v231 = v58;
  v59 = v1[1];
  v226 = *v1;
  v227 = v59;
  if (sub_1C05D25B4(&v226) == 1)
  {
  }

  else
  {
    v206 = v232;
    v207 = v233;
    v208 = v234;
    v209 = v235;
    v202 = v228;
    v203 = v229;
    v204 = v230;
    v205 = v231;
    v200 = v226;
    v201 = v227;

    sub_1C07A46A4(v40);
    v60 = *(a1 + v55);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v62 = *(a1 + v55);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v63 = type metadata accessor for Com_Apple_Siri_Product_Proto_DateTime._StorageClass(0);
      v64 = *(v63 + 48);
      v65 = *(v63 + 52);
      swift_allocObject();
      v66 = sub_1C05C5474(v62);

      *(a1 + v55) = v66;
      v62 = v66;
    }

    sub_1C07A57D4(v40, v33, type metadata accessor for Com_Apple_Siri_Product_Proto_Date);
    (*(v34 + 56))(v33, 0, 1, v184);
    v67 = OBJC_IVAR____TtCV12SiriOntology37Com_Apple_Siri_Product_Proto_DateTimeP33_697D571C32F0AF8F560B5FAE0C121ED613_StorageClass__startDate;
    swift_beginAccess();
    sub_1C051F9D4(v33, v62 + v67, &qword_1EBE17C50, &unk_1C099BB50);
    swift_endAccess();
  }

  v206 = v216;
  v207 = v217;
  v208 = v218;
  v209 = v219;
  v202 = v212;
  v203 = v213;
  v204 = v214;
  v205 = v215;
  v200 = v210;
  v201 = v211;
  result = sub_1C05D25B4(&v200);
  if (result != 1)
  {
    v196[3] = v206;
    v196[4] = v207;
    v196[5] = v208;
    v197 = v209;
    v195 = v202;
    v196[0] = v203;
    v196[1] = v204;
    v196[2] = v205;
    v193 = v200;
    v194 = v201;
    sub_1C07A46A4(v38);
    v69 = *(a1 + v55);
    v70 = swift_isUniquelyReferenced_nonNull_native();
    v71 = *(a1 + v55);
    if ((v70 & 1) == 0)
    {
      v72 = type metadata accessor for Com_Apple_Siri_Product_Proto_DateTime._StorageClass(0);
      v73 = *(v72 + 48);
      v74 = *(v72 + 52);
      swift_allocObject();
      v75 = sub_1C05C5474(v71);

      *(a1 + v55) = v75;
      v71 = v75;
    }

    sub_1C07A57D4(v38, v33, type metadata accessor for Com_Apple_Siri_Product_Proto_Date);
    (*(v34 + 56))(v33, 0, 1, v184);
    v76 = OBJC_IVAR____TtCV12SiriOntology37Com_Apple_Siri_Product_Proto_DateTimeP33_697D571C32F0AF8F560B5FAE0C121ED613_StorageClass__endDate;
    swift_beginAccess();
    sub_1C051F9D4(v33, v71 + v76, &qword_1EBE17C50, &unk_1C099BB50);
    result = swift_endAccess();
  }

  v77 = v183;
  v78 = v183 >> 8;
  v80 = v191;
  v79 = v192;
  v81 = v190;
  if (v183 >> 8 != 54)
  {
    *v28 = 0;
    *(v28 + 1) = 0;
    v28[16] = 1;
    v82 = &v28[*(v187 + 24)];
    _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
    if ((v77 & 1) == 0)
    {
      *v28 = v46;
    }

    if (v78 != 53)
    {
      LOBYTE(v198) = v78;
      sub_1C07A5490(&v193);
      v83 = BYTE8(v193);
      *(v28 + 1) = v193;
      v28[16] = v83;
    }

    sub_1C07A57D4(v28, v186, type metadata accessor for Com_Apple_Siri_Product_Proto_Duration);
    v84 = *(a1 + v55);
    v85 = swift_isUniquelyReferenced_nonNull_native();
    v86 = *(a1 + v55);
    if ((v85 & 1) == 0)
    {
      v87 = type metadata accessor for Com_Apple_Siri_Product_Proto_DateTime._StorageClass(0);
      v88 = *(v87 + 48);
      v89 = *(v87 + 52);
      swift_allocObject();
      v90 = sub_1C05C5474(v86);

      *(a1 + v55) = v90;
      v86 = v90;
    }

    v91 = v168;
    sub_1C07A57D4(v186, v168, type metadata accessor for Com_Apple_Siri_Product_Proto_Duration);
    (*(v167 + 56))(v91, 0, 1, v187);
    v92 = OBJC_IVAR____TtCV12SiriOntology37Com_Apple_Siri_Product_Proto_DateTimeP33_697D571C32F0AF8F560B5FAE0C121ED613_StorageClass__duration;
    swift_beginAccess();
    sub_1C051F9D4(v91, v86 + v92, &qword_1EBE17C58, &unk_1C0973570);
    result = swift_endAccess();
  }

  if (HIBYTE(v185) != 3)
  {
    v198 = v166;
    v199 = v185 & 0xFFFFFF01;
    sub_1C07A4F14(v189);
    v93 = *(a1 + v55);
    v94 = swift_isUniquelyReferenced_nonNull_native();
    v95 = *(a1 + v55);
    if ((v94 & 1) == 0)
    {
      v96 = type metadata accessor for Com_Apple_Siri_Product_Proto_DateTime._StorageClass(0);
      v97 = *(v96 + 48);
      v98 = *(v96 + 52);
      swift_allocObject();
      v99 = sub_1C05C5474(v95);

      *(a1 + v55) = v99;
      v95 = v99;
    }

    v100 = v171;
    sub_1C07A57D4(v189, v171, type metadata accessor for Com_Apple_Siri_Product_Proto_Interval);
    (*(v169 + 56))(v100, 0, 1, v170);
    v101 = OBJC_IVAR____TtCV12SiriOntology37Com_Apple_Siri_Product_Proto_DateTimeP33_697D571C32F0AF8F560B5FAE0C121ED613_StorageClass__interval;
    swift_beginAccess();
    sub_1C051F9D4(v100, v95 + v101, &qword_1EBE17C60, &unk_1C099BB40);
    result = swift_endAccess();
  }

  v102 = v188;
  v103 = v188 >> 8;
  if (v188 >> 8 != 54)
  {
    *v81 = 0;
    *(v81 + 1) = 0;
    v81[16] = 1;
    v104 = &v81[*(v176 + 24)];
    result = _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
    if (v102)
    {
      v105 = -1;
    }

    else
    {
      v105 = v161;
      if (v161 < 0xFFFFFFFF80000000)
      {
LABEL_68:
        __break(1u);
        goto LABEL_69;
      }

      if (v161 > 0x7FFFFFFF)
      {
LABEL_69:
        __break(1u);
        return result;
      }
    }

    *v81 = v105;
    if (v103 != 53)
    {
      LOBYTE(v198) = v103;
      sub_1C07A5490(&v193);
      v106 = BYTE8(v193);
      *(v81 + 1) = v193;
      v81[16] = v106;
    }

    v107 = *(a1 + v55);
    v108 = swift_isUniquelyReferenced_nonNull_native();
    v109 = *(a1 + v55);
    if ((v108 & 1) == 0)
    {
      v110 = type metadata accessor for Com_Apple_Siri_Product_Proto_DateTime._StorageClass(0);
      v111 = *(v110 + 48);
      v112 = *(v110 + 52);
      swift_allocObject();
      v113 = sub_1C05C5474(v109);

      *(a1 + v55) = v113;
      v109 = v113;
    }

    v114 = v81;
    v115 = v163;
    sub_1C07A57D4(v114, v163, type metadata accessor for Com_Apple_Siri_Product_Proto_Recurrence);
    (*(v162 + 56))(v115, 0, 1, v176);
    v116 = OBJC_IVAR____TtCV12SiriOntology37Com_Apple_Siri_Product_Proto_DateTimeP33_697D571C32F0AF8F560B5FAE0C121ED613_StorageClass__recurrence;
    swift_beginAccess();
    sub_1C051F9D4(v115, v109 + v116, &qword_1EBE17C68, &unk_1C0973580);
    result = swift_endAccess();
  }

  if (v174 != 1)
  {
    *&v193 = v164;
    *(&v193 + 1) = v174;
    v194 = v220;
    v195 = v221;
    v196[0] = v222[0];
    *(v196 + 15) = *(v222 + 15);
    sub_1C07A5014(v178);
    v117 = *(a1 + v55);
    v118 = swift_isUniquelyReferenced_nonNull_native();
    v119 = *(a1 + v55);
    if ((v118 & 1) == 0)
    {
      v120 = type metadata accessor for Com_Apple_Siri_Product_Proto_DateTime._StorageClass(0);
      v121 = *(v120 + 48);
      v122 = *(v120 + 52);
      swift_allocObject();
      v123 = sub_1C05C5474(v119);

      *(a1 + v55) = v123;
      v119 = v123;
    }

    v124 = v182;
    sub_1C07A57D4(v178, v182, type metadata accessor for Com_Apple_Siri_Product_Proto_Time);
    (*(v180 + 56))(v124, 0, 1, v181);
    v125 = OBJC_IVAR____TtCV12SiriOntology37Com_Apple_Siri_Product_Proto_DateTimeP33_697D571C32F0AF8F560B5FAE0C121ED613_StorageClass__startTime;
    swift_beginAccess();
    sub_1C051F9D4(v124, v119 + v125, &qword_1EBE17C70, &unk_1C099BB30);
    result = swift_endAccess();
  }

  if (v175 != 1)
  {
    *&v193 = v165;
    *(&v193 + 1) = v175;
    v194 = v223;
    v195 = v224;
    v196[0] = v225[0];
    *(v196 + 15) = *(v225 + 15);
    sub_1C07A5014(v179);
    v126 = *(a1 + v55);
    v127 = swift_isUniquelyReferenced_nonNull_native();
    v128 = *(a1 + v55);
    if ((v127 & 1) == 0)
    {
      v129 = type metadata accessor for Com_Apple_Siri_Product_Proto_DateTime._StorageClass(0);
      v130 = *(v129 + 48);
      v131 = *(v129 + 52);
      swift_allocObject();
      v132 = sub_1C05C5474(v128);

      *(a1 + v55) = v132;
      v128 = v132;
    }

    v133 = v182;
    sub_1C07A57D4(v179, v182, type metadata accessor for Com_Apple_Siri_Product_Proto_Time);
    (*(v180 + 56))(v133, 0, 1, v181);
    v134 = OBJC_IVAR____TtCV12SiriOntology37Com_Apple_Siri_Product_Proto_DateTimeP33_697D571C32F0AF8F560B5FAE0C121ED613_StorageClass__endTime;
    swift_beginAccess();
    sub_1C051F9D4(v133, v128 + v134, &qword_1EBE17C70, &unk_1C099BB30);
    result = swift_endAccess();
  }

  if ((v177 & 1) == 0)
  {
    if (v80 < 0xFFFFFFFF80000000)
    {
      __break(1u);
LABEL_65:
      __break(1u);
      goto LABEL_66;
    }

    if (v80 > 0x7FFFFFFF)
    {
LABEL_66:
      __break(1u);
      goto LABEL_67;
    }

    v135 = *(a1 + v55);
    v136 = swift_isUniquelyReferenced_nonNull_native();
    v137 = *(a1 + v55);
    if ((v136 & 1) == 0)
    {
      v138 = type metadata accessor for Com_Apple_Siri_Product_Proto_DateTime._StorageClass(0);
      v139 = *(v138 + 48);
      v140 = *(v138 + 52);
      swift_allocObject();
      v141 = sub_1C05C5474(v137);

      *(a1 + v55) = v141;
      v137 = v141;
    }

    v142 = OBJC_IVAR____TtCV12SiriOntology37Com_Apple_Siri_Product_Proto_DateTimeP33_697D571C32F0AF8F560B5FAE0C121ED613_StorageClass__startPosition;
    result = swift_beginAccess();
    *(v137 + v142) = v80;
  }

  if (v173)
  {
    goto LABEL_54;
  }

  if (v79 < 0xFFFFFFFF80000000)
  {
    goto LABEL_65;
  }

  if (v79 > 0x7FFFFFFF)
  {
LABEL_67:
    __break(1u);
    goto LABEL_68;
  }

  v143 = *(a1 + v55);
  v144 = swift_isUniquelyReferenced_nonNull_native();
  v145 = *(a1 + v55);
  if ((v144 & 1) == 0)
  {
    v146 = type metadata accessor for Com_Apple_Siri_Product_Proto_DateTime._StorageClass(0);
    v147 = *(v146 + 48);
    v148 = *(v146 + 52);
    swift_allocObject();
    v149 = sub_1C05C5474(v145);

    *(a1 + v55) = v149;
    v145 = v149;
  }

  v150 = OBJC_IVAR____TtCV12SiriOntology37Com_Apple_Siri_Product_Proto_DateTimeP33_697D571C32F0AF8F560B5FAE0C121ED613_StorageClass__endPosition;
  result = swift_beginAccess();
  *(v145 + v150) = v79;
LABEL_54:
  if (v172 > 1)
  {
    if (v172 != 2)
    {
      return result;
    }

    v151 = 3;
  }

  else if (v172)
  {
    v151 = 2;
  }

  else
  {
    v151 = 1;
  }

  v152 = *(a1 + v55);
  v153 = swift_isUniquelyReferenced_nonNull_native();
  v154 = *(a1 + v55);
  if ((v153 & 1) == 0)
  {
    v155 = type metadata accessor for Com_Apple_Siri_Product_Proto_DateTime._StorageClass(0);
    v156 = *(v155 + 48);
    v157 = *(v155 + 52);
    swift_allocObject();
    v158 = sub_1C05C5474(v154);

    *(a1 + v55) = v158;
    v154 = v158;
  }

  v159 = v154 + OBJC_IVAR____TtCV12SiriOntology37Com_Apple_Siri_Product_Proto_DateTimeP33_697D571C32F0AF8F560B5FAE0C121ED613_StorageClass__temporalIntent;
  result = swift_beginAccess();
  *v159 = v151;
  *(v159 + 8) = 1;
  return result;
}

uint64_t sub_1C07A19F8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16B50, &unk_1C096E0F0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v50 = &v47 - v6;
  v51 = type metadata accessor for Com_Apple_Siri_Product_Proto_SemanticValue(0);
  v49 = *(v51 - 8);
  v7 = *(v49 + 64);
  v8 = MEMORY[0x1EEE9AC00](v51);
  v10 = (&v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v8);
  v48 = &v47 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17778, &unk_1C0971260);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v47 - v14;
  v16 = type metadata accessor for Com_Apple_Siri_Product_Proto_Value(0);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v47 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
  v21 = *(type metadata accessor for Com_Apple_Siri_Product_Proto_ScalarValue(0) + 20);
  if (qword_1EBE15928 != -1)
  {
    swift_once();
  }

  *(a1 + v21) = qword_1EBE1FD68;
  memcpy(v54, v1 + 2, 0x20AuLL);
  memcpy(v55, v1 + 2, 0x20AuLL);
  if (sub_1C0573598(v55) == 1)
  {
  }

  else
  {
    memcpy(v53, v55, sizeof(v53));

    v23 = sub_1C05149F8(v54, &v52, &qword_1EBE16C70, &unk_1C099BB20);
    sub_1C079FA08(v23);
    v24 = *(a1 + v21);
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      sub_1C05145B4(v54, &qword_1EBE16C70, &unk_1C099BB20);
      v25 = *(a1 + v21);
    }

    else
    {
      v47 = v16;
      v26 = *(a1 + v21);
      v27 = type metadata accessor for Com_Apple_Siri_Product_Proto_ScalarValue._StorageClass(0);
      v28 = *(v27 + 48);
      v29 = *(v27 + 52);
      swift_allocObject();

      v25 = sub_1C081CAFC(v30);
      sub_1C05145B4(v54, &qword_1EBE16C70, &unk_1C099BB20);
      v16 = v47;

      *(a1 + v21) = v25;
    }

    sub_1C07A57D4(v20, v15, type metadata accessor for Com_Apple_Siri_Product_Proto_Value);
    (*(v17 + 56))(v15, 0, 1, v16);
    v31 = OBJC_IVAR____TtCV12SiriOntology40Com_Apple_Siri_Product_Proto_ScalarValueP33_FC4EE5074104C85BFB570AF81C8E8EC613_StorageClass__value;
    swift_beginAccess();
    sub_1C051F9D4(v15, v25 + v31, &qword_1EBE17778, &unk_1C0971260);
    result = swift_endAccess();
  }

  v32 = v2[71];
  v33 = v51;
  if (v32)
  {
    v34 = v2[68];
    v35 = v2[70];
    v36 = v2[69];
    *v10 = 0;
    v10[1] = 0xE000000000000000;
    v10[2] = 0;
    v10[3] = 0xE000000000000000;
    v10[4] = 0;
    v10[5] = 0xE000000000000000;
    v10[6] = MEMORY[0x1E69E7CC0];
    v37 = *(v33 + 32);

    _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
    if (v36)
    {
      *v10 = v34;
      v10[1] = v36;
    }

    v10[2] = v35;
    v10[3] = v32;
    v38 = v48;
    sub_1C07A57D4(v10, v48, type metadata accessor for Com_Apple_Siri_Product_Proto_SemanticValue);

    v39 = *(a1 + v21);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v41 = *(a1 + v21);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v42 = type metadata accessor for Com_Apple_Siri_Product_Proto_ScalarValue._StorageClass(0);
      v43 = *(v42 + 48);
      v44 = *(v42 + 52);
      swift_allocObject();
      v41 = sub_1C081CAFC(v41);
      *(a1 + v21) = v41;
    }

    v45 = v50;
    sub_1C07A57D4(v38, v50, type metadata accessor for Com_Apple_Siri_Product_Proto_SemanticValue);
    (*(v49 + 56))(v45, 0, 1, v33);
    v46 = OBJC_IVAR____TtCV12SiriOntology40Com_Apple_Siri_Product_Proto_ScalarValueP33_FC4EE5074104C85BFB570AF81C8E8EC613_StorageClass__unit;
    swift_beginAccess();
    sub_1C051F9D4(v45, v41 + v46, &qword_1EBE16B50, &unk_1C096E0F0);
    return swift_endAccess();
  }

  return result;
}

uint64_t sub_1C07A1F0C(uint64_t a1, int a2)
{
  v5 = type metadata accessor for Com_Apple_Siri_Product_Proto_NonTerminalElement(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v54 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Com_Apple_Siri_Product_Proto_Element(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = &v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v55 = &v47 - v14;
  v15 = type metadata accessor for Com_Apple_Siri_Product_Proto_IntentNode(0);
  v16 = v15 - 8;
  v57 = *(v15 - 8);
  v17 = *(v57 + 64);
  v18 = MEMORY[0x1EEE9AC00](v15);
  v56 = &v47 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v47 - v20;
  v22 = v2[1];
  v49 = *v2;
  v48 = v22;
  v23 = v2[2];
  v58 = v2[3];
  v65 = MEMORY[0x1E69E7CC0];
  v24 = MEMORY[0x1E69E7CC0];
  *(&v47 - v20) = 0;
  v25 = &v47 + *(v16 + 28) - v20;
  _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
  v51 = *(v16 + 32);
  v26 = *(v9 + 56);
  v52 = v9 + 56;
  v53 = v26;
  v27 = v8;
  v26(&v21[v51], 1, 1, v8);
  *v21 = a2;
  *v13 = 0;
  *(v13 + 1) = 0xE000000000000000;
  *(v13 + 2) = v24;
  v28 = *(v8 + 24);
  v50 = v27;
  v29 = type metadata accessor for Com_Apple_Siri_Product_Proto_Element.OneOf_Node(0);
  v30 = *(*(v29 - 8) + 56);
  v30(&v13[v28], 1, 1, v29);
  v31 = *(v27 + 28);
  v32 = v48;

  _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
  *v13 = v49;
  *(v13 + 1) = v32;
  *(v13 + 2) = v23;
  v33 = v54;
  _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
  sub_1C05145B4(&v13[v28], &qword_1EBE16E00, &qword_1C099BAE0);
  sub_1C07A57D4(v33, &v13[v28], type metadata accessor for Com_Apple_Siri_Product_Proto_NonTerminalElement);
  swift_storeEnumTagMultiPayload();
  v30(&v13[v28], 0, 1, v29);
  v34 = v55;
  sub_1C07A570C(v13, v55, type metadata accessor for Com_Apple_Siri_Product_Proto_Element);
  sub_1C07A5774(v13, type metadata accessor for Com_Apple_Siri_Product_Proto_Element);
  v35 = v51;
  sub_1C05145B4(&v21[v51], &qword_1EBE16E10, &unk_1C0971270);
  sub_1C07A57D4(v34, &v21[v35], type metadata accessor for Com_Apple_Siri_Product_Proto_Element);
  v36 = v56;
  v53(&v21[v35], 0, 1, v50);
  v55 = v21;
  sub_1C07A570C(v21, v36, type metadata accessor for Com_Apple_Siri_Product_Proto_IntentNode);
  v37 = sub_1C0579214(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v65 = v37;
  v39 = *(v37 + 16);
  v38 = *(v37 + 24);
  v40 = v39 + 1;
  if (v39 >= v38 >> 1)
  {
LABEL_14:
    v37 = sub_1C0579214(v38 > 1, v40, 1, v37);
    v65 = v37;
  }

  *(v37 + 16) = v40;
  sub_1C07A57D4(v36, v37 + ((*(v57 + 80) + 32) & ~*(v57 + 80)) + *(v57 + 72) * v39, type metadata accessor for Com_Apple_Siri_Product_Proto_IntentNode);
  v65 = v37;
  v41 = v58;
  v39 = *(v58 + 16);
  if (v39)
  {
    v40 = 0;
    v36 = v58 + 32;
    while (1)
    {
      v38 = *(v41 + 16);
      if (v40 >= v38)
      {
        __break(1u);
LABEL_12:
        __break(1u);
LABEL_13:
        __break(1u);
        goto LABEL_14;
      }

      sub_1C0526080(v36, v61);
      v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16E98, &unk_1C0970660);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE1FA00, &qword_1C099BAE8);
      if (!swift_dynamicCast())
      {
        break;
      }

      sub_1C0531D80(v59, v62);
      v38 = *(v65 + 16);
      if (v38 >> 31)
      {
        goto LABEL_12;
      }

      v37 = (a1 + v38);
      if (__OFADD__(a1, v38))
      {
        goto LABEL_13;
      }

      ++v40;
      v42 = v63;
      v43 = v64;
      __swift_project_boxed_opaque_existential_1(v62, v63);
      v44 = v42;
      v41 = v58;
      v45 = (*(v43 + 8))(v37, a1, v44, v43);
      v37 = &v65;
      sub_1C05CA640(v45);
      __swift_destroy_boxed_opaque_existential_1(v62);
      v36 += 40;
      if (v39 == v40)
      {
        v37 = v65;
        goto LABEL_10;
      }
    }

    v60 = 0;
    memset(v59, 0, sizeof(v59));
    sub_1C05145B4(v59, &qword_1EBE1FA08, &unk_1C099BAF0);
    result = sub_1C095DD0C();
    __break(1u);
  }

  else
  {
LABEL_10:
    sub_1C07A5774(v55, type metadata accessor for Com_Apple_Siri_Product_Proto_IntentNode);
    return v37;
  }

  return result;
}

uint64_t sub_1C07A2578(uint64_t a1)
{
  MEMORY[0x1EEE9AC00](a1);
  v2 = v1;
  v4 = v3;
  v152 = type metadata accessor for Com_Apple_Siri_Product_Proto_Value(0);
  v157 = *(v152 - 8);
  v5 = *(v157 + 64);
  v6 = MEMORY[0x1EEE9AC00](v152);
  v138 = &v121 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v137 = &v121 - v9;
  MEMORY[0x1EEE9AC00](v8);
  v136 = &v121 - v10;
  v11 = type metadata accessor for Com_Apple_Siri_Product_Proto_OriginalElementValue(0);
  v12 = *(v11 - 8);
  v155 = v11;
  v156 = v12;
  v13 = v12[8];
  MEMORY[0x1EEE9AC00](v11);
  v139 = &v121 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for Com_Apple_Siri_Product_Proto_DerivedOrigin(0);
  v16 = v15 - 8;
  v17 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15);
  v126 = &v121 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for Com_Apple_Siri_Product_Proto_MatchingSpan(0);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v128 = &v121 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v140 = type metadata accessor for Com_Apple_Siri_Product_Proto_Origin(0);
  v154 = *(v140 - 8);
  v22 = v154[8];
  v23 = MEMORY[0x1EEE9AC00](v140);
  v146 = (&v121 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v23);
  v135 = &v121 - v25;
  v26 = type metadata accessor for Com_Apple_Siri_Product_Proto_ElementValue(0);
  v144 = *(v26 - 8);
  v145 = v26;
  v27 = *(v144 + 64);
  v28 = MEMORY[0x1EEE9AC00](v26);
  v159 = &v121 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x1EEE9AC00](v28);
  v32 = &v121 - v31;
  MEMORY[0x1EEE9AC00](v30);
  v158 = &v121 - v33;
  v34 = type metadata accessor for Com_Apple_Siri_Product_Proto_TerminalElement(0);
  v124 = *(v34 - 8);
  v125 = v34;
  v35 = *(v124 + 64);
  MEMORY[0x1EEE9AC00](v34);
  v133 = (&v121 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0));
  v37 = type metadata accessor for Com_Apple_Siri_Product_Proto_AdjustmentReason(0);
  v38 = *(v37 - 8);
  v39 = *(v38 + 64);
  v40 = MEMORY[0x1EEE9AC00](v37);
  v42 = (&v121 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v40);
  v44 = &v121 - v43;
  v45 = *v1;
  v46 = v1[1];
  v48 = v2[2];
  v47 = v2[3];
  v150 = v45;
  v151 = v48;
  v153 = v47;
  v127 = v2[4];
  *v4 = MEMORY[0x1E69E7CC0];
  v49 = &v4[*(v16 + 28)];
  _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
  v50 = *(v16 + 32);
  v51 = *(v38 + 56);
  v121 = v4;
  result = v51(&v4[v50], 1, 1, v37);
  if (v46 != 1)
  {
    v53 = v51;
    *v42 = 0;
    v42[1] = 0xE000000000000000;
    v42[2] = 0;
    v42[3] = 0xE000000000000000;
    v54 = *(v37 + 24);

    _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
    if (v46)
    {
      *v42 = v150;
      v42[1] = v46;
    }

    v55 = v153;
    if (v153)
    {
      v42[2] = v151;
      v42[3] = v55;
    }

    sub_1C07A57D4(v42, v44, type metadata accessor for Com_Apple_Siri_Product_Proto_AdjustmentReason);

    v56 = v121;
    sub_1C05145B4(&v121[v50], &qword_1EBE17758, &unk_1C0971240);
    sub_1C07A57D4(v44, &v56[v50], type metadata accessor for Com_Apple_Siri_Product_Proto_AdjustmentReason);
    result = v53(&v56[v50], 0, 1, v37);
  }

  v57 = v127;
  v58 = MEMORY[0x1E69E7CC0];
  v123 = *(v127 + 16);
  if (v123)
  {
    v59 = 0;
    v122 = v127 + 32;
    v60 = (v154 + 7);
    v154 = v156 + 7;
    v150 = (v157 + 56);
    v151 = v60;
    v134 = MEMORY[0x1E69E7CC0];
    v61 = v140;
    while (v59 < *(v57 + 16))
    {
      v62 = (v122 + 32 * v59);
      v63 = v62[2];
      v64 = v62[3];
      v65 = *(v64 + 16);
      v131 = v62[1];
      v132 = v59;
      v129 = v64;
      v130 = v63;
      if (v65)
      {
        v66 = (v64 + 32);

        v67 = v58;
        while (1)
        {
          v156 = v67;
          v157 = v65;
          memcpy(v164, v66, sizeof(v164));
          v68 = v164[66];
          *v32 = v58;
          *(v32 + 1) = 0;
          v32[16] = 1;
          v69 = v145;
          v70 = v145[6];

          sub_1C0575738(v164, v163);
          sub_1C05149F8(&v164[67], v163, &qword_1EBE16C78, &qword_1C096E850);
          _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
          v71 = v69[7];
          v147 = *v151;
          v147(&v32[v71], 1, 1, v61);
          v72 = v69[8];
          v153 = *v154;
          v153(&v32[v72], 1, 1, v155);
          v73 = *v150;
          v148 = v69[9];
          v149 = v73;
          v73(&v32[v148], 1, 1, v152);
          *v32 = v68;
          memcpy(v165, &v164[67], 0x309uLL);
          if (sub_1C0573614(v165) != 1)
          {
            break;
          }

LABEL_43:
          v95 = v164[167];
          if (v164[167])
          {
            v96 = v164[166];
            v97 = v164[165];
            v98 = v139;
            *v139 = 0;
            *(v98 + 8) = 0;
            *(v98 + 16) = 0xE000000000000000;
            v99 = v155;
            v100 = *(v155 + 24);

            _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
            *v98 = v97 & 1;
            *(v98 + 8) = v96;
            *(v98 + 16) = v95;
            sub_1C05145B4(&v32[v72], &qword_1EBE17770, &unk_1C099BB00);
            sub_1C07A57D4(v98, &v32[v72], type metadata accessor for Com_Apple_Siri_Product_Proto_OriginalElementValue);
            v101 = v99;
            v61 = v140;
            v153(&v32[v72], 0, 1, v101);
          }

          memcpy(v163, v164, 0x20AuLL);
          if (sub_1C0573598(v163) != 1)
          {
            memcpy(v162, v163, 0x20AuLL);
            v102 = sub_1C057363C(v162);
            sub_1C05272F0(v162);
            *(v32 + 1) = v102 + 1;
            v32[16] = 1;
          }

          memcpy(v162, v164, 0x20AuLL);
          v103 = sub_1C0573598(v162);
          v67 = v156;
          v104 = v157;
          if (v103 != 1)
          {
            memcpy(v161, v162, 0x20AuLL);
            v105 = v137;
            sub_1C079FA08(v137);
            v106 = v105;
            v107 = v136;
            sub_1C07A57D4(v106, v136, type metadata accessor for Com_Apple_Siri_Product_Proto_Value);
            v108 = v107;
            v109 = v138;
            sub_1C07A57D4(v108, v138, type metadata accessor for Com_Apple_Siri_Product_Proto_Value);
            v110 = v148;
            sub_1C05145B4(&v32[v148], &qword_1EBE17778, &unk_1C0971260);
            sub_1C07A57D4(v109, &v32[v110], type metadata accessor for Com_Apple_Siri_Product_Proto_Value);
            v149(&v32[v110], 0, 1, v152);
          }

          v111 = v158;
          sub_1C07A57D4(v32, v158, type metadata accessor for Com_Apple_Siri_Product_Proto_ElementValue);
          sub_1C07A570C(v111, v159, type metadata accessor for Com_Apple_Siri_Product_Proto_ElementValue);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v67 = sub_1C05791EC(0, v67[2] + 1, 1, v67);
          }

          v113 = v67[2];
          v112 = v67[3];
          if (v113 >= v112 >> 1)
          {
            v67 = sub_1C05791EC(v112 > 1, v113 + 1, 1, v67);
          }

          sub_1C0575770(v164);
          sub_1C07A5774(v158, type metadata accessor for Com_Apple_Siri_Product_Proto_ElementValue);
          v67[2] = v113 + 1;
          sub_1C07A57D4(v159, v67 + ((*(v144 + 80) + 32) & ~*(v144 + 80)) + *(v144 + 72) * v113, type metadata accessor for Com_Apple_Siri_Product_Proto_ElementValue);
          v66 += 1344;
          v65 = v104 - 1;
          v58 = MEMORY[0x1E69E7CC0];
          if (!v65)
          {
            goto LABEL_57;
          }
        }

        v74 = v165[0];
        v75 = v146;
        *v146 = 0;
        *(v75 + 8) = 1;
        v76 = v75 + *(v61 + 20);
        v77 = type metadata accessor for Com_Apple_Siri_Product_Proto_Origin.OneOf_OriginDetail(0);
        v78 = *(v77 - 8);
        v79 = *(v78 + 56);
        v141 = v76;
        v142 = v78 + 56;
        v143 = v79;
        v79(v76, 1, 1, v77);
        v80 = v75 + *(v61 + 24);
        _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
        if (v74 <= 4)
        {
          if (v74 <= 1)
          {
            if (v74)
            {
              v81 = 2;
            }

            else
            {
              v81 = 1;
            }
          }

          else if (v74 == 2)
          {
            v81 = 3;
          }

          else if (v74 == 3)
          {
            v81 = 4;
          }

          else
          {
            v81 = 5;
          }

          goto LABEL_31;
        }

        if (v74 <= 6)
        {
          if (v74 == 5)
          {
            v81 = 6;
          }

          else
          {
            v81 = 7;
          }

LABEL_31:
          v82 = v146;
          *v146 = v81;
          *(v82 + 8) = 1;
        }

        else
        {
          if (v74 == 7)
          {
            v81 = 8;
            goto LABEL_31;
          }

          if (v74 == 8)
          {
            v81 = 9;
            goto LABEL_31;
          }
        }

        memcpy(v163, &v165[8], 0x301uLL);
        if (sub_1C05757D8(v163) != 1)
        {
          memcpy(v162, v163, 0x301uLL);
          v83 = sub_1C0573F8C(v162);
          v84 = sub_1C0527300(v162);
          if (v83)
          {
            if (v83 == 1)
            {
              memcpy(v161, v84, sizeof(v161));
              v85 = v128;
              sub_1C07A3450(v128);
              v86 = v141;
              sub_1C05145B4(v141, &qword_1EBE17760, &unk_1C099BB10);
              sub_1C07A57D4(v85, v86, type metadata accessor for Com_Apple_Siri_Product_Proto_MatchingSpan);
              goto LABEL_40;
            }

            v91 = *(v84 + 4);
            if (v91)
            {
              v92 = v84[1];
              *v161 = *v84;
              *&v161[16] = v92;
              *&v161[32] = v91;
              v93 = v126;
              sub_1C07A2578();
              v86 = v141;
              sub_1C05145B4(v141, &qword_1EBE17760, &unk_1C099BB10);
              sub_1C07A57D4(v93, v86, type metadata accessor for Com_Apple_Siri_Product_Proto_DerivedOrigin);
LABEL_40:
              swift_storeEnumTagMultiPayload();
              v90 = v86;
LABEL_41:
              v143(v90, 0, 1, v77);
            }

            else
            {
              sub_1C05145B4(&v164[67], &qword_1EBE16C78, &qword_1C096E850);
            }
          }

          else
          {
            v87 = *(v84 + 1);
            if (v87)
            {
              v88 = *v84;
              memcpy(v161, &v165[8], sizeof(v161));
              sub_1C05757F0(v161, &v160);
              v89 = v141;
              sub_1C05145B4(v141, &qword_1EBE17760, &unk_1C099BB10);
              *v89 = v88;
              v89[1] = v87;
              swift_storeEnumTagMultiPayload();
              v90 = v89;
              goto LABEL_41;
            }
          }
        }

        v94 = v135;
        sub_1C07A57D4(v146, v135, type metadata accessor for Com_Apple_Siri_Product_Proto_Origin);
        sub_1C05145B4(&v164[67], &qword_1EBE16C78, &qword_1C096E850);
        sub_1C05145B4(&v32[v71], &qword_1EBE17768, &unk_1C0971250);
        sub_1C07A57D4(v94, &v32[v71], type metadata accessor for Com_Apple_Siri_Product_Proto_Origin);
        v147(&v32[v71], 0, 1, v61);
        goto LABEL_43;
      }

      v67 = v58;
LABEL_57:
      v114 = v133;
      *v133 = v58;
      v115 = v114 + *(v125 + 20);
      _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();

      *v114 = v67;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v134 = sub_1C057919C(0, v134[2] + 1, 1, v134);
      }

      v116 = v132;
      v118 = v134[2];
      v117 = v134[3];
      if (v118 >= v117 >> 1)
      {
        v134 = sub_1C057919C(v117 > 1, v118 + 1, 1, v134);
      }

      v59 = v116 + 1;
      v119 = v133;
      v120 = v134;
      v134[2] = v118 + 1;
      result = sub_1C07A57D4(v119, v120 + ((*(v124 + 80) + 32) & ~*(v124 + 80)) + *(v124 + 72) * v118, type metadata accessor for Com_Apple_Siri_Product_Proto_TerminalElement);
      v57 = v127;
      if (v59 == v123)
      {
        goto LABEL_64;
      }
    }

    __break(1u);
  }

  else
  {
    v134 = MEMORY[0x1E69E7CC0];
LABEL_64:
    *v121 = v134;
  }

  return result;
}

uint64_t sub_1C07A3450@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE179C8, &qword_1C0972E60);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v306 = &v282 - v5;
  v6 = type metadata accessor for Com_Apple_Siri_Product_Proto_MatchingSpan(0);
  v304 = *(v6 - 8);
  v7 = *(v304 + 64);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v303 = &v282 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v302 = &v282 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17778, &unk_1C0971260);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v286 = &v282 - v13;
  v14 = type metadata accessor for Com_Apple_Siri_Product_Proto_Value(0);
  v284 = *(v14 - 8);
  v285 = v14;
  v15 = *(v284 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v282 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *v1;
  v19 = v1[1];
  memcpy(v326, v1 + 2, 0x20AuLL);
  v20 = v1[69];
  v21 = v1[70];
  v289 = v1[68];
  v290 = v21;
  v22 = v1[71];
  v310 = v20;
  v311 = v22;
  v23 = v1[73];
  v300 = v1[72];
  v301 = v23;
  v24 = v1[74];
  v25 = v1[75];
  v318 = v1[76];
  v319 = v25;
  v26 = v1[77];
  v316 = v1[78];
  v317 = v26;
  v315 = v1[79];
  LODWORD(v23) = *(v1 + 641);
  v296 = *(v1 + 640);
  v297 = v23;
  LODWORD(v23) = *(v1 + 643);
  v298 = *(v1 + 642);
  v299 = v23;
  v27 = v1[81];
  v28 = v1[82];
  v307 = v1[83];
  v291 = *(v1 + 672);
  v287 = v1[85];
  v288 = v27;
  v308 = v1[86];
  v309 = v28;
  v29 = v1[88];
  v313 = v1[87];
  v314 = v29;
  v30 = v1[89];
  v292 = v1[90];
  LODWORD(v28) = *(v1 + 736);
  v31 = v1[93];
  v282 = v1[91];
  v283 = v31;
  LODWORD(v31) = *(v1 + 752);
  v293 = v28;
  v294 = v31;
  v32 = v1[95];
  v295 = *(v1 + 768);

  _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
  v305 = v6;
  v33 = *(v6 + 20);
  if (qword_1EBE0FD48 != -1)
  {
    swift_once();
  }

  *(a1 + v33) = qword_1EBE0FD50;

  v312 = v24;
  if (v19)
  {
    v34 = v30;
    v35 = v32;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v37 = *(a1 + v33);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v38 = type metadata accessor for Com_Apple_Siri_Product_Proto_MatchingSpan._StorageClass(0);
      v39 = *(v38 + 48);
      v40 = *(v38 + 52);
      swift_allocObject();
      v41 = sub_1C081F1B4(v37);

      *(a1 + v33) = v41;
      v37 = v41;
    }

    swift_beginAccess();
    v42 = *(v37 + 24);
    *(v37 + 16) = v18;
    *(v37 + 24) = v19;

    v32 = v35;
    v30 = v34;
    v24 = v312;
  }

  memcpy(v325, v326, 0x20AuLL);
  v43 = sub_1C0573598(v325);
  v44 = v307;
  if (v43 != 1)
  {
    memcpy(v321, v325, sizeof(v321));
    memcpy(v322, v326, 0x20AuLL);
    sub_1C05735AC(v322, &v320);
    sub_1C079FA08(v17);
    v45 = *(a1 + v33);
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      sub_1C05145B4(v326, &qword_1EBE16C70, &unk_1C099BB20);
      v46 = *(a1 + v33);
    }

    else
    {
      v47 = *(a1 + v33);
      v48 = type metadata accessor for Com_Apple_Siri_Product_Proto_MatchingSpan._StorageClass(0);
      v49 = *(v48 + 48);
      v50 = *(v48 + 52);
      swift_allocObject();

      v46 = sub_1C081F1B4(v51);

      sub_1C05145B4(v326, &qword_1EBE16C70, &unk_1C099BB20);
      v44 = v307;

      *(a1 + v33) = v46;
    }

    v52 = v17;
    v53 = v286;
    sub_1C07A57D4(v52, v286, type metadata accessor for Com_Apple_Siri_Product_Proto_Value);
    (*(v284 + 56))(v53, 0, 1, v285);
    v54 = OBJC_IVAR____TtCV12SiriOntology41Com_Apple_Siri_Product_Proto_MatchingSpanP33_FC4EE5074104C85BFB570AF81C8E8EC613_StorageClass__serializedValue;
    swift_beginAccess();
    sub_1C051F9D4(v53, v46 + v54, &qword_1EBE17778, &unk_1C0971260);
    swift_endAccess();
  }

  v55 = v308;
  if (v310)
  {

    v56 = *(a1 + v33);
    v57 = swift_isUniquelyReferenced_nonNull_native();
    v58 = *(a1 + v33);
    if ((v57 & 1) == 0)
    {
      v59 = type metadata accessor for Com_Apple_Siri_Product_Proto_MatchingSpan._StorageClass(0);
      v60 = *(v59 + 48);
      v61 = *(v59 + 52);
      swift_allocObject();
      v62 = sub_1C081F1B4(v58);

      *(a1 + v33) = v62;
      v58 = v62;
    }

    v63 = (v58 + OBJC_IVAR____TtCV12SiriOntology41Com_Apple_Siri_Product_Proto_MatchingSpanP33_FC4EE5074104C85BFB570AF81C8E8EC613_StorageClass__input);
    swift_beginAccess();
    v64 = v63[1];
    v65 = v310;
    *v63 = v289;
    v63[1] = v65;
  }

  result = v311;
  if (v311)
  {

    v67 = *(a1 + v33);
    v68 = swift_isUniquelyReferenced_nonNull_native();
    v69 = *(a1 + v33);
    if ((v68 & 1) == 0)
    {
      v70 = type metadata accessor for Com_Apple_Siri_Product_Proto_MatchingSpan._StorageClass(0);
      v71 = *(v70 + 48);
      v72 = *(v70 + 52);
      swift_allocObject();
      v73 = sub_1C081F1B4(v69);

      *(a1 + v33) = v73;
      v69 = v73;
    }

    v74 = (v69 + OBJC_IVAR____TtCV12SiriOntology41Com_Apple_Siri_Product_Proto_MatchingSpanP33_FC4EE5074104C85BFB570AF81C8E8EC613_StorageClass__matchedTerm);
    swift_beginAccess();
    v75 = v74[1];
    v76 = v311;
    *v74 = v290;
    v74[1] = v76;
  }

  if (v300)
  {
    memcpy(v322, (v300 + 16), 0x301uLL);

    sub_1C07A3450(v77);
    v78 = *(a1 + v33);
    v79 = v32;
    if (swift_isUniquelyReferenced_nonNull_native())
    {

      v80 = *(a1 + v33);
    }

    else
    {
      v81 = *(a1 + v33);
      v82 = type metadata accessor for Com_Apple_Siri_Product_Proto_MatchingSpan._StorageClass(0);
      v83 = *(v82 + 48);
      v84 = *(v82 + 52);
      swift_allocObject();

      v80 = sub_1C081F1B4(v85);

      *(a1 + v33) = v80;
    }

    v86 = v306;
    sub_1C07A57D4(v302, v306, type metadata accessor for Com_Apple_Siri_Product_Proto_MatchingSpan);
    (*(v304 + 56))(v86, 0, 1, v305);
    v87 = OBJC_IVAR____TtCV12SiriOntology41Com_Apple_Siri_Product_Proto_MatchingSpanP33_FC4EE5074104C85BFB570AF81C8E8EC613_StorageClass__prefix;
    swift_beginAccess();
    sub_1C051F9D4(v86, v80 + v87, &qword_1EBE179C8, &qword_1C0972E60);
    result = swift_endAccess();
    v32 = v79;
    v24 = v312;
  }

  if (v301)
  {
    memcpy(v322, (v301 + 16), 0x301uLL);

    sub_1C07A3450(v88);
    v89 = *(a1 + v33);
    v90 = v32;
    if (swift_isUniquelyReferenced_nonNull_native())
    {

      v91 = *(a1 + v33);
    }

    else
    {
      v92 = *(a1 + v33);
      v93 = type metadata accessor for Com_Apple_Siri_Product_Proto_MatchingSpan._StorageClass(0);
      v94 = *(v93 + 48);
      v95 = *(v93 + 52);
      swift_allocObject();

      v91 = sub_1C081F1B4(v96);

      *(a1 + v33) = v91;
    }

    v97 = v306;
    sub_1C07A57D4(v303, v306, type metadata accessor for Com_Apple_Siri_Product_Proto_MatchingSpan);
    (*(v304 + 56))(v97, 0, 1, v305);
    v98 = OBJC_IVAR____TtCV12SiriOntology41Com_Apple_Siri_Product_Proto_MatchingSpanP33_FC4EE5074104C85BFB570AF81C8E8EC613_StorageClass__suffix;
    swift_beginAccess();
    sub_1C051F9D4(v97, v91 + v98, &qword_1EBE179C8, &qword_1C0972E60);
    result = swift_endAccess();
    v32 = v90;
    v24 = v312;
  }

  if ((v24 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_101;
  }

  if (HIDWORD(v24))
  {
LABEL_101:
    __break(1u);
LABEL_102:
    __break(1u);
    goto LABEL_103;
  }

  v99 = *(a1 + v33);
  v100 = swift_isUniquelyReferenced_nonNull_native();
  v101 = *(a1 + v33);
  if ((v100 & 1) == 0)
  {
    v102 = type metadata accessor for Com_Apple_Siri_Product_Proto_MatchingSpan._StorageClass(0);
    v103 = *(v102 + 48);
    v104 = *(v102 + 52);
    swift_allocObject();
    v105 = sub_1C081F1B4(v101);

    *(a1 + v33) = v105;
    v101 = v105;
  }

  v106 = OBJC_IVAR____TtCV12SiriOntology41Com_Apple_Siri_Product_Proto_MatchingSpanP33_FC4EE5074104C85BFB570AF81C8E8EC613_StorageClass__start;
  result = swift_beginAccess();
  *(v101 + v106) = v24;
  if ((v319 & 0x8000000000000000) != 0)
  {
    goto LABEL_102;
  }

  if (HIDWORD(v319))
  {
LABEL_103:
    __break(1u);
LABEL_104:
    __break(1u);
    goto LABEL_105;
  }

  v107 = *(a1 + v33);
  v108 = swift_isUniquelyReferenced_nonNull_native();
  v109 = *(a1 + v33);
  if ((v108 & 1) == 0)
  {
    v110 = type metadata accessor for Com_Apple_Siri_Product_Proto_MatchingSpan._StorageClass(0);
    v111 = *(v110 + 48);
    v112 = *(v110 + 52);
    swift_allocObject();
    v113 = sub_1C081F1B4(v109);

    *(a1 + v33) = v113;
    v109 = v113;
  }

  v114 = OBJC_IVAR____TtCV12SiriOntology41Com_Apple_Siri_Product_Proto_MatchingSpanP33_FC4EE5074104C85BFB570AF81C8E8EC613_StorageClass__end;
  result = swift_beginAccess();
  v115 = v318;
  *(v109 + v114) = v319;
  if ((v115 & 0x8000000000000000) != 0)
  {
    goto LABEL_104;
  }

  if (HIDWORD(v115))
  {
LABEL_105:
    __break(1u);
LABEL_106:
    __break(1u);
    goto LABEL_107;
  }

  v116 = *(a1 + v33);
  v117 = swift_isUniquelyReferenced_nonNull_native();
  v118 = *(a1 + v33);
  if ((v117 & 1) == 0)
  {
    v119 = type metadata accessor for Com_Apple_Siri_Product_Proto_MatchingSpan._StorageClass(0);
    v120 = *(v119 + 48);
    v121 = *(v119 + 52);
    swift_allocObject();
    v122 = sub_1C081F1B4(v118);

    *(a1 + v33) = v122;
    v118 = v122;
  }

  v123 = OBJC_IVAR____TtCV12SiriOntology41Com_Apple_Siri_Product_Proto_MatchingSpanP33_FC4EE5074104C85BFB570AF81C8E8EC613_StorageClass__startWithoutPrefix;
  result = swift_beginAccess();
  v124 = v317;
  *(v118 + v123) = v318;
  if ((v124 & 0x8000000000000000) != 0)
  {
    goto LABEL_106;
  }

  if (HIDWORD(v124))
  {
LABEL_107:
    __break(1u);
LABEL_108:
    __break(1u);
    goto LABEL_109;
  }

  v125 = *(a1 + v33);
  v126 = swift_isUniquelyReferenced_nonNull_native();
  v127 = *(a1 + v33);
  if ((v126 & 1) == 0)
  {
    v128 = type metadata accessor for Com_Apple_Siri_Product_Proto_MatchingSpan._StorageClass(0);
    v129 = *(v128 + 48);
    v130 = *(v128 + 52);
    swift_allocObject();
    v131 = sub_1C081F1B4(v127);

    *(a1 + v33) = v131;
    v127 = v131;
  }

  v132 = OBJC_IVAR____TtCV12SiriOntology41Com_Apple_Siri_Product_Proto_MatchingSpanP33_FC4EE5074104C85BFB570AF81C8E8EC613_StorageClass__endWithoutSuffix;
  result = swift_beginAccess();
  v133 = v316;
  *(v127 + v132) = v317;
  if ((v133 & 0x8000000000000000) != 0)
  {
    goto LABEL_108;
  }

  if (HIDWORD(v133))
  {
LABEL_109:
    __break(1u);
LABEL_110:
    __break(1u);
    goto LABEL_111;
  }

  v134 = *(a1 + v33);
  v135 = swift_isUniquelyReferenced_nonNull_native();
  v136 = *(a1 + v33);
  if ((v135 & 1) == 0)
  {
    v137 = type metadata accessor for Com_Apple_Siri_Product_Proto_MatchingSpan._StorageClass(0);
    v138 = *(v137 + 48);
    v139 = *(v137 + 52);
    swift_allocObject();
    v140 = sub_1C081F1B4(v136);

    *(a1 + v33) = v140;
    v136 = v140;
  }

  v141 = OBJC_IVAR____TtCV12SiriOntology41Com_Apple_Siri_Product_Proto_MatchingSpanP33_FC4EE5074104C85BFB570AF81C8E8EC613_StorageClass__confidence;
  result = swift_beginAccess();
  v142 = v315;
  *(v136 + v141) = v316;
  if ((v142 & 0x8000000000000000) != 0)
  {
    goto LABEL_110;
  }

  if (HIDWORD(v142))
  {
LABEL_111:
    __break(1u);
LABEL_112:
    __break(1u);
    goto LABEL_113;
  }

  v143 = *(a1 + v33);
  v144 = swift_isUniquelyReferenced_nonNull_native();
  v145 = *(a1 + v33);
  if ((v144 & 1) == 0)
  {
    v146 = type metadata accessor for Com_Apple_Siri_Product_Proto_MatchingSpan._StorageClass(0);
    v147 = *(v146 + 48);
    v148 = *(v146 + 52);
    swift_allocObject();
    v149 = sub_1C081F1B4(v145);

    *(a1 + v33) = v149;
    v145 = v149;
  }

  v150 = OBJC_IVAR____TtCV12SiriOntology41Com_Apple_Siri_Product_Proto_MatchingSpanP33_FC4EE5074104C85BFB570AF81C8E8EC613_StorageClass__prefixSuffixConfidence;
  swift_beginAccess();
  *(v145 + v150) = v315;
  v151 = *(a1 + v33);
  v152 = swift_isUniquelyReferenced_nonNull_native();
  v153 = *(a1 + v33);
  if ((v152 & 1) == 0)
  {
    v154 = type metadata accessor for Com_Apple_Siri_Product_Proto_MatchingSpan._StorageClass(0);
    v155 = *(v154 + 48);
    v156 = *(v154 + 52);
    swift_allocObject();
    v157 = sub_1C081F1B4(v153);

    *(a1 + v33) = v157;
    v153 = v157;
  }

  v158 = OBJC_IVAR____TtCV12SiriOntology41Com_Apple_Siri_Product_Proto_MatchingSpanP33_FC4EE5074104C85BFB570AF81C8E8EC613_StorageClass__explicit;
  swift_beginAccess();
  *(v153 + v158) = v296;
  v159 = *(a1 + v33);
  v160 = swift_isUniquelyReferenced_nonNull_native();
  v161 = *(a1 + v33);
  if ((v160 & 1) == 0)
  {
    v162 = type metadata accessor for Com_Apple_Siri_Product_Proto_MatchingSpan._StorageClass(0);
    v163 = *(v162 + 48);
    v164 = *(v162 + 52);
    swift_allocObject();
    v165 = sub_1C081F1B4(v161);

    *(a1 + v33) = v165;
    v161 = v165;
  }

  v166 = OBJC_IVAR____TtCV12SiriOntology41Com_Apple_Siri_Product_Proto_MatchingSpanP33_FC4EE5074104C85BFB570AF81C8E8EC613_StorageClass__isSuffixVariableMatch;
  swift_beginAccess();
  *(v161 + v166) = v297;
  v167 = *(a1 + v33);
  v168 = swift_isUniquelyReferenced_nonNull_native();
  v169 = *(a1 + v33);
  if ((v168 & 1) == 0)
  {
    v170 = type metadata accessor for Com_Apple_Siri_Product_Proto_MatchingSpan._StorageClass(0);
    v171 = *(v170 + 48);
    v172 = *(v170 + 52);
    swift_allocObject();
    v173 = sub_1C081F1B4(v169);

    *(a1 + v33) = v173;
    v169 = v173;
  }

  v174 = OBJC_IVAR____TtCV12SiriOntology41Com_Apple_Siri_Product_Proto_MatchingSpanP33_FC4EE5074104C85BFB570AF81C8E8EC613_StorageClass__isPrefixVariableMatch;
  swift_beginAccess();
  *(v169 + v174) = v298;
  v175 = *(a1 + v33);
  v176 = swift_isUniquelyReferenced_nonNull_native();
  v177 = *(a1 + v33);
  if ((v176 & 1) == 0)
  {
    v178 = type metadata accessor for Com_Apple_Siri_Product_Proto_MatchingSpan._StorageClass(0);
    v179 = *(v178 + 48);
    v180 = *(v178 + 52);
    swift_allocObject();
    v181 = sub_1C081F1B4(v177);

    *(a1 + v33) = v181;
    v177 = v181;
  }

  v182 = OBJC_IVAR____TtCV12SiriOntology41Com_Apple_Siri_Product_Proto_MatchingSpanP33_FC4EE5074104C85BFB570AF81C8E8EC613_StorageClass__isPayloadVariableMatch;
  swift_beginAccess();
  *(v177 + v182) = v299;
  result = v309;
  if (v309)
  {

    v183 = *(a1 + v33);
    v184 = swift_isUniquelyReferenced_nonNull_native();
    v185 = *(a1 + v33);
    if ((v184 & 1) == 0)
    {
      v186 = type metadata accessor for Com_Apple_Siri_Product_Proto_MatchingSpan._StorageClass(0);
      v187 = *(v186 + 48);
      v188 = *(v186 + 52);
      swift_allocObject();
      v189 = sub_1C081F1B4(v185);

      *(a1 + v33) = v189;
      v185 = v189;
    }

    v190 = (v185 + OBJC_IVAR____TtCV12SiriOntology41Com_Apple_Siri_Product_Proto_MatchingSpanP33_FC4EE5074104C85BFB570AF81C8E8EC613_StorageClass__locale);
    swift_beginAccess();
    v191 = v190[1];
    v192 = v309;
    *v190 = v288;
    v190[1] = v192;
  }

  if ((v44 & 0x8000000000000000) != 0)
  {
    goto LABEL_112;
  }

  if (HIDWORD(v44))
  {
LABEL_113:
    __break(1u);
    return result;
  }

  v193 = *(a1 + v33);
  v194 = swift_isUniquelyReferenced_nonNull_native();
  v195 = *(a1 + v33);
  if ((v194 & 1) == 0)
  {
    v196 = type metadata accessor for Com_Apple_Siri_Product_Proto_MatchingSpan._StorageClass(0);
    v197 = *(v196 + 48);
    v198 = *(v196 + 52);
    swift_allocObject();
    v199 = sub_1C081F1B4(v195);

    *(a1 + v33) = v199;
    v195 = v199;
  }

  v200 = OBJC_IVAR____TtCV12SiriOntology41Com_Apple_Siri_Product_Proto_MatchingSpanP33_FC4EE5074104C85BFB570AF81C8E8EC613_StorageClass__numWords;
  swift_beginAccess();
  *(v195 + v200) = v44;
  if (v291 != 15)
  {
    v201 = v30;
    v322[968] = v291;
    sub_1C07A468C(&v323);
    v202 = v323;
    v203 = v324;
    v204 = *(a1 + v33);
    v205 = swift_isUniquelyReferenced_nonNull_native();
    v206 = *(a1 + v33);
    if ((v205 & 1) == 0)
    {
      v207 = type metadata accessor for Com_Apple_Siri_Product_Proto_MatchingSpan._StorageClass(0);
      v208 = *(v207 + 48);
      v209 = *(v207 + 52);
      swift_allocObject();
      v210 = sub_1C081F1B4(v206);

      *(a1 + v33) = v210;
      v206 = v210;
    }

    v211 = v206 + OBJC_IVAR____TtCV12SiriOntology41Com_Apple_Siri_Product_Proto_MatchingSpanP33_FC4EE5074104C85BFB570AF81C8E8EC613_StorageClass__matchType;
    swift_beginAccess();
    *v211 = v202;
    *(v211 + 8) = v203;
    v30 = v201;
    v55 = v308;
  }

  if (v55)
  {

    v212 = *(a1 + v33);
    v213 = swift_isUniquelyReferenced_nonNull_native();
    v214 = *(a1 + v33);
    if ((v213 & 1) == 0)
    {
      v215 = type metadata accessor for Com_Apple_Siri_Product_Proto_MatchingSpan._StorageClass(0);
      v216 = *(v215 + 48);
      v217 = *(v215 + 52);
      swift_allocObject();
      v218 = sub_1C081F1B4(v214);

      *(a1 + v33) = v218;
      v214 = v218;
    }

    v219 = (v214 + OBJC_IVAR____TtCV12SiriOntology41Com_Apple_Siri_Product_Proto_MatchingSpanP33_FC4EE5074104C85BFB570AF81C8E8EC613_StorageClass__appID);
    swift_beginAccess();
    v220 = v219[1];
    *v219 = v287;
    v219[1] = v55;
  }

  v221 = *(a1 + v33);
  v222 = swift_isUniquelyReferenced_nonNull_native();
  v223 = *(a1 + v33);
  if ((v222 & 1) == 0)
  {
    v224 = type metadata accessor for Com_Apple_Siri_Product_Proto_MatchingSpan._StorageClass(0);
    v225 = *(v224 + 48);
    v226 = *(v224 + 52);
    swift_allocObject();
    v227 = sub_1C081F1B4(v223);

    *(a1 + v33) = v227;
    v223 = v227;
  }

  v228 = v292;
  v229 = OBJC_IVAR____TtCV12SiriOntology41Com_Apple_Siri_Product_Proto_MatchingSpanP33_FC4EE5074104C85BFB570AF81C8E8EC613_StorageClass__matcherNames;
  swift_beginAccess();
  v230 = *(v223 + v229);
  *(v223 + v229) = v313;

  v231 = *(a1 + v33);
  v232 = swift_isUniquelyReferenced_nonNull_native();
  v233 = *(a1 + v33);
  if ((v232 & 1) == 0)
  {
    v234 = type metadata accessor for Com_Apple_Siri_Product_Proto_MatchingSpan._StorageClass(0);
    v235 = *(v234 + 48);
    v236 = *(v234 + 52);
    swift_allocObject();
    v237 = sub_1C081F1B4(v233);

    *(a1 + v33) = v237;
    v233 = v237;
  }

  v238 = OBJC_IVAR____TtCV12SiriOntology41Com_Apple_Siri_Product_Proto_MatchingSpanP33_FC4EE5074104C85BFB570AF81C8E8EC613_StorageClass__tags;
  swift_beginAccess();
  v239 = *(v233 + v238);
  *(v233 + v238) = v314;

  v240 = *(a1 + v33);
  v241 = swift_isUniquelyReferenced_nonNull_native();
  v242 = *(a1 + v33);
  if ((v241 & 1) == 0)
  {
    v243 = type metadata accessor for Com_Apple_Siri_Product_Proto_MatchingSpan._StorageClass(0);
    v244 = *(v243 + 48);
    v245 = *(v243 + 52);
    swift_allocObject();
    v246 = sub_1C081F1B4(v242);

    *(a1 + v33) = v246;
    v242 = v246;
  }

  v247 = OBJC_IVAR____TtCV12SiriOntology41Com_Apple_Siri_Product_Proto_MatchingSpanP33_FC4EE5074104C85BFB570AF81C8E8EC613_StorageClass__altInterpretationConfidences;
  swift_beginAccess();
  v248 = *(v242 + v247);
  *(v242 + v247) = v30;

  v249 = *(a1 + v33);
  v250 = swift_isUniquelyReferenced_nonNull_native();
  v251 = *(a1 + v33);
  if ((v250 & 1) == 0)
  {
    v252 = type metadata accessor for Com_Apple_Siri_Product_Proto_MatchingSpan._StorageClass(0);
    v253 = *(v252 + 48);
    v254 = *(v252 + 52);
    swift_allocObject();
    v255 = sub_1C081F1B4(v251);

    *(a1 + v33) = v255;
    v251 = v255;
  }

  v256 = OBJC_IVAR____TtCV12SiriOntology41Com_Apple_Siri_Product_Proto_MatchingSpanP33_FC4EE5074104C85BFB570AF81C8E8EC613_StorageClass__altInterpretationPhoneSequences;
  swift_beginAccess();
  v257 = *(v251 + v256);
  *(v251 + v256) = v228;

  if (v293)
  {
    if (v294)
    {
      goto LABEL_88;
    }
  }

  else
  {
    v258 = *(a1 + v33);
    v259 = swift_isUniquelyReferenced_nonNull_native();
    v260 = *(a1 + v33);
    if ((v259 & 1) == 0)
    {
      v261 = type metadata accessor for Com_Apple_Siri_Product_Proto_MatchingSpan._StorageClass(0);
      v262 = *(v261 + 48);
      v263 = *(v261 + 52);
      swift_allocObject();
      v264 = sub_1C081F1B4(v260);

      *(a1 + v33) = v264;
      v260 = v264;
    }

    v265 = OBJC_IVAR____TtCV12SiriOntology41Com_Apple_Siri_Product_Proto_MatchingSpanP33_FC4EE5074104C85BFB570AF81C8E8EC613_StorageClass__metadata;
    result = swift_beginAccess();
    *(v260 + v265) = v282;
    if (v294)
    {
LABEL_88:
      if (v295)
      {
        return result;
      }

      goto LABEL_96;
    }
  }

  v266 = *(a1 + v33);
  v267 = swift_isUniquelyReferenced_nonNull_native();
  v268 = *(a1 + v33);
  if ((v267 & 1) == 0)
  {
    v269 = type metadata accessor for Com_Apple_Siri_Product_Proto_MatchingSpan._StorageClass(0);
    v270 = *(v269 + 48);
    v271 = *(v269 + 52);
    swift_allocObject();
    v272 = sub_1C081F1B4(v268);

    *(a1 + v33) = v272;
    v268 = v272;
  }

  v273 = OBJC_IVAR____TtCV12SiriOntology41Com_Apple_Siri_Product_Proto_MatchingSpanP33_FC4EE5074104C85BFB570AF81C8E8EC613_StorageClass__preItnphrasesStartTime;
  result = swift_beginAccess();
  *(v268 + v273) = v283;
  if ((v295 & 1) == 0)
  {
LABEL_96:
    v274 = *(a1 + v33);
    v275 = swift_isUniquelyReferenced_nonNull_native();
    v276 = *(a1 + v33);
    if ((v275 & 1) == 0)
    {
      v277 = type metadata accessor for Com_Apple_Siri_Product_Proto_MatchingSpan._StorageClass(0);
      v278 = *(v277 + 48);
      v279 = *(v277 + 52);
      swift_allocObject();
      v280 = sub_1C081F1B4(v276);

      *(a1 + v33) = v280;
      v276 = v280;
    }

    v281 = OBJC_IVAR____TtCV12SiriOntology41Com_Apple_Siri_Product_Proto_MatchingSpanP33_FC4EE5074104C85BFB570AF81C8E8EC613_StorageClass__preItnphrasesEndTime;
    result = swift_beginAccess();
    *(v276 + v281) = v32;
  }

  return result;
}

void sub_1C07A46A4(uint64_t a1@<X8>)
{
  v88 = type metadata accessor for Com_Apple_Siri_Product_Proto_FractionalPeriod(0);
  v3 = *(v88 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v88);
  v71 = &v56 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = type metadata accessor for Com_Apple_Siri_Product_Proto_DateTimePeriod(0);
  v6 = *(v89 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](v89);
  v10 = &v56 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v56 - v11;
  v13 = type metadata accessor for Com_Apple_Siri_Product_Proto_DateTimeHoliday(0);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x1EEE9AC00](v13);
  v83 = &v56 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v61 = &v56 - v18;
  v19 = *v1;
  v20 = *(v1 + 8);
  v21 = v1[2];
  v85 = *(v1 + 24);
  v84 = v1[4];
  v81 = *(v1 + 40);
  v86 = *(v1 + 41);
  v87 = v20;
  v22 = v1[7];
  v57 = v1[6];
  v82 = v22;
  v59 = *(v1 + 64);
  LODWORD(v22) = *(v1 + 66);
  v75 = *(v1 + 65);
  v76 = v22;
  v23 = *(v1 + 67);
  v74 = v1[9];
  LODWORD(v22) = *(v1 + 80);
  v77 = v23;
  v78 = v22;
  v24 = v1[12];
  v63 = v1[11];
  v65 = v24;
  v25 = v1[14];
  v66 = v1[13];
  v67 = v25;
  v69 = v1[15];
  v68 = *(v1 + 128);
  v79 = *(v1 + 129);
  v70 = v1[17];
  v80 = *(v1 + 144);
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 1;
  *(a1 + 32) = 0;
  *(a1 + 40) = 1;
  *(a1 + 41) = 0;
  *(a1 + 48) = MEMORY[0x1E69E7CC0];
  *(a1 + 56) = 0;
  *(a1 + 64) = 1;
  *(a1 + 68) = 0;
  v26 = type metadata accessor for Com_Apple_Siri_Product_Proto_Date(0);
  v27 = a1 + v26[14];
  _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
  v28 = *(v14 + 56);
  v58 = v26[15];
  v73 = v13;
  v60 = v28;
  v28(a1 + v58, 1, 1, v13);
  v29 = *(v3 + 56);
  v62 = v26[16];
  v72 = v3 + 56;
  v64 = v29;
  v29(a1 + v62, 1, 1, v88);
  if (v87)
  {
    LODWORD(v19) = -1;
  }

  else
  {
    if ((v19 & 0x8000000000000000) != 0)
    {
      __break(1u);
LABEL_65:
      __break(1u);
      goto LABEL_66;
    }

    if (HIDWORD(v19))
    {
LABEL_66:
      __break(1u);
LABEL_67:
      __break(1u);
      goto LABEL_68;
    }
  }

  *a1 = v19;
  v30 = v86;
  if (v85)
  {
    LODWORD(v21) = -1;
    v31 = v84;
    goto LABEL_9;
  }

  v31 = v84;
  if ((v21 & 0x8000000000000000) != 0)
  {
    goto LABEL_65;
  }

  if (HIDWORD(v21))
  {
LABEL_68:
    __break(1u);
    goto LABEL_69;
  }

LABEL_9:
  *(a1 + 4) = v21;
  if (v81)
  {
    LODWORD(v31) = -1;
    v33 = v82;
    v32 = v83;
    goto LABEL_13;
  }

  v33 = v82;
  v32 = v83;
  if ((v31 & 0x8000000000000000) != 0)
  {
    goto LABEL_67;
  }

  if (HIDWORD(v31))
  {
LABEL_70:
    __break(1u);
    goto LABEL_71;
  }

LABEL_13:
  *(a1 + 8) = v31;
  if (v30 <= 3)
  {
    v34 = v74;
    if (v30 > 1)
    {
      if (v30 == 2)
      {
        v35 = 3;
      }

      else
      {
        v35 = 4;
      }
    }

    else if (v30)
    {
      v35 = 2;
    }

    else
    {
      v35 = 1;
    }

LABEL_27:
    v36 = v73;
    goto LABEL_28;
  }

  v34 = v74;
  if (v30 <= 5)
  {
    if (v30 == 4)
    {
      v35 = 5;
    }

    else
    {
      v35 = 6;
    }

    goto LABEL_27;
  }

  v36 = v73;
  if (v30 != 6)
  {
    goto LABEL_29;
  }

  v35 = 7;
LABEL_28:
  *(a1 + 16) = v35;
  *(a1 + 24) = 1;
LABEL_29:
  if (v33 != 1)
  {
    *v32 = 0;
    *(v32 + 1) = 0xE000000000000000;
    *(v32 + 2) = 0;
    v32[24] = 1;
    v37 = *(v36 + 24);

    _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
    if (v33)
    {
      *v32 = v57;
      *(v32 + 1) = v33;
    }

    if (v59 != 12)
    {
      v90 = v59;
      sub_1C07A468C(&v91);
      v38 = v92;
      *(v32 + 2) = v91;
      v32[24] = v38;
    }

    v39 = v32;
    v40 = v61;
    sub_1C07A57D4(v39, v61, type metadata accessor for Com_Apple_Siri_Product_Proto_DateTimeHoliday);
    v41 = v58;
    sub_1C05145B4(a1 + v58, &qword_1EBE17C40, &unk_1C099BB60);
    sub_1C07A57D4(v40, a1 + v41, type metadata accessor for Com_Apple_Siri_Product_Proto_DateTimeHoliday);
    v60(a1 + v41, 0, 1, v36);
  }

  if (v75 != 18)
  {
    v90 = v75;
    sub_1C07A5490(&v91);
    v42 = v92;
    *(a1 + 32) = v91;
    *(a1 + 40) = v42;
  }

  v43 = v77;
  if (v76 == 2)
  {
    if (v77 == 2)
    {
      goto LABEL_39;
    }
  }

  else
  {
    *(a1 + 41) = v76 & 1;
    if (v43 == 2)
    {
LABEL_39:
      v44 = *(v34 + 16);
      if (v44)
      {
        goto LABEL_40;
      }

LABEL_53:
      v46 = MEMORY[0x1E69E7CC0];
      goto LABEL_54;
    }
  }

  *(a1 + 42) = v43 & 1;
  v44 = *(v34 + 16);
  if (!v44)
  {
    goto LABEL_53;
  }

LABEL_40:
  v45 = (v34 + 33);
  v46 = MEMORY[0x1E69E7CC0];
  do
  {
    v47 = *(v45 - 1);
    v48 = *v45;
    *v10 = 0;
    *(v10 + 1) = 0;
    v10[16] = 1;
    v49 = &v10[*(v89 + 24)];
    _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
    if (v47 != 2)
    {
      *v10 = v47 & 1;
    }

    if (v48 != 53)
    {
      v90 = v48;
      sub_1C07A5490(&v91);
      v50 = v92;
      *(v10 + 1) = v91;
      v10[16] = v50;
    }

    sub_1C07A57D4(v10, v12, type metadata accessor for Com_Apple_Siri_Product_Proto_DateTimePeriod);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v46 = sub_1C05791C4(0, v46[2] + 1, 1, v46);
    }

    v52 = v46[2];
    v51 = v46[3];
    if (v52 >= v51 >> 1)
    {
      v46 = sub_1C05791C4(v51 > 1, v52 + 1, 1, v46);
    }

    v45 += 2;
    v46[2] = v52 + 1;
    sub_1C07A57D4(v12, v46 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v52, type metadata accessor for Com_Apple_Siri_Product_Proto_DateTimePeriod);
    --v44;
  }

  while (v44);
LABEL_54:
  *(a1 + 48) = v46;
  if (v78 == 12)
  {
    if (v79)
    {
      goto LABEL_56;
    }
  }

  else
  {
    v90 = v78;
    sub_1C07A468C(&v91);
    v53 = v92;
    *(a1 + 56) = v91;
    *(a1 + 64) = v53;
    if (v79)
    {
LABEL_56:
      if (v80)
      {
        return;
      }

      goto LABEL_60;
    }
  }

  v91 = v63;
  v92 = v65 & 1;
  v93 = v66;
  v94 = v67 & 1;
  v95 = v69;
  v96 = v68 & 1;
  v54 = v71;
  sub_1C07A53D0(v71);
  v55 = v62;
  sub_1C05145B4(a1 + v62, &qword_1EBE17C48, &unk_1C0973560);
  sub_1C07A57D4(v54, a1 + v55, type metadata accessor for Com_Apple_Siri_Product_Proto_FractionalPeriod);
  v64(a1 + v55, 0, 1, v88);
  if (v80)
  {
    return;
  }

LABEL_60:
  if (v70 < 0xFFFFFFFF80000000)
  {
LABEL_69:
    __break(1u);
    goto LABEL_70;
  }

  if (v70 > 0x7FFFFFFF)
  {
LABEL_71:
    __break(1u);
    return;
  }

  *(a1 + 68) = v70;
}

void sub_1C07A4F14(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(v1 + 8);
  v5 = *(v1 + 9);
  v6 = *(v1 + 10);
  v7 = *(v1 + 11);
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  *(a1 + 24) = 0;
  *(a1 + 32) = 1;
  v8 = a1 + *(type metadata accessor for Com_Apple_Siri_Product_Proto_Interval(0) + 32);
  _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
  if (v4)
  {
    if (v5 == 53)
    {
      goto LABEL_3;
    }
  }

  else
  {
    *a1 = v3;
    if (v5 == 53)
    {
LABEL_3:
      if (v6 == 18)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  v13 = v5;
  sub_1C07A5490(&v11);
  v9 = v12;
  *(a1 + 8) = v11;
  *(a1 + 16) = v9;
  if (v6 == 18)
  {
LABEL_4:
    if (v7 == 2)
    {
      return;
    }

    goto LABEL_5;
  }

LABEL_9:
  v13 = v6;
  sub_1C07A5490(&v11);
  v10 = v12;
  *(a1 + 24) = v11;
  *(a1 + 32) = v10;
  if (v7 == 2)
  {
    return;
  }

LABEL_5:
  *(a1 + 33) = v7 & 1;
}

uint64_t sub_1C07A5014@<X0>(uint64_t a1@<X8>)
{
  v44 = a1;
  v2 = type metadata accessor for Com_Apple_Siri_Product_Proto_DateTimePeriod(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x1EEE9AC00](v2);
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v36 = &v35 - v8;
  v9 = type metadata accessor for Com_Apple_Siri_Product_Proto_Time(0);
  v10 = v9 - 8;
  v11 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *v1;
  v15 = v1[1];
  v16 = v1[2];
  v17 = *(v1 + 24);
  v18 = v1[4];
  v46 = *(v1 + 40);
  v47 = v17;
  v45 = *(v1 + 41);
  v19 = *(v1 + 43);
  v20 = v1[7];
  v37 = v1[6];
  v38 = v14;
  v43 = v20;
  LODWORD(v20) = *(v1 + 64);
  v39 = v19;
  v40 = v20;
  LODWORD(v20) = *(v1 + 66);
  v41 = *(v1 + 65);
  v42 = v20;
  *v13 = 0;
  *(v13 + 1) = 0xE000000000000000;
  *(v13 + 2) = 0;
  *(v13 + 3) = 0;
  v13[32] = 1;
  *(v13 + 5) = 0;
  *(v13 + 6) = 0xE000000000000000;
  *(v13 + 28) = 0;
  v13[58] = 0;
  v21 = *(v10 + 56);

  _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
  v22 = *(v10 + 60);
  v23 = v2;
  v24 = v2;
  v25 = *(v3 + 56);
  result = v25(&v13[v22], 1, 1, v24);
  if (v15)
  {
    *v13 = v38;
    *(v13 + 1) = v15;
  }

  if (v47)
  {
    LODWORD(v16) = -1;
  }

  else
  {
    if ((v16 & 0x8000000000000000) != 0)
    {
      __break(1u);
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    if (HIDWORD(v16))
    {
LABEL_31:
      __break(1u);
      goto LABEL_32;
    }
  }

  *(v13 + 4) = v16;
  if (v46)
  {
    LODWORD(v18) = -1;
    v27 = v45;
    goto LABEL_11;
  }

  v27 = v45;
  if ((v18 & 0x8000000000000000) != 0)
  {
    goto LABEL_30;
  }

  if (!HIDWORD(v18))
  {
LABEL_11:
    *(v13 + 5) = v18;
    if (v27 != 3)
    {
      *v7 = 0;
      *(v7 + 1) = 0;
      v7[16] = 1;
      v28 = &v7[*(v23 + 24)];
      _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
      if (v27 != 2)
      {
        *v7 = v27 & 1;
      }

      if (v27 >> 8 != 53)
      {
        v50 = BYTE1(v27);
        sub_1C07A5490(&v48);
        v29 = v49;
        *(v7 + 1) = v48;
        v7[16] = v29;
      }

      v30 = v36;
      sub_1C07A57D4(v7, v36, type metadata accessor for Com_Apple_Siri_Product_Proto_DateTimePeriod);
      sub_1C05145B4(&v13[v22], &qword_1EBE17C38, &unk_1C0973550);
      sub_1C07A57D4(v30, &v13[v22], type metadata accessor for Com_Apple_Siri_Product_Proto_DateTimePeriod);
      v25(&v13[v22], 0, 1, v23);
    }

    if (v39 != 18)
    {
      v50 = v39;
      sub_1C07A5490(&v48);
      v31 = v49;
      *(v13 + 3) = v48;
      v13[32] = v31;
    }

    v32 = v43;
    if (v43)
    {
      *(v13 + 5) = v37;
      *(v13 + 6) = v32;
    }

    v33 = v41;
    v34 = v42;
    if (v40 == 2)
    {
      if (v41 == 2)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v13[56] = v40 & 1;
      if (v33 == 2)
      {
LABEL_23:
        if (v34 == 2)
        {
LABEL_25:
          sub_1C07A57D4(v13, v44, type metadata accessor for Com_Apple_Siri_Product_Proto_Time);
        }

LABEL_24:
        v13[58] = v34 & 1;
        goto LABEL_25;
      }
    }

    v13[57] = v33 & 1;
    if (v34 == 2)
    {
      goto LABEL_25;
    }

    goto LABEL_24;
  }

LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_1C07A53D0@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(v1 + 8);
  v5 = v1[2];
  v6 = *(v1 + 24);
  v7 = v1[4];
  v8 = *(v1 + 40);
  *a1 = 0;
  *(a1 + 8) = 0;
  v9 = a1 + *(type metadata accessor for Com_Apple_Siri_Product_Proto_FractionalPeriod(0) + 28);
  result = _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
  if ((v4 & 1) == 0)
  {
    if ((v3 & 0x8000000000000000) != 0)
    {
      __break(1u);
LABEL_15:
      __break(1u);
      goto LABEL_16;
    }

    if (HIDWORD(v3))
    {
LABEL_16:
      __break(1u);
LABEL_17:
      __break(1u);
      goto LABEL_18;
    }

    *a1 = v3;
  }

  if (v6)
  {
    goto LABEL_9;
  }

  if ((v5 & 0x8000000000000000) != 0)
  {
    goto LABEL_15;
  }

  if (HIDWORD(v5))
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  *(a1 + 4) = v5;
LABEL_9:
  if (v8)
  {
    return result;
  }

  if ((v7 & 0x8000000000000000) != 0)
  {
    goto LABEL_17;
  }

  if (HIDWORD(v7))
  {
LABEL_19:
    __break(1u);
    return result;
  }

  *(a1 + 8) = v7;
  return result;
}

uint64_t sub_1C07A54A8(int a1)
{
  v22 = a1;
  v2 = type metadata accessor for Com_Apple_Siri_Product_Proto_Element(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Com_Apple_Siri_Product_Proto_IntentNode(0);
  v8 = v7 - 8;
  v23 = *(v7 - 8);
  v24 = v23;
  v9 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v1;
  v13 = v1[3];
  *v11 = 0;
  v14 = &v11[*(v8 + 28)];
  _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
  v15 = *(v8 + 32);
  v16 = *(v3 + 56);
  v21 = *(v1 + 1);
  v16(&v11[v15], 1, 1, v2);
  *v11 = v22;
  v25 = v12;
  v26 = v21;
  v27 = v13;
  sub_1C079EC90(v6);
  sub_1C05145B4(&v11[v15], &qword_1EBE16E10, &unk_1C0971270);
  sub_1C07A57D4(v6, &v11[v15], type metadata accessor for Com_Apple_Siri_Product_Proto_Element);
  v16(&v11[v15], 0, 1, v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16E50, &qword_1C0970618);
  v17 = *(v23 + 72);
  v18 = (*(v24 + 80) + 32) & ~*(v24 + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_1C096E0C0;
  sub_1C07A57D4(v11, v19 + v18, type metadata accessor for Com_Apple_Siri_Product_Proto_IntentNode);
  return v19;
}

uint64_t sub_1C07A570C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1C07A5774(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1C07A57D4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t Graph.__allocating_init()()
{
  v0 = swift_allocObject();
  Graph.init()();
  return v0;
}

uint64_t sub_1C07A5874()
{
  MEMORY[0x1C68DEA70](v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_1C07A58AC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  v4 = *(v3 + 16);
  *(v3 + 16) = v2;
}

uint64_t sub_1C07A591C(__int128 *a1)
{
  swift_beginAccess();
  v3 = *(v1 + 24);

  sub_1C05715DC(a1, v3);

  swift_beginAccess();
  v4 = *(v1 + 16);

  sub_1C056CFA0(a1, v4);
}

uint64_t sub_1C07A59B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  if (qword_1ED5D7CA0 != -1)
  {
    swift_once();
  }

  v11[0] = xmmword_1ED5D7CA8;
  v11[1] = xmmword_1ED5D7CB8;
  v12 = qword_1ED5D7CC8;

  v9 = sub_1C0514CE0(v11, a1, a2, 1, a3);

  *a4 = v4;

  swift_unownedRetain();

  a4[1] = v9;
  return result;
}

uint64_t sub_1C07A5AB8@<X0>(uint64_t a1@<X0>, char a2@<W1>, void *a3@<X8>)
{
  if (qword_1ED5BDED8 != -1)
  {
    swift_once();
  }

  v9[0] = xmmword_1ED5BDEE0;
  v9[1] = xmmword_1ED5BDEF0;
  v10 = qword_1ED5BDF00;

  v7 = sub_1C0514CE0(v9, a1, a2 & 1, 0, MEMORY[0x1E69E7CC0]);

  *a3 = v3;

  swift_unownedRetain();

  a3[1] = v7;
  return result;
}

double sub_1C07A5BBC@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, _OWORD *a5@<X8>)
{
  v8 = *a1;
  v7 = a1[1];
  v10 = a1[2];
  v9 = a1[3];
  v11 = a1[4];
  v12 = *(a2 + 8);
  v13 = *(a3 + 8);
  v14 = *(swift_unownedRetainStrong() + 56);

  swift_unownedRetainStrong();
  v15 = *(v13 + 56);

  *&v29 = v14;
  *(&v29 + 1) = v15;
  LODWORD(v30) = a4;
  *(&v30 + 1) = v8;
  *&v31 = v7;
  *(&v31 + 1) = v10;
  *&v32 = v9;
  *(&v32 + 1) = v11;
  swift_beginAccess();
  v16 = *(v5 + 16);

  sub_1C0514AC4(&v29, v28);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v5 + 16) = v16;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v16 = sub_1C0514F9C(0, *(v16 + 2) + 1, 1, v16);
    *(v5 + 16) = v16;
  }

  v19 = *(v16 + 2);
  v18 = *(v16 + 3);
  if (v19 >= v18 >> 1)
  {
    v16 = sub_1C0514F9C((v18 > 1), v19 + 1, 1, v16);
  }

  *(v16 + 2) = v19 + 1;
  v20 = &v16[64 * v19];
  v21 = v29;
  v22 = v30;
  v23 = v32;
  *(v20 + 4) = v31;
  *(v20 + 5) = v23;
  *(v20 + 2) = v21;
  *(v20 + 3) = v22;
  *(v5 + 16) = v16;
  swift_endAccess();
  v24 = v30;
  *a5 = v29;
  a5[1] = v24;
  result = *&v31;
  v26 = v32;
  a5[2] = v31;
  a5[3] = v26;
  return result;
}

void *sub_1C07A5D38()
{
  v69 = *MEMORY[0x1E69E9840];
  v1 = MEMORY[0x1E69E7CC0];
  v59 = MEMORY[0x1E69E7CC0];
  v58 = MEMORY[0x1E69E7CD0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE171F0, &qword_1C09709C8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C096E0C0;
  swift_beginAccess();
  v3 = *(v0 + 32);
  swift_unownedRetainStrong();
  if (!v3)
  {
LABEL_43:
    __break(1u);
  }

  *(inited + 32) = v0;

  swift_unownedRetain();

  *(inited + 40) = v3;
  v55 = v1;
  v4 = *(inited + 16);
  do
  {
    while (1)
    {
      if (!v4)
      {
        __break(1u);
        goto LABEL_43;
      }

      v6 = *(inited + 32);
      v5 = *(inited + 40);

      swift_unownedRetain();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (!isUniquelyReferenced_nonNull_native || (v4 - 1) > *(inited + 24) >> 1)
      {
        inited = sub_1C0578380(isUniquelyReferenced_nonNull_native, v4, 1, inited);
      }

      sub_1C07A773C(inited + 32);
      v8 = *(inited + 16);
      memmove((inited + 32), (inited + 48), 16 * v8 - 16);
      *(inited + 16) = v8 - 1;
      v57 = inited;
      swift_unownedRetainStrong();
      v9 = *(v5 + 56);

      if (*(v58 + 16))
      {
        v10 = *(v58 + 40);
        v11 = sub_1C095DFDC();
        v12 = -1 << *(v58 + 32);
        v13 = v11 & ~v12;
        if ((*(v58 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
        {
          break;
        }
      }

LABEL_14:
      swift_unownedRetainStrong();
      v15 = *(v5 + 56);

      sub_1C051DFC8(&v64, v15);
      swift_unownedRetainStrong();
      v16 = *(v5 + 112);

      v17 = *(v16 + 16);

      if (v17)
      {
        type metadata accessor for UsoValue();
        v18 = swift_allocObject();
        *(v18 + 16) = v6;
        *(v18 + 24) = v5;

        v19 = swift_unownedRetain();
        MEMORY[0x1C68DD810](v19);
        if (*((v59 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v59 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v52 = *((v59 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_1C095D9AC();
        }

        sub_1C095D9DC();
        v55 = v59;
      }

      swift_beginAccess();
      v20 = *(v6 + 16);
      v21 = *(v20 + 16);
      if (v21)
      {
        v22 = *(v6 + 16);

        swift_beginAccess();
        v23 = v21 - 1;
        v24 = 32;
        v25 = v1;
        while (1)
        {
          v26 = *(v20 + v24 + 48);
          v28 = *(v20 + v24);
          v27 = *(v20 + v24 + 16);
          v66 = *(v20 + v24 + 32);
          v67 = v26;
          v64 = v28;
          v65 = v27;
          v29 = v28;
          swift_unownedRetainStrong();
          v30 = *(v5 + 56);
          sub_1C0514AC4(&v64, &v60);

          if (v29 == v30 && (v31 = *(v6 + 24), *(v31 + 16)) && (v32 = sub_1C0514E38(*(&v64 + 1)), (v33 & 1) != 0))
          {
            v34 = *(*(v31 + 56) + 8 * v32);

            swift_unownedRetain();
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v25 = sub_1C05198E0(0, v25[2] + 1, 1, v25);
            }

            v36 = v25[2];
            v35 = v25[3];
            if (v36 >= v35 >> 1)
            {
              v25 = sub_1C05198E0((v35 > 1), v36 + 1, 1, v25);
            }

            v62 = v66;
            v63 = v67;
            v37 = v64;
            v60 = v64;
            v61 = v65;
            v25[2] = v36 + 1;
            v38 = &v25[10 * v36];
            v39 = v61;
            v40 = v63;
            *(v38 + 4) = v62;
            *(v38 + 5) = v40;
            *(v38 + 2) = v37;
            *(v38 + 3) = v39;
            v38[12] = v6;
            v38[13] = v34;
            if (!v23)
            {
LABEL_31:

              goto LABEL_33;
            }
          }

          else
          {
            sub_1C0514A70(&v64);
            if (!v23)
            {
              goto LABEL_31;
            }
          }

          --v23;
          v24 += 64;
        }
      }

      v25 = v1;
LABEL_33:
      v41 = sub_1C0519EEC(v25);

      v42 = *(v41 + 16);
      if (v42)
      {
        v56 = MEMORY[0x1E69E7CC0];
        sub_1C051DDC8(0, v42, 0);
        v43 = v56;
        v44 = v42 - 1;
        for (i = 32; ; i += 80)
        {
          v64 = *(v41 + i);
          v46 = *(v41 + i + 16);
          v47 = *(v41 + i + 32);
          v48 = *(v41 + i + 64);
          v67 = *(v41 + i + 48);
          v68 = v48;
          v65 = v46;
          v66 = v47;
          sub_1C0519E14(&v64, &v60);
          sub_1C0514A70(&v64);
          v50 = *(v56 + 16);
          v49 = *(v56 + 24);
          if (v50 >= v49 >> 1)
          {
            sub_1C051DDC8((v49 > 1), v50 + 1, 1);
          }

          v51 = v68;
          *(v56 + 16) = v50 + 1;
          *(v56 + 16 * v50 + 32) = v51;
          if (!v44)
          {
            break;
          }

          --v44;
        }

        v1 = MEMORY[0x1E69E7CC0];
      }

      else
      {

        v1 = MEMORY[0x1E69E7CC0];
        v43 = MEMORY[0x1E69E7CC0];
      }

      sub_1C05CA774(v43);

      swift_unownedRelease();
      inited = v57;
      v4 = *(v57 + 16);
      if (!v4)
      {
        goto LABEL_41;
      }
    }

    v14 = ~v12;
    while (*(*(v58 + 48) + 8 * v13) != v9)
    {
      v13 = (v13 + 1) & v14;
      if (((*(v58 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
      {
        goto LABEL_14;
      }
    }

    swift_unownedRelease();
    v4 = *(inited + 16);
  }

  while (v4);
LABEL_41:

  v53 = *MEMORY[0x1E69E9840];
  return v55;
}

uint64_t sub_1C07A62E0()
{
  swift_beginAccess();
  v1 = *(v0 + 32);
  result = swift_unownedRetainStrong();
  if (v1)
  {

    swift_unownedRetain();

    *&v16[0] = v0;
    *(&v16[0] + 1) = v1;
    v15[0] = 0;
    v15[1] = 0;
    v17 = xmmword_1C099BB70;
    v3 = sub_1C0519A28(v16, v15, &v17);

    swift_unownedRelease();
    v4 = *(v3 + 16);
    if (v4)
    {
      *&v17 = MEMORY[0x1E69E7CC0];
      sub_1C0600CA0(0, v4, 0);
      v5 = v17;
      v6 = v4 - 1;
      for (i = 32; ; i += 80)
      {
        v8 = *(v3 + i + 16);
        v9 = *(v3 + i + 32);
        v10 = *(v3 + i + 64);
        v16[3] = *(v3 + i + 48);
        v16[4] = v10;
        v16[2] = v9;
        v16[0] = *(v3 + i);
        v16[1] = v8;
        v14 = v10;
        sub_1C0519E14(v16, v15);
        sub_1C0519E14(v16, v15);

        sub_1C0519E84(v16);
        *&v17 = v5;
        v12 = *(v5 + 16);
        v11 = *(v5 + 24);
        if (v12 >= v11 >> 1)
        {
          sub_1C0600CA0((v11 > 1), v12 + 1, 1);
          v5 = v17;
        }

        *(v5 + 16) = v12 + 1;
        v13 = v5 + 40 * v12;
        *(v13 + 32) = v14;
        *(v13 + 56) = &type metadata for Node;
        *(v13 + 64) = &off_1F3F9F6A8;
        if (!v6)
        {
          break;
        }

        --v6;
      }
    }

    else
    {

      return MEMORY[0x1E69E7CC0];
    }

    return v5;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *Graph.deinit()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];
  swift_unownedRelease();
  return v0;
}

uint64_t sub_1C07A64EC()
{
  sub_1C095DFEC();
  swift_beginAccess();
  sub_1C05715DC(v3, *(v0 + 24));
  swift_beginAccess();
  v1 = *(v0 + 16);

  sub_1C056CFA0(v3, v1);

  return sub_1C095E03C();
}

uint64_t sub_1C07A6578()
{
  v1 = *v0;
  sub_1C095DFEC();
  swift_beginAccess();
  sub_1C05715DC(v4, *(v1 + 24));
  swift_beginAccess();
  v2 = *(v1 + 16);

  sub_1C056CFA0(v4, v2);

  return sub_1C095E03C();
}

uint64_t sub_1C07A6608(__int128 *a1)
{
  v3 = *v1;
  swift_beginAccess();
  v4 = *(v3 + 24);

  sub_1C05715DC(a1, v4);

  swift_beginAccess();
  v5 = *(v3 + 16);

  sub_1C056CFA0(a1, v5);
}

uint64_t sub_1C07A66A4()
{
  sub_1C095DFEC();
  v1 = *v0;
  swift_beginAccess();
  v2 = *(v1 + 24);

  sub_1C05715DC(v5, v2);

  swift_beginAccess();
  v3 = *(v1 + 16);

  sub_1C056CFA0(v5, v3);

  return sub_1C095E03C();
}

uint64_t sub_1C07A6750(__int128 *a1, __int128 *a2)
{
  v3 = v2;
  v5 = a2[9];
  v6 = a2[7];
  v80 = a2[8];
  v81 = v5;
  v7 = a2[9];
  v82[0] = a2[10];
  *(v82 + 9) = *(a2 + 169);
  v8 = a2[5];
  v9 = a2[3];
  v76 = a2[4];
  v77 = v8;
  v10 = a2[5];
  v11 = a2[7];
  v78 = a2[6];
  v79 = v11;
  v12 = a2[1];
  v72 = *a2;
  v73 = v12;
  v13 = a2[3];
  v15 = *a2;
  v14 = a2[1];
  v74 = a2[2];
  v75 = v13;
  v16 = *v2;
  v17 = *(*v2 + 40);
  v91 = v80;
  v92 = v7;
  v93[0] = a2[10];
  *(v93 + 9) = *(a2 + 169);
  v86 = v9;
  v87 = v76;
  v88 = v10;
  v89 = v78;
  v90 = v6;
  v83 = v15;
  v84 = v14;
  v85 = v74;
  sub_1C095DFEC();
  UsoEntitySpan.hash(into:)(v70);
  v18 = sub_1C095E03C();
  v19 = -1 << *(v16 + 32);
  v20 = v18 & ~v19;
  if ((*(v16 + 56 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20))
  {
    v21 = ~v19;
    while (1)
    {
      v22 = (*(v16 + 48) + 192 * v20);
      v24 = v22[2];
      v23 = v22[3];
      v25 = v22[1];
      v70[0] = *v22;
      v70[1] = v25;
      v70[2] = v24;
      v70[3] = v23;
      v26 = v22[4];
      v27 = v22[5];
      v28 = v22[7];
      v70[6] = v22[6];
      v70[7] = v28;
      v70[4] = v26;
      v70[5] = v27;
      v29 = v22[8];
      v30 = v22[9];
      v31 = v22[10];
      *(v71 + 9) = *(v22 + 169);
      v70[9] = v30;
      v71[0] = v31;
      v70[8] = v29;
      v67 = v22[8];
      v68 = v22[9];
      v69[0] = v22[10];
      *(v69 + 9) = *(v22 + 169);
      v63 = v22[4];
      v64 = v22[5];
      v65 = v22[6];
      v66 = v22[7];
      v59 = *v22;
      v60 = v22[1];
      v61 = v22[2];
      v62 = v22[3];
      sub_1C0521E78(v70, v57);
      v32 = _s12SiriOntology13UsoEntitySpanV2eeoiySbAC_ACtFZ_0(&v59, &v72);
      v91 = v67;
      v92 = v68;
      v93[0] = v69[0];
      *(v93 + 9) = *(v69 + 9);
      v88 = v64;
      v89 = v65;
      v90 = v66;
      v83 = v59;
      v84 = v60;
      v85 = v61;
      v86 = v62;
      v87 = v63;
      sub_1C05755CC(&v83);
      if (v32)
      {
        break;
      }

      v20 = (v20 + 1) & v21;
      if (((*(v16 + 56 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    v57[8] = v80;
    v57[9] = v81;
    v58[0] = v82[0];
    *(v58 + 9) = *(v82 + 9);
    v57[4] = v76;
    v57[5] = v77;
    v57[6] = v78;
    v57[7] = v79;
    v57[0] = v72;
    v57[1] = v73;
    v57[2] = v74;
    v57[3] = v75;
    sub_1C05755CC(v57);
    v41 = (*(v16 + 48) + 192 * v20);
    v42 = v41[8];
    v43 = v41[9];
    v44 = v41[10];
    *(v69 + 9) = *(v41 + 169);
    v68 = v43;
    v69[0] = v44;
    v67 = v42;
    v45 = v41[4];
    v46 = v41[5];
    v47 = v41[7];
    v65 = v41[6];
    v66 = v47;
    v63 = v45;
    v64 = v46;
    v49 = *v41;
    v48 = v41[1];
    v50 = v41[3];
    v61 = v41[2];
    v62 = v50;
    v59 = v49;
    v60 = v48;
    v51 = v41[9];
    a1[8] = v41[8];
    a1[9] = v51;
    a1[10] = v41[10];
    *(a1 + 169) = *(v41 + 169);
    v52 = v41[5];
    a1[4] = v41[4];
    a1[5] = v52;
    v53 = v41[7];
    a1[6] = v41[6];
    a1[7] = v53;
    v54 = v41[1];
    *a1 = *v41;
    a1[1] = v54;
    v55 = v41[3];
    a1[2] = v41[2];
    a1[3] = v55;
    sub_1C0521E78(&v59, &v56);
    return 0;
  }

  else
  {
LABEL_5:
    v33 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v91 = v80;
    v92 = v81;
    v93[0] = v82[0];
    *(v93 + 9) = *(v82 + 9);
    v88 = v77;
    v89 = v78;
    v90 = v79;
    v83 = v72;
    v84 = v73;
    v85 = v74;
    v86 = v75;
    v87 = v76;
    *&v59 = *v3;
    *v3 = 0x8000000000000000;
    sub_1C0521E78(&v83, v70);
    sub_1C07A6DE0(&v83, v20, isUniquelyReferenced_nonNull_native);
    *v3 = v59;
    v35 = v81;
    a1[8] = v80;
    a1[9] = v35;
    a1[10] = v82[0];
    *(a1 + 169) = *(v82 + 9);
    v36 = v77;
    a1[4] = v76;
    a1[5] = v36;
    v37 = v79;
    a1[6] = v78;
    a1[7] = v37;
    v38 = v73;
    *a1 = v72;
    a1[1] = v38;
    v39 = v75;
    result = 1;
    a1[2] = v74;
    a1[3] = v39;
  }

  return result;
}

unint64_t sub_1C07A6B44(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE1FAA0, &unk_1C099BCB0);
  result = sub_1C095DBFC();
  v6 = result;
  if (*(v3 + 16))
  {
    v37 = v2;
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    for (i = (v9 + 63) >> 6; v11; ++*(v6 + 16))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_14:
      v16 = (*(v3 + 48) + 192 * (v13 | (v7 << 6)));
      v17 = v16[9];
      v18 = v16[7];
      v58 = v16[8];
      v59 = v17;
      v19 = v16[9];
      v60[0] = v16[10];
      *(v60 + 9) = *(v16 + 169);
      v20 = v16[5];
      v21 = v16[3];
      v54 = v16[4];
      v55 = v20;
      v22 = v16[5];
      v23 = v16[7];
      v56 = v16[6];
      v57 = v23;
      v24 = v16[1];
      v50 = *v16;
      v51 = v24;
      v25 = v16[3];
      v27 = *v16;
      v26 = v16[1];
      v52 = v16[2];
      v53 = v25;
      v47 = v58;
      v48 = v19;
      v49[0] = v16[10];
      *(v49 + 9) = *(v16 + 169);
      v43 = v54;
      v44 = v22;
      v45 = v56;
      v46 = v18;
      v39 = v27;
      v40 = v26;
      v28 = *(v6 + 40);
      v41 = v52;
      v42 = v21;
      sub_1C095DFEC();
      UsoEntitySpan.hash(into:)(v38);
      sub_1C095E03C();
      v29 = -1 << *(v6 + 32);
      result = sub_1C095DBDC();
      *(v6 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
      v30 = (*(v6 + 48) + 192 * result);
      v31 = v59;
      v30[8] = v58;
      v30[9] = v31;
      v30[10] = v60[0];
      *(v30 + 169) = *(v60 + 9);
      v32 = v55;
      v30[4] = v54;
      v30[5] = v32;
      v33 = v57;
      v30[6] = v56;
      v30[7] = v33;
      v34 = v51;
      *v30 = v50;
      v30[1] = v34;
      v35 = v53;
      v30[2] = v52;
      v30[3] = v35;
    }

    v14 = v7;
    while (1)
    {
      v7 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        return result;
      }

      if (v7 >= i)
      {
        break;
      }

      v15 = v8[v7];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v11 = (v15 - 1) & v15;
        goto LABEL_14;
      }
    }

    v36 = 1 << *(v3 + 32);
    if (v36 >= 64)
    {
      bzero((v3 + 56), ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v36;
    }

    v2 = v37;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_1C07A6DE0(uint64_t result, unint64_t a2, char a3)
{
  v4 = v3;
  v6 = result;
  v7 = *(result + 144);
  v81 = *(result + 128);
  v82 = v7;
  v83[0] = *(result + 160);
  *(v83 + 9) = *(result + 169);
  v8 = *(result + 80);
  v77 = *(result + 64);
  v78 = v8;
  v9 = *(result + 112);
  v79 = *(result + 96);
  v80 = v9;
  v10 = *(result + 16);
  v73 = *result;
  v74 = v10;
  v11 = *(result + 48);
  v75 = *(result + 32);
  v76 = v11;
  v12 = *(*v3 + 16);
  v13 = *(*v3 + 24);
  if (v13 > v12 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1C07A6B44(v12 + 1);
  }

  else
  {
    if (v13 > v12)
    {
      result = sub_1C07A7208();
      goto LABEL_12;
    }

    sub_1C07A73B8(v12 + 1);
  }

  v14 = *v3;
  v15 = *(*v3 + 40);
  v16 = v6[9];
  v70 = v6[8];
  v71 = v16;
  v72[0] = v6[10];
  *(v72 + 9) = *(v6 + 169);
  v17 = v6[5];
  v66 = v6[4];
  v67 = v17;
  v18 = v6[7];
  v68 = v6[6];
  v69 = v18;
  v19 = v6[1];
  v62 = *v6;
  v63 = v19;
  v20 = v6[3];
  v64 = v6[2];
  v65 = v20;
  sub_1C095DFEC();
  UsoEntitySpan.hash(into:)(v60);
  result = sub_1C095E03C();
  v21 = -1 << *(v14 + 32);
  a2 = result & ~v21;
  if ((*(v14 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v22 = ~v21;
    do
    {
      v23 = (*(v14 + 48) + 192 * a2);
      v25 = v23[2];
      v24 = v23[3];
      v26 = v23[1];
      v60[0] = *v23;
      v60[1] = v26;
      v60[2] = v25;
      v60[3] = v24;
      v27 = v23[4];
      v28 = v23[5];
      v29 = v23[7];
      v60[6] = v23[6];
      v60[7] = v29;
      v60[4] = v27;
      v60[5] = v28;
      v30 = v23[8];
      v31 = v23[9];
      v32 = v23[10];
      *(v61 + 9) = *(v23 + 169);
      v60[9] = v31;
      v61[0] = v32;
      v60[8] = v30;
      v33 = v23[9];
      v57 = v23[8];
      v58 = v33;
      v59[0] = v23[10];
      *(v59 + 9) = *(v23 + 169);
      v34 = v23[5];
      v53 = v23[4];
      v54 = v34;
      v35 = v23[7];
      v55 = v23[6];
      v56 = v35;
      v36 = v23[1];
      v49 = *v23;
      v50 = v36;
      v37 = v23[3];
      v51 = v23[2];
      v52 = v37;
      sub_1C0521E78(v60, &v62);
      v38 = _s12SiriOntology13UsoEntitySpanV2eeoiySbAC_ACtFZ_0(&v49, &v73);
      v70 = v57;
      v71 = v58;
      v72[0] = v59[0];
      *(v72 + 9) = *(v59 + 9);
      v66 = v53;
      v67 = v54;
      v68 = v55;
      v69 = v56;
      v62 = v49;
      v63 = v50;
      v64 = v51;
      v65 = v52;
      result = sub_1C05755CC(&v62);
      if (v38)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v22;
    }

    while (((*(v14 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v39 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  v40 = (*(v39 + 48) + 192 * a2);
  v41 = v80;
  v40[6] = v79;
  v40[7] = v41;
  v42 = v78;
  v40[4] = v77;
  v40[5] = v42;
  *(v40 + 169) = *(v83 + 9);
  v43 = v83[0];
  v40[9] = v82;
  v40[10] = v43;
  v40[8] = v81;
  v44 = v74;
  *v40 = v73;
  v40[1] = v44;
  v45 = v76;
  v40[2] = v75;
  v40[3] = v45;
  v46 = *(v39 + 16);
  v47 = __OFADD__(v46, 1);
  v48 = v46 + 1;
  if (!v47)
  {
    *(v39 + 16) = v48;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_1C095DF5C();
  __break(1u);
  return result;
}

void *sub_1C07A70C8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE1FA98, &qword_1C099BCA8);
  v2 = *v0;
  v3 = sub_1C095DBEC();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
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

void *sub_1C07A7208()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE1FAA0, &unk_1C099BCB0);
  v2 = *v0;
  v3 = sub_1C095DBEC();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
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
        v17 = 192 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = v18[2];
        v29[3] = v18[3];
        v22 = v18[4];
        v23 = v18[5];
        v24 = v18[7];
        v29[6] = v18[6];
        v29[7] = v24;
        v29[4] = v22;
        v29[5] = v23;
        v25 = v18[8];
        v26 = v18[9];
        v27 = v18[10];
        *(v30 + 9) = *(v18 + 169);
        v29[9] = v26;
        v30[0] = v27;
        v29[8] = v25;
        v29[1] = v19;
        v29[2] = v21;
        v29[0] = v20;
        memmove((*(v4 + 48) + v17), v18, 0xB9uLL);
        result = sub_1C0521E78(v29, &v28);
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

      v16 = *(v2 + 56 + 8 * v8);
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

unint64_t sub_1C07A73B8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE1FAA0, &unk_1C099BCB0);
  result = sub_1C095DBFC();
  v6 = result;
  if (*(v3 + 16))
  {
    v42 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    for (i = (v8 + 63) >> 6; v10; ++*(v6 + 16))
    {
      v12 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_14:
      v15 = (*(v3 + 48) + 192 * (v12 | (v7 << 6)));
      v17 = *v15;
      v16 = v15[1];
      v18 = v15[3];
      v58 = v15[2];
      v59 = v18;
      v19 = v15[4];
      v20 = v15[5];
      v21 = v15[7];
      v62 = v15[6];
      v63 = v21;
      v60 = v19;
      v61 = v20;
      v22 = v15[8];
      v23 = v15[9];
      v24 = v15[10];
      *(v66 + 9) = *(v15 + 169);
      v65 = v23;
      v66[0] = v24;
      v64 = v22;
      v56 = v17;
      v57 = v16;
      v25 = *(v6 + 40);
      v26 = v15[9];
      v53 = v15[8];
      v54 = v26;
      v55[0] = v15[10];
      *(v55 + 9) = *(v15 + 169);
      v27 = v15[5];
      v49 = v15[4];
      v50 = v27;
      v28 = v15[7];
      v51 = v15[6];
      v52 = v28;
      v29 = v15[1];
      v45 = *v15;
      v46 = v29;
      v30 = v15[3];
      v47 = v15[2];
      v48 = v30;
      sub_1C095DFEC();
      sub_1C0521E78(&v56, v43);
      UsoEntitySpan.hash(into:)(v44);
      sub_1C095E03C();
      v31 = -1 << *(v6 + 32);
      result = sub_1C095DBDC();
      *(v6 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
      v32 = (*(v6 + 48) + 192 * result);
      v33 = v59;
      v35 = v56;
      v34 = v57;
      v32[2] = v58;
      v32[3] = v33;
      *v32 = v35;
      v32[1] = v34;
      v36 = v63;
      v38 = v60;
      v37 = v61;
      v32[6] = v62;
      v32[7] = v36;
      v32[4] = v38;
      v32[5] = v37;
      v39 = v64;
      v40 = v65;
      v41 = v66[0];
      *(v32 + 169) = *(v66 + 9);
      v32[9] = v40;
      v32[10] = v41;
      v32[8] = v39;
    }

    v13 = v7;
    while (1)
    {
      v7 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v7 >= i)
      {

        v2 = v42;
        goto LABEL_18;
      }

      v14 = *(v3 + 56 + 8 * v7);
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v10 = (v14 - 1) & v14;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v2 = v6;
  }

  return result;
}

uint64_t _s12SiriOntology5GraphC2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v4 = *(a1 + 24);
  swift_beginAccess();
  v5 = *(a2 + 24);

  v6 = sub_1C0569898(v4, v5);

  if (v6)
  {
    swift_beginAccess();
    v7 = *(a1 + 16);
    swift_beginAccess();
    v8 = *(a2 + 16);

    v9 = sub_1C055A3AC(v7, v8);
  }

  else
  {
    v9 = 0;
  }

  return v9 & 1;
}

unint64_t sub_1C07A7794()
{
  result = qword_1EBE1FA10[0];
  if (!qword_1EBE1FA10[0])
  {
    type metadata accessor for Graph();
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EBE1FA10);
  }

  return result;
}

uint64_t sub_1C07A79C4@<X0>(void *__src@<X0>, uint64_t a2@<X8>)
{
  memcpy(__dst, __src, 0x20AuLL);
  result = sub_1C057363C(__dst);
  if (result != 6)
  {
    goto LABEL_12;
  }

  v4 = sub_1C05272F0(__dst);
  v5 = *v4;
  v6 = 4;
  if (*(*v4 + 568))
  {
    v7 = *(v5 + 560);
    v8 = *(*v4 + 568);

    v9 = sub_1C095DD6C();

    v10 = v9 > 3;
    if (v9 <= 3)
    {
      v6 = v9;
    }

    else
    {
      v6 = 4;
    }
  }

  else
  {
    v10 = 1;
  }

  memcpy(v16, (v5 + 16), sizeof(v16));
  memmove(__srca, (v5 + 16), 0x20AuLL);
  result = sub_1C0573598(__srca);
  if (result == 1)
  {
    v11 = 0;
    LOBYTE(v12) = 1;
    if (!v10)
    {
      goto LABEL_14;
    }

LABEL_12:
    *a2 = 0;
    *(a2 + 8) = 1280;
    return result;
  }

  memcpy(v15, __srca, 0x20AuLL);
  result = sub_1C057363C(v15);
  v12 = result != 0;
  if (result)
  {
    v11 = 0;
    if (v10 && result != 0)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v11 = *sub_1C05272F0(v15);
    memcpy(v14, v16, 0x20AuLL);
    result = sub_1C05735AC(v14, &v13);
    if (v10 && v12)
    {
      goto LABEL_12;
    }
  }

LABEL_14:
  *a2 = v11;
  *(a2 + 8) = v12;
  *(a2 + 9) = v6;
  return result;
}

uint64_t AddressIntentNode.intentNode.getter@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  v2 = v1[1];
  v4 = v1[2];
  v5 = v1[3];
  *a1 = v3;
  a1[1] = v2;
  a1[2] = v4;
  a1[3] = v5;
}

__n128 AddressIntentNode.init(intentNode:ontologyNode:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *(a1 + 24);
  *a3 = *a1;
  result = *(a1 + 8);
  *(a3 + 8) = result;
  *(a3 + 24) = v3;
  *(a3 + 32) = a2;
  return result;
}

uint64_t static AddressIntentNode.from(intentNode:ontologyNode:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  *a3 = *a1;
  a3[1] = v3;
  a3[2] = v4;
  a3[3] = v5;
  a3[4] = a2;
}

uint64_t AddressIntentNode.radius.getter()
{
  v5 = *v0;
  v1 = *(v0 + 3);
  v6 = *(v0 + 1);
  v7 = v1;
  sub_1C07A7C70(&v3);
  if ((v4 & 0xFF00) == 0x500)
  {
    return 0;
  }

  else
  {
    return v3;
  }
}

void sub_1C07A7C70(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  __src[33] = *v1;
  __src[34] = v3;
  v11 = *(v1 + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17A50, &unk_1C09787D0);
  inited = swift_initStaticObject();
  sub_1C05B009C(inited, __src);
  v5 = *(&__src[0] + 1);
  if (*(&__src[0] + 1))
  {
    v6 = *&__src[0];
    v7 = *(*(&__src[1] + 1) + 16);
    if (v7)
    {
      memcpy(v8, (*(&__src[1] + 1) + 1344 * v7 - 1312), 0x20AuLL);
      sub_1C05AFF4C(v8, __src);
      sub_1C05AFFBC(v6, v5);
      memcpy(__dst, v8, 0x20AuLL);
      if (sub_1C0573598(__dst) != 1)
      {
        memcpy(__src, __dst, 0x20AuLL);
        sub_1C07A79C4(__src, a1);
        sub_1C05B000C(v8);
        return;
      }
    }

    else
    {
      sub_1C05AFFBC(*&__src[0], *(&__src[0] + 1));
    }
  }

  *a1 = 0;
  *(a1 + 8) = 1280;
}

void AddressIntentNode.radiusUnit.getter(_BYTE *a1@<X8>)
{
  v7 = *v1;
  v3 = *(v1 + 3);
  v8 = *(v1 + 1);
  v9 = v3;
  sub_1C07A7C70(v5);
  v4 = HIBYTE(v6);
  if ((v6 & 0xFF00) == 0x500)
  {
    LOBYTE(v4) = 4;
  }

  *a1 = v4;
}

void *AddressIntentNode.centroid.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1[1];
  v16 = *v1;
  v17 = v3;
  v18 = *(v1 + 4);
  if (qword_1EBE15610 != -1)
  {
    swift_once();
  }

  result = sub_1C05B06D0(&v13, qword_1EBE18108);
  v5 = v14;
  if (v14)
  {
    v12 = v15;
    v6 = v13;
    type metadata accessor for AddressOntologyNode.CentroidNode();
    v7 = swift_allocObject();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16EA0, &qword_1C0973000);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_1C096E0D0;
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16E40, &qword_1C0970530);
    inited = swift_initStaticObject();
    *(v8 + 56) = v9;
    *(v8 + 64) = &protocol witness table for TerminalOntologyNode<A>;
    *(v8 + 32) = inited;
    result = swift_initStaticObject();
    v11 = v12;
    *(v8 + 96) = v9;
    *(v8 + 104) = &protocol witness table for TerminalOntologyNode<A>;
    *(v8 + 72) = result;
    *(v7 + 16) = 0x64696F72746E6563;
    *(v7 + 24) = 0xE800000000000000;
    *(v7 + 32) = 0;
    *(v7 + 40) = v8;
  }

  else
  {
    v6 = 0;
    v7 = 0;
    v11 = 0uLL;
  }

  *a1 = v6;
  *(a1 + 8) = v5;
  *(a1 + 16) = v11;
  *(a1 + 32) = v7;
  return result;
}

double AddressIntentNode.place.getter@<D0>(uint64_t a1@<X8>)
{
  v3 = v1[1];
  v14 = *v1;
  v15 = v3;
  v16 = *(v1 + 4);
  if (qword_1EBE15618 != -1)
  {
    swift_once();
  }

  sub_1C05B06D0(&v11, qword_1EBE18110);
  if (v12)
  {
    v10 = v12;
    v4 = v11;
    v5 = v13;
    type metadata accessor for AddressOntologyNode.PlaceNode();
    v6 = swift_allocObject();
    if (qword_1EBE158C8 != -1)
    {
      v9 = v6;
      swift_once();
      v6 = v9;
    }

    v7 = qword_1EBE1FAB0;
    *(v6 + 16) = 0x6563616C70;
    *(v6 + 24) = 0xE500000000000000;
    *(v6 + 32) = 0;
    *(v6 + 40) = v7;
    *a1 = v4;
    *(a1 + 8) = v10;
    *(a1 + 24) = v5;
    *(a1 + 32) = v6;
  }

  else
  {
    *(a1 + 32) = 0;
    result = 0.0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
  }

  return result;
}

uint64_t AddressIntentNode.landmark.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1[1];
  v12 = *v1;
  v13 = v3;
  v14 = *(v1 + 4);
  if (qword_1EBE15620 != -1)
  {
    swift_once();
  }

  sub_1C05B06D0(&v9, qword_1EBE18118);
  v4 = v10;
  if (v10)
  {
    v8 = v11;
    v5 = v9;
    type metadata accessor for AddressOntologyNode.LandmarkNode();
    swift_allocObject();
    result = _s12SiriOntology07AddressB4NodeC08LandmarkD0C4name13multicardinalAESS_Sbtcfc_0(0x6B72616D646E616CLL, 0xE800000000000000);
    v7 = v8;
  }

  else
  {
    v5 = 0;
    result = 0;
    v7 = 0uLL;
  }

  *a1 = v5;
  *(a1 + 8) = v4;
  *(a1 + 16) = v7;
  *(a1 + 32) = result;
  return result;
}

double AddressIntentNode.streetAddress.getter@<D0>(uint64_t a1@<X8>)
{
  v3 = v1[1];
  v14 = *v1;
  v15 = v3;
  v16 = *(v1 + 4);
  if (qword_1EBE15628 != -1)
  {
    swift_once();
  }

  sub_1C05B06D0(&v11, qword_1EBE18120);
  if (v12)
  {
    v10 = v12;
    v4 = v11;
    v5 = v13;
    type metadata accessor for AddressOntologyNode.StreetAddressNode();
    v6 = swift_allocObject();
    if (qword_1EBE15668 != -1)
    {
      v9 = v6;
      swift_once();
      v6 = v9;
    }

    v7 = qword_1EBE19150;
    strcpy((v6 + 16), "streetAddress");
    *(v6 + 30) = -4864;
    *(v6 + 32) = 0;
    *(v6 + 40) = v7;
    *a1 = v4;
    *(a1 + 8) = v10;
    *(a1 + 24) = v5;
    *(a1 + 32) = v6;
  }

  else
  {
    *(a1 + 32) = 0;
    result = 0.0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
  }

  return result;
}

uint64_t sub_1C07A83E0(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  v8 = *v4;
  v9 = v4[1];
  v10 = *(v4 + 4);
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  inited = swift_initStaticObject();
  return a4(inited);
}

void AddressIntentNode.addressReference.getter(char *a1@<X8>)
{
  v3 = *(v1 + 16);
  __src[33] = *v1;
  __src[34] = v3;
  v16 = *(v1 + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17A30, &qword_1C099BCD0);
  inited = swift_initStaticObject();
  sub_1C05B00EC(inited, __src);
  v5 = *(&__src[0] + 1);
  if (*(&__src[0] + 1))
  {
    v6 = *&__src[0];
    v7 = *(*(&__src[1] + 1) + 16);
    if (v7)
    {
      memcpy(__dst, (*(&__src[1] + 1) + 1344 * v7 - 1312), 0x20AuLL);
      sub_1C05AFF4C(__dst, v13);
      sub_1C05AFFBC(v6, v5);
      memcpy(__src, __dst, 0x20AuLL);
      if (sub_1C0573598(__src) != 1)
      {
        memcpy(v13, __src, 0x20AuLL);
        if (sub_1C057363C(v13) == 8)
        {
          v8 = sub_1C05272F0(v13);
          v9 = *(v8 + 16);
          v10 = *(v8 + 24);
          v11 = sub_1C095DD6C();
          if (v11 == 1)
          {
            v12 = 1;
            goto LABEL_13;
          }

          if (!v11)
          {
            v12 = 0;
LABEL_13:
            *a1 = v12;
            sub_1C05B000C(__dst);
            return;
          }
        }

        sub_1C05B000C(__dst);
      }
    }

    else
    {
      sub_1C05AFFBC(*&__src[0], *(&__src[0] + 1));
    }
  }

  *a1 = 2;
}

uint64_t AddressOntologyNode.PlaceNode.__allocating_init(name:multicardinal:)(uint64_t a1, uint64_t a2, char a3)
{
  v6 = swift_allocObject();
  if (qword_1EBE158C8 != -1)
  {
    v10 = v6;
    swift_once();
    v6 = v10;
  }

  v7 = qword_1EBE1FAB0;
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  *(v6 + 32) = a3 & 1;
  *(v6 + 40) = v7;
  v8 = v6;

  return v8;
}

uint64_t static AddressOntologyNode.PlaceNode.worldPlaceNameNode.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16E40, &qword_1C0970530);

  return swift_initStaticObject();
}

uint64_t static AddressOntologyNode.PlaceNode.domainObjectPlaceNameNode.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16E40, &qword_1C0970530);

  return swift_initStaticObject();
}

uint64_t static AddressOntologyNode.PlaceNode.neighborhoodPlaceNameNode.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16E40, &qword_1C0970530);

  return swift_initStaticObject();
}

uint64_t sub_1C07A875C()
{
  if (qword_1EBE15650 != -1)
  {
    swift_once();
  }

  v0 = qword_1EBE182A0;
  type metadata accessor for NonTerminalOntologyNode();
  v1 = swift_allocObject();
  *(v1 + 16) = 0x6C506E6F73726570;
  *(v1 + 24) = 0xEB00000000656361;
  *(v1 + 32) = 0;
  *(v1 + 40) = v0;
  qword_1EBE1FAA8 = v1;
}

uint64_t static AddressOntologyNode.PlaceNode.personPlaceNode.getter()
{
  if (qword_1EBE158C0 != -1)
  {
    swift_once();
  }
}

uint64_t sub_1C07A8864()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16EA0, &qword_1C0973000);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1C0971200;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16E40, &qword_1C0970530);
  inited = swift_initStaticObject();
  *(v0 + 56) = v1;
  *(v0 + 64) = &protocol witness table for TerminalOntologyNode<A>;
  *(v0 + 32) = inited;
  v3 = swift_initStaticObject();
  *(v0 + 96) = v1;
  *(v0 + 104) = &protocol witness table for TerminalOntologyNode<A>;
  *(v0 + 72) = v3;
  v4 = swift_initStaticObject();
  *(v0 + 136) = v1;
  *(v0 + 144) = &protocol witness table for TerminalOntologyNode<A>;
  *(v0 + 112) = v4;
  if (qword_1EBE158C0 != -1)
  {
    swift_once();
  }

  v5 = qword_1EBE1FAA8;
  *(v0 + 176) = type metadata accessor for NonTerminalOntologyNode();
  *(v0 + 184) = &protocol witness table for NonTerminalOntologyNode;
  *(v0 + 152) = v5;
  qword_1EBE1FAB0 = v0;
}

uint64_t static AddressOntologyNode.PlaceNode.childNodes.getter()
{
  if (qword_1EBE158C8 != -1)
  {
    swift_once();
  }
}

uint64_t AddressOntologyNode.PlaceNode.init(name:multicardinal:)(uint64_t a1, uint64_t a2, char a3)
{
  if (qword_1EBE158C8 != -1)
  {
    v6 = a1;
    v7 = a2;
    v8 = a3;
    swift_once();
    a1 = v6;
    a2 = v7;
    a3 = v8;
  }

  v4 = qword_1EBE1FAB0;
  *(v3 + 16) = a1;
  *(v3 + 24) = a2;
  *(v3 + 32) = a3 & 1;
  *(v3 + 40) = v4;

  return v3;
}

uint64_t AddressOntologyNode.PlaceNode.deinit()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return v0;
}

uint64_t AddressOntologyNode.PlaceNode.__deallocating_deinit()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return swift_deallocClassInstance();
}

uint64_t DomainOntologyNode.__allocating_init(name:childNodes:isInEventTree:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  result = swift_allocObject();
  *(result + 48) = a4;
  *(result + 16) = a1;
  *(result + 24) = a2;
  *(result + 32) = 0;
  *(result + 40) = a3;
  return result;
}

uint64_t DomainOntologyNode.init(name:childNodes:isInEventTree:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *(v4 + 48) = a4;
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  *(v4 + 32) = 0;
  *(v4 + 40) = a3;
  return v4;
}

uint64_t DomainOntologyNode.deinit()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return v0;
}

uint64_t DomainOntologyNode.__deallocating_deinit()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return swift_deallocClassInstance();
}

uint64_t (*sub_1C07A8CC0(uint64_t **a1, uint64_t a2, uint64_t a3))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x28uLL);
  }

  *a1 = v6;
  v6[4] = sub_1C07D9934(v6, a2, a3);
  return sub_1C07FE094;
}

uint64_t (*sub_1C07A8D48(uint64_t **a1, uint64_t a2, uint64_t a3))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x28uLL);
  }

  *a1 = v6;
  v6[4] = sub_1C07D99E0(v6, a2, a3);
  return sub_1C07A8DD0;
}

void sub_1C07A8DD4(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

uint64_t sub_1C07A8E20(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  swift_beginAccess();
  v7 = *(v3 + 56);
  if (!*(v7 + 16))
  {
    goto LABEL_12;
  }

  v8 = *(v3 + 56);

  v9 = sub_1C0516A8C(a1, a2);
  if ((v10 & 1) == 0)
  {
    goto LABEL_11;
  }

  v11 = *(*(v7 + 56) + 8 * v9);

  if (!(v11 >> 62))
  {
    if (*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

  result = sub_1C095DCDC();
  if (!result)
  {
LABEL_11:

LABEL_12:
    v13 = 0;
    goto LABEL_13;
  }

LABEL_5:
  if ((v11 & 0xC000000000000001) != 0)
  {
    v13 = MEMORY[0x1C68DDAD0](0, v11);
    goto LABEL_8;
  }

  if (*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v13 = *(v11 + 32);

LABEL_8:

LABEL_13:
    v14 = a3(v13);

    return v14;
  }

  __break(1u);
  return result;
}

uint64_t sub_1C07A8F50(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  swift_beginAccess();
  v7 = *(v3 + 56);
  if (!*(v7 + 16))
  {
    goto LABEL_12;
  }

  v8 = *(v3 + 56);

  v9 = sub_1C0516A8C(a1, a2);
  if ((v10 & 1) == 0)
  {
    goto LABEL_11;
  }

  v11 = *(*(v7 + 56) + 8 * v9);

  if (!(v11 >> 62))
  {
    if (*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

  result = sub_1C095DCDC();
  if (!result)
  {
LABEL_11:

LABEL_12:
    v13 = 0;
    goto LABEL_13;
  }

LABEL_5:
  if ((v11 & 0xC000000000000001) != 0)
  {
    v13 = MEMORY[0x1C68DDAD0](0, v11);
    goto LABEL_8;
  }

  if (*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v13 = *(v11 + 32);

LABEL_8:

LABEL_13:
    v14 = a3(v13);

    return v14;
  }

  __break(1u);
  return result;
}

uint64_t sub_1C07A9088(uint64_t a1, uint64_t a2, uint64_t **a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (!(*a3)[2] || (sub_1C0516A8C(a1, a2), (v14 & 1) == 0))
  {

    v15 = *a3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v26[0] = *a3;
    *a3 = 0x8000000000000000;
    sub_1C051D194(MEMORY[0x1E69E7CC0], a1, a2, isUniquelyReferenced_nonNull_native);

    *a3 = v26[0];
  }

  type metadata accessor for UsoPrimitiveStringBuilder();
  v17 = swift_allocObject();
  v17[6] = a7;
  v18 = MEMORY[0x1E69E7CC0];
  v17[2] = MEMORY[0x1E69E7CC0];
  v17[3] = v18;
  v17[4] = v18;
  v17[5] = a6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE18000, &qword_1C09753A0);
  v19 = swift_allocObject();
  v19[6] = a5;
  v19[7] = v17;
  v19[2] = v18;
  v19[3] = v18;
  v19[4] = v18;
  v19[5] = a4;

  v21 = sub_1C07A8D48(v26, a1, a2);
  if (*v20)
  {
    v22 = v20;

    MEMORY[0x1C68DD810](v23);
    if (*((*v22 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v22 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v25 = *((*v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_1C095D9AC();
    }

    sub_1C095D9DC();
    (v21)(v26, 0);
  }

  else
  {
    (v21)(v26, 0);
  }
}

uint64_t sub_1C07A9278(uint64_t a1, uint64_t a2, uint64_t **a3, uint64_t a4, uint64_t a5, uint64_t *a6, uint64_t a7, uint64_t *a8, uint64_t *a9)
{
  if (!(*a3)[2] || (sub_1C0516A8C(a1, a2), (v17 & 1) == 0))
  {

    v18 = *a3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v38 = *a3;
    *a3 = 0x8000000000000000;
    sub_1C051D194(MEMORY[0x1E69E7CC0], a1, a2, isUniquelyReferenced_nonNull_native);

    *a3 = v38;
  }

  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(a8, a9);
  if (v20 == MEMORY[0x1E69E6158])
  {
    v38 = a6;
    v39 = a7;

    result = swift_dynamicCast();
    if ((result & 1) == 0)
    {
      return result;
    }

    type metadata accessor for UsoPrimitiveStringBuilder();
    v25 = swift_allocObject();
    v25[6] = v37;
    v26 = MEMORY[0x1E69E7CC0];
    v25[2] = MEMORY[0x1E69E7CC0];
    v25[3] = v26;
    v25[4] = v26;
    v25[5] = v36;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE18000, &qword_1C09753A0);
    v27 = swift_allocObject();
    v27[6] = a5;
    v27[7] = v25;
    v27[2] = v26;
    v27[3] = v26;
    v27[4] = v26;
    v27[5] = a4;

    goto LABEL_10;
  }

  if (v20 != MEMORY[0x1E69E7360])
  {
    type metadata accessor for UsoBuilder();
    result = swift_dynamicCastClass();
    if (!result)
    {
      return result;
    }

    v22 = result;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE18000, &qword_1C09753A0);
    v23 = swift_allocObject();
    v23[6] = a5;
    v23[7] = v22;
    v24 = MEMORY[0x1E69E7CC0];
    v23[2] = MEMORY[0x1E69E7CC0];
    v23[3] = v24;
    v23[4] = v24;
    v23[5] = a4;
    swift_retain_n();
LABEL_10:

    goto LABEL_13;
  }

  v38 = a6;
  v39 = a7;

  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
    return result;
  }

  type metadata accessor for UsoPrimitiveIntegerBuilder();
  v28 = swift_allocObject();
  *(v28 + 48) = 0;
  v29 = MEMORY[0x1E69E7CC0];
  *(v28 + 16) = MEMORY[0x1E69E7CC0];
  *(v28 + 24) = v29;
  *(v28 + 32) = v29;
  *(v28 + 40) = v36;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE18000, &qword_1C09753A0);
  v30 = swift_allocObject();
  v30[6] = a5;
  v30[7] = v28;
  v30[2] = v29;
  v30[3] = v29;
  v30[4] = v29;
  v30[5] = a4;

LABEL_13:
  v32 = sub_1C07A8D48(&v38, a1, a2);
  if (*v31)
  {
    v33 = v31;

    MEMORY[0x1C68DD810](v34);
    if (*((*v33 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v33 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v35 = *((*v33 & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_1C095D9AC();
    }

    sub_1C095D9DC();
    (v32)(&v38, 0);
  }

  else
  {
    (v32)(&v38, 0);
  }
}

uint64_t sub_1C07A95C8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  type metadata accessor for UsoPrimitiveStringBuilder();
  v14 = swift_allocObject();
  v14[6] = a7;
  v15 = MEMORY[0x1E69E7CC0];
  v14[2] = MEMORY[0x1E69E7CC0];
  v14[3] = v15;
  v14[4] = v15;
  v14[5] = a6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE18000, &qword_1C09753A0);
  v16 = swift_allocObject();
  v16[6] = a5;
  v16[7] = v14;
  v16[2] = v15;
  v16[3] = v15;
  v16[4] = v15;
  v16[5] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE174E0, &unk_1C0975370);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_1C0970C90;
  *(v17 + 32) = v16;

  v18 = *a3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v21 = *a3;
  *a3 = 0x8000000000000000;
  sub_1C051D194(v17, a1, a2, isUniquelyReferenced_nonNull_native);

  *a3 = v21;
  return result;
}

uint64_t sub_1C07A9730(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  type metadata accessor for UsoPrimitiveIntegerBuilder();
  v12 = swift_allocObject();
  *(v12 + 48) = 0;
  v13 = MEMORY[0x1E69E7CC0];
  *(v12 + 16) = MEMORY[0x1E69E7CC0];
  *(v12 + 24) = v13;
  *(v12 + 32) = v13;
  *(v12 + 40) = a6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE18000, &qword_1C09753A0);
  v14 = swift_allocObject();
  v14[6] = a5;
  v14[7] = v12;
  v14[2] = v13;
  v14[3] = v13;
  v14[4] = v13;
  v14[5] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE174E0, &unk_1C0975370);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_1C0970C90;
  *(v15 + 32) = v14;

  v16 = *a3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v19 = *a3;
  *a3 = 0x8000000000000000;
  sub_1C051D194(v15, a1, a2, isUniquelyReferenced_nonNull_native);

  *a3 = v19;
  return result;
}

uint64_t sub_1C07A9884(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t *a8, uint64_t *a9)
{
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(a8, a9);
  if (v14 == MEMORY[0x1E69E6158])
  {

    result = swift_dynamicCast();
    if ((result & 1) == 0)
    {
      return result;
    }

    type metadata accessor for UsoPrimitiveStringBuilder();
    v20 = swift_allocObject();
    v20[6] = v29;
    v21 = MEMORY[0x1E69E7CC0];
    v20[2] = MEMORY[0x1E69E7CC0];
    v20[3] = v21;
    v20[4] = v21;
    v20[5] = v28;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE18000, &qword_1C09753A0);
    v22 = swift_allocObject();
    v22[6] = a5;
    v22[7] = v20;
    v22[2] = v21;
    v22[3] = v21;
    v22[4] = v21;
    v22[5] = a4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE174E0, &unk_1C0975370);
    v19 = swift_allocObject();
    *(v19 + 16) = xmmword_1C0970C90;
    *(v19 + 32) = v22;

    goto LABEL_7;
  }

  if (v14 != MEMORY[0x1E69E7360])
  {
    type metadata accessor for UsoBuilder();
    result = swift_dynamicCastClass();
    if (!result)
    {
      return result;
    }

    v16 = result;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE18000, &qword_1C09753A0);
    v17 = swift_allocObject();
    v17[6] = a5;
    v17[7] = v16;
    v18 = MEMORY[0x1E69E7CC0];
    v17[2] = MEMORY[0x1E69E7CC0];
    v17[3] = v18;
    v17[4] = v18;
    v17[5] = a4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE174E0, &unk_1C0975370);
    v19 = swift_allocObject();
    *(v19 + 16) = xmmword_1C0970C90;
    *(v19 + 32) = v17;
    swift_retain_n();
LABEL_7:

    goto LABEL_10;
  }

  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
    return result;
  }

  type metadata accessor for UsoPrimitiveIntegerBuilder();
  v23 = swift_allocObject();
  *(v23 + 48) = 0;
  v24 = MEMORY[0x1E69E7CC0];
  *(v23 + 16) = MEMORY[0x1E69E7CC0];
  *(v23 + 24) = v24;
  *(v23 + 32) = v24;
  *(v23 + 40) = v28;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE18000, &qword_1C09753A0);
  v25 = swift_allocObject();
  v25[6] = a5;
  v25[7] = v23;
  v25[2] = v24;
  v25[3] = v24;
  v25[4] = v24;
  v25[5] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE174E0, &unk_1C0975370);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_1C0970C90;
  *(v19 + 32) = v25;

LABEL_10:

  v26 = *a3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v30 = *a3;
  *a3 = 0x8000000000000000;
  sub_1C051D194(v19, a1, a2, isUniquelyReferenced_nonNull_native);

  *a3 = v30;
  return result;
}

uint64_t sub_1C07A9BAC(unsigned __int8 a1)
{
  v2 = v1;
  v3 = 0xD00000000000001DLL;
  if (a1 > 3u)
  {
    if (a1 <= 5u)
    {
      if (a1 != 4)
      {
        v4 = "common_SpatialPosition_Center";
        v3 = 0xD000000000000021;
        goto LABEL_22;
      }

      v5 = "common_SpatialPosition_Center";
    }

    else
    {
      if (a1 == 6)
      {
        v4 = "sition_BottomLeft";
        v3 = 0xD00000000000001ELL;
        goto LABEL_22;
      }

      if (a1 == 7)
      {
        v4 = "common_SpatialPosition_TopLeft";
        v3 = 0xD00000000000001FLL;
        goto LABEL_22;
      }

      v5 = "common_SpatialPosition_Bottom";
    }

    v4 = (v5 - 32);
    goto LABEL_22;
  }

  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = "common_SpatialPosition_Left";
      v3 = 0xD000000000000022;
    }

    else
    {
      v4 = "sition_BottomRight";
      v3 = 0xD00000000000001ALL;
    }
  }

  else
  {
    if (a1)
    {
      v3 = 0xD00000000000001BLL;
    }

    else
    {
      v3 = 0xD00000000000001CLL;
    }

    if (a1)
    {
      v4 = "common_SpatialPosition_Right";
    }

    else
    {
      v4 = "common_SearchQualifier_Another";
    }
  }

LABEL_22:
  v6 = v4 | 0x8000000000000000;
  type metadata accessor for UsoDefinedValueBuilder();
  v7 = swift_allocObject();
  v7[6] = v6;
  v8 = MEMORY[0x1E69E7CC0];
  v7[2] = MEMORY[0x1E69E7CC0];
  v7[3] = v8;
  v7[4] = v8;
  v7[5] = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE174E0, &unk_1C0975370);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1C0970C90;
  *(v9 + 32) = v7;
  swift_beginAccess();

  v10 = *(v2 + 56);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v13 = *(v2 + 56);
  *(v2 + 56) = 0x8000000000000000;
  sub_1C051D194(v9, 0x5664656E69666564, 0xEC00000065756C61, isUniquelyReferenced_nonNull_native);
  *(v2 + 56) = v13;
  swift_endAccess();
}

uint64_t sub_1C07A9DA8(char a1)
{
  v2 = v1;
  v3 = "common_SummaryMode_Abridged";
  if (a1)
  {
    v3 = "common_SummaryMode_Entirety";
  }

  v4 = (v3 - 32) | 0x8000000000000000;
  type metadata accessor for UsoDefinedValueBuilder();
  v5 = swift_allocObject();
  v5[6] = v4;
  v6 = MEMORY[0x1E69E7CC0];
  v5[2] = MEMORY[0x1E69E7CC0];
  v5[3] = v6;
  v5[4] = v6;
  v5[5] = 0xD00000000000001BLL;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE174E0, &unk_1C0975370);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1C0970C90;
  *(v7 + 32) = v5;
  swift_beginAccess();

  v8 = *(v2 + 56);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v2 + 56);
  *(v2 + 56) = 0x8000000000000000;
  sub_1C051D194(v7, 0x5664656E69666564, 0xEC00000065756C61, isUniquelyReferenced_nonNull_native);
  *(v2 + 56) = v11;
  swift_endAccess();
}

uint64_t sub_1C07A9ED8(unsigned __int8 a1)
{
  v2 = v1;
  v3 = 0xD000000000000025;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v3 = 0xD00000000000001CLL;
      v4 = "ger_AppleIntelligence";
    }

    else
    {
      v4 = "common_ScheduleType_Scheduled";
    }
  }

  else if (a1 == 2)
  {
    v4 = "common_VoiceTrigger_JustSiri";
    v3 = 0xD00000000000001BLL;
  }

  else if (a1 == 3)
  {
    v4 = "common_VoiceTrigger_HeySiri";
  }

  else
  {
    v4 = "ger_OtherSiriTriggers";
    v3 = 0xD000000000000027;
  }

  v5 = v4 | 0x8000000000000000;
  type metadata accessor for UsoDefinedValueBuilder();
  v6 = swift_allocObject();
  v6[6] = v5;
  v7 = MEMORY[0x1E69E7CC0];
  v6[2] = MEMORY[0x1E69E7CC0];
  v6[3] = v7;
  v6[4] = v7;
  v6[5] = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE174E0, &unk_1C0975370);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1C0970C90;
  *(v8 + 32) = v6;
  swift_beginAccess();

  v9 = *(v2 + 56);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *(v2 + 56);
  *(v2 + 56) = 0x8000000000000000;
  sub_1C051D194(v8, 0x5664656E69666564, 0xEC00000065756C61, isUniquelyReferenced_nonNull_native);
  *(v2 + 56) = v12;
  swift_endAccess();
}

uint64_t sub_1C07AA068(unsigned __int8 a1)
{
  v2 = v1;
  v3 = 0xD000000000000018;
  if (a1 > 2u)
  {
    if (a1 == 3)
    {
      v4 = "common_ReactionType_Love";
      v3 = 0xD00000000000001FLL;
    }

    else if (a1 == 4)
    {
      v4 = "common_ReactionType_Exclamation";
    }

    else
    {
      v4 = "common_ReactionType_Like";
      v3 = 0xD00000000000001CLL;
    }
  }

  else if (a1)
  {
    if (a1 == 1)
    {
      v4 = "common_ReactionType_Dislike";
      v3 = 0xD000000000000019;
    }

    else
    {
      v4 = "common_ReactionType_Laugh";
    }
  }

  else
  {
    v3 = 0xD00000000000001BLL;
    v4 = "common_MessageState_Received";
  }

  v5 = v4 | 0x8000000000000000;
  type metadata accessor for UsoDefinedValueBuilder();
  v6 = swift_allocObject();
  v6[6] = v5;
  v7 = MEMORY[0x1E69E7CC0];
  v6[2] = MEMORY[0x1E69E7CC0];
  v6[3] = v7;
  v6[4] = v7;
  v6[5] = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE174E0, &unk_1C0975370);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1C0970C90;
  *(v8 + 32) = v6;
  swift_beginAccess();

  v9 = *(v2 + 56);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *(v2 + 56);
  *(v2 + 56) = 0x8000000000000000;
  sub_1C051D194(v8, 0x5664656E69666564, 0xEC00000065756C61, isUniquelyReferenced_nonNull_native);
  *(v2 + 56) = v12;
  swift_endAccess();
}

uint64_t sub_1C07AA210(unsigned __int8 a1)
{
  v2 = v1;
  v3 = 0xD000000000000017;
  v4 = "common_SummaryMode_Entirety";
  v5 = "al_ExerciseRingClosed";
  v6 = 0xD000000000000021;
  if (a1 != 2)
  {
    v6 = 0xD00000000000001DLL;
    v5 = "al_MoveRingClosed";
  }

  if (a1)
  {
    v3 = 0xD000000000000025;
    v4 = "common_WorkoutGoal_Open";
  }

  if (a1 <= 1u)
  {
    v7 = v3;
  }

  else
  {
    v7 = v6;
  }

  if (a1 > 1u)
  {
    v4 = v5;
  }

  v8 = v4 | 0x8000000000000000;
  type metadata accessor for UsoDefinedValueBuilder();
  v9 = swift_allocObject();
  v9[6] = v8;
  v10 = MEMORY[0x1E69E7CC0];
  v9[2] = MEMORY[0x1E69E7CC0];
  v9[3] = v10;
  v9[4] = v10;
  v9[5] = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE174E0, &unk_1C0975370);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1C0970C90;
  *(v11 + 32) = v9;
  swift_beginAccess();

  v12 = *(v2 + 56);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v15 = *(v2 + 56);
  *(v2 + 56) = 0x8000000000000000;
  sub_1C051D194(v11, 0x5664656E69666564, 0xEC00000065756C61, isUniquelyReferenced_nonNull_native);
  *(v2 + 56) = v15;
  swift_endAccess();
}

uint64_t sub_1C07AA388(unsigned __int8 a1)
{
  v2 = v1;
  v3 = 0xD00000000000001ALL;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v3 = 0xD00000000000001BLL;
      v5 = "common_PhoneCallMode_Phone";
    }

    else
    {
      v5 = "Type_MusicPlaylist";
    }
  }

  else if (a1 == 2)
  {
    v5 = "common_PhoneCallMode_Shared";
    v3 = 0xD00000000000001BLL;
  }

  else
  {
    if (a1 == 3)
    {
      v4 = "common_PhoneCallMode_Audio";
    }

    else
    {
      v4 = "common_PhoneCallMode_Video";
    }

    v5 = (v4 - 32);
  }

  v6 = v5 | 0x8000000000000000;
  type metadata accessor for UsoDefinedValueBuilder();
  v7 = swift_allocObject();
  v7[6] = v6;
  v8 = MEMORY[0x1E69E7CC0];
  v7[2] = MEMORY[0x1E69E7CC0];
  v7[3] = v8;
  v7[4] = v8;
  v7[5] = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE174E0, &unk_1C0975370);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1C0970C90;
  *(v9 + 32) = v7;
  swift_beginAccess();

  v10 = *(v2 + 56);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v13 = *(v2 + 56);
  *(v2 + 56) = 0x8000000000000000;
  sub_1C051D194(v9, 0x5664656E69666564, 0xEC00000065756C61, isUniquelyReferenced_nonNull_native);
  *(v2 + 56) = v13;
  swift_endAccess();
}

uint64_t sub_1C07AA50C(unsigned __int8 a1)
{
  v2 = v1;
  v3 = 0xD000000000000037;
  if (a1 > 2u)
  {
    if (a1 == 3)
    {
      v4 = "ntactAttributesRingtone";
    }

    else if (a1 == 4)
    {
      v4 = "ntactAttributesHomePage";
      v3 = 0xD000000000000036;
    }

    else
    {
      v4 = "ntactAttributesPresent";
      v3 = 0xD000000000000033;
    }
  }

  else if (a1)
  {
    if (a1 == 1)
    {
      v4 = "ntactAttributesFuture";
    }

    else
    {
      v4 = "ntactAttributesTextTone";
    }
  }

  else
  {
    v3 = 0xD000000000000035;
    v4 = "kAttribute_EarningsPerShare";
  }

  v5 = v4 | 0x8000000000000000;
  type metadata accessor for UsoDefinedValueBuilder();
  v6 = swift_allocObject();
  v6[6] = v5;
  v7 = MEMORY[0x1E69E7CC0];
  v6[2] = MEMORY[0x1E69E7CC0];
  v6[3] = v7;
  v6[4] = v7;
  v6[5] = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE174E0, &unk_1C0975370);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1C0970C90;
  *(v8 + 32) = v6;
  swift_beginAccess();

  v9 = *(v2 + 56);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *(v2 + 56);
  *(v2 + 56) = 0x8000000000000000;
  sub_1C051D194(v8, 0x5664656E69666564, 0xEC00000065756C61, isUniquelyReferenced_nonNull_native);
  *(v2 + 56) = v12;
  swift_endAccess();
}