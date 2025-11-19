id VoiceFeedbackAnnouncementResourceAnchor.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for VoiceFeedbackAnnouncementResourceAnchor();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

WorkoutAnnouncements::VoiceFeedbackAnnouncementFlow __swiftcall VoiceFeedbackAnnouncementFlow.init(data:)(Swift::OpaquePointer_optional data)
{
  rawValue = data.value._rawValue;
  v3 = v1;

  *v3 = rawValue;
  result.data.value._rawValue = v4;
  result.data.is_nil = v5;
  return result;
}

uint64_t VoiceFeedbackAnnouncementFlow.execute(completion:)()
{
  v2 = *v0;
  lazy protocol witness table accessor for type VoiceFeedbackAnnouncementFlow and conformance VoiceFeedbackAnnouncementFlow();
  return Flow.deferToExecuteAsync(_:)();
}

unint64_t lazy protocol witness table accessor for type VoiceFeedbackAnnouncementFlow and conformance VoiceFeedbackAnnouncementFlow()
{
  result = lazy protocol witness table cache variable for type VoiceFeedbackAnnouncementFlow and conformance VoiceFeedbackAnnouncementFlow;
  if (!lazy protocol witness table cache variable for type VoiceFeedbackAnnouncementFlow and conformance VoiceFeedbackAnnouncementFlow)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type VoiceFeedbackAnnouncementFlow and conformance VoiceFeedbackAnnouncementFlow);
  }

  return result;
}

uint64_t VoiceFeedbackAnnouncementFlow.execute()(uint64_t a1)
{
  v2[38] = a1;
  v3 = type metadata accessor for AceOutput();
  v2[39] = v3;
  v4 = *(v3 - 8);
  v2[40] = v4;
  v2[41] = *(v4 + 64);
  v2[42] = swift_task_alloc();
  v2[43] = swift_task_alloc();
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR) - 8) + 64) + 15;
  v2[44] = swift_task_alloc();
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleV12LanguageCodeVSgMd, &_s10Foundation6LocaleV12LanguageCodeVSgMR) - 8) + 64) + 15;
  v2[45] = swift_task_alloc();
  v2[46] = swift_task_alloc();
  v7 = type metadata accessor for Locale.Language.Components();
  v2[47] = v7;
  v8 = *(v7 - 8);
  v2[48] = v8;
  v9 = *(v8 + 64) + 15;
  v2[49] = swift_task_alloc();
  v2[50] = swift_task_alloc();
  v10 = type metadata accessor for Locale.LanguageCode();
  v2[51] = v10;
  v11 = *(v10 - 8);
  v2[52] = v11;
  v12 = *(v11 + 64) + 15;
  v2[53] = swift_task_alloc();
  v2[54] = swift_task_alloc();
  v2[55] = swift_task_alloc();
  v2[56] = swift_task_alloc();
  v2[57] = swift_task_alloc();
  v13 = type metadata accessor for Locale.Components();
  v2[58] = v13;
  v14 = *(v13 - 8);
  v2[59] = v14;
  v15 = *(v14 + 64) + 15;
  v2[60] = swift_task_alloc();
  v2[61] = swift_task_alloc();
  v16 = type metadata accessor for UUID();
  v2[62] = v16;
  v17 = *(v16 - 8);
  v2[63] = v17;
  v18 = *(v17 + 64) + 15;
  v2[64] = swift_task_alloc();
  v19 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow9AceOutputVSgMd, &_s11SiriKitFlow9AceOutputVSgMR) - 8) + 64) + 15;
  v2[65] = swift_task_alloc();
  v2[66] = swift_task_alloc();
  v2[67] = swift_task_alloc();
  v20 = type metadata accessor for Logger();
  v2[68] = v20;
  v21 = *(v20 - 8);
  v2[69] = v21;
  v22 = *(v21 + 64) + 15;
  v2[70] = swift_task_alloc();
  v2[71] = swift_task_alloc();
  v2[72] = swift_task_alloc();
  v2[73] = swift_task_alloc();
  v2[74] = swift_task_alloc();
  v2[75] = swift_task_alloc();
  v2[76] = *v1;

  return MEMORY[0x2822009F8](VoiceFeedbackAnnouncementFlow.execute(), 0, 0);
}

uint64_t VoiceFeedbackAnnouncementFlow.execute()()
{
  v285 = v0;
  v1 = v0;
  v2 = v0[76];
  if (v2)
  {
    v3 = objc_opt_self();
    specialized _dictionaryUpCast<A, B, C, D>(_:)(v2);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v5 = [v3 workoutVoiceFeedbackFromPayload_];
    v1[77] = v5;

    if (v5)
    {
      v6 = *MEMORY[0x277D5C260];
      v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      if (*(v2 + 16))
      {
        v9 = specialized __RawDictionaryStorage.find<A>(_:)(v7, v8);
        v11 = v10;

        if (v11)
        {
          outlined init with copy of Any(*(v2 + 56) + 32 * v9, (v1 + 12));
          if (swift_dynamicCast())
          {
            v12 = v1[34];
            if (v12)
            {
              v13 = v1[75];
              v14 = v1[69];
              v15 = v1[68];
              v16 = Logger.workout.unsafeMutableAddressor();
              swift_beginAccess();
              (*(v14 + 16))(v13, v16, v15);
              v17 = Logger.logObject.getter();
              v18 = static os_log_type_t.error.getter();
              if (os_log_type_enabled(v17, v18))
              {
                v19 = swift_slowAlloc();
                *v19 = 134217984;
                *(v19 + 4) = v12;
                _os_log_impl(&dword_274C46000, v17, v18, "synchronousBurstIndex = %ld. Sending Ace commands to play in sequence.", v19, 0xCu);
                MEMORY[0x277C67550](v19, -1, -1);
              }

              v20 = v1[75];
              v21 = v1[69];
              v22 = v1[68];

              (*(v21 + 8))(v20, v22);
            }

            v23 = v1[74];
            v24 = v1[69];
            v25 = v1[68];
            v26 = Logger.workout.unsafeMutableAddressor();
            swift_beginAccess();
            v267 = v26;
            v264 = *(v24 + 16);
            v264(v23, v26, v25);
            v27 = v5;
            v28 = Logger.logObject.getter();
            v29 = static os_log_type_t.debug.getter();

            v30 = os_log_type_enabled(v28, v29);
            v31 = v1[74];
            v32 = v1[69];
            v33 = v1[68];
            if (v30)
            {
              v34 = swift_slowAlloc();
              v258 = swift_slowAlloc();
              v284[0] = v258;
              *v34 = 136315138;
              v278 = v31;
              v35 = v27;
              v36 = v1;
              v37 = [v35 description];
              v254 = v33;
              v38 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v39 = v27;
              v41 = v40;

              v1 = v36;
              v42 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v38, v41, v284);
              v27 = v39;

              *(v34 + 4) = v42;
              _os_log_impl(&dword_274C46000, v28, v29, "Trying to play workout voice feedback: %s", v34, 0xCu);
              __swift_destroy_boxed_opaque_existential_0Tm(v258);
              MEMORY[0x277C67550](v258, -1, -1);
              MEMORY[0x277C67550](v34, -1, -1);

              v43 = *(v32 + 8);
              v43(v278, v254);
            }

            else
            {

              v43 = *(v32 + 8);
              v43(v31, v33);
            }

            v92 = v1[67];
            v93 = v1[39];
            v94 = v1[40];
            v95 = *(v94 + 56);
            v1[78] = v95;
            v1[79] = (v94 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
            v95(v92, 1, 1, v93);
            v96 = [v27 feedbackText];
            if (!v96)
            {
              v112 = [v27 feedbackAudioData];
              if (v112)
              {
                v269 = v1[67];
                v113 = v1[66];
                logb = v1[39];
                v281 = v1[76];
                v114 = v112;
                v115 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
                v116 = v27;
                v118 = v117;

                v1[85] = v115;
                v1[86] = v118;
                v119 = [objc_allocWithZone(MEMORY[0x277D47A08]) init];
                v1[87] = v119;
                v120 = Data._bridgeToObjectiveC()().super.isa;
                [v119 setAudioBuffer_];

                type metadata accessor for SAUIAudioDescription(0, &lazy cache variable for type metadata for SAUIAudioDescription, 0x277D47A10);
                [v116 feedbackAudioASBD];
                v121 = SAUIAudioDescription.init(asbd:)((v1 + 2));
                [v119 setDecoderStreamDescription_];

                v122 = [objc_allocWithZone(MEMORY[0x277D47AE0]) init];
                v1[88] = v122;
                type metadata accessor for SAUIAudioDescription(0, &lazy cache variable for type metadata for NSNumber, 0x277CCABB0);
                v123 = NSNumber.init(floatLiteral:)(1.0).super.super.isa;
                [v122 setVolume_];

                [v122 setItemData_];
                __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
                v124 = swift_allocObject();
                *(v124 + 16) = xmmword_274C6CC60;
                *(v124 + 32) = v122;
                memset(v284, 0, sizeof(v284));
                v125 = v122;
                AceOutput.init(commands:flowActivity:)();
                outlined destroy of AceOutput?(v269, &_s11SiriKitFlow9AceOutputVSgMd, &_s11SiriKitFlow9AceOutputVSgMR);
                v95(v113, 0, 1, logb);
                outlined init with take of AceOutput?(v113, v269, &_s11SiriKitFlow9AceOutputVSgMd, &_s11SiriKitFlow9AceOutputVSgMR);
                v1[36] = v281;
                v126 = swift_task_alloc();
                v1[89] = v126;
                *v126 = v1;
                v126[1] = VoiceFeedbackAnnouncementFlow.execute();
                goto LABEL_32;
              }

              goto LABEL_45;
            }

            v97 = v96;
            v99 = v1[63];
            v98 = v1[64];
            v280 = v27;
            v100 = v1[62];
            v101 = [objc_allocWithZone(MEMORY[0x277D47A00]) init];
            v1[80] = v101;
            v102 = v101;
            [v102 setSpeakableText_];

            v103 = v102;
            UUID.init()();
            v104 = UUID.uuidString.getter();
            v106 = v105;
            v107 = *(v99 + 8);
            v1[81] = v107;
            v1[82] = (v99 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
            v107(v98, v100);
            v108 = MEMORY[0x277C66D70](v104, v106);

            [v103 setAceId_];

            type metadata accessor for SAUIAudioDescription(0, &lazy cache variable for type metadata for NSNumber, 0x277CCABB0);
            v109 = NSNumber.init(BOOLeanLiteral:)(0).super.super.isa;
            [v103 setListenAfterSpeaking_];

            [v103 setCanUseServerTTS_];
            v110 = [v280 voiceName];
            v1[83] = v110;
            if (v110)
            {
              v1[37] = v1[76];
              v111 = swift_task_alloc();
              v1[84] = v111;
              *v111 = v1;
              v111[1] = VoiceFeedbackAnnouncementFlow.execute();
LABEL_32:

              return VoiceFeedbackAnnouncementFlow.playTone()();
            }

            v127 = [v280 voiceLanguage];
            if (v127)
            {
              v128 = v127;
              static String._unconditionallyBridgeFromObjectiveC(_:)();

              v129 = [objc_opt_self() sharedPreferences];
              v130 = [v129 outputVoice];

              if (v130 && (v131 = [v130 languageCode], v130, v131))
              {
                v248 = v43;
                v132 = v1[61];
                v133 = v1[52];
                v260 = v1[51];
                v134 = v1[50];
                v135 = v1[48];
                v252 = v1[60];
                v256 = v1[47];
                v239 = v1;
                v136 = v1[46];
                static String._unconditionallyBridgeFromObjectiveC(_:)();

                Locale.Components.init(identifier:)();
                Locale.Components.init(identifier:)();
                Locale.Components.languageComponents.getter();
                Locale.Language.Components.languageCode.getter();
                v137 = *(v135 + 8);
                v137(v134, v256);
                v138 = *(v133 + 48);
                if (v138(v136, 1, v260) == 1)
                {
                  v1 = v239;
                  v139 = v239[61];
                  v140 = v239[58];
                  v141 = v239[46];
                  v142 = *(v239[59] + 8);
                  v142(v239[60], v140);
                  v142(v139, v140);
                  v143 = v141;
                }

                else
                {
                  v144 = v239[60];
                  v145 = v239[51];
                  v146 = v239[49];
                  v147 = v239[47];
                  v148 = v239[45];
                  v149 = *(v239[52] + 32);
                  v149(v239[57], v239[46], v145);
                  Locale.Components.languageComponents.getter();
                  Locale.Language.Components.languageCode.getter();
                  v137(v146, v147);
                  if (v138(v148, 1, v145) != 1)
                  {
                    v190 = v239[57];
                    v149(v239[56], v239[45], v239[51]);
                    lazy protocol witness table accessor for type Locale.LanguageCode and conformance Locale.LanguageCode();
                    if ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0)
                    {
                      v199 = v239[73];
                      v200 = v239[68];
                      v202 = v239[56];
                      v201 = v239[57];
                      v203 = v239[55];
                      v262 = v239[54];
                      v204 = v239[51];
                      v205 = v239[52];

                      swift_beginAccess();
                      v264(v199, v267, v200);
                      v206 = *(v205 + 16);
                      v206(v203, v201, v204);
                      v271 = v206;
                      v206(v262, v202, v204);
                      v207 = Logger.logObject.getter();
                      v208 = static os_log_type_t.error.getter();
                      log = v207;
                      v209 = os_log_type_enabled(v207, v208);
                      v210 = v239[73];
                      v211 = v239[68];
                      v212 = v239[55];
                      v263 = v239[54];
                      if (v209)
                      {
                        v257 = v239[68];
                        v213 = v239[52];
                        v214 = v239[53];
                        v215 = v239[51];
                        v253 = v239[69];
                        v216 = swift_slowAlloc();
                        v246 = swift_slowAlloc();
                        v284[0] = v246;
                        *v216 = 136315394;
                        v271(v214, v212, v215);
                        v244 = v208;
                        v217 = String.init<A>(describing:)();
                        v250 = v210;
                        v219 = v218;
                        v220 = *(v213 + 8);
                        v220(v212, v215);
                        v221 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v217, v219, v284);

                        *(v216 + 4) = v221;
                        *(v216 + 12) = 2080;
                        v271(v214, v263, v215);
                        v222 = String.init<A>(describing:)();
                        v224 = v223;
                        v272 = v220;
                        v220(v263, v215);
                        v225 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v222, v224, v284);

                        *(v216 + 14) = v225;
                        _os_log_impl(&dword_274C46000, log, v244, "Message language code does not match Siri voice language code %s vs. %s; not playing", v216, 0x16u);
                        swift_arrayDestroy();
                        MEMORY[0x277C67550](v246, -1, -1);
                        MEMORY[0x277C67550](v216, -1, -1);

                        v248(v250, v257);
                        v1 = v239;
                      }

                      else
                      {
                        v1 = v239;
                        v226 = v239[51];
                        v227 = v239[52];

                        v228 = *(v227 + 8);
                        v228(v263, v226);
                        v272 = v228;
                        v228(v212, v226);
                        v248(v210, v211);
                      }

                      v229 = v1[67];
                      v230 = v1[60];
                      v231 = v1[61];
                      v232 = v1[58];
                      v233 = v1[59];
                      v235 = v1[56];
                      v234 = v1[57];
                      v236 = v1[51];
                      v237 = v1[38];
                      static ExecuteResponse.complete()();

                      v272(v235, v236);
                      v272(v234, v236);
                      v238 = *(v233 + 8);
                      v238(v230, v232);
                      v238(v231, v232);
                      outlined destroy of AceOutput?(v229, &_s11SiriKitFlow9AceOutputVSgMd, &_s11SiriKitFlow9AceOutputVSgMR);
                      goto LABEL_23;
                    }

                    v1 = v239;
                    v192 = v239[60];
                    v191 = v239[61];
                    v193 = v239[58];
                    v194 = v239[59];
                    v195 = v239[57];
                    v196 = v239[51];
                    v197 = *(v239[52] + 8);
                    v197(v239[56], v196);
                    v197(v195, v196);
                    v198 = *(v194 + 8);
                    v198(v192, v193);
                    v198(v191, v193);
                    goto LABEL_44;
                  }

                  v1 = v239;
                  v151 = v239[60];
                  v150 = v239[61];
                  v152 = v239[58];
                  v153 = v239[59];
                  v154 = v239[45];
                  (*(v239[52] + 8))(v239[57], v239[51]);
                  v155 = *(v153 + 8);
                  v155(v151, v152);
                  v155(v150, v152);
                  v143 = v154;
                }

                outlined destroy of AceOutput?(v143, &_s10Foundation6LocaleV12LanguageCodeVSgMd, &_s10Foundation6LocaleV12LanguageCodeVSgMR);
              }

              else
              {
              }
            }

LABEL_44:
            v156 = v1[82];
            v157 = v1[81];
            logc = v1[78];
            v282 = v1[79];
            v261 = v1[80];
            v266 = v1[67];
            v158 = v1[66];
            v159 = v1[64];
            v160 = v1[62];
            v161 = v1[44];
            v270 = v1[39];
            v162 = [objc_allocWithZone(MEMORY[0x277D479E8]) init];
            UUID.init()();
            v163 = UUID.uuidString.getter();
            v165 = v164;
            v157(v159, v160);
            v166 = MEMORY[0x277C66D70](v163, v165);

            [v162 setAceId_];

            [v162 setDialogPhase_];
            [v162 setResponseMode_];
            __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
            v167 = swift_allocObject();
            *(v167 + 16) = xmmword_274C6CC60;
            *(v167 + 32) = v261;
            type metadata accessor for SAUIAudioDescription(0, &lazy cache variable for type metadata for SAAceView, 0x277D47140);
            v168 = Array._bridgeToObjectiveC()().super.isa;

            [v162 setViews_];

            [v162 setImmersiveExperience_];
            v169 = type metadata accessor for NLContextUpdate();
            (*(*(v169 - 8) + 56))(v161, 1, 1, v169);
            v1[11] = 0;
            *(v1 + 9) = 0u;
            *(v1 + 7) = 0u;
            MEMORY[0x277C668C0](v162, v161, MEMORY[0x277D84F90], v1 + 7);

            outlined destroy of AceOutput?((v1 + 7), &_s11SiriKitFlow0C8Activity_pSgMd, &_s11SiriKitFlow0C8Activity_pSgMR);
            outlined destroy of AceOutput?(v161, &_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
            outlined destroy of AceOutput?(v266, &_s11SiriKitFlow9AceOutputVSgMd, &_s11SiriKitFlow9AceOutputVSgMR);
            (logc)(v158, 0, 1, v270);
            outlined init with take of AceOutput?(v158, v266, &_s11SiriKitFlow9AceOutputVSgMd, &_s11SiriKitFlow9AceOutputVSgMR);
LABEL_45:
            v170 = v1[65];
            v172 = v1[39];
            v171 = v1[40];
            outlined init with copy of AceOutput?(v1[67], v170);
            v173 = (*(v171 + 48))(v170, 1, v172);
            v174 = v1[77];
            v175 = v1[67];
            v176 = v1[65];
            if (v173 == 1)
            {
              v177 = v1[38];
              outlined destroy of AceOutput?(v1[65], &_s11SiriKitFlow9AceOutputVSgMd, &_s11SiriKitFlow9AceOutputVSgMR);
              static ExecuteResponse.complete()();

              outlined destroy of AceOutput?(v175, &_s11SiriKitFlow9AceOutputVSgMd, &_s11SiriKitFlow9AceOutputVSgMR);
            }

            else
            {
              v178 = v1[42];
              v179 = v1[43];
              v181 = v1[40];
              v180 = v1[41];
              v182 = v1[39];
              logd = v1[38];
              v283 = v1[67];
              v183 = v1;
              v184 = *(v181 + 32);
              v184(v179, v176, v182);
              static OutputPublisherFactory.makeOutputPublisherAsync()();
              (*(v181 + 16))(v178, v179, v182);
              v185 = (*(v181 + 80) + 16) & ~*(v181 + 80);
              v186 = swift_allocObject();
              v184(v186 + v185, v178, v182);
              v1 = v183;
              v187 = type metadata accessor for SimpleOutputFlowAsync();
              v188 = *(v187 + 48);
              v189 = *(v187 + 52);
              swift_allocObject();
              v183[35] = SimpleOutputFlowAsync.init(outputPublisher:outputGenerator:)();
              static ExecuteResponse.complete<A>(next:)();

              (*(v181 + 8))(v179, v182);
              outlined destroy of AceOutput?(v283, &_s11SiriKitFlow9AceOutputVSgMd, &_s11SiriKitFlow9AceOutputVSgMR);
            }

            goto LABEL_23;
          }
        }
      }

      else
      {
      }

      v68 = v1[72];
      v69 = v1[69];
      v70 = v1[68];
      v71 = Logger.workout.unsafeMutableAddressor();
      swift_beginAccess();
      (*(v69 + 16))(v68, v71, v70);
      v72 = Logger.logObject.getter();
      v73 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v72, v73))
      {
        v74 = swift_slowAlloc();
        *v74 = 0;
        _os_log_impl(&dword_274C46000, v72, v73, "There was no synchronousBurstIndex present in the data. Exiting silently.", v74, 2u);
        MEMORY[0x277C67550](v74, -1, -1);
      }

      v75 = v1[72];
      v76 = v1[69];
      v77 = v1[68];
      v78 = v1[38];

      (*(v76 + 8))(v75, v77);
      static ExecuteResponse.complete()();

      goto LABEL_23;
    }

    v57 = v1[71];
    v58 = v1[69];
    v59 = v1[68];
    v60 = Logger.workout.unsafeMutableAddressor();
    swift_beginAccess();
    (*(v58 + 16))(v57, v60, v59);
    v61 = Logger.logObject.getter();
    v62 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v61, v62))
    {
      v63 = swift_slowAlloc();
      *v63 = 0;
      _os_log_impl(&dword_274C46000, v61, v62, "Could not get a workout voice feedback object from the data. Exiting silently.", v63, 2u);
      MEMORY[0x277C67550](v63, -1, -1);
    }

    v64 = v1[71];
    v65 = v1[69];
    v66 = v1[68];
    v67 = v1[38];

    (*(v65 + 8))(v64, v66);
  }

  else
  {
    v44 = v0[70];
    v45 = v0[69];
    v46 = v0[68];
    v47 = Logger.workout.unsafeMutableAddressor();
    swift_beginAccess();
    (*(v45 + 16))(v44, v47, v46);
    v48 = Logger.logObject.getter();
    v49 = static os_log_type_t.error.getter();
    v50 = os_log_type_enabled(v48, v49);
    v51 = v1[70];
    v52 = v1[69];
    v53 = v1[68];
    if (v50)
    {
      v54 = swift_slowAlloc();
      v55 = swift_slowAlloc();
      v284[0] = v55;
      *v54 = 136315138;
      *(v54 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001DLL, 0x8000000274C6CC70, v284);
      _os_log_impl(&dword_274C46000, v48, v49, "No data was given to %s. Exiting silently.", v54, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v55);
      MEMORY[0x277C67550](v55, -1, -1);
      MEMORY[0x277C67550](v54, -1, -1);
    }

    (*(v52 + 8))(v51, v53);
    v56 = v1[38];
  }

  static ExecuteResponse.complete()();
LABEL_23:
  v79 = v1[75];
  v80 = v1[74];
  v81 = v1[73];
  v82 = v1[72];
  v83 = v1[71];
  v84 = v1[70];
  v85 = v1[67];
  v86 = v1;
  v87 = v1[66];
  v88 = v86[65];
  v89 = v86[64];
  v240 = v86[61];
  v241 = v86[60];
  v242 = v86[57];
  v243 = v86[56];
  v245 = v86[55];
  v247 = v86[54];
  v249 = v86[53];
  v251 = v86[50];
  v255 = v86[49];
  v259 = v86[46];
  v265 = v86[45];
  v268 = v86[44];
  loga = v86[43];
  v279 = v86[42];

  v90 = v86[1];

  return v90();
}

{
  v1 = *(*v0 + 672);
  v3 = *v0;

  return MEMORY[0x2822009F8](VoiceFeedbackAnnouncementFlow.execute(), 0, 0);
}

{
  v1 = *(v0 + 664);
  v2 = *(v0 + 640);
  v3 = *(v0 + 616);
  v4 = [objc_allocWithZone(MEMORY[0x277D47B98]) init];
  [v4 setName_];

  v5 = [v3 voiceLanguage];
  [v4 setLanguageString_];

  [v2 setPreferredSpeakableTextVoice_];
  v6 = [v3 feedbackIntensity];
  if (v6 <= 2)
  {
    v7 = *(v0 + 640);
    v8 = **(&unk_279EF7D30 + v6);
    [v7 setPreferredSpeakableTextPromptStyle_];

    v4 = v8;
  }

  v9 = *(v0 + 656);
  v10 = *(v0 + 648);
  v68 = *(v0 + 624);
  v71 = *(v0 + 632);
  v62 = *(v0 + 640);
  v64 = *(v0 + 536);
  v11 = *(v0 + 528);
  v12 = *(v0 + 512);
  v13 = *(v0 + 496);
  v14 = *(v0 + 352);
  v66 = *(v0 + 312);
  v15 = [objc_allocWithZone(MEMORY[0x277D479E8]) init];
  UUID.init()();
  v16 = UUID.uuidString.getter();
  v18 = v17;
  v10(v12, v13);
  v19 = MEMORY[0x277C66D70](v16, v18);

  [v15 setAceId_];

  [v15 setDialogPhase_];
  [v15 setResponseMode_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_274C6CC60;
  *(v20 + 32) = v62;
  type metadata accessor for SAUIAudioDescription(0, &lazy cache variable for type metadata for SAAceView, 0x277D47140);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v15 setViews_];

  [v15 setImmersiveExperience_];
  v22 = type metadata accessor for NLContextUpdate();
  (*(*(v22 - 8) + 56))(v14, 1, 1, v22);
  *(v0 + 88) = 0;
  *(v0 + 72) = 0u;
  *(v0 + 56) = 0u;
  MEMORY[0x277C668C0](v15, v14, MEMORY[0x277D84F90], v0 + 56);

  outlined destroy of AceOutput?(v0 + 56, &_s11SiriKitFlow0C8Activity_pSgMd, &_s11SiriKitFlow0C8Activity_pSgMR);
  outlined destroy of AceOutput?(v14, &_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  outlined destroy of AceOutput?(v64, &_s11SiriKitFlow9AceOutputVSgMd, &_s11SiriKitFlow9AceOutputVSgMR);
  v68(v11, 0, 1, v66);
  outlined init with take of AceOutput?(v11, v64, &_s11SiriKitFlow9AceOutputVSgMd, &_s11SiriKitFlow9AceOutputVSgMR);
  v23 = *(v0 + 520);
  v24 = *(v0 + 312);
  v25 = *(v0 + 320);
  outlined init with copy of AceOutput?(*(v0 + 536), v23);
  v26 = (*(v25 + 48))(v23, 1, v24);
  v27 = *(v0 + 616);
  v28 = *(v0 + 536);
  if (v26 == 1)
  {
    v29 = *(v0 + 304);
    outlined destroy of AceOutput?(*(v0 + 520), &_s11SiriKitFlow9AceOutputVSgMd, &_s11SiriKitFlow9AceOutputVSgMR);
    static ExecuteResponse.complete()();

    outlined destroy of AceOutput?(v28, &_s11SiriKitFlow9AceOutputVSgMd, &_s11SiriKitFlow9AceOutputVSgMR);
  }

  else
  {
    v30 = *(v0 + 336);
    v31 = *(v0 + 344);
    v33 = *(v0 + 320);
    v32 = *(v0 + 328);
    v34 = *(v0 + 312);
    v35 = *(v33 + 32);
    v35(v31, *(v0 + 520), v34);
    static OutputPublisherFactory.makeOutputPublisherAsync()();
    (*(v33 + 16))(v30, v31, v34);
    v69 = v28;
    v36 = (*(v33 + 80) + 16) & ~*(v33 + 80);
    v37 = swift_allocObject();
    v35(v37 + v36, v30, v34);
    v38 = type metadata accessor for SimpleOutputFlowAsync();
    v39 = *(v38 + 48);
    v40 = *(v38 + 52);
    swift_allocObject();
    *(v0 + 280) = SimpleOutputFlowAsync.init(outputPublisher:outputGenerator:)();
    static ExecuteResponse.complete<A>(next:)();

    (*(v33 + 8))(v31, v34);
    outlined destroy of AceOutput?(v69, &_s11SiriKitFlow9AceOutputVSgMd, &_s11SiriKitFlow9AceOutputVSgMR);
  }

  v41 = *(v0 + 600);
  v42 = *(v0 + 592);
  v43 = *(v0 + 584);
  v44 = *(v0 + 576);
  v45 = *(v0 + 568);
  v46 = *(v0 + 560);
  v47 = *(v0 + 536);
  v48 = *(v0 + 528);
  v49 = *(v0 + 520);
  v50 = *(v0 + 512);
  v53 = *(v0 + 488);
  v54 = *(v0 + 480);
  v55 = *(v0 + 456);
  v56 = *(v0 + 448);
  v57 = *(v0 + 440);
  v58 = *(v0 + 432);
  v59 = *(v0 + 424);
  v60 = *(v0 + 400);
  v61 = *(v0 + 392);
  v63 = *(v0 + 368);
  v65 = *(v0 + 360);
  v67 = *(v0 + 352);
  v70 = *(v0 + 344);
  v72 = *(v0 + 336);

  v51 = *(v0 + 8);

  return v51();
}

{
  v1 = *(*v0 + 712);
  v3 = *v0;

  return MEMORY[0x2822009F8](VoiceFeedbackAnnouncementFlow.execute(), 0, 0);
}

{
  v1 = *(v0 + 696);
  v2 = *(v0 + 688);
  v3 = *(v0 + 680);

  outlined consume of Data._Representation(v3, v2);
  v4 = *(v0 + 520);
  v5 = *(v0 + 312);
  v6 = *(v0 + 320);
  outlined init with copy of AceOutput?(*(v0 + 536), v4);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    v7 = *(v0 + 616);
    v8 = *(v0 + 536);
    v9 = *(v0 + 304);
    outlined destroy of AceOutput?(*(v0 + 520), &_s11SiriKitFlow9AceOutputVSgMd, &_s11SiriKitFlow9AceOutputVSgMR);
    static ExecuteResponse.complete()();

    outlined destroy of AceOutput?(v8, &_s11SiriKitFlow9AceOutputVSgMd, &_s11SiriKitFlow9AceOutputVSgMR);
  }

  else
  {
    v10 = *(v0 + 616);
    v45 = v10;
    v47 = *(v0 + 536);
    v11 = *(v0 + 336);
    v12 = *(v0 + 344);
    v13 = *(v0 + 320);
    v14 = *(v0 + 312);
    v15 = *(v13 + 32);
    v15(v12, *(v0 + 520), v14);
    static OutputPublisherFactory.makeOutputPublisherAsync()();
    (*(v13 + 16))(v11, v12, v14);
    v16 = (*(v13 + 80) + 16) & ~*(v13 + 80);
    v17 = swift_allocObject();
    v15(v17 + v16, v11, v14);
    v18 = type metadata accessor for SimpleOutputFlowAsync();
    v19 = *(v18 + 48);
    v20 = *(v18 + 52);
    swift_allocObject();
    *(v0 + 280) = SimpleOutputFlowAsync.init(outputPublisher:outputGenerator:)();
    static ExecuteResponse.complete<A>(next:)();

    (*(v13 + 8))(v12, v14);
    outlined destroy of AceOutput?(v47, &_s11SiriKitFlow9AceOutputVSgMd, &_s11SiriKitFlow9AceOutputVSgMR);
  }

  v21 = *(v0 + 600);
  v22 = *(v0 + 592);
  v23 = *(v0 + 584);
  v24 = *(v0 + 576);
  v25 = *(v0 + 568);
  v26 = *(v0 + 560);
  v27 = *(v0 + 536);
  v28 = *(v0 + 528);
  v29 = *(v0 + 520);
  v30 = *(v0 + 512);
  v33 = *(v0 + 488);
  v34 = *(v0 + 480);
  v35 = *(v0 + 456);
  v36 = *(v0 + 448);
  v37 = *(v0 + 440);
  v38 = *(v0 + 432);
  v39 = *(v0 + 424);
  v40 = *(v0 + 400);
  v41 = *(v0 + 392);
  v42 = *(v0 + 368);
  v43 = *(v0 + 360);
  v44 = *(v0 + 352);
  v46 = *(v0 + 344);
  v48 = *(v0 + 336);

  v31 = *(v0 + 8);

  return v31();
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

uint64_t specialized _dictionaryUpCast<A, B, C, D>(_:)(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCys11AnyHashableVypGMd, &_ss18_DictionaryStorageCys11AnyHashableVypGMR);
    v2 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 64;

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = __clz(__rbit64(v5)) | (v9 << 6);
    v14 = (*(a1 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    outlined init with copy of Any(*(a1 + 56) + 32 * v13, v35);
    *&v34 = v16;
    *(&v34 + 1) = v15;
    v32[2] = v34;
    v33[0] = v35[0];
    v33[1] = v35[1];
    v32[0] = v34;

    swift_dynamicCast();
    outlined init with take of Any(v33, v27);
    v28 = v24;
    v29 = v25;
    v30 = v26;
    outlined init with take of Any(v27, v31);
    v24 = v28;
    v25 = v29;
    v26 = v30;
    outlined init with take of Any(v31, v32);
    result = AnyHashable._rawHashValue(seed:)(*(v2 + 40));
    v17 = -1 << *(v2 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*(v7 + 8 * (v18 >> 6))) == 0)
    {
      v20 = 0;
      v21 = (63 - v17) >> 6;
      while (++v19 != v21 || (v20 & 1) == 0)
      {
        v22 = v19 == v21;
        if (v19 == v21)
        {
          v19 = 0;
        }

        v20 |= v22;
        v23 = *(v7 + 8 * v19);
        if (v23 != -1)
        {
          v10 = __clz(__rbit64(~v23)) + (v19 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v18) & ~*(v7 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
    v11 = *(v2 + 48) + 40 * v10;
    *v11 = v24;
    *(v11 + 16) = v25;
    *(v11 + 32) = v26;
    result = outlined init with take of Any(v32, (*(v2 + 56) + 32 * v10));
    ++*(v2 + 16);
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t VoiceFeedbackAnnouncementFlow.playTone()()
{
  v1 = type metadata accessor for Logger();
  v0[10] = v1;
  v2 = *(v1 - 8);
  v0[11] = v2;
  v3 = *(v2 + 64) + 15;
  v0[12] = swift_task_alloc();
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR) - 8) + 64) + 15;
  v0[13] = swift_task_alloc();
  v0[14] = swift_task_alloc();

  return MEMORY[0x2822009F8](VoiceFeedbackAnnouncementFlow.playTone(), 0, 0);
}

{
  v1 = [objc_allocWithZone(MEMORY[0x277D47AE0]) init];
  v0[15] = v1;
  type metadata accessor for VoiceFeedbackAnnouncementResourceAnchor();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  v4 = MEMORY[0x277C66D70](0xD000000000000010, 0x8000000274C700C0);
  v5 = MEMORY[0x277C66D70](6709603, 0xE300000000000000);
  v6 = [v3 URLForResource:v4 withExtension:v5];

  if (v6)
  {
    v7 = v0[13];
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v8 = 0;
  }

  else
  {
    v8 = 1;
  }

  v10 = v0[13];
  v9 = v0[14];
  v11 = type metadata accessor for URL();
  v12 = *(v11 - 8);
  (*(v12 + 56))(v10, v8, 1, v11);
  outlined init with take of AceOutput?(v10, v9, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v13 = (*(v12 + 48))(v9, 1, v11);
  v14 = v0[14];
  if (v13 == 1)
  {
    outlined destroy of AceOutput?(v0[14], &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    v15 = 0;
  }

  else
  {
    v16 = URL.path(percentEncoded:)(1);
    (*(v12 + 8))(v14, v11);
    v15 = MEMORY[0x277C66D70](v16._countAndFlagsBits, v16._object);
  }

  [v1 setItemURL_];

  type metadata accessor for SAUIAudioDescription(0, &lazy cache variable for type metadata for NSNumber, 0x277CCABB0);
  isa = NSNumber.init(floatLiteral:)(1.0).super.super.isa;
  [v1 setVolume_];

  static AceService.currentAsync.getter();
  v18 = v0[5];
  v19 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v18);
  v20 = *(MEMORY[0x277D5BFB8] + 4);
  v21 = swift_task_alloc();
  v0[16] = v21;
  v22 = type metadata accessor for SAUIAudioDescription(0, &lazy cache variable for type metadata for SABaseCommand, 0x277D471B0);
  *v21 = v0;
  v21[1] = VoiceFeedbackAnnouncementFlow.playTone();

  return MEMORY[0x2821BB6A0](v1, v18, v22, v19);
}

{

  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));
  v2 = *(v0 + 104);
  v1 = *(v0 + 112);
  v3 = *(v0 + 96);

  v4 = *(v0 + 8);

  return v4();
}

{
  v25 = v0;
  v1 = *(v0 + 136);
  v3 = *(v0 + 88);
  v2 = *(v0 + 96);
  v4 = *(v0 + 80);

  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));
  v5 = Logger.workout.unsafeMutableAddressor();
  swift_beginAccess();
  (*(v3 + 16))(v2, v5, v4);
  v6 = v1;
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.error.getter();

  v9 = os_log_type_enabled(v7, v8);
  v10 = *(v0 + 136);
  v12 = *(v0 + 88);
  v11 = *(v0 + 96);
  v13 = *(v0 + 80);
  if (v9)
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v24 = v16;
    *v14 = 136315394;
    *(v14 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001DLL, 0x8000000274C6CC70, &v24);
    *(v14 + 12) = 2112;
    v17 = v10;
    v18 = _swift_stdlib_bridgeErrorToNSError();
    *(v14 + 14) = v18;
    *v15 = v18;
    _os_log_impl(&dword_274C46000, v7, v8, "%s caught an error in submitting Ace commands: %@", v14, 0x16u);
    outlined destroy of AceOutput?(v15, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x277C67550](v15, -1, -1);
    __swift_destroy_boxed_opaque_existential_0Tm(v16);
    MEMORY[0x277C67550](v16, -1, -1);
    MEMORY[0x277C67550](v14, -1, -1);
  }

  else
  {
  }

  (*(v12 + 8))(v11, v13);
  v20 = *(v0 + 104);
  v19 = *(v0 + 112);
  v21 = *(v0 + 96);

  v22 = *(v0 + 8);

  return v22();
}

uint64_t VoiceFeedbackAnnouncementFlow.playTone()(void *a1)
{
  v4 = *(*v2 + 128);
  v7 = *v2;
  *(*v2 + 136) = v1;

  if (v1)
  {
    v5 = VoiceFeedbackAnnouncementFlow.playTone();
  }

  else
  {

    v5 = VoiceFeedbackAnnouncementFlow.playTone();
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t closure #1 in VoiceFeedbackAnnouncementFlow.execute()(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x2822009F8](closure #1 in VoiceFeedbackAnnouncementFlow.execute(), 0, 0);
}

uint64_t closure #1 in VoiceFeedbackAnnouncementFlow.execute()()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = type metadata accessor for AceOutput();
  v4 = MEMORY[0x277D5C1D8];
  v1[3] = v3;
  v1[4] = v4;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v1);
  (*(*(v3 - 8) + 16))(boxed_opaque_existential_1, v2, v3);
  v6 = v0[1];

  return v6();
}

uint64_t protocol witness for Flow.onAsync(input:) in conformance VoiceFeedbackAnnouncementFlow(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(MEMORY[0x277D5B890] + 4);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = protocol witness for Flow.onAsync(input:) in conformance VoiceFeedbackAnnouncementFlow;

  return MEMORY[0x2821BA650](a1, a2, a3);
}

uint64_t protocol witness for Flow.onAsync(input:) in conformance VoiceFeedbackAnnouncementFlow(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

uint64_t protocol witness for Flow.execute() in conformance VoiceFeedbackAnnouncementFlow(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = protocol witness for Flow.execute() in conformance VoiceFeedbackAnnouncementFlow;

  return VoiceFeedbackAnnouncementFlow.execute()(a1);
}

uint64_t protocol witness for Flow.execute() in conformance VoiceFeedbackAnnouncementFlow()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t serialize(_:at:)(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

uint64_t implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:)(void (*a1)(void))
{
  a1();

  return _typeName(_:qualified:)();
}

uint64_t closure #1 in OSLogArguments.append(_:)(uint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v6 = a4();
  v8 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

uint64_t getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = specialized _StringGuts._deconstructUTF8<A>(scratch:)(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    outlined init with copy of Any(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0Tm(v11);
  return v7;
}

unint64_t specialized _StringGuts._deconstructUTF8<A>(scratch:)(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = _StringGuts._allocateForDeconstruct()(a5, a6);
    *a1 = v8;
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
    v11 = a6;
    result = _StringObject.sharedUTF8.getter();
    a6 = v11;
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

uint64_t _StringGuts._allocateForDeconstruct()(uint64_t a1, unint64_t a2)
{
  v4 = specialized _copyCollectionToContiguousArray<A>(_:)(a1, a2);
  specialized Array.append<A>(contentsOf:)(&outlined read-only object #0 of _StringGuts._allocateForDeconstruct());
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t specialized _copyCollectionToContiguousArray<A>(_:)(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = _StringObject.sharedUTF8.getter();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = String.UTF8View._foreignCount()();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5(v10, 0);
        result = _StringGuts._foreignCopyUTF8(into:)();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t specialized Array.append<A>(contentsOf:)(uint64_t result)
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
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(result, v12, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd, &_ss23_ContiguousArrayStorageCys5UInt8VGMR);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd, &_ss23_ContiguousArrayStorageCys5UInt8VGMR);
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
    if (v10 != a4 || v12 >= &v13[v8])
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

_BYTE **closure #1 in OSLogArguments.append(_:)(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  v6 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, a2, v6);
}

uint64_t outlined init with copy of Any(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t outlined init with copy of AceOutput?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow9AceOutputVSgMd, &_s11SiriKitFlow9AceOutputVSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_274C4BBF4()
{
  v1 = type metadata accessor for AceOutput();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t partial apply for closure #1 in VoiceFeedbackAnnouncementFlow.execute()(uint64_t a1)
{
  v4 = *(type metadata accessor for AceOutput() - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = protocol witness for Flow.execute() in conformance VoiceFeedbackAnnouncementFlow;

  return closure #1 in VoiceFeedbackAnnouncementFlow.execute()(a1, v1 + v5);
}

uint64_t outlined consume of Data._Representation(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

unint64_t lazy protocol witness table accessor for type Locale.LanguageCode and conformance Locale.LanguageCode()
{
  result = lazy protocol witness table cache variable for type Locale.LanguageCode and conformance Locale.LanguageCode;
  if (!lazy protocol witness table cache variable for type Locale.LanguageCode and conformance Locale.LanguageCode)
  {
    type metadata accessor for Locale.LanguageCode();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Locale.LanguageCode and conformance Locale.LanguageCode);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for VoiceFeedbackAnnouncementFlow(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 8))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t storeEnumTagSinglePayload for VoiceFeedbackAnnouncementFlow(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t outlined init with take of AceOutput?(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t type metadata accessor for SAUIAudioDescription(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

uint64_t __swift_destroy_boxed_opaque_existential_0Tm(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t outlined destroy of AceOutput?(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (_stringCompareWithSmolCheck(_:_:expecting:)())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

_OWORD *outlined init with take of Any(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

WorkoutAnnouncements::GoalCompletionModel __swiftcall GoalCompletionModel.init(magnitude:unit:)(Swift::Double magnitude, Swift::String unit)
{
  *v2 = 1;
  *(v2 + 8) = magnitude;
  *(v2 + 16) = unit;
  result.alertType = unit._countAndFlagsBits;
  result.unit._countAndFlagsBits = unit._object;
  result.magnitude = magnitude;
  return result;
}

uint64_t static GoalCompletionModel.== infix(_:_:)(double *a1, double *a2)
{
  if (*a1 != *a2 || a1[1] != a2[1])
  {
    return 0;
  }

  if (*(a1 + 2) == *(a2 + 2) && *(a1 + 3) == *(a2 + 3))
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)();
  }
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance GoalCompletionModel.CodingKeys()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x277C670A0](v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance GoalCompletionModel.CodingKeys()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x277C670A0](v1);
  return Hasher._finalize()();
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance GoalCompletionModel.CodingKeys()
{
  v1 = 0x647574696E67616DLL;
  if (*v0 != 1)
  {
    v1 = 1953066613;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x7079547472656C61;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance GoalCompletionModel.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = specialized GoalCompletionModel.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance GoalCompletionModel.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type GoalCompletionModel.CodingKeys and conformance GoalCompletionModel.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance GoalCompletionModel.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type GoalCompletionModel.CodingKeys and conformance GoalCompletionModel.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t GoalCompletionModel.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy20WorkoutAnnouncements19GoalCompletionModelV10CodingKeys33_24A89D198B0700D226CBE69E42129F60LLOGMd, &_ss22KeyedEncodingContainerVy20WorkoutAnnouncements19GoalCompletionModelV10CodingKeys33_24A89D198B0700D226CBE69E42129F60LLOGMR);
  v5 = *(v4 - 8);
  v6 = (*(v5 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v8 = v14 - v7;
  v9 = *v1;
  v10 = *(v1 + 1);
  v11 = *(v1 + 2);
  v14[1] = *(v1 + 3);
  v14[2] = v11;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type GoalCompletionModel.CodingKeys and conformance GoalCompletionModel.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v18 = v9;
  v17 = 0;
  lazy protocol witness table accessor for type VoiceFeedbackAlertType and conformance VoiceFeedbackAlertType();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v16 = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    v15 = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v5 + 8))(v8, v4);
}

uint64_t GoalCompletionModel.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy20WorkoutAnnouncements19GoalCompletionModelV10CodingKeys33_24A89D198B0700D226CBE69E42129F60LLOGMd, &_ss22KeyedDecodingContainerVy20WorkoutAnnouncements19GoalCompletionModelV10CodingKeys33_24A89D198B0700D226CBE69E42129F60LLOGMR);
  v6 = *(v5 - 8);
  v7 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v9 = &v18[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type GoalCompletionModel.CodingKeys and conformance GoalCompletionModel.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  v18[14] = 0;
  lazy protocol witness table accessor for type VoiceFeedbackAlertType and conformance VoiceFeedbackAlertType();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v11 = v18[15];
  v18[13] = 1;
  KeyedDecodingContainer.decode(_:forKey:)();
  v13 = v12;
  v18[12] = 2;
  v14 = KeyedDecodingContainer.decode(_:forKey:)();
  v16 = v15;
  (*(v6 + 8))(v9, v5);
  *a2 = v11;
  *(a2 + 8) = v13;
  *(a2 + 16) = v14;
  *(a2 + 24) = v16;

  __swift_destroy_boxed_opaque_existential_0Tm(a1);
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance GoalCompletionModel(double *a1, double *a2)
{
  if (*a1 != *a2 || a1[1] != a2[1])
  {
    return 0;
  }

  if (*(a1 + 2) == *(a2 + 2) && *(a1 + 3) == *(a2 + 3))
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)();
  }
}

unint64_t lazy protocol witness table accessor for type GoalCompletionModel.CodingKeys and conformance GoalCompletionModel.CodingKeys()
{
  result = lazy protocol witness table cache variable for type GoalCompletionModel.CodingKeys and conformance GoalCompletionModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type GoalCompletionModel.CodingKeys and conformance GoalCompletionModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GoalCompletionModel.CodingKeys and conformance GoalCompletionModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type GoalCompletionModel.CodingKeys and conformance GoalCompletionModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type GoalCompletionModel.CodingKeys and conformance GoalCompletionModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GoalCompletionModel.CodingKeys and conformance GoalCompletionModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type GoalCompletionModel.CodingKeys and conformance GoalCompletionModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type GoalCompletionModel.CodingKeys and conformance GoalCompletionModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GoalCompletionModel.CodingKeys and conformance GoalCompletionModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type GoalCompletionModel.CodingKeys and conformance GoalCompletionModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type GoalCompletionModel.CodingKeys and conformance GoalCompletionModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GoalCompletionModel.CodingKeys and conformance GoalCompletionModel.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type VoiceFeedbackAlertType and conformance VoiceFeedbackAlertType()
{
  result = lazy protocol witness table cache variable for type VoiceFeedbackAlertType and conformance VoiceFeedbackAlertType;
  if (!lazy protocol witness table cache variable for type VoiceFeedbackAlertType and conformance VoiceFeedbackAlertType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type VoiceFeedbackAlertType and conformance VoiceFeedbackAlertType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type VoiceFeedbackAlertType and conformance VoiceFeedbackAlertType;
  if (!lazy protocol witness table cache variable for type VoiceFeedbackAlertType and conformance VoiceFeedbackAlertType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type VoiceFeedbackAlertType and conformance VoiceFeedbackAlertType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type VoiceFeedbackAlertType and conformance VoiceFeedbackAlertType;
  if (!lazy protocol witness table cache variable for type VoiceFeedbackAlertType and conformance VoiceFeedbackAlertType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type VoiceFeedbackAlertType and conformance VoiceFeedbackAlertType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type VoiceFeedbackAlertType and conformance VoiceFeedbackAlertType;
  if (!lazy protocol witness table cache variable for type VoiceFeedbackAlertType and conformance VoiceFeedbackAlertType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type VoiceFeedbackAlertType and conformance VoiceFeedbackAlertType);
  }

  return result;
}

unint64_t instantiation function for generic protocol witness table for GoalCompletionModel(void *a1)
{
  a1[1] = lazy protocol witness table accessor for type GoalCompletionModel and conformance GoalCompletionModel();
  a1[2] = lazy protocol witness table accessor for type GoalCompletionModel and conformance GoalCompletionModel();
  result = lazy protocol witness table accessor for type GoalCompletionModel and conformance GoalCompletionModel();
  a1[3] = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type GoalCompletionModel and conformance GoalCompletionModel()
{
  result = lazy protocol witness table cache variable for type GoalCompletionModel and conformance GoalCompletionModel;
  if (!lazy protocol witness table cache variable for type GoalCompletionModel and conformance GoalCompletionModel)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GoalCompletionModel and conformance GoalCompletionModel);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type GoalCompletionModel and conformance GoalCompletionModel;
  if (!lazy protocol witness table cache variable for type GoalCompletionModel and conformance GoalCompletionModel)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GoalCompletionModel and conformance GoalCompletionModel);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type GoalCompletionModel and conformance GoalCompletionModel;
  if (!lazy protocol witness table cache variable for type GoalCompletionModel and conformance GoalCompletionModel)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GoalCompletionModel and conformance GoalCompletionModel);
  }

  return result;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for GoalCompletionModel(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for GoalCompletionModel(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for GoalCompletionModel.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for GoalCompletionModel.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t specialized GoalCompletionModel.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7079547472656C61 && a2 == 0xE900000000000065;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x647574696E67616DLL && a2 == 0xE900000000000065 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1953066613 && a2 == 0xE400000000000000)
  {

    return 2;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t VoiceFeedbackTargetZone.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy20WorkoutAnnouncements23VoiceFeedbackTargetZoneV10CodingKeys33_D3D2D20C81C2E94FEB4B13C7259D65F0LLOGMd, &_ss22KeyedDecodingContainerVy20WorkoutAnnouncements23VoiceFeedbackTargetZoneV10CodingKeys33_D3D2D20C81C2E94FEB4B13C7259D65F0LLOGMR);
  v6 = *(v5 - 8);
  v7 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v9 = &v31 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type VoiceFeedbackTargetZone.CodingKeys and conformance VoiceFeedbackTargetZone.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  LOBYTE(v40[0]) = 0;
  KeyedDecodingContainer.decode(_:forKey:)();
  v12 = v11;
  LOBYTE(v40[0]) = 1;
  KeyedDecodingContainer.decode(_:forKey:)();
  v14 = v13;
  LOBYTE(v40[0]) = 2;
  v16 = KeyedDecodingContainer.decode(_:forKey:)();
  v18 = v17;
  LOBYTE(v40[0]) = 3;
  v19 = KeyedDecodingContainer.decode(_:forKey:)();
  VoiceFeedbackMetricType.init(rawValue:)(v19);
  if (LOBYTE(v40[0]) == 8)
  {
    LOBYTE(v40[0]) = 3;
    type metadata accessor for DecodingError();
    swift_allocError();
    lazy protocol witness table accessor for type KeyedDecodingContainer<VoiceFeedbackTargetZone.CodingKeys> and conformance KeyedDecodingContainer<A>();
LABEL_6:
    static DecodingError.dataCorruptedError<A>(forKey:in:debugDescription:)();
    swift_willThrow();
    (*(v6 + 8))(v9, v5);
    __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  v35 = LOBYTE(v40[0]);
  LOBYTE(v40[0]) = 4;
  v20 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  if (v21)
  {
    v22 = 2;
  }

  else
  {
    if (!v20)
    {
      v34 = 0;
      goto LABEL_13;
    }

    if (v20 != 1)
    {
      LOBYTE(v40[0]) = 4;
      type metadata accessor for DecodingError();
      swift_allocError();
      lazy protocol witness table accessor for type KeyedDecodingContainer<VoiceFeedbackTargetZone.CodingKeys> and conformance KeyedDecodingContainer<A>();
      goto LABEL_6;
    }

    v22 = 1;
  }

  v34 = v22;
LABEL_13:
  LOBYTE(v40[0]) = 5;
  v33 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v46 = v23 & 1;
  v47 = 6;
  v24 = KeyedDecodingContainer.decode(_:forKey:)();
  (*(v6 + 8))(v9, v5);
  v25 = v24 & 1;
  v32 = v24 & 1;
  *&v36 = v12;
  *(&v36 + 1) = v14;
  *&v37 = v16;
  *(&v37 + 1) = v18;
  v26 = v34;
  v27 = v35;
  LOBYTE(v38) = v35;
  BYTE1(v38) = v34;
  v28 = v33;
  *(&v38 + 1) = v33;
  v29 = v46;
  LOBYTE(v39) = v46;
  HIBYTE(v39) = v25;
  v30 = v37;
  *a2 = v36;
  *(a2 + 16) = v30;
  *(a2 + 32) = v38;
  *(a2 + 48) = v39;
  outlined init with copy of VoiceFeedbackTargetZone(&v36, v40);
  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  v40[0] = v12;
  v40[1] = v14;
  v40[2] = v16;
  v40[3] = v18;
  v41 = v27;
  v42 = v26;
  v43 = v28;
  v44 = v29;
  v45 = v32;
  return outlined destroy of VoiceFeedbackTargetZone(v40);
}

unint64_t lazy protocol witness table accessor for type VoiceFeedbackTargetZone.CodingKeys and conformance VoiceFeedbackTargetZone.CodingKeys()
{
  result = lazy protocol witness table cache variable for type VoiceFeedbackTargetZone.CodingKeys and conformance VoiceFeedbackTargetZone.CodingKeys;
  if (!lazy protocol witness table cache variable for type VoiceFeedbackTargetZone.CodingKeys and conformance VoiceFeedbackTargetZone.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type VoiceFeedbackTargetZone.CodingKeys and conformance VoiceFeedbackTargetZone.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type VoiceFeedbackTargetZone.CodingKeys and conformance VoiceFeedbackTargetZone.CodingKeys;
  if (!lazy protocol witness table cache variable for type VoiceFeedbackTargetZone.CodingKeys and conformance VoiceFeedbackTargetZone.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type VoiceFeedbackTargetZone.CodingKeys and conformance VoiceFeedbackTargetZone.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type VoiceFeedbackTargetZone.CodingKeys and conformance VoiceFeedbackTargetZone.CodingKeys;
  if (!lazy protocol witness table cache variable for type VoiceFeedbackTargetZone.CodingKeys and conformance VoiceFeedbackTargetZone.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type VoiceFeedbackTargetZone.CodingKeys and conformance VoiceFeedbackTargetZone.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type VoiceFeedbackTargetZone.CodingKeys and conformance VoiceFeedbackTargetZone.CodingKeys;
  if (!lazy protocol witness table cache variable for type VoiceFeedbackTargetZone.CodingKeys and conformance VoiceFeedbackTargetZone.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type VoiceFeedbackTargetZone.CodingKeys and conformance VoiceFeedbackTargetZone.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type KeyedDecodingContainer<VoiceFeedbackTargetZone.CodingKeys> and conformance KeyedDecodingContainer<A>()
{
  result = lazy protocol witness table cache variable for type KeyedDecodingContainer<VoiceFeedbackTargetZone.CodingKeys> and conformance KeyedDecodingContainer<A>;
  if (!lazy protocol witness table cache variable for type KeyedDecodingContainer<VoiceFeedbackTargetZone.CodingKeys> and conformance KeyedDecodingContainer<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_ss22KeyedDecodingContainerVy20WorkoutAnnouncements23VoiceFeedbackTargetZoneV10CodingKeys33_D3D2D20C81C2E94FEB4B13C7259D65F0LLOGMd, &_ss22KeyedDecodingContainerVy20WorkoutAnnouncements23VoiceFeedbackTargetZoneV10CodingKeys33_D3D2D20C81C2E94FEB4B13C7259D65F0LLOGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KeyedDecodingContainer<VoiceFeedbackTargetZone.CodingKeys> and conformance KeyedDecodingContainer<A>);
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

unint64_t protocol witness for CodingKey.stringValue.getter in conformance VoiceFeedbackTargetZone.CodingKeys()
{
  v1 = *v0;
  v2 = 0x696E67614D6E696DLL;
  v3 = 0x65646E49656E6F7ALL;
  if (v1 != 5)
  {
    v3 = 0xD000000000000011;
  }

  v4 = 0x795463697274656DLL;
  if (v1 != 3)
  {
    v4 = 0x6D726F4665636170;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x696E67614D78616DLL;
  if (v1 != 1)
  {
    v5 = 1953066613;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance VoiceFeedbackTargetZone.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = specialized VoiceFeedbackTargetZone.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance VoiceFeedbackTargetZone.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type VoiceFeedbackTargetZone.CodingKeys and conformance VoiceFeedbackTargetZone.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance VoiceFeedbackTargetZone.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type VoiceFeedbackTargetZone.CodingKeys and conformance VoiceFeedbackTargetZone.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t VoiceFeedbackTargetZone.encode(to:)(void *a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy20WorkoutAnnouncements23VoiceFeedbackTargetZoneV10CodingKeys33_D3D2D20C81C2E94FEB4B13C7259D65F0LLOGMd, &_ss22KeyedEncodingContainerVy20WorkoutAnnouncements23VoiceFeedbackTargetZoneV10CodingKeys33_D3D2D20C81C2E94FEB4B13C7259D65F0LLOGMR) - 8);
  v4 = (*(v3 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v6 = &v20 - v5;
  v8 = *v1;
  v7 = v1[1];
  v9 = v1[2];
  v23 = v1[3];
  v24 = v9;
  LODWORD(v9) = *(v1 + 32);
  v21 = *(v1 + 33);
  v22 = v9;
  v10 = v1[5];
  v11 = *(v1 + 48);
  v12 = *(v1 + 49);
  v13 = a1[3];
  v14 = a1[4];
  v15 = a1;
  v17 = v16;
  __swift_project_boxed_opaque_existential_1(v15, v13);
  lazy protocol witness table accessor for type VoiceFeedbackTargetZone.CodingKeys and conformance VoiceFeedbackTargetZone.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v34 = 0;
  v18 = v25;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v18)
  {
    LODWORD(v25) = v11;
    v33 = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    v32 = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
    v31 = v22;
    v30 = 3;
    lazy protocol witness table accessor for type VoiceFeedbackMetricType and conformance VoiceFeedbackMetricType();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v29 = v21;
    v28 = 4;
    lazy protocol witness table accessor for type VoiceFeedbackPaceFormat and conformance VoiceFeedbackPaceFormat();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v27 = 5;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v26 = 6;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v3 + 8))(v6, v17);
}

uint64_t specialized static VoiceFeedbackTargetZone.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  result = 0;
  if (*a1 == *a2 && *(a1 + 8) == *(a2 + 8))
  {
    v4 = *(a1 + 32);
    v5 = *(a1 + 33);
    v6 = *(a1 + 40);
    v7 = *(a1 + 48);
    v8 = *(a1 + 49);
    v9 = *(a2 + 32);
    v10 = *(a2 + 33);
    v11 = *(a2 + 40);
    v12 = *(a2 + 48);
    v13 = *(a2 + 49);
    if (*(a1 + 16) == *(a2 + 16) && *(a1 + 24) == *(a2 + 24))
    {
      if (v4 != v9)
      {
        return 0;
      }

LABEL_9:
      if (v5 == 2)
      {
        if (v10 != 2)
        {
          return 0;
        }
      }

      else if (v10 == 2 || ((v10 ^ v5) & 1) != 0)
      {
        return 0;
      }

      if (v7)
      {
        if (!v12)
        {
          return 0;
        }
      }

      else
      {
        if (v6 == v11)
        {
          v16 = v12;
        }

        else
        {
          v16 = 1;
        }

        if (v16)
        {
          return 0;
        }
      }

      return v8 ^ v13 ^ 1u;
    }

    v14 = *(a1 + 24);
    v15 = _stringCompareWithSmolCheck(_:_:expecting:)();
    result = 0;
    if ((v15 & 1) != 0 && v4 == v9)
    {
      goto LABEL_9;
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type VoiceFeedbackMetricType and conformance VoiceFeedbackMetricType()
{
  result = lazy protocol witness table cache variable for type VoiceFeedbackMetricType and conformance VoiceFeedbackMetricType;
  if (!lazy protocol witness table cache variable for type VoiceFeedbackMetricType and conformance VoiceFeedbackMetricType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type VoiceFeedbackMetricType and conformance VoiceFeedbackMetricType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type VoiceFeedbackMetricType and conformance VoiceFeedbackMetricType;
  if (!lazy protocol witness table cache variable for type VoiceFeedbackMetricType and conformance VoiceFeedbackMetricType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type VoiceFeedbackMetricType and conformance VoiceFeedbackMetricType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type VoiceFeedbackMetricType and conformance VoiceFeedbackMetricType;
  if (!lazy protocol witness table cache variable for type VoiceFeedbackMetricType and conformance VoiceFeedbackMetricType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type VoiceFeedbackMetricType and conformance VoiceFeedbackMetricType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type VoiceFeedbackMetricType and conformance VoiceFeedbackMetricType;
  if (!lazy protocol witness table cache variable for type VoiceFeedbackMetricType and conformance VoiceFeedbackMetricType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type VoiceFeedbackMetricType and conformance VoiceFeedbackMetricType);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type VoiceFeedbackPaceFormat and conformance VoiceFeedbackPaceFormat()
{
  result = lazy protocol witness table cache variable for type VoiceFeedbackPaceFormat and conformance VoiceFeedbackPaceFormat;
  if (!lazy protocol witness table cache variable for type VoiceFeedbackPaceFormat and conformance VoiceFeedbackPaceFormat)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type VoiceFeedbackPaceFormat and conformance VoiceFeedbackPaceFormat);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type VoiceFeedbackPaceFormat and conformance VoiceFeedbackPaceFormat;
  if (!lazy protocol witness table cache variable for type VoiceFeedbackPaceFormat and conformance VoiceFeedbackPaceFormat)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type VoiceFeedbackPaceFormat and conformance VoiceFeedbackPaceFormat);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type VoiceFeedbackPaceFormat and conformance VoiceFeedbackPaceFormat;
  if (!lazy protocol witness table cache variable for type VoiceFeedbackPaceFormat and conformance VoiceFeedbackPaceFormat)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type VoiceFeedbackPaceFormat and conformance VoiceFeedbackPaceFormat);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type VoiceFeedbackPaceFormat and conformance VoiceFeedbackPaceFormat;
  if (!lazy protocol witness table cache variable for type VoiceFeedbackPaceFormat and conformance VoiceFeedbackPaceFormat)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type VoiceFeedbackPaceFormat and conformance VoiceFeedbackPaceFormat);
  }

  return result;
}

__n128 __swift_memcpy50_8(uint64_t a1, uint64_t a2)
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

uint64_t getEnumTagSinglePayload for VoiceFeedbackTargetZone(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 50))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for VoiceFeedbackTargetZone(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 50) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 50) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for VoiceFeedbackTargetZone.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 6;
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

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for VoiceFeedbackTargetZone.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t specialized VoiceFeedbackTargetZone.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696E67614D6E696DLL && a2 == 0xEC00000065647574;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x696E67614D78616DLL && a2 == 0xEC00000065647574 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1953066613 && a2 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x795463697274656DLL && a2 == 0xEA00000000006570 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6D726F4665636170 && a2 == 0xEA00000000007461 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x65646E49656E6F7ALL && a2 == 0xE900000000000078 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000274C6FF80 == a2)
  {

    return 6;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

unint64_t protocol witness for CodingKey.stringValue.getter in conformance DistanceSplitModel.CodingKeys()
{
  v1 = *v0;
  v2 = 0x7079547472656C61;
  v3 = 0x6D726F4665636170;
  if (v1 != 5)
  {
    v3 = 0xD000000000000012;
  }

  v4 = 0x6E6F697461727564;
  if (v1 != 3)
  {
    v4 = 1953066613;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x7865646E69;
  if (v1 != 1)
  {
    v5 = 0x647574696E67616DLL;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance DistanceSplitModel.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = specialized DistanceSplitModel.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance DistanceSplitModel.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type DistanceSplitModel.CodingKeys and conformance DistanceSplitModel.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance DistanceSplitModel.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type DistanceSplitModel.CodingKeys and conformance DistanceSplitModel.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t DistanceSplitModel.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy20WorkoutAnnouncements18DistanceSplitModelV10CodingKeys33_68F19270657662660CB59CB6BF3811AALLOGMd, &_ss22KeyedEncodingContainerVy20WorkoutAnnouncements18DistanceSplitModelV10CodingKeys33_68F19270657662660CB59CB6BF3811AALLOGMR);
  v5 = *(v4 - 8);
  v6 = (*(v5 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v8 = &v15 - v7;
  v9 = *v1;
  v10 = *(v1 + 1);
  v11 = *(v1 + 2);
  v20 = *(v1 + 3);
  v21 = v10;
  v19 = v1[32];
  v12 = *(v1 + 5);
  v17 = *(v1 + 6);
  v18 = v12;
  LODWORD(v12) = v1[56];
  v15 = v1[57];
  v16 = v12;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type DistanceSplitModel.CodingKeys and conformance DistanceSplitModel.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v30 = v9;
  v29 = 0;
  lazy protocol witness table accessor for type VoiceFeedbackAlertType and conformance VoiceFeedbackAlertType();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v28 = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    v27 = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
    v26 = 3;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v25 = 4;
    KeyedEncodingContainer.encode(_:forKey:)();
    v24 = v16;
    v23 = 5;
    lazy protocol witness table accessor for type VoiceFeedbackPaceFormat and conformance VoiceFeedbackPaceFormat();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v22 = 6;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v5 + 8))(v8, v4);
}

uint64_t DistanceSplitModel.init(from:)@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy20WorkoutAnnouncements18DistanceSplitModelV10CodingKeys33_68F19270657662660CB59CB6BF3811AALLOGMd, &_ss22KeyedDecodingContainerVy20WorkoutAnnouncements18DistanceSplitModelV10CodingKeys33_68F19270657662660CB59CB6BF3811AALLOGMR);
  v6 = *(v5 - 8);
  v7 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v9 = &v24 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type DistanceSplitModel.CodingKeys and conformance DistanceSplitModel.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  LOBYTE(v31) = 0;
  lazy protocol witness table accessor for type VoiceFeedbackAlertType and conformance VoiceFeedbackAlertType();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v11 = v34[0];
  v34[0] = 1;
  v12 = KeyedDecodingContainer.decode(_:forKey:)();
  v34[0] = 2;
  KeyedDecodingContainer.decode(_:forKey:)();
  v14 = v13;
  v34[0] = 3;
  v30 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v44 = v15 & 1;
  v34[0] = 4;
  v28 = KeyedDecodingContainer.decode(_:forKey:)();
  v29 = v16;
  LOBYTE(v31) = 5;
  lazy protocol witness table accessor for type VoiceFeedbackPaceFormat and conformance VoiceFeedbackPaceFormat();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v27 = v34[0];
  v43 = 6;
  v17 = KeyedDecodingContainer.decode(_:forKey:)();
  (*(v6 + 8))(v9, v5);
  v25 = v17 & 1;
  LOBYTE(v31) = v11;
  *(&v31 + 1) = v12;
  *&v32 = v14;
  v18 = v29;
  v19 = v30;
  *(&v32 + 1) = v30;
  v26 = v44;
  v33[0] = v44;
  v20 = v28;
  *&v33[8] = v28;
  *&v33[16] = v29;
  v21 = v27;
  v33[24] = v27;
  v33[25] = v25;
  v22 = v32;
  *a2 = v31;
  a2[1] = v22;
  *(a2 + 42) = *&v33[10];
  a2[2] = *v33;
  outlined init with copy of DistanceSplitModel(&v31, v34);
  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  v34[0] = v11;
  v35 = v12;
  v36 = v14;
  v37 = v19;
  v38 = v26;
  v39 = v20;
  v40 = v18;
  v41 = v21;
  v42 = v25;
  return outlined destroy of DistanceSplitModel(v34);
}

uint64_t specialized static DistanceSplitModel.== infix(_:_:)(unsigned __int8 *a1, double *a2)
{
  result = 0;
  if (*a1 == *a2 && *(a1 + 1) == *(a2 + 1) && *(a1 + 2) == a2[2])
  {
    v4 = *(a1 + 5);
    v5 = *(a1 + 6);
    v6 = a1[56];
    v7 = a1[57];
    v8 = *(a2 + 56);
    v9 = *(a2 + 57);
    if (a1[32])
    {
      if (!*(a2 + 32))
      {
        return 0;
      }
    }

    else
    {
      if (*(a1 + 3) == a2[3])
      {
        v10 = *(a2 + 32);
      }

      else
      {
        v10 = 1;
      }

      if (v10)
      {
        return 0;
      }
    }

    if (v4 == *(a2 + 5) && v5 == *(a2 + 6))
    {
      if (v6 != v8)
      {
        return 0;
      }

      return v7 ^ v9 ^ 1u;
    }

    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
    result = 0;
    if ((v11 & 1) != 0 && ((v6 ^ v8) & 1) == 0)
    {
      return v7 ^ v9 ^ 1u;
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type DistanceSplitModel.CodingKeys and conformance DistanceSplitModel.CodingKeys()
{
  result = lazy protocol witness table cache variable for type DistanceSplitModel.CodingKeys and conformance DistanceSplitModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type DistanceSplitModel.CodingKeys and conformance DistanceSplitModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DistanceSplitModel.CodingKeys and conformance DistanceSplitModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DistanceSplitModel.CodingKeys and conformance DistanceSplitModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type DistanceSplitModel.CodingKeys and conformance DistanceSplitModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DistanceSplitModel.CodingKeys and conformance DistanceSplitModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DistanceSplitModel.CodingKeys and conformance DistanceSplitModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type DistanceSplitModel.CodingKeys and conformance DistanceSplitModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DistanceSplitModel.CodingKeys and conformance DistanceSplitModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DistanceSplitModel.CodingKeys and conformance DistanceSplitModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type DistanceSplitModel.CodingKeys and conformance DistanceSplitModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DistanceSplitModel.CodingKeys and conformance DistanceSplitModel.CodingKeys);
  }

  return result;
}

unint64_t instantiation function for generic protocol witness table for DistanceSplitModel(void *a1)
{
  a1[1] = lazy protocol witness table accessor for type DistanceSplitModel and conformance DistanceSplitModel();
  a1[2] = lazy protocol witness table accessor for type DistanceSplitModel and conformance DistanceSplitModel();
  result = lazy protocol witness table accessor for type DistanceSplitModel and conformance DistanceSplitModel();
  a1[3] = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type DistanceSplitModel and conformance DistanceSplitModel()
{
  result = lazy protocol witness table cache variable for type DistanceSplitModel and conformance DistanceSplitModel;
  if (!lazy protocol witness table cache variable for type DistanceSplitModel and conformance DistanceSplitModel)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DistanceSplitModel and conformance DistanceSplitModel);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DistanceSplitModel and conformance DistanceSplitModel;
  if (!lazy protocol witness table cache variable for type DistanceSplitModel and conformance DistanceSplitModel)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DistanceSplitModel and conformance DistanceSplitModel);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DistanceSplitModel and conformance DistanceSplitModel;
  if (!lazy protocol witness table cache variable for type DistanceSplitModel and conformance DistanceSplitModel)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DistanceSplitModel and conformance DistanceSplitModel);
  }

  return result;
}

__n128 __swift_memcpy58_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 42) = *(a2 + 42);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for DistanceSplitModel(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 58))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 48);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for DistanceSplitModel(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 58) = 1;
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
      *(result + 48) = (a2 - 1);
      return result;
    }

    *(result + 58) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t specialized DistanceSplitModel.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7079547472656C61 && a2 == 0xE900000000000065;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7865646E69 && a2 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x647574696E67616DLL && a2 == 0xE900000000000065 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6E6F697461727564 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 1953066613 && a2 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6D726F4665636170 && a2 == 0xEA00000000007461 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000012 && 0x8000000274C70010 == a2)
  {

    return 6;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

WorkoutAnnouncements::HalfwayGoalCompletionModel __swiftcall HalfwayGoalCompletionModel.init(magnitude:unit:)(Swift::Double magnitude, Swift::String unit)
{
  *v2 = 2;
  *(v2 + 8) = magnitude;
  *(v2 + 16) = unit;
  result.alertType = unit._countAndFlagsBits;
  result.unit._countAndFlagsBits = unit._object;
  result.magnitude = magnitude;
  return result;
}

uint64_t static HalfwayGoalCompletionModel.== infix(_:_:)(double *a1, double *a2)
{
  if (*a1 != *a2 || a1[1] != a2[1])
  {
    return 0;
  }

  if (*(a1 + 2) == *(a2 + 2) && *(a1 + 3) == *(a2 + 3))
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)();
  }
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance HalfwayGoalCompletionModel.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type HalfwayGoalCompletionModel.CodingKeys and conformance HalfwayGoalCompletionModel.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance HalfwayGoalCompletionModel.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type HalfwayGoalCompletionModel.CodingKeys and conformance HalfwayGoalCompletionModel.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t HalfwayGoalCompletionModel.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy20WorkoutAnnouncements26HalfwayGoalCompletionModelV10CodingKeys33_76BF45DAE8A43A88A31E1C1968255C13LLOGMd, &_ss22KeyedEncodingContainerVy20WorkoutAnnouncements26HalfwayGoalCompletionModelV10CodingKeys33_76BF45DAE8A43A88A31E1C1968255C13LLOGMR);
  v5 = *(v4 - 8);
  v6 = (*(v5 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v8 = v14 - v7;
  v9 = *v1;
  v10 = *(v1 + 1);
  v11 = *(v1 + 2);
  v14[1] = *(v1 + 3);
  v14[2] = v11;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type HalfwayGoalCompletionModel.CodingKeys and conformance HalfwayGoalCompletionModel.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v18 = v9;
  v17 = 0;
  lazy protocol witness table accessor for type VoiceFeedbackAlertType and conformance VoiceFeedbackAlertType();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v16 = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    v15 = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v5 + 8))(v8, v4);
}

uint64_t HalfwayGoalCompletionModel.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy20WorkoutAnnouncements26HalfwayGoalCompletionModelV10CodingKeys33_76BF45DAE8A43A88A31E1C1968255C13LLOGMd, &_ss22KeyedDecodingContainerVy20WorkoutAnnouncements26HalfwayGoalCompletionModelV10CodingKeys33_76BF45DAE8A43A88A31E1C1968255C13LLOGMR);
  v6 = *(v5 - 8);
  v7 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v9 = &v18[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type HalfwayGoalCompletionModel.CodingKeys and conformance HalfwayGoalCompletionModel.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  v18[14] = 0;
  lazy protocol witness table accessor for type VoiceFeedbackAlertType and conformance VoiceFeedbackAlertType();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v11 = v18[15];
  v18[13] = 1;
  KeyedDecodingContainer.decode(_:forKey:)();
  v13 = v12;
  v18[12] = 2;
  v14 = KeyedDecodingContainer.decode(_:forKey:)();
  v16 = v15;
  (*(v6 + 8))(v9, v5);
  *a2 = v11;
  *(a2 + 8) = v13;
  *(a2 + 16) = v14;
  *(a2 + 24) = v16;

  __swift_destroy_boxed_opaque_existential_0Tm(a1);
}

unint64_t lazy protocol witness table accessor for type HalfwayGoalCompletionModel.CodingKeys and conformance HalfwayGoalCompletionModel.CodingKeys()
{
  result = lazy protocol witness table cache variable for type HalfwayGoalCompletionModel.CodingKeys and conformance HalfwayGoalCompletionModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type HalfwayGoalCompletionModel.CodingKeys and conformance HalfwayGoalCompletionModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HalfwayGoalCompletionModel.CodingKeys and conformance HalfwayGoalCompletionModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type HalfwayGoalCompletionModel.CodingKeys and conformance HalfwayGoalCompletionModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type HalfwayGoalCompletionModel.CodingKeys and conformance HalfwayGoalCompletionModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HalfwayGoalCompletionModel.CodingKeys and conformance HalfwayGoalCompletionModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type HalfwayGoalCompletionModel.CodingKeys and conformance HalfwayGoalCompletionModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type HalfwayGoalCompletionModel.CodingKeys and conformance HalfwayGoalCompletionModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HalfwayGoalCompletionModel.CodingKeys and conformance HalfwayGoalCompletionModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type HalfwayGoalCompletionModel.CodingKeys and conformance HalfwayGoalCompletionModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type HalfwayGoalCompletionModel.CodingKeys and conformance HalfwayGoalCompletionModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HalfwayGoalCompletionModel.CodingKeys and conformance HalfwayGoalCompletionModel.CodingKeys);
  }

  return result;
}

unint64_t instantiation function for generic protocol witness table for HalfwayGoalCompletionModel(void *a1)
{
  a1[1] = lazy protocol witness table accessor for type HalfwayGoalCompletionModel and conformance HalfwayGoalCompletionModel();
  a1[2] = lazy protocol witness table accessor for type HalfwayGoalCompletionModel and conformance HalfwayGoalCompletionModel();
  result = lazy protocol witness table accessor for type HalfwayGoalCompletionModel and conformance HalfwayGoalCompletionModel();
  a1[3] = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type HalfwayGoalCompletionModel and conformance HalfwayGoalCompletionModel()
{
  result = lazy protocol witness table cache variable for type HalfwayGoalCompletionModel and conformance HalfwayGoalCompletionModel;
  if (!lazy protocol witness table cache variable for type HalfwayGoalCompletionModel and conformance HalfwayGoalCompletionModel)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HalfwayGoalCompletionModel and conformance HalfwayGoalCompletionModel);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type HalfwayGoalCompletionModel and conformance HalfwayGoalCompletionModel;
  if (!lazy protocol witness table cache variable for type HalfwayGoalCompletionModel and conformance HalfwayGoalCompletionModel)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HalfwayGoalCompletionModel and conformance HalfwayGoalCompletionModel);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type HalfwayGoalCompletionModel and conformance HalfwayGoalCompletionModel;
  if (!lazy protocol witness table cache variable for type HalfwayGoalCompletionModel and conformance HalfwayGoalCompletionModel)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HalfwayGoalCompletionModel and conformance HalfwayGoalCompletionModel);
  }

  return result;
}

WorkoutAnnouncements::VoiceFeedbackAlertType_optional __swiftcall VoiceFeedbackAlertType.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 0;
  v3 = 7;
  switch(rawValue)
  {
    case 0:
      goto LABEL_19;
    case 1:
      v2 = 1;
      goto LABEL_19;
    case 2:
      v2 = 2;
      goto LABEL_19;
    case 3:
      v2 = 3;
      goto LABEL_19;
    case 4:
      v2 = 4;
      goto LABEL_19;
    case 5:
      v2 = 5;
      goto LABEL_19;
    case 6:
      v2 = 6;
LABEL_19:
      v3 = v2;
      goto LABEL_20;
    case 7:
LABEL_20:
      *v1 = v3;
      break;
    case 8:
      *v1 = 8;
      break;
    case 9:
      *v1 = 9;
      break;
    case 10:
      *v1 = 10;
      break;
    case 11:
      *v1 = 11;
      break;
    case 12:
      *v1 = 12;
      break;
    case 13:
      *v1 = 13;
      break;
    case 14:
      *v1 = 14;
      break;
    case 15:
      *v1 = 15;
      break;
    case 16:
      *v1 = 16;
      break;
    case 17:
      *v1 = 17;
      break;
    case 18:
      *v1 = 18;
      break;
    case 19:
      *v1 = 19;
      break;
    case 20:
      *v1 = 20;
      break;
    case 21:
      *v1 = 21;
      break;
    case 22:
      *v1 = 22;
      break;
    case 23:
      *v1 = 23;
      break;
    case 24:
      *v1 = 24;
      break;
    default:
      *v1 = 25;
      break;
  }

  return rawValue;
}

unint64_t instantiation function for generic protocol witness table for VoiceFeedbackAlertType(uint64_t a1)
{
  result = lazy protocol witness table accessor for type VoiceFeedbackAlertType and conformance VoiceFeedbackAlertType();
  *(a1 + 8) = result;
  return result;
}

uint64_t getEnumTagSinglePayload for VoiceFeedbackAlertType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xE8)
  {
    goto LABEL_17;
  }

  if (a2 + 24 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 24) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 24;
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

      return (*a1 | (v4 << 8)) - 24;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 24;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x19;
  v8 = v6 - 25;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for VoiceFeedbackAlertType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 24 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 24) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xE8)
  {
    v4 = 0;
  }

  if (a2 > 0xE7)
  {
    v5 = ((a2 - 232) >> 8) + 1;
    *result = a2 + 24;
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
    *result = a2 + 24;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t WorkoutReminderControlsFlow.execute(completion:)()
{
  v2 = *v0;
  v3 = *(v0 + 8);
  lazy protocol witness table accessor for type WorkoutReminderControlsFlow and conformance WorkoutReminderControlsFlow();
  return Flow.deferToExecuteAsync(_:)();
}

unint64_t lazy protocol witness table accessor for type WorkoutReminderControlsFlow and conformance WorkoutReminderControlsFlow()
{
  result = lazy protocol witness table cache variable for type WorkoutReminderControlsFlow and conformance WorkoutReminderControlsFlow;
  if (!lazy protocol witness table cache variable for type WorkoutReminderControlsFlow and conformance WorkoutReminderControlsFlow)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkoutReminderControlsFlow and conformance WorkoutReminderControlsFlow);
  }

  return result;
}

uint64_t WorkoutReminderControlsFlow.execute()(uint64_t a1)
{
  v1[5] = a1;
  v2 = type metadata accessor for Logger();
  v1[6] = v2;
  v3 = *(v2 - 8);
  v1[7] = v3;
  v4 = *(v3 + 64) + 15;
  v1[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](WorkoutReminderControlsFlow.execute(), 0, 0);
}

uint64_t WorkoutReminderControlsFlow.execute()()
{
  v18 = v0;
  v2 = v0[7];
  v1 = v0[8];
  v3 = v0[6];
  v4 = Logger.workout.unsafeMutableAddressor();
  swift_beginAccess();
  (*(v2 + 16))(v1, v4, v3);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();
  v7 = os_log_type_enabled(v5, v6);
  v9 = v0[7];
  v8 = v0[8];
  v10 = v0[6];
  if (v7)
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v17 = v12;
    *v11 = 136315138;
    *(v11 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001BLL, 0x8000000274C6D810, &v17);
    _os_log_impl(&dword_274C46000, v5, v6, "%s should only be called on Apple Watch", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v12);
    MEMORY[0x277C67550](v12, -1, -1);
    MEMORY[0x277C67550](v11, -1, -1);
  }

  (*(v9 + 8))(v8, v10);
  v13 = v0[8];
  v14 = v0[5];
  static ExecuteResponse.complete()();

  v15 = v0[1];

  return v15();
}

uint64_t protocol witness for Flow.execute(completion:) in conformance WorkoutReminderControlsFlow()
{
  v2 = *v0;
  v3 = *(v0 + 8);
  return Flow.deferToExecuteAsync(_:)();
}

uint64_t protocol witness for Flow.execute() in conformance WorkoutReminderControlsFlow(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = protocol witness for Flow.execute() in conformance VoiceFeedbackAnnouncementFlow;

  return WorkoutReminderControlsFlow.execute()(a1);
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for WorkoutReminderControlsFlow(uint64_t a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for WorkoutReminderControlsFlow(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t protocol witness for CodingKey.stringValue.getter in conformance LapCompletionModel.CodingKeys()
{
  v1 = *v0;
  v2 = 0x7079547472656C61;
  v3 = 0x647574696E67616DLL;
  v4 = 1953066613;
  if (v1 != 3)
  {
    v4 = 0x6D726F4665636170;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x7865646E69;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance LapCompletionModel.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = specialized LapCompletionModel.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance LapCompletionModel.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type LapCompletionModel.CodingKeys and conformance LapCompletionModel.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance LapCompletionModel.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type LapCompletionModel.CodingKeys and conformance LapCompletionModel.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t LapCompletionModel.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy20WorkoutAnnouncements18LapCompletionModelV10CodingKeys33_FB2587733EE37CA8C13020109A03CBB7LLOGMd, &_ss22KeyedEncodingContainerVy20WorkoutAnnouncements18LapCompletionModelV10CodingKeys33_FB2587733EE37CA8C13020109A03CBB7LLOGMR);
  v5 = *(v4 - 8);
  v6 = (*(v5 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v8 = &v16 - v7;
  v9 = *v1;
  v10 = *(v1 + 1);
  v11 = *(v1 + 2);
  v12 = *(v1 + 4);
  v19 = *(v1 + 3);
  v20 = v10;
  v18 = v12;
  v17 = v1[40];
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type LapCompletionModel.CodingKeys and conformance LapCompletionModel.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v27 = v9;
  v26 = 0;
  lazy protocol witness table accessor for type VoiceFeedbackAlertType and conformance VoiceFeedbackAlertType();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v14 = v17;
    v25 = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    v24 = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
    v23 = 3;
    KeyedEncodingContainer.encode(_:forKey:)();
    v22 = v14;
    v21 = 4;
    lazy protocol witness table accessor for type VoiceFeedbackPaceFormat and conformance VoiceFeedbackPaceFormat();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v5 + 8))(v8, v4);
}

uint64_t LapCompletionModel.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy20WorkoutAnnouncements18LapCompletionModelV10CodingKeys33_FB2587733EE37CA8C13020109A03CBB7LLOGMd, &_ss22KeyedDecodingContainerVy20WorkoutAnnouncements18LapCompletionModelV10CodingKeys33_FB2587733EE37CA8C13020109A03CBB7LLOGMR);
  v6 = *(v5 - 8);
  v7 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v9 = &v19 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type LapCompletionModel.CodingKeys and conformance LapCompletionModel.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  v27 = 0;
  lazy protocol witness table accessor for type VoiceFeedbackAlertType and conformance VoiceFeedbackAlertType();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v11 = v28;
  v26 = 1;
  v12 = KeyedDecodingContainer.decode(_:forKey:)();
  v25 = 2;
  KeyedDecodingContainer.decode(_:forKey:)();
  v14 = v13;
  v24 = 3;
  v20 = KeyedDecodingContainer.decode(_:forKey:)();
  v21 = v15;
  v22 = 4;
  lazy protocol witness table accessor for type VoiceFeedbackPaceFormat and conformance VoiceFeedbackPaceFormat();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v6 + 8))(v9, v5);
  v16 = v23;
  *a2 = v11;
  *(a2 + 8) = v12;
  *(a2 + 16) = v14;
  v17 = v21;
  *(a2 + 24) = v20;
  *(a2 + 32) = v17;
  *(a2 + 40) = v16;

  __swift_destroy_boxed_opaque_existential_0Tm(a1);
}

uint64_t specialized static LapCompletionModel.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  result = 0;
  if (*a1 == *a2 && *(a1 + 1) == *(a2 + 1) && *(a1 + 2) == *(a2 + 2))
  {
    v4 = a1[40];
    v5 = a2[40];
    if (*(a1 + 3) == *(a2 + 3) && *(a1 + 4) == *(a2 + 4))
    {
      return v4 ^ v5 ^ 1u;
    }

    v6 = *(a1 + 4);
    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();
    result = 0;
    if (v7)
    {
      return v4 ^ v5 ^ 1u;
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type LapCompletionModel.CodingKeys and conformance LapCompletionModel.CodingKeys()
{
  result = lazy protocol witness table cache variable for type LapCompletionModel.CodingKeys and conformance LapCompletionModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type LapCompletionModel.CodingKeys and conformance LapCompletionModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LapCompletionModel.CodingKeys and conformance LapCompletionModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type LapCompletionModel.CodingKeys and conformance LapCompletionModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type LapCompletionModel.CodingKeys and conformance LapCompletionModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LapCompletionModel.CodingKeys and conformance LapCompletionModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type LapCompletionModel.CodingKeys and conformance LapCompletionModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type LapCompletionModel.CodingKeys and conformance LapCompletionModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LapCompletionModel.CodingKeys and conformance LapCompletionModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type LapCompletionModel.CodingKeys and conformance LapCompletionModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type LapCompletionModel.CodingKeys and conformance LapCompletionModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LapCompletionModel.CodingKeys and conformance LapCompletionModel.CodingKeys);
  }

  return result;
}

unint64_t instantiation function for generic protocol witness table for LapCompletionModel(void *a1)
{
  a1[1] = lazy protocol witness table accessor for type LapCompletionModel and conformance LapCompletionModel();
  a1[2] = lazy protocol witness table accessor for type LapCompletionModel and conformance LapCompletionModel();
  result = lazy protocol witness table accessor for type LapCompletionModel and conformance LapCompletionModel();
  a1[3] = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type LapCompletionModel and conformance LapCompletionModel()
{
  result = lazy protocol witness table cache variable for type LapCompletionModel and conformance LapCompletionModel;
  if (!lazy protocol witness table cache variable for type LapCompletionModel and conformance LapCompletionModel)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LapCompletionModel and conformance LapCompletionModel);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type LapCompletionModel and conformance LapCompletionModel;
  if (!lazy protocol witness table cache variable for type LapCompletionModel and conformance LapCompletionModel)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LapCompletionModel and conformance LapCompletionModel);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type LapCompletionModel and conformance LapCompletionModel;
  if (!lazy protocol witness table cache variable for type LapCompletionModel and conformance LapCompletionModel)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LapCompletionModel and conformance LapCompletionModel);
  }

  return result;
}

__n128 __swift_memcpy41_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for LapCompletionModel(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 41))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for LapCompletionModel(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 41) = 1;
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
      *(result + 32) = (a2 - 1);
      return result;
    }

    *(result + 41) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for LapCompletionModel.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for LapCompletionModel.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t specialized LapCompletionModel.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7079547472656C61 && a2 == 0xE900000000000065;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7865646E69 && a2 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x647574696E67616DLL && a2 == 0xE900000000000065 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 1953066613 && a2 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6D726F4665636170 && a2 == 0xEA00000000007461)
  {

    return 4;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t WorkoutReminderAnnouncementFlow.__allocating_init(flowConfig:deviceResolutionService:)(__int128 *a1, __int128 *a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  v7 = swift_allocObject();
  type metadata accessor for WorkoutReminderAnnouncementFlow.State(0);
  swift_storeEnumTagMultiPayload();
  _s27SiriVirtualDeviceResolution0cD9Providing_pWOb_0(a1, v7 + OBJC_IVAR____TtC20WorkoutAnnouncements31WorkoutReminderAnnouncementFlow_flowConfig);
  _s27SiriVirtualDeviceResolution0cD9Providing_pWOb_0(a2, v7 + OBJC_IVAR____TtC20WorkoutAnnouncements31WorkoutReminderAnnouncementFlow_deviceResolutionService);
  return v7;
}

uint64_t WorkoutReminderAnnouncementFlow.init(flowConfig:deviceResolutionService:)(__int128 *a1, __int128 *a2)
{
  type metadata accessor for WorkoutReminderAnnouncementFlow.State(0);
  swift_storeEnumTagMultiPayload();
  _s27SiriVirtualDeviceResolution0cD9Providing_pWOb_0(a1, v2 + OBJC_IVAR____TtC20WorkoutAnnouncements31WorkoutReminderAnnouncementFlow_flowConfig);
  _s27SiriVirtualDeviceResolution0cD9Providing_pWOb_0(a2, v2 + OBJC_IVAR____TtC20WorkoutAnnouncements31WorkoutReminderAnnouncementFlow_deviceResolutionService);
  return v2;
}

uint64_t _s27SiriVirtualDeviceResolution0cD9Providing_pWOb_0(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t WorkoutReminderAnnouncementFlow.on(input:)()
{
  v0 = type metadata accessor for WorkoutReminderAnnouncementFlow.State(0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0);
  v3 = v30 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for Parse();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Parse.DirectInvocation();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = v30 - v15;
  Input.parse.getter();
  if ((*(v5 + 88))(v8, v4) != *MEMORY[0x277D5C150])
  {
    (*(v5 + 8))(v8, v4);
    return 0;
  }

  (*(v5 + 96))(v8, v4);
  (*(v10 + 32))(v16, v8, v9);
  v17 = Parse.DirectInvocation.identifier.getter();
  if (one-time initialization token for identifier != -1)
  {
    v28 = v17;
    v29 = v18;
    swift_once();
    v17 = v28;
    v18 = v29;
  }

  if (v17 == static WorkoutReminderAnnouncementDirectInvocation.identifier && v18 == *algn_28099C0A8)
  {
  }

  else
  {
    v20 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v20 & 1) == 0)
    {
      (*(v10 + 8))(v16, v9);
      return 0;
    }
  }

  (*(v10 + 16))(v14, v16, v9);
  WorkoutReminderAnnouncementDirectInvocation.init(directInvocation:)(v14, &v31);
  (*(v10 + 8))(v16, v9);
  if (v31)
  {
    v21 = v35;
    v22 = v34;
    v23 = v33;
    v24 = v32;
    *v3 = v31;
    *(v3 + 8) = v24;
    v3[24] = v23 & 1;
    *(v3 + 4) = v22;
    *(v3 + 5) = v21;
    swift_storeEnumTagMultiPayload();
    v25 = OBJC_IVAR____TtC20WorkoutAnnouncements31WorkoutReminderAnnouncementFlow_state;
    v26 = v30[1];
    swift_beginAccess();
    outlined assign with take of WorkoutReminderAnnouncementFlow.State(v3, v26 + v25);
    swift_endAccess();
    return 1;
  }

  return 0;
}

uint64_t WorkoutReminderAnnouncementFlow.execute(completion:)()
{
  type metadata accessor for WorkoutReminderAnnouncementFlow(0);
  lazy protocol witness table accessor for type WorkoutReminderAnnouncementFlow and conformance WorkoutReminderAnnouncementFlow(&lazy protocol witness table cache variable for type WorkoutReminderAnnouncementFlow and conformance WorkoutReminderAnnouncementFlow, type metadata accessor for WorkoutReminderAnnouncementFlow);
  return Flow.deferToExecuteAsync(_:)();
}

uint64_t WorkoutReminderAnnouncementFlow.execute()(uint64_t a1)
{
  v2[52] = a1;
  v2[53] = v1;
  v2[54] = *v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow12PromptResultOy20WorkoutAnnouncements0F32ReminderControlsDirectInvocationV6ActionOGMd, &_s11SiriKitFlow12PromptResultOy20WorkoutAnnouncements0F32ReminderControlsDirectInvocationV6ActionOGMR);
  v2[55] = v3;
  v4 = *(v3 - 8);
  v2[56] = v4;
  v5 = *(v4 + 64) + 15;
  v2[57] = swift_task_alloc();
  v6 = *(*(type metadata accessor for CATOption() - 8) + 64) + 15;
  v2[58] = swift_task_alloc();
  v7 = type metadata accessor for Logger();
  v2[59] = v7;
  v8 = *(v7 - 8);
  v2[60] = v8;
  v9 = *(v8 + 64) + 15;
  v2[61] = swift_task_alloc();
  v2[62] = swift_task_alloc();
  v10 = type metadata accessor for WorkoutReminderAnnouncementFlow.State(0);
  v2[63] = v10;
  v11 = *(*(v10 - 8) + 64) + 15;
  v2[64] = swift_task_alloc();

  return MEMORY[0x2822009F8](WorkoutReminderAnnouncementFlow.execute(), 0, 0);
}

{
  v2 = *(*v1 + 536);
  v4 = *v1;
  *(*v1 + 544) = a1;

  return MEMORY[0x2822009F8](WorkoutReminderAnnouncementFlow.execute(), 0, 0);
}

uint64_t WorkoutReminderAnnouncementFlow.execute()()
{
  v87 = v0;
  v1 = *(v0 + 504);
  v2 = *(v0 + 512);
  v3 = *(v0 + 424);
  v4 = OBJC_IVAR____TtC20WorkoutAnnouncements31WorkoutReminderAnnouncementFlow_state;
  swift_beginAccess();
  outlined init with copy of WorkoutReminderAnnouncementFlow.State(v3 + v4, v2);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v6 = *(v0 + 512);
      v8 = *(v0 + 448);
      v7 = *(v0 + 456);
      v9 = *(v0 + 440);
      v10 = (v6 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow12PromptResultOy20WorkoutAnnouncements0F32ReminderControlsDirectInvocationV6ActionOG_AD0fh12AnnouncementjK0V2totMd, &_s11SiriKitFlow12PromptResultOy20WorkoutAnnouncements0F32ReminderControlsDirectInvocationV6ActionOG_AD0fh12AnnouncementjK0V2totMR) + 48));
      v11 = *v10;
      *(v0 + 520) = *v10;
      v12 = v10[1];
      v13 = v10[2];
      *(v0 + 528) = v13;
      v14 = *(v10 + 24);
      v15 = v10[4];
      v16 = v10[5];
      (*(v8 + 32))(v7, v6, v9);
      *(v0 + 64) = v11;
      *(v0 + 72) = v12;
      *(v0 + 80) = v13;
      *(v0 + 88) = v14;
      *(v0 + 96) = v15;
      *(v0 + 104) = v16;
      v17 = swift_task_alloc();
      *(v0 + 536) = v17;
      *v17 = v0;
      v17[1] = WorkoutReminderAnnouncementFlow.execute();
      v18 = *(v0 + 456);
      v19 = *(v0 + 424);

      return WorkoutReminderAnnouncementFlow.handleResponse(_:to:)(v18, (v0 + 64));
    }

    v59 = *(v0 + 496);
    v60 = *(v0 + 472);
    v61 = *(v0 + 480);
    v62 = Logger.workout.unsafeMutableAddressor();
    swift_beginAccess();
    (*(v61 + 16))(v59, v62, v60);
    v63 = Logger.logObject.getter();
    v64 = static os_log_type_t.error.getter();
    v65 = os_log_type_enabled(v63, v64);
    v66 = *(v0 + 496);
    v68 = *(v0 + 472);
    v67 = *(v0 + 480);
    if (v65)
    {
      v69 = *(v0 + 432);
      v85 = *(v0 + 496);
      v70 = swift_slowAlloc();
      v71 = swift_slowAlloc();
      v86[0] = v71;
      *v70 = 136315394;
      v72 = _typeName(_:qualified:)();
      v74 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v72, v73, v86);

      *(v70 + 4) = v74;
      *(v70 + 12) = 2080;
      v75 = _typeName(_:qualified:)();
      v77 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v75, v76, v86);

      *(v70 + 14) = v77;
      _os_log_impl(&dword_274C46000, v63, v64, "%s.execute() called before %s.on(input:) returned true", v70, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x277C67550](v71, -1, -1);
      MEMORY[0x277C67550](v70, -1, -1);

      (*(v67 + 8))(v85, v68);
    }

    else
    {

      (*(v67 + 8))(v66, v68);
    }

    v78 = *(v0 + 416);
    static ExecuteResponse.complete()();
  }

  else
  {
    v21 = *(v0 + 512);
    v23 = *(v0 + 480);
    v22 = *(v0 + 488);
    v24 = *(v0 + 472);
    v26 = v21[1];
    v25 = v21[2];
    *(v0 + 16) = *v21;
    *(v0 + 32) = v26;
    *(v0 + 48) = v25;
    v27 = Logger.workout.unsafeMutableAddressor();
    swift_beginAccess();
    (*(v23 + 16))(v22, v27, v24);
    outlined init with copy of WorkoutReminderAnnouncementDirectInvocation(v0 + 16, v0 + 112);
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.debug.getter();
    outlined destroy of WorkoutReminderAnnouncementDirectInvocation(v0 + 16);
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      *v30 = 138412290;
      v32 = *(v0 + 16);
      *(v30 + 4) = v32;
      *v31 = v32;
      v33 = v32;
      _os_log_impl(&dword_274C46000, v28, v29, "Making an annoucement for %@", v30, 0xCu);
      outlined destroy of AceOutput?(v31, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x277C67550](v31, -1, -1);
      MEMORY[0x277C67550](v30, -1, -1);
    }

    v35 = *(v0 + 480);
    v34 = *(v0 + 488);
    v37 = *(v0 + 464);
    v36 = *(v0 + 472);
    v38 = *(v0 + 416);
    v39 = *(v0 + 424);

    (*(v35 + 8))(v34, v36);
    v40 = type metadata accessor for WorkoutRemindersCATPatternsExecutor();
    outlined init with copy of WorkoutReminderAnnouncementDirectInvocation(v0 + 16, v0 + 160);
    static CATOption.defaultMode.getter();
    v41 = CATWrapper.__allocating_init(options:globals:)();
    v42 = type metadata accessor for ResponseFactory();
    v43 = *(v42 + 48);
    v44 = *(v42 + 52);
    swift_allocObject();
    v45 = ResponseFactory.init()();
    v46 = MEMORY[0x277D5BD58];
    *(v0 + 280) = v42;
    *(v0 + 288) = v46;
    *(v0 + 256) = v45;
    *(v0 + 320) = v40;
    *(v0 + 328) = &protocol witness table for WorkoutRemindersCATPatternsExecutor;
    *(v0 + 296) = v41;
    type metadata accessor for WorkoutReminderPromptStrategy();
    v47 = swift_allocObject();
    v48 = __swift_mutable_project_boxed_opaque_existential_1(v0 + 296, v40);
    v49 = *(v40 - 8);
    v50 = *(v49 + 64) + 15;
    v51 = swift_task_alloc();
    (*(v49 + 16))(v51, v48, v40);
    v52 = *v51;
    *(v47 + 88) = v40;
    *(v47 + 96) = &protocol witness table for WorkoutRemindersCATPatternsExecutor;
    *(v47 + 64) = v52;
    v53 = *(v0 + 48);
    *(v47 + 32) = *(v0 + 32);
    *(v47 + 48) = v53;
    *(v47 + 16) = *(v0 + 16);
    _s27SiriVirtualDeviceResolution0cD9Providing_pWOb_0((v0 + 256), v47 + 104);
    __swift_destroy_boxed_opaque_existential_0Tm((v0 + 296));

    static OutputPublisherFactory.makeOutputPublisherAsync()();
    v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow014PromptForValueC5AsyncCy20WorkoutAnnouncements0H32ReminderControlsDirectInvocationV6ActionOGMd, &_s11SiriKitFlow014PromptForValueC5AsyncCy20WorkoutAnnouncements0H32ReminderControlsDirectInvocationV6ActionOGMR);
    v55 = *(v54 + 48);
    v56 = *(v54 + 52);
    swift_allocObject();
    lazy protocol witness table accessor for type WorkoutReminderAnnouncementFlow and conformance WorkoutReminderAnnouncementFlow(&lazy protocol witness table cache variable for type WorkoutReminderPromptStrategy and conformance WorkoutReminderPromptStrategy, type metadata accessor for WorkoutReminderPromptStrategy);
    *(v0 + 408) = PromptForValueFlowAsync.init<A>(strategy:outputPublisher:)();
    v57 = swift_allocObject();
    *(v57 + 16) = v39;
    v58 = *(v0 + 32);
    *(v57 + 24) = *(v0 + 16);
    *(v57 + 40) = v58;
    *(v57 + 56) = *(v0 + 48);
    outlined init with copy of WorkoutReminderAnnouncementDirectInvocation(v0 + 16, v0 + 208);
    lazy protocol witness table accessor for type PromptForValueFlowAsync<WorkoutReminderControlsDirectInvocation.Action> and conformance PromptForValueFlowAsync<A>(&lazy protocol witness table cache variable for type PromptForValueFlowAsync<WorkoutReminderControlsDirectInvocation.Action> and conformance PromptForValueFlowAsync<A>, &_s11SiriKitFlow014PromptForValueC5AsyncCy20WorkoutAnnouncements0H32ReminderControlsDirectInvocationV6ActionOGMd, &_s11SiriKitFlow014PromptForValueC5AsyncCy20WorkoutAnnouncements0H32ReminderControlsDirectInvocationV6ActionOGMR);

    static ExecuteResponse.replan<A>(next:childCompletion:)();
    outlined destroy of WorkoutReminderAnnouncementDirectInvocation(v0 + 16);
  }

  v79 = *(v0 + 512);
  v80 = *(v0 + 488);
  v81 = *(v0 + 496);
  v83 = *(v0 + 456);
  v82 = *(v0 + 464);

  v84 = *(v0 + 8);

  return v84();
}

{
  v1 = v0[66];
  v2 = v0[65];
  v4 = v0[56];
  v3 = v0[57];
  v5 = v0[55];
  v6 = v0[52];
  if (v0[68])
  {
    v7 = v0[68];
    static ExecuteResponse.complete(next:)();
  }

  else
  {
    static ExecuteResponse.complete()();
  }

  (*(v4 + 8))(v3, v5);
  v8 = v0[64];
  v9 = v0[61];
  v10 = v0[62];
  v12 = v0[57];
  v11 = v0[58];

  v13 = v0[1];

  return v13();
}

uint64_t closure #1 in WorkoutReminderAnnouncementFlow.execute()(uint64_t a1, uint64_t a2, _OWORD *a3)
{
  v6 = type metadata accessor for WorkoutReminderAnnouncementFlow.State(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v16[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v10 = &v9[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow12PromptResultOy20WorkoutAnnouncements0F32ReminderControlsDirectInvocationV6ActionOG_AD0fh12AnnouncementjK0V2totMd, &_s11SiriKitFlow12PromptResultOy20WorkoutAnnouncements0F32ReminderControlsDirectInvocationV6ActionOG_AD0fh12AnnouncementjK0V2totMR) + 48)];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow12PromptResultOy20WorkoutAnnouncements0F32ReminderControlsDirectInvocationV6ActionOGMd, &_s11SiriKitFlow12PromptResultOy20WorkoutAnnouncements0F32ReminderControlsDirectInvocationV6ActionOGMR);
  (*(*(v11 - 8) + 16))(v9, a1, v11);
  v12 = a3[1];
  *v10 = *a3;
  *(v10 + 1) = v12;
  *(v10 + 2) = a3[2];
  swift_storeEnumTagMultiPayload();
  v13 = OBJC_IVAR____TtC20WorkoutAnnouncements31WorkoutReminderAnnouncementFlow_state;
  swift_beginAccess();
  outlined init with copy of WorkoutReminderAnnouncementDirectInvocation(a3, v16);
  outlined assign with take of WorkoutReminderAnnouncementFlow.State(v9, a2 + v13);
  return swift_endAccess();
}

uint64_t WorkoutReminderAnnouncementFlow.handleResponse(_:to:)(uint64_t a1, uint64_t *a2)
{
  *(v3 + 200) = a1;
  *(v3 + 208) = v2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow12PromptResultOy20WorkoutAnnouncements0F32ReminderControlsDirectInvocationV6ActionOGMd, &_s11SiriKitFlow12PromptResultOy20WorkoutAnnouncements0F32ReminderControlsDirectInvocationV6ActionOGMR);
  *(v3 + 216) = v5;
  v6 = *(v5 - 8);
  *(v3 + 224) = v6;
  v7 = *(v6 + 64) + 15;
  *(v3 + 232) = swift_task_alloc();
  *(v3 + 240) = swift_task_alloc();
  v8 = type metadata accessor for Logger();
  *(v3 + 248) = v8;
  v9 = *(v8 - 8);
  *(v3 + 256) = v9;
  v10 = *(v9 + 64) + 15;
  *(v3 + 264) = swift_task_alloc();
  v11 = swift_task_alloc();
  v12 = *a2;
  *(v3 + 272) = v11;
  *(v3 + 280) = v12;
  *(v3 + 288) = *(a2 + 1);
  *(v3 + 338) = *(a2 + 24);
  *(v3 + 304) = a2[4];
  *(v3 + 312) = a2[5];

  return MEMORY[0x2822009F8](WorkoutReminderAnnouncementFlow.handleResponse(_:to:), 0, 0);
}

uint64_t WorkoutReminderAnnouncementFlow.handleResponse(_:to:)()
{
  v71 = v0;
  v1 = *(v0 + 272);
  v2 = *(v0 + 248);
  v3 = *(v0 + 256);
  v4 = *(v0 + 240);
  v5 = *(v0 + 216);
  v6 = *(v0 + 224);
  v7 = *(v0 + 200);
  v8 = Logger.workout.unsafeMutableAddressor();
  swift_beginAccess();
  v67 = *(v3 + 16);
  v68 = v8;
  v67(v1, v8, v2);
  v69 = *(v6 + 16);
  v69(v4, v7, v5);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.debug.getter();
  v11 = os_log_type_enabled(v9, v10);
  v12 = *(v0 + 272);
  v13 = *(v0 + 248);
  v14 = *(v0 + 256);
  v15 = *(v0 + 240);
  v17 = *(v0 + 216);
  v16 = *(v0 + 224);
  if (v11)
  {
    v66 = v10;
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v70 = v19;
    *v18 = 136315138;
    lazy protocol witness table accessor for type PromptForValueFlowAsync<WorkoutReminderControlsDirectInvocation.Action> and conformance PromptForValueFlowAsync<A>(&lazy protocol witness table cache variable for type PromptResult<WorkoutReminderControlsDirectInvocation.Action> and conformance PromptResult<A>, &_s11SiriKitFlow12PromptResultOy20WorkoutAnnouncements0F32ReminderControlsDirectInvocationV6ActionOGMd, &_s11SiriKitFlow12PromptResultOy20WorkoutAnnouncements0F32ReminderControlsDirectInvocationV6ActionOGMR);
    v64 = v13;
    v65 = v12;
    v20 = dispatch thunk of CustomStringConvertible.description.getter();
    v22 = v21;
    log = v9;
    v23 = *(v16 + 8);
    v23(v15, v17);
    v24 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v22, &v70);

    *(v18 + 4) = v24;
    _os_log_impl(&dword_274C46000, log, v66, "ExitValue from Workout Reminder prompt: %s", v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v19);
    MEMORY[0x277C67550](v19, -1, -1);
    MEMORY[0x277C67550](v18, -1, -1);

    v25 = v23;
    v26 = *(v14 + 8);
    v26(v65, v64);
  }

  else
  {

    v25 = *(v16 + 8);
    v25(v15, v17);
    v26 = *(v14 + 8);
    v26(v12, v13);
  }

  v27 = *(v0 + 224);
  v28 = *(v0 + 232);
  v29 = *(v0 + 216);
  v69(v28, *(v0 + 200), v29);
  if ((*(v27 + 88))(v28, v29) == *MEMORY[0x277D5BC38])
  {
    v30 = *(v0 + 338);
    v31 = *(v0 + 232);
    v32 = *(v0 + 208);
    (*(*(v0 + 224) + 96))(v31, *(v0 + 216));
    v33 = *v31;
    v34 = (v32 + OBJC_IVAR____TtC20WorkoutAnnouncements31WorkoutReminderAnnouncementFlow_flowConfig);
    v35 = *(v32 + OBJC_IVAR____TtC20WorkoutAnnouncements31WorkoutReminderAnnouncementFlow_flowConfig + 24);
    v36 = v34[4];
    __swift_project_boxed_opaque_existential_1(v34, v35);
    (*(v36 + 8))(v35, v36);
    v37 = *(v0 + 144);
    __swift_project_boxed_opaque_existential_1((v0 + 112), *(v0 + 136));
    LOBYTE(v31) = dispatch thunk of DeviceState.isWatch.getter();
    __swift_destroy_boxed_opaque_existential_0Tm((v0 + 112));
    v38 = *(v0 + 312);
    v40 = *(v0 + 296);
    v39 = *(v0 + 304);
    v42 = *(v0 + 280);
    v41 = *(v0 + 288);
    if (v31)
    {
      *(v0 + 337) = v33;
      *(v0 + 64) = v42;
      *(v0 + 72) = v41;
      *(v0 + 80) = v40;
      *(v0 + 88) = v30;
      *(v0 + 96) = v39;
      *(v0 + 104) = v38;
      v43 = swift_task_alloc();
      *(v0 + 320) = v43;
      *v43 = v0;
      v43[1] = WorkoutReminderAnnouncementFlow.handleResponse(_:to:);
      v44 = *(v0 + 208);

      return WorkoutReminderAnnouncementFlow.handleResponseForLocalControl(_:to:)((v0 + 337), (v0 + 64));
    }

    else
    {
      *(v0 + 336) = v33;
      *(v0 + 16) = v42;
      *(v0 + 24) = v41;
      *(v0 + 32) = v40;
      *(v0 + 40) = v30;
      *(v0 + 48) = v39;
      *(v0 + 56) = v38;
      v61 = swift_task_alloc();
      *(v0 + 328) = v61;
      *v61 = v0;
      v61[1] = WorkoutReminderAnnouncementFlow.handleResponse(_:to:);
      v62 = *(v0 + 208);

      return WorkoutReminderAnnouncementFlow.handleResponseForRemoteControl(_:to:)((v0 + 336), (v0 + 16));
    }
  }

  else
  {
    v46 = *(v0 + 264);
    v47 = *(v0 + 248);
    v48 = *(v0 + 224) + 8;
    v25(*(v0 + 232), *(v0 + 216));
    swift_beginAccess();
    v67(v46, v68, v47);
    v49 = Logger.logObject.getter();
    v50 = static os_log_type_t.error.getter();
    v51 = os_log_type_enabled(v49, v50);
    v53 = *(v0 + 256);
    v52 = *(v0 + 264);
    v54 = *(v0 + 248);
    if (v51)
    {
      v55 = swift_slowAlloc();
      *v55 = 0;
      _os_log_impl(&dword_274C46000, v49, v50, "Did not receive a response from the strategy, treating as an ignore", v55, 2u);
      MEMORY[0x277C67550](v55, -1, -1);
    }

    v26(v52, v54);
    v57 = *(v0 + 264);
    v56 = *(v0 + 272);
    v59 = *(v0 + 232);
    v58 = *(v0 + 240);

    v60 = *(v0 + 8);

    return v60(0);
  }
}

uint64_t WorkoutReminderAnnouncementFlow.handleResponse(_:to:)(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 320);
  v11 = *v1;

  v5 = v3[34];
  v6 = v3[33];
  v7 = v3[30];
  v8 = v3[29];

  v9 = *(v11 + 8);

  return v9(a1);
}

{
  v3 = *v1;
  v4 = *(*v1 + 328);
  v11 = *v1;

  v5 = v3[34];
  v6 = v3[33];
  v7 = v3[30];
  v8 = v3[29];

  v9 = *(v11 + 8);

  return v9(a1);
}

uint64_t WorkoutReminderAnnouncementFlow.handleResponseForLocalControl(_:to:)(_BYTE *a1, uint64_t *a2)
{
  v4 = v2;
  *(v3 + 160) = v4;
  *(v3 + 168) = *v4;
  v7 = type metadata accessor for Logger();
  *(v3 + 176) = v7;
  v8 = *(v7 - 8);
  *(v3 + 184) = v8;
  v9 = *(v8 + 64) + 15;
  v10 = swift_task_alloc();
  *(v3 + 257) = *a1;
  v11 = *a2;
  *(v3 + 192) = v10;
  *(v3 + 200) = v11;
  *(v3 + 208) = *(a2 + 1);
  *(v3 + 258) = *(a2 + 24);
  *(v3 + 224) = a2[4];
  *(v3 + 232) = a2[5];

  return MEMORY[0x2822009F8](WorkoutReminderAnnouncementFlow.handleResponseForLocalControl(_:to:), 0, 0);
}

uint64_t WorkoutReminderAnnouncementFlow.handleResponseForLocalControl(_:to:)()
{
  v31 = v0;
  v1 = (*(v0 + 160) + OBJC_IVAR____TtC20WorkoutAnnouncements31WorkoutReminderAnnouncementFlow_flowConfig);
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  (*(v3 + 8))(v2, v3);
  v4 = *(v0 + 96);
  __swift_project_boxed_opaque_existential_1((v0 + 64), *(v0 + 88));
  v5 = dispatch thunk of DeviceState.isWatch.getter();
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 64));
  if (v5)
  {
    v6 = *(v0 + 232);
    v7 = *(v0 + 224);
    v8 = *(v0 + 258);
    v9 = *(v0 + 200);
    *(v0 + 256) = *(v0 + 257);
    *(v0 + 16) = v9;
    *(v0 + 24) = *(v0 + 208);
    *(v0 + 40) = v8;
    *(v0 + 48) = v7;
    *(v0 + 56) = v6;
    v10 = swift_task_alloc();
    *(v0 + 240) = v10;
    *v10 = v0;
    v10[1] = WorkoutReminderAnnouncementFlow.handleResponseForLocalControl(_:to:);

    return specialized WorkoutReminderAnnouncementFlow.workoutConfirmationResponseFlow(response:to:)((v0 + 256), (v0 + 16));
  }

  else
  {
    v13 = *(v0 + 184);
    v12 = *(v0 + 192);
    v14 = *(v0 + 176);
    v15 = Logger.workout.unsafeMutableAddressor();
    swift_beginAccess();
    (*(v13 + 16))(v12, v15, v14);
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.error.getter();
    v18 = os_log_type_enabled(v16, v17);
    v20 = *(v0 + 184);
    v19 = *(v0 + 192);
    v21 = *(v0 + 176);
    if (v18)
    {
      v22 = *(v0 + 168);
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v30 = v24;
      *v23 = 136315138;
      v25 = _typeName(_:qualified:)();
      v27 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, v26, &v30);

      *(v23 + 4) = v27;
      _os_log_impl(&dword_274C46000, v16, v17, "%s.handleResponseForLocalControl should only be called from a watch", v23, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v24);
      MEMORY[0x277C67550](v24, -1, -1);
      MEMORY[0x277C67550](v23, -1, -1);
    }

    (*(v20 + 8))(v19, v21);
    v28 = *(v0 + 192);

    v29 = *(v0 + 8);

    return v29(0);
  }
}

{
  v1 = *(v0 + 248);
  v2 = *(v0 + 257);
  v3 = [*(v0 + 200) predictionIdentifier];
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;

  *(v0 + 128) = v2;
  *(v0 + 136) = v4;
  *(v0 + 144) = v6;
  lazy protocol witness table accessor for type WorkoutReminderControlsFlow and conformance WorkoutReminderControlsFlow();
  v7 = Flow.eraseToAnyFlow()();
  v8 = *(v0 + 144);

  if (v1)
  {
    v9 = *(v0 + 248);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_274C6DB30;
    *(v10 + 32) = v9;
    *(v10 + 40) = v7;
    type metadata accessor for SequenceFlow();
    swift_allocObject();

    *(v0 + 152) = SequenceFlow.init(with:)();
    lazy protocol witness table accessor for type WorkoutReminderAnnouncementFlow and conformance WorkoutReminderAnnouncementFlow(&lazy protocol witness table cache variable for type SequenceFlow and conformance SequenceFlow, MEMORY[0x277D10CA0]);
    v11 = Flow.eraseToAnyFlow()();

    v7 = v11;
  }

  v12 = *(v0 + 192);

  v13 = *(v0 + 8);

  return v13(v7);
}

uint64_t WorkoutReminderAnnouncementFlow.handleResponseForLocalControl(_:to:)(uint64_t a1)
{
  v2 = *(*v1 + 240);
  v4 = *v1;
  *(*v1 + 248) = a1;

  return MEMORY[0x2822009F8](WorkoutReminderAnnouncementFlow.handleResponseForLocalControl(_:to:), 0, 0);
}

uint64_t WorkoutReminderAnnouncementFlow.handleResponseForRemoteControl(_:to:)(_BYTE *a1, uint64_t *a2)
{
  v4 = v2;
  *(v3 + 256) = v4;
  *(v3 + 264) = *v4;
  v7 = type metadata accessor for Logger();
  *(v3 + 272) = v7;
  v8 = *(v7 - 8);
  *(v3 + 280) = v8;
  v9 = *(v8 + 64) + 15;
  *(v3 + 288) = swift_task_alloc();
  *(v3 + 296) = swift_task_alloc();
  v10 = swift_task_alloc();
  *(v3 + 401) = *a1;
  v11 = *a2;
  *(v3 + 304) = v10;
  *(v3 + 312) = v11;
  *(v3 + 320) = *(a2 + 1);
  *(v3 + 402) = *(a2 + 24);
  *(v3 + 336) = a2[4];
  *(v3 + 344) = a2[5];

  return MEMORY[0x2822009F8](WorkoutReminderAnnouncementFlow.handleResponseForRemoteControl(_:to:), 0, 0);
}

uint64_t WorkoutReminderAnnouncementFlow.handleResponseForRemoteControl(_:to:)()
{
  v39 = v0;
  v1 = *(v0 + 256);
  v2 = OBJC_IVAR____TtC20WorkoutAnnouncements31WorkoutReminderAnnouncementFlow_flowConfig;
  *(v0 + 352) = OBJC_IVAR____TtC20WorkoutAnnouncements31WorkoutReminderAnnouncementFlow_flowConfig;
  v3 = (v1 + v2);
  v4 = *(v1 + v2 + 24);
  v5 = *(v1 + v2 + 32);
  __swift_project_boxed_opaque_existential_1((v1 + v2), v4);
  (*(v5 + 8))(v4, v5);
  v6 = *(v0 + 96);
  __swift_project_boxed_opaque_existential_1((v0 + 64), *(v0 + 88));
  v7 = dispatch thunk of DeviceState.isWatch.getter();
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 64));
  if (v7)
  {
    v8 = *(v0 + 304);
    v9 = *(v0 + 272);
    v10 = *(v0 + 280);
    v11 = Logger.workout.unsafeMutableAddressor();
    swift_beginAccess();
    (*(v10 + 16))(v8, v11, v9);
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.error.getter();
    v14 = os_log_type_enabled(v12, v13);
    v15 = *(v0 + 304);
    v16 = *(v0 + 272);
    v17 = *(v0 + 280);
    if (v14)
    {
      v18 = *(v0 + 264);
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v38[0] = v20;
      *v19 = 136315138;
      v21 = _typeName(_:qualified:)();
      v23 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v21, v22, v38);

      *(v19 + 4) = v23;
      _os_log_impl(&dword_274C46000, v12, v13, "%s.handleResponseForRemoteControl should not be called from a watch", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v20);
      MEMORY[0x277C67550](v20, -1, -1);
      MEMORY[0x277C67550](v19, -1, -1);
    }

    (*(v17 + 8))(v15, v16);
    v25 = *(v0 + 296);
    v24 = *(v0 + 304);
    v26 = *(v0 + 288);

    v27 = *(v0 + 8);

    return v27(0);
  }

  else
  {
    v29 = *(v0 + 401);
    v30 = [*(v0 + 312) predictionIdentifier];
    v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v33 = v32;

    LOBYTE(v38[0]) = v29;
    v38[1] = v31;
    v38[2] = v33;
    v34 = v3[3];
    v35 = v3[4];
    __swift_project_boxed_opaque_existential_1(v3, v34);
    (*(v35 + 8))(v34, v35);
    *(v0 + 360) = WorkoutReminderControlsDirectInvocation.asStartLocalRequest(device:)((v0 + 104));
    __swift_destroy_boxed_opaque_existential_0Tm((v0 + 104));

    v36 = swift_task_alloc();
    *(v0 + 368) = v36;
    *v36 = v0;
    v36[1] = WorkoutReminderAnnouncementFlow.handleResponseForRemoteControl(_:to:);
    v37 = *(v0 + 256);

    return WorkoutReminderAnnouncementFlow.findRemoteIfAvailable()();
  }
}

{
  v51 = v0;
  v1 = *(v0 + 376);
  v2 = *(v0 + 272);
  v3 = *(v0 + 280);
  if (v1)
  {
    v4 = *(v0 + 296);
    v5 = Logger.workout.unsafeMutableAddressor();
    swift_beginAccess();
    (*(v3 + 16))(v4, v5, v2);
    v6 = v1;
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = *(v0 + 376);
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      *v10 = 138412290;
      *(v10 + 4) = v6;
      *v11 = v9;
      v12 = v6;
      _os_log_impl(&dword_274C46000, v7, v8, "Submitting startLocalRequest to remote device: %@", v10, 0xCu);
      outlined destroy of AceOutput?(v11, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x277C67550](v11, -1, -1);
      MEMORY[0x277C67550](v10, -1, -1);
    }

    v14 = *(v0 + 352);
    v13 = *(v0 + 360);
    v15 = *(v0 + 344);
    v47 = *(v0 + 402);
    v48 = *(v0 + 336);
    v46 = *(v0 + 328);
    v45 = *(v0 + 312);
    v16 = *(v0 + 401);
    v17 = *(v0 + 296);
    v18 = *(v0 + 272);
    v19 = *(v0 + 280);
    v20 = *(v0 + 256);

    (*(v19 + 8))(v17, v18);
    v21 = *(v20 + v14 + 24);
    v22 = *(v20 + v14 + 32);
    __swift_project_boxed_opaque_existential_1((v20 + v14), v21);
    (*(v22 + 16))(v21, v22);
    v23 = *(v0 + 176);
    __swift_project_boxed_opaque_existential_1((v0 + 144), *(v0 + 168));
    DeviceUnit.assistantId.getter();
    type metadata accessor for SABaseCommand();
    dispatch thunk of AceServiceInvoker.submitToRemote<A>(_:_:completion:)();

    __swift_destroy_boxed_opaque_existential_0Tm((v0 + 144));
    *(v0 + 400) = v16;
    *(v0 + 16) = v45;
    *(v0 + 32) = v46;
    *(v0 + 40) = v47;
    *(v0 + 48) = v48;
    *(v0 + 56) = v15;
    v24 = swift_task_alloc();
    *(v0 + 384) = v24;
    *v24 = v0;
    v24[1] = WorkoutReminderAnnouncementFlow.handleResponseForRemoteControl(_:to:);

    return specialized WorkoutReminderAnnouncementFlow.workoutConfirmationResponseFlow(response:to:)((v0 + 400), (v0 + 16));
  }

  else
  {
    v26 = *(v0 + 288);
    v27 = Logger.workout.unsafeMutableAddressor();
    swift_beginAccess();
    (*(v3 + 16))(v26, v27, v2);
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.error.getter();
    v30 = os_log_type_enabled(v28, v29);
    v31 = *(v0 + 360);
    v33 = *(v0 + 280);
    v32 = *(v0 + 288);
    v34 = *(v0 + 272);
    if (v30)
    {
      v35 = *(v0 + 264);
      v49 = *(v0 + 288);
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v50 = v37;
      *v36 = 136315138;
      v38 = _typeName(_:qualified:)();
      v40 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v38, v39, &v50);

      *(v36 + 4) = v40;
      _os_log_impl(&dword_274C46000, v28, v29, "%s cannot find remote Watch", v36, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v37);
      MEMORY[0x277C67550](v37, -1, -1);
      MEMORY[0x277C67550](v36, -1, -1);

      (*(v33 + 8))(v49, v34);
    }

    else
    {

      (*(v33 + 8))(v32, v34);
    }

    v42 = *(v0 + 296);
    v41 = *(v0 + 304);
    v43 = *(v0 + 288);

    v44 = *(v0 + 8);

    return v44(0);
  }
}

{
  v1 = *(v0 + 376);

  v2 = *(v0 + 392);
  v4 = *(v0 + 296);
  v3 = *(v0 + 304);
  v5 = *(v0 + 288);

  v6 = *(v0 + 8);

  return v6(v2);
}

uint64_t WorkoutReminderAnnouncementFlow.handleResponseForRemoteControl(_:to:)(uint64_t a1)
{
  v2 = *(*v1 + 368);
  v4 = *v1;
  *(*v1 + 376) = a1;

  return MEMORY[0x2822009F8](WorkoutReminderAnnouncementFlow.handleResponseForRemoteControl(_:to:), 0, 0);
}

{
  v2 = *(*v1 + 384);
  v4 = *v1;
  *(*v1 + 392) = a1;

  return MEMORY[0x2822009F8](WorkoutReminderAnnouncementFlow.handleResponseForRemoteControl(_:to:), 0, 0);
}

uint64_t closure #1 in WorkoutReminderAnnouncementFlow.handleResponseForRemoteControl(_:to:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOySo13SABaseCommandC11SiriKitFlow06SubmitC5ErrorOGMd, &_ss6ResultOySo13SABaseCommandC11SiriKitFlow06SubmitC5ErrorOGMR);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v24 - v7;
  v9 = type metadata accessor for Logger();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = Logger.workout.unsafeMutableAddressor();
  swift_beginAccess();
  (*(v10 + 16))(v13, v14, v9);
  outlined init with copy of Result<SABaseCommand, SubmitCommandError>(a1, v8);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v24 = v18;
    *v17 = 136315138;
    outlined init with copy of Result<SABaseCommand, SubmitCommandError>(v8, v6);
    v19 = String.init<A>(describing:)();
    v21 = v20;
    outlined destroy of AceOutput?(v8, &_ss6ResultOySo13SABaseCommandC11SiriKitFlow06SubmitC5ErrorOGMd, &_ss6ResultOySo13SABaseCommandC11SiriKitFlow06SubmitC5ErrorOGMR);
    v22 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v19, v21, &v24);

    *(v17 + 4) = v22;
    _os_log_impl(&dword_274C46000, v15, v16, "Received response from sending startLocalRequest: %s", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v18);
    MEMORY[0x277C67550](v18, -1, -1);
    MEMORY[0x277C67550](v17, -1, -1);
  }

  else
  {

    outlined destroy of AceOutput?(v8, &_ss6ResultOySo13SABaseCommandC11SiriKitFlow06SubmitC5ErrorOGMd, &_ss6ResultOySo13SABaseCommandC11SiriKitFlow06SubmitC5ErrorOGMR);
  }

  return (*(v10 + 8))(v13, v9);
}

uint64_t WorkoutReminderAnnouncementFlow.findRemoteIfAvailable()()
{
  v1[7] = v0;
  v2 = type metadata accessor for DeviceIdiom();
  v1[8] = v2;
  v3 = *(v2 - 8);
  v1[9] = v3;
  v4 = *(v3 + 64) + 15;
  v1[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](WorkoutReminderAnnouncementFlow.findRemoteIfAvailable(), 0, 0);
}

{
  v1 = v0[7];
  (*(v0[9] + 104))(v0[10], *MEMORY[0x277D61C10], v0[8]);
  v2 = OBJC_IVAR____TtC20WorkoutAnnouncements31WorkoutReminderAnnouncementFlow_deviceResolutionService;
  v3 = *(MEMORY[0x277D10CA8] + 4);
  v4 = swift_task_alloc();
  v0[11] = v4;
  *v4 = v0;
  v4[1] = WorkoutReminderAnnouncementFlow.findRemoteIfAvailable();
  v5 = v0[10];

  return MEMORY[0x282169240](v5, v1 + v2);
}

{
  v1 = v0[12];
  if (v1)
  {
    static AceService.currentAsync.getter();
    v2 = *(MEMORY[0x277D10CB8] + 4);
    v3 = swift_task_alloc();
    v0[13] = v3;
    *v3 = v0;
    v3[1] = WorkoutReminderAnnouncementFlow.findRemoteIfAvailable();

    return MEMORY[0x282169250](v1, v0 + 2);
  }

  else
  {
    v4 = v0[10];

    v5 = v0[1];

    return v5(0);
  }
}

{
  v1 = *(v0 + 96);
  if ((*(v0 + 112) & 1) == 0)
  {

    v1 = 0;
  }

  v2 = *(v0 + 80);

  v3 = *(v0 + 8);

  return v3(v1);
}

uint64_t WorkoutReminderAnnouncementFlow.findRemoteIfAvailable()(uint64_t a1)
{
  v2 = *(*v1 + 88);
  v3 = *(*v1 + 80);
  v4 = *(*v1 + 72);
  v5 = *(*v1 + 64);
  v7 = *v1;
  *(*v1 + 96) = a1;

  (*(v4 + 8))(v3, v5);

  return MEMORY[0x2822009F8](WorkoutReminderAnnouncementFlow.findRemoteIfAvailable(), 0, 0);
}

uint64_t WorkoutReminderAnnouncementFlow.findRemoteIfAvailable()(char a1)
{
  v2 = *v1;
  v3 = *(*v1 + 104);
  v5 = *v1;
  *(v2 + 112) = a1;

  __swift_destroy_boxed_opaque_existential_0Tm((v2 + 16));

  return MEMORY[0x2822009F8](WorkoutReminderAnnouncementFlow.findRemoteIfAvailable(), 0, 0);
}

uint64_t WorkoutReminderAnnouncementFlow.deinit()
{
  outlined destroy of WorkoutReminderAnnouncementFlow.State(v0 + OBJC_IVAR____TtC20WorkoutAnnouncements31WorkoutReminderAnnouncementFlow_state);
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + OBJC_IVAR____TtC20WorkoutAnnouncements31WorkoutReminderAnnouncementFlow_flowConfig));
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + OBJC_IVAR____TtC20WorkoutAnnouncements31WorkoutReminderAnnouncementFlow_deviceResolutionService));
  return v0;
}

uint64_t WorkoutReminderAnnouncementFlow.__deallocating_deinit()
{
  outlined destroy of WorkoutReminderAnnouncementFlow.State(v0 + OBJC_IVAR____TtC20WorkoutAnnouncements31WorkoutReminderAnnouncementFlow_state);
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + OBJC_IVAR____TtC20WorkoutAnnouncements31WorkoutReminderAnnouncementFlow_flowConfig));
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + OBJC_IVAR____TtC20WorkoutAnnouncements31WorkoutReminderAnnouncementFlow_deviceResolutionService));
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t protocol witness for Flow.execute(completion:) in conformance WorkoutReminderAnnouncementFlow()
{
  v2 = *v0;
  type metadata accessor for WorkoutReminderAnnouncementFlow(0);
  return Flow.deferToExecuteAsync(_:)();
}

uint64_t protocol witness for Flow.execute() in conformance WorkoutReminderAnnouncementFlow(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = protocol witness for Flow.execute() in conformance VoiceFeedbackAnnouncementFlow;

  return WorkoutReminderAnnouncementFlow.execute()(a1);
}

uint64_t protocol witness for Flow.exitValue.getter in conformance WorkoutReminderAnnouncementFlow(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for WorkoutReminderAnnouncementFlow(0);

  return MEMORY[0x2821BA658](v3, a2);
}

uint64_t outlined assign with take of WorkoutReminderAnnouncementFlow.State(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WorkoutReminderAnnouncementFlow.State(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for WorkoutReminderAnnouncementFlow.State(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t outlined init with copy of WorkoutReminderAnnouncementFlow.State(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WorkoutReminderAnnouncementFlow.State(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
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

uint64_t lazy protocol witness table accessor for type WorkoutReminderAnnouncementFlow and conformance WorkoutReminderAnnouncementFlow(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_274C54AAC()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t implicit closure #1 in OSLogInterpolation.appendInterpolation(_:privacy:attributes:)(void (*a1)(void))
{
  a1();

  return _swift_stdlib_bridgeErrorToNSError();
}

void closure #1 in OSLogArguments.append(_:)(void **a1, void **a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = a4();
  v7 = *a1;
  *v7 = v6;
  *a1 = v7 + 1;
  v8 = *a2;
  if (*a2)
  {
    *v8 = v6;
    *a2 = v8 + 1;
  }

  else
  {
  }
}

uint64_t outlined destroy of WorkoutReminderAnnouncementFlow.State(uint64_t a1)
{
  v2 = type metadata accessor for WorkoutReminderAnnouncementFlow.State(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t type metadata completion function for WorkoutReminderAnnouncementFlow()
{
  result = type metadata accessor for WorkoutReminderAnnouncementFlow.State(319);
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

uint64_t dispatch thunk of WorkoutReminderAnnouncementFlow.execute()(uint64_t a1)
{
  v4 = *(*v1 + 152);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = protocol witness for Flow.execute() in conformance VoiceFeedbackAnnouncementFlow;

  return v8(a1);
}

void type metadata completion function for WorkoutReminderAnnouncementFlow.State()
{
  type metadata accessor for (PromptResult<WorkoutReminderControlsDirectInvocation.Action>, to: WorkoutReminderAnnouncementDirectInvocation)();
  if (v0 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
  }
}

void type metadata accessor for (PromptResult<WorkoutReminderControlsDirectInvocation.Action>, to: WorkoutReminderAnnouncementDirectInvocation)()
{
  if (!lazy cache variable for type metadata for (PromptResult<WorkoutReminderControlsDirectInvocation.Action>, to: WorkoutReminderAnnouncementDirectInvocation))
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s11SiriKitFlow12PromptResultOy20WorkoutAnnouncements0F32ReminderControlsDirectInvocationV6ActionOGMd, &_s11SiriKitFlow12PromptResultOy20WorkoutAnnouncements0F32ReminderControlsDirectInvocationV6ActionOGMR);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (PromptResult<WorkoutReminderControlsDirectInvocation.Action>, to: WorkoutReminderAnnouncementDirectInvocation));
    }
  }
}

unint64_t type metadata accessor for SABaseCommand()
{
  result = lazy cache variable for type metadata for SABaseCommand;
  if (!lazy cache variable for type metadata for SABaseCommand)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for SABaseCommand);
  }

  return result;
}

uint64_t specialized WorkoutReminderAnnouncementFlow.workoutConfirmationResponseFlow(response:to:)(_BYTE *a1, uint64_t *a2)
{
  v5 = *(*(type metadata accessor for DialogPhase() - 8) + 64) + 15;
  *(v2 + 168) = swift_task_alloc();
  v6 = type metadata accessor for OutputGenerationManifest();
  *(v2 + 176) = v6;
  v7 = *(v6 - 8);
  *(v2 + 184) = v7;
  v8 = *(v7 + 64) + 15;
  *(v2 + 192) = swift_task_alloc();
  v9 = type metadata accessor for Logger();
  *(v2 + 200) = v9;
  v10 = *(v9 - 8);
  *(v2 + 208) = v10;
  v11 = *(v10 + 64) + 15;
  *(v2 + 216) = swift_task_alloc();
  *(v2 + 224) = swift_task_alloc();
  *(v2 + 232) = swift_task_alloc();
  v12 = *(*(type metadata accessor for CATOption() - 8) + 64) + 15;
  v13 = swift_task_alloc();
  *(v2 + 352) = *a1;
  v14 = *a2;
  *(v2 + 240) = v13;
  *(v2 + 248) = v14;

  return MEMORY[0x2822009F8](specialized WorkoutReminderAnnouncementFlow.workoutConfirmationResponseFlow(response:to:), 0, 0);
}

uint64_t specialized WorkoutReminderAnnouncementFlow.workoutConfirmationResponseFlow(response:to:)()
{
  v62 = v0;
  if (*(v0 + 352) > 1u || *(v0 + 352))
  {
    v1 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v1 & 1) == 0)
    {
      v9 = *(v0 + 224);
      v10 = *(v0 + 200);
      v11 = *(v0 + 208);
      v12 = Logger.workout.unsafeMutableAddressor();
      swift_beginAccess();
      (*(v11 + 16))(v9, v12, v10);
      v13 = Logger.logObject.getter();
      v14 = static os_log_type_t.debug.getter();
      v15 = os_log_type_enabled(v13, v14);
      v16 = *(v0 + 224);
      v17 = *(v0 + 200);
      v18 = *(v0 + 208);
      if (v15)
      {
        v19 = swift_slowAlloc();
        *v19 = 0;
        _os_log_impl(&dword_274C46000, v13, v14, "User did not accept, no dialog will be spoken", v19, 2u);
        MEMORY[0x277C67550](v19, -1, -1);
      }

      (*(v18 + 8))(v16, v17);
      goto LABEL_12;
    }
  }

  else
  {
  }

  v2 = [*(v0 + 248) predictionType];
  if (v2 == 3)
  {
    v31 = *(v0 + 240);
    type metadata accessor for WorkoutRemindersCATPatternsExecutor();
    static CATOption.defaultMode.getter();
    *(v0 + 320) = CATWrapper.__allocating_init(options:globals:)();
    v4 = "deviceResolutionService";
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
    v5 = swift_allocObject();
    *(v5 + 32) = 0xD000000000000017;
    *(v5 + 40) = 0x8000000274C701C0;
    *(v5 + 72) = MEMORY[0x277D839B0];
    v32 = *(MEMORY[0x277D55BE8] + 4);
    v59 = (*MEMORY[0x277D55BE8] + MEMORY[0x277D55BE8]);
    *(v0 + 328) = v5;
    *(v5 + 16) = xmmword_274C6DB40;
    *(v5 + 48) = 0;
    v33 = swift_task_alloc();
    *(v0 + 336) = v33;
    *v33 = v0;
    v33[1] = specialized WorkoutReminderAnnouncementFlow.workoutConfirmationResponseFlow(response:to:);
    v8 = 0xD000000000000026;
    goto LABEL_17;
  }

  if (v2 == 2)
  {
    v28 = *(v0 + 240);
    type metadata accessor for WorkoutRemindersCATPatternsExecutor();
    static CATOption.defaultMode.getter();
    *(v0 + 288) = CATWrapper.__allocating_init(options:globals:)();
    v4 = "executeSashGroupOnWatch";
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
    v5 = swift_allocObject();
    *(v5 + 32) = 0xD000000000000017;
    *(v5 + 40) = 0x8000000274C701C0;
    *(v5 + 72) = MEMORY[0x277D839B0];
    v29 = *(MEMORY[0x277D55BE8] + 4);
    v59 = (*MEMORY[0x277D55BE8] + MEMORY[0x277D55BE8]);
    *(v0 + 296) = v5;
    *(v5 + 16) = xmmword_274C6DB40;
    *(v5 + 48) = 0;
    v30 = swift_task_alloc();
    *(v0 + 304) = v30;
    *v30 = v0;
    v30[1] = specialized WorkoutReminderAnnouncementFlow.workoutConfirmationResponseFlow(response:to:);
    v8 = 0xD000000000000023;
    goto LABEL_17;
  }

  if (v2 == 1)
  {
    v3 = *(v0 + 240);
    type metadata accessor for WorkoutRemindersCATPatternsExecutor();
    static CATOption.defaultMode.getter();
    *(v0 + 256) = CATWrapper.__allocating_init(options:globals:)();
    v4 = "#acceptedEndWorkout";
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
    v5 = swift_allocObject();
    *(v5 + 32) = 0xD000000000000017;
    *(v5 + 40) = 0x8000000274C701C0;
    *(v5 + 72) = MEMORY[0x277D839B0];
    v6 = *(MEMORY[0x277D55BE8] + 4);
    v59 = (*MEMORY[0x277D55BE8] + MEMORY[0x277D55BE8]);
    *(v0 + 264) = v5;
    *(v5 + 16) = xmmword_274C6DB40;
    *(v5 + 48) = 0;
    v7 = swift_task_alloc();
    *(v0 + 272) = v7;
    *v7 = v0;
    v7[1] = specialized WorkoutReminderAnnouncementFlow.workoutConfirmationResponseFlow(response:to:);
    v8 = 0xD000000000000025;
LABEL_17:

    return v59(v8, v4 | 0x8000000000000000, v5);
  }

  [*(v0 + 248) predictionType];
  v34 = AFWorkoutPredictionTypeGetName();
  if (v34)
  {
    v35 = v34;
    v36 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v38 = v37;
  }

  else
  {
    v38 = 0xE90000000000003ELL;
    v36 = 0x4E574F4E4B4E553CLL;
  }

  v39 = *(v0 + 232);
  v40 = *(v0 + 200);
  v41 = *(v0 + 208);
  v42 = [*(v0 + 248) predictionIdentifier];
  v43 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v45 = v44;

  v46 = Logger.workout.unsafeMutableAddressor();
  swift_beginAccess();
  (*(v41 + 16))(v39, v46, v40);

  v47 = Logger.logObject.getter();
  v48 = static os_log_type_t.error.getter();

  v49 = os_log_type_enabled(v47, v48);
  v50 = *(v0 + 232);
  v52 = *(v0 + 200);
  v51 = *(v0 + 208);
  if (v49)
  {
    v60 = *(v0 + 200);
    v53 = v43;
    v54 = swift_slowAlloc();
    v58 = v50;
    v55 = swift_slowAlloc();
    v61 = v55;
    *v54 = 136315394;
    v56 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v36, v38, &v61);

    *(v54 + 4) = v56;
    *(v54 + 12) = 2080;
    v57 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v53, v45, &v61);

    *(v54 + 14) = v57;
    _os_log_impl(&dword_274C46000, v47, v48, "Unknown workout reminder prediction type %s for prediction id %s", v54, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x277C67550](v55, -1, -1);
    MEMORY[0x277C67550](v54, -1, -1);

    (*(v51 + 8))(v58, v60);
  }

  else
  {

    (*(v51 + 8))(v50, v52);
  }

LABEL_12:
  v21 = *(v0 + 232);
  v20 = *(v0 + 240);
  v23 = *(v0 + 216);
  v22 = *(v0 + 224);
  v24 = *(v0 + 192);
  v25 = *(v0 + 168);

  v26 = *(v0 + 8);

  return v26(0);
}

{
  v2 = *(v0 + 184);
  v1 = *(v0 + 192);
  v3 = *(v0 + 168);
  v4 = *(v0 + 176);
  v5 = *(v0 + 96);
  static DialogPhase.completion.getter();
  OutputGenerationManifest.init(dialogPhase:_:)();
  OutputGenerationManifest.canUseServerTTS.setter();
  static OutputPublisherFactory.makeOutputPublisherAsync()();
  v6 = type metadata accessor for ResponseFactory();
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  swift_allocObject();
  ResponseFactory.init()();
  v9 = type metadata accessor for PatternFlowProvider();
  v10 = *(v9 + 48);
  v11 = *(v9 + 52);
  swift_allocObject();
  *(v0 + 160) = PatternFlowProvider.init(outputPublisher:responseGenerator:)();
  v12 = PatternFlowProviding.makeResponseFlow(patternExecutionResult:outputGenerationManifest:)();

  (*(v2 + 8))(v1, v4);
  v14 = *(v0 + 232);
  v13 = *(v0 + 240);
  v16 = *(v0 + 216);
  v15 = *(v0 + 224);
  v17 = *(v0 + 192);
  v18 = *(v0 + 168);

  v19 = *(v0 + 8);

  return v19(v12);
}

{
  v1 = v0[35];
  v2 = v0[32];
  v3 = v0[33];
  v5 = v0[26];
  v4 = v0[27];
  v6 = v0[25];

  v7 = Logger.workout.unsafeMutableAddressor();
  swift_beginAccess();
  (*(v5 + 16))(v4, v7, v6);
  v8 = v1;
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v11 = 138412290;
    v13 = v1;
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 4) = v14;
    *v12 = v14;
    _os_log_impl(&dword_274C46000, v9, v10, "Failed to create accept start/end workout pattern: %@", v11, 0xCu);
    outlined destroy of AceOutput?(v12, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x277C67550](v12, -1, -1);
    MEMORY[0x277C67550](v11, -1, -1);
  }

  else
  {
  }

  (*(v0[26] + 8))(v0[27], v0[25]);
  v16 = v0[29];
  v15 = v0[30];
  v18 = v0[27];
  v17 = v0[28];
  v19 = v0[24];
  v20 = v0[21];

  v21 = v0[1];

  return v21(0);
}

{
  v2 = *(v0 + 184);
  v1 = *(v0 + 192);
  v3 = *(v0 + 168);
  v4 = *(v0 + 176);
  v5 = *(v0 + 120);
  static DialogPhase.completion.getter();
  OutputGenerationManifest.init(dialogPhase:_:)();
  OutputGenerationManifest.canUseServerTTS.setter();
  static OutputPublisherFactory.makeOutputPublisherAsync()();
  v6 = type metadata accessor for ResponseFactory();
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  swift_allocObject();
  ResponseFactory.init()();
  v9 = type metadata accessor for PatternFlowProvider();
  v10 = *(v9 + 48);
  v11 = *(v9 + 52);
  swift_allocObject();
  *(v0 + 160) = PatternFlowProvider.init(outputPublisher:responseGenerator:)();
  v12 = PatternFlowProviding.makeResponseFlow(patternExecutionResult:outputGenerationManifest:)();

  (*(v2 + 8))(v1, v4);
  v14 = *(v0 + 232);
  v13 = *(v0 + 240);
  v16 = *(v0 + 216);
  v15 = *(v0 + 224);
  v17 = *(v0 + 192);
  v18 = *(v0 + 168);

  v19 = *(v0 + 8);

  return v19(v12);
}

{
  v1 = v0[39];
  v2 = v0[36];
  v3 = v0[37];
  v5 = v0[26];
  v4 = v0[27];
  v6 = v0[25];

  v7 = Logger.workout.unsafeMutableAddressor();
  swift_beginAccess();
  (*(v5 + 16))(v4, v7, v6);
  v8 = v1;
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v11 = 138412290;
    v13 = v1;
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 4) = v14;
    *v12 = v14;
    _os_log_impl(&dword_274C46000, v9, v10, "Failed to create accept start/end workout pattern: %@", v11, 0xCu);
    outlined destroy of AceOutput?(v12, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x277C67550](v12, -1, -1);
    MEMORY[0x277C67550](v11, -1, -1);
  }

  else
  {
  }

  (*(v0[26] + 8))(v0[27], v0[25]);
  v16 = v0[29];
  v15 = v0[30];
  v18 = v0[27];
  v17 = v0[28];
  v19 = v0[24];
  v20 = v0[21];

  v21 = v0[1];

  return v21(0);
}

{
  v2 = *(v0 + 184);
  v1 = *(v0 + 192);
  v3 = *(v0 + 168);
  v4 = *(v0 + 176);
  v5 = *(v0 + 144);
  static DialogPhase.completion.getter();
  OutputGenerationManifest.init(dialogPhase:_:)();
  OutputGenerationManifest.canUseServerTTS.setter();
  static OutputPublisherFactory.makeOutputPublisherAsync()();
  v6 = type metadata accessor for ResponseFactory();
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  swift_allocObject();
  ResponseFactory.init()();
  v9 = type metadata accessor for PatternFlowProvider();
  v10 = *(v9 + 48);
  v11 = *(v9 + 52);
  swift_allocObject();
  *(v0 + 160) = PatternFlowProvider.init(outputPublisher:responseGenerator:)();
  v12 = PatternFlowProviding.makeResponseFlow(patternExecutionResult:outputGenerationManifest:)();

  (*(v2 + 8))(v1, v4);
  v14 = *(v0 + 232);
  v13 = *(v0 + 240);
  v16 = *(v0 + 216);
  v15 = *(v0 + 224);
  v17 = *(v0 + 192);
  v18 = *(v0 + 168);

  v19 = *(v0 + 8);

  return v19(v12);
}

{
  v1 = v0[43];
  v2 = v0[40];
  v3 = v0[41];
  v5 = v0[26];
  v4 = v0[27];
  v6 = v0[25];

  v7 = Logger.workout.unsafeMutableAddressor();
  swift_beginAccess();
  (*(v5 + 16))(v4, v7, v6);
  v8 = v1;
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v11 = 138412290;
    v13 = v1;
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 4) = v14;
    *v12 = v14;
    _os_log_impl(&dword_274C46000, v9, v10, "Failed to create accept start/end workout pattern: %@", v11, 0xCu);
    outlined destroy of AceOutput?(v12, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x277C67550](v12, -1, -1);
    MEMORY[0x277C67550](v11, -1, -1);
  }

  else
  {
  }

  (*(v0[26] + 8))(v0[27], v0[25]);
  v16 = v0[29];
  v15 = v0[30];
  v18 = v0[27];
  v17 = v0[28];
  v19 = v0[24];
  v20 = v0[21];

  v21 = v0[1];

  return v21(0);
}

uint64_t specialized WorkoutReminderAnnouncementFlow.workoutConfirmationResponseFlow(response:to:)(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v4[11] = v2;
  v4[12] = a1;
  v4[13] = v1;
  v5 = v3[34];
  v10 = *v2;
  v4[35] = v1;

  if (v1)
  {
    v6 = specialized WorkoutReminderAnnouncementFlow.workoutConfirmationResponseFlow(response:to:);
  }

  else
  {
    v8 = v4[32];
    v7 = v4[33];

    v6 = specialized WorkoutReminderAnnouncementFlow.workoutConfirmationResponseFlow(response:to:);
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

{
  v3 = *v2;
  v4 = *v2;
  v4[14] = v2;
  v4[15] = a1;
  v4[16] = v1;
  v5 = v3[38];
  v10 = *v2;
  v4[39] = v1;

  if (v1)
  {
    v6 = specialized WorkoutReminderAnnouncementFlow.workoutConfirmationResponseFlow(response:to:);
  }

  else
  {
    v8 = v4[36];
    v7 = v4[37];

    v6 = specialized WorkoutReminderAnnouncementFlow.workoutConfirmationResponseFlow(response:to:);
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

{
  v3 = *v2;
  v4 = *v2;
  v4[17] = v2;
  v4[18] = a1;
  v4[19] = v1;
  v5 = v3[42];
  v10 = *v2;
  v4[43] = v1;

  if (v1)
  {
    v6 = specialized WorkoutReminderAnnouncementFlow.workoutConfirmationResponseFlow(response:to:);
  }

  else
  {
    v8 = v4[40];
    v7 = v4[41];

    v6 = specialized WorkoutReminderAnnouncementFlow.workoutConfirmationResponseFlow(response:to:);
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t outlined init with copy of Result<SABaseCommand, SubmitCommandError>(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOySo13SABaseCommandC11SiriKitFlow06SubmitC5ErrorOGMd, &_ss6ResultOySo13SABaseCommandC11SiriKitFlow06SubmitC5ErrorOGMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t lazy protocol witness table accessor for type PromptForValueFlowAsync<WorkoutReminderControlsDirectInvocation.Action> and conformance PromptForValueFlowAsync<A>(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t Encodable.asDictionary()()
{
  v18[4] = *MEMORY[0x277D85DE8];
  v1 = type metadata accessor for PropertyListEncoder();
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  swift_allocObject();
  PropertyListEncoder.init()();
  v4 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
  if (!v0)
  {
    v8 = v4;
    v9 = v5;

    v10 = objc_opt_self();
    isa = Data._bridgeToObjectiveC()().super.isa;
    v18[0] = 0;
    v12 = [v10 propertyListWithData:isa options:0 format:0 error:v18];

    if (v12)
    {
      v13 = v18[0];
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSypGMd, &_sSDySSypGMR);
      if (swift_dynamicCast())
      {
        outlined consume of Data._Representation(v8, v9);
        result = v17;
        goto LABEL_9;
      }

      lazy protocol witness table accessor for type VoiceFeedbackErrors and conformance VoiceFeedbackErrors();
      swift_allocError();
      *v15 = 3;
    }

    else
    {
      v14 = v18[0];
      _convertNSErrorToError(_:)();
    }

    swift_willThrow();
    result = outlined consume of Data._Representation(v8, v9);
    goto LABEL_9;
  }

  lazy protocol witness table accessor for type VoiceFeedbackErrors and conformance VoiceFeedbackErrors();
  swift_allocError();
  *v6 = 2;
  result = swift_willThrow();
LABEL_9:
  v16 = *MEMORY[0x277D85DE8];
  return result;
}

unint64_t lazy protocol witness table accessor for type VoiceFeedbackErrors and conformance VoiceFeedbackErrors()
{
  result = lazy protocol witness table cache variable for type VoiceFeedbackErrors and conformance VoiceFeedbackErrors;
  if (!lazy protocol witness table cache variable for type VoiceFeedbackErrors and conformance VoiceFeedbackErrors)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type VoiceFeedbackErrors and conformance VoiceFeedbackErrors);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type VoiceFeedbackErrors and conformance VoiceFeedbackErrors;
  if (!lazy protocol witness table cache variable for type VoiceFeedbackErrors and conformance VoiceFeedbackErrors)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type VoiceFeedbackErrors and conformance VoiceFeedbackErrors);
  }

  return result;
}

WorkoutAnnouncements::VoiceFeedbackKeys_optional __swiftcall VoiceFeedbackKeys.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = _findStringSwitchCaseWithCache(cases:string:cache:)();

  v5 = 17;
  if (v3 < 0x11)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t VoiceFeedbackKeys.rawValue.getter()
{
  result = 0x7079547472656C61;
  switch(*v0)
  {
    case 1:
      result = 0x6574656C706D6F63;
      break;
    case 2:
      result = 0x6E6F697461727564;
      break;
    case 3:
      result = 0x7865646E69;
      break;
    case 4:
      result = 0xD000000000000014;
      break;
    case 5:
      result = 0xD000000000000011;
      break;
    case 6:
      result = 0x647574696E67616DLL;
      break;
    case 7:
      result = 0x795463697274656DLL;
      break;
    case 8:
    case 0xB:
      result = 0x706574537478656ELL;
      break;
    case 9:
      result = 0xD000000000000011;
      break;
    case 0xA:
    case 0xE:
      result = 0xD000000000000012;
      break;
    case 0xC:
      result = 0x6D726F4665636170;
      break;
    case 0xD:
      result = 0x746E656D676573;
      break;
    case 0xF:
      result = 1953066613;
      break;
    case 0x10:
      result = 0xD000000000000017;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance VoiceFeedbackKeys(char *a1, char *a2)
{
  v10 = *a1;
  v9 = *a2;
  v2 = VoiceFeedbackKeys.rawValue.getter();
  v4 = v3;
  if (v2 == VoiceFeedbackKeys.rawValue.getter() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v7 & 1;
}

unint64_t lazy protocol witness table accessor for type VoiceFeedbackKeys and conformance VoiceFeedbackKeys()
{
  result = lazy protocol witness table cache variable for type VoiceFeedbackKeys and conformance VoiceFeedbackKeys;
  if (!lazy protocol witness table cache variable for type VoiceFeedbackKeys and conformance VoiceFeedbackKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type VoiceFeedbackKeys and conformance VoiceFeedbackKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type VoiceFeedbackKeys and conformance VoiceFeedbackKeys;
  if (!lazy protocol witness table cache variable for type VoiceFeedbackKeys and conformance VoiceFeedbackKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type VoiceFeedbackKeys and conformance VoiceFeedbackKeys);
  }

  return result;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance VoiceFeedbackKeys()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  VoiceFeedbackKeys.rawValue.getter();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance VoiceFeedbackKeys()
{
  v2 = *v0;
  VoiceFeedbackKeys.rawValue.getter();
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance VoiceFeedbackKeys()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  VoiceFeedbackKeys.rawValue.getter();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t protocol witness for RawRepresentable.rawValue.getter in conformance VoiceFeedbackKeys@<X0>(unint64_t *a1@<X8>)
{
  result = VoiceFeedbackKeys.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for VoiceFeedbackKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF0)
  {
    goto LABEL_17;
  }

  if (a2 + 16 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 16) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 16;
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

      return (*a1 | (v4 << 8)) - 16;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 16;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x11;
  v8 = v6 - 17;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for VoiceFeedbackKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 16 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 16) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF0)
  {
    v4 = 0;
  }

  if (a2 > 0xEF)
  {
    v5 = ((a2 - 240) >> 8) + 1;
    *result = a2 + 16;
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
    *result = a2 + 16;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

void __swiftcall AboveTargetZoneModel.init(magnitude:unit:targetZone:)(WorkoutAnnouncements::AboveTargetZoneModel *__return_ptr retstr, Swift::Double magnitude, Swift::String unit, WorkoutAnnouncements::VoiceFeedbackTargetZone *targetZone)
{
  object = unit._object;
  countAndFlagsBits = unit._countAndFlagsBits;
  v8 = targetZone->unit._object;
  metricType = targetZone->metricType;
  value = targetZone->paceFormat.value;
  v11 = BYTE1(targetZone[1].minMagnitude);

  retstr->alertType = WorkoutAnnouncements_VoiceFeedbackAlertType_zoneExitedAbove;
  retstr->magnitude = magnitude;
  retstr->unit._countAndFlagsBits = countAndFlagsBits;
  retstr->unit._object = object;
  retstr->isSingleThreshold = v11;
  retstr->paceFormat.value = value;
  retstr->metricType = metricType;
}

unint64_t protocol witness for CodingKey.stringValue.getter in conformance AboveTargetZoneModel.CodingKeys()
{
  v1 = *v0;
  v2 = 0x7079547472656C61;
  v3 = 0xD000000000000011;
  v4 = 0x6D726F4665636170;
  if (v1 != 4)
  {
    v4 = 0x795463697274656DLL;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x647574696E67616DLL;
  if (v1 != 1)
  {
    v5 = 1953066613;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance AboveTargetZoneModel.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = specialized AboveTargetZoneModel.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance AboveTargetZoneModel.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AboveTargetZoneModel.CodingKeys and conformance AboveTargetZoneModel.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AboveTargetZoneModel.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AboveTargetZoneModel.CodingKeys and conformance AboveTargetZoneModel.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t AboveTargetZoneModel.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy20WorkoutAnnouncements20AboveTargetZoneModelV10CodingKeys33_7EF894040903555A693EE5A3F29D3664LLOGMd, &_ss22KeyedEncodingContainerVy20WorkoutAnnouncements20AboveTargetZoneModelV10CodingKeys33_7EF894040903555A693EE5A3F29D3664LLOGMR);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v16 - v7;
  v9 = *v1;
  v10 = *(v1 + 1);
  v11 = *(v1 + 2);
  v19 = *(v1 + 3);
  v20 = v11;
  LODWORD(v11) = v1[32];
  v17 = v1[33];
  v18 = v11;
  HIDWORD(v16) = v1[34];
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type AboveTargetZoneModel.CodingKeys and conformance AboveTargetZoneModel.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v29 = v9;
  v28 = 0;
  lazy protocol witness table accessor for type VoiceFeedbackAlertType and conformance VoiceFeedbackAlertType();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v13 = v17;
    v14 = BYTE4(v16);
    v27 = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    v26 = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
    v25 = 3;
    KeyedEncodingContainer.encode(_:forKey:)();
    v24 = v13;
    v23 = 4;
    lazy protocol witness table accessor for type VoiceFeedbackPaceFormat and conformance VoiceFeedbackPaceFormat();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v22 = v14;
    v21 = 5;
    lazy protocol witness table accessor for type VoiceFeedbackMetricType and conformance VoiceFeedbackMetricType();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v5 + 8))(v8, v4);
}

uint64_t AboveTargetZoneModel.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy20WorkoutAnnouncements20AboveTargetZoneModelV10CodingKeys33_7EF894040903555A693EE5A3F29D3664LLOGMd, &_ss22KeyedDecodingContainerVy20WorkoutAnnouncements20AboveTargetZoneModelV10CodingKeys33_7EF894040903555A693EE5A3F29D3664LLOGMR);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v20 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type AboveTargetZoneModel.CodingKeys and conformance AboveTargetZoneModel.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  v30 = 0;
  lazy protocol witness table accessor for type VoiceFeedbackAlertType and conformance VoiceFeedbackAlertType();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v11 = v31;
  v29 = 1;
  KeyedDecodingContainer.decode(_:forKey:)();
  v13 = v12;
  v28 = 2;
  v14 = KeyedDecodingContainer.decode(_:forKey:)();
  v16 = v15;
  v22 = v14;
  v27 = 3;
  v21 = KeyedDecodingContainer.decode(_:forKey:)();
  v25 = 4;
  lazy protocol witness table accessor for type VoiceFeedbackPaceFormat and conformance VoiceFeedbackPaceFormat();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v20 = v26;
  v23 = 5;
  lazy protocol witness table accessor for type VoiceFeedbackMetricType and conformance VoiceFeedbackMetricType();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v18 = v21 & 1;
  (*(v6 + 8))(v9, v5);
  v19 = v24;
  *a2 = v11;
  *(a2 + 8) = v13;
  *(a2 + 16) = v22;
  *(a2 + 24) = v16;
  *(a2 + 32) = v18;
  *(a2 + 33) = v20;
  *(a2 + 34) = v19;

  __swift_destroy_boxed_opaque_existential_0Tm(a1);
}

BOOL specialized static AboveTargetZoneModel.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  result = 0;
  if (*a1 == *a2 && *(a1 + 1) == *(a2 + 1))
  {
    v4 = a1[32];
    v5 = a1[33];
    v6 = a1[34];
    v7 = a2[32];
    v8 = a2[33];
    v9 = a2[34];
    if (*(a1 + 2) == *(a2 + 2) && *(a1 + 3) == *(a2 + 3))
    {
      if (v4 != v7)
      {
        return 0;
      }

LABEL_9:
      if (v5 == 2)
      {
        if (v8 != 2)
        {
          return 0;
        }
      }

      else if (v8 == 2 || ((v8 ^ v5) & 1) != 0)
      {
        return 0;
      }

      return v6 == v9;
    }

    v10 = *(a1 + 3);
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
    result = 0;
    if ((v11 & 1) != 0 && ((v4 ^ v7) & 1) == 0)
    {
      goto LABEL_9;
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AboveTargetZoneModel.CodingKeys and conformance AboveTargetZoneModel.CodingKeys()
{
  result = lazy protocol witness table cache variable for type AboveTargetZoneModel.CodingKeys and conformance AboveTargetZoneModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type AboveTargetZoneModel.CodingKeys and conformance AboveTargetZoneModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AboveTargetZoneModel.CodingKeys and conformance AboveTargetZoneModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AboveTargetZoneModel.CodingKeys and conformance AboveTargetZoneModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type AboveTargetZoneModel.CodingKeys and conformance AboveTargetZoneModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AboveTargetZoneModel.CodingKeys and conformance AboveTargetZoneModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AboveTargetZoneModel.CodingKeys and conformance AboveTargetZoneModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type AboveTargetZoneModel.CodingKeys and conformance AboveTargetZoneModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AboveTargetZoneModel.CodingKeys and conformance AboveTargetZoneModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AboveTargetZoneModel.CodingKeys and conformance AboveTargetZoneModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type AboveTargetZoneModel.CodingKeys and conformance AboveTargetZoneModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AboveTargetZoneModel.CodingKeys and conformance AboveTargetZoneModel.CodingKeys);
  }

  return result;
}

unint64_t instantiation function for generic protocol witness table for AboveTargetZoneModel(void *a1)
{
  a1[1] = lazy protocol witness table accessor for type AboveTargetZoneModel and conformance AboveTargetZoneModel();
  a1[2] = lazy protocol witness table accessor for type AboveTargetZoneModel and conformance AboveTargetZoneModel();
  result = lazy protocol witness table accessor for type AboveTargetZoneModel and conformance AboveTargetZoneModel();
  a1[3] = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type AboveTargetZoneModel and conformance AboveTargetZoneModel()
{
  result = lazy protocol witness table cache variable for type AboveTargetZoneModel and conformance AboveTargetZoneModel;
  if (!lazy protocol witness table cache variable for type AboveTargetZoneModel and conformance AboveTargetZoneModel)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AboveTargetZoneModel and conformance AboveTargetZoneModel);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AboveTargetZoneModel and conformance AboveTargetZoneModel;
  if (!lazy protocol witness table cache variable for type AboveTargetZoneModel and conformance AboveTargetZoneModel)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AboveTargetZoneModel and conformance AboveTargetZoneModel);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AboveTargetZoneModel and conformance AboveTargetZoneModel;
  if (!lazy protocol witness table cache variable for type AboveTargetZoneModel and conformance AboveTargetZoneModel)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AboveTargetZoneModel and conformance AboveTargetZoneModel);
  }

  return result;
}

__n128 __swift_memcpy35_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 31) = *(a2 + 31);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for AboveTargetZoneModel(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 35))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for AboveTargetZoneModel(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 34) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 35) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 35) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AboveTargetZoneModel.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 5;
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

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AboveTargetZoneModel.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t specialized AboveTargetZoneModel.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7079547472656C61 && a2 == 0xE900000000000065;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x647574696E67616DLL && a2 == 0xE900000000000065 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1953066613 && a2 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000274C6FF80 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6D726F4665636170 && a2 == 0xEA00000000007461 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x795463697274656DLL && a2 == 0xEA00000000006570)
  {

    return 5;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

WorkoutAnnouncements::TimeSplitModel __swiftcall TimeSplitModel.init(duration:)(Swift::Double duration)
{
  *v1 = 21;
  *(v1 + 8) = duration;
  result.duration = duration;
  return result;
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance TimeSplitModel.CodingKeys()
{
  if (*v0)
  {
    result = 0x6E6F697461727564;
  }

  else
  {
    result = 0x7079547472656C61;
  }

  *v0;
  return result;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance TimeSplitModel.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x7079547472656C61 && a2 == 0xE900000000000065;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6E6F697461727564 && a2 == 0xE800000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance TimeSplitModel.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type TimeSplitModel.CodingKeys and conformance TimeSplitModel.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance TimeSplitModel.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type TimeSplitModel.CodingKeys and conformance TimeSplitModel.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t TimeSplitModel.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy20WorkoutAnnouncements14TimeSplitModelV10CodingKeys33_92EBC79F6F037B03B0E8561756E3FDC5LLOGMd, &_ss22KeyedEncodingContainerVy20WorkoutAnnouncements14TimeSplitModelV10CodingKeys33_92EBC79F6F037B03B0E8561756E3FDC5LLOGMR);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v13[-v7];
  v9 = *v1;
  v10 = *(v1 + 1);
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type TimeSplitModel.CodingKeys and conformance TimeSplitModel.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v13[15] = v9;
  v13[14] = 0;
  lazy protocol witness table accessor for type VoiceFeedbackAlertType and conformance VoiceFeedbackAlertType();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v13[13] = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v5 + 8))(v8, v4);
}

unint64_t lazy protocol witness table accessor for type TimeSplitModel.CodingKeys and conformance TimeSplitModel.CodingKeys()
{
  result = lazy protocol witness table cache variable for type TimeSplitModel.CodingKeys and conformance TimeSplitModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type TimeSplitModel.CodingKeys and conformance TimeSplitModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TimeSplitModel.CodingKeys and conformance TimeSplitModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TimeSplitModel.CodingKeys and conformance TimeSplitModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type TimeSplitModel.CodingKeys and conformance TimeSplitModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TimeSplitModel.CodingKeys and conformance TimeSplitModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TimeSplitModel.CodingKeys and conformance TimeSplitModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type TimeSplitModel.CodingKeys and conformance TimeSplitModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TimeSplitModel.CodingKeys and conformance TimeSplitModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TimeSplitModel.CodingKeys and conformance TimeSplitModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type TimeSplitModel.CodingKeys and conformance TimeSplitModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TimeSplitModel.CodingKeys and conformance TimeSplitModel.CodingKeys);
  }

  return result;
}

uint64_t TimeSplitModel.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy20WorkoutAnnouncements14TimeSplitModelV10CodingKeys33_92EBC79F6F037B03B0E8561756E3FDC5LLOGMd, &_ss22KeyedDecodingContainerVy20WorkoutAnnouncements14TimeSplitModelV10CodingKeys33_92EBC79F6F037B03B0E8561756E3FDC5LLOGMR);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v15[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type TimeSplitModel.CodingKeys and conformance TimeSplitModel.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    v15[14] = 0;
    lazy protocol witness table accessor for type VoiceFeedbackAlertType and conformance VoiceFeedbackAlertType();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v11 = v15[15];
    v15[13] = 1;
    KeyedDecodingContainer.decode(_:forKey:)();
    v13 = v12;
    (*(v6 + 8))(v9, v5);
    *a2 = v11;
    *(a2 + 8) = v13;
  }

  return __swift_destroy_boxed_opaque_existential_0Tm(a1);
}

unint64_t instantiation function for generic protocol witness table for TimeSplitModel(void *a1)
{
  a1[1] = lazy protocol witness table accessor for type TimeSplitModel and conformance TimeSplitModel();
  a1[2] = lazy protocol witness table accessor for type TimeSplitModel and conformance TimeSplitModel();
  result = lazy protocol witness table accessor for type TimeSplitModel and conformance TimeSplitModel();
  a1[3] = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type TimeSplitModel and conformance TimeSplitModel()
{
  result = lazy protocol witness table cache variable for type TimeSplitModel and conformance TimeSplitModel;
  if (!lazy protocol witness table cache variable for type TimeSplitModel and conformance TimeSplitModel)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TimeSplitModel and conformance TimeSplitModel);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TimeSplitModel and conformance TimeSplitModel;
  if (!lazy protocol witness table cache variable for type TimeSplitModel and conformance TimeSplitModel)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TimeSplitModel and conformance TimeSplitModel);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TimeSplitModel and conformance TimeSplitModel;
  if (!lazy protocol witness table cache variable for type TimeSplitModel and conformance TimeSplitModel)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TimeSplitModel and conformance TimeSplitModel);
  }

  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t getEnumTagSinglePayload for TimeSplitModel(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xE8 && a1[16])
  {
    return (*a1 + 232);
  }

  v3 = *a1;
  v4 = v3 >= 0x19;
  v5 = v3 - 25;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for TimeSplitModel(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xE7)
  {
    *result = a2 - 232;
    *(result + 8) = 0;
    if (a3 >= 0xE8)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0xE8)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2 + 24;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TimeSplitModel.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for TimeSplitModel.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t type metadata accessor for WorkoutRemindersCATs()
{
  result = type metadata singleton initialization cache for WorkoutRemindersCATs;
  if (!type metadata singleton initialization cache for WorkoutRemindersCATs)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t WorkoutRemindersCATs.__allocating_init(templateDir:options:globals:)(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for CATOption();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v18 - v12;
  v14 = *(v2 + 48);
  v15 = *(v2 + 52);
  swift_allocObject();
  outlined init with copy of URL?(a1, v13);
  (*(v6 + 16))(v9, a2, v5);
  v16 = CATWrapper.init(templateDir:options:globals:)();
  (*(v6 + 8))(a2, v5);
  outlined destroy of URL?(a1);
  return v16;
}

uint64_t WorkoutRemindersCATs.__deallocating_deinit()
{
  v0 = CATWrapper.deinit();

  return MEMORY[0x2821FE8D8](v0, 16, 7);
}

uint64_t outlined init with copy of URL?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of URL?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t WorkoutReminderAnnouncementDirectInvocation.init(directInvocation:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = (MEMORY[0x28223BE20])();
  v9 = &v78 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v78 - v11;
  MEMORY[0x28223BE20](v10);
  v14 = &v78 - v13;
  v15 = Parse.DirectInvocation.identifier.getter();
  if (one-time initialization token for identifier != -1)
  {
    v73 = v15;
    v74 = v16;
    swift_once();
    v15 = v73;
    v16 = v74;
  }

  if (v15 == static WorkoutReminderAnnouncementDirectInvocation.identifier && v16 == *algn_28099C0A8)
  {
  }

  else
  {
    v18 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v18 & 1) == 0)
    {
      v19 = Logger.workout.unsafeMutableAddressor();
      swift_beginAccess();
      (*(v5 + 16))(v14, v19, v4);
      v20 = Logger.logObject.getter();
      v21 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        v23 = swift_slowAlloc();
        v80[0] = v23;
        *v22 = 136315138;
        *(v22 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000002BLL, 0x8000000274C6E2A0, v80);
        _os_log_impl(&dword_274C46000, v20, v21, "%s does not support invocation identifier", v22, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v23);
        MEMORY[0x277C67550](v23, -1, -1);
        MEMORY[0x277C67550](v22, -1, -1);
      }

      v24 = type metadata accessor for Parse.DirectInvocation();
      (*(*(v24 - 8) + 8))(a1, v24);
      result = (*(v5 + 8))(v14, v4);
LABEL_32:
      *(a2 + 16) = 0u;
      *(a2 + 32) = 0u;
      *a2 = 0u;
      return result;
    }
  }

  v26 = Parse.DirectInvocation.userData.getter();
  if (!v26)
  {
LABEL_29:
    v61 = Logger.workout.unsafeMutableAddressor();
    swift_beginAccess();
    (*(v5 + 16))(v9, v61, v4);
    v62 = Logger.logObject.getter();
    v63 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v62, v63))
    {
      v64 = swift_slowAlloc();
      v65 = swift_slowAlloc();
      v80[0] = v65;
      *v64 = 136315138;
      *(v64 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000002BLL, 0x8000000274C6E2A0, v80);
      _os_log_impl(&dword_274C46000, v62, v63, "%s Failed to deserialize invocation payload", v64, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v65);
      MEMORY[0x277C67550](v65, -1, -1);
      MEMORY[0x277C67550](v64, -1, -1);
    }

    v66 = type metadata accessor for Parse.DirectInvocation();
    (*(*(v66 - 8) + 8))(a1, v66);
    result = (*(v5 + 8))(v9, v4);
    goto LABEL_32;
  }

  v27 = v26;
  v28 = *MEMORY[0x277D5C258];
  v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (!*(v27 + 16))
  {
    goto LABEL_27;
  }

  v31 = specialized __RawDictionaryStorage.find<A>(_:)(v29, v30);
  v33 = v32;

  if ((v33 & 1) == 0)
  {
    goto LABEL_28;
  }

  outlined init with copy of Any(*(v27 + 56) + 32 * v31, v81);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_28;
  }

  v34 = LOBYTE(v80[0]);
  v35 = *MEMORY[0x277D5C260];
  v36 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (!*(v27 + 16))
  {
    goto LABEL_27;
  }

  v79 = v34;
  v38 = specialized __RawDictionaryStorage.find<A>(_:)(v36, v37);
  v40 = v39;

  if ((v40 & 1) == 0)
  {
    goto LABEL_28;
  }

  outlined init with copy of Any(*(v27 + 56) + 32 * v38, v81);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_28;
  }

  v41 = v80[0];
  v42 = *MEMORY[0x277D5C268];
  v43 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (!*(v27 + 16))
  {
LABEL_27:

LABEL_28:

    goto LABEL_29;
  }

  v78 = v41;
  v45 = specialized __RawDictionaryStorage.find<A>(_:)(v43, v44);
  v47 = v46;

  if ((v47 & 1) == 0)
  {
    goto LABEL_28;
  }

  outlined init with copy of Any(*(v27 + 56) + 32 * v45, v81);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_28;
  }

  v48 = v80[0];
  type metadata accessor for AFSiriWorkoutReminder();

  v50 = AFSiriWorkoutReminder.init(data:)(v49);
  if (!v50)
  {

    v67 = Logger.workout.unsafeMutableAddressor();
    swift_beginAccess();
    (*(v5 + 16))(v12, v67, v4);
    v68 = Logger.logObject.getter();
    v69 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v68, v69))
    {
      v70 = swift_slowAlloc();
      v71 = swift_slowAlloc();
      v80[0] = v71;
      *v70 = 136315138;
      *(v70 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000002BLL, 0x8000000274C6E2A0, v80);
      _os_log_impl(&dword_274C46000, v68, v69, "%s Unable to create a workout reminder from the payload", v70, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v71);
      MEMORY[0x277C67550](v71, -1, -1);
      MEMORY[0x277C67550](v70, -1, -1);
    }

    v72 = type metadata accessor for Parse.DirectInvocation();
    (*(*(v72 - 8) + 8))(a1, v72);
    result = (*(v5 + 8))(v12, v4);
    goto LABEL_32;
  }

  v51 = v50;
  v52 = *MEMORY[0x277D5C250];
  v53 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (*(v27 + 16))
  {
    v55 = specialized __RawDictionaryStorage.find<A>(_:)(v53, v54);
    v57 = v56;

    if (v57)
    {
      outlined init with copy of Any(*(v27 + 56) + 32 * v55, v81);
      v58 = type metadata accessor for Parse.DirectInvocation();
      (*(*(v58 - 8) + 8))(a1, v58);

      result = swift_dynamicCast();
      v59 = v80[0];
      v60 = v80[1];
      if (!result)
      {
        v59 = 0;
        v60 = 0;
      }

      goto LABEL_39;
    }
  }

  else
  {
  }

  v75 = type metadata accessor for Parse.DirectInvocation();
  result = (*(*(v75 - 8) + 8))(a1, v75);
  v59 = 0;
  v60 = 0;
LABEL_39:
  v77 = v78;
  v76 = v79;
  *a2 = v51;
  *(a2 + 8) = v59;
  *(a2 + 16) = v60;
  *(a2 + 24) = v76;
  *(a2 + 32) = v77;
  *(a2 + 40) = v48;
  return result;
}

uint64_t one-time initialization function for identifier()
{
  v0 = *MEMORY[0x277D5C248];
  result = static String._unconditionallyBridgeFromObjectiveC(_:)();
  static WorkoutReminderAnnouncementDirectInvocation.identifier = result;
  *algn_28099C0A8 = v2;
  return result;
}

uint64_t static WorkoutReminderAnnouncementDirectInvocation.identifier.getter()
{
  if (one-time initialization token for identifier != -1)
  {
    swift_once();
  }

  v0 = static WorkoutReminderAnnouncementDirectInvocation.identifier;

  return v0;
}

id AFSiriWorkoutReminder.init(data:)(uint64_t a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20]();
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = objc_opt_self();
  specialized _dictionaryUpCast<A, B, C, D>(_:)(a1);

  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v9 = [v7 workoutReminderFromPayload_];

  if (v9)
  {
    v10 = AFSiriWorkoutReminder.tryInferWorkoutType()();
    v23 = AFSiriWorkoutReminder.tryInferWorkoutActivityLocationType()();
    v11 = v23._0;
    v12 = v23._1;
    v13 = v23._2;
    v14 = [v9 predictionIdentifier];
    if (!v14)
    {
      v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v14 = MEMORY[0x277C66D70](v15);
    }

    v16 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithPredictionIdentifier:v14 predictionType:objc_msgSend(v9 workoutType:sel_predictionType) workoutActivityType:v10 locationType:v11 swimmingLocationType:{v12, v13}];
  }

  else
  {
    v17 = Logger.workout.unsafeMutableAddressor();
    swift_beginAccess();
    (*(v3 + 16))(v6, v17, v2);
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_274C46000, v18, v19, "Failed to parse workout reminder from payload.", v20, 2u);
      MEMORY[0x277C67550](v20, -1, -1);
    }

    (*(v3 + 8))(v6, v2);
    return 0;
  }

  return v16;
}

uint64_t AFSiriWorkoutReminder.tryInferWorkoutType()()
{
  v1 = [v0 workoutType];
  if ([v0 workoutType])
  {
    return v1;
  }

  v2 = [v0 workoutActivityType];
  if (v2 > 36)
  {
    switch(v2)
    {
      case '%':
        v3 = [v0 workoutLocationType] == 2;
        v4 = 5;
        break;
      case '.':
        v3 = [v0 workoutSwimmingLocationType] == 1;
        v4 = 7;
        break;
      case '4':
        v3 = [v0 workoutLocationType] == 2;
        v4 = 9;
        break;
      default:
        goto LABEL_13;
    }

    if (v3)
    {
      return v4;
    }

    else
    {
      return v4 + 1;
    }
  }

  switch(v2)
  {
    case 13:
      return 2 * ([v0 workoutLocationType] != 2);
    case 16:
      return 3;
    case 35:
      return 4;
  }

LABEL_13:

  return [v0 workoutType];
}

Swift::tuple_HKWorkoutActivityType_HKWorkoutSessionLocationType_HKWorkoutSwimmingLocationType __swiftcall AFSiriWorkoutReminder.tryInferWorkoutActivityLocationType()()
{
  v1 = [v0 workoutActivityType];
  v2 = [v0 workoutLocationType];
  v3 = [v0 workoutSwimmingLocationType];
  if ([v0 workoutActivityType])
  {
    goto LABEL_2;
  }

  v7 = [v0 workoutType];
  if (v7 > 4)
  {
    if (v7 <= 7)
    {
      if (v7 == 5)
      {
        v3 = 0;
        v1 = 37;
        v2 = 2;
      }

      else if (v7 == 6)
      {
        v3 = 0;
        v1 = 37;
        v2 = 3;
      }

      else
      {
        v1 = 46;
        v3 = 1;
        v2 = 1;
      }

      goto LABEL_2;
    }

    switch(v7)
    {
      case 8:
        v1 = 46;
        v2 = 1;
        v3 = 2;
        goto LABEL_2;
      case 9:
        v3 = 0;
        v1 = 52;
        v2 = 2;
        goto LABEL_2;
      case 10:
        v3 = 0;
        v1 = 52;
        v2 = 3;
        goto LABEL_2;
    }

LABEL_19:
    v1 = [v0 workoutActivityType];
    v2 = [v0 workoutLocationType];
    v3 = [v0 workoutSwimmingLocationType];
    goto LABEL_2;
  }

  if (v7 <= 1)
  {
    if (v7 == 1)
    {
      v3 = 0;
      v1 = 13;
      v2 = 2;
      goto LABEL_2;
    }

    goto LABEL_19;
  }

  if (v7 == 2)
  {
    v3 = 0;
    v1 = 13;
    v2 = 3;
  }

  else
  {
    v3 = 0;
    if (v7 == 3)
    {
      v1 = 16;
    }

    else
    {
      v1 = 35;
    }

    v2 = 1;
  }

LABEL_2:
  v4 = v1;
  v5 = v2;
  v6 = v3;
  result._2 = v6;
  result._1 = v5;
  result._0 = v4;
  return result;
}

unint64_t type metadata accessor for AFSiriWorkoutReminder()
{
  result = lazy cache variable for type metadata for AFSiriWorkoutReminder;
  if (!lazy cache variable for type metadata for AFSiriWorkoutReminder)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for AFSiriWorkoutReminder);
  }

  return result;
}

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for WorkoutReminderAnnouncementDirectInvocation(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t storeEnumTagSinglePayload for WorkoutReminderAnnouncementDirectInvocation(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t specialized VoiceFeedbackAlerting.hasValidAlertType(in:)(uint64_t a1)
{
  if (*(a1 + 16))
  {
    v2 = v1;
    v4 = specialized __RawDictionaryStorage.find<A>(_:)(0x7079547472656C61, 0xE900000000000065);
    if (v5)
    {
      outlined init with copy of Any(*(a1 + 56) + 32 * v4, v8);
      result = swift_dynamicCast();
      if (!result)
      {
        return result;
      }

      VoiceFeedbackAlertType.init(rawValue:)(rawValue);
      if (v8[0] != 25)
      {
        return v8[0] == *v2;
      }
    }
  }

  return 0;
}

uint64_t specialized VoiceFeedbackAlerting.hasValidAlertType(in:)(uint64_t a1, unsigned __int8 a2)
{
  if (!*(a1 + 16))
  {
    return 0;
  }

  v4 = specialized __RawDictionaryStorage.find<A>(_:)(0x7079547472656C61, 0xE900000000000065);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  outlined init with copy of Any(*(a1 + 56) + 32 * v4, v9);
  result = swift_dynamicCast();
  if (result)
  {
    VoiceFeedbackAlertType.init(rawValue:)(rawValue);
    return v9[0] != 25 && v9[0] == a2;
  }

  return result;
}

Swift::Bool __swiftcall VoiceFeedbackAlerting.hasValidAlertType(in:)(Swift::OpaquePointer in)
{
  if (!*(in._rawValue + 2))
  {
    return 0;
  }

  v3 = v2;
  v4 = v1;
  v6 = specialized __RawDictionaryStorage.find<A>(_:)(0x7079547472656C61, 0xE900000000000065);
  if ((v7 & 1) == 0)
  {
    return 0;
  }

  outlined init with copy of Any(*(in._rawValue + 7) + 32 * v6, v11);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  VoiceFeedbackAlertType.init(rawValue:)(rawValue);
  v8 = LOBYTE(v11[0]);
  if (LOBYTE(v11[0]) == 25)
  {
    return 0;
  }

  (*(v3 + 32))(v11, v4, v3);
  return v8 == LOBYTE(v11[0]);
}

BOOL static VoiceFeedbackAlerting.hasValidKeys(in:)(uint64_t a1)
{
  valid = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSD4KeysVySSyp_G_20WorkoutAnnouncements013VoiceFeedbackD0OSgs5NeverOTg504_s20e15Announcements21gH60AlertingPAAE12hasValidKeys2inSbSDySSypG_tFZAA0cdH0OSgSSXEfU_Tf1cn_n(a1);
  v2 = *(valid + 16);
  if (v2)
  {
    v3 = (valid + 32);
    v4 = v2 - 1;
    do
    {
      v6 = *v3++;
      v5 = v6;
      v8 = v4-- != 0;
      v9 = v5 != 17;
    }

    while (v5 != 17 && v8);
  }

  else
  {
    v9 = 1;
  }

  return v9;
}

{
  return static VoiceFeedbackAlerting.hasValidKeys(in:)(a1);
}

uint64_t _s20WorkoutAnnouncements26HalfwayGoalCompletionModelVAA21VoiceFeedbackAlertingA2aDP17hasValidAlertType2inSbSDySSypG_tFTW_0(uint64_t a1)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  return specialized VoiceFeedbackAlerting.hasValidAlertType(in:)(a1, *v1) & 1;
}

uint64_t protocol witness for VoiceFeedbackAlerting.hasValidAlertType(in:) in conformance DistanceSplitModel(uint64_t a1)
{
  v3 = *v1;
  v4 = v1[1];
  *v5 = v1[2];
  *&v5[10] = *(v1 + 42);
  return specialized VoiceFeedbackAlerting.hasValidAlertType(in:)(a1) & 1;
}

uint64_t specialized Sequence<>.contains(_:)(unsigned __int8 a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (!v2)
  {
    return 0;
  }

  v4 = (a2 + 32);
  while (2)
  {
    v5 = *v4++;
    v6 = a1;
    v7 = 0xE900000000000065;
    v8 = 0x7079547472656C61;
    switch(v5)
    {
      case 0:
        break;
      case 1:
        v8 = 0x6574656C706D6F63;
        v7 = 0xED00007065745364;
        break;
      case 2:
        v7 = 0xE800000000000000;
        v8 = 0x6E6F697461727564;
        break;
      case 3:
        v7 = 0xE500000000000000;
        v8 = 0x7865646E69;
        break;
      case 4:
        v6 = 17;
        v8 = 0xD000000000000014;
        v7 = 0x8000000274C6FF60;
        break;
      case 5:
        v8 = 0xD000000000000011;
        v7 = 0x8000000274C6FF80;
        break;
      case 6:
        v8 = 0x647574696E67616DLL;
        break;
      case 7:
        v7 = 0xEA00000000006570;
        v8 = 0x795463697274656DLL;
        break;
      case 8:
        v7 = 0xE800000000000000;
        v8 = 0x706574537478656ELL;
        break;
      case 9:
        v8 = 0xD000000000000011;
        v7 = 0x8000000274C6FFB0;
        break;
      case 10:
        v6 = 17;
        v8 = 0xD000000000000012;
        v7 = 0x8000000274C6FFD0;
        break;
      case 11:
        v8 = 0x706574537478656ELL;
        v7 = 0xEC00000074696E55;
        break;
      case 12:
        v6 = 25968;
        v7 = 0xEA00000000007461;
        v8 = 0x6D726F4665636170;
        break;
      case 13:
        v7 = 0xE700000000000000;
        v8 = 0x746E656D676573;
        break;
      case 14:
        v6 = 17;
        v8 = 0xD000000000000012;
        v7 = 0x8000000274C70010;
        break;
      case 15:
        v7 = 0xE400000000000000;
        v8 = 1953066613;
        break;
      case 16:
        v6 = 17;
        v8 = 0xD000000000000017;
        v7 = 0x8000000274C70030;
        break;
      default:
        if (a1 != 17)
        {
          goto LABEL_4;
        }

        return 1;
    }

    v9 = 0x7079547472656C61;
    v10 = 0xE900000000000065;
    switch(v6)
    {
      case 0:
        goto LABEL_52;
      case 1:
        v10 = 0xED00007065745364;
        if (v8 != 0x6574656C706D6F63)
        {
          goto LABEL_54;
        }

        goto LABEL_53;
      case 2:
        v10 = 0xE800000000000000;
        if (v8 != 0x6E6F697461727564)
        {
          goto LABEL_54;
        }

        goto LABEL_53;
      case 3:
        v10 = 0xE500000000000000;
        if (v8 != 0x7865646E69)
        {
          goto LABEL_54;
        }

        goto LABEL_53;
      case 4:
        v10 = 0x8000000274C6FF60;
        if (v8 != 0xD000000000000014)
        {
          goto LABEL_54;
        }

        goto LABEL_53;
      case 5:
        v10 = 0x8000000274C6FF80;
        if (v8 != 0xD000000000000011)
        {
          goto LABEL_54;
        }

        goto LABEL_53;
      case 6:
        if (v8 != 0x647574696E67616DLL)
        {
          goto LABEL_54;
        }

        goto LABEL_53;
      case 7:
        v10 = 0xEA00000000006570;
        if (v8 != 0x795463697274656DLL)
        {
          goto LABEL_54;
        }

        goto LABEL_53;
      case 8:
        v10 = 0xE800000000000000;
        if (v8 != 0x706574537478656ELL)
        {
          goto LABEL_54;
        }

        goto LABEL_53;
      case 9:
        v10 = 0x8000000274C6FFB0;
        if (v8 != 0xD000000000000011)
        {
          goto LABEL_54;
        }

        goto LABEL_53;
      case 10:
        v9 = 0xD000000000000012;
        v10 = 0x8000000274C6FFD0;
LABEL_52:
        if (v8 == v9)
        {
          goto LABEL_53;
        }

        goto LABEL_54;
      case 11:
        v10 = 0xEC00000074696E55;
        if (v8 != 0x706574537478656ELL)
        {
          goto LABEL_54;
        }

        goto LABEL_53;
      case 12:
        v10 = 0xEA00000000007461;
        if (v8 != 0x6D726F4665636170)
        {
          goto LABEL_54;
        }

        goto LABEL_53;
      case 13:
        v10 = 0xE700000000000000;
        if (v8 != 0x746E656D676573)
        {
          goto LABEL_54;
        }

        goto LABEL_53;
      case 14:
        v10 = 0x8000000274C70010;
        if (v8 != 0xD000000000000012)
        {
          goto LABEL_54;
        }

        goto LABEL_53;
      case 15:
        v10 = 0xE400000000000000;
        if (v8 != 1953066613)
        {
          goto LABEL_54;
        }

        goto LABEL_53;
      case 16:
        v10 = 0x8000000274C70030;
        if (v8 != 0xD000000000000017)
        {
          goto LABEL_54;
        }

LABEL_53:
        if (v7 != v10)
        {
LABEL_54:
          v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v11)
          {
            return 1;
          }

LABEL_4:
          if (!--v2)
          {
            return 0;
          }

          continue;
        }

        return 1;
      default:
        goto LABEL_4;
    }
  }
}

uint64_t protocol witness for VoiceFeedbackAlerting.hasValidAlertType(in:) in conformance LapCompletionModel(uint64_t a1)
{
  v3 = *v1;
  *v4 = v1[1];
  *&v4[9] = *(v1 + 25);
  return specialized VoiceFeedbackAlerting.hasValidAlertType(in:)(a1) & 1;
}

uint64_t _s20WorkoutAnnouncements20BelowTargetZoneModelVAA21VoiceFeedbackAlertingA2aDP17hasValidAlertType2inSbSDySSypG_tFTW_0(uint64_t a1)
{
  v3 = *v1;
  *v4 = v1[1];
  *&v4[15] = *(v1 + 31);
  return specialized VoiceFeedbackAlerting.hasValidAlertType(in:)(a1) & 1;
}

char _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSD4KeysVySSyp_G_20WorkoutAnnouncements013VoiceFeedbackD0OSgs5NeverOTg504_s20e15Announcements21gH60AlertingPAAE12hasValidKeys2inSbSDySSypG_tFZAA0cdH0OSgSSXEfU_Tf1cn_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v30 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v1, 0);
    v2 = v30;
    v3 = a1 + 64;
    v4 = -1 << *(a1 + 32);
    v5 = _HashTable.startBucket.getter();
    v6 = v5;
    v7 = a1;
    v8 = 0;
    v27 = v1;
    while ((v6 & 0x8000000000000000) == 0 && v6 < 1 << *(v7 + 32))
    {
      v11 = v6 >> 6;
      if ((*(v3 + 8 * (v6 >> 6)) & (1 << v6)) == 0)
      {
        goto LABEL_21;
      }

      v28 = *(v7 + 36);
      v12 = (*(v7 + 48) + 16 * v6);
      v13 = *v12;
      v14 = v12[1];

      v15._countAndFlagsBits = v13;
      v15._object = v14;
      LOBYTE(v5) = VoiceFeedbackKeys.init(rawValue:)(v15);
      v17 = *(v30 + 16);
      v16 = *(v30 + 24);
      if (v17 >= v16 >> 1)
      {
        LOBYTE(v5) = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v16 > 1), v17 + 1, 1);
      }

      *(v30 + 16) = v17 + 1;
      *(v30 + v17 + 32) = v29;
      v9 = 1 << *(v7 + 32);
      if (v6 >= v9)
      {
        goto LABEL_22;
      }

      v3 = a1 + 64;
      v18 = *(a1 + 64 + 8 * v11);
      if ((v18 & (1 << v6)) == 0)
      {
        goto LABEL_23;
      }

      if (v28 != *(v7 + 36))
      {
        goto LABEL_24;
      }

      v19 = v18 & (-2 << (v6 & 0x3F));
      if (v19)
      {
        v9 = __clz(__rbit64(v19)) | v6 & 0x7FFFFFFFFFFFFFC0;
        v10 = v27;
      }

      else
      {
        v20 = v11 << 6;
        v21 = v11 + 1;
        v22 = (a1 + 72 + 8 * v11);
        v10 = v27;
        while (v21 < (v9 + 63) >> 6)
        {
          v24 = *v22++;
          v23 = v24;
          v20 += 64;
          ++v21;
          if (v24)
          {
            LOBYTE(v5) = outlined consume of [String : Any].Index._Variant(v6, v28, 0);
            v7 = a1;
            v9 = __clz(__rbit64(v23)) + v20;
            goto LABEL_4;
          }
        }

        LOBYTE(v5) = outlined consume of [String : Any].Index._Variant(v6, v28, 0);
        v7 = a1;
      }

LABEL_4:
      ++v8;
      v6 = v9;
      if (v8 == v10)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
  }

  else
  {
LABEL_19:
    LOBYTE(v5) = v2;
  }

  return v5;
}

uint64_t protocol witness for VoiceFeedbackAlerting.hasValidAlertType(in:) in conformance PacerGoalCompletionModel(uint64_t a1)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = *(v1 + 4);
  return specialized VoiceFeedbackAlerting.hasValidAlertType(in:)(a1) & 1;
}

uint64_t protocol witness for VoiceFeedbackAlerting.hasValidAlertType(in:) in conformance UpcomingIntervalModel(uint64_t a1)
{
  v13 = v1[10];
  v14 = v1[11];
  v15 = *(v1 + 96);
  v9 = v1[6];
  v10 = v1[7];
  v11 = v1[8];
  v12 = v1[9];
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[4];
  v8 = v1[5];
  v3 = *v1;
  v4 = v1[1];
  return specialized VoiceFeedbackAlerting.hasValidAlertType(in:)(a1) & 1;
}

BOOL protocol witness for static VoiceFeedbackAlerting.hasValidKeys(in:) in conformance GoalCompletionModel(uint64_t a1)
{
  valid = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSD4KeysVySSyp_G_20WorkoutAnnouncements013VoiceFeedbackD0OSgs5NeverOTg504_s20e15Announcements21gH60AlertingPAAE12hasValidKeys2inSbSDySSypG_tFZAA0cdH0OSgSSXEfU_Tf1cn_n(a1);
  v2 = specialized Sequence<>.contains(_:)(0x11u, valid);

  return (v2 & 1) == 0;
}

char *specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(char *a1, int64_t a2, char a3)
{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy20WorkoutAnnouncements17VoiceFeedbackKeysOSgGMd, &_ss23_ContiguousArrayStorageCy20WorkoutAnnouncements17VoiceFeedbackKeysOSgGMR);
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
    if (v10 != a4 || v12 >= &v13[v8])
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

void __swiftcall PacerGoalCompletionModel.init(magnitude:unit:duration:)(WorkoutAnnouncements::PacerGoalCompletionModel *__return_ptr retstr, Swift::Double magnitude, Swift::String unit, Swift::Double duration)
{
  retstr->alertType = WorkoutAnnouncements_VoiceFeedbackAlertType_pacerGoalCompletion;
  retstr->magnitude = magnitude;
  retstr->unit = unit;
  retstr->duration = duration;
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance PacerGoalCompletionModel.CodingKeys()
{
  v1 = 0x7079547472656C61;
  v2 = 1953066613;
  if (*v0 != 2)
  {
    v2 = 0x6E6F697461727564;
  }

  if (*v0)
  {
    v1 = 0x647574696E67616DLL;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance PacerGoalCompletionModel.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = specialized PacerGoalCompletionModel.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance PacerGoalCompletionModel.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PacerGoalCompletionModel.CodingKeys and conformance PacerGoalCompletionModel.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PacerGoalCompletionModel.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PacerGoalCompletionModel.CodingKeys and conformance PacerGoalCompletionModel.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t PacerGoalCompletionModel.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy20WorkoutAnnouncements24PacerGoalCompletionModelV10CodingKeys33_A9EFDB1983CD7AAD5C1C0940E80522E1LLOGMd, &_ss22KeyedEncodingContainerVy20WorkoutAnnouncements24PacerGoalCompletionModelV10CodingKeys33_A9EFDB1983CD7AAD5C1C0940E80522E1LLOGMR);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v15 - v7;
  v9 = *v1;
  v10 = *(v1 + 1);
  v11 = *(v1 + 2);
  v15[0] = *(v1 + 3);
  v15[1] = v11;
  v12 = *(v1 + 4);
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type PacerGoalCompletionModel.CodingKeys and conformance PacerGoalCompletionModel.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v20 = v9;
  v19 = 0;
  lazy protocol witness table accessor for type VoiceFeedbackAlertType and conformance VoiceFeedbackAlertType();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v18 = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    v17 = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
    v16 = 3;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v5 + 8))(v8, v4);
}

uint64_t PacerGoalCompletionModel.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy20WorkoutAnnouncements24PacerGoalCompletionModelV10CodingKeys33_A9EFDB1983CD7AAD5C1C0940E80522E1LLOGMd, &_ss22KeyedDecodingContainerVy20WorkoutAnnouncements24PacerGoalCompletionModelV10CodingKeys33_A9EFDB1983CD7AAD5C1C0940E80522E1LLOGMR);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v20 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type PacerGoalCompletionModel.CodingKeys and conformance PacerGoalCompletionModel.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  v25 = 0;
  lazy protocol witness table accessor for type VoiceFeedbackAlertType and conformance VoiceFeedbackAlertType();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v11 = v26;
  v24 = 1;
  KeyedDecodingContainer.decode(_:forKey:)();
  v13 = v12;
  v23 = 2;
  v14 = KeyedDecodingContainer.decode(_:forKey:)();
  v16 = v15;
  v21 = v14;
  v22 = 3;
  KeyedDecodingContainer.decode(_:forKey:)();
  v18 = v17;
  (*(v6 + 8))(v9, v5);
  *a2 = v11;
  *(a2 + 8) = v13;
  *(a2 + 16) = v21;
  *(a2 + 24) = v16;
  *(a2 + 32) = v18;

  __swift_destroy_boxed_opaque_existential_0Tm(a1);
}

BOOL specialized static PacerGoalCompletionModel.== infix(_:_:)(double *a1, double *a2)
{
  if (*a1 != *a2 || a1[1] != a2[1])
  {
    return 0;
  }

  v4 = a1[4];
  v5 = a2[4];
  v6 = *(a1 + 2) == *(a2 + 2) && *(a1 + 3) == *(a2 + 3);
  return (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0) && v4 == v5;
}

unint64_t lazy protocol witness table accessor for type PacerGoalCompletionModel.CodingKeys and conformance PacerGoalCompletionModel.CodingKeys()
{
  result = lazy protocol witness table cache variable for type PacerGoalCompletionModel.CodingKeys and conformance PacerGoalCompletionModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type PacerGoalCompletionModel.CodingKeys and conformance PacerGoalCompletionModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PacerGoalCompletionModel.CodingKeys and conformance PacerGoalCompletionModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PacerGoalCompletionModel.CodingKeys and conformance PacerGoalCompletionModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type PacerGoalCompletionModel.CodingKeys and conformance PacerGoalCompletionModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PacerGoalCompletionModel.CodingKeys and conformance PacerGoalCompletionModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PacerGoalCompletionModel.CodingKeys and conformance PacerGoalCompletionModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type PacerGoalCompletionModel.CodingKeys and conformance PacerGoalCompletionModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PacerGoalCompletionModel.CodingKeys and conformance PacerGoalCompletionModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PacerGoalCompletionModel.CodingKeys and conformance PacerGoalCompletionModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type PacerGoalCompletionModel.CodingKeys and conformance PacerGoalCompletionModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PacerGoalCompletionModel.CodingKeys and conformance PacerGoalCompletionModel.CodingKeys);
  }

  return result;
}

unint64_t instantiation function for generic protocol witness table for PacerGoalCompletionModel(void *a1)
{
  a1[1] = lazy protocol witness table accessor for type PacerGoalCompletionModel and conformance PacerGoalCompletionModel();
  a1[2] = lazy protocol witness table accessor for type PacerGoalCompletionModel and conformance PacerGoalCompletionModel();
  result = lazy protocol witness table accessor for type PacerGoalCompletionModel and conformance PacerGoalCompletionModel();
  a1[3] = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type PacerGoalCompletionModel and conformance PacerGoalCompletionModel()
{
  result = lazy protocol witness table cache variable for type PacerGoalCompletionModel and conformance PacerGoalCompletionModel;
  if (!lazy protocol witness table cache variable for type PacerGoalCompletionModel and conformance PacerGoalCompletionModel)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PacerGoalCompletionModel and conformance PacerGoalCompletionModel);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PacerGoalCompletionModel and conformance PacerGoalCompletionModel;
  if (!lazy protocol witness table cache variable for type PacerGoalCompletionModel and conformance PacerGoalCompletionModel)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PacerGoalCompletionModel and conformance PacerGoalCompletionModel);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PacerGoalCompletionModel and conformance PacerGoalCompletionModel;
  if (!lazy protocol witness table cache variable for type PacerGoalCompletionModel and conformance PacerGoalCompletionModel)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PacerGoalCompletionModel and conformance PacerGoalCompletionModel);
  }

  return result;
}

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for PacerGoalCompletionModel(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for PacerGoalCompletionModel(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PacerGoalCompletionModel.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for PacerGoalCompletionModel.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}