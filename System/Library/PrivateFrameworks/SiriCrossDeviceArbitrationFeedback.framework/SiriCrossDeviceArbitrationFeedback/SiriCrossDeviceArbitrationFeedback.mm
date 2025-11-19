uint64_t OUTLINED_FUNCTION_18()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_2_8()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_2_9@<X0>(char a1@<W8>)
{
  *(v1 - 128) = a1;
  result = v1 - 128;
  v3 = *(v1 - 304);
  return result;
}

uint64_t OUTLINED_FUNCTION_10()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_4()
{

  return sub_266ABDAD4();
}

uint64_t OUTLINED_FUNCTION_1_5()
{
  result = *v0;
  v2 = *(v0[1] + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_1_8()
{

  return swift_once();
}

uint64_t sub_266A66D34(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_266A66DF8(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (v6)
  {
    v8 = v6;

    ObjectType = swift_getObjectType();
    v11[0] = v8;
  }

  else
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
  }

  v9 = *a3;
  if (*a3)
  {
    sub_266A68ADC(v11, *a3);
    *a3 = v9 + 32;
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v11);
  return v7;
}

unint64_t sub_266A66DF8(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v11 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v11)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v11) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_266A69C0C(a5, a6);
    *a1 = v9;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    result = sub_266ABDF04();
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

void sub_266A66EF8(void *a1, uint64_t a2, void *a3)
{
  v5 = v3;
  v360 = *MEMORY[0x277D85DE8];
  v9 = sub_266ABD5C4();
  v10 = OUTLINED_FUNCTION_1_0(v9);
  v337 = v11;
  v338 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_2();
  v336 = v15 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B2360, &qword_266AC3668);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v334 = &v297[-v18];
  OUTLINED_FUNCTION_11_5();
  v335 = sub_266ABD634();
  v19 = OUTLINED_FUNCTION_1_0(v335);
  v333 = v20;
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_2();
  v332 = v24 - v23;
  OUTLINED_FUNCTION_11_5();
  v25 = sub_266ABD4B4();
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x28223BE20](v25 - 8);
  OUTLINED_FUNCTION_2();
  v340 = v28 - v27;
  OUTLINED_FUNCTION_11_5();
  v29 = sub_266ABD7F4();
  v30 = OUTLINED_FUNCTION_1_0(v29);
  v342 = v31;
  v343 = v30;
  v33 = *(v32 + 64);
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_2();
  v341 = v35 - v34;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B1DB8, "h9");
  v37 = *(*(v36 - 8) + 64);
  MEMORY[0x28223BE20](v36 - 8);
  v347 = &v297[-v38];
  OUTLINED_FUNCTION_11_5();
  v39 = type metadata accessor for ParticipantModel();
  v40 = *(*(v39 - 8) + 64);
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_27();
  v344 = v41;
  MEMORY[0x28223BE20](v42);
  v44 = &v297[-v43];
  v45 = sub_266ABD7A4();
  v46 = OUTLINED_FUNCTION_1_0(v45);
  v349 = v47;
  v49 = *(v48 + 64);
  MEMORY[0x28223BE20](v46);
  OUTLINED_FUNCTION_27();
  v330 = v50;
  v52 = MEMORY[0x28223BE20](v51);
  v346 = &v297[-v53];
  MEMORY[0x28223BE20](v52);
  v348 = &v297[-v54];
  v55 = [sub_266A9D630() isInternalInstall];
  swift_unknownObjectRelease();
  if (v55)
  {
    v331 = v44;
    v345 = v45;
    v350 = a1;
    v56 = [a1 device];
    v328 = OBJC_IVAR____TtC34SiriCrossDeviceArbitrationFeedback19FeedbackServiceImpl____lazy_storage___globals;
    v57 = [*&v5[OBJC_IVAR____TtC34SiriCrossDeviceArbitrationFeedback19FeedbackServiceImpl____lazy_storage___globals] localDeviceAssistantIdentifier];
    if (v57)
    {
      v44 = v57;
      v58 = sub_266ABDA84();
      v60 = v59;
    }

    else
    {
      v58 = 0;
      v60 = 0;
    }

    v66.value._countAndFlagsBits = v58;
    v66.value._object = v60;
    SCDAFDevice.asDevice(assistantIdentifier:)(&v359, v66);

    v67 = v350;
    v68 = [v350 winnerAdvertisement];
    if (v68)
    {
      v69 = v68;
      sub_266A6ACDC(&v358);

      countAndFlagsBits = v358.idsId.value._countAndFlagsBits;
    }

    else
    {
      countAndFlagsBits = 0x9000000000000;
    }

    v326 = countAndFlagsBits;
    v71 = [v67 advertisement];
    if (v71)
    {
      v72 = v71;
      sub_266A6ACDC(&v358);

      v73 = v358.idsId.value._countAndFlagsBits;
    }

    else
    {
      v73 = 0x9000000000000;
    }

    v327 = v73;
    v74 = [v67 seenAdvertisements];
    sub_266A6AE78(0, &qword_2800B2368, off_279BD98D8);
    OUTLINED_FUNCTION_12_5();
    v75 = sub_266ABDC24();

    v76 = sub_266A6AF84(v75);
    v339 = v39;
    v351 = v5;
    v324 = a2;
    v325 = a3;
    if (v76)
    {
      v77 = v76;
      v358.idsId.value._countAndFlagsBits = MEMORY[0x277D84F90];
      sub_266A6AFB0(0, v76 & ~(v76 >> 63), 0);
      if (v77 < 0)
      {
        __break(1u);
        goto LABEL_120;
      }

      v352 = v77;
      v44 = 0;
      v78 = v358.idsId.value._countAndFlagsBits;
      v79 = v75 & 0xC000000000000001;
      v80 = v75;
      do
      {
        v81 = v78;
        if (v79)
        {
          v82 = MEMORY[0x26D5E8780](v44, v75);
        }

        else
        {
          v82 = *(v75 + 8 * v44 + 32);
        }

        v83 = v82;
        sub_266A6ACDC(&v357);

        v4.i32[0] = v357;
        v84 = WORD2(v357);
        v85 = BYTE6(v357);
        v86 = HIBYTE(v357);
        v78 = v81;
        v358.idsId.value._countAndFlagsBits = v81;
        v87 = *(v81 + 16);
        v88 = *(v78 + 24);
        if (v87 >= v88 >> 1)
        {
          v91 = OUTLINED_FUNCTION_14(v88);
          sub_266A6AFB0(v91, v87 + 1, 1);
          v78 = v358.idsId.value._countAndFlagsBits;
        }

        v89 = vmovl_u8(v4).u64[0];
        *(v78 + 16) = v87 + 1;
        v90 = v78 + 8 * v87;
        *(v90 + 32) = vuzp1_s8(v89, v89).u32[0];
        ++v44;
        *(v90 + 36) = v84;
        *(v90 + 38) = v85;
        *(v90 + 39) = v86;
        v75 = v80;
      }

      while (v352 != v44);
      v329 = v78;

      v67 = v350;
    }

    else
    {

      v329 = MEMORY[0x277D84F90];
    }

    v92 = [v67 nearbyDevices];
    sub_266A6AE78(0, &qword_2800B2370, off_279BD98E8);
    OUTLINED_FUNCTION_12_5();
    v93 = sub_266ABDC24();

    v94 = sub_266A6AF84(v93);
    if (!v94)
    {

      v352 = MEMORY[0x277D84F90];
LABEL_43:
      v113 = v350;
      v114 = [v350 boosts];
      sub_266A6AE78(0, &qword_2800B2378, off_279BD98E0);
      OUTLINED_FUNCTION_12_5();
      v115 = sub_266ABDC24();

      v116 = sub_266A6AF84(v115);
      if (!v116)
      {

        v328 = MEMORY[0x277D84F90];
LABEL_54:
        v132 = [v113 trumpReasons];
        sub_266A6AE78(0, &qword_2800B2380, 0x277CCABB0);
        v133 = sub_266ABDC24();

        v134 = sub_266A6AF84(v133);
        v135 = 0;
        v136 = MEMORY[0x277D84F90];
        while (v134 != v135)
        {
          if ((v133 & 0xC000000000000001) != 0)
          {
            v137 = MEMORY[0x26D5E8780](v135, v133);
          }

          else
          {
            if (v135 >= *((v133 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_117;
            }

            v137 = *(v133 + 8 * v135 + 32);
          }

          v138 = v137;
          if (__OFADD__(v135, 1))
          {
            __break(1u);
LABEL_117:
            __break(1u);
            goto LABEL_118;
          }

          v139 = [v137 unsignedIntegerValue];

          if ((v139 - 1) >= 8)
          {
            LOBYTE(v139) = 0;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v142 = *(v136 + 16);
            sub_266A6D91C();
            v136 = v143;
          }

          v141 = *(v136 + 16);
          v140 = *(v136 + 24);
          if (v141 >= v140 >> 1)
          {
            OUTLINED_FUNCTION_14(v140);
            sub_266A6D91C();
            v136 = v144;
          }

          *(v136 + 16) = v141 + 1;
          *(v136 + v141 + 32) = v139;
          ++v135;
        }

        v44 = v350;
        v145 = [v350 requestStartDate];
        if (!v145)
        {

          sub_266A72578(&v359);
          if (qword_280BB6C30 != -1)
          {
            OUTLINED_FUNCTION_10();
          }

          v153 = sub_266ABD8D4();
          __swift_project_value_buffer(v153, qword_280BB7028);
          v154 = v44;
          v155 = sub_266ABD8C4();
          v156 = sub_266ABDD64();

          if (os_log_type_enabled(v155, v156))
          {
            v157 = OUTLINED_FUNCTION_25();
            v158 = swift_slowAlloc();
            *v157 = 138412290;
            *(v157 + 4) = v154;
            *v158 = v154;
            v159 = v154;
            OUTLINED_FUNCTION_15_4(&dword_266A65000, v160, v161, "#feedback Participant without request start date: %@. Returning.");
            sub_266A8CCF0(v158);
            OUTLINED_FUNCTION_7();
            OUTLINED_FUNCTION_8();
          }

          goto LABEL_103;
        }

        v146 = v145;
        v147 = v348;
        sub_266ABD774();

        v148 = v327;
        v149 = v327 & 0xFF000000000000;
        if ((v327 & 0xFF000000000000) == 0x9000000000000)
        {
          v150 = 0;
          v151 = 0;
          v327 = 0;
          v321 = 0;
          v322 = 0;
          v323 = 0;
          v152 = 0;
          v149 = 0;
          v320 = 0;
        }

        else
        {
          v320 = v327 & 0xFF00000000000000;
          v151 = sub_266A6D9F0();
          v152 = v148 & 0xFFFF00000000;
          v322 = v148 & 0xFF0000;
          v323 = v148 & 0xFF000000;
          v321 = v148 & 0xFF00;
          v327 = v148;
          v150 = &type metadata for AdvertisementModel;
        }

        v162 = v345;
        v358.build.value._object = &type metadata for DeviceModel;
        v358.enclosureColor._countAndFlagsBits = sub_266A6DA44();
        v358.idsId.value._countAndFlagsBits = swift_allocObject();
        memcpy((v358.idsId.value._countAndFlagsBits + 16), &v359, 0xA8uLL);
        v319 = sub_266A6DA98(v352);

        sub_266A6E0D4([v44 result], &v357);
        v163 = v357;
        [v44 rawGoodnessScore];
        v165 = v164;
        if ((*&v164 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
        {
          if (v164 <= -1.0)
          {
            goto LABEL_123;
          }

          if (v164 < 256.0)
          {
            LODWORD(v352) = v163;
            (*(v349 + 16))(v346, v147, v162);
            v317 = sub_266A6E3AC(v329);

            v166 = [v44 userRequestText];
            v329 = sub_266ABDA84();
            v316 = v167;

            v168 = [v44 voiceTriggerDate];
            if (v168)
            {
              v169 = v168;
              v170 = v347;
              sub_266ABD774();

              v171 = 0;
            }

            else
            {
              v171 = 1;
              v170 = v347;
            }

            __swift_storeEnumTagSinglePayload(v170, v171, 1, v162);
            v172 = v326;
            v318 = v152;
            if ((v326 & 0xFF000000000000) == 0x9000000000000)
            {
              v308 = 0;
              v309 = 0;
              v314 = 0;
              v315 = 0;
              v326 = 0;
              v310 = 0;
              v311 = 0;
              v312 = 0;
              v313 = 0;
            }

            else
            {
              v313 = v326 & 0xFF00000000000000;
              v314 = v326 & 0xFF000000000000;
              v315 = sub_266A6D9F0();
              v311 = v172 & 0xFF000000;
              v312 = v172 & 0xFFFF00000000;
              v308 = v172 & 0xFF00;
              v309 = v172;
              v310 = v172 & 0xFF0000;
              v326 = &type metadata for AdvertisementModel;
            }

            v173 = [v44 requestId];
            v174 = sub_266ABDA84();
            v306 = v175;
            v307 = v174;

            v176 = [v44 cdaId];
            v177 = sub_266ABDA84();
            v304 = v178;
            v305 = v177;

            v179 = [v44 timerState];
            v180 = [v179 unsignedIntegerValue];

            sub_266A6E668(v180, &v356);
            v303 = v356;
            v181 = [v44 alarmState];
            v182 = [v181 unsignedIntegerValue];

            sub_266A6E668(v182, &v355);
            v302 = v355;
            v183 = [v44 mediaState];
            v184 = [v183 unsignedIntegerValue];

            sub_266A6E76C(v184, &v354);
            v301 = v354;
            v185 = [v44 triggerType];
            v186 = [v185 unsignedIntegerValue];

            sub_266A6E870(v186, &v353);
            v300 = v353;
            v187 = [v44 timeSinceLastWinInMilliseconds];
            v188 = v187;
            v189 = v151;
            if (v187)
            {
              v299 = [v187 integerValue];
            }

            else
            {
              v299 = 0;
            }

            v190 = [v44 timeSinceTriggerInMilliseconds];
            v191 = v190;
            v192 = v150;
            v193 = v320;
            if (v190)
            {
              v350 = [v190 integerValue];
            }

            else
            {
              v350 = 0;
            }

            LODWORD(v320) = v191 == 0;
            v298 = v188 == 0;
            v194 = v341;
            sub_266ABD7E4();
            v195 = sub_266ABD7C4();
            v197 = v196;
            (*(v342 + 8))(v194, v343);
            v44 = v331;
            *v331 = v321 | v327 | v322 | v323 | v318 | v149 | v193;
            *(v44 + 8) = 0;
            *(v44 + 16) = 0;
            *(v44 + 24) = v192;
            v198 = v328;
            *(v44 + 32) = v189;
            *(v44 + 40) = v198;
            sub_266A6DBC4(&v358.idsId.value._countAndFlagsBits, v44 + 48);
            *(v44 + 88) = xmmword_266AC35D0;
            *(v44 + 104) = v319;
            *(v44 + 112) = v352;
            *(v44 + 113) = v165;
            v199 = v339;
            (*(v349 + 32))(v44 + v339[11], v346, v345);
            *(v44 + v199[12]) = v317;
            *(v44 + v199[13]) = v136;
            v200 = (v44 + v199[14]);
            v201 = v316;
            *v200 = v329;
            v200[1] = v201;
            sub_266A6E974(v347, v44 + v199[15]);
            v202 = (v44 + v199[16]);
            *v202 = v308 | v309 | v310 | v311 | v312 | v314 | v313;
            v202[1] = 0;
            v203 = v326;
            v202[2] = 0;
            v202[3] = v203;
            v202[4] = v315;
            v204 = (v44 + v199[17]);
            v205 = v306;
            *v204 = v307;
            v204[1] = v205;
            v206 = (v44 + v199[18]);
            v207 = v304;
            *v206 = v305;
            v206[1] = v207;
            LOBYTE(v207) = v302;
            *(v44 + v199[19]) = v303;
            *(v44 + v199[20]) = v207;
            LOBYTE(v207) = v300;
            *(v44 + v199[21]) = v301;
            *(v44 + v199[22]) = v207;
            v208 = (v44 + v199[23]);
            *v208 = 0;
            v208[1] = 0;
            v209 = v44 + v199[24];
            *v209 = v299;
            *(v209 + 8) = v298;
            v210 = v44 + v199[25];
            *v210 = v350;
            *(v210 + 8) = v320;
            v211 = (v44 + v199[26]);
            *v211 = v195;
            v211[1] = v197;
            if (qword_280BB6C30 == -1)
            {
LABEL_93:
              v212 = sub_266ABD8D4();
              v213 = __swift_project_value_buffer(v212, qword_280BB7028);
              v214 = v344;
              sub_266A6E9E4(v44, v344);
              v215 = sub_266ABD8C4();
              v216 = sub_266ABDD44();
              if (os_log_type_enabled(v215, v216))
              {
                v217 = OUTLINED_FUNCTION_25();
                v218 = OUTLINED_FUNCTION_23();
                v358.idsId.value._countAndFlagsBits = v218;
                *v217 = 136315138;
                ParticipantModel.description.getter();
                v220 = v219;
                v222 = v221;
                sub_266A6A63C(v214);
                v223 = sub_266A66D34(v220, v222, &v358.idsId.value._countAndFlagsBits);

                *(v217 + 4) = v223;
                _os_log_impl(&dword_266A65000, v215, v216, "#feedback FeedbackService - converted into model: %s", v217, 0xCu);
                __swift_destroy_boxed_opaque_existential_1Tm(v218);
                OUTLINED_FUNCTION_7();
                OUTLINED_FUNCTION_8();
              }

              else
              {

                sub_266A6A63C(v214);
              }

              v224 = [objc_allocWithZone(MEMORY[0x277CCAD78]) init];
              v225 = [v224 UUIDString];

              v226 = sub_266ABDA84();
              v228 = v227;

              v229 = sub_266ABD4F4();
              v230 = *(v229 + 48);
              v231 = *(v229 + 52);
              swift_allocObject();
              sub_266ABD4E4();
              sub_266ABD4A4();
              sub_266ABD4C4();
              sub_266A7008C(&qword_2800B2158);
              v232 = sub_266ABD4D4();
              v346 = v226;
              v347 = v232;
              v350 = v233;
              v352 = v213;
              v344 = objc_opt_self();
              v234 = [v344 defaultManager];
              v235 = v335;
              __swift_storeEnumTagSinglePayload(v334, 1, 1, v335);
              (*(v337 + 104))(v336, *MEMORY[0x277CC91D8], v338);
              v236 = v325;

              v237 = v332;
              v238 = v324;
              sub_266ABD624();
              v239 = sub_266ABD5F4();
              (*(v333 + 8))(v237, v235);
              v358.idsId.value._countAndFlagsBits = 0;
              LODWORD(v235) = [v234 createDirectoryAtURL:v239 withIntermediateDirectories:1 attributes:0 error:&v358];

              v240 = v358.idsId.value._countAndFlagsBits;
              if (v235)
              {
                v358.idsId.value._countAndFlagsBits = v238;
                v358.idsId.value._object = v236;

                v241 = v240;
                MEMORY[0x26D5E83C0](v346, v228);

                MEMORY[0x26D5E83C0](0x6E6F736A2ELL, 0xE500000000000000);
                v243 = v358.idsId.value._countAndFlagsBits;
                object = v358.idsId.value._object;
                v244 = [v344 defaultManager];
                v245 = sub_266ABDA74();
                OUTLINED_FUNCTION_14_4();
                v246 = sub_266ABD6D4();
                v247 = [v244 createFileAtPath:v245 contents:v246 attributes:0];

                v248 = sub_266ABD8C4();
                v249 = sub_266ABDD44();

                if (os_log_type_enabled(v248, v249))
                {
                  v250 = swift_slowAlloc();
                  v251 = OUTLINED_FUNCTION_23();
                  v358.idsId.value._countAndFlagsBits = v251;
                  *v250 = 136315394;
                  v252 = sub_266A66D34(v243, object, &v358.idsId.value._countAndFlagsBits);

                  *(v250 + 4) = v252;
                  *(v250 + 12) = 1024;
                  *(v250 + 14) = v247;
                  _os_log_impl(&dword_266A65000, v248, v249, "#feedback FeedbackService - created file at: %s, saved:%{BOOL}d", v250, 0x12u);
                  __swift_destroy_boxed_opaque_existential_1Tm(v251);
                  OUTLINED_FUNCTION_8();
                  OUTLINED_FUNCTION_8();
                }

                else
                {
                }

                v271 = v351;
                v272 = sub_266ABD8C4();
                v273 = sub_266ABDD44();

                if (os_log_type_enabled(v272, v273))
                {
                  v274 = OUTLINED_FUNCTION_25();
                  v275 = OUTLINED_FUNCTION_23();
                  v358.idsId.value._countAndFlagsBits = v275;
                  *v274 = 136315138;
                  sub_266A68D30();
                  v276 = sub_266A68DB0();

                  if (v276)
                  {
                    v277 = 1702195828;
                  }

                  else
                  {
                    v277 = 0x65736C6166;
                  }

                  if (v276)
                  {
                    v278 = 0xE400000000000000;
                  }

                  else
                  {
                    v278 = 0xE500000000000000;
                  }

                  v279 = sub_266A66D34(v277, v278, &v358.idsId.value._countAndFlagsBits);

                  *(v274 + 4) = v279;
                  _os_log_impl(&dword_266A65000, v272, v273, "#feedback FeedbackService - shouldPromptForFeedback: %s", v274, 0xCu);
                  __swift_destroy_boxed_opaque_existential_1Tm(v275);
                  OUTLINED_FUNCTION_8();
                  OUTLINED_FUNCTION_8();
                }

                v280 = v339;
                sub_266A68D30();
                v281 = sub_266A68DB0();

                if (v281)
                {
                  v282 = sub_266A9D49C();
                  v284 = v283;
                  ObjectType = swift_getObjectType();
                  v358.build.value._object = v280;
                  v358.enclosureColor._countAndFlagsBits = sub_266A7008C(&qword_2800B1DA0);
                  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v358.idsId.value._countAndFlagsBits);
                  v287 = v331;
                  sub_266A6E9E4(v331, boxed_opaque_existential_1);
                  (*(v284 + 32))(&v358, ObjectType, v284);

                  __swift_destroy_boxed_opaque_existential_1Tm(&v358.idsId.value._countAndFlagsBits);
                  v288 = *&v271[OBJC_IVAR____TtC34SiriCrossDeviceArbitrationFeedback19FeedbackServiceImpl____lazy_storage___userfeedbackController];

                  v289 = v330;
                  sub_266ABD784();
                  sub_266A8EA2C(v289);
                  v290 = OUTLINED_FUNCTION_14_4();
                  sub_266A6A5B4(v290, v291);

                  v292 = *(v349 + 8);
                  v293 = v289;
                  v294 = v345;
                  v292(v293, v345);
                  sub_266A6A63C(v287);
                  v292(v348, v294);
                  goto LABEL_103;
                }

                v295 = OUTLINED_FUNCTION_14_4();
                sub_266A6A5B4(v295, v296);

                v269 = v331;
              }

              else
              {
                v253 = v358.idsId.value._countAndFlagsBits;

                v254 = sub_266ABD594();

                swift_willThrow();
                v255 = OUTLINED_FUNCTION_14_4();
                sub_266A6A5B4(v255, v256);
                v257 = v331;

                v258 = v254;
                v259 = sub_266ABD8C4();
                LOBYTE(v253) = sub_266ABDD64();

                if (os_log_type_enabled(v259, v253))
                {
                  v260 = OUTLINED_FUNCTION_25();
                  v261 = v257;
                  v262 = OUTLINED_FUNCTION_23();
                  v357 = v254;
                  v358.idsId.value._countAndFlagsBits = v262;
                  *v260 = 136315138;
                  v263 = v254;
                  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B2108, &unk_266AC3670);
                  v264 = sub_266ABDAE4();
                  v266 = sub_266A66D34(v264, v265, &v358.idsId.value._countAndFlagsBits);

                  *(v260 + 4) = v266;
                  OUTLINED_FUNCTION_17_3(&dword_266A65000, v267, v268, "#feedback FeedbackService - Error saving FeedbackModel: %s");
                  __swift_destroy_boxed_opaque_existential_1Tm(v262);
                  OUTLINED_FUNCTION_8();
                  OUTLINED_FUNCTION_8();

                  v269 = v261;
                }

                else
                {

                  v269 = v257;
                }
              }

              sub_266A6A63C(v269);
              (*(v349 + 8))(v348, v345);
LABEL_103:
              v270 = *MEMORY[0x277D85DE8];
              return;
            }

LABEL_125:
            OUTLINED_FUNCTION_10();
            goto LABEL_93;
          }

LABEL_124:
          __break(1u);
          goto LABEL_125;
        }

LABEL_122:
        __break(1u);
LABEL_123:
        __break(1u);
        goto LABEL_124;
      }

      v117 = v116;
      OUTLINED_FUNCTION_7_7(MEMORY[0x277D84F90]);
      sub_266A98C68();
      if ((v117 & 0x8000000000000000) == 0)
      {
        v118 = 0;
        v119 = v357;
        do
        {
          if ((v115 & 0xC000000000000001) != 0)
          {
            v120 = MEMORY[0x26D5E8780](v118, v115);
          }

          else
          {
            v120 = *(v115 + 8 * v118 + 32);
          }

          v121 = v120;
          sub_266AA6FFC(&v358);

          v357 = v119;
          isa = v119[2].isa;
          v122 = v119[3].isa;
          if (isa >= v122 >> 1)
          {
            OUTLINED_FUNCTION_14(v122);
            sub_266A98C68();
          }

          ++v118;
          v124 = v358.build.value._object;
          v125 = v358.enclosureColor._countAndFlagsBits;
          v126 = __swift_mutable_project_boxed_opaque_existential_1(&v358, v358.build.value._object);
          v127 = *(*(v124 - 1) + 64);
          MEMORY[0x28223BE20](v126);
          OUTLINED_FUNCTION_2();
          v130 = v129 - v128;
          (*(v131 + 16))(v129 - v128);
          sub_266A9E8BC(isa, v130, &v357, v124, v125);
          __swift_destroy_boxed_opaque_existential_1Tm(&v358.idsId.value._countAndFlagsBits);
          v119 = v357;
        }

        while (v117 != v118);
        v328 = v357;

        v113 = v350;
        goto LABEL_54;
      }

LABEL_121:
      __break(1u);
      goto LABEL_122;
    }

    v44 = v94;
    v95 = OUTLINED_FUNCTION_7_7(MEMORY[0x277D84F90]);
    sub_266A6BD88(v95, v96, v97);
    if ((v44 & 0x8000000000000000) == 0)
    {
      v98 = 0;
      v352 = v357;
      v99 = v44 - 1;
      v100 = v328;
      if ((v93 & 0xC000000000000001) == 0)
      {
        goto LABEL_32;
      }

LABEL_31:
      for (i = MEMORY[0x26D5E8780](v98, v93); ; i = *(v93 + 8 * v98 + 32))
      {
        v102 = i;
        v103 = [*(&v100->isa + v351) localDeviceAssistantIdentifier];
        if (v103)
        {
          v104 = v103;
          v105 = sub_266ABDA84();
          v107 = v106;
        }

        else
        {
          v105 = 0;
          v107 = 0;
        }

        v108.value._countAndFlagsBits = v105;
        v108.value._object = v107;
        SCDAFDevice.asDevice(assistantIdentifier:)(&v358, v108);

        v109 = v352;
        v357 = v352;
        v111 = v352[2].isa;
        v110 = v352[3].isa;
        v44 = v111 + 1;
        if (v111 >= v110 >> 1)
        {
          v112 = OUTLINED_FUNCTION_14(v110);
          sub_266A6BD88(v112, v111 + 1, 1);
          v109 = v357;
        }

        v109[2].isa = v44;
        v352 = v109;
        memcpy(&v109[21 * v111 + 4], &v358, 0xA8uLL);
        if (v99 == v98)
        {
          break;
        }

        ++v98;
        if ((v93 & 0xC000000000000001) != 0)
        {
          goto LABEL_31;
        }

LABEL_32:
        ;
      }

      goto LABEL_43;
    }

LABEL_120:
    __break(1u);
    goto LABEL_121;
  }

  if (qword_280BB6C30 != -1)
  {
LABEL_118:
    OUTLINED_FUNCTION_10();
  }

  v61 = sub_266ABD8D4();
  __swift_project_value_buffer(v61, qword_280BB7028);
  v352 = sub_266ABD8C4();
  v62 = sub_266ABDD64();
  if (os_log_type_enabled(v352, v62))
  {
    v63 = swift_slowAlloc();
    *v63 = 0;
    _os_log_impl(&dword_266A65000, v352, v62, "#feedback FeedbackService - Device unable to process received participation. Returning.", v63, 2u);
    OUTLINED_FUNCTION_8();
  }

  v64 = *MEMORY[0x277D85DE8];
  v65 = v352;
}

uint64_t sub_266A689D8()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[7];

  v4 = v0[9];

  v5 = v0[11];

  v6 = v0[13];

  v7 = v0[14];

  v8 = v0[16];

  v9 = v0[18];

  v10 = v0[20];

  v11 = v0[22];

  return MEMORY[0x2821FE8E8](v0, 184, 7);
}

uint64_t OUTLINED_FUNCTION_23()
{

  return swift_slowAlloc();
}

uint64_t sub_266A68ADC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t __swift_destroy_boxed_opaque_existential_1Tm(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

void OUTLINED_FUNCTION_8()
{

  JUMPOUT(0x26D5E9280);
}

uint64_t OUTLINED_FUNCTION_25()
{

  return swift_slowAlloc();
}

void OUTLINED_FUNCTION_8_0()
{

  JUMPOUT(0x26D5E83C0);
}

uint64_t OUTLINED_FUNCTION_8_2(uint64_t a1)
{

  return sub_266A6CBB4(a1, v1, v2);
}

void OUTLINED_FUNCTION_8_6(uint64_t a1@<X8>)
{
  if (a1 <= *(v1 + 16))
  {
    v2 = *(v1 + 16);
  }
}

double OUTLINED_FUNCTION_8_8(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 8);
  v3 = *(a2 + 16);
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  return result;
}

uint64_t OUTLINED_FUNCTION_8_10()
{
  *(v2 + 16) = v0;

  return sub_266A6DBC4((v3 - 232), v2 + 40 * v1 + 32);
}

uint64_t OUTLINED_FUNCTION_25_0()
{
  v1 = *(*(v0 - 256) + 8);
  result = *(v0 - 224);
  v3 = *(v0 - 360);
  return result;
}

uint64_t OUTLINED_FUNCTION_25_2()
{
  v3 = *(v0 - 128);
  v2 = *(v0 - 120);

  return sub_266ABE0C4();
}

void *sub_266A68D30()
{
  v1 = OBJC_IVAR____TtC34SiriCrossDeviceArbitrationFeedback19FeedbackServiceImpl____lazy_storage___userfeedbackController;
  if (*(v0 + OBJC_IVAR____TtC34SiriCrossDeviceArbitrationFeedback19FeedbackServiceImpl____lazy_storage___userfeedbackController))
  {
    v2 = *(v0 + OBJC_IVAR____TtC34SiriCrossDeviceArbitrationFeedback19FeedbackServiceImpl____lazy_storage___userfeedbackController);
  }

  else
  {
    v3 = type metadata accessor for KeyValueStore();
    type metadata accessor for UserFeedbackController();
    v2 = swift_allocObject();
    v2[2] = v3;
    v2[3] = &protocol witness table for KeyValueStore;
    v2[4] = v3;
    v2[5] = &protocol witness table for KeyValueStore;
    *(v0 + v1) = v2;
  }

  return v2;
}

BOOL sub_266A68DB0()
{
  v1 = v0;
  v2 = sub_266ABD854();
  v3 = OUTLINED_FUNCTION_1_0(v2);
  v62 = v4;
  v63 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  v64 = &v58 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_266ABD574();
  v9 = OUTLINED_FUNCTION_1_0(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v9);
  v15 = &v58 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B1DB8, "h9");
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v19 = &v58 - v18;
  v20 = sub_266ABD7A4();
  v21 = OUTLINED_FUNCTION_1_0(v20);
  v67 = v22;
  v24 = *(v23 + 64);
  v25 = MEMORY[0x28223BE20](v21);
  v61 = &v58 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v66 = &v58 - v27;
  swift_beginAccess();
  v28 = *(v0 + 32);
  v69 = *(v0 + 16);
  v70 = v28;
  FeedbackPreferences.UserFeedback.promptFrequency.getter(&v68);
  v29 = v68;
  if (qword_280BB6C30 != -1)
  {
    swift_once();
  }

  v30 = sub_266ABD8D4();
  v60 = __swift_project_value_buffer(v30, qword_280BB7028);
  v31 = sub_266ABD8C4();
  v32 = sub_266ABDD54();
  if (os_log_type_enabled(v31, v32))
  {
    v65 = v20;
    v58 = v15;
    v59 = v11;
    v33 = v8;
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    *&v69 = v35;
    *v34 = 136315138;
    v36 = 0xE500000000000000;
    v37 = 0x726576654ELL;
    switch(v29)
    {
      case 1:
        v36 = 0xEC00000072756F48;
        v37 = 0x206E412065636E4FLL;
        break;
      case 2:
        v36 = 0xEA00000000007961;
        v37 = 0x4420412065636E4FLL;
        break;
      case 3:
        v36 = 0xED00007473657571;
        v37 = 0x6552207972657645;
        break;
      default:
        break;
    }

    v57 = sub_266A66D34(v37, v36, &v69);

    *(v34 + 4) = v57;
    _os_log_impl(&dword_266A65000, v31, v32, "#feedback UserFeedbackController - Log frequency set to: %s", v34, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v35);
    MEMORY[0x26D5E9280](v35, -1, -1);
    MEMORY[0x26D5E9280](v34, -1, -1);

    v8 = v33;
    v15 = v58;
    v11 = v59;
    v20 = v65;
    if (!v29)
    {
      return 0;
    }
  }

  else
  {

    if (!v29)
    {
      return 0;
    }
  }

  if (v29 == 3)
  {
    return 1;
  }

  v38 = *(v1 + 32);
  v69 = *(v1 + 16);
  v70 = v38;
  FeedbackPreferences.UserFeedback.lastPromptedDate.getter(v19);
  if (__swift_getEnumTagSinglePayload(v19, 1, v20) == 1)
  {
    sub_266A8EB7C(v19);
    return 1;
  }

  v40 = v67;
  (*(v67 + 32))(v66, v19, v20);
  sub_266ABD834();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B2188, &qword_266AC2C00);
  v41 = sub_266ABD844();
  OUTLINED_FUNCTION_1_0(v41);
  v43 = v42;
  v45 = *(v44 + 72);
  v46 = (*(v42 + 80) + 32) & ~*(v42 + 80);
  v47 = swift_allocObject();
  *(v47 + 16) = xmmword_266AC0EB0;
  (*(v43 + 104))(v47 + v46, *MEMORY[0x277CC9980], v41);
  sub_266A6A254(v47);
  v48 = v61;
  sub_266ABD784();
  v49 = v64;
  sub_266ABD824();

  v50 = *(v40 + 8);
  v65 = v20;
  v67 = v40 + 8;
  v50(v48, v20);
  (*(v62 + 8))(v49, v63);
  v51 = sub_266ABD564();
  if (v52)
  {
    v53 = 0;
  }

  else
  {
    v53 = v51;
  }

  v54 = sub_266ABD8C4();
  v55 = sub_266ABDD54();
  if (os_log_type_enabled(v54, v55))
  {
    v56 = swift_slowAlloc();
    *v56 = 134217984;
    *(v56 + 4) = v53;
    _os_log_impl(&dword_266A65000, v54, v55, "#feedback UserFeedbackController - Last prompted %ld hours ago.", v56, 0xCu);
    MEMORY[0x26D5E9280](v56, -1, -1);
  }

  (*(v11 + 8))(v15, v8);
  v50(v66, v65);
  return v53 >= qword_266AC2C20[v29];
}

void FeedbackPreferences.UserFeedback.promptFrequency.getter(_BYTE *a1@<X8>)
{
  v4 = *v1;
  v3 = v1[1];
  [objc_opt_self() resetStandardUserDefaults];
  v5 = (*(v3 + 8))(v4, v3);
  v6 = sub_266ABDA74();
  v7 = [v5 stringForKey_];

  if (v7)
  {
    v8 = sub_266ABDA84();
    v10 = v9;

    v11._countAndFlagsBits = v8;
    v11._object = v10;
    UserFeedbackPromptFrequency.init(rawValue:)(v11);
    LOBYTE(v7) = v37[0];
    if (LOBYTE(v37[0]) != 4)
    {
      if (qword_280BB6C30 != -1)
      {
        OUTLINED_FUNCTION_10();
      }

      v22 = sub_266ABD8D4();
      OUTLINED_FUNCTION_8_5(v22, qword_280BB7028);

      v23 = sub_266ABD8C4();
      v24 = sub_266ABDD54();

      if (os_log_type_enabled(v23, v24))
      {
        v25 = OUTLINED_FUNCTION_25();
        v26 = swift_slowAlloc();
        v37[0] = v26;
        *v25 = 136315138;
        v27 = sub_266A66D34(v8, v10, v37);

        *(v25 + 4) = v27;
        _os_log_impl(&dword_266A65000, v23, v24, "#feedback Prompt Frequency set by user defaults (likely profile) overriding user configuration and using: %s", v25, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v26);
        OUTLINED_FUNCTION_7_5();
        OUTLINED_FUNCTION_8();
      }

      else
      {
      }

      goto LABEL_25;
    }
  }

  (*(v3 + 24))(v4, v3);
  v13 = v12;
  ObjectType = swift_getObjectType();
  (*(v13 + 56))(0x724674706D6F7270, 0xEF79636E65757165, ObjectType, v13);
  v16 = v15;
  swift_unknownObjectRelease();
  if (v16 >> 60 != 15)
  {
    v21 = sub_266ABD494();
    OUTLINED_FUNCTION_29_2(v21);
    sub_266ABD484();
    sub_266A934BC();
    sub_266ABD474();

    v7 = LOBYTE(v37[0]);
    if (qword_280BB6C30 != -1)
    {
      OUTLINED_FUNCTION_10();
    }

    v28 = sub_266ABD8D4();
    OUTLINED_FUNCTION_8_5(v28, qword_280BB7028);
    v23 = sub_266ABD8C4();
    v29 = sub_266ABDD54();
    if (OUTLINED_FUNCTION_14_0(v29))
    {
      v30 = OUTLINED_FUNCTION_25();
      v31 = swift_slowAlloc();
      v37[0] = v31;
      *v30 = 136315138;
      v32 = 0xE500000000000000;
      v33 = 0x726576654ELL;
      switch(v7)
      {
        case 1uLL:
          v32 = 0xEC00000072756F48;
          v33 = OUTLINED_FUNCTION_4_5() & 0xFFFFFFFFFFFFLL | 0x206E000000000000;
          break;
        case 2uLL:
          v32 = 0xEA00000000007961;
          v33 = OUTLINED_FUNCTION_4_5() & 0xFFFFFFFFFFFFLL | 0x4420000000000000;
          break;
        case 3uLL:
          v32 = 0xED00007473657571;
          v33 = OUTLINED_FUNCTION_35_0();
          break;
        default:
          break;
      }

      v34 = sub_266A66D34(v33, v32, v37);

      *(v30 + 4) = v34;
      _os_log_impl(&dword_266A65000, v23, v29, "#feedback Preferences -  Prompt Frequency in UserFeedback is: %s", v30, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v31);
      OUTLINED_FUNCTION_7_5();
      OUTLINED_FUNCTION_8();
    }

    v35 = OUTLINED_FUNCTION_24_2();
    sub_266A7BB30(v35, v36);
LABEL_25:

    goto LABEL_26;
  }

  if (qword_280BB6C30 != -1)
  {
    OUTLINED_FUNCTION_10();
  }

  v17 = sub_266ABD8D4();
  OUTLINED_FUNCTION_8_5(v17, qword_280BB7028);
  v18 = sub_266ABD8C4();
  v19 = sub_266ABDD54();
  if (OUTLINED_FUNCTION_14_0(v19))
  {
    v20 = OUTLINED_FUNCTION_19();
    *v20 = 0;
    _os_log_impl(&dword_266A65000, v18, v19, "#feedback Preferences - Prompt Frequency not set using default: Once A Day", v20, 2u);
    OUTLINED_FUNCTION_8();
  }

  LOBYTE(v7) = 2;
LABEL_26:
  *a1 = v7;
}

id sub_266A699F8(void *a1, void **a2)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_4_9();
  v3 = *a2;

  return v3;
}

BOOL OUTLINED_FUNCTION_4_0(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

void OUTLINED_FUNCTION_7()
{

  JUMPOUT(0x26D5E9280);
}

void OUTLINED_FUNCTION_4_6(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);

  JUMPOUT(0x26D5E8B00);
}

uint64_t OUTLINED_FUNCTION_4_7()
{

  return sub_266ABDFE4();
}

uint64_t OUTLINED_FUNCTION_4_8()
{
  v3 = *(v1 + 8);
  result = v0;
  v5 = *(v2 - 176);
  return result;
}

uint64_t OUTLINED_FUNCTION_4_9()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_4_11()
{

  return sub_266ABDB04();
}

uint64_t static KeyValueStore.cloud.getter()
{
  if (qword_2800B1AF8 != -1)
  {
    OUTLINED_FUNCTION_0_6();
  }

  OUTLINED_FUNCTION_4_9();
  return swift_unknownObjectRetain();
}

uint64_t sub_266A69C0C(uint64_t a1, unint64_t a2)
{
  v4 = sub_266A69C58(a1, a2);
  sub_266A69DE0(&unk_28783E608);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_266A69C58(uint64_t a1, unint64_t a2)
{
  v4 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_19;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  for (; v5; v5 = sub_266ABDB24())
  {
    result = sub_266A69D70(v5, 0);
    v7 = result;
    if ((a2 & 0x1000000000000000) != 0)
    {
      result = sub_266ABDE94();
      if (v11)
      {
        goto LABEL_23;
      }

      v4 = result;
    }

    else
    {
      if ((a2 & 0x2000000000000000) != 0)
      {
        v13[0] = a1;
        v13[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        if (v5 < v4)
        {
          goto LABEL_23;
        }

        v9 = (result + 32);
        v10 = v13;
      }

      else
      {
        if ((a1 & 0x1000000000000000) != 0)
        {
          v8 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
          v4 = a1 & 0xFFFFFFFFFFFFLL;
        }

        else
        {
          result = sub_266ABDF04();
          v8 = result;
          v4 = v12;
        }

        if (v5 < v4)
        {
LABEL_23:
          __break(1u);
          return result;
        }

        v9 = (v7 + 32);
        v10 = v8;
      }

      memcpy(v9, v10, v4);
    }

    if (v4 == v5)
    {
      return v7;
    }

    __break(1u);
LABEL_19:
    ;
  }

  return MEMORY[0x277D84F90];
}

void *sub_266A69D70(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B1CA8, &qword_266AC0FB0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
}

uint64_t sub_266A69DE0(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (!result || v5 > *(v3 + 24) >> 1)
  {
    if (v4 <= v5)
    {
      v8 = v4 + v2;
    }

    else
    {
      v8 = v4;
    }

    result = sub_266A790B0(result, v8, 1, v3);
    v3 = result;
  }

  if (!*(v6 + 16))
  {

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

  v9 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v9 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v9 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v10 = *(v3 + 16);
  v11 = __OFADD__(v10, v2);
  v12 = v10 + v2;
  if (!v11)
  {
    *(v3 + 16) = v12;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t FeedbackPreferences.UserFeedback.lastPromptedDate.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = OUTLINED_FUNCTION_1_5();
  v4 = v3(v2);
  v5 = OUTLINED_FUNCTION_40_0();
  v6 = [v4 valueForKey_];

  if (v6)
  {
    sub_266ABDE14();
    swift_unknownObjectRelease();
  }

  else
  {
    v12 = 0u;
    v13 = 0u;
  }

  v14[0] = v12;
  v14[1] = v13;
  if (*(&v13 + 1))
  {
    v7 = sub_266ABD7A4();
    v8 = swift_dynamicCast() ^ 1;
    v9 = a1;
    v10 = v7;
  }

  else
  {
    sub_266A6CBB4(v14, &qword_2800B1C50, &qword_266AC0EE0);
    v10 = sub_266ABD7A4();
    v9 = a1;
    v8 = 1;
  }

  return __swift_storeEnumTagSinglePayload(v9, v8, 1, v10);
}

uint64_t sub_266A6A004()
{
  v1 = sub_266ABDA74();
  v2 = [v0 dataForKey_];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_266ABD6E4();

  return v3;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

BOOL OUTLINED_FUNCTION_14_0(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t OUTLINED_FUNCTION_14_1()
{

  return sub_266ABE194();
}

uint64_t OUTLINED_FUNCTION_14_2()
{

  return sub_266ABD474();
}

uint64_t OUTLINED_FUNCTION_14_4()
{
  result = *(v0 + 376);
  v2 = *(v0 + 400);
  return result;
}

uint64_t OUTLINED_FUNCTION_19()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_40_0()
{

  return sub_266ABDA74();
}

uint64_t OUTLINED_FUNCTION_40_1()
{

  return swift_allocObject();
}

uint64_t sub_266A6A254(uint64_t a1)
{
  v2 = sub_266ABD844();
  v34 = *(v2 - 8);
  v3 = *(v34 + 64);
  v4 = (MEMORY[0x28223BE20])();
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v38 = &v29 - v7;
  if (!*(a1 + 16))
  {
    v9 = MEMORY[0x277D84FA0];
    goto LABEL_15;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B2190, &qword_266AC2C08);
  result = sub_266ABDE84();
  v9 = result;
  v33 = *(a1 + 16);
  if (!v33)
  {
LABEL_15:

    return v9;
  }

  v10 = 0;
  v37 = result + 56;
  v11 = *(v34 + 80);
  v31 = a1;
  v32 = a1 + ((v11 + 32) & ~v11);
  v36 = v34 + 16;
  v12 = (v34 + 8);
  v30 = (v34 + 32);
  while (v10 < *(a1 + 16))
  {
    v13 = *(v34 + 72);
    v35 = v10 + 1;
    v14 = *(v34 + 16);
    v14(v38, v32 + v13 * v10, v2);
    v15 = *(v9 + 40);
    sub_266A6A570(&qword_2800B2198);
    v16 = sub_266ABD9C4();
    v17 = ~(-1 << *(v9 + 32));
    while (1)
    {
      v18 = v16 & v17;
      v19 = (v16 & v17) >> 6;
      v20 = *(v37 + 8 * v19);
      v21 = 1 << (v16 & v17);
      if ((v21 & v20) == 0)
      {
        break;
      }

      v22 = v9;
      v14(v6, *(v9 + 48) + v18 * v13, v2);
      sub_266A6A570(&qword_2800B21A0);
      v23 = sub_266ABD9F4();
      v24 = *v12;
      (*v12)(v6, v2);
      if (v23)
      {
        result = (v24)(v38, v2);
        v9 = v22;
        goto LABEL_12;
      }

      v16 = v18 + 1;
      v9 = v22;
    }

    v25 = v38;
    *(v37 + 8 * v19) = v21 | v20;
    result = (*v30)(*(v9 + 48) + v18 * v13, v25, v2);
    v26 = *(v9 + 16);
    v27 = __OFADD__(v26, 1);
    v28 = v26 + 1;
    if (v27)
    {
      goto LABEL_17;
    }

    *(v9 + 16) = v28;
LABEL_12:
    v10 = v35;
    a1 = v31;
    if (v35 == v33)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_266A6A570(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_266ABD844();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_266A6A5B4(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_266A6A63C(uint64_t a1)
{
  v2 = type metadata accessor for ParticipantModel();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t type metadata accessor for ParticipantModel()
{
  result = qword_2800B2AD0;
  if (!qword_2800B2AD0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void __swiftcall SCDAFDevice.asDevice(assistantIdentifier:)(SiriCrossDeviceArbitrationFeedback::DeviceModel *__return_ptr retstr, Swift::String_optional assistantIdentifier)
{
  v86 = assistantIdentifier;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B1D88, &qword_266AC20D0) - 8) + 64);
  OUTLINED_FUNCTION_26();
  MEMORY[0x28223BE20](v5);
  v7 = &v82 - v6;
  v8 = sub_266ABD864();
  v9 = OUTLINED_FUNCTION_1_0(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_4_2();
  v16 = (v14 - v15);
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_33_1();
  v83 = v18;
  v100 = sub_266ABD8B4();
  v19 = OUTLINED_FUNCTION_1_0(v100);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  v22 = sub_266A8A870(v2, &selRef_idsIdentifier);
  v101 = v23;
  v102 = v22;
  v24 = sub_266A8A818(v2);
  if (v24)
  {
    v25 = v24;
  }

  else
  {
    v25 = &unk_28783EB10;
  }

  v26 = sub_266A8A870(v2, &selRef_enclosureColor);
  v28 = 0x30303030303023;
  if (v27)
  {
    v28 = v26;
  }

  v84 = v28;
  v29 = 0xE700000000000000;
  if (v27)
  {
    v29 = v27;
  }

  v99 = v29;
  v98 = sub_266A8A870(v2, &selRef_name);
  v95 = v30;
  v31 = sub_266A8A870(v2, &selRef_build);
  v96 = v32;
  v97 = v31;
  v33 = sub_266A8A870(v2, &selRef_locale);
  v93 = v34;
  v94 = v33;
  v35 = sub_266A8A870(v2, &selRef_assistantId);
  v91 = v36;
  v92 = v35;
  v37 = sub_266A8A870(v2, &selRef_speechId);
  v89 = v38;
  v90 = v37;
  v39 = OUTLINED_FUNCTION_21_2();
  v41 = sub_266A8A870(v39, v40);
  v87 = v42;
  v88 = v41;
  v43 = OUTLINED_FUNCTION_21_2();
  v45 = sub_266A8A870(v43, v44);
  v47 = sub_266A6C244(v86.value._countAndFlagsBits, v86.value._object, v45, v46);
  v86.value._countAndFlagsBits = v48;
  v86.value._object = v47;

  if (v25[2])
  {
    v49 = v25[4];
    v50 = v25[5];

    v51._countAndFlagsBits = OUTLINED_FUNCTION_21_2();
    DeviceClass.init(model:)(v51);
    v103 = 0;
    v52 = DeviceClass.displayName(productType:)(&v103);
    countAndFlagsBits = v52._countAndFlagsBits;
    object = v52._object;
  }

  else
  {
    object = 0xEB00000000657365;
    countAndFlagsBits = 0x6874666F656E6F6ELL;
  }

  sub_266ABD884();
  sub_266ABD8A4();
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    v54 = OUTLINED_FUNCTION_20_2();
    v55(v54);
    sub_266A6CBB4(v7, &qword_2800B1D88, &qword_266AC20D0);
  }

  else
  {
    v56 = v83;
    (*(v11 + 32))();
    (*(v11 + 16))(v16, v56, v8);
    v57 = *(v11 + 88);
    v58 = OUTLINED_FUNCTION_29_1();
    if (v59(v58) == *MEMORY[0x277D85508])
    {
      v60 = *(v11 + 96);
      v61 = OUTLINED_FUNCTION_29_1();
      v62(v61);
      v63 = sub_266AA6004(*v16, v16[1], v16[2]);
      v65 = v64;
      (*(v11 + 8))(v56, v8);
      v66 = OUTLINED_FUNCTION_20_2();
      v67(v66);

      goto LABEL_17;
    }

    v68 = *(v11 + 8);
    v68(v56, v8);
    v69 = OUTLINED_FUNCTION_20_2();
    v70(v69);
    v71 = OUTLINED_FUNCTION_29_1();
    (v68)(v71);
  }

  v65 = v99;
  v63 = v84;
LABEL_17:
  v72 = v95 == 0;
  v73 = 0xE700000000000000;
  if (v95)
  {
    v73 = v95;
  }

  v74 = v101;
  retstr->idsId.value._countAndFlagsBits = v102;
  retstr->idsId.value._object = v74;
  v75 = 0x6E776F6E6B6E55;
  if (!v72)
  {
    v75 = v98;
  }

  retstr->build.value._countAndFlagsBits = v97;
  retstr->build.value._object = v96;
  retstr->enclosureColor._countAndFlagsBits = v63;
  v76 = v93;
  v77 = v94;
  retstr->enclosureColor._object = v65;
  retstr->locale.value._countAndFlagsBits = v77;
  retstr->locale.value._object = v76;
  retstr->name.userProvided.value._countAndFlagsBits = v75;
  retstr->name.userProvided.value._object = v73;
  retstr->name.fallback._countAndFlagsBits = countAndFlagsBits;
  retstr->name.fallback._object = object;
  retstr->productTypes._rawValue = v25;
  v78 = v91;
  retstr->assistantId.value._countAndFlagsBits = v92;
  retstr->assistantId.value._object = v78;
  v79 = v89;
  retstr->speechId.value._countAndFlagsBits = v90;
  retstr->speechId.value._object = v79;
  v80 = v87;
  retstr->roomName.value._countAndFlagsBits = v88;
  retstr->roomName.value._object = v80;
  v81 = v86.value._countAndFlagsBits;
  retstr->roomNameHash.value._countAndFlagsBits = v86.value._object;
  retstr->roomNameHash.value._object = v81;
}

uint64_t OUTLINED_FUNCTION_27_2()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_20_0()
{

  return sub_266ABE084();
}

uint64_t OUTLINED_FUNCTION_20_2()
{
  v3 = *(v1 + 8);
  result = v0;
  v5 = *(v2 - 120);
  return result;
}

unint64_t sub_266A6ACDC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  result = [v1 confidence];
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_17;
  }

  v5 = result;
  if (result > 0xFF)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  AdvertisementDeviceClass.init(rawValue:)([v2 deviceClass]);
  result = [v2 deviceGroup];
  if ((result & 0x8000000000000000) != 0)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v6 = result;
  if (result > 0xFF)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  result = [v2 goodnessScore];
  if ((result & 0x8000000000000000) != 0)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v7 = result;
  if (result > 0xFF)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v8 = [v2 advertHash];
  v9 = [v8 unsignedShortValue];

  AdvertisementProductType.init(rawValue:)([v2 productType]);
  result = [v2 tieBreaker];
  if ((result & 0x8000000000000000) != 0)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (result > 0xFF)
  {
LABEL_23:
    __break(1u);
    return result;
  }

  *a1 = v5;
  if (v12 == 9)
  {
    v10 = 0;
  }

  else
  {
    v10 = v12;
  }

  if (v13 == 11)
  {
    v11 = 0;
  }

  else
  {
    v11 = v13;
  }

  *(a1 + 1) = v11;
  *(a1 + 2) = v6;
  *(a1 + 3) = v7;
  *(a1 + 4) = v9;
  *(a1 + 6) = v10;
  *(a1 + 7) = result;
  return result;
}

SiriCrossDeviceArbitrationFeedback::AdvertisementDeviceClass_optional __swiftcall AdvertisementDeviceClass.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 11;
  if (rawValue < 0xB)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

SiriCrossDeviceArbitrationFeedback::AdvertisementProductType_optional __swiftcall AdvertisementProductType.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 9;
  if (rawValue < 9)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t sub_266A6AE78(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_12_0(char a1)
{
  *(v1 - 112) = a1;

  return sub_266ABE194();
}

void OUTLINED_FUNCTION_12_2()
{

  JUMPOUT(0x26D5E83C0);
}

uint64_t OUTLINED_FUNCTION_12_3()
{

  return sub_266ABDA74();
}

uint64_t sub_266A6AF8C(uint64_t a1)
{
  if (!(a1 >> 62))
  {
    return *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (a1 >= 0)
  {
    a1 &= 0xFFFFFFFFFFFFFF8uLL;
  }

  return MEMORY[0x2821FD7B8](a1);
}

char *sub_266A6AFB0(char *a1, int64_t a2, char a3)
{
  result = sub_266A6AFD0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_266A6AFD0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B22C0, &qword_266AC3548);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 8);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[8 * v8] <= v12)
    {
      memmove(v12, v13, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 8 * v8);
  }

  return v10;
}

uint64_t sub_266A6B150(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC34SiriCrossDeviceArbitrationFeedback11GlobalsImpl_localDeviceAssistantIdentifier);
  swift_beginAccess();
  v6 = v5[1];
  *v5 = a1;
  v5[1] = a2;
}

char *sub_266A6BD88(char *a1, int64_t a2, char a3)
{
  result = sub_266A6BDA8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_266A6BDA8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B22D0, &qword_266AC3558);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 168);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[168 * v8] <= v12)
    {
      memmove(v12, v13, 168 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void OUTLINED_FUNCTION_7_0()
{
  v1 = *(v0 + 2);
  v2 = *(v0 + 3);
  v3 = *(v0 + 4);
  v4 = *(v0 + 7);
}

uint64_t OUTLINED_FUNCTION_7_2()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_7_3()
{

  return sub_266ABE1C4();
}

uint64_t OUTLINED_FUNCTION_7_4()
{

  return sub_266ABE124();
}

void OUTLINED_FUNCTION_7_5()
{

  JUMPOUT(0x26D5E9280);
}

void OUTLINED_FUNCTION_7_10()
{
  *(v0 - 224) = 0;
  *(v0 - 200) = 0;
  *(v0 - 192) = 0;
  *(v0 - 176) = 0;
  *(v0 - 160) = 0;
}

void OUTLINED_FUNCTION_7_11(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

double OUTLINED_FUNCTION_7_12()
{
  *(v0 + 56) = 0;
  result = 0.0;
  *(v0 + 40) = 0u;
  *(v0 + 24) = 0u;
  return result;
}

uint64_t sub_266A6C04C()
{
  v1 = (v0 + OBJC_IVAR____TtC34SiriCrossDeviceArbitrationFeedback11GlobalsImpl_localDeviceAssistantIdentifier);
  swift_beginAccess();
  v3 = *v1;
  v2 = v1[1];

  return v3;
}

void *OUTLINED_FUNCTION_5_1(void *a1)
{

  return memcpy(a1, &STACK[0x4A8], 0xA8uLL);
}

uint64_t OUTLINED_FUNCTION_5_2()
{

  return sub_266ABE0C4();
}

uint64_t OUTLINED_FUNCTION_5_5()
{
  v3 = *(v0 - 120);
  v2 = *(v0 - 112);

  return sub_266ABE0C4();
}

uint64_t OUTLINED_FUNCTION_5_7()
{

  return swift_beginAccess();
}

void OUTLINED_FUNCTION_5_8()
{

  JUMPOUT(0x26D5E92A0);
}

uint64_t OUTLINED_FUNCTION_22_3()
{
  v2 = *(v0 - 440);

  return sub_266ABDFE4();
}

uint64_t sub_266A6C244(uint64_t a1, int64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_266ABD964();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_266ABD954();
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v44 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v15);
  v21 = 0;
  if (!a4 || !a2)
  {
    return v21;
  }

  v49 = a1;
  v50 = a2;
  v46 = v20;
  v47 = v18;
  v22 = &v44 - v19;

  MEMORY[0x26D5E83C0](a3, a4);
  v23 = sub_266A6C69C(v49, v50);
  v25 = v24;
  sub_266A6CD34(&qword_2800B1D68, MEMORY[0x277CC5540]);
  sub_266ABD944();
  sub_266A6CCDC(v23, v25);
  sub_266A6CD7C(v23, v25, v12);
  sub_266A6A5B4(v23, v25);
  sub_266ABD934();
  (*(v9 + 8))(v12, v8);
  sub_266A6A5B4(v23, v25);
  v26 = *(v46 + 16);
  v45 = v22;
  v26(v17, v22, v47);
  sub_266A6CD34(&qword_2800B2020, MEMORY[0x277CC5290]);
  result = sub_266ABDB84();
  v28 = *(v49 + 16);
  v29 = v28 - v50;
  v44 = v49;
  if (v28 == v50)
  {
    v30 = MEMORY[0x277D84F90];
LABEL_5:

    v49 = v30;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B1CF8, &qword_266AC20F0);
    sub_266A6D26C();
    v21 = sub_266ABD9E4();
    (*(v46 + 8))(v45, v47);

    return v21;
  }

  if (v28 <= v50)
  {
    __break(1u);
    goto LABEL_18;
  }

  if (v50 < 0)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (v28)
  {
    v31 = (v50 + v49 + 32);
    v30 = MEMORY[0x277D84F90];
    v48 = xmmword_266AC0EB0;
    v32 = MEMORY[0x277D84B78];
    v33 = MEMORY[0x277D84BC0];
    do
    {
      v34 = *v31++;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B1CF0, &unk_266AC0FF0);
      v35 = swift_allocObject();
      *(v35 + 16) = v48;
      *(v35 + 56) = v32;
      *(v35 + 64) = v33;
      *(v35 + 32) = v34;
      v36 = sub_266ABDAA4();
      v38 = v37;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v41 = *(v30 + 16);
        sub_266A6CFCC();
        v30 = v42;
      }

      v39 = *(v30 + 16);
      if (v39 >= *(v30 + 24) >> 1)
      {
        sub_266A6CFCC();
        v30 = v43;
      }

      *(v30 + 16) = v39 + 1;
      v40 = v30 + 16 * v39;
      *(v40 + 32) = v36;
      *(v40 + 40) = v38;
      --v29;
    }

    while (v29);
    goto LABEL_5;
  }

LABEL_19:
  __break(1u);
  return result;
}

uint64_t sub_266A6C69C(uint64_t a1, unint64_t a2)
{
  v40 = *MEMORY[0x277D85DE8];
  *&v37 = a1;
  *(&v37 + 1) = a2;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B20A0, &qword_266AC25F0);
  if (swift_dynamicCast())
  {
    sub_266A6DBC4(v35, &v38);
    __swift_project_boxed_opaque_existential_1(&v38, v39);
    sub_266ABD584();
    v35[0] = v37;
    __swift_destroy_boxed_opaque_existential_1Tm(&v38);
    goto LABEL_59;
  }

  v36 = 0;
  memset(v35, 0, sizeof(v35));
  sub_266A6CBB4(v35, &qword_2800B20A8, &qword_266AC25F8);
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_63;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    *&v35[0] = a1;
    *(&v35[0] + 1) = a2 & 0xFFFFFFFFFFFFFFLL;
    v4 = v35;
    v5 = HIBYTE(a2) & 0xF;
  }

  else if ((a1 & 0x1000000000000000) != 0)
  {
    v4 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  else
  {
    v4 = sub_266ABDF04();
  }

  sub_266A6CC14(v4, v5, &v38);
  v6 = *(&v38 + 1);
  v7 = v38;
  if (*(&v38 + 1) >> 60 != 15)
  {
    v35[0] = v38;
    goto LABEL_59;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v8 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v8 = a1 & 0xFFFFFFFFFFFFLL;
  }

LABEL_12:
  *&v35[0] = MEMORY[0x26D5E7F60](v8);
  *(&v35[0] + 1) = v9;
  MEMORY[0x28223BE20](*&v35[0]);
  v10 = sub_266A8A27C(sub_266A8B0C8);
  v12 = *(&v35[0] + 1) >> 62;
  v13 = v10;
  v15 = v14;
  v17 = v16;
  v18 = BYTE14(v35[0]);
  switch(*(&v35[0] + 1) >> 62)
  {
    case 1:
      LODWORD(v19) = DWORD1(v35[0]) - LODWORD(v35[0]);
      if (__OFSUB__(DWORD1(v35[0]), v35[0]))
      {
        goto LABEL_66;
      }

      v19 = v19;
LABEL_22:
      if (v11 == v19)
      {
        goto LABEL_23;
      }

      if (v12 == 2)
      {
        v18 = *(*&v35[0] + 24);
      }

      else if (v12 == 1)
      {
        v18 = *&v35[0] >> 32;
      }

      goto LABEL_56;
    case 2:
      v21 = *(*&v35[0] + 16);
      v20 = *(*&v35[0] + 24);
      v22 = __OFSUB__(v20, v21);
      v19 = v20 - v21;
      if (!v22)
      {
        goto LABEL_22;
      }

      __break(1u);
LABEL_18:
      if (v11)
      {
        v18 = 0;
LABEL_56:
        if (v18 < v11)
        {
          __break(1u);
LABEL_66:
          __break(1u);
        }

        sub_266ABD6A4();
LABEL_58:

        goto LABEL_59;
      }

LABEL_23:
      v34 = v7;
      LOBYTE(v23) = 0;
      if ((v15 & 0x2000000000000000) != 0)
      {
        v24 = HIBYTE(v15) & 0xF;
      }

      else
      {
        v24 = v10 & 0xFFFFFFFFFFFFLL;
      }

      v25 = (v10 >> 59) & 1;
      if ((v15 & 0x1000000000000000) == 0)
      {
        LOBYTE(v25) = 1;
      }

      v26 = 4 << v25;
      *(&v37 + 7) = 0;
      *&v37 = 0;
      break;
    case 3:
      goto LABEL_18;
    default:
      v19 = BYTE14(v35[0]);
      goto LABEL_22;
  }

  while (4 * v24 != v17 >> 14)
  {
    v27 = v17;
    if ((v17 & 0xC) == v26)
    {
      v27 = sub_266A8B0E4(v17, v13, v15);
    }

    v28 = v27 >> 16;
    if (v27 >> 16 >= v24)
    {
      __break(1u);
LABEL_61:
      __break(1u);
LABEL_62:
      __break(1u);
LABEL_63:
      v8 = sub_266ABDB24();
      v7 = 0;
      v6 = 0xF000000000000000;
      goto LABEL_12;
    }

    if ((v15 & 0x1000000000000000) != 0)
    {
      v30 = sub_266ABDB54();
    }

    else if ((v15 & 0x2000000000000000) != 0)
    {
      *&v38 = v13;
      *(&v38 + 1) = v15 & 0xFFFFFFFFFFFFFFLL;
      v30 = *(&v38 + v28);
    }

    else
    {
      v29 = (v15 & 0xFFFFFFFFFFFFFFFLL) + 32;
      if ((v13 & 0x1000000000000000) == 0)
      {
        v29 = sub_266ABDF04();
      }

      v30 = *(v29 + v28);
    }

    if ((v17 & 0xC) == v26)
    {
      v17 = sub_266A8B0E4(v17, v13, v15);
      if ((v15 & 0x1000000000000000) == 0)
      {
LABEL_41:
        v17 = (v17 & 0xFFFFFFFFFFFF0000) + 65540;
        goto LABEL_46;
      }
    }

    else if ((v15 & 0x1000000000000000) == 0)
    {
      goto LABEL_41;
    }

    if (v24 <= v17 >> 16)
    {
      goto LABEL_62;
    }

    v17 = sub_266ABDB34();
LABEL_46:
    *(&v37 + v23) = v30;
    v23 = v23 + 1;
    if ((v23 >> 8))
    {
      goto LABEL_61;
    }

    if (v23 == 14)
    {
      *&v38 = v37;
      *(&v38 + 6) = *(&v37 + 6);
      sub_266ABD6C4();
      LOBYTE(v23) = 0;
    }
  }

  if (v23)
  {
    *&v38 = v37;
    *(&v38 + 6) = *(&v37 + 6);
    sub_266ABD6C4();
    sub_266A7BB30(v34, v6);
    goto LABEL_58;
  }

  sub_266A7BB30(v34, v6);
LABEL_59:
  v31 = v35[0];
  sub_266A6CCDC(*&v35[0], *(&v35[0] + 1));

  sub_266A6A5B4(v31, *(&v31 + 1));
  v32 = *MEMORY[0x277D85DE8];
  return v31;
}

uint64_t sub_266A6CBB4(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_266A6CC14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = 0;
  v6 = 0xC000000000000000;
  if (a1 && a2)
  {
    if (a2 <= 14)
    {
      result = sub_266ABD644();
      v6 = v12 & 0xFFFFFFFFFFFFFFLL;
    }

    else
    {
      v8 = sub_266ABD554();
      v9 = *(v8 + 48);
      v10 = *(v8 + 52);
      swift_allocObject();
      v11 = sub_266ABD514();
      if (a2 >= 0x7FFFFFFF)
      {
        sub_266ABD694();
        result = swift_allocObject();
        *(result + 16) = 0;
        *(result + 24) = a2;
        v6 = v11 | 0x8000000000000000;
      }

      else
      {
        result = a2 << 32;
        v6 = v11 | 0x4000000000000000;
      }
    }
  }

  *a3 = result;
  a3[1] = v6;
  return result;
}

uint64_t sub_266A6CCDC(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_266A6CD34(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_266A6CDD8(uint64_t a1, unint64_t a2, uint64_t a3, void (*a4)(void), unint64_t *a5, void (*a6)(uint64_t))
{
  switch(a2 >> 62)
  {
    case 1uLL:
      v16 = a1 >> 32;
      if (a1 >> 32 < a1)
      {
        goto LABEL_11;
      }

      a1 = a1;
      v13 = a2 & 0x3FFFFFFFFFFFFFFFLL;
      v14 = v16;
LABEL_9:
      result = sub_266A6CEA4(a1, v14, v13, a3, a4, a5, a6);
      if (v6)
      {
        goto LABEL_10;
      }

      return result;
    case 2uLL:
      v12 = *(a1 + 24);
      v13 = a2 & 0x3FFFFFFFFFFFFFFFLL;
      a1 = *(a1 + 16);
      v14 = v12;
      goto LABEL_9;
    case 3uLL:
      a1 = 0;
      v11 = 0;
      goto LABEL_5;
    default:
      v11 = a2 & 0xFFFFFFFFFFFFFFLL;
LABEL_5:
      result = sub_266A7BEC8(a1, v11, a3, a4, a5, a6);
      if (v6)
      {
LABEL_10:

        __break(1u);
LABEL_11:
        __break(1u);
        JUMPOUT(0x266A6CE94);
      }

      return result;
  }
}

uint64_t sub_266A6CEA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void), unint64_t *a6, void (*a7)(uint64_t))
{
  result = sub_266ABD524();
  if (!result || (result = sub_266ABD544(), !__OFSUB__(a1, result)))
  {
    if (!__OFSUB__(a2, a1))
    {
      sub_266ABD534();
      a5(0);
      sub_266A6CF84(a6, a7);
      return sub_266ABD924();
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_266A6CF84(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_266A6CFCC()
{
  OUTLINED_FUNCTION_12_4();
  if (v5)
  {
    OUTLINED_FUNCTION_2_5();
    if (v7 != v8)
    {
      OUTLINED_FUNCTION_7_6();
      if (v7)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_1_6();
    }
  }

  else
  {
    v6 = v4;
  }

  OUTLINED_FUNCTION_8_6(v6);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B2338, &unk_266AC35C0);
    v9 = swift_allocObject();
    v10 = _swift_stdlib_malloc_size(v9);
    OUTLINED_FUNCTION_29_3((v10 - 32) / 16);
  }

  else
  {
    v9 = MEMORY[0x277D84F90];
  }

  v11 = v9 + 32;
  v12 = v0 + 32;
  if (v1)
  {
    if (v9 != v0 || &v12[16 * v2] <= v11)
    {
      memmove(v11, v12, 16 * v2);
    }

    *(v0 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

BOOL OUTLINED_FUNCTION_13(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t OUTLINED_FUNCTION_13_2()
{

  return sub_266ABDA74();
}

void OUTLINED_FUNCTION_10_1()
{

  JUMPOUT(0x26D5E83C0);
}

void OUTLINED_FUNCTION_10_4(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

uint64_t OUTLINED_FUNCTION_10_6@<X0>(uint64_t a1@<X8>)
{
  v3 = *(a1 - 256);
  v5 = *(v1 - 128);
  v4 = *(v1 - 120);

  return sub_266ABE0C4();
}

void OUTLINED_FUNCTION_10_7()
{
  *(v0 - 224) = 0;
  *(v0 - 192) = 0;
  *(v0 - 176) = 0;
}

uint64_t OUTLINED_FUNCTION_32(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
}

uint64_t OUTLINED_FUNCTION_32_2()
{

  return sub_266ABE244();
}

unint64_t sub_266A6D26C()
{
  result = qword_2800B1D00;
  if (!qword_2800B1D00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2800B1CF8, &qword_266AC20F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800B1D00);
  }

  return result;
}

SiriCrossDeviceArbitrationFeedback::DeviceClass __swiftcall DeviceClass.init(model:)(Swift::String model)
{
  v2 = v1;
  sub_266ABDAF4();

  v3 = 0;
  while (2)
  {
    v4 = byte_28783E840[v3++ + 32];
    v5 = sub_266ABDB74();

    if ((v5 & 1) == 0)
    {
      switch(v4)
      {
        case 0:
        case 1:
        case 2:
        case 3:
        case 4:
        case 5:
        case 6:
        case 7:
        case 8:
        case 9:
          sub_266A6D62C();
          v6 = sub_266ABDE04();

          if (v6)
          {
            break;
          }

          if (v3 != 10)
          {
            continue;
          }

          LOBYTE(v4) = 8;
          break;
        default:
          JUMPOUT(0);
      }
    }

    break;
  }

  *v2 = v4;
  return result;
}

unint64_t sub_266A6D62C()
{
  result = qword_2800B2018;
  if (!qword_2800B2018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800B2018);
  }

  return result;
}

void sub_266A6D91C()
{
  OUTLINED_FUNCTION_12_4();
  if (v5)
  {
    OUTLINED_FUNCTION_2_5();
    if (v7 != v8)
    {
      OUTLINED_FUNCTION_7_6();
      if (v7)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_1_6();
    }
  }

  else
  {
    v6 = v4;
  }

  OUTLINED_FUNCTION_8_6(v6);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B2310, &qword_266AC3598);
    v9 = swift_allocObject();
    v10 = _swift_stdlib_malloc_size(v9);
    *(v9 + 2) = v2;
    *(v9 + 3) = 2 * v10 - 64;
  }

  else
  {
    v9 = MEMORY[0x277D84F90];
  }

  v11 = v9 + 32;
  v12 = v0 + 32;
  if (v1)
  {
    if (v9 != v0 || &v12[v2] <= v11)
    {
      memmove(v11, v12, v2);
    }

    *(v0 + 2) = 0;
  }

  else
  {
    memcpy(v11, v12, v2);
  }
}

unint64_t sub_266A6D9F0()
{
  result = qword_2800B1D90;
  if (!qword_2800B1D90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800B1D90);
  }

  return result;
}

unint64_t sub_266A6DA44()
{
  result = qword_2800B1D98;
  if (!qword_2800B1D98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800B1D98);
  }

  return result;
}

uint64_t sub_266A6DA98(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v11 = MEMORY[0x277D84F90];
    OUTLINED_FUNCTION_3();
    sub_266A6DD58();
    v2 = v11;
    v4 = (a1 + 32);
    do
    {
      memcpy(__dst, v4, sizeof(__dst));
      sub_266A6E078(__dst, &v7);
      v11 = v2;
      v5 = *(v2 + 16);
      if (v5 >= *(v2 + 24) >> 1)
      {
        sub_266A6DD58();
        v2 = v11;
      }

      v8 = &type metadata for DeviceModel;
      v9 = sub_266A6DA44();
      *&v7 = swift_allocObject();
      memcpy((v7 + 16), __dst, 0xA8uLL);
      *(v2 + 16) = v5 + 1;
      sub_266A6DBC4(&v7, v2 + 40 * v5 + 32);
      v4 += 168;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_266A6DBC4(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_266A6DBDC()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[7];

  v4 = v0[9];

  v5 = v0[11];

  v6 = v0[13];

  v7 = v0[14];

  v8 = v0[16];

  v9 = v0[18];

  v10 = v0[20];

  v11 = v0[22];

  return MEMORY[0x2821FE8E8](v0, 184, 7);
}

void sub_266A6DC64()
{
  OUTLINED_FUNCTION_34_1();
  if (v7)
  {
    OUTLINED_FUNCTION_2_5();
    if (v9 != v10)
    {
      OUTLINED_FUNCTION_7_6();
      if (v9)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_1_6();
    }
  }

  else
  {
    v8 = v4;
  }

  v11 = *(v0 + 2);
  if (v8 <= v11)
  {
    v12 = *(v0 + 2);
  }

  else
  {
    v12 = v8;
  }

  if (v12)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(v5, v6);
    v13 = OUTLINED_FUNCTION_40_1();
    v14 = _swift_stdlib_malloc_size(v13);
    OUTLINED_FUNCTION_31_2(v14);
  }

  else
  {
    v13 = MEMORY[0x277D84F90];
  }

  if (v3)
  {
    if (v13 != v0 || &v0[40 * v11 + 32] <= v13 + 32)
    {
      v16 = OUTLINED_FUNCTION_11_4();
      memmove(v16, v17, v18);
    }

    *(v0 + 2) = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(v2, v1);
    OUTLINED_FUNCTION_11_4();
    swift_arrayInitWithCopy();
  }
}

void sub_266A6DD58()
{
  v1 = *v0;
  sub_266A6DC64();
  *v0 = v2;
}

uint64_t OUTLINED_FUNCTION_3_2()
{
  v1 = v0[36];
  v2 = v0[37];
  __swift_project_boxed_opaque_existential_1(v0 + 33, v1);
  v3 = *(v2 + 72);
  return v1;
}

uint64_t OUTLINED_FUNCTION_3_5()
{

  return sub_266ABE054();
}

uint64_t OUTLINED_FUNCTION_3_6(unint64_t *a1)
{

  return sub_266A7250C(a1);
}

uint64_t OUTLINED_FUNCTION_3_7()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_3_8()
{
  v2 = *(v0 - 440);

  return sub_266ABDFE4();
}

uint64_t OUTLINED_FUNCTION_3_9()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_3_10()
{
  v1 = *(*(v0 - 272) + 8);
  result = *(v0 - 280);
  v3 = *(v0 - 264);
  return result;
}

uint64_t OUTLINED_FUNCTION_37()
{

  return sub_266A6F968(v2 - 160, v2 - 208, v0, v1);
}

uint64_t OUTLINED_FUNCTION_37_0()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_37_2()
{

  return type metadata accessor for ParticipantModel();
}

void OUTLINED_FUNCTION_9_0()
{

  JUMPOUT(0x26D5E83C0);
}

void OUTLINED_FUNCTION_9_1(uint64_t a1@<X8>)
{
  v2 = (v1 + a1);
  *v2 = 0;
  v2[1] = 0;
}

uint64_t OUTLINED_FUNCTION_9_3()
{

  return sub_266ABE1C4();
}

uint64_t OUTLINED_FUNCTION_9_4()
{

  return sub_266ABDF24();
}

uint64_t OUTLINED_FUNCTION_42()
{

  return swift_bridgeObjectRelease_n();
}

uint64_t OUTLINED_FUNCTION_33_0()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_33_2()
{

  return swift_slowAlloc();
}

void sub_266A6E0D4(unint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v2 = a1;
  if (a1 >= 4)
  {
    if (qword_280BB6C30 != -1)
    {
      swift_once();
    }

    v4 = sub_266ABD8D4();
    __swift_project_value_buffer(v4, qword_280BB7028);
    v5 = sub_266ABD8C4();
    v6 = sub_266ABDD64();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 134217984;
      *(v7 + 4) = v2;
      _os_log_impl(&dword_266A65000, v5, v6, "#feedback Unknown participation state. %lu", v7, 0xCu);
      MEMORY[0x26D5E9280](v7, -1, -1);
    }

    LOBYTE(v2) = 0;
  }

  *a2 = v2;
}

void sub_266A6E1D8()
{
  v1 = *v0;
  sub_266A6DC64();
  *v0 = v2;
}

uint64_t sub_266A6E2B4(void *a1)
{
  v2 = sub_266ABD634();
  v3 = OUTLINED_FUNCTION_1_0(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_2();
  v10 = v9 - v8;
  static FeedbackServiceImpl.receivedArbitrationsDirectoryURL.getter();
  v11 = sub_266ABD604();
  v13 = v12;
  (*(v5 + 8))(v10, v2);
  sub_266A66EF8(a1, v11, v13);
}

uint64_t sub_266A6E3AC(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = MEMORY[0x277D84F90];
  if (v2)
  {
    v15 = MEMORY[0x277D84F90];
    OUTLINED_FUNCTION_3();
    sub_266A6E1D8();
    v3 = v15;
    v5 = (a1 + 39);
    do
    {
      v1.i32[0] = *(v5 - 7);
      v6 = *(v5 - 3);
      v7 = *(v5 - 1);
      v8 = *v5;
      v15 = v3;
      v9 = *(v3 + 16);
      if (v9 >= *(v3 + 24) >> 1)
      {
        OUTLINED_FUNCTION_33();
        sub_266A6E1D8();
        v3 = v15;
      }

      v11 = vmovl_u8(v1).u64[0];
      v13 = &type metadata for AdvertisementModel;
      v14 = sub_266A6D9F0();
      LODWORD(v12) = vuzp1_s8(v11, v11).u32[0];
      WORD2(v12) = v6;
      BYTE6(v12) = v7;
      BYTE7(v12) = v8;
      *(v3 + 16) = v9 + 1;
      sub_266A6DBC4(&v12, v3 + 40 * v9 + 32);
      v5 += 8;
      --v2;
    }

    while (v2);
  }

  return v3;
}

void *static FeedbackServiceImpl.receivedArbitrationsDirectoryURL.getter()
{
  result = CPSharedResourcesDirectory();
  if (result)
  {
    v1 = result;
    v2 = sub_266ABDA74();
    v3 = [v1 stringByAppendingPathComponent_];

    sub_266ABDA84();
    sub_266ABD5D4();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_11()
{

  return sub_266ABDAD4();
}

uint64_t OUTLINED_FUNCTION_11_0()
{

  return sub_266ABE194();
}

void OUTLINED_FUNCTION_11_3(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t OUTLINED_FUNCTION_11_6()
{

  return sub_266ABE154();
}

void sub_266A6E668(unint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v2 = a1;
  if (a1 >= 3)
  {
    if (qword_280BB6C30 != -1)
    {
      swift_once();
    }

    v4 = sub_266ABD8D4();
    __swift_project_value_buffer(v4, qword_280BB7028);
    v5 = sub_266ABD8C4();
    v6 = sub_266ABDD64();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 134217984;
      *(v7 + 4) = v2;
      _os_log_impl(&dword_266A65000, v5, v6, "#feedback Unknown timer state. %lu", v7, 0xCu);
      MEMORY[0x26D5E9280](v7, -1, -1);
    }

    LOBYTE(v2) = 0;
  }

  *a2 = v2;
}

void sub_266A6E76C(unint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v2 = a1;
  if (a1 >= 6)
  {
    if (qword_280BB6C30 != -1)
    {
      swift_once();
    }

    v4 = sub_266ABD8D4();
    __swift_project_value_buffer(v4, qword_280BB7028);
    v5 = sub_266ABD8C4();
    v6 = sub_266ABDD64();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 134217984;
      *(v7 + 4) = v2;
      _os_log_impl(&dword_266A65000, v5, v6, "#feedback Unknown Media state. %lu", v7, 0xCu);
      MEMORY[0x26D5E9280](v7, -1, -1);
    }

    LOBYTE(v2) = 0;
  }

  *a2 = v2;
}

void sub_266A6E870(unint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v2 = a1;
  if (a1 >= 9)
  {
    if (qword_280BB6C30 != -1)
    {
      swift_once();
    }

    v4 = sub_266ABD8D4();
    __swift_project_value_buffer(v4, qword_280BB7028);
    v5 = sub_266ABD8C4();
    v6 = sub_266ABDD64();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 134217984;
      *(v7 + 4) = v2;
      _os_log_impl(&dword_266A65000, v5, v6, "#feedback Invalid Trigger Type received. %lu", v7, 0xCu);
      MEMORY[0x26D5E9280](v7, -1, -1);
    }

    LOBYTE(v2) = 0;
  }

  *a2 = v2;
}

uint64_t sub_266A6E974(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B1DB8, "h9");
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_266A6E9E4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ParticipantModel();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void ParticipantModel.description.getter()
{
  OUTLINED_FUNCTION_31();
  v3 = v0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B1DB8, "h9");
  OUTLINED_FUNCTION_21(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_26();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_32_3();
  v8 = sub_266ABD7A4();
  v9 = OUTLINED_FUNCTION_1_0(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_54();
  strcpy(v56, "This Device:\n");
  v57 = -4864;
  *&v53 = 0;
  *(&v53 + 1) = 0xE000000000000000;
  v15 = *(v0 + 72);
  v14 = *(v0 + 80);
  __swift_project_boxed_opaque_existential_1((v3 + 48), v15);
  v16 = *(v14 + 8);
  sub_266ABE1A4();
  OUTLINED_FUNCTION_38_2();
  MEMORY[0x26D5E83C0](0, 0xE000000000000000);

  OUTLINED_FUNCTION_38_2();
  MEMORY[0x26D5E83C0](0x3A74736575716552, 0xE90000000000000ALL);
  sub_266ABDEA4();

  *&v53 = 0xD000000000000012;
  *(&v53 + 1) = 0x8000000266AC0740;
  v17 = type metadata accessor for ParticipantModel();
  v18 = v17[11];
  OUTLINED_FUNCTION_0_7();
  sub_266A6F7D0(v19, v20);
  v21 = sub_266ABE194();
  MEMORY[0x26D5E83C0](v21);

  OUTLINED_FUNCTION_38_2();
  MEMORY[0x26D5E83C0](0xD000000000000012, 0x8000000266AC0740);

  *&v53 = 0;
  *(&v53 + 1) = 0xE000000000000000;
  MEMORY[0x26D5E83C0](0x5472656767697274, 0xEC0000003D657079);
  LOBYTE(v51) = *(v3 + v17[22]);
  sub_266ABDF24();
  OUTLINED_FUNCTION_38_2();
  MEMORY[0x26D5E83C0](0, 0xE000000000000000);

  sub_266A6F9C8(v3 + v17[15], v2, &qword_2800B1DB8, "h9");
  OUTLINED_FUNCTION_77(v2, 1, v8);
  if (v22)
  {
    sub_266A798F4(v2, &qword_2800B1DB8, "h9");
  }

  else
  {
    (*(v11 + 32))(v1, v2, v8);
    sub_266ABDEA4();

    *&v53 = 0xD000000000000012;
    *(&v53 + 1) = 0x8000000266AC0820;
    sub_266ABE194();
    OUTLINED_FUNCTION_84();

    OUTLINED_FUNCTION_38_2();
    OUTLINED_FUNCTION_29_5();

    (*(v11 + 8))(v1, v8);
  }

  v23 = (v3 + v17[14]);
  v24 = *v23;
  v25 = v23[1];
  if (v25)
  {
    OUTLINED_FUNCTION_48();
    sub_266ABDEA4();

    OUTLINED_FUNCTION_60();
    OUTLINED_FUNCTION_38_2();
    OUTLINED_FUNCTION_29_5();
  }

  v26 = (v3 + v17[17]);
  if (v26[1])
  {
    v27 = *v26;
    *&v53 = 0x4974736575716572;
    *(&v53 + 1) = 0xEA00000000003D64;
    MEMORY[0x26D5E83C0](v27);
    OUTLINED_FUNCTION_38_2();
    OUTLINED_FUNCTION_29_5();
  }

  OUTLINED_FUNCTION_38_2();
  MEMORY[0x26D5E83C0](0x3A676E69726F6353, 0xE90000000000000ALL);
  if ((*(v3 + 114) & 1) == 0)
  {
    v28 = *(v3 + 113);
    OUTLINED_FUNCTION_48();
    sub_266ABDEA4();

    *&v53 = 0xD000000000000011;
    *(&v53 + 1) = 0x8000000266AC0800;
    LOBYTE(v51) = v28;
    sub_266ABE194();
    OUTLINED_FUNCTION_84();

    OUTLINED_FUNCTION_38_2();
    OUTLINED_FUNCTION_29_5();
  }

  *&v53 = 0x3D74736F6F42;
  *(&v53 + 1) = 0xE600000000000000;
  v29 = *(v3 + 40);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B22E8, &unk_266AC5F40);
  MEMORY[0x26D5E84F0](v29, v30);
  OUTLINED_FUNCTION_84();

  OUTLINED_FUNCTION_38_2();
  OUTLINED_FUNCTION_29_5();

  strcpy(&v53, "TrumpReason=");
  HIWORD(v53) = -5120;
  MEMORY[0x26D5E84F0](*(v3 + v17[13]), &type metadata for TrumpReason);
  OUTLINED_FUNCTION_84();

  OUTLINED_FUNCTION_38_2();
  OUTLINED_FUNCTION_29_5();

  if (v25)
  {
    OUTLINED_FUNCTION_48();
    sub_266ABDEA4();

    OUTLINED_FUNCTION_60();
    OUTLINED_FUNCTION_38_2();
    OUTLINED_FUNCTION_83();
  }

  OUTLINED_FUNCTION_38_2();
  MEMORY[0x26D5E83C0](0xD000000000000011, 0x8000000266AC0760);
  v31 = (v3 + v17[18]);
  if (v31[1])
  {
    v32 = *v31;
    *&v53 = 0x3D6449616463;
    *(&v53 + 1) = 0xE600000000000000;
    MEMORY[0x26D5E83C0](v32);
    OUTLINED_FUNCTION_38_2();
    OUTLINED_FUNCTION_83();
  }

  sub_266A6F9C8(v3, &v51, &qword_2800B1CC8, &unk_266AC0FD0);
  if (v52)
  {
    sub_266A6DBC4(&v51, &v53);
    *&v51 = 0;
    *(&v51 + 1) = 0xE000000000000000;
    sub_266ABDEA4();
    MEMORY[0x26D5E83C0](0x7369747265766461, 0xEE003D746E656D65);
    OUTLINED_FUNCTION_64();
    OUTLINED_FUNCTION_38_2();
    OUTLINED_FUNCTION_83();

    __swift_destroy_boxed_opaque_existential_1Tm(&v53);
  }

  else
  {
    sub_266A798F4(&v51, &qword_2800B1CC8, &unk_266AC0FD0);
  }

  sub_266A6F9C8(v3 + v17[16], &v51, &qword_2800B1CC8, &unk_266AC0FD0);
  if (v52)
  {
    sub_266A6DBC4(&v51, &v53);
    *&v51 = 0;
    *(&v51 + 1) = 0xE000000000000000;
    sub_266ABDEA4();
    MEMORY[0x26D5E83C0](0xD000000000000014, 0x8000000266AC07C0);
    OUTLINED_FUNCTION_64();
    OUTLINED_FUNCTION_38_2();
    OUTLINED_FUNCTION_83();

    __swift_destroy_boxed_opaque_existential_1Tm(&v53);
  }

  else
  {
    sub_266A798F4(&v51, &qword_2800B1CC8, &unk_266AC0FD0);
  }

  MEMORY[0x26D5E83C0](0xD000000000000015, 0x8000000266AC0780);
  v33 = *(v3 + v17[12]);
  v34 = *(v33 + 16);
  if (v34)
  {
    v35 = 0;
    v36 = v33 + 32;
    v37 = 0xE000000000000000;
    do
    {
      sub_266A6FFD8(v36, &v53);
      v38 = v55;
      __swift_project_boxed_opaque_existential_1(&v53, v54);
      v39 = *(v38 + 8);
      *&v51 = sub_266ABE194();
      *(&v51 + 1) = v40;
      OUTLINED_FUNCTION_38_2();
      v41 = v51;
      *&v51 = v35;
      *(&v51 + 1) = v37;

      MEMORY[0x26D5E83C0](v41, *(&v41 + 1));

      v37 = *(&v51 + 1);
      v35 = v51;
      __swift_destroy_boxed_opaque_existential_1Tm(&v53);
      v36 += 40;
      --v34;
    }

    while (v34);
  }

  else
  {
    v35 = 0;
    v37 = 0xE000000000000000;
  }

  MEMORY[0x26D5E83C0](v35, v37);

  OUTLINED_FUNCTION_38_2();
  MEMORY[0x26D5E83C0](0xD000000000000010, 0x8000000266AC07A0);
  v42 = *(v3 + 104);
  v43 = *(v42 + 16);
  if (v43)
  {
    v44 = 0;
    v45 = v42 + 32;
    v46 = 0xE000000000000000;
    do
    {
      sub_266A6FFD8(v45, &v53);
      v47 = v55;
      __swift_project_boxed_opaque_existential_1(&v53, v54);
      v48 = *(v47 + 8);
      *&v51 = sub_266ABE194();
      *(&v51 + 1) = v49;
      OUTLINED_FUNCTION_38_2();
      v50 = v51;
      *&v51 = v44;
      *(&v51 + 1) = v46;

      MEMORY[0x26D5E83C0](v50, *(&v50 + 1));

      v46 = *(&v51 + 1);
      v44 = v51;
      __swift_destroy_boxed_opaque_existential_1Tm(&v53);
      v45 += 40;
      --v43;
    }

    while (v43);
  }

  else
  {
    v44 = 0;
    v46 = 0xE000000000000000;
  }

  MEMORY[0x26D5E83C0](v44, v46);

  OUTLINED_FUNCTION_30();
}

uint64_t OUTLINED_FUNCTION_43()
{

  return sub_266A6A5B4(v0, v1);
}

id OUTLINED_FUNCTION_21_1(unsigned __int8 a1, const char *a2)
{

  return [v2 a2];
}

uint64_t OUTLINED_FUNCTION_21_5()
{

  return sub_266ABDEE4();
}

uint64_t OUTLINED_FUNCTION_21_6()
{
  result = v0 + 56;
  v2 = *(v0 + 40);
  return result;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_266A6F430()
{
  v12 = 0x3D656D616ELL;
  v13 = 0xE500000000000000;
  if (v0[9])
  {
    v1 = v0[8];
    v2 = v0[9];
  }

  else
  {
    v1 = v0[10];
    v2 = v0[11];
  }

  MEMORY[0x26D5E83C0](v1, v2);

  if (v0[1])
  {
    strcpy(v11, " | ids=");
    v11[1] = 0xE700000000000000;
    MEMORY[0x26D5E83C0](*v0);
    MEMORY[0x26D5E83C0](v11[0], 0xE700000000000000);
  }

  v3 = v0[14];
  if (v3)
  {
    v4 = v0[13];
    sub_266ABDEA4();

    v11[0] = 0x7369737361207C20;
    v11[1] = 0xEF3D6449746E6174;
    MEMORY[0x26D5E83C0](v4, v3);
    MEMORY[0x26D5E83C0](0x7369737361207C20, 0xEF3D6449746E6174);
  }

  if (v0[16])
  {
    v5 = v0[15];
    strcpy(v11, " | speechId=");
    BYTE5(v11[1]) = 0;
    HIWORD(v11[1]) = -5120;
    MEMORY[0x26D5E83C0](v5);
    MEMORY[0x26D5E83C0](v11[0], v11[1]);
  }

  if (v0[3])
  {
    v6 = v0[2];
    strcpy(v11, " | build=");
    WORD1(v11[1]) = 0;
    HIDWORD(v11[1]) = -385875968;
    MEMORY[0x26D5E83C0](v6);
    MEMORY[0x26D5E83C0](v11[0], v11[1]);
  }

  if (v0[18])
  {
    v7 = v0[17];
    strcpy(v11, " | roomName=");
    BYTE5(v11[1]) = 0;
    HIWORD(v11[1]) = -5120;
    MEMORY[0x26D5E83C0](v7);
    MEMORY[0x26D5E83C0](v11[0], v11[1]);
  }

  if (v0[7])
  {
    v8 = v0[6];
    strcpy(v11, " | locale=");
    BYTE3(v11[1]) = 0;
    HIDWORD(v11[1]) = -369098752;
    MEMORY[0x26D5E83C0](v8);
    MEMORY[0x26D5E83C0](v11[0], v11[1]);
  }

  sub_266ABDEA4();

  v11[0] = 0xD000000000000010;
  v11[1] = 0x8000000266ABFE90;
  v9 = MEMORY[0x26D5E84F0](v0[12], MEMORY[0x277D837D0]);
  MEMORY[0x26D5E83C0](v9);

  MEMORY[0x26D5E83C0](0xD000000000000010, 0x8000000266ABFE90);

  strcpy(v11, " | enclosure=");
  HIWORD(v11[1]) = -4864;
  MEMORY[0x26D5E83C0](v0[4], v0[5]);
  MEMORY[0x26D5E83C0](v11[0], v11[1]);

  return v12;
}

uint64_t OUTLINED_FUNCTION_38()
{

  return swift_arrayInitWithCopy();
}

uint64_t OUTLINED_FUNCTION_38_0()
{
  *(v0 + 16) = v1;
  v6 = v0 + 16 * v2;
  *(v6 + 32) = v4;
  *(v6 + 40) = v3;

  return sub_266ABD4F4();
}

void OUTLINED_FUNCTION_38_2()
{

  JUMPOUT(0x26D5E83C0);
}

uint64_t sub_266A6F7D0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t OUTLINED_FUNCTION_0_2()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_0_4()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_0_5@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(a2 - 256) = result;
  v2 = *(result - 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_0_6()
{

  return swift_once();
}

uint64_t sub_266A6F918(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = OUTLINED_FUNCTION_32(a1, a2, a3, a4);
  OUTLINED_FUNCTION_16(v6);
  (*(v7 + 16))(v4, v5);
  return v4;
}

uint64_t sub_266A6F968(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_16(v6);
  (*(v7 + 16))(a2, a1);
  return a2;
}

uint64_t sub_266A6F9C8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = OUTLINED_FUNCTION_32(a1, a2, a3, a4);
  OUTLINED_FUNCTION_16(v5);
  v7 = *(v6 + 16);
  v8 = OUTLINED_FUNCTION_9_2();
  v9(v8);
  return v4;
}

void OUTLINED_FUNCTION_16_1()
{

  JUMPOUT(0x26D5E83C0);
}

uint64_t OUTLINED_FUNCTION_16_2()
{
  result = v0;
  v3 = *(v1 - 280);
  v4 = *(v1 - 296);
  v5 = *(v1 - 304);
  return result;
}

uint64_t OUTLINED_FUNCTION_16_5()
{

  return sub_266ABE1C4();
}

void OUTLINED_FUNCTION_30_2()
{
  v2 = *(v0 + 16) + 1;

  sub_266A6CFCC();
}

void OUTLINED_FUNCTION_60()
{
  *(v2 - 136) = v1;
  *(v2 - 128) = (v0 - 32) | 0x8000000000000000;

  JUMPOUT(0x26D5E83C0);
}

uint64_t sub_266A6FBB0(unint64_t a1)
{
  v1 = a1 >> 8;
  v2 = HIWORD(a1);
  v24 = HIBYTE(a1);
  sub_266ABDEA4();
  OUTLINED_FUNCTION_17_0();
  v3 = sub_266ABE2F4();
  MEMORY[0x26D5E83C0](v3);

  OUTLINED_FUNCTION_9_0();
  v4 = OUTLINED_FUNCTION_14_1();
  MEMORY[0x26D5E83C0](v4);

  OUTLINED_FUNCTION_13_0();
  v5 = MEMORY[0x26D5E83C0](0x656369766564202CLL);
  OUTLINED_FUNCTION_19_0(v5, v6, &type metadata for AdvertisementDeviceClass, v7, v8, v9, v10, v11, v24, *v26, *&v26[4], v1);
  sub_266ABDF24();
  OUTLINED_FUNCTION_13_0();
  MEMORY[0x26D5E83C0](0x656369766564202CLL);
  v12 = OUTLINED_FUNCTION_14_1();
  MEMORY[0x26D5E83C0](v12);

  OUTLINED_FUNCTION_16_1();
  v13 = OUTLINED_FUNCTION_14_1();
  MEMORY[0x26D5E83C0](v13);

  OUTLINED_FUNCTION_15_0();
  v14 = sub_266ABE194();
  MEMORY[0x26D5E83C0](v14);

  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_19_0(v15, v16, &type metadata for AdvertisementProductType, v17, v18, v19, v20, v21, v25, v27, v28, v2);
  sub_266ABDF24();
  OUTLINED_FUNCTION_10_1();
  v22 = OUTLINED_FUNCTION_14_1();
  MEMORY[0x26D5E83C0](v22);

  MEMORY[0x26D5E83C0](62, 0xE100000000000000);
  return 0;
}

uint64_t OUTLINED_FUNCTION_17()
{

  return swift_beginAccess();
}

void OUTLINED_FUNCTION_17_0()
{

  JUMPOUT(0x26D5E83C0);
}

void OUTLINED_FUNCTION_17_3(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t OUTLINED_FUNCTION_17_6(uint64_t a1)
{

  return sub_266A798F4(a1, v1, v2);
}

void OUTLINED_FUNCTION_15_0()
{

  JUMPOUT(0x26D5E83C0);
}

uint64_t OUTLINED_FUNCTION_15_3()
{

  return sub_266ABDA74();
}

void OUTLINED_FUNCTION_15_4(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

void OUTLINED_FUNCTION_18_0()
{

  JUMPOUT(0x26D5E83C0);
}

void OUTLINED_FUNCTION_18_4(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

uint64_t OUTLINED_FUNCTION_18_5()
{
  v2 = *(v0 - 392);

  return swift_unknownObjectRelease();
}

uint64_t sub_266A6FFD8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t OUTLINED_FUNCTION_31_2(uint64_t result)
{
  *(v2 + 16) = v1;
  *(v2 + 24) = 2 * ((result - 32) / v3);
  return result;
}

uint64_t OUTLINED_FUNCTION_31_3@<X0>(uint64_t *a1@<X8>)
{
  result = *a1;
  v3 = *v1;
  return result;
}

uint64_t sub_266A7008C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ParticipantModel();
    OUTLINED_FUNCTION_12_5();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t ParticipantModel.encode(to:)(void *a1)
{
  v4 = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B2A48, &qword_266AC5F78);
  OUTLINED_FUNCTION_1_0(v6);
  v8 = v7;
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_26();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_32_3();
  v12 = sub_266A70978(*(v4 + 40));
  if (!v12)
  {
    goto LABEL_12;
  }

  v13 = v12;
  sub_266A6FFD8(v4 + 48, v41);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B1E00, &qword_266AC13A0);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_11:

LABEL_12:
    sub_266A829DC();
    swift_allocError();
    return swift_willThrow();
  }

  memcpy(v39, v40, sizeof(v39));
  v14 = *(v4 + 104);
  sub_266A70C04();
  if (!v15)
  {
LABEL_10:
    sub_266A72578(v39);
    goto LABEL_11;
  }

  v16 = v15;
  v34 = type metadata accessor for ParticipantModel();
  v17 = sub_266A70D6C(*(v4 + v34[12]));
  if (!v17)
  {

    goto LABEL_10;
  }

  v36 = v6;
  v18 = v16;
  v35 = v17;
  v19 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_266A70EA8();
  sub_266ABE2C4();
  sub_266A6F9C8(v4, v38, &qword_2800B1CC8, &unk_266AC0FD0);
  if (v38[3])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B1CD0, &unk_266AC12E0);
    v20 = v18;
    if (swift_dynamicCast())
    {
      v38[0] = v37;
      sub_266A70EFC();
      OUTLINED_FUNCTION_18_6();
      sub_266ABE0F4();
      if (v2)
      {
        v21 = OUTLINED_FUNCTION_12_7();
        v22(v21);

        sub_266A72578(v39);
LABEL_16:
      }
    }
  }

  else
  {
    sub_266A798F4(v38, &qword_2800B1CC8, &unk_266AC0FD0);
    v20 = v18;
  }

  v38[0] = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B29D0, &qword_266AC5F58);
  sub_266AB08CC();
  OUTLINED_FUNCTION_11_6();
  if (v2)
  {
    v24 = OUTLINED_FUNCTION_12_7();
    v25(v24);
    sub_266A72578(v39);

    goto LABEL_16;
  }

  memcpy(v38, v39, sizeof(v38));
  sub_266A71BAC();
  OUTLINED_FUNCTION_18_6();
  sub_266ABE154();
  sub_266A72578(v39);
  v26 = *(v4 + 88);
  v27 = *(v4 + 96);
  LOBYTE(v38[0]) = 4;
  OUTLINED_FUNCTION_18_6();
  sub_266ABE0D4();
  v38[0] = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B29E0, &qword_266AC5F60);
  sub_266AB0950();
  OUTLINED_FUNCTION_11_6();

  LOBYTE(v38[0]) = *(v4 + 112);
  sub_266A725CC();
  OUTLINED_FUNCTION_18_6();
  sub_266ABE0F4();
  v28 = *(v4 + 113);
  v29 = *(v4 + 114);
  LOBYTE(v38[0]) = 7;
  OUTLINED_FUNCTION_18_6();
  sub_266ABE104();
  v30 = v34[11];
  LOBYTE(v38[0]) = 8;
  sub_266ABD7A4();
  OUTLINED_FUNCTION_0_7();
  sub_266A6F7D0(v31, v32);
  OUTLINED_FUNCTION_18_6();
  sub_266ABE154();
  v38[0] = v35;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B2A00, &qword_266AC5F68);
  sub_266AB09D4();
  OUTLINED_FUNCTION_11_6();

  v38[0] = *(v4 + v34[13]);
  LOBYTE(v37) = 10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B2A10, &qword_266AC5F70);
  sub_266AB0A58();
  OUTLINED_FUNCTION_11_6();
  OUTLINED_FUNCTION_53(v34[14]);
  OUTLINED_FUNCTION_4_10(11);
  sub_266ABE0D4();
  v33 = v34[15];
  LOBYTE(v38[0]) = 12;
  OUTLINED_FUNCTION_18_6();
  sub_266ABE0F4();
  sub_266A6F9C8(v4 + v34[16], v38, &qword_2800B1CC8, &unk_266AC0FD0);
  if (v38[3])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B1CD0, &unk_266AC12E0);
    if (swift_dynamicCast())
    {
      v38[0] = v37;
      sub_266A70EFC();
      OUTLINED_FUNCTION_21_6();
      OUTLINED_FUNCTION_18_6();
      sub_266ABE0F4();
    }
  }

  else
  {
    sub_266A798F4(v38, &qword_2800B1CC8, &unk_266AC0FD0);
  }

  OUTLINED_FUNCTION_53(v34[17]);
  OUTLINED_FUNCTION_4_10(14);
  sub_266ABE0D4();
  OUTLINED_FUNCTION_53(v34[18]);
  OUTLINED_FUNCTION_4_10(15);
  sub_266ABE0D4();
  OUTLINED_FUNCTION_68(v34[20]);
  sub_266A72868();
  OUTLINED_FUNCTION_21_6();
  OUTLINED_FUNCTION_18_6();
  sub_266ABE0F4();
  OUTLINED_FUNCTION_68(v34[19]);
  OUTLINED_FUNCTION_21_6();
  OUTLINED_FUNCTION_18_6();
  sub_266ABE0F4();
  OUTLINED_FUNCTION_68(v34[21]);
  sub_266A72A18();
  OUTLINED_FUNCTION_21_6();
  OUTLINED_FUNCTION_18_6();
  sub_266ABE0F4();
  OUTLINED_FUNCTION_68(v34[22]);
  sub_266A72BC8();
  OUTLINED_FUNCTION_21_6();
  OUTLINED_FUNCTION_18_6();
  sub_266ABE0F4();
  OUTLINED_FUNCTION_53(v34[23]);
  OUTLINED_FUNCTION_4_10(20);
  sub_266ABE0D4();
  OUTLINED_FUNCTION_72((v4 + v34[24]));
  OUTLINED_FUNCTION_4_10(21);
  sub_266ABE0E4();
  OUTLINED_FUNCTION_72((v4 + v34[25]));
  OUTLINED_FUNCTION_4_10(22);
  sub_266ABE0E4();
  OUTLINED_FUNCTION_53(v34[26]);
  LOBYTE(v38[0]) = 23;
  OUTLINED_FUNCTION_18_6();
  sub_266ABE0D4();
  return (*(v8 + 8))(v3, v36);
}

uint64_t sub_266A70978(uint64_t a1)
{
  v2 = *(a1 + 16);
  v20 = MEMORY[0x277D84F90];
  v3 = OUTLINED_FUNCTION_3();
  sub_266A70BE4(v3, v4, v5);
  v6 = v20;
  v7 = a1 + 32;
  if (v2)
  {
    while (1)
    {
      sub_266A6FFD8(v7, v19);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B22E8, &unk_266AC5F40);
      if ((OUTLINED_FUNCTION_41_0() & 1) == 0)
      {
        break;
      }

      v8 = v17;
      v20 = v6;
      v9 = *(v6 + 16);
      if (v9 >= *(v6 + 24) >> 1)
      {
        OUTLINED_FUNCTION_30_3();
        v16 = v11;
        sub_266A70BE4(v12, v13, v14);
        v8 = v16;
        v6 = v20;
      }

      *(v6 + 16) = v9 + 1;
      v10 = v6 + 24 * v9;
      *(v10 + 32) = v8;
      *(v10 + 48) = v18;
      v7 += 40;
      if (!--v2)
      {
        return v6;
      }
    }

    return 0;
  }

  return v6;
}

uint64_t OUTLINED_FUNCTION_36_0@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + a1);
  v4 = *v3;
  v5 = v3[1];
}

char *sub_266A70AD0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B22C8, &qword_266AC3550);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[24 * v8] <= v12)
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 24 * v8);
  }

  return v10;
}

char *sub_266A70BE4(char *a1, int64_t a2, char a3)
{
  result = sub_266A70AD0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void sub_266A70C04()
{
  OUTLINED_FUNCTION_31();
  v1 = v0;
  v2 = *(v0 + 16);
  v18 = MEMORY[0x277D84F90];
  v3 = OUTLINED_FUNCTION_3();
  sub_266A6BD88(v3, v4, v5);
  v6 = v18;
  v7 = v1 + 32;
  if (v2)
  {
    while (1)
    {
      sub_266A6FFD8(v7, &v17);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B1E00, &qword_266AC13A0);
      if ((OUTLINED_FUNCTION_41_0() & 1) == 0)
      {
        break;
      }

      nullsub_1(__src);
      memcpy(__dst, __src, sizeof(__dst));
      v18 = v6;
      OUTLINED_FUNCTION_20_4();
      if (v8)
      {
        OUTLINED_FUNCTION_30_3();
        sub_266A6BD88(v11, v12, v13);
        v6 = v18;
      }

      memcpy(v14, __dst, sizeof(v14));
      v9 = OUTLINED_FUNCTION_36();
      memcpy(v9, v10, 0xA8uLL);
      v7 += 40;
      if (!--v2)
      {
        goto LABEL_8;
      }
    }

    sub_266A83CC4(v14);
    memcpy(__src, v14, sizeof(__src));
    memcpy(__dst, v14, sizeof(__dst));
    sub_266A6CBB4(__dst, &qword_2800B1E98, &qword_266AC13B0);
  }

LABEL_8:
  OUTLINED_FUNCTION_30();
}

uint64_t sub_266A70D6C(uint64_t a1)
{
  v4 = *(a1 + 16);
  v23 = MEMORY[0x277D84F90];
  v5 = OUTLINED_FUNCTION_3();
  sub_266A6AFB0(v5, v6, v7);
  v8 = v23;
  v9 = a1 + 32;
  if (v4)
  {
    while (1)
    {
      sub_266A6FFD8(v9, v22);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B1CD0, &unk_266AC12E0);
      if ((OUTLINED_FUNCTION_41_0() & 1) == 0)
      {
        break;
      }

      v23 = v8;
      OUTLINED_FUNCTION_20_4();
      if (v10)
      {
        OUTLINED_FUNCTION_30_3();
        sub_266A6AFB0(v12, v13, v14);
        v8 = v23;
      }

      *(v8 + 16) = v1;
      v11 = v8 + 8 * v2;
      *(v11 + 32) = v16;
      *(v11 + 34) = v17;
      *(v11 + 35) = v18;
      *(v11 + 36) = v19;
      *(v11 + 38) = v20;
      *(v11 + 39) = v21;
      v9 += 40;
      if (!--v4)
      {
        return v8;
      }
    }

    return 0;
  }

  return v8;
}

unint64_t sub_266A70EA8()
{
  result = qword_2800B29C0;
  if (!qword_2800B29C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800B29C0);
  }

  return result;
}

unint64_t sub_266A70EFC()
{
  result = qword_2800B2A78;
  if (!qword_2800B2A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800B2A78);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AdvertisementModel(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xF8 && *(a1 + 8))
    {
      v2 = *a1 + 247;
    }

    else
    {
      v3 = *(a1 + 6);
      v4 = v3 >= 9;
      v2 = v3 - 9;
      if (!v4)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

_BYTE *storeEnumTagSinglePayload for ParticipantModel.Keys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 23 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 23) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xE9)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xE8)
  {
    v6 = ((a2 - 233) >> 8) + 1;
    *result = a2 + 23;
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
        JUMPOUT(0x266A71058);
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
          *result = a2 + 23;
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ParticipantModel.Keys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xE9)
  {
    if (a2 + 23 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 23) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 24;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x18;
  v5 = v6 - 24;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t AdvertisementModel.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B1D08, &qword_266AC1000);
  v5 = OUTLINED_FUNCTION_1_0(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  v11 = v20 - v10;
  v12 = v1[1];
  v24 = v1[2];
  v25 = v12;
  v13 = v1[3];
  v22 = *(v1 + 2);
  v23 = v13;
  v14 = v1[6];
  v20[1] = v1[7];
  v21 = v14;
  v15 = a1[4];
  v16 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_266A71374();
  v17 = v4;
  sub_266ABE2C4();
  v34 = 0;
  sub_266ABE164();
  if (!v2)
  {
    v18 = v21;
    v33 = v25;
    v32 = 1;
    sub_266A714D8();
    OUTLINED_FUNCTION_2_0();
    sub_266ABE154();
    v31 = 2;
    OUTLINED_FUNCTION_2_0();
    sub_266ABE164();
    v30 = 3;
    OUTLINED_FUNCTION_2_0();
    sub_266ABE164();
    v29 = 4;
    OUTLINED_FUNCTION_2_0();
    sub_266ABE174();
    v28 = v18;
    v27 = 5;
    sub_266A7177C();
    OUTLINED_FUNCTION_2_0();
    sub_266ABE154();
    v26 = 6;
    OUTLINED_FUNCTION_2_0();
    sub_266ABE164();
  }

  return (*(v7 + 8))(v11, v17);
}

unint64_t sub_266A71374()
{
  result = qword_2800B1D10;
  if (!qword_2800B1D10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800B1D10);
  }

  return result;
}

uint64_t sub_266A713D0(char a1)
{
  result = 0x6E656469666E6F63;
  switch(a1)
  {
    case 1:
      result = 0x6C43656369766564;
      break;
    case 2:
      result = 0x7247656369766564;
      break;
    case 3:
      result = 0x7373656E646F6F67;
      break;
    case 4:
      result = 1752392040;
      break;
    case 5:
      result = 0x54746375646F7270;
      break;
    case 6:
      result = 0x6B61657242656974;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_266A714D8()
{
  result = qword_2800B1D18;
  if (!qword_2800B1D18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800B1D18);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for AdvertisementModel.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFA)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF9)
  {
    v6 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
        JUMPOUT(0x266A715F8);
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
          *result = a2 + 6;
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AdvertisementModel.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFA)
  {
    if (a2 + 6 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 6) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 7;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v5 = v6 - 7;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

unint64_t sub_266A716F8()
{
  result = qword_2800B1B30;
  if (!qword_2800B1B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800B1B30);
  }

  return result;
}

uint64_t sub_266A7174C@<X0>(uint64_t *a1@<X8>)
{
  result = AdvertisementDeviceClass.rawValue.getter();
  *a1 = result;
  return result;
}

unint64_t sub_266A7177C()
{
  result = qword_2800B1D20;
  if (!qword_2800B1D20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800B1D20);
  }

  return result;
}

unint64_t sub_266A71820()
{
  result = qword_2800B2860;
  if (!qword_2800B2860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800B2860);
  }

  return result;
}

uint64_t sub_266A71874@<X0>(uint64_t *a1@<X8>)
{
  result = AdvertisementProductType.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_266A718B0(char a1)
{
  result = 0x7369747265766461;
  switch(a1)
  {
    case 1:
      return 0x7374736F6F62;
    case 2:
      return 0x656369766564;
    case 3:
      return 0x6C43656369766564;
    case 4:
      return 0x6953746E65746E69;
    case 5:
      return 0x654479627261656ELL;
    case 6:
      return 0x7069636974726170;
    case 7:
      return 0xD000000000000010;
    case 8:
      return 0xD000000000000011;
    case 9:
      return 0xD000000000000012;
    case 10:
      return 0x616552706D757274;
    case 11:
      return 0xD000000000000011;
    case 12:
      return 0xD000000000000011;
    case 13:
      return 0xD000000000000013;
    case 14:
      return 0x4974736575716572;
    case 15:
      return 0x6449616463;
    case 16:
      v3 = 0x5372656D6974;
      goto LABEL_19;
    case 17:
      v3 = 0x536D72616C61;
      goto LABEL_19;
    case 18:
      v3 = 0x53616964656DLL;
LABEL_19:
      result = v3 & 0xFFFFFFFFFFFFLL | 0x6174000000000000;
      break;
    case 19:
      result = 0x5472656767697274;
      break;
    case 20:
      result = 0x656D614E6D6F6F72;
      break;
    case 21:
    case 22:
      result = 0xD00000000000001ELL;
      break;
    case 23:
      result = 25705;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_266A71BAC()
{
  result = qword_2800B1E88;
  if (!qword_2800B1E88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800B1E88);
  }

  return result;
}

void DeviceModel.encode(to:)()
{
  OUTLINED_FUNCTION_31_1();
  v40 = v1;
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B2048, &qword_266AC2100);
  OUTLINED_FUNCTION_1_0(v4);
  v6 = v5;
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_26();
  MEMORY[0x28223BE20](v9);
  v11 = v28 - v10;
  v12 = *v0;
  v13 = v0[1];
  v14 = v0[2];
  v38 = v0[3];
  v39 = v14;
  v15 = v0[4];
  v36 = v0[5];
  v37 = v15;
  v16 = v0[6];
  v34 = v0[7];
  v35 = v16;
  v17 = v0[8];
  v19 = v0[10];
  v18 = v0[11];
  v30 = v0[9];
  v31 = v19;
  v32 = v18;
  v33 = v17;
  v20 = v0[12];
  v21 = v0[13];
  v22 = v0[15];
  v28[8] = v0[14];
  v29 = v20;
  v28[5] = v22;
  v23 = v0[17];
  v28[6] = v0[16];
  v28[7] = v21;
  v28[3] = v23;
  v24 = v0[19];
  v28[4] = v0[18];
  v28[1] = v24;
  v28[2] = v0[20];
  v25 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  sub_266A71F88();
  sub_266ABE2C4();
  LOBYTE(v41) = 0;
  v26 = v40;
  sub_266ABE0D4();
  if (!v26)
  {
    v27 = v33;
    OUTLINED_FUNCTION_16_3(1);
    OUTLINED_FUNCTION_15_2();
    sub_266ABE0D4();
    OUTLINED_FUNCTION_16_3(2);
    OUTLINED_FUNCTION_15_2();
    sub_266ABE114();
    OUTLINED_FUNCTION_16_3(3);
    OUTLINED_FUNCTION_15_2();
    sub_266ABE0D4();
    v41 = v27;
    v42 = v30;
    v43 = v31;
    v44 = v32;
    sub_266A72130();

    sub_266ABE154();

    v41 = v29;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B1CF8, &qword_266AC20F0);
    sub_266A7250C(&qword_2800B2058);
    sub_266ABE154();
    OUTLINED_FUNCTION_16_3(6);
    OUTLINED_FUNCTION_15_2();
    sub_266ABE0D4();
    OUTLINED_FUNCTION_16_3(7);
    OUTLINED_FUNCTION_15_2();
    sub_266ABE0D4();
    OUTLINED_FUNCTION_16_3(8);
    OUTLINED_FUNCTION_15_2();
    sub_266ABE0D4();
    OUTLINED_FUNCTION_16_3(9);
    OUTLINED_FUNCTION_15_2();
    sub_266ABE0D4();
  }

  (*(v6 + 8))(v11, v4);
  OUTLINED_FUNCTION_30_1();
}

unint64_t sub_266A71F88()
{
  result = qword_2800B2030;
  if (!qword_2800B2030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800B2030);
  }

  return result;
}

uint64_t sub_266A71FF8(char a1)
{
  result = 0x6449736469;
  switch(a1)
  {
    case 1:
      result = 0x646C697562;
      break;
    case 2:
      result = 0x7275736F6C636E65;
      break;
    case 3:
      result = 0x656C61636F6CLL;
      break;
    case 4:
      result = 1701667182;
      break;
    case 5:
      result = 0x54746375646F7270;
      break;
    case 6:
      result = 0x6E61747369737361;
      break;
    case 7:
      result = 0x6449686365657073;
      break;
    case 8:
    case 9:
      result = 0x656D614E6D6F6F72;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_266A72130()
{
  result = qword_2800B2050;
  if (!qword_2800B2050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800B2050);
  }

  return result;
}

_BYTE *sub_266A72184(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 9 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 9) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF7)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF6)
  {
    v6 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
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
        JUMPOUT(0x266A72250);
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
          *result = a2 + 9;
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DeviceClass(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF7)
  {
    if (a2 + 9 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 9) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 10;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xA;
  v5 = v6 - 10;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

void DeviceName.encode(to:)()
{
  OUTLINED_FUNCTION_31_1();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B1FF0, &qword_266AC20C0);
  OUTLINED_FUNCTION_1_0(v4);
  v17 = v5;
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_26();
  MEMORY[0x28223BE20](v8);
  v9 = *v0;
  v10 = v0[1];
  v15 = v0[3];
  v16 = v0[2];
  v11 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  sub_266A72470();
  sub_266ABE2C4();
  sub_266ABE0D4();
  if (!v1)
  {
    sub_266ABE114();
  }

  v12 = *(v17 + 8);
  v13 = OUTLINED_FUNCTION_5();
  v14(v13);
  OUTLINED_FUNCTION_30_1();
}

unint64_t sub_266A72470()
{
  result = qword_2800B1FF8;
  if (!qword_2800B1FF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800B1FF8);
  }

  return result;
}

uint64_t sub_266A724CC(char a1)
{
  if (a1)
  {
    return 0x6B6361626C6C6166;
  }

  else
  {
    return 0x766F725072657375;
  }
}

uint64_t sub_266A7250C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2800B1CF8, &qword_266AC20F0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_266A725CC()
{
  result = qword_2800B2A60;
  if (!qword_2800B2A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800B2A60);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Participation(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFD)
  {
    if (a2 + 3 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 3) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 4;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v5 = v6 - 4;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

unint64_t sub_266A726F8()
{
  result = qword_2800B2220;
  if (!qword_2800B2220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800B2220);
  }

  return result;
}

uint64_t sub_266A7274C@<X0>(uint64_t *a1@<X8>)
{
  result = Participation.rawValue.getter();
  *a1 = result;
  return result;
}

unint64_t sub_266A727CC()
{
  result = qword_2800B2810;
  if (!qword_2800B2810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800B2810);
  }

  return result;
}

uint64_t sub_266A72820@<X0>(uint64_t *a1@<X8>)
{
  result = TrumpReason.rawValue.getter();
  *a1 = result;
  return result;
}

unint64_t sub_266A72868()
{
  result = qword_2800B2A90;
  if (!qword_2800B2A90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800B2A90);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DataCollectionGroup(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFE)
  {
    if (a2 + 2 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 2) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 3;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v5 = v6 - 3;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_266A72994@<X0>(uint64_t *a1@<X8>)
{
  result = AlarmTimerState.rawValue.getter();
  *a1 = result;
  return result;
}

unint64_t sub_266A729BC()
{
  result = qword_2800B1EF8;
  if (!qword_2800B1EF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800B1EF8);
  }

  return result;
}

unint64_t sub_266A72A18()
{
  result = qword_2800B2A98;
  if (!qword_2800B2A98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800B2A98);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MediaState(unsigned __int8 *a1, unsigned int a2)
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

uint64_t sub_266A72B44@<X0>(uint64_t *a1@<X8>)
{
  result = MediaState.rawValue.getter();
  *a1 = result;
  return result;
}

unint64_t sub_266A72B6C()
{
  result = qword_2800B1EE0;
  if (!qword_2800B1EE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800B1EE0);
  }

  return result;
}

unint64_t sub_266A72BC8()
{
  result = qword_2800B2AA0;
  if (!qword_2800B2AA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800B2AA0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TriggerType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF8)
  {
    if (a2 + 8 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 8) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 9;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v5 = v6 - 9;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_266A72CF4@<X0>(uint64_t *a1@<X8>)
{
  result = TriggerType.rawValue.getter();
  *a1 = result;
  return result;
}

unint64_t sub_266A72D1C()
{
  result = qword_2800B1C08;
  if (!qword_2800B1C08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800B1C08);
  }

  return result;
}

double sub_266A72DD4@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(a1 + 16))
  {
    sub_266A6FFD8(a1 + 32, a2);
  }

  else
  {
    *(a2 + 32) = 0;
    result = 0.0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  return result;
}

uint64_t sub_266A72E34@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_266A74A64();
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_266A72E64@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_266A74C40();
  *a2 = result;
  return result;
}

uint64_t sub_266A72E94()
{
  MEMORY[0x26D5E92F0](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_266A72ECC()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_266A72F04()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_266A730B8()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[7];

  v4 = v0[9];

  v5 = v0[11];

  v6 = v0[13];

  v7 = v0[14];

  v8 = v0[16];

  v9 = v0[18];

  v10 = v0[20];

  v11 = v0[22];

  return MEMORY[0x2821FE8E8](v0, 184, 7);
}

uint64_t sub_266A7315C()
{
  if (*(v0 + 64))
  {
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 40));
  }

  v1 = *(v0 + 104);
  if (v1 != 255)
  {
    sub_266A8244C(*(v0 + 88), *(v0 + 96), v1);
  }

  return MEMORY[0x2821FE8E8](v0, 106, 7);
}

uint64_t sub_266A731B0()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[7];

  v4 = v0[9];

  v5 = v0[11];

  v6 = v0[13];

  v7 = v0[14];

  v8 = v0[16];

  v9 = v0[18];

  v10 = v0[20];

  v11 = v0[22];

  return MEMORY[0x2821FE8E8](v0, 184, 7);
}

uint64_t sub_266A732B4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_266A6C04C();
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_266A733C4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_266A733A0();
  *a1 = result & 1;
  return result;
}

void *sub_266A73528@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  result = sub_266A8B434();
  *a2 = result;
  return result;
}

uint64_t sub_266A73558@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_266A8B56C();
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_266A73588()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_266A735C0()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

char *sub_266A73860(char *__src, uint64_t a2, char *__dst)
{
  if (__dst != __src || &__src[40 * a2] <= __dst)
  {
    return memmove(__dst, __src, 40 * a2);
  }

  return __src;
}

uint64_t sub_266A738EC()
{
  v1 = v0[3];

  v2 = v0[4];

  v3 = v0[5];

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 6);

  return MEMORY[0x2821FE8E8](v0, 88, 7);
}

uint64_t sub_266A7393C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_266A9D310();
  *a2 = result;
  return result;
}

uint64_t sub_266A73AD8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_266AA1BF0(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_266A73EE4()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[7];

  v4 = v0[9];

  v5 = v0[11];

  v6 = v0[13];

  v7 = v0[14];

  v8 = v0[16];

  v9 = v0[18];

  v10 = v0[20];

  v11 = v0[22];

  return MEMORY[0x2821FE8E8](v0, 184, 7);
}

uint64_t sub_266A73F6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 40);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_266ABD7A4();
    if (*(*(v8 - 8) + 84) == a2)
    {
      v9 = v8;
      v10 = *(a3 + 44);
    }

    else
    {
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B1DB8, "h9");
      v10 = *(a3 + 60);
    }

    return __swift_getEnumTagSinglePayload(a1 + v10, a2, v9);
  }
}

uint64_t sub_266A74044(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 40) = (a2 - 1);
  }

  else
  {
    v8 = sub_266ABD7A4();
    if (*(*(v8 - 8) + 84) == a3)
    {
      v9 = v8;
      v10 = *(a4 + 44);
    }

    else
    {
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B1DB8, "h9");
      v10 = *(a4 + 60);
    }

    return __swift_storeEnumTagSinglePayload(v5 + v10, a2, a2, v9);
  }

  return result;
}

uint64_t sub_266A74180()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[7];

  v4 = v0[9];

  v5 = v0[11];

  v6 = v0[13];

  v7 = v0[14];

  v8 = v0[16];

  v9 = v0[18];

  v10 = v0[20];

  v11 = v0[22];

  OUTLINED_FUNCTION_14_7();

  return MEMORY[0x2821FE8E8](v12, v13, v14);
}

uint64_t sub_266A74204()
{
  v1 = v0[3];

  v2 = v0[4];

  v3 = v0[5];

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 6);
  OUTLINED_FUNCTION_13_5();

  return MEMORY[0x2821FE8E8](v4, v5, v6);
}

uint64_t sub_266A74250()
{
  if (*(v0 + 64))
  {
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 40));
  }

  v1 = *(v0 + 104);
  if (v1 != 255)
  {
    sub_266A8244C(*(v0 + 88), *(v0 + 96), v1);
  }

  return MEMORY[0x2821FE8E8](v0, 106, 7);
}

unint64_t sub_266A74394()
{
  result = qword_2800B1B18;
  if (!qword_2800B1B18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800B1B18);
  }

  return result;
}

unint64_t sub_266A7446C()
{
  result = qword_2800B1B20;
  if (!qword_2800B1B20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2800B1B28, &qword_266AC0C80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800B1B20);
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

uint64_t getEnumTagSinglePayload for AdvertisementDeviceClass(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF6)
  {
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

    v5 = (*a1 | (v4 << 8)) - 11;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xB;
  v5 = v6 - 11;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for AdvertisementDeviceClass(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xF6)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF5)
  {
    v6 = ((a2 - 246) >> 8) + 1;
    *result = a2 + 10;
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
          *result = a2 + 10;
        }

        break;
    }
  }

  return result;
}

SiriCrossDeviceArbitrationFeedback::TriggerType_optional __swiftcall TriggerType.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 9;
  if (rawValue < 9)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

unint64_t sub_266A746A4()
{
  result = qword_2800B1C00;
  if (!qword_2800B1C00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800B1C00);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for TriggerType(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF8)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF7)
  {
    v6 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
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
          *result = a2 + 8;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_266A7483C(uint64_t a1, uint64_t *a2)
{
  sub_266A6F918(a1, v5, &qword_2800B1C18, &qword_266AC0EC0);
  v3 = *a2;
  return sub_266A74930(v5);
}

uint64_t sub_266A74888@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC34SiriCrossDeviceArbitrationFeedback27UserNotificationServiceImpl_notificationCenter;
  OUTLINED_FUNCTION_18();
  return sub_266A6F918(v1 + v3, a1, &qword_2800B1C18, &qword_266AC0EC0);
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_266A74930(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC34SiriCrossDeviceArbitrationFeedback27UserNotificationServiceImpl_notificationCenter;
  OUTLINED_FUNCTION_17();
  sub_266A791A4(a1, v1 + v3, &qword_2800B1C18, &qword_266AC0EC0);
  return swift_endAccess();
}

void *__swift_coroFrameAllocStub(size_t a1)
{
  if (MEMORY[0x277D84FD8])
  {
    return swift_coroFrameAlloc();
  }

  return malloc(a1);
}

uint64_t sub_266A74A28(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  v5 = swift_unknownObjectRetain();
  return sub_266A74AAC(v5, v3);
}

uint64_t sub_266A74A64()
{
  v1 = v0 + OBJC_IVAR____TtC34SiriCrossDeviceArbitrationFeedback27UserNotificationServiceImpl_delegate;
  OUTLINED_FUNCTION_18();
  result = swift_unknownObjectWeakLoadStrong();
  v3 = *(v1 + 8);
  return result;
}

uint64_t sub_266A74AAC(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC34SiriCrossDeviceArbitrationFeedback27UserNotificationServiceImpl_delegate;
  OUTLINED_FUNCTION_33_0();
  *(v4 + 8) = a2;
  OUTLINED_FUNCTION_9();
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_266A74B0C(void *a1))(uint64_t a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x38uLL);
  *a1 = v3;
  v4 = OBJC_IVAR____TtC34SiriCrossDeviceArbitrationFeedback27UserNotificationServiceImpl_delegate;
  v3[5] = v1;
  v3[6] = v4;
  v5 = v1 + v4;
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_17();
  Strong = swift_unknownObjectWeakLoadStrong();
  v7 = *(v5 + 8);
  v3[3] = Strong;
  v3[4] = v7;
  return sub_266A74B8C;
}

void sub_266A74B8C(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*a1 + 24);
  *(*(*a1 + 40) + *(*a1 + 48) + 8) = *(*a1 + 32);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    v5 = v3[3];
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

uint64_t sub_266A74C14(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = swift_unknownObjectRetain();
  return sub_266A74C80(v4);
}

uint64_t sub_266A74C40()
{
  v1 = OBJC_IVAR____TtC34SiriCrossDeviceArbitrationFeedback27UserNotificationServiceImpl_globals;
  OUTLINED_FUNCTION_18();
  v2 = *(v0 + v1);
  return swift_unknownObjectRetain();
}

uint64_t sub_266A74C80(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC34SiriCrossDeviceArbitrationFeedback27UserNotificationServiceImpl_globals;
  OUTLINED_FUNCTION_33_0();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  return swift_unknownObjectRelease();
}

char *sub_266A74D28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = &v4[OBJC_IVAR____TtC34SiriCrossDeviceArbitrationFeedback27UserNotificationServiceImpl_notificationCenter];
  *v8 = 0u;
  *(v8 + 1) = 0u;
  *(v8 + 4) = 0;
  *&v4[OBJC_IVAR____TtC34SiriCrossDeviceArbitrationFeedback27UserNotificationServiceImpl_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v4[OBJC_IVAR____TtC34SiriCrossDeviceArbitrationFeedback27UserNotificationServiceImpl_globals] = 0;
  v9 = &v4[OBJC_IVAR____TtC34SiriCrossDeviceArbitrationFeedback27UserNotificationServiceImpl_currentRequest];
  *v9 = 0u;
  *(v9 + 1) = 0u;
  *(v9 + 25) = 0u;
  *&v4[OBJC_IVAR____TtC34SiriCrossDeviceArbitrationFeedback27UserNotificationServiceImpl_timer] = 0;
  v20.receiver = v4;
  v20.super_class = type metadata accessor for UserNotificationServiceImpl();
  v10 = objc_msgSendSuper2(&v20, sel_init);
  v11 = &v10[OBJC_IVAR____TtC34SiriCrossDeviceArbitrationFeedback27UserNotificationServiceImpl_delegate];
  OUTLINED_FUNCTION_33_0();
  *(v11 + 1) = a3;
  swift_unknownObjectWeakAssign();
  v12 = &v10[OBJC_IVAR____TtC34SiriCrossDeviceArbitrationFeedback27UserNotificationServiceImpl_notificationCenter];
  OUTLINED_FUNCTION_17();
  sub_266A795F4(a1, v12);
  v13 = *(v12 + 24);
  if (v13)
  {
    v14 = *(v12 + 32);
    __swift_mutable_project_boxed_opaque_existential_1(v12, *(v12 + 24));
    v15 = *(v14 + 24);
    v16 = v10;
    v15(v10, &protocol witness table for UserNotificationServiceImpl, v13, v14);
  }

  swift_endAccess();
  swift_unknownObjectRelease();
  sub_266A798F4(a1, &qword_2800B1C18, &qword_266AC0EC0);
  v17 = OBJC_IVAR____TtC34SiriCrossDeviceArbitrationFeedback27UserNotificationServiceImpl_globals;
  OUTLINED_FUNCTION_33_0();
  v18 = *&v10[v17];
  *&v10[v17] = a4;
  swift_unknownObjectRelease();
  return v10;
}

uint64_t sub_266A74ECC(void *a1)
{
  v2 = v1;
  if (qword_280BB6C30 != -1)
  {
    OUTLINED_FUNCTION_0();
    swift_once();
  }

  v4 = sub_266ABD8D4();
  __swift_project_value_buffer(v4, qword_280BB7028);
  v5 = sub_266ABD8C4();
  v6 = sub_266ABDD54();
  if (OUTLINED_FUNCTION_13(v6))
  {
    v7 = OUTLINED_FUNCTION_25();
    v8 = OUTLINED_FUNCTION_23();
    *&v60 = v8;
    *v7 = 136315138;
    *(v7 + 4) = sub_266A66D34(0x293A5F28646461, 0xE700000000000000, &v60);
    OUTLINED_FUNCTION_5_0();
    _os_log_impl(v9, v10, v11, v12, v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v8);
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_7();
  }

  v14 = OBJC_IVAR____TtC34SiriCrossDeviceArbitrationFeedback27UserNotificationServiceImpl_currentRequest;
  OUTLINED_FUNCTION_18();
  sub_266A6F918(v2 + v14, &v60, &qword_2800B1C38, &qword_266AC0EC8);
  if (!v61)
  {
    sub_266A798F4(&v60, &qword_2800B1C38, &qword_266AC0EC8);
    sub_266A767EC(a1, &v60);
    if (!v61)
    {
      return sub_266A798F4(&v60, &qword_2800B1C40, &unk_266AC0ED0);
    }

    sub_266A6DBC4(&v60, v63);
    v25 = sub_266ABD8C4();
    v26 = sub_266ABDD54();
    if (OUTLINED_FUNCTION_13(v26))
    {
      *OUTLINED_FUNCTION_19() = 0;
      OUTLINED_FUNCTION_5_0();
      _os_log_impl(v27, v28, v29, v30, v31, 2u);
      OUTLINED_FUNCTION_7();
    }

    sub_266A76A2C(v63, a1);
    sub_266A76C60(a1, v63);
    sub_266A6FFD8(v63, &v60);
    OUTLINED_FUNCTION_15();
    OUTLINED_FUNCTION_17();
    sub_266A791A4(&v60, v2 + v14, &qword_2800B1C38, &qword_266AC0EC8);
    swift_endAccess();
    v32 = sub_266ABD8C4();
    v33 = sub_266ABDD54();
    if (OUTLINED_FUNCTION_4_0(v33))
    {
      v34 = OUTLINED_FUNCTION_24();
      *v34 = 67109120;
      v34[1] = a1;
      OUTLINED_FUNCTION_3_0();
      v40 = 8;
LABEL_19:
      _os_log_impl(v35, v36, v37, v38, v39, v40);
      OUTLINED_FUNCTION_6();
    }

LABEL_20:

    return __swift_destroy_boxed_opaque_existential_1Tm(v63);
  }

  sub_266A6FFD8(&v60, v62);
  sub_266A798F4(&v60, &qword_2800B1C38, &qword_266AC0EC8);
  sub_266A6DBC4(v62, v63);
  v15 = sub_266A75418(a1, v63);
  sub_266A72DD4(v15, &v60);
  if (!v61)
  {

    sub_266A798F4(&v60, &qword_2800B1C40, &unk_266AC0ED0);
    v32 = sub_266ABD8C4();
    v41 = sub_266ABDD64();
    if (OUTLINED_FUNCTION_4_0(v41))
    {
      v42 = OUTLINED_FUNCTION_19();
      OUTLINED_FUNCTION_20(v42);
      OUTLINED_FUNCTION_3_0();
      v40 = 2;
      goto LABEL_19;
    }

    goto LABEL_20;
  }

  sub_266A6DBC4(&v60, v62);
  v16 = *(v15 + 16);

  if (!v16)
  {
LABEL_27:
    __swift_destroy_boxed_opaque_existential_1Tm(v62);
    return __swift_destroy_boxed_opaque_existential_1Tm(v63);
  }

  if (v16 == 1)
  {
    sub_266A76C60(a1, v62);
    sub_266A6FFD8(v62, &v60);
    OUTLINED_FUNCTION_15();
    OUTLINED_FUNCTION_17();
    sub_266A791A4(&v60, v2 + v14, &qword_2800B1C38, &qword_266AC0EC8);
    swift_endAccess();
    v17 = sub_266ABD8C4();
    v18 = sub_266ABDD54();
    if (OUTLINED_FUNCTION_4_0(v18))
    {
      v19 = OUTLINED_FUNCTION_24();
      *v19 = 67109120;
      v19[1] = a1;
      OUTLINED_FUNCTION_3_0();
      _os_log_impl(v20, v21, v22, v23, v24, 8u);
      OUTLINED_FUNCTION_6();
    }

    goto LABEL_27;
  }

  sub_266A767EC(a1, &v60);
  if (v61)
  {
    sub_266A6DBC4(&v60, v59);
    v43 = sub_266ABD8C4();
    v44 = sub_266ABDD54();
    if (OUTLINED_FUNCTION_13(v44))
    {
      *OUTLINED_FUNCTION_19() = 0;
      OUTLINED_FUNCTION_5_0();
      _os_log_impl(v45, v46, v47, v48, v49, 2u);
      OUTLINED_FUNCTION_7();
    }

    sub_266A76A2C(v59, a1);
    sub_266A76C60(a1, v59);
    sub_266A6FFD8(v59, &v60);
    OUTLINED_FUNCTION_15();
    OUTLINED_FUNCTION_17();
    sub_266A791A4(&v60, v2 + v14, &qword_2800B1C38, &qword_266AC0EC8);
    swift_endAccess();
    v50 = sub_266ABD8C4();
    v51 = sub_266ABDD54();
    if (OUTLINED_FUNCTION_4_0(v51))
    {
      v52 = OUTLINED_FUNCTION_24();
      *v52 = 67109120;
      v52[1] = a1;
      OUTLINED_FUNCTION_3_0();
      _os_log_impl(v53, v54, v55, v56, v57, 8u);
      OUTLINED_FUNCTION_6();
    }

    __swift_destroy_boxed_opaque_existential_1Tm(v59);
    goto LABEL_27;
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v62);
  __swift_destroy_boxed_opaque_existential_1Tm(v63);
  return sub_266A798F4(&v60, &qword_2800B1C40, &unk_266AC0ED0);
}

uint64_t sub_266A75418(void *a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B1CB0, &qword_266AC0FB8);
  v6 = OUTLINED_FUNCTION_21(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v73 - v9;
  v11 = type metadata accessor for ParticipantModel();
  v12 = OUTLINED_FUNCTION_1_0(v11);
  v78 = v13;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_2();
  v18 = v17 - v16;
  v19 = *(a2 + 24);
  v20 = *(a2 + 32);
  v21 = OUTLINED_FUNCTION_9();
  __swift_project_boxed_opaque_existential_1(v21, v22);
  v23 = *(v20 + 32);
  v24 = OUTLINED_FUNCTION_29();
  v26 = v25(v24, v20);
  v89 = v26;
  v27 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v28 = *(v27 + 72);
  v29 = OUTLINED_FUNCTION_29();
  v30(v29, v27);
  v79 = v18;
  if (v86 != 3 || (v31 = a1[4], __swift_project_boxed_opaque_existential_1(a1, a1[3]), v32 = *(v31 + 80), v33 = OUTLINED_FUNCTION_29(), v35 = v34(v33, v31), (v35 & 0x100) != 0))
  {
LABEL_35:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B1CB8, &unk_266AC0FC0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_266AC0EB0;
    sub_266A6FFD8(a1, inited + 32);
    sub_266A7F950(inited);
    v77 = v89;
    v57 = *(v89 + 16);
    if (v57)
    {
      v58 = v77 + 32;
      v59 = MEMORY[0x277D84F90];
      do
      {
        sub_266A6FFD8(v58, &v86);
        sub_266A6DBC4(&v86, &v84);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B1CC0, &qword_266AC1290);
        v60 = swift_dynamicCast();
        __swift_storeEnumTagSinglePayload(v10, v60 ^ 1u, 1, v11);
        if (__swift_getEnumTagSinglePayload(v10, 1, v11) == 1)
        {
          sub_266A798F4(v10, &qword_2800B1CB0, &qword_266AC0FB8);
        }

        else
        {
          sub_266A7977C(v10, v18);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v65 = *(v59 + 16);
            sub_266A98500();
            v59 = v66;
          }

          v61 = *(v59 + 16);
          if (v61 >= *(v59 + 24) >> 1)
          {
            sub_266A98500();
            v59 = v67;
          }

          *(v59 + 16) = v61 + 1;
          OUTLINED_FUNCTION_26_1(&v90);
          v64 = v59 + v62 + *(v63 + 72) * v61;
          v18 = v79;
          sub_266A7977C(v79, v64);
        }

        v58 += 40;
        --v57;
      }

      while (v57);
    }

    else
    {

      v59 = MEMORY[0x277D84F90];
    }

    *&v86 = v59;
    sub_266AAA5AC();
    sub_266AAA8D0();
    v69 = v68;
    sub_266A94558();
    *&v84 = v70;
    sub_266A7F950(v69);
    sub_266AAAECC();

    OUTLINED_FUNCTION_9();
    sub_266AAB528();
    v72 = v71;

    return v72;
  }

  v73 = &v73;
  MEMORY[0x28223BE20](v35);
  *(&v73 - 2) = a1;
  result = sub_266A796B4(sub_266A797E0, (&v73 - 4), v26);
  if (v37)
  {
    v38 = *(v26 + 16);
    v39 = v38;
LABEL_34:
    sub_266A79800(v38, v39);
    goto LABEL_35;
  }

  v38 = result;
  v39 = result + 1;
  if (__OFADD__(result, 1))
  {
    goto LABEL_54;
  }

  v40 = 40 * result + 72;
  v75 = a1;
  while (1)
  {
    v41 = *(v26 + 16);
    if (v39 == v41)
    {
      break;
    }

    if (v39 >= v41)
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
      goto LABEL_53;
    }

    sub_266A6FFD8(v26 + v40, &v86);
    v43 = v87;
    v42 = v88;
    __swift_project_boxed_opaque_existential_1(&v86, v87);
    (*(v42 + 16))(&v84, v43, v42);
    if (v85)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B1CD0, &unk_266AC12E0);
      if (swift_dynamicCast())
      {
        v2.i32[0] = v80;
        v74 = v81;
        v76 = v82;
        LODWORD(v77) = v83;
        v44 = a1;
        v46 = a1[3];
        v45 = a1[4];
        __swift_project_boxed_opaque_existential_1(v44, v46);
        (*(v45 + 16))(&v84, v46, v45);
        if (!v85)
        {
          sub_266A798F4(&v84, &qword_2800B1CC8, &unk_266AC0FD0);
LABEL_21:
          a1 = v75;
          goto LABEL_22;
        }

        if ((swift_dynamicCast() & 1) == 0)
        {
          goto LABEL_21;
        }

        v47.i32[0] = v80;
        a1 = v75;
        if ((vminv_u16(vceq_s16((vmovl_u8(v2).u64[0] & 0xFF00FF00FF00FFLL), (vmovl_u8(v47).u64[0] & 0xFF00FF00FF00FFLL))) & 1) != 0 && v76 == v82 && v77 == v83 && v74 == v81)
        {
          v48 = v88;
          __swift_project_boxed_opaque_existential_1(&v86, v87);
          v49 = *(v48 + 80);
          v50 = OUTLINED_FUNCTION_22();
          a1 = v75;
          v52 = v51(v50, v48);
          result = __swift_destroy_boxed_opaque_existential_1Tm(&v86);
          if ((v52 & 0x100) != 0)
          {
            goto LABEL_32;
          }

          goto LABEL_23;
        }
      }
    }

    else
    {
      sub_266A798F4(&v84, &qword_2800B1CC8, &unk_266AC0FD0);
    }

LABEL_22:
    result = __swift_destroy_boxed_opaque_existential_1Tm(&v86);
LABEL_23:
    if (v39 != v38)
    {
      if (v38 < 0)
      {
        goto LABEL_49;
      }

      v53 = *(v26 + 16);
      if (v38 >= v53)
      {
        goto LABEL_50;
      }

      result = sub_266A6FFD8(v26 + 32 + 40 * v38, &v86);
      if (v39 >= v53)
      {
        goto LABEL_51;
      }

      sub_266A6FFD8(v26 + v40, &v84);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_266AB10A8(v26);
        v26 = v55;
      }

      v54 = v26 + 40 * v38;
      __swift_destroy_boxed_opaque_existential_1Tm((v54 + 32));
      result = sub_266A6DBC4(&v84, v54 + 32);
      if (v39 >= *(v26 + 16))
      {
        goto LABEL_52;
      }

      __swift_destroy_boxed_opaque_existential_1Tm((v26 + v40));
      result = sub_266A6DBC4(&v86, v26 + v40);
      v89 = v26;
    }

    ++v38;
LABEL_32:
    ++v39;
    v40 += 40;
  }

  v18 = v79;
  if (v39 >= v38)
  {
    goto LABEL_34;
  }

LABEL_53:
  __break(1u);
LABEL_54:
  __break(1u);
  return result;
}

uint64_t sub_266A75BA8()
{
  v1 = v0;
  if (qword_280BB6C30 != -1)
  {
    OUTLINED_FUNCTION_0();
    swift_once();
  }

  v2 = sub_266ABD8D4();
  __swift_project_value_buffer(v2, qword_280BB7028);
  v3 = sub_266ABD8C4();
  v4 = sub_266ABDD54();
  if (OUTLINED_FUNCTION_14_0(v4))
  {
    v5 = OUTLINED_FUNCTION_25();
    v6 = OUTLINED_FUNCTION_23();
    *&v23[0] = v6;
    *v5 = 136315138;
    *(v5 + 4) = sub_266A66D34(0xD00000000000001ALL, 0x8000000266ABFA80, v23);
    _os_log_impl(&dword_266A65000, v3, v4, "#feedback UserNotificationService - %s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v6);
    OUTLINED_FUNCTION_7();
    OUTLINED_FUNCTION_8();
  }

  v7 = OBJC_IVAR____TtC34SiriCrossDeviceArbitrationFeedback27UserNotificationServiceImpl_currentRequest;
  OUTLINED_FUNCTION_18();
  sub_266A6F918(v1 + v7, v23, &qword_2800B1C38, &qword_266AC0EC8);
  if (*(&v23[1] + 1))
  {
    sub_266A6FFD8(v23, &v24);
    sub_266A798F4(v23, &qword_2800B1C38, &qword_266AC0EC8);
    sub_266A6DBC4(&v24, v26);
    sub_266A6F918(v1 + v7, v23, &qword_2800B1C38, &qword_266AC0EC8);
    if (*(&v23[1] + 1))
    {
      v8 = BYTE8(v23[2]);
      sub_266A798F4(v23, &qword_2800B1C38, &qword_266AC0EC8);
      v9 = v27;
      v10 = OUTLINED_FUNCTION_12(v26);
      v11 = Request.winningParticipants.getter(v10, v9);
      sub_266A72DD4(v11, &v24);

      if (v25)
      {
        sub_266A6DBC4(&v24, v23);
        if (!(v8 & 1 | ((sub_266A75F08(v23) & 1) == 0)))
        {
          v12 = v27;
          v13 = OUTLINED_FUNCTION_12(v26);
          if (!Request.isDirectTrigger.getter(v13, v12))
          {
            sub_266A6FFD8(v23, &v24);
            sub_266A760F0();
            v15 = v14;
            sub_266A798F4(&v24, &qword_2800B1C48, &unk_266AC1310);
            sub_266A76E54();
            v16 = sub_266ABD8C4();
            v17 = sub_266ABDD54();
            if (OUTLINED_FUNCTION_14_0(v17))
            {
              v18 = OUTLINED_FUNCTION_19();
              *v18 = 0;
              _os_log_impl(&dword_266A65000, v16, v17, "#feedback UserNotificationService - notification sent for local winner at assistant dismissal", v18, 2u);
              OUTLINED_FUNCTION_8();
            }
          }
        }

        __swift_destroy_boxed_opaque_existential_1Tm(v23);
        goto LABEL_18;
      }

      v19 = &qword_2800B1C48;
      v20 = &unk_266AC1310;
      v21 = &v24;
    }

    else
    {
      v19 = &qword_2800B1C38;
      v20 = &qword_266AC0EC8;
      v21 = v23;
    }

    sub_266A798F4(v21, v19, v20);
LABEL_18:
    __swift_destroy_boxed_opaque_existential_1Tm(v26);
    goto LABEL_19;
  }

  sub_266A798F4(v23, &qword_2800B1C38, &qword_266AC0EC8);
LABEL_19:
  memset(v23, 0, 41);
  OUTLINED_FUNCTION_17();
  sub_266A791A4(v23, v1 + v7, &qword_2800B1C38, &qword_266AC0EC8);
  return swift_endAccess();
}

uint64_t sub_266A75F08(void *a1)
{
  v2 = v1;
  v3 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v4 = *(v3 + 32);
  v5 = OUTLINED_FUNCTION_10_0();
  v4(v5);
  v6 = v28;
  v7 = v29;
  __swift_project_boxed_opaque_existential_1(v27, v28);
  (*(v7 + 168))(v6, v7);
  if (v8)
  {

    __swift_destroy_boxed_opaque_existential_1Tm(v27);
    v9 = OUTLINED_FUNCTION_10_0();
    v4(v9);
    v10 = v29;
    __swift_project_boxed_opaque_existential_1(v27, v28);
    v11 = *(v10 + 168);
    v12 = OUTLINED_FUNCTION_10_0();
    v14 = v13(v12);
    v16 = v15;
    v17 = OBJC_IVAR____TtC34SiriCrossDeviceArbitrationFeedback27UserNotificationServiceImpl_globals;
    OUTLINED_FUNCTION_18();
    v18 = *(v2 + v17);
    if (v18 && (v19 = [v18 localDeviceAssistantIdentifier]) != 0)
    {
      v20 = v19;
      v21 = sub_266ABDA84();
      v23 = v22;

      if (!v16)
      {
LABEL_5:
        if (!v23)
        {
          v24 = 1;
          goto LABEL_18;
        }

        v24 = 0;
LABEL_17:

LABEL_18:
        __swift_destroy_boxed_opaque_existential_1Tm(v27);
        return v24 & 1;
      }
    }

    else
    {
      v21 = 0;
      v23 = 0;
      if (!v16)
      {
        goto LABEL_5;
      }
    }

    if (v23)
    {
      if (v14 == v21 && v16 == v23)
      {

        v24 = 1;
      }

      else
      {
        v24 = sub_266ABE1C4();
      }
    }

    else
    {
      v24 = 0;
    }

    goto LABEL_17;
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v27);
  v24 = 0;
  return v24 & 1;
}

void sub_266A760F0()
{
  OUTLINED_FUNCTION_31();
  v1 = v0;
  v3 = v2;
  v61 = sub_266ABD7F4();
  v4 = OUTLINED_FUNCTION_1_0(v61);
  v59 = v5;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_2();
  v57 = v9 - v8;
  v60 = sub_266ABD7A4();
  v10 = OUTLINED_FUNCTION_1_0(v60);
  v58 = v11;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_2();
  v16 = v15 - v14;
  v17 = sub_266ABD814();
  v18 = OUTLINED_FUNCTION_21(v17);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_2();
  v21 = sub_266ABDA64();
  v22 = OUTLINED_FUNCTION_21(v21);
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_2();
  v25 = sub_266ABDA44();
  v26 = OUTLINED_FUNCTION_21(v25);
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_2();
  sub_266A6F918(v1, v65, &qword_2800B1C48, &unk_266AC1310);
  if (v66)
  {
    v29 = v67;
    __swift_project_boxed_opaque_existential_1(v65, v66);
    v30 = *(v29 + 32);
    v31 = OUTLINED_FUNCTION_28();
    v32(v31);
    v33 = v64[4];
    __swift_project_boxed_opaque_existential_1(v64, v64[3]);
    v34 = *(v33 + 112);
    v35 = OUTLINED_FUNCTION_28();
    v36(v35);
    v37 = v63;
    if (!v63)
    {
    }

    __swift_destroy_boxed_opaque_existential_1Tm(v64);
    __swift_destroy_boxed_opaque_existential_1Tm(v65);
  }

  else
  {
    sub_266A798F4(v65, &qword_2800B1C48, &unk_266AC1310);
    v37 = 0xEF79627261656E20;
  }

  v38 = v3[3];
  v39 = v3[4];
  OUTLINED_FUNCTION_12(v3);
  Request.winningDeviceName.getter();
  if (v40)
  {
    v41 = v40;

    v37 = v41;
  }

  v42 = [objc_allocWithZone(MEMORY[0x277CE1F60]) init];
  sub_266ABDA34();
  sub_266ABDA24();
  sub_266ABDA14();

  sub_266ABDA24();
  sub_266ABDA54();
  sub_266A6AE78(0, &qword_2800B1C90, 0x277CCA8D8);
  static NSBundle.feedback.getter();
  sub_266ABD804();
  OUTLINED_FUNCTION_11();
  sub_266ABDA74();
  OUTLINED_FUNCTION_34();
  [v42 setTitle_];

  v43 = sub_266ABDA74();
  [v42 setCategoryIdentifier_];

  [v42 setShouldBackgroundDefaultAction_];
  if (qword_280BB6C50 != -1)
  {
    swift_once();
  }

  v44 = qword_280BB6C58;
  v45 = OBJC_IVAR____TtC34SiriCrossDeviceArbitrationFeedback11GlobalsImpl_historyLengthSeconds;
  OUTLINED_FUNCTION_18();
  v46 = *(v44 + v45);
  sub_266ABD744();
  v47 = sub_266ABD714();
  [v42 setExpirationDate_];

  sub_266ABDA04();
  static NSBundle.feedback.getter();
  sub_266ABD804();
  OUTLINED_FUNCTION_11();
  v48 = sub_266ABDA74();

  [v42 setBody_];

  sub_266A6FFD8(v3, v65);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B1C78, &unk_266AC0F90);
  if (swift_dynamicCast())
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B1CA0, &qword_266AC0FA8);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_266AC0EB0;
    v65[0] = 0xD000000000000010;
    v65[1] = 0x8000000266ABFAF0;
    sub_266ABDE54();
    sub_266ABE244();
    v50 = sub_266A95214(v62);
    if (v50)
    {
      sub_266A9C670(v65, v50);
    }

    v51 = sub_266ABE2A4();
    *(inited + 96) = MEMORY[0x277D83B88];

    *(inited + 72) = v51;
    sub_266ABD9B4();
    v52 = sub_266ABD994();

    [v42 setUserInfo_];
  }

  v53 = [objc_opt_self() triggerWithTimeInterval:0 repeats:0.5];
  sub_266A6AE78(0, &qword_2800B1C98, 0x277CE1FC0);
  sub_266ABD7E4();
  v54 = sub_266ABD7C4();
  v56 = v55;
  (*(v59 + 8))(v57, v61);
  sub_266A77FD8(v54, v56, v42, v53, 5);
  (*(v58 + 8))(v16, v60);
  OUTLINED_FUNCTION_30();
}

double sub_266A767EC@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B1CB0, &qword_266AC0FB8);
  v5 = OUTLINED_FUNCTION_21(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v30[-1] - v8;
  v10 = type metadata accessor for ParticipantModel();
  v11 = OUTLINED_FUNCTION_1_0(v10);
  v13 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_2();
  v18 = v17 - v16;
  sub_266A6FFD8(a1, v30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B1CC0, &qword_266AC1290);
  if (swift_dynamicCast())
  {
    __swift_storeEnumTagSinglePayload(v9, 0, 1, v10);
    v19 = OUTLINED_FUNCTION_9();
    sub_266A7977C(v19, v20);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B1CD8, &unk_266AC0FE0);
    v21 = *(v13 + 72);
    v22 = (*(v13 + 80) + 32) & ~*(v13 + 80);
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_266AC0EB0;
    sub_266A6E9E4(v18, v23 + v22);
    v30[0] = v23;
    sub_266AAA5AC();
    sub_266AAA8D0();
    v25 = v24;
    sub_266A94558();
    v29 = v26;
    sub_266A7F950(v25);
    v27 = v29;
    sub_266AAAECC();
    OUTLINED_FUNCTION_34();
    OUTLINED_FUNCTION_28();
    sub_266AAB528();
    OUTLINED_FUNCTION_22();

    sub_266A72DD4(v27, a2);

    sub_266A6A63C(v18);
  }

  else
  {
    __swift_storeEnumTagSinglePayload(v9, 1, 1, v10);
    sub_266A798F4(v9, &qword_2800B1CB0, &qword_266AC0FB8);
    *(a2 + 32) = 0;
    result = 0.0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  return result;
}

void sub_266A76A2C(uint64_t a1, void *a2)
{
  if (!sub_266A76AA0(a2))
  {
    v3 = *(a1 + 24);
    v4 = *(a1 + 32);
    v5 = OUTLINED_FUNCTION_9();
    __swift_project_boxed_opaque_existential_1(v5, v6);
    v7 = OUTLINED_FUNCTION_29();
    if (!Request.isDirectTrigger.getter(v7, v4))
    {

      sub_266A77440();
    }
  }
}

BOOL sub_266A76AA0(void *a1)
{
  v2 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v3 = *(v2 + 128);
  v4 = OUTLINED_FUNCTION_10_0();
  v3(v4);
  v5 = v27;
  sub_266A798F4(v26, &qword_2800B1CC8, &unk_266AC0FD0);
  if (!v5)
  {
    return 0;
  }

  v6 = OUTLINED_FUNCTION_10_0();
  v3(v6);
  v7 = v27;
  if (v27)
  {
    v8 = v28;
    __swift_project_boxed_opaque_existential_1(v26, v27);
    v9 = *(v8 + 56);
    v10 = OUTLINED_FUNCTION_10_0();
    v12 = v11(v10);
    __swift_destroy_boxed_opaque_existential_1Tm(v26);
  }

  else
  {
    sub_266A798F4(v26, &qword_2800B1CC8, &unk_266AC0FD0);
    v12 = 0;
  }

  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v15 = *(v14 + 16);
  v16 = OUTLINED_FUNCTION_22();
  v17(v16, v14);
  v18 = v27;
  v13 = v27 == 0;
  if (v27)
  {
    v19 = v28;
    __swift_project_boxed_opaque_existential_1(v26, v27);
    v20 = *(v19 + 56);
    v21 = OUTLINED_FUNCTION_22();
    v23 = v22(v21, v19);
    __swift_destroy_boxed_opaque_existential_1Tm(v26);
    if (!v7)
    {
      return v13;
    }
  }

  else
  {
    sub_266A798F4(v26, &qword_2800B1CC8, &unk_266AC0FD0);
    v23 = 0;
    if (!v7)
    {
      return v13;
    }
  }

  return v18 && v12 == v23;
}

uint64_t sub_266A76C60(void *a1, void *a2)
{
  if (qword_280BB6C30 != -1)
  {
    OUTLINED_FUNCTION_0();
    swift_once();
  }

  v4 = sub_266ABD8D4();
  __swift_project_value_buffer(v4, qword_280BB7028);
  v5 = sub_266ABD8C4();
  v6 = sub_266ABDD54();
  if (OUTLINED_FUNCTION_14_0(v6))
  {
    v7 = OUTLINED_FUNCTION_25();
    v8 = OUTLINED_FUNCTION_23();
    v23[0] = v8;
    *v7 = 136315138;
    *(v7 + 4) = sub_266A66D34(0xD000000000000022, 0x8000000266ABFCA0, v23);
    _os_log_impl(&dword_266A65000, v5, v6, "#feedback UserNotificationService - %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v8);
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_8();
  }

  if (!sub_266A76AA0(a1))
  {
    return 0;
  }

  v9 = a2[3];
  v10 = a2[4];
  v11 = OUTLINED_FUNCTION_12(a2);
  if (Request.isDirectTrigger.getter(v11, v10))
  {
    return 0;
  }

  sub_266A77B78();
  if (sub_266A75F08(a1))
  {
    v12 = sub_266ABD8C4();
    v13 = sub_266ABDD54();
    if (OUTLINED_FUNCTION_4_0(v13))
    {
      v14 = OUTLINED_FUNCTION_19();
      OUTLINED_FUNCTION_20(v14);
      OUTLINED_FUNCTION_3_0();
      _os_log_impl(v15, v16, v17, v18, v19, 2u);
      OUTLINED_FUNCTION_6();
    }

    return 0;
  }

  sub_266A6FFD8(a1, v23);
  sub_266A760F0();
  v22 = v21;
  sub_266A798F4(v23, &qword_2800B1C48, &unk_266AC1310);
  sub_266A76E54();

  return 1;
}

void sub_266A76E54()
{
  OUTLINED_FUNCTION_31();
  v1 = v0;
  v3 = v2;
  if (qword_280BB6C30 != -1)
  {
    OUTLINED_FUNCTION_0();
    swift_once();
  }

  v4 = sub_266ABD8D4();
  v5 = __swift_project_value_buffer(v4, qword_280BB7028);
  v6 = sub_266ABD8C4();
  v7 = sub_266ABDD54();
  if (OUTLINED_FUNCTION_13(v7))
  {
    v8 = OUTLINED_FUNCTION_25();
    v9 = OUTLINED_FUNCTION_23();
    v31[0] = v9;
    *v8 = 136315138;
    *(v8 + 4) = sub_266A66D34(0xD000000000000022, 0x8000000266ABFBE0, v31);
    OUTLINED_FUNCTION_5_0();
    _os_log_impl(v10, v11, v12, v13, v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v9);
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_7();
  }

  v15 = OBJC_IVAR____TtC34SiriCrossDeviceArbitrationFeedback27UserNotificationServiceImpl_notificationCenter;
  OUTLINED_FUNCTION_18();
  sub_266A6F918(v1 + v15, v31, &qword_2800B1C18, &qword_266AC0EC0);
  v16 = v32;
  if (v32)
  {
    v17 = v33;
    v18 = __swift_project_boxed_opaque_existential_1(v31, v32);
    v19 = *(v16 - 1);
    v20 = *(v19 + 64);
    MEMORY[0x28223BE20](v18);
    OUTLINED_FUNCTION_2();
    v23 = v22 - v21;
    (*(v19 + 16))(v22 - v21);
    sub_266A798F4(v31, &qword_2800B1C18, &qword_266AC0EC0);
    v24 = *(v17 + 1);
    v25 = OUTLINED_FUNCTION_28();
    v27 = v26(v25);
    (*(v19 + 8))(v23, v16);
    if (v27)
    {
      [v27 removeAllDeliveredNotifications];
      v33 = sub_266A77184;
      v34 = 0;
      v31[0] = MEMORY[0x277D85DD0];
      v31[1] = 1107296256;
      v31[2] = sub_266A773D4;
      v32 = &block_descriptor_24;
      v28 = _Block_copy(v31);
      [v27 addNotificationRequest:v3 withCompletionHandler:v28];
      _Block_release(v28);
      goto LABEL_11;
    }
  }

  else
  {
    sub_266A798F4(v31, &qword_2800B1C18, &qword_266AC0EC0);
  }

  v27 = sub_266ABD8C4();
  v29 = sub_266ABDD64();
  if (OUTLINED_FUNCTION_14_0(v29))
  {
    v30 = OUTLINED_FUNCTION_19();
    OUTLINED_FUNCTION_20(v30);
    _os_log_impl(&dword_266A65000, v27, v29, "#feedback UserNotificationService - notificationCenter is nil. Returning", v5, 2u);
    OUTLINED_FUNCTION_6();
  }

LABEL_11:

  OUTLINED_FUNCTION_30();
}

void sub_266A77184(void *a1)
{
  if (a1)
  {
    if (qword_280BB6C30 != -1)
    {
      swift_once();
    }

    v2 = sub_266ABD8D4();
    __swift_project_value_buffer(v2, qword_280BB7028);
    v3 = a1;
    oslog = sub_266ABD8C4();
    v4 = sub_266ABDD64();

    if (os_log_type_enabled(oslog, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v15 = v6;
      *v5 = 136315138;
      v7 = a1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B2100, &qword_266AC0FA0);
      v8 = sub_266ABDAE4();
      v10 = sub_266A66D34(v8, v9, &v15);

      *(v5 + 4) = v10;
      _os_log_impl(&dword_266A65000, oslog, v4, "#feedback UserNotificationService - notification added error: %s", v5, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v6);
      MEMORY[0x26D5E9280](v6, -1, -1);
      MEMORY[0x26D5E9280](v5, -1, -1);

      return;
    }
  }

  else
  {
    if (qword_280BB6C30 != -1)
    {
      swift_once();
    }

    v11 = sub_266ABD8D4();
    __swift_project_value_buffer(v11, qword_280BB7028);
    oslog = sub_266ABD8C4();
    v12 = sub_266ABDD54();
    if (os_log_type_enabled(oslog, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_266A65000, oslog, v12, "#feedback UserNotificationService - notification added.", v13, 2u);
      MEMORY[0x26D5E9280](v13, -1, -1);
    }
  }
}

void sub_266A773D4(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4(a2);
}

void sub_266A77440()
{
  OUTLINED_FUNCTION_31();
  ObjectType = swift_getObjectType();
  v1 = sub_266ABD8F4();
  v2 = OUTLINED_FUNCTION_1_0(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_2();
  v9 = v8 - v7;
  v10 = sub_266ABD914();
  v11 = OUTLINED_FUNCTION_1_0(v10);
  v13 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_2();
  v18 = v17 - v16;
  sub_266A77B78();
  sub_266A6AE78(0, &qword_280BB6C08, 0x277D85C78);
  v19 = sub_266ABDD94();
  v20 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v21 = swift_allocObject();
  *(v21 + 16) = v20;
  *(v21 + 24) = ObjectType;
  v23[4] = sub_266A79540;
  v23[5] = v21;
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 1107296256;
  v23[2] = sub_266A77B34;
  v23[3] = &block_descriptor;
  v22 = _Block_copy(v23);

  sub_266ABD904();
  v23[0] = MEMORY[0x277D84F90];
  sub_266A79734(&qword_2800B1C60, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B1C68, &qword_266AC0F88);
  sub_266A79560();
  sub_266ABDE24();
  MEMORY[0x26D5E8650](0, v18, v9, v22);
  _Block_release(v22);

  (*(v4 + 8))(v9, v1);
  (*(v13 + 8))(v18, v10);
  OUTLINED_FUNCTION_30();
}

void sub_266A776F8()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = objc_opt_self();
    v3 = swift_allocObject();
    *(v3 + 16) = v1;
    aBlock[4] = sub_266A795C4;
    aBlock[5] = v3;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_266A77ACC;
    aBlock[3] = &block_descriptor_21;
    v4 = _Block_copy(aBlock);
    v5 = v1;

    v6 = [v2 scheduledTimerWithTimeInterval:0 repeats:v4 block:10.0];
    _Block_release(v4);
    v7 = *&v5[OBJC_IVAR____TtC34SiriCrossDeviceArbitrationFeedback27UserNotificationServiceImpl_timer];
    *&v5[OBJC_IVAR____TtC34SiriCrossDeviceArbitrationFeedback27UserNotificationServiceImpl_timer] = v6;
  }
}

uint64_t sub_266A77834(void *a1, uint64_t a2)
{
  if (qword_280BB6C30 != -1)
  {
    swift_once();
  }

  v4 = sub_266ABD8D4();
  __swift_project_value_buffer(v4, qword_280BB7028);
  v5 = sub_266ABD8C4();
  v6 = sub_266ABDD54();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_266A65000, v5, v6, "#feedback UserNotificationService - timer fired.", v7, 2u);
    MEMORY[0x26D5E9280](v7, -1, -1);
  }

  v8 = OBJC_IVAR____TtC34SiriCrossDeviceArbitrationFeedback27UserNotificationServiceImpl_currentRequest;
  swift_beginAccess();
  sub_266A6F918(a2 + v8, &v16, &qword_2800B1C38, &qword_266AC0EC8);
  if (!*(&v17 + 1))
  {
    return sub_266A798F4(&v16, &qword_2800B1C38, &qword_266AC0EC8);
  }

  sub_266A6FFD8(&v16, v20);
  sub_266A798F4(&v16, &qword_2800B1C38, &qword_266AC0EC8);
  sub_266A6DBC4(v20, v21);
  sub_266A6F918(a2 + v8, &v16, &qword_2800B1C38, &qword_266AC0EC8);
  if (!*(&v17 + 1))
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v21);
    return sub_266A798F4(&v16, &qword_2800B1C38, &qword_266AC0EC8);
  }

  v9 = v19;
  sub_266A798F4(&v16, &qword_2800B1C38, &qword_266AC0EC8);
  if ((v9 & 1) == 0)
  {
    v18 = 0;
    v16 = 0u;
    v17 = 0u;
    sub_266A760F0();
    v11 = v10;
    sub_266A798F4(&v16, &qword_2800B1C48, &unk_266AC1310);
    sub_266A76E54();
    v12 = sub_266ABD8C4();
    v13 = sub_266ABDD54();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_266A65000, v12, v13, "#feedback UserNotificationService - notification sent after timeout waiting for winner participation", v14, 2u);
      MEMORY[0x26D5E9280](v14, -1, -1);
    }
  }

  [a1 invalidate];
  return __swift_destroy_boxed_opaque_existential_1Tm(v21);
}

void sub_266A77ACC(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

uint64_t sub_266A77B34(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

void sub_266A77B78()
{
  v1 = v0;
  if (qword_280BB6C30 != -1)
  {
    OUTLINED_FUNCTION_0();
    swift_once();
  }

  v2 = sub_266ABD8D4();
  __swift_project_value_buffer(v2, qword_280BB7028);
  v3 = sub_266ABD8C4();
  v4 = sub_266ABDD54();
  if (OUTLINED_FUNCTION_14_0(v4))
  {
    v5 = OUTLINED_FUNCTION_19();
    *v5 = 0;
    _os_log_impl(&dword_266A65000, v3, v4, "#feedback UserNotificationService - timer stopped.", v5, 2u);
    OUTLINED_FUNCTION_8();
  }

  v6 = OBJC_IVAR____TtC34SiriCrossDeviceArbitrationFeedback27UserNotificationServiceImpl_timer;
  [*(v1 + OBJC_IVAR____TtC34SiriCrossDeviceArbitrationFeedback27UserNotificationServiceImpl_timer) invalidate];
  v7 = *(v1 + v6);
  *(v1 + v6) = 0;
}

id UserNotificationServiceImpl.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id UserNotificationServiceImpl.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for UserNotificationServiceImpl();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_266A77E14(void *a1, void *a2)
{
  v5 = a1[3];
  v6 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v5);
  (*(v6 + 16))(v16, v5, v6);
  if (!v17)
  {
    goto LABEL_7;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B1CD0, &unk_266AC12E0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  v2.i32[0] = v15[0];
  v7 = a2[3];
  v8 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v7);
  (*(v8 + 16))(v16, v7, v8);
  if (!v17)
  {
LABEL_7:
    sub_266A798F4(v16, &qword_2800B1CC8, &unk_266AC0FD0);
    return 0;
  }

  if (swift_dynamicCast())
  {
    v10 = vmovl_u8(v2).u64[0];
    v11 = vuzp1_s8(v10, v10);
    v16[0] = __PAIR64__(v15[1], v11.u32[0]);
    if (static AdvertisementModel.== infix(_:_:)(v16, v15, v11, v9))
    {
      v12 = a1[3];
      v13 = a1[4];
      __swift_project_boxed_opaque_existential_1(a1, v12);
      return ((*(v13 + 80))(v12, v13) >> 8) & 1;
    }
  }

  return 0;
}

id sub_266A77FD8(uint64_t a1, uint64_t a2, void *a3, void *a4, uint64_t a5)
{
  v8 = sub_266ABDA74();

  v9 = [swift_getObjCClassFromMetadata() requestWithIdentifier:v8 content:a3 trigger:a4 destinations:a5];

  return v9;
}

void UserNotificationServiceImpl.userNotificationCenter(_:didReceive:withCompletionHandler:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  if (qword_280BB6C30 != -1)
  {
    OUTLINED_FUNCTION_0();
    swift_once();
  }

  v9 = sub_266ABD8D4();
  __swift_project_value_buffer(v9, qword_280BB7028);
  v10 = a2;
  v11 = sub_266ABD8C4();
  v12 = sub_266ABDD54();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = OUTLINED_FUNCTION_25();
    v56 = OUTLINED_FUNCTION_23();
    v57 = a4;
    v62[0] = v56;
    *v13 = 136315138;
    v14 = [v10 notification];
    v15 = v10;
    v16 = a3;
    v17 = v14;
    v55 = v12;
    v18 = [v14 description];
    v19 = sub_266ABDA84();
    v20 = v5;
    v22 = v21;

    a3 = v16;
    v10 = v15;

    v23 = sub_266A66D34(v19, v22, v62);
    v5 = v20;

    *(v13 + 4) = v23;
    _os_log_impl(&dword_266A65000, v11, v55, "#feedback UserNotificationService - handleNotificationResponse for notification: %s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v56);
    a4 = v57;
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_8();
  }

  v24 = [v10 actionIdentifier];
  v25 = sub_266ABDA84();
  v27 = v26;

  v28 = *MEMORY[0x277CE20F0];
  if (v25 == sub_266ABDA84() && v27 == v29)
  {

LABEL_12:
    v32 = [v10 notification];
    v33 = [v32 request];

    v34 = [v33 content];
    v35 = [v34 userInfo];

    v36 = sub_266ABD9A4();
    v60 = 0xD000000000000010;
    v61 = 0x8000000266ABFAF0;
    sub_266ABDE54();
    sub_266A785A8(v62, v36, &v58);

    sub_266A79218(v62);
    if (v59)
    {
      if (swift_dynamicCast())
      {
        sub_266A7860C();
        if (v59)
        {
          sub_266A6DBC4(&v58, v62);
          v37 = type metadata accessor for KeyValueStore();
          type metadata accessor for FeedbackSELFInstrumentationService();
          inited = swift_initStackObject();
          inited[2] = v37;
          inited[3] = &protocol witness table for KeyValueStore;
          inited[4] = v37;
          inited[5] = &protocol witness table for KeyValueStore;
          v39 = sub_266A8FE1C(v62);
          v40 = sub_266ABD8C4();
          v41 = sub_266ABDD54();
          if (OUTLINED_FUNCTION_14_0(v41))
          {
            v42 = OUTLINED_FUNCTION_24();
            *v42 = 67109120;
            *(v42 + 4) = v39 & 1;
            _os_log_impl(&dword_266A65000, v40, v41, "#feedback UserNotificationService - Dismissal of notification tracked successfully: %{BOOL}d.", v42, 8u);
            OUTLINED_FUNCTION_8();
          }

          __swift_destroy_boxed_opaque_existential_1Tm(v62);
          goto LABEL_18;
        }

        sub_266A798F4(&v58, &qword_2800B1C40, &unk_266AC0ED0);
        v46 = sub_266ABD8C4();
        v54 = sub_266ABDD54();
        if (OUTLINED_FUNCTION_4_0(v54))
        {
          goto LABEL_22;
        }

        goto LABEL_23;
      }
    }

    else
    {
      sub_266A798F4(&v58, &qword_2800B1C50, &qword_266AC0EE0);
    }

    v46 = sub_266ABD8C4();
    v47 = sub_266ABDD54();
    if (OUTLINED_FUNCTION_4_0(v47))
    {
LABEL_22:
      v48 = OUTLINED_FUNCTION_19();
      OUTLINED_FUNCTION_20(v48);
      OUTLINED_FUNCTION_3_0();
      _os_log_impl(v49, v50, v51, v52, v53, 2u);
      OUTLINED_FUNCTION_6();
    }

LABEL_23:

    return;
  }

  v31 = sub_266ABE1C4();

  if (v31)
  {
    goto LABEL_12;
  }

LABEL_18:
  v43 = v5 + OBJC_IVAR____TtC34SiriCrossDeviceArbitrationFeedback27UserNotificationServiceImpl_delegate;
  OUTLINED_FUNCTION_18();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v44 = *(v43 + 8);
    ObjectType = swift_getObjectType();
    (*(v44 + 8))(v10, a3, a4, ObjectType, v44);
    swift_unknownObjectRelease();
  }
}

double sub_266A785A8@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  if (*(a2 + 16) && (v5 = sub_266AB0D04(a1), (v6 & 1) != 0))
  {
    v7 = *(a2 + 56) + 32 * v5;

    sub_266A68ADC(v7, a3);
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

void sub_266A7860C()
{
  OUTLINED_FUNCTION_31();
  v85 = v0;
  v74 = v1;
  v75 = type metadata accessor for ParticipantModel();
  v2 = OUTLINED_FUNCTION_1_0(v75);
  v68[1] = v3;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_27();
  v69 = v6;
  MEMORY[0x28223BE20](v7);
  v76 = v68 - v8;
  v72 = sub_266ABD5B4();
  v9 = OUTLINED_FUNCTION_1_0(v72);
  v71 = v10;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_2();
  v87 = v14 - v13;
  v15 = sub_266ABD634();
  v16 = OUTLINED_FUNCTION_1_0(v15);
  v18 = v17;
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_27();
  v84 = v21;
  v23 = MEMORY[0x28223BE20](v22);
  v25 = v68 - v24;
  v26 = MEMORY[0x28223BE20](v23);
  v28 = v68 - v27;
  MEMORY[0x28223BE20](v26);
  v30 = v68 - v29;
  type metadata accessor for FeedbackServiceImpl();
  static FeedbackServiceImpl.receivedArbitrationsDirectoryURL.getter();
  v31 = sub_266ABD604();
  v33 = v32;
  v34 = *(v18 + 8);
  v83 = v18 + 8;
  v86 = v34;
  v34(v30, v15);
  v93 = MEMORY[0x277D84F90];
  v81 = v31;
  OUTLINED_FUNCTION_9();
  sub_266ABD5E4();
  v35 = [objc_opt_self() defaultManager];
  v73 = v28;
  sub_266ABD614();
  sub_266ABDA74();
  OUTLINED_FUNCTION_34();
  v36 = [v35 enumeratorAtPath_];

  v82 = v15;
  if (v36)
  {
    v70 = v36;
    sub_266ABDD34();
    v78 = v18 + 16;
    v68[0] = MEMORY[0x277D84F90];
    *&v37 = 138412546;
    v77 = v37;
    v79 = v33;
    while (1)
    {
      sub_266ABD5A4();
      if (!v89)
      {
        break;
      }

      if (swift_dynamicCast())
      {
        *&v91[0] = v81;
        *(&v91[0] + 1) = v33;

        v38 = OUTLINED_FUNCTION_10_0();
        MEMORY[0x26D5E83C0](v38);

        sub_266ABD5E4();

        v39 = sub_266ABD674();
        v41 = v40;
        v42 = sub_266ABD494();
        v43 = *(v42 + 48);
        v44 = *(v42 + 52);
        swift_allocObject();
        sub_266ABD484();
        sub_266A79734(&qword_2800B1C88, type metadata accessor for ParticipantModel);
        sub_266ABD474();

        sub_266A6E9E4(v76, v69);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v49 = *(v68[0] + 16);
          sub_266A98500();
          v68[0] = v50;
        }

        v45 = *(v68[0] + 16);
        if (v45 >= *(v68[0] + 24) >> 1)
        {
          sub_266A98500();
          v68[0] = v51;
        }

        sub_266A6A5B4(v39, v41);
        sub_266A6A63C(v76);
        v86(v25, v15);
        v46 = v68[0];
        *(v68[0] + 16) = v45 + 1;
        OUTLINED_FUNCTION_26_1(&v90);
        sub_266A7977C(v69, v46 + v47 + *(v48 + 72) * v45);
        v93 = v46;
        v33 = v79;
      }
    }

    v80 = 0;
    (*(v71 + 8))(v87, v72);
  }

  else
  {
    v80 = 0;
  }

  sub_266AAA5AC();
  sub_266AAA8D0();
  v53 = v52;
  v54 = v93;
  sub_266A94558();
  *&v88 = v55;
  sub_266A7F950(v53);
  sub_266AAAECC();
  OUTLINED_FUNCTION_34();
  v87 = v54;
  sub_266AAB528();
  v57 = v56;

  v58 = 0;
  v59 = *(v57 + 16);
  v60 = MEMORY[0x277D84F90];
  for (i = v57 + 32; ; i += 40)
  {
    if (v59 == v58)
    {

      sub_266A72DD4(v60, v74);

      v86(v73, v82);
      OUTLINED_FUNCTION_30();
      return;
    }

    if (v58 >= *(v57 + 16))
    {
      break;
    }

    sub_266A6FFD8(i, v91);
    sub_266A6FFD8(v91, &v88);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B1C78, &unk_266AC0F90);
    if (!swift_dynamicCast())
    {
      goto LABEL_24;
    }

    v62 = v90;
    sub_266ABE244();
    v63 = sub_266A95214(v62);
    if (v63)
    {
      sub_266A9C670(&v88, v63);
    }

    v64 = sub_266ABE2A4();

    if (v64 == v85)
    {
      sub_266A6DBC4(v91, &v88);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v92 = v60;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v66 = *(v60 + 16);
        sub_266A98C28();
        v60 = v92;
      }

      v67 = *(v60 + 16);
      if (v67 >= *(v60 + 24) >> 1)
      {
        sub_266A98C28();
        v60 = v92;
      }

      *(v60 + 16) = v67 + 1;
      sub_266A6DBC4(&v88, v60 + 40 * v67 + 32);
    }

    else
    {
LABEL_24:
      __swift_destroy_boxed_opaque_existential_1Tm(v91);
    }

    ++v58;
  }

  __break(1u);
}

char *sub_266A790B0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B1CA8, &qword_266AC0FB0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[v8] <= v12)
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

uint64_t sub_266A791A4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = OUTLINED_FUNCTION_32(a1, a2, a3, a4);
  OUTLINED_FUNCTION_16(v6);
  (*(v7 + 40))(v4, v5);
  return v4;
}

void sub_266A79540()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_266A776F8();
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_266A79560()
{
  result = qword_2800B1C70;
  if (!qword_2800B1C70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2800B1C68, &qword_266AC0F88);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800B1C70);
  }

  return result;
}

uint64_t sub_266A795F4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B1C18, &qword_266AC0EC0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

uint64_t sub_266A796B4(uint64_t (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v5 = 0;
  v6 = *(a3 + 16);
  for (i = a3 + 32; ; i += 40)
  {
    if (v6 == v5)
    {
      return 0;
    }

    result = a1(i);
    if (v3)
    {
      return result;
    }

    if (result)
    {
      break;
    }

    ++v5;
  }

  return v5;
}

uint64_t sub_266A79734(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_266A7977C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ParticipantModel();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_266A79800(uint64_t result, uint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  v4 = *(*v2 + 16);
  if (v4 < a2)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v5 = result;
  v6 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v7 = result - a2;
  if (__OFSUB__(0, v6))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  result = v4 - v6;
  if (__OFADD__(v4, v7))
  {
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  sub_266A98A38(result);
  v8 = *v2;
  v9 = *v2 + 32;
  v10 = (v9 + 40 * v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B1CC0, &qword_266AC1290);
  result = swift_arrayDestroy();
  if (!v6)
  {
LABEL_10:
    *v2 = v8;
    return result;
  }

  v11 = *(v8 + 16);
  if (__OFSUB__(v11, a2))
  {
    goto LABEL_16;
  }

  result = sub_266A9D164((v9 + 40 * a2), v11 - a2, v10);
  v12 = *(v8 + 16);
  v13 = __OFADD__(v12, v7);
  v14 = v12 - v6;
  if (!v13)
  {
    *(v8 + 16) = v14;
    goto LABEL_10;
  }

LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_266A798F4(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_16(v4);
  (*(v5 + 8))(a1);
  return a1;
}

void OUTLINED_FUNCTION_6()
{

  JUMPOUT(0x26D5E9280);
}

uint64_t OUTLINED_FUNCTION_24()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_34()
{
}

uint64_t sub_266A799E0()
{
  sub_266ABDB04();
}

uint64_t sub_266A79A40()
{
  sub_266ABDB04();
}

uint64_t sub_266A79AB8()
{
  sub_266ABDB04();
}

uint64_t sub_266A79BE8(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  a3(a2);
  sub_266ABDB04();
}

uint64_t sub_266A79C88()
{
  sub_266ABDB04();
}

uint64_t sub_266A79D08()
{
  sub_266ABDB04();
}

uint64_t sub_266A79E4C()
{
  sub_266ABDB04();
}

BOOL static AdvertisementModel.== infix(_:_:)(uint64_t a1, uint64_t a2, uint8x8_t a3, uint8x8_t a4)
{
  result = 0;
  a3.i32[0] = *a1;
  a4.i32[0] = *a2;
  if ((vminv_u16(vceq_s16((vmovl_u8(a3).u64[0] & 0xFF00FF00FF00FFLL), (vmovl_u8(a4).u64[0] & 0xFF00FF00FF00FFLL))) & 1) != 0 && *(a1 + 6) == *(a2 + 6) && *(a1 + 4) == *(a2 + 4))
  {
    return *(a1 + 7) == *(a2 + 7);
  }

  return result;
}

uint64_t sub_266A7A008(unint64_t a1)
{
  v1 = a1;
  v2 = a1 >> 16;
  v49 = a1 >> 24;
  v50 = HIDWORD(a1);
  v51 = HIWORD(a1);
  *&v55 = HIBYTE(a1);
  v46 = sub_266ABD974();
  v48 = *(v46 - 8);
  v3 = *(v48 + 64);
  MEMORY[0x28223BE20](v46);
  v5 = &v45 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_266ABDAC4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_266ABD984();
  v53 = *(v11 - 8);
  v54 = v11;
  v12 = *(v53 + 64);
  v13 = MEMORY[0x28223BE20](v11);
  v47 = &v45 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v52 = &v45 - v15;
  v57 = 0;
  v58 = 0xE000000000000000;
  LOBYTE(v56) = v1;
  v16 = sub_266ABE194();
  MEMORY[0x26D5E83C0](v16);

  v56 = HIBYTE(v1);
  v17 = sub_266ABE194();
  MEMORY[0x26D5E83C0](v17);

  LOBYTE(v56) = v2;
  v18 = sub_266ABE194();
  MEMORY[0x26D5E83C0](v18);

  LOBYTE(v56) = v49;
  v19 = sub_266ABE194();
  MEMORY[0x26D5E83C0](v19);

  LOWORD(v56) = v50;
  v20 = sub_266ABE194();
  MEMORY[0x26D5E83C0](v20);

  LOBYTE(v56) = v51;
  sub_266ABDF24();
  LOBYTE(v56) = v55;
  v21 = sub_266ABE194();
  MEMORY[0x26D5E83C0](v21);

  sub_266ABDAB4();
  v22 = sub_266ABDA94();
  v24 = v23;
  result = (*(v7 + 8))(v10, v6);
  if (v24 >> 60 == 15)
  {
    goto LABEL_18;
  }

  v26 = MEMORY[0x277CC5588];
  sub_266A6CF84(&qword_2800B1CE0, MEMORY[0x277CC5588]);
  v27 = v46;
  sub_266ABD944();
  sub_266A6CCDC(v22, v24);
  sub_266A6CDD8(v22, v24, v5, MEMORY[0x277CC5588], &qword_2800B1CE0, v26);
  sub_266A7BB30(v22, v24);
  v28 = v52;
  sub_266ABD934();
  (*(v48 + 8))(v5, v27);
  sub_266A7BB30(v22, v24);
  (*(v53 + 16))(v47, v28, v54);
  sub_266A6CF84(&qword_2800B1CE8, MEMORY[0x277CC55B0]);
  result = sub_266ABDB84();
  v51 = v57;
  v29 = *(v57 + 16);
  v30 = v29 - v58;
  if (v29 == v58)
  {
    v31 = MEMORY[0x277D84F90];
LABEL_4:

    v57 = v31;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B1CF8, &qword_266AC20F0);
    sub_266A6D26C();
    v32 = sub_266ABD9E4();

    (*(v53 + 8))(v52, v54);
    return v32;
  }

  if (v29 <= v58)
  {
    __break(1u);
  }

  else if ((v58 & 0x8000000000000000) == 0)
  {
    if (v29)
    {
      v33 = (v58 + v51 + 32);
      v31 = MEMORY[0x277D84F90];
      v55 = xmmword_266AC0EB0;
      v34 = MEMORY[0x277D84BC0];
      do
      {
        v35 = *v33++;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B1CF0, &unk_266AC0FF0);
        v36 = swift_allocObject();
        *(v36 + 16) = v55;
        *(v36 + 56) = MEMORY[0x277D84B78];
        *(v36 + 64) = v34;
        *(v36 + 32) = v35;
        v37 = sub_266ABDAA4();
        v39 = v38;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v42 = *(v31 + 16);
          sub_266A6CFCC();
          v31 = v43;
        }

        v40 = *(v31 + 16);
        if (v40 >= *(v31 + 24) >> 1)
        {
          sub_266A6CFCC();
          v31 = v44;
        }

        *(v31 + 16) = v40 + 1;
        v41 = v31 + 16 * v40;
        *(v41 + 32) = v37;
        *(v41 + 40) = v39;
        --v30;
      }

      while (v30);
      goto LABEL_4;
    }

    goto LABEL_17;
  }

  __break(1u);
LABEL_17:
  __break(1u);
LABEL_18:
  __break(1u);
  return result;
}

void Advertisement.id.getter(uint64_t a1, void *a2)
{
  v78 = sub_266ABD974();
  v3 = OUTLINED_FUNCTION_1_0(v78);
  v83 = v4;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  v8 = &v78 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = sub_266ABDAC4();
  v9 = OUTLINED_FUNCTION_1_0(v84);
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v9);
  v15 = &v78 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_266ABD984();
  v17 = OUTLINED_FUNCTION_1_0(v16);
  v80 = v18;
  v81 = v17;
  v20 = *(v19 + 64);
  v21 = MEMORY[0x28223BE20](v17);
  *&v82 = &v78 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v79 = &v78 - v23;
  v87 = 0;
  v88 = 0xE000000000000000;
  v24 = a2[3];
  v25 = OUTLINED_FUNCTION_6_0();
  LOBYTE(v85) = v26(v25);
  sub_266ABE194();
  OUTLINED_FUNCTION_18_0();

  v27 = a2[4];
  v28 = OUTLINED_FUNCTION_3_1();
  v29(v28);
  v85 = v86;
  sub_266ABE194();
  OUTLINED_FUNCTION_18_0();

  v30 = a2[5];
  v31 = OUTLINED_FUNCTION_3_1();
  v33 = v32(v31);
  OUTLINED_FUNCTION_12_0(v33);
  OUTLINED_FUNCTION_18_0();

  v34 = a2[6];
  v35 = OUTLINED_FUNCTION_3_1();
  v37 = v36(v35);
  OUTLINED_FUNCTION_12_0(v37);
  OUTLINED_FUNCTION_18_0();

  v38 = a2[7];
  v39 = OUTLINED_FUNCTION_3_1();
  LOWORD(v85) = v40(v39);
  sub_266ABE194();
  OUTLINED_FUNCTION_18_0();

  v41 = a2[8];
  v42 = OUTLINED_FUNCTION_3_1();
  v43(v42);
  sub_266ABDF24();
  v44 = a2[9];
  v45 = OUTLINED_FUNCTION_6_0();
  v47 = v46(v45);
  v48 = OUTLINED_FUNCTION_12_0(v47);
  MEMORY[0x26D5E83C0](v48);

  sub_266ABDAB4();
  sub_266ABDA94();
  v50 = v49;
  (*(v11 + 8))(v15, v84);
  if (v50 >> 60 == 15)
  {
LABEL_16:
    __break(1u);
    return;
  }

  v51 = MEMORY[0x277CC5588];
  sub_266A6CF84(&qword_2800B1CE0, MEMORY[0x277CC5588]);
  v52 = v78;
  sub_266ABD944();
  v53 = OUTLINED_FUNCTION_6_0();
  sub_266A6CCDC(v53, v54);
  v55 = OUTLINED_FUNCTION_6_0();
  sub_266A6CDD8(v55, v56, v8, v57, &qword_2800B1CE0, v51);
  v58 = OUTLINED_FUNCTION_6_0();
  sub_266A7BB30(v58, v59);
  v60 = v79;
  sub_266ABD934();
  (*(v83 + 8))(v8, v52);
  v61 = OUTLINED_FUNCTION_6_0();
  sub_266A7BB30(v61, v62);
  v63 = v80;
  (*(v80 + 16))(v82, v60, v81);
  sub_266A6CF84(&qword_2800B1CE8, MEMORY[0x277CC55B0]);
  sub_266ABDB84();
  v64 = v87;
  v65 = v88;
  v84 = *(v87 + 16);
  if (v88 != v84)
  {
    v83 = v87 + 32;
    v66 = MEMORY[0x277D84F90];
    v82 = xmmword_266AC0EB0;
    v67 = v88;
    while ((v65 & 0x8000000000000000) == 0)
    {
      if (v67 >= *(v64 + 16))
      {
        goto LABEL_15;
      }

      v68 = *(v83 + v67);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B1CF0, &unk_266AC0FF0);
      v69 = swift_allocObject();
      *(v69 + 16) = v82;
      *(v69 + 56) = MEMORY[0x277D84B78];
      *(v69 + 64) = MEMORY[0x277D84BC0];
      *(v69 + 32) = v68;
      v70 = sub_266ABDAA4();
      v72 = v71;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v75 = *(v66 + 16);
        sub_266A6CFCC();
        v66 = v76;
      }

      v73 = *(v66 + 16);
      if (v73 >= *(v66 + 24) >> 1)
      {
        sub_266A6CFCC();
        v66 = v77;
      }

      ++v67;
      *(v66 + 16) = v73 + 1;
      v74 = v66 + 16 * v73;
      *(v74 + 32) = v70;
      *(v74 + 40) = v72;
      if (v84 == v67)
      {
        goto LABEL_4;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v66 = MEMORY[0x277D84F90];
LABEL_4:

  v87 = v66;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B1CF8, &qword_266AC20F0);
  sub_266A6D26C();
  sub_266ABD9E4();

  (*(v63 + 8))(v60, v81);
}

uint64_t Advertisement.description.getter(uint64_t a1, void *a2)
{
  sub_266ABDEA4();
  OUTLINED_FUNCTION_17_0();
  swift_getDynamicType();
  v3 = sub_266ABE2F4();
  MEMORY[0x26D5E83C0](v3);

  OUTLINED_FUNCTION_9_0();
  v4 = a2[3];
  v5 = OUTLINED_FUNCTION_1();
  v50 = v6(v5);
  v7 = sub_266ABE194();
  MEMORY[0x26D5E83C0](v7);

  OUTLINED_FUNCTION_13_0();
  MEMORY[0x26D5E83C0](0x656369766564202CLL);
  v8 = a2[4];
  v9 = OUTLINED_FUNCTION_1();
  v11 = v10(v9);
  OUTLINED_FUNCTION_19_0(v11, v12, &type metadata for AdvertisementDeviceClass, v13, v14, v15, v16, v17, v45, *v47, *&v47[4], v50);
  sub_266ABDF24();
  OUTLINED_FUNCTION_13_0();
  MEMORY[0x26D5E83C0](0x656369766564202CLL);
  v18 = a2[5];
  v19 = OUTLINED_FUNCTION_1();
  v20(v19);
  v21 = OUTLINED_FUNCTION_11_0();
  MEMORY[0x26D5E83C0](v21);

  OUTLINED_FUNCTION_16_1();
  v22 = a2[6];
  v23 = OUTLINED_FUNCTION_1();
  v24(v23);
  v25 = OUTLINED_FUNCTION_11_0();
  MEMORY[0x26D5E83C0](v25);

  OUTLINED_FUNCTION_15_0();
  v26 = a2[7];
  v27 = OUTLINED_FUNCTION_1();
  v51 = v28(v27);
  v29 = sub_266ABE194();
  MEMORY[0x26D5E83C0](v29);

  OUTLINED_FUNCTION_8_0();
  v30 = a2[8];
  v31 = OUTLINED_FUNCTION_1();
  v33 = v32(v31);
  OUTLINED_FUNCTION_19_0(v33, v34, &type metadata for AdvertisementProductType, v35, v36, v37, v38, v39, v46, v48, v49, v51);
  sub_266ABDF24();
  OUTLINED_FUNCTION_10_1();
  v40 = a2[9];
  v41 = OUTLINED_FUNCTION_1();
  v42(v41);
  v43 = OUTLINED_FUNCTION_11_0();
  MEMORY[0x26D5E83C0](v43);

  MEMORY[0x26D5E83C0](62, 0xE100000000000000);
  return 0;
}