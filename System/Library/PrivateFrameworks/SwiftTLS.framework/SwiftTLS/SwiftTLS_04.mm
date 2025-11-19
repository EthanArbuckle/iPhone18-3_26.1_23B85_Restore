void sub_26C0F8638(unsigned __int16 *a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v402 = *MEMORY[0x277D85DE8];
  v353 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047A890, &qword_26C14A5C0);
  v8 = *(*(v353 - 8) + 64);
  MEMORY[0x28223BE20](v353);
  v10 = &v322 - v9;
  v11 = type metadata accessor for RawEPSK(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v359 = (&v322 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = type metadata accessor for ImportedPSK(0);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v14 - 8);
  v357 = &v322 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v356 = &v322 - v18;
  v361 = type metadata accessor for PSK(0);
  v19 = *(*(v361 - 8) + 64);
  v20 = MEMORY[0x28223BE20](v361);
  v360 = &v322 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v358 = &v322 - v22;
  v23 = type metadata accessor for GeneralEPSK(0);
  v363 = *(v23 - 8);
  v24 = *(v363 + 64);
  v25 = MEMORY[0x28223BE20](v23);
  v27 = (&v322 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  v28 = MEMORY[0x28223BE20](v25);
  v354 = &v322 - v29;
  v30 = MEMORY[0x28223BE20](v28);
  v362 = &v322 - v31;
  v32 = *a1;
  v33 = *(a1 + 1);
  v34 = v3[13];
  v399 = v3[12];
  v400 = v34;
  v401[0] = v3[14];
  *(v401 + 9) = *(v3 + 233);
  v35 = v3[9];
  v395 = v3[8];
  v396 = v35;
  v36 = v3[11];
  v397 = v3[10];
  v398 = v36;
  v37 = v3[5];
  v391 = v3[4];
  v392 = v37;
  v38 = v3[7];
  v393 = v3[6];
  v394 = v38;
  v39 = v3[1];
  v387 = *v3;
  v388 = v39;
  v40 = v3[3];
  v389 = v3[2];
  v390 = v40;
  v367 = *(&v392 + 1);
  if (!*(&v392 + 1))
  {
    goto LABEL_349;
  }

  v347 = v33;
  v348 = v32;
  v351 = v30;
  v349 = v10;
  v41 = v393;
  if (qword_28047A750 != -1)
  {
    goto LABEL_374;
  }

LABEL_3:
  v42 = sub_26C148A9C();
  v364 = __swift_project_value_buffer(v42, qword_28047ABB0);
  v43 = sub_26C148A7C();
  v44 = sub_26C148FFC();
  if (os_log_type_enabled(v43, v44))
  {
    v45 = swift_slowAlloc();
    *v45 = 0;
    _os_log_impl(&dword_26C0B5000, v43, v44, "client offered psks, attempting to negotiate", v45, 2u);
    MEMORY[0x26D69C3A0](v45, -1, -1);
  }

  if (!v390)
  {
    v265 = sub_26C148A7C();
    v266 = sub_26C14900C();
    if (os_log_type_enabled(v265, v266))
    {
      v267 = swift_slowAlloc();
      *v267 = 0;
      _os_log_impl(&dword_26C0B5000, v265, v266, "client sent psk extension without psk_key_exchange_modes", v267, 2u);
      MEMORY[0x26D69C3A0](v267, -1, -1);
    }

    v268 = xmmword_26C14CC20;
    goto LABEL_339;
  }

  if (!sub_26C10C258(1u, v390))
  {
    v269 = sub_26C148A7C();
    v270 = sub_26C148FFC();
    if (os_log_type_enabled(v269, v270))
    {
      v271 = swift_slowAlloc();
      *v271 = 0;
      _os_log_impl(&dword_26C0B5000, v269, v270, "server ignoring offererd pre shared keys because it did not offer psk_dhe mode", v271, 2u);
      MEMORY[0x26D69C3A0](v271, -1, -1);
    }

    goto LABEL_349;
  }

  v46 = *(v367 + 16);
  if (v46 != *(v41 + 16))
  {
    v272 = sub_26C148A7C();
    v273 = sub_26C14900C();
    if (os_log_type_enabled(v272, v273))
    {
      v274 = swift_slowAlloc();
      *v274 = 0;
      _os_log_impl(&dword_26C0B5000, v272, v273, "offered psk identities doesn't match number of binders", v274, 2u);
      MEMORY[0x26D69C3A0](v274, -1, -1);
    }

    v268 = xmmword_26C14CC10;
LABEL_339:
    *a2 = v268;
    *(a2 + 16) = 2;
    v369 = v268;
    LOBYTE(v370) = 2;
    sub_26C0BBAF8();
    swift_willThrowTypedImpl();
    goto LABEL_350;
  }

  v335 = a3;
  v336 = v41;
  v47 = 0;
  if (v46)
  {
    v48 = (v336 + 48);
    v49 = v46;
    do
    {
      v50 = *(v48 - 2);
      v51 = *(v48 - 1);
      v52 = v51 >> 62;
      if ((v51 >> 62) > 1)
      {
        if (v52 == 2)
        {
          v54 = *(v50 + 24);
        }

        else
        {
          v54 = 0;
        }
      }

      else
      {
        v53 = BYTE6(v51);
        v54 = v50 >> 32;
        if (!v52)
        {
          v54 = v53;
        }
      }

      v55 = __OFSUB__(v54, *v48);
      v56 = v54 - *v48;
      if (v55)
      {
        __break(1u);
LABEL_369:
        __break(1u);
LABEL_370:
        sub_26C0BB9B0(v333, v337);
        sub_26C0BB9B0(v352, v41);
        goto LABEL_358;
      }

      v55 = __OFADD__(v47, v56);
      v47 += v56;
      if (v55)
      {
        goto LABEL_369;
      }

      v48 += 3;
      --v49;
    }

    while (v49);
  }

  v332 = v47;
  v339 = v27;
  if (!v46)
  {
    v342 = MEMORY[0x277D84F90];
    v343 = MEMORY[0x277D84F90];
    goto LABEL_341;
  }

  v57 = 0;
  v355 = v46;
  v330 = v46 - 1;
  v58 = v336 + 48;
  v59 = v367 + 56;
  v326 = xmmword_26C14A540;
  v342 = MEMORY[0x277D84F90];
  v343 = MEMORY[0x277D84F90];
  v328 = v367 + 56;
  v329 = v336 + 48;
LABEL_22:
  v60 = v58 + 24 * v57;
  v27 = (v59 + 32 * v57);
  v61 = v57;
  while (1)
  {
    if (v61 >= *(v367 + 16))
    {
      __break(1u);
LABEL_372:
      sub_26C0BB9B0(v331, v333);
      v321 = v4;
      goto LABEL_377;
    }

    *&v365 = v60;
    v366 = v61;
    v44 = *(v27 - 3);
    a2 = *(v27 - 2);
    v4 = *(v27 - 1);
    v62 = *v27;
    sub_26C0BBAA4(v44, a2);
    if (v62)
    {
      v63 = sub_26C148A7C();
      v64 = sub_26C148FFC();
      if (os_log_type_enabled(v63, v64))
      {
        v65 = swift_slowAlloc();
        *v65 = 0;
        _os_log_impl(&dword_26C0B5000, v63, v64, "psk has non 0 obfuscated ticket age. still attempting to treat as an epsk.", v65, 2u);
        MEMORY[0x26D69C3A0](v65, -1, -1);
      }
    }

    if (v400)
    {
      v73 = *(&v399 + 1);
      v74 = v360;
      v341 = *(*(&v399 + 1) + 16);
      if (!v341)
      {
        v242 = a2 >> 62;
        goto LABEL_310;
      }

      v346 = v4;
      v75 = 0;
      v340 = *(&v399 + 1) + ((*(v363 + 80) + 32) & ~*(v363 + 80));
      v344 = a2 >> 62;
      v331 = v44 >> 32;
      v334 = BYTE6(a2);
      v27 = v354;
      v338 = *(&v399 + 1);
      while (1)
      {
        if (v75 >= *(v73 + 16))
        {
          __break(1u);
LABEL_379:
          __break(1u);
LABEL_380:
          __break(1u);
LABEL_381:
          __break(1u);
LABEL_382:
          __break(1u);
LABEL_383:
          __break(1u);
LABEL_384:
          __break(1u);
LABEL_385:
          __break(1u);
LABEL_386:
          __break(1u);
LABEL_387:
          __break(1u);
LABEL_388:
          __break(1u);
LABEL_389:
          __break(1u);
LABEL_390:
          __break(1u);
LABEL_391:
          __break(1u);
LABEL_392:
          __break(1u);
LABEL_393:
          __break(1u);
LABEL_394:
          __break(1u);
LABEL_395:
          __break(1u);
LABEL_396:
          __break(1u);
          goto LABEL_397;
        }

        sub_26C0FEE38(v340 + *(v363 + 72) * v75, v27, type metadata accessor for GeneralEPSK);
        sub_26C0FEE38(v27, v74, type metadata accessor for PSK);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v76 = v359;
          sub_26C0FEF5C(v74, v359, type metadata accessor for RawEPSK);
          v77 = v75;
          v78 = v27;
          v80 = *v76;
          v79 = v76[1];
          v81 = v76[2];
          sub_26C0BBAA4(v44, a2);
          sub_26C0BBAA4(v80, v79);
          v82 = v76;
          v83 = v79;
          v84 = v80;
          v27 = v78;
          v75 = v77;
          sub_26C0FEEA0(v82, type metadata accessor for RawEPSK);
        }

        else
        {
          v85 = v357;
          sub_26C0FEF5C(v74, v357, type metadata accessor for ImportedPSK);
          v86 = *(v85 + 16);
          *v383 = *v85;
          *&v383[16] = v86;
          v88 = *v85;
          v87 = *(v85 + 16);
          *&v383[32] = *(v85 + 32);
          v384 = *(v85 + 48);
          v379 = v88;
          v380 = v87;
          v381 = *(v85 + 32);
          v382 = *(v85 + 48);
          sub_26C0BBAA4(v44, a2);
          sub_26C0C4BB4(v383, &v369);
          v84 = sub_26C0C2C6C();
          v90 = v89;
          v369 = v379;
          v370 = v380;
          v371 = v381;
          v372 = v382;
          sub_26C0C4BEC(&v369);
          v91 = v85;
          v83 = v90;
          sub_26C0FEEA0(v91, type metadata accessor for ImportedPSK);
          v92 = v90 >> 62;
          if ((v90 >> 62) > 1)
          {
            v81 = 0;
            if (v92 == 2)
            {
              v81 = *(v84 + 16);
            }
          }

          else if (v92)
          {
            v81 = v84;
          }

          else
          {
            v81 = 0;
          }
        }

        if (v344 > 1)
        {
          if (v344 == 2)
          {
            v93 = *(v44 + 24);
          }

          else
          {
            v93 = 0;
          }
        }

        else
        {
          v93 = v334;
          if (v344)
          {
            v93 = v331;
          }
        }

        if (v93 < v346)
        {
          goto LABEL_379;
        }

        *&v352 = sub_26C14889C();
        v41 = v94;
        v95 = v83 >> 62;
        if ((v83 >> 62) > 1)
        {
          if (v95 == 2)
          {
            v96 = *(v84 + 24);
          }

          else
          {
            v96 = 0;
          }
        }

        else if (v95)
        {
          v96 = v84 >> 32;
        }

        else
        {
          v96 = BYTE6(v83);
        }

        if (v96 < v81)
        {
          goto LABEL_380;
        }

        v345 = v84;
        v350 = v83;
        v97 = sub_26C14889C();
        v99 = v41 >> 62;
        v100 = v98 >> 62;
        if (v41 >> 62 == 3)
        {
          break;
        }

        v102 = v352;
        if (v99 <= 1)
        {
          if (!v99)
          {
            v101 = BYTE6(v41);
            if (v100 <= 1)
            {
              goto LABEL_89;
            }

            goto LABEL_94;
          }

          LODWORD(v101) = DWORD1(v352) - v352;
          if (__OFSUB__(DWORD1(v352), v352))
          {
            goto LABEL_389;
          }

          v101 = v101;
          goto LABEL_88;
        }

        if (v99 == 2)
        {
          v104 = *(v352 + 16);
          v103 = *(v352 + 24);
          v55 = __OFSUB__(v103, v104);
          v101 = v103 - v104;
          if (v55)
          {
            goto LABEL_388;
          }

          goto LABEL_88;
        }

        v101 = 0;
        if (v100 <= 1)
        {
LABEL_89:
          if (v100)
          {
            LODWORD(v105) = HIDWORD(v97) - v97;
            if (__OFSUB__(HIDWORD(v97), v97))
            {
              goto LABEL_384;
            }

            v105 = v105;
          }

          else
          {
            v105 = BYTE6(v98);
          }

          goto LABEL_96;
        }

LABEL_94:
        if (v100 != 2)
        {
          if (!v101)
          {
            goto LABEL_355;
          }

LABEL_45:
          sub_26C0BB9B0(v97, v98);
          sub_26C0BB9B0(v102, v41);
          sub_26C0BB9B0(v345, v350);
          sub_26C0BB9B0(v44, a2);
          goto LABEL_46;
        }

        v107 = *(v97 + 16);
        v106 = *(v97 + 24);
        v55 = __OFSUB__(v106, v107);
        v105 = v106 - v107;
        if (v55)
        {
          goto LABEL_385;
        }

LABEL_96:
        if (v101 != v105)
        {
          goto LABEL_45;
        }

        if (v101 < 1)
        {
LABEL_355:
          sub_26C0BB9B0(v97, v98);
          v305 = v102;
          v306 = v41;
LABEL_357:
          sub_26C0BB9B0(v305, v306);
          v4 = v350;
LABEL_358:
          sub_26C0BB9B0(v345, v4);
          sub_26C0BB9B0(v44, a2);
LABEL_359:

          sub_26C0FEE38(v27, v335, type metadata accessor for GeneralEPSK);
          v307 = v366;
          if (v366 < 0x10000)
          {
            if (v366 < *(v336 + 16))
            {
              v308 = *(v365 - 16);
              v309 = *(v365 - 8);
              v310 = *v365;
              sub_26C0BBAA4(v308, v309);
              sub_26C0BB9B0(v44, a2);
              sub_26C0FEEA0(v27, type metadata accessor for GeneralEPSK);
              v311 = type metadata accessor for ServerHandshakeState.ClientHelloVerifier.negotiatedEPSKResult(0);
              v312 = v335;
              *(v335 + v311[5]) = v307;
              v313 = (v312 + v311[6]);
              *v313 = v308;
              v313[1] = v309;
              v313[2] = v310;
              goto LABEL_367;
            }

LABEL_403:
            __break(1u);
LABEL_404:
            __break(1u);
LABEL_405:
            __break(1u);
LABEL_406:
            __break(1u);
LABEL_407:
            __break(1u);
LABEL_408:
            __break(1u);
LABEL_409:
            __break(1u);
LABEL_410:
            __break(1u);
LABEL_411:
            __break(1u);
LABEL_412:
            __break(1u);
LABEL_413:
            __break(1u);
LABEL_414:
            __break(1u);
LABEL_415:
            __break(1u);
LABEL_416:
            __break(1u);
LABEL_417:
            __break(1u);
LABEL_418:
            __break(1u);
LABEL_419:
            __break(1u);
          }

LABEL_402:
          __break(1u);
          goto LABEL_403;
        }

        if (v99 > 1)
        {
          if (v99 != 2)
          {
            *(&v369 + 6) = 0;
            *&v369 = 0;
            v109 = v97;
            v108 = v98;
LABEL_110:
            v117 = v368;
            sub_26C0BE04C(&v369, v109, v108, v383);
            v368 = v117;
            if (v117)
            {
              goto LABEL_438;
            }

            sub_26C0BB9B0(v102, v41);
            sub_26C0BB9B0(v345, v350);
            sub_26C0BB9B0(v44, a2);
            sub_26C0BB9B0(v109, v108);
            if (v383[0])
            {
              goto LABEL_359;
            }

            goto LABEL_46;
          }

          v333 = v97;
          v337 = v98;
          v110 = *(v102 + 16);
          v111 = sub_26C1487BC();
          if (v111)
          {
            v112 = v111;
            v113 = sub_26C1487EC();
            if (__OFSUB__(v110, v113))
            {
              goto LABEL_398;
            }

            v327 = v110 - v113 + v112;
          }

          else
          {
            v327 = 0;
          }

          sub_26C1487DC();
          if (v100 == 2)
          {
            v130 = *(v333 + 16);
            v325 = *(v333 + 24);
            v131 = sub_26C1487BC();
            if (v131)
            {
              v132 = v131;
              v133 = sub_26C1487EC();
              if (__OFSUB__(v130, v133))
              {
                goto LABEL_413;
              }

              v134 = v130;
              v135 = (v130 - v133 + v132);
            }

            else
            {
              v134 = v130;
              v135 = 0;
            }

            v143 = &v325[-v134];
            if (__OFSUB__(v325, v134))
            {
              goto LABEL_407;
            }

            v144 = sub_26C1487DC();
            if (v144 >= v143)
            {
              v145 = v143;
            }

            else
            {
              v145 = v144;
            }

            v27 = v354;
            if (!v327)
            {
              goto LABEL_425;
            }

            v146 = v350;
            if (!v135)
            {
              goto LABEL_424;
            }

            if (v327 == v135)
            {
              sub_26C0BB9B0(v333, v337);
              sub_26C0BB9B0(v352, v41);
              v4 = v146;
              goto LABEL_358;
            }

            v147 = memcmp(v327, v135, v145);
            sub_26C0BB9B0(v333, v337);
            sub_26C0BB9B0(v352, v41);
            v148 = v345;
            v149 = v146;
            goto LABEL_172;
          }

          v118 = v337;
          v119 = v333;
          if (v100 == 1)
          {
            v120 = v333;
            v121 = (v333 >> 32) - v333;
            if (v333 >> 32 < v333)
            {
              goto LABEL_406;
            }

            v122 = sub_26C1487BC();
            if (v122)
            {
              v123 = v122;
              v124 = sub_26C1487EC();
              if (__OFSUB__(v120, v124))
              {
                goto LABEL_414;
              }

              v325 = (v120 - v124 + v123);
            }

            else
            {
              v325 = 0;
            }

            v4 = v350;
            v150 = v327;
            v151 = sub_26C1487DC();
            if (v151 >= v121)
            {
              v152 = v121;
            }

            else
            {
              v152 = v151;
            }

            if (!v150)
            {
              goto LABEL_422;
            }

            v27 = v354;
            v153 = v325;
            if (!v325)
            {
              goto LABEL_421;
            }

            goto LABEL_169;
          }

          v27 = v354;
          *&v369 = v333;
          DWORD2(v369) = v337;
          WORD6(v369) = WORD2(v337);
          v136 = v350;
          v137 = v327;
          if (!v327)
          {
            goto LABEL_423;
          }
        }

        else
        {
          if (!v99)
          {
            *&v369 = v102;
            WORD4(v369) = v41;
            BYTE10(v369) = BYTE2(v41);
            BYTE11(v369) = BYTE3(v41);
            BYTE12(v369) = BYTE4(v41);
            BYTE13(v369) = BYTE5(v41);
            v108 = v98;
            v109 = v97;
            goto LABEL_110;
          }

          v333 = v97;
          v337 = v98;
          if (v102 > v102 >> 32)
          {
            goto LABEL_392;
          }

          v114 = sub_26C1487BC();
          if (v114)
          {
            v115 = v114;
            v116 = sub_26C1487EC();
            if (__OFSUB__(v102, v116))
            {
              goto LABEL_399;
            }

            v327 = v102 - v116 + v115;
          }

          else
          {
            v327 = 0;
          }

          sub_26C1487DC();
          if (v100 == 2)
          {
            v138 = *(v333 + 16);
            v325 = *(v333 + 24);
            v139 = sub_26C1487BC();
            if (v139)
            {
              v140 = v139;
              v141 = sub_26C1487EC();
              if (__OFSUB__(v138, v141))
              {
                goto LABEL_415;
              }

              v324 = (v138 - v141 + v140);
            }

            else
            {
              v324 = 0;
            }

            v154 = &v325[-v138];
            if (__OFSUB__(v325, v138))
            {
              goto LABEL_409;
            }

            v155 = sub_26C1487DC();
            if (v155 >= v154)
            {
              v156 = v154;
            }

            else
            {
              v156 = v155;
            }

            v27 = v354;
            v157 = v327;
            if (!v327)
            {
              goto LABEL_429;
            }

            v4 = v350;
            v153 = v324;
            if (!v324)
            {
              goto LABEL_428;
            }

            if (v327 == v324)
            {
              goto LABEL_370;
            }

            v158 = v156;
            goto LABEL_171;
          }

          v118 = v337;
          v119 = v333;
          if (v100 == 1)
          {
            v125 = v333;
            v126 = (v333 >> 32) - v333;
            if (v333 >> 32 < v333)
            {
              goto LABEL_408;
            }

            v127 = sub_26C1487BC();
            if (v127)
            {
              v128 = v127;
              v129 = sub_26C1487EC();
              if (__OFSUB__(v125, v129))
              {
                goto LABEL_416;
              }

              v325 = (v125 - v129 + v128);
            }

            else
            {
              v325 = 0;
            }

            v4 = v350;
            v150 = v327;
            v159 = sub_26C1487DC();
            if (v159 >= v126)
            {
              v152 = v126;
            }

            else
            {
              v152 = v159;
            }

            if (!v150)
            {
              goto LABEL_427;
            }

            v27 = v354;
            v153 = v325;
            if (!v325)
            {
              goto LABEL_426;
            }

LABEL_169:
            if (v150 == v153)
            {
              goto LABEL_370;
            }

            v158 = v152;
            v157 = v150;
LABEL_171:
            v147 = memcmp(v157, v153, v158);
            sub_26C0BB9B0(v333, v337);
            sub_26C0BB9B0(v352, v41);
            v148 = v345;
            v149 = v4;
LABEL_172:
            sub_26C0BB9B0(v148, v149);
            sub_26C0BB9B0(v44, a2);
            if (!v147)
            {
              goto LABEL_359;
            }

            goto LABEL_46;
          }

          v27 = v354;
          *&v369 = v333;
          DWORD2(v369) = v337;
          WORD6(v369) = WORD2(v337);
          v136 = v350;
          v137 = v327;
          if (!v327)
          {
            __break(1u);
LABEL_421:
            __break(1u);
LABEL_422:
            __break(1u);
LABEL_423:
            __break(1u);
LABEL_424:
            __break(1u);
LABEL_425:
            __break(1u);
LABEL_426:
            __break(1u);
LABEL_427:
            __break(1u);
LABEL_428:
            __break(1u);
LABEL_429:
            __break(1u);
LABEL_430:
            __break(1u);
LABEL_431:
            __break(1u);
LABEL_432:
            __break(1u);
LABEL_433:
            __break(1u);
LABEL_434:
            __break(1u);
LABEL_435:
            __break(1u);
LABEL_436:
            __break(1u);
LABEL_437:
            __break(1u);
LABEL_438:

            __break(1u);
            return;
          }
        }

        v142 = v118;
        LODWORD(v327) = memcmp(v137, &v369, BYTE6(v118));
        sub_26C0BB9B0(v119, v142);
        sub_26C0BB9B0(v352, v41);
        sub_26C0BB9B0(v345, v136);
        sub_26C0BB9B0(v44, a2);
        if (!v327)
        {
          goto LABEL_359;
        }

LABEL_46:
        ++v75;
        sub_26C0FEEA0(v27, type metadata accessor for GeneralEPSK);
        v74 = v360;
        v73 = v338;
        if (v341 == v75)
        {
          v4 = v346;
          LODWORD(v242) = v344;
LABEL_310:
          if (v242 > 1)
          {
            if (v242 == 2)
            {
              v253 = *(v44 + 24);
              goto LABEL_316;
            }

            v253 = 0;
          }

          else
          {
            if (!v242)
            {
              v253 = BYTE6(a2);
              goto LABEL_318;
            }

            v253 = v44 >> 32;
LABEL_316:
            sub_26C0BBAA4(v44, a2);
          }

LABEL_318:
          if (v253 < v4)
          {
            goto LABEL_394;
          }

          v254 = sub_26C14889C();
          v256 = v255;
          sub_26C0BB9B0(v44, a2);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v343 = sub_26C0CDDF0(0, *(v343 + 2) + 1, 1, v343);
          }

          v258 = *(v343 + 2);
          v257 = *(v343 + 3);
          if (v258 >= v257 >> 1)
          {
            v343 = sub_26C0CDDF0((v257 > 1), v258 + 1, 1, v343);
          }

          v259 = v343;
          *(v343 + 2) = v258 + 1;
          v260 = &v259[32 * v258];
          *(v260 + 4) = v254;
          *(v260 + 5) = v256;
          *(v260 + 3) = v326;
          if (v366 >= 0x10000)
          {
            goto LABEL_395;
          }

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v27 = v339;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v342 = sub_26C0CDCF4(0, *(v342 + 2) + 1, 1, v342);
          }

          v251 = *(v342 + 2);
          v262 = *(v342 + 3);
          v252 = v251 + 1;
          if (v251 >= v262 >> 1)
          {
            v342 = sub_26C0CDCF4((v262 > 1), v251 + 1, 1, v342);
          }

LABEL_328:
          sub_26C0BB9B0(v44, a2);
          v263 = v342;
          *(v342 + 2) = v252;
          v264 = v366;
          *&v263[2 * v251 + 32] = v366;
          v57 = v264 + 1;
          v58 = v329;
          v59 = v328;
          if (v330 == v264)
          {
LABEL_341:
            v275 = swift_allocBox();
            v277 = v276;
            (*(v363 + 56))(v276, 1, 1, v351);
            v278 = swift_allocObject();
            *(v278 + 16) = 0;
            *(v278 + 18) = 1;
            v279 = *(&v400 + 1);
            if (*(&v400 + 1))
            {
              v280 = swift_allocObject();
              v281 = v400;
              *(v280 + 208) = v399;
              *(v280 + 224) = v281;
              *(v280 + 240) = v401[0];
              *(v280 + 249) = *(v401 + 9);
              v282 = v396;
              *(v280 + 144) = v395;
              *(v280 + 160) = v282;
              v283 = v398;
              *(v280 + 176) = v397;
              *(v280 + 192) = v283;
              v284 = v392;
              *(v280 + 80) = v391;
              *(v280 + 96) = v284;
              v285 = v394;
              *(v280 + 112) = v393;
              *(v280 + 128) = v285;
              v286 = v388;
              *(v280 + 16) = v387;
              *(v280 + 32) = v286;
              v287 = v390;
              *(v280 + 48) = v389;
              *(v280 + 64) = v287;
              v288 = v342;
              *(v280 + 272) = v278;
              *(v280 + 280) = v288;
              *(v280 + 288) = v275;
              *(v280 + 296) = v348;
              *(v280 + 304) = v347;
              sub_26C0CEB4C(v279);
              sub_26C0FEDE4(&v387, &v369);

              v279(v343, sub_26C0FF098, v280);

              v27 = v339;

              sub_26C0CEB1C(v279);
            }

            else
            {
            }

            swift_beginAccess();
            v289 = v349;
            sub_26C0CF314(v277, v349, &qword_28047A890, &qword_26C14A5C0);
            if ((*(v363 + 48))(v289, 1, v351) == 1)
            {
              sub_26C0CF5C4(v289, &qword_28047A890, &qword_26C14A5C0);
              goto LABEL_348;
            }

            sub_26C0FEF5C(v289, v27, type metadata accessor for GeneralEPSK);
            swift_beginAccess();
            if (*(v278 + 18) == 1)
            {
              sub_26C0FEEA0(v27, type metadata accessor for GeneralEPSK);
LABEL_348:

              a3 = v335;
LABEL_349:
              v290 = type metadata accessor for ServerHandshakeState.ClientHelloVerifier.negotiatedEPSKResult(0);
              (*(*(v290 - 8) + 56))(a3, 1, 1, v290);
              goto LABEL_350;
            }

            v292 = *(v278 + 16);
            v293 = sub_26C148A7C();
            v294 = sub_26C148FFC();
            if (os_log_type_enabled(v293, v294))
            {
              v295 = swift_slowAlloc();
              *v295 = 0;
              _os_log_impl(&dword_26C0B5000, v293, v294, "epsk selected", v295, 2u);
              MEMORY[0x26D69C3A0](v295, -1, -1);
            }

            v296 = v27;
            v297 = v27;
            v298 = v335;
            sub_26C0FEE38(v296, v335, type metadata accessor for GeneralEPSK);
            if (*(v336 + 16) > v292)
            {
              v299 = (v336 + 24 * v292);
              v300 = v299[4];
              v301 = v299[5];
              v302 = v299[6];
              sub_26C0BBAA4(v300, v301);
              sub_26C0FEEA0(v297, type metadata accessor for GeneralEPSK);
              v303 = type metadata accessor for ServerHandshakeState.ClientHelloVerifier.negotiatedEPSKResult(0);
              *(v298 + v303[5]) = v292;
              v304 = (v298 + v303[6]);
              *v304 = v300;
              v304[1] = v301;
              v304[2] = v302;
              *(v298 + v303[7]) = v332;
              (*(*(v303 - 1) + 56))(v298, 0, 1, v303);

              goto LABEL_350;
            }

LABEL_397:
            __break(1u);
LABEL_398:
            __break(1u);
LABEL_399:
            __break(1u);
LABEL_400:
            __break(1u);
LABEL_401:
            __break(1u);
            goto LABEL_402;
          }

          goto LABEL_22;
        }
      }

      v101 = 0;
      v102 = v352;
      if (!v352 && v41 == 0xC000000000000000 && v98 >> 62 == 3)
      {
        v101 = 0;
        if (!v97 && v98 == 0xC000000000000000)
        {
          sub_26C0BB9B0(0, 0xC000000000000000);
          v305 = 0;
          v306 = 0xC000000000000000;
          goto LABEL_357;
        }
      }

LABEL_88:
      if (v100 <= 1)
      {
        goto LABEL_89;
      }

      goto LABEL_94;
    }

    a3 = a2 >> 62;
    if ((a2 >> 62) > 1)
    {
      if (a3 == 2)
      {
        v66 = *(v44 + 24);
        goto LABEL_36;
      }

      if (v4 <= 0)
      {
        goto LABEL_39;
      }

LABEL_373:
      __break(1u);
LABEL_374:
      swift_once();
      goto LABEL_3;
    }

    if (!a3)
    {
      if (BYTE6(a2) < v4)
      {
        goto LABEL_373;
      }

      goto LABEL_39;
    }

    v66 = v44 >> 32;
LABEL_36:
    sub_26C0BBAA4(v44, a2);
    if (v66 < v4)
    {
      goto LABEL_373;
    }

LABEL_39:
    v67 = sub_26C14889C();
    v69 = v68;
    sub_26C0BB9B0(v44, a2);
    sub_26C0BBAA4(v67, v69);
    v70 = v368;
    sub_26C0C3C20(v67, v69, v385, &v369);
    if (!v70)
    {
      break;
    }

    v368 = 0;
    v71 = v366 + 1;
    sub_26C0BB9B0(v44, a2);
    v72 = v69;
    v61 = v71;
    sub_26C0BB9B0(v67, v72);
    sub_26C0CF030(v385[0], v385[1], v386);
    v60 = v365 + 24;
    v27 += 8;
    if (v355 == v71)
    {
      v27 = v339;
      goto LABEL_341;
    }
  }

  v368 = 0;
  v346 = v4;
  sub_26C0BB9B0(v67, v69);
  v384 = v372;
  *&v383[16] = v370;
  *&v383[32] = v371;
  *v383 = v369;
  v160 = *(&v399 + 1);
  v341 = *(*(&v399 + 1) + 16);
  if (!v341)
  {
    v27 = v339;
LABEL_299:
    v243 = *&v383[24];
    *&v377[0] = *v383;
    *(v377 + 8) = *&v383[8];
    v244 = *&v383[32];
    v373 = *&v383[24];
    *&v374 = *&v383[40];
    sub_26C0BBAA4(*v383, *&v383[8]);
    sub_26C0BB37C(v243, v244);
    SwiftOfferedEPSK.init(external_identity:context:)(v377, &v373, &v379);
    v352 = v380;
    v365 = v379;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v343 = sub_26C0CDDF0(0, *(v343 + 2) + 1, 1, v343);
    }

    v246 = *(v343 + 2);
    v245 = *(v343 + 3);
    if (v246 >= v245 >> 1)
    {
      v343 = sub_26C0CDDF0((v245 > 1), v246 + 1, 1, v343);
    }

    v247 = v343;
    *(v343 + 2) = v246 + 1;
    v248 = &v247[32 * v246];
    v249 = v352;
    *(v248 + 2) = v365;
    *(v248 + 3) = v249;
    if (v366 < 0x10000)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v342 = sub_26C0CDCF4(0, *(v342 + 2) + 1, 1, v342);
      }

      v251 = *(v342 + 2);
      v250 = *(v342 + 3);
      v252 = v251 + 1;
      if (v251 >= v250 >> 1)
      {
        v342 = sub_26C0CDCF4((v250 > 1), v251 + 1, 1, v342);
      }

      sub_26C0C4BEC(v383);
      goto LABEL_328;
    }

    goto LABEL_396;
  }

  v161 = 0;
  v340 = *(&v399 + 1) + ((*(v363 + 80) + 32) & ~*(v363 + 80));
  v327 = v44 >> 32;
  v334 = BYTE6(a2);
  v27 = v339;
  v337 = *(&v399 + 1);
  v338 = v44;
  while (2)
  {
    if (v161 >= *(v160 + 16))
    {
      goto LABEL_381;
    }

    v162 = *(v363 + 72);
    v344 = v161;
    v163 = v340 + v162 * v161;
    v164 = v362;
    sub_26C0FEE38(v163, v362, type metadata accessor for GeneralEPSK);
    v165 = v164;
    v166 = v358;
    sub_26C0FEE38(v165, v358, type metadata accessor for PSK);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v167 = v27;
      v168 = v359;
      sub_26C0FEF5C(v166, v359, type metadata accessor for RawEPSK);
      v169 = v168[1];
      v170 = v168[2];
      v171 = *v168;
      sub_26C0BBAA4(*v168, v169);
      sub_26C0FEEA0(v168, type metadata accessor for RawEPSK);
      v350 = v169;
      v172 = v169 >> 62;
      if ((v169 >> 62) > 1)
      {
        goto LABEL_182;
      }

LABEL_192:
      v173 = v171;
      if (v172)
      {
        v174 = v171 >> 32;
      }

      else
      {
        v174 = BYTE6(v350);
      }
    }

    else
    {
      v175 = v356;
      sub_26C0FEF5C(v166, v356, type metadata accessor for ImportedPSK);
      v176 = *(v175 + 16);
      v377[0] = *v175;
      v377[1] = v176;
      v178 = *v175;
      v177 = *(v175 + 16);
      v377[2] = *(v175 + 32);
      v378 = *(v175 + 48);
      v373 = v178;
      v374 = v177;
      v375 = *(v175 + 32);
      v376 = *(v175 + 48);
      sub_26C0C4BB4(v377, &v379);
      v179 = sub_26C0C2C6C();
      v181 = v180;
      v379 = v373;
      v380 = v374;
      v381 = v375;
      v382 = v376;
      sub_26C0C4BEC(&v379);
      sub_26C0FEEA0(v175, type metadata accessor for ImportedPSK);
      v350 = v181;
      v172 = v181 >> 62;
      v167 = v27;
      if ((v181 >> 62) > 1)
      {
        v170 = 0;
        if (v172 == 2)
        {
          v170 = *(v179 + 16);
        }
      }

      else if (v172)
      {
        v170 = v179;
      }

      else
      {
        v170 = 0;
      }

      v171 = v179;
      if (v172 <= 1)
      {
        goto LABEL_192;
      }

LABEL_182:
      v173 = v171;
      if (v172 == 2)
      {
        v174 = *(v171 + 24);
      }

      else
      {
        v174 = 0;
      }
    }

    v27 = v167;
    v44 = v338;
    if (v174 < v170)
    {
      goto LABEL_382;
    }

    sub_26C0BBAA4(v338, a2);
    v345 = v173;
    v182 = v350;
    v4 = sub_26C14889C();
    v41 = v183;
    if (a3 > 1)
    {
      v185 = v346;
      if (a3 == 2)
      {
        v184 = *(v44 + 24);
      }

      else
      {
        v184 = 0;
      }
    }

    else
    {
      v184 = v334;
      v185 = v346;
      if (a3)
      {
        v184 = v327;
      }
    }

    if (v184 < v185)
    {
      goto LABEL_383;
    }

    *&v352 = v4;
    v186 = sub_26C14889C();
    v188 = v41 >> 62;
    v189 = v187 >> 62;
    if (v41 >> 62 == 3)
    {
      v190 = 0;
      if (!v352 && v41 == 0xC000000000000000 && v187 >> 62 == 3)
      {
        v190 = 0;
        if (!v186 && v187 == 0xC000000000000000)
        {
          sub_26C0BB9B0(0, 0xC000000000000000);
          v314 = 0;
          v315 = 0xC000000000000000;
LABEL_362:
          sub_26C0BB9B0(v314, v315);
          goto LABEL_363;
        }
      }

LABEL_220:
      if (v189 <= 1)
      {
        goto LABEL_221;
      }

LABEL_226:
      if (v189 == 2)
      {
        v195 = *(v186 + 16);
        v194 = *(v186 + 24);
        v55 = __OFSUB__(v194, v195);
        v193 = v194 - v195;
        if (v55)
        {
          goto LABEL_387;
        }

        goto LABEL_228;
      }

      if (!v190)
      {
        goto LABEL_356;
      }

LABEL_177:
      sub_26C0BB9B0(v186, v187);
      sub_26C0BB9B0(v352, v41);
      sub_26C0BB9B0(v44, a2);
      sub_26C0BB9B0(v345, v182);
LABEL_178:
      v161 = v344 + 1;
      sub_26C0FEEA0(v362, type metadata accessor for GeneralEPSK);
      v160 = v337;
      if (v341 == v161)
      {
        goto LABEL_299;
      }

      continue;
    }

    break;
  }

  if (v188 > 1)
  {
    if (v188 == 2)
    {
      v192 = *(v352 + 16);
      v191 = *(v352 + 24);
      v55 = __OFSUB__(v191, v192);
      v190 = v191 - v192;
      if (v55)
      {
        goto LABEL_391;
      }

      goto LABEL_220;
    }

    v190 = 0;
    if (v189 <= 1)
    {
      goto LABEL_221;
    }

    goto LABEL_226;
  }

  if (v188)
  {
    LODWORD(v190) = DWORD1(v352) - v352;
    if (__OFSUB__(DWORD1(v352), v352))
    {
      goto LABEL_390;
    }

    v190 = v190;
    goto LABEL_220;
  }

  v190 = BYTE6(v41);
  if (v189 > 1)
  {
    goto LABEL_226;
  }

LABEL_221:
  if (v189)
  {
    LODWORD(v193) = HIDWORD(v186) - v186;
    if (__OFSUB__(HIDWORD(v186), v186))
    {
      goto LABEL_386;
    }

    v193 = v193;
  }

  else
  {
    v193 = BYTE6(v187);
  }

LABEL_228:
  if (v190 != v193)
  {
    goto LABEL_177;
  }

  if (v190 < 1)
  {
LABEL_356:
    sub_26C0BB9B0(v186, v187);
    v314 = v352;
    v315 = v41;
    goto LABEL_362;
  }

  if (v188 > 1)
  {
    if (v188 != 2)
    {
      *(&v379 + 6) = 0;
      *&v379 = 0;
      v4 = v186;
      v207 = v187;
      v208 = v368;
      sub_26C0BE04C(&v379, v186, v187, v377);
      v368 = v208;
      if (v208)
      {
        goto LABEL_438;
      }

      sub_26C0BB9B0(v352, v41);
      sub_26C0BB9B0(v44, a2);
      sub_26C0BB9B0(v345, v182);
      sub_26C0BB9B0(v4, v207);
      if (v377[0])
      {
        goto LABEL_364;
      }

      goto LABEL_178;
    }

    v331 = v186;
    v333 = v187;
    v199 = *(v352 + 16);
    v200 = sub_26C1487BC();
    if (v200)
    {
      v201 = v200;
      v202 = sub_26C1487EC();
      if (__OFSUB__(v199, v202))
      {
        goto LABEL_400;
      }

      v324 = (v199 - v202 + v201);
    }

    else
    {
      v324 = 0;
    }

    v27 = v339;
    sub_26C1487DC();
    if (v189 == 2)
    {
      v4 = v331;
      v224 = v333;
      v225 = v368;
      v226 = sub_26C0FEFE0(*(v331 + 16), *(v331 + 24), v333 & 0x3FFFFFFFFFFFFFFFLL, v324);
      v368 = v225;
      sub_26C0BB9B0(v4, v224);
      sub_26C0BB9B0(v352, v41);
      sub_26C0BB9B0(v44, a2);
      sub_26C0BB9B0(v345, v350);
      if (v226)
      {
        goto LABEL_364;
      }

      goto LABEL_178;
    }

    v325 = v41;
    v209 = v333;
    v41 = v331;
    if (v189 != 1)
    {
      v227 = v324;
      *&v379 = v331;
      DWORD2(v379) = v333;
      WORD6(v379) = WORD2(v333);
      v4 = v352;
      if (!v324)
      {
        goto LABEL_433;
      }

LABEL_275:
      v232 = v209;
      v222 = memcmp(v227, &v379, BYTE6(v209));
      sub_26C0BB9B0(v41, v232);
      v223 = v4;
      v233 = v325;
      goto LABEL_295;
    }

    v210 = v331;
    v211 = (v331 >> 32) - v331;
    if (v331 >> 32 < v331)
    {
      goto LABEL_410;
    }

    v212 = sub_26C1487BC();
    v41 = v325;
    if (v212)
    {
      v213 = v212;
      v214 = sub_26C1487EC();
      if (__OFSUB__(v210, v214))
      {
        goto LABEL_418;
      }

      v215 = (v210 - v214 + v213);
    }

    else
    {
      v215 = 0;
    }

    v4 = v352;
    v234 = sub_26C1487DC();
    if (v234 >= v211)
    {
      v235 = v211;
    }

    else
    {
      v235 = v234;
    }

    v236 = v324;
    if (!v324)
    {
      goto LABEL_435;
    }

    v27 = v339;
    if (!v215)
    {
      goto LABEL_434;
    }

    if (v324 == v215)
    {
      goto LABEL_372;
    }

    v237 = v235;
    v238 = v215;
LABEL_293:
    v222 = memcmp(v236, v238, v237);
    sub_26C0BB9B0(v331, v333);
    v223 = v4;
LABEL_294:
    v233 = v41;
LABEL_295:
    sub_26C0BB9B0(v223, v233);
    sub_26C0BB9B0(v44, a2);
    sub_26C0BB9B0(v345, v350);
    if (!v222)
    {
      goto LABEL_364;
    }

    goto LABEL_178;
  }

  if (!v188)
  {
    v4 = v352;
    *&v379 = v352;
    WORD4(v379) = v41;
    BYTE10(v379) = BYTE2(v41);
    BYTE11(v379) = BYTE3(v41);
    BYTE12(v379) = BYTE4(v41);
    BYTE13(v379) = BYTE5(v41);
    v196 = v187;
    v197 = v186;
    v198 = v368;
    sub_26C0BE04C(&v379, v186, v187, v377);
    v368 = v198;
    if (v198)
    {
      goto LABEL_438;
    }

    sub_26C0BB9B0(v4, v41);
    sub_26C0BB9B0(v44, a2);
    sub_26C0BB9B0(v345, v182);
    sub_26C0BB9B0(v197, v196);
    v27 = v339;
    if (v377[0])
    {
      goto LABEL_364;
    }

    goto LABEL_178;
  }

  v331 = v186;
  v333 = v187;
  v203 = v352;
  if (v352 > v352 >> 32)
  {
    goto LABEL_393;
  }

  v204 = sub_26C1487BC();
  if (v204)
  {
    v205 = v204;
    v206 = sub_26C1487EC();
    if (__OFSUB__(v203, v206))
    {
      goto LABEL_401;
    }

    v324 = (v203 - v206 + v205);
  }

  else
  {
    v324 = 0;
  }

  sub_26C1487DC();
  if (v189 == 2)
  {
    v228 = *(v331 + 16);
    v325 = *(v331 + 24);
    v229 = sub_26C1487BC();
    if (v229)
    {
      v230 = v229;
      v231 = sub_26C1487EC();
      if (__OFSUB__(v228, v231))
      {
        goto LABEL_417;
      }

      v323 = (v228 - v231 + v230);
    }

    else
    {
      v323 = 0;
    }

    v239 = &v325[-v228];
    if (__OFSUB__(v325, v228))
    {
      goto LABEL_412;
    }

    v240 = sub_26C1487DC();
    if (v240 >= v239)
    {
      v241 = v239;
    }

    else
    {
      v241 = v240;
    }

    v27 = v339;
    v236 = v324;
    if (!v324)
    {
      goto LABEL_431;
    }

    v4 = v352;
    v238 = v323;
    if (!v323)
    {
      goto LABEL_430;
    }

    if (v324 == v323)
    {
      goto LABEL_372;
    }

    v237 = v241;
    goto LABEL_293;
  }

  v325 = v41;
  v209 = v333;
  v41 = v331;
  if (v189 != 1)
  {
    v27 = v339;
    v227 = v324;
    *&v379 = v331;
    DWORD2(v379) = v333;
    WORD6(v379) = WORD2(v333);
    v4 = v352;
    if (!v324)
    {
      goto LABEL_432;
    }

    goto LABEL_275;
  }

  v216 = v331;
  v217 = (v331 >> 32) - v331;
  if (v331 >> 32 < v331)
  {
    goto LABEL_411;
  }

  v4 = sub_26C1487BC();
  v41 = v325;
  if (v4)
  {
    v218 = sub_26C1487EC();
    if (__OFSUB__(v216, v218))
    {
      goto LABEL_419;
    }

    v4 += v216 - v218;
  }

  v219 = v352;
  v220 = sub_26C1487DC();
  if (v220 >= v217)
  {
    v221 = v217;
  }

  else
  {
    v221 = v220;
  }

  if (!v324)
  {
    goto LABEL_437;
  }

  v27 = v339;
  if (!v4)
  {
    goto LABEL_436;
  }

  if (v324 != v4)
  {
    v222 = memcmp(v324, v4, v221);
    sub_26C0BB9B0(v331, v333);
    v223 = v219;
    goto LABEL_294;
  }

  sub_26C0BB9B0(v331, v333);
  v321 = v219;
LABEL_377:
  sub_26C0BB9B0(v321, v41);
  v182 = v350;
LABEL_363:
  sub_26C0BB9B0(v44, a2);
  sub_26C0BB9B0(v345, v182);
LABEL_364:

  sub_26C0FEE38(v362, v335, type metadata accessor for GeneralEPSK);
  v316 = v366;
  if (v366 >= 0x10000)
  {
    goto LABEL_404;
  }

  if (v366 >= *(v336 + 16))
  {
    goto LABEL_405;
  }

  v317 = *(v365 - 16);
  v318 = *(v365 - 8);
  v319 = *v365;
  sub_26C0BBAA4(v317, v318);
  sub_26C0C4BEC(v383);
  sub_26C0BB9B0(v44, a2);
  sub_26C0FEEA0(v362, type metadata accessor for GeneralEPSK);
  v311 = type metadata accessor for ServerHandshakeState.ClientHelloVerifier.negotiatedEPSKResult(0);
  v312 = v335;
  *(v335 + v311[5]) = v316;
  v320 = (v312 + v311[6]);
  *v320 = v317;
  v320[1] = v318;
  v320[2] = v319;
LABEL_367:
  *(v312 + v311[7]) = v332;
  (*(*(v311 - 1) + 56))(v312, 0, 1, v311);
LABEL_350:
  v291 = *MEMORY[0x277D85DE8];
}

uint64_t sub_26C0FAC90(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, uint64_t a8)
{
  v66 = a8;
  v70 = a7;
  v71 = a4;
  v72 = a5;
  v73 = a1;
  v10 = type metadata accessor for ImportedPSK(0);
  v65 = *(v10 - 8);
  v11 = *(v65 + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v64 = &v61 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = type metadata accessor for RawEPSK(0);
  v13 = *(*(v67 - 8) + 64);
  MEMORY[0x28223BE20](v67);
  v68 = (&v61 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047A890, &qword_26C14A5C0);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v15 - 8);
  v19 = &v61 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v69 = &v61 - v20;
  v21 = type metadata accessor for EPSK(0);
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v21);
  v74 = (&v61 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047ABF8, &unk_26C14CDE0);
  v26 = *(*(v25 - 8) + 64);
  v27 = MEMORY[0x28223BE20](v25 - 8);
  v75 = &v61 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v30 = &v61 - v29;
  v31 = swift_projectBox();
  if (qword_28047A750 != -1)
  {
    swift_once();
  }

  v32 = sub_26C148A9C();
  __swift_project_value_buffer(v32, qword_28047ABB0);
  sub_26C0CF314(a2, v30, &qword_28047ABF8, &unk_26C14CDE0);
  sub_26C0FEDE4(a3, &v77);
  v33 = sub_26C148A7C();
  v34 = sub_26C148FFC();
  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    v63 = v31;
    v36 = v35;
    *v35 = 67109376;
    v37 = (*(v22 + 48))(v30, 1, v21);
    v62 = a2;
    v38 = v19;
    v39 = v37 == 1;
    sub_26C0CF5C4(v30, &qword_28047ABF8, &unk_26C14CDE0);
    v36[1] = v39;
    v19 = v38;
    a2 = v62;
    *(v36 + 4) = 1024;
    *(v36 + 10) = *(a3 + 208) & 1;
    sub_26C0FEDB4(a3);
    _os_log_impl(&dword_26C0B5000, v33, v34, "in server handshake state machine completion block... epsk == nil? %{BOOL}d usingRawEPSKs: %{BOOL}d", v36, 0xEu);
    v40 = v36;
    v31 = v63;
    MEMORY[0x26D69C3A0](v40, -1, -1);
  }

  else
  {
    sub_26C0CF5C4(v30, &qword_28047ABF8, &unk_26C14CDE0);
    sub_26C0FEDB4(a3);
  }

  v41 = v75;
  sub_26C0CF314(a2, v75, &qword_28047ABF8, &unk_26C14CDE0);
  if ((*(v22 + 48))(v41, 1, v21) == 1)
  {
    return sub_26C0CF5C4(v41, &qword_28047ABF8, &unk_26C14CDE0);
  }

  v43 = v21;
  v44 = v74;
  result = sub_26C0FEF5C(v41, v74, type metadata accessor for EPSK);
  if ((v73 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_16;
  }

  if (*(v72 + 16) <= v73)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v45 = *(v72 + 2 * v73 + 32);
  v46 = v71;
  swift_beginAccess();
  *(v46 + 16) = v45;
  *(v46 + 18) = 0;
  if (*(a3 + 208))
  {
    v47 = *v44;
    v48 = v44[1];
    v49 = v44[2];
    v50 = *(v43 + 20);
    v51 = *(v67 + 20);
    v52 = sub_26C148BDC();
    v53 = v68;
    (*(*(v52 - 8) + 16))(v68 + v51, v44 + v50, v52);
    sub_26C0BBAA4(v47, v48);
    sub_26C0FEEA0(v44, type metadata accessor for EPSK);
    *v53 = v47;
    v53[1] = v48;
    v53[2] = v49;
    v54 = v69;
    sub_26C0FEF5C(v53, v69, type metadata accessor for RawEPSK);
    type metadata accessor for PSK(0);
    swift_storeEnumTagMultiPayload();
    v55 = type metadata accessor for GeneralEPSK(0);
    (*(*(v55 - 8) + 56))(v54, 0, 1, v55);
    swift_beginAccess();
    v56 = v54;
    return sub_26C0FF20C(v56, v31, &qword_28047A890, &qword_26C14A5C0);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047A878, &qword_26C14A5A8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26C14A550;
  *(inited + 32) = v70;
  *(inited + 40) = v66;
  v58 = sub_26C0C24AC(inited, &v76);
  result = swift_setDeallocating();
  if (*(v58 + 16))
  {
    v59 = v64;
    sub_26C0FEE38(v58 + ((*(v65 + 80) + 32) & ~*(v65 + 80)), v64, type metadata accessor for ImportedPSK);

    sub_26C0FEEA0(v44, type metadata accessor for EPSK);
    sub_26C0FEF5C(v59, v19, type metadata accessor for ImportedPSK);
    type metadata accessor for PSK(0);
    swift_storeEnumTagMultiPayload();
    v60 = type metadata accessor for GeneralEPSK(0);
    (*(*(v60 - 8) + 56))(v19, 0, 1, v60);
    swift_beginAccess();
    v56 = v19;
    return sub_26C0FF20C(v56, v31, &qword_28047A890, &qword_26C14A5C0);
  }

LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_26C0FB43C(uint64_t a1)
{
  v3 = *(v1 + 24);
  if (v3)
  {
    result = sub_26C10C218(1027, v3);
    if (result)
    {
      return result;
    }

    if (qword_28047A750 != -1)
    {
      swift_once();
    }

    v5 = sub_26C148A9C();
    __swift_project_value_buffer(v5, qword_28047ABB0);
    v6 = sub_26C148A7C();
    v7 = sub_26C14900C();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_26C0B5000, v6, v7, "TLS 1.3 Client Hello missing TLS 1.3 version in supported_versions extension", v8, 2u);
      MEMORY[0x26D69C3A0](v8, -1, -1);
    }

    v9 = xmmword_26C14A8F0;
  }

  else
  {
    if (qword_28047A750 != -1)
    {
      swift_once();
    }

    v10 = sub_26C148A9C();
    __swift_project_value_buffer(v10, qword_28047ABB0);
    v11 = sub_26C148A7C();
    v12 = sub_26C14900C();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_26C0B5000, v11, v12, "Client Hello without supported_versions extension received", v13, 2u);
      MEMORY[0x26D69C3A0](v13, -1, -1);
    }

    v9 = xmmword_26C14CC30;
  }

  *a1 = v9;
  *(a1 + 16) = 2;
  sub_26C0BBAF8();
  return swift_willThrowTypedImpl();
}

uint64_t sub_26C0FB634(uint64_t result)
{
  if (!(*(v1 + 16) | *(v1 + 160)))
  {
    v2 = result;
    if (qword_28047A750 != -1)
    {
      swift_once();
    }

    v3 = sub_26C148A9C();
    __swift_project_value_buffer(v3, qword_28047ABB0);
    v4 = sub_26C148A7C();
    v5 = sub_26C14900C();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_26C0B5000, v4, v5, "client hello missing required supported_groups extension", v6, 2u);
      MEMORY[0x26D69C3A0](v6, -1, -1);
    }

    *v2 = xmmword_26C14CC40;
    *(v2 + 16) = 2;
    sub_26C0BBAF8();
    return swift_willThrowTypedImpl();
  }

  return result;
}

uint64_t sub_26C0FB760(uint64_t a1)
{
  v3 = *(v1 + 40);
  v4 = *(v1 + 184);
  if (v3)
  {
    v5 = *(v3 + 16);
    if (v5)
    {
      v6 = 0;
      v7 = v3 + 32;
      v8 = (v4 + 32);
      v9 = *(v4 + 16);
      do
      {
        v10 = *(v7 + v6++);
        v11 = v9;
        v12 = v8;
        while (v11)
        {
          v13 = *v12++;
          --v11;
          if (v13 == v10)
          {
            return v10;
          }
        }
      }

      while (v6 != v5);
    }

    v2 = a1;
    if (qword_28047A750 == -1)
    {
      goto LABEL_10;
    }
  }

  else
  {
    if (*(v4 + 16))
    {
      return *(v4 + 32);
    }

    __break(1u);
  }

  swift_once();
LABEL_10:
  v14 = sub_26C148A9C();
  __swift_project_value_buffer(v14, qword_28047ABB0);
  v15 = sub_26C148A7C();
  v16 = sub_26C14900C();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&dword_26C0B5000, v15, v16, "client requested unsupported server certificate type", v17, 2u);
    MEMORY[0x26D69C3A0](v17, -1, -1);
  }

  *v2 = xmmword_26C14CC50;
  *(v2 + 16) = 2;
  sub_26C0BBAF8();
  swift_willThrowTypedImpl();
  return 0;
}

uint64_t sub_26C0FB8EC(uint64_t result, uint64_t a2)
{
  if (*(v2 + 16))
  {
    v3 = 0;
  }

  else
  {
    v3 = result == 0;
  }

  if (v3)
  {
    if (qword_28047A750 != -1)
    {
      swift_once();
    }

    v5 = sub_26C148A9C();
    __swift_project_value_buffer(v5, qword_28047ABB0);
    v6 = sub_26C148A7C();
    v7 = sub_26C14900C();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_26C0B5000, v6, v7, "client hello missing required signature_algorithms extension", v8, 2u);
      MEMORY[0x26D69C3A0](v8, -1, -1);
    }

    *a2 = xmmword_26C14CC40;
    *(a2 + 16) = 2;
    sub_26C0BBAF8();
    return swift_willThrowTypedImpl();
  }

  return result;
}

uint64_t sub_26C0FBA1C(uint64_t result)
{
  if (!*(v1 + 160))
  {
    v2 = *(v1 + 8);
    if (v2)
    {
      if (*(v2 + 16))
      {
        return result;
      }

      v3 = result;
      if (qword_28047A750 != -1)
      {
        swift_once();
      }

      v4 = sub_26C148A9C();
      __swift_project_value_buffer(v4, qword_28047ABB0);
      v5 = sub_26C148A7C();
      v6 = sub_26C14900C();
      if (os_log_type_enabled(v5, v6))
      {
        v7 = swift_slowAlloc();
        *v7 = 0;
        _os_log_impl(&dword_26C0B5000, v5, v6, "no client key shares", v7, 2u);
        MEMORY[0x26D69C3A0](v7, -1, -1);
      }

      v8 = xmmword_26C14CC60;
    }

    else
    {
      v3 = result;
      if (qword_28047A750 != -1)
      {
        swift_once();
      }

      v9 = sub_26C148A9C();
      __swift_project_value_buffer(v9, qword_28047ABB0);
      v10 = sub_26C148A7C();
      v11 = sub_26C14900C();
      if (os_log_type_enabled(v10, v11))
      {
        v12 = swift_slowAlloc();
        *v12 = 0;
        _os_log_impl(&dword_26C0B5000, v10, v11, "client hello missing required key_shares extension", v12, 2u);
        MEMORY[0x26D69C3A0](v12, -1, -1);
      }

      v8 = xmmword_26C14CC40;
    }

    *v3 = v8;
    *(v3 + 16) = 2;
    sub_26C0BBAF8();
    return swift_willThrowTypedImpl();
  }

  return result;
}

uint64_t sub_26C0FBC14(uint64_t result)
{
  if (*(v1 + 160))
  {
    v2 = *(v1 + 232) == 0;
  }

  else
  {
    v2 = 0;
  }

  if (v2)
  {
    v3 = result;
    if (qword_28047A750 != -1)
    {
      swift_once();
    }

    v4 = sub_26C148A9C();
    __swift_project_value_buffer(v4, qword_28047ABB0);
    v5 = sub_26C148A7C();
    v6 = sub_26C14900C();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_26C0B5000, v5, v6, "server was not configured with PAKE support", v7, 2u);
      MEMORY[0x26D69C3A0](v7, -1, -1);
    }

    *v3 = xmmword_26C14CC60;
    *(v3 + 16) = 2;
    sub_26C0BBAF8();
    return swift_willThrowTypedImpl();
  }

  return result;
}

uint64_t sub_26C0FBD44(uint64_t a1)
{
  v3 = v1[20];
  if (v3)
  {
    v4 = 0;
    return v4 | ((v3 != 0) << 16);
  }

  v6 = v1[4];
  v7 = v1[22];
  if (v6)
  {
    v8 = *(v6 + 16);
    if (v8)
    {
      v9 = 0;
      v10 = v6 + 32;
      v11 = (v7 + 32);
      v12 = *(v7 + 16);
      do
      {
        v4 = *(v10 + 2 * v9++);
        v13 = v12;
        v14 = v11;
        while (v13)
        {
          v15 = *v14++;
          --v13;
          if (v15 == v4)
          {
            return v4 | ((v3 != 0) << 16);
          }
        }
      }

      while (v9 != v8);
    }

    v2 = a1;
    if (qword_28047A750 == -1)
    {
      goto LABEL_13;
    }
  }

  else
  {
    if (*(v7 + 16))
    {
      v4 = *(v7 + 32);
      return v4 | ((v3 != 0) << 16);
    }

    __break(1u);
  }

  swift_once();
LABEL_13:
  v16 = sub_26C148A9C();
  __swift_project_value_buffer(v16, qword_28047ABB0);
  v17 = sub_26C148A7C();
  v18 = sub_26C14900C();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&dword_26C0B5000, v17, v18, "signature algorithm negotiation failed", v19, 2u);
    MEMORY[0x26D69C3A0](v19, -1, -1);
  }

  *v2 = xmmword_26C14A8E0;
  *(v2 + 16) = 2;
  sub_26C0BBAF8();
  return swift_willThrowTypedImpl();
}

uint64_t sub_26C0FBEE4@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (v2[20])
  {
    *a2 = 0;
    *(a2 + 2) = 1;
  }

  else
  {
    v3 = v2[2];
    if (v3)
    {
      v4 = *(v3 + 16);
      if (v4)
      {
        v5 = 0;
        v6 = v2[21];
        v7 = v3 + 32;
        v8 = (v6 + 32);
        v9 = *(v6 + 16);
        do
        {
          v10 = *(v7 + 2 * v5++);
          v11 = v9;
          v12 = v8;
          while (v11)
          {
            v13 = *v12++;
            --v11;
            if (v13 == v10)
            {
              *a2 = v10;
              *(a2 + 2) = 0;
              return result;
            }
          }
        }

        while (v5 != v4);
      }

      v14 = result;
      if (qword_28047A750 != -1)
      {
        swift_once();
      }

      v15 = sub_26C148A9C();
      __swift_project_value_buffer(v15, qword_28047ABB0);
      v16 = sub_26C148A7C();
      v17 = sub_26C14900C();
      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        *v18 = 0;
        _os_log_impl(&dword_26C0B5000, v16, v17, "key exchange group negotiation failed", v18, 2u);
        MEMORY[0x26D69C3A0](v18, -1, -1);
      }

      *v14 = xmmword_26C14A8E0;
      *(v14 + 16) = 2;
      sub_26C0BBAF8();
      return swift_willThrowTypedImpl();
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

unsigned __int16 *sub_26C0FC07C@<X0>(unsigned __int16 *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *(v3 + 8);
  if (v4)
  {
    v5 = a2;
    v6 = *(v4 + 16);
    if (v6)
    {
      v7 = 0;
      v8 = 0;
      v9 = 0;
      v10 = *result;
      v11 = (v4 + 56);
      v12 = 0xF000000000000000;
      do
      {
        if (*(v11 - 12) == v10)
        {
          v13 = *(v11 - 1);
          v21 = *v11;
          v14 = *(v11 - 2);
          sub_26C0BBAA4(v14, v13);
          result = sub_26C0FEE1C(v7, v8, v12);
          v7 = v10;
          v8 = v14;
          v12 = v13;
          v9 = v21;
        }

        v11 += 4;
        --v6;
      }

      while (v6);
      if (v12 >> 60 != 15)
      {
        *a3 = v7;
        *(a3 + 8) = v8;
        *(a3 + 16) = v12;
        *(a3 + 24) = v9;
        return result;
      }

      v5 = a2;
    }

    else
    {
      v7 = 0;
      v8 = 0;
      v12 = 0xF000000000000000;
    }

    if (qword_28047A750 != -1)
    {
      swift_once();
    }

    v15 = sub_26C148A9C();
    __swift_project_value_buffer(v15, qword_28047ABB0);
    v16 = sub_26C148A7C();
    v17 = sub_26C14900C();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_26C0B5000, v16, v17, "no client key share matching group received", v18, 2u);
      MEMORY[0x26D69C3A0](v18, -1, -1);
    }

    *v5 = xmmword_26C14CC60;
    *(v5 + 16) = 2;
    sub_26C0BBAF8();
    swift_willThrowTypedImpl();
    return sub_26C0FEE1C(v7, v8, v12);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_26C0FC28C(uint64_t a1)
{
  v4 = *(v1 + 48);
  v5 = *(v1 + 248);
  v6 = *(v1 + 16);
  v47 = *v1;
  v48 = v6;
  v49 = *(v1 + 32);
  v50 = v4;
  v51 = *(v1 + 56);
  v7 = *(v1 + 80);
  v52 = *(v1 + 72);
  v53 = v7;
  v54 = *(v1 + 88);
  v55 = *(v1 + 104);
  v56 = *(v1 + 120);
  v8 = *(v1 + 184);
  v9 = *(v1 + 192);
  v59 = *(v1 + 168);
  v58 = *(v1 + 152);
  v57 = *(v1 + 136);
  v60 = v8;
  v61 = v9;
  v10 = *(v1 + 200);
  v11 = *(v1 + 216);
  v64 = *(v1 + 232);
  v63 = v11;
  v62 = v10;
  v65 = v5;
  result = sub_26C0FB43C(&v45);
  if (v2)
  {
    v40 = v46;
    *a1 = v45;
    *(a1 + 16) = v40;
  }

  else
  {
    v13 = *(v1 + 16);
    v47 = *v1;
    v48 = v13;
    v49 = *(v1 + 32);
    v50 = v4;
    v51 = *(v1 + 56);
    v52 = *(v1 + 72);
    v53 = v7;
    v54 = *(v1 + 88);
    v55 = *(v1 + 104);
    v56 = *(v1 + 120);
    v14 = *(v1 + 184);
    v59 = *(v1 + 168);
    v58 = *(v1 + 152);
    v57 = *(v1 + 136);
    v60 = v14;
    v61 = v9;
    v15 = *(v1 + 200);
    v16 = *(v1 + 216);
    v64 = *(v1 + 232);
    v63 = v16;
    v62 = v15;
    v65 = v5;
    sub_26C0FB634(&v45);
    v17 = *(v1 + 16);
    v47 = *v1;
    v48 = v17;
    v49 = *(v1 + 32);
    v50 = v4;
    v51 = *(v1 + 56);
    v52 = *(v1 + 72);
    v53 = v7;
    v54 = *(v1 + 88);
    v55 = *(v1 + 104);
    v56 = *(v1 + 120);
    v18 = *(v1 + 184);
    v59 = *(v1 + 168);
    v58 = *(v1 + 152);
    v57 = *(v1 + 136);
    v60 = v18;
    v61 = v9;
    v19 = *(v1 + 200);
    v20 = *(v1 + 216);
    v64 = *(v1 + 232);
    v63 = v20;
    v62 = v19;
    v65 = v5;
    v21 = sub_26C0FB760(&v45);
    v22 = *(v1 + 16);
    v47 = *v1;
    v48 = v22;
    v49 = *(v1 + 32);
    v50 = v4;
    v51 = *(v1 + 56);
    v52 = *(v1 + 72);
    v53 = v7;
    v54 = *(v1 + 88);
    v55 = *(v1 + 104);
    v56 = *(v1 + 120);
    v23 = *(v1 + 184);
    v59 = *(v1 + 168);
    v58 = *(v1 + 152);
    v57 = *(v1 + 136);
    v60 = v23;
    v61 = v9;
    v24 = *(v1 + 200);
    v25 = *(v1 + 216);
    v64 = *(v1 + 232);
    v63 = v25;
    v62 = v24;
    v65 = v5;
    sub_26C0FB8EC(v21, &v45);
    v26 = *(v1 + 16);
    v47 = *v1;
    v48 = v26;
    v49 = *(v1 + 32);
    v50 = v4;
    v51 = *(v1 + 56);
    v52 = *(v1 + 72);
    v53 = v7;
    v54 = *(v1 + 88);
    v55 = *(v1 + 104);
    v56 = *(v1 + 120);
    v27 = *(v1 + 184);
    v59 = *(v1 + 168);
    v58 = *(v1 + 152);
    v57 = *(v1 + 136);
    v60 = v27;
    v61 = v9;
    v28 = *(v1 + 200);
    v29 = *(v1 + 216);
    v64 = *(v1 + 232);
    v63 = v29;
    v62 = v28;
    v65 = v5;
    sub_26C0FBA1C(&v45);
    if (v4)
    {
      v30 = *(v4 + 16);
      if (v30)
      {
        v31 = 0;
        do
        {
          v32 = *(v4 + 32 + v31++);
          v33 = *(v9 + 16);
          v34 = (v9 + 32);
          do
          {
            if (!v33)
            {
              break;
            }

            v35 = *v34++;
            --v33;
          }

          while (v35 != v32);
        }

        while (v31 != v30);
      }
    }

    v36 = *(v1 + 16);
    v47 = *v1;
    v48 = v36;
    v49 = *(v1 + 32);
    v50 = v4;
    v51 = *(v1 + 56);
    v52 = *(v1 + 72);
    v53 = v7;
    v54 = *(v1 + 88);
    v55 = *(v1 + 104);
    v56 = *(v1 + 120);
    v37 = *(v1 + 184);
    v59 = *(v1 + 168);
    v58 = *(v1 + 152);
    v57 = *(v1 + 136);
    v60 = v37;
    v61 = v9;
    v38 = *(v1 + 200);
    v39 = *(v1 + 216);
    v64 = *(v1 + 232);
    v63 = v39;
    v62 = v38;
    v65 = v5;
    result = sub_26C0FBC14(&v45);
    if ((v5 & 1) != 0 && !v7)
    {
      if (qword_28047A750 != -1)
      {
        swift_once();
      }

      v41 = sub_26C148A9C();
      __swift_project_value_buffer(v41, qword_28047ABB0);
      v42 = sub_26C148A7C();
      v43 = sub_26C14900C();
      if (os_log_type_enabled(v42, v43))
      {
        v44 = swift_slowAlloc();
        *v44 = 0;
        _os_log_impl(&dword_26C0B5000, v42, v43, "no alpn negotiated when required by QUIC", v44, 2u);
        MEMORY[0x26D69C3A0](v44, -1, -1);
      }

      *a1 = xmmword_26C14CC70;
      *(a1 + 16) = 2;
      v47 = xmmword_26C14CC70;
      LOBYTE(v48) = 2;
      sub_26C0BBAF8();
      return swift_willThrowTypedImpl();
    }
  }

  return result;
}

void sub_26C0FC76C(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 80);
  v6 = *(v2 + 248);
  if (qword_28047A750 != -1)
  {
    swift_once();
  }

  v7 = sub_26C148A9C();
  __swift_project_value_buffer(v7, qword_28047ABB0);
  v8 = sub_26C148A7C();
  v9 = sub_26C148FFC();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_26C0B5000, v8, v9, "server selecting ALPN protocol", v10, 2u);
    MEMORY[0x26D69C3A0](v10, -1, -1);
  }

  if (!v5 || !a1)
  {
    if (!v6)
    {
      return;
    }

    v23 = sub_26C148A7C();
    v24 = sub_26C14900C();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      v26 = "quic requires alpn";
      goto LABEL_21;
    }

LABEL_22:

    *a2 = xmmword_26C14CC70;
    *(a2 + 16) = 2;
    sub_26C0BBAF8();
    swift_willThrowTypedImpl();
    return;
  }

  v28 = *(v5 + 16);
  if (!v28)
  {
LABEL_16:
    v23 = sub_26C148A7C();
    v24 = sub_26C14900C();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      v26 = "alpn negotiation failed";
LABEL_21:
      _os_log_impl(&dword_26C0B5000, v23, v24, v26, v25, 2u);
      MEMORY[0x26D69C3A0](v25, -1, -1);
      goto LABEL_22;
    }

    goto LABEL_22;
  }

  v11 = 0;
  v12 = v5 + 32;
  v13 = (a1 + 40);
  v27 = a2;
  while (v11 < *(v5 + 16))
  {
    v14 = (v12 + 16 * v11);
    v15 = *v14;
    v16 = v14[1];
    v17 = v11 + 1;
    v18 = *(a1 + 16) + 1;
    v19 = v13;
    while (--v18)
    {
      v20 = v19 + 2;
      v21 = sub_26C0FCA28(v15, v16, *(v19 - 1), *v19);
      v19 = v20;
      if (v21)
      {

        return;
      }
    }

    ++v11;
    v22 = v17 == v28;
    v12 = v5 + 32;
    a2 = v27;
    v13 = (a1 + 40);
    if (v22)
    {
      goto LABEL_16;
    }
  }

  __break(1u);
}

unint64_t sub_26C0FCA28(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v5 = HIBYTE(a4) & 0xF;
  if ((a4 & 0x2000000000000000) == 0)
  {
    v5 = a3 & 0xFFFFFFFFFFFFLL;
  }

  v34 = v5;
  v6 = 4 * v5;
  v7 = (a3 >> 59) & 1;
  if ((a4 & 0x1000000000000000) == 0)
  {
    LOBYTE(v7) = 1;
  }

  v37 = 4 << v7;
  v29 = a4 & 0xFFFFFFFFFFFFFFLL;
  v28 = (a4 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v8 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v8 = a1 & 0xFFFFFFFFFFFFLL;
  }

  v32 = v8;
  v9 = 4 * v8;
  v10 = (a1 >> 59) & 1;
  if ((a2 & 0x1000000000000000) == 0)
  {
    LOBYTE(v10) = 1;
  }

  v11 = 4 << v10;
  v26 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v27 = a2 & 0xFFFFFFFFFFFFFFLL;
  v12 = 15;
  v13 = 15;
  v36 = v6;
  v31 = 4 << v10;
  while (1)
  {
    v14 = v13 >> 14;
    if (v13 >> 14 == v6)
    {
      v15 = 0;
      goto LABEL_29;
    }

    result = v13;
    if ((v13 & 0xC) == v37)
    {
      result = sub_26C0CEF7C(v13, a3, a4);
      v11 = v31;
    }

    v17 = result >> 16;
    v18 = a4;
    if (result >> 16 >= v34)
    {
      break;
    }

    if ((a4 & 0x1000000000000000) != 0)
    {
      result = sub_26C148F9C();
      v18 = a4;
      v11 = v31;
      v15 = result;
    }

    else if ((a4 & 0x2000000000000000) != 0)
    {
      v38 = a3;
      v39 = v29;
      v15 = *(&v38 + v17);
    }

    else
    {
      result = v28;
      if ((a3 & 0x1000000000000000) == 0)
      {
        result = sub_26C1490AC();
        v18 = a4;
        v11 = v31;
      }

      v15 = *(result + v17);
    }

    if ((v13 & 0xC) == v37)
    {
      result = sub_26C0CEF7C(v13, a3, v18);
      v11 = v31;
      v13 = result;
      if ((a4 & 0x1000000000000000) != 0)
      {
LABEL_26:
        if (v34 <= v13 >> 16)
        {
          goto LABEL_55;
        }

        v19 = sub_26C148F7C();
        v11 = v31;
        v13 = v19;
        goto LABEL_28;
      }
    }

    else if ((v18 & 0x1000000000000000) != 0)
    {
      goto LABEL_26;
    }

    v13 = (v13 & 0xFFFFFFFFFFFF0000) + 65540;
LABEL_28:
    v6 = v36;
LABEL_29:
    v20 = v12 >> 14;
    v21 = v12 >> 14 == v9;
    if (v12 >> 14 == v9)
    {
      v22 = 0;
      if (v14 == v6)
      {
        return v21;
      }

      goto LABEL_47;
    }

    v23 = v12 & 0xC;
    result = v12;
    if (v23 == v11)
    {
      result = sub_26C0CEF7C(v12, a1, a2);
      v11 = v31;
      v6 = v36;
    }

    v24 = result >> 16;
    if (result >> 16 >= v32)
    {
      goto LABEL_54;
    }

    if ((a2 & 0x1000000000000000) != 0)
    {
      result = sub_26C148F9C();
      v11 = v31;
      v6 = v36;
      v22 = result;
      if (v23 != v31)
      {
        goto LABEL_45;
      }
    }

    else if ((a2 & 0x2000000000000000) != 0)
    {
      v38 = a1;
      v39 = v27;
      v22 = *(&v38 + v24);
      if (v23 != v11)
      {
        goto LABEL_45;
      }
    }

    else
    {
      result = v26;
      if ((a1 & 0x1000000000000000) == 0)
      {
        result = sub_26C1490AC();
        v11 = v31;
        v6 = v36;
      }

      v22 = *(result + v24);
      if (v23 != v11)
      {
LABEL_45:
        if ((a2 & 0x1000000000000000) == 0)
        {
LABEL_46:
          v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
          if (v14 == v6)
          {
            return v21;
          }

          goto LABEL_47;
        }

        goto LABEL_41;
      }
    }

    result = sub_26C0CEF7C(v12, a1, a2);
    v11 = v31;
    v6 = v36;
    v12 = result;
    if ((a2 & 0x1000000000000000) == 0)
    {
      goto LABEL_46;
    }

LABEL_41:
    if (v32 <= v12 >> 16)
    {
      goto LABEL_56;
    }

    v25 = sub_26C148F7C();
    v11 = v31;
    v6 = v36;
    v12 = v25;
    if (v14 == v36)
    {
      return v21;
    }

LABEL_47:
    v21 = 0;
    if (v20 == v9 || v15 != v22)
    {
      return v21;
    }
  }

  __break(1u);
LABEL_54:
  __break(1u);
LABEL_55:
  __break(1u);
LABEL_56:
  __break(1u);
  return result;
}

uint64_t sub_26C0FCD7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 16);
  if (v4)
  {
    v5 = 0;
    v6 = a1 + 32;
    do
    {
      result = *(v6 + 2 * v5++);
      v8 = *(a2 + 16);
      v9 = (a2 + 32);
      while (v8)
      {
        v10 = *v9++;
        --v8;
        if (v10 == result)
        {
          return result;
        }
      }
    }

    while (v5 != v4);
  }

  if (qword_28047A750 != -1)
  {
    swift_once();
  }

  v11 = sub_26C148A9C();
  __swift_project_value_buffer(v11, qword_28047ABB0);
  v12 = sub_26C148A7C();
  v13 = sub_26C14900C();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_26C0B5000, v12, v13, "no common ciphersuites", v14, 2u);
    MEMORY[0x26D69C3A0](v14, -1, -1);
  }

  *a3 = xmmword_26C14A8E0;
  *(a3 + 16) = 2;
  sub_26C0BBAF8();
  return swift_willThrowTypedImpl();
}

uint64_t sub_26C0FCEE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047A888, &qword_26C14A5B8);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v42 = &v41 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047A890, &qword_26C14A5C0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v41 - v11;
  v13 = type metadata accessor for ServerHandshakeState.ServerHelloState(0);
  v14 = a3 + v13[6];
  sub_26C0FEE38(a1, a3, type metadata accessor for ServerHandshakeStateMachine.Configuration);
  sub_26C0CF55C(a2, a3 + v13[5], &qword_28047ABC8, &unk_26C14CCA0);
  v15 = type metadata accessor for ServerHandshakeState.ClientHelloState(0);
  v16 = a1 + v15[8];
  v17 = *v16;
  LOBYTE(v16) = *(v16 + 2);
  *v14 = v17;
  *(v14 + 2) = v16;
  v18 = (a1 + v15[15]);
  v19 = *v18;
  v20 = v18[1];
  v21 = v18[2];
  v22 = (a3 + v13[7]);
  *v22 = v19;
  v22[1] = v20;
  v22[2] = v21;
  v23 = (a1 + v15[16]);
  v24 = *v23;
  v25 = v23[1];
  v26 = (a3 + v13[8]);
  *v26 = v24;
  v26[1] = v25;
  *(a3 + v13[9]) = *(a1 + v15[6]);
  sub_26C0CF314(a1 + v15[18], v12, &qword_28047A890, &qword_26C14A5C0);
  v27 = type metadata accessor for GeneralEPSK(0);
  v28 = (*(*(v27 - 8) + 48))(v12, 1, v27) != 1;
  sub_26C0BB37C(v19, v20);

  sub_26C0CF5C4(v12, &qword_28047A890, &qword_26C14A5C0);
  *(a3 + v13[10]) = v28;
  v29 = v42;
  *(a3 + v13[11]) = *(a1 + v15[20]);
  v30 = v15[21];
  sub_26C0CF314(a1 + v30, v29, &qword_28047A888, &qword_26C14A5B8);
  v31 = type metadata accessor for PAKEServerState(0);
  v32 = (*(*(v31 - 8) + 48))(v29, 1, v31);
  if (v32 == 1)
  {
    sub_26C0CF5C4(v29, &qword_28047A888, &qword_26C14A5B8);
    v33 = 0;
  }

  else
  {
    v33 = *(v29 + *(v31 + 32));
    sub_26C0FEEA0(v29, type metadata accessor for PAKEServerState);
  }

  v34 = a3 + v13[12];
  *v34 = v33;
  *(v34 + 2) = v32 == 1;
  v35 = a1 + v15[7];
  LOWORD(v34) = *v35;
  LOBYTE(v35) = *(v35 + 2);
  v36 = a3 + v13[13];
  *v36 = v34;
  *(v36 + 2) = v35;
  *(a3 + v13[15]) = *(a1 + v15[17]);
  v37 = (a1 + v15[9]);
  LOBYTE(v34) = *v37;
  LOBYTE(v37) = v37[1];
  v38 = (a3 + v13[14]);
  *v38 = v34;
  v38[1] = v37;
  sub_26C0CF314(a1 + v30, a3 + v13[16], &qword_28047A888, &qword_26C14A5B8);
  v39 = *(a1 + v15[23]);
  result = sub_26C0FEEA0(a1, type metadata accessor for ServerHandshakeState.ClientHelloState);
  *(a3 + v13[17]) = v39;
  return result;
}

uint64_t sub_26C0FD2A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047A888, &qword_26C14A5B8);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v29 - v8;
  result = type metadata accessor for ServerHandshakeState.ServerEncryptedExtensionsState(0);
  v11 = result;
  v12 = *(a1 + *(result + 40));
  if (v12 & 1) == 0 && (*(a1 + *(result + 48) + 2))
  {
    __break(1u);
  }

  else
  {
    sub_26C0FEE38(a1, a3, type metadata accessor for ServerHandshakeStateMachine.Configuration);
    v13 = type metadata accessor for ServerHandshakeState.ServerFinishedState(0);
    sub_26C0CF55C(a2, a3 + v13[5], &qword_28047ABC8, &unk_26C14CCA0);
    v14 = (a1 + v11[7]);
    v15 = v14[1];
    v30 = *v14;
    v16 = v14[2];
    v17 = (a3 + v13[6]);
    *v17 = v30;
    v17[1] = v15;
    v17[2] = v16;
    v18 = (a1 + v11[8]);
    v19 = *v18;
    v20 = v18[1];
    v21 = (a3 + v13[7]);
    *v21 = v19;
    v21[1] = v20;
    *(a3 + v13[8]) = *(a1 + v11[9]);
    *(a3 + v13[9]) = *(a1 + v11[11]);
    v22 = a1 + v11[12];
    LOWORD(v19) = *v22;
    LOBYTE(v22) = *(v22 + 2);
    v23 = a3 + v13[10];
    *v23 = v19;
    *(v23 + 2) = v22;
    v24 = a1 + v11[13];
    LOWORD(v19) = *v24;
    LOBYTE(v24) = *(v24 + 2);
    v25 = a3 + v13[11];
    *v25 = v19;
    *(v25 + 2) = v24;
    *(a3 + v13[12]) = v12;
    *(a3 + v13[13]) = *(a1 + v11[14]);
    v26 = v11[15];
    sub_26C0CF314(a1 + v26, a3 + v13[14], &qword_28047A888, &qword_26C14A5B8);
    sub_26C0CF314(a1 + v26, v9, &qword_28047A888, &qword_26C14A5B8);
    sub_26C0BB37C(v30, v15);

    sub_26C0FEEA0(a1, type metadata accessor for ServerHandshakeState.ServerEncryptedExtensionsState);
    v27 = type metadata accessor for PAKEServerState(0);
    v28 = (*(*(v27 - 8) + 48))(v9, 1, v27) != 1;
    result = sub_26C0CF5C4(v9, &qword_28047A888, &qword_26C14A5B8);
    *(a3 + v13[15]) = v28;
  }

  return result;
}

uint64_t sub_26C0FD540@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v32 = a3;
  v31 = a2;
  v36 = a1;
  v33 = a5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047A9C8, &qword_26C14D2A0);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7 - 8);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v29 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047A870, &qword_26C14A5A0);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v29 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v29 - v19;
  sub_26C0CF314(v5, &v29 - v19, &qword_28047A870, &qword_26C14A5A0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    v22 = v36;
    v23 = v33;
    v30 = v5;
    if (EnumCaseMultiPayload)
    {
      sub_26C0CF55C(v20, v13, &qword_28047A9C8, &qword_26C14D2A0);
      v25 = v23;
      *v23 = xmmword_26C14A1B0;
      v23[2] = 0;
      sub_26C100BCC(v22, v31, v32);
      sub_26C0CF314(v13, v11, &qword_28047A9C8, &qword_26C14D2A0);
      v26 = *v23;
      v27 = v23[1];
      v28 = v25[2];
      sub_26C0BBAA4(v26, v27);
      sub_26C10A6EC(v11, v26, v27, v28, v18);
      sub_26C0CF5C4(v13, &qword_28047A9C8, &qword_26C14D2A0);
      swift_storeEnumTagMultiPayload();
      return sub_26C0FF20C(v18, v30, &qword_28047A870, &qword_26C14A5A0);
    }
  }

  else if ((EnumCaseMultiPayload - 2) >= 2)
  {
    goto LABEL_6;
  }

  sub_26C0CF5C4(v20, &qword_28047A870, &qword_26C14A5A0);
LABEL_6:
  *a4 = xmmword_26C14A570;
  *(a4 + 16) = 2;
  v34 = xmmword_26C14A570;
  v35 = 2;
  sub_26C0BBAF8();
  return swift_willThrowTypedImpl();
}

uint64_t sub_26C0FD7EC@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, int64_t a3@<X2>, uint64_t a4@<X3>, int a5@<W4>, uint64_t a6@<X5>, unint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, char a11, _OWORD *a12)
{
  v159 = a8;
  v164 = a7;
  v163 = a6;
  LODWORD(v170) = a5;
  v180 = a4;
  v172 = a3;
  v177 = a1;
  v162 = a9;
  v13 = sub_26C148B6C();
  v173 = *(v13 - 8);
  v14 = *(v173 + 64);
  v15 = MEMORY[0x28223BE20](v13);
  v161 = &v150 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v158 = &v150 - v18;
  MEMORY[0x28223BE20](v17);
  v182 = &v150 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047AB18, &unk_26C14C110);
  v169 = *(v20 - 8);
  v21 = *(v169 + 64);
  v22 = MEMORY[0x28223BE20](v20);
  v156 = &v150 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v179 = &v150 - v24;
  v154 = type metadata accessor for RawEPSK(0);
  v25 = *(*(v154 - 8) + 64);
  MEMORY[0x28223BE20](v154);
  v155 = &v150 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v152 = type metadata accessor for ImportedPSK(0);
  v27 = *(*(v152 - 8) + 64);
  MEMORY[0x28223BE20](v152);
  v153 = &v150 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v160 = type metadata accessor for PSK(0);
  v29 = *(*(v160 - 8) + 64);
  MEMORY[0x28223BE20](v160);
  v31 = &v150 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047A890, &qword_26C14A5C0);
  v33 = *(*(v32 - 8) + 64);
  MEMORY[0x28223BE20](v32 - 8);
  v35 = &v150 - v34;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047A930, qword_26C14C120);
  v37 = *(*(v36 - 8) + 64);
  MEMORY[0x28223BE20](v36 - 8);
  v39 = &v150 - v38;
  v40 = sub_26C148BDC();
  v185 = *(v40 - 8);
  v41 = *(v185 + 64);
  v42 = MEMORY[0x28223BE20](v40);
  v157 = &v150 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = MEMORY[0x28223BE20](v42);
  v181 = &v150 - v45;
  MEMORY[0x28223BE20](v44);
  v178 = &v150 - v46;
  v47 = sub_26C148E9C();
  v175 = *(v47 - 8);
  v48 = *(v175 + 64);
  v49 = MEMORY[0x28223BE20](v47);
  v176 = &v150 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v49);
  v52 = &v150 - v51;
  v53 = sub_26C0FF17C(&qword_281590328, MEMORY[0x277CC5550]);
  v188 = v52;
  v184 = v53;
  sub_26C148B3C();
  v54 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    v55 = 0;
    if (v54 == 2)
    {
      v55 = *(v177 + 24);
    }
  }

  else if (v54)
  {
    v55 = v177 >> 32;
  }

  else
  {
    v55 = BYTE6(a2);
  }

  if (v55 < v172)
  {
    __break(1u);
    goto LABEL_65;
  }

  v150 = a2 >> 62;
  v151 = a2;
  v56 = sub_26C14889C();
  v58 = v57;
  v59 = v183;
  sub_26C11E5B4(v56, v57);
  v167 = v59;
  sub_26C0BB9B0(v56, v58);
  v183 = sub_26C0FF17C(&qword_28047AB38, MEMORY[0x277CC52C8]);
  v60 = sub_26C148E7C();
  if (v60 < 0)
  {
LABEL_65:
    __break(1u);
LABEL_66:
    swift_once();
    goto LABEL_28;
  }

  v168 = v20;
  if (v60)
  {
    v61 = v60;
    v62 = sub_26C148FCC();
    *(v62 + 16) = v61;
    bzero((v62 + 32), v61);
  }

  else
  {
    v62 = MEMORY[0x277D84F90];
  }

  sub_26C0CF314(v180, v35, &qword_28047A890, &qword_26C14A5C0);
  v63 = type metadata accessor for GeneralEPSK(0);
  v64 = *(v63 - 8);
  v166 = *(v64 + 48);
  v165 = (v64 + 48);
  v65 = v166(v35, 1, v63);
  v174 = v40;
  v171 = v13;
  if (v65 == 1)
  {
    sub_26C0CF5C4(v35, &qword_28047A890, &qword_26C14A5C0);
    v66 = v185;
    (*(v185 + 56))(v39, 1, 1, v40);
    *&v186 = v62;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047A840, &unk_26C14A530);
    sub_26C0FF1C4(&qword_28047ABE8, &qword_28047A840, &unk_26C14A530);
    sub_26C148BAC();
    v67 = (*(v66 + 48))(v39, 1, v40);
    v68 = v170;
    if (v67 != 1)
    {
      sub_26C0CF5C4(v39, &qword_28047A930, qword_26C14C120);
    }
  }

  else
  {
    sub_26C0FEE38(v35, v31, type metadata accessor for PSK);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v70 = (v185 + 16);
    if (EnumCaseMultiPayload == 1)
    {
      v71 = v155;
      sub_26C0FEF5C(v31, v155, type metadata accessor for RawEPSK);
      v72 = v174;
      (*v70)(v39, &v71[*(v154 + 20)], v174);
      v73 = type metadata accessor for RawEPSK;
    }

    else
    {
      v71 = v153;
      sub_26C0FEF5C(v31, v153, type metadata accessor for ImportedPSK);
      v72 = v174;
      (*v70)(v39, &v71[*(v152 + 20)], v174);
      v73 = type metadata accessor for ImportedPSK;
    }

    sub_26C0FEEA0(v71, v73);
    v68 = v170;
    sub_26C0FEEA0(v35, type metadata accessor for GeneralEPSK);
    v74 = v185;
    (*(v185 + 56))(v39, 0, 1, v72);
    (*(v74 + 32))(v178, v39, v72);
  }

  *&v186 = v62;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047A840, &unk_26C14A530);
  sub_26C0FF1C4(&qword_28047A850, &qword_28047A840, &unk_26C14A530);
  sub_26C148CEC();

  if (v68)
  {
    v75 = 0x646E696220747865;
  }

  else
  {
    v75 = 0x646E696220706D69;
  }

  v76 = v176;
  sub_26C148B3C();
  v77 = v47;
  v78 = v182;
  sub_26C148B2C();
  v79 = v175 + 8;
  v80 = *(v175 + 8);
  v170 = v77;
  v80(v76, v77);
  v81 = v171;
  v82 = sub_26C148E7C();
  sub_26C1372CC(v75, 0xEA00000000007265, v82, v181);

  v84 = v173 + 8;
  v83 = *(v173 + 8);
  v83(v78, v81);
  if (v166(v180, 1, v63) == 1)
  {
    v165 = v83;
    v166 = v80;
    v180 = v79;
LABEL_24:
    v85 = v170;
    sub_26C148B2C();
    v86 = sub_26C148E7C();
    v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047A948, &qword_26C14A7F0);
    v88 = *(v87 + 44);
    v89 = v87;
    v177 = v87;
    v90 = v162;
    v91 = v179;
    sub_26C1372CC(0x6661727420652063, 0xEB00000000636966, v86, v162 + v88);
    v92 = sub_26C148E7C();
    sub_26C1372CC(0x616D207078652065, 0xEC00000072657473, v92, v90 + *(v89 + 48));
    v93 = v81;
    v94 = v176;
    sub_26C148B3C();
    v95 = v161;
    sub_26C148B2C();
    (v166)(v94, v85);
    v96 = sub_26C148E7C();
    v97 = v177;
    v98 = v91;
    sub_26C1372CC(0x64657669726564, 0xE700000000000000, v96, v90 + *(v177 + 36));
    v99 = v165;
    v165(v95, v93);
    v99(v182, v93);
    (*(v169 + 8))(v98, v168);
    v100 = v185;
    v101 = v174;
    (*(v185 + 8))(v178, v174);
    (*(v175 + 32))(v90, v188, v85);
    return (*(v100 + 32))(v90 + *(v97 + 40), v181, v101);
  }

  v20 = v168;
  if (v164 >> 60 == 15 || (a11 & 1) != 0)
  {
    *a12 = 0xD00000000000002CLL;
    *(a12 + 1) = 0x800000026C15ACF0;
    *(a12 + 16) = 1;
    *&v186 = 0xD00000000000002CLL;
    *(&v186 + 1) = 0x800000026C15ACF0;
    v187 = 1;
    sub_26C0BBAF8();
    swift_willThrowTypedImpl();
    v111 = *(v185 + 8);
    v112 = v174;
    v111(v181, v174);
    (*(v169 + 8))(v179, v20);
    v111(v178, v112);
    return (v80)(v188, v170);
  }

  v155 = a12;
  v165 = v83;
  v166 = v80;
  v180 = v79;
  v173 = v84;
  sub_26C0BBAA4(v163, v164);
  v47 = v170;
  if (qword_28047A770 != -1)
  {
    goto LABEL_66;
  }

LABEL_28:
  v103 = sub_26C148A9C();
  v104 = __swift_project_value_buffer(v103, qword_28047AD78);
  v105 = sub_26C148A7C();
  v106 = sub_26C148FFC();
  v107 = os_log_type_enabled(v105, v106);
  v108 = v156;
  if (v107)
  {
    v109 = swift_slowAlloc();
    *v109 = 134217984;
    *(v109 + 4) = a10;
    _os_log_impl(&dword_26C0B5000, v105, v106, "bindersArrayLength: %ld", v109, 0xCu);
    MEMORY[0x26D69C3A0](v109, -1, -1);
  }

  if (v150 > 1)
  {
    if (v150 == 2)
    {
      v110 = *(v177 + 24);
    }

    else
    {
      v110 = 0;
    }
  }

  else if (v150)
  {
    v110 = v177 >> 32;
  }

  else
  {
    v110 = BYTE6(v151);
  }

  result = v172;
  if (v110 < v172)
  {
    __break(1u);
LABEL_68:
    __break(1u);
LABEL_69:
    __break(1u);
    return result;
  }

  v154 = v104;
  v113 = sub_26C14889C();
  sub_26C11CC58(a10 + 3, v113, v114, &v186);
  v115 = v20;
  v116 = v186;
  v117 = v176;
  sub_26C148B3C();
  sub_26C0BBAA4(v116, *(&v116 + 1));
  v118 = v167;
  sub_26C11E5B4(v116, *(&v116 + 1));
  v177 = v118;
  v172 = *(&v116 + 1);
  v160 = v116;
  sub_26C0BB9B0(v116, *(&v116 + 1));
  sub_26C148B2C();
  (v166)(v117, v47);
  v119 = sub_26C148E7C();
  v120 = v157;
  v121 = sub_26C136F6C(0x64656873696E6966, 0xE800000000000000, MEMORY[0x277D84F90], v119, v157);
  MEMORY[0x28223BE20](v121);
  *(&v150 - 2) = v120;
  sub_26C0FF17C(&qword_28047A9D0, MEMORY[0x277CC52C8]);
  v122 = v177;
  result = sub_26C14880C();
  v123 = v164;
  v124 = v164 >> 62;
  if ((v164 >> 62) > 1)
  {
    v125 = v159;
    v126 = v163;
    if (v124 == 2)
    {
      v127 = *(v163 + 24);
    }

    else
    {
      v127 = 0;
    }
  }

  else
  {
    v125 = v159;
    v126 = v163;
    if (v124)
    {
      v127 = v163 >> 32;
    }

    else
    {
      v127 = BYTE6(v164);
    }
  }

  if (v127 < v125)
  {
    goto LABEL_68;
  }

  v128 = v115;
  v129 = v126;
  *&v186 = sub_26C14889C();
  *(&v186 + 1) = v130;
  sub_26C0FF1C4(&qword_28047ABF0, &qword_28047AB18, &unk_26C14C110);
  sub_26C0BE710();
  v131 = v115;
  v132 = sub_26C148C1C();
  sub_26C0BB9B0(v186, *(&v186 + 1));
  if (v132)
  {
    v167 = v122;
    sub_26C0BB344(v129, v123);
    sub_26C0BB9B0(v160, v172);
    (*(v169 + 8))(v108, v128);
    v81 = v171;
    v165(v158, v171);
    (*(v185 + 8))(v157, v174);
    goto LABEL_24;
  }

  result = sub_26C148C0C();
  v133 = v131;
  if (v124 > 1)
  {
    v134 = v159;
    v135 = v171;
    if (v124 == 2)
    {
      v136 = *(v163 + 24);
    }

    else
    {
      v136 = 0;
    }
  }

  else
  {
    v134 = v159;
    v135 = v171;
    if (v124)
    {
      v136 = v163 >> 32;
    }

    else
    {
      v136 = BYTE6(v164);
    }
  }

  v137 = v170;
  v138 = __OFSUB__(v136, v134);
  v139 = v136 - v134;
  if (v138)
  {
    goto LABEL_69;
  }

  if (result != v139)
  {
    v140 = sub_26C148A7C();
    v141 = sub_26C14900C();
    if (os_log_type_enabled(v140, v141))
    {
      v142 = swift_slowAlloc();
      *v142 = 0;
      _os_log_impl(&dword_26C0B5000, v140, v141, "psk binder value not of expected length. likely epsk hash algorithm mismatch.", v142, 2u);
      MEMORY[0x26D69C3A0](v142, -1, -1);
    }
  }

  v143 = sub_26C148A7C();
  v144 = sub_26C14900C();
  if (os_log_type_enabled(v143, v144))
  {
    v145 = swift_slowAlloc();
    *v145 = 0;
    _os_log_impl(&dword_26C0B5000, v143, v144, "client binder value incorrect. aborting handshake.", v145, 2u);
    MEMORY[0x26D69C3A0](v145, -1, -1);
  }

  v146 = v155;
  *v155 = xmmword_26C14C1C0;
  v146[16] = 2;
  v186 = xmmword_26C14C1C0;
  v187 = 2;
  sub_26C0BBAF8();
  swift_willThrowTypedImpl();
  sub_26C0BB344(v163, v164);
  sub_26C0BB9B0(v160, v172);
  v147 = *(v169 + 8);
  v147(v108, v133);
  v165(v158, v135);
  v148 = *(v185 + 8);
  v149 = v174;
  v148(v181, v174);
  v147(v179, v133);
  v148(v178, v149);
  v148(v157, v149);
  return (v166)(v188, v137);
}

uint64_t sub_26C0FED74(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_26C0FEE1C(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a3 >> 60 != 15)
  {
    return sub_26C0BB9B0(a2, a3);
  }

  return result;
}

uint64_t sub_26C0FEE38(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_26C0FEEA0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_26C0FEF00(uint64_t result, unint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a7)
  {
    sub_26C0BBAA4(result, a2);
    sub_26C0BBAA4(a4, a5);
  }

  return result;
}

uint64_t sub_26C0FEF5C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_26C0FEFE0(uint64_t a1, uint64_t a2, uint64_t a3, char *a4)
{
  result = sub_26C1487BC();
  v8 = result;
  if (result)
  {
    result = sub_26C1487EC();
    if (__OFSUB__(a1, result))
    {
LABEL_14:
      __break(1u);
LABEL_15:
      __break(1u);
      goto LABEL_16;
    }

    v8 += a1 - result;
  }

  v9 = __OFSUB__(a2, a1);
  v10 = a2 - a1;
  if (v9)
  {
    __break(1u);
    goto LABEL_14;
  }

  result = sub_26C1487DC();
  if (result >= v10)
  {
    v11 = v10;
  }

  else
  {
    v11 = result;
  }

  if (!a4)
  {
    goto LABEL_15;
  }

  if (!v8)
  {
LABEL_16:
    __break(1u);
    return result;
  }

  return v8 == a4 || memcmp(a4, v8, v11) == 0;
}

uint64_t sub_26C0FF10C(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_26C0FF158(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v3 = (a3 >> 60) & 3;
  if (v3 == 1)
  {
    return sub_26C0BBAA4(a2, a3 & 0xCFFFFFFFFFFFFFFFLL);
  }

  if (!v3)
  {
  }

  return result;
}

uint64_t sub_26C0FF17C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_26C0FF1C4(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_26C0FF20C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t get_enum_tag_for_layout_string_8SwiftTLS9ExtensionO4PAKEO15PAKEClientHelloVSg(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy249_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  v5 = a2[4];
  v6 = a2[5];
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  v8 = a2[8];
  v9 = a2[9];
  v10 = a2[11];
  *(a1 + 160) = a2[10];
  *(a1 + 176) = v10;
  *(a1 + 128) = v8;
  *(a1 + 144) = v9;
  result = a2[12];
  v12 = a2[13];
  v13 = a2[14];
  *(a1 + 233) = *(a2 + 233);
  *(a1 + 208) = v12;
  *(a1 + 224) = v13;
  *(a1 + 192) = result;
  return result;
}

uint64_t sub_26C0FF2D8(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 249))
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

uint64_t sub_26C0FF320(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
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
    *(result + 248) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 249) = 1;
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

    *(result + 249) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_26C0FF3D8()
{
  result = type metadata accessor for GeneralEPSK(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_26C0FF4D4()
{
  type metadata accessor for HandshakeState.ServerHelloState.SessionData(319);
  if (v0 <= 0x3F)
  {
    sub_26C0FF674();
    if (v1 <= 0x3F)
    {
      sub_26C1005FC(319, &qword_281591F30, &type metadata for CipherSuite, MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        sub_26C1005FC(319, &qword_281591F40, &type metadata for NamedGroup, MEMORY[0x277D83D88]);
        if (v3 <= 0x3F)
        {
          sub_26C1005FC(319, &qword_2815902F8, MEMORY[0x277D84C58], MEMORY[0x277D83D88]);
          if (v4 <= 0x3F)
          {
            sub_26C0FFE5C(319, qword_281591560, type metadata accessor for PAKEClientState, MEMORY[0x277D83D88]);
            if (v5 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_26C0FF674()
{
  if (!qword_2815907B8[0])
  {
    sub_26C148E9C();
    sub_26C0E6794(&qword_281590328, MEMORY[0x277CC5550]);
    v0 = type metadata accessor for ClientSessionKeyManager();
    if (!v1)
    {
      atomic_store(v0, qword_2815907B8);
    }
  }
}

uint64_t sub_26C0FF72C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_26C0FF774(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_26C0FF7F4()
{
  result = type metadata accessor for SessionTicket();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t __swift_memcpy5_2(uint64_t result, int *a2)
{
  v2 = *a2;
  *(result + 4) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t _s9EarlyDataVwet(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 5))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t _s9EarlyDataVwst(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 4) = 0;
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

  *(result + 5) = v3;
  return result;
}

uint64_t sub_26C0FF8C8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 24))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 16);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_26C0FF924(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

void sub_26C0FF9D0()
{
  sub_26C1005FC(319, qword_281592488, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    sub_26C1005FC(319, &qword_281591F48, &type metadata for ByteBuffer, MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      type metadata accessor for PeerCertificateBundle(319);
      if (v2 <= 0x3F)
      {
        sub_26C0FF674();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_26C0FFB4C()
{
  type metadata accessor for PeerCertificateBundle(319);
  if (v0 <= 0x3F)
  {
    sub_26C1005FC(319, qword_281592488, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      sub_26C1005FC(319, &qword_281591F48, &type metadata for ByteBuffer, MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        sub_26C0FF674();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_26C0FFCC8()
{
  sub_26C0FFE5C(319, qword_281591A30, type metadata accessor for HandshakeState.EncryptedExtensionsState.SessionData, MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    sub_26C1005FC(319, qword_281592488, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      sub_26C1005FC(319, &qword_281591F48, &type metadata for ByteBuffer, MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        sub_26C0FF674();
        if (v3 <= 0x3F)
        {
          sub_26C0FFE5C(319, qword_281591560, type metadata accessor for PAKEClientState, MEMORY[0x277D83D88]);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_26C0FFE5C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_26C0FFF08()
{
  sub_26C1005FC(319, &qword_281590320, &type metadata for CipherSuite, MEMORY[0x277D83940]);
  if (v0 <= 0x3F)
  {
    sub_26C1005FC(319, &qword_281590308, &type metadata for CertificateType, MEMORY[0x277D83940]);
    if (v1 <= 0x3F)
    {
      sub_26C0FFE5C(319, qword_281590500, type metadata accessor for GeneratedEphemeralPrivateKey, MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        sub_26C0FF674();
        if (v3 <= 0x3F)
        {
          sub_26C0FFE5C(319, qword_281592590, type metadata accessor for SessionTicket, MEMORY[0x277D83D88]);
          if (v4 <= 0x3F)
          {
            sub_26C0FFE5C(319, &qword_281590318, type metadata accessor for GeneralEPSK, MEMORY[0x277D83940]);
            if (v5 <= 0x3F)
            {
              sub_26C0FFE5C(319, qword_281591560, type metadata accessor for PAKEClientState, MEMORY[0x277D83D88]);
              if (v6 <= 0x3F)
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

void sub_26C10016C()
{
  sub_26C0FFE5C(319, qword_281592590, type metadata accessor for SessionTicket, MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    sub_26C0FF674();
    if (v1 <= 0x3F)
    {
      sub_26C0FFE5C(319, &qword_281590318, type metadata accessor for GeneralEPSK, MEMORY[0x277D83940]);
      if (v2 <= 0x3F)
      {
        sub_26C0FFE5C(319, qword_281591560, type metadata accessor for PAKEClientState, MEMORY[0x277D83D88]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_26C1002E0()
{
  result = type metadata accessor for HandshakeState.IdleState(319);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for HandshakeState.ClientHelloState(319);
    if (v2 <= 0x3F)
    {
      result = type metadata accessor for HandshakeState.ServerHelloState(319);
      if (v3 <= 0x3F)
      {
        result = type metadata accessor for HandshakeState.EncryptedExtensionsState(319);
        if (v4 <= 0x3F)
        {
          result = type metadata accessor for HandshakeState.ServerCertificateState(319);
          if (v5 <= 0x3F)
          {
            result = type metadata accessor for HandshakeState.ServerCertificateVerifyState(319);
            if (v6 <= 0x3F)
            {
              result = type metadata accessor for HandshakeState.ReadyState(319);
              if (v7 <= 0x3F)
              {
                swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
                return 0;
              }
            }
          }
        }
      }
    }
  }

  return result;
}

void sub_26C100400()
{
  sub_26C1005FC(319, &qword_281591F30, &type metadata for CipherSuite, MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    sub_26C1005FC(319, &qword_281591F40, &type metadata for NamedGroup, MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      sub_26C0FFE5C(319, &qword_2815909C8, type metadata accessor for PeerCertificateBundle, MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        sub_26C1005FC(319, qword_281592488, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
        if (v3 <= 0x3F)
        {
          sub_26C1005FC(319, &qword_281591F48, &type metadata for ByteBuffer, MEMORY[0x277D83D88]);
          if (v4 <= 0x3F)
          {
            sub_26C0FF674();
            if (v5 <= 0x3F)
            {
              sub_26C1005FC(319, &qword_281591F38, &type metadata for PAKEScheme, MEMORY[0x277D83D88]);
              if (v6 <= 0x3F)
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

void sub_26C1005FC(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_26C10064C(unsigned int a1, uint64_t a2)
{
  v14[5] = *MEMORY[0x277D85DE8];
  v3 = a2 + 2;
  if (__OFADD__(a2, 2))
  {
    __break(1u);
    goto LABEL_16;
  }

  if (v2[2] > a2)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
  }

  v4 = *v2;
  v5 = v2[1];
  v6 = v5 >> 62;
  if ((v5 >> 62) > 1)
  {
    if (v6 == 2)
    {
      v8 = *(v4 + 24);
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v7 = BYTE6(v5);
    v8 = v4 >> 32;
    if (!v6)
    {
      v8 = v7;
    }
  }

  if (v8 < v3)
  {
    goto LABEL_17;
  }

  v13 = bswap32(a1) >> 16;
  if (v3 < a2)
  {
    goto LABEL_18;
  }

  v14[3] = MEMORY[0x277D838B0];
  v14[4] = MEMORY[0x277CC9C18];
  v14[0] = &v13;
  v14[1] = v14;
  v9 = __swift_project_boxed_opaque_existential_1(v14, MEMORY[0x277D838B0]);
  if (*v9)
  {
    v10 = v9[1] - *v9;
  }

  sub_26C14887C();
  __swift_destroy_boxed_opaque_existential_1(v14);
  v11 = *MEMORY[0x277D85DE8];
  return 2;
}

uint64_t sub_26C100778(char a1, uint64_t a2)
{
  v14[5] = *MEMORY[0x277D85DE8];
  v3 = a2 + 1;
  if (__OFADD__(a2, 1))
  {
    __break(1u);
    goto LABEL_16;
  }

  if (v2[2] > a2)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
  }

  v4 = *v2;
  v5 = v2[1];
  v6 = v5 >> 62;
  if ((v5 >> 62) > 1)
  {
    if (v6 == 2)
    {
      v8 = *(v4 + 24);
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v7 = BYTE6(v5);
    v8 = v4 >> 32;
    if (!v6)
    {
      v8 = v7;
    }
  }

  if (v8 < v3)
  {
    goto LABEL_17;
  }

  v13 = a1;
  if (v3 < a2)
  {
    goto LABEL_18;
  }

  v14[3] = MEMORY[0x277D838B0];
  v14[4] = MEMORY[0x277CC9C18];
  v14[0] = &v13;
  v14[1] = v14;
  v9 = __swift_project_boxed_opaque_existential_1(v14, MEMORY[0x277D838B0]);
  if (*v9)
  {
    v10 = v9[1] - *v9;
  }

  sub_26C14887C();
  __swift_destroy_boxed_opaque_existential_1(v14);
  v11 = *MEMORY[0x277D85DE8];
  return 1;
}

int64_t sub_26C10089C()
{
  v26 = *MEMORY[0x277D85DE8];
  LOBYTE(v21) = 2;
  v1 = MEMORY[0x277D838B0];
  v2 = MEMORY[0x277CC9C18];
  v24 = MEMORY[0x277D838B0];
  v25 = MEMORY[0x277CC9C18];
  v22 = &v21;
  v23 = (&v21 + 1);
  v3 = __swift_project_boxed_opaque_existential_1(&v22, MEMORY[0x277D838B0]);
  v5 = *v3;
  v4 = v3[1];
  sub_26C14888C();
  __swift_destroy_boxed_opaque_existential_1(&v22);
  v6 = *v0;
  v7 = v0[1];
  v8 = v7 >> 62;
  if ((v7 >> 62) > 1)
  {
    if (v8 == 2)
    {
      v9 = *(v6 + 24);
    }

    else
    {
      v9 = 0;
    }
  }

  else if (v8)
  {
    v9 = v6 >> 32;
  }

  else
  {
    v9 = BYTE6(v7);
  }

  LOBYTE(v21) = 0;
  v24 = v1;
  v25 = v2;
  v22 = &v21;
  v23 = (&v21 + 1);
  v10 = __swift_project_boxed_opaque_existential_1(&v22, v1);
  v12 = *v10;
  v11 = v10[1];
  sub_26C14888C();
  __swift_destroy_boxed_opaque_existential_1(&v22);
  v21 = 0;
  v24 = v1;
  v25 = v2;
  v22 = &v21;
  v23 = &v22;
  v13 = __swift_project_boxed_opaque_existential_1(&v22, v1);
  v15 = *v13;
  v14 = v13[1];
  sub_26C14888C();
  __swift_destroy_boxed_opaque_existential_1(&v22);
  v16 = sub_26C122174(v0);
  if (v16 > 0xFFFFFF)
  {
    __break(1u);
LABEL_12:
    __break(1u);
  }

  v17 = v16;
  v18 = sub_26C100778(SBYTE2(v16), v9);
  if (__OFADD__(v9, v18))
  {
    goto LABEL_12;
  }

  sub_26C10064C(v17, v9 + v18);
  v19 = *MEMORY[0x277D85DE8];
  return v17 + 4;
}

int64_t sub_26C100A40(uint64_t a1)
{
  v28 = *MEMORY[0x277D85DE8];
  LOBYTE(v23) = 8;
  v3 = MEMORY[0x277D838B0];
  v4 = MEMORY[0x277CC9C18];
  v26 = MEMORY[0x277D838B0];
  v27 = MEMORY[0x277CC9C18];
  v24 = &v23;
  v25 = (&v23 + 1);
  v5 = __swift_project_boxed_opaque_existential_1(&v24, MEMORY[0x277D838B0]);
  v7 = *v5;
  v6 = v5[1];
  sub_26C14888C();
  __swift_destroy_boxed_opaque_existential_1(&v24);
  v8 = *v1;
  v9 = v1[1];
  v10 = v9 >> 62;
  if ((v9 >> 62) > 1)
  {
    if (v10 == 2)
    {
      v11 = *(v8 + 24);
    }

    else
    {
      v11 = 0;
    }
  }

  else if (v10)
  {
    v11 = v8 >> 32;
  }

  else
  {
    v11 = BYTE6(v9);
  }

  LOBYTE(v23) = 0;
  v26 = v3;
  v27 = v4;
  v24 = &v23;
  v25 = (&v23 + 1);
  v12 = __swift_project_boxed_opaque_existential_1(&v24, v3);
  v14 = *v12;
  v13 = v12[1];
  sub_26C14888C();
  __swift_destroy_boxed_opaque_existential_1(&v24);
  v23 = 0;
  v26 = v3;
  v27 = v4;
  v24 = &v23;
  v25 = &v24;
  v15 = __swift_project_boxed_opaque_existential_1(&v24, v3);
  v17 = *v15;
  v16 = v15[1];
  sub_26C14888C();
  __swift_destroy_boxed_opaque_existential_1(&v24);
  v18 = sub_26C123100(v1, a1);
  if (v18 > 0xFFFFFF)
  {
    __break(1u);
LABEL_12:
    __break(1u);
  }

  v19 = v18;
  v20 = sub_26C100778(SBYTE2(v18), v11);
  if (__OFADD__(v11, v20))
  {
    goto LABEL_12;
  }

  sub_26C10064C(v19, v11 + v20);
  v21 = *MEMORY[0x277D85DE8];
  return v19 + 4;
}

uint64_t sub_26C100BCC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v32 = *MEMORY[0x277D85DE8];
  v29 = a1;
  v30 = a2;
  v31 = a3;
  LOBYTE(v24) = 20;
  v4 = MEMORY[0x277D838B0];
  v5 = MEMORY[0x277CC9C18];
  v27 = MEMORY[0x277D838B0];
  v28 = MEMORY[0x277CC9C18];
  v25 = &v24;
  v26 = (&v24 + 1);
  v6 = __swift_project_boxed_opaque_existential_1(&v25, MEMORY[0x277D838B0]);
  v8 = *v6;
  v7 = v6[1];
  sub_26C14888C();
  __swift_destroy_boxed_opaque_existential_1(&v25);
  v9 = *v3;
  v10 = v3[1];
  v11 = v10 >> 62;
  if ((v10 >> 62) > 1)
  {
    if (v11 == 2)
    {
      v12 = *(v9 + 24);
    }

    else
    {
      v12 = 0;
    }
  }

  else if (v11)
  {
    v12 = v9 >> 32;
  }

  else
  {
    v12 = BYTE6(v10);
  }

  LOBYTE(v24) = 0;
  v27 = v4;
  v28 = v5;
  v25 = &v24;
  v26 = (&v24 + 1);
  v13 = __swift_project_boxed_opaque_existential_1(&v25, v4);
  v15 = *v13;
  v14 = v13[1];
  sub_26C14888C();
  __swift_destroy_boxed_opaque_existential_1(&v25);
  v24 = 0;
  v27 = v4;
  v28 = v5;
  v25 = &v24;
  v26 = &v25;
  v16 = __swift_project_boxed_opaque_existential_1(&v25, v4);
  v18 = *v16;
  v17 = v16[1];
  sub_26C14888C();
  __swift_destroy_boxed_opaque_existential_1(&v25);
  v19 = sub_26C122C3C();
  if (v19 > 0xFFFFFF)
  {
    __break(1u);
LABEL_12:
    __break(1u);
  }

  v20 = v19;
  v21 = sub_26C100778(SBYTE2(v19), v12);
  if (__OFADD__(v12, v21))
  {
    goto LABEL_12;
  }

  sub_26C10064C(v20, v12 + v21);
  v22 = *MEMORY[0x277D85DE8];
  return v20 + 4;
}

uint64_t sub_26C100D6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = *MEMORY[0x277D85DE8];
  v30 = a1;
  v31 = a2;
  v32 = a3;
  v33 = a4;
  LOBYTE(v25) = 11;
  v5 = MEMORY[0x277D838B0];
  v6 = MEMORY[0x277CC9C18];
  v28 = MEMORY[0x277D838B0];
  v29 = MEMORY[0x277CC9C18];
  v26 = &v25;
  v27 = (&v25 + 1);
  v7 = __swift_project_boxed_opaque_existential_1(&v26, MEMORY[0x277D838B0]);
  v9 = *v7;
  v8 = v7[1];
  sub_26C14888C();
  __swift_destroy_boxed_opaque_existential_1(&v26);
  v10 = *v4;
  v11 = v4[1];
  v12 = v11 >> 62;
  if ((v11 >> 62) > 1)
  {
    if (v12 == 2)
    {
      v13 = *(v10 + 24);
    }

    else
    {
      v13 = 0;
    }
  }

  else if (v12)
  {
    v13 = v10 >> 32;
  }

  else
  {
    v13 = BYTE6(v11);
  }

  LOBYTE(v25) = 0;
  v28 = v5;
  v29 = v6;
  v26 = &v25;
  v27 = (&v25 + 1);
  v14 = __swift_project_boxed_opaque_existential_1(&v26, v5);
  v16 = *v14;
  v15 = v14[1];
  sub_26C14888C();
  __swift_destroy_boxed_opaque_existential_1(&v26);
  v25 = 0;
  v28 = v5;
  v29 = v6;
  v26 = &v25;
  v27 = &v26;
  v17 = __swift_project_boxed_opaque_existential_1(&v26, v5);
  v19 = *v17;
  v18 = v17[1];
  sub_26C14888C();
  __swift_destroy_boxed_opaque_existential_1(&v26);
  v20 = sub_26C0BFC70(v4);
  if (v20 > 0xFFFFFF)
  {
    __break(1u);
LABEL_12:
    __break(1u);
  }

  v21 = v20;
  v22 = sub_26C100778(SBYTE2(v20), v13);
  if (__OFADD__(v13, v22))
  {
    goto LABEL_12;
  }

  sub_26C10064C(v21, v13 + v22);
  v23 = *MEMORY[0x277D85DE8];
  return v21 + 4;
}

int64_t sub_26C100F0C(__int16 a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = *MEMORY[0x277D85DE8];
  v30 = a1;
  v31 = a2;
  v32 = a3;
  v33 = a4;
  LOBYTE(v25) = 15;
  v5 = MEMORY[0x277D838B0];
  v6 = MEMORY[0x277CC9C18];
  v28 = MEMORY[0x277D838B0];
  v29 = MEMORY[0x277CC9C18];
  v26 = &v25;
  v27 = (&v25 + 1);
  v7 = __swift_project_boxed_opaque_existential_1(&v26, MEMORY[0x277D838B0]);
  v9 = *v7;
  v8 = v7[1];
  sub_26C14888C();
  __swift_destroy_boxed_opaque_existential_1(&v26);
  v10 = *v4;
  v11 = v4[1];
  v12 = v11 >> 62;
  if ((v11 >> 62) > 1)
  {
    if (v12 == 2)
    {
      v13 = *(v10 + 24);
    }

    else
    {
      v13 = 0;
    }
  }

  else if (v12)
  {
    v13 = v10 >> 32;
  }

  else
  {
    v13 = BYTE6(v11);
  }

  LOBYTE(v25) = 0;
  v28 = v5;
  v29 = v6;
  v26 = &v25;
  v27 = (&v25 + 1);
  v14 = __swift_project_boxed_opaque_existential_1(&v26, v5);
  v16 = *v14;
  v15 = v14[1];
  sub_26C14888C();
  __swift_destroy_boxed_opaque_existential_1(&v26);
  v25 = 0;
  v28 = v5;
  v29 = v6;
  v26 = &v25;
  v27 = &v26;
  v17 = __swift_project_boxed_opaque_existential_1(&v26, v5);
  v19 = *v17;
  v18 = v17[1];
  sub_26C14888C();
  __swift_destroy_boxed_opaque_existential_1(&v26);
  v20 = sub_26C0BB654(v4);
  if (v20 > 0xFFFFFF)
  {
    __break(1u);
LABEL_12:
    __break(1u);
  }

  v21 = v20;
  v22 = sub_26C100778(SBYTE2(v20), v13);
  if (__OFADD__(v13, v22))
  {
    goto LABEL_12;
  }

  sub_26C10064C(v21, v13 + v22);
  v23 = *MEMORY[0x277D85DE8];
  return v21 + 4;
}

int64_t sub_26C1010B0()
{
  v26 = *MEMORY[0x277D85DE8];
  LOBYTE(v21) = 1;
  v1 = MEMORY[0x277D838B0];
  v2 = MEMORY[0x277CC9C18];
  v24 = MEMORY[0x277D838B0];
  v25 = MEMORY[0x277CC9C18];
  v22 = &v21;
  v23 = (&v21 + 1);
  v3 = __swift_project_boxed_opaque_existential_1(&v22, MEMORY[0x277D838B0]);
  v5 = *v3;
  v4 = v3[1];
  sub_26C14888C();
  __swift_destroy_boxed_opaque_existential_1(&v22);
  v6 = *v0;
  v7 = v0[1];
  v8 = v7 >> 62;
  if ((v7 >> 62) > 1)
  {
    if (v8 == 2)
    {
      v9 = *(v6 + 24);
    }

    else
    {
      v9 = 0;
    }
  }

  else if (v8)
  {
    v9 = v6 >> 32;
  }

  else
  {
    v9 = BYTE6(v7);
  }

  LOBYTE(v21) = 0;
  v24 = v1;
  v25 = v2;
  v22 = &v21;
  v23 = (&v21 + 1);
  v10 = __swift_project_boxed_opaque_existential_1(&v22, v1);
  v12 = *v10;
  v11 = v10[1];
  sub_26C14888C();
  __swift_destroy_boxed_opaque_existential_1(&v22);
  v21 = 0;
  v24 = v1;
  v25 = v2;
  v22 = &v21;
  v23 = &v22;
  v13 = __swift_project_boxed_opaque_existential_1(&v22, v1);
  v15 = *v13;
  v14 = v13[1];
  sub_26C14888C();
  __swift_destroy_boxed_opaque_existential_1(&v22);
  v16 = sub_26C120ED4(v0);
  if (v16 > 0xFFFFFF)
  {
    __break(1u);
LABEL_12:
    __break(1u);
  }

  v17 = v16;
  v18 = sub_26C100778(SBYTE2(v16), v9);
  if (__OFADD__(v9, v18))
  {
    goto LABEL_12;
  }

  sub_26C10064C(v17, v9 + v18);
  v19 = *MEMORY[0x277D85DE8];
  return v17 + 4;
}

uint64_t sub_26C101254()
{
  v0 = sub_26C148A9C();
  __swift_allocate_value_buffer(v0, qword_28047AC20);
  __swift_project_value_buffer(v0, qword_28047AC20);
  return sub_26C148A8C();
}

uint64_t sub_26C1012D8(uint64_t a1, uint64_t *a2, _OWORD *a3)
{
  v31 = a3;
  v32 = a1;
  v4 = v3;
  v6 = type metadata accessor for HandshakeState.ServerHelloState(0);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6 - 8);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v29 - v11;
  v13 = type metadata accessor for HandshakeState(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v29 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v29 - v18;
  v21 = *a2;
  v20 = a2[1];
  v22 = a2[2];
  v30 = v4;
  sub_26C101588(v4, &v29 - v18, type metadata accessor for HandshakeState);
  if (swift_getEnumCaseMultiPayload() == 2)
  {
    sub_26C102D04(v19, v12, type metadata accessor for HandshakeState.ServerHelloState);
    sub_26C101588(v12, v10, type metadata accessor for HandshakeState.ServerHelloState);
    v35[0] = v21;
    v35[1] = v20;
    v35[2] = v22;
    v23 = v32;

    sub_26C0BBAA4(v21, v20);
    v24 = v35[4];
    sub_26C1015F0(v10, v23, v35, &v33, v17);
    if (v24)
    {
      result = sub_26C102CA4(v12, type metadata accessor for HandshakeState.ServerHelloState);
      v26 = v34;
      v27 = v31;
      *v31 = v33;
      *(v27 + 16) = v26;
    }

    else
    {
      v28 = v30;
      sub_26C102CA4(v30, type metadata accessor for HandshakeState);
      sub_26C102CA4(v12, type metadata accessor for HandshakeState.ServerHelloState);
      swift_storeEnumTagMultiPayload();
      return sub_26C102D04(v17, v28, type metadata accessor for HandshakeState);
    }
  }

  else
  {
    result = sub_26C102CA4(v19, type metadata accessor for HandshakeState);
    __break(1u);
  }

  return result;
}

uint64_t sub_26C101588(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_26C1015F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, __int128 *a4@<X3>, uint64_t a5@<X8>)
{
  v164 = a4;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047AC40, &unk_26C14D320);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v151 = (&v148 - v11);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047AC48, "~;");
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v152 = (&v148 - v14);
  v161 = type metadata accessor for SessionTicket();
  v15 = *(*(v161 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v161);
  v18 = &v148 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v162 = &v148 - v19;
  v173 = type metadata accessor for HandshakeState.ServerHelloState.SessionData(0);
  v20 = *(*(v173 - 8) + 64);
  v21 = MEMORY[0x28223BE20](v173);
  v171 = &v148 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v160 = (&v148 - v23);
  v24 = a3[1];
  v168 = *a3;
  v169 = v24;
  v158 = a3[2];
  v25 = type metadata accessor for HandshakeState.EncryptedExtensionsState(0);
  v26 = a5 + v25[5];
  v27 = type metadata accessor for HandshakeState.EncryptedExtensionsState.SessionData(0);
  v28 = *(v27 - 8);
  v29 = *(v28 + 56);
  v157 = v27;
  v156 = v29;
  v155 = v28 + 56;
  (v29)(v26, 1, 1);
  v30 = (a5 + v25[6]);
  *v30 = 0;
  v30[1] = 0;
  v163 = v30;
  v31 = (a5 + v25[7]);
  *v31 = xmmword_26C14A540;
  v176 = v31;
  v31[2] = 0;
  v170 = v25[8];
  *(a5 + v170) = 0;
  v32 = v25[12];
  v33 = type metadata accessor for PAKEClientState(0);
  v149 = *(v33 - 8);
  v34 = *(v149 + 56);
  v177 = a5;
  v150 = v33;
  v34(a5 + v32, 1, 1);
  if (qword_28047A758 != -1)
  {
LABEL_118:
    swift_once();
  }

  v35 = sub_26C148A9C();
  v174 = __swift_project_value_buffer(v35, qword_28047AC20);
  v36 = sub_26C148A7C();
  v37 = sub_26C148FFC();
  v38 = os_log_type_enabled(v36, v37);
  v179 = v18;
  if (v38)
  {
    v39 = swift_slowAlloc();
    *v39 = 0;
    _os_log_impl(&dword_26C0B5000, v36, v37, "validating encrypted extensions", v39, 2u);
    v40 = v39;
    v18 = v179;
    MEMORY[0x26D69C3A0](v40, -1, -1);
  }

  v193 = MEMORY[0x277D84FA0];
  v41 = *(a2 + 16);
  v172 = v25;
  if (v41)
  {
    v153 = v26;
    v154 = v32;
    v175 = 0;
    v32 = 0;
    v165 = 0;
    v178 = v41 - 1;
    v26 = 32;
    v167 = 1;
    v166 = a1;
    while (1)
    {
      v42 = *(a2 + v26 + 48);
      v189 = *(a2 + v26 + 32);
      v190 = v42;
      v191 = *(a2 + v26 + 64);
      v192 = *(a2 + v26 + 80);
      v43 = *(a2 + v26 + 16);
      v187 = *(a2 + v26);
      v188 = v43;
      v44 = 42;
      switch(v192 >> 4)
      {
        case 1:

          v44 = 10;
          break;
        case 2:
          sub_26C0B8B24(v187, BYTE8(v187) & 1);
          v44 = 43;
          break;
        case 3:
          sub_26C0FF14C();
          v44 = 16;
          break;
        case 4:
          sub_26C0FF158(v187, *(&v187 + 1), v188);
          v44 = 51;
          break;
        case 5:
          break;
        case 6:

          v44 = 13;
          break;
        case 7:
          sub_26C0B8B24(v187, BYTE8(v187) & 1);
          v44 = 20;
          break;
        case 8:
          sub_26C0BBAA4(v187, *(&v187 + 1));
          v44 = 57;
          break;
        case 9:

          v44 = 45;
          break;
        case 0xA:
          sub_26C10B28C(v187, *(&v187 + 1), v188 & 1);
          v44 = 41;
          break;
        case 0xB:
          v44 = 58;
          break;
        case 0xC:
          sub_26C10B1D0(v187, *(&v187 + 1), v188, *(&v188 + 1), v189, *(&v189 + 1), v190, *(&v190 + 1), v191, *(&v191 + 1), v192 & 1);
          v44 = 35387;
          break;
        case 0xD:
          v45 = a2;
          v46 = v187;
          sub_26C0BBAA4(*(&v187 + 1), v188);
          v44 = v46;
          a2 = v45;
          break;
        default:
          sub_26C0BB37C(v187, *(&v187 + 1));
          v44 = 0;
          break;
      }

      if ((sub_26C11D960(&v182, v44) & 1) == 0)
      {

        sub_26C0BB9B0(v168, v169);

        sub_26C0BE40C(&v187, &v182);
        v64 = sub_26C148A7C();
        v65 = sub_26C14900C();
        sub_26C0BE468(&v187);
        if (os_log_type_enabled(v64, v65))
        {
          v66 = swift_slowAlloc();
          v67 = swift_slowAlloc();
          *&v182 = v67;
          *v66 = 136315138;
          v68 = v67;
          switch(v192 >> 4)
          {
            case 1:
              v142 = 10;
              goto LABEL_110;
            case 2:
              v142 = 43;
              goto LABEL_110;
            case 3:
              v142 = 16;
              goto LABEL_110;
            case 4:
              v142 = 51;
              goto LABEL_110;
            case 5:
              v142 = 42;
              goto LABEL_110;
            case 6:
              v142 = 13;
              goto LABEL_110;
            case 7:
              v142 = 20;
              goto LABEL_110;
            case 8:
              v142 = 57;
              goto LABEL_110;
            case 9:
              v142 = 45;
              goto LABEL_110;
            case 0xA:
              v142 = 41;
              goto LABEL_110;
            case 0xB:
              v142 = 58;
              goto LABEL_110;
            case 0xC:
              v142 = -30149;
LABEL_110:
              LOWORD(v180) = v142;
              break;
            case 0xD:
              LOWORD(v180) = v187;
              break;
            default:
              LOWORD(v180) = 0;
              break;
          }

          v143 = ExtensionType.description.getter();
          v145 = sub_26C0E5DE8(v143, v144, &v182);

          *(v66 + 4) = v145;
          _os_log_impl(&dword_26C0B5000, v64, v65, "server offered duplicate extension of type %s on encrypted extensions", v66, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v68);
          MEMORY[0x26D69C3A0](v68, -1, -1);
          MEMORY[0x26D69C3A0](v66, -1, -1);
        }

        v93 = xmmword_26C14A8F0;
        goto LABEL_113;
      }

      v194 = v32 + 1;
      v47 = a2;
      v48 = v187;
      v49 = BYTE8(v187);
      v50 = *(&v187 + 9) | ((*(&v187 + 13) | (HIBYTE(v187) << 16)) << 32);
      v51 = v188;
      v52 = v192 >> 4;
      if (v52 > 6)
      {
        break;
      }

      if (v52 == 3)
      {
        if (v188)
        {
          if (!*(a1 + 48))
          {

            sub_26C0BB9B0(v168, v169);

            v89 = sub_26C148A7C();
            v90 = sub_26C14900C();
            if (os_log_type_enabled(v89, v90))
            {
              v91 = swift_slowAlloc();
              *v91 = 0;
              v92 = "server unexpectedly offered alpn";
LABEL_70:
              _os_log_impl(&dword_26C0B5000, v89, v90, v92, v91, 2u);
              MEMORY[0x26D69C3A0](v91, -1, -1);
            }

LABEL_71:

            v93 = xmmword_26C14A8E0;
LABEL_113:
            v146 = v164;
            *v164 = v93;
            *(v146 + 16) = 2;
            v182 = v93;
            LOBYTE(v183) = 2;
            sub_26C0BBAF8();
            swift_willThrowTypedImpl();
            sub_26C0BE468(&v187);
LABEL_114:
            v137 = a1;
            goto LABEL_115;
          }

          v60 = v163;
          *v163 = v48;
          v60[1] = v49 | (v50 << 8);
          v175 = v49 | (v50 << 8);
          goto LABEL_41;
        }

LABEL_40:
        sub_26C0BE468(&v187);
        goto LABEL_41;
      }

      if (v52 != 5)
      {
        goto LABEL_40;
      }

      v53 = type metadata accessor for HandshakeState.ServerHelloState(0);
      if (*(a1 + v53[9]) & 1) == 0 && *(a1 + v53[10]) != 1 || (v54 = a1 + v53[11], (*(v54 + 2)) || *v54)
      {

        sub_26C0BB9B0(v168, v169);
        v89 = sub_26C148A7C();
        v90 = sub_26C14900C();
        if (os_log_type_enabled(v89, v90))
        {
          v91 = swift_slowAlloc();
          *v91 = 0;
          v92 = "server unexpectedly offered early data";
          goto LABEL_70;
        }

        goto LABEL_71;
      }

      v55 = v171;
      sub_26C101588(a1 + v53[5], v171, type metadata accessor for HandshakeState.ServerHelloState.SessionData);
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        v56 = v162;
        sub_26C102D04(v55, v162, type metadata accessor for SessionTicket);
        a2 = v47;
        if (!*(v56 + *(v161 + 40)))
        {

          sub_26C0BB9B0(v168, v169);

          v138 = sub_26C148A7C();
          v139 = sub_26C14900C();
          if (os_log_type_enabled(v138, v139))
          {
            v140 = swift_slowAlloc();
            *v140 = 0;
            _os_log_impl(&dword_26C0B5000, v138, v139, "server unexpectedly offered early data for session with max early data size 0", v140, 2u);
            MEMORY[0x26D69C3A0](v140, -1, -1);
          }

          v141 = v164;
          *v164 = xmmword_26C14A8E0;
          *(v141 + 16) = 2;
          v182 = xmmword_26C14A8E0;
          LOBYTE(v183) = 2;
          sub_26C0BBAF8();
          swift_willThrowTypedImpl();
          sub_26C0BE468(&v187);
          sub_26C102CA4(v56, type metadata accessor for SessionTicket);
          goto LABEL_114;
        }

        sub_26C102CA4(v56, type metadata accessor for SessionTicket);
      }

      else
      {
        sub_26C102CA4(v55, type metadata accessor for HandshakeState.ServerHelloState.SessionData);
        a2 = v47;
      }

      v61 = sub_26C148A7C();
      v62 = sub_26C148FEC();
      if (os_log_type_enabled(v61, v62))
      {
        v63 = swift_slowAlloc();
        *v63 = 0;
        _os_log_impl(&dword_26C0B5000, v61, v62, "server accepted early data", v63, 2u);
        MEMORY[0x26D69C3A0](v63, -1, -1);

        sub_26C0BE468(&v187);
      }

      else
      {
      }

      v18 = v179;
      *(v177 + v170) = 1;
LABEL_42:
      if (v178 == v32)
      {

        v32 = v154;
        v26 = v153;
        goto LABEL_55;
      }

      v26 += 88;
      v32 = v194;
      if (v194 >= *(a2 + 16))
      {
        __break(1u);
        goto LABEL_118;
      }
    }

    if (v52 != 7)
    {
      if (v52 == 8)
      {
        if (*(a1 + 32) >> 60 == 15)
        {
          sub_26C0BBAA4(v187, *(&v187 + 1));

          sub_26C0BB9B0(v168, v169);

          v133 = sub_26C148A7C();
          v134 = sub_26C14900C();
          if (os_log_type_enabled(v133, v134))
          {
            v135 = swift_slowAlloc();
            *v135 = 0;
            _os_log_impl(&dword_26C0B5000, v133, v134, "server unexpectedly offered transport parameters", v135, 2u);
            MEMORY[0x26D69C3A0](v135, -1, -1);
          }

          v136 = v164;
          *v164 = xmmword_26C14A8E0;
          *(v136 + 16) = 2;
          v182 = xmmword_26C14A8E0;
          LOBYTE(v183) = 2;
          sub_26C0BBAF8();
          swift_willThrowTypedImpl();
          sub_26C0BE468(&v187);
          sub_26C0BE468(&v187);
          v137 = v166;
LABEL_115:
          sub_26C102CA4(v137, type metadata accessor for HandshakeState.ServerHelloState);
          v32 = v154;
          v26 = v153;
LABEL_116:
          sub_26C0CF5C4(v26, &qword_28047AC48, "~;");

          v147 = v176[2];
          sub_26C0BB344(*v176, v176[1]);
          return sub_26C0CF5C4(v177 + v32, &qword_28047AC40, &unk_26C14D320);
        }

        v57 = *(&v188 + 1) | ((*(&v188 + 5) | (BYTE7(v188) << 16)) << 32);
        v58 = v176;
        v59 = v176[2];
        sub_26C0BB344(*v176, v176[1]);
        *v58 = v48;
        *(v58 + 8) = v49;
        *(v58 + 15) = BYTE6(v50);
        *(v58 + 13) = WORD2(v50);
        *(v58 + 9) = v50;
        *(v58 + 16) = v51;
        *(v58 + 23) = BYTE6(v57);
        *(v58 + 21) = WORD2(v57);
        *(v58 + 17) = v57;
        v25 = v172;
        a1 = v166;
        goto LABEL_41;
      }

      goto LABEL_40;
    }

    if ((BYTE8(v187) & 1) == 0)
    {
      goto LABEL_40;
    }

    sub_26C0BE468(&v187);
    v167 = 0;
    v165 = v48;
LABEL_41:
    v18 = v179;
    a2 = v47;
    goto LABEL_42;
  }

  v165 = 0;
  v175 = 0;
  v167 = 1;
LABEL_55:

  v69 = type metadata accessor for HandshakeState.ServerHelloState(0);
  v70 = v160;
  sub_26C101588(a1 + v69[5], v160, type metadata accessor for HandshakeState.ServerHelloState.SessionData);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v78 = a1;
    v79 = v70;
    v80 = *v70;
    v81 = v79[1];
    v82 = *(v79 + 1);
    if (v167)
    {
      v83 = 0;
    }

    else
    {
      v83 = v165;
    }

    v84 = *(v82 + 16);
    v85 = (v82 + 32);
    while (v84)
    {
      v86 = *v85++;
      --v84;
      if (v86 == v83)
      {
        sub_26C0CF5C4(v26, &qword_28047AC48, "~;");

        *v26 = v80;
        *(v26 + 2) = v81;
        *(v26 + 4) = v83;
        *(v26 + 8) = 0;
        *(v26 + 16) = 0;
        v87 = v157;
        swift_storeEnumTagMultiPayload();
        v156(v26, 0, 1, v87);
        a1 = v78;
        goto LABEL_80;
      }
    }

    v94 = v26;
    sub_26C0BB9B0(v168, v169);

    v95 = sub_26C148A7C();
    v96 = sub_26C14900C();
    if (os_log_type_enabled(v95, v96))
    {
      v97 = swift_slowAlloc();
      v98 = swift_slowAlloc();
      v154 = v32;
      v99 = v98;
      *&v187 = v98;
      *v97 = 136315138;
      v100 = sub_26C0DA5DC(v83);
      v102 = sub_26C0E5DE8(v100, v101, &v187);

      *(v97 + 4) = v102;
      _os_log_impl(&dword_26C0B5000, v95, v96, "server chose non-offered certificate type %s", v97, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v99);
      v103 = v99;
      v32 = v154;
      MEMORY[0x26D69C3A0](v103, -1, -1);
      MEMORY[0x26D69C3A0](v97, -1, -1);
    }

    v26 = v94;
    v104 = v164;
    *v164 = xmmword_26C14A8E0;
    *(v104 + 16) = 2;
    v187 = xmmword_26C14A8E0;
    LOBYTE(v188) = 2;
    sub_26C0BBAF8();
    swift_willThrowTypedImpl();
    sub_26C102CA4(v78, type metadata accessor for HandshakeState.ServerHelloState);
    goto LABEL_116;
  }

  if (EnumCaseMultiPayload == 1)
  {
    v72 = *v70;
    v73 = a1;
    v74 = a1 + v69[12];
    v75 = v151;
    sub_26C0CF314(v74, v151, &qword_28047AC40, &unk_26C14D320);
    v76 = (*(v149 + 48))(v75, 1, v150);
    if (v76 == 1)
    {
      sub_26C0CF5C4(v75, &qword_28047AC40, &unk_26C14D320);
      v77 = 0;
    }

    else
    {
      v105 = v75;
      v77 = *v75;
      sub_26C102CA4(v105, type metadata accessor for PAKEClientState);
    }

    v106 = v76 == 1;
    v107 = v152;
    *v152 = v72;
    v108 = v106;
    *(v107 + 2) = v77;
    *(v107 + 4) = v108;
    v109 = v157;
    swift_storeEnumTagMultiPayload();
    v156(v107, 0, 1, v109);
    sub_26C0FF20C(v107, v26, &qword_28047AC48, "~;");
    a1 = v73;
LABEL_80:
    v25 = v172;
  }

  else
  {
    sub_26C102D04(v70, v18, type metadata accessor for SessionTicket);
    if ((v167 & 1) == 0)
    {
      sub_26C0BB9B0(v168, v169);
      v128 = sub_26C148A7C();
      v129 = sub_26C14900C();
      if (os_log_type_enabled(v128, v129))
      {
        v130 = swift_slowAlloc();
        *v130 = 0;
        _os_log_impl(&dword_26C0B5000, v128, v129, "server provided server_certificate_type extension while resuming", v130, 2u);
        v131 = v130;
        v18 = v179;
        MEMORY[0x26D69C3A0](v131, -1, -1);
      }

      v132 = v164;
      *v164 = xmmword_26C14A8E0;
      *(v132 + 16) = 2;
      v187 = xmmword_26C14A8E0;
      LOBYTE(v188) = 2;
      sub_26C0BBAF8();
      swift_willThrowTypedImpl();
      sub_26C102CA4(v18, type metadata accessor for SessionTicket);
      sub_26C102CA4(a1, type metadata accessor for HandshakeState.ServerHelloState);
      goto LABEL_116;
    }

    sub_26C0CF5C4(v26, &qword_28047AC48, "~;");
    sub_26C102D04(v18, v26, type metadata accessor for SessionTicket);
    v88 = v157;
    swift_storeEnumTagMultiPayload();
    v156(v26, 0, 1, v88);
  }

  v110 = v177;
  sub_26C10B0B0(a1 + v69[12], v177 + v32);
  LOBYTE(v191) = *(a1 + 64);
  v111 = v191;
  v112 = *(a1 + 48);
  v189 = *(a1 + 32);
  v190 = v112;
  v113 = *(a1 + 16);
  v187 = *a1;
  v114 = v187;
  v188 = v113;
  *(v110 + 32) = v189;
  *(v110 + 48) = v112;
  *(v110 + 64) = v111;
  *v110 = v114;
  *(v110 + 16) = v113;
  sub_26C0CF314(a1 + v69[6], v110 + v25[9], &qword_28047AC38, &unk_26C14D110);
  *(v110 + v25[10]) = *(a1 + v69[9]);
  *(v110 + v25[11]) = *(a1 + v69[10]);
  *(v110 + v25[13]) = *(a1 + v69[13]);
  sub_26C10B120(&v187, &v182);
  v115 = v168;
  v116 = v169;
  v117 = v159;
  sub_26C108ABC(v168, v169, v158, &v180);
  if (v117)
  {
    sub_26C0BB9B0(v115, v116);
    sub_26C102CA4(a1, type metadata accessor for HandshakeState.ServerHelloState);
    v118 = v181;
    v119 = v164;
    *v164 = v180;
    *(v119 + 16) = v118;
    v120 = v177;
    v121 = *(v177 + 48);
    v184 = *(v177 + 32);
    v185 = v121;
    v186 = *(v177 + 64);
    v122 = *v177;
    v183 = *(v177 + 16);
    v182 = v122;
    sub_26C10B17C(&v182);
    sub_26C0CF5C4(v26, &qword_28047AC48, "~;");

    v123 = v176[2];
    sub_26C0BB344(*v176, v176[1]);
    sub_26C0CF5C4(v120 + v25[9], &qword_28047AC38, &unk_26C14D110);
    return sub_26C0CF5C4(v177 + v32, &qword_28047AC40, &unk_26C14D320);
  }

  sub_26C0BB9B0(v115, v116);
  v124 = sub_26C148A7C();
  v125 = sub_26C148FFC();
  if (os_log_type_enabled(v124, v125))
  {
    v126 = swift_slowAlloc();
    *v126 = 0;
    _os_log_impl(&dword_26C0B5000, v124, v125, "encrypted extensions valid", v126, 2u);
    MEMORY[0x26D69C3A0](v126, -1, -1);
  }

  return sub_26C102CA4(a1, type metadata accessor for HandshakeState.ServerHelloState);
}

uint64_t sub_26C102CA4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_26C102D04(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_26C102D6C(uint64_t *a1, uint64_t *a2, _OWORD *a3)
{
  v35 = a3;
  v4 = v3;
  v7 = type metadata accessor for HandshakeState.EncryptedExtensionsState(0);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7 - 8);
  v37 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v12 = &v33 - v11;
  v13 = type metadata accessor for HandshakeState(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13);
  v38 = &v33 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v18 = &v33 - v17;
  v19 = *a1;
  v20 = a1[1];
  v21 = a1[2];
  v22 = a1[3];
  v36 = v21;
  v23 = *a2;
  v24 = a2[1];
  v25 = a2[2];
  v34 = v4;
  sub_26C101588(v4, &v33 - v17, type metadata accessor for HandshakeState);
  if (swift_getEnumCaseMultiPayload() == 3)
  {
    sub_26C102D04(v18, v12, type metadata accessor for HandshakeState.EncryptedExtensionsState);
    v26 = v37;
    sub_26C101588(v12, v37, type metadata accessor for HandshakeState.EncryptedExtensionsState);
    v42[0] = v19;
    v42[1] = v20;
    v42[2] = v36;
    v42[3] = v22;
    v41[0] = v23;
    v41[1] = v24;
    v41[2] = v25;
    sub_26C0BBAA4(v19, v20);

    sub_26C0BBAA4(v23, v24);
    v27 = v38;
    v28 = v42[5];
    sub_26C103054(v26, v42, v41, &v39, v38);
    if (v28)
    {
      result = sub_26C102CA4(v12, type metadata accessor for HandshakeState.EncryptedExtensionsState);
      v30 = v40;
      v31 = v35;
      *v35 = v39;
      *(v31 + 16) = v30;
    }

    else
    {
      v32 = v34;
      sub_26C102CA4(v34, type metadata accessor for HandshakeState);
      sub_26C102CA4(v12, type metadata accessor for HandshakeState.EncryptedExtensionsState);
      swift_storeEnumTagMultiPayload();
      return sub_26C102D04(v27, v32, type metadata accessor for HandshakeState);
    }
  }

  else
  {
    result = sub_26C102CA4(v18, type metadata accessor for HandshakeState);
    __break(1u);
  }

  return result;
}

void sub_26C103054(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, __int128 *a4@<X3>, uint64_t a5@<X8>)
{
  v100 = a4;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047AC40, &unk_26C14D320);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v95 = v87 - v11;
  v12 = type metadata accessor for PeerCertificateBundle(0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v96 = v87 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047AC48, "~;");
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v99 = v87 - v17;
  v19 = *a2;
  v18 = a2[1];
  v20 = a2[2];
  v21 = a2[3];
  v114 = v20;
  v22 = a3[1];
  v101 = *a3;
  v94 = a3[2];
  *(a5 + 88) = xmmword_26C14A540;
  *(a5 + 104) = 0;
  if (qword_28047A758 != -1)
  {
    swift_once();
  }

  v23 = sub_26C148A9C();
  __swift_project_value_buffer(v23, qword_28047AC20);
  v24 = sub_26C148A7C();
  v25 = sub_26C148FFC();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v98 = v22;
    v27 = v21;
    v28 = a1;
    v29 = v26;
    *v26 = 0;
    _os_log_impl(&dword_26C0B5000, v24, v25, "validating certificate", v26, 2u);
    v30 = v29;
    a1 = v28;
    v21 = v27;
    v22 = v98;
    MEMORY[0x26D69C3A0](v30, -1, -1);
  }

  v31 = v18 >> 62;
  if ((v18 >> 62) > 1)
  {
    if (v31 == 2)
    {
      v32 = *(v19 + 24);
    }

    else
    {
      v32 = 0;
    }
  }

  else
  {
    v32 = BYTE6(v18);
    if (v31)
    {
      v32 = v19 >> 32;
    }
  }

  if (__OFSUB__(v32, v114))
  {
    __break(1u);
LABEL_44:
    __break(1u);
    return;
  }

  if (v32 != v114)
  {
    sub_26C0BB9B0(v101, v22);
    sub_26C0BBAA4(v19, v18);

    v35 = sub_26C148A7C();
    v36 = sub_26C14900C();
    if (!os_log_type_enabled(v35, v36))
    {
      sub_26C0BB9B0(v19, v18);

      sub_26C0BB9B0(v19, v18);

LABEL_35:
      v45 = xmmword_26C14A8F0;
LABEL_36:
      v70 = v100;
      *v100 = v45;
      *(v70 + 16) = 2;
      v109 = v45;
      LOBYTE(v110) = 2;
      sub_26C0BBAF8();
      swift_willThrowTypedImpl();
      sub_26C102CA4(a1, type metadata accessor for HandshakeState.EncryptedExtensionsState);
      v68 = *(a5 + 88);
      v69 = *(a5 + 96);
      v71 = *(a5 + 104);
      goto LABEL_37;
    }

    v99 = a1;
    v38 = swift_slowAlloc();
    *v38 = 134217984;
    if (v31 > 1)
    {
      if (v31 == 2)
      {
        v39 = *(v19 + 24);
        sub_26C0BB9B0(v19, v18);
      }

      else
      {
        sub_26C0BB9B0(v19, v18);

        v39 = 0;
      }
    }

    else
    {
      sub_26C0BB9B0(v19, v18);

      if (v31)
      {
        v39 = v19 >> 32;
      }

      else
      {
        v39 = BYTE6(v18);
      }
    }

    if (!__OFSUB__(v39, v114))
    {
      *(v38 + 4) = v39 - v114;
      sub_26C0BB9B0(v19, v18);

      _os_log_impl(&dword_26C0B5000, v35, v36, "received unexpected context: %ld", v38, 0xCu);
      MEMORY[0x26D69C3A0](v38, -1, -1);

      a1 = v99;
      goto LABEL_35;
    }

    goto LABEL_44;
  }

  v93 = type metadata accessor for HandshakeState.EncryptedExtensionsState(0);
  v33 = v99;
  sub_26C0CF314(a1 + *(v93 + 20), v99, &qword_28047AC48, "~;");
  v34 = type metadata accessor for HandshakeState.EncryptedExtensionsState.SessionData(0);
  if ((*(*(v34 - 8) + 48))(v33, 1, v34) == 1)
  {
    sub_26C0BB9B0(v101, v22);
    sub_26C0BB9B0(v19, v18);

    sub_26C0CF5C4(v33, &qword_28047AC48, "~;");
LABEL_23:
    v40 = sub_26C148A7C();
    v41 = sub_26C14900C();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = a1;
      v43 = swift_slowAlloc();
      *v43 = 0;
      _os_log_impl(&dword_26C0B5000, v40, v41, "received server certificate message while resuming session", v43, 2u);
      v44 = v43;
      a1 = v42;
      MEMORY[0x26D69C3A0](v44, -1, -1);
    }

    v45 = xmmword_26C14A560;
    goto LABEL_36;
  }

  if (swift_getEnumCaseMultiPayload())
  {
    sub_26C0BB9B0(v101, v22);
    sub_26C0BB9B0(v19, v18);

    sub_26C102CA4(v33, type metadata accessor for HandshakeState.EncryptedExtensionsState.SessionData);
    goto LABEL_23;
  }

  v98 = v22;
  v46 = *v33;
  v91 = *(v33 + 16);
  v48 = *(a1 + 48);
  v111 = *(a1 + 32);
  v47 = v111;
  v112 = v48;
  v113 = *(a1 + 64);
  v49 = *(a1 + 16);
  v109 = *a1;
  v50 = v109;
  v110 = v49;
  *(a5 + 64) = v113;
  *(a5 + 32) = v47;
  *(a5 + 48) = v48;
  *a5 = v50;
  *(a5 + 16) = v49;
  v90 = *(v33 + 4);
  *(a5 + 66) = v46;
  v51 = v93;
  v52 = (a1 + *(v93 + 24));
  v53 = v52[1];
  *(a5 + 72) = *v52;
  *(a5 + 80) = v53;
  v54 = (a1 + *(v51 + 28));
  v55 = v54[1];
  v92 = *v54;
  v56 = v54[2];
  v99 = a1;
  v57 = *(a5 + 88);
  v89 = *(a5 + 96);
  v88 = *(a5 + 104);
  sub_26C10B120(&v109, &v104);
  v87[1] = v53;
  v58 = v92;

  sub_26C0BB37C(v58, v55);
  v59 = v57;
  v60 = v99;
  sub_26C0BB344(v59, v89);
  *(a5 + 88) = v58;
  *(a5 + 96) = v55;
  v61 = v93;
  v89 = v55;
  v88 = v56;
  *(a5 + 104) = v56;
  *(a5 + 112) = *(v60 + v61[8]);
  *&v104 = v19;
  *(&v104 + 1) = v18;
  *&v105 = v114;
  *(&v105 + 1) = v21;
  v62 = v96;
  v63 = v97;
  sub_26C0D0028(v90, &v104, &v102, v96);
  if (v63)
  {
    sub_26C0BB9B0(v101, v98);

    sub_26C102CA4(v60, type metadata accessor for HandshakeState.EncryptedExtensionsState);
    v64 = v103;
    v65 = v100;
    *v100 = v102;
    *(v65 + 16) = v64;
    v66 = *(a5 + 48);
    v106 = *(a5 + 32);
    v107 = v66;
    v108 = *(a5 + 64);
    v67 = *(a5 + 16);
    v104 = *a5;
    v105 = v67;
    sub_26C10B17C(&v104);

    v68 = v92;
    v69 = v89;
LABEL_37:
    sub_26C0BB344(v68, v69);
    return;
  }

  v114 = 0;

  v72 = type metadata accessor for HandshakeState.ServerCertificateState(0);
  sub_26C102D04(v62, a5 + v72[10], type metadata accessor for PeerCertificateBundle);
  sub_26C0CF314(v60 + v61[9], a5 + v72[11], &qword_28047AC38, &unk_26C14D110);
  *(a5 + v72[12]) = *(v60 + v61[13]);
  v73 = v95;
  sub_26C0CF314(v60 + v61[12], v95, &qword_28047AC40, &unk_26C14D320);
  v74 = type metadata accessor for PAKEClientState(0);
  v75 = (*(*(v74 - 8) + 48))(v73, 1, v74) != 1;
  sub_26C0CF5C4(v73, &qword_28047AC40, &unk_26C14D320);
  *(a5 + v72[13]) = v75;
  v76 = v101;
  v77 = v98;
  v78 = v114;
  sub_26C108ABC(v101, v98, v94, &v104);
  if (v78)
  {
    sub_26C0BB9B0(v76, v77);
    sub_26C102CA4(v60, type metadata accessor for HandshakeState.EncryptedExtensionsState);
    v79 = v105;
    v80 = v100;
    *v100 = v104;
    *(v80 + 16) = v79;
    v81 = *(a5 + 48);
    v106 = *(a5 + 32);
    v107 = v81;
    v108 = *(a5 + 64);
    v82 = *(a5 + 16);
    v104 = *a5;
    v105 = v82;
    sub_26C10B17C(&v104);

    v83 = *(a5 + 104);
    sub_26C0BB344(*(a5 + 88), *(a5 + 96));
    sub_26C102CA4(a5 + v72[10], type metadata accessor for PeerCertificateBundle);
    sub_26C0CF5C4(a5 + v72[11], &qword_28047AC38, &unk_26C14D110);
  }

  else
  {
    sub_26C0BB9B0(v76, v77);
    v84 = sub_26C148A7C();
    v85 = sub_26C148FFC();
    if (os_log_type_enabled(v84, v85))
    {
      v86 = swift_slowAlloc();
      *v86 = 0;
      _os_log_impl(&dword_26C0B5000, v84, v85, "certificate valid", v86, 2u);
      MEMORY[0x26D69C3A0](v86, -1, -1);
    }

    sub_26C102CA4(v99, type metadata accessor for HandshakeState.EncryptedExtensionsState);
  }
}

uint64_t sub_26C103B24(void *a1, uint64_t *a2, uint64_t *a3)
{
  v68 = a3;
  v4 = v3;
  v7 = type metadata accessor for HandshakeState.ServerCertificateState(0);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v60 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v60 - v12;
  v14 = type metadata accessor for HandshakeState(0);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v60 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v60 - v19;
  LODWORD(v71) = *a1;
  v21 = a1[2];
  v73 = a1[1];
  v74 = v21;
  v70 = a1[3];
  v22 = a2[1];
  v83 = *a2;
  v65 = a2[2];
  v64 = v4;
  sub_26C101588(v4, &v60 - v19, type metadata accessor for HandshakeState);
  v63 = v14;
  if (swift_getEnumCaseMultiPayload() == 4)
  {
    sub_26C102D04(v20, v13, type metadata accessor for HandshakeState.ServerCertificateState);
    v69 = v13;
    sub_26C101588(v13, v11, type metadata accessor for HandshakeState.ServerCertificateState);
    v66 = type metadata accessor for HandshakeState.ServerCertificateVerifyState(0);
    v23 = *(v66 + 36);
    v67 = v18;
    v24 = &v18[v23];
    *v24 = xmmword_26C14A540;
    v24[2] = 0;
    LOWORD(v78) = v71;
    *(&v78 + 1) = v73;
    *&v79 = v74;
    *(&v79 + 1) = v70;
    v25 = *(v11 + 2);
    v26 = *(v7 + 40);
    v27 = *(v7 + 44);
    sub_26C0BBAA4(v73, v74);
    sub_26C0BBAA4(v83, v22);
    v28 = v72;
    v29 = sub_26C0D07CC(&v78, v25, &v11[v27], &v76);
    v30 = v11;
    if (v28)
    {
      sub_26C0BB9B0(v83, v22);
      sub_26C102CA4(v11, type metadata accessor for HandshakeState.ServerCertificateState);
      sub_26C0BB9B0(v73, v74);
      v31 = *(&v76 + 1);
      v32 = v76;
      v33 = v77;
    }

    else
    {
      v34 = v29;
      sub_26C0BB9B0(v73, v74);
      if (v34)
      {
        v73 = v7;
        v74 = v22;
        v35 = v66;
        v36 = v67;
        v37 = &v67[*(v66 + 32)];
        v38 = *(v30 + 48);
        v80 = *(v30 + 32);
        v81 = v38;
        v82 = *(v30 + 64);
        v39 = v82;
        v40 = *(v30 + 16);
        v78 = *v30;
        v41 = v78;
        v79 = v40;
        *(v67 + 2) = v80;
        *(v36 + 48) = v38;
        *(v36 + 64) = v39;
        *v36 = v41;
        *(v36 + 16) = v40;
        *(v36 + 66) = *(v30 + 66);
        *(v36 + 68) = *(v30 + 68);
        v42 = v30 + v26;
        v43 = v36;
        v61 = v35[7];
        sub_26C101588(v42, v36 + v61, type metadata accessor for PeerCertificateBundle);
        v44 = *(v30 + 80);
        *v37 = *(v30 + 72);
        *(v37 + 1) = v44;
        v45 = *(v30 + 88);
        v62 = *(v30 + 96);
        v46 = *(v30 + 104);
        v47 = v24[1];
        v72 = *v24;
        v71 = v47;
        v70 = v24[2];
        sub_26C10B120(&v78, &v76);
        v60 = v44;

        v48 = v62;
        sub_26C0BB37C(v45, v62);
        sub_26C0BB344(v72, v71);
        *v24 = v45;
        v24[1] = v48;
        v24[2] = v46;
        *(v43 + v35[10]) = *(v30 + 112);
        sub_26C0CF314(v30 + v27, v43 + v35[11], &qword_28047AC38, &unk_26C14D110);
        v49 = v73;
        *(v43 + v35[12]) = *(v30 + *(v73 + 48));
        v50 = v74;
        *(v43 + v35[13]) = *(v30 + *(v49 + 52));
        v51 = v83;
        sub_26C108ABC(v83, v50, v65, &v75);
        sub_26C0BB9B0(v51, v50);
        sub_26C102CA4(v30, type metadata accessor for HandshakeState.ServerCertificateState);
        v58 = v64;
        sub_26C102CA4(v64, type metadata accessor for HandshakeState);
        sub_26C102CA4(v69, type metadata accessor for HandshakeState.ServerCertificateState);
        swift_storeEnumTagMultiPayload();
        return sub_26C102D04(v43, v58, type metadata accessor for HandshakeState);
      }

      sub_26C0BB9B0(v83, v22);
      if (qword_28047A758 != -1)
      {
        swift_once();
      }

      v52 = sub_26C148A9C();
      __swift_project_value_buffer(v52, qword_28047AC20);
      v53 = sub_26C148A7C();
      v54 = sub_26C14900C();
      if (os_log_type_enabled(v53, v54))
      {
        v55 = swift_slowAlloc();
        *v55 = 0;
        _os_log_impl(&dword_26C0B5000, v53, v54, "verification failed", v55, 2u);
        MEMORY[0x26D69C3A0](v55, -1, -1);
      }

      v78 = xmmword_26C14D0E0;
      v33 = 2;
      LOBYTE(v79) = 2;
      sub_26C0BBAF8();
      swift_willThrowTypedImpl();
      sub_26C102CA4(v30, type metadata accessor for HandshakeState.ServerCertificateState);
      v31 = 0;
      v32 = 12;
    }

    v56 = v24[2];
    sub_26C0BB344(*v24, v24[1]);
    result = sub_26C102CA4(v69, type metadata accessor for HandshakeState.ServerCertificateState);
    v57 = v68;
    *v68 = v32;
    v57[1] = v31;
    *(v57 + 16) = v33;
  }

  else
  {
    result = sub_26C102CA4(v20, type metadata accessor for HandshakeState);
    __break(1u);
  }

  return result;
}

uint64_t sub_26C1042A8@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, _BYTE *a3@<X3>, char *a4@<X8>)
{
  v215 = a3;
  v202 = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047AC40, &unk_26C14D320);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v196 = &v183 - v8;
  v208 = type metadata accessor for HandshakeState.EncryptedExtensionsState(0);
  v9 = *(*(v208 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v208);
  v197 = &v183 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = &v183 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047A930, qword_26C14C120);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v14 - 8);
  v191 = &v183 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v195 = &v183 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  *&v199 = &v183 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v198 = (&v183 - v23);
  v24 = MEMORY[0x28223BE20](v22);
  v186 = (&v183 - v25);
  MEMORY[0x28223BE20](v24);
  v185 = (&v183 - v26);
  v207 = sub_26C148BDC();
  v211 = *(v207 - 8);
  v27 = *(v211 + 64);
  v28 = MEMORY[0x28223BE20](v207);
  v193 = &v183 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x28223BE20](v28);
  v192 = &v183 - v31;
  v32 = MEMORY[0x28223BE20](v30);
  v205 = &v183 - v33;
  v34 = MEMORY[0x28223BE20](v32);
  v206 = &v183 - v35;
  v36 = MEMORY[0x28223BE20](v34);
  v189 = &v183 - v37;
  MEMORY[0x28223BE20](v36);
  v188 = &v183 - v38;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047AC58, &qword_26C14D288);
  v40 = *(*(v39 - 8) + 64);
  MEMORY[0x28223BE20](v39 - 8);
  v187 = &v183 - v41;
  v200 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047AB18, &unk_26C14C110);
  v204 = *(v200 - 8);
  v42 = *(v204 + 64);
  v43 = MEMORY[0x28223BE20](v200);
  v190 = &v183 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v43);
  v46 = &v183 - v45;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047AC38, &unk_26C14D110);
  v48 = *(*(v47 - 8) + 64);
  MEMORY[0x28223BE20](v47 - 8);
  v214 = &v183 - v49;
  ready = type metadata accessor for HandshakeState.ReadyState(0);
  v50 = *(*(ready - 8) + 64);
  v51 = MEMORY[0x28223BE20](ready);
  v194 = (&v183 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0));
  v53 = MEMORY[0x28223BE20](v51);
  v55 = &v183 - v54;
  MEMORY[0x28223BE20](v53);
  v184 = &v183 - v56;
  v209 = type metadata accessor for HandshakeState.ServerCertificateVerifyState(0);
  v57 = *(*(v209 - 8) + 64);
  MEMORY[0x28223BE20](v209);
  v210 = &v183 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = type metadata accessor for HandshakeState(0);
  v60 = *(*(v59 - 1) + 64);
  MEMORY[0x28223BE20](v59);
  v62 = &v183 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = *a1;
  v64 = a1[1];
  v65 = a1[2];
  v66 = a2[1];
  *&v212 = *a2;
  *(&v212 + 1) = v66;
  v213 = a2[2];
  sub_26C101588(v231, v62, type metadata accessor for HandshakeState);
  v201 = v59;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v68 = type metadata accessor for HandshakeState;
  if (EnumCaseMultiPayload == 3)
  {
    sub_26C101588(v62, v13, type metadata accessor for HandshakeState.EncryptedExtensionsState);
    v78 = v208;
    v79 = v211;
    if ((v13[*(v208 + 40)] & 1) != 0 || v13[*(v208 + 44)] == 1)
    {
      v217 = v63;
      v218 = v64;
      v219 = v65;
      v227 = v212;
      v228 = v213;
      v80 = v216;
      sub_26C106264(v55, &v220, v13, &v217, &v227, v77, &v225);
      if (v80)
      {
        v81 = v13;
LABEL_19:
        sub_26C102CA4(v81, type metadata accessor for HandshakeState.EncryptedExtensionsState);
        v108 = v226;
        v109 = v215;
        *v215 = v225;
        v109[16] = v108;
        return sub_26C102CA4(v62, type metadata accessor for HandshakeState.EncryptedExtensionsState);
      }

      v216 = 0;
      v214 = *(&v220 + 1);
      v215 = v220;
      v213 = v221;
      v84 = *(ready + 44);
      v59 = v198;
      sub_26C105C04(v198);
      v85 = *(v79 + 48);
      v86 = v207;
      if (v85(v59, 1, v207) == 1)
      {
        *&v199 = v59;
      }

      else
      {
        v87 = *(v79 + 32);
        v79 += 32;
        v88 = v59;
        v59 = v87;
        (v87)(v206, v88, v86);
        v89 = v199;
        sub_26C105F34(v199);
        v86 = v207;
        if (v85(v89, 1, v207) != 1)
        {
          v90 = v231;
          sub_26C102CA4(v231, type metadata accessor for HandshakeState);
          *(&v212 + 1) = type metadata accessor for HandshakeState.EncryptedExtensionsState;
          sub_26C102CA4(v13, type metadata accessor for HandshakeState.EncryptedExtensionsState);
          (v59)(v205, v89, v86);
          v91 = v59;
          *&v212 = v59;
          sub_26C102D04(v55, v90, type metadata accessor for HandshakeState.ReadyState);
          swift_storeEnumTagMultiPayload();
          v92 = type metadata accessor for PartialHandshakeResult(0);
          v93 = v92[5];
          v94 = v86;
          v95 = v202;
          v91(&v202[v93], v206, v94);
          v96 = type metadata accessor for EncryptionLevel(0);
          swift_storeEnumTagMultiPayload();
          v97 = *(*(v96 - 8) + 56);
          v97(&v95[v93], 0, 1, v96);
          v98 = v92[6];
          (v212)(&v95[v98], v205, v94);
          swift_storeEnumTagMultiPayload();
          v97(&v95[v98], 0, 1, v96);
          v99 = v214;
          *v95 = v215;
          *(v95 + 1) = v99;
          *(v95 + 2) = v213;
          *&v95[v92[7]] = xmmword_26C14A540;
          v100 = v62;
          v101 = &v230;
          return sub_26C102CA4(v100, *(v101 - 32));
        }

        (*(v211 + 8))(v206, v86);
      }

      sub_26C0CF5C4(v199, &qword_28047A930, qword_26C14C120);
      __break(1u);
    }

    else
    {
      v102 = v211;
      sub_26C102CA4(v13, type metadata accessor for HandshakeState.EncryptedExtensionsState);
      v79 = v197;
      sub_26C101588(v62, v197, type metadata accessor for HandshakeState.EncryptedExtensionsState);
      v103 = v79 + *(v78 + 48);
      v86 = v196;
      sub_26C0CF314(v103, v196, &qword_28047AC40, &unk_26C14D320);
      v104 = type metadata accessor for PAKEClientState(0);
      if ((*(*(v104 - 8) + 48))(v86, 1, v104) != 1)
      {
        sub_26C0CF5C4(v86, &qword_28047AC40, &unk_26C14D320);
        v217 = v63;
        v218 = v64;
        v219 = v65;
        v227 = v212;
        v228 = v213;
        v59 = v194;
        v105 = v216;
        sub_26C106264(v194, &v220, v79, &v217, &v227, v106, &v225);
        v107 = v195;
        if (v105)
        {
          v81 = v79;
          goto LABEL_19;
        }

        v216 = 0;
        v213 = *(&v220 + 1);
        v214 = v220;
        *(&v212 + 1) = v221;
        v125 = *(ready + 44);
        sub_26C105C04(v195);
        v126 = *(v102 + 48);
        v127 = v207;
        v128 = v126(v107, 1, v207);
        v129 = v107;
        if (v128 == 1)
        {
LABEL_50:
          v191 = v129;
LABEL_52:
          sub_26C0CF5C4(v191, &qword_28047A930, qword_26C14C120);
          __break(1u);
          goto LABEL_53;
        }

        v215 = *(v102 + 32);
        (v215)(v192, v107, v127);
        v130 = v191;
        sub_26C105F34(v191);
        v131 = v207;
        if (v126(v130, 1, v207) == 1)
        {
          (*(v102 + 8))(v192, v131);
          goto LABEL_52;
        }

        v132 = v231;
        sub_26C102CA4(v231, type metadata accessor for HandshakeState);
        *&v212 = type metadata accessor for HandshakeState.EncryptedExtensionsState;
        sub_26C102CA4(v79, type metadata accessor for HandshakeState.EncryptedExtensionsState);
        v133 = v130;
        v134 = v215;
        (v215)(v193, v133, v131);
        sub_26C102D04(v59, v132, type metadata accessor for HandshakeState.ReadyState);
        swift_storeEnumTagMultiPayload();
        v135 = v131;
        v136 = type metadata accessor for PartialHandshakeResult(0);
        v137 = v136[5];
        v138 = v202;
        v134(&v202[v137], v192, v135);
        v139 = type metadata accessor for EncryptionLevel(0);
        swift_storeEnumTagMultiPayload();
        v140 = *(*(v139 - 8) + 56);
        v140(&v138[v137], 0, 1, v139);
        v141 = v136[6];
        (v215)(&v138[v141], v193, v135);
        swift_storeEnumTagMultiPayload();
        v140(&v138[v141], 0, 1, v139);
        v142 = v213;
        *v138 = v214;
        *(v138 + 1) = v142;
        *(v138 + 2) = *(&v212 + 1);
        *&v138[v136[7]] = xmmword_26C14A540;
        v100 = v62;
        v101 = &v229;
        return sub_26C102CA4(v100, *(v101 - 32));
      }
    }

    sub_26C102CA4(v79, type metadata accessor for HandshakeState.EncryptedExtensionsState);
    sub_26C0CF5C4(v86, &qword_28047AC40, &unk_26C14D320);
    v68 = type metadata accessor for HandshakeState.EncryptedExtensionsState;
    goto LABEL_49;
  }

  if (EnumCaseMultiPayload != 5)
  {
LABEL_49:
    sub_26C102CA4(v62, v68);
    __break(1u);
    goto LABEL_50;
  }

  v69 = v210;
  sub_26C102D04(v62, v210, type metadata accessor for HandshakeState.ServerCertificateVerifyState);
  v70 = v214;
  sub_26C0CF314(v69 + *(v209 + 44), v214, &qword_28047AC38, &unk_26C14D110);
  v71 = v216;
  sub_26C108ECC(&v220, v46);
  if (v71)
  {
    sub_26C0CF5C4(v70, &qword_28047AC38, &unk_26C14D110);
    v73 = *(&v220 + 1);
    v72 = v220;
    v74 = v221;
    v75 = v215;
LABEL_5:
    result = sub_26C102CA4(v69, type metadata accessor for HandshakeState.ServerCertificateVerifyState);
    *v75 = v72;
    v75[1] = v73;
    *(v75 + 16) = v74;
    return result;
  }

  v82 = v64 >> 62;
  if ((v64 >> 62) > 1)
  {
    if (v82 == 2)
    {
      v83 = *(v63 + 24);
    }

    else
    {
      v83 = 0;
    }
  }

  else if (v82)
  {
    v83 = v63 >> 32;
  }

  else
  {
    v83 = BYTE6(v64);
  }

  if (v83 < v65)
  {
    __break(1u);
    goto LABEL_44;
  }

  *&v220 = sub_26C14889C();
  *(&v220 + 1) = v110;
  sub_26C0FF1C4(&qword_28047ABF0, &qword_28047AB18, &unk_26C14C110);
  sub_26C0BE710();
  v111 = v200;
  v112 = sub_26C148C1C();
  sub_26C0BB9B0(v220, *(&v220 + 1));
  v113 = *(v204 + 8);
  v113(v46, v111);
  if ((v112 & 1) == 0)
  {
    if (qword_28047A758 == -1)
    {
LABEL_30:
      v120 = sub_26C148A9C();
      __swift_project_value_buffer(v120, qword_28047AC20);
      v121 = sub_26C148A7C();
      v122 = sub_26C14900C();
      v123 = os_log_type_enabled(v121, v122);
      v75 = v215;
      if (v123)
      {
        v124 = swift_slowAlloc();
        *v124 = 0;
        _os_log_impl(&dword_26C0B5000, v121, v122, "invalid server finished payload", v124, 2u);
        MEMORY[0x26D69C3A0](v124, -1, -1);
      }

      v220 = xmmword_26C14A8E0;
      v74 = 2;
      LOBYTE(v221) = 2;
      sub_26C0BBAF8();
      swift_willThrowTypedImpl();
      sub_26C0CF5C4(v214, &qword_28047AC38, &unk_26C14D110);
      v73 = 0;
      v72 = 6;
      goto LABEL_5;
    }

LABEL_44:
    swift_once();
    goto LABEL_30;
  }

  sub_26C109E94(v212, *(&v212 + 1), v213, &v220);
  v114 = v190;
  sub_26C1094C4(&v220, v190);
  *(&v221 + 1) = v111;
  *&v222 = sub_26C0FF1C4(&qword_28047AB40, &qword_28047AB18, &unk_26C14C110);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v220);
  (*(v204 + 16))(boxed_opaque_existential_1, v114, v111);
  __swift_project_boxed_opaque_existential_1(&v220, *(&v221 + 1));
  sub_26C14880C();
  v113(v114, v111);
  v116 = v217;
  v117 = v218;
  __swift_destroy_boxed_opaque_existential_1(&v220);
  v118 = 0;
  v227 = xmmword_26C14A1B0;
  v228 = 0;
  v119 = v117 >> 62;
  if ((v117 >> 62) > 1)
  {
    if (v119 != 2)
    {
      goto LABEL_40;
    }

    v118 = *(v116 + 16);
  }

  else
  {
    if (!v119)
    {
      goto LABEL_40;
    }

    v118 = v116;
  }

LABEL_40:
  sub_26C100BCC(v116, v117, v118);
  sub_26C0BB9B0(v116, v117);
  v143 = v214;
  sub_26C109AA4(v227, *(&v227 + 1), v228, &v225);
  v216 = 0;
  sub_26C0BB9B0(v116, v117);
  v144 = *(v69 + 48);
  v222 = *(v69 + 32);
  v223 = v144;
  v224 = *(v69 + 64);
  v145 = *(v69 + 16);
  v220 = *v69;
  v221 = v145;
  LODWORD(v213) = *(v69 + 66);
  LODWORD(v215) = *(v69 + 68);
  v146 = v209;
  v147 = v187;
  sub_26C101588(v69 + *(v209 + 28), v187, type metadata accessor for PeerCertificateBundle);
  v148 = type metadata accessor for PeerCertificateBundle(0);
  v149 = *(*(v148 - 8) + 56);
  v149(v147, 0, 1, v148);
  v150 = v146[9];
  v151 = (v69 + v146[8]);
  v152 = v151[1];
  v208 = *v151;
  v153 = v69 + v150;
  v155 = *(v69 + v150);
  v154 = *(v69 + v150 + 8);
  v206 = v155;
  v205 = v154;
  v204 = *(v153 + 16);
  LODWORD(v212) = *(v69 + v146[10]);
  v156 = ready;
  *(&v212 + 1) = *(ready + 44);
  v157 = v184;
  sub_26C0CF55C(v143, &v184[*(&v212 + 1)], &qword_28047AC38, &unk_26C14D110);
  v158 = v146[13];
  LODWORD(v209) = *(v69 + v146[12]);
  LODWORD(v214) = *(v69 + v158);
  *(v157 + 70) = 0;
  *(v157 + 72) = 1;
  v200 = v156[7];
  v149(v157 + v200, 1, 1, v148);
  v159 = (v157 + v156[8]);
  v160 = (v157 + v156[9]);
  v199 = xmmword_26C14A540;
  *v160 = xmmword_26C14A540;
  v160[2] = 0;
  v161 = v157 + v156[12];
  *v161 = 0;
  *(v161 + 2) = 1;
  v162 = v223;
  *(v157 + 32) = v222;
  *(v157 + 48) = v162;
  *(v157 + 64) = v224;
  v163 = v221;
  *v157 = v220;
  *(v157 + 16) = v163;
  *(v157 + 66) = v213;
  *(v157 + 68) = 0;
  *(v157 + 70) = v215;
  *(v157 + 72) = 0;
  sub_26C10B120(&v220, &v217);
  v164 = v152;

  v165 = v206;
  v166 = v205;
  v167 = v204;
  sub_26C0BB37C(v206, v205);
  sub_26C0FF20C(v187, v157 + v200, &qword_28047AC58, &qword_26C14D288);
  *v159 = v208;
  v159[1] = v164;
  v168 = v160[2];
  sub_26C0BB344(*v160, v160[1]);
  *v160 = v165;
  v160[1] = v166;
  v160[2] = v167;
  *(v157 + v156[10]) = v212;
  *v161 = 0;
  *(v161 + 2) = 1;
  *(v157 + v156[13]) = 0;
  *(v157 + v156[14]) = v209;
  *(v157 + v156[15]) = v214;
  v214 = *(&v227 + 1);
  v215 = v227;
  v213 = v228;
  v59 = v185;
  sub_26C105C04(v185);
  v169 = v211;
  v170 = *(v211 + 48);
  v171 = v207;
  if (v170(v59, 1, v207) == 1)
  {
LABEL_53:
    v186 = v59;
    goto LABEL_55;
  }

  v172 = *(v169 + 32);
  v172(v188, v59, v171);
  v173 = v186;
  sub_26C105F34(v186);
  v174 = v207;
  if (v170(v173, 1, v207) != 1)
  {
    v175 = v231;
    sub_26C102CA4(v231, type metadata accessor for HandshakeState);
    sub_26C102CA4(v210, type metadata accessor for HandshakeState.ServerCertificateVerifyState);
    v172(v189, v173, v174);
    sub_26C102D04(v157, v175, type metadata accessor for HandshakeState.ReadyState);
    swift_storeEnumTagMultiPayload();
    v176 = type metadata accessor for PartialHandshakeResult(0);
    v177 = v176[5];
    v178 = v202;
    v172(&v202[v177], v188, v174);
    v179 = type metadata accessor for EncryptionLevel(0);
    swift_storeEnumTagMultiPayload();
    v180 = *(*(v179 - 8) + 56);
    v180(&v178[v177], 0, 1, v179);
    v181 = v176[6];
    v172(&v178[v181], v189, v174);
    swift_storeEnumTagMultiPayload();
    result = (v180)(&v178[v181], 0, 1, v179);
    v182 = v214;
    *v178 = v215;
    *(v178 + 1) = v182;
    *(v178 + 2) = v213;
    *&v178[v176[7]] = v199;
    return result;
  }

  (*(v169 + 8))(v188, v174);
LABEL_55:
  result = sub_26C0CF5C4(v186, &qword_28047A930, qword_26C14C120);
  __break(1u);
  return result;
}

uint64_t sub_26C105C04@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047A968, &unk_26C14A810);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v24 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047A970, "DG");
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v24 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047A870, &qword_26C14A5A0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v24 - v14;
  sub_26C0CF314(v2, &v24 - v14, &qword_28047A870, &qword_26C14A5A0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      sub_26C0CF55C(v15, v7, &qword_28047A968, &unk_26C14A810);
      v17 = sub_26C148BDC();
      v18 = *(v17 - 8);
      (*(v18 + 16))(a1, v7, v17);
      sub_26C0CF5C4(v7, &qword_28047A968, &unk_26C14A810);
      return (*(v18 + 56))(a1, 0, 1, v17);
    }

    goto LABEL_6;
  }

  if (EnumCaseMultiPayload < 2)
  {
    sub_26C0CF5C4(v15, &qword_28047A870, &qword_26C14A5A0);
LABEL_6:
    v20 = sub_26C148BDC();
    return (*(*(v20 - 8) + 56))(a1, 1, 1, v20);
  }

  sub_26C0CF55C(v15, v11, &qword_28047A970, "DG");
  v21 = *(v8 + 48);
  v22 = sub_26C148BDC();
  v23 = *(v22 - 8);
  (*(v23 + 16))(a1, &v11[v21], v22);
  sub_26C0CF5C4(v11, &qword_28047A970, "DG");
  return (*(v23 + 56))(a1, 0, 1, v22);
}

uint64_t sub_26C105F34@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047A968, &unk_26C14A810);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v25 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047A970, "DG");
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v25 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047A870, &qword_26C14A5A0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v25 - v14;
  sub_26C0CF314(v2, &v25 - v14, &qword_28047A870, &qword_26C14A5A0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      sub_26C0CF55C(v15, v7, &qword_28047A968, &unk_26C14A810);
      v17 = *(v4 + 36);
      v18 = sub_26C148BDC();
      v19 = *(v18 - 8);
      (*(v19 + 16))(a1, &v7[v17], v18);
      sub_26C0CF5C4(v7, &qword_28047A968, &unk_26C14A810);
      return (*(v19 + 56))(a1, 0, 1, v18);
    }

    goto LABEL_6;
  }

  if (EnumCaseMultiPayload < 2)
  {
    sub_26C0CF5C4(v15, &qword_28047A870, &qword_26C14A5A0);
LABEL_6:
    v21 = sub_26C148BDC();
    return (*(*(v21 - 8) + 56))(a1, 1, 1, v21);
  }

  sub_26C0CF55C(v15, v11, &qword_28047A970, "DG");
  v22 = *(v8 + 52);
  v23 = sub_26C148BDC();
  v24 = *(v23 - 8);
  (*(v24 + 16))(a1, &v11[v22], v23);
  sub_26C0CF5C4(v11, &qword_28047A970, "DG");
  return (*(v24 + 56))(a1, 0, 1, v23);
}

double sub_26C106264(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t *a4, uint64_t *a5, uint64_t a6, __int128 *a7)
{
  v173 = a7;
  v175 = a3;
  v151 = a2;
  v150 = a1;
  v164 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047AB18, &unk_26C14C110);
  v163 = *(v164 - 8);
  v9 = *(v163 + 64);
  v10 = MEMORY[0x28223BE20](v164);
  v154 = &v149 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v171 = &v149 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047AC38, &unk_26C14D110);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v153 = &v149 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v172 = &v149 - v17;
  v18 = type metadata accessor for HandshakeState.EncryptedExtensionsState.SessionData(0);
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  v21 = MEMORY[0x28223BE20](v18);
  v159 = &v149 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v21);
  v168 = &v149 - v24;
  v25 = MEMORY[0x28223BE20](v23);
  v27 = (&v149 - v26);
  MEMORY[0x28223BE20](v25);
  v169 = &v149 - v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047AC48, "~;");
  v30 = *(*(v29 - 8) + 64);
  v31 = MEMORY[0x28223BE20](v29 - 8);
  v33 = &v149 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31);
  v35 = &v149 - v34;
  v167 = type metadata accessor for SessionTicket();
  v36 = *(*(v167 - 1) + 64);
  v37 = MEMORY[0x28223BE20](v167);
  v158 = &v149 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v37);
  v40 = &v149 - v39;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047AC58, &qword_26C14D288);
  v42 = *(*(v41 - 8) + 64);
  v43 = MEMORY[0x28223BE20](v41 - 8);
  v152 = &v149 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v43);
  v186 = &v149 - v45;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047AC40, &unk_26C14D320);
  v47 = *(*(v46 - 8) + 64);
  v48 = MEMORY[0x28223BE20](v46 - 8);
  v149 = &v149 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v48);
  v51 = &v149 - v50;
  v52 = a4[1];
  v162 = *a4;
  v161 = v52;
  v160 = a4[2];
  v53 = v175;
  v54 = a5[1];
  v157 = *a5;
  v156 = v54;
  v155 = a5[2];
  v55 = type metadata accessor for HandshakeState.EncryptedExtensionsState(0);
  v56 = v55;
  v57 = *(v53 + v55[11]);
  v174 = v55;
  if ((v57 & 1) != 0 || (*(v53 + v55[10]) & 1) != 0 || (sub_26C0CF314(v53 + v55[12], v51, &qword_28047AC40, &unk_26C14D320), v58 = type metadata accessor for PAKEClientState(0), v59 = (*(*(v58 - 8) + 48))(v51, 1, v58), v56 = v174, sub_26C0CF5C4(v51, &qword_28047AC40, &unk_26C14D320), v60 = v59 == 1, v53 = v175, !v60))
  {
    v67 = type metadata accessor for PeerCertificateBundle(0);
    v68 = *(*(v67 - 8) + 56);
    v166 = v67;
    v165 = v68;
    (v68)(v186, 1, 1);
    v69 = v53;
    v70 = v56[5];
    sub_26C0CF314(v69 + v70, v35, &qword_28047AC48, "~;");
    v71 = *(v19 + 48);
    if (v71(v35, 1, v18) == 1)
    {
      sub_26C0CF5C4(v35, &qword_28047AC48, "~;");
    }

    else
    {
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        v72 = v186;
        sub_26C0CF5C4(v186, &qword_28047AC58, &qword_26C14D288);
        sub_26C102D04(v35, v40, type metadata accessor for SessionTicket);
        v73 = *&v40[v167[11]];
        v74 = *&v40[v167[12]];
        sub_26C101588(&v40[v167[14]], v72, type metadata accessor for PeerCertificateBundle);
        v75 = v40;
        v76 = v74;
        sub_26C102CA4(v75, type metadata accessor for SessionTicket);
        LODWORD(v169) = 1;
        v165(v72, 0, 1, v166);
        v77 = 0;
        v78 = 0;
        LODWORD(v168) = 0;
        v79 = v172;
        v80 = v175;
LABEL_17:
        v84 = v171;
        goto LABEL_33;
      }

      sub_26C102CA4(v35, type metadata accessor for HandshakeState.EncryptedExtensionsState.SessionData);
    }

    v81 = v175 + v70;
    v80 = v175;
    sub_26C0CF314(v81, v33, &qword_28047AC48, "~;");
    v82 = v71(v33, 1, v18);
    v83 = v169;
    if (v82 == 1)
    {
      sub_26C0CF5C4(v33, &qword_28047AC48, "~;");
      v73 = 0;
      v78 = 0;
      v76 = 0;
      v77 = 1;
      LODWORD(v169) = 1;
      LODWORD(v168) = 1;
      v79 = v172;
      goto LABEL_17;
    }

    sub_26C0CF5C4(v186, &qword_28047AC58, &qword_26C14D288);
    sub_26C102D04(v33, v83, type metadata accessor for HandshakeState.EncryptedExtensionsState.SessionData);
    sub_26C101588(v83, v27, type metadata accessor for HandshakeState.EncryptedExtensionsState.SessionData);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v79 = v172;
    if (EnumCaseMultiPayload)
    {
      v86 = v159;
      if (EnumCaseMultiPayload == 1)
      {
        v73 = *v27;
      }

      else
      {
        v88 = v27;
        v89 = v158;
        sub_26C102D04(v88, v158, type metadata accessor for SessionTicket);
        v73 = *(v89 + v167[11]);
        sub_26C102CA4(v89, type metadata accessor for SessionTicket);
      }
    }

    else
    {
      v73 = *v27;
      v87 = *(v27 + 2);

      v86 = v159;
    }

    sub_26C101588(v83, v168, type metadata accessor for HandshakeState.EncryptedExtensionsState.SessionData);
    v90 = swift_getEnumCaseMultiPayload();
    v84 = v171;
    if (v90)
    {
      if (v90 == 1)
      {
        v76 = 0;
        LODWORD(v168) = 1;
LABEL_29:
        sub_26C102D04(v83, v86, type metadata accessor for HandshakeState.EncryptedExtensionsState.SessionData);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v78 = *(v86 + 2);
          v93 = *(v86 + 4);
        }

        else
        {
          sub_26C102CA4(v86, type metadata accessor for HandshakeState.EncryptedExtensionsState.SessionData);
          v78 = 0;
          v93 = 1;
        }

        LODWORD(v169) = v93;
        v165(v186, 1, 1, v166);
        v77 = 0;
LABEL_33:
        sub_26C0CF314(v80 + v174[9], v79, &qword_28047AC38, &unk_26C14D110);
        v94 = v170;
        sub_26C108ECC(&v177, v84);
        if (v94)
        {
          sub_26C0CF5C4(v79, &qword_28047AC38, &unk_26C14D110);
          sub_26C0CF5C4(v186, &qword_28047AC58, &qword_26C14D288);
          v95 = v178;
          v66 = v177;
LABEL_35:
          v96 = v173;
          *v173 = v66;
          *(v96 + 16) = v95;
          return *&v66;
        }

        v97 = v161 >> 62;
        if ((v161 >> 62) > 1)
        {
          v98 = v160;
          if (v97 == 2)
          {
            v99 = *(v162 + 24);
          }

          else
          {
            v99 = 0;
          }
        }

        else
        {
          v98 = v160;
          if (v97)
          {
            v99 = v162 >> 32;
          }

          else
          {
            v99 = BYTE6(v161);
          }
        }

        if (v99 < v98)
        {
          __break(1u);
        }

        else
        {
          LODWORD(v171) = v78;
          v100 = v76;
          LODWORD(v172) = v73;
          *&v177 = sub_26C14889C();
          *(&v177 + 1) = v101;
          sub_26C0FF1C4(&qword_28047ABF0, &qword_28047AB18, &unk_26C14C110);
          sub_26C0BE710();
          v102 = v164;
          v103 = sub_26C148C1C();
          sub_26C0BB9B0(v177, *(&v177 + 1));
          v104 = *(v163 + 8);
          v104(v84, v102);
          if (v103)
          {
            sub_26C109E94(v157, v156, v155, &v177);
            v105 = v154;
            sub_26C1094C4(&v177, v154);
            v106 = v105;
            v107 = v164;
            *(&v178 + 1) = v164;
            v170 = 0;
            *&v179 = sub_26C0FF1C4(&qword_28047AB40, &qword_28047AB18, &unk_26C14C110);
            boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v177);
            (*(v163 + 16))(boxed_opaque_existential_1, v106, v107);
            __swift_project_boxed_opaque_existential_1(&v177, *(&v178 + 1));
            v109 = v170;
            sub_26C14880C();
            v170 = v109;
            v104(v154, v107);
            v110 = v176[0];
            v111 = v176[1];
            __swift_destroy_boxed_opaque_existential_1(&v177);
            v112 = 0;
            v184 = xmmword_26C14A1B0;
            v185 = 0;
            v113 = v111 >> 62;
            if ((v111 >> 62) > 1)
            {
              v114 = v100;
              if (v113 == 2)
              {
                v112 = *(v110 + 16);

                goto LABEL_54;
              }
            }

            else
            {
              v114 = v100;
              if (v113)
              {
                v112 = v110;
LABEL_54:
              }
            }

            sub_26C100BCC(v110, v111, v112);
            sub_26C0BB9B0(v110, v111);
            v120 = v184;
            v121 = v170;
            sub_26C109AA4(v184, *(&v184 + 1), v185, &v182);
            if (!v121)
            {
              v173 = 0;
              sub_26C0BB9B0(v110, v111);
              v122 = v175;
              v123 = *(v175 + 48);
              v179 = *(v175 + 32);
              v180 = v123;
              v181 = *(v175 + 64);
              v124 = *(v175 + 16);
              v177 = *v175;
              v178 = v124;
              sub_26C0CF55C(v186, v152, &qword_28047AC58, &qword_26C14D288);
              v125 = v174;
              v126 = v174[7];
              v127 = (v122 + v174[6]);
              v128 = v127[1];
              v167 = *v127;
              v162 = v128;
              LODWORD(v164) = v114;
              v130 = *(v122 + v126 + 8);
              v163 = *(v122 + v126);
              v129 = v163;
              v131 = *(v122 + v126 + 16);
              LODWORD(v170) = *(v122 + v174[8]);
              sub_26C0CF55C(v79, v153, &qword_28047AC38, &unk_26C14D110);
              LODWORD(v186) = *(v122 + v125[10]);
              v132 = v125[12];
              LODWORD(v174) = *(v122 + v125[13]);
              v133 = v122 + v132;
              v134 = v149;
              sub_26C0CF314(v133, v149, &qword_28047AC40, &unk_26C14D320);
              v135 = type metadata accessor for PAKEClientState(0);
              LODWORD(v175) = (*(*(v135 - 8) + 48))(v134, 1, v135) != 1;
              sub_26C10B120(&v177, v176);

              sub_26C0BB37C(v129, v130);
              sub_26C0CF5C4(v134, &qword_28047AC40, &unk_26C14D320);
              v136 = v150;
              *(v150 + 70) = 0;
              *(v136 + 72) = 1;
              ready = type metadata accessor for HandshakeState.ReadyState(0);
              v138 = ready[7];
              v165(v136 + v138, 1, 1, v166);
              v139 = (v136 + ready[8]);
              v140 = (v136 + ready[9]);
              *v140 = xmmword_26C14A540;
              v140[2] = 0;
              v141 = v136 + ready[12];
              *v141 = 0;
              *(v141 + 2) = 1;
              v142 = v180;
              *(v136 + 32) = v179;
              *(v136 + 48) = v142;
              *(v136 + 64) = v181;
              v143 = v178;
              *v136 = v177;
              *(v136 + 16) = v143;
              *(v136 + 66) = v172;
              *(v136 + 68) = v77;
              *(v136 + 70) = v164;
              *(v136 + 72) = v168;
              sub_26C0FF20C(v152, v136 + v138, &qword_28047AC58, &qword_26C14D288);
              v144 = v162;
              *v139 = v167;
              v139[1] = v144;
              v145 = v140[2];
              sub_26C0BB344(*v140, v140[1]);
              *v140 = v163;
              v140[1] = v130;
              v140[2] = v131;
              *(v136 + ready[10]) = v170;
              sub_26C0CF55C(v153, v136 + ready[11], &qword_28047AC38, &unk_26C14D110);
              *v141 = v171;
              *(v141 + 2) = v169;
              *(v136 + ready[13]) = v186;
              *(v136 + ready[14]) = v174;
              *(v136 + ready[15]) = v175;
              v146 = v185;
              *&v66 = v184;
              v147 = v151;
              *v151 = v184;
              *(v147 + 2) = v146;
              return *&v66;
            }

            sub_26C0BB9B0(v110, v111);
            sub_26C0CF5C4(v79, &qword_28047AC38, &unk_26C14D110);
            sub_26C0CF5C4(v186, &qword_28047AC58, &qword_26C14D288);
            sub_26C0BB9B0(v120, *(&v120 + 1));
            v95 = v183;
            v66 = v182;
            goto LABEL_35;
          }

          if (qword_28047A758 == -1)
          {
            goto LABEL_49;
          }
        }

        swift_once();
LABEL_49:
        v115 = sub_26C148A9C();
        __swift_project_value_buffer(v115, qword_28047AC20);
        v116 = sub_26C148A7C();
        v117 = sub_26C14900C();
        if (os_log_type_enabled(v116, v117))
        {
          v118 = swift_slowAlloc();
          *v118 = 0;
          _os_log_impl(&dword_26C0B5000, v116, v117, "invalid server finished payload", v118, 2u);
          MEMORY[0x26D69C3A0](v118, -1, -1);
        }

        v119 = v173;
        *v173 = xmmword_26C14A8E0;
        *(v119 + 16) = 2;
        v177 = xmmword_26C14A8E0;
        LOBYTE(v178) = 2;
        sub_26C0BBAF8();
        swift_willThrowTypedImpl();
        sub_26C0CF5C4(v79, &qword_28047AC38, &unk_26C14D110);
        sub_26C0CF5C4(v186, &qword_28047AC58, &qword_26C14D288);
        return *&v66;
      }

      v92 = v158;
      sub_26C102D04(v168, v158, type metadata accessor for SessionTicket);
      v76 = *(v92 + v167[12]);
      sub_26C102CA4(v92, type metadata accessor for SessionTicket);
    }

    else
    {
      v76 = *(v168 + 2);
      v91 = *(v168 + 16);
    }

    LODWORD(v168) = 0;
    goto LABEL_29;
  }

  if (qword_28047A758 != -1)
  {
    swift_once();
  }

  v61 = sub_26C148A9C();
  __swift_project_value_buffer(v61, qword_28047AC20);
  v62 = sub_26C148A7C();
  v63 = sub_26C14900C();
  if (os_log_type_enabled(v62, v63))
  {
    v64 = swift_slowAlloc();
    *v64 = 0;
    _os_log_impl(&dword_26C0B5000, v62, v63, "received server finished message while not resuming session or using an external pre shared key", v64, 2u);
    MEMORY[0x26D69C3A0](v64, -1, -1);
  }

  v65 = v173;
  *v173 = xmmword_26C14A560;
  *(v65 + 16) = 2;
  v177 = xmmword_26C14A560;
  LOBYTE(v178) = 2;
  sub_26C0BBAF8();
  swift_willThrowTypedImpl();
  return *&v66;
}

uint64_t sub_26C1075F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v7 = v4;
  v39 = a4;
  v10 = type metadata accessor for SessionTicket();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  ready = type metadata accessor for HandshakeState.ReadyState(0);
  v15 = *(*(ready - 8) + 64);
  MEMORY[0x28223BE20](ready - 8);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for HandshakeState(0);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18);
  v21 = &v37 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26C101588(v7, v21, type metadata accessor for HandshakeState);
  if (swift_getEnumCaseMultiPayload() < 6)
  {
    result = sub_26C102CA4(v21, type metadata accessor for HandshakeState);
    __break(1u);
  }

  else
  {
    sub_26C102D04(v21, v17, type metadata accessor for HandshakeState.ReadyState);
    sub_26C107984(a1, a2, &v37, v13);
    if (v5)
    {
      result = sub_26C102CA4(v17, type metadata accessor for HandshakeState.ReadyState);
      v23 = v38;
      *a3 = v37;
      *(a3 + 16) = v23;
    }

    else
    {
      if (qword_28047A758 != -1)
      {
        swift_once();
      }

      v24 = sub_26C148A9C();
      __swift_project_value_buffer(v24, qword_28047AC20);
      v25 = sub_26C148A7C();
      v26 = sub_26C14901C();
      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        *v27 = 0;
        _os_log_impl(&dword_26C0B5000, v25, v26, "generated new session ticket", v27, 2u);
        MEMORY[0x26D69C3A0](v27, -1, -1);
      }

      v28 = type metadata accessor for PartialHandshakeResult(0);
      v29 = v28[5];
      v30 = type metadata accessor for EncryptionLevel(0);
      v31 = *(*(v30 - 8) + 56);
      v32 = v39;
      v31(v39 + v29, 1, 1, v30);
      v31(v32 + v28[6], 1, 1, v30);
      v33 = sub_26C11F5FC();
      v35 = v34;
      sub_26C102CA4(v13, type metadata accessor for SessionTicket);
      result = sub_26C102CA4(v17, type metadata accessor for HandshakeState.ReadyState);
      *v32 = xmmword_26C14A540;
      *(v32 + 16) = 0;
      v36 = (v32 + v28[7]);
      *v36 = v33;
      v36[1] = v35;
    }
  }

  return result;
}

double sub_26C107984@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __int128 *a3@<X2>, char *a4@<X8>)
{
  v141 = a3;
  v128 = a2;
  v134 = a4;
  v131 = sub_26C14896C();
  v130 = *(v131 - 8);
  v5 = v130[8];
  MEMORY[0x28223BE20](v131);
  v129 = &v118 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047AC58, &qword_26C14D288);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v139 = &v118 - v9;
  v138 = type metadata accessor for PeerCertificateBundle(0);
  isa = v138[-1].isa;
  v10 = *(isa + 8);
  v11 = MEMORY[0x28223BE20](v138);
  v135 = &v118 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v136 = &v118 - v13;
  v14 = sub_26C148BDC();
  v140 = *(v14 - 8);
  v15 = *(v140 + 64);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v118 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v118 - v19;
  v21 = *(a1 + 4);
  LODWORD(v125) = *a1;
  LODWORD(v127) = v21;
  v23 = *(a1 + 8);
  v22 = *(a1 + 16);
  v24 = *(a1 + 24);
  v132 = *(a1 + 32);
  v25 = *(a1 + 48);
  v133 = *(a1 + 40);
  v126 = v25;
  v26 = *(a1 + 56);
  ready = type metadata accessor for HandshakeState.ReadyState(0);
  v28 = v153 + ready[11];
  v29 = v142;
  sub_26C10A294(v23, v22, v24, &v146, v20);
  if (v29)
  {
    v30 = v147;
    result = *&v146;
    v32 = v141;
    *v141 = v146;
    *(v32 + 16) = v30;
    return result;
  }

  v121 = v22;
  v123 = v26;
  v122 = v18;
  v124 = v20;
  v142 = v14;
  v33 = v153;
  v34 = v139;
  sub_26C0CF314(v153 + ready[7], v139, &qword_28047AC58, &qword_26C14D288);
  if ((*(isa + 6))(v34, 1, v138) == 1)
  {
    sub_26C0CF5C4(v34, &qword_28047AC58, &qword_26C14D288);
    v35 = v141;
    *v141 = xmmword_26C14D100;
    *(v35 + 16) = 2;
    v146 = xmmword_26C14D100;
    LOBYTE(v147) = 2;
    sub_26C0BBAF8();
    swift_willThrowTypedImpl();
    (*(v140 + 8))(v124, v142);
    return result;
  }

  v138 = 0;
  v36 = v136;
  sub_26C102D04(v34, v136, type metadata accessor for PeerCertificateBundle);
  v37 = v124;
  if (*(v33 + 68) & 1) != 0 || (*(v33 + 72))
  {
    v38 = v141;
    *v141 = xmmword_26C14D0F0;
    *(v38 + 16) = 2;
    v146 = xmmword_26C14D0F0;
    LOBYTE(v147) = 2;
    sub_26C0BBAF8();
    swift_willThrowTypedImpl();
    sub_26C102CA4(v36, type metadata accessor for PeerCertificateBundle);
    (*(v140 + 8))(v37, v142);
    return result;
  }

  v120 = *(v33 + 66);
  LODWORD(isa) = *(v33 + 70);
  v119 = *(v140 + 16);
  v39 = v122;
  v119(v122, v124, v142);
  v40 = (v33 + ready[8]);
  v42 = *v40;
  v41 = v40[1];
  v153 = v42;
  v139 = v41;
  v118 = type metadata accessor for PeerCertificateBundle;
  sub_26C101588(v36, v135, type metadata accessor for PeerCertificateBundle);
  v43 = v130[2];
  v44 = v129;
  v45 = v131;
  v43(v129, v128, v131);
  v46 = v134;
  v43(v134, v44, v45);
  v47 = v139;
  if (v125 >= 0x93A80)
  {
    v48 = 604800;
  }

  else
  {
    v48 = v125;
  }

  v49 = type metadata accessor for SessionTicket();
  v50 = v49[13];
  *&v46[v49[5]] = v48;
  *&v46[v49[6]] = v127;
  v51 = &v46[v50];
  v52 = &v46[v49[8]];
  v53 = v133;
  *v52 = v132;
  v52[1] = v53;
  v125 = v52;
  v52[2] = v126;
  v54 = &v46[v49[7]];
  v55 = v121;
  *v54 = v23;
  v54[1] = v55;
  v127 = v54;
  v54[2] = v24;
  v56 = v142;
  v128 = v49[9];
  v119(&v46[v128], v39, v142);
  *&v46[v49[11]] = v120;
  *&v46[v49[12]] = isa;
  *v51 = v153;
  *(v51 + 1) = v47;
  isa = v49;
  v57 = v49[14];
  v58 = &v46[v57];
  v59 = v135;
  sub_26C101588(v135, v58, v118);
  v152 = MEMORY[0x277D84FA0];
  v60 = v123;
  v61 = *(v123 + 16);
  if (v61)
  {
    v126 = v57;

    sub_26C0BBAA4(v132, v133);
    sub_26C0BBAA4(v23, v121);

    v23 = &v146;
    if (*(v60 + 16))
    {
      v62 = v60;
      v63 = 0;
      v56 = 0;
      v64 = v61 - 1;
      LODWORD(v153) = 1;
      v59 = 32;
      while (1)
      {
        v65 = *(v62 + v59 + 16);
        v146 = *(v62 + v59);
        v147 = v65;
        v66 = *(v62 + v59 + 32);
        v67 = *(v62 + v59 + 48);
        v68 = *(v62 + v59 + 64);
        v151 = *(v62 + v59 + 80);
        v149 = v67;
        v150 = v68;
        v148 = v66;
        v69 = v56 + 1;
        v70 = 42;
        switch(v151 >> 4)
        {
          case 1:

            v70 = 10;
            break;
          case 2:
            sub_26C0B8B24(v146, BYTE8(v146) & 1);
            v70 = 43;
            break;
          case 3:
            sub_26C0FF14C();
            v70 = 16;
            break;
          case 4:
            sub_26C0FF158(v146, *(&v146 + 1), v147);
            v70 = 51;
            break;
          case 5:
            break;
          case 6:

            v70 = 13;
            break;
          case 7:
            sub_26C0B8B24(v146, BYTE8(v146) & 1);
            v70 = 20;
            break;
          case 8:
            sub_26C0BBAA4(v146, *(&v146 + 1));
            v70 = 57;
            break;
          case 9:

            v70 = 45;
            break;
          case 0xA:
            sub_26C10B28C(v146, *(&v146 + 1), v147 & 1);
            v70 = 41;
            break;
          case 0xB:
            v70 = 58;
            break;
          case 0xC:
            sub_26C10B1D0(v146, *(&v146 + 1), v147, *(&v147 + 1), v148, *(&v148 + 1), v149, *(&v149 + 1), v150, *(&v150 + 1), v151 & 1);
            v70 = 35387;
            break;
          case 0xD:
            v71 = v146;
            sub_26C0BBAA4(*(&v146 + 1), v147);
            v70 = v71;
            break;
          default:
            sub_26C0BB37C(v146, *(&v146 + 1));
            v70 = 0;
            break;
        }

        if ((sub_26C11D960(&v144, v70) & 1) == 0)
        {

          if (qword_28047A768 != -1)
          {
            swift_once();
          }

          v77 = sub_26C148A9C();
          __swift_project_value_buffer(v77, qword_28047AD38);
          sub_26C0BE40C(&v146, &v144);
          v78 = sub_26C148A7C();
          v79 = sub_26C14900C();
          sub_26C0BE468(&v146);
          v80 = os_log_type_enabled(v78, v79);
          v81 = v142;
          v82 = v122;
          if (v80)
          {
            v83 = swift_slowAlloc();
            v84 = swift_slowAlloc();
            *&v144 = v84;
            *v83 = 136315138;
            v85 = v84;
            switch(v151 >> 4)
            {
              case 1:
                v113 = 10;
                goto LABEL_73;
              case 2:
                v113 = 43;
                goto LABEL_73;
              case 3:
                v113 = 16;
                goto LABEL_73;
              case 4:
                v113 = 51;
                goto LABEL_73;
              case 5:
                v113 = 42;
                goto LABEL_73;
              case 6:
                v113 = 13;
                goto LABEL_73;
              case 7:
                v113 = 20;
                goto LABEL_73;
              case 8:
                v113 = 57;
                goto LABEL_73;
              case 9:
                v113 = 45;
                goto LABEL_73;
              case 0xA:
                v113 = 41;
                goto LABEL_73;
              case 0xB:
                v113 = 58;
                goto LABEL_73;
              case 0xC:
                v113 = -30149;
LABEL_73:
                LOWORD(v143) = v113;
                break;
              case 0xD:
                LOWORD(v143) = v146;
                break;
              default:
                LOWORD(v143) = 0;
                break;
            }

            v114 = ExtensionType.description.getter();
            v116 = sub_26C0E5DE8(v114, v115, &v144);

            *(v83 + 4) = v116;
            _os_log_impl(&dword_26C0B5000, v78, v79, "server offered duplicate extension of type %s on new session ticket", v83, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v85);
            MEMORY[0x26D69C3A0](v85, -1, -1);
            MEMORY[0x26D69C3A0](v83, -1, -1);

            v86 = v134;
            v87 = v141;
            v82 = v122;
          }

          else
          {

            v86 = v134;
            v87 = v141;
          }

          v144 = xmmword_26C14A8F0;
          v145 = 2;
          sub_26C0BBAF8();
          swift_willThrowTypedImpl();
          sub_26C0BE468(&v146);
          v110 = v130[1];
          v107 = v131;
          v110(v129, v131);
          sub_26C102CA4(v135, type metadata accessor for PeerCertificateBundle);
          v111 = *(v140 + 8);
          v117 = v82;
          v112 = v81;
          v111(v117, v81);
          goto LABEL_76;
        }

        if ((v151 & 0xF0) == 0x50)
        {
          v72 = v63;
          v73 = v146;
          v74 = BYTE4(v146);
          if (v153 & 1) == 0 || (BYTE4(v146))
          {

            if (qword_28047A768 != -1)
            {
              swift_once();
            }

            v88 = sub_26C148A9C();
            __swift_project_value_buffer(v88, qword_28047AD38);
            v89 = sub_26C148A7C();
            v90 = sub_26C14900C();
            v91 = os_log_type_enabled(v89, v90);
            v86 = v134;
            v87 = v141;
            if (v91)
            {
              LODWORD(isa) = v90;
              v138 = v89;
              v92 = v153;
              v93 = v153 | v74;
              v94 = 7104878;
              v95 = swift_slowAlloc();
              v96 = swift_slowAlloc();
              *&v144 = v96;
              *v95 = 136315394;
              if (v92)
              {
                v97 = v96;
                v98 = 0xE300000000000000;
                v99 = 7104878;
              }

              else
              {
                v97 = v96;
                v143 = v72;
                sub_26C10B2E8();
                v99 = sub_26C14904C();
                v98 = v100;
              }

              v101 = sub_26C0E5DE8(v99, v98, &v144);

              *(v95 + 4) = v101;
              *(v95 + 12) = 2080;
              if (v93)
              {
                v102 = 0xE300000000000000;
              }

              else
              {
                v143 = v73;
                sub_26C10B2E8();
                v94 = sub_26C14904C();
                v102 = v103;
              }

              v86 = v134;
              v87 = v141;
              v104 = sub_26C0E5DE8(v94, v102, &v144);

              *(v95 + 14) = v104;
              v105 = v138;
              _os_log_impl(&dword_26C0B5000, v138, isa, "invalid early data extension: old value %s new value %s", v95, 0x16u);
              swift_arrayDestroy();
              MEMORY[0x26D69C3A0](v97, -1, -1);
              MEMORY[0x26D69C3A0](v95, -1, -1);
            }

            else
            {
            }

            v106 = v140;
            v107 = v131;
            v108 = v130;
            v109 = v129;
            v144 = xmmword_26C14A8F0;
            v145 = 2;
            sub_26C0BBAF8();
            swift_willThrowTypedImpl();
            v110 = v108[1];
            v110(v109, v107);
            sub_26C102CA4(v135, type metadata accessor for PeerCertificateBundle);
            v111 = *(v106 + 8);
            v112 = v142;
            v111(v122, v142);
LABEL_76:
            v110(v86, v107);
            sub_26C0BB9B0(*v127, v127[1]);
            sub_26C0BB9B0(*v125, v125[1]);
            v111(&v86[v128], v112);

            sub_26C102CA4(&v86[v126], type metadata accessor for PeerCertificateBundle);
            sub_26C102CA4(v136, type metadata accessor for PeerCertificateBundle);
            v111(v124, v112);
            *&result = 5;
            *v87 = xmmword_26C14A8F0;
            *(v87 + 16) = 2;
            return result;
          }

          LODWORD(v153) = 0;
          v63 = v146;
          v62 = v123;
        }

        else
        {
          sub_26C0BE468(&v146);
        }

        if (v64 == v56)
        {
          break;
        }

        v59 += 88;
        ++v56;
        if (v69 >= *(v62 + 16))
        {
          goto LABEL_36;
        }
      }

      (v130[1])(v129, v131);
      sub_26C102CA4(v135, type metadata accessor for PeerCertificateBundle);
      v75 = *(v140 + 8);
      v56 = v142;
      v75(v122, v142);

      if (v153)
      {
        v76 = 0;
      }

      else
      {
        v76 = v63;
      }

      goto LABEL_46;
    }

LABEL_36:
    __break(1u);
  }

  sub_26C0BBAA4(v132, v133);
  sub_26C0BBAA4(v23, v121);
  (v130[1])(v129, v131);
  sub_26C102CA4(v59, type metadata accessor for PeerCertificateBundle);
  v75 = *(v140 + 8);
  v75(v122, v56);
  v76 = 0;
LABEL_46:
  *&v134[*(isa + 10)] = v76;
  sub_26C102CA4(v136, type metadata accessor for PeerCertificateBundle);
  v75(v124, v56);
  return result;
}

uint64_t sub_26C108ABC(uint64_t a1, unint64_t a2, uint64_t a3, _OWORD *a4)
{
  v34 = a4;
  v33 = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047A9C8, &qword_26C14D2A0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v32 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047A870, &qword_26C14A5A0);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v32 - v16;
  v37 = v4;
  sub_26C0CF314(v4, &v32 - v16, &qword_28047A870, &qword_26C14A5A0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if ((EnumCaseMultiPayload - 2) >= 2)
    {
LABEL_6:
      if (qword_28047A770 != -1)
      {
        swift_once();
      }

      v20 = sub_26C148A9C();
      __swift_project_value_buffer(v20, qword_28047AD78);
      sub_26C0CF314(v37, v15, &qword_28047A870, &qword_26C14A5A0);
      v21 = swift_getEnumCaseMultiPayload();
      if (v21 <= 1)
      {
        if (v21)
        {
          v23 = 0x6B616873646E6168;
        }

        else
        {
          v23 = 0x636553796C726165;
        }

        if (v21)
        {
          v22 = 0xEF74657263655365;
        }

        else
        {
          v22 = 0xEB00000000746572;
        }
      }

      else if (v21 == 2)
      {
        v22 = 0xEC00000074657263;
        v23 = 0x655372657473616DLL;
      }

      else
      {
        if (v21 != 3)
        {
          v22 = 0xE400000000000000;
          v23 = 1701602409;
          goto LABEL_23;
        }

        v22 = 0xEA00000000007374;
        v23 = 0x65726365536C6C61;
      }

      sub_26C0CF5C4(v15, &qword_28047A870, &qword_26C14A5A0);
LABEL_23:
      sub_26C125B0C(v23, v22, 0xD000000000000012, 0x800000026C15AD50);

      v27 = v34;
      *v34 = xmmword_26C14A570;
      *(v27 + 16) = 2;
      v35 = xmmword_26C14A570;
      v36 = 2;
      sub_26C0BBAF8();
      return swift_willThrowTypedImpl();
    }

LABEL_5:
    sub_26C0CF5C4(v17, &qword_28047A870, &qword_26C14A5A0);
    goto LABEL_6;
  }

  v19 = v33;
  if (!EnumCaseMultiPayload)
  {
    goto LABEL_5;
  }

  sub_26C0CF55C(v17, v10, &qword_28047A9C8, &qword_26C14D2A0);
  v24 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    result = v19;
    if (v24 == 2)
    {
      v26 = *(a1 + 24);
    }

    else
    {
      v26 = 0;
    }
  }

  else
  {
    result = v19;
    if (v24)
    {
      v26 = a1 >> 32;
    }

    else
    {
      v26 = BYTE6(a2);
    }
  }

  if (v26 < result)
  {
    __break(1u);
  }

  else
  {
    v28 = sub_26C14889C();
    v30 = v29;
    sub_26C11E5B4(v28, v29);
    sub_26C0BB9B0(v28, v30);
    v31 = v37;
    sub_26C0CF5C4(v37, &qword_28047A870, &qword_26C14A5A0);
    sub_26C0CF55C(v10, v31, &qword_28047A9C8, &qword_26C14D2A0);
    return swift_storeEnumTagMultiPayload();
  }

  return result;
}

uint64_t sub_26C108ECC@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v44 = a1;
  v3 = v2;
  v38 = a2;
  v40 = sub_26C148B6C();
  v39 = *(v40 - 8);
  v4 = *(v39 + 64);
  MEMORY[0x28223BE20](v40);
  v35 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_26C148BDC();
  v36 = *(v6 - 8);
  v37 = v6;
  v7 = *(v36 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047A9C8, &qword_26C14D2A0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v35 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047A870, &qword_26C14A5A0);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v35 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v35 - v19;
  v41 = v3;
  sub_26C0CF314(v3, &v35 - v19, &qword_28047A870, &qword_26C14A5A0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    v22 = v40;
    if (EnumCaseMultiPayload)
    {
      sub_26C0CF55C(v20, v13, &qword_28047A9C8, &qword_26C14D2A0);
      v27 = *(v10 + 44);
      v28 = MEMORY[0x277CC52C8];
      sub_26C0E6794(&qword_28047AB38, MEMORY[0x277CC52C8]);
      v29 = sub_26C148E7C();
      v30 = v9;
      sub_26C136F6C(0x64656873696E6966, 0xE800000000000000, MEMORY[0x277D84F90], v29, v9);
      sub_26C148E9C();
      sub_26C0E6794(&qword_281590328, MEMORY[0x277CC5550]);
      v31 = v35;
      v32 = sub_26C148B2C();
      MEMORY[0x28223BE20](v32);
      *(&v35 - 2) = v30;
      sub_26C0E6794(&qword_28047A9D0, v28);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047AB18, &unk_26C14C110);
      sub_26C14880C();
      (*(v39 + 8))(v31, v22);
      sub_26C0CF5C4(v13, &qword_28047A9C8, &qword_26C14D2A0);
      return (*(v36 + 8))(v30, v37);
    }

    goto LABEL_5;
  }

  if ((EnumCaseMultiPayload - 2) < 2)
  {
LABEL_5:
    sub_26C0CF5C4(v20, &qword_28047A870, &qword_26C14A5A0);
  }

  if (qword_28047A770 != -1)
  {
    swift_once();
  }

  v23 = sub_26C148A9C();
  __swift_project_value_buffer(v23, qword_28047AD78);
  sub_26C0CF314(v41, v18, &qword_28047A870, &qword_26C14A5A0);
  v24 = swift_getEnumCaseMultiPayload();
  if (v24 <= 1)
  {
    if (v24)
    {
      v25 = 0xEF74657263655365;
      v26 = 0x6B616873646E6168;
    }

    else
    {
      v25 = 0xEB00000000746572;
      v26 = 0x636553796C726165;
    }

    goto LABEL_18;
  }

  if (v24 == 2)
  {
    v25 = 0xEC00000074657263;
    v26 = 0x655372657473616DLL;
    goto LABEL_18;
  }

  if (v24 == 3)
  {
    v25 = 0xEA00000000007374;
    v26 = 0x65726365536C6C61;
LABEL_18:
    sub_26C0CF5C4(v18, &qword_28047A870, &qword_26C14A5A0);
    goto LABEL_19;
  }

  v25 = 0xE400000000000000;
  v26 = 1701602409;
LABEL_19:
  sub_26C125B0C(v26, v25, 0xD000000000000015, 0x800000026C15ADD0);

  v34 = v44;
  *v44 = xmmword_26C14A570;
  *(v34 + 16) = 2;
  v42 = xmmword_26C14A570;
  v43 = 2;
  sub_26C0BBAF8();
  return swift_willThrowTypedImpl();
}

uint64_t sub_26C1094C4@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v42 = a1;
  v37 = a2;
  v39 = sub_26C148B6C();
  v38 = *(v39 - 8);
  v3 = *(v38 + 64);
  MEMORY[0x28223BE20](v39);
  v34 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_26C148BDC();
  v35 = *(v5 - 8);
  v36 = v5;
  v6 = *(v35 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047A970, "DG");
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v33 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047A870, &qword_26C14A5A0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v33 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v33 - v18;
  sub_26C0CF314(v2, &v33 - v18, &qword_28047A870, &qword_26C14A5A0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload != 3)
    {
      goto LABEL_6;
    }
  }

  else if (EnumCaseMultiPayload >= 2)
  {
    sub_26C0CF55C(v19, v12, &qword_28047A970, "DG");
    v21 = *(v9 + 40);
    v22 = MEMORY[0x277CC52C8];
    sub_26C0E6794(&qword_28047AB38, MEMORY[0x277CC52C8]);
    v23 = v39;
    v24 = sub_26C148E7C();
    sub_26C136F6C(0x64656873696E6966, 0xE800000000000000, MEMORY[0x277D84F90], v24, v8);
    sub_26C148E9C();
    sub_26C0E6794(&qword_281590328, MEMORY[0x277CC5550]);
    v25 = v34;
    v26 = sub_26C148B2C();
    MEMORY[0x28223BE20](v26);
    *(&v33 - 2) = v8;
    sub_26C0E6794(&qword_28047A9D0, v22);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047AB18, &unk_26C14C110);
    sub_26C14880C();
    (*(v38 + 8))(v25, v23);
    sub_26C0CF5C4(v12, &qword_28047A970, "DG");
    return (*(v35 + 8))(v8, v36);
  }

  sub_26C0CF5C4(v19, &qword_28047A870, &qword_26C14A5A0);
LABEL_6:
  if (qword_28047A770 != -1)
  {
    swift_once();
  }

  v28 = sub_26C148A9C();
  __swift_project_value_buffer(v28, qword_28047AD78);
  sub_26C0CF314(v2, v17, &qword_28047A870, &qword_26C14A5A0);
  v29 = swift_getEnumCaseMultiPayload();
  if (v29 <= 1)
  {
    if (v29)
    {
      v30 = 0xEF74657263655365;
      v31 = 0x6B616873646E6168;
    }

    else
    {
      v30 = 0xEB00000000746572;
      v31 = 0x636553796C726165;
    }

    goto LABEL_17;
  }

  if (v29 == 2)
  {
    v30 = 0xEC00000074657263;
    v31 = 0x655372657473616DLL;
    goto LABEL_17;
  }

  if (v29 == 3)
  {
    v30 = 0xEA00000000007374;
    v31 = 0x65726365536C6C61;
LABEL_17:
    sub_26C0CF5C4(v17, &qword_28047A870, &qword_26C14A5A0);
    goto LABEL_18;
  }

  v30 = 0xE400000000000000;
  v31 = 1701602409;
LABEL_18:
  sub_26C125B0C(v31, v30, 0xD000000000000015, 0x800000026C15AD90);

  v32 = v42;
  *v42 = xmmword_26C14A570;
  *(v32 + 16) = 2;
  v40 = xmmword_26C14A570;
  v41 = 2;
  sub_26C0BBAF8();
  return swift_willThrowTypedImpl();
}

uint64_t sub_26C109AA4(uint64_t a1, unint64_t a2, uint64_t a3, _OWORD *a4)
{
  v36 = a4;
  v33 = a3;
  v31 = a1;
  v32 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047A970, "DG");
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5 - 8);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v31 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047A870, &qword_26C14A5A0);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v31 - v18;
  MEMORY[0x28223BE20](v17);
  v21 = &v31 - v20;
  sub_26C0CF314(v4, &v31 - v20, &qword_28047A870, &qword_26C14A5A0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload != 3)
    {
      goto LABEL_6;
    }
  }

  else if (EnumCaseMultiPayload >= 2)
  {
    sub_26C0CF55C(v21, v11, &qword_28047A970, "DG");
    sub_26C0CF314(v11, v9, &qword_28047A970, "DG");
    v24 = v31;
    v23 = v32;
    sub_26C0BBAA4(v31, v32);
    sub_26C10ACD4(v9, v24, v23, v33, v19);
    sub_26C0CF5C4(v11, &qword_28047A970, "DG");
    swift_storeEnumTagMultiPayload();
    return sub_26C0FF20C(v19, v4, &qword_28047A870, &qword_26C14A5A0);
  }

  sub_26C0CF5C4(v21, &qword_28047A870, &qword_26C14A5A0);
LABEL_6:
  if (qword_28047A770 != -1)
  {
    swift_once();
  }

  v26 = sub_26C148A9C();
  __swift_project_value_buffer(v26, qword_28047AD78);
  sub_26C0CF314(v4, v16, &qword_28047A870, &qword_26C14A5A0);
  v27 = swift_getEnumCaseMultiPayload();
  if (v27 <= 1)
  {
    if (v27)
    {
      v29 = 0x6B616873646E6168;
    }

    else
    {
      v29 = 0x636553796C726165;
    }

    if (v27)
    {
      v28 = 0xEF74657263655365;
    }

    else
    {
      v28 = 0xEB00000000746572;
    }
  }

  else if (v27 == 2)
  {
    v28 = 0xEC00000074657263;
    v29 = 0x655372657473616DLL;
  }

  else
  {
    if (v27 != 3)
    {
      v28 = 0xE400000000000000;
      v29 = 1701602409;
      goto LABEL_20;
    }

    v28 = 0xEA00000000007374;
    v29 = 0x65726365536C6C61;
  }

  sub_26C0CF5C4(v16, &qword_28047A870, &qword_26C14A5A0);
LABEL_20:
  sub_26C125B0C(v29, v28, 0xD000000000000013, 0x800000026C15AD70);

  v30 = v36;
  *v36 = xmmword_26C14A570;
  *(v30 + 16) = 2;
  v34 = xmmword_26C14A570;
  v35 = 2;
  sub_26C0BBAF8();
  return swift_willThrowTypedImpl();
}

uint64_t sub_26C109E94(uint64_t a1, unint64_t a2, uint64_t a3, _OWORD *a4)
{
  v36 = a4;
  v31 = a3;
  v32 = a1;
  v33 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047A9C8, &qword_26C14D2A0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5 - 8);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v31 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047A870, &qword_26C14A5A0);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v31 - v18;
  MEMORY[0x28223BE20](v17);
  v21 = &v31 - v20;
  sub_26C0CF314(v4, &v31 - v20, &qword_28047A870, &qword_26C14A5A0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    v24 = v32;
    v23 = v33;
    if (EnumCaseMultiPayload)
    {
      sub_26C0CF55C(v21, v11, &qword_28047A9C8, &qword_26C14D2A0);
      sub_26C0CF314(v11, v9, &qword_28047A9C8, &qword_26C14D2A0);
      sub_26C0BBAA4(v24, v23);
      sub_26C10A6EC(v9, v24, v23, v31, v19);
      sub_26C0CF5C4(v11, &qword_28047A9C8, &qword_26C14D2A0);
      swift_storeEnumTagMultiPayload();
      return sub_26C0FF20C(v19, v4, &qword_28047A870, &qword_26C14A5A0);
    }

    goto LABEL_5;
  }

  if ((EnumCaseMultiPayload - 2) < 2)
  {
LABEL_5:
    sub_26C0CF5C4(v21, &qword_28047A870, &qword_26C14A5A0);
  }

  if (qword_28047A770 != -1)
  {
    swift_once();
  }

  v25 = sub_26C148A9C();
  __swift_project_value_buffer(v25, qword_28047AD78);
  sub_26C0CF314(v4, v16, &qword_28047A870, &qword_26C14A5A0);
  v26 = swift_getEnumCaseMultiPayload();
  if (v26 <= 1)
  {
    if (v26)
    {
      v27 = 0xEF74657263655365;
      v28 = 0x6B616873646E6168;
    }

    else
    {
      v27 = 0xEB00000000746572;
      v28 = 0x636553796C726165;
    }

    goto LABEL_18;
  }

  if (v26 == 2)
  {
    v27 = 0xEC00000074657263;
    v28 = 0x655372657473616DLL;
    goto LABEL_18;
  }

  if (v26 == 3)
  {
    v27 = 0xEA00000000007374;
    v28 = 0x65726365536C6C61;
LABEL_18:
    sub_26C0CF5C4(v16, &qword_28047A870, &qword_26C14A5A0);
    goto LABEL_19;
  }

  v27 = 0xE400000000000000;
  v28 = 1701602409;
LABEL_19:
  sub_26C125B0C(v28, v27, 0xD000000000000012, 0x800000026C15ADB0);

  v30 = v36;
  *v36 = xmmword_26C14A570;
  *(v30 + 16) = 2;
  v34 = xmmword_26C14A570;
  v35 = 2;
  sub_26C0BBAF8();
  return swift_willThrowTypedImpl();
}

uint64_t sub_26C10A294@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, unint64_t a5@<X8>)
{
  v47 = a4;
  v42 = a1;
  v6 = v5;
  v43 = a2;
  v44 = a3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047A968, &unk_26C14A810);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v41 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047A870, &qword_26C14A5A0);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v41 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v41 - v17;
  sub_26C0CF314(v6, &v41 - v17, &qword_28047A870, &qword_26C14A5A0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload < 3)
  {
    sub_26C0CF5C4(v18, &qword_28047A870, &qword_26C14A5A0);
    goto LABEL_7;
  }

  v20 = v42;
  v21 = v11;
  v22 = v43;
  v23 = v44;
  if (EnumCaseMultiPayload != 3)
  {
LABEL_7:
    if (qword_28047A770 != -1)
    {
      swift_once();
    }

    v31 = sub_26C148A9C();
    __swift_project_value_buffer(v31, qword_28047AD78);
    sub_26C0CF314(v6, v16, &qword_28047A870, &qword_26C14A5A0);
    v32 = swift_getEnumCaseMultiPayload();
    if (v32 <= 1)
    {
      if (v32)
      {
        v35 = 0x6B616873646E6168;
      }

      else
      {
        v35 = 0x636553796C726165;
      }

      if (v32)
      {
        v34 = 0xEF74657263655365;
      }

      else
      {
        v34 = 0xEB00000000746572;
      }

      v33 = v47;
    }

    else
    {
      v33 = v47;
      if (v32 == 2)
      {
        v34 = 0xEC00000074657263;
        v35 = 0x655372657473616DLL;
      }

      else
      {
        if (v32 != 3)
        {
          v34 = 0xE400000000000000;
          v35 = 1701602409;
          goto LABEL_22;
        }

        v34 = 0xEA00000000007374;
        v35 = 0x65726365536C6C61;
      }
    }

    sub_26C0CF5C4(v16, &qword_28047A870, &qword_26C14A5A0);
LABEL_22:
    sub_26C125B0C(v35, v34, 0xD000000000000018, 0x800000026C15ADF0);

    *v33 = xmmword_26C14A570;
    *(v33 + 16) = 2;
    v45 = xmmword_26C14A570;
    v46 = 2;
    sub_26C0BBAF8();
    return swift_willThrowTypedImpl();
  }

  v24 = v18;
  v25 = v21;
  result = sub_26C0CF55C(v24, v21, &qword_28047A968, &unk_26C14A810);
  v27 = BYTE6(v22);
  v28 = v22 >> 62;
  if ((v22 >> 62) > 1)
  {
    v29 = a5;
    if (v28 == 2)
    {
      v30 = *(v20 + 24);
    }

    else
    {
      v30 = 0;
    }
  }

  else
  {
    v29 = a5;
    if (v28)
    {
      v30 = v20 >> 32;
    }

    else
    {
      v30 = v27;
    }
  }

  if (v30 < v23)
  {
    __break(1u);
  }

  else
  {
    v36 = *(v8 + 44);
    v37 = sub_26C14889C();
    v39 = v38;
    sub_26C148B6C();
    sub_26C0E6794(&qword_28047AB38, MEMORY[0x277CC52C8]);
    v40 = sub_26C148E7C();
    sub_26C1379CC(v25 + v36, 0x6974706D75736572, 0xEA00000000006E6FLL, v37, v39, v40, v29);
    sub_26C0BB9B0(v37, v39);
    return sub_26C0CF5C4(v25, &qword_28047A968, &unk_26C14A810);
  }

  return result;
}

uint64_t sub_26C10A6EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v52 = a4;
  v53 = a2;
  v54 = a3;
  v7 = sub_26C148B6C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047AB18, &unk_26C14C110);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v14 = sub_26C148BDC();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v51 = sub_26C0E6794(&qword_28047AB38, MEMORY[0x277CC52C8]);
  result = sub_26C148E7C();
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v48 = v11;
    v49 = v8;
    v47 = v7;
    v55 = v14;
    if (result)
    {
      v18 = result;
      v19 = sub_26C148FCC();
      *(v19 + 16) = v18;
      bzero((v19 + 32), v18);
    }

    else
    {
      v19 = MEMORY[0x277D84F90];
    }

    v56 = v19;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047A840, &unk_26C14A530);
    sub_26C0FF1C4(&qword_28047ABE8, &qword_28047A840, &unk_26C14A530);
    sub_26C148BAC();
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047A9C8, &qword_26C14D2A0);
    v21 = v20[9];
    MEMORY[0x28223BE20](v20);
    v46 = v22;
    v45[-2] = v22;
    sub_26C148B8C();
    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047A970, "DG");
    v24 = v23[9];
    sub_26C0FF1C4(&qword_28047AB40, &qword_28047AB18, &unk_26C14C110);
    v45[1] = v24;
    sub_26C148BAC();
    v25 = sub_26C148E9C();
    v26 = *(*(v25 - 8) + 16);
    v50 = a1;
    v26(a5, a1, v25);
    v27 = v54;
    v28 = v54 >> 62;
    if ((v54 >> 62) > 1)
    {
      v30 = 0;
      result = v52;
      v29 = v53;
      if (v28 == 2)
      {
        v30 = *(v53 + 24);
      }
    }

    else
    {
      result = v52;
      v29 = v53;
      if (v28)
      {
        v30 = v53 >> 32;
      }

      else
      {
        v30 = BYTE6(v54);
      }
    }

    if (v30 >= result)
    {
      v31 = sub_26C14889C();
      v33 = v32;
      sub_26C0BB9B0(v29, v27);
      sub_26C0BBAA4(v31, v33);
      sub_26C11E5B4(v31, v33);
      sub_26C0BB9B0(v31, v33);
      sub_26C0BB9B0(v31, v33);
      sub_26C0E6794(&qword_281590328, MEMORY[0x277CC5550]);
      v34 = v48;
      sub_26C148B2C();
      v35 = *(v15 + 16);
      v36 = v50;
      v37 = v55;
      v35(a5 + v23[10], v50 + v20[10], v55);
      v35(a5 + v23[11], v36 + v20[11], v37);
      v38 = v23[12];
      v39 = v47;
      v40 = sub_26C148E7C();
      sub_26C137650(0x6172742070612063, 0xEC00000063696666, v40, a5 + v38);
      v41 = v23[13];
      v42 = sub_26C148E7C();
      sub_26C137650(0x6172742070612073, 0xEC00000063696666, v42, a5 + v41);
      v43 = v23[14];
      v44 = sub_26C148E7C();
      sub_26C137650(0x7473616D20707865, 0xEA00000000007265, v44, a5 + v43);
      sub_26C0CF5C4(v36, &qword_28047A9C8, &qword_26C14D2A0);
      (*(v49 + 8))(v34, v39);
      return (*(v15 + 8))(v46, v55);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_26C10ACD4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v44 = a3;
  v45 = a4;
  v46 = a2;
  v7 = sub_26C148B6C();
  v41 = *(v7 - 8);
  v42 = v7;
  v8 = *(v41 + 64);
  MEMORY[0x28223BE20](v7);
  v39 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_26C148E9C();
  v43 = *(v10 - 8);
  v11 = *(v43 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047A970, "DG");
  v15 = v14[12];
  v16 = sub_26C148BDC();
  v17 = *(*(v16 - 8) + 16);
  v17(a5, a1 + v15, v16);
  v18 = v14[13];
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047A968, &unk_26C14A810);
  v17(a5 + v19[9], a1 + v18, v16);
  v20 = v14[14];
  v21 = v19[10];
  v40 = a5;
  v22 = a5 + v21;
  v23 = v10;
  v24 = v44;
  v17(v22, a1 + v20, v16);
  v25 = v43;
  (*(v43 + 16))(v13, a1, v23);
  v26 = v24 >> 62;
  if ((v24 >> 62) > 1)
  {
    v27 = 0;
    result = v45;
    v29 = v46;
    if (v26 == 2)
    {
      v27 = *(v46 + 24);
    }
  }

  else if (v26)
  {
    result = v45;
    v29 = v46;
    v27 = v46 >> 32;
  }

  else
  {
    v27 = BYTE6(v24);
    result = v45;
    v29 = v46;
  }

  if (v27 < result)
  {
    __break(1u);
  }

  else
  {
    v30 = sub_26C14889C();
    v32 = v31;
    sub_26C0BB9B0(v29, v24);
    sub_26C0BBAA4(v30, v32);
    sub_26C11E5B4(v30, v32);
    sub_26C0BB9B0(v30, v32);
    sub_26C0BB9B0(v30, v32);
    sub_26C0E6794(&qword_281590328, MEMORY[0x277CC5550]);
    v33 = v39;
    sub_26C148B2C();
    v34 = v14[9];
    v35 = v19[11];
    sub_26C0E6794(&qword_28047AB38, MEMORY[0x277CC52C8]);
    v36 = v42;
    v37 = sub_26C148E7C();
    sub_26C137650(0x7473616D20736572, 0xEA00000000007265, v37, v40 + v35);
    sub_26C0CF5C4(a1, &qword_28047A970, "DG");
    (*(v41 + 8))(v33, v36);
    return (*(v25 + 8))(v13, v23);
  }

  return result;
}

uint64_t sub_26C10B0B0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047AC40, &unk_26C14D320);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_26C10B1D0(uint64_t a1, unint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5, unint64_t a6, uint64_t a7, uint64_t a8, unint64_t a9, uint64_t a10, char a11)
{
  if (a11)
  {
    sub_26C0BBAA4(a2, a3);
    sub_26C0BB37C(a5, a6);

    return sub_26C0BB37C(a8, a9);
  }

  else
  {
    sub_26C0BBAA4(a1, a2);
    sub_26C0BBAA4(a4, a5);
  }
}

uint64_t sub_26C10B28C(uint64_t a1, uint64_t a2, char a3)
{
  if ((a3 & 1) == 0)
  {
  }

  return result;
}

unint64_t sub_26C10B2E8()
{
  result = qword_28047AC60;
  if (!qword_28047AC60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28047AC60);
  }

  return result;
}

uint64_t ServerHandshakeStateMachine.Configuration.serverName.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t ServerHandshakeStateMachine.Configuration.serverName.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t ServerHandshakeStateMachine.Configuration.signingKey.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for ServerHandshakeStateMachine.Configuration() + 20);

  return sub_26C10B478(v3, a1);
}

uint64_t type metadata accessor for ServerHandshakeStateMachine.Configuration()
{
  result = qword_281590680;
  if (!qword_281590680)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26C10B478(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047AC08, &qword_26C14CDF0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t ServerHandshakeStateMachine.Configuration.signingKey.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for ServerHandshakeStateMachine.Configuration() + 20);

  return sub_26C10B52C(a1, v3);
}

uint64_t sub_26C10B52C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047AC08, &qword_26C14CDF0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t ServerHandshakeStateMachine.Configuration.quicTransportParameters.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for ServerHandshakeStateMachine.Configuration() + 24));
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  *a1 = *v3;
  a1[1] = v5;
  a1[2] = v6;

  return sub_26C0BB37C(v4, v5);
}

__n128 ServerHandshakeStateMachine.Configuration.quicTransportParameters.setter(__n128 *a1)
{
  v6 = *a1;
  v2 = a1[1].n128_i64[0];
  v3 = (v1 + *(type metadata accessor for ServerHandshakeStateMachine.Configuration() + 24));
  v4 = v3[2];
  sub_26C0BB344(*v3, v3[1]);
  result = v6;
  *v3 = v6;
  v3[2] = v2;
  return result;
}

uint64_t ServerHandshakeStateMachine.Configuration.alpn.getter()
{
  v1 = *(v0 + *(type metadata accessor for ServerHandshakeStateMachine.Configuration() + 28));
}

uint64_t ServerHandshakeStateMachine.Configuration.alpn.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ServerHandshakeStateMachine.Configuration() + 28);
  v4 = *(v1 + v3);

  *(v1 + v3) = a1;
  return result;
}

uint64_t ServerHandshakeStateMachine.Configuration.enableEarlyData.setter(char a1)
{
  result = type metadata accessor for ServerHandshakeStateMachine.Configuration();
  *(v1 + *(result + 32)) = a1;
  return result;
}

uint64_t ServerHandshakeStateMachine.Configuration.transportIsQUIC.setter(char a1)
{
  result = type metadata accessor for ServerHandshakeStateMachine.Configuration();
  *(v1 + *(result + 36)) = a1;
  return result;
}

uint64_t ServerHandshakeStateMachine.Configuration.useRawEPSKs.setter(char a1)
{
  result = type metadata accessor for ServerHandshakeStateMachine.Configuration();
  *(v1 + *(result + 40)) = a1;
  return result;
}

__n128 ServerHandshakeStateMachine.Configuration.init(serverName:signingKey:quicTransportParameters:alpn:enableEarlyData:transportIsQUIC:useRawEPSKs:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, __n128 *a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, char a7@<W6>, char a8@<W7>, char *a9@<X8>)
{
  v22 = *a4;
  v14 = a4[1].n128_i64[0];
  v15 = type metadata accessor for ServerHandshakeStateMachine.Configuration();
  v16 = v15[5];
  v17 = sub_26C148D8C();
  (*(*(v17 - 8) + 56))(&a9[v16], 1, 1, v17);
  v18 = &a9[v15[6]];
  *v18 = xmmword_26C14A540;
  v18[2] = 0;
  v19 = v15[7];
  *a9 = a1;
  *(a9 + 1) = a2;
  sub_26C10B52C(a3, &a9[v16]);
  v20 = v18[2];
  sub_26C0BB344(*v18, v18[1]);
  result = v22;
  *v18 = v22;
  v18[2] = v14;
  *&a9[v19] = a5;
  a9[v15[8]] = a6;
  a9[v15[9]] = a7;
  a9[v15[10]] = a8;
  return result;
}

void sub_26C10BAB0()
{
  sub_26C0CFD5C(319, qword_281592488);
  if (v0 <= 0x3F)
  {
    sub_26C10BB90();
    if (v1 <= 0x3F)
    {
      sub_26C0CFD5C(319, &qword_281591F48);
      if (v2 <= 0x3F)
      {
        sub_26C10BBE8();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_26C10BB90()
{
  if (!qword_281590330)
  {
    sub_26C148D8C();
    v0 = sub_26C14902C();
    if (!v1)
    {
      atomic_store(v0, &qword_281590330);
    }
  }
}

void sub_26C10BBE8()
{
  if (!qword_281590300)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28047AC68, ";");
    v0 = sub_26C14902C();
    if (!v1)
    {
      atomic_store(v0, &qword_281590300);
    }
  }
}

uint64_t sub_26C10BC4C(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = a1(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}