uint64_t flattenGrammar(grammar:vocabularyManager:)(void *a1, void *a2)
{
  v547 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19TokenGenerationCore14TerminalSymbolO3key_Si5valuetSgMd, &_s19TokenGenerationCore14TerminalSymbolO3key_Si5valuetSgMR);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x1EEE9AC00](v3 - 8);
  v7 = &v488 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v504 = &v488 - v8;
  v537 = type metadata accessor for VocabularyManager.PrefixLookup(0);
  v9 = *(*(v537 - 8) + 64);
  v10 = MEMORY[0x1EEE9AC00](v537);
  v534 = (&v488 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v10);
  v512 = (&v488 - v12);
  v13 = type metadata accessor for CharacterSet();
  v529 = *(v13 - 8);
  v14 = *(v529 + 64);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v535 = &v488 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v536 = &v488 - v18;
  v19 = MEMORY[0x1EEE9AC00](v17);
  v509 = &v488 - v20;
  MEMORY[0x1EEE9AC00](v19);
  v510 = &v488 - v21;
  v22 = type metadata accessor for TerminalSymbol(0);
  v545 = *(v22 - 8);
  v546 = v22;
  v23 = *(v545 + 64);
  v24 = MEMORY[0x1EEE9AC00](v22);
  v513 = &v488 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x1EEE9AC00](v24);
  v503 = (&v488 - v27);
  v28 = MEMORY[0x1EEE9AC00](v26);
  v502 = &v488 - v29;
  v30 = MEMORY[0x1EEE9AC00](v28);
  v491 = &v488 - v31;
  v32 = MEMORY[0x1EEE9AC00](v30);
  v541 = &v488 - v33;
  v34 = MEMORY[0x1EEE9AC00](v32);
  v532 = &v488 - v35;
  v36 = MEMORY[0x1EEE9AC00](v34);
  v528 = &v488 - v37;
  v38 = MEMORY[0x1EEE9AC00](v36);
  v531 = &v488 - v39;
  v40 = MEMORY[0x1EEE9AC00](v38);
  v549 = &v488 - v41;
  v42 = MEMORY[0x1EEE9AC00](v40);
  v538 = (&v488 - v43);
  v44 = MEMORY[0x1EEE9AC00](v42);
  v46 = &v488 - v45;
  v47 = MEMORY[0x1EEE9AC00](v44);
  v516 = &v488 - v48;
  v49 = MEMORY[0x1EEE9AC00](v47);
  v515 = &v488 - v50;
  v51 = MEMORY[0x1EEE9AC00](v49);
  v511 = &v488 - v52;
  MEMORY[0x1EEE9AC00](v51);
  v524 = &v488 - v53;
  v518 = type metadata accessor for Symbol(0);
  v495 = *(v518 - 8);
  v54 = *(v495 + 64);
  MEMORY[0x1EEE9AC00](v518);
  v517 = (&v488 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0));
  v56 = a1[2];
  v493 = a1[1];
  v492 = v56;
  v57 = a1[4];
  v58 = MEMORY[0x1E69E7CC0];
  v555 = MEMORY[0x1E69E7CC0];
  v59 = *(v57 + 16);
  v533 = v13;
  v550 = v46;
  v494 = v57;
  if (v59)
  {
    v553[0] = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v59, 0);
    v58 = v553[0];
    v60 = (v57 + 40);
    do
    {
      v62 = *(v60 - 1);
      v61 = *v60;
      v553[0] = v58;
      v63 = *(v58 + 16);
      v64 = *(v58 + 24);

      if (v63 >= v64 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v64 > 1), v63 + 1, 1);
        v58 = v553[0];
      }

      *(v58 + 16) = v63 + 1;
      v65 = v58 + 16 * v63;
      *(v65 + 32) = v62;
      *(v65 + 40) = v61;
      v60 += 3;
      --v59;
    }

    while (v59);
    v13 = v533;
    v46 = v550;
  }

  v66 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC19TokenGenerationCore17NonTerminalSymbolV_SayAFGTt0g5Tf4g_n(v58);

  v67 = _sSaySayxGqd__c7ElementQyd__RszSTRd__lufC19TokenGenerationCore17NonTerminalSymbolV_ShyAFGTt0g5(v66);
  v68 = v67[2];
  v69 = MEMORY[0x1E69E7CC0];
  v505 = v7;
  v507 = v67;
  if (v68)
  {
    v553[0] = MEMORY[0x1E69E7CC0];

    specialized ContiguousArray.reserveCapacity(_:)(v68);
    v70 = v507;
    v71 = 0;
    v72 = v507[2];
    v73 = v507 + 5;
    while (1)
    {
      if (v72 == v71)
      {
        goto LABEL_362;
      }

      if (v71 >= v70[2])
      {
        break;
      }

      v75 = *(v73 - 1);
      v74 = *v73;
      v69 = v553[0];

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v69 + 16) + 1, 1);
        v70 = v507;
        v69 = v553[0];
      }

      v77 = *(v69 + 16);
      v76 = *(v69 + 24);
      if (v77 >= v76 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v76 > 1), v77 + 1, 1);
        v70 = v507;
        v69 = v553[0];
      }

      *(v69 + 16) = v77 + 1;
      v78 = (v69 + 24 * v77);
      v78[5] = v74;
      v78[6] = v71;
      v78[4] = v75;
      v73 += 2;
      ++v71;
      v13 = v533;
      v46 = v550;
      if (v68 == v71)
      {

        goto LABEL_17;
      }
    }

LABEL_363:
    __break(1u);
LABEL_364:
    __break(1u);
LABEL_365:
    __break(1u);
LABEL_366:
    __break(1u);
LABEL_367:
    __break(1u);
LABEL_368:
    __break(1u);
LABEL_369:
    __break(1u);
LABEL_370:
    __break(1u);
LABEL_371:
    __break(1u);
LABEL_372:
    __break(1u);
LABEL_373:
    __break(1u);
LABEL_374:
    __break(1u);
LABEL_375:
    __break(1u);
LABEL_376:
    __break(1u);
LABEL_377:
    __break(1u);
LABEL_378:
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
    goto LABEL_390;
  }

LABEL_17:
  v79 = MEMORY[0x1E69E7CC8];
  v80 = v547;
  if (*(v69 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy19TokenGenerationCore17NonTerminalSymbolVSiGMd, &_ss18_DictionaryStorageCy19TokenGenerationCore17NonTerminalSymbolVSiGMR);
    v81 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v81 = MEMORY[0x1E69E7CC8];
  }

  v553[0] = v81;

  specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(v82, 1, v553);
  v527 = 0;

  v514 = v553[0];
  v554 = v79;
  v83 = MEMORY[0x1E69E7CC0];
  v540 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSi_10Foundation12CharacterSetVTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  v84 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSi_SiTt0g5Tf4g_n(v83);
  v85 = v494;
  v86 = *(v494 + 16);
  if (!v86)
  {
    v89 = v83;
    v544 = v83;
    goto LABEL_249;
  }

  v87 = 0;
  v88 = v494 + 32;
  v539 = (v529 + 32);
  v522 = v529 + 40;
  v89 = MEMORY[0x1E69E7CC0];
  v544 = MEMORY[0x1E69E7CC0];
  v489 = v86;
  v488 = v494 + 32;
  do
  {
    if (v87 >= *(v85 + 16))
    {
      goto LABEL_386;
    }

    v90 = (v88 + 24 * v87);
    v91 = v90[2];
    v496 = *(v91 + 16);
    if (!v496)
    {
      goto LABEL_246;
    }

    v490 = v87;
    v508 = v84;
    v92 = v90[1];
    v498 = *v90;
    v497 = v91 + 32;
    v499 = v92;
    v93 = v89;

    v500 = v91;
    swift_bridgeObjectRetain_n();
    v94 = v93;
    v95 = 0;
    v530 = 0;
    v96 = 0;
    do
    {
      if (v96 >= *(v500 + 16))
      {
        goto LABEL_376;
      }

      v506 = v94;
      v501 = v96;
      v97 = *(v497 + 8 * v96);
      v98 = *(v97 + 16);
      v523 = v97;
      v521 = v98;
      if (v98)
      {
        v99 = v495;
        v520 = v97 + ((*(v99 + 80) + 32) & ~*(v99 + 80));
        swift_bridgeObjectRetain_n();
        v100 = 0;
        v519 = *(v99 + 72);
        v101 = MEMORY[0x1E69E7CC0];
        v102 = v517;
        while (1)
        {
          v526 = v100 + 1;
          outlined init with copy of TerminalSymbol(v520 + v519 * v100, v102, type metadata accessor for Symbol);
          EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
          if (!EnumCaseMultiPayload)
          {
            break;
          }

          if (EnumCaseMultiPayload == 1)
          {
            v106 = *v102;
            v544 = *(*v102 + 16);
            if (v544)
            {
              v107 = 0;
              v108 = *(v545 + 80);
              v542 = v106;
              v543 = v106 + ((v108 + 32) & ~v108);
              while (1)
              {
                if (v107 >= *(v106 + 16))
                {
                  __break(1u);
                  goto LABEL_326;
                }

                v551 = v101;
                v109 = *(v545 + 72);
                outlined init with copy of TerminalSymbol(v543 + v109 * v107, v46, type metadata accessor for TerminalSymbol);
                if (!v80)
                {
                  v118 = (v79 + 16);
                  if (*(v79 + 16))
                  {
                    v119 = specialized __RawDictionaryStorage.find<A>(_:)(v46);
                    if (v120)
                    {
                      v118 = (*(v79 + 56) + 8 * v119);
                    }
                  }

                  v121 = *v118;
                  v122 = v541;
                  outlined init with copy of TerminalSymbol(v46, v541, type metadata accessor for TerminalSymbol);
                  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                  v124 = v554;
                  v553[0] = v554;
                  v125 = specialized __RawDictionaryStorage.find<A>(_:)(v122);
                  v127 = *(v124 + 16);
                  v128 = (v126 & 1) == 0;
                  v129 = __OFADD__(v127, v128);
                  v130 = v127 + v128;
                  if (v129)
                  {
                    goto LABEL_350;
                  }

                  v131 = v126;
                  if (*(v124 + 24) >= v130)
                  {
                    if (isUniquelyReferenced_nonNull_native)
                    {
                      goto LABEL_55;
                    }

                    v241 = v125;
                    specialized _NativeDictionary.copy()();
                    v125 = v241;
                    v79 = v553[0];
                    if ((v131 & 1) == 0)
                    {
                      goto LABEL_137;
                    }

LABEL_56:
                    *(*(v79 + 56) + 8 * v125) = v121;
                    outlined destroy of PromptTemplateInfo.RichVariableBinding.Component(v541, type metadata accessor for TerminalSymbol);
                  }

                  else
                  {
                    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v130, isUniquelyReferenced_nonNull_native);
                    v125 = specialized __RawDictionaryStorage.find<A>(_:)(v541);
                    if ((v131 & 1) != (v132 & 1))
                    {
                      goto LABEL_399;
                    }

LABEL_55:
                    v79 = v553[0];
                    if (v131)
                    {
                      goto LABEL_56;
                    }

LABEL_137:
                    *(v79 + 8 * (v125 >> 6) + 64) |= 1 << v125;
                    v242 = v125;
                    v243 = v541;
                    outlined init with copy of TerminalSymbol(v541, *(v79 + 48) + v125 * v109, type metadata accessor for TerminalSymbol);
                    *(*(v79 + 56) + 8 * v242) = v121;
                    outlined destroy of PromptTemplateInfo.RichVariableBinding.Component(v243, type metadata accessor for TerminalSymbol);
                    v244 = *(v79 + 16);
                    v129 = __OFADD__(v244, 1);
                    v245 = v244 + 1;
                    if (v129)
                    {
                      goto LABEL_354;
                    }

                    *(v79 + 16) = v245;
                  }

                  v554 = v79;
                  v101 = v551;
                  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                  {
                    v101 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v101 + 2) + 1, 1, v101);
                  }

                  v247 = *(v101 + 2);
                  v246 = *(v101 + 3);
                  v248 = v247 + 1;
                  if (v247 >= v246 >> 1)
                  {
                    v101 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v246 > 1), v247 + 1, 1, v101);
                  }

                  goto LABEL_158;
                }

                v110 = v538;
                outlined init with copy of TerminalSymbol(v46, v538, type metadata accessor for TerminalSymbol);
                v111 = swift_getEnumCaseMultiPayload();
                if ((v111 - 1) < 2)
                {
                  v112 = *v539;
                  (*v539)(v536, v110, v13);
                  v114 = (v79 + 16);
                  v113 = *(v79 + 16);

                  if (v113)
                  {
                    v115 = specialized __RawDictionaryStorage.find<A>(_:)(v46);
                    v116 = v528;
                    if (v117)
                    {
                      v114 = (*(v79 + 56) + 8 * v115);
                    }
                  }

                  else
                  {
                    v116 = v528;
                  }

                  v154 = *v114;
                  outlined init with copy of TerminalSymbol(v46, v116, type metadata accessor for TerminalSymbol);
                  v155 = swift_isUniquelyReferenced_nonNull_native();
                  v156 = v554;
                  v553[0] = v554;
                  v157 = specialized __RawDictionaryStorage.find<A>(_:)(v116);
                  v159 = *(v156 + 16);
                  v160 = (v158 & 1) == 0;
                  v129 = __OFADD__(v159, v160);
                  v161 = v159 + v160;
                  if (v129)
                  {
                    goto LABEL_351;
                  }

                  v162 = v158;
                  if (*(v156 + 24) >= v161)
                  {
                    if ((v155 & 1) == 0)
                    {
                      v250 = v157;
                      specialized _NativeDictionary.copy()();
                      v157 = v250;
                    }
                  }

                  else
                  {
                    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v161, v155);
                    v157 = specialized __RawDictionaryStorage.find<A>(_:)(v116);
                    if ((v162 & 1) != (v163 & 1))
                    {
                      goto LABEL_399;
                    }
                  }

                  v13 = v533;
                  v164 = v553[0];
                  if (v162)
                  {
                    *(*(v553[0] + 56) + 8 * v157) = v154;
                    outlined destroy of PromptTemplateInfo.RichVariableBinding.Component(v116, type metadata accessor for TerminalSymbol);
                  }

                  else
                  {
                    *(v553[0] + 8 * (v157 >> 6) + 64) |= 1 << v157;
                    v165 = v157;
                    outlined init with copy of TerminalSymbol(v116, v164[6] + v157 * v109, type metadata accessor for TerminalSymbol);
                    *(v164[7] + 8 * v165) = v154;
                    outlined destroy of PromptTemplateInfo.RichVariableBinding.Component(v116, type metadata accessor for TerminalSymbol);
                    v166 = v164[2];
                    v129 = __OFADD__(v166, 1);
                    v167 = v166 + 1;
                    if (v129)
                    {
                      goto LABEL_356;
                    }

                    v164[2] = v167;
                  }

                  v168 = v164;
                  v554 = v164;
                  v169 = v551;
                  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                  {
                    v169 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v169 + 2) + 1, 1, v169);
                  }

                  v171 = *(v169 + 2);
                  v170 = *(v169 + 3);
                  if (v171 >= v170 >> 1)
                  {
                    v169 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v170 > 1), v171 + 1, 1, v169);
                  }

                  *(v169 + 2) = v171 + 1;
                  v172 = v169;
                  v173 = &v169[16 * v171];
                  *(v173 + 4) = v154;
                  v173[40] = 0;
                  v112(v535, v536, v13);
                  v174 = v540;
                  v175 = swift_isUniquelyReferenced_nonNull_native();
                  v553[0] = v174;
                  v176 = specialized __RawDictionaryStorage.find<A>(_:)(v154);
                  v178 = *(v174 + 16);
                  v179 = (v177 & 1) == 0;
                  v129 = __OFADD__(v178, v179);
                  v180 = v178 + v179;
                  if (v129)
                  {
                    goto LABEL_352;
                  }

                  v181 = v177;
                  if (*(v174 + 24) >= v180)
                  {
                    if ((v175 & 1) == 0)
                    {
                      v251 = v176;
                      specialized _NativeDictionary.copy()();
                      v176 = v251;
                    }
                  }

                  else
                  {
                    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v180, v175);
                    v176 = specialized __RawDictionaryStorage.find<A>(_:)(v154);
                    if ((v181 & 1) != (v182 & 1))
                    {
                      goto LABEL_400;
                    }
                  }

                  v101 = v172;
                  v183 = v553[0];
                  v540 = v553[0];
                  if (v181)
                  {
                    (*(v529 + 40))(*(v553[0] + 56) + *(v529 + 72) * v176, v535, v13);

                    v46 = v550;
                    outlined destroy of PromptTemplateInfo.RichVariableBinding.Component(v550, type metadata accessor for TerminalSymbol);
                  }

                  else
                  {
                    *(v553[0] + 8 * (v176 >> 6) + 64) |= 1 << v176;
                    *(*(v183 + 48) + 8 * v176) = v154;
                    v112((*(v183 + 56) + *(v529 + 72) * v176), v535, v13);

                    v46 = v550;
                    outlined destroy of PromptTemplateInfo.RichVariableBinding.Component(v550, type metadata accessor for TerminalSymbol);
                    v184 = *(v540 + 16);
                    v129 = __OFADD__(v184, 1);
                    v185 = v184 + 1;
                    if (v129)
                    {
                      goto LABEL_357;
                    }

                    *(v540 + 16) = v185;
                  }

                  v95 = 1;
                  v530 = 1;
                  v79 = v168;
                  v80 = v547;
                  goto LABEL_159;
                }

                if (!v111)
                {
                  v548 = v79;
                  v133 = *v538;
                  v134 = v80[12];
                  __swift_project_boxed_opaque_existential_1(v80 + 8, v80[11]);
                  v525 = v95;
                  if (v133 > 0x7F)
                  {
                    v249 = (v133 & 0x3F) << 8;
                    if (v133 >= 0x800)
                    {
                      v264 = (v249 | (v133 >> 6) & 0x3F) << 8;
                      v265 = (((v264 | (v133 >> 12) & 0x3F) << 8) | (v133 >> 18)) - 2122219023;
                      v135 = (v133 >> 12) + v264 + 8487393;
                      if (HIWORD(v133))
                      {
                        v135 = v265;
                      }
                    }

                    else
                    {
                      v135 = (v133 >> 6) + v249 + 33217;
                    }
                  }

                  else
                  {
                    v135 = v133 + 1;
                  }

                  v553[0] = (v135 + 0xFEFEFEFEFEFEFFLL) & ~(-1 << (8 * (4 - (__clz(v135) >> 3))));
                  v80 = v547;

                  v136 = static String._uncheckedFromUTF8(_:)();
                  v137 = v527;
                  v138 = (*(v134 + 24))(v136);
                  if (v137)
                  {

                    v527 = 0;
                    v139 = v548;
                  }

                  else
                  {
                    v187 = v138;
                    v527 = 0;

                    v188 = v512;
                    VocabularyManager.prefixLookUp.getter(v512);
                    v189 = *(v188 + *(v537 + 52));

                    outlined destroy of PromptTemplateInfo.RichVariableBinding.Component(v188, type metadata accessor for VocabularyManager.PrefixLookup);
                    v190 = MEMORY[0x1AC57C380](*(v187 + 16), MEMORY[0x1E69E6530], MEMORY[0x1E69E6540]);
                    v553[0] = v190;
                    v191 = *(v187 + 16);
                    v192 = v187;
                    v139 = v548;
                    if (v191)
                    {
                      v193 = v192;
                      v194 = (v192 + 32);
                      v195 = v191;
                      do
                      {
                        v196 = *v194++;
                        specialized Set._Variant.insert(_:)(&v552, v196);
                        --v195;
                      }

                      while (v195);
                      v197 = v553[0];
                    }

                    else
                    {
                      v197 = v190;
                      v193 = v192;
                    }

                    v80 = v547;
                    v198 = specialized Set.isDisjoint(with:)(v197, v189);

                    if ((v198 & 1) == 0)
                    {
                      if (v191)
                      {
                        v213 = v80[13];
                        v214 = (v193 + 32);
                        v215 = MEMORY[0x1E69E7CC0];
                        do
                        {
                          v219 = *v214++;
                          v218 = v219;
                          if (v213 != v219)
                          {
                            v220 = swift_isUniquelyReferenced_nonNull_native();
                            v553[0] = v215;
                            if ((v220 & 1) == 0)
                            {
                              specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v215 + 16) + 1, 1);
                              v215 = v553[0];
                            }

                            v217 = *(v215 + 16);
                            v216 = *(v215 + 24);
                            if (v217 >= v216 >> 1)
                            {
                              specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v216 > 1), v217 + 1, 1);
                              v215 = v553[0];
                            }

                            *(v215 + 16) = v217 + 1;
                            *(v215 + 8 * v217 + 32) = v218;
                          }

                          --v191;
                        }

                        while (v191);
                      }

                      else
                      {
                        v215 = MEMORY[0x1E69E7CC0];
                      }

                      v221 = *(v215 + 16);
                      if (v221)
                      {
                        v222 = 0;
                        while (v222 < *(v215 + 16))
                        {
                          v223 = *(v215 + 32 + 8 * v222);
                          v224 = v534;
                          VocabularyManager.prefixLookUp.getter(v534);
                          v225 = *(v224 + *(v537 + 48));

                          outlined destroy of PromptTemplateInfo.RichVariableBinding.Component(v224, type metadata accessor for VocabularyManager.PrefixLookup);
                          if (!*(v225 + 16))
                          {
                            goto LABEL_388;
                          }

                          v226 = specialized __RawDictionaryStorage.find<A>(_:)(v223);
                          if ((v227 & 1) == 0)
                          {
                            goto LABEL_388;
                          }

                          v228 = *(*(v225 + 56) + v226);

                          v229 = v549;
                          *v549 = v228;
                          swift_storeEnumTagMultiPayload();
                          v230 = v548;
                          v231 = v548 + 2;
                          if (v548[2])
                          {
                            v232 = specialized __RawDictionaryStorage.find<A>(_:)(v229);
                            if (v233)
                            {
                              v231 = (v230[7] + 8 * v232);
                            }
                          }

                          v234 = *v231;
                          v235 = swift_isUniquelyReferenced_nonNull_native();
                          v553[0] = v554;
                          specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v234, v549, v235);
                          v548 = v553[0];
                          v554 = v553[0];
                          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                          {
                            v551 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v551 + 16) + 1, 1, v551);
                          }

                          v237 = *(v551 + 16);
                          v236 = *(v551 + 24);
                          v238 = v549;
                          if (v237 >= v236 >> 1)
                          {
                            v551 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v236 > 1), v237 + 1, 1, v551);
                            v238 = v549;
                          }

                          ++v222;
                          outlined destroy of PromptTemplateInfo.RichVariableBinding.Component(v238, type metadata accessor for TerminalSymbol);
                          v239 = v551;
                          *(v551 + 16) = v237 + 1;
                          v240 = v239 + 16 * v237;
                          *(v240 + 32) = v234;
                          *(v240 + 40) = 0;
                          v46 = v550;
                          if (v221 == v222)
                          {
                            goto LABEL_135;
                          }
                        }

                        __break(1u);
LABEL_350:
                        __break(1u);
LABEL_351:
                        __break(1u);
LABEL_352:
                        __break(1u);
LABEL_353:
                        __break(1u);
LABEL_354:
                        __break(1u);
LABEL_355:
                        __break(1u);
LABEL_356:
                        __break(1u);
LABEL_357:
                        __break(1u);
LABEL_358:
                        __break(1u);
LABEL_359:
                        __break(1u);
LABEL_360:
                        __break(1u);
LABEL_361:
                        __break(1u);
LABEL_362:
                        __break(1u);
                        goto LABEL_363;
                      }

                      v46 = v550;
LABEL_135:
                      outlined destroy of PromptTemplateInfo.RichVariableBinding.Component(v46, type metadata accessor for TerminalSymbol);

                      swift_bridgeObjectRelease_n();
                      v80 = v547;

                      v13 = v533;
                      v79 = v548;
                      v101 = v551;
                      v106 = v542;
                      v95 = v525;
                      goto LABEL_160;
                    }

                    swift_bridgeObjectRelease_n();
                    v13 = v533;
                  }

                  v95 = v525;
                  v199 = v139 + 2;
                  v200 = v550;
                  if (v139[2])
                  {
                    v201 = specialized __RawDictionaryStorage.find<A>(_:)(v550);
                    if (v202)
                    {
                      v199 = (v139[7] + 8 * v201);
                    }
                  }

                  v121 = *v199;
                  v203 = v531;
                  outlined init with copy of TerminalSymbol(v200, v531, type metadata accessor for TerminalSymbol);
                  v204 = swift_isUniquelyReferenced_nonNull_native();
                  v205 = v554;
                  v553[0] = v554;
                  v206 = specialized __RawDictionaryStorage.find<A>(_:)(v203);
                  v208 = *(v205 + 16);
                  v209 = (v207 & 1) == 0;
                  v129 = __OFADD__(v208, v209);
                  v210 = v208 + v209;
                  if (v129)
                  {
                    goto LABEL_359;
                  }

                  v211 = v207;
                  if (*(v205 + 24) >= v210)
                  {
                    if (v204)
                    {
                      goto LABEL_108;
                    }

                    v257 = v206;
                    specialized _NativeDictionary.copy()();
                    v206 = v257;
                    v79 = v553[0];
                    if ((v211 & 1) == 0)
                    {
                      goto LABEL_149;
                    }

LABEL_109:
                    *(*(v79 + 56) + 8 * v206) = v121;
                  }

                  else
                  {
                    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v210, v204);
                    v206 = specialized __RawDictionaryStorage.find<A>(_:)(v531);
                    if ((v211 & 1) != (v212 & 1))
                    {
                      goto LABEL_399;
                    }

LABEL_108:
                    v79 = v553[0];
                    if (v211)
                    {
                      goto LABEL_109;
                    }

LABEL_149:
                    *(v79 + 8 * (v206 >> 6) + 64) |= 1 << v206;
                    v258 = v206;
                    outlined init with copy of TerminalSymbol(v531, *(v79 + 48) + v206 * v109, type metadata accessor for TerminalSymbol);
                    *(*(v79 + 56) + 8 * v258) = v121;
                    v259 = *(v79 + 16);
                    v129 = __OFADD__(v259, 1);
                    v260 = v259 + 1;
                    if (v129)
                    {
                      goto LABEL_364;
                    }

                    *(v79 + 16) = v260;
                  }

                  v186 = &v556;
                  goto LABEL_152;
                }

                v141 = (v79 + 16);
                v140 = *(v79 + 16);

                if (v140)
                {
                  v142 = specialized __RawDictionaryStorage.find<A>(_:)(v46);
                  if (v143)
                  {
                    v141 = (*(v79 + 56) + 8 * v142);
                  }
                }

                v121 = *v141;
                v144 = v532;
                outlined init with copy of TerminalSymbol(v46, v532, type metadata accessor for TerminalSymbol);
                v145 = swift_isUniquelyReferenced_nonNull_native();
                v146 = v554;
                v553[0] = v554;
                v147 = specialized __RawDictionaryStorage.find<A>(_:)(v144);
                v149 = *(v146 + 16);
                v150 = (v148 & 1) == 0;
                v129 = __OFADD__(v149, v150);
                v151 = v149 + v150;
                if (v129)
                {
                  goto LABEL_355;
                }

                v152 = v148;
                if (*(v146 + 24) >= v151)
                {
                  if ((v145 & 1) == 0)
                  {
                    v252 = v147;
                    specialized _NativeDictionary.copy()();
                    v147 = v252;
                    v79 = v553[0];
                    if ((v152 & 1) == 0)
                    {
LABEL_146:
                      *(v79 + 8 * (v147 >> 6) + 64) |= 1 << v147;
                      v253 = v147;
                      v254 = v532;
                      outlined init with copy of TerminalSymbol(v532, *(v79 + 48) + v147 * v109, type metadata accessor for TerminalSymbol);
                      *(*(v79 + 56) + 8 * v253) = v121;
                      outlined destroy of PromptTemplateInfo.RichVariableBinding.Component(v254, type metadata accessor for TerminalSymbol);
                      v255 = *(v79 + 16);
                      v129 = __OFADD__(v255, 1);
                      v256 = v255 + 1;
                      if (v129)
                      {
                        goto LABEL_361;
                      }

                      *(v79 + 16) = v256;
                      goto LABEL_153;
                    }

                    goto LABEL_92;
                  }
                }

                else
                {
                  specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v151, v145);
                  v147 = specialized __RawDictionaryStorage.find<A>(_:)(v532);
                  if ((v152 & 1) != (v153 & 1))
                  {
                    goto LABEL_399;
                  }
                }

                v79 = v553[0];
                if ((v152 & 1) == 0)
                {
                  goto LABEL_146;
                }

LABEL_92:
                *(*(v79 + 56) + 8 * v147) = v121;
                v186 = &v557;
LABEL_152:
                outlined destroy of PromptTemplateInfo.RichVariableBinding.Component(*(v186 - 32), type metadata accessor for TerminalSymbol);
LABEL_153:
                v554 = v79;
                v101 = v551;
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v101 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v101 + 2) + 1, 1, v101);
                }

                v247 = *(v101 + 2);
                v261 = *(v101 + 3);
                v248 = v247 + 1;
                if (v247 >= v261 >> 1)
                {
                  v101 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v261 > 1), v247 + 1, 1, v101);
                }

LABEL_158:
                v262 = v550;
                outlined destroy of PromptTemplateInfo.RichVariableBinding.Component(v550, type metadata accessor for TerminalSymbol);
                *(v101 + 2) = v248;
                v263 = &v101[16 * v247];
                v46 = v262;
                *(v263 + 4) = v121;
                v263[40] = 0;
LABEL_159:
                v106 = v542;
LABEL_160:
                if (++v107 == v544)
                {

                  goto LABEL_28;
                }
              }
            }

            goto LABEL_29;
          }

          v284 = v514;
          if (!*(v514 + 16))
          {
            goto LABEL_365;
          }

          v285 = specialized __RawDictionaryStorage.find<A>(_:)(*v102, v102[1]);
          v287 = v286;

          if ((v287 & 1) == 0)
          {
            goto LABEL_366;
          }

          v288 = *(*(v284 + 56) + 8 * v285);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v101 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v101 + 2) + 1, 1, v101);
          }

          v46 = v550;
          v290 = *(v101 + 2);
          v289 = *(v101 + 3);
          v103 = v523;
          v104 = v526;
          if (v290 >= v289 >> 1)
          {
            v328 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v289 > 1), v290 + 1, 1, v101);
            v104 = v526;
            v101 = v328;
            v103 = v523;
          }

          *(v101 + 2) = v290 + 1;
          v291 = &v101[16 * v290];
          *(v291 + 4) = v288;
          v291[40] = 1;
          v102 = v517;
LABEL_30:
          if (v104 == v521)
          {

            if ((v530 & 1) == 0)
            {
              v340 = 0;
              goto LABEL_226;
            }

LABEL_228:
            v341 = v508;
            v342 = v514;
            if (*(v101 + 2) == 1 && !v101[40])
            {
              if (!*(v514 + 16))
              {
                goto LABEL_392;
              }

              v343 = *(v101 + 4);
              v344 = specialized __RawDictionaryStorage.find<A>(_:)(v498, v499);
              if ((v345 & 1) == 0)
              {
                goto LABEL_393;
              }

              v346 = *(*(v342 + 56) + 8 * v344);
              v347 = v508;
              v348 = swift_isUniquelyReferenced_nonNull_native();
              v553[0] = v347;
              v342 = v514;
              specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v343, v346, v348);
              v341 = v553[0];
            }

            v340 = 1;
            goto LABEL_234;
          }

LABEL_31:
          v100 = v104;
          if (v104 >= *(v103 + 16))
          {
            goto LABEL_358;
          }
        }

        v266 = v102;
        v267 = v524;
        outlined init with take of TerminalSymbol(v266, v524, type metadata accessor for TerminalSymbol);
        v268 = v511;
        outlined init with copy of TerminalSymbol(v267, v511, type metadata accessor for TerminalSymbol);
        if (swift_getEnumCaseMultiPayload() - 1 <= 1)
        {
          v269 = *v539;
          (*v539)(v510, v268, v13);
          v270 = (v79 + 16);
          if (*(v79 + 16))
          {
            v271 = specialized __RawDictionaryStorage.find<A>(_:)(v524);
            if (v272)
            {
              v270 = (*(v79 + 56) + 8 * v271);
            }
          }

          v273 = *v270;
          v274 = v515;
          outlined init with copy of TerminalSymbol(v524, v515, type metadata accessor for TerminalSymbol);
          v275 = swift_isUniquelyReferenced_nonNull_native();
          v276 = v554;
          v553[0] = v554;
          v277 = specialized __RawDictionaryStorage.find<A>(_:)(v274);
          v279 = *(v276 + 16);
          v280 = (v278 & 1) == 0;
          v129 = __OFADD__(v279, v280);
          v281 = v279 + v280;
          if (v129)
          {
            goto LABEL_369;
          }

          v282 = v278;
          if (*(v276 + 24) >= v281)
          {
            if ((v275 & 1) == 0)
            {
              v329 = v277;
              specialized _NativeDictionary.copy()();
              v277 = v329;
            }
          }

          else
          {
            specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v281, v275);
            v277 = specialized __RawDictionaryStorage.find<A>(_:)(v515);
            if ((v282 & 1) != (v283 & 1))
            {
              goto LABEL_399;
            }
          }

          v13 = v533;
          v306 = v553[0];
          if (v282)
          {
            *(*(v553[0] + 56) + 8 * v277) = v273;
            outlined destroy of PromptTemplateInfo.RichVariableBinding.Component(v515, type metadata accessor for TerminalSymbol);
          }

          else
          {
            *(v553[0] + 8 * (v277 >> 6) + 64) |= 1 << v277;
            v307 = v277;
            v308 = v515;
            outlined init with copy of TerminalSymbol(v515, v306[6] + *(v545 + 72) * v277, type metadata accessor for TerminalSymbol);
            *(v306[7] + 8 * v307) = v273;
            outlined destroy of PromptTemplateInfo.RichVariableBinding.Component(v308, type metadata accessor for TerminalSymbol);
            v309 = v306[2];
            v129 = __OFADD__(v309, 1);
            v310 = v309 + 1;
            if (v129)
            {
              goto LABEL_373;
            }

            v306[2] = v310;
          }

          v311 = v306;
          v554 = v306;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v101 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v101 + 2) + 1, 1, v101);
          }

          v313 = *(v101 + 2);
          v312 = *(v101 + 3);
          if (v313 >= v312 >> 1)
          {
            v101 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v312 > 1), v313 + 1, 1, v101);
          }

          *(v101 + 2) = v313 + 1;
          v314 = v101;
          v315 = &v101[16 * v313];
          *(v315 + 4) = v273;
          v315[40] = 0;
          v269(v509, v510, v13);
          v316 = v540;
          v317 = swift_isUniquelyReferenced_nonNull_native();
          v553[0] = v316;
          v318 = specialized __RawDictionaryStorage.find<A>(_:)(v273);
          v320 = *(v316 + 16);
          v321 = (v319 & 1) == 0;
          v129 = __OFADD__(v320, v321);
          v322 = v320 + v321;
          if (v129)
          {
            goto LABEL_371;
          }

          v323 = v319;
          if (*(v316 + 24) >= v322)
          {
            if ((v317 & 1) == 0)
            {
              v339 = v318;
              specialized _NativeDictionary.copy()();
              v318 = v339;
            }
          }

          else
          {
            specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v322, v317);
            v318 = specialized __RawDictionaryStorage.find<A>(_:)(v273);
            if ((v323 & 1) != (v324 & 1))
            {
              goto LABEL_400;
            }
          }

          v101 = v314;
          v325 = v553[0];
          v540 = v553[0];
          if (v323)
          {
            (*(v529 + 40))(*(v553[0] + 56) + *(v529 + 72) * v318, v509, v13);
            outlined destroy of PromptTemplateInfo.RichVariableBinding.Component(v524, type metadata accessor for TerminalSymbol);
          }

          else
          {
            *(v553[0] + 8 * (v318 >> 6) + 64) |= 1 << v318;
            *(*(v325 + 48) + 8 * v318) = v273;
            v269((*(v325 + 56) + *(v529 + 72) * v318), v509, v13);
            outlined destroy of PromptTemplateInfo.RichVariableBinding.Component(v524, type metadata accessor for TerminalSymbol);
            v326 = *(v540 + 16);
            v129 = __OFADD__(v326, 1);
            v327 = v326 + 1;
            if (v129)
            {
              goto LABEL_375;
            }

            *(v540 + 16) = v327;
          }

          v104 = v526;
          v79 = v311;
          v46 = v550;
          v102 = v517;
          v103 = v523;
          if (v526 == v521)
          {

            v95 = 1;
            goto LABEL_228;
          }

          v95 = 1;
          v530 = 1;
          goto LABEL_31;
        }

        v292 = (v79 + 16);
        if (*(v79 + 16))
        {
          v293 = specialized __RawDictionaryStorage.find<A>(_:)(v524);
          if (v294)
          {
            v292 = (*(v79 + 56) + 8 * v293);
          }
        }

        v295 = *v292;
        v296 = v516;
        outlined init with copy of TerminalSymbol(v524, v516, type metadata accessor for TerminalSymbol);
        v297 = swift_isUniquelyReferenced_nonNull_native();
        v298 = v554;
        v553[0] = v554;
        v299 = specialized __RawDictionaryStorage.find<A>(_:)(v296);
        v301 = *(v298 + 16);
        v302 = (v300 & 1) == 0;
        v129 = __OFADD__(v301, v302);
        v303 = v301 + v302;
        if (v129)
        {
          goto LABEL_370;
        }

        v304 = v300;
        if (*(v298 + 24) >= v303)
        {
          if ((v297 & 1) == 0)
          {
            v330 = v299;
            specialized _NativeDictionary.copy()();
            v299 = v330;
            v79 = v553[0];
            if (v304)
            {
              goto LABEL_194;
            }

            goto LABEL_214;
          }
        }

        else
        {
          specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v303, v297);
          v299 = specialized __RawDictionaryStorage.find<A>(_:)(v516);
          if ((v304 & 1) != (v305 & 1))
          {
            goto LABEL_399;
          }
        }

        v79 = v553[0];
        if (v304)
        {
LABEL_194:
          *(*(v79 + 56) + 8 * v299) = v295;
          outlined destroy of PromptTemplateInfo.RichVariableBinding.Component(v516, type metadata accessor for TerminalSymbol);
LABEL_216:
          v554 = v79;
          v335 = swift_isUniquelyReferenced_nonNull_native();
          v46 = v550;
          if ((v335 & 1) == 0)
          {
            v101 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v101 + 2) + 1, 1, v101);
          }

          v337 = *(v101 + 2);
          v336 = *(v101 + 3);
          if (v337 >= v336 >> 1)
          {
            v101 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v336 > 1), v337 + 1, 1, v101);
          }

          outlined destroy of PromptTemplateInfo.RichVariableBinding.Component(v524, type metadata accessor for TerminalSymbol);
          *(v101 + 2) = v337 + 1;
          v338 = &v101[16 * v337];
          *(v338 + 4) = v295;
          v338[40] = 0;
LABEL_28:
          v102 = v517;
LABEL_29:
          v103 = v523;
          v104 = v526;
          goto LABEL_30;
        }

LABEL_214:
        *(v79 + 8 * (v299 >> 6) + 64) |= 1 << v299;
        v331 = v299;
        v332 = v516;
        outlined init with copy of TerminalSymbol(v516, *(v79 + 48) + *(v545 + 72) * v299, type metadata accessor for TerminalSymbol);
        *(*(v79 + 56) + 8 * v331) = v295;
        outlined destroy of PromptTemplateInfo.RichVariableBinding.Component(v332, type metadata accessor for TerminalSymbol);
        v333 = *(v79 + 16);
        v129 = __OFADD__(v333, 1);
        v334 = v333 + 1;
        if (v129)
        {
          goto LABEL_374;
        }

        *(v79 + 16) = v334;
        goto LABEL_216;
      }

      if (v530)
      {
        v101 = MEMORY[0x1E69E7CC0];
        goto LABEL_228;
      }

      v340 = 0;
      v101 = MEMORY[0x1E69E7CC0];
LABEL_226:
      v341 = v508;
      v342 = v514;
LABEL_234:
      if (!*(v342 + 16))
      {
        goto LABEL_377;
      }

      v508 = v341;
      v349 = specialized __RawDictionaryStorage.find<A>(_:)(v498, v499);
      v351 = v350;

      if ((v351 & 1) == 0)
      {
        goto LABEL_378;
      }

      v352 = *(*(v342 + 56) + 8 * v349);
      if (*(v101 + 2))
      {
        v553[0] = v498;
        v553[1] = v499;
        v553[2] = v500;
        v353 = Rule.isRecursiveRule()();
      }

      else
      {
        v353 = 0;
      }

      v354 = swift_isUniquelyReferenced_nonNull_native();
      v530 = v340;
      if (v354)
      {
        v94 = v506;
      }

      else
      {
        v94 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v506 + 2) + 1, 1, v506, &_ss23_ContiguousArrayStorageCy19TokenGenerationCore16EarleyRecognizerC0H4RuleVGMd, &_ss23_ContiguousArrayStorageCy19TokenGenerationCore16EarleyRecognizerC0H4RuleVGMR);
      }

      v356 = *(v94 + 2);
      v355 = *(v94 + 3);
      v357 = v501;
      if (v356 >= v355 >> 1)
      {
        v359 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v355 > 1), v356 + 1, 1, v94, &_ss23_ContiguousArrayStorageCy19TokenGenerationCore16EarleyRecognizerC0H4RuleVGMd, &_ss23_ContiguousArrayStorageCy19TokenGenerationCore16EarleyRecognizerC0H4RuleVGMR);
        v357 = v501;
        v94 = v359;
      }

      v96 = v357 + 1;
      *(v94 + 2) = v356 + 1;
      v358 = &v94[24 * v356];
      *(v358 + 4) = v352;
      *(v358 + 5) = v101;
      v358[48] = v353;
      v358[49] = v95 & 1;
      v555 = v94;
      v46 = v550;
    }

    while (v96 != v496);
    v360 = v94;

    swift_bridgeObjectRelease_n();
    v89 = v360;
    v544 = v360;
    v84 = v508;
    v85 = v494;
    v86 = v489;
    v87 = v490;
    v88 = v488;
LABEL_246:
    ++v87;
  }

  while (v87 != v86);
LABEL_249:
  v361 = v514;
  if (!*(v514 + 16))
  {
LABEL_390:
    __break(1u);
    goto LABEL_391;
  }

  v107 = v89;
  v508 = v84;
  v362 = specialized __RawDictionaryStorage.find<A>(_:)(v493, v492);
  if ((v363 & 1) == 0)
  {
LABEL_391:
    __break(1u);
LABEL_392:
    __break(1u);
LABEL_393:
    __break(1u);
    goto LABEL_394;
  }

  v539 = *(*(v361 + 56) + 8 * v362);

  v364 = v544;
  v365 = *(v544 + 16);

  if (!v365)
  {
LABEL_326:
    v370 = v107;
    goto LABEL_327;
  }

  v366 = 0;
  v367 = v364 + 32;
  v549 = (v529 + 16);
  v368 = v364;
  v369 = v508;
  v370 = v107;
  v542 = v365;
  v543 = v364 + 32;
  while (2)
  {
    v551 = v368 + 32;
    v548 = v79;
    v506 = v370;
    while (2)
    {
      if (v366 >= *(v364 + 16))
      {
        goto LABEL_372;
      }

      v371 = v366;
      v372 = 24 * v366;
      v373 = v367 + 24 * v366++;
      if (*(v373 + 16) != 1 || (v374 = *(v373 + 8), (v375 = *(v374 + 16)) == 0) || (v376 = 16 * v375 - 16, v377 = v374 + v376, *(v377 + 40) != 1))
      {
LABEL_254:
        if (v366 == v365)
        {
          goto LABEL_327;
        }

        continue;
      }

      break;
    }

    v547 = v366;
    v378 = *(v377 + 32);
    if (*(v369 + 16))
    {
      v379 = specialized __RawDictionaryStorage.find<A>(_:)(v378);
      if (v380)
      {
        v441 = v540;
        if (*(v540 + 16))
        {
          v442 = specialized __RawDictionaryStorage.find<A>(_:)(*(*(v508 + 56) + 8 * v379));
          v443 = v491;
          if (v444)
          {
            (*(v529 + 16))(v491, *(v441 + 56) + *(v529 + 72) * v442, v533);
            swift_storeEnumTagMultiPayload();
            v445 = v548;
            v446 = v548 + 2;
            if (v548[2])
            {
              v447 = specialized __RawDictionaryStorage.find<A>(_:)(v443);
              if (v448)
              {
                v446 = (v445[7] + 8 * v447);
              }
            }

            v449 = *v446;
            swift_beginAccess();
            v450 = swift_isUniquelyReferenced_nonNull_native();
            v552 = v554;
            v554 = 0x8000000000000000;
            specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v449, v443, v450);
            v451 = v552;
            v554 = v552;
            swift_endAccess();
            if (v371 < *(v368 + 16))
            {
              v452 = *(v551 + v372);
              v453 = *(v551 + v372 + 8);
              LODWORD(v551) = *(v551 + v372 + 16);
              swift_bridgeObjectRetain_n();
              v454 = v453;
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v454 = specialized _ArrayBuffer._consumeAndCreateNew()(v453);
              }

              if (v375 <= *(v454 + 2))
              {
                v455 = &v454[v376];
                *(v455 + 4) = v449;
                v455[40] = 0;

                swift_beginAccess();
                v456 = swift_isUniquelyReferenced_nonNull_native();
                v555 = v368;
                if (v456)
                {
                  v457 = v368;
                }

                else
                {
                  v457 = specialized _ArrayBuffer._consumeAndCreateNew()(v368);
                  v555 = v457;
                }

                v79 = v451;
                v364 = v544;
                if (v371 < *(v457 + 2))
                {
                  v458 = &v457[v372];
                  v459 = *&v457[v372 + 40];
                  *(v458 + 4) = v452;
                  *(v458 + 5) = v454;
                  v458[48] = v551;
                  v458[49] = 1;
                  v555 = v457;
                  v460 = v457;
                  swift_endAccess();

                  outlined destroy of PromptTemplateInfo.RichVariableBinding.Component(v491, type metadata accessor for TerminalSymbol);
                  v370 = v460;
                  v368 = v460;
                  goto LABEL_322;
                }

LABEL_398:
                __break(1u);
LABEL_399:
                KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
                __break(1u);
LABEL_400:
                KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
                __break(1u);
                v487 = *(v486 - 256);
                result = swift_unexpectedError();
                __break(1u);
                return result;
              }

LABEL_397:
              __break(1u);
              goto LABEL_398;
            }

LABEL_396:
            __break(1u);
            goto LABEL_397;
          }

LABEL_395:
          __break(1u);
          goto LABEL_396;
        }

LABEL_394:
        __break(1u);
        goto LABEL_395;
      }
    }

    v381 = 0;
    v382 = MEMORY[0x1E69E7CC0];
    v553[0] = MEMORY[0x1E69E7CC0];
    v383 = *(v368 + 16);
LABEL_262:
    v384 = 24 * v381;
    v385 = v533;
    v386 = v502;
    while (v383 != v381)
    {
      if (v381 >= *(v368 + 16))
      {
        goto LABEL_360;
      }

      v387 = *(v368 + v384 + 32);
      ++v381;
      v384 += 24;
      if (v387 == v378)
      {
        v388 = v368 + v384;
        v389 = *(v388 + 16);
        v390 = *(v388 + 24);
        v391 = *(v388 + 25);

        v392 = swift_isUniquelyReferenced_nonNull_native();
        v553[0] = v382;
        if ((v392 & 1) == 0)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v382 + 16) + 1, 1);
          v382 = v553[0];
        }

        v394 = *(v382 + 16);
        v393 = *(v382 + 24);
        if (v394 >= v393 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v393 > 1), v394 + 1, 1);
          v382 = v553[0];
        }

        *(v382 + 16) = v394 + 1;
        v395 = v382 + 32 * v394;
        *(v395 + 32) = v381 - 1;
        *(v395 + 40) = v378;
        *(v395 + 48) = v389;
        *(v395 + 56) = v390;
        *(v395 + 57) = v391;
        v79 = v548;
        goto LABEL_262;
      }
    }

    v396 = *(v382 + 16);
    if (!v396)
    {

      v369 = v508;
      v370 = v506;
      v367 = v543;
      v364 = v544;
      v365 = v542;
      v366 = v547;
      goto LABEL_254;
    }

    v397 = 0;
    v538 = (v382 + 32);
    v537 = v382;
    v536 = v396;
    while (2)
    {
      if (v397 >= *(v382 + 16))
      {
        goto LABEL_389;
      }

      v398 = &v538[8 * v397];
      v399 = v398[2];
      v400 = *(v399 + 16);
      if (v400)
      {
        v541 = v397;
        v548 = v79;
        v401 = *v398;
        v551 = 24 * *v398;

        v402 = 0;
        v403 = 0;
        v404 = v508;
        v405 = v506;
        v550 = v400;
        while (1)
        {
          if (v403 >= *(v399 + 16))
          {
            goto LABEL_367;
          }

          if (*(v399 + v402 + 40) == 1 && *(v404 + 16))
          {
            v406 = v405;
            v407 = specialized __RawDictionaryStorage.find<A>(_:)(*(v399 + v402 + 32));
            if (v408)
            {
              v409 = v540;
              if (!*(v540 + 16))
              {
                goto LABEL_379;
              }

              v410 = specialized __RawDictionaryStorage.find<A>(_:)(*(*(v508 + 56) + 8 * v407));
              if ((v411 & 1) == 0)
              {
                goto LABEL_380;
              }

              (*(v529 + 16))(v386, *(v409 + 56) + *(v529 + 72) * v410, v385);
              swift_storeEnumTagMultiPayload();
              v412 = v548;
              v413 = v548 + 2;
              if (v548[2])
              {
                v414 = specialized __RawDictionaryStorage.find<A>(_:)(v386);
                if (v415)
                {
                  v413 = (v412[7] + 8 * v414);
                }
              }

              v416 = *v413;
              swift_beginAccess();
              v417 = swift_isUniquelyReferenced_nonNull_native();
              v418 = v554;
              v552 = v554;
              v554 = 0x8000000000000000;
              v419 = specialized __RawDictionaryStorage.find<A>(_:)(v502);
              v421 = v420;
              v422 = *(v418 + 16);
              v423 = (v420 & 1) == 0;
              if (__OFADD__(v422, v423))
              {
                goto LABEL_381;
              }

              v424 = v419;
              if (specialized _NativeDictionary.ensureUnique(isUnique:capacity:)(v417, v422 + v423))
              {
                v425 = v502;
                v426 = specialized __RawDictionaryStorage.find<A>(_:)(v502);
                if ((v421 & 1) != (v427 & 1))
                {
                  goto LABEL_399;
                }

                v424 = v426;
                v428 = v552;
                if ((v421 & 1) == 0)
                {
LABEL_294:
                  v428[(v424 >> 6) + 8] |= 1 << v424;
                  outlined init with copy of TerminalSymbol(v425, v428[6] + *(v545 + 72) * v424, type metadata accessor for TerminalSymbol);
                  *(v428[7] + 8 * v424) = v416;
                  v429 = v428[2];
                  v129 = __OFADD__(v429, 1);
                  v430 = v429 + 1;
                  if (v129)
                  {
                    goto LABEL_387;
                  }

                  v428[2] = v430;
                  goto LABEL_298;
                }
              }

              else
              {
                v425 = v502;
                v428 = v552;
                if ((v421 & 1) == 0)
                {
                  goto LABEL_294;
                }
              }

              *(v428[7] + 8 * v424) = v416;
LABEL_298:
              v548 = v428;
              v554 = v428;
              swift_endAccess();
              if ((v401 & 0x8000000000000000) != 0)
              {
                goto LABEL_382;
              }

              if (v401 >= *(v368 + 16))
              {
                goto LABEL_383;
              }

              v432 = *(v368 + v551 + 32);
              v431 = *(v368 + v551 + 40);
              v433 = *(v368 + v551 + 48);
              swift_bridgeObjectRetain_n();
              v434 = v431;
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v434 = specialized _ArrayBuffer._consumeAndCreateNew()(v431);
              }

              if (v403 >= *(v434 + 2))
              {
                goto LABEL_384;
              }

              v435 = &v434[v402];
              *(v435 + 4) = v416;
              v435[40] = 0;

              swift_beginAccess();
              v436 = swift_isUniquelyReferenced_nonNull_native();
              v555 = v368;
              if (v436)
              {
                v437 = v368;
              }

              else
              {
                v437 = specialized _ArrayBuffer._consumeAndCreateNew()(v368);
                v555 = v437;
              }

              if (v401 >= *(v437 + 2))
              {
                goto LABEL_385;
              }

              v438 = &v437[v551];
              v439 = *&v437[v551 + 40];
              *(v438 + 4) = v432;
              *(v438 + 5) = v434;
              v438[48] = v433;
              v438[49] = 1;
              v555 = v437;
              v440 = v437;
              swift_endAccess();

              v386 = v502;
              outlined destroy of PromptTemplateInfo.RichVariableBinding.Component(v502, type metadata accessor for TerminalSymbol);
              v405 = v440;
              v368 = v440;
              v385 = v533;
              v404 = v508;
              v400 = v550;
              goto LABEL_280;
            }

            v404 = v508;
            v405 = v406;
          }

LABEL_280:
          ++v403;
          v402 += 16;
          if (v400 == v403)
          {
            v506 = v405;

            v79 = v548;
            v382 = v537;
            v396 = v536;
            v397 = v541;
            break;
          }
        }
      }

      if (++v397 != v396)
      {
        continue;
      }

      break;
    }

    v370 = v506;
    v364 = v544;
LABEL_322:
    v365 = v542;
    v367 = v543;
    v366 = v547;
    v369 = v508;
    if (v547 != v542)
    {
      continue;
    }

    break;
  }

LABEL_327:
  v506 = v370;

  v461 = v503;
  *v503 = 46;
  swift_storeEnumTagMultiPayload();
  v551 = _sSa9repeating5countSayxGx_SitcfC19TokenGenerationCore14TerminalSymbolO_Tt1g5(v461, *(v79 + 16));
  v462 = v79 + 64;
  v463 = 1 << *(v79 + 32);
  v464 = -1;
  if (v463 < 64)
  {
    v464 = ~(-1 << v463);
  }

  v465 = v464 & *(v79 + 64);
  v466 = v79;
  v467 = (v463 + 63) >> 6;
  v548 = v466;

  v468 = 0;
  if (!v465)
  {
LABEL_331:
    if (v467 <= v468 + 1)
    {
      v470 = v468 + 1;
    }

    else
    {
      v470 = v467;
    }

    v471 = v470 - 1;
    while (1)
    {
      v469 = v468 + 1;
      if (__OFADD__(v468, 1))
      {
        goto LABEL_353;
      }

      if (v469 >= v467)
      {
        v484 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19TokenGenerationCore14TerminalSymbolO3key_Si5valuetMd, &_s19TokenGenerationCore14TerminalSymbolO3key_Si5valuetMR);
        v480 = v505;
        (*(*(v484 - 8) + 56))(v505, 1, 1, v484);
        v465 = 0;
        goto LABEL_339;
      }

      v465 = *(v462 + 8 * v469);
      ++v468;
      if (v465)
      {
        goto LABEL_338;
      }
    }
  }

  while (1)
  {
    v469 = v468;
LABEL_338:
    v472 = __clz(__rbit64(v465));
    v465 &= v465 - 1;
    v473 = v472 | (v469 << 6);
    v474 = v548;
    v475 = v503;
    outlined init with copy of TerminalSymbol(v548[6] + *(v545 + 72) * v473, v503, type metadata accessor for TerminalSymbol);
    v476 = *(v474[7] + 8 * v473);
    v477 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19TokenGenerationCore14TerminalSymbolO3key_Si5valuetMd, &_s19TokenGenerationCore14TerminalSymbolO3key_Si5valuetMR);
    v478 = *(v477 + 48);
    v479 = v475;
    v480 = v505;
    outlined init with take of TerminalSymbol(v479, v505, type metadata accessor for TerminalSymbol);
    *(v480 + v478) = v476;
    (*(*(v477 - 8) + 56))(v480, 0, 1, v477);
    v471 = v469;
LABEL_339:
    v481 = v504;
    outlined init with take of (key: TerminalSymbol, value: Int)?(v480, v504);
    v482 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19TokenGenerationCore14TerminalSymbolO3key_Si5valuetMd, &_s19TokenGenerationCore14TerminalSymbolO3key_Si5valuetMR);
    if ((*(*(v482 - 8) + 48))(v481, 1, v482) == 1)
    {
      break;
    }

    v483 = *(v481 + *(v482 + 48));
    outlined init with take of TerminalSymbol(v481, v513, type metadata accessor for TerminalSymbol);
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      if ((v483 & 0x8000000000000000) != 0)
      {
        goto LABEL_347;
      }
    }

    else
    {
      v551 = specialized _ArrayBuffer._consumeAndCreateNew()(v551);
      if ((v483 & 0x8000000000000000) != 0)
      {
LABEL_347:
        __break(1u);
        break;
      }
    }

    if (v483 >= *(v551 + 16))
    {
      goto LABEL_368;
    }

    outlined assign with take of TerminalSymbol(v513, v551 + ((*(v545 + 80) + 32) & ~*(v545 + 80)) + *(v545 + 72) * v483);
    v468 = v471;
    if (!v465)
    {
      goto LABEL_331;
    }
  }

  return v539;
}

void *EarleyRecognizer.RecognizerGrammar.deinit()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  v4 = v0[5];

  v5 = v0[7];

  v6 = v0[8];

  v7 = v0[9];

  return v0;
}

uint64_t EarleyRecognizer.RecognizerGrammar.__deallocating_deinit()
{
  EarleyRecognizer.RecognizerGrammar.deinit();

  return swift_deallocClassInstance();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance EarleyRecognizer.RecognizerRule()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  v4 = *(v0 + 17);
  Hasher.init(_seed:)();
  MEMORY[0x1AC57CB80](v1);
  specialized Array<A>.hash(into:)(v6, v2);
  Hasher._combine(_:)(v3);
  Hasher._combine(_:)(v4);
  return Hasher._finalize()();
}

void protocol witness for Hashable.hash(into:) in conformance EarleyRecognizer.RecognizerRule(uint64_t a1)
{
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 17);
  MEMORY[0x1AC57CB80](*v1);
  specialized Array<A>.hash(into:)(a1, v3);
  Hasher._combine(_:)(v4);
  Hasher._combine(_:)(v5);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance EarleyRecognizer.RecognizerRule()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  v4 = *(v0 + 17);
  Hasher.init(_seed:)();
  MEMORY[0x1AC57CB80](v1);
  specialized Array<A>.hash(into:)(v6, v2);
  Hasher._combine(_:)(v3);
  Hasher._combine(_:)(v4);
  return Hasher._finalize()();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance EarleyRecognizer.RecognizerRule(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v2 = *(a1 + 17);
  v3 = *(a2 + 17);
  v4 = *(a2 + 16);
  v5 = *(a1 + 16);
  v6 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ19TokenGenerationCore16EarleyRecognizerC0F6SymbolO_Tt1g5(*(a1 + 8), *(a2 + 8));
  if ((v4 ^ v5))
  {
    v7 = 0;
  }

  else
  {
    v7 = v2 ^ v3 ^ 1;
  }

  if (v6)
  {
    return v7;
  }

  else
  {
    return 0;
  }
}

uint64_t EarleyRecognizer.Item.getDescription(grammar:)(uint64_t a1)
{
  v3 = type metadata accessor for TerminalSymbol(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  result = MEMORY[0x1EEE9AC00](v3 - 8);
  v8 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v1;
  if ((*v1 & 0x8000000000000000) != 0)
  {
    goto LABEL_31;
  }

  v10 = *(a1 + 56);
  if (v9 >= *(v10 + 16))
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v11 = v10 + 24 * v9;
  v12 = *(v11 + 32);
  if ((v12 & 0x8000000000000000) != 0)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v13 = *(a1 + 16);
  if (v12 >= *(v13 + 16))
  {
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v14 = *(v11 + 40);
  v45 = v13 + 32;
  v15 = (v13 + 32 + 16 * v12);
  v16 = v15[1];
  v40 = *v15;
  v17 = *(v14 + 16);
  v41 = v16;
  v42 = v1;
  if (v17)
  {
    v43 = v13;
    v44 = a1;
    v46 = MEMORY[0x1E69E7CC0];

    result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v17, 0);
    v18 = v46;
    v39 = v14;
    v19 = (v14 + 40);
    while (1)
    {
      v20 = *(v19 - 1);
      if (*v19)
      {
        if (*v19 == 1)
        {
          if ((v20 & 0x8000000000000000) != 0)
          {
            goto LABEL_28;
          }

          if (v20 >= *(v43 + 16))
          {
            goto LABEL_30;
          }

          v21 = (v45 + 16 * v20);
          v22 = *v21;
          v23 = v21[1];
          v48 = 60;
          v49 = 0xE100000000000000;

          MEMORY[0x1AC57C120](v22, v23);
          MEMORY[0x1AC57C120](62, 0xE100000000000000);

          v25 = v48;
          v24 = v49;
        }

        else
        {
          v25 = 0;
          v24 = 0xE000000000000000;
        }
      }

      else
      {
        if ((v20 & 0x8000000000000000) != 0)
        {
          __break(1u);
LABEL_28:
          __break(1u);
LABEL_29:
          __break(1u);
LABEL_30:
          __break(1u);
LABEL_31:
          __break(1u);
          goto LABEL_32;
        }

        v26 = *(v44 + 24);
        if (v20 >= *(v26 + 16))
        {
          goto LABEL_29;
        }

        outlined init with copy of TerminalSymbol(v26 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v20, v8, type metadata accessor for TerminalSymbol);
        v25 = TerminalSymbol.description.getter();
        v24 = v27;
        result = outlined destroy of PromptTemplateInfo.RichVariableBinding.Component(v8, type metadata accessor for TerminalSymbol);
      }

      v46 = v18;
      v29 = *(v18 + 2);
      v28 = *(v18 + 3);
      if (v29 >= v28 >> 1)
      {
        result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v28 > 1), v29 + 1, 1);
        v18 = v46;
      }

      v19 += 16;
      *(v18 + 2) = v29 + 1;
      v30 = &v18[16 * v29];
      *(v30 + 4) = v25;
      *(v30 + 5) = v24;
      if (!--v17)
      {

        goto LABEL_21;
      }
    }
  }

  v18 = MEMORY[0x1E69E7CC0];
LABEL_21:
  v31 = v42;
  v32 = v42[1];
  v33 = *(v18 + 2);
  if (v33 < v32)
  {
    goto LABEL_35;
  }

  if (v32 < 0)
  {
LABEL_36:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v50 = v18;
  if (!isUniquelyReferenced_nonNull_native || v33 >= *(v18 + 3) >> 1)
  {
    v18 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v33 + 1, 1, v18);
    v50 = v18;
  }

  specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(v32, v32, 1, 12226530, 0xA300000000000000);
  v48 = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
  lazy protocol witness table accessor for type [String] and conformance [A]();
  v35 = BidirectionalCollection<>.joined(separator:)();
  v37 = v36;

  v48 = 0;
  v49 = 0xE000000000000000;
  _StringGuts.grow(_:)(19);
  v46 = 60;
  v47 = 0xE100000000000000;
  MEMORY[0x1AC57C120](v40, v41);
  MEMORY[0x1AC57C120](62, 0xE100000000000000);

  MEMORY[0x1AC57C120](v46, v47);

  MEMORY[0x1AC57C120](0x203D3A3A20, 0xE500000000000000);
  MEMORY[0x1AC57C120](v35, v37);

  MEMORY[0x1AC57C120](31520, 0xE200000000000000);
  v46 = v31[2];
  v38 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x1AC57C120](v38);

  MEMORY[0x1AC57C120](8069245, 0xE300000000000000);
  v46 = v31[3];
  LOBYTE(v47) = *(v31 + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSiSgMd, &_sSiSgMR);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x1AC57C120](125, 0xE100000000000000);
  return v48;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance EarleyRecognizer.Item()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  v5 = *(v0 + 32);
  Hasher.init(_seed:)();
  MEMORY[0x1AC57CB80](v1);
  MEMORY[0x1AC57CB80](v2);
  MEMORY[0x1AC57CB80](v4);
  if (v5 == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x1AC57CB80](v3);
  }

  return Hasher._finalize()();
}

void protocol witness for Hashable.hash(into:) in conformance EarleyRecognizer.Item()
{
  v1 = *(v0 + 8);
  v3 = *(v0 + 16);
  v2 = *(v0 + 24);
  v4 = *(v0 + 32);
  MEMORY[0x1AC57CB80](*v0);
  MEMORY[0x1AC57CB80](v1);
  MEMORY[0x1AC57CB80](v3);
  if (v4 == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x1AC57CB80](v2);
  }
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance EarleyRecognizer.Item()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  v5 = *(v0 + 32);
  Hasher.init(_seed:)();
  MEMORY[0x1AC57CB80](v1);
  MEMORY[0x1AC57CB80](v2);
  MEMORY[0x1AC57CB80](v4);
  if (v5 == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x1AC57CB80](v3);
  }

  return Hasher._finalize()();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance EarleyRecognizer.Item(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2 || *(a1 + 8) != *(a2 + 8) || *(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v5 = *(a2 + 32);
  if (*(a1 + 32))
  {
    if (*(a2 + 32))
    {
      return 1;
    }
  }

  else
  {
    if (*(a1 + 24) != *(a2 + 24))
    {
      v5 = 1;
    }

    if ((v5 & 1) == 0)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZSS_Tt1g5(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 40);
    for (i = (a2 + 40); ; i += 2)
    {
      v5 = *(v3 - 1) == *(i - 1) && *v3 == *i;
      if (!v5 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        break;
      }

      v3 += 2;
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZ19TokenGenerationCore4RuleV_Tt1g5(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      return 1;
    }

    v3 = (a1 + 48);
    for (i = (a2 + 48); ; i += 3)
    {
      v5 = *v3;
      v6 = *i;
      if (*(v3 - 2) != *(i - 2) || *(v3 - 1) != *(i - 1))
      {
        v8 = *(v3 - 1);
        v9 = *(i - 1);
        if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
          break;
        }
      }

      swift_bridgeObjectRetain_n();

      swift_bridgeObjectRetain_n();
      v10 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ19TokenGenerationCore6ChoiceV_Tt1g5(v5, v6);

      swift_bridgeObjectRelease_n();
      swift_bridgeObjectRelease_n();
      if ((v10 & 1) == 0)
      {
        break;
      }

      v3 += 3;
      if (!--v2)
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZ19TokenGenerationCore6ChoiceV_Tt1g5(uint64_t a1, uint64_t a2)
{
  v155 = type metadata accessor for CharacterSet();
  v160 = *(v155 - 8);
  v4 = *(v160 + 64);
  v5 = MEMORY[0x1EEE9AC00](v155);
  v7 = &v119 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v10 = &v119 - v9;
  v11 = MEMORY[0x1EEE9AC00](v8);
  v136 = &v119 - v12;
  MEMORY[0x1EEE9AC00](v11);
  v135 = &v119 - v13;
  v161 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19TokenGenerationCore14TerminalSymbolO_ACtMd, &_s19TokenGenerationCore14TerminalSymbolO_ACtMR);
  v14 = *(*(v161 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v161);
  v165 = &v119 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v119 - v17;
  v162 = type metadata accessor for TerminalSymbol(0);
  v140 = *(v162 - 8);
  v19 = *(v140 + 64);
  v20 = MEMORY[0x1EEE9AC00](v162);
  v154 = &v119 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x1EEE9AC00](v20);
  v147 = &v119 - v23;
  v24 = MEMORY[0x1EEE9AC00](v22);
  v148 = &v119 - v25;
  v26 = MEMORY[0x1EEE9AC00](v24);
  v153 = (&v119 - v27);
  v28 = MEMORY[0x1EEE9AC00](v26);
  v157 = &v119 - v29;
  v30 = MEMORY[0x1EEE9AC00](v28);
  v32 = &v119 - v31;
  v33 = MEMORY[0x1EEE9AC00](v30);
  v143 = &v119 - v34;
  v35 = MEMORY[0x1EEE9AC00](v33);
  v137 = &v119 - v36;
  v37 = MEMORY[0x1EEE9AC00](v35);
  v39 = &v119 - v38;
  v40 = MEMORY[0x1EEE9AC00](v37);
  v142 = (&v119 - v41);
  MEMORY[0x1EEE9AC00](v40);
  v150 = &v119 - v42;
  v156 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19TokenGenerationCore6SymbolO_ACtMd, &_s19TokenGenerationCore6SymbolO_ACtMR);
  v43 = *(*(v156 - 8) + 64);
  MEMORY[0x1EEE9AC00](v156);
  v152 = &v119 - v44;
  v163 = type metadata accessor for Symbol(0);
  v158 = *(v163 - 8);
  v45 = *(v158 + 64);
  v46 = MEMORY[0x1EEE9AC00](v163);
  v47 = MEMORY[0x1EEE9AC00](v46);
  v48 = MEMORY[0x1EEE9AC00](v47);
  v49 = MEMORY[0x1EEE9AC00](v48);
  v51 = &v119 - v50;
  result = MEMORY[0x1EEE9AC00](v49);
  v164 = &v119 - v56;
  v57 = *(a1 + 16);
  if (v57 != *(a2 + 16))
  {
    return 0;
  }

  if (!v57 || a1 == a2)
  {
    return 1;
  }

  v58 = 0;
  v59 = a1 + 32;
  v60 = a2 + 32;
  v138 = (v160 + 32);
  v139 = (v160 + 8);
  v133 = v51;
  v125 = v39;
  v127 = v7;
  v126 = v10;
  v130 = v18;
  v134 = v53;
  v129 = v54;
  v128 = v55;
  v122 = v57;
  v121 = a1 + 32;
  v120 = a2 + 32;
  while (1)
  {
    if (v58 == v57)
    {
      goto LABEL_82;
    }

    v61 = *(v59 + 8 * v58);
    v62 = *(v61 + 16);
    v159 = *(v60 + 8 * v58);
    v63 = *(v159 + 16);
    result = v62 == v63;
    if (v62 != v63)
    {
      return result;
    }

    if (v62 && v61 != v159)
    {
      break;
    }

LABEL_7:
    if (++v58 == v57)
    {
      return result;
    }
  }

  v141 = v62;
  v123 = v62 == v63;
  v124 = v58;
  v64 = (*(v158 + 80) + 32) & ~*(v158 + 80);
  v145 = v159 + v64;
  v146 = v61 + v64;

  v65 = 0;
  v66 = v152;
  v67 = v157;
  v144 = v61;
  while (1)
  {
    if (v65 >= *(v61 + 16))
    {
      __break(1u);
LABEL_81:
      __break(1u);
LABEL_82:
      __break(1u);
      return result;
    }

    v68 = *(v158 + 72) * v65;
    result = outlined init with copy of TerminalSymbol(v146 + v68, v164, type metadata accessor for Symbol);
    if (v65 >= *(v159 + 16))
    {
      goto LABEL_81;
    }

    outlined init with copy of TerminalSymbol(v145 + v68, v51, type metadata accessor for Symbol);
    v69 = (v66 + *(v156 + 48));
    outlined init with copy of TerminalSymbol(v164, v66, type metadata accessor for Symbol);
    outlined init with copy of TerminalSymbol(v51, v69, type metadata accessor for Symbol);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (!EnumCaseMultiPayload)
    {
      v92 = v66;
      v93 = v134;
      outlined init with copy of TerminalSymbol(v92, v134, type metadata accessor for Symbol);
      v94 = swift_getEnumCaseMultiPayload();
      v95 = v130;
      v96 = v150;
      if (v94)
      {
        outlined destroy of PromptTemplateInfo.RichVariableBinding.Component(v93, type metadata accessor for TerminalSymbol);
        v66 = v152;
        goto LABEL_71;
      }

      outlined init with take of TerminalSymbol(v69, v150, type metadata accessor for TerminalSymbol);
      v97 = *(v161 + 48);
      outlined init with copy of TerminalSymbol(v93, v95, type metadata accessor for TerminalSymbol);
      outlined init with copy of TerminalSymbol(v96, v95 + v97, type metadata accessor for TerminalSymbol);
      v98 = swift_getEnumCaseMultiPayload();
      if (v98 > 1)
      {
        if (v98 != 2)
        {
          outlined init with copy of TerminalSymbol(v95, v143, type metadata accessor for TerminalSymbol);
          v116 = swift_getEnumCaseMultiPayload();
          v66 = v152;
          if (v116 != 3)
          {
            goto LABEL_78;
          }

          v100 = *v143;
          v101 = *(v95 + v97);
          goto LABEL_59;
        }

        v107 = v137;
        outlined init with copy of TerminalSymbol(v95, v137, type metadata accessor for TerminalSymbol);
        if (swift_getEnumCaseMultiPayload() != 2)
        {
          goto LABEL_77;
        }

        v108 = *v138;
        v109 = v95 + v97;
        v110 = &v167;
      }

      else
      {
        if (!v98)
        {
          outlined init with copy of TerminalSymbol(v95, v142, type metadata accessor for TerminalSymbol);
          v99 = swift_getEnumCaseMultiPayload();
          v66 = v152;
          if (v99)
          {
            goto LABEL_78;
          }

          v100 = *v142;
          v101 = *(v95 + v97);
LABEL_59:
          if (v100 == v101)
          {
LABEL_60:
            outlined destroy of PromptTemplateInfo.RichVariableBinding.Component(v95, type metadata accessor for TerminalSymbol);
            outlined destroy of PromptTemplateInfo.RichVariableBinding.Component(v96, type metadata accessor for TerminalSymbol);
            outlined destroy of PromptTemplateInfo.RichVariableBinding.Component(v134, type metadata accessor for TerminalSymbol);
            v51 = v133;
            v67 = v157;
            goto LABEL_14;
          }

LABEL_76:
          outlined destroy of PromptTemplateInfo.RichVariableBinding.Component(v95, type metadata accessor for TerminalSymbol);
LABEL_79:
          v51 = v133;
          outlined destroy of PromptTemplateInfo.RichVariableBinding.Component(v96, type metadata accessor for TerminalSymbol);
          outlined destroy of PromptTemplateInfo.RichVariableBinding.Component(v134, type metadata accessor for TerminalSymbol);
          goto LABEL_68;
        }

        v107 = v125;
        outlined init with copy of TerminalSymbol(v95, v125, type metadata accessor for TerminalSymbol);
        if (swift_getEnumCaseMultiPayload() != 1)
        {
LABEL_77:
          (*v139)(v107, v155);
          v66 = v152;
LABEL_78:
          outlined destroy of [Regex2BNF.CharacterPredicate](v95, &_s19TokenGenerationCore14TerminalSymbolO_ACtMd, &_s19TokenGenerationCore14TerminalSymbolO_ACtMR);
          goto LABEL_79;
        }

        v108 = *v138;
        v109 = v95 + v97;
        v110 = &v166;
      }

      v112 = *(v110 - 32);
      v113 = v155;
      v108(v112, v109, v155);
      v114 = static CharacterSet.== infix(_:_:)();
      v115 = *v139;
      (*v139)(v112, v113);
      v115(v107, v113);
      v96 = v150;
      v66 = v152;
      if ((v114 & 1) == 0)
      {
        goto LABEL_76;
      }

      goto LABEL_60;
    }

    if (EnumCaseMultiPayload != 1)
    {
      v102 = v129;
      outlined init with copy of TerminalSymbol(v66, v129, type metadata accessor for Symbol);
      v104 = *v102;
      v103 = v102[1];
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        v105 = *v69;
        v106 = v69[1];
        if (v104 == v105 && v103 == v106)
        {
        }

        else
        {
          v111 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if ((v111 & 1) == 0)
          {
            goto LABEL_68;
          }
        }

        goto LABEL_14;
      }

LABEL_70:

LABEL_71:
      outlined destroy of [Regex2BNF.CharacterPredicate](v66, &_s19TokenGenerationCore6SymbolO_ACtMd, &_s19TokenGenerationCore6SymbolO_ACtMR);
      goto LABEL_72;
    }

    v71 = v128;
    outlined init with copy of TerminalSymbol(v66, v128, type metadata accessor for Symbol);
    v160 = *v71;
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      goto LABEL_70;
    }

    v72 = *v69;
    v73 = *(v160 + 16);
    if (v73 != *(v72 + 16))
    {

      v51 = v133;
      goto LABEL_68;
    }

    if (v73 && v160 != v72)
    {
      break;
    }

    v51 = v133;
LABEL_14:
    ++v65;
    outlined destroy of PromptTemplateInfo.RichVariableBinding.Component(v66, type metadata accessor for Symbol);
    outlined destroy of PromptTemplateInfo.RichVariableBinding.Component(v51, type metadata accessor for Symbol);
    result = outlined destroy of PromptTemplateInfo.RichVariableBinding.Component(v164, type metadata accessor for Symbol);
    v61 = v144;
    if (v65 == v141)
    {

      v57 = v122;
      v58 = v124;
      v59 = v121;
      v60 = v120;
      result = v123;
      goto LABEL_7;
    }
  }

  v74 = (*(v140 + 80) + 32) & ~*(v140 + 80);
  v149 = *(v140 + 72);
  v75 = v148;
  v132 = v72;
  v151 = v32;
  while (1)
  {
    outlined init with copy of TerminalSymbol(v160 + v74, v32, type metadata accessor for TerminalSymbol);
    outlined init with copy of TerminalSymbol(v72 + v74, v67, type metadata accessor for TerminalSymbol);
    v76 = v32;
    v77 = *(v161 + 48);
    v78 = v165;
    outlined init with copy of TerminalSymbol(v76, v165, type metadata accessor for TerminalSymbol);
    outlined init with copy of TerminalSymbol(v67, v78 + v77, type metadata accessor for TerminalSymbol);
    v79 = swift_getEnumCaseMultiPayload();
    if (v79 > 1)
    {
      break;
    }

    if (!v79)
    {
      outlined init with copy of TerminalSymbol(v165, v153, type metadata accessor for TerminalSymbol);
      if (swift_getEnumCaseMultiPayload())
      {
        goto LABEL_66;
      }

      v80 = *v153;
      v81 = *(v165 + v77);
LABEL_24:
      if (v80 != v81)
      {
        goto LABEL_62;
      }

      goto LABEL_25;
    }

    outlined init with copy of TerminalSymbol(v165, v75, type metadata accessor for TerminalSymbol);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      v117 = v75;
      goto LABEL_65;
    }

    v87 = v126;
    v88 = v155;
    (*v138)(v126, v165 + v77, v155);
    v89 = static CharacterSet.== infix(_:_:)();
    v90 = *v139;
    v91 = v87;
    v67 = v157;
    (*v139)(v91, v88);
    v90(v75, v88);
    v72 = v132;
    if ((v89 & 1) == 0)
    {
LABEL_62:
      outlined destroy of PromptTemplateInfo.RichVariableBinding.Component(v165, type metadata accessor for TerminalSymbol);
      goto LABEL_67;
    }

LABEL_25:
    outlined destroy of PromptTemplateInfo.RichVariableBinding.Component(v165, type metadata accessor for TerminalSymbol);
    outlined destroy of PromptTemplateInfo.RichVariableBinding.Component(v67, type metadata accessor for TerminalSymbol);
    v32 = v151;
    outlined destroy of PromptTemplateInfo.RichVariableBinding.Component(v151, type metadata accessor for TerminalSymbol);
    v74 += v149;
    if (!--v73)
    {

      v51 = v133;
      v66 = v152;
      goto LABEL_14;
    }
  }

  if (v79 != 2)
  {
    outlined init with copy of TerminalSymbol(v165, v154, type metadata accessor for TerminalSymbol);
    if (swift_getEnumCaseMultiPayload() != 3)
    {
      goto LABEL_66;
    }

    v80 = *v154;
    v81 = *(v165 + v77);
    goto LABEL_24;
  }

  v82 = v147;
  outlined init with copy of TerminalSymbol(v165, v147, type metadata accessor for TerminalSymbol);
  if (swift_getEnumCaseMultiPayload() == 2)
  {
    v83 = v127;
    v84 = v155;
    (*v138)(v127, v165 + v77, v155);
    v131 = static CharacterSet.== infix(_:_:)();
    v85 = *v139;
    v86 = v83;
    v67 = v157;
    (*v139)(v86, v84);
    v85(v82, v84);
    v75 = v148;
    v72 = v132;
    if ((v131 & 1) == 0)
    {
      goto LABEL_62;
    }

    goto LABEL_25;
  }

  v117 = v82;
LABEL_65:
  (*v139)(v117, v155);
LABEL_66:
  outlined destroy of [Regex2BNF.CharacterPredicate](v165, &_s19TokenGenerationCore14TerminalSymbolO_ACtMd, &_s19TokenGenerationCore14TerminalSymbolO_ACtMR);
LABEL_67:
  v118 = v151;
  outlined destroy of PromptTemplateInfo.RichVariableBinding.Component(v67, type metadata accessor for TerminalSymbol);
  outlined destroy of PromptTemplateInfo.RichVariableBinding.Component(v118, type metadata accessor for TerminalSymbol);

  v51 = v133;
  v66 = v152;
LABEL_68:
  outlined destroy of PromptTemplateInfo.RichVariableBinding.Component(v66, type metadata accessor for Symbol);
LABEL_72:
  outlined destroy of PromptTemplateInfo.RichVariableBinding.Component(v51, type metadata accessor for Symbol);
  outlined destroy of PromptTemplateInfo.RichVariableBinding.Component(v164, type metadata accessor for Symbol);

  return 0;
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZ19TokenGenerationCore6SymbolO_Tt1g5(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CharacterSet();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = &v87 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v105 = &v87 - v10;
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19TokenGenerationCore14TerminalSymbolO_ACtMd, &_s19TokenGenerationCore14TerminalSymbolO_ACtMR);
  v11 = *(*(v112 - 8) + 64);
  MEMORY[0x1EEE9AC00](v112);
  v13 = &v87 - v12;
  v115 = type metadata accessor for TerminalSymbol(0);
  v99 = *(v115 - 8);
  v14 = *(v99 + 64);
  v15 = MEMORY[0x1EEE9AC00](v115);
  v110 = &v87 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v106 = &v87 - v18;
  v19 = MEMORY[0x1EEE9AC00](v17);
  v107 = &v87 - v20;
  v21 = MEMORY[0x1EEE9AC00](v19);
  v109 = (&v87 - v22);
  v23 = MEMORY[0x1EEE9AC00](v21);
  v116 = &v87 - v24;
  v25 = MEMORY[0x1EEE9AC00](v23);
  v111 = &v87 - v26;
  MEMORY[0x1EEE9AC00](v25);
  v104 = &v87 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19TokenGenerationCore6SymbolO_ACtMd, &_s19TokenGenerationCore6SymbolO_ACtMR);
  v29 = *(*(v28 - 8) + 64);
  MEMORY[0x1EEE9AC00](v28);
  v117 = &v87 - v30;
  v114 = type metadata accessor for Symbol(0);
  v31 = *(*(v114 - 8) + 64);
  v32 = MEMORY[0x1EEE9AC00](v114);
  v33 = MEMORY[0x1EEE9AC00](v32);
  MEMORY[0x1EEE9AC00](v33);
  v35 = MEMORY[0x1EEE9AC00](&v87 - v34);
  v37 = &v87 - v36;
  v38 = MEMORY[0x1EEE9AC00](v35);
  v43 = &v87 - v40;
  v44 = *(a1 + 16);
  if (v44 != *(a2 + 16))
  {
    return 0;
  }

  if (!v44 || a1 == a2)
  {
    return 1;
  }

  v89 = v38;
  v90 = v42;
  v91 = v41;
  v88 = v9;
  v45 = 0;
  v46 = (*(v39 + 80) + 32) & ~*(v39 + 80);
  v103 = a1 + v46;
  v101 = a2 + v46;
  v95 = (v5 + 32);
  v98 = (v5 + 8);
  v102 = *(v39 + 72);
  v94 = &v87 - v40;
  v100 = v28;
  v96 = v37;
  while (1)
  {
    v47 = v102 * v45;
    result = outlined init with copy of TerminalSymbol(v103 + v102 * v45, v43, type metadata accessor for Symbol);
    if (v45 == v44)
    {
      __break(1u);
      return result;
    }

    outlined init with copy of TerminalSymbol(v101 + v47, v37, type metadata accessor for Symbol);
    v49 = (v117 + *(v28 + 48));
    outlined init with copy of TerminalSymbol(v43, v117, type metadata accessor for Symbol);
    outlined init with copy of TerminalSymbol(v37, v49, type metadata accessor for Symbol);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (!EnumCaseMultiPayload)
    {
      v72 = v45;
      v73 = v4;
      v74 = v117;
      v75 = v44;
      v76 = v89;
      outlined init with copy of TerminalSymbol(v117, v89, type metadata accessor for Symbol);
      if (!swift_getEnumCaseMultiPayload())
      {
        v77 = v104;
        outlined init with take of TerminalSymbol(v49, v104, type metadata accessor for TerminalSymbol);
        v78 = specialized static TerminalSymbol.== infix(_:_:)(v76, v77);
        outlined destroy of PromptTemplateInfo.RichVariableBinding.Component(v77, type metadata accessor for TerminalSymbol);
        outlined destroy of PromptTemplateInfo.RichVariableBinding.Component(v76, type metadata accessor for TerminalSymbol);
        outlined destroy of PromptTemplateInfo.RichVariableBinding.Component(v74, type metadata accessor for Symbol);
        v44 = v75;
        v4 = v73;
        v45 = v72;
        v37 = v96;
        if ((v78 & 1) == 0)
        {
          goto LABEL_55;
        }

        goto LABEL_7;
      }

      outlined destroy of PromptTemplateInfo.RichVariableBinding.Component(v76, type metadata accessor for TerminalSymbol);
      v37 = v96;
      goto LABEL_54;
    }

    if (EnumCaseMultiPayload != 1)
    {
      v79 = v91;
      outlined init with copy of TerminalSymbol(v117, v91, type metadata accessor for Symbol);
      v81 = *v79;
      v80 = v79[1];
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        v82 = *v49;
        v83 = v49[1];
        if (v81 == v82 && v80 == v83)
        {
        }

        else
        {
          v85 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if ((v85 & 1) == 0)
          {
            outlined destroy of PromptTemplateInfo.RichVariableBinding.Component(v117, type metadata accessor for Symbol);
            v43 = v94;
            goto LABEL_55;
          }
        }

        goto LABEL_6;
      }

      v43 = v94;
LABEL_54:
      outlined destroy of [Regex2BNF.CharacterPredicate](v117, &_s19TokenGenerationCore6SymbolO_ACtMd, &_s19TokenGenerationCore6SymbolO_ACtMR);
      goto LABEL_55;
    }

    v51 = v90;
    outlined init with copy of TerminalSymbol(v117, v90, type metadata accessor for Symbol);
    v113 = *v51;
    if (swift_getEnumCaseMultiPayload() != 1)
    {

      goto LABEL_54;
    }

    v52 = *v49;
    v53 = *(v113 + 16);
    if (v53 != *(v52 + 16))
    {

      v37 = v96;
      goto LABEL_50;
    }

    if (v53)
    {
      v54 = v111;
      if (v113 != v52)
      {
        break;
      }
    }

    v37 = v96;
LABEL_6:
    outlined destroy of PromptTemplateInfo.RichVariableBinding.Component(v117, type metadata accessor for Symbol);
    v43 = v94;
LABEL_7:
    ++v45;
    outlined destroy of PromptTemplateInfo.RichVariableBinding.Component(v37, type metadata accessor for Symbol);
    outlined destroy of PromptTemplateInfo.RichVariableBinding.Component(v43, type metadata accessor for Symbol);
    v28 = v100;
    if (v45 == v44)
    {
      return 1;
    }
  }

  v87 = v44;
  v97 = v4;
  v55 = (*(v99 + 80) + 32) & ~*(v99 + 80);
  v108 = *(v99 + 72);
  v56 = v107;
  v93 = v52;
  while (1)
  {
    outlined init with copy of TerminalSymbol(v113 + v55, v54, type metadata accessor for TerminalSymbol);
    v57 = v116;
    outlined init with copy of TerminalSymbol(v52 + v55, v116, type metadata accessor for TerminalSymbol);
    v58 = *(v112 + 48);
    outlined init with copy of TerminalSymbol(v54, v13, type metadata accessor for TerminalSymbol);
    outlined init with copy of TerminalSymbol(v57, &v13[v58], type metadata accessor for TerminalSymbol);
    v59 = swift_getEnumCaseMultiPayload();
    if (v59 > 1)
    {
      break;
    }

    if (!v59)
    {
      outlined init with copy of TerminalSymbol(v13, v109, type metadata accessor for TerminalSymbol);
      if (swift_getEnumCaseMultiPayload())
      {
        goto LABEL_48;
      }

      v60 = *v109;
      v61 = *&v13[v58];
LABEL_16:
      if (v60 != v61)
      {
        goto LABEL_44;
      }

      goto LABEL_17;
    }

    outlined init with copy of TerminalSymbol(v13, v56, type metadata accessor for TerminalSymbol);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      v86 = v56;
      goto LABEL_47;
    }

    v67 = v105;
    v68 = v97;
    (*v95)(v105, &v13[v58], v97);
    v69 = static CharacterSet.== infix(_:_:)();
    v70 = *v98;
    v71 = v67;
    v54 = v111;
    (*v98)(v71, v68);
    v70(v56, v68);
    v52 = v93;
    if ((v69 & 1) == 0)
    {
LABEL_44:
      outlined destroy of PromptTemplateInfo.RichVariableBinding.Component(v13, type metadata accessor for TerminalSymbol);
      goto LABEL_49;
    }

LABEL_17:
    outlined destroy of PromptTemplateInfo.RichVariableBinding.Component(v13, type metadata accessor for TerminalSymbol);
    outlined destroy of PromptTemplateInfo.RichVariableBinding.Component(v116, type metadata accessor for TerminalSymbol);
    outlined destroy of PromptTemplateInfo.RichVariableBinding.Component(v54, type metadata accessor for TerminalSymbol);
    v55 += v108;
    if (!--v53)
    {

      v4 = v97;
      v37 = v96;
      v44 = v87;
      goto LABEL_6;
    }
  }

  if (v59 != 2)
  {
    outlined init with copy of TerminalSymbol(v13, v110, type metadata accessor for TerminalSymbol);
    if (swift_getEnumCaseMultiPayload() != 3)
    {
      goto LABEL_48;
    }

    v60 = *v110;
    v61 = v13[v58];
    goto LABEL_16;
  }

  v62 = v106;
  outlined init with copy of TerminalSymbol(v13, v106, type metadata accessor for TerminalSymbol);
  if (swift_getEnumCaseMultiPayload() == 2)
  {
    v63 = v88;
    v64 = v97;
    (*v95)(v88, &v13[v58], v97);
    v92 = static CharacterSet.== infix(_:_:)();
    v65 = *v98;
    v66 = v63;
    v54 = v111;
    (*v98)(v66, v64);
    v65(v62, v64);
    v56 = v107;
    v52 = v93;
    if ((v92 & 1) == 0)
    {
      goto LABEL_44;
    }

    goto LABEL_17;
  }

  v86 = v62;
LABEL_47:
  (*v98)(v86, v97);
LABEL_48:
  outlined destroy of [Regex2BNF.CharacterPredicate](v13, &_s19TokenGenerationCore14TerminalSymbolO_ACtMd, &_s19TokenGenerationCore14TerminalSymbolO_ACtMR);
LABEL_49:
  outlined destroy of PromptTemplateInfo.RichVariableBinding.Component(v116, type metadata accessor for TerminalSymbol);
  outlined destroy of PromptTemplateInfo.RichVariableBinding.Component(v54, type metadata accessor for TerminalSymbol);

  v37 = v96;
  v43 = v94;
LABEL_50:
  outlined destroy of PromptTemplateInfo.RichVariableBinding.Component(v117, type metadata accessor for Symbol);
LABEL_55:
  outlined destroy of PromptTemplateInfo.RichVariableBinding.Component(v37, type metadata accessor for Symbol);
  outlined destroy of PromptTemplateInfo.RichVariableBinding.Component(v43, type metadata accessor for Symbol);
  return 0;
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZ19TokenGenerationCore4JSONO_Tt1g5(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || a1 == a2)
  {
    return 1;
  }

  v3 = (a2 + 48);
  for (i = (a1 + 48); ; i += 3)
  {
    v13 = *(i - 2);
    v14 = *(i - 1);
    v15 = *i;
    v16 = *(v3 - 2);
    v17 = *(v3 - 1);
    v18 = *v3;
    if (v15 > 2)
    {
      if (v15 == 3)
      {
        v22 = *(v3 - 2);
        v23 = *(v3 - 1);
        if (v18 != 3)
        {
          outlined copy of JSON(v22, v23, *v3);
          v28 = v13;
          v29 = v14;
          v30 = 3;
          goto LABEL_36;
        }

        outlined copy of JSON(v22, v23, 3);
        outlined copy of JSON(v13, v14, 3);
        outlined copy of JSON(v16, v17, 3);
        outlined copy of JSON(v13, v14, 3);
        v9 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ19TokenGenerationCore4JSONO_Tt1g5(v13, v16);
        outlined consume of JSON(v13, v14, 3);
        outlined consume of JSON(v16, v17, 3);
        outlined consume of JSON(v16, v17, 3);
        v10 = v13;
        v11 = v14;
        v12 = 3;
        goto LABEL_6;
      }

      if (v15 == 4)
      {
        v20 = *(v3 - 2);
        v21 = *(v3 - 1);
        if (v18 != 4)
        {
          outlined copy of JSON(v20, v21, *v3);
          v28 = v13;
          v29 = v14;
          v30 = 4;
          goto LABEL_36;
        }

        outlined copy of JSON(v20, v21, 4);
        outlined copy of JSON(v13, v14, 4);
        outlined copy of JSON(v16, v17, 4);
        outlined copy of JSON(v13, v14, 4);
        v9 = _sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZSS_19TokenGenerationCore4JSONOTt1g5(v13, v16);
        outlined consume of JSON(v13, v14, 4);
        outlined consume of JSON(v16, v17, 4);
        outlined consume of JSON(v16, v17, 4);
        v10 = v13;
        v11 = v14;
        v12 = 4;
        goto LABEL_6;
      }

      if (v18 != 5 || v17 | v16)
      {
LABEL_32:
        v28 = *(v3 - 2);
        v29 = *(v3 - 1);
        v30 = *v3;
        goto LABEL_36;
      }

      outlined consume of JSON(*(i - 2), *(i - 1), 5);
      v24 = 0;
      v25 = 0;
      v26 = 5;
      goto LABEL_30;
    }

    if (*i)
    {
      break;
    }

    if (*v3)
    {
      goto LABEL_32;
    }

    outlined consume of JSON(*(i - 2), *(i - 1), 0);
    outlined consume of JSON(v16, v17, 0);
    if ((v16 ^ v13))
    {
      return 0;
    }

LABEL_7:
    v3 += 24;
    if (!--v2)
    {
      return 1;
    }
  }

  if (v15 == 1)
  {
    if (v18 != 1)
    {
      goto LABEL_32;
    }

    v19 = *(v3 - 2);
    outlined consume of JSON(*(i - 2), *(i - 1), 1);
    outlined consume of JSON(v16, v17, 1);
    if (*&v13 != *&v16)
    {
      return 0;
    }

    goto LABEL_7;
  }

  if (v18 == 2)
  {
    if (v13 != v16 || v14 != v17)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *(v3 - 2);
      v8 = *(v3 - 1);
      v9 = _stringCompareWithSmolCheck(_:_:expecting:)();
      outlined copy of JSON(v16, v17, 2);
      outlined copy of JSON(v13, v14, 2);
      outlined consume of JSON(v13, v14, 2);
      v10 = v16;
      v11 = v17;
      v12 = 2;
LABEL_6:
      outlined consume of JSON(v10, v11, v12);
      if ((v9 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_7;
    }

    outlined copy of JSON(*(i - 2), *(i - 1), 2);
    outlined copy of JSON(v13, v14, 2);
    outlined consume of JSON(v13, v14, 2);
    v24 = v13;
    v25 = v14;
    v26 = 2;
LABEL_30:
    outlined consume of JSON(v24, v25, v26);
    goto LABEL_7;
  }

  outlined copy of JSON(*(v3 - 2), *(v3 - 1), *v3);
  v28 = v13;
  v29 = v14;
  v30 = 2;
LABEL_36:
  outlined copy of JSON(v28, v29, v30);
  outlined consume of JSON(v13, v14, v15);
  outlined consume of JSON(v16, v17, v18);
  return 0;
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZSi_Tt1g5(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = (result + 32);
  v4 = (a2 + 32);
  while (v2)
  {
    v6 = *v3++;
    v5 = v6;
    v7 = *v4++;
    result = v5 == v7;
    if (v5 != v7 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZ19TokenGenerationCore14TerminalSymbolO_Tt1g5Tm(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(void), uint64_t (*a5)(char *, char *), uint64_t (*a6)(void))
{
  v11 = a3(0);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x1EEE9AC00](v11 - 8);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v18 = &v26 - v17;
  v19 = *(a1 + 16);
  if (v19 == *(a2 + 16))
  {
    if (!v19 || a1 == a2)
    {
      v24 = 1;
    }

    else
    {
      v20 = (*(v16 + 80) + 32) & ~*(v16 + 80);
      v21 = a1 + v20;
      v22 = a2 + v20;
      v23 = *(v16 + 72);
      do
      {
        outlined init with copy of TerminalSymbol(v21, v18, a4);
        outlined init with copy of TerminalSymbol(v22, v15, a4);
        v24 = a5(v18, v15);
        outlined destroy of PromptTemplateInfo.RichVariableBinding.Component(v15, a6);
        outlined destroy of PromptTemplateInfo.RichVariableBinding.Component(v18, a6);
        if ((v24 & 1) == 0)
        {
          break;
        }

        v22 += v23;
        v21 += v23;
        --v19;
      }

      while (v19);
    }
  }

  else
  {
    v24 = 0;
  }

  return v24 & 1;
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZ19TokenGenerationCore18TokenizationResultO_Tt1g5(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Prompt.AttachmentContent(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19TokenGenerationCore18TokenizationResultO_ACtMd, &_s19TokenGenerationCore18TokenizationResultO_ACtMR);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v44 - v10;
  v12 = type metadata accessor for TokenizationResult(0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v44 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = (&v44 - v17);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v44 - v20;
  MEMORY[0x1EEE9AC00](v22);
  v25 = &v44 - v24;
  v26 = *(a1 + 16);
  if (v26 != *(a2 + 16))
  {
    return 0;
  }

  if (!v26 || a1 == a2)
  {
    return 1;
  }

  v44 = v18;
  v45 = v7;
  v27 = 0;
  v28 = (*(v23 + 80) + 32) & ~*(v23 + 80);
  v46 = a2 + v28;
  v47 = *(v23 + 72);
  v48 = a1 + v28;
  v49 = v26;
  while (1)
  {
    v29 = v47 * v27;
    result = outlined init with copy of TerminalSymbol(v48 + v47 * v27, v25, type metadata accessor for TokenizationResult);
    if (v27 == v49)
    {
      break;
    }

    outlined init with copy of TerminalSymbol(v46 + v29, v21, type metadata accessor for TokenizationResult);
    v31 = *(v8 + 48);
    outlined init with copy of TerminalSymbol(v25, v11, type metadata accessor for TokenizationResult);
    outlined init with copy of TerminalSymbol(v21, &v11[v31], type metadata accessor for TokenizationResult);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      outlined init with copy of TerminalSymbol(v11, v15, type metadata accessor for TokenizationResult);
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        outlined destroy of PromptTemplateInfo.RichVariableBinding.Component(v15, type metadata accessor for Prompt.AttachmentContent);
        goto LABEL_25;
      }

      v32 = v25;
      v33 = v21;
      v34 = v12;
      v35 = v8;
      v36 = v45;
      outlined init with take of TerminalSymbol(&v11[v31], v45, type metadata accessor for Prompt.AttachmentContent);
      v37 = static Prompt.AttachmentContent.== infix(_:_:)(v15, v36);
      v38 = v36;
      v8 = v35;
      v12 = v34;
      v21 = v33;
      v25 = v32;
      v18 = v44;
      outlined destroy of PromptTemplateInfo.RichVariableBinding.Component(v38, type metadata accessor for Prompt.AttachmentContent);
      outlined destroy of PromptTemplateInfo.RichVariableBinding.Component(v15, type metadata accessor for Prompt.AttachmentContent);
      if ((v37 & 1) == 0)
      {
        goto LABEL_22;
      }
    }

    else
    {
      outlined init with copy of TerminalSymbol(v11, v18, type metadata accessor for TokenizationResult);
      v39 = *v18;
      if (swift_getEnumCaseMultiPayload() == 1)
      {

LABEL_25:
        outlined destroy of [Regex2BNF.CharacterPredicate](v11, &_s19TokenGenerationCore18TokenizationResultO_ACtMd, &_s19TokenGenerationCore18TokenizationResultO_ACtMR);
        goto LABEL_26;
      }

      v40 = *&v11[v31];
      v41 = *(v39 + 16);
      if (v41 != *(v40 + 16))
      {
        goto LABEL_21;
      }

      if (v41 && v39 != v40)
      {
        v42 = (v39 + 32);
        v43 = (v40 + 32);
        while (*v42 == *v43)
        {
          ++v42;
          ++v43;
          if (!--v41)
          {
            goto LABEL_5;
          }
        }

LABEL_21:

LABEL_22:
        outlined destroy of PromptTemplateInfo.RichVariableBinding.Component(v11, type metadata accessor for TokenizationResult);
LABEL_26:
        outlined destroy of PromptTemplateInfo.RichVariableBinding.Component(v21, type metadata accessor for TokenizationResult);
        outlined destroy of PromptTemplateInfo.RichVariableBinding.Component(v25, type metadata accessor for TokenizationResult);
        return 0;
      }

LABEL_5:
    }

    ++v27;
    outlined destroy of PromptTemplateInfo.RichVariableBinding.Component(v11, type metadata accessor for TokenizationResult);
    outlined destroy of PromptTemplateInfo.RichVariableBinding.Component(v21, type metadata accessor for TokenizationResult);
    outlined destroy of PromptTemplateInfo.RichVariableBinding.Component(v25, type metadata accessor for TokenizationResult);
    if (v27 == v49)
    {
      return 1;
    }
  }

  __break(1u);
  return result;
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZ19TokenGenerationCore16EarleyRecognizerC0F4RuleV_Tt1g5(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = 0;
  v4 = result + 32;
  v5 = a2 + 32;
  while (v3 != v2)
  {
    v6 = v4 + 24 * v3;
    v7 = v5 + 24 * v3;
    if (*v6 != *v7)
    {
      return 0;
    }

    v8 = *(v6 + 8);
    v9 = *(v7 + 8);
    v10 = *(v8 + 16);
    if (v10 != *(v9 + 16))
    {
      return 0;
    }

    v11 = *(v6 + 16);
    v12 = *(v6 + 17);
    v13 = *(v7 + 16);
    v14 = *(v7 + 17);
    if (v10)
    {
      v15 = v8 == v9;
    }

    else
    {
      v15 = 1;
    }

    if (!v15)
    {
      v16 = (v8 + 40);
      result = v9 + 40;
      while (v10)
      {
        v18 = *(v16 - 1);
        v19 = *(result - 8);
        v20 = *result;
        if (*v16)
        {
          if (*v16 == 1)
          {
            if (v20 != 1 || v18 != v19)
            {
              return 0;
            }
          }

          else if (v20 != 2 || v19 != 0)
          {
            return 0;
          }
        }

        else
        {
          if (*result)
          {
            v17 = 0;
          }

          else
          {
            v17 = v18 == v19;
          }

          if (!v17)
          {
            return 0;
          }
        }

        v16 += 16;
        result += 16;
        if (!--v10)
        {
          goto LABEL_13;
        }
      }

      __break(1u);
      break;
    }

LABEL_13:
    result = 0;
    if (v11 == v13 && ((v12 ^ v14) & 1) == 0)
    {
      ++v3;
      result = 1;
      if (v3 != v2)
      {
        continue;
      }
    }

    return result;
  }

  __break(1u);
  return result;
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZ19TokenGenerationCore16EarleyRecognizerC0F6SymbolO_Tt1g5(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 40);
    v4 = (a2 + 40);
    do
    {
      v6 = *(v3 - 1);
      v7 = *(v4 - 1);
      v8 = *v4;
      if (*v3)
      {
        if (*v3 == 1)
        {
          if (v8 != 1 || v6 != v7)
          {
            return 0;
          }
        }

        else if (v8 != 2 || v7 != 0)
        {
          return 0;
        }
      }

      else
      {
        if (*v4)
        {
          v5 = 0;
        }

        else
        {
          v5 = v6 == v7;
        }

        if (!v5)
        {
          return 0;
        }
      }

      v3 += 16;
      v4 += 16;
      --v2;
    }

    while (v2);
  }

  return 1;
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZSay19TokenGenerationCore16EarleyRecognizerC5StateVG_Tt1g5(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = 0;
  v4 = result + 32;
  v5 = a2 + 32;
  while (v3 != v2)
  {
    v6 = *(v4 + 8 * v3);
    v7 = *(v5 + 8 * v3);
    v8 = *(v6 + 16);
    v9 = *(v7 + 16);
    result = v8 == v9;
    if (v8 != v9)
    {
      return result;
    }

    if (v8)
    {
      v10 = v6 == v7;
    }

    else
    {
      v10 = 1;
    }

    if (!v10)
    {
      v11 = 0;
      v12 = v6 + 32;
      v13 = v7 + 32;
      while (v11 != v8)
      {
        v14 = *(v12 + 8 * v11);
        v15 = *(v13 + 8 * v11);
        v16 = *(v14 + 16);
        if (v16 != *(v15 + 16))
        {
          return 0;
        }

        if (v16)
        {
          v17 = v14 == v15;
        }

        else
        {
          v17 = 1;
        }

        if (!v17)
        {
          v18 = (v15 + 64);
          v19 = (v14 + 64);
          while (v16)
          {
            if (*(v19 - 4) != *(v18 - 4) || *(v19 - 3) != *(v18 - 3) || *(v19 - 2) != *(v18 - 2))
            {
              return 0;
            }

            v20 = *v18;
            if (*v19)
            {
              if (!*v18)
              {
                return 0;
              }
            }

            else
            {
              if (*(v19 - 1) != *(v18 - 1))
              {
                v20 = 1;
              }

              if (v20)
              {
                return 0;
              }
            }

            v18 += 40;
            v19 += 40;
            if (!--v16)
            {
              goto LABEL_14;
            }
          }

          __break(1u);
          break;
        }

LABEL_14:
        if (++v11 == v8)
        {
          goto LABEL_12;
        }
      }

      __break(1u);
      break;
    }

LABEL_12:
    if (++v3 == v2)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZ19TokenGenerationCore16EarleyRecognizerC5StateV_Tt1g5(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = 0;
  v4 = result + 32;
  while (v3 != v2)
  {
    v5 = *(v4 + 8 * v3);
    v6 = *(a2 + 32 + 8 * v3);
    v7 = *(v5 + 16);
    v8 = *(v6 + 16);
    result = v7 == v8;
    if (v7 != v8)
    {
      return result;
    }

    if (v7)
    {
      v9 = v5 == v6;
    }

    else
    {
      v9 = 1;
    }

    if (!v9)
    {
      v10 = (v6 + 64);
      v11 = (v5 + 64);
      while (v7)
      {
        if (*(v11 - 4) != *(v10 - 4) || *(v11 - 3) != *(v10 - 3) || *(v11 - 2) != *(v10 - 2))
        {
          return 0;
        }

        v12 = *v10;
        if (*v11)
        {
          if (!*v10)
          {
            return 0;
          }
        }

        else
        {
          if (*(v11 - 1) != *(v10 - 1))
          {
            v12 = 1;
          }

          if (v12)
          {
            return 0;
          }
        }

        v10 += 40;
        v11 += 40;
        if (!--v7)
        {
          goto LABEL_5;
        }
      }

      __break(1u);
      break;
    }

LABEL_5:
    if (++v3 == v2)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZ19TokenGenerationCore16EarleyRecognizerC4ItemV_Tt1g5(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a2 + 64);
    for (i = (a1 + 64); ; i += 40)
    {
      v6 = *(i - 4) == *(v3 - 4) && *(i - 3) == *(v3 - 3);
      if (!v6 || *(i - 2) != *(v3 - 2))
      {
        break;
      }

      v5 = *v3;
      if (*i)
      {
        if (!*v3)
        {
          return 0;
        }
      }

      else
      {
        if (*(i - 1) != *(v3 - 1))
        {
          v5 = 1;
        }

        if (v5)
        {
          return 0;
        }
      }

      v3 += 40;
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZShySiG_Tt1g5(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      v8 = 1;
    }

    else
    {
      v3 = (a1 + 32);
      v4 = (a2 + 32);
      do
      {
        v6 = *v3++;
        v5 = v6;
        v7 = *v4++;
        v8 = _sSh2eeoiySbShyxG_ABtFZSi_Tt1g5(v5, v7);
        if ((v8 & 1) == 0)
        {
          break;
        }

        --v2;
      }

      while (v2);
    }
  }

  else
  {
    v8 = 0;
  }

  return v8 & 1;
}

BOOL _sSasSQRzlE2eeoiySbSayxG_ABtFZ15TokenGeneration6PromptV9DelimiterV_Tt1g5(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Locale();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v48 - v11;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleVSg_ADtMd, &_s10Foundation6LocaleVSg_ADtMR);
  v13 = *(*(v58 - 8) + 64);
  MEMORY[0x1EEE9AC00](v58);
  v15 = &v48 - v14;
  v56 = type metadata accessor for Prompt.Delimiter(0);
  v16 = *(*(v56 - 8) + 64);
  MEMORY[0x1EEE9AC00](v56);
  v18 = (&v48 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v19);
  v22 = (&v48 - v21);
  v23 = *(a1 + 16);
  if (v23 == *(a2 + 16))
  {
    if (!v23 || a1 == a2)
    {
      return 1;
    }

    v52 = v12;
    v24 = (*(v20 + 80) + 32) & ~*(v20 + 80);
    v25 = a1 + v24;
    v26 = a2 + v24;
    v27 = (v5 + 48);
    v49 = (v5 + 32);
    v50 = v8;
    v51 = (v5 + 8);
    v28 = v26;
    v54 = *(v20 + 72);
    v55 = v27;
    v29 = v56;
    while (1)
    {
      outlined init with copy of TerminalSymbol(v25, v22, type metadata accessor for Prompt.Delimiter);
      v57 = v28;
      outlined init with copy of TerminalSymbol(v28, v18, type metadata accessor for Prompt.Delimiter);
      v30 = *v22 == *v18 && v22[1] == v18[1];
      if (!v30 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        break;
      }

      v59 = type metadata accessor for Prompt.SpecialToken(0);
      v31 = *(v59 + 20);
      v32 = *(v58 + 48);
      outlined init with copy of Locale?(v22 + v31, v15);
      outlined init with copy of Locale?(v18 + v31, &v15[v32]);
      v33 = *v27;
      if ((*v27)(v15, 1, v4) == 1)
      {
        if (v33(&v15[v32], 1, v4) != 1)
        {
          goto LABEL_29;
        }

        outlined destroy of [Regex2BNF.CharacterPredicate](v15, &_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
        v34 = v59;
      }

      else
      {
        v53 = v25;
        v35 = v52;
        outlined init with copy of Locale?(v15, v52);
        if (v33(&v15[v32], 1, v4) == 1)
        {
          (*v51)(v35, v4);
LABEL_29:
          outlined destroy of [Regex2BNF.CharacterPredicate](v15, &_s10Foundation6LocaleVSg_ADtMd, &_s10Foundation6LocaleVSg_ADtMR);
          break;
        }

        v36 = v50;
        (*v49)(v50, &v15[v32], v4);
        lazy protocol witness table accessor for type EarleyRecognizer and conformance EarleyRecognizer(&lazy protocol witness table cache variable for type Locale and conformance Locale, 255, MEMORY[0x1E6969770]);
        v37 = dispatch thunk of static Equatable.== infix(_:_:)();
        v38 = *v51;
        v39 = v36;
        v29 = v56;
        (*v51)(v39, v4);
        v38(v35, v4);
        outlined destroy of [Regex2BNF.CharacterPredicate](v15, &_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
        v25 = v53;
        v34 = v59;
        if ((v37 & 1) == 0)
        {
          break;
        }
      }

      v40 = *(v34 + 24);
      v41 = (v22 + v40);
      v42 = *(v22 + v40 + 8);
      v43 = (v18 + v40);
      v44 = v43[1];
      if (v42)
      {
        if (!v44 || (*v41 != *v43 || v42 != v44) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
          break;
        }
      }

      else if (v44)
      {
        break;
      }

      if (*(v22 + *(v34 + 28)) != *(v18 + *(v34 + 28)) || *(v22 + *(v29 + 20)) != *(v18 + *(v29 + 20)))
      {
        break;
      }

      v45 = *(v22 + *(v29 + 24));
      outlined destroy of PromptTemplateInfo.RichVariableBinding.Component(v22, type metadata accessor for Prompt.Delimiter);
      v46 = *(v18 + *(v29 + 24));
      outlined destroy of PromptTemplateInfo.RichVariableBinding.Component(v18, type metadata accessor for Prompt.Delimiter);
      result = v45 == v46;
      if (v45 == v46)
      {
        v27 = v55;
        v28 = v57 + v54;
        v25 += v54;
        if (--v23)
        {
          continue;
        }
      }

      return result;
    }

    outlined destroy of PromptTemplateInfo.RichVariableBinding.Component(v18, type metadata accessor for Prompt.Delimiter);
    outlined destroy of PromptTemplateInfo.RichVariableBinding.Component(v22, type metadata accessor for Prompt.Delimiter);
  }

  return 0;
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZ15TokenGeneration6PromptV10AttachmentV_Tt1g5(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Prompt.Attachment(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v21 - v10;
  v12 = *(a1 + 16);
  if (v12 != *(a2 + 16))
  {
    return 0;
  }

  if (!v12 || a1 == a2)
  {
    return 1;
  }

  v13 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v14 = a1 + v13;
  v15 = a2 + v13;
  v16 = *(v9 + 72);
  while (1)
  {
    result = outlined init with copy of TerminalSymbol(v14, v11, type metadata accessor for Prompt.Attachment);
    if (!v12)
    {
      break;
    }

    outlined init with copy of TerminalSymbol(v15, v7, type metadata accessor for Prompt.Attachment);
    if ((static Prompt.AttachmentContent.== infix(_:_:)(v11, v7) & 1) == 0 || *&v11[*(v4 + 20)] != *&v7[*(v4 + 20)])
    {
      outlined destroy of PromptTemplateInfo.RichVariableBinding.Component(v7, type metadata accessor for Prompt.Attachment);
      outlined destroy of PromptTemplateInfo.RichVariableBinding.Component(v11, type metadata accessor for Prompt.Attachment);
      return 0;
    }

    v18 = *&v11[*(v4 + 24)];
    outlined destroy of PromptTemplateInfo.RichVariableBinding.Component(v11, type metadata accessor for Prompt.Attachment);
    v19 = *&v7[*(v4 + 24)];
    outlined destroy of PromptTemplateInfo.RichVariableBinding.Component(v7, type metadata accessor for Prompt.Attachment);
    result = v18 == v19;
    v20 = v18 != v19 || v12-- == 1;
    v15 += v16;
    v14 += v16;
    if (v20)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZ10Foundation12CharacterSetV_Tt1g5Tm(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, void (*a5)(uint64_t), uint64_t a6)
{
  v33 = a5;
  v34 = a6;
  v32 = a4;
  v8 = a3(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v29 - v14;
  v16 = *(a1 + 16);
  if (v16 != *(a2 + 16))
  {
    v26 = 0;
    return v26 & 1;
  }

  if (!v16 || a1 == a2)
  {
    v26 = 1;
    return v26 & 1;
  }

  v17 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v18 = a1 + v17;
  v19 = a2 + v17;
  v21 = *(v9 + 16);
  v20 = v9 + 16;
  v22 = (v20 - 8);
  v30 = *(v20 + 56);
  v31 = v21;
  while (1)
  {
    v23 = v31;
    result = (v31)(v15, v18, v8);
    if (!v16)
    {
      break;
    }

    v25 = v20;
    v23(v13, v19, v8);
    lazy protocol witness table accessor for type EarleyRecognizer and conformance EarleyRecognizer(v32, 255, v33);
    v26 = dispatch thunk of static Equatable.== infix(_:_:)();
    v27 = *v22;
    (*v22)(v13, v8);
    v27(v15, v8);
    if (v26)
    {
      v19 += v30;
      v18 += v30;
      v28 = v16-- == 1;
      v20 = v25;
      if (!v28)
      {
        continue;
      }
    }

    return v26 & 1;
  }

  __break(1u);
  return result;
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZ15TokenGeneration6PromptV4TurnV7SegmentO_Tt1g5(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      v18 = 1;
    }

    else
    {
      v3 = (a2 + 80);
      v4 = a1 + 40;
      do
      {
        v5 = *v4;
        v6 = *(v4 + 8);
        v7 = *(v4 + 16);
        v8 = *(v4 + 24);
        v9 = *(v4 + 32);
        v10 = *(v4 + 40);
        v27 = *(v4 - 8);
        v28 = v5;
        v29 = v6;
        v30 = v7;
        v31 = v8;
        v32 = v9;
        v33 = v10;
        v12 = *(v3 - 5);
        v13 = *(v3 - 4);
        v14 = *(v3 - 3);
        v15 = *(v3 - 2);
        v16 = *(v3 - 1);
        v17 = *v3;
        v20 = *(v3 - 6);
        v11 = v20;
        v21 = v12;
        v22 = v13;
        v23 = v14;
        v24 = v15;
        v25 = v16;
        v26 = v17;
        outlined copy of Prompt.Turn.Segment(v27, v5, v6, v7, v8, v9, v10);
        outlined copy of Prompt.Turn.Segment(v11, v12, v13, v14, v15, v16, v17);
        v18 = specialized static Prompt.Turn.Segment.== infix(_:_:)(&v27, &v20);
        outlined consume of Prompt.Turn.Segment(v20, v21, v22, v23, v24, v25, v26);
        outlined consume of Prompt.Turn.Segment(v27, v28, v29, v30, v31, v32, v33);
        if ((v18 & 1) == 0)
        {
          break;
        }

        v4 += 56;
        v3 += 56;
        --v2;
      }

      while (v2);
    }
  }

  else
  {
    v18 = 0;
  }

  return v18 & 1;
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZ15TokenGeneration6PromptV8ToolCallV_Tt1g5(uint64_t a1, uint64_t a2)
{
  v52 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (v2 && a1 != a2)
    {
      v41 = 0;
      v3 = (a1 + 32);
      v4 = (a2 + 32);
      for (i = v2 - 1; ; --i)
      {
        v6 = v3[1];
        v44 = *v3;
        v45 = v6;
        v7 = v3[3];
        v46 = v3[2];
        v8 = *v4;
        v9 = v4[1];
        v47 = v7;
        v48 = v8;
        v10 = v4[2];
        v11 = v4[3];
        v49 = v9;
        v50 = v10;
        v51 = v11;
        if (v44 != v48 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
          goto LABEL_67;
        }

        v12 = v46;
        v13 = v50;
        if (v45 != v49 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
          goto LABEL_67;
        }

        if (v12 != v13 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
          goto LABEL_67;
        }

        v14 = *(&v47 + 1);
        v15 = v47;
        v16 = v51;
        if (*(&v47 + 1) >> 60 == 15)
        {
          if (*(&v51 + 1) >> 60 != 15)
          {
            goto LABEL_66;
          }

          outlined copy of Data?(v47, *(&v47 + 1));
          outlined copy of Data?(v16, *(&v16 + 1));
          outlined consume of Data?(v15, v14);
          goto LABEL_63;
        }

        if (*(&v51 + 1) >> 60 == 15)
        {
LABEL_66:
          outlined copy of Data?(v47, *(&v47 + 1));
          outlined copy of Data?(v16, *(&v16 + 1));
          outlined consume of Data?(v15, v14);
          outlined consume of Data?(v16, *(&v16 + 1));
          goto LABEL_67;
        }

        v17 = *(&v47 + 1) >> 62;
        v18 = *(&v51 + 1) >> 62;
        if (*(&v47 + 1) >> 62 == 3)
        {
          break;
        }

        if (v17 > 1)
        {
          if (v17 == 2)
          {
            v27 = *(v47 + 16);
            v26 = *(v47 + 24);
            v24 = __OFSUB__(v26, v27);
            v19 = v26 - v27;
            if (v24)
            {
              goto LABEL_71;
            }

            goto LABEL_29;
          }

          v19 = 0;
          if (v18 <= 1)
          {
            goto LABEL_30;
          }
        }

        else if (v17)
        {
          LODWORD(v19) = DWORD1(v47) - v47;
          if (__OFSUB__(DWORD1(v47), v47))
          {
            goto LABEL_72;
          }

          v19 = v19;
          if (v18 <= 1)
          {
LABEL_30:
            if (v18)
            {
              LODWORD(v25) = DWORD1(v51) - v51;
              if (__OFSUB__(DWORD1(v51), v51))
              {
                goto LABEL_70;
              }

              v25 = v25;
            }

            else
            {
              v25 = BYTE14(v51);
            }

            goto LABEL_36;
          }
        }

        else
        {
          v19 = BYTE14(v47);
          if (v18 <= 1)
          {
            goto LABEL_30;
          }
        }

LABEL_23:
        if (v18 != 2)
        {
          if (v19)
          {
            goto LABEL_69;
          }

LABEL_41:
          outlined init with copy of Prompt.ToolCall(&v44, v43);
          outlined init with copy of Prompt.ToolCall(&v48, v43);
          outlined copy of Data?(v15, v14);
          outlined copy of Data?(v16, *(&v16 + 1));
          v21 = *(&v16 + 1);
          v20 = v16;
LABEL_42:
          outlined consume of Data?(v20, v21);
          outlined consume of Data?(v15, v14);
          outlined destroy of Prompt.ToolCall(&v48);
          outlined destroy of Prompt.ToolCall(&v44);
          goto LABEL_63;
        }

        v23 = *(v51 + 16);
        v22 = *(v51 + 24);
        v24 = __OFSUB__(v22, v23);
        v25 = v22 - v23;
        if (v24)
        {
          __break(1u);
LABEL_70:
          __break(1u);
LABEL_71:
          __break(1u);
LABEL_72:
          __break(1u);
LABEL_73:
          __break(1u);
LABEL_74:
          __break(1u);
LABEL_75:
          __break(1u);
LABEL_76:
          __break(1u);
        }

LABEL_36:
        if (v19 != v25)
        {
LABEL_69:
          outlined init with copy of Prompt.ToolCall(&v44, v43);
          outlined init with copy of Prompt.ToolCall(&v48, v43);
          outlined copy of Data?(v15, v14);
          outlined copy of Data?(v16, *(&v16 + 1));
          outlined consume of Data?(v16, *(&v16 + 1));
          outlined consume of Data?(v15, v14);
          outlined destroy of Prompt.ToolCall(&v48);
          outlined destroy of Prompt.ToolCall(&v44);
          result = 0;
          goto LABEL_68;
        }

        if (v19 < 1)
        {
          goto LABEL_41;
        }

        if (v17 > 1)
        {
          if (v17 == 2)
          {
            v28 = *(v47 + 16);
            v40 = *(v47 + 24);
            outlined init with copy of Prompt.ToolCall(&v44, v43);
            outlined init with copy of Prompt.ToolCall(&v48, v43);
            outlined copy of Data?(v15, v14);
            outlined copy of Data?(v16, *(&v16 + 1));
            outlined copy of Data?(v16, *(&v16 + 1));
            v29 = __DataStorage._bytes.getter();
            if (v29)
            {
              v30 = __DataStorage._offset.getter();
              if (__OFSUB__(v28, v30))
              {
                goto LABEL_75;
              }

              v29 += v28 - v30;
            }

            if (__OFSUB__(v40, v28))
            {
              goto LABEL_74;
            }

            MEMORY[0x1AC57AAA0]();
            v31 = v29;
            v33 = *(&v16 + 1);
            v32 = v16;
            v34 = v41;
            goto LABEL_59;
          }

          memset(v42, 0, 14);
          outlined init with copy of Prompt.ToolCall(&v44, v43);
          outlined init with copy of Prompt.ToolCall(&v48, v43);
          outlined copy of Data?(v15, v14);
          outlined copy of Data?(v16, *(&v16 + 1));
          outlined copy of Data?(v16, *(&v16 + 1));
        }

        else
        {
          if (v17)
          {
            if (v47 >> 32 < v47)
            {
              goto LABEL_73;
            }

            outlined init with copy of Prompt.ToolCall(&v44, v43);
            outlined init with copy of Prompt.ToolCall(&v48, v43);
            outlined copy of Data?(v15, v14);
            outlined copy of Data?(v16, *(&v16 + 1));
            outlined copy of Data?(v16, *(&v16 + 1));
            v35 = __DataStorage._bytes.getter();
            if (v35)
            {
              v36 = __DataStorage._offset.getter();
              if (__OFSUB__(v15, v36))
              {
                goto LABEL_76;
              }

              v35 += v15 - v36;
            }

            v34 = v41;
            MEMORY[0x1AC57AAA0]();
            v31 = v35;
            v33 = *(&v16 + 1);
            v32 = v16;
LABEL_59:
            closure #1 in static Data.== infix(_:_:)(v31, v32, v33, v43);
            v41 = v34;
            outlined consume of Data?(v16, *(&v16 + 1));
            outlined consume of Data?(v16, *(&v16 + 1));
            v37 = v43[0];
            goto LABEL_62;
          }

          v42[0] = v47;
          LOWORD(v42[1]) = WORD4(v47);
          *(&v42[1] + 2) = *(&v47 + 10);
          outlined init with copy of Prompt.ToolCall(&v44, v43);
          outlined init with copy of Prompt.ToolCall(&v48, v43);
          outlined copy of Data?(v15, v14);
          outlined copy of Data?(v16, *(&v16 + 1));
          outlined copy of Data?(v16, *(&v16 + 1));
        }

        closure #1 in static Data.== infix(_:_:)(v42, v16, *(&v16 + 1), v43);
        outlined consume of Data?(v16, *(&v16 + 1));
        outlined consume of Data?(v16, *(&v16 + 1));
        v37 = v43[0];
LABEL_62:
        outlined consume of Data?(v15, v14);
        outlined destroy of Prompt.ToolCall(&v48);
        outlined destroy of Prompt.ToolCall(&v44);
        if (!v37)
        {
          goto LABEL_67;
        }

LABEL_63:
        if (!i)
        {
          goto LABEL_65;
        }

        v4 += 4;
        v3 += 4;
      }

      v19 = 0;
      if (v47 == __PAIR128__(0xC000000000000000, 0) && *(&v51 + 1) >> 62 == 3)
      {
        v19 = 0;
        if (v51 == __PAIR128__(0xC000000000000000, 0))
        {
          outlined init with copy of Prompt.ToolCall(&v44, v43);
          outlined init with copy of Prompt.ToolCall(&v48, v43);
          outlined copy of Data?(0, 0xC000000000000000);
          outlined copy of Data?(0, 0xC000000000000000);
          v20 = 0;
          v21 = 0xC000000000000000;
          goto LABEL_42;
        }
      }

LABEL_29:
      if (v18 <= 1)
      {
        goto LABEL_30;
      }

      goto LABEL_23;
    }

LABEL_65:
    result = 1;
  }

  else
  {
LABEL_67:
    result = 0;
  }

LABEL_68:
  v39 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZs7Float16V_Tt1g5(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = (result + 32);
  v4 = (a2 + 32);
  while (v2)
  {
    v5 = *v3++;
    v6 = v5;
    v7 = *v4++;
    result = v6 == v7;
    if (v6 != v7 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

void EarleyRecognizer.State.hash(into:)()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  MEMORY[0x1AC57CB80](v2);
  if (v2)
  {
    v3 = (v1 + 64);
    do
    {
      v4 = *(v3 - 3);
      v6 = *(v3 - 2);
      v5 = *(v3 - 1);
      v7 = *v3;
      MEMORY[0x1AC57CB80](*(v3 - 4));
      MEMORY[0x1AC57CB80](v4);
      MEMORY[0x1AC57CB80](v6);
      if (v7 == 1)
      {
        Hasher._combine(_:)(0);
      }

      else
      {
        Hasher._combine(_:)(1u);
        MEMORY[0x1AC57CB80](v5);
      }

      v3 += 40;
      --v2;
    }

    while (v2);
  }
}

Swift::Int EarleyRecognizer.State.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  specialized Array<A>.hash(into:)(v3, v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance EarleyRecognizer.State()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  specialized Array<A>.hash(into:)(v3, v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance EarleyRecognizer.State()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  specialized Array<A>.hash(into:)(v3, v1);
  return Hasher._finalize()();
}

void EarleyRecognizer.lastConsumedElement.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 24);
  *(a1 + 4) = *(v1 + 28);
  *a1 = v2;
}

TokenGenerationCore::EarleyRecognizer::State __swiftcall EarleyRecognizer.Chart.state(at:)(TokenGenerationCore::EarleyRecognizer::State at)
{
  rawValue = *(v1 + 16);
  if (!rawValue)
  {
    goto LABEL_9;
  }

  v5 = 100 * (rawValue - 1);
  if (((rawValue - 1) * 100) >> 64 != v5 >> 63)
  {
    __break(1u);
    goto LABEL_18;
  }

  v6 = *(*(v1 + 8 * (rawValue - 1) + 32) + 16);
  v7 = __OFADD__(v5, v6);
  v8 = v5 + v6;
  if (v7)
  {
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (v8 <= at.items._rawValue)
  {
    rawValue = at.items._rawValue - v8;
    if (!__OFSUB__(at.items._rawValue, v8))
    {
      while ((rawValue & 0x8000000000000000) == 0)
      {
        if (rawValue < *(v2 + 16))
        {
          goto LABEL_16;
        }

        __break(1u);
LABEL_9:
        if ((at.items._rawValue & 0x8000000000000000) != 0)
        {
          goto LABEL_12;
        }

        rawValue = at.items._rawValue;
      }

      goto LABEL_19;
    }

    __break(1u);
  }

LABEL_12:
  if (at.items._rawValue < -99 || at.items._rawValue / 100 >= rawValue)
  {
    goto LABEL_20;
  }

  rawValue = at.items._rawValue % 100;
  if (at.items._rawValue % 100 < 0)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v2 = *(v1 + 8 * (at.items._rawValue / 100) + 32);
  if (rawValue < *(v2 + 16))
  {
LABEL_16:
    *v3 = *(v2 + 8 * rawValue + 32);
  }

LABEL_22:
  __break(1u);
  return at;
}

uint64_t EarleyRecognizer.Chart.appending(states:)(uint64_t result, void *a2, uint64_t a3)
{
  if (*(a3 + 16))
  {
LABEL_29:
    __break(1u);
    return result;
  }

  v3 = a2;
  v4 = result;
  v5 = *(result + 16);
  if (v5)
  {
    v6 = a2[2];

    if (v6)
    {
      v7 = *(v3[v6 + 3] + 16);
      if (v7 > 0x64)
      {
LABEL_22:
        __break(1u);
      }

      else
      {
        v8 = 0;
        v9 = MEMORY[0x1E69E7CC0];
        while (1)
        {
          v10 = 100 - v7;
          if (v5 - v8 < v10)
          {
            v10 = v5 - v8;
          }

          v11 = v8 + v10;
          if (__OFADD__(v8, v10))
          {
            break;
          }

          if (v11 < v8)
          {
            goto LABEL_24;
          }

          if (v5 < v8)
          {
            goto LABEL_25;
          }

          if (v5 < v11)
          {
            goto LABEL_26;
          }

          result = swift_isUniquelyReferenced_nonNull_native();
          if ((result & 1) == 0)
          {
            result = specialized _ArrayBuffer._consumeAndCreateNew()(v3);
            v3 = result;
          }

          if (v6 > v3[2])
          {
            goto LABEL_27;
          }

          result = specialized Array.append<A>(contentsOf:)(v4, v4 + 32, v8, (2 * v11) | 1);
          if (v11 >= v5)
          {
            return v3;
          }

          v13 = v3[2];
          v12 = v3[3];
          v6 = v13 + 1;
          if (v13 >= v12 >> 1)
          {
            result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v12 > 1), v13 + 1, 1, v3, &_ss23_ContiguousArrayStorageCySay19TokenGenerationCore16EarleyRecognizerC5StateVGGMd, &_ss23_ContiguousArrayStorageCySay19TokenGenerationCore16EarleyRecognizerC5StateVGGMR, &_sSay19TokenGenerationCore16EarleyRecognizerC5StateVGMd, &_sSay19TokenGenerationCore16EarleyRecognizerC5StateVGMR);
            v3 = result;
          }

          v3[2] = v6;
          v3[v13 + 4] = v9;
          v7 = *(v9 + 16);
          v8 = v11;
          if (v7 > 0x64)
          {
            goto LABEL_22;
          }
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

    __break(1u);
    goto LABEL_29;
  }

  return v3;
}

uint64_t EarleyRecognizer.Chart.lastState.getter@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v3 = *(a2 + 16);
  if (v3)
  {
    v4 = a2 + 8 * v3;
LABEL_3:
    *a3 = *(v4 + 24);
  }

  v5 = *(result + 16);
  if (v5)
  {
    v6 = *(result + 8 * v5 + 24);
    v7 = *(v6 + 16);
    if (v7)
    {
      v4 = v6 + 8 * v7;
      goto LABEL_3;
    }
  }

  *a3 = 0;
  return result;
}

Swift::Int __swiftcall EarleyRecognizer.Chart.numberOfStates()()
{
  v2 = *(result + 16);
  if (v2)
  {
    v3 = v2 - 1;
    v4 = 100 * v3;
    if ((v3 * 100) >> 64 != (100 * v3) >> 63)
    {
LABEL_7:
      __break(1u);
      goto LABEL_8;
    }

    v5 = *(*(result + 8 * v3 + 32) + 16);
    v6 = __OFADD__(v4, v5);
    v2 = v4 + v5;
    if (v6)
    {
LABEL_8:
      __break(1u);
      return result;
    }
  }

  v7 = *(v1 + 16);
  result = v2 + v7;
  if (__OFADD__(v2, v7))
  {
    __break(1u);
    goto LABEL_7;
  }

  return result;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance EarleyRecognizer.Chart()
{
  v1 = *v0;
  v2 = v0[1];
  Hasher.init(_seed:)();
  specialized Array<A>.hash(into:)(v4, v1);
  specialized Array<A>.hash(into:)(v4, v2);
  return Hasher._finalize()();
}

void protocol witness for Hashable.hash(into:) in conformance EarleyRecognizer.Chart(uint64_t a1)
{
  v3 = *v1;
  v4 = v1[1];
  specialized Array<A>.hash(into:)(a1, v3);

  specialized Array<A>.hash(into:)(a1, v4);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance EarleyRecognizer.Chart()
{
  v1 = *v0;
  v2 = v0[1];
  Hasher.init(_seed:)();
  specialized Array<A>.hash(into:)(v4, v1);
  specialized Array<A>.hash(into:)(v4, v2);
  return Hasher._finalize()();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance EarleyRecognizer.Chart(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  if ((_sSasSQRzlE2eeoiySbSayxG_ABtFZSay19TokenGenerationCore16EarleyRecognizerC5StateVG_Tt1g5(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  return _sSasSQRzlE2eeoiySbSayxG_ABtFZ19TokenGenerationCore16EarleyRecognizerC5StateV_Tt1g5(v2, v3);
}

uint64_t EarleyRecognizer.childRecognizer(consumingElement:)(uint64_t a1)
{
  v2 = *v1;
  v3 = *a1;
  v4 = *(a1 + 4);
  v5 = v1[5];
  v6 = v1[6];
  v18 = MEMORY[0x1E69E7CC0];
  v19 = v5;
  v7 = v1[4];
  v20 = v6;
  v16 = v3;
  v17 = v4;

  specialized static EarleyRecognizer.parse(recognizerGrammar:element:with:items:)(v7, &v16, &v19, &v18);
  v8 = *(v18 + 2);

  if (v8)
  {
    v9 = v1[2];
    v10 = v4 != 0;
    v11 = v20;

    v12 = EarleyRecognizer.Chart.appending(states:)(v11, v5, MEMORY[0x1E69E7CC0]);
    v14 = v13;

    swift_bridgeObjectRelease_n();
    result = swift_allocObject();
    *(result + 16) = v9;
    *(result + 28) = v10;
    *(result + 24) = v3;
    *(result + 32) = v7;
    *(result + 40) = v12;
    *(result + 48) = v14;
  }

  else
  {

    return 0;
  }

  return result;
}

uint64_t EarleyRecognizer.childRecognizer(consumingString:)(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v5 = *v2;
  v6 = v2[5];
  v7 = v2[6];
  v31 = v6;
  v32 = v7;
  v30 = MEMORY[0x1E69E7CC0];
  if ((a2 & 0x2000000000000000) != 0)
  {
    v8 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v8 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v8)
  {
    v28 = v6;
    v10 = a2 & 0xFFFFFFFFFFFFFFLL;
    v11 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;

    v12 = 0;
    while (1)
    {
      if ((a2 & 0x1000000000000000) != 0)
      {
        v15 = _StringGuts.foreignErrorCorrectedScalar(startingAt:)();
        v17 = v16;
        goto LABEL_15;
      }

      if ((a2 & 0x2000000000000000) != 0)
      {
        v29[0] = a1;
        v29[1] = v10;
        v14 = v29 + v12;
      }

      else
      {
        v13 = v11;
        if ((a1 & 0x1000000000000000) == 0)
        {
          v13 = _StringObject.sharedUTF8.getter();
        }

        v14 = (v13 + v12);
      }

      v15 = *v14;
      if ((*v14 & 0x80000000) == 0)
      {
        break;
      }

      v19 = (__clz(v15 ^ 0xFF) - 24);
      if (v19 > 2)
      {
        if (v19 == 3)
        {
          v15 = ((v15 & 0xF) << 12) | ((v14[1] & 0x3F) << 6) | v14[2] & 0x3F;
          v17 = 3;
        }

        else
        {
          v15 = ((v15 & 0xF) << 18) | ((v14[1] & 0x3F) << 12) | ((v14[2] & 0x3F) << 6) | v14[3] & 0x3F;
          v17 = 4;
        }
      }

      else
      {
        if (v19 == 1)
        {
          break;
        }

        v15 = v14[1] & 0x3F | ((v15 & 0x1F) << 6);
        v17 = 2;
      }

LABEL_15:
      v18 = v3[4];
      LODWORD(v29[0]) = v15;
      BYTE4(v29[0]) = 0;
      specialized static EarleyRecognizer.parse(recognizerGrammar:element:with:items:)(v18, v29, &v31, &v30);
      if (!*(v30 + 2))
      {

        return 0;
      }

      v12 += v17;
      if (v12 >= v8)
      {

        v21 = v15;
        v7 = v32;
        v22 = v28;
        goto LABEL_25;
      }
    }

    v17 = 1;
    goto LABEL_15;
  }

  v22 = v6;

  v21 = 0xFF00000000;
LABEL_25:
  v23 = v3[2];
  v24 = v3[4];

  v25 = EarleyRecognizer.Chart.appending(states:)(v7, v22, MEMORY[0x1E69E7CC0]);
  v27 = v26;

  swift_bridgeObjectRelease_n();
  result = swift_allocObject();
  *(result + 16) = v23;
  *(result + 28) = BYTE4(v21);
  *(result + 24) = v21;
  *(result + 32) = v24;
  *(result + 40) = v25;
  *(result + 48) = v27;
  return result;
}

__n128 Array<A>.appendUnique(_:itemsSet:)(uint64_t a1, uint64_t *a2)
{
  v3 = v2;
  v5 = *v2;
  v6 = *(*v2 + 16);
  if (v6 < 0xA)
  {
    if (specialized Sequence<>.contains(_:)(a1, *v2))
    {
      return result;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_11;
    }

    v8 = v6 + 1;
    goto LABEL_16;
  }

  v10 = *a2;
  if (!*(v10 + 16))
  {
    v11 = v5 + 32;
    do
    {
      v12 = *(v11 + 1);
      v18[0] = *v11;
      v18[1] = v12;
      v19 = v11[32];
      specialized Set._Variant.insert(_:)(v17, v18);
      v11 += 40;
      --v6;
    }

    while (v6);
    v10 = *a2;
  }

  if ((specialized Set.contains(_:)(a1, v10) & 1) == 0)
  {
    specialized Set._Variant.insert(_:)(v17, a1);
    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_11:
      v14 = *(v5 + 2);
      v13 = *(v5 + 3);
      if (v14 >= v13 >> 1)
      {
        v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v13 > 1), v14 + 1, 1, v5);
      }

      *(v5 + 2) = v14 + 1;
      v15 = &v5[40 * v14];
      result = *a1;
      v16 = *(a1 + 16);
      v15[64] = *(a1 + 32);
      *(v15 + 2) = result;
      *(v15 + 3) = v16;
      *v3 = v5;
      return result;
    }

    v8 = *(v5 + 2) + 1;
LABEL_16:
    v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v8, 1, v5);
    goto LABEL_11;
  }

  return result;
}

uint64_t EarleyRecognizer.createValidatorCache()@<X0>(uint64_t *a1@<X8>)
{
  v3 = v1[5];
  v2 = v1[6];
  result = v1[4];
  *a1 = result;
  a1[1] = v3;
  v5 = MEMORY[0x1E69E7CC0];
  a1[2] = v2;
  a1[3] = v5;
  a1[4] = v5;
  if (*(v2 + 16))
  {
    __break(1u);
  }

  else
  {
  }

  return result;
}

Swift::Bool __swiftcall EarleyRecognizer.RecognizerValidatorCache.parse(string:skipFirst:)(Swift::String string, Swift::Int skipFirst)
{
  v3 = v2;
  v5 = HIBYTE(string._object) & 0xF;
  v41 = string;
  if ((string._object & 0x2000000000000000) == 0)
  {
    v5 = string._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
  }

  v42 = 0;
  v43 = v5;
  v44 = 0;

  v6 = specialized EnumeratedSequence.Iterator.next()();
  if ((v7 & 0x100000000) != 0)
  {
LABEL_47:
    v35 = 1;
LABEL_48:

    LOBYTE(v6) = v35;
    return v6;
  }

  v8 = v7;
  v37 = skipFirst;
  while (1)
  {
    v10 = v6 - skipFirst;
    if (v6 < skipFirst)
    {
      goto LABEL_5;
    }

    if (__OFSUB__(v6, skipFirst))
    {
      break;
    }

    v11 = *(v3 + 16);
    v12 = *(v11 + 2);
    if (v12 > v10)
    {
      if (v10 < 0)
      {
        goto LABEL_51;
      }

      v13 = *(v3 + 24);
      v14 = *(v13 + 2);
      if (v10 >= v14)
      {
        goto LABEL_52;
      }

      v38 = 8 * v10;
      v15 = &v13[8 * v10];
      if ((v15[36] & 1) != 0 || *(v15 + 8) != v8)
      {
        if (v12 != v10)
        {
          if (v12 < v10)
          {
            goto LABEL_53;
          }

          v16 = v10 - v12;
          if (__OFADD__(v12, v10 - v12))
          {
            goto LABEL_54;
          }

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          if (!isUniquelyReferenced_nonNull_native || v10 > *(v11 + 3) >> 1)
          {
            if (v12 <= v10)
            {
              v18 = v10;
            }

            else
            {
              v18 = v12;
            }

            v11 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v18, 1, v11, &_ss23_ContiguousArrayStorageCy19TokenGenerationCore16EarleyRecognizerC5StateVGMd, &_ss23_ContiguousArrayStorageCy19TokenGenerationCore16EarleyRecognizerC5StateVGMR);
          }

          swift_arrayDestroy();
          LOBYTE(v6) = memmove(&v11[8 * v10 + 32], &v11[8 * v12 + 32], 8 * (*(v11 + 2) - v12));
          v19 = *(v11 + 2);
          v20 = __OFADD__(v19, v16);
          v21 = v19 + v16;
          if (v20)
          {
            goto LABEL_56;
          }

          *(v11 + 2) = v21;
          *(v3 + 16) = v11;
          v14 = *(v13 + 2);
          skipFirst = v37;
        }

        v22 = v10 - v14;
        if (v10 != v14)
        {
          if (v10 > v14)
          {
            goto LABEL_55;
          }

          if (__OFADD__(v14, v22))
          {
            goto LABEL_57;
          }

          v23 = swift_isUniquelyReferenced_nonNull_native();
          if (!v23 || v10 > *(v13 + 3) >> 1)
          {
            if (v14 <= v10)
            {
              v24 = v10;
            }

            else
            {
              v24 = v14;
            }

            v13 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v23, v24, 1, v13);
          }

          v6 = &v13[v38 + 32];
          v25 = &v13[8 * v14 + 32];
          v26 = 8 * (*(v13 + 2) - v14);
          if (v38 != 8 * v14 || v6 >= &v25[v26])
          {
            LOBYTE(v6) = memmove(v6, v25, v26);
          }

          v27 = *(v13 + 2);
          v20 = __OFADD__(v27, v22);
          v28 = v27 + v22;
          if (v20)
          {
            goto LABEL_58;
          }

          *(v13 + 2) = v28;
          *(v3 + 24) = v13;
        }
      }
    }

    if (v10 == *(v11 + 2))
    {
      v29 = *v3;
      v39 = v8;
      v40 = 0;
      specialized static EarleyRecognizer.parse(recognizerGrammar:element:with:items:)(v29, &v39, (v3 + 8), (v3 + 32));
      v30 = *(v3 + 24);
      LOBYTE(v6) = swift_isUniquelyReferenced_nonNull_native();
      if ((v6 & 1) == 0)
      {
        v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v30 + 16) + 1, 1, v30);
        v30 = v6;
      }

      v32 = *(v30 + 16);
      v31 = *(v30 + 24);
      if (v32 >= v31 >> 1)
      {
        v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v31 > 1), v32 + 1, 1, v30);
        v30 = v6;
      }

      *(v30 + 16) = v32 + 1;
      v33 = v30 + 8 * v32;
      *(v33 + 32) = v8;
      *(v33 + 36) = 0;
      *(v3 + 24) = v30;
    }

    v34 = *(v3 + 16);
    if (v10 >= *(v34 + 16))
    {
      goto LABEL_50;
    }

    if (!*(*(v34 + 8 * v10 + 32) + 16))
    {
      v35 = 0;
      goto LABEL_48;
    }

LABEL_5:
    v6 = specialized EnumeratedSequence.Iterator.next()();
    v8 = v9;
    if ((v9 & 0x100000000) != 0)
    {
      goto LABEL_47;
    }
  }

  __break(1u);
LABEL_50:
  __break(1u);
LABEL_51:
  __break(1u);
LABEL_52:
  __break(1u);
LABEL_53:
  __break(1u);
LABEL_54:
  __break(1u);
LABEL_55:
  __break(1u);
LABEL_56:
  __break(1u);
LABEL_57:
  __break(1u);
LABEL_58:
  __break(1u);
  return v6;
}

Swift::Bool __swiftcall EarleyRecognizer.validate(byteTokenValue:)(Swift::UInt8 byteTokenValue)
{
  v3 = byteTokenValue;
  v4 = 1;
  v1 = EarleyRecognizer.childRecognizer(consumingElement:)(&v3);
  if (v1)
  {
  }

  return v1 != 0;
}

uint64_t EarleyRecognizer.fullMatch.getter()
{
  EarleyRecognizer.Chart.lastState.getter(v0[5], v0[6], &v12);
  result = v12;
  if (!v12)
  {
    return 0;
  }

  v2 = *(v12 + 16);
  if (!v2)
  {
LABEL_16:
    v11 = 0;
LABEL_17:

    return v11;
  }

  v3 = *(v0[4] + 56);
  v4 = (v12 + 48);
  while (1)
  {
    if (*v4)
    {
      goto LABEL_4;
    }

    v5 = *(v4 - 2);
    if ((v5 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v5 >= *(v3 + 16))
    {
      goto LABEL_21;
    }

    v6 = (v3 + 32 + 24 * v5);
    if (*v6 == *(v0[4] + 48))
    {
      v7 = *(v4 - 1);
      v8 = v6[1];
      if (v7 >= *(v8 + 16) || ((v9 = v8 + 16 * v7, *(v9 + 40) == 2) ? (v10 = *(v9 + 32) == 0) : (v10 = 0), v10))
      {
        v11 = 1;
        goto LABEL_17;
      }
    }

LABEL_4:
    v4 += 5;
    if (!--v2)
    {
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

Swift::tuple_cacheKey_Int_optional_nextValidTerminals_OpaquePointer __swiftcall EarleyRecognizer.nextValidTerminalsWithCacheKey()()
{
  v1 = type metadata accessor for TerminalSymbol(0);
  v56 = *(v1 - 8);
  v2 = *(v56 + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v44 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  EarleyRecognizer.Chart.lastState.getter(v0[5], v0[6], &v58);
  v5 = v58;
  if (!v58)
  {
    goto LABEL_42;
  }

  v6 = *(v58 + 16);
  if (!v6)
  {

LABEL_42:
    isUniquelyReferenced_nonNull_native = 0;
    v18 = MEMORY[0x1E69E7CC0];
    goto LABEL_44;
  }

  v7 = v0[4];
  v8 = v7[7];
  v9 = v7[2];
  v10 = v7[3];

  v55 = v9;

  v14 = v8 + 32;
  v46 = 0;
  v15 = 0;
  v16 = -v6;
  v17 = v5 + 64;
  v18 = MEMORY[0x1E69E7CC0];
  v19 = MEMORY[0x1E69E7CC0];
  v50 = v4;
  v51 = v10;
  v53 = -v6;
  v54 = v8 + 32;
  v45 = v5 + 64;
  v52 = v8;
LABEL_4:
  v47 = v19;
  v19 = v17 + 40 * v15++;
  do
  {
    if ((v15 - 1) >= *(v5 + 16))
    {
      __break(1u);
LABEL_47:
      __break(1u);
LABEL_48:
      __break(1u);
      goto LABEL_49;
    }

    v20 = *(v19 - 32);
    if ((v20 & 0x8000000000000000) != 0)
    {
      goto LABEL_47;
    }

    if (v20 >= *(v8 + 16))
    {
      goto LABEL_48;
    }

    v21 = *(v19 - 24);
    v22 = (v14 + 24 * v20);
    v23 = v22[1];
    if (v21 < *(v23 + 16))
    {
      v24 = *(v19 - 8);
      v25 = *v19;
      v26 = v23 + 16 * v21;
      if (*(v26 + 40))
      {
        if (*(v26 + 40) == 1)
        {
          v27 = v21 ? *v19 : 1;
          if ((v27 & 1) == 0)
          {
            v48 = *(v19 - 16);
            v49 = v24;
            v19 = v47;
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v57 = v18;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              goto LABEL_37;
            }

            goto LABEL_32;
          }
        }
      }

      else
      {
        v28 = *v22;
        if ((*v22 & 0x8000000000000000) != 0)
        {
          __break(1u);
LABEL_51:
          __break(1u);
LABEL_52:
          __break(1u);
          goto LABEL_53;
        }

        v29 = *(v26 + 32);
        if ((v29 & 0x8000000000000000) != 0 || v28 >= *(v55 + 16))
        {
          goto LABEL_51;
        }

        if (v29 >= *(v10 + 16))
        {
          goto LABEL_52;
        }

        v48 = *(v19 - 16);
        v49 = v24;
        v30 = (*(v56 + 80) + 32) & ~*(v56 + 80);
        v31 = v10 + v30;
        v32 = *(v56 + 72);
        outlined init with copy of TerminalSymbol(v31 + v32 * v29, v4, type metadata accessor for TerminalSymbol);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v18 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v18[2] + 1, 1, v18, &_ss23_ContiguousArrayStorageCy19TokenGenerationCore14TerminalSymbolOGMd, &_ss23_ContiguousArrayStorageCy19TokenGenerationCore14TerminalSymbolOGMR, type metadata accessor for TerminalSymbol);
        }

        v34 = v18[2];
        v33 = v18[3];
        v57 = v18;
        if (v34 >= v33 >> 1)
        {
          v57 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v33 > 1, v34 + 1, 1, v57, &_ss23_ContiguousArrayStorageCy19TokenGenerationCore14TerminalSymbolOGMd, &_ss23_ContiguousArrayStorageCy19TokenGenerationCore14TerminalSymbolOGMR, type metadata accessor for TerminalSymbol);
        }

        v35 = v57;
        v57[2] = v34 + 1;
        v18 = v35;
        v36 = v35 + v30 + v34 * v32;
        v4 = v50;
        isUniquelyReferenced_nonNull_native = outlined init with take of TerminalSymbol(v50, v36, type metadata accessor for TerminalSymbol);
        if (v21)
        {
          v37 = v25;
        }

        else
        {
          v37 = 1;
        }

        if ((v37 & 1) == 0)
        {
          v19 = v47;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v10 = v51;
          v8 = v52;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
LABEL_37:
            isUniquelyReferenced_nonNull_native = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v19 + 16) + 1, 1, v19);
            v19 = isUniquelyReferenced_nonNull_native;
          }

LABEL_32:
          v39 = v48;
          v38 = v49;
          v41 = *(v19 + 16);
          v40 = *(v19 + 24);
          v16 = v53;
          v14 = v54;
          v17 = v45;
          if (v41 >= v40 >> 1)
          {
            isUniquelyReferenced_nonNull_native = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v40 > 1), v41 + 1, 1, v19);
            v39 = v48;
            v38 = v49;
            v17 = v45;
            v16 = v53;
            v14 = v54;
            v19 = isUniquelyReferenced_nonNull_native;
          }

          *(v19 + 16) = v41 + 1;
          v42 = v19 + 40 * v41;
          *(v42 + 32) = v20;
          *(v42 + 40) = v21;
          *(v42 + 48) = v39;
          *(v42 + 56) = v38;
          *(v42 + 64) = 0;
          v46 = 1;
          v18 = v57;
          if (!(v16 + v15))
          {
LABEL_49:

            goto LABEL_40;
          }

          goto LABEL_4;
        }

        v10 = v51;
        v8 = v52;
        v16 = v53;
        v14 = v54;
      }
    }

    ++v15;
    v19 += 40;
  }

  while (v16 + v15 != 1);

  if (v46)
  {
    v57 = v18;
    v19 = v47;
LABEL_40:
    v43 = specialized Collection<>.itemCacheKey()(v19);

    isUniquelyReferenced_nonNull_native = v43;
    v12 = 0;
    v18 = v57;
    goto LABEL_45;
  }

  isUniquelyReferenced_nonNull_native = 0;
LABEL_44:
  v12 = 1;
LABEL_45:
  v13 = v18;
LABEL_53:
  result.nextValidTerminals._rawValue = v13;
  result.cacheKey.value = isUniquelyReferenced_nonNull_native;
  result.cacheKey.is_nil = v12;
  return result;
}

Swift::Int specialized Collection<>.itemCacheKey()(uint64_t a1)
{
  Hasher.init()();
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = (a1 + 64);
    do
    {
      v4 = *(v3 - 3);
      v5 = *(v3 - 1);
      v6 = *v3;
      MEMORY[0x1AC57CB80](*(v3 - 4));
      if (v6)
      {
        Hasher._combine(_:)(0);
      }

      else
      {
        Hasher._combine(_:)(1u);
        MEMORY[0x1AC57CB80](v5);
      }

      MEMORY[0x1AC57CB80](v4);
      v3 += 40;
      --v2;
    }

    while (v2);
  }

  return Hasher.finalize()();
}

void EarleyRecognizer.hash(into:)(uint64_t a1)
{
  specialized Array<A>.hash(into:)(a1, *(v1[4] + 56));
  v3 = v1[5];
  v4 = v1[6];
  specialized Array<A>.hash(into:)(a1, v3);

  specialized Array<A>.hash(into:)(a1, v4);
}

Swift::Bool __swiftcall EarleyRecognizer.nextTerminalsPotentiallyDeterministic()()
{
  v3 = EarleyRecognizer.nextValidTerminalsWithCacheKey()();
  rawValue = v3.nextValidTerminals._rawValue;
  if (specialized Collection<>.containsCharacterSetTerminal()(v3.nextValidTerminals._rawValue))
  {

    return 0;
  }

  else
  {
    v2 = rawValue[2];

    return v2 < 2;
  }
}

BOOL specialized Collection<>.containsCharacterSetTerminal()(uint64_t a1)
{
  v2 = type metadata accessor for TerminalSymbol(0);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = &v20 - v8;
  MEMORY[0x1EEE9AC00](v7);
  v12 = &v20 - v11;
  v13 = *(a1 + 16);
  if (!v13)
  {
    return 0;
  }

  v14 = a1 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
  v15 = *(v10 + 72);
  v16 = v13 - 1;
  while (1)
  {
    v17 = v16;
    outlined init with copy of TerminalSymbol(v14, v12, type metadata accessor for TerminalSymbol);
    outlined init with copy of TerminalSymbol(v12, v9, type metadata accessor for TerminalSymbol);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      break;
    }

    outlined destroy of PromptTemplateInfo.RichVariableBinding.Component(v9, type metadata accessor for TerminalSymbol);
    outlined init with take of TerminalSymbol(v12, v6, type metadata accessor for TerminalSymbol);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    outlined destroy of PromptTemplateInfo.RichVariableBinding.Component(v6, type metadata accessor for TerminalSymbol);
    result = EnumCaseMultiPayload == 2;
    if (EnumCaseMultiPayload != 2)
    {
      v16 = v17 - 1;
      v14 += v15;
      if (v17)
      {
        continue;
      }
    }

    return result;
  }

  outlined destroy of PromptTemplateInfo.RichVariableBinding.Component(v12, type metadata accessor for TerminalSymbol);
  outlined destroy of PromptTemplateInfo.RichVariableBinding.Component(v9, type metadata accessor for TerminalSymbol);
  return 1;
}

void *EarleyRecognizer.deinit()
{
  v1 = v0[2];

  v2 = v0[4];

  v4 = v0[5];
  v3 = v0[6];

  return v0;
}

uint64_t EarleyRecognizer.__deallocating_deinit()
{
  v1 = v0[2];

  v2 = v0[4];

  v4 = v0[5];
  v3 = v0[6];

  return swift_deallocClassInstance();
}

Swift::Int EarleyRecognizer.hashValue.getter()
{
  Hasher.init(_seed:)();
  specialized Array<A>.hash(into:)(v3, *(v0[4] + 56));
  v1 = v0[6];
  specialized Array<A>.hash(into:)(v3, v0[5]);
  specialized Array<A>.hash(into:)(v3, v1);
  return Hasher._finalize()();
}

void protocol witness for GrammarRecognizer.lastConsumedElement.getter in conformance EarleyRecognizer(uint64_t a1@<X8>)
{
  v2 = *(*v1 + 24);
  *(a1 + 4) = *(*v1 + 28);
  *a1 = v2;
}

uint64_t protocol witness for GrammarRecognizer.childRecognizer(consumingElement:) in conformance EarleyRecognizer@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *v2;
  result = EarleyRecognizer.childRecognizer(consumingElement:)(a1);
  *a2 = result;
  return result;
}

uint64_t protocol witness for GrammarRecognizer.childRecognizer(consumingString:) in conformance EarleyRecognizer@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = *v3;
  result = EarleyRecognizer.childRecognizer(consumingString:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for GrammarRecognizer.createValidatorCache() in conformance EarleyRecognizer@<X0>(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v4 = *(*v1 + 40);
  v3 = *(v2 + 48);
  result = *(v2 + 32);
  *a1 = result;
  a1[1] = v4;
  v6 = MEMORY[0x1E69E7CC0];
  a1[2] = v3;
  a1[3] = v6;
  a1[4] = v6;
  if (*(v3 + 16))
  {
    __break(1u);
  }

  else
  {
  }

  return result;
}

void *protocol witness for GrammarRecognizer.nextValidTerminals() in conformance EarleyRecognizer()
{
  v1 = *v0;
  v3 = EarleyRecognizer.nextValidTerminalsWithCacheKey()();
  return v3.nextValidTerminals._rawValue;
}

BOOL protocol witness for GrammarRecognizer.nextTerminalsPotentiallyDeterministic() in conformance EarleyRecognizer()
{
  v1 = *v0;
  v5 = EarleyRecognizer.nextValidTerminalsWithCacheKey()();
  rawValue = v5.nextValidTerminals._rawValue;
  if (specialized Collection<>.containsCharacterSetTerminal()(v5.nextValidTerminals._rawValue))
  {

    return 0;
  }

  else
  {
    v4 = rawValue[2];

    return v4 < 2;
  }
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance EarleyRecognizer()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  specialized Array<A>.hash(into:)(v5, *(v1[4] + 56));
  v2 = v1[5];
  v3 = v1[6];
  specialized Array<A>.hash(into:)(v5, v2);
  specialized Array<A>.hash(into:)(v5, v3);
  return Hasher._finalize()();
}

void protocol witness for Hashable.hash(into:) in conformance EarleyRecognizer(uint64_t a1)
{
  v3 = *v1;
  specialized Array<A>.hash(into:)(a1, *(v3[4] + 56));
  v4 = v3[5];
  v5 = v3[6];
  specialized Array<A>.hash(into:)(a1, v4);

  specialized Array<A>.hash(into:)(a1, v5);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance EarleyRecognizer()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  specialized Array<A>.hash(into:)(v5, *(v1[4] + 56));
  v2 = v1[5];
  v3 = v1[6];
  specialized Array<A>.hash(into:)(v5, v2);
  specialized Array<A>.hash(into:)(v5, v3);
  return Hasher._finalize()();
}

void *_sSaySayxGqd__c7ElementQyd__RszSTRd__lufC19TokenGenerationCore17NonTerminalSymbolV_ShyAFGTt0g5(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    goto LABEL_4;
  }

  v3 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC19TokenGenerationCore17NonTerminalSymbolV_Tt1g5(*(a1 + 16), 0);
  v4 = specialized Sequence._copySequenceContents(initializing:)(&v6, v3 + 4, v2, a1);
  outlined consume of Set<NonTerminalSymbol>.Iterator._Variant();
  if (v4 != v2)
  {
    __break(1u);
LABEL_4:

    return MEMORY[0x1E69E7CC0];
  }

  return v3;
}

uint64_t specialized Set.isDisjoint(with:)(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (!v2)
  {
    return 1;
  }

  v3 = *(result + 16);
  if (!v3)
  {
    return 1;
  }

  v4 = 0;
  if (v2 >= v3)
  {
    v5 = result;
  }

  else
  {
    v5 = a2;
  }

  if (v2 >= v3)
  {
    v6 = a2;
  }

  else
  {
    v6 = result;
  }

  v7 = 1 << *(v5 + 32);
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(v5 + 56);
  v10 = (v7 + 63) >> 6;
  v11 = v6 + 56;
LABEL_13:
  while (v9)
  {
    v12 = v9;
LABEL_19:
    v9 = (v12 - 1) & v12;
    if (*(v6 + 16))
    {
      v14 = *(*(v5 + 48) + ((v4 << 9) | (8 * __clz(__rbit64(v12)))));
      result = MEMORY[0x1AC57CB60](*(v6 + 40), v14);
      v15 = -1 << *(v6 + 32);
      v16 = result & ~v15;
      if ((*(v11 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
      {
        v17 = ~v15;
        while (*(*(v6 + 48) + 8 * v16) != v14)
        {
          v16 = (v16 + 1) & v17;
          if (((*(v11 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
          {
            goto LABEL_13;
          }
        }

        return 0;
      }
    }
  }

  while (1)
  {
    v13 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      break;
    }

    if (v13 >= v10)
    {
      return 1;
    }

    v12 = *(v5 + 56 + 8 * v13);
    ++v4;
    if (v12)
    {
      v4 = v13;
      goto LABEL_19;
    }
  }

  __break(1u);
  return result;
}

char *EarleyRecognizer.Chart.getDebugDescription(recognizerGrammar:)(char *result, uint64_t a2, uint64_t a3)
{
  v3 = result;
  v4 = *(a2 + 16);
  if (v4)
  {
    v5 = (a2 + 32);
    v6 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v7 = *v5;
      v8 = *(*v5 + 16);
      v9 = *(v6 + 2);
      v10 = v9 + v8;
      if (__OFADD__(v9, v8))
      {
        goto LABEL_39;
      }

      v11 = *v5;

      result = swift_isUniquelyReferenced_nonNull_native();
      if (result && v10 <= *(v6 + 3) >> 1)
      {
        if (!*(v7 + 16))
        {
          goto LABEL_3;
        }
      }

      else
      {
        if (v9 <= v10)
        {
          v12 = v9 + v8;
        }

        else
        {
          v12 = v9;
        }

        result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(result, v12, 1, v6, &_ss23_ContiguousArrayStorageCy19TokenGenerationCore16EarleyRecognizerC5StateVGMd, &_ss23_ContiguousArrayStorageCy19TokenGenerationCore16EarleyRecognizerC5StateVGMR);
        v6 = result;
        if (!*(v7 + 16))
        {
LABEL_3:

          if (v8)
          {
            goto LABEL_40;
          }

          goto LABEL_4;
        }
      }

      if ((*(v6 + 3) >> 1) - *(v6 + 2) < v8)
      {
        goto LABEL_41;
      }

      swift_arrayInitWithCopy();

      if (v8)
      {
        v13 = *(v6 + 2);
        v14 = __OFADD__(v13, v8);
        v15 = v13 + v8;
        if (v14)
        {
          goto LABEL_42;
        }

        *(v6 + 2) = v15;
      }

LABEL_4:
      ++v5;
      if (!--v4)
      {
        goto LABEL_19;
      }
    }
  }

  v6 = MEMORY[0x1E69E7CC0];
LABEL_19:
  v46[0] = v6;
  v46[1] = a3;

  v16 = 0;
  v17 = 0;
  v18 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v44 = v16;
    v19 = v46[v17];
    v20 = *(v19 + 16);

    if (v20)
    {
      break;
    }

LABEL_20:

    v16 = 1;
    v17 = 1;
    if (v44)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay19TokenGenerationCore16EarleyRecognizerC5StateVGMd, &_sSay19TokenGenerationCore16EarleyRecognizerC5StateVGMR);
      swift_arrayDestroy();
      v45[0] = v18;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
      lazy protocol witness table accessor for type [String] and conformance [A]();
      v40 = BidirectionalCollection<>.joined(separator:)();

      return v40;
    }
  }

  v21 = 0;
  while (v21 < v20)
  {
    v22 = *(v19 + 32 + 8 * v21);

    _StringGuts.grow(_:)(19);

    strcpy(v45, "==== State: ");
    BYTE5(v45[1]) = 0;
    HIWORD(v45[1]) = -5120;
    v23 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x1AC57C120](v23);

    MEMORY[0x1AC57C120](0x3D3D3D3D20, 0xE500000000000000);
    v24 = v45[0];
    v25 = v45[1];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v18 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v18 + 2) + 1, 1, v18);
    }

    v27 = *(v18 + 2);
    v26 = *(v18 + 3);
    if (v27 >= v26 >> 1)
    {
      v18 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v26 > 1), v27 + 1, 1, v18);
    }

    *(v18 + 2) = v27 + 1;
    v28 = &v18[16 * v27];
    *(v28 + 4) = v24;
    *(v28 + 5) = v25;
    v29 = *(v22 + 16);
    if (v29)
    {
      v30 = (v22 + 32);
      do
      {
        v31 = v30[1];
        v47 = *v30;
        v48 = v31;
        v49 = *(v30 + 32);
        v32 = EarleyRecognizer.Item.getDescription(grammar:)(v3);
        v35 = *(v18 + 2);
        v34 = *(v18 + 3);
        if (v35 >= v34 >> 1)
        {
          v41 = v33;
          v42 = v32;
          v18 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v34 > 1), v35 + 1, 1, v18);
          v33 = v41;
          v32 = v42;
        }

        *(v18 + 2) = v35 + 1;
        v36 = &v18[16 * v35];
        *(v36 + 4) = v32;
        *(v36 + 5) = v33;
        v30 = (v30 + 40);
        --v29;
      }

      while (v29);
    }

    v38 = *(v18 + 2);
    v37 = *(v18 + 3);
    if (v38 >= v37 >> 1)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v37 > 1), v38 + 1, 1, v18);
      v18 = result;
    }

    ++v21;
    *(v18 + 2) = v38 + 1;
    v39 = &v18[16 * v38];
    *(v39 + 4) = 0;
    *(v39 + 5) = 0xE000000000000000;
    v20 = *(v19 + 16);
    if (v21 == v20)
    {
      goto LABEL_20;
    }
  }

  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
  return result;
}

uint64_t closure #1 in static Data.== infix(_:_:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, BOOL *a4@<X8>)
{
  v26 = *MEMORY[0x1E69E9840];
  v5 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v5 != 2)
    {
      if (result)
      {
        v6 = 1;
        goto LABEL_30;
      }

LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    v7 = result;
    v8 = *(a2 + 16);
    v9 = *(a2 + 24);
    v10 = __DataStorage._bytes.getter();
    if (v10)
    {
      v11 = __DataStorage._offset.getter();
      if (__OFSUB__(v8, v11))
      {
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

      v10 += v8 - v11;
    }

    v12 = __OFSUB__(v9, v8);
    v13 = v9 - v8;
    if (!v12)
    {
      result = MEMORY[0x1AC57AAA0]();
      if (result >= v13)
      {
        v14 = v13;
      }

      else
      {
        v14 = result;
      }

      if (!v7)
      {
        goto LABEL_37;
      }

      if (!v10)
      {
LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      result = v7;
      if (v10 == v7)
      {
LABEL_27:
        v6 = 1;
        goto LABEL_30;
      }

LABEL_16:
      result = memcmp(result, v10, v14);
      v6 = result == 0;
      goto LABEL_30;
    }

LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (!v5)
  {
    __s2 = a2;
    v21 = a3;
    v22 = BYTE2(a3);
    v23 = BYTE3(a3);
    v24 = BYTE4(a3);
    v25 = BYTE5(a3);
    if (result)
    {
      result = memcmp(result, &__s2, BYTE6(a3));
      v6 = result == 0;
LABEL_30:
      *a4 = v6;
      v19 = *MEMORY[0x1E69E9840];
      return result;
    }

    __break(1u);
    goto LABEL_36;
  }

  v15 = a2;
  v16 = (a2 >> 32) - a2;
  if (a2 >> 32 < a2)
  {
    __break(1u);
    goto LABEL_32;
  }

  v17 = result;
  v10 = __DataStorage._bytes.getter();
  if (!v10)
  {
    goto LABEL_21;
  }

  v18 = __DataStorage._offset.getter();
  if (__OFSUB__(v15, v18))
  {
LABEL_34:
    __break(1u);
  }

  v10 += v15 - v18;
LABEL_21:
  result = MEMORY[0x1AC57AAA0]();
  if (result >= v16)
  {
    v14 = v16;
  }

  else
  {
    v14 = result;
  }

  if (!v17)
  {
    goto LABEL_38;
  }

  if (v10)
  {
    result = v17;
    if (v10 == v17)
    {
      goto LABEL_27;
    }

    goto LABEL_16;
  }

LABEL_40:
  __break(1u);
  return result;
}

uint64_t specialized Data.withUnsafeBytes<A>(_:)(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v14[2] = *MEMORY[0x1E69E9840];
  v7 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v7)
    {
      v14[0] = a1;
      LOWORD(v14[1]) = a2;
      BYTE2(v14[1]) = BYTE2(a2);
      BYTE3(v14[1]) = BYTE3(a2);
      BYTE4(v14[1]) = BYTE4(a2);
      BYTE5(v14[1]) = BYTE5(a2);
      goto LABEL_9;
    }

    v8 = a1;
    v9 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

LABEL_7:
    v10 = specialized __DataStorage.withUnsafeBytes<A>(in:apply:)(v8, v9, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, a4);
    outlined consume of Data._Representation(a3, a4);
    goto LABEL_11;
  }

  if (v7 == 2)
  {
    v8 = *(a1 + 16);
    v9 = *(a1 + 24);
    goto LABEL_7;
  }

  memset(v14, 0, 14);
LABEL_9:
  closure #1 in static Data.== infix(_:_:)(v14, a3, a4, &v13);
  v10 = v4;
  outlined consume of Data._Representation(a3, a4);
  if (!v4)
  {
    v10 = v13;
  }

LABEL_11:
  v11 = *MEMORY[0x1E69E9840];
  return v10 & 1;
}

void *specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS6symbol_Si8positionSi8prioritytGMd, &_ss23_ContiguousArrayStorageCySS6symbol_Si8positionSi8prioritytGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[4 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 32 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS6symbol_Si8positionSi8prioritytMd, &_sSS6symbol_Si8positionSi8prioritytMR);
    swift_arrayInitWithCopy();
  }

  return v10;
}

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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_SStGMd, &_ss23_ContiguousArrayStorageCySi_SStGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[3 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_SStMd, &_sSi_SStMR);
    swift_arrayInitWithCopy();
  }

  return v10;
}

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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9PromptKit0D35ComponentValueCustomDataTransformer_pGMd, &_ss23_ContiguousArrayStorageCy9PromptKit0D35ComponentValueCustomDataTransformer_pGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s9PromptKit0A35ComponentValueCustomDataTransformer_pMd, &_s9PromptKit0A35ComponentValueCustomDataTransformer_pMR);
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(size_t a1, int64_t a2, char a3, void *a4)
{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy19TokenGenerationCore6SymbolOGMd, &_ss23_ContiguousArrayStorageCy19TokenGenerationCore6SymbolOGMR, type metadata accessor for Symbol);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy19TokenGenerationCore14TerminalSymbolOGMd, &_ss23_ContiguousArrayStorageCy19TokenGenerationCore14TerminalSymbolOGMR, type metadata accessor for TerminalSymbol);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy10Foundation12CharacterSetVGMd, &_ss23_ContiguousArrayStorageCy10Foundation12CharacterSetVGMR, MEMORY[0x1E69680B8]);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy29GenerativeFunctionsFoundation10JSONSchemaO8PropertyVGMd, &_ss23_ContiguousArrayStorageCy29GenerativeFunctionsFoundation10JSONSchemaO8PropertyVGMR, MEMORY[0x1E69A0AD0]);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy15TokenGeneration6PromptV0dE4CoreE08RenderedF8FragmentOGMd, &_ss23_ContiguousArrayStorageCy15TokenGeneration6PromptV0dE4CoreE08RenderedF8FragmentOGMR, type metadata accessor for Prompt.RenderedPromptFragment);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy19TokenGenerationCore18TokenizationResultOGMd, &_ss23_ContiguousArrayStorageCy19TokenGenerationCore18TokenizationResultOGMR, type metadata accessor for TokenizationResult);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy15TokenGeneration6PromptV9DelimiterVGMd, &_ss23_ContiguousArrayStorageCy15TokenGeneration6PromptV9DelimiterVGMR, type metadata accessor for Prompt.Delimiter);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy15TokenGeneration6PromptV0dE4CoreE0F8FragmentOGMd, &_ss23_ContiguousArrayStorageCy15TokenGeneration6PromptV0dE4CoreE0F8FragmentOGMR, type metadata accessor for Prompt.PromptFragment);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy15TokenGeneration6PromptV0dE4CoreE0F6MarkerOGMd, &_ss23_ContiguousArrayStorageCy15TokenGeneration6PromptV0dE4CoreE0F6MarkerOGMR, type metadata accessor for Prompt.PromptMarker);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy9PromptKit011ChatMessageD0VGMd, &_ss23_ContiguousArrayStorageCy9PromptKit011ChatMessageD0VGMR, MEMORY[0x1E69C61C0]);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy9PromptKit0D0V9ComponentVGMd, &_ss23_ContiguousArrayStorageCy9PromptKit0D0V9ComponentVGMR, MEMORY[0x1E69C6360]);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy15TokenGeneration6PromptV4TurnVGMd, &_ss23_ContiguousArrayStorageCy15TokenGeneration6PromptV4TurnVGMR, type metadata accessor for Prompt.Turn);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy15TokenGeneration6PromptV10AttachmentVGMd, &_ss23_ContiguousArrayStorageCy15TokenGeneration6PromptV10AttachmentVGMR, type metadata accessor for Prompt.Attachment);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy19TokenGenerationCore15TokenizerRunnerC13TokenizedItemOGMd, &_ss23_ContiguousArrayStorageCy19TokenGenerationCore15TokenizerRunnerC13TokenizedItemOGMR, type metadata accessor for TokenizerRunner.TokenizedItem);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy29GenerativeFunctionsFoundation4ToolVGMd, &_ss23_ContiguousArrayStorageCy29GenerativeFunctionsFoundation4ToolVGMR, MEMORY[0x1E69A0DF0]);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy15TokenGeneration6PromptV5turnsSayAE4TurnVGyF0H4SpanL_VGMd, &_ss23_ContiguousArrayStorageCy15TokenGeneration6PromptV5turnsSayAE4TurnVGyF0H4SpanL_VGMR, type metadata accessor for TurnSpan #1 in Prompt.turns());
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy15TokenGeneration6PromptV5turnsSayAE4TurnVGyF0H9DelimiterL_VGMd, &_ss23_ContiguousArrayStorageCy15TokenGeneration6PromptV5turnsSayAE4TurnVGyF0H9DelimiterL_VGMR, type metadata accessor for TurnDelimiter #1 in Prompt.turns());
}

void *specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(void *a1, int64_t a2, char a3, void *a4)
{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCySaySiGGMd, &_ss23_ContiguousArrayStorageCySaySiGGMR, &_sSaySiGMd, &_sSaySiGMR);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCySay19TokenGenerationCore16EarleyRecognizerC5StateVGGMd, &_ss23_ContiguousArrayStorageCySay19TokenGenerationCore16EarleyRecognizerC5StateVGGMR, &_sSay19TokenGenerationCore16EarleyRecognizerC5StateVGMd, &_sSay19TokenGenerationCore16EarleyRecognizerC5StateVGMR);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCySay29GenerativeFunctionsFoundation10JSONSchemaO8PropertyVGGMd, &_ss23_ContiguousArrayStorageCySay29GenerativeFunctionsFoundation10JSONSchemaO8PropertyVGGMR, &_sSay29GenerativeFunctionsFoundation10JSONSchemaO8PropertyVGMd, &_sSay29GenerativeFunctionsFoundation10JSONSchemaO8PropertyVGMR);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy19TokenGenerationCore016RecognizerGuidedE11ConstraintsV0dG7ManagerC0dG5CacheVyAC06EarleyG0CAC27SpaceLookaheadMaskGeneratorVyAKG__GGMd, &_ss23_ContiguousArrayStorageCy19TokenGenerationCore016RecognizerGuidedE11ConstraintsV0dG7ManagerC0dG5CacheVyAC06EarleyG0CAC27SpaceLookaheadMaskGeneratorVyAKG__GGMR, &_s19TokenGenerationCore016RecognizerGuidedB11ConstraintsV0aD7ManagerC0aD5CacheVyAA06EarleyD0CAA27SpaceLookaheadMaskGeneratorVyAIG__GMd, &_s19TokenGenerationCore016RecognizerGuidedB11ConstraintsV0aD7ManagerC0aD5CacheVyAA06EarleyD0CAA27SpaceLookaheadMaskGeneratorVyAIG__GMR);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy19TokenGenerationCore016RecognizerGuidedE11ConstraintsV0dG7ManagerC0dG5CacheVyAC06EarleyG0CAC28ExhaustiveLogitMaskGeneratorVyAKG__GGMd, &_ss23_ContiguousArrayStorageCy19TokenGenerationCore016RecognizerGuidedE11ConstraintsV0dG7ManagerC0dG5CacheVyAC06EarleyG0CAC28ExhaustiveLogitMaskGeneratorVyAKG__GGMR, &_s19TokenGenerationCore016RecognizerGuidedB11ConstraintsV0aD7ManagerC0aD5CacheVyAA06EarleyD0CAA28ExhaustiveLogitMaskGeneratorVyAIG__GMd, &_s19TokenGenerationCore016RecognizerGuidedB11ConstraintsV0aD7ManagerC0aD5CacheVyAA06EarleyD0CAA28ExhaustiveLogitMaskGeneratorVyAIG__GMR);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCyShySiGGMd, &_ss23_ContiguousArrayStorageCyShySiGGMR, &_sShySiGMd, &_sShySiGMR);
}

char *specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    v14 = v13 - 32;
    if (v13 < 32)
    {
      v14 = v13 - 25;
    }

    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * (v14 >> 3);
  }

  else
  {
    v12 = MEMORY[0x1E69E7CC0];
  }

  v15 = v12 + 32;
  v16 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v15 >= &v16[8 * v10])
    {
      memmove(v15, v16, 8 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v12;
}

{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * ((v13 - 32) / 24);
  }

  else
  {
    v12 = MEMORY[0x1E69E7CC0];
  }

  v14 = v12 + 32;
  v15 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v14 >= &v15[24 * v10])
    {
      memmove(v14, v15, 24 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v12;
}

{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    v14 = v13 - 32;
    if (v13 < 32)
    {
      v14 = v13 - 17;
    }

    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * (v14 >> 4);
  }

  else
  {
    v12 = MEMORY[0x1E69E7CC0];
  }

  v15 = v12 + 32;
  v16 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v15 >= &v16[16 * v10])
    {
      memmove(v15, v16, 16 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v12;
}

void *specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v16 = swift_allocObject();
    v17 = _swift_stdlib_malloc_size(v16);
    v18 = v17 - 32;
    if (v17 < 32)
    {
      v18 = v17 - 17;
    }

    v16[2] = v14;
    v16[3] = 2 * (v18 >> 4);
  }

  else
  {
    v16 = MEMORY[0x1E69E7CC0];
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[2 * v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 16 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v16 = swift_allocObject();
    v17 = _swift_stdlib_malloc_size(v16);
    v18 = v17 - 32;
    if (v17 < 32)
    {
      v18 = v17 - 25;
    }

    v16[2] = v14;
    v16[3] = 2 * (v18 >> 3);
  }

  else
  {
    v16 = MEMORY[0x1E69E7CC0];
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 8 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

size_t specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v16 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

void specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(void *a1, char a2, void *a3)
{
  v39 = a1[2];
  if (!v39)
  {
    goto LABEL_23;
  }

  LOBYTE(v5) = a2;
  v7 = a1[5];
  v6 = a1[6];
  v8 = a1[4];

  if (!v7)
  {
    goto LABEL_23;
  }

  v9 = *a3;
  v10 = specialized __RawDictionaryStorage.find<A>(_:)(v8, v7);
  v12 = v9[2];
  v13 = (v11 & 1) == 0;
  v14 = __OFADD__(v12, v13);
  v15 = v12 + v13;
  if (v14)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v16 = v11;
  if (v9[3] < v15)
  {
    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v15, v5 & 1);
    v17 = *a3;
    v10 = specialized __RawDictionaryStorage.find<A>(_:)(v8, v7);
    if ((v16 & 1) == (v18 & 1))
    {
      goto LABEL_8;
    }

LABEL_6:
    v10 = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  if (v5)
  {
LABEL_8:
    if (v16)
    {
      goto LABEL_9;
    }

    goto LABEL_12;
  }

  v21 = v10;
  specialized _NativeDictionary.copy()();
  v10 = v21;
  if (v16)
  {
LABEL_9:
    v19 = swift_allocError();
    swift_willThrow();
    v20 = v19;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    if ((swift_dynamicCast() & 1) == 0)
    {

      return;
    }

    goto LABEL_28;
  }

LABEL_12:
  v22 = *a3;
  *(*a3 + 8 * (v10 >> 6) + 64) |= 1 << v10;
  v23 = (v22[6] + 16 * v10);
  *v23 = v8;
  v23[1] = v7;
  *(v22[7] + 8 * v10) = v6;
  v24 = v22[2];
  v14 = __OFADD__(v24, 1);
  v25 = v24 + 1;
  if (v14)
  {
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    _StringGuts.grow(_:)(30);
    MEMORY[0x1AC57C120](0xD00000000000001BLL, 0x80000001A8FD89D0);
    _print_unlocked<A, B>(_:_:)();
    MEMORY[0x1AC57C120](39, 0xE100000000000000);
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return;
  }

  v22[2] = v25;
  if (v39 != 1)
  {
    v5 = a1 + 9;
    v6 = 1;
    while (v6 < a1[2])
    {
      v7 = *(v5 - 1);
      v26 = *v5;
      v8 = *(v5 - 2);

      if (!v7)
      {
        goto LABEL_23;
      }

      v27 = *a3;
      v28 = specialized __RawDictionaryStorage.find<A>(_:)(v8, v7);
      v30 = v27[2];
      v31 = (v29 & 1) == 0;
      v14 = __OFADD__(v30, v31);
      v32 = v30 + v31;
      if (v14)
      {
        goto LABEL_25;
      }

      v16 = v29;
      if (v27[3] < v32)
      {
        specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v32, 1);
        v33 = *a3;
        v28 = specialized __RawDictionaryStorage.find<A>(_:)(v8, v7);
        if ((v16 & 1) != (v34 & 1))
        {
          goto LABEL_6;
        }
      }

      if (v16)
      {
        goto LABEL_9;
      }

      v35 = *a3;
      *(*a3 + 8 * (v28 >> 6) + 64) |= 1 << v28;
      v36 = (v35[6] + 16 * v28);
      *v36 = v8;
      v36[1] = v7;
      *(v35[7] + 8 * v28) = v26;
      v37 = v35[2];
      v14 = __OFADD__(v37, 1);
      v38 = v37 + 1;
      if (v14)
      {
        goto LABEL_26;
      }

      ++v6;
      v35[2] = v38;
      v5 += 3;
      if (v39 == v6)
      {
        goto LABEL_23;
      }
    }

    goto LABEL_27;
  }

LABEL_23:
}

uint64_t specialized Array<A>.hash(into:)(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  result = MEMORY[0x1AC57CB80](v4);
  if (v4)
  {
    v6 = 0;
    v7 = a2 + 32;
    do
    {
      v8 = (v7 + 24 * v6);
      v10 = *v8;
      v9 = v8[1];
      v11 = v8[2];

      String.hash(into:)();
      MEMORY[0x1AC57CB80](*(v11 + 16));
      v12 = *(v11 + 16);
      if (v12)
      {
        v13 = (v11 + 32);
        do
        {
          v14 = *v13++;

          specialized Array<A>.hash(into:)(a1, v14);

          --v12;
        }

        while (v12);
      }

      ++v6;
    }

    while (v6 != v4);
  }

  return result;
}

{
  v3 = type metadata accessor for CharacterSet();
  v55 = *(v3 - 8);
  v4 = *(v55 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = type metadata accessor for TerminalSymbol(0);
  v44 = *(v57 - 8);
  v7 = *(v44 + 64);
  v8 = MEMORY[0x1EEE9AC00](v57);
  v10 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = &v44 - v12;
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = &v44 - v15;
  MEMORY[0x1EEE9AC00](v14);
  v47 = &v44 - v17;
  v52 = type metadata accessor for Symbol(0);
  v18 = *(v52 - 8);
  v19 = *(v18 + 64);
  v20 = MEMORY[0x1EEE9AC00](v52);
  v54 = (&v44 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v20);
  v53 = &v44 - v22;
  v23 = *(a2 + 16);
  result = MEMORY[0x1AC57CB80](v23);
  v51 = v23;
  if (v23)
  {
    v50 = a2 + ((*(v18 + 80) + 32) & ~*(v18 + 80));
    v49 = *(v18 + 72);
    v25 = 0;
    v26 = v55;
    v55 += 8;
    v56 = (v26 + 32);
    v45 = v16;
    while (1)
    {
      v27 = v53;
      outlined init with copy of TerminalSymbol(v50 + v49 * v25, v53, type metadata accessor for Symbol);
      outlined init with copy of TerminalSymbol(v27, v54, type metadata accessor for Symbol);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (!EnumCaseMultiPayload)
      {
        break;
      }

      if (EnumCaseMultiPayload != 1)
      {
        v40 = *v54;
        v41 = v54[1];
        MEMORY[0x1AC57CB80](2);
        String.hash(into:)();

LABEL_28:
        result = outlined destroy of PromptTemplateInfo.RichVariableBinding.Component(v53, type metadata accessor for Symbol);
        goto LABEL_4;
      }

      v46 = v25;
      v29 = *v54;
      MEMORY[0x1AC57CB80](1);
      MEMORY[0x1AC57CB80](*(v29 + 16));
      v48 = v29;
      v30 = *(v29 + 16);
      if (v30)
      {
        v31 = v48 + ((*(v44 + 80) + 32) & ~*(v44 + 80));
        v32 = *(v44 + 72);
        do
        {
          outlined init with copy of TerminalSymbol(v31, v13, type metadata accessor for TerminalSymbol);
          outlined init with copy of TerminalSymbol(v13, v10, type metadata accessor for TerminalSymbol);
          v34 = swift_getEnumCaseMultiPayload();
          if (v34 > 1)
          {
            if (v34 == 2)
            {
              (*v56)(v6, v10, v3);
              v36 = 2;
LABEL_17:
              MEMORY[0x1AC57CB80](v36);
              lazy protocol witness table accessor for type EarleyRecognizer and conformance EarleyRecognizer(&lazy protocol witness table cache variable for type CharacterSet and conformance CharacterSet, 255, MEMORY[0x1E69680B8]);
              dispatch thunk of Hashable.hash(into:)();
              (*v55)(v6, v3);
              goto LABEL_10;
            }

            v33 = *v10;
            MEMORY[0x1AC57CB80](3);
            Hasher._combine(_:)(v33);
          }

          else
          {
            if (v34)
            {
              (*v56)(v6, v10, v3);
              v36 = 1;
              goto LABEL_17;
            }

            v35 = *v10;
            MEMORY[0x1AC57CB80](0);
            Hasher._combine(_:)(v35);
          }

LABEL_10:
          outlined destroy of PromptTemplateInfo.RichVariableBinding.Component(v13, type metadata accessor for TerminalSymbol);
          v31 += v32;
          --v30;
        }

        while (v30);
      }

      outlined destroy of PromptTemplateInfo.RichVariableBinding.Component(v53, type metadata accessor for Symbol);

      v16 = v45;
      v25 = v46;
LABEL_4:
      if (++v25 == v51)
      {
        return result;
      }
    }

    v37 = v47;
    outlined init with take of TerminalSymbol(v54, v47, type metadata accessor for TerminalSymbol);
    MEMORY[0x1AC57CB80](0);
    outlined init with copy of TerminalSymbol(v37, v16, type metadata accessor for TerminalSymbol);
    v38 = swift_getEnumCaseMultiPayload();
    if (v38 > 1)
    {
      if (v38 != 2)
      {
        v43 = *v16;
        MEMORY[0x1AC57CB80](3);
        Hasher._combine(_:)(v43);
        goto LABEL_27;
      }

      (*v56)(v6, v16, v3);
      v42 = 2;
    }

    else
    {
      if (!v38)
      {
        v39 = *v16;
        MEMORY[0x1AC57CB80](0);
        Hasher._combine(_:)(v39);
LABEL_27:
        outlined destroy of PromptTemplateInfo.RichVariableBinding.Component(v47, type metadata accessor for TerminalSymbol);
        goto LABEL_28;
      }

      (*v56)(v6, v16, v3);
      v42 = 1;
    }

    MEMORY[0x1AC57CB80](v42);
    lazy protocol witness table accessor for type EarleyRecognizer and conformance EarleyRecognizer(&lazy protocol witness table cache variable for type CharacterSet and conformance CharacterSet, 255, MEMORY[0x1E69680B8]);
    dispatch thunk of Hashable.hash(into:)();
    (*v55)(v6, v3);
    goto LABEL_27;
  }

  return result;
}

{
  v3 = type metadata accessor for CharacterSet();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = type metadata accessor for TerminalSymbol(0);
  v8 = *(v29 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x1EEE9AC00](v29);
  v12 = (&v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v26 - v13;
  v15 = *(a2 + 16);
  result = MEMORY[0x1AC57CB80](v15);
  if (v15)
  {
    v17 = a2 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
    v18 = *(v8 + 72);
    v27 = (v4 + 32);
    v28 = v18;
    v19 = (v4 + 8);
    while (1)
    {
      outlined init with copy of TerminalSymbol(v17, v14, type metadata accessor for TerminalSymbol);
      outlined init with copy of TerminalSymbol(v14, v12, type metadata accessor for TerminalSymbol);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload > 1)
      {
        break;
      }

      if (EnumCaseMultiPayload)
      {
        (*v27)(v7, v12, v3);
        v23 = 1;
LABEL_10:
        MEMORY[0x1AC57CB80](v23);
        lazy protocol witness table accessor for type EarleyRecognizer and conformance EarleyRecognizer(&lazy protocol witness table cache variable for type CharacterSet and conformance CharacterSet, 255, MEMORY[0x1E69680B8]);
        dispatch thunk of Hashable.hash(into:)();
        (*v19)(v7, v3);
        goto LABEL_4;
      }

      v20 = *v12;
      MEMORY[0x1AC57CB80](0);
      v21 = v20;
      v18 = v28;
      Hasher._combine(_:)(v21);
LABEL_4:
      result = outlined destroy of PromptTemplateInfo.RichVariableBinding.Component(v14, type metadata accessor for TerminalSymbol);
      v17 += v18;
      if (!--v15)
      {
        return result;
      }
    }

    if (EnumCaseMultiPayload != 2)
    {
      v24 = *v12;
      MEMORY[0x1AC57CB80](3);
      v25 = v24;
      v18 = v28;
      Hasher._combine(_:)(v25);
      goto LABEL_4;
    }

    (*v27)(v7, v12, v3);
    v23 = 2;
    goto LABEL_10;
  }

  return result;
}

{
  v3 = *(a2 + 16);
  result = MEMORY[0x1AC57CB80](v3);
  if (v3)
  {
    v5 = (a2 + 40);
    do
    {
      v7 = *(v5 - 1);
      if (*v5)
      {
        if (*v5 != 1)
        {
          v7 = 0;
          goto LABEL_5;
        }

        v6 = 2;
      }

      else
      {
        v6 = 1;
      }

      MEMORY[0x1AC57CB80](v6);
LABEL_5:
      v5 += 16;
      result = MEMORY[0x1AC57CB80](v7);
      --v3;
    }

    while (v3);
  }

  return result;
}

{
  v4 = type metadata accessor for Prompt.Attachment(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a2 + 16);
  result = MEMORY[0x1AC57CB80](v10, v7);
  if (v10)
  {
    v13 = *(v4 + 20);
    v12 = *(v4 + 24);
    v14 = a2 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v15 = *(v5 + 72);
    do
    {
      outlined init with copy of TerminalSymbol(v14, v9, type metadata accessor for Prompt.Attachment);
      Prompt.AttachmentContent.hash(into:)(a1);
      MEMORY[0x1AC57CB80](*&v9[v13]);
      MEMORY[0x1AC57CB80](*&v9[v12]);
      result = outlined destroy of PromptTemplateInfo.RichVariableBinding.Component(v9, type metadata accessor for Prompt.Attachment);
      v14 += v15;
      --v10;
    }

    while (v10);
  }

  return result;
}

{
  v3 = type metadata accessor for Locale();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v32 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v29 - v9;
  v11 = type metadata accessor for Prompt.Delimiter(0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = (&v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = *(a2 + 16);
  result = MEMORY[0x1AC57CB80](v17, v14);
  if (v17)
  {
    v19 = type metadata accessor for Prompt.SpecialToken(0);
    v20 = v19[5];
    v37 = (v16 + v19[6]);
    v38 = v20;
    v21 = v19[7];
    v22 = *(v11 + 24);
    v35 = *(v11 + 20);
    v36 = v21;
    v23 = a2 + ((*(v12 + 80) + 32) & ~*(v12 + 80));
    v33 = *(v12 + 72);
    v34 = v22;
    v24 = (v4 + 48);
    v30 = (v4 + 8);
    v31 = (v4 + 32);
    do
    {
      outlined init with copy of TerminalSymbol(v23, v16, type metadata accessor for Prompt.Delimiter);
      v26 = *v16;
      v27 = v16[1];
      String.hash(into:)();
      outlined init with copy of Locale?(v16 + v38, v10);
      if ((*v24)(v10, 1, v3) == 1)
      {
        Hasher._combine(_:)(0);
      }

      else
      {
        v28 = v32;
        (*v31)(v32, v10, v3);
        Hasher._combine(_:)(1u);
        lazy protocol witness table accessor for type EarleyRecognizer and conformance EarleyRecognizer(&lazy protocol witness table cache variable for type Locale and conformance Locale, 255, MEMORY[0x1E6969770]);
        dispatch thunk of Hashable.hash(into:)();
        (*v30)(v28, v3);
      }

      if (v37[1])
      {
        v25 = *v37;
        Hasher._combine(_:)(1u);
        String.hash(into:)();
      }

      else
      {
        Hasher._combine(_:)(0);
      }

      Hasher._combine(_:)(*(v16 + v36));
      MEMORY[0x1AC57CB80](*(v16 + v35));
      MEMORY[0x1AC57CB80](*(v16 + v34));
      result = outlined destroy of PromptTemplateInfo.RichVariableBinding.Component(v16, type metadata accessor for Prompt.Delimiter);
      v23 += v33;
      --v17;
    }

    while (v17);
  }

  return result;
}

{
  v3 = *(a2 + 16);
  result = MEMORY[0x1AC57CB80](v3);
  if (v3)
  {
    v5 = (a2 + 48);
    do
    {
      v7 = *(v5 - 2);
      v6 = *(v5 - 1);
      v9 = *v5;
      v8 = v5[1];
      v10 = v5[3];
      v13 = v5[2];
      v11 = v5[4];
      v12 = v5[5];

      outlined copy of Data?(v11, v12);
      String.hash(into:)();
      MEMORY[0x1AC57CB80](0);
      String.hash(into:)();
      String.hash(into:)();
      if (v12 >> 60 == 15)
      {
        Hasher._combine(_:)(0);
      }

      else
      {
        Hasher._combine(_:)(1u);
        Data.hash(into:)();
      }

      result = outlined consume of Data?(v11, v12);
      v5 += 8;
      --v3;
    }

    while (v3);
  }

  return result;
}

void specialized Array<A>.hash(into:)(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  MEMORY[0x1AC57CB80](v4);
  if (v4)
  {
    v5 = (a2 + 48);
    do
    {
      v9 = *(v5 - 2);
      v10 = *(v5 - 1);
      v11 = *v5;
      if (v11 > 2)
      {
        if (v11 == 3)
        {
          MEMORY[0x1AC57CB80](4);

          specialized Array<A>.hash(into:)(a1, v9);
          v6 = v9;
          v7 = v10;
          v8 = 3;
        }

        else
        {
          if (v11 != 4)
          {
            MEMORY[0x1AC57CB80](0);
            goto LABEL_5;
          }

          MEMORY[0x1AC57CB80](5);

          specialized Dictionary<>.hash(into:)(a1, v9);
          v6 = v9;
          v7 = v10;
          v8 = 4;
        }
      }

      else
      {
        if (!*v5)
        {
          MEMORY[0x1AC57CB80](1);
          Hasher._combine(_:)(v9 & 1);
          goto LABEL_5;
        }

        if (v11 == 1)
        {
          MEMORY[0x1AC57CB80](2);
          if ((v9 & 0x7FFFFFFFFFFFFFFFLL) != 0)
          {
            v12 = v9;
          }

          else
          {
            v12 = 0;
          }

          MEMORY[0x1AC57CBC0](v12);
          goto LABEL_5;
        }

        MEMORY[0x1AC57CB80](3);

        String.hash(into:)();
        v6 = v9;
        v7 = v10;
        v8 = 2;
      }

      outlined consume of JSON(v6, v7, v8);
LABEL_5:
      v5 += 24;
      --v4;
    }

    while (v4);
  }
}

{
  v3 = *(a2 + 16);
  MEMORY[0x1AC57CB80](v3);
  if (v3)
  {
    v4 = 0;
    v5 = a2 + 32;
    do
    {
      v6 = *(v5 + 8 * v4);
      MEMORY[0x1AC57CB80](*(v6 + 16));
      v7 = *(v6 + 16);
      if (v7)
      {
        v8 = (v6 + 64);
        do
        {
          v9 = *(v8 - 3);
          v11 = *(v8 - 2);
          v10 = *(v8 - 1);
          v12 = *v8;
          MEMORY[0x1AC57CB80](*(v8 - 4));
          MEMORY[0x1AC57CB80](v9);
          MEMORY[0x1AC57CB80](v11);
          if (v12 == 1)
          {
            Hasher._combine(_:)(0);
          }

          else
          {
            Hasher._combine(_:)(1u);
            MEMORY[0x1AC57CB80](v10);
          }

          v8 += 40;
          --v7;
        }

        while (v7);
      }

      ++v4;
    }

    while (v4 != v3);
  }
}

{
  v3 = *(a2 + 16);
  MEMORY[0x1AC57CB80](v3);
  if (v3)
  {
    v4 = (a2 + 64);
    do
    {
      v5 = *(v4 - 3);
      v7 = *(v4 - 2);
      v6 = *(v4 - 1);
      v8 = *v4;
      MEMORY[0x1AC57CB80](*(v4 - 4));
      MEMORY[0x1AC57CB80](v5);
      MEMORY[0x1AC57CB80](v7);
      if (v8 == 1)
      {
        Hasher._combine(_:)(0);
      }

      else
      {
        Hasher._combine(_:)(1u);
        MEMORY[0x1AC57CB80](v6);
      }

      v4 += 40;
      --v3;
    }

    while (v3);
  }
}

{
  v3 = *(a2 + 16);
  MEMORY[0x1AC57CB80](v3);
  v17 = v3;
  if (v3)
  {
    v4 = 0;
    v16 = a2 + 32;
    do
    {
      v18 = v4;
      v5 = *(v16 + 8 * v4);
      MEMORY[0x1AC57CB80](*(v5 + 16));
      v6 = *(v5 + 16);
      if (v6)
      {
        v7 = 0;
        v8 = v5 + 32;
        do
        {
          v9 = *(v8 + 8 * v7);
          MEMORY[0x1AC57CB80](*(v9 + 16));
          v10 = *(v9 + 16);
          if (v10)
          {
            v11 = (v9 + 64);
            do
            {
              v12 = *(v11 - 3);
              v14 = *(v11 - 2);
              v13 = *(v11 - 1);
              v15 = *v11;
              MEMORY[0x1AC57CB80](*(v11 - 4));
              MEMORY[0x1AC57CB80](v12);
              MEMORY[0x1AC57CB80](v14);
              if (v15 == 1)
              {
                Hasher._combine(_:)(0);
              }

              else
              {
                Hasher._combine(_:)(1u);
                MEMORY[0x1AC57CB80](v13);
              }

              v11 += 40;
              --v10;
            }

            while (v10);
          }

          ++v7;
        }

        while (v7 != v6);
      }

      v4 = v18 + 1;
    }

    while (v18 + 1 != v17);
  }
}

{
  v3 = *(a2 + 16);
  MEMORY[0x1AC57CB80](v3);
  if (v3)
  {
    v4 = 0;
    v5 = a2 + 32;
    while (1)
    {
      v6 = v5 + 24 * v4;
      v7 = *(v6 + 8);
      v8 = *(v6 + 16);
      v9 = *(v6 + 17);
      MEMORY[0x1AC57CB80](*v6);
      MEMORY[0x1AC57CB80](*(v7 + 16));
      v10 = *(v7 + 16);
      if (v10)
      {
        break;
      }

LABEL_3:
      Hasher._combine(_:)(v8);
      ++v4;
      Hasher._combine(_:)(v9);
      if (v4 == v3)
      {
        return;
      }
    }

    v11 = (v7 + 40);
    while (1)
    {
      v13 = *(v11 - 1);
      if (*v11)
      {
        if (*v11 != 1)
        {
          v13 = 0;
          goto LABEL_8;
        }

        v12 = 2;
      }

      else
      {
        v12 = 1;
      }

      MEMORY[0x1AC57CB80](v12);
LABEL_8:
      v11 += 16;
      MEMORY[0x1AC57CB80](v13);
      if (!--v10)
      {
        goto LABEL_3;
      }
    }
  }
}

{
  v3 = *(a2 + 16);
  MEMORY[0x1AC57CB80](v3);
  v28 = v3;
  if (v3)
  {
    v4 = 0;
    v27 = a2 + 32;
    do
    {
      v6 = v27 + 56 * v4;
      v8 = *v6;
      v7 = *(v6 + 8);
      v9 = *(v6 + 16);
      v10 = *(v6 + 24);
      v11 = *(v6 + 32);
      v12 = *(v6 + 40);
      v13 = *(v6 + 48);
      if (v13)
      {
        v14 = 4;
      }

      else
      {
        v14 = 0;
      }

      v15 = v14 | (v9 >> 60) & 3;
      if (v15 <= 1)
      {
        if (v15)
        {
          MEMORY[0x1AC57CB80](1);
          MEMORY[0x1AC57CB80](v8 & 1);
          outlined copy of Data._Representation(v7, v9 & 0xCFFFFFFFFFFFFFFFLL);
          Data.hash(into:)();
        }

        else
        {
          MEMORY[0x1AC57CB80](0);

          String.hash(into:)();
        }
      }

      else if (v15 == 2)
      {
        MEMORY[0x1AC57CB80](2);
        v5 = v8;
        NSObject.hash(into:)();
      }

      else
      {
        if (v15 != 3)
        {
          MEMORY[0x1AC57CB80](4);
          MEMORY[0x1AC57CB80](*(v8 + 2));
          v16 = *(v8 + 2);
          if (v16)
          {
            v17 = v8 + 16;
            do
            {
              v18 = *v17++;
              __asm { FCMP            H0, #0 }

              if (_ZF)
              {
                _H0 = COERCE_SHORT_FLOAT(0);
              }

              Hasher._combine(_:)(LOWORD(_H0));
              --v16;
            }

            while (v16);
          }

          MEMORY[0x1AC57CB80](*(v7 + 16));
          v24 = *(v7 + 16);
          if (v24)
          {
            v25 = (v7 + 32);
            do
            {
              v26 = *v25++;
              MEMORY[0x1AC57CB80](v26);
              --v24;
            }

            while (v24);
          }

          goto LABEL_5;
        }

        MEMORY[0x1AC57CB80](3);
        MEMORY[0x1AC57CB80](v8 & 1);
        outlined copy of Prompt.Turn.Segment(v8, v7, v9, v10, v11, v12, v13);

        Data.hash(into:)();
        MEMORY[0x1AC57CB80](v10);
        String.hash(into:)();
      }

      outlined consume of Prompt.Turn.Segment(v8, v7, v9, v10, v11, v12, v13);
LABEL_5:
      ++v4;
    }

    while (v4 != v28);
  }
}

{
  v3 = *(a2 + 16);
  MEMORY[0x1AC57CB80](v3);
  if (v3)
  {
    v4 = (a2 + 32);
    do
    {
      v5 = *v4++;
      __asm { FCMP            H0, #0 }

      if (_ZF)
      {
        _H0 = COERCE_SHORT_FLOAT(0);
      }

      Hasher._combine(_:)(LOWORD(_H0));
      --v3;
    }

    while (v3);
  }
}

uint64_t specialized __DataStorage.withUnsafeBytes<A>(in:apply:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  result = __DataStorage._bytes.getter();
  v11 = result;
  if (result)
  {
    result = __DataStorage._offset.getter();
    if (__OFSUB__(a1, result))
    {
LABEL_9:
      __break(1u);
      return result;
    }

    v11 += a1 - result;
  }

  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_9;
  }

  MEMORY[0x1AC57AAA0]();
  closure #1 in static Data.== infix(_:_:)(v11, a4, a5, &v13);
  if (!v5)
  {
    return v13;
  }

  return v12;
}

uint64_t specialized static EarleyRecognizer.== infix(_:_:)(void *a1, void *a2)
{
  if ((_sSasSQRzlE2eeoiySbSayxG_ABtFZ19TokenGenerationCore16EarleyRecognizerC0F4RuleV_Tt1g5(*(a1[4] + 56), *(a2[4] + 56)) & 1) == 0)
  {
    return 0;
  }

  v4 = a1[5];
  v5 = a1[6];
  v6 = a2[5];
  v7 = a2[6];
  if ((_sSasSQRzlE2eeoiySbSayxG_ABtFZSay19TokenGenerationCore16EarleyRecognizerC5StateVG_Tt1g5(v4, v6) & 1) == 0)
  {
    return 0;
  }

  return _sSasSQRzlE2eeoiySbSayxG_ABtFZ19TokenGenerationCore16EarleyRecognizerC5StateV_Tt1g5(v5, v7);
}

void specialized static EarleyRecognizer.predictAndComplete(recognizerGrammar:chart:items:)(void *a1, uint64_t a2, uint64_t a3, char **a4)
{
  v5 = a1[5];
  v7 = a1[7];
  v6 = a1[8];
  v8 = EarleyRecognizer.Chart.numberOfStates()();
  v182 = MEMORY[0x1E69E7CD0];
  v9 = *a4;
  v10 = *(*a4 + 2);
  if (v10)
  {
    v11 = 0;
    v151 = v5;
    v152 = v7 + 32;
    v147 = v5 + 32;
    v148 = (v6 + 32);
    v155 = v8;
    v156 = a4;
    v12 = v5;
    v168 = v7 + 40;
    v169 = v7;
    v13 = v6;
    v150 = v6;
    while (1)
    {
      if (v11 >= v10)
      {
        goto LABEL_206;
      }

      v14 = &v9[40 * v11];
      v15 = *(v14 + 4);
      if ((v15 & 0x8000000000000000) != 0)
      {
        goto LABEL_207;
      }

      if (v15 >= *(v7 + 16))
      {
        goto LABEL_208;
      }

      v17 = *(v14 + 5);
      v16 = *(v14 + 6);
      v18 = (v152 + 24 * v15);
      v20 = *v18;
      v19 = v18[1];
      if (v17 >= *(v19 + 16))
      {
        break;
      }

      v21 = v19 + 16 * v17;
      if (!*(v21 + 40))
      {
        goto LABEL_4;
      }

      if (*(v21 + 40) != 1)
      {
        break;
      }

      v22 = *(v14 + 7);
      v23 = v14[64];
      v24 = *(v21 + 32);
      v25 = v148;
      v26 = *(v13 + 16);
      while (v26)
      {
        v27 = *v25++;
        --v26;
        if (v27 == v24)
        {
          v28 = 0;
          v29 = v8;
          goto LABEL_109;
        }
      }

      v29 = v22;
      v28 = v23;
LABEL_109:
      if ((v24 & 0x8000000000000000) != 0)
      {
        goto LABEL_209;
      }

      v93 = a1[9];
      if (v24 >= *(v93 + 16))
      {
        goto LABEL_210;
      }

      v94 = *(v93 + 8 * v24 + 32);
      v95 = *(v94 + 16);
      if (!v95)
      {
        goto LABEL_196;
      }

      v144 = v24;
      v145 = v23;
      v146 = v22;
      v154 = v17;
      v158 = v11;
      v160 = v15;
      v162 = v16;
      v173 = v94 + 32;
      v178 = v29;

      v96 = v178;
      v97 = 0;
      v175 = v28;
      v164 = v94;
      v167 = v95;
      while (2)
      {
        if (v97 >= *(v94 + 16))
        {
          goto LABEL_205;
        }

        v101 = *(v173 + 8 * v97);
        v190 = v101;
        *&v191 = v8;
        *(&v191 + 1) = v96;
        v192 = v28;
        v102 = *(v9 + 2);
        v180 = v102;
        if (v102 <= 9)
        {
          if (v102)
          {
            v103 = v9 + 64;
            do
            {
              if (*(v103 - 4) == v101 && *(v103 - 3) == 0 && *(v103 - 2) == v8)
              {
                if (*v103)
                {
                  if (v28)
                  {
                    goto LABEL_115;
                  }
                }

                else
                {
                  if (*(v103 - 1) == v96)
                  {
                    v104 = v28;
                  }

                  else
                  {
                    v104 = 1;
                  }

                  if ((v104 & 1) == 0)
                  {
                    goto LABEL_115;
                  }
                }
              }

              v103 += 40;
              --v102;
            }

            while (v102);
          }

          v108 = a4;
          v109 = v97;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v9 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v180 + 1, 1, v9);
          }

          v111 = *(v9 + 2);
          v110 = *(v9 + 3);
          v112 = v111 + 1;
          v96 = v178;
          if (v111 >= v110 >> 1)
          {
            v142 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v110 > 1), v111 + 1, 1, v9);
            v97 = v109;
            v96 = v178;
            v9 = v142;
          }

          else
          {
            v97 = v109;
          }

          a4 = v108;
          goto LABEL_114;
        }

        v107 = v182;
        v171 = v97;
        if (!*(v182 + 16))
        {
          v165 = v101;
          v113 = 0;
          v114 = v182 + 56;
          while (1)
          {
            while (1)
            {
              v115 = &v9[40 * v113 + 32];
              v116 = *(v115 + 32);
              v117 = *(v115 + 16);
              v193[0] = *v115;
              v193[1] = v117;
              v194 = v116;
              v118 = v193[0];
              v119 = v117;
              v120 = v116;
              v121 = *(v107 + 40);
              Hasher.init(_seed:)();
              MEMORY[0x1AC57CB80](v118);
              MEMORY[0x1AC57CB80](*(&v118 + 1));
              MEMORY[0x1AC57CB80](v119);
              if (v120 == 1)
              {
                Hasher._combine(_:)(0);
              }

              else
              {
                Hasher._combine(_:)(1u);
                MEMORY[0x1AC57CB80](*(&v119 + 1));
              }

              ++v113;
              v122 = Hasher._finalize()();
              v123 = -1 << *(v107 + 32);
              v124 = v122 & ~v123;
              if ((*(v114 + ((v124 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v124))
              {
                break;
              }

LABEL_166:
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v181[0] = v107;
              specialized _NativeSet.insertNew(_:at:isUnique:)(v193, v124, isUniquelyReferenced_nonNull_native);
              v107 = v181[0];
              if (v113 == v180)
              {
LABEL_168:
                v182 = v107;
                v8 = v155;
                a4 = v156;
                v28 = v175;
                v94 = v164;
                v101 = v165;
                if (*(v107 + 16))
                {
                  goto LABEL_169;
                }

LABEL_190:
                specialized Set._Variant.insert(_:)(v181, &v190);
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v9 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v9 + 2) + 1, 1, v9);
                }

                v111 = *(v9 + 2);
                v140 = *(v9 + 3);
                v112 = v111 + 1;
                v96 = v178;
                v95 = v167;
                v97 = v171;
                if (v111 >= v140 >> 1)
                {
                  v141 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v140 > 1), v111 + 1, 1, v9);
                  v97 = v171;
                  v96 = v178;
                  v9 = v141;
                }

                v7 = v169;
LABEL_114:
                *(v9 + 2) = v112;
                v98 = &v9[40 * v111];
                v99 = v190;
                v100 = v191;
                v98[64] = v192;
                *(v98 + 2) = v99;
                *(v98 + 3) = v100;
                *a4 = v9;
                v28 = v175;
                goto LABEL_115;
              }

              v114 = v181[0] + 56;
            }

            v125 = ~v123;
            while (1)
            {
              v127 = *(v107 + 48) + 40 * v124;
              if (*v127 != v118 || *(v127 + 8) != *(&v118 + 1) || *(v127 + 16) != v119)
              {
                goto LABEL_154;
              }

              if ((*(v127 + 32) & 1) == 0)
              {
                break;
              }

              if (v120)
              {
                goto LABEL_144;
              }

LABEL_154:
              v124 = (v124 + 1) & v125;
              if (((*(v114 + ((v124 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v124) & 1) == 0)
              {
                goto LABEL_166;
              }
            }

            if (*(v127 + 24) == *(&v119 + 1))
            {
              v126 = v120;
            }

            else
            {
              v126 = 1;
            }

            if (v126)
            {
              goto LABEL_154;
            }

LABEL_144:
            if (v113 == v180)
            {
              goto LABEL_168;
            }
          }
        }

LABEL_169:
        v131 = *(v107 + 40);
        Hasher.init(_seed:)();
        MEMORY[0x1AC57CB80](v101);
        MEMORY[0x1AC57CB80](0);
        MEMORY[0x1AC57CB80](v8);
        if (v28)
        {
          Hasher._combine(_:)(0);
        }

        else
        {
          Hasher._combine(_:)(1u);
          MEMORY[0x1AC57CB80](v178);
        }

        v132 = Hasher._finalize()();
        v133 = -1 << *(v107 + 32);
        v134 = v132 & ~v133;
        v96 = v178;
        if (((*(v107 + 56 + ((v134 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v134) & 1) == 0)
        {
          goto LABEL_190;
        }

        v135 = ~v133;
        while (1)
        {
          v136 = *(v107 + 48) + 40 * v134;
          if (*v136 != v101 || *(v136 + 8) != 0 || *(v136 + 16) != v8)
          {
            goto LABEL_175;
          }

          if ((*(v136 + 32) & 1) == 0)
          {
            break;
          }

          if (v28)
          {
            goto LABEL_189;
          }

LABEL_175:
          v134 = (v134 + 1) & v135;
          if (((*(v107 + 56 + ((v134 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v134) & 1) == 0)
          {
            goto LABEL_190;
          }
        }

        if (*(v136 + 24) == v178)
        {
          v139 = v28;
        }

        else
        {
          v139 = 1;
        }

        if (v139)
        {
          goto LABEL_175;
        }

LABEL_189:
        v95 = v167;
        v7 = v169;
        v97 = v171;
LABEL_115:
        if (++v97 != v95)
        {
          continue;
        }

        break;
      }

      v15 = v160;
      v16 = v162;
      v13 = v150;
      v12 = v151;
      v11 = v158;
      v17 = v154;
      v22 = v146;
      LOBYTE(v23) = v145;
      v24 = v144;
LABEL_196:
      if (v24 >= *(v12 + 16))
      {
        goto LABEL_211;
      }

      if (*(v147 + v24) == 1)
      {
        v188[0] = v15;
        v188[1] = v17 + 1;
        v188[2] = v16;
        v188[3] = v22;
        v189 = v23;
        v143 = v11;
        Array<A>.appendUnique(_:itemsSet:)(v188, &v182);
        v11 = v143;
        v13 = v150;
        v12 = v151;
      }

LABEL_4:
      ++v11;
      v9 = *a4;
      v10 = *(*a4 + 2);
      if (v11 >= v10)
      {
        goto LABEL_199;
      }
    }

    v157 = v11;
    if (v16 >= v8)
    {
    }

    else
    {
      EarleyRecognizer.Chart.state(at:)(v16);
      v30 = v181[0];
      v10 = *(v181[0] + 16);
      if (!v10)
      {
LABEL_3:

        v13 = v150;
        v12 = v151;
        v11 = v157;
        goto LABEL_4;
      }
    }

    v31 = 0;
    v32 = v30 + 32;
    v172 = v30 + 32;
    v174 = v30;
    v33 = v168;
    v34 = v20;
    v153 = v10;
    v166 = v20;
    while (v31 < *(v30 + 16))
    {
      v38 = v32 + 40 * v31;
      v39 = *v38;
      if ((*v38 & 0x8000000000000000) != 0)
      {
        goto LABEL_203;
      }

      if (v39 >= *(v7 + 16))
      {
        goto LABEL_204;
      }

      v40 = *(v38 + 8);
      v41 = *(v33 + 24 * v39);
      if (v40 < *(v41 + 16))
      {
        v42 = v41 + 16 * v40;
        v43 = *(v42 + 40) == 1 && *(v42 + 32) == v34;
        if (v43)
        {
          v44 = a4;
          v45 = *(v38 + 16);
          v46 = *(v38 + 24);
          v47 = *(v38 + 32);
          v48 = v40 + 1;
          *&v183 = *v38;
          *(&v183 + 1) = v40 + 1;
          *&v184 = v45;
          *(&v184 + 1) = v46;
          v185 = v47;
          v49 = *(v9 + 2);
          v179 = v49;
          if (v49 > 9)
          {
            v176 = v9;
            v54 = v182;
            v170 = v31;
            v177 = v47;
            if (*(v182 + 16))
            {
              goto LABEL_84;
            }

            v159 = v48;
            v161 = v46;
            v163 = v45;
            v63 = 0;
            v64 = v182 + 56;
LABEL_60:
            while (2)
            {
              v65 = &v176[40 * v63 + 32];
              v66 = *(v65 + 32);
              v67 = *(v65 + 16);
              v186[0] = *v65;
              v186[1] = v67;
              v187 = v66;
              v68 = v186[0];
              v69 = v67;
              v70 = v66;
              v71 = *(v54 + 40);
              Hasher.init(_seed:)();
              MEMORY[0x1AC57CB80](v68);
              MEMORY[0x1AC57CB80](*(&v68 + 1));
              MEMORY[0x1AC57CB80](v69);
              if (v70 == 1)
              {
                Hasher._combine(_:)(0);
              }

              else
              {
                Hasher._combine(_:)(1u);
                MEMORY[0x1AC57CB80](*(&v69 + 1));
              }

              ++v63;
              v72 = Hasher._finalize()();
              v73 = -1 << *(v54 + 32);
              v74 = v72 & ~v73;
              if ((*(v64 + ((v74 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v74))
              {
                v75 = ~v73;
                do
                {
                  v77 = *(v54 + 48) + 40 * v74;
                  if (*v77 == v68 && *(v77 + 8) == *(&v68 + 1) && *(v77 + 16) == v69)
                  {
                    if (*(v77 + 32))
                    {
                      if (v70)
                      {
                        goto LABEL_59;
                      }
                    }

                    else
                    {
                      if (*(v77 + 24) == *(&v69 + 1))
                      {
                        v76 = v70;
                      }

                      else
                      {
                        v76 = 1;
                      }

                      if ((v76 & 1) == 0)
                      {
LABEL_59:
                        if (v63 == v179)
                        {
                          goto LABEL_83;
                        }

                        goto LABEL_60;
                      }
                    }
                  }

                  v74 = (v74 + 1) & v75;
                }

                while (((*(v64 + ((v74 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v74) & 1) != 0);
              }

              v80 = swift_isUniquelyReferenced_nonNull_native();
              v181[0] = v54;
              specialized _NativeSet.insertNew(_:at:isUnique:)(v186, v74, v80);
              v54 = v181[0];
              if (v63 != v179)
              {
                v64 = v181[0] + 56;
                continue;
              }

              break;
            }

LABEL_83:
            v182 = v54;
            v8 = v155;
            v44 = v156;
            v10 = v153;
            v45 = v163;
            v48 = v159;
            v46 = v161;
            if (*(v54 + 16))
            {
LABEL_84:
              v81 = *(v54 + 40);
              v82 = v48;
              Hasher.init(_seed:)();
              MEMORY[0x1AC57CB80](v39);
              MEMORY[0x1AC57CB80](v82);
              MEMORY[0x1AC57CB80](v45);
              if (v177)
              {
                Hasher._combine(_:)(0);
              }

              else
              {
                Hasher._combine(_:)(1u);
                MEMORY[0x1AC57CB80](v46);
              }

              v83 = Hasher._finalize()();
              v84 = -1 << *(v54 + 32);
              v85 = v83 & ~v84;
              if ((*(v54 + 56 + ((v85 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v85))
              {
                v86 = ~v84;
                do
                {
                  v87 = *(v54 + 48) + 40 * v85;
                  if (*v87 == v39 && *(v87 + 8) == v82 && *(v87 + 16) == v45)
                  {
                    if (*(v87 + 32))
                    {
                      if (v177)
                      {
                        goto LABEL_103;
                      }
                    }

                    else
                    {
                      v43 = *(v87 + 24) == v46;
                      v90 = v177;
                      if (!v43)
                      {
                        v90 = 1;
                      }

                      if ((v90 & 1) == 0)
                      {
LABEL_103:
                        v30 = v174;
                        v9 = v176;
                        v31 = v170;
                        v32 = v172;
                        a4 = v44;
                        v34 = v166;
                        v33 = v168;
                        v7 = v169;
                        goto LABEL_23;
                      }
                    }
                  }

                  v85 = (v85 + 1) & v86;
                }

                while (((*(v54 + 56 + ((v85 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v85) & 1) != 0);
              }
            }

            specialized Set._Variant.insert(_:)(v181, &v183);
            v9 = v176;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v9 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v176 + 2) + 1, 1, v176);
            }

            a4 = v44;
            v60 = *(v9 + 2);
            v91 = *(v9 + 3);
            v61 = v60 + 1;
            v32 = v172;
            v30 = v174;
            v7 = v169;
            v31 = v170;
            v34 = v166;
            v33 = v168;
            if (v60 >= v91 >> 1)
            {
              v92 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v91 > 1), v60 + 1, 1, v9);
              v34 = v166;
              v33 = v168;
              v31 = v170;
              a4 = v44;
              v9 = v92;
              v32 = v172;
              v30 = v174;
            }
          }

          else
          {
            if (v49)
            {
              v50 = v9 + 64;
              do
              {
                if (*(v50 - 4) == v39 && *(v50 - 3) == v48 && *(v50 - 2) == v45)
                {
                  if (*v50)
                  {
                    if (v47)
                    {
                      goto LABEL_51;
                    }
                  }

                  else
                  {
                    if (*(v50 - 1) == v46)
                    {
                      v51 = v47;
                    }

                    else
                    {
                      v51 = 1;
                    }

                    if ((v51 & 1) == 0)
                    {
LABEL_51:
                      a4 = v44;
                      goto LABEL_23;
                    }
                  }
                }

                v50 += 40;
                --v49;
              }

              while (v49);
            }

            v55 = v34;
            v56 = v7;
            v57 = v33;
            v58 = v31;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v9 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v179 + 1, 1, v9);
            }

            v60 = *(v9 + 2);
            v59 = *(v9 + 3);
            v61 = v60 + 1;
            v32 = v172;
            v30 = v174;
            if (v60 < v59 >> 1)
            {
              v31 = v58;
              v34 = v55;
            }

            else
            {
              v62 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v59 > 1), v60 + 1, 1, v9);
              v34 = v55;
              v31 = v58;
              v9 = v62;
              v32 = v172;
              v30 = v174;
            }

            a4 = v44;
            v33 = v57;
            v7 = v56;
          }

          *(v9 + 2) = v61;
          v35 = &v9[40 * v60];
          v36 = v183;
          v37 = v184;
          v35[64] = v185;
          *(v35 + 2) = v36;
          *(v35 + 3) = v37;
          *a4 = v9;
        }
      }

LABEL_23:
      if (++v31 == v10)
      {
        goto LABEL_3;
      }
    }

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
    __break(1u);
LABEL_208:
    __break(1u);
LABEL_209:
    __break(1u);
LABEL_210:
    __break(1u);
LABEL_211:
    __break(1u);
  }

  else
  {
LABEL_199:
  }
}