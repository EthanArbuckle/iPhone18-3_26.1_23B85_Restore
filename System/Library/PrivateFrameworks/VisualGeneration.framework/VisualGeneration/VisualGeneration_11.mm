uint64_t sub_19A3CC9EC()
{

  return MEMORY[0x1EEE6DFA0](sub_19A3CCB04, 0, 0);
}

void sub_19A3CCB04()
{
  v517 = v0;
  v2 = v0 + 2376;
  aBlock = (v0 + 16);
  v476 = (v0 + 64);
  v479 = (v0 + 112);
  v483 = (v0 + 160);
  v486 = (v0 + 208);
  v474 = (v0 + 256);
  v475 = (v0 + 304);
  v487 = v0 + 632;
  v481 = v0 + 1160;
  v488 = v0 + 1192;
  v482 = v0 + 1200;
  v477 = v0 + 1224;
  v478 = v0 + 1208;
  v3 = *(v0 + 1656);
  v4 = *(v0 + 1648);
  v5 = *(v0 + 1560);
  v6 = *(v3 + 48);
  v484 = (v0 + 2376);
  if ((v6)(v5, 1, v4) == 1)
  {
    v7 = *(v0 + 1568);
    v8 = *(v0 + 1304);

    sub_19A2E0A60(v8);
    sub_19A2F3FA0(v5, &qword_1EAFA10A8);
    v10 = *(v3 + 56);
    v9 = v3 + 56;
    v10(v7, 1, 1, v4);
    goto LABEL_14;
  }

  v11 = *(v0 + 1736);
  v12 = *(v0 + 1728);
  sub_19A3E3DD8(v5, v11, type metadata accessor for Concept);
  sub_19A3E3C64(v11, v12, type metadata accessor for Concept);
  if (swift_getEnumCaseMultiPayload() == 4)
  {
    v13 = *(v0 + 2216);
    v14 = *(v0 + 2208);
    v15 = *(v0 + 1600);
    v16 = *(v0 + 1576);
    v17 = *(v0 + 1520);
    sub_19A3E3DD8(*(v0 + 1728), v15, type metadata accessor for NamedEntityData);
    sub_19A3E3C64(v15 + *(v16 + 20), v17, type metadata accessor for NamedEntityData.NamedEntityType);
    if ((*(v13 + 48))(v17, 1, v14) != 1)
    {
      v37 = *(v0 + 2168);
      v38 = *(v0 + 2160);
      v39 = v6;
      v40 = *(v0 + 1952);
      v41 = *(v0 + 1736);
      v511.length = *(v0 + 1600);
      v42 = *(v0 + 1520);
      v9 = *(v0 + 1312);
      v43 = *(v0 + 1304);

      sub_19A3E3E40(v42, type metadata accessor for NamedEntityData.NamedEntityType);
      v44 = *(v40 + 40);

      v45 = v44;
      sub_19A340970(v41, v38, v37);
      sub_19A2E0A60(v43);

      v6 = v39;
      v28 = type metadata accessor for NamedEntityData;
      length = v511.length;
      goto LABEL_12;
    }

    v18 = *(v0 + 1520);
    sub_19A3E3E40(*(v0 + 1600), type metadata accessor for NamedEntityData);
    sub_19A3E3E40(v18, type metadata accessor for NamedEntityData.NamedEntityType);
    v2 = v0 + 2376;
  }

  else
  {
    sub_19A3E3E40(*(v0 + 1728), type metadata accessor for Concept);
  }

  v19 = *(v0 + 2380);
  v20 = *(v0 + 2192);
  if (v19 != 3 && (*(v2 + 2) & 1) == 0)
  {
    v21 = *(v0 + 2168);
    v22 = *(v0 + 2160);
    v23 = *(v0 + 1952);
    v24 = *(v0 + 1752);
    v25 = *(v0 + 1304);
    *v24 = *(v0 + 2184);
    *(v24 + 8) = v20;
    *(v24 + 16) = v19;
    swift_storeEnumTagMultiPayload();
    v9 = *(v23 + 24);
    v26 = *(v23 + 40);

    v27 = v26;
    sub_19A340970(v24, v22, v21);
    sub_19A2E0A60(v25);

    v28 = type metadata accessor for Concept;
    length = v24;
LABEL_12:
    sub_19A3E3E40(length, v28);
    goto LABEL_13;
  }

  v30 = *(v0 + 2168);
  v31 = *(v0 + 2160);
  v32 = *(v0 + 1952);
  v33 = *(v0 + 1736);
  v34 = *(v0 + 1304);

  v9 = *(v32 + 24);
  v35 = *(v32 + 40);

  v36 = v35;
  sub_19A340970(v33, v31, v30);
  sub_19A2E0A60(v34);

LABEL_13:
  v46 = *(v0 + 1656);
  v47 = *(v0 + 1648);
  v48 = *(v0 + 1568);
  sub_19A3E3DD8(*(v0 + 1736), v48, type metadata accessor for Concept);
  (*(v46 + 56))(v48, 0, 1, v47);
LABEL_14:
  v492 = (v0 + 1752);
  v495 = (v0 + 1672);
  v485 = 1;
  v49 = v0;
  v509 = v0;
  v50 = (v6)(v49[196], 1, v49[206]);
LABEL_15:
  if (v50 == 1)
  {

    v489 = v49[268];
  }

  else
  {
    v51 = v49[271];
    v52 = v49[270];
    v53 = v49;
    v54 = v49[268];
    v55 = v49[255];
    v56 = swift_task_alloc();
    *(v56 + 16) = v52;
    *(v56 + 24) = v51;
    swift_beginAccess();
    v57 = sub_19A3E3548(v55 + 2, sub_19A3E406C, v56);
    if (v54)
    {
      goto LABEL_259;
    }

    v58 = *(*(v53[255] + 16) + 16);
    if (v58 < v57)
    {
      __break(1u);
      goto LABEL_270;
    }

    sub_19A46B010(v57, v58);
    swift_endAccess();
    v49 = v509;

    v489 = 0;
  }

  sub_19A2F3FA0(v49[196], &qword_1EAFA10A8);
LABEL_21:

  v59 = v49[272];
  v60 = v49[218];
  v61 = v509[205];
  v62 = v509[201];

  sub_19A3E3E40(v60, type metadata accessor for Concept);
  sub_19A3E3E40(v62, type metadata accessor for NamedEntityData);
  v63 = v61;
  v64 = v509;
  sub_19A3E3E40(v63, type metadata accessor for EntityExtractor.NamedEntity.EntityData);
LABEL_22:
  v65 = *(v64 + 2152) + 1;
  if (v65 == *(v64 + 2136))
  {
LABEL_155:
    v222 = *(v64 + 1952);

    sub_19A3DF010("buildEntityConcepts", 19, 2);

    *(v64 + 1192) = MEMORY[0x1E69E7CC0];
    swift_beginAccess();
    v223 = *(v222 + 40);
    v224 = v64;
    v225 = qword_1EAF9F838;

    v226 = v223;
    if (v225 != -1)
    {
      swift_once();
    }

    v227 = v224[244];
    v511.length = qword_1EAFCA248;
    v228 = [v226 length];
    v229 = swift_task_alloc();
    *(v229 + 16) = v488;
    *(v229 + 24) = v227;
    v230 = swift_allocObject();
    *(v230 + 16) = sub_19A3E393C;
    *(v230 + 24) = v229;
    v224[30] = sub_19A3E3944;
    v224[31] = v230;
    v224[26] = MEMORY[0x1E69E9820];
    v1 = 1107296256;
    v224[27] = 1107296256;
    v224[28] = sub_19A3C4EB0;
    v224[29] = &block_descriptor_3;
    v231 = _Block_copy(v486);

    [v226 enumerateAttribute:v511.length inRange:0 options:v228 usingBlock:{0, v231}];

    _Block_release(v231);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
LABEL_259:

      swift_endAccess();
      return;
    }

    if (*(*v488 + 16))
    {

      v233 = sub_19A5723DC();
      v234 = sub_19A57355C();
      if (os_log_type_enabled(v233, v234))
      {
        v235 = swift_slowAlloc();
        v236 = swift_slowAlloc();
        v515 = v236;
        *v235 = 136380675;
        swift_beginAccess();

        v238 = sub_19A3E501C(v237);
        v240 = v239;

        v241 = sub_19A31F114(v238, v240, &v515);

        *(v235 + 4) = v241;
        _os_log_impl(&dword_19A2DE000, v233, v234, "Unresolved ambiguities: %{private}s", v235, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v236);
        MEMORY[0x19A902C50](v236, -1, -1);
        MEMORY[0x19A902C50](v235, -1, -1);
      }

      swift_beginAccess();
      v242 = v509[149];
      sub_19A3B8774();
      swift_allocError();
      *v243 = v242;
      *(v243 + 8) = 0;
      swift_willThrow();

      v244 = v509;
      goto LABEL_208;
    }

    v245 = MEMORY[0x1E69E6158];
    v64 = v509;
    if (v484[3] == 1)
    {
      v246 = v509[244];
      LOBYTE(v514) = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFA2F70);
      v247 = swift_allocObject();
      *(v247 + 16) = xmmword_19A576E10;
      *(v247 + 32) = 0x74706D6F7270;
      *(v247 + 40) = 0xE600000000000000;
      v248 = [*(v246 + 40) string];
      v115 = v509;
      v249 = v248;
      v250 = sub_19A572CFC();
      v252 = v251;

      *(v247 + 72) = v245;
      *(v247 + 48) = v250;
      *(v247 + 56) = v252;
      v253 = sub_19A330370(v247);
      swift_setDeallocating();
      sub_19A2F3FA0(v247 + 32, &qword_1EAFA2F00);
      swift_deallocClassInstance();
      sub_19A338028(&v514, v253, &v515);
      if (v489)
      {
        goto LABEL_174;
      }

      LOBYTE(v486) = v515;
      v254 = v516;

      v489 = 0;
      v64 = v509;
    }

    else
    {
      LOBYTE(v486) = 0;
      v254 = 0;
    }

    v255 = &unk_1EAF9F000;
    v9 = &unk_1EAFCA000;
    v487 = v254;
    if (!(*(v64 + 1320) | *(v64 + 1352) & 2))
    {
      goto LABEL_189;
    }

    v256 = *(v64 + 1952);
    *(v64 + 1160) = MEMORY[0x1E69E7CD0];
    v257 = *(v256 + 32);
    v6 = v64;
    v258 = *(v256 + 40);
    v259 = qword_1EAF9F840;

    v511.length = v257;

    v55 = v258;
    if (v259 != -1)
    {
      goto LABEL_273;
    }

    while (1)
    {
      v77 = *(v9 + 592);
      v260 = [v55 length];
      v261 = swift_task_alloc();
      v56 = v481;
      *(v261 + 16) = v481;
      *(v261 + 24) = v256;
      v262 = swift_allocObject();
      *(v262 + 16) = sub_19A3E3CD4;
      *(v262 + 24) = v261;
      *(v6 + 48) = sub_19A3E4068;
      *(v6 + 56) = v262;
      *(v6 + 16) = MEMORY[0x1E69E9820];
      *(v6 + 24) = v1;
      *(v6 + 32) = sub_19A3C4EB0;
      *(v6 + 40) = &block_descriptor_59;
      v64 = _Block_copy(aBlock);

      [v55 enumerateAttribute:v77 inRange:0 options:v260 usingBlock:{0, v64}];

      _Block_release(v64);
      v263 = swift_isEscapingClosureAtFileLocation();

      if (v263)
      {
        __break(1u);
        goto LABEL_275;
      }

      if (*(*v481 + 16))
      {
        v64 = v509;
        v56 = v487;
        if (v487)
        {

          v265 = sub_19A3C3960(v264, sub_19A31EFC8, type metadata accessor for Concept, sub_19A32F034);
          v509[56] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA0318);
          v509[53] = v265;
          sub_19A334618((v509 + 53), (v509 + 57));
          v115 = v509;
          JSONValue.init(_:)(v509 + 57, &v514);
          if (v489)
          {

            __swift_destroy_boxed_opaque_existential_0Tm((v509 + 53));
            goto LABEL_174;
          }

LABEL_178:
          v266 = v56;
          v267 = v514;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v515 = v266;
          sub_19A33D400(v267, 0xD000000000000010, 0x800000019A5989F0, isUniquelyReferenced_nonNull_native);
          v56 = v515;
          __swift_destroy_boxed_opaque_existential_0Tm((v115 + 53));
          v489 = 0;
          v64 = v115;
        }

        if ((*(v64 + 1352) & 2) != 0)
        {

          v277 = sub_19A5723DC();
          v278 = v64;
          v279 = sub_19A57355C();
          if (os_log_type_enabled(v277, v279))
          {
            v280 = swift_slowAlloc();
            v281 = swift_slowAlloc();
            v515 = v281;
            *v280 = 136380675;
            swift_beginAccess();

            v283 = sub_19A3E51D0(v282);
            v285 = v284;

            v286 = sub_19A31F114(v283, v285, &v515);

            *(v280 + 4) = v286;
            _os_log_impl(&dword_19A2DE000, v277, v279, "Disallowed concepts: %{private}s", v280, 0xCu);
            __swift_destroy_boxed_opaque_existential_0Tm(v281);
            MEMORY[0x19A902C50](v281, -1, -1);
            MEMORY[0x19A902C50](v280, -1, -1);
          }

          swift_beginAccess();

          v288 = sub_19A3C3960(v287, sub_19A31EFC8, type metadata accessor for Concept, sub_19A32F034);
          sub_19A3B8774();
          swift_allocError();
          *v289 = v288;
          *(v289 + 8) = 3;
          swift_willThrow();

          v244 = v278;
          goto LABEL_208;
        }

        v59 = sub_19A5723DC();
        v269 = sub_19A57355C();
        v487 = v56;
        if (os_log_type_enabled(v59, v269))
        {
          v270 = swift_slowAlloc();
          v271 = swift_slowAlloc();
          v515 = v271;
          *v270 = 136380675;
          swift_beginAccess();

          v273 = sub_19A3E51D0(v272);
          v275 = v274;

          v276 = sub_19A31F114(v273, v275, &v515);

          *(v270 + 4) = v276;
          v64 = v509;
          _os_log_impl(&dword_19A2DE000, v59, v269, "Disallowed concepts: %{private}s", v270, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v271);
          MEMORY[0x19A902C50](v271, -1, -1);
          MEMORY[0x19A902C50](v270, -1, -1);
        }

        else
        {
LABEL_186:
        }
      }

      else
      {

        v64 = v509;
      }

      v9 = 0x1EAFCA000;
      v255 = &unk_1EAF9F000;
LABEL_189:
      v290 = *(v64 + 2040);
      swift_beginAccess();
      v291 = *(v290 + 16);
      v292 = *(v291 + 16);
      if (v292)
      {
        v293 = *(v64 + 1424);
        v294 = (*(v64 + 1432) + *(*(v64 + 1416) + 48));
        v295 = v291 + ((*(v293 + 80) + 32) & ~*(v293 + 80));
        v511.location = *(v290 + 16);
        v511.length = *(v293 + 72);

        do
        {
          v296 = *(v64 + 1952);
          v297 = *(v64 + 1752);
          v298 = *(v64 + 1432);
          sub_19A33546C(v295, v298, &qword_1EAF9FFE0);
          v299 = *v294;
          v300 = v294[1];
          sub_19A3E3DD8(v298, v297, type metadata accessor for Concept);
          v301 = *(v296 + 40);

          v302 = v301;
          v303 = v299;
          v64 = v509;
          sub_19A340970(v297, v303, v300);

          sub_19A3E3E40(v297, type metadata accessor for Concept);
          v295 += v511.length;
          --v292;
        }

        while (v292);

        v9 = &unk_1EAFCA000;
        v255 = &unk_1EAF9F000;
      }

      v304 = *(v64 + 1952);
      *(v64 + 1200) = MEMORY[0x1E69E7CC0];
      v56 = *(v304 + 24);
      v305 = *(v304 + 40);
      v6 = v64;
      v306 = v255[264];

      v55 = v305;
      if (v306 != -1)
      {
LABEL_271:
        swift_once();
      }

      v307 = *(v9 + 592);
      v308 = [v55 length];
      v309 = swift_task_alloc();
      *(v309 + 16) = v482;
      v9 = swift_allocObject();
      *(v9 + 16) = sub_19A3E3984;
      *(v9 + 24) = v309;
      *(v6 + 192) = sub_19A3E4068;
      *(v6 + 200) = v9;
      *(v6 + 160) = MEMORY[0x1E69E9820];
      *(v6 + 168) = v1;
      *(v6 + 176) = sub_19A3C4EB0;
      *(v6 + 184) = &block_descriptor_23_0;
      v310 = _Block_copy(v483);

      v485 = v307;
      [v55 enumerateAttribute:v307 inRange:0 options:v308 usingBlock:{0, v310}];

      _Block_release(v310);
      v311 = swift_isEscapingClosureAtFileLocation();

      if ((v311 & 1) == 0)
      {
        break;
      }

      __break(1u);
LABEL_273:
      swift_once();
      v256 = *(v6 + 1952);
    }

    v312 = *(v6 + 1952);

    v64 = v489;
    v313 = sub_19A474074(*(v6 + 1200));
    *(v6 + 1200) = v313;

    v314 = [*(v312 + 40) string];
    v511.length = sub_19A572CFC();
    v120 = v315;

    v316 = *(v313 + 16);
    v66 = v6;
    v317 = MEMORY[0x1E69E6158];
    if (!v316)
    {
      goto LABEL_220;
    }

    v318 = (v313 + 16 * v316 + 24);
    v496 = v313;
    v497 = v120;
    while (v316 <= *(v313 + 16))
    {
      v322 = *(v318 - 1);
      v56 = *v318;
      v323 = sub_19A57348C();
      if ((v325 & 1) == 0)
      {
        v506 = v56;
        v511.location = v322;
        v326 = v324;
        v327 = v317;
        v328 = v323;

        v329 = sub_19A5723DC();
        v330 = sub_19A57353C();

        v501 = v328;
        if (os_log_type_enabled(v329, v330))
        {
          v493 = v64;
          v490 = v330;
          v331 = swift_slowAlloc();
          v332 = swift_slowAlloc();
          v515 = v332;
          *v331 = 136380931;
          v333 = sub_19A572F9C();
          v334 = MEMORY[0x19A900970](v333);
          v336 = v335;

          v337 = sub_19A31F114(v334, v336, &v515);

          *(v331 + 4) = v337;
          v66 = v509;
          *(v331 + 12) = 2080;
          *(v331 + 14) = sub_19A31F114(0x6E6F73726570, 0xE600000000000000, &v515);
          _os_log_impl(&dword_19A2DE000, v329, v490, "Replacing named entity string %{private}s with %s", v331, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x19A902C50](v332, -1, -1);
          v64 = v493;
          v317 = MEMORY[0x1E69E6158];
          MEMORY[0x19A902C50](v331, -1, -1);
        }

        else
        {

          v317 = v327;
        }

        v338 = *(v66 + 1952);
        swift_beginAccess();
        v339 = [*(v338 + 40) mutableString];
        v340 = sub_19A572CCC();
        [v339 replaceCharactersInRange:v511.location withString:{v506, v340}];

        v56 = v509;
        v509[47] = v317;
        v509[48] = sub_19A2F4450();
        v509[44] = 0x6E6F73726570;
        v509[45] = 0xE600000000000000;
        if ((v501 ^ v326) >> 14)
        {
          v319 = sub_19A3859C0(v501, v326, v509 + 44);
          v313 = v496;
          v120 = v497;
          if (v64)
          {
            goto LABEL_207;
          }
        }

        else
        {
          v319 = sub_19A384CAC(v509 + 44, v501);
          v313 = v496;
          v120 = v497;
          if (v64)
          {
LABEL_207:
            v341 = v321;
            v342 = v320;
            v343 = v319;
            sub_19A387988();
            swift_allocError();
            *v344 = v343;
            *(v344 + 8) = v342;
            v244 = v509;
            *(v344 + 16) = v341;
            __swift_destroy_boxed_opaque_existential_0Tm((v509 + 44));
            swift_endAccess();

            goto LABEL_208;
          }
        }

        __swift_destroy_boxed_opaque_existential_0Tm((v509 + 44));
        swift_endAccess();
        v64 = 0;
        v66 = v509;
      }

      v318 -= 2;
      if (!--v316)
      {
        goto LABEL_220;
      }
    }

    __break(1u);
LABEL_223:
    __break(1u);
LABEL_224:
    v367 = *(v120[244] + 40);

    v368 = [v367 string];
    v369 = sub_19A572CFC();
    v371 = v370;

    v120[292] = v371;
    v120[140] = v56;
    v507 = (v64 + *v64);
    v372 = swift_task_alloc();
    v120[293] = v372;
    *v372 = v120;
    v372[1] = sub_19A3D59D4;
    v373 = v120[191];
    v374 = v120 + 140;
    goto LABEL_225;
  }

  *(v64 + 2144) = v489;
  while (1)
  {
    *(v64 + 2152) = v65;
    v68 = *(v64 + 2112);
    if (v65 >= *(v68 + 16))
    {
      __break(1u);
      goto LABEL_186;
    }

    v69 = *(v64 + 1952);
    v499 = v65;
    v70 = (v68 + 24 * v65);
    v71 = v70[4];
    *(v64 + 2160) = v71;
    v72 = v70[5];
    *(v64 + 2168) = v72;
    v73 = v70[6];
    *(v64 + 2176) = v73;
    v74 = *(v69 + 40);

    v56 = [v74 string];
    sub_19A572CFC();
    v75 = [*(v69 + 40) string];
    sub_19A572CFC();
    v77 = v76;

    v511.location = v71;
    v511.length = v72;
    sub_19A57348C();
    LOBYTE(v72) = v78;

    if (v72)
    {
      goto LABEL_280;
    }

    v79 = sub_19A572F9C();
    v81 = v80;
    v83 = v82;
    v85 = v84;

    v86 = MEMORY[0x19A900970](v79, v81, v83, v85);
    v66 = v87;

    *(v64 + 2184) = v86;
    *(v64 + 2192) = v66;
    v88 = *(v73 + 32);
    *(v64 + 2380) = v88;
    type metadata accessor for EntityExtractor.NamedEntity();
    v89 = swift_dynamicCastClass();
    if (v89)
    {
      v90 = v89;

      location = v511.location;
    }

    else
    {
      location = v511.location;
      if (v88 == 2)
      {
        v92 = *(v73 + 16);
        v93 = *(v73 + 24);
        v90 = swift_allocObject();
        *(v90 + 40) = MEMORY[0x1E69E7CC0];
        *(v90 + 16) = v92;
        *(v90 + 24) = v93;
        *(v90 + 32) = 2;
      }

      else
      {
        v90 = 0;
      }
    }

    *(v64 + 2200) = v90;
    v94 = *(v64 + 2032);
    v95 = *(v94 + 16);
    if (!v95)
    {
LABEL_50:
      if (!v90)
      {
        goto LABEL_53;
      }

      if ((*(v64 + 1352) & 1) == 0)
      {
        v103 = *(v64 + 1952);
        v104 = *(v64 + 1752);
        v105 = *(*(v64 + 1576) + 20);
        v106 = type metadata accessor for NamedEntityData.PhotosPersonData(0);
        (*(*(v106 - 8) + 56))(v104 + v105, 1, 1, v106);
        *v104 = v86;
        v104[1] = v66;
        swift_storeEnumTagMultiPayload();
        v107 = *(v103 + 40);

        v108 = v107;
        sub_19A340970(v104, location, v511.length);

        v64 = v509;

        v67 = v492;
        goto LABEL_26;
      }

      v123 = *(v90 + 40);
      if (*(v123 + 16) != 1)
      {

LABEL_80:
        v128 = v509[230];
        v129 = v509[185];
        v130 = v509[184];
        sub_19A33546C(v509[160], v128, &qword_1EAF9FD80);
        if ((*(v129 + 48))(v128, 1, v130) == 1)
        {
          sub_19A2F3FA0(v509[230], &qword_1EAF9FD80);
          goto LABEL_84;
        }

        (*(v509[185] + 32))(v509[187], v509[230], v509[184]);
        if (*(*(v90 + 40) + 16))
        {
          (*(v509[185] + 8))(v509[187], v509[184]);
LABEL_84:
          if (*(*(v90 + 40) + 16))
          {
            v350 = v509[265];
            v351 = v509[169];

            v353 = sub_19A3E2C08(v352, v86, v66, v350);
            v509[294] = v353;
            v509[295] = v489;

            v354 = swift_task_alloc();
            v509[296] = v354;
            *v354 = v509;
            v354[1] = sub_19A3DA250;
            v355 = v509[255];
            v356 = v509[244];
            v357 = v484[2];
            v358 = v509[164];
            v359 = v509[163];
            v360 = v509[162];
            v361 = v509[161];
            v524 = v86;
            v525 = v66;
            v523 = v357;
            v522 = v88;
            v521 = v511;
            v519 = v358;
            v520 = v356;

            sub_19A3DF2F8(v353, v511.location, v511.length, v355, (v351 & 4) != 0, v361, v360, v359);
            return;
          }

          v131 = v509[255];
          v132 = v509[212];
          v133 = v509[207];
          v77 = v509[197];

          v134 = *(v77 + 20);
          v135 = type metadata accessor for NamedEntityData.PhotosPersonData(0);
          v509[288] = v135;
          v136 = *(v135 - 8);
          v509[289] = v136;
          (*(v136 + 56))(v132 + v134, 1, 1, v135);
          *v132 = v86;
          v132[1] = v66;
          swift_storeEnumTagMultiPayload();

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF9FFB0);
          v137 = (*(v133 + 80) + 32) & ~*(v133 + 80);
          v64 = swift_allocObject();
          v509[290] = v64;
          *(v64 + 16) = xmmword_19A576E10;
          sub_19A3E3C64(v132, v64 + v137, type metadata accessor for Concept);
          v509[142] = v64;

          v138 = sub_19A3DEBC0(v511.location, v511.length, v131);
          sub_19A47086C(v138);
          v56 = v509[142];
          v509[291] = v56;
          v139 = *(v56 + 16);
          if (v139 != 1)
          {
            if (!v139)
            {

              v64 = v509;
              goto LABEL_121;
            }

LABEL_90:
            v120 = v509;
            if (v509[161] != 1)
            {
              v64 = v509[163];
              if (v64)
              {
                goto LABEL_224;
              }
            }

            v140 = *(v509[244] + 40);
            v141 = qword_1EAF9F838;

            v142 = v140;
            if (v141 != -1)
            {
              swift_once();
            }

            v143 = v509[207];
            v144 = v509[206];
            v145 = v509[192];
            v146 = qword_1EAFCA248;
            v509[139] = v56;
            swift_bridgeObjectRetain_n();
            [v142 addAttribute:v146 value:sub_19A57402C() range:v511];
            swift_unknownObjectRelease();

            (*(v143 + 56))(v145, 1, 1, v144);
            v64 = v509;
            if ((*(v143 + 48))(v509[192], 1, v509[206]) == 1)
            {
            }

            else
            {
              v55 = v509[271];
              v164 = v509[270];
              v165 = v509[255];
              v166 = swift_task_alloc();
              v511.length = v164;
              *(v166 + 16) = v164;
              *(v166 + 24) = v55;
              swift_beginAccess();
              v56 = *(v165 + 16);
              v167 = (v56 + 16);
              v77 = *(v56 + 16);
              if (v77)
              {
                v64 = 0;
                v9 = 1;
                v168 = v164;
                while (1)
                {
                  v169 = v509[178];
                  v170 = (*(v169 + 80) + 32) & ~*(v169 + 80);
                  v171 = *(v169 + 72);
                  v526.location = v511.length;
                  v526.length = v55;
                  if (NSIntersectionRange(*(v56 + v170 + v171 * v64 + *(v509[1416] + 48)), v526).length > 0)
                  {
                    break;
                  }

                  ++v64;
                  ++v9;
                  if (v77 == v64)
                  {
                    v64 = *v167;
                    v77 = *v167;
                    goto LABEL_118;
                  }
                }

                v77 = v64 + 1;
                if (__OFADD__(v64, 1))
                {
                  goto LABEL_282;
                }

                v180 = *v167;
                if (v77 != *v167)
                {
                  v6 = v170 + v171 * v9;
                  v511.location = v55;
                  while (v77 < v180)
                  {
                    v9 = v56 + v6;
                    v527.location = v168;
                    v527.length = v55;
                    if (NSIntersectionRange(*(v56 + v6 + *(v509[1416] + 48)), v527).length <= 0)
                    {
                      if (v77 != v64)
                      {
                        if ((v64 & 0x8000000000000000) != 0)
                        {
                          goto LABEL_276;
                        }

                        v197 = *v167;
                        if (v64 >= *v167)
                        {
                          goto LABEL_277;
                        }

                        sub_19A33546C(v56 + v170 + v64 * v171, v509[183], &qword_1EAF9FFE0);
                        if (v77 >= v197)
                        {
                          goto LABEL_278;
                        }

                        sub_19A33546C(v56 + v6, v509[182], &qword_1EAF9FFE0);
                        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                        {
                          v56 = sub_19A32E604(v56);
                        }

                        sub_19A3E3898(v509[182], v56 + v170 + v64 * v171);
                        if (v77 >= *(v56 + 16))
                        {
                          goto LABEL_279;
                        }

                        v196 = v509[255];
                        sub_19A3E3898(v509[183], v56 + v6);
                        *(v196 + 16) = v56;
                        v168 = v511.length;
                        v55 = v511.location;
                      }

                      ++v64;
                    }

                    ++v77;
                    v167 = (v56 + 16);
                    v180 = *(v56 + 16);
                    v6 += v171;
                    if (v77 == v180)
                    {
                      goto LABEL_117;
                    }
                  }

LABEL_270:
                  __break(1u);
                  goto LABEL_271;
                }

LABEL_117:
                if (v77 < v64)
                {
                  goto LABEL_281;
                }
              }

              else
              {
                v64 = 0;
              }

LABEL_118:
              v181 = v64;
              v64 = v509;
              sub_19A46B010(v181, v77);
              swift_endAccess();
            }

            sub_19A2F3FA0(*(v64 + 1536), &qword_1EAFA10A8);
            goto LABEL_120;
          }

          if (v509[169] & 4) != 0 && (sub_19A3C4F5C(v56))
          {
            goto LABEL_90;
          }

          if (!*(v64 + 16))
          {
LABEL_275:
            __break(1u);
LABEL_276:
            __break(1u);
LABEL_277:
            __break(1u);
LABEL_278:
            __break(1u);
LABEL_279:
            __break(1u);
LABEL_280:
            __break(1u);
LABEL_281:
            __break(1u);
LABEL_282:
            __break(1u);
LABEL_283:
            __break(1u);
LABEL_284:
            __break(1u);
LABEL_285:
            v465 = *(*(v77 + 1952) + 40);

            v466 = [v465 string];
            v467 = sub_19A572CFC();
            v469 = v468;

            *(v77 + 2240) = v469;
            *(v77 + 1184) = v56;
            v510 = (v64 + *v64);
            v470 = swift_task_alloc();
            *(v77 + 2248) = v470;
            *v470 = v77;
            v470[1] = sub_19A3CC9EC;
            v373 = *(v77 + 1560);
            v374 = (v77 + 1184);
            v375 = v467;
            v376 = v469;
            v378 = v511.length;
            v377 = v511.location;
            v379 = v510;
LABEL_226:

            v379(v373, v375, v376, v377, v378, v374);
            return;
          }

          v147 = v509[219];
          v148 = *(v509[244] + 40);
          sub_19A3E3C64(v64 + v137, v147, type metadata accessor for Concept);

          v149 = v148;
          v64 = v509;

          sub_19A340970(v147, v511.location, v511.length);

          sub_19A3E3E40(v147, type metadata accessor for Concept);
LABEL_120:

LABEL_121:

          v59 = *(v64 + 2176);
          v182 = *(v64 + 1696);

          sub_19A3E3E40(v182, type metadata accessor for Concept);
          v489 = *(v64 + 2144);
        }

        else
        {
          v150 = v509[265];
          v151 = v509[215];
          v152 = v509[207];
          v504 = v509[255];
          v153 = v509[197];
          v154 = v509[187];
          v155 = v509[185];
          v156 = v509[184];

          v157 = sub_19A41F408(v154, v150);
          v64 = v151 + *(v153 + 20);
          (*(v155 + 16))(v64, v154, v156);
          v158 = type metadata accessor for NamedEntityData.PhotosPersonData(0);
          v509[282] = v158;
          *(v64 + *(v158 + 20)) = 0;
          *(v64 + *(v158 + 24)) = (v157 & 1) == 0;
          v159 = *(v158 - 8);
          v509[283] = v159;
          v77 = v509;
          (*(v159 + 56))(v64, 0, 1, v158);
          *v151 = v86;
          v151[1] = v66;
          swift_storeEnumTagMultiPayload();

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF9FFB0);
          v160 = (*(v152 + 80) + 32) & ~*(v152 + 80);
          v161 = swift_allocObject();
          v509[284] = v161;
          *(v161 + 16) = xmmword_19A576E10;
          sub_19A3E3C64(v151, v161 + v160, type metadata accessor for Concept);
          v509[141] = v161;

          v162 = sub_19A3DEBC0(v511.location, v511.length, v504);
          sub_19A47086C(v162);
          v56 = v509[141];
          v509[285] = v56;
          v163 = *(v56 + 16);
          if (v163 == 1)
          {
            if ((v509[169] & 4) == 0 || (sub_19A3C4F5C(v56) & 1) == 0)
            {

              if (!*(v161 + 16))
              {
                goto LABEL_283;
              }

              v183 = v509[219];
              v184 = *(v509[244] + 40);
              sub_19A3E3C64(v161 + v160, v183, type metadata accessor for Concept);

              v185 = v184;

              sub_19A340970(v183, v511.location, v511.length);

              v77 = v509;
              sub_19A3E3E40(v183, type metadata accessor for Concept);
              goto LABEL_128;
            }
          }

          else if (!v163)
          {

            goto LABEL_128;
          }

          if (v509[161] != 1)
          {
            v172 = v509[163];
            if (v172)
            {
              v401 = *(v509[244] + 40);

              v402 = [v401 string];
              v369 = sub_19A572CFC();
              v371 = v403;

              v509[286] = v371;
              v509[144] = v56;
              v507 = v172 + *v172;
              v404 = swift_task_alloc();
              v509[287] = v404;
              *v404 = v509;
              v404[1] = sub_19A3D11E0;
              v373 = v509[193];
              v374 = v509 + 144;
LABEL_225:
              v375 = v369;
              v376 = v371;
              v378 = v511.length;
              v377 = v511.location;
              v379 = v507;
              goto LABEL_226;
            }
          }

          v173 = *(v509[244] + 40);
          v174 = qword_1EAF9F838;

          v175 = v173;
          if (v174 != -1)
          {
            swift_once();
          }

          v176 = v509[207];
          v177 = v509[206];
          v178 = v509[194];
          v179 = qword_1EAFCA248;
          v509[143] = v56;
          swift_bridgeObjectRetain_n();
          [v175 addAttribute:v179 value:sub_19A57402C() range:v511];
          swift_unknownObjectRelease();

          (*(v176 + 56))(v178, 1, 1, v177);
          if ((*(v176 + 48))(v509[194], 1, v509[206]) == 1)
          {

            v489 = v509[268];
          }

          else
          {
            v186 = v509[271];
            v187 = v509[270];
            v64 = v509[268];
            v188 = v509[255];
            v56 = swift_task_alloc();
            *(v56 + 16) = v187;
            *(v56 + 24) = v186;
            swift_beginAccess();
            v189 = sub_19A3E3548((v188 + 16), sub_19A3E3908, v56);
            if (v64)
            {
              goto LABEL_259;
            }

            v190 = *(*(v509[255] + 16) + 16);
            if (v190 < v189)
            {
              goto LABEL_284;
            }

            sub_19A46B010(v189, v190);
            swift_endAccess();

            v77 = v509;

            v489 = 0;
          }

          sub_19A2F3FA0(*(v77 + 1552), &qword_1EAFA10A8);
LABEL_128:

          v59 = *(v77 + 2176);
          v191 = *(v77 + 1720);
          v192 = v509[187];
          v193 = v509[185];
          v194 = v509[184];

          sub_19A3E3E40(v191, type metadata accessor for Concept);
          v195 = v192;
          v64 = v509;
          (*(v193 + 8))(v195, v194);
        }

        goto LABEL_22;
      }

      v49 = v64;
      v124 = *(v64 + 1640);
      v125 = v49[202];
      v126 = *(v49[203] + 80);
      sub_19A3E3C64(v123 + ((v126 + 32) & ~v126), v124, type metadata accessor for EntityExtractor.NamedEntity.EntityData);
      if (*(v124 + *(v125 + 20)))
      {
        v127 = v49[205];

        sub_19A3E3E40(v127, type metadata accessor for EntityExtractor.NamedEntity.EntityData);
        goto LABEL_80;
      }

      v198 = v49[265];
      v505 = v49[255];
      v473 = v49[218];
      v500 = v49[207];
      v199 = v49[205];
      v200 = v49[204];
      v472 = v49[202];
      v201 = v49[201];
      v202 = v49[197];
      v203 = v49[185];
      v204 = v49[184];
      sub_19A3E3C64(v199, v200, type metadata accessor for EntityExtractor.NamedEntity.EntityData);

      LOBYTE(v198) = sub_19A41F408(v199, v198);
      *v201 = v86;
      v201[1] = v66;
      v205 = v201 + *(v202 + 20);
      (*(v203 + 16))(v205, v200, v204);
      LOBYTE(v203) = *(v200 + *(v472 + 20));
      sub_19A3E3E40(v200, type metadata accessor for EntityExtractor.NamedEntity.EntityData);
      v206 = type metadata accessor for NamedEntityData.PhotosPersonData(0);
      v49[276] = v206;
      v205[*(v206 + 20)] = v203;
      v205[*(v206 + 24)] = (v198 & 1) == 0;
      v207 = *(v206 - 8);
      v49[277] = v207;
      (*(v207 + 56))(v205, 0, 1, v206);
      sub_19A3E3C64(v201, v473, type metadata accessor for NamedEntityData);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF9FFB0);
      v208 = (*(v500 + 80) + 32) & ~*(v500 + 80);
      v209 = swift_allocObject();
      v49[278] = v209;
      *(v209 + 16) = xmmword_19A576E10;
      sub_19A3E3C64(v473, v209 + v208, type metadata accessor for Concept);
      v49[146] = v209;

      v210 = sub_19A3DEBC0(v511.location, v511.length, v505);
      sub_19A47086C(v210);
      v56 = v49[146];
      v49[279] = v56;
      v211 = *(v56 + 16);
      if (v211 != 1)
      {
        if (v211)
        {
          goto LABEL_150;
        }

        goto LABEL_21;
      }

      if ((v49[169] & 4) == 0 || (sub_19A3C4F5C(v56) & 1) == 0)
      {

        if (!*(v209 + 16))
        {
          goto LABEL_289;
        }

        v212 = v509[219];
        v213 = *(v49[244] + 40);
        sub_19A3E3C64(v209 + v208, v212, type metadata accessor for Concept);

        v214 = v213;

        sub_19A340970(v212, v511.location, v511.length);

        v49 = v509;
        sub_19A3E3E40(v212, type metadata accessor for Concept);
        goto LABEL_21;
      }

LABEL_150:
      v77 = v49;
      if (v49[161] != 1)
      {
        v64 = v49[163];
        if (v64)
        {
          goto LABEL_285;
        }
      }

      v215 = v49[244];

      v216 = *(v215 + 40);
      v217 = qword_1EAF9F838;

      v218 = v216;
      if (v217 != -1)
      {
        swift_once();
      }

      v219 = *(v77 + 1656);
      v220 = *(v77 + 1648);
      v9 = *(v77 + 1568);
      v221 = qword_1EAFCA248;
      *(v77 + 1176) = v56;
      swift_bridgeObjectRetain_n();
      [v218 addAttribute:v221 value:sub_19A57402C() range:v511];
      swift_unknownObjectRelease();

      (*(v219 + 56))(v9, 1, 1, v220);
      v6 = *(v219 + 48);
      v49 = v77;
      v50 = (v6)(v49[196], 1, v49[206]);
      goto LABEL_15;
    }

    v96 = location + v511.length;
    if (__OFADD__(location, v511.length))
    {
      __break(1u);
LABEL_215:
      __break(1u);
LABEL_216:
      __break(1u);
LABEL_217:
      __break(1u);
LABEL_218:
      __break(1u);
LABEL_219:
      __break(1u);
LABEL_220:
      v492 = v64;
      v362 = *(v66 + 1832);
      v363 = *(v66 + 1480);
      v364 = *(v66 + 1472);
      v365 = *(v66 + 1280);

      sub_19A33546C(v365, v362, &qword_1EAF9FD80);
      if ((*(v363 + 48))(v362, 1, v364) == 1)
      {
        sub_19A2F3FA0(*(v66 + 1832), &qword_1EAF9FD80);
        v366 = v479;
        v88 = 0x1E7517000;
        goto LABEL_238;
      }

      v380 = *(v66 + 1952);
      v381 = *(v66 + 1488);
      (*(*(v66 + 1480) + 32))(v381, *(v66 + 1832), *(v66 + 1472));
      *(v66 + 2376) = 1;
      v382 = *(v380 + 40);

      v383 = v382;
      v384 = [v383 length];
      v385 = swift_task_alloc();
      *(v385 + 16) = v381;
      *(v385 + 24) = v484;
      v386 = swift_allocObject();
      *(v386 + 16) = sub_19A3E3CCC;
      *(v386 + 24) = v385;
      *(v66 + 288) = sub_19A3E4068;
      *(v66 + 296) = v386;
      *(v66 + 256) = MEMORY[0x1E69E9820];
      *(v66 + 264) = v1;
      *(v66 + 272) = sub_19A3C4EB0;
      *(v66 + 280) = &block_descriptor_52;
      v387 = _Block_copy(v474);

      v88 = &off_1E7517000;
      [v383 enumerateAttribute:v485 inRange:0 options:v384 usingBlock:{0, v387}];

      _Block_release(v387);
      v388 = swift_isEscapingClosureAtFileLocation();

      if ((v388 & 1) == 0)
      {

        if (*v484 != 1)
        {
          goto LABEL_234;
        }

        v389 = v509[208];
        v390 = v509[197];
        v391 = v509[186];
        v392 = v509[185];
        v393 = v509[184];
        v394 = sub_19A572E7C();
        v395 = v389 + *(v390 + 20);
        (*(v392 + 16))(v395, v391, v393);
        v396 = type metadata accessor for NamedEntityData.PhotosPersonData(0);
        v395[*(v396 + 20)] = 0;
        v395[*(v396 + 24)] = 0;
        (*(*(v396 - 8) + 56))(v395, 0, 1, v396);
        *v389 = 0x6E6F73726570;
        v389[1] = 0xE600000000000000;
        swift_storeEnumTagMultiPayload();
        swift_beginAccess();
        sub_19A340CA4(0x206E6F73726570, 0xE700000000000000, v389, 0, v394);
        if (!v492)
        {
          v405 = v509[208];
          swift_endAccess();
          sub_19A3E3E40(v405, type metadata accessor for Concept);
          v492 = 0;
          v66 = v509;
          v366 = v479;
          v88 = &off_1E7517000;
          goto LABEL_237;
        }

        v397 = v509[208];
        v398 = v509[186];
        v399 = v509[185];
        v400 = v509[184];
        swift_endAccess();

        sub_19A3E3E40(v397, type metadata accessor for Concept);
        (*(v399 + 8))(v398, v400);

        v244 = v509;
        goto LABEL_208;
      }

      goto LABEL_290;
    }

    if (v96 < location)
    {
      goto LABEL_215;
    }

    v97 = (v94 + 40);
    while (1)
    {
      v99 = *(v97 - 1);
      v98 = *v97;
      v100 = v99 < v96 && location < v98;
      v101 = !v100 || v99 == v98;
      if (!v101 && location != v96)
      {
        break;
      }

      v97 += 4;
      if (!--v95)
      {
        goto LABEL_50;
      }
    }

LABEL_53:
    v109 = *(v64 + 2040);
    v110 = v509[244];
    v111 = v509[209];
    *v111 = v86;
    *(v111 + 8) = v66;
    *(v111 + 16) = v88;
    swift_storeEnumTagMultiPayload();
    v112 = *(v110 + 40);
    v64 = v509;

    v113 = v112;
    sub_19A340970(v111, location, v511.length);

    v114 = swift_task_alloc();
    *(v114 + 16) = location;
    *(v114 + 24) = v511.length;
    swift_beginAccess();
    v115 = *(v109 + 16);
    v116 = v115 + 2;
    v117 = v115[2];
    if (!v117)
    {
      v66 = 0;
      goto LABEL_25;
    }

    v66 = 0;
    v56 = 1;
    while (1)
    {
      v118 = v509[178];
      v119 = (*(v118 + 80) + 32) & ~*(v118 + 80);
      v120 = *(v118 + 72);
      if (NSIntersectionRange(*(v115 + v119 + v120 * v66 + *(v509[1416] + 48)), v511).length > 0)
      {
        break;
      }

      ++v66;
      ++v56;
      if (v117 == v66)
      {
        v66 = *v116;
        v117 = *v116;
        goto LABEL_25;
      }
    }

    v117 = v66 + 1;
    if (__OFADD__(v66, 1))
    {
      break;
    }

    v121 = *v116;
    if (v117 != *v116)
    {
      v56 = v119 + v120 * v56;
      do
      {
        if (v117 >= v121)
        {
          __break(1u);
          goto LABEL_178;
        }

        if (NSIntersectionRange(*(v115 + v56 + *(*(v64 + 1416) + 48)), v511).length <= 0)
        {
          if (v117 != v66)
          {
            if ((v66 & 0x8000000000000000) != 0)
            {
              goto LABEL_216;
            }

            v64 = *v116;
            if (v66 >= *v116)
            {
              goto LABEL_217;
            }

            sub_19A33546C(v115 + v119 + v66 * v120, v509[181], &qword_1EAF9FFE0);
            if (v117 >= v64)
            {
              goto LABEL_218;
            }

            sub_19A33546C(v115 + v56, v509[180], &qword_1EAF9FFE0);
            v64 = v509;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v115 = sub_19A32E604(v115);
            }

            sub_19A3E3898(v509[180], v115 + v119 + v66 * v120);
            if (v117 >= v115[2])
            {
              goto LABEL_219;
            }

            v122 = v509[255];
            sub_19A3E3898(v509[181], v115 + v56);
            *(v122 + 16) = v115;
          }

          ++v66;
        }

        ++v117;
        v116 = v115 + 2;
        v121 = v115[2];
        v56 += v120;
      }

      while (v117 != v121);
    }

    if (v117 < v66)
    {
      goto LABEL_223;
    }

LABEL_25:
    sub_19A46B010(v66, v117);
    swift_endAccess();

    v67 = v495;
LABEL_26:
    v65 = v499 + 1;
    v59 = *(v64 + 2136);
    sub_19A3E3E40(*v67, type metadata accessor for Concept);
    if ((v499 + 1) == v59)
    {
      goto LABEL_155;
    }
  }

  __break(1u);
LABEL_234:
  v66 = v509;
  v366 = v479;
LABEL_237:
  (*(*(v66 + 1480) + 8))(*(v66 + 1488), *(v66 + 1472));
LABEL_238:
  v406 = *(*(v66 + 1952) + 40);
  v407 = MEMORY[0x1E69E7CD0];
  *(v66 + 1208) = MEMORY[0x1E69E7CD0];
  *(v66 + 1224) = v407;

  v408 = v406;
  v409 = [v408 length];
  v410 = swift_task_alloc();
  *(v410 + 16) = v477;
  *(v410 + 24) = v478;
  v411 = swift_allocObject();
  *(v411 + 16) = sub_19A3E398C;
  *(v411 + 24) = v410;
  *(v66 + 144) = sub_19A3E4068;
  *(v66 + 152) = v411;
  *(v66 + 112) = MEMORY[0x1E69E9820];
  *(v66 + 120) = v1;
  *(v66 + 128) = sub_19A3C4EB0;
  *(v66 + 136) = &block_descriptor_30;
  v115 = v66;
  v412 = _Block_copy(v366);

  [v408 *(v88 + 3984)];
  _Block_release(v412);
  LOBYTE(v412) = swift_isEscapingClosureAtFileLocation();

  if (v412)
  {
    __break(1u);
    goto LABEL_287;
  }

  v413 = *(v66 + 1952);
  v414 = *(v66 + 1408);
  v415 = v115[175];

  v513 = v115[151];
  v508 = v115[153];

  v502 = v413[2];
  v416 = v413[4];
  v417 = v413[5];
  v512 = v413[3];
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();
  v418 = v417;
  v419 = [v418 string];
  sub_19A572CFC();

  sub_19A570C6C();
  v420 = v414 + *(v415 + 20);
  sub_19A570BFC();
  v421 = [v418 length];
  v422 = swift_task_alloc();
  *(v422 + 16) = v420;
  v423 = swift_allocObject();
  *(v423 + 16) = sub_19A3E3994;
  *(v423 + 24) = v422;
  v115[12] = sub_19A3E4068;
  v115[13] = v423;
  v115[8] = MEMORY[0x1E69E9820];
  v115[9] = v1;
  v115[10] = sub_19A3C4EB0;
  v115[11] = &block_descriptor_37;
  v424 = _Block_copy(v476);

  [v418 enumerateAttribute:v485 inRange:0 options:v421 usingBlock:{0, v424}];
  _Block_release(v424);
  LOBYTE(v424) = swift_isEscapingClosureAtFileLocation();

  if (v424)
  {
LABEL_287:
    __break(1u);
LABEL_288:
    __break(1u);
LABEL_289:
    __break(1u);
LABEL_290:
    __break(1u);
    return;
  }

  v425 = *MEMORY[0x1E696A518];
  v426 = [v418 length];
  v427 = swift_task_alloc();
  *(v427 + 16) = v420;
  v428 = swift_allocObject();
  *(v428 + 16) = sub_19A3E399C;
  *(v428 + 24) = v427;
  v115[42] = sub_19A3E4068;
  v115[43] = v428;
  v115[38] = MEMORY[0x1E69E9820];
  v115[39] = v1;
  v115[40] = sub_19A3C4EB0;
  v115[41] = &block_descriptor_44;
  v429 = _Block_copy(v475);

  [v418 enumerateAttribute:v425 inRange:0 options:v426 usingBlock:{0, v429}];
  _Block_release(v429);
  v430 = swift_isEscapingClosureAtFileLocation();

  if (v430)
  {
    goto LABEL_288;
  }

  v431 = v115[176];

  *v431 = v502;
  v431[1] = v512;
  v431[2] = v416;
  v432 = MEMORY[0x1E69E6158];
  v433 = v492;
  if (!v487)
  {
    v436 = 0;
    goto LABEL_246;
  }

  sub_19A570A4C();
  sub_19A3E3F34(&qword_1ED825330, MEMORY[0x1E6968678]);
  v434 = sub_19A572F7C();
  v115[52] = v432;
  v115[49] = v434;
  v115[50] = v435;
  sub_19A334618((v115 + 49), (v115 + 69));
  JSONValue.init(_:)(v115 + 69, &v514);
  if (!v492)
  {
    v437 = v514;
    v438 = swift_isUniquelyReferenced_nonNull_native();
    v515 = v487;
    sub_19A33D400(v437, 0x65746E656D677561, 0xEF74706D6F725064, v438);
    v436 = v515;
    __swift_destroy_boxed_opaque_existential_0Tm((v115 + 49));
LABEL_246:
    v439 = v115[161];
    if (v439 > 1)
    {
      v440 = v509[257];
      v441 = v509[239];
      v442 = v509[238];
      v498 = v442;
      v503 = v115[259];
      v443 = swift_task_alloc();
      v440(v443, v441, v442);

      v444 = swift_slowAlloc();
      *v444 = 0;
      v445 = sub_19A57234C();
      v446 = sub_19A57361C();
      v447 = sub_19A5722FC();
      _os_signpost_emit_with_name_impl(&dword_19A2DE000, v445, v446, v447, "reportConcepts", "", v444, 2u);

      sub_19A3C3960(v448, sub_19A31EFC8, type metadata accessor for Concept, sub_19A32F034);
      v439();

      v449 = sub_19A57360C();
      v450 = sub_19A5722FC();
      v115 = v509;
      _os_signpost_emit_with_name_impl(&dword_19A2DE000, v445, v449, v450, "reportConcepts", "", v444, 2u);

      v433 = v492;

      MEMORY[0x19A902C50](v444, -1, -1);
      sub_19A2E0A60(v439);
      v503(v443, v498);
    }

    else
    {
    }

    if (v436)
    {
      v451 = sub_19A3C3960(v513, sub_19A31EFC8, type metadata accessor for Concept, sub_19A32F034);
      v115[68] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA0318);
      v115[65] = v451;
      sub_19A334618((v115 + 65), (v115 + 61));
      JSONValue.init(_:)(v115 + 61, &v514);
      if (v433)
      {
        sub_19A3E3E40(v115[176], type metadata accessor for TextPrompt);

        __swift_destroy_boxed_opaque_existential_0Tm((v115 + 65));
LABEL_174:

        goto LABEL_175;
      }

      v453 = v514;
      v454 = swift_isUniquelyReferenced_nonNull_native();
      v515 = v436;
      sub_19A33D400(v453, 0xD000000000000012, 0x800000019A595740, v454);
      v452 = v515;
      __swift_destroy_boxed_opaque_existential_0Tm((v115 + 65));
      v433 = 0;
    }

    else
    {

      v452 = 0;
    }

    if (*(v508 + 16))
    {
      v455 = sub_19A3C3960(v508, sub_19A31EFA0, MEMORY[0x1E69695A8], sub_19A32ED90);
      sub_19A3E39A4(v455);
      if (v433)
      {
        v244 = v509;
        sub_19A3E3E40(v509[176], type metadata accessor for TextPrompt);

        goto LABEL_208;
      }

      v115 = v509;
    }

    else
    {
    }

    if (v452)
    {
      v456 = v115[165];
      if (v456)
      {
        LOBYTE(v515) = v486;
        v516 = v452;
        v456(&v515);
      }
    }

    v457 = v115[244];
    v458 = v115[237];
    v459 = v115[235];
    v471 = v115[234];
    v460 = v115[176];
    sub_19A3E3C64(v460, v115[154], type metadata accessor for TextPrompt);
    v461 = [*(v457 + 40) string];
    v462 = sub_19A572CFC();
    v491 = v463;
    v494 = v462;

    sub_19A3E3E40(v460, type metadata accessor for TextPrompt);

    sub_19A3DF010("validateText", 12, 2);

    (*(v459 + 8))(v458, v471);

    v464 = v115[1];

    v464(v494, v491);
    return;
  }

  sub_19A3E3E40(v115[176], type metadata accessor for TextPrompt);

  __swift_destroy_boxed_opaque_existential_0Tm((v115 + 49));

LABEL_175:

  v244 = v115;
LABEL_208:

  v345 = v244[237];
  v346 = v244[235];
  v347 = v244;
  v348 = v244[234];
  sub_19A3DF010("validateText", 12, 2);

  (*(v346 + 8))(v345, v348);

  v349 = v347[1];

  v349();
}

uint64_t sub_19A3D11E0()
{

  return MEMORY[0x1EEE6DFA0](sub_19A3D12F8, 0, 0);
}

void sub_19A3D12F8()
{
  v518 = v0;
  v2 = v0 + 2376;
  aBlock = (v0 + 16);
  v478 = (v0 + 112);
  v482 = (v0 + 160);
  v485 = (v0 + 208);
  v473 = (v0 + 256);
  v3 = v0 + 304;
  v480 = v0 + 1160;
  v486 = v0 + 1192;
  v481 = v0 + 1200;
  v476 = v0 + 1224;
  v477 = v0 + 1208;
  v4 = *(v0 + 1656);
  v5 = *(v0 + 1648);
  v6 = *(v0 + 1544);
  v7 = *(v4 + 48);
  v483 = (v0 + 2376);
  v474 = (v0 + 304);
  v475 = (v0 + 64);
  if ((v7)(v6, 1, v5) == 1)
  {
    v8 = *(v0 + 1552);
    sub_19A2E0A60(*(v0 + 1304));
    sub_19A2F3FA0(v6, &qword_1EAFA10A8);
    (*(v4 + 56))(v8, 1, 1, v5);
    goto LABEL_14;
  }

  v9 = *(v0 + 1712);
  v10 = *(v0 + 1704);
  sub_19A3E3DD8(v6, v9, type metadata accessor for Concept);
  sub_19A3E3C64(v9, v10, type metadata accessor for Concept);
  if (swift_getEnumCaseMultiPayload() == 4)
  {
    v11 = *(v0 + 2264);
    v12 = *(v0 + 2256);
    v13 = *(v0 + 1592);
    v14 = *(v0 + 1576);
    v15 = *(v0 + 1512);
    sub_19A3E3DD8(*(v0 + 1704), v13, type metadata accessor for NamedEntityData);
    sub_19A3E3C64(v13 + *(v14 + 20), v15, type metadata accessor for NamedEntityData.NamedEntityType);
    if ((*(v11 + 48))(v15, 1, v12) != 1)
    {
      v36 = *(v0 + 2168);
      v37 = *(v0 + 2160);
      v38 = v7;
      v39 = *(v0 + 1952);
      v40 = *(v0 + 1712);
      v512.length = *(v0 + 1592);
      v3 = *(v0 + 1304);
      sub_19A3E3E40(*(v0 + 1512), type metadata accessor for NamedEntityData.NamedEntityType);
      v41 = *(v39 + 40);

      v42 = v41;
      sub_19A340970(v40, v37, v36);
      sub_19A2E0A60(v3);

      v7 = v38;
      v27 = type metadata accessor for NamedEntityData;
      length = v512.length;
      goto LABEL_12;
    }

    v16 = *(v0 + 1512);
    sub_19A3E3E40(*(v0 + 1592), type metadata accessor for NamedEntityData);
    sub_19A3E3E40(v16, type metadata accessor for NamedEntityData.NamedEntityType);
    v2 = v0 + 2376;
  }

  else
  {
    sub_19A3E3E40(*(v0 + 1704), type metadata accessor for Concept);
  }

  v17 = *(v0 + 2380);
  if (v17 != 3 && (*(v2 + 2) & 1) == 0)
  {
    v18 = *(v0 + 2192);
    v19 = *(v0 + 2168);
    v20 = *(v0 + 2160);
    v21 = v7;
    v22 = *(v0 + 1952);
    v23 = *(v0 + 1752);
    v512.length = *(v0 + 1312);
    v3 = *(v0 + 1304);
    *v23 = *(v0 + 2184);
    *(v23 + 8) = v18;
    *(v23 + 16) = v17;
    swift_storeEnumTagMultiPayload();
    v24 = *(v22 + 40);

    v25 = v24;
    v7 = v21;
    v26 = v25;
    sub_19A340970(v23, v20, v19);
    sub_19A2E0A60(v3);

    v27 = type metadata accessor for Concept;
    length = v23;
LABEL_12:
    sub_19A3E3E40(length, v27);
    goto LABEL_13;
  }

  v29 = *(v0 + 2168);
  v30 = *(v0 + 2160);
  v31 = *(v0 + 1952);
  v32 = *(v0 + 1712);
  v33 = *(v0 + 1304);
  v3 = *(v31 + 24);
  v34 = *(v31 + 40);

  v35 = v34;
  sub_19A340970(v32, v30, v29);
  sub_19A2E0A60(v33);

LABEL_13:
  v43 = *(v0 + 1656);
  v44 = *(v0 + 1648);
  v45 = *(v0 + 1552);
  sub_19A3E3DD8(*(v0 + 1712), v45, type metadata accessor for Concept);
  (*(v43 + 56))(v45, 0, 1, v44);
LABEL_14:
  v488 = (v0 + 1752);
  v491 = (v0 + 1672);
  v484 = 1;
  v46 = v0;
  v510 = v0;
  v47 = (v7)(*(v46 + 1552), 1, *(v46 + 1648));
LABEL_15:
  if (v47 == 1)
  {

    v487 = *(v46 + 2144);
  }

  else
  {
    v48 = *(v46 + 2168);
    v49 = *(v46 + 2160);
    v50 = *(v46 + 2144);
    v51 = *(v46 + 2040);
    v52 = swift_task_alloc();
    *(v52 + 16) = v49;
    *(v52 + 24) = v48;
    swift_beginAccess();
    v53 = sub_19A3E3548(v51 + 2, sub_19A3E3908, v52);
    if (v50)
    {
LABEL_236:

      swift_endAccess();
      return;
    }

    v54 = *(*(*(v46 + 2040) + 16) + 16);
    if (v54 < v53)
    {
      __break(1u);
      goto LABEL_270;
    }

    sub_19A46B010(v53, v54);
    swift_endAccess();

    v46 = v510;

    v487 = 0;
  }

  sub_19A2F3FA0(*(v46 + 1552), &qword_1EAFA10A8);
LABEL_21:

  v55 = *(v46 + 2176);
  v56 = *(v46 + 1720);
  v57 = *(v510 + 1496);
  v58 = *(v510 + 1480);
  v59 = *(v510 + 1472);

  sub_19A3E3E40(v56, type metadata accessor for Concept);
  v60 = v57;
  v61 = v510;
  (*(v58 + 8))(v60, v59);
LABEL_22:
  v62 = *(v61 + 2152) + 1;
  if (v62 == *(v61 + 2136))
  {
LABEL_155:
    v222 = *(v61 + 1952);

    sub_19A3DF010("buildEntityConcepts", 19, 2);

    *(v61 + 1192) = MEMORY[0x1E69E7CC0];
    swift_beginAccess();
    v223 = *(v222 + 40);
    v224 = v61;
    v225 = qword_1EAF9F838;

    v226 = v223;
    if (v225 != -1)
    {
      swift_once();
    }

    v227 = v224[244];
    v512.length = qword_1EAFCA248;
    v228 = [v226 length];
    v229 = swift_task_alloc();
    *(v229 + 16) = v486;
    *(v229 + 24) = v227;
    v230 = swift_allocObject();
    *(v230 + 16) = sub_19A3E393C;
    *(v230 + 24) = v229;
    v224[30] = sub_19A3E3944;
    v224[31] = v230;
    v224[26] = MEMORY[0x1E69E9820];
    v1 = 1107296256;
    v224[27] = 1107296256;
    v224[28] = sub_19A3C4EB0;
    v224[29] = &block_descriptor_3;
    v231 = _Block_copy(v485);
    v232 = v224[31];

    [v226 enumerateAttribute:v512.length inRange:0 options:v228 usingBlock:{0, v231}];

    _Block_release(v231);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
      goto LABEL_262;
    }

    if (*(*v486 + 16))
    {

      v234 = sub_19A5723DC();
      v235 = sub_19A57355C();
      if (os_log_type_enabled(v234, v235))
      {
        v236 = swift_slowAlloc();
        v237 = swift_slowAlloc();
        v516 = v237;
        *v236 = 136380675;
        swift_beginAccess();

        v239 = sub_19A3E501C(v238);
        v241 = v240;

        v242 = sub_19A31F114(v239, v241, &v516);

        *(v236 + 4) = v242;
        _os_log_impl(&dword_19A2DE000, v234, v235, "Unresolved ambiguities: %{private}s", v236, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v237);
        MEMORY[0x19A902C50](v237, -1, -1);
        MEMORY[0x19A902C50](v236, -1, -1);
      }

      swift_beginAccess();
      v243 = *(v510 + 1192);
      sub_19A3B8774();
      swift_allocError();
      *v244 = v243;
      *(v244 + 8) = 0;
      swift_willThrow();

      v245 = v510;
LABEL_208:

      v346 = v245[237];
      v347 = v245[235];
      v348 = v245;
      v349 = v245[234];
      sub_19A3DF010("validateText", 12, 2);

      (*(v347 + 8))(v346, v349);

      v350 = v348[1];

      v350();
      return;
    }

    v246 = MEMORY[0x1E69E6158];
    v61 = v510;
    if (v483[3] == 1)
    {
      v247 = *(v510 + 1952);
      LOBYTE(v515) = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFA2F70);
      v248 = swift_allocObject();
      *(v248 + 16) = xmmword_19A576E10;
      *(v248 + 32) = 0x74706D6F7270;
      *(v248 + 40) = 0xE600000000000000;
      v249 = [*(v247 + 40) string];
      v112 = v510;
      v250 = v249;
      v251 = sub_19A572CFC();
      v253 = v252;

      *(v248 + 72) = v246;
      *(v248 + 48) = v251;
      *(v248 + 56) = v253;
      v254 = sub_19A330370(v248);
      swift_setDeallocating();
      sub_19A2F3FA0(v248 + 32, &qword_1EAFA2F00);
      swift_deallocClassInstance();
      sub_19A338028(&v515, v254, &v516);
      if (v487)
      {
        goto LABEL_174;
      }

      LOBYTE(v485) = v516;
      v255 = v517;

      v487 = 0;
      v61 = v510;
    }

    else
    {
      LOBYTE(v485) = 0;
      v255 = 0;
    }

    v256 = &unk_1EAF9F000;
    v3 = &unk_1EAFCA000;
    v486 = v255;
    if (!(*(v61 + 1320) | *(v61 + 1352) & 2))
    {
      goto LABEL_189;
    }

    v257 = *(v61 + 1952);
    *(v61 + 1160) = MEMORY[0x1E69E7CD0];
    v258 = *(v257 + 32);
    v7 = v61;
    v259 = *(v257 + 40);
    v260 = qword_1EAF9F840;

    v512.length = v258;

    v51 = v259;
    if (v260 != -1)
    {
      goto LABEL_273;
    }

    while (1)
    {
      v46 = *(v3 + 592);
      v261 = [v51 length];
      v262 = swift_task_alloc();
      v52 = v480;
      *(v262 + 16) = v480;
      *(v262 + 24) = v257;
      v263 = swift_allocObject();
      *(v263 + 16) = sub_19A3E3CD4;
      *(v263 + 24) = v262;
      *(v7 + 48) = sub_19A3E4068;
      *(v7 + 56) = v263;
      *(v7 + 16) = MEMORY[0x1E69E9820];
      *(v7 + 24) = v1;
      *(v7 + 32) = sub_19A3C4EB0;
      *(v7 + 40) = &block_descriptor_59;
      v61 = _Block_copy(aBlock);

      [v51 enumerateAttribute:v46 inRange:0 options:v261 usingBlock:{0, v61}];

      _Block_release(v61);
      v264 = swift_isEscapingClosureAtFileLocation();

      if (v264)
      {
        __break(1u);
        goto LABEL_275;
      }

      if (*(*v480 + 16))
      {
        v61 = v510;
        v52 = v486;
        if (v486)
        {

          v266 = sub_19A3C3960(v265, sub_19A31EFC8, type metadata accessor for Concept, sub_19A32F034);
          *(v510 + 448) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA0318);
          *(v510 + 424) = v266;
          sub_19A334618(v510 + 424, v510 + 456);
          v112 = v510;
          JSONValue.init(_:)((v510 + 456), &v515);
          if (v487)
          {

            __swift_destroy_boxed_opaque_existential_0Tm(v510 + 424);
            goto LABEL_174;
          }

LABEL_178:
          v267 = v52;
          v268 = v515;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v516 = v267;
          sub_19A33D400(v268, 0xD000000000000010, 0x800000019A5989F0, isUniquelyReferenced_nonNull_native);
          v52 = v516;
          __swift_destroy_boxed_opaque_existential_0Tm((v112 + 53));
          v487 = 0;
          v61 = v112;
        }

        if ((*(v61 + 1352) & 2) != 0)
        {

          v278 = sub_19A5723DC();
          v279 = v61;
          v280 = sub_19A57355C();
          if (os_log_type_enabled(v278, v280))
          {
            v281 = swift_slowAlloc();
            v282 = swift_slowAlloc();
            v516 = v282;
            *v281 = 136380675;
            swift_beginAccess();

            v284 = sub_19A3E51D0(v283);
            v286 = v285;

            v287 = sub_19A31F114(v284, v286, &v516);

            *(v281 + 4) = v287;
            _os_log_impl(&dword_19A2DE000, v278, v280, "Disallowed concepts: %{private}s", v281, 0xCu);
            __swift_destroy_boxed_opaque_existential_0Tm(v282);
            MEMORY[0x19A902C50](v282, -1, -1);
            MEMORY[0x19A902C50](v281, -1, -1);
          }

          swift_beginAccess();

          v289 = sub_19A3C3960(v288, sub_19A31EFC8, type metadata accessor for Concept, sub_19A32F034);
          sub_19A3B8774();
          swift_allocError();
          *v290 = v289;
          *(v290 + 8) = 3;
          swift_willThrow();

          v245 = v279;
          goto LABEL_208;
        }

        v55 = sub_19A5723DC();
        v270 = sub_19A57355C();
        v486 = v52;
        if (os_log_type_enabled(v55, v270))
        {
          v271 = swift_slowAlloc();
          v272 = swift_slowAlloc();
          v516 = v272;
          *v271 = 136380675;
          swift_beginAccess();

          v274 = sub_19A3E51D0(v273);
          v276 = v275;

          v277 = sub_19A31F114(v274, v276, &v516);

          *(v271 + 4) = v277;
          v61 = v510;
          _os_log_impl(&dword_19A2DE000, v55, v270, "Disallowed concepts: %{private}s", v271, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v272);
          MEMORY[0x19A902C50](v272, -1, -1);
          MEMORY[0x19A902C50](v271, -1, -1);
        }

        else
        {
LABEL_186:
        }
      }

      else
      {

        v61 = v510;
      }

      v3 = 0x1EAFCA000;
      v256 = &unk_1EAF9F000;
LABEL_189:
      v291 = *(v61 + 2040);
      swift_beginAccess();
      v292 = *(v291 + 16);
      v293 = *(v292 + 16);
      if (v293)
      {
        v294 = *(v61 + 1424);
        v295 = (*(v61 + 1432) + *(*(v61 + 1416) + 48));
        v296 = v292 + ((*(v294 + 80) + 32) & ~*(v294 + 80));
        v512.location = *(v291 + 16);
        v512.length = *(v294 + 72);

        do
        {
          v297 = *(v61 + 1952);
          v298 = *(v61 + 1752);
          v299 = *(v61 + 1432);
          sub_19A33546C(v296, v299, &qword_1EAF9FFE0);
          v300 = *v295;
          v301 = v295[1];
          sub_19A3E3DD8(v299, v298, type metadata accessor for Concept);
          v302 = *(v297 + 40);

          v303 = v302;
          v304 = v300;
          v61 = v510;
          sub_19A340970(v298, v304, v301);

          sub_19A3E3E40(v298, type metadata accessor for Concept);
          v296 += v512.length;
          --v293;
        }

        while (v293);

        v3 = &unk_1EAFCA000;
        v256 = &unk_1EAF9F000;
      }

      v305 = *(v61 + 1952);
      *(v61 + 1200) = MEMORY[0x1E69E7CC0];
      v52 = *(v305 + 24);
      v306 = *(v305 + 40);
      v7 = v61;
      v307 = v256[264];

      v51 = v306;
      if (v307 != -1)
      {
LABEL_271:
        swift_once();
      }

      v308 = *(v3 + 592);
      v309 = [v51 length];
      v310 = swift_task_alloc();
      *(v310 + 16) = v481;
      v3 = swift_allocObject();
      *(v3 + 16) = sub_19A3E3984;
      *(v3 + 24) = v310;
      *(v7 + 192) = sub_19A3E4068;
      *(v7 + 200) = v3;
      *(v7 + 160) = MEMORY[0x1E69E9820];
      *(v7 + 168) = v1;
      *(v7 + 176) = sub_19A3C4EB0;
      *(v7 + 184) = &block_descriptor_23_0;
      v311 = _Block_copy(v482);

      v484 = v308;
      [v51 enumerateAttribute:v308 inRange:0 options:v309 usingBlock:{0, v311}];

      _Block_release(v311);
      v312 = swift_isEscapingClosureAtFileLocation();

      if ((v312 & 1) == 0)
      {
        break;
      }

      __break(1u);
LABEL_273:
      swift_once();
      v257 = *(v7 + 1952);
    }

    v313 = *(v7 + 1952);

    v61 = v487;
    v314 = sub_19A474074(*(v7 + 1200));
    *(v7 + 1200) = v314;

    v315 = [*(v313 + 40) string];
    v512.length = sub_19A572CFC();
    v117 = v316;

    v317 = *(v314 + 16);
    v63 = v7;
    v318 = MEMORY[0x1E69E6158];
    if (!v317)
    {
      goto LABEL_220;
    }

    v319 = (v314 + 16 * v317 + 24);
    v495 = v314;
    v496 = v117;
    while (v317 <= *(v314 + 16))
    {
      v323 = *(v319 - 1);
      v52 = *v319;
      v324 = sub_19A57348C();
      if ((v326 & 1) == 0)
      {
        v506 = v52;
        v512.location = v323;
        v327 = v325;
        v328 = v318;
        v329 = v324;

        v330 = sub_19A5723DC();
        v331 = sub_19A57353C();

        v501 = v329;
        if (os_log_type_enabled(v330, v331))
        {
          v492 = v61;
          v489 = v331;
          v332 = swift_slowAlloc();
          v333 = swift_slowAlloc();
          v516 = v333;
          *v332 = 136380931;
          v334 = sub_19A572F9C();
          v335 = MEMORY[0x19A900970](v334);
          v337 = v336;

          v338 = sub_19A31F114(v335, v337, &v516);

          *(v332 + 4) = v338;
          v63 = v510;
          *(v332 + 12) = 2080;
          *(v332 + 14) = sub_19A31F114(0x6E6F73726570, 0xE600000000000000, &v516);
          _os_log_impl(&dword_19A2DE000, v330, v489, "Replacing named entity string %{private}s with %s", v332, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x19A902C50](v333, -1, -1);
          v61 = v492;
          v318 = MEMORY[0x1E69E6158];
          MEMORY[0x19A902C50](v332, -1, -1);
        }

        else
        {

          v318 = v328;
        }

        v339 = *(v63 + 1952);
        swift_beginAccess();
        v340 = [*(v339 + 40) mutableString];
        v341 = sub_19A572CCC();
        [v340 replaceCharactersInRange:v512.location withString:{v506, v341}];

        v52 = v510;
        *(v510 + 376) = v318;
        *(v510 + 384) = sub_19A2F4450();
        *(v510 + 352) = 0x6E6F73726570;
        *(v510 + 360) = 0xE600000000000000;
        if ((v501 ^ v327) >> 14)
        {
          v320 = sub_19A3859C0(v501, v327, (v510 + 352));
          v314 = v495;
          v117 = v496;
          if (v61)
          {
            goto LABEL_207;
          }
        }

        else
        {
          v320 = sub_19A384CAC((v510 + 352), v501);
          v314 = v495;
          v117 = v496;
          if (v61)
          {
LABEL_207:
            v342 = v322;
            v343 = v321;
            v344 = v320;
            sub_19A387988();
            swift_allocError();
            *v345 = v344;
            *(v345 + 8) = v343;
            v245 = v510;
            *(v345 + 16) = v342;
            __swift_destroy_boxed_opaque_existential_0Tm(v510 + 352);
            swift_endAccess();

            goto LABEL_208;
          }
        }

        __swift_destroy_boxed_opaque_existential_0Tm(v510 + 352);
        swift_endAccess();
        v61 = 0;
        v63 = v510;
      }

      v319 -= 2;
      if (!--v317)
      {
        goto LABEL_220;
      }
    }

    __break(1u);
LABEL_223:
    __break(1u);
LABEL_224:
    v368 = *(*(v117 + 1952) + 40);

    v369 = [v368 string];
    v370 = sub_19A572CFC();
    v372 = v371;

    *(v117 + 2336) = v372;
    *(v117 + 1120) = v52;
    v507 = (v61 + *v61);
    v373 = swift_task_alloc();
    *(v117 + 2344) = v373;
    *v373 = v117;
    v373[1] = sub_19A3D59D4;
    v374 = *(v117 + 1528);
    v375 = (v117 + 1120);
    goto LABEL_225;
  }

  *(v61 + 2144) = v487;
  while (1)
  {
    *(v61 + 2152) = v62;
    v65 = *(v61 + 2112);
    if (v62 >= *(v65 + 16))
    {
      __break(1u);
      goto LABEL_186;
    }

    v66 = *(v61 + 1952);
    v498 = v62;
    v67 = (v65 + 24 * v62);
    v68 = v67[4];
    *(v61 + 2160) = v68;
    v69 = v67[5];
    *(v61 + 2168) = v69;
    v70 = v67[6];
    *(v61 + 2176) = v70;
    v71 = *(v66 + 40);

    v52 = [v71 string];
    sub_19A572CFC();
    v72 = [*(v66 + 40) string];
    sub_19A572CFC();
    v46 = v73;

    v512.location = v68;
    v512.length = v69;
    sub_19A57348C();
    LOBYTE(v69) = v74;

    if (v69)
    {
      goto LABEL_276;
    }

    v75 = sub_19A572F9C();
    v77 = v76;
    v79 = v78;
    v81 = v80;

    v82 = MEMORY[0x19A900970](v75, v77, v79, v81);
    v84 = v83;

    *(v61 + 2184) = v82;
    *(v61 + 2192) = v84;
    v85 = *(v70 + 32);
    *(v61 + 2380) = v85;
    type metadata accessor for EntityExtractor.NamedEntity();
    v86 = swift_dynamicCastClass();
    if (v86)
    {
      v87 = v86;

      location = v512.location;
    }

    else
    {
      location = v512.location;
      if (v85 == 2)
      {
        v89 = *(v70 + 16);
        v90 = *(v70 + 24);
        v87 = swift_allocObject();
        *(v87 + 40) = MEMORY[0x1E69E7CC0];
        *(v87 + 16) = v89;
        *(v87 + 24) = v90;
        *(v87 + 32) = 2;
      }

      else
      {
        v87 = 0;
      }
    }

    *(v61 + 2200) = v87;
    v91 = *(v61 + 2032);
    v92 = *(v91 + 16);
    if (!v92)
    {
LABEL_50:
      if (!v87)
      {
        goto LABEL_53;
      }

      if ((*(v61 + 1352) & 1) == 0)
      {
        v100 = *(v61 + 1952);
        v101 = *(v61 + 1752);
        v102 = *(*(v61 + 1576) + 20);
        v103 = type metadata accessor for NamedEntityData.PhotosPersonData(0);
        (*(*(v103 - 8) + 56))(v101 + v102, 1, 1, v103);
        *v101 = v82;
        v101[1] = v84;
        swift_storeEnumTagMultiPayload();
        v104 = *(v100 + 40);

        v105 = v104;
        sub_19A340970(v101, location, v512.length);

        v61 = v510;

        v64 = v488;
        goto LABEL_26;
      }

      v120 = *(v87 + 40);
      if (*(v120 + 16) == 1)
      {
        v121 = *(v61 + 1640);
        v122 = *(v61 + 1616);
        v123 = *(*(v61 + 1624) + 80);
        sub_19A3E3C64(v120 + ((v123 + 32) & ~v123), v121, type metadata accessor for EntityExtractor.NamedEntity.EntityData);
        if (*(v121 + *(v122 + 20)))
        {
          v124 = *(v61 + 1640);

          sub_19A3E3E40(v124, type metadata accessor for EntityExtractor.NamedEntity.EntityData);
          goto LABEL_80;
        }

        v138 = *(v61 + 2120);
        v139 = *(v61 + 1744);
        v499 = *(v61 + 1656);
        v503 = *(v61 + 2040);
        v46 = *(v61 + 1640);
        v140 = *(v61 + 1632);
        v494 = *(v61 + 1616);
        v141 = *(v61 + 1608);
        v142 = *(v61 + 1576);
        v143 = *(v61 + 1480);
        v472 = *(v61 + 1472);
        sub_19A3E3C64(v46, v140, type metadata accessor for EntityExtractor.NamedEntity.EntityData);

        LOBYTE(v138) = sub_19A41F408(v46, v138);
        *v141 = v82;
        v141[1] = v84;
        v144 = v141 + *(v142 + 20);
        (*(v143 + 16))(v144, v140, v472);
        LOBYTE(v143) = *(v140 + *(v494 + 20));
        sub_19A3E3E40(v140, type metadata accessor for EntityExtractor.NamedEntity.EntityData);
        v145 = type metadata accessor for NamedEntityData.PhotosPersonData(0);
        *(v61 + 2208) = v145;
        v144[*(v145 + 20)] = v143;
        v144[*(v145 + 24)] = (v138 & 1) == 0;
        v146 = *(v145 - 8);
        *(v61 + 2216) = v146;
        (*(v146 + 56))(v144, 0, 1, v145);
        sub_19A3E3C64(v141, v139, type metadata accessor for NamedEntityData);
        swift_storeEnumTagMultiPayload();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF9FFB0);
        v147 = (*(v499 + 80) + 32) & ~*(v499 + 80);
        v148 = swift_allocObject();
        *(v61 + 2224) = v148;
        *(v148 + 16) = xmmword_19A576E10;
        sub_19A3E3C64(v139, v148 + v147, type metadata accessor for Concept);
        *(v61 + 1168) = v148;

        v149 = sub_19A3DEBC0(v512.location, v512.length, v503);
        sub_19A47086C(v149);
        v52 = *(v61 + 1168);
        *(v61 + 2232) = v52;
        v150 = *(v52 + 16);
        if (v150 == 1)
        {
          if ((*(v61 + 1352) & 4) == 0 || (sub_19A3C4F5C(v52) & 1) == 0)
          {

            if (!*(v148 + 16))
            {
              goto LABEL_282;
            }

            v178 = *(v61 + 1952);
            v179 = *(v510 + 1752);
            v180 = *(v178 + 40);
            sub_19A3E3C64(v148 + v147, v179, type metadata accessor for Concept);

            v181 = v180;

            sub_19A340970(v179, v512.location, v512.length);

            v182 = v179;
            v61 = v510;
            sub_19A3E3E40(v182, type metadata accessor for Concept);
            goto LABEL_121;
          }
        }

        else if (!v150)
        {

LABEL_121:

          v55 = *(v61 + 2176);
          v188 = *(v61 + 1744);
          v189 = *(v510 + 1640);
          v190 = *(v510 + 1608);

          sub_19A3E3E40(v188, type metadata accessor for Concept);
          sub_19A3E3E40(v190, type metadata accessor for NamedEntityData);
          v191 = v189;
          v61 = v510;
          sub_19A3E3E40(v191, type metadata accessor for EntityExtractor.NamedEntity.EntityData);
          goto LABEL_22;
        }

        v46 = v61;
        if (*(v61 + 1288) != 1)
        {
          v169 = *(v61 + 1304);
          if (v169)
          {
            v402 = *(*(v46 + 1952) + 40);

            v403 = [v402 string];
            v404 = sub_19A572CFC();
            v406 = v405;

            *(v46 + 2240) = v406;
            *(v46 + 1184) = v52;
            v511 = v169 + *v169;
            v407 = swift_task_alloc();
            *(v46 + 2248) = v407;
            *v407 = v46;
            v407[1] = sub_19A3CC9EC;
            v374 = *(v46 + 1560);
            v375 = (v46 + 1184);
            v376 = v404;
            v377 = v406;
            v379 = v512.length;
            v378 = v512.location;
            v380 = v511;
            goto LABEL_233;
          }
        }

        v170 = *(v46 + 1952);

        v171 = *(v170 + 40);
        v172 = qword_1EAF9F838;

        v173 = v171;
        if (v172 != -1)
        {
          swift_once();
        }

        v174 = *(v46 + 1656);
        v175 = *(v46 + 1648);
        v176 = *(v46 + 1568);
        v177 = qword_1EAFCA248;
        *(v46 + 1176) = v52;
        swift_bridgeObjectRetain_n();
        [v173 addAttribute:v177 value:sub_19A57402C() range:v512];
        swift_unknownObjectRelease();

        (*(v174 + 56))(v176, 1, 1, v175);
        v61 = v46;
        if ((*(v174 + 48))(*(v46 + 1568), 1, *(v46 + 1648)) == 1)
        {

          v487 = *(v46 + 2144);
        }

        else
        {
          v183 = *(v46 + 2168);
          v184 = *(v46 + 2160);
          v61 = *(v46 + 2144);
          v185 = *(v46 + 2040);
          v52 = swift_task_alloc();
          *(v52 + 16) = v184;
          *(v52 + 24) = v183;
          swift_beginAccess();
          v186 = sub_19A3E3548((v185 + 16), sub_19A3E406C, v52);
          if (v61)
          {
            goto LABEL_236;
          }

          v187 = *(*(*(v46 + 2040) + 16) + 16);
          if (v187 < v186)
          {
            goto LABEL_283;
          }

          sub_19A46B010(v186, v187);
          swift_endAccess();
          v61 = v510;

          v487 = 0;
        }

        sub_19A2F3FA0(*(v61 + 1568), &qword_1EAFA10A8);
        goto LABEL_121;
      }

LABEL_80:
      v125 = *(v510 + 1840);
      v126 = *(v510 + 1480);
      v127 = *(v510 + 1472);
      sub_19A33546C(*(v510 + 1280), v125, &qword_1EAF9FD80);
      v128 = v125;
      v61 = v510;
      if ((*(v126 + 48))(v128, 1, v127) == 1)
      {
        sub_19A2F3FA0(*(v510 + 1840), &qword_1EAF9FD80);
        goto LABEL_84;
      }

      (*(*(v510 + 1480) + 32))(*(v510 + 1496), *(v510 + 1840), *(v510 + 1472));
      if (*(*(v87 + 40) + 16))
      {
        (*(*(v510 + 1480) + 8))(*(v510 + 1496), *(v510 + 1472));
LABEL_84:
        if (*(*(v87 + 40) + 16))
        {
          goto LABEL_213;
        }

        v129 = *(v510 + 2040);
        v130 = *(v510 + 1696);
        v131 = *(v510 + 1656);
        v46 = *(v510 + 1576);

        v132 = *(v46 + 20);
        v133 = type metadata accessor for NamedEntityData.PhotosPersonData(0);
        *(v510 + 2304) = v133;
        v134 = *(v133 - 8);
        *(v510 + 2312) = v134;
        (*(v134 + 56))(v130 + v132, 1, 1, v133);
        *v130 = v82;
        v130[1] = v84;
        swift_storeEnumTagMultiPayload();

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF9FFB0);
        v135 = (*(v131 + 80) + 32) & ~*(v131 + 80);
        v61 = swift_allocObject();
        *(v510 + 2320) = v61;
        *(v61 + 16) = xmmword_19A576E10;
        sub_19A3E3C64(v130, v61 + v135, type metadata accessor for Concept);
        *(v510 + 1136) = v61;

        v136 = sub_19A3DEBC0(v512.location, v512.length, v129);
        sub_19A47086C(v136);
        v52 = *(v510 + 1136);
        *(v510 + 2328) = v52;
        v137 = *(v52 + 16);
        if (v137 != 1)
        {
          if (!v137)
          {

            v61 = v510;
            goto LABEL_128;
          }

LABEL_93:
          v117 = v510;
          if (*(v510 + 1288) != 1)
          {
            v61 = *(v510 + 1304);
            if (v61)
            {
              goto LABEL_224;
            }
          }

          v151 = *(*(v510 + 1952) + 40);
          v152 = qword_1EAF9F838;

          v153 = v151;
          if (v152 != -1)
          {
            swift_once();
          }

          v154 = *(v510 + 1656);
          v155 = *(v510 + 1648);
          v156 = *(v510 + 1536);
          v157 = qword_1EAFCA248;
          *(v510 + 1112) = v52;
          swift_bridgeObjectRetain_n();
          [v153 addAttribute:v157 value:sub_19A57402C() range:v512];
          swift_unknownObjectRelease();

          (*(v154 + 56))(v156, 1, 1, v155);
          v61 = v510;
          if ((*(v154 + 48))(*(v510 + 1536), 1, *(v510 + 1648)) == 1)
          {
          }

          else
          {
            v51 = *(v510 + 2168);
            v161 = *(v510 + 2160);
            v162 = *(v510 + 2040);
            v163 = swift_task_alloc();
            v512.length = v161;
            *(v163 + 16) = v161;
            *(v163 + 24) = v51;
            swift_beginAccess();
            v52 = *(v162 + 16);
            v164 = (v52 + 16);
            v46 = *(v52 + 16);
            if (v46)
            {
              v61 = 0;
              v3 = 1;
              v165 = v161;
              while (1)
              {
                v166 = *(v510 + 1424);
                v167 = (*(v166 + 80) + 32) & ~*(v166 + 80);
                v168 = *(v166 + 72);
                v527.location = v512.length;
                v527.length = v51;
                if (NSIntersectionRange(*(v52 + v167 + v168 * v61 + *(*(v510 + 1416) + 48)), v527).length > 0)
                {
                  break;
                }

                ++v61;
                ++v3;
                if (v46 == v61)
                {
                  v61 = *v164;
                  v46 = *v164;
                  goto LABEL_125;
                }
              }

              v46 = v61 + 1;
              if (__OFADD__(v61, 1))
              {
                goto LABEL_284;
              }

              v192 = *v164;
              if (v46 != *v164)
              {
                v7 = v167 + v168 * v3;
                v500 = v51;
                while (v46 < v192)
                {
                  v3 = v52 + v7;
                  v528.location = v165;
                  v528.length = v51;
                  if (NSIntersectionRange(*(v52 + v7 + *(*(v510 + 1416) + 48)), v528).length <= 0)
                  {
                    if (v46 != v61)
                    {
                      if ((v61 & 0x8000000000000000) != 0)
                      {
                        goto LABEL_277;
                      }

                      v196 = *v164;
                      if (v61 >= *v164)
                      {
                        goto LABEL_278;
                      }

                      v512.location = v61 * v168;
                      v197 = v52 + v167 + v61 * v168;
                      v504 = v52;
                      v52 = &unk_19A578B00;
                      sub_19A33546C(v197, *(v510 + 1464), &qword_1EAF9FFE0);
                      if (v46 >= v196)
                      {
                        goto LABEL_279;
                      }

                      sub_19A33546C(v3, *(v510 + 1456), &qword_1EAF9FFE0);
                      v52 = v504;
                      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                      {
                        v52 = sub_19A32E604(v504);
                      }

                      sub_19A3E3898(*(v510 + 1456), v52 + v167 + v512.location);
                      if (v46 >= *(v52 + 16))
                      {
                        goto LABEL_280;
                      }

                      v195 = *(v510 + 2040);
                      sub_19A3E3898(*(v510 + 1464), v52 + v7);
                      *(v195 + 16) = v52;
                      v51 = v500;
                      v165 = v512.length;
                    }

                    ++v61;
                  }

                  ++v46;
                  v164 = (v52 + 16);
                  v192 = *(v52 + 16);
                  v7 += v168;
                  if (v46 == v192)
                  {
                    goto LABEL_124;
                  }
                }

LABEL_270:
                __break(1u);
                goto LABEL_271;
              }

LABEL_124:
              if (v46 < v61)
              {
                goto LABEL_281;
              }
            }

            else
            {
              v61 = 0;
            }

LABEL_125:
            v193 = v61;
            v61 = v510;
            sub_19A46B010(v193, v46);
            swift_endAccess();
          }

          sub_19A2F3FA0(*(v61 + 1536), &qword_1EAFA10A8);
          goto LABEL_127;
        }

        if (*(v510 + 1352) & 4) != 0 && (sub_19A3C4F5C(v52))
        {
          goto LABEL_93;
        }

        if (!*(v61 + 16))
        {
LABEL_275:
          __break(1u);
LABEL_276:
          __break(1u);
LABEL_277:
          __break(1u);
LABEL_278:
          __break(1u);
LABEL_279:
          __break(1u);
LABEL_280:
          __break(1u);
LABEL_281:
          __break(1u);
LABEL_282:
          __break(1u);
LABEL_283:
          __break(1u);
LABEL_284:
          __break(1u);
LABEL_285:
          v467 = *(*(v46 + 1952) + 40);

          v468 = [v467 string];
          v370 = sub_19A572CFC();
          v372 = v469;

          *(v46 + 2288) = v372;
          *(v46 + 1152) = v52;
          v507 = (v61 + *v61);
          v470 = swift_task_alloc();
          *(v46 + 2296) = v470;
          *v470 = v46;
          v470[1] = sub_19A3D11E0;
          v374 = *(v46 + 1544);
          v375 = (v46 + 1152);
LABEL_225:
          v376 = v370;
          v377 = v372;
          v379 = v512.length;
          v378 = v512.location;
          v380 = v507;
LABEL_233:

          v380(v374, v376, v377, v378, v379, v375);
          return;
        }

        v158 = *(v510 + 1752);
        v159 = *(*(v510 + 1952) + 40);
        sub_19A3E3C64(v61 + v135, v158, type metadata accessor for Concept);

        v160 = v159;
        v61 = v510;

        sub_19A340970(v158, v512.location, v512.length);

        sub_19A3E3E40(v158, type metadata accessor for Concept);
LABEL_127:

LABEL_128:

        v55 = *(v61 + 2176);
        v194 = *(v61 + 1696);

        sub_19A3E3E40(v194, type metadata accessor for Concept);
        v487 = *(v61 + 2144);
        goto LABEL_22;
      }

      v198 = *(v510 + 2120);
      v199 = *(v510 + 1720);
      v200 = *(v510 + 1656);
      v505 = *(v510 + 2040);
      v201 = *(v510 + 1576);
      v202 = *(v510 + 1496);
      v203 = *(v510 + 1480);
      v204 = *(v510 + 1472);

      v205 = sub_19A41F408(v202, v198);
      v206 = v199 + *(v201 + 20);
      (*(v203 + 16))(v206, v202, v204);
      v207 = type metadata accessor for NamedEntityData.PhotosPersonData(0);
      *(v510 + 2256) = v207;
      v206[*(v207 + 20)] = 0;
      v206[*(v207 + 24)] = (v205 & 1) == 0;
      v208 = *(v207 - 8);
      *(v510 + 2264) = v208;
      v46 = v510;
      (*(v208 + 56))(v206, 0, 1, v207);
      *v199 = v82;
      v199[1] = v84;
      swift_storeEnumTagMultiPayload();

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF9FFB0);
      v209 = (*(v200 + 80) + 32) & ~*(v200 + 80);
      v210 = swift_allocObject();
      *(v510 + 2272) = v210;
      *(v210 + 16) = xmmword_19A576E10;
      sub_19A3E3C64(v199, v210 + v209, type metadata accessor for Concept);
      *(v510 + 1128) = v210;

      v211 = sub_19A3DEBC0(v512.location, v512.length, v505);
      sub_19A47086C(v211);
      v52 = *(v510 + 1128);
      *(v510 + 2280) = v52;
      v212 = *(v52 + 16);
      if (v212 != 1)
      {
        if (v212)
        {
          goto LABEL_150;
        }

        goto LABEL_21;
      }

      if ((*(v510 + 1352) & 4) == 0 || (sub_19A3C4F5C(v52) & 1) == 0)
      {

        if (!*(v210 + 16))
        {
          goto LABEL_290;
        }

        v213 = *(v510 + 1752);
        v214 = *(*(v510 + 1952) + 40);
        sub_19A3E3C64(v210 + v209, v213, type metadata accessor for Concept);

        v215 = v214;

        sub_19A340970(v213, v512.location, v512.length);

        v46 = v510;
        sub_19A3E3E40(v213, type metadata accessor for Concept);
        goto LABEL_21;
      }

LABEL_150:
      if (*(v510 + 1288) != 1)
      {
        v61 = *(v510 + 1304);
        if (v61)
        {
          goto LABEL_285;
        }
      }

      v216 = *(*(v510 + 1952) + 40);
      v217 = qword_1EAF9F838;

      v218 = v216;
      if (v217 != -1)
      {
        swift_once();
      }

      v219 = *(v510 + 1656);
      v220 = *(v510 + 1648);
      v3 = *(v510 + 1552);
      v221 = qword_1EAFCA248;
      *(v510 + 1144) = v52;
      swift_bridgeObjectRetain_n();
      [v218 addAttribute:v221 value:sub_19A57402C() range:v512];
      swift_unknownObjectRelease();

      (*(v219 + 56))(v3, 1, 1, v220);
      v7 = *(v219 + 48);
      v47 = (v7)(*(v510 + 1552), 1, *(v510 + 1648));
      goto LABEL_15;
    }

    v93 = location + v512.length;
    if (__OFADD__(location, v512.length))
    {
      __break(1u);
LABEL_212:
      __break(1u);
LABEL_213:
      v351 = *(v61 + 2120);
      v352 = *(v61 + 1352);

      v354 = sub_19A3E2C08(v353, v82, v84, v351);
      *(v61 + 2352) = v354;
      *(v61 + 2360) = v487;

      v355 = swift_task_alloc();
      *(v61 + 2368) = v355;
      *v355 = v61;
      v355[1] = sub_19A3DA250;
      v356 = *(v61 + 2040);
      v357 = *(v61 + 1952);
      v358 = v483[2];
      v359 = *(v61 + 1312);
      v360 = *(v61 + 1304);
      v361 = *(v61 + 1296);
      v362 = *(v61 + 1288);
      v525 = v82;
      v526 = v84;
      v524 = v358;
      v523 = v85;
      v522 = v512;
      v520 = v359;
      v521 = v357;

      sub_19A3DF2F8(v354, v512.location, v512.length, v356, (v352 & 4) != 0, v362, v361, v360);
      return;
    }

    if (v93 < location)
    {
      goto LABEL_212;
    }

    v94 = (v91 + 40);
    while (1)
    {
      v96 = *(v94 - 1);
      v95 = *v94;
      v97 = v96 < v93 && location < v95;
      v98 = !v97 || v96 == v95;
      if (!v98 && location != v93)
      {
        break;
      }

      v94 += 4;
      if (!--v92)
      {
        goto LABEL_50;
      }
    }

LABEL_53:
    v106 = *(v61 + 2040);
    v107 = *(v510 + 1952);
    v108 = *(v510 + 1672);
    *v108 = v82;
    *(v108 + 8) = v84;
    *(v108 + 16) = v85;
    swift_storeEnumTagMultiPayload();
    v109 = *(v107 + 40);
    v61 = v510;

    v110 = v109;
    sub_19A340970(v108, location, v512.length);

    v111 = swift_task_alloc();
    *(v111 + 16) = location;
    *(v111 + 24) = v512.length;
    swift_beginAccess();
    v112 = *(v106 + 16);
    v113 = v112 + 2;
    v114 = v112[2];
    if (!v114)
    {
      v63 = 0;
      goto LABEL_25;
    }

    v63 = 0;
    v52 = 1;
    while (1)
    {
      v115 = *(v510 + 1424);
      v116 = (*(v115 + 80) + 32) & ~*(v115 + 80);
      v117 = *(v115 + 72);
      if (NSIntersectionRange(*(v112 + v116 + v117 * v63 + *(*(v510 + 1416) + 48)), v512).length > 0)
      {
        break;
      }

      ++v63;
      ++v52;
      if (v114 == v63)
      {
        v63 = *v113;
        v114 = *v113;
        goto LABEL_25;
      }
    }

    v114 = v63 + 1;
    if (__OFADD__(v63, 1))
    {
      __break(1u);
      goto LABEL_231;
    }

    v118 = *v113;
    if (v114 != *v113)
    {
      break;
    }

LABEL_60:
    if (v114 < v63)
    {
      goto LABEL_223;
    }

LABEL_25:
    sub_19A46B010(v63, v114);
    swift_endAccess();

    v64 = v491;
LABEL_26:
    v62 = v498 + 1;
    v55 = *(v61 + 2136);
    sub_19A3E3E40(*v64, type metadata accessor for Concept);
    if ((v498 + 1) == v55)
    {
      goto LABEL_155;
    }
  }

  v52 = v116 + v117 * v52;
  while (2)
  {
    if (v114 >= v118)
    {
      __break(1u);
      goto LABEL_178;
    }

    if (NSIntersectionRange(*(v112 + v52 + *(*(v61 + 1416) + 48)), v512).length > 0)
    {
      goto LABEL_65;
    }

    if (v114 == v63)
    {
LABEL_64:
      ++v63;
LABEL_65:
      ++v114;
      v113 = v112 + 2;
      v118 = v112[2];
      v52 += v117;
      if (v114 == v118)
      {
        goto LABEL_60;
      }

      continue;
    }

    break;
  }

  if ((v63 & 0x8000000000000000) == 0)
  {
    v61 = *v113;
    if (v63 >= *v113)
    {
      goto LABEL_217;
    }

    sub_19A33546C(v112 + v116 + v63 * v117, *(v510 + 1448), &qword_1EAF9FFE0);
    if (v114 >= v61)
    {
      goto LABEL_218;
    }

    v61 = v510;
    sub_19A33546C(v112 + v52, *(v510 + 1440), &qword_1EAF9FFE0);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v112 = sub_19A32E604(v112);
    }

    sub_19A3E3898(*(v510 + 1440), v112 + v116 + v63 * v117);
    if (v114 >= v112[2])
    {
      goto LABEL_219;
    }

    v119 = *(v510 + 2040);
    sub_19A3E3898(*(v510 + 1448), v112 + v52);
    *(v119 + 16) = v112;
    goto LABEL_64;
  }

  __break(1u);
LABEL_217:
  __break(1u);
LABEL_218:
  __break(1u);
LABEL_219:
  __break(1u);
LABEL_220:
  v491 = v61;
  v363 = *(v63 + 1832);
  v364 = *(v63 + 1480);
  v365 = *(v63 + 1472);
  v366 = *(v63 + 1280);

  sub_19A33546C(v366, v363, &qword_1EAF9FD80);
  if ((*(v364 + 48))(v363, 1, v365) == 1)
  {
    sub_19A2F3FA0(*(v63 + 1832), &qword_1EAF9FD80);
    v367 = v478;
    v85 = 0x1E7517000;
    goto LABEL_241;
  }

  v381 = *(v63 + 1952);
  v382 = *(v63 + 1488);
  (*(*(v63 + 1480) + 32))(v382, *(v63 + 1832), *(v63 + 1472));
  *(v63 + 2376) = 1;
  v383 = *(v381 + 40);

  v384 = v383;
  v385 = [v384 length];
  v386 = swift_task_alloc();
  *(v386 + 16) = v382;
  *(v386 + 24) = v483;
  v387 = swift_allocObject();
  *(v387 + 16) = sub_19A3E3CCC;
  *(v387 + 24) = v386;
  *(v63 + 288) = sub_19A3E4068;
  *(v63 + 296) = v387;
  *(v63 + 256) = MEMORY[0x1E69E9820];
  *(v63 + 264) = v1;
  *(v63 + 272) = sub_19A3C4EB0;
  *(v63 + 280) = &block_descriptor_52;
  v388 = _Block_copy(v473);

  v85 = &off_1E7517000;
  [v384 enumerateAttribute:v484 inRange:0 options:v385 usingBlock:{0, v388}];

  _Block_release(v388);
  v389 = swift_isEscapingClosureAtFileLocation();

  if (v389)
  {
LABEL_289:
    __break(1u);
LABEL_290:
    __break(1u);
    return;
  }

  if (*v483 != 1)
  {
LABEL_231:
    v63 = v510;
    v367 = v478;
    goto LABEL_240;
  }

  v390 = *(v510 + 1664);
  v391 = *(v510 + 1576);
  v392 = *(v510 + 1488);
  v393 = *(v510 + 1480);
  v394 = *(v510 + 1472);
  v395 = sub_19A572E7C();
  v396 = v390 + *(v391 + 20);
  (*(v393 + 16))(v396, v392, v394);
  v397 = type metadata accessor for NamedEntityData.PhotosPersonData(0);
  v396[*(v397 + 20)] = 0;
  v396[*(v397 + 24)] = 0;
  (*(*(v397 - 8) + 56))(v396, 0, 1, v397);
  *v390 = 0x6E6F73726570;
  v390[1] = 0xE600000000000000;
  swift_storeEnumTagMultiPayload();
  swift_beginAccess();
  sub_19A340CA4(0x206E6F73726570, 0xE700000000000000, v390, 0, v395);
  if (v491)
  {
    v398 = *(v510 + 1664);
    v399 = *(v510 + 1488);
    v400 = *(v510 + 1480);
    v401 = *(v510 + 1472);
    swift_endAccess();

    sub_19A3E3E40(v398, type metadata accessor for Concept);
    (*(v400 + 8))(v399, v401);

    v245 = v510;
    goto LABEL_208;
  }

  v408 = *(v510 + 1664);
  swift_endAccess();
  sub_19A3E3E40(v408, type metadata accessor for Concept);
  v491 = 0;
  v63 = v510;
  v367 = v478;
  v85 = &off_1E7517000;
LABEL_240:
  (*(*(v63 + 1480) + 8))(*(v63 + 1488), *(v63 + 1472));
LABEL_241:
  v409 = *(*(v63 + 1952) + 40);
  v410 = MEMORY[0x1E69E7CD0];
  *(v63 + 1208) = MEMORY[0x1E69E7CD0];
  *(v63 + 1224) = v410;

  v411 = v409;
  v412 = [v411 length];
  v413 = swift_task_alloc();
  *(v413 + 16) = v476;
  *(v413 + 24) = v477;
  v414 = swift_allocObject();
  *(v414 + 16) = sub_19A3E398C;
  *(v414 + 24) = v413;
  *(v63 + 144) = sub_19A3E4068;
  *(v63 + 152) = v414;
  *(v63 + 112) = MEMORY[0x1E69E9820];
  *(v63 + 120) = v1;
  *(v63 + 128) = sub_19A3C4EB0;
  *(v63 + 136) = &block_descriptor_30;
  v112 = v63;
  v415 = _Block_copy(v367);

  [v411 *(v85 + 3984)];
  _Block_release(v415);
  LOBYTE(v415) = swift_isEscapingClosureAtFileLocation();

  if (v415)
  {
    __break(1u);
    goto LABEL_287;
  }

  v416 = *(v63 + 1952);
  v417 = *(v63 + 1408);
  v418 = v112[175];

  v514 = v112[151];
  v502 = v112[153];

  v508 = v416[2];
  v419 = v416[4];
  v420 = v416[5];
  v513 = v416[3];
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();
  v421 = v420;
  v422 = [v421 string];
  sub_19A572CFC();

  sub_19A570C6C();
  v423 = v417 + *(v418 + 20);
  sub_19A570BFC();
  v424 = [v421 length];
  v425 = swift_task_alloc();
  *(v425 + 16) = v423;
  v426 = swift_allocObject();
  *(v426 + 16) = sub_19A3E3994;
  *(v426 + 24) = v425;
  v112[12] = sub_19A3E4068;
  v112[13] = v426;
  v112[8] = MEMORY[0x1E69E9820];
  v112[9] = v1;
  v112[10] = sub_19A3C4EB0;
  v112[11] = &block_descriptor_37;
  v427 = _Block_copy(v475);

  [v421 enumerateAttribute:v484 inRange:0 options:v424 usingBlock:{0, v427}];
  _Block_release(v427);
  LOBYTE(v427) = swift_isEscapingClosureAtFileLocation();

  if (v427)
  {
LABEL_287:
    __break(1u);
    goto LABEL_288;
  }

  v428 = *MEMORY[0x1E696A518];
  v429 = [v421 length];
  v430 = swift_task_alloc();
  *(v430 + 16) = v423;
  v431 = swift_allocObject();
  *(v431 + 16) = sub_19A3E399C;
  *(v431 + 24) = v430;
  v112[42] = sub_19A3E4068;
  v112[43] = v431;
  v112[38] = MEMORY[0x1E69E9820];
  v112[39] = v1;
  v112[40] = sub_19A3C4EB0;
  v112[41] = &block_descriptor_44;
  v432 = _Block_copy(v474);

  [v421 enumerateAttribute:v428 inRange:0 options:v429 usingBlock:{0, v432}];
  _Block_release(v432);
  v433 = swift_isEscapingClosureAtFileLocation();

  if (v433)
  {
LABEL_288:
    __break(1u);
    goto LABEL_289;
  }

  v434 = v112[176];

  *v434 = v508;
  v434[1] = v513;
  v434[2] = v419;
  v435 = MEMORY[0x1E69E6158];
  v436 = v491;
  if (v486)
  {
    sub_19A570A4C();
    sub_19A3E3F34(&qword_1ED825330, MEMORY[0x1E6968678]);
    v437 = sub_19A572F7C();
    v112[52] = v435;
    v112[49] = v437;
    v112[50] = v438;
    sub_19A334618((v112 + 49), (v112 + 69));
    JSONValue.init(_:)(v112 + 69, &v515);
    if (v491)
    {
      sub_19A3E3E40(v112[176], type metadata accessor for TextPrompt);

      __swift_destroy_boxed_opaque_existential_0Tm((v112 + 49));

      goto LABEL_175;
    }

    v440 = v515;
    v441 = swift_isUniquelyReferenced_nonNull_native();
    v516 = v486;
    sub_19A33D400(v440, 0x65746E656D677561, 0xEF74706D6F725064, v441);
    v439 = v516;
    __swift_destroy_boxed_opaque_existential_0Tm((v112 + 49));
  }

  else
  {
    v439 = 0;
  }

  v442 = v112[161];
  if (v442 > 1)
  {
    v509 = v112[259];
    v443 = *(v510 + 2056);
    v444 = *(v510 + 1912);
    v445 = *(v510 + 1904);
    v497 = v445;
    v446 = swift_task_alloc();
    v443(v446, v444, v445);

    v447 = swift_slowAlloc();
    *v447 = 0;
    v448 = sub_19A57234C();
    v449 = sub_19A57361C();
    v450 = sub_19A5722FC();
    _os_signpost_emit_with_name_impl(&dword_19A2DE000, v448, v449, v450, "reportConcepts", "", v447, 2u);

    sub_19A3C3960(v451, sub_19A31EFC8, type metadata accessor for Concept, sub_19A32F034);
    v442();

    v452 = sub_19A57360C();
    v453 = sub_19A5722FC();
    v112 = v510;
    _os_signpost_emit_with_name_impl(&dword_19A2DE000, v448, v452, v453, "reportConcepts", "", v447, 2u);

    v436 = v491;

    MEMORY[0x19A902C50](v447, -1, -1);
    sub_19A2E0A60(v442);
    v509(v446, v497);
  }

  else
  {
  }

  if (v439)
  {
    v454 = sub_19A3C3960(v514, sub_19A31EFC8, type metadata accessor for Concept, sub_19A32F034);
    v112[68] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA0318);
    v112[65] = v454;
    sub_19A334618((v112 + 65), (v112 + 61));
    JSONValue.init(_:)(v112 + 61, &v515);
    if (v436)
    {
      sub_19A3E3E40(v112[176], type metadata accessor for TextPrompt);

      __swift_destroy_boxed_opaque_existential_0Tm((v112 + 65));
LABEL_174:

LABEL_175:

      v245 = v112;
      goto LABEL_208;
    }

    v455 = v515;
    v456 = swift_isUniquelyReferenced_nonNull_native();
    v516 = v439;
    sub_19A33D400(v455, 0xD000000000000012, 0x800000019A595740, v456);
    v232 = v516;
    __swift_destroy_boxed_opaque_existential_0Tm((v112 + 65));
    v436 = 0;
  }

  else
  {

    v232 = 0;
  }

  if (*(v502 + 16))
  {
    v457 = sub_19A3C3960(v502, sub_19A31EFA0, MEMORY[0x1E69695A8], sub_19A32ED90);
    sub_19A3E39A4(v457);
    if (v436)
    {
      v245 = v510;
      sub_19A3E3E40(*(v510 + 1408), type metadata accessor for TextPrompt);

      goto LABEL_208;
    }

LABEL_262:

    v112 = v510;
  }

  else
  {
  }

  if (v232)
  {
    v458 = v112[165];
    if (v458)
    {
      LOBYTE(v516) = v485;
      v517 = v232;
      v458(&v516);
    }
  }

  v459 = v112[244];
  v460 = v112[237];
  v461 = v112[235];
  v471 = v112[234];
  v462 = v112[176];
  sub_19A3E3C64(v462, v112[154], type metadata accessor for TextPrompt);
  v463 = [*(v459 + 40) string];
  v464 = sub_19A572CFC();
  v490 = v465;
  v493 = v464;

  sub_19A3E3E40(v462, type metadata accessor for TextPrompt);

  sub_19A3DF010("validateText", 12, 2);

  (*(v461 + 8))(v460, v471);

  v466 = v112[1];

  v466(v493, v490);
}

uint64_t sub_19A3D59D4()
{

  return MEMORY[0x1EEE6DFA0](sub_19A3D5AEC, 0, 0);
}

void sub_19A3D5AEC()
{
  v546 = v0;
  v512 = (v0 + 2376);
  aBlock = (v0 + 16);
  v503 = (v0 + 64);
  v506 = (v0 + 112);
  v510 = (v0 + 160);
  v513 = (v0 + 208);
  v501 = (v0 + 256);
  v508 = v0 + 1160;
  v514 = v0 + 1192;
  v509 = v0 + 1200;
  v504 = v0 + 1224;
  v505 = v0 + 1208;
  v2 = *(v0 + 1656);
  v3 = *(v0 + 1648);
  v4 = *(v0 + 1528);
  v5 = *(v2 + 48);
  v502 = (v0 + 304);
  if (v5(v4, 1, v3) == 1)
  {
    v6 = *(v0 + 1536);
    sub_19A2E0A60(*(v0 + 1304));
    sub_19A2F3FA0(v4, &qword_1EAFA10A8);
    (*(v2 + 56))(v6, 1, 1, v3);
    goto LABEL_14;
  }

  v7 = *(v0 + 1688);
  v8 = *(v0 + 1680);
  sub_19A3E3DD8(v4, v7, type metadata accessor for Concept);
  sub_19A3E3C64(v7, v8, type metadata accessor for Concept);
  if (swift_getEnumCaseMultiPayload() == 4)
  {
    v9 = *(v0 + 2312);
    v10 = *(v0 + 2304);
    v11 = *(v0 + 1584);
    v12 = *(v0 + 1576);
    v13 = *(v0 + 1504);
    sub_19A3E3DD8(*(v0 + 1680), v11, type metadata accessor for NamedEntityData);
    sub_19A3E3C64(v11 + *(v12 + 20), v13, type metadata accessor for NamedEntityData.NamedEntityType);
    if ((*(v9 + 48))(v13, 1, v10) != 1)
    {
      v36 = *(v0 + 2168);
      v37 = *(v0 + 2160);
      v38 = v5;
      v39 = *(v0 + 1952);
      v40 = *(v0 + 1688);
      v539 = *(v0 + 1584);
      v41 = *(v0 + 1304);
      sub_19A3E3E40(*(v0 + 1504), type metadata accessor for NamedEntityData.NamedEntityType);
      v42 = *(v39 + 40);

      v43 = v42;
      sub_19A340970(v40, v37, v36);
      sub_19A2E0A60(v41);

      v5 = v38;
      v28 = type metadata accessor for NamedEntityData;
      v29 = v539;
      goto LABEL_12;
    }

    v14 = *(v0 + 1504);
    sub_19A3E3E40(*(v0 + 1584), type metadata accessor for NamedEntityData);
    v15 = type metadata accessor for NamedEntityData.NamedEntityType;
    v16 = v14;
  }

  else
  {
    v16 = *(v0 + 1680);
    v15 = type metadata accessor for Concept;
  }

  sub_19A3E3E40(v16, v15);
  v17 = *(v0 + 2380);
  if (v17 != 3 && (*(v0 + 2378) & 1) == 0)
  {
    v18 = *(v0 + 2192);
    v19 = *(v0 + 2168);
    v20 = *(v0 + 2160);
    v21 = v5;
    v22 = *(v0 + 1952);
    v23 = *(v0 + 1752);
    v539 = *(v0 + 1312);
    v24 = *(v0 + 1304);
    *v23 = *(v0 + 2184);
    *(v23 + 8) = v18;
    *(v23 + 16) = v17;
    swift_storeEnumTagMultiPayload();
    v25 = *(v22 + 40);

    v26 = v25;
    v5 = v21;
    v27 = v26;
    sub_19A340970(v23, v20, v19);
    sub_19A2E0A60(v24);

    v28 = type metadata accessor for Concept;
    v29 = v23;
LABEL_12:
    sub_19A3E3E40(v29, v28);
    goto LABEL_13;
  }

  v30 = *(v0 + 2168);
  v31 = *(v0 + 2160);
  v32 = *(v0 + 1688);
  v33 = *(v0 + 1304);
  v34 = *(*(v0 + 1952) + 40);

  v35 = v34;
  sub_19A340970(v32, v31, v30);
  sub_19A2E0A60(v33);

LABEL_13:
  v44 = *(v0 + 1656);
  v45 = *(v0 + 1648);
  v46 = *(v0 + 1536);
  sub_19A3E3DD8(*(v0 + 1688), v46, type metadata accessor for Concept);
  (*(v44 + 56))(v46, 0, 1, v45);
LABEL_14:
  v516 = (v0 + 1752);
  v519 = (v0 + 1672);
  v511 = 1;
  v47 = v0;
  v534 = v0;
  v48 = v5(v47[192], 1, v47[206]);
  while (2)
  {
    if (v48 == 1)
    {
    }

    else
    {
      v49 = v47[271];
      v50 = v47[270];
      v51 = v47[255];
      v52 = swift_task_alloc();
      v539 = v50;
      v52[2] = v50;
      v52[3] = v49;
      swift_beginAccess();
      v53 = *(v51 + 16);
      v54 = v53 + 2;
      v55 = v53[2];
      if (v55)
      {
        v56 = 0;
        v57 = 1;
        v58 = v50;
        while (1)
        {
          v59 = *(v534 + 1424);
          v60 = (*(v59 + 80) + 32) & ~*(v59 + 80);
          v61 = *(v59 + 72);
          v556.location = v539;
          v556.length = v49;
          if (NSIntersectionRange(*(v53 + v60 + v61 * v56 + *(*(v534 + 1416) + 48)), v556).length > 0)
          {
            break;
          }

          ++v56;
          ++v57;
          if (v55 == v56)
          {
            v56 = *v54;
            v55 = *v54;
            goto LABEL_26;
          }
        }

        v55 = v56 + 1;
        if (__OFADD__(v56, 1))
        {
          goto LABEL_280;
        }

        v62 = *v54;
        if (v55 != *v54)
        {
          v239 = v60 + v61 * v57;
          v530 = v49;
          while (v55 < v62)
          {
            v57 = v53 + v239;
            v559.location = v58;
            v559.length = v49;
            if (NSIntersectionRange(*(v53 + v239 + *(*(v534 + 1416) + 48)), v559).length <= 0)
            {
              if (v55 != v56)
              {
                if (v56 < 0)
                {
                  __break(1u);
LABEL_274:
                  __break(1u);
LABEL_275:
                  __break(1u);
LABEL_276:
                  __break(1u);
LABEL_277:
                  __break(1u);
LABEL_278:
                  v494 = *(*(v57 + 1952) + 40);

                  v495 = [v494 string];
                  v431 = sub_19A572CFC();
                  v433 = v496;

                  *(v57 + 2336) = v433;
                  *(v57 + 1120) = v53;
                  v532 = (v56 + *v56);
                  v497 = swift_task_alloc();
                  *(v57 + 2344) = v497;
                  *v497 = v57;
                  v497[1] = sub_19A3D59D4;
                  v422 = *(v57 + 1528);
                  v423 = v57 + 1120;
LABEL_236:
                  v424 = v431;
                  v425 = v433;
                  v427 = v536;
                  v426 = v539;
                  v428 = v532;
LABEL_237:

                  v428(v422, v424, v425, v426, v427, v423);
                  return;
                }

                v241 = *v54;
                if (v56 >= *v54)
                {
                  goto LABEL_274;
                }

                v536 = v56 * v61;
                sub_19A33546C(v53 + v60 + v56 * v61, *(v534 + 1464), &qword_1EAF9FFE0);
                if (v55 >= v241)
                {
                  goto LABEL_275;
                }

                sub_19A33546C(v53 + v239, *(v534 + 1456), &qword_1EAF9FFE0);
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v53 = sub_19A32E604(v53);
                }

                sub_19A3E3898(*(v534 + 1456), v53 + v60 + v536);
                if (v55 >= v53[2])
                {
                  goto LABEL_276;
                }

                v240 = *(v534 + 2040);
                sub_19A3E3898(*(v534 + 1464), v53 + v239);
                *(v240 + 16) = v53;
                v49 = v530;
                v58 = v539;
              }

              ++v56;
            }

            ++v55;
            v54 = v53 + 2;
            v62 = v53[2];
            v239 += v61;
            if (v55 == v62)
            {
              goto LABEL_25;
            }
          }

          __break(1u);
LABEL_234:
          v416 = *(*(v57 + 1952) + 40);

          v417 = [v416 string];
          v418 = sub_19A572CFC();
          v420 = v419;

          *(v57 + 2240) = v420;
          *(v57 + 1184) = v53;
          v535 = (v56 + *v56);
          v421 = swift_task_alloc();
          *(v57 + 2248) = v421;
          *v421 = v57;
          v421[1] = sub_19A3CC9EC;
          v422 = *(v57 + 1560);
          v423 = v57 + 1184;
          v424 = v418;
          v425 = v420;
          v427 = v536;
          v426 = v539;
          v428 = v535;
          goto LABEL_237;
        }

LABEL_25:
        if (v55 < v56)
        {
          goto LABEL_277;
        }
      }

      else
      {
        v56 = 0;
      }

LABEL_26:
      v63 = v56;
      v47 = v534;
      sub_19A46B010(v63, v55);
      swift_endAccess();
    }

    sub_19A2F3FA0(v47[192], &qword_1EAFA10A8);

    v64 = v47[272];
    v65 = v47[212];

    sub_19A3E3E40(v65, type metadata accessor for Concept);
    v515 = v47[268];
    v66 = v47[269] + 1;
    if (v66 == v47[267])
    {
      goto LABEL_157;
    }

LABEL_28:
    v47[268] = v515;
    while (1)
    {
      v47[269] = v66;
      v70 = v47[264];
      if (v66 >= *(v70 + 16))
      {
        __break(1u);
        goto LABEL_188;
      }

      v71 = v47[244];
      v524 = v66;
      v72 = (v70 + 24 * v66);
      v73 = v72[4];
      v47[270] = v73;
      v74 = v72[5];
      v47[271] = v74;
      v75 = v72[6];
      v47[272] = v75;
      v76 = *(v71 + 40);

      v77 = [v76 string];
      sub_19A572CFC();
      v78 = *(v71 + 40);
      v79 = v73;
      v80 = [v78 string];
      sub_19A572CFC();

      v536 = v74;
      sub_19A57348C();
      LOBYTE(v74) = v81;

      if (v74)
      {
        goto LABEL_284;
      }

      v82 = sub_19A572F9C();
      v84 = v83;
      v86 = v85;
      v88 = v87;

      v89 = MEMORY[0x19A900970](v82, v84, v86, v88);
      v91 = v90;

      v47[273] = v89;
      v47[274] = v91;
      LODWORD(v67) = *(v75 + 32);
      *(v47 + 2380) = v67;
      type metadata accessor for EntityExtractor.NamedEntity();
      v92 = swift_dynamicCastClass();
      v529 = v75;
      if (v92)
      {
        v93 = v92;

        v94 = v536;
      }

      else
      {
        v94 = v536;
        if (v67 == 2)
        {
          v95 = v79;
          v96 = *(v529 + 16);
          v97 = *(v529 + 24);
          v93 = swift_allocObject();
          *(v93 + 40) = MEMORY[0x1E69E7CC0];
          *(v93 + 16) = v96;
          *(v93 + 24) = v97;
          v79 = v95;
          *(v93 + 32) = 2;
        }

        else
        {
          v93 = 0;
        }
      }

      v47[275] = v93;
      v98 = v47[254];
      v99 = *(v98 + 16);
      if (v99)
      {
        v100 = v79 + v94;
        if (__OFADD__(v79, v94))
        {
          __break(1u);
LABEL_215:
          __break(1u);
LABEL_216:
          __break(1u);
LABEL_217:
          __break(1u);
LABEL_218:
          __break(1u);
LABEL_219:
          __break(1u);
LABEL_220:
          v378 = v47[265];
          v379 = v47[169];

          v381 = sub_19A3E2C08(v380, v89, v529, v378);
          v47[294] = v381;
          v47[295] = v515;

          v382 = swift_task_alloc();
          v47[296] = v382;
          *v382 = v47;
          v382[1] = sub_19A3DA250;
          v383 = v47[255];
          v384 = v47[244];
          v385 = v512[2];
          v386 = v47[164];
          v387 = v47[163];
          v388 = v47[162];
          v389 = v47[161];
          v554 = v89;
          v555 = v529;
          v553 = v385;
          v552 = v67;
          v550 = v539;
          v551 = v536;
          v548 = v386;
          v549 = v384;

          sub_19A3DF2F8(v381, v539, v536, v383, (v379 & 4) != 0, v389, v388, v387);
          return;
        }

        if (v100 < v79)
        {
          goto LABEL_215;
        }

        v101 = (v98 + 40);
        while (1)
        {
          v103 = *(v101 - 1);
          v102 = *v101;
          v104 = v103 < v100 && v79 < v102;
          v105 = !v104 || v103 == v102;
          if (!v105 && v79 != v100)
          {
            break;
          }

          v101 += 4;
          if (!--v99)
          {
            goto LABEL_55;
          }
        }

        v116 = v79;

        goto LABEL_59;
      }

LABEL_55:
      if (v93)
      {
        break;
      }

      v116 = v79;
LABEL_59:
      v117 = v47[255];
      v118 = *(v534 + 1952);
      v119 = *(v534 + 1672);
      *v119 = v89;
      *(v119 + 8) = v91;
      *(v119 + 16) = v67;
      swift_storeEnumTagMultiPayload();
      v120 = *(v118 + 40);
      v47 = v534;

      v121 = v120;
      sub_19A340970(v119, v116, v94);

      v122 = swift_task_alloc();
      v539 = v116;
      *(v122 + 16) = v116;
      *(v122 + 24) = v94;
      swift_beginAccess();
      v123 = *(v117 + 16);
      v124 = (v123 + 16);
      v125 = *(v123 + 16);
      if (v125)
      {
        v67 = 0;
        v126 = 1;
        while (1)
        {
          v127 = *(v534 + 1424);
          v128 = (*(v127 + 80) + 32) & ~*(v127 + 80);
          v89 = *(v127 + 72);
          v557.location = v116;
          v557.length = v94;
          if (NSIntersectionRange(*(v123 + v128 + v89 * v67 + *(*(v534 + 1416) + 48)), v557).length > 0)
          {
            break;
          }

          ++v67;
          ++v126;
          if (v125 == v67)
          {
            v67 = *v124;
            v68 = *v124;
            goto LABEL_30;
          }
        }

        v68 = v67 + 1;
        if (__OFADD__(v67, 1))
        {
          __break(1u);
          goto LABEL_232;
        }

        v129 = *v124;
        if (v68 != *v124)
        {
          v130 = v128 + v89 * v126;
          do
          {
            if (v68 >= v129)
            {
              __break(1u);
              goto LABEL_180;
            }

            v125 = v123 + v130;
            v558.length = v536;
            v558.location = v116;
            if (NSIntersectionRange(*(v123 + v130 + *(v47[1416] + 48)), v558).length <= 0)
            {
              if (v68 != v67)
              {
                if ((v67 & 0x8000000000000000) != 0)
                {
                  goto LABEL_216;
                }

                v47 = *v124;
                if (v67 >= *v124)
                {
                  goto LABEL_217;
                }

                sub_19A33546C(v123 + v128 + v67 * v89, *(v534 + 1448), &qword_1EAF9FFE0);
                if (v68 >= v47)
                {
                  goto LABEL_218;
                }

                sub_19A33546C(v123 + v130, *(v534 + 1440), &qword_1EAF9FFE0);
                v47 = v534;
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v123 = sub_19A32E604(v123);
                }

                sub_19A3E3898(*(v534 + 1440), v123 + v128 + v67 * v89);
                if (v68 >= *(v123 + 16))
                {
                  goto LABEL_219;
                }

                v131 = *(v534 + 2040);
                sub_19A3E3898(*(v534 + 1448), v123 + v130);
                *(v131 + 16) = v123;
              }

              ++v67;
            }

            ++v68;
            v124 = (v123 + 16);
            v129 = *(v123 + 16);
            v130 += v89;
          }

          while (v68 != v129);
        }

        if (v68 < v67)
        {
          goto LABEL_226;
        }
      }

      else
      {
        v67 = 0;
        v68 = 0;
      }

LABEL_30:
      sub_19A46B010(v67, v68);
      swift_endAccess();

      v69 = v519;
LABEL_31:
      v66 = v524 + 1;
      v64 = v47[267];
      sub_19A3E3E40(*v69, type metadata accessor for Concept);
      if ((v524 + 1) == v64)
      {
        goto LABEL_157;
      }
    }

    if ((v47[169] & 1) == 0)
    {
      v107 = v89;
      v108 = v79;
      v109 = v47[244];
      v110 = v47[219];
      v111 = *(v47[197] + 20);
      v112 = type metadata accessor for NamedEntityData.PhotosPersonData(0);
      v113 = v110 + v111;
      v47 = v534;
      (*(*(v112 - 8) + 56))(v113, 1, 1, v112);
      *v110 = v107;
      v110[1] = v91;
      swift_storeEnumTagMultiPayload();
      v114 = *(v109 + 40);

      v115 = v114;
      sub_19A340970(v110, v108, v94);

      v69 = v516;
      goto LABEL_31;
    }

    v529 = v91;
    v539 = v79;
    v132 = *(v93 + 40);
    if (*(v132 + 16) != 1)
    {

LABEL_86:
      v137 = *(v534 + 1840);
      v138 = *(v534 + 1480);
      v139 = *(v534 + 1472);
      sub_19A33546C(*(v534 + 1280), v137, &qword_1EAF9FD80);
      v140 = v137;
      v47 = v534;
      if ((*(v138 + 48))(v140, 1, v139) == 1)
      {
        sub_19A2F3FA0(*(v534 + 1840), &qword_1EAF9FD80);
        goto LABEL_90;
      }

      (*(*(v534 + 1480) + 32))(*(v534 + 1496), *(v534 + 1840), *(v534 + 1472));
      if (*(*(v93 + 40) + 16))
      {
        (*(*(v534 + 1480) + 8))(*(v534 + 1496), *(v534 + 1472));
LABEL_90:
        if (*(*(v93 + 40) + 16))
        {
          goto LABEL_220;
        }

        v141 = *(v534 + 2040);
        v142 = *(v534 + 1696);
        v143 = *(v534 + 1656);
        v144 = *(v534 + 1576);

        v145 = *(v144 + 20);
        v146 = type metadata accessor for NamedEntityData.PhotosPersonData(0);
        *(v534 + 2304) = v146;
        v147 = *(v146 - 8);
        *(v534 + 2312) = v147;
        (*(v147 + 56))(v142 + v145, 1, 1, v146);
        *v142 = v89;
        v142[1] = v91;
        swift_storeEnumTagMultiPayload();

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF9FFB0);
        v148 = (*(v143 + 80) + 32) & ~*(v143 + 80);
        v149 = swift_allocObject();
        *(v534 + 2320) = v149;
        *(v149 + 16) = xmmword_19A576E10;
        sub_19A3E3C64(v142, v149 + v148, type metadata accessor for Concept);
        *(v534 + 1136) = v149;

        v150 = sub_19A3DEBC0(v539, v536, v141);
        sub_19A47086C(v150);
        v53 = *(v534 + 1136);
        *(v534 + 2328) = v53;
        v151 = v53[2];
        if (v151 == 1)
        {
          if (*(v534 + 1352) & 4) != 0 && (sub_19A3C4F5C(v53))
          {
LABEL_152:
            v57 = v534;
            if (*(v534 + 1288) != 1)
            {
              v56 = *(v534 + 1304);
              if (v56)
              {
                goto LABEL_278;
              }
            }

            v242 = *(*(v534 + 1952) + 40);
            v243 = qword_1EAF9F838;

            v244 = v242;
            if (v243 != -1)
            {
              swift_once();
            }

            v245 = *(v534 + 1656);
            v246 = *(v534 + 1648);
            v247 = *(v534 + 1536);
            v248 = qword_1EAFCA248;
            *(v534 + 1112) = v53;
            swift_bridgeObjectRetain_n();
            [v244 addAttribute:v248 value:sub_19A57402C() range:{v539, v536}];
            swift_unknownObjectRelease();

            (*(v245 + 56))(v247, 1, 1, v246);
            v47 = v534;
            v48 = (*(v245 + 48))(v47[192], 1, v47[206]);
            continue;
          }

          if (!*(v149 + 16))
          {
LABEL_283:
            __break(1u);
LABEL_284:
            __break(1u);
LABEL_285:
            __break(1u);
            goto LABEL_286;
          }

          v152 = v534;
          v153 = *(v534 + 1752);
          v154 = *(*(v534 + 1952) + 40);
          sub_19A3E3C64(v149 + v148, v153, type metadata accessor for Concept);

          v155 = v154;

          sub_19A340970(v153, v539, v536);

          sub_19A3E3E40(v153, type metadata accessor for Concept);
        }

        else
        {
          if (v151)
          {
            goto LABEL_152;
          }

          v152 = v534;
        }

        v64 = v152[272];
        v156 = v152[212];

        sub_19A3E3E40(v156, type metadata accessor for Concept);
        v515 = v152[268];
        v66 = v152[269] + 1;
        v47 = v152;
        if (v66 != v152[267])
        {
          goto LABEL_28;
        }

        goto LABEL_157;
      }

      v172 = *(v534 + 2120);
      v173 = *(v534 + 2040);
      v174 = *(v534 + 1720);
      v175 = *(v534 + 1656);
      v176 = *(v534 + 1576);
      v177 = *(v534 + 1496);
      v178 = *(v534 + 1480);
      v179 = v89;
      v180 = *(v534 + 1472);

      v181 = sub_19A41F408(v177, v172);
      v182 = v174 + *(v176 + 20);
      (*(v178 + 16))(v182, v177, v180);
      v183 = type metadata accessor for NamedEntityData.PhotosPersonData(0);
      *(v534 + 2256) = v183;
      v182[*(v183 + 20)] = 0;
      v182[*(v183 + 24)] = (v181 & 1) == 0;
      v184 = *(v183 - 8);
      *(v534 + 2264) = v184;
      v185 = v182;
      v186 = v534;
      (*(v184 + 56))(v185, 0, 1, v183);
      *v174 = v179;
      v174[1] = v529;
      swift_storeEnumTagMultiPayload();

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF9FFB0);
      v187 = (*(v175 + 80) + 32) & ~*(v175 + 80);
      v188 = swift_allocObject();
      *(v534 + 2272) = v188;
      *(v188 + 16) = xmmword_19A576E10;
      sub_19A3E3C64(v174, v188 + v187, type metadata accessor for Concept);
      *(v534 + 1128) = v188;

      v189 = sub_19A3DEBC0(v539, v536, v173);
      sub_19A47086C(v189);
      v190 = *(v534 + 1128);
      *(v534 + 2280) = v190;
      v191 = *(v190 + 16);
      if (v191 == 1)
      {
        if ((*(v534 + 1352) & 4) == 0 || (sub_19A3C4F5C(v190) & 1) == 0)
        {

          if (!*(v188 + 16))
          {
LABEL_287:
            __break(1u);
            goto LABEL_288;
          }

          v224 = *(v534 + 1752);
          v225 = *(*(v534 + 1952) + 40);
          sub_19A3E3C64(v188 + v187, v224, type metadata accessor for Concept);

          v226 = v225;

          sub_19A340970(v224, v539, v536);

          v227 = v224;
          v186 = v534;
          sub_19A3E3E40(v227, type metadata accessor for Concept);
          goto LABEL_135;
        }
      }

      else if (!v191)
      {

        goto LABEL_135;
      }

      if (*(v534 + 1288) != 1)
      {
        v216 = *(v534 + 1304);
        if (v216)
        {
          v429 = *(*(v534 + 1952) + 40);

          v430 = [v429 string];
          v431 = sub_19A572CFC();
          v433 = v432;

          *(v534 + 2288) = v433;
          *(v534 + 1152) = v190;
          v532 = (v216 + *v216);
          v434 = swift_task_alloc();
          *(v534 + 2296) = v434;
          *v434 = v534;
          v434[1] = sub_19A3D11E0;
          v422 = *(v534 + 1544);
          v423 = v534 + 1152;
          goto LABEL_236;
        }
      }

      v217 = *(*(v534 + 1952) + 40);
      v218 = qword_1EAF9F838;

      v219 = v217;
      if (v218 != -1)
      {
        swift_once();
      }

      v220 = *(v534 + 1656);
      v221 = *(v534 + 1648);
      v222 = *(v534 + 1552);
      v223 = qword_1EAFCA248;
      *(v534 + 1144) = v190;
      swift_bridgeObjectRetain_n();
      [v219 addAttribute:v223 value:sub_19A57402C() range:{v539, v536}];
      swift_unknownObjectRelease();

      (*(v220 + 56))(v222, 1, 1, v221);
      v186 = v534;
      if ((*(v220 + 48))(*(v534 + 1552), 1, *(v534 + 1648)) == 1)
      {

        v515 = *(v534 + 2144);
      }

      else
      {
        v228 = *(v534 + 2168);
        v229 = *(v534 + 2160);
        v230 = *(v534 + 2144);
        v231 = *(v534 + 2040);
        v232 = swift_task_alloc();
        *(v232 + 16) = v229;
        *(v232 + 24) = v228;
        swift_beginAccess();
        v233 = sub_19A3E3548((v231 + 16), sub_19A3E3908, v232);
        if (v230)
        {
          goto LABEL_270;
        }

        v234 = *(*(*(v534 + 2040) + 16) + 16);
        if (v234 < v233)
        {
LABEL_288:
          __break(1u);
          goto LABEL_289;
        }

        sub_19A46B010(v233, v234);
        swift_endAccess();

        v186 = v534;

        v515 = 0;
      }

      sub_19A2F3FA0(v186[194], &qword_1EAFA10A8);
LABEL_135:

      v64 = v186[272];
      v235 = v186[215];
      v213 = v186;
      v236 = v186[187];
      v237 = v213[185];
      v238 = v213[184];

      sub_19A3E3E40(v235, type metadata accessor for Concept);
      (*(v237 + 8))(v236, v238);
      goto LABEL_136;
    }

    break;
  }

  v133 = v47[205];
  v134 = v47[202];
  v135 = *(v47[203] + 80);
  sub_19A3E3C64(v132 + ((v135 + 32) & ~v135), v133, type metadata accessor for EntityExtractor.NamedEntity.EntityData);
  if (*(v133 + *(v134 + 20)))
  {
    v136 = v47[205];

    sub_19A3E3E40(v136, type metadata accessor for EntityExtractor.NamedEntity.EntityData);
    goto LABEL_86;
  }

  v157 = v47[265];
  v158 = v47[218];
  v522 = v47[207];
  v525 = v47[255];
  v159 = v47[205];
  v160 = v89;
  v161 = v47[204];
  v162 = v47[201];
  v163 = v47[197];
  v164 = v47[185];
  v499 = v47[184];
  v500 = v47[202];
  sub_19A3E3C64(v159, v161, type metadata accessor for EntityExtractor.NamedEntity.EntityData);

  LOBYTE(v159) = sub_19A41F408(v159, v157);
  *v162 = v160;
  v162[1] = v529;
  v165 = v162 + *(v163 + 20);
  (*(v164 + 16))(v165, v161, v499);
  LOBYTE(v164) = *(v161 + *(v500 + 20));
  sub_19A3E3E40(v161, type metadata accessor for EntityExtractor.NamedEntity.EntityData);
  v166 = type metadata accessor for NamedEntityData.PhotosPersonData(0);
  v47[276] = v166;
  v165[*(v166 + 20)] = v164;
  v165[*(v166 + 24)] = (v159 & 1) == 0;
  v167 = *(v166 - 8);
  v47[277] = v167;
  (*(v167 + 56))(v165, 0, 1, v166);
  sub_19A3E3C64(v162, v158, type metadata accessor for NamedEntityData);
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF9FFB0);
  v168 = (*(v522 + 80) + 32) & ~*(v522 + 80);
  v169 = swift_allocObject();
  v47[278] = v169;
  *(v169 + 16) = xmmword_19A576E10;
  sub_19A3E3C64(v158, v169 + v168, type metadata accessor for Concept);
  v47[146] = v169;

  v170 = sub_19A3DEBC0(v539, v536, v525);
  sub_19A47086C(v170);
  v53 = v47[146];
  v47[279] = v53;
  v171 = v53[2];
  if (v171 == 1)
  {
    if (v47[169] & 4) != 0 && (sub_19A3C4F5C(v53))
    {
      goto LABEL_108;
    }

    if (*(v169 + 16))
    {
      v200 = v47[244];
      v201 = *(v534 + 1752);
      v202 = *(v200 + 40);
      sub_19A3E3C64(v169 + v168, v201, type metadata accessor for Concept);

      v203 = v202;

      sub_19A340970(v201, v539, v536);

      v204 = v201;
      v47 = v534;
      sub_19A3E3E40(v204, type metadata accessor for Concept);
      goto LABEL_120;
    }

    goto LABEL_285;
  }

  if (!v171)
  {

    goto LABEL_120;
  }

LABEL_108:
  v57 = v47;
  if (v47[161] != 1)
  {
    v56 = v47[163];
    if (v56)
    {
      goto LABEL_234;
    }
  }

  v192 = *(v57 + 1952);

  v193 = *(v192 + 40);
  v194 = qword_1EAF9F838;

  v195 = v193;
  if (v194 != -1)
  {
    swift_once();
  }

  v196 = *(v57 + 1656);
  v197 = *(v57 + 1648);
  v198 = *(v57 + 1568);
  v199 = qword_1EAFCA248;
  *(v57 + 1176) = v53;
  swift_bridgeObjectRetain_n();
  [v195 addAttribute:v199 value:sub_19A57402C() range:{v539, v536}];
  swift_unknownObjectRelease();

  (*(v196 + 56))(v198, 1, 1, v197);
  v47 = v57;
  if ((*(v196 + 48))(*(v57 + 1568), 1, *(v57 + 1648)) == 1)
  {

    v515 = *(v57 + 2144);
    goto LABEL_119;
  }

  v205 = *(v57 + 2168);
  v206 = *(v57 + 2160);
  v207 = *(v57 + 2144);
  v208 = *(v57 + 2040);
  v209 = swift_task_alloc();
  *(v209 + 16) = v206;
  *(v209 + 24) = v205;
  swift_beginAccess();
  v210 = sub_19A3E3548((v208 + 16), sub_19A3E406C, v209);
  if (v207)
  {
LABEL_270:

    swift_endAccess();
    return;
  }

  v211 = *(*(*(v57 + 2040) + 16) + 16);
  if (v211 < v210)
  {
LABEL_286:
    __break(1u);
    goto LABEL_287;
  }

  sub_19A46B010(v210, v211);
  swift_endAccess();
  v47 = v534;

  v515 = 0;
LABEL_119:
  sub_19A2F3FA0(v47[196], &qword_1EAFA10A8);
LABEL_120:

  v64 = v47[272];
  v212 = v47[218];
  v213 = v47;
  v214 = v47[205];
  v215 = v213[201];

  sub_19A3E3E40(v212, type metadata accessor for Concept);
  sub_19A3E3E40(v215, type metadata accessor for NamedEntityData);
  sub_19A3E3E40(v214, type metadata accessor for EntityExtractor.NamedEntity.EntityData);
LABEL_136:
  v66 = v213[269] + 1;
  v47 = v213;
  if (v66 != v213[267])
  {
    goto LABEL_28;
  }

LABEL_157:
  v249 = v47[244];

  sub_19A3DF010("buildEntityConcepts", 19, 2);

  v47[149] = MEMORY[0x1E69E7CC0];
  swift_beginAccess();
  v250 = *(v249 + 40);
  v251 = v47;
  v252 = qword_1EAF9F838;

  v253 = v250;
  if (v252 != -1)
  {
    swift_once();
  }

  v254 = v251[244];
  v540 = qword_1EAFCA248;
  v255 = [v253 length];
  v256 = swift_task_alloc();
  *(v256 + 16) = v514;
  *(v256 + 24) = v254;
  v257 = swift_allocObject();
  *(v257 + 16) = sub_19A3E393C;
  *(v257 + 24) = v256;
  v251[30] = sub_19A3E3944;
  v251[31] = v257;
  v251[26] = MEMORY[0x1E69E9820];
  v1 = 1107296256;
  v251[27] = 1107296256;
  v251[28] = sub_19A3C4EB0;
  v251[29] = &block_descriptor_3;
  v258 = _Block_copy(v513);
  v259 = v251[31];

  [v253 enumerateAttribute:v540 inRange:0 options:v255 usingBlock:{0, v258}];

  _Block_release(v258);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
    goto LABEL_263;
  }

  if (!*(*v514 + 16))
  {
    v273 = MEMORY[0x1E69E6158];
    v47 = v534;
    if (v512[3] == 1)
    {
      v274 = *(v534 + 1952);
      LOBYTE(v543) = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFA2F70);
      v275 = swift_allocObject();
      *(v275 + 16) = xmmword_19A576E10;
      *(v275 + 32) = 0x74706D6F7270;
      *(v275 + 40) = 0xE600000000000000;
      v276 = [*(v274 + 40) string];
      v123 = v534;
      v277 = v276;
      v278 = sub_19A572CFC();
      v280 = v279;

      *(v275 + 72) = v273;
      *(v275 + 48) = v278;
      *(v275 + 56) = v280;
      v281 = sub_19A330370(v275);
      swift_setDeallocating();
      sub_19A2F3FA0(v275 + 32, &qword_1EAFA2F00);
      swift_deallocClassInstance();
      sub_19A338028(&v543, v281, &v544);
      if (v515)
      {
        goto LABEL_176;
      }

      LOBYTE(v513) = v544;
      v282 = v545;

      v515 = 0;
      v47 = v534;
    }

    else
    {
      LOBYTE(v513) = 0;
      v282 = 0;
    }

    v283 = &unk_1EAF9F000;
    v54 = &unk_1EAFCA000;
    v514 = v282;
    if (!(v47[165] | v47[169] & 2))
    {
      goto LABEL_191;
    }

    v284 = v47[244];
    v47[145] = MEMORY[0x1E69E7CD0];
    v52 = v47;
    v285 = *(v284 + 40);
    v286 = qword_1EAF9F840;

    v49 = v285;
    if (v286 != -1)
    {
      goto LABEL_281;
    }

    while (1)
    {
      v287 = v54[74];
      v288 = [v49 length];
      v289 = swift_task_alloc();
      *(v289 + 16) = v508;
      *(v289 + 24) = v284;
      v290 = swift_allocObject();
      *(v290 + 16) = sub_19A3E3CD4;
      *(v290 + 24) = v289;
      v52[6] = sub_19A3E4068;
      v52[7] = v290;
      v52[2] = MEMORY[0x1E69E9820];
      v52[3] = v1;
      v52[4] = sub_19A3C4EB0;
      v52[5] = &block_descriptor_59;
      v291 = _Block_copy(aBlock);

      [v49 enumerateAttribute:v287 inRange:0 options:v288 usingBlock:{0, v291}];

      _Block_release(v291);
      v292 = swift_isEscapingClosureAtFileLocation();

      if (v292)
      {
        __break(1u);
        goto LABEL_283;
      }

      if (*(*v508 + 16))
      {
        v47 = v534;
        v125 = v514;
        if (v514)
        {

          v294 = sub_19A3C3960(v293, sub_19A31EFC8, type metadata accessor for Concept, sub_19A32F034);
          *(v534 + 448) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA0318);
          *(v534 + 424) = v294;
          sub_19A334618(v534 + 424, v534 + 456);
          v123 = v534;
          JSONValue.init(_:)((v534 + 456), &v543);
          if (v515)
          {

            __swift_destroy_boxed_opaque_existential_0Tm(v534 + 424);
            goto LABEL_176;
          }

LABEL_180:
          v295 = v543;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v544 = v125;
          sub_19A33D400(v295, 0xD000000000000010, 0x800000019A5989F0, isUniquelyReferenced_nonNull_native);
          v125 = v544;
          __swift_destroy_boxed_opaque_existential_0Tm(v123 + 424);
          v515 = 0;
          v47 = v123;
        }

        if ((v47[169] & 2) != 0)
        {

          v305 = sub_19A5723DC();
          v306 = v47;
          v307 = sub_19A57355C();
          if (os_log_type_enabled(v305, v307))
          {
            v308 = swift_slowAlloc();
            v309 = swift_slowAlloc();
            v544 = v309;
            *v308 = 136380675;
            swift_beginAccess();

            v311 = sub_19A3E51D0(v310);
            v313 = v312;

            v314 = sub_19A31F114(v311, v313, &v544);

            *(v308 + 4) = v314;
            _os_log_impl(&dword_19A2DE000, v305, v307, "Disallowed concepts: %{private}s", v308, 0xCu);
            __swift_destroy_boxed_opaque_existential_0Tm(v309);
            MEMORY[0x19A902C50](v309, -1, -1);
            MEMORY[0x19A902C50](v308, -1, -1);
          }

          swift_beginAccess();

          v316 = sub_19A3C3960(v315, sub_19A31EFC8, type metadata accessor for Concept, sub_19A32F034);
          sub_19A3B8774();
          swift_allocError();
          *v317 = v316;
          *(v317 + 8) = 3;
          swift_willThrow();

          v272 = v306;
          goto LABEL_211;
        }

        v64 = sub_19A5723DC();
        v297 = sub_19A57355C();
        v514 = v125;
        if (os_log_type_enabled(v64, v297))
        {
          v298 = swift_slowAlloc();
          v299 = swift_slowAlloc();
          v544 = v299;
          *v298 = 136380675;
          swift_beginAccess();

          v301 = sub_19A3E51D0(v300);
          v303 = v302;

          v304 = sub_19A31F114(v301, v303, &v544);

          *(v298 + 4) = v304;
          v47 = v534;
          _os_log_impl(&dword_19A2DE000, v64, v297, "Disallowed concepts: %{private}s", v298, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v299);
          MEMORY[0x19A902C50](v299, -1, -1);
          MEMORY[0x19A902C50](v298, -1, -1);
        }

        else
        {
LABEL_188:
        }
      }

      else
      {

        v47 = v534;
      }

      v54 = &unk_1EAFCA000;
      v283 = &unk_1EAF9F000;
LABEL_191:
      v318 = v47[255];
      swift_beginAccess();
      v319 = *(v318 + 16);
      v320 = *(v319 + 16);
      if (v320)
      {
        v321 = v47[178];
        v322 = (v47[179] + *(v47[177] + 48));
        v323 = v319 + ((*(v321 + 80) + 32) & ~*(v321 + 80));
        v541 = *(v321 + 72);

        do
        {
          v324 = v47[244];
          v325 = v47[219];
          v326 = v47[179];
          sub_19A33546C(v323, v326, &qword_1EAF9FFE0);
          v327 = *v322;
          v328 = v322[1];
          sub_19A3E3DD8(v326, v325, type metadata accessor for Concept);
          v329 = *(v324 + 40);

          v330 = v329;
          v331 = v327;
          v47 = v534;
          sub_19A340970(v325, v331, v328);

          sub_19A3E3E40(v325, type metadata accessor for Concept);
          v323 += v541;
          --v320;
        }

        while (v320);

        v54 = &unk_1EAFCA000;
        v283 = &unk_1EAF9F000;
      }

      v332 = v47[244];
      v47[150] = MEMORY[0x1E69E7CC0];
      v333 = *(v332 + 40);
      v52 = v47;
      v334 = v283[264];

      v49 = v333;
      if (v334 != -1)
      {
        swift_once();
      }

      v335 = v54[74];
      v336 = [v49 length];
      v337 = swift_task_alloc();
      *(v337 + 16) = v509;
      v54 = swift_allocObject();
      v54[2] = sub_19A3E3984;
      v54[3] = v337;
      v52[24] = sub_19A3E4068;
      v52[25] = v54;
      v52[20] = MEMORY[0x1E69E9820];
      v52[21] = v1;
      v52[22] = sub_19A3C4EB0;
      v52[23] = &block_descriptor_23_0;
      v338 = _Block_copy(v510);

      v511 = v335;
      [v49 enumerateAttribute:v335 inRange:0 options:v336 usingBlock:{0, v338}];

      _Block_release(v338);
      v339 = swift_isEscapingClosureAtFileLocation();

      if ((v339 & 1) == 0)
      {
        break;
      }

      __break(1u);
LABEL_280:
      __break(1u);
LABEL_281:
      swift_once();
      v284 = v52[244];
    }

    v340 = v52[244];

    v341 = v515;
    v342 = sub_19A474074(v52[150]);
    v52[150] = v342;

    v343 = [*(v340 + 40) string];
    sub_19A572CFC();

    v123 = *(v342 + 16);
    v67 = v52;
    v344 = MEMORY[0x1E69E6158];
    if (v123)
    {
      v345 = (v342 + 16 * v123 + 24);
      v521 = v342;
      while (v123 <= *(v342 + 16))
      {
        v350 = *(v345 - 1);
        v349 = *v345;
        v351 = sub_19A57348C();
        if ((v353 & 1) == 0)
        {
          v531 = v349;
          v537 = v350;
          v354 = v352;
          v355 = v344;
          v356 = v351;

          v357 = sub_19A5723DC();
          v358 = sub_19A57353C();

          v526 = v356;
          if (os_log_type_enabled(v357, v358))
          {
            v519 = v341;
            v517 = v358;
            v359 = swift_slowAlloc();
            v360 = swift_slowAlloc();
            v544 = v360;
            *v359 = 136380931;
            v361 = sub_19A572F9C();
            v362 = MEMORY[0x19A900970](v361);
            v364 = v363;

            v365 = sub_19A31F114(v362, v364, &v544);

            *(v359 + 4) = v365;
            v67 = v534;
            *(v359 + 12) = 2080;
            *(v359 + 14) = sub_19A31F114(0x6E6F73726570, 0xE600000000000000, &v544);
            _os_log_impl(&dword_19A2DE000, v357, v517, "Replacing named entity string %{private}s with %s", v359, 0x16u);
            swift_arrayDestroy();
            MEMORY[0x19A902C50](v360, -1, -1);
            v341 = v519;
            v344 = MEMORY[0x1E69E6158];
            MEMORY[0x19A902C50](v359, -1, -1);
          }

          else
          {

            v344 = v355;
          }

          v366 = *(v67 + 1952);
          swift_beginAccess();
          v367 = [*(v366 + 40) mutableString];
          v368 = sub_19A572CCC();
          [v367 replaceCharactersInRange:v537 withString:{v531, v368}];

          *(v534 + 376) = v344;
          *(v534 + 384) = sub_19A2F4450();
          *(v534 + 352) = 0x6E6F73726570;
          *(v534 + 360) = 0xE600000000000000;
          if ((v526 ^ v354) >> 14)
          {
            v346 = sub_19A3859C0(v526, v354, (v534 + 352));
            v342 = v521;
            if (v341)
            {
              goto LABEL_210;
            }
          }

          else
          {
            v346 = sub_19A384CAC((v534 + 352), v526);
            v342 = v521;
            if (v341)
            {
LABEL_210:
              v369 = v348;
              v370 = v347;
              v371 = v346;
              sub_19A387988();
              swift_allocError();
              *v372 = v371;
              *(v372 + 8) = v370;
              v272 = v534;
              *(v372 + 16) = v369;
              __swift_destroy_boxed_opaque_existential_0Tm(v534 + 352);
              swift_endAccess();

              goto LABEL_211;
            }
          }

          __swift_destroy_boxed_opaque_existential_0Tm(v534 + 352);
          swift_endAccess();
          v341 = 0;
          v67 = v534;
        }

        v345 -= 2;
        if (!--v123)
        {
          goto LABEL_223;
        }
      }

      __break(1u);
LABEL_226:
      __break(1u);
LABEL_227:
      v395 = *(v67 + 1952);
      v396 = *(v67 + 1488);
      (*(*(v67 + 1480) + 32))(v396, *(v67 + 1832), *(v67 + 1472));
      *(v67 + 2376) = v123;
      v397 = *(v395 + 40);

      v398 = v397;
      v399 = [v398 length];
      v400 = swift_task_alloc();
      *(v400 + 16) = v396;
      *(v400 + 24) = v512;
      v401 = swift_allocObject();
      *(v401 + 16) = sub_19A3E3CCC;
      *(v401 + 24) = v400;
      *(v67 + 288) = sub_19A3E4068;
      *(v67 + 296) = v401;
      *(v67 + 256) = MEMORY[0x1E69E9820];
      *(v67 + 264) = v1;
      *(v67 + 272) = sub_19A3C4EB0;
      *(v67 + 280) = &block_descriptor_52;
      v402 = _Block_copy(v501);

      v89 = &off_1E7517000;
      [v398 enumerateAttribute:v511 inRange:0 options:v399 usingBlock:{0, v402}];

      _Block_release(v402);
      v403 = swift_isEscapingClosureAtFileLocation();

      if (v403)
      {
        goto LABEL_292;
      }

      if (*v512 == 1)
      {
        v404 = *(v534 + 1664);
        v405 = *(v534 + 1576);
        v406 = *(v534 + 1488);
        v407 = *(v534 + 1480);
        v408 = *(v534 + 1472);
        v409 = sub_19A572E7C();
        v410 = v404 + *(v405 + 20);
        (*(v407 + 16))(v410, v406, v408);
        v411 = type metadata accessor for NamedEntityData.PhotosPersonData(0);
        v410[*(v411 + 20)] = 0;
        v410[*(v411 + 24)] = 0;
        (*(*(v411 - 8) + 56))(v410, 0, 1, v411);
        *v404 = 0x6E6F73726570;
        v404[1] = 0xE600000000000000;
        swift_storeEnumTagMultiPayload();
        swift_beginAccess();
        sub_19A340CA4(0x206E6F73726570, 0xE700000000000000, v404, 0, v409);
        if (v519)
        {
          v412 = *(v534 + 1664);
          v413 = *(v534 + 1488);
          v414 = *(v534 + 1480);
          v415 = *(v534 + 1472);
          swift_endAccess();

          sub_19A3E3E40(v412, type metadata accessor for Concept);
          (*(v414 + 8))(v413, v415);

          v272 = v534;
          goto LABEL_211;
        }

        v435 = *(v534 + 1664);
        swift_endAccess();
        sub_19A3E3E40(v435, type metadata accessor for Concept);
        v519 = 0;
        v67 = v534;
        v394 = v506;
        v89 = &off_1E7517000;
      }

      else
      {
LABEL_232:
        v67 = v534;
        v394 = v506;
      }

      (*(*(v67 + 1480) + 8))(*(v67 + 1488), *(v67 + 1472));
    }

    else
    {
LABEL_223:
      v519 = v341;
      v390 = *(v67 + 1832);
      v391 = *(v67 + 1480);
      v392 = *(v67 + 1472);
      v393 = *(v67 + 1280);

      sub_19A33546C(v393, v390, &qword_1EAF9FD80);
      LOBYTE(v123) = 1;
      if ((*(v391 + 48))(v390, 1, v392) != 1)
      {
        goto LABEL_227;
      }

      sub_19A2F3FA0(*(v67 + 1832), &qword_1EAF9FD80);
      v394 = v506;
      v89 = 0x1E7517000;
    }

    v436 = *(*(v67 + 1952) + 40);
    v437 = MEMORY[0x1E69E7CD0];
    *(v67 + 1208) = MEMORY[0x1E69E7CD0];
    *(v67 + 1224) = v437;

    v438 = v436;
    v439 = [v438 length];
    v440 = swift_task_alloc();
    *(v440 + 16) = v504;
    *(v440 + 24) = v505;
    v441 = swift_allocObject();
    *(v441 + 16) = sub_19A3E398C;
    *(v441 + 24) = v440;
    *(v67 + 144) = sub_19A3E4068;
    *(v67 + 152) = v441;
    *(v67 + 112) = MEMORY[0x1E69E9820];
    *(v67 + 120) = v1;
    *(v67 + 128) = sub_19A3C4EB0;
    *(v67 + 136) = &block_descriptor_30;
    v123 = v67;
    v442 = _Block_copy(v394);

    [v438 *(v89 + 3984)];
    _Block_release(v442);
    LOBYTE(v442) = swift_isEscapingClosureAtFileLocation();

    if (v442)
    {
LABEL_289:
      __break(1u);
    }

    else
    {
      v443 = *(v67 + 1952);
      v444 = *(v67 + 1408);
      v445 = *(v123 + 1400);

      v542 = *(v123 + 1208);
      v533 = *(v123 + 1224);

      v527 = v443[2];
      v446 = v443[4];
      v447 = v443[5];
      v538 = v443[3];
      swift_bridgeObjectRetain_n();
      swift_bridgeObjectRetain_n();
      v448 = v447;
      v449 = [v448 string];
      sub_19A572CFC();

      sub_19A570C6C();
      v450 = v444 + *(v445 + 20);
      sub_19A570BFC();
      v451 = [v448 length];
      v452 = swift_task_alloc();
      *(v452 + 16) = v450;
      v453 = swift_allocObject();
      *(v453 + 16) = sub_19A3E3994;
      *(v453 + 24) = v452;
      *(v123 + 96) = sub_19A3E4068;
      *(v123 + 104) = v453;
      *(v123 + 64) = MEMORY[0x1E69E9820];
      *(v123 + 72) = v1;
      *(v123 + 80) = sub_19A3C4EB0;
      *(v123 + 88) = &block_descriptor_37;
      v454 = _Block_copy(v503);

      [v448 enumerateAttribute:v511 inRange:0 options:v451 usingBlock:{0, v454}];
      _Block_release(v454);
      LOBYTE(v454) = swift_isEscapingClosureAtFileLocation();

      if ((v454 & 1) == 0)
      {

        v455 = *MEMORY[0x1E696A518];
        v456 = [v448 length];
        v457 = swift_task_alloc();
        *(v457 + 16) = v450;
        v458 = swift_allocObject();
        *(v458 + 16) = sub_19A3E399C;
        *(v458 + 24) = v457;
        *(v123 + 336) = sub_19A3E4068;
        *(v123 + 344) = v458;
        *(v123 + 304) = MEMORY[0x1E69E9820];
        *(v123 + 312) = v1;
        *(v123 + 320) = sub_19A3C4EB0;
        *(v123 + 328) = &block_descriptor_44;
        v459 = _Block_copy(v502);

        [v448 enumerateAttribute:v455 inRange:0 options:v456 usingBlock:{0, v459}];
        _Block_release(v459);
        v460 = swift_isEscapingClosureAtFileLocation();

        if ((v460 & 1) == 0)
        {
          v461 = *(v123 + 1408);

          *v461 = v527;
          v461[1] = v538;
          v461[2] = v446;
          v462 = MEMORY[0x1E69E6158];
          v463 = v519;
          if (v514)
          {
            sub_19A570A4C();
            sub_19A3E3F34(&qword_1ED825330, MEMORY[0x1E6968678]);
            v464 = sub_19A572F7C();
            *(v123 + 416) = v462;
            *(v123 + 392) = v464;
            *(v123 + 400) = v465;
            sub_19A334618(v123 + 392, v123 + 552);
            JSONValue.init(_:)((v123 + 552), &v543);
            if (v519)
            {
              sub_19A3E3E40(*(v123 + 1408), type metadata accessor for TextPrompt);

              __swift_destroy_boxed_opaque_existential_0Tm(v123 + 392);
LABEL_176:

LABEL_177:

              v272 = v123;
              goto LABEL_211;
            }

            v467 = v543;
            v468 = swift_isUniquelyReferenced_nonNull_native();
            v544 = v514;
            sub_19A33D400(v467, 0x65746E656D677561, 0xEF74706D6F725064, v468);
            v466 = v544;
            __swift_destroy_boxed_opaque_existential_0Tm(v123 + 392);
          }

          else
          {
            v466 = 0;
          }

          v469 = *(v123 + 1288);
          if (v469 > 1)
          {
            v470 = *(v534 + 2056);
            v471 = *(v534 + 1912);
            v472 = *(v534 + 1904);
            v523 = v472;
            v528 = *(v123 + 2072);
            v473 = swift_task_alloc();
            v470(v473, v471, v472);

            v474 = swift_slowAlloc();
            *v474 = 0;
            v475 = sub_19A57234C();
            v476 = sub_19A57361C();
            v477 = sub_19A5722FC();
            _os_signpost_emit_with_name_impl(&dword_19A2DE000, v475, v476, v477, "reportConcepts", "", v474, 2u);

            sub_19A3C3960(v478, sub_19A31EFC8, type metadata accessor for Concept, sub_19A32F034);
            v469();

            v479 = sub_19A57360C();
            v480 = sub_19A5722FC();
            v123 = v534;
            _os_signpost_emit_with_name_impl(&dword_19A2DE000, v475, v479, v480, "reportConcepts", "", v474, 2u);

            v463 = v519;

            MEMORY[0x19A902C50](v474, -1, -1);
            sub_19A2E0A60(v469);
            v528(v473, v523);
          }

          else
          {
          }

          if (v466)
          {
            v481 = sub_19A3C3960(v542, sub_19A31EFC8, type metadata accessor for Concept, sub_19A32F034);
            *(v123 + 544) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA0318);
            *(v123 + 520) = v481;
            sub_19A334618(v123 + 520, v123 + 488);
            JSONValue.init(_:)((v123 + 488), &v543);
            if (v463)
            {
              sub_19A3E3E40(*(v123 + 1408), type metadata accessor for TextPrompt);

              __swift_destroy_boxed_opaque_existential_0Tm(v123 + 520);

              goto LABEL_177;
            }

            v482 = v543;
            v483 = swift_isUniquelyReferenced_nonNull_native();
            v544 = v466;
            sub_19A33D400(v482, 0xD000000000000012, 0x800000019A595740, v483);
            v259 = v544;
            __swift_destroy_boxed_opaque_existential_0Tm(v123 + 520);
            v463 = 0;
          }

          else
          {

            v259 = 0;
          }

          if (!*(v533 + 16))
          {

            goto LABEL_264;
          }

          v484 = sub_19A3C3960(v533, sub_19A31EFA0, MEMORY[0x1E69695A8], sub_19A32ED90);
          sub_19A3E39A4(v484);
          if (v463)
          {
            v272 = v534;
            sub_19A3E3E40(*(v534 + 1408), type metadata accessor for TextPrompt);

            goto LABEL_211;
          }

LABEL_263:

          v123 = v534;
LABEL_264:
          if (v259)
          {
            v485 = *(v123 + 1320);
            if (v485)
            {
              LOBYTE(v544) = v513;
              v545 = v259;
              v485(&v544);
            }
          }

          v486 = *(v123 + 1952);
          v487 = *(v123 + 1896);
          v488 = *(v123 + 1880);
          v498 = *(v123 + 1872);
          v489 = *(v123 + 1408);
          sub_19A3E3C64(v489, *(v123 + 1232), type metadata accessor for TextPrompt);
          v490 = [*(v486 + 40) string];
          v491 = sub_19A572CFC();
          v518 = v492;
          v520 = v491;

          sub_19A3E3E40(v489, type metadata accessor for TextPrompt);

          sub_19A3DF010("validateText", 12, 2);

          (*(v488 + 8))(v487, v498);

          v493 = *(v123 + 8);

          v493(v520, v518);
          return;
        }

        goto LABEL_291;
      }
    }

    __break(1u);
LABEL_291:
    __break(1u);
LABEL_292:
    __break(1u);
    return;
  }

  v261 = sub_19A5723DC();
  v262 = sub_19A57355C();
  if (os_log_type_enabled(v261, v262))
  {
    v263 = swift_slowAlloc();
    v264 = swift_slowAlloc();
    v544 = v264;
    *v263 = 136380675;
    swift_beginAccess();

    v266 = sub_19A3E501C(v265);
    v268 = v267;

    v269 = sub_19A31F114(v266, v268, &v544);

    *(v263 + 4) = v269;
    _os_log_impl(&dword_19A2DE000, v261, v262, "Unresolved ambiguities: %{private}s", v263, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v264);
    MEMORY[0x19A902C50](v264, -1, -1);
    MEMORY[0x19A902C50](v263, -1, -1);
  }

  swift_beginAccess();
  v270 = *(v534 + 1192);
  sub_19A3B8774();
  swift_allocError();
  *v271 = v270;
  *(v271 + 8) = 0;
  swift_willThrow();

  v272 = v534;
LABEL_211:

  v373 = v272[237];
  v374 = v272[235];
  v375 = v272;
  v376 = v272[234];
  sub_19A3DF010("validateText", 12, 2);

  (*(v374 + 8))(v373, v376);

  v377 = v375[1];

  v377();
}

uint64_t sub_19A3DA250()
{

  return MEMORY[0x1EEE6DFA0](sub_19A3DA384, 0, 0);
}

void sub_19A3DA384()
{
  v478 = v0;
  v446 = v0 + 297;
  v4 = v0[275];

  v447 = v0[295];
  v5 = v0[269] + 1;
  v469 = v0;
  if (v5 == v0[267])
  {
LABEL_2:
    v6 = v0 + 26;
    v7 = v0 + 149;
    v8 = v469[244];

    sub_19A3DF010("buildEntityConcepts", 19, 2);

    v469[149] = MEMORY[0x1E69E7CC0];
    swift_beginAccess();
    v9 = *(v8 + 40);
    v10 = qword_1EAF9F838;

    v11 = v9;
    if (v10 != -1)
    {
      swift_once();
    }

    v12 = v469[244];
    v13 = qword_1EAFCA248;
    v14 = [v11 length];
    v15 = swift_task_alloc();
    *(v15 + 16) = v7;
    *(v15 + 24) = v12;
    v16 = swift_allocObject();
    *(v16 + 16) = sub_19A3E393C;
    *(v16 + 24) = v15;
    v469[30] = sub_19A3E3944;
    v469[31] = v16;
    v469[26] = MEMORY[0x1E69E9820];
    v3 = 1107296256;
    v469[27] = 1107296256;
    v469[28] = sub_19A3C4EB0;
    v469[29] = &block_descriptor_3;
    v17 = _Block_copy(v6);

    [v11 enumerateAttribute:v13 inRange:0 options:v14 usingBlock:{0, v17}];

    _Block_release(v17);
    LOBYTE(v17) = swift_isEscapingClosureAtFileLocation();

    if (v17)
    {
      __break(1u);
LABEL_218:

      swift_endAccess();
      return;
    }

    if (*(*v7 + 16))
    {
      v18 = v469;

      v19 = sub_19A5723DC();
      v20 = sub_19A57355C();
      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        v22 = swift_slowAlloc();
        v476 = v22;
        *v21 = 136380675;
        swift_beginAccess();

        v24 = sub_19A3E501C(v23);
        v26 = v25;

        v27 = sub_19A31F114(v24, v26, &v476);

        *(v21 + 4) = v27;
        _os_log_impl(&dword_19A2DE000, v19, v20, "Unresolved ambiguities: %{private}s", v21, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v22);
        MEMORY[0x19A902C50](v22, -1, -1);
        v18 = v469;
        MEMORY[0x19A902C50](v21, -1, -1);
      }

      swift_beginAccess();
      v28 = v18[149];
      sub_19A3B8774();
      swift_allocError();
      *v29 = v28;
      *(v29 + 8) = 0;
      swift_willThrow();
      v1 = v469;

      goto LABEL_191;
    }

    v205 = MEMORY[0x1E69E6158];
    v206 = v469;
    if (v446[3] == 1)
    {
      v207 = v469[244];
      LOBYTE(v475) = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFA2F70);
      v208 = swift_allocObject();
      *(v208 + 32) = 0x74706D6F7270;
      *(v208 + 16) = xmmword_19A576E10;
      *(v208 + 40) = 0xE600000000000000;
      v1 = v469;
      v209 = [*(v207 + 40) string];
      v210 = sub_19A572CFC();
      v212 = v211;

      *(v208 + 72) = v205;
      *(v208 + 48) = v210;
      *(v208 + 56) = v212;
      v213 = sub_19A330370(v208);
      swift_setDeallocating();
      sub_19A2F3FA0(v208 + 32, &qword_1EAFA2F00);
      swift_deallocClassInstance();
      sub_19A338028(&v475, v213, &v476);
      if (v447)
      {
        goto LABEL_190;
      }

      v444 = v476;
      v445 = v477;

      v447 = 0;
      v206 = v469;
    }

    else
    {
      v444 = 0;
      v445 = 0;
    }

    v214 = &unk_1EAFCA000;
    if (!(v206[165] | v206[169] & 2))
    {
      v228 = &off_1E7517000;
      goto LABEL_170;
    }

    v215 = v206 + 145;
    v216 = v206[244];
    v206[145] = MEMORY[0x1E69E7CD0];
    v217 = *(v216 + 40);
    v218 = qword_1EAF9F840;

    v219 = v217;
    if (v218 != -1)
    {
      swift_once();
      v216 = v206[244];
    }

    v220 = qword_1EAFCA250;
    v221 = [v219 length];
    v222 = swift_task_alloc();
    *(v222 + 16) = v215;
    *(v222 + 24) = v216;
    v223 = swift_allocObject();
    *(v223 + 16) = sub_19A3E3CD4;
    *(v223 + 24) = v222;
    v206[6] = sub_19A3E4068;
    v206[7] = v223;
    v206[2] = MEMORY[0x1E69E9820];
    v206[3] = 1107296256;
    v206[4] = sub_19A3C4EB0;
    v206[5] = &block_descriptor_59;
    v224 = _Block_copy(v206 + 2);

    [v219 enumerateAttribute:v220 inRange:0 options:v221 usingBlock:{0, v224}];

    _Block_release(v224);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {

      if (!*(*v215 + 16))
      {

        v206 = v469;
LABEL_169:
        v228 = &off_1E7517000;
        v214 = &unk_1EAFCA000;
LABEL_170:
        v238 = v206 + 20;
        v467 = (v206 + 150);
        v239 = v206[255];
        swift_beginAccess();
        v240 = *(v239 + 16);
        v241 = *(v240 + 16);
        if (v241)
        {
          v464 = (v206 + 20);
          v242 = v206[178];
          v243 = (v206[179] + *(v206[177] + 48));
          v244 = v240 + ((*(v242 + 80) + 32) & ~*(v242 + 80));
          v472 = *(v242 + 72);

          do
          {
            v245 = v206[244];
            v246 = v206[219];
            v247 = v206[179];
            sub_19A33546C(v244, v247, &qword_1EAF9FFE0);
            v248 = *v243;
            v249 = v243[1];
            sub_19A3E3DD8(v247, v246, type metadata accessor for Concept);
            v250 = *(v245 + 40);

            v251 = v250;
            v252 = v248;
            v206 = v469;
            sub_19A340970(v246, v252, v249);

            sub_19A3E3E40(v246, type metadata accessor for Concept);
            v244 += v472;
            --v241;
          }

          while (v241);

          v228 = &off_1E7517000;
          v214 = &unk_1EAFCA000;
          v238 = v464;
        }

        v253 = v206[244];
        v206[150] = MEMORY[0x1E69E7CC0];
        v254 = *(v253 + 24);
        v255 = *(v253 + 40);
        v256 = qword_1EAF9F840;

        v257 = v255;
        if (v256 != -1)
        {
          swift_once();
        }

        v258 = v214[74];
        v2 = [v257 v228[477]];
        v259 = swift_task_alloc();
        *(v259 + 16) = v467;
        v260 = swift_allocObject();
        *(v260 + 16) = sub_19A3E3984;
        *(v260 + 24) = v259;
        v206[24] = sub_19A3E4068;
        v206[25] = v260;
        v206[20] = MEMORY[0x1E69E9820];
        v206[21] = v3;
        v206[22] = sub_19A3C4EB0;
        v206[23] = &block_descriptor_23_0;
        v261 = _Block_copy(v238);
        v262 = v206;
        v263 = v206[25];

        v443 = v258;
        [v257 enumerateAttribute:v258 inRange:0 options:v2 usingBlock:{0, v261}];

        _Block_release(v261);
        v264 = swift_isEscapingClosureAtFileLocation();

        if (v264)
        {
          __break(1u);
        }

        else
        {
          v265 = v262[244];

          v263 = v447;
          v266 = sub_19A474074(v262[150]);
          v262[150] = v266;

          v267 = [*(v265 + 40) string];
          v471 = sub_19A572CFC();
          v453 = v268;

          v269 = *(v266 + 16);
          v254 = v262;
          if (v269)
          {
            v270 = (v266 + 16 * v269 + 24);
            v447 = 136380931;
            LOBYTE(v1) = 112;
            v450 = v266;
            v4 = v453;
            while (v269 <= *(v266 + 16))
            {
              v275 = *(v270 - 1);
              v276 = *v270;
              v277 = sub_19A57348C();
              if ((v279 & 1) == 0)
              {
                v464 = v275;
                v467 = v263;
                v462 = v276;
                v280 = v278;
                v281 = v277;

                v282 = sub_19A5723DC();
                v283 = sub_19A57353C();

                v456 = v283;
                v284 = v283;
                v285 = v282;
                if (os_log_type_enabled(v282, v284))
                {
                  v1 = swift_slowAlloc();
                  v286 = swift_slowAlloc();
                  v476 = v286;
                  *v1 = 136380931;
                  v287 = v281;
                  v288 = sub_19A572F9C();
                  v289 = MEMORY[0x19A900970](v288);
                  v291 = v290;

                  v292 = sub_19A31F114(v289, v291, &v476);
                  v2 = v467;

                  *(v1 + 4) = v292;
                  v254 = v469;
                  *(v1 + 12) = 2080;
                  *(v1 + 14) = sub_19A31F114(0x6E6F73726570, 0xE600000000000000, &v476);
                  _os_log_impl(&dword_19A2DE000, v285, v456, "Replacing named entity string %{private}s with %s", v1, 0x16u);
                  swift_arrayDestroy();
                  MEMORY[0x19A902C50](v286, -1, -1);
                  v293 = v1;
                  LOBYTE(v1) = 112;
                  MEMORY[0x19A902C50](v293, -1, -1);
                }

                else
                {

                  v287 = v281;
                  v2 = v263;
                }

                v294 = v254[244];
                swift_beginAccess();
                v295 = [*(v294 + 40) mutableString];
                v296 = sub_19A572CCC();
                [v295 replaceCharactersInRange:v464 withString:{v462, v296}];

                v254[47] = MEMORY[0x1E69E6158];
                v254[48] = sub_19A2F4450();
                v254[44] = 0x6E6F73726570;
                v254[45] = 0xE600000000000000;
                if ((v287 ^ v280) >> 14)
                {
                  v271 = v254;
                  v272 = sub_19A3859C0(v287, v280, v254 + 44);
                  if (v2)
                  {
                    goto LABEL_189;
                  }
                }

                else
                {
                  v271 = v254;
                  v272 = sub_19A384CAC(v254 + 44, v287);
                  if (v2)
                  {
LABEL_189:
                    v297 = v274;
                    v298 = v273;
                    v299 = v272;
                    v1 = v469;
                    sub_19A387988();
                    swift_allocError();
                    *v300 = v299;
                    *(v300 + 8) = v298;
                    *(v300 + 16) = v297;
                    __swift_destroy_boxed_opaque_existential_0Tm((v469 + 44));
                    swift_endAccess();

                    goto LABEL_190;
                  }
                }

                __swift_destroy_boxed_opaque_existential_0Tm((v271 + 44));
                swift_endAccess();
                v263 = 0;
                v254 = v271;
                v266 = v450;
                v4 = v453;
              }

              v270 -= 2;
              if (!--v269)
              {
                goto LABEL_223;
              }
            }

LABEL_200:
            __break(1u);
LABEL_201:
            __break(1u);
LABEL_202:
            __break(1u);
LABEL_203:
            __break(1u);
LABEL_204:
            __break(1u);
LABEL_205:
            __break(1u);
LABEL_206:
            __break(1u);
LABEL_207:
            v320 = *(v2 + 2120);
            v321 = *(v2 + 1352);

            v323 = sub_19A3E2C08(v322, v4, v464, v320);
            *(v2 + 2352) = v323;
            *(v2 + 2360) = v447;

            v324 = swift_task_alloc();
            *(v2 + 2368) = v324;
            *v324 = v2;
            v324[1] = sub_19A3DA250;
            v325 = *(v2 + 2040);
            v326 = *(v2 + 1952);
            v327 = v446[2];
            v328 = *(v2 + 1312);
            v329 = *(v2 + 1304);
            v330 = *(v2 + 1296);
            v331 = *(v2 + 1288);
            v486 = v4;
            v487 = v464;
            v485 = v327;
            v484 = v1;
            v482 = v471;
            v483 = v467;
            v480 = v328;
            v481 = v326;

            sub_19A3DF2F8(v323, v471, v467, v325, (v321 & 4) != 0, v331, v330, v329);
            return;
          }
        }

LABEL_223:
        v468 = v263;
        v357 = v254[229];
        v358 = v254[185];
        v359 = v254[184];
        v360 = v254[160];

        sub_19A33546C(v360, v357, &qword_1EAF9FD80);
        if ((*(v358 + 48))(v357, 1, v359) == 1)
        {
          sub_19A2F3FA0(v254[229], &qword_1EAF9FD80);
          v361 = v254;
          v362 = v443;
        }

        else
        {
          v363 = v254[244];
          v364 = v254[186];
          (*(v254[185] + 32))(v364, v254[229], v254[184]);
          *(v254 + 2376) = 1;
          v365 = *(v363 + 40);

          v366 = v365;
          v473 = [v366 length];
          v367 = swift_task_alloc();
          *(v367 + 16) = v364;
          *(v367 + 24) = v446;
          v368 = swift_allocObject();
          *(v368 + 16) = sub_19A3E3CCC;
          *(v368 + 24) = v367;
          v254[36] = sub_19A3E4068;
          v254[37] = v368;
          v254[32] = MEMORY[0x1E69E9820];
          v254[33] = v3;
          v254[34] = sub_19A3C4EB0;
          v254[35] = &block_descriptor_52;
          v369 = _Block_copy(v254 + 32);

          v362 = v443;
          [v366 enumerateAttribute:v443 inRange:0 options:v473 usingBlock:{0, v369}];

          _Block_release(v369);
          LOBYTE(v369) = swift_isEscapingClosureAtFileLocation();

          if (v369)
          {
LABEL_276:
            __break(1u);
            return;
          }

          if (*v446 == 1)
          {
            v1 = v469;
            v370 = v469[208];
            v371 = v469[197];
            v372 = v469[186];
            v373 = v469[185];
            v374 = v469[184];
            v375 = sub_19A572E7C();
            v376 = v370 + *(v371 + 20);
            (*(v373 + 16))(v376, v372, v374);
            v377 = type metadata accessor for NamedEntityData.PhotosPersonData(0);
            v376[*(v377 + 20)] = 0;
            v376[*(v377 + 24)] = 0;
            (*(*(v377 - 8) + 56))(v376, 0, 1, v377);
            *v370 = 0x6E6F73726570;
            v370[1] = 0xE600000000000000;
            swift_storeEnumTagMultiPayload();
            swift_beginAccess();
            sub_19A340CA4(0x206E6F73726570, 0xE700000000000000, v370, 0, v375);
            if (v468)
            {
              v378 = v469[208];
              v379 = v469[186];
              v380 = v469[185];
              v381 = v469[184];
              swift_endAccess();

              sub_19A3E3E40(v378, type metadata accessor for Concept);
              (*(v380 + 8))(v379, v381);
LABEL_190:

              goto LABEL_191;
            }

            v382 = v469[208];
            swift_endAccess();
            sub_19A3E3E40(v382, type metadata accessor for Concept);
            v468 = 0;
            v361 = v469;
            v362 = v443;
          }

          else
          {
            v361 = v469;
          }

          (*(v361[185] + 8))(v361[186], v361[184]);
        }

        v383 = *(v361[244] + 40);
        v384 = MEMORY[0x1E69E7CD0];
        v361[151] = MEMORY[0x1E69E7CD0];
        v361[153] = v384;

        v385 = v383;
        v386 = [v385 length];
        v387 = swift_task_alloc();
        *(v387 + 16) = v361 + 153;
        *(v387 + 24) = v361 + 151;
        v388 = swift_allocObject();
        *(v388 + 16) = sub_19A3E398C;
        *(v388 + 24) = v387;
        v361[18] = sub_19A3E4068;
        v361[19] = v388;
        v361[14] = MEMORY[0x1E69E9820];
        v361[15] = v3;
        v361[16] = sub_19A3C4EB0;
        v361[17] = &block_descriptor_30;
        v389 = _Block_copy(v361 + 14);

        [v385 enumerateAttribute:v362 inRange:0 options:v386 usingBlock:{0, v389}];
        _Block_release(v389);
        LOBYTE(v389) = swift_isEscapingClosureAtFileLocation();

        if ((v389 & 1) == 0)
        {
          v390 = v361[244];
          v391 = v361[176];
          v392 = v361[175];

          v474 = v361[151];
          v463 = v361[153];

          v457 = v390[2];
          v393 = v390[4];
          v394 = v390[5];
          v466 = v390[3];
          swift_bridgeObjectRetain_n();
          swift_bridgeObjectRetain_n();
          v395 = v394;
          v396 = [v395 string];
          sub_19A572CFC();

          sub_19A570C6C();
          v397 = v391 + *(v392 + 20);
          sub_19A570BFC();
          v398 = [v395 length];
          v399 = swift_task_alloc();
          *(v399 + 16) = v397;
          v400 = swift_allocObject();
          *(v400 + 16) = sub_19A3E3994;
          *(v400 + 24) = v399;
          v361[12] = sub_19A3E4068;
          v361[13] = v400;
          v361[8] = MEMORY[0x1E69E9820];
          v361[9] = v3;
          v361[10] = sub_19A3C4EB0;
          v361[11] = &block_descriptor_37;
          v401 = _Block_copy(v361 + 8);

          [v395 enumerateAttribute:v443 inRange:0 options:v398 usingBlock:{0, v401}];
          _Block_release(v401);
          LOBYTE(v401) = swift_isEscapingClosureAtFileLocation();

          if ((v401 & 1) == 0)
          {

            v402 = *MEMORY[0x1E696A518];
            v403 = [v395 length];
            v404 = swift_task_alloc();
            *(v404 + 16) = v397;
            v405 = swift_allocObject();
            *(v405 + 16) = sub_19A3E399C;
            *(v405 + 24) = v404;
            v361[42] = sub_19A3E4068;
            v361[43] = v405;
            v361[38] = MEMORY[0x1E69E9820];
            v361[39] = v3;
            v361[40] = sub_19A3C4EB0;
            v361[41] = &block_descriptor_44;
            v406 = _Block_copy(v361 + 38);

            [v395 enumerateAttribute:v402 inRange:0 options:v403 usingBlock:{0, v406}];
            _Block_release(v406);
            LOBYTE(v406) = swift_isEscapingClosureAtFileLocation();

            if ((v406 & 1) == 0)
            {
              v407 = v361[176];

              *v407 = v457;
              v407[1] = v466;
              v407[2] = v393;
              if (v445)
              {
                sub_19A570A4C();
                sub_19A3E3F34(&qword_1ED825330, MEMORY[0x1E6968678]);
                v408 = sub_19A572F7C();
                v361[52] = MEMORY[0x1E69E6158];
                v361[49] = v408;
                v361[50] = v409;
                sub_19A334618((v361 + 49), (v361 + 69));
                v1 = v361;
                JSONValue.init(_:)(v361 + 69, &v475);
                if (v468)
                {
                  sub_19A3E3E40(v361[176], type metadata accessor for TextPrompt);

                  __swift_destroy_boxed_opaque_existential_0Tm((v361 + 49));
                  goto LABEL_190;
                }

                v411 = v475;
                isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                v476 = v445;
                sub_19A33D400(v411, 0x65746E656D677561, 0xEF74706D6F725064, isUniquelyReferenced_nonNull_native);
                v410 = v476;
                __swift_destroy_boxed_opaque_existential_0Tm((v361 + 49));
                v468 = 0;
              }

              else
              {
                v410 = 0;
              }

              v413 = v361[161];
              if (v413 > 1)
              {
                v414 = v361[259];
                v415 = v469[257];
                v416 = v469[239];
                v417 = v469[238];
                v454 = v417;
                v458 = v414;
                v418 = swift_task_alloc();
                v415(v418, v416, v417);

                v419 = swift_slowAlloc();
                *v419 = 0;
                v420 = sub_19A57234C();
                v421 = sub_19A57361C();
                v422 = sub_19A5722FC();
                _os_signpost_emit_with_name_impl(&dword_19A2DE000, v420, v421, v422, "reportConcepts", "", v419, 2u);

                sub_19A3C3960(v423, sub_19A31EFC8, type metadata accessor for Concept, sub_19A32F034);
                v413();

                v424 = sub_19A57360C();
                v425 = sub_19A5722FC();
                v361 = v469;
                _os_signpost_emit_with_name_impl(&dword_19A2DE000, v420, v424, v425, "reportConcepts", "", v419, 2u);

                MEMORY[0x19A902C50](v419, -1, -1);
                sub_19A2E0A60(v413);
                v458(v418, v454);
              }

              else
              {
              }

              v426 = v468;
              if (v410)
              {
                v427 = sub_19A3C3960(v474, sub_19A31EFC8, type metadata accessor for Concept, sub_19A32F034);
                v361[68] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA0318);
                v361[65] = v427;
                sub_19A334618((v361 + 65), (v361 + 61));
                v1 = v361;
                JSONValue.init(_:)(v361 + 61, &v475);
                if (v468)
                {
                  sub_19A3E3E40(v361[176], type metadata accessor for TextPrompt);

                  __swift_destroy_boxed_opaque_existential_0Tm((v361 + 65));
                  goto LABEL_190;
                }

                v428 = v475;
                v429 = swift_isUniquelyReferenced_nonNull_native();
                v476 = v410;
                sub_19A33D400(v428, 0xD000000000000012, 0x800000019A595740, v429);
                v410 = v476;
                __swift_destroy_boxed_opaque_existential_0Tm((v361 + 65));
                v426 = 0;
              }

              else
              {
              }

              if (*(v463 + 16))
              {
                v430 = sub_19A3C3960(v463, sub_19A31EFA0, MEMORY[0x1E69695A8], sub_19A32ED90);
                sub_19A3E39A4(v430);
                if (v426)
                {
                  v1 = v469;
                  sub_19A3E3E40(v469[176], type metadata accessor for TextPrompt);

                  goto LABEL_190;
                }

                v361 = v469;
              }

              else
              {
              }

              if (v410)
              {
                v431 = v361[165];
                if (v431)
                {
                  LOBYTE(v476) = v444;
                  v477 = v410;
                  v431(&v476);
                }
              }

              v432 = v361[244];
              v433 = v361[237];
              v434 = v361[235];
              v440 = v361[234];
              v435 = v361;
              v436 = v361[176];
              sub_19A3E3C64(v436, v435[154], type metadata accessor for TextPrompt);
              v437 = [*(v432 + 40) string];
              v451 = sub_19A572CFC();
              v448 = v438;

              sub_19A3E3E40(v436, type metadata accessor for TextPrompt);

              sub_19A3DF010("validateText", 12, 2);

              (*(v434 + 8))(v433, v440);

              v439 = v435[1];

              v439(v451, v448);
              return;
            }

            goto LABEL_275;
          }

LABEL_274:
          __break(1u);
LABEL_275:
          __break(1u);
          goto LABEL_276;
        }

LABEL_273:
        __break(1u);
        goto LABEL_274;
      }

      v206 = v469;
      if (v445)
      {

        v227 = sub_19A3C3960(v226, sub_19A31EFC8, type metadata accessor for Concept, sub_19A32F034);
        v469[56] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA0318);
        v469[53] = v227;
        sub_19A334618((v469 + 53), (v469 + 57));
        v1 = v469;
        JSONValue.init(_:)(v469 + 57, &v475);
        if (!v447)
        {
          goto LABEL_195;
        }

        __swift_destroy_boxed_opaque_existential_0Tm((v469 + 53));
        goto LABEL_190;
      }

      v445 = 0;
      if ((v469[169] & 2) != 0)
      {
        goto LABEL_196;
      }

LABEL_166:
      v229 = sub_19A5723DC();
      v230 = sub_19A57355C();
      if (os_log_type_enabled(v229, v230))
      {
        v231 = swift_slowAlloc();
        v232 = swift_slowAlloc();
        v476 = v232;
        *v231 = 136380675;
        swift_beginAccess();

        v234 = sub_19A3E51D0(v233);
        v236 = v235;

        v237 = sub_19A31F114(v234, v236, &v476);

        *(v231 + 4) = v237;
        v206 = v469;
        _os_log_impl(&dword_19A2DE000, v229, v230, "Disallowed concepts: %{private}s", v231, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v232);
        MEMORY[0x19A902C50](v232, -1, -1);
        MEMORY[0x19A902C50](v231, -1, -1);
      }

      goto LABEL_169;
    }

    __break(1u);
    goto LABEL_260;
  }

  v444 = v0 + 120;
  v449 = v0 + 219;
  v452 = v0 + 209;
  v445 = 1;
LABEL_10:
  v0[268] = v447;
  while (1)
  {
    v0[269] = v5;
    v33 = v0[264];
    if (v5 >= *(v33 + 16))
    {
      __break(1u);
      goto LABEL_200;
    }

    v34 = v0[244];
    v459 = v5;
    v35 = (v33 + 24 * v5);
    v36 = v35[4];
    v0[270] = v36;
    v37 = v35[5];
    v0[271] = v37;
    v38 = v35[6];
    v0[272] = v38;
    v39 = *(v34 + 40);

    v40 = [v39 string];
    v2 = v0;
    sub_19A572CFC();
    v41 = *(v34 + 40);
    v42 = v37;
    v43 = [v41 string];
    sub_19A572CFC();

    v471 = v36;
    sub_19A57348C();
    LOBYTE(v36) = v44;

    if (v36)
    {
      goto LABEL_262;
    }

    v45 = sub_19A572F9C();
    v47 = v46;
    v49 = v48;
    v1 = v50;

    v4 = MEMORY[0x19A900970](v45, v47, v49, v1);
    v52 = v51;

    *(v2 + 2184) = v4;
    v464 = v52;
    *(v2 + 2192) = v52;
    LODWORD(v1) = *(v38 + 32);
    *(v2 + 2380) = v1;
    type metadata accessor for EntityExtractor.NamedEntity();
    v53 = swift_dynamicCastClass();
    v467 = v42;
    v54 = v2;
    if (v53)
    {
      v55 = v53;

      v56 = v471;
    }

    else
    {
      v56 = v471;
      if (v1 == 2)
      {
        v57 = *(v38 + 16);
        v58 = *(v38 + 24);
        v55 = swift_allocObject();
        *(v55 + 40) = MEMORY[0x1E69E7CC0];
        *(v55 + 16) = v57;
        *(v55 + 24) = v58;
        v42 = v467;
        *(v55 + 32) = 2;
      }

      else
      {
        v55 = 0;
      }
    }

    *(v2 + 2200) = v55;
    v59 = *(v2 + 2032);
    v60 = *(v59 + 16);
    if (!v60)
    {
LABEL_37:
      if (!v55)
      {
        goto LABEL_40;
      }

      if ((*(v2 + 1352) & 1) == 0)
      {
        v2 = *(v2 + 1952);
        v68 = *(v54 + 1752);
        v69 = v42;
        v70 = *(*(v54 + 1576) + 20);
        v71 = type metadata accessor for NamedEntityData.PhotosPersonData(0);
        v0 = v469;
        (*(*(v71 - 8) + 56))(v68 + v70, 1, 1, v71);
        *v68 = v4;
        v68[1] = v464;
        swift_storeEnumTagMultiPayload();
        v1 = *(v2 + 32);
        v72 = *(v2 + 40);

        v73 = v72;
        sub_19A340970(v68, v56, v69);

        v32 = v449;
        goto LABEL_13;
      }

      v90 = *(v55 + 40);
      if (*(v90 + 16) != 1)
      {

LABEL_67:
        v95 = v469[230];
        v96 = v469[185];
        v97 = v469[184];
        sub_19A33546C(v469[160], v95, &qword_1EAF9FD80);
        v2 = v469;
        if ((*(v96 + 48))(v95, 1, v97) == 1)
        {
          sub_19A2F3FA0(v469[230], &qword_1EAF9FD80);
          goto LABEL_71;
        }

        (*(v469[185] + 32))(v469[187], v469[230], v469[184]);
        if (*(*(v55 + 40) + 16))
        {
          (*(v469[185] + 8))(v469[187], v469[184]);
LABEL_71:
          if (*(*(v55 + 40) + 16))
          {
            goto LABEL_207;
          }

          v98 = v469[255];
          v99 = v469[212];
          v100 = v469[207];
          v101 = v469[197];

          v102 = *(v101 + 20);
          v103 = type metadata accessor for NamedEntityData.PhotosPersonData(0);
          v469[288] = v103;
          v104 = *(v103 - 8);
          v469[289] = v104;
          (*(v104 + 56))(v99 + v102, 1, 1, v103);
          *v99 = v4;
          v99[1] = v464;
          swift_storeEnumTagMultiPayload();

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF9FFB0);
          v105 = (*(v100 + 80) + 32) & ~*(v100 + 80);
          v106 = swift_allocObject();
          v469[290] = v106;
          *(v106 + 16) = xmmword_19A576E10;
          sub_19A3E3C64(v99, v106 + v105, type metadata accessor for Concept);
          v469[142] = v106;

          v31 = v471;
          v107 = sub_19A3DEBC0(v471, v467, v98);
          sub_19A47086C(v107);
          v86 = v469[142];
          v469[291] = v86;
          v108 = *(v86 + 16);
          if (v108 == 1)
          {
            if ((v469[169] & 4) == 0 || (sub_19A3C4F5C(v86) & 1) == 0)
            {
              if (!*(v106 + 16))
              {
                goto LABEL_261;
              }

              v2 = v469;
              v129 = v469[244];
              v130 = v469[219];
              v131 = *(v129 + 40);
              v1 = *(v129 + 24);
              sub_19A3E3C64(v106 + v105, v130, type metadata accessor for Concept);

              v132 = v131;
              v0 = v469;

              sub_19A340970(v130, v471, v467);

              sub_19A3E3E40(v130, type metadata accessor for Concept);
LABEL_125:

              goto LABEL_126;
            }
          }

          else if (!v108)
          {

            v0 = v469;
LABEL_126:

            v4 = v0[272];
            v187 = v0[212];

            sub_19A3E3E40(v187, type metadata accessor for Concept);
            v447 = v0[268];
            goto LABEL_127;
          }

          v2 = v469;
          if (v469[161] != 1)
          {
            v79 = v469[163];
            if (v79)
            {
              goto LABEL_210;
            }
          }

          v122 = *(v469[244] + 40);
          v123 = qword_1EAF9F838;

          v124 = v122;
          if (v123 != -1)
          {
            swift_once();
          }

          v125 = v469[207];
          v126 = v469[206];
          v1 = v469[192];
          v127 = qword_1EAFCA248;
          v469[139] = v86;
          swift_bridgeObjectRetain_n();
          [v124 addAttribute:v127 value:sub_19A57402C() range:{v471, v467}];
          swift_unknownObjectRelease();

          (*(v125 + 56))(v1, 1, 1, v126);
          v128 = (*(v125 + 48))(v469[192], 1, v469[206]);
          v0 = v469;
          if (v128 == 1)
          {
          }

          else
          {
            v148 = v469[271];
            v149 = v469[270];
            v150 = v469[255];
            v151 = swift_task_alloc();
            v471 = v149;
            *(v151 + 16) = v149;
            *(v151 + 24) = v148;
            swift_beginAccess();
            v152 = *(v150 + 16);
            v1 = (v152 + 2);
            v153 = v152[2];
            if (v153)
            {
              v154 = 0;
              v2 = 1;
              v155 = v471;
              while (1)
              {
                v156 = v469[178];
                v157 = (*(v156 + 80) + 32) & ~*(v156 + 80);
                v158 = *(v156 + 72);
                v490.location = v471;
                v490.length = v148;
                if (NSIntersectionRange(*(v152 + v157 + v158 * v154 + *(v469[1416] + 48)), v490).length > 0)
                {
                  break;
                }

                ++v154;
                ++v2;
                if (v153 == v154)
                {
                  v154 = *v1;
                  v153 = *v1;
                  goto LABEL_123;
                }
              }

              v153 = v154 + 1;
              if (__OFADD__(v154, 1))
              {
LABEL_270:
                __break(1u);
LABEL_271:
                __break(1u);
LABEL_272:
                __break(1u);
                goto LABEL_273;
              }

              v186 = *v1;
              if (v153 != *v1)
              {
                v202 = v157 + v158 * v2;
                v467 = v148;
                while (v153 < v186)
                {
                  v2 = v152 + v202;
                  v491.location = v155;
                  v491.length = v148;
                  if (NSIntersectionRange(*(v152 + v202 + *(v469[1416] + 48)), v491).length <= 0)
                  {
                    if (v153 != v154)
                    {
                      if ((v154 & 0x8000000000000000) != 0)
                      {
                        goto LABEL_263;
                      }

                      v204 = *v1;
                      if (v154 >= *v1)
                      {
                        goto LABEL_264;
                      }

                      sub_19A33546C(v152 + v157 + v154 * v158, v469[183], &qword_1EAF9FFE0);
                      if (v153 >= v204)
                      {
                        goto LABEL_265;
                      }

                      sub_19A33546C(v152 + v202, v469[182], &qword_1EAF9FFE0);
                      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                      {
                        v152 = sub_19A32E604(v152);
                      }

                      sub_19A3E3898(v469[182], v152 + v157 + v154 * v158);
                      if (v153 >= v152[2])
                      {
                        goto LABEL_266;
                      }

                      v203 = v469[255];
                      sub_19A3E3898(v469[183], v152 + v202);
                      *(v203 + 16) = v152;
                      v148 = v467;
                      v155 = v471;
                    }

                    ++v154;
                  }

                  ++v153;
                  v1 = (v152 + 2);
                  v186 = v152[2];
                  v202 += v158;
                  if (v153 == v186)
                  {
                    goto LABEL_122;
                  }
                }

LABEL_260:
                __break(1u);
LABEL_261:
                __break(1u);
LABEL_262:
                __break(1u);
LABEL_263:
                __break(1u);
LABEL_264:
                __break(1u);
LABEL_265:
                __break(1u);
LABEL_266:
                __break(1u);
LABEL_267:
                __break(1u);
LABEL_268:
                __break(1u);
                goto LABEL_269;
              }

LABEL_122:
              if (v153 < v154)
              {
                goto LABEL_267;
              }
            }

            else
            {
              v154 = 0;
            }

LABEL_123:
            v0 = v469;
            sub_19A46B010(v154, v153);
            swift_endAccess();
          }

          v464 = v0[274];
          sub_19A2F3FA0(v0[192], &qword_1EAFA10A8);
          goto LABEL_125;
        }

        v133 = v469[265];
        v134 = v469[215];
        v135 = v469[207];
        v461 = v469[255];
        v136 = v469[197];
        v137 = v469[187];
        v138 = v469[185];
        v1 = v469[184];

        v139 = sub_19A41F408(v137, v133);
        v140 = v134 + *(v136 + 20);
        (*(v138 + 16))(v140, v137, v1);
        v141 = type metadata accessor for NamedEntityData.PhotosPersonData(0);
        v469[282] = v141;
        v140[*(v141 + 20)] = 0;
        v140[*(v141 + 24)] = (v139 & 1) == 0;
        v142 = *(v141 - 8);
        v469[283] = v142;
        v2 = v469;
        (*(v142 + 56))(v140, 0, 1, v141);
        *v134 = v4;
        v134[1] = v464;
        swift_storeEnumTagMultiPayload();

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF9FFB0);
        v143 = (*(v135 + 80) + 32) & ~*(v135 + 80);
        v144 = swift_allocObject();
        v469[284] = v144;
        *(v144 + 16) = xmmword_19A576E10;
        sub_19A3E3C64(v134, v144 + v143, type metadata accessor for Concept);
        v469[141] = v144;

        v145 = sub_19A3DEBC0(v471, v467, v461);
        sub_19A47086C(v145);
        v146 = v469[141];
        v469[285] = v146;
        v147 = *(v146 + 16);
        if (v147 == 1)
        {
          if ((v469[169] & 4) == 0 || (sub_19A3C4F5C(v146) & 1) == 0)
          {

            if (!*(v144 + 16))
            {
              goto LABEL_271;
            }

            v188 = v469[219];
            v189 = *(v469[244] + 40);
            sub_19A3E3C64(v144 + v143, v188, type metadata accessor for Concept);

            v190 = v189;

            sub_19A340970(v188, v471, v467);

            v2 = v469;
            sub_19A3E3E40(v188, type metadata accessor for Concept);
            goto LABEL_135;
          }
        }

        else if (!v147)
        {

LABEL_135:

          v4 = *(v2 + 2176);
          v198 = *(v2 + 1720);
          v199 = v469[187];
          v200 = v469[185];
          v201 = v469[184];

          sub_19A3E3E40(v198, type metadata accessor for Concept);
          v0 = v469;
          (*(v200 + 8))(v199, v201);
LABEL_127:
          v5 = v0[269] + 1;
          if (v5 != v0[267])
          {
            goto LABEL_10;
          }

          goto LABEL_2;
        }

        if (v469[161] != 1)
        {
          v179 = v469[163];
          if (v179)
          {
            v351 = *(v469[244] + 40);

            v352 = [v351 string];
            v353 = sub_19A572CFC();
            v355 = v354;

            v469[286] = v355;
            v469[144] = v146;
            v465 = (v179 + *v179);
            v356 = swift_task_alloc();
            v469[287] = v356;
            *v356 = v469;
            v356[1] = sub_19A3D11E0;
            v338 = v469[193];
            v339 = (v469 + 144);
            v340 = v353;
            v341 = v355;
            v342 = v471;
            goto LABEL_211;
          }
        }

        v180 = *(v469[244] + 40);
        v181 = qword_1EAF9F838;

        v182 = v180;
        if (v181 != -1)
        {
          swift_once();
        }

        v183 = v469[207];
        v184 = v469[206];
        v1 = v469[194];
        v185 = qword_1EAFCA248;
        v469[143] = v146;
        swift_bridgeObjectRetain_n();
        [v182 addAttribute:v185 value:sub_19A57402C() range:{v471, v467}];
        swift_unknownObjectRelease();

        (*(v183 + 56))(v1, 1, 1, v184);
        if ((*(v183 + 48))(v469[194], 1, v469[206]) == 1)
        {

          v447 = v469[268];
        }

        else
        {
          v191 = v469[271];
          v192 = v469[270];
          v193 = v469[268];
          v194 = v469[255];
          v195 = swift_task_alloc();
          *(v195 + 16) = v192;
          *(v195 + 24) = v191;
          swift_beginAccess();
          v196 = sub_19A3E3548((v194 + 16), sub_19A3E3908, v195);
          if (v193)
          {
            goto LABEL_218;
          }

          v197 = *(*(v469[255] + 16) + 16);
          if (v197 < v196)
          {
            goto LABEL_272;
          }

          sub_19A46B010(v196, v197);
          swift_endAccess();

          v2 = v469;

          v447 = 0;
        }

        sub_19A2F3FA0(*(v2 + 1552), &qword_1EAFA10A8);
        goto LABEL_135;
      }

      v91 = *(v2 + 1640);
      v92 = *(v2 + 1616);
      v93 = *(*(v2 + 1624) + 80);
      sub_19A3E3C64(v90 + ((v93 + 32) & ~v93), v91, type metadata accessor for EntityExtractor.NamedEntity.EntityData);
      if (*(v91 + *(v92 + 20)))
      {
        v94 = *(v2 + 1640);

        sub_19A3E3E40(v94, type metadata accessor for EntityExtractor.NamedEntity.EntityData);
        goto LABEL_67;
      }

      v109 = *(v2 + 2120);
      v460 = *(v2 + 2040);
      v442 = *(v2 + 1744);
      v455 = *(v2 + 1656);
      v110 = *(v2 + 1640);
      v1 = *(v2 + 1632);
      v441 = *(v2 + 1616);
      v111 = *(v2 + 1608);
      v112 = *(v2 + 1576);
      v113 = *(v2 + 1480);
      v114 = *(v2 + 1472);
      sub_19A3E3C64(v110, v1, type metadata accessor for EntityExtractor.NamedEntity.EntityData);

      LOBYTE(v109) = sub_19A41F408(v110, v109);
      *v111 = v4;
      v111[1] = v464;
      v115 = v111 + *(v112 + 20);
      (*(v113 + 16))(v115, v1, v114);
      LOBYTE(v113) = *(v1 + *(v441 + 20));
      sub_19A3E3E40(v1, type metadata accessor for EntityExtractor.NamedEntity.EntityData);
      v116 = type metadata accessor for NamedEntityData.PhotosPersonData(0);
      *(v2 + 2208) = v116;
      v115[*(v116 + 20)] = v113;
      v115[*(v116 + 24)] = (v109 & 1) == 0;
      v117 = *(v116 - 8);
      *(v2 + 2216) = v117;
      (*(v117 + 56))(v115, 0, 1, v116);
      sub_19A3E3C64(v111, v442, type metadata accessor for NamedEntityData);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF9FFB0);
      v118 = (*(v455 + 80) + 32) & ~*(v455 + 80);
      v119 = swift_allocObject();
      *(v2 + 2224) = v119;
      *(v119 + 16) = xmmword_19A576E10;
      sub_19A3E3C64(v442, v119 + v118, type metadata accessor for Concept);
      *(v2 + 1168) = v119;

      v120 = sub_19A3DEBC0(v471, v467, v460);
      sub_19A47086C(v120);
      v82 = *(v2 + 1168);
      *(v2 + 2232) = v82;
      v121 = *(v82 + 16);
      if (v121 == 1)
      {
        if ((*(v2 + 1352) & 4) == 0 || (sub_19A3C4F5C(v82) & 1) == 0)
        {

          if (!*(v119 + 16))
          {
            goto LABEL_268;
          }

          v166 = v469[219];
          v167 = *(*(v2 + 1952) + 40);
          sub_19A3E3C64(v119 + v118, v166, type metadata accessor for Concept);

          v168 = v167;

          sub_19A340970(v166, v471, v467);

          v2 = v469;
          sub_19A3E3E40(v166, type metadata accessor for Concept);
          goto LABEL_110;
        }
      }

      else if (!v121)
      {

LABEL_110:

        v4 = *(v2 + 2176);
        v176 = *(v2 + 1744);
        v177 = v469[205];
        v178 = v469[201];

        sub_19A3E3E40(v176, type metadata accessor for Concept);
        sub_19A3E3E40(v178, type metadata accessor for NamedEntityData);
        v0 = v469;
        sub_19A3E3E40(v177, type metadata accessor for EntityExtractor.NamedEntity.EntityData);
        goto LABEL_127;
      }

      if (*(v2 + 1288) != 1)
      {
        v79 = *(v2 + 1304);
        if (v79)
        {
LABEL_213:
          v345 = *(*(v2 + 1952) + 40);

          v346 = [v345 string];
          v347 = sub_19A572CFC();
          v349 = v348;

          *(v2 + 2240) = v349;
          *(v2 + 1184) = v82;
          v470 = (v79 + *v79);
          v350 = swift_task_alloc();
          *(v2 + 2248) = v350;
          *v350 = v2;
          v350[1] = sub_19A3CC9EC;
          v338 = *(v2 + 1560);
          v339 = v2 + 1184;
          v340 = v347;
          v341 = v349;
          v344 = v470;
          v342 = v471;
          v343 = v467;
          goto LABEL_214;
        }
      }

      v159 = *(v2 + 1952);

      v160 = *(v159 + 40);
      v161 = qword_1EAF9F838;

      v162 = v160;
      if (v161 != -1)
      {
        swift_once();
      }

      v163 = *(v2 + 1656);
      v164 = *(v2 + 1648);
      v1 = *(v2 + 1568);
      v165 = qword_1EAFCA248;
      *(v2 + 1176) = v82;
      swift_bridgeObjectRetain_n();
      [v162 addAttribute:v165 value:sub_19A57402C() range:{v471, v467}];
      swift_unknownObjectRelease();

      (*(v163 + 56))(v1, 1, 1, v164);
      if ((*(v163 + 48))(*(v2 + 1568), 1, *(v2 + 1648)) == 1)
      {

        v447 = *(v2 + 2144);
      }

      else
      {
        v169 = *(v2 + 2168);
        v170 = *(v2 + 2160);
        v171 = *(v2 + 2144);
        v172 = *(v2 + 2040);
        v173 = swift_task_alloc();
        *(v173 + 16) = v170;
        *(v173 + 24) = v169;
        swift_beginAccess();
        v174 = sub_19A3E3548((v172 + 16), sub_19A3E406C, v173);
        if (v171)
        {
          goto LABEL_218;
        }

        v175 = *(*(*(v2 + 2040) + 16) + 16);
        if (v175 < v174)
        {
LABEL_269:
          __break(1u);
          goto LABEL_270;
        }

        sub_19A46B010(v174, v175);
        swift_endAccess();
        v2 = v469;

        v447 = 0;
      }

      sub_19A2F3FA0(*(v2 + 1568), &qword_1EAFA10A8);
      goto LABEL_110;
    }

    v61 = v56 + v42;
    if (__OFADD__(v56, v42))
    {
      goto LABEL_201;
    }

    if (v61 < v56)
    {
      goto LABEL_202;
    }

    v62 = (v59 + 40);
    while (1)
    {
      v64 = *(v62 - 1);
      v63 = *v62;
      v65 = v64 < v61 && v56 < v63;
      v66 = !v65 || v64 == v63;
      if (!v66 && v56 != v61)
      {
        break;
      }

      v62 += 4;
      if (!--v60)
      {
        goto LABEL_37;
      }
    }

LABEL_40:
    v74 = *(v2 + 2040);
    v75 = v469[244];
    v76 = v469[209];
    *v76 = v4;
    *(v76 + 8) = v464;
    *(v76 + 16) = v1;
    swift_storeEnumTagMultiPayload();
    v77 = *(v75 + 40);
    v0 = v469;

    v78 = v77;
    v79 = v467;
    sub_19A340970(v76, v56, v467);

    v80 = swift_task_alloc();
    *(v80 + 16) = v56;
    *(v80 + 24) = v467;
    swift_beginAccess();
    v2 = *(v74 + 16);
    v4 = v2 + 16;
    v81 = *(v2 + 16);
    if (v81)
    {
      break;
    }

    v30 = 0;
    v31 = 0;
LABEL_12:
    sub_19A46B010(v30, v31);
    swift_endAccess();

    v32 = v452;
LABEL_13:
    v5 = v459 + 1;
    v4 = v0[267];
    sub_19A3E3E40(*v32, type metadata accessor for Concept);
    if (v459 + 1 == v4)
    {
      goto LABEL_2;
    }
  }

  v464 = v80;
  v30 = 0;
  v82 = 1;
  while (1)
  {
    v83 = v469[178];
    v84 = (*(v83 + 80) + 32) & ~*(v83 + 80);
    v1 = *(v83 + 72);
    v488.location = v56;
    v488.length = v467;
    if (NSIntersectionRange(*(v2 + v84 + v1 * v30 + *(v469[1416] + 48)), v488).length > 0)
    {
      break;
    }

    ++v30;
    ++v82;
    if (v81 == v30)
    {
      v30 = *v4;
      v31 = *v4;
      goto LABEL_12;
    }
  }

  v31 = v30 + 1;
  if (__OFADD__(v30, 1))
  {
    __break(1u);
    goto LABEL_213;
  }

  v85 = *v4;
  if (v31 == *v4)
  {
LABEL_47:
    v86 = v464;
    if (v31 < v30)
    {
      __break(1u);
LABEL_210:
      v332 = *(*(v2 + 1952) + 40);

      v333 = [v332 string];
      v334 = sub_19A572CFC();
      v336 = v335;

      *(v2 + 2336) = v336;
      *(v2 + 1120) = v86;
      v465 = (v79 + *v79);
      v337 = swift_task_alloc();
      *(v2 + 2344) = v337;
      *v337 = v2;
      v337[1] = sub_19A3D59D4;
      v338 = *(v2 + 1528);
      v339 = v2 + 1120;
      v340 = v334;
      v341 = v336;
      v342 = v31;
LABEL_211:
      v344 = v465;
      v343 = v467;
LABEL_214:

      v344(v338, v340, v341, v342, v343, v339);
      return;
    }

    goto LABEL_12;
  }

  v87 = v84 + v1 * v82;
  while (v31 < v85)
  {
    v489.location = v471;
    v489.length = v79;
    if (NSIntersectionRange(*(v2 + v87 + *(v0[1416] + 48)), v489).length <= 0)
    {
      if (v31 != v30)
      {
        if ((v30 & 0x8000000000000000) != 0)
        {
          goto LABEL_203;
        }

        v89 = *v4;
        if (v30 >= *v4)
        {
          goto LABEL_204;
        }

        v0 = v469;
        v4 = v30 * v1;
        sub_19A33546C(v2 + v84 + v30 * v1, v469[181], &qword_1EAF9FFE0);
        if (v31 >= v89)
        {
          goto LABEL_205;
        }

        sub_19A33546C(v2 + v87, v469[180], &qword_1EAF9FFE0);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v2 = sub_19A32E604(v2);
        }

        v79 = v467;
        sub_19A3E3898(v469[180], v2 + v84 + v4);
        if (v31 >= *(v2 + 16))
        {
          goto LABEL_206;
        }

        v88 = v469[255];
        sub_19A3E3898(v469[181], v2 + v87);
        *(v88 + 16) = v2;
      }

      ++v30;
    }

    ++v31;
    v4 = v2 + 16;
    v85 = *(v2 + 16);
    v87 += v1;
    if (v31 == v85)
    {
      goto LABEL_47;
    }
  }

  __break(1u);
LABEL_195:
  v305 = v475;
  v306 = swift_isUniquelyReferenced_nonNull_native();
  v476 = v445;
  sub_19A33D400(v305, 0xD000000000000010, 0x800000019A5989F0, v306);
  v445 = v476;
  __swift_destroy_boxed_opaque_existential_0Tm(v1 + 424);
  v447 = 0;
  v206 = v1;
  if ((*(v1 + 1352) & 2) == 0)
  {
    goto LABEL_166;
  }

LABEL_196:

  v307 = sub_19A5723DC();
  v308 = v206;
  v309 = sub_19A57355C();
  if (os_log_type_enabled(v307, v309))
  {
    v310 = swift_slowAlloc();
    v311 = swift_slowAlloc();
    v476 = v311;
    *v310 = 136380675;
    swift_beginAccess();

    v313 = sub_19A3E51D0(v312);
    v315 = v314;

    v316 = sub_19A31F114(v313, v315, &v476);

    *(v310 + 4) = v316;
    _os_log_impl(&dword_19A2DE000, v307, v309, "Disallowed concepts: %{private}s", v310, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v311);
    MEMORY[0x19A902C50](v311, -1, -1);
    MEMORY[0x19A902C50](v310, -1, -1);
  }

  swift_beginAccess();

  v318 = sub_19A3C3960(v317, sub_19A31EFC8, type metadata accessor for Concept, sub_19A32F034);
  sub_19A3B8774();
  swift_allocError();
  *v319 = v318;
  *(v319 + 8) = 3;
  swift_willThrow();

  v1 = v308;
LABEL_191:

  v301 = *(v1 + 1896);
  v302 = *(v1 + 1880);
  v303 = *(v1 + 1872);
  sub_19A3DF010("validateText", 12, 2);

  (*(v302 + 8))(v301, v303);

  v304 = *(v1 + 8);

  v304();
}

uint64_t sub_19A3DE6C8()
{
  sub_19A3DF010("scrubText", 9, 2);

  v1 = v0[237];
  v2 = v0[235];
  v3 = v0[234];
  sub_19A3DF010("validateText", 12, 2);

  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_19A3DEA44(uint64_t a1, uint64_t a2, uint64_t a3, void **a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF9FFE0);
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8 - 8);
  v12 = &v19 - v11;
  v13 = (&v19 + *(v10 + 56) - v11);
  sub_19A3E3C64(a1, &v19 - v11, type metadata accessor for Concept);
  *v13 = a2;
  v13[1] = a3;
  v14 = *a4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a4 = v14;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v14 = sub_19A31E384(0, v14[2] + 1, 1, v14);
    *a4 = v14;
  }

  v17 = v14[2];
  v16 = v14[3];
  if (v17 >= v16 >> 1)
  {
    v14 = sub_19A31E384(v16 > 1, v17 + 1, 1, v14);
    *a4 = v14;
  }

  v14[2] = v17 + 1;
  return sub_19A3E3EC4(v12, v14 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v17);
}

size_t sub_19A3DEBC0(NSUInteger a1, NSUInteger a2, uint64_t a3)
{
  v35 = a2;
  v40 = a1;
  v4 = type metadata accessor for Concept(0);
  v37 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF9FFE0);
  v41 = *(v39 - 8);
  v7 = MEMORY[0x1EEE9AC00](v39);
  v33 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v32 - v10;
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v32 - v12;
  swift_beginAccess();
  v14 = *(a3 + 16);
  v15 = *(v14 + 16);

  v17 = MEMORY[0x1E69E7CC0];
  v38 = v15;
  v34 = v6;
  if (v15)
  {
    v18 = 0;
    v19 = v35;
    v36 = v11;
    while (v18 < *(v14 + 16))
    {
      v20 = (*(v41 + 80) + 32) & ~*(v41 + 80);
      v21 = *(v41 + 72);
      sub_19A33546C(v14 + v20 + v21 * v18, v13, &qword_1EAF9FFE0);
      v43.location = v40;
      v43.length = v19;
      if (NSIntersectionRange(*(v13 + *(v39 + 48)), v43).length < 1)
      {
        result = sub_19A2F3FA0(v13, &qword_1EAF9FFE0);
      }

      else
      {
        sub_19A3E3EC4(v13, v11);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v42 = v17;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_19A322820(0, *(v17 + 16) + 1, 1);
          v19 = v35;
          v17 = v42;
        }

        v24 = *(v17 + 16);
        v23 = *(v17 + 24);
        if (v24 >= v23 >> 1)
        {
          sub_19A322820(v23 > 1, v24 + 1, 1);
          v19 = v35;
          v17 = v42;
        }

        *(v17 + 16) = v24 + 1;
        v11 = v36;
        result = sub_19A3E3EC4(v36, v17 + v20 + v24 * v21);
      }

      if (v38 == ++v18)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
    goto LABEL_22;
  }

LABEL_12:

  v25 = *(v17 + 16);
  if (v25)
  {
    v42 = MEMORY[0x1E69E7CC0];
    result = sub_19A322740(0, v25, 0);
    v26 = 0;
    v27 = v42;
    v40 = v17 + ((*(v41 + 80) + 32) & ~*(v41 + 80));
    v29 = v33;
    v28 = v34;
    while (v26 < *(v17 + 16))
    {
      sub_19A33546C(v40 + *(v41 + 72) * v26, v29, &qword_1EAF9FFE0);
      sub_19A3E3C64(v29, v28, type metadata accessor for Concept);
      sub_19A2F3FA0(v29, &qword_1EAF9FFE0);
      v42 = v27;
      v31 = *(v27 + 16);
      v30 = *(v27 + 24);
      if (v31 >= v30 >> 1)
      {
        sub_19A322740(v30 > 1, v31 + 1, 1);
        v27 = v42;
      }

      ++v26;
      *(v27 + 16) = v31 + 1;
      result = sub_19A3E3DD8(v28, v27 + ((*(v37 + 80) + 32) & ~*(v37 + 80)) + *(v37 + 72) * v31, type metadata accessor for Concept);
      if (v25 == v26)
      {

        return v27;
      }
    }

LABEL_22:
    __break(1u);
    return result;
  }

  return MEMORY[0x1E69E7CC0];
}

uint64_t sub_19A3DF010(const char *a1, uint64_t a2, char a3)
{
  if (qword_1ED824BA8 != -1)
  {
    swift_once();
  }

  v5 = sub_19A57236C();
  __swift_project_value_buffer(v5, qword_1ED82BD30);
  v6 = sub_19A57234C();
  v7 = sub_19A57231C();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v21[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_19A57239C();
  v11 = sub_19A57360C();
  result = sub_19A57376C();
  if ((result & 1) == 0)
  {
    goto LABEL_16;
  }

  v22 = v11;
  if ((a3 & 1) == 0)
  {
    if (a1)
    {
      goto LABEL_11;
    }

    __break(1u);
  }

  if (a1 >> 32)
  {
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if ((a1 & 0xFFFFF800) != 0xD800)
  {
    if (a1 >> 16 <= 0x10)
    {
      a1 = &v23;
LABEL_11:
      v13 = sub_19A57237C();
      v14 = *(v13 - 8);
      MEMORY[0x1EEE9AC00](v13);
      v16 = &v21[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];

      sub_19A5723CC();

      v17 = (*(v14 + 88))(v16, v13);
      if (MEMORY[0x1E69E93E0] && v17 == *MEMORY[0x1E69E93E0])
      {
        v18 = "[Error] Interval already ended";
      }

      else
      {
        (*(v14 + 8))(v16, v13);
        v18 = "";
      }

      v19 = swift_slowAlloc();
      *v19 = 0;
      v20 = sub_19A5722FC();
      _os_signpost_emit_with_name_impl(&dword_19A2DE000, v6, v22, v20, a1, v18, v19, 2u);
      MEMORY[0x19A902C50](v19, -1, -1);
LABEL_16:

      return (*(v8 + 8))(v10, v7);
    }

    goto LABEL_18;
  }

LABEL_19:
  __break(1u);
  return result;
}

uint64_t sub_19A3DF2F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 288) = v17;
  *(v8 + 296) = v18;
  *(v8 + 442) = v16;
  *(v8 + 441) = v15;
  *(v8 + 256) = v13;
  *(v8 + 272) = v14;
  *(v8 + 240) = a6;
  *(v8 + 248) = a8;
  *(v8 + 440) = a5;
  *(v8 + 224) = a3;
  *(v8 + 232) = a4;
  *(v8 + 208) = a1;
  *(v8 + 216) = a2;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF9FFE0);
  *(v8 + 304) = v9;
  *(v8 + 312) = *(v9 - 8);
  *(v8 + 320) = swift_task_alloc();
  *(v8 + 328) = swift_task_alloc();
  type metadata accessor for NamedEntityData.NamedEntityType(0);
  *(v8 + 336) = swift_task_alloc();
  *(v8 + 344) = type metadata accessor for NamedEntityData(0);
  *(v8 + 352) = swift_task_alloc();
  v10 = type metadata accessor for Concept(0);
  *(v8 + 360) = v10;
  *(v8 + 368) = *(v10 - 8);
  *(v8 + 376) = swift_task_alloc();
  *(v8 + 384) = swift_task_alloc();
  *(v8 + 392) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA10A8);
  *(v8 + 400) = swift_task_alloc();
  *(v8 + 408) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_19A3DF514, 0, 0);
}

uint64_t sub_19A3DF514()
{
  *(v0 + 184) = *(v0 + 208);
  v3 = *(v0 + 224);
  v2 = *(v0 + 232);
  v4 = *(v0 + 216);

  v5 = sub_19A3DEBC0(v4, v3, v2);
  sub_19A47086C(v5);
  v6 = *(v0 + 184);
  *(v0 + 416) = v6;
  v7 = *(v6 + 16);
  if (!v7)
  {
    goto LABEL_23;
  }

  if (v7 == 1 && (*(v0 + 440) != 1 || (sub_19A3C4F5C(v6) & 1) == 0))
  {
    v20 = *(v0 + 208);
    swift_beginAccess();
    if (*(v20 + 16))
    {
      v21 = *(v0 + 376);
      v23 = *(v0 + 216);
      v22 = *(v0 + 224);
      v24 = *(*(v0 + 264) + 40);
      v25 = *(*(v0 + 368) + 80);
      sub_19A3E3C64(*(v0 + 208) + ((v25 + 32) & ~v25), v21, type metadata accessor for Concept);

      v26 = v24;
      sub_19A340970(v21, v23, v22);

      sub_19A3E3E40(v21, type metadata accessor for Concept);
      goto LABEL_23;
    }

LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  if (*(v0 + 240) != 1)
  {
    v8 = *(v0 + 248);
    if (v8)
    {
      v9 = *(v0 + 264);
      swift_beginAccess();
      v10 = *(v9 + 40);

      v11 = [v10 string];
      v12 = sub_19A572CFC();
      v14 = v13;

      *(v0 + 424) = v14;
      *(v0 + 200) = v6;
      v56 = (v8 + *v8);
      v15 = swift_task_alloc();
      *(v0 + 432) = v15;
      *v15 = v0;
      v15[1] = sub_19A3DFBE4;
      v16 = *(v0 + 400);
      v17 = *(v0 + 272);
      v18 = *(v0 + 280);

      return v56(v16, v12, v14, v17, v18, v0 + 200);
    }
  }

  v27 = *(v0 + 264);
  swift_beginAccess();
  v28 = *(v27 + 40);
  v29 = qword_1EAF9F838;

  v1 = v28;
  if (v29 != -1)
  {
LABEL_45:
    swift_once();
  }

  v30 = *(v0 + 368);
  range2a = *(v0 + 408);
  range2_8 = *(v0 + 360);
  v32 = *(v0 + 272);
  v31 = *(v0 + 280);
  v33 = qword_1EAFCA248;
  *(v0 + 192) = v6;
  swift_bridgeObjectRetain_n();
  [v1 addAttribute:v33 value:sub_19A57402C() range:{v32, v31}];
  swift_unknownObjectRelease();

  (*(v30 + 56))(range2a, 1, 1, range2_8);
  v34 = *(v0 + 408);
  if ((*(v30 + 48))(v34, 1, *(v0 + 360)) == 1)
  {
LABEL_22:
    sub_19A2F3FA0(v34, &qword_1EAFA10A8);
LABEL_23:

    v46 = *(v0 + 8);

    return v46();
  }

  v35 = *(v0 + 312);
  v57 = *(v0 + 304);
  v36 = *(v0 + 224);
  v37 = *(v0 + 232);
  v38 = *(v0 + 216);
  v39 = swift_task_alloc();
  range2.location = v38;
  range2.length = v36;
  *(v39 + 16) = v38;
  *(v39 + 24) = v36;
  swift_beginAccess();
  v6 = *(v37 + 16);
  v40 = (v6 + 16);
  v41 = *(v6 + 16);
  if (!v41)
  {
    v42 = 0;
LABEL_21:
    sub_19A46B010(v42, v41);
    swift_endAccess();

    v34 = *(v0 + 408);
    goto LABEL_22;
  }

  v42 = 0;
  v43 = ((*(v35 + 80) + 32) & ~*(v35 + 80));
  v44 = *(v35 + 72);
  v52 = v43;
  while (1)
  {
    v45 = NSIntersectionRange(*(v43 + v6 + *(v57 + 48)), range2);
    result = v45.location;
    if (v45.length > 0)
    {
      break;
    }

    ++v42;
    v43 = (v43 + v44);
    if (v41 == v42)
    {
      v42 = *v40;
      v41 = *v40;
      goto LABEL_21;
    }
  }

  v41 = v42 + 1;
  if (__OFADD__(v42, 1))
  {
    goto LABEL_50;
  }

  v47 = *v40;
  if (v41 != *v40)
  {
    goto LABEL_30;
  }

LABEL_28:
  if (v41 >= v42)
  {
    goto LABEL_21;
  }

  __break(1u);
LABEL_30:
  v48 = v43 + v44;
  v43 = &qword_1EAF9FFE0;
  v51 = v37;
  while (1)
  {
    if (v41 >= v47)
    {
      __break(1u);
      goto LABEL_44;
    }

    v1 = &v48[v6];
    v49 = NSIntersectionRange(*&v48[v6 + *(v57 + 48)], range2);
    result = v49.location;
    if (v49.length <= 0)
    {
      break;
    }

LABEL_32:
    ++v41;
    v40 = (v6 + 16);
    v47 = *(v6 + 16);
    v48 += v44;
    if (v41 == v47)
    {
      goto LABEL_28;
    }
  }

  if (v41 == v42)
  {
LABEL_31:
    ++v42;
    goto LABEL_32;
  }

  if ((v42 & 0x8000000000000000) == 0)
  {
    v50 = *v40;
    if (v42 >= *v40)
    {
      goto LABEL_47;
    }

    result = sub_19A33546C(v52 + v6 + v42 * v44, *(v0 + 328), &qword_1EAF9FFE0);
    if (v41 >= v50)
    {
      goto LABEL_48;
    }

    sub_19A33546C(&v48[v6], *(v0 + 320), &qword_1EAF9FFE0);
    v37 = v51;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v6 = sub_19A32E604(v6);
    }

    result = sub_19A3E3898(*(v0 + 320), v52 + v6 + v42 * v44);
    if (v41 >= *(v6 + 16))
    {
      goto LABEL_49;
    }

    sub_19A3E3898(*(v0 + 328), &v48[v6]);
    *(v51 + 16) = v6;
    goto LABEL_31;
  }

  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  __break(1u);
LABEL_49:
  __break(1u);
LABEL_50:
  __break(1u);
  return result;
}

uint64_t sub_19A3DFBE4()
{

  return MEMORY[0x1EEE6DFA0](sub_19A3DFCFC, 0, 0);
}

uint64_t sub_19A3DFCFC()
{
  v1 = *(v0 + 400);
  v2 = *(v0 + 360);
  v3 = *(v0 + 368);
  v4 = *(v3 + 48);
  if (v4(v1, 1, v2) == 1)
  {
    v5 = *(v0 + 408);
    sub_19A2E0A60(*(v0 + 248));
    sub_19A2F3FA0(v1, &qword_1EAFA10A8);
    (*(v3 + 56))(v5, 1, 1, v2);
    goto LABEL_14;
  }

  v7 = *(v0 + 384);
  v6 = *(v0 + 392);
  sub_19A3E3DD8(v1, v6, type metadata accessor for Concept);
  sub_19A3E3C64(v6, v7, type metadata accessor for Concept);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v9 = *(v0 + 384);
  v68 = v4;
  if (EnumCaseMultiPayload == 4)
  {
    v11 = *(v0 + 344);
    v10 = *(v0 + 352);
    v12 = *(v0 + 336);
    sub_19A3E3DD8(v9, v10, type metadata accessor for NamedEntityData);
    sub_19A3E3C64(v10 + *(v11 + 20), v12, type metadata accessor for NamedEntityData.NamedEntityType);
    v13 = type metadata accessor for NamedEntityData.PhotosPersonData(0);
    if ((*(*(v13 - 8) + 48))(v12, 1, v13) != 1)
    {
      v34 = *(v0 + 392);
      range2_8 = *(v0 + 352);
      v36 = *(v0 + 272);
      v35 = *(v0 + 280);
      v37 = *(v0 + 264);
      v38 = *(v0 + 248);
      sub_19A3E3E40(*(v0 + 336), type metadata accessor for NamedEntityData.NamedEntityType);
      swift_beginAccess();
      v39 = *(v37 + 40);

      v40 = v39;
      sub_19A340970(v34, v36, v35);
      sub_19A2E0A60(v38);

      v25 = type metadata accessor for NamedEntityData;
      v26 = range2_8;
      goto LABEL_12;
    }

    v14 = *(v0 + 336);
    sub_19A3E3E40(*(v0 + 352), type metadata accessor for NamedEntityData);
    v15 = type metadata accessor for NamedEntityData.NamedEntityType;
    v9 = v14;
  }

  else
  {
    v15 = type metadata accessor for Concept;
  }

  sub_19A3E3E40(v9, v15);
  v16 = *(v0 + 441);
  if (v16 != 3 && (*(v0 + 442) & 1) == 0)
  {
    v17 = *(v0 + 376);
    v18 = *(v0 + 296);
    v20 = *(v0 + 272);
    v19 = *(v0 + 280);
    v21 = *(v0 + 264);
    v22 = *(v0 + 248);
    *v17 = *(v0 + 288);
    *(v17 + 8) = v18;
    *(v17 + 16) = v16;
    swift_storeEnumTagMultiPayload();
    swift_beginAccess();
    v23 = *(v21 + 40);

    v24 = v23;
    sub_19A340970(v17, v20, v19);
    sub_19A2E0A60(v22);

    v25 = type metadata accessor for Concept;
    v26 = v17;
LABEL_12:
    sub_19A3E3E40(v26, v25);
    goto LABEL_13;
  }

  v27 = *(v0 + 392);
  v29 = *(v0 + 272);
  v28 = *(v0 + 280);
  v30 = *(v0 + 264);
  v31 = *(v0 + 248);
  swift_beginAccess();
  v32 = *(v30 + 40);

  v33 = v32;
  sub_19A340970(v27, v29, v28);
  sub_19A2E0A60(v31);

LABEL_13:
  v41 = *(v0 + 408);
  v42 = *(v0 + 360);
  v43 = *(v0 + 368);
  sub_19A3E3DD8(*(v0 + 392), v41, type metadata accessor for Concept);
  (*(v43 + 56))(v41, 0, 1, v42);
  v4 = v68;
LABEL_14:
  v44 = *(v0 + 408);
  if (v4(v44, 1, *(v0 + 360)) != 1)
  {
    v45 = *(v0 + 312);
    v69 = *(v0 + 304);
    v47 = *(v0 + 224);
    v46 = *(v0 + 232);
    v48 = *(v0 + 216);
    v49 = swift_task_alloc();
    *(v49 + 16) = v48;
    *(v49 + 24) = v47;
    range2.length = v47;
    swift_beginAccess();
    v50 = *(v46 + 16);
    v51 = v50 + 2;
    v52 = v50[2];
    if (v52)
    {
      v64 = v49;
      v53 = 0;
      v54 = (*(v45 + 80) + 32) & ~*(v45 + 80);
      v55 = *(v45 + 72);
      v65 = v54;
      while (1)
      {
        v71.length = range2.length;
        v71.location = v48;
        v57 = NSIntersectionRange(*(v50 + v54 + *(v69 + 48)), v71);
        result = v57.location;
        if (v57.length > 0)
        {
          break;
        }

        ++v53;
        v54 += v55;
        if (v52 == v53)
        {
          v53 = *v51;
          v52 = *v51;
          goto LABEL_21;
        }
      }

      v52 = v53 + 1;
      if (__OFADD__(v53, 1))
      {
        goto LABEL_47;
      }

      v59 = *v51;
      if (v52 != *v51)
      {
LABEL_29:
        range2.location = v48;
        v60 = v55 + v54;
        v63 = v46;
        while (v52 < v59)
        {
          v48 = v50 + v60;
          v61 = NSIntersectionRange(*(v50 + v60 + *(v69 + 48)), range2);
          result = v61.location;
          if (v61.length <= 0)
          {
            if (v52 != v53)
            {
              if ((v53 & 0x8000000000000000) != 0)
              {
                goto LABEL_43;
              }

              v62 = *v51;
              if (v53 >= *v51)
              {
                goto LABEL_44;
              }

              result = sub_19A33546C(v50 + v65 + v53 * v55, *(v0 + 328), &qword_1EAF9FFE0);
              if (v52 >= v62)
              {
                goto LABEL_45;
              }

              sub_19A33546C(v50 + v60, *(v0 + 320), &qword_1EAF9FFE0);
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v50 = sub_19A32E604(v50);
              }

              v46 = v63;
              result = sub_19A3E3898(*(v0 + 320), v50 + v65 + v53 * v55);
              if (v52 >= v50[2])
              {
                goto LABEL_46;
              }

              result = sub_19A3E3898(*(v0 + 328), v50 + v60);
              *(v63 + 16) = v50;
            }

            ++v53;
          }

          ++v52;
          v51 = v50 + 2;
          v59 = v50[2];
          v60 += v55;
          if (v52 == v59)
          {
            goto LABEL_27;
          }
        }

        __break(1u);
LABEL_43:
        __break(1u);
LABEL_44:
        __break(1u);
LABEL_45:
        __break(1u);
LABEL_46:
        __break(1u);
LABEL_47:
        __break(1u);
        return result;
      }

LABEL_27:
      v54 = v64;
      if (v52 < v53)
      {
        __break(1u);
        goto LABEL_29;
      }
    }

    else
    {
      v53 = 0;
    }

LABEL_21:
    sub_19A46B010(v53, v52);
    swift_endAccess();

    v44 = *(v0 + 408);
  }

  sub_19A2F3FA0(v44, &qword_1EAFA10A8);

  v58 = *(v0 + 8);

  return v58();
}

void sub_19A3E0448(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char **a5, uint64_t a6)
{
  sub_19A33546C(a1, v21, &qword_1EAFA0228);
  if (v22)
  {
    if (swift_dynamicCast())
    {
      v9 = *a5;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *a5 = v9;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v9 = sub_19A31E6D8(0, *(v9 + 2) + 1, 1, v9);
        *a5 = v9;
      }

      v12 = *(v9 + 2);
      v11 = *(v9 + 3);
      if (v12 >= v11 >> 1)
      {
        v9 = sub_19A31E6D8((v11 > 1), v12 + 1, 1, v9);
        *a5 = v9;
      }

      *(v9 + 2) = v12 + 1;
      *&v9[8 * v12 + 32] = v20;
      return;
    }
  }

  else
  {
    sub_19A2F3FA0(v21, &qword_1EAFA0228);
  }

  if (*(a1 + 24))
  {
    if (qword_1ED824050 != -1)
    {
      swift_once();
    }

    v13 = sub_19A5723FC();
    __swift_project_value_buffer(v13, qword_1ED82BCF0);

    v14 = sub_19A5723DC();
    v15 = sub_19A57355C();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      *v16 = 138477827;
      swift_beginAccess();
      v18 = *(a6 + 40);
      *(v16 + 4) = v18;
      *v17 = v18;
      v19 = v18;
      _os_log_impl(&dword_19A2DE000, v14, v15, "There should not be a non-Ambiguity type object associated with an Ambiguity Key in the NSAttributedString: %{private}@", v16, 0xCu);
      sub_19A2F3FA0(v17, &qword_1EAF9FD28);
      MEMORY[0x19A902C50](v17, -1, -1);
      MEMORY[0x19A902C50](v16, -1, -1);
    }
  }
}

void sub_19A3E0698(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = type metadata accessor for Concept(0);
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v37 = v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = v36 - v13;
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = v36 - v16;
  MEMORY[0x1EEE9AC00](v15);
  v19 = v36 - v18;
  sub_19A33546C(a1, v39, &qword_1EAFA0228);
  if (!v40)
  {
    sub_19A2F3FA0(v39, &qword_1EAFA0228);
LABEL_11:
    if (*(a1 + 24))
    {
      if (qword_1ED824050 != -1)
      {
        swift_once();
      }

      v29 = sub_19A5723FC();
      __swift_project_value_buffer(v29, qword_1ED82BCF0);

      v30 = sub_19A5723DC();
      v31 = sub_19A57355C();

      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        v33 = swift_slowAlloc();
        *v32 = 138477827;
        swift_beginAccess();
        v34 = *(a6 + 40);
        *(v32 + 4) = v34;
        *v33 = v34;
        v35 = v34;
        _os_log_impl(&dword_19A2DE000, v30, v31, "There should not be a non-[Concept] type object associated with a Concepts Key in the NSAttributedString: %{private}@", v32, 0xCu);
        sub_19A2F3FA0(v33, &qword_1EAF9FD28);
        MEMORY[0x19A902C50](v33, -1, -1);
        MEMORY[0x19A902C50](v32, -1, -1);
      }
    }

    return;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA0318);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_11;
  }

  v20 = *(v38 + 16);
  if (v20)
  {
    v21 = *(v9 + 80);
    v36[1] = v38;
    v22 = v38 + ((v21 + 32) & ~v21);
    v23 = *(v9 + 72);
    do
    {
      sub_19A3E3C64(v22, v19, type metadata accessor for Concept);
      sub_19A3E3C64(v19, v17, type metadata accessor for Concept);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v25 = v19;
      v26 = v17;
      if (EnumCaseMultiPayload == 3)
      {
        v27 = v17[16];

        v26 = v19;
        if (v27 == 3)
        {
          goto LABEL_6;
        }

        v28 = v37;
        sub_19A3E3C64(v19, v37, type metadata accessor for Concept);
        sub_19A32314C(v14, v28);
        v25 = v14;
        v26 = v19;
      }

      sub_19A3E3E40(v25, type metadata accessor for Concept);
LABEL_6:
      sub_19A3E3E40(v26, type metadata accessor for Concept);
      v22 += v23;
      --v20;
    }

    while (v20);
  }
}

uint64_t sub_19A3E0A84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v9 = type metadata accessor for Concept(0);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_19A33546C(a1, v22, &qword_1EAFA0228);
  if (!v23)
  {
    return sub_19A2F3FA0(v22, &qword_1EAFA0228);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA0318);
  result = swift_dynamicCast();
  if (result)
  {
    v14 = v21;
    v15 = *(v21 + 16);
    if (v15)
    {
      v16 = 0;
      while (1)
      {
        if (v16 >= *(v14 + 16))
        {
          __break(1u);
          goto LABEL_16;
        }

        sub_19A3E3C64(v14 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v16, v12, type metadata accessor for Concept);
        if (swift_getEnumCaseMultiPayload() == 4)
        {
          break;
        }

        ++v16;
        sub_19A3E3E40(v12, type metadata accessor for Concept);
        if (v15 == v16)
        {
        }
      }

      sub_19A3E3E40(v12, type metadata accessor for Concept);
      v9 = *a5;
      result = swift_isUniquelyReferenced_nonNull_native();
      *a5 = v9;
      if (result)
      {
        goto LABEL_11;
      }

LABEL_16:
      result = sub_19A31E05C(0, *(v9 + 16) + 1, 1, v9);
      v9 = result;
      *a5 = result;
LABEL_11:
      v18 = *(v9 + 16);
      v17 = *(v9 + 24);
      if (v18 >= v17 >> 1)
      {
        result = sub_19A31E05C((v17 > 1), v18 + 1, 1, v9);
        v9 = result;
        *a5 = result;
      }

      *(v9 + 16) = v18 + 1;
      v19 = v9 + 16 * v18;
      *(v19 + 32) = a2;
      *(v19 + 40) = a3;
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_19A3E0D00(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4, uint64_t a5, uint64_t a6)
{
  v10 = type metadata accessor for NamedEntityData.NamedEntityType(0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = type metadata accessor for NamedEntityData.PhotosPersonData(0);
  v33 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v14 = v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for Concept(0);
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = v30 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = type metadata accessor for NamedEntityData(0);
  MEMORY[0x1EEE9AC00](v34);
  v20 = v30 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_19A33546C(a1, v37, &qword_1EAFA0228);
  if (!v38)
  {
    return sub_19A2F3FA0(v37, &qword_1EAFA0228);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA0318);
  result = swift_dynamicCast();
  if (result)
  {
    v32 = v14;
    v22 = v36;
    v23 = *(v36 + 16);
    if (!v23)
    {
    }

    v30[0] = a6;
    v30[1] = a5;
    v31 = a4;
    v24 = 0;
    v25 = v36 + ((*(v16 + 80) + 32) & ~*(v16 + 80));
    v26 = (v33 + 48);
    while (1)
    {
      if (v24 >= *(v22 + 16))
      {
        __break(1u);
        return result;
      }

      sub_19A3E3C64(v25 + *(v16 + 72) * v24, v18, type metadata accessor for Concept);
      if (swift_getEnumCaseMultiPayload() == 4)
      {
        sub_19A3E3DD8(v18, v20, type metadata accessor for NamedEntityData);
        sub_19A3E3C64(&v20[*(v34 + 20)], v12, type metadata accessor for NamedEntityData.NamedEntityType);
        if ((*v26)(v12, 1, v35) != 1)
        {

          v29 = v32;
          sub_19A3E3DD8(v12, v32, type metadata accessor for NamedEntityData.PhotosPersonData);
          if (sub_19A570FFC())
          {
            *v30[0] = 0;
          }

          *v31 = 1;
          sub_19A3E3E40(v29, type metadata accessor for NamedEntityData.PhotosPersonData);
          return sub_19A3E3E40(v20, type metadata accessor for NamedEntityData);
        }

        sub_19A3E3E40(v20, type metadata accessor for NamedEntityData);
        v27 = type metadata accessor for NamedEntityData.NamedEntityType;
        v28 = v12;
      }

      else
      {
        v27 = type metadata accessor for Concept;
        v28 = v18;
      }

      result = sub_19A3E3E40(v28, v27);
      if (v23 == ++v24)
      {
      }
    }
  }

  return result;
}

uint64_t sub_19A3E112C(void *a1, void (*a2)(_BYTE *), uint64_t a3, const char *a4, uint64_t a5, char a6)
{
  swift_beginAccess();
  v10 = a1[1];
  if (v10)
  {
    v11 = a2 == 0;
  }

  else
  {
    v11 = 1;
  }

  if (!v11)
  {
    v30[0] = *a1;
    v31 = v10;

    a2(v30);
  }

  if (qword_1ED824BA8 != -1)
  {
    swift_once();
  }

  v12 = sub_19A57236C();
  __swift_project_value_buffer(v12, qword_1ED82BD30);
  v13 = sub_19A57234C();
  v14 = sub_19A57231C();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v28[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_19A57239C();
  v18 = sub_19A57360C();
  result = sub_19A57376C();
  if ((result & 1) == 0)
  {
    goto LABEL_21;
  }

  v29 = v18;
  if ((a6 & 1) == 0)
  {
    if (a4)
    {
      goto LABEL_16;
    }

    __break(1u);
  }

  if (a4 >> 32)
  {
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if ((a4 & 0xFFFFF800) != 0xD800)
  {
    if (a4 >> 16 <= 0x10)
    {
      a4 = &v32;
LABEL_16:
      v20 = sub_19A57237C();
      v21 = *(v20 - 8);
      MEMORY[0x1EEE9AC00](v20);
      v23 = &v28[-((v22 + 15) & 0xFFFFFFFFFFFFFFF0)];

      sub_19A5723CC();

      v24 = (*(v21 + 88))(v23, v20);
      if (MEMORY[0x1E69E93E0] && v24 == *MEMORY[0x1E69E93E0])
      {
        v25 = "[Error] Interval already ended";
      }

      else
      {
        (*(v21 + 8))(v23, v20);
        v25 = "";
      }

      v26 = swift_slowAlloc();
      *v26 = 0;
      v27 = sub_19A5722FC();
      _os_signpost_emit_with_name_impl(&dword_19A2DE000, v13, v29, v27, a4, v25, v26, 2u);
      MEMORY[0x19A902C50](v26, -1, -1);
LABEL_21:

      return (*(v15 + 8))(v17, v14);
    }

    goto LABEL_23;
  }

LABEL_24:
  __break(1u);
  return result;
}

uint64_t sub_19A3E1468(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  if (!*(a4 + 24))
  {
    return swift_endAccess();
  }

  v14[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA0210);
  v14[0] = a3;
  sub_19A334618(v14, v12);

  JSONValue.init(_:)(v12, &v13);
  if (v4)
  {
    __swift_destroy_boxed_opaque_existential_0Tm(v14);
    return swift_endAccess();
  }

  v10 = v13;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12[0] = *(a4 + 24);
  *(a4 + 24) = 0x8000000000000000;
  sub_19A33D400(v10, a1, a2, isUniquelyReferenced_nonNull_native);

  *(a4 + 24) = v12[0];
  swift_endAccess();
  return __swift_destroy_boxed_opaque_existential_0Tm(v14);
}

uint64_t sub_19A3E1588(void *a1)
{
  v90[1] = *MEMORY[0x1E69E9840];
  v78 = sub_19A57102C();
  v2 = *(v78 - 8);
  v3 = MEMORY[0x1EEE9AC00](v78);
  v79 = &v72 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v85 = &v72 - v5;
  if (qword_1ED824050 != -1)
  {
    swift_once();
  }

  v6 = sub_19A5723FC();
  v7 = __swift_project_value_buffer(v6, qword_1ED82BCF0);

  v8 = sub_19A5723DC();
  v9 = sub_19A57356C();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v84 = swift_slowAlloc();
    v90[0] = v84;
    *v10 = 136315138;
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA10C0);
    v77 = v2;
    v12 = v11;
    v88 = v11;
    v13 = sub_19A2F12E4(&qword_1EAFA10C8, &qword_1EAFA10C0);
    v89 = v13;
    v87[0] = a1;
    v14 = __swift_project_boxed_opaque_existential_1(v87, v12);
    MEMORY[0x1EEE9AC00](v14);
    *(&v72 - 4) = v12;
    *(&v72 - 3) = v13;
    *(&v72 - 2) = sub_19A475C90;
    *(&v72 - 1) = 0;

    v15 = v74;
    v17 = sub_19A3E4928(sub_19A3E40A0, (&v72 - 6), v12, MEMORY[0x1E69E6158], MEMORY[0x1E69E73E0], v13, MEMORY[0x1E69E7410], v16);
    v74 = v15;
    v86 = v17;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF9FCD8);
    sub_19A2F12E4(&qword_1ED823F48, &qword_1EAF9FCD8);
    v18 = sub_19A572BEC();
    v20 = v19;
    v2 = v77;

    __swift_destroy_boxed_opaque_existential_0Tm(v87);
    v21 = sub_19A31F114(v18, v20, v90);

    *(v10 + 4) = v21;
    _os_log_impl(&dword_19A2DE000, v8, v9, "Checking personalization validity of %s", v10, 0xCu);
    v22 = v84;
    __swift_destroy_boxed_opaque_existential_0Tm(v84);
    MEMORY[0x19A902C50](v22, -1, -1);
    MEMORY[0x19A902C50](v10, -1, -1);
  }

  v23 = objc_opt_self();
  v87[0] = 0;
  v24 = [v23 openPhotoLibraryWithWellKnownIdentifier:1 error:v87];
  v25 = v78;
  if (!v24)
  {
    v46 = v87[0];
    v47 = sub_19A570D1C();

    swift_willThrow();
    v48 = v47;
    v49 = sub_19A5723DC();
    v50 = sub_19A57355C();

    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      v87[0] = v52;
      *v51 = 136380675;
      swift_getErrorValue();
      v53 = sub_19A57405C();
      v55 = sub_19A31F114(v53, v54, v87);

      *(v51 + 4) = v55;
      _os_log_impl(&dword_19A2DE000, v49, v50, "Personalization unavailable: %{private}s", v51, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v52);
      MEMORY[0x19A902C50](v52, -1, -1);
      MEMORY[0x19A902C50](v51, -1, -1);
    }

    v56 = 1;
    goto LABEL_25;
  }

  v26 = v24;
  v72 = v7;
  v27 = v87[0];
  v73 = v26;
  v83 = [v26 librarySpecificFetchOptions];
  v28 = a1[2];
  if (v28)
  {
    v82 = objc_opt_self();
    v30 = *(v2 + 16);
    v29 = v2 + 16;
    v76 = (*(v29 + 64) + 32) & ~*(v29 + 64);
    v31 = a1 + v76;
    v32 = v30;
    v33 = *(v29 + 56);
    v81 = (v29 - 8);
    v75 = (v29 + 16);
    v84 = MEMORY[0x1E69E7CC0];
    v80 = xmmword_19A576E10;
    v77 = v29;
    v34 = v85;
    v30(v85, v31, v25);
    while (1)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA2DF0);
      v35 = v29;
      v36 = swift_allocObject();
      *(v36 + 16) = v80;
      v37 = v25;
      *(v36 + 32) = sub_19A570FDC();
      *(v36 + 40) = v38;
      v39 = sub_19A57307C();

      v40 = [v82 fetchPersonsWithLocalIdentifiers:v39 options:v83];

      v41 = [v40 count];
      if (v41)
      {
        (*v81)(v34, v37);
        v29 = v35;
        v25 = v37;
      }

      else
      {
        v32(v79, v34, v37);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v84 = sub_19A31D0E0(0, v84[2] + 1, 1, v84);
        }

        v43 = v84[2];
        v42 = v84[3];
        if (v43 >= v42 >> 1)
        {
          v84 = sub_19A31D0E0(v42 > 1, v43 + 1, 1, v84);
        }

        v44 = v78;
        (*v81)(v85, v78);
        v45 = v84;
        v84[2] = v43 + 1;
        v25 = v44;
        (*v75)(&v45[v76 + v43 * v33], v79, v44);
        v29 = v77;
      }

      v31 += v33;
      if (!--v28)
      {
        break;
      }

      v32(v34, v31, v25);
    }
  }

  else
  {
    v84 = MEMORY[0x1E69E7CC0];
  }

  v47 = v84;
  if (v84[2])
  {
    swift_bridgeObjectRetain_n();
    v57 = sub_19A5723DC();
    v58 = sub_19A57355C();

    if (os_log_type_enabled(v57, v58))
    {
      v59 = swift_slowAlloc();
      v60 = swift_slowAlloc();
      v90[0] = v60;
      *v59 = 136315138;
      v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA10C0);
      v88 = v61;
      v62 = sub_19A2F12E4(&qword_1EAFA10C8, &qword_1EAFA10C0);
      v89 = v62;
      v87[0] = v47;
      v63 = __swift_project_boxed_opaque_existential_1(v87, v61);
      MEMORY[0x1EEE9AC00](v63);
      *(&v72 - 4) = v61;
      *(&v72 - 3) = v62;
      *(&v72 - 2) = sub_19A475C90;
      *(&v72 - 1) = 0;

      v65 = sub_19A3E4928(sub_19A3E3EA0, (&v72 - 6), v61, MEMORY[0x1E69E6158], MEMORY[0x1E69E73E0], v62, MEMORY[0x1E69E7410], v64);
      v47 = v84;
      v86 = v65;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF9FCD8);
      sub_19A2F12E4(&qword_1ED823F48, &qword_1EAF9FCD8);
      v66 = sub_19A572BEC();
      v68 = v67;

      __swift_destroy_boxed_opaque_existential_0Tm(v87);
      v69 = sub_19A31F114(v66, v68, v90);

      *(v59 + 4) = v69;
      _os_log_impl(&dword_19A2DE000, v57, v58, "No personalization available for %s", v59, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v60);
      MEMORY[0x19A902C50](v60, -1, -1);
      MEMORY[0x19A902C50](v59, -1, -1);
    }

    v56 = 2;
LABEL_25:
    sub_19A3B8774();
    swift_allocError();
    *v70 = v47;
    *(v70 + 8) = v56;
    return swift_willThrow();
  }
}

void sub_19A3E1FE8(unint64_t a1@<X0>, void *a2@<X8>)
{
  v72 = a2;
  v94[1] = *MEMORY[0x1E69E9840];
  v87 = sub_19A57102C();
  v90 = *(v87 - 8);
  v3 = MEMORY[0x1EEE9AC00](v87);
  v86 = &v70 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v85 = &v70 - v5;
  v6 = type metadata accessor for EntityExtractor.NamedEntity.EntityData(0);
  v77 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v70 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93[0] = MEMORY[0x1E69E7CC0];
  if (!(a1 >> 62))
  {
    v9 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v9)
    {
      goto LABEL_3;
    }

LABEL_22:
    v11 = MEMORY[0x1E69E7CC0];
    goto LABEL_23;
  }

LABEL_21:
  v9 = sub_19A573B4C();
  if (!v9)
  {
    goto LABEL_22;
  }

LABEL_3:
  v10 = 0;
  v11 = MEMORY[0x1E69E7CC0];
  do
  {
    v12 = v10;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        MEMORY[0x19A901520](v12, a1);
        v10 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          goto LABEL_19;
        }
      }

      else
      {
        if (v12 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_20;
        }

        v10 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
LABEL_19:
          __break(1u);
LABEL_20:
          __break(1u);
          goto LABEL_21;
        }
      }

      type metadata accessor for EntityExtractor.NamedEntity();
      v13 = swift_dynamicCastClass();
      if (v13)
      {
        if (*(*(v13 + 40) + 16))
        {
          break;
        }
      }

      ++v12;
      if (v10 == v9)
      {
        goto LABEL_23;
      }
    }

    MEMORY[0x19A900BE0]();
    if (*((v93[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v93[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_19A5730AC();
    }

    sub_19A5730FC();
    v11 = v93[0];
  }

  while (v10 != v9);
LABEL_23:
  if (!(v11 >> 62))
  {
    v79 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v79)
    {
      goto LABEL_25;
    }

LABEL_56:

    *v72 = MEMORY[0x1E69E7CD0];
    return;
  }

LABEL_55:
  v79 = sub_19A573B4C();
  if (!v79)
  {
    goto LABEL_56;
  }

LABEL_25:
  v92 = MEMORY[0x1E69E7CD0];
  v14 = objc_opt_self();
  v93[0] = 0;
  v15 = [v14 openPhotoLibraryWithWellKnownIdentifier:1 error:v93];
  if (v15)
  {
    v16 = v15;
    v17 = v93[0];
    v71 = v16;
    v18 = [v16 librarySpecificFetchOptions];
    v19 = 0;
    v78 = v11 & 0xC000000000000001;
    v75 = v11 & 0xFFFFFFFFFFFFFF8;
    v74 = (v11 + 32);
    v84 = (v90 + 16);
    v83 = (v90 + 8);
    v20 = &qword_1EAFA2DF0;
    v88 = xmmword_19A576E10;
    v21 = &off_1E7517000;
    v76 = v11;
    do
    {
      if (v78)
      {
        v22 = MEMORY[0x19A901520](v19, v11);
        v23 = __OFADD__(v19++, 1);
        if (v23)
        {
          goto LABEL_53;
        }
      }

      else
      {
        if (v19 >= *(v75 + 16))
        {
          goto LABEL_54;
        }

        v23 = __OFADD__(v19++, 1);
        if (v23)
        {
LABEL_53:
          __break(1u);
LABEL_54:
          __break(1u);
          goto LABEL_55;
        }
      }

      v24 = *(v22 + 40);
      v25 = *(v24 + 16);
      if (v25)
      {
        v81 = v22;
        v82 = v19;
        v90 = objc_opt_self();
        v26 = v77;
        v27 = v24;
        v28 = v24 + ((*(v77 + 80) + 32) & ~*(v77 + 80));
        v80 = v27;

        v89 = *(v26 + 72);
        do
        {
          sub_19A3E3C64(v28, v8, type metadata accessor for EntityExtractor.NamedEntity.EntityData);
          __swift_instantiateConcreteTypeFromMangledNameV2(v20);
          v29 = swift_allocObject();
          *(v29 + 16) = v88;
          *(v29 + 32) = sub_19A570FDC();
          *(v29 + 40) = v30;
          v31 = sub_19A57307C();

          v32 = [v90 v21[502]];

          v33 = [v32 count];
          if (!v33)
          {
            v34 = v18;
            v35 = v86;
            v36 = v87;
            (*v84)(v86, v8, v87);
            v37 = v8;
            v38 = v20;
            v39 = v85;
            v40 = v35;
            v18 = v34;
            sub_19A32338C(v85, v40);
            v41 = v39;
            v20 = v38;
            v8 = v37;
            v21 = &off_1E7517000;
            (*v83)(v41, v36);
          }

          sub_19A3E3E40(v8, type metadata accessor for EntityExtractor.NamedEntity.EntityData);
          v28 += v89;
          --v25;
        }

        while (v25);

        v11 = v76;
        v19 = v82;
      }

      else
      {
      }
    }

    while (v19 != v79);

    v42 = v92;
    if (v92[2])
    {
      if (qword_1ED824050 != -1)
      {
        swift_once();
      }

      v43 = sub_19A5723FC();
      __swift_project_value_buffer(v43, qword_1ED82BCF0);

      v44 = sub_19A5723DC();
      v45 = sub_19A57355C();

      if (os_log_type_enabled(v44, v45))
      {
        v46 = swift_slowAlloc();
        v47 = swift_slowAlloc();
        v94[0] = v47;
        *v46 = 136315138;
        v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA10D0);
        v93[3] = v48;
        v49 = sub_19A2F12E4(&qword_1EAFA10D8, &qword_1EAFA10D0);
        v93[4] = v49;
        v93[0] = v42;
        v50 = __swift_project_boxed_opaque_existential_1(v93, v48);
        MEMORY[0x1EEE9AC00](v50);
        *(&v70 - 4) = v48;
        *(&v70 - 3) = v49;
        *(&v70 - 2) = sub_19A475C90;
        *(&v70 - 1) = 0;

        v51 = v73;
        v53 = sub_19A3E4928(sub_19A3E40A0, (&v70 - 6), v48, MEMORY[0x1E69E6158], MEMORY[0x1E69E73E0], v49, MEMORY[0x1E69E7410], v52);
        v73 = v51;
        v91 = v53;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF9FCD8);
        sub_19A2F12E4(&qword_1ED823F48, &qword_1EAF9FCD8);
        v54 = sub_19A572BEC();
        v56 = v55;

        __swift_destroy_boxed_opaque_existential_0Tm(v93);
        v57 = sub_19A31F114(v54, v56, v94);

        *(v46 + 4) = v57;
        _os_log_impl(&dword_19A2DE000, v44, v45, "Entity UUIDs unavailable for personalization: %s", v46, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v47);
        MEMORY[0x19A902C50](v47, -1, -1);
        MEMORY[0x19A902C50](v46, -1, -1);
      }
    }

    *v72 = v42;
  }

  else
  {
    v58 = v93[0];

    v59 = sub_19A570D1C();

    swift_willThrow();
    if (qword_1ED824050 != -1)
    {
      swift_once();
    }

    v60 = sub_19A5723FC();
    __swift_project_value_buffer(v60, qword_1ED82BCF0);
    v61 = v59;
    v62 = sub_19A5723DC();
    v63 = sub_19A57355C();

    if (os_log_type_enabled(v62, v63))
    {
      v64 = swift_slowAlloc();
      v65 = swift_slowAlloc();
      v93[0] = v65;
      *v64 = 136380675;
      swift_getErrorValue();
      v66 = sub_19A57405C();
      v68 = sub_19A31F114(v66, v67, v93);

      *(v64 + 4) = v68;
      _os_log_impl(&dword_19A2DE000, v62, v63, "Personalization unavailable: %{private}s", v64, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v65);
      MEMORY[0x19A902C50](v65, -1, -1);
      MEMORY[0x19A902C50](v64, -1, -1);
    }

    sub_19A3B8774();
    swift_allocError();
    *v69 = v59;
    *(v69 + 8) = 1;
    swift_willThrow();
  }
}