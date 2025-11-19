uint64_t closure #1 in static FlowUtil.actionForInput(parse:intentType:)(char *a1)
{
  v4 = PaymentsDirectInvocations.Identifiers.rawValue.getter(*a1);
  v5 = v1;
  v2 = Parse.DirectInvocation.identifier.getter();
  v6 = MEMORY[0x26D620740](v4, v5, v2);

  return v6 & 1;
}

uint64_t sub_2687B864C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2687B868C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2687B86CC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

unint64_t lazy protocol witness table accessor for type [PaymentsDirectInvocations.Identifiers] and conformance [A]()
{
  v2 = lazy protocol witness table cache variable for type [PaymentsDirectInvocations.Identifiers] and conformance [A];
  if (!lazy protocol witness table cache variable for type [PaymentsDirectInvocations.Identifiers] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay19SiriPaymentsIntents0B17DirectInvocationsO11IdentifiersOGMd, _sSay19SiriPaymentsIntents0B17DirectInvocationsO11IdentifiersOGMR);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type [PaymentsDirectInvocations.Identifiers] and conformance [A]);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type [PaymentsDirectInvocations.Identifiers] and conformance [A];
  if (!lazy protocol witness table cache variable for type [PaymentsDirectInvocations.Identifiers] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay19SiriPaymentsIntents0B17DirectInvocationsO11IdentifiersOGMd, _sSay19SiriPaymentsIntents0B17DirectInvocationsO11IdentifiersOGMR);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type [PaymentsDirectInvocations.Identifiers] and conformance [A]);
    return WitnessTable;
  }

  return v2;
}

id Parse.toSiriKitIntent(previousIntent:aceService:contactResolver:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v284 = a1;
  v283 = a2;
  v281 = a3;
  v282 = a4;
  v306 = partial apply for implicit closure #1 in Parse.toSiriKitIntent(previousIntent:aceService:contactResolver:);
  v310 = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
  v312 = partial apply for closure #1 in OSLogArguments.append(_:);
  v314 = partial apply for closure #1 in OSLogArguments.append(_:);
  v317 = partial apply for closure #1 in OSLogArguments.append(_:);
  v217 = partial apply for implicit closure #2 in Parse.toSiriKitIntent(previousIntent:aceService:contactResolver:);
  v218 = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
  v219 = partial apply for closure #1 in OSLogArguments.append(_:);
  v220 = partial apply for closure #1 in OSLogArguments.append(_:);
  v221 = partial apply for closure #1 in OSLogArguments.append(_:);
  v222 = &protocol witness table for INSearchForAccountsIntent;
  v223 = &protocol witness table for INRequestPaymentIntent;
  v224 = &protocol witness table for INSendPaymentIntent;
  v364 = 0;
  v365 = 0;
  v363 = 0;
  v362 = 0;
  v361 = 0;
  v367 = 0;
  v366 = 0;
  v225 = 0;
  v345 = 0;
  v342 = 0;
  v339 = 0;
  v336 = 0;
  v333 = 0;
  v330 = 0;
  v277 = 0;
  v226 = type metadata accessor for Parse.DirectInvocation();
  v227 = *(v226 - 8);
  v228 = v226 - 8;
  v229 = (*(v227 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v226);
  v230 = &v60 - v229;
  v367 = &v60 - v229;
  v231 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVy0A8Ontology36UsoTask_noVerb_common_PaymentAccountCSo25INSearchForAccountsIntentCGMd, &_s13SiriUtilities11TransformerVy0A8Ontology36UsoTask_noVerb_common_PaymentAccountCSo25INSearchForAccountsIntentCGMR);
  v232 = *(v231 - 8);
  v233 = v231 - 8;
  v234 = (*(v232 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v231);
  v235 = &v60 - v234;
  v236 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVy0A8Ontology39UsoTask_summarise_common_PaymentAccountCSo25INSearchForAccountsIntentCGMd, &_s13SiriUtilities11TransformerVy0A8Ontology39UsoTask_summarise_common_PaymentAccountCSo25INSearchForAccountsIntentCGMR);
  v237 = *(v236 - 8);
  v238 = v236 - 8;
  v239 = (*(v237 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v236);
  v240 = &v60 - v239;
  v241 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVy0A8Ontology37UsoTask_request_common_PaymentAccountCSo25INSearchForAccountsIntentCGMd, &_s13SiriUtilities11TransformerVy0A8Ontology37UsoTask_request_common_PaymentAccountCSo25INSearchForAccountsIntentCGMR);
  v242 = *(v241 - 8);
  v243 = v241 - 8;
  v244 = (*(v242 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v241);
  v245 = &v60 - v244;
  v246 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVy0A8Ontology35UsoTask_requestMoney_common_PaymentCSo09INRequestJ6IntentCGMd, &_s13SiriUtilities11TransformerVy0A8Ontology35UsoTask_requestMoney_common_PaymentCSo09INRequestJ6IntentCGMR);
  v247 = *(v246 - 8);
  v248 = v246 - 8;
  v249 = (*(v247 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v246);
  v250 = &v60 - v249;
  v251 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVy0A8Ontology29UsoTask_noVerb_common_PaymentCSo06INSendJ6IntentCGMd, &_s13SiriUtilities11TransformerVy0A8Ontology29UsoTask_noVerb_common_PaymentCSo06INSendJ6IntentCGMR);
  v252 = *(v251 - 8);
  v253 = v251 - 8;
  v254 = (*(v252 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v251);
  v255 = &v60 - v254;
  v256 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVy0A8Ontology26UsoTask_pay_common_PaymentCSo06INSendI6IntentCGMd, &_s13SiriUtilities11TransformerVy0A8Ontology26UsoTask_pay_common_PaymentCSo06INSendI6IntentCGMR);
  v257 = *(v256 - 8);
  v258 = v256 - 8;
  v259 = (*(v257 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v277);
  v260 = &v60 - v259;
  v261 = type metadata accessor for Siri_Nlu_External_UserParse();
  v262 = *(v261 - 8);
  v263 = v261 - 8;
  v264 = (*(v262 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v261);
  v265 = &v60 - v264;
  v266 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMd, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMR) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v277);
  v267 = &v60 - v266;
  v268 = type metadata accessor for USOParse();
  v270 = *(v268 - 8);
  v269 = v268 - 8;
  v271 = v270;
  v272 = *(v270 + 64);
  v273 = (v272 + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = MEMORY[0x28223BE20](v277);
  v274 = &v60 - v273;
  v275 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v4);
  v276 = &v60 - v275;
  v366 = &v60 - v275;
  v304 = type metadata accessor for Parse();
  v300 = *(v304 - 8);
  v301 = v304 - 8;
  v298 = v300;
  v299 = *(v300 + 64);
  v278 = (v299 + 15) & 0xFFFFFFFFFFFFFFF0;
  v6 = MEMORY[0x28223BE20](v277);
  v279 = &v60 - v278;
  v280 = (v7 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v6);
  v303 = &v60 - v280;
  v292 = type metadata accessor for Logger();
  v290 = *(v292 - 8);
  v291 = v292 - 8;
  v286 = v290[8];
  v285 = (v286 + 15) & 0xFFFFFFFFFFFFFFF0;
  v8 = MEMORY[0x28223BE20](v284);
  v287 = &v60 - v285;
  v288 = (v286 + 15) & 0xFFFFFFFFFFFFFFF0;
  v9 = MEMORY[0x28223BE20](v8);
  v10 = &v60 - v288;
  v289 = &v60 - v288;
  v364 = v9;
  v365 = v11;
  v363 = v12;
  v362 = v13;
  v361 = v14;
  v15 = Logger.payments.unsafeMutableAddressor();
  v293 = v290[2];
  v294 = v290 + 2;
  v293(v10, v15, v292);
  v296 = *(v300 + 16);
  v297 = v300 + 16;
  v296(v303, v295, v304);
  v302 = (*(v298 + 80) + 16) & ~*(v298 + 80);
  v308 = 7;
  v309 = swift_allocObject();
  (*(v300 + 32))(v309 + v302, v303, v304);
  v321 = Logger.logObject.getter();
  v322 = static os_log_type_t.debug.getter();
  v305 = 17;
  v313 = swift_allocObject();
  *(v313 + 16) = 32;
  v315 = swift_allocObject();
  *(v315 + 16) = 8;
  v307 = 32;
  v16 = swift_allocObject();
  v17 = v309;
  v311 = v16;
  *(v16 + 16) = v306;
  *(v16 + 24) = v17;
  v18 = swift_allocObject();
  v19 = v311;
  v318 = v18;
  *(v18 + 16) = v310;
  *(v18 + 24) = v19;
  v320 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  v316 = _allocateUninitializedArray<A>(_:)();
  v319 = v20;

  v21 = v313;
  v22 = v319;
  *v319 = v312;
  v22[1] = v21;

  v23 = v315;
  v24 = v319;
  v319[2] = v314;
  v24[3] = v23;

  v25 = v318;
  v26 = v319;
  v319[4] = v317;
  v26[5] = v25;
  _finalizeUninitializedArray<A>(_:)();

  if (os_log_type_enabled(v321, v322))
  {
    v27 = v225;
    v210 = static UnsafeMutablePointer.allocate(capacity:)();
    v209 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v211 = createStorage<A>(capacity:type:)(0);
    v212 = createStorage<A>(capacity:type:)(1);
    v213 = &v327;
    v327 = v210;
    v214 = &v326;
    v326 = v211;
    v215 = &v325;
    v325 = v212;
    serialize(_:at:)(2, &v327);
    serialize(_:at:)(1, v213);
    v323 = v312;
    v324 = v313;
    closure #1 in osLogInternal(_:log:type:)(&v323, v213, v214, v215);
    v216 = v27;
    if (v27)
    {

      __break(1u);
    }

    else
    {
      v323 = v314;
      v324 = v315;
      closure #1 in osLogInternal(_:log:type:)(&v323, &v327, &v326, &v325);
      v207 = 0;
      v323 = v317;
      v324 = v318;
      closure #1 in osLogInternal(_:log:type:)(&v323, &v327, &v326, &v325);
      v206 = 0;
      _os_log_impl(&dword_2686B1000, v321, v322, "#Parse toSiriKitIntent %s", v210, 0xCu);
      destroyStorage<A>(_:count:)(v211, 0, v209);
      destroyStorage<A>(_:count:)(v212, 1, MEMORY[0x277D84F70] + 8);
      MEMORY[0x26D620BD0](v210, MEMORY[0x277D84B78]);

      v208 = v206;
    }
  }

  else
  {
    v28 = v225;

    v208 = v28;
  }

  v202 = v208;
  MEMORY[0x277D82BD8](v321);
  v203 = v290[1];
  v204 = v290 + 1;
  v203(v289, v292);
  v296(v279, v295, v304);
  v205 = (*(v300 + 88))(v279, v304);
  if (v205 == *MEMORY[0x277D5C150])
  {
    v57 = v230;
    (*(v300 + 96))(v279, v304);
    (*(v227 + 32))(v57, v279, v226);
    v367 = v57;
    v61 = Parse.DirectInvocation.toSiriKitIntent(previousIntent:)(v284, v283);
    v62 = v58;
    (*(v227 + 8))(v230, v226);
    v173 = v61;
    v174 = v62;
    return v173;
  }

  if (v205 != *MEMORY[0x277D5C160])
  {
    (*(v300 + 8))(v279, v304);
    v173 = v277;
    v174 = v277;
    return v173;
  }

  v29 = v276;
  (*(v300 + 96))(v279, v304);
  v195 = *(v270 + 32);
  v196 = v270 + 32;
  v195(v29, v279, v268);
  v366 = v29;
  v30 = USOParse.userParse.getter();
  v198 = MEMORY[0x26D61F2D0](v30);
  (*(v262 + 8))(v265, v261);
  v357[1] = v198;
  v197 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay12SiriNLUTypes0A27_Nlu_External_UserDialogActVGMd, &_sSay12SiriNLUTypes0A27_Nlu_External_UserDialogActVGMR);
  lazy protocol witness table accessor for type [Siri_Nlu_External_UserDialogAct] and conformance [A]();
  Collection.first.getter();

  v199 = type metadata accessor for Siri_Nlu_External_UserDialogAct();
  v200 = *(v199 - 8);
  v201 = v199 - 8;
  if ((*(v200 + 48))(v267, 1) == 1)
  {
    outlined destroy of Siri_Nlu_External_UserDialogAct?(v267);
  }

  else
  {
    v194 = Siri_Nlu_External_UserDialogAct.usoTask.getter();
    (*(v200 + 8))(v267, v199);
    if (v194)
    {
      v193 = v194;
      v192 = v194;
      UsoTask.eraseToAny.getter();

      goto LABEL_13;
    }
  }

  memset(v358, 0, sizeof(v358));
  v359 = 0;
LABEL_13:
  if (v359)
  {
    v189 = v360;
    outlined init with take of Any(v358, v360);
    v191 = v352;
    outlined init with copy of Any(v189, v352);
    v190 = 0;
    type metadata accessor for UsoTask_pay_common_Payment();
    if (swift_dynamicCast())
    {
      v188 = v351;
      v330 = v351;
      MEMORY[0x277D82BE0](v284);
      if (v284)
      {
        v187 = v284;
        v185 = v284;
        objc_opt_self();
        v186 = swift_dynamicCastObjCClass();
        if (v186)
        {
          v184 = v186;
        }

        else
        {
          MEMORY[0x277D82BD8](v185);
          v184 = 0;
        }

        v183 = v184;
      }

      else
      {
        v183 = 0;
      }

      v31 = v202;
      v179 = v183;
      static Transformer<>.transformer(previousIntent:contactResolver:)(v183, v282);
      MEMORY[0x277D82BD8](v179);
      v181 = Transformer.transform.getter();
      v180 = v32;
      (*(v257 + 8))(v260, v256);
      v329 = v188;
      v181(&v328, &v329);
      v182 = v31;
      if (v31)
      {
        v175 = v182;

        v177 = 0;
        v178 = 0;
      }

      else
      {
        v176 = v328;

        v177 = v176;
        v178 = v224;
      }

      v172 = v178;
      v171 = v177;

      __swift_destroy_boxed_opaque_existential_0(v352);
      __swift_destroy_boxed_opaque_existential_0(v360);
      (*(v270 + 8))(v276, v268);
      v173 = v171;
      v174 = v172;
    }

    else
    {
      v170 = 0;
      type metadata accessor for UsoTask_noVerb_common_Payment();
      if (swift_dynamicCast())
      {
        v169 = v350;
        v333 = v350;
        MEMORY[0x277D82BE0](v284);
        if (v284)
        {
          v168 = v284;
          v166 = v284;
          objc_opt_self();
          v167 = swift_dynamicCastObjCClass();
          if (v167)
          {
            v165 = v167;
          }

          else
          {
            MEMORY[0x277D82BD8](v166);
            v165 = 0;
          }

          v164 = v165;
        }

        else
        {
          v164 = 0;
        }

        v33 = v202;
        v160 = v164;
        static Transformer<>.transformer(previousIntent:contactResolver:)(v164, v282);
        MEMORY[0x277D82BD8](v160);
        v162 = Transformer.transform.getter();
        v161 = v34;
        (*(v252 + 8))(v255, v251);
        v332 = v169;
        v162(&v331, &v332);
        v163 = v33;
        if (v33)
        {
          v156 = v163;

          v158 = 0;
          v159 = 0;
        }

        else
        {
          v157 = v331;

          v158 = v157;
          v159 = v224;
        }

        v155 = v159;
        v154 = v158;

        __swift_destroy_boxed_opaque_existential_0(v352);
        __swift_destroy_boxed_opaque_existential_0(v360);
        (*(v270 + 8))(v276, v268);
        v173 = v154;
        v174 = v155;
      }

      else
      {
        v153 = 0;
        type metadata accessor for UsoTask_requestMoney_common_Payment();
        if (swift_dynamicCast())
        {
          v152 = v349;
          v336 = v349;
          MEMORY[0x277D82BE0](v284);
          if (v284)
          {
            v151 = v284;
            v149 = v284;
            objc_opt_self();
            v150 = swift_dynamicCastObjCClass();
            if (v150)
            {
              v148 = v150;
            }

            else
            {
              MEMORY[0x277D82BD8](v149);
              v148 = 0;
            }

            v147 = v148;
          }

          else
          {
            v147 = 0;
          }

          v35 = v202;
          v143 = v147;
          static Transformer<>.transformer(previousIntent:contactResolver:)(v147, v282);
          MEMORY[0x277D82BD8](v143);
          v145 = Transformer.transform.getter();
          v144 = v36;
          (*(v247 + 8))(v250, v246);
          v335 = v152;
          v145(&v334, &v335);
          v146 = v35;
          if (v35)
          {
            v139 = v146;

            v141 = 0;
            v142 = 0;
          }

          else
          {
            v140 = v334;

            v141 = v140;
            v142 = v223;
          }

          v138 = v142;
          v137 = v141;

          __swift_destroy_boxed_opaque_existential_0(v352);
          __swift_destroy_boxed_opaque_existential_0(v360);
          (*(v270 + 8))(v276, v268);
          v173 = v137;
          v174 = v138;
        }

        else
        {
          v136 = 0;
          type metadata accessor for UsoTask_request_common_PaymentAccount();
          if (swift_dynamicCast())
          {
            v135 = v348;
            v339 = v348;
            MEMORY[0x277D82BE0](v284);
            if (v284)
            {
              v134 = v284;
              v132 = v284;
              objc_opt_self();
              v133 = swift_dynamicCastObjCClass();
              if (v133)
              {
                v131 = v133;
              }

              else
              {
                MEMORY[0x277D82BD8](v132);
                v131 = 0;
              }

              v130 = v131;
            }

            else
            {
              v130 = 0;
            }

            v37 = v202;
            v126 = v130;
            static Transformer<>.transformer(previousIntent:)(v130);
            MEMORY[0x277D82BD8](v126);
            v128 = Transformer.transform.getter();
            v127 = v38;
            (*(v242 + 8))(v245, v241);
            v338 = v135;
            v128(&v337, &v338);
            v129 = v37;
            if (v37)
            {
              v122 = v129;

              v124 = 0;
              v125 = 0;
            }

            else
            {
              v123 = v337;

              v124 = v123;
              v125 = v222;
            }

            v121 = v125;
            v120 = v124;

            __swift_destroy_boxed_opaque_existential_0(v352);
            __swift_destroy_boxed_opaque_existential_0(v360);
            (*(v270 + 8))(v276, v268);
            v173 = v120;
            v174 = v121;
          }

          else
          {
            v119 = 0;
            type metadata accessor for UsoTask_summarise_common_PaymentAccount();
            if (swift_dynamicCast())
            {
              v118 = v347;
              v342 = v347;
              MEMORY[0x277D82BE0](v284);
              if (v284)
              {
                v117 = v284;
                v115 = v284;
                objc_opt_self();
                v116 = swift_dynamicCastObjCClass();
                if (v116)
                {
                  v114 = v116;
                }

                else
                {
                  MEMORY[0x277D82BD8](v115);
                  v114 = 0;
                }

                v113 = v114;
              }

              else
              {
                v113 = 0;
              }

              v39 = v202;
              v109 = v113;
              static Transformer<>.transformer(previousIntent:)(v113);
              MEMORY[0x277D82BD8](v109);
              v111 = Transformer.transform.getter();
              v110 = v40;
              (*(v237 + 8))(v240, v236);
              v341 = v118;
              v111(&v340, &v341);
              v112 = v39;
              if (v39)
              {
                v105 = v112;

                v107 = 0;
                v108 = 0;
              }

              else
              {
                v106 = v340;

                v107 = v106;
                v108 = v222;
              }

              v104 = v108;
              v103 = v107;

              __swift_destroy_boxed_opaque_existential_0(v352);
              __swift_destroy_boxed_opaque_existential_0(v360);
              (*(v270 + 8))(v276, v268);
              v173 = v103;
              v174 = v104;
            }

            else
            {
              v102 = 0;
              type metadata accessor for UsoTask_noVerb_common_PaymentAccount();
              if (swift_dynamicCast())
              {
                v101 = v346;
                v345 = v346;
                MEMORY[0x277D82BE0](v284);
                if (v284)
                {
                  v100 = v284;
                  v98 = v284;
                  objc_opt_self();
                  v99 = swift_dynamicCastObjCClass();
                  if (v99)
                  {
                    v97 = v99;
                  }

                  else
                  {
                    MEMORY[0x277D82BD8](v98);
                    v97 = 0;
                  }

                  v96 = v97;
                }

                else
                {
                  v96 = 0;
                }

                v41 = v202;
                v92 = v96;
                static Transformer<>.transformer(previousIntent:)(v96);
                MEMORY[0x277D82BD8](v92);
                v94 = Transformer.transform.getter();
                v93 = v42;
                (*(v232 + 8))(v235, v231);
                v344 = v101;
                v94(&v343, &v344);
                v95 = v41;
                if (v41)
                {
                  v88 = v95;

                  v90 = 0;
                  v91 = 0;
                }

                else
                {
                  v89 = v343;

                  v90 = v89;
                  v91 = v222;
                }

                v87 = v91;
                v86 = v90;

                __swift_destroy_boxed_opaque_existential_0(v352);
                __swift_destroy_boxed_opaque_existential_0(v360);
                (*(v270 + 8))(v276, v268);
                v173 = v86;
                v174 = v87;
              }

              else
              {
                __swift_destroy_boxed_opaque_existential_0(v352);
                __swift_destroy_boxed_opaque_existential_0(v360);
                (*(v270 + 8))(v276, v268);
                v173 = v277;
                v174 = v277;
              }
            }
          }
        }
      }
    }
  }

  else
  {
    v43 = v287;
    outlined destroy of FlowActivity?(v358);
    v44 = Logger.payments.unsafeMutableAddressor();
    v293(v43, v44, v292);
    v72 = v271;
    (*(v270 + 16))(v274, v276, v268);
    v73 = (*(v72 + 80) + 16) & ~*(v72 + 80);
    v76 = 7;
    v77 = swift_allocObject();
    v195((v77 + v73), v274, v268);
    v84 = Logger.logObject.getter();
    v85 = static os_log_type_t.debug.getter();
    v74 = 17;
    v79 = swift_allocObject();
    *(v79 + 16) = 32;
    v80 = swift_allocObject();
    *(v80 + 16) = 8;
    v75 = 32;
    v45 = swift_allocObject();
    v46 = v77;
    v78 = v45;
    *(v45 + 16) = v217;
    *(v45 + 24) = v46;
    v47 = swift_allocObject();
    v48 = v78;
    v82 = v47;
    *(v47 + 16) = v218;
    *(v47 + 24) = v48;
    v81 = _allocateUninitializedArray<A>(_:)();
    v83 = v49;

    v50 = v79;
    v51 = v83;
    *v83 = v219;
    v51[1] = v50;

    v52 = v80;
    v53 = v83;
    v83[2] = v220;
    v53[3] = v52;

    v54 = v82;
    v55 = v83;
    v83[4] = v221;
    v55[5] = v54;
    _finalizeUninitializedArray<A>(_:)();

    if (os_log_type_enabled(v84, v85))
    {
      v56 = v202;
      v65 = static UnsafeMutablePointer.allocate(capacity:)();
      v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v66 = createStorage<A>(capacity:type:)(0);
      v67 = createStorage<A>(capacity:type:)(1);
      v68 = v357;
      v357[0] = v65;
      v69 = &v356;
      v356 = v66;
      v70 = &v355;
      v355 = v67;
      serialize(_:at:)(2, v357);
      serialize(_:at:)(1, v68);
      v353 = v219;
      v354 = v79;
      closure #1 in osLogInternal(_:log:type:)(&v353, v68, v69, v70);
      v71 = v56;
      if (v56)
      {

        __break(1u);
      }

      else
      {
        v353 = v220;
        v354 = v80;
        closure #1 in osLogInternal(_:log:type:)(&v353, v357, &v356, &v355);
        v63 = 0;
        v353 = v221;
        v354 = v82;
        closure #1 in osLogInternal(_:log:type:)(&v353, v357, &v356, &v355);
        _os_log_impl(&dword_2686B1000, v84, v85, "#Parse toSiriKitIntent from USO parse: %s", v65, 0xCu);
        destroyStorage<A>(_:count:)(v66, 0, v64);
        destroyStorage<A>(_:count:)(v67, 1, MEMORY[0x277D84F70] + 8);
        MEMORY[0x26D620BD0](v65, MEMORY[0x277D84B78]);
      }
    }

    else
    {
    }

    MEMORY[0x277D82BD8](v84);
    v203(v287, v292);
    (*(v270 + 8))(v276, v268);
    v173 = v277;
    v174 = v277;
  }

  return v173;
}

uint64_t Parse.confirmationResponse.getter@<X0>(uint64_t a1@<X8>)
{
  v288 = a1;
  v289 = partial apply for implicit closure #1 in Parse.toSiriKitIntent(previousIntent:aceService:contactResolver:);
  v290 = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
  v291 = partial apply for closure #1 in OSLogArguments.append(_:);
  v292 = partial apply for closure #1 in OSLogArguments.append(_:);
  v293 = partial apply for closure #1 in OSLogArguments.append(_:);
  v294 = partial apply for implicit closure #2 in Parse.toSiriKitIntent(previousIntent:aceService:contactResolver:);
  v295 = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
  v296 = partial apply for closure #1 in OSLogArguments.append(_:);
  v297 = partial apply for closure #1 in OSLogArguments.append(_:);
  v298 = partial apply for closure #1 in OSLogArguments.append(_:);
  v299 = partial apply for implicit closure #1 in Parse.toSiriKitIntent(previousIntent:aceService:contactResolver:);
  v300 = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
  v301 = partial apply for closure #1 in OSLogArguments.append(_:);
  v302 = partial apply for closure #1 in OSLogArguments.append(_:);
  v303 = partial apply for closure #1 in OSLogArguments.append(_:);
  v304 = partial apply for implicit closure #1 in Parse.confirmationResponse.getter;
  v305 = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
  v306 = partial apply for closure #1 in OSLogArguments.append(_:);
  v307 = partial apply for closure #1 in OSLogArguments.append(_:);
  v308 = partial apply for closure #1 in OSLogArguments.append(_:);
  v309 = partial apply for implicit closure #4 in Parse.confirmationResponse.getter;
  v310 = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
  v311 = partial apply for closure #1 in OSLogArguments.append(_:);
  v312 = partial apply for closure #1 in OSLogArguments.append(_:);
  v313 = partial apply for closure #1 in OSLogArguments.append(_:);
  v409 = 0;
  v407 = 0;
  v314 = 0;
  v410 = 0;
  v396 = 0;
  v392 = 0;
  v393 = 0;
  v391 = 0;
  v408 = 0;
  v377 = 0;
  v345 = 0;
  v315 = type metadata accessor for Parse.DirectInvocation();
  v317 = *(v315 - 8);
  v316 = v315 - 8;
  v318 = v317;
  v319 = *(v317 + 64);
  v320 = (v319 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v315);
  v321 = v97 - v320;
  v322 = (v1 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v97 - v320);
  v323 = v97 - v322;
  v410 = v97 - v322;
  v324 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMd, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMR) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v345);
  v325 = v97 - v324;
  v326 = type metadata accessor for Siri_Nlu_External_UserParse();
  v327 = *(v326 - 8);
  v328 = v326 - 8;
  v329 = (*(v327 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v345);
  v330 = v97 - v329;
  v331 = type metadata accessor for Siri_Nlu_External_UserDialogAct();
  v332 = *(v331 - 8);
  v333 = v331 - 8;
  v334 = (*(v332 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v345);
  v335 = v97 - v334;
  v409 = v97 - v334;
  v336 = type metadata accessor for USOParse();
  v338 = *(v336 - 8);
  v337 = v336 - 8;
  v339 = v338;
  v340 = *(v338 + 64);
  v341 = (v340 + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x28223BE20](v345);
  v342 = v97 - v341;
  v343 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v2);
  v344 = v97 - v343;
  v408 = v97 - v343;
  v346 = type metadata accessor for Logger();
  v347 = *(v346 - 8);
  v348 = v346 - 8;
  v349 = (*(v347 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = MEMORY[0x28223BE20](v345);
  v350 = v97 - v349;
  v351 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  v6 = MEMORY[0x28223BE20](v4);
  v352 = v97 - v351;
  v353 = (v7 + 15) & 0xFFFFFFFFFFFFFFF0;
  v8 = MEMORY[0x28223BE20](v6);
  v354 = v97 - v353;
  v355 = (v9 + 15) & 0xFFFFFFFFFFFFFFF0;
  v10 = MEMORY[0x28223BE20](v8);
  v356 = v97 - v355;
  v357 = (v11 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v10);
  v358 = v97 - v357;
  v369 = type metadata accessor for Parse();
  v367 = *(v369 - 8);
  v368 = v369 - 8;
  v360 = v367;
  v362 = *(v367 + 64);
  v361 = (v362 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v369);
  v363 = v97 - v361;
  v364 = (v362 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v97 - v361);
  v370 = (v97 - v364);
  v407 = v12;
  v365 = *(v367 + 16);
  v366 = v367 + 16;
  v365();
  v371 = (*(v367 + 88))(v370, v369);
  if (v371 == *MEMORY[0x277D5C150])
  {
    v62 = v323;
    (*(v367 + 96))(v370, v369);
    v159 = *(v317 + 32);
    v160 = v317 + 32;
    v159(v62, v370, v315);
    v410 = v62;
    v161 = Parse.DirectInvocation.userData.getter();
    if (v161)
    {
      v158 = v161;
      v156 = v161;
      v396 = v161;
      v63 = Constants.DirectInvocationPayloadKeys.rawValue.getter(0);
      v157 = v394;
      v394[0] = v63;
      v394[1] = v64;
      MEMORY[0x26D620650](v395);
      outlined destroy of String.UTF8View(v157);
      if (v395[3])
      {
        if (swift_dynamicCast())
        {
          v154 = v390[2];
          v155 = v390[3];
        }

        else
        {
          v154 = 0;
          v155 = 0;
        }

        v152 = v154;
        v153 = v155;
      }

      else
      {
        outlined destroy of FlowActivity?(v395);
        v152 = 0;
        v153 = 0;
      }

      v150 = v153;
      v151 = v152;
      if (v153)
      {
        v148 = v151;
        v149 = v150;
        v146._object = v150;
        v146._countAndFlagsBits = v151;
        v392 = v151;
        v393 = v150;

        LOBYTE(v65) = Constants.DirectInvocationButtonType.init(rawValue:)(v146);
        v147 = v65;
        if (v65 != 2)
        {
          v145 = v147;
          v144 = 1;
          v391 = v147 & 1;
          Constants.DirectInvocationButtonType.confirmationResponse.getter(v147 & 1, v288);
          v66 = type metadata accessor for ConfirmationResponse();
          (*(*(v66 - 8) + 56))(v288, 0, v144);

          return (*(v317 + 8))(v323, v315);
        }
      }

      else
      {
      }
    }

    v67 = v352;
    v68 = Logger.payments.unsafeMutableAddressor();
    (*(v347 + 16))(v67, v68, v346);
    v129 = v318;
    (*(v317 + 16))(v321, v323, v315);
    v130 = (*(v129 + 80) + 16) & ~*(v129 + 80);
    v133 = 7;
    v134 = swift_allocObject();
    v159((v134 + v130), v321, v315);
    v142 = Logger.logObject.getter();
    v143 = static os_log_type_t.error.getter();
    v131 = 17;
    v136 = swift_allocObject();
    *(v136 + 16) = 32;
    v137 = swift_allocObject();
    *(v137 + 16) = 8;
    v132 = 32;
    v69 = swift_allocObject();
    v70 = v134;
    v135 = v69;
    *(v69 + 16) = v309;
    *(v69 + 24) = v70;
    v71 = swift_allocObject();
    v72 = v135;
    v139 = v71;
    *(v71 + 16) = v310;
    *(v71 + 24) = v72;
    v141 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
    v138 = _allocateUninitializedArray<A>(_:)();
    v140 = v73;

    v74 = v136;
    v75 = v140;
    *v140 = v311;
    v75[1] = v74;

    v76 = v137;
    v77 = v140;
    v140[2] = v312;
    v77[3] = v76;

    v78 = v139;
    v79 = v140;
    v140[4] = v313;
    v79[5] = v78;
    _finalizeUninitializedArray<A>(_:)();

    if (os_log_type_enabled(v142, v143))
    {
      v80 = v314;
      v122 = static UnsafeMutablePointer.allocate(capacity:)();
      v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v123 = createStorage<A>(capacity:type:)(0);
      v124 = createStorage<A>(capacity:type:)(1);
      v125 = &v401;
      v401 = v122;
      v126 = &v400;
      v400 = v123;
      v127 = &v399;
      v399 = v124;
      serialize(_:at:)(2, &v401);
      serialize(_:at:)(1, v125);
      v397 = v311;
      v398 = v136;
      closure #1 in osLogInternal(_:log:type:)(&v397, v125, v126, v127);
      v128 = v80;
      if (v80)
      {

        __break(1u);
      }

      else
      {
        v397 = v312;
        v398 = v137;
        closure #1 in osLogInternal(_:log:type:)(&v397, &v401, &v400, &v399);
        v120 = 0;
        v397 = v313;
        v398 = v139;
        closure #1 in osLogInternal(_:log:type:)(&v397, &v401, &v400, &v399);
        _os_log_impl(&dword_2686B1000, v142, v143, "#confirmationResponse couldn't get button press from Direct invocation %s", v122, 0xCu);
        destroyStorage<A>(_:count:)(v123, 0, v121);
        destroyStorage<A>(_:count:)(v124, 1, MEMORY[0x277D84F70] + 8);
        MEMORY[0x26D620BD0](v122, MEMORY[0x277D84B78]);
      }
    }

    else
    {
    }

    MEMORY[0x277D82BD8](v142);
    (*(v347 + 8))(v352, v346);
    v81 = type metadata accessor for ConfirmationResponse();
    (*(*(v81 - 8) + 56))(v288, 1);
    return (*(v317 + 8))(v323, v315);
  }

  else if (v371 == *MEMORY[0x277D5C130])
  {
    v13 = v358;
    (*(v367 + 96))(v370, v369);
    v274 = *v370;
    v377 = v274;
    v14 = Logger.payments.unsafeMutableAddressor();
    (*(v347 + 16))(v13, v14, v346);
    swift_unknownObjectRetain();
    v277 = 7;
    v278 = swift_allocObject();
    *(v278 + 16) = v274;
    v286 = Logger.logObject.getter();
    v287 = static os_log_type_t.debug.getter();
    v275 = 17;
    v280 = swift_allocObject();
    *(v280 + 16) = 32;
    v281 = swift_allocObject();
    *(v281 + 16) = 8;
    v276 = 32;
    v15 = swift_allocObject();
    v16 = v278;
    v279 = v15;
    *(v15 + 16) = v304;
    *(v15 + 24) = v16;
    v17 = swift_allocObject();
    v18 = v279;
    v283 = v17;
    *(v17 + 16) = v305;
    *(v17 + 24) = v18;
    v285 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
    v282 = _allocateUninitializedArray<A>(_:)();
    v284 = v19;

    v20 = v280;
    v21 = v284;
    *v284 = v306;
    v21[1] = v20;

    v22 = v281;
    v23 = v284;
    v284[2] = v307;
    v23[3] = v22;

    v24 = v283;
    v25 = v284;
    v284[4] = v308;
    v25[5] = v24;
    _finalizeUninitializedArray<A>(_:)();

    if (os_log_type_enabled(v286, v287))
    {
      v26 = v314;
      v267 = static UnsafeMutablePointer.allocate(capacity:)();
      v266 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v268 = createStorage<A>(capacity:type:)(0);
      v269 = createStorage<A>(capacity:type:)(1);
      v270 = &v376;
      v376 = v267;
      v271 = &v375;
      v375 = v268;
      v272 = &v374;
      v374 = v269;
      serialize(_:at:)(2, &v376);
      serialize(_:at:)(1, v270);
      v372 = v306;
      v373 = v280;
      closure #1 in osLogInternal(_:log:type:)(&v372, v270, v271, v272);
      v273 = v26;
      if (v26)
      {

        __break(1u);
      }

      else
      {
        v372 = v307;
        v373 = v281;
        closure #1 in osLogInternal(_:log:type:)(&v372, &v376, &v375, &v374);
        v265 = 0;
        v372 = v308;
        v373 = v283;
        closure #1 in osLogInternal(_:log:type:)(&v372, &v376, &v375, &v374);
        _os_log_impl(&dword_2686B1000, v286, v287, "parse is %s", v267, 0xCu);
        destroyStorage<A>(_:count:)(v268, 0, v266);
        destroyStorage<A>(_:count:)(v269, 1, MEMORY[0x277D84F70] + 8);
        MEMORY[0x26D620BD0](v267, MEMORY[0x277D84B78]);
      }
    }

    else
    {
    }

    MEMORY[0x277D82BD8](v286);
    (*(v347 + 8))(v358, v346);
    swift_unknownObjectRetain();
    objc_opt_self();
    v264 = swift_dynamicCastObjCClass();
    if (v264)
    {
      MEMORY[0x277D82BD8](v264);
      v263 = 1;
    }

    else
    {
      swift_unknownObjectRelease();
      v263 = 0;
    }

    if (v263)
    {
      v259 = *MEMORY[0x277D5BED8];
      v262 = type metadata accessor for ConfirmationResponse();
      v260 = *(v262 - 8);
      v261 = v262 - 8;
      (*(v260 + 104))(v288, v259);
      (*(v260 + 56))(v288, 0, 1, v262);
      return swift_unknownObjectRelease();
    }

    else
    {
      swift_unknownObjectRetain();
      objc_opt_self();
      v258 = swift_dynamicCastObjCClass();
      if (v258)
      {
        MEMORY[0x277D82BD8](v258);
        v257 = 1;
      }

      else
      {
        swift_unknownObjectRelease();
        v257 = 0;
      }

      if (v257)
      {
        v253 = *MEMORY[0x277D5BED0];
        v256 = type metadata accessor for ConfirmationResponse();
        v254 = *(v256 - 8);
        v255 = v256 - 8;
        (*(v254 + 104))(v288, v253);
        (*(v254 + 56))(v288, 0, 1, v256);
        return swift_unknownObjectRelease();
      }

      else
      {
        swift_unknownObjectRetain();
        objc_opt_self();
        v252 = swift_dynamicCastObjCClass();
        if (v252)
        {
          MEMORY[0x277D82BD8](v252);
          v251 = 1;
        }

        else
        {
          swift_unknownObjectRelease();
          v251 = 0;
        }

        if (v251)
        {
          v247 = *MEMORY[0x277D5BED0];
          v250 = type metadata accessor for ConfirmationResponse();
          v248 = *(v250 - 8);
          v249 = v250 - 8;
          (*(v248 + 104))(v288, v247);
          (*(v248 + 56))(v288, 0, 1, v250);
        }

        else
        {
          v28 = type metadata accessor for ConfirmationResponse();
          (*(*(v28 - 8) + 56))(v288, 1);
        }

        return swift_unknownObjectRelease();
      }
    }
  }

  else if (v371 == *MEMORY[0x277D5C160])
  {
    v29 = v356;
    (*(v367 + 96))(v370, v369);
    v230 = v339;
    v233 = *(v338 + 32);
    v232 = v338 + 32;
    v233(v344, v370, v336);
    v408 = v344;
    v30 = Logger.payments.unsafeMutableAddressor();
    v228 = *(v347 + 16);
    v229 = v347 + 16;
    v228(v29, v30, v346);
    (*(v338 + 16))(v342, v344, v336);
    v231 = (*(v230 + 80) + 16) & ~*(v230 + 80);
    v236 = 7;
    v237 = swift_allocObject();
    v233((v237 + v231), v342, v336);
    v245 = Logger.logObject.getter();
    v246 = static os_log_type_t.debug.getter();
    v234 = 17;
    v239 = swift_allocObject();
    *(v239 + 16) = 32;
    v240 = swift_allocObject();
    *(v240 + 16) = 8;
    v235 = 32;
    v31 = swift_allocObject();
    v32 = v237;
    v238 = v31;
    *(v31 + 16) = v294;
    *(v31 + 24) = v32;
    v33 = swift_allocObject();
    v34 = v238;
    v242 = v33;
    *(v33 + 16) = v295;
    *(v33 + 24) = v34;
    v244 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
    v241 = _allocateUninitializedArray<A>(_:)();
    v243 = v35;

    v36 = v239;
    v37 = v243;
    *v243 = v296;
    v37[1] = v36;

    v38 = v240;
    v39 = v243;
    v243[2] = v297;
    v39[3] = v38;

    v40 = v242;
    v41 = v243;
    v243[4] = v298;
    v41[5] = v40;
    _finalizeUninitializedArray<A>(_:)();

    if (os_log_type_enabled(v245, v246))
    {
      v42 = v314;
      v221 = static UnsafeMutablePointer.allocate(capacity:)();
      v220 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v222 = createStorage<A>(capacity:type:)(0);
      v223 = createStorage<A>(capacity:type:)(1);
      v224 = v382;
      v382[0] = v221;
      v225 = &v381;
      v381 = v222;
      v226 = &v380;
      v380 = v223;
      serialize(_:at:)(2, v382);
      serialize(_:at:)(1, v224);
      v378 = v296;
      v379 = v239;
      closure #1 in osLogInternal(_:log:type:)(&v378, v224, v225, v226);
      v227 = v42;
      if (v42)
      {

        __break(1u);
      }

      else
      {
        v378 = v297;
        v379 = v240;
        closure #1 in osLogInternal(_:log:type:)(&v378, v382, &v381, &v380);
        v218 = 0;
        v378 = v298;
        v379 = v242;
        closure #1 in osLogInternal(_:log:type:)(&v378, v382, &v381, &v380);
        v217 = 0;
        _os_log_impl(&dword_2686B1000, v245, v246, "parse is %s", v221, 0xCu);
        destroyStorage<A>(_:count:)(v222, 0, v220);
        destroyStorage<A>(_:count:)(v223, 1, MEMORY[0x277D84F70] + 8);
        MEMORY[0x26D620BD0](v221, MEMORY[0x277D84B78]);

        v219 = v217;
      }
    }

    else
    {
      v43 = v314;

      v219 = v43;
    }

    v212 = v219;
    MEMORY[0x277D82BD8](v245);
    v213 = *(v347 + 8);
    v214 = v347 + 8;
    v213(v356, v346);
    v44 = USOParse.userParse.getter();
    v215 = MEMORY[0x26D61F2D0](v44);
    (*(v327 + 8))(v330, v326);
    v390[1] = v215;
    v216 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay12SiriNLUTypes0A27_Nlu_External_UserDialogActVGMd, &_sSay12SiriNLUTypes0A27_Nlu_External_UserDialogActVGMR);
    lazy protocol witness table accessor for type [Siri_Nlu_External_UserDialogAct] and conformance [A]();
    Collection.first.getter();
    if ((*(v332 + 48))(v325, 1, v331) == 1)
    {
      v47 = v354;
      outlined destroy of Siri_Nlu_External_UserDialogAct?(v325);

      v48 = Logger.payments.unsafeMutableAddressor();
      v228(v47, v48, v346);
      (v365)(v363, v359, v369);
      v171 = (*(v360 + 80) + 16) & ~*(v360 + 80);
      v174 = 7;
      v175 = swift_allocObject();
      (*(v367 + 32))(v175 + v171, v363, v369);
      v182 = Logger.logObject.getter();
      v183 = static os_log_type_t.error.getter();
      v172 = 17;
      v177 = swift_allocObject();
      *(v177 + 16) = 32;
      v178 = swift_allocObject();
      *(v178 + 16) = 8;
      v173 = 32;
      v49 = swift_allocObject();
      v50 = v175;
      v176 = v49;
      *(v49 + 16) = v299;
      *(v49 + 24) = v50;
      v51 = swift_allocObject();
      v52 = v176;
      v180 = v51;
      *(v51 + 16) = v300;
      *(v51 + 24) = v52;
      v179 = _allocateUninitializedArray<A>(_:)();
      v181 = v53;

      v54 = v177;
      v55 = v181;
      *v181 = v301;
      v55[1] = v54;

      v56 = v178;
      v57 = v181;
      v181[2] = v302;
      v57[3] = v56;

      v58 = v180;
      v59 = v181;
      v181[4] = v303;
      v59[5] = v58;
      _finalizeUninitializedArray<A>(_:)();

      if (os_log_type_enabled(v182, v183))
      {
        v60 = v212;
        v164 = static UnsafeMutablePointer.allocate(capacity:)();
        v163 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        v165 = createStorage<A>(capacity:type:)(0);
        v166 = createStorage<A>(capacity:type:)(1);
        v167 = v390;
        v390[0] = v164;
        v168 = &v389;
        v389 = v165;
        v169 = &v388;
        v388 = v166;
        serialize(_:at:)(2, v390);
        serialize(_:at:)(1, v167);
        v386 = v301;
        v387 = v177;
        closure #1 in osLogInternal(_:log:type:)(&v386, v167, v168, v169);
        v170 = v60;
        if (v60)
        {

          __break(1u);
        }

        else
        {
          v386 = v302;
          v387 = v178;
          closure #1 in osLogInternal(_:log:type:)(&v386, v390, &v389, &v388);
          v162 = 0;
          v386 = v303;
          v387 = v180;
          closure #1 in osLogInternal(_:log:type:)(&v386, v390, &v389, &v388);
          _os_log_impl(&dword_2686B1000, v182, v183, "#confirmationResponse Couldn't find user dialog act in parse: %s", v164, 0xCu);
          destroyStorage<A>(_:count:)(v165, 0, v163);
          destroyStorage<A>(_:count:)(v166, 1, MEMORY[0x277D84F70] + 8);
          MEMORY[0x26D620BD0](v164, MEMORY[0x277D84B78]);
        }
      }

      else
      {
      }

      MEMORY[0x277D82BD8](v182);
      v213(v354, v346);
      v61 = type metadata accessor for ConfirmationResponse();
      (*(*(v61 - 8) + 56))(v288, 1);
      return (*(v338 + 8))(v344, v336);
    }

    else
    {
      (*(v332 + 32))(v335, v325, v331);

      if (Siri_Nlu_External_UserDialogAct.hasUserStatedTask.getter())
      {
        v211 = Siri_Nlu_External_UserDialogAct.usoTask.getter();
        if (v211)
        {
          v210 = v211;
          v209 = v211;
          UsoTask.eraseToAny.getter();
        }

        else
        {
          memset(v384, 0, sizeof(v384));
          v385 = 0;
        }

        if (v385)
        {
          v208 = v383;
          outlined init with copy of Any?(v384, v383);
          v207 = 0;
          type metadata accessor for UsoTask_pay_common_Payment();
          if (swift_dynamicCast())
          {
            v206 = v382[2];
            v202 = *MEMORY[0x277D5BED8];
            v205 = type metadata accessor for ConfirmationResponse();
            v203 = *(v205 - 8);
            v204 = v205 - 8;
            (*(v203 + 104))(v288, v202);
            (*(v203 + 56))(v288, 0, 1, v205);

            __swift_destroy_boxed_opaque_existential_0(v383);
            outlined destroy of FlowActivity?(v384);
            (*(v332 + 8))(v335, v331);
            return (*(v338 + 8))(v344, v336);
          }

          v201 = 0;
          type metadata accessor for UsoTask_requestMoney_common_Payment();
          if (swift_dynamicCast())
          {
            v200 = v382[1];
            v196 = *MEMORY[0x277D5BED8];
            v199 = type metadata accessor for ConfirmationResponse();
            v197 = *(v199 - 8);
            v198 = v199 - 8;
            (*(v197 + 104))(v288, v196);
            (*(v197 + 56))(v288, 0, 1, v199);

            __swift_destroy_boxed_opaque_existential_0(v383);
            outlined destroy of FlowActivity?(v384);
            (*(v332 + 8))(v335, v331);
            return (*(v338 + 8))(v344, v336);
          }

          __swift_destroy_boxed_opaque_existential_0(v383);
        }

        v45 = type metadata accessor for ConfirmationResponse();
        (*(*(v45 - 8) + 56))(v288, 1);
        outlined destroy of FlowActivity?(v384);
        (*(v332 + 8))(v335, v331);
        return (*(v338 + 8))(v344, v336);
      }

      else if (Siri_Nlu_External_UserDialogAct.hasAccepted.getter())
      {
        v192 = *MEMORY[0x277D5BED8];
        v195 = type metadata accessor for ConfirmationResponse();
        v193 = *(v195 - 8);
        v194 = v195 - 8;
        (*(v193 + 104))(v288, v192);
        (*(v193 + 56))(v288, 0, 1, v195);
        (*(v332 + 8))(v335, v331);
        return (*(v338 + 8))(v344, v336);
      }

      else if (Siri_Nlu_External_UserDialogAct.hasRejected.getter())
      {
        v188 = *MEMORY[0x277D5BED0];
        v191 = type metadata accessor for ConfirmationResponse();
        v189 = *(v191 - 8);
        v190 = v191 - 8;
        (*(v189 + 104))(v288, v188);
        (*(v189 + 56))(v288, 0, 1, v191);
        (*(v332 + 8))(v335, v331);
        return (*(v338 + 8))(v344, v336);
      }

      else
      {
        if (Siri_Nlu_External_UserDialogAct.hasCancelled.getter())
        {
          v184 = *MEMORY[0x277D5BED0];
          v187 = type metadata accessor for ConfirmationResponse();
          v185 = *(v187 - 8);
          v186 = v187 - 8;
          (*(v185 + 104))(v288, v184);
          (*(v185 + 56))(v288, 0, 1, v187);
        }

        else
        {
          v46 = type metadata accessor for ConfirmationResponse();
          (*(*(v46 - 8) + 56))(v288, 1);
        }

        (*(v332 + 8))(v335, v331);
        return (*(v338 + 8))(v344, v336);
      }
    }
  }

  else
  {
    v82 = v350;
    v83 = Logger.payments.unsafeMutableAddressor();
    (*(v347 + 16))(v82, v83, v346);
    (v365)(v363, v359, v369);
    v106 = (*(v360 + 80) + 16) & ~*(v360 + 80);
    v109 = 7;
    v110 = swift_allocObject();
    (*(v367 + 32))(v110 + v106, v363, v369);
    v118 = Logger.logObject.getter();
    v119 = static os_log_type_t.error.getter();
    v107 = 17;
    v112 = swift_allocObject();
    *(v112 + 16) = 32;
    v113 = swift_allocObject();
    *(v113 + 16) = 8;
    v108 = 32;
    v84 = swift_allocObject();
    v85 = v110;
    v111 = v84;
    *(v84 + 16) = v289;
    *(v84 + 24) = v85;
    v86 = swift_allocObject();
    v87 = v111;
    v115 = v86;
    *(v86 + 16) = v290;
    *(v86 + 24) = v87;
    v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
    v114 = _allocateUninitializedArray<A>(_:)();
    v116 = v88;

    v89 = v112;
    v90 = v116;
    *v116 = v291;
    v90[1] = v89;

    v91 = v113;
    v92 = v116;
    v116[2] = v292;
    v92[3] = v91;

    v93 = v115;
    v94 = v116;
    v116[4] = v293;
    v94[5] = v93;
    _finalizeUninitializedArray<A>(_:)();

    if (os_log_type_enabled(v118, v119))
    {
      v95 = v314;
      v99 = static UnsafeMutablePointer.allocate(capacity:)();
      v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v100 = createStorage<A>(capacity:type:)(0);
      v101 = createStorage<A>(capacity:type:)(1);
      v102 = &v406;
      v406 = v99;
      v103 = &v405;
      v405 = v100;
      v104 = &v404;
      v404 = v101;
      serialize(_:at:)(2, &v406);
      serialize(_:at:)(1, v102);
      v402 = v291;
      v403 = v112;
      closure #1 in osLogInternal(_:log:type:)(&v402, v102, v103, v104);
      v105 = v95;
      if (v95)
      {

        __break(1u);
      }

      else
      {
        v402 = v292;
        v403 = v113;
        closure #1 in osLogInternal(_:log:type:)(&v402, &v406, &v405, &v404);
        v97[1] = 0;
        v402 = v293;
        v403 = v115;
        closure #1 in osLogInternal(_:log:type:)(&v402, &v406, &v405, &v404);
        _os_log_impl(&dword_2686B1000, v118, v119, "#confirmationResponse Unexpected parse type: %s", v99, 0xCu);
        destroyStorage<A>(_:count:)(v100, 0, v98);
        destroyStorage<A>(_:count:)(v101, 1, MEMORY[0x277D84F70] + 8);
        MEMORY[0x26D620BD0](v99, MEMORY[0x277D84B78]);
      }
    }

    else
    {
    }

    MEMORY[0x277D82BD8](v118);
    (*(v347 + 8))(v350, v346);
    v96 = type metadata accessor for ConfirmationResponse();
    (*(*(v96 - 8) + 56))(v288, 1);
    return (*(v367 + 8))(v370, v369);
  }
}

Swift::String_optional __swiftcall Parse.toAppId()()
{
  v234 = 0;
  v276 = 0;
  v274 = 0;
  v218 = 0;
  v275 = 0;
  v265 = 0;
  v259 = 0;
  v258 = 0;
  v219 = type metadata accessor for Logger();
  v220 = *(v219 - 8);
  v221 = v220;
  v224 = *(v220 + 64);
  MEMORY[0x28223BE20](v219 - 8);
  v226 = (v224 + 15) & 0xFFFFFFFFFFFFFFF0;
  v222 = &v69 - v226;
  MEMORY[0x28223BE20](&v69 - v226);
  v223 = &v69 - v226;
  MEMORY[0x28223BE20](&v69 - v226);
  v225 = &v69 - v226;
  MEMORY[0x28223BE20](&v69 - v226);
  v227 = &v69 - v226;
  v228 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMd, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMR) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v234);
  v229 = &v69 - v228;
  v230 = type metadata accessor for Siri_Nlu_External_UserDialogAct();
  v231 = *(v230 - 8);
  v232 = v231;
  v0 = *(v231 + 64);
  MEMORY[0x28223BE20](v234);
  v233 = &v69 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v276 = v233;
  v235 = type metadata accessor for USOParse();
  v236 = *(v235 - 8);
  v237 = v236;
  v2 = *(v236 + 64);
  MEMORY[0x28223BE20](v234);
  v238 = &v69 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v275 = v238;
  v251 = type metadata accessor for Parse();
  v240 = v251;
  v241 = *(v251 - 8);
  v250 = v241;
  v242 = v241;
  v244 = *(v241 + 64);
  v243 = v244;
  MEMORY[0x28223BE20](v251 - 8);
  v246 = (v244 + 15) & 0xFFFFFFFFFFFFFFF0;
  v245 = &v69 - v246;
  MEMORY[0x28223BE20](&v69 - v246);
  v252 = &v69 - v246;
  v247 = &v69 - v246;
  v274 = v4;
  v248 = *(v250 + 16);
  v249 = (v250 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v248();
  if ((*(v250 + 88))(v252, v251) == *MEMORY[0x277D5C160])
  {
    v5 = v238;
    (*(v242 + 96))(v247, v240);
    (*(v237 + 32))(v5, v247, v235);
    v275 = v5;
    USOParse.userDialogAct.getter(v229);
    if ((*(v232 + 48))(v229, 1, v230) == 1)
    {
      outlined destroy of Siri_Nlu_External_UserDialogAct?(v229);
    }

    else
    {
      (*(v232 + 32))(v233, v229, v230);
      v216 = Siri_Nlu_External_UserDialogAct.appId.getter();
      v217 = v6;
      if (v6)
      {
        v214 = v216;
        v215 = v217;
        v7 = v227;
        v194 = v217;
        v193 = v216;
        v258 = v216;
        v259 = v217;
        v8 = Logger.payments.unsafeMutableAddressor();
        (*(v221 + 16))(v7, v8, v219);

        v197 = 32;
        v201 = 32;
        v202 = 7;
        v9 = swift_allocObject();
        v10 = v194;
        v203 = v9;
        *(v9 + 16) = v193;
        *(v9 + 24) = v10;
        v213 = Logger.logObject.getter();
        v195 = v213;
        v212 = static os_log_type_t.debug.getter();
        v196 = v212;
        v198 = 17;
        v206 = swift_allocObject();
        v199 = v206;
        *(v206 + 16) = v197;
        v207 = swift_allocObject();
        v200 = v207;
        *(v207 + 16) = 8;
        v11 = swift_allocObject();
        v12 = v203;
        v204 = v11;
        *(v11 + 16) = partial apply for implicit closure #1 in static Logger.logForCrash(_:);
        *(v11 + 24) = v12;
        v13 = swift_allocObject();
        v14 = v204;
        v210 = v13;
        v205 = v13;
        *(v13 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
        *(v13 + 24) = v14;
        v211 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
        v208 = _allocateUninitializedArray<A>(_:)();
        v209 = v15;

        v16 = v206;
        v17 = v209;
        *v209 = partial apply for closure #1 in OSLogArguments.append(_:);
        v17[1] = v16;

        v18 = v207;
        v19 = v209;
        v209[2] = partial apply for closure #1 in OSLogArguments.append(_:);
        v19[3] = v18;

        v20 = v209;
        v21 = v210;
        v209[4] = partial apply for closure #1 in OSLogArguments.append(_:);
        v20[5] = v21;
        _finalizeUninitializedArray<A>(_:)();

        if (os_log_type_enabled(v213, v212))
        {
          v23 = v218;
          v186 = static UnsafeMutablePointer.allocate(capacity:)();
          v183 = v186;
          v184 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
          v187 = createStorage<A>(capacity:type:)(0);
          v185 = v187;
          v189 = 1;
          v188 = createStorage<A>(capacity:type:)(1);
          v257 = v186;
          v256 = v187;
          v255 = v188;
          v190 = &v257;
          serialize(_:at:)(2, &v257);
          serialize(_:at:)(v189, v190);
          v253 = partial apply for closure #1 in OSLogArguments.append(_:);
          v254 = v199;
          closure #1 in osLogInternal(_:log:type:)(&v253, v190, &v256, &v255);
          v191 = v23;
          v192 = v23;
          if (v23)
          {
            v181 = 0;

            __break(1u);
          }

          else
          {
            v253 = partial apply for closure #1 in OSLogArguments.append(_:);
            v254 = v200;
            closure #1 in osLogInternal(_:log:type:)(&v253, &v257, &v256, &v255);
            v179 = 0;
            v180 = 0;
            v253 = partial apply for closure #1 in OSLogArguments.append(_:);
            v254 = v205;
            closure #1 in osLogInternal(_:log:type:)(&v253, &v257, &v256, &v255);
            v177 = 0;
            v178 = 0;
            _os_log_impl(&dword_2686B1000, v195, v196, "#Parse toAppId() found app id in user dialog act: %s", v183, 0xCu);
            destroyStorage<A>(_:count:)(v185, 0, v184);
            destroyStorage<A>(_:count:)(v188, 1, MEMORY[0x277D84F70] + 8);
            MEMORY[0x26D620BD0](v183, MEMORY[0x277D84B78]);

            v182 = v177;
          }
        }

        else
        {
          v24 = v218;

          v182 = v24;
        }

        v173 = v182;

        (*(v221 + 8))(v227, v219);
        v172 = v194;
        (*(v232 + 8))(v233, v230);
        (*(v237 + 8))(v238, v235);
        v174 = v193;
        v175 = v172;
        v176 = v173;
        goto LABEL_33;
      }

      (*(v232 + 8))(v233, v230);
    }

    type metadata accessor for ReferenceResolutionClient();
    v169 = ReferenceResolutionClient.__allocating_init()();
    v171 = ReferenceResolutionClient.resolveAppDisambiguationReference(from:)(v238);
    v170 = v171;

    if (v171)
    {
      v168 = v170;
      v25 = v225;
      v155 = v170;
      v265 = v170;
      v26 = Logger.payments.unsafeMutableAddressor();
      (*(v221 + 16))(v25, v26, v219);

      v167 = Logger.logObject.getter();
      v149 = v167;
      v166 = static os_log_type_t.debug.getter();
      v150 = v166;
      v151 = 17;
      v157 = 7;
      v160 = swift_allocObject();
      v152 = v160;
      v153 = 32;
      *(v160 + 16) = 32;
      v27 = swift_allocObject();
      v28 = v153;
      v161 = v27;
      v154 = v27;
      *(v27 + 16) = 8;
      v156 = v28;
      v29 = swift_allocObject();
      v30 = v155;
      v158 = v29;
      *(v29 + 16) = partial apply for implicit closure #13 in closure #1 in static Transformer<>.transformer(previousIntent:contactResolver:);
      *(v29 + 24) = v30;
      v31 = swift_allocObject();
      v32 = v158;
      v164 = v31;
      v159 = v31;
      *(v31 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
      *(v31 + 24) = v32;
      v165 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
      v162 = _allocateUninitializedArray<A>(_:)();
      v163 = v33;

      v34 = v160;
      v35 = v163;
      *v163 = partial apply for closure #1 in OSLogArguments.append(_:);
      v35[1] = v34;

      v36 = v161;
      v37 = v163;
      v163[2] = partial apply for closure #1 in OSLogArguments.append(_:);
      v37[3] = v36;

      v38 = v163;
      v39 = v164;
      v163[4] = partial apply for closure #1 in OSLogArguments.append(_:);
      v38[5] = v39;
      _finalizeUninitializedArray<A>(_:)();

      if (os_log_type_enabled(v167, v166))
      {
        v40 = v218;
        v142 = static UnsafeMutablePointer.allocate(capacity:)();
        v139 = v142;
        v140 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        v143 = createStorage<A>(capacity:type:)(0);
        v141 = v143;
        v145 = 1;
        v144 = createStorage<A>(capacity:type:)(1);
        v264 = v142;
        v263 = v143;
        v262 = v144;
        v146 = &v264;
        serialize(_:at:)(2, &v264);
        serialize(_:at:)(v145, v146);
        v260 = partial apply for closure #1 in OSLogArguments.append(_:);
        v261 = v152;
        closure #1 in osLogInternal(_:log:type:)(&v260, v146, &v263, &v262);
        v147 = v40;
        v148 = v40;
        if (v40)
        {
          v137 = 0;

          __break(1u);
        }

        else
        {
          v260 = partial apply for closure #1 in OSLogArguments.append(_:);
          v261 = v154;
          closure #1 in osLogInternal(_:log:type:)(&v260, &v264, &v263, &v262);
          v135 = 0;
          v136 = 0;
          v260 = partial apply for closure #1 in OSLogArguments.append(_:);
          v261 = v159;
          closure #1 in osLogInternal(_:log:type:)(&v260, &v264, &v263, &v262);
          v133 = 0;
          v134 = 0;
          _os_log_impl(&dword_2686B1000, v149, v150, "#Parse toAppId() found app id in ordinal selection: %s", v139, 0xCu);
          destroyStorage<A>(_:count:)(v141, 0, v140);
          destroyStorage<A>(_:count:)(v144, 1, MEMORY[0x277D84F70] + 8);
          MEMORY[0x26D620BD0](v139, MEMORY[0x277D84B78]);

          v138 = v133;
        }
      }

      else
      {
        v41 = v218;

        v138 = v41;
      }

      v132 = v138;

      (*(v221 + 8))(v225, v219);
      v130 = UsoEntity_common_App.appIdentifier.getter();
      v131 = v42;

      (*(v237 + 8))(v238, v235);
      v174 = v130;
      v175 = v131;
      v176 = v132;
      goto LABEL_33;
    }

    (*(v237 + 8))(v238, v235);
    v129 = v218;
  }

  else
  {
    v43 = v223;
    v44 = Logger.payments.unsafeMutableAddressor();
    (*(v221 + 16))(v43, v44, v219);
    (v248)(v245, v239, v240);
    v108 = (*(v242 + 80) + 16) & ~*(v242 + 80);
    v115 = swift_allocObject();
    (*(v242 + 32))(v115 + v108, v245, v240);
    v128 = Logger.logObject.getter();
    v109 = v128;
    v127 = static os_log_type_t.debug.getter();
    v110 = v127;
    v111 = 17;
    v117 = 7;
    v121 = swift_allocObject();
    v112 = v121;
    v113 = 32;
    *(v121 + 16) = 32;
    v45 = swift_allocObject();
    v46 = v113;
    v122 = v45;
    v114 = v45;
    *(v45 + 16) = 8;
    v116 = v46;
    v47 = swift_allocObject();
    v48 = v115;
    v118 = v47;
    *(v47 + 16) = partial apply for implicit closure #3 in Parse.toAppId();
    *(v47 + 24) = v48;
    v49 = swift_allocObject();
    v50 = v118;
    v119 = v49;
    *(v49 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
    *(v49 + 24) = v50;
    v51 = swift_allocObject();
    v52 = v119;
    v125 = v51;
    v120 = v51;
    *(v51 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
    *(v51 + 24) = v52;
    v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
    v123 = _allocateUninitializedArray<A>(_:)();
    v124 = v53;

    v54 = v121;
    v55 = v124;
    *v124 = partial apply for closure #1 in OSLogArguments.append(_:);
    v55[1] = v54;

    v56 = v122;
    v57 = v124;
    v124[2] = partial apply for closure #1 in OSLogArguments.append(_:);
    v57[3] = v56;

    v58 = v124;
    v59 = v125;
    v124[4] = partial apply for closure #1 in OSLogArguments.append(_:);
    v58[5] = v59;
    _finalizeUninitializedArray<A>(_:)();

    if (os_log_type_enabled(v128, v127))
    {
      v60 = v218;
      v101 = static UnsafeMutablePointer.allocate(capacity:)();
      v98 = v101;
      v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v102 = createStorage<A>(capacity:type:)(0);
      v100 = v102;
      v104 = 1;
      v103 = createStorage<A>(capacity:type:)(1);
      v270[0] = v101;
      v269 = v102;
      v268 = v103;
      v105 = v270;
      serialize(_:at:)(2, v270);
      serialize(_:at:)(v104, v105);
      v266 = partial apply for closure #1 in OSLogArguments.append(_:);
      v267 = v112;
      closure #1 in osLogInternal(_:log:type:)(&v266, v105, &v269, &v268);
      v106 = v60;
      v107 = v60;
      if (v60)
      {
        v96 = 0;

        __break(1u);
      }

      else
      {
        v266 = partial apply for closure #1 in OSLogArguments.append(_:);
        v267 = v114;
        closure #1 in osLogInternal(_:log:type:)(&v266, v270, &v269, &v268);
        v94 = 0;
        v95 = 0;
        v266 = partial apply for closure #1 in OSLogArguments.append(_:);
        v267 = v120;
        closure #1 in osLogInternal(_:log:type:)(&v266, v270, &v269, &v268);
        v92 = 0;
        v93 = 0;
        _os_log_impl(&dword_2686B1000, v109, v110, "#Parse toAppId() unexpected parse type %s", v98, 0xCu);
        destroyStorage<A>(_:count:)(v100, 0, v99);
        destroyStorage<A>(_:count:)(v103, 1, MEMORY[0x277D84F70] + 8);
        MEMORY[0x26D620BD0](v98, MEMORY[0x277D84B78]);

        v97 = v92;
      }
    }

    else
    {
      v61 = v218;

      v97 = v61;
    }

    v91 = v97;

    (*(v221 + 8))(v223, v219);
    (*(v242 + 8))(v247, v240);
    v129 = v91;
  }

  v62 = v222;
  v85 = v129;
  v63 = Logger.payments.unsafeMutableAddressor();
  (*(v221 + 16))(v62, v63, v219);
  v89 = Logger.logObject.getter();
  v86 = v89;
  v88 = static os_log_type_t.debug.getter();
  v87 = v88;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  v90 = _allocateUninitializedArray<A>(_:)();
  if (os_log_type_enabled(v89, v88))
  {
    v64 = v85;
    v76 = static UnsafeMutablePointer.allocate(capacity:)();
    v72 = v76;
    v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v74 = 0;
    v77 = createStorage<A>(capacity:type:)(0);
    v75 = v77;
    v78 = createStorage<A>(capacity:type:)(v74);
    v273 = v76;
    v272 = v77;
    v271 = v78;
    v79 = 0;
    v80 = &v273;
    serialize(_:at:)(0, &v273);
    serialize(_:at:)(v79, v80);
    v270[2] = v90;
    v81 = &v69;
    MEMORY[0x28223BE20](&v69);
    v82 = &v69 - 6;
    *(&v69 - 4) = v65;
    *(&v69 - 3) = &v272;
    *(&v69 - 2) = &v271;
    v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
    lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
    Sequence.forEach(_:)();
    v84 = v64;
    if (v64)
    {
      __break(1u);
    }

    else
    {
      _os_log_impl(&dword_2686B1000, v86, v87, "#Parse toAppId() could not resolve an app ID, returning nil", v72, 2u);
      v70 = 0;
      destroyStorage<A>(_:count:)(v75, 0, v73);
      destroyStorage<A>(_:count:)(v78, v70, MEMORY[0x277D84F70] + 8);
      MEMORY[0x26D620BD0](v72, MEMORY[0x277D84B78]);

      v71 = v84;
    }
  }

  else
  {

    v71 = v85;
  }

  v69 = v71;

  (*(v221 + 8))(v222, v219);
  v174 = 0;
  v175 = 0;
  v176 = v69;
LABEL_33:
  v66 = v174;
  v67 = v175;
  result.value._object = v67;
  result.value._countAndFlagsBits = v66;
  return result;
}

uint64_t USOParse.isRequestToSummariseAppleCardInfo.getter()
{
  v29 = closure #1 in USOParse.isRequestToSummariseAppleCardInfo.getter;
  v54 = 0;
  v50 = 0;
  v48 = 0;
  v30 = 0;
  v39 = 0;
  v35 = type metadata accessor for Siri_Nlu_External_UserParse();
  v33 = *(v35 - 8);
  v34 = v35 - 8;
  v31 = (*(v33 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v35);
  v36 = &v6 - v31;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMd, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMR);
  v32 = (*(*(v1 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v1);
  v40 = &v6 - v32;
  v54 = v0;
  v2 = USOParse.userParse.getter();
  v38 = MEMORY[0x26D61F2D0](v2);
  (*(v33 + 8))(v36, v35);
  v51 = v38;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay12SiriNLUTypes0A27_Nlu_External_UserDialogActVGMd, &_sSay12SiriNLUTypes0A27_Nlu_External_UserDialogActVGMR);
  lazy protocol witness table accessor for type [Siri_Nlu_External_UserDialogAct] and conformance [A]();
  Collection.first.getter();

  v41 = type metadata accessor for Siri_Nlu_External_UserDialogAct();
  v42 = *(v41 - 8);
  v43 = v41 - 8;
  if ((*(v42 + 48))(v40, 1) == 1)
  {
    outlined destroy of Siri_Nlu_External_UserDialogAct?(v40);
  }

  else
  {
    v28 = Siri_Nlu_External_UserDialogAct.usoTask.getter();
    (*(v42 + 8))(v40, v41);
    if (v28)
    {
      v27 = v28;
      v26 = v28;
      UsoTask.eraseToAny.getter();

      goto LABEL_6;
    }
  }

  memset(v52, 0, sizeof(v52));
  v53 = 0;
LABEL_6:
  if (v53)
  {
    type metadata accessor for UsoTask_summarise_common_PaymentAccount();
    if (swift_dynamicCast())
    {
      v25 = v44;
    }

    else
    {
      v25 = 0;
    }

    v24 = v25;
  }

  else
  {
    outlined destroy of FlowActivity?(v52);
    v24 = 0;
  }

  v23 = v24;
  if (!v24)
  {
    v7 = 0;
    return v7 & 1;
  }

  v22 = v23;
  v20 = v23;
  v50 = v23;

  dispatch thunk of Uso_VerbTemplate_Reference.reference.getter();
  v21 = v49;

  if (v21 && (v19 = v21, v17 = v21, v18 = dispatch thunk of UsoEntity_common_PaymentAccount.accountType.getter(), , v18))
  {
    v16 = v18;
    v13 = v18;
    UsoIdentifierNamespace.rawValue.getter(6);
    v12 = v3;
    v14 = dispatch thunk of CodeGenGlobalArgs.getUsoIdentifiersFor(attributeName:)();

    v15 = v14;
  }

  else
  {
    v15 = 0;
  }

  v11 = v15;
  v48 = v15;

  v46 = v11;
  if (v11)
  {
    v47 = v46;
  }

  else
  {
    v10 = 0;
    type metadata accessor for UsoIdentifier();
    v47 = _allocateUninitializedArray<A>(_:)();
    if (v46)
    {
      outlined destroy of [SFCardSection](&v46);
    }
  }

  v4 = v30;
  v45 = v47;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay12SiriOntology13UsoIdentifierVGMd, &_sSay12SiriOntology13UsoIdentifierVGMR);
  lazy protocol witness table accessor for type [UsoIdentifier] and conformance [A]();
  result = Sequence.contains(where:)();
  v9 = result;
  if (!v4)
  {
    v6 = v9;
    outlined destroy of [SFCardSection](&v45);

    v7 = v6;
    return v7 & 1;
  }

  __break(1u);
  return result;
}

uint64_t USOParse.isRequestToCreateAppleCardAccount.getter()
{
  v29 = closure #1 in USOParse.isRequestToSummariseAppleCardInfo.getter;
  v54 = 0;
  v50 = 0;
  v48 = 0;
  v30 = 0;
  v39 = 0;
  v35 = type metadata accessor for Siri_Nlu_External_UserParse();
  v33 = *(v35 - 8);
  v34 = v35 - 8;
  v31 = (*(v33 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v35);
  v36 = &v6 - v31;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMd, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMR);
  v32 = (*(*(v1 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v1);
  v40 = &v6 - v32;
  v54 = v0;
  v2 = USOParse.userParse.getter();
  v38 = MEMORY[0x26D61F2D0](v2);
  (*(v33 + 8))(v36, v35);
  v51 = v38;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay12SiriNLUTypes0A27_Nlu_External_UserDialogActVGMd, &_sSay12SiriNLUTypes0A27_Nlu_External_UserDialogActVGMR);
  lazy protocol witness table accessor for type [Siri_Nlu_External_UserDialogAct] and conformance [A]();
  Collection.first.getter();

  v41 = type metadata accessor for Siri_Nlu_External_UserDialogAct();
  v42 = *(v41 - 8);
  v43 = v41 - 8;
  if ((*(v42 + 48))(v40, 1) == 1)
  {
    outlined destroy of Siri_Nlu_External_UserDialogAct?(v40);
  }

  else
  {
    v28 = Siri_Nlu_External_UserDialogAct.usoTask.getter();
    (*(v42 + 8))(v40, v41);
    if (v28)
    {
      v27 = v28;
      v26 = v28;
      UsoTask.eraseToAny.getter();

      goto LABEL_6;
    }
  }

  memset(v52, 0, sizeof(v52));
  v53 = 0;
LABEL_6:
  if (v53)
  {
    type metadata accessor for UsoTask_create_common_PaymentAccount();
    if (swift_dynamicCast())
    {
      v25 = v44;
    }

    else
    {
      v25 = 0;
    }

    v24 = v25;
  }

  else
  {
    outlined destroy of FlowActivity?(v52);
    v24 = 0;
  }

  v23 = v24;
  if (!v24)
  {
    v7 = 0;
    return v7 & 1;
  }

  v22 = v23;
  v20 = v23;
  v50 = v23;

  dispatch thunk of Uso_VerbTemplate_Target.target.getter();
  v21 = v49;

  if (v21 && (v19 = v21, v17 = v21, v18 = dispatch thunk of UsoEntity_common_PaymentAccount.accountType.getter(), , v18))
  {
    v16 = v18;
    v13 = v18;
    UsoIdentifierNamespace.rawValue.getter(6);
    v12 = v3;
    v14 = dispatch thunk of CodeGenGlobalArgs.getUsoIdentifiersFor(attributeName:)();

    v15 = v14;
  }

  else
  {
    v15 = 0;
  }

  v11 = v15;
  v48 = v15;

  v46 = v11;
  if (v11)
  {
    v47 = v46;
  }

  else
  {
    v10 = 0;
    type metadata accessor for UsoIdentifier();
    v47 = _allocateUninitializedArray<A>(_:)();
    if (v46)
    {
      outlined destroy of [SFCardSection](&v46);
    }
  }

  v4 = v30;
  v45 = v47;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay12SiriOntology13UsoIdentifierVGMd, &_sSay12SiriOntology13UsoIdentifierVGMR);
  lazy protocol witness table accessor for type [UsoIdentifier] and conformance [A]();
  result = Sequence.contains(where:)();
  v9 = result;
  if (!v4)
  {
    v6 = v9;
    outlined destroy of [SFCardSection](&v45);

    v7 = v6;
    return v7 & 1;
  }

  __break(1u);
  return result;
}

BOOL USOParse.isOrdinalDisambiguation.getter()
{
  v19 = 0;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMd, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMR);
  v10 = (*(*(v1 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v1);
  v11 = &v3 - v10;
  v19 = v0;
  USOParse.userDialogAct.getter(&v3 - v10);
  v12 = type metadata accessor for Siri_Nlu_External_UserDialogAct();
  v13 = *(v12 - 8);
  v14 = v12 - 8;
  if ((*(v13 + 48))(v11, 1) == 1)
  {
    outlined destroy of Siri_Nlu_External_UserDialogAct?(v11);
  }

  else
  {
    v9 = Siri_Nlu_External_UserDialogAct.usoTask.getter();
    (*(v13 + 8))(v11, v12);
    if (v9)
    {
      v8 = v9;
      v7 = v9;
      UsoTask.eraseToAny.getter();

      goto LABEL_6;
    }
  }

  memset(v17, 0, sizeof(v17));
  v18 = 0;
LABEL_6:
  if (v18)
  {
    type metadata accessor for UsoTask_noVerb_uso_NoEntity();
    if (swift_dynamicCast())
    {
      v6 = v15;
    }

    else
    {
      v6 = 0;
    }

    v5 = v6;
  }

  else
  {
    outlined destroy of FlowActivity?(v17);
    v5 = 0;
  }

  v16 = v5;
  v4 = v5 != 0;
  v3 = v4;
  outlined destroy of ContiguousArray<A1>(&v16);
  return v3;
}

Swift::String __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> Parse.toContactId()()
{
  v184 = partial apply for implicit closure #3 in Parse.toAppId();
  v185 = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
  v186 = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
  v187 = partial apply for closure #1 in OSLogArguments.append(_:);
  v188 = partial apply for closure #1 in OSLogArguments.append(_:);
  v189 = partial apply for closure #1 in OSLogArguments.append(_:);
  v190 = partial apply for implicit closure #2 in Parse.toSiriKitIntent(previousIntent:aceService:contactResolver:);
  v191 = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
  v192 = partial apply for closure #1 in OSLogArguments.append(_:);
  v193 = partial apply for closure #1 in OSLogArguments.append(_:);
  v194 = partial apply for closure #1 in OSLogArguments.append(_:);
  v195 = partial apply for implicit closure #1 in Parse.toSiriKitIntent(previousIntent:aceService:contactResolver:);
  v196 = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
  v197 = partial apply for closure #1 in OSLogArguments.append(_:);
  v198 = partial apply for closure #1 in OSLogArguments.append(_:);
  v199 = partial apply for closure #1 in OSLogArguments.append(_:);
  v267 = 0;
  v265 = 0;
  v266 = 0;
  v252 = 0;
  v250 = 0;
  v251 = 0;
  v248 = 0;
  v249 = 0;
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMd, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMR);
  v200 = (*(*(v0 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v0);
  v201 = v69 - v200;
  v221 = 0;
  v202 = type metadata accessor for Siri_Nlu_External_UserParse();
  v203 = *(v202 - 8);
  v204 = v202 - 8;
  v205 = (*(v203 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v221);
  v206 = v69 - v205;
  v207 = type metadata accessor for Siri_Nlu_External_UserDialogAct();
  v208 = *(v207 - 8);
  v209 = v207 - 8;
  v210 = (*(v208 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v221);
  v211 = v69 - v210;
  v267 = v69 - v210;
  v212 = type metadata accessor for Logger();
  v213 = *(v212 - 8);
  v214 = v212 - 8;
  v215 = (*(v213 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v1 = MEMORY[0x28223BE20](v221);
  v216 = v69 - v215;
  v217 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = MEMORY[0x28223BE20](v1);
  v218 = v69 - v217;
  v219 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v3);
  v220 = v69 - v219;
  v222 = type metadata accessor for USOParse();
  v224 = *(v222 - 8);
  v223 = v222 - 8;
  v225 = v224;
  v226 = *(v224 + 64);
  v227 = (v226 + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = MEMORY[0x28223BE20](v221);
  v228 = v69 - v227;
  v229 = (v6 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v5);
  v230 = v69 - v229;
  v266 = v69 - v229;
  v241 = type metadata accessor for Parse();
  v239 = *(v241 - 8);
  v240 = v241 - 8;
  v232 = v239;
  v234 = *(v239 + 64);
  v233 = (v234 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v241);
  v235 = v69 - v233;
  v236 = (v234 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v69 - v233);
  v242 = v69 - v236;
  v265 = v7;
  v237 = *(v239 + 16);
  v238 = v239 + 16;
  v237();
  if ((*(v239 + 88))(v242, v241) != *MEMORY[0x277D5C160])
  {
    v42 = v216;
    v43 = Logger.payments.unsafeMutableAddressor();
    (*(v213 + 16))(v42, v43, v212);
    (v237)(v235, v231, v241);
    v89 = (*(v232 + 80) + 16) & ~*(v232 + 80);
    v93 = 7;
    v91 = swift_allocObject();
    (*(v239 + 32))(v91 + v89, v235, v241);
    v102 = Logger.logObject.getter();
    v103 = static os_log_type_t.debug.getter();
    v90 = 17;
    v96 = swift_allocObject();
    *(v96 + 16) = 32;
    v97 = swift_allocObject();
    *(v97 + 16) = 8;
    v92 = 32;
    v44 = swift_allocObject();
    v45 = v91;
    v94 = v44;
    *(v44 + 16) = v184;
    *(v44 + 24) = v45;
    v46 = swift_allocObject();
    v47 = v94;
    v95 = v46;
    *(v46 + 16) = v185;
    *(v46 + 24) = v47;
    v48 = swift_allocObject();
    v49 = v95;
    v99 = v48;
    *(v48 + 16) = v186;
    *(v48 + 24) = v49;
    v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
    v98 = _allocateUninitializedArray<A>(_:)();
    v100 = v50;

    v51 = v96;
    v52 = v100;
    *v100 = v187;
    v52[1] = v51;

    v53 = v97;
    v54 = v100;
    v100[2] = v188;
    v54[3] = v53;

    v55 = v99;
    v56 = v100;
    v100[4] = v189;
    v56[5] = v55;
    _finalizeUninitializedArray<A>(_:)();

    if (os_log_type_enabled(v102, v103))
    {
      v82 = static UnsafeMutablePointer.allocate(capacity:)();
      v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v83 = createStorage<A>(capacity:type:)(0);
      v84 = createStorage<A>(capacity:type:)(1);
      v85 = &v262;
      v262 = v82;
      v86 = &v261;
      v261 = v83;
      v87 = &v260;
      v260 = v84;
      serialize(_:at:)(2, &v262);
      serialize(_:at:)(1, v85);
      v57 = v183;
      v258 = v187;
      v259 = v96;
      closure #1 in osLogInternal(_:log:type:)(&v258, v85, v86, v87);
      v88 = v57;
      if (v57)
      {

        __break(1u);
      }

      else
      {
        v258 = v188;
        v259 = v97;
        closure #1 in osLogInternal(_:log:type:)(&v258, &v262, &v261, &v260);
        v80 = 0;
        v258 = v189;
        v259 = v99;
        closure #1 in osLogInternal(_:log:type:)(&v258, &v262, &v261, &v260);
        _os_log_impl(&dword_2686B1000, v102, v103, "Unexpected parse type: %s", v82, 0xCu);
        destroyStorage<A>(_:count:)(v83, 0, v81);
        destroyStorage<A>(_:count:)(v84, 1, MEMORY[0x277D84F70] + 8);
        MEMORY[0x26D620BD0](v82, MEMORY[0x277D84B78]);
      }
    }

    else
    {
    }

    MEMORY[0x277D82BD8](v102);
    (*(v213 + 8))(v216, v212);
    v71 = 0;
    v58 = DefaultStringInterpolation.init(literalCapacity:interpolationCount:)();
    v74 = &v263;
    v263 = v58;
    v264 = v59;
    v70 = "";
    v72 = 1;
    v60 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", v71, 1);
    v69[2] = v60._object;
    MEMORY[0x26D620F90](v60._countAndFlagsBits);

    DefaultStringInterpolation.appendInterpolation(_:)();
    v61 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(v70, v71, v72 & 1);
    object = v61._object;
    MEMORY[0x26D620F90](v61._countAndFlagsBits);

    v76 = v263;
    v75 = v264;

    outlined destroy of String.UTF8View(v74);
    v78 = MEMORY[0x26D620710](v76, v75);
    v77 = v62;
    lazy protocol witness table accessor for type PaymentsError and conformance PaymentsError();
    v63 = swift_allocError();
    v64 = v77;
    v79 = v63;
    *v65 = v78;
    *(v65 + 8) = v64;
    *(v65 + 16) = 0;
    *(v65 + 24) = 0;
    *(v65 + 32) = 0;
    *(v65 + 40) = 0;
    *(v65 + 48) = 7;
    swift_willThrow();
    (*(v239 + 8))(v242, v241);
    v128 = v79;
    goto LABEL_30;
  }

  v8 = v220;
  (*(v239 + 96))(v242, v241);
  v166 = v225;
  v169 = *(v224 + 32);
  v168 = v224 + 32;
  v169(v230, v242, v222);
  v266 = v230;
  v9 = Logger.payments.unsafeMutableAddressor();
  v164 = *(v213 + 16);
  v165 = v213 + 16;
  v164(v8, v9, v212);
  (*(v224 + 16))(v228, v230, v222);
  v167 = (*(v166 + 80) + 16) & ~*(v166 + 80);
  v172 = 7;
  v173 = swift_allocObject();
  v169((v173 + v167), v228, v222);
  v181 = Logger.logObject.getter();
  v182 = static os_log_type_t.debug.getter();
  v170 = 17;
  v175 = swift_allocObject();
  *(v175 + 16) = 32;
  v176 = swift_allocObject();
  *(v176 + 16) = 8;
  v171 = 32;
  v10 = swift_allocObject();
  v11 = v173;
  v174 = v10;
  *(v10 + 16) = v190;
  *(v10 + 24) = v11;
  v12 = swift_allocObject();
  v13 = v174;
  v178 = v12;
  *(v12 + 16) = v191;
  *(v12 + 24) = v13;
  v180 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  v177 = _allocateUninitializedArray<A>(_:)();
  v179 = v14;

  v15 = v175;
  v16 = v179;
  *v179 = v192;
  v16[1] = v15;

  v17 = v176;
  v18 = v179;
  v179[2] = v193;
  v18[3] = v17;

  v19 = v178;
  v20 = v179;
  v179[4] = v194;
  v20[5] = v19;
  _finalizeUninitializedArray<A>(_:)();

  if (os_log_type_enabled(v181, v182))
  {
    v157 = static UnsafeMutablePointer.allocate(capacity:)();
    v156 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v158 = createStorage<A>(capacity:type:)(0);
    v159 = createStorage<A>(capacity:type:)(1);
    v160 = &v247;
    v247 = v157;
    v161 = &v246;
    v246 = v158;
    v162 = &v245;
    v245 = v159;
    serialize(_:at:)(2, &v247);
    serialize(_:at:)(1, v160);
    v21 = v183;
    v243 = v192;
    v244 = v175;
    closure #1 in osLogInternal(_:log:type:)(&v243, v160, v161, v162);
    v163 = v21;
    if (v21)
    {

      __break(1u);
    }

    else
    {
      v243 = v193;
      v244 = v176;
      closure #1 in osLogInternal(_:log:type:)(&v243, &v247, &v246, &v245);
      v153 = 0;
      v243 = v194;
      v244 = v178;
      closure #1 in osLogInternal(_:log:type:)(&v243, &v247, &v246, &v245);
      v152 = 0;
      _os_log_impl(&dword_2686B1000, v181, v182, "parse is %s", v157, 0xCu);
      destroyStorage<A>(_:count:)(v158, 0, v156);
      destroyStorage<A>(_:count:)(v159, 1, MEMORY[0x277D84F70] + 8);
      MEMORY[0x26D620BD0](v157, MEMORY[0x277D84B78]);

      v154 = v152;
    }
  }

  else
  {

    v154 = v183;
  }

  v147 = v154;
  MEMORY[0x277D82BD8](v181);
  v148 = *(v213 + 8);
  v149 = v213 + 8;
  v148(v220, v212);
  v22 = USOParse.userParse.getter();
  v150 = MEMORY[0x26D61F2D0](v22);
  (*(v203 + 8))(v206, v202);
  v257[1] = v150;
  v151 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay12SiriNLUTypes0A27_Nlu_External_UserDialogActVGMd, &_sSay12SiriNLUTypes0A27_Nlu_External_UserDialogActVGMR);
  lazy protocol witness table accessor for type [Siri_Nlu_External_UserDialogAct] and conformance [A]();
  Collection.first.getter();
  if ((*(v208 + 48))(v201, 1, v207) == 1)
  {
    v27 = v218;
    outlined destroy of Siri_Nlu_External_UserDialogAct?(v201);

    v28 = Logger.payments.unsafeMutableAddressor();
    v164(v27, v28, v212);
    (v237)(v235, v231, v241);
    v114 = (*(v232 + 80) + 16) & ~*(v232 + 80);
    v117 = 7;
    v118 = swift_allocObject();
    (*(v239 + 32))(v118 + v114, v235, v241);
    v125 = Logger.logObject.getter();
    v126 = static os_log_type_t.error.getter();
    v115 = 17;
    v120 = swift_allocObject();
    *(v120 + 16) = 32;
    v121 = swift_allocObject();
    *(v121 + 16) = 8;
    v116 = 32;
    v29 = swift_allocObject();
    v30 = v118;
    v119 = v29;
    *(v29 + 16) = v195;
    *(v29 + 24) = v30;
    v31 = swift_allocObject();
    v32 = v119;
    v123 = v31;
    *(v31 + 16) = v196;
    *(v31 + 24) = v32;
    v122 = _allocateUninitializedArray<A>(_:)();
    v124 = v33;

    v34 = v120;
    v35 = v124;
    *v124 = v197;
    v35[1] = v34;

    v36 = v121;
    v37 = v124;
    v124[2] = v198;
    v37[3] = v36;

    v38 = v123;
    v39 = v124;
    v124[4] = v199;
    v39[5] = v38;
    _finalizeUninitializedArray<A>(_:)();

    if (os_log_type_enabled(v125, v126))
    {
      v107 = static UnsafeMutablePointer.allocate(capacity:)();
      v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v108 = createStorage<A>(capacity:type:)(0);
      v109 = createStorage<A>(capacity:type:)(1);
      v110 = v257;
      v257[0] = v107;
      v111 = &v256;
      v256 = v108;
      v112 = &v255;
      v255 = v109;
      serialize(_:at:)(2, v257);
      serialize(_:at:)(1, v110);
      v40 = v147;
      v253 = v197;
      v254 = v120;
      closure #1 in osLogInternal(_:log:type:)(&v253, v110, v111, v112);
      v113 = v40;
      if (v40)
      {

        __break(1u);
      }

      else
      {
        v253 = v198;
        v254 = v121;
        closure #1 in osLogInternal(_:log:type:)(&v253, v257, &v256, &v255);
        v105 = 0;
        v253 = v199;
        v254 = v123;
        closure #1 in osLogInternal(_:log:type:)(&v253, v257, &v256, &v255);
        _os_log_impl(&dword_2686B1000, v125, v126, "#toContactId Couldn't find user dialog act in parse: %s", v107, 0xCu);
        destroyStorage<A>(_:count:)(v108, 0, v106);
        destroyStorage<A>(_:count:)(v109, 1, MEMORY[0x277D84F70] + 8);
        MEMORY[0x26D620BD0](v107, MEMORY[0x277D84B78]);
      }
    }

    else
    {
    }

    MEMORY[0x277D82BD8](v125);
    v148(v218, v212);
    lazy protocol witness table accessor for type PaymentsError and conformance PaymentsError();
    v104 = swift_allocError();
    *v41 = 5;
    *(v41 + 8) = 0;
    *(v41 + 16) = 0;
    *(v41 + 24) = 0;
    *(v41 + 32) = 0;
    *(v41 + 40) = 0;
    *(v41 + 48) = 17;
    swift_willThrow();
    (*(v224 + 8))(v230, v222);
    v128 = v104;
    goto LABEL_30;
  }

  (*(v208 + 32))(v211, v201, v207);

  v145 = Siri_Nlu_External_UserDialogAct.contactId.getter();
  v146 = v23;
  if (!v23)
  {
    type metadata accessor for ReferenceResolutionClient();
    v137 = ReferenceResolutionClient.__allocating_init()();
    v138 = ReferenceResolutionClient.resolvePersonDisambiguationReference(from:)(v230);

    if (v138)
    {
      v136 = v138;
      v133 = v138;
      v252 = v138;
      v24 = UsoEntity_common_Person.contactId.getter();
      v134 = v24;
      v135 = v25;
      if (v25)
      {
        v131 = v134;
        v132 = v135;
        v130 = v135;
        v129 = v134;
        v250 = v134;
        v251 = v135;

        (*(v208 + 8))(v211, v207);
        (*(v224 + 8))(v230, v222);
        v141 = v129;
        v142 = v130;
        goto LABEL_29;
      }
    }

    lazy protocol witness table accessor for type PaymentsError and conformance PaymentsError();
    v127 = swift_allocError();
    *v26 = 6;
    *(v26 + 8) = 0;
    *(v26 + 16) = 0;
    *(v26 + 24) = 0;
    *(v26 + 32) = 0;
    *(v26 + 40) = 0;
    *(v26 + 48) = 17;
    swift_willThrow();
    (*(v208 + 8))(v211, v207);
    (*(v224 + 8))(v230, v222);
    v128 = v127;
LABEL_30:
    v67 = v155;
    v66 = v69[1];
    goto LABEL_31;
  }

  v143 = v145;
  v144 = v146;
  v140 = v146;
  v139 = v145;
  v248 = v145;
  v249 = v146;
  (*(v208 + 8))(v211, v207);
  (*(v224 + 8))(v230, v222);
  v141 = v139;
  v142 = v140;
LABEL_29:
  v66 = v141;
  v67 = v142;
LABEL_31:
  result._object = v67;
  result._countAndFlagsBits = v66;
  return result;
}

uint64_t Parse.isCancel.getter()
{
  v52 = 0;
  v50 = 0;
  v53 = 0;
  v51 = 0;
  v37 = 0;
  v20 = type metadata accessor for Parse.DirectInvocation();
  v21 = *(v20 - 8);
  v22 = v20 - 8;
  v23 = (*(v21 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v20);
  v24 = &v7 - v23;
  v53 = &v7 - v23;
  v25 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMd, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMR) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v37);
  v26 = &v7 - v25;
  v27 = type metadata accessor for Siri_Nlu_External_UserParse();
  v28 = *(v27 - 8);
  v29 = v27 - 8;
  v30 = (*(v28 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v37);
  v31 = &v7 - v30;
  v32 = type metadata accessor for Siri_Nlu_External_UserDialogAct();
  v33 = *(v32 - 8);
  v34 = v32 - 8;
  v35 = (*(v33 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v37);
  v36 = &v7 - v35;
  v52 = &v7 - v35;
  v38 = type metadata accessor for USOParse();
  v39 = *(v38 - 8);
  v40 = v38 - 8;
  v41 = (*(v39 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v37);
  v42 = &v7 - v41;
  v51 = &v7 - v41;
  v46 = type metadata accessor for Parse();
  v44 = *(v46 - 8);
  v45 = v46 - 8;
  v43 = (*(v44 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v46);
  v47 = &v7 - v43;
  v50 = v0;
  (*(v44 + 16))();
  v48 = (*(v44 + 88))(v47, v46);
  if (v48 == *MEMORY[0x277D5C150])
  {
    v3 = v24;
    (*(v44 + 96))(v47, v46);
    (*(v21 + 32))(v3, v47, v20);
    v53 = v3;
    v9 = Parse.DirectInvocation.identifier.getter();
    v13 = v4;
    v8 = static SiriKitDirectInvocationPayloads.cancel.getter();
    v12 = [v8 identifier];
    v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = v5;
    MEMORY[0x277D82BD8](v8);
    v14 = MEMORY[0x26D620740](v9, v13, v10, v11);

    MEMORY[0x277D82BD8](v12);

    (*(v21 + 8))(v24, v20);
    v16 = v14;
  }

  else if (v48 == *MEMORY[0x277D5C160])
  {
    v1 = v42;
    (*(v44 + 96))(v47, v46);
    (*(v39 + 32))(v1, v47, v38);
    v51 = v1;
    v2 = USOParse.userParse.getter();
    v18 = MEMORY[0x26D61F2D0](v2);
    (*(v28 + 8))(v31, v27);
    v49 = v18;
    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay12SiriNLUTypes0A27_Nlu_External_UserDialogActVGMd, &_sSay12SiriNLUTypes0A27_Nlu_External_UserDialogActVGMR);
    lazy protocol witness table accessor for type [Siri_Nlu_External_UserDialogAct] and conformance [A]();
    Collection.first.getter();
    if ((*(v33 + 48))(v26, 1, v32) == 1)
    {
      outlined destroy of Siri_Nlu_External_UserDialogAct?(v26);

      (*(v39 + 8))(v42, v38);
      v16 = 0;
    }

    else
    {
      (*(v33 + 32))(v36, v26, v32);

      if (Siri_Nlu_External_UserDialogAct.hasRejected.getter())
      {
        v17 = 1;
      }

      else
      {
        v17 = Siri_Nlu_External_UserDialogAct.hasCancelled.getter();
      }

      v15 = v17;
      (*(v33 + 8))(v36, v32);
      (*(v39 + 8))(v42, v38);
      v16 = v15;
    }
  }

  else
  {
    (*(v44 + 8))(v47, v46);
    v16 = 0;
  }

  return v16 & 1;
}

uint64_t USOParse.preferredUserDialogAct.getter@<X0>(uint64_t a1@<X8>)
{
  v17 = a1;
  v44 = 0;
  v46 = closure #1 in USOParse.preferredUserDialogAct.getter;
  v18 = closure #2 in USOParse.preferredUserDialogAct.getter;
  v54 = 0;
  v53 = 0;
  v52 = 0;
  v24 = 0;
  v38 = type metadata accessor for Siri_Nlu_External_UserParse();
  v36 = *(v38 - 8);
  v37 = v38 - 8;
  v19 = (*(v36 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v38);
  v20 = &v12 - v19;
  v21 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v12 - v19);
  v22 = &v12 - v21;
  v23 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v12 - v21);
  v39 = &v12 - v23;
  v25 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMd, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMR) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = MEMORY[0x28223BE20](v24);
  v26 = &v12 - v25;
  v27 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v4);
  v43 = &v12 - v27;
  v28 = type metadata accessor for Siri_Nlu_External_UserDialogAct();
  v29 = *(v28 - 8);
  v30 = v28 - 8;
  v32 = *(v29 + 64);
  v31 = (v32 + 15) & 0xFFFFFFFFFFFFFFF0;
  v6 = MEMORY[0x28223BE20](v28);
  v33 = &v12 - v31;
  v54 = &v12 - v31;
  v34 = (v32 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v6);
  v35 = &v12 - v34;
  v53 = &v12 - v34;
  v52 = v1;
  v7 = USOParse.userParse.getter();
  v42 = MEMORY[0x26D61F2D0](v7);
  v40 = *(v36 + 8);
  v41 = v36 + 8;
  v40(v39, v38);
  v51 = v42;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay12SiriNLUTypes0A27_Nlu_External_UserDialogActVGMd, &_sSay12SiriNLUTypes0A27_Nlu_External_UserDialogActVGMR);
  v47 = lazy protocol witness table accessor for type [Siri_Nlu_External_UserDialogAct] and conformance [A]();
  Sequence.first(where:)();
  v48 = 0;
  outlined destroy of [SFCardSection](&v51);
  v15 = *(v29 + 48);
  v16 = v29 + 48;
  if (v15(v43, 1, v28) == 1)
  {
    v9 = v48;
    outlined destroy of Siri_Nlu_External_UserDialogAct?(v43);
    v10 = USOParse.userParse.getter();
    v14 = MEMORY[0x26D61F2D0](v10);
    v40(v22, v38);
    v50 = v14;
    result = Sequence.first(where:)();
    if (v9)
    {
      __break(1u);
    }

    else
    {
      outlined destroy of [SFCardSection](&v50);
      if (v15(v26, 1, v28) == 1)
      {
        outlined destroy of Siri_Nlu_External_UserDialogAct?(v26);
        v11 = USOParse.userParse.getter();
        v13 = MEMORY[0x26D61F2D0](v11);
        v40(v20, v38);
        v49 = v13;
        lazy protocol witness table accessor for type [Siri_Nlu_External_UserDialogAct] and conformance [A]();
        Collection.first.getter();
      }

      else
      {
        (*(v29 + 32))(v33, v26, v28);
        (*(v29 + 16))(v17, v33, v28);
        (*(v29 + 56))(v17, 0, 1, v28);
        return (*(v29 + 8))(v33, v28);
      }
    }
  }

  else
  {
    (*(v29 + 32))(v35, v43, v28);
    (*(v29 + 16))(v17, v35, v28);
    (*(v29 + 56))(v17, 0, 1, v28);
    return (*(v29 + 8))(v35, v28);
  }

  return result;
}

uint64_t implicit closure #1 in Parse.confirmationResponse.getter()
{
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo20SIRINLUUserDialogAct_pMd, &_sSo20SIRINLUUserDialogAct_pMR);
  return String.init<A>(describing:)();
}

uint64_t implicit closure #2 in Parse.confirmationResponse.getter(uint64_t a1)
{
  v2[1] = a1;
  v5 = type metadata accessor for USOParse();
  v4 = *(v5 - 8);
  v3 = (*(v4 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v5);
  v6 = v2 - v3;
  (*(v4 + 16))();
  return String.init<A>(describing:)();
}

uint64_t implicit closure #3 in Parse.confirmationResponse.getter(uint64_t a1)
{
  v2[1] = a1;
  v5 = type metadata accessor for Parse();
  v4 = *(v5 - 8);
  v3 = (*(v4 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v5);
  v6 = v2 - v3;
  (*(v4 + 16))();
  return String.init<A>(describing:)();
}

uint64_t implicit closure #4 in Parse.confirmationResponse.getter(uint64_t a1)
{
  v2[1] = a1;
  v5 = type metadata accessor for Parse.DirectInvocation();
  v4 = *(v5 - 8);
  v3 = (*(v4 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v5);
  v6 = v2 - v3;
  (*(v4 + 16))();
  return String.init<A>(describing:)();
}

uint64_t sub_2687C3A2C()
{
  v3 = *(type metadata accessor for Parse() - 8);
  v1 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v4 = v1 + *(v3 + 64);
  (*(v3 + 8))(v0 + v1);
  return swift_deallocObject();
}

uint64_t partial apply for implicit closure #1 in Parse.toSiriKitIntent(previousIntent:aceService:contactResolver:)()
{
  v1 = *(type metadata accessor for Parse() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return implicit closure #3 in Parse.confirmationResponse.getter(v2);
}

id Parse.DirectInvocation.toSiriKitIntent(previousIntent:)(uint64_t a1, uint64_t a2)
{
  v97 = a2;
  v96 = a1;
  v126 = 0;
  v125 = 0;
  v124 = 0;
  v95 = 0;
  v98 = type metadata accessor for Logger();
  v99 = *(v98 - 8);
  v100 = v99;
  v102 = *(v99 + 64);
  v3 = MEMORY[0x28223BE20](v96);
  v104 = (v102 + 15) & 0xFFFFFFFFFFFFFFF0;
  v101 = &v24 - v104;
  v4 = MEMORY[0x28223BE20](v3);
  v103 = &v24 - v104;
  v5 = MEMORY[0x28223BE20](v4);
  v105 = &v24 - v104;
  v125 = v5;
  v126 = v6;
  v124 = v2;
  v108 = Parse.DirectInvocation.identifier.getter();
  v109 = v7;
  v106 = v108;
  v107 = v7;

  v123[0] = PaymentsDirectInvocations.Identifiers.rawValue.getter(8);
  v123[1] = v8;
  v122[2] = v108;
  v122[3] = v109;
  v110 = MEMORY[0x26D620740](v123[0], v8, v108, v109);
  outlined destroy of String.UTF8View(v123);
  if (v110)
  {
    v9 = v105;

    v10 = Logger.payments.unsafeMutableAddressor();
    (*(v100 + 16))(v9, v10, v98);
    v93 = Logger.logObject.getter();
    v90 = v93;
    v92 = static os_log_type_t.debug.getter();
    v91 = v92;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
    v94 = _allocateUninitializedArray<A>(_:)();
    if (os_log_type_enabled(v93, v92))
    {
      v11 = v95;
      v81 = static UnsafeMutablePointer.allocate(capacity:)();
      v77 = v81;
      v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v79 = 0;
      v82 = createStorage<A>(capacity:type:)(0);
      v80 = v82;
      v83 = createStorage<A>(capacity:type:)(v79);
      v114[0] = v81;
      v113 = v82;
      v112 = v83;
      v84 = 0;
      v85 = v114;
      serialize(_:at:)(0, v114);
      serialize(_:at:)(v84, v85);
      v111 = v94;
      v86 = &v24;
      MEMORY[0x28223BE20](&v24);
      v87 = &v24 - 6;
      *(&v24 - 4) = v12;
      *(&v24 - 3) = &v113;
      *(&v24 - 2) = &v112;
      v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
      lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
      Sequence.forEach(_:)();
      v89 = v11;
      if (v11)
      {
        __break(1u);
      }

      else
      {
        _os_log_impl(&dword_2686B1000, v90, v91, "#PaymentDirectInvocations sendPayment, returning INSendPaymentIntent", v77, 2u);
        v75 = 0;
        destroyStorage<A>(_:count:)(v80, 0, v78);
        destroyStorage<A>(_:count:)(v83, v75, MEMORY[0x277D84F70] + 8);
        MEMORY[0x26D620BD0](v77, MEMORY[0x277D84B78]);

        v76 = v89;
      }
    }

    else
    {

      v76 = v95;
    }

    v71 = v76;

    (*(v100 + 8))(v105, v98);
    type metadata accessor for INSendPaymentIntent();
    v70 = SAUIAppPunchOut.__allocating_init()();

    v72 = v70;
    v73 = &protocol witness table for INSendPaymentIntent;
    v74 = v71;
  }

  else
  {

    v122[0] = PaymentsDirectInvocations.Identifiers.rawValue.getter(9);
    v122[1] = v13;
    v121[2] = v106;
    v121[3] = v107;
    v69 = MEMORY[0x26D620740](v122[0], v13, v106, v107);
    outlined destroy of String.UTF8View(v122);
    if (v69)
    {
      v14 = v103;

      v15 = Logger.payments.unsafeMutableAddressor();
      (*(v100 + 16))(v14, v15, v98);
      v67 = Logger.logObject.getter();
      v64 = v67;
      v66 = static os_log_type_t.debug.getter();
      v65 = v66;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
      v68 = _allocateUninitializedArray<A>(_:)();
      if (os_log_type_enabled(v67, v66))
      {
        v16 = v95;
        v55 = static UnsafeMutablePointer.allocate(capacity:)();
        v51 = v55;
        v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        v53 = 0;
        v56 = createStorage<A>(capacity:type:)(0);
        v54 = v56;
        v57 = createStorage<A>(capacity:type:)(v53);
        v117[0] = v55;
        v116 = v56;
        v115 = v57;
        v58 = 0;
        v59 = v117;
        serialize(_:at:)(0, v117);
        serialize(_:at:)(v58, v59);
        v114[1] = v68;
        v60 = &v24;
        MEMORY[0x28223BE20](&v24);
        v61 = &v24 - 6;
        *(&v24 - 4) = v17;
        *(&v24 - 3) = &v116;
        *(&v24 - 2) = &v115;
        v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
        lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
        Sequence.forEach(_:)();
        v63 = v16;
        if (v16)
        {
          __break(1u);
        }

        else
        {
          _os_log_impl(&dword_2686B1000, v64, v65, "#PaymentDirectInvocations requestPayment, returning INRequestPaymentIntent", v51, 2u);
          v49 = 0;
          destroyStorage<A>(_:count:)(v54, 0, v52);
          destroyStorage<A>(_:count:)(v57, v49, MEMORY[0x277D84F70] + 8);
          MEMORY[0x26D620BD0](v51, MEMORY[0x277D84B78]);

          v50 = v63;
        }
      }

      else
      {

        v50 = v95;
      }

      v48 = v50;

      (*(v100 + 8))(v103, v98);
      type metadata accessor for INRequestPaymentIntent();
      v47 = SAUIAppPunchOut.__allocating_init()();

      v72 = v47;
      v73 = &protocol witness table for INRequestPaymentIntent;
      v74 = v48;
    }

    else
    {

      v121[0] = PaymentsDirectInvocations.Identifiers.rawValue.getter(10);
      v121[1] = v18;
      v120[1] = v106;
      v120[2] = v107;
      v46 = MEMORY[0x26D620740](v121[0], v18, v106, v107);
      outlined destroy of String.UTF8View(v121);
      if (v46)
      {
        v19 = v101;

        v20 = Logger.payments.unsafeMutableAddressor();
        (*(v100 + 16))(v19, v20, v98);
        v44 = Logger.logObject.getter();
        v41 = v44;
        v43 = static os_log_type_t.debug.getter();
        v42 = v43;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
        v45 = _allocateUninitializedArray<A>(_:)();
        if (os_log_type_enabled(v44, v43))
        {
          v21 = v95;
          v32 = static UnsafeMutablePointer.allocate(capacity:)();
          v28 = v32;
          v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
          v30 = 0;
          v33 = createStorage<A>(capacity:type:)(0);
          v31 = v33;
          v34 = createStorage<A>(capacity:type:)(v30);
          v120[0] = v32;
          v119 = v33;
          v118 = v34;
          v35 = 0;
          v36 = v120;
          serialize(_:at:)(0, v120);
          serialize(_:at:)(v35, v36);
          v117[2] = v45;
          v37 = &v24;
          MEMORY[0x28223BE20](&v24);
          v38 = &v24 - 6;
          *(&v24 - 4) = v22;
          *(&v24 - 3) = &v119;
          *(&v24 - 2) = &v118;
          v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
          lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
          Sequence.forEach(_:)();
          v40 = v21;
          if (v21)
          {
            __break(1u);
          }

          else
          {
            _os_log_impl(&dword_2686B1000, v41, v42, "#PaymentsDirectInvocations searchForAccounts, returning INSearchForAccountsIntent", v28, 2u);
            v26 = 0;
            destroyStorage<A>(_:count:)(v31, 0, v29);
            destroyStorage<A>(_:count:)(v34, v26, MEMORY[0x277D84F70] + 8);
            MEMORY[0x26D620BD0](v28, MEMORY[0x277D84B78]);

            v27 = v40;
          }
        }

        else
        {

          v27 = v95;
        }

        v25 = v27;

        (*(v100 + 8))(v101, v98);
        type metadata accessor for INSearchForAccountsIntent();
        v24 = SAUIAppPunchOut.__allocating_init()();

        v72 = v24;
        v73 = &protocol witness table for INSearchForAccountsIntent;
        v74 = v25;
      }

      else
      {

        v72 = 0;
        v73 = 0;
        v74 = v95;
      }
    }
  }

  return v72;
}

uint64_t USOParse.userDialogAct.getter@<X0>(uint64_t a1@<X8>)
{
  v9 = a1;
  v13 = 0;
  v7 = type metadata accessor for Siri_Nlu_External_UserParse();
  v5 = *(v7 - 8);
  v6 = v7 - 8;
  v4 = (*(v5 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v7);
  v8 = &v4 - v4;
  v13 = v1;
  v2 = USOParse.userParse.getter();
  v11 = MEMORY[0x26D61F2D0](v2);
  (*(v5 + 8))(v8, v7);
  v12 = v11;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay12SiriNLUTypes0A27_Nlu_External_UserDialogActVGMd, &_sSay12SiriNLUTypes0A27_Nlu_External_UserDialogActVGMR);
  lazy protocol witness table accessor for type [Siri_Nlu_External_UserDialogAct] and conformance [A]();
  Collection.first.getter();
}

Swift::Bool __swiftcall Parse.isFirstPartyApp()()
{
  v48 = 0;
  v37 = 0;
  v43 = 0;
  v38 = type metadata accessor for Logger();
  v39 = *(v38 - 8);
  v40 = v39;
  v1 = *(v39 + 64);
  MEMORY[0x28223BE20](v38 - 8);
  v41 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = v0;
  v42 = Parse.toAppId()();
  if (v42.value._object)
  {
    v36 = v42;
    object = v42.value._object;
    countAndFlagsBits = v42.value._countAndFlagsBits;
    v43 = v42;
    v3 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("com.apple.", 0xAuLL, 1);
    v31 = v3._object;
    v33 = String.hasPrefix(_:)(v3);

    v34 = v33;
    v35 = v37;
  }

  else
  {
    v4 = v41;
    v5 = Logger.payments.unsafeMutableAddressor();
    (*(v40 + 16))(v4, v5, v38);
    v28 = Logger.logObject.getter();
    v25 = v28;
    v27 = static os_log_type_t.debug.getter();
    v26 = v27;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
    v29 = _allocateUninitializedArray<A>(_:)();
    if (os_log_type_enabled(v28, v27))
    {
      v6 = v37;
      v16 = static UnsafeMutablePointer.allocate(capacity:)();
      v12 = v16;
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v14 = 0;
      v17 = createStorage<A>(capacity:type:)(0);
      v15 = v17;
      v18 = createStorage<A>(capacity:type:)(v14);
      v47 = v16;
      v46 = v17;
      v45 = v18;
      v19 = 0;
      v20 = &v47;
      serialize(_:at:)(0, &v47);
      serialize(_:at:)(v19, v20);
      v44 = v29;
      v21 = &v9;
      MEMORY[0x28223BE20](&v9);
      v22 = &v9 - 6;
      *(&v9 - 4) = v7;
      *(&v9 - 3) = &v46;
      *(&v9 - 2) = &v45;
      v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
      lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
      Sequence.forEach(_:)();
      v24 = v6;
      if (v6)
      {
        __break(1u);
      }

      else
      {
        _os_log_impl(&dword_2686B1000, v25, v26, "#Parse isFirstPartyApp() no app ID in parse, so this is first party app by default", v12, 2u);
        v10 = 0;
        destroyStorage<A>(_:count:)(v15, 0, v13);
        destroyStorage<A>(_:count:)(v18, v10, MEMORY[0x277D84F70] + 8);
        MEMORY[0x26D620BD0](v12, MEMORY[0x277D84B78]);

        v11 = v24;
      }
    }

    else
    {

      v11 = v37;
    }

    v9 = v11;

    (*(v40 + 8))(v41, v38);
    v34 = 1;
    v35 = v9;
  }

  return v34 & 1;
}

Swift::Int __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> Parse.DirectInvocation.getSelectionIndex()()
{
  v55 = 0;
  v48 = 0;
  v42 = type metadata accessor for Logger();
  v43 = *(v42 - 8);
  v44 = v43;
  v1 = *(v43 + 64);
  MEMORY[0x28223BE20](v42 - 8);
  v45 = v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = v0;
  v46 = Parse.DirectInvocation.userData.getter();
  if (v46)
  {
    v40 = v46;
    v39 = v46;
    v47[0] = PaymentsDirectInvocations.Keys.rawValue.getter(2);
    v47[1] = v3;
    v38 = v47;
    MEMORY[0x26D620650](v53);
    outlined destroy of String.UTF8View(v38);
  }

  else
  {
    memset(v53, 0, sizeof(v53));
    v54 = 0;
  }

  if (v54)
  {
    if (swift_dynamicCast())
    {
      v36 = v47[2];
      v37 = 0;
    }

    else
    {
      v36 = 0;
      v37 = 1;
    }

    v34 = v36;
    v35 = v37;
  }

  else
  {
    outlined destroy of FlowActivity?(v53);
    v34 = 0;
    v35 = 1;
  }

  v33 = v34;
  if (v35)
  {
    v5 = v45;
    v6 = Logger.payments.unsafeMutableAddressor();
    (*(v44 + 16))(v5, v6, v42);
    v30 = Logger.logObject.getter();
    v27 = v30;
    v29 = static os_log_type_t.error.getter();
    v28 = v29;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
    v31 = _allocateUninitializedArray<A>(_:)();
    if (os_log_type_enabled(v30, v29))
    {
      v26 = v41;
      v18 = static UnsafeMutablePointer.allocate(capacity:)();
      v14 = v18;
      v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v16 = 0;
      v19 = createStorage<A>(capacity:type:)(0);
      v17 = v19;
      v20 = createStorage<A>(capacity:type:)(v16);
      v52 = v18;
      v51 = v19;
      v50 = v20;
      v21 = 0;
      v22 = &v52;
      serialize(_:at:)(0, &v52);
      serialize(_:at:)(v21, v22);
      v49 = v31;
      v23 = v12;
      MEMORY[0x28223BE20](v12);
      v24 = &v12[-6];
      v12[-4] = v7;
      v12[-3] = &v51;
      v12[-2] = &v50;
      v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
      lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
      v8 = v26;
      Sequence.forEach(_:)();
      if (v8)
      {
        __break(1u);
      }

      else
      {
        _os_log_impl(&dword_2686B1000, v27, v28, "Could not find contactId in userData", v14, 2u);
        v13 = 0;
        destroyStorage<A>(_:count:)(v17, 0, v15);
        destroyStorage<A>(_:count:)(v20, v13, MEMORY[0x277D84F70] + 8);
        MEMORY[0x26D620BD0](v14, MEMORY[0x277D84B78]);
      }
    }

    else
    {
    }

    (*(v44 + 8))(v45, v42);
    lazy protocol witness table accessor for type PaymentsError and conformance PaymentsError();
    v12[0] = 0;
    v9 = swift_allocError();
    v10 = v12[0];
    v12[1] = v9;
    *v11 = v12[0];
    *(v11 + 8) = v10;
    *(v11 + 16) = v10;
    *(v11 + 24) = v10;
    *(v11 + 32) = v10;
    *(v11 + 40) = v10;
    *(v11 + 48) = 17;
    swift_willThrow();
    return v12[0];
  }

  else
  {
    v32 = v33;
    result = v33;
    v48 = v33;
  }

  return result;
}

uint64_t closure #1 in USOParse.isRequestToSummariseAppleCardInfo.getter()
{
  v3 = UsoIdentifier.value.getter();
  v4 = v0;
  countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("apple_card", 0xAuLL, 1)._countAndFlagsBits;
  v5 = MEMORY[0x26D620740](v3, v4, countAndFlagsBits);

  return v5 & 1;
}

uint64_t USOParse.isRequestForAppleCardBalance.getter()
{
  v146 = 0;
  v136 = 0;
  v133 = 0;
  v131 = 0;
  v128 = 0;
  v126 = 0;
  v123 = 0;
  v115 = 0;
  v108 = type metadata accessor for Siri_Nlu_External_UserParse();
  v106 = *(v108 - 8);
  v107 = v108 - 8;
  v95 = (*(v106 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v108);
  v96 = v8 - v95;
  v97 = (v1 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v8 - v95);
  v98 = v8 - v97;
  v99 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v8 - v97);
  v109 = v8 - v99;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMd, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMR);
  v103 = *(*(v3 - 8) + 64);
  v100 = (v103 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v3);
  v101 = v8 - v100;
  v102 = (v103 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v8 - v100);
  v104 = v8 - v102;
  v105 = (v103 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v8 - v102);
  v116 = v8 - v105;
  v146 = v0;
  v4 = USOParse.userParse.getter();
  v114 = MEMORY[0x26D61F2D0](v4);
  v110 = *(v106 + 8);
  v111 = v106 + 8;
  v110(v109, v108);
  v143 = v114;
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay12SiriNLUTypes0A27_Nlu_External_UserDialogActVGMd, &_sSay12SiriNLUTypes0A27_Nlu_External_UserDialogActVGMR);
  v113 = lazy protocol witness table accessor for type [Siri_Nlu_External_UserDialogAct] and conformance [A]();
  Collection.first.getter();

  v117 = type metadata accessor for Siri_Nlu_External_UserDialogAct();
  v118 = *(v117 - 8);
  v119 = v117 - 8;
  v120 = *(v118 + 48);
  v121 = v118 + 48;
  if (v120(v116, 1) == 1)
  {
    outlined destroy of Siri_Nlu_External_UserDialogAct?(v116);
  }

  else
  {
    v94 = Siri_Nlu_External_UserDialogAct.usoTask.getter();
    (*(v118 + 8))(v116, v117);
    if (v94)
    {
      v93 = v94;
      v92 = v94;
      UsoTask.eraseToAny.getter();

      goto LABEL_6;
    }
  }

  memset(v144, 0, sizeof(v144));
  v145 = 0;
LABEL_6:
  if (v145)
  {
    type metadata accessor for UsoTask_request_common_PaymentAccount();
    if (swift_dynamicCast())
    {
      v91 = v122;
    }

    else
    {
      v91 = 0;
    }

    v90 = v91;
  }

  else
  {
    outlined destroy of FlowActivity?(v144);
    v90 = 0;
  }

  v89 = v90;
  if (!v90)
  {
LABEL_31:
    v5 = USOParse.userParse.getter();
    v65 = MEMORY[0x26D61F2D0](v5);
    v110(v98, v108);
    v140 = v65;
    Collection.first.getter();

    if ((v120)(v104, 1, v117) == 1)
    {
      outlined destroy of Siri_Nlu_External_UserDialogAct?(v104);
    }

    else
    {
      v64 = Siri_Nlu_External_UserDialogAct.usoTask.getter();
      (*(v118 + 8))(v104, v117);
      if (v64)
      {
        v63 = v64;
        v62 = v64;
        UsoTask.eraseToAny.getter();

        goto LABEL_36;
      }
    }

    memset(v141, 0, sizeof(v141));
    v142 = 0;
LABEL_36:
    if (v142)
    {
      type metadata accessor for UsoTask_noVerb_common_PaymentAccount();
      if (swift_dynamicCast())
      {
        v61 = v127;
      }

      else
      {
        v61 = 0;
      }

      v60 = v61;
    }

    else
    {
      outlined destroy of FlowActivity?(v141);
      v60 = 0;
    }

    v59 = v60;
    if (v60)
    {
      v58 = v59;
      v56 = v59;
      v131 = v59;

      dispatch thunk of Uso_VerbTemplate_NoVerb.entity.getter();
      v57 = v130[1];

      if (v57)
      {
        v55 = v57;
        v52 = v57;
        v53 = dispatch thunk of UsoEntity_common_PaymentAccount.balance.getter();

        v54 = v53;
      }

      else
      {
        v54 = 0;
      }

      v130[0] = v54;
      v51 = v54 != 0;
      v50 = v51;
      outlined destroy of ContiguousArray<A1>(v130);
      if (v50)
      {

        dispatch thunk of Uso_VerbTemplate_NoVerb.entity.getter();
        v49 = v129;

        if (!v49)
        {
          goto LABEL_56;
        }

        v48 = v49;
        v46 = v49;
        v47 = dispatch thunk of UsoEntity_common_PaymentAccount.accountType.getter();

        if (v47)
        {
          v45 = v47;
          v42 = v47;
          object = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("name", 4uLL, 1)._object;
          v43 = dispatch thunk of CodeGenGlobalArgs.getUsoIdentifiersFor(attributeName:)();

          v44 = v43;
        }

        else
        {
LABEL_56:
          v44 = 0;
        }

        v40 = v44;
        if (v44)
        {
          v39 = v40;
          v37 = v40;
          v128 = v40;
          v38 = USOParse.isRequestForAppleCardBalanceHelper(usoIdentifiers:)();

          v68 = v38;
          return v68 & 1;
        }
      }
    }

    v6 = USOParse.userParse.getter();
    v36 = MEMORY[0x26D61F2D0](v6);
    v110(v96, v108);
    v137 = v36;
    Collection.first.getter();

    if ((v120)(v101, 1, v117) == 1)
    {
      outlined destroy of Siri_Nlu_External_UserDialogAct?(v101);
    }

    else
    {
      v35 = Siri_Nlu_External_UserDialogAct.usoTask.getter();
      (*(v118 + 8))(v101, v117);
      if (v35)
      {
        v34 = v35;
        v33 = v35;
        UsoTask.eraseToAny.getter();

        goto LABEL_66;
      }
    }

    memset(v138, 0, sizeof(v138));
    v139 = 0;
LABEL_66:
    if (v139)
    {
      type metadata accessor for UsoTask_summarise_common_PaymentAccount();
      if (swift_dynamicCast())
      {
        v32 = v132;
      }

      else
      {
        v32 = 0;
      }

      v31 = v32;
    }

    else
    {
      outlined destroy of FlowActivity?(v138);
      v31 = 0;
    }

    v30 = v31;
    if (v31)
    {
      v29 = v30;
      v27 = v30;
      v136 = v30;

      dispatch thunk of Uso_VerbTemplate_Reference.reference.getter();
      v28 = v135[1];

      if (v28)
      {
        v26 = v28;
        v23 = v28;
        v24 = dispatch thunk of UsoEntity_common_PaymentAccount.balance.getter();

        v25 = v24;
      }

      else
      {
        v25 = 0;
      }

      v135[0] = v25;
      v22 = v25 != 0;
      v21 = v22;
      outlined destroy of ContiguousArray<A1>(v135);
      if (v21)
      {

        dispatch thunk of Uso_VerbTemplate_Reference.reference.getter();
        v20 = v134;

        if (!v20)
        {
          goto LABEL_86;
        }

        v19 = v20;
        v17 = v20;
        v18 = dispatch thunk of UsoEntity_common_PaymentAccount.accountType.getter();

        if (v18)
        {
          v16 = v18;
          v13 = v18;
          v12 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("name", 4uLL, 1)._object;
          v14 = dispatch thunk of CodeGenGlobalArgs.getUsoIdentifiersFor(attributeName:)();

          v15 = v14;
        }

        else
        {
LABEL_86:
          v15 = 0;
        }

        v11 = v15;
        if (v15)
        {
          v10 = v11;
          v8[1] = v11;
          v133 = v11;
          v9 = USOParse.isRequestForAppleCardBalanceHelper(usoIdentifiers:)();

          v68 = v9;
          return v68 & 1;
        }
      }
    }

    v68 = 0;
    return v68 & 1;
  }

  v88 = v89;
  v86 = v89;
  v126 = v89;

  dispatch thunk of Uso_VerbTemplate_ReferenceSelect.select.getter();
  v87 = v125[1];

  if (v87)
  {
    v85 = v87;
    v82 = v87;
    v83 = dispatch thunk of UsoEntity_common_PaymentAccount.balance.getter();

    v84 = v83;
  }

  else
  {
    v84 = 0;
  }

  v125[0] = v84;
  v81 = v84 != 0;
  v80 = v81;
  outlined destroy of ContiguousArray<A1>(v125);
  if (!v80)
  {
    goto LABEL_25;
  }

  dispatch thunk of Uso_VerbTemplate_ReferenceSelect.reference.getter();
  v79 = v124;

  if (!v79)
  {
    goto LABEL_26;
  }

  v78 = v79;
  v76 = v79;
  v77 = dispatch thunk of UsoEntity_common_PaymentAccount.accountType.getter();

  if (v77)
  {
    v75 = v77;
    v72 = v77;
    v71 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("name", 4uLL, 1)._object;
    v73 = dispatch thunk of CodeGenGlobalArgs.getUsoIdentifiersFor(attributeName:)();

    v74 = v73;
  }

  else
  {
LABEL_26:
    v74 = 0;
  }

  v70 = v74;
  if (!v74)
  {
LABEL_25:

    goto LABEL_31;
  }

  v69 = v70;
  v66 = v70;
  v123 = v70;
  v67 = USOParse.isRequestForAppleCardBalanceHelper(usoIdentifiers:)();

  v68 = v67;
  return v68 & 1;
}

uint64_t USOParse.isRequestForAppleCardBalanceHelper(usoIdentifiers:)()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay12SiriOntology13UsoIdentifierVGMd, &_sSay12SiriOntology13UsoIdentifierVGMR);
  lazy protocol witness table accessor for type [UsoIdentifier] and conformance [A]();
  return Sequence.contains(where:)() & 1;
}

uint64_t closure #1 in USOParse.isRequestForAppleCardBalanceHelper(usoIdentifiers:)()
{
  v15 = UsoIdentifier.value.getter();
  v16 = v0;
  countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("apple_card", 0xAuLL, 1)._countAndFlagsBits;
  v17 = MEMORY[0x26D620740](v15, v16, countAndFlagsBits);

  if (v17)
  {
    v14 = 1;
  }

  else
  {
    v11 = UsoIdentifier.value.getter();
    v12 = v2;
    v3 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Apple Card", 0xAuLL, 1)._countAndFlagsBits;
    v13 = MEMORY[0x26D620740](v11, v12, v3);

    v14 = v13;
  }

  if (v14)
  {
    v10 = 1;
  }

  else
  {
    v7 = UsoIdentifier.value.getter();
    v8 = v4;
    v5 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("generic_card", 0xCuLL, 1)._countAndFlagsBits;
    v9 = MEMORY[0x26D620740](v7, v8, v5);

    v10 = v9;
  }

  return v10 & 1;
}

uint64_t USOParse.isRequestForAppleSavings.getter()
{
  v155 = 0;
  v145 = 0;
  v143 = 0;
  v141 = 0;
  v142 = 0;
  v139 = 0;
  v137 = 0;
  v135 = 0;
  v136 = 0;
  v133 = 0;
  v131 = 0;
  v129 = 0;
  v130 = 0;
  v121 = 0;
  v114 = type metadata accessor for Siri_Nlu_External_UserParse();
  v112 = *(v114 - 8);
  v113 = v114 - 8;
  v101 = (*(v112 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v114);
  v102 = &v20 - v101;
  v103 = (v1 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v20 - v101);
  v104 = &v20 - v103;
  v105 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v20 - v103);
  v115 = &v20 - v105;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMd, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMR);
  v109 = *(*(v3 - 8) + 64);
  v106 = (v109 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v3);
  v107 = &v20 - v106;
  v108 = (v109 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v20 - v106);
  v110 = &v20 - v108;
  v111 = (v109 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v20 - v108);
  v122 = &v20 - v111;
  v155 = v0;
  v4 = USOParse.userParse.getter();
  v120 = MEMORY[0x26D61F2D0](v4);
  v116 = *(v112 + 8);
  v117 = v112 + 8;
  v116(v115, v114);
  v152 = v120;
  v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay12SiriNLUTypes0A27_Nlu_External_UserDialogActVGMd, &_sSay12SiriNLUTypes0A27_Nlu_External_UserDialogActVGMR);
  v119 = lazy protocol witness table accessor for type [Siri_Nlu_External_UserDialogAct] and conformance [A]();
  Collection.first.getter();

  v123 = type metadata accessor for Siri_Nlu_External_UserDialogAct();
  v124 = *(v123 - 8);
  v125 = v123 - 8;
  v126 = *(v124 + 48);
  v127 = v124 + 48;
  if (v126(v122, 1) == 1)
  {
    outlined destroy of Siri_Nlu_External_UserDialogAct?(v122);
  }

  else
  {
    v100 = Siri_Nlu_External_UserDialogAct.usoTask.getter();
    (*(v124 + 8))(v122, v123);
    if (v100)
    {
      v99 = v100;
      v98 = v100;
      UsoTask.eraseToAny.getter();

      goto LABEL_6;
    }
  }

  memset(v153, 0, sizeof(v153));
  v154 = 0;
LABEL_6:
  if (v154)
  {
    type metadata accessor for UsoTask_request_common_PaymentAccount();
    if (swift_dynamicCast())
    {
      v97 = v128;
    }

    else
    {
      v97 = 0;
    }

    v96 = v97;
  }

  else
  {
    outlined destroy of FlowActivity?(v153);
    v96 = 0;
  }

  v95 = v96;
  if (v96)
  {
    v94 = v95;
    v92 = v95;
    v133 = v95;

    dispatch thunk of Uso_VerbTemplate_ReferenceSelect.reference.getter();
    v93 = v132;
    if (v132)
    {
      v91 = v93;
      v88 = v93;
      v131 = v93;

      v5 = dispatch thunk of UsoEntity_common_PaymentAccount.name.getter();
      v89 = v5;
      v90 = v6;
      if (v6)
      {
        v86 = v89;
        v87 = v90;
        v83 = v90;
        v84 = v89;
        v129 = v89;
        v130 = v90;
        v7 = dispatch thunk of UsoEntity_common_PaymentAccount.accountType.getter();
        v85 = v7;
        if (v7)
        {
          v82 = v85;
          v77 = v85;
          v78 = dispatch thunk of UsoEntity_common_PaymentAccountType.name.getter();
          v79 = v8;

          v80 = v78;
          v81 = v79;
        }

        else
        {
          v80 = 0;
          v81 = 0;
        }

        v74 = v81;
        v75 = USOParse.isRequestForAppleSavingsHelper(name:accountName:)(v84, v83, v80, v81);

        v76 = v75;
        return v76 & 1;
      }
    }
  }

  v9 = USOParse.userParse.getter();
  v73 = MEMORY[0x26D61F2D0](v9);
  v116(v104, v114);
  v149 = v73;
  Collection.first.getter();

  if ((v126)(v110, 1, v123) == 1)
  {
    outlined destroy of Siri_Nlu_External_UserDialogAct?(v110);
  }

  else
  {
    v72 = Siri_Nlu_External_UserDialogAct.usoTask.getter();
    (*(v124 + 8))(v110, v123);
    if (v72)
    {
      v71 = v72;
      v70 = v72;
      UsoTask.eraseToAny.getter();

      goto LABEL_31;
    }
  }

  memset(v150, 0, sizeof(v150));
  v151 = 0;
LABEL_31:
  if (v151)
  {
    type metadata accessor for UsoTask_noVerb_common_PaymentAccount();
    if (swift_dynamicCast())
    {
      v69 = v134;
    }

    else
    {
      v69 = 0;
    }

    v68 = v69;
  }

  else
  {
    outlined destroy of FlowActivity?(v150);
    v68 = 0;
  }

  v67 = v68;
  if (v68)
  {
    v66 = v67;
    v64 = v67;
    v139 = v67;

    dispatch thunk of Uso_VerbTemplate_NoVerb.entity.getter();
    v65 = v138;
    if (v138)
    {
      v63 = v65;
      v60 = v65;
      v137 = v65;

      v10 = dispatch thunk of UsoEntity_common_PaymentAccount.name.getter();
      v61 = v10;
      v62 = v11;
      if (v11)
      {
        v58 = v61;
        v59 = v62;
        v55 = v62;
        v56 = v61;
        v135 = v61;
        v136 = v62;
        v12 = dispatch thunk of UsoEntity_common_PaymentAccount.accountType.getter();
        v57 = v12;
        if (v12)
        {
          v54 = v57;
          v49 = v57;
          v50 = dispatch thunk of UsoEntity_common_PaymentAccountType.name.getter();
          v51 = v13;

          v52 = v50;
          v53 = v51;
        }

        else
        {
          v52 = 0;
          v53 = 0;
        }

        v47 = v53;
        v48 = USOParse.isRequestForAppleSavingsHelper(name:accountName:)(v56, v55, v52, v53);

        v76 = v48;
        return v76 & 1;
      }
    }
  }

  v14 = USOParse.userParse.getter();
  v46 = MEMORY[0x26D61F2D0](v14);
  v116(v102, v114);
  v146 = v46;
  Collection.first.getter();

  if ((v126)(v107, 1, v123) == 1)
  {
    outlined destroy of Siri_Nlu_External_UserDialogAct?(v107);
  }

  else
  {
    v45 = Siri_Nlu_External_UserDialogAct.usoTask.getter();
    (*(v124 + 8))(v107, v123);
    if (v45)
    {
      v44 = v45;
      v43 = v45;
      UsoTask.eraseToAny.getter();

      goto LABEL_56;
    }
  }

  memset(v147, 0, sizeof(v147));
  v148 = 0;
LABEL_56:
  if (v148)
  {
    type metadata accessor for UsoTask_summarise_common_PaymentAccount();
    if (swift_dynamicCast())
    {
      v42 = v140;
    }

    else
    {
      v42 = 0;
    }

    v41 = v42;
  }

  else
  {
    outlined destroy of FlowActivity?(v147);
    v41 = 0;
  }

  v40 = v41;
  if (!v41)
  {
    goto LABEL_76;
  }

  v39 = v40;
  v37 = v40;
  v145 = v40;

  dispatch thunk of Uso_VerbTemplate_Reference.reference.getter();
  v38 = v144;
  if (!v144 || (v36 = v38, v33 = v38, v143 = v38, , v15 = dispatch thunk of UsoEntity_common_PaymentAccount.name.getter(), v34 = v15, (v35 = v16) == 0))
  {

LABEL_76:
    v76 = 0;
    return v76 & 1;
  }

  v31 = v34;
  v32 = v35;
  v28 = v35;
  v29 = v34;
  v141 = v34;
  v142 = v35;
  v17 = dispatch thunk of UsoEntity_common_PaymentAccount.accountType.getter();
  v30 = v17;
  if (v17)
  {
    v27 = v30;
    v22 = v30;
    v23 = dispatch thunk of UsoEntity_common_PaymentAccountType.name.getter();
    v24 = v18;

    v25 = v23;
    v26 = v24;
  }

  else
  {
    v25 = 0;
    v26 = 0;
  }

  v20 = v26;
  v21 = USOParse.isRequestForAppleSavingsHelper(name:accountName:)(v29, v28, v25, v26);

  v76 = v21;
  return v76 & 1;
}

uint64_t USOParse.isRequestForAppleSavingsHelper(name:accountName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v24 = 0;
  v27 = a1;
  v28 = a2;
  v25 = a3;
  v26 = a4;
  v23 = String.lowercased()();
  v22 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("apple savings", 0xDuLL, 1);
  lazy protocol witness table accessor for type String and conformance String();
  v14 = StringProtocol.contains<A>(_:)();
  outlined destroy of String.UTF8View(&v22);
  outlined destroy of String.UTF8View(&v23);

  if ((v14 & 1) == 0)
  {
    v21 = String.lowercased()();
    v20 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("apple", 5uLL, 1);
    v11 = StringProtocol.contains<A>(_:)();
    outlined destroy of String.UTF8View(&v20);
    outlined destroy of String.UTF8View(&v21);

    if ((v11 & 1) == 0)
    {
      v10 = 0;
LABEL_15:

      v12 = v10;
      goto LABEL_18;
    }

    if (a4)
    {
      v4 = String.lowercased()();

      v9 = v4;
    }

    else
    {
      v9._countAndFlagsBits = 0;
      v9._object = 0;
    }

    v5 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("savings account", 0xFuLL, 1);

    v18 = v9;
    v19 = v5;
    if (v9._object)
    {
      outlined init with copy of String(&v18, &v17);
      if (v19._object)
      {
        v16 = v17;
        v15 = v19;
        v7 = MEMORY[0x26D620740](v17, *(&v17 + 1), v19._countAndFlagsBits, v19._object);
        outlined destroy of String.UTF8View(&v15);
        outlined destroy of String.UTF8View(&v16);
        outlined destroy of String.UTF8View(&v18);
        v8 = v7;
LABEL_14:

        v10 = v8;
        goto LABEL_15;
      }

      outlined destroy of String.UTF8View(&v17);
    }

    else if (!v19._object)
    {
      outlined destroy of String.UTF8View(&v18);
      v8 = 1;
      goto LABEL_14;
    }

    outlined destroy of DIIdentifier(&v18);
    v8 = 0;
    goto LABEL_14;
  }

  v12 = 1;
LABEL_18:

  return v12 & 1;
}

uint64_t sub_2687C76D0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2687C7710()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2687C7750()
{
  v3 = *(type metadata accessor for USOParse() - 8);
  v1 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v4 = v1 + *(v3 + 64);
  (*(v3 + 8))(v0 + v1);
  return swift_deallocObject();
}

uint64_t partial apply for implicit closure #2 in Parse.toSiriKitIntent(previousIntent:aceService:contactResolver:)()
{
  v1 = *(type metadata accessor for USOParse() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return implicit closure #2 in Parse.confirmationResponse.getter(v2);
}

uint64_t sub_2687C78D8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2687C7918()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2687C7958()
{
  v3 = *(type metadata accessor for Parse() - 8);
  v1 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v4 = v1 + *(v3 + 64);
  (*(v3 + 8))(v0 + v1);
  return swift_deallocObject();
}

uint64_t sub_2687C7A7C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2687C7ABC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2687C7AFC()
{
  v3 = *(type metadata accessor for Parse.DirectInvocation() - 8);
  v1 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v4 = v1 + *(v3 + 64);
  (*(v3 + 8))(v0 + v1);
  return swift_deallocObject();
}

uint64_t partial apply for implicit closure #4 in Parse.confirmationResponse.getter()
{
  v1 = *(type metadata accessor for Parse.DirectInvocation() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return implicit closure #4 in Parse.confirmationResponse.getter(v2);
}

uint64_t sub_2687C7C84()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2687C7CC4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2687C7D04()
{
  v3 = *(type metadata accessor for USOParse() - 8);
  v1 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v4 = v1 + *(v3 + 64);
  (*(v3 + 8))(v0 + v1);
  return swift_deallocObject();
}

uint64_t sub_2687C7E28()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2687C7E68()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2687C7EA8()
{
  v3 = *(type metadata accessor for Parse() - 8);
  v1 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v4 = v1 + *(v3 + 64);
  (*(v3 + 8))(v0 + v1);
  return swift_deallocObject();
}

uint64_t sub_2687C7FCC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2687C800C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t outlined init with copy of Any?(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 24))
  {
    v2 = *(a1 + 24);
    *(a2 + 24) = v2;
    (**(v2 - 8))();
  }

  else
  {
    *a2 = *a1;
    *(a2 + 16) = *(a1 + 16);
  }

  return a2;
}

uint64_t sub_2687C80DC()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  return swift_deallocObject();
}

uint64_t sub_2687C817C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2687C81BC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2687C81FC()
{
  v3 = *(type metadata accessor for Parse() - 8);
  v1 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v4 = v1 + *(v3 + 64);
  (*(v3 + 8))(v0 + v1);
  return swift_deallocObject();
}

uint64_t partial apply for implicit closure #3 in Parse.toAppId()()
{
  v1 = *(type metadata accessor for Parse() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return implicit closure #3 in Parse.toAppId()();
}

uint64_t sub_2687C8384()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2687C83C4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2687C8404()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2687C849C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2687C84DC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2687C851C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2687C85B4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2687C85F4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2687C8634()
{
  v3 = *(type metadata accessor for Parse() - 8);
  v1 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v4 = v1 + *(v3 + 64);
  (*(v3 + 8))(v0 + v1);
  return swift_deallocObject();
}

uint64_t sub_2687C8758()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2687C8798()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2687C87D8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2687C8818()
{
  v3 = *(type metadata accessor for USOParse() - 8);
  v1 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v4 = v1 + *(v3 + 64);
  (*(v3 + 8))(v0 + v1);
  return swift_deallocObject();
}

uint64_t sub_2687C893C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2687C897C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2687C89BC()
{
  v3 = *(type metadata accessor for Parse() - 8);
  v1 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v4 = v1 + *(v3 + 64);
  (*(v3 + 8))(v0 + v1);
  return swift_deallocObject();
}

uint64_t sub_2687C8AE0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2687C8B20()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t App.sirikitApp.getter()
{
  v46 = 0;
  v45 = 0;
  v44 = 0;
  v43 = 0;
  v42 = 0;
  v41 = 0;
  v37 = 0;
  v38 = App.appIdentifier.getter();
  v39 = v0;
  if (!v0)
  {
    goto LABEL_14;
  }

  v35 = v38;
  v36 = v39;
  v32 = v39;
  v33 = v38;
  v44 = v38;
  v45 = v39;
  v1 = static SAAppInfoFactory.createAppInfo(app:)();
  v34 = v1;
  if (!v1)
  {

LABEL_14:
    v13 = 0;
    v14 = v37;
    return v13;
  }

  v31 = v34;
  v29 = v34;
  v43 = v34;
  v28 = type metadata accessor for SirikitLocalizedAppName();
  v42 = Array.init()();
  v2 = [v34 appNameMap];
  v30 = v2;
  if (v2)
  {
    v27 = v30;
    v24 = v30;
    v25 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    v26 = v25;
  }

  else
  {
    v26 = 0;
  }

  v23 = v26;
  if (v26)
  {
    v22 = v23;
    v3 = v37;
    v15 = v23;
    v41 = v23;
    v40 = v23;
    v16 = v9;
    MEMORY[0x28223BE20](v9);
    v17 = v8;
    v8[2] = closure #1 in App.sirikitApp.getter;
    v8[3] = 0;
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDyS2SGMd, &_sSDyS2SGMR);
    v4 = lazy protocol witness table accessor for type [String : String] and conformance [A : B]();
    v6 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for thunk for @callee_guaranteed (@guaranteed String, @guaranteed String) -> (@owned SirikitLocalizedAppName), v17, v18, v28, MEMORY[0x277D84A98], v4, MEMORY[0x277D84AC0], v5);
    v19 = v3;
    v20 = v6;
    v42 = v6;

    v21 = v19;
  }

  else
  {
    v21 = v37;
  }

  v12 = v21;
  v9[0] = 0;
  type metadata accessor for SirikitApp.Builder();
  v9[1] = SirikitApp.Builder.__allocating_init()();
  v9[3] = dispatch thunk of SirikitApp.Builder.withAppId(print:speak:)();

  v9[2] = v42;

  v9[4] = dispatch thunk of SirikitApp.Builder.withLocalizedAppNames(_:)();

  v10 = dispatch thunk of SirikitApp.Builder.build()();

  v11 = v10;
  outlined destroy of [SFCardSection](&v42);

  v13 = v11;
  v14 = v12;
  return v13;
}

uint64_t static AppUtil.walletApp.getter()
{
  type metadata accessor for App();
  static AppUtil.PASSBOOK_APP_BUNDLE_ID.getter();
  v0 = AppUtil.PASSBOOK_EXTENSION_BUNDLE_ID.unsafeMutableAddressor();
  v3 = *v0;
  v4 = *(v0 + 1);

  v1 = AppUtil.PASSBOOK_UI_EXTENSION_BUNDLE_ID.unsafeMutableAddressor();
  v5 = *v1;
  v6 = *(v1 + 1);

  return App.__allocating_init(appIdentifier:systemExtensionBundleId:systemUIExtensionBundleId:pluginIdentifier:)();
}

id static AppUtil.buildPunchout(for:locale:)()
{
  type metadata accessor for SAUIAppPunchOut();
  v9 = SAUIAppPunchOut.__allocating_init()();
  v10 = App.appIdentifier.getter();
  if (v0)
  {
    v7 = MEMORY[0x26D620690](v10);

    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  [v9 setBundleId_];
  MEMORY[0x277D82BD8](v8);
  type metadata accessor for AppInformationResolver();

  AppInformationResolver.__allocating_init(app:)();
  v5 = dispatch thunk of AppInformationResolver.getLocalizedAppDisplayName(inLocale:)();
  v6 = v1;

  if (v6)
  {
    v3 = MEMORY[0x26D620690](v5);

    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  [v9 setAppDisplayName_];
  MEMORY[0x277D82BD8](v4);

  return v9;
}

BOOL App.isFirstParty.getter()
{
  v11 = v0;
  v9._countAndFlagsBits = App.appIdentifier.getter();
  v9._object = v1;

  if (v9._object)
  {
    v10 = v9;
  }

  else
  {
    v8._countAndFlagsBits = App.systemExtensionBundleId.getter();
    v8._object = v2;

    if (v8._object)
    {
      v10 = v8;
    }

    else
    {
      v7._countAndFlagsBits = App.pluginIdentifier.getter();
      v7._object = v3;
      if (v3)
      {
        v10 = v7;
      }

      else
      {
        v10 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1);
      }
    }

    if (v9._object)
    {
      outlined destroy of String.UTF8View(&v9);
    }
  }

  v4 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("com.apple.", 0xAuLL, 1);
  v6 = String.hasPrefix(_:)(v4);

  return v6;
}

Swift::Bool __swiftcall App.supportsIntent(intentName:)(Swift::String intentName)
{
  v15 = 0;
  v16 = 0;
  v18 = intentName;
  v17 = v1;
  v10 = App.appIdentifier.getter();
  v11 = v2;
  if (v2)
  {
    v15 = v10;
    v16 = v2;
    v4 = AppUtil.intentSupportResolver.unsafeMutableAddressor();
    swift_beginAccess();
    outlined init with copy of GlobalsProviding(v4, v12);
    swift_endAccess();
    v5 = v13;
    v6 = v14;
    __swift_project_boxed_opaque_existential_1(v12, v13);
    v7 = (*(v6 + 8))(v10, v11, intentName._countAndFlagsBits, intentName._object, v5);
    __swift_destroy_boxed_opaque_existential_0(v12);

    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  return v8 & 1;
}

uint64_t _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(void (*a1)(char *, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v37 = a1;
  v38 = a2;
  v62 = a3;
  v52 = a4;
  v39 = a5;
  v61 = a6;
  v41 = a8;
  v42 = "Fatal error";
  v43 = "Range requires lowerBound <= upperBound";
  v44 = "Swift/Range.swift";
  v45 = "Index out of range";
  v46 = "invalid Collection: count differed in successive traversals";
  v47 = "Swift/ArrayShared.swift";
  v72[3] = a3;
  v72[2] = a4;
  v72[1] = a5;
  v48 = *(a5 - 8);
  v49 = a5 - 8;
  v50 = (*(v48 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](a1);
  v51 = &v18 - v50;
  v9 = *(v8 + 8);
  v53 = 0;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v55 = *(AssociatedTypeWitness - 8);
  v56 = AssociatedTypeWitness - 8;
  v57 = (*(v55 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v10 = MEMORY[0x28223BE20](v53);
  v58 = &v18 - v57;
  v59 = (*(*(v11 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v10);
  v60 = &v18 - v59;
  v63 = swift_getAssociatedTypeWitness();
  v64 = *(v63 - 8);
  v65 = v63 - 8;
  v66 = (*(v64 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v12 = MEMORY[0x28223BE20](v62);
  v67 = &v18 - v66;
  v68 = (v13 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v12);
  v69 = &v18 - v68;
  v70 = dispatch thunk of Collection.count.getter();
  if (!v70)
  {
    goto LABEL_24;
  }

  v72[0] = ContiguousArray.init()();
  v36 = type metadata accessor for ContiguousArray();
  ContiguousArray.reserveCapacity(_:)(v70);
  result = dispatch thunk of Collection.startIndex.getter();
  if (v70 < 0)
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
LABEL_24:
    v20 = static Array._allocateUninitialized(_:)();
    v21 = v40;
    return v20;
  }

  if (!v70)
  {
LABEL_19:
    v26 = v40;
LABEL_20:
    v22 = v26;
    dispatch thunk of Collection.endIndex.getter();
    v17 = *(swift_getAssociatedConformanceWitness() + 8);
    v25 = dispatch thunk of static Equatable.== infix(_:_:)();
    v23 = *(v64 + 8);
    v24 = v64 + 8;
    v23(v67, v63);
    if ((v25 & 1) == 0)
    {
      _fatalErrorMessage(_:_:file:line:flags:)();
      __break(1u);
    }

    v23(v69, v63);
    v19 = v72[0];

    v20 = v19;
    v21 = v22;
    return v20;
  }

  v34 = 0;
  for (i = v40; ; i = v30)
  {
    v32 = i;
    v33 = v34;
    if (v34 < 0 || v33 >= v70)
    {
      goto LABEL_18;
    }

    if (v70 < 0)
    {
      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
LABEL_18:
      _fatalErrorMessage(_:_:file:line:flags:)();
      __break(1u);
      goto LABEL_19;
    }

    v31 = v33 + 1;
    if (__OFADD__(v33, 1))
    {
      break;
    }

    v29 = &v71;
    v28 = dispatch thunk of Collection.subscript.read();
    (*(v55 + 16))(v58);
    v28();
    v16 = v32;
    v37(v58, v51);
    v30 = v16;
    if (v16)
    {
      (*(v55 + 8))(v58, AssociatedTypeWitness);
      (*(v64 + 8))(v69, v63);
      outlined destroy of ContiguousArray<A1>(v72);
      (*(v48 + 32))(v41, v51, v39);
      return v27;
    }

    (*(v55 + 8))(v58, AssociatedTypeWitness);
    ContiguousArray.append(_:)();
    dispatch thunk of Collection.formIndex(after:)();
    if (v31 == v70)
    {
      v26 = v30;
      goto LABEL_20;
    }

    result = v30;
    v34 = v31;
  }

  __break(1u);
  return result;
}

__int128 *AppUtil.usoContactsBundleId.unsafeMutableAddressor()
{
  if (one-time initialization token for usoContactsBundleId != -1)
  {
    swift_once();
  }

  return &static AppUtil.usoContactsBundleId;
}

__int128 *AppUtil.usoNamespace.unsafeMutableAddressor()
{
  if (one-time initialization token for usoNamespace != -1)
  {
    swift_once();
  }

  return &static AppUtil.usoNamespace;
}

NSJSONWritingOptions App.toAppDescription(deviceState:)(void *a1)
{
  v5 = App.getAppName(deviceState:)(a1);
  if (!v1)
  {
    return 0;
  }

  App.appIdentifier.getter();
  if (!v2)
  {

    return 0;
  }

  return NSJSONWritingOptions.init(rawValue:)(v5);
}

uint64_t one-time initialization function for PASSBOOK_EXTENSION_BUNDLE_ID()
{
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("com.apple.PassKit.PassKitIntentsExtension", 0x29uLL, 1);
  result = v1._countAndFlagsBits;
  static AppUtil.PASSBOOK_EXTENSION_BUNDLE_ID = v1;
  return result;
}

__int128 *AppUtil.PASSBOOK_EXTENSION_BUNDLE_ID.unsafeMutableAddressor()
{
  if (one-time initialization token for PASSBOOK_EXTENSION_BUNDLE_ID != -1)
  {
    swift_once();
  }

  return &static AppUtil.PASSBOOK_EXTENSION_BUNDLE_ID;
}

uint64_t static AppUtil.PASSBOOK_EXTENSION_BUNDLE_ID.getter()
{
  v0 = AppUtil.PASSBOOK_EXTENSION_BUNDLE_ID.unsafeMutableAddressor();
  v2 = *v0;
  v3 = *(v0 + 1);

  return v2;
}

uint64_t one-time initialization function for PASSBOOK_UI_EXTENSION_BUNDLE_ID()
{
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("com.apple.PassKit.PassKitIntentsUIExtension", 0x2BuLL, 1);
  result = v1._countAndFlagsBits;
  static AppUtil.PASSBOOK_UI_EXTENSION_BUNDLE_ID = v1;
  return result;
}

__int128 *AppUtil.PASSBOOK_UI_EXTENSION_BUNDLE_ID.unsafeMutableAddressor()
{
  if (one-time initialization token for PASSBOOK_UI_EXTENSION_BUNDLE_ID != -1)
  {
    swift_once();
  }

  return &static AppUtil.PASSBOOK_UI_EXTENSION_BUNDLE_ID;
}

uint64_t static AppUtil.PASSBOOK_UI_EXTENSION_BUNDLE_ID.getter()
{
  v0 = AppUtil.PASSBOOK_UI_EXTENSION_BUNDLE_ID.unsafeMutableAddressor();
  v2 = *v0;
  v3 = *(v0 + 1);

  return v2;
}

uint64_t one-time initialization function for MESSAGES_APP_BUNDLE_ID()
{
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("com.apple.MobileSMS", 0x13uLL, 1);
  result = v1._countAndFlagsBits;
  static AppUtil.MESSAGES_APP_BUNDLE_ID = v1;
  return result;
}

__int128 *AppUtil.MESSAGES_APP_BUNDLE_ID.unsafeMutableAddressor()
{
  if (one-time initialization token for MESSAGES_APP_BUNDLE_ID != -1)
  {
    swift_once();
  }

  return &static AppUtil.MESSAGES_APP_BUNDLE_ID;
}

uint64_t static AppUtil.MESSAGES_APP_BUNDLE_ID.getter()
{
  v0 = AppUtil.MESSAGES_APP_BUNDLE_ID.unsafeMutableAddressor();
  v2 = *v0;
  v3 = *(v0 + 1);

  return v2;
}

uint64_t one-time initialization function for PASSBOOK_IOS_APP_BUNDLE_ID()
{
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("com.apple.Passbook", 0x12uLL, 1);
  result = v1._countAndFlagsBits;
  static AppUtil.PASSBOOK_IOS_APP_BUNDLE_ID = v1;
  return result;
}

__int128 *AppUtil.PASSBOOK_IOS_APP_BUNDLE_ID.unsafeMutableAddressor()
{
  if (one-time initialization token for PASSBOOK_IOS_APP_BUNDLE_ID != -1)
  {
    swift_once();
  }

  return &static AppUtil.PASSBOOK_IOS_APP_BUNDLE_ID;
}

uint64_t static AppUtil.PASSBOOK_IOS_APP_BUNDLE_ID.getter()
{
  v0 = AppUtil.PASSBOOK_IOS_APP_BUNDLE_ID.unsafeMutableAddressor();
  v2 = *v0;
  v3 = *(v0 + 1);

  return v2;
}

uint64_t one-time initialization function for PASSBOOK_WATCH_APP_BUNDLE_ID()
{
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("com.apple.NanoPassbook", 0x16uLL, 1);
  result = v1._countAndFlagsBits;
  static AppUtil.PASSBOOK_WATCH_APP_BUNDLE_ID = v1;
  return result;
}

__int128 *AppUtil.PASSBOOK_WATCH_APP_BUNDLE_ID.unsafeMutableAddressor()
{
  if (one-time initialization token for PASSBOOK_WATCH_APP_BUNDLE_ID != -1)
  {
    swift_once();
  }

  return &static AppUtil.PASSBOOK_WATCH_APP_BUNDLE_ID;
}

uint64_t static AppUtil.PASSBOOK_WATCH_APP_BUNDLE_ID.getter()
{
  v0 = AppUtil.PASSBOOK_WATCH_APP_BUNDLE_ID.unsafeMutableAddressor();
  v2 = *v0;
  v3 = *(v0 + 1);

  return v2;
}

uint64_t one-time initialization function for CONTACTS_IOS_APP_BUNDLE_ID()
{
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("com.apple.MobileAddressBook", 0x1BuLL, 1);
  result = v1._countAndFlagsBits;
  static AppUtil.CONTACTS_IOS_APP_BUNDLE_ID = v1;
  return result;
}

__int128 *AppUtil.CONTACTS_IOS_APP_BUNDLE_ID.unsafeMutableAddressor()
{
  if (one-time initialization token for CONTACTS_IOS_APP_BUNDLE_ID != -1)
  {
    swift_once();
  }

  return &static AppUtil.CONTACTS_IOS_APP_BUNDLE_ID;
}

uint64_t static AppUtil.CONTACTS_IOS_APP_BUNDLE_ID.getter()
{
  v0 = AppUtil.CONTACTS_IOS_APP_BUNDLE_ID.unsafeMutableAddressor();
  v2 = *v0;
  v3 = *(v0 + 1);

  return v2;
}

uint64_t one-time initialization function for CONTACTS_WATCH_APP_BUNDLE_ID()
{
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("com.apple.NanoContacts", 0x16uLL, 1);
  result = v1._countAndFlagsBits;
  static AppUtil.CONTACTS_WATCH_APP_BUNDLE_ID = v1;
  return result;
}

__int128 *AppUtil.CONTACTS_WATCH_APP_BUNDLE_ID.unsafeMutableAddressor()
{
  if (one-time initialization token for CONTACTS_WATCH_APP_BUNDLE_ID != -1)
  {
    swift_once();
  }

  return &static AppUtil.CONTACTS_WATCH_APP_BUNDLE_ID;
}

uint64_t static AppUtil.CONTACTS_WATCH_APP_BUNDLE_ID.getter()
{
  v0 = AppUtil.CONTACTS_WATCH_APP_BUNDLE_ID.unsafeMutableAddressor();
  v2 = *v0;
  v3 = *(v0 + 1);

  return v2;
}

uint64_t one-time initialization function for internalWatchAppSuffix()
{
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(".SIRI_INTERNAL_WATCHAPP", 0x17uLL, 1);
  result = v1._countAndFlagsBits;
  static AppUtil.internalWatchAppSuffix = v1;
  return result;
}

__int128 *AppUtil.internalWatchAppSuffix.unsafeMutableAddressor()
{
  if (one-time initialization token for internalWatchAppSuffix != -1)
  {
    swift_once();
  }

  return &static AppUtil.internalWatchAppSuffix;
}

uint64_t static AppUtil.internalWatchAppSuffix.getter()
{
  v0 = AppUtil.internalWatchAppSuffix.unsafeMutableAddressor();
  v2 = *v0;
  v3 = *(v0 + 1);

  return v2;
}

uint64_t one-time initialization function for launchIdPrefix()
{
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("x-apple-siri-app://", 0x13uLL, 1);
  result = v1._countAndFlagsBits;
  static AppUtil.launchIdPrefix = v1;
  return result;
}

__int128 *AppUtil.launchIdPrefix.unsafeMutableAddressor()
{
  if (one-time initialization token for launchIdPrefix != -1)
  {
    swift_once();
  }

  return &static AppUtil.launchIdPrefix;
}

uint64_t static AppUtil.launchIdPrefix.getter()
{
  v0 = AppUtil.launchIdPrefix.unsafeMutableAddressor();
  v2 = *v0;
  v3 = *(v0 + 1);

  return v2;
}

NSJSONWritingOptions one-time initialization function for intentSupportResolver(Swift::UInt a1)
{
  result = NSJSONWritingOptions.init(rawValue:)(a1);
  qword_28029D5F8 = &type metadata for LSApplicationIntentSupportResolver;
  qword_28029D600 = &protocol witness table for LSApplicationIntentSupportResolver;
  return result;
}

void *AppUtil.intentSupportResolver.unsafeMutableAddressor()
{
  if (one-time initialization token for intentSupportResolver != -1)
  {
    swift_once();
  }

  return &static AppUtil.intentSupportResolver;
}

uint64_t static AppUtil.intentSupportResolver.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = AppUtil.intentSupportResolver.unsafeMutableAddressor();
  swift_beginAccess();
  outlined init with copy of GlobalsProviding(v2, a1);
  return swift_endAccess();
}

uint64_t static AppUtil.intentSupportResolver.setter(uint64_t *a1)
{
  __dst = AppUtil.intentSupportResolver.unsafeMutableAddressor();
  outlined init with copy of GlobalsProviding(a1, v4);
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_0(__dst);
  outlined init with take of CommonLabelsProviding(v4, __dst);
  swift_endAccess();
  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t one-time initialization function for usoAppBundleId()
{
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Applications", 0xCuLL, 1);
  result = v1._countAndFlagsBits;
  static AppUtil.usoAppBundleId = v1;
  return result;
}

__int128 *AppUtil.usoAppBundleId.unsafeMutableAddressor()
{
  if (one-time initialization token for usoAppBundleId != -1)
  {
    swift_once();
  }

  return &static AppUtil.usoAppBundleId;
}

uint64_t static AppUtil.usoAppBundleId.getter()
{
  v0 = AppUtil.usoAppBundleId.unsafeMutableAddressor();
  v2 = *v0;
  v3 = *(v0 + 1);

  return v2;
}

uint64_t one-time initialization function for usoContactsBundleId()
{
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Contacts", 8uLL, 1);
  result = v1._countAndFlagsBits;
  static AppUtil.usoContactsBundleId = v1;
  return result;
}

uint64_t static AppUtil.usoContactsBundleId.getter()
{
  v0 = AppUtil.usoContactsBundleId.unsafeMutableAddressor();
  v2 = *v0;
  v3 = *(v0 + 1);

  return v2;
}

uint64_t one-time initialization function for usoNamespace()
{
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("item_id", 7uLL, 1);
  result = v1._countAndFlagsBits;
  static AppUtil.usoNamespace = v1;
  return result;
}

uint64_t static AppUtil.PASSBOOK_APP_BUNDLE_ID.getter()
{
  v0 = AppUtil.PASSBOOK_IOS_APP_BUNDLE_ID.unsafeMutableAddressor();
  v2 = *v0;
  v3 = *(v0 + 1);

  return v2;
}

Swift::Bool __swiftcall LSApplicationIntentSupportResolver.doesAppSupportIntent(appBundleId:intentName:)(Swift::String appBundleId, Swift::String intentName)
{
  object = intentName._object;
  countAndFlagsBits = intentName._countAndFlagsBits;
  v226 = appBundleId._object;
  v227 = appBundleId._countAndFlagsBits;
  v228 = 0;
  v253 = 0;
  v252 = 0;
  v251 = 0;
  v250 = 0;
  v249 = 0;
  v229 = 0;
  v248 = 0;
  v237 = 0;
  FunctionReplacement = swift_getFunctionReplacement();
  if (FunctionReplacement)
  {

    return FunctionReplacement(v227, v226, countAndFlagsBits, object);
  }

  else
  {
    v201 = type metadata accessor for Logger();
    v190 = v201;
    v191 = *(v201 - 8);
    v200 = v191;
    v192 = v191;
    v196 = *(v191 + 64);
    v193 = &v71;
    MEMORY[0x28223BE20](&v71);
    v194 = &v71;
    v195 = &v71;
    MEMORY[0x28223BE20](&v71);
    v197 = &v71;
    v198 = &v71;
    MEMORY[0x28223BE20](&v71);
    v4 = &v71 - v3;
    v199 = &v71 - v3;
    v252 = v227;
    v253 = v226;
    v250 = countAndFlagsBits;
    v251 = v5;
    v6 = Logger.payments.unsafeMutableAddressor();
    v202 = *(v200 + 16);
    v203 = (v200 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v202(v4, v6, v201);

    v206 = 32;
    v210 = 32;
    v211 = 7;
    v7 = swift_allocObject();
    v8 = v226;
    v212 = v7;
    *(v7 + 16) = v227;
    *(v7 + 24) = v8;
    v223 = Logger.logObject.getter();
    v204 = v223;
    v222 = static os_log_type_t.debug.getter();
    v205 = v222;
    v207 = 17;
    v216 = swift_allocObject();
    v208 = v216;
    *(v216 + 16) = v206;
    v217 = swift_allocObject();
    v209 = v217;
    *(v217 + 16) = 8;
    v9 = swift_allocObject();
    v10 = v212;
    v213 = v9;
    *(v9 + 16) = partial apply for implicit closure #1 in static Logger.logForCrash(_:);
    *(v9 + 24) = v10;
    v11 = swift_allocObject();
    v12 = v213;
    v220 = v11;
    v214 = v11;
    *(v11 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
    *(v11 + 24) = v12;
    v221 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
    v215 = v221;
    v218 = _allocateUninitializedArray<A>(_:)();
    v219 = v13;

    v14 = v216;
    v15 = v219;
    *v219 = partial apply for closure #1 in OSLogArguments.append(_:);
    v15[1] = v14;

    v16 = v217;
    v17 = v219;
    v219[2] = partial apply for closure #1 in OSLogArguments.append(_:);
    v17[3] = v16;

    v18 = v219;
    v19 = v220;
    v219[4] = partial apply for closure #1 in OSLogArguments.append(_:);
    v18[5] = v19;
    _finalizeUninitializedArray<A>(_:)();

    if (os_log_type_enabled(v223, v222))
    {
      v20 = v229;
      v183 = static UnsafeMutablePointer.allocate(capacity:)();
      v180 = v183;
      v181 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v184 = createStorage<A>(capacity:type:)(0);
      v182 = v184;
      v186 = 1;
      v185 = createStorage<A>(capacity:type:)(1);
      v235 = v183;
      v234 = v184;
      v233 = v185;
      v187 = &v235;
      serialize(_:at:)(2, &v235);
      serialize(_:at:)(v186, v187);
      v231 = partial apply for closure #1 in OSLogArguments.append(_:);
      v232 = v208;
      closure #1 in osLogInternal(_:log:type:)(&v231, v187, &v234, &v233);
      v188 = v20;
      v189 = v20;
      if (v20)
      {
        v178 = 0;

        __break(1u);
      }

      else
      {
        v231 = partial apply for closure #1 in OSLogArguments.append(_:);
        v232 = v209;
        closure #1 in osLogInternal(_:log:type:)(&v231, &v235, &v234, &v233);
        v176 = 0;
        v177 = 0;
        v231 = partial apply for closure #1 in OSLogArguments.append(_:);
        v232 = v214;
        closure #1 in osLogInternal(_:log:type:)(&v231, &v235, &v234, &v233);
        v174 = 0;
        v175 = 0;
        _os_log_impl(&dword_2686B1000, v204, v205, "LSApplicationProxyIntentSupportResolver# Looking up %s", v180, 0xCu);
        destroyStorage<A>(_:count:)(v182, 0, v181);
        destroyStorage<A>(_:count:)(v185, 1, MEMORY[0x277D84F70] + 8);
        MEMORY[0x26D620BD0](v180, MEMORY[0x277D84B78]);

        v179 = v174;
      }
    }

    else
    {
      v21 = v229;

      v179 = v21;
    }

    v22 = v179;

    v169 = *(v192 + 8);
    v170 = (v192 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v169(v199, v190);
    type metadata accessor for LSApplicationRecord();

    v23 = LSApplicationRecord.__allocating_init(bundleIdentifier:allowPlaceholder:)(v227, v226, 0);
    v171 = v22;
    v172 = v23;
    v173 = v22;
    if (v22)
    {
      v42 = v194;
      v95 = v173;
      v94 = 0;
      MEMORY[0x26D621420]();
      v248 = v95;
      v43 = Logger.payments.unsafeMutableAddressor();
      v202(v42, v43, v190);

      v103 = 32;
      v108 = 32;
      v109 = 7;
      v44 = swift_allocObject();
      v45 = v226;
      v46 = v44;
      v47 = v95;
      v100 = v46;
      *(v46 + 16) = v227;
      *(v46 + 24) = v45;
      MEMORY[0x26D621420](v47);
      v110 = swift_allocObject();
      *(v110 + 16) = v95;
      v122 = Logger.logObject.getter();
      v96 = v122;
      v121 = static os_log_type_t.error.getter();
      v97 = v121;
      v104 = 17;
      v113 = swift_allocObject();
      v98 = v113;
      *(v113 + 16) = v103;
      v114 = swift_allocObject();
      v99 = v114;
      v106 = 8;
      *(v114 + 16) = 8;
      v48 = swift_allocObject();
      v49 = v100;
      v101 = v48;
      *(v48 + 16) = partial apply for implicit closure #1 in static Logger.logForCrash(_:);
      *(v48 + 24) = v49;
      v50 = swift_allocObject();
      v51 = v101;
      v115 = v50;
      v102 = v50;
      *(v50 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
      *(v50 + 24) = v51;
      v116 = swift_allocObject();
      v105 = v116;
      *(v116 + 16) = v103;
      v117 = swift_allocObject();
      v107 = v117;
      *(v117 + 16) = v106;
      v52 = swift_allocObject();
      v53 = v110;
      v111 = v52;
      *(v52 + 16) = partial apply for implicit closure #3 in LSApplicationIntentSupportResolver.doesAppSupportIntent(appBundleId:intentName:);
      *(v52 + 24) = v53;
      v54 = swift_allocObject();
      v55 = v111;
      v120 = v54;
      v112 = v54;
      *(v54 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
      *(v54 + 24) = v55;
      v118 = _allocateUninitializedArray<A>(_:)();
      v119 = v56;

      v57 = v113;
      v58 = v119;
      *v119 = partial apply for closure #1 in OSLogArguments.append(_:);
      v58[1] = v57;

      v59 = v114;
      v60 = v119;
      v119[2] = partial apply for closure #1 in OSLogArguments.append(_:);
      v60[3] = v59;

      v61 = v115;
      v62 = v119;
      v119[4] = partial apply for closure #1 in OSLogArguments.append(_:);
      v62[5] = v61;

      v63 = v116;
      v64 = v119;
      v119[6] = partial apply for closure #1 in OSLogArguments.append(_:);
      v64[7] = v63;

      v65 = v117;
      v66 = v119;
      v119[8] = partial apply for closure #1 in OSLogArguments.append(_:);
      v66[9] = v65;

      v67 = v119;
      v68 = v120;
      v119[10] = partial apply for closure #1 in OSLogArguments.append(_:);
      v67[11] = v68;
      _finalizeUninitializedArray<A>(_:)();

      if (os_log_type_enabled(v122, v121))
      {
        v69 = v94;
        v87 = static UnsafeMutablePointer.allocate(capacity:)();
        v84 = v87;
        v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        v88 = createStorage<A>(capacity:type:)(0);
        v86 = v88;
        v90 = 2;
        v89 = createStorage<A>(capacity:type:)(2);
        v247 = v87;
        v246 = v88;
        v245 = v89;
        v91 = &v247;
        serialize(_:at:)(v90, &v247);
        serialize(_:at:)(v90, v91);
        v243 = partial apply for closure #1 in OSLogArguments.append(_:);
        v244 = v98;
        closure #1 in osLogInternal(_:log:type:)(&v243, v91, &v246, &v245);
        v92 = v69;
        v93 = v69;
        if (v69)
        {
          v82 = 0;

          __break(1u);
        }

        else
        {
          v243 = partial apply for closure #1 in OSLogArguments.append(_:);
          v244 = v99;
          closure #1 in osLogInternal(_:log:type:)(&v243, &v247, &v246, &v245);
          v80 = 0;
          v81 = 0;
          v243 = partial apply for closure #1 in OSLogArguments.append(_:);
          v244 = v102;
          closure #1 in osLogInternal(_:log:type:)(&v243, &v247, &v246, &v245);
          v78 = 0;
          v79 = 0;
          v243 = partial apply for closure #1 in OSLogArguments.append(_:);
          v244 = v105;
          closure #1 in osLogInternal(_:log:type:)(&v243, &v247, &v246, &v245);
          v76 = 0;
          v77 = 0;
          v243 = partial apply for closure #1 in OSLogArguments.append(_:);
          v244 = v107;
          closure #1 in osLogInternal(_:log:type:)(&v243, &v247, &v246, &v245);
          v74 = 0;
          v75 = 0;
          v243 = partial apply for closure #1 in OSLogArguments.append(_:);
          v244 = v112;
          closure #1 in osLogInternal(_:log:type:)(&v243, &v247, &v246, &v245);
          v72 = 0;
          v73 = 0;
          _os_log_impl(&dword_2686B1000, v96, v97, "LSApplicationProxyIntentSupportResolver# Unable to get LSApplicationRecord for %s: %s", v84, 0x16u);
          destroyStorage<A>(_:count:)(v86, 0, v85);
          destroyStorage<A>(_:count:)(v89, 2, MEMORY[0x277D84F70] + 8);
          MEMORY[0x26D620BD0](v84, MEMORY[0x277D84B78]);

          v83 = v72;
        }
      }

      else
      {
        v70 = v94;

        v83 = v70;
      }

      v71 = v83;

      v169(v194, v190);
      v164 = 0;
      v165 = v71;
    }

    else
    {
      v167 = v172;
      v24 = v172;
      v249 = v167;
      type metadata accessor for INAppInfo();
      v168 = @nonobjc INAppInfo.__allocating_init(applicationRecord:)(v167);
      if (v168)
      {
        v166 = v168;
        v162 = v168;
        v237 = v168;
        v161 = [v168 supportedIntents];
        v158 = MEMORY[0x277D837D0];
        v159 = MEMORY[0x277D837E0];
        v160 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
        v236[0] = countAndFlagsBits;
        v236[1] = object;
        v163 = MEMORY[0x26D620A00](v236);

        v164 = v163;
        v165 = v171;
      }

      else
      {
        v25 = v197;
        v26 = Logger.payments.unsafeMutableAddressor();
        v202(v25, v26, v190);

        v142 = 32;
        v146 = 32;
        v147 = 7;
        v27 = swift_allocObject();
        v28 = v226;
        v148 = v27;
        *(v27 + 16) = v227;
        *(v27 + 24) = v28;
        v157 = Logger.logObject.getter();
        v140 = v157;
        v156 = static os_log_type_t.error.getter();
        v141 = v156;
        v143 = 17;
        v151 = swift_allocObject();
        v144 = v151;
        *(v151 + 16) = v142;
        v152 = swift_allocObject();
        v145 = v152;
        *(v152 + 16) = 8;
        v29 = swift_allocObject();
        v30 = v148;
        v149 = v29;
        *(v29 + 16) = partial apply for implicit closure #1 in static Logger.logForCrash(_:);
        *(v29 + 24) = v30;
        v31 = swift_allocObject();
        v32 = v149;
        v155 = v31;
        v150 = v31;
        *(v31 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
        *(v31 + 24) = v32;
        v153 = _allocateUninitializedArray<A>(_:)();
        v154 = v33;

        v34 = v151;
        v35 = v154;
        *v154 = partial apply for closure #1 in OSLogArguments.append(_:);
        v35[1] = v34;

        v36 = v152;
        v37 = v154;
        v154[2] = partial apply for closure #1 in OSLogArguments.append(_:);
        v37[3] = v36;

        v38 = v154;
        v39 = v155;
        v154[4] = partial apply for closure #1 in OSLogArguments.append(_:);
        v38[5] = v39;
        _finalizeUninitializedArray<A>(_:)();

        if (os_log_type_enabled(v157, v156))
        {
          v40 = v171;
          v133 = static UnsafeMutablePointer.allocate(capacity:)();
          v130 = v133;
          v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
          v134 = createStorage<A>(capacity:type:)(0);
          v132 = v134;
          v136 = 1;
          v135 = createStorage<A>(capacity:type:)(1);
          v242 = v133;
          v241 = v134;
          v240 = v135;
          v137 = &v242;
          serialize(_:at:)(2, &v242);
          serialize(_:at:)(v136, v137);
          v238 = partial apply for closure #1 in OSLogArguments.append(_:);
          v239 = v144;
          closure #1 in osLogInternal(_:log:type:)(&v238, v137, &v241, &v240);
          v138 = v40;
          v139 = v40;
          if (v40)
          {
            v128 = 0;

            __break(1u);
          }

          else
          {
            v238 = partial apply for closure #1 in OSLogArguments.append(_:);
            v239 = v145;
            closure #1 in osLogInternal(_:log:type:)(&v238, &v242, &v241, &v240);
            v126 = 0;
            v127 = 0;
            v238 = partial apply for closure #1 in OSLogArguments.append(_:);
            v239 = v150;
            closure #1 in osLogInternal(_:log:type:)(&v238, &v242, &v241, &v240);
            v124 = 0;
            v125 = 0;
            _os_log_impl(&dword_2686B1000, v140, v141, "LSApplicationProxyIntentSupportResolver# Unable to get INAppInfo for %s", v130, 0xCu);
            destroyStorage<A>(_:count:)(v132, 0, v131);
            destroyStorage<A>(_:count:)(v135, 1, MEMORY[0x277D84F70] + 8);
            MEMORY[0x26D620BD0](v130, MEMORY[0x277D84B78]);

            v129 = v124;
          }
        }

        else
        {
          v41 = v171;

          v129 = v41;
        }

        v123 = v129;

        v169(v197, v190);
        v164 = 0;
        v165 = v123;
      }
    }

    return v164 & 1;
  }
}

id LSApplicationRecord.__allocating_init(bundleIdentifier:allowPlaceholder:)(uint64_t a1, uint64_t a2, char a3)
{
  v3 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v10 = @nonobjc LSApplicationRecord.init(bundleIdentifier:allowPlaceholder:)(a1, a2, a3 & 1);
  if (v8)
  {
    return v5;
  }

  else
  {
    return v10;
  }
}

uint64_t implicit closure #3 in LSApplicationIntentSupportResolver.doesAppSupportIntent(appBundleId:intentName:)()
{
  MEMORY[0x26D621420]();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  return String.init<A>(describing:)();
}

id @nonobjc INAppInfo.__allocating_init(applicationRecord:)(uint64_t a1)
{
  v3 = [swift_getObjCClassFromMetadata() appInfoWithApplicationRecord_];
  MEMORY[0x277D82BD8](a1);
  return v3;
}

BOOL App.isPaymentSendingApp.getter()
{
  v0 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("INSendPaymentIntent", 0x13uLL, 1);
  v2 = App.supportsIntent(intentName:)(v0);

  return v2;
}

BOOL App.isPaymentRequestingApp.getter()
{
  v0 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("INRequestPaymentIntent", 0x16uLL, 1);
  v2 = App.supportsIntent(intentName:)(v0);

  return v2;
}

BOOL App.isAccountSearchingApp.getter()
{
  v0 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("INSearchForAccountsIntent", 0x19uLL, 1);
  v2 = App.supportsIntent(intentName:)(v0);

  return v2;
}

BOOL App.isPaymentApp.getter()
{
  v2 = App.isPaymentSendingApp.getter();

  v1 = v2 || App.isPaymentRequestingApp.getter();

  return v1;
}

uint64_t App.toUsoEntityBuilder(locale:)(uint64_t a1)
{
  v25 = a1;
  v35 = 0;
  v34 = 0;
  v33 = 0;
  v31 = 0;
  v32 = 0;
  v29 = 0;
  v30 = 0;
  v23 = 0;
  v18 = type metadata accessor for UsoIdentifier();
  v19 = *(v18 - 8);
  v20 = v18 - 8;
  v21 = (*(v19 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0);
  v22 = v9 - v21;
  v35 = v2;
  v34 = v1;
  type metadata accessor for UsoEntityBuilder_common_App();
  v24 = UsoEntityBuilder_common_App.__allocating_init()();
  v33 = v24;
  type metadata accessor for AppInformationResolver();

  v26 = AppInformationResolver.__allocating_init(app:)();
  v27 = dispatch thunk of AppInformationResolver.getLocalizedAppDisplayName(inLocale:)();
  v28 = v3;

  if (v28)
  {
    v16 = v27;
    v17 = v28;
    v15 = v28;
    v29 = v27;
    v30 = v28;
    dispatch thunk of UsoEntityBuilder_common_App.setName(value:)();
  }

  v13 = App.appIdentifier.getter();
  v14 = v4;
  if (v4)
  {
    v11 = v13;
    v12 = v14;
    v9[7] = v14;
    v9[8] = v13;
    v31 = v13;
    v32 = v14;
    v5 = dispatch thunk of UsoEntityBuilder_common_App.name.getter();
    v10 = v5;
    if (v5)
    {
      v9[6] = v10;
      v9[5] = v10;

      v6 = AppUtil.usoAppBundleId.unsafeMutableAddressor();
      v9[1] = *v6;
      v9[2] = *(v6 + 1);

      v7 = AppUtil.usoNamespace.unsafeMutableAddressor();
      v9[3] = *v7;
      v9[4] = *(v7 + 1);

      UsoIdentifier.init(value:appBundleId:namespace:)();
      dispatch thunk of UsoBuilder.addUsoIdentifier(usoIdentifier:)();
      (*(v19 + 8))(v22, v18);
    }
  }

  return v24;
}

uint64_t App.getAppName(deviceState:)(void *a1)
{
  v7 = a1;
  v18 = 0;
  v17 = 0;
  v5[1] = 0;
  v13 = type metadata accessor for Locale();
  v10 = *(v13 - 8);
  v11 = v13 - 8;
  v6 = (*(v10 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0);
  v12 = v5 - v6;
  v18 = v2;
  v17 = v1;
  type metadata accessor for AppInformationResolver();

  v14 = AppInformationResolver.__allocating_init(app:)();
  v9 = v7[3];
  v8 = v7[4];
  __swift_project_boxed_opaque_existential_1(v7, v9);
  dispatch thunk of DeviceState.siriLocale.getter();
  v15 = dispatch thunk of AppInformationResolver.getLocalizedAppDisplayName(inLocale:)();
  v16 = v3;
  (*(v10 + 8))(v12, v13);

  return v15;
}

uint64_t closure #1 in App.sirikitApp.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = a1;
  v11 = a2;
  v15 = a3;
  v16 = a4;
  v28 = 0;
  v29 = 0;
  v26 = 0;
  v27 = 0;
  v10 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v22 = &v9 - v10;
  v28 = MEMORY[0x28223BE20](v12);
  v29 = v4;
  v26 = v5;
  v27 = v6;
  v13 = 0;
  type metadata accessor for SirikitLocalizedAppName.Builder();
  v14 = SirikitLocalizedAppName.Builder.__allocating_init()();
  String.toSpeakableString.getter();
  v19 = type metadata accessor for SpeakableString();
  v7 = *(v19 - 8);
  v21 = *(v7 + 56);
  v20 = v7 + 56;
  v17 = 0;
  v18 = 1;
  v21(v22);
  v23 = dispatch thunk of SirikitLocalizedAppName.Builder.withLocale(_:)();
  outlined destroy of SpeakableString?(v22);

  String.toSpeakableString.getter();
  (v21)(v22, v17, v18, v19);
  v24 = dispatch thunk of SirikitLocalizedAppName.Builder.withAppName(_:)();
  outlined destroy of SpeakableString?(v22);

  v25 = dispatch thunk of SirikitLocalizedAppName.Builder.build()();

  return v25;
}

uint64_t thunk for @callee_guaranteed (@guaranteed String, @guaranteed String) -> (@owned SirikitLocalizedAppName)@<X0>(void *a1@<X0>, uint64_t (*a2)(void, void, void, void)@<X1>, uint64_t *a3@<X8>)
{
  result = a2(*a1, a1[1], a1[2], a1[3]);
  *a3 = result;
  return result;
}

uint64_t sub_2687CD108()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t AppResolutionStateProviding.isForcedDisambiguation.getter(uint64_t a1, uint64_t a2)
{
  v7 = a1;
  v6 = a2;
  v14 = 0;
  v15 = a1;
  v12 = type metadata accessor for AppSelectionResponse();
  v9 = *(v12 - 8);
  v10 = v12 - 8;
  v8 = (*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v7);
  v11 = &v4 - v8;
  v14 = v2;
  AppResolutionStateProviding.previousSelectionResponse.getter();
  v13 = (*(v9 + 88))(v11, v12);
  if (v13 == *MEMORY[0x277D553B8] || v13 == *MEMORY[0x277D553C0])
  {
    v5 = 1;
  }

  else
  {
    (*(v9 + 8))(v11, v12);
    v5 = 0;
  }

  return v5 & 1;
}

uint64_t Array<A>.cardinality.getter(uint64_t a1, uint64_t a2)
{
  type metadata accessor for Array();
  swift_getWitnessTable();
  if (Collection.isEmpty.getter())
  {
    return 0;
  }

  if (MEMORY[0x26D620910](a1, a2) == 1)
  {
    Collection.first.getter();
    if (v8)
    {
      return v8;
    }

    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return v4;
  }

  else
  {

    type metadata accessor for App();
    v3 = _arrayForceCast<A, B>(_:)();

    return v3;
  }
}

id @nonobjc LSApplicationRecord.init(bundleIdentifier:allowPlaceholder:)(uint64_t a1, uint64_t a2, char a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v7 = MEMORY[0x26D620690]();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSAySo7NSErrorCSgGMd, &_sSAySo7NSErrorCSgGMR);
  lazy protocol witness table accessor for type AutoreleasingUnsafeMutablePointer<NSError?> and conformance AutoreleasingUnsafeMutablePointer<A>();
  _convertInOutToPointerArgument<A>(_:)();
  v9 = [v6 initWithBundleIdentifier:v7 allowPlaceholder:a3 & 1 error:v10];
  MEMORY[0x277D82BE0](0);
  MEMORY[0x277D82BD8](0);
  if (v9)
  {
    MEMORY[0x277D82BD8](v7);

    *MEMORY[0x277D85DE8];
    return v9;
  }

  else
  {
    _convertNSErrorToError(_:)();
    MEMORY[0x277D82BD8](0);
    swift_willThrow();
    MEMORY[0x277D82BD8](v7);

    v4 = __OFSUB__(*MEMORY[0x277D85DE8], v11);
    return v5;
  }
}

uint64_t sub_2687CD684()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2687CD6C4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

unint64_t type metadata accessor for LSApplicationRecord()
{
  v2 = lazy cache variable for type metadata for LSApplicationRecord;
  if (!lazy cache variable for type metadata for LSApplicationRecord)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &lazy cache variable for type metadata for LSApplicationRecord);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t sub_2687CD768()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2687CD848()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2687CD888()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2687CD920()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2687CD960()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

unint64_t type metadata accessor for INAppInfo()
{
  v2 = lazy cache variable for type metadata for INAppInfo;
  if (!lazy cache variable for type metadata for INAppInfo)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &lazy cache variable for type metadata for INAppInfo);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t sub_2687CDA04()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2687CDA9C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2687CDADC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t type metadata completion function for Cardinality(uint64_t a1)
{
  v1 = *(a1 + 16);
  v5 = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    v5 = type metadata accessor for Array();
    if (v3 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return v5;
}

unint64_t lazy protocol witness table accessor for type AutoreleasingUnsafeMutablePointer<NSError?> and conformance AutoreleasingUnsafeMutablePointer<A>()
{
  v2 = lazy protocol witness table cache variable for type AutoreleasingUnsafeMutablePointer<NSError?> and conformance AutoreleasingUnsafeMutablePointer<A>;
  if (!lazy protocol witness table cache variable for type AutoreleasingUnsafeMutablePointer<NSError?> and conformance AutoreleasingUnsafeMutablePointer<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSAySo7NSErrorCSgGMd, &_sSAySo7NSErrorCSgGMR);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type AutoreleasingUnsafeMutablePointer<NSError?> and conformance AutoreleasingUnsafeMutablePointer<A>);
    return WitnessTable;
  }

  return v2;
}

uint64_t PaymentsDialogConcept.Builder.__allocating_init()()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  return PaymentsDialogConcept.Builder.init()();
}

uint64_t PaymentsDialogConcept.Builder.amount.getter()
{
  swift_beginAccess();
  v2 = *(v0 + 16);

  swift_endAccess();
  return v2;
}

uint64_t PaymentsDialogConcept.Builder.amount.setter(uint64_t a1)
{

  swift_beginAccess();
  v2 = *(v1 + 16);
  *(v1 + 16) = a1;

  swift_endAccess();
}

uint64_t PaymentsDialogConcept.Builder.fee.getter()
{
  swift_beginAccess();
  v2 = *(v0 + 32);

  swift_endAccess();
  return v2;
}

uint64_t PaymentsDialogConcept.Builder.fee.setter(uint64_t a1)
{

  swift_beginAccess();
  v2 = *(v1 + 32);
  *(v1 + 32) = a1;

  swift_endAccess();
}

uint64_t PaymentsDialogConcept.Builder.memo.getter@<X0>(void *a1@<X8>)
{
  v3 = (v1 + OBJC_IVAR____TtCC19SiriPaymentsIntents21PaymentsDialogConcept7Builder_memo);
  swift_beginAccess();
  outlined init with copy of SpeakableString?(v3, a1);
  return swift_endAccess();
}

uint64_t PaymentsDialogConcept.Builder.memo.setter(uint64_t a1)
{
  v8 = a1;
  v4 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x28223BE20](v8);
  v5 = &v4 - v4;
  outlined init with copy of SpeakableString?(v2, &v4 - v4);
  v6 = (v1 + OBJC_IVAR____TtCC19SiriPaymentsIntents21PaymentsDialogConcept7Builder_memo);
  v7 = &v9;
  swift_beginAccess();
  outlined assign with take of SpeakableString?(v5, v6);
  swift_endAccess();
  return outlined destroy of SpeakableString?(v8);
}

uint64_t PaymentsDialogConcept.Builder.payeeName.getter()
{
  v2 = (v0 + OBJC_IVAR____TtCC19SiriPaymentsIntents21PaymentsDialogConcept7Builder_payeeName);
  swift_beginAccess();
  v3 = *v2;

  swift_endAccess();
  return v3;
}

uint64_t PaymentsDialogConcept.Builder.payeeName.setter(uint64_t a1)
{

  v4 = (v1 + OBJC_IVAR____TtCC19SiriPaymentsIntents21PaymentsDialogConcept7Builder_payeeName);
  swift_beginAccess();
  v2 = *v4;
  *v4 = a1;

  swift_endAccess();
}

uint64_t PaymentsDialogConcept.Builder.payerName.getter()
{
  v2 = (v0 + OBJC_IVAR____TtCC19SiriPaymentsIntents21PaymentsDialogConcept7Builder_payerName);
  swift_beginAccess();
  v3 = *v2;

  swift_endAccess();
  return v3;
}

uint64_t PaymentsDialogConcept.Builder.payerName.setter(uint64_t a1)
{

  v4 = (v1 + OBJC_IVAR____TtCC19SiriPaymentsIntents21PaymentsDialogConcept7Builder_payerName);
  swift_beginAccess();
  v2 = *v4;
  *v4 = a1;

  swift_endAccess();
}

uint64_t PaymentsDialogConcept.Builder.init()()
{
  *(v0 + 2) = 0;
  *(v0 + 3) = 0;
  *(v0 + 4) = 0;
  v3 = OBJC_IVAR____TtCC19SiriPaymentsIntents21PaymentsDialogConcept7Builder_memo;
  v1 = type metadata accessor for SpeakableString();
  (*(*(v1 - 8) + 56))(&v0[v3], 1);
  result = v4;
  *(v4 + OBJC_IVAR____TtCC19SiriPaymentsIntents21PaymentsDialogConcept7Builder_payeeName) = 0;
  *(v4 + OBJC_IVAR____TtCC19SiriPaymentsIntents21PaymentsDialogConcept7Builder_payerName) = 0;
  return result;
}

uint64_t PaymentsDialogConcept.Builder.withAmount(_:)(uint64_t a1)
{

  swift_beginAccess();
  v2 = *(v1 + 16);
  *(v1 + 16) = a1;

  swift_endAccess();

  return v5;
}

{

  if (a1)
  {
    v4 = dispatch thunk of DialogAbstractMeasurement.Builder.build()();

    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  swift_beginAccess();
  v2 = *(v1 + 16);
  *(v1 + 16) = v5;

  swift_endAccess();

  return v1;
}

uint64_t PaymentsDialogConcept.Builder.withApp(_:)(uint64_t a1)
{

  swift_beginAccess();
  v2 = *(v1 + 24);
  *(v1 + 24) = a1;

  swift_endAccess();

  return v5;
}

{

  if (a1)
  {
    v4 = dispatch thunk of SirikitApp.Builder.build()();

    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  swift_beginAccess();
  v2 = *(v1 + 24);
  *(v1 + 24) = v5;

  swift_endAccess();

  return v1;
}

uint64_t PaymentsDialogConcept.Builder.withFee(_:)(uint64_t a1)
{

  swift_beginAccess();
  v2 = *(v1 + 32);
  *(v1 + 32) = a1;

  swift_endAccess();

  return v5;
}

{

  if (a1)
  {
    v4 = dispatch thunk of DialogAbstractMeasurement.Builder.build()();

    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  swift_beginAccess();
  v2 = *(v1 + 32);
  *(v1 + 32) = v5;

  swift_endAccess();

  return v1;
}

uint64_t PaymentsDialogConcept.Builder.withMemo(_:)(const void *a1)
{
  v9 = a1;
  v17 = 0;
  v16 = 0;
  v7 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x28223BE20](v9);
  v10 = &v6 - v7;
  v8 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = MEMORY[0x28223BE20](v2);
  v13 = &v6 - v8;
  v17 = v4;
  v16 = v1;

  outlined init with copy of SpeakableString?(v9, v13);
  outlined init with copy of SpeakableString?(v13, v10);
  v11 = (v1 + OBJC_IVAR____TtCC19SiriPaymentsIntents21PaymentsDialogConcept7Builder_memo);
  v12 = &v15;
  swift_beginAccess();
  outlined assign with take of SpeakableString?(v10, v11);
  swift_endAccess();
  outlined destroy of SpeakableString?(v13);

  return v14;
}

uint64_t PaymentsDialogConcept.Builder.withMemo(print:speak:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16 = a1;
  v17 = a2;
  v18 = a3;
  v19 = a4;
  v29 = 0;
  v30 = 0;
  v27 = 0;
  v28 = 0;
  v26 = 0;
  v14 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = MEMORY[0x28223BE20](v16);
  v20 = &v13 - v14;
  v15 = (v6 + 15) & 0xFFFFFFFFFFFFFFF0;
  v7 = MEMORY[0x28223BE20](v5);
  v23 = &v13 - v15;
  v29 = v7;
  v30 = v8;
  v27 = v9;
  v28 = v10;
  v26 = v4;

  SpeakableString.init(print:speak:)();
  v11 = type metadata accessor for SpeakableString();
  (*(*(v11 - 8) + 56))(v23, 0, 1);
  outlined init with copy of SpeakableString?(v23, v20);
  v21 = (v4 + OBJC_IVAR____TtCC19SiriPaymentsIntents21PaymentsDialogConcept7Builder_memo);
  v22 = &v25;
  swift_beginAccess();
  outlined assign with take of SpeakableString?(v20, v21);
  swift_endAccess();
  outlined destroy of SpeakableString?(v23);

  return v24;
}

uint64_t PaymentsDialogConcept.Builder.withPayeeName(_:)(uint64_t a1)
{

  v4 = (v1 + OBJC_IVAR____TtCC19SiriPaymentsIntents21PaymentsDialogConcept7Builder_payeeName);
  swift_beginAccess();
  v2 = *v4;
  *v4 = a1;

  swift_endAccess();

  return v6;
}

uint64_t PaymentsDialogConcept.Builder.withPayerName(_:)(uint64_t a1)
{

  v4 = (v1 + OBJC_IVAR____TtCC19SiriPaymentsIntents21PaymentsDialogConcept7Builder_payerName);
  swift_beginAccess();
  v2 = *v4;
  *v4 = a1;

  swift_endAccess();

  return v6;
}

uint64_t PaymentsDialogConcept.Builder.build()()
{
  type metadata accessor for PaymentsDialogConcept();

  return PaymentsDialogConcept.__allocating_init(builder:)(v1);
}

uint64_t type metadata accessor for PaymentsDialogConcept()
{
  v1 = type metadata singleton initialization cache for PaymentsDialogConcept;
  if (!type metadata singleton initialization cache for PaymentsDialogConcept)
  {
    return swift_getSingletonMetadata();
  }

  return v1;
}

uint64_t PaymentsDialogConcept.__allocating_init(builder:)(void *a1)
{
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  swift_allocObject();
  return PaymentsDialogConcept.init(builder:)(a1);
}

uint64_t PaymentsDialogConcept.Builder.deinit()
{
  outlined destroy of ContiguousArray<A1>(v0 + 2);
  outlined destroy of ContiguousArray<A1>(v0 + 3);
  outlined destroy of ContiguousArray<A1>(v0 + 4);
  outlined destroy of SpeakableString?(v0 + OBJC_IVAR____TtCC19SiriPaymentsIntents21PaymentsDialogConcept7Builder_memo);
  outlined destroy of ContiguousArray<A1>((v0 + OBJC_IVAR____TtCC19SiriPaymentsIntents21PaymentsDialogConcept7Builder_payeeName));
  outlined destroy of ContiguousArray<A1>((v0 + OBJC_IVAR____TtCC19SiriPaymentsIntents21PaymentsDialogConcept7Builder_payerName));
  return v2;
}

uint64_t PaymentsDialogConcept.Builder.__deallocating_deinit()
{
  v0 = *PaymentsDialogConcept.Builder.deinit();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  return swift_deallocClassInstance();
}

uint64_t PaymentsDialogConcept.amount.getter()
{
  v2 = *(v0 + 24);

  return v2;
}

uint64_t PaymentsDialogConcept.app.getter()
{
  v2 = *(v0 + 32);

  return v2;
}

uint64_t PaymentsDialogConcept.fee.getter()
{
  v2 = *(v0 + 40);

  return v2;
}

uint64_t PaymentsDialogConcept.payeeName.getter()
{
  v2 = *(v0 + OBJC_IVAR____TtC19SiriPaymentsIntents21PaymentsDialogConcept_payeeName);

  return v2;
}

uint64_t PaymentsDialogConcept.payerName.getter()
{
  v2 = *(v0 + OBJC_IVAR____TtC19SiriPaymentsIntents21PaymentsDialogConcept_payerName);

  return v2;
}

uint64_t PaymentsDialogConcept.init(builder:)(void *a1)
{
  v22 = a1;
  v31 = 0;
  v30 = 0;
  v5[0] = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v13 = v5 - v5[0];
  v31 = MEMORY[0x28223BE20](v22);
  v30 = v1;
  v1[2] = 0;
  v5[1] = &v29;
  v17 = 32;
  v18 = 0;
  swift_beginAccess();
  v6 = v22[2];

  swift_endAccess();
  v1[3] = v6;
  v7 = &v28;
  swift_beginAccess();
  v8 = v22[3];

  swift_endAccess();
  v1[4] = v8;
  v9 = &v27;
  swift_beginAccess();
  v10 = v22[4];

  swift_endAccess();
  v2 = v22;
  v1[5] = v10;
  v11 = v2 + OBJC_IVAR____TtCC19SiriPaymentsIntents21PaymentsDialogConcept7Builder_memo;
  v12 = &v26;
  swift_beginAccess();
  outlined init with copy of SpeakableString?(v11, v13);
  swift_endAccess();
  outlined init with take of SpeakableString?(v13, v1 + OBJC_IVAR____TtC19SiriPaymentsIntents21PaymentsDialogConcept_memo);
  v14 = (v22 + OBJC_IVAR____TtCC19SiriPaymentsIntents21PaymentsDialogConcept7Builder_payeeName);
  v15 = &v25;
  swift_beginAccess();
  v16 = *v14;

  swift_endAccess();
  v3 = v22;
  *(v1 + OBJC_IVAR____TtC19SiriPaymentsIntents21PaymentsDialogConcept_payeeName) = v16;
  v19 = (v3 + OBJC_IVAR____TtCC19SiriPaymentsIntents21PaymentsDialogConcept7Builder_payerName);
  v20 = &v24;
  swift_beginAccess();
  v21 = *v19;

  swift_endAccess();
  *(v1 + OBJC_IVAR____TtC19SiriPaymentsIntents21PaymentsDialogConcept_payerName) = v21;

  return v23;
}

void *outlined init with take of SpeakableString?(const void *a1, void *a2)
{
  v6 = type metadata accessor for SpeakableString();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a1, 1))
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v7 + 32))(a2, a1, v6);
    (*(v7 + 56))(a2, 0, 1, v6);
  }

  return a2;
}

uint64_t PaymentsDialogConcept.getProperty(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v61 = a3;
  v65 = a1;
  v66 = a2;
  v88 = 0;
  v89 = 0;
  v87 = 0;
  v63 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = MEMORY[0x28223BE20](v66);
  v64 = &v32 - v63;
  v88 = v5;
  v89 = v4;
  v87 = v3;

  v6 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("amount", 6uLL, 1);
  v67 = &v86;
  v86 = v6;
  v84 = v65;
  v85 = v66;
  v68 = MEMORY[0x26D620740](v6._countAndFlagsBits, v6._object, v65, v66);
  outlined destroy of String.UTF8View(v67);
  if (v68)
  {

    v60 = v62[3];

    if (v60)
    {
      v59 = v60;
      v58 = v60;
      result = type metadata accessor for DialogCurrency();
      v8 = v61;
      v9 = v58;
      v61[3] = result;
      *v8 = v9;
    }

    else
    {
      v10 = v61;
      *v61 = 0;
      v10[1] = 0;
      v10[2] = 0;
      v10[3] = 0;
    }
  }

  else
  {

    v11 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("app", 3uLL, 1);
    v56 = &v83;
    v83 = v11;
    v81 = v65;
    v82 = v66;
    v57 = MEMORY[0x26D620740](v11._countAndFlagsBits, v11._object, v65, v66);
    outlined destroy of String.UTF8View(v56);
    if (v57)
    {

      v55 = v62[4];

      if (v55)
      {
        v54 = v55;
        v53 = v55;
        result = type metadata accessor for SirikitApp();
        v12 = v61;
        v13 = v53;
        v61[3] = result;
        *v12 = v13;
      }

      else
      {
        v14 = v61;
        *v61 = 0;
        v14[1] = 0;
        v14[2] = 0;
        v14[3] = 0;
      }
    }

    else
    {

      v15 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("fee", 3uLL, 1);
      v51 = &v80;
      v80 = v15;
      v78 = v65;
      v79 = v66;
      v52 = MEMORY[0x26D620740](v15._countAndFlagsBits, v15._object, v65, v66);
      outlined destroy of String.UTF8View(v51);
      if (v52)
      {

        v50 = v62[5];

        if (v50)
        {
          v49 = v50;
          v48 = v50;
          result = type metadata accessor for DialogCurrency();
          v16 = v61;
          v17 = v48;
          v61[3] = result;
          *v16 = v17;
        }

        else
        {
          v18 = v61;
          *v61 = 0;
          v18[1] = 0;
          v18[2] = 0;
          v18[3] = 0;
        }
      }

      else
      {

        v19 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("memo", 4uLL, 1);
        v46 = &v77;
        v77 = v19;
        v75 = v65;
        v76 = v66;
        v47 = MEMORY[0x26D620740](v19._countAndFlagsBits, v19._object, v65, v66);
        outlined destroy of String.UTF8View(v46);
        if (v47)
        {

          outlined init with copy of SpeakableString?(v62 + OBJC_IVAR____TtC19SiriPaymentsIntents21PaymentsDialogConcept_memo, v64);
          v43 = type metadata accessor for SpeakableString();
          v44 = *(v43 - 8);
          v45 = v43 - 8;
          if ((*(v44 + 48))(v64, 1) == 1)
          {
            result = outlined destroy of SpeakableString?(v64);
            v22 = v61;
            *v61 = 0;
            v22[1] = 0;
            v22[2] = 0;
            v22[3] = 0;
          }

          else
          {
            v20 = v61;
            v61[3] = v43;
            boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v20);
            return (*(v44 + 32))(boxed_opaque_existential_1, v64, v43);
          }
        }

        else
        {

          v23 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("payeeName", 9uLL, 1);
          v41 = &v74;
          v74 = v23;
          v72 = v65;
          v73 = v66;
          v42 = MEMORY[0x26D620740](v23._countAndFlagsBits, v23._object, v65, v66);
          outlined destroy of String.UTF8View(v41);
          if (v42)
          {

            v40 = *(v62 + OBJC_IVAR____TtC19SiriPaymentsIntents21PaymentsDialogConcept_payeeName);

            if (v40)
            {
              v39 = v40;
              v38 = v40;
              result = type metadata accessor for DialogPerson();
              v24 = v61;
              v25 = v38;
              v61[3] = result;
              *v24 = v25;
            }

            else
            {
              v26 = v61;
              *v61 = 0;
              v26[1] = 0;
              v26[2] = 0;
              v26[3] = 0;
            }
          }

          else
          {

            v27 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("payerName", 9uLL, 1);
            v36 = &v71;
            v71 = v27;
            v69 = v65;
            v70 = v66;
            v37 = MEMORY[0x26D620740](v27._countAndFlagsBits, v27._object, v65, v66);
            outlined destroy of String.UTF8View(v36);
            if (v37)
            {

              v35 = *(v62 + OBJC_IVAR____TtC19SiriPaymentsIntents21PaymentsDialogConcept_payerName);

              if (v35)
              {
                v34 = v35;
                v33 = v35;
                result = type metadata accessor for DialogPerson();
                v28 = v61;
                v29 = v33;
                v61[3] = result;
                *v28 = v29;
              }

              else
              {
                v30 = v61;
                *v61 = 0;
                v30[1] = 0;
                v30[2] = 0;
                v30[3] = 0;
              }
            }

            else
            {

              v31 = v61;
              *v61 = 0;
              v31[1] = 0;
              v31[2] = 0;
              v31[3] = 0;
            }
          }
        }
      }
    }
  }

  return result;
}

SiriPaymentsIntents::PaymentsDialogConcept::CodingKeys_optional __swiftcall PaymentsDialogConcept.CodingKeys.init(rawValue:)(Swift::String rawValue)
{
  v1 = _allocateUninitializedArray<A>(_:)();
  *v2 = "amount";
  *(v2 + 8) = 6;
  *(v2 + 16) = 2;
  *(v2 + 24) = "app";
  *(v2 + 32) = 3;
  *(v2 + 40) = 2;
  *(v2 + 48) = "fee";
  *(v2 + 56) = 3;
  *(v2 + 64) = 2;
  *(v2 + 72) = "memo";
  *(v2 + 80) = 4;
  *(v2 + 88) = 2;
  *(v2 + 96) = "payeeName";
  *(v2 + 104) = 9;
  *(v2 + 112) = 2;
  *(v2 + 120) = "payerName";
  *(v2 + 128) = 9;
  *(v2 + 136) = 2;
  _finalizeUninitializedArray<A>(_:)();
  v7 = _findStringSwitchCase(cases:string:)(v1, rawValue);

  switch(v7)
  {
    case 0:
      v5.value = SiriPaymentsIntents_PaymentsDialogConcept_CodingKeys_amount;
LABEL_14:

      return v5;
    case 1:
      v5.value = SiriPaymentsIntents_PaymentsDialogConcept_CodingKeys_app;
      goto LABEL_14;
    case 2:
      v5.value = SiriPaymentsIntents_PaymentsDialogConcept_CodingKeys_fee;
      goto LABEL_14;
    case 3:
      v5.value = SiriPaymentsIntents_PaymentsDialogConcept_CodingKeys_memo;
      goto LABEL_14;
    case 4:
      v5.value = SiriPaymentsIntents_PaymentsDialogConcept_CodingKeys_payeeName;
      goto LABEL_14;
    case 5:
      v5.value = SiriPaymentsIntents_PaymentsDialogConcept_CodingKeys_payerName;
      goto LABEL_14;
  }

  return 6;
}

SiriPaymentsIntents::PaymentsDialogConcept::CodingKeys_optional __swiftcall PaymentsDialogConcept.CodingKeys.init(stringValue:)(Swift::String stringValue)
{

  v4.value = PaymentsDialogConcept.CodingKeys.init(rawValue:)(stringValue).value;

  if (v4.value == SiriPaymentsIntents_PaymentsDialogConcept_CodingKeys_unknownDefault)
  {
    return 6;
  }

  else
  {
    return v4;
  }
}

uint64_t PaymentsDialogConcept.CodingKeys.rawValue.getter(char a1)
{
  switch(a1)
  {
    case 0:
      return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("amount", 6uLL, 1)._countAndFlagsBits;
    case 1:
      return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("app", 3uLL, 1)._countAndFlagsBits;
    case 2:
      return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("fee", 3uLL, 1)._countAndFlagsBits;
    case 3:
      return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("memo", 4uLL, 1)._countAndFlagsBits;
    case 4:
      return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("payeeName", 9uLL, 1)._countAndFlagsBits;
    default:
      return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("payerName", 9uLL, 1)._countAndFlagsBits;
  }
}

unint64_t lazy protocol witness table accessor for type PaymentsDialogConcept.CodingKeys and conformance PaymentsDialogConcept.CodingKeys()
{
  v2 = lazy protocol witness table cache variable for type PaymentsDialogConcept.CodingKeys and conformance PaymentsDialogConcept.CodingKeys;
  if (!lazy protocol witness table cache variable for type PaymentsDialogConcept.CodingKeys and conformance PaymentsDialogConcept.CodingKeys)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type PaymentsDialogConcept.CodingKeys and conformance PaymentsDialogConcept.CodingKeys);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type PaymentsDialogConcept.CodingKeys and conformance PaymentsDialogConcept.CodingKeys;
  if (!lazy protocol witness table cache variable for type PaymentsDialogConcept.CodingKeys and conformance PaymentsDialogConcept.CodingKeys)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type PaymentsDialogConcept.CodingKeys and conformance PaymentsDialogConcept.CodingKeys);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type PaymentsDialogConcept.CodingKeys and conformance PaymentsDialogConcept.CodingKeys;
  if (!lazy protocol witness table cache variable for type PaymentsDialogConcept.CodingKeys and conformance PaymentsDialogConcept.CodingKeys)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type PaymentsDialogConcept.CodingKeys and conformance PaymentsDialogConcept.CodingKeys);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type PaymentsDialogConcept.CodingKeys and conformance PaymentsDialogConcept.CodingKeys;
  if (!lazy protocol witness table cache variable for type PaymentsDialogConcept.CodingKeys and conformance PaymentsDialogConcept.CodingKeys)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type PaymentsDialogConcept.CodingKeys and conformance PaymentsDialogConcept.CodingKeys);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type PaymentsDialogConcept.CodingKeys and conformance PaymentsDialogConcept.CodingKeys;
  if (!lazy protocol witness table cache variable for type PaymentsDialogConcept.CodingKeys and conformance PaymentsDialogConcept.CodingKeys)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type PaymentsDialogConcept.CodingKeys and conformance PaymentsDialogConcept.CodingKeys);
    return WitnessTable;
  }

  return v2;
}

SiriPaymentsIntents::PaymentsDialogConcept::CodingKeys_optional protocol witness for RawRepresentable.init(rawValue:) in conformance PaymentsDialogConcept.CodingKeys@<W0>(Swift::String *a1@<X0>, SiriPaymentsIntents::PaymentsDialogConcept::CodingKeys_optional *a2@<X8>)
{
  result.value = PaymentsDialogConcept.CodingKeys.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance PaymentsDialogConcept.CodingKeys@<X0>(uint64_t *a1@<X8>)
{
  result = PaymentsDialogConcept.CodingKeys.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v3;
  return result;
}

SiriPaymentsIntents::PaymentsDialogConcept::CodingKeys_optional protocol witness for CodingKey.init(intValue:) in conformance PaymentsDialogConcept.CodingKeys@<W0>(Swift::Int a1@<X0>, SiriPaymentsIntents::PaymentsDialogConcept::CodingKeys_optional *a2@<X8>)
{
  result.value = PaymentsDialogConcept.CodingKeys.init(intValue:)(a1).value;
  a2->value = result.value;
  return result;
}

uint64_t PaymentsDialogConcept.deinit()
{
  outlined destroy of SFRichText?(v0 + 2);
  outlined destroy of ContiguousArray<A1>(v0 + 3);
  outlined destroy of ContiguousArray<A1>(v0 + 4);
  outlined destroy of ContiguousArray<A1>(v0 + 5);
  outlined destroy of SpeakableString?(v0 + OBJC_IVAR____TtC19SiriPaymentsIntents21PaymentsDialogConcept_memo);
  outlined destroy of ContiguousArray<A1>((v0 + OBJC_IVAR____TtC19SiriPaymentsIntents21PaymentsDialogConcept_payeeName));
  outlined destroy of ContiguousArray<A1>((v0 + OBJC_IVAR____TtC19SiriPaymentsIntents21PaymentsDialogConcept_payerName));
  return v2;
}

uint64_t PaymentsDialogConcept.__deallocating_deinit()
{
  v0 = *PaymentsDialogConcept.deinit();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  return swift_deallocClassInstance();
}

uint64_t PaymentsDialogConcept.encode(to:)(uint64_t a1)
{
  v44 = a1;
  v72 = 0;
  v71 = 0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v42 = (*(*(v2 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v2);
  v43 = v13 - v42;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy19SiriPaymentsIntents0E13DialogConceptC10CodingKeysOGMd, &_ss22KeyedEncodingContainerVy19SiriPaymentsIntents0E13DialogConceptC10CodingKeysOGMR);
  v45 = *(v54 - 8);
  v46 = v54 - 8;
  v47 = (*(v45 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = MEMORY[0x28223BE20](v44);
  v50 = v13 - v47;
  v72 = v3;
  v71 = v1;
  v48 = v3[3];
  v49 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v48);
  lazy protocol witness table accessor for type PaymentsDialogConcept.CodingKeys and conformance PaymentsDialogConcept.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v52 = v51[3];

  v57 = &v70;
  v70 = v52;
  v53 = &v69;
  v69 = 0;
  v55 = type metadata accessor for DialogCurrency();
  v4 = lazy protocol witness table accessor for type DialogCurrency and conformance DialogAbstractMeasurement();
  v5 = v56;
  v58 = v4;
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  v59 = v5;
  v60 = v5;
  if (v5)
  {
    v17 = v60;
    outlined destroy of ContiguousArray<A1>(&v70);
    result = (*(v45 + 8))(v50, v54);
    v18 = v17;
  }

  else
  {
    outlined destroy of ContiguousArray<A1>(&v70);
    v36 = v51[4];

    v39 = &v68;
    v68 = v36;
    v37 = &v67;
    v67 = 1;
    v38 = type metadata accessor for SirikitApp();
    lazy protocol witness table accessor for type SirikitApp and conformance SirikitApp();
    v6 = v59;
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v40 = v6;
    v41 = v6;
    if (v6)
    {
      v16 = v41;
      outlined destroy of ContiguousArray<A1>(&v68);
      result = (*(v45 + 8))(v50, v54);
      v18 = v16;
    }

    else
    {
      outlined destroy of ContiguousArray<A1>(&v68);
      v7 = v40;
      v33 = v51[5];

      v66 = v33;
      v65[1] = 2;
      KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
      v34 = v7;
      v35 = v7;
      if (v7)
      {
        v15 = v35;
        outlined destroy of ContiguousArray<A1>(&v66);
        result = (*(v45 + 8))(v50, v54);
        v18 = v15;
      }

      else
      {
        outlined destroy of ContiguousArray<A1>(&v66);
        outlined init with copy of SpeakableString?(v51 + OBJC_IVAR____TtC19SiriPaymentsIntents21PaymentsDialogConcept_memo, v43);
        v29 = v65;
        v65[0] = 3;
        v30 = type metadata accessor for SpeakableString();
        lazy protocol witness table accessor for type SpeakableString and conformance SpeakableString();
        v8 = v34;
        KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
        v31 = v8;
        v32 = v8;
        if (v8)
        {
          v14 = v32;
          outlined destroy of SpeakableString?(v43);
          result = (*(v45 + 8))(v50, v54);
          v18 = v14;
        }

        else
        {
          outlined destroy of SpeakableString?(v43);
          v22 = *(v51 + OBJC_IVAR____TtC19SiriPaymentsIntents21PaymentsDialogConcept_payeeName);

          v25 = &v64;
          v64 = v22;
          v23 = &v63;
          v63 = 4;
          v24 = type metadata accessor for DialogPerson();
          v9 = lazy protocol witness table accessor for type DialogPerson and conformance DialogPerson();
          v10 = v31;
          v26 = v9;
          KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
          v27 = v10;
          v28 = v10;
          if (v10)
          {
            v13[2] = v28;
            outlined destroy of ContiguousArray<A1>(&v64);
            return (*(v45 + 8))(v50, v54);
          }

          else
          {
            outlined destroy of ContiguousArray<A1>(&v64);
            v11 = v27;
            v19 = *(v51 + OBJC_IVAR____TtC19SiriPaymentsIntents21PaymentsDialogConcept_payerName);

            v62 = v19;
            v61 = 5;
            KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
            v20 = v11;
            v21 = v11;
            if (v11)
            {
              v13[1] = v21;
            }

            outlined destroy of ContiguousArray<A1>(&v62);
            return (*(v45 + 8))(v50, v54);
          }
        }
      }
    }
  }

  return result;
}

uint64_t *PaymentsDialogConcept.__allocating_init(from:)(uint64_t *a1)
{
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  swift_allocObject();
  v8 = PaymentsDialogConcept.init(from:)(a1);
  if (v6)
  {
    return v5;
  }

  else
  {
    return v8;
  }
}

uint64_t *PaymentsDialogConcept.init(from:)(uint64_t *a1)
{
  v53 = a1;
  v75 = 0;
  v74 = 0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v51 = (*(*(v2 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v2);
  v52 = v17 - v51;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy19SiriPaymentsIntents0E13DialogConceptC10CodingKeysOGMd, &_ss22KeyedDecodingContainerVy19SiriPaymentsIntents0E13DialogConceptC10CodingKeysOGMR);
  v55 = *(v54 - 8);
  v56 = v54 - 8;
  v57 = (*(v55 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = MEMORY[0x28223BE20](v53);
  v58 = v17 - v57;
  v75 = v3;
  v74 = v1;
  *(v1 + 16) = 0;
  v60 = v3[3];
  v61 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v60);
  lazy protocol witness table accessor for type PaymentsDialogConcept.CodingKeys and conformance PaymentsDialogConcept.CodingKeys();
  v4 = v59;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  v62 = v4;
  v63 = v4;
  if (v4)
  {
    v26 = v63;
    v27 = 1;
  }

  else
  {
    v46 = type metadata accessor for DialogCurrency();
    v45 = &v72;
    v72 = 0;
    v5 = lazy protocol witness table accessor for type DialogCurrency and conformance DialogAbstractMeasurement();
    v6 = v62;
    v47 = v5;
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v48 = v6;
    v49 = v6;
    if (v6)
    {
      v25 = v49;
      (*(v55 + 8))(v58, v54);
      v26 = v25;
      v27 = 1;
    }

    else
    {
      v50[3] = v73;
      v42 = type metadata accessor for SirikitApp();
      v41 = &v70;
      v70 = 1;
      lazy protocol witness table accessor for type SirikitApp and conformance SirikitApp();
      v7 = v48;
      KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
      v43 = v7;
      v44 = v7;
      if (v7)
      {
        v24 = v44;
        (*(v55 + 8))(v58, v54);
        v26 = v24;
        v27 = 3;
      }

      else
      {
        v50[4] = v71;
        v68[1] = 2;
        KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
        v39 = 0;
        v40 = 0;
        v50[5] = v69;
        v36 = type metadata accessor for SpeakableString();
        v35 = v68;
        v68[0] = 3;
        lazy protocol witness table accessor for type SpeakableString and conformance SpeakableString();
        v8 = v39;
        KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
        v37 = v8;
        v38 = v8;
        if (v8)
        {
          v23 = v38;
          (*(v55 + 8))(v58, v54);
          v26 = v23;
          v27 = 15;
        }

        else
        {
          outlined init with take of SpeakableString?(v52, v50 + OBJC_IVAR____TtC19SiriPaymentsIntents21PaymentsDialogConcept_memo);
          v31 = type metadata accessor for DialogPerson();
          v30 = &v66;
          v66 = 4;
          v9 = lazy protocol witness table accessor for type DialogPerson and conformance DialogPerson();
          v10 = v37;
          v32 = v9;
          KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
          v33 = v10;
          v34 = v10;
          if (!v10)
          {
            *(v50 + OBJC_IVAR____TtC19SiriPaymentsIntents21PaymentsDialogConcept_payeeName) = v67;
            v64 = 5;
            KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
            v28 = 0;
            v29 = 0;
            v11 = v54;
            v12 = v58;
            v13 = v55;
            *(v50 + OBJC_IVAR____TtC19SiriPaymentsIntents21PaymentsDialogConcept_payerName) = v65;
            (*(v13 + 8))(v12, v11);
            __swift_destroy_boxed_opaque_existential_0(v53);
            return v50;
          }

          v22 = v34;
          (*(v55 + 8))(v58, v54);
          v26 = v22;
          v27 = 31;
        }
      }
    }
  }

  v20 = v27;
  v21 = v26;
  if ((v27 & 0x7F) == 0x7F)
  {
  }

  else
  {
    outlined destroy of SFRichText?(v50 + 2);
    if ((v20 & 2) != 0)
    {
      outlined destroy of ContiguousArray<A1>(v50 + 3);
    }

    if ((v20 & 4) != 0)
    {
      outlined destroy of ContiguousArray<A1>(v50 + 4);
    }

    if ((v20 & 8) != 0)
    {
      outlined destroy of ContiguousArray<A1>(v50 + 5);
    }

    if ((v20 & 0x10) != 0)
    {
      outlined destroy of SpeakableString?(v50 + OBJC_IVAR____TtC19SiriPaymentsIntents21PaymentsDialogConcept_memo);
    }

    if ((v20 & 0x20) != 0)
    {
      outlined destroy of ContiguousArray<A1>((v50 + OBJC_IVAR____TtC19SiriPaymentsIntents21PaymentsDialogConcept_payeeName));
    }

    v19 = v50;
    v18 = v50;
    type metadata accessor for PaymentsDialogConcept();
    v15 = *(*v18 + 48);
    v16 = *(*v18 + 52);
    swift_deallocPartialClassInstance();
  }

  __swift_destroy_boxed_opaque_existential_0(v53);
  return v17[1];
}

void (*protocol witness for CATType.mockGlobals.modify in conformance PaymentsDialogConcept(void *a1))(void **a1, char a2)
{
  v4 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v4;
  v2 = *v1;
  v4[4] = TCCHandleStrategy.previousIntent.modify();
  return protocol witness for CATType.mockGlobals.modify in conformance PaymentsDialogConcept;
}

void protocol witness for CATType.mockGlobals.modify in conformance PaymentsDialogConcept(void **a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    v2[4](v2, 1);
  }

  else
  {
    v2[4](v2, 0);
  }

  free(v2);
}

uint64_t type metadata completion function for PaymentsDialogConcept()
{
  v2 = type metadata accessor for SpeakableString?();
  updated = v2;
  if (v0 <= 0x3F)
  {
    v4 = *(v2 - 8) + 64;
    updated = swift_updateClassMetadata2();
    if (!updated)
    {
      return 0;
    }
  }

  return updated;
}

uint64_t type metadata accessor for SpeakableString?()
{
  v4 = lazy cache variable for type metadata for SpeakableString?;
  if (!lazy cache variable for type metadata for SpeakableString?)
  {
    type metadata accessor for SpeakableString();
    v3 = type metadata accessor for Optional();
    v4 = v3;
    if (!v0)
    {
      v1 = v3;
      atomic_store(v3, &lazy cache variable for type metadata for SpeakableString?);
      return v1;
    }
  }

  return v4;
}

uint64_t type metadata accessor for PaymentsDialogConcept.Builder()
{
  v1 = type metadata singleton initialization cache for PaymentsDialogConcept.Builder;
  if (!type metadata singleton initialization cache for PaymentsDialogConcept.Builder)
  {
    return swift_getSingletonMetadata();
  }

  return v1;
}

uint64_t type metadata completion function for PaymentsDialogConcept.Builder()
{
  v2 = type metadata accessor for SpeakableString?();
  updated = v2;
  if (v0 <= 0x3F)
  {
    v4 = *(v2 - 8) + 64;
    updated = swift_updateClassMetadata2();
    if (!updated)
    {
      return 0;
    }
  }

  return updated;
}

uint64_t getEnumTagSinglePayload for PaymentsDialogConcept.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 <= 0xFA)
    {
      goto LABEL_15;
    }

    v7 = ((a2 + 5) >> 8) + 1;
    v8 = 1;
    if (v7 >= 0x100)
    {
      if (v7 >= 0x10000)
      {
        v2 = 4;
      }

      else
      {
        v2 = 2;
      }

      v8 = v2;
    }

    if (v8 == 1)
    {
      v6 = a1[1];
    }

    else
    {
      v6 = v8 == 2 ? *(a1 + 1) : *(a1 + 1);
    }

    if (v6)
    {
      v5 = (*a1 | ((v6 - 1) << 8)) + 250;
    }

    else
    {
LABEL_15:
      v3 = *a1 - 6;
      if (v3 < 0)
      {
        v3 = -1;
      }

      v5 = v3;
    }
  }

  else
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for PaymentsDialogConcept.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  v7 = 0;
  if (a3 > 0xFA)
  {
    v5 = ((a3 + 5) >> 8) + 1;
    v6 = 1;
    if (v5 >= 0x100)
    {
      if (v5 >= 0x10000)
      {
        v3 = 4;
      }

      else
      {
        v3 = 2;
      }

      v6 = v3;
    }

    v7 = v6;
  }

  if (a2 > 0xFA)
  {
    v4 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
    if (v7)
    {
      if (v7 == 1)
      {
        result[1] = v4;
      }

      else if (v7 == 2)
      {
        *(result + 1) = v4;
      }

      else
      {
        *(result + 1) = v4;
      }
    }
  }

  else
  {
    if (v7)
    {
      if (v7 == 1)
      {
        result[1] = 0;
      }

      else if (v7 == 2)
      {
        *(result + 1) = 0;
      }

      else
      {
        *(result + 1) = 0;
      }
    }

    if (a2)
    {
      *result = a2 + 5;
    }
  }

  return result;
}

uint64_t *protocol witness for Decodable.init(from:) in conformance PaymentsDialogConcept@<X0>(uint64_t *a1@<X0>, uint64_t **a2@<X8>)
{
  result = PaymentsDialogConcept.__allocating_init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PaymentsDialogConcept and conformance PaymentsDialogConcept()
{
  v2 = lazy protocol witness table cache variable for type PaymentsDialogConcept and conformance PaymentsDialogConcept;
  if (!lazy protocol witness table cache variable for type PaymentsDialogConcept and conformance PaymentsDialogConcept)
  {
    type metadata accessor for PaymentsDialogConcept();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type PaymentsDialogConcept and conformance PaymentsDialogConcept);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type PaymentsDialogConcept and conformance PaymentsDialogConcept;
  if (!lazy protocol witness table cache variable for type PaymentsDialogConcept and conformance PaymentsDialogConcept)
  {
    type metadata accessor for PaymentsDialogConcept();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type PaymentsDialogConcept and conformance PaymentsDialogConcept);
    return WitnessTable;
  }

  return v2;
}

void *__swift_coroFrameAllocStub(size_t a1)
{
  if (MEMORY[0x277D84FD8])
  {
    return swift_coroFrameAlloc();
  }

  else
  {
    return malloc(a1);
  }
}

unint64_t lazy protocol witness table accessor for type DialogCurrency and conformance DialogAbstractMeasurement()
{
  v2 = lazy protocol witness table cache variable for type DialogCurrency and conformance DialogAbstractMeasurement;
  if (!lazy protocol witness table cache variable for type DialogCurrency and conformance DialogAbstractMeasurement)
  {
    type metadata accessor for DialogCurrency();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type DialogCurrency and conformance DialogAbstractMeasurement);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type DialogCurrency and conformance DialogAbstractMeasurement;
  if (!lazy protocol witness table cache variable for type DialogCurrency and conformance DialogAbstractMeasurement)
  {
    type metadata accessor for DialogCurrency();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type DialogCurrency and conformance DialogAbstractMeasurement);
    return WitnessTable;
  }

  return v2;
}

unint64_t lazy protocol witness table accessor for type SirikitApp and conformance SirikitApp()
{
  v2 = lazy protocol witness table cache variable for type SirikitApp and conformance SirikitApp;
  if (!lazy protocol witness table cache variable for type SirikitApp and conformance SirikitApp)
  {
    type metadata accessor for SirikitApp();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type SirikitApp and conformance SirikitApp);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type SirikitApp and conformance SirikitApp;
  if (!lazy protocol witness table cache variable for type SirikitApp and conformance SirikitApp)
  {
    type metadata accessor for SirikitApp();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type SirikitApp and conformance SirikitApp);
    return WitnessTable;
  }

  return v2;
}

unint64_t lazy protocol witness table accessor for type SpeakableString and conformance SpeakableString()
{
  v2 = lazy protocol witness table cache variable for type SpeakableString and conformance SpeakableString;
  if (!lazy protocol witness table cache variable for type SpeakableString and conformance SpeakableString)
  {
    type metadata accessor for SpeakableString();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type SpeakableString and conformance SpeakableString);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type SpeakableString and conformance SpeakableString;
  if (!lazy protocol witness table cache variable for type SpeakableString and conformance SpeakableString)
  {
    type metadata accessor for SpeakableString();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type SpeakableString and conformance SpeakableString);
    return WitnessTable;
  }

  return v2;
}

unint64_t lazy protocol witness table accessor for type DialogPerson and conformance DialogPerson()
{
  v2 = lazy protocol witness table cache variable for type DialogPerson and conformance DialogPerson;
  if (!lazy protocol witness table cache variable for type DialogPerson and conformance DialogPerson)
  {
    type metadata accessor for DialogPerson();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type DialogPerson and conformance DialogPerson);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type DialogPerson and conformance DialogPerson;
  if (!lazy protocol witness table cache variable for type DialogPerson and conformance DialogPerson)
  {
    type metadata accessor for DialogPerson();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type DialogPerson and conformance DialogPerson);
    return WitnessTable;
  }

  return v2;
}

uint64_t RequestPaymentSlots.rawValue.getter(char a1)
{
  if (!a1)
  {
    return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("payer", 5uLL, 1)._countAndFlagsBits;
  }

  if (a1 == 1)
  {
    return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("currencyAmount", 0xEuLL, 1)._countAndFlagsBits;
  }

  else
  {
    return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("note", 4uLL, 1)._countAndFlagsBits;
  }
}

uint64_t SendPaymentSlots.rawValue.getter(char a1)
{
  if (!a1)
  {
    return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("payee", 5uLL, 1)._countAndFlagsBits;
  }

  if (a1 == 1)
  {
    return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("currencyAmount", 0xEuLL, 1)._countAndFlagsBits;
  }

  else
  {
    return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("note", 4uLL, 1)._countAndFlagsBits;
  }
}

SiriPaymentsIntents::RequestPaymentSlots_optional __swiftcall RequestPaymentSlots.init(rawValue:)(Swift::String rawValue)
{
  v1 = _allocateUninitializedArray<A>(_:)();
  *v2 = "payer";
  *(v2 + 8) = 5;
  *(v2 + 16) = 2;
  *(v2 + 24) = "currencyAmount";
  *(v2 + 32) = 14;
  *(v2 + 40) = 2;
  *(v2 + 48) = "note";
  *(v2 + 56) = 4;
  *(v2 + 64) = 2;
  _finalizeUninitializedArray<A>(_:)();
  v7 = _findStringSwitchCase(cases:string:)(v1, rawValue);

  switch(v7)
  {
    case 0:
      v5.value = SiriPaymentsIntents_RequestPaymentSlots_payer;
LABEL_8:

      return v5;
    case 1:
      v5.value = SiriPaymentsIntents_RequestPaymentSlots_currencyAmount;
      goto LABEL_8;
    case 2:
      v5.value = SiriPaymentsIntents_RequestPaymentSlots_note;
      goto LABEL_8;
  }

  return 3;
}

SiriPaymentsIntents::SendPaymentSlots_optional __swiftcall SendPaymentSlots.init(rawValue:)(Swift::String rawValue)
{
  v1 = _allocateUninitializedArray<A>(_:)();
  *v2 = "payee";
  *(v2 + 8) = 5;
  *(v2 + 16) = 2;
  *(v2 + 24) = "currencyAmount";
  *(v2 + 32) = 14;
  *(v2 + 40) = 2;
  *(v2 + 48) = "note";
  *(v2 + 56) = 4;
  *(v2 + 64) = 2;
  _finalizeUninitializedArray<A>(_:)();
  v7 = _findStringSwitchCase(cases:string:)(v1, rawValue);

  switch(v7)
  {
    case 0:
      v5.value = SiriPaymentsIntents_SendPaymentSlots_payee;
LABEL_8:

      return v5;
    case 1:
      v5.value = SiriPaymentsIntents_SendPaymentSlots_currencyAmount;
      goto LABEL_8;
    case 2:
      v5.value = SiriPaymentsIntents_SendPaymentSlots_note;
      goto LABEL_8;
  }

  return 3;
}

SiriPaymentsIntents::SearchForAccountsSlots_optional __swiftcall SearchForAccountsSlots.init(rawValue:)(Swift::String rawValue)
{
  v1 = _allocateUninitializedArray<A>(_:)();
  *v2 = "accountNickname";
  *(v2 + 8) = 15;
  *(v2 + 16) = 2;
  *(v2 + 24) = "accountType";
  *(v2 + 32) = 11;
  *(v2 + 40) = 2;
  *(v2 + 48) = "organizationName";
  *(v2 + 56) = 16;
  *(v2 + 64) = 2;
  *(v2 + 72) = "requestedBalanceType";
  *(v2 + 80) = 20;
  *(v2 + 88) = 2;
  _finalizeUninitializedArray<A>(_:)();
  v7 = _findStringSwitchCase(cases:string:)(v1, rawValue);

  switch(v7)
  {
    case 0:
      v5.value = SiriPaymentsIntents_SearchForAccountsSlots_accountNickname;
LABEL_10:

      return v5;
    case 1:
      v5.value = SiriPaymentsIntents_SearchForAccountsSlots_accountType;
      goto LABEL_10;
    case 2:
      v5.value = SiriPaymentsIntents_SearchForAccountsSlots_organizationName;
      goto LABEL_10;
    case 3:
      v5.value = SiriPaymentsIntents_SearchForAccountsSlots_requestedBalanceType;
      goto LABEL_10;
  }

  return 4;
}

uint64_t SearchForAccountsSlots.rawValue.getter(char a1)
{
  switch(a1)
  {
    case 0:
      return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("accountNickname", 0xFuLL, 1)._countAndFlagsBits;
    case 1:
      return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("accountType", 0xBuLL, 1)._countAndFlagsBits;
    case 2:
      return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("organizationName", 0x10uLL, 1)._countAndFlagsBits;
    default:
      return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("requestedBalanceType", 0x14uLL, 1)._countAndFlagsBits;
  }
}

id Slot<>.slotDescription.getter(uint64_t a1, uint64_t a2)
{
  (*(a2 + 8))();
  v10 = SAUIAppPunchOut.__allocating_init()();
  v12 = [v10 _intentInstanceDescription];
  MEMORY[0x277D82BD8](v10);
  dispatch thunk of RawRepresentable.rawValue.getter();
  v11 = MEMORY[0x26D620690]();

  v13 = [v12 slotByName_];
  MEMORY[0x277D82BD8](v11);
  MEMORY[0x277D82BD8](v12);
  if (!v13)
  {
    (*(a2 + 8))();
    v8 = [swift_getObjCClassFromMetadata() typeName];
    if (v8)
    {
      v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v5 = v3;
      MEMORY[0x277D82BD8](v8);
      v6 = v4;
      v7 = v5;
    }

    else
    {
      v6 = 0;
      v7 = 0;
    }

    if (v7)
    {
      PaymentsError.errorDescription.getter();
      outlined consume of PaymentsError(v6, v7, 0, 0, 0, 0, 11);
      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }

    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    JUMPOUT(0x2687D319CLL);
  }

  return v13;
}

uint64_t Slot<>.propertyName.getter(uint64_t a1, uint64_t a2)
{
  v9 = (*(a2 + 24))();
  v10 = [v9 facadePropertyName];
  if (v10)
  {
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v2;
    MEMORY[0x277D82BD8](v10);
    v7 = v5;
    v8 = v6;
  }

  else
  {
    v7 = 0;
    v8 = 0;
  }

  MEMORY[0x277D82BD8](v9);
  if (v8)
  {
    return v7;
  }

  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return v4;
}

uint64_t SendPaymentSlots.canonicalName.getter(char a1)
{
  v12 = a1;
  v10 = DefaultStringInterpolation.init(literalCapacity:interpolationCount:)();
  v11 = v1;
  countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("com.apple.siri.nl.", 0x12uLL, 1)._countAndFlagsBits;
  MEMORY[0x26D620F90](countAndFlagsBits);

  SendPaymentSlots.rawValue.getter(a1);
  v3 = String.firstLetterCapitalized()();

  v9 = v3;
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  outlined destroy of String.UTF8View(&v9);
  v4 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1)._countAndFlagsBits;
  MEMORY[0x26D620F90](v4);

  v8 = v10;
  v7 = v11;

  outlined destroy of String.UTF8View(&v10);
  return MEMORY[0x26D620710](v8, v7);
}

uint64_t static SendPaymentSlots.allCases.getter()
{
  result = _allocateUninitializedArray<A>(_:)();
  *v1 = 0;
  v1[1] = 1;
  v1[2] = 2;
  _finalizeUninitializedArray<A>(_:)();
  return result;
}

unint64_t lazy protocol witness table accessor for type SendPaymentSlots and conformance SendPaymentSlots()
{
  v2 = lazy protocol witness table cache variable for type SendPaymentSlots and conformance SendPaymentSlots;
  if (!lazy protocol witness table cache variable for type SendPaymentSlots and conformance SendPaymentSlots)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type SendPaymentSlots and conformance SendPaymentSlots);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type SendPaymentSlots and conformance SendPaymentSlots;
  if (!lazy protocol witness table cache variable for type SendPaymentSlots and conformance SendPaymentSlots)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type SendPaymentSlots and conformance SendPaymentSlots);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type SendPaymentSlots and conformance SendPaymentSlots;
  if (!lazy protocol witness table cache variable for type SendPaymentSlots and conformance SendPaymentSlots)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type SendPaymentSlots and conformance SendPaymentSlots);
    return WitnessTable;
  }

  return v2;
}

SiriPaymentsIntents::SendPaymentSlots_optional protocol witness for RawRepresentable.init(rawValue:) in conformance SendPaymentSlots@<W0>(Swift::String *a1@<X0>, SiriPaymentsIntents::SendPaymentSlots_optional *a2@<X8>)
{
  result.value = SendPaymentSlots.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance SendPaymentSlots@<X0>(uint64_t *a1@<X8>)
{
  result = SendPaymentSlots.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v3;
  return result;
}

id protocol witness for Slot.slotDescription.getter in conformance SendPaymentSlots(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type SendPaymentSlots and conformance SendPaymentSlots();
  lazy protocol witness table accessor for type SendPaymentSlots and conformance SendPaymentSlots();
  return Slot<>.slotDescription.getter(a1, a2);
}

uint64_t protocol witness for Slot.propertyName.getter in conformance SendPaymentSlots(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type SendPaymentSlots and conformance SendPaymentSlots();
  lazy protocol witness table accessor for type SendPaymentSlots and conformance SendPaymentSlots();
  return Slot<>.propertyName.getter(a1, a2);
}

uint64_t protocol witness for static CaseIterable.allCases.getter in conformance SendPaymentSlots@<X0>(uint64_t *a1@<X8>)
{
  result = static SendPaymentSlots.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t RequestPaymentSlots.canonicalName.getter(char a1)
{
  v12 = a1;
  v10 = DefaultStringInterpolation.init(literalCapacity:interpolationCount:)();
  v11 = v1;
  countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("com.apple.siri.nl.", 0x12uLL, 1)._countAndFlagsBits;
  MEMORY[0x26D620F90](countAndFlagsBits);

  RequestPaymentSlots.rawValue.getter(a1);
  v3 = String.firstLetterCapitalized()();

  v9 = v3;
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  outlined destroy of String.UTF8View(&v9);
  v4 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1)._countAndFlagsBits;
  MEMORY[0x26D620F90](v4);

  v8 = v10;
  v7 = v11;

  outlined destroy of String.UTF8View(&v10);
  return MEMORY[0x26D620710](v8, v7);
}

uint64_t static RequestPaymentSlots.allCases.getter()
{
  result = _allocateUninitializedArray<A>(_:)();
  *v1 = 0;
  v1[1] = 1;
  v1[2] = 2;
  _finalizeUninitializedArray<A>(_:)();
  return result;
}

unint64_t lazy protocol witness table accessor for type RequestPaymentSlots and conformance RequestPaymentSlots()
{
  v2 = lazy protocol witness table cache variable for type RequestPaymentSlots and conformance RequestPaymentSlots;
  if (!lazy protocol witness table cache variable for type RequestPaymentSlots and conformance RequestPaymentSlots)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type RequestPaymentSlots and conformance RequestPaymentSlots);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type RequestPaymentSlots and conformance RequestPaymentSlots;
  if (!lazy protocol witness table cache variable for type RequestPaymentSlots and conformance RequestPaymentSlots)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type RequestPaymentSlots and conformance RequestPaymentSlots);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type RequestPaymentSlots and conformance RequestPaymentSlots;
  if (!lazy protocol witness table cache variable for type RequestPaymentSlots and conformance RequestPaymentSlots)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type RequestPaymentSlots and conformance RequestPaymentSlots);
    return WitnessTable;
  }

  return v2;
}

SiriPaymentsIntents::RequestPaymentSlots_optional protocol witness for RawRepresentable.init(rawValue:) in conformance RequestPaymentSlots@<W0>(Swift::String *a1@<X0>, SiriPaymentsIntents::RequestPaymentSlots_optional *a2@<X8>)
{
  result.value = RequestPaymentSlots.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance RequestPaymentSlots@<X0>(uint64_t *a1@<X8>)
{
  result = RequestPaymentSlots.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v3;
  return result;
}

id protocol witness for Slot.slotDescription.getter in conformance RequestPaymentSlots(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type RequestPaymentSlots and conformance RequestPaymentSlots();
  lazy protocol witness table accessor for type RequestPaymentSlots and conformance RequestPaymentSlots();
  return Slot<>.slotDescription.getter(a1, a2);
}

uint64_t protocol witness for Slot.propertyName.getter in conformance RequestPaymentSlots(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type RequestPaymentSlots and conformance RequestPaymentSlots();
  lazy protocol witness table accessor for type RequestPaymentSlots and conformance RequestPaymentSlots();
  return Slot<>.propertyName.getter(a1, a2);
}

uint64_t protocol witness for static CaseIterable.allCases.getter in conformance RequestPaymentSlots@<X0>(uint64_t *a1@<X8>)
{
  result = static RequestPaymentSlots.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t SearchForAccountsSlots.canonicalName.getter(char a1)
{
  v12 = a1;
  v10 = DefaultStringInterpolation.init(literalCapacity:interpolationCount:)();
  v11 = v1;
  countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("com.apple.siri.nl.", 0x12uLL, 1)._countAndFlagsBits;
  MEMORY[0x26D620F90](countAndFlagsBits);

  SearchForAccountsSlots.rawValue.getter(a1);
  v3 = String.firstLetterCapitalized()();

  v9 = v3;
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  outlined destroy of String.UTF8View(&v9);
  v4 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1)._countAndFlagsBits;
  MEMORY[0x26D620F90](v4);

  v8 = v10;
  v7 = v11;

  outlined destroy of String.UTF8View(&v10);
  return MEMORY[0x26D620710](v8, v7);
}

uint64_t static SearchForAccountsSlots.allCases.getter()
{
  result = _allocateUninitializedArray<A>(_:)();
  *v1 = 0;
  v1[1] = 1;
  v1[2] = 2;
  v1[3] = 3;
  _finalizeUninitializedArray<A>(_:)();
  return result;
}

unint64_t lazy protocol witness table accessor for type SearchForAccountsSlots and conformance SearchForAccountsSlots()
{
  v2 = lazy protocol witness table cache variable for type SearchForAccountsSlots and conformance SearchForAccountsSlots;
  if (!lazy protocol witness table cache variable for type SearchForAccountsSlots and conformance SearchForAccountsSlots)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type SearchForAccountsSlots and conformance SearchForAccountsSlots);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type SearchForAccountsSlots and conformance SearchForAccountsSlots;
  if (!lazy protocol witness table cache variable for type SearchForAccountsSlots and conformance SearchForAccountsSlots)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type SearchForAccountsSlots and conformance SearchForAccountsSlots);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type SearchForAccountsSlots and conformance SearchForAccountsSlots;
  if (!lazy protocol witness table cache variable for type SearchForAccountsSlots and conformance SearchForAccountsSlots)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type SearchForAccountsSlots and conformance SearchForAccountsSlots);
    return WitnessTable;
  }

  return v2;
}

SiriPaymentsIntents::SearchForAccountsSlots_optional protocol witness for RawRepresentable.init(rawValue:) in conformance SearchForAccountsSlots@<W0>(Swift::String *a1@<X0>, SiriPaymentsIntents::SearchForAccountsSlots_optional *a2@<X8>)
{
  result.value = SearchForAccountsSlots.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance SearchForAccountsSlots@<X0>(uint64_t *a1@<X8>)
{
  result = SearchForAccountsSlots.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v3;
  return result;
}

id protocol witness for Slot.slotDescription.getter in conformance SearchForAccountsSlots(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type SearchForAccountsSlots and conformance SearchForAccountsSlots();
  lazy protocol witness table accessor for type SearchForAccountsSlots and conformance SearchForAccountsSlots();
  return Slot<>.slotDescription.getter(a1, a2);
}

uint64_t protocol witness for Slot.propertyName.getter in conformance SearchForAccountsSlots(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type SearchForAccountsSlots and conformance SearchForAccountsSlots();
  lazy protocol witness table accessor for type SearchForAccountsSlots and conformance SearchForAccountsSlots();
  return Slot<>.propertyName.getter(a1, a2);
}

uint64_t protocol witness for static CaseIterable.allCases.getter in conformance SearchForAccountsSlots@<X0>(uint64_t *a1@<X8>)
{
  result = static SearchForAccountsSlots.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for SearchForAccountsSlots(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 <= 0xFC)
    {
      goto LABEL_15;
    }

    v7 = ((a2 + 3) >> 8) + 1;
    v8 = 1;
    if (v7 >= 0x100)
    {
      if (v7 >= 0x10000)
      {
        v2 = 4;
      }

      else
      {
        v2 = 2;
      }

      v8 = v2;
    }

    if (v8 == 1)
    {
      v6 = a1[1];
    }

    else
    {
      v6 = v8 == 2 ? *(a1 + 1) : *(a1 + 1);
    }

    if (v6)
    {
      v5 = (*a1 | ((v6 - 1) << 8)) + 252;
    }

    else
    {
LABEL_15:
      v3 = *a1 - 4;
      if (v3 < 0)
      {
        v3 = -1;
      }

      v5 = v3;
    }
  }

  else
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for SearchForAccountsSlots(_BYTE *result, unsigned int a2, unsigned int a3)
{
  v7 = 0;
  if (a3 > 0xFC)
  {
    v5 = ((a3 + 3) >> 8) + 1;
    v6 = 1;
    if (v5 >= 0x100)
    {
      if (v5 >= 0x10000)
      {
        v3 = 4;
      }

      else
      {
        v3 = 2;
      }

      v6 = v3;
    }

    v7 = v6;
  }

  if (a2 > 0xFC)
  {
    v4 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    if (v7)
    {
      if (v7 == 1)
      {
        result[1] = v4;
      }

      else if (v7 == 2)
      {
        *(result + 1) = v4;
      }

      else
      {
        *(result + 1) = v4;
      }
    }
  }

  else
  {
    if (v7)
    {
      if (v7 == 1)
      {
        result[1] = 0;
      }

      else if (v7 == 2)
      {
        *(result + 1) = 0;
      }

      else
      {
        *(result + 1) = 0;
      }
    }

    if (a2)
    {
      *result = a2 + 3;
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [SearchForAccountsSlots] and conformance [A]()
{
  v2 = lazy protocol witness table cache variable for type [SearchForAccountsSlots] and conformance [A];
  if (!lazy protocol witness table cache variable for type [SearchForAccountsSlots] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay19SiriPaymentsIntents22SearchForAccountsSlotsOGMd, &_sSay19SiriPaymentsIntents22SearchForAccountsSlotsOGMR);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type [SearchForAccountsSlots] and conformance [A]);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type [SearchForAccountsSlots] and conformance [A];
  if (!lazy protocol witness table cache variable for type [SearchForAccountsSlots] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay19SiriPaymentsIntents22SearchForAccountsSlotsOGMd, &_sSay19SiriPaymentsIntents22SearchForAccountsSlotsOGMR);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type [SearchForAccountsSlots] and conformance [A]);
    return WitnessTable;
  }

  return v2;
}

unint64_t lazy protocol witness table accessor for type [RequestPaymentSlots] and conformance [A]()
{
  v2 = lazy protocol witness table cache variable for type [RequestPaymentSlots] and conformance [A];
  if (!lazy protocol witness table cache variable for type [RequestPaymentSlots] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay19SiriPaymentsIntents19RequestPaymentSlotsOGMd, &_sSay19SiriPaymentsIntents19RequestPaymentSlotsOGMR);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type [RequestPaymentSlots] and conformance [A]);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type [RequestPaymentSlots] and conformance [A];
  if (!lazy protocol witness table cache variable for type [RequestPaymentSlots] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay19SiriPaymentsIntents19RequestPaymentSlotsOGMd, &_sSay19SiriPaymentsIntents19RequestPaymentSlotsOGMR);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type [RequestPaymentSlots] and conformance [A]);
    return WitnessTable;
  }

  return v2;
}

unint64_t lazy protocol witness table accessor for type [SendPaymentSlots] and conformance [A]()
{
  v2 = lazy protocol witness table cache variable for type [SendPaymentSlots] and conformance [A];
  if (!lazy protocol witness table cache variable for type [SendPaymentSlots] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay19SiriPaymentsIntents16SendPaymentSlotsOGMd, &_sSay19SiriPaymentsIntents16SendPaymentSlotsOGMR);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type [SendPaymentSlots] and conformance [A]);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type [SendPaymentSlots] and conformance [A];
  if (!lazy protocol witness table cache variable for type [SendPaymentSlots] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay19SiriPaymentsIntents16SendPaymentSlotsOGMd, &_sSay19SiriPaymentsIntents16SendPaymentSlotsOGMR);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type [SendPaymentSlots] and conformance [A]);
    return WitnessTable;
  }

  return v2;
}

uint64_t Optional<A>.isNilOrEmpty.getter(uint64_t a1, uint64_t a2)
{

  if (a2)
  {
    v4 = String.isEmpty.getter();

    v5 = v4 & 1;
  }

  else
  {
    v5 = 2;
  }

  if (v5 == 2)
  {
    v3 = 1;
  }

  else
  {
    v3 = v5;
  }

  return v3 & 1;
}

uint64_t Optional<A>.emptyToNil.getter(uint64_t a1, uint64_t a2)
{
  if (Optional<A>.isNilOrEmpty.getter(a1, a2))
  {
    return 0;
  }

  return a1;
}

uint64_t Optional<A>.isNilOrEmpty.getter(uint64_t a1)
{

  if (a1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo16INPaymentAccountCGMd, &_sSaySo16INPaymentAccountCGMR);
    lazy protocol witness table accessor for type [INPaymentAccount] and conformance [A]();
    v3 = Collection.isEmpty.getter();

    v4 = v3 & 1;
  }

  else
  {
    v4 = 2;
  }

  if (v4 == 2)
  {
    v2 = 1;
  }

  else
  {
    v2 = v4;
  }

  return v2 & 1;
}

uint64_t Optional<A>.emptyToNil.getter(uint64_t a1)
{
  if (Optional<A>.isNilOrEmpty.getter(a1))
  {
    return 0;
  }

  return a1;
}

uint64_t SendPaymentUnsupportedValueStrategy.__allocating_init()()
{
  v31 = 0;
  v17 = 0;
  v7 = (*(*(type metadata accessor for CATOption() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0);
  v16 = &v6 - v7;
  v12 = type metadata accessor for Globals();
  v8 = v36;
  default argument 0 of Globals.init(contactResolver:deviceState:aceServiceInvoker:outputPublisher:)(v36);
  v9 = &v35;
  default argument 1 of Globals.init(contactResolver:deviceState:aceServiceInvoker:outputPublisher:)();
  v10 = &v34;
  default argument 2 of Globals.init(contactResolver:deviceState:aceServiceInvoker:outputPublisher:)();
  v11 = &v33;
  default argument 3 of Globals.init(contactResolver:deviceState:aceServiceInvoker:outputPublisher:)();
  v0 = Globals.__allocating_init(contactResolver:deviceState:aceServiceInvoker:outputPublisher:)(v8, v9, v10, v11);
  v25 = v37;
  v37[3] = v12;
  v37[4] = &protocol witness table for Globals;
  v37[0] = v0;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19SiriPaymentsIntents0B21ErrorTemplateProviderCySo19INSendPaymentIntentCSo0ghI8ResponseCGMd, &_s19SiriPaymentsIntents0B21ErrorTemplateProviderCySo19INSendPaymentIntentCSo0ghI8ResponseCGMR);
  v15 = v32;
  outlined init with copy of GlobalsProviding(v25, v32);
  type metadata accessor for PaymentsBaseCATs();
  default argument 0 of CATWrapper.init(options:globals:)();
  v14 = CATWrapper.__allocating_init(options:globals:)();
  v13 = type metadata accessor for INSendPaymentIntent();
  v1 = type metadata accessor for INSendPaymentIntentResponse();
  v2 = default argument 2 of PaymentsErrorTemplateProvider.init(globals:catFamily:searchForAccountsCATs:)(v13, v1);
  v24 = PaymentsErrorTemplateProvider.__allocating_init(globals:catFamily:searchForAccountsCATs:)(v15, v14, v2);
  v31 = v24;
  v23 = v30;
  outlined init with copy of GlobalsProviding(v25, v30);
  type metadata accessor for SendPaymentCATs();
  default argument 0 of CATWrapper.init(options:globals:)();
  v18 = CATWrapper.__allocating_init(options:globals:)();
  NSJSONWritingOptions.init(rawValue:)(v18);
  v19 = v29;
  v29[3] = &type metadata for CommonLabelsProvider;
  v29[4] = &protocol witness table for CommonLabelsProvider;
  v3 = type metadata accessor for SiriKitContactResolver();
  v20 = v28;
  v28[3] = v3;
  v28[4] = &protocol witness table for SiriKitContactResolver;
  __swift_allocate_boxed_opaque_existential_1(v28);
  SiriKitContactResolver.init()();

  v21 = &v27;
  v27 = v24;
  v4 = lazy protocol witness table accessor for type PaymentsErrorTemplateProvider<INSendPaymentIntent, INSendPaymentIntentResponse> and conformance PaymentsErrorTemplateProvider<A, B>();
  v26 = SendPaymentUnsupportedValueStrategy.__allocating_init<A>(globals:catFamily:commonLabelsProvider:contactResolver:errorProvider:)(v23, v18, v19, v20, v21, v22, v4);

  v37[5] = v26;

  __swift_destroy_boxed_opaque_existential_0(v25);

  return v26;
}

uint64_t SendPaymentUnsupportedValueStrategy.makeUnsupportedValueOutput(resolveRecord:)(uint64_t a1, uint64_t a2)
{
  *(v3 + 608) = v2;
  *(v3 + 600) = a2;
  *(v3 + 592) = a1;
  *(v3 + 488) = v3;
  *(v3 + 496) = 0;
  *(v3 + 504) = 0;
  *(v3 + 864) = 0;
  *(v3 + 512) = 0;
  *(v3 + 520) = 0;
  *(v3 + 472) = 0;
  *(v3 + 480) = 0;
  *(v3 + 528) = 0;
  *(v3 + 536) = 0;
  *(v3 + 544) = 0;
  *(v3 + 552) = 0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow25ParameterResolutionRecordVySo19INSendPaymentIntentCGMd, &_s11SiriKitFlow25ParameterResolutionRecordVySo19INSendPaymentIntentCGMR);
  *(v3 + 616) = v4;
  v14 = *(v4 - 8);
  *(v3 + 624) = v14;
  *(v3 + 632) = *(v14 + 64);
  *(v3 + 640) = swift_task_alloc();
  v15 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR) - 8) + 64);
  *(v3 + 648) = swift_task_alloc();
  *(v3 + 656) = swift_task_alloc();
  *(v3 + 664) = swift_task_alloc();
  v5 = *(*(type metadata accessor for Locale() - 8) + 64) + 15;
  *(v3 + 672) = swift_task_alloc();
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR) - 8) + 64) + 15;
  *(v3 + 680) = swift_task_alloc();
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow16TemplatingResultVSgMd, &_s11SiriKitFlow16TemplatingResultVSgMR) - 8) + 64) + 15;
  *(v3 + 688) = swift_task_alloc();
  v8 = type metadata accessor for TemplatingResult();
  *(v3 + 696) = v8;
  v16 = *(v8 - 8);
  *(v3 + 704) = v16;
  v17 = *(v16 + 64);
  *(v3 + 712) = swift_task_alloc();
  *(v3 + 720) = swift_task_alloc();
  v9 = type metadata accessor for ParameterIdentifier();
  *(v3 + 728) = v9;
  v18 = *(v9 - 8);
  *(v3 + 736) = v18;
  v10 = *(v18 + 64) + 15;
  *(v3 + 744) = swift_task_alloc();
  v11 = type metadata accessor for Logger();
  *(v3 + 752) = v11;
  v19 = *(v11 - 8);
  *(v3 + 760) = v19;
  v20 = *(v19 + 64);
  *(v3 + 768) = swift_task_alloc();
  *(v3 + 776) = swift_task_alloc();
  *(v3 + 496) = a2;
  *(v3 + 504) = v2;
  v12 = *(v3 + 488);

  return MEMORY[0x2822009F8](SendPaymentUnsupportedValueStrategy.makeUnsupportedValueOutput(resolveRecord:), 0);
}

uint64_t SendPaymentUnsupportedValueStrategy.makeUnsupportedValueOutput(resolveRecord:)()
{
  v88 = v0;
  v1 = v0[97];
  v77 = v0[95];
  v78 = v0[94];
  v0[61] = v0;
  v2 = Logger.payments.unsafeMutableAddressor();
  v79 = *(v77 + 16);
  v79(v1, v2, v78);
  v81 = Logger.logObject.getter();
  v80 = static os_log_type_t.debug.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  v82 = _allocateUninitializedArray<A>(_:)();
  if (os_log_type_enabled(v81, v80))
  {
    buf = static UnsafeMutablePointer.allocate(capacity:)();
    v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v73 = createStorage<A>(capacity:type:)(0);
    v74 = createStorage<A>(capacity:type:)(0);
    *(v76 + 560) = buf;
    *(v76 + 568) = v73;
    *(v76 + 576) = v74;
    serialize(_:at:)(0, (v76 + 560));
    serialize(_:at:)(0, (v76 + 560));
    *(v76 + 584) = v82;
    v75 = swift_task_alloc();
    v75[2] = v76 + 560;
    v75[3] = v76 + 568;
    v75[4] = v76 + 576;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
    lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
    Sequence.forEach(_:)();

    _os_log_impl(&dword_2686B1000, v81, v80, "SendPaymentUnsupportedValueStrategy makeUnsupportedValueOutput", buf, 2u);
    destroyStorage<A>(_:count:)(v73, 0, v71);
    destroyStorage<A>(_:count:)(v74, 0, MEMORY[0x277D84F70] + 8);
    MEMORY[0x26D620BD0](buf, MEMORY[0x277D84B78]);
  }

  v62 = *(v76 + 776);
  v63 = *(v76 + 752);
  v67 = *(v76 + 744);
  v68 = *(v76 + 728);
  v65 = *(v76 + 616);
  v3 = *(v76 + 600);
  v61 = *(v76 + 760);
  v66 = *(v76 + 736);
  MEMORY[0x277D82BD8](v81);
  v64 = *(v61 + 8);
  v64(v62, v63);
  ParameterResolutionRecord.parameter.getter();
  rawValue._countAndFlagsBits = ParameterIdentifier.name.getter();
  rawValue._object = v4;
  v69 = *(v66 + 8);
  v69(v67, v68);
  v5.value = SendPaymentSlots.init(rawValue:)(rawValue).value;
  *(v76 + 865) = v5;
  if (v5.value == SiriPaymentsIntents_SendPaymentSlots_unknownDefault)
  {
    v11 = *(v76 + 768);
    v42 = *(v76 + 752);
    v47 = *(v76 + 640);
    v45 = *(v76 + 632);
    v48 = *(v76 + 616);
    v44 = *(v76 + 600);
    v43 = *(v76 + 624);
    v12 = Logger.payments.unsafeMutableAddressor();
    v79(v11, v12, v42);
    (*(v43 + 16))(v47, v44, v48);
    v46 = (*(v43 + 80) + 16) & ~*(v43 + 80);
    v49 = swift_allocObject();
    (*(v43 + 32))(v49 + v46, v47, v48);
    oslog = Logger.logObject.getter();
    v56 = static os_log_type_t.error.getter();
    v51 = swift_allocObject();
    *(v51 + 16) = 32;
    v52 = swift_allocObject();
    *(v52 + 16) = 8;
    v50 = swift_allocObject();
    *(v50 + 16) = partial apply for implicit closure #1 in SendPaymentUnsupportedValueStrategy.makeUnsupportedValueOutput(resolveRecord:);
    *(v50 + 24) = v49;
    v53 = swift_allocObject();
    *(v53 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
    *(v53 + 24) = v50;
    _allocateUninitializedArray<A>(_:)();
    v54 = v13;

    *v54 = partial apply for closure #1 in OSLogArguments.append(_:);
    v54[1] = v51;

    v54[2] = partial apply for closure #1 in OSLogArguments.append(_:);
    v54[3] = v52;

    v54[4] = partial apply for closure #1 in OSLogArguments.append(_:);
    v54[5] = v53;
    _finalizeUninitializedArray<A>(_:)();

    if (os_log_type_enabled(oslog, v56))
    {
      v39 = static UnsafeMutablePointer.allocate(capacity:)();
      v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v40 = createStorage<A>(capacity:type:)(0);
      v41 = createStorage<A>(capacity:type:)(1);
      v83 = v39;
      v84 = v40;
      v85 = v41;
      serialize(_:at:)(2, &v83);
      serialize(_:at:)(1, &v83);
      v86 = partial apply for closure #1 in OSLogArguments.append(_:);
      v87 = v51;
      closure #1 in osLogInternal(_:log:type:)(&v86, &v83, &v84, &v85);
      v86 = partial apply for closure #1 in OSLogArguments.append(_:);
      v87 = v52;
      closure #1 in osLogInternal(_:log:type:)(&v86, &v83, &v84, &v85);
      v86 = partial apply for closure #1 in OSLogArguments.append(_:);
      v87 = v53;
      closure #1 in osLogInternal(_:log:type:)(&v86, &v83, &v84, &v85);
      _os_log_impl(&dword_2686B1000, oslog, v56, "#SendPaymentUnsupportedValueStrategy unknown parameter: %s", v39, 0xCu);
      destroyStorage<A>(_:count:)(v40, 0, v38);
      destroyStorage<A>(_:count:)(v41, 1, MEMORY[0x277D84F70] + 8);
      MEMORY[0x26D620BD0](v39, MEMORY[0x277D84B78]);
    }

    else
    {
    }

    v20 = *(v76 + 768);
    v21 = *(v76 + 752);
    v23 = *(v76 + 744);
    v24 = *(v76 + 728);
    v22 = *(v76 + 616);
    v14 = *(v76 + 600);
    MEMORY[0x277D82BD8](oslog);
    v64(v20, v21);
    ParameterResolutionRecord.parameter.getter();
    v26 = ParameterIdentifier.name.getter();
    v25 = v15;
    v69(v23, v24);
    lazy protocol witness table accessor for type PaymentsError and conformance PaymentsError();
    swift_allocError();
    *v16 = v26;
    *(v16 + 8) = v25;
    *(v16 + 16) = 0;
    *(v16 + 24) = 0;
    *(v16 + 32) = 0;
    *(v16 + 40) = 0;
    *(v16 + 48) = 14;
    swift_willThrow();
    v17 = *(v76 + 776);
    v27 = *(v76 + 768);
    v28 = *(v76 + 744);
    v29 = *(v76 + 720);
    v30 = *(v76 + 712);
    v31 = *(v76 + 688);
    v32 = *(v76 + 680);
    v33 = *(v76 + 672);
    v34 = *(v76 + 664);
    v35 = *(v76 + 656);
    v36 = *(v76 + 648);
    v37 = *(v76 + 640);

    v18 = *(*(v76 + 488) + 8);
    v19 = *(v76 + 488);

    return v18();
  }

  else
  {
    v57 = *(v76 + 608);
    *(v76 + 864) = v5;

    outlined init with copy of GlobalsProviding(v57 + 144, v76 + 16);

    v58 = *(v76 + 40);
    v59 = *(v76 + 48);
    __swift_project_boxed_opaque_existential_1((v76 + 16), v58);
    v60 = (*(v59 + 56) + **(v59 + 56));
    v6 = *(*(v59 + 56) + 4);
    v7 = swift_task_alloc();
    *(v76 + 784) = v7;
    *v7 = *(v76 + 488);
    v7[1] = SendPaymentUnsupportedValueStrategy.makeUnsupportedValueOutput(resolveRecord:);
    v8 = *(v76 + 688);
    v9 = *(v76 + 600);

    return v60(v8, v9, v58, v59);
  }
}

{
  v8 = *v1;
  v7 = (v8 + 488);
  v2 = *(*v1 + 784);
  *(v8 + 488) = *v1;
  *(v8 + 792) = v0;

  if (v0)
  {
    v5 = *v7;
    v4 = SendPaymentUnsupportedValueStrategy.makeUnsupportedValueOutput(resolveRecord:);
  }

  else
  {
    v3 = *v7;
    v4 = SendPaymentUnsupportedValueStrategy.makeUnsupportedValueOutput(resolveRecord:);
  }

  return MEMORY[0x2822009F8](v4, 0);
}

{
  v1 = v0[88];
  v2 = v0[87];
  v3 = v0[86];
  v0[61] = v0;
  if ((*(v1 + 48))(v3, 1, v2) == 1)
  {
    v47 = *(v69 + 616);
    v45 = *(v69 + 600);
    outlined destroy of TemplatingResult?(*(v69 + 688));
    __swift_destroy_boxed_opaque_existential_0((v69 + 16));
    ParameterResolutionRecord.app.getter();
    v46 = App.sirikitApp.getter();
    *(v69 + 800) = v46;
    *(v69 + 512) = v46;

    v48 = ParameterResolutionRecord.intent.getter();
    *(v69 + 808) = v48;
    *(v69 + 520) = v48;
    v49 = [v48 note];
    if (v49)
    {
      v41 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v42 = v10;
      MEMORY[0x277D82BD8](v49);
      v43 = v41;
      v44 = v42;
    }

    else
    {
      v43 = 0;
      v44 = 0;
    }

    *(v69 + 816) = v44;
    *(v69 + 472) = v43;
    *(v69 + 480) = v44;
    type metadata accessor for PaymentsDialogConcept.Builder();
    v39 = PaymentsDialogConcept.Builder.__allocating_init()();
    *(v69 + 824) = v39;
    *(v69 + 528) = v39;
    v40 = [v48 payee];
    if (v40)
    {
      v36 = *(v69 + 672);
      v32 = *(v69 + 608);
      *(v69 + 552) = v40;
      type metadata accessor for DialogPerson();
      MEMORY[0x277D82BE0](v40);

      outlined init with copy of GlobalsProviding(v32 + 104, v69 + 176);

      v34 = *(v69 + 200);
      v33 = *(v69 + 208);
      __swift_project_boxed_opaque_existential_1((v69 + 176), v34);
      (*(v33 + 16))(v34);
      v35 = *(v69 + 248);
      __swift_project_boxed_opaque_existential_1((v69 + 216), *(v69 + 240));
      dispatch thunk of DeviceState.siriLocale.getter();
      v38 = DialogPerson.__allocating_init(namedPerson:locale:useConversationalName:)();
      __swift_destroy_boxed_opaque_existential_0((v69 + 216));
      __swift_destroy_boxed_opaque_existential_0((v69 + 176));

      v37 = (v39 + OBJC_IVAR____TtCC19SiriPaymentsIntents21PaymentsDialogConcept7Builder_payeeName);
      swift_beginAccess();
      v11 = *v37;
      *v37 = v38;

      swift_endAccess();

      MEMORY[0x277D82BD8](v40);
    }

    v31 = [v48 currencyAmount];
    if (v31)
    {
      *(v69 + 544) = v31;
      type metadata accessor for DialogCurrency.Builder();
      DialogCurrency.Builder.__allocating_init()();
      v30 = [v31 amount];
      if (v30)
      {
        [v30 doubleValue];
        MEMORY[0x277D82BD8](v30);
      }

      dispatch thunk of DialogAbstractMeasurement.Builder.withValue(_:)();

      v29 = dispatch thunk of DialogAbstractMeasurement.Builder.build()();

      swift_beginAccess();
      v12 = *(v39 + 16);
      *(v39 + 16) = v29;

      swift_endAccess();

      MEMORY[0x277D82BD8](v31);
    }

    if (v44)
    {
      v28 = *(v69 + 664);
      String.toSpeakableString.getter();

      v13 = type metadata accessor for SpeakableString();
      (*(*(v13 - 8) + 56))(v28, 0, 1);
    }

    else
    {
      v20 = *(v69 + 664);
      v19 = type metadata accessor for SpeakableString();
      (*(*(v19 - 8) + 56))(v20, 1);
    }

    v25 = *(v69 + 865);
    v23 = *(v69 + 664);
    v21 = *(v69 + 656);
    v26 = *(v69 + 648);
    v24 = *(v69 + 608);
    outlined init with copy of SpeakableString?(v23, v21);
    v22 = (v39 + OBJC_IVAR____TtCC19SiriPaymentsIntents21PaymentsDialogConcept7Builder_memo);
    swift_beginAccess();
    outlined assign with take of SpeakableString?(v21, v22);
    swift_endAccess();
    outlined destroy of SpeakableString?(v23);

    swift_beginAccess();
    v14 = *(v39 + 24);
    *(v39 + 24) = v46;

    swift_endAccess();

    v27 = PaymentsDialogConcept.Builder.build()();
    *(v69 + 832) = v27;
    *(v69 + 536) = v27;

    *(v69 + 840) = *(v24 + 16);

    SendPaymentSlots.rawValue.getter(v25);
    String.toSpeakableString.getter();

    v15 = type metadata accessor for SpeakableString();
    (*(*(v15 - 8) + 56))(v26, 0, 1);

    v16 = swift_task_alloc();
    *(v69 + 848) = v16;
    *v16 = *(v69 + 488);
    v16[1] = SendPaymentUnsupportedValueStrategy.makeUnsupportedValueOutput(resolveRecord:);
    v17 = *(v69 + 712);
    v18 = *(v69 + 648);

    return SendPaymentCATs.unsupportedSlotValue(slot:paymentsConcept:)(v17, v18, v27);
  }

  else
  {
    v56 = *(v69 + 720);
    v57 = *(v69 + 696);
    v4 = *(v69 + 688);
    v54 = *(v69 + 680);
    v52 = *(v69 + 608);
    v53 = *(v69 + 592);
    v55 = *(v69 + 704);
    (*(v55 + 32))();
    __swift_destroy_boxed_opaque_existential_0((v69 + 16));

    outlined init with copy of GlobalsProviding(v52 + 104, v69 + 256);

    v51 = *(v69 + 280);
    v50 = *(v69 + 288);
    __swift_project_boxed_opaque_existential_1((v69 + 256), v51);
    (*(v50 + 16))(v51);

    BaseStrategy.ttsEnabled.getter();

    v5 = type metadata accessor for NLContextUpdate();
    (*(*(v5 - 8) + 56))(v54, 1);
    *(v69 + 336) = 0;
    *(v69 + 344) = 0;
    *(v69 + 352) = 0;
    *(v69 + 360) = 0;
    *(v69 + 368) = 0;
    default argument 3 of static AceOutputHelper.makeErrorOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)();
    default argument 4 of static AceOutputHelper.makeErrorOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)();
    default argument 7 of static AceOutputHelper.makeErrorOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)();
    v53[3] = type metadata accessor for AceOutput();
    v53[4] = MEMORY[0x277D5C1D8];
    __swift_allocate_boxed_opaque_existential_1(v53);
    static AceOutputHelper.makeCompletionViewOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)();

    outlined destroy of FlowActivity?((v69 + 336));
    outlined destroy of NLContextUpdate?(v54);
    __swift_destroy_boxed_opaque_existential_0((v69 + 296));
    __swift_destroy_boxed_opaque_existential_0((v69 + 256));
    (*(v55 + 8))(v56, v57);
    v6 = *(v69 + 776);
    v58 = *(v69 + 768);
    v59 = *(v69 + 744);
    v60 = *(v69 + 720);
    v61 = *(v69 + 712);
    v62 = *(v69 + 688);
    v63 = *(v69 + 680);
    v64 = *(v69 + 672);
    v65 = *(v69 + 664);
    v66 = *(v69 + 656);
    v67 = *(v69 + 648);
    v68 = *(v69 + 640);

    v7 = *(*(v69 + 488) + 8);
    v8 = *(v69 + 488);

    return v7();
  }
}

{
  v12 = *v1;
  v10 = (*v1 + 16);
  v11 = (v12 + 488);
  v2 = *(*v1 + 848);
  *(v12 + 488) = *v1;
  *(v12 + 856) = v0;

  if (v0)
  {
    v6 = *v11;
    v5 = SendPaymentUnsupportedValueStrategy.makeUnsupportedValueOutput(resolveRecord:);
  }

  else
  {
    v9 = v10[103];
    v3 = v10[102];
    v8 = v10[79];

    outlined destroy of SpeakableString?(v8);

    v4 = *v11;
    v5 = SendPaymentUnsupportedValueStrategy.makeUnsupportedValueOutput(resolveRecord:);
  }

  return MEMORY[0x2822009F8](v5, 0);
}

{
  v14 = v0[104];
  v15 = v0[103];
  v16 = v0[102];
  v17 = v0[101];
  v18 = v0[100];
  v12 = v0[89];
  v11 = v0[88];
  v13 = v0[87];
  v10 = v0[85];
  v8 = v0[76];
  v9 = v0[74];
  v0[61] = v0;

  outlined init with copy of GlobalsProviding(v8 + 104, (v0 + 7));

  v7 = v0[10];
  v6 = v0[11];
  __swift_project_boxed_opaque_existential_1(v0 + 7, v7);
  (*(v6 + 16))(v7);

  BaseStrategy.ttsEnabled.getter();

  v1 = type metadata accessor for NLContextUpdate();
  (*(*(v1 - 8) + 56))(v10, 1);
  v0[17] = 0;
  v0[18] = 0;
  v0[19] = 0;
  v0[20] = 0;
  v0[21] = 0;
  default argument 3 of static AceOutputHelper.makeErrorOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)();
  default argument 4 of static AceOutputHelper.makeErrorOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)();
  default argument 7 of static AceOutputHelper.makeErrorOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)();
  v9[3] = type metadata accessor for AceOutput();
  v9[4] = MEMORY[0x277D5C1D8];
  __swift_allocate_boxed_opaque_existential_1(v9);
  static AceOutputHelper.makeCompletionViewOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)();

  outlined destroy of FlowActivity?(v0 + 17);
  outlined destroy of NLContextUpdate?(v10);
  __swift_destroy_boxed_opaque_existential_0(v0 + 12);
  __swift_destroy_boxed_opaque_existential_0(v0 + 7);
  (*(v11 + 8))(v12, v13);

  MEMORY[0x277D82BD8](v17);

  v2 = v0[97];
  v19 = v0[96];
  v20 = v0[93];
  v21 = v0[90];
  v22 = v0[89];
  v23 = v0[86];
  v24 = v0[85];
  v25 = v0[84];
  v26 = v0[83];
  v27 = v0[82];
  v28 = v0[81];
  v29 = v0[80];

  v3 = *(v0[61] + 8);
  v4 = v0[61];

  return v3();
}

{
  v0[61] = v0;
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  v1 = v0[99];
  v2 = v0[97];
  v6 = v0[96];
  v7 = v0[93];
  v8 = v0[90];
  v9 = v0[89];
  v10 = v0[86];
  v11 = v0[85];
  v12 = v0[84];
  v13 = v0[83];
  v14 = v0[82];
  v15 = v0[81];
  v16 = v0[80];

  v3 = *(v0[61] + 8);
  v4 = v0[61];

  return v3();
}

{
  v7 = v0[105];
  v8 = v0[104];
  v9 = v0[103];
  v10 = v0[102];
  v11 = v0[101];
  v12 = v0[100];
  v6 = v0[81];
  v0[61] = v0;

  outlined destroy of SpeakableString?(v6);

  MEMORY[0x277D82BD8](v11);

  v1 = v0[107];
  v2 = v0[97];
  v13 = v0[96];
  v14 = v0[93];
  v15 = v0[90];
  v16 = v0[89];
  v17 = v0[86];
  v18 = v0[85];
  v19 = v0[84];
  v20 = v0[83];
  v21 = v0[82];
  v22 = v0[81];
  v23 = v0[80];

  v3 = *(v0[61] + 8);
  v4 = v0[61];

  return v3();
}